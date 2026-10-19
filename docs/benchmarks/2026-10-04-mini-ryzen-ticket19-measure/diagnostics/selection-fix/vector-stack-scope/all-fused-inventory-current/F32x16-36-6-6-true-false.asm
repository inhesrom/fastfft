
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a5e280 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a5e280:	55                   	push   rbp
  a5e281:	48 89 e5             	mov    rbp,rsp
  a5e284:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a5e288:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a5e28f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a5e294:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a5e299:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a5e29e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a5e2a3:	c5 f8 10 47 20       	vmovups xmm0,XMMWORD PTR [rdi+0x20]
  a5e2a8:	c4 e3 79 21 47 24 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24],0x10
  a5e2af:	c4 e2 79 18 4f 28    	vbroadcastss xmm1,DWORD PTR [rdi+0x28]
  a5e2b5:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5e2bb:	c4 e3 79 21 47 2c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c],0x30
  a5e2c2:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a5e2c6:	62 f3 75 48 18 e0 02 	vinsertf32x4 zmm4,zmm1,xmm0,0x2
  a5e2cd:	62 f1 7c 48 28 0d a9 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6352a9]        # 93580 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20a30>
  a5e2d4:	52 63 ff 
  a5e2d7:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a5e2db:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a5e2e1:	62 f2 75 48 7f da    	vpermt2ps zmm3,zmm1,zmm2
  a5e2e7:	62 f1 7c 48 28 05 cf 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6352cf]        # 935c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20a70>
  a5e2ee:	52 63 ff 
  a5e2f1:	c5 f8 10 6f 50       	vmovups xmm5,XMMWORD PTR [rdi+0x50]
  a5e2f6:	c4 e3 51 21 6f 54 10 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x54],0x10
  a5e2fd:	c4 e2 79 18 77 58    	vbroadcastss xmm6,DWORD PTR [rdi+0x58]
  a5e303:	62 f2 7d 48 7f e2    	vpermt2ps zmm4,zmm0,zmm2
  a5e309:	c4 e3 49 0c ed 03    	vblendps xmm5,xmm6,xmm5,0x3
  a5e30f:	c4 e3 51 21 6f 5c 30 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x5c],0x30
  a5e316:	c5 fc 10 77 30       	vmovups ymm6,YMMWORD PTR [rdi+0x30]
  a5e31b:	62 f3 4d 48 18 f5 02 	vinsertf32x4 zmm6,zmm6,xmm5,0x2
  a5e322:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  a5e328:	62 f2 75 48 7f ea    	vpermt2ps zmm5,zmm1,zmm2
  a5e32e:	62 f2 7d 48 7f f2    	vpermt2ps zmm6,zmm0,zmm2
  a5e334:	c5 f8 10 bf 80 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0x80]
  a5e33b:	00 
  a5e33c:	c4 e3 41 21 bf 84 00 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0x84],0x10
  a5e343:	00 00 10 
  a5e346:	c5 7c 10 47 60       	vmovups ymm8,YMMWORD PTR [rdi+0x60]
  a5e34b:	c4 62 79 18 8f 88 00 	vbroadcastss xmm9,DWORD PTR [rdi+0x88]
  a5e352:	00 00 
  a5e354:	c4 e3 31 0c ff 03    	vblendps xmm7,xmm9,xmm7,0x3
  a5e35a:	c4 e3 41 21 bf 8c 00 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0x8c],0x30
  a5e361:	00 00 30 
  a5e364:	62 73 3d 48 18 d7 02 	vinsertf32x4 zmm10,zmm8,xmm7,0x2
  a5e36b:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a5e371:	62 72 75 48 7f da    	vpermt2ps zmm11,zmm1,zmm2
  a5e377:	62 72 7d 48 7f d2    	vpermt2ps zmm10,zmm0,zmm2
  a5e37d:	c5 f8 10 bf b0 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0xb0]
  a5e384:	00 
  a5e385:	c5 7c 10 87 90 00 00 	vmovups ymm8,YMMWORD PTR [rdi+0x90]
  a5e38c:	00 
  a5e38d:	c4 e3 41 21 bf b4 00 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0xb4],0x10
  a5e394:	00 00 10 
  a5e397:	c4 62 79 18 8f b8 00 	vbroadcastss xmm9,DWORD PTR [rdi+0xb8]
  a5e39e:	00 00 
  a5e3a0:	c4 e3 31 0c ff 03    	vblendps xmm7,xmm9,xmm7,0x3
  a5e3a6:	c4 e3 41 21 bf bc 00 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0xbc],0x30
  a5e3ad:	00 00 30 
  a5e3b0:	62 73 3d 48 18 c7 02 	vinsertf32x4 zmm8,zmm8,xmm7,0x2
  a5e3b7:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a5e3bd:	62 72 75 48 7f ca    	vpermt2ps zmm9,zmm1,zmm2
  a5e3c3:	62 72 7d 48 7f c2    	vpermt2ps zmm8,zmm0,zmm2
  a5e3c9:	c5 f8 10 bf e0 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0xe0]
  a5e3d0:	00 
  a5e3d1:	c4 e3 41 21 bf e4 00 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0xe4],0x10
  a5e3d8:	00 00 10 
  a5e3db:	c4 62 79 18 a7 e8 00 	vbroadcastss xmm12,DWORD PTR [rdi+0xe8]
  a5e3e2:	00 00 
  a5e3e4:	c5 7c 10 af c0 00 00 	vmovups ymm13,YMMWORD PTR [rdi+0xc0]
  a5e3eb:	00 
  a5e3ec:	c4 e3 19 0c ff 03    	vblendps xmm7,xmm12,xmm7,0x3
  a5e3f2:	c4 e3 41 21 bf ec 00 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0xec],0x30
  a5e3f9:	00 00 30 
  a5e3fc:	62 73 15 48 18 e7 02 	vinsertf32x4 zmm12,zmm13,xmm7,0x2
  a5e403:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a5e409:	62 72 75 48 7f ea    	vpermt2ps zmm13,zmm1,zmm2
  a5e40f:	c5 f8 10 bf 10 01 00 	vmovups xmm7,XMMWORD PTR [rdi+0x110]
  a5e416:	00 
  a5e417:	c4 e3 41 21 bf 14 01 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0x114],0x10
  a5e41e:	00 00 10 
  a5e421:	c4 62 79 18 b7 18 01 	vbroadcastss xmm14,DWORD PTR [rdi+0x118]
  a5e428:	00 00 
  a5e42a:	62 72 7d 48 7f e2    	vpermt2ps zmm12,zmm0,zmm2
  a5e430:	c4 e3 09 0c ff 03    	vblendps xmm7,xmm14,xmm7,0x3
  a5e436:	c4 e3 41 21 bf 1c 01 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0x11c],0x30
  a5e43d:	00 00 30 
  a5e440:	c5 7c 10 b7 f0 00 00 	vmovups ymm14,YMMWORD PTR [rdi+0xf0]
  a5e447:	00 
  a5e448:	62 73 0d 48 18 f7 02 	vinsertf32x4 zmm14,zmm14,xmm7,0x2
  a5e44f:	62 f2 0d 48 77 ca    	vpermi2ps zmm1,zmm14,zmm2
  a5e455:	62 72 7d 48 7f f2    	vpermt2ps zmm14,zmm0,zmm2
  a5e45b:	62 51 2c 48 58 fc    	vaddps zmm15,zmm10,zmm12
  a5e461:	62 c1 5c 48 58 c7    	vaddps zmm16,zmm4,zmm15
  a5e467:	62 e1 0c 48 58 ce    	vaddps zmm17,zmm14,zmm6
  a5e46d:	62 a1 3c 48 58 d1    	vaddps zmm18,zmm8,zmm17
  a5e473:	62 b1 7c 40 58 fa    	vaddps zmm7,zmm16,zmm18
  a5e479:	62 c1 24 48 58 dd    	vaddps zmm19,zmm11,zmm13
  a5e47f:	62 f2 7d 48 18 05 d7 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff616fd7]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a5e486:	6f 61 ff 
  a5e489:	62 d2 7d 48 bc e7    	vfnmadd231ps zmm4,zmm0,zmm15
  a5e48f:	62 31 64 48 58 fb    	vaddps zmm15,zmm3,zmm19
  a5e495:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a5e49b:	62 71 74 48 58 ed    	vaddps zmm13,zmm1,zmm5
  a5e4a1:	62 32 7d 48 bc c1    	vfnmadd231ps zmm8,zmm0,zmm17
  a5e4a7:	62 c1 34 48 58 cd    	vaddps zmm17,zmm9,zmm13
  a5e4ad:	62 e1 74 48 5c e5    	vsubps zmm20,zmm1,zmm5
  a5e4b3:	62 b1 04 48 58 e9    	vaddps zmm5,zmm15,zmm17
  a5e4b9:	62 b2 7d 48 bc db    	vfnmadd231ps zmm3,zmm0,zmm19
  a5e4bf:	62 f2 7d 48 18 0d 0b 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff616e0b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a5e4c6:	6e 61 ff 
  a5e4c9:	62 71 24 48 59 d9    	vmulps zmm11,zmm11,zmm1
  a5e4cf:	62 51 2c 48 5c d4    	vsubps zmm10,zmm10,zmm12
  a5e4d5:	62 51 5c 48 58 e3    	vaddps zmm12,zmm4,zmm11
  a5e4db:	62 e1 5c 40 59 d9    	vmulps zmm19,zmm20,zmm1
  a5e4e1:	62 52 7d 48 bc cd    	vfnmadd231ps zmm9,zmm0,zmm13
  a5e4e7:	62 31 3c 48 58 eb    	vaddps zmm13,zmm8,zmm19
  a5e4ed:	62 f1 0c 48 5c f6    	vsubps zmm6,zmm14,zmm6
  a5e4f3:	62 c1 1c 48 5c e5    	vsubps zmm20,zmm12,zmm13
  a5e4f9:	62 71 2c 48 59 d1    	vmulps zmm10,zmm10,zmm1
  a5e4ff:	62 d1 5c 48 5c e3    	vsubps zmm4,zmm4,zmm11
  a5e505:	62 51 64 48 5c da    	vsubps zmm11,zmm3,zmm10
  a5e50b:	62 f1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm1
  a5e511:	62 31 3c 48 5c f3    	vsubps zmm14,zmm8,zmm19
  a5e517:	62 e1 34 48 5c de    	vsubps zmm19,zmm9,zmm6
  a5e51d:	62 f1 2c 48 58 db    	vaddps zmm3,zmm10,zmm3
  a5e523:	62 31 24 48 5c c3    	vsubps zmm8,zmm11,zmm19
  a5e529:	62 d1 4c 48 58 f1    	vaddps zmm6,zmm6,zmm9
  a5e52f:	62 c1 5c 48 58 ee    	vaddps zmm21,zmm4,zmm14
  a5e535:	62 a1 7c 40 5c d2    	vsubps zmm18,zmm16,zmm18
  a5e53b:	62 71 64 48 58 d6    	vaddps zmm10,zmm3,zmm6
  a5e541:	62 31 04 48 5c c9    	vsubps zmm9,zmm15,zmm17
  a5e547:	62 51 1c 48 58 fd    	vaddps zmm15,zmm12,zmm13
  a5e54d:	62 31 24 48 58 eb    	vaddps zmm13,zmm11,zmm19
  a5e553:	62 d1 5c 48 5c e6    	vsubps zmm4,zmm4,zmm14
  a5e559:	62 71 64 48 5c de    	vsubps zmm11,zmm3,zmm6
  a5e55f:	62 e1 7c 48 28 0d 17 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff668a17]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5e566:	8a 66 ff 
  a5e569:	62 f2 75 40 7f fa    	vpermt2ps zmm7,zmm17,zmm2
  a5e56f:	62 e2 75 40 7f e2    	vpermt2ps zmm20,zmm17,zmm2
  a5e575:	62 e2 75 40 7f ea    	vpermt2ps zmm21,zmm17,zmm2
  a5e57b:	62 e2 75 40 7f d2    	vpermt2ps zmm18,zmm17,zmm2
  a5e581:	62 72 75 40 7f fa    	vpermt2ps zmm15,zmm17,zmm2
  a5e587:	62 f2 75 40 7f e2    	vpermt2ps zmm4,zmm17,zmm2
  a5e58d:	c4 41 08 57 f6       	vxorps xmm14,xmm14,xmm14
  a5e592:	62 52 75 40 7f f6    	vpermt2ps zmm14,zmm17,zmm14
  a5e598:	62 71 7c 48 28 25 5e 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff66895e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5e59f:	89 66 ff 
  a5e5a2:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a5e5a8:	62 d2 1d 48 7f f7    	vpermt2ps zmm6,zmm12,zmm15
  a5e5ae:	62 e1 7c 48 28 05 88 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff668988]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a5e5b5:	89 66 ff 
  a5e5b8:	62 d2 7d 40 7f ff    	vpermt2ps zmm7,zmm16,zmm15
  a5e5be:	62 31 7c 48 28 fc    	vmovaps zmm15,zmm20
  a5e5c4:	62 72 1d 48 7f fc    	vpermt2ps zmm15,zmm12,zmm4
  a5e5ca:	62 e2 7d 40 7f e4    	vpermt2ps zmm20,zmm16,zmm4
  a5e5d0:	62 a1 7c 48 28 dd    	vmovaps zmm19,zmm21
  a5e5d6:	62 c2 1d 48 7f de    	vpermt2ps zmm19,zmm12,zmm14
  a5e5dc:	62 c2 7d 40 7f ee    	vpermt2ps zmm21,zmm16,zmm14
  a5e5e2:	62 b1 c5 48 14 e5    	vunpcklpd zmm4,zmm7,zmm21
  a5e5e8:	62 b1 7c 48 28 fa    	vmovaps zmm7,zmm18
  a5e5ee:	62 d2 1d 48 7f fe    	vpermt2ps zmm7,zmm12,zmm14
  a5e5f4:	62 c2 7d 40 7f d6    	vpermt2ps zmm18,zmm16,zmm14
  a5e5fa:	62 a1 dd 40 14 d2    	vunpcklpd zmm18,zmm20,zmm18
  a5e600:	62 b1 cd 48 14 db    	vunpcklpd zmm3,zmm6,zmm19
  a5e606:	62 b1 cd 48 15 f3    	vunpckhpd zmm6,zmm6,zmm19
  a5e60c:	62 e1 85 48 14 df    	vunpcklpd zmm19,zmm15,zmm7
  a5e612:	62 71 85 48 15 ff    	vunpckhpd zmm15,zmm15,zmm7
  a5e618:	62 f1 7c 48 28 3d de 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6687de]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5e61f:	87 66 ff 
  a5e622:	62 f2 75 40 7f ea    	vpermt2ps zmm5,zmm17,zmm2
  a5e628:	62 72 75 40 7f c2    	vpermt2ps zmm8,zmm17,zmm2
  a5e62e:	62 72 75 40 7f d2    	vpermt2ps zmm10,zmm17,zmm2
  a5e634:	62 72 75 40 7f ca    	vpermt2ps zmm9,zmm17,zmm2
  a5e63a:	62 72 75 40 7f ea    	vpermt2ps zmm13,zmm17,zmm2
  a5e640:	62 72 75 40 7f da    	vpermt2ps zmm11,zmm17,zmm2
  a5e646:	62 f1 7c 48 28 d3    	vmovaps zmm2,zmm3
  a5e64c:	62 b2 45 48 7f d3    	vpermt2ps zmm2,zmm7,zmm19
  a5e652:	62 e1 7c 48 28 25 e4 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6687e4]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5e659:	87 66 ff 
  a5e65c:	62 b2 5d 40 7f db    	vpermt2ps zmm3,zmm20,zmm19
  a5e662:	62 e1 7c 48 28 ce    	vmovaps zmm17,zmm6
  a5e668:	62 c2 45 48 7f cf    	vpermt2ps zmm17,zmm7,zmm15
  a5e66e:	62 d2 5d 40 7f f7    	vpermt2ps zmm6,zmm20,zmm15
  a5e674:	62 71 7c 48 28 fc    	vmovaps zmm15,zmm4
  a5e67a:	62 32 45 48 7f fa    	vpermt2ps zmm15,zmm7,zmm18
  a5e680:	62 b2 5d 40 7f e2    	vpermt2ps zmm4,zmm20,zmm18
  a5e686:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a5e68c:	62 c2 1d 48 7f d5    	vpermt2ps zmm18,zmm12,zmm13
  a5e692:	62 d2 7d 40 7f ed    	vpermt2ps zmm5,zmm16,zmm13
  a5e698:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a5e69e:	62 52 1d 48 7f eb    	vpermt2ps zmm13,zmm12,zmm11
  a5e6a4:	62 52 7d 40 7f c3    	vpermt2ps zmm8,zmm16,zmm11
  a5e6aa:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a5e6b0:	62 52 7d 40 7f d6    	vpermt2ps zmm10,zmm16,zmm14
  a5e6b6:	62 51 d5 48 14 d2    	vunpcklpd zmm10,zmm5,zmm10
  a5e6bc:	62 52 1d 48 7f de    	vpermt2ps zmm11,zmm12,zmm14
  a5e6c2:	62 52 35 48 77 e6    	vpermi2ps zmm12,zmm9,zmm14
  a5e6c8:	62 52 7d 40 7f ce    	vpermt2ps zmm9,zmm16,zmm14
  a5e6ce:	62 51 bd 48 14 c1    	vunpcklpd zmm8,zmm8,zmm9
  a5e6d4:	62 51 ed 40 14 cb    	vunpcklpd zmm9,zmm18,zmm11
  a5e6da:	62 51 ed 40 15 db    	vunpckhpd zmm11,zmm18,zmm11
  a5e6e0:	62 51 95 48 14 f4    	vunpcklpd zmm14,zmm13,zmm12
  a5e6e6:	62 51 95 48 15 e4    	vunpckhpd zmm12,zmm13,zmm12
  a5e6ec:	62 d1 7c 48 28 e9    	vmovaps zmm5,zmm9
  a5e6f2:	62 d2 45 48 7f ee    	vpermt2ps zmm5,zmm7,zmm14
  a5e6f8:	62 52 5d 40 7f ce    	vpermt2ps zmm9,zmm20,zmm14
  a5e6fe:	62 51 7c 48 28 eb    	vmovaps zmm13,zmm11
  a5e704:	62 52 45 48 7f ec    	vpermt2ps zmm13,zmm7,zmm12
  a5e70a:	62 52 5d 40 7f dc    	vpermt2ps zmm11,zmm20,zmm12
  a5e710:	62 d2 2d 48 77 f8    	vpermi2ps zmm7,zmm10,zmm8
  a5e716:	62 52 5d 40 7f d0    	vpermt2ps zmm10,zmm20,zmm8
  a5e71c:	62 71 7c 48 10 62 02 	vmovups zmm12,ZMMWORD PTR [rdx+0x80]
  a5e723:	62 71 7c 48 10 72 03 	vmovups zmm14,ZMMWORD PTR [rdx+0xc0]
  a5e72a:	62 e1 7c 48 10 42 04 	vmovups zmm16,ZMMWORD PTR [rdx+0x100]
  a5e731:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a5e738:	62 31 74 40 59 c0    	vmulps zmm8,zmm17,zmm16
  a5e73e:	62 32 15 48 bc c2    	vfnmadd231ps zmm8,zmm13,zmm18
  a5e744:	62 31 14 48 59 e8    	vmulps zmm13,zmm13,zmm16
  a5e74a:	62 e1 7c 48 10 42 08 	vmovups zmm16,ZMMWORD PTR [rdx+0x200]
  a5e751:	62 32 6d 40 b8 e9    	vfmadd231ps zmm13,zmm18,zmm17
  a5e757:	62 e1 7c 48 10 4a 09 	vmovups zmm17,ZMMWORD PTR [rdx+0x240]
  a5e75e:	62 a1 04 48 59 d0    	vmulps zmm18,zmm15,zmm16
  a5e764:	62 a2 45 48 bc d1    	vfnmadd231ps zmm18,zmm7,zmm17
  a5e76a:	62 b1 44 48 59 f8    	vmulps zmm7,zmm7,zmm16
  a5e770:	62 e1 7c 48 10 42 06 	vmovups zmm16,ZMMWORD PTR [rdx+0x180]
  a5e777:	62 d2 75 40 b8 ff    	vfmadd231ps zmm7,zmm17,zmm15
  a5e77d:	62 71 7c 48 10 7a 07 	vmovups zmm15,ZMMWORD PTR [rdx+0x1c0]
  a5e784:	62 a1 4c 48 59 c8    	vmulps zmm17,zmm6,zmm16
  a5e78a:	62 c2 25 48 bc cf    	vfnmadd231ps zmm17,zmm11,zmm15
  a5e790:	62 31 24 48 59 d8    	vmulps zmm11,zmm11,zmm16
  a5e796:	62 e1 7c 48 10 42 0a 	vmovups zmm16,ZMMWORD PTR [rdx+0x280]
  a5e79d:	62 72 05 48 b8 de    	vfmadd231ps zmm11,zmm15,zmm6
  a5e7a3:	62 f1 7c 48 10 72 0b 	vmovups zmm6,ZMMWORD PTR [rdx+0x2c0]
  a5e7aa:	62 31 5c 48 59 f8    	vmulps zmm15,zmm4,zmm16
  a5e7b0:	62 72 2d 48 bc fe    	vfnmadd231ps zmm15,zmm10,zmm6
  a5e7b6:	62 31 2c 48 59 d0    	vmulps zmm10,zmm10,zmm16
  a5e7bc:	62 a1 3c 48 58 c2    	vaddps zmm16,zmm8,zmm18
  a5e7c2:	62 72 4d 48 b8 d4    	vfmadd231ps zmm10,zmm6,zmm4
  a5e7c8:	62 b1 6c 48 58 e0    	vaddps zmm4,zmm2,zmm16
  a5e7ce:	62 d1 64 48 59 f4    	vmulps zmm6,zmm3,zmm12
  a5e7d4:	62 d2 35 48 bc f6    	vfnmadd231ps zmm6,zmm9,zmm14
  a5e7da:	62 51 34 48 59 cc    	vmulps zmm9,zmm9,zmm12
  a5e7e0:	62 71 04 48 58 e6    	vaddps zmm12,zmm15,zmm6
  a5e7e6:	62 72 0d 48 b8 cb    	vfmadd231ps zmm9,zmm14,zmm3
  a5e7ec:	62 d1 74 40 58 dc    	vaddps zmm3,zmm17,zmm12
  a5e7f2:	62 71 14 48 58 f7    	vaddps zmm14,zmm13,zmm7
  a5e7f8:	62 b2 7d 48 bc d0    	vfnmadd231ps zmm2,zmm0,zmm16
  a5e7fe:	62 e1 0c 48 58 c5    	vaddps zmm16,zmm14,zmm5
  a5e804:	62 c2 7d 48 bc cc    	vfnmadd231ps zmm17,zmm0,zmm12
  a5e80a:	62 51 2c 48 58 e1    	vaddps zmm12,zmm10,zmm9
  a5e810:	62 d2 7d 48 bc ee    	vfnmadd231ps zmm5,zmm0,zmm14
  a5e816:	62 51 24 48 58 f4    	vaddps zmm14,zmm11,zmm12
  a5e81c:	62 72 1d 48 bc d8    	vfnmadd231ps zmm11,zmm12,zmm0
  a5e822:	62 f1 14 48 5c c7    	vsubps zmm0,zmm13,zmm7
  a5e828:	62 d1 2c 48 5c f9    	vsubps zmm7,zmm10,zmm9
  a5e82e:	62 31 3c 48 5c c2    	vsubps zmm8,zmm8,zmm18
  a5e834:	62 f1 04 48 5c f6    	vsubps zmm6,zmm15,zmm6
  a5e83a:	62 f1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm1
  a5e840:	62 f1 44 48 59 f9    	vmulps zmm7,zmm7,zmm1
  a5e846:	62 71 3c 48 59 c1    	vmulps zmm8,zmm8,zmm1
  a5e84c:	62 f1 4c 48 59 c9    	vmulps zmm1,zmm6,zmm1
  a5e852:	62 f1 6c 48 58 f0    	vaddps zmm6,zmm2,zmm0
  a5e858:	62 f1 6c 48 5c c0    	vsubps zmm0,zmm2,zmm0
  a5e85e:	62 f1 74 40 58 d7    	vaddps zmm2,zmm17,zmm7
  a5e864:	62 f1 74 40 5c ff    	vsubps zmm7,zmm17,zmm7
  a5e86a:	62 51 54 48 5c c8    	vsubps zmm9,zmm5,zmm8
  a5e870:	62 f1 3c 48 58 ed    	vaddps zmm5,zmm8,zmm5
  a5e876:	62 71 24 48 5c c1    	vsubps zmm8,zmm11,zmm1
  a5e87c:	62 f1 24 48 58 c9    	vaddps zmm1,zmm11,zmm1
  a5e882:	62 71 4c 48 5c d2    	vsubps zmm10,zmm6,zmm2
  a5e888:	62 f1 4c 48 58 d2    	vaddps zmm2,zmm6,zmm2
  a5e88e:	62 d1 34 48 5c f0    	vsubps zmm6,zmm9,zmm8
  a5e894:	62 51 34 48 58 c0    	vaddps zmm8,zmm9,zmm8
  a5e89a:	62 71 7c 48 58 cf    	vaddps zmm9,zmm0,zmm7
  a5e8a0:	62 f1 7c 48 5c c7    	vsubps zmm0,zmm0,zmm7
  a5e8a6:	62 f1 54 48 58 f9    	vaddps zmm7,zmm5,zmm1
  a5e8ac:	62 f1 54 48 5c c9    	vsubps zmm1,zmm5,zmm1
  a5e8b2:	62 d1 7c 40 5c ee    	vsubps zmm5,zmm16,zmm14
  a5e8b8:	62 51 7c 40 58 de    	vaddps zmm11,zmm16,zmm14
  a5e8be:	62 71 5c 48 5c e3    	vsubps zmm12,zmm4,zmm3
  a5e8c4:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a5e8ca:	62 f1 7c 48 28 25 2c 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff634d2c]        # 93600 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20ab0>
  a5e8d1:	4d 63 ff 
  a5e8d4:	62 72 5d 48 7f db    	vpermt2ps zmm11,zmm4,zmm3
  a5e8da:	62 d2 5d 48 7f f2    	vpermt2ps zmm6,zmm4,zmm10
  a5e8e0:	62 d2 5d 48 7f f9    	vpermt2ps zmm7,zmm4,zmm9
  a5e8e6:	62 d2 5d 48 7f ec    	vpermt2ps zmm5,zmm4,zmm12
  a5e8ec:	62 72 5d 48 7f c2    	vpermt2ps zmm8,zmm4,zmm2
  a5e8f2:	62 f2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm0
  a5e8f8:	62 73 7d 48 19 5e 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm11,0x2
  a5e8ff:	02 
  a5e900:	c5 7c 11 1e          	vmovups YMMWORD PTR [rsi],ymm11
  a5e904:	62 f3 7d 48 19 76 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm6,0x2
  a5e90b:	02 
  a5e90c:	c5 fc 11 76 30       	vmovups YMMWORD PTR [rsi+0x30],ymm6
  a5e911:	62 f3 7d 48 19 7e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm7,0x2
  a5e918:	02 
  a5e919:	c5 fc 11 7e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm7
  a5e91e:	62 f3 7d 48 19 6e 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm5,0x2
  a5e925:	02 
  a5e926:	c5 fc 11 ae 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm5
  a5e92d:	00 
  a5e92e:	62 73 7d 48 19 46 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm8,0x2
  a5e935:	02 
  a5e936:	c5 7c 11 86 c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm8
  a5e93d:	00 
  a5e93e:	62 f3 7d 48 19 4e 11 	vextractf32x4 XMMWORD PTR [rsi+0x110],zmm1,0x2
  a5e945:	02 
  a5e946:	c5 fc 11 8e f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm1
  a5e94d:	00 
  a5e94e:	48 89 ec             	mov    rsp,rbp
  a5e951:	5d                   	pop    rbp
  a5e952:	c5 f8 77             	vzeroupper
  a5e955:	c3                   	ret
