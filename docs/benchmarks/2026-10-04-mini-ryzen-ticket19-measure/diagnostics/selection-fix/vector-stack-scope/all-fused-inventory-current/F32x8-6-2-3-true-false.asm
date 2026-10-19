
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006cc1c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6cc1c0:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  6cc1c5:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  6cc1cb:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  6cc1cf:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  6cc1d5:	c5 f8 10 17          	vmovups xmm2,XMMWORD PTR [rdi]
  6cc1d9:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  6cc1de:	c5 fb 10 67 28       	vmovsd xmm4,QWORD PTR [rdi+0x28]
  6cc1e3:	c4 e3 7d 18 e4 01    	vinsertf128 ymm4,ymm0,xmm4,0x1
  6cc1e9:	c4 e3 5d 0c e1 c0    	vblendps ymm4,ymm4,ymm1,0xc0
  6cc1ef:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  6cc1f5:	c5 e8 c6 e8 dd       	vshufps xmm5,xmm2,xmm0,0xdd
  6cc1fa:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  6cc200:	c5 e0 c6 f4 dd       	vshufps xmm6,xmm3,xmm4,0xdd
  6cc205:	c5 e8 c6 d0 88       	vshufps xmm2,xmm2,xmm0,0x88
  6cc20a:	c5 e0 c6 dc 88       	vshufps xmm3,xmm3,xmm4,0x88
  6cc20f:	c5 d0 58 c6          	vaddps xmm0,xmm5,xmm6
  6cc213:	c5 d0 5c e6          	vsubps xmm4,xmm5,xmm6
  6cc217:	c4 e3 7d 0c e9 cc    	vblendps ymm5,ymm0,ymm1,0xcc
  6cc21d:	c5 fd 73 d8 08       	vpsrldq ymm0,ymm0,0x8
  6cc222:	c4 e3 5d 0c f1 cc    	vblendps ymm6,ymm4,ymm1,0xcc
  6cc228:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  6cc22d:	c5 fc c6 e4 88       	vshufps ymm4,ymm0,ymm4,0x88
  6cc232:	c5 d4 c6 c6 88       	vshufps ymm0,ymm5,ymm6,0x88
  6cc237:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  6cc23c:	c5 d4 c6 ee dd       	vshufps ymm5,ymm5,ymm6,0xdd
  6cc241:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  6cc246:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  6cc24b:	c5 e8 58 f3          	vaddps xmm6,xmm2,xmm3
  6cc24f:	c5 e8 5c d3          	vsubps xmm2,xmm2,xmm3
  6cc253:	c4 e3 4d 0c d9 cc    	vblendps ymm3,ymm6,ymm1,0xcc
  6cc259:	c5 cd 73 de 08       	vpsrldq ymm6,ymm6,0x8
  6cc25e:	c4 e3 6d 0c c9 cc    	vblendps ymm1,ymm2,ymm1,0xcc
  6cc264:	c5 ed 73 da 08       	vpsrldq ymm2,ymm2,0x8
  6cc269:	c5 cc c6 d2 88       	vshufps ymm2,ymm6,ymm2,0x88
  6cc26e:	c5 e4 c6 f1 88       	vshufps ymm6,ymm3,ymm1,0x88
  6cc273:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  6cc278:	c5 e4 c6 c9 dd       	vshufps ymm1,ymm3,ymm1,0xdd
  6cc27d:	c5 f4 c6 d9 d8       	vshufps ymm3,ymm1,ymm1,0xd8
  6cc282:	c5 ec c6 fa d8       	vshufps ymm7,ymm2,ymm2,0xd8
  6cc287:	c5 7c 10 42 40       	vmovups ymm8,YMMWORD PTR [rdx+0x40]
  6cc28c:	c5 7c 10 4a 60       	vmovups ymm9,YMMWORD PTR [rdx+0x60]
  6cc291:	c5 7c 10 92 80 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0x80]
  6cc298:	00 
  6cc299:	c5 7c 10 9a a0 00 00 	vmovups ymm11,YMMWORD PTR [rdx+0xa0]
  6cc2a0:	00 
  6cc2a1:	c5 bc 59 cd          	vmulps ymm1,ymm8,ymm5
  6cc2a5:	c4 c2 65 bc c9       	vfnmadd231ps ymm1,ymm3,ymm9
  6cc2aa:	c5 ac 59 d4          	vmulps ymm2,ymm10,ymm4
  6cc2ae:	c4 c2 45 bc d3       	vfnmadd231ps ymm2,ymm7,ymm11
  6cc2b3:	c5 74 58 e2          	vaddps ymm12,ymm1,ymm2
  6cc2b7:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  6cc2bb:	c4 c2 55 b8 d9       	vfmadd231ps ymm3,ymm5,ymm9
  6cc2c0:	c5 ac 59 ef          	vmulps ymm5,ymm10,ymm7
  6cc2c4:	c4 c2 5d b8 eb       	vfmadd231ps ymm5,ymm4,ymm11
  6cc2c9:	c5 e4 58 e5          	vaddps ymm4,ymm3,ymm5
  6cc2cd:	c4 e2 7d 18 3d 8a 91 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff9a918a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6cc2d4:	9a ff 
  6cc2d6:	c5 7c 28 c7          	vmovaps ymm8,ymm7
  6cc2da:	c4 62 1d ac c0       	vfnmadd213ps ymm8,ymm12,ymm0
  6cc2df:	c4 e2 5d ac fe       	vfnmadd213ps ymm7,ymm4,ymm6
  6cc2e4:	c5 98 58 c0          	vaddps xmm0,xmm12,xmm0
  6cc2e8:	c5 d8 58 e6          	vaddps xmm4,xmm4,xmm6
  6cc2ec:	c5 d8 14 c0          	vunpcklps xmm0,xmm4,xmm0
  6cc2f0:	c5 e0 5c dd          	vsubps xmm3,xmm3,xmm5
  6cc2f4:	c4 e2 79 18 25 d7 8f 	vbroadcastss xmm4,DWORD PTR [rip+0xffffffffff9a8fd7]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6cc2fb:	9a ff 
  6cc2fd:	c5 e0 59 dc          	vmulps xmm3,xmm3,xmm4
  6cc301:	c5 b8 58 eb          	vaddps xmm5,xmm8,xmm3
  6cc305:	c5 f0 5c ca          	vsubps xmm1,xmm1,xmm2
  6cc309:	c5 f0 59 cc          	vmulps xmm1,xmm1,xmm4
  6cc30d:	c5 c0 5c d1          	vsubps xmm2,xmm7,xmm1
  6cc311:	c5 e8 14 d5          	vunpcklps xmm2,xmm2,xmm5
  6cc315:	c4 e3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm2,0x1
  6cc31b:	c5 fc 11 06          	vmovups YMMWORD PTR [rsi],ymm0
  6cc31f:	c5 b8 5c c3          	vsubps xmm0,xmm8,xmm3
  6cc323:	c5 c0 58 c9          	vaddps xmm1,xmm7,xmm1
  6cc327:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  6cc32b:	c5 f8 11 46 20       	vmovups XMMWORD PTR [rsi+0x20],xmm0
  6cc330:	c5 f8 77             	vzeroupper
  6cc333:	c3                   	ret
