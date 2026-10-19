
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a13f00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a13f00:	55                   	push   rbp
  a13f01:	48 89 e5             	mov    rbp,rsp
  a13f04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a13f08:	48 81 ec c0 03 00 00 	sub    rsp,0x3c0
  a13f0f:	48 c1 e2 08          	shl    rdx,0x8
  a13f13:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a13f17:	31 d2                	xor    edx,edx
  a13f19:	4c 8d 84 24 40 03 00 	lea    r8,[rsp+0x340]
  a13f20:	00 
  a13f21:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a13f26:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a13f2d:	00 00 00 
  a13f30:	c6 84 24 40 03 00 00 	mov    BYTE PTR [rsp+0x340],0x0
  a13f37:	00 
  a13f38:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a13f3d:	c5 f8 10 44 17 20    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x20]
  a13f43:	c4 e3 79 21 44 17 24 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x24],0x10
  a13f4a:	10 
  a13f4b:	c4 e2 79 18 4c 17 28 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x28]
  a13f52:	c5 f8 10 54 17 50    	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x50]
  a13f58:	c4 e3 69 21 54 17 54 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x54],0x10
  a13f5f:	10 
  a13f60:	c5 fc 10 1c 17       	vmovups ymm3,YMMWORD PTR [rdi+rdx*1]
  a13f65:	c4 e2 79 18 64 17 58 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x58]
  a13f6c:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a13f72:	c5 fc 10 4c 17 30    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x30]
  a13f78:	c5 fc 10 6c 17 60    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x60]
  a13f7e:	c4 e3 79 21 44 17 2c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x2c],0x30
  a13f85:	30 
  a13f86:	c5 f8 10 b4 17 80 00 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x80]
  a13f8d:	00 00 
  a13f8f:	c4 e3 49 21 b4 17 84 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0x84],0x10
  a13f96:	00 00 00 10 
  a13f9a:	c4 e3 59 0c d2 03    	vblendps xmm2,xmm4,xmm2,0x3
  a13fa0:	c4 e2 79 18 a4 17 88 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x88]
  a13fa7:	00 00 00 
  a13faa:	c4 e3 69 21 54 17 5c 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x5c],0x30
  a13fb1:	30 
  a13fb2:	c5 f8 10 bc 17 b0 00 	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0xb0]
  a13fb9:	00 00 
  a13fbb:	c4 e3 41 21 bc 17 b4 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0xb4],0x10
  a13fc2:	00 00 00 10 
  a13fc6:	c4 e3 59 0c e6 03    	vblendps xmm4,xmm4,xmm6,0x3
  a13fcc:	c4 e2 79 18 b4 17 b8 	vbroadcastss xmm6,DWORD PTR [rdi+rdx*1+0xb8]
  a13fd3:	00 00 00 
  a13fd6:	c4 e3 59 21 a4 17 8c 	vinsertps xmm4,xmm4,DWORD PTR [rdi+rdx*1+0x8c],0x30
  a13fdd:	00 00 00 30 
  a13fe1:	c5 7c 10 84 17 90 00 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x90]
  a13fe8:	00 00 
  a13fea:	c5 7c 10 8c 17 c0 00 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0xc0]
  a13ff1:	00 00 
  a13ff3:	c5 78 10 94 17 e0 00 	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0xe0]
  a13ffa:	00 00 
  a13ffc:	c4 e3 49 0c f7 03    	vblendps xmm6,xmm6,xmm7,0x3
  a14002:	c4 e3 29 21 bc 17 e4 	vinsertps xmm7,xmm10,DWORD PTR [rdi+rdx*1+0xe4],0x10
  a14009:	00 00 00 10 
  a1400d:	c4 e3 49 21 b4 17 bc 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0xbc],0x30
  a14014:	00 00 00 30 
  a14018:	c4 62 79 18 94 17 e8 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0xe8]
  a1401f:	00 00 00 
  a14022:	c5 78 10 9c 17 10 01 	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x110]
  a14029:	00 00 
  a1402b:	c4 e3 29 0c ff 03    	vblendps xmm7,xmm10,xmm7,0x3
  a14031:	c4 63 21 21 94 17 14 	vinsertps xmm10,xmm11,DWORD PTR [rdi+rdx*1+0x114],0x10
  a14038:	01 00 00 10 
  a1403c:	c4 e3 41 21 bc 17 ec 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0xec],0x30
  a14043:	00 00 00 30 
  a14047:	c5 7c 10 9c 17 f0 00 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0xf0]
  a1404e:	00 00 
  a14050:	c4 62 79 18 a4 17 18 	vbroadcastss xmm12,DWORD PTR [rdi+rdx*1+0x118]
  a14057:	01 00 00 
  a1405a:	62 e3 65 48 18 d0 02 	vinsertf32x4 zmm18,zmm3,xmm0,0x2
  a14061:	c4 c3 19 0c c2 03    	vblendps xmm0,xmm12,xmm10,0x3
  a14067:	c4 e3 79 21 84 17 1c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x11c],0x30
  a1406e:	01 00 00 30 
  a14072:	62 e3 75 48 18 e2 02 	vinsertf32x4 zmm20,zmm1,xmm2,0x2
  a14079:	c5 f8 10 8c 17 40 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x140]
  a14080:	00 00 
  a14082:	c4 e3 71 21 8c 17 44 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x144],0x10
  a14089:	01 00 00 10 
  a1408d:	62 63 55 48 18 c4 02 	vinsertf32x4 zmm24,zmm5,xmm4,0x2
  a14094:	c5 fc 10 94 17 20 01 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x120]
  a1409b:	00 00 
  a1409d:	c4 e2 79 18 9c 17 48 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x148]
  a140a4:	01 00 00 
  a140a7:	62 e3 3d 48 18 de 02 	vinsertf32x4 zmm19,zmm8,xmm6,0x2
  a140ae:	c4 e3 61 0c c9 03    	vblendps xmm1,xmm3,xmm1,0x3
  a140b4:	c4 e3 71 21 8c 17 4c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x14c],0x30
  a140bb:	01 00 00 30 
  a140bf:	62 e3 35 48 18 ff 02 	vinsertf32x4 zmm23,zmm9,xmm7,0x2
  a140c6:	c5 f8 10 9c 17 70 01 	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x170]
  a140cd:	00 00 
  a140cf:	c4 e3 61 21 9c 17 74 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x174],0x10
  a140d6:	01 00 00 10 
  a140da:	62 e3 25 48 18 f0 02 	vinsertf32x4 zmm22,zmm11,xmm0,0x2
  a140e1:	c5 fc 10 84 17 50 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x150]
  a140e8:	00 00 
  a140ea:	c4 e2 79 18 a4 17 78 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x178]
  a140f1:	01 00 00 
  a140f4:	62 63 6d 48 18 d1 02 	vinsertf32x4 zmm26,zmm2,xmm1,0x2
  a140fb:	c4 e3 59 0c cb 03    	vblendps xmm1,xmm4,xmm3,0x3
  a14101:	c4 e3 71 21 8c 17 7c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x17c],0x30
  a14108:	01 00 00 30 
  a1410c:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm18
  a14113:	04 
  a14114:	c5 f8 10 94 17 a0 01 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x1a0]
  a1411b:	00 00 
  a1411d:	c4 e3 69 21 94 17 a4 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x1a4],0x10
  a14124:	01 00 00 10 
  a14128:	62 a1 54 00 57 ed    	vxorps xmm21,xmm21,xmm21
  a1412e:	62 f1 7c 48 28 3d 88 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff67b188]        # 8f2c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c770>
  a14135:	b1 67 ff 
  a14138:	62 a2 45 48 7f d5    	vpermt2ps zmm18,zmm7,zmm21
  a1413e:	62 63 7d 48 18 c9 02 	vinsertf32x4 zmm25,zmm0,xmm1,0x2
  a14145:	c4 e2 79 18 84 17 a8 	vbroadcastss xmm0,DWORD PTR [rdi+rdx*1+0x1a8]
  a1414c:	01 00 00 
  a1414f:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm20
  a14156:	03 
  a14157:	c4 e3 79 0c c2 03    	vblendps xmm0,xmm0,xmm2,0x3
  a1415d:	c4 e3 79 21 84 17 ac 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x1ac],0x30
  a14164:	01 00 00 30 
  a14168:	62 a2 45 48 7f e5    	vpermt2ps zmm20,zmm7,zmm21
  a1416e:	c5 fc 10 8c 17 80 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x180]
  a14175:	00 00 
  a14177:	62 63 75 48 18 e8 02 	vinsertf32x4 zmm29,zmm1,xmm0,0x2
  a1417e:	c5 fc 10 84 17 b0 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x1b0]
  a14185:	00 00 
  a14187:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm24
  a1418e:	01 
  a1418f:	c5 f8 10 8c 17 d0 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x1d0]
  a14196:	00 00 
  a14198:	c4 e3 71 21 8c 17 d4 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x1d4],0x10
  a1419f:	01 00 00 10 
  a141a3:	62 22 45 48 7f c5    	vpermt2ps zmm24,zmm7,zmm21
  a141a9:	c4 e2 79 18 94 17 d8 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x1d8]
  a141b0:	01 00 00 
  a141b3:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a141b9:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm19
  a141c0:	02 
  a141c1:	c4 e3 71 21 8c 17 dc 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x1dc],0x30
  a141c8:	01 00 00 30 
  a141cc:	62 73 7d 48 18 f9 02 	vinsertf32x4 zmm15,zmm0,xmm1,0x2
  a141d3:	62 a2 45 48 7f dd    	vpermt2ps zmm19,zmm7,zmm21
  a141d9:	c5 f8 10 84 17 00 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x200]
  a141e0:	00 00 
  a141e2:	c4 e3 79 21 84 17 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x204],0x10
  a141e9:	02 00 00 10 
  a141ed:	62 21 7c 48 28 e7    	vmovaps zmm28,zmm23
  a141f3:	c5 fc 10 8c 17 e0 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x1e0]
  a141fa:	00 00 
  a141fc:	c4 e2 79 18 94 17 08 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x208]
  a14203:	02 00 00 
  a14206:	62 a2 45 48 7f fd    	vpermt2ps zmm23,zmm7,zmm21
  a1420c:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a14212:	c4 e3 79 21 84 17 0c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x20c],0x30
  a14219:	02 00 00 30 
  a1421d:	62 21 7c 48 28 de    	vmovaps zmm27,zmm22
  a14223:	c5 f8 10 94 17 30 02 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x230]
  a1422a:	00 00 
  a1422c:	c4 e3 69 21 9c 17 34 	vinsertps xmm3,xmm2,DWORD PTR [rdi+rdx*1+0x234],0x10
  a14233:	02 00 00 10 
  a14237:	62 a2 45 48 7f f5    	vpermt2ps zmm22,zmm7,zmm21
  a1423d:	62 f3 75 48 18 d0 02 	vinsertf32x4 zmm2,zmm1,xmm0,0x2
  a14244:	c4 e2 79 18 84 17 38 	vbroadcastss xmm0,DWORD PTR [rdi+rdx*1+0x238]
  a1424b:	02 00 00 
  a1424e:	62 01 7c 48 28 f2    	vmovaps zmm30,zmm26
  a14254:	c4 e3 79 0c c3 03    	vblendps xmm0,xmm0,xmm3,0x3
  a1425a:	c4 e3 79 21 84 17 3c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x23c],0x30
  a14261:	02 00 00 30 
  a14265:	62 22 45 48 7f d5    	vpermt2ps zmm26,zmm7,zmm21
  a1426b:	c5 fc 10 8c 17 10 02 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x210]
  a14272:	00 00 
  a14274:	62 73 75 48 18 f0 02 	vinsertf32x4 zmm14,zmm1,xmm0,0x2
  a1427b:	c5 fc 10 84 17 40 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x240]
  a14282:	00 00 
  a14284:	62 01 7c 48 28 f9    	vmovaps zmm31,zmm25
  a1428a:	c5 f8 10 8c 17 60 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x260]
  a14291:	00 00 
  a14293:	c4 e3 71 21 8c 17 64 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x264],0x10
  a1429a:	02 00 00 10 
  a1429e:	62 22 45 48 7f cd    	vpermt2ps zmm25,zmm7,zmm21
  a142a4:	c4 e2 79 18 9c 17 68 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x268]
  a142ab:	02 00 00 
  a142ae:	c4 e3 61 0c c9 03    	vblendps xmm1,xmm3,xmm1,0x3
  a142b4:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm29
  a142bb:	0a 
  a142bc:	c4 e3 71 21 8c 17 6c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x26c],0x30
  a142c3:	02 00 00 30 
  a142c7:	62 73 7d 48 18 e9 02 	vinsertf32x4 zmm13,zmm0,xmm1,0x2
  a142ce:	62 22 45 48 7f ed    	vpermt2ps zmm29,zmm7,zmm21
  a142d4:	c5 f8 10 84 17 90 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x290]
  a142db:	00 00 
  a142dd:	c4 e3 79 21 84 17 94 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x294],0x10
  a142e4:	02 00 00 10 
  a142e8:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a142ee:	c5 fc 10 8c 17 70 02 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x270]
  a142f5:	00 00 
  a142f7:	c4 e2 79 18 ac 17 98 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x298]
  a142fe:	02 00 00 
  a14301:	62 32 45 48 7f fd    	vpermt2ps zmm15,zmm7,zmm21
  a14307:	c4 e3 51 0c c0 03    	vblendps xmm0,xmm5,xmm0,0x3
  a1430d:	c4 e3 79 21 84 17 9c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x29c],0x30
  a14314:	02 00 00 30 
  a14318:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a1431e:	c5 f8 10 ac 17 c0 02 	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x2c0]
  a14325:	00 00 
  a14327:	c4 e3 51 21 ac 17 c4 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x2c4],0x10
  a1432e:	02 00 00 10 
  a14332:	62 b2 45 48 7f d5    	vpermt2ps zmm2,zmm7,zmm21
  a14338:	62 73 75 48 18 c8 02 	vinsertf32x4 zmm9,zmm1,xmm0,0x2
  a1433f:	c4 e2 79 18 84 17 c8 	vbroadcastss xmm0,DWORD PTR [rdi+rdx*1+0x2c8]
  a14346:	02 00 00 
  a14349:	62 51 7c 48 28 e6    	vmovaps zmm12,zmm14
  a1434f:	c4 e3 79 0c c5 03    	vblendps xmm0,xmm0,xmm5,0x3
  a14355:	c4 e3 79 21 84 17 cc 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x2cc],0x30
  a1435c:	02 00 00 30 
  a14360:	62 32 45 48 7f f5    	vpermt2ps zmm14,zmm7,zmm21
  a14366:	c5 fc 10 8c 17 a0 02 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x2a0]
  a1436d:	00 00 
  a1436f:	62 f3 75 48 18 f0 02 	vinsertf32x4 zmm6,zmm1,xmm0,0x2
  a14376:	c5 fc 10 8c 17 d0 02 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x2d0]
  a1437d:	00 00 
  a1437f:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a14385:	c5 f8 10 84 17 f0 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x2f0]
  a1438c:	00 00 
  a1438e:	c4 e3 79 21 84 17 f4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x2f4],0x10
  a14395:	02 00 00 10 
  a14399:	62 32 45 48 7f cd    	vpermt2ps zmm9,zmm7,zmm21
  a1439f:	c4 e2 79 18 ac 17 f8 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x2f8]
  a143a6:	02 00 00 
  a143a9:	c4 e3 51 0c e8 03    	vblendps xmm5,xmm5,xmm0,0x3
  a143af:	62 f1 7c 48 28 de    	vmovaps zmm3,zmm6
  a143b5:	c4 e3 51 21 ac 17 fc 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x2fc],0x30
  a143bc:	02 00 00 30 
  a143c0:	62 73 75 48 18 d5 02 	vinsertf32x4 zmm10,zmm1,xmm5,0x2
  a143c7:	62 b2 45 48 7f f5    	vpermt2ps zmm6,zmm7,zmm21
  a143cd:	62 d1 7c 48 28 e2    	vmovaps zmm4,zmm10
  a143d3:	62 32 45 48 7f d5    	vpermt2ps zmm10,zmm7,zmm21
  a143d9:	62 91 6c 40 58 c5    	vaddps zmm0,zmm18,zmm29
  a143df:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a143e6:	08 
  a143e7:	62 91 6c 40 5c c5    	vsubps zmm0,zmm18,zmm29
  a143ed:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a143f4:	09 
  a143f5:	62 61 3c 40 58 ea    	vaddps zmm29,zmm24,zmm2
  a143fb:	62 e1 3c 40 5c ca    	vsubps zmm17,zmm24,zmm2
  a14401:	62 61 2c 40 58 c6    	vaddps zmm24,zmm26,zmm6
  a14407:	62 f1 2c 40 5c f6    	vsubps zmm6,zmm26,zmm6
  a1440d:	62 41 5c 40 58 d7    	vaddps zmm26,zmm20,zmm15
  a14413:	62 d1 5c 40 5c c7    	vsubps zmm0,zmm20,zmm15
  a14419:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a14420:	07 
  a14421:	62 c1 4c 40 58 d1    	vaddps zmm18,zmm22,zmm9
  a14427:	62 b1 34 48 5c c6    	vsubps zmm0,zmm9,zmm22
  a1442d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a14434:	06 
  a14435:	62 c1 64 40 58 f6    	vaddps zmm22,zmm19,zmm14
  a1443b:	62 51 64 40 5c ce    	vsubps zmm9,zmm19,zmm14
  a14441:	62 c1 34 40 58 da    	vaddps zmm19,zmm25,zmm10
  a14447:	62 91 2c 48 5c c1    	vsubps zmm0,zmm10,zmm25
  a1444d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a14454:	05 
  a14455:	62 51 7c 48 28 d5    	vmovaps zmm10,zmm13
  a1445b:	62 32 45 48 7f ed    	vpermt2ps zmm13,zmm7,zmm21
  a14461:	62 d1 44 40 58 ed    	vaddps zmm5,zmm23,zmm13
  a14467:	62 31 14 48 5c ef    	vsubps zmm13,zmm13,zmm23
  a1446d:	62 f1 7c 48 28 15 09 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff67ae09]        # 8f280 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c730>
  a14474:	ae 67 ff 
  a14477:	62 22 6d 48 7f e5    	vpermt2ps zmm28,zmm2,zmm21
  a1447d:	62 32 6d 48 7f d5    	vpermt2ps zmm10,zmm2,zmm21
  a14483:	62 41 1c 40 58 ca    	vaddps zmm25,zmm28,zmm10
  a14489:	62 51 1c 40 5c f2    	vsubps zmm14,zmm28,zmm10
  a1448f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a14496:	01 
  a14497:	62 b2 6d 48 7f c5    	vpermt2ps zmm0,zmm2,zmm21
  a1449d:	62 32 6d 48 7f c5    	vpermt2ps zmm8,zmm2,zmm21
  a144a3:	62 51 7c 48 58 d0    	vaddps zmm10,zmm0,zmm8
  a144a9:	62 51 7c 48 5c c0    	vsubps zmm8,zmm0,zmm8
  a144af:	62 22 6d 48 7f f5    	vpermt2ps zmm30,zmm2,zmm21
  a144b5:	62 b2 6d 48 7f dd    	vpermt2ps zmm3,zmm2,zmm21
  a144bb:	62 f1 0c 40 58 c3    	vaddps zmm0,zmm30,zmm3
  a144c1:	62 f1 0c 40 5c db    	vsubps zmm3,zmm30,zmm3
  a144c7:	62 22 6d 48 7f dd    	vpermt2ps zmm27,zmm2,zmm21
  a144cd:	62 32 6d 48 7f dd    	vpermt2ps zmm11,zmm2,zmm21
  a144d3:	62 d1 24 40 58 cb    	vaddps zmm1,zmm27,zmm11
  a144d9:	62 c1 24 40 5c fb    	vsubps zmm23,zmm27,zmm11
  a144df:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0xc0]
  a144e6:	03 
  a144e7:	62 32 6d 48 7f dd    	vpermt2ps zmm11,zmm2,zmm21
  a144ed:	62 a2 6d 48 7f c5    	vpermt2ps zmm16,zmm2,zmm21
  a144f3:	62 b1 24 48 58 f8    	vaddps zmm7,zmm11,zmm16
  a144f9:	62 21 24 48 5c e0    	vsubps zmm28,zmm11,zmm16
  a144ff:	62 22 6d 48 7f fd    	vpermt2ps zmm31,zmm2,zmm21
  a14505:	62 b2 6d 48 7f e5    	vpermt2ps zmm4,zmm2,zmm21
  a1450b:	62 71 04 40 58 fc    	vaddps zmm15,zmm31,zmm4
  a14511:	62 61 04 40 5c dc    	vsubps zmm27,zmm31,zmm4
  a14517:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x80]
  a1451e:	02 
  a1451f:	62 32 6d 48 7f dd    	vpermt2ps zmm11,zmm2,zmm21
  a14525:	62 32 6d 48 7f e5    	vpermt2ps zmm12,zmm2,zmm21
  a1452b:	62 d1 24 48 58 e4    	vaddps zmm4,zmm11,zmm12
  a14531:	62 41 24 48 5c fc    	vsubps zmm31,zmm11,zmm12
  a14537:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x100]
  a1453e:	04 
  a1453f:	62 32 6d 48 7f dd    	vpermt2ps zmm11,zmm2,zmm21
  a14545:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x280]
  a1454c:	0a 
  a1454d:	62 32 6d 48 7f e5    	vpermt2ps zmm12,zmm2,zmm21
  a14553:	62 d1 24 48 58 d4    	vaddps zmm2,zmm11,zmm12
  a14559:	62 c1 24 48 5c e4    	vsubps zmm20,zmm11,zmm12
  a1455f:	62 51 74 40 58 d8    	vaddps zmm11,zmm17,zmm8
  a14565:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm11
  a1456c:	04 
  a1456d:	62 31 3c 48 5c c1    	vsubps zmm8,zmm8,zmm17
  a14573:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm8
  a1457a:	02 
  a1457b:	62 71 64 48 5c c6    	vsubps zmm8,zmm3,zmm6
  a14581:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm8
  a14588:	03 
  a14589:	62 f1 4c 48 58 db    	vaddps zmm3,zmm6,zmm3
  a1458f:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a14596:	01 
  a14597:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x200]
  a1459e:	08 
  a1459f:	62 e1 64 48 58 c5    	vaddps zmm16,zmm3,zmm5
  a145a5:	62 71 64 48 5c c5    	vsubps zmm8,zmm3,zmm5
  a145ab:	62 e1 2c 48 58 c8    	vaddps zmm17,zmm10,zmm0
  a145b1:	62 61 2c 48 5c f0    	vsubps zmm30,zmm10,zmm0
  a145b7:	62 b1 2c 40 58 ea    	vaddps zmm5,zmm26,zmm18
  a145bd:	62 b1 2c 40 5c f2    	vsubps zmm6,zmm26,zmm18
  a145c3:	62 71 44 48 58 d1    	vaddps zmm10,zmm7,zmm1
  a145c9:	62 f1 44 48 5c c9    	vsubps zmm1,zmm7,zmm1
  a145cf:	62 21 4c 40 58 d3    	vaddps zmm26,zmm22,zmm19
  a145d5:	62 b1 4c 40 5c fb    	vsubps zmm7,zmm22,zmm19
  a145db:	62 51 5c 48 58 df    	vaddps zmm11,zmm4,zmm15
  a145e1:	62 d1 5c 48 5c e7    	vsubps zmm4,zmm4,zmm15
  a145e7:	62 91 14 40 58 c0    	vaddps zmm0,zmm29,zmm24
  a145ed:	62 01 3c 40 5c c5    	vsubps zmm24,zmm24,zmm29
  a145f3:	62 01 6c 48 58 e9    	vaddps zmm29,zmm2,zmm25
  a145f9:	62 11 6c 48 5c f9    	vsubps zmm15,zmm2,zmm25
  a145ff:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x240]
  a14606:	09 
  a14607:	62 c1 6c 48 58 de    	vaddps zmm19,zmm2,zmm14
  a1460d:	62 d1 6c 48 5c d6    	vsubps zmm2,zmm2,zmm14
  a14613:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm2
  a1461a:	0a 
  a1461b:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x1c0]
  a14622:	07 
  a14623:	62 21 6c 48 58 cf    	vaddps zmm25,zmm2,zmm23
  a14629:	62 a1 6c 48 5c ff    	vsubps zmm23,zmm2,zmm23
  a1462f:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x180]
  a14636:	06 
  a14637:	62 91 64 48 58 d4    	vaddps zmm2,zmm3,zmm28
  a1463d:	62 61 1c 40 5c e3    	vsubps zmm28,zmm28,zmm3
  a14643:	62 81 34 48 58 eb    	vaddps zmm21,zmm9,zmm27
  a14649:	62 01 34 48 5c db    	vsubps zmm27,zmm9,zmm27
  a1464f:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x140]
  a14656:	05 
  a14657:	62 11 64 48 58 cf    	vaddps zmm9,zmm3,zmm31
  a1465d:	62 f1 04 40 5c db    	vsubps zmm3,zmm31,zmm3
  a14663:	62 71 4c 48 58 e1    	vaddps zmm12,zmm6,zmm1
  a14669:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm12
  a14670:	0c 
  a14671:	62 f1 74 48 5c ce    	vsubps zmm1,zmm1,zmm6
  a14677:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a1467e:	0b 
  a1467f:	62 a1 14 48 58 f4    	vaddps zmm22,zmm13,zmm20
  a14685:	62 c1 5c 40 5c e5    	vsubps zmm20,zmm20,zmm13
  a1468b:	62 71 5c 48 5c ef    	vsubps zmm13,zmm4,zmm7
  a14691:	62 61 44 48 58 fc    	vaddps zmm31,zmm7,zmm4
  a14697:	62 f1 7c 40 58 c8    	vaddps zmm1,zmm16,zmm0
  a1469d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a146a4:	05 
  a146a5:	62 f1 7c 40 5c c0    	vsubps zmm0,zmm16,zmm0
  a146ab:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a146b2:	09 
  a146b3:	62 c1 2c 48 58 d3    	vaddps zmm18,zmm10,zmm11
  a146b9:	62 d1 2c 48 5c c3    	vsubps zmm0,zmm10,zmm11
  a146bf:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a146c6:	07 
  a146c7:	62 11 54 48 58 e2    	vaddps zmm12,zmm5,zmm26
  a146cd:	62 f1 2c 40 5c c5    	vsubps zmm0,zmm26,zmm5
  a146d3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a146da:	08 
  a146db:	62 a1 14 40 58 c1    	vaddps zmm16,zmm29,zmm17
  a146e1:	62 b1 14 40 5c c1    	vsubps zmm0,zmm29,zmm17
  a146e7:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a146ee:	06 
  a146ef:	62 f2 7d 48 18 2d 6b 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff660f6b]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a146f6:	0f 66 ff 
  a146f9:	62 f1 6c 48 59 cd    	vmulps zmm1,zmm2,zmm5
  a146ff:	62 f2 7d 48 18 35 f7 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff660ff7]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a14706:	0f 66 ff 
  a14709:	62 f2 35 40 b8 ce    	vfmadd231ps zmm1,zmm25,zmm6
  a1470f:	62 f1 6c 48 59 d6    	vmulps zmm2,zmm2,zmm6
  a14715:	62 92 55 48 bc d1    	vfnmadd231ps zmm2,zmm5,zmm25
  a1471b:	62 71 34 48 59 d6    	vmulps zmm10,zmm9,zmm6
  a14721:	62 72 55 40 b8 d5    	vfmadd231ps zmm10,zmm21,zmm5
  a14727:	62 71 34 48 59 cd    	vmulps zmm9,zmm9,zmm5
  a1472d:	62 32 4d 48 bc cd    	vfnmadd231ps zmm9,zmm6,zmm21
  a14733:	62 f2 7d 48 18 25 5f 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff660c5f]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a1473a:	0c 66 ff 
  a1473d:	62 e1 5c 48 59 6c 24 	vmulps zmm21,zmm4,ZMMWORD PTR [rsp+0x80]
  a14744:	02 
  a14745:	62 61 5c 48 59 4c 24 	vmulps zmm25,zmm4,ZMMWORD PTR [rsp+0x40]
  a1474c:	01 
  a1474d:	62 01 54 40 5c d1    	vsubps zmm26,zmm21,zmm25
  a14753:	62 81 54 40 58 e9    	vaddps zmm21,zmm21,zmm25
  a14759:	62 61 5c 48 59 4c 24 	vmulps zmm25,zmm4,ZMMWORD PTR [rsp+0x100]
  a14760:	04 
  a14761:	62 61 5c 48 59 6c 24 	vmulps zmm29,zmm4,ZMMWORD PTR [rsp+0xc0]
  a14768:	03 
  a14769:	62 91 34 40 58 c5    	vaddps zmm0,zmm25,zmm29
  a1476f:	62 01 14 40 5c c9    	vsubps zmm25,zmm29,zmm25
  a14775:	62 61 1c 40 59 ee    	vmulps zmm29,zmm28,zmm6
  a1477b:	62 62 45 40 b8 ed    	vfmadd231ps zmm29,zmm23,zmm5
  a14781:	62 61 1c 40 59 e5    	vmulps zmm28,zmm28,zmm5
  a14787:	62 22 4d 48 bc e7    	vfnmadd231ps zmm28,zmm6,zmm23
  a1478d:	62 e1 64 48 59 fd    	vmulps zmm23,zmm3,zmm5
  a14793:	62 e2 25 40 b8 fe    	vfmadd231ps zmm23,zmm27,zmm6
  a14799:	62 61 24 40 59 dd    	vmulps zmm27,zmm27,zmm5
  a1479f:	62 62 4d 48 bc db    	vfnmadd231ps zmm27,zmm6,zmm3
  a147a5:	62 11 3c 48 58 f6    	vaddps zmm14,zmm8,zmm30
  a147ab:	62 01 3c 48 5c f6    	vsubps zmm30,zmm8,zmm30
  a147b1:	62 71 64 40 58 c0    	vaddps zmm8,zmm19,zmm0
  a147b7:	62 f1 64 40 5c c0    	vsubps zmm0,zmm19,zmm0
  a147bd:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a147c4:	02 
  a147c5:	62 51 3c 40 58 df    	vaddps zmm11,zmm24,zmm15
  a147cb:	62 81 04 48 5c c8    	vsubps zmm17,zmm15,zmm24
  a147d1:	62 01 4c 40 58 c2    	vaddps zmm24,zmm22,zmm26
  a147d7:	62 81 4c 40 5c f2    	vsubps zmm22,zmm22,zmm26
  a147dd:	62 f1 5c 48 59 44 24 	vmulps zmm0,zmm4,ZMMWORD PTR [rsp+0x2c0]
  a147e4:	0b 
  a147e5:	62 f1 04 40 59 dc    	vmulps zmm3,zmm31,zmm4
  a147eb:	62 61 7c 48 5c d3    	vsubps zmm26,zmm0,zmm3
  a147f1:	62 61 7c 48 58 fb    	vaddps zmm31,zmm0,zmm3
  a147f7:	62 f1 5c 48 59 44 24 	vmulps zmm0,zmm4,ZMMWORD PTR [rsp+0x300]
  a147fe:	0c 
  a147ff:	62 f1 14 48 59 dc    	vmulps zmm3,zmm13,zmm4
  a14805:	62 f1 7c 48 58 e3    	vaddps zmm4,zmm0,zmm3
  a1480b:	62 71 64 48 5c e8    	vsubps zmm13,zmm3,zmm0
  a14811:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a14818:	0a 
  a14819:	62 b1 7c 48 58 fd    	vaddps zmm7,zmm0,zmm21
  a1481f:	62 a1 7c 48 5c ed    	vsubps zmm21,zmm0,zmm21
  a14825:	62 d1 6c 48 58 e9    	vaddps zmm5,zmm2,zmm9
  a1482b:	62 51 6c 48 5c c9    	vsubps zmm9,zmm2,zmm9
  a14831:	62 91 5c 40 58 f1    	vaddps zmm6,zmm20,zmm25
  a14837:	62 01 5c 40 5c c9    	vsubps zmm25,zmm20,zmm25
  a1483d:	62 d1 74 48 58 d2    	vaddps zmm2,zmm1,zmm10
  a14843:	62 71 2c 48 5c d1    	vsubps zmm10,zmm10,zmm1
  a14849:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a14850:	05 
  a14851:	62 d1 7c 48 58 dc    	vaddps zmm3,zmm0,zmm12
  a14857:	62 d1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm12
  a1485d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a14864:	01 
  a14865:	62 11 1c 40 58 e3    	vaddps zmm12,zmm28,zmm27
  a1486b:	62 91 1c 40 5c cb    	vsubps zmm1,zmm28,zmm27
  a14871:	62 21 7c 40 58 e2    	vaddps zmm28,zmm16,zmm18
  a14877:	62 b1 7c 40 5c c2    	vsubps zmm0,zmm16,zmm18
  a1487d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a14884:	04 
  a14885:	62 a1 14 40 5c c7    	vsubps zmm16,zmm29,zmm23
  a1488b:	62 a1 14 40 58 d7    	vaddps zmm18,zmm29,zmm23
  a14891:	62 f1 0c 48 58 c4    	vaddps zmm0,zmm14,zmm4
  a14897:	62 e1 0c 48 5c fc    	vsubps zmm23,zmm14,zmm4
  a1489d:	62 71 3c 48 58 f2    	vaddps zmm14,zmm8,zmm2
  a148a3:	62 e1 3c 48 5c da    	vsubps zmm19,zmm8,zmm2
  a148a9:	62 01 24 48 58 ea    	vaddps zmm29,zmm11,zmm26
  a148af:	62 91 24 48 5c d2    	vsubps zmm2,zmm11,zmm26
  a148b5:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a148bc:	03 
  a148bd:	62 f1 3c 40 58 e5    	vaddps zmm4,zmm24,zmm5
  a148c3:	62 61 3c 40 5c dd    	vsubps zmm27,zmm24,zmm5
  a148c9:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x240]
  a148d0:	09 
  a148d1:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x1c0]
  a148d8:	07 
  a148d9:	62 71 6c 48 58 dd    	vaddps zmm11,zmm2,zmm5
  a148df:	62 71 6c 48 5c fd    	vsubps zmm15,zmm2,zmm5
  a148e5:	62 a1 44 48 58 e0    	vaddps zmm20,zmm7,zmm16
  a148eb:	62 b1 44 48 5c f8    	vsubps zmm7,zmm7,zmm16
  a148f1:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x200]
  a148f8:	08 
  a148f9:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x180]
  a14900:	06 
  a14901:	62 61 6c 48 58 c5    	vaddps zmm24,zmm2,zmm5
  a14907:	62 61 54 48 5c d2    	vsubps zmm26,zmm5,zmm2
  a1490d:	62 d1 4c 48 58 d4    	vaddps zmm2,zmm6,zmm12
  a14913:	62 c1 4c 48 5c c4    	vsubps zmm16,zmm6,zmm12
  a14919:	62 91 0c 40 58 f7    	vaddps zmm6,zmm30,zmm31
  a1491f:	62 01 0c 40 5c f7    	vsubps zmm30,zmm30,zmm31
  a14925:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x80]
  a1492c:	02 
  a1492d:	62 41 54 48 58 f9    	vaddps zmm31,zmm5,zmm9
  a14933:	62 d1 54 48 5c e9    	vsubps zmm5,zmm5,zmm9
  a14939:	62 51 74 40 58 cd    	vaddps zmm9,zmm17,zmm13
  a1493f:	62 c1 74 40 5c cd    	vsubps zmm17,zmm17,zmm13
  a14945:	62 51 4c 40 58 e2    	vaddps zmm12,zmm22,zmm10
  a1494b:	62 51 4c 40 5c ea    	vsubps zmm13,zmm22,zmm10
  a14951:	62 e1 54 40 58 f1    	vaddps zmm22,zmm21,zmm1
  a14957:	62 f1 54 40 5c c9    	vsubps zmm1,zmm21,zmm1
  a1495d:	62 31 34 40 5c c2    	vsubps zmm8,zmm25,zmm18
  a14963:	62 31 34 40 58 d2    	vaddps zmm10,zmm25,zmm18
  a14969:	62 e1 7c 48 28 15 0d 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6b260d]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a14970:	26 6b ff 
  a14973:	62 f2 6d 40 7f 5c 24 	vpermt2ps zmm3,zmm18,ZMMWORD PTR [rsp+0x40]
  a1497a:	01 
  a1497b:	62 32 6d 40 7f f3    	vpermt2ps zmm14,zmm18,zmm19
  a14981:	62 b2 6d 40 7f c7    	vpermt2ps zmm0,zmm18,zmm23
  a14987:	62 e2 6d 40 7f e7    	vpermt2ps zmm20,zmm18,zmm7
  a1498d:	62 52 6d 40 7f df    	vpermt2ps zmm11,zmm18,zmm15
  a14993:	62 62 6d 40 7f fd    	vpermt2ps zmm31,zmm18,zmm5
  a14999:	62 92 6d 40 7f f6    	vpermt2ps zmm6,zmm18,zmm30
  a1499f:	62 e2 6d 40 7f f1    	vpermt2ps zmm22,zmm18,zmm1
  a149a5:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a149ab:	62 e1 7c 48 28 1d 4b 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff6b254b]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a149b2:	25 6b ff 
  a149b5:	62 d2 65 40 7f cb    	vpermt2ps zmm1,zmm19,zmm11
  a149bb:	62 e1 7c 48 28 2d 7b 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6b257b]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a149c2:	25 6b ff 
  a149c5:	62 d2 55 40 7f db    	vpermt2ps zmm3,zmm21,zmm11
  a149cb:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a149d1:	62 f2 65 40 7f ee    	vpermt2ps zmm5,zmm19,zmm6
  a149d7:	62 f2 55 40 7f c6    	vpermt2ps zmm0,zmm21,zmm6
  a149dd:	62 f1 e5 48 14 d8    	vunpcklpd zmm3,zmm3,zmm0
  a149e3:	62 71 f5 48 14 dd    	vunpcklpd zmm11,zmm1,zmm5
  a149e9:	62 71 f5 48 15 fd    	vunpckhpd zmm15,zmm1,zmm5
  a149ef:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a149f5:	62 12 55 40 7f f7    	vpermt2ps zmm14,zmm21,zmm31
  a149fb:	62 92 65 40 7f c7    	vpermt2ps zmm0,zmm19,zmm31
  a14a01:	62 62 6d 40 7f 64 24 	vpermt2ps zmm28,zmm18,ZMMWORD PTR [rsp+0x100]
  a14a08:	04 
  a14a09:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  a14a0f:	62 a2 55 40 7f e6    	vpermt2ps zmm20,zmm21,zmm22
  a14a15:	62 b2 65 40 7f ce    	vpermt2ps zmm1,zmm19,zmm22
  a14a1b:	62 92 6d 40 7f e3    	vpermt2ps zmm4,zmm18,zmm27
  a14a21:	62 62 6d 40 7f 6c 24 	vpermt2ps zmm29,zmm18,ZMMWORD PTR [rsp+0xc0]
  a14a28:	03 
  a14a29:	62 b2 6d 40 7f d0    	vpermt2ps zmm2,zmm18,zmm16
  a14a2f:	62 b1 8d 48 14 ec    	vunpcklpd zmm5,zmm14,zmm20
  a14a35:	62 02 6d 40 7f c2    	vpermt2ps zmm24,zmm18,zmm26
  a14a3b:	62 52 6d 40 7f e5    	vpermt2ps zmm12,zmm18,zmm13
  a14a41:	62 f1 fd 48 14 f1    	vunpcklpd zmm6,zmm0,zmm1
  a14a47:	62 f1 fd 48 15 c9    	vunpckhpd zmm1,zmm0,zmm1
  a14a4d:	62 32 6d 40 7f c9    	vpermt2ps zmm9,zmm18,zmm17
  a14a53:	62 52 6d 40 7f c2    	vpermt2ps zmm8,zmm18,zmm10
  a14a59:	62 91 7c 48 28 fc    	vmovaps zmm7,zmm28
  a14a5f:	62 c1 7c 48 28 c3    	vmovaps zmm16,zmm11
  a14a65:	62 92 65 40 7f f8    	vpermt2ps zmm7,zmm19,zmm24
  a14a6b:	62 02 55 40 7f e0    	vpermt2ps zmm28,zmm21,zmm24
  a14a71:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a14a77:	62 52 65 40 7f d4    	vpermt2ps zmm10,zmm19,zmm12
  a14a7d:	62 d2 55 40 7f e4    	vpermt2ps zmm4,zmm21,zmm12
  a14a83:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a14a89:	62 71 7c 48 28 35 6d 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6b236d]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a14a90:	23 6b ff 
  a14a93:	62 72 0d 48 7f e5    	vpermt2ps zmm12,zmm14,zmm5
  a14a99:	62 e1 7c 48 28 0d 9d 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6b239d]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a14aa0:	23 6b ff 
  a14aa3:	62 f2 75 40 7f dd    	vpermt2ps zmm3,zmm17,zmm5
  a14aa9:	62 11 7c 48 28 ed    	vmovaps zmm13,zmm29
  a14aaf:	62 52 65 40 7f e9    	vpermt2ps zmm13,zmm19,zmm9
  a14ab5:	62 42 55 40 7f e9    	vpermt2ps zmm29,zmm21,zmm9
  a14abb:	62 e2 0d 48 7f c6    	vpermt2ps zmm16,zmm14,zmm6
  a14ac1:	62 d1 7c 48 28 c7    	vmovaps zmm0,zmm15
  a14ac7:	62 91 9d 40 14 ed    	vunpcklpd zmm5,zmm28,zmm29
  a14acd:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a14ad3:	62 72 75 40 7f de    	vpermt2ps zmm11,zmm17,zmm6
  a14ad9:	62 52 65 40 7f c8    	vpermt2ps zmm9,zmm19,zmm8
  a14adf:	62 d2 55 40 7f d0    	vpermt2ps zmm2,zmm21,zmm8
  a14ae5:	62 71 dd 48 14 c2    	vunpcklpd zmm8,zmm4,zmm2
  a14aeb:	62 f2 0d 48 7f c1    	vpermt2ps zmm0,zmm14,zmm1
  a14af1:	62 d1 c5 48 14 f5    	vunpcklpd zmm6,zmm7,zmm13
  a14af7:	62 d1 c5 48 15 d5    	vunpckhpd zmm2,zmm7,zmm13
  a14afd:	62 d1 ad 48 14 e1    	vunpcklpd zmm4,zmm10,zmm9
  a14b03:	62 72 75 40 7f f9    	vpermt2ps zmm15,zmm17,zmm1
  a14b09:	62 d1 ad 48 15 f9    	vunpckhpd zmm7,zmm10,zmm9
  a14b0f:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a14b15:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a14b1b:	62 f2 75 40 7f f4    	vpermt2ps zmm6,zmm17,zmm4
  a14b21:	62 72 0d 48 7f cf    	vpermt2ps zmm9,zmm14,zmm7
  a14b27:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a14b2d:	62 52 0d 48 7f d0    	vpermt2ps zmm10,zmm14,zmm8
  a14b33:	62 f2 75 40 7f d7    	vpermt2ps zmm2,zmm17,zmm7
  a14b39:	62 d2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm8
  a14b3f:	62 71 7c 48 10 69 09 	vmovups zmm13,ZMMWORD PTR [rcx+0x240]
  a14b46:	62 71 7c 48 10 41 08 	vmovups zmm8,ZMMWORD PTR [rcx+0x200]
  a14b4d:	62 d1 1c 48 59 f8    	vmulps zmm7,zmm12,zmm8
  a14b53:	62 d2 2d 48 bc fd    	vfnmadd231ps zmm7,zmm10,zmm13
  a14b59:	62 51 2c 48 59 c0    	vmulps zmm8,zmm10,zmm8
  a14b5f:	62 71 7c 48 10 51 0b 	vmovups zmm10,ZMMWORD PTR [rcx+0x2c0]
  a14b66:	62 52 15 48 b8 c4    	vfmadd231ps zmm8,zmm13,zmm12
  a14b6c:	62 71 7c 48 10 61 0a 	vmovups zmm12,ZMMWORD PTR [rcx+0x280]
  a14b73:	62 51 54 48 59 ec    	vmulps zmm13,zmm5,zmm12
  a14b79:	62 51 64 48 59 e4    	vmulps zmm12,zmm3,zmm12
  a14b7f:	62 52 65 48 b8 ea    	vfmadd231ps zmm13,zmm3,zmm10
  a14b85:	62 f1 7c 48 10 59 04 	vmovups zmm3,ZMMWORD PTR [rcx+0x100]
  a14b8c:	62 72 2d 48 bc e5    	vfnmadd231ps zmm12,zmm10,zmm5
  a14b92:	62 f1 7c 48 10 69 05 	vmovups zmm5,ZMMWORD PTR [rcx+0x140]
  a14b99:	62 71 7c 48 59 d3    	vmulps zmm10,zmm0,zmm3
  a14b9f:	62 72 35 48 bc d5    	vfnmadd231ps zmm10,zmm9,zmm5
  a14ba5:	62 f1 34 48 59 db    	vmulps zmm3,zmm9,zmm3
  a14bab:	62 71 7c 48 10 49 02 	vmovups zmm9,ZMMWORD PTR [rcx+0x80]
  a14bb2:	62 f2 55 48 b8 d8    	vfmadd231ps zmm3,zmm5,zmm0
  a14bb8:	62 f1 7c 48 10 41 03 	vmovups zmm0,ZMMWORD PTR [rcx+0xc0]
  a14bbf:	62 d1 4c 48 59 e9    	vmulps zmm5,zmm6,zmm9
  a14bc5:	62 51 24 48 59 c9    	vmulps zmm9,zmm11,zmm9
  a14bcb:	62 f2 25 48 b8 e8    	vfmadd231ps zmm5,zmm11,zmm0
  a14bd1:	62 72 7d 48 bc ce    	vfnmadd231ps zmm9,zmm0,zmm6
  a14bd7:	62 f1 7c 48 10 41 07 	vmovups zmm0,ZMMWORD PTR [rcx+0x1c0]
  a14bde:	62 f1 7c 48 10 71 06 	vmovups zmm6,ZMMWORD PTR [rcx+0x180]
  a14be5:	62 f2 0d 48 7f cc    	vpermt2ps zmm1,zmm14,zmm4
  a14beb:	62 f1 6c 48 59 e6    	vmulps zmm4,zmm2,zmm6
  a14bf1:	62 f2 05 48 b8 e0    	vfmadd231ps zmm4,zmm15,zmm0
  a14bf7:	62 f1 04 48 59 f6    	vmulps zmm6,zmm15,zmm6
  a14bfd:	62 71 2c 48 5c df    	vsubps zmm11,zmm10,zmm7
  a14c03:	62 f2 7d 48 bc f2    	vfnmadd231ps zmm6,zmm0,zmm2
  a14c09:	62 d1 64 48 58 c0    	vaddps zmm0,zmm3,zmm8
  a14c0f:	62 72 7d 48 18 3d 47 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff660847]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a14c16:	08 66 ff 
  a14c19:	62 d1 7c 48 28 d7    	vmovaps zmm2,zmm15
  a14c1f:	62 72 7d 48 18 35 ab 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff6606ab]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a14c26:	06 66 ff 
  a14c29:	62 51 24 48 59 de    	vmulps zmm11,zmm11,zmm14
  a14c2f:	62 f1 2c 48 58 ff    	vaddps zmm7,zmm10,zmm7
  a14c35:	62 71 14 48 58 d5    	vaddps zmm10,zmm13,zmm5
  a14c3b:	62 d1 64 48 5c d8    	vsubps zmm3,zmm3,zmm8
  a14c41:	62 f2 7d 48 ac d1    	vfnmadd213ps zmm2,zmm0,zmm1
  a14c47:	62 51 1c 48 5c c1    	vsubps zmm8,zmm12,zmm9
  a14c4d:	62 51 1c 48 58 c9    	vaddps zmm9,zmm12,zmm9
  a14c53:	62 f1 14 48 5c ed    	vsubps zmm5,zmm13,zmm5
  a14c59:	62 71 24 48 58 e2    	vaddps zmm12,zmm11,zmm2
  a14c5f:	62 51 7c 48 28 ef    	vmovaps zmm13,zmm15
  a14c65:	62 72 2d 48 ac ec    	vfnmadd213ps zmm13,zmm10,zmm4
  a14c6b:	62 51 3c 48 59 c6    	vmulps zmm8,zmm8,zmm14
  a14c71:	62 d1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm11
  a14c77:	62 51 14 48 58 d8    	vaddps zmm11,zmm13,zmm8
  a14c7d:	62 51 14 48 5c c0    	vsubps zmm8,zmm13,zmm8
  a14c83:	62 51 7c 48 28 ef    	vmovaps zmm13,zmm15
  a14c89:	62 32 45 48 ac e8    	vfnmadd213ps zmm13,zmm7,zmm16
  a14c8f:	62 d1 64 48 59 de    	vmulps zmm3,zmm3,zmm14
  a14c95:	62 f1 7c 48 58 c1    	vaddps zmm0,zmm0,zmm1
  a14c9b:	62 f1 14 48 5c cb    	vsubps zmm1,zmm13,zmm3
  a14ca1:	62 f1 14 48 58 db    	vaddps zmm3,zmm13,zmm3
  a14ca7:	62 d1 5c 48 58 e2    	vaddps zmm4,zmm4,zmm10
  a14cad:	62 f1 7c 40 58 ff    	vaddps zmm7,zmm16,zmm7
  a14cb3:	62 51 7c 48 28 d7    	vmovaps zmm10,zmm15
  a14cb9:	62 72 35 48 ac d6    	vfnmadd213ps zmm10,zmm9,zmm6
  a14cbf:	62 d1 54 48 59 ee    	vmulps zmm5,zmm5,zmm14
  a14cc5:	62 d1 4c 48 58 f1    	vaddps zmm6,zmm6,zmm9
  a14ccb:	62 71 2c 48 5c cd    	vsubps zmm9,zmm10,zmm5
  a14cd1:	62 f1 2c 48 58 ed    	vaddps zmm5,zmm10,zmm5
  a14cd7:	62 51 1c 48 5c d3    	vsubps zmm10,zmm12,zmm11
  a14cdd:	62 51 1c 48 58 db    	vaddps zmm11,zmm12,zmm11
  a14ce3:	62 51 74 48 5c e1    	vsubps zmm12,zmm1,zmm9
  a14ce9:	62 d1 74 48 58 c9    	vaddps zmm1,zmm1,zmm9
  a14cef:	62 71 7c 48 5c cc    	vsubps zmm9,zmm0,zmm4
  a14cf5:	62 f1 7c 48 58 c4    	vaddps zmm0,zmm0,zmm4
  a14cfb:	62 d1 6c 48 58 e0    	vaddps zmm4,zmm2,zmm8
  a14d01:	62 d1 6c 48 5c d0    	vsubps zmm2,zmm2,zmm8
  a14d07:	62 71 44 48 5c c6    	vsubps zmm8,zmm7,zmm6
  a14d0d:	62 f1 44 48 58 f6    	vaddps zmm6,zmm7,zmm6
  a14d13:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a14d19:	62 71 7c 48 28 2d dd 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff67a5dd]        # 8f300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c7b0>
  a14d20:	a5 67 ff 
  a14d23:	62 f2 15 48 7f fe    	vpermt2ps zmm7,zmm13,zmm6
  a14d29:	62 71 7c 48 28 35 0d 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff67a60d]        # 8f340 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c7f0>
  a14d30:	a6 67 ff 
  a14d33:	62 f2 0d 48 7f c6    	vpermt2ps zmm0,zmm14,zmm6
  a14d39:	62 f1 7c 48 11 04 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm0
  a14d40:	62 f1 64 48 58 c5    	vaddps zmm0,zmm3,zmm5
  a14d46:	62 f1 64 48 5c dd    	vsubps zmm3,zmm3,zmm5
  a14d4c:	62 f1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm7
  a14d53:	01 
  a14d54:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a14d5a:	62 f2 0d 48 7f d3    	vpermt2ps zmm2,zmm14,zmm3
  a14d60:	62 f2 15 48 7f eb    	vpermt2ps zmm5,zmm13,zmm3
  a14d66:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm2
  a14d6d:	02 
  a14d6e:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm5
  a14d75:	03 
  a14d76:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a14d7c:	62 f2 15 48 7f d1    	vpermt2ps zmm2,zmm13,zmm1
  a14d82:	62 72 0d 48 7f d9    	vpermt2ps zmm11,zmm14,zmm1
  a14d88:	62 71 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm11
  a14d8f:	04 
  a14d90:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm2
  a14d97:	05 
  a14d98:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a14d9e:	62 d2 15 48 7f c8    	vpermt2ps zmm1,zmm13,zmm8
  a14da4:	62 52 0d 48 7f c8    	vpermt2ps zmm9,zmm14,zmm8
  a14daa:	62 71 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm9
  a14db1:	06 
  a14db2:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm1
  a14db9:	07 
  a14dba:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a14dc0:	62 f2 15 48 7f c8    	vpermt2ps zmm1,zmm13,zmm0
  a14dc6:	62 f2 0d 48 7f e0    	vpermt2ps zmm4,zmm14,zmm0
  a14dcc:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm4
  a14dd3:	08 
  a14dd4:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a14dda:	62 d2 15 48 7f c4    	vpermt2ps zmm0,zmm13,zmm12
  a14de0:	62 52 0d 48 7f d4    	vpermt2ps zmm10,zmm14,zmm12
  a14de6:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm1
  a14ded:	09 
  a14dee:	62 71 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm10
  a14df5:	0a 
  a14df6:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm0
  a14dfd:	0b 
  a14dfe:	48 81 c2 00 03 00 00 	add    rdx,0x300
  a14e05:	48 39 d0             	cmp    rax,rdx
  a14e08:	0f 85 22 f1 ff ff    	jne    a13f30 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a14e0e:	48 89 ec             	mov    rsp,rbp
  a14e11:	5d                   	pop    rbp
  a14e12:	c5 f8 77             	vzeroupper
  a14e15:	c3                   	ret
