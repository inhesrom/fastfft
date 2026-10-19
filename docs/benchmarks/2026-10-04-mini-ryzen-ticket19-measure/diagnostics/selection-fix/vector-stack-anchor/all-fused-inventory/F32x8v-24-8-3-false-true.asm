
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ad3e00 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ad3e00:	48 c1 e2 06          	shl    rdx,0x6
  ad3e04:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  ad3e08:	31 d2                	xor    edx,edx
  ad3e0a:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  ad3e0e:	c4 e2 7d 18 0d 85 15 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5a1585]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  ad3e15:	5a ff 
  ad3e17:	62 62 7d 28 18 0d 3f 	vbroadcastss ymm25,DWORD PTR [rip+0xffffffffff5a163f]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ad3e1e:	16 5a ff 
  ad3e21:	62 62 7d 28 18 05 a9 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff5a14a9]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ad3e28:	14 5a ff 
  ad3e2b:	62 61 7c 28 28 1d 6b 	vmovaps ymm27,YMMWORD PTR [rip+0xffffffffff5a1a6b]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  ad3e32:	1a 5a ff 
  ad3e35:	c5 fc 28 2d a3 33 5a 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff5a33a3]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  ad3e3c:	ff 
  ad3e3d:	0f 1f 00             	nop    DWORD PTR [rax]
  ad3e40:	c5 fb 10 74 17 10    	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x10]
  ad3e46:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  ad3e4c:	c4 e3 4d 0c f0 c0    	vblendps ymm6,ymm6,ymm0,0xc0
  ad3e52:	c5 78 10 24 17       	vmovups xmm12,XMMWORD PTR [rdi+rdx*1]
  ad3e57:	62 e1 7c 08 10 9c 17 	vmovups xmm19,XMMWORD PTR [rdi+rdx*1+0x18]
  ad3e5e:	18 00 00 00 
  ad3e62:	c5 78 10 54 17 30    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x30]
  ad3e68:	62 e1 7c 08 10 a4 17 	vmovups xmm20,XMMWORD PTR [rdi+rdx*1+0x48]
  ad3e6f:	48 00 00 00 
  ad3e73:	c4 c3 7d 19 f5 01    	vextractf128 xmm13,ymm6,0x1
  ad3e79:	c4 c1 18 c6 f5 dd    	vshufps xmm6,xmm12,xmm13,0xdd
  ad3e7f:	c5 78 10 74 17 60    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x60]
  ad3e85:	c5 fb 10 7c 17 70    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x70]
  ad3e8b:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  ad3e91:	c4 e3 45 0c f8 c0    	vblendps ymm7,ymm7,ymm0,0xc0
  ad3e97:	62 b3 7d 28 19 f9 01 	vextractf32x4 xmm17,ymm7,0x1
  ad3e9e:	62 31 0c 08 c6 c1 dd 	vshufps xmm8,xmm14,xmm17,0xdd
  ad3ea5:	c5 78 10 bc 17 90 00 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x90]
  ad3eac:	00 00 
  ad3eae:	c5 fb 10 bc 17 a0 00 	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0xa0]
  ad3eb5:	00 00 
  ad3eb7:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  ad3ebd:	c4 e3 45 0c f8 c0    	vblendps ymm7,ymm7,ymm0,0xc0
  ad3ec3:	62 b3 7d 28 19 fa 01 	vextractf32x4 xmm18,ymm7,0x1
  ad3eca:	62 b1 04 08 c6 fa 88 	vshufps xmm7,xmm15,xmm18,0x88
  ad3ed1:	c5 7b 10 4c 17 40    	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0x40]
  ad3ed7:	c4 43 7d 18 c9 01    	vinsertf128 ymm9,ymm0,xmm9,0x1
  ad3edd:	c4 63 35 0c c8 c0    	vblendps ymm9,ymm9,ymm0,0xc0
  ad3ee3:	62 33 7d 28 19 cd 01 	vextractf32x4 xmm21,ymm9,0x1
  ad3eea:	62 31 2c 08 c6 cd 88 	vshufps xmm9,xmm10,xmm21,0x88
  ad3ef1:	c5 7b 10 5c 17 58    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x58]
  ad3ef7:	c4 43 7d 18 db 01    	vinsertf128 ymm11,ymm0,xmm11,0x1
  ad3efd:	c4 63 25 0c d8 c0    	vblendps ymm11,ymm11,ymm0,0xc0
  ad3f03:	62 33 7d 28 19 de 01 	vextractf32x4 xmm22,ymm11,0x1
  ad3f0a:	62 31 5c 00 c6 de dd 	vshufps xmm11,xmm20,xmm22,0xdd
  ad3f11:	62 e1 7c 08 10 bc 17 	vmovups xmm23,XMMWORD PTR [rdi+rdx*1+0xa8]
  ad3f18:	a8 00 00 00 
  ad3f1c:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0xb8]
  ad3f23:	17 
  ad3f24:	62 b3 7d 28 18 d8 01 	vinsertf32x4 ymm3,ymm0,xmm16,0x1
  ad3f2b:	c4 e3 65 0c d8 c0    	vblendps ymm3,ymm3,ymm0,0xc0
  ad3f31:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  ad3f37:	62 e1 44 00 c6 c3 dd 	vshufps xmm16,xmm23,xmm3,0xdd
  ad3f3e:	62 a1 5c 00 c6 e6 88 	vshufps xmm20,xmm20,xmm22,0x88
  ad3f45:	62 f1 44 00 c6 db 88 	vshufps xmm3,xmm23,xmm3,0x88
  ad3f4c:	62 e1 ff 08 10 74 17 	vmovsd xmm22,QWORD PTR [rdi+rdx*1+0x28]
  ad3f53:	05 
  ad3f54:	62 b3 7d 28 18 d6 01 	vinsertf32x4 ymm2,ymm0,xmm22,0x1
  ad3f5b:	c4 e3 6d 0c d0 c0    	vblendps ymm2,ymm2,ymm0,0xc0
  ad3f61:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  ad3f67:	62 e1 64 00 c6 f2 88 	vshufps xmm22,xmm19,xmm2,0x88
  ad3f6e:	62 e1 7c 08 10 bc 17 	vmovups xmm23,XMMWORD PTR [rdi+rdx*1+0x78]
  ad3f75:	78 00 00 00 
  ad3f79:	62 61 ff 08 10 54 17 	vmovsd xmm26,QWORD PTR [rdi+rdx*1+0x88]
  ad3f80:	11 
  ad3f81:	62 93 7d 28 18 e2 01 	vinsertf32x4 ymm4,ymm0,xmm26,0x1
  ad3f88:	c4 e3 5d 0c e0 c0    	vblendps ymm4,ymm4,ymm0,0xc0
  ad3f8e:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  ad3f94:	62 f1 64 00 c6 d2 dd 	vshufps xmm2,xmm19,xmm2,0xdd
  ad3f9b:	62 e1 44 00 c6 dc 88 	vshufps xmm19,xmm23,xmm4,0x88
  ad3fa2:	62 f1 44 00 c6 e4 dd 	vshufps xmm4,xmm23,xmm4,0xdd
  ad3fa9:	62 a1 24 28 5c f8    	vsubps ymm23,ymm11,ymm16
  ad3faf:	c4 41 18 c6 e5 88    	vshufps xmm12,xmm12,xmm13,0x88
  ad3fb5:	62 71 5c 20 5c eb    	vsubps ymm13,ymm20,ymm3
  ad3fbb:	62 31 0c 08 c6 f1 88 	vshufps xmm14,xmm14,xmm17,0x88
  ad3fc2:	62 a1 4c 20 5c cb    	vsubps ymm17,ymm22,ymm19
  ad3fc8:	62 31 2c 08 c6 d5 dd 	vshufps xmm10,xmm10,xmm21,0xdd
  ad3fcf:	62 e1 6c 28 5c ec    	vsubps ymm21,ymm2,ymm4
  ad3fd5:	62 31 04 08 c6 fa dd 	vshufps xmm15,xmm15,xmm18,0xdd
  ad3fdc:	62 a1 74 20 58 d5    	vaddps ymm18,ymm17,ymm21
  ad3fe2:	62 a1 54 20 5c c9    	vsubps ymm17,ymm21,ymm17
  ad3fe8:	62 c1 44 20 5c ed    	vsubps ymm21,ymm23,ymm13
  ad3fee:	62 31 14 28 58 ef    	vaddps ymm13,ymm13,ymm23
  ad3ff4:	62 c1 4c 28 5c f8    	vsubps ymm23,ymm6,ymm8
  ad3ffa:	c5 3c 58 c6          	vaddps ymm8,ymm8,ymm6
  ad3ffe:	62 41 2c 28 5c d7    	vsubps ymm26,ymm10,ymm15
  ad4004:	c4 41 2c 58 d7       	vaddps ymm10,ymm10,ymm15
  ad4009:	62 f1 5c 20 58 db    	vaddps ymm3,ymm20,ymm3
  ad400f:	62 31 4c 20 58 fb    	vaddps ymm15,ymm22,ymm19
  ad4015:	62 c1 1c 28 5c de    	vsubps ymm19,ymm12,ymm14
  ad401b:	c4 41 1c 58 e6       	vaddps ymm12,ymm12,ymm14
  ad4020:	c4 41 44 5c f1       	vsubps ymm14,ymm7,ymm9
  ad4025:	c5 34 58 cf          	vaddps ymm9,ymm9,ymm7
  ad4029:	c5 ec 58 d4          	vaddps ymm2,ymm2,ymm4
  ad402d:	62 b1 24 28 58 e0    	vaddps ymm4,ymm11,ymm16
  ad4033:	62 d1 44 20 5c f6    	vsubps ymm6,ymm23,ymm14
  ad4039:	62 71 54 20 59 d9    	vmulps ymm11,ymm21,ymm1
  ad403f:	62 e1 6c 20 59 c1    	vmulps ymm16,ymm18,ymm1
  ad4045:	62 f1 74 20 59 f9    	vmulps ymm7,ymm17,ymm1
  ad404b:	c5 14 59 e9          	vmulps ymm13,ymm13,ymm1
  ad404f:	62 31 0c 28 58 f7    	vaddps ymm14,ymm14,ymm23
  ad4055:	62 c1 44 28 58 cd    	vaddps ymm17,ymm7,ymm13
  ad405b:	c4 41 44 5c ed       	vsubps ymm13,ymm7,ymm13
  ad4060:	62 81 64 20 5c d2    	vsubps ymm18,ymm19,ymm26
  ad4066:	62 81 64 20 58 da    	vaddps ymm19,ymm19,ymm26
  ad406c:	62 b1 24 28 5c f8    	vsubps ymm7,ymm11,ymm16
  ad4072:	62 51 7c 20 58 db    	vaddps ymm11,ymm16,ymm11
  ad4078:	62 c1 3c 28 5c c2    	vsubps ymm16,ymm8,ymm10
  ad407e:	c4 41 3c 58 c2       	vaddps ymm8,ymm8,ymm10
  ad4083:	c5 6c 5c d4          	vsubps ymm10,ymm2,ymm4
  ad4087:	c5 ec 58 d4          	vaddps ymm2,ymm2,ymm4
  ad408b:	c4 c1 1c 5c e1       	vsubps ymm4,ymm12,ymm9
  ad4090:	c4 41 1c 58 c9       	vaddps ymm9,ymm12,ymm9
  ad4095:	c4 41 64 5c e7       	vsubps ymm12,ymm3,ymm15
  ad409a:	c5 84 58 db          	vaddps ymm3,ymm15,ymm3
  ad409e:	c5 34 58 fb          	vaddps ymm15,ymm9,ymm3
  ad40a2:	c5 b0 5c db          	vsubps xmm3,xmm9,xmm3
  ad40a6:	c4 e3 05 18 db 01    	vinsertf128 ymm3,ymm15,xmm3,0x1
  ad40ac:	62 51 64 20 58 cb    	vaddps ymm9,ymm19,ymm11
  ad40b2:	62 51 64 00 5c db    	vsubps xmm11,xmm19,xmm11
  ad40b8:	c4 43 35 18 cb 01    	vinsertf128 ymm9,ymm9,xmm11,0x1
  ad40be:	c5 2c 58 dc          	vaddps ymm11,ymm10,ymm4
  ad40c2:	c4 c1 58 5c e2       	vsubps xmm4,xmm4,xmm10
  ad40c7:	c4 e3 25 18 e4 01    	vinsertf128 ymm4,ymm11,xmm4,0x1
  ad40cd:	62 31 6c 20 58 d1    	vaddps ymm10,ymm18,ymm17
  ad40d3:	62 31 6c 00 5c d9    	vsubps xmm11,xmm18,xmm17
  ad40d9:	c4 43 2d 18 d3 01    	vinsertf128 ymm10,ymm10,xmm11,0x1
  ad40df:	c5 65 15 dc          	vunpckhpd ymm11,ymm3,ymm4
  ad40e3:	c5 e5 14 dc          	vunpcklpd ymm3,ymm3,ymm4
  ad40e7:	c4 c1 35 15 e2       	vunpckhpd ymm4,ymm9,ymm10
  ad40ec:	c5 a4 c6 e4 88       	vshufps ymm4,ymm11,ymm4,0x88
  ad40f1:	c4 41 35 14 ca       	vunpcklpd ymm9,ymm9,ymm10
  ad40f6:	c4 41 64 c6 d1 88    	vshufps ymm10,ymm3,ymm9,0x88
  ad40fc:	c4 c1 64 c6 d9 dd    	vshufps ymm3,ymm3,ymm9,0xdd
  ad4102:	c5 3c 58 ca          	vaddps ymm9,ymm8,ymm2
  ad4106:	c5 b8 5c d2          	vsubps xmm2,xmm8,xmm2
  ad410a:	c4 e3 35 18 d2 01    	vinsertf128 ymm2,ymm9,xmm2,0x1
  ad4110:	c4 41 0c 58 c5       	vaddps ymm8,ymm14,ymm13
  ad4115:	c4 41 08 5c cd       	vsubps xmm9,xmm14,xmm13
  ad411a:	c4 43 3d 18 c1 01    	vinsertf128 ymm8,ymm8,xmm9,0x1
  ad4120:	62 31 1c 28 58 c8    	vaddps ymm9,ymm12,ymm16
  ad4126:	62 51 7c 00 5c dc    	vsubps xmm11,xmm16,xmm12
  ad412c:	c4 43 35 18 cb 01    	vinsertf128 ymm9,ymm9,xmm11,0x1
  ad4132:	c5 4c 58 df          	vaddps ymm11,ymm6,ymm7
  ad4136:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  ad413c:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  ad4141:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ad4146:	c5 c8 5c f7          	vsubps xmm6,xmm6,xmm7
  ad414a:	c4 e3 25 18 f6 01    	vinsertf128 ymm6,ymm11,xmm6,0x1
  ad4150:	c4 c1 6d 15 f9       	vunpckhpd ymm7,ymm2,ymm9
  ad4155:	c4 c1 6d 14 d1       	vunpcklpd ymm2,ymm2,ymm9
  ad415a:	c5 3d 15 ce          	vunpckhpd ymm9,ymm8,ymm6
  ad415e:	c4 c1 44 c6 f9 88    	vshufps ymm7,ymm7,ymm9,0x88
  ad4164:	c5 bd 14 f6          	vunpcklpd ymm6,ymm8,ymm6
  ad4168:	c5 6c c6 c6 88       	vshufps ymm8,ymm2,ymm6,0x88
  ad416d:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  ad4173:	c5 ec c6 d6 dd       	vshufps ymm2,ymm2,ymm6,0xdd
  ad4178:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  ad417d:	c5 c4 c6 f7 d8       	vshufps ymm6,ymm7,ymm7,0xd8
  ad4182:	c5 fc 10 79 40       	vmovups ymm7,YMMWORD PTR [rcx+0x40]
  ad4187:	c5 7c 10 49 60       	vmovups ymm9,YMMWORD PTR [rcx+0x60]
  ad418c:	c5 6c 59 df          	vmulps ymm11,ymm2,ymm7
  ad4190:	c4 42 65 b8 d9       	vfmadd231ps ymm11,ymm3,ymm9
  ad4195:	c5 e4 59 df          	vmulps ymm3,ymm3,ymm7
  ad4199:	c5 fc 10 b9 80 00 00 	vmovups ymm7,YMMWORD PTR [rcx+0x80]
  ad41a0:	00 
  ad41a1:	c4 c2 6d bc d9       	vfnmadd231ps ymm3,ymm2,ymm9
  ad41a6:	c5 fc 10 91 a0 00 00 	vmovups ymm2,YMMWORD PTR [rcx+0xa0]
  ad41ad:	00 
  ad41ae:	c5 4c 59 cf          	vmulps ymm9,ymm6,ymm7
  ad41b2:	c4 62 5d b8 ca       	vfmadd231ps ymm9,ymm4,ymm2
  ad41b7:	c5 dc 59 e7          	vmulps ymm4,ymm4,ymm7
  ad41bb:	c4 c1 24 58 f9       	vaddps ymm7,ymm11,ymm9
  ad41c0:	c4 e2 4d bc e2       	vfnmadd231ps ymm4,ymm6,ymm2
  ad41c5:	62 91 7c 28 28 d1    	vmovaps ymm2,ymm25
  ad41cb:	c4 c2 45 ac d0       	vfnmadd213ps ymm2,ymm7,ymm8
  ad41d0:	c5 e4 5c f4          	vsubps ymm6,ymm3,ymm4
  ad41d4:	62 91 4c 28 59 f0    	vmulps ymm6,ymm6,ymm24
  ad41da:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  ad41de:	c5 ec 58 e6          	vaddps ymm4,ymm2,ymm6
  ad41e2:	c4 41 24 5c c9       	vsubps ymm9,ymm11,ymm9
  ad41e7:	62 11 7c 28 28 d9    	vmovaps ymm11,ymm25
  ad41ed:	c4 42 65 ac da       	vfnmadd213ps ymm11,ymm3,ymm10
  ad41f2:	62 11 34 28 59 c8    	vmulps ymm9,ymm9,ymm24
  ad41f8:	c5 ec 5c d6          	vsubps ymm2,ymm2,ymm6
  ad41fc:	c4 c1 24 5c f1       	vsubps ymm6,ymm11,ymm9
  ad4201:	c4 41 24 58 c9       	vaddps ymm9,ymm11,ymm9
  ad4206:	c5 bc 58 ff          	vaddps ymm7,ymm8,ymm7
  ad420a:	c5 ac 58 db          	vaddps ymm3,ymm10,ymm3
  ad420e:	c5 7c 28 c3          	vmovaps ymm8,ymm3
  ad4212:	62 72 25 20 7f c7    	vpermt2ps ymm8,ymm27,ymm7
  ad4218:	62 f2 55 28 7f df    	vpermt2ps ymm3,ymm5,ymm7
  ad421e:	c5 fc 11 1c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm3
  ad4223:	c5 7c 11 44 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm8
  ad4229:	c5 7c 29 cb          	vmovaps ymm3,ymm9
  ad422d:	62 f2 25 20 7f da    	vpermt2ps ymm3,ymm27,ymm2
  ad4233:	62 72 55 28 7f ca    	vpermt2ps ymm9,ymm5,ymm2
  ad4239:	c5 7c 11 4c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm9
  ad423f:	c5 fc 11 5c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm3
  ad4245:	c5 fc 28 d6          	vmovaps ymm2,ymm6
  ad4249:	62 f2 25 20 7f d4    	vpermt2ps ymm2,ymm27,ymm4
  ad424f:	62 f2 55 28 7f f4    	vpermt2ps ymm6,ymm5,ymm4
  ad4255:	c5 fc 11 b4 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm6
  ad425c:	00 00 
  ad425e:	c5 fc 11 94 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm2
  ad4265:	00 00 
  ad4267:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  ad426e:	48 39 d0             	cmp    rax,rdx
  ad4271:	0f 85 c9 fb ff ff    	jne    ad3e40 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x40>
  ad4277:	c5 f8 77             	vzeroupper
  ad427a:	c3                   	ret
