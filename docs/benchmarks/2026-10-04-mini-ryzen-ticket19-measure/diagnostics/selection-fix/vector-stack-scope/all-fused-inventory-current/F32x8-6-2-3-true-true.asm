
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c4e40 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c4e40:	48 c1 e2 04          	shl    rdx,0x4
  6c4e44:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6c4e48:	31 d2                	xor    edx,edx
  6c4e4a:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  6c4e4e:	c4 e2 7d 18 0d 09 06 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9b0609]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c4e55:	9b ff 
  6c4e57:	c4 e2 79 18 15 74 04 	vbroadcastss xmm2,DWORD PTR [rip+0xffffffffff9b0474]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c4e5e:	9b ff 
  6c4e60:	c5 fb 10 5c 17 10    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x10]
  6c4e66:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6c4e6c:	c4 e3 65 0c d8 c0    	vblendps ymm3,ymm3,ymm0,0xc0
  6c4e72:	c5 f8 10 24 17       	vmovups xmm4,XMMWORD PTR [rdi+rdx*1]
  6c4e77:	c5 f8 10 6c 17 18    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x18]
  6c4e7d:	c5 fb 10 74 17 28    	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x28]
  6c4e83:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  6c4e89:	c4 e3 4d 0c f0 c0    	vblendps ymm6,ymm6,ymm0,0xc0
  6c4e8f:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  6c4e95:	c5 d8 c6 fb dd       	vshufps xmm7,xmm4,xmm3,0xdd
  6c4e9a:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  6c4ea0:	c5 50 c6 c6 dd       	vshufps xmm8,xmm5,xmm6,0xdd
  6c4ea5:	c5 d8 c6 e3 88       	vshufps xmm4,xmm4,xmm3,0x88
  6c4eaa:	c5 d0 c6 ee 88       	vshufps xmm5,xmm5,xmm6,0x88
  6c4eaf:	c5 b8 58 df          	vaddps xmm3,xmm8,xmm7
  6c4eb3:	c4 c1 40 5c f0       	vsubps xmm6,xmm7,xmm8
  6c4eb8:	c4 e3 65 0c f8 cc    	vblendps ymm7,ymm3,ymm0,0xcc
  6c4ebe:	c5 e5 73 db 08       	vpsrldq ymm3,ymm3,0x8
  6c4ec3:	c4 63 4d 0c c0 cc    	vblendps ymm8,ymm6,ymm0,0xcc
  6c4ec9:	c5 cd 73 de 08       	vpsrldq ymm6,ymm6,0x8
  6c4ece:	c5 e4 c6 f6 88       	vshufps ymm6,ymm3,ymm6,0x88
  6c4ed3:	c4 c1 44 c6 d8 88    	vshufps ymm3,ymm7,ymm8,0x88
  6c4ed9:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6c4ede:	c4 c1 44 c6 f8 dd    	vshufps ymm7,ymm7,ymm8,0xdd
  6c4ee4:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  6c4ee9:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  6c4eee:	c5 58 58 c5          	vaddps xmm8,xmm4,xmm5
  6c4ef2:	c5 d8 5c e5          	vsubps xmm4,xmm4,xmm5
  6c4ef6:	c4 e3 3d 0c e8 cc    	vblendps ymm5,ymm8,ymm0,0xcc
  6c4efc:	c4 c1 3d 73 d8 08    	vpsrldq ymm8,ymm8,0x8
  6c4f02:	c4 63 5d 0c c8 cc    	vblendps ymm9,ymm4,ymm0,0xcc
  6c4f08:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  6c4f0d:	c5 bc c6 e4 88       	vshufps ymm4,ymm8,ymm4,0x88
  6c4f12:	c4 41 54 c6 c1 88    	vshufps ymm8,ymm5,ymm9,0x88
  6c4f18:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  6c4f1e:	c4 c1 54 c6 e9 dd    	vshufps ymm5,ymm5,ymm9,0xdd
  6c4f24:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  6c4f29:	c5 5c c6 cc d8       	vshufps ymm9,ymm4,ymm4,0xd8
  6c4f2e:	c5 7c 10 51 40       	vmovups ymm10,YMMWORD PTR [rcx+0x40]
  6c4f33:	c5 7c 10 59 60       	vmovups ymm11,YMMWORD PTR [rcx+0x60]
  6c4f38:	c5 7c 10 a1 80 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0x80]
  6c4f3f:	00 
  6c4f40:	c5 7c 10 a9 a0 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0xa0]
  6c4f47:	00 
  6c4f48:	c5 ac 59 e7          	vmulps ymm4,ymm10,ymm7
  6c4f4c:	c4 c2 55 bc e3       	vfnmadd231ps ymm4,ymm5,ymm11
  6c4f51:	c5 1c 59 f6          	vmulps ymm14,ymm12,ymm6
  6c4f55:	c4 42 35 bc f5       	vfnmadd231ps ymm14,ymm9,ymm13
  6c4f5a:	c5 0c 58 fc          	vaddps ymm15,ymm14,ymm4
  6c4f5e:	c5 ac 59 ed          	vmulps ymm5,ymm10,ymm5
  6c4f62:	c4 c2 45 b8 eb       	vfmadd231ps ymm5,ymm7,ymm11
  6c4f67:	c4 c1 1c 59 f9       	vmulps ymm7,ymm12,ymm9
  6c4f6c:	c4 c2 4d b8 fd       	vfmadd231ps ymm7,ymm6,ymm13
  6c4f71:	c5 d4 58 f7          	vaddps ymm6,ymm5,ymm7
  6c4f75:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  6c4f79:	c4 62 05 ac cb       	vfnmadd213ps ymm9,ymm15,ymm3
  6c4f7e:	c5 7c 28 d1          	vmovaps ymm10,ymm1
  6c4f82:	c4 42 4d ac d0       	vfnmadd213ps ymm10,ymm6,ymm8
  6c4f87:	c5 80 58 db          	vaddps xmm3,xmm15,xmm3
  6c4f8b:	c5 b8 58 f6          	vaddps xmm6,xmm8,xmm6
  6c4f8f:	c5 c8 14 db          	vunpcklps xmm3,xmm6,xmm3
  6c4f93:	c5 d0 5c ef          	vsubps xmm5,xmm5,xmm7
  6c4f97:	c5 d0 59 ea          	vmulps xmm5,xmm5,xmm2
  6c4f9b:	c5 b0 58 f5          	vaddps xmm6,xmm9,xmm5
  6c4f9f:	c4 c1 58 5c e6       	vsubps xmm4,xmm4,xmm14
  6c4fa4:	c5 d8 59 e2          	vmulps xmm4,xmm4,xmm2
  6c4fa8:	c5 a8 5c fc          	vsubps xmm7,xmm10,xmm4
  6c4fac:	c5 c0 14 f6          	vunpcklps xmm6,xmm7,xmm6
  6c4fb0:	c4 e3 65 18 de 01    	vinsertf128 ymm3,ymm3,xmm6,0x1
  6c4fb6:	c5 fc 11 1c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm3
  6c4fbb:	c5 b0 5c dd          	vsubps xmm3,xmm9,xmm5
  6c4fbf:	c5 a8 58 e4          	vaddps xmm4,xmm10,xmm4
  6c4fc3:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  6c4fc7:	c5 f8 11 5c 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm3
  6c4fcd:	48 83 c2 30          	add    rdx,0x30
  6c4fd1:	48 39 d0             	cmp    rax,rdx
  6c4fd4:	0f 85 86 fe ff ff    	jne    6c4e60 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  6c4fda:	c5 f8 77             	vzeroupper
  6c4fdd:	c3                   	ret
