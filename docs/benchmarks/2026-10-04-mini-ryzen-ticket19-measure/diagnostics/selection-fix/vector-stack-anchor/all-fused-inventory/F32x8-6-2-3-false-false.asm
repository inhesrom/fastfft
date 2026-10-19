
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000072f200 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  72f200:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  72f205:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  72f20b:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  72f20f:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  72f215:	c5 f8 10 17          	vmovups xmm2,XMMWORD PTR [rdi]
  72f219:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  72f21e:	c5 fb 10 67 28       	vmovsd xmm4,QWORD PTR [rdi+0x28]
  72f223:	c4 e3 7d 18 e4 01    	vinsertf128 ymm4,ymm0,xmm4,0x1
  72f229:	c4 e3 5d 0c e1 c0    	vblendps ymm4,ymm4,ymm1,0xc0
  72f22f:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  72f235:	c5 e8 c6 e8 88       	vshufps xmm5,xmm2,xmm0,0x88
  72f23a:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  72f240:	c5 e0 c6 f4 88       	vshufps xmm6,xmm3,xmm4,0x88
  72f245:	c5 e8 c6 d0 dd       	vshufps xmm2,xmm2,xmm0,0xdd
  72f24a:	c5 e0 c6 dc dd       	vshufps xmm3,xmm3,xmm4,0xdd
  72f24f:	c5 d0 58 c6          	vaddps xmm0,xmm5,xmm6
  72f253:	c5 d0 5c e6          	vsubps xmm4,xmm5,xmm6
  72f257:	c4 e3 7d 0c e9 cc    	vblendps ymm5,ymm0,ymm1,0xcc
  72f25d:	c5 fd 73 d8 08       	vpsrldq ymm0,ymm0,0x8
  72f262:	c4 e3 5d 0c f1 cc    	vblendps ymm6,ymm4,ymm1,0xcc
  72f268:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  72f26d:	c5 fc c6 e4 88       	vshufps ymm4,ymm0,ymm4,0x88
  72f272:	c5 d4 c6 c6 88       	vshufps ymm0,ymm5,ymm6,0x88
  72f277:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  72f27c:	c5 d4 c6 ee dd       	vshufps ymm5,ymm5,ymm6,0xdd
  72f281:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  72f286:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  72f28b:	c5 e8 58 f3          	vaddps xmm6,xmm2,xmm3
  72f28f:	c5 e8 5c d3          	vsubps xmm2,xmm2,xmm3
  72f293:	c4 e3 4d 0c d9 cc    	vblendps ymm3,ymm6,ymm1,0xcc
  72f299:	c5 cd 73 de 08       	vpsrldq ymm6,ymm6,0x8
  72f29e:	c4 e3 6d 0c c9 cc    	vblendps ymm1,ymm2,ymm1,0xcc
  72f2a4:	c5 ed 73 da 08       	vpsrldq ymm2,ymm2,0x8
  72f2a9:	c5 cc c6 d2 88       	vshufps ymm2,ymm6,ymm2,0x88
  72f2ae:	c5 e4 c6 f1 88       	vshufps ymm6,ymm3,ymm1,0x88
  72f2b3:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  72f2b8:	c5 e4 c6 c9 dd       	vshufps ymm1,ymm3,ymm1,0xdd
  72f2bd:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  72f2c2:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  72f2c7:	c5 fc 10 5a 40       	vmovups ymm3,YMMWORD PTR [rdx+0x40]
  72f2cc:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  72f2d1:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  72f2d8:	00 
  72f2d9:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  72f2e0:	00 
  72f2e1:	c5 64 59 d5          	vmulps ymm10,ymm3,ymm5
  72f2e5:	c4 62 75 bc d7       	vfnmadd231ps ymm10,ymm1,ymm7
  72f2ea:	c5 3c 59 dc          	vmulps ymm11,ymm8,ymm4
  72f2ee:	c4 42 6d bc d9       	vfnmadd231ps ymm11,ymm2,ymm9
  72f2f3:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  72f2f8:	c5 e4 59 c9          	vmulps ymm1,ymm3,ymm1
  72f2fc:	c4 e2 55 b8 cf       	vfmadd231ps ymm1,ymm5,ymm7
  72f301:	c5 bc 59 d2          	vmulps ymm2,ymm8,ymm2
  72f305:	c4 c2 5d b8 d1       	vfmadd231ps ymm2,ymm4,ymm9
  72f30a:	c5 f4 58 da          	vaddps ymm3,ymm1,ymm2
  72f30e:	c4 e2 7d 18 25 49 61 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff946149]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  72f315:	94 ff 
  72f317:	c5 fc 28 ec          	vmovaps ymm5,ymm4
  72f31b:	c4 e2 1d ac e8       	vfnmadd213ps ymm5,ymm12,ymm0
  72f320:	c4 e2 65 ac e6       	vfnmadd213ps ymm4,ymm3,ymm6
  72f325:	c5 e0 58 de          	vaddps xmm3,xmm3,xmm6
  72f329:	c5 98 58 c0          	vaddps xmm0,xmm12,xmm0
  72f32d:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  72f331:	c4 c1 28 5c db       	vsubps xmm3,xmm10,xmm11
  72f336:	c4 e2 79 18 35 95 5f 	vbroadcastss xmm6,DWORD PTR [rip+0xffffffffff945f95]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  72f33d:	94 ff 
  72f33f:	c5 e0 59 de          	vmulps xmm3,xmm3,xmm6
  72f343:	c5 d8 5c fb          	vsubps xmm7,xmm4,xmm3
  72f347:	c5 f0 5c ca          	vsubps xmm1,xmm1,xmm2
  72f34b:	c5 f0 59 ce          	vmulps xmm1,xmm1,xmm6
  72f34f:	c5 d0 58 d1          	vaddps xmm2,xmm5,xmm1
  72f353:	c5 e8 14 d7          	vunpcklps xmm2,xmm2,xmm7
  72f357:	c4 e3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm2,0x1
  72f35d:	c5 fc 11 06          	vmovups YMMWORD PTR [rsi],ymm0
  72f361:	c5 d8 58 c3          	vaddps xmm0,xmm4,xmm3
  72f365:	c5 d0 5c c9          	vsubps xmm1,xmm5,xmm1
  72f369:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  72f36d:	c5 f8 11 46 20       	vmovups XMMWORD PTR [rsi+0x20],xmm0
  72f372:	c5 f8 77             	vzeroupper
  72f375:	c3                   	ret
