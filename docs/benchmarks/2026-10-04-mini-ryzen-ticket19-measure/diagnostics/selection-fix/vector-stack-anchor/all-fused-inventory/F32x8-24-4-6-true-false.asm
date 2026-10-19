
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006e0c40 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6e0c40:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  6e0c44:	c5 f8 10 4f 20       	vmovups xmm1,XMMWORD PTR [rdi+0x20]
  6e0c49:	c5 fc 10 57 30       	vmovups ymm2,YMMWORD PTR [rdi+0x30]
  6e0c4e:	c5 f8 10 5f 50       	vmovups xmm3,XMMWORD PTR [rdi+0x50]
  6e0c53:	c5 fc 10 67 60       	vmovups ymm4,YMMWORD PTR [rdi+0x60]
  6e0c58:	c5 f8 10 af 80 00 00 	vmovups xmm5,XMMWORD PTR [rdi+0x80]
  6e0c5f:	00 
  6e0c60:	c5 fc 10 b7 90 00 00 	vmovups ymm6,YMMWORD PTR [rdi+0x90]
  6e0c67:	00 
  6e0c68:	c5 f8 10 bf b0 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0xb0]
  6e0c6f:	00 
  6e0c70:	c5 7c c6 c1 dd       	vshufps ymm8,ymm0,ymm1,0xdd
  6e0c75:	c4 43 fd 01 c8 d8    	vpermpd ymm9,ymm8,0xd8
  6e0c7b:	c5 5c c6 c5 dd       	vshufps ymm8,ymm4,ymm5,0xdd
  6e0c80:	c4 43 fd 01 d0 d8    	vpermpd ymm10,ymm8,0xd8
  6e0c86:	c5 6c c6 c3 dd       	vshufps ymm8,ymm2,ymm3,0xdd
  6e0c8b:	c4 43 fd 01 d8 d8    	vpermpd ymm11,ymm8,0xd8
  6e0c91:	c5 4c c6 c7 dd       	vshufps ymm8,ymm6,ymm7,0xdd
  6e0c96:	c4 43 fd 01 e0 d8    	vpermpd ymm12,ymm8,0xd8
  6e0c9c:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  6e0ca1:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  6e0ca7:	c5 dc c6 cd 88       	vshufps ymm1,ymm4,ymm5,0x88
  6e0cac:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  6e0cb2:	c5 ec c6 d3 88       	vshufps ymm2,ymm2,ymm3,0x88
  6e0cb7:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  6e0cbd:	c5 cc c6 df 88       	vshufps ymm3,ymm6,ymm7,0x88
  6e0cc2:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  6e0cc8:	c4 c1 34 58 e2       	vaddps ymm4,ymm9,ymm10
  6e0ccd:	c4 c1 24 58 ec       	vaddps ymm5,ymm11,ymm12
  6e0cd2:	c5 dc 58 f5          	vaddps ymm6,ymm4,ymm5
  6e0cd6:	c5 fc 58 f9          	vaddps ymm7,ymm0,ymm1
  6e0cda:	c5 6c 58 eb          	vaddps ymm13,ymm2,ymm3
  6e0cde:	c5 14 58 c7          	vaddps ymm8,ymm13,ymm7
  6e0ce2:	c4 41 34 5c d2       	vsubps ymm10,ymm9,ymm10
  6e0ce7:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  6e0ceb:	c5 2c 58 f2          	vaddps ymm14,ymm10,ymm2
  6e0cef:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  6e0cf3:	c4 c1 1c 5c cb       	vsubps ymm1,ymm12,ymm11
  6e0cf8:	c5 74 58 c8          	vaddps ymm9,ymm1,ymm0
  6e0cfc:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  6e0d00:	c4 c1 44 5c ed       	vsubps ymm5,ymm7,ymm13
  6e0d05:	c5 ac 5c d2          	vsubps ymm2,ymm10,ymm2
  6e0d09:	c5 fc 5c d9          	vsubps ymm3,ymm0,ymm1
  6e0d0d:	c5 f8 28 c6          	vmovaps xmm0,xmm6
  6e0d11:	c4 e3 7d 19 f1 01    	vextractf128 xmm1,ymm6,0x1
  6e0d17:	c5 78 29 f6          	vmovaps xmm6,xmm14
  6e0d1b:	c4 63 7d 19 f7 01    	vextractf128 xmm7,ymm14,0x1
  6e0d21:	c5 78 28 d4          	vmovaps xmm10,xmm4
  6e0d25:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  6e0d2b:	c5 75 14 dc          	vunpcklpd ymm11,ymm1,ymm4
  6e0d2f:	c5 f8 28 ca          	vmovaps xmm1,xmm2
  6e0d33:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  6e0d39:	c5 c5 14 d2          	vunpcklpd ymm2,ymm7,ymm2
  6e0d3d:	c4 c1 7d 15 e2       	vunpckhpd ymm4,ymm0,ymm10
  6e0d42:	c4 c1 7d 14 fa       	vunpcklpd ymm7,ymm0,ymm10
  6e0d47:	c5 4d 15 d1          	vunpckhpd ymm10,ymm6,ymm1
  6e0d4b:	c5 cd 14 c9          	vunpcklpd ymm1,ymm6,ymm1
  6e0d4f:	c5 c4 c6 c1 88       	vshufps ymm0,ymm7,ymm1,0x88
  6e0d54:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  6e0d59:	c5 fc 11 44 24 b8    	vmovups YMMWORD PTR [rsp-0x48],ymm0
  6e0d5f:	c5 c4 c6 c9 dd       	vshufps ymm1,ymm7,ymm1,0xdd
  6e0d64:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6e0d69:	c4 c1 5c c6 f2 88    	vshufps ymm6,ymm4,ymm10,0x88
  6e0d6f:	c5 cc c6 fe d8       	vshufps ymm7,ymm6,ymm6,0xd8
  6e0d74:	c4 c1 5c c6 e2 dd    	vshufps ymm4,ymm4,ymm10,0xdd
  6e0d7a:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  6e0d7f:	c5 a4 c6 f2 88       	vshufps ymm6,ymm11,ymm2,0x88
  6e0d84:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  6e0d89:	c5 a4 c6 d2 dd       	vshufps ymm2,ymm11,ymm2,0xdd
  6e0d8e:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6e0d93:	c4 41 78 28 d0       	vmovaps xmm10,xmm8
  6e0d98:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  6e0d9e:	c4 41 78 28 d9       	vmovaps xmm11,xmm9
  6e0da3:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  6e0da9:	c5 78 28 e5          	vmovaps xmm12,xmm5
  6e0dad:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  6e0db3:	c5 bd 14 ed          	vunpcklpd ymm5,ymm8,ymm5
  6e0db7:	c5 78 28 c3          	vmovaps xmm8,xmm3
  6e0dbb:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  6e0dc1:	c5 35 14 eb          	vunpcklpd ymm13,ymm9,ymm3
  6e0dc5:	c4 41 2d 15 f4       	vunpckhpd ymm14,ymm10,ymm12
  6e0dca:	c4 41 2d 14 cc       	vunpcklpd ymm9,ymm10,ymm12
  6e0dcf:	c4 41 25 15 d0       	vunpckhpd ymm10,ymm11,ymm8
  6e0dd4:	c4 41 25 14 c0       	vunpcklpd ymm8,ymm11,ymm8
  6e0dd9:	c4 c1 34 c6 d8 88    	vshufps ymm3,ymm9,ymm8,0x88
  6e0ddf:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6e0de4:	c4 41 34 c6 c0 dd    	vshufps ymm8,ymm9,ymm8,0xdd
  6e0dea:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  6e0df0:	c4 41 0c c6 ca 88    	vshufps ymm9,ymm14,ymm10,0x88
  6e0df6:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  6e0dfc:	c4 41 0c c6 d2 dd    	vshufps ymm10,ymm14,ymm10,0xdd
  6e0e02:	c4 41 2c c6 f2 d8    	vshufps ymm14,ymm10,ymm10,0xd8
  6e0e08:	c4 41 54 c6 d5 88    	vshufps ymm10,ymm5,ymm13,0x88
  6e0e0e:	c4 41 2c c6 e2 d8    	vshufps ymm12,ymm10,ymm10,0xd8
  6e0e14:	c4 c1 54 c6 ed dd    	vshufps ymm5,ymm5,ymm13,0xdd
  6e0e1a:	c5 54 c6 ed d8       	vshufps ymm13,ymm5,ymm5,0xd8
  6e0e1f:	c5 7c 10 5a 40       	vmovups ymm11,YMMWORD PTR [rdx+0x40]
  6e0e24:	c5 7c 10 92 80 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0x80]
  6e0e2b:	00 
  6e0e2c:	c5 7c 10 ba a0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xa0]
  6e0e33:	00 
  6e0e34:	c5 ac 59 ef          	vmulps ymm5,ymm10,ymm7
  6e0e38:	c4 c2 35 bc ef       	vfnmadd231ps ymm5,ymm9,ymm15
  6e0e3d:	c4 41 2c 59 c9       	vmulps ymm9,ymm10,ymm9
  6e0e42:	c5 fc 10 82 00 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x100]
  6e0e49:	00 
  6e0e4a:	c4 42 45 b8 cf       	vfmadd231ps ymm9,ymm7,ymm15
  6e0e4f:	c5 fc 10 ba 20 01 00 	vmovups ymm7,YMMWORD PTR [rdx+0x120]
  6e0e56:	00 
  6e0e57:	c5 7c 59 d6          	vmulps ymm10,ymm0,ymm6
  6e0e5b:	c4 62 1d bc d7       	vfnmadd231ps ymm10,ymm12,ymm7
  6e0e60:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  6e0e64:	c5 fc 10 82 c0 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0xc0]
  6e0e6b:	00 
  6e0e6c:	c4 62 4d b8 e7       	vfmadd231ps ymm12,ymm6,ymm7
  6e0e71:	c5 7c 10 ba e0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xe0]
  6e0e78:	00 
  6e0e79:	c5 fc 59 f4          	vmulps ymm6,ymm0,ymm4
  6e0e7d:	c4 c2 0d bc f7       	vfnmadd231ps ymm6,ymm14,ymm15
  6e0e82:	c5 8c 59 f8          	vmulps ymm7,ymm14,ymm0
  6e0e86:	c5 fc 10 82 40 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x140]
  6e0e8d:	00 
  6e0e8e:	c4 c2 5d b8 ff       	vfmadd231ps ymm7,ymm4,ymm15
  6e0e93:	c5 7c 10 ba 60 01 00 	vmovups ymm15,YMMWORD PTR [rdx+0x160]
  6e0e9a:	00 
  6e0e9b:	c5 7c 59 f2          	vmulps ymm14,ymm0,ymm2
  6e0e9f:	c4 42 15 bc f7       	vfnmadd231ps ymm14,ymm13,ymm15
  6e0ea4:	c5 94 59 e0          	vmulps ymm4,ymm13,ymm0
  6e0ea8:	c5 fc 10 42 60       	vmovups ymm0,YMMWORD PTR [rdx+0x60]
  6e0ead:	c4 c2 6d b8 e7       	vfmadd231ps ymm4,ymm2,ymm15
  6e0eb2:	c5 2c 58 ed          	vaddps ymm13,ymm10,ymm5
  6e0eb6:	c5 24 59 f9          	vmulps ymm15,ymm11,ymm1
  6e0eba:	c4 62 3d bc f8       	vfnmadd231ps ymm15,ymm8,ymm0
  6e0ebf:	c4 41 24 59 c0       	vmulps ymm8,ymm11,ymm8
  6e0ec4:	c5 fc 10 54 24 b8    	vmovups ymm2,YMMWORD PTR [rsp-0x48]
  6e0eca:	c5 14 58 da          	vaddps ymm11,ymm13,ymm2
  6e0ece:	c5 7c 11 5c 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm11
  6e0ed4:	c4 62 75 b8 c0       	vfmadd231ps ymm8,ymm1,ymm0
  6e0ed9:	c4 62 7d 18 1d 7e 45 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff99457e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6e0ee0:	99 ff 
  6e0ee2:	c4 c1 0c 58 cf       	vaddps ymm1,ymm14,ymm15
  6e0ee7:	c4 62 25 ac ea       	vfnmadd213ps ymm13,ymm11,ymm2
  6e0eec:	c5 cc 58 c1          	vaddps ymm0,ymm6,ymm1
  6e0ef0:	c5 fc 11 44 24 b8    	vmovups YMMWORD PTR [rsp-0x48],ymm0
  6e0ef6:	c4 e2 25 bc f1       	vfnmadd231ps ymm6,ymm11,ymm1
  6e0efb:	c4 c1 34 58 c4       	vaddps ymm0,ymm9,ymm12
  6e0f00:	c5 fc 58 d3          	vaddps ymm2,ymm0,ymm3
  6e0f04:	c4 e2 25 ac c3       	vfnmadd213ps ymm0,ymm11,ymm3
  6e0f09:	c5 bc 58 cc          	vaddps ymm1,ymm8,ymm4
  6e0f0d:	c5 c4 58 d9          	vaddps ymm3,ymm7,ymm1
  6e0f11:	c4 c2 75 bc fb       	vfnmadd231ps ymm7,ymm1,ymm11
  6e0f16:	c4 c1 34 5c cc       	vsubps ymm1,ymm9,ymm12
  6e0f1b:	c4 41 5c 5c c0       	vsubps ymm8,ymm4,ymm8
  6e0f20:	c4 62 7d 18 0d ab 43 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff9943ab]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6e0f27:	99 ff 
  6e0f29:	c5 b4 59 c9          	vmulps ymm1,ymm9,ymm1
  6e0f2d:	c4 c1 54 5c ea       	vsubps ymm5,ymm5,ymm10
  6e0f32:	c5 94 58 e1          	vaddps ymm4,ymm13,ymm1
  6e0f36:	c4 41 3c 59 e1       	vmulps ymm12,ymm8,ymm9
  6e0f3b:	c4 41 0c 5c d7       	vsubps ymm10,ymm14,ymm15
  6e0f40:	c5 1c 58 c6          	vaddps ymm8,ymm12,ymm6
  6e0f44:	c5 34 59 f5          	vmulps ymm14,ymm9,ymm5
  6e0f48:	c4 41 2c 59 f9       	vmulps ymm15,ymm10,ymm9
  6e0f4d:	c4 41 7c 5c d6       	vsubps ymm10,ymm0,ymm14
  6e0f52:	c5 94 5c e9          	vsubps ymm5,ymm13,ymm1
  6e0f56:	c4 41 44 5c df       	vsubps ymm11,ymm7,ymm15
  6e0f5b:	c4 c1 4c 5c f4       	vsubps ymm6,ymm6,ymm12
  6e0f60:	c5 0c 58 c8          	vaddps ymm9,ymm14,ymm0
  6e0f64:	c5 84 58 ff          	vaddps ymm7,ymm15,ymm7
  6e0f68:	c5 7c 10 6c 24 d8    	vmovups ymm13,YMMWORD PTR [rsp-0x28]
  6e0f6e:	c5 7c 10 74 24 b8    	vmovups ymm14,YMMWORD PTR [rsp-0x48]
  6e0f74:	c4 c1 10 58 c6       	vaddps xmm0,xmm13,xmm14
  6e0f79:	c5 e8 58 cb          	vaddps xmm1,xmm2,xmm3
  6e0f7d:	c5 70 14 e0          	vunpcklps xmm12,xmm1,xmm0
  6e0f81:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6e0f85:	c5 f8 11 46 10       	vmovups XMMWORD PTR [rsi+0x10],xmm0
  6e0f8a:	c5 78 11 26          	vmovups XMMWORD PTR [rsi],xmm12
  6e0f8e:	c4 c1 58 5c c0       	vsubps xmm0,xmm4,xmm8
  6e0f93:	c4 c1 28 5c cb       	vsubps xmm1,xmm10,xmm11
  6e0f98:	c5 70 14 e0          	vunpcklps xmm12,xmm1,xmm0
  6e0f9c:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6e0fa0:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  6e0fa5:	c5 78 11 66 20       	vmovups XMMWORD PTR [rsi+0x20],xmm12
  6e0faa:	c5 d0 58 c6          	vaddps xmm0,xmm5,xmm6
  6e0fae:	c5 b0 58 cf          	vaddps xmm1,xmm9,xmm7
  6e0fb2:	c5 70 14 e0          	vunpcklps xmm12,xmm1,xmm0
  6e0fb6:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6e0fba:	c5 f8 11 46 50       	vmovups XMMWORD PTR [rsi+0x50],xmm0
  6e0fbf:	c5 78 11 66 40       	vmovups XMMWORD PTR [rsi+0x40],xmm12
  6e0fc4:	c4 c1 10 5c c6       	vsubps xmm0,xmm13,xmm14
  6e0fc9:	c5 e8 5c cb          	vsubps xmm1,xmm2,xmm3
  6e0fcd:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6e0fd1:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6e0fd5:	c5 f8 11 46 70       	vmovups XMMWORD PTR [rsi+0x70],xmm0
  6e0fda:	c5 f8 11 56 60       	vmovups XMMWORD PTR [rsi+0x60],xmm2
  6e0fdf:	c5 b8 58 c4          	vaddps xmm0,xmm8,xmm4
  6e0fe3:	c4 c1 28 58 cb       	vaddps xmm1,xmm10,xmm11
  6e0fe8:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6e0fec:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6e0ff0:	c5 f8 11 86 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm0
  6e0ff7:	00 
  6e0ff8:	c5 f8 11 96 80 00 00 	vmovups XMMWORD PTR [rsi+0x80],xmm2
  6e0fff:	00 
  6e1000:	c5 d0 5c c6          	vsubps xmm0,xmm5,xmm6
  6e1004:	c5 b0 5c cf          	vsubps xmm1,xmm9,xmm7
  6e1008:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6e100c:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6e1010:	c5 f8 11 86 b0 00 00 	vmovups XMMWORD PTR [rsi+0xb0],xmm0
  6e1017:	00 
  6e1018:	c5 f8 11 96 a0 00 00 	vmovups XMMWORD PTR [rsi+0xa0],xmm2
  6e101f:	00 
  6e1020:	c5 f8 77             	vzeroupper
  6e1023:	c3                   	ret
