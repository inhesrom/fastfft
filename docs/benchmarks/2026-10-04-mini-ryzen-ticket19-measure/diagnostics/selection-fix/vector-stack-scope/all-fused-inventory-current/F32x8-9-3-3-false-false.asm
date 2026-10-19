
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000729200 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  729200:	55                   	push   rbp
  729201:	48 89 e5             	mov    rbp,rsp
  729204:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  729208:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  72920f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  729214:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  729219:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  72921e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  729223:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  729228:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  72922e:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  729232:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  729238:	c5 fb 10 57 28       	vmovsd xmm2,QWORD PTR [rdi+0x28]
  72923d:	c4 e3 7d 18 d2 01    	vinsertf128 ymm2,ymm0,xmm2,0x1
  729243:	c4 e3 6d 0c d1 c0    	vblendps ymm2,ymm2,ymm1,0xc0
  729249:	c5 f8 10 37          	vmovups xmm6,XMMWORD PTR [rdi]
  72924d:	c5 f8 10 7f 18       	vmovups xmm7,XMMWORD PTR [rdi+0x18]
  729252:	c5 78 10 47 30       	vmovups xmm8,XMMWORD PTR [rdi+0x30]
  729257:	c5 fb 10 5f 40       	vmovsd xmm3,QWORD PTR [rdi+0x40]
  72925c:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  729262:	c4 e3 65 0c e9 c0    	vblendps ymm5,ymm3,ymm1,0xc0
  729268:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  72926e:	c5 c8 c6 d8 88       	vshufps xmm3,xmm6,xmm0,0x88
  729273:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  729279:	c5 c0 c6 e2 88       	vshufps xmm4,xmm7,xmm2,0x88
  72927e:	c4 c3 7d 19 e9 01    	vextractf128 xmm9,ymm5,0x1
  729284:	c4 c1 38 c6 e9 88    	vshufps xmm5,xmm8,xmm9,0x88
  72928a:	c5 c8 c6 f0 dd       	vshufps xmm6,xmm6,xmm0,0xdd
  72928f:	c5 c0 c6 d2 dd       	vshufps xmm2,xmm7,xmm2,0xdd
  729294:	c4 41 38 c6 c9 dd    	vshufps xmm9,xmm8,xmm9,0xdd
  72929a:	c5 dc 58 fd          	vaddps ymm7,ymm4,ymm5
  72929e:	c4 e2 7d 18 05 b9 c1 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff94c1b9]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  7292a5:	94 ff 
  7292a7:	c5 34 58 d2          	vaddps ymm10,ymm9,ymm2
  7292ab:	c5 7c 28 c0          	vmovaps ymm8,ymm0
  7292af:	c4 62 45 ac c3       	vfnmadd213ps ymm8,ymm7,ymm3
  7292b4:	c4 41 6c 5c c9       	vsubps ymm9,ymm2,ymm9
  7292b9:	c4 e2 7d 18 15 12 c0 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff94c012]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  7292c0:	94 ff 
  7292c2:	c5 34 59 ca          	vmulps ymm9,ymm9,ymm2
  7292c6:	c5 28 58 de          	vaddps xmm11,xmm10,xmm6
  7292ca:	c4 e2 2d bc f0       	vfnmadd231ps ymm6,ymm10,ymm0
  7292cf:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  7292d3:	c5 dc 59 ea          	vmulps ymm5,ymm4,ymm2
  7292d7:	c5 c0 58 db          	vaddps xmm3,xmm7,xmm3
  7292db:	c4 c1 38 58 e1       	vaddps xmm4,xmm8,xmm9
  7292e0:	c4 c1 38 5c f9       	vsubps xmm7,xmm8,xmm9
  7292e5:	c5 65 15 c7          	vunpckhpd ymm8,ymm3,ymm7
  7292e9:	c5 e5 14 ff          	vunpcklpd ymm7,ymm3,ymm7
  7292ed:	c4 63 5d 0c c9 cc    	vblendps ymm9,ymm4,ymm1,0xcc
  7292f3:	c5 e5 73 dc 08       	vpsrldq ymm3,ymm4,0x8
  7292f8:	c5 bc c6 e3 88       	vshufps ymm4,ymm8,ymm3,0x88
  7292fd:	c4 c1 44 c6 d9 88    	vshufps ymm3,ymm7,ymm9,0x88
  729303:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  729308:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  72930e:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  729313:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  729318:	c5 48 5c c5          	vsubps xmm8,xmm6,xmm5
  72931c:	c5 d0 58 ee          	vaddps xmm5,xmm5,xmm6
  729320:	c5 a5 15 f5          	vunpckhpd ymm6,ymm11,ymm5
  729324:	c5 a5 14 ed          	vunpcklpd ymm5,ymm11,ymm5
  729328:	c4 e3 3d 0c c9 cc    	vblendps ymm1,ymm8,ymm1,0xcc
  72932e:	c4 c1 3d 73 d8 08    	vpsrldq ymm8,ymm8,0x8
  729334:	c4 c1 4c c6 f0 88    	vshufps ymm6,ymm6,ymm8,0x88
  72933a:	c5 54 c6 c1 88       	vshufps ymm8,ymm5,ymm1,0x88
  72933f:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  729345:	c5 d4 c6 c9 dd       	vshufps ymm1,ymm5,ymm1,0xdd
  72934a:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  72934f:	c5 cc c6 ee d8       	vshufps ymm5,ymm6,ymm6,0xd8
  729354:	c5 fc 10 72 40       	vmovups ymm6,YMMWORD PTR [rdx+0x40]
  729359:	c5 7c 10 4a 60       	vmovups ymm9,YMMWORD PTR [rdx+0x60]
  72935e:	c5 7c 10 92 80 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0x80]
  729365:	00 
  729366:	c5 7c 10 9a a0 00 00 	vmovups ymm11,YMMWORD PTR [rdx+0xa0]
  72936d:	00 
  72936e:	c5 4c 59 e7          	vmulps ymm12,ymm6,ymm7
  729372:	c4 42 75 bc e1       	vfnmadd231ps ymm12,ymm1,ymm9
  729377:	c5 2c 59 ec          	vmulps ymm13,ymm10,ymm4
  72937b:	c4 42 55 bc eb       	vfnmadd231ps ymm13,ymm5,ymm11
  729380:	c4 41 1c 58 f5       	vaddps ymm14,ymm12,ymm13
  729385:	c5 cc 59 c9          	vmulps ymm1,ymm6,ymm1
  729389:	c4 c2 45 b8 c9       	vfmadd231ps ymm1,ymm7,ymm9
  72938e:	c5 ac 59 ed          	vmulps ymm5,ymm10,ymm5
  729392:	c4 c2 5d b8 eb       	vfmadd231ps ymm5,ymm4,ymm11
  729397:	c5 f4 58 e5          	vaddps ymm4,ymm1,ymm5
  72939b:	c5 fc 28 f0          	vmovaps ymm6,ymm0
  72939f:	c4 e2 0d ac f3       	vfnmadd213ps ymm6,ymm14,ymm3
  7293a4:	c5 f4 5c cd          	vsubps ymm1,ymm1,ymm5
  7293a8:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  7293ac:	c4 c2 5d ac c0       	vfnmadd213ps ymm0,ymm4,ymm8
  7293b1:	c4 c1 1c 5c ed       	vsubps ymm5,ymm12,ymm13
  7293b6:	c5 d4 59 d2          	vmulps ymm2,ymm5,ymm2
  7293ba:	c5 b8 58 e4          	vaddps xmm4,xmm8,xmm4
  7293be:	c5 88 58 db          	vaddps xmm3,xmm14,xmm3
  7293c2:	c5 e0 15 ec          	vunpckhps xmm5,xmm3,xmm4
  7293c6:	c5 e0 14 dc          	vunpcklps xmm3,xmm3,xmm4
  7293ca:	c5 f8 11 1e          	vmovups XMMWORD PTR [rsi],xmm3
  7293ce:	c5 f8 13 6e 10       	vmovlps QWORD PTR [rsi+0x10],xmm5
  7293d3:	c5 f8 5c da          	vsubps xmm3,xmm0,xmm2
  7293d7:	c5 c8 58 e1          	vaddps xmm4,xmm6,xmm1
  7293db:	c5 d8 15 eb          	vunpckhps xmm5,xmm4,xmm3
  7293df:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  7293e3:	c5 f8 11 5e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm3
  7293e8:	c5 f8 13 6e 28       	vmovlps QWORD PTR [rsi+0x28],xmm5
  7293ed:	c5 f8 58 c2          	vaddps xmm0,xmm0,xmm2
  7293f1:	c5 c8 5c c9          	vsubps xmm1,xmm6,xmm1
  7293f5:	c5 f0 15 d0          	vunpckhps xmm2,xmm1,xmm0
  7293f9:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  7293fd:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  729402:	c5 f8 13 56 40       	vmovlps QWORD PTR [rsi+0x40],xmm2
  729407:	48 89 ec             	mov    rsp,rbp
  72940a:	5d                   	pop    rbp
  72940b:	c5 f8 77             	vzeroupper
  72940e:	c3                   	ret
