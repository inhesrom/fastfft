
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b21180 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b21180:	c5 fb 10 47 28       	vmovsd xmm0,QWORD PTR [rdi+0x28]
  b21185:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  b2118b:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  b2118f:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  b21195:	c5 f8 10 17          	vmovups xmm2,XMMWORD PTR [rdi]
  b21199:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  b2119e:	c5 f8 10 67 30       	vmovups xmm4,XMMWORD PTR [rdi+0x30]
  b211a3:	c5 f8 10 6f 48       	vmovups xmm5,XMMWORD PTR [rdi+0x48]
  b211a8:	c4 e3 7d 19 c6 01    	vextractf128 xmm6,ymm0,0x1
  b211ae:	c5 e0 c6 fe 88       	vshufps xmm7,xmm3,xmm6,0x88
  b211b3:	c5 78 10 47 60       	vmovups xmm8,XMMWORD PTR [rdi+0x60]
  b211b8:	c5 fb 10 47 70       	vmovsd xmm0,QWORD PTR [rdi+0x70]
  b211bd:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  b211c3:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  b211c9:	c4 c3 7d 19 c1 01    	vextractf128 xmm9,ymm0,0x1
  b211cf:	c4 41 38 c6 d1 88    	vshufps xmm10,xmm8,xmm9,0x88
  b211d5:	c4 41 44 5c da       	vsubps ymm11,ymm7,ymm10
  b211da:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  b211df:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  b211e5:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  b211eb:	c4 c3 7d 19 c4 01    	vextractf128 xmm12,ymm0,0x1
  b211f1:	c4 41 58 c6 ec 88    	vshufps xmm13,xmm4,xmm12,0x88
  b211f7:	c5 fb 10 47 58       	vmovsd xmm0,QWORD PTR [rdi+0x58]
  b211fc:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  b21202:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  b21208:	c4 c3 7d 19 c6 01    	vextractf128 xmm14,ymm0,0x1
  b2120e:	c4 41 50 c6 fe 88    	vshufps xmm15,xmm5,xmm14,0x88
  b21214:	62 c1 14 28 5c c7    	vsubps ymm16,ymm13,ymm15
  b2121a:	62 e2 7d 28 18 0d 34 	vbroadcastss ymm17,DWORD PTR [rip+0xffffffffff554534]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  b21221:	45 55 ff 
  b21224:	62 b1 7c 20 59 c1    	vmulps ymm0,ymm16,ymm17
  b2122a:	62 e2 7d 28 18 15 6c 	vbroadcastss ymm18,DWORD PTR [rip+0xffffffffff55416c]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  b21231:	41 55 ff 
  b21234:	62 b2 25 28 b8 c2    	vfmadd231ps ymm0,ymm11,ymm18
  b2123a:	c4 c1 58 c6 e4 dd    	vshufps xmm4,xmm4,xmm12,0xdd
  b21240:	c4 c1 50 c6 ee dd    	vshufps xmm5,xmm5,xmm14,0xdd
  b21246:	c5 5c 58 e5          	vaddps ymm12,ymm4,ymm5
  b2124a:	c5 e0 c6 de dd       	vshufps xmm3,xmm3,xmm6,0xdd
  b2124f:	c4 c1 38 c6 f1 dd    	vshufps xmm6,xmm8,xmm9,0xdd
  b21255:	c5 64 58 c6          	vaddps ymm8,ymm3,ymm6
  b21259:	c5 7b 10 4f 10       	vmovsd xmm9,QWORD PTR [rdi+0x10]
  b2125e:	c4 43 7d 18 c9 01    	vinsertf128 ymm9,ymm0,xmm9,0x1
  b21264:	c4 e3 35 0c c9 c0    	vblendps ymm1,ymm9,ymm1,0xc0
  b2126a:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b21270:	c5 68 c6 c9 dd       	vshufps xmm9,xmm2,xmm1,0xdd
  b21275:	c4 62 7d 18 35 6a 44 	vbroadcastss ymm14,DWORD PTR [rip+0xffffffffff55446a]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  b2127c:	55 ff 
  b2127e:	62 c1 7c 28 28 de    	vmovaps ymm19,ymm14
  b21284:	62 c2 3d 28 a8 d9    	vfmadd213ps ymm19,ymm8,ymm9
  b2128a:	62 e2 7d 28 18 25 b0 	vbroadcastss ymm20,DWORD PTR [rip+0xffffffffff5543b0]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  b21291:	43 55 ff 
  b21294:	62 a2 1d 28 bc dc    	vfnmadd231ps ymm19,ymm12,ymm20
  b2129a:	c4 41 14 58 ef       	vaddps ymm13,ymm13,ymm15
  b2129f:	c5 ac 58 ff          	vaddps ymm7,ymm10,ymm7
  b212a3:	c5 e8 c6 c9 88       	vshufps xmm1,xmm2,xmm1,0x88
  b212a8:	c5 7c 29 f2          	vmovaps ymm2,ymm14
  b212ac:	c4 e2 45 a8 d1       	vfmadd213ps ymm2,ymm7,ymm1
  b212b1:	62 b2 15 28 bc d4    	vfnmadd231ps ymm2,ymm13,ymm20
  b212b7:	c5 e4 5c de          	vsubps ymm3,ymm3,ymm6
  b212bb:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  b212bf:	62 b1 5c 28 59 e9    	vmulps ymm5,ymm4,ymm17
  b212c5:	62 b2 65 28 b8 ea    	vfmadd231ps ymm5,ymm3,ymm18
  b212cb:	62 b1 24 28 59 f1    	vmulps ymm6,ymm11,ymm17
  b212d1:	62 b2 6d 20 bc f0    	vfnmadd231ps ymm6,ymm18,ymm16
  b212d7:	62 31 7c 28 28 d4    	vmovaps ymm10,ymm20
  b212dd:	c4 42 3d ac d1       	vfnmadd213ps ymm10,ymm8,ymm9
  b212e2:	c4 42 1d b8 d6       	vfmadd231ps ymm10,ymm12,ymm14
  b212e7:	62 e2 45 28 ac e1    	vfnmadd213ps ymm20,ymm7,ymm1
  b212ed:	62 c2 15 28 b8 e6    	vfmadd231ps ymm20,ymm13,ymm14
  b212f3:	62 b1 64 28 59 d9    	vmulps ymm3,ymm3,ymm17
  b212f9:	62 b2 5d 28 bc da    	vfnmadd231ps ymm3,ymm4,ymm18
  b212ff:	c4 c1 34 58 e0       	vaddps ymm4,ymm9,ymm8
  b21304:	c5 9c 58 e4          	vaddps ymm4,ymm12,ymm4
  b21308:	c5 f4 58 cf          	vaddps ymm1,ymm1,ymm7
  b2130c:	c5 94 58 c9          	vaddps ymm1,ymm13,ymm1
  b21310:	c5 e8 5c fd          	vsubps xmm7,xmm2,xmm5
  b21314:	c4 e3 75 18 cf 01    	vinsertf128 ymm1,ymm1,xmm7,0x1
  b2131a:	c5 e8 58 d5          	vaddps xmm2,xmm2,xmm5
  b2131e:	62 f1 5c 00 5c eb    	vsubps xmm5,xmm20,xmm3
  b21324:	c5 ed 15 fd          	vunpckhpd ymm7,ymm2,ymm5
  b21328:	c5 ed 14 d5          	vunpcklpd ymm2,ymm2,ymm5
  b2132c:	62 f1 5c 00 58 db    	vaddps xmm3,xmm20,xmm3
  b21332:	c5 f5 14 eb          	vunpcklpd ymm5,ymm1,ymm3
  b21336:	c5 54 c6 c2 88       	vshufps ymm8,ymm5,ymm2,0x88
  b2133b:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  b21341:	c5 d4 c6 d2 dd       	vshufps ymm2,ymm5,ymm2,0xdd
  b21346:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b2134b:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  b2134f:	c5 f4 c6 cf 88       	vshufps ymm1,ymm1,ymm7,0x88
  b21354:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  b21359:	62 b1 7c 08 58 db    	vaddps xmm3,xmm0,xmm19
  b2135f:	c4 e3 5d 18 db 01    	vinsertf128 ymm3,ymm4,xmm3,0x1
  b21365:	62 f1 64 00 5c c0    	vsubps xmm0,xmm19,xmm0
  b2136b:	c5 a8 58 e6          	vaddps xmm4,xmm10,xmm6
  b2136f:	c5 fd 15 ec          	vunpckhpd ymm5,ymm0,ymm4
  b21373:	c5 fd 14 c4          	vunpcklpd ymm0,ymm0,ymm4
  b21377:	c5 a8 5c e6          	vsubps xmm4,xmm10,xmm6
  b2137b:	c5 e5 14 f4          	vunpcklpd ymm6,ymm3,ymm4
  b2137f:	c5 cc c6 f8 88       	vshufps ymm7,ymm6,ymm0,0x88
  b21384:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b21389:	c5 cc c6 c0 dd       	vshufps ymm0,ymm6,ymm0,0xdd
  b2138e:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b21393:	c5 e5 15 dc          	vunpckhpd ymm3,ymm3,ymm4
  b21397:	c5 e4 c6 dd 88       	vshufps ymm3,ymm3,ymm5,0x88
  b2139c:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b213a1:	c5 fc 10 62 40       	vmovups ymm4,YMMWORD PTR [rdx+0x40]
  b213a6:	c5 fc 10 6a 60       	vmovups ymm5,YMMWORD PTR [rdx+0x60]
  b213ab:	c5 fc 10 b2 80 00 00 	vmovups ymm6,YMMWORD PTR [rdx+0x80]
  b213b2:	00 
  b213b3:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  b213ba:	00 
  b213bb:	c5 6c 59 d4          	vmulps ymm10,ymm2,ymm4
  b213bf:	c4 62 7d bc d5       	vfnmadd231ps ymm10,ymm0,ymm5
  b213c4:	c5 74 59 de          	vmulps ymm11,ymm1,ymm6
  b213c8:	c4 42 65 bc d9       	vfnmadd231ps ymm11,ymm3,ymm9
  b213cd:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  b213d2:	c5 fc 59 c4          	vmulps ymm0,ymm0,ymm4
  b213d6:	c4 e2 6d b8 c5       	vfmadd231ps ymm0,ymm2,ymm5
  b213db:	c5 e4 59 d6          	vmulps ymm2,ymm3,ymm6
  b213df:	c4 c2 75 b8 d1       	vfmadd231ps ymm2,ymm1,ymm9
  b213e4:	c5 fc 58 ca          	vaddps ymm1,ymm0,ymm2
  b213e8:	c4 e2 7d 18 1d 6f 40 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff55406f]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b213ef:	55 ff 
  b213f1:	c5 fc 28 e3          	vmovaps ymm4,ymm3
  b213f5:	c4 c2 1d ac e0       	vfnmadd213ps ymm4,ymm12,ymm8
  b213fa:	c5 fc 5c c2          	vsubps ymm0,ymm0,ymm2
  b213fe:	c4 e2 7d 18 15 cd 3e 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff553ecd]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b21405:	55 ff 
  b21407:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  b2140b:	c5 dc 58 e8          	vaddps ymm5,ymm4,ymm0
  b2140f:	c4 e2 75 ac df       	vfnmadd213ps ymm3,ymm1,ymm7
  b21414:	c4 c1 2c 5c f3       	vsubps ymm6,ymm10,ymm11
  b21419:	c5 cc 59 d2          	vmulps ymm2,ymm6,ymm2
  b2141d:	c5 e4 5c f2          	vsubps ymm6,ymm3,ymm2
  b21421:	c5 dc 5c c0          	vsubps ymm0,ymm4,ymm0
  b21425:	c5 e4 58 d2          	vaddps ymm2,ymm3,ymm2
  b21429:	c4 c1 3c 58 dc       	vaddps ymm3,ymm8,ymm12
  b2142e:	c5 c4 58 c9          	vaddps ymm1,ymm7,ymm1
  b21432:	c5 fc 28 25 a6 5d 55 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff555da6]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b21439:	ff 
  b2143a:	c4 e3 7d 19 df 01    	vextractf128 xmm7,ymm3,0x1
  b21440:	62 f2 5d 28 7f d9    	vpermt2ps ymm3,ymm4,ymm1
  b21446:	c5 fc 11 1e          	vmovups YMMWORD PTR [rsi],ymm3
  b2144a:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b21450:	c5 c0 14 c9          	vunpcklps xmm1,xmm7,xmm1
  b21454:	c5 f8 13 4e 20       	vmovlps QWORD PTR [rsi+0x20],xmm1
  b21459:	c4 e3 7d 19 e9 01    	vextractf128 xmm1,ymm5,0x1
  b2145f:	62 f2 5d 28 7f ee    	vpermt2ps ymm5,ymm4,ymm6
  b21465:	c5 fc 11 6e 28       	vmovups YMMWORD PTR [rsi+0x28],ymm5
  b2146a:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  b21470:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  b21474:	c5 f8 13 4e 48       	vmovlps QWORD PTR [rsi+0x48],xmm1
  b21479:	62 f2 7d 28 77 e2    	vpermi2ps ymm4,ymm0,ymm2
  b2147f:	c5 fc 11 66 50       	vmovups YMMWORD PTR [rsi+0x50],ymm4
  b21484:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  b2148a:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b21490:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  b21494:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  b21499:	c5 f8 77             	vzeroupper
  b2149c:	c3                   	ret
