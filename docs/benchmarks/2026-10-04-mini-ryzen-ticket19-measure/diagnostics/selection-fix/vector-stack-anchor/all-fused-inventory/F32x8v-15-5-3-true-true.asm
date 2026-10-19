
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ab5a00 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ab5a00:	48 6b c2 78          	imul   rax,rdx,0x78
  ab5a04:	31 d2                	xor    edx,edx
  ab5a06:	c4 e2 7d 18 05 49 fd 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5bfd49]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  ab5a0d:	5b ff 
  ab5a0f:	c4 e2 7d 18 0d 88 f9 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5bf988]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  ab5a16:	5b ff 
  ab5a18:	c4 e2 7d 18 15 c7 fc 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff5bfcc7]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  ab5a1f:	5b ff 
  ab5a21:	c4 e2 7d 18 1d 1a fc 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff5bfc1a]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  ab5a28:	5b ff 
  ab5a2a:	c4 e2 7d 18 25 2d fa 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff5bfa2d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ab5a31:	5b ff 
  ab5a33:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  ab5a37:	62 62 7d 28 18 05 93 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff5bf893]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ab5a3e:	f8 5b ff 
  ab5a41:	c5 fc 28 3d 97 17 5c 	vmovaps ymm7,YMMWORD PTR [rip+0xffffffffff5c1797]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  ab5a48:	ff 
  ab5a49:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  ab5a50:	c5 7b 10 44 17 28    	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x28]
  ab5a56:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  ab5a5c:	c4 63 3d 0c c5 c0    	vblendps ymm8,ymm8,ymm5,0xc0
  ab5a62:	c5 78 10 0c 17       	vmovups xmm9,XMMWORD PTR [rdi+rdx*1]
  ab5a67:	c5 78 10 54 17 18    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x18]
  ab5a6d:	c5 78 10 5c 17 30    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x30]
  ab5a73:	c5 78 10 64 17 48    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x48]
  ab5a79:	c4 43 7d 19 c5 01    	vextractf128 xmm13,ymm8,0x1
  ab5a7f:	c4 41 28 c6 f5 dd    	vshufps xmm14,xmm10,xmm13,0xdd
  ab5a85:	c5 78 10 7c 17 60    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x60]
  ab5a8b:	c5 7b 10 44 17 70    	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x70]
  ab5a91:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  ab5a97:	c4 63 3d 0c c5 c0    	vblendps ymm8,ymm8,ymm5,0xc0
  ab5a9d:	62 33 7d 28 19 c0 01 	vextractf32x4 xmm16,ymm8,0x1
  ab5aa4:	62 a1 04 08 c6 c8 dd 	vshufps xmm17,xmm15,xmm16,0xdd
  ab5aab:	62 a1 0c 28 5c d1    	vsubps ymm18,ymm14,ymm17
  ab5ab1:	c5 7b 10 44 17 40    	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x40]
  ab5ab7:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  ab5abd:	c4 63 3d 0c c5 c0    	vblendps ymm8,ymm8,ymm5,0xc0
  ab5ac3:	62 33 7d 28 19 c3 01 	vextractf32x4 xmm19,ymm8,0x1
  ab5aca:	62 a1 24 08 c6 e3 dd 	vshufps xmm20,xmm11,xmm19,0xdd
  ab5ad1:	c5 7b 10 44 17 58    	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x58]
  ab5ad7:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  ab5add:	c4 63 3d 0c c5 c0    	vblendps ymm8,ymm8,ymm5,0xc0
  ab5ae3:	62 33 7d 28 19 c5 01 	vextractf32x4 xmm21,ymm8,0x1
  ab5aea:	62 a1 1c 08 c6 f5 dd 	vshufps xmm22,xmm12,xmm21,0xdd
  ab5af1:	62 a1 5c 20 5c fe    	vsubps ymm23,ymm20,ymm22
  ab5af7:	62 71 44 20 59 c0    	vmulps ymm8,ymm23,ymm0
  ab5afd:	62 72 6d 20 b8 c1    	vfmadd231ps ymm8,ymm18,ymm1
  ab5b03:	62 31 24 08 c6 db 88 	vshufps xmm11,xmm11,xmm19,0x88
  ab5b0a:	62 31 1c 08 c6 e5 88 	vshufps xmm12,xmm12,xmm21,0x88
  ab5b11:	62 c1 24 28 58 dc    	vaddps ymm19,ymm11,ymm12
  ab5b17:	c4 41 28 c6 d5 88    	vshufps xmm10,xmm10,xmm13,0x88
  ab5b1d:	62 31 04 08 c6 e8 88 	vshufps xmm13,xmm15,xmm16,0x88
  ab5b24:	c4 41 2c 58 fd       	vaddps ymm15,ymm10,ymm13
  ab5b29:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x10]
  ab5b30:	02 
  ab5b31:	62 b3 7d 28 18 f0 01 	vinsertf32x4 ymm6,ymm0,xmm16,0x1
  ab5b38:	c4 e3 4d 0c f5 c0    	vblendps ymm6,ymm6,ymm5,0xc0
  ab5b3e:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  ab5b44:	62 e1 34 08 c6 c6 88 	vshufps xmm16,xmm9,xmm6,0x88
  ab5b4b:	62 e1 7c 28 28 ea    	vmovaps ymm21,ymm2
  ab5b51:	62 a2 05 28 a8 e8    	vfmadd213ps ymm21,ymm15,ymm16
  ab5b57:	62 e2 65 20 bc eb    	vfnmadd231ps ymm21,ymm19,ymm3
  ab5b5d:	62 a1 5c 20 58 e6    	vaddps ymm20,ymm20,ymm22
  ab5b63:	62 31 0c 28 58 f1    	vaddps ymm14,ymm14,ymm17
  ab5b69:	c5 b0 c6 f6 dd       	vshufps xmm6,xmm9,xmm6,0xdd
  ab5b6e:	c5 7c 28 ca          	vmovaps ymm9,ymm2
  ab5b72:	c4 62 0d a8 ce       	vfmadd213ps ymm9,ymm14,ymm6
  ab5b77:	62 72 5d 20 bc cb    	vfnmadd231ps ymm9,ymm20,ymm3
  ab5b7d:	c4 41 2c 5c d5       	vsubps ymm10,ymm10,ymm13
  ab5b82:	c4 41 24 5c dc       	vsubps ymm11,ymm11,ymm12
  ab5b87:	c5 24 59 e0          	vmulps ymm12,ymm11,ymm0
  ab5b8b:	c4 62 2d b8 e1       	vfmadd231ps ymm12,ymm10,ymm1
  ab5b90:	62 71 6c 20 59 e8    	vmulps ymm13,ymm18,ymm0
  ab5b96:	62 32 75 28 bc ef    	vfnmadd231ps ymm13,ymm1,ymm23
  ab5b9c:	62 e1 7c 28 28 cb    	vmovaps ymm17,ymm3
  ab5ba2:	62 a2 05 28 ac c8    	vfnmadd213ps ymm17,ymm15,ymm16
  ab5ba8:	62 e2 65 20 b8 ca    	vfmadd231ps ymm17,ymm19,ymm2
  ab5bae:	62 e1 7c 28 28 d3    	vmovaps ymm18,ymm3
  ab5bb4:	62 e2 0d 28 ac d6    	vfnmadd213ps ymm18,ymm14,ymm6
  ab5bba:	62 e2 5d 20 b8 d2    	vfmadd231ps ymm18,ymm20,ymm2
  ab5bc0:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  ab5bc4:	c4 42 75 bc d3       	vfnmadd231ps ymm10,ymm1,ymm11
  ab5bc9:	62 51 7c 20 58 df    	vaddps ymm11,ymm16,ymm15
  ab5bcf:	62 31 24 28 58 db    	vaddps ymm11,ymm11,ymm19
  ab5bd5:	c5 8c 58 f6          	vaddps ymm6,ymm14,ymm6
  ab5bd9:	62 b1 4c 28 58 f4    	vaddps ymm6,ymm6,ymm20
  ab5bdf:	c4 41 30 5c f4       	vsubps xmm14,xmm9,xmm12
  ab5be4:	c4 c3 4d 18 f6 01    	vinsertf128 ymm6,ymm6,xmm14,0x1
  ab5bea:	c4 41 30 58 cc       	vaddps xmm9,xmm9,xmm12
  ab5bef:	62 51 6c 00 5c e2    	vsubps xmm12,xmm18,xmm10
  ab5bf5:	c4 41 35 15 f4       	vunpckhpd ymm14,ymm9,ymm12
  ab5bfa:	c4 41 35 14 cc       	vunpcklpd ymm9,ymm9,ymm12
  ab5bff:	62 51 6c 00 58 d2    	vaddps xmm10,xmm18,xmm10
  ab5c05:	c4 41 4d 14 e2       	vunpcklpd ymm12,ymm6,ymm10
  ab5c0a:	c4 41 1c c6 f9 88    	vshufps ymm15,ymm12,ymm9,0x88
  ab5c10:	c4 41 04 c6 ff d8    	vshufps ymm15,ymm15,ymm15,0xd8
  ab5c16:	c4 41 1c c6 c9 dd    	vshufps ymm9,ymm12,ymm9,0xdd
  ab5c1c:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  ab5c22:	c4 c1 4d 15 f2       	vunpckhpd ymm6,ymm6,ymm10
  ab5c27:	c4 c1 4c c6 f6 88    	vshufps ymm6,ymm6,ymm14,0x88
  ab5c2d:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ab5c32:	62 31 3c 08 58 d5    	vaddps xmm10,xmm8,xmm21
  ab5c38:	c4 43 25 18 d2 01    	vinsertf128 ymm10,ymm11,xmm10,0x1
  ab5c3e:	62 51 54 00 5c c0    	vsubps xmm8,xmm21,xmm8
  ab5c44:	62 31 14 08 58 d9    	vaddps xmm11,xmm13,xmm17
  ab5c4a:	c4 41 3d 15 e3       	vunpckhpd ymm12,ymm8,ymm11
  ab5c4f:	c4 41 3d 14 c3       	vunpcklpd ymm8,ymm8,ymm11
  ab5c54:	62 51 74 00 5c dd    	vsubps xmm11,xmm17,xmm13
  ab5c5a:	c4 41 2d 14 eb       	vunpcklpd ymm13,ymm10,ymm11
  ab5c5f:	c4 41 14 c6 f0 88    	vshufps ymm14,ymm13,ymm8,0x88
  ab5c65:	c4 41 0c c6 f6 d8    	vshufps ymm14,ymm14,ymm14,0xd8
  ab5c6b:	c4 41 14 c6 c0 dd    	vshufps ymm8,ymm13,ymm8,0xdd
  ab5c71:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  ab5c77:	c4 41 2d 15 d3       	vunpckhpd ymm10,ymm10,ymm11
  ab5c7c:	c4 41 2c c6 d4 88    	vshufps ymm10,ymm10,ymm12,0x88
  ab5c82:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  ab5c88:	c5 7c 10 59 40       	vmovups ymm11,YMMWORD PTR [rcx+0x40]
  ab5c8d:	c5 7c 10 61 60       	vmovups ymm12,YMMWORD PTR [rcx+0x60]
  ab5c92:	c5 7c 10 a9 80 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0x80]
  ab5c99:	00 
  ab5c9a:	62 e1 7c 28 10 41 05 	vmovups ymm16,YMMWORD PTR [rcx+0xa0]
  ab5ca1:	62 c1 34 28 59 cb    	vmulps ymm17,ymm9,ymm11
  ab5ca7:	62 c2 3d 28 bc cc    	vfnmadd231ps ymm17,ymm8,ymm12
  ab5cad:	62 c1 4c 28 59 d5    	vmulps ymm18,ymm6,ymm13
  ab5cb3:	62 a2 2d 28 bc d0    	vfnmadd231ps ymm18,ymm10,ymm16
  ab5cb9:	62 a1 74 20 58 da    	vaddps ymm19,ymm17,ymm18
  ab5cbf:	c4 41 3c 59 c3       	vmulps ymm8,ymm8,ymm11
  ab5cc4:	c4 42 35 b8 c4       	vfmadd231ps ymm8,ymm9,ymm12
  ab5cc9:	c4 41 2c 59 cd       	vmulps ymm9,ymm10,ymm13
  ab5cce:	62 32 4d 28 b8 c8    	vfmadd231ps ymm9,ymm6,ymm16
  ab5cd4:	c4 c1 3c 58 f1       	vaddps ymm6,ymm8,ymm9
  ab5cd9:	c5 7c 28 d4          	vmovaps ymm10,ymm4
  ab5cdd:	62 52 65 20 ac d7    	vfnmadd213ps ymm10,ymm19,ymm15
  ab5ce3:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  ab5ce8:	62 11 3c 28 59 c0    	vmulps ymm8,ymm8,ymm24
  ab5cee:	c4 41 2c 58 c8       	vaddps ymm9,ymm10,ymm8
  ab5cf3:	c5 7c 28 dc          	vmovaps ymm11,ymm4
  ab5cf7:	c4 42 4d ac de       	vfnmadd213ps ymm11,ymm6,ymm14
  ab5cfc:	62 31 74 20 5c e2    	vsubps ymm12,ymm17,ymm18
  ab5d02:	62 11 1c 28 59 e0    	vmulps ymm12,ymm12,ymm24
  ab5d08:	c4 41 24 5c ec       	vsubps ymm13,ymm11,ymm12
  ab5d0d:	c4 41 2c 5c c0       	vsubps ymm8,ymm10,ymm8
  ab5d12:	c4 41 24 58 d4       	vaddps ymm10,ymm11,ymm12
  ab5d17:	c5 8c 58 f6          	vaddps ymm6,ymm14,ymm6
  ab5d1b:	62 31 04 28 58 db    	vaddps ymm11,ymm15,ymm19
  ab5d21:	c4 c3 7d 19 f4 01    	vextractf128 xmm12,ymm6,0x1
  ab5d27:	62 d2 45 28 7f f3    	vpermt2ps ymm6,ymm7,ymm11
  ab5d2d:	c5 fc 11 34 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm6
  ab5d32:	c4 63 7d 19 de 01    	vextractf128 xmm6,ymm11,0x1
  ab5d38:	c5 98 14 f6          	vunpcklps xmm6,xmm12,xmm6
  ab5d3c:	c5 f8 13 74 16 20    	vmovlps QWORD PTR [rsi+rdx*1+0x20],xmm6
  ab5d42:	c4 63 7d 19 ee 01    	vextractf128 xmm6,ymm13,0x1
  ab5d48:	62 52 45 28 7f e9    	vpermt2ps ymm13,ymm7,ymm9
  ab5d4e:	c5 7c 11 6c 16 28    	vmovups YMMWORD PTR [rsi+rdx*1+0x28],ymm13
  ab5d54:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  ab5d5a:	c4 c1 48 14 f1       	vunpcklps xmm6,xmm6,xmm9
  ab5d5f:	c5 f8 13 74 16 48    	vmovlps QWORD PTR [rsi+rdx*1+0x48],xmm6
  ab5d65:	c4 63 7d 19 d6 01    	vextractf128 xmm6,ymm10,0x1
  ab5d6b:	62 52 45 28 7f d0    	vpermt2ps ymm10,ymm7,ymm8
  ab5d71:	c5 7c 11 54 16 50    	vmovups YMMWORD PTR [rsi+rdx*1+0x50],ymm10
  ab5d77:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  ab5d7d:	c4 c1 48 14 f0       	vunpcklps xmm6,xmm6,xmm8
  ab5d82:	c5 f8 13 74 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm6
  ab5d88:	48 83 c2 78          	add    rdx,0x78
  ab5d8c:	48 39 d0             	cmp    rax,rdx
  ab5d8f:	0f 85 bb fc ff ff    	jne    ab5a50 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x50>
  ab5d95:	c5 f8 77             	vzeroupper
  ab5d98:	c3                   	ret
