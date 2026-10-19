
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b1ea40 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b1ea40:	c5 f8 10 07          	vmovups xmm0,XMMWORD PTR [rdi]
  b1ea44:	c5 f8 10 4f 10       	vmovups xmm1,XMMWORD PTR [rdi+0x10]
  b1ea49:	c5 f8 10 57 20       	vmovups xmm2,XMMWORD PTR [rdi+0x20]
  b1ea4e:	c5 f8 10 5f 30       	vmovups xmm3,XMMWORD PTR [rdi+0x30]
  b1ea53:	c5 e8 c6 e3 dd       	vshufps xmm4,xmm2,xmm3,0xdd
  b1ea58:	c5 f8 10 6f 50       	vmovups xmm5,XMMWORD PTR [rdi+0x50]
  b1ea5d:	c5 f8 10 77 40       	vmovups xmm6,XMMWORD PTR [rdi+0x40]
  b1ea62:	c5 c8 c6 fd dd       	vshufps xmm7,xmm6,xmm5,0xdd
  b1ea67:	c5 5c 5c c7          	vsubps ymm8,ymm4,ymm7
  b1ea6b:	c4 62 7d 18 0d 60 68 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff556860]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b1ea72:	55 ff 
  b1ea74:	c4 41 3c 59 c1       	vmulps ymm8,ymm8,ymm9
  b1ea79:	c5 e8 c6 d3 88       	vshufps xmm2,xmm2,xmm3,0x88
  b1ea7e:	c5 c8 c6 dd 88       	vshufps xmm3,xmm6,xmm5,0x88
  b1ea83:	c5 ec 58 eb          	vaddps ymm5,ymm2,ymm3
  b1ea87:	c5 f8 c6 f1 88       	vshufps xmm6,xmm0,xmm1,0x88
  b1ea8c:	c4 62 7d 18 15 cb 69 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff5569cb]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b1ea93:	55 ff 
  b1ea95:	c5 dc 58 e7          	vaddps ymm4,ymm4,ymm7
  b1ea99:	c5 f8 c6 c1 dd       	vshufps xmm0,xmm0,xmm1,0xdd
  b1ea9e:	c5 f8 58 cc          	vaddps xmm1,xmm0,xmm4
  b1eaa2:	c4 c2 5d bc c2       	vfnmadd231ps ymm0,ymm4,ymm10
  b1eaa7:	c4 62 55 ac d6       	vfnmadd213ps ymm10,ymm5,ymm6
  b1eaac:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  b1eab0:	c5 b4 59 d2          	vmulps ymm2,ymm9,ymm2
  b1eab4:	c5 f8 58 da          	vaddps xmm3,xmm0,xmm2
  b1eab8:	c5 f8 5c c2          	vsubps xmm0,xmm0,xmm2
  b1eabc:	c5 f5 15 d0          	vunpckhpd ymm2,ymm1,ymm0
  b1eac0:	c5 f5 14 c0          	vunpcklpd ymm0,ymm1,ymm0
  b1eac4:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  b1eac8:	c4 e3 65 0c e1 cc    	vblendps ymm4,ymm3,ymm1,0xcc
  b1eace:	c5 e5 73 db 08       	vpsrldq ymm3,ymm3,0x8
  b1ead3:	c5 fc c6 fc 88       	vshufps ymm7,ymm0,ymm4,0x88
  b1ead8:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b1eadd:	c5 fc c6 c4 dd       	vshufps ymm0,ymm0,ymm4,0xdd
  b1eae2:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b1eae7:	c5 ec c6 e3 88       	vshufps ymm4,ymm2,ymm3,0x88
  b1eaec:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b1eaf1:	c5 ec c6 d3 dd       	vshufps ymm2,ymm2,ymm3,0xdd
  b1eaf6:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b1eafb:	c5 c8 58 dd          	vaddps xmm3,xmm6,xmm5
  b1eaff:	c4 c1 28 5c e8       	vsubps xmm5,xmm10,xmm8
  b1eb04:	c4 c1 38 58 f2       	vaddps xmm6,xmm8,xmm10
  b1eb09:	c5 65 15 c6          	vunpckhpd ymm8,ymm3,ymm6
  b1eb0d:	c5 e5 14 de          	vunpcklpd ymm3,ymm3,ymm6
  b1eb11:	c4 e3 55 0c c9 cc    	vblendps ymm1,ymm5,ymm1,0xcc
  b1eb17:	c5 d5 73 dd 08       	vpsrldq ymm5,ymm5,0x8
  b1eb1c:	c5 e4 c6 f1 88       	vshufps ymm6,ymm3,ymm1,0x88
  b1eb21:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  b1eb26:	c5 e4 c6 c9 dd       	vshufps ymm1,ymm3,ymm1,0xdd
  b1eb2b:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  b1eb30:	c5 bc c6 dd 88       	vshufps ymm3,ymm8,ymm5,0x88
  b1eb35:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b1eb3a:	c5 bc c6 ed dd       	vshufps ymm5,ymm8,ymm5,0xdd
  b1eb3f:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b1eb44:	c5 7c 10 42 40       	vmovups ymm8,YMMWORD PTR [rdx+0x40]
  b1eb49:	c5 7c 10 4a 60       	vmovups ymm9,YMMWORD PTR [rdx+0x60]
  b1eb4e:	c5 7c 10 92 80 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0x80]
  b1eb55:	00 
  b1eb56:	c5 7c 10 9a a0 00 00 	vmovups ymm11,YMMWORD PTR [rdx+0xa0]
  b1eb5d:	00 
  b1eb5e:	c5 7c 10 a2 c0 00 00 	vmovups ymm12,YMMWORD PTR [rdx+0xc0]
  b1eb65:	00 
  b1eb66:	c5 7c 10 aa e0 00 00 	vmovups ymm13,YMMWORD PTR [rdx+0xe0]
  b1eb6d:	00 
  b1eb6e:	c5 2c 59 f4          	vmulps ymm14,ymm10,ymm4
  b1eb72:	c4 42 65 bc f3       	vfnmadd231ps ymm14,ymm3,ymm11
  b1eb77:	c5 0c 58 ff          	vaddps ymm15,ymm14,ymm7
  b1eb7b:	62 c1 7c 28 59 c0    	vmulps ymm16,ymm0,ymm8
  b1eb81:	62 c2 75 28 bc c1    	vfnmadd231ps ymm16,ymm1,ymm9
  b1eb87:	62 c1 6c 28 59 cc    	vmulps ymm17,ymm2,ymm12
  b1eb8d:	62 c2 55 28 bc cd    	vfnmadd231ps ymm17,ymm5,ymm13
  b1eb93:	62 a1 7c 20 58 d1    	vaddps ymm18,ymm16,ymm17
  b1eb99:	c5 ac 59 db          	vmulps ymm3,ymm10,ymm3
  b1eb9d:	c4 c2 5d b8 db       	vfmadd231ps ymm3,ymm4,ymm11
  b1eba2:	c5 e4 58 e6          	vaddps ymm4,ymm3,ymm6
  b1eba6:	c5 bc 59 c9          	vmulps ymm1,ymm8,ymm1
  b1ebaa:	c4 c2 7d b8 c9       	vfmadd231ps ymm1,ymm0,ymm9
  b1ebaf:	c5 9c 59 c5          	vmulps ymm0,ymm12,ymm5
  b1ebb3:	c4 c2 6d b8 c5       	vfmadd231ps ymm0,ymm2,ymm13
  b1ebb8:	c5 f4 58 d0          	vaddps ymm2,ymm1,ymm0
  b1ebbc:	c4 c1 44 5c ee       	vsubps ymm5,ymm7,ymm14
  b1ebc1:	c5 f4 5c c0          	vsubps ymm0,ymm1,ymm0
  b1ebc5:	c5 d4 58 c8          	vaddps ymm1,ymm5,ymm0
  b1ebc9:	c5 cc 5c db          	vsubps ymm3,ymm6,ymm3
  b1ebcd:	62 b1 74 20 5c f0    	vsubps ymm6,ymm17,ymm16
  b1ebd3:	62 b1 04 28 5c fa    	vsubps ymm7,ymm15,ymm18
  b1ebd9:	c5 d4 5c c0          	vsubps ymm0,ymm5,ymm0
  b1ebdd:	62 b1 04 28 58 ea    	vaddps ymm5,ymm15,ymm18
  b1ebe3:	c5 58 58 c2          	vaddps xmm8,xmm4,xmm2
  b1ebe7:	c5 7c 28 0d d1 96 55 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff5596d1]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  b1ebee:	ff 
  b1ebef:	62 72 35 28 7f c5    	vpermt2ps ymm8,ymm9,ymm5
  b1ebf5:	c5 78 11 06          	vmovups XMMWORD PTR [rsi],xmm8
  b1ebf9:	c4 63 7d 19 c5 01    	vextractf128 xmm5,ymm8,0x1
  b1ebff:	c5 f8 13 6e 10       	vmovlps QWORD PTR [rsi+0x10],xmm5
  b1ec04:	c5 e0 58 ee          	vaddps xmm5,xmm3,xmm6
  b1ec08:	62 f2 35 28 7f e9    	vpermt2ps ymm5,ymm9,ymm1
  b1ec0e:	c5 f8 11 6e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm5
  b1ec13:	c4 e3 7d 19 e9 01    	vextractf128 xmm1,ymm5,0x1
  b1ec19:	c5 f8 13 4e 28       	vmovlps QWORD PTR [rsi+0x28],xmm1
  b1ec1e:	c5 d8 5c ca          	vsubps xmm1,xmm4,xmm2
  b1ec22:	62 f2 35 28 7f cf    	vpermt2ps ymm1,ymm9,ymm7
  b1ec28:	c5 f8 11 4e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm1
  b1ec2d:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b1ec33:	c5 f8 13 4e 40       	vmovlps QWORD PTR [rsi+0x40],xmm1
  b1ec38:	c5 e0 5c ce          	vsubps xmm1,xmm3,xmm6
  b1ec3c:	62 f2 35 28 7f c8    	vpermt2ps ymm1,ymm9,ymm0
  b1ec42:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  b1ec48:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  b1ec4d:	c5 f8 11 4e 48       	vmovups XMMWORD PTR [rsi+0x48],xmm1
  b1ec52:	c5 f8 77             	vzeroupper
  b1ec55:	c3                   	ret
