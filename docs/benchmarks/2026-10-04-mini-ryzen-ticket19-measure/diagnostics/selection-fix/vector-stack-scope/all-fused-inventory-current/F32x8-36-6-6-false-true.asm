
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006cd000 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6cd000:	55                   	push   rbp
  6cd001:	48 89 e5             	mov    rbp,rsp
  6cd004:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6cd008:	48 81 ec c0 01 00 00 	sub    rsp,0x1c0
  6cd00f:	48 c1 e2 05          	shl    rdx,0x5
  6cd013:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  6cd017:	31 d2                	xor    edx,edx
  6cd019:	4c 8d 84 24 40 01 00 	lea    r8,[rsp+0x140]
  6cd020:	00 
  6cd021:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  6cd026:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  6cd02d:	00 00 00 
  6cd030:	c6 84 24 40 01 00 00 	mov    BYTE PTR [rsp+0x140],0x0
  6cd037:	00 
  6cd038:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  6cd03d:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  6cd042:	c5 f8 10 74 17 20    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x20]
  6cd048:	c5 fc 10 4c 17 30    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x30]
  6cd04e:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  6cd054:	c5 f8 10 6c 17 50    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x50]
  6cd05a:	c5 fc 10 7c 17 60    	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x60]
  6cd060:	c5 78 10 84 17 80 00 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x80]
  6cd067:	00 00 
  6cd069:	c5 7c 10 94 17 90 00 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x90]
  6cd070:	00 00 
  6cd072:	c5 78 10 a4 17 b0 00 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0xb0]
  6cd079:	00 00 
  6cd07b:	c5 7c 10 ac 17 c0 00 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0xc0]
  6cd082:	00 00 
  6cd084:	c5 78 10 bc 17 e0 00 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0xe0]
  6cd08b:	00 00 
  6cd08d:	c5 fc 10 9c 17 f0 00 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0xf0]
  6cd094:	00 00 
  6cd096:	c5 78 10 b4 17 10 01 	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x110]
  6cd09d:	00 00 
  6cd09f:	c5 fc c6 d6 88       	vshufps ymm2,ymm0,ymm6,0x88
  6cd0a4:	c4 63 fd 01 da d8    	vpermpd ymm11,ymm2,0xd8
  6cd0aa:	c4 c1 44 c6 d0 88    	vshufps ymm2,ymm7,ymm8,0x88
  6cd0b0:	c4 e3 fd 01 ca d8    	vpermpd ymm1,ymm2,0xd8
  6cd0b6:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  6cd0bc:	c4 c1 14 c6 e7 88    	vshufps ymm4,ymm13,ymm15,0x88
  6cd0c2:	c4 e3 fd 01 cc d8    	vpermpd ymm1,ymm4,0xd8
  6cd0c8:	c5 fc 29 8c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm1
  6cd0cf:	00 00 
  6cd0d1:	c4 41 2c c6 cc 88    	vshufps ymm9,ymm10,ymm12,0x88
  6cd0d7:	c4 c3 fd 01 c9 d8    	vpermpd ymm1,ymm9,0xd8
  6cd0dd:	c5 fc 29 8c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm1
  6cd0e4:	00 00 
  6cd0e6:	c5 fc c6 ce dd       	vshufps ymm1,ymm0,ymm6,0xdd
  6cd0eb:	c4 c1 64 c6 f6 88    	vshufps ymm6,ymm3,ymm14,0x88
  6cd0f1:	c4 41 44 c6 c0 dd    	vshufps ymm8,ymm7,ymm8,0xdd
  6cd0f7:	c4 e3 fd 01 d6 d8    	vpermpd ymm2,ymm6,0xd8
  6cd0fd:	c5 fc 29 94 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm2
  6cd104:	00 00 
  6cd106:	c5 fc 28 74 24 60    	vmovaps ymm6,YMMWORD PTR [rsp+0x60]
  6cd10c:	c5 cc c6 fd 88       	vshufps ymm7,ymm6,ymm5,0x88
  6cd111:	c4 e3 fd 01 c7 d8    	vpermpd ymm0,ymm7,0xd8
  6cd117:	c5 fc 29 84 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm0
  6cd11e:	00 00 
  6cd120:	c4 63 fd 01 c9 d8    	vpermpd ymm9,ymm1,0xd8
  6cd126:	c4 c3 fd 01 e0 d8    	vpermpd ymm4,ymm8,0xd8
  6cd12c:	c4 41 14 c6 c7 dd    	vshufps ymm8,ymm13,ymm15,0xdd
  6cd132:	c4 43 fd 01 f8 d8    	vpermpd ymm15,ymm8,0xd8
  6cd138:	c4 41 2c c6 c4 dd    	vshufps ymm8,ymm10,ymm12,0xdd
  6cd13e:	c4 43 fd 01 e0 d8    	vpermpd ymm12,ymm8,0xd8
  6cd144:	c4 c1 64 c6 ce dd    	vshufps ymm1,ymm3,ymm14,0xdd
  6cd14a:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  6cd150:	c5 cc c6 dd dd       	vshufps ymm3,ymm6,ymm5,0xdd
  6cd155:	c4 63 fd 01 f3 d8    	vpermpd ymm14,ymm3,0xd8
  6cd15b:	c5 fc 28 7c 24 40    	vmovaps ymm7,YMMWORD PTR [rsp+0x40]
  6cd161:	c5 fc 28 b4 24 80 00 	vmovaps ymm6,YMMWORD PTR [rsp+0x80]
  6cd168:	00 00 
  6cd16a:	c5 44 58 d6          	vaddps ymm10,ymm7,ymm6
  6cd16e:	c4 c1 2c 58 eb       	vaddps ymm5,ymm10,ymm11
  6cd173:	c5 fc 29 ac 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm5
  6cd17a:	00 00 
  6cd17c:	c5 6c 58 c0          	vaddps ymm8,ymm2,ymm0
  6cd180:	c5 fc 28 94 24 a0 00 	vmovaps ymm2,YMMWORD PTR [rsp+0xa0]
  6cd187:	00 00 
  6cd189:	c5 bc 58 c2          	vaddps ymm0,ymm8,ymm2
  6cd18d:	c5 fc 29 84 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm0
  6cd194:	00 00 
  6cd196:	c4 e2 7d 18 1d c1 82 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9a82c1]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6cd19d:	9a ff 
  6cd19f:	c4 42 65 ac d3       	vfnmadd213ps ymm10,ymm3,ymm11
  6cd1a4:	c5 04 58 ec          	vaddps ymm13,ymm15,ymm4
  6cd1a8:	c4 41 5c 5c df       	vsubps ymm11,ymm4,ymm15
  6cd1ad:	c4 c1 14 58 e1       	vaddps ymm4,ymm13,ymm9
  6cd1b2:	c4 62 65 ac c2       	vfnmadd213ps ymm8,ymm3,ymm2
  6cd1b7:	c5 0c 58 f9          	vaddps ymm15,ymm14,ymm1
  6cd1bb:	c4 c1 74 5c ce       	vsubps ymm1,ymm1,ymm14
  6cd1c0:	c5 d4 58 d0          	vaddps ymm2,ymm5,ymm0
  6cd1c4:	c5 fc 29 54 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm2
  6cd1ca:	c4 42 65 ac e9       	vfnmadd213ps ymm13,ymm3,ymm9
  6cd1cf:	c5 fc 28 eb          	vmovaps ymm5,ymm3
  6cd1d3:	c4 41 04 58 cc       	vaddps ymm9,ymm15,ymm12
  6cd1d8:	c5 44 5c f6          	vsubps ymm14,ymm7,ymm6
  6cd1dc:	c5 b4 58 d4          	vaddps ymm2,ymm9,ymm4
  6cd1e0:	c5 fc 29 54 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm2
  6cd1e6:	c4 e2 7d 18 1d e5 80 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9a80e5]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6cd1ed:	9a ff 
  6cd1ef:	c5 a4 59 c3          	vmulps ymm0,ymm11,ymm3
  6cd1f3:	c5 f4 59 cb          	vmulps ymm1,ymm1,ymm3
  6cd1f7:	c4 42 55 ac fc       	vfnmadd213ps ymm15,ymm5,ymm12
  6cd1fc:	c5 2c 58 e0          	vaddps ymm12,ymm10,ymm0
  6cd200:	c5 fc 28 94 24 00 01 	vmovaps ymm2,YMMWORD PTR [rsp+0x100]
  6cd207:	00 00 
  6cd209:	c5 ec 5c b4 24 20 01 	vsubps ymm6,ymm2,YMMWORD PTR [rsp+0x120]
  6cd210:	00 00 
  6cd212:	c5 bc 58 f9          	vaddps ymm7,ymm8,ymm1
  6cd216:	c5 0c 59 f3          	vmulps ymm14,ymm14,ymm3
  6cd21a:	c5 2c 5c d0          	vsubps ymm10,ymm10,ymm0
  6cd21e:	c4 c1 14 5c d6       	vsubps ymm2,ymm13,ymm14
  6cd223:	c5 cc 59 f3          	vmulps ymm6,ymm6,ymm3
  6cd227:	c5 3c 5c c1          	vsubps ymm8,ymm8,ymm1
  6cd22b:	c5 9c 5c df          	vsubps ymm3,ymm12,ymm7
  6cd22f:	c4 41 0c 58 f5       	vaddps ymm14,ymm14,ymm13
  6cd234:	c5 84 5c c6          	vsubps ymm0,ymm15,ymm6
  6cd238:	c5 84 58 ce          	vaddps ymm1,ymm15,ymm6
  6cd23c:	c5 6c 5c e8          	vsubps ymm13,ymm2,ymm0
  6cd240:	c5 fc 28 ac 24 c0 00 	vmovaps ymm5,YMMWORD PTR [rsp+0xc0]
  6cd247:	00 00 
  6cd249:	c5 d4 5c b4 24 e0 00 	vsubps ymm6,ymm5,YMMWORD PTR [rsp+0xe0]
  6cd250:	00 00 
  6cd252:	c4 c1 2c 58 e8       	vaddps ymm5,ymm10,ymm8
  6cd257:	c4 41 5c 5c f9       	vsubps ymm15,ymm4,ymm9
  6cd25c:	c5 8c 58 e1          	vaddps ymm4,ymm14,ymm1
  6cd260:	c5 9c 58 ff          	vaddps ymm7,ymm12,ymm7
  6cd264:	c5 ec 58 c0          	vaddps ymm0,ymm2,ymm0
  6cd268:	c4 c1 2c 5c d0       	vsubps ymm2,ymm10,ymm8
  6cd26d:	c5 0c 5c d9          	vsubps ymm11,ymm14,ymm1
  6cd271:	c5 7c 28 44 24 60    	vmovaps ymm8,YMMWORD PTR [rsp+0x60]
  6cd277:	c4 e3 3d 18 cf 01    	vinsertf128 ymm1,ymm8,xmm7,0x1
  6cd27d:	c4 e3 3d 06 ff 31    	vperm2f128 ymm7,ymm8,ymm7,0x31
  6cd283:	c4 63 65 18 ca 01    	vinsertf128 ymm9,ymm3,xmm2,0x1
  6cd289:	c4 e3 65 06 d2 31    	vperm2f128 ymm2,ymm3,ymm2,0x31
  6cd28f:	c5 44 14 c2          	vunpcklps ymm8,ymm7,ymm2
  6cd293:	c5 f8 28 fd          	vmovaps xmm7,xmm5
  6cd297:	c5 78 28 d6          	vmovaps xmm10,xmm6
  6cd29b:	c4 c1 74 14 d9       	vunpcklps ymm3,ymm1,ymm9
  6cd2a0:	c4 41 44 14 e2       	vunpcklps ymm12,ymm7,ymm10
  6cd2a5:	c4 c1 65 14 d4       	vunpcklpd ymm2,ymm3,ymm12
  6cd2aa:	c5 fc 29 54 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm2
  6cd2b0:	c4 c1 74 15 c9       	vunpckhps ymm1,ymm1,ymm9
  6cd2b5:	c4 c1 65 15 dc       	vunpckhpd ymm3,ymm3,ymm12
  6cd2ba:	c4 c1 44 15 fa       	vunpckhps ymm7,ymm7,ymm10
  6cd2bf:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  6cd2c5:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  6cd2cb:	c5 75 14 d7          	vunpcklpd ymm10,ymm1,ymm7
  6cd2cf:	c5 54 14 ce          	vunpcklps ymm9,ymm5,ymm6
  6cd2d3:	c5 fc 28 54 24 40    	vmovaps ymm2,YMMWORD PTR [rsp+0x40]
  6cd2d9:	c4 63 6d 18 e0 01    	vinsertf128 ymm12,ymm2,xmm0,0x1
  6cd2df:	c4 e3 6d 06 c0 31    	vperm2f128 ymm0,ymm2,ymm0,0x31
  6cd2e5:	c5 f5 15 ef          	vunpckhpd ymm5,ymm1,ymm7
  6cd2e9:	c4 c3 15 18 fb 01    	vinsertf128 ymm7,ymm13,xmm11,0x1
  6cd2ef:	c4 c3 15 06 cb 31    	vperm2f128 ymm1,ymm13,ymm11,0x31
  6cd2f5:	c5 fc 14 f1          	vunpcklps ymm6,ymm0,ymm1
  6cd2f9:	c4 41 3d 14 d9       	vunpcklpd ymm11,ymm8,ymm9
  6cd2fe:	c5 f8 28 c4          	vmovaps xmm0,xmm4
  6cd302:	c4 41 78 28 ef       	vmovaps xmm13,xmm15
  6cd307:	c5 1c 14 f7          	vunpcklps ymm14,ymm12,ymm7
  6cd30b:	c4 41 3d 15 c1       	vunpckhpd ymm8,ymm8,ymm9
  6cd310:	c4 41 7c 14 cd       	vunpcklps ymm9,ymm0,ymm13
  6cd315:	c4 c1 0d 14 d1       	vunpcklpd ymm2,ymm14,ymm9
  6cd31a:	c5 9c 15 ff          	vunpckhps ymm7,ymm12,ymm7
  6cd31e:	c4 41 0d 15 c9       	vunpckhpd ymm9,ymm14,ymm9
  6cd323:	c4 c1 7c 15 c5       	vunpckhps ymm0,ymm0,ymm13
  6cd328:	c5 45 14 f0          	vunpcklpd ymm14,ymm7,ymm0
  6cd32c:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  6cd332:	c5 45 15 e8          	vunpckhpd ymm13,ymm7,ymm0
  6cd336:	c4 63 7d 19 f8 01    	vextractf128 xmm0,ymm15,0x1
  6cd33c:	c5 5c 14 e0          	vunpcklps ymm12,ymm4,ymm0
  6cd340:	c5 fc 10 a1 80 00 00 	vmovups ymm4,YMMWORD PTR [rcx+0x80]
  6cd347:	00 
  6cd348:	c4 c1 4d 14 cc       	vunpcklpd ymm1,ymm6,ymm12
  6cd34d:	c5 fc 10 81 a0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xa0]
  6cd354:	00 
  6cd355:	c5 ac 59 fc          	vmulps ymm7,ymm10,ymm4
  6cd359:	c5 0c 59 fc          	vmulps ymm15,ymm14,ymm4
  6cd35d:	c4 e2 0d bc f8       	vfnmadd231ps ymm7,ymm14,ymm0
  6cd362:	c5 fc 10 a1 00 01 00 	vmovups ymm4,YMMWORD PTR [rcx+0x100]
  6cd369:	00 
  6cd36a:	c4 62 2d b8 f8       	vfmadd231ps ymm15,ymm10,ymm0
  6cd36f:	c5 7c 10 91 20 01 00 	vmovups ymm10,YMMWORD PTR [rcx+0x120]
  6cd376:	00 
  6cd377:	c5 24 59 f4          	vmulps ymm14,ymm11,ymm4
  6cd37b:	c4 42 75 bc f2       	vfnmadd231ps ymm14,ymm1,ymm10
  6cd380:	c5 dc 59 c1          	vmulps ymm0,ymm4,ymm1
  6cd384:	c5 fc 10 89 c0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xc0]
  6cd38b:	00 
  6cd38c:	c4 c2 25 b8 c2       	vfmadd231ps ymm0,ymm11,ymm10
  6cd391:	c5 fc 10 a1 e0 00 00 	vmovups ymm4,YMMWORD PTR [rcx+0xe0]
  6cd398:	00 
  6cd399:	c5 74 59 dd          	vmulps ymm11,ymm1,ymm5
  6cd39d:	c5 14 59 d1          	vmulps ymm10,ymm13,ymm1
  6cd3a1:	c4 62 15 bc dc       	vfnmadd231ps ymm11,ymm13,ymm4
  6cd3a6:	c4 62 55 b8 d4       	vfmadd231ps ymm10,ymm5,ymm4
  6cd3ab:	c5 fc 10 89 40 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x140]
  6cd3b2:	00 
  6cd3b3:	c5 fc 10 a1 60 01 00 	vmovups ymm4,YMMWORD PTR [rcx+0x160]
  6cd3ba:	00 
  6cd3bb:	c4 c1 4d 15 f4       	vunpckhpd ymm6,ymm6,ymm12
  6cd3c0:	c5 bc 59 e9          	vmulps ymm5,ymm8,ymm1
  6cd3c4:	c4 e2 4d bc ec       	vfnmadd231ps ymm5,ymm6,ymm4
  6cd3c9:	c5 f4 59 ce          	vmulps ymm1,ymm1,ymm6
  6cd3cd:	c5 fc 10 71 40       	vmovups ymm6,YMMWORD PTR [rcx+0x40]
  6cd3d2:	c4 e2 3d b8 cc       	vfmadd231ps ymm1,ymm8,ymm4
  6cd3d7:	c5 fc 10 61 60       	vmovups ymm4,YMMWORD PTR [rcx+0x60]
  6cd3dc:	c5 4c 59 eb          	vmulps ymm13,ymm6,ymm3
  6cd3e0:	c4 62 35 bc ec       	vfnmadd231ps ymm13,ymm9,ymm4
  6cd3e5:	c5 34 59 c6          	vmulps ymm8,ymm9,ymm6
  6cd3e9:	c5 0c 58 e7          	vaddps ymm12,ymm14,ymm7
  6cd3ed:	c4 62 65 b8 c4       	vfmadd231ps ymm8,ymm3,ymm4
  6cd3f2:	c5 fc 28 5c 24 60    	vmovaps ymm3,YMMWORD PTR [rsp+0x60]
  6cd3f8:	c5 9c 58 e3          	vaddps ymm4,ymm12,ymm3
  6cd3fc:	c5 fc 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm4
  6cd402:	c5 84 58 f0          	vaddps ymm6,ymm15,ymm0
  6cd406:	c5 84 5c e0          	vsubps ymm4,ymm15,ymm0
  6cd40a:	c5 94 58 c5          	vaddps ymm0,ymm13,ymm5
  6cd40e:	c4 62 7d 18 0d 49 80 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff9a8049]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6cd415:	9a ff 
  6cd417:	c4 62 35 ac e3       	vfnmadd213ps ymm12,ymm9,ymm3
  6cd41c:	c5 3c 58 f9          	vaddps ymm15,ymm8,ymm1
  6cd420:	c4 c1 74 5c c8       	vsubps ymm1,ymm1,ymm8
  6cd425:	c5 24 58 c0          	vaddps ymm8,ymm11,ymm0
  6cd429:	c4 62 35 bc d8       	vfnmadd231ps ymm11,ymm9,ymm0
  6cd42e:	c5 7c 29 cb          	vmovaps ymm3,ymm9
  6cd432:	c5 4c 58 ca          	vaddps ymm9,ymm6,ymm2
  6cd436:	c4 e2 65 ac f2       	vfnmadd213ps ymm6,ymm3,ymm2
  6cd43b:	c4 c1 44 5c d6       	vsubps ymm2,ymm7,ymm14
  6cd440:	c4 c1 2c 58 c7       	vaddps ymm0,ymm10,ymm15
  6cd445:	c4 62 7d 18 35 86 7e 	vbroadcastss ymm14,DWORD PTR [rip+0xffffffffff9a7e86]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6cd44c:	9a ff 
  6cd44e:	c5 8c 59 e4          	vmulps ymm4,ymm14,ymm4
  6cd452:	c5 8c 59 c9          	vmulps ymm1,ymm14,ymm1
  6cd456:	c4 42 65 bc d7       	vfnmadd231ps ymm10,ymm3,ymm15
  6cd45b:	c5 9c 58 fc          	vaddps ymm7,ymm12,ymm4
  6cd45f:	c4 c1 54 5c ed       	vsubps ymm5,ymm5,ymm13
  6cd464:	c5 24 58 e9          	vaddps ymm13,ymm11,ymm1
  6cd468:	c5 8c 59 d2          	vmulps ymm2,ymm14,ymm2
  6cd46c:	c5 1c 5c e4          	vsubps ymm12,ymm12,ymm4
  6cd470:	c5 cc 5c e2          	vsubps ymm4,ymm6,ymm2
  6cd474:	c5 8c 59 ed          	vmulps ymm5,ymm14,ymm5
  6cd478:	c5 a4 5c c9          	vsubps ymm1,ymm11,ymm1
  6cd47c:	c4 41 44 5c dd       	vsubps ymm11,ymm7,ymm13
  6cd481:	c5 6c 58 f6          	vaddps ymm14,ymm2,ymm6
  6cd485:	c5 ac 5c f5          	vsubps ymm6,ymm10,ymm5
  6cd489:	c5 2c 58 d5          	vaddps ymm10,ymm10,ymm5
  6cd48d:	c5 5c 5c fe          	vsubps ymm15,ymm4,ymm6
  6cd491:	c5 94 58 d7          	vaddps ymm2,ymm13,ymm7
  6cd495:	c5 fc 28 5c 24 40    	vmovaps ymm3,YMMWORD PTR [rsp+0x40]
  6cd49b:	c4 c1 64 5c e8       	vsubps ymm5,ymm3,ymm8
  6cd4a0:	c5 dc 58 e6          	vaddps ymm4,ymm4,ymm6
  6cd4a4:	c5 b4 5c f0          	vsubps ymm6,ymm9,ymm0
  6cd4a8:	c5 bc 58 db          	vaddps ymm3,ymm8,ymm3
  6cd4ac:	c5 b4 58 c0          	vaddps ymm0,ymm9,ymm0
  6cd4b0:	c5 e4 14 f8          	vunpcklps ymm7,ymm3,ymm0
  6cd4b4:	c5 60 14 c0          	vunpcklps xmm8,xmm3,xmm0
  6cd4b8:	c5 e0 15 c0          	vunpckhps xmm0,xmm3,xmm0
  6cd4bc:	c5 f8 11 44 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm0
  6cd4c2:	c5 9c 58 c1          	vaddps ymm0,ymm12,ymm1
  6cd4c6:	c5 9c 5c d9          	vsubps ymm3,ymm12,ymm1
  6cd4ca:	c5 78 11 04 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm8
  6cd4cf:	c4 c1 0c 58 ca       	vaddps ymm1,ymm14,ymm10
  6cd4d4:	c4 e3 7d 19 7c 16 20 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x20],ymm7,0x1
  6cd4db:	01 
  6cd4dc:	c4 c1 0c 5c fa       	vsubps ymm7,ymm14,ymm10
  6cd4e1:	c4 41 24 14 c7       	vunpcklps ymm8,ymm11,ymm15
  6cd4e6:	c4 41 20 14 cf       	vunpcklps xmm9,xmm11,xmm15
  6cd4eb:	c4 41 20 15 d7       	vunpckhps xmm10,xmm11,xmm15
  6cd4f0:	c5 78 11 54 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm10
  6cd4f6:	c5 78 11 4c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm9
  6cd4fc:	c4 63 7d 19 44 16 50 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x50],ymm8,0x1
  6cd503:	01 
  6cd504:	c5 7c 14 c1          	vunpcklps ymm8,ymm0,ymm1
  6cd508:	c5 78 14 c9          	vunpcklps xmm9,xmm0,xmm1
  6cd50c:	c5 f8 15 c1          	vunpckhps xmm0,xmm0,xmm1
  6cd510:	c5 f8 11 44 16 70    	vmovups XMMWORD PTR [rsi+rdx*1+0x70],xmm0
  6cd516:	c5 78 11 4c 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm9
  6cd51c:	c4 63 7d 19 84 16 80 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x80],ymm8,0x1
  6cd523:	00 00 00 01 
  6cd527:	c5 d4 14 c6          	vunpcklps ymm0,ymm5,ymm6
  6cd52b:	c5 d0 14 ce          	vunpcklps xmm1,xmm5,xmm6
  6cd52f:	c5 d0 15 ee          	vunpckhps xmm5,xmm5,xmm6
  6cd533:	c5 f8 11 ac 16 a0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa0],xmm5
  6cd53a:	00 00 
  6cd53c:	c5 f8 11 8c 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm1
  6cd543:	00 00 
  6cd545:	c4 e3 7d 19 84 16 b0 	vextractf128 XMMWORD PTR [rsi+rdx*1+0xb0],ymm0,0x1
  6cd54c:	00 00 00 01 
  6cd550:	c5 ec 14 c4          	vunpcklps ymm0,ymm2,ymm4
  6cd554:	c5 e8 14 cc          	vunpcklps xmm1,xmm2,xmm4
  6cd558:	c5 e8 15 d4          	vunpckhps xmm2,xmm2,xmm4
  6cd55c:	c5 f8 11 94 16 d0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xd0],xmm2
  6cd563:	00 00 
  6cd565:	c5 f8 11 8c 16 c0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xc0],xmm1
  6cd56c:	00 00 
  6cd56e:	c4 e3 7d 19 84 16 e0 	vextractf128 XMMWORD PTR [rsi+rdx*1+0xe0],ymm0,0x1
  6cd575:	00 00 00 01 
  6cd579:	c5 e4 14 c7          	vunpcklps ymm0,ymm3,ymm7
  6cd57d:	c5 e0 14 cf          	vunpcklps xmm1,xmm3,xmm7
  6cd581:	c5 e0 15 d7          	vunpckhps xmm2,xmm3,xmm7
  6cd585:	c5 f8 11 94 16 00 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x100],xmm2
  6cd58c:	00 00 
  6cd58e:	c5 f8 11 8c 16 f0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xf0],xmm1
  6cd595:	00 00 
  6cd597:	c4 e3 7d 19 84 16 10 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x110],ymm0,0x1
  6cd59e:	01 00 00 01 
  6cd5a2:	48 81 c2 20 01 00 00 	add    rdx,0x120
  6cd5a9:	48 39 d0             	cmp    rax,rdx
  6cd5ac:	0f 85 7e fa ff ff    	jne    6cd030 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  6cd5b2:	48 89 ec             	mov    rsp,rbp
  6cd5b5:	5d                   	pop    rbp
  6cd5b6:	c5 f8 77             	vzeroupper
  6cd5b9:	c3                   	ret
