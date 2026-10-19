
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006d3f40 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6d3f40:	48 c1 e2 06          	shl    rdx,0x6
  6d3f44:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6d3f48:	31 d2                	xor    edx,edx
  6d3f4a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  6d3f50:	c5 fc 10 14 17       	vmovups ymm2,YMMWORD PTR [rdi+rdx*1]
  6d3f55:	c5 f8 10 5c 17 20    	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x20]
  6d3f5b:	c5 fc 10 64 17 30    	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x30]
  6d3f61:	c5 f8 10 6c 17 50    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x50]
  6d3f67:	c5 fc 10 74 17 60    	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x60]
  6d3f6d:	c5 f8 10 bc 17 80 00 	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x80]
  6d3f74:	00 00 
  6d3f76:	c5 7c 10 84 17 90 00 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x90]
  6d3f7d:	00 00 
  6d3f7f:	c5 78 10 8c 17 b0 00 	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0xb0]
  6d3f86:	00 00 
  6d3f88:	c5 6c c6 d3 88       	vshufps ymm10,ymm2,ymm3,0x88
  6d3f8d:	c4 43 fd 01 da d8    	vpermpd ymm11,ymm10,0xd8
  6d3f93:	c5 4c c6 d7 88       	vshufps ymm10,ymm6,ymm7,0x88
  6d3f98:	c4 43 fd 01 e2 d8    	vpermpd ymm12,ymm10,0xd8
  6d3f9e:	c5 5c c6 d5 88       	vshufps ymm10,ymm4,ymm5,0x88
  6d3fa3:	c4 43 fd 01 ea d8    	vpermpd ymm13,ymm10,0xd8
  6d3fa9:	c4 41 3c c6 d1 88    	vshufps ymm10,ymm8,ymm9,0x88
  6d3faf:	c4 43 fd 01 f2 d8    	vpermpd ymm14,ymm10,0xd8
  6d3fb5:	c5 ec c6 d3 dd       	vshufps ymm2,ymm2,ymm3,0xdd
  6d3fba:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  6d3fc0:	c5 cc c6 df dd       	vshufps ymm3,ymm6,ymm7,0xdd
  6d3fc5:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  6d3fcb:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  6d3fd0:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  6d3fd6:	c4 c1 3c c6 e9 dd    	vshufps ymm5,ymm8,ymm9,0xdd
  6d3fdc:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  6d3fe2:	c4 c1 24 58 f4       	vaddps ymm6,ymm11,ymm12
  6d3fe7:	c4 c1 14 58 fe       	vaddps ymm7,ymm13,ymm14
  6d3fec:	c5 4c 58 c7          	vaddps ymm8,ymm6,ymm7
  6d3ff0:	c5 6c 58 cb          	vaddps ymm9,ymm2,ymm3
  6d3ff4:	c5 5c 58 fd          	vaddps ymm15,ymm4,ymm5
  6d3ff8:	c4 41 34 58 d7       	vaddps ymm10,ymm9,ymm15
  6d3ffd:	c4 41 24 5c e4       	vsubps ymm12,ymm11,ymm12
  6d4002:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  6d4006:	c5 9c 58 c4          	vaddps ymm0,ymm12,ymm4
  6d400a:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  6d400e:	c4 c1 0c 5c dd       	vsubps ymm3,ymm14,ymm13
  6d4013:	c5 64 58 da          	vaddps ymm11,ymm3,ymm2
  6d4017:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  6d401b:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  6d4020:	c5 9c 5c e4          	vsubps ymm4,ymm12,ymm4
  6d4024:	c5 ec 5c eb          	vsubps ymm5,ymm2,ymm3
  6d4028:	c5 78 29 c2          	vmovaps xmm2,xmm8
  6d402c:	c4 63 7d 19 c3 01    	vextractf128 xmm3,ymm8,0x1
  6d4032:	c5 f8 28 f8          	vmovaps xmm7,xmm0
  6d4036:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  6d403c:	c5 78 28 c6          	vmovaps xmm8,xmm6
  6d4040:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  6d4046:	c5 65 14 e6          	vunpcklpd ymm12,ymm3,ymm6
  6d404a:	c5 f8 28 dc          	vmovaps xmm3,xmm4
  6d404e:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  6d4054:	c5 fd 14 c4          	vunpcklpd ymm0,ymm0,ymm4
  6d4058:	c4 c1 6d 15 e0       	vunpckhpd ymm4,ymm2,ymm8
  6d405d:	c4 c1 6d 14 f0       	vunpcklpd ymm6,ymm2,ymm8
  6d4062:	c5 45 15 eb          	vunpckhpd ymm13,ymm7,ymm3
  6d4066:	c5 c5 14 db          	vunpcklpd ymm3,ymm7,ymm3
  6d406a:	c5 cc c6 d3 88       	vshufps ymm2,ymm6,ymm3,0x88
  6d406f:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6d4074:	c5 cc c6 db dd       	vshufps ymm3,ymm6,ymm3,0xdd
  6d4079:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6d407e:	c4 c1 5c c6 f5 88    	vshufps ymm6,ymm4,ymm13,0x88
  6d4084:	c5 4c c6 c6 d8       	vshufps ymm8,ymm6,ymm6,0xd8
  6d4089:	c4 c1 5c c6 e5 dd    	vshufps ymm4,ymm4,ymm13,0xdd
  6d408f:	c5 dc c6 f4 d8       	vshufps ymm6,ymm4,ymm4,0xd8
  6d4094:	c5 9c c6 e0 88       	vshufps ymm4,ymm12,ymm0,0x88
  6d4099:	c5 dc c6 fc d8       	vshufps ymm7,ymm4,ymm4,0xd8
  6d409e:	c5 9c c6 c0 dd       	vshufps ymm0,ymm12,ymm0,0xdd
  6d40a3:	c5 fc c6 e0 d8       	vshufps ymm4,ymm0,ymm0,0xd8
  6d40a8:	c5 78 29 d0          	vmovaps xmm0,xmm10
  6d40ac:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  6d40b2:	c4 41 78 28 e3       	vmovaps xmm12,xmm11
  6d40b7:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  6d40bd:	c4 41 78 28 e9       	vmovaps xmm13,xmm9
  6d40c2:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  6d40c8:	c4 41 2d 14 c9       	vunpcklpd ymm9,ymm10,ymm9
  6d40cd:	c5 78 28 d5          	vmovaps xmm10,xmm5
  6d40d1:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  6d40d7:	c5 25 14 dd          	vunpcklpd ymm11,ymm11,ymm5
  6d40db:	c4 41 7d 15 f5       	vunpckhpd ymm14,ymm0,ymm13
  6d40e0:	c4 c1 7d 14 c5       	vunpcklpd ymm0,ymm0,ymm13
  6d40e5:	c4 41 1d 15 ea       	vunpckhpd ymm13,ymm12,ymm10
  6d40ea:	c4 41 1d 14 d2       	vunpcklpd ymm10,ymm12,ymm10
  6d40ef:	c4 c1 7c c6 ea 88    	vshufps ymm5,ymm0,ymm10,0x88
  6d40f5:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  6d40fa:	c4 c1 7c c6 c2 dd    	vshufps ymm0,ymm0,ymm10,0xdd
  6d4100:	c5 7c c6 d0 d8       	vshufps ymm10,ymm0,ymm0,0xd8
  6d4105:	c4 c1 0c c6 c5 88    	vshufps ymm0,ymm14,ymm13,0x88
  6d410b:	c5 7c c6 e0 d8       	vshufps ymm12,ymm0,ymm0,0xd8
  6d4110:	c4 c1 0c c6 c5 dd    	vshufps ymm0,ymm14,ymm13,0xdd
  6d4116:	c5 7c c6 e8 d8       	vshufps ymm13,ymm0,ymm0,0xd8
  6d411b:	c4 c1 34 c6 c3 88    	vshufps ymm0,ymm9,ymm11,0x88
  6d4121:	c5 7c c6 f8 d8       	vshufps ymm15,ymm0,ymm0,0xd8
  6d4126:	c4 c1 34 c6 c3 dd    	vshufps ymm0,ymm9,ymm11,0xdd
  6d412c:	c5 7c c6 d8 d8       	vshufps ymm11,ymm0,ymm0,0xd8
  6d4131:	c5 fc 10 81 80 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0x80]
  6d4138:	00 
  6d4139:	c5 fc 10 89 a0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xa0]
  6d4140:	00 
  6d4141:	c5 3c 59 c8          	vmulps ymm9,ymm8,ymm0
  6d4145:	c4 62 1d bc c9       	vfnmadd231ps ymm9,ymm12,ymm1
  6d414a:	c5 1c 59 f0          	vmulps ymm14,ymm12,ymm0
  6d414e:	c5 fc 10 81 00 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x100]
  6d4155:	00 
  6d4156:	c4 62 3d b8 f1       	vfmadd231ps ymm14,ymm8,ymm1
  6d415b:	c5 fc 10 89 20 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x120]
  6d4162:	00 
  6d4163:	c5 7c 59 e7          	vmulps ymm12,ymm0,ymm7
  6d4167:	c4 62 05 bc e1       	vfnmadd231ps ymm12,ymm15,ymm1
  6d416c:	c5 04 59 f8          	vmulps ymm15,ymm15,ymm0
  6d4170:	c5 fc 10 81 c0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xc0]
  6d4177:	00 
  6d4178:	c4 62 45 b8 f9       	vfmadd231ps ymm15,ymm7,ymm1
  6d417d:	c5 fc 10 89 e0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xe0]
  6d4184:	00 
  6d4185:	c5 fc 59 fe          	vmulps ymm7,ymm0,ymm6
  6d4189:	c4 e2 15 bc f9       	vfnmadd231ps ymm7,ymm13,ymm1
  6d418e:	c5 14 59 c0          	vmulps ymm8,ymm13,ymm0
  6d4192:	c5 fc 10 81 40 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x140]
  6d4199:	00 
  6d419a:	c4 62 4d b8 c1       	vfmadd231ps ymm8,ymm6,ymm1
  6d419f:	c5 fc 10 89 60 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x160]
  6d41a6:	00 
  6d41a7:	c5 7c 59 ec          	vmulps ymm13,ymm0,ymm4
  6d41ab:	c4 62 25 bc e9       	vfnmadd231ps ymm13,ymm11,ymm1
  6d41b0:	c5 a4 59 c0          	vmulps ymm0,ymm11,ymm0
  6d41b4:	c5 fc 10 71 40       	vmovups ymm6,YMMWORD PTR [rcx+0x40]
  6d41b9:	c4 e2 5d b8 c1       	vfmadd231ps ymm0,ymm4,ymm1
  6d41be:	c5 fc 10 49 60       	vmovups ymm1,YMMWORD PTR [rcx+0x60]
  6d41c3:	c5 4c 59 db          	vmulps ymm11,ymm6,ymm3
  6d41c7:	c4 62 2d bc d9       	vfnmadd231ps ymm11,ymm10,ymm1
  6d41cc:	c5 ac 59 e6          	vmulps ymm4,ymm10,ymm6
  6d41d0:	c4 41 34 58 d4       	vaddps ymm10,ymm9,ymm12
  6d41d5:	c4 e2 65 b8 e1       	vfmadd231ps ymm4,ymm3,ymm1
  6d41da:	c5 ac 58 ca          	vaddps ymm1,ymm10,ymm2
  6d41de:	c5 fc 11 4c 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm1
  6d41e4:	c4 c1 14 58 cb       	vaddps ymm1,ymm13,ymm11
  6d41e9:	c4 e2 7d 18 35 6e 12 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff9a126e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6d41f0:	9a ff 
  6d41f2:	c4 62 4d ac d2       	vfnmadd213ps ymm10,ymm6,ymm2
  6d41f7:	c4 c1 0c 58 d7       	vaddps ymm2,ymm14,ymm15
  6d41fc:	c4 41 0c 5c ff       	vsubps ymm15,ymm14,ymm15
  6d4201:	c5 c4 58 d9          	vaddps ymm3,ymm7,ymm1
  6d4205:	c5 fc 11 5c 24 b8    	vmovups YMMWORD PTR [rsp-0x48],ymm3
  6d420b:	c4 e2 4d bc f9       	vfnmadd231ps ymm7,ymm6,ymm1
  6d4210:	c5 fc 58 cc          	vaddps ymm1,ymm0,ymm4
  6d4214:	c5 fc 5c c4          	vsubps ymm0,ymm0,ymm4
  6d4218:	c5 6c 58 f5          	vaddps ymm14,ymm2,ymm5
  6d421c:	c4 e2 4d ac d5       	vfnmadd213ps ymm2,ymm6,ymm5
  6d4221:	c5 bc 58 e1          	vaddps ymm4,ymm8,ymm1
  6d4225:	c4 e2 7d 18 1d a6 10 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9a10a6]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6d422c:	9a ff 
  6d422e:	c5 04 59 fb          	vmulps ymm15,ymm15,ymm3
  6d4232:	c4 41 34 5c e4       	vsubps ymm12,ymm9,ymm12
  6d4237:	c4 c1 2c 58 ef       	vaddps ymm5,ymm10,ymm15
  6d423c:	c5 fc 59 c3          	vmulps ymm0,ymm0,ymm3
  6d4240:	c4 62 4d bc c1       	vfnmadd231ps ymm8,ymm6,ymm1
  6d4245:	c5 44 58 c8          	vaddps ymm9,ymm7,ymm0
  6d4249:	c5 9c 59 cb          	vmulps ymm1,ymm12,ymm3
  6d424d:	c4 41 14 5c e3       	vsubps ymm12,ymm13,ymm11
  6d4252:	c5 6c 5c d9          	vsubps ymm11,ymm2,ymm1
  6d4256:	c5 1c 59 e3          	vmulps ymm12,ymm12,ymm3
  6d425a:	c4 41 2c 5c d7       	vsubps ymm10,ymm10,ymm15
  6d425f:	c4 41 3c 5c ec       	vsubps ymm13,ymm8,ymm12
  6d4264:	c5 c4 5c f8          	vsubps ymm7,ymm7,ymm0
  6d4268:	c5 f4 58 c2          	vaddps ymm0,ymm1,ymm2
  6d426c:	c4 41 3c 58 c4       	vaddps ymm8,ymm8,ymm12
  6d4271:	c5 88 58 cc          	vaddps xmm1,xmm14,xmm4
  6d4275:	c5 fc 10 5c 24 d8    	vmovups ymm3,YMMWORD PTR [rsp-0x28]
  6d427b:	c5 fc 10 74 24 b8    	vmovups ymm6,YMMWORD PTR [rsp-0x48]
  6d4281:	c5 e0 58 d6          	vaddps xmm2,xmm3,xmm6
  6d4285:	c5 68 14 e1          	vunpcklps xmm12,xmm2,xmm1
  6d4289:	c5 e8 15 c9          	vunpckhps xmm1,xmm2,xmm1
  6d428d:	c5 f8 11 4c 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm1
  6d4293:	c5 78 11 24 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm12
  6d4298:	c4 c1 20 5c cd       	vsubps xmm1,xmm11,xmm13
  6d429d:	c4 c1 50 5c d1       	vsubps xmm2,xmm5,xmm9
  6d42a2:	c5 68 14 e1          	vunpcklps xmm12,xmm2,xmm1
  6d42a6:	c5 e8 15 c9          	vunpckhps xmm1,xmm2,xmm1
  6d42aa:	c5 f8 11 4c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm1
  6d42b0:	c5 78 11 64 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm12
  6d42b6:	c5 b8 58 c8          	vaddps xmm1,xmm8,xmm0
  6d42ba:	c5 a8 58 d7          	vaddps xmm2,xmm10,xmm7
  6d42be:	c5 68 14 e1          	vunpcklps xmm12,xmm2,xmm1
  6d42c2:	c5 e8 15 c9          	vunpckhps xmm1,xmm2,xmm1
  6d42c6:	c5 f8 11 4c 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm1
  6d42cc:	c5 78 11 64 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm12
  6d42d2:	c5 88 5c cc          	vsubps xmm1,xmm14,xmm4
  6d42d6:	c5 e0 5c d6          	vsubps xmm2,xmm3,xmm6
  6d42da:	c5 e8 14 d9          	vunpcklps xmm3,xmm2,xmm1
  6d42de:	c5 e8 15 c9          	vunpckhps xmm1,xmm2,xmm1
  6d42e2:	c5 f8 11 4c 16 70    	vmovups XMMWORD PTR [rsi+rdx*1+0x70],xmm1
  6d42e8:	c5 f8 11 5c 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm3
  6d42ee:	c4 c1 20 58 cd       	vaddps xmm1,xmm11,xmm13
  6d42f3:	c5 b0 58 d5          	vaddps xmm2,xmm9,xmm5
  6d42f7:	c5 e8 14 d9          	vunpcklps xmm3,xmm2,xmm1
  6d42fb:	c5 e8 15 c9          	vunpckhps xmm1,xmm2,xmm1
  6d42ff:	c5 f8 11 8c 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm1
  6d4306:	00 00 
  6d4308:	c5 f8 11 9c 16 80 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x80],xmm3
  6d430f:	00 00 
  6d4311:	c4 c1 78 5c c0       	vsubps xmm0,xmm0,xmm8
  6d4316:	c5 a8 5c cf          	vsubps xmm1,xmm10,xmm7
  6d431a:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6d431e:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6d4322:	c5 f8 11 84 16 b0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xb0],xmm0
  6d4329:	00 00 
  6d432b:	c5 f8 11 94 16 a0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa0],xmm2
  6d4332:	00 00 
  6d4334:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  6d433b:	48 39 d0             	cmp    rax,rdx
  6d433e:	0f 85 0c fc ff ff    	jne    6d3f50 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  6d4344:	c5 f8 77             	vzeroupper
  6d4347:	c3                   	ret
