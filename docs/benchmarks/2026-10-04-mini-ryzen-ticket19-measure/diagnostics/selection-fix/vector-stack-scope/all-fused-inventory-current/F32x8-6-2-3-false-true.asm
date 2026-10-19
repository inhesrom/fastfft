
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000744840 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  744840:	48 c1 e2 04          	shl    rdx,0x4
  744844:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  744848:	31 d2                	xor    edx,edx
  74484a:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  74484e:	c4 e2 7d 18 0d 09 0c 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff930c09]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  744855:	93 ff 
  744857:	c4 e2 79 18 15 74 0a 	vbroadcastss xmm2,DWORD PTR [rip+0xffffffffff930a74]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  74485e:	93 ff 
  744860:	c5 fb 10 5c 17 10    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x10]
  744866:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  74486c:	c4 e3 65 0c d8 c0    	vblendps ymm3,ymm3,ymm0,0xc0
  744872:	c5 f8 10 24 17       	vmovups xmm4,XMMWORD PTR [rdi+rdx*1]
  744877:	c5 f8 10 6c 17 18    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x18]
  74487d:	c5 fb 10 74 17 28    	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x28]
  744883:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  744889:	c4 e3 4d 0c f0 c0    	vblendps ymm6,ymm6,ymm0,0xc0
  74488f:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  744895:	c5 d8 c6 fb 88       	vshufps xmm7,xmm4,xmm3,0x88
  74489a:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  7448a0:	c5 50 c6 c6 88       	vshufps xmm8,xmm5,xmm6,0x88
  7448a5:	c5 d8 c6 e3 dd       	vshufps xmm4,xmm4,xmm3,0xdd
  7448aa:	c5 d0 c6 ee dd       	vshufps xmm5,xmm5,xmm6,0xdd
  7448af:	c5 b8 58 df          	vaddps xmm3,xmm8,xmm7
  7448b3:	c4 c1 40 5c f0       	vsubps xmm6,xmm7,xmm8
  7448b8:	c4 e3 65 0c f8 cc    	vblendps ymm7,ymm3,ymm0,0xcc
  7448be:	c5 e5 73 db 08       	vpsrldq ymm3,ymm3,0x8
  7448c3:	c4 63 4d 0c c0 cc    	vblendps ymm8,ymm6,ymm0,0xcc
  7448c9:	c5 cd 73 de 08       	vpsrldq ymm6,ymm6,0x8
  7448ce:	c5 e4 c6 f6 88       	vshufps ymm6,ymm3,ymm6,0x88
  7448d3:	c4 c1 44 c6 d8 88    	vshufps ymm3,ymm7,ymm8,0x88
  7448d9:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  7448de:	c4 c1 44 c6 f8 dd    	vshufps ymm7,ymm7,ymm8,0xdd
  7448e4:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  7448e9:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  7448ee:	c5 58 58 c5          	vaddps xmm8,xmm4,xmm5
  7448f2:	c5 d8 5c e5          	vsubps xmm4,xmm4,xmm5
  7448f6:	c4 e3 3d 0c e8 cc    	vblendps ymm5,ymm8,ymm0,0xcc
  7448fc:	c4 c1 3d 73 d8 08    	vpsrldq ymm8,ymm8,0x8
  744902:	c4 63 5d 0c c8 cc    	vblendps ymm9,ymm4,ymm0,0xcc
  744908:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  74490d:	c5 bc c6 e4 88       	vshufps ymm4,ymm8,ymm4,0x88
  744912:	c4 41 54 c6 c1 88    	vshufps ymm8,ymm5,ymm9,0x88
  744918:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  74491e:	c4 c1 54 c6 e9 dd    	vshufps ymm5,ymm5,ymm9,0xdd
  744924:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  744929:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  74492e:	c5 7c 10 49 40       	vmovups ymm9,YMMWORD PTR [rcx+0x40]
  744933:	c5 7c 10 51 60       	vmovups ymm10,YMMWORD PTR [rcx+0x60]
  744938:	c5 7c 10 99 80 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0x80]
  74493f:	00 
  744940:	c5 7c 10 a1 a0 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0xa0]
  744947:	00 
  744948:	c5 34 59 ef          	vmulps ymm13,ymm9,ymm7
  74494c:	c4 42 55 bc ea       	vfnmadd231ps ymm13,ymm5,ymm10
  744951:	c5 24 59 f6          	vmulps ymm14,ymm11,ymm6
  744955:	c4 42 5d bc f4       	vfnmadd231ps ymm14,ymm4,ymm12
  74495a:	c4 41 14 58 fe       	vaddps ymm15,ymm13,ymm14
  74495f:	c5 b4 59 ed          	vmulps ymm5,ymm9,ymm5
  744963:	c4 c2 45 b8 ea       	vfmadd231ps ymm5,ymm7,ymm10
  744968:	c5 a4 59 e4          	vmulps ymm4,ymm11,ymm4
  74496c:	c4 c2 4d b8 e4       	vfmadd231ps ymm4,ymm6,ymm12
  744971:	c5 d4 58 f4          	vaddps ymm6,ymm5,ymm4
  744975:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  744979:	c4 e2 05 ac fb       	vfnmadd213ps ymm7,ymm15,ymm3
  74497e:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  744982:	c4 42 4d ac c8       	vfnmadd213ps ymm9,ymm6,ymm8
  744987:	c5 b8 58 f6          	vaddps xmm6,xmm8,xmm6
  74498b:	c5 80 58 db          	vaddps xmm3,xmm15,xmm3
  74498f:	c5 e0 14 de          	vunpcklps xmm3,xmm3,xmm6
  744993:	c4 c1 10 5c f6       	vsubps xmm6,xmm13,xmm14
  744998:	c5 c8 59 f2          	vmulps xmm6,xmm6,xmm2
  74499c:	c5 30 5c c6          	vsubps xmm8,xmm9,xmm6
  7449a0:	c5 d0 5c e4          	vsubps xmm4,xmm5,xmm4
  7449a4:	c5 d8 59 e2          	vmulps xmm4,xmm4,xmm2
  7449a8:	c5 c0 58 ec          	vaddps xmm5,xmm7,xmm4
  7449ac:	c4 c1 50 14 e8       	vunpcklps xmm5,xmm5,xmm8
  7449b1:	c4 e3 65 18 dd 01    	vinsertf128 ymm3,ymm3,xmm5,0x1
  7449b7:	c5 fc 11 1c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm3
  7449bc:	c5 b0 58 de          	vaddps xmm3,xmm9,xmm6
  7449c0:	c5 c0 5c e4          	vsubps xmm4,xmm7,xmm4
  7449c4:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  7449c8:	c5 f8 11 5c 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm3
  7449ce:	48 83 c2 30          	add    rdx,0x30
  7449d2:	48 39 d0             	cmp    rax,rdx
  7449d5:	0f 85 85 fe ff ff    	jne    744860 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  7449db:	c5 f8 77             	vzeroupper
  7449de:	c3                   	ret
