
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a1f100 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a1f100:	55                   	push   rbp
  a1f101:	48 89 e5             	mov    rbp,rsp
  a1f104:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a1f108:	48 81 ec 00 03 00 00 	sub    rsp,0x300
  a1f10f:	c6 84 24 80 02 00 00 	mov    BYTE PTR [rsp+0x280],0x0
  a1f116:	00 
  a1f117:	48 8d 84 24 80 02 00 	lea    rax,[rsp+0x280]
  a1f11e:	00 
  a1f11f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a1f124:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a1f129:	62 f1 7c 48 10 27    	vmovups zmm4,ZMMWORD PTR [rdi]
  a1f12f:	c5 fc 10 47 40       	vmovups ymm0,YMMWORD PTR [rdi+0x40]
  a1f134:	62 e1 7c 48 28 1d 42 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff670c42]        # 8fd80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d230>
  a1f13b:	0c 67 ff 
  a1f13e:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a1f144:	62 f2 65 40 7f e8    	vpermt2ps zmm5,zmm19,zmm0
  a1f14a:	62 f1 7c 48 28 15 6c 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff670c6c]        # 8fdc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d270>
  a1f151:	0c 67 ff 
  a1f154:	62 f2 6d 48 7f e0    	vpermt2ps zmm4,zmm2,zmm0
  a1f15a:	62 f1 7c 48 10 b7 60 	vmovups zmm6,ZMMWORD PTR [rdi+0x60]
  a1f161:	00 00 00 
  a1f164:	c5 fc 10 87 a0 00 00 	vmovups ymm0,YMMWORD PTR [rdi+0xa0]
  a1f16b:	00 
  a1f16c:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a1f172:	62 72 65 40 7f c8    	vpermt2ps zmm9,zmm19,zmm0
  a1f178:	62 f2 6d 48 7f f0    	vpermt2ps zmm6,zmm2,zmm0
  a1f17e:	62 f1 7c 48 10 7f 03 	vmovups zmm7,ZMMWORD PTR [rdi+0xc0]
  a1f185:	c5 fc 10 87 00 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x100]
  a1f18c:	00 
  a1f18d:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a1f193:	62 72 65 40 7f d0    	vpermt2ps zmm10,zmm19,zmm0
  a1f199:	62 f2 6d 48 7f f8    	vpermt2ps zmm7,zmm2,zmm0
  a1f19f:	62 71 7c 48 10 87 20 	vmovups zmm8,ZMMWORD PTR [rdi+0x120]
  a1f1a6:	01 00 00 
  a1f1a9:	c5 fc 10 87 60 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x160]
  a1f1b0:	00 
  a1f1b1:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a1f1b7:	62 72 65 40 7f e8    	vpermt2ps zmm13,zmm19,zmm0
  a1f1bd:	62 72 6d 48 7f c0    	vpermt2ps zmm8,zmm2,zmm0
  a1f1c3:	62 f1 7c 48 10 47 06 	vmovups zmm0,ZMMWORD PTR [rdi+0x180]
  a1f1ca:	c5 fc 10 8f c0 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x1c0]
  a1f1d1:	00 
  a1f1d2:	62 e1 7c 48 28 e0    	vmovaps zmm20,zmm0
  a1f1d8:	62 e2 65 40 7f e1    	vpermt2ps zmm20,zmm19,zmm1
  a1f1de:	62 f2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm1
  a1f1e4:	62 f1 7c 48 10 8f e0 	vmovups zmm1,ZMMWORD PTR [rdi+0x1e0]
  a1f1eb:	01 00 00 
  a1f1ee:	c5 fc 10 9f 20 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x220]
  a1f1f5:	00 
  a1f1f6:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a1f1fc:	62 e2 65 40 7f f3    	vpermt2ps zmm22,zmm19,zmm3
  a1f202:	62 f2 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm3
  a1f208:	62 e1 7c 48 10 6f 09 	vmovups zmm21,ZMMWORD PTR [rdi+0x240]
  a1f20f:	c5 fc 10 9f 80 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x280]
  a1f216:	00 
  a1f217:	62 21 7c 48 28 c5    	vmovaps zmm24,zmm21
  a1f21d:	62 62 65 40 7f c3    	vpermt2ps zmm24,zmm19,zmm3
  a1f223:	62 e2 6d 48 7f eb    	vpermt2ps zmm21,zmm2,zmm3
  a1f229:	62 61 7c 48 10 8f a0 	vmovups zmm25,ZMMWORD PTR [rdi+0x2a0]
  a1f230:	02 00 00 
  a1f233:	c5 fc 10 9f e0 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x2e0]
  a1f23a:	00 
  a1f23b:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a1f241:	62 62 65 40 7f d3    	vpermt2ps zmm26,zmm19,zmm3
  a1f247:	62 62 6d 48 7f cb    	vpermt2ps zmm25,zmm2,zmm3
  a1f24d:	62 61 7c 48 10 5f 0c 	vmovups zmm27,ZMMWORD PTR [rdi+0x300]
  a1f254:	c5 fc 10 9f 40 03 00 	vmovups ymm3,YMMWORD PTR [rdi+0x340]
  a1f25b:	00 
  a1f25c:	62 e2 25 40 77 db    	vpermi2ps zmm19,zmm27,zmm3
  a1f262:	62 62 6d 48 7f db    	vpermt2ps zmm27,zmm2,zmm3
  a1f268:	62 a1 3c 48 58 d5    	vaddps zmm18,zmm8,zmm21
  a1f26e:	62 31 5c 48 58 fa    	vaddps zmm15,zmm4,zmm18
  a1f274:	62 01 7c 48 58 e1    	vaddps zmm28,zmm0,zmm25
  a1f27a:	62 91 4c 48 58 d4    	vaddps zmm2,zmm6,zmm28
  a1f280:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a1f287:	01 
  a1f288:	62 01 74 48 58 eb    	vaddps zmm29,zmm1,zmm27
  a1f28e:	62 11 44 48 58 dd    	vaddps zmm11,zmm7,zmm29
  a1f294:	62 51 6c 48 58 e3    	vaddps zmm12,zmm2,zmm11
  a1f29a:	62 d1 04 48 58 d4    	vaddps zmm2,zmm15,zmm12
  a1f2a0:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a1f2a7:	02 
  a1f2a8:	62 81 14 48 58 f8    	vaddps zmm23,zmm13,zmm24
  a1f2ae:	62 a1 54 48 58 c7    	vaddps zmm16,zmm5,zmm23
  a1f2b4:	62 01 5c 40 58 f2    	vaddps zmm30,zmm20,zmm26
  a1f2ba:	62 81 34 48 58 ce    	vaddps zmm17,zmm9,zmm30
  a1f2c0:	62 72 7d 48 18 35 96 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff656196]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a1f2c7:	61 65 ff 
  a1f2ca:	62 21 4c 40 58 fb    	vaddps zmm31,zmm22,zmm19
  a1f2d0:	62 b2 0d 48 bc e2    	vfnmadd231ps zmm4,zmm14,zmm18
  a1f2d6:	62 81 2c 48 58 d7    	vaddps zmm18,zmm10,zmm31
  a1f2dc:	62 01 14 48 5c c0    	vsubps zmm24,zmm13,zmm24
  a1f2e2:	62 31 74 40 58 ea    	vaddps zmm13,zmm17,zmm18
  a1f2e8:	62 92 0d 48 bc f4    	vfnmadd231ps zmm6,zmm14,zmm28
  a1f2ee:	62 d1 7c 40 58 d5    	vaddps zmm2,zmm16,zmm13
  a1f2f4:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a1f2fb:	05 
  a1f2fc:	62 01 5c 40 5c d2    	vsubps zmm26,zmm20,zmm26
  a1f302:	62 f2 7d 48 18 15 c8 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff655fc8]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a1f309:	5f 65 ff 
  a1f30c:	62 61 3c 40 59 c2    	vmulps zmm24,zmm24,zmm2
  a1f312:	62 12 0d 48 bc ce    	vfnmadd231ps zmm9,zmm14,zmm30
  a1f318:	62 81 5c 48 58 e0    	vaddps zmm20,zmm4,zmm24
  a1f31e:	62 61 2c 40 59 d2    	vmulps zmm26,zmm26,zmm2
  a1f324:	62 91 7c 48 5c c1    	vsubps zmm0,zmm0,zmm25
  a1f32a:	62 01 4c 48 58 ca    	vaddps zmm25,zmm6,zmm26
  a1f330:	62 61 7c 48 59 e2    	vmulps zmm28,zmm0,zmm2
  a1f336:	62 92 0d 48 bc fd    	vfnmadd231ps zmm7,zmm14,zmm29
  a1f33c:	62 91 34 48 5c c4    	vsubps zmm0,zmm9,zmm28
  a1f342:	62 a1 4c 40 5c f3    	vsubps zmm22,zmm22,zmm19
  a1f348:	62 62 7d 48 18 2d 16 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff656316]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a1f34f:	63 65 ff 
  a1f352:	62 12 0d 48 bc d7    	vfnmadd231ps zmm10,zmm14,zmm31
  a1f358:	62 81 7c 48 59 dd    	vmulps zmm19,zmm0,zmm29
  a1f35e:	62 91 74 48 5c cb    	vsubps zmm1,zmm1,zmm27
  a1f364:	62 62 7d 48 18 1d 6a 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff65616a]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a1f36b:	61 65 ff 
  a1f36e:	62 82 35 40 b8 db    	vfmadd231ps zmm19,zmm25,zmm27
  a1f374:	62 61 4c 40 59 f2    	vmulps zmm30,zmm22,zmm2
  a1f37a:	62 81 7c 48 59 f3    	vmulps zmm22,zmm0,zmm27
  a1f380:	62 91 44 48 58 c6    	vaddps zmm0,zmm7,zmm30
  a1f386:	62 f1 74 48 59 ca    	vmulps zmm1,zmm1,zmm2
  a1f38c:	62 82 35 40 bc f5    	vfnmadd231ps zmm22,zmm25,zmm29
  a1f392:	62 61 2c 48 5c c9    	vsubps zmm25,zmm10,zmm1
  a1f398:	62 62 7d 48 18 1d 76 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff655f76]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a1f39f:	5f 65 ff 
  a1f3a2:	62 b2 0d 48 bc ef    	vfnmadd231ps zmm5,zmm14,zmm23
  a1f3a8:	62 e2 7d 48 18 3d 2a 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff65612a]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a1f3af:	61 65 ff 
  a1f3b2:	62 a1 3c 48 5c ed    	vsubps zmm21,zmm8,zmm21
  a1f3b8:	62 01 34 40 59 eb    	vmulps zmm29,zmm25,zmm27
  a1f3be:	62 22 7d 48 b8 ef    	vfmadd231ps zmm29,zmm0,zmm23
  a1f3c4:	62 21 34 40 59 cf    	vmulps zmm25,zmm25,zmm23
  a1f3ca:	62 62 25 40 bc c8    	vfnmadd231ps zmm25,zmm27,zmm0
  a1f3d0:	62 91 64 40 58 c5    	vaddps zmm0,zmm19,zmm29
  a1f3d6:	62 01 5c 48 5c c0    	vsubps zmm24,zmm4,zmm24
  a1f3dc:	62 71 5c 40 58 c0    	vaddps zmm8,zmm20,zmm0
  a1f3e2:	62 e1 54 40 59 ea    	vmulps zmm21,zmm21,zmm2
  a1f3e8:	62 01 4c 48 5c d2    	vsubps zmm26,zmm6,zmm26
  a1f3ee:	62 21 54 48 5c fd    	vsubps zmm31,zmm5,zmm21
  a1f3f4:	62 51 1c 40 58 c9    	vaddps zmm9,zmm28,zmm9
  a1f3fa:	62 91 4c 40 58 f1    	vaddps zmm6,zmm22,zmm25
  a1f400:	62 91 44 48 5c fe    	vsubps zmm7,zmm7,zmm30
  a1f406:	62 f1 04 40 58 de    	vaddps zmm3,zmm31,zmm6
  a1f40c:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm3
  a1f413:	04 
  a1f414:	62 d1 74 48 58 ca    	vaddps zmm1,zmm1,zmm10
  a1f41a:	62 11 34 48 59 d3    	vmulps zmm10,zmm9,zmm27
  a1f420:	62 32 2d 40 b8 d7    	vfmadd231ps zmm10,zmm26,zmm23
  a1f426:	62 a1 34 48 59 ff    	vmulps zmm23,zmm9,zmm23
  a1f42c:	62 62 7d 48 18 25 ba 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff6560ba]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a1f433:	60 65 ff 
  a1f436:	62 82 2d 40 bc fb    	vfnmadd231ps zmm23,zmm26,zmm27
  a1f43c:	62 01 74 48 59 d4    	vmulps zmm26,zmm1,zmm28
  a1f442:	62 72 7d 48 18 0d ac 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff6561ac]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a1f449:	61 65 ff 
  a1f44c:	62 42 45 48 bc d1    	vfnmadd231ps zmm26,zmm7,zmm9
  a1f452:	62 e1 54 40 58 ed    	vaddps zmm21,zmm21,zmm5
  a1f458:	62 01 2c 48 58 da    	vaddps zmm27,zmm10,zmm26
  a1f45e:	62 41 74 48 59 f1    	vmulps zmm30,zmm1,zmm9
  a1f464:	62 11 3c 40 58 cb    	vaddps zmm9,zmm24,zmm27
  a1f46a:	62 02 45 48 b8 f4    	vfmadd231ps zmm30,zmm7,zmm28
  a1f470:	62 01 44 40 5c e6    	vsubps zmm28,zmm23,zmm30
  a1f476:	62 91 54 40 58 cc    	vaddps zmm1,zmm21,zmm28
  a1f47c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a1f483:	03 
  a1f484:	62 52 0d 48 ac e7    	vfnmadd213ps zmm12,zmm14,zmm15
  a1f48a:	62 b1 74 40 5c ca    	vsubps zmm1,zmm17,zmm18
  a1f490:	62 71 74 48 59 fa    	vmulps zmm15,zmm1,zmm2
  a1f496:	62 d1 1c 48 58 df    	vaddps zmm3,zmm12,zmm15
  a1f49c:	62 32 0d 48 ac e8    	vfnmadd213ps zmm13,zmm14,zmm16
  a1f4a2:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a1f4a9:	01 
  a1f4aa:	62 d1 74 48 5c cb    	vsubps zmm1,zmm1,zmm11
  a1f4b0:	62 71 74 48 59 da    	vmulps zmm11,zmm1,zmm2
  a1f4b6:	62 c1 14 48 5c c3    	vsubps zmm16,zmm13,zmm11
  a1f4bc:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  a1f4c2:	62 b2 0d 48 ac c4    	vfnmadd213ps zmm0,zmm14,zmm20
  a1f4c8:	62 91 4c 40 5c f9    	vsubps zmm7,zmm22,zmm25
  a1f4ce:	62 e1 44 48 59 d2    	vmulps zmm18,zmm7,zmm2
  a1f4d4:	62 b1 7c 48 58 e2    	vaddps zmm4,zmm0,zmm18
  a1f4da:	62 92 0d 48 ac f7    	vfnmadd213ps zmm6,zmm14,zmm31
  a1f4e0:	62 11 64 40 5c f5    	vsubps zmm14,zmm19,zmm29
  a1f4e6:	62 e1 0c 48 59 e2    	vmulps zmm20,zmm14,zmm2
  a1f4ec:	62 b1 4c 48 5c ec    	vsubps zmm5,zmm6,zmm20
  a1f4f2:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm5
  a1f4f9:	01 
  a1f4fa:	62 02 75 48 ac d8    	vfnmadd213ps zmm27,zmm1,zmm24
  a1f500:	62 11 44 40 58 f6    	vaddps zmm14,zmm23,zmm30
  a1f506:	62 e1 0c 48 59 f2    	vmulps zmm22,zmm14,zmm2
  a1f50c:	62 31 24 40 58 f6    	vaddps zmm14,zmm27,zmm22
  a1f512:	62 22 75 48 ac e5    	vfnmadd213ps zmm28,zmm1,zmm21
  a1f518:	62 11 2c 48 5c d2    	vsubps zmm10,zmm10,zmm26
  a1f51e:	62 71 2c 48 59 d2    	vmulps zmm10,zmm10,zmm2
  a1f524:	62 d1 1c 40 5c ca    	vsubps zmm1,zmm28,zmm10
  a1f52a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a1f531:	06 
  a1f532:	62 c1 1c 48 5c cf    	vsubps zmm17,zmm12,zmm15
  a1f538:	62 d1 24 48 58 d5    	vaddps zmm2,zmm11,zmm13
  a1f53e:	62 a1 7c 48 5c da    	vsubps zmm19,zmm0,zmm18
  a1f544:	62 b1 4c 48 58 c4    	vaddps zmm0,zmm6,zmm20
  a1f54a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a1f551:	07 
  a1f552:	62 b1 24 40 5c c6    	vsubps zmm0,zmm27,zmm22
  a1f558:	62 41 1c 40 58 f2    	vaddps zmm30,zmm28,zmm10
  a1f55e:	62 71 7c 48 28 3d 18 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6a7a18]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a1f565:	7a 6a ff 
  a1f568:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x80]
  a1f56f:	02 
  a1f570:	62 c1 7c 48 28 d5    	vmovaps zmm18,zmm13
  a1f576:	62 e2 05 48 7f d0    	vpermt2ps zmm18,zmm15,zmm0
  a1f57c:	62 e1 7c 48 28 3d 3a 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6a7a3a]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a1f583:	7a 6a ff 
  a1f586:	62 72 45 40 7f e8    	vpermt2ps zmm13,zmm23,zmm0
  a1f58c:	62 01 3c 00 57 c0    	vxorps xmm24,xmm24,xmm24
  a1f592:	62 c1 7c 48 28 e0    	vmovaps zmm20,zmm8
  a1f598:	62 82 05 48 7f e0    	vpermt2ps zmm20,zmm15,zmm24
  a1f59e:	62 12 45 40 7f c0    	vpermt2ps zmm8,zmm23,zmm24
  a1f5a4:	62 c1 7c 48 28 e9    	vmovaps zmm21,zmm9
  a1f5aa:	62 82 05 48 7f e8    	vpermt2ps zmm21,zmm15,zmm24
  a1f5b0:	62 12 45 40 7f c8    	vpermt2ps zmm9,zmm23,zmm24
  a1f5b6:	62 e1 7c 48 28 f3    	vmovaps zmm22,zmm3
  a1f5bc:	62 82 05 48 7f f0    	vpermt2ps zmm22,zmm15,zmm24
  a1f5c2:	62 92 45 40 7f d8    	vpermt2ps zmm3,zmm23,zmm24
  a1f5c8:	62 61 7c 48 28 cc    	vmovaps zmm25,zmm4
  a1f5ce:	62 02 05 48 7f c8    	vpermt2ps zmm25,zmm15,zmm24
  a1f5d4:	62 92 45 40 7f e0    	vpermt2ps zmm4,zmm23,zmm24
  a1f5da:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a1f5e1:	02 
  a1f5e2:	62 41 7c 48 28 d6    	vmovaps zmm26,zmm14
  a1f5e8:	62 02 05 48 7f d0    	vpermt2ps zmm26,zmm15,zmm24
  a1f5ee:	62 12 45 40 7f f0    	vpermt2ps zmm14,zmm23,zmm24
  a1f5f4:	62 21 7c 48 28 d9    	vmovaps zmm27,zmm17
  a1f5fa:	62 02 05 48 7f d8    	vpermt2ps zmm27,zmm15,zmm24
  a1f600:	62 82 45 40 7f c8    	vpermt2ps zmm17,zmm23,zmm24
  a1f606:	62 21 7c 48 28 e3    	vmovaps zmm28,zmm19
  a1f60c:	62 02 05 48 7f e0    	vpermt2ps zmm28,zmm15,zmm24
  a1f612:	62 82 45 40 7f d8    	vpermt2ps zmm19,zmm23,zmm24
  a1f618:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x140]
  a1f61f:	05 
  a1f620:	62 61 7c 48 28 ef    	vmovaps zmm29,zmm7
  a1f626:	62 02 05 48 7f ee    	vpermt2ps zmm29,zmm15,zmm30
  a1f62c:	62 92 45 40 7f fe    	vpermt2ps zmm7,zmm23,zmm30
  a1f632:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x100]
  a1f639:	04 
  a1f63a:	62 61 7c 48 28 f5    	vmovaps zmm30,zmm5
  a1f640:	62 02 05 48 7f f0    	vpermt2ps zmm30,zmm15,zmm24
  a1f646:	62 92 45 40 7f e8    	vpermt2ps zmm5,zmm23,zmm24
  a1f64c:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0xc0]
  a1f653:	03 
  a1f654:	62 61 7c 48 28 fc    	vmovaps zmm31,zmm4
  a1f65a:	62 02 05 48 7f f8    	vpermt2ps zmm31,zmm15,zmm24
  a1f660:	62 92 45 40 7f e0    	vpermt2ps zmm4,zmm23,zmm24
  a1f666:	62 b1 7c 48 28 f0    	vmovaps zmm6,zmm16
  a1f66c:	62 92 05 48 7f f0    	vpermt2ps zmm6,zmm15,zmm24
  a1f672:	62 82 45 40 7f c0    	vpermt2ps zmm16,zmm23,zmm24
  a1f678:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a1f67f:	01 
  a1f680:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a1f686:	62 12 05 48 7f d0    	vpermt2ps zmm10,zmm15,zmm24
  a1f68c:	62 92 45 40 7f c0    	vpermt2ps zmm0,zmm23,zmm24
  a1f692:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a1f699:	01 
  a1f69a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a1f6a1:	06 
  a1f6a2:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a1f6a8:	62 12 05 48 7f d8    	vpermt2ps zmm11,zmm15,zmm24
  a1f6ae:	62 92 45 40 7f c0    	vpermt2ps zmm0,zmm23,zmm24
  a1f6b4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a1f6bb:	06 
  a1f6bc:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a1f6c2:	62 12 05 48 7f e0    	vpermt2ps zmm12,zmm15,zmm24
  a1f6c8:	62 92 45 40 7f d0    	vpermt2ps zmm2,zmm23,zmm24
  a1f6ce:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a1f6d5:	03 
  a1f6d6:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a1f6dd:	07 
  a1f6de:	62 12 7d 48 77 f8    	vpermi2ps zmm15,zmm0,zmm24
  a1f6e4:	62 92 45 40 7f c0    	vpermt2ps zmm0,zmm23,zmm24
  a1f6ea:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a1f6f1:	07 
  a1f6f2:	62 f1 7c 48 28 0d 04 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6a7804]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1f6f9:	78 6a ff 
  a1f6fc:	62 a1 7c 48 28 fa    	vmovaps zmm23,zmm18
  a1f702:	62 82 75 48 7f f9    	vpermt2ps zmm23,zmm1,zmm25
  a1f708:	62 f1 7c 48 28 15 2e 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6a782e]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a1f70f:	78 6a ff 
  a1f712:	62 82 6d 48 7f d1    	vpermt2ps zmm18,zmm2,zmm25
  a1f718:	62 21 7c 48 28 c4    	vmovaps zmm24,zmm20
  a1f71e:	62 02 75 48 7f c2    	vpermt2ps zmm24,zmm1,zmm26
  a1f724:	62 82 6d 48 7f e2    	vpermt2ps zmm20,zmm2,zmm26
  a1f72a:	62 21 7c 48 28 cd    	vmovaps zmm25,zmm21
  a1f730:	62 02 75 48 7f cb    	vpermt2ps zmm25,zmm1,zmm27
  a1f736:	62 82 6d 48 7f eb    	vpermt2ps zmm21,zmm2,zmm27
  a1f73c:	62 21 7c 48 28 d6    	vmovaps zmm26,zmm22
  a1f742:	62 02 75 48 7f d4    	vpermt2ps zmm26,zmm1,zmm28
  a1f748:	62 82 6d 48 7f f4    	vpermt2ps zmm22,zmm2,zmm28
  a1f74e:	62 72 75 48 7f 6c 24 	vpermt2ps zmm13,zmm1,ZMMWORD PTR [rsp+0x80]
  a1f755:	02 
  a1f756:	62 52 75 48 7f c6    	vpermt2ps zmm8,zmm1,zmm14
  a1f75c:	62 32 75 48 7f c9    	vpermt2ps zmm9,zmm1,zmm17
  a1f762:	62 b2 75 48 7f db    	vpermt2ps zmm3,zmm1,zmm19
  a1f768:	62 91 c5 40 14 c1    	vunpcklpd zmm0,zmm23,zmm25
  a1f76e:	62 81 c5 40 15 d9    	vunpckhpd zmm19,zmm23,zmm25
  a1f774:	62 81 bd 40 14 fa    	vunpcklpd zmm23,zmm24,zmm26
  a1f77a:	62 01 bd 40 15 ca    	vunpckhpd zmm25,zmm24,zmm26
  a1f780:	62 a1 ed 40 14 cd    	vunpcklpd zmm17,zmm18,zmm21
  a1f786:	62 31 ed 40 15 f5    	vunpckhpd zmm14,zmm18,zmm21
  a1f78c:	62 21 dd 40 14 d6    	vunpcklpd zmm26,zmm20,zmm22
  a1f792:	62 a1 dd 40 15 f6    	vunpckhpd zmm22,zmm20,zmm22
  a1f798:	62 c1 95 48 14 e1    	vunpcklpd zmm20,zmm13,zmm9
  a1f79e:	62 51 95 48 15 c9    	vunpckhpd zmm9,zmm13,zmm9
  a1f7a4:	62 61 bd 48 14 db    	vunpcklpd zmm27,zmm8,zmm3
  a1f7aa:	62 61 bd 48 15 e3    	vunpckhpd zmm28,zmm8,zmm3
  a1f7b0:	62 e1 7c 48 28 15 46 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6a7646]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1f7b7:	76 6a ff 
  a1f7ba:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a1f7c0:	62 b2 6d 40 7f df    	vpermt2ps zmm3,zmm18,zmm23
  a1f7c6:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm3
  a1f7cd:	05 
  a1f7ce:	62 61 7c 48 28 05 68 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff6a7668]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1f7d5:	76 6a ff 
  a1f7d8:	62 b2 3d 40 7f c7    	vpermt2ps zmm0,zmm24,zmm23
  a1f7de:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a1f7e5:	02 
  a1f7e6:	62 31 7c 48 28 c3    	vmovaps zmm8,zmm19
  a1f7ec:	62 12 6d 40 7f c1    	vpermt2ps zmm8,zmm18,zmm25
  a1f7f2:	62 82 3d 40 7f d9    	vpermt2ps zmm19,zmm24,zmm25
  a1f7f8:	62 a1 7c 48 28 e9    	vmovaps zmm21,zmm17
  a1f7fe:	62 82 6d 40 7f ea    	vpermt2ps zmm21,zmm18,zmm26
  a1f804:	62 82 3d 40 7f ca    	vpermt2ps zmm17,zmm24,zmm26
  a1f80a:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm17
  a1f811:	04 
  a1f812:	62 c1 7c 48 28 fe    	vmovaps zmm23,zmm14
  a1f818:	62 a2 6d 40 7f fe    	vpermt2ps zmm23,zmm18,zmm22
  a1f81e:	62 32 3d 40 7f f6    	vpermt2ps zmm14,zmm24,zmm22
  a1f824:	62 a1 7c 48 28 cc    	vmovaps zmm17,zmm20
  a1f82a:	62 82 6d 40 7f cb    	vpermt2ps zmm17,zmm18,zmm27
  a1f830:	62 82 3d 40 7f e3    	vpermt2ps zmm20,zmm24,zmm27
  a1f836:	62 c1 7c 48 28 f1    	vmovaps zmm22,zmm9
  a1f83c:	62 82 6d 40 7f f4    	vpermt2ps zmm22,zmm18,zmm28
  a1f842:	62 12 3d 40 7f cc    	vpermt2ps zmm9,zmm24,zmm28
  a1f848:	62 01 7c 48 28 cd    	vmovaps zmm25,zmm29
  a1f84e:	62 42 75 48 7f ca    	vpermt2ps zmm25,zmm1,zmm10
  a1f854:	62 42 6d 48 7f ea    	vpermt2ps zmm29,zmm2,zmm10
  a1f85a:	62 11 7c 48 28 d6    	vmovaps zmm10,zmm30
  a1f860:	62 52 75 48 7f d3    	vpermt2ps zmm10,zmm1,zmm11
  a1f866:	62 42 6d 48 7f f3    	vpermt2ps zmm30,zmm2,zmm11
  a1f86c:	62 01 7c 48 28 d7    	vmovaps zmm26,zmm31
  a1f872:	62 42 75 48 7f d4    	vpermt2ps zmm26,zmm1,zmm12
  a1f878:	62 42 6d 48 7f fc    	vpermt2ps zmm31,zmm2,zmm12
  a1f87e:	62 71 7c 48 28 e6    	vmovaps zmm12,zmm6
  a1f884:	62 d2 6d 48 7f f7    	vpermt2ps zmm6,zmm2,zmm15
  a1f88a:	62 52 75 48 7f e7    	vpermt2ps zmm12,zmm1,zmm15
  a1f890:	62 f2 75 48 7f 7c 24 	vpermt2ps zmm7,zmm1,ZMMWORD PTR [rsp+0x40]
  a1f897:	01 
  a1f898:	62 f2 75 48 7f 6c 24 	vpermt2ps zmm5,zmm1,ZMMWORD PTR [rsp+0x180]
  a1f89f:	06 
  a1f8a0:	62 f2 75 48 7f 64 24 	vpermt2ps zmm4,zmm1,ZMMWORD PTR [rsp+0xc0]
  a1f8a7:	03 
  a1f8a8:	62 e2 75 48 7f 44 24 	vpermt2ps zmm16,zmm1,ZMMWORD PTR [rsp+0x1c0]
  a1f8af:	07 
  a1f8b0:	62 11 b5 40 14 da    	vunpcklpd zmm11,zmm25,zmm26
  a1f8b6:	62 01 b5 40 15 da    	vunpckhpd zmm27,zmm25,zmm26
  a1f8bc:	62 d1 ad 48 14 cc    	vunpcklpd zmm1,zmm10,zmm12
  a1f8c2:	62 51 ad 48 15 ec    	vunpckhpd zmm13,zmm10,zmm12
  a1f8c8:	62 11 95 40 14 d7    	vunpcklpd zmm10,zmm29,zmm31
  a1f8ce:	62 11 95 40 15 e7    	vunpckhpd zmm12,zmm29,zmm31
  a1f8d4:	62 71 8d 40 14 fe    	vunpcklpd zmm15,zmm30,zmm6
  a1f8da:	62 f1 8d 40 15 f6    	vunpckhpd zmm6,zmm30,zmm6
  a1f8e0:	62 61 c5 48 14 e4    	vunpcklpd zmm28,zmm7,zmm4
  a1f8e6:	62 f1 c5 48 15 fc    	vunpckhpd zmm7,zmm7,zmm4
  a1f8ec:	62 21 d5 48 14 c8    	vunpcklpd zmm25,zmm5,zmm16
  a1f8f2:	62 b1 d5 48 15 d8    	vunpckhpd zmm3,zmm5,zmm16
  a1f8f8:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a1f8fe:	62 f2 6d 40 7f c1    	vpermt2ps zmm0,zmm18,zmm1
  a1f904:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a1f90b:	01 
  a1f90c:	62 72 3d 40 7f d9    	vpermt2ps zmm11,zmm24,zmm1
  a1f912:	62 91 7c 48 28 e3    	vmovaps zmm4,zmm27
  a1f918:	62 d2 6d 40 7f e5    	vpermt2ps zmm4,zmm18,zmm13
  a1f91e:	62 42 3d 40 7f dd    	vpermt2ps zmm27,zmm24,zmm13
  a1f924:	62 41 7c 48 28 ea    	vmovaps zmm29,zmm10
  a1f92a:	62 42 6d 40 7f ef    	vpermt2ps zmm29,zmm18,zmm15
  a1f930:	62 52 3d 40 7f d7    	vpermt2ps zmm10,zmm24,zmm15
  a1f936:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a1f93c:	62 f2 6d 40 7f ce    	vpermt2ps zmm1,zmm18,zmm6
  a1f942:	62 72 3d 40 7f e6    	vpermt2ps zmm12,zmm24,zmm6
  a1f948:	62 11 7c 48 28 ec    	vmovaps zmm13,zmm28
  a1f94e:	62 12 6d 40 7f e9    	vpermt2ps zmm13,zmm18,zmm25
  a1f954:	62 02 3d 40 7f e1    	vpermt2ps zmm28,zmm24,zmm25
  a1f95a:	62 e2 45 48 77 d3    	vpermi2ps zmm18,zmm7,zmm3
  a1f960:	62 f2 3d 40 7f fb    	vpermt2ps zmm7,zmm24,zmm3
  a1f966:	62 61 7c 48 10 52 02 	vmovups zmm26,ZMMWORD PTR [rdx+0x80]
  a1f96d:	62 61 7c 48 10 4a 03 	vmovups zmm25,ZMMWORD PTR [rdx+0xc0]
  a1f974:	62 71 7c 48 10 7a 04 	vmovups zmm15,ZMMWORD PTR [rdx+0x100]
  a1f97b:	62 f1 7c 48 10 5a 0c 	vmovups zmm3,ZMMWORD PTR [rdx+0x300]
  a1f982:	62 61 7c 48 10 72 0d 	vmovups zmm30,ZMMWORD PTR [rdx+0x340]
  a1f989:	62 f1 44 40 59 f3    	vmulps zmm6,zmm23,zmm3
  a1f98f:	62 92 75 48 bc f6    	vfnmadd231ps zmm6,zmm1,zmm30
  a1f995:	62 61 74 48 59 c3    	vmulps zmm24,zmm1,zmm3
  a1f99b:	62 f1 7c 48 10 4a 06 	vmovups zmm1,ZMMWORD PTR [rdx+0x180]
  a1f9a2:	62 22 0d 40 b8 c7    	vfmadd231ps zmm24,zmm30,zmm23
  a1f9a8:	62 f1 7c 48 10 5a 07 	vmovups zmm3,ZMMWORD PTR [rdx+0x1c0]
  a1f9af:	62 e1 64 40 59 f9    	vmulps zmm23,zmm19,zmm1
  a1f9b5:	62 e2 25 40 bc fb    	vfnmadd231ps zmm23,zmm27,zmm3
  a1f9bb:	62 f1 24 40 59 c9    	vmulps zmm1,zmm27,zmm1
  a1f9c1:	62 61 7c 48 10 5a 12 	vmovups zmm27,ZMMWORD PTR [rdx+0x480]
  a1f9c8:	62 b2 65 48 b8 cb    	vfmadd231ps zmm1,zmm3,zmm19
  a1f9ce:	62 f1 7c 48 10 5a 13 	vmovups zmm3,ZMMWORD PTR [rdx+0x4c0]
  a1f9d5:	62 81 5c 40 59 db    	vmulps zmm19,zmm20,zmm27
  a1f9db:	62 e2 1d 40 bc db    	vfnmadd231ps zmm19,zmm28,zmm3
  a1f9e1:	62 01 1c 40 59 db    	vmulps zmm27,zmm28,zmm27
  a1f9e7:	62 61 7c 48 10 72 08 	vmovups zmm30,ZMMWORD PTR [rdx+0x200]
  a1f9ee:	62 22 65 48 b8 dc    	vfmadd231ps zmm27,zmm3,zmm20
  a1f9f4:	62 f1 7c 48 10 5a 09 	vmovups zmm3,ZMMWORD PTR [rdx+0x240]
  a1f9fb:	62 01 54 40 59 e6    	vmulps zmm28,zmm21,zmm30
  a1fa01:	62 62 15 40 bc e3    	vfnmadd231ps zmm28,zmm29,zmm3
  a1fa07:	62 81 14 40 59 e6    	vmulps zmm20,zmm29,zmm30
  a1fa0d:	62 61 7c 48 10 6a 14 	vmovups zmm29,ZMMWORD PTR [rdx+0x500]
  a1fa14:	62 a2 65 48 b8 e5    	vfmadd231ps zmm20,zmm3,zmm21
  a1fa1a:	62 f1 7c 48 10 5a 15 	vmovups zmm3,ZMMWORD PTR [rdx+0x540]
  a1fa21:	62 01 4c 40 59 f5    	vmulps zmm30,zmm22,zmm29
  a1fa27:	62 62 6d 40 bc f3    	vfnmadd231ps zmm30,zmm18,zmm3
  a1fa2d:	62 81 6c 40 59 d5    	vmulps zmm18,zmm18,zmm29
  a1fa33:	62 61 7c 48 10 6a 0e 	vmovups zmm29,ZMMWORD PTR [rdx+0x380]
  a1fa3a:	62 a2 65 48 b8 d6    	vfmadd231ps zmm18,zmm3,zmm22
  a1fa40:	62 f1 7c 48 10 5a 0f 	vmovups zmm3,ZMMWORD PTR [rdx+0x3c0]
  a1fa47:	62 81 0c 48 59 ed    	vmulps zmm21,zmm14,zmm29
  a1fa4d:	62 e2 1d 48 bc eb    	vfnmadd231ps zmm21,zmm12,zmm3
  a1fa53:	62 11 1c 48 59 e5    	vmulps zmm12,zmm12,zmm29
  a1fa59:	62 e1 7c 48 10 72 05 	vmovups zmm22,ZMMWORD PTR [rdx+0x140]
  a1fa60:	62 52 65 48 b8 e6    	vfmadd231ps zmm12,zmm3,zmm14
  a1fa66:	62 f1 7c 48 10 5a 0a 	vmovups zmm3,ZMMWORD PTR [rdx+0x280]
  a1fa6d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a1fa74:	02 
  a1fa75:	62 01 7c 48 59 ea    	vmulps zmm29,zmm0,zmm26
  a1fa7b:	62 02 25 48 bc e9    	vfnmadd231ps zmm29,zmm11,zmm25
  a1fa81:	62 81 24 48 59 c2    	vmulps zmm16,zmm11,zmm26
  a1fa87:	62 71 7c 48 10 5a 10 	vmovups zmm11,ZMMWORD PTR [rdx+0x400]
  a1fa8e:	62 e2 35 40 b8 c0    	vfmadd231ps zmm16,zmm25,zmm0
  a1fa94:	62 71 7c 48 10 72 11 	vmovups zmm14,ZMMWORD PTR [rdx+0x440]
  a1fa9b:	62 41 74 40 59 cb    	vmulps zmm25,zmm17,zmm11
  a1faa1:	62 42 15 48 bc ce    	vfnmadd231ps zmm25,zmm13,zmm14
  a1faa7:	62 51 14 48 59 eb    	vmulps zmm13,zmm13,zmm11
  a1faad:	62 61 7c 48 10 52 0b 	vmovups zmm26,ZMMWORD PTR [rdx+0x2c0]
  a1fab4:	62 32 0d 48 b8 e9    	vfmadd231ps zmm13,zmm14,zmm17
  a1faba:	62 71 7c 48 10 72 16 	vmovups zmm14,ZMMWORD PTR [rdx+0x580]
  a1fac1:	62 c1 3c 48 59 cf    	vmulps zmm17,zmm8,zmm15
  a1fac7:	62 a2 5d 48 bc ce    	vfnmadd231ps zmm17,zmm4,zmm22
  a1facd:	62 41 5c 48 59 ff    	vmulps zmm31,zmm4,zmm15
  a1fad3:	62 f1 7c 48 10 62 17 	vmovups zmm4,ZMMWORD PTR [rdx+0x5c0]
  a1fada:	62 42 4d 40 b8 f8    	vfmadd231ps zmm31,zmm22,zmm8
  a1fae0:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x140]
  a1fae7:	05 
  a1fae8:	62 71 6c 48 58 de    	vaddps zmm11,zmm2,zmm6
  a1faee:	62 51 34 48 59 c6    	vmulps zmm8,zmm9,zmm14
  a1faf4:	62 72 45 48 bc c4    	vfnmadd231ps zmm8,zmm7,zmm4
  a1fafa:	62 d1 44 48 59 ee    	vmulps zmm5,zmm7,zmm14
  a1fb00:	62 a1 44 40 58 f3    	vaddps zmm22,zmm23,zmm19
  a1fb06:	62 d2 5d 48 b8 e9    	vfmadd231ps zmm5,zmm4,zmm9
  a1fb0c:	62 b1 24 48 58 c6    	vaddps zmm0,zmm11,zmm22
  a1fb12:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a1fb19:	07 
  a1fb1a:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x100]
  a1fb21:	04 
  a1fb22:	62 71 5c 48 59 cb    	vmulps zmm9,zmm4,zmm3
  a1fb28:	62 12 2d 48 bc ca    	vfnmadd231ps zmm9,zmm10,zmm26
  a1fb2e:	62 f1 2c 48 59 db    	vmulps zmm3,zmm10,zmm3
  a1fb34:	62 91 1c 40 58 c6    	vaddps zmm0,zmm28,zmm30
  a1fb3a:	62 f2 2d 40 b8 dc    	vfmadd231ps zmm3,zmm26,zmm4
  a1fb40:	62 91 54 40 58 fd    	vaddps zmm7,zmm21,zmm29
  a1fb46:	62 21 34 40 58 d1    	vaddps zmm26,zmm25,zmm17
  a1fb4c:	62 11 1c 40 5c f6    	vsubps zmm14,zmm28,zmm30
  a1fb52:	62 21 1c 48 58 e0    	vaddps zmm28,zmm12,zmm16
  a1fb58:	62 31 1c 48 5c f8    	vsubps zmm15,zmm12,zmm16
  a1fb5e:	62 51 3c 48 58 e1    	vaddps zmm12,zmm8,zmm9
  a1fb64:	62 a1 34 40 5c c1    	vsubps zmm16,zmm25,zmm17
  a1fb6a:	62 e1 54 48 58 cb    	vaddps zmm17,zmm5,zmm3
  a1fb70:	62 61 54 48 5c cb    	vsubps zmm25,zmm5,zmm3
  a1fb76:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x40]
  a1fb7d:	01 
  a1fb7e:	62 61 3c 40 58 f4    	vaddps zmm30,zmm24,zmm4
  a1fb84:	62 f1 6c 48 5c f6    	vsubps zmm6,zmm2,zmm6
  a1fb8a:	62 91 74 48 58 db    	vaddps zmm3,zmm1,zmm27
  a1fb90:	62 91 74 48 5c cb    	vsubps zmm1,zmm1,zmm27
  a1fb96:	62 21 5c 40 58 da    	vaddps zmm27,zmm20,zmm18
  a1fb9c:	62 b1 5c 40 5c ea    	vsubps zmm5,zmm20,zmm18
  a1fba2:	62 81 14 48 58 d7    	vaddps zmm18,zmm13,zmm31
  a1fba8:	62 21 14 40 5c ed    	vsubps zmm29,zmm29,zmm21
  a1fbae:	62 11 54 48 58 d5    	vaddps zmm10,zmm5,zmm29
  a1fbb4:	62 11 14 48 5c ef    	vsubps zmm13,zmm13,zmm31
  a1fbba:	62 51 34 48 5c c8    	vsubps zmm9,zmm9,zmm8
  a1fbc0:	62 51 14 48 58 c1    	vaddps zmm8,zmm13,zmm9
  a1fbc6:	62 d1 2c 48 5c d0    	vsubps zmm2,zmm10,zmm8
  a1fbcc:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a1fbd3:	05 
  a1fbd4:	62 d1 2c 48 58 d0    	vaddps zmm2,zmm10,zmm8
  a1fbda:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a1fbe1:	04 
  a1fbe2:	62 51 0c 48 58 c7    	vaddps zmm8,zmm14,zmm15
  a1fbe8:	62 81 5c 48 5c e0    	vsubps zmm20,zmm4,zmm24
  a1fbee:	62 11 7c 40 58 d1    	vaddps zmm10,zmm16,zmm25
  a1fbf4:	62 a1 64 40 5c df    	vsubps zmm19,zmm19,zmm23
  a1fbfa:	62 d1 3c 48 58 d2    	vaddps zmm2,zmm8,zmm10
  a1fc00:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a1fc07:	03 
  a1fc08:	62 d1 3c 48 5c d2    	vsubps zmm2,zmm8,zmm10
  a1fc0e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a1fc15:	02 
  a1fc16:	62 71 7c 48 58 d7    	vaddps zmm10,zmm0,zmm7
  a1fc1c:	62 f1 7c 48 5c ff    	vsubps zmm7,zmm0,zmm7
  a1fc22:	62 51 2c 40 58 c4    	vaddps zmm8,zmm26,zmm12
  a1fc28:	62 51 2c 40 5c e4    	vsubps zmm12,zmm26,zmm12
  a1fc2e:	62 91 64 48 58 c6    	vaddps zmm0,zmm3,zmm30
  a1fc34:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a1fc3b:	06 
  a1fc3c:	62 21 24 48 5c c6    	vsubps zmm24,zmm11,zmm22
  a1fc42:	62 11 24 40 58 dc    	vaddps zmm11,zmm27,zmm28
  a1fc48:	62 01 24 40 5c d4    	vsubps zmm26,zmm27,zmm28
  a1fc4e:	62 b1 6c 40 58 c1    	vaddps zmm0,zmm18,zmm17
  a1fc54:	62 a1 6c 40 5c c9    	vsubps zmm17,zmm18,zmm17
  a1fc5a:	62 b1 2c 40 5c d1    	vsubps zmm2,zmm26,zmm17
  a1fc60:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm2
  a1fc67:	09 
  a1fc68:	62 a1 2c 40 58 f9    	vaddps zmm23,zmm26,zmm17
  a1fc6e:	62 61 4c 48 58 f9    	vaddps zmm31,zmm6,zmm1
  a1fc74:	62 e1 0c 40 5c f3    	vsubps zmm22,zmm30,zmm3
  a1fc7a:	62 41 44 48 58 f4    	vaddps zmm30,zmm7,zmm12
  a1fc80:	62 d1 44 48 5c d4    	vsubps zmm2,zmm7,zmm12
  a1fc86:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a1fc8d:	08 
  a1fc8e:	62 e2 7d 48 18 2d c8 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff6557c8]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a1fc95:	57 65 ff 
  a1fc98:	62 b1 7c 48 28 d5    	vmovaps zmm2,zmm21
  a1fc9e:	62 f1 4c 48 5c f1    	vsubps zmm6,zmm6,zmm1
  a1fca4:	62 21 64 40 58 dc    	vaddps zmm27,zmm19,zmm20
  a1fcaa:	62 51 0c 48 5c f7    	vsubps zmm14,zmm14,zmm15
  a1fcb0:	62 31 7c 48 28 fd    	vmovaps zmm15,zmm21
  a1fcb6:	62 01 7c 40 5c c9    	vsubps zmm25,zmm16,zmm25
  a1fcbc:	62 a1 7c 48 28 c5    	vmovaps zmm16,zmm21
  a1fcc2:	62 a1 5c 40 5c cb    	vsubps zmm17,zmm20,zmm19
  a1fcc8:	62 a1 7c 48 28 d5    	vmovaps zmm18,zmm21
  a1fcce:	62 91 54 48 5c ed    	vsubps zmm5,zmm5,zmm29
  a1fcd4:	62 81 0c 48 58 d9    	vaddps zmm19,zmm14,zmm25
  a1fcda:	62 c1 14 48 5c e1    	vsubps zmm20,zmm13,zmm9
  a1fce0:	62 b1 4c 48 58 cb    	vaddps zmm1,zmm6,zmm19
  a1fce6:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a1fced:	01 
  a1fcee:	62 e2 55 40 ac de    	vfnmadd213ps zmm19,zmm21,zmm6
  a1fcf4:	62 b1 54 48 58 f4    	vaddps zmm6,zmm5,zmm20
  a1fcfa:	62 b1 7c 48 28 cd    	vmovaps zmm1,zmm21
  a1fd00:	62 31 7c 48 28 cd    	vmovaps zmm9,zmm21
  a1fd06:	62 a2 4d 48 ac e9    	vfnmadd213ps zmm21,zmm6,zmm17
  a1fd0c:	62 e1 74 40 58 ce    	vaddps zmm17,zmm17,zmm6
  a1fd12:	62 71 24 48 58 e0    	vaddps zmm12,zmm11,zmm0
  a1fd18:	62 f1 24 48 5c e0    	vsubps zmm4,zmm11,zmm0
  a1fd1e:	62 51 2c 48 58 d8    	vaddps zmm11,zmm10,zmm8
  a1fd24:	62 d1 2c 48 5c f0    	vsubps zmm6,zmm10,zmm8
  a1fd2a:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0xc0]
  a1fd31:	03 
  a1fd32:	62 92 2d 48 ac d7    	vfnmadd213ps zmm2,zmm10,zmm31
  a1fd38:	62 f2 7d 48 18 05 92 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff655592]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a1fd3f:	55 65 ff 
  a1fd42:	62 71 7c 48 59 44 24 	vmulps zmm8,zmm0,ZMMWORD PTR [rsp+0x140]
  a1fd49:	05 
  a1fd4a:	62 41 6c 48 58 d0    	vaddps zmm26,zmm2,zmm8
  a1fd50:	62 41 6c 48 5c e0    	vsubps zmm28,zmm2,zmm8
  a1fd56:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x100]
  a1fd5d:	04 
  a1fd5e:	62 12 45 48 ac fb    	vfnmadd213ps zmm15,zmm7,zmm27
  a1fd64:	62 f1 7c 48 59 54 24 	vmulps zmm2,zmm0,ZMMWORD PTR [rsp+0x80]
  a1fd6b:	02 
  a1fd6c:	62 f1 04 48 5c da    	vsubps zmm3,zmm15,zmm2
  a1fd72:	62 71 04 48 58 fa    	vaddps zmm15,zmm15,zmm2
  a1fd78:	62 82 0d 40 ac c0    	vfnmadd213ps zmm16,zmm30,zmm24
  a1fd7e:	62 01 3c 40 58 ee    	vaddps zmm29,zmm24,zmm30
  a1fd84:	62 a2 45 40 ac d6    	vfnmadd213ps zmm18,zmm23,zmm22
  a1fd8a:	62 31 4c 40 58 ef    	vaddps zmm13,zmm22,zmm23
  a1fd90:	62 b1 54 48 5c ec    	vsubps zmm5,zmm5,zmm20
  a1fd96:	62 11 0c 48 5c c1    	vsubps zmm8,zmm14,zmm25
  a1fd9c:	62 e1 7c 48 59 74 24 	vmulps zmm22,zmm0,ZMMWORD PTR [rsp+0x240]
  a1fda3:	09 
  a1fda4:	62 e1 7c 48 59 7c 24 	vmulps zmm23,zmm0,ZMMWORD PTR [rsp+0x200]
  a1fdab:	08 
  a1fdac:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x1c0]
  a1fdb3:	07 
  a1fdb4:	62 92 25 48 ac c8    	vfnmadd213ps zmm1,zmm11,zmm24
  a1fdba:	62 f1 5c 48 59 e0    	vmulps zmm4,zmm4,zmm0
  a1fdc0:	62 f1 4c 48 59 f0    	vmulps zmm6,zmm6,zmm0
  a1fdc6:	62 f1 54 48 59 e8    	vmulps zmm5,zmm5,zmm0
  a1fdcc:	62 61 3c 48 59 c8    	vmulps zmm25,zmm8,zmm0
  a1fdd2:	62 f1 74 48 58 d4    	vaddps zmm2,zmm1,zmm4
  a1fdd8:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a1fddf:	06 
  a1fde0:	62 72 1d 48 ac c8    	vfnmadd213ps zmm9,zmm12,zmm0
  a1fde6:	62 e1 74 48 5c e4    	vsubps zmm20,zmm1,zmm4
  a1fdec:	62 61 34 48 5c f6    	vsubps zmm30,zmm9,zmm6
  a1fdf2:	62 71 34 48 58 f6    	vaddps zmm14,zmm9,zmm6
  a1fdf8:	62 41 04 40 58 fa    	vaddps zmm31,zmm31,zmm10
  a1fdfe:	62 71 24 40 58 c7    	vaddps zmm8,zmm27,zmm7
  a1fe04:	62 21 7c 40 5c de    	vsubps zmm27,zmm16,zmm22
  a1fe0a:	62 31 7c 40 58 ce    	vaddps zmm9,zmm16,zmm22
  a1fe10:	62 a1 6c 40 58 c7    	vaddps zmm16,zmm18,zmm23
  a1fe16:	62 b1 6c 40 5c f7    	vsubps zmm6,zmm18,zmm23
  a1fe1c:	62 e1 64 40 58 d5    	vaddps zmm18,zmm19,zmm5
  a1fe22:	62 f1 64 40 5c fd    	vsubps zmm7,zmm19,zmm5
  a1fe28:	62 81 54 40 5c d9    	vsubps zmm19,zmm21,zmm25
  a1fe2e:	62 91 54 40 58 e9    	vaddps zmm5,zmm21,zmm25
  a1fe34:	62 d1 7c 48 58 cc    	vaddps zmm1,zmm0,zmm12
  a1fe3a:	62 51 3c 40 58 db    	vaddps zmm11,zmm24,zmm11
  a1fe40:	62 f1 7c 48 28 25 b6 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff66ffb6]        # 8fe00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d2b0>
  a1fe47:	ff 66 ff 
  a1fe4a:	62 b3 7d 48 19 ce 02 	vextractf32x4 xmm22,zmm1,0x2
  a1fe51:	62 d2 5d 48 7f cb    	vpermt2ps zmm1,zmm4,zmm11
  a1fe57:	62 f1 7c 48 11 0e    	vmovups ZMMWORD PTR [rsi],zmm1
  a1fe5d:	62 73 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm11,0x2
  a1fe64:	62 f1 4c 00 14 c9    	vunpcklps xmm1,xmm22,xmm1
  a1fe6a:	c5 f8 13 4e 40       	vmovlps QWORD PTR [rsi+0x40],xmm1
  a1fe6f:	62 f3 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm3,0x2
  a1fe76:	62 92 5d 48 7f da    	vpermt2ps zmm3,zmm4,zmm26
  a1fe7c:	62 f1 7c 48 11 9e 48 	vmovups ZMMWORD PTR [rsi+0x48],zmm3
  a1fe83:	00 00 00 
  a1fe86:	62 63 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm26,0x2
  a1fe8d:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a1fe91:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  a1fe98:	00 
  a1fe99:	62 e3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm16,0x2
  a1fea0:	62 82 5d 48 7f c3    	vpermt2ps zmm16,zmm4,zmm27
  a1fea6:	62 e1 7c 48 11 86 90 	vmovups ZMMWORD PTR [rsi+0x90],zmm16
  a1fead:	00 00 00 
  a1feb0:	62 63 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm27,0x2
  a1feb7:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1febb:	c5 f8 13 86 d0 00 00 	vmovlps QWORD PTR [rsi+0xd0],xmm0
  a1fec2:	00 
  a1fec3:	62 e3 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm17,0x2
  a1feca:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a1fed1:	01 
  a1fed2:	62 e2 5d 48 7f c9    	vpermt2ps zmm17,zmm4,zmm1
  a1fed8:	62 e1 7c 48 11 8e d8 	vmovups ZMMWORD PTR [rsi+0xd8],zmm17
  a1fedf:	00 00 00 
  a1fee2:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a1fee9:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1feed:	c5 f8 13 86 18 01 00 	vmovlps QWORD PTR [rsi+0x118],xmm0
  a1fef4:	00 
  a1fef5:	62 63 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm30,0x2
  a1fefc:	62 62 5d 48 7f f2    	vpermt2ps zmm30,zmm4,zmm2
  a1ff02:	62 61 7c 48 11 b6 20 	vmovups ZMMWORD PTR [rsi+0x120],zmm30
  a1ff09:	01 00 00 
  a1ff0c:	62 f3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm2,0x2
  a1ff13:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1ff17:	c5 f8 13 86 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm0
  a1ff1e:	00 
  a1ff1f:	62 73 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm15,0x2
  a1ff26:	62 12 5d 48 7f fc    	vpermt2ps zmm15,zmm4,zmm28
  a1ff2c:	62 71 7c 48 11 be 68 	vmovups ZMMWORD PTR [rsi+0x168],zmm15
  a1ff33:	01 00 00 
  a1ff36:	62 63 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm28,0x2
  a1ff3d:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1ff41:	c5 f8 13 86 a8 01 00 	vmovlps QWORD PTR [rsi+0x1a8],xmm0
  a1ff48:	00 
  a1ff49:	62 73 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm13,0x2
  a1ff50:	62 12 5d 48 7f ed    	vpermt2ps zmm13,zmm4,zmm29
  a1ff56:	62 71 7c 48 11 ae b0 	vmovups ZMMWORD PTR [rsi+0x1b0],zmm13
  a1ff5d:	01 00 00 
  a1ff60:	62 63 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm29,0x2
  a1ff67:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1ff6b:	c5 f8 13 86 f0 01 00 	vmovlps QWORD PTR [rsi+0x1f0],xmm0
  a1ff72:	00 
  a1ff73:	62 e3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm19,0x2
  a1ff7a:	62 a2 5d 48 7f da    	vpermt2ps zmm19,zmm4,zmm18
  a1ff80:	62 e1 7c 48 11 9e f8 	vmovups ZMMWORD PTR [rsi+0x1f8],zmm19
  a1ff87:	01 00 00 
  a1ff8a:	62 e3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm18,0x2
  a1ff91:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1ff95:	c5 f8 13 86 38 02 00 	vmovlps QWORD PTR [rsi+0x238],xmm0
  a1ff9c:	00 
  a1ff9d:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a1ffa4:	62 32 5d 48 7f f4    	vpermt2ps zmm14,zmm4,zmm20
  a1ffaa:	62 71 7c 48 11 76 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm14
  a1ffb1:	62 e3 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm20,0x2
  a1ffb8:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1ffbc:	c5 f8 13 86 80 02 00 	vmovlps QWORD PTR [rsi+0x280],xmm0
  a1ffc3:	00 
  a1ffc4:	62 73 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm8,0x2
  a1ffcb:	62 12 5d 48 7f c7    	vpermt2ps zmm8,zmm4,zmm31
  a1ffd1:	62 71 7c 48 11 86 88 	vmovups ZMMWORD PTR [rsi+0x288],zmm8
  a1ffd8:	02 00 00 
  a1ffdb:	62 63 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm31,0x2
  a1ffe2:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1ffe6:	c5 f8 13 86 c8 02 00 	vmovlps QWORD PTR [rsi+0x2c8],xmm0
  a1ffed:	00 
  a1ffee:	62 f3 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm6,0x2
  a1fff5:	62 d2 5d 48 7f f1    	vpermt2ps zmm6,zmm4,zmm9
  a1fffb:	62 f1 7c 48 11 b6 d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm6
  a20002:	02 00 00 
  a20005:	62 73 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm9,0x2
  a2000c:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a20010:	c5 f8 13 86 10 03 00 	vmovlps QWORD PTR [rsi+0x310],xmm0
  a20017:	00 
  a20018:	62 f2 55 48 77 e7    	vpermi2ps zmm4,zmm5,zmm7
  a2001e:	62 f1 7c 48 11 a6 18 	vmovups ZMMWORD PTR [rsi+0x318],zmm4
  a20025:	03 00 00 
  a20028:	62 f3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm7,0x2
  a2002f:	62 f3 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm5,0x2
  a20036:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a2003a:	c5 f8 13 86 58 03 00 	vmovlps QWORD PTR [rsi+0x358],xmm0
  a20041:	00 
  a20042:	48 89 ec             	mov    rsp,rbp
  a20045:	5d                   	pop    rbp
  a20046:	c5 f8 77             	vzeroupper
  a20049:	c3                   	ret
