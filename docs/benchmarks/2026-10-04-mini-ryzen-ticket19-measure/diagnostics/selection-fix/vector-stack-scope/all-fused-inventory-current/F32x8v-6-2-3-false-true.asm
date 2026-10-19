
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ab0900 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ab0900:	48 c1 e2 04          	shl    rdx,0x4
  ab0904:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  ab0908:	31 d2                	xor    edx,edx
  ab090a:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  ab090e:	c4 e2 7d 18 0d 49 4b 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5c4b49]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ab0915:	5c ff 
  ab0917:	c4 e2 79 18 15 b4 49 	vbroadcastss xmm2,DWORD PTR [rip+0xffffffffff5c49b4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ab091e:	5c ff 
  ab0920:	c5 fb 10 5c 17 10    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x10]
  ab0926:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  ab092c:	c4 e3 65 0c d8 c0    	vblendps ymm3,ymm3,ymm0,0xc0
  ab0932:	c5 f8 10 24 17       	vmovups xmm4,XMMWORD PTR [rdi+rdx*1]
  ab0937:	c5 f8 10 6c 17 18    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x18]
  ab093d:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  ab0943:	c5 d8 c6 f3 dd       	vshufps xmm6,xmm4,xmm3,0xdd
  ab0948:	c5 fb 10 7c 17 28    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x28]
  ab094e:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  ab0954:	c4 e3 45 0c f8 c0    	vblendps ymm7,ymm7,ymm0,0xc0
  ab095a:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  ab0960:	c5 50 c6 c7 dd       	vshufps xmm8,xmm5,xmm7,0xdd
  ab0965:	c5 d8 c6 db 88       	vshufps xmm3,xmm4,xmm3,0x88
  ab096a:	c5 d0 c6 e7 88       	vshufps xmm4,xmm5,xmm7,0x88
  ab096f:	c5 e0 58 ec          	vaddps xmm5,xmm3,xmm4
  ab0973:	c5 e0 5c dc          	vsubps xmm3,xmm3,xmm4
  ab0977:	c4 e3 55 0c e0 cc    	vblendps ymm4,ymm5,ymm0,0xcc
  ab097d:	c5 d5 73 dd 08       	vpsrldq ymm5,ymm5,0x8
  ab0982:	c4 e3 65 0c f8 cc    	vblendps ymm7,ymm3,ymm0,0xcc
  ab0988:	c5 e5 73 db 08       	vpsrldq ymm3,ymm3,0x8
  ab098d:	c5 d4 c6 db 88       	vshufps ymm3,ymm5,ymm3,0x88
  ab0992:	c5 dc c6 ef 88       	vshufps ymm5,ymm4,ymm7,0x88
  ab0997:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ab099c:	c5 dc c6 e7 dd       	vshufps ymm4,ymm4,ymm7,0xdd
  ab09a1:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ab09a6:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  ab09ab:	c5 b8 58 fe          	vaddps xmm7,xmm8,xmm6
  ab09af:	c4 c1 48 5c f0       	vsubps xmm6,xmm6,xmm8
  ab09b4:	c4 63 45 0c c0 cc    	vblendps ymm8,ymm7,ymm0,0xcc
  ab09ba:	c5 c5 73 df 08       	vpsrldq ymm7,ymm7,0x8
  ab09bf:	c4 63 4d 0c c8 cc    	vblendps ymm9,ymm6,ymm0,0xcc
  ab09c5:	c5 cd 73 de 08       	vpsrldq ymm6,ymm6,0x8
  ab09ca:	c5 c4 c6 f6 88       	vshufps ymm6,ymm7,ymm6,0x88
  ab09cf:	c4 c1 3c c6 f9 88    	vshufps ymm7,ymm8,ymm9,0x88
  ab09d5:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  ab09da:	c4 41 3c c6 c1 dd    	vshufps ymm8,ymm8,ymm9,0xdd
  ab09e0:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  ab09e6:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ab09eb:	c5 7c 10 49 40       	vmovups ymm9,YMMWORD PTR [rcx+0x40]
  ab09f0:	c5 7c 10 51 60       	vmovups ymm10,YMMWORD PTR [rcx+0x60]
  ab09f5:	c5 7c 10 99 80 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0x80]
  ab09fc:	00 
  ab09fd:	c5 7c 10 a1 a0 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0xa0]
  ab0a04:	00 
  ab0a05:	c5 34 59 ec          	vmulps ymm13,ymm9,ymm4
  ab0a09:	c4 42 3d bc ea       	vfnmadd231ps ymm13,ymm8,ymm10
  ab0a0e:	c5 24 59 f3          	vmulps ymm14,ymm11,ymm3
  ab0a12:	c4 42 4d bc f4       	vfnmadd231ps ymm14,ymm6,ymm12
  ab0a17:	c4 41 14 58 fe       	vaddps ymm15,ymm13,ymm14
  ab0a1c:	c4 41 3c 59 c1       	vmulps ymm8,ymm8,ymm9
  ab0a21:	c4 42 5d b8 c2       	vfmadd231ps ymm8,ymm4,ymm10
  ab0a26:	c5 a4 59 e6          	vmulps ymm4,ymm11,ymm6
  ab0a2a:	c4 c2 65 b8 e4       	vfmadd231ps ymm4,ymm3,ymm12
  ab0a2f:	c5 bc 58 dc          	vaddps ymm3,ymm8,ymm4
  ab0a33:	c5 fc 28 f1          	vmovaps ymm6,ymm1
  ab0a37:	c4 e2 05 ac f5       	vfnmadd213ps ymm6,ymm15,ymm5
  ab0a3c:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  ab0a40:	c4 62 65 ac cf       	vfnmadd213ps ymm9,ymm3,ymm7
  ab0a45:	c5 c0 58 db          	vaddps xmm3,xmm7,xmm3
  ab0a49:	c5 80 58 ed          	vaddps xmm5,xmm15,xmm5
  ab0a4d:	c5 d0 14 db          	vunpcklps xmm3,xmm5,xmm3
  ab0a51:	c5 f8 11 1c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm3
  ab0a56:	c4 c1 10 5c de       	vsubps xmm3,xmm13,xmm14
  ab0a5b:	c5 e0 59 da          	vmulps xmm3,xmm3,xmm2
  ab0a5f:	c5 b0 5c eb          	vsubps xmm5,xmm9,xmm3
  ab0a63:	c5 b8 5c e4          	vsubps xmm4,xmm8,xmm4
  ab0a67:	c5 d8 59 e2          	vmulps xmm4,xmm4,xmm2
  ab0a6b:	c5 c8 58 fc          	vaddps xmm7,xmm6,xmm4
  ab0a6f:	c5 c0 14 ed          	vunpcklps xmm5,xmm7,xmm5
  ab0a73:	c5 f8 11 6c 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm5
  ab0a79:	c5 b0 58 db          	vaddps xmm3,xmm9,xmm3
  ab0a7d:	c5 c8 5c e4          	vsubps xmm4,xmm6,xmm4
  ab0a81:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  ab0a85:	c5 f8 11 5c 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm3
  ab0a8b:	48 83 c2 30          	add    rdx,0x30
  ab0a8f:	48 39 d0             	cmp    rax,rdx
  ab0a92:	0f 85 88 fe ff ff    	jne    ab0920 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x20>
  ab0a98:	c5 f8 77             	vzeroupper
  ab0a9b:	c3                   	ret
