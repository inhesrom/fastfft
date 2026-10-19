
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000007491c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  7491c0:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  7491c5:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  7491cb:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  7491cf:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  7491d5:	c5 fb 10 57 28       	vmovsd xmm2,QWORD PTR [rdi+0x28]
  7491da:	c4 e3 7d 18 d2 01    	vinsertf128 ymm2,ymm0,xmm2,0x1
  7491e0:	c4 e3 6d 0c d1 c0    	vblendps ymm2,ymm2,ymm1,0xc0
  7491e6:	c5 fb 10 5f 40       	vmovsd xmm3,QWORD PTR [rdi+0x40]
  7491eb:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  7491f1:	c4 e3 65 0c e1 c0    	vblendps ymm4,ymm3,ymm1,0xc0
  7491f7:	c5 78 10 1f          	vmovups xmm11,XMMWORD PTR [rdi]
  7491fb:	c5 f8 10 7f 18       	vmovups xmm7,XMMWORD PTR [rdi+0x18]
  749200:	c5 78 10 4f 30       	vmovups xmm9,XMMWORD PTR [rdi+0x30]
  749205:	c5 78 10 67 48       	vmovups xmm12,XMMWORD PTR [rdi+0x48]
  74920a:	c5 fb 10 5f 58       	vmovsd xmm3,QWORD PTR [rdi+0x58]
  74920f:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  749215:	c4 e3 65 0c e9 c0    	vblendps ymm5,ymm3,ymm1,0xc0
  74921b:	c5 78 10 47 60       	vmovups xmm8,XMMWORD PTR [rdi+0x60]
  749220:	c5 fb 10 5f 70       	vmovsd xmm3,QWORD PTR [rdi+0x70]
  749225:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  74922b:	c4 e3 65 0c c9 c0    	vblendps ymm1,ymm3,ymm1,0xc0
  749231:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  749237:	c5 20 c6 d0 88       	vshufps xmm10,xmm11,xmm0,0x88
  74923c:	c4 c3 7d 19 d5 01    	vextractf128 xmm13,ymm2,0x1
  749242:	c4 c1 40 c6 d5 88    	vshufps xmm2,xmm7,xmm13,0x88
  749248:	c5 fc 11 54 24 b8    	vmovups YMMWORD PTR [rsp-0x48],ymm2
  74924e:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  749254:	c5 b8 c6 d9 88       	vshufps xmm3,xmm8,xmm1,0x88
  749259:	c5 fc 11 5c 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm3
  74925f:	c4 c3 7d 19 e6 01    	vextractf128 xmm14,ymm4,0x1
  749265:	c4 c1 30 c6 e6 88    	vshufps xmm4,xmm9,xmm14,0x88
  74926b:	c4 c3 7d 19 ef 01    	vextractf128 xmm15,ymm5,0x1
  749271:	c4 c1 18 c6 ef 88    	vshufps xmm5,xmm12,xmm15,0x88
  749277:	c5 20 c6 d8 dd       	vshufps xmm11,xmm11,xmm0,0xdd
  74927c:	c4 c1 40 c6 fd dd    	vshufps xmm7,xmm7,xmm13,0xdd
  749282:	c5 38 c6 c1 dd       	vshufps xmm8,xmm8,xmm1,0xdd
  749287:	c4 41 30 c6 ce dd    	vshufps xmm9,xmm9,xmm14,0xdd
  74928d:	c4 41 18 c6 e7 dd    	vshufps xmm12,xmm12,xmm15,0xdd
  749293:	c5 ec 58 db          	vaddps ymm3,ymm2,ymm3
  749297:	c5 2c 58 eb          	vaddps ymm13,ymm10,ymm3
  74929b:	c5 5c 58 f5          	vaddps ymm14,ymm4,ymm5
  74929f:	c4 62 7d 18 3d 40 c4 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff92c440]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  7492a6:	92 ff 
  7492a8:	c5 7c 29 fe          	vmovaps ymm6,ymm15
  7492ac:	c4 c2 65 a8 f2       	vfmadd213ps ymm6,ymm3,ymm10
  7492b1:	c4 e2 7d 18 15 8a c3 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff92c38a]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  7492b8:	92 ff 
  7492ba:	c4 c2 6d ac da       	vfnmadd213ps ymm3,ymm2,ymm10
  7492bf:	c5 bc 58 c7          	vaddps ymm0,ymm8,ymm7
  7492c3:	c4 e2 0d bc f2       	vfnmadd231ps ymm6,ymm14,ymm2
  7492c8:	c4 41 7c 28 d7       	vmovaps ymm10,ymm15
  7492cd:	c4 42 7d a8 d3       	vfmadd213ps ymm10,ymm0,ymm11
  7492d2:	c4 c1 34 58 cc       	vaddps ymm1,ymm9,ymm12
  7492d7:	c4 62 75 bc d2       	vfnmadd231ps ymm10,ymm1,ymm2
  7492dc:	c4 c2 7d ac d3       	vfnmadd213ps ymm2,ymm0,ymm11
  7492e1:	c5 a4 58 c0          	vaddps ymm0,ymm11,ymm0
  7492e5:	c4 41 14 58 ee       	vaddps ymm13,ymm13,ymm14
  7492ea:	c4 c2 05 b8 de       	vfmadd231ps ymm3,ymm15,ymm14
  7492ef:	c4 c2 75 b8 d7       	vfmadd231ps ymm2,ymm1,ymm15
  7492f4:	c5 7c 58 d9          	vaddps ymm11,ymm0,ymm1
  7492f8:	c4 c1 44 5c c0       	vsubps ymm0,ymm7,ymm8
  7492fd:	c4 c1 34 5c cc       	vsubps ymm1,ymm9,ymm12
  749302:	c4 e2 7d 18 3d 4d c4 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff92c44d]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  749309:	92 ff 
  74930b:	c5 7c 10 44 24 b8    	vmovups ymm8,YMMWORD PTR [rsp-0x48]
  749311:	c5 3c 5c 44 24 d8    	vsubps ymm8,ymm8,YMMWORD PTR [rsp-0x28]
  749317:	c4 62 7d 18 0d 80 c0 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff92c080]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  74931e:	92 ff 
  749320:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  749324:	c5 f4 59 ef          	vmulps ymm5,ymm1,ymm7
  749328:	c4 c2 7d b8 e9       	vfmadd231ps ymm5,ymm0,ymm9
  74932d:	c5 fc 59 c7          	vmulps ymm0,ymm0,ymm7
  749331:	c4 e2 35 bc c1       	vfnmadd231ps ymm0,ymm9,ymm1
  749336:	c5 5c 59 e7          	vmulps ymm12,ymm4,ymm7
  74933a:	c4 42 3d b8 e1       	vfmadd231ps ymm12,ymm8,ymm9
  74933f:	c5 bc 59 ff          	vmulps ymm7,ymm8,ymm7
  749343:	c4 c2 5d bc f9       	vfnmadd231ps ymm7,ymm4,ymm9
  749348:	c5 c8 5c cd          	vsubps xmm1,xmm6,xmm5
  74934c:	c4 e3 15 18 c9 01    	vinsertf128 ymm1,ymm13,xmm1,0x1
  749352:	c5 c8 58 ed          	vaddps xmm5,xmm6,xmm5
  749356:	c5 e0 5c f0          	vsubps xmm6,xmm3,xmm0
  74935a:	c5 e0 58 c0          	vaddps xmm0,xmm3,xmm0
  74935e:	c5 f4 14 dd          	vunpcklps ymm3,ymm1,ymm5
  749362:	c5 7d 14 c6          	vunpcklpd ymm8,ymm0,ymm6
  749366:	c4 c1 64 c6 e0 84    	vshufps ymm4,ymm3,ymm8,0x84
  74936c:	c4 c1 64 c6 d8 de    	vshufps ymm3,ymm3,ymm8,0xde
  749372:	c5 d5 15 c9          	vunpckhpd ymm1,ymm5,ymm1
  749376:	c5 fc 15 c6          	vunpckhps ymm0,ymm0,ymm6
  74937a:	c5 f4 c6 c8 42       	vshufps ymm1,ymm1,ymm0,0x42
  74937f:	c4 c1 18 58 c2       	vaddps xmm0,xmm12,xmm10
  749384:	c4 e3 25 18 e8 01    	vinsertf128 ymm5,ymm11,xmm0,0x1
  74938a:	c4 c1 28 5c f4       	vsubps xmm6,xmm10,xmm12
  74938f:	c5 40 58 c2          	vaddps xmm8,xmm7,xmm2
  749393:	c5 e8 5c d7          	vsubps xmm2,xmm2,xmm7
  749397:	c5 d4 14 fe          	vunpcklps ymm7,ymm5,ymm6
  74939b:	c4 41 6d 14 c8       	vunpcklpd ymm9,ymm2,ymm8
  7493a0:	c4 c1 44 c6 c1 84    	vshufps ymm0,ymm7,ymm9,0x84
  7493a6:	c4 c1 44 c6 f9 de    	vshufps ymm7,ymm7,ymm9,0xde
  7493ac:	c5 cd 15 ed          	vunpckhpd ymm5,ymm6,ymm5
  7493b0:	c4 c1 6c 15 d0       	vunpckhps ymm2,ymm2,ymm8
  7493b5:	c5 d4 c6 d2 42       	vshufps ymm2,ymm5,ymm2,0x42
  7493ba:	c5 fc 10 6a 40       	vmovups ymm5,YMMWORD PTR [rdx+0x40]
  7493bf:	c5 fc 10 72 60       	vmovups ymm6,YMMWORD PTR [rdx+0x60]
  7493c4:	c5 54 59 c3          	vmulps ymm8,ymm5,ymm3
  7493c8:	c4 62 45 bc c6       	vfnmadd231ps ymm8,ymm7,ymm6
  7493cd:	c5 d4 59 ef          	vmulps ymm5,ymm5,ymm7
  7493d1:	c5 fc 10 ba 80 00 00 	vmovups ymm7,YMMWORD PTR [rdx+0x80]
  7493d8:	00 
  7493d9:	c4 e2 65 b8 ee       	vfmadd231ps ymm5,ymm3,ymm6
  7493de:	c5 fc 10 9a a0 00 00 	vmovups ymm3,YMMWORD PTR [rdx+0xa0]
  7493e5:	00 
  7493e6:	c5 c4 59 f1          	vmulps ymm6,ymm7,ymm1
  7493ea:	c4 e2 6d bc f3       	vfnmadd231ps ymm6,ymm2,ymm3
  7493ef:	c5 c4 59 d2          	vmulps ymm2,ymm7,ymm2
  7493f3:	c5 bc 58 fe          	vaddps ymm7,ymm8,ymm6
  7493f7:	c4 e2 75 b8 d3       	vfmadd231ps ymm2,ymm1,ymm3
  7493fc:	c5 d4 58 ca          	vaddps ymm1,ymm5,ymm2
  749400:	c4 e2 7d 18 1d 57 c0 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff92c057]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  749407:	92 ff 
  749409:	c5 d4 5c d2          	vsubps ymm2,ymm5,ymm2
  74940d:	c5 fc 28 eb          	vmovaps ymm5,ymm3
  749411:	c4 e2 45 ac ec       	vfnmadd213ps ymm5,ymm7,ymm4
  749416:	c5 bc 5c f6          	vsubps ymm6,ymm8,ymm6
  74941a:	c4 62 7d 18 05 b1 be 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff92beb1]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  749421:	92 ff 
  749423:	c5 bc 59 d2          	vmulps ymm2,ymm8,ymm2
  749427:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  74942b:	c5 54 58 c2          	vaddps ymm8,ymm5,ymm2
  74942f:	c4 e2 75 ac d8       	vfnmadd213ps ymm3,ymm1,ymm0
  749434:	c5 d4 5c d2          	vsubps ymm2,ymm5,ymm2
  749438:	c5 e4 5c ee          	vsubps ymm5,ymm3,ymm6
  74943c:	c5 e4 58 de          	vaddps ymm3,ymm3,ymm6
  749440:	c5 c4 58 e4          	vaddps ymm4,ymm7,ymm4
  749444:	c5 f4 58 c0          	vaddps ymm0,ymm1,ymm0
  749448:	c5 dc 14 c8          	vunpcklps ymm1,ymm4,ymm0
  74944c:	c5 d8 14 f0          	vunpcklps xmm6,xmm4,xmm0
  749450:	c5 d8 15 c0          	vunpckhps xmm0,xmm4,xmm0
  749454:	c5 f8 11 46 10       	vmovups XMMWORD PTR [rsi+0x10],xmm0
  749459:	c5 f8 11 36          	vmovups XMMWORD PTR [rsi],xmm6
  74945d:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  749463:	c5 f8 13 46 20       	vmovlps QWORD PTR [rsi+0x20],xmm0
  749468:	c5 bc 14 c5          	vunpcklps ymm0,ymm8,ymm5
  74946c:	c5 b8 14 cd          	vunpcklps xmm1,xmm8,xmm5
  749470:	c5 b8 15 e5          	vunpckhps xmm4,xmm8,xmm5
  749474:	c5 f8 11 66 38       	vmovups XMMWORD PTR [rsi+0x38],xmm4
  749479:	c5 f8 11 4e 28       	vmovups XMMWORD PTR [rsi+0x28],xmm1
  74947e:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  749484:	c5 f8 13 46 48       	vmovlps QWORD PTR [rsi+0x48],xmm0
  749489:	c5 ec 14 c3          	vunpcklps ymm0,ymm2,ymm3
  74948d:	c5 e8 14 cb          	vunpcklps xmm1,xmm2,xmm3
  749491:	c5 e8 15 d3          	vunpckhps xmm2,xmm2,xmm3
  749495:	c5 f8 11 56 60       	vmovups XMMWORD PTR [rsi+0x60],xmm2
  74949a:	c5 f8 11 4e 50       	vmovups XMMWORD PTR [rsi+0x50],xmm1
  74949f:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  7494a5:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  7494aa:	c5 f8 77             	vzeroupper
  7494ad:	c3                   	ret
