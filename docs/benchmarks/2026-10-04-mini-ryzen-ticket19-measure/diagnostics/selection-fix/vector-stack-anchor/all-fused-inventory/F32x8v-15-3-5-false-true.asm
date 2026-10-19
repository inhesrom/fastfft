
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b20b40 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b20b40:	48 6b c2 78          	imul   rax,rdx,0x78
  b20b44:	31 d2                	xor    edx,edx
  b20b46:	62 e2 7d 28 18 1d 84 	vbroadcastss ymm19,DWORD PTR [rip+0xffffffffff554784]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b20b4d:	47 55 ff 
  b20b50:	c4 e2 7d 18 0d 07 49 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff554907]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b20b57:	55 ff 
  b20b59:	c4 e2 7d 18 15 86 4b 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff554b86]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  b20b60:	55 ff 
  b20b62:	c4 e2 7d 18 1d d9 4a 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff554ad9]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  b20b69:	55 ff 
  b20b6b:	c4 e2 7d 18 25 e4 4b 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff554be4]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  b20b72:	55 ff 
  b20b74:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  b20b78:	c4 e2 7d 18 35 1f 48 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff55481f]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  b20b7f:	55 ff 
  b20b81:	c5 fc 28 3d 37 77 55 	vmovaps ymm7,YMMWORD PTR [rip+0xffffffffff557737]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  b20b88:	ff 
  b20b89:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  b20b90:	c5 7c 10 44 17 28    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x28]
  b20b96:	c5 7b 10 4c 17 48    	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0x48]
  b20b9c:	c4 41 3c c6 d1 88    	vshufps ymm10,ymm8,ymm9,0x88
  b20ba2:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  b20ba8:	c5 7c 10 5c 17 50    	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x50]
  b20bae:	c5 7b 10 64 17 70    	vmovsd xmm12,QWORD PTR [rdi+rdx*1+0x70]
  b20bb4:	c4 41 24 c6 ec 88    	vshufps ymm13,ymm11,ymm12,0x88
  b20bba:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  b20bc0:	c4 41 2c 5c f5       	vsubps ymm14,ymm10,ymm13
  b20bc5:	62 31 0c 28 59 f3    	vmulps ymm14,ymm14,ymm19
  b20bcb:	c4 41 3c c6 c1 dd    	vshufps ymm8,ymm8,ymm9,0xdd
  b20bd1:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b20bd7:	c4 41 24 c6 cc dd    	vshufps ymm9,ymm11,ymm12,0xdd
  b20bdd:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  b20be3:	c4 41 3c 58 d9       	vaddps ymm11,ymm8,ymm9
  b20be8:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  b20bed:	c5 7b 10 7c 17 20    	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x20]
  b20bf3:	62 c1 1c 28 c6 c7 dd 	vshufps ymm16,ymm12,ymm15,0xdd
  b20bfa:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b20c01:	62 e1 7c 28 28 c9    	vmovaps ymm17,ymm1
  b20c07:	62 a2 25 28 ac c8    	vfnmadd213ps ymm17,ymm11,ymm16
  b20c0d:	62 a1 0c 28 58 d1    	vaddps ymm18,ymm14,ymm17
  b20c13:	c4 41 2c 58 d5       	vaddps ymm10,ymm10,ymm13
  b20c18:	c4 41 1c c6 e7 88    	vshufps ymm12,ymm12,ymm15,0x88
  b20c1e:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b20c24:	c5 7c 28 e9          	vmovaps ymm13,ymm1
  b20c28:	c4 42 2d ac ec       	vfnmadd213ps ymm13,ymm10,ymm12
  b20c2d:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  b20c32:	62 31 3c 28 59 c3    	vmulps ymm8,ymm8,ymm19
  b20c38:	c4 41 14 5c c8       	vsubps ymm9,ymm13,ymm8
  b20c3d:	62 51 74 20 5c f6    	vsubps ymm14,ymm17,ymm14
  b20c43:	c4 41 14 58 c0       	vaddps ymm8,ymm13,ymm8
  b20c48:	62 51 7c 20 58 eb    	vaddps ymm13,ymm16,ymm11
  b20c4e:	c4 41 1c 58 d2       	vaddps ymm10,ymm12,ymm10
  b20c53:	c4 41 78 28 da       	vmovaps xmm11,xmm10
  b20c58:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  b20c5e:	c4 41 78 28 e0       	vmovaps xmm12,xmm8
  b20c63:	c4 43 7d 19 c7 01    	vextractf128 xmm15,ymm8,0x1
  b20c69:	62 c1 7c 08 28 c1    	vmovaps xmm16,xmm9
  b20c6f:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  b20c75:	c4 41 2d 14 c9       	vunpcklpd ymm9,ymm10,ymm9
  b20c7a:	62 31 a5 28 15 d0    	vunpckhpd ymm10,ymm11,ymm16
  b20c80:	62 31 a5 28 14 d8    	vunpcklpd ymm11,ymm11,ymm16
  b20c86:	62 c1 fe 08 7e c0    	vmovq  xmm16,xmm8
  b20c8c:	c4 c1 1d 73 dc 08    	vpsrldq ymm12,ymm12,0x8
  b20c92:	c4 63 05 0c fd cc    	vblendps ymm15,ymm15,ymm5,0xcc
  b20c98:	62 31 24 28 c6 c0 88 	vshufps ymm8,ymm11,ymm16,0x88
  b20c9f:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  b20ca5:	62 31 24 28 c6 d8 dd 	vshufps ymm11,ymm11,ymm16,0xdd
  b20cac:	62 c1 24 28 c6 c3 d8 	vshufps ymm16,ymm11,ymm11,0xd8
  b20cb3:	c4 41 2c c6 dc 88    	vshufps ymm11,ymm10,ymm12,0x88
  b20cb9:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  b20cbf:	c4 41 2c c6 d4 dd    	vshufps ymm10,ymm10,ymm12,0xdd
  b20cc5:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  b20ccb:	c4 41 34 c6 cf 88    	vshufps ymm9,ymm9,ymm15,0x88
  b20cd1:	c4 41 34 c6 e1 d8    	vshufps ymm12,ymm9,ymm9,0xd8
  b20cd7:	c4 41 78 28 cd       	vmovaps xmm9,xmm13
  b20cdc:	c4 43 7d 19 ed 01    	vextractf128 xmm13,ymm13,0x1
  b20ce2:	c4 41 78 28 fe       	vmovaps xmm15,xmm14
  b20ce7:	c4 63 7d 19 f0 01    	vextractf128 xmm0,ymm14,0x1
  b20ced:	62 a1 7c 08 28 ca    	vmovaps xmm17,xmm18
  b20cf3:	62 a3 7d 28 19 d2 01 	vextractf32x4 xmm18,ymm18,0x1
  b20cfa:	62 31 95 28 14 ea    	vunpcklpd ymm13,ymm13,ymm18
  b20d00:	62 a1 b5 28 15 d1    	vunpckhpd ymm18,ymm9,ymm17
  b20d06:	62 a1 b5 28 14 c9    	vunpcklpd ymm17,ymm9,ymm17
  b20d0c:	c4 41 7a 7e f6       	vmovq  xmm14,xmm14
  b20d11:	c4 c1 05 73 df 08    	vpsrldq ymm15,ymm15,0x8
  b20d17:	c4 e3 7d 0c c5 cc    	vblendps ymm0,ymm0,ymm5,0xcc
  b20d1d:	62 51 74 20 c6 ce 88 	vshufps ymm9,ymm17,ymm14,0x88
  b20d24:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  b20d2a:	62 51 74 20 c6 f6 dd 	vshufps ymm14,ymm17,ymm14,0xdd
  b20d31:	c4 41 0c c6 f6 d8    	vshufps ymm14,ymm14,ymm14,0xd8
  b20d37:	62 c1 6c 20 c6 cf 88 	vshufps ymm17,ymm18,ymm15,0x88
  b20d3e:	62 a1 74 20 c6 c9 d8 	vshufps ymm17,ymm17,ymm17,0xd8
  b20d45:	62 51 6c 20 c6 ff dd 	vshufps ymm15,ymm18,ymm15,0xdd
  b20d4c:	c4 41 04 c6 ff d8    	vshufps ymm15,ymm15,ymm15,0xd8
  b20d52:	c5 94 c6 c0 88       	vshufps ymm0,ymm13,ymm0,0x88
  b20d57:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b20d5c:	c5 7c 10 69 40       	vmovups ymm13,YMMWORD PTR [rcx+0x40]
  b20d61:	62 e1 7c 28 10 51 03 	vmovups ymm18,YMMWORD PTR [rcx+0x60]
  b20d68:	62 e1 7c 28 10 61 04 	vmovups ymm20,YMMWORD PTR [rcx+0x80]
  b20d6f:	62 e1 7c 28 10 69 05 	vmovups ymm21,YMMWORD PTR [rcx+0xa0]
  b20d76:	62 e1 7c 28 10 71 06 	vmovups ymm22,YMMWORD PTR [rcx+0xc0]
  b20d7d:	62 e1 7c 28 10 79 07 	vmovups ymm23,YMMWORD PTR [rcx+0xe0]
  b20d84:	62 61 7c 28 10 41 08 	vmovups ymm24,YMMWORD PTR [rcx+0x100]
  b20d8b:	62 61 7c 28 10 49 09 	vmovups ymm25,YMMWORD PTR [rcx+0x120]
  b20d92:	62 41 7c 20 59 d5    	vmulps ymm26,ymm16,ymm13
  b20d98:	62 22 0d 28 bc d2    	vfnmadd231ps ymm26,ymm14,ymm18
  b20d9e:	62 01 1c 28 59 d8    	vmulps ymm27,ymm12,ymm24
  b20da4:	62 02 7d 28 bc d9    	vfnmadd231ps ymm27,ymm0,ymm25
  b20daa:	62 01 2c 20 58 e3    	vaddps ymm28,ymm26,ymm27
  b20db0:	62 21 24 28 59 ec    	vmulps ymm29,ymm11,ymm20
  b20db6:	62 22 75 20 bc ed    	vfnmadd231ps ymm29,ymm17,ymm21
  b20dbc:	62 21 2c 28 59 f6    	vmulps ymm30,ymm10,ymm22
  b20dc2:	62 22 05 28 bc f7    	vfnmadd231ps ymm30,ymm15,ymm23
  b20dc8:	62 01 14 20 58 fe    	vaddps ymm31,ymm29,ymm30
  b20dce:	c4 41 0c 59 ed       	vmulps ymm13,ymm14,ymm13
  b20dd3:	62 32 7d 20 b8 ea    	vfmadd231ps ymm13,ymm16,ymm18
  b20dd9:	62 91 7c 28 59 c0    	vmulps ymm0,ymm0,ymm24
  b20ddf:	62 92 1d 28 b8 c1    	vfmadd231ps ymm0,ymm12,ymm25
  b20de5:	c5 14 58 e0          	vaddps ymm12,ymm13,ymm0
  b20de9:	62 31 74 20 59 f4    	vmulps ymm14,ymm17,ymm20
  b20def:	62 32 25 28 b8 f5    	vfmadd231ps ymm14,ymm11,ymm21
  b20df5:	62 31 04 28 59 de    	vmulps ymm11,ymm15,ymm22
  b20dfb:	62 32 2d 28 b8 df    	vfmadd231ps ymm11,ymm10,ymm23
  b20e01:	c4 41 0c 58 fb       	vaddps ymm15,ymm14,ymm11
  b20e06:	c5 7c 28 d2          	vmovaps ymm10,ymm2
  b20e0a:	62 52 1d 20 a8 d0    	vfmadd213ps ymm10,ymm28,ymm8
  b20e10:	62 72 05 20 bc d3    	vfnmadd231ps ymm10,ymm31,ymm3
  b20e16:	c5 94 5c c0          	vsubps ymm0,ymm13,ymm0
  b20e1a:	c4 41 0c 5c eb       	vsubps ymm13,ymm14,ymm11
  b20e1f:	c5 14 59 dc          	vmulps ymm11,ymm13,ymm4
  b20e23:	c4 62 7d b8 de       	vfmadd231ps ymm11,ymm0,ymm6
  b20e28:	c5 7c 28 f2          	vmovaps ymm14,ymm2
  b20e2c:	c4 42 1d a8 f1       	vfmadd213ps ymm14,ymm12,ymm9
  b20e31:	c4 62 05 bc f3       	vfnmadd231ps ymm14,ymm15,ymm3
  b20e36:	62 81 2c 20 5c c3    	vsubps ymm16,ymm26,ymm27
  b20e3c:	62 81 14 20 5c ce    	vsubps ymm17,ymm29,ymm30
  b20e42:	62 e1 74 20 59 d4    	vmulps ymm18,ymm17,ymm4
  b20e48:	62 e2 7d 20 b8 d6    	vfmadd231ps ymm18,ymm16,ymm6
  b20e4e:	62 a1 0c 28 5c e2    	vsubps ymm20,ymm14,ymm18
  b20e54:	62 e1 7c 28 28 eb    	vmovaps ymm21,ymm3
  b20e5a:	62 c2 1d 20 ac e8    	vfnmadd213ps ymm21,ymm28,ymm8
  b20e60:	62 e2 05 20 b8 ea    	vfmadd231ps ymm21,ymm31,ymm2
  b20e66:	c5 fc 59 c4          	vmulps ymm0,ymm0,ymm4
  b20e6a:	c4 c2 4d bc c5       	vfnmadd231ps ymm0,ymm6,ymm13
  b20e6f:	c5 7c 28 eb          	vmovaps ymm13,ymm3
  b20e73:	c4 42 1d ac e9       	vfnmadd213ps ymm13,ymm12,ymm9
  b20e78:	c4 62 05 b8 ea       	vfmadd231ps ymm13,ymm15,ymm2
  b20e7d:	62 e1 7c 20 59 c4    	vmulps ymm16,ymm16,ymm4
  b20e83:	62 a2 4d 28 bc c1    	vfnmadd231ps ymm16,ymm6,ymm17
  b20e89:	62 a1 14 28 5c c8    	vsubps ymm17,ymm13,ymm16
  b20e8f:	62 31 14 28 58 e8    	vaddps ymm13,ymm13,ymm16
  b20e95:	62 31 0c 28 58 f2    	vaddps ymm14,ymm14,ymm18
  b20e9b:	c4 41 1c 58 c9       	vaddps ymm9,ymm12,ymm9
  b20ea0:	c4 41 34 58 cf       	vaddps ymm9,ymm9,ymm15
  b20ea5:	62 11 3c 08 58 c4    	vaddps xmm8,xmm8,xmm28
  b20eab:	62 11 3c 08 58 c7    	vaddps xmm8,xmm8,xmm31
  b20eb1:	62 52 45 28 7f c1    	vpermt2ps ymm8,ymm7,ymm9
  b20eb7:	c4 43 7d 19 c1 01    	vextractf128 xmm9,ymm8,0x1
  b20ebd:	c5 78 13 4c 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm9
  b20ec3:	c5 78 11 04 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm8
  b20ec8:	c4 41 28 58 c3       	vaddps xmm8,xmm10,xmm11
  b20ecd:	62 32 45 28 7f c4    	vpermt2ps ymm8,ymm7,ymm20
  b20ed3:	c5 78 11 44 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm8
  b20ed9:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  b20edf:	c5 78 13 44 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm8
  b20ee5:	62 71 54 00 58 c0    	vaddps xmm8,xmm21,xmm0
  b20eeb:	62 32 45 28 7f c1    	vpermt2ps ymm8,ymm7,ymm17
  b20ef1:	c5 78 11 44 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm8
  b20ef7:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  b20efd:	c5 78 13 44 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm8
  b20f03:	62 f1 54 00 5c c0    	vsubps xmm0,xmm21,xmm0
  b20f09:	62 d2 45 28 7f c5    	vpermt2ps ymm0,ymm7,ymm13
  b20f0f:	c5 f8 11 44 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm0
  b20f15:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b20f1b:	c5 f8 13 44 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm0
  b20f21:	c4 c1 28 5c c3       	vsubps xmm0,xmm10,xmm11
  b20f26:	62 d2 45 28 7f c6    	vpermt2ps ymm0,ymm7,ymm14
  b20f2c:	c5 f8 11 44 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm0
  b20f32:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b20f38:	c5 f8 13 44 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm0
  b20f3e:	48 83 c2 78          	add    rdx,0x78
  b20f42:	48 39 d0             	cmp    rax,rdx
  b20f45:	0f 85 45 fc ff ff    	jne    b20b90 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x50>
  b20f4b:	c5 f8 77             	vzeroupper
  b20f4e:	c3                   	ret
