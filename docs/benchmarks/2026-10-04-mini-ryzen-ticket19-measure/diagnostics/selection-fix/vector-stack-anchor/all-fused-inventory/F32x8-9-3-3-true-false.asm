
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000721180 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  721180:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  721185:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  72118b:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  72118f:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  721195:	c5 fb 10 57 28       	vmovsd xmm2,QWORD PTR [rdi+0x28]
  72119a:	c4 e3 7d 18 d2 01    	vinsertf128 ymm2,ymm0,xmm2,0x1
  7211a0:	c4 e3 6d 0c d1 c0    	vblendps ymm2,ymm2,ymm1,0xc0
  7211a6:	c5 f8 10 37          	vmovups xmm6,XMMWORD PTR [rdi]
  7211aa:	c5 f8 10 7f 18       	vmovups xmm7,XMMWORD PTR [rdi+0x18]
  7211af:	c5 78 10 47 30       	vmovups xmm8,XMMWORD PTR [rdi+0x30]
  7211b4:	c5 fb 10 5f 40       	vmovsd xmm3,QWORD PTR [rdi+0x40]
  7211b9:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  7211bf:	c4 e3 65 0c e9 c0    	vblendps ymm5,ymm3,ymm1,0xc0
  7211c5:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  7211cb:	c5 c8 c6 d8 dd       	vshufps xmm3,xmm6,xmm0,0xdd
  7211d0:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  7211d6:	c5 c0 c6 e2 dd       	vshufps xmm4,xmm7,xmm2,0xdd
  7211db:	c4 c3 7d 19 e9 01    	vextractf128 xmm9,ymm5,0x1
  7211e1:	c4 c1 38 c6 e9 dd    	vshufps xmm5,xmm8,xmm9,0xdd
  7211e7:	c5 c8 c6 f0 88       	vshufps xmm6,xmm6,xmm0,0x88
  7211ec:	c5 c0 c6 d2 88       	vshufps xmm2,xmm7,xmm2,0x88
  7211f1:	c4 41 38 c6 c9 88    	vshufps xmm9,xmm8,xmm9,0x88
  7211f7:	c5 dc 58 fd          	vaddps ymm7,ymm4,ymm5
  7211fb:	c4 e2 7d 18 05 5c 42 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff95425c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  721202:	95 ff 
  721204:	c5 34 58 d2          	vaddps ymm10,ymm9,ymm2
  721208:	c5 7c 28 c0          	vmovaps ymm8,ymm0
  72120c:	c4 62 45 ac c3       	vfnmadd213ps ymm8,ymm7,ymm3
  721211:	c4 41 6c 5c c9       	vsubps ymm9,ymm2,ymm9
  721216:	c4 e2 7d 18 15 b5 40 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff9540b5]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  72121d:	95 ff 
  72121f:	c5 34 59 ca          	vmulps ymm9,ymm9,ymm2
  721223:	c5 28 58 de          	vaddps xmm11,xmm10,xmm6
  721227:	c4 e2 2d bc f0       	vfnmadd231ps ymm6,ymm10,ymm0
  72122c:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  721230:	c5 dc 59 ea          	vmulps ymm5,ymm4,ymm2
  721234:	c5 c0 58 db          	vaddps xmm3,xmm7,xmm3
  721238:	c4 c1 38 58 e1       	vaddps xmm4,xmm8,xmm9
  72123d:	c4 c1 38 5c f9       	vsubps xmm7,xmm8,xmm9
  721242:	c5 65 15 c7          	vunpckhpd ymm8,ymm3,ymm7
  721246:	c5 e5 14 ff          	vunpcklpd ymm7,ymm3,ymm7
  72124a:	c4 63 5d 0c c9 cc    	vblendps ymm9,ymm4,ymm1,0xcc
  721250:	c5 e5 73 dc 08       	vpsrldq ymm3,ymm4,0x8
  721255:	c5 bc c6 e3 88       	vshufps ymm4,ymm8,ymm3,0x88
  72125a:	c4 c1 44 c6 d9 88    	vshufps ymm3,ymm7,ymm9,0x88
  721260:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  721265:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  72126b:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  721270:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  721275:	c5 48 5c c5          	vsubps xmm8,xmm6,xmm5
  721279:	c5 d0 58 ee          	vaddps xmm5,xmm5,xmm6
  72127d:	c5 a5 15 f5          	vunpckhpd ymm6,ymm11,ymm5
  721281:	c5 a5 14 ed          	vunpcklpd ymm5,ymm11,ymm5
  721285:	c4 63 3d 0c c9 cc    	vblendps ymm9,ymm8,ymm1,0xcc
  72128b:	c4 c1 75 73 d8 08    	vpsrldq ymm1,ymm8,0x8
  721291:	c5 cc c6 f1 88       	vshufps ymm6,ymm6,ymm1,0x88
  721296:	c4 c1 54 c6 c9 88    	vshufps ymm1,ymm5,ymm9,0x88
  72129c:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  7212a1:	c4 c1 54 c6 e9 dd    	vshufps ymm5,ymm5,ymm9,0xdd
  7212a7:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  7212ac:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  7212b1:	c5 7c 10 42 40       	vmovups ymm8,YMMWORD PTR [rdx+0x40]
  7212b6:	c5 7c 10 4a 60       	vmovups ymm9,YMMWORD PTR [rdx+0x60]
  7212bb:	c5 7c 10 92 80 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0x80]
  7212c2:	00 
  7212c3:	c5 7c 10 9a a0 00 00 	vmovups ymm11,YMMWORD PTR [rdx+0xa0]
  7212ca:	00 
  7212cb:	c5 3c 59 e7          	vmulps ymm12,ymm8,ymm7
  7212cf:	c4 42 55 bc e1       	vfnmadd231ps ymm12,ymm5,ymm9
  7212d4:	c5 2c 59 ec          	vmulps ymm13,ymm10,ymm4
  7212d8:	c4 42 4d bc eb       	vfnmadd231ps ymm13,ymm6,ymm11
  7212dd:	c4 41 1c 58 f5       	vaddps ymm14,ymm12,ymm13
  7212e2:	c5 bc 59 ed          	vmulps ymm5,ymm8,ymm5
  7212e6:	c4 c2 45 b8 e9       	vfmadd231ps ymm5,ymm7,ymm9
  7212eb:	c5 ac 59 f6          	vmulps ymm6,ymm10,ymm6
  7212ef:	c4 c2 5d b8 f3       	vfmadd231ps ymm6,ymm4,ymm11
  7212f4:	c5 d4 58 e6          	vaddps ymm4,ymm5,ymm6
  7212f8:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  7212fc:	c4 e2 0d ac fb       	vfnmadd213ps ymm7,ymm14,ymm3
  721301:	c5 d4 5c ee          	vsubps ymm5,ymm5,ymm6
  721305:	c5 d4 59 ea          	vmulps ymm5,ymm5,ymm2
  721309:	c4 e2 5d ac c1       	vfnmadd213ps ymm0,ymm4,ymm1
  72130e:	c4 c1 1c 5c f5       	vsubps ymm6,ymm12,ymm13
  721313:	c5 cc 59 d2          	vmulps ymm2,ymm6,ymm2
  721317:	c5 88 58 db          	vaddps xmm3,xmm14,xmm3
  72131b:	c5 d8 58 c9          	vaddps xmm1,xmm4,xmm1
  72131f:	c5 f0 15 e3          	vunpckhps xmm4,xmm1,xmm3
  721323:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  721327:	c5 f8 11 0e          	vmovups XMMWORD PTR [rsi],xmm1
  72132b:	c5 f8 13 66 10       	vmovlps QWORD PTR [rsi+0x10],xmm4
  721330:	c5 c0 58 cd          	vaddps xmm1,xmm7,xmm5
  721334:	c5 f8 5c da          	vsubps xmm3,xmm0,xmm2
  721338:	c5 e0 15 e1          	vunpckhps xmm4,xmm3,xmm1
  72133c:	c5 e0 14 c9          	vunpcklps xmm1,xmm3,xmm1
  721340:	c5 f8 11 4e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm1
  721345:	c5 f8 13 66 28       	vmovlps QWORD PTR [rsi+0x28],xmm4
  72134a:	c5 c0 5c cd          	vsubps xmm1,xmm7,xmm5
  72134e:	c5 f8 58 c2          	vaddps xmm0,xmm0,xmm2
  721352:	c5 f8 15 d1          	vunpckhps xmm2,xmm0,xmm1
  721356:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  72135a:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  72135f:	c5 f8 13 56 40       	vmovlps QWORD PTR [rsi+0x40],xmm2
  721364:	c5 f8 77             	vzeroupper
  721367:	c3                   	ret
