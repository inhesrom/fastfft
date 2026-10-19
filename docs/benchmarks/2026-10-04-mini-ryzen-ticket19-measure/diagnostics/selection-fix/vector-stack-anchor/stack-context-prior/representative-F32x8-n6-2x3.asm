
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006cb940 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6cb940:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  6cb945:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  6cb94b:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  6cb94f:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  6cb955:	c5 f8 10 17          	vmovups xmm2,XMMWORD PTR [rdi]
  6cb959:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  6cb95e:	c5 fb 10 67 28       	vmovsd xmm4,QWORD PTR [rdi+0x28]
  6cb963:	c4 e3 7d 18 e4 01    	vinsertf128 ymm4,ymm0,xmm4,0x1
  6cb969:	c4 e3 5d 0c e1 c0    	vblendps ymm4,ymm4,ymm1,0xc0
  6cb96f:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  6cb975:	c5 e8 c6 e8 dd       	vshufps xmm5,xmm2,xmm0,0xdd
  6cb97a:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  6cb980:	c5 e0 c6 f4 dd       	vshufps xmm6,xmm3,xmm4,0xdd
  6cb985:	c5 e8 c6 d0 88       	vshufps xmm2,xmm2,xmm0,0x88
  6cb98a:	c5 e0 c6 dc 88       	vshufps xmm3,xmm3,xmm4,0x88
  6cb98f:	c5 d0 58 c6          	vaddps xmm0,xmm5,xmm6
  6cb993:	c5 d0 5c e6          	vsubps xmm4,xmm5,xmm6
  6cb997:	c4 e3 7d 0c e9 cc    	vblendps ymm5,ymm0,ymm1,0xcc
  6cb99d:	c5 fd 73 d8 08       	vpsrldq ymm0,ymm0,0x8
  6cb9a2:	c4 e3 5d 0c f1 cc    	vblendps ymm6,ymm4,ymm1,0xcc
  6cb9a8:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  6cb9ad:	c5 fc c6 e4 88       	vshufps ymm4,ymm0,ymm4,0x88
  6cb9b2:	c5 d4 c6 c6 88       	vshufps ymm0,ymm5,ymm6,0x88
  6cb9b7:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  6cb9bc:	c5 d4 c6 ee dd       	vshufps ymm5,ymm5,ymm6,0xdd
  6cb9c1:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  6cb9c6:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  6cb9cb:	c5 e8 58 f3          	vaddps xmm6,xmm2,xmm3
  6cb9cf:	c5 e8 5c d3          	vsubps xmm2,xmm2,xmm3
  6cb9d3:	c4 e3 4d 0c d9 cc    	vblendps ymm3,ymm6,ymm1,0xcc
  6cb9d9:	c5 cd 73 de 08       	vpsrldq ymm6,ymm6,0x8
  6cb9de:	c4 e3 6d 0c c9 cc    	vblendps ymm1,ymm2,ymm1,0xcc
  6cb9e4:	c5 ed 73 da 08       	vpsrldq ymm2,ymm2,0x8
  6cb9e9:	c5 cc c6 d2 88       	vshufps ymm2,ymm6,ymm2,0x88
  6cb9ee:	c5 e4 c6 f1 88       	vshufps ymm6,ymm3,ymm1,0x88
  6cb9f3:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  6cb9f8:	c5 e4 c6 c9 dd       	vshufps ymm1,ymm3,ymm1,0xdd
  6cb9fd:	c5 f4 c6 d9 d8       	vshufps ymm3,ymm1,ymm1,0xd8
  6cba02:	c5 ec c6 fa d8       	vshufps ymm7,ymm2,ymm2,0xd8
  6cba07:	c5 7c 10 42 40       	vmovups ymm8,YMMWORD PTR [rdx+0x40]
  6cba0c:	c5 7c 10 4a 60       	vmovups ymm9,YMMWORD PTR [rdx+0x60]
  6cba11:	c5 7c 10 92 80 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0x80]
  6cba18:	00 
  6cba19:	c5 7c 10 9a a0 00 00 	vmovups ymm11,YMMWORD PTR [rdx+0xa0]
  6cba20:	00 
  6cba21:	c5 bc 59 cd          	vmulps ymm1,ymm8,ymm5
  6cba25:	c4 c2 65 bc c9       	vfnmadd231ps ymm1,ymm3,ymm9
  6cba2a:	c5 ac 59 d4          	vmulps ymm2,ymm10,ymm4
  6cba2e:	c4 c2 45 bc d3       	vfnmadd231ps ymm2,ymm7,ymm11
  6cba33:	c5 74 58 e2          	vaddps ymm12,ymm1,ymm2
  6cba37:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  6cba3b:	c4 c2 55 b8 d9       	vfmadd231ps ymm3,ymm5,ymm9
  6cba40:	c5 ac 59 ef          	vmulps ymm5,ymm10,ymm7
  6cba44:	c4 c2 5d b8 eb       	vfmadd231ps ymm5,ymm4,ymm11
  6cba49:	c5 e4 58 e5          	vaddps ymm4,ymm3,ymm5
  6cba4d:	c4 e2 7d 18 3d 0a 9a 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff9a9a0a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6cba54:	9a ff 
  6cba56:	c5 7c 28 c7          	vmovaps ymm8,ymm7
  6cba5a:	c4 62 1d ac c0       	vfnmadd213ps ymm8,ymm12,ymm0
  6cba5f:	c4 e2 5d ac fe       	vfnmadd213ps ymm7,ymm4,ymm6
  6cba64:	c5 98 58 c0          	vaddps xmm0,xmm12,xmm0
  6cba68:	c5 d8 58 e6          	vaddps xmm4,xmm4,xmm6
  6cba6c:	c5 d8 14 c0          	vunpcklps xmm0,xmm4,xmm0
  6cba70:	c5 e0 5c dd          	vsubps xmm3,xmm3,xmm5
  6cba74:	c4 e2 79 18 25 57 98 	vbroadcastss xmm4,DWORD PTR [rip+0xffffffffff9a9857]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6cba7b:	9a ff 
  6cba7d:	c5 e0 59 dc          	vmulps xmm3,xmm3,xmm4
  6cba81:	c5 b8 58 eb          	vaddps xmm5,xmm8,xmm3
  6cba85:	c5 f0 5c ca          	vsubps xmm1,xmm1,xmm2
  6cba89:	c5 f0 59 cc          	vmulps xmm1,xmm1,xmm4
  6cba8d:	c5 c0 5c d1          	vsubps xmm2,xmm7,xmm1
  6cba91:	c5 e8 14 d5          	vunpcklps xmm2,xmm2,xmm5
  6cba95:	c4 e3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm2,0x1
  6cba9b:	c5 fc 11 06          	vmovups YMMWORD PTR [rsi],ymm0
  6cba9f:	c5 b8 5c c3          	vsubps xmm0,xmm8,xmm3
  6cbaa3:	c5 c0 58 c9          	vaddps xmm1,xmm7,xmm1
  6cbaa7:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  6cbaab:	c5 f8 11 46 20       	vmovups XMMWORD PTR [rsi+0x20],xmm0
  6cbab0:	c5 f8 77             	vzeroupper
  6cbab3:	c3                   	ret
