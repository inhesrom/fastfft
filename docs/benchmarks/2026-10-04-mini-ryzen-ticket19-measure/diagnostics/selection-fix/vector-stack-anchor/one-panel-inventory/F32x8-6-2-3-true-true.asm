
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c4740 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c4740:	48 c1 e2 04          	shl    rdx,0x4
  6c4744:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6c4748:	31 d2                	xor    edx,edx
  6c474a:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  6c474e:	c4 e2 7d 18 0d 09 0d 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9b0d09]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c4755:	9b ff 
  6c4757:	c4 e2 79 18 15 74 0b 	vbroadcastss xmm2,DWORD PTR [rip+0xffffffffff9b0b74]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c475e:	9b ff 
  6c4760:	c5 fb 10 5c 17 10    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x10]
  6c4766:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6c476c:	c4 e3 65 0c d8 c0    	vblendps ymm3,ymm3,ymm0,0xc0
  6c4772:	c5 f8 10 24 17       	vmovups xmm4,XMMWORD PTR [rdi+rdx*1]
  6c4777:	c5 f8 10 6c 17 18    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x18]
  6c477d:	c5 fb 10 74 17 28    	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x28]
  6c4783:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  6c4789:	c4 e3 4d 0c f0 c0    	vblendps ymm6,ymm6,ymm0,0xc0
  6c478f:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  6c4795:	c5 d8 c6 fb dd       	vshufps xmm7,xmm4,xmm3,0xdd
  6c479a:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  6c47a0:	c5 50 c6 c6 dd       	vshufps xmm8,xmm5,xmm6,0xdd
  6c47a5:	c5 d8 c6 e3 88       	vshufps xmm4,xmm4,xmm3,0x88
  6c47aa:	c5 d0 c6 ee 88       	vshufps xmm5,xmm5,xmm6,0x88
  6c47af:	c5 b8 58 df          	vaddps xmm3,xmm8,xmm7
  6c47b3:	c4 c1 40 5c f0       	vsubps xmm6,xmm7,xmm8
  6c47b8:	c4 e3 65 0c f8 cc    	vblendps ymm7,ymm3,ymm0,0xcc
  6c47be:	c5 e5 73 db 08       	vpsrldq ymm3,ymm3,0x8
  6c47c3:	c4 63 4d 0c c0 cc    	vblendps ymm8,ymm6,ymm0,0xcc
  6c47c9:	c5 cd 73 de 08       	vpsrldq ymm6,ymm6,0x8
  6c47ce:	c5 e4 c6 f6 88       	vshufps ymm6,ymm3,ymm6,0x88
  6c47d3:	c4 c1 44 c6 d8 88    	vshufps ymm3,ymm7,ymm8,0x88
  6c47d9:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6c47de:	c4 c1 44 c6 f8 dd    	vshufps ymm7,ymm7,ymm8,0xdd
  6c47e4:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  6c47e9:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  6c47ee:	c5 58 58 c5          	vaddps xmm8,xmm4,xmm5
  6c47f2:	c5 d8 5c e5          	vsubps xmm4,xmm4,xmm5
  6c47f6:	c4 e3 3d 0c e8 cc    	vblendps ymm5,ymm8,ymm0,0xcc
  6c47fc:	c4 c1 3d 73 d8 08    	vpsrldq ymm8,ymm8,0x8
  6c4802:	c4 63 5d 0c c8 cc    	vblendps ymm9,ymm4,ymm0,0xcc
  6c4808:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  6c480d:	c5 bc c6 e4 88       	vshufps ymm4,ymm8,ymm4,0x88
  6c4812:	c4 41 54 c6 c1 88    	vshufps ymm8,ymm5,ymm9,0x88
  6c4818:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  6c481e:	c4 c1 54 c6 e9 dd    	vshufps ymm5,ymm5,ymm9,0xdd
  6c4824:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  6c4829:	c5 5c c6 cc d8       	vshufps ymm9,ymm4,ymm4,0xd8
  6c482e:	c5 7c 10 51 40       	vmovups ymm10,YMMWORD PTR [rcx+0x40]
  6c4833:	c5 7c 10 59 60       	vmovups ymm11,YMMWORD PTR [rcx+0x60]
  6c4838:	c5 7c 10 a1 80 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0x80]
  6c483f:	00 
  6c4840:	c5 7c 10 a9 a0 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0xa0]
  6c4847:	00 
  6c4848:	c5 ac 59 e7          	vmulps ymm4,ymm10,ymm7
  6c484c:	c4 c2 55 bc e3       	vfnmadd231ps ymm4,ymm5,ymm11
  6c4851:	c5 1c 59 f6          	vmulps ymm14,ymm12,ymm6
  6c4855:	c4 42 35 bc f5       	vfnmadd231ps ymm14,ymm9,ymm13
  6c485a:	c5 0c 58 fc          	vaddps ymm15,ymm14,ymm4
  6c485e:	c5 ac 59 ed          	vmulps ymm5,ymm10,ymm5
  6c4862:	c4 c2 45 b8 eb       	vfmadd231ps ymm5,ymm7,ymm11
  6c4867:	c4 c1 1c 59 f9       	vmulps ymm7,ymm12,ymm9
  6c486c:	c4 c2 4d b8 fd       	vfmadd231ps ymm7,ymm6,ymm13
  6c4871:	c5 d4 58 f7          	vaddps ymm6,ymm5,ymm7
  6c4875:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  6c4879:	c4 62 05 ac cb       	vfnmadd213ps ymm9,ymm15,ymm3
  6c487e:	c5 7c 28 d1          	vmovaps ymm10,ymm1
  6c4882:	c4 42 4d ac d0       	vfnmadd213ps ymm10,ymm6,ymm8
  6c4887:	c5 80 58 db          	vaddps xmm3,xmm15,xmm3
  6c488b:	c5 b8 58 f6          	vaddps xmm6,xmm8,xmm6
  6c488f:	c5 c8 14 db          	vunpcklps xmm3,xmm6,xmm3
  6c4893:	c5 d0 5c ef          	vsubps xmm5,xmm5,xmm7
  6c4897:	c5 d0 59 ea          	vmulps xmm5,xmm5,xmm2
  6c489b:	c5 b0 58 f5          	vaddps xmm6,xmm9,xmm5
  6c489f:	c4 c1 58 5c e6       	vsubps xmm4,xmm4,xmm14
  6c48a4:	c5 d8 59 e2          	vmulps xmm4,xmm4,xmm2
  6c48a8:	c5 a8 5c fc          	vsubps xmm7,xmm10,xmm4
  6c48ac:	c5 c0 14 f6          	vunpcklps xmm6,xmm7,xmm6
  6c48b0:	c4 e3 65 18 de 01    	vinsertf128 ymm3,ymm3,xmm6,0x1
  6c48b6:	c5 fc 11 1c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm3
  6c48bb:	c5 b0 5c dd          	vsubps xmm3,xmm9,xmm5
  6c48bf:	c5 a8 58 e4          	vaddps xmm4,xmm10,xmm4
  6c48c3:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  6c48c7:	c5 f8 11 5c 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm3
  6c48cd:	48 83 c2 30          	add    rdx,0x30
  6c48d1:	48 39 d0             	cmp    rax,rdx
  6c48d4:	0f 85 86 fe ff ff    	jne    6c4760 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  6c48da:	c5 f8 77             	vzeroupper
  6c48dd:	c3                   	ret
