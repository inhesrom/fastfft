
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a08000 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a08000:	55                   	push   rbp
  a08001:	48 89 e5             	mov    rbp,rsp
  a08004:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a08008:	48 81 ec 40 05 00 00 	sub    rsp,0x540
  a0800f:	c6 84 24 c0 04 00 00 	mov    BYTE PTR [rsp+0x4c0],0x0
  a08016:	00 
  a08017:	48 8d 84 24 c0 04 00 	lea    rax,[rsp+0x4c0]
  a0801e:	00 
  a0801f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a08024:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a08029:	c5 f8 10 47 20       	vmovups xmm0,XMMWORD PTR [rdi+0x20]
  a0802e:	c4 e3 79 21 47 24 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24],0x10
  a08035:	c4 e2 79 18 4f 28    	vbroadcastss xmm1,DWORD PTR [rdi+0x28]
  a0803b:	c5 fc 10 17          	vmovups ymm2,YMMWORD PTR [rdi]
  a0803f:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a08045:	c4 e3 79 21 47 2c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c],0x30
  a0804c:	62 f3 6d 48 18 c0 02 	vinsertf32x4 zmm0,zmm2,xmm0,0x2
  a08053:	62 01 3c 00 57 c0    	vxorps xmm24,xmm24,xmm24
  a08059:	62 f1 7c 48 28 15 dd 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6865dd]        # 8e640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1baf0>
  a08060:	65 68 ff 
  a08063:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a08069:	62 92 6d 48 7f c8    	vpermt2ps zmm1,zmm2,zmm24
  a0806f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a08076:	04 
  a08077:	62 61 7c 48 28 15 ff 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff6865ff]        # 8e680 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bb30>
  a0807e:	65 68 ff 
  a08081:	62 92 2d 40 7f c0    	vpermt2ps zmm0,zmm26,zmm24
  a08087:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a0808e:	05 
  a0808f:	c5 f8 10 47 50       	vmovups xmm0,XMMWORD PTR [rdi+0x50]
  a08094:	c4 e3 79 21 47 54 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x54],0x10
  a0809b:	c4 e2 79 18 4f 58    	vbroadcastss xmm1,DWORD PTR [rdi+0x58]
  a080a1:	c5 fc 10 5f 30       	vmovups ymm3,YMMWORD PTR [rdi+0x30]
  a080a6:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a080ac:	c4 e3 79 21 47 5c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x5c],0x30
  a080b3:	62 f3 65 48 18 d8 02 	vinsertf32x4 zmm3,zmm3,xmm0,0x2
  a080ba:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a080c0:	62 92 6d 48 7f c0    	vpermt2ps zmm0,zmm2,zmm24
  a080c6:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a080cc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a080d3:	07 
  a080d4:	c5 f8 10 87 80 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0x80]
  a080db:	00 
  a080dc:	c4 e3 79 21 87 84 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x84],0x10
  a080e3:	00 00 10 
  a080e6:	c4 e2 79 18 8f 88 00 	vbroadcastss xmm1,DWORD PTR [rdi+0x88]
  a080ed:	00 00 
  a080ef:	62 92 2d 40 7f d8    	vpermt2ps zmm3,zmm26,zmm24
  a080f5:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a080fb:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm3
  a08102:	08 
  a08103:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a08109:	c4 e3 79 21 87 8c 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x8c],0x30
  a08110:	00 00 30 
  a08113:	c5 fc 10 4f 60       	vmovups ymm1,YMMWORD PTR [rdi+0x60]
  a08118:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0811f:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a08125:	62 92 6d 48 7f c8    	vpermt2ps zmm1,zmm2,zmm24
  a0812b:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a08132:	02 
  a08133:	62 92 2d 40 7f c0    	vpermt2ps zmm0,zmm26,zmm24
  a08139:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a08140:	03 
  a08141:	c5 f8 10 87 b0 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xb0]
  a08148:	00 
  a08149:	c4 e3 79 21 87 b4 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xb4],0x10
  a08150:	00 00 10 
  a08153:	c5 fc 10 8f 90 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0x90]
  a0815a:	00 
  a0815b:	c4 e2 79 18 9f b8 00 	vbroadcastss xmm3,DWORD PTR [rdi+0xb8]
  a08162:	00 00 
  a08164:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a0816a:	c4 e3 79 21 87 bc 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xbc],0x30
  a08171:	00 00 30 
  a08174:	62 73 75 48 18 e8 02 	vinsertf32x4 zmm13,zmm1,xmm0,0x2
  a0817b:	62 51 7c 48 28 d5    	vmovaps zmm10,zmm13
  a08181:	62 12 6d 48 7f d0    	vpermt2ps zmm10,zmm2,zmm24
  a08187:	62 12 2d 40 7f e8    	vpermt2ps zmm13,zmm26,zmm24
  a0818d:	c5 f8 10 87 e0 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xe0]
  a08194:	00 
  a08195:	c5 fc 10 8f c0 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xc0]
  a0819c:	00 
  a0819d:	c4 e3 79 21 87 e4 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xe4],0x10
  a081a4:	00 00 10 
  a081a7:	c4 e2 79 18 9f e8 00 	vbroadcastss xmm3,DWORD PTR [rdi+0xe8]
  a081ae:	00 00 
  a081b0:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a081b6:	c4 e3 79 21 87 ec 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xec],0x30
  a081bd:	00 00 30 
  a081c0:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  a081c7:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a081cd:	62 92 6d 48 7f c0    	vpermt2ps zmm0,zmm2,zmm24
  a081d3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a081da:	01 
  a081db:	62 92 2d 40 7f c8    	vpermt2ps zmm1,zmm26,zmm24
  a081e1:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm1
  a081e8:	12 
  a081e9:	c5 f8 10 87 10 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x110]
  a081f0:	00 
  a081f1:	c4 e3 79 21 87 14 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x114],0x10
  a081f8:	00 00 10 
  a081fb:	c4 e2 79 18 8f 18 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x118]
  a08202:	00 00 
  a08204:	c5 fc 10 9f f0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xf0]
  a0820b:	00 
  a0820c:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a08212:	c4 e3 79 21 87 1c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x11c],0x30
  a08219:	00 00 30 
  a0821c:	62 f3 65 48 18 d8 02 	vinsertf32x4 zmm3,zmm3,xmm0,0x2
  a08223:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a08229:	62 92 6d 48 7f c0    	vpermt2ps zmm0,zmm2,zmm24
  a0822f:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a08235:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a0823c:	06 
  a0823d:	c5 f8 10 87 40 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x140]
  a08244:	00 
  a08245:	c4 e3 79 21 87 44 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x144],0x10
  a0824c:	00 00 10 
  a0824f:	c4 e2 79 18 8f 48 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x148]
  a08256:	00 00 
  a08258:	62 92 2d 40 7f d8    	vpermt2ps zmm3,zmm26,zmm24
  a0825e:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a08264:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm3
  a0826b:	09 
  a0826c:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a08272:	c4 e3 79 21 87 4c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x14c],0x30
  a08279:	00 00 30 
  a0827c:	c5 fc 10 8f 20 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x120]
  a08283:	00 
  a08284:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  a0828b:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a08291:	62 92 6d 48 7f c0    	vpermt2ps zmm0,zmm2,zmm24
  a08297:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a0829e:	11 
  a0829f:	62 92 2d 40 7f c8    	vpermt2ps zmm1,zmm26,zmm24
  a082a5:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm1
  a082ac:	0f 
  a082ad:	c5 f8 10 87 70 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x170]
  a082b4:	00 
  a082b5:	c4 e3 79 21 87 74 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x174],0x10
  a082bc:	00 00 10 
  a082bf:	c5 fc 10 8f 50 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x150]
  a082c6:	00 
  a082c7:	c4 e2 79 18 9f 78 01 	vbroadcastss xmm3,DWORD PTR [rdi+0x178]
  a082ce:	00 00 
  a082d0:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a082d6:	c4 e3 79 21 87 7c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x17c],0x30
  a082dd:	00 00 30 
  a082e0:	62 e3 75 48 18 d0 02 	vinsertf32x4 zmm18,zmm1,xmm0,0x2
  a082e7:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a082ed:	62 92 6d 48 7f c0    	vpermt2ps zmm0,zmm2,zmm24
  a082f3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a082fa:	0d 
  a082fb:	62 82 2d 40 7f d0    	vpermt2ps zmm18,zmm26,zmm24
  a08301:	c5 f8 10 87 a0 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x1a0]
  a08308:	00 
  a08309:	c5 fc 10 8f 80 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x180]
  a08310:	00 
  a08311:	c4 e3 79 21 87 a4 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1a4],0x10
  a08318:	00 00 10 
  a0831b:	c4 e2 79 18 9f a8 01 	vbroadcastss xmm3,DWORD PTR [rdi+0x1a8]
  a08322:	00 00 
  a08324:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a0832a:	c4 e3 79 21 87 ac 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1ac],0x30
  a08331:	00 00 30 
  a08334:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0833b:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a08341:	62 92 6d 48 7f c8    	vpermt2ps zmm1,zmm2,zmm24
  a08347:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm1
  a0834e:	0e 
  a0834f:	62 92 2d 40 7f c0    	vpermt2ps zmm0,zmm26,zmm24
  a08355:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a0835c:	10 
  a0835d:	c5 f8 10 87 d0 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x1d0]
  a08364:	00 
  a08365:	c4 e3 79 21 87 d4 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1d4],0x10
  a0836c:	00 00 10 
  a0836f:	c4 e2 79 18 8f d8 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x1d8]
  a08376:	00 00 
  a08378:	c5 fc 10 9f b0 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x1b0]
  a0837f:	00 
  a08380:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a08386:	c4 e3 79 21 87 dc 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1dc],0x30
  a0838d:	00 00 30 
  a08390:	62 e3 65 48 18 d8 02 	vinsertf32x4 zmm19,zmm3,xmm0,0x2
  a08397:	62 a1 7c 48 28 eb    	vmovaps zmm21,zmm19
  a0839d:	62 82 6d 48 7f e8    	vpermt2ps zmm21,zmm2,zmm24
  a083a3:	c5 f8 10 87 00 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x200]
  a083aa:	00 
  a083ab:	c4 e3 79 21 87 04 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x204],0x10
  a083b2:	00 00 10 
  a083b5:	c4 e2 79 18 8f 08 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x208]
  a083bc:	00 00 
  a083be:	62 82 2d 40 7f d8    	vpermt2ps zmm19,zmm26,zmm24
  a083c4:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a083ca:	c4 e3 79 21 87 0c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x20c],0x30
  a083d1:	00 00 30 
  a083d4:	c5 fc 10 8f e0 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x1e0]
  a083db:	00 
  a083dc:	62 e3 75 48 18 e0 02 	vinsertf32x4 zmm20,zmm1,xmm0,0x2
  a083e3:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a083e9:	62 82 6d 48 7f f0    	vpermt2ps zmm22,zmm2,zmm24
  a083ef:	62 82 2d 40 7f e0    	vpermt2ps zmm20,zmm26,zmm24
  a083f5:	c5 f8 10 87 30 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x230]
  a083fc:	00 
  a083fd:	c4 e3 79 21 87 34 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x234],0x10
  a08404:	00 00 10 
  a08407:	c5 fc 10 8f 10 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x210]
  a0840e:	00 
  a0840f:	c4 e2 79 18 9f 38 02 	vbroadcastss xmm3,DWORD PTR [rdi+0x238]
  a08416:	00 00 
  a08418:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a0841e:	c4 e3 79 21 87 3c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x23c],0x30
  a08425:	00 00 30 
  a08428:	62 e3 75 48 18 f8 02 	vinsertf32x4 zmm23,zmm1,xmm0,0x2
  a0842f:	62 21 7c 48 28 cf    	vmovaps zmm25,zmm23
  a08435:	62 02 6d 48 7f c8    	vpermt2ps zmm25,zmm2,zmm24
  a0843b:	c5 f8 10 87 60 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x260]
  a08442:	00 
  a08443:	c4 e3 79 21 87 64 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x264],0x10
  a0844a:	00 00 10 
  a0844d:	c5 fc 10 8f 40 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x240]
  a08454:	00 
  a08455:	c4 e2 79 18 9f 68 02 	vbroadcastss xmm3,DWORD PTR [rdi+0x268]
  a0845c:	00 00 
  a0845e:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a08464:	c4 e3 79 21 87 6c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x26c],0x30
  a0846b:	00 00 30 
  a0846e:	62 63 75 48 18 d8 02 	vinsertf32x4 zmm27,zmm1,xmm0,0x2
  a08475:	c5 f8 10 87 90 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x290]
  a0847c:	00 
  a0847d:	c4 e3 79 21 87 94 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x294],0x10
  a08484:	00 00 10 
  a08487:	c4 e2 79 18 8f 98 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x298]
  a0848e:	00 00 
  a08490:	c5 fc 10 9f 70 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x270]
  a08497:	00 
  a08498:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0849e:	c4 e3 79 21 87 9c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x29c],0x30
  a084a5:	00 00 30 
  a084a8:	62 63 65 48 18 e0 02 	vinsertf32x4 zmm28,zmm3,xmm0,0x2
  a084af:	c5 f8 10 87 c0 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x2c0]
  a084b6:	00 
  a084b7:	c4 e3 79 21 87 c4 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c4],0x10
  a084be:	00 00 10 
  a084c1:	c5 fc 10 8f a0 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x2a0]
  a084c8:	00 
  a084c9:	c4 e2 79 18 9f c8 02 	vbroadcastss xmm3,DWORD PTR [rdi+0x2c8]
  a084d0:	00 00 
  a084d2:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a084d8:	c4 e3 79 21 87 cc 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2cc],0x30
  a084df:	00 00 30 
  a084e2:	62 63 75 48 18 e8 02 	vinsertf32x4 zmm29,zmm1,xmm0,0x2
  a084e9:	c5 f8 10 87 f0 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x2f0]
  a084f0:	00 
  a084f1:	c4 e3 79 21 87 f4 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2f4],0x10
  a084f8:	00 00 10 
  a084fb:	c4 e2 79 18 8f f8 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x2f8]
  a08502:	00 00 
  a08504:	62 82 2d 40 7f f8    	vpermt2ps zmm23,zmm26,zmm24
  a0850a:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a08510:	c4 e3 79 21 87 fc 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2fc],0x30
  a08517:	00 00 30 
  a0851a:	c5 fc 10 8f d0 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x2d0]
  a08521:	00 
  a08522:	62 73 75 48 18 f0 02 	vinsertf32x4 zmm14,zmm1,xmm0,0x2
  a08529:	62 01 7c 48 28 f3    	vmovaps zmm30,zmm27
  a0852f:	62 02 6d 48 7f f0    	vpermt2ps zmm30,zmm2,zmm24
  a08535:	62 02 2d 40 7f d8    	vpermt2ps zmm27,zmm26,zmm24
  a0853b:	62 81 7c 48 28 cc    	vmovaps zmm17,zmm28
  a08541:	62 82 6d 48 7f c8    	vpermt2ps zmm17,zmm2,zmm24
  a08547:	62 02 2d 40 7f e0    	vpermt2ps zmm28,zmm26,zmm24
  a0854d:	62 01 7c 48 28 fd    	vmovaps zmm31,zmm29
  a08553:	62 02 6d 48 7f f8    	vpermt2ps zmm31,zmm2,zmm24
  a08559:	62 02 2d 40 7f e8    	vpermt2ps zmm29,zmm26,zmm24
  a0855f:	62 92 0d 48 77 d0    	vpermi2ps zmm2,zmm14,zmm24
  a08565:	62 12 2d 40 7f f0    	vpermt2ps zmm14,zmm26,zmm24
  a0856b:	62 a1 5c 48 5c c5    	vsubps zmm16,zmm4,zmm21
  a08571:	62 11 44 48 5c fc    	vsubps zmm15,zmm7,zmm28
  a08577:	62 d1 7c 40 58 ff    	vaddps zmm7,zmm16,zmm15
  a0857d:	62 31 54 48 5c e3    	vsubps zmm12,zmm5,zmm19
  a08583:	62 71 74 40 5c de    	vsubps zmm11,zmm17,zmm6
  a08589:	62 72 7d 48 18 05 d1 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff66d0d1]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a08590:	d0 66 ff 
  a08593:	62 51 24 48 58 cc    	vaddps zmm9,zmm11,zmm12
  a08599:	62 d1 34 48 59 c0    	vmulps zmm0,zmm9,zmm8
  a0859f:	62 f2 7d 48 18 35 57 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff66d157]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a085a6:	d1 66 ff 
  a085a9:	62 f2 45 48 b8 c6    	vfmadd231ps zmm0,zmm7,zmm6
  a085af:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm0
  a085b6:	0c 
  a085b7:	62 61 34 48 59 d6    	vmulps zmm26,zmm9,zmm6
  a085bd:	62 62 3d 48 bc d7    	vfnmadd231ps zmm26,zmm8,zmm7
  a085c3:	62 91 2c 48 5c e9    	vsubps zmm5,zmm10,zmm25
  a085c9:	62 d1 6c 40 5c e6    	vsubps zmm4,zmm18,zmm14
  a085cf:	62 f1 54 48 58 c4    	vaddps zmm0,zmm5,zmm4
  a085d5:	62 b1 14 48 5c df    	vsubps zmm3,zmm13,zmm23
  a085db:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x340]
  a085e2:	0d 
  a085e3:	62 d1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm9
  a085e9:	62 f1 74 48 58 fb    	vaddps zmm7,zmm1,zmm3
  a085ef:	62 61 44 48 59 c6    	vmulps zmm24,zmm7,zmm6
  a085f5:	62 42 7d 48 b8 c0    	vfmadd231ps zmm24,zmm0,zmm8
  a085fb:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm24
  a08602:	0b 
  a08603:	62 41 44 48 59 c0    	vmulps zmm24,zmm7,zmm8
  a08609:	62 62 4d 48 bc c0    	vfnmadd231ps zmm24,zmm6,zmm0
  a0860f:	62 d1 7c 40 5c c7    	vsubps zmm0,zmm16,zmm15
  a08615:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a0861b:	62 f1 54 48 5c ec    	vsubps zmm5,zmm5,zmm4
  a08621:	62 71 64 48 5c e1    	vsubps zmm12,zmm3,zmm1
  a08627:	62 f1 24 48 59 ce    	vmulps zmm1,zmm11,zmm6
  a0862d:	62 d2 7d 48 b8 c8    	vfmadd231ps zmm1,zmm0,zmm8
  a08633:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a0863a:	0a 
  a0863b:	62 d1 24 48 59 e0    	vmulps zmm4,zmm11,zmm8
  a08641:	62 f2 4d 48 bc e0    	vfnmadd231ps zmm4,zmm6,zmm0
  a08647:	62 d1 1c 48 59 f8    	vmulps zmm7,zmm12,zmm8
  a0864d:	62 f2 55 48 b8 fe    	vfmadd231ps zmm7,zmm5,zmm6
  a08653:	62 d1 54 48 59 d8    	vmulps zmm3,zmm5,zmm8
  a08659:	62 f2 1d 48 bc de    	vfnmadd231ps zmm3,zmm12,zmm6
  a0865f:	62 f1 54 40 58 6c 24 	vaddps zmm5,zmm21,ZMMWORD PTR [rsp+0x1c0]
  a08666:	07 
  a08667:	62 f1 74 40 58 74 24 	vaddps zmm6,zmm17,ZMMWORD PTR [rsp+0x180]
  a0866e:	06 
  a0866f:	62 11 2c 48 58 c1    	vaddps zmm8,zmm10,zmm25
  a08675:	62 f1 34 48 58 d2    	vaddps zmm2,zmm9,zmm2
  a0867b:	62 71 64 40 58 5c 24 	vaddps zmm11,zmm19,ZMMWORD PTR [rsp+0x200]
  a08682:	08 
  a08683:	62 71 1c 40 58 64 24 	vaddps zmm12,zmm28,ZMMWORD PTR [rsp+0x240]
  a0868a:	09 
  a0868b:	62 31 14 48 58 ef    	vaddps zmm13,zmm13,zmm23
  a08691:	62 51 6c 40 58 d6    	vaddps zmm10,zmm18,zmm14
  a08697:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a0869e:	04 
  a0869f:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x380]
  a086a6:	0e 
  a086a7:	62 71 7c 48 58 f1    	vaddps zmm14,zmm0,zmm1
  a086ad:	62 71 7c 48 5c f9    	vsubps zmm15,zmm0,zmm1
  a086b3:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x480]
  a086ba:	12 
  a086bb:	62 81 7c 48 58 c3    	vaddps zmm16,zmm0,zmm27
  a086c1:	62 81 7c 48 5c db    	vsubps zmm19,zmm0,zmm27
  a086c7:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a086ce:	02 
  a086cf:	62 a1 7c 48 58 ee    	vaddps zmm21,zmm0,zmm22
  a086d5:	62 a1 7c 48 5c f6    	vsubps zmm22,zmm0,zmm22
  a086db:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a086e2:	03 
  a086e3:	62 a1 7c 48 58 fc    	vaddps zmm23,zmm0,zmm20
  a086e9:	62 a1 7c 48 5c e4    	vsubps zmm20,zmm0,zmm20
  a086ef:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x3c0]
  a086f6:	0f 
  a086f7:	62 01 7c 48 58 cd    	vaddps zmm25,zmm0,zmm29
  a086fd:	62 81 7c 48 5c d5    	vsubps zmm18,zmm0,zmm29
  a08703:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x440]
  a0870a:	11 
  a0870b:	62 01 7c 48 58 df    	vaddps zmm27,zmm0,zmm31
  a08711:	62 01 7c 48 5c e7    	vsubps zmm28,zmm0,zmm31
  a08717:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a0871e:	05 
  a0871f:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x400]
  a08726:	10 
  a08727:	62 61 7c 48 58 e9    	vaddps zmm29,zmm0,zmm1
  a0872d:	62 e1 7c 48 5c c9    	vsubps zmm17,zmm0,zmm1
  a08733:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a0873a:	01 
  a0873b:	62 01 7c 48 58 fe    	vaddps zmm31,zmm0,zmm30
  a08741:	62 61 0c 40 5c f0    	vsubps zmm30,zmm30,zmm0
  a08747:	62 b1 4c 40 58 c4    	vaddps zmm0,zmm22,zmm20
  a0874d:	62 a1 5c 40 5c e6    	vsubps zmm20,zmm20,zmm22
  a08753:	62 81 6c 40 5c f4    	vsubps zmm22,zmm18,zmm28
  a08759:	62 a1 1c 40 58 d2    	vaddps zmm18,zmm28,zmm18
  a0875f:	62 01 0c 48 58 e7    	vaddps zmm28,zmm14,zmm31
  a08765:	62 11 0c 48 5c f7    	vsubps zmm14,zmm14,zmm31
  a0876b:	62 01 44 40 58 f9    	vaddps zmm31,zmm23,zmm25
  a08771:	62 81 44 40 5c f9    	vsubps zmm23,zmm23,zmm25
  a08777:	62 61 54 48 58 ce    	vaddps zmm25,zmm5,zmm6
  a0877d:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a08783:	62 d1 24 48 58 f4    	vaddps zmm6,zmm11,zmm12
  a08789:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a0878f:	62 51 14 48 58 e2    	vaddps zmm12,zmm13,zmm10
  a08795:	62 51 14 48 5c d2    	vsubps zmm10,zmm13,zmm10
  a0879b:	62 71 3c 48 58 ea    	vaddps zmm13,zmm8,zmm2
  a087a1:	62 f1 3c 48 5c d2    	vsubps zmm2,zmm8,zmm2
  a087a7:	62 31 14 40 58 c0    	vaddps zmm8,zmm29,zmm16
  a087ad:	62 a1 14 40 5c c0    	vsubps zmm16,zmm29,zmm16
  a087b3:	62 01 54 40 58 eb    	vaddps zmm29,zmm21,zmm27
  a087b9:	62 a1 24 40 5c ed    	vsubps zmm21,zmm27,zmm21
  a087bf:	62 41 54 48 58 db    	vaddps zmm27,zmm5,zmm11
  a087c5:	62 f1 24 48 5c ed    	vsubps zmm5,zmm11,zmm5
  a087cb:	62 71 2c 48 5c da    	vsubps zmm11,zmm10,zmm2
  a087d1:	62 d1 6c 48 58 d2    	vaddps zmm2,zmm2,zmm10
  a087d7:	62 72 7d 48 18 15 bb 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff66cbbb]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a087de:	cb 66 ff 
  a087e1:	62 d1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm10
  a087e7:	62 c1 4c 40 59 f2    	vmulps zmm22,zmm22,zmm10
  a087ed:	62 c1 5c 40 59 e2    	vmulps zmm20,zmm20,zmm10
  a087f3:	62 c1 6c 40 59 d2    	vmulps zmm18,zmm18,zmm10
  a087f9:	62 41 24 40 59 da    	vmulps zmm27,zmm27,zmm10
  a087ff:	62 51 24 48 59 da    	vmulps zmm11,zmm11,zmm10
  a08805:	62 d1 54 48 59 ea    	vmulps zmm5,zmm5,zmm10
  a0880b:	62 d1 6c 48 59 d2    	vmulps zmm2,zmm2,zmm10
  a08811:	62 31 04 48 58 d3    	vaddps zmm10,zmm15,zmm19
  a08817:	62 31 04 48 5c fb    	vsubps zmm15,zmm15,zmm19
  a0881d:	62 a1 5c 40 5c da    	vsubps zmm19,zmm20,zmm18
  a08823:	62 a1 5c 40 58 d2    	vaddps zmm18,zmm20,zmm18
  a08829:	62 a1 0c 40 58 e1    	vaddps zmm20,zmm30,zmm17
  a0882f:	62 81 74 40 5c ce    	vsubps zmm17,zmm17,zmm30
  a08835:	62 21 7c 48 58 f6    	vaddps zmm30,zmm0,zmm22
  a0883b:	62 f1 4c 40 5c c8    	vsubps zmm1,zmm22,zmm0
  a08841:	62 81 1c 40 58 f5    	vaddps zmm22,zmm28,zmm29
  a08847:	62 91 1c 40 5c c5    	vsubps zmm0,zmm28,zmm29
  a0884d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a08854:	02 
  a08855:	62 41 4c 48 58 ec    	vaddps zmm29,zmm6,zmm12
  a0885b:	62 41 4c 48 5c e4    	vsubps zmm28,zmm6,zmm12
  a08861:	62 91 3c 48 58 f7    	vaddps zmm6,zmm8,zmm31
  a08867:	62 11 3c 48 5c e7    	vsubps zmm12,zmm8,zmm31
  a0886d:	62 41 34 40 58 fd    	vaddps zmm31,zmm25,zmm13
  a08873:	62 01 14 48 5c c9    	vsubps zmm25,zmm13,zmm25
  a08879:	62 11 2c 48 58 ee    	vaddps zmm13,zmm10,zmm30
  a0887f:	62 11 2c 48 5c d6    	vsubps zmm10,zmm10,zmm30
  a08885:	62 01 2c 40 58 f0    	vaddps zmm30,zmm26,zmm24
  a0888b:	62 01 2c 40 5c d0    	vsubps zmm26,zmm26,zmm24
  a08891:	62 31 5c 40 58 cb    	vaddps zmm9,zmm20,zmm19
  a08897:	62 a1 5c 40 5c db    	vsubps zmm19,zmm20,zmm19
  a0889d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x300]
  a088a4:	0c 
  a088a5:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x2c0]
  a088ac:	0b 
  a088ad:	62 c1 7c 48 58 e0    	vaddps zmm20,zmm0,zmm8
  a088b3:	62 61 3c 48 5c c0    	vsubps zmm24,zmm8,zmm0
  a088b9:	62 b1 0c 48 58 c7    	vaddps zmm0,zmm14,zmm23
  a088bf:	62 a1 0c 48 5c ff    	vsubps zmm23,zmm14,zmm23
  a088c5:	62 71 54 48 5c f2    	vsubps zmm14,zmm5,zmm2
  a088cb:	62 71 54 48 58 c2    	vaddps zmm8,zmm5,zmm2
  a088d1:	62 b1 54 40 58 e8    	vaddps zmm5,zmm21,zmm16
  a088d7:	62 a1 7c 40 5c c5    	vsubps zmm16,zmm16,zmm21
  a088dd:	62 c1 24 40 58 eb    	vaddps zmm21,zmm27,zmm11
  a088e3:	62 11 24 48 5c db    	vsubps zmm11,zmm11,zmm27
  a088e9:	62 21 04 48 58 da    	vaddps zmm27,zmm15,zmm18
  a088ef:	62 31 04 48 5c fa    	vsubps zmm15,zmm15,zmm18
  a088f5:	62 e1 5c 48 58 d3    	vaddps zmm18,zmm4,zmm3
  a088fb:	62 f1 5c 48 5c db    	vsubps zmm3,zmm4,zmm3
  a08901:	62 f1 74 40 58 e1    	vaddps zmm4,zmm17,zmm1
  a08907:	62 f1 74 40 5c d1    	vsubps zmm2,zmm17,zmm1
  a0890d:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x280]
  a08914:	0a 
  a08915:	62 e1 74 48 5c cf    	vsubps zmm17,zmm1,zmm7
  a0891b:	62 f1 74 48 58 cf    	vaddps zmm1,zmm1,zmm7
  a08921:	62 91 4c 40 58 ff    	vaddps zmm7,zmm22,zmm31
  a08927:	62 81 4c 40 5c f7    	vsubps zmm22,zmm22,zmm31
  a0892d:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm22
  a08934:	01 
  a08935:	62 01 4c 48 58 fd    	vaddps zmm31,zmm6,zmm29
  a0893b:	62 91 4c 48 5c f5    	vsubps zmm6,zmm6,zmm29
  a08941:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm6
  a08948:	05 
  a08949:	62 b1 14 48 58 f4    	vaddps zmm6,zmm13,zmm20
  a0894f:	62 a1 14 48 5c f4    	vsubps zmm22,zmm13,zmm20
  a08955:	62 01 34 48 58 ee    	vaddps zmm29,zmm9,zmm30
  a0895b:	62 11 34 48 5c ce    	vsubps zmm9,zmm9,zmm30
  a08961:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm9
  a08968:	04 
  a08969:	62 a1 7c 48 58 e5    	vaddps zmm20,zmm0,zmm21
  a0896f:	62 31 7c 48 5c ed    	vsubps zmm13,zmm0,zmm21
  a08975:	62 41 54 48 58 f6    	vaddps zmm30,zmm5,zmm14
  a0897b:	62 d1 54 48 5c c6    	vsubps zmm0,zmm5,zmm14
  a08981:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a08988:	03 
  a08989:	62 b1 24 40 58 c1    	vaddps zmm0,zmm27,zmm17
  a0898f:	62 a1 24 40 5c c9    	vsubps zmm17,zmm27,zmm17
  a08995:	62 21 5c 48 58 da    	vaddps zmm27,zmm4,zmm18
  a0899b:	62 31 5c 48 5c f2    	vsubps zmm14,zmm4,zmm18
  a089a1:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x80]
  a089a8:	02 
  a089a9:	62 81 5c 48 58 d4    	vaddps zmm18,zmm4,zmm28
  a089af:	62 01 5c 48 5c e4    	vsubps zmm28,zmm4,zmm28
  a089b5:	62 51 34 40 58 cc    	vaddps zmm9,zmm25,zmm12
  a089bb:	62 01 1c 48 5c c9    	vsubps zmm25,zmm12,zmm25
  a089c1:	62 91 2c 48 58 e2    	vaddps zmm4,zmm10,zmm26
  a089c7:	62 11 2c 48 5c e2    	vsubps zmm12,zmm10,zmm26
  a089cd:	62 11 64 40 58 d0    	vaddps zmm10,zmm19,zmm24
  a089d3:	62 01 64 40 5c c0    	vsubps zmm24,zmm19,zmm24
  a089d9:	62 41 44 40 58 d0    	vaddps zmm26,zmm23,zmm8
  a089df:	62 c1 44 40 5c f8    	vsubps zmm23,zmm23,zmm8
  a089e5:	62 d1 7c 40 58 eb    	vaddps zmm5,zmm16,zmm11
  a089eb:	62 c1 7c 40 5c db    	vsubps zmm19,zmm16,zmm11
  a089f1:	62 71 04 48 58 db    	vaddps zmm11,zmm15,zmm3
  a089f7:	62 f1 04 48 5c db    	vsubps zmm3,zmm15,zmm3
  a089fd:	62 71 6c 48 5c c1    	vsubps zmm8,zmm2,zmm1
  a08a03:	62 71 6c 48 58 f9    	vaddps zmm15,zmm2,zmm1
  a08a09:	62 e1 7c 48 28 2d 6d 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6be56d]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a08a10:	e5 6b ff 
  a08a13:	62 f2 55 40 7f 7c 24 	vpermt2ps zmm7,zmm21,ZMMWORD PTR [rsp+0x40]
  a08a1a:	01 
  a08a1b:	62 b2 55 40 7f f6    	vpermt2ps zmm6,zmm21,zmm22
  a08a21:	62 c2 55 40 7f e5    	vpermt2ps zmm20,zmm21,zmm13
  a08a27:	62 b2 55 40 7f c1    	vpermt2ps zmm0,zmm21,zmm17
  a08a2d:	62 82 55 40 7f d4    	vpermt2ps zmm18,zmm21,zmm28
  a08a33:	62 d2 55 40 7f e4    	vpermt2ps zmm4,zmm21,zmm12
  a08a39:	62 22 55 40 7f d7    	vpermt2ps zmm26,zmm21,zmm23
  a08a3f:	62 72 55 40 7f db    	vpermt2ps zmm11,zmm21,zmm3
  a08a45:	62 71 7c 48 28 25 b1 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6be4b1]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a08a4c:	e4 6b ff 
  a08a4f:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a08a55:	62 b2 1d 48 7f ca    	vpermt2ps zmm1,zmm12,zmm18
  a08a5b:	62 e1 7c 48 28 05 db 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6be4db]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a08a62:	e4 6b ff 
  a08a65:	62 b2 7d 40 7f fa    	vpermt2ps zmm7,zmm16,zmm18
  a08a6b:	62 71 7c 48 28 ee    	vmovaps zmm13,zmm6
  a08a71:	62 72 1d 48 7f ec    	vpermt2ps zmm13,zmm12,zmm4
  a08a77:	62 f2 7d 40 7f f4    	vpermt2ps zmm6,zmm16,zmm4
  a08a7d:	62 b1 7c 48 28 e4    	vmovaps zmm4,zmm20
  a08a83:	62 92 1d 48 7f e2    	vpermt2ps zmm4,zmm12,zmm26
  a08a89:	62 82 7d 40 7f e2    	vpermt2ps zmm20,zmm16,zmm26
  a08a8f:	62 b1 c5 48 14 dc    	vunpcklpd zmm3,zmm7,zmm20
  a08a95:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a08a9b:	62 d2 1d 48 7f fb    	vpermt2ps zmm7,zmm12,zmm11
  a08aa1:	62 d2 7d 40 7f c3    	vpermt2ps zmm0,zmm16,zmm11
  a08aa7:	62 f1 cd 48 14 f0    	vunpcklpd zmm6,zmm6,zmm0
  a08aad:	62 f1 f5 48 14 d4    	vunpcklpd zmm2,zmm1,zmm4
  a08ab3:	62 f1 f5 48 15 cc    	vunpckhpd zmm1,zmm1,zmm4
  a08ab9:	62 f1 95 48 14 e7    	vunpcklpd zmm4,zmm13,zmm7
  a08abf:	62 f1 95 48 15 ff    	vunpckhpd zmm7,zmm13,zmm7
  a08ac5:	62 62 55 40 7f 7c 24 	vpermt2ps zmm31,zmm21,ZMMWORD PTR [rsp+0x140]
  a08acc:	05 
  a08acd:	62 62 55 40 7f 6c 24 	vpermt2ps zmm29,zmm21,ZMMWORD PTR [rsp+0x100]
  a08ad4:	04 
  a08ad5:	62 62 55 40 7f 74 24 	vpermt2ps zmm30,zmm21,ZMMWORD PTR [rsp+0xc0]
  a08adc:	03 
  a08add:	62 42 55 40 7f de    	vpermt2ps zmm27,zmm21,zmm14
  a08ae3:	62 12 55 40 7f c9    	vpermt2ps zmm9,zmm21,zmm25
  a08ae9:	62 12 55 40 7f d0    	vpermt2ps zmm10,zmm21,zmm24
  a08aef:	62 b2 55 40 7f eb    	vpermt2ps zmm5,zmm21,zmm19
  a08af5:	62 71 7c 48 28 2d 01 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6be301]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a08afc:	e3 6b ff 
  a08aff:	62 52 55 40 7f c7    	vpermt2ps zmm8,zmm21,zmm15
  a08b05:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a08b0b:	62 f2 15 48 7f c4    	vpermt2ps zmm0,zmm13,zmm4
  a08b11:	62 71 7c 48 28 1d 25 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6be325]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a08b18:	e3 6b ff 
  a08b1b:	62 f2 25 48 7f d4    	vpermt2ps zmm2,zmm11,zmm4
  a08b21:	62 71 7c 48 28 f1    	vmovaps zmm14,zmm1
  a08b27:	62 72 15 48 7f f7    	vpermt2ps zmm14,zmm13,zmm7
  a08b2d:	62 f2 25 48 7f cf    	vpermt2ps zmm1,zmm11,zmm7
  a08b33:	62 71 7c 48 28 fb    	vmovaps zmm15,zmm3
  a08b39:	62 72 15 48 7f fe    	vpermt2ps zmm15,zmm13,zmm6
  a08b3f:	62 f2 25 48 7f de    	vpermt2ps zmm3,zmm11,zmm6
  a08b45:	62 91 7c 48 28 e7    	vmovaps zmm4,zmm31
  a08b4b:	62 d2 1d 48 7f e1    	vpermt2ps zmm4,zmm12,zmm9
  a08b51:	62 42 7d 40 7f f9    	vpermt2ps zmm31,zmm16,zmm9
  a08b57:	62 91 7c 48 28 f5    	vmovaps zmm6,zmm29
  a08b5d:	62 d2 1d 48 7f f2    	vpermt2ps zmm6,zmm12,zmm10
  a08b63:	62 42 7d 40 7f ea    	vpermt2ps zmm29,zmm16,zmm10
  a08b69:	62 11 7c 48 28 d6    	vmovaps zmm10,zmm30
  a08b6f:	62 72 1d 48 7f d5    	vpermt2ps zmm10,zmm12,zmm5
  a08b75:	62 62 7d 40 7f f5    	vpermt2ps zmm30,zmm16,zmm5
  a08b7b:	62 11 85 40 14 ce    	vunpcklpd zmm9,zmm31,zmm30
  a08b81:	62 52 25 40 77 e0    	vpermi2ps zmm12,zmm27,zmm8
  a08b87:	62 42 7d 40 7f d8    	vpermt2ps zmm27,zmm16,zmm8
  a08b8d:	62 11 95 40 14 c3    	vunpcklpd zmm8,zmm29,zmm27
  a08b93:	62 d1 dd 48 14 fa    	vunpcklpd zmm7,zmm4,zmm10
  a08b99:	62 d1 dd 48 15 ea    	vunpckhpd zmm5,zmm4,zmm10
  a08b9f:	62 51 cd 48 14 d4    	vunpcklpd zmm10,zmm6,zmm12
  a08ba5:	62 d1 cd 48 15 f4    	vunpckhpd zmm6,zmm6,zmm12
  a08bab:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a08bb1:	62 d2 15 48 7f e2    	vpermt2ps zmm4,zmm13,zmm10
  a08bb7:	62 d2 25 48 7f fa    	vpermt2ps zmm7,zmm11,zmm10
  a08bbd:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a08bc3:	62 72 15 48 7f d6    	vpermt2ps zmm10,zmm13,zmm6
  a08bc9:	62 f2 25 48 7f ee    	vpermt2ps zmm5,zmm11,zmm6
  a08bcf:	62 52 35 48 77 e8    	vpermi2ps zmm13,zmm9,zmm8
  a08bd5:	62 52 25 48 7f c8    	vpermt2ps zmm9,zmm11,zmm8
  a08bdb:	62 71 7c 48 10 5a 02 	vmovups zmm11,ZMMWORD PTR [rdx+0x80]
  a08be2:	62 71 7c 48 10 62 03 	vmovups zmm12,ZMMWORD PTR [rdx+0xc0]
  a08be9:	62 71 7c 48 10 42 04 	vmovups zmm8,ZMMWORD PTR [rdx+0x100]
  a08bf0:	62 e1 7c 48 10 42 05 	vmovups zmm16,ZMMWORD PTR [rdx+0x140]
  a08bf7:	62 d1 0c 48 59 f0    	vmulps zmm6,zmm14,zmm8
  a08bfd:	62 b2 2d 48 bc f0    	vfnmadd231ps zmm6,zmm10,zmm16
  a08c03:	62 51 2c 48 59 c0    	vmulps zmm8,zmm10,zmm8
  a08c09:	62 71 7c 48 10 52 09 	vmovups zmm10,ZMMWORD PTR [rdx+0x240]
  a08c10:	62 52 7d 40 b8 c6    	vfmadd231ps zmm8,zmm16,zmm14
  a08c16:	62 71 7c 48 10 72 08 	vmovups zmm14,ZMMWORD PTR [rdx+0x200]
  a08c1d:	62 c1 04 48 59 c6    	vmulps zmm16,zmm15,zmm14
  a08c23:	62 c2 15 48 bc c2    	vfnmadd231ps zmm16,zmm13,zmm10
  a08c29:	62 51 14 48 59 ee    	vmulps zmm13,zmm13,zmm14
  a08c2f:	62 52 2d 48 b8 ef    	vfmadd231ps zmm13,zmm10,zmm15
  a08c35:	62 71 7c 48 10 52 0b 	vmovups zmm10,ZMMWORD PTR [rdx+0x2c0]
  a08c3c:	62 71 7c 48 10 72 0a 	vmovups zmm14,ZMMWORD PTR [rdx+0x280]
  a08c43:	62 51 34 48 59 fe    	vmulps zmm15,zmm9,zmm14
  a08c49:	62 52 65 48 b8 fa    	vfmadd231ps zmm15,zmm3,zmm10
  a08c4f:	62 d1 64 48 59 de    	vmulps zmm3,zmm3,zmm14
  a08c55:	62 31 4c 48 5c f0    	vsubps zmm14,zmm6,zmm16
  a08c5b:	62 d2 2d 48 bc d9    	vfnmadd231ps zmm3,zmm10,zmm9
  a08c61:	62 72 7d 48 18 0d 69 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff66c669]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a08c68:	c6 66 ff 
  a08c6b:	62 51 0c 48 59 d1    	vmulps zmm10,zmm14,zmm9
  a08c71:	62 51 44 48 59 f3    	vmulps zmm14,zmm7,zmm11
  a08c77:	62 52 6d 48 b8 f4    	vfmadd231ps zmm14,zmm2,zmm12
  a08c7d:	62 d1 6c 48 59 d3    	vmulps zmm2,zmm2,zmm11
  a08c83:	62 71 7c 48 10 5a 07 	vmovups zmm11,ZMMWORD PTR [rdx+0x1c0]
  a08c8a:	62 f2 1d 48 bc d7    	vfnmadd231ps zmm2,zmm12,zmm7
  a08c90:	62 f1 7c 48 10 7a 06 	vmovups zmm7,ZMMWORD PTR [rdx+0x180]
  a08c97:	62 71 54 48 59 e7    	vmulps zmm12,zmm5,zmm7
  a08c9d:	62 52 75 48 b8 e3    	vfmadd231ps zmm12,zmm1,zmm11
  a08ca3:	62 f1 74 48 59 cf    	vmulps zmm1,zmm1,zmm7
  a08ca9:	62 f2 7d 48 18 3d ad 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff66c7ad]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a08cb0:	c7 66 ff 
  a08cb3:	62 f2 25 48 bc cd    	vfnmadd231ps zmm1,zmm11,zmm5
  a08cb9:	62 d1 3c 48 58 ed    	vaddps zmm5,zmm8,zmm13
  a08cbf:	62 71 7c 48 28 df    	vmovaps zmm11,zmm7
  a08cc5:	62 72 55 48 ac dc    	vfnmadd213ps zmm11,zmm5,zmm4
  a08ccb:	62 b1 4c 48 58 f0    	vaddps zmm6,zmm6,zmm16
  a08cd1:	62 c1 2c 48 58 c3    	vaddps zmm16,zmm10,zmm11
  a08cd7:	62 51 3c 48 5c c5    	vsubps zmm8,zmm8,zmm13
  a08cdd:	62 71 64 48 5c ea    	vsubps zmm13,zmm3,zmm2
  a08ce3:	62 f1 64 48 58 d2    	vaddps zmm2,zmm3,zmm2
  a08ce9:	62 d1 04 48 58 de    	vaddps zmm3,zmm15,zmm14
  a08cef:	62 51 04 48 5c f6    	vsubps zmm14,zmm15,zmm14
  a08cf5:	62 71 7c 48 28 ff    	vmovaps zmm15,zmm7
  a08cfb:	62 52 65 48 ac fc    	vfnmadd213ps zmm15,zmm3,zmm12
  a08d01:	62 51 14 48 59 e9    	vmulps zmm13,zmm13,zmm9
  a08d07:	62 51 3c 48 59 c1    	vmulps zmm8,zmm8,zmm9
  a08d0d:	62 51 0c 48 59 c9    	vmulps zmm9,zmm14,zmm9
  a08d13:	62 51 04 48 58 f5    	vaddps zmm14,zmm15,zmm13
  a08d19:	62 51 24 48 5c d2    	vsubps zmm10,zmm11,zmm10
  a08d1f:	62 71 7c 48 28 df    	vmovaps zmm11,zmm7
  a08d25:	62 72 4d 48 ac d8    	vfnmadd213ps zmm11,zmm6,zmm0
  a08d2b:	62 51 04 48 5c ed    	vsubps zmm13,zmm15,zmm13
  a08d31:	62 51 24 48 5c f8    	vsubps zmm15,zmm11,zmm8
  a08d37:	62 f2 6d 48 ac f9    	vfnmadd213ps zmm7,zmm2,zmm1
  a08d3d:	62 51 24 48 58 c0    	vaddps zmm8,zmm11,zmm8
  a08d43:	62 51 44 48 5c d9    	vsubps zmm11,zmm7,zmm9
  a08d49:	62 d1 44 48 58 f9    	vaddps zmm7,zmm7,zmm9
  a08d4f:	62 f1 54 48 58 e4    	vaddps zmm4,zmm5,zmm4
  a08d55:	62 f1 1c 48 58 db    	vaddps zmm3,zmm12,zmm3
  a08d5b:	62 d1 7c 40 5c ee    	vsubps zmm5,zmm16,zmm14
  a08d61:	62 f1 7c 48 58 c6    	vaddps zmm0,zmm0,zmm6
  a08d67:	62 d1 04 48 5c f3    	vsubps zmm6,zmm15,zmm11
  a08d6d:	62 f1 74 48 58 ca    	vaddps zmm1,zmm1,zmm2
  a08d73:	62 d1 2c 48 58 d5    	vaddps zmm2,zmm10,zmm13
  a08d79:	62 51 7c 40 58 ce    	vaddps zmm9,zmm16,zmm14
  a08d7f:	62 71 3c 48 58 e7    	vaddps zmm12,zmm8,zmm7
  a08d85:	62 51 04 48 58 db    	vaddps zmm11,zmm15,zmm11
  a08d8b:	62 71 5c 48 5c f3    	vsubps zmm14,zmm4,zmm3
  a08d91:	62 51 2c 48 5c d5    	vsubps zmm10,zmm10,zmm13
  a08d97:	62 71 7c 48 5c e9    	vsubps zmm13,zmm0,zmm1
  a08d9d:	62 f1 3c 48 5c ff    	vsubps zmm7,zmm8,zmm7
  a08da3:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a08da9:	62 f1 7c 48 58 c1    	vaddps zmm0,zmm0,zmm1
  a08daf:	62 f1 7c 48 28 0d 07 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff685907]        # 8e6c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bb70>
  a08db6:	59 68 ff 
  a08db9:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a08dbf:	62 f2 75 48 7f e3    	vpermt2ps zmm4,zmm1,zmm3
  a08dc5:	62 71 7c 48 28 05 31 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff685931]        # 8e700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bbb0>
  a08dcc:	59 68 ff 
  a08dcf:	62 f2 3d 48 7f c3    	vpermt2ps zmm0,zmm8,zmm3
  a08dd5:	62 f1 7c 48 28 df    	vmovaps zmm3,zmm7
  a08ddb:	62 d2 75 48 7f da    	vpermt2ps zmm3,zmm1,zmm10
  a08de1:	62 d2 3d 48 7f fa    	vpermt2ps zmm7,zmm8,zmm10
  a08de7:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a08ded:	62 52 75 48 7f d1    	vpermt2ps zmm10,zmm1,zmm9
  a08df3:	62 52 3d 48 7f d9    	vpermt2ps zmm11,zmm8,zmm9
  a08df9:	62 51 7c 48 28 cd    	vmovaps zmm9,zmm13
  a08dff:	62 52 75 48 7f ce    	vpermt2ps zmm9,zmm1,zmm14
  a08e05:	62 52 3d 48 7f ee    	vpermt2ps zmm13,zmm8,zmm14
  a08e0b:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a08e11:	62 72 75 48 7f f2    	vpermt2ps zmm14,zmm1,zmm2
  a08e17:	62 72 3d 48 7f e2    	vpermt2ps zmm12,zmm8,zmm2
  a08e1d:	62 f2 4d 48 77 cd    	vpermi2ps zmm1,zmm6,zmm5
  a08e23:	62 f2 3d 48 7f f5    	vpermt2ps zmm6,zmm8,zmm5
  a08e29:	62 f1 7c 48 11 06    	vmovups ZMMWORD PTR [rsi],zmm0
  a08e2f:	62 f1 7c 48 11 66 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm4
  a08e36:	62 f1 7c 48 11 7e 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm7
  a08e3d:	62 f1 7c 48 11 5e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm3
  a08e44:	62 71 7c 48 11 5e 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm11
  a08e4b:	62 71 7c 48 11 56 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm10
  a08e52:	62 71 7c 48 11 6e 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm13
  a08e59:	62 71 7c 48 11 4e 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm9
  a08e60:	62 71 7c 48 11 66 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm12
  a08e67:	62 71 7c 48 11 76 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm14
  a08e6e:	62 f1 7c 48 11 76 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm6
  a08e75:	62 f1 7c 48 11 4e 0b 	vmovups ZMMWORD PTR [rsi+0x2c0],zmm1
  a08e7c:	48 89 ec             	mov    rsp,rbp
  a08e7f:	5d                   	pop    rbp
  a08e80:	c5 f8 77             	vzeroupper
  a08e83:	c3                   	ret
