
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ae1c40 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ae1c40:	48 6b c2 78          	imul   rax,rdx,0x78
  ae1c44:	31 d2                	xor    edx,edx
  ae1c46:	62 e2 7d 28 18 1d 84 	vbroadcastss ymm19,DWORD PTR [rip+0xffffffffff593684]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ae1c4d:	36 59 ff 
  ae1c50:	c4 e2 7d 18 0d 07 38 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff593807]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ae1c57:	59 ff 
  ae1c59:	c4 e2 7d 18 15 86 3a 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff593a86]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  ae1c60:	59 ff 
  ae1c62:	c4 e2 7d 18 1d d9 39 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff5939d9]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  ae1c69:	59 ff 
  ae1c6b:	c4 e2 7d 18 25 e4 3a 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff593ae4]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  ae1c72:	59 ff 
  ae1c74:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  ae1c78:	c4 e2 7d 18 35 1f 37 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff59371f]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  ae1c7f:	59 ff 
  ae1c81:	c5 fc 28 3d 37 66 59 	vmovaps ymm7,YMMWORD PTR [rip+0xffffffffff596637]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  ae1c88:	ff 
  ae1c89:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  ae1c90:	c5 7c 10 44 17 28    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x28]
  ae1c96:	c5 7b 10 4c 17 48    	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0x48]
  ae1c9c:	c4 41 3c c6 d1 dd    	vshufps ymm10,ymm8,ymm9,0xdd
  ae1ca2:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  ae1ca8:	c5 7c 10 5c 17 50    	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x50]
  ae1cae:	c5 7b 10 64 17 70    	vmovsd xmm12,QWORD PTR [rdi+rdx*1+0x70]
  ae1cb4:	c4 41 24 c6 ec dd    	vshufps ymm13,ymm11,ymm12,0xdd
  ae1cba:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  ae1cc0:	c4 41 2c 5c f5       	vsubps ymm14,ymm10,ymm13
  ae1cc5:	62 31 0c 28 59 f3    	vmulps ymm14,ymm14,ymm19
  ae1ccb:	c4 41 3c c6 c1 88    	vshufps ymm8,ymm8,ymm9,0x88
  ae1cd1:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  ae1cd7:	c4 41 24 c6 cc 88    	vshufps ymm9,ymm11,ymm12,0x88
  ae1cdd:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  ae1ce3:	c4 41 3c 58 d9       	vaddps ymm11,ymm8,ymm9
  ae1ce8:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  ae1ced:	c5 7b 10 7c 17 20    	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x20]
  ae1cf3:	62 c1 1c 28 c6 c7 88 	vshufps ymm16,ymm12,ymm15,0x88
  ae1cfa:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  ae1d01:	62 e1 7c 28 28 c9    	vmovaps ymm17,ymm1
  ae1d07:	62 a2 25 28 ac c8    	vfnmadd213ps ymm17,ymm11,ymm16
  ae1d0d:	62 a1 0c 28 58 d1    	vaddps ymm18,ymm14,ymm17
  ae1d13:	c4 41 2c 58 d5       	vaddps ymm10,ymm10,ymm13
  ae1d18:	c4 41 1c c6 e7 dd    	vshufps ymm12,ymm12,ymm15,0xdd
  ae1d1e:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  ae1d24:	c5 7c 28 e9          	vmovaps ymm13,ymm1
  ae1d28:	c4 42 2d ac ec       	vfnmadd213ps ymm13,ymm10,ymm12
  ae1d2d:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  ae1d32:	62 31 3c 28 59 c3    	vmulps ymm8,ymm8,ymm19
  ae1d38:	c4 41 14 5c c8       	vsubps ymm9,ymm13,ymm8
  ae1d3d:	62 51 74 20 5c f6    	vsubps ymm14,ymm17,ymm14
  ae1d43:	c4 41 14 58 c0       	vaddps ymm8,ymm13,ymm8
  ae1d48:	62 51 7c 20 58 eb    	vaddps ymm13,ymm16,ymm11
  ae1d4e:	c4 41 1c 58 d2       	vaddps ymm10,ymm12,ymm10
  ae1d53:	c4 41 78 28 da       	vmovaps xmm11,xmm10
  ae1d58:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  ae1d5e:	c4 41 78 28 e0       	vmovaps xmm12,xmm8
  ae1d63:	c4 43 7d 19 c7 01    	vextractf128 xmm15,ymm8,0x1
  ae1d69:	62 c1 7c 08 28 c1    	vmovaps xmm16,xmm9
  ae1d6f:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  ae1d75:	c4 41 2d 14 c9       	vunpcklpd ymm9,ymm10,ymm9
  ae1d7a:	62 31 a5 28 15 d0    	vunpckhpd ymm10,ymm11,ymm16
  ae1d80:	62 31 a5 28 14 d8    	vunpcklpd ymm11,ymm11,ymm16
  ae1d86:	62 c1 fe 08 7e c0    	vmovq  xmm16,xmm8
  ae1d8c:	c4 c1 1d 73 dc 08    	vpsrldq ymm12,ymm12,0x8
  ae1d92:	c4 63 05 0c fd cc    	vblendps ymm15,ymm15,ymm5,0xcc
  ae1d98:	62 31 24 28 c6 c0 88 	vshufps ymm8,ymm11,ymm16,0x88
  ae1d9f:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  ae1da5:	62 31 24 28 c6 d8 dd 	vshufps ymm11,ymm11,ymm16,0xdd
  ae1dac:	62 c1 24 28 c6 c3 d8 	vshufps ymm16,ymm11,ymm11,0xd8
  ae1db3:	c4 41 2c c6 dc 88    	vshufps ymm11,ymm10,ymm12,0x88
  ae1db9:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  ae1dbf:	c4 41 2c c6 d4 dd    	vshufps ymm10,ymm10,ymm12,0xdd
  ae1dc5:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  ae1dcb:	c4 41 34 c6 cf 88    	vshufps ymm9,ymm9,ymm15,0x88
  ae1dd1:	c4 41 34 c6 e1 d8    	vshufps ymm12,ymm9,ymm9,0xd8
  ae1dd7:	c4 41 78 28 cd       	vmovaps xmm9,xmm13
  ae1ddc:	c4 43 7d 19 ed 01    	vextractf128 xmm13,ymm13,0x1
  ae1de2:	c4 41 78 28 fe       	vmovaps xmm15,xmm14
  ae1de7:	c4 63 7d 19 f0 01    	vextractf128 xmm0,ymm14,0x1
  ae1ded:	62 a1 7c 08 28 ca    	vmovaps xmm17,xmm18
  ae1df3:	62 a3 7d 28 19 d2 01 	vextractf32x4 xmm18,ymm18,0x1
  ae1dfa:	62 31 95 28 14 ea    	vunpcklpd ymm13,ymm13,ymm18
  ae1e00:	62 a1 b5 28 15 d1    	vunpckhpd ymm18,ymm9,ymm17
  ae1e06:	62 a1 b5 28 14 c9    	vunpcklpd ymm17,ymm9,ymm17
  ae1e0c:	c4 41 7a 7e f6       	vmovq  xmm14,xmm14
  ae1e11:	c4 c1 05 73 df 08    	vpsrldq ymm15,ymm15,0x8
  ae1e17:	c4 e3 7d 0c c5 cc    	vblendps ymm0,ymm0,ymm5,0xcc
  ae1e1d:	62 51 74 20 c6 ce 88 	vshufps ymm9,ymm17,ymm14,0x88
  ae1e24:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  ae1e2a:	62 51 74 20 c6 f6 dd 	vshufps ymm14,ymm17,ymm14,0xdd
  ae1e31:	c4 41 0c c6 f6 d8    	vshufps ymm14,ymm14,ymm14,0xd8
  ae1e37:	62 c1 6c 20 c6 cf 88 	vshufps ymm17,ymm18,ymm15,0x88
  ae1e3e:	62 a1 74 20 c6 c9 d8 	vshufps ymm17,ymm17,ymm17,0xd8
  ae1e45:	62 51 6c 20 c6 ff dd 	vshufps ymm15,ymm18,ymm15,0xdd
  ae1e4c:	c4 41 04 c6 ff d8    	vshufps ymm15,ymm15,ymm15,0xd8
  ae1e52:	c5 94 c6 c0 88       	vshufps ymm0,ymm13,ymm0,0x88
  ae1e57:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  ae1e5c:	c5 7c 10 69 40       	vmovups ymm13,YMMWORD PTR [rcx+0x40]
  ae1e61:	62 e1 7c 28 10 51 03 	vmovups ymm18,YMMWORD PTR [rcx+0x60]
  ae1e68:	62 e1 7c 28 10 61 04 	vmovups ymm20,YMMWORD PTR [rcx+0x80]
  ae1e6f:	62 e1 7c 28 10 69 05 	vmovups ymm21,YMMWORD PTR [rcx+0xa0]
  ae1e76:	62 e1 7c 28 10 71 06 	vmovups ymm22,YMMWORD PTR [rcx+0xc0]
  ae1e7d:	62 e1 7c 28 10 79 07 	vmovups ymm23,YMMWORD PTR [rcx+0xe0]
  ae1e84:	62 61 7c 28 10 41 08 	vmovups ymm24,YMMWORD PTR [rcx+0x100]
  ae1e8b:	62 61 7c 28 10 49 09 	vmovups ymm25,YMMWORD PTR [rcx+0x120]
  ae1e92:	62 41 7c 20 59 d5    	vmulps ymm26,ymm16,ymm13
  ae1e98:	62 22 0d 28 bc d2    	vfnmadd231ps ymm26,ymm14,ymm18
  ae1e9e:	62 01 1c 28 59 d8    	vmulps ymm27,ymm12,ymm24
  ae1ea4:	62 02 7d 28 bc d9    	vfnmadd231ps ymm27,ymm0,ymm25
  ae1eaa:	62 01 2c 20 58 e3    	vaddps ymm28,ymm26,ymm27
  ae1eb0:	62 21 24 28 59 ec    	vmulps ymm29,ymm11,ymm20
  ae1eb6:	62 22 75 20 bc ed    	vfnmadd231ps ymm29,ymm17,ymm21
  ae1ebc:	62 21 2c 28 59 f6    	vmulps ymm30,ymm10,ymm22
  ae1ec2:	62 22 05 28 bc f7    	vfnmadd231ps ymm30,ymm15,ymm23
  ae1ec8:	62 01 14 20 58 fe    	vaddps ymm31,ymm29,ymm30
  ae1ece:	c4 41 0c 59 ed       	vmulps ymm13,ymm14,ymm13
  ae1ed3:	62 32 7d 20 b8 ea    	vfmadd231ps ymm13,ymm16,ymm18
  ae1ed9:	62 91 7c 28 59 c0    	vmulps ymm0,ymm0,ymm24
  ae1edf:	62 92 1d 28 b8 c1    	vfmadd231ps ymm0,ymm12,ymm25
  ae1ee5:	c5 14 58 e0          	vaddps ymm12,ymm13,ymm0
  ae1ee9:	62 31 74 20 59 f4    	vmulps ymm14,ymm17,ymm20
  ae1eef:	62 32 25 28 b8 f5    	vfmadd231ps ymm14,ymm11,ymm21
  ae1ef5:	62 31 04 28 59 de    	vmulps ymm11,ymm15,ymm22
  ae1efb:	62 32 2d 28 b8 df    	vfmadd231ps ymm11,ymm10,ymm23
  ae1f01:	c4 41 0c 58 fb       	vaddps ymm15,ymm14,ymm11
  ae1f06:	62 e1 7c 28 28 c2    	vmovaps ymm16,ymm2
  ae1f0c:	62 c2 1d 20 a8 c0    	vfmadd213ps ymm16,ymm28,ymm8
  ae1f12:	62 e2 05 20 bc c3    	vfnmadd231ps ymm16,ymm31,ymm3
  ae1f18:	c5 94 5c c0          	vsubps ymm0,ymm13,ymm0
  ae1f1c:	c4 41 0c 5c db       	vsubps ymm11,ymm14,ymm11
  ae1f21:	c5 24 59 ec          	vmulps ymm13,ymm11,ymm4
  ae1f25:	c4 62 7d b8 ee       	vfmadd231ps ymm13,ymm0,ymm6
  ae1f2a:	62 51 7c 20 58 f5    	vaddps ymm14,ymm16,ymm13
  ae1f30:	c5 7c 28 d2          	vmovaps ymm10,ymm2
  ae1f34:	c4 42 1d a8 d1       	vfmadd213ps ymm10,ymm12,ymm9
  ae1f39:	c4 62 05 bc d3       	vfnmadd231ps ymm10,ymm15,ymm3
  ae1f3e:	62 81 2c 20 5c cb    	vsubps ymm17,ymm26,ymm27
  ae1f44:	62 81 14 20 5c d6    	vsubps ymm18,ymm29,ymm30
  ae1f4a:	62 e1 6c 20 59 e4    	vmulps ymm20,ymm18,ymm4
  ae1f50:	62 e2 75 20 b8 e6    	vfmadd231ps ymm20,ymm17,ymm6
  ae1f56:	62 e1 7c 28 28 eb    	vmovaps ymm21,ymm3
  ae1f5c:	62 c2 1d 20 ac e8    	vfnmadd213ps ymm21,ymm28,ymm8
  ae1f62:	62 e2 05 20 b8 ea    	vfmadd231ps ymm21,ymm31,ymm2
  ae1f68:	c5 fc 59 c4          	vmulps ymm0,ymm0,ymm4
  ae1f6c:	c4 c2 4d bc c3       	vfnmadd231ps ymm0,ymm6,ymm11
  ae1f71:	62 71 54 20 58 d8    	vaddps ymm11,ymm21,ymm0
  ae1f77:	62 e1 7c 28 28 f3    	vmovaps ymm22,ymm3
  ae1f7d:	62 c2 1d 28 ac f1    	vfnmadd213ps ymm22,ymm12,ymm9
  ae1f83:	62 e2 05 28 b8 f2    	vfmadd231ps ymm22,ymm15,ymm2
  ae1f89:	62 e1 74 20 59 cc    	vmulps ymm17,ymm17,ymm4
  ae1f8f:	62 a2 4d 28 bc ca    	vfnmadd231ps ymm17,ymm6,ymm18
  ae1f95:	62 f1 54 20 5c c0    	vsubps ymm0,ymm21,ymm0
  ae1f9b:	62 51 7c 20 5c ed    	vsubps ymm13,ymm16,ymm13
  ae1fa1:	62 11 3c 28 58 c4    	vaddps ymm8,ymm8,ymm28
  ae1fa7:	62 11 3c 28 58 c7    	vaddps ymm8,ymm8,ymm31
  ae1fad:	c4 41 18 58 c9       	vaddps xmm9,xmm12,xmm9
  ae1fb2:	c4 41 30 58 cf       	vaddps xmm9,xmm9,xmm15
  ae1fb7:	62 52 45 28 7f c8    	vpermt2ps ymm9,ymm7,ymm8
  ae1fbd:	c4 43 7d 19 c8 01    	vextractf128 xmm8,ymm9,0x1
  ae1fc3:	c5 78 13 44 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm8
  ae1fc9:	c5 78 11 0c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm9
  ae1fce:	62 31 2c 08 5c c4    	vsubps xmm8,xmm10,xmm20
  ae1fd4:	62 52 45 28 7f c6    	vpermt2ps ymm8,ymm7,ymm14
  ae1fda:	c5 78 11 44 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm8
  ae1fe0:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  ae1fe6:	c5 78 13 44 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm8
  ae1fec:	62 31 4c 00 5c c1    	vsubps xmm8,xmm22,xmm17
  ae1ff2:	62 52 45 28 7f c3    	vpermt2ps ymm8,ymm7,ymm11
  ae1ff8:	c5 78 11 44 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm8
  ae1ffe:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  ae2004:	c5 78 13 44 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm8
  ae200a:	62 31 4c 00 58 c1    	vaddps xmm8,xmm22,xmm17
  ae2010:	62 72 45 28 7f c0    	vpermt2ps ymm8,ymm7,ymm0
  ae2016:	c5 78 11 44 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm8
  ae201c:	c4 63 7d 19 c0 01    	vextractf128 xmm0,ymm8,0x1
  ae2022:	c5 f8 13 44 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm0
  ae2028:	62 b1 2c 08 58 c4    	vaddps xmm0,xmm10,xmm20
  ae202e:	62 d2 45 28 7f c5    	vpermt2ps ymm0,ymm7,ymm13
  ae2034:	c5 f8 11 44 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm0
  ae203a:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ae2040:	c5 f8 13 44 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm0
  ae2046:	48 83 c2 78          	add    rdx,0x78
  ae204a:	48 39 d0             	cmp    rax,rdx
  ae204d:	0f 85 3d fc ff ff    	jne    ae1c90 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x50>
  ae2053:	c5 f8 77             	vzeroupper
  ae2056:	c3                   	ret
