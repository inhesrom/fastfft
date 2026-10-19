
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000007302c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  7302c0:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  7302c5:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  7302cb:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  7302cf:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  7302d5:	c5 f8 10 17          	vmovups xmm2,XMMWORD PTR [rdi]
  7302d9:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  7302de:	c5 fb 10 67 28       	vmovsd xmm4,QWORD PTR [rdi+0x28]
  7302e3:	c4 e3 7d 18 e4 01    	vinsertf128 ymm4,ymm0,xmm4,0x1
  7302e9:	c4 e3 5d 0c e1 c0    	vblendps ymm4,ymm4,ymm1,0xc0
  7302ef:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  7302f5:	c5 e8 c6 e8 88       	vshufps xmm5,xmm2,xmm0,0x88
  7302fa:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  730300:	c5 e0 c6 f4 88       	vshufps xmm6,xmm3,xmm4,0x88
  730305:	c5 e8 c6 d0 dd       	vshufps xmm2,xmm2,xmm0,0xdd
  73030a:	c5 e0 c6 dc dd       	vshufps xmm3,xmm3,xmm4,0xdd
  73030f:	c5 d0 58 c6          	vaddps xmm0,xmm5,xmm6
  730313:	c5 d0 5c e6          	vsubps xmm4,xmm5,xmm6
  730317:	c4 e3 7d 0c e9 cc    	vblendps ymm5,ymm0,ymm1,0xcc
  73031d:	c5 fd 73 d8 08       	vpsrldq ymm0,ymm0,0x8
  730322:	c4 e3 5d 0c f1 cc    	vblendps ymm6,ymm4,ymm1,0xcc
  730328:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  73032d:	c5 fc c6 e4 88       	vshufps ymm4,ymm0,ymm4,0x88
  730332:	c5 d4 c6 c6 88       	vshufps ymm0,ymm5,ymm6,0x88
  730337:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  73033c:	c5 d4 c6 ee dd       	vshufps ymm5,ymm5,ymm6,0xdd
  730341:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  730346:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  73034b:	c5 e8 58 f3          	vaddps xmm6,xmm2,xmm3
  73034f:	c5 e8 5c d3          	vsubps xmm2,xmm2,xmm3
  730353:	c4 e3 4d 0c d9 cc    	vblendps ymm3,ymm6,ymm1,0xcc
  730359:	c5 cd 73 de 08       	vpsrldq ymm6,ymm6,0x8
  73035e:	c4 e3 6d 0c c9 cc    	vblendps ymm1,ymm2,ymm1,0xcc
  730364:	c5 ed 73 da 08       	vpsrldq ymm2,ymm2,0x8
  730369:	c5 cc c6 d2 88       	vshufps ymm2,ymm6,ymm2,0x88
  73036e:	c5 e4 c6 f1 88       	vshufps ymm6,ymm3,ymm1,0x88
  730373:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  730378:	c5 e4 c6 c9 dd       	vshufps ymm1,ymm3,ymm1,0xdd
  73037d:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  730382:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  730387:	c5 fc 10 5a 40       	vmovups ymm3,YMMWORD PTR [rdx+0x40]
  73038c:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  730391:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  730398:	00 
  730399:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  7303a0:	00 
  7303a1:	c5 64 59 d5          	vmulps ymm10,ymm3,ymm5
  7303a5:	c4 62 75 bc d7       	vfnmadd231ps ymm10,ymm1,ymm7
  7303aa:	c5 3c 59 dc          	vmulps ymm11,ymm8,ymm4
  7303ae:	c4 42 6d bc d9       	vfnmadd231ps ymm11,ymm2,ymm9
  7303b3:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  7303b8:	c5 e4 59 c9          	vmulps ymm1,ymm3,ymm1
  7303bc:	c4 e2 55 b8 cf       	vfmadd231ps ymm1,ymm5,ymm7
  7303c1:	c5 bc 59 d2          	vmulps ymm2,ymm8,ymm2
  7303c5:	c4 c2 5d b8 d1       	vfmadd231ps ymm2,ymm4,ymm9
  7303ca:	c5 f4 58 da          	vaddps ymm3,ymm1,ymm2
  7303ce:	c4 e2 7d 18 25 89 50 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff945089]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  7303d5:	94 ff 
  7303d7:	c5 fc 28 ec          	vmovaps ymm5,ymm4
  7303db:	c4 e2 1d ac e8       	vfnmadd213ps ymm5,ymm12,ymm0
  7303e0:	c4 e2 65 ac e6       	vfnmadd213ps ymm4,ymm3,ymm6
  7303e5:	c5 e0 58 de          	vaddps xmm3,xmm3,xmm6
  7303e9:	c5 98 58 c0          	vaddps xmm0,xmm12,xmm0
  7303ed:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  7303f1:	c4 c1 28 5c db       	vsubps xmm3,xmm10,xmm11
  7303f6:	c4 e2 79 18 35 d5 4e 	vbroadcastss xmm6,DWORD PTR [rip+0xffffffffff944ed5]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  7303fd:	94 ff 
  7303ff:	c5 e0 59 de          	vmulps xmm3,xmm3,xmm6
  730403:	c5 d8 5c fb          	vsubps xmm7,xmm4,xmm3
  730407:	c5 f0 5c ca          	vsubps xmm1,xmm1,xmm2
  73040b:	c5 f0 59 ce          	vmulps xmm1,xmm1,xmm6
  73040f:	c5 d0 58 d1          	vaddps xmm2,xmm5,xmm1
  730413:	c5 e8 14 d7          	vunpcklps xmm2,xmm2,xmm7
  730417:	c4 e3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm2,0x1
  73041d:	c5 fc 11 06          	vmovups YMMWORD PTR [rsi],ymm0
  730421:	c5 d8 58 c3          	vaddps xmm0,xmm4,xmm3
  730425:	c5 d0 5c c9          	vsubps xmm1,xmm5,xmm1
  730429:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  73042d:	c5 f8 11 46 20       	vmovups XMMWORD PTR [rsi+0x20],xmm0
  730432:	c5 f8 77             	vzeroupper
  730435:	c3                   	ret
