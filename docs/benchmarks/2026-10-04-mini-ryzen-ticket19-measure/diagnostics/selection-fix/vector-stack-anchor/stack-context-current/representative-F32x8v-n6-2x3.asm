
target/ticket19/selection-fix/vector-stack-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000abc180 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  abc180:	55                   	push   rbp
  abc181:	48 89 e5             	mov    rbp,rsp
  abc184:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  abc188:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  abc18f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  abc194:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  abc199:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  abc19e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  abc1a3:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  abc1a8:	c4 e3 7d 18 c8 01    	vinsertf128 ymm1,ymm0,xmm0,0x1
  abc1ae:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  abc1b2:	c4 e3 75 0c c8 c0    	vblendps ymm1,ymm1,ymm0,0xc0
  abc1b8:	c5 f8 10 17          	vmovups xmm2,XMMWORD PTR [rdi]
  abc1bc:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  abc1c1:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  abc1c7:	c5 e8 c6 e1 88       	vshufps xmm4,xmm2,xmm1,0x88
  abc1cc:	c5 fb 10 6f 28       	vmovsd xmm5,QWORD PTR [rdi+0x28]
  abc1d1:	c4 e3 7d 18 ed 01    	vinsertf128 ymm5,ymm0,xmm5,0x1
  abc1d7:	c4 e3 55 0c e8 c0    	vblendps ymm5,ymm5,ymm0,0xc0
  abc1dd:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  abc1e3:	c5 e0 c6 f5 88       	vshufps xmm6,xmm3,xmm5,0x88
  abc1e8:	c5 e8 c6 c9 dd       	vshufps xmm1,xmm2,xmm1,0xdd
  abc1ed:	c5 e0 c6 d5 dd       	vshufps xmm2,xmm3,xmm5,0xdd
  abc1f2:	c5 f0 58 da          	vaddps xmm3,xmm1,xmm2
  abc1f6:	c5 f0 5c ca          	vsubps xmm1,xmm1,xmm2
  abc1fa:	c4 e3 65 0c d0 cc    	vblendps ymm2,ymm3,ymm0,0xcc
  abc200:	c5 e5 73 db 08       	vpsrldq ymm3,ymm3,0x8
  abc205:	c4 e3 75 0c e8 cc    	vblendps ymm5,ymm1,ymm0,0xcc
  abc20b:	c5 f5 73 d9 08       	vpsrldq ymm1,ymm1,0x8
  abc210:	c5 e4 c6 c9 88       	vshufps ymm1,ymm3,ymm1,0x88
  abc215:	c5 ec c6 dd 88       	vshufps ymm3,ymm2,ymm5,0x88
  abc21a:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  abc21f:	c5 ec c6 d5 dd       	vshufps ymm2,ymm2,ymm5,0xdd
  abc224:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  abc229:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  abc22e:	c5 d8 58 ee          	vaddps xmm5,xmm4,xmm6
  abc232:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  abc236:	c4 e3 55 0c f0 cc    	vblendps ymm6,ymm5,ymm0,0xcc
  abc23c:	c5 d5 73 dd 08       	vpsrldq ymm5,ymm5,0x8
  abc241:	c4 e3 5d 0c c0 cc    	vblendps ymm0,ymm4,ymm0,0xcc
  abc247:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  abc24c:	c5 d4 c6 e4 88       	vshufps ymm4,ymm5,ymm4,0x88
  abc251:	c5 cc c6 e8 88       	vshufps ymm5,ymm6,ymm0,0x88
  abc256:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  abc25b:	c5 cc c6 c0 dd       	vshufps ymm0,ymm6,ymm0,0xdd
  abc260:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  abc265:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  abc26a:	c5 fc 10 72 40       	vmovups ymm6,YMMWORD PTR [rdx+0x40]
  abc26f:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  abc274:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  abc27b:	00 
  abc27c:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  abc283:	00 
  abc284:	c5 6c 59 d6          	vmulps ymm10,ymm2,ymm6
  abc288:	c4 62 7d bc d7       	vfnmadd231ps ymm10,ymm0,ymm7
  abc28d:	c5 3c 59 d9          	vmulps ymm11,ymm8,ymm1
  abc291:	c4 42 5d bc d9       	vfnmadd231ps ymm11,ymm4,ymm9
  abc296:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  abc29b:	c5 fc 59 c6          	vmulps ymm0,ymm0,ymm6
  abc29f:	c4 e2 6d b8 c7       	vfmadd231ps ymm0,ymm2,ymm7
  abc2a4:	c5 bc 59 d4          	vmulps ymm2,ymm8,ymm4
  abc2a8:	c4 c2 75 b8 d1       	vfmadd231ps ymm2,ymm1,ymm9
  abc2ad:	c5 fc 58 ca          	vaddps ymm1,ymm0,ymm2
  abc2b1:	c4 e2 7d 18 25 a6 91 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff5b91a6]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  abc2b8:	5b ff 
  abc2ba:	c5 fc 28 f4          	vmovaps ymm6,ymm4
  abc2be:	c4 e2 1d ac f3       	vfnmadd213ps ymm6,ymm12,ymm3
  abc2c3:	c4 e2 75 ac e5       	vfnmadd213ps ymm4,ymm1,ymm5
  abc2c8:	c5 98 58 db          	vaddps xmm3,xmm12,xmm3
  abc2cc:	c5 d0 58 c9          	vaddps xmm1,xmm5,xmm1
  abc2d0:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  abc2d4:	c5 f8 11 0e          	vmovups XMMWORD PTR [rsi],xmm1
  abc2d8:	c4 e2 79 18 0d f3 8f 	vbroadcastss xmm1,DWORD PTR [rip+0xffffffffff5b8ff3]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  abc2df:	5b ff 
  abc2e1:	c5 f8 5c c2          	vsubps xmm0,xmm0,xmm2
  abc2e5:	c5 f8 59 c1          	vmulps xmm0,xmm0,xmm1
  abc2e9:	c5 c8 58 d0          	vaddps xmm2,xmm6,xmm0
  abc2ed:	c4 c1 28 5c db       	vsubps xmm3,xmm10,xmm11
  abc2f2:	c5 e0 59 c9          	vmulps xmm1,xmm3,xmm1
  abc2f6:	c5 d8 5c d9          	vsubps xmm3,xmm4,xmm1
  abc2fa:	c5 e0 14 d2          	vunpcklps xmm2,xmm3,xmm2
  abc2fe:	c5 f8 11 56 10       	vmovups XMMWORD PTR [rsi+0x10],xmm2
  abc303:	c5 c8 5c c0          	vsubps xmm0,xmm6,xmm0
  abc307:	c5 d8 58 c9          	vaddps xmm1,xmm4,xmm1
  abc30b:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  abc30f:	c5 f8 11 46 20       	vmovups XMMWORD PTR [rsi+0x20],xmm0
  abc314:	48 89 ec             	mov    rsp,rbp
  abc317:	5d                   	pop    rbp
  abc318:	c5 f8 77             	vzeroupper
  abc31b:	c3                   	ret
