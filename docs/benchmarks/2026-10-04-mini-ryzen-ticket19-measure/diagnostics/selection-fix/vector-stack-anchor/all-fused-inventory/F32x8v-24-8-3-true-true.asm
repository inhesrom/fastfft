
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000aebfc0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  aebfc0:	48 c1 e2 06          	shl    rdx,0x6
  aebfc4:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  aebfc8:	31 d2                	xor    edx,edx
  aebfca:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  aebfce:	c4 e2 7d 18 0d c5 93 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5893c5]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  aebfd5:	58 ff 
  aebfd7:	62 62 7d 28 18 0d 7f 	vbroadcastss ymm25,DWORD PTR [rip+0xffffffffff58947f]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  aebfde:	94 58 ff 
  aebfe1:	62 62 7d 28 18 05 e9 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff5892e9]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  aebfe8:	92 58 ff 
  aebfeb:	62 61 7c 28 28 1d ab 	vmovaps ymm27,YMMWORD PTR [rip+0xffffffffff5898ab]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  aebff2:	98 58 ff 
  aebff5:	c5 fc 28 2d e3 b1 58 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff58b1e3]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  aebffc:	ff 
  aebffd:	0f 1f 00             	nop    DWORD PTR [rax]
  aec000:	c5 fb 10 74 17 10    	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x10]
  aec006:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  aec00c:	c4 e3 4d 0c f0 c0    	vblendps ymm6,ymm6,ymm0,0xc0
  aec012:	c5 78 10 24 17       	vmovups xmm12,XMMWORD PTR [rdi+rdx*1]
  aec017:	62 e1 7c 08 10 9c 17 	vmovups xmm19,XMMWORD PTR [rdi+rdx*1+0x18]
  aec01e:	18 00 00 00 
  aec022:	c5 78 10 54 17 30    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x30]
  aec028:	62 e1 7c 08 10 a4 17 	vmovups xmm20,XMMWORD PTR [rdi+rdx*1+0x48]
  aec02f:	48 00 00 00 
  aec033:	c4 c3 7d 19 f5 01    	vextractf128 xmm13,ymm6,0x1
  aec039:	c4 c1 18 c6 f5 88    	vshufps xmm6,xmm12,xmm13,0x88
  aec03f:	c5 78 10 74 17 60    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x60]
  aec045:	c5 fb 10 7c 17 70    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x70]
  aec04b:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  aec051:	c4 e3 45 0c f8 c0    	vblendps ymm7,ymm7,ymm0,0xc0
  aec057:	62 b3 7d 28 19 f9 01 	vextractf32x4 xmm17,ymm7,0x1
  aec05e:	62 31 0c 08 c6 c1 88 	vshufps xmm8,xmm14,xmm17,0x88
  aec065:	c5 78 10 bc 17 90 00 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x90]
  aec06c:	00 00 
  aec06e:	c5 fb 10 bc 17 a0 00 	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0xa0]
  aec075:	00 00 
  aec077:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  aec07d:	c4 e3 45 0c f8 c0    	vblendps ymm7,ymm7,ymm0,0xc0
  aec083:	62 b3 7d 28 19 fa 01 	vextractf32x4 xmm18,ymm7,0x1
  aec08a:	62 b1 04 08 c6 fa dd 	vshufps xmm7,xmm15,xmm18,0xdd
  aec091:	c5 7b 10 4c 17 40    	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0x40]
  aec097:	c4 43 7d 18 c9 01    	vinsertf128 ymm9,ymm0,xmm9,0x1
  aec09d:	c4 63 35 0c c8 c0    	vblendps ymm9,ymm9,ymm0,0xc0
  aec0a3:	62 33 7d 28 19 cd 01 	vextractf32x4 xmm21,ymm9,0x1
  aec0aa:	62 31 2c 08 c6 cd dd 	vshufps xmm9,xmm10,xmm21,0xdd
  aec0b1:	c5 7b 10 5c 17 58    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x58]
  aec0b7:	c4 43 7d 18 db 01    	vinsertf128 ymm11,ymm0,xmm11,0x1
  aec0bd:	c4 63 25 0c d8 c0    	vblendps ymm11,ymm11,ymm0,0xc0
  aec0c3:	62 33 7d 28 19 de 01 	vextractf32x4 xmm22,ymm11,0x1
  aec0ca:	62 31 5c 00 c6 de 88 	vshufps xmm11,xmm20,xmm22,0x88
  aec0d1:	62 e1 7c 08 10 bc 17 	vmovups xmm23,XMMWORD PTR [rdi+rdx*1+0xa8]
  aec0d8:	a8 00 00 00 
  aec0dc:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0xb8]
  aec0e3:	17 
  aec0e4:	62 b3 7d 28 18 d8 01 	vinsertf32x4 ymm3,ymm0,xmm16,0x1
  aec0eb:	c4 e3 65 0c d8 c0    	vblendps ymm3,ymm3,ymm0,0xc0
  aec0f1:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  aec0f7:	62 e1 44 00 c6 c3 88 	vshufps xmm16,xmm23,xmm3,0x88
  aec0fe:	62 a1 5c 00 c6 e6 dd 	vshufps xmm20,xmm20,xmm22,0xdd
  aec105:	62 f1 44 00 c6 db dd 	vshufps xmm3,xmm23,xmm3,0xdd
  aec10c:	62 e1 ff 08 10 74 17 	vmovsd xmm22,QWORD PTR [rdi+rdx*1+0x28]
  aec113:	05 
  aec114:	62 b3 7d 28 18 d6 01 	vinsertf32x4 ymm2,ymm0,xmm22,0x1
  aec11b:	c4 e3 6d 0c d0 c0    	vblendps ymm2,ymm2,ymm0,0xc0
  aec121:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  aec127:	62 e1 64 00 c6 f2 dd 	vshufps xmm22,xmm19,xmm2,0xdd
  aec12e:	62 e1 7c 08 10 bc 17 	vmovups xmm23,XMMWORD PTR [rdi+rdx*1+0x78]
  aec135:	78 00 00 00 
  aec139:	62 61 ff 08 10 54 17 	vmovsd xmm26,QWORD PTR [rdi+rdx*1+0x88]
  aec140:	11 
  aec141:	62 93 7d 28 18 e2 01 	vinsertf32x4 ymm4,ymm0,xmm26,0x1
  aec148:	c4 e3 5d 0c e0 c0    	vblendps ymm4,ymm4,ymm0,0xc0
  aec14e:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  aec154:	62 f1 64 00 c6 d2 88 	vshufps xmm2,xmm19,xmm2,0x88
  aec15b:	62 e1 44 00 c6 dc dd 	vshufps xmm19,xmm23,xmm4,0xdd
  aec162:	62 f1 44 00 c6 e4 88 	vshufps xmm4,xmm23,xmm4,0x88
  aec169:	62 a1 24 28 5c f8    	vsubps ymm23,ymm11,ymm16
  aec16f:	c4 41 18 c6 e5 dd    	vshufps xmm12,xmm12,xmm13,0xdd
  aec175:	62 71 5c 20 5c eb    	vsubps ymm13,ymm20,ymm3
  aec17b:	62 31 0c 08 c6 f1 dd 	vshufps xmm14,xmm14,xmm17,0xdd
  aec182:	62 a1 4c 20 5c cb    	vsubps ymm17,ymm22,ymm19
  aec188:	62 31 2c 08 c6 d5 88 	vshufps xmm10,xmm10,xmm21,0x88
  aec18f:	62 e1 6c 28 5c ec    	vsubps ymm21,ymm2,ymm4
  aec195:	62 31 04 08 c6 fa 88 	vshufps xmm15,xmm15,xmm18,0x88
  aec19c:	62 a1 74 20 58 d5    	vaddps ymm18,ymm17,ymm21
  aec1a2:	62 a1 54 20 5c c9    	vsubps ymm17,ymm21,ymm17
  aec1a8:	62 c1 44 20 5c ed    	vsubps ymm21,ymm23,ymm13
  aec1ae:	62 31 14 28 58 ef    	vaddps ymm13,ymm13,ymm23
  aec1b4:	62 c1 4c 28 5c f8    	vsubps ymm23,ymm6,ymm8
  aec1ba:	c5 3c 58 c6          	vaddps ymm8,ymm8,ymm6
  aec1be:	62 41 2c 28 5c d7    	vsubps ymm26,ymm10,ymm15
  aec1c4:	c4 41 2c 58 d7       	vaddps ymm10,ymm10,ymm15
  aec1c9:	62 f1 5c 20 58 db    	vaddps ymm3,ymm20,ymm3
  aec1cf:	62 31 4c 20 58 fb    	vaddps ymm15,ymm22,ymm19
  aec1d5:	62 c1 1c 28 5c de    	vsubps ymm19,ymm12,ymm14
  aec1db:	c4 41 1c 58 e6       	vaddps ymm12,ymm12,ymm14
  aec1e0:	c4 41 44 5c f1       	vsubps ymm14,ymm7,ymm9
  aec1e5:	c5 34 58 cf          	vaddps ymm9,ymm9,ymm7
  aec1e9:	c5 ec 58 d4          	vaddps ymm2,ymm2,ymm4
  aec1ed:	62 b1 24 28 58 e0    	vaddps ymm4,ymm11,ymm16
  aec1f3:	62 d1 44 20 5c f6    	vsubps ymm6,ymm23,ymm14
  aec1f9:	62 71 54 20 59 d9    	vmulps ymm11,ymm21,ymm1
  aec1ff:	62 e1 6c 20 59 c1    	vmulps ymm16,ymm18,ymm1
  aec205:	62 f1 74 20 59 f9    	vmulps ymm7,ymm17,ymm1
  aec20b:	c5 14 59 e9          	vmulps ymm13,ymm13,ymm1
  aec20f:	62 31 0c 28 58 f7    	vaddps ymm14,ymm14,ymm23
  aec215:	62 c1 44 28 58 cd    	vaddps ymm17,ymm7,ymm13
  aec21b:	c4 41 44 5c ed       	vsubps ymm13,ymm7,ymm13
  aec220:	62 81 64 20 5c d2    	vsubps ymm18,ymm19,ymm26
  aec226:	62 81 64 20 58 da    	vaddps ymm19,ymm19,ymm26
  aec22c:	62 b1 24 28 5c f8    	vsubps ymm7,ymm11,ymm16
  aec232:	62 51 7c 20 58 db    	vaddps ymm11,ymm16,ymm11
  aec238:	62 c1 3c 28 5c c2    	vsubps ymm16,ymm8,ymm10
  aec23e:	c4 41 3c 58 c2       	vaddps ymm8,ymm8,ymm10
  aec243:	c5 6c 5c d4          	vsubps ymm10,ymm2,ymm4
  aec247:	c5 ec 58 d4          	vaddps ymm2,ymm2,ymm4
  aec24b:	c4 c1 1c 5c e1       	vsubps ymm4,ymm12,ymm9
  aec250:	c4 41 1c 58 c9       	vaddps ymm9,ymm12,ymm9
  aec255:	c4 41 64 5c e7       	vsubps ymm12,ymm3,ymm15
  aec25a:	c5 84 58 db          	vaddps ymm3,ymm15,ymm3
  aec25e:	c5 34 58 fb          	vaddps ymm15,ymm9,ymm3
  aec262:	c5 b0 5c db          	vsubps xmm3,xmm9,xmm3
  aec266:	c4 e3 05 18 db 01    	vinsertf128 ymm3,ymm15,xmm3,0x1
  aec26c:	62 51 64 20 58 cb    	vaddps ymm9,ymm19,ymm11
  aec272:	62 51 64 00 5c db    	vsubps xmm11,xmm19,xmm11
  aec278:	c4 43 35 18 cb 01    	vinsertf128 ymm9,ymm9,xmm11,0x1
  aec27e:	c5 2c 58 dc          	vaddps ymm11,ymm10,ymm4
  aec282:	c4 c1 58 5c e2       	vsubps xmm4,xmm4,xmm10
  aec287:	c4 e3 25 18 e4 01    	vinsertf128 ymm4,ymm11,xmm4,0x1
  aec28d:	62 31 6c 20 58 d1    	vaddps ymm10,ymm18,ymm17
  aec293:	62 31 6c 00 5c d9    	vsubps xmm11,xmm18,xmm17
  aec299:	c4 43 2d 18 d3 01    	vinsertf128 ymm10,ymm10,xmm11,0x1
  aec29f:	c5 65 15 dc          	vunpckhpd ymm11,ymm3,ymm4
  aec2a3:	c5 e5 14 dc          	vunpcklpd ymm3,ymm3,ymm4
  aec2a7:	c4 c1 35 15 e2       	vunpckhpd ymm4,ymm9,ymm10
  aec2ac:	c5 a4 c6 e4 88       	vshufps ymm4,ymm11,ymm4,0x88
  aec2b1:	c4 41 35 14 ca       	vunpcklpd ymm9,ymm9,ymm10
  aec2b6:	c4 41 64 c6 d1 88    	vshufps ymm10,ymm3,ymm9,0x88
  aec2bc:	c4 c1 64 c6 d9 dd    	vshufps ymm3,ymm3,ymm9,0xdd
  aec2c2:	c5 3c 58 ca          	vaddps ymm9,ymm8,ymm2
  aec2c6:	c5 b8 5c d2          	vsubps xmm2,xmm8,xmm2
  aec2ca:	c4 e3 35 18 d2 01    	vinsertf128 ymm2,ymm9,xmm2,0x1
  aec2d0:	c4 41 0c 58 c5       	vaddps ymm8,ymm14,ymm13
  aec2d5:	c4 41 08 5c cd       	vsubps xmm9,xmm14,xmm13
  aec2da:	c4 43 3d 18 c1 01    	vinsertf128 ymm8,ymm8,xmm9,0x1
  aec2e0:	62 31 1c 28 58 c8    	vaddps ymm9,ymm12,ymm16
  aec2e6:	62 51 7c 00 5c dc    	vsubps xmm11,xmm16,xmm12
  aec2ec:	c4 43 35 18 cb 01    	vinsertf128 ymm9,ymm9,xmm11,0x1
  aec2f2:	c5 4c 58 df          	vaddps ymm11,ymm6,ymm7
  aec2f6:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  aec2fc:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  aec301:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  aec306:	c5 c8 5c f7          	vsubps xmm6,xmm6,xmm7
  aec30a:	c4 e3 25 18 f6 01    	vinsertf128 ymm6,ymm11,xmm6,0x1
  aec310:	c4 c1 6d 15 f9       	vunpckhpd ymm7,ymm2,ymm9
  aec315:	c4 c1 6d 14 d1       	vunpcklpd ymm2,ymm2,ymm9
  aec31a:	c5 3d 15 ce          	vunpckhpd ymm9,ymm8,ymm6
  aec31e:	c4 c1 44 c6 f9 88    	vshufps ymm7,ymm7,ymm9,0x88
  aec324:	c5 bd 14 f6          	vunpcklpd ymm6,ymm8,ymm6
  aec328:	c5 6c c6 c6 88       	vshufps ymm8,ymm2,ymm6,0x88
  aec32d:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  aec333:	c5 ec c6 d6 dd       	vshufps ymm2,ymm2,ymm6,0xdd
  aec338:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  aec33d:	c5 c4 c6 f7 d8       	vshufps ymm6,ymm7,ymm7,0xd8
  aec342:	c5 fc 10 79 40       	vmovups ymm7,YMMWORD PTR [rcx+0x40]
  aec347:	c5 7c 10 49 60       	vmovups ymm9,YMMWORD PTR [rcx+0x60]
  aec34c:	c5 6c 59 df          	vmulps ymm11,ymm2,ymm7
  aec350:	c4 42 65 b8 d9       	vfmadd231ps ymm11,ymm3,ymm9
  aec355:	c5 e4 59 df          	vmulps ymm3,ymm3,ymm7
  aec359:	c5 fc 10 b9 80 00 00 	vmovups ymm7,YMMWORD PTR [rcx+0x80]
  aec360:	00 
  aec361:	c4 c2 6d bc d9       	vfnmadd231ps ymm3,ymm2,ymm9
  aec366:	c5 fc 10 91 a0 00 00 	vmovups ymm2,YMMWORD PTR [rcx+0xa0]
  aec36d:	00 
  aec36e:	c5 4c 59 cf          	vmulps ymm9,ymm6,ymm7
  aec372:	c4 62 5d b8 ca       	vfmadd231ps ymm9,ymm4,ymm2
  aec377:	c5 dc 59 e7          	vmulps ymm4,ymm4,ymm7
  aec37b:	c4 c1 24 58 f9       	vaddps ymm7,ymm11,ymm9
  aec380:	c4 e2 4d bc e2       	vfnmadd231ps ymm4,ymm6,ymm2
  aec385:	62 91 7c 28 28 d1    	vmovaps ymm2,ymm25
  aec38b:	c4 c2 45 ac d0       	vfnmadd213ps ymm2,ymm7,ymm8
  aec390:	c5 e4 5c f4          	vsubps ymm6,ymm3,ymm4
  aec394:	62 91 4c 28 59 f0    	vmulps ymm6,ymm6,ymm24
  aec39a:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  aec39e:	c5 ec 58 e6          	vaddps ymm4,ymm2,ymm6
  aec3a2:	c4 41 24 5c c9       	vsubps ymm9,ymm11,ymm9
  aec3a7:	62 11 7c 28 28 d9    	vmovaps ymm11,ymm25
  aec3ad:	c4 42 65 ac da       	vfnmadd213ps ymm11,ymm3,ymm10
  aec3b2:	62 11 34 28 59 c8    	vmulps ymm9,ymm9,ymm24
  aec3b8:	c5 ec 5c d6          	vsubps ymm2,ymm2,ymm6
  aec3bc:	c4 c1 24 5c f1       	vsubps ymm6,ymm11,ymm9
  aec3c1:	c4 41 24 58 c9       	vaddps ymm9,ymm11,ymm9
  aec3c6:	c5 bc 58 ff          	vaddps ymm7,ymm8,ymm7
  aec3ca:	c5 ac 58 db          	vaddps ymm3,ymm10,ymm3
  aec3ce:	c5 7c 28 c7          	vmovaps ymm8,ymm7
  aec3d2:	62 72 25 20 7f c3    	vpermt2ps ymm8,ymm27,ymm3
  aec3d8:	62 f2 55 28 7f fb    	vpermt2ps ymm7,ymm5,ymm3
  aec3de:	c5 fc 11 3c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm7
  aec3e3:	c5 7c 11 44 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm8
  aec3e9:	c5 fc 28 da          	vmovaps ymm3,ymm2
  aec3ed:	62 d2 25 20 7f d9    	vpermt2ps ymm3,ymm27,ymm9
  aec3f3:	62 d2 55 28 7f d1    	vpermt2ps ymm2,ymm5,ymm9
  aec3f9:	c5 fc 11 54 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm2
  aec3ff:	c5 fc 11 5c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm3
  aec405:	c5 fc 28 d4          	vmovaps ymm2,ymm4
  aec409:	62 f2 25 20 7f d6    	vpermt2ps ymm2,ymm27,ymm6
  aec40f:	62 f2 55 28 7f e6    	vpermt2ps ymm4,ymm5,ymm6
  aec415:	c5 fc 11 a4 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm4
  aec41c:	00 00 
  aec41e:	c5 fc 11 94 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm2
  aec425:	00 00 
  aec427:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  aec42e:	48 39 d0             	cmp    rax,rdx
  aec431:	0f 85 c9 fb ff ff    	jne    aec000 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x40>
  aec437:	c5 f8 77             	vzeroupper
  aec43a:	c3                   	ret
