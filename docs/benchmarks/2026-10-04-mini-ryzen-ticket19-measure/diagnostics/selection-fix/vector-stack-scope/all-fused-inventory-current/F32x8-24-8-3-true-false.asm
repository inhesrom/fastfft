
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000007360c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  7360c0:	55                   	push   rbp
  7360c1:	48 89 e5             	mov    rbp,rsp
  7360c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  7360c8:	48 81 ec 40 01 00 00 	sub    rsp,0x140
  7360cf:	c6 84 24 c0 00 00 00 	mov    BYTE PTR [rsp+0xc0],0x0
  7360d6:	00 
  7360d7:	48 8d 84 24 c0 00 00 	lea    rax,[rsp+0xc0]
  7360de:	00 
  7360df:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  7360e4:	48 8d 44 24 18       	lea    rax,[rsp+0x18]
  7360e9:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  7360ee:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  7360f4:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  7360f8:	c4 63 7d 0c e9 c0    	vblendps ymm13,ymm0,ymm1,0xc0
  7360fe:	c5 fb 10 47 28       	vmovsd xmm0,QWORD PTR [rdi+0x28]
  736103:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  736109:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  73610f:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  736115:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  73611a:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  736120:	c4 e3 7d 0c e9 c0    	vblendps ymm5,ymm0,ymm1,0xc0
  736126:	c5 f8 10 17          	vmovups xmm2,XMMWORD PTR [rdi]
  73612a:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  73612f:	c5 78 10 47 30       	vmovups xmm8,XMMWORD PTR [rdi+0x30]
  736134:	c5 f8 10 7f 48       	vmovups xmm7,XMMWORD PTR [rdi+0x48]
  736139:	c5 fb 10 77 58       	vmovsd xmm6,QWORD PTR [rdi+0x58]
  73613e:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  736144:	c4 e3 4d 0c e1 c0    	vblendps ymm4,ymm6,ymm1,0xc0
  73614a:	c5 f8 10 77 60       	vmovups xmm6,XMMWORD PTR [rdi+0x60]
  73614f:	c5 7b 10 4f 70       	vmovsd xmm9,QWORD PTR [rdi+0x70]
  736154:	c4 43 7d 18 c9 01    	vinsertf128 ymm9,ymm0,xmm9,0x1
  73615a:	c4 63 35 0c f9 c0    	vblendps ymm15,ymm9,ymm1,0xc0
  736160:	c5 78 10 4f 78       	vmovups xmm9,XMMWORD PTR [rdi+0x78]
  736165:	c5 7b 10 97 88 00 00 	vmovsd xmm10,QWORD PTR [rdi+0x88]
  73616c:	00 
  73616d:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  736173:	c4 63 2d 0c d9 c0    	vblendps ymm11,ymm10,ymm1,0xc0
  736179:	c5 78 10 a7 90 00 00 	vmovups xmm12,XMMWORD PTR [rdi+0x90]
  736180:	00 
  736181:	c5 7b 10 97 a0 00 00 	vmovsd xmm10,QWORD PTR [rdi+0xa0]
  736188:	00 
  736189:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  73618f:	c4 63 2d 0c f1 c0    	vblendps ymm14,ymm10,ymm1,0xc0
  736195:	c5 7b 10 97 b8 00 00 	vmovsd xmm10,QWORD PTR [rdi+0xb8]
  73619c:	00 
  73619d:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  7361a3:	c4 63 2d 0c d1 c0    	vblendps ymm10,ymm10,ymm1,0xc0
  7361a9:	c4 43 7d 19 ed 01    	vextractf128 xmm13,ymm13,0x1
  7361af:	c4 c1 68 c6 c5 dd    	vshufps xmm0,xmm2,xmm13,0xdd
  7361b5:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  7361bb:	c4 43 7d 19 ff 01    	vextractf128 xmm15,ymm15,0x1
  7361c1:	c4 c1 68 c6 c5 88    	vshufps xmm0,xmm2,xmm13,0x88
  7361c7:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  7361cd:	c4 41 48 c6 ef dd    	vshufps xmm13,xmm6,xmm15,0xdd
  7361d3:	c4 e3 7d 19 e8 01    	vextractf128 xmm0,ymm5,0x1
  7361d9:	c4 c1 48 c6 f7 88    	vshufps xmm6,xmm6,xmm15,0x88
  7361df:	c5 b8 c6 c8 dd       	vshufps xmm1,xmm8,xmm0,0xdd
  7361e4:	c5 fc 29 8c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm1
  7361eb:	00 00 
  7361ed:	c4 43 7d 19 f7 01    	vextractf128 xmm15,ymm14,0x1
  7361f3:	c5 38 c6 f0 88       	vshufps xmm14,xmm8,xmm0,0x88
  7361f8:	c4 c1 18 c6 c7 dd    	vshufps xmm0,xmm12,xmm15,0xdd
  7361fe:	c5 fc 29 84 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm0
  736205:	00 00 
  736207:	c5 fc 28 44 24 20    	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  73620d:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  736213:	c4 41 18 c6 ff 88    	vshufps xmm15,xmm12,xmm15,0x88
  736219:	c5 60 c6 e0 dd       	vshufps xmm12,xmm3,xmm0,0xdd
  73621e:	c4 63 7d 19 d9 01    	vextractf128 xmm1,ymm11,0x1
  736224:	c5 60 c6 d8 88       	vshufps xmm11,xmm3,xmm0,0x88
  736229:	c5 b0 c6 d9 dd       	vshufps xmm3,xmm9,xmm1,0xdd
  73622e:	c4 e3 7d 19 e0 01    	vextractf128 xmm0,ymm4,0x1
  736234:	c5 b0 c6 c9 88       	vshufps xmm1,xmm9,xmm1,0x88
  736239:	c5 c0 c6 e0 dd       	vshufps xmm4,xmm7,xmm0,0xdd
  73623e:	c5 c0 c6 d0 88       	vshufps xmm2,xmm7,xmm0,0x88
  736243:	c5 f8 10 bf a8 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0xa8]
  73624a:	00 
  73624b:	c4 43 7d 19 d1 01    	vextractf128 xmm9,ymm10,0x1
  736251:	c4 c1 40 c6 c1 dd    	vshufps xmm0,xmm7,xmm9,0xdd
  736257:	c4 c1 40 c6 f9 88    	vshufps xmm7,xmm7,xmm9,0x88
  73625d:	c5 fc 28 6c 24 40    	vmovaps ymm5,YMMWORD PTR [rsp+0x40]
  736263:	c5 14 58 c5          	vaddps ymm8,ymm13,ymm5
  736267:	c5 7c 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm8
  73626d:	c4 c1 54 5c ed       	vsubps ymm5,ymm5,ymm13
  736272:	c5 fc 29 6c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm5
  736278:	c4 41 0c 58 ef       	vaddps ymm13,ymm14,ymm15
  73627d:	c4 41 0c 5c ff       	vsubps ymm15,ymm14,ymm15
  736282:	c5 1c 58 f3          	vaddps ymm14,ymm12,ymm3
  736286:	c5 9c 5c db          	vsubps ymm3,ymm12,ymm3
  73628a:	c5 24 58 e1          	vaddps ymm12,ymm11,ymm1
  73628e:	c5 a4 5c c9          	vsubps ymm1,ymm11,ymm1
  736292:	c5 6c 58 df          	vaddps ymm11,ymm2,ymm7
  736296:	c5 ec 5c d7          	vsubps ymm2,ymm2,ymm7
  73629a:	c5 5c 58 c8          	vaddps ymm9,ymm4,ymm0
  73629e:	c5 dc 5c c0          	vsubps ymm0,ymm4,ymm0
  7362a2:	c5 fc 28 64 24 60    	vmovaps ymm4,YMMWORD PTR [rsp+0x60]
  7362a8:	c5 dc 58 ee          	vaddps ymm5,ymm4,ymm6
  7362ac:	c5 5c 5c d6          	vsubps ymm10,ymm4,ymm6
  7362b0:	c5 fc 28 a4 24 80 00 	vmovaps ymm4,YMMWORD PTR [rsp+0x80]
  7362b7:	00 00 
  7362b9:	c5 fc 28 bc 24 a0 00 	vmovaps ymm7,YMMWORD PTR [rsp+0xa0]
  7362c0:	00 00 
  7362c2:	c5 dc 58 f7          	vaddps ymm6,ymm4,ymm7
  7362c6:	c5 44 5c c4          	vsubps ymm8,ymm7,ymm4
  7362ca:	c5 e4 58 e1          	vaddps ymm4,ymm3,ymm1
  7362ce:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  7362d2:	c5 ec 5c d8          	vsubps ymm3,ymm2,ymm0
  7362d6:	c5 fc 58 c2          	vaddps ymm0,ymm0,ymm2
  7362da:	c4 e2 7d 18 15 b9 f0 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff93f0b9]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  7362e1:	93 ff 
  7362e3:	c5 dc 59 e2          	vmulps ymm4,ymm4,ymm2
  7362e7:	c5 e4 59 da          	vmulps ymm3,ymm3,ymm2
  7362eb:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  7362ef:	c5 fc 59 d2          	vmulps ymm2,ymm0,ymm2
  7362f3:	c5 fc 28 44 24 20    	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  7362f9:	c5 fc 58 fe          	vaddps ymm7,ymm0,ymm6
  7362fd:	c5 fc 5c f6          	vsubps ymm6,ymm0,ymm6
  736301:	c4 c1 1c 58 c3       	vaddps ymm0,ymm12,ymm11
  736306:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  73630c:	c4 41 1c 5c e3       	vsubps ymm12,ymm12,ymm11
  736311:	c5 14 58 dd          	vaddps ymm11,ymm13,ymm5
  736315:	c4 c1 54 5c c5       	vsubps ymm0,ymm5,ymm13
  73631a:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  736320:	c4 c1 0c 58 e9       	vaddps ymm5,ymm14,ymm9
  736325:	c4 c1 34 5c c6       	vsubps ymm0,ymm9,ymm14
  73632a:	c5 fc 29 84 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm0
  736331:	00 00 
  736333:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  736339:	c5 04 58 f0          	vaddps ymm14,ymm15,ymm0
  73633d:	c4 41 7c 5c ff       	vsubps ymm15,ymm0,ymm15
  736342:	c5 74 5c ea          	vsubps ymm13,ymm1,ymm2
  736346:	c5 f4 58 d2          	vaddps ymm2,ymm1,ymm2
  73634a:	c4 c1 3c 58 ca       	vaddps ymm1,ymm8,ymm10
  73634f:	c4 41 2c 5c d0       	vsubps ymm10,ymm10,ymm8
  736354:	c5 5c 58 cb          	vaddps ymm9,ymm4,ymm3
  736358:	c5 e4 5c dc          	vsubps ymm3,ymm3,ymm4
  73635c:	c5 c4 58 e5          	vaddps ymm4,ymm7,ymm5
  736360:	c5 c0 5c c5          	vsubps xmm0,xmm7,xmm5
  736364:	c4 e3 5d 18 c0 01    	vinsertf128 ymm0,ymm4,xmm0,0x1
  73636a:	c4 c1 0c 58 e1       	vaddps ymm4,ymm14,ymm9
  73636f:	c4 c1 08 5c e9       	vsubps xmm5,xmm14,xmm9
  736374:	c4 e3 5d 18 e5 01    	vinsertf128 ymm4,ymm4,xmm5,0x1
  73637a:	c5 9c 58 ee          	vaddps ymm5,ymm12,ymm6
  73637e:	c4 c1 48 5c f4       	vsubps xmm6,xmm6,xmm12
  736383:	c4 e3 55 18 ee 01    	vinsertf128 ymm5,ymm5,xmm6,0x1
  736389:	c5 84 58 f2          	vaddps ymm6,ymm15,ymm2
  73638d:	c5 80 5c d2          	vsubps xmm2,xmm15,xmm2
  736391:	c4 e3 4d 18 d2 01    	vinsertf128 ymm2,ymm6,xmm2,0x1
  736397:	c5 fd 15 f5          	vunpckhpd ymm6,ymm0,ymm5
  73639b:	c5 fd 14 c5          	vunpcklpd ymm0,ymm0,ymm5
  73639f:	c5 dd 15 ea          	vunpckhpd ymm5,ymm4,ymm2
  7363a3:	c5 cc c6 ed 88       	vshufps ymm5,ymm6,ymm5,0x88
  7363a8:	c5 dd 14 d2          	vunpcklpd ymm2,ymm4,ymm2
  7363ac:	c5 fc c6 e2 88       	vshufps ymm4,ymm0,ymm2,0x88
  7363b1:	c5 fc c6 d2 dd       	vshufps ymm2,ymm0,ymm2,0xdd
  7363b6:	c5 fc 28 74 24 60    	vmovaps ymm6,YMMWORD PTR [rsp+0x60]
  7363bc:	c5 a4 58 c6          	vaddps ymm0,ymm11,ymm6
  7363c0:	c5 a0 5c f6          	vsubps xmm6,xmm11,xmm6
  7363c4:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  7363ca:	c5 94 58 c1          	vaddps ymm0,ymm13,ymm1
  7363ce:	c4 c1 70 5c cd       	vsubps xmm1,xmm1,xmm13
  7363d3:	c4 e3 7d 18 c9 01    	vinsertf128 ymm1,ymm0,xmm1,0x1
  7363d9:	c5 fc 28 7c 24 20    	vmovaps ymm7,YMMWORD PTR [rsp+0x20]
  7363df:	c5 7c 28 84 24 80 00 	vmovaps ymm8,YMMWORD PTR [rsp+0x80]
  7363e6:	00 00 
  7363e8:	c5 bc 58 c7          	vaddps ymm0,ymm8,ymm7
  7363ec:	c4 41 40 5c c0       	vsubps xmm8,xmm7,xmm8
  7363f1:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  7363f7:	c5 2c 58 cb          	vaddps ymm9,ymm10,ymm3
  7363fb:	c5 dc c6 c4 d8       	vshufps ymm0,ymm4,ymm4,0xd8
  736400:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  736405:	c5 d4 c6 e5 d8       	vshufps ymm4,ymm5,ymm5,0xd8
  73640a:	c5 a8 5c db          	vsubps xmm3,xmm10,xmm3
  73640e:	c4 e3 35 18 db 01    	vinsertf128 ymm3,ymm9,xmm3,0x1
  736414:	c4 c1 4d 15 e8       	vunpckhpd ymm5,ymm6,ymm8
  736419:	c4 c1 4d 14 f0       	vunpcklpd ymm6,ymm6,ymm8
  73641e:	c5 f5 15 fb          	vunpckhpd ymm7,ymm1,ymm3
  736422:	c5 d4 c6 ef 88       	vshufps ymm5,ymm5,ymm7,0x88
  736427:	c5 f5 14 db          	vunpcklpd ymm3,ymm1,ymm3
  73642b:	c5 cc c6 cb 88       	vshufps ymm1,ymm6,ymm3,0x88
  736430:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  736435:	c5 cc c6 db dd       	vshufps ymm3,ymm6,ymm3,0xdd
  73643a:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  73643f:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  736444:	c5 fc 10 72 40       	vmovups ymm6,YMMWORD PTR [rdx+0x40]
  736449:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  73644e:	c5 4c 59 c3          	vmulps ymm8,ymm6,ymm3
  736452:	c4 62 6d b8 c7       	vfmadd231ps ymm8,ymm2,ymm7
  736457:	c5 cc 59 d2          	vmulps ymm2,ymm6,ymm2
  73645b:	c5 fc 10 b2 80 00 00 	vmovups ymm6,YMMWORD PTR [rdx+0x80]
  736462:	00 
  736463:	c4 e2 65 bc d7       	vfnmadd231ps ymm2,ymm3,ymm7
  736468:	c5 fc 10 9a a0 00 00 	vmovups ymm3,YMMWORD PTR [rdx+0xa0]
  73646f:	00 
  736470:	c5 cc 59 fd          	vmulps ymm7,ymm6,ymm5
  736474:	c4 e2 5d b8 fb       	vfmadd231ps ymm7,ymm4,ymm3
  736479:	c5 cc 59 e4          	vmulps ymm4,ymm6,ymm4
  73647d:	c5 bc 58 f7          	vaddps ymm6,ymm8,ymm7
  736481:	c4 e2 55 bc e3       	vfnmadd231ps ymm4,ymm5,ymm3
  736486:	c4 e2 7d 18 1d d1 ef 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff93efd1]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  73648d:	93 ff 
  73648f:	c5 ec 5c ec          	vsubps ymm5,ymm2,ymm4
  736493:	c5 ec 58 d4          	vaddps ymm2,ymm2,ymm4
  736497:	c5 fc 28 e3          	vmovaps ymm4,ymm3
  73649b:	c5 bc 5c ff          	vsubps ymm7,ymm8,ymm7
  73649f:	c4 62 7d 18 05 2c ee 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff93ee2c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  7364a6:	93 ff 
  7364a8:	c4 e2 4d ac e1       	vfnmadd213ps ymm4,ymm6,ymm1
  7364ad:	c5 bc 59 ed          	vmulps ymm5,ymm8,ymm5
  7364b1:	c5 bc 59 ff          	vmulps ymm7,ymm8,ymm7
  7364b5:	c5 5c 58 c5          	vaddps ymm8,ymm4,ymm5
  7364b9:	c4 e2 6d ac d8       	vfnmadd213ps ymm3,ymm2,ymm0
  7364be:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  7364c2:	c5 e4 5c ef          	vsubps ymm5,ymm3,ymm7
  7364c6:	c5 e4 58 df          	vaddps ymm3,ymm3,ymm7
  7364ca:	c5 cc 58 c9          	vaddps ymm1,ymm6,ymm1
  7364ce:	c5 ec 58 c0          	vaddps ymm0,ymm2,ymm0
  7364d2:	c5 f4 15 d0          	vunpckhps ymm2,ymm1,ymm0
  7364d6:	c5 f4 14 c0          	vunpcklps ymm0,ymm1,ymm0
  7364da:	c4 e3 7d 06 ca 31    	vperm2f128 ymm1,ymm0,ymm2,0x31
  7364e0:	c4 e3 7d 06 c2 20    	vperm2f128 ymm0,ymm0,ymm2,0x20
  7364e6:	c5 fc 11 06          	vmovups YMMWORD PTR [rsi],ymm0
  7364ea:	c5 fc 11 4e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm1
  7364ef:	c5 dc 15 c3          	vunpckhps ymm0,ymm4,ymm3
  7364f3:	c5 dc 14 cb          	vunpcklps ymm1,ymm4,ymm3
  7364f7:	c4 e3 75 06 d0 31    	vperm2f128 ymm2,ymm1,ymm0,0x31
  7364fd:	c4 e3 75 06 c0 20    	vperm2f128 ymm0,ymm1,ymm0,0x20
  736503:	c5 fc 11 46 40       	vmovups YMMWORD PTR [rsi+0x40],ymm0
  736508:	c5 fc 11 56 60       	vmovups YMMWORD PTR [rsi+0x60],ymm2
  73650d:	c5 bc 15 c5          	vunpckhps ymm0,ymm8,ymm5
  736511:	c5 bc 14 cd          	vunpcklps ymm1,ymm8,ymm5
  736515:	c4 e3 75 06 d0 31    	vperm2f128 ymm2,ymm1,ymm0,0x31
  73651b:	c4 e3 75 06 c0 20    	vperm2f128 ymm0,ymm1,ymm0,0x20
  736521:	c5 fc 11 86 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm0
  736528:	00 
  736529:	c5 fc 11 96 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm2
  736530:	00 
  736531:	48 89 ec             	mov    rsp,rbp
  736534:	5d                   	pop    rbp
  736535:	c5 f8 77             	vzeroupper
  736538:	c3                   	ret
