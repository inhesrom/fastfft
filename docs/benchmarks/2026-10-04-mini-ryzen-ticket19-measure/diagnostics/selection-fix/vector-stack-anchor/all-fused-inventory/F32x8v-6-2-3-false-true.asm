
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000aaeb40 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  aaeb40:	48 c1 e2 04          	shl    rdx,0x4
  aaeb44:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  aaeb48:	31 d2                	xor    edx,edx
  aaeb4a:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  aaeb4e:	c4 e2 7d 18 0d 09 69 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5c6909]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  aaeb55:	5c ff 
  aaeb57:	c4 e2 79 18 15 74 67 	vbroadcastss xmm2,DWORD PTR [rip+0xffffffffff5c6774]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  aaeb5e:	5c ff 
  aaeb60:	c5 fb 10 5c 17 10    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x10]
  aaeb66:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  aaeb6c:	c4 e3 65 0c d8 c0    	vblendps ymm3,ymm3,ymm0,0xc0
  aaeb72:	c5 f8 10 24 17       	vmovups xmm4,XMMWORD PTR [rdi+rdx*1]
  aaeb77:	c5 f8 10 6c 17 18    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x18]
  aaeb7d:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  aaeb83:	c5 d8 c6 f3 dd       	vshufps xmm6,xmm4,xmm3,0xdd
  aaeb88:	c5 fb 10 7c 17 28    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x28]
  aaeb8e:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  aaeb94:	c4 e3 45 0c f8 c0    	vblendps ymm7,ymm7,ymm0,0xc0
  aaeb9a:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  aaeba0:	c5 50 c6 c7 dd       	vshufps xmm8,xmm5,xmm7,0xdd
  aaeba5:	c5 d8 c6 db 88       	vshufps xmm3,xmm4,xmm3,0x88
  aaebaa:	c5 d0 c6 e7 88       	vshufps xmm4,xmm5,xmm7,0x88
  aaebaf:	c5 e0 58 ec          	vaddps xmm5,xmm3,xmm4
  aaebb3:	c5 e0 5c dc          	vsubps xmm3,xmm3,xmm4
  aaebb7:	c4 e3 55 0c e0 cc    	vblendps ymm4,ymm5,ymm0,0xcc
  aaebbd:	c5 d5 73 dd 08       	vpsrldq ymm5,ymm5,0x8
  aaebc2:	c4 e3 65 0c f8 cc    	vblendps ymm7,ymm3,ymm0,0xcc
  aaebc8:	c5 e5 73 db 08       	vpsrldq ymm3,ymm3,0x8
  aaebcd:	c5 d4 c6 db 88       	vshufps ymm3,ymm5,ymm3,0x88
  aaebd2:	c5 dc c6 ef 88       	vshufps ymm5,ymm4,ymm7,0x88
  aaebd7:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  aaebdc:	c5 dc c6 e7 dd       	vshufps ymm4,ymm4,ymm7,0xdd
  aaebe1:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  aaebe6:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  aaebeb:	c5 b8 58 fe          	vaddps xmm7,xmm8,xmm6
  aaebef:	c4 c1 48 5c f0       	vsubps xmm6,xmm6,xmm8
  aaebf4:	c4 63 45 0c c0 cc    	vblendps ymm8,ymm7,ymm0,0xcc
  aaebfa:	c5 c5 73 df 08       	vpsrldq ymm7,ymm7,0x8
  aaebff:	c4 63 4d 0c c8 cc    	vblendps ymm9,ymm6,ymm0,0xcc
  aaec05:	c5 cd 73 de 08       	vpsrldq ymm6,ymm6,0x8
  aaec0a:	c5 c4 c6 f6 88       	vshufps ymm6,ymm7,ymm6,0x88
  aaec0f:	c4 c1 3c c6 f9 88    	vshufps ymm7,ymm8,ymm9,0x88
  aaec15:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  aaec1a:	c4 41 3c c6 c1 dd    	vshufps ymm8,ymm8,ymm9,0xdd
  aaec20:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  aaec26:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  aaec2b:	c5 7c 10 49 40       	vmovups ymm9,YMMWORD PTR [rcx+0x40]
  aaec30:	c5 7c 10 51 60       	vmovups ymm10,YMMWORD PTR [rcx+0x60]
  aaec35:	c5 7c 10 99 80 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0x80]
  aaec3c:	00 
  aaec3d:	c5 7c 10 a1 a0 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0xa0]
  aaec44:	00 
  aaec45:	c5 34 59 ec          	vmulps ymm13,ymm9,ymm4
  aaec49:	c4 42 3d bc ea       	vfnmadd231ps ymm13,ymm8,ymm10
  aaec4e:	c5 24 59 f3          	vmulps ymm14,ymm11,ymm3
  aaec52:	c4 42 4d bc f4       	vfnmadd231ps ymm14,ymm6,ymm12
  aaec57:	c4 41 14 58 fe       	vaddps ymm15,ymm13,ymm14
  aaec5c:	c4 41 3c 59 c1       	vmulps ymm8,ymm8,ymm9
  aaec61:	c4 42 5d b8 c2       	vfmadd231ps ymm8,ymm4,ymm10
  aaec66:	c5 a4 59 e6          	vmulps ymm4,ymm11,ymm6
  aaec6a:	c4 c2 65 b8 e4       	vfmadd231ps ymm4,ymm3,ymm12
  aaec6f:	c5 bc 58 dc          	vaddps ymm3,ymm8,ymm4
  aaec73:	c5 fc 28 f1          	vmovaps ymm6,ymm1
  aaec77:	c4 e2 05 ac f5       	vfnmadd213ps ymm6,ymm15,ymm5
  aaec7c:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  aaec80:	c4 62 65 ac cf       	vfnmadd213ps ymm9,ymm3,ymm7
  aaec85:	c5 c0 58 db          	vaddps xmm3,xmm7,xmm3
  aaec89:	c5 80 58 ed          	vaddps xmm5,xmm15,xmm5
  aaec8d:	c5 d0 14 db          	vunpcklps xmm3,xmm5,xmm3
  aaec91:	c5 f8 11 1c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm3
  aaec96:	c4 c1 10 5c de       	vsubps xmm3,xmm13,xmm14
  aaec9b:	c5 e0 59 da          	vmulps xmm3,xmm3,xmm2
  aaec9f:	c5 b0 5c eb          	vsubps xmm5,xmm9,xmm3
  aaeca3:	c5 b8 5c e4          	vsubps xmm4,xmm8,xmm4
  aaeca7:	c5 d8 59 e2          	vmulps xmm4,xmm4,xmm2
  aaecab:	c5 c8 58 fc          	vaddps xmm7,xmm6,xmm4
  aaecaf:	c5 c0 14 ed          	vunpcklps xmm5,xmm7,xmm5
  aaecb3:	c5 f8 11 6c 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm5
  aaecb9:	c5 b0 58 db          	vaddps xmm3,xmm9,xmm3
  aaecbd:	c5 c8 5c e4          	vsubps xmm4,xmm6,xmm4
  aaecc1:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  aaecc5:	c5 f8 11 5c 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm3
  aaeccb:	48 83 c2 30          	add    rdx,0x30
  aaeccf:	48 39 d0             	cmp    rax,rdx
  aaecd2:	0f 85 88 fe ff ff    	jne    aaeb60 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x20>
  aaecd8:	c5 f8 77             	vzeroupper
  aaecdb:	c3                   	ret
