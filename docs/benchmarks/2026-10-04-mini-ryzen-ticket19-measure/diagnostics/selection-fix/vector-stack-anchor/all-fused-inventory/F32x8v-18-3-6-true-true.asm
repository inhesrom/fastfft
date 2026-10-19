
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ac7a00 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ac7a00:	48 c1 e2 04          	shl    rdx,0x4
  ac7a04:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  ac7a08:	31 d2                	xor    edx,edx
  ac7a0a:	c4 e2 7d 18 05 c1 d8 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5ad8c1]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ac7a11:	5a ff 
  ac7a13:	c4 e2 7d 18 0d 44 da 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5ada44]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ac7a1a:	5a ff 
  ac7a1c:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  ac7a20:	c5 fc 28 1d 98 08 5b 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff5b0898]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  ac7a27:	ff 
  ac7a28:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  ac7a2f:	00 
  ac7a30:	c5 fc 10 64 17 30    	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x30]
  ac7a36:	c5 f8 10 6c 17 50    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x50]
  ac7a3c:	c5 dc c6 f5 dd       	vshufps ymm6,ymm4,ymm5,0xdd
  ac7a41:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  ac7a47:	c5 fc 10 7c 17 60    	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x60]
  ac7a4d:	c5 78 10 84 17 80 00 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x80]
  ac7a54:	00 00 
  ac7a56:	c4 41 44 c6 c8 dd    	vshufps ymm9,ymm7,ymm8,0xdd
  ac7a5c:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  ac7a62:	c4 41 4c 5c d1       	vsubps ymm10,ymm6,ymm9
  ac7a67:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  ac7a6b:	c5 dc c6 e5 88       	vshufps ymm4,ymm4,ymm5,0x88
  ac7a70:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  ac7a76:	c4 c1 44 c6 e8 88    	vshufps ymm5,ymm7,ymm8,0x88
  ac7a7c:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  ac7a82:	c5 dc 58 fd          	vaddps ymm7,ymm4,ymm5
  ac7a86:	c5 7c 10 04 17       	vmovups ymm8,YMMWORD PTR [rdi+rdx*1]
  ac7a8b:	c5 78 10 5c 17 20    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x20]
  ac7a91:	c4 41 3c c6 e3 88    	vshufps ymm12,ymm8,ymm11,0x88
  ac7a97:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  ac7a9d:	c5 7c 28 e9          	vmovaps ymm13,ymm1
  ac7aa1:	c4 42 45 ac ec       	vfnmadd213ps ymm13,ymm7,ymm12
  ac7aa6:	c4 41 2c 58 f5       	vaddps ymm14,ymm10,ymm13
  ac7aab:	c5 b4 58 f6          	vaddps ymm6,ymm9,ymm6
  ac7aaf:	c4 41 3c c6 c3 dd    	vshufps ymm8,ymm8,ymm11,0xdd
  ac7ab5:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  ac7abb:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  ac7abf:	c4 42 4d ac c8       	vfnmadd213ps ymm9,ymm6,ymm8
  ac7ac4:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  ac7ac8:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  ac7acc:	c5 b4 5c ec          	vsubps ymm5,ymm9,ymm4
  ac7ad0:	c4 41 14 5c d2       	vsubps ymm10,ymm13,ymm10
  ac7ad5:	c5 b4 58 e4          	vaddps ymm4,ymm9,ymm4
  ac7ad9:	c5 1c 58 e7          	vaddps ymm12,ymm12,ymm7
  ac7add:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  ac7ae1:	c5 f8 28 fe          	vmovaps xmm7,xmm6
  ac7ae5:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  ac7aeb:	c5 78 28 c4          	vmovaps xmm8,xmm4
  ac7aef:	c4 c3 7d 19 e1 01    	vextractf128 xmm9,ymm4,0x1
  ac7af5:	c5 78 28 dd          	vmovaps xmm11,xmm5
  ac7af9:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  ac7aff:	c5 cd 14 f5          	vunpcklpd ymm6,ymm6,ymm5
  ac7b03:	c4 41 45 15 eb       	vunpckhpd ymm13,ymm7,ymm11
  ac7b08:	c4 c1 45 14 eb       	vunpcklpd ymm5,ymm7,ymm11
  ac7b0d:	c5 fa 7e fc          	vmovq  xmm7,xmm4
  ac7b11:	c4 c1 3d 73 d8 08    	vpsrldq ymm8,ymm8,0x8
  ac7b17:	c4 63 35 0c fa cc    	vblendps ymm15,ymm9,ymm2,0xcc
  ac7b1d:	c5 d4 c6 e7 88       	vshufps ymm4,ymm5,ymm7,0x88
  ac7b22:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ac7b27:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  ac7b2c:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ac7b31:	c4 c1 14 c6 f8 88    	vshufps ymm7,ymm13,ymm8,0x88
  ac7b37:	c5 44 c6 df d8       	vshufps ymm11,ymm7,ymm7,0xd8
  ac7b3c:	c4 c1 14 c6 f8 dd    	vshufps ymm7,ymm13,ymm8,0xdd
  ac7b42:	c5 44 c6 c7 d8       	vshufps ymm8,ymm7,ymm7,0xd8
  ac7b47:	c4 c1 4c c6 ff 88    	vshufps ymm7,ymm6,ymm15,0x88
  ac7b4d:	c5 44 c6 cf d8       	vshufps ymm9,ymm7,ymm7,0xd8
  ac7b52:	c4 c1 4c c6 f7 dd    	vshufps ymm6,ymm6,ymm15,0xdd
  ac7b58:	c5 cc c6 fe d8       	vshufps ymm7,ymm6,ymm6,0xd8
  ac7b5d:	c5 78 29 e6          	vmovaps xmm6,xmm12
  ac7b61:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  ac7b67:	c4 41 78 28 ea       	vmovaps xmm13,xmm10
  ac7b6c:	c4 43 7d 19 d7 01    	vextractf128 xmm15,ymm10,0x1
  ac7b72:	62 c1 7c 08 28 c6    	vmovaps xmm16,xmm14
  ac7b78:	c4 43 7d 19 f6 01    	vextractf128 xmm14,ymm14,0x1
  ac7b7e:	c4 41 1d 14 f6       	vunpcklpd ymm14,ymm12,ymm14
  ac7b83:	62 a1 cd 28 15 c8    	vunpckhpd ymm17,ymm6,ymm16
  ac7b89:	62 31 cd 28 14 e0    	vunpcklpd ymm12,ymm6,ymm16
  ac7b8f:	c4 41 7a 7e d2       	vmovq  xmm10,xmm10
  ac7b94:	c4 c1 15 73 dd 08    	vpsrldq ymm13,ymm13,0x8
  ac7b9a:	c4 63 05 0c fa cc    	vblendps ymm15,ymm15,ymm2,0xcc
  ac7ba0:	c4 c1 1c c6 f2 88    	vshufps ymm6,ymm12,ymm10,0x88
  ac7ba6:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ac7bab:	c4 41 1c c6 d2 dd    	vshufps ymm10,ymm12,ymm10,0xdd
  ac7bb1:	c4 41 2c c6 e2 d8    	vshufps ymm12,ymm10,ymm10,0xd8
  ac7bb7:	62 51 74 20 c6 d5 88 	vshufps ymm10,ymm17,ymm13,0x88
  ac7bbe:	62 c1 2c 28 c6 c2 d8 	vshufps ymm16,ymm10,ymm10,0xd8
  ac7bc5:	62 51 74 20 c6 d5 dd 	vshufps ymm10,ymm17,ymm13,0xdd
  ac7bcc:	c4 41 2c c6 ea d8    	vshufps ymm13,ymm10,ymm10,0xd8
  ac7bd2:	c4 41 0c c6 d7 88    	vshufps ymm10,ymm14,ymm15,0x88
  ac7bd8:	62 c1 2c 28 c6 ca d8 	vshufps ymm17,ymm10,ymm10,0xd8
  ac7bdf:	c4 41 0c c6 d7 dd    	vshufps ymm10,ymm14,ymm15,0xdd
  ac7be5:	c4 41 2c c6 f2 d8    	vshufps ymm14,ymm10,ymm10,0xd8
  ac7beb:	c5 7c 10 b9 80 00 00 	vmovups ymm15,YMMWORD PTR [rcx+0x80]
  ac7bf2:	00 
  ac7bf3:	62 e1 7c 28 10 51 05 	vmovups ymm18,YMMWORD PTR [rcx+0xa0]
  ac7bfa:	c4 41 24 59 d7       	vmulps ymm10,ymm11,ymm15
  ac7bff:	62 32 7d 20 bc d2    	vfnmadd231ps ymm10,ymm16,ymm18
  ac7c05:	62 51 7c 20 59 ff    	vmulps ymm15,ymm16,ymm15
  ac7c0b:	62 e1 7c 28 10 41 08 	vmovups ymm16,YMMWORD PTR [rcx+0x100]
  ac7c12:	62 32 25 28 b8 fa    	vfmadd231ps ymm15,ymm11,ymm18
  ac7c18:	c5 7c 10 99 20 01 00 	vmovups ymm11,YMMWORD PTR [rcx+0x120]
  ac7c1f:	00 
  ac7c20:	62 a1 34 28 59 d0    	vmulps ymm18,ymm9,ymm16
  ac7c26:	62 c2 75 20 bc d3    	vfnmadd231ps ymm18,ymm17,ymm11
  ac7c2c:	62 a1 74 20 59 c0    	vmulps ymm16,ymm17,ymm16
  ac7c32:	62 e1 7c 28 10 49 06 	vmovups ymm17,YMMWORD PTR [rcx+0xc0]
  ac7c39:	62 c2 35 28 b8 c3    	vfmadd231ps ymm16,ymm9,ymm11
  ac7c3f:	c5 7c 10 89 e0 00 00 	vmovups ymm9,YMMWORD PTR [rcx+0xe0]
  ac7c46:	00 
  ac7c47:	62 31 3c 28 59 d9    	vmulps ymm11,ymm8,ymm17
  ac7c4d:	c4 42 15 bc d9       	vfnmadd231ps ymm11,ymm13,ymm9
  ac7c52:	62 31 14 28 59 e9    	vmulps ymm13,ymm13,ymm17
  ac7c58:	62 e1 7c 28 10 49 0a 	vmovups ymm17,YMMWORD PTR [rcx+0x140]
  ac7c5f:	c4 42 3d b8 e9       	vfmadd231ps ymm13,ymm8,ymm9
  ac7c64:	c5 7c 10 81 60 01 00 	vmovups ymm8,YMMWORD PTR [rcx+0x160]
  ac7c6b:	00 
  ac7c6c:	62 31 44 28 59 c9    	vmulps ymm9,ymm7,ymm17
  ac7c72:	c4 42 0d bc c8       	vfnmadd231ps ymm9,ymm14,ymm8
  ac7c77:	62 31 0c 28 59 f1    	vmulps ymm14,ymm14,ymm17
  ac7c7d:	62 e1 7c 28 10 49 02 	vmovups ymm17,YMMWORD PTR [rcx+0x40]
  ac7c84:	c4 42 45 b8 f0       	vfmadd231ps ymm14,ymm7,ymm8
  ac7c89:	c5 fc 10 79 60       	vmovups ymm7,YMMWORD PTR [rcx+0x60]
  ac7c8e:	62 31 54 28 59 c1    	vmulps ymm8,ymm5,ymm17
  ac7c94:	c4 62 1d bc c7       	vfnmadd231ps ymm8,ymm12,ymm7
  ac7c99:	62 31 1c 28 59 e1    	vmulps ymm12,ymm12,ymm17
  ac7c9f:	62 a1 2c 28 58 ca    	vaddps ymm17,ymm10,ymm18
  ac7ca5:	c4 62 55 b8 e7       	vfmadd231ps ymm12,ymm5,ymm7
  ac7caa:	62 b1 5c 28 58 e9    	vaddps ymm5,ymm4,ymm17
  ac7cb0:	c4 c1 34 58 f8       	vaddps ymm7,ymm9,ymm8
  ac7cb5:	62 e2 75 28 ac cc    	vfnmadd213ps ymm17,ymm1,ymm4
  ac7cbb:	62 a1 04 28 58 d8    	vaddps ymm19,ymm15,ymm16
  ac7cc1:	62 31 04 28 5c f8    	vsubps ymm15,ymm15,ymm16
  ac7cc7:	62 e1 24 28 58 c7    	vaddps ymm16,ymm11,ymm7
  ac7ccd:	c4 62 75 bc df       	vfnmadd231ps ymm11,ymm1,ymm7
  ac7cd2:	c4 c1 0c 58 fc       	vaddps ymm7,ymm14,ymm12
  ac7cd7:	c4 41 0c 5c e4       	vsubps ymm12,ymm14,ymm12
  ac7cdc:	62 f1 64 20 58 e6    	vaddps ymm4,ymm19,ymm6
  ac7ce2:	62 e2 75 28 ac de    	vfnmadd213ps ymm19,ymm1,ymm6
  ac7ce8:	62 b1 2c 28 5c f2    	vsubps ymm6,ymm10,ymm18
  ac7cee:	c5 14 58 d7          	vaddps ymm10,ymm13,ymm7
  ac7cf2:	c4 62 75 bc ef       	vfnmadd231ps ymm13,ymm1,ymm7
  ac7cf7:	c5 84 59 f8          	vmulps ymm7,ymm15,ymm0
  ac7cfb:	c4 41 34 5c c0       	vsubps ymm8,ymm9,ymm8
  ac7d00:	62 71 74 20 58 cf    	vaddps ymm9,ymm17,ymm7
  ac7d06:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  ac7d0a:	62 f1 74 20 5c ff    	vsubps ymm7,ymm17,ymm7
  ac7d10:	c4 41 24 58 f4       	vaddps ymm14,ymm11,ymm12
  ac7d15:	c5 cc 59 f0          	vmulps ymm6,ymm6,ymm0
  ac7d19:	c4 41 24 5c dc       	vsubps ymm11,ymm11,ymm12
  ac7d1e:	62 71 64 20 5c e6    	vsubps ymm12,ymm19,ymm6
  ac7d24:	c5 3c 59 c0          	vmulps ymm8,ymm8,ymm0
  ac7d28:	62 b1 4c 28 58 f3    	vaddps ymm6,ymm6,ymm19
  ac7d2e:	c4 41 14 5c f8       	vsubps ymm15,ymm13,ymm8
  ac7d33:	c4 41 14 58 c0       	vaddps ymm8,ymm13,ymm8
  ac7d38:	c4 41 34 5c ee       	vsubps ymm13,ymm9,ymm14
  ac7d3d:	c4 41 34 58 ce       	vaddps ymm9,ymm9,ymm14
  ac7d42:	c5 24 58 f7          	vaddps ymm14,ymm11,ymm7
  ac7d46:	c4 c1 44 5c fb       	vsubps ymm7,ymm7,ymm11
  ac7d4b:	62 31 54 28 5c d8    	vsubps ymm11,ymm5,ymm16
  ac7d51:	62 b1 54 28 58 e8    	vaddps ymm5,ymm5,ymm16
  ac7d57:	62 c1 5c 08 58 c2    	vaddps xmm16,xmm4,xmm10
  ac7d5d:	62 e2 65 28 7f c5    	vpermt2ps ymm16,ymm3,ymm5
  ac7d63:	62 e3 7d 28 19 c5 01 	vextractf32x4 xmm5,ymm16,0x1
  ac7d6a:	c5 f8 13 6c 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm5
  ac7d70:	62 e1 7c 08 11 04 16 	vmovups XMMWORD PTR [rsi+rdx*1],xmm16
  ac7d77:	c4 c1 18 5c ef       	vsubps xmm5,xmm12,xmm15
  ac7d7c:	62 d2 65 28 7f ed    	vpermt2ps ymm5,ymm3,ymm13
  ac7d82:	c4 c3 7d 19 ed 01    	vextractf128 xmm13,ymm5,0x1
  ac7d88:	c5 78 13 6c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm13
  ac7d8e:	c5 f8 11 6c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm5
  ac7d94:	c5 b8 58 ee          	vaddps xmm5,xmm8,xmm6
  ac7d98:	62 d2 65 28 7f ee    	vpermt2ps ymm5,ymm3,ymm14
  ac7d9e:	c4 c3 7d 19 ed 01    	vextractf128 xmm13,ymm5,0x1
  ac7da4:	c5 78 13 6c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm13
  ac7daa:	c5 f8 11 6c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm5
  ac7db0:	c4 c1 58 5c e2       	vsubps xmm4,xmm4,xmm10
  ac7db5:	62 d2 65 28 7f e3    	vpermt2ps ymm4,ymm3,ymm11
  ac7dbb:	c4 e3 7d 19 e5 01    	vextractf128 xmm5,ymm4,0x1
  ac7dc1:	c5 f8 13 6c 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm5
  ac7dc7:	c5 f8 11 64 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm4
  ac7dcd:	c4 c1 18 58 e7       	vaddps xmm4,xmm12,xmm15
  ac7dd2:	62 d2 65 28 7f e1    	vpermt2ps ymm4,ymm3,ymm9
  ac7dd8:	c4 e3 7d 19 e5 01    	vextractf128 xmm5,ymm4,0x1
  ac7dde:	c5 f8 13 6c 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm5
  ac7de4:	c5 f8 11 64 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm4
  ac7dea:	c4 c1 48 5c e0       	vsubps xmm4,xmm6,xmm8
  ac7def:	62 f2 65 28 7f e7    	vpermt2ps ymm4,ymm3,ymm7
  ac7df5:	c4 e3 7d 19 e5 01    	vextractf128 xmm5,ymm4,0x1
  ac7dfb:	c5 f8 13 ac 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm5
  ac7e02:	00 00 
  ac7e04:	c5 f8 11 64 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm4
  ac7e0a:	48 81 c2 90 00 00 00 	add    rdx,0x90
  ac7e11:	48 39 d0             	cmp    rax,rdx
  ac7e14:	0f 85 16 fc ff ff    	jne    ac7a30 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  ac7e1a:	c5 f8 77             	vzeroupper
  ac7e1d:	c3                   	ret
