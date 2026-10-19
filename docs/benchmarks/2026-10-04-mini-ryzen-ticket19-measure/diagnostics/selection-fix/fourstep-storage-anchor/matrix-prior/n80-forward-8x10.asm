
target/ticket19/selection-fix/canonical-storage/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b01d40 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b01d40:	48 81 ec 08 01 00 00 	sub    rsp,0x108
  b01d47:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  b01d4b:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  b01d50:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  b01d55:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  b01d5b:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b01d60:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b01d66:	c5 fc 10 4f 50       	vmovups ymm1,YMMWORD PTR [rdi+0x50]
  b01d6b:	c5 fc 10 5f 70       	vmovups ymm3,YMMWORD PTR [rdi+0x70]
  b01d70:	c5 f4 c6 e3 88       	vshufps ymm4,ymm1,ymm3,0x88
  b01d75:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b01d7b:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  b01d80:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  b01d86:	c5 fc 10 9f a0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xa0]
  b01d8d:	00 
  b01d8e:	c5 fc 10 af c0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xc0]
  b01d95:	00 
  b01d96:	c5 e4 c6 f5 88       	vshufps ymm6,ymm3,ymm5,0x88
  b01d9b:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  b01da1:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  b01da6:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  b01dac:	c5 fc 10 af f0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xf0]
  b01db3:	00 
  b01db4:	c5 fc 10 bf 10 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x110]
  b01dbb:	00 
  b01dbc:	c5 54 c6 c7 88       	vshufps ymm8,ymm5,ymm7,0x88
  b01dc1:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b01dc7:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b01dcc:	c4 63 fd 01 cd d8    	vpermpd ymm9,ymm5,0xd8
  b01dd2:	c5 fc 10 af 40 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x140]
  b01dd9:	00 
  b01dda:	c5 fc 10 bf 60 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x160]
  b01de1:	00 
  b01de2:	c5 54 c6 d7 88       	vshufps ymm10,ymm5,ymm7,0x88
  b01de7:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  b01ded:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b01df2:	c4 63 fd 01 dd d8    	vpermpd ymm11,ymm5,0xd8
  b01df8:	c5 fc 10 af 90 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x190]
  b01dff:	00 
  b01e00:	c5 fc 10 bf b0 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x1b0]
  b01e07:	00 
  b01e08:	c5 54 c6 e7 88       	vshufps ymm12,ymm5,ymm7,0x88
  b01e0d:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b01e13:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b01e18:	c4 e3 fd 01 fd d8    	vpermpd ymm7,ymm5,0xd8
  b01e1e:	c5 fc 10 af e0 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x1e0]
  b01e25:	00 
  b01e26:	c5 7c 10 af 00 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x200]
  b01e2d:	00 
  b01e2e:	c4 41 54 c6 f5 88    	vshufps ymm14,ymm5,ymm13,0x88
  b01e34:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  b01e3a:	c4 c1 54 c6 ed dd    	vshufps ymm5,ymm5,ymm13,0xdd
  b01e40:	c4 63 fd 01 ed d8    	vpermpd ymm13,ymm5,0xd8
  b01e46:	c5 fc 10 af 30 02 00 	vmovups ymm5,YMMWORD PTR [rdi+0x230]
  b01e4d:	00 
  b01e4e:	c5 7c 10 bf 50 02 00 	vmovups ymm15,YMMWORD PTR [rdi+0x250]
  b01e55:	00 
  b01e56:	62 c1 54 28 c6 c7 88 	vshufps ymm16,ymm5,ymm15,0x88
  b01e5d:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b01e64:	c4 c1 54 c6 ef dd    	vshufps ymm5,ymm5,ymm15,0xdd
  b01e6a:	c4 63 fd 01 fd d8    	vpermpd ymm15,ymm5,0xd8
  b01e70:	62 c1 6c 28 58 ca    	vaddps ymm17,ymm2,ymm10
  b01e76:	62 c1 4c 28 58 d6    	vaddps ymm18,ymm6,ymm14
  b01e7c:	62 a1 74 20 58 da    	vaddps ymm19,ymm17,ymm18
  b01e82:	62 c1 5c 28 58 e4    	vaddps ymm20,ymm4,ymm12
  b01e88:	62 a1 3c 28 58 e8    	vaddps ymm21,ymm8,ymm16
  b01e8e:	62 a1 5c 20 58 f5    	vaddps ymm22,ymm20,ymm21
  b01e94:	62 a1 64 20 58 fe    	vaddps ymm23,ymm19,ymm22
  b01e9a:	62 41 7c 28 58 c3    	vaddps ymm24,ymm0,ymm11
  b01ea0:	62 41 64 28 58 cd    	vaddps ymm25,ymm3,ymm13
  b01ea6:	62 01 3c 20 58 d1    	vaddps ymm26,ymm24,ymm25
  b01eac:	62 61 74 28 58 df    	vaddps ymm27,ymm1,ymm7
  b01eb2:	62 41 34 28 58 e7    	vaddps ymm28,ymm9,ymm15
  b01eb8:	62 01 24 20 58 ec    	vaddps ymm29,ymm27,ymm28
  b01ebe:	62 91 2c 20 58 ed    	vaddps ymm5,ymm26,ymm29
  b01ec4:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  b01ec9:	c4 c1 64 5c dd       	vsubps ymm3,ymm3,ymm13
  b01ece:	c5 6c 58 d3          	vaddps ymm10,ymm2,ymm3
  b01ed2:	c4 c1 5c 5c e4       	vsubps ymm4,ymm4,ymm12
  b01ed7:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  b01edb:	c5 5c 58 e1          	vaddps ymm12,ymm4,ymm1
  b01edf:	c4 e2 7d 18 3d 54 33 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff573354]        # 7523c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  b01ee6:	57 ff 
  b01ee8:	c5 1c 59 e7          	vmulps ymm12,ymm12,ymm7
  b01eec:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  b01ef1:	62 31 3c 28 5c c0    	vsubps ymm8,ymm8,ymm16
  b01ef7:	c4 41 34 5c e8       	vsubps ymm13,ymm9,ymm8
  b01efc:	c5 14 59 ef          	vmulps ymm13,ymm13,ymm7
  b01f00:	c4 41 1c 58 fd       	vaddps ymm15,ymm12,ymm13
  b01f05:	62 c1 2c 28 58 c7    	vaddps ymm16,ymm10,ymm15
  b01f0b:	c4 c1 7c 5c c3       	vsubps ymm0,ymm0,ymm11
  b01f10:	c5 8c 5c f6          	vsubps ymm6,ymm14,ymm6
  b01f14:	c5 4c 58 d8          	vaddps ymm11,ymm6,ymm0
  b01f18:	c5 f4 5c cc          	vsubps ymm1,ymm1,ymm4
  b01f1c:	c5 f4 59 cf          	vmulps ymm1,ymm1,ymm7
  b01f20:	c4 c1 3c 58 e1       	vaddps ymm4,ymm8,ymm9
  b01f25:	c5 dc 59 e7          	vmulps ymm4,ymm4,ymm7
  b01f29:	c5 74 5c c4          	vsubps ymm8,ymm1,ymm4
  b01f2d:	c4 41 24 58 f0       	vaddps ymm14,ymm11,ymm8
  b01f32:	62 31 74 20 5c ca    	vsubps ymm9,ymm17,ymm18
  b01f38:	62 81 24 20 5c cc    	vsubps ymm17,ymm27,ymm28
  b01f3e:	62 a1 34 28 58 d1    	vaddps ymm18,ymm9,ymm17
  b01f44:	62 01 3c 20 5c c1    	vsubps ymm24,ymm24,ymm25
  b01f4a:	62 a1 54 20 5c e4    	vsubps ymm20,ymm21,ymm20
  b01f50:	62 81 5c 20 58 e8    	vaddps ymm21,ymm20,ymm24
  b01f56:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  b01f5a:	c5 f4 58 cc          	vaddps ymm1,ymm1,ymm4
  b01f5e:	c5 ec 58 e1          	vaddps ymm4,ymm2,ymm1
  b01f62:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  b01f66:	c4 c1 14 5c dc       	vsubps ymm3,ymm13,ymm12
  b01f6b:	c5 7c 58 eb          	vaddps ymm13,ymm0,ymm3
  b01f6f:	62 b1 64 20 5c f6    	vsubps ymm6,ymm19,ymm22
  b01f75:	62 81 2c 20 5c dd    	vsubps ymm19,ymm26,ymm29
  b01f7b:	c4 41 2c 5c d7       	vsubps ymm10,ymm10,ymm15
  b01f80:	c4 41 24 5c c0       	vsubps ymm8,ymm11,ymm8
  b01f85:	62 31 34 28 5c c9    	vsubps ymm9,ymm9,ymm17
  b01f8b:	62 31 3c 20 5c fc    	vsubps ymm15,ymm24,ymm20
  b01f91:	c5 6c 5c d9          	vsubps ymm11,ymm2,ymm1
  b01f95:	62 e1 7c 28 5c cb    	vsubps ymm17,ymm0,ymm3
  b01f9b:	62 f3 45 20 18 c6 01 	vinsertf32x4 ymm0,ymm23,xmm6,0x1
  b01fa2:	c5 fc 11 04 24       	vmovups YMMWORD PTR [rsp],ymm0
  b01fa7:	62 f3 c5 20 23 f6 03 	vshuff64x2 ymm6,ymm23,ymm6,0x3
  b01fae:	62 d3 7d 20 18 ca 01 	vinsertf32x4 ymm1,ymm16,xmm10,0x1
  b01fb5:	c5 fc 11 4c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm1
  b01fbb:	62 53 fd 20 23 d2 03 	vshuff64x2 ymm10,ymm16,ymm10,0x3
  b01fc2:	62 d3 6d 20 18 d1 01 	vinsertf32x4 ymm2,ymm18,xmm9,0x1
  b01fc9:	c5 fc 11 54 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm2
  b01fcf:	62 53 ed 20 23 c9 03 	vshuff64x2 ymm9,ymm18,ymm9,0x3
  b01fd6:	c4 c3 5d 18 db 01    	vinsertf128 ymm3,ymm4,xmm11,0x1
  b01fdc:	c5 fc 11 5c 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm3
  b01fe2:	c4 c3 5d 06 e3 31    	vperm2f128 ymm4,ymm4,ymm11,0x31
  b01fe8:	c4 41 4d 14 d9       	vunpcklpd ymm11,ymm6,ymm9
  b01fed:	c4 c1 4d 15 f1       	vunpckhpd ymm6,ymm6,ymm9
  b01ff2:	c5 2d 14 e4          	vunpcklpd ymm12,ymm10,ymm4
  b01ff6:	c5 ad 15 e4          	vunpckhpd ymm4,ymm10,ymm4
  b01ffa:	c4 c1 24 c6 fc 88    	vshufps ymm7,ymm11,ymm12,0x88
  b02000:	c5 fc 11 bc 24 c0 00 	vmovups YMMWORD PTR [rsp+0xc0],ymm7
  b02007:	00 00 
  b02009:	c4 c1 24 c6 fc dd    	vshufps ymm7,ymm11,ymm12,0xdd
  b0200f:	c5 fc 11 bc 24 a0 00 	vmovups YMMWORD PTR [rsp+0xa0],ymm7
  b02016:	00 00 
  b02018:	c5 cc c6 fc 88       	vshufps ymm7,ymm6,ymm4,0x88
  b0201d:	c5 fc 11 bc 24 80 00 	vmovups YMMWORD PTR [rsp+0x80],ymm7
  b02024:	00 00 
  b02026:	c5 cc c6 e4 dd       	vshufps ymm4,ymm6,ymm4,0xdd
  b0202b:	c5 fc 11 64 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm4
  b02031:	62 b3 55 28 18 e3 01 	vinsertf32x4 ymm4,ymm5,xmm19,0x1
  b02038:	c5 fc 11 64 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm4
  b0203e:	62 a3 d5 28 23 c3 03 	vshuff64x2 ymm16,ymm5,ymm19,0x3
  b02045:	c4 c3 0d 18 e8 01    	vinsertf128 ymm5,ymm14,xmm8,0x1
  b0204b:	c5 fc 11 ac 24 e0 00 	vmovups YMMWORD PTR [rsp+0xe0],ymm5
  b02052:	00 00 
  b02054:	c4 43 0d 06 f0 31    	vperm2f128 ymm14,ymm14,ymm8,0x31
  b0205a:	62 d3 55 20 18 f7 01 	vinsertf32x4 ymm6,ymm21,xmm15,0x1
  b02061:	c5 fc 11 74 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm6
  b02067:	62 53 d5 20 23 ff 03 	vshuff64x2 ymm15,ymm21,ymm15,0x3
  b0206e:	62 b3 15 28 18 f9 01 	vinsertf32x4 ymm7,ymm13,xmm17,0x1
  b02075:	c5 fc 11 7c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm7
  b0207b:	62 33 95 28 23 e9 03 	vshuff64x2 ymm13,ymm13,ymm17,0x3
  b02082:	62 c1 fd 20 14 cf    	vunpcklpd ymm17,ymm16,ymm15
  b02088:	62 c1 fd 20 15 c7    	vunpckhpd ymm16,ymm16,ymm15
  b0208e:	c4 41 0d 14 fd       	vunpcklpd ymm15,ymm14,ymm13
  b02093:	62 c1 8d 28 15 d5    	vunpckhpd ymm18,ymm14,ymm13
  b02099:	62 51 74 20 c6 ef 88 	vshufps ymm13,ymm17,ymm15,0x88
  b020a0:	62 51 74 20 c6 f7 dd 	vshufps ymm14,ymm17,ymm15,0xdd
  b020a7:	62 31 7c 20 c6 fa 88 	vshufps ymm15,ymm16,ymm18,0x88
  b020ae:	62 a1 7c 20 c6 c2 dd 	vshufps ymm16,ymm16,ymm18,0xdd
  b020b5:	62 e1 dd 28 15 d6    	vunpckhpd ymm18,ymm4,ymm6
  b020bb:	62 e1 d5 28 15 df    	vunpckhpd ymm19,ymm5,ymm7
  b020c1:	62 a1 6c 20 c6 cb dd 	vshufps ymm17,ymm18,ymm19,0xdd
  b020c8:	62 a1 6c 20 c6 d3 88 	vshufps ymm18,ymm18,ymm19,0x88
  b020cf:	62 e1 fd 28 15 e2    	vunpckhpd ymm20,ymm0,ymm2
  b020d5:	62 e1 f5 28 15 eb    	vunpckhpd ymm21,ymm1,ymm3
  b020db:	62 a1 5c 20 c6 dd dd 	vshufps ymm19,ymm20,ymm21,0xdd
  b020e2:	62 a1 5c 20 c6 e5 88 	vshufps ymm20,ymm20,ymm21,0x88
  b020e9:	62 e1 7c 08 10 6f 04 	vmovups xmm21,XMMWORD PTR [rdi+0x40]
  b020f0:	62 23 55 00 21 e5 9c 	vinsertps xmm28,xmm21,xmm21,0x9c
  b020f7:	62 01 3c 00 57 c0    	vxorps xmm24,xmm24,xmm24
  b020fd:	62 81 54 00 c6 e8 dd 	vshufps xmm21,xmm21,xmm24,0xdd
  b02104:	62 e1 7c 08 10 77 09 	vmovups xmm22,XMMWORD PTR [rdi+0x90]
  b0210b:	62 23 4d 00 21 f6 9c 	vinsertps xmm30,xmm22,xmm22,0x9c
  b02112:	62 01 4c 00 c6 f8 dd 	vshufps xmm31,xmm22,xmm24,0xdd
  b02119:	62 e1 7c 08 10 7f 0e 	vmovups xmm23,XMMWORD PTR [rdi+0xe0]
  b02120:	62 a3 45 00 21 f7 9c 	vinsertps xmm22,xmm23,xmm23,0x9c
  b02127:	62 01 44 00 c6 c8 dd 	vshufps xmm25,xmm23,xmm24,0xdd
  b0212e:	62 e1 7c 08 10 7f 13 	vmovups xmm23,XMMWORD PTR [rdi+0x130]
  b02135:	62 33 45 00 21 df 9c 	vinsertps xmm11,xmm23,xmm23,0x9c
  b0213c:	62 11 44 00 c6 d0 dd 	vshufps xmm10,xmm23,xmm24,0xdd
  b02143:	62 e1 7c 08 10 7f 18 	vmovups xmm23,XMMWORD PTR [rdi+0x180]
  b0214a:	62 33 45 00 21 c7 9c 	vinsertps xmm8,xmm23,xmm23,0x9c
  b02151:	62 81 44 00 c6 f8 dd 	vshufps xmm23,xmm23,xmm24,0xdd
  b02158:	62 61 7c 08 10 57 1d 	vmovups xmm26,XMMWORD PTR [rdi+0x1d0]
  b0215f:	62 93 2d 00 21 fa 9c 	vinsertps xmm7,xmm26,xmm26,0x9c
  b02166:	62 91 2c 00 c6 f0 dd 	vshufps xmm6,xmm26,xmm24,0xdd
  b0216d:	62 61 7c 08 10 5f 22 	vmovups xmm27,XMMWORD PTR [rdi+0x220]
  b02174:	62 03 25 00 21 d3 9c 	vinsertps xmm26,xmm27,xmm27,0x9c
  b0217b:	62 01 24 00 c6 d8 dd 	vshufps xmm27,xmm27,xmm24,0xdd
  b02182:	62 61 7c 08 10 6f 27 	vmovups xmm29,XMMWORD PTR [rdi+0x270]
  b02189:	62 91 14 00 c6 e0 dd 	vshufps xmm4,xmm29,xmm24,0xdd
  b02190:	62 93 15 00 21 ed 9c 	vinsertps xmm5,xmm29,xmm29,0x9c
  b02197:	62 41 1c 20 58 c0    	vaddps ymm24,ymm28,ymm8
  b0219d:	62 91 4c 20 58 d2    	vaddps ymm2,ymm22,ymm26
  b021a3:	62 f1 3c 20 58 ca    	vaddps ymm1,ymm24,ymm2
  b021a9:	62 61 0c 20 58 ef    	vaddps ymm29,ymm30,ymm7
  b021af:	c5 24 58 e5          	vaddps ymm12,ymm11,ymm5
  b021b3:	62 d1 14 20 58 c4    	vaddps ymm0,ymm29,ymm12
  b021b9:	c5 f4 58 d8          	vaddps ymm3,ymm1,ymm0
  b021bd:	c5 f0 5c c0          	vsubps xmm0,xmm1,xmm0
  b021c1:	c4 e3 65 18 d8 01    	vinsertf128 ymm3,ymm3,xmm0,0x1
  b021c7:	62 f1 3c 20 5c ca    	vsubps ymm1,ymm24,ymm2
  b021cd:	62 71 04 20 58 ce    	vaddps ymm9,ymm31,ymm6
  b021d3:	c5 ac 58 d4          	vaddps ymm2,ymm10,ymm4
  b021d7:	62 61 34 28 5c c2    	vsubps ymm24,ymm9,ymm2
  b021dd:	62 91 74 28 58 c0    	vaddps ymm0,ymm1,ymm24
  b021e3:	62 91 74 08 5c c8    	vsubps xmm1,xmm1,xmm24
  b021e9:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  b021ef:	62 61 e5 28 14 c0    	vunpcklpd ymm24,ymm3,ymm0
  b021f5:	62 d1 1c 20 5c c0    	vsubps ymm0,ymm28,ymm8
  b021fb:	62 f1 0c 20 5c cf    	vsubps ymm1,ymm30,ymm7
  b02201:	62 f1 04 20 5c de    	vsubps ymm3,ymm31,ymm6
  b02207:	c5 ac 5c e4          	vsubps ymm4,ymm10,ymm4
  b0220b:	c5 a4 5c ed          	vsubps ymm5,ymm11,ymm5
  b0220f:	c5 f4 58 f3          	vaddps ymm6,ymm1,ymm3
  b02213:	c4 62 7d 18 1d 20 30 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff573020]        # 7523c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  b0221a:	57 ff 
  b0221c:	62 41 4c 28 59 e3    	vmulps ymm28,ymm6,ymm11
  b02222:	c5 dc 5c f5          	vsubps ymm6,ymm4,ymm5
  b02226:	62 41 4c 28 59 f3    	vmulps ymm30,ymm6,ymm11
  b0222c:	62 91 34 20 5c f3    	vsubps ymm6,ymm25,ymm27
  b02232:	c5 fc 58 fe          	vaddps ymm7,ymm0,ymm6
  b02236:	62 11 1c 20 58 c6    	vaddps ymm8,ymm28,ymm30
  b0223c:	c5 3c 58 d7          	vaddps ymm10,ymm8,ymm7
  b02240:	c4 c1 40 5c f8       	vsubps xmm7,xmm7,xmm8
  b02245:	c4 e3 2d 18 ff 01    	vinsertf128 ymm7,ymm10,xmm7,0x1
  b0224b:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  b0224f:	c5 e4 5c c9          	vsubps ymm1,ymm3,ymm1
  b02253:	c5 d4 58 dc          	vaddps ymm3,ymm5,ymm4
  b02257:	c5 a4 59 c9          	vmulps ymm1,ymm11,ymm1
  b0225b:	c5 a4 59 db          	vmulps ymm3,ymm11,ymm3
  b0225f:	c5 f4 58 e3          	vaddps ymm4,ymm1,ymm3
  b02263:	c5 fc 58 ec          	vaddps ymm5,ymm0,ymm4
  b02267:	c5 f8 5c c4          	vsubps xmm0,xmm0,xmm4
  b0226b:	c4 e3 55 18 c0 01    	vinsertf128 ymm0,ymm5,xmm0,0x1
  b02271:	c5 c5 14 c0          	vunpcklpd ymm0,ymm7,ymm0
  b02275:	62 91 34 20 58 e3    	vaddps ymm4,ymm25,ymm27
  b0227b:	c5 b4 58 d2          	vaddps ymm2,ymm9,ymm2
  b0227f:	62 b1 54 20 58 ef    	vaddps ymm5,ymm21,ymm23
  b02285:	c5 d4 58 f4          	vaddps ymm6,ymm5,ymm4
  b02289:	c5 cc 58 fa          	vaddps ymm7,ymm6,ymm2
  b0228d:	c5 c8 5c d2          	vsubps xmm2,xmm6,xmm2
  b02291:	c4 e3 45 18 d2 01    	vinsertf128 ymm2,ymm7,xmm2,0x1
  b02297:	62 91 1c 28 5c f5    	vsubps ymm6,ymm12,ymm29
  b0229d:	c5 d4 5c e4          	vsubps ymm4,ymm5,ymm4
  b022a1:	c5 cc 58 ec          	vaddps ymm5,ymm6,ymm4
  b022a5:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  b022a9:	c4 e3 55 18 e4 01    	vinsertf128 ymm4,ymm5,xmm4,0x1
  b022af:	c5 ed 14 d4          	vunpcklpd ymm2,ymm2,ymm4
  b022b3:	62 b1 2c 20 5c e6    	vsubps ymm4,ymm26,ymm22
  b022b9:	62 b1 54 20 5c ef    	vsubps ymm5,ymm21,ymm23
  b022bf:	c5 dc 58 f5          	vaddps ymm6,ymm4,ymm5
  b022c3:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  b022c7:	c5 cc 58 d9          	vaddps ymm3,ymm6,ymm1
  b022cb:	c5 c8 5c c9          	vsubps xmm1,xmm6,xmm1
  b022cf:	62 e3 7d 28 04 74 24 	vpermilps ymm22,YMMWORD PTR [rsp+0xc0],0xd8
  b022d6:	06 d8 
  b022d8:	c4 e3 7d 04 bc 24 a0 	vpermilps ymm7,YMMWORD PTR [rsp+0xa0],0xd8
  b022df:	00 00 00 d8 
  b022e3:	62 e3 7d 28 04 6c 24 	vpermilps ymm21,YMMWORD PTR [rsp+0x80],0xd8
  b022ea:	04 d8 
  b022ec:	c4 63 7d 04 64 24 60 	vpermilps ymm12,YMMWORD PTR [rsp+0x60],0xd8
  b022f3:	d8 
  b022f4:	62 41 14 28 c6 ed d8 	vshufps ymm29,ymm13,ymm13,0xd8
  b022fb:	c4 41 0c c6 ce d8    	vshufps ymm9,ymm14,ymm14,0xd8
  b02301:	62 c1 04 28 c6 ff d8 	vshufps ymm23,ymm15,ymm15,0xd8
  b02308:	62 31 7c 20 c6 f0 d8 	vshufps ymm14,ymm16,ymm16,0xd8
  b0230f:	62 31 74 20 c6 d1 d8 	vshufps ymm10,ymm17,ymm17,0xd8
  b02316:	62 21 6c 20 c6 da d8 	vshufps ymm27,ymm18,ymm18,0xd8
  b0231d:	62 31 64 20 c6 eb d8 	vshufps ymm13,ymm19,ymm19,0xd8
  b02324:	62 21 5c 20 c6 cc d8 	vshufps ymm25,ymm20,ymm20,0xd8
  b0232b:	c4 e3 65 18 c9 01    	vinsertf128 ymm1,ymm3,xmm1,0x1
  b02331:	62 f1 3c 20 c6 d8 dd 	vshufps ymm3,ymm24,ymm0,0xdd
  b02338:	c5 64 c6 db d8       	vshufps ymm11,ymm3,ymm3,0xd8
  b0233d:	c5 d4 5c dc          	vsubps ymm3,ymm5,ymm4
  b02341:	62 91 0c 20 5c e4    	vsubps ymm4,ymm30,ymm28
  b02347:	c5 e4 58 ec          	vaddps ymm5,ymm3,ymm4
  b0234b:	c5 e0 5c dc          	vsubps xmm3,xmm3,xmm4
  b0234f:	c4 e3 55 18 db 01    	vinsertf128 ymm3,ymm5,xmm3,0x1
  b02355:	c5 f5 14 cb          	vunpcklpd ymm1,ymm1,ymm3
  b02359:	c5 ec c6 d9 dd       	vshufps ymm3,ymm2,ymm1,0xdd
  b0235e:	c5 64 c6 fb d8       	vshufps ymm15,ymm3,ymm3,0xd8
  b02363:	62 f1 3c 20 c6 c0 88 	vshufps ymm0,ymm24,ymm0,0x88
  b0236a:	62 61 7c 28 c6 e0 d8 	vshufps ymm28,ymm0,ymm0,0xd8
  b02371:	c5 ec c6 c1 88       	vshufps ymm0,ymm2,ymm1,0x88
  b02376:	62 61 7c 28 c6 f0 d8 	vshufps ymm30,ymm0,ymm0,0xd8
  b0237d:	c5 fc 10 04 24       	vmovups ymm0,YMMWORD PTR [rsp]
  b02382:	c5 fd 14 44 24 40    	vunpcklpd ymm0,ymm0,YMMWORD PTR [rsp+0x40]
  b02388:	c5 fc 10 4c 24 e0    	vmovups ymm1,YMMWORD PTR [rsp-0x20]
  b0238e:	c5 f5 14 4c 24 20    	vunpcklpd ymm1,ymm1,YMMWORD PTR [rsp+0x20]
  b02394:	c5 fc c6 d1 dd       	vshufps ymm2,ymm0,ymm1,0xdd
  b02399:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b0239e:	c5 fc 10 5c 24 80    	vmovups ymm3,YMMWORD PTR [rsp-0x80]
  b023a4:	c5 e5 14 64 24 c0    	vunpcklpd ymm4,ymm3,YMMWORD PTR [rsp-0x40]
  b023aa:	c5 fc 10 9c 24 e0 00 	vmovups ymm3,YMMWORD PTR [rsp+0xe0]
  b023b1:	00 00 
  b023b3:	c5 e5 14 6c 24 a0    	vunpcklpd ymm5,ymm3,YMMWORD PTR [rsp-0x60]
  b023b9:	c5 dc c6 dd dd       	vshufps ymm3,ymm4,ymm5,0xdd
  b023be:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b023c3:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  b023c8:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b023cd:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  b023d3:	c5 dc c6 cd 88       	vshufps ymm1,ymm4,ymm5,0x88
  b023d8:	c5 f4 c6 c1 d8       	vshufps ymm0,ymm1,ymm1,0xd8
  b023dd:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  b023e3:	62 e1 7c 28 10 4a 02 	vmovups ymm17,YMMWORD PTR [rdx+0x40]
  b023ea:	62 e1 7c 28 10 42 03 	vmovups ymm16,YMMWORD PTR [rdx+0x60]
  b023f1:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  b023f8:	00 
  b023f9:	62 61 7c 28 10 42 05 	vmovups ymm24,YMMWORD PTR [rdx+0xa0]
  b02400:	62 61 7c 28 10 52 06 	vmovups ymm26,YMMWORD PTR [rdx+0xc0]
  b02407:	c5 fc 10 a2 e0 00 00 	vmovups ymm4,YMMWORD PTR [rdx+0xe0]
  b0240e:	00 
  b0240f:	c5 fc 10 b2 00 01 00 	vmovups ymm6,YMMWORD PTR [rdx+0x100]
  b02416:	00 
  b02417:	62 e1 7c 28 10 52 09 	vmovups ymm18,YMMWORD PTR [rdx+0x120]
  b0241e:	62 f1 4c 20 59 ee    	vmulps ymm5,ymm22,ymm6
  b02424:	62 b2 15 20 bc ea    	vfnmadd231ps ymm5,ymm29,ymm18
  b0242a:	62 f1 14 20 59 f6    	vmulps ymm6,ymm29,ymm6
  b02430:	62 e1 7c 28 10 62 0c 	vmovups ymm20,YMMWORD PTR [rdx+0x180]
  b02437:	62 b2 4d 20 b8 f2    	vfmadd231ps ymm6,ymm22,ymm18
  b0243d:	62 61 7c 28 10 6a 0d 	vmovups ymm29,YMMWORD PTR [rdx+0x1a0]
  b02444:	62 a1 54 20 59 dc    	vmulps ymm19,ymm21,ymm20
  b0244a:	62 82 45 20 bc dd    	vfnmadd231ps ymm19,ymm23,ymm29
  b02450:	62 a1 44 20 59 d4    	vmulps ymm18,ymm23,ymm20
  b02456:	62 e1 7c 28 10 72 0a 	vmovups ymm22,YMMWORD PTR [rdx+0x140]
  b0245d:	62 82 55 20 b8 d5    	vfmadd231ps ymm18,ymm21,ymm29
  b02463:	62 e1 7c 28 10 7a 0b 	vmovups ymm23,YMMWORD PTR [rdx+0x160]
  b0246a:	62 c1 34 20 59 e0    	vmulps ymm20,ymm25,ymm8
  b02470:	62 82 25 20 bc e0    	vfnmadd231ps ymm20,ymm27,ymm24
  b02476:	62 c1 24 20 59 e8    	vmulps ymm21,ymm27,ymm8
  b0247c:	c5 7c 10 82 00 02 00 	vmovups ymm8,YMMWORD PTR [rdx+0x200]
  b02483:	00 
  b02484:	62 82 35 20 b8 e8    	vfmadd231ps ymm21,ymm25,ymm24
  b0248a:	62 61 7c 28 10 5a 11 	vmovups ymm27,YMMWORD PTR [rdx+0x220]
  b02491:	62 41 1c 20 59 c0    	vmulps ymm24,ymm28,ymm8
  b02497:	62 02 0d 20 bc c3    	vfnmadd231ps ymm24,ymm30,ymm27
  b0249d:	62 41 0c 20 59 c8    	vmulps ymm25,ymm30,ymm8
  b024a3:	c5 7c 10 82 c0 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x1c0]
  b024aa:	00 
  b024ab:	62 02 1d 20 b8 cb    	vfmadd231ps ymm25,ymm28,ymm27
  b024b1:	62 61 7c 28 10 6a 0f 	vmovups ymm29,YMMWORD PTR [rdx+0x1e0]
  b024b8:	62 41 0c 28 59 d8    	vmulps ymm27,ymm14,ymm8
  b024be:	62 02 1d 28 b8 dd    	vfmadd231ps ymm27,ymm12,ymm29
  b024c4:	62 41 1c 28 59 f0    	vmulps ymm30,ymm12,ymm8
  b024ca:	62 01 5c 20 5c e0    	vsubps ymm28,ymm20,ymm24
  b024d0:	62 02 0d 28 bc f5    	vfnmadd231ps ymm30,ymm14,ymm29
  b024d6:	c4 62 7d 18 05 19 31 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff573119]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bf8>
  b024dd:	57 ff 
  b024df:	62 01 2c 28 59 ea    	vmulps ymm29,ymm10,ymm26
  b024e5:	62 62 15 28 b8 ec    	vfmadd231ps ymm29,ymm13,ymm4
  b024eb:	62 11 14 28 59 ea    	vmulps ymm13,ymm13,ymm26
  b024f1:	c5 7c 10 a2 60 02 00 	vmovups ymm12,YMMWORD PTR [rdx+0x260]
  b024f8:	00 
  b024f9:	c4 62 2d bc ec       	vfnmadd231ps ymm13,ymm10,ymm4
  b024fe:	c5 fc 10 a2 40 02 00 	vmovups ymm4,YMMWORD PTR [rdx+0x240]
  b02505:	00 
  b02506:	62 61 04 28 59 fc    	vmulps ymm31,ymm15,ymm4
  b0250c:	62 42 25 28 b8 fc    	vfmadd231ps ymm31,ymm11,ymm12
  b02512:	c5 a4 59 c4          	vmulps ymm0,ymm11,ymm4
  b02516:	62 21 54 28 5c d3    	vsubps ymm26,ymm5,ymm19
  b0251c:	c4 c2 05 bc c4       	vfnmadd231ps ymm0,ymm15,ymm12
  b02521:	62 d1 2c 20 59 e0    	vmulps ymm4,ymm26,ymm8
  b02527:	62 b1 64 28 59 c9    	vmulps ymm1,ymm3,ymm17
  b0252d:	62 b2 6d 28 b8 c8    	vfmadd231ps ymm1,ymm2,ymm16
  b02533:	62 a1 6c 28 59 c9    	vmulps ymm17,ymm2,ymm17
  b02539:	c4 62 7d 18 1d fe 2c 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff572cfe]        # 75240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2840>
  b02540:	57 ff 
  b02542:	62 d2 1d 20 b8 e3    	vfmadd231ps ymm4,ymm28,ymm11
  b02548:	62 a2 65 28 bc c8    	vfnmadd231ps ymm17,ymm3,ymm16
  b0254e:	62 31 4c 28 58 e2    	vaddps ymm12,ymm6,ymm18
  b02554:	c5 7c 11 64 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm12
  b0255a:	62 b1 34 28 59 de    	vmulps ymm3,ymm9,ymm22
  b02560:	62 b2 45 28 b8 df    	vfmadd231ps ymm3,ymm7,ymm23
  b02566:	62 b1 44 28 59 fe    	vmulps ymm7,ymm7,ymm22
  b0256c:	62 11 54 20 58 d1    	vaddps ymm10,ymm21,ymm25
  b02572:	62 b2 35 28 bc ff    	vfnmadd231ps ymm7,ymm9,ymm23
  b02578:	62 e2 7d 28 18 35 06 	vbroadcastss ymm22,DWORD PTR [rip+0xffffffffff573006]        # 75588 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b88>
  b0257f:	30 57 ff 
  b02582:	62 31 7c 28 28 fe    	vmovaps ymm15,ymm22
  b02588:	c5 fc 10 54 24 a0    	vmovups ymm2,YMMWORD PTR [rsp-0x60]
  b0258e:	c4 62 2d a8 fa       	vfmadd213ps ymm15,ymm10,ymm2
  b02593:	62 b1 54 28 58 eb    	vaddps ymm5,ymm5,ymm19
  b02599:	62 e2 7d 28 18 05 41 	vbroadcastss ymm16,DWORD PTR [rip+0xffffffffff572f41]        # 754e4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2ae4>
  b025a0:	2f 57 ff 
  b025a3:	62 32 1d 28 bc f8    	vfnmadd231ps ymm15,ymm12,ymm16
  b025a9:	62 11 5c 20 58 c8    	vaddps ymm9,ymm20,ymm24
  b025af:	62 71 04 20 58 e1    	vaddps ymm12,ymm31,ymm1
  b025b5:	62 81 54 20 5c e9    	vsubps ymm21,ymm21,ymm25
  b025bb:	62 11 24 20 58 f5    	vaddps ymm14,ymm27,ymm29
  b025c1:	62 a1 4c 28 5c fa    	vsubps ymm23,ymm6,ymm18
  b025c7:	62 21 7c 28 5c c1    	vsubps ymm24,ymm0,ymm17
  b025cd:	62 b1 7c 28 58 f1    	vaddps ymm6,ymm0,ymm17
  b025d3:	62 d1 0c 20 5c c5    	vsubps ymm0,ymm30,ymm13
  b025d9:	62 51 0c 20 58 ed    	vaddps ymm13,ymm30,ymm13
  b025df:	62 a1 7c 28 28 ce    	vmovaps ymm17,ymm22
  b025e5:	62 e2 0d 28 a8 cb    	vfmadd213ps ymm17,ymm14,ymm3
  b025eb:	62 a2 1d 28 bc c8    	vfnmadd231ps ymm17,ymm12,ymm16
  b025f1:	62 01 24 20 5c cd    	vsubps ymm25,ymm27,ymm29
  b025f7:	62 c1 3c 20 59 d0    	vmulps ymm18,ymm24,ymm8
  b025fd:	62 c2 7d 28 b8 d3    	vfmadd231ps ymm18,ymm0,ymm11
  b02603:	62 f1 04 20 5c c9    	vsubps ymm1,ymm31,ymm1
  b02609:	62 a1 7c 28 28 de    	vmovaps ymm19,ymm22
  b0260f:	62 61 7c 28 10 6c 24 	vmovups ymm29,YMMWORD PTR [rsp-0x40]
  b02616:	fe 
  b02617:	62 82 35 28 a8 dd    	vfmadd213ps ymm19,ymm9,ymm29
  b0261d:	62 a2 55 28 bc d8    	vfnmadd231ps ymm19,ymm5,ymm16
  b02623:	62 41 1c 20 59 d8    	vmulps ymm27,ymm28,ymm8
  b02629:	62 02 25 28 bc da    	vfnmadd231ps ymm27,ymm11,ymm26
  b0262f:	62 c1 44 20 59 e0    	vmulps ymm20,ymm23,ymm8
  b02635:	62 c2 55 20 b8 e3    	vfmadd231ps ymm20,ymm21,ymm11
  b0263b:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  b0263f:	62 92 25 28 bc c0    	vfnmadd231ps ymm0,ymm11,ymm24
  b02645:	62 21 7c 28 28 c6    	vmovaps ymm24,ymm22
  b0264b:	62 62 15 28 a8 c7    	vfmadd213ps ymm24,ymm13,ymm7
  b02651:	62 22 4d 28 bc c0    	vfnmadd231ps ymm24,ymm6,ymm16
  b02657:	62 c1 54 20 59 e8    	vmulps ymm21,ymm21,ymm8
  b0265d:	62 a2 25 28 bc ef    	vfnmadd231ps ymm21,ymm11,ymm23
  b02663:	62 c1 74 28 59 f8    	vmulps ymm23,ymm1,ymm8
  b02669:	62 c2 35 20 b8 fb    	vfmadd231ps ymm23,ymm25,ymm11
  b0266f:	62 51 34 20 59 c0    	vmulps ymm8,ymm25,ymm8
  b02675:	62 21 7c 28 28 c8    	vmovaps ymm25,ymm16
  b0267b:	62 61 7c 28 28 f2    	vmovaps ymm30,ymm2
  b02681:	62 62 2d 28 ac ca    	vfnmadd213ps ymm25,ymm10,ymm2
  b02687:	c5 fc 10 54 24 80    	vmovups ymm2,YMMWORD PTR [rsp-0x80]
  b0268d:	62 22 6d 28 b8 ce    	vfmadd231ps ymm25,ymm2,ymm22
  b02693:	c4 42 75 bc c3       	vfnmadd231ps ymm8,ymm1,ymm11
  b02698:	62 b1 7c 28 28 c8    	vmovaps ymm1,ymm16
  b0269e:	c4 e2 0d ac cb       	vfnmadd213ps ymm1,ymm14,ymm3
  b026a3:	62 b2 1d 28 b8 ce    	vfmadd231ps ymm1,ymm12,ymm22
  b026a9:	62 31 7c 28 28 d8    	vmovaps ymm11,ymm16
  b026af:	62 12 35 28 ac dd    	vfnmadd213ps ymm11,ymm9,ymm29
  b026b5:	62 32 55 28 b8 de    	vfmadd231ps ymm11,ymm5,ymm22
  b026bb:	62 e2 15 28 ac c7    	vfnmadd213ps ymm16,ymm13,ymm7
  b026c1:	62 a2 4d 28 b8 c6    	vfmadd231ps ymm16,ymm6,ymm22
  b026c7:	62 81 24 20 58 f1    	vaddps ymm22,ymm27,ymm25
  b026cd:	62 01 34 20 5c cb    	vsubps ymm25,ymm25,ymm27
  b026d3:	62 61 74 28 58 d0    	vaddps ymm26,ymm1,ymm0
  b026d9:	62 61 74 28 5c d8    	vsubps ymm27,ymm1,ymm0
  b026df:	62 21 24 28 5c e5    	vsubps ymm28,ymm11,ymm21
  b026e5:	62 31 24 28 58 dd    	vaddps ymm11,ymm11,ymm21
  b026eb:	62 c1 7c 20 5c e8    	vsubps ymm21,ymm16,ymm8
  b026f1:	62 51 7c 20 58 c0    	vaddps ymm8,ymm16,ymm8
  b026f7:	c5 84 58 cc          	vaddps ymm1,ymm15,ymm4
  b026fb:	c5 04 5c fc          	vsubps ymm15,ymm15,ymm4
  b026ff:	62 a1 74 20 58 c2    	vaddps ymm16,ymm17,ymm18
  b02705:	62 a1 74 20 5c ca    	vsubps ymm17,ymm17,ymm18
  b0270b:	62 a1 64 20 5c d4    	vsubps ymm18,ymm19,ymm20
  b02711:	62 a1 64 20 58 dc    	vaddps ymm19,ymm19,ymm20
  b02717:	62 a1 3c 20 5c e7    	vsubps ymm20,ymm24,ymm23
  b0271d:	62 a1 3c 20 58 ff    	vaddps ymm23,ymm24,ymm23
  b02723:	62 91 2c 28 58 c6    	vaddps ymm0,ymm10,ymm30
  b02729:	62 61 6c 28 58 c0    	vaddps ymm24,ymm2,ymm0
  b0272f:	c5 8c 58 c3          	vaddps ymm0,ymm14,ymm3
  b02733:	c5 1c 58 e0          	vaddps ymm12,ymm12,ymm0
  b02737:	62 d1 14 20 58 c1    	vaddps ymm0,ymm29,ymm9
  b0273d:	c5 7c 58 f5          	vaddps ymm14,ymm0,ymm5
  b02741:	62 b1 74 28 5c e0    	vsubps ymm4,ymm1,ymm16
  b02747:	c5 94 58 d7          	vaddps ymm2,ymm13,ymm7
  b0274b:	62 b1 6c 20 5c c4    	vsubps ymm0,ymm18,ymm20
  b02751:	c5 ec 58 f6          	vaddps ymm6,ymm2,ymm6
  b02755:	62 11 4c 20 58 ca    	vaddps ymm9,ymm22,ymm26
  b0275b:	62 31 74 28 58 e8    	vaddps ymm13,ymm1,ymm16
  b02761:	62 b1 1c 20 58 cd    	vaddps ymm1,ymm28,ymm21
  b02767:	62 b1 6c 20 58 dc    	vaddps ymm3,ymm18,ymm20
  b0276d:	62 81 34 20 5c c3    	vsubps ymm16,ymm25,ymm27
  b02773:	62 81 4c 20 5c d2    	vsubps ymm18,ymm22,ymm26
  b02779:	c4 c1 24 5c d0       	vsubps ymm2,ymm11,ymm8
  b0277e:	62 b1 1c 20 5c fd    	vsubps ymm7,ymm28,ymm21
  b02784:	62 a1 04 28 58 e1    	vaddps ymm20,ymm15,ymm17
  b0278a:	62 81 34 20 58 eb    	vaddps ymm21,ymm25,ymm27
  b02790:	62 b1 64 20 58 ef    	vaddps ymm5,ymm19,ymm23
  b02796:	c4 41 24 58 d0       	vaddps ymm10,ymm11,ymm8
  b0279b:	62 c1 3c 20 5c f4    	vsubps ymm22,ymm24,ymm12
  b027a1:	62 31 04 28 5c f9    	vsubps ymm15,ymm15,ymm17
  b027a7:	c5 0c 5c c6          	vsubps ymm8,ymm14,ymm6
  b027ab:	62 31 64 20 5c df    	vsubps ymm11,ymm19,ymm23
  b027b1:	62 51 3c 20 58 e4    	vaddps ymm12,ymm24,ymm12
  b027b7:	c5 0c 58 f6          	vaddps ymm14,ymm14,ymm6
  b027bb:	c5 fc 28 35 7d 2f 57 	vmovaps ymm6,YMMWORD PTR [rip+0xffffffffff572f7d]        # 75740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d40>
  b027c2:	ff 
  b027c3:	62 c1 7c 28 28 ce    	vmovaps ymm17,ymm14
  b027c9:	62 c2 4d 28 7f cc    	vpermt2ps ymm17,ymm6,ymm12
  b027cf:	62 e1 7c 28 28 1d a7 	vmovaps ymm19,YMMWORD PTR [rip+0xffffffffff5748a7]        # 77080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4680>
  b027d6:	48 57 ff 
  b027d9:	62 52 65 20 7f f4    	vpermt2ps ymm14,ymm19,ymm12
  b027df:	c4 41 7c 28 e3       	vmovaps ymm12,ymm11
  b027e4:	62 52 4d 28 7f e7    	vpermt2ps ymm12,ymm6,ymm15
  b027ea:	62 52 65 20 7f df    	vpermt2ps ymm11,ymm19,ymm15
  b027f0:	c4 41 7c 28 fa       	vmovaps ymm15,ymm10
  b027f5:	62 32 4d 28 7f fd    	vpermt2ps ymm15,ymm6,ymm21
  b027fb:	62 32 65 20 7f d5    	vpermt2ps ymm10,ymm19,ymm21
  b02801:	62 e1 7c 28 28 ef    	vmovaps ymm21,ymm7
  b02807:	62 a2 4d 28 7f ea    	vpermt2ps ymm21,ymm6,ymm18
  b0280d:	62 b2 65 20 7f fa    	vpermt2ps ymm7,ymm19,ymm18
  b02813:	62 e1 7c 28 28 d3    	vmovaps ymm18,ymm3
  b02819:	62 c2 4d 28 7f d5    	vpermt2ps ymm18,ymm6,ymm13
  b0281f:	62 d2 65 20 7f dd    	vpermt2ps ymm3,ymm19,ymm13
  b02825:	c4 41 7c 28 e8       	vmovaps ymm13,ymm8
  b0282a:	62 32 4d 28 7f ee    	vpermt2ps ymm13,ymm6,ymm22
  b02830:	62 32 65 20 7f c6    	vpermt2ps ymm8,ymm19,ymm22
  b02836:	62 e1 7c 28 28 f5    	vmovaps ymm22,ymm5
  b0283c:	62 a2 4d 28 7f f4    	vpermt2ps ymm22,ymm6,ymm20
  b02842:	62 b2 65 20 7f ec    	vpermt2ps ymm5,ymm19,ymm20
  b02848:	62 e1 7c 28 28 e2    	vmovaps ymm20,ymm2
  b0284e:	62 a2 4d 28 7f e0    	vpermt2ps ymm20,ymm6,ymm16
  b02854:	62 b2 65 20 7f d0    	vpermt2ps ymm2,ymm19,ymm16
  b0285a:	62 e1 7c 28 28 c1    	vmovaps ymm16,ymm1
  b02860:	62 c2 4d 28 7f c1    	vpermt2ps ymm16,ymm6,ymm9
  b02866:	62 d2 65 20 7f c9    	vpermt2ps ymm1,ymm19,ymm9
  b0286c:	62 f2 7d 28 77 f4    	vpermi2ps ymm6,ymm0,ymm4
  b02872:	62 f2 65 20 7f c4    	vpermt2ps ymm0,ymm19,ymm4
  b02878:	c5 7c 11 36          	vmovups YMMWORD PTR [rsi],ymm14
  b0287c:	62 e1 7c 28 11 4e 01 	vmovups YMMWORD PTR [rsi+0x20],ymm17
  b02883:	c5 7c 11 5e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm11
  b02888:	c5 7c 11 66 60       	vmovups YMMWORD PTR [rsi+0x60],ymm12
  b0288d:	c5 7c 11 96 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm10
  b02894:	00 
  b02895:	c5 7c 11 be a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm15
  b0289c:	00 
  b0289d:	c5 fc 11 be c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm7
  b028a4:	00 
  b028a5:	62 e1 7c 28 11 6e 07 	vmovups YMMWORD PTR [rsi+0xe0],ymm21
  b028ac:	c5 fc 11 9e 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm3
  b028b3:	00 
  b028b4:	62 e1 7c 28 11 56 09 	vmovups YMMWORD PTR [rsi+0x120],ymm18
  b028bb:	c5 7c 11 86 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm8
  b028c2:	00 
  b028c3:	c5 7c 11 ae 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm13
  b028ca:	00 
  b028cb:	c5 fc 11 ae 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm5
  b028d2:	00 
  b028d3:	62 e1 7c 28 11 76 0d 	vmovups YMMWORD PTR [rsi+0x1a0],ymm22
  b028da:	c5 fc 11 96 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm2
  b028e1:	00 
  b028e2:	62 e1 7c 28 11 66 0f 	vmovups YMMWORD PTR [rsi+0x1e0],ymm20
  b028e9:	c5 fc 11 8e 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm1
  b028f0:	00 
  b028f1:	62 e1 7c 28 11 46 11 	vmovups YMMWORD PTR [rsi+0x220],ymm16
  b028f8:	c5 fc 11 86 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm0
  b028ff:	00 
  b02900:	c5 fc 11 b6 60 02 00 	vmovups YMMWORD PTR [rsi+0x260],ymm6
  b02907:	00 
  b02908:	48 81 c4 08 01 00 00 	add    rsp,0x108
  b0290f:	c5 f8 77             	vzeroupper
  b02912:	c3                   	ret
  b02913:	cc                   	int3
  b02914:	cc                   	int3
  b02915:	cc                   	int3
  b02916:	cc                   	int3
  b02917:	cc                   	int3
  b02918:	cc                   	int3
  b02919:	cc                   	int3
  b0291a:	cc                   	int3
  b0291b:	cc                   	int3
  b0291c:	cc                   	int3
  b0291d:	cc                   	int3
  b0291e:	cc                   	int3
  b0291f:	cc                   	int3
  b02920:	cc                   	int3
  b02921:	cc                   	int3
  b02922:	cc                   	int3
  b02923:	cc                   	int3
  b02924:	cc                   	int3
  b02925:	cc                   	int3
  b02926:	cc                   	int3
  b02927:	cc                   	int3
  b02928:	cc                   	int3
  b02929:	cc                   	int3
  b0292a:	cc                   	int3
  b0292b:	cc                   	int3
  b0292c:	cc                   	int3
  b0292d:	cc                   	int3
  b0292e:	cc                   	int3
  b0292f:	cc                   	int3
  b02930:	cc                   	int3
  b02931:	cc                   	int3
  b02932:	cc                   	int3
  b02933:	cc                   	int3
  b02934:	cc                   	int3
  b02935:	cc                   	int3
  b02936:	cc                   	int3
  b02937:	cc                   	int3
  b02938:	cc                   	int3
  b02939:	cc                   	int3
  b0293a:	cc                   	int3
  b0293b:	cc                   	int3
  b0293c:	cc                   	int3
  b0293d:	cc                   	int3
  b0293e:	cc                   	int3
  b0293f:	cc                   	int3
