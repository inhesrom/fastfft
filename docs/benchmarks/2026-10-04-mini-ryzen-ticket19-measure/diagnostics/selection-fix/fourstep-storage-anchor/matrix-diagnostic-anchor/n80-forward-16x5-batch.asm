
target/ticket19/selection-fix/large-storage-crossover/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000bf3f00 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  bf3f00:	55                   	push   rbp
  bf3f01:	48 89 e5             	mov    rbp,rsp
  bf3f04:	53                   	push   rbx
  bf3f05:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  bf3f09:	48 81 ec 40 08 00 00 	sub    rsp,0x840
  bf3f10:	31 c0                	xor    eax,eax
  bf3f12:	c4 e2 7d 19 05 65 b4 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4ab465]        # 9f380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a50>
  bf3f19:	4a ff 
  bf3f1b:	c4 e2 7d 18 25 00 ba 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff4aba00]        # 9f924 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2ff4>
  bf3f22:	4a ff 
  bf3f24:	c4 e2 7d 19 15 13 b1 	vbroadcastsd ymm2,QWORD PTR [rip+0xffffffffff4ab113]        # 9f040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2710>
  bf3f2b:	4a ff 
  bf3f2d:	c4 e2 7d 18 1d d2 ba 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff4abad2]        # 9fa08 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30d8>
  bf3f34:	4a ff 
  bf3f36:	c4 e2 7d 18 2d 65 b9 	vbroadcastss ymm5,DWORD PTR [rip+0xffffffffff4ab965]        # 9f8a4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2f74>
  bf3f3d:	4a ff 
  bf3f3f:	49 89 f8             	mov    r8,rdi
  bf3f42:	e9 d2 04 00 00       	jmp    bf4419 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x519>
  bf3f47:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  bf3f4e:	00 00 
  bf3f50:	48 ff c0             	inc    rax
  bf3f53:	c5 fc 28 b4 24 80 00 	vmovaps ymm6,YMMWORD PTR [rsp+0x80]
  bf3f5a:	00 00 
  bf3f5c:	c5 7c 28 8c 24 00 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x100]
  bf3f63:	00 00 
  bf3f65:	c5 7c 28 94 24 80 01 	vmovaps ymm10,YMMWORD PTR [rsp+0x180]
  bf3f6c:	00 00 
  bf3f6e:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  bf3f73:	c5 cc 59 31          	vmulps ymm6,ymm6,YMMWORD PTR [rcx]
  bf3f77:	c4 e2 25 b8 71 20    	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x20]
  bf3f7d:	c5 34 59 59 40       	vmulps ymm11,ymm9,YMMWORD PTR [rcx+0x40]
  bf3f82:	c4 41 34 c6 c9 b1    	vshufps ymm9,ymm9,ymm9,0xb1
  bf3f88:	c4 62 35 b8 59 60    	vfmadd231ps ymm11,ymm9,YMMWORD PTR [rcx+0x60]
  bf3f8e:	c4 41 2c c6 ca b1    	vshufps ymm9,ymm10,ymm10,0xb1
  bf3f94:	c5 2c 59 91 80 00 00 	vmulps ymm10,ymm10,YMMWORD PTR [rcx+0x80]
  bf3f9b:	00 
  bf3f9c:	c4 62 35 b8 91 a0 00 	vfmadd231ps ymm10,ymm9,YMMWORD PTR [rcx+0xa0]
  bf3fa3:	00 00 
  bf3fa5:	c5 7c 28 0c 24       	vmovaps ymm9,YMMWORD PTR [rsp]
  bf3faa:	c5 7c 28 a4 24 00 02 	vmovaps ymm12,YMMWORD PTR [rsp+0x200]
  bf3fb1:	00 00 
  bf3fb3:	c5 1c 59 a9 c0 00 00 	vmulps ymm13,ymm12,YMMWORD PTR [rcx+0xc0]
  bf3fba:	00 
  bf3fbb:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  bf3fc1:	c4 62 1d b8 a9 e0 00 	vfmadd231ps ymm13,ymm12,YMMWORD PTR [rcx+0xe0]
  bf3fc8:	00 00 
  bf3fca:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  bf3fce:	c4 41 24 58 f2       	vaddps ymm14,ymm11,ymm10
  bf3fd3:	c4 c1 4c 5c f5       	vsubps ymm6,ymm6,ymm13
  bf3fd8:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  bf3fdd:	c4 e2 7d 18 0d 8a bc 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff4abc8a]        # 9fc70 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x3340>
  bf3fe4:	4a ff 
  bf3fe6:	c5 7c 28 d9          	vmovaps ymm11,ymm1
  bf3fea:	c4 42 1d a8 d9       	vfmadd213ps ymm11,ymm12,ymm9
  bf3fef:	c4 62 0d b8 dd       	vfmadd231ps ymm11,ymm14,ymm5
  bf3ff4:	c5 7c 28 ed          	vmovaps ymm13,ymm5
  bf3ff8:	c4 42 1d a8 e9       	vfmadd213ps ymm13,ymm12,ymm9
  bf3ffd:	c4 62 0d b8 e9       	vfmadd231ps ymm13,ymm14,ymm1
  bf4002:	c4 e2 7d 18 3d 1d b9 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff4ab91d]        # 9f928 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2ff8>
  bf4009:	4a ff 
  bf400b:	c5 4c 59 ff          	vmulps ymm15,ymm6,ymm7
  bf400f:	c4 62 7d 18 05 cc bc 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff4abccc]        # 9fce4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x33b4>
  bf4016:	4a ff 
  bf4018:	c4 42 2d b8 f8       	vfmadd231ps ymm15,ymm10,ymm8
  bf401d:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  bf4023:	62 e1 7c 28 28 05 53 	vmovaps ymm16,YMMWORD PTR [rip+0xffffffffff4aeb53]        # a2b80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x6250>
  bf402a:	eb 4a ff 
  bf402d:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  bf4033:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  bf4037:	c4 c2 45 bc f2       	vfnmadd231ps ymm6,ymm7,ymm10
  bf403c:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  bf4041:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  bf4047:	c4 41 0c 58 d4       	vaddps ymm10,ymm14,ymm12
  bf404c:	c4 41 34 58 ca       	vaddps ymm9,ymm9,ymm10
  bf4051:	c4 41 24 58 d7       	vaddps ymm10,ymm11,ymm15
  bf4056:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  bf405a:	c5 94 5c f6          	vsubps ymm6,ymm13,ymm6
  bf405e:	c4 41 24 5c df       	vsubps ymm11,ymm11,ymm15
  bf4063:	c4 21 7c 11 0c 8e    	vmovups YMMWORD PTR [rsi+r9*4],ymm9
  bf4069:	c4 21 7c 11 94 8e 80 	vmovups YMMWORD PTR [rsi+r9*4+0x80],ymm10
  bf4070:	00 00 00 
  bf4073:	c4 21 7c 11 a4 8e 00 	vmovups YMMWORD PTR [rsi+r9*4+0x100],ymm12
  bf407a:	01 00 00 
  bf407d:	c4 a1 7c 11 b4 8e 80 	vmovups YMMWORD PTR [rsi+r9*4+0x180],ymm6
  bf4084:	01 00 00 
  bf4087:	c4 21 7c 11 9c 8e 00 	vmovups YMMWORD PTR [rsi+r9*4+0x200],ymm11
  bf408e:	02 00 00 
  bf4091:	c5 fc 28 b4 24 a0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xa0]
  bf4098:	00 00 
  bf409a:	c5 7c 28 8c 24 20 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x120]
  bf40a1:	00 00 
  bf40a3:	c5 4c 59 91 00 01 00 	vmulps ymm10,ymm6,YMMWORD PTR [rcx+0x100]
  bf40aa:	00 
  bf40ab:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  bf40b0:	c4 62 4d b8 91 20 01 	vfmadd231ps ymm10,ymm6,YMMWORD PTR [rcx+0x120]
  bf40b7:	00 00 
  bf40b9:	c4 c1 34 c6 f1 b1    	vshufps ymm6,ymm9,ymm9,0xb1
  bf40bf:	c5 34 59 89 40 01 00 	vmulps ymm9,ymm9,YMMWORD PTR [rcx+0x140]
  bf40c6:	00 
  bf40c7:	c4 62 4d b8 89 60 01 	vfmadd231ps ymm9,ymm6,YMMWORD PTR [rcx+0x160]
  bf40ce:	00 00 
  bf40d0:	c5 fc 28 b4 24 a0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1a0]
  bf40d7:	00 00 
  bf40d9:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  bf40de:	c5 cc 59 b1 80 01 00 	vmulps ymm6,ymm6,YMMWORD PTR [rcx+0x180]
  bf40e5:	00 
  bf40e6:	c4 e2 25 b8 b1 a0 01 	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x1a0]
  bf40ed:	00 00 
  bf40ef:	c5 7c 28 9c 24 20 02 	vmovaps ymm11,YMMWORD PTR [rsp+0x220]
  bf40f6:	00 00 
  bf40f8:	c4 41 24 c6 e3 b1    	vshufps ymm12,ymm11,ymm11,0xb1
  bf40fe:	c5 24 59 99 c0 01 00 	vmulps ymm11,ymm11,YMMWORD PTR [rcx+0x1c0]
  bf4105:	00 
  bf4106:	c4 62 1d b8 99 e0 01 	vfmadd231ps ymm11,ymm12,YMMWORD PTR [rcx+0x1e0]
  bf410d:	00 00 
  bf410f:	c5 7c 28 64 24 20    	vmovaps ymm12,YMMWORD PTR [rsp+0x20]
  bf4115:	c4 41 2c 58 eb       	vaddps ymm13,ymm10,ymm11
  bf411a:	c5 34 58 f6          	vaddps ymm14,ymm9,ymm6
  bf411e:	c4 41 2c 5c d3       	vsubps ymm10,ymm10,ymm11
  bf4123:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  bf4127:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  bf412b:	c4 42 15 a8 cc       	vfmadd213ps ymm9,ymm13,ymm12
  bf4130:	c4 62 0d b8 cd       	vfmadd231ps ymm9,ymm14,ymm5
  bf4135:	c5 7c 28 dd          	vmovaps ymm11,ymm5
  bf4139:	c4 42 15 a8 dc       	vfmadd213ps ymm11,ymm13,ymm12
  bf413e:	c4 62 0d b8 d9       	vfmadd231ps ymm11,ymm14,ymm1
  bf4143:	c5 2c 59 ff          	vmulps ymm15,ymm10,ymm7
  bf4147:	c4 42 4d b8 f8       	vfmadd231ps ymm15,ymm6,ymm8
  bf414c:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  bf4152:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  bf4158:	c4 41 2c 59 d0       	vmulps ymm10,ymm10,ymm8
  bf415d:	c4 62 45 bc d6       	vfnmadd231ps ymm10,ymm7,ymm6
  bf4162:	c4 c1 2c c6 f2 b1    	vshufps ymm6,ymm10,ymm10,0xb1
  bf4168:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  bf416e:	c4 41 0c 58 d5       	vaddps ymm10,ymm14,ymm13
  bf4173:	c4 41 1c 58 d2       	vaddps ymm10,ymm12,ymm10
  bf4178:	c4 41 34 58 e7       	vaddps ymm12,ymm9,ymm15
  bf417d:	c5 24 58 ee          	vaddps ymm13,ymm11,ymm6
  bf4181:	c5 a4 5c f6          	vsubps ymm6,ymm11,ymm6
  bf4185:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  bf418a:	c4 21 7c 11 54 8e 20 	vmovups YMMWORD PTR [rsi+r9*4+0x20],ymm10
  bf4191:	c4 21 7c 11 a4 8e a0 	vmovups YMMWORD PTR [rsi+r9*4+0xa0],ymm12
  bf4198:	00 00 00 
  bf419b:	c4 21 7c 11 ac 8e 20 	vmovups YMMWORD PTR [rsi+r9*4+0x120],ymm13
  bf41a2:	01 00 00 
  bf41a5:	c4 a1 7c 11 b4 8e a0 	vmovups YMMWORD PTR [rsi+r9*4+0x1a0],ymm6
  bf41ac:	01 00 00 
  bf41af:	c4 21 7c 11 8c 8e 20 	vmovups YMMWORD PTR [rsi+r9*4+0x220],ymm9
  bf41b6:	02 00 00 
  bf41b9:	c5 fc 28 b4 24 c0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xc0]
  bf41c0:	00 00 
  bf41c2:	c5 7c 28 8c 24 40 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x140]
  bf41c9:	00 00 
  bf41cb:	c5 7c 28 94 24 c0 01 	vmovaps ymm10,YMMWORD PTR [rsp+0x1c0]
  bf41d2:	00 00 
  bf41d4:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  bf41d9:	c5 cc 59 b1 00 02 00 	vmulps ymm6,ymm6,YMMWORD PTR [rcx+0x200]
  bf41e0:	00 
  bf41e1:	c4 e2 25 b8 b1 20 02 	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x220]
  bf41e8:	00 00 
  bf41ea:	c5 34 59 99 40 02 00 	vmulps ymm11,ymm9,YMMWORD PTR [rcx+0x240]
  bf41f1:	00 
  bf41f2:	c4 41 34 c6 c9 b1    	vshufps ymm9,ymm9,ymm9,0xb1
  bf41f8:	c4 62 35 b8 99 60 02 	vfmadd231ps ymm11,ymm9,YMMWORD PTR [rcx+0x260]
  bf41ff:	00 00 
  bf4201:	c4 41 2c c6 ca b1    	vshufps ymm9,ymm10,ymm10,0xb1
  bf4207:	c5 2c 59 91 80 02 00 	vmulps ymm10,ymm10,YMMWORD PTR [rcx+0x280]
  bf420e:	00 
  bf420f:	c4 62 35 b8 91 a0 02 	vfmadd231ps ymm10,ymm9,YMMWORD PTR [rcx+0x2a0]
  bf4216:	00 00 
  bf4218:	c5 7c 28 4c 24 40    	vmovaps ymm9,YMMWORD PTR [rsp+0x40]
  bf421e:	c5 7c 28 a4 24 40 02 	vmovaps ymm12,YMMWORD PTR [rsp+0x240]
  bf4225:	00 00 
  bf4227:	c5 1c 59 a9 c0 02 00 	vmulps ymm13,ymm12,YMMWORD PTR [rcx+0x2c0]
  bf422e:	00 
  bf422f:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  bf4235:	c4 62 1d b8 a9 e0 02 	vfmadd231ps ymm13,ymm12,YMMWORD PTR [rcx+0x2e0]
  bf423c:	00 00 
  bf423e:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  bf4242:	c4 41 24 58 f2       	vaddps ymm14,ymm11,ymm10
  bf4247:	c4 c1 4c 5c f5       	vsubps ymm6,ymm6,ymm13
  bf424c:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  bf4251:	c5 7c 28 d9          	vmovaps ymm11,ymm1
  bf4255:	c4 42 1d a8 d9       	vfmadd213ps ymm11,ymm12,ymm9
  bf425a:	c4 62 0d b8 dd       	vfmadd231ps ymm11,ymm14,ymm5
  bf425f:	c5 7c 28 ed          	vmovaps ymm13,ymm5
  bf4263:	c4 42 1d a8 e9       	vfmadd213ps ymm13,ymm12,ymm9
  bf4268:	c4 62 0d b8 e9       	vfmadd231ps ymm13,ymm14,ymm1
  bf426d:	c5 4c 59 ff          	vmulps ymm15,ymm6,ymm7
  bf4271:	c4 42 2d b8 f8       	vfmadd231ps ymm15,ymm10,ymm8
  bf4276:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  bf427c:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  bf4282:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  bf4286:	c4 c2 45 bc f2       	vfnmadd231ps ymm6,ymm7,ymm10
  bf428b:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  bf4290:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  bf4296:	c4 41 0c 58 d4       	vaddps ymm10,ymm14,ymm12
  bf429b:	c4 41 34 58 ca       	vaddps ymm9,ymm9,ymm10
  bf42a0:	c4 41 24 58 d7       	vaddps ymm10,ymm11,ymm15
  bf42a5:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  bf42a9:	c5 94 5c f6          	vsubps ymm6,ymm13,ymm6
  bf42ad:	c4 41 24 5c df       	vsubps ymm11,ymm11,ymm15
  bf42b2:	c4 21 7c 11 4c 8e 40 	vmovups YMMWORD PTR [rsi+r9*4+0x40],ymm9
  bf42b9:	c4 21 7c 11 94 8e c0 	vmovups YMMWORD PTR [rsi+r9*4+0xc0],ymm10
  bf42c0:	00 00 00 
  bf42c3:	c4 21 7c 11 a4 8e 40 	vmovups YMMWORD PTR [rsi+r9*4+0x140],ymm12
  bf42ca:	01 00 00 
  bf42cd:	c4 a1 7c 11 b4 8e c0 	vmovups YMMWORD PTR [rsi+r9*4+0x1c0],ymm6
  bf42d4:	01 00 00 
  bf42d7:	c4 21 7c 11 9c 8e 40 	vmovups YMMWORD PTR [rsi+r9*4+0x240],ymm11
  bf42de:	02 00 00 
  bf42e1:	c5 fc 28 b4 24 e0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xe0]
  bf42e8:	00 00 
  bf42ea:	c5 7c 28 8c 24 60 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x160]
  bf42f1:	00 00 
  bf42f3:	c5 4c 59 91 00 03 00 	vmulps ymm10,ymm6,YMMWORD PTR [rcx+0x300]
  bf42fa:	00 
  bf42fb:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  bf4300:	c4 62 4d b8 91 20 03 	vfmadd231ps ymm10,ymm6,YMMWORD PTR [rcx+0x320]
  bf4307:	00 00 
  bf4309:	c4 c1 34 c6 f1 b1    	vshufps ymm6,ymm9,ymm9,0xb1
  bf430f:	c5 34 59 89 40 03 00 	vmulps ymm9,ymm9,YMMWORD PTR [rcx+0x340]
  bf4316:	00 
  bf4317:	c4 62 4d b8 89 60 03 	vfmadd231ps ymm9,ymm6,YMMWORD PTR [rcx+0x360]
  bf431e:	00 00 
  bf4320:	c5 fc 28 b4 24 e0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1e0]
  bf4327:	00 00 
  bf4329:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  bf432e:	c5 cc 59 b1 80 03 00 	vmulps ymm6,ymm6,YMMWORD PTR [rcx+0x380]
  bf4335:	00 
  bf4336:	c4 e2 25 b8 b1 a0 03 	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x3a0]
  bf433d:	00 00 
  bf433f:	c5 7c 28 9c 24 60 02 	vmovaps ymm11,YMMWORD PTR [rsp+0x260]
  bf4346:	00 00 
  bf4348:	c4 41 24 c6 e3 b1    	vshufps ymm12,ymm11,ymm11,0xb1
  bf434e:	c5 24 59 99 c0 03 00 	vmulps ymm11,ymm11,YMMWORD PTR [rcx+0x3c0]
  bf4355:	00 
  bf4356:	c4 62 1d b8 99 e0 03 	vfmadd231ps ymm11,ymm12,YMMWORD PTR [rcx+0x3e0]
  bf435d:	00 00 
  bf435f:	c5 7c 28 64 24 60    	vmovaps ymm12,YMMWORD PTR [rsp+0x60]
  bf4365:	c4 41 2c 58 eb       	vaddps ymm13,ymm10,ymm11
  bf436a:	c5 34 58 f6          	vaddps ymm14,ymm9,ymm6
  bf436e:	c4 41 2c 5c d3       	vsubps ymm10,ymm10,ymm11
  bf4373:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  bf4377:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  bf437b:	c4 42 15 a8 cc       	vfmadd213ps ymm9,ymm13,ymm12
  bf4380:	c4 62 0d b8 cd       	vfmadd231ps ymm9,ymm14,ymm5
  bf4385:	c5 7c 28 dd          	vmovaps ymm11,ymm5
  bf4389:	c4 42 15 a8 dc       	vfmadd213ps ymm11,ymm13,ymm12
  bf438e:	c4 62 0d b8 d9       	vfmadd231ps ymm11,ymm14,ymm1
  bf4393:	c5 2c 59 ff          	vmulps ymm15,ymm10,ymm7
  bf4397:	c4 42 4d b8 f8       	vfmadd231ps ymm15,ymm6,ymm8
  bf439c:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  bf43a2:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  bf43a8:	c4 41 2c 59 d0       	vmulps ymm10,ymm10,ymm8
  bf43ad:	c4 62 45 bc d6       	vfnmadd231ps ymm10,ymm7,ymm6
  bf43b2:	c4 c1 2c c6 f2 b1    	vshufps ymm6,ymm10,ymm10,0xb1
  bf43b8:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  bf43be:	c4 41 0c 58 d5       	vaddps ymm10,ymm14,ymm13
  bf43c3:	c4 41 1c 58 d2       	vaddps ymm10,ymm12,ymm10
  bf43c8:	c4 41 34 58 e7       	vaddps ymm12,ymm9,ymm15
  bf43cd:	c5 24 58 ee          	vaddps ymm13,ymm11,ymm6
  bf43d1:	c5 a4 5c f6          	vsubps ymm6,ymm11,ymm6
  bf43d5:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  bf43da:	c4 21 7c 11 54 8e 60 	vmovups YMMWORD PTR [rsi+r9*4+0x60],ymm10
  bf43e1:	c4 21 7c 11 a4 8e e0 	vmovups YMMWORD PTR [rsi+r9*4+0xe0],ymm12
  bf43e8:	00 00 00 
  bf43eb:	c4 21 7c 11 ac 8e 60 	vmovups YMMWORD PTR [rsi+r9*4+0x160],ymm13
  bf43f2:	01 00 00 
  bf43f5:	c4 a1 7c 11 b4 8e e0 	vmovups YMMWORD PTR [rsi+r9*4+0x1e0],ymm6
  bf43fc:	01 00 00 
  bf43ff:	c4 21 7c 11 8c 8e 60 	vmovups YMMWORD PTR [rsi+r9*4+0x260],ymm9
  bf4406:	02 00 00 
  bf4409:	49 81 c0 80 02 00 00 	add    r8,0x280
  bf4410:	48 39 d0             	cmp    rax,rdx
  bf4413:	0f 84 b7 05 00 00    	je     bf49d0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xad0>
  bf4419:	49 89 c1             	mov    r9,rax
  bf441c:	49 c1 e1 05          	shl    r9,0x5
  bf4420:	4f 8d 0c 89          	lea    r9,[r9+r9*4]
  bf4424:	c5 7c 10 89 00 04 00 	vmovups ymm9,YMMWORD PTR [rcx+0x400]
  bf442b:	00 
  bf442c:	c5 7c 10 91 20 04 00 	vmovups ymm10,YMMWORD PTR [rcx+0x420]
  bf4433:	00 
  bf4434:	c5 7c 10 99 40 04 00 	vmovups ymm11,YMMWORD PTR [rcx+0x440]
  bf443b:	00 
  bf443c:	c5 7c 10 a1 60 04 00 	vmovups ymm12,YMMWORD PTR [rcx+0x460]
  bf4443:	00 
  bf4444:	c5 7c 10 a9 a0 04 00 	vmovups ymm13,YMMWORD PTR [rcx+0x4a0]
  bf444b:	00 
  bf444c:	c5 7c 10 b1 80 04 00 	vmovups ymm14,YMMWORD PTR [rcx+0x480]
  bf4453:	00 
  bf4454:	45 31 d2             	xor    r10d,r10d
  bf4457:	4d 89 c3             	mov    r11,r8
  bf445a:	31 db                	xor    ebx,ebx
  bf445c:	eb 65                	jmp    bf44c3 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x5c3>
  bf445e:	66 90                	xchg   ax,ax
  bf4460:	62 91 44 00 16 f0    	vmovlhps xmm6,xmm23,xmm24
  bf4466:	62 81 34 00 16 fb    	vmovlhps xmm23,xmm25,xmm27
  bf446c:	62 a1 7c 08 29 7c d4 	vmovaps XMMWORD PTR [rsp+r10*8+0x30],xmm23
  bf4473:	03 
  bf4474:	c4 a1 78 29 74 d4 20 	vmovaps XMMWORD PTR [rsp+r10*8+0x20],xmm6
  bf447b:	62 b1 64 00 16 f4    	vmovlhps xmm6,xmm19,xmm20
  bf4481:	62 a1 4c 00 16 dd    	vmovlhps xmm19,xmm22,xmm21
  bf4487:	62 a1 7c 08 29 5c d4 	vmovaps XMMWORD PTR [rsp+r10*8+0x50],xmm19
  bf448e:	05 
  bf448f:	c4 a1 78 29 74 d4 40 	vmovaps XMMWORD PTR [rsp+r10*8+0x40],xmm6
  bf4496:	62 b1 6c 00 16 f0    	vmovlhps xmm6,xmm18,xmm16
  bf449c:	62 51 74 00 16 ff    	vmovlhps xmm15,xmm17,xmm15
  bf44a2:	c4 21 78 29 7c d4 70 	vmovaps XMMWORD PTR [rsp+r10*8+0x70],xmm15
  bf44a9:	c4 a1 78 29 74 d4 60 	vmovaps XMMWORD PTR [rsp+r10*8+0x60],xmm6
  bf44b0:	49 83 c2 40          	add    r10,0x40
  bf44b4:	49 83 c3 20          	add    r11,0x20
  bf44b8:	f6 c3 01             	test   bl,0x1
  bf44bb:	b3 01                	mov    bl,0x1
  bf44bd:	0f 85 8d fa ff ff    	jne    bf3f50 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x50>
  bf44c3:	4d 85 d2             	test   r10,r10
  bf44c6:	74 78                	je     bf4540 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x640>
  bf44c8:	62 c1 ff 08 10 23    	vmovsd xmm20,QWORD PTR [r11]
  bf44ce:	62 c1 ff 08 10 5b 05 	vmovsd xmm19,QWORD PTR [r11+0x28]
  bf44d5:	c4 41 7b 10 7b 50    	vmovsd xmm15,QWORD PTR [r11+0x50]
  bf44db:	62 c1 ff 08 10 4b 0f 	vmovsd xmm17,QWORD PTR [r11+0x78]
  bf44e2:	62 41 ff 08 10 4b 14 	vmovsd xmm25,QWORD PTR [r11+0xa0]
  bf44e9:	62 c1 ff 08 10 73 19 	vmovsd xmm22,QWORD PTR [r11+0xc8]
  bf44f0:	62 c1 ff 08 10 43 1e 	vmovsd xmm16,QWORD PTR [r11+0xf0]
  bf44f7:	62 c1 ff 08 10 53 23 	vmovsd xmm18,QWORD PTR [r11+0x118]
  bf44fe:	62 41 ff 08 10 63 28 	vmovsd xmm28,QWORD PTR [r11+0x140]
  bf4505:	62 41 ff 08 10 53 2d 	vmovsd xmm26,QWORD PTR [r11+0x168]
  bf450c:	62 c1 ff 08 10 7b 32 	vmovsd xmm23,QWORD PTR [r11+0x190]
  bf4513:	62 c1 ff 08 10 6b 37 	vmovsd xmm21,QWORD PTR [r11+0x1b8]
  bf451a:	62 41 ff 08 10 73 3c 	vmovsd xmm30,QWORD PTR [r11+0x1e0]
  bf4521:	62 41 ff 08 10 6b 41 	vmovsd xmm29,QWORD PTR [r11+0x208]
  bf4528:	62 41 ff 08 10 5b 46 	vmovsd xmm27,QWORD PTR [r11+0x230]
  bf452f:	62 41 ff 08 10 43 4b 	vmovsd xmm24,QWORD PTR [r11+0x258]
  bf4536:	e9 a1 00 00 00       	jmp    bf45dc <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x6dc>
  bf453b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  bf4540:	62 c1 7c 28 10 23    	vmovups ymm20,YMMWORD PTR [r11]
  bf4546:	62 c1 7c 28 10 8b 78 	vmovups ymm17,YMMWORD PTR [r11+0x78]
  bf454d:	00 00 00 
  bf4550:	62 c1 7c 28 10 83 f0 	vmovups ymm16,YMMWORD PTR [r11+0xf0]
  bf4557:	00 00 00 
  bf455a:	62 a1 7c 28 10 9c 8f 	vmovups ymm19,YMMWORD PTR [rdi+r9*4+0x28]
  bf4561:	28 00 00 00 
  bf4565:	c4 21 7c 10 7c 8f 50 	vmovups ymm15,YMMWORD PTR [rdi+r9*4+0x50]
  bf456c:	62 21 7c 28 10 4c 8f 	vmovups ymm25,YMMWORD PTR [rdi+r9*4+0xa0]
  bf4573:	05 
  bf4574:	62 a1 7c 28 10 b4 8f 	vmovups ymm22,YMMWORD PTR [rdi+r9*4+0xc8]
  bf457b:	c8 00 00 00 
  bf457f:	62 a1 7c 28 10 94 8f 	vmovups ymm18,YMMWORD PTR [rdi+r9*4+0x118]
  bf4586:	18 01 00 00 
  bf458a:	62 21 7c 28 10 64 8f 	vmovups ymm28,YMMWORD PTR [rdi+r9*4+0x140]
  bf4591:	0a 
  bf4592:	62 21 7c 28 10 94 8f 	vmovups ymm26,YMMWORD PTR [rdi+r9*4+0x168]
  bf4599:	68 01 00 00 
  bf459d:	62 a1 7c 28 10 bc 8f 	vmovups ymm23,YMMWORD PTR [rdi+r9*4+0x190]
  bf45a4:	90 01 00 00 
  bf45a8:	62 a1 7c 28 10 ac 8f 	vmovups ymm21,YMMWORD PTR [rdi+r9*4+0x1b8]
  bf45af:	b8 01 00 00 
  bf45b3:	62 21 7c 28 10 74 8f 	vmovups ymm30,YMMWORD PTR [rdi+r9*4+0x1e0]
  bf45ba:	0f 
  bf45bb:	62 21 7c 28 10 ac 8f 	vmovups ymm29,YMMWORD PTR [rdi+r9*4+0x208]
  bf45c2:	08 02 00 00 
  bf45c6:	62 21 7c 28 10 9c 8f 	vmovups ymm27,YMMWORD PTR [rdi+r9*4+0x230]
  bf45cd:	30 02 00 00 
  bf45d1:	62 21 7c 28 10 84 8f 	vmovups ymm24,YMMWORD PTR [rdi+r9*4+0x258]
  bf45d8:	58 02 00 00 
  bf45dc:	62 91 5c 20 58 f4    	vaddps ymm6,ymm20,ymm28
  bf45e2:	62 01 5c 20 5c fc    	vsubps ymm31,ymm20,ymm28
  bf45e8:	62 91 34 20 58 fe    	vaddps ymm7,ymm25,ymm30
  bf45ee:	62 81 34 20 5c e6    	vsubps ymm20,ymm25,ymm30
  bf45f4:	62 a1 5c 20 c6 e4 b1 	vshufps ymm20,ymm20,ymm20,0xb1
  bf45fb:	62 61 7c 28 28 e0    	vmovaps ymm28,ymm0
  bf4601:	62 02 5d 20 a8 e7    	vfmadd213ps ymm28,ymm20,ymm31
  bf4607:	62 82 7d 28 ac e7    	vfnmadd213ps ymm20,ymm0,ymm31
  bf460d:	62 61 4c 28 58 f7    	vaddps ymm30,ymm6,ymm7
  bf4613:	62 61 4c 28 5c cf    	vsubps ymm25,ymm6,ymm7
  bf4619:	62 91 64 20 58 f2    	vaddps ymm6,ymm19,ymm26
  bf461f:	62 91 64 20 5c fa    	vsubps ymm7,ymm19,ymm26
  bf4625:	62 01 4c 20 58 d5    	vaddps ymm26,ymm22,ymm29
  bf462b:	62 81 4c 20 5c dd    	vsubps ymm19,ymm22,ymm29
  bf4631:	62 a1 64 20 c6 f3 b1 	vshufps ymm22,ymm19,ymm19,0xb1
  bf4638:	62 61 7c 28 28 e8    	vmovaps ymm29,ymm0
  bf463e:	62 62 4d 20 a8 ef    	vfmadd213ps ymm29,ymm22,ymm7
  bf4644:	62 e2 7d 28 ac f7    	vfnmadd213ps ymm22,ymm0,ymm7
  bf464a:	62 81 4c 28 58 da    	vaddps ymm19,ymm6,ymm26
  bf4650:	62 91 4c 28 5c f2    	vsubps ymm6,ymm6,ymm26
  bf4656:	62 b1 04 28 58 ff    	vaddps ymm7,ymm15,ymm23
  bf465c:	62 a1 04 28 5c ff    	vsubps ymm23,ymm15,ymm23
  bf4662:	62 01 7c 20 58 d3    	vaddps ymm26,ymm16,ymm27
  bf4668:	62 11 7c 20 5c fb    	vsubps ymm15,ymm16,ymm27
  bf466e:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  bf4674:	62 e1 7c 28 28 c0    	vmovaps ymm16,ymm0
  bf467a:	62 a2 05 28 a8 c7    	vfmadd213ps ymm16,ymm15,ymm23
  bf4680:	62 32 7d 28 ac ff    	vfnmadd213ps ymm15,ymm0,ymm23
  bf4686:	62 81 44 28 58 fa    	vaddps ymm23,ymm7,ymm26
  bf468c:	62 91 44 28 5c fa    	vsubps ymm7,ymm7,ymm26
  bf4692:	62 21 74 20 58 d5    	vaddps ymm26,ymm17,ymm21
  bf4698:	62 a1 74 20 5c cd    	vsubps ymm17,ymm17,ymm21
  bf469e:	62 81 6c 20 58 e8    	vaddps ymm21,ymm18,ymm24
  bf46a4:	62 81 6c 20 5c d0    	vsubps ymm18,ymm18,ymm24
  bf46aa:	62 a1 6c 20 c6 d2 b1 	vshufps ymm18,ymm18,ymm18,0xb1
  bf46b1:	62 61 7c 28 28 c0    	vmovaps ymm24,ymm0
  bf46b7:	62 22 6d 20 a8 c1    	vfmadd213ps ymm24,ymm18,ymm17
  bf46bd:	62 a2 7d 28 ac d1    	vfnmadd213ps ymm18,ymm0,ymm17
  bf46c3:	62 21 2c 20 58 dd    	vaddps ymm27,ymm26,ymm21
  bf46c9:	62 a1 2c 20 5c cd    	vsubps ymm17,ymm26,ymm21
  bf46cf:	62 81 14 20 c6 ed b1 	vshufps ymm21,ymm29,ymm29,0xb1
  bf46d6:	62 41 14 20 59 e9    	vmulps ymm29,ymm29,ymm9
  bf46dc:	62 22 2d 28 b8 ed    	vfmadd231ps ymm29,ymm10,ymm21
  bf46e2:	62 e1 4c 28 c6 ee b1 	vshufps ymm21,ymm6,ymm6,0xb1
  bf46e9:	c5 cc 59 f4          	vmulps ymm6,ymm6,ymm4
  bf46ed:	62 b2 6d 28 b8 f5    	vfmadd231ps ymm6,ymm2,ymm21
  bf46f3:	62 21 4c 20 c6 d6 b1 	vshufps ymm26,ymm22,ymm22,0xb1
  bf46fa:	62 c1 4c 20 59 eb    	vmulps ymm21,ymm22,ymm11
  bf4700:	62 82 1d 28 b8 ea    	vfmadd231ps ymm21,ymm12,ymm26
  bf4706:	62 81 3c 20 c6 f0 b1 	vshufps ymm22,ymm24,ymm24,0xb1
  bf470d:	62 41 3c 20 59 c3    	vmulps ymm24,ymm24,ymm11
  bf4713:	62 22 1d 28 b8 c6    	vfmadd231ps ymm24,ymm12,ymm22
  bf4719:	62 a1 74 20 c6 f1 b1 	vshufps ymm22,ymm17,ymm17,0xb1
  bf4720:	62 61 74 20 59 fb    	vmulps ymm31,ymm17,ymm3
  bf4726:	62 22 6d 28 b8 fe    	vfmadd231ps ymm31,ymm2,ymm22
  bf472c:	62 a1 6c 20 c6 ca b1 	vshufps ymm17,ymm18,ymm18,0xb1
  bf4733:	62 51 6c 20 59 c6    	vmulps ymm8,ymm18,ymm14
  bf4739:	62 32 15 28 b8 c1    	vfmadd231ps ymm8,ymm13,ymm17
  bf473f:	62 a1 0c 20 58 f7    	vaddps ymm22,ymm30,ymm23
  bf4745:	62 21 0c 20 5c d7    	vsubps ymm26,ymm30,ymm23
  bf474b:	62 a1 7c 20 c6 c8 b1 	vshufps ymm17,ymm16,ymm16,0xb1
  bf4752:	62 61 7c 28 28 f4    	vmovaps ymm30,ymm4
  bf4758:	62 02 7d 20 a8 f4    	vfmadd213ps ymm30,ymm16,ymm28
  bf475e:	62 62 75 20 b8 f2    	vfmadd231ps ymm30,ymm17,ymm2
  bf4764:	62 82 5d 28 ac c4    	vfnmadd213ps ymm16,ymm4,ymm28
  bf476a:	62 a2 6d 28 bc c1    	vfnmadd231ps ymm16,ymm2,ymm17
  bf4770:	62 e1 44 28 c6 cf b1 	vshufps ymm17,ymm7,ymm7,0xb1
  bf4777:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  bf477b:	62 92 75 20 a8 f9    	vfmadd213ps ymm7,ymm17,ymm25
  bf4781:	62 82 7d 28 ac c9    	vfnmadd213ps ymm17,ymm0,ymm25
  bf4787:	62 c1 04 28 c6 d7 b1 	vshufps ymm18,ymm15,ymm15,0xb1
  bf478e:	c5 fc 28 cc          	vmovaps ymm1,ymm4
  bf4792:	62 b2 05 28 ac cc    	vfnmadd213ps ymm1,ymm15,ymm20
  bf4798:	62 f2 6d 20 b8 ca    	vfmadd231ps ymm1,ymm18,ymm2
  bf479e:	62 32 5d 28 a8 fc    	vfmadd213ps ymm15,ymm4,ymm20
  bf47a4:	62 32 6d 28 bc fa    	vfnmadd231ps ymm15,ymm2,ymm18
  bf47aa:	62 81 64 20 58 e3    	vaddps ymm20,ymm19,ymm27
  bf47b0:	62 81 64 20 5c d3    	vsubps ymm18,ymm19,ymm27
  bf47b6:	62 a1 6c 20 c6 d2 b1 	vshufps ymm18,ymm18,ymm18,0xb1
  bf47bd:	62 e1 7c 28 28 f8    	vmovaps ymm23,ymm0
  bf47c3:	62 82 6d 20 a8 fa    	vfmadd213ps ymm23,ymm18,ymm26
  bf47c9:	62 82 7d 28 ac d2    	vfnmadd213ps ymm18,ymm0,ymm26
  bf47cf:	62 21 4c 20 58 d4    	vaddps ymm26,ymm22,ymm20
  bf47d5:	62 a1 4c 20 5c dc    	vsubps ymm19,ymm22,ymm20
  bf47db:	62 81 14 20 58 e0    	vaddps ymm20,ymm29,ymm24
  bf47e1:	62 81 14 20 5c f0    	vsubps ymm22,ymm29,ymm24
  bf47e7:	62 a1 4c 20 c6 f6 b1 	vshufps ymm22,ymm22,ymm22,0xb1
  bf47ee:	62 61 7c 28 28 c0    	vmovaps ymm24,ymm0
  bf47f4:	62 22 4d 20 a8 c0    	vfmadd213ps ymm24,ymm22,ymm16
  bf47fa:	62 a2 7d 28 bc c6    	vfnmadd231ps ymm16,ymm0,ymm22
  bf4800:	62 21 0c 20 58 e4    	vaddps ymm28,ymm30,ymm20
  bf4806:	62 a1 0c 20 5c e4    	vsubps ymm20,ymm30,ymm20
  bf480c:	62 81 4c 28 58 f7    	vaddps ymm22,ymm6,ymm31
  bf4812:	62 91 4c 28 5c f7    	vsubps ymm6,ymm6,ymm31
  bf4818:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  bf481d:	62 61 7c 28 28 c8    	vmovaps ymm25,ymm0
  bf4823:	62 22 4d 28 a8 c9    	vfmadd213ps ymm25,ymm6,ymm17
  bf4829:	62 e2 7d 28 bc ce    	vfnmadd231ps ymm17,ymm0,ymm6
  bf482f:	62 21 44 28 58 ee    	vaddps ymm29,ymm7,ymm22
  bf4835:	62 a1 44 28 5c f6    	vsubps ymm22,ymm7,ymm22
  bf483b:	62 d1 54 20 58 f0    	vaddps ymm6,ymm21,ymm8
  bf4841:	62 d1 54 20 5c f8    	vsubps ymm7,ymm21,ymm8
  bf4847:	c5 c4 c6 ff b1       	vshufps ymm7,ymm7,ymm7,0xb1
  bf484c:	62 61 7c 28 28 d8    	vmovaps ymm27,ymm0
  bf4852:	62 42 45 28 a8 df    	vfmadd213ps ymm27,ymm7,ymm15
  bf4858:	c4 62 7d bc ff       	vfnmadd231ps ymm15,ymm0,ymm7
  bf485d:	62 61 74 28 58 f6    	vaddps ymm30,ymm1,ymm6
  bf4863:	62 e1 74 28 5c ee    	vsubps ymm21,ymm1,ymm6
  bf4869:	62 01 ad 20 14 fc    	vunpcklpd ymm31,ymm26,ymm28
  bf486f:	62 91 95 20 14 f6    	vunpcklpd ymm6,ymm29,ymm30
  bf4875:	62 f3 05 20 18 ce 01 	vinsertf32x4 ymm1,ymm31,xmm6,0x1
  bf487c:	c4 a1 7c 29 0c d4    	vmovaps YMMWORD PTR [rsp+r10*8],ymm1
  bf4882:	49 83 fa 40          	cmp    r10,0x40
  bf4886:	0f 84 d4 fb ff ff    	je     bf4460 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x560>
  bf488c:	62 01 ad 20 15 d4    	vunpckhpd ymm26,ymm26,ymm28
  bf4892:	62 01 95 20 15 e6    	vunpckhpd ymm28,ymm29,ymm30
  bf4898:	62 03 ad 20 23 ec 03 	vshuff64x2 ymm29,ymm26,ymm28,0x3
  bf489f:	62 f3 85 20 23 f6 03 	vshuff64x2 ymm6,ymm31,ymm6,0x3
  bf48a6:	62 03 2d 20 18 d4 01 	vinsertf32x4 ymm26,ymm26,xmm28,0x1
  bf48ad:	62 21 7c 28 29 54 d4 	vmovaps YMMWORD PTR [rsp+r10*8+0x80],ymm26
  bf48b4:	04 
  bf48b5:	c4 a1 7d 29 b4 d4 00 	vmovapd YMMWORD PTR [rsp+r10*8+0x100],ymm6
  bf48bc:	01 00 00 
  bf48bf:	62 21 fd 28 29 6c d4 	vmovapd YMMWORD PTR [rsp+r10*8+0x180],ymm29
  bf48c6:	0c 
  bf48c7:	62 91 c5 20 14 f0    	vunpcklpd ymm6,ymm23,ymm24
  bf48cd:	62 01 b5 20 14 d3    	vunpcklpd ymm26,ymm25,ymm27
  bf48d3:	62 03 4d 28 18 e2 01 	vinsertf32x4 ymm28,ymm6,xmm26,0x1
  bf48da:	62 21 7c 28 29 64 d4 	vmovaps YMMWORD PTR [rsp+r10*8+0x20],ymm28
  bf48e1:	01 
  bf48e2:	62 81 c5 20 15 f8    	vunpckhpd ymm23,ymm23,ymm24
  bf48e8:	62 01 b5 20 15 c3    	vunpckhpd ymm24,ymm25,ymm27
  bf48ee:	62 03 c5 20 23 c8 03 	vshuff64x2 ymm25,ymm23,ymm24,0x3
  bf48f5:	62 93 cd 28 23 f2 03 	vshuff64x2 ymm6,ymm6,ymm26,0x3
  bf48fc:	62 83 45 20 18 f8 01 	vinsertf32x4 ymm23,ymm23,xmm24,0x1
  bf4903:	62 a1 7c 28 29 7c d4 	vmovaps YMMWORD PTR [rsp+r10*8+0xa0],ymm23
  bf490a:	05 
  bf490b:	c4 a1 7d 29 b4 d4 20 	vmovapd YMMWORD PTR [rsp+r10*8+0x120],ymm6
  bf4912:	01 00 00 
  bf4915:	62 21 fd 28 29 4c d4 	vmovapd YMMWORD PTR [rsp+r10*8+0x1a0],ymm25
  bf491c:	0d 
  bf491d:	62 b1 e5 20 14 f4    	vunpcklpd ymm6,ymm19,ymm20
  bf4923:	62 a1 cd 20 14 fd    	vunpcklpd ymm23,ymm22,ymm21
  bf4929:	62 23 4d 28 18 c7 01 	vinsertf32x4 ymm24,ymm6,xmm23,0x1
  bf4930:	62 21 7c 28 29 44 d4 	vmovaps YMMWORD PTR [rsp+r10*8+0x40],ymm24
  bf4937:	02 
  bf4938:	62 a1 e5 20 15 dc    	vunpckhpd ymm19,ymm19,ymm20
  bf493e:	62 a1 cd 20 15 e5    	vunpckhpd ymm20,ymm22,ymm21
  bf4944:	62 a3 e5 20 23 ec 03 	vshuff64x2 ymm21,ymm19,ymm20,0x3
  bf494b:	62 b3 cd 28 23 f7 03 	vshuff64x2 ymm6,ymm6,ymm23,0x3
  bf4952:	62 a3 65 20 18 dc 01 	vinsertf32x4 ymm19,ymm19,xmm20,0x1
  bf4959:	62 a1 7c 28 29 5c d4 	vmovaps YMMWORD PTR [rsp+r10*8+0xc0],ymm19
  bf4960:	06 
  bf4961:	c4 a1 7d 29 b4 d4 40 	vmovapd YMMWORD PTR [rsp+r10*8+0x140],ymm6
  bf4968:	01 00 00 
  bf496b:	62 a1 fd 28 29 6c d4 	vmovapd YMMWORD PTR [rsp+r10*8+0x1c0],ymm21
  bf4972:	0e 
  bf4973:	62 b1 ed 20 14 f0    	vunpcklpd ymm6,ymm18,ymm16
  bf4979:	62 c1 f5 20 14 df    	vunpcklpd ymm19,ymm17,ymm15
  bf497f:	62 a3 4d 28 18 e3 01 	vinsertf32x4 ymm20,ymm6,xmm19,0x1
  bf4986:	62 a1 7c 28 29 64 d4 	vmovaps YMMWORD PTR [rsp+r10*8+0x60],ymm20
  bf498d:	03 
  bf498e:	62 a1 ed 20 15 c0    	vunpckhpd ymm16,ymm18,ymm16
  bf4994:	62 51 f5 20 15 ff    	vunpckhpd ymm15,ymm17,ymm15
  bf499a:	62 c3 fd 20 23 cf 03 	vshuff64x2 ymm17,ymm16,ymm15,0x3
  bf49a1:	62 b3 cd 28 23 f3 03 	vshuff64x2 ymm6,ymm6,ymm19,0x3
  bf49a8:	62 53 7d 20 18 ff 01 	vinsertf32x4 ymm15,ymm16,xmm15,0x1
  bf49af:	c4 21 7c 29 bc d4 e0 	vmovaps YMMWORD PTR [rsp+r10*8+0xe0],ymm15
  bf49b6:	00 00 00 
  bf49b9:	c4 a1 7d 29 b4 d4 60 	vmovapd YMMWORD PTR [rsp+r10*8+0x160],ymm6
  bf49c0:	01 00 00 
  bf49c3:	62 a1 fd 28 29 4c d4 	vmovapd YMMWORD PTR [rsp+r10*8+0x1e0],ymm17
  bf49ca:	0f 
  bf49cb:	e9 e0 fa ff ff       	jmp    bf44b0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x5b0>
  bf49d0:	48 8d 65 f8          	lea    rsp,[rbp-0x8]
  bf49d4:	5b                   	pop    rbx
  bf49d5:	5d                   	pop    rbp
  bf49d6:	c5 f8 77             	vzeroupper
  bf49d9:	c3                   	ret
  bf49da:	cc                   	int3
  bf49db:	cc                   	int3
  bf49dc:	cc                   	int3
  bf49dd:	cc                   	int3
  bf49de:	cc                   	int3
  bf49df:	cc                   	int3
  bf49e0:	cc                   	int3
  bf49e1:	cc                   	int3
  bf49e2:	cc                   	int3
  bf49e3:	cc                   	int3
  bf49e4:	cc                   	int3
  bf49e5:	cc                   	int3
  bf49e6:	cc                   	int3
  bf49e7:	cc                   	int3
  bf49e8:	cc                   	int3
  bf49e9:	cc                   	int3
  bf49ea:	cc                   	int3
  bf49eb:	cc                   	int3
  bf49ec:	cc                   	int3
  bf49ed:	cc                   	int3
  bf49ee:	cc                   	int3
  bf49ef:	cc                   	int3
  bf49f0:	cc                   	int3
  bf49f1:	cc                   	int3
  bf49f2:	cc                   	int3
  bf49f3:	cc                   	int3
  bf49f4:	cc                   	int3
  bf49f5:	cc                   	int3
  bf49f6:	cc                   	int3
  bf49f7:	cc                   	int3
  bf49f8:	cc                   	int3
  bf49f9:	cc                   	int3
  bf49fa:	cc                   	int3
  bf49fb:	cc                   	int3
  bf49fc:	cc                   	int3
  bf49fd:	cc                   	int3
  bf49fe:	cc                   	int3
  bf49ff:	cc                   	int3
