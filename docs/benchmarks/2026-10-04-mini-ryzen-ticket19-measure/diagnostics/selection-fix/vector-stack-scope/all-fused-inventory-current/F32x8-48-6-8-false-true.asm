
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c6040 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c6040:	55                   	push   rbp
  6c6041:	48 89 e5             	mov    rbp,rsp
  6c6044:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6c6048:	48 81 ec 00 03 00 00 	sub    rsp,0x300
  6c604f:	48 c1 e2 07          	shl    rdx,0x7
  6c6053:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6c6057:	31 d2                	xor    edx,edx
  6c6059:	4c 8d 84 24 80 02 00 	lea    r8,[rsp+0x280]
  6c6060:	00 
  6c6061:	4c 8d 8c 24 b8 00 00 	lea    r9,[rsp+0xb8]
  6c6068:	00 
  6c6069:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  6c6070:	c6 84 24 80 02 00 00 	mov    BYTE PTR [rsp+0x280],0x0
  6c6077:	00 
  6c6078:	4c 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],r8
  6c607f:	00 
  6c6080:	c5 fc 10 24 17       	vmovups ymm4,YMMWORD PTR [rdi+rdx*1]
  6c6085:	c5 fc 10 6c 17 20    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x20]
  6c608b:	c5 7c 10 44 17 40    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x40]
  6c6091:	c5 fc 10 5c 17 60    	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x60]
  6c6097:	c5 fc 10 b4 17 80 00 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x80]
  6c609e:	00 00 
  6c60a0:	c5 fc 10 bc 17 a0 00 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0xa0]
  6c60a7:	00 00 
  6c60a9:	c5 7c 10 94 17 c0 00 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0xc0]
  6c60b0:	00 00 
  6c60b2:	c5 7c 10 9c 17 e0 00 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0xe0]
  6c60b9:	00 00 
  6c60bb:	c5 7c 10 ac 17 00 01 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x100]
  6c60c2:	00 00 
  6c60c4:	c5 7c 10 b4 17 20 01 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x120]
  6c60cb:	00 00 
  6c60cd:	c5 7c 10 bc 17 40 01 	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0x140]
  6c60d4:	00 00 
  6c60d6:	c5 fc 10 8c 17 60 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x160]
  6c60dd:	00 00 
  6c60df:	c5 dc c6 d5 88       	vshufps ymm2,ymm4,ymm5,0x88
  6c60e4:	c4 e3 fd 01 c2 d8    	vpermpd ymm0,ymm2,0xd8
  6c60ea:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  6c60f0:	c5 cc c6 d7 88       	vshufps ymm2,ymm6,ymm7,0x88
  6c60f5:	c4 e3 fd 01 c2 d8    	vpermpd ymm0,ymm2,0xd8
  6c60fb:	c5 fc 29 84 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm0
  6c6102:	00 00 
  6c6104:	c4 c1 14 c6 d6 88    	vshufps ymm2,ymm13,ymm14,0x88
  6c610a:	c4 e3 fd 01 c2 d8    	vpermpd ymm0,ymm2,0xd8
  6c6110:	c5 fc 29 84 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm0
  6c6117:	00 00 
  6c6119:	c4 41 2c c6 cb 88    	vshufps ymm9,ymm10,ymm11,0x88
  6c611f:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  6c6125:	c5 5c c6 e5 dd       	vshufps ymm12,ymm4,ymm5,0xdd
  6c612a:	c5 84 c6 e1 88       	vshufps ymm4,ymm15,ymm1,0x88
  6c612f:	c5 cc c6 f7 dd       	vshufps ymm6,ymm6,ymm7,0xdd
  6c6134:	c4 e3 fd 01 d4 d8    	vpermpd ymm2,ymm4,0xd8
  6c613a:	c5 fc 29 94 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm2
  6c6141:	00 00 
  6c6143:	c5 bc c6 eb 88       	vshufps ymm5,ymm8,ymm3,0x88
  6c6148:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  6c614e:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  6c6154:	c4 e3 fd 01 e6 d8    	vpermpd ymm4,ymm6,0xd8
  6c615a:	c4 c1 14 c6 f6 dd    	vshufps ymm6,ymm13,ymm14,0xdd
  6c6160:	c4 63 fd 01 ee d8    	vpermpd ymm13,ymm6,0xd8
  6c6166:	c4 c1 2c c6 f3 dd    	vshufps ymm6,ymm10,ymm11,0xdd
  6c616c:	c4 63 fd 01 d6 d8    	vpermpd ymm10,ymm6,0xd8
  6c6172:	c5 84 c6 c9 dd       	vshufps ymm1,ymm15,ymm1,0xdd
  6c6177:	c4 63 fd 01 f1 d8    	vpermpd ymm14,ymm1,0xd8
  6c617d:	c5 bc c6 cb dd       	vshufps ymm1,ymm8,ymm3,0xdd
  6c6182:	c4 63 fd 01 f9 d8    	vpermpd ymm15,ymm1,0xd8
  6c6188:	c5 fc 28 9c 24 c0 00 	vmovaps ymm3,YMMWORD PTR [rsp+0xc0]
  6c618f:	00 00 
  6c6191:	c5 e4 58 f8          	vaddps ymm7,ymm3,ymm0
  6c6195:	c5 7c 28 5c 24 40    	vmovaps ymm11,YMMWORD PTR [rsp+0x40]
  6c619b:	c5 a4 58 c7          	vaddps ymm0,ymm11,ymm7
  6c619f:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  6c61a5:	c5 ec 58 f5          	vaddps ymm6,ymm2,ymm5
  6c61a9:	c5 b4 58 d6          	vaddps ymm2,ymm9,ymm6
  6c61ad:	c5 fc 29 54 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm2
  6c61b3:	c4 e2 7d 18 0d a4 f2 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9af2a4]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c61ba:	9a ff 
  6c61bc:	c4 c2 75 ac fb       	vfnmadd213ps ymm7,ymm1,ymm11
  6c61c1:	c5 14 58 dc          	vaddps ymm11,ymm13,ymm4
  6c61c5:	c4 c1 5c 5c e5       	vsubps ymm4,ymm4,ymm13
  6c61ca:	c4 41 24 58 c4       	vaddps ymm8,ymm11,ymm12
  6c61cf:	c4 c2 75 ac f1       	vfnmadd213ps ymm6,ymm1,ymm9
  6c61d4:	c4 41 0c 58 cf       	vaddps ymm9,ymm14,ymm15
  6c61d9:	c4 41 0c 5c ef       	vsubps ymm13,ymm14,ymm15
  6c61de:	c5 7c 58 fa          	vaddps ymm15,ymm0,ymm2
  6c61e2:	c4 42 75 ac dc       	vfnmadd213ps ymm11,ymm1,ymm12
  6c61e7:	c4 41 34 58 e2       	vaddps ymm12,ymm9,ymm10
  6c61ec:	c5 e4 5c 94 24 e0 00 	vsubps ymm2,ymm3,YMMWORD PTR [rsp+0xe0]
  6c61f3:	00 00 
  6c61f5:	c4 c1 3c 58 dc       	vaddps ymm3,ymm8,ymm12
  6c61fa:	c5 fc 29 9c 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm3
  6c6201:	00 00 
  6c6203:	c4 62 7d 18 35 c8 f0 	vbroadcastss ymm14,DWORD PTR [rip+0xffffffffff9af0c8]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c620a:	9a ff 
  6c620c:	c5 8c 59 c4          	vmulps ymm0,ymm14,ymm4
  6c6210:	c4 41 14 59 ee       	vmulps ymm13,ymm13,ymm14
  6c6215:	c4 42 75 ac ca       	vfnmadd213ps ymm9,ymm1,ymm10
  6c621a:	c5 44 58 d0          	vaddps ymm10,ymm7,ymm0
  6c621e:	c5 fc 28 8c 24 80 00 	vmovaps ymm1,YMMWORD PTR [rsp+0x80]
  6c6225:	00 00 
  6c6227:	c5 f4 5c e5          	vsubps ymm4,ymm1,ymm5
  6c622b:	c5 94 58 ee          	vaddps ymm5,ymm13,ymm6
  6c622f:	c5 8c 59 d2          	vmulps ymm2,ymm14,ymm2
  6c6233:	c5 c4 5c c0          	vsubps ymm0,ymm7,ymm0
  6c6237:	c5 a4 5c fa          	vsubps ymm7,ymm11,ymm2
  6c623b:	c5 8c 59 e4          	vmulps ymm4,ymm14,ymm4
  6c623f:	c4 c1 4c 5c f5       	vsubps ymm6,ymm6,ymm13
  6c6244:	c5 ac 5c cd          	vsubps ymm1,ymm10,ymm5
  6c6248:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  6c624e:	c5 a4 58 d2          	vaddps ymm2,ymm11,ymm2
  6c6252:	c5 34 5c ec          	vsubps ymm13,ymm9,ymm4
  6c6256:	c5 b4 58 e4          	vaddps ymm4,ymm9,ymm4
  6c625a:	c4 41 44 5c cd       	vsubps ymm9,ymm7,ymm13
  6c625f:	c5 fc 28 5c 24 60    	vmovaps ymm3,YMMWORD PTR [rsp+0x60]
  6c6265:	c5 64 5c 74 24 20    	vsubps ymm14,ymm3,YMMWORD PTR [rsp+0x20]
  6c626b:	c5 7c 29 b4 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm14
  6c6272:	00 00 
  6c6274:	c5 fc 58 de          	vaddps ymm3,ymm0,ymm6
  6c6278:	c5 fc 29 9c 24 60 01 	vmovaps YMMWORD PTR [rsp+0x160],ymm3
  6c627f:	00 00 
  6c6281:	c4 41 3c 5c dc       	vsubps ymm11,ymm8,ymm12
  6c6286:	c5 6c 58 c4          	vaddps ymm8,ymm2,ymm4
  6c628a:	c5 ac 58 ed          	vaddps ymm5,ymm10,ymm5
  6c628e:	c5 fc 29 ac 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm5
  6c6295:	00 00 
  6c6297:	c5 14 58 ef          	vaddps ymm13,ymm13,ymm7
  6c629b:	c5 fc 5c f6          	vsubps ymm6,ymm0,ymm6
  6c629f:	c5 6c 5c e4          	vsubps ymm12,ymm2,ymm4
  6c62a3:	c4 e3 05 06 c5 31    	vperm2f128 ymm0,ymm15,ymm5,0x31
  6c62a9:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  6c62af:	c4 e3 75 06 d6 31    	vperm2f128 ymm2,ymm1,ymm6,0x31
  6c62b5:	c5 fc 29 54 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm2
  6c62bb:	c4 63 7d 19 f5 01    	vextractf128 xmm5,ymm14,0x1
  6c62c1:	c5 fc 29 ac 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm5
  6c62c8:	00 00 
  6c62ca:	c4 e3 7d 19 df 01    	vextractf128 xmm7,ymm3,0x1
  6c62d0:	c5 fc 29 bc 24 c0 01 	vmovaps YMMWORD PTR [rsp+0x1c0],ymm7
  6c62d7:	00 00 
  6c62d9:	c5 fc 14 ca          	vunpcklps ymm1,ymm0,ymm2
  6c62dd:	c5 fc 29 8c 24 e0 01 	vmovaps YMMWORD PTR [rsp+0x1e0],ymm1
  6c62e4:	00 00 
  6c62e6:	c5 7c 28 94 24 00 01 	vmovaps ymm10,YMMWORD PTR [rsp+0x100]
  6c62ed:	00 00 
  6c62ef:	c4 c3 2d 06 d5 31    	vperm2f128 ymm2,ymm10,ymm13,0x31
  6c62f5:	c5 fc 29 94 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm2
  6c62fc:	00 00 
  6c62fe:	c4 c3 35 06 e4 31    	vperm2f128 ymm4,ymm9,ymm12,0x31
  6c6304:	c5 fc 29 a4 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm4
  6c630b:	00 00 
  6c630d:	c5 c4 14 c5          	vunpcklps ymm0,ymm7,ymm5
  6c6311:	c5 fc 29 84 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm0
  6c6318:	00 00 
  6c631a:	c4 43 7d 19 c6 01    	vextractf128 xmm14,ymm8,0x1
  6c6320:	c5 7c 29 c3          	vmovaps ymm3,ymm8
  6c6324:	c4 63 7d 19 df 01    	vextractf128 xmm7,ymm11,0x1
  6c632a:	c5 ec 14 ec          	vunpcklps ymm5,ymm2,ymm4
  6c632e:	c5 fc 29 ac 24 20 02 	vmovaps YMMWORD PTR [rsp+0x220],ymm5
  6c6335:	00 00 
  6c6337:	c5 f5 14 d0          	vunpcklpd ymm2,ymm1,ymm0
  6c633b:	c5 8c 14 c7          	vunpcklps ymm0,ymm14,ymm7
  6c633f:	c5 fc 29 84 24 40 02 	vmovaps YMMWORD PTR [rsp+0x240],ymm0
  6c6346:	00 00 
  6c6348:	c5 fc 10 a1 00 01 00 	vmovups ymm4,YMMWORD PTR [rcx+0x100]
  6c634f:	00 
  6c6350:	c5 fc 10 89 20 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x120]
  6c6357:	00 
  6c6358:	c5 d5 14 e8          	vunpcklpd ymm5,ymm5,ymm0
  6c635c:	c5 5c 59 c2          	vmulps ymm8,ymm4,ymm2
  6c6360:	c4 62 55 bc c1       	vfnmadd231ps ymm8,ymm5,ymm1
  6c6365:	c5 7c 29 84 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm8
  6c636c:	00 00 
  6c636e:	c5 dc 59 c5          	vmulps ymm0,ymm4,ymm5
  6c6372:	c4 e2 6d b8 c1       	vfmadd231ps ymm0,ymm2,ymm1
  6c6377:	c5 fc 29 84 24 60 02 	vmovaps YMMWORD PTR [rsp+0x260],ymm0
  6c637e:	00 00 
  6c6380:	c4 63 05 18 84 24 80 	vinsertf128 ymm8,ymm15,XMMWORD PTR [rsp+0x80],0x1
  6c6387:	00 00 00 01 
  6c638b:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  6c6391:	c4 63 7d 18 fe 01    	vinsertf128 ymm15,ymm0,xmm6,0x1
  6c6397:	c4 43 2d 18 ed 01    	vinsertf128 ymm13,ymm10,xmm13,0x1
  6c639d:	c4 43 35 18 d4 01    	vinsertf128 ymm10,ymm9,xmm12,0x1
  6c63a3:	c5 78 28 8c 24 60 01 	vmovaps xmm9,XMMWORD PTR [rsp+0x160]
  6c63aa:	00 00 
  6c63ac:	c5 f8 28 a4 24 80 01 	vmovaps xmm4,XMMWORD PTR [rsp+0x180]
  6c63b3:	00 00 
  6c63b5:	c5 78 29 de          	vmovaps xmm6,xmm11
  6c63b9:	c5 f8 28 db          	vmovaps xmm3,xmm3
  6c63bd:	c4 c1 3c 15 c7       	vunpckhps ymm0,ymm8,ymm15
  6c63c2:	c5 fc 29 84 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm0
  6c63c9:	00 00 
  6c63cb:	c5 b4 15 cc          	vunpckhps ymm1,ymm9,ymm4
  6c63cf:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  6c63d5:	c4 c1 14 15 d2       	vunpckhps ymm2,ymm13,ymm10
  6c63da:	c5 fc 29 94 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm2
  6c63e1:	00 00 
  6c63e3:	c5 fd 14 e9          	vunpcklpd ymm5,ymm0,ymm1
  6c63e7:	c5 e4 15 c6          	vunpckhps ymm0,ymm3,ymm6
  6c63eb:	c5 fc 29 84 24 60 01 	vmovaps YMMWORD PTR [rsp+0x160],ymm0
  6c63f2:	00 00 
  6c63f4:	c5 7c 10 99 80 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0x80]
  6c63fb:	00 
  6c63fc:	c5 fc 10 89 a0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xa0]
  6c6403:	00 
  6c6404:	c5 ed 14 c0          	vunpcklpd ymm0,ymm2,ymm0
  6c6408:	c5 a4 59 d5          	vmulps ymm2,ymm11,ymm5
  6c640c:	c4 e2 7d bc d1       	vfnmadd231ps ymm2,ymm0,ymm1
  6c6411:	c5 fc 29 94 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm2
  6c6418:	00 00 
  6c641a:	c5 24 59 e0          	vmulps ymm12,ymm11,ymm0
  6c641e:	c4 62 55 b8 e1       	vfmadd231ps ymm12,ymm5,ymm1
  6c6423:	c5 fc 28 44 24 60    	vmovaps ymm0,YMMWORD PTR [rsp+0x60]
  6c6429:	c5 fc 15 4c 24 20    	vunpckhps ymm1,ymm0,YMMWORD PTR [rsp+0x20]
  6c642f:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  6c6435:	c5 fc 28 84 24 c0 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x1c0]
  6c643c:	00 00 
  6c643e:	c5 fc 15 94 24 a0 01 	vunpckhps ymm2,ymm0,YMMWORD PTR [rsp+0x1a0]
  6c6445:	00 00 
  6c6447:	c5 fc 29 54 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm2
  6c644d:	c5 fc 28 84 24 20 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x120]
  6c6454:	00 00 
  6c6456:	c5 7c 15 9c 24 40 01 	vunpckhps ymm11,ymm0,YMMWORD PTR [rsp+0x140]
  6c645d:	00 00 
  6c645f:	c5 7c 29 9c 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm11
  6c6466:	00 00 
  6c6468:	c5 8c 15 ef          	vunpckhps ymm5,ymm14,ymm7
  6c646c:	c5 fc 29 ac 24 c0 01 	vmovaps YMMWORD PTR [rsp+0x1c0],ymm5
  6c6473:	00 00 
  6c6475:	c5 f5 14 d2          	vunpcklpd ymm2,ymm1,ymm2
  6c6479:	c5 fc 10 89 80 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x180]
  6c6480:	00 
  6c6481:	c5 fc 10 81 a0 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x1a0]
  6c6488:	00 
  6c6489:	c5 a5 14 ed          	vunpcklpd ymm5,ymm11,ymm5
  6c648d:	c5 74 59 f2          	vmulps ymm14,ymm1,ymm2
  6c6491:	c4 62 55 bc f0       	vfnmadd231ps ymm14,ymm5,ymm0
  6c6496:	c5 74 59 dd          	vmulps ymm11,ymm1,ymm5
  6c649a:	c4 62 6d b8 d8       	vfmadd231ps ymm11,ymm2,ymm0
  6c649f:	c4 c1 3c 14 cf       	vunpcklps ymm1,ymm8,ymm15
  6c64a4:	c5 fc 29 8c 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm1
  6c64ab:	00 00 
  6c64ad:	c5 b4 14 c4          	vunpcklps ymm0,ymm9,ymm4
  6c64b1:	c5 fc 29 84 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm0
  6c64b8:	00 00 
  6c64ba:	c4 c1 14 14 e2       	vunpcklps ymm4,ymm13,ymm10
  6c64bf:	c5 fc 29 a4 24 00 02 	vmovaps YMMWORD PTR [rsp+0x200],ymm4
  6c64c6:	00 00 
  6c64c8:	c5 64 14 fe          	vunpcklps ymm15,ymm3,ymm6
  6c64cc:	c5 f5 15 c0          	vunpckhpd ymm0,ymm1,ymm0
  6c64d0:	c5 fc 10 49 40       	vmovups ymm1,YMMWORD PTR [rcx+0x40]
  6c64d5:	c5 fc 10 51 60       	vmovups ymm2,YMMWORD PTR [rcx+0x60]
  6c64da:	c4 c1 5d 15 df       	vunpckhpd ymm3,ymm4,ymm15
  6c64df:	c5 74 59 c8          	vmulps ymm9,ymm1,ymm0
  6c64e3:	c4 62 65 bc ca       	vfnmadd231ps ymm9,ymm3,ymm2
  6c64e8:	c5 74 59 c3          	vmulps ymm8,ymm1,ymm3
  6c64ec:	c4 62 7d b8 c2       	vfmadd231ps ymm8,ymm0,ymm2
  6c64f1:	c5 fc 28 84 24 e0 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x1e0]
  6c64f8:	00 00 
  6c64fa:	c5 fd 15 84 24 c0 00 	vunpckhpd ymm0,ymm0,YMMWORD PTR [rsp+0xc0]
  6c6501:	00 00 
  6c6503:	c5 fc 28 8c 24 20 02 	vmovaps ymm1,YMMWORD PTR [rsp+0x220]
  6c650a:	00 00 
  6c650c:	c5 f5 15 8c 24 40 02 	vunpckhpd ymm1,ymm1,YMMWORD PTR [rsp+0x240]
  6c6513:	00 00 
  6c6515:	c5 fc 10 b1 40 01 00 	vmovups ymm6,YMMWORD PTR [rcx+0x140]
  6c651c:	00 
  6c651d:	c5 7c 10 a9 60 01 00 	vmovups ymm13,YMMWORD PTR [rcx+0x160]
  6c6524:	00 
  6c6525:	c5 cc 59 f8          	vmulps ymm7,ymm6,ymm0
  6c6529:	c4 c2 75 bc fd       	vfnmadd231ps ymm7,ymm1,ymm13
  6c652e:	c5 cc 59 e9          	vmulps ymm5,ymm6,ymm1
  6c6532:	c4 c2 7d b8 ed       	vfmadd231ps ymm5,ymm0,ymm13
  6c6537:	c5 fc 28 84 24 80 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x180]
  6c653e:	00 00 
  6c6540:	c5 fd 15 74 24 40    	vunpckhpd ymm6,ymm0,YMMWORD PTR [rsp+0x40]
  6c6546:	c5 fc 28 84 24 00 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x100]
  6c654d:	00 00 
  6c654f:	c5 7d 15 ac 24 60 01 	vunpckhpd ymm13,ymm0,YMMWORD PTR [rsp+0x160]
  6c6556:	00 00 
  6c6558:	c5 fc 10 81 c0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xc0]
  6c655f:	00 
  6c6560:	c5 7c 10 91 e0 00 00 	vmovups ymm10,YMMWORD PTR [rcx+0xe0]
  6c6567:	00 
  6c6568:	c5 fc 59 e6          	vmulps ymm4,ymm0,ymm6
  6c656c:	c4 c2 15 bc e2       	vfnmadd231ps ymm4,ymm13,ymm10
  6c6571:	c5 14 59 e8          	vmulps ymm13,ymm13,ymm0
  6c6575:	c4 42 4d b8 ea       	vfmadd231ps ymm13,ymm6,ymm10
  6c657a:	c5 fc 28 44 24 60    	vmovaps ymm0,YMMWORD PTR [rsp+0x60]
  6c6580:	c5 fd 15 5c 24 20    	vunpckhpd ymm3,ymm0,YMMWORD PTR [rsp+0x20]
  6c6586:	c5 fc 28 84 24 a0 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x1a0]
  6c658d:	00 00 
  6c658f:	c5 fd 15 b4 24 c0 01 	vunpckhpd ymm6,ymm0,YMMWORD PTR [rsp+0x1c0]
  6c6596:	00 00 
  6c6598:	c5 7c 10 91 c0 01 00 	vmovups ymm10,YMMWORD PTR [rcx+0x1c0]
  6c659f:	00 
  6c65a0:	c5 fc 10 91 e0 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x1e0]
  6c65a7:	00 
  6c65a8:	c5 ac 59 cb          	vmulps ymm1,ymm10,ymm3
  6c65ac:	c4 e2 4d bc ca       	vfnmadd231ps ymm1,ymm6,ymm2
  6c65b1:	c5 ac 59 c6          	vmulps ymm0,ymm10,ymm6
  6c65b5:	c4 e2 65 b8 c2       	vfmadd231ps ymm0,ymm3,ymm2
  6c65ba:	c5 fc 28 94 24 20 01 	vmovaps ymm2,YMMWORD PTR [rsp+0x120]
  6c65c1:	00 00 
  6c65c3:	c5 ed 14 94 24 40 01 	vunpcklpd ymm2,ymm2,YMMWORD PTR [rsp+0x140]
  6c65ca:	00 00 
  6c65cc:	c5 fc 28 9c 24 00 02 	vmovaps ymm3,YMMWORD PTR [rsp+0x200]
  6c65d3:	00 00 
  6c65d5:	c4 c1 65 14 df       	vunpcklpd ymm3,ymm3,ymm15
  6c65da:	c5 fc 28 b4 24 e0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xe0]
  6c65e1:	00 00 
  6c65e3:	c5 4c 58 fa          	vaddps ymm15,ymm6,ymm2
  6c65e7:	c5 ec 5c d6          	vsubps ymm2,ymm2,ymm6
  6c65eb:	c5 fc 29 54 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm2
  6c65f1:	c4 41 1c 58 d3       	vaddps ymm10,ymm12,ymm11
  6c65f6:	c4 41 1c 5c e3       	vsubps ymm12,ymm12,ymm11
  6c65fb:	c5 b4 58 f7          	vaddps ymm6,ymm9,ymm7
  6c65ff:	c5 b4 5c ff          	vsubps ymm7,ymm9,ymm7
  6c6603:	c5 3c 58 dd          	vaddps ymm11,ymm8,ymm5
  6c6607:	c5 bc 5c ed          	vsubps ymm5,ymm8,ymm5
  6c660b:	c5 14 58 c0          	vaddps ymm8,ymm13,ymm0
  6c660f:	c5 94 5c c0          	vsubps ymm0,ymm13,ymm0
  6c6613:	c5 5c 58 e9          	vaddps ymm13,ymm4,ymm1
  6c6617:	c5 dc 5c e1          	vsubps ymm4,ymm4,ymm1
  6c661b:	c5 fc 28 94 24 60 02 	vmovaps ymm2,YMMWORD PTR [rsp+0x260]
  6c6622:	00 00 
  6c6624:	c5 ec 58 cb          	vaddps ymm1,ymm2,ymm3
  6c6628:	c5 e4 5c da          	vsubps ymm3,ymm3,ymm2
  6c662c:	c5 fc 28 94 24 80 00 	vmovaps ymm2,YMMWORD PTR [rsp+0x80]
  6c6633:	00 00 
  6c6635:	c5 0c 58 ca          	vaddps ymm9,ymm14,ymm2
  6c6639:	c5 8c 5c d2          	vsubps ymm2,ymm14,ymm2
  6c663d:	c5 44 58 f5          	vaddps ymm14,ymm7,ymm5
  6c6641:	c5 7c 29 b4 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm14
  6c6648:	00 00 
  6c664a:	c5 d4 5c ef          	vsubps ymm5,ymm5,ymm7
  6c664e:	c5 fc 29 ac 24 e0 01 	vmovaps YMMWORD PTR [rsp+0x1e0],ymm5
  6c6655:	00 00 
  6c6657:	c5 fc 5c ec          	vsubps ymm5,ymm0,ymm4
  6c665b:	c5 fc 29 ac 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm5
  6c6662:	00 00 
  6c6664:	c5 dc 58 f8          	vaddps ymm7,ymm4,ymm0
  6c6668:	c4 c1 04 58 c1       	vaddps ymm0,ymm15,ymm9
  6c666d:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  6c6673:	c4 41 04 5c f9       	vsubps ymm15,ymm15,ymm9
  6c6678:	c4 c1 24 58 c0       	vaddps ymm0,ymm11,ymm8
  6c667d:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  6c6683:	c4 41 24 5c c0       	vsubps ymm8,ymm11,ymm8
  6c6688:	c5 2c 58 d9          	vaddps ymm11,ymm10,ymm1
  6c668c:	c4 c1 74 5c ca       	vsubps ymm1,ymm1,ymm10
  6c6691:	c5 94 58 ee          	vaddps ymm5,ymm13,ymm6
  6c6695:	c5 94 5c f6          	vsubps ymm6,ymm13,ymm6
  6c6699:	c5 fc 28 44 24 20    	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  6c669f:	c5 1c 58 e8          	vaddps ymm13,ymm12,ymm0
  6c66a3:	c4 41 7c 5c f4       	vsubps ymm14,ymm0,ymm12
  6c66a8:	c5 ec 58 e3          	vaddps ymm4,ymm2,ymm3
  6c66ac:	c5 e4 5c c2          	vsubps ymm0,ymm3,ymm2
  6c66b0:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  6c66b6:	c4 41 04 58 c8       	vaddps ymm9,ymm15,ymm8
  6c66bb:	c4 c1 04 5c c0       	vsubps ymm0,ymm15,ymm8
  6c66c0:	c5 fc 29 84 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm0
  6c66c7:	00 00 
  6c66c9:	c4 e2 7d 18 05 ca ec 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9aecca]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  6c66d0:	9a ff 
  6c66d2:	c5 fc 59 94 24 e0 01 	vmulps ymm2,ymm0,YMMWORD PTR [rsp+0x1e0]
  6c66d9:	00 00 
  6c66db:	c5 c4 59 d8          	vmulps ymm3,ymm7,ymm0
  6c66df:	c5 6c 5c c3          	vsubps ymm8,ymm2,ymm3
  6c66e3:	c5 ec 58 db          	vaddps ymm3,ymm2,ymm3
  6c66e7:	c5 fc 59 94 24 e0 00 	vmulps ymm2,ymm0,YMMWORD PTR [rsp+0xe0]
  6c66ee:	00 00 
  6c66f0:	c5 fc 59 bc 24 c0 00 	vmulps ymm7,ymm0,YMMWORD PTR [rsp+0xc0]
  6c66f7:	00 00 
  6c66f9:	c5 ec 58 c7          	vaddps ymm0,ymm2,ymm7
  6c66fd:	c5 c4 5c d2          	vsubps ymm2,ymm7,ymm2
  6c6701:	c5 74 58 e6          	vaddps ymm12,ymm1,ymm6
  6c6705:	c5 74 5c fe          	vsubps ymm15,ymm1,ymm6
  6c6709:	c5 94 58 c8          	vaddps ymm1,ymm13,ymm0
  6c670d:	c5 14 5c d0          	vsubps ymm10,ymm13,ymm0
  6c6711:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  6c6717:	c5 fc 5c fd          	vsubps ymm7,ymm0,ymm5
  6c671b:	c5 fc 58 ed          	vaddps ymm5,ymm0,ymm5
  6c671f:	c5 3c 58 ec          	vaddps ymm13,ymm8,ymm4
  6c6723:	c4 c1 5c 5c f0       	vsubps ymm6,ymm4,ymm8
  6c6728:	c5 fc 28 44 24 60    	vmovaps ymm0,YMMWORD PTR [rsp+0x60]
  6c672e:	c5 24 5c c0          	vsubps ymm8,ymm11,ymm0
  6c6732:	c5 a4 58 e0          	vaddps ymm4,ymm11,ymm0
  6c6736:	c5 54 14 dc          	vunpcklps ymm11,ymm5,ymm4
  6c673a:	c5 d0 14 c4          	vunpcklps xmm0,xmm5,xmm4
  6c673e:	c5 d0 15 e4          	vunpckhps xmm4,xmm5,xmm4
  6c6742:	c5 f8 11 64 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm4
  6c6748:	c5 8c 58 eb          	vaddps ymm5,ymm14,ymm3
  6c674c:	c5 8c 5c db          	vsubps ymm3,ymm14,ymm3
  6c6750:	c5 f8 11 04 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm0
  6c6755:	c5 fc 28 64 24 20    	vmovaps ymm4,YMMWORD PTR [rsp+0x20]
  6c675b:	c5 dc 58 c2          	vaddps ymm0,ymm4,ymm2
  6c675f:	c4 63 7d 19 5c 16 20 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x20],ymm11,0x1
  6c6766:	01 
  6c6767:	c5 dc 5c e2          	vsubps ymm4,ymm4,ymm2
  6c676b:	c4 c1 74 14 d5       	vunpcklps ymm2,ymm1,ymm13
  6c6770:	c4 41 70 14 dd       	vunpcklps xmm11,xmm1,xmm13
  6c6775:	c4 c1 70 15 cd       	vunpckhps xmm1,xmm1,xmm13
  6c677a:	c5 f8 11 4c 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm1
  6c6780:	c5 78 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm11
  6c6786:	c4 e3 7d 19 54 16 50 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x50],ymm2,0x1
  6c678d:	01 
  6c678e:	c4 c1 34 14 cc       	vunpcklps ymm1,ymm9,ymm12
  6c6793:	c4 c1 30 14 d4       	vunpcklps xmm2,xmm9,xmm12
  6c6798:	c4 41 30 15 cc       	vunpckhps xmm9,xmm9,xmm12
  6c679d:	c5 78 11 4c 16 70    	vmovups XMMWORD PTR [rsi+rdx*1+0x70],xmm9
  6c67a3:	c5 f8 11 54 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm2
  6c67a9:	c4 e3 7d 19 8c 16 80 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x80],ymm1,0x1
  6c67b0:	00 00 00 01 
  6c67b4:	c5 d4 14 c8          	vunpcklps ymm1,ymm5,ymm0
  6c67b8:	c5 d0 14 d0          	vunpcklps xmm2,xmm5,xmm0
  6c67bc:	c5 d0 15 c0          	vunpckhps xmm0,xmm5,xmm0
  6c67c0:	c5 f8 11 84 16 a0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa0],xmm0
  6c67c7:	00 00 
  6c67c9:	c5 f8 11 94 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm2
  6c67d0:	00 00 
  6c67d2:	c4 e3 7d 19 8c 16 b0 	vextractf128 XMMWORD PTR [rsi+rdx*1+0xb0],ymm1,0x1
  6c67d9:	00 00 00 01 
  6c67dd:	c4 c1 44 14 c0       	vunpcklps ymm0,ymm7,ymm8
  6c67e2:	c4 c1 40 14 c8       	vunpcklps xmm1,xmm7,xmm8
  6c67e7:	c4 c1 40 15 d0       	vunpckhps xmm2,xmm7,xmm8
  6c67ec:	c5 f8 11 94 16 d0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xd0],xmm2
  6c67f3:	00 00 
  6c67f5:	c5 f8 11 8c 16 c0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xc0],xmm1
  6c67fc:	00 00 
  6c67fe:	c4 e3 7d 19 84 16 e0 	vextractf128 XMMWORD PTR [rsi+rdx*1+0xe0],ymm0,0x1
  6c6805:	00 00 00 01 
  6c6809:	c5 ac 14 c6          	vunpcklps ymm0,ymm10,ymm6
  6c680d:	c5 a8 14 ce          	vunpcklps xmm1,xmm10,xmm6
  6c6811:	c5 a8 15 d6          	vunpckhps xmm2,xmm10,xmm6
  6c6815:	c5 f8 11 94 16 00 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x100],xmm2
  6c681c:	00 00 
  6c681e:	c5 f8 11 8c 16 f0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xf0],xmm1
  6c6825:	00 00 
  6c6827:	c4 e3 7d 19 84 16 10 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x110],ymm0,0x1
  6c682e:	01 00 00 01 
  6c6832:	c5 fc 28 94 24 80 00 	vmovaps ymm2,YMMWORD PTR [rsp+0x80]
  6c6839:	00 00 
  6c683b:	c4 c1 6c 14 c7       	vunpcklps ymm0,ymm2,ymm15
  6c6840:	c4 c1 68 14 cf       	vunpcklps xmm1,xmm2,xmm15
  6c6845:	c4 c1 68 15 d7       	vunpckhps xmm2,xmm2,xmm15
  6c684a:	c5 f8 11 94 16 30 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x130],xmm2
  6c6851:	00 00 
  6c6853:	c5 f8 11 8c 16 20 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x120],xmm1
  6c685a:	00 00 
  6c685c:	c4 e3 7d 19 84 16 40 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x140],ymm0,0x1
  6c6863:	01 00 00 01 
  6c6867:	c5 e4 14 c4          	vunpcklps ymm0,ymm3,ymm4
  6c686b:	c5 e0 14 cc          	vunpcklps xmm1,xmm3,xmm4
  6c686f:	c5 e0 15 d4          	vunpckhps xmm2,xmm3,xmm4
  6c6873:	c5 f8 11 94 16 60 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x160],xmm2
  6c687a:	00 00 
  6c687c:	c5 f8 11 8c 16 50 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x150],xmm1
  6c6883:	00 00 
  6c6885:	c4 e3 7d 19 84 16 70 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x170],ymm0,0x1
  6c688c:	01 00 00 01 
  6c6890:	48 81 c2 80 01 00 00 	add    rdx,0x180
  6c6897:	48 39 d0             	cmp    rax,rdx
  6c689a:	0f 85 d0 f7 ff ff    	jne    6c6070 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  6c68a0:	48 89 ec             	mov    rsp,rbp
  6c68a3:	5d                   	pop    rbp
  6c68a4:	c5 f8 77             	vzeroupper
  6c68a7:	c3                   	ret
