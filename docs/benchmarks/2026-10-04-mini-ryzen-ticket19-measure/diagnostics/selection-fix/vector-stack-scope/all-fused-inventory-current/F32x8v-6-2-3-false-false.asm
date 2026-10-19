
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ac3440 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ac3440:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  ac3445:	c4 e3 7d 18 c8 01    	vinsertf128 ymm1,ymm0,xmm0,0x1
  ac344b:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  ac344f:	c4 e3 75 0c c8 c0    	vblendps ymm1,ymm1,ymm0,0xc0
  ac3455:	c5 f8 10 17          	vmovups xmm2,XMMWORD PTR [rdi]
  ac3459:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  ac345e:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  ac3464:	c5 e8 c6 e1 dd       	vshufps xmm4,xmm2,xmm1,0xdd
  ac3469:	c5 fb 10 6f 28       	vmovsd xmm5,QWORD PTR [rdi+0x28]
  ac346e:	c4 e3 7d 18 ed 01    	vinsertf128 ymm5,ymm0,xmm5,0x1
  ac3474:	c4 e3 55 0c e8 c0    	vblendps ymm5,ymm5,ymm0,0xc0
  ac347a:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  ac3480:	c5 e0 c6 f5 dd       	vshufps xmm6,xmm3,xmm5,0xdd
  ac3485:	c5 e8 c6 c9 88       	vshufps xmm1,xmm2,xmm1,0x88
  ac348a:	c5 e0 c6 d5 88       	vshufps xmm2,xmm3,xmm5,0x88
  ac348f:	c5 f0 58 da          	vaddps xmm3,xmm1,xmm2
  ac3493:	c5 f0 5c ca          	vsubps xmm1,xmm1,xmm2
  ac3497:	c4 e3 65 0c d0 cc    	vblendps ymm2,ymm3,ymm0,0xcc
  ac349d:	c5 e5 73 db 08       	vpsrldq ymm3,ymm3,0x8
  ac34a2:	c4 e3 75 0c e8 cc    	vblendps ymm5,ymm1,ymm0,0xcc
  ac34a8:	c5 f5 73 d9 08       	vpsrldq ymm1,ymm1,0x8
  ac34ad:	c5 e4 c6 c9 88       	vshufps ymm1,ymm3,ymm1,0x88
  ac34b2:	c5 ec c6 dd 88       	vshufps ymm3,ymm2,ymm5,0x88
  ac34b7:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  ac34bc:	c5 ec c6 d5 dd       	vshufps ymm2,ymm2,ymm5,0xdd
  ac34c1:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  ac34c6:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  ac34cb:	c5 d8 58 ee          	vaddps xmm5,xmm4,xmm6
  ac34cf:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  ac34d3:	c4 e3 55 0c f0 cc    	vblendps ymm6,ymm5,ymm0,0xcc
  ac34d9:	c5 d5 73 dd 08       	vpsrldq ymm5,ymm5,0x8
  ac34de:	c4 e3 5d 0c c0 cc    	vblendps ymm0,ymm4,ymm0,0xcc
  ac34e4:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  ac34e9:	c5 d4 c6 e4 88       	vshufps ymm4,ymm5,ymm4,0x88
  ac34ee:	c5 cc c6 e8 88       	vshufps ymm5,ymm6,ymm0,0x88
  ac34f3:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ac34f8:	c5 cc c6 c0 dd       	vshufps ymm0,ymm6,ymm0,0xdd
  ac34fd:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  ac3502:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ac3507:	c5 fc 10 72 40       	vmovups ymm6,YMMWORD PTR [rdx+0x40]
  ac350c:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  ac3511:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  ac3518:	00 
  ac3519:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  ac3520:	00 
  ac3521:	c5 6c 59 d6          	vmulps ymm10,ymm2,ymm6
  ac3525:	c4 62 7d bc d7       	vfnmadd231ps ymm10,ymm0,ymm7
  ac352a:	c5 3c 59 d9          	vmulps ymm11,ymm8,ymm1
  ac352e:	c4 42 5d bc d9       	vfnmadd231ps ymm11,ymm4,ymm9
  ac3533:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  ac3538:	c5 fc 59 c6          	vmulps ymm0,ymm0,ymm6
  ac353c:	c4 e2 6d b8 c7       	vfmadd231ps ymm0,ymm2,ymm7
  ac3541:	c5 bc 59 d4          	vmulps ymm2,ymm8,ymm4
  ac3545:	c4 c2 75 b8 d1       	vfmadd231ps ymm2,ymm1,ymm9
  ac354a:	c5 fc 58 ca          	vaddps ymm1,ymm0,ymm2
  ac354e:	c4 e2 7d 18 25 09 1f 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff5b1f09]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ac3555:	5b ff 
  ac3557:	c5 fc 28 f4          	vmovaps ymm6,ymm4
  ac355b:	c4 e2 1d ac f3       	vfnmadd213ps ymm6,ymm12,ymm3
  ac3560:	c4 e2 75 ac e5       	vfnmadd213ps ymm4,ymm1,ymm5
  ac3565:	c5 d0 58 c9          	vaddps xmm1,xmm5,xmm1
  ac3569:	c5 98 58 db          	vaddps xmm3,xmm12,xmm3
  ac356d:	c5 e0 14 c9          	vunpcklps xmm1,xmm3,xmm1
  ac3571:	c5 f8 11 0e          	vmovups XMMWORD PTR [rsi],xmm1
  ac3575:	c4 e2 79 18 0d 56 1d 	vbroadcastss xmm1,DWORD PTR [rip+0xffffffffff5b1d56]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ac357c:	5b ff 
  ac357e:	c4 c1 28 5c db       	vsubps xmm3,xmm10,xmm11
  ac3583:	c5 e0 59 d9          	vmulps xmm3,xmm3,xmm1
  ac3587:	c5 d8 5c eb          	vsubps xmm5,xmm4,xmm3
  ac358b:	c5 f8 5c c2          	vsubps xmm0,xmm0,xmm2
  ac358f:	c5 f8 59 c1          	vmulps xmm0,xmm0,xmm1
  ac3593:	c5 c8 58 c8          	vaddps xmm1,xmm6,xmm0
  ac3597:	c5 f0 14 cd          	vunpcklps xmm1,xmm1,xmm5
  ac359b:	c5 f8 11 4e 10       	vmovups XMMWORD PTR [rsi+0x10],xmm1
  ac35a0:	c5 d8 58 cb          	vaddps xmm1,xmm4,xmm3
  ac35a4:	c5 c8 5c c0          	vsubps xmm0,xmm6,xmm0
  ac35a8:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  ac35ac:	c5 f8 11 46 20       	vmovups XMMWORD PTR [rsi+0x20],xmm0
  ac35b1:	c5 f8 77             	vzeroupper
  ac35b4:	c3                   	ret
