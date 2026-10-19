
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000716c00 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  716c00:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  716c04:	c5 f8 10 4f 20       	vmovups xmm1,XMMWORD PTR [rdi+0x20]
  716c09:	c5 fc 10 57 30       	vmovups ymm2,YMMWORD PTR [rdi+0x30]
  716c0e:	c5 f8 10 5f 50       	vmovups xmm3,XMMWORD PTR [rdi+0x50]
  716c13:	c5 fc 10 67 60       	vmovups ymm4,YMMWORD PTR [rdi+0x60]
  716c18:	c5 f8 10 af 80 00 00 	vmovups xmm5,XMMWORD PTR [rdi+0x80]
  716c1f:	00 
  716c20:	c5 fc c6 f1 dd       	vshufps ymm6,ymm0,ymm1,0xdd
  716c25:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  716c2b:	c5 ec c6 fb dd       	vshufps ymm7,ymm2,ymm3,0xdd
  716c30:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  716c36:	c5 5c c6 c5 dd       	vshufps ymm8,ymm4,ymm5,0xdd
  716c3b:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  716c41:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  716c46:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  716c4c:	c5 ec c6 cb 88       	vshufps ymm1,ymm2,ymm3,0x88
  716c51:	c4 e3 fd 01 d1 d8    	vpermpd ymm2,ymm1,0xd8
  716c57:	c5 dc c6 cd 88       	vshufps ymm1,ymm4,ymm5,0x88
  716c5c:	c4 e3 fd 01 d9 d8    	vpermpd ymm3,ymm1,0xd8
  716c62:	c5 3c 58 cf          	vaddps ymm9,ymm8,ymm7
  716c66:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  716c6a:	c5 6c 58 db          	vaddps ymm11,ymm2,ymm3
  716c6e:	c4 e2 7d 18 25 e9 e7 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff95e7e9]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  716c75:	95 ff 
  716c77:	c5 a4 58 e8          	vaddps ymm5,ymm11,ymm0
  716c7b:	c4 62 5d ac ce       	vfnmadd213ps ymm9,ymm4,ymm6
  716c80:	c4 e2 7d 18 0d 4b e6 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff95e64b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  716c87:	95 ff 
  716c89:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  716c8d:	c5 ec 59 d1          	vmulps ymm2,ymm2,ymm1
  716c91:	c5 b4 58 da          	vaddps ymm3,ymm9,ymm2
  716c95:	c4 62 5d ac d8       	vfnmadd213ps ymm11,ymm4,ymm0
  716c9a:	c4 c1 44 5c c0       	vsubps ymm0,ymm7,ymm8
  716c9f:	c5 fc 59 c1          	vmulps ymm0,ymm0,ymm1
  716ca3:	c5 a4 5c e0          	vsubps ymm4,ymm11,ymm0
  716ca7:	c5 b4 5c d2          	vsubps ymm2,ymm9,ymm2
  716cab:	c5 24 58 c8          	vaddps ymm9,ymm11,ymm0
  716caf:	c5 78 29 d0          	vmovaps xmm0,xmm10
  716cb3:	c4 63 7d 19 d6 01    	vextractf128 xmm6,ymm10,0x1
  716cb9:	c5 f8 28 fb          	vmovaps xmm7,xmm3
  716cbd:	c4 c3 7d 19 d8 01    	vextractf128 xmm8,ymm3,0x1
  716cc3:	c5 78 28 d2          	vmovaps xmm10,xmm2
  716cc7:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  716ccd:	c5 cd 14 f2          	vunpcklpd ymm6,ymm6,ymm2
  716cd1:	c4 41 7d 15 da       	vunpckhpd ymm11,ymm0,ymm10
  716cd6:	c4 c1 7d 14 c2       	vunpcklpd ymm0,ymm0,ymm10
  716cdb:	c5 fa 7e db          	vmovq  xmm3,xmm3
  716cdf:	c5 c5 73 df 08       	vpsrldq ymm7,ymm7,0x8
  716ce4:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  716ce9:	c4 43 3d 0c e2 cc    	vblendps ymm12,ymm8,ymm10,0xcc
  716cef:	c5 fc c6 cb 88       	vshufps ymm1,ymm0,ymm3,0x88
  716cf4:	c5 fc 11 4c 24 b8    	vmovups YMMWORD PTR [rsp-0x48],ymm1
  716cfa:	c5 fc c6 db dd       	vshufps ymm3,ymm0,ymm3,0xdd
  716cff:	c5 a4 c6 c7 88       	vshufps ymm0,ymm11,ymm7,0x88
  716d04:	c5 7c c6 c0 d8       	vshufps ymm8,ymm0,ymm0,0xd8
  716d09:	c5 a4 c6 ff dd       	vshufps ymm7,ymm11,ymm7,0xdd
  716d0e:	c4 41 4c c6 dc 88    	vshufps ymm11,ymm6,ymm12,0x88
  716d14:	c4 c1 4c c6 f4 dd    	vshufps ymm6,ymm6,ymm12,0xdd
  716d1a:	c5 f8 28 c5          	vmovaps xmm0,xmm5
  716d1e:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  716d24:	c5 78 28 e4          	vmovaps xmm12,xmm4
  716d28:	c4 c3 7d 19 e5 01    	vextractf128 xmm13,ymm4,0x1
  716d2e:	c4 41 78 28 f1       	vmovaps xmm14,xmm9
  716d33:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  716d39:	c4 c1 55 14 e9       	vunpcklpd ymm5,ymm5,ymm9
  716d3e:	c4 41 7d 15 fe       	vunpckhpd ymm15,ymm0,ymm14
  716d43:	c4 c1 7d 14 c6       	vunpcklpd ymm0,ymm0,ymm14
  716d48:	c5 7a 7e cc          	vmovq  xmm9,xmm4
  716d4c:	c4 c1 1d 73 dc 08    	vpsrldq ymm12,ymm12,0x8
  716d52:	c4 43 15 0c ea cc    	vblendps ymm13,ymm13,ymm10,0xcc
  716d58:	c4 c1 7c c6 e1 88    	vshufps ymm4,ymm0,ymm9,0x88
  716d5e:	c4 41 7c c6 c9 dd    	vshufps ymm9,ymm0,ymm9,0xdd
  716d64:	c4 c1 04 c6 c4 88    	vshufps ymm0,ymm15,ymm12,0x88
  716d6a:	c5 7c c6 d0 d8       	vshufps ymm10,ymm0,ymm0,0xd8
  716d6f:	c4 41 04 c6 f4 dd    	vshufps ymm14,ymm15,ymm12,0xdd
  716d75:	c4 41 54 c6 e5 88    	vshufps ymm12,ymm5,ymm13,0x88
  716d7b:	c4 41 54 c6 ed dd    	vshufps ymm13,ymm5,ymm13,0xdd
  716d81:	c5 fc 10 82 80 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0x80]
  716d88:	00 
  716d89:	c5 7c 10 ba a0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xa0]
  716d90:	00 
  716d91:	c5 bc 59 e8          	vmulps ymm5,ymm8,ymm0
  716d95:	c4 c2 2d bc ef       	vfnmadd231ps ymm5,ymm10,ymm15
  716d9a:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  716d9e:	c4 c1 24 c6 c3 d8    	vshufps ymm0,ymm11,ymm11,0xd8
  716da4:	c4 41 1c c6 dc d8    	vshufps ymm11,ymm12,ymm12,0xd8
  716daa:	c4 42 3d b8 d7       	vfmadd231ps ymm10,ymm8,ymm15
  716daf:	c5 7c 10 a2 00 01 00 	vmovups ymm12,YMMWORD PTR [rdx+0x100]
  716db6:	00 
  716db7:	c5 7c 10 ba 20 01 00 	vmovups ymm15,YMMWORD PTR [rdx+0x120]
  716dbe:	00 
  716dbf:	c5 1c 59 c0          	vmulps ymm8,ymm12,ymm0
  716dc3:	c4 42 25 bc c7       	vfnmadd231ps ymm8,ymm11,ymm15
  716dc8:	c4 41 1c 59 e3       	vmulps ymm12,ymm12,ymm11
  716dcd:	c5 c4 c6 cf d8       	vshufps ymm1,ymm7,ymm7,0xd8
  716dd2:	c4 41 0c c6 de d8    	vshufps ymm11,ymm14,ymm14,0xd8
  716dd8:	c4 42 7d b8 e7       	vfmadd231ps ymm12,ymm0,ymm15
  716ddd:	c5 fc 10 82 c0 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0xc0]
  716de4:	00 
  716de5:	c5 7c 10 b2 e0 00 00 	vmovups ymm14,YMMWORD PTR [rdx+0xe0]
  716dec:	00 
  716ded:	c5 fc 59 f9          	vmulps ymm7,ymm0,ymm1
  716df1:	c4 c2 25 bc fe       	vfnmadd231ps ymm7,ymm11,ymm14
  716df6:	c5 24 59 d8          	vmulps ymm11,ymm11,ymm0
  716dfa:	c5 cc c6 c6 d8       	vshufps ymm0,ymm6,ymm6,0xd8
  716dff:	c4 c1 14 c6 f5 d8    	vshufps ymm6,ymm13,ymm13,0xd8
  716e05:	c4 42 75 b8 de       	vfmadd231ps ymm11,ymm1,ymm14
  716e0a:	c5 fc 10 8a 40 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x140]
  716e11:	00 
  716e12:	c5 7c 10 ba 60 01 00 	vmovups ymm15,YMMWORD PTR [rdx+0x160]
  716e19:	00 
  716e1a:	c5 74 59 e8          	vmulps ymm13,ymm1,ymm0
  716e1e:	c4 42 4d bc ef       	vfnmadd231ps ymm13,ymm6,ymm15
  716e23:	c5 74 59 f6          	vmulps ymm14,ymm1,ymm6
  716e27:	c5 e4 c6 cb d8       	vshufps ymm1,ymm3,ymm3,0xd8
  716e2c:	c4 c1 34 c6 d9 d8    	vshufps ymm3,ymm9,ymm9,0xd8
  716e32:	c4 42 7d b8 f7       	vfmadd231ps ymm14,ymm0,ymm15
  716e37:	c5 fc 10 42 40       	vmovups ymm0,YMMWORD PTR [rdx+0x40]
  716e3c:	c5 fc 10 72 60       	vmovups ymm6,YMMWORD PTR [rdx+0x60]
  716e41:	c5 7c 59 c9          	vmulps ymm9,ymm0,ymm1
  716e45:	c4 62 65 bc ce       	vfnmadd231ps ymm9,ymm3,ymm6
  716e4a:	c5 fc 59 d3          	vmulps ymm2,ymm0,ymm3
  716e4e:	c4 e3 7d 04 5c 24 b8 	vpermilps ymm3,YMMWORD PTR [rsp-0x48],0xd8
  716e55:	d8 
  716e56:	c4 e2 75 b8 d6       	vfmadd231ps ymm2,ymm1,ymm6
  716e5b:	c5 3c 58 fd          	vaddps ymm15,ymm8,ymm5
  716e5f:	c5 84 58 c3          	vaddps ymm0,ymm15,ymm3
  716e63:	c5 fc 11 44 24 b8    	vmovups YMMWORD PTR [rsp-0x48],ymm0
  716e69:	c4 e2 7d 18 35 ee e5 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff95e5ee]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  716e70:	95 ff 
  716e72:	c4 62 4d ac fb       	vfnmadd213ps ymm15,ymm6,ymm3
  716e77:	c4 c1 14 58 c9       	vaddps ymm1,ymm13,ymm9
  716e7c:	c5 c4 58 c1          	vaddps ymm0,ymm7,ymm1
  716e80:	c5 fc 11 44 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm0
  716e86:	c4 e2 4d bc f9       	vfnmadd231ps ymm7,ymm6,ymm1
  716e8b:	c5 dc c6 cc d8       	vshufps ymm1,ymm4,ymm4,0xd8
  716e90:	c4 c1 2c 58 c4       	vaddps ymm0,ymm10,ymm12
  716e95:	c5 fc 58 e1          	vaddps ymm4,ymm0,ymm1
  716e99:	c4 e2 4d ac c1       	vfnmadd213ps ymm0,ymm6,ymm1
  716e9e:	c5 8c 58 ca          	vaddps ymm1,ymm14,ymm2
  716ea2:	c5 a4 58 f1          	vaddps ymm6,ymm11,ymm1
  716ea6:	c4 e2 7d 18 1d b1 e5 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff95e5b1]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  716ead:	95 ff 
  716eaf:	c4 62 75 bc db       	vfnmadd231ps ymm11,ymm1,ymm3
  716eb4:	c4 c1 2c 5c cc       	vsubps ymm1,ymm10,ymm12
  716eb9:	c5 8c 5c d2          	vsubps ymm2,ymm14,ymm2
  716ebd:	c4 62 7d 18 25 0e e4 	vbroadcastss ymm12,DWORD PTR [rip+0xffffffffff95e40e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  716ec4:	95 ff 
  716ec6:	c5 1c 59 d1          	vmulps ymm10,ymm12,ymm1
  716eca:	c4 41 54 5c c0       	vsubps ymm8,ymm5,ymm8
  716ecf:	c4 c1 04 58 ca       	vaddps ymm1,ymm15,ymm10
  716ed4:	c5 9c 59 d2          	vmulps ymm2,ymm12,ymm2
  716ed8:	c4 41 14 5c c9       	vsubps ymm9,ymm13,ymm9
  716edd:	c5 c4 58 ea          	vaddps ymm5,ymm7,ymm2
  716ee1:	c4 41 3c 59 c4       	vmulps ymm8,ymm8,ymm12
  716ee6:	c4 41 34 59 f4       	vmulps ymm14,ymm9,ymm12
  716eeb:	c4 41 7c 5c c8       	vsubps ymm9,ymm0,ymm8
  716ef0:	c4 41 04 5c ea       	vsubps ymm13,ymm15,ymm10
  716ef5:	c4 41 24 5c e6       	vsubps ymm12,ymm11,ymm14
  716efa:	c5 c4 5c fa          	vsubps ymm7,ymm7,ymm2
  716efe:	c5 3c 58 c0          	vaddps ymm8,ymm8,ymm0
  716f02:	c4 41 24 58 d6       	vaddps ymm10,ymm11,ymm14
  716f07:	c5 7c 10 74 24 b8    	vmovups ymm14,YMMWORD PTR [rsp-0x48]
  716f0d:	c5 fc 10 5c 24 d8    	vmovups ymm3,YMMWORD PTR [rsp-0x28]
  716f13:	c5 88 58 c3          	vaddps xmm0,xmm14,xmm3
  716f17:	c5 d8 58 d6          	vaddps xmm2,xmm4,xmm6
  716f1b:	c5 68 14 d8          	vunpcklps xmm11,xmm2,xmm0
  716f1f:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  716f23:	c5 f8 13 46 10       	vmovlps QWORD PTR [rsi+0x10],xmm0
  716f28:	c5 78 11 1e          	vmovups XMMWORD PTR [rsi],xmm11
  716f2c:	c5 f0 5c c5          	vsubps xmm0,xmm1,xmm5
  716f30:	c4 c1 30 5c d4       	vsubps xmm2,xmm9,xmm12
  716f35:	c5 68 14 d8          	vunpcklps xmm11,xmm2,xmm0
  716f39:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  716f3d:	c5 f8 13 46 28       	vmovlps QWORD PTR [rsi+0x28],xmm0
  716f42:	c5 78 11 5e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm11
  716f47:	c5 90 58 c7          	vaddps xmm0,xmm13,xmm7
  716f4b:	c4 c1 38 58 d2       	vaddps xmm2,xmm8,xmm10
  716f50:	c5 68 14 d8          	vunpcklps xmm11,xmm2,xmm0
  716f54:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  716f58:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  716f5d:	c5 78 11 5e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm11
  716f62:	c5 88 5c c3          	vsubps xmm0,xmm14,xmm3
  716f66:	c5 d8 5c d6          	vsubps xmm2,xmm4,xmm6
  716f6a:	c5 e8 14 d8          	vunpcklps xmm3,xmm2,xmm0
  716f6e:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  716f72:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  716f77:	c5 f8 11 5e 48       	vmovups XMMWORD PTR [rsi+0x48],xmm3
  716f7c:	c5 f0 58 c5          	vaddps xmm0,xmm1,xmm5
  716f80:	c4 c1 30 58 cc       	vaddps xmm1,xmm9,xmm12
  716f85:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  716f89:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  716f8d:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  716f92:	c5 f8 11 56 60       	vmovups XMMWORD PTR [rsi+0x60],xmm2
  716f97:	c5 90 5c c7          	vsubps xmm0,xmm13,xmm7
  716f9b:	c4 c1 38 5c ca       	vsubps xmm1,xmm8,xmm10
  716fa0:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  716fa4:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  716fa8:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  716faf:	00 
  716fb0:	c5 f8 11 56 78       	vmovups XMMWORD PTR [rsi+0x78],xmm2
  716fb5:	c5 f8 77             	vzeroupper
  716fb8:	c3                   	ret
