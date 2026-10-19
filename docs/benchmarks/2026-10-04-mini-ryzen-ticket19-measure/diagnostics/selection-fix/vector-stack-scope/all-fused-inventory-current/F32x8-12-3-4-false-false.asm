
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006ea5c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6ea5c0:	55                   	push   rbp
  6ea5c1:	48 89 e5             	mov    rbp,rsp
  6ea5c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6ea5c8:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  6ea5cf:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  6ea5d4:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  6ea5d9:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  6ea5de:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  6ea5e3:	c5 f8 10 1f          	vmovups xmm3,XMMWORD PTR [rdi]
  6ea5e7:	c5 f8 10 67 10       	vmovups xmm4,XMMWORD PTR [rdi+0x10]
  6ea5ec:	c5 f8 10 6f 20       	vmovups xmm5,XMMWORD PTR [rdi+0x20]
  6ea5f1:	c5 f8 10 7f 30       	vmovups xmm7,XMMWORD PTR [rdi+0x30]
  6ea5f6:	c5 e0 c6 c4 88       	vshufps xmm0,xmm3,xmm4,0x88
  6ea5fb:	c5 d0 c6 cf 88       	vshufps xmm1,xmm5,xmm7,0x88
  6ea600:	c5 78 10 47 50       	vmovups xmm8,XMMWORD PTR [rdi+0x50]
  6ea605:	c5 78 10 4f 40       	vmovups xmm9,XMMWORD PTR [rdi+0x40]
  6ea60a:	c4 c1 30 c6 d0 88    	vshufps xmm2,xmm9,xmm8,0x88
  6ea610:	c5 e0 c6 f4 dd       	vshufps xmm6,xmm3,xmm4,0xdd
  6ea615:	c5 d0 c6 df dd       	vshufps xmm3,xmm5,xmm7,0xdd
  6ea61a:	c4 c1 30 c6 e8 dd    	vshufps xmm5,xmm9,xmm8,0xdd
  6ea620:	c5 f4 58 e2          	vaddps ymm4,ymm1,ymm2
  6ea624:	c4 e2 7d 18 3d 33 ae 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff98ae33]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6ea62b:	98 ff 
  6ea62d:	c5 64 58 c5          	vaddps ymm8,ymm3,ymm5
  6ea631:	c5 38 58 ce          	vaddps xmm9,xmm8,xmm6
  6ea635:	c4 e2 3d bc f7       	vfnmadd231ps ymm6,ymm8,ymm7
  6ea63a:	c4 e2 5d ac f8       	vfnmadd213ps ymm7,ymm4,ymm0
  6ea63f:	c4 62 7d 18 05 8c ac 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff98ac8c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6ea646:	98 ff 
  6ea648:	c5 e4 5c dd          	vsubps ymm3,ymm3,ymm5
  6ea64c:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  6ea650:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  6ea654:	c5 bc 59 e9          	vmulps ymm5,ymm8,ymm1
  6ea658:	c5 d8 58 c0          	vaddps xmm0,xmm4,xmm0
  6ea65c:	c5 c0 58 cb          	vaddps xmm1,xmm7,xmm3
  6ea660:	c5 c0 5c d3          	vsubps xmm2,xmm7,xmm3
  6ea664:	c5 fd 15 da          	vunpckhpd ymm3,ymm0,ymm2
  6ea668:	c5 fd 14 d2          	vunpcklpd ymm2,ymm0,ymm2
  6ea66c:	c5 c0 57 ff          	vxorps xmm7,xmm7,xmm7
  6ea670:	c4 e3 75 0c e7 cc    	vblendps ymm4,ymm1,ymm7,0xcc
  6ea676:	c5 f5 73 d9 08       	vpsrldq ymm1,ymm1,0x8
  6ea67b:	c5 ec c6 c4 88       	vshufps ymm0,ymm2,ymm4,0x88
  6ea680:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  6ea685:	c5 ec c6 d4 dd       	vshufps ymm2,ymm2,ymm4,0xdd
  6ea68a:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6ea68f:	c5 e4 c6 e1 88       	vshufps ymm4,ymm3,ymm1,0x88
  6ea694:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  6ea699:	c5 e4 c6 c9 dd       	vshufps ymm1,ymm3,ymm1,0xdd
  6ea69e:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6ea6a3:	c5 c8 5c dd          	vsubps xmm3,xmm6,xmm5
  6ea6a7:	c5 d0 58 ee          	vaddps xmm5,xmm5,xmm6
  6ea6ab:	c5 b5 15 f5          	vunpckhpd ymm6,ymm9,ymm5
  6ea6af:	c5 b5 14 ed          	vunpcklpd ymm5,ymm9,ymm5
  6ea6b3:	c4 e3 65 0c ff cc    	vblendps ymm7,ymm3,ymm7,0xcc
  6ea6b9:	c5 bd 73 db 08       	vpsrldq ymm8,ymm3,0x8
  6ea6be:	c5 d4 c6 df 88       	vshufps ymm3,ymm5,ymm7,0x88
  6ea6c3:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6ea6c8:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  6ea6cd:	c5 d4 c6 fd d8       	vshufps ymm7,ymm5,ymm5,0xd8
  6ea6d2:	c4 c1 4c c6 e8 88    	vshufps ymm5,ymm6,ymm8,0x88
  6ea6d8:	c5 54 c6 cd d8       	vshufps ymm9,ymm5,ymm5,0xd8
  6ea6dd:	c4 c1 4c c6 e8 dd    	vshufps ymm5,ymm6,ymm8,0xdd
  6ea6e3:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  6ea6e8:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  6ea6ef:	00 
  6ea6f0:	c5 7c 10 92 a0 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0xa0]
  6ea6f7:	00 
  6ea6f8:	c5 bc 59 f4          	vmulps ymm6,ymm8,ymm4
  6ea6fc:	c4 c2 35 bc f2       	vfnmadd231ps ymm6,ymm9,ymm10
  6ea701:	c4 41 3c 59 c1       	vmulps ymm8,ymm8,ymm9
  6ea706:	c5 7c 10 4a 40       	vmovups ymm9,YMMWORD PTR [rdx+0x40]
  6ea70b:	c4 42 5d b8 c2       	vfmadd231ps ymm8,ymm4,ymm10
  6ea710:	c5 fc 10 62 60       	vmovups ymm4,YMMWORD PTR [rdx+0x60]
  6ea715:	c5 34 59 d2          	vmulps ymm10,ymm9,ymm2
  6ea719:	c4 62 45 bc d4       	vfnmadd231ps ymm10,ymm7,ymm4
  6ea71e:	c5 b4 59 ff          	vmulps ymm7,ymm9,ymm7
  6ea722:	c5 7c 10 8a c0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xc0]
  6ea729:	00 
  6ea72a:	c4 e2 6d b8 fc       	vfmadd231ps ymm7,ymm2,ymm4
  6ea72f:	c5 fc 10 92 e0 00 00 	vmovups ymm2,YMMWORD PTR [rdx+0xe0]
  6ea736:	00 
  6ea737:	c5 b4 59 e1          	vmulps ymm4,ymm9,ymm1
  6ea73b:	c4 e2 55 bc e2       	vfnmadd231ps ymm4,ymm5,ymm2
  6ea740:	c5 b4 59 ed          	vmulps ymm5,ymm9,ymm5
  6ea744:	c5 4c 58 c8          	vaddps ymm9,ymm6,ymm0
  6ea748:	c4 e2 75 b8 ea       	vfmadd231ps ymm5,ymm1,ymm2
  6ea74d:	c5 ac 58 cc          	vaddps ymm1,ymm10,ymm4
  6ea751:	c5 bc 58 d3          	vaddps ymm2,ymm8,ymm3
  6ea755:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  6ea759:	c5 c4 58 f5          	vaddps ymm6,ymm7,ymm5
  6ea75d:	c5 c4 5c ed          	vsubps ymm5,ymm7,ymm5
  6ea761:	c4 c1 64 5c d8       	vsubps ymm3,ymm3,ymm8
  6ea766:	c4 c1 5c 5c e2       	vsubps ymm4,ymm4,ymm10
  6ea76b:	c5 e8 58 fe          	vaddps xmm7,xmm2,xmm6
  6ea76f:	c5 30 58 c1          	vaddps xmm8,xmm9,xmm1
  6ea773:	c5 38 14 d7          	vunpcklps xmm10,xmm8,xmm7
  6ea777:	c5 b8 15 ff          	vunpckhps xmm7,xmm8,xmm7
  6ea77b:	c5 f8 13 7e 10       	vmovlps QWORD PTR [rsi+0x10],xmm7
  6ea780:	c5 78 11 16          	vmovups XMMWORD PTR [rsi],xmm10
  6ea784:	c5 e0 58 fc          	vaddps xmm7,xmm3,xmm4
  6ea788:	c5 78 58 c5          	vaddps xmm8,xmm0,xmm5
  6ea78c:	c5 38 15 d7          	vunpckhps xmm10,xmm8,xmm7
  6ea790:	c5 b8 14 ff          	vunpcklps xmm7,xmm8,xmm7
  6ea794:	c5 f8 11 7e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm7
  6ea799:	c5 78 13 56 28       	vmovlps QWORD PTR [rsi+0x28],xmm10
  6ea79e:	c5 e8 5c d6          	vsubps xmm2,xmm2,xmm6
  6ea7a2:	c5 b0 5c c9          	vsubps xmm1,xmm9,xmm1
  6ea7a6:	c5 f0 15 f2          	vunpckhps xmm6,xmm1,xmm2
  6ea7aa:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  6ea7ae:	c5 f8 11 4e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm1
  6ea7b3:	c5 f8 13 76 40       	vmovlps QWORD PTR [rsi+0x40],xmm6
  6ea7b8:	c5 e0 5c cc          	vsubps xmm1,xmm3,xmm4
  6ea7bc:	c5 f8 5c c5          	vsubps xmm0,xmm0,xmm5
  6ea7c0:	c5 f8 15 d1          	vunpckhps xmm2,xmm0,xmm1
  6ea7c4:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  6ea7c8:	c5 f8 11 46 48       	vmovups XMMWORD PTR [rsi+0x48],xmm0
  6ea7cd:	c5 f8 13 56 58       	vmovlps QWORD PTR [rsi+0x58],xmm2
  6ea7d2:	48 89 ec             	mov    rsp,rbp
  6ea7d5:	5d                   	pop    rbp
  6ea7d6:	c5 f8 77             	vzeroupper
  6ea7d9:	c3                   	ret
