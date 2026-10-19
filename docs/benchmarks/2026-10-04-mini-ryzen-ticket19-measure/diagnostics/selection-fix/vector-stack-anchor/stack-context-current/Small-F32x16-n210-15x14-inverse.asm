
target/ticket19/selection-fix/vector-stack-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a0f0c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a0f0c0:	55                   	push   rbp
  a0f0c1:	48 89 e5             	mov    rbp,rsp
  a0f0c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a0f0c8:	48 81 ec 00 08 00 00 	sub    rsp,0x800
  a0f0cf:	c6 84 24 80 07 00 00 	mov    BYTE PTR [rsp+0x780],0x0
  a0f0d6:	00 
  a0f0d7:	48 8d 84 24 80 07 00 	lea    rax,[rsp+0x780]
  a0f0de:	00 
  a0f0df:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
  a0f0e6:	00 
  a0f0e7:	48 8d 84 24 b8 00 00 	lea    rax,[rsp+0xb8]
  a0f0ee:	00 
  a0f0ef:	62 61 7c 48 10 0f    	vmovups zmm25,ZMMWORD PTR [rdi]
  a0f0f5:	c5 f8 10 47 60       	vmovups xmm0,XMMWORD PTR [rdi+0x60]
  a0f0fa:	c5 fc 10 4f 40       	vmovups ymm1,YMMWORD PTR [rdi+0x40]
  a0f0ff:	c4 e3 79 21 47 64 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x64],0x10
  a0f106:	c4 e2 79 18 57 68    	vbroadcastss xmm2,DWORD PTR [rdi+0x68]
  a0f10c:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a0f112:	c4 e3 79 21 47 6c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6c],0x30
  a0f119:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0f120:	b0 3f                	mov    al,0x3f
  a0f122:	c5 fb 92 c8          	kmovd  k1,eax
  a0f126:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0f12c:	62 e1 7c 48 28 1d 8a 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff67fb8a]        # 8ecc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c170>
  a0f133:	fb 67 ff 
  a0f136:	62 91 7c 48 28 d9    	vmovaps zmm3,zmm25
  a0f13c:	62 f2 65 40 7f d8    	vpermt2ps zmm3,zmm19,zmm0
  a0f142:	62 e1 7c 48 28 2d b4 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff67fbb4]        # 8ed00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c1b0>
  a0f149:	fb 67 ff 
  a0f14c:	62 62 55 40 7f c8    	vpermt2ps zmm25,zmm21,zmm0
  a0f152:	62 f1 7c 48 10 a7 70 	vmovups zmm4,ZMMWORD PTR [rdi+0x70]
  a0f159:	00 00 00 
  a0f15c:	c5 f8 10 87 d0 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xd0]
  a0f163:	00 
  a0f164:	c4 e3 79 21 87 d4 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xd4],0x10
  a0f16b:	00 00 10 
  a0f16e:	c5 fc 10 8f b0 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xb0]
  a0f175:	00 
  a0f176:	c4 e2 79 18 97 d8 00 	vbroadcastss xmm2,DWORD PTR [rdi+0xd8]
  a0f17d:	00 00 
  a0f17f:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a0f185:	c4 e3 79 21 87 dc 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xdc],0x30
  a0f18c:	00 00 30 
  a0f18f:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0f196:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0f19c:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a0f1a2:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0f1a8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a0f1af:	01 
  a0f1b0:	62 f2 55 40 7f e0    	vpermt2ps zmm4,zmm21,zmm0
  a0f1b6:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm4
  a0f1bd:	06 
  a0f1be:	c5 f8 10 87 40 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x140]
  a0f1c5:	00 
  a0f1c6:	c4 e3 79 21 87 44 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x144],0x10
  a0f1cd:	00 00 10 
  a0f1d0:	c4 e2 79 18 8f 48 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x148]
  a0f1d7:	00 00 
  a0f1d9:	62 f1 7c 48 10 97 e0 	vmovups zmm2,ZMMWORD PTR [rdi+0xe0]
  a0f1e0:	00 00 00 
  a0f1e3:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0f1e9:	c4 e3 79 21 87 4c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x14c],0x30
  a0f1f0:	00 00 30 
  a0f1f3:	c5 fc 10 8f 20 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x120]
  a0f1fa:	00 
  a0f1fb:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0f202:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0f208:	62 61 7c 48 28 fa    	vmovaps zmm31,zmm2
  a0f20e:	62 62 65 40 7f f8    	vpermt2ps zmm31,zmm19,zmm0
  a0f214:	62 f2 55 40 7f d0    	vpermt2ps zmm2,zmm21,zmm0
  a0f21a:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a0f220:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm2
  a0f227:	15 
  a0f228:	62 f1 7c 48 10 a7 50 	vmovups zmm4,ZMMWORD PTR [rdi+0x150]
  a0f22f:	01 00 00 
  a0f232:	c5 f8 10 87 b0 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x1b0]
  a0f239:	00 
  a0f23a:	c4 e3 79 21 87 b4 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1b4],0x10
  a0f241:	00 00 10 
  a0f244:	c4 e2 79 18 8f b8 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x1b8]
  a0f24b:	00 00 
  a0f24d:	c5 fc 10 97 90 01 00 	vmovups ymm2,YMMWORD PTR [rdi+0x190]
  a0f254:	00 
  a0f255:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0f25b:	c4 e3 79 21 87 bc 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1bc],0x30
  a0f262:	00 00 30 
  a0f265:	62 f3 6d 48 18 c0 02 	vinsertf32x4 zmm0,zmm2,xmm0,0x2
  a0f26c:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0f272:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a0f278:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0f27e:	62 61 7c 48 28 d9    	vmovaps zmm27,zmm1
  a0f284:	62 f2 55 40 7f e0    	vpermt2ps zmm4,zmm21,zmm0
  a0f28a:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a0f290:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm4
  a0f297:	13 
  a0f298:	62 f1 7c 48 10 67 07 	vmovups zmm4,ZMMWORD PTR [rdi+0x1c0]
  a0f29f:	c5 f8 10 87 20 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x220]
  a0f2a6:	00 
  a0f2a7:	c5 fc 10 8f 00 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x200]
  a0f2ae:	00 
  a0f2af:	c4 e3 79 21 87 24 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x224],0x10
  a0f2b6:	00 00 10 
  a0f2b9:	c4 e2 79 18 97 28 02 	vbroadcastss xmm2,DWORD PTR [rdi+0x228]
  a0f2c0:	00 00 
  a0f2c2:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a0f2c8:	c4 e3 79 21 87 2c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x22c],0x30
  a0f2cf:	00 00 30 
  a0f2d2:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0f2d9:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0f2df:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a0f2e5:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0f2eb:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a0f2f2:	03 
  a0f2f3:	62 f2 55 40 7f e0    	vpermt2ps zmm4,zmm21,zmm0
  a0f2f9:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm4
  a0f300:	04 
  a0f301:	62 71 7c 48 10 87 30 	vmovups zmm8,ZMMWORD PTR [rdi+0x230]
  a0f308:	02 00 00 
  a0f30b:	c5 f8 10 87 90 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x290]
  a0f312:	00 
  a0f313:	c4 e3 79 21 87 94 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x294],0x10
  a0f31a:	00 00 10 
  a0f31d:	c5 fc 10 8f 70 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x270]
  a0f324:	00 
  a0f325:	c4 e2 79 18 a7 98 02 	vbroadcastss xmm4,DWORD PTR [rdi+0x298]
  a0f32c:	00 00 
  a0f32e:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a0f334:	c4 e3 79 21 87 9c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x29c],0x30
  a0f33b:	00 00 30 
  a0f33e:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0f345:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0f34b:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a0f351:	62 72 65 40 7f e8    	vpermt2ps zmm13,zmm19,zmm0
  a0f357:	62 72 55 40 7f c0    	vpermt2ps zmm8,zmm21,zmm0
  a0f35d:	c5 f8 10 87 00 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x300]
  a0f364:	00 
  a0f365:	c4 e3 79 21 87 04 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x304],0x10
  a0f36c:	00 00 10 
  a0f36f:	c4 e2 79 18 8f 08 03 	vbroadcastss xmm1,DWORD PTR [rdi+0x308]
  a0f376:	00 00 
  a0f378:	62 f1 7c 48 10 a7 a0 	vmovups zmm4,ZMMWORD PTR [rdi+0x2a0]
  a0f37f:	02 00 00 
  a0f382:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0f388:	c4 e3 79 21 87 0c 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x30c],0x30
  a0f38f:	00 00 30 
  a0f392:	c5 fc 10 8f e0 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x2e0]
  a0f399:	00 
  a0f39a:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0f3a1:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0f3a7:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a0f3ad:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0f3b3:	62 f1 7c 48 29 0c 24 	vmovaps ZMMWORD PTR [rsp],zmm1
  a0f3ba:	62 f2 55 40 7f e0    	vpermt2ps zmm4,zmm21,zmm0
  a0f3c0:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm4
  a0f3c7:	0f 
  a0f3c8:	62 71 7c 48 10 b7 10 	vmovups zmm14,ZMMWORD PTR [rdi+0x310]
  a0f3cf:	03 00 00 
  a0f3d2:	c5 f8 10 87 70 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x370]
  a0f3d9:	00 
  a0f3da:	c4 e3 79 21 87 74 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x374],0x10
  a0f3e1:	00 00 10 
  a0f3e4:	c4 e2 79 18 8f 78 03 	vbroadcastss xmm1,DWORD PTR [rdi+0x378]
  a0f3eb:	00 00 
  a0f3ed:	c5 fc 10 a7 50 03 00 	vmovups ymm4,YMMWORD PTR [rdi+0x350]
  a0f3f4:	00 
  a0f3f5:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0f3fb:	c4 e3 79 21 87 7c 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x37c],0x30
  a0f402:	00 00 30 
  a0f405:	62 f3 5d 48 18 c0 02 	vinsertf32x4 zmm0,zmm4,xmm0,0x2
  a0f40c:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0f412:	62 41 7c 48 28 ee    	vmovaps zmm29,zmm14
  a0f418:	62 62 65 40 7f e8    	vpermt2ps zmm29,zmm19,zmm0
  a0f41e:	62 72 55 40 7f f0    	vpermt2ps zmm14,zmm21,zmm0
  a0f424:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm14
  a0f42b:	09 
  a0f42c:	62 71 7c 48 10 7f 0e 	vmovups zmm15,ZMMWORD PTR [rdi+0x380]
  a0f433:	c5 f8 10 87 e0 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x3e0]
  a0f43a:	00 
  a0f43b:	c5 fc 10 8f c0 03 00 	vmovups ymm1,YMMWORD PTR [rdi+0x3c0]
  a0f442:	00 
  a0f443:	c4 e3 79 21 87 e4 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x3e4],0x10
  a0f44a:	00 00 10 
  a0f44d:	c4 e2 79 18 a7 e8 03 	vbroadcastss xmm4,DWORD PTR [rdi+0x3e8]
  a0f454:	00 00 
  a0f456:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a0f45c:	c4 e3 79 21 87 ec 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x3ec],0x30
  a0f463:	00 00 30 
  a0f466:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0f46d:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0f473:	62 d1 7c 48 28 cf    	vmovaps zmm1,zmm15
  a0f479:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0f47f:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a0f485:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm1
  a0f48c:	11 
  a0f48d:	62 72 55 40 7f f8    	vpermt2ps zmm15,zmm21,zmm0
  a0f493:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a0f499:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm15
  a0f4a0:	0e 
  a0f4a1:	62 71 7c 48 10 bf f0 	vmovups zmm15,ZMMWORD PTR [rdi+0x3f0]
  a0f4a8:	03 00 00 
  a0f4ab:	c5 f8 10 87 50 04 00 	vmovups xmm0,XMMWORD PTR [rdi+0x450]
  a0f4b2:	00 
  a0f4b3:	c4 e3 79 21 87 54 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x454],0x10
  a0f4ba:	00 00 10 
  a0f4bd:	c5 fc 10 8f 30 04 00 	vmovups ymm1,YMMWORD PTR [rdi+0x430]
  a0f4c4:	00 
  a0f4c5:	c4 e2 79 18 a7 58 04 	vbroadcastss xmm4,DWORD PTR [rdi+0x458]
  a0f4cc:	00 00 
  a0f4ce:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a0f4d4:	c4 e3 79 21 87 5c 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x45c],0x30
  a0f4db:	00 00 30 
  a0f4de:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0f4e5:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0f4eb:	62 d1 7c 48 28 cf    	vmovaps zmm1,zmm15
  a0f4f1:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0f4f7:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a0f4fe:	05 
  a0f4ff:	62 72 55 40 7f f8    	vpermt2ps zmm15,zmm21,zmm0
  a0f505:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm15
  a0f50c:	0d 
  a0f50d:	c5 f8 10 87 c0 04 00 	vmovups xmm0,XMMWORD PTR [rdi+0x4c0]
  a0f514:	00 
  a0f515:	c4 e3 79 21 87 c4 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x4c4],0x10
  a0f51c:	00 00 10 
  a0f51f:	c4 e2 79 18 8f c8 04 	vbroadcastss xmm1,DWORD PTR [rdi+0x4c8]
  a0f526:	00 00 
  a0f528:	62 61 7c 48 10 97 60 	vmovups zmm26,ZMMWORD PTR [rdi+0x460]
  a0f52f:	04 00 00 
  a0f532:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0f538:	c4 e3 79 21 87 cc 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x4cc],0x30
  a0f53f:	00 00 30 
  a0f542:	c5 fc 10 8f a0 04 00 	vmovups ymm1,YMMWORD PTR [rdi+0x4a0]
  a0f549:	00 
  a0f54a:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0f551:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0f557:	62 81 7c 48 28 c2    	vmovaps zmm16,zmm26
  a0f55d:	62 e2 65 40 7f c0    	vpermt2ps zmm16,zmm19,zmm0
  a0f563:	62 62 55 40 7f d0    	vpermt2ps zmm26,zmm21,zmm0
  a0f569:	62 71 7c 48 10 8f d0 	vmovups zmm9,ZMMWORD PTR [rdi+0x4d0]
  a0f570:	04 00 00 
  a0f573:	c5 f8 10 87 30 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x530]
  a0f57a:	00 
  a0f57b:	c4 e3 79 21 87 34 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x534],0x10
  a0f582:	00 00 10 
  a0f585:	c4 e2 79 18 8f 38 05 	vbroadcastss xmm1,DWORD PTR [rdi+0x538]
  a0f58c:	00 00 
  a0f58e:	c5 fc 10 a7 10 05 00 	vmovups ymm4,YMMWORD PTR [rdi+0x510]
  a0f595:	00 
  a0f596:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0f59c:	c4 e3 79 21 87 3c 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x53c],0x30
  a0f5a3:	00 00 30 
  a0f5a6:	62 f3 5d 48 18 c0 02 	vinsertf32x4 zmm0,zmm4,xmm0,0x2
  a0f5ad:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0f5b3:	62 d1 7c 48 28 e9    	vmovaps zmm5,zmm9
  a0f5b9:	62 f2 65 40 7f e8    	vpermt2ps zmm5,zmm19,zmm0
  a0f5bf:	62 72 55 40 7f c8    	vpermt2ps zmm9,zmm21,zmm0
  a0f5c5:	62 71 7c 48 10 7f 15 	vmovups zmm15,ZMMWORD PTR [rdi+0x540]
  a0f5cc:	c5 f8 10 87 a0 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x5a0]
  a0f5d3:	00 
  a0f5d4:	c5 fc 10 8f 80 05 00 	vmovups ymm1,YMMWORD PTR [rdi+0x580]
  a0f5db:	00 
  a0f5dc:	c4 e3 79 21 87 a4 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x5a4],0x10
  a0f5e3:	00 00 10 
  a0f5e6:	c4 e2 79 18 a7 a8 05 	vbroadcastss xmm4,DWORD PTR [rdi+0x5a8]
  a0f5ed:	00 00 
  a0f5ef:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a0f5f5:	c4 e3 79 21 87 ac 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x5ac],0x30
  a0f5fc:	00 00 30 
  a0f5ff:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0f606:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0f60c:	62 41 7c 48 28 c7    	vmovaps zmm24,zmm15
  a0f612:	62 62 65 40 7f c0    	vpermt2ps zmm24,zmm19,zmm0
  a0f618:	62 72 55 40 7f f8    	vpermt2ps zmm15,zmm21,zmm0
  a0f61e:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm15
  a0f625:	14 
  a0f626:	62 e1 7c 48 10 bf b0 	vmovups zmm23,ZMMWORD PTR [rdi+0x5b0]
  a0f62d:	05 00 00 
  a0f630:	c5 f8 10 87 10 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x610]
  a0f637:	00 
  a0f638:	c4 e3 79 21 87 14 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x614],0x10
  a0f63f:	00 00 10 
  a0f642:	c5 fc 10 8f f0 05 00 	vmovups ymm1,YMMWORD PTR [rdi+0x5f0]
  a0f649:	00 
  a0f64a:	c4 e2 79 18 a7 18 06 	vbroadcastss xmm4,DWORD PTR [rdi+0x618]
  a0f651:	00 00 
  a0f653:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a0f659:	c4 e3 79 21 87 1c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x61c],0x30
  a0f660:	00 00 30 
  a0f663:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0f66a:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0f670:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a0f676:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0f67c:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a0f682:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm1
  a0f689:	17 
  a0f68a:	62 e2 55 40 7f f8    	vpermt2ps zmm23,zmm21,zmm0
  a0f690:	62 b1 7c 48 28 e7    	vmovaps zmm4,zmm23
  a0f696:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm23
  a0f69d:	07 
  a0f69e:	c5 f8 10 87 80 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x680]
  a0f6a5:	00 
  a0f6a6:	c4 e3 79 21 87 84 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x684],0x10
  a0f6ad:	00 00 10 
  a0f6b0:	c4 e2 79 18 8f 88 06 	vbroadcastss xmm1,DWORD PTR [rdi+0x688]
  a0f6b7:	00 00 
  a0f6b9:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0f6bf:	c5 fc 10 8f 60 06 00 	vmovups ymm1,YMMWORD PTR [rdi+0x660]
  a0f6c6:	00 
  a0f6c7:	c4 e3 79 21 87 8c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x68c],0x30
  a0f6ce:	00 00 30 
  a0f6d1:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0f6d8:	62 f1 7c 48 10 97 20 	vmovups zmm2,ZMMWORD PTR [rdi+0x620]
  a0f6df:	06 00 00 
  a0f6e2:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0f6e8:	62 e2 6d 48 77 d8    	vpermi2ps zmm19,zmm2,zmm0
  a0f6ee:	62 f2 55 40 7f d0    	vpermt2ps zmm2,zmm21,zmm0
  a0f6f4:	62 f1 74 40 58 cf    	vaddps zmm1,zmm17,zmm7
  a0f6fa:	62 62 7d 48 18 25 e4 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff665fe4]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a0f701:	5f 66 ff 
  a0f704:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a0f70a:	62 d2 75 48 a8 c0    	vfmadd213ps zmm0,zmm1,zmm8
  a0f710:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a0f716:	62 e2 7d 48 18 3d 24 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff665f24]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a0f71d:	5f 66 ff 
  a0f720:	62 f1 3c 48 58 c1    	vaddps zmm0,zmm8,zmm1
  a0f726:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm0
  a0f72d:	0c 
  a0f72e:	62 72 45 40 bc c1    	vfnmadd231ps zmm8,zmm23,zmm1
  a0f734:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm8
  a0f73b:	0a 
  a0f73c:	62 d1 5c 48 58 ce    	vaddps zmm1,zmm4,zmm14
  a0f742:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a0f748:	62 92 75 48 a8 c2    	vfmadd213ps zmm0,zmm1,zmm26
  a0f74e:	62 f1 2c 40 58 e1    	vaddps zmm4,zmm26,zmm1
  a0f754:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm4
  a0f75b:	08 
  a0f75c:	62 62 45 40 bc d1    	vfnmadd231ps zmm26,zmm23,zmm1
  a0f762:	62 d1 2c 48 58 cf    	vaddps zmm1,zmm10,zmm15
  a0f768:	62 91 7c 48 28 e4    	vmovaps zmm4,zmm28
  a0f76e:	62 92 75 48 a8 e1    	vfmadd213ps zmm4,zmm1,zmm25
  a0f774:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a0f77a:	62 f1 34 40 58 e1    	vaddps zmm4,zmm25,zmm1
  a0f780:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm4
  a0f787:	12 
  a0f788:	62 62 45 40 bc c9    	vfnmadd231ps zmm25,zmm23,zmm1
  a0f78e:	62 91 24 48 58 cf    	vaddps zmm1,zmm11,zmm31
  a0f794:	62 01 7c 48 28 f4    	vmovaps zmm30,zmm28
  a0f79a:	62 c1 7c 48 28 f5    	vmovaps zmm22,zmm13
  a0f7a0:	62 42 75 48 a8 f5    	vfmadd213ps zmm30,zmm1,zmm13
  a0f7a6:	62 f1 14 48 58 e1    	vaddps zmm4,zmm13,zmm1
  a0f7ac:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm4
  a0f7b3:	10 
  a0f7b4:	62 e2 45 40 bc f1    	vfnmadd231ps zmm22,zmm23,zmm1
  a0f7ba:	62 91 4c 48 58 cd    	vaddps zmm1,zmm6,zmm29
  a0f7c0:	62 11 7c 48 28 dc    	vmovaps zmm11,zmm28
  a0f7c6:	62 a1 7c 48 28 e8    	vmovaps zmm21,zmm16
  a0f7cc:	62 32 75 48 a8 d8    	vfmadd213ps zmm11,zmm1,zmm16
  a0f7d2:	62 f1 7c 40 58 e1    	vaddps zmm4,zmm16,zmm1
  a0f7d8:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm4
  a0f7df:	1d 
  a0f7e0:	62 e2 45 40 bc e9    	vfnmadd231ps zmm21,zmm23,zmm1
  a0f7e6:	62 81 7c 48 28 c3    	vmovaps zmm16,zmm27
  a0f7ec:	62 91 24 40 58 c8    	vaddps zmm1,zmm27,zmm24
  a0f7f2:	62 91 7c 48 28 f4    	vmovaps zmm6,zmm28
  a0f7f8:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a0f7fe:	62 f2 75 48 a8 f3    	vfmadd213ps zmm6,zmm1,zmm3
  a0f804:	62 61 64 48 58 d9    	vaddps zmm27,zmm3,zmm1
  a0f80a:	62 32 75 48 bc e7    	vfnmadd231ps zmm12,zmm1,zmm23
  a0f810:	62 51 7c 48 28 f9    	vmovaps zmm15,zmm9
  a0f816:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a0f81c:	62 f1 34 48 58 ca    	vaddps zmm1,zmm9,zmm2
  a0f822:	62 a2 75 48 bc cf    	vfnmadd231ps zmm17,zmm1,zmm23
  a0f828:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm17
  a0f82f:	19 
  a0f830:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x180]
  a0f837:	06 
  a0f838:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x100]
  a0f83f:	04 
  a0f840:	62 d1 74 40 58 e5    	vaddps zmm4,zmm17,zmm13
  a0f846:	62 b2 5d 48 bc c7    	vfnmadd231ps zmm0,zmm4,zmm23
  a0f84c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm0
  a0f853:	18 
  a0f854:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x3c0]
  a0f85b:	0f 
  a0f85c:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x340]
  a0f863:	0d 
  a0f864:	62 b1 5c 40 58 d2    	vaddps zmm2,zmm20,zmm18
  a0f86a:	62 32 6d 48 bc c7    	vfnmadd231ps zmm8,zmm2,zmm23
  a0f870:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm8
  a0f877:	0b 
  a0f878:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a0f87e:	62 b1 54 48 58 db    	vaddps zmm3,zmm5,zmm19
  a0f884:	62 22 65 48 bc f7    	vfnmadd231ps zmm30,zmm3,zmm23
  a0f88a:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x40]
  a0f891:	01 
  a0f892:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0xc0]
  a0f899:	03 
  a0f89a:	62 d1 34 48 58 e8    	vaddps zmm5,zmm9,zmm8
  a0f8a0:	62 32 55 48 bc df    	vfnmadd231ps zmm11,zmm5,zmm23
  a0f8a6:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm11
  a0f8ad:	16 
  a0f8ae:	62 71 7c 48 28 1c 24 	vmovaps zmm11,ZMMWORD PTR [rsp]
  a0f8b5:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x140]
  a0f8bc:	05 
  a0f8bd:	62 f1 24 48 58 c7    	vaddps zmm0,zmm11,zmm7
  a0f8c3:	62 b2 7d 48 bc f7    	vfnmadd231ps zmm6,zmm0,zmm23
  a0f8c9:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm6
  a0f8d0:	1c 
  a0f8d1:	62 f1 74 48 58 74 24 	vaddps zmm6,zmm1,ZMMWORD PTR [rsp+0x300]
  a0f8d8:	0c 
  a0f8d9:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm6
  a0f8e0:	1b 
  a0f8e1:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x280]
  a0f8e8:	0a 
  a0f8e9:	62 e2 1d 40 b8 f9    	vfmadd231ps zmm23,zmm28,zmm1
  a0f8ef:	62 f1 5c 48 58 4c 24 	vaddps zmm1,zmm4,ZMMWORD PTR [rsp+0x200]
  a0f8f6:	08 
  a0f8f7:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm1
  a0f8fe:	1a 
  a0f8ff:	62 62 1d 40 b8 d4    	vfmadd231ps zmm26,zmm28,zmm4
  a0f905:	62 f1 6c 48 58 4c 24 	vaddps zmm1,zmm2,ZMMWORD PTR [rsp+0x480]
  a0f90c:	12 
  a0f90d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm1
  a0f914:	12 
  a0f915:	62 62 1d 40 b8 ca    	vfmadd231ps zmm25,zmm28,zmm2
  a0f91b:	62 f1 64 48 58 4c 24 	vaddps zmm1,zmm3,ZMMWORD PTR [rsp+0x400]
  a0f922:	10 
  a0f923:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a0f92a:	0c 
  a0f92b:	62 e2 1d 40 b8 f3    	vfmadd231ps zmm22,zmm28,zmm3
  a0f931:	62 f1 24 40 58 c8    	vaddps zmm1,zmm27,zmm0
  a0f937:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a0f93e:	0a 
  a0f93f:	62 12 7d 48 b8 e4    	vfmadd231ps zmm12,zmm0,zmm28
  a0f945:	62 e2 1d 40 b8 ed    	vfmadd231ps zmm21,zmm28,zmm5
  a0f94b:	62 f1 54 48 58 44 24 	vaddps zmm0,zmm5,ZMMWORD PTR [rsp+0x740]
  a0f952:	1d 
  a0f953:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a0f95a:	08 
  a0f95b:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x440]
  a0f962:	11 
  a0f963:	62 91 7c 48 5c c7    	vsubps zmm0,zmm0,zmm31
  a0f969:	62 b1 2c 48 5c d3    	vsubps zmm2,zmm10,zmm19
  a0f96f:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x5c0]
  a0f976:	17 
  a0f977:	62 91 74 48 5c e5    	vsubps zmm4,zmm1,zmm29
  a0f97d:	62 d1 34 48 5c e8    	vsubps zmm5,zmm9,zmm8
  a0f983:	62 01 7c 40 5c d8    	vsubps zmm27,zmm16,zmm24
  a0f989:	62 f1 24 48 5c ff    	vsubps zmm7,zmm11,zmm7
  a0f98f:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x380]
  a0f996:	0e 
  a0f997:	62 71 74 48 5c 44 24 	vsubps zmm8,zmm1,ZMMWORD PTR [rsp+0x540]
  a0f99e:	15 
  a0f99f:	62 51 04 48 5c de    	vsubps zmm11,zmm15,zmm14
  a0f9a5:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a0f9ac:	07 
  a0f9ad:	62 e1 74 48 5c 44 24 	vsubps zmm16,zmm1,ZMMWORD PTR [rsp+0x240]
  a0f9b4:	09 
  a0f9b5:	62 c1 74 40 5c dd    	vsubps zmm19,zmm17,zmm13
  a0f9bb:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x4c0]
  a0f9c2:	13 
  a0f9c3:	62 61 74 48 5c 44 24 	vsubps zmm24,zmm1,ZMMWORD PTR [rsp+0x500]
  a0f9ca:	14 
  a0f9cb:	62 62 7d 48 18 25 83 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff665d83]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a0f9d2:	5d 66 ff 
  a0f9d5:	62 21 5c 40 5c ea    	vsubps zmm29,zmm20,zmm18
  a0f9db:	62 11 6c 48 59 cc    	vmulps zmm9,zmm2,zmm28
  a0f9e1:	62 f2 7d 48 18 35 b5 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff6659b5]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a0f9e8:	59 66 ff 
  a0f9eb:	62 72 7d 48 b8 ce    	vfmadd231ps zmm9,zmm0,zmm6
  a0f9f1:	62 91 7c 48 59 dc    	vmulps zmm3,zmm0,zmm28
  a0f9f7:	62 f2 4d 48 bc da    	vfnmadd231ps zmm3,zmm6,zmm2
  a0f9fd:	62 11 54 48 59 fc    	vmulps zmm15,zmm5,zmm28
  a0fa03:	62 72 5d 48 b8 fe    	vfmadd231ps zmm15,zmm4,zmm6
  a0fa09:	62 91 5c 48 59 d4    	vmulps zmm2,zmm4,zmm28
  a0fa0f:	62 f2 4d 48 bc d5    	vfnmadd231ps zmm2,zmm6,zmm5
  a0fa15:	62 81 44 48 59 cc    	vmulps zmm17,zmm7,zmm28
  a0fa1b:	62 e2 25 40 b8 ce    	vfmadd231ps zmm17,zmm27,zmm6
  a0fa21:	62 91 24 40 59 ec    	vmulps zmm5,zmm27,zmm28
  a0fa27:	62 f2 4d 48 bc ef    	vfnmadd231ps zmm5,zmm6,zmm7
  a0fa2d:	62 01 24 48 59 dc    	vmulps zmm27,zmm11,zmm28
  a0fa33:	62 62 3d 48 b8 de    	vfmadd231ps zmm27,zmm8,zmm6
  a0fa39:	62 91 3c 48 59 cc    	vmulps zmm1,zmm8,zmm28
  a0fa3f:	62 d2 4d 48 bc cb    	vfnmadd231ps zmm1,zmm6,zmm11
  a0fa45:	62 01 64 40 59 fc    	vmulps zmm31,zmm19,zmm28
  a0fa4b:	62 62 7d 40 b8 fe    	vfmadd231ps zmm31,zmm16,zmm6
  a0fa51:	62 91 7c 40 59 c4    	vmulps zmm0,zmm16,zmm28
  a0fa57:	62 b2 4d 48 bc c3    	vfnmadd231ps zmm0,zmm6,zmm19
  a0fa5d:	62 11 14 40 59 f4    	vmulps zmm14,zmm29,zmm28
  a0fa63:	62 72 3d 40 b8 f6    	vfmadd231ps zmm14,zmm24,zmm6
  a0fa69:	62 91 3c 40 59 fc    	vmulps zmm7,zmm24,zmm28
  a0fa6f:	62 f2 15 40 bc fe    	vfnmadd231ps zmm7,zmm29,zmm6
  a0fa75:	62 91 0c 40 5c e3    	vsubps zmm4,zmm30,zmm27
  a0fa7b:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x580]
  a0fa82:	16 
  a0fa83:	62 91 3c 40 5c f7    	vsubps zmm6,zmm24,zmm31
  a0fa89:	62 71 5c 48 5c c6    	vsubps zmm8,zmm4,zmm6
  a0fa8f:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm8
  a0fa96:	03 
  a0fa97:	62 f1 5c 48 58 e6    	vaddps zmm4,zmm4,zmm6
  a0fa9d:	62 f1 7c 48 29 24 24 	vmovaps ZMMWORD PTR [rsp],zmm4
  a0faa4:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x640]
  a0faab:	19 
  a0faac:	62 d1 2c 48 58 f1    	vaddps zmm6,zmm10,zmm9
  a0fab2:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x600]
  a0fab9:	18 
  a0faba:	62 c1 5c 40 58 c7    	vaddps zmm16,zmm20,zmm15
  a0fac0:	62 b1 4c 48 58 e0    	vaddps zmm4,zmm6,zmm16
  a0fac6:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm4
  a0facd:	0e 
  a0face:	62 b1 4c 48 5c e0    	vsubps zmm4,zmm6,zmm16
  a0fad4:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm4
  a0fadb:	04 
  a0fadc:	62 f1 4c 40 5c f1    	vsubps zmm6,zmm22,zmm1
  a0fae2:	62 e1 54 40 5c c0    	vsubps zmm16,zmm21,zmm0
  a0fae8:	62 b1 4c 48 5c e0    	vsubps zmm4,zmm6,zmm16
  a0faee:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm4
  a0faf5:	05 
  a0faf6:	62 b1 4c 48 58 e0    	vaddps zmm4,zmm6,zmm16
  a0fafc:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm4
  a0fb03:	0f 
  a0fb04:	62 f1 44 40 58 f3    	vaddps zmm6,zmm23,zmm3
  a0fb0a:	62 e1 2c 40 58 c2    	vaddps zmm16,zmm26,zmm2
  a0fb10:	62 b1 4c 48 58 e0    	vaddps zmm4,zmm6,zmm16
  a0fb16:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm4
  a0fb1d:	09 
  a0fb1e:	62 b1 4c 48 5c e0    	vsubps zmm4,zmm6,zmm16
  a0fb24:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm4
  a0fb2b:	07 
  a0fb2c:	62 f1 34 40 58 e5    	vaddps zmm4,zmm25,zmm5
  a0fb32:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm4
  a0fb39:	14 
  a0fb3a:	62 f1 34 40 5c e5    	vsubps zmm4,zmm25,zmm5
  a0fb40:	62 f1 44 40 5c f3    	vsubps zmm6,zmm23,zmm3
  a0fb46:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm6
  a0fb4d:	10 
  a0fb4e:	62 71 2c 40 5c c2    	vsubps zmm8,zmm26,zmm2
  a0fb54:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm8
  a0fb5b:	11 
  a0fb5c:	62 f1 1c 48 5c d7    	vsubps zmm2,zmm12,zmm7
  a0fb62:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm2
  a0fb69:	13 
  a0fb6a:	62 d1 44 48 58 fc    	vaddps zmm7,zmm7,zmm12
  a0fb70:	62 21 74 48 58 ee    	vaddps zmm29,zmm1,zmm22
  a0fb76:	62 a1 7c 48 58 dd    	vaddps zmm19,zmm0,zmm21
  a0fb7c:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x6c0]
  a0fb83:	1b 
  a0fb84:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x680]
  a0fb8b:	1a 
  a0fb8c:	62 31 4c 40 58 d8    	vaddps zmm11,zmm22,zmm16
  a0fb92:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x480]
  a0fb99:	12 
  a0fb9a:	62 d1 74 48 58 c3    	vaddps zmm0,zmm1,zmm11
  a0fba0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a0fba7:	0d 
  a0fba8:	62 62 7d 48 18 25 ae 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff6658ae]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0fbaf:	58 66 ff 
  a0fbb2:	62 72 1d 40 ac d9    	vfnmadd213ps zmm11,zmm28,zmm1
  a0fbb8:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x300]
  a0fbbf:	0c 
  a0fbc0:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x200]
  a0fbc7:	08 
  a0fbc8:	62 f1 54 48 58 d3    	vaddps zmm2,zmm5,zmm3
  a0fbce:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x280]
  a0fbd5:	0a 
  a0fbd6:	62 f1 74 48 58 c2    	vaddps zmm0,zmm1,zmm2
  a0fbdc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a0fbe3:	01 
  a0fbe4:	62 f2 1d 40 ac d1    	vfnmadd213ps zmm2,zmm28,zmm1
  a0fbea:	62 51 4c 48 58 e8    	vaddps zmm13,zmm6,zmm8
  a0fbf0:	62 d1 5c 48 58 c5    	vaddps zmm0,zmm4,zmm13
  a0fbf6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a0fbfd:	0a 
  a0fbfe:	62 72 1d 40 ac ec    	vfnmadd213ps zmm13,zmm28,zmm4
  a0fc04:	62 91 7c 48 28 e4    	vmovaps zmm4,zmm28
  a0fc0a:	62 81 7c 48 28 fc    	vmovaps zmm23,zmm28
  a0fc10:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a0fc16:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a0fc1c:	62 21 14 40 58 d3    	vaddps zmm26,zmm29,zmm19
  a0fc22:	62 91 7c 48 28 f4    	vmovaps zmm6,zmm28
  a0fc28:	62 11 7c 48 28 c4    	vmovaps zmm8,zmm28
  a0fc2e:	62 62 2d 40 ac e7    	vfnmadd213ps zmm28,zmm26,zmm7
  a0fc34:	62 91 44 48 58 fa    	vaddps zmm7,zmm7,zmm26
  a0fc3a:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm7
  a0fc41:	06 
  a0fc42:	62 d1 2c 48 5c f9    	vsubps zmm7,zmm10,zmm9
  a0fc48:	62 51 5c 40 5c cf    	vsubps zmm9,zmm20,zmm15
  a0fc4e:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x2c0]
  a0fc55:	0b 
  a0fc56:	62 a1 2c 48 58 e1    	vaddps zmm20,zmm10,zmm17
  a0fc5c:	62 21 2c 48 5c c9    	vsubps zmm25,zmm10,zmm17
  a0fc62:	62 11 24 40 58 d6    	vaddps zmm10,zmm27,zmm30
  a0fc68:	62 11 04 40 58 e0    	vaddps zmm12,zmm31,zmm24
  a0fc6e:	62 c1 2c 48 5c d4    	vsubps zmm18,zmm10,zmm12
  a0fc74:	62 41 2c 48 58 f4    	vaddps zmm30,zmm10,zmm12
  a0fc7a:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x700]
  a0fc81:	1c 
  a0fc82:	62 51 1c 48 5c d6    	vsubps zmm10,zmm12,zmm14
  a0fc88:	62 c1 0c 48 58 ec    	vaddps zmm21,zmm14,zmm12
  a0fc8e:	62 41 44 48 58 f9    	vaddps zmm31,zmm7,zmm9
  a0fc94:	62 d1 44 48 5c f9    	vsubps zmm7,zmm7,zmm9
  a0fc9a:	62 71 54 48 5c cb    	vsubps zmm9,zmm5,zmm3
  a0fca0:	62 a1 4c 40 5c c8    	vsubps zmm17,zmm22,zmm16
  a0fca6:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x380]
  a0fcad:	0e 
  a0fcae:	62 b2 65 48 ac e4    	vfnmadd213ps zmm4,zmm3,zmm20
  a0fcb4:	62 61 5c 40 58 db    	vaddps zmm27,zmm20,zmm3
  a0fcba:	62 f1 7c 48 28 1c 24 	vmovaps zmm3,ZMMWORD PTR [rsp]
  a0fcc1:	62 c2 65 48 ac fa    	vfnmadd213ps zmm23,zmm3,zmm10
  a0fcc7:	62 71 2c 48 58 d3    	vaddps zmm10,zmm10,zmm3
  a0fccd:	62 71 7c 48 29 14 24 	vmovaps ZMMWORD PTR [rsp],zmm10
  a0fcd4:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x240]
  a0fcdb:	09 
  a0fcdc:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x500]
  a0fce3:	14 
  a0fce4:	62 d2 05 48 ac c6    	vfnmadd213ps zmm0,zmm15,zmm14
  a0fcea:	62 62 7d 48 18 05 e0 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff6655e0]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0fcf1:	55 66 ff 
  a0fcf4:	62 71 3c 40 59 54 24 	vmulps zmm10,zmm24,ZMMWORD PTR [rsp+0x140]
  a0fcfb:	05 
  a0fcfc:	62 c1 7c 48 5c e2    	vsubps zmm20,zmm0,zmm10
  a0fd02:	62 d1 7c 48 58 c2    	vaddps zmm0,zmm0,zmm10
  a0fd08:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm0
  a0fd0f:	15 
  a0fd10:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x3c0]
  a0fd17:	0f 
  a0fd18:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x4c0]
  a0fd1f:	13 
  a0fd20:	62 f2 1d 48 ac cd    	vfnmadd213ps zmm1,zmm12,zmm5
  a0fd26:	62 f1 3c 40 59 44 24 	vmulps zmm0,zmm24,ZMMWORD PTR [rsp+0x1c0]
  a0fd2d:	07 
  a0fd2e:	62 61 74 48 58 d0    	vaddps zmm26,zmm1,zmm0
  a0fd34:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a0fd3a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a0fd41:	05 
  a0fd42:	62 b1 14 40 5c c3    	vsubps zmm0,zmm29,zmm19
  a0fd48:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x400]
  a0fd4f:	10 
  a0fd50:	62 f1 74 48 5c 4c 24 	vsubps zmm1,zmm1,ZMMWORD PTR [rsp+0x440]
  a0fd57:	11 
  a0fd58:	62 e1 3c 40 59 44 24 	vmulps zmm16,zmm24,ZMMWORD PTR [rsp+0xc0]
  a0fd5f:	03 
  a0fd60:	62 e1 3c 40 59 5c 24 	vmulps zmm19,zmm24,ZMMWORD PTR [rsp+0x100]
  a0fd67:	04 
  a0fd68:	62 81 6c 40 59 f0    	vmulps zmm22,zmm18,zmm24
  a0fd6e:	62 91 44 48 59 d8    	vmulps zmm3,zmm7,zmm24
  a0fd74:	62 91 34 48 59 f8    	vmulps zmm7,zmm9,zmm24
  a0fd7a:	62 11 74 40 59 c8    	vmulps zmm9,zmm17,zmm24
  a0fd80:	62 91 7c 48 59 c0    	vmulps zmm0,zmm0,zmm24
  a0fd86:	62 91 74 48 59 c8    	vmulps zmm1,zmm1,zmm24
  a0fd8c:	62 92 05 40 ac f1    	vfnmadd213ps zmm6,zmm31,zmm25
  a0fd92:	62 01 34 40 58 ff    	vaddps zmm31,zmm25,zmm31
  a0fd98:	62 32 0d 40 ac c5    	vfnmadd213ps zmm8,zmm30,zmm21
  a0fd9e:	62 01 54 40 58 c6    	vaddps zmm24,zmm21,zmm30
  a0fda4:	62 61 24 48 5c cf    	vsubps zmm25,zmm11,zmm7
  a0fdaa:	62 61 24 48 58 f7    	vaddps zmm30,zmm11,zmm7
  a0fdb0:	62 f1 34 48 58 fa    	vaddps zmm7,zmm9,zmm2
  a0fdb6:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm7
  a0fdbd:	03 
  a0fdbe:	62 c1 6c 48 5c c9    	vsubps zmm17,zmm2,zmm9
  a0fdc4:	62 71 7c 40 58 d4    	vaddps zmm10,zmm16,zmm4
  a0fdca:	62 31 5c 48 5c c8    	vsubps zmm9,zmm4,zmm16
  a0fdd0:	62 31 44 40 5c db    	vsubps zmm11,zmm23,zmm19
  a0fdd6:	62 b1 44 40 58 d3    	vaddps zmm2,zmm23,zmm19
  a0fddc:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm2
  a0fde3:	0e 
  a0fde4:	62 d1 0c 48 58 d7    	vaddps zmm2,zmm14,zmm15
  a0fdea:	62 71 4c 40 58 fe    	vaddps zmm15,zmm22,zmm6
  a0fdf0:	62 d1 54 48 58 e4    	vaddps zmm4,zmm5,zmm12
  a0fdf6:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm4
  a0fdfd:	04 
  a0fdfe:	62 e1 14 48 5c d8    	vsubps zmm19,zmm13,zmm0
  a0fe04:	62 f1 14 48 58 e0    	vaddps zmm4,zmm13,zmm0
  a0fe0a:	62 61 1c 40 58 e9    	vaddps zmm29,zmm28,zmm1
  a0fe10:	62 f1 1c 40 5c c1    	vsubps zmm0,zmm28,zmm1
  a0fe16:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a0fe1d:	0f 
  a0fe1e:	62 71 3c 48 5c e3    	vsubps zmm12,zmm8,zmm3
  a0fe24:	62 b1 4c 48 5c ce    	vsubps zmm1,zmm6,zmm22
  a0fe2a:	62 f1 3c 48 58 db    	vaddps zmm3,zmm8,zmm3
  a0fe30:	62 f1 7c 48 28 05 46 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6b7146]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a0fe37:	71 6b ff 
  a0fe3a:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x340]
  a0fe41:	0d 
  a0fe42:	62 11 7c 48 28 f4    	vmovaps zmm14,zmm28
  a0fe48:	62 32 7d 48 7f f3    	vpermt2ps zmm14,zmm0,zmm19
  a0fe4e:	62 e1 7c 48 28 05 68 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6b7168]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a0fe55:	71 6b ff 
  a0fe58:	62 22 7d 40 7f e3    	vpermt2ps zmm28,zmm16,zmm19
  a0fe5e:	62 c1 7c 48 28 da    	vmovaps zmm19,zmm10
  a0fe64:	62 82 7d 48 7f df    	vpermt2ps zmm19,zmm0,zmm31
  a0fe6a:	62 12 7d 40 7f d7    	vpermt2ps zmm10,zmm16,zmm31
  a0fe70:	62 a1 7c 48 28 ec    	vmovaps zmm21,zmm20
  a0fe76:	62 82 7d 48 7f ee    	vpermt2ps zmm21,zmm0,zmm30
  a0fe7c:	62 82 7d 40 7f e6    	vpermt2ps zmm20,zmm16,zmm30
  a0fe82:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x280]
  a0fe89:	0a 
  a0fe8a:	62 a1 7c 48 28 fa    	vmovaps zmm23,zmm18
  a0fe90:	62 c2 7d 48 7f f9    	vpermt2ps zmm23,zmm0,zmm9
  a0fe96:	62 c2 7d 40 7f d1    	vpermt2ps zmm18,zmm16,zmm9
  a0fe9c:	62 41 7c 48 28 f7    	vmovaps zmm30,zmm15
  a0fea2:	62 62 7d 48 7f f2    	vpermt2ps zmm30,zmm0,zmm2
  a0fea8:	62 72 7d 40 7f fa    	vpermt2ps zmm15,zmm16,zmm2
  a0feae:	62 01 7c 48 28 f9    	vmovaps zmm31,zmm25
  a0feb4:	62 62 7d 48 7f fc    	vpermt2ps zmm31,zmm0,zmm4
  a0feba:	62 62 7d 40 7f cc    	vpermt2ps zmm25,zmm16,zmm4
  a0fec0:	62 11 7c 48 28 cb    	vmovaps zmm9,zmm27
  a0fec6:	62 72 7d 48 7f c9    	vpermt2ps zmm9,zmm0,zmm1
  a0fecc:	62 62 7d 40 7f d9    	vpermt2ps zmm27,zmm16,zmm1
  a0fed2:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x40]
  a0fed9:	01 
  a0feda:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a0fee0:	62 92 7d 48 7f fd    	vpermt2ps zmm7,zmm0,zmm29
  a0fee6:	62 12 7d 40 7f ed    	vpermt2ps zmm13,zmm16,zmm29
  a0feec:	62 41 7c 48 28 eb    	vmovaps zmm29,zmm11
  a0fef2:	62 02 7d 48 7f e8    	vpermt2ps zmm29,zmm0,zmm24
  a0fef8:	62 12 7d 40 7f d8    	vpermt2ps zmm11,zmm16,zmm24
  a0fefe:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm11
  a0ff05:	0c 
  a0ff06:	62 91 7c 48 28 ca    	vmovaps zmm1,zmm26
  a0ff0c:	62 22 7d 48 7f d1    	vpermt2ps zmm26,zmm0,zmm17
  a0ff12:	62 b2 7d 40 7f c9    	vpermt2ps zmm1,zmm16,zmm17
  a0ff18:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a0ff1f:	0d 
  a0ff20:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a0ff27:	06 
  a0ff28:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a0ff2e:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x380]
  a0ff35:	0e 
  a0ff36:	62 e2 7d 48 7f ca    	vpermt2ps zmm17,zmm0,zmm2
  a0ff3c:	62 f2 7d 40 7f ca    	vpermt2ps zmm1,zmm16,zmm2
  a0ff42:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a0ff49:	06 
  a0ff4a:	62 d1 7c 48 28 d4    	vmovaps zmm2,zmm12
  a0ff50:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a0ff57:	04 
  a0ff58:	62 f2 7d 48 7f d1    	vpermt2ps zmm2,zmm0,zmm1
  a0ff5e:	62 72 7d 40 7f e1    	vpermt2ps zmm12,zmm16,zmm1
  a0ff64:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a0ff6b:	03 
  a0ff6c:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a0ff72:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x3c0]
  a0ff79:	0f 
  a0ff7a:	62 f2 7d 48 7f e5    	vpermt2ps zmm4,zmm0,zmm5
  a0ff80:	62 f2 7d 40 7f cd    	vpermt2ps zmm1,zmm16,zmm5
  a0ff86:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a0ff8d:	03 
  a0ff8e:	62 f1 7c 48 28 0c 24 	vmovaps zmm1,ZMMWORD PTR [rsp]
  a0ff95:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a0ff9b:	62 f2 7d 48 7f f3    	vpermt2ps zmm6,zmm0,zmm3
  a0ffa1:	62 f2 7d 40 7f cb    	vpermt2ps zmm1,zmm16,zmm3
  a0ffa7:	62 f1 7c 48 29 0c 24 	vmovaps ZMMWORD PTR [rsp],zmm1
  a0ffae:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a0ffb2:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x540]
  a0ffb9:	15 
  a0ffba:	62 e1 7c 48 28 f3    	vmovaps zmm22,zmm3
  a0ffc0:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a0ffc6:	62 f2 7d 40 7f d9    	vpermt2ps zmm3,zmm16,zmm1
  a0ffcc:	62 71 7c 48 28 db    	vmovaps zmm11,zmm3
  a0ffd2:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x140]
  a0ffd9:	05 
  a0ffda:	62 f2 3d 40 77 c1    	vpermi2ps zmm0,zmm24,zmm1
  a0ffe0:	62 62 7d 40 7f c1    	vpermt2ps zmm24,zmm16,zmm1
  a0ffe6:	62 e1 7c 48 28 05 10 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6b6f10]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0ffed:	6f 6b ff 
  a0fff0:	62 d1 7c 48 28 de    	vmovaps zmm3,zmm14
  a0fff6:	62 92 7d 40 7f de    	vpermt2ps zmm3,zmm16,zmm30
  a0fffc:	62 f1 7c 48 28 2d 3a 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6b6f3a]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a10003:	6f 6b ff 
  a10006:	62 12 55 48 7f f6    	vpermt2ps zmm14,zmm5,zmm30
  a1000c:	62 21 7c 48 28 f3    	vmovaps zmm30,zmm19
  a10012:	62 02 7d 40 7f f7    	vpermt2ps zmm30,zmm16,zmm31
  a10018:	62 82 55 48 7f df    	vpermt2ps zmm19,zmm5,zmm31
  a1001e:	62 21 7c 48 28 fd    	vmovaps zmm31,zmm21
  a10024:	62 42 7d 40 7f f9    	vpermt2ps zmm31,zmm16,zmm9
  a1002a:	62 c2 55 48 7f e9    	vpermt2ps zmm21,zmm5,zmm9
  a10030:	62 31 7c 48 28 cf    	vmovaps zmm9,zmm23
  a10036:	62 32 7d 40 7f ce    	vpermt2ps zmm9,zmm16,zmm22
  a1003c:	62 a2 55 48 7f fe    	vpermt2ps zmm23,zmm5,zmm22
  a10042:	62 81 7c 48 28 f4    	vmovaps zmm22,zmm28
  a10048:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a1004e:	62 d2 7d 40 7f cf    	vpermt2ps zmm1,zmm16,zmm15
  a10054:	62 c2 55 48 7f f7    	vpermt2ps zmm22,zmm5,zmm15
  a1005a:	62 51 7c 48 28 c2    	vmovaps zmm8,zmm10
  a10060:	62 12 7d 40 7f c1    	vpermt2ps zmm8,zmm16,zmm25
  a10066:	62 12 55 48 7f d1    	vpermt2ps zmm10,zmm5,zmm25
  a1006c:	62 31 7c 48 28 fc    	vmovaps zmm15,zmm20
  a10072:	62 12 7d 40 7f fb    	vpermt2ps zmm15,zmm16,zmm27
  a10078:	62 82 55 48 7f e3    	vpermt2ps zmm20,zmm5,zmm27
  a1007e:	62 a1 cd 40 14 e4    	vunpcklpd zmm20,zmm22,zmm20
  a10084:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm20
  a1008b:	01 
  a1008c:	62 21 7c 48 28 da    	vmovaps zmm27,zmm18
  a10092:	62 42 7d 40 7f db    	vpermt2ps zmm27,zmm16,zmm11
  a10098:	62 c2 55 48 7f d3    	vpermt2ps zmm18,zmm5,zmm11
  a1009e:	62 31 ad 48 14 da    	vunpcklpd zmm11,zmm10,zmm18
  a100a4:	62 81 e5 48 14 d7    	vunpcklpd zmm18,zmm3,zmm31
  a100aa:	62 81 e5 48 15 f7    	vunpckhpd zmm22,zmm3,zmm31
  a100b0:	62 d1 8d 40 14 d9    	vunpcklpd zmm3,zmm30,zmm9
  a100b6:	62 51 8d 40 15 c9    	vunpckhpd zmm9,zmm30,zmm9
  a100bc:	62 21 8d 48 14 fd    	vunpcklpd zmm31,zmm14,zmm21
  a100c2:	62 a1 8d 48 15 ed    	vunpckhpd zmm21,zmm14,zmm21
  a100c8:	62 31 e5 40 14 f7    	vunpcklpd zmm14,zmm19,zmm23
  a100ce:	62 a1 e5 40 15 e7    	vunpckhpd zmm20,zmm19,zmm23
  a100d4:	62 c1 f5 48 14 ff    	vunpcklpd zmm23,zmm1,zmm15
  a100da:	62 d1 f5 48 15 cf    	vunpckhpd zmm1,zmm1,zmm15
  a100e0:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a100e7:	05 
  a100e8:	62 81 bd 48 14 db    	vunpcklpd zmm19,zmm8,zmm27
  a100ee:	62 11 bd 48 15 d3    	vunpckhpd zmm10,zmm8,zmm27
  a100f4:	62 61 7c 48 28 e7    	vmovaps zmm28,zmm7
  a100fa:	62 62 7d 40 7f e2    	vpermt2ps zmm28,zmm16,zmm2
  a10100:	62 f2 55 48 7f fa    	vpermt2ps zmm7,zmm5,zmm2
  a10106:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  a1010c:	62 f2 7d 40 7f d4    	vpermt2ps zmm2,zmm16,zmm4
  a10112:	62 62 55 48 7f ec    	vpermt2ps zmm29,zmm5,zmm4
  a10118:	62 01 7c 48 28 ca    	vmovaps zmm25,zmm26
  a1011e:	62 62 7d 40 7f ce    	vpermt2ps zmm25,zmm16,zmm6
  a10124:	62 62 55 48 7f d6    	vpermt2ps zmm26,zmm5,zmm6
  a1012a:	62 b1 7c 48 28 f1    	vmovaps zmm6,zmm17
  a10130:	62 f2 7d 40 7f f0    	vpermt2ps zmm6,zmm16,zmm0
  a10136:	62 e2 55 48 7f c8    	vpermt2ps zmm17,zmm5,zmm0
  a1013c:	62 d1 7c 48 28 e5    	vmovaps zmm4,zmm13
  a10142:	62 d2 7d 40 7f e4    	vpermt2ps zmm4,zmm16,zmm12
  a10148:	62 52 55 48 7f ec    	vpermt2ps zmm13,zmm5,zmm12
  a1014e:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x300]
  a10155:	0c 
  a10156:	62 11 7c 48 28 e6    	vmovaps zmm12,zmm30
  a1015c:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a10163:	03 
  a10164:	62 72 7d 40 7f e1    	vpermt2ps zmm12,zmm16,zmm1
  a1016a:	62 62 55 48 7f f1    	vpermt2ps zmm30,zmm5,zmm1
  a10170:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x340]
  a10177:	0d 
  a10178:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a1017e:	62 71 7c 48 28 04 24 	vmovaps zmm8,ZMMWORD PTR [rsp]
  a10185:	62 d2 7d 40 7f c0    	vpermt2ps zmm0,zmm16,zmm8
  a1018b:	62 d2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm8
  a10191:	62 61 7c 48 28 d9    	vmovaps zmm27,zmm1
  a10197:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a1019e:	06 
  a1019f:	62 82 75 48 77 c0    	vpermi2ps zmm16,zmm1,zmm24
  a101a5:	62 92 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm24
  a101ab:	62 f1 7c 48 28 2d 4b 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6b6c4b]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a101b2:	6c 6b ff 
  a101b5:	62 31 7c 48 28 c2    	vmovaps zmm8,zmm18
  a101bb:	62 72 55 48 7f c3    	vpermt2ps zmm8,zmm5,zmm3
  a101c1:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm8
  a101c8:	0b 
  a101c9:	62 71 7c 48 28 3d 6d 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6b6c6d]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a101d0:	6c 6b ff 
  a101d3:	62 e2 05 48 7f d3    	vpermt2ps zmm18,zmm15,zmm3
  a101d9:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm18
  a101e0:	07 
  a101e1:	62 31 7c 48 28 c6    	vmovaps zmm8,zmm22
  a101e7:	62 52 55 48 7f c1    	vpermt2ps zmm8,zmm5,zmm9
  a101ed:	62 c2 05 48 7f f1    	vpermt2ps zmm22,zmm15,zmm9
  a101f3:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm22
  a101fa:	09 
  a101fb:	62 11 7c 48 28 cf    	vmovaps zmm9,zmm31
  a10201:	62 52 55 48 7f ce    	vpermt2ps zmm9,zmm5,zmm14
  a10207:	62 42 05 48 7f fe    	vpermt2ps zmm31,zmm15,zmm14
  a1020d:	62 61 7c 48 29 3c 24 	vmovaps ZMMWORD PTR [rsp],zmm31
  a10214:	62 21 7c 48 28 c5    	vmovaps zmm24,zmm21
  a1021a:	62 a2 55 48 7f ec    	vpermt2ps zmm21,zmm5,zmm20
  a10220:	62 22 05 48 7f c4    	vpermt2ps zmm24,zmm15,zmm20
  a10226:	62 a1 7c 48 28 f7    	vmovaps zmm22,zmm23
  a1022c:	62 a2 55 48 7f f3    	vpermt2ps zmm22,zmm5,zmm19
  a10232:	62 a2 05 48 7f fb    	vpermt2ps zmm23,zmm15,zmm19
  a10238:	62 21 7c 48 28 ff    	vmovaps zmm31,zmm23
  a1023e:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x140]
  a10245:	05 
  a10246:	62 e1 7c 48 28 db    	vmovaps zmm19,zmm3
  a1024c:	62 c2 55 48 7f da    	vpermt2ps zmm19,zmm5,zmm10
  a10252:	62 d2 05 48 7f da    	vpermt2ps zmm3,zmm15,zmm10
  a10258:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a1025e:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x40]
  a10265:	01 
  a10266:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a1026c:	62 52 55 48 7f d3    	vpermt2ps zmm10,zmm5,zmm11
  a10272:	62 d2 05 48 7f db    	vpermt2ps zmm3,zmm15,zmm11
  a10278:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a1027f:	01 
  a10280:	62 01 95 48 14 db    	vunpcklpd zmm27,zmm13,zmm27
  a10286:	62 e1 8d 40 14 e1    	vunpcklpd zmm20,zmm30,zmm1
  a1028c:	62 11 9d 40 14 e9    	vunpcklpd zmm13,zmm28,zmm25
  a10292:	62 81 9d 40 15 d1    	vunpckhpd zmm18,zmm28,zmm25
  a10298:	62 71 ed 48 14 de    	vunpcklpd zmm11,zmm2,zmm6
  a1029e:	62 f1 ed 48 15 f6    	vunpckhpd zmm6,zmm2,zmm6
  a102a4:	62 91 c5 48 14 ca    	vunpcklpd zmm1,zmm7,zmm26
  a102aa:	62 91 c5 48 15 da    	vunpckhpd zmm3,zmm7,zmm26
  a102b0:	62 b1 95 40 14 f9    	vunpcklpd zmm7,zmm29,zmm17
  a102b6:	62 a1 95 40 15 c9    	vunpckhpd zmm17,zmm29,zmm17
  a102bc:	62 f1 dd 48 14 d0    	vunpcklpd zmm2,zmm4,zmm0
  a102c2:	62 61 dd 48 15 c8    	vunpckhpd zmm25,zmm4,zmm0
  a102c8:	62 b1 9d 48 14 c0    	vunpcklpd zmm0,zmm12,zmm16
  a102ce:	62 b1 9d 48 15 e0    	vunpckhpd zmm4,zmm12,zmm16
  a102d4:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a102da:	62 52 55 48 7f e3    	vpermt2ps zmm12,zmm5,zmm11
  a102e0:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm12
  a102e7:	04 
  a102e8:	62 52 05 48 7f eb    	vpermt2ps zmm13,zmm15,zmm11
  a102ee:	62 a1 7c 48 28 c2    	vmovaps zmm16,zmm18
  a102f4:	62 e2 55 48 7f c6    	vpermt2ps zmm16,zmm5,zmm6
  a102fa:	62 e2 05 48 7f d6    	vpermt2ps zmm18,zmm15,zmm6
  a10300:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a10306:	62 72 55 48 7f df    	vpermt2ps zmm11,zmm5,zmm7
  a1030c:	62 f2 05 48 7f cf    	vpermt2ps zmm1,zmm15,zmm7
  a10312:	62 71 7c 48 28 f3    	vmovaps zmm14,zmm3
  a10318:	62 32 55 48 7f f1    	vpermt2ps zmm14,zmm5,zmm17
  a1031e:	62 b2 05 48 7f d9    	vpermt2ps zmm3,zmm15,zmm17
  a10324:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a1032a:	62 f2 55 48 7f f0    	vpermt2ps zmm6,zmm5,zmm0
  a10330:	62 f2 05 48 7f d0    	vpermt2ps zmm2,zmm15,zmm0
  a10336:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a1033c:	62 f2 55 48 7f c4    	vpermt2ps zmm0,zmm5,zmm4
  a10342:	62 62 05 48 7f cc    	vpermt2ps zmm25,zmm15,zmm4
  a10348:	62 b2 25 40 77 ec    	vpermi2ps zmm5,zmm27,zmm20
  a1034e:	62 22 05 48 7f dc    	vpermt2ps zmm27,zmm15,zmm20
  a10354:	62 71 7c 48 10 7a 02 	vmovups zmm15,ZMMWORD PTR [rdx+0x80]
  a1035b:	62 e1 7c 48 10 62 04 	vmovups zmm20,ZMMWORD PTR [rdx+0x100]
  a10362:	62 e1 7c 48 10 4a 05 	vmovups zmm17,ZMMWORD PTR [rdx+0x140]
  a10369:	62 b1 3c 48 59 e4    	vmulps zmm4,zmm8,zmm20
  a1036f:	62 b2 7d 40 bc e1    	vfnmadd231ps zmm4,zmm16,zmm17
  a10375:	62 71 7c 48 28 e4    	vmovaps zmm12,zmm4
  a1037b:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm4
  a10382:	0a 
  a10383:	62 b1 7c 40 59 fc    	vmulps zmm7,zmm16,zmm20
  a10389:	62 f1 7c 48 10 62 18 	vmovups zmm4,ZMMWORD PTR [rdx+0x600]
  a10390:	62 d2 75 40 b8 f8    	vfmadd231ps zmm7,zmm17,zmm8
  a10396:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm7
  a1039d:	06 
  a1039e:	62 f1 7c 48 10 7a 19 	vmovups zmm7,ZMMWORD PTR [rdx+0x640]
  a103a5:	62 71 2c 48 59 c4    	vmulps zmm8,zmm10,zmm4
  a103ab:	62 72 55 48 bc c7    	vfnmadd231ps zmm8,zmm5,zmm7
  a103b1:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm8
  a103b8:	1c 
  a103b9:	62 f1 54 48 59 ec    	vmulps zmm5,zmm5,zmm4
  a103bf:	62 f1 7c 48 10 62 08 	vmovups zmm4,ZMMWORD PTR [rdx+0x200]
  a103c6:	62 d2 45 48 b8 ea    	vfmadd231ps zmm5,zmm7,zmm10
  a103cc:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a103d2:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm5
  a103d9:	11 
  a103da:	62 f1 7c 48 10 6a 09 	vmovups zmm5,ZMMWORD PTR [rdx+0x240]
  a103e1:	62 f1 34 48 59 fc    	vmulps zmm7,zmm9,zmm4
  a103e7:	62 f2 25 48 bc fd    	vfnmadd231ps zmm7,zmm11,zmm5
  a103ed:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm7
  a103f4:	03 
  a103f5:	62 f1 24 48 59 fc    	vmulps zmm7,zmm11,zmm4
  a103fb:	62 f1 7c 48 10 62 14 	vmovups zmm4,ZMMWORD PTR [rdx+0x500]
  a10402:	62 d2 55 48 b8 f9    	vfmadd231ps zmm7,zmm5,zmm9
  a10408:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm7
  a1040f:	0f 
  a10410:	62 f1 7c 48 10 6a 15 	vmovups zmm5,ZMMWORD PTR [rdx+0x540]
  a10417:	62 f1 64 40 59 fc    	vmulps zmm7,zmm19,zmm4
  a1041d:	62 f2 7d 48 bc fd    	vfnmadd231ps zmm7,zmm0,zmm5
  a10423:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm7
  a1042a:	05 
  a1042b:	62 f1 7c 48 59 e4    	vmulps zmm4,zmm0,zmm4
  a10431:	62 f1 7c 48 10 42 0c 	vmovups zmm0,ZMMWORD PTR [rdx+0x300]
  a10438:	62 b2 55 48 b8 e3    	vfmadd231ps zmm4,zmm5,zmm19
  a1043e:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm4
  a10445:	0e 
  a10446:	62 f1 7c 48 10 62 0d 	vmovups zmm4,ZMMWORD PTR [rdx+0x340]
  a1044d:	62 f1 54 40 59 e8    	vmulps zmm5,zmm21,zmm0
  a10453:	62 f2 0d 48 bc ec    	vfnmadd231ps zmm5,zmm14,zmm4
  a10459:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm5
  a10460:	0d 
  a10461:	62 f1 0c 48 59 e8    	vmulps zmm5,zmm14,zmm0
  a10467:	62 f1 7c 48 10 42 10 	vmovups zmm0,ZMMWORD PTR [rdx+0x400]
  a1046e:	62 b2 5d 48 b8 ed    	vfmadd231ps zmm5,zmm4,zmm21
  a10474:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm5
  a1047b:	15 
  a1047c:	62 f1 7c 48 10 62 11 	vmovups zmm4,ZMMWORD PTR [rdx+0x440]
  a10483:	62 61 4c 40 59 d0    	vmulps zmm26,zmm22,zmm0
  a10489:	62 62 4d 48 bc d4    	vfnmadd231ps zmm26,zmm6,zmm4
  a1048f:	62 f1 4c 48 59 e8    	vmulps zmm5,zmm6,zmm0
  a10495:	62 f1 7c 48 10 42 0e 	vmovups zmm0,ZMMWORD PTR [rdx+0x380]
  a1049c:	62 b2 5d 48 b8 ee    	vfmadd231ps zmm5,zmm4,zmm22
  a104a2:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm5
  a104a9:	0c 
  a104aa:	62 f1 7c 48 10 72 0f 	vmovups zmm6,ZMMWORD PTR [rdx+0x3c0]
  a104b1:	62 61 3c 40 59 e0    	vmulps zmm28,zmm24,zmm0
  a104b7:	62 62 65 48 bc e6    	vfnmadd231ps zmm28,zmm3,zmm6
  a104bd:	62 e1 64 48 59 e8    	vmulps zmm21,zmm3,zmm0
  a104c3:	62 f1 7c 48 10 42 12 	vmovups zmm0,ZMMWORD PTR [rdx+0x480]
  a104ca:	62 82 4d 48 b8 e8    	vfmadd231ps zmm21,zmm6,zmm24
  a104d0:	62 f1 7c 48 10 5a 13 	vmovups zmm3,ZMMWORD PTR [rdx+0x4c0]
  a104d7:	62 f1 04 40 59 e0    	vmulps zmm4,zmm31,zmm0
  a104dd:	62 f2 6d 48 bc e3    	vfnmadd231ps zmm4,zmm2,zmm3
  a104e3:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm4
  a104ea:	1a 
  a104eb:	62 f1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm0
  a104f1:	62 f1 7c 48 10 42 0a 	vmovups zmm0,ZMMWORD PTR [rdx+0x280]
  a104f8:	62 92 65 48 b8 d7    	vfmadd231ps zmm2,zmm3,zmm31
  a104fe:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a10504:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm2
  a1050b:	18 
  a1050c:	62 f1 7c 48 10 52 0b 	vmovups zmm2,ZMMWORD PTR [rdx+0x2c0]
  a10513:	62 f1 7c 48 28 34 24 	vmovaps zmm6,ZMMWORD PTR [rsp]
  a1051a:	62 f1 4c 48 59 d8    	vmulps zmm3,zmm6,zmm0
  a10520:	62 f2 75 48 bc da    	vfnmadd231ps zmm3,zmm1,zmm2
  a10526:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm3
  a1052d:	1b 
  a1052e:	62 f1 74 48 59 c8    	vmulps zmm1,zmm1,zmm0
  a10534:	62 f1 7c 48 10 42 16 	vmovups zmm0,ZMMWORD PTR [rdx+0x580]
  a1053b:	62 f2 6d 48 b8 ce    	vfmadd231ps zmm1,zmm2,zmm6
  a10541:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a10547:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm1
  a1054e:	19 
  a1054f:	62 f1 7c 48 10 4a 17 	vmovups zmm1,ZMMWORD PTR [rdx+0x5c0]
  a10556:	62 f1 44 40 59 d0    	vmulps zmm2,zmm23,zmm0
  a1055c:	62 f2 35 40 bc d1    	vfnmadd231ps zmm2,zmm25,zmm1
  a10562:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a10568:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm2
  a1056f:	10 
  a10570:	62 e1 34 40 59 c8    	vmulps zmm17,zmm25,zmm0
  a10576:	62 f1 7c 48 10 42 06 	vmovups zmm0,ZMMWORD PTR [rdx+0x180]
  a1057d:	62 a2 75 48 b8 cf    	vfmadd231ps zmm17,zmm1,zmm23
  a10583:	62 f1 7c 48 10 4a 07 	vmovups zmm1,ZMMWORD PTR [rdx+0x1c0]
  a1058a:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x240]
  a10591:	09 
  a10592:	62 f1 34 48 59 d0    	vmulps zmm2,zmm9,zmm0
  a10598:	62 f2 6d 40 bc d1    	vfnmadd231ps zmm2,zmm18,zmm1
  a1059e:	62 f1 7c 48 29 14 24 	vmovaps ZMMWORD PTR [rsp],zmm2
  a105a5:	62 f1 6c 40 59 d0    	vmulps zmm2,zmm18,zmm0
  a105ab:	62 f1 7c 48 10 42 1a 	vmovups zmm0,ZMMWORD PTR [rdx+0x680]
  a105b2:	62 d2 75 48 b8 d1    	vfmadd231ps zmm2,zmm1,zmm9
  a105b8:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm2
  a105bf:	14 
  a105c0:	62 f1 7c 48 10 4a 1b 	vmovups zmm1,ZMMWORD PTR [rdx+0x6c0]
  a105c7:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x40]
  a105ce:	01 
  a105cf:	62 e1 34 48 59 c0    	vmulps zmm16,zmm9,zmm0
  a105d5:	62 e2 25 40 bc c1    	vfnmadd231ps zmm16,zmm27,zmm1
  a105db:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm16
  a105e2:	16 
  a105e3:	62 f1 24 40 59 c0    	vmulps zmm0,zmm27,zmm0
  a105e9:	62 f1 7c 48 10 52 03 	vmovups zmm2,ZMMWORD PTR [rdx+0xc0]
  a105f0:	62 d2 75 48 b8 c1    	vfmadd231ps zmm0,zmm1,zmm9
  a105f6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a105fd:	09 
  a105fe:	62 d1 1c 48 58 c0    	vaddps zmm0,zmm12,zmm8
  a10604:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x1c0]
  a1060b:	07 
  a1060c:	62 d1 34 48 59 cf    	vmulps zmm1,zmm9,zmm15
  a10612:	62 f2 15 48 bc ca    	vfnmadd231ps zmm1,zmm13,zmm2
  a10618:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a1061e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm1
  a10625:	17 
  a10626:	62 d1 14 48 59 cf    	vmulps zmm1,zmm13,zmm15
  a1062c:	62 d2 6d 48 b8 c9    	vfmadd231ps zmm1,zmm2,zmm9
  a10632:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a10639:	07 
  a1063a:	62 72 7d 48 18 35 b0 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff664fb0]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a10641:	4f 66 ff 
  a10644:	62 d1 7c 48 28 d6    	vmovaps zmm2,zmm14
  a1064a:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x2c0]
  a10651:	0b 
  a10652:	62 b2 7d 48 a8 d7    	vfmadd213ps zmm2,zmm0,zmm23
  a10658:	62 72 7d 48 18 2d 6a 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff664c6a]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a1065f:	4c 66 ff 
  a10662:	62 d1 7c 48 28 cd    	vmovaps zmm1,zmm13
  a10668:	62 b2 7d 48 ac cf    	vfnmadd213ps zmm1,zmm0,zmm23
  a1066e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a10675:	01 
  a10676:	62 f1 44 40 58 c8    	vaddps zmm1,zmm23,zmm0
  a1067c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a10683:	08 
  a10684:	62 72 7d 48 18 3d 4a 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff664f4a]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a1068b:	4f 66 ff 
  a1068e:	62 e2 05 48 bc f8    	vfnmadd231ps zmm23,zmm15,zmm0
  a10694:	62 f1 5c 48 58 c3    	vaddps zmm0,zmm4,zmm3
  a1069a:	62 41 7c 48 28 fe    	vmovaps zmm31,zmm14
  a106a0:	62 02 7d 48 a8 fc    	vfmadd213ps zmm31,zmm0,zmm28
  a106a6:	62 41 7c 48 28 f5    	vmovaps zmm30,zmm13
  a106ac:	62 02 7d 48 ac f4    	vfnmadd213ps zmm30,zmm0,zmm28
  a106b2:	62 f1 1c 40 58 c8    	vaddps zmm1,zmm28,zmm0
  a106b8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a106bf:	0b 
  a106c0:	62 62 05 48 bc e0    	vfnmadd231ps zmm28,zmm15,zmm0
  a106c6:	62 f1 2c 48 58 4c 24 	vaddps zmm1,zmm10,ZMMWORD PTR [rsp+0x180]
  a106cd:	06 
  a106ce:	62 41 7c 48 28 ee    	vmovaps zmm29,zmm14
  a106d4:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x100]
  a106db:	04 
  a106dc:	62 42 75 48 a8 e9    	vfmadd213ps zmm29,zmm1,zmm9
  a106e2:	62 c1 7c 48 28 e5    	vmovaps zmm20,zmm13
  a106e8:	62 c2 75 48 ac e1    	vfnmadd213ps zmm20,zmm1,zmm9
  a106ee:	62 c1 74 48 58 d1    	vaddps zmm18,zmm1,zmm9
  a106f4:	62 72 05 48 bc c9    	vfnmadd231ps zmm9,zmm15,zmm1
  a106fa:	62 e1 54 48 58 df    	vaddps zmm19,zmm5,zmm7
  a10700:	62 b1 7c 48 28 fd    	vmovaps zmm7,zmm21
  a10706:	62 32 65 40 a8 f5    	vfmadd213ps zmm14,zmm19,zmm21
  a1070c:	62 51 7c 48 28 d5    	vmovaps zmm10,zmm13
  a10712:	62 32 65 40 ac d5    	vfnmadd213ps zmm10,zmm19,zmm21
  a10718:	62 b1 54 40 58 c3    	vaddps zmm0,zmm21,zmm19
  a1071e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a10725:	04 
  a10726:	62 d2 65 40 bc ff    	vfnmadd231ps zmm7,zmm19,zmm15
  a1072c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a10733:	05 
  a10734:	62 e1 7c 48 58 5c 24 	vaddps zmm19,zmm0,ZMMWORD PTR [rsp+0xc0]
  a1073b:	03 
  a1073c:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a10742:	62 d2 65 40 bc d5    	vfnmadd231ps zmm2,zmm19,zmm13
  a10748:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x340]
  a1074f:	0d 
  a10750:	62 01 3c 40 58 da    	vaddps zmm27,zmm24,zmm26
  a10756:	62 d2 25 40 bc d7    	vfnmadd231ps zmm2,zmm27,zmm15
  a1075c:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm2
  a10763:	12 
  a10764:	62 61 4c 48 58 0c 24 	vaddps zmm25,zmm6,ZMMWORD PTR [rsp]
  a1076b:	62 42 35 40 bc fd    	vfnmadd231ps zmm31,zmm25,zmm13
  a10771:	62 d1 7c 40 58 e8    	vaddps zmm5,zmm16,zmm8
  a10777:	62 42 55 48 bc ff    	vfnmadd231ps zmm31,zmm5,zmm15
  a1077d:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x3c0]
  a10784:	0f 
  a10785:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x380]
  a1078c:	0e 
  a1078d:	62 b1 4c 40 58 d5    	vaddps zmm2,zmm22,zmm21
  a10793:	62 42 6d 48 bc ed    	vfnmadd231ps zmm29,zmm2,zmm13
  a10799:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x540]
  a107a0:	15 
  a107a1:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x300]
  a107a8:	0c 
  a107a9:	62 d1 14 48 58 e3    	vaddps zmm4,zmm13,zmm11
  a107af:	62 42 5d 48 bc ef    	vfnmadd231ps zmm29,zmm4,zmm15
  a107b5:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x500]
  a107bc:	14 
  a107bd:	62 b1 74 40 58 c8    	vaddps zmm1,zmm17,zmm16
  a107c3:	62 72 75 48 bc f0    	vfnmadd231ps zmm14,zmm1,zmm0
  a107c9:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x240]
  a107d0:	09 
  a107d1:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x1c0]
  a107d8:	07 
  a107d9:	62 f1 3c 48 58 de    	vaddps zmm3,zmm8,zmm6
  a107df:	62 52 65 48 bc f7    	vfnmadd231ps zmm14,zmm3,zmm15
  a107e5:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a107ec:	01 
  a107ed:	62 d2 65 40 bc c7    	vfnmadd231ps zmm0,zmm19,zmm15
  a107f3:	62 42 35 40 bc f7    	vfnmadd231ps zmm30,zmm25,zmm15
  a107f9:	62 c2 6d 48 bc e7    	vfnmadd231ps zmm20,zmm2,zmm15
  a107ff:	62 52 75 48 bc d7    	vfnmadd231ps zmm10,zmm1,zmm15
  a10805:	62 71 64 40 58 64 24 	vaddps zmm12,zmm19,ZMMWORD PTR [rsp+0x200]
  a1080c:	08 
  a1080d:	62 72 7d 48 18 3d dd 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff664ddd]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a10814:	4d 66 ff 
  a10817:	62 a2 05 48 b8 fb    	vfmadd231ps zmm23,zmm15,zmm19
  a1081d:	62 e1 34 40 58 5c 24 	vaddps zmm19,zmm25,ZMMWORD PTR [rsp+0x2c0]
  a10824:	0b 
  a10825:	62 02 05 48 b8 e1    	vfmadd231ps zmm28,zmm15,zmm25
  a1082b:	62 a1 6c 48 58 d2    	vaddps zmm18,zmm2,zmm18
  a10831:	62 72 05 48 b8 ca    	vfmadd231ps zmm9,zmm15,zmm2
  a10837:	62 f1 74 48 58 54 24 	vaddps zmm2,zmm1,ZMMWORD PTR [rsp+0x100]
  a1083e:	04 
  a1083f:	62 d2 75 48 b8 ff    	vfmadd231ps zmm7,zmm1,zmm15
  a10845:	62 d2 25 40 b8 c7    	vfmadd231ps zmm0,zmm27,zmm15
  a1084b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a10852:	01 
  a10853:	62 42 55 48 b8 f7    	vfmadd231ps zmm30,zmm5,zmm15
  a10859:	62 c2 5d 48 b8 e7    	vfmadd231ps zmm20,zmm4,zmm15
  a1085f:	62 52 65 48 b8 d7    	vfmadd231ps zmm10,zmm3,zmm15
  a10865:	62 91 1c 48 58 c3    	vaddps zmm0,zmm12,zmm27
  a1086b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a10872:	04 
  a10873:	62 f2 7d 48 18 05 4f 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff664a4f]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a1087a:	4a 66 ff 
  a1087d:	62 82 7d 48 bc fb    	vfnmadd231ps zmm23,zmm0,zmm27
  a10883:	62 21 7c 48 28 cf    	vmovaps zmm25,zmm23
  a10889:	62 f1 64 40 58 cd    	vaddps zmm1,zmm19,zmm5
  a1088f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a10896:	0b 
  a10897:	62 62 7d 48 bc e5    	vfnmadd231ps zmm28,zmm0,zmm5
  a1089d:	62 b1 5c 48 58 ca    	vaddps zmm1,zmm4,zmm18
  a108a3:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a108aa:	08 
  a108ab:	62 72 7d 48 bc cc    	vfnmadd231ps zmm9,zmm0,zmm4
  a108b1:	62 f2 65 48 bc f8    	vfnmadd231ps zmm7,zmm3,zmm0
  a108b7:	62 f1 6c 48 58 c3    	vaddps zmm0,zmm2,zmm3
  a108bd:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a108c4:	13 
  a108c5:	62 c1 14 48 5c fb    	vsubps zmm23,zmm13,zmm11
  a108cb:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a108d2:	06 
  a108d3:	62 f1 7c 48 5c 4c 24 	vsubps zmm1,zmm0,ZMMWORD PTR [rsp+0x440]
  a108da:	11 
  a108db:	62 b1 4c 40 5c d5    	vsubps zmm2,zmm22,zmm21
  a108e1:	62 71 3c 48 5c c6    	vsubps zmm8,zmm8,zmm6
  a108e7:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x600]
  a108ee:	18 
  a108ef:	62 f1 7c 48 5c 6c 24 	vsubps zmm5,zmm0,ZMMWORD PTR [rsp+0x640]
  a108f6:	19 
  a108f7:	62 31 74 40 5c e8    	vsubps zmm13,zmm17,zmm16
  a108fd:	62 11 3c 40 5c fa    	vsubps zmm15,zmm24,zmm26
  a10903:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a1090a:	0a 
  a1090b:	62 e1 7c 48 5c 44 24 	vsubps zmm16,zmm0,ZMMWORD PTR [rsp+0x700]
  a10912:	1c 
  a10913:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a1091a:	03 
  a1091b:	62 e1 7c 48 5c 54 24 	vsubps zmm18,zmm0,ZMMWORD PTR [rsp+0x140]
  a10922:	05 
  a10923:	62 e2 7d 48 18 1d 63 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff664b63]        # 75490 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2940>
  a1092a:	4b 66 ff 
  a1092d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x580]
  a10934:	16 
  a10935:	62 e1 7c 48 5c 4c 24 	vsubps zmm17,zmm0,ZMMWORD PTR [rsp+0x5c0]
  a1093c:	17 
  a1093d:	62 e2 7d 48 18 2d 19 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff664d19]        # 75660 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b10>
  a10944:	4d 66 ff 
  a10947:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x680]
  a1094e:	1a 
  a1094f:	62 e1 7c 48 5c 74 24 	vsubps zmm22,zmm0,ZMMWORD PTR [rsp+0x6c0]
  a10956:	1b 
  a10957:	62 b1 6c 48 59 f3    	vmulps zmm6,zmm2,zmm19
  a1095d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x400]
  a10964:	10 
  a10965:	62 61 7c 48 5c 04 24 	vsubps zmm24,zmm0,ZMMWORD PTR [rsp]
  a1096c:	62 62 7d 48 18 15 72 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff664c72]        # 755e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a98>
  a10973:	4c 66 ff 
  a10976:	62 b2 75 48 b8 f5    	vfmadd231ps zmm6,zmm1,zmm21
  a1097c:	62 b1 74 48 59 db    	vmulps zmm3,zmm1,zmm19
  a10982:	62 92 6d 48 bc da    	vfnmadd231ps zmm3,zmm2,zmm26
  a10988:	62 91 74 48 59 ca    	vmulps zmm1,zmm1,zmm26
  a1098e:	62 f2 55 40 bc ca    	vfnmadd231ps zmm1,zmm21,zmm2
  a10994:	62 b1 14 48 59 e3    	vmulps zmm4,zmm13,zmm19
  a1099a:	62 b2 55 48 b8 e5    	vfmadd231ps zmm4,zmm5,zmm21
  a109a0:	62 21 54 48 59 db    	vmulps zmm27,zmm5,zmm19
  a109a6:	62 02 15 48 bc da    	vfnmadd231ps zmm27,zmm13,zmm26
  a109ac:	62 91 54 48 59 ea    	vmulps zmm5,zmm5,zmm26
  a109b2:	62 d2 55 40 bc ed    	vfnmadd231ps zmm5,zmm21,zmm13
  a109b8:	62 31 6c 40 59 eb    	vmulps zmm13,zmm18,zmm19
  a109be:	62 32 7d 40 b8 ed    	vfmadd231ps zmm13,zmm16,zmm21
  a109c4:	62 b1 7c 40 59 d3    	vmulps zmm2,zmm16,zmm19
  a109ca:	62 92 6d 40 bc d2    	vfnmadd231ps zmm2,zmm18,zmm26
  a109d0:	62 81 7c 40 59 c2    	vmulps zmm16,zmm16,zmm26
  a109d6:	62 a2 55 40 bc c2    	vfnmadd231ps zmm16,zmm21,zmm18
  a109dc:	62 92 45 40 b8 f2    	vfmadd231ps zmm6,zmm23,zmm26
  a109e2:	62 92 3d 48 b8 e2    	vfmadd231ps zmm4,zmm8,zmm26
  a109e8:	62 12 05 48 b8 ea    	vfmadd231ps zmm13,zmm15,zmm26
  a109ee:	62 a1 3c 40 59 d3    	vmulps zmm18,zmm24,zmm19
  a109f4:	62 a2 4d 40 b8 d5    	vfmadd231ps zmm18,zmm22,zmm21
  a109fa:	62 82 75 40 b8 d2    	vfmadd231ps zmm18,zmm17,zmm26
  a10a00:	62 b1 4c 40 59 c3    	vmulps zmm0,zmm22,zmm19
  a10a06:	62 92 3d 40 bc c2    	vfnmadd231ps zmm0,zmm24,zmm26
  a10a0c:	62 81 4c 40 59 f2    	vmulps zmm22,zmm22,zmm26
  a10a12:	62 a2 3d 40 bc f5    	vfnmadd231ps zmm22,zmm24,zmm21
  a10a18:	62 b2 45 40 bc dd    	vfnmadd231ps zmm3,zmm23,zmm21
  a10a1e:	62 22 3d 48 bc dd    	vfnmadd231ps zmm27,zmm8,zmm21
  a10a24:	62 b2 05 48 bc d5    	vfnmadd231ps zmm2,zmm15,zmm21
  a10a2a:	62 b2 75 40 bc c5    	vfnmadd231ps zmm0,zmm17,zmm21
  a10a30:	62 b2 65 40 b8 cf    	vfmadd231ps zmm1,zmm19,zmm23
  a10a36:	62 d2 65 40 b8 e8    	vfmadd231ps zmm5,zmm19,zmm8
  a10a3c:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x480]
  a10a43:	12 
  a10a44:	62 e1 1c 48 58 fe    	vaddps zmm23,zmm12,zmm6
  a10a4a:	62 c2 65 40 b8 c7    	vfmadd231ps zmm16,zmm19,zmm15
  a10a50:	62 71 04 40 58 fc    	vaddps zmm15,zmm31,zmm4
  a10a56:	62 a2 75 40 b8 f3    	vfmadd231ps zmm22,zmm17,zmm19
  a10a5c:	62 41 44 40 5c d7    	vsubps zmm26,zmm23,zmm15
  a10a62:	62 71 34 40 58 d9    	vaddps zmm11,zmm25,zmm1
  a10a68:	62 71 7c 48 29 1c 24 	vmovaps ZMMWORD PTR [rsp],zmm11
  a10a6f:	62 f1 34 40 5c c9    	vsubps zmm1,zmm25,zmm1
  a10a75:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a10a7c:	06 
  a10a7d:	62 e1 1c 40 58 ed    	vaddps zmm21,zmm28,zmm5
  a10a83:	62 f1 1c 40 5c cd    	vsubps zmm1,zmm28,zmm5
  a10a89:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a10a90:	03 
  a10a91:	62 a1 34 48 5c d8    	vsubps zmm19,zmm9,zmm16
  a10a97:	62 41 7c 40 58 c1    	vaddps zmm24,zmm16,zmm9
  a10a9d:	62 21 44 48 5c ce    	vsubps zmm25,zmm7,zmm22
  a10aa3:	62 a1 44 48 58 ce    	vaddps zmm17,zmm7,zmm22
  a10aa9:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a10ab0:	01 
  a10ab1:	62 e1 74 48 58 c3    	vaddps zmm16,zmm1,zmm3
  a10ab7:	62 e1 74 48 5c f3    	vsubps zmm22,zmm1,zmm3
  a10abd:	62 01 0c 40 58 e3    	vaddps zmm28,zmm30,zmm27
  a10ac3:	62 01 0c 40 5c f3    	vsubps zmm30,zmm30,zmm27
  a10ac9:	62 71 5c 40 5c ca    	vsubps zmm9,zmm20,zmm2
  a10acf:	62 31 6c 48 58 c4    	vaddps zmm8,zmm2,zmm20
  a10ad5:	62 71 2c 48 5c d8    	vsubps zmm11,zmm10,zmm0
  a10adb:	62 f1 2c 48 58 f8    	vaddps zmm7,zmm10,zmm0
  a10ae1:	62 d1 14 40 5c dd    	vsubps zmm3,zmm29,zmm13
  a10ae7:	62 f1 1c 48 5c f6    	vsubps zmm6,zmm12,zmm6
  a10aed:	62 b1 0c 48 5c c2    	vsubps zmm0,zmm14,zmm18
  a10af3:	62 f1 04 40 5c e4    	vsubps zmm4,zmm31,zmm4
  a10af9:	62 61 64 48 5c d8    	vsubps zmm27,zmm3,zmm0
  a10aff:	62 91 14 48 58 d5    	vaddps zmm2,zmm13,zmm29
  a10b05:	62 01 7c 40 58 ec    	vaddps zmm29,zmm16,zmm28
  a10b0b:	62 b1 0c 48 58 ca    	vaddps zmm1,zmm14,zmm18
  a10b11:	62 c1 34 48 58 d3    	vaddps zmm18,zmm9,zmm11
  a10b17:	62 51 44 40 58 e7    	vaddps zmm12,zmm23,zmm15
  a10b1d:	62 71 7c 48 28 34 24 	vmovaps zmm14,ZMMWORD PTR [rsp]
  a10b24:	62 b1 0c 48 5c ed    	vsubps zmm5,zmm14,zmm21
  a10b2a:	62 f1 64 48 58 c0    	vaddps zmm0,zmm3,zmm0
  a10b30:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a10b37:	01 
  a10b38:	62 11 64 40 5c e9    	vsubps zmm13,zmm19,zmm25
  a10b3e:	62 81 7c 40 5c fc    	vsubps zmm23,zmm16,zmm28
  a10b44:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x180]
  a10b4b:	06 
  a10b4c:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0xc0]
  a10b53:	03 
  a10b54:	62 21 2c 48 58 f8    	vaddps zmm31,zmm10,zmm16
  a10b5a:	62 d1 34 48 5c c3    	vsubps zmm0,zmm9,zmm11
  a10b60:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a10b67:	07 
  a10b68:	62 31 3c 40 58 d9    	vaddps zmm11,zmm24,zmm17
  a10b6e:	62 21 0c 48 58 e5    	vaddps zmm28,zmm14,zmm21
  a10b74:	62 91 4c 40 5c de    	vsubps zmm3,zmm22,zmm30
  a10b7a:	62 81 64 40 58 e9    	vaddps zmm21,zmm19,zmm25
  a10b80:	62 71 3c 48 5c ff    	vsubps zmm15,zmm8,zmm7
  a10b86:	62 a1 2c 48 5c d8    	vsubps zmm19,zmm10,zmm16
  a10b8c:	62 71 4c 48 58 cc    	vaddps zmm9,zmm6,zmm4
  a10b92:	62 a1 3c 40 5c c9    	vsubps zmm17,zmm24,zmm17
  a10b98:	62 e1 6c 48 58 c1    	vaddps zmm16,zmm2,zmm1
  a10b9e:	62 81 4c 40 58 f6    	vaddps zmm22,zmm22,zmm30
  a10ba4:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x100]
  a10bab:	04 
  a10bac:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a10bb3:	0b 
  a10bb4:	62 71 5c 40 5c d0    	vsubps zmm10,zmm20,zmm0
  a10bba:	62 f1 3c 48 58 ff    	vaddps zmm7,zmm8,zmm7
  a10bc0:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x200]
  a10bc7:	08 
  a10bc8:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x4c0]
  a10bcf:	13 
  a10bd0:	62 41 3c 48 5c f6    	vsubps zmm30,zmm8,zmm14
  a10bd6:	62 61 4c 48 5c cc    	vsubps zmm25,zmm6,zmm4
  a10bdc:	62 61 6c 48 5c c1    	vsubps zmm24,zmm2,zmm1
  a10be2:	62 51 3c 48 58 f6    	vaddps zmm14,zmm8,zmm14
  a10be8:	62 f1 5c 40 58 c8    	vaddps zmm1,zmm20,zmm0
  a10bee:	62 f1 7c 48 28 35 48 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff67e148]        # 8ed40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c1f0>
  a10bf5:	e1 67 ff 
  a10bf8:	62 d1 7c 48 28 d6    	vmovaps zmm2,zmm14
  a10bfe:	62 f2 4d 48 7f d1    	vpermt2ps zmm2,zmm6,zmm1
  a10c04:	62 f1 7c 48 29 14 24 	vmovaps ZMMWORD PTR [rsp],zmm2
  a10c0b:	62 f1 0c 48 15 d1    	vunpckhps zmm2,zmm14,zmm1
  a10c11:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm2
  a10c18:	06 
  a10c19:	62 f1 0c 48 14 d1    	vunpcklps zmm2,zmm14,zmm1
  a10c1f:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a10c26:	03 
  a10c27:	62 e1 7c 28 28 25 4f 	vmovaps ymm20,YMMWORD PTR [rip+0xffffffffff67e14f]        # 8ed80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c230>
  a10c2e:	e1 67 ff 
  a10c31:	62 72 5d 40 7f f1    	vpermt2ps zmm14,zmm20,zmm1
  a10c37:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a10c3d:	62 92 4d 48 7f ca    	vpermt2ps zmm1,zmm6,zmm26
  a10c43:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a10c4a:	04 
  a10c4b:	62 91 24 40 15 ca    	vunpckhps zmm1,zmm27,zmm26
  a10c51:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a10c58:	05 
  a10c59:	62 91 24 40 14 ca    	vunpcklps zmm1,zmm27,zmm26
  a10c5f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm1
  a10c66:	0f 
  a10c67:	62 02 5d 40 7f da    	vpermt2ps zmm27,zmm20,zmm26
  a10c6d:	62 b1 7c 48 28 d2    	vmovaps zmm2,zmm18
  a10c73:	62 92 4d 48 7f d5    	vpermt2ps zmm2,zmm6,zmm29
  a10c79:	62 91 6c 40 15 cd    	vunpckhps zmm1,zmm18,zmm29
  a10c7f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm1
  a10c86:	0e 
  a10c87:	62 91 6c 40 14 cd    	vunpcklps zmm1,zmm18,zmm29
  a10c8d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm1
  a10c94:	15 
  a10c95:	62 82 5d 40 7f d5    	vpermt2ps zmm18,zmm20,zmm29
  a10c9b:	62 41 7c 48 28 ed    	vmovaps zmm29,zmm13
  a10ca1:	62 62 4d 48 7f ed    	vpermt2ps zmm29,zmm6,zmm5
  a10ca7:	62 f1 14 48 15 cd    	vunpckhps zmm1,zmm13,zmm5
  a10cad:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a10cb4:	0d 
  a10cb5:	62 f1 14 48 14 cd    	vunpcklps zmm1,zmm13,zmm5
  a10cbb:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a10cc2:	0c 
  a10cc3:	62 72 5d 40 7f ed    	vpermt2ps zmm13,zmm20,zmm5
  a10cc9:	62 41 7c 48 28 d3    	vmovaps zmm26,zmm11
  a10ccf:	62 02 4d 48 7f d7    	vpermt2ps zmm26,zmm6,zmm31
  a10cd5:	62 91 24 48 15 cf    	vunpckhps zmm1,zmm11,zmm31
  a10cdb:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a10ce2:	0b 
  a10ce3:	62 91 24 48 14 cf    	vunpcklps zmm1,zmm11,zmm31
  a10ce9:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm1
  a10cf0:	1c 
  a10cf1:	62 12 5d 40 7f df    	vpermt2ps zmm11,zmm20,zmm31
  a10cf7:	62 41 7c 48 28 ff    	vmovaps zmm31,zmm15
  a10cfd:	62 62 4d 48 7f fb    	vpermt2ps zmm31,zmm6,zmm3
  a10d03:	62 f1 04 48 15 cb    	vunpckhps zmm1,zmm15,zmm3
  a10d09:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a10d10:	0a 
  a10d11:	62 f1 04 48 14 cb    	vunpcklps zmm1,zmm15,zmm3
  a10d17:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a10d1e:	09 
  a10d1f:	62 72 5d 40 7f fb    	vpermt2ps zmm15,zmm20,zmm3
  a10d25:	62 b1 7c 48 28 e0    	vmovaps zmm4,zmm16
  a10d2b:	62 d2 4d 48 7f e1    	vpermt2ps zmm4,zmm6,zmm9
  a10d31:	62 d1 7c 40 15 c1    	vunpckhps zmm0,zmm16,zmm9
  a10d37:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a10d3e:	08 
  a10d3f:	62 d1 7c 40 14 c1    	vunpcklps zmm0,zmm16,zmm9
  a10d45:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm0
  a10d4c:	14 
  a10d4d:	62 c2 5d 40 7f c1    	vpermt2ps zmm16,zmm20,zmm9
  a10d53:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a10d59:	62 d2 4d 48 7f da    	vpermt2ps zmm3,zmm6,zmm10
  a10d5f:	62 d1 0c 40 15 c2    	vunpckhps zmm0,zmm30,zmm10
  a10d65:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a10d6c:	13 
  a10d6d:	62 d1 0c 40 14 c2    	vunpcklps zmm0,zmm30,zmm10
  a10d73:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm0
  a10d7a:	1b 
  a10d7b:	62 42 5d 40 7f f2    	vpermt2ps zmm30,zmm20,zmm10
  a10d81:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a10d88:	01 
  a10d89:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a10d8f:	62 d2 4d 48 7f ec    	vpermt2ps zmm5,zmm6,zmm12
  a10d95:	62 d1 7c 48 15 cc    	vunpckhps zmm1,zmm0,zmm12
  a10d9b:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm1
  a10da2:	1a 
  a10da3:	62 d1 7c 48 14 cc    	vunpcklps zmm1,zmm0,zmm12
  a10da9:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm1
  a10db0:	12 
  a10db1:	62 d2 5d 40 7f c4    	vpermt2ps zmm0,zmm20,zmm12
  a10db7:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a10dbe:	01 
  a10dbf:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a10dc6:	07 
  a10dc7:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a10dcd:	62 b2 4d 48 7f c7    	vpermt2ps zmm0,zmm6,zmm23
  a10dd3:	62 31 74 48 15 c7    	vunpckhps zmm8,zmm1,zmm23
  a10dd9:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm8
  a10de0:	11 
  a10de1:	62 31 74 48 14 c7    	vunpcklps zmm8,zmm1,zmm23
  a10de7:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm8
  a10dee:	19 
  a10def:	62 b2 5d 40 7f cf    	vpermt2ps zmm1,zmm20,zmm23
  a10df5:	62 71 7c 48 28 d1    	vmovaps zmm10,zmm1
  a10dfb:	62 b1 7c 48 28 cd    	vmovaps zmm1,zmm21
  a10e01:	62 92 4d 48 7f cc    	vpermt2ps zmm1,zmm6,zmm28
  a10e07:	62 11 54 40 15 c4    	vunpckhps zmm8,zmm21,zmm28
  a10e0d:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm8
  a10e14:	07 
  a10e15:	62 11 54 40 14 c4    	vunpcklps zmm8,zmm21,zmm28
  a10e1b:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm8
  a10e22:	18 
  a10e23:	62 82 5d 40 7f ec    	vpermt2ps zmm21,zmm20,zmm28
  a10e29:	62 21 7c 48 28 e1    	vmovaps zmm28,zmm17
  a10e2f:	62 22 4d 48 7f e3    	vpermt2ps zmm28,zmm6,zmm19
  a10e35:	62 31 74 40 15 c3    	vunpckhps zmm8,zmm17,zmm19
  a10e3b:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm8
  a10e42:	10 
  a10e43:	62 31 74 40 14 c3    	vunpcklps zmm8,zmm17,zmm19
  a10e49:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm8
  a10e50:	17 
  a10e51:	62 a2 5d 40 7f cb    	vpermt2ps zmm17,zmm20,zmm19
  a10e57:	62 e1 7c 48 28 ff    	vmovaps zmm23,zmm7
  a10e5d:	62 a2 4d 48 7f fe    	vpermt2ps zmm23,zmm6,zmm22
  a10e63:	62 a1 44 48 15 de    	vunpckhps zmm19,zmm7,zmm22
  a10e69:	62 31 44 48 14 c6    	vunpcklps zmm8,zmm7,zmm22
  a10e6f:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm8
  a10e76:	16 
  a10e77:	62 b2 5d 40 7f fe    	vpermt2ps zmm7,zmm20,zmm22
  a10e7d:	62 92 3d 40 77 f1    	vpermi2ps zmm6,zmm24,zmm25
  a10e83:	62 11 3c 40 15 e1    	vunpckhps zmm12,zmm24,zmm25
  a10e89:	62 11 3c 40 14 c1    	vunpcklps zmm8,zmm24,zmm25
  a10e8f:	62 02 5d 40 7f c1    	vpermt2ps zmm24,zmm20,zmm25
  a10e95:	62 71 7c 48 28 0c 24 	vmovaps zmm9,ZMMWORD PTR [rsp]
  a10e9c:	62 71 7c 48 11 0e    	vmovups ZMMWORD PTR [rsi],zmm9
  a10ea2:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0xc0]
  a10ea9:	03 
  a10eaa:	62 73 7d 48 19 4e 06 	vextractf32x4 XMMWORD PTR [rsi+0x60],zmm9,0x3
  a10eb1:	03 
  a10eb2:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x180]
  a10eb9:	06 
  a10eba:	62 53 7d 48 19 c9 03 	vextractf32x4 xmm9,zmm9,0x3
  a10ec1:	c5 78 13 4e 70       	vmovlps QWORD PTR [rsi+0x70],xmm9
  a10ec6:	c5 7c 11 76 40       	vmovups YMMWORD PTR [rsi+0x40],ymm14
  a10ecb:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x100]
  a10ed2:	04 
  a10ed3:	62 71 7c 48 11 8e 78 	vmovups ZMMWORD PTR [rsi+0x78],zmm9
  a10eda:	00 00 00 
  a10edd:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x3c0]
  a10ee4:	0f 
  a10ee5:	62 73 7d 48 19 8e d8 	vextractf32x4 XMMWORD PTR [rsi+0xd8],zmm9,0x3
  a10eec:	00 00 00 03 
  a10ef0:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x140]
  a10ef7:	05 
  a10ef8:	62 53 7d 48 19 c9 03 	vextractf32x4 xmm9,zmm9,0x3
  a10eff:	c5 78 13 8e e8 00 00 	vmovlps QWORD PTR [rsi+0xe8],xmm9
  a10f06:	00 
  a10f07:	62 61 7c 28 11 9e b8 	vmovups YMMWORD PTR [rsi+0xb8],ymm27
  a10f0e:	00 00 00 
  a10f11:	62 f1 7c 48 11 96 f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm2
  a10f18:	00 00 00 
  a10f1b:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x540]
  a10f22:	15 
  a10f23:	62 f3 7d 48 19 56 15 	vextractf32x4 XMMWORD PTR [rsi+0x150],zmm2,0x3
  a10f2a:	03 
  a10f2b:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x380]
  a10f32:	0e 
  a10f33:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a10f3a:	c5 f8 13 96 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm2
  a10f41:	00 
  a10f42:	62 e1 7c 28 11 96 30 	vmovups YMMWORD PTR [rsi+0x130],ymm18
  a10f49:	01 00 00 
  a10f4c:	62 61 7c 48 11 ae 68 	vmovups ZMMWORD PTR [rsi+0x168],zmm29
  a10f53:	01 00 00 
  a10f56:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x300]
  a10f5d:	0c 
  a10f5e:	62 f3 7d 48 19 96 c8 	vextractf32x4 XMMWORD PTR [rsi+0x1c8],zmm2,0x3
  a10f65:	01 00 00 03 
  a10f69:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x340]
  a10f70:	0d 
  a10f71:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a10f78:	c5 f8 13 96 d8 01 00 	vmovlps QWORD PTR [rsi+0x1d8],xmm2
  a10f7f:	00 
  a10f80:	c5 7c 11 ae a8 01 00 	vmovups YMMWORD PTR [rsi+0x1a8],ymm13
  a10f87:	00 
  a10f88:	62 61 7c 48 11 96 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm26
  a10f8f:	01 00 00 
  a10f92:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x700]
  a10f99:	1c 
  a10f9a:	62 f3 7d 48 19 56 24 	vextractf32x4 XMMWORD PTR [rsi+0x240],zmm2,0x3
  a10fa1:	03 
  a10fa2:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x2c0]
  a10fa9:	0b 
  a10faa:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a10fb1:	c5 f8 13 96 50 02 00 	vmovlps QWORD PTR [rsi+0x250],xmm2
  a10fb8:	00 
  a10fb9:	c5 7c 11 9e 20 02 00 	vmovups YMMWORD PTR [rsi+0x220],ymm11
  a10fc0:	00 
  a10fc1:	62 61 7c 48 11 be 58 	vmovups ZMMWORD PTR [rsi+0x258],zmm31
  a10fc8:	02 00 00 
  a10fcb:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x240]
  a10fd2:	09 
  a10fd3:	62 f3 7d 48 19 96 b8 	vextractf32x4 XMMWORD PTR [rsi+0x2b8],zmm2,0x3
  a10fda:	02 00 00 03 
  a10fde:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x280]
  a10fe5:	0a 
  a10fe6:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a10fed:	c5 f8 13 96 c8 02 00 	vmovlps QWORD PTR [rsi+0x2c8],xmm2
  a10ff4:	00 
  a10ff5:	c5 7c 11 be 98 02 00 	vmovups YMMWORD PTR [rsi+0x298],ymm15
  a10ffc:	00 
  a10ffd:	62 f1 7c 48 11 a6 d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm4
  a11004:	02 00 00 
  a11007:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x500]
  a1100e:	14 
  a1100f:	62 f3 7d 48 19 56 33 	vextractf32x4 XMMWORD PTR [rsi+0x330],zmm2,0x3
  a11016:	03 
  a11017:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x200]
  a1101e:	08 
  a1101f:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a11026:	c5 f8 13 96 40 03 00 	vmovlps QWORD PTR [rsi+0x340],xmm2
  a1102d:	00 
  a1102e:	62 e1 7c 28 11 86 10 	vmovups YMMWORD PTR [rsi+0x310],ymm16
  a11035:	03 00 00 
  a11038:	62 f1 7c 48 11 9e 48 	vmovups ZMMWORD PTR [rsi+0x348],zmm3
  a1103f:	03 00 00 
  a11042:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x6c0]
  a11049:	1b 
  a1104a:	62 f3 7d 48 19 96 a8 	vextractf32x4 XMMWORD PTR [rsi+0x3a8],zmm2,0x3
  a11051:	03 00 00 03 
  a11055:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x4c0]
  a1105c:	13 
  a1105d:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a11064:	c5 f8 13 96 b8 03 00 	vmovlps QWORD PTR [rsi+0x3b8],xmm2
  a1106b:	00 
  a1106c:	62 61 7c 28 11 b6 88 	vmovups YMMWORD PTR [rsi+0x388],ymm30
  a11073:	03 00 00 
  a11076:	62 f1 7c 48 11 6e 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm5
  a1107d:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x480]
  a11084:	12 
  a11085:	62 f3 7d 48 19 56 42 	vextractf32x4 XMMWORD PTR [rsi+0x420],zmm2,0x3
  a1108c:	03 
  a1108d:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x680]
  a11094:	1a 
  a11095:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a1109c:	c5 f8 13 96 30 04 00 	vmovlps QWORD PTR [rsi+0x430],xmm2
  a110a3:	00 
  a110a4:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a110ab:	01 
  a110ac:	c5 fc 11 96 00 04 00 	vmovups YMMWORD PTR [rsi+0x400],ymm2
  a110b3:	00 
  a110b4:	62 f1 7c 48 11 86 38 	vmovups ZMMWORD PTR [rsi+0x438],zmm0
  a110bb:	04 00 00 
  a110be:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x640]
  a110c5:	19 
  a110c6:	62 f3 7d 48 19 86 98 	vextractf32x4 XMMWORD PTR [rsi+0x498],zmm0,0x3
  a110cd:	04 00 00 03 
  a110d1:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x440]
  a110d8:	11 
  a110d9:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a110e0:	c5 f8 13 86 a8 04 00 	vmovlps QWORD PTR [rsi+0x4a8],xmm0
  a110e7:	00 
  a110e8:	c5 7c 11 96 78 04 00 	vmovups YMMWORD PTR [rsi+0x478],ymm10
  a110ef:	00 
  a110f0:	62 f1 7c 48 11 8e b0 	vmovups ZMMWORD PTR [rsi+0x4b0],zmm1
  a110f7:	04 00 00 
  a110fa:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x600]
  a11101:	18 
  a11102:	62 f3 7d 48 19 46 51 	vextractf32x4 XMMWORD PTR [rsi+0x510],zmm0,0x3
  a11109:	03 
  a1110a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a11111:	07 
  a11112:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a11119:	c5 f8 13 86 20 05 00 	vmovlps QWORD PTR [rsi+0x520],xmm0
  a11120:	00 
  a11121:	62 e1 7c 28 11 ae f0 	vmovups YMMWORD PTR [rsi+0x4f0],ymm21
  a11128:	04 00 00 
  a1112b:	62 61 7c 48 11 a6 28 	vmovups ZMMWORD PTR [rsi+0x528],zmm28
  a11132:	05 00 00 
  a11135:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x5c0]
  a1113c:	17 
  a1113d:	62 f3 7d 48 19 86 88 	vextractf32x4 XMMWORD PTR [rsi+0x588],zmm0,0x3
  a11144:	05 00 00 03 
  a11148:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x400]
  a1114f:	10 
  a11150:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a11157:	c5 f8 13 86 98 05 00 	vmovlps QWORD PTR [rsi+0x598],xmm0
  a1115e:	00 
  a1115f:	62 e1 7c 28 11 8e 68 	vmovups YMMWORD PTR [rsi+0x568],ymm17
  a11166:	05 00 00 
  a11169:	62 e1 7c 48 11 be a0 	vmovups ZMMWORD PTR [rsi+0x5a0],zmm23
  a11170:	05 00 00 
  a11173:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x580]
  a1117a:	16 
  a1117b:	62 f3 7d 48 19 46 60 	vextractf32x4 XMMWORD PTR [rsi+0x600],zmm0,0x3
  a11182:	03 
  a11183:	62 e3 7d 48 19 d8 03 	vextractf32x4 xmm0,zmm19,0x3
  a1118a:	c5 f8 13 86 10 06 00 	vmovlps QWORD PTR [rsi+0x610],xmm0
  a11191:	00 
  a11192:	c5 fc 11 be e0 05 00 	vmovups YMMWORD PTR [rsi+0x5e0],ymm7
  a11199:	00 
  a1119a:	62 f1 7c 48 11 b6 18 	vmovups ZMMWORD PTR [rsi+0x618],zmm6
  a111a1:	06 00 00 
  a111a4:	62 73 7d 48 19 86 78 	vextractf32x4 XMMWORD PTR [rsi+0x678],zmm8,0x3
  a111ab:	06 00 00 03 
  a111af:	62 73 7d 48 19 e0 03 	vextractf32x4 xmm0,zmm12,0x3
  a111b6:	c5 f8 13 86 88 06 00 	vmovlps QWORD PTR [rsi+0x688],xmm0
  a111bd:	00 
  a111be:	62 61 7c 28 11 86 58 	vmovups YMMWORD PTR [rsi+0x658],ymm24
  a111c5:	06 00 00 
  a111c8:	48 89 ec             	mov    rsp,rbp
  a111cb:	5d                   	pop    rbp
  a111cc:	c5 f8 77             	vzeroupper
  a111cf:	c3                   	ret
