
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000007220c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  7220c0:	55                   	push   rbp
  7220c1:	48 89 e5             	mov    rbp,rsp
  7220c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  7220c8:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  7220cf:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  7220d4:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  7220d9:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  7220de:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  7220e3:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  7220e8:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  7220ee:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  7220f2:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  7220f8:	c5 fb 10 57 28       	vmovsd xmm2,QWORD PTR [rdi+0x28]
  7220fd:	c4 e3 7d 18 d2 01    	vinsertf128 ymm2,ymm0,xmm2,0x1
  722103:	c4 e3 6d 0c d1 c0    	vblendps ymm2,ymm2,ymm1,0xc0
  722109:	c5 f8 10 37          	vmovups xmm6,XMMWORD PTR [rdi]
  72210d:	c5 f8 10 7f 18       	vmovups xmm7,XMMWORD PTR [rdi+0x18]
  722112:	c5 78 10 47 30       	vmovups xmm8,XMMWORD PTR [rdi+0x30]
  722117:	c5 fb 10 5f 40       	vmovsd xmm3,QWORD PTR [rdi+0x40]
  72211c:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  722122:	c4 e3 65 0c e9 c0    	vblendps ymm5,ymm3,ymm1,0xc0
  722128:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  72212e:	c5 c8 c6 d8 dd       	vshufps xmm3,xmm6,xmm0,0xdd
  722133:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  722139:	c5 c0 c6 e2 dd       	vshufps xmm4,xmm7,xmm2,0xdd
  72213e:	c4 c3 7d 19 e9 01    	vextractf128 xmm9,ymm5,0x1
  722144:	c4 c1 38 c6 e9 dd    	vshufps xmm5,xmm8,xmm9,0xdd
  72214a:	c5 c8 c6 f0 88       	vshufps xmm6,xmm6,xmm0,0x88
  72214f:	c5 c0 c6 d2 88       	vshufps xmm2,xmm7,xmm2,0x88
  722154:	c4 41 38 c6 c9 88    	vshufps xmm9,xmm8,xmm9,0x88
  72215a:	c5 dc 58 fd          	vaddps ymm7,ymm4,ymm5
  72215e:	c4 e2 7d 18 05 f9 32 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9532f9]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  722165:	95 ff 
  722167:	c5 34 58 d2          	vaddps ymm10,ymm9,ymm2
  72216b:	c5 7c 28 c0          	vmovaps ymm8,ymm0
  72216f:	c4 62 45 ac c3       	vfnmadd213ps ymm8,ymm7,ymm3
  722174:	c4 41 6c 5c c9       	vsubps ymm9,ymm2,ymm9
  722179:	c4 e2 7d 18 15 52 31 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff953152]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  722180:	95 ff 
  722182:	c5 34 59 ca          	vmulps ymm9,ymm9,ymm2
  722186:	c5 28 58 de          	vaddps xmm11,xmm10,xmm6
  72218a:	c4 e2 2d bc f0       	vfnmadd231ps ymm6,ymm10,ymm0
  72218f:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  722193:	c5 dc 59 ea          	vmulps ymm5,ymm4,ymm2
  722197:	c5 c0 58 db          	vaddps xmm3,xmm7,xmm3
  72219b:	c4 c1 38 58 e1       	vaddps xmm4,xmm8,xmm9
  7221a0:	c4 c1 38 5c f9       	vsubps xmm7,xmm8,xmm9
  7221a5:	c5 65 15 c7          	vunpckhpd ymm8,ymm3,ymm7
  7221a9:	c5 e5 14 ff          	vunpcklpd ymm7,ymm3,ymm7
  7221ad:	c4 63 5d 0c c9 cc    	vblendps ymm9,ymm4,ymm1,0xcc
  7221b3:	c5 e5 73 dc 08       	vpsrldq ymm3,ymm4,0x8
  7221b8:	c5 bc c6 e3 88       	vshufps ymm4,ymm8,ymm3,0x88
  7221bd:	c4 c1 44 c6 d9 88    	vshufps ymm3,ymm7,ymm9,0x88
  7221c3:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  7221c8:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  7221ce:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  7221d3:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  7221d8:	c5 48 5c c5          	vsubps xmm8,xmm6,xmm5
  7221dc:	c5 d0 58 ee          	vaddps xmm5,xmm5,xmm6
  7221e0:	c5 a5 15 f5          	vunpckhpd ymm6,ymm11,ymm5
  7221e4:	c5 a5 14 ed          	vunpcklpd ymm5,ymm11,ymm5
  7221e8:	c4 63 3d 0c c9 cc    	vblendps ymm9,ymm8,ymm1,0xcc
  7221ee:	c4 c1 75 73 d8 08    	vpsrldq ymm1,ymm8,0x8
  7221f4:	c5 cc c6 f1 88       	vshufps ymm6,ymm6,ymm1,0x88
  7221f9:	c4 c1 54 c6 c9 88    	vshufps ymm1,ymm5,ymm9,0x88
  7221ff:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  722204:	c4 c1 54 c6 e9 dd    	vshufps ymm5,ymm5,ymm9,0xdd
  72220a:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  72220f:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  722214:	c5 7c 10 42 40       	vmovups ymm8,YMMWORD PTR [rdx+0x40]
  722219:	c5 7c 10 4a 60       	vmovups ymm9,YMMWORD PTR [rdx+0x60]
  72221e:	c5 7c 10 92 80 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0x80]
  722225:	00 
  722226:	c5 7c 10 9a a0 00 00 	vmovups ymm11,YMMWORD PTR [rdx+0xa0]
  72222d:	00 
  72222e:	c5 3c 59 e7          	vmulps ymm12,ymm8,ymm7
  722232:	c4 42 55 bc e1       	vfnmadd231ps ymm12,ymm5,ymm9
  722237:	c5 2c 59 ec          	vmulps ymm13,ymm10,ymm4
  72223b:	c4 42 4d bc eb       	vfnmadd231ps ymm13,ymm6,ymm11
  722240:	c4 41 1c 58 f5       	vaddps ymm14,ymm12,ymm13
  722245:	c5 bc 59 ed          	vmulps ymm5,ymm8,ymm5
  722249:	c4 c2 45 b8 e9       	vfmadd231ps ymm5,ymm7,ymm9
  72224e:	c5 ac 59 f6          	vmulps ymm6,ymm10,ymm6
  722252:	c4 c2 5d b8 f3       	vfmadd231ps ymm6,ymm4,ymm11
  722257:	c5 d4 58 e6          	vaddps ymm4,ymm5,ymm6
  72225b:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  72225f:	c4 e2 0d ac fb       	vfnmadd213ps ymm7,ymm14,ymm3
  722264:	c5 d4 5c ee          	vsubps ymm5,ymm5,ymm6
  722268:	c5 d4 59 ea          	vmulps ymm5,ymm5,ymm2
  72226c:	c4 e2 5d ac c1       	vfnmadd213ps ymm0,ymm4,ymm1
  722271:	c4 c1 1c 5c f5       	vsubps ymm6,ymm12,ymm13
  722276:	c5 cc 59 d2          	vmulps ymm2,ymm6,ymm2
  72227a:	c5 88 58 db          	vaddps xmm3,xmm14,xmm3
  72227e:	c5 d8 58 c9          	vaddps xmm1,xmm4,xmm1
  722282:	c5 f0 15 e3          	vunpckhps xmm4,xmm1,xmm3
  722286:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  72228a:	c5 f8 11 0e          	vmovups XMMWORD PTR [rsi],xmm1
  72228e:	c5 f8 13 66 10       	vmovlps QWORD PTR [rsi+0x10],xmm4
  722293:	c5 c0 58 cd          	vaddps xmm1,xmm7,xmm5
  722297:	c5 f8 5c da          	vsubps xmm3,xmm0,xmm2
  72229b:	c5 e0 15 e1          	vunpckhps xmm4,xmm3,xmm1
  72229f:	c5 e0 14 c9          	vunpcklps xmm1,xmm3,xmm1
  7222a3:	c5 f8 11 4e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm1
  7222a8:	c5 f8 13 66 28       	vmovlps QWORD PTR [rsi+0x28],xmm4
  7222ad:	c5 c0 5c cd          	vsubps xmm1,xmm7,xmm5
  7222b1:	c5 f8 58 c2          	vaddps xmm0,xmm0,xmm2
  7222b5:	c5 f8 15 d1          	vunpckhps xmm2,xmm0,xmm1
  7222b9:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  7222bd:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  7222c2:	c5 f8 13 56 40       	vmovlps QWORD PTR [rsi+0x40],xmm2
  7222c7:	48 89 ec             	mov    rsp,rbp
  7222ca:	5d                   	pop    rbp
  7222cb:	c5 f8 77             	vzeroupper
  7222ce:	c3                   	ret
