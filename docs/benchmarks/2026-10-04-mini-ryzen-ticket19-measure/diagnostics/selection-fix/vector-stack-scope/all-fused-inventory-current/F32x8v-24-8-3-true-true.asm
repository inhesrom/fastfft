
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000aedd80 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  aedd80:	48 c1 e2 06          	shl    rdx,0x6
  aedd84:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  aedd88:	31 d2                	xor    edx,edx
  aedd8a:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  aedd8e:	c4 e2 7d 18 0d 05 76 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff587605]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  aedd95:	58 ff 
  aedd97:	62 62 7d 28 18 0d bf 	vbroadcastss ymm25,DWORD PTR [rip+0xffffffffff5876bf]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  aedd9e:	76 58 ff 
  aedda1:	62 62 7d 28 18 05 29 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff587529]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  aedda8:	75 58 ff 
  aeddab:	62 61 7c 28 28 1d eb 	vmovaps ymm27,YMMWORD PTR [rip+0xffffffffff587aeb]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  aeddb2:	7a 58 ff 
  aeddb5:	c5 fc 28 2d 23 94 58 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff589423]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  aeddbc:	ff 
  aeddbd:	0f 1f 00             	nop    DWORD PTR [rax]
  aeddc0:	c5 fb 10 74 17 10    	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x10]
  aeddc6:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  aeddcc:	c4 e3 4d 0c f0 c0    	vblendps ymm6,ymm6,ymm0,0xc0
  aeddd2:	c5 78 10 24 17       	vmovups xmm12,XMMWORD PTR [rdi+rdx*1]
  aeddd7:	62 e1 7c 08 10 9c 17 	vmovups xmm19,XMMWORD PTR [rdi+rdx*1+0x18]
  aeddde:	18 00 00 00 
  aedde2:	c5 78 10 54 17 30    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x30]
  aedde8:	62 e1 7c 08 10 a4 17 	vmovups xmm20,XMMWORD PTR [rdi+rdx*1+0x48]
  aeddef:	48 00 00 00 
  aeddf3:	c4 c3 7d 19 f5 01    	vextractf128 xmm13,ymm6,0x1
  aeddf9:	c4 c1 18 c6 f5 88    	vshufps xmm6,xmm12,xmm13,0x88
  aeddff:	c5 78 10 74 17 60    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x60]
  aede05:	c5 fb 10 7c 17 70    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x70]
  aede0b:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  aede11:	c4 e3 45 0c f8 c0    	vblendps ymm7,ymm7,ymm0,0xc0
  aede17:	62 b3 7d 28 19 f9 01 	vextractf32x4 xmm17,ymm7,0x1
  aede1e:	62 31 0c 08 c6 c1 88 	vshufps xmm8,xmm14,xmm17,0x88
  aede25:	c5 78 10 bc 17 90 00 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x90]
  aede2c:	00 00 
  aede2e:	c5 fb 10 bc 17 a0 00 	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0xa0]
  aede35:	00 00 
  aede37:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  aede3d:	c4 e3 45 0c f8 c0    	vblendps ymm7,ymm7,ymm0,0xc0
  aede43:	62 b3 7d 28 19 fa 01 	vextractf32x4 xmm18,ymm7,0x1
  aede4a:	62 b1 04 08 c6 fa dd 	vshufps xmm7,xmm15,xmm18,0xdd
  aede51:	c5 7b 10 4c 17 40    	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0x40]
  aede57:	c4 43 7d 18 c9 01    	vinsertf128 ymm9,ymm0,xmm9,0x1
  aede5d:	c4 63 35 0c c8 c0    	vblendps ymm9,ymm9,ymm0,0xc0
  aede63:	62 33 7d 28 19 cd 01 	vextractf32x4 xmm21,ymm9,0x1
  aede6a:	62 31 2c 08 c6 cd dd 	vshufps xmm9,xmm10,xmm21,0xdd
  aede71:	c5 7b 10 5c 17 58    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x58]
  aede77:	c4 43 7d 18 db 01    	vinsertf128 ymm11,ymm0,xmm11,0x1
  aede7d:	c4 63 25 0c d8 c0    	vblendps ymm11,ymm11,ymm0,0xc0
  aede83:	62 33 7d 28 19 de 01 	vextractf32x4 xmm22,ymm11,0x1
  aede8a:	62 31 5c 00 c6 de 88 	vshufps xmm11,xmm20,xmm22,0x88
  aede91:	62 e1 7c 08 10 bc 17 	vmovups xmm23,XMMWORD PTR [rdi+rdx*1+0xa8]
  aede98:	a8 00 00 00 
  aede9c:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0xb8]
  aedea3:	17 
  aedea4:	62 b3 7d 28 18 d8 01 	vinsertf32x4 ymm3,ymm0,xmm16,0x1
  aedeab:	c4 e3 65 0c d8 c0    	vblendps ymm3,ymm3,ymm0,0xc0
  aedeb1:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  aedeb7:	62 e1 44 00 c6 c3 88 	vshufps xmm16,xmm23,xmm3,0x88
  aedebe:	62 a1 5c 00 c6 e6 dd 	vshufps xmm20,xmm20,xmm22,0xdd
  aedec5:	62 f1 44 00 c6 db dd 	vshufps xmm3,xmm23,xmm3,0xdd
  aedecc:	62 e1 ff 08 10 74 17 	vmovsd xmm22,QWORD PTR [rdi+rdx*1+0x28]
  aeded3:	05 
  aeded4:	62 b3 7d 28 18 d6 01 	vinsertf32x4 ymm2,ymm0,xmm22,0x1
  aededb:	c4 e3 6d 0c d0 c0    	vblendps ymm2,ymm2,ymm0,0xc0
  aedee1:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  aedee7:	62 e1 64 00 c6 f2 dd 	vshufps xmm22,xmm19,xmm2,0xdd
  aedeee:	62 e1 7c 08 10 bc 17 	vmovups xmm23,XMMWORD PTR [rdi+rdx*1+0x78]
  aedef5:	78 00 00 00 
  aedef9:	62 61 ff 08 10 54 17 	vmovsd xmm26,QWORD PTR [rdi+rdx*1+0x88]
  aedf00:	11 
  aedf01:	62 93 7d 28 18 e2 01 	vinsertf32x4 ymm4,ymm0,xmm26,0x1
  aedf08:	c4 e3 5d 0c e0 c0    	vblendps ymm4,ymm4,ymm0,0xc0
  aedf0e:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  aedf14:	62 f1 64 00 c6 d2 88 	vshufps xmm2,xmm19,xmm2,0x88
  aedf1b:	62 e1 44 00 c6 dc dd 	vshufps xmm19,xmm23,xmm4,0xdd
  aedf22:	62 f1 44 00 c6 e4 88 	vshufps xmm4,xmm23,xmm4,0x88
  aedf29:	62 a1 24 28 5c f8    	vsubps ymm23,ymm11,ymm16
  aedf2f:	c4 41 18 c6 e5 dd    	vshufps xmm12,xmm12,xmm13,0xdd
  aedf35:	62 71 5c 20 5c eb    	vsubps ymm13,ymm20,ymm3
  aedf3b:	62 31 0c 08 c6 f1 dd 	vshufps xmm14,xmm14,xmm17,0xdd
  aedf42:	62 a1 4c 20 5c cb    	vsubps ymm17,ymm22,ymm19
  aedf48:	62 31 2c 08 c6 d5 88 	vshufps xmm10,xmm10,xmm21,0x88
  aedf4f:	62 e1 6c 28 5c ec    	vsubps ymm21,ymm2,ymm4
  aedf55:	62 31 04 08 c6 fa 88 	vshufps xmm15,xmm15,xmm18,0x88
  aedf5c:	62 a1 74 20 58 d5    	vaddps ymm18,ymm17,ymm21
  aedf62:	62 a1 54 20 5c c9    	vsubps ymm17,ymm21,ymm17
  aedf68:	62 c1 44 20 5c ed    	vsubps ymm21,ymm23,ymm13
  aedf6e:	62 31 14 28 58 ef    	vaddps ymm13,ymm13,ymm23
  aedf74:	62 c1 4c 28 5c f8    	vsubps ymm23,ymm6,ymm8
  aedf7a:	c5 3c 58 c6          	vaddps ymm8,ymm8,ymm6
  aedf7e:	62 41 2c 28 5c d7    	vsubps ymm26,ymm10,ymm15
  aedf84:	c4 41 2c 58 d7       	vaddps ymm10,ymm10,ymm15
  aedf89:	62 f1 5c 20 58 db    	vaddps ymm3,ymm20,ymm3
  aedf8f:	62 31 4c 20 58 fb    	vaddps ymm15,ymm22,ymm19
  aedf95:	62 c1 1c 28 5c de    	vsubps ymm19,ymm12,ymm14
  aedf9b:	c4 41 1c 58 e6       	vaddps ymm12,ymm12,ymm14
  aedfa0:	c4 41 44 5c f1       	vsubps ymm14,ymm7,ymm9
  aedfa5:	c5 34 58 cf          	vaddps ymm9,ymm9,ymm7
  aedfa9:	c5 ec 58 d4          	vaddps ymm2,ymm2,ymm4
  aedfad:	62 b1 24 28 58 e0    	vaddps ymm4,ymm11,ymm16
  aedfb3:	62 d1 44 20 5c f6    	vsubps ymm6,ymm23,ymm14
  aedfb9:	62 71 54 20 59 d9    	vmulps ymm11,ymm21,ymm1
  aedfbf:	62 e1 6c 20 59 c1    	vmulps ymm16,ymm18,ymm1
  aedfc5:	62 f1 74 20 59 f9    	vmulps ymm7,ymm17,ymm1
  aedfcb:	c5 14 59 e9          	vmulps ymm13,ymm13,ymm1
  aedfcf:	62 31 0c 28 58 f7    	vaddps ymm14,ymm14,ymm23
  aedfd5:	62 c1 44 28 58 cd    	vaddps ymm17,ymm7,ymm13
  aedfdb:	c4 41 44 5c ed       	vsubps ymm13,ymm7,ymm13
  aedfe0:	62 81 64 20 5c d2    	vsubps ymm18,ymm19,ymm26
  aedfe6:	62 81 64 20 58 da    	vaddps ymm19,ymm19,ymm26
  aedfec:	62 b1 24 28 5c f8    	vsubps ymm7,ymm11,ymm16
  aedff2:	62 51 7c 20 58 db    	vaddps ymm11,ymm16,ymm11
  aedff8:	62 c1 3c 28 5c c2    	vsubps ymm16,ymm8,ymm10
  aedffe:	c4 41 3c 58 c2       	vaddps ymm8,ymm8,ymm10
  aee003:	c5 6c 5c d4          	vsubps ymm10,ymm2,ymm4
  aee007:	c5 ec 58 d4          	vaddps ymm2,ymm2,ymm4
  aee00b:	c4 c1 1c 5c e1       	vsubps ymm4,ymm12,ymm9
  aee010:	c4 41 1c 58 c9       	vaddps ymm9,ymm12,ymm9
  aee015:	c4 41 64 5c e7       	vsubps ymm12,ymm3,ymm15
  aee01a:	c5 84 58 db          	vaddps ymm3,ymm15,ymm3
  aee01e:	c5 34 58 fb          	vaddps ymm15,ymm9,ymm3
  aee022:	c5 b0 5c db          	vsubps xmm3,xmm9,xmm3
  aee026:	c4 e3 05 18 db 01    	vinsertf128 ymm3,ymm15,xmm3,0x1
  aee02c:	62 51 64 20 58 cb    	vaddps ymm9,ymm19,ymm11
  aee032:	62 51 64 00 5c db    	vsubps xmm11,xmm19,xmm11
  aee038:	c4 43 35 18 cb 01    	vinsertf128 ymm9,ymm9,xmm11,0x1
  aee03e:	c5 2c 58 dc          	vaddps ymm11,ymm10,ymm4
  aee042:	c4 c1 58 5c e2       	vsubps xmm4,xmm4,xmm10
  aee047:	c4 e3 25 18 e4 01    	vinsertf128 ymm4,ymm11,xmm4,0x1
  aee04d:	62 31 6c 20 58 d1    	vaddps ymm10,ymm18,ymm17
  aee053:	62 31 6c 00 5c d9    	vsubps xmm11,xmm18,xmm17
  aee059:	c4 43 2d 18 d3 01    	vinsertf128 ymm10,ymm10,xmm11,0x1
  aee05f:	c5 65 15 dc          	vunpckhpd ymm11,ymm3,ymm4
  aee063:	c5 e5 14 dc          	vunpcklpd ymm3,ymm3,ymm4
  aee067:	c4 c1 35 15 e2       	vunpckhpd ymm4,ymm9,ymm10
  aee06c:	c5 a4 c6 e4 88       	vshufps ymm4,ymm11,ymm4,0x88
  aee071:	c4 41 35 14 ca       	vunpcklpd ymm9,ymm9,ymm10
  aee076:	c4 41 64 c6 d1 88    	vshufps ymm10,ymm3,ymm9,0x88
  aee07c:	c4 c1 64 c6 d9 dd    	vshufps ymm3,ymm3,ymm9,0xdd
  aee082:	c5 3c 58 ca          	vaddps ymm9,ymm8,ymm2
  aee086:	c5 b8 5c d2          	vsubps xmm2,xmm8,xmm2
  aee08a:	c4 e3 35 18 d2 01    	vinsertf128 ymm2,ymm9,xmm2,0x1
  aee090:	c4 41 0c 58 c5       	vaddps ymm8,ymm14,ymm13
  aee095:	c4 41 08 5c cd       	vsubps xmm9,xmm14,xmm13
  aee09a:	c4 43 3d 18 c1 01    	vinsertf128 ymm8,ymm8,xmm9,0x1
  aee0a0:	62 31 1c 28 58 c8    	vaddps ymm9,ymm12,ymm16
  aee0a6:	62 51 7c 00 5c dc    	vsubps xmm11,xmm16,xmm12
  aee0ac:	c4 43 35 18 cb 01    	vinsertf128 ymm9,ymm9,xmm11,0x1
  aee0b2:	c5 4c 58 df          	vaddps ymm11,ymm6,ymm7
  aee0b6:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  aee0bc:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  aee0c1:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  aee0c6:	c5 c8 5c f7          	vsubps xmm6,xmm6,xmm7
  aee0ca:	c4 e3 25 18 f6 01    	vinsertf128 ymm6,ymm11,xmm6,0x1
  aee0d0:	c4 c1 6d 15 f9       	vunpckhpd ymm7,ymm2,ymm9
  aee0d5:	c4 c1 6d 14 d1       	vunpcklpd ymm2,ymm2,ymm9
  aee0da:	c5 3d 15 ce          	vunpckhpd ymm9,ymm8,ymm6
  aee0de:	c4 c1 44 c6 f9 88    	vshufps ymm7,ymm7,ymm9,0x88
  aee0e4:	c5 bd 14 f6          	vunpcklpd ymm6,ymm8,ymm6
  aee0e8:	c5 6c c6 c6 88       	vshufps ymm8,ymm2,ymm6,0x88
  aee0ed:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  aee0f3:	c5 ec c6 d6 dd       	vshufps ymm2,ymm2,ymm6,0xdd
  aee0f8:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  aee0fd:	c5 c4 c6 f7 d8       	vshufps ymm6,ymm7,ymm7,0xd8
  aee102:	c5 fc 10 79 40       	vmovups ymm7,YMMWORD PTR [rcx+0x40]
  aee107:	c5 7c 10 49 60       	vmovups ymm9,YMMWORD PTR [rcx+0x60]
  aee10c:	c5 6c 59 df          	vmulps ymm11,ymm2,ymm7
  aee110:	c4 42 65 b8 d9       	vfmadd231ps ymm11,ymm3,ymm9
  aee115:	c5 e4 59 df          	vmulps ymm3,ymm3,ymm7
  aee119:	c5 fc 10 b9 80 00 00 	vmovups ymm7,YMMWORD PTR [rcx+0x80]
  aee120:	00 
  aee121:	c4 c2 6d bc d9       	vfnmadd231ps ymm3,ymm2,ymm9
  aee126:	c5 fc 10 91 a0 00 00 	vmovups ymm2,YMMWORD PTR [rcx+0xa0]
  aee12d:	00 
  aee12e:	c5 4c 59 cf          	vmulps ymm9,ymm6,ymm7
  aee132:	c4 62 5d b8 ca       	vfmadd231ps ymm9,ymm4,ymm2
  aee137:	c5 dc 59 e7          	vmulps ymm4,ymm4,ymm7
  aee13b:	c4 c1 24 58 f9       	vaddps ymm7,ymm11,ymm9
  aee140:	c4 e2 4d bc e2       	vfnmadd231ps ymm4,ymm6,ymm2
  aee145:	62 91 7c 28 28 d1    	vmovaps ymm2,ymm25
  aee14b:	c4 c2 45 ac d0       	vfnmadd213ps ymm2,ymm7,ymm8
  aee150:	c5 e4 5c f4          	vsubps ymm6,ymm3,ymm4
  aee154:	62 91 4c 28 59 f0    	vmulps ymm6,ymm6,ymm24
  aee15a:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  aee15e:	c5 ec 58 e6          	vaddps ymm4,ymm2,ymm6
  aee162:	c4 41 24 5c c9       	vsubps ymm9,ymm11,ymm9
  aee167:	62 11 7c 28 28 d9    	vmovaps ymm11,ymm25
  aee16d:	c4 42 65 ac da       	vfnmadd213ps ymm11,ymm3,ymm10
  aee172:	62 11 34 28 59 c8    	vmulps ymm9,ymm9,ymm24
  aee178:	c5 ec 5c d6          	vsubps ymm2,ymm2,ymm6
  aee17c:	c4 c1 24 5c f1       	vsubps ymm6,ymm11,ymm9
  aee181:	c4 41 24 58 c9       	vaddps ymm9,ymm11,ymm9
  aee186:	c5 bc 58 ff          	vaddps ymm7,ymm8,ymm7
  aee18a:	c5 ac 58 db          	vaddps ymm3,ymm10,ymm3
  aee18e:	c5 7c 28 c7          	vmovaps ymm8,ymm7
  aee192:	62 72 25 20 7f c3    	vpermt2ps ymm8,ymm27,ymm3
  aee198:	62 f2 55 28 7f fb    	vpermt2ps ymm7,ymm5,ymm3
  aee19e:	c5 fc 11 3c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm7
  aee1a3:	c5 7c 11 44 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm8
  aee1a9:	c5 fc 28 da          	vmovaps ymm3,ymm2
  aee1ad:	62 d2 25 20 7f d9    	vpermt2ps ymm3,ymm27,ymm9
  aee1b3:	62 d2 55 28 7f d1    	vpermt2ps ymm2,ymm5,ymm9
  aee1b9:	c5 fc 11 54 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm2
  aee1bf:	c5 fc 11 5c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm3
  aee1c5:	c5 fc 28 d4          	vmovaps ymm2,ymm4
  aee1c9:	62 f2 25 20 7f d6    	vpermt2ps ymm2,ymm27,ymm6
  aee1cf:	62 f2 55 28 7f e6    	vpermt2ps ymm4,ymm5,ymm6
  aee1d5:	c5 fc 11 a4 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm4
  aee1dc:	00 00 
  aee1de:	c5 fc 11 94 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm2
  aee1e5:	00 00 
  aee1e7:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  aee1ee:	48 39 d0             	cmp    rax,rdx
  aee1f1:	0f 85 c9 fb ff ff    	jne    aeddc0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x40>
  aee1f7:	c5 f8 77             	vzeroupper
  aee1fa:	c3                   	ret
