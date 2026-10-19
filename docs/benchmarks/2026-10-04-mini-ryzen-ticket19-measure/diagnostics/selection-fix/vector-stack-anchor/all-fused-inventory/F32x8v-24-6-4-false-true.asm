
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000addb00 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  addb00:	48 c1 e2 06          	shl    rdx,0x6
  addb04:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  addb08:	c4 e2 7d 18 05 c3 77 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5977c3]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  addb0f:	59 ff 
  addb11:	31 d2                	xor    edx,edx
  addb13:	c4 e2 7d 18 0d 44 79 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff597944]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  addb1a:	59 ff 
  addb1c:	c5 fc 28 15 bc 96 59 	vmovaps ymm2,YMMWORD PTR [rip+0xffffffffff5996bc]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  addb23:	ff 
  addb24:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  addb2b:	00 00 00 00 00 
  addb30:	c5 f8 10 5c 17 50    	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x50]
  addb36:	c5 f8 10 64 17 40    	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x40]
  addb3c:	c5 d8 c6 eb 88       	vshufps xmm5,xmm4,xmm3,0x88
  addb41:	c5 f8 10 b4 17 90 00 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x90]
  addb48:	00 00 
  addb4a:	c5 f8 10 bc 17 80 00 	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x80]
  addb51:	00 00 
  addb53:	c5 40 c6 c6 88       	vshufps xmm8,xmm7,xmm6,0x88
  addb58:	c4 41 54 5c c8       	vsubps ymm9,ymm5,ymm8
  addb5d:	c5 34 59 c8          	vmulps ymm9,ymm9,ymm0
  addb61:	c5 d8 c6 e3 dd       	vshufps xmm4,xmm4,xmm3,0xdd
  addb66:	c5 c0 c6 f6 dd       	vshufps xmm6,xmm7,xmm6,0xdd
  addb6b:	c5 dc 58 fe          	vaddps ymm7,ymm4,ymm6
  addb6f:	c5 78 10 14 17       	vmovups xmm10,XMMWORD PTR [rdi+rdx*1]
  addb74:	c5 78 10 5c 17 10    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x10]
  addb7a:	c5 78 10 64 17 20    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x20]
  addb80:	c5 78 10 6c 17 30    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x30]
  addb86:	c4 41 28 c6 f3 dd    	vshufps xmm14,xmm10,xmm11,0xdd
  addb8c:	c5 7c 28 f9          	vmovaps ymm15,ymm1
  addb90:	c4 42 45 ac fe       	vfnmadd213ps ymm15,ymm7,ymm14
  addb95:	c4 c1 34 58 df       	vaddps ymm3,ymm9,ymm15
  addb9a:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0xb0]
  addba1:	0b 
  addba2:	62 e1 7c 08 10 4c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0xa0]
  addba9:	0a 
  addbaa:	62 a1 74 00 c6 d0 88 	vshufps xmm18,xmm17,xmm16,0x88
  addbb1:	62 c1 1c 08 c6 dd 88 	vshufps xmm19,xmm12,xmm13,0x88
  addbb8:	62 a1 6c 20 5c e3    	vsubps ymm20,ymm18,ymm19
  addbbe:	62 e1 5c 20 59 e0    	vmulps ymm20,ymm20,ymm0
  addbc4:	62 a1 74 00 c6 c0 dd 	vshufps xmm16,xmm17,xmm16,0xdd
  addbcb:	c4 41 18 c6 e5 dd    	vshufps xmm12,xmm12,xmm13,0xdd
  addbd1:	62 51 7c 20 58 ec    	vaddps ymm13,ymm16,ymm12
  addbd7:	62 e1 7c 08 10 4c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0x70]
  addbde:	07 
  addbdf:	62 e1 7c 08 10 6c 17 	vmovups xmm21,XMMWORD PTR [rdi+rdx*1+0x60]
  addbe6:	06 
  addbe7:	62 a1 54 00 c6 f1 dd 	vshufps xmm22,xmm21,xmm17,0xdd
  addbee:	62 e1 7c 28 28 f9    	vmovaps ymm23,ymm1
  addbf4:	62 a2 15 28 ac fe    	vfnmadd213ps ymm23,ymm13,ymm22
  addbfa:	62 21 5c 20 58 c7    	vaddps ymm24,ymm20,ymm23
  addc00:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  addc04:	c4 41 28 c6 c3 88    	vshufps xmm8,xmm10,xmm11,0x88
  addc0a:	c5 7c 28 d1          	vmovaps ymm10,ymm1
  addc0e:	c4 42 55 ac d0       	vfnmadd213ps ymm10,ymm5,ymm8
  addc13:	c5 dc 5c e6          	vsubps ymm4,ymm4,ymm6
  addc17:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  addc1b:	c5 ac 5c f4          	vsubps ymm6,ymm10,ymm4
  addc1f:	62 31 6c 20 58 db    	vaddps ymm11,ymm18,ymm19
  addc25:	62 a1 54 00 c6 c9 88 	vshufps xmm17,xmm21,xmm17,0x88
  addc2c:	62 e1 7c 28 28 d1    	vmovaps ymm18,ymm1
  addc32:	62 a2 25 28 ac d1    	vfnmadd213ps ymm18,ymm11,ymm17
  addc38:	62 51 7c 20 5c e4    	vsubps ymm12,ymm16,ymm12
  addc3e:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  addc42:	62 c1 6c 20 5c c4    	vsubps ymm16,ymm18,ymm12
  addc48:	c4 41 04 5c c9       	vsubps ymm9,ymm15,ymm9
  addc4d:	62 31 44 20 5c fc    	vsubps ymm15,ymm23,ymm20
  addc53:	c5 ac 58 e4          	vaddps ymm4,ymm10,ymm4
  addc57:	62 51 6c 20 58 d4    	vaddps ymm10,ymm18,ymm12
  addc5d:	c5 8c 58 ff          	vaddps ymm7,ymm14,ymm7
  addc61:	62 51 4c 20 58 e5    	vaddps ymm12,ymm22,ymm13
  addc67:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  addc6b:	62 51 74 20 58 c3    	vaddps ymm8,ymm17,ymm11
  addc71:	c4 41 34 5c df       	vsubps ymm11,ymm9,ymm15
  addc76:	c4 41 5c 5c ea       	vsubps ymm13,ymm4,ymm10
  addc7b:	c5 1c 58 f7          	vaddps ymm14,ymm12,ymm7
  addc7f:	62 c1 54 28 58 c8    	vaddps ymm17,ymm5,ymm8
  addc85:	c5 a8 58 e4          	vaddps xmm4,xmm10,xmm4
  addc89:	62 f3 75 20 18 e4 01 	vinsertf32x4 ymm4,ymm17,xmm4,0x1
  addc90:	62 31 4c 08 5c d0    	vsubps xmm10,xmm6,xmm16
  addc96:	c4 43 15 18 d2 01    	vinsertf128 ymm10,ymm13,xmm10,0x1
  addc9c:	62 b1 4c 08 58 f0    	vaddps xmm6,xmm6,xmm16
  addca2:	c5 5d 14 ee          	vunpcklpd ymm13,ymm4,ymm6
  addca6:	c4 c1 50 5c e8       	vsubps xmm5,xmm5,xmm8
  addcab:	c5 2d 14 c5          	vunpcklpd ymm8,ymm10,ymm5
  addcaf:	62 c1 14 28 c6 c0 88 	vshufps ymm16,ymm13,ymm8,0x88
  addcb6:	62 a1 7c 20 c6 c0 d8 	vshufps ymm16,ymm16,ymm16,0xd8
  addcbd:	c4 41 14 c6 c0 dd    	vshufps ymm8,ymm13,ymm8,0xdd
  addcc3:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  addcc9:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  addccd:	c5 ad 15 ed          	vunpckhpd ymm5,ymm10,ymm5
  addcd1:	c5 dc c6 f5 88       	vshufps ymm6,ymm4,ymm5,0x88
  addcd6:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  addcdb:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  addce0:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  addce5:	c4 c1 30 58 ef       	vaddps xmm5,xmm9,xmm15
  addcea:	c4 e3 0d 18 ed 01    	vinsertf128 ymm5,ymm14,xmm5,0x1
  addcf0:	62 11 64 08 5c c8    	vsubps xmm9,xmm3,xmm24
  addcf6:	c4 43 25 18 c9 01    	vinsertf128 ymm9,ymm11,xmm9,0x1
  addcfc:	62 91 64 08 58 d8    	vaddps xmm3,xmm3,xmm24
  addd02:	c5 55 14 d3          	vunpcklpd ymm10,ymm5,ymm3
  addd06:	c4 c1 40 5c fc       	vsubps xmm7,xmm7,xmm12
  addd0b:	c5 35 14 df          	vunpcklpd ymm11,ymm9,ymm7
  addd0f:	c4 41 2c c6 e3 88    	vshufps ymm12,ymm10,ymm11,0x88
  addd15:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  addd1b:	c4 41 2c c6 d3 dd    	vshufps ymm10,ymm10,ymm11,0xdd
  addd21:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  addd27:	c5 d5 15 db          	vunpckhpd ymm3,ymm5,ymm3
  addd2b:	c5 b5 15 ef          	vunpckhpd ymm5,ymm9,ymm7
  addd2f:	c5 e4 c6 fd 88       	vshufps ymm7,ymm3,ymm5,0x88
  addd34:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  addd39:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  addd3e:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  addd43:	c5 fc 10 69 40       	vmovups ymm5,YMMWORD PTR [rcx+0x40]
  addd48:	c5 7c 10 49 60       	vmovups ymm9,YMMWORD PTR [rcx+0x60]
  addd4d:	c5 7c 10 99 80 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0x80]
  addd54:	00 
  addd55:	c5 7c 10 a9 a0 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0xa0]
  addd5c:	00 
  addd5d:	c5 7c 10 b1 c0 00 00 	vmovups ymm14,YMMWORD PTR [rcx+0xc0]
  addd64:	00 
  addd65:	c5 7c 10 b9 e0 00 00 	vmovups ymm15,YMMWORD PTR [rcx+0xe0]
  addd6c:	00 
  addd6d:	62 c1 4c 28 59 cb    	vmulps ymm17,ymm6,ymm11
  addd73:	62 c2 45 28 bc cd    	vfnmadd231ps ymm17,ymm7,ymm13
  addd79:	62 a1 7c 20 58 d1    	vaddps ymm18,ymm16,ymm17
  addd7f:	62 e1 3c 28 59 dd    	vmulps ymm19,ymm8,ymm5
  addd85:	62 c2 2d 28 bc d9    	vfnmadd231ps ymm19,ymm10,ymm9
  addd8b:	62 c1 5c 28 59 e6    	vmulps ymm20,ymm4,ymm14
  addd91:	62 c2 65 28 bc e7    	vfnmadd231ps ymm20,ymm3,ymm15
  addd97:	62 a1 64 20 58 ec    	vaddps ymm21,ymm19,ymm20
  addd9d:	c5 a4 59 ff          	vmulps ymm7,ymm11,ymm7
  addda1:	c4 c2 4d b8 fd       	vfmadd231ps ymm7,ymm6,ymm13
  addda6:	c5 9c 58 f7          	vaddps ymm6,ymm12,ymm7
  adddaa:	c5 ac 59 ed          	vmulps ymm5,ymm10,ymm5
  adddae:	c4 c2 3d b8 e9       	vfmadd231ps ymm5,ymm8,ymm9
  adddb3:	c5 8c 59 db          	vmulps ymm3,ymm14,ymm3
  adddb7:	c4 c2 5d b8 df       	vfmadd231ps ymm3,ymm4,ymm15
  adddbc:	c5 d4 58 e3          	vaddps ymm4,ymm5,ymm3
  adddc0:	62 31 7c 20 5c c1    	vsubps ymm8,ymm16,ymm17
  adddc6:	c5 d4 5c db          	vsubps ymm3,ymm5,ymm3
  adddca:	c5 bc 58 eb          	vaddps ymm5,ymm8,ymm3
  adddce:	c5 9c 5c ff          	vsubps ymm7,ymm12,ymm7
  adddd2:	62 31 5c 20 5c cb    	vsubps ymm9,ymm20,ymm19
  adddd8:	c5 34 58 d7          	vaddps ymm10,ymm9,ymm7
  addddc:	62 31 6c 20 5c dd    	vsubps ymm11,ymm18,ymm21
  addde2:	c5 4c 5c e4          	vsubps ymm12,ymm6,ymm4
  addde6:	c5 bc 5c db          	vsubps ymm3,ymm8,ymm3
  adddea:	c4 c1 44 5c f9       	vsubps ymm7,ymm7,ymm9
  adddef:	62 31 6c 20 58 c5    	vaddps ymm8,ymm18,ymm21
  adddf5:	c5 cc 58 e4          	vaddps ymm4,ymm6,ymm4
  adddf9:	c4 63 7d 19 c6 01    	vextractf128 xmm6,ymm8,0x1
  adddff:	62 72 6d 28 7f c4    	vpermt2ps ymm8,ymm2,ymm4
  adde05:	c5 7c 11 04 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm8
  adde0a:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  adde10:	c5 c8 14 e4          	vunpcklps xmm4,xmm6,xmm4
  adde14:	c5 f8 11 64 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm4
  adde1a:	c4 e3 7d 19 ec 01    	vextractf128 xmm4,ymm5,0x1
  adde20:	62 d2 6d 28 7f ea    	vpermt2ps ymm5,ymm2,ymm10
  adde26:	c5 fc 11 6c 16 30    	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm5
  adde2c:	c4 63 7d 19 d5 01    	vextractf128 xmm5,ymm10,0x1
  adde32:	c5 d8 14 e5          	vunpcklps xmm4,xmm4,xmm5
  adde36:	c5 f8 11 64 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm4
  adde3c:	c4 63 7d 19 dc 01    	vextractf128 xmm4,ymm11,0x1
  adde42:	62 52 6d 28 7f dc    	vpermt2ps ymm11,ymm2,ymm12
  adde48:	c5 7c 11 5c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm11
  adde4e:	c4 63 7d 19 e5 01    	vextractf128 xmm5,ymm12,0x1
  adde54:	c5 d8 14 e5          	vunpcklps xmm4,xmm4,xmm5
  adde58:	c5 f8 11 a4 16 80 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x80],xmm4
  adde5f:	00 00 
  adde61:	c4 e3 7d 19 dc 01    	vextractf128 xmm4,ymm3,0x1
  adde67:	62 f2 6d 28 7f df    	vpermt2ps ymm3,ymm2,ymm7
  adde6d:	c5 fc 11 9c 16 90 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm3
  adde74:	00 00 
  adde76:	c4 e3 7d 19 fb 01    	vextractf128 xmm3,ymm7,0x1
  adde7c:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  adde80:	c5 f8 11 9c 16 b0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xb0],xmm3
  adde87:	00 00 
  adde89:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  adde90:	48 39 d0             	cmp    rax,rdx
  adde93:	0f 85 97 fc ff ff    	jne    addb30 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  adde99:	c5 f8 77             	vzeroupper
  adde9c:	c3                   	ret
