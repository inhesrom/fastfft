
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000afe5c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  afe5c0:	48 c1 e2 05          	shl    rdx,0x5
  afe5c4:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  afe5c8:	31 d2                	xor    edx,edx
  afe5ca:	c4 e2 7d 18 05 8d 6e 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff576e8d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  afe5d1:	57 ff 
  afe5d3:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  afe5d7:	c4 e2 7d 18 15 f4 6c 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff576cf4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  afe5de:	57 ff 
  afe5e0:	c5 fc 28 1d f8 8b 57 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff578bf8]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  afe5e7:	ff 
  afe5e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  afe5ef:	00 
  afe5f0:	c5 fb 10 64 17 10    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x10]
  afe5f6:	c4 e3 7d 18 e4 01    	vinsertf128 ymm4,ymm0,xmm4,0x1
  afe5fc:	c4 e3 5d 0c e1 c0    	vblendps ymm4,ymm4,ymm1,0xc0
  afe602:	c5 f8 10 2c 17       	vmovups xmm5,XMMWORD PTR [rdi+rdx*1]
  afe607:	c5 f8 10 74 17 18    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x18]
  afe60d:	c5 f8 10 7c 17 30    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x30]
  afe613:	c5 78 10 44 17 48    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x48]
  afe619:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  afe61f:	c5 50 c6 cc 88       	vshufps xmm9,xmm5,xmm4,0x88
  afe624:	c5 7b 10 54 17 40    	vmovsd xmm10,QWORD PTR [rdi+rdx*1+0x40]
  afe62a:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  afe630:	c4 63 2d 0c d1 c0    	vblendps ymm10,ymm10,ymm1,0xc0
  afe636:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  afe63c:	c4 41 40 c6 da 88    	vshufps xmm11,xmm7,xmm10,0x88
  afe642:	c4 41 34 5c e3       	vsubps ymm12,ymm9,ymm11
  afe647:	c5 7b 10 6c 17 58    	vmovsd xmm13,QWORD PTR [rdi+rdx*1+0x58]
  afe64d:	c4 43 7d 18 ed 01    	vinsertf128 ymm13,ymm0,xmm13,0x1
  afe653:	c4 63 15 0c e9 c0    	vblendps ymm13,ymm13,ymm1,0xc0
  afe659:	c4 43 7d 19 ed 01    	vextractf128 xmm13,ymm13,0x1
  afe65f:	c4 41 38 c6 f5 dd    	vshufps xmm14,xmm8,xmm13,0xdd
  afe665:	c5 7b 10 7c 17 28    	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x28]
  afe66b:	c4 43 7d 18 ff 01    	vinsertf128 ymm15,ymm0,xmm15,0x1
  afe671:	c4 63 05 0c f9 c0    	vblendps ymm15,ymm15,ymm1,0xc0
  afe677:	c4 43 7d 19 ff 01    	vextractf128 xmm15,ymm15,0x1
  afe67d:	62 c1 4c 08 c6 c7 dd 	vshufps xmm16,xmm6,xmm15,0xdd
  afe684:	62 a1 0c 28 5c c8    	vsubps ymm17,ymm14,ymm16
  afe68a:	c5 d0 c6 e4 dd       	vshufps xmm4,xmm5,xmm4,0xdd
  afe68f:	c4 c1 40 c6 ea dd    	vshufps xmm5,xmm7,xmm10,0xdd
  afe695:	c5 dc 5c fd          	vsubps ymm7,ymm4,ymm5
  afe699:	c4 c1 48 c6 f7 88    	vshufps xmm6,xmm6,xmm15,0x88
  afe69f:	c4 41 38 c6 c5 88    	vshufps xmm8,xmm8,xmm13,0x88
  afe6a5:	c4 41 4c 5c d0       	vsubps ymm10,ymm6,ymm8
  afe6aa:	c4 41 34 58 cb       	vaddps ymm9,ymm9,ymm11
  afe6af:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  afe6b3:	c5 dc 58 e5          	vaddps ymm4,ymm4,ymm5
  afe6b7:	62 d1 7c 20 58 ee    	vaddps ymm5,ymm16,ymm14
  afe6bd:	c5 58 58 c5          	vaddps xmm8,xmm4,xmm5
  afe6c1:	c5 28 58 df          	vaddps xmm11,xmm10,xmm7
  afe6c5:	c5 d8 5c e5          	vsubps xmm4,xmm4,xmm5
  afe6c9:	c4 c1 40 5c ea       	vsubps xmm5,xmm7,xmm10
  afe6ce:	c5 bd 15 fc          	vunpckhpd ymm7,ymm8,ymm4
  afe6d2:	c5 bd 14 e4          	vunpcklpd ymm4,ymm8,ymm4
  afe6d6:	c5 25 15 c5          	vunpckhpd ymm8,ymm11,ymm5
  afe6da:	c4 c1 44 c6 f8 88    	vshufps ymm7,ymm7,ymm8,0x88
  afe6e0:	c5 a5 14 ed          	vunpcklpd ymm5,ymm11,ymm5
  afe6e4:	c5 5c c6 c5 88       	vshufps ymm8,ymm4,ymm5,0x88
  afe6e9:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  afe6ef:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  afe6f4:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  afe6f9:	c5 c4 c6 ef d8       	vshufps ymm5,ymm7,ymm7,0xd8
  afe6fe:	c5 b0 58 fe          	vaddps xmm7,xmm9,xmm6
  afe702:	62 51 74 00 58 d4    	vaddps xmm10,xmm17,xmm12
  afe708:	c5 b0 5c f6          	vsubps xmm6,xmm9,xmm6
  afe70c:	62 31 1c 08 5c c9    	vsubps xmm9,xmm12,xmm17
  afe712:	c5 45 15 de          	vunpckhpd ymm11,ymm7,ymm6
  afe716:	c5 c5 14 f6          	vunpcklpd ymm6,ymm7,ymm6
  afe71a:	c4 c1 2d 15 f9       	vunpckhpd ymm7,ymm10,ymm9
  afe71f:	c5 a4 c6 ff 88       	vshufps ymm7,ymm11,ymm7,0x88
  afe724:	c4 41 2d 14 c9       	vunpcklpd ymm9,ymm10,ymm9
  afe729:	c4 41 4c c6 d1 88    	vshufps ymm10,ymm6,ymm9,0x88
  afe72f:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  afe735:	c4 c1 4c c6 f1 dd    	vshufps ymm6,ymm6,ymm9,0xdd
  afe73b:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  afe740:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  afe745:	c5 7c 10 49 40       	vmovups ymm9,YMMWORD PTR [rcx+0x40]
  afe74a:	c5 7c 10 59 60       	vmovups ymm11,YMMWORD PTR [rcx+0x60]
  afe74f:	c5 7c 10 a1 80 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0x80]
  afe756:	00 
  afe757:	c5 7c 10 a9 a0 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0xa0]
  afe75e:	00 
  afe75f:	c5 34 59 f4          	vmulps ymm14,ymm9,ymm4
  afe763:	c4 42 4d bc f3       	vfnmadd231ps ymm14,ymm6,ymm11
  afe768:	c5 1c 59 fd          	vmulps ymm15,ymm12,ymm5
  afe76c:	c4 42 45 bc fd       	vfnmadd231ps ymm15,ymm7,ymm13
  afe771:	62 c1 0c 28 58 c7    	vaddps ymm16,ymm14,ymm15
  afe777:	c5 b4 59 f6          	vmulps ymm6,ymm9,ymm6
  afe77b:	c4 c2 5d b8 f3       	vfmadd231ps ymm6,ymm4,ymm11
  afe780:	c5 9c 59 e7          	vmulps ymm4,ymm12,ymm7
  afe784:	c4 c2 55 b8 e5       	vfmadd231ps ymm4,ymm5,ymm13
  afe789:	c5 cc 58 ec          	vaddps ymm5,ymm6,ymm4
  afe78d:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  afe791:	62 d2 7d 20 ac f8    	vfnmadd213ps ymm7,ymm16,ymm8
  afe797:	c5 cc 5c e4          	vsubps ymm4,ymm6,ymm4
  afe79b:	c5 dc 59 e2          	vmulps ymm4,ymm4,ymm2
  afe79f:	c5 c4 58 f4          	vaddps ymm6,ymm7,ymm4
  afe7a3:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  afe7a7:	c4 42 55 ac ca       	vfnmadd213ps ymm9,ymm5,ymm10
  afe7ac:	c4 41 0c 5c df       	vsubps ymm11,ymm14,ymm15
  afe7b1:	c5 24 59 da          	vmulps ymm11,ymm11,ymm2
  afe7b5:	c5 c4 5c e4          	vsubps ymm4,ymm7,ymm4
  afe7b9:	62 b1 3c 28 58 f8    	vaddps ymm7,ymm8,ymm16
  afe7bf:	c5 a8 58 ed          	vaddps xmm5,xmm10,xmm5
  afe7c3:	62 f2 65 28 7f ef    	vpermt2ps ymm5,ymm3,ymm7
  afe7c9:	c5 fc 11 2c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm5
  afe7ce:	c4 c1 30 5c eb       	vsubps xmm5,xmm9,xmm11
  afe7d3:	62 f2 65 28 7f ee    	vpermt2ps ymm5,ymm3,ymm6
  afe7d9:	c5 fc 11 6c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm5
  afe7df:	c4 c1 30 58 eb       	vaddps xmm5,xmm9,xmm11
  afe7e4:	62 f2 65 28 7f ec    	vpermt2ps ymm5,ymm3,ymm4
  afe7ea:	c5 fc 11 6c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm5
  afe7f0:	48 83 c2 60          	add    rdx,0x60
  afe7f4:	48 39 d0             	cmp    rax,rdx
  afe7f7:	0f 85 f3 fd ff ff    	jne    afe5f0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  afe7fd:	c5 f8 77             	vzeroupper
  afe800:	c3                   	ret
