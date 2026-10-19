
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b066c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b066c0:	48 c1 e2 03          	shl    rdx,0x3
  b066c4:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  b066c8:	31 d2                	xor    edx,edx
  b066ca:	c4 e2 7d 18 05 01 ec 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff56ec01]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b066d1:	56 ff 
  b066d3:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  b066d7:	c4 e2 7d 18 15 80 ed 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff56ed80]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b066de:	56 ff 
  b066e0:	c5 fc 28 1d d8 1b 57 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff571bd8]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  b066e7:	ff 
  b066e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  b066ef:	00 
  b066f0:	c5 fb 10 64 17 28    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x28]
  b066f6:	c4 e3 7d 18 e4 01    	vinsertf128 ymm4,ymm0,xmm4,0x1
  b066fc:	c4 e3 5d 0c e1 c0    	vblendps ymm4,ymm4,ymm1,0xc0
  b06702:	c5 f8 10 2c 17       	vmovups xmm5,XMMWORD PTR [rdi+rdx*1]
  b06707:	c5 f8 10 74 17 18    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x18]
  b0670d:	c5 f8 10 7c 17 30    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x30]
  b06713:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  b06719:	c5 48 c6 c4 88       	vshufps xmm8,xmm6,xmm4,0x88
  b0671e:	c5 7b 10 4c 17 40    	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0x40]
  b06724:	c4 43 7d 18 c9 01    	vinsertf128 ymm9,ymm0,xmm9,0x1
  b0672a:	c4 63 35 0c c9 c0    	vblendps ymm9,ymm9,ymm1,0xc0
  b06730:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  b06736:	c4 41 40 c6 d1 88    	vshufps xmm10,xmm7,xmm9,0x88
  b0673c:	c4 41 3c 5c da       	vsubps ymm11,ymm8,ymm10
  b06741:	c5 24 59 d8          	vmulps ymm11,ymm11,ymm0
  b06745:	c5 c8 c6 e4 dd       	vshufps xmm4,xmm6,xmm4,0xdd
  b0674a:	c4 c1 40 c6 f1 dd    	vshufps xmm6,xmm7,xmm9,0xdd
  b06750:	c5 dc 58 fe          	vaddps ymm7,ymm4,ymm6
  b06754:	c5 7b 10 4c 17 10    	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0x10]
  b0675a:	c4 43 7d 18 c9 01    	vinsertf128 ymm9,ymm0,xmm9,0x1
  b06760:	c4 63 35 0c c9 c0    	vblendps ymm9,ymm9,ymm1,0xc0
  b06766:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  b0676c:	c4 41 50 c6 e1 dd    	vshufps xmm12,xmm5,xmm9,0xdd
  b06772:	c5 7c 28 ea          	vmovaps ymm13,ymm2
  b06776:	c4 42 45 ac ec       	vfnmadd213ps ymm13,ymm7,ymm12
  b0677b:	c4 41 3c 58 c2       	vaddps ymm8,ymm8,ymm10
  b06780:	c4 c1 50 c6 e9 88    	vshufps xmm5,xmm5,xmm9,0x88
  b06786:	c5 38 58 cd          	vaddps xmm9,xmm8,xmm5
  b0678a:	c4 e2 3d bc ea       	vfnmadd231ps ymm5,ymm8,ymm2
  b0678f:	c5 dc 5c e6          	vsubps ymm4,ymm4,ymm6
  b06793:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  b06797:	c5 d0 58 f4          	vaddps xmm6,xmm5,xmm4
  b0679b:	c5 d0 5c e4          	vsubps xmm4,xmm5,xmm4
  b0679f:	c5 b5 15 ec          	vunpckhpd ymm5,ymm9,ymm4
  b067a3:	c5 b5 14 e4          	vunpcklpd ymm4,ymm9,ymm4
  b067a7:	c4 63 4d 0c c1 cc    	vblendps ymm8,ymm6,ymm1,0xcc
  b067ad:	c5 cd 73 de 08       	vpsrldq ymm6,ymm6,0x8
  b067b2:	c5 d4 c6 ee 88       	vshufps ymm5,ymm5,ymm6,0x88
  b067b7:	c4 c1 5c c6 f0 88    	vshufps ymm6,ymm4,ymm8,0x88
  b067bd:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  b067c2:	c4 c1 5c c6 e0 dd    	vshufps ymm4,ymm4,ymm8,0xdd
  b067c8:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b067cd:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b067d2:	c5 98 58 ff          	vaddps xmm7,xmm12,xmm7
  b067d6:	c4 41 10 5c c3       	vsubps xmm8,xmm13,xmm11
  b067db:	c4 41 20 58 cd       	vaddps xmm9,xmm11,xmm13
  b067e0:	c4 41 45 15 d1       	vunpckhpd ymm10,ymm7,ymm9
  b067e5:	c4 c1 45 14 f9       	vunpcklpd ymm7,ymm7,ymm9
  b067ea:	c4 63 3d 0c c9 cc    	vblendps ymm9,ymm8,ymm1,0xcc
  b067f0:	c4 c1 3d 73 d8 08    	vpsrldq ymm8,ymm8,0x8
  b067f6:	c4 41 2c c6 c0 88    	vshufps ymm8,ymm10,ymm8,0x88
  b067fc:	c4 41 44 c6 d1 88    	vshufps ymm10,ymm7,ymm9,0x88
  b06802:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  b06808:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  b0680e:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b06813:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  b06819:	c5 7c 10 49 40       	vmovups ymm9,YMMWORD PTR [rcx+0x40]
  b0681e:	c5 7c 10 59 60       	vmovups ymm11,YMMWORD PTR [rcx+0x60]
  b06823:	c5 7c 10 a1 80 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0x80]
  b0682a:	00 
  b0682b:	c5 7c 10 a9 a0 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0xa0]
  b06832:	00 
  b06833:	c5 34 59 f4          	vmulps ymm14,ymm9,ymm4
  b06837:	c4 42 45 bc f3       	vfnmadd231ps ymm14,ymm7,ymm11
  b0683c:	c5 1c 59 fd          	vmulps ymm15,ymm12,ymm5
  b06840:	c4 42 3d bc fd       	vfnmadd231ps ymm15,ymm8,ymm13
  b06845:	62 c1 0c 28 58 c7    	vaddps ymm16,ymm14,ymm15
  b0684b:	c5 b4 59 ff          	vmulps ymm7,ymm9,ymm7
  b0684f:	c4 c2 5d b8 fb       	vfmadd231ps ymm7,ymm4,ymm11
  b06854:	c4 c1 3c 59 e4       	vmulps ymm4,ymm8,ymm12
  b06859:	c4 c2 55 b8 e5       	vfmadd231ps ymm4,ymm5,ymm13
  b0685e:	c5 c4 58 ec          	vaddps ymm5,ymm7,ymm4
  b06862:	c5 7c 28 c2          	vmovaps ymm8,ymm2
  b06866:	62 72 7d 20 ac c6    	vfnmadd213ps ymm8,ymm16,ymm6
  b0686c:	c5 c4 5c e4          	vsubps ymm4,ymm7,ymm4
  b06870:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  b06874:	c5 fc 28 fa          	vmovaps ymm7,ymm2
  b06878:	c4 c2 55 ac fa       	vfnmadd213ps ymm7,ymm5,ymm10
  b0687d:	c4 41 0c 5c cf       	vsubps ymm9,ymm14,ymm15
  b06882:	c5 34 59 c8          	vmulps ymm9,ymm9,ymm0
  b06886:	c4 41 44 5c d9       	vsubps ymm11,ymm7,ymm9
  b0688b:	c5 b4 58 ff          	vaddps ymm7,ymm9,ymm7
  b0688f:	c5 ac 58 ed          	vaddps ymm5,ymm10,ymm5
  b06893:	62 b1 4c 08 58 f0    	vaddps xmm6,xmm6,xmm16
  b06899:	62 f2 65 28 7f f5    	vpermt2ps ymm6,ymm3,ymm5
  b0689f:	c5 f8 11 34 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm6
  b068a4:	c4 e3 7d 19 f5 01    	vextractf128 xmm5,ymm6,0x1
  b068aa:	c5 f8 13 6c 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm5
  b068b0:	c5 b8 58 ec          	vaddps xmm5,xmm8,xmm4
  b068b4:	62 d2 65 28 7f eb    	vpermt2ps ymm5,ymm3,ymm11
  b068ba:	c5 f8 11 6c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm5
  b068c0:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b068c6:	c5 f8 13 6c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm5
  b068cc:	c5 b8 5c e4          	vsubps xmm4,xmm8,xmm4
  b068d0:	62 f2 65 28 7f e7    	vpermt2ps ymm4,ymm3,ymm7
  b068d6:	c5 f8 11 64 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm4
  b068dc:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  b068e2:	c5 f8 13 64 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm4
  b068e8:	48 83 c2 48          	add    rdx,0x48
  b068ec:	48 39 d0             	cmp    rax,rdx
  b068ef:	0f 85 fb fd ff ff    	jne    b066f0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b068f5:	c5 f8 77             	vzeroupper
  b068f8:	c3                   	ret
