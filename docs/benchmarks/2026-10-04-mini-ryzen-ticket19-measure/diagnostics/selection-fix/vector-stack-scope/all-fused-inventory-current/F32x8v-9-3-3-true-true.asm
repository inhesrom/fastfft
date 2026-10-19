
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b0e5c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b0e5c0:	48 c1 e2 03          	shl    rdx,0x3
  b0e5c4:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  b0e5c8:	31 d2                	xor    edx,edx
  b0e5ca:	c4 e2 7d 18 05 01 6d 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff566d01]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b0e5d1:	56 ff 
  b0e5d3:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  b0e5d7:	c4 e2 7d 18 15 80 6e 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff566e80]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b0e5de:	56 ff 
  b0e5e0:	c5 fc 28 1d d8 9c 56 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff569cd8]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  b0e5e7:	ff 
  b0e5e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  b0e5ef:	00 
  b0e5f0:	c5 fb 10 64 17 28    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x28]
  b0e5f6:	c4 e3 7d 18 e4 01    	vinsertf128 ymm4,ymm0,xmm4,0x1
  b0e5fc:	c4 e3 5d 0c e1 c0    	vblendps ymm4,ymm4,ymm1,0xc0
  b0e602:	c5 f8 10 2c 17       	vmovups xmm5,XMMWORD PTR [rdi+rdx*1]
  b0e607:	c5 f8 10 74 17 18    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x18]
  b0e60d:	c5 f8 10 7c 17 30    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x30]
  b0e613:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  b0e619:	c5 48 c6 c4 dd       	vshufps xmm8,xmm6,xmm4,0xdd
  b0e61e:	c5 7b 10 4c 17 40    	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0x40]
  b0e624:	c4 43 7d 18 c9 01    	vinsertf128 ymm9,ymm0,xmm9,0x1
  b0e62a:	c4 63 35 0c c9 c0    	vblendps ymm9,ymm9,ymm1,0xc0
  b0e630:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  b0e636:	c4 41 40 c6 d1 dd    	vshufps xmm10,xmm7,xmm9,0xdd
  b0e63c:	c4 41 3c 5c da       	vsubps ymm11,ymm8,ymm10
  b0e641:	c5 24 59 d8          	vmulps ymm11,ymm11,ymm0
  b0e645:	c5 c8 c6 e4 88       	vshufps xmm4,xmm6,xmm4,0x88
  b0e64a:	c4 c1 40 c6 f1 88    	vshufps xmm6,xmm7,xmm9,0x88
  b0e650:	c5 dc 58 fe          	vaddps ymm7,ymm4,ymm6
  b0e654:	c5 7b 10 4c 17 10    	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0x10]
  b0e65a:	c4 43 7d 18 c9 01    	vinsertf128 ymm9,ymm0,xmm9,0x1
  b0e660:	c4 63 35 0c c9 c0    	vblendps ymm9,ymm9,ymm1,0xc0
  b0e666:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  b0e66c:	c4 41 50 c6 e1 88    	vshufps xmm12,xmm5,xmm9,0x88
  b0e672:	c5 7c 28 ea          	vmovaps ymm13,ymm2
  b0e676:	c4 42 45 ac ec       	vfnmadd213ps ymm13,ymm7,ymm12
  b0e67b:	c4 41 3c 58 c2       	vaddps ymm8,ymm8,ymm10
  b0e680:	c4 c1 50 c6 e9 dd    	vshufps xmm5,xmm5,xmm9,0xdd
  b0e686:	c5 38 58 cd          	vaddps xmm9,xmm8,xmm5
  b0e68a:	c4 e2 3d bc ea       	vfnmadd231ps ymm5,ymm8,ymm2
  b0e68f:	c5 dc 5c e6          	vsubps ymm4,ymm4,ymm6
  b0e693:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  b0e697:	c5 d0 58 f4          	vaddps xmm6,xmm5,xmm4
  b0e69b:	c5 d0 5c e4          	vsubps xmm4,xmm5,xmm4
  b0e69f:	c5 b5 15 ec          	vunpckhpd ymm5,ymm9,ymm4
  b0e6a3:	c5 b5 14 e4          	vunpcklpd ymm4,ymm9,ymm4
  b0e6a7:	c4 63 4d 0c c1 cc    	vblendps ymm8,ymm6,ymm1,0xcc
  b0e6ad:	c5 cd 73 de 08       	vpsrldq ymm6,ymm6,0x8
  b0e6b2:	c5 d4 c6 ee 88       	vshufps ymm5,ymm5,ymm6,0x88
  b0e6b7:	c4 c1 5c c6 f0 88    	vshufps ymm6,ymm4,ymm8,0x88
  b0e6bd:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  b0e6c2:	c4 c1 5c c6 e0 dd    	vshufps ymm4,ymm4,ymm8,0xdd
  b0e6c8:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b0e6cd:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b0e6d2:	c5 98 58 ff          	vaddps xmm7,xmm12,xmm7
  b0e6d6:	c4 41 10 5c c3       	vsubps xmm8,xmm13,xmm11
  b0e6db:	c4 41 20 58 cd       	vaddps xmm9,xmm11,xmm13
  b0e6e0:	c4 41 45 15 d1       	vunpckhpd ymm10,ymm7,ymm9
  b0e6e5:	c4 c1 45 14 f9       	vunpcklpd ymm7,ymm7,ymm9
  b0e6ea:	c4 63 3d 0c c9 cc    	vblendps ymm9,ymm8,ymm1,0xcc
  b0e6f0:	c4 c1 3d 73 d8 08    	vpsrldq ymm8,ymm8,0x8
  b0e6f6:	c4 41 2c c6 c0 88    	vshufps ymm8,ymm10,ymm8,0x88
  b0e6fc:	c4 41 44 c6 d1 88    	vshufps ymm10,ymm7,ymm9,0x88
  b0e702:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  b0e708:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  b0e70e:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b0e713:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  b0e719:	c5 7c 10 49 40       	vmovups ymm9,YMMWORD PTR [rcx+0x40]
  b0e71e:	c5 7c 10 59 60       	vmovups ymm11,YMMWORD PTR [rcx+0x60]
  b0e723:	c5 7c 10 a1 80 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0x80]
  b0e72a:	00 
  b0e72b:	c5 7c 10 a9 a0 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0xa0]
  b0e732:	00 
  b0e733:	c5 34 59 f4          	vmulps ymm14,ymm9,ymm4
  b0e737:	c4 42 45 bc f3       	vfnmadd231ps ymm14,ymm7,ymm11
  b0e73c:	c5 1c 59 fd          	vmulps ymm15,ymm12,ymm5
  b0e740:	c4 42 3d bc fd       	vfnmadd231ps ymm15,ymm8,ymm13
  b0e745:	62 c1 0c 28 58 c7    	vaddps ymm16,ymm14,ymm15
  b0e74b:	c5 b4 59 ff          	vmulps ymm7,ymm9,ymm7
  b0e74f:	c4 c2 5d b8 fb       	vfmadd231ps ymm7,ymm4,ymm11
  b0e754:	c4 c1 3c 59 e4       	vmulps ymm4,ymm8,ymm12
  b0e759:	c4 c2 55 b8 e5       	vfmadd231ps ymm4,ymm5,ymm13
  b0e75e:	c5 c4 58 ec          	vaddps ymm5,ymm7,ymm4
  b0e762:	c5 7c 28 c2          	vmovaps ymm8,ymm2
  b0e766:	62 72 7d 20 ac c6    	vfnmadd213ps ymm8,ymm16,ymm6
  b0e76c:	c5 c4 5c e4          	vsubps ymm4,ymm7,ymm4
  b0e770:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  b0e774:	c5 bc 58 fc          	vaddps ymm7,ymm8,ymm4
  b0e778:	c5 7c 28 ca          	vmovaps ymm9,ymm2
  b0e77c:	c4 42 55 ac ca       	vfnmadd213ps ymm9,ymm5,ymm10
  b0e781:	c4 41 0c 5c df       	vsubps ymm11,ymm14,ymm15
  b0e786:	c5 24 59 d8          	vmulps ymm11,ymm11,ymm0
  b0e78a:	c5 bc 5c e4          	vsubps ymm4,ymm8,ymm4
  b0e78e:	62 b1 4c 28 58 f0    	vaddps ymm6,ymm6,ymm16
  b0e794:	c5 a8 58 ed          	vaddps xmm5,xmm10,xmm5
  b0e798:	62 f2 65 28 7f ee    	vpermt2ps ymm5,ymm3,ymm6
  b0e79e:	c5 f8 11 2c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm5
  b0e7a3:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b0e7a9:	c5 f8 13 6c 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm5
  b0e7af:	c4 c1 30 5c eb       	vsubps xmm5,xmm9,xmm11
  b0e7b4:	62 f2 65 28 7f ef    	vpermt2ps ymm5,ymm3,ymm7
  b0e7ba:	c5 f8 11 6c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm5
  b0e7c0:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b0e7c6:	c5 f8 13 6c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm5
  b0e7cc:	c4 c1 30 58 eb       	vaddps xmm5,xmm9,xmm11
  b0e7d1:	62 f2 65 28 7f ec    	vpermt2ps ymm5,ymm3,ymm4
  b0e7d7:	c5 f8 11 6c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm5
  b0e7dd:	c4 e3 7d 19 ec 01    	vextractf128 xmm4,ymm5,0x1
  b0e7e3:	c5 f8 13 64 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm4
  b0e7e9:	48 83 c2 48          	add    rdx,0x48
  b0e7ed:	48 39 d0             	cmp    rax,rdx
  b0e7f0:	0f 85 fa fd ff ff    	jne    b0e5f0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b0e7f6:	c5 f8 77             	vzeroupper
  b0e7f9:	c3                   	ret
