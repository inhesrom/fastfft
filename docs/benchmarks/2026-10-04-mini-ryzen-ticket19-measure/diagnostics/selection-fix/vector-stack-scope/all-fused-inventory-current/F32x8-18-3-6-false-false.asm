
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000745100 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  745100:	55                   	push   rbp
  745101:	48 89 e5             	mov    rbp,rsp
  745104:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  745108:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  74510f:	c6 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],0x0
  745116:	00 
  745117:	48 8d 84 24 80 00 00 	lea    rax,[rsp+0x80]
  74511e:	00 
  74511f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  745124:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  745129:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  74512d:	c5 f8 10 4f 20       	vmovups xmm1,XMMWORD PTR [rdi+0x20]
  745132:	c5 fc 10 57 30       	vmovups ymm2,YMMWORD PTR [rdi+0x30]
  745137:	c5 f8 10 5f 50       	vmovups xmm3,XMMWORD PTR [rdi+0x50]
  74513c:	c5 fc 10 67 60       	vmovups ymm4,YMMWORD PTR [rdi+0x60]
  745141:	c5 f8 10 af 80 00 00 	vmovups xmm5,XMMWORD PTR [rdi+0x80]
  745148:	00 
  745149:	c5 fc c6 f1 88       	vshufps ymm6,ymm0,ymm1,0x88
  74514e:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  745154:	c5 ec c6 fb 88       	vshufps ymm7,ymm2,ymm3,0x88
  745159:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  74515f:	c5 5c c6 c5 88       	vshufps ymm8,ymm4,ymm5,0x88
  745164:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  74516a:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  74516f:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  745175:	c5 ec c6 cb dd       	vshufps ymm1,ymm2,ymm3,0xdd
  74517a:	c4 e3 fd 01 d1 d8    	vpermpd ymm2,ymm1,0xd8
  745180:	c5 dc c6 cd dd       	vshufps ymm1,ymm4,ymm5,0xdd
  745185:	c4 e3 fd 01 d9 d8    	vpermpd ymm3,ymm1,0xd8
  74518b:	c5 3c 58 cf          	vaddps ymm9,ymm8,ymm7
  74518f:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  745193:	c5 6c 58 db          	vaddps ymm11,ymm2,ymm3
  745197:	c4 e2 7d 18 25 c0 02 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff9302c0]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  74519e:	93 ff 
  7451a0:	c5 a4 58 e8          	vaddps ymm5,ymm11,ymm0
  7451a4:	c4 62 5d ac ce       	vfnmadd213ps ymm9,ymm4,ymm6
  7451a9:	c4 e2 7d 18 0d 22 01 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff930122]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  7451b0:	93 ff 
  7451b2:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  7451b6:	c5 ec 59 d1          	vmulps ymm2,ymm2,ymm1
  7451ba:	c5 b4 58 da          	vaddps ymm3,ymm9,ymm2
  7451be:	c4 62 5d ac d8       	vfnmadd213ps ymm11,ymm4,ymm0
  7451c3:	c4 c1 44 5c c0       	vsubps ymm0,ymm7,ymm8
  7451c8:	c5 fc 59 c1          	vmulps ymm0,ymm0,ymm1
  7451cc:	c5 a4 5c e0          	vsubps ymm4,ymm11,ymm0
  7451d0:	c5 b4 5c d2          	vsubps ymm2,ymm9,ymm2
  7451d4:	c5 24 58 c8          	vaddps ymm9,ymm11,ymm0
  7451d8:	c5 78 29 d0          	vmovaps xmm0,xmm10
  7451dc:	c4 63 7d 19 d6 01    	vextractf128 xmm6,ymm10,0x1
  7451e2:	c5 f8 28 fb          	vmovaps xmm7,xmm3
  7451e6:	c4 c3 7d 19 d8 01    	vextractf128 xmm8,ymm3,0x1
  7451ec:	c5 78 28 d2          	vmovaps xmm10,xmm2
  7451f0:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  7451f6:	c5 cd 14 f2          	vunpcklpd ymm6,ymm6,ymm2
  7451fa:	c4 41 7d 15 da       	vunpckhpd ymm11,ymm0,ymm10
  7451ff:	c4 c1 7d 14 c2       	vunpcklpd ymm0,ymm0,ymm10
  745204:	c5 fa 7e db          	vmovq  xmm3,xmm3
  745208:	c5 c5 73 df 08       	vpsrldq ymm7,ymm7,0x8
  74520d:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  745212:	c4 43 3d 0c e2 cc    	vblendps ymm12,ymm8,ymm10,0xcc
  745218:	c5 fc c6 cb 88       	vshufps ymm1,ymm0,ymm3,0x88
  74521d:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  745223:	c5 fc c6 db dd       	vshufps ymm3,ymm0,ymm3,0xdd
  745228:	c5 a4 c6 c7 88       	vshufps ymm0,ymm11,ymm7,0x88
  74522d:	c5 7c c6 c0 d8       	vshufps ymm8,ymm0,ymm0,0xd8
  745232:	c5 a4 c6 ff dd       	vshufps ymm7,ymm11,ymm7,0xdd
  745237:	c4 41 4c c6 dc 88    	vshufps ymm11,ymm6,ymm12,0x88
  74523d:	c4 c1 4c c6 f4 dd    	vshufps ymm6,ymm6,ymm12,0xdd
  745243:	c5 f8 28 c5          	vmovaps xmm0,xmm5
  745247:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  74524d:	c5 78 28 e4          	vmovaps xmm12,xmm4
  745251:	c4 c3 7d 19 e5 01    	vextractf128 xmm13,ymm4,0x1
  745257:	c4 41 78 28 f1       	vmovaps xmm14,xmm9
  74525c:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  745262:	c4 c1 55 14 e9       	vunpcklpd ymm5,ymm5,ymm9
  745267:	c4 41 7d 15 fe       	vunpckhpd ymm15,ymm0,ymm14
  74526c:	c4 c1 7d 14 c6       	vunpcklpd ymm0,ymm0,ymm14
  745271:	c5 7a 7e cc          	vmovq  xmm9,xmm4
  745275:	c4 c1 1d 73 dc 08    	vpsrldq ymm12,ymm12,0x8
  74527b:	c4 43 15 0c ea cc    	vblendps ymm13,ymm13,ymm10,0xcc
  745281:	c4 c1 7c c6 e1 88    	vshufps ymm4,ymm0,ymm9,0x88
  745287:	c4 41 7c c6 c9 dd    	vshufps ymm9,ymm0,ymm9,0xdd
  74528d:	c4 c1 04 c6 c4 88    	vshufps ymm0,ymm15,ymm12,0x88
  745293:	c5 7c c6 d0 d8       	vshufps ymm10,ymm0,ymm0,0xd8
  745298:	c4 41 04 c6 f4 dd    	vshufps ymm14,ymm15,ymm12,0xdd
  74529e:	c4 41 54 c6 e5 88    	vshufps ymm12,ymm5,ymm13,0x88
  7452a4:	c4 41 54 c6 ed dd    	vshufps ymm13,ymm5,ymm13,0xdd
  7452aa:	c5 fc 10 82 80 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0x80]
  7452b1:	00 
  7452b2:	c5 7c 10 ba a0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xa0]
  7452b9:	00 
  7452ba:	c5 bc 59 e8          	vmulps ymm5,ymm8,ymm0
  7452be:	c4 c2 2d bc ef       	vfnmadd231ps ymm5,ymm10,ymm15
  7452c3:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  7452c7:	c4 c1 24 c6 c3 d8    	vshufps ymm0,ymm11,ymm11,0xd8
  7452cd:	c4 41 1c c6 dc d8    	vshufps ymm11,ymm12,ymm12,0xd8
  7452d3:	c4 42 3d b8 d7       	vfmadd231ps ymm10,ymm8,ymm15
  7452d8:	c5 7c 10 a2 00 01 00 	vmovups ymm12,YMMWORD PTR [rdx+0x100]
  7452df:	00 
  7452e0:	c5 7c 10 ba 20 01 00 	vmovups ymm15,YMMWORD PTR [rdx+0x120]
  7452e7:	00 
  7452e8:	c5 1c 59 c0          	vmulps ymm8,ymm12,ymm0
  7452ec:	c4 42 25 bc c7       	vfnmadd231ps ymm8,ymm11,ymm15
  7452f1:	c4 41 1c 59 e3       	vmulps ymm12,ymm12,ymm11
  7452f6:	c5 c4 c6 cf d8       	vshufps ymm1,ymm7,ymm7,0xd8
  7452fb:	c4 41 0c c6 de d8    	vshufps ymm11,ymm14,ymm14,0xd8
  745301:	c4 42 7d b8 e7       	vfmadd231ps ymm12,ymm0,ymm15
  745306:	c5 fc 10 82 c0 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0xc0]
  74530d:	00 
  74530e:	c5 7c 10 b2 e0 00 00 	vmovups ymm14,YMMWORD PTR [rdx+0xe0]
  745315:	00 
  745316:	c5 fc 59 f9          	vmulps ymm7,ymm0,ymm1
  74531a:	c4 c2 25 bc fe       	vfnmadd231ps ymm7,ymm11,ymm14
  74531f:	c5 24 59 d8          	vmulps ymm11,ymm11,ymm0
  745323:	c5 cc c6 c6 d8       	vshufps ymm0,ymm6,ymm6,0xd8
  745328:	c4 c1 14 c6 f5 d8    	vshufps ymm6,ymm13,ymm13,0xd8
  74532e:	c4 42 75 b8 de       	vfmadd231ps ymm11,ymm1,ymm14
  745333:	c5 fc 10 8a 40 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x140]
  74533a:	00 
  74533b:	c5 7c 10 ba 60 01 00 	vmovups ymm15,YMMWORD PTR [rdx+0x160]
  745342:	00 
  745343:	c5 74 59 e8          	vmulps ymm13,ymm1,ymm0
  745347:	c4 42 4d bc ef       	vfnmadd231ps ymm13,ymm6,ymm15
  74534c:	c5 74 59 f6          	vmulps ymm14,ymm1,ymm6
  745350:	c5 e4 c6 cb d8       	vshufps ymm1,ymm3,ymm3,0xd8
  745355:	c4 c1 34 c6 d9 d8    	vshufps ymm3,ymm9,ymm9,0xd8
  74535b:	c4 42 7d b8 f7       	vfmadd231ps ymm14,ymm0,ymm15
  745360:	c5 fc 10 42 40       	vmovups ymm0,YMMWORD PTR [rdx+0x40]
  745365:	c5 fc 10 72 60       	vmovups ymm6,YMMWORD PTR [rdx+0x60]
  74536a:	c5 7c 59 c9          	vmulps ymm9,ymm0,ymm1
  74536e:	c4 62 65 bc ce       	vfnmadd231ps ymm9,ymm3,ymm6
  745373:	c5 fc 59 d3          	vmulps ymm2,ymm0,ymm3
  745377:	c4 e3 7d 04 5c 24 40 	vpermilps ymm3,YMMWORD PTR [rsp+0x40],0xd8
  74537e:	d8 
  74537f:	c4 e2 75 b8 d6       	vfmadd231ps ymm2,ymm1,ymm6
  745384:	c5 3c 58 fd          	vaddps ymm15,ymm8,ymm5
  745388:	c5 84 58 c3          	vaddps ymm0,ymm15,ymm3
  74538c:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  745392:	c4 e2 7d 18 35 c5 00 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff9300c5]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  745399:	93 ff 
  74539b:	c4 62 4d ac fb       	vfnmadd213ps ymm15,ymm6,ymm3
  7453a0:	c4 c1 14 58 c9       	vaddps ymm1,ymm13,ymm9
  7453a5:	c5 c4 58 c1          	vaddps ymm0,ymm7,ymm1
  7453a9:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  7453af:	c4 e2 4d bc f9       	vfnmadd231ps ymm7,ymm6,ymm1
  7453b4:	c5 dc c6 cc d8       	vshufps ymm1,ymm4,ymm4,0xd8
  7453b9:	c4 c1 2c 58 c4       	vaddps ymm0,ymm10,ymm12
  7453be:	c5 fc 58 e1          	vaddps ymm4,ymm0,ymm1
  7453c2:	c4 e2 4d ac c1       	vfnmadd213ps ymm0,ymm6,ymm1
  7453c7:	c5 fc 28 de          	vmovaps ymm3,ymm6
  7453cb:	c5 8c 58 ca          	vaddps ymm1,ymm14,ymm2
  7453cf:	c5 a4 58 f1          	vaddps ymm6,ymm11,ymm1
  7453d3:	c4 62 75 bc db       	vfnmadd231ps ymm11,ymm1,ymm3
  7453d8:	c4 c1 2c 5c cc       	vsubps ymm1,ymm10,ymm12
  7453dd:	c5 8c 5c d2          	vsubps ymm2,ymm14,ymm2
  7453e1:	c4 62 7d 18 25 ea fe 	vbroadcastss ymm12,DWORD PTR [rip+0xffffffffff92feea]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  7453e8:	92 ff 
  7453ea:	c5 1c 59 d1          	vmulps ymm10,ymm12,ymm1
  7453ee:	c4 41 54 5c c0       	vsubps ymm8,ymm5,ymm8
  7453f3:	c4 c1 04 58 ca       	vaddps ymm1,ymm15,ymm10
  7453f8:	c5 9c 59 d2          	vmulps ymm2,ymm12,ymm2
  7453fc:	c4 41 14 5c c9       	vsubps ymm9,ymm13,ymm9
  745401:	c5 c4 58 ea          	vaddps ymm5,ymm7,ymm2
  745405:	c4 41 3c 59 c4       	vmulps ymm8,ymm8,ymm12
  74540a:	c4 41 34 59 f4       	vmulps ymm14,ymm9,ymm12
  74540f:	c4 41 7c 5c c8       	vsubps ymm9,ymm0,ymm8
  745414:	c4 41 04 5c ea       	vsubps ymm13,ymm15,ymm10
  745419:	c4 41 24 5c e6       	vsubps ymm12,ymm11,ymm14
  74541e:	c5 c4 5c fa          	vsubps ymm7,ymm7,ymm2
  745422:	c5 3c 58 c0          	vaddps ymm8,ymm8,ymm0
  745426:	c4 41 24 58 d6       	vaddps ymm10,ymm11,ymm14
  74542b:	c5 d8 58 c6          	vaddps xmm0,xmm4,xmm6
  74542f:	c5 fc 28 5c 24 40    	vmovaps ymm3,YMMWORD PTR [rsp+0x40]
  745435:	c5 7c 28 74 24 60    	vmovaps ymm14,YMMWORD PTR [rsp+0x60]
  74543b:	c5 88 58 d3          	vaddps xmm2,xmm14,xmm3
  74543f:	c5 68 14 d8          	vunpcklps xmm11,xmm2,xmm0
  745443:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  745447:	c5 f8 13 46 10       	vmovlps QWORD PTR [rsi+0x10],xmm0
  74544c:	c5 78 11 1e          	vmovups XMMWORD PTR [rsi],xmm11
  745450:	c4 c1 30 5c c4       	vsubps xmm0,xmm9,xmm12
  745455:	c5 f0 5c d5          	vsubps xmm2,xmm1,xmm5
  745459:	c5 68 14 d8          	vunpcklps xmm11,xmm2,xmm0
  74545d:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  745461:	c5 f8 13 46 28       	vmovlps QWORD PTR [rsi+0x28],xmm0
  745466:	c5 78 11 5e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm11
  74546b:	c4 c1 38 58 c2       	vaddps xmm0,xmm8,xmm10
  745470:	c5 90 58 d7          	vaddps xmm2,xmm13,xmm7
  745474:	c5 68 14 d8          	vunpcklps xmm11,xmm2,xmm0
  745478:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  74547c:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  745481:	c5 78 11 5e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm11
  745486:	c5 d8 5c c6          	vsubps xmm0,xmm4,xmm6
  74548a:	c4 c1 60 5c d6       	vsubps xmm2,xmm3,xmm14
  74548f:	c5 e8 14 d8          	vunpcklps xmm3,xmm2,xmm0
  745493:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  745497:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  74549c:	c5 f8 11 5e 48       	vmovups XMMWORD PTR [rsi+0x48],xmm3
  7454a1:	c4 c1 30 58 c4       	vaddps xmm0,xmm9,xmm12
  7454a6:	c5 f0 58 cd          	vaddps xmm1,xmm1,xmm5
  7454aa:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  7454ae:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  7454b2:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  7454b7:	c5 f8 11 56 60       	vmovups XMMWORD PTR [rsi+0x60],xmm2
  7454bc:	c4 c1 38 5c c2       	vsubps xmm0,xmm8,xmm10
  7454c1:	c5 90 5c cf          	vsubps xmm1,xmm13,xmm7
  7454c5:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  7454c9:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  7454cd:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  7454d4:	00 
  7454d5:	c5 f8 11 56 78       	vmovups XMMWORD PTR [rsi+0x78],xmm2
  7454da:	48 89 ec             	mov    rsp,rbp
  7454dd:	5d                   	pop    rbp
  7454de:	c5 f8 77             	vzeroupper
  7454e1:	c3                   	ret
