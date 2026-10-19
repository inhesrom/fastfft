
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a3b180 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a3b180:	48 81 ec 88 00 00 00 	sub    rsp,0x88
  a3b187:	48 c1 e2 07          	shl    rdx,0x7
  a3b18b:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a3b18f:	31 d2                	xor    edx,edx
  a3b191:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a3b198:	0f 1f 84 00 00 00 00 
  a3b19f:	00 
  a3b1a0:	62 f1 7c 48 10 34 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1]
  a3b1a7:	c5 f8 10 5c 17 40    	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x40]
  a3b1ad:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a3b1b3:	62 f1 7c 48 28 05 83 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff656583]        # 91740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ebf0>
  a3b1ba:	65 65 ff 
  a3b1bd:	62 72 7d 48 7f c3    	vpermt2ps zmm8,zmm0,zmm3
  a3b1c3:	62 f1 7c 48 28 0d b3 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6565b3]        # 91780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ec30>
  a3b1ca:	65 65 ff 
  a3b1cd:	62 f2 75 48 7f f3    	vpermt2ps zmm6,zmm1,zmm3
  a3b1d3:	62 f1 7c 48 10 bc 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x50]
  a3b1da:	50 00 00 00 
  a3b1de:	c5 f8 10 9c 17 90 00 	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x90]
  a3b1e5:	00 00 
  a3b1e7:	62 e1 7c 48 28 cf    	vmovaps zmm17,zmm7
  a3b1ed:	62 e2 7d 48 7f cb    	vpermt2ps zmm17,zmm0,zmm3
  a3b1f3:	62 f2 75 48 7f fb    	vpermt2ps zmm7,zmm1,zmm3
  a3b1f9:	62 f1 7c 48 10 9c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0xa0]
  a3b200:	a0 00 00 00 
  a3b204:	c5 78 10 94 17 e0 00 	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0xe0]
  a3b20b:	00 00 
  a3b20d:	62 e1 7c 48 28 c3    	vmovaps zmm16,zmm3
  a3b213:	62 c2 7d 48 7f c2    	vpermt2ps zmm16,zmm0,zmm10
  a3b219:	62 d2 75 48 7f da    	vpermt2ps zmm3,zmm1,zmm10
  a3b21f:	62 71 7c 48 10 94 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a3b226:	f0 00 00 00 
  a3b22a:	c5 78 10 bc 17 30 01 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x130]
  a3b231:	00 00 
  a3b233:	62 c1 7c 48 28 d2    	vmovaps zmm18,zmm10
  a3b239:	62 c2 7d 48 7f d7    	vpermt2ps zmm18,zmm0,zmm15
  a3b23f:	62 52 75 48 7f d7    	vpermt2ps zmm10,zmm1,zmm15
  a3b245:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x140]
  a3b24c:	05 
  a3b24d:	c5 78 10 bc 17 80 01 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x180]
  a3b254:	00 00 
  a3b256:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a3b25c:	62 c2 7d 48 7f e7    	vpermt2ps zmm20,zmm0,zmm15
  a3b262:	62 c2 75 48 7f df    	vpermt2ps zmm19,zmm1,zmm15
  a3b268:	62 e1 7c 48 10 ac 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x190]
  a3b26f:	90 01 00 00 
  a3b273:	c5 78 10 bc 17 d0 01 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x1d0]
  a3b27a:	00 00 
  a3b27c:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a3b282:	62 c2 7d 48 7f f7    	vpermt2ps zmm22,zmm0,zmm15
  a3b288:	62 c2 75 48 7f ef    	vpermt2ps zmm21,zmm1,zmm15
  a3b28e:	62 e1 7c 48 10 bc 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a3b295:	e0 01 00 00 
  a3b299:	c5 78 10 bc 17 20 02 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x220]
  a3b2a0:	00 00 
  a3b2a2:	62 21 7c 48 28 c7    	vmovaps zmm24,zmm23
  a3b2a8:	62 42 7d 48 7f c7    	vpermt2ps zmm24,zmm0,zmm15
  a3b2ae:	62 c2 75 48 7f ff    	vpermt2ps zmm23,zmm1,zmm15
  a3b2b4:	62 61 7c 48 10 8c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x230]
  a3b2bb:	30 02 00 00 
  a3b2bf:	c5 78 10 bc 17 70 02 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x270]
  a3b2c6:	00 00 
  a3b2c8:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a3b2ce:	62 42 7d 48 7f d7    	vpermt2ps zmm26,zmm0,zmm15
  a3b2d4:	62 42 75 48 7f cf    	vpermt2ps zmm25,zmm1,zmm15
  a3b2da:	62 21 4c 48 58 db    	vaddps zmm27,zmm6,zmm19
  a3b2e0:	62 21 64 48 58 e7    	vaddps zmm28,zmm3,zmm23
  a3b2e6:	62 01 24 40 58 ec    	vaddps zmm29,zmm27,zmm28
  a3b2ec:	62 21 44 48 58 f5    	vaddps zmm30,zmm7,zmm21
  a3b2f2:	62 01 2c 48 58 f9    	vaddps zmm31,zmm10,zmm25
  a3b2f8:	62 11 0c 40 58 df    	vaddps zmm11,zmm30,zmm31
  a3b2fe:	62 51 14 40 58 fb    	vaddps zmm15,zmm29,zmm11
  a3b304:	62 31 3c 48 58 ec    	vaddps zmm13,zmm8,zmm20
  a3b30a:	62 11 7c 40 58 c8    	vaddps zmm9,zmm16,zmm24
  a3b310:	62 d1 14 48 58 e1    	vaddps zmm4,zmm13,zmm9
  a3b316:	62 b1 74 40 58 ee    	vaddps zmm5,zmm17,zmm22
  a3b31c:	62 b1 4c 48 5c f3    	vsubps zmm6,zmm6,zmm19
  a3b322:	62 81 6c 40 58 da    	vaddps zmm19,zmm18,zmm26
  a3b328:	62 01 7c 40 5c c0    	vsubps zmm24,zmm16,zmm24
  a3b32e:	62 31 54 48 58 f3    	vaddps zmm14,zmm5,zmm19
  a3b334:	62 b1 44 48 5c fd    	vsubps zmm7,zmm7,zmm21
  a3b33a:	62 d1 5c 48 58 c6    	vaddps zmm0,zmm4,zmm14
  a3b340:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a3b347:	ff 
  a3b348:	62 a1 74 40 5c ee    	vsubps zmm21,zmm17,zmm22
  a3b34e:	62 81 4c 48 58 f0    	vaddps zmm22,zmm6,zmm24
  a3b354:	62 81 6c 40 5c d2    	vsubps zmm18,zmm18,zmm26
  a3b35a:	62 a1 44 48 58 cd    	vaddps zmm17,zmm7,zmm21
  a3b360:	62 f2 7d 48 18 15 32 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff63a032]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a3b367:	a0 63 ff 
  a3b36a:	62 f1 74 40 59 c2    	vmulps zmm0,zmm17,zmm2
  a3b370:	62 11 2c 48 5c d1    	vsubps zmm10,zmm10,zmm25
  a3b376:	62 c1 6c 40 5c ca    	vsubps zmm17,zmm18,zmm10
  a3b37c:	62 61 74 40 59 ca    	vmulps zmm25,zmm17,zmm2
  a3b382:	62 31 3c 48 5c c4    	vsubps zmm8,zmm8,zmm20
  a3b388:	62 81 7c 48 58 e1    	vaddps zmm20,zmm0,zmm25
  a3b38e:	62 e1 44 40 5c fb    	vsubps zmm23,zmm23,zmm3
  a3b394:	62 a1 4c 40 58 cc    	vaddps zmm17,zmm22,zmm20
  a3b39a:	62 f1 54 40 5c df    	vsubps zmm3,zmm21,zmm7
  a3b3a0:	62 c1 44 40 58 e8    	vaddps zmm21,zmm23,zmm8
  a3b3a6:	62 f1 64 48 59 ca    	vmulps zmm1,zmm3,zmm2
  a3b3ac:	62 b1 2c 48 58 da    	vaddps zmm3,zmm10,zmm18
  a3b3b2:	62 71 64 48 59 d2    	vmulps zmm10,zmm3,zmm2
  a3b3b8:	62 c1 74 48 5c d2    	vsubps zmm18,zmm1,zmm10
  a3b3be:	62 01 24 40 5c dc    	vsubps zmm27,zmm27,zmm28
  a3b3c4:	62 21 54 40 58 d2    	vaddps zmm26,zmm21,zmm18
  a3b3ca:	62 b1 54 48 5c eb    	vsubps zmm5,zmm5,zmm19
  a3b3d0:	62 f1 24 40 58 dd    	vaddps zmm3,zmm27,zmm5
  a3b3d6:	62 51 14 48 5c c9    	vsubps zmm9,zmm13,zmm9
  a3b3dc:	62 11 04 40 5c ee    	vsubps zmm13,zmm31,zmm30
  a3b3e2:	62 c1 14 48 58 c1    	vaddps zmm16,zmm13,zmm9
  a3b3e8:	62 81 4c 48 5c d8    	vsubps zmm19,zmm6,zmm24
  a3b3ee:	62 d1 74 48 58 ca    	vaddps zmm1,zmm1,zmm10
  a3b3f4:	62 f1 64 40 58 f1    	vaddps zmm6,zmm19,zmm1
  a3b3fa:	62 31 3c 48 5c d7    	vsubps zmm10,zmm8,zmm23
  a3b400:	62 f1 34 40 5c c0    	vsubps zmm0,zmm25,zmm0
  a3b406:	62 61 2c 48 58 e0    	vaddps zmm28,zmm10,zmm0
  a3b40c:	62 51 14 40 5c db    	vsubps zmm11,zmm29,zmm11
  a3b412:	62 41 5c 48 5c ee    	vsubps zmm29,zmm4,zmm14
  a3b418:	62 b1 4c 40 5c e4    	vsubps zmm4,zmm22,zmm20
  a3b41e:	62 21 54 40 5c fa    	vsubps zmm31,zmm21,zmm18
  a3b424:	62 f1 24 40 5c ed    	vsubps zmm5,zmm27,zmm5
  a3b42a:	62 41 34 48 5c f5    	vsubps zmm30,zmm9,zmm13
  a3b430:	62 f1 64 40 5c c9    	vsubps zmm1,zmm19,zmm1
  a3b436:	62 f1 2c 48 5c c0    	vsubps zmm0,zmm10,zmm0
  a3b43c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a3b443:	fe 
  a3b444:	62 51 7c 48 28 c7    	vmovaps zmm8,zmm15
  a3b44a:	62 f1 7c 48 28 15 2c 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff68bb2c]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3b451:	bb 68 ff 
  a3b454:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a3b458:	62 72 6d 48 7f c0    	vpermt2ps zmm8,zmm2,zmm0
  a3b45e:	62 71 7c 48 28 25 58 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff68bb58]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a3b465:	bb 68 ff 
  a3b468:	62 72 1d 48 7f f8    	vpermt2ps zmm15,zmm12,zmm0
  a3b46e:	62 31 7c 48 28 c9    	vmovaps zmm9,zmm17
  a3b474:	62 72 6d 48 7f c8    	vpermt2ps zmm9,zmm2,zmm0
  a3b47a:	62 e2 1d 48 7f c8    	vpermt2ps zmm17,zmm12,zmm0
  a3b480:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a3b486:	62 72 6d 48 7f d0    	vpermt2ps zmm10,zmm2,zmm0
  a3b48c:	62 f2 1d 48 7f d8    	vpermt2ps zmm3,zmm12,zmm0
  a3b492:	62 71 7c 48 28 ee    	vmovaps zmm13,zmm6
  a3b498:	62 72 6d 48 7f e8    	vpermt2ps zmm13,zmm2,zmm0
  a3b49e:	62 f2 1d 48 7f f0    	vpermt2ps zmm6,zmm12,zmm0
  a3b4a4:	62 51 7c 48 28 f3    	vmovaps zmm14,zmm11
  a3b4aa:	62 72 6d 48 7f f0    	vpermt2ps zmm14,zmm2,zmm0
  a3b4b0:	62 72 1d 48 7f d8    	vpermt2ps zmm11,zmm12,zmm0
  a3b4b6:	62 e1 7c 48 28 d4    	vmovaps zmm18,zmm4
  a3b4bc:	62 e2 6d 48 7f d0    	vpermt2ps zmm18,zmm2,zmm0
  a3b4c2:	62 f2 1d 48 7f e0    	vpermt2ps zmm4,zmm12,zmm0
  a3b4c8:	62 e1 7c 48 28 dd    	vmovaps zmm19,zmm5
  a3b4ce:	62 e2 6d 48 7f d8    	vpermt2ps zmm19,zmm2,zmm0
  a3b4d4:	62 f2 1d 48 7f e8    	vpermt2ps zmm5,zmm12,zmm0
  a3b4da:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a3b4e0:	62 e2 6d 48 7f e0    	vpermt2ps zmm20,zmm2,zmm0
  a3b4e6:	62 f2 1d 48 7f c8    	vpermt2ps zmm1,zmm12,zmm0
  a3b4ec:	62 c1 7c 48 28 e8    	vmovaps zmm21,zmm8
  a3b4f2:	62 61 7c 48 28 0d 04 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff68ba04]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a3b4f9:	ba 68 ff 
  a3b4fc:	62 c2 35 40 7f ee    	vpermt2ps zmm21,zmm25,zmm14
  a3b502:	62 61 7c 48 28 1d 34 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff68ba34]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a3b509:	ba 68 ff 
  a3b50c:	62 52 25 40 7f c6    	vpermt2ps zmm8,zmm27,zmm14
  a3b512:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  a3b518:	62 32 35 40 7f f2    	vpermt2ps zmm14,zmm25,zmm18
  a3b51e:	62 32 25 40 7f ca    	vpermt2ps zmm9,zmm27,zmm18
  a3b524:	62 c1 7c 48 28 f2    	vmovaps zmm22,zmm10
  a3b52a:	62 a2 35 40 7f f3    	vpermt2ps zmm22,zmm25,zmm19
  a3b530:	62 32 25 40 7f d3    	vpermt2ps zmm10,zmm27,zmm19
  a3b536:	62 c1 7c 48 28 fd    	vmovaps zmm23,zmm13
  a3b53c:	62 a2 35 40 7f fc    	vpermt2ps zmm23,zmm25,zmm20
  a3b542:	62 32 25 40 7f ec    	vpermt2ps zmm13,zmm27,zmm20
  a3b548:	62 52 35 40 7f fb    	vpermt2ps zmm15,zmm25,zmm11
  a3b54e:	62 e2 35 40 7f cc    	vpermt2ps zmm17,zmm25,zmm4
  a3b554:	62 f2 35 40 7f dd    	vpermt2ps zmm3,zmm25,zmm5
  a3b55a:	62 e1 85 48 14 d3    	vunpcklpd zmm18,zmm15,zmm3
  a3b560:	62 f2 35 40 7f f1    	vpermt2ps zmm6,zmm25,zmm1
  a3b566:	62 f1 f5 40 14 ce    	vunpcklpd zmm1,zmm17,zmm6
  a3b56c:	62 b1 d5 40 14 fe    	vunpcklpd zmm7,zmm21,zmm22
  a3b572:	62 a1 d5 40 15 ce    	vunpckhpd zmm17,zmm21,zmm22
  a3b578:	62 b1 8d 48 14 df    	vunpcklpd zmm3,zmm14,zmm23
  a3b57e:	62 b1 8d 48 15 e7    	vunpckhpd zmm4,zmm14,zmm23
  a3b584:	62 c1 bd 48 14 ea    	vunpcklpd zmm21,zmm8,zmm10
  a3b58a:	62 c1 bd 48 15 e2    	vunpckhpd zmm20,zmm8,zmm10
  a3b590:	62 d1 b5 48 14 f5    	vunpcklpd zmm6,zmm9,zmm13
  a3b596:	62 d1 b5 48 15 ed    	vunpckhpd zmm5,zmm9,zmm13
  a3b59c:	62 71 7c 48 28 ff    	vmovaps zmm15,zmm7
  a3b5a2:	62 71 7c 48 28 35 54 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff68b854]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3b5a9:	b8 68 ff 
  a3b5ac:	62 72 0d 48 7f fb    	vpermt2ps zmm15,zmm14,zmm3
  a3b5b2:	62 71 7c 48 28 1d 84 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff68b884]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a3b5b9:	b8 68 ff 
  a3b5bc:	62 f2 25 48 7f fb    	vpermt2ps zmm7,zmm11,zmm3
  a3b5c2:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm7
  a3b5c9:	01 
  a3b5ca:	62 a1 7c 48 28 d9    	vmovaps zmm19,zmm17
  a3b5d0:	62 e2 0d 48 7f dc    	vpermt2ps zmm19,zmm14,zmm4
  a3b5d6:	62 e2 25 48 7f cc    	vpermt2ps zmm17,zmm11,zmm4
  a3b5dc:	62 a1 7c 48 28 fd    	vmovaps zmm23,zmm21
  a3b5e2:	62 e2 0d 48 7f fe    	vpermt2ps zmm23,zmm14,zmm6
  a3b5e8:	62 e2 25 48 7f ee    	vpermt2ps zmm21,zmm11,zmm6
  a3b5ee:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a3b5f4:	62 e2 0d 48 7f f5    	vpermt2ps zmm22,zmm14,zmm5
  a3b5fa:	62 e2 25 48 7f e5    	vpermt2ps zmm20,zmm11,zmm5
  a3b600:	62 b1 7c 48 28 da    	vmovaps zmm3,zmm18
  a3b606:	62 e2 0d 48 7f d1    	vpermt2ps zmm18,zmm14,zmm1
  a3b60c:	62 f2 25 48 7f d9    	vpermt2ps zmm3,zmm11,zmm1
  a3b612:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a3b619:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp-0x40]
  a3b620:	ff 
  a3b621:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a3b627:	62 f2 6d 48 7f f0    	vpermt2ps zmm6,zmm2,zmm0
  a3b62d:	62 01 7c 48 28 c2    	vmovaps zmm24,zmm26
  a3b633:	62 11 7c 48 28 ea    	vmovaps zmm13,zmm26
  a3b639:	62 62 6d 48 7f c0    	vpermt2ps zmm24,zmm2,zmm0
  a3b63f:	62 21 7c 48 28 d0    	vmovaps zmm26,zmm16
  a3b645:	62 62 6d 48 7f d0    	vpermt2ps zmm26,zmm2,zmm0
  a3b64b:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a3b651:	62 f2 6d 48 7f c8    	vpermt2ps zmm1,zmm2,zmm0
  a3b657:	62 91 7c 48 28 dd    	vmovaps zmm3,zmm29
  a3b65d:	62 f2 6d 48 7f d8    	vpermt2ps zmm3,zmm2,zmm0
  a3b663:	62 91 7c 48 28 e7    	vmovaps zmm4,zmm31
  a3b669:	62 f2 6d 48 7f e0    	vpermt2ps zmm4,zmm2,zmm0
  a3b66f:	62 91 7c 48 28 ee    	vmovaps zmm5,zmm30
  a3b675:	62 f2 6d 48 7f e8    	vpermt2ps zmm5,zmm2,zmm0
  a3b67b:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp-0x80]
  a3b682:	fe 
  a3b683:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a3b689:	62 72 6d 48 7f c8    	vpermt2ps zmm9,zmm2,zmm0
  a3b68f:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a3b695:	62 72 35 40 7f d3    	vpermt2ps zmm10,zmm25,zmm3
  a3b69b:	62 f2 25 40 7f f3    	vpermt2ps zmm6,zmm27,zmm3
  a3b6a1:	62 91 7c 48 28 d8    	vmovaps zmm3,zmm24
  a3b6a7:	62 f2 35 40 7f dc    	vpermt2ps zmm3,zmm25,zmm4
  a3b6ad:	62 62 25 40 7f c4    	vpermt2ps zmm24,zmm27,zmm4
  a3b6b3:	62 91 7c 48 28 e2    	vmovaps zmm4,zmm26
  a3b6b9:	62 f2 35 40 7f e5    	vpermt2ps zmm4,zmm25,zmm5
  a3b6bf:	62 62 25 40 7f d5    	vpermt2ps zmm26,zmm27,zmm5
  a3b6c5:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a3b6cb:	62 d2 35 40 7f e9    	vpermt2ps zmm5,zmm25,zmm9
  a3b6d1:	62 d2 25 40 7f c9    	vpermt2ps zmm1,zmm27,zmm9
  a3b6d7:	62 f2 1d 48 7f f8    	vpermt2ps zmm7,zmm12,zmm0
  a3b6dd:	62 62 1d 48 7f e8    	vpermt2ps zmm29,zmm12,zmm0
  a3b6e3:	62 92 35 40 7f fd    	vpermt2ps zmm7,zmm25,zmm29
  a3b6e9:	62 72 1d 48 7f e8    	vpermt2ps zmm13,zmm12,zmm0
  a3b6ef:	62 62 1d 48 7f f8    	vpermt2ps zmm31,zmm12,zmm0
  a3b6f5:	62 12 35 40 7f ef    	vpermt2ps zmm13,zmm25,zmm31
  a3b6fb:	62 e2 1d 48 7f c0    	vpermt2ps zmm16,zmm12,zmm0
  a3b701:	62 62 1d 48 7f f0    	vpermt2ps zmm30,zmm12,zmm0
  a3b707:	62 82 35 40 7f c6    	vpermt2ps zmm16,zmm25,zmm30
  a3b70d:	62 62 1d 48 7f e0    	vpermt2ps zmm28,zmm12,zmm0
  a3b713:	62 72 1d 48 7f c0    	vpermt2ps zmm8,zmm12,zmm0
  a3b719:	62 31 c5 48 14 e0    	vunpcklpd zmm12,zmm7,zmm16
  a3b71f:	62 42 35 40 7f e0    	vpermt2ps zmm28,zmm25,zmm8
  a3b725:	62 91 95 48 14 fc    	vunpcklpd zmm7,zmm13,zmm28
  a3b72b:	62 f1 ad 48 14 d4    	vunpcklpd zmm2,zmm10,zmm4
  a3b731:	62 61 ad 48 15 e4    	vunpckhpd zmm28,zmm10,zmm4
  a3b737:	62 f1 e5 48 14 e5    	vunpcklpd zmm4,zmm3,zmm5
  a3b73d:	62 f1 e5 48 15 ed    	vunpckhpd zmm5,zmm3,zmm5
  a3b743:	62 91 cd 48 14 da    	vunpcklpd zmm3,zmm6,zmm26
  a3b749:	62 01 cd 48 15 ea    	vunpckhpd zmm29,zmm6,zmm26
  a3b74f:	62 f1 bd 40 14 c1    	vunpcklpd zmm0,zmm24,zmm1
  a3b755:	62 f1 bd 40 15 c9    	vunpckhpd zmm1,zmm24,zmm1
  a3b75b:	62 e1 7c 48 28 c2    	vmovaps zmm16,zmm2
  a3b761:	62 e2 0d 48 7f c4    	vpermt2ps zmm16,zmm14,zmm4
  a3b767:	62 f2 25 48 7f d4    	vpermt2ps zmm2,zmm11,zmm4
  a3b76d:	62 91 7c 48 28 f4    	vmovaps zmm6,zmm28
  a3b773:	62 f2 0d 48 7f f5    	vpermt2ps zmm6,zmm14,zmm5
  a3b779:	62 62 25 48 7f e5    	vpermt2ps zmm28,zmm11,zmm5
  a3b77f:	62 61 7c 48 28 f3    	vmovaps zmm30,zmm3
  a3b785:	62 62 0d 48 7f f0    	vpermt2ps zmm30,zmm14,zmm0
  a3b78b:	62 f2 25 48 7f d8    	vpermt2ps zmm3,zmm11,zmm0
  a3b791:	62 01 7c 48 28 fd    	vmovaps zmm31,zmm29
  a3b797:	62 62 0d 48 7f f9    	vpermt2ps zmm31,zmm14,zmm1
  a3b79d:	62 62 25 48 7f e9    	vpermt2ps zmm29,zmm11,zmm1
  a3b7a3:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a3b7a9:	62 f2 0d 48 7f c7    	vpermt2ps zmm0,zmm14,zmm7
  a3b7af:	62 72 25 48 7f e7    	vpermt2ps zmm12,zmm11,zmm7
  a3b7b5:	62 f1 7c 48 10 49 04 	vmovups zmm1,ZMMWORD PTR [rcx+0x100]
  a3b7bc:	62 f1 7c 48 10 61 05 	vmovups zmm4,ZMMWORD PTR [rcx+0x140]
  a3b7c3:	62 61 64 40 59 c1    	vmulps zmm24,zmm19,zmm1
  a3b7c9:	62 62 4d 48 bc c4    	vfnmadd231ps zmm24,zmm6,zmm4
  a3b7cf:	62 f1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm1
  a3b7d5:	62 f1 7c 48 10 49 10 	vmovups zmm1,ZMMWORD PTR [rcx+0x400]
  a3b7dc:	62 b2 5d 48 b8 f3    	vfmadd231ps zmm6,zmm4,zmm19
  a3b7e2:	62 f1 7c 48 10 61 11 	vmovups zmm4,ZMMWORD PTR [rcx+0x440]
  a3b7e9:	62 61 6c 40 59 c9    	vmulps zmm25,zmm18,zmm1
  a3b7ef:	62 62 7d 48 bc cc    	vfnmadd231ps zmm25,zmm0,zmm4
  a3b7f5:	62 71 7c 48 59 d1    	vmulps zmm10,zmm0,zmm1
  a3b7fb:	62 f1 7c 48 10 41 08 	vmovups zmm0,ZMMWORD PTR [rcx+0x200]
  a3b802:	62 32 5d 48 b8 d2    	vfmadd231ps zmm10,zmm4,zmm18
  a3b808:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  a3b80f:	62 61 44 40 59 d8    	vmulps zmm27,zmm23,zmm0
  a3b815:	62 62 0d 40 bc d9    	vfnmadd231ps zmm27,zmm30,zmm1
  a3b81b:	62 f1 0c 40 59 c0    	vmulps zmm0,zmm30,zmm0
  a3b821:	62 f1 7c 48 10 61 0c 	vmovups zmm4,ZMMWORD PTR [rcx+0x300]
  a3b828:	62 b2 75 48 b8 c7    	vfmadd231ps zmm0,zmm1,zmm23
  a3b82e:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  a3b835:	62 61 4c 40 59 f4    	vmulps zmm30,zmm22,zmm4
  a3b83b:	62 62 05 40 bc f1    	vfnmadd231ps zmm30,zmm31,zmm1
  a3b841:	62 f1 04 40 59 e4    	vmulps zmm4,zmm31,zmm4
  a3b847:	62 f1 7c 48 10 69 0a 	vmovups zmm5,ZMMWORD PTR [rcx+0x280]
  a3b84e:	62 b2 75 48 b8 e6    	vfmadd231ps zmm4,zmm1,zmm22
  a3b854:	62 f1 7c 48 10 49 0b 	vmovups zmm1,ZMMWORD PTR [rcx+0x2c0]
  a3b85b:	62 e1 54 40 59 fd    	vmulps zmm23,zmm21,zmm5
  a3b861:	62 e2 65 48 bc f9    	vfnmadd231ps zmm23,zmm3,zmm1
  a3b867:	62 e1 64 48 59 f5    	vmulps zmm22,zmm3,zmm5
  a3b86d:	62 f1 7c 48 10 69 0e 	vmovups zmm5,ZMMWORD PTR [rcx+0x380]
  a3b874:	62 a2 75 48 b8 f5    	vfmadd231ps zmm22,zmm1,zmm21
  a3b87a:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a3b881:	62 f1 5c 40 59 dd    	vmulps zmm3,zmm20,zmm5
  a3b887:	62 f2 15 40 bc d9    	vfnmadd231ps zmm3,zmm29,zmm1
  a3b88d:	62 f1 14 40 59 ed    	vmulps zmm5,zmm29,zmm5
  a3b893:	62 71 7c 48 10 49 06 	vmovups zmm9,ZMMWORD PTR [rcx+0x180]
  a3b89a:	62 b2 75 48 b8 ec    	vfmadd231ps zmm5,zmm1,zmm20
  a3b8a0:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a3b8a7:	62 d1 74 40 59 f9    	vmulps zmm7,zmm17,zmm9
  a3b8ad:	62 f2 1d 40 bc f9    	vfnmadd231ps zmm7,zmm28,zmm1
  a3b8b3:	62 51 1c 40 59 c9    	vmulps zmm9,zmm28,zmm9
  a3b8b9:	62 71 7c 48 10 59 12 	vmovups zmm11,ZMMWORD PTR [rcx+0x480]
  a3b8c0:	62 32 75 48 b8 c9    	vfmadd231ps zmm9,zmm1,zmm17
  a3b8c6:	62 f1 7c 48 10 49 13 	vmovups zmm1,ZMMWORD PTR [rcx+0x4c0]
  a3b8cd:	62 71 7c 48 10 04 24 	vmovups zmm8,ZMMWORD PTR [rsp]
  a3b8d4:	62 51 3c 48 59 eb    	vmulps zmm13,zmm8,zmm11
  a3b8da:	62 72 1d 48 bc e9    	vfnmadd231ps zmm13,zmm12,zmm1
  a3b8e0:	62 51 1c 48 59 db    	vmulps zmm11,zmm12,zmm11
  a3b8e6:	62 71 7c 48 10 71 02 	vmovups zmm14,ZMMWORD PTR [rcx+0x80]
  a3b8ed:	62 52 75 48 b8 d8    	vfmadd231ps zmm11,zmm1,zmm8
  a3b8f3:	62 f1 7c 48 10 49 03 	vmovups zmm1,ZMMWORD PTR [rcx+0xc0]
  a3b8fa:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x40]
  a3b901:	01 
  a3b902:	62 41 1c 48 59 d6    	vmulps zmm26,zmm12,zmm14
  a3b908:	62 62 6d 48 bc d1    	vfnmadd231ps zmm26,zmm2,zmm1
  a3b90e:	62 51 6c 48 59 c6    	vmulps zmm8,zmm2,zmm14
  a3b914:	62 52 75 48 b8 c4    	vfmadd231ps zmm8,zmm1,zmm12
  a3b91a:	62 91 3c 40 58 c9    	vaddps zmm1,zmm24,zmm25
  a3b920:	62 c1 4c 48 58 da    	vaddps zmm19,zmm6,zmm10
  a3b926:	62 d1 4c 48 5c f2    	vsubps zmm6,zmm6,zmm10
  a3b92c:	62 e1 7c 48 58 ec    	vaddps zmm21,zmm0,zmm4
  a3b932:	62 f1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm4
  a3b938:	62 c1 54 48 58 d1    	vaddps zmm18,zmm5,zmm9
  a3b93e:	62 d1 54 48 5c e1    	vsubps zmm4,zmm5,zmm9
  a3b944:	62 c1 24 48 58 e0    	vaddps zmm20,zmm11,zmm8
  a3b94a:	62 d1 24 48 5c e8    	vsubps zmm5,zmm11,zmm8
  a3b950:	62 71 04 48 58 c1    	vaddps zmm8,zmm15,zmm1
  a3b956:	62 11 3c 40 5c c9    	vsubps zmm9,zmm24,zmm25
  a3b95c:	62 11 24 40 58 d6    	vaddps zmm10,zmm27,zmm30
  a3b962:	62 51 3c 48 58 c2    	vaddps zmm8,zmm8,zmm10
  a3b968:	62 11 24 40 5c de    	vsubps zmm11,zmm27,zmm30
  a3b96e:	62 71 64 48 58 f7    	vaddps zmm14,zmm3,zmm7
  a3b974:	62 f1 64 48 5c ff    	vsubps zmm7,zmm3,zmm7
  a3b97a:	62 01 14 48 58 ca    	vaddps zmm25,zmm13,zmm26
  a3b980:	62 11 14 48 5c ea    	vsubps zmm13,zmm13,zmm26
  a3b986:	62 f2 7d 48 18 15 58 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff639d58]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a3b98d:	9d 63 ff 
  a3b990:	62 61 7c 48 28 c2    	vmovaps zmm24,zmm2
  a3b996:	62 42 75 48 a8 c7    	vfmadd213ps zmm24,zmm1,zmm15
  a3b99c:	62 72 7d 48 18 25 9e 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff639c9e]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a3b9a3:	9c 63 ff 
  a3b9a6:	62 72 1d 48 bc f9    	vfnmadd231ps zmm15,zmm12,zmm1
  a3b9ac:	62 d1 44 40 58 ce    	vaddps zmm1,zmm23,zmm14
  a3b9b2:	62 81 74 48 58 c9    	vaddps zmm17,zmm1,zmm25
  a3b9b8:	62 42 2d 48 bc c4    	vfnmadd231ps zmm24,zmm10,zmm12
  a3b9be:	62 52 6d 48 b8 fa    	vfmadd231ps zmm15,zmm2,zmm10
  a3b9c4:	62 62 7d 48 18 15 8a 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff639d8a]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a3b9cb:	9d 63 ff 
  a3b9ce:	62 91 7c 48 59 ca    	vmulps zmm1,zmm0,zmm26
  a3b9d4:	62 62 7d 48 18 1d c2 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff6399c2]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a3b9db:	99 63 ff 
  a3b9de:	62 92 4d 48 b8 cb    	vfmadd231ps zmm1,zmm6,zmm27
  a3b9e4:	62 91 4c 48 59 f2    	vmulps zmm6,zmm6,zmm26
  a3b9ea:	62 f2 25 40 bc f0    	vfnmadd231ps zmm6,zmm27,zmm0
  a3b9f0:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a3b9f6:	62 b2 0d 48 a8 c7    	vfmadd213ps zmm0,zmm14,zmm23
  a3b9fc:	62 c2 1d 48 bc fe    	vfnmadd231ps zmm23,zmm12,zmm14
  a3ba02:	62 b1 64 40 58 d8    	vaddps zmm3,zmm19,zmm16
  a3ba08:	62 f1 54 40 58 db    	vaddps zmm3,zmm21,zmm3
  a3ba0e:	62 d2 35 40 bc c4    	vfnmadd231ps zmm0,zmm25,zmm12
  a3ba14:	62 82 6d 48 b8 f9    	vfmadd231ps zmm23,zmm2,zmm25
  a3ba1a:	62 11 54 48 59 d2    	vmulps zmm10,zmm5,zmm26
  a3ba20:	62 12 5d 48 b8 d3    	vfmadd231ps zmm10,zmm4,zmm27
  a3ba26:	62 91 5c 48 59 e2    	vmulps zmm4,zmm4,zmm26
  a3ba2c:	62 f2 25 40 bc e5    	vfnmadd231ps zmm4,zmm27,zmm5
  a3ba32:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a3ba38:	62 b2 65 40 a8 e8    	vfmadd213ps zmm5,zmm19,zmm16
  a3ba3e:	62 a2 1d 48 bc c3    	vfnmadd231ps zmm16,zmm12,zmm19
  a3ba44:	62 31 4c 40 58 f2    	vaddps zmm14,zmm22,zmm18
  a3ba4a:	62 d2 55 40 bc ec    	vfnmadd231ps zmm5,zmm21,zmm12
  a3ba50:	62 a2 6d 48 b8 c5    	vfmadd231ps zmm16,zmm2,zmm21
  a3ba56:	62 81 24 48 59 da    	vmulps zmm19,zmm11,zmm26
  a3ba5c:	62 82 35 48 b8 db    	vfmadd231ps zmm19,zmm9,zmm27
  a3ba62:	62 11 34 48 59 ca    	vmulps zmm9,zmm9,zmm26
  a3ba68:	62 52 25 40 bc cb    	vfnmadd231ps zmm9,zmm27,zmm11
  a3ba6e:	62 71 7c 48 28 da    	vmovaps zmm11,zmm2
  a3ba74:	62 32 6d 40 a8 de    	vfmadd213ps zmm11,zmm18,zmm22
  a3ba7a:	62 a2 1d 48 bc f2    	vfnmadd231ps zmm22,zmm12,zmm18
  a3ba80:	62 31 0c 48 58 f4    	vaddps zmm14,zmm14,zmm20
  a3ba86:	62 52 5d 40 bc dc    	vfnmadd231ps zmm11,zmm20,zmm12
  a3ba8c:	62 a2 6d 48 b8 f4    	vfmadd231ps zmm22,zmm2,zmm20
  a3ba92:	62 81 14 48 59 d2    	vmulps zmm18,zmm13,zmm26
  a3ba98:	62 82 45 48 b8 d3    	vfmadd231ps zmm18,zmm7,zmm27
  a3ba9e:	62 91 44 48 59 fa    	vmulps zmm7,zmm7,zmm26
  a3baa4:	62 d2 25 40 bc fd    	vfnmadd231ps zmm7,zmm27,zmm13
  a3baaa:	62 71 04 48 58 ee    	vaddps zmm13,zmm15,zmm6
  a3bab0:	62 f1 04 48 5c f6    	vsubps zmm6,zmm15,zmm6
  a3bab6:	62 71 44 40 58 fc    	vaddps zmm15,zmm23,zmm4
  a3babc:	62 f1 44 40 5c e4    	vsubps zmm4,zmm23,zmm4
  a3bac2:	62 c1 7c 40 5c e1    	vsubps zmm20,zmm16,zmm9
  a3bac8:	62 31 34 48 58 c8    	vaddps zmm9,zmm9,zmm16
  a3bace:	62 e1 4c 40 5c c7    	vsubps zmm16,zmm22,zmm7
  a3bad4:	62 f1 4c 40 58 ff    	vaddps zmm7,zmm22,zmm7
  a3bada:	62 e1 3c 40 58 e9    	vaddps zmm21,zmm24,zmm1
  a3bae0:	62 f1 3c 40 5c c9    	vsubps zmm1,zmm24,zmm1
  a3bae6:	62 c1 7c 48 58 f2    	vaddps zmm22,zmm0,zmm10
  a3baec:	62 d1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm10
  a3baf2:	62 31 54 48 5c d3    	vsubps zmm10,zmm5,zmm19
  a3baf8:	62 f1 64 40 58 ed    	vaddps zmm5,zmm19,zmm5
  a3bafe:	62 a1 24 48 5c da    	vsubps zmm19,zmm11,zmm18
  a3bb04:	62 31 24 48 58 da    	vaddps zmm11,zmm11,zmm18
  a3bb0a:	62 a1 54 40 5c d6    	vsubps zmm18,zmm21,zmm22
  a3bb10:	62 a1 54 40 58 ee    	vaddps zmm21,zmm21,zmm22
  a3bb16:	62 a1 2c 48 5c f3    	vsubps zmm22,zmm10,zmm19
  a3bb1c:	62 31 2c 48 58 d3    	vaddps zmm10,zmm10,zmm19
  a3bb22:	62 c1 14 48 58 df    	vaddps zmm19,zmm13,zmm15
  a3bb28:	62 51 14 48 5c ef    	vsubps zmm13,zmm13,zmm15
  a3bb2e:	62 31 5c 40 58 f8    	vaddps zmm15,zmm20,zmm16
  a3bb34:	62 a1 5c 40 5c c0    	vsubps zmm16,zmm20,zmm16
  a3bb3a:	62 e1 4c 48 5c e4    	vsubps zmm20,zmm6,zmm4
  a3bb40:	62 f1 4c 48 58 e4    	vaddps zmm4,zmm6,zmm4
  a3bb46:	62 f1 34 48 5c f7    	vsubps zmm6,zmm9,zmm7
  a3bb4c:	62 f1 34 48 58 ff    	vaddps zmm7,zmm9,zmm7
  a3bb52:	62 71 74 48 58 c8    	vaddps zmm9,zmm1,zmm0
  a3bb58:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a3bb5e:	62 d1 54 48 58 cb    	vaddps zmm1,zmm5,zmm11
  a3bb64:	62 d1 54 48 5c eb    	vsubps zmm5,zmm5,zmm11
  a3bb6a:	62 51 64 48 5c de    	vsubps zmm11,zmm3,zmm14
  a3bb70:	62 d1 64 48 58 de    	vaddps zmm3,zmm3,zmm14
  a3bb76:	62 31 3c 48 5c f1    	vsubps zmm14,zmm8,zmm17
  a3bb7c:	62 31 3c 48 58 c1    	vaddps zmm8,zmm8,zmm17
  a3bb82:	62 f1 7c 48 28 15 34 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff655c34]        # 917c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ec70>
  a3bb89:	5c 65 ff 
  a3bb8c:	62 d2 6d 48 7f d8    	vpermt2ps zmm3,zmm2,zmm8
  a3bb92:	62 f1 7c 48 11 1c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm3
  a3bb99:	62 a2 6d 48 7f f2    	vpermt2ps zmm22,zmm2,zmm18
  a3bb9f:	62 e1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm22
  a3bba6:	01 
  a3bba7:	62 32 6d 48 7f fb    	vpermt2ps zmm15,zmm2,zmm19
  a3bbad:	62 71 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm15
  a3bbb4:	02 
  a3bbb5:	62 b2 6d 48 7f f4    	vpermt2ps zmm6,zmm2,zmm20
  a3bbbb:	62 f1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm6
  a3bbc2:	03 
  a3bbc3:	62 d2 6d 48 7f c9    	vpermt2ps zmm1,zmm2,zmm9
  a3bbc9:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm1
  a3bbd0:	04 
  a3bbd1:	62 52 6d 48 7f de    	vpermt2ps zmm11,zmm2,zmm14
  a3bbd7:	62 71 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm11
  a3bbde:	05 
  a3bbdf:	62 32 6d 48 7f d5    	vpermt2ps zmm10,zmm2,zmm21
  a3bbe5:	62 71 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm10
  a3bbec:	06 
  a3bbed:	62 c2 6d 48 7f c5    	vpermt2ps zmm16,zmm2,zmm13
  a3bbf3:	62 e1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm16
  a3bbfa:	07 
  a3bbfb:	62 f2 6d 48 7f fc    	vpermt2ps zmm7,zmm2,zmm4
  a3bc01:	62 f1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm7
  a3bc08:	08 
  a3bc09:	62 f2 6d 48 7f e8    	vpermt2ps zmm5,zmm2,zmm0
  a3bc0f:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm5
  a3bc16:	09 
  a3bc17:	48 81 c2 80 02 00 00 	add    rdx,0x280
  a3bc1e:	48 39 d0             	cmp    rax,rdx
  a3bc21:	0f 85 79 f5 ff ff    	jne    a3b1a0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a3bc27:	48 81 c4 88 00 00 00 	add    rsp,0x88
  a3bc2e:	c5 f8 77             	vzeroupper
  a3bc31:	c3                   	ret
