
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ad3b80 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ad3b80:	48 c1 e2 05          	shl    rdx,0x5
  ad3b84:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  ad3b88:	31 d2                	xor    edx,edx
  ad3b8a:	c4 e2 7d 18 05 41 17 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5a1741]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ad3b91:	5a ff 
  ad3b93:	c4 e2 7d 18 0d c4 18 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5a18c4]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ad3b9a:	5a ff 
  ad3b9c:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  ad3ba0:	c5 fc 28 1d 18 47 5a 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff5a4718]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  ad3ba7:	ff 
  ad3ba8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  ad3baf:	00 
  ad3bb0:	c5 f8 10 24 17       	vmovups xmm4,XMMWORD PTR [rdi+rdx*1]
  ad3bb5:	c5 f8 10 6c 17 10    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x10]
  ad3bbb:	c5 f8 10 74 17 20    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x20]
  ad3bc1:	c5 f8 10 7c 17 30    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x30]
  ad3bc7:	c5 48 c6 c7 88       	vshufps xmm8,xmm6,xmm7,0x88
  ad3bcc:	c5 78 10 4c 17 50    	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x50]
  ad3bd2:	c5 78 10 54 17 40    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x40]
  ad3bd8:	c4 41 28 c6 d9 88    	vshufps xmm11,xmm10,xmm9,0x88
  ad3bde:	c4 41 3c 5c e3       	vsubps ymm12,ymm8,ymm11
  ad3be3:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  ad3be7:	c5 c8 c6 f7 dd       	vshufps xmm6,xmm6,xmm7,0xdd
  ad3bec:	c4 c1 28 c6 f9 dd    	vshufps xmm7,xmm10,xmm9,0xdd
  ad3bf2:	c5 4c 58 cf          	vaddps ymm9,ymm6,ymm7
  ad3bf6:	c5 58 c6 d5 dd       	vshufps xmm10,xmm4,xmm5,0xdd
  ad3bfb:	c5 7c 28 e9          	vmovaps ymm13,ymm1
  ad3bff:	c4 42 35 ac ea       	vfnmadd213ps ymm13,ymm9,ymm10
  ad3c04:	c4 41 3c 58 c3       	vaddps ymm8,ymm8,ymm11
  ad3c09:	c5 d8 c6 e5 88       	vshufps xmm4,xmm4,xmm5,0x88
  ad3c0e:	c5 b8 58 ec          	vaddps xmm5,xmm8,xmm4
  ad3c12:	c4 e2 3d bc e1       	vfnmadd231ps ymm4,ymm8,ymm1
  ad3c17:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  ad3c1b:	c5 cc 59 f0          	vmulps ymm6,ymm6,ymm0
  ad3c1f:	c5 d8 58 fe          	vaddps xmm7,xmm4,xmm6
  ad3c23:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  ad3c27:	c5 d5 15 f4          	vunpckhpd ymm6,ymm5,ymm4
  ad3c2b:	c5 d5 14 e4          	vunpcklpd ymm4,ymm5,ymm4
  ad3c2f:	c4 e3 45 0c ea cc    	vblendps ymm5,ymm7,ymm2,0xcc
  ad3c35:	c5 c5 73 df 08       	vpsrldq ymm7,ymm7,0x8
  ad3c3a:	c5 5c c6 c5 88       	vshufps ymm8,ymm4,ymm5,0x88
  ad3c3f:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  ad3c45:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  ad3c4a:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ad3c4f:	c5 cc c6 ef 88       	vshufps ymm5,ymm6,ymm7,0x88
  ad3c54:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ad3c59:	c5 cc c6 f7 dd       	vshufps ymm6,ymm6,ymm7,0xdd
  ad3c5e:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ad3c63:	c4 c1 28 58 f9       	vaddps xmm7,xmm10,xmm9
  ad3c68:	c4 41 10 5c cc       	vsubps xmm9,xmm13,xmm12
  ad3c6d:	c4 41 18 58 d5       	vaddps xmm10,xmm12,xmm13
  ad3c72:	c4 41 45 15 da       	vunpckhpd ymm11,ymm7,ymm10
  ad3c77:	c4 c1 45 14 fa       	vunpcklpd ymm7,ymm7,ymm10
  ad3c7c:	c4 63 35 0c d2 cc    	vblendps ymm10,ymm9,ymm2,0xcc
  ad3c82:	c4 c1 35 73 d9 08    	vpsrldq ymm9,ymm9,0x8
  ad3c88:	c4 41 44 c6 e2 88    	vshufps ymm12,ymm7,ymm10,0x88
  ad3c8e:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  ad3c94:	c4 c1 44 c6 fa dd    	vshufps ymm7,ymm7,ymm10,0xdd
  ad3c9a:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  ad3c9f:	c4 41 24 c6 d1 88    	vshufps ymm10,ymm11,ymm9,0x88
  ad3ca5:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  ad3cab:	c4 41 24 c6 c9 dd    	vshufps ymm9,ymm11,ymm9,0xdd
  ad3cb1:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  ad3cb7:	c5 7c 10 59 40       	vmovups ymm11,YMMWORD PTR [rcx+0x40]
  ad3cbc:	c5 7c 10 69 60       	vmovups ymm13,YMMWORD PTR [rcx+0x60]
  ad3cc1:	c5 7c 10 b1 80 00 00 	vmovups ymm14,YMMWORD PTR [rcx+0x80]
  ad3cc8:	00 
  ad3cc9:	c5 7c 10 b9 a0 00 00 	vmovups ymm15,YMMWORD PTR [rcx+0xa0]
  ad3cd0:	00 
  ad3cd1:	62 e1 7c 28 10 41 06 	vmovups ymm16,YMMWORD PTR [rcx+0xc0]
  ad3cd8:	62 e1 7c 28 10 49 07 	vmovups ymm17,YMMWORD PTR [rcx+0xe0]
  ad3cdf:	62 c1 54 28 59 d6    	vmulps ymm18,ymm5,ymm14
  ad3ce5:	62 c2 2d 28 bc d7    	vfnmadd231ps ymm18,ymm10,ymm15
  ad3ceb:	62 a1 3c 28 58 da    	vaddps ymm19,ymm8,ymm18
  ad3cf1:	62 c1 5c 28 59 e3    	vmulps ymm20,ymm4,ymm11
  ad3cf7:	62 c2 45 28 bc e5    	vfnmadd231ps ymm20,ymm7,ymm13
  ad3cfd:	62 a1 4c 28 59 e8    	vmulps ymm21,ymm6,ymm16
  ad3d03:	62 a2 35 28 bc e9    	vfnmadd231ps ymm21,ymm9,ymm17
  ad3d09:	62 a1 5c 20 58 f5    	vaddps ymm22,ymm20,ymm21
  ad3d0f:	c4 41 2c 59 d6       	vmulps ymm10,ymm10,ymm14
  ad3d14:	c4 42 55 b8 d7       	vfmadd231ps ymm10,ymm5,ymm15
  ad3d19:	c4 c1 2c 58 ec       	vaddps ymm5,ymm10,ymm12
  ad3d1e:	c5 a4 59 ff          	vmulps ymm7,ymm11,ymm7
  ad3d22:	c4 c2 5d b8 fd       	vfmadd231ps ymm7,ymm4,ymm13
  ad3d27:	62 b1 34 28 59 e0    	vmulps ymm4,ymm9,ymm16
  ad3d2d:	62 b2 4d 28 b8 e1    	vfmadd231ps ymm4,ymm6,ymm17
  ad3d33:	c5 c4 58 f4          	vaddps ymm6,ymm7,ymm4
  ad3d37:	62 31 3c 28 5c c2    	vsubps ymm8,ymm8,ymm18
  ad3d3d:	c5 c4 5c e4          	vsubps ymm4,ymm7,ymm4
  ad3d41:	c4 c1 1c 5c fa       	vsubps ymm7,ymm12,ymm10
  ad3d46:	62 31 54 20 5c cc    	vsubps ymm9,ymm21,ymm20
  ad3d4c:	c5 34 58 d7          	vaddps ymm10,ymm9,ymm7
  ad3d50:	c5 54 5c de          	vsubps ymm11,ymm5,ymm6
  ad3d54:	c4 c1 44 5c f9       	vsubps ymm7,ymm7,ymm9
  ad3d59:	c5 d4 58 ee          	vaddps ymm5,ymm5,ymm6
  ad3d5d:	62 b1 64 00 58 f6    	vaddps xmm6,xmm19,xmm22
  ad3d63:	62 f2 65 28 7f f5    	vpermt2ps ymm6,ymm3,ymm5
  ad3d69:	c5 f8 11 34 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm6
  ad3d6e:	c4 e3 7d 19 f5 01    	vextractf128 xmm5,ymm6,0x1
  ad3d74:	c5 f8 13 6c 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm5
  ad3d7a:	c5 b8 58 ec          	vaddps xmm5,xmm8,xmm4
  ad3d7e:	62 d2 65 28 7f ea    	vpermt2ps ymm5,ymm3,ymm10
  ad3d84:	c5 f8 11 6c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm5
  ad3d8a:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  ad3d90:	c5 f8 13 6c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm5
  ad3d96:	62 b1 64 00 5c ee    	vsubps xmm5,xmm19,xmm22
  ad3d9c:	62 d2 65 28 7f eb    	vpermt2ps ymm5,ymm3,ymm11
  ad3da2:	c5 f8 11 6c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm5
  ad3da8:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  ad3dae:	c5 f8 13 6c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm5
  ad3db4:	c5 b8 5c e4          	vsubps xmm4,xmm8,xmm4
  ad3db8:	62 f2 65 28 7f e7    	vpermt2ps ymm4,ymm3,ymm7
  ad3dbe:	c4 e3 7d 19 e5 01    	vextractf128 xmm5,ymm4,0x1
  ad3dc4:	c5 f8 13 6c 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm5
  ad3dca:	c5 f8 11 64 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm4
  ad3dd0:	48 83 c2 60          	add    rdx,0x60
  ad3dd4:	48 39 d0             	cmp    rax,rdx
  ad3dd7:	0f 85 d3 fd ff ff    	jne    ad3bb0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  ad3ddd:	c5 f8 77             	vzeroupper
  ad3de0:	c3                   	ret
