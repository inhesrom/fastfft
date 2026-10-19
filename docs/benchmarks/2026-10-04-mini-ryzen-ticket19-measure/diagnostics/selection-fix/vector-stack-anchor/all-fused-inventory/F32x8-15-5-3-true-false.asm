
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000070b580 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  70b580:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  70b585:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  70b58b:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  70b58f:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  70b595:	c5 fb 10 57 28       	vmovsd xmm2,QWORD PTR [rdi+0x28]
  70b59a:	c4 e3 7d 18 d2 01    	vinsertf128 ymm2,ymm0,xmm2,0x1
  70b5a0:	c4 e3 6d 0c d1 c0    	vblendps ymm2,ymm2,ymm1,0xc0
  70b5a6:	c5 fb 10 5f 40       	vmovsd xmm3,QWORD PTR [rdi+0x40]
  70b5ab:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  70b5b1:	c4 e3 65 0c e1 c0    	vblendps ymm4,ymm3,ymm1,0xc0
  70b5b7:	c5 78 10 1f          	vmovups xmm11,XMMWORD PTR [rdi]
  70b5bb:	c5 f8 10 7f 18       	vmovups xmm7,XMMWORD PTR [rdi+0x18]
  70b5c0:	c5 78 10 4f 30       	vmovups xmm9,XMMWORD PTR [rdi+0x30]
  70b5c5:	c5 78 10 67 48       	vmovups xmm12,XMMWORD PTR [rdi+0x48]
  70b5ca:	c5 fb 10 5f 58       	vmovsd xmm3,QWORD PTR [rdi+0x58]
  70b5cf:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  70b5d5:	c4 e3 65 0c e9 c0    	vblendps ymm5,ymm3,ymm1,0xc0
  70b5db:	c5 78 10 47 60       	vmovups xmm8,XMMWORD PTR [rdi+0x60]
  70b5e0:	c5 fb 10 5f 70       	vmovsd xmm3,QWORD PTR [rdi+0x70]
  70b5e5:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  70b5eb:	c4 e3 65 0c c9 c0    	vblendps ymm1,ymm3,ymm1,0xc0
  70b5f1:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  70b5f7:	c5 20 c6 d0 dd       	vshufps xmm10,xmm11,xmm0,0xdd
  70b5fc:	c4 c3 7d 19 d5 01    	vextractf128 xmm13,ymm2,0x1
  70b602:	c4 c1 40 c6 d5 dd    	vshufps xmm2,xmm7,xmm13,0xdd
  70b608:	c5 fc 11 54 24 b8    	vmovups YMMWORD PTR [rsp-0x48],ymm2
  70b60e:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  70b614:	c5 b8 c6 d9 dd       	vshufps xmm3,xmm8,xmm1,0xdd
  70b619:	c5 fc 11 5c 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm3
  70b61f:	c4 c3 7d 19 e6 01    	vextractf128 xmm14,ymm4,0x1
  70b625:	c4 c1 30 c6 e6 dd    	vshufps xmm4,xmm9,xmm14,0xdd
  70b62b:	c4 c3 7d 19 ef 01    	vextractf128 xmm15,ymm5,0x1
  70b631:	c4 c1 18 c6 ef dd    	vshufps xmm5,xmm12,xmm15,0xdd
  70b637:	c5 20 c6 d8 88       	vshufps xmm11,xmm11,xmm0,0x88
  70b63c:	c4 c1 40 c6 fd 88    	vshufps xmm7,xmm7,xmm13,0x88
  70b642:	c5 38 c6 c1 88       	vshufps xmm8,xmm8,xmm1,0x88
  70b647:	c4 41 30 c6 ce 88    	vshufps xmm9,xmm9,xmm14,0x88
  70b64d:	c4 41 18 c6 e7 88    	vshufps xmm12,xmm12,xmm15,0x88
  70b653:	c5 ec 58 db          	vaddps ymm3,ymm2,ymm3
  70b657:	c5 2c 58 eb          	vaddps ymm13,ymm10,ymm3
  70b65b:	c5 5c 58 f5          	vaddps ymm14,ymm4,ymm5
  70b65f:	c4 62 7d 18 3d 80 a0 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff96a080]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  70b666:	96 ff 
  70b668:	c5 7c 29 fe          	vmovaps ymm6,ymm15
  70b66c:	c4 c2 65 a8 f2       	vfmadd213ps ymm6,ymm3,ymm10
  70b671:	c4 e2 7d 18 15 ca 9f 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff969fca]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  70b678:	96 ff 
  70b67a:	c4 c2 6d ac da       	vfnmadd213ps ymm3,ymm2,ymm10
  70b67f:	c5 bc 58 c7          	vaddps ymm0,ymm8,ymm7
  70b683:	c4 e2 0d bc f2       	vfnmadd231ps ymm6,ymm14,ymm2
  70b688:	c4 41 7c 28 d7       	vmovaps ymm10,ymm15
  70b68d:	c4 42 7d a8 d3       	vfmadd213ps ymm10,ymm0,ymm11
  70b692:	c4 c1 34 58 cc       	vaddps ymm1,ymm9,ymm12
  70b697:	c4 62 75 bc d2       	vfnmadd231ps ymm10,ymm1,ymm2
  70b69c:	c4 c2 7d ac d3       	vfnmadd213ps ymm2,ymm0,ymm11
  70b6a1:	c5 a4 58 c0          	vaddps ymm0,ymm11,ymm0
  70b6a5:	c4 41 14 58 ee       	vaddps ymm13,ymm13,ymm14
  70b6aa:	c4 c2 05 b8 de       	vfmadd231ps ymm3,ymm15,ymm14
  70b6af:	c4 c2 75 b8 d7       	vfmadd231ps ymm2,ymm1,ymm15
  70b6b4:	c5 7c 58 d9          	vaddps ymm11,ymm0,ymm1
  70b6b8:	c4 c1 44 5c c0       	vsubps ymm0,ymm7,ymm8
  70b6bd:	c4 c1 34 5c cc       	vsubps ymm1,ymm9,ymm12
  70b6c2:	c4 e2 7d 18 3d 8d a0 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff96a08d]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  70b6c9:	96 ff 
  70b6cb:	c5 7c 10 44 24 b8    	vmovups ymm8,YMMWORD PTR [rsp-0x48]
  70b6d1:	c5 3c 5c 44 24 d8    	vsubps ymm8,ymm8,YMMWORD PTR [rsp-0x28]
  70b6d7:	c4 62 7d 18 0d c0 9c 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff969cc0]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  70b6de:	96 ff 
  70b6e0:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  70b6e4:	c5 f4 59 ef          	vmulps ymm5,ymm1,ymm7
  70b6e8:	c4 c2 7d b8 e9       	vfmadd231ps ymm5,ymm0,ymm9
  70b6ed:	c5 fc 59 c7          	vmulps ymm0,ymm0,ymm7
  70b6f1:	c4 e2 35 bc c1       	vfnmadd231ps ymm0,ymm9,ymm1
  70b6f6:	c5 5c 59 e7          	vmulps ymm12,ymm4,ymm7
  70b6fa:	c4 42 3d b8 e1       	vfmadd231ps ymm12,ymm8,ymm9
  70b6ff:	c5 bc 59 ff          	vmulps ymm7,ymm8,ymm7
  70b703:	c4 c2 5d bc f9       	vfnmadd231ps ymm7,ymm4,ymm9
  70b708:	c5 c8 5c cd          	vsubps xmm1,xmm6,xmm5
  70b70c:	c4 e3 15 18 c9 01    	vinsertf128 ymm1,ymm13,xmm1,0x1
  70b712:	c5 c8 58 ed          	vaddps xmm5,xmm6,xmm5
  70b716:	c5 e0 5c f0          	vsubps xmm6,xmm3,xmm0
  70b71a:	c5 e0 58 c0          	vaddps xmm0,xmm3,xmm0
  70b71e:	c5 f4 14 dd          	vunpcklps ymm3,ymm1,ymm5
  70b722:	c5 7d 14 c6          	vunpcklpd ymm8,ymm0,ymm6
  70b726:	c4 c1 64 c6 e0 84    	vshufps ymm4,ymm3,ymm8,0x84
  70b72c:	c4 c1 64 c6 d8 de    	vshufps ymm3,ymm3,ymm8,0xde
  70b732:	c5 d5 15 c9          	vunpckhpd ymm1,ymm5,ymm1
  70b736:	c5 fc 15 c6          	vunpckhps ymm0,ymm0,ymm6
  70b73a:	c5 f4 c6 c8 42       	vshufps ymm1,ymm1,ymm0,0x42
  70b73f:	c4 c1 18 58 c2       	vaddps xmm0,xmm12,xmm10
  70b744:	c4 e3 25 18 e8 01    	vinsertf128 ymm5,ymm11,xmm0,0x1
  70b74a:	c4 c1 28 5c f4       	vsubps xmm6,xmm10,xmm12
  70b74f:	c5 40 58 c2          	vaddps xmm8,xmm7,xmm2
  70b753:	c5 e8 5c d7          	vsubps xmm2,xmm2,xmm7
  70b757:	c5 d4 14 fe          	vunpcklps ymm7,ymm5,ymm6
  70b75b:	c4 41 6d 14 c8       	vunpcklpd ymm9,ymm2,ymm8
  70b760:	c4 c1 44 c6 c1 84    	vshufps ymm0,ymm7,ymm9,0x84
  70b766:	c4 c1 44 c6 f9 de    	vshufps ymm7,ymm7,ymm9,0xde
  70b76c:	c5 cd 15 ed          	vunpckhpd ymm5,ymm6,ymm5
  70b770:	c4 c1 6c 15 d0       	vunpckhps ymm2,ymm2,ymm8
  70b775:	c5 d4 c6 d2 42       	vshufps ymm2,ymm5,ymm2,0x42
  70b77a:	c5 fc 10 6a 40       	vmovups ymm5,YMMWORD PTR [rdx+0x40]
  70b77f:	c5 fc 10 72 60       	vmovups ymm6,YMMWORD PTR [rdx+0x60]
  70b784:	c5 54 59 c3          	vmulps ymm8,ymm5,ymm3
  70b788:	c4 62 45 bc c6       	vfnmadd231ps ymm8,ymm7,ymm6
  70b78d:	c5 d4 59 ef          	vmulps ymm5,ymm5,ymm7
  70b791:	c5 fc 10 ba 80 00 00 	vmovups ymm7,YMMWORD PTR [rdx+0x80]
  70b798:	00 
  70b799:	c4 e2 65 b8 ee       	vfmadd231ps ymm5,ymm3,ymm6
  70b79e:	c5 fc 10 9a a0 00 00 	vmovups ymm3,YMMWORD PTR [rdx+0xa0]
  70b7a5:	00 
  70b7a6:	c5 c4 59 f1          	vmulps ymm6,ymm7,ymm1
  70b7aa:	c4 e2 6d bc f3       	vfnmadd231ps ymm6,ymm2,ymm3
  70b7af:	c5 c4 59 d2          	vmulps ymm2,ymm7,ymm2
  70b7b3:	c5 bc 58 fe          	vaddps ymm7,ymm8,ymm6
  70b7b7:	c4 e2 75 b8 d3       	vfmadd231ps ymm2,ymm1,ymm3
  70b7bc:	c5 d4 58 ca          	vaddps ymm1,ymm5,ymm2
  70b7c0:	c4 e2 7d 18 1d 97 9c 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff969c97]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  70b7c7:	96 ff 
  70b7c9:	c5 d4 5c d2          	vsubps ymm2,ymm5,ymm2
  70b7cd:	c5 fc 28 eb          	vmovaps ymm5,ymm3
  70b7d1:	c4 e2 45 ac ec       	vfnmadd213ps ymm5,ymm7,ymm4
  70b7d6:	c5 bc 5c f6          	vsubps ymm6,ymm8,ymm6
  70b7da:	c4 62 7d 18 05 f1 9a 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff969af1]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  70b7e1:	96 ff 
  70b7e3:	c5 bc 59 d2          	vmulps ymm2,ymm8,ymm2
  70b7e7:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  70b7eb:	c5 54 58 c2          	vaddps ymm8,ymm5,ymm2
  70b7ef:	c4 e2 75 ac d8       	vfnmadd213ps ymm3,ymm1,ymm0
  70b7f4:	c5 d4 5c d2          	vsubps ymm2,ymm5,ymm2
  70b7f8:	c5 e4 5c ee          	vsubps ymm5,ymm3,ymm6
  70b7fc:	c5 e4 58 de          	vaddps ymm3,ymm3,ymm6
  70b800:	c5 f4 58 c0          	vaddps ymm0,ymm1,ymm0
  70b804:	c5 c4 58 cc          	vaddps ymm1,ymm7,ymm4
  70b808:	c5 fc 14 e1          	vunpcklps ymm4,ymm0,ymm1
  70b80c:	c5 f8 14 f1          	vunpcklps xmm6,xmm0,xmm1
  70b810:	c5 f8 15 c1          	vunpckhps xmm0,xmm0,xmm1
  70b814:	c5 f8 11 46 10       	vmovups XMMWORD PTR [rsi+0x10],xmm0
  70b819:	c5 f8 11 36          	vmovups XMMWORD PTR [rsi],xmm6
  70b81d:	c4 e3 7d 19 e0 01    	vextractf128 xmm0,ymm4,0x1
  70b823:	c5 f8 13 46 20       	vmovlps QWORD PTR [rsi+0x20],xmm0
  70b828:	c4 c1 54 14 c0       	vunpcklps ymm0,ymm5,ymm8
  70b82d:	c4 c1 50 14 c8       	vunpcklps xmm1,xmm5,xmm8
  70b832:	c4 c1 50 15 e0       	vunpckhps xmm4,xmm5,xmm8
  70b837:	c5 f8 11 66 38       	vmovups XMMWORD PTR [rsi+0x38],xmm4
  70b83c:	c5 f8 11 4e 28       	vmovups XMMWORD PTR [rsi+0x28],xmm1
  70b841:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  70b847:	c5 f8 13 46 48       	vmovlps QWORD PTR [rsi+0x48],xmm0
  70b84c:	c5 e4 14 c2          	vunpcklps ymm0,ymm3,ymm2
  70b850:	c5 e0 14 ca          	vunpcklps xmm1,xmm3,xmm2
  70b854:	c5 e0 15 d2          	vunpckhps xmm2,xmm3,xmm2
  70b858:	c5 f8 11 56 60       	vmovups XMMWORD PTR [rsi+0x60],xmm2
  70b85d:	c5 f8 11 4e 50       	vmovups XMMWORD PTR [rsi+0x50],xmm1
  70b862:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  70b868:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  70b86d:	c5 f8 77             	vzeroupper
  70b870:	c3                   	ret
