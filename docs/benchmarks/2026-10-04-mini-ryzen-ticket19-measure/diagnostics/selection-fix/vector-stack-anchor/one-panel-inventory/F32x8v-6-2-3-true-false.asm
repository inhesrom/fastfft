
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ab8980 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ab8980:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  ab8985:	c4 e3 7d 18 c8 01    	vinsertf128 ymm1,ymm0,xmm0,0x1
  ab898b:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  ab898f:	c4 e3 75 0c c8 c0    	vblendps ymm1,ymm1,ymm0,0xc0
  ab8995:	c5 f8 10 17          	vmovups xmm2,XMMWORD PTR [rdi]
  ab8999:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  ab899e:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  ab89a4:	c5 e8 c6 e1 88       	vshufps xmm4,xmm2,xmm1,0x88
  ab89a9:	c5 fb 10 6f 28       	vmovsd xmm5,QWORD PTR [rdi+0x28]
  ab89ae:	c4 e3 7d 18 ed 01    	vinsertf128 ymm5,ymm0,xmm5,0x1
  ab89b4:	c4 e3 55 0c e8 c0    	vblendps ymm5,ymm5,ymm0,0xc0
  ab89ba:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  ab89c0:	c5 e0 c6 f5 88       	vshufps xmm6,xmm3,xmm5,0x88
  ab89c5:	c5 e8 c6 c9 dd       	vshufps xmm1,xmm2,xmm1,0xdd
  ab89ca:	c5 e0 c6 d5 dd       	vshufps xmm2,xmm3,xmm5,0xdd
  ab89cf:	c5 f0 58 da          	vaddps xmm3,xmm1,xmm2
  ab89d3:	c5 f0 5c ca          	vsubps xmm1,xmm1,xmm2
  ab89d7:	c4 e3 65 0c d0 cc    	vblendps ymm2,ymm3,ymm0,0xcc
  ab89dd:	c5 e5 73 db 08       	vpsrldq ymm3,ymm3,0x8
  ab89e2:	c4 e3 75 0c e8 cc    	vblendps ymm5,ymm1,ymm0,0xcc
  ab89e8:	c5 f5 73 d9 08       	vpsrldq ymm1,ymm1,0x8
  ab89ed:	c5 e4 c6 c9 88       	vshufps ymm1,ymm3,ymm1,0x88
  ab89f2:	c5 ec c6 dd 88       	vshufps ymm3,ymm2,ymm5,0x88
  ab89f7:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  ab89fc:	c5 ec c6 d5 dd       	vshufps ymm2,ymm2,ymm5,0xdd
  ab8a01:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  ab8a06:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  ab8a0b:	c5 d8 58 ee          	vaddps xmm5,xmm4,xmm6
  ab8a0f:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  ab8a13:	c4 e3 55 0c f0 cc    	vblendps ymm6,ymm5,ymm0,0xcc
  ab8a19:	c5 d5 73 dd 08       	vpsrldq ymm5,ymm5,0x8
  ab8a1e:	c4 e3 5d 0c c0 cc    	vblendps ymm0,ymm4,ymm0,0xcc
  ab8a24:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  ab8a29:	c5 d4 c6 e4 88       	vshufps ymm4,ymm5,ymm4,0x88
  ab8a2e:	c5 cc c6 e8 88       	vshufps ymm5,ymm6,ymm0,0x88
  ab8a33:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ab8a38:	c5 cc c6 c0 dd       	vshufps ymm0,ymm6,ymm0,0xdd
  ab8a3d:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  ab8a42:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ab8a47:	c5 fc 10 72 40       	vmovups ymm6,YMMWORD PTR [rdx+0x40]
  ab8a4c:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  ab8a51:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  ab8a58:	00 
  ab8a59:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  ab8a60:	00 
  ab8a61:	c5 6c 59 d6          	vmulps ymm10,ymm2,ymm6
  ab8a65:	c4 62 7d bc d7       	vfnmadd231ps ymm10,ymm0,ymm7
  ab8a6a:	c5 3c 59 d9          	vmulps ymm11,ymm8,ymm1
  ab8a6e:	c4 42 5d bc d9       	vfnmadd231ps ymm11,ymm4,ymm9
  ab8a73:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  ab8a78:	c5 fc 59 c6          	vmulps ymm0,ymm0,ymm6
  ab8a7c:	c4 e2 6d b8 c7       	vfmadd231ps ymm0,ymm2,ymm7
  ab8a81:	c5 bc 59 d4          	vmulps ymm2,ymm8,ymm4
  ab8a85:	c4 c2 75 b8 d1       	vfmadd231ps ymm2,ymm1,ymm9
  ab8a8a:	c5 fc 58 ca          	vaddps ymm1,ymm0,ymm2
  ab8a8e:	c4 e2 7d 18 25 c9 c9 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff5bc9c9]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ab8a95:	5b ff 
  ab8a97:	c5 fc 28 f4          	vmovaps ymm6,ymm4
  ab8a9b:	c4 e2 1d ac f3       	vfnmadd213ps ymm6,ymm12,ymm3
  ab8aa0:	c4 e2 75 ac e5       	vfnmadd213ps ymm4,ymm1,ymm5
  ab8aa5:	c5 98 58 db          	vaddps xmm3,xmm12,xmm3
  ab8aa9:	c5 d0 58 c9          	vaddps xmm1,xmm5,xmm1
  ab8aad:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  ab8ab1:	c5 f8 11 0e          	vmovups XMMWORD PTR [rsi],xmm1
  ab8ab5:	c4 e2 79 18 0d 16 c8 	vbroadcastss xmm1,DWORD PTR [rip+0xffffffffff5bc816]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ab8abc:	5b ff 
  ab8abe:	c5 f8 5c c2          	vsubps xmm0,xmm0,xmm2
  ab8ac2:	c5 f8 59 c1          	vmulps xmm0,xmm0,xmm1
  ab8ac6:	c5 c8 58 d0          	vaddps xmm2,xmm6,xmm0
  ab8aca:	c4 c1 28 5c db       	vsubps xmm3,xmm10,xmm11
  ab8acf:	c5 e0 59 c9          	vmulps xmm1,xmm3,xmm1
  ab8ad3:	c5 d8 5c d9          	vsubps xmm3,xmm4,xmm1
  ab8ad7:	c5 e0 14 d2          	vunpcklps xmm2,xmm3,xmm2
  ab8adb:	c5 f8 11 56 10       	vmovups XMMWORD PTR [rsi+0x10],xmm2
  ab8ae0:	c5 c8 5c c0          	vsubps xmm0,xmm6,xmm0
  ab8ae4:	c5 d8 58 c9          	vaddps xmm1,xmm4,xmm1
  ab8ae8:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  ab8aec:	c5 f8 11 46 20       	vmovups XMMWORD PTR [rsi+0x20],xmm0
  ab8af1:	c5 f8 77             	vzeroupper
  ab8af4:	c3                   	ret
