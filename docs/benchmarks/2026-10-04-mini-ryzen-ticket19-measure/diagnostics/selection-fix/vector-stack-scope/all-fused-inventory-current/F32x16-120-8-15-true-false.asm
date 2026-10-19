
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a2c340 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a2c340:	55                   	push   rbp
  a2c341:	48 89 e5             	mov    rbp,rsp
  a2c344:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a2c348:	48 81 ec c0 09 00 00 	sub    rsp,0x9c0
  a2c34f:	c6 84 24 40 09 00 00 	mov    BYTE PTR [rsp+0x940],0x0
  a2c356:	00 
  a2c357:	48 8d 84 24 40 09 00 	lea    rax,[rsp+0x940]
  a2c35e:	00 
  a2c35f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a2c364:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a2c369:	62 61 7c 48 10 37    	vmovups zmm30,ZMMWORD PTR [rdi]
  a2c36f:	c5 f8 10 47 60       	vmovups xmm0,XMMWORD PTR [rdi+0x60]
  a2c374:	c4 e3 79 21 47 64 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x64],0x10
  a2c37b:	c4 e2 79 18 4f 68    	vbroadcastss xmm1,DWORD PTR [rdi+0x68]
  a2c381:	c5 fc 10 57 40       	vmovups ymm2,YMMWORD PTR [rdi+0x40]
  a2c386:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a2c38c:	c4 e3 79 21 47 6c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6c],0x30
  a2c393:	c5 fb 10 4f 70       	vmovsd xmm1,QWORD PTR [rdi+0x70]
  a2c398:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a2c39e:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a2c3a5:	b0 7f                	mov    al,0x7f
  a2c3a7:	c5 fb 92 c8          	kmovd  k1,eax
  a2c3ab:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a2c3b1:	62 f1 fd 48 7f 44 24 	vmovdqa64 ZMMWORD PTR [rsp+0x100],zmm0
  a2c3b8:	04 
  a2c3b9:	62 f1 7c 48 28 1d fd 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6643fd]        # 907c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dc70>
  a2c3c0:	43 66 ff 
  a2c3c3:	62 91 7c 48 28 e6    	vmovaps zmm4,zmm30
  a2c3c9:	62 f2 65 48 7f e0    	vpermt2ps zmm4,zmm3,zmm0
  a2c3cf:	62 71 7c 48 10 a7 e0 	vmovups zmm12,ZMMWORD PTR [rdi+0x1e0]
  a2c3d6:	01 00 00 
  a2c3d9:	c5 f8 10 8f 40 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x240]
  a2c3e0:	00 
  a2c3e1:	c5 fc 10 97 20 02 00 	vmovups ymm2,YMMWORD PTR [rdi+0x220]
  a2c3e8:	00 
  a2c3e9:	c4 e3 71 21 8f 44 02 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x244],0x10
  a2c3f0:	00 00 10 
  a2c3f3:	c4 e2 79 18 af 48 02 	vbroadcastss xmm5,DWORD PTR [rdi+0x248]
  a2c3fa:	00 00 
  a2c3fc:	c4 e3 51 0c c9 03    	vblendps xmm1,xmm5,xmm1,0x3
  a2c402:	c4 e3 71 21 8f 4c 02 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x24c],0x30
  a2c409:	00 00 30 
  a2c40c:	c5 fb 10 af 50 02 00 	vmovsd xmm5,QWORD PTR [rdi+0x250]
  a2c413:	00 
  a2c414:	c4 e3 75 18 cd 01    	vinsertf128 ymm1,ymm1,xmm5,0x1
  a2c41a:	62 f3 ed 48 1a c9 01 	vinsertf64x4 zmm1,zmm2,ymm1,0x1
  a2c421:	62 62 fd c9 88 f9    	vexpandpd zmm31{k1}{z},zmm1
  a2c427:	62 51 7c 48 28 d4    	vmovaps zmm10,zmm12
  a2c42d:	62 12 65 48 7f d7    	vpermt2ps zmm10,zmm3,zmm31
  a2c433:	62 51 5c 48 58 ca    	vaddps zmm9,zmm4,zmm10
  a2c439:	62 71 7c 48 10 bf f0 	vmovups zmm15,ZMMWORD PTR [rdi+0xf0]
  a2c440:	00 00 00 
  a2c443:	c5 f8 10 97 50 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x150]
  a2c44a:	00 
  a2c44b:	c4 e3 69 21 97 54 01 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x154],0x10
  a2c452:	00 00 10 
  a2c455:	c4 e2 79 18 b7 58 01 	vbroadcastss xmm6,DWORD PTR [rdi+0x158]
  a2c45c:	00 00 
  a2c45e:	c5 fc 10 bf 30 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x130]
  a2c465:	00 
  a2c466:	c4 e3 49 0c d2 03    	vblendps xmm2,xmm6,xmm2,0x3
  a2c46c:	c4 e3 69 21 97 5c 01 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x15c],0x30
  a2c473:	00 00 30 
  a2c476:	c5 fb 10 b7 60 01 00 	vmovsd xmm6,QWORD PTR [rdi+0x160]
  a2c47d:	00 
  a2c47e:	c4 e3 6d 18 d6 01    	vinsertf128 ymm2,ymm2,xmm6,0x1
  a2c484:	62 f3 c5 48 1a d2 01 	vinsertf64x4 zmm2,zmm7,ymm2,0x1
  a2c48b:	62 72 fd c9 88 f2    	vexpandpd zmm14{k1}{z},zmm2
  a2c491:	62 51 7c 48 28 df    	vmovaps zmm11,zmm15
  a2c497:	62 52 65 48 7f de    	vpermt2ps zmm11,zmm3,zmm14
  a2c49d:	62 f1 7c 48 10 97 d0 	vmovups zmm2,ZMMWORD PTR [rdi+0x2d0]
  a2c4a4:	02 00 00 
  a2c4a7:	c5 f8 10 b7 30 03 00 	vmovups xmm6,XMMWORD PTR [rdi+0x330]
  a2c4ae:	00 
  a2c4af:	c4 e3 49 21 b7 34 03 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x334],0x10
  a2c4b6:	00 00 10 
  a2c4b9:	c4 e2 79 18 bf 38 03 	vbroadcastss xmm7,DWORD PTR [rdi+0x338]
  a2c4c0:	00 00 
  a2c4c2:	c5 7c 10 87 10 03 00 	vmovups ymm8,YMMWORD PTR [rdi+0x310]
  a2c4c9:	00 
  a2c4ca:	c4 e3 41 0c f6 03    	vblendps xmm6,xmm7,xmm6,0x3
  a2c4d0:	c4 e3 49 21 b7 3c 03 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x33c],0x30
  a2c4d7:	00 00 30 
  a2c4da:	c5 fb 10 bf 40 03 00 	vmovsd xmm7,QWORD PTR [rdi+0x340]
  a2c4e1:	00 
  a2c4e2:	c4 e3 4d 18 f7 01    	vinsertf128 ymm6,ymm6,xmm7,0x1
  a2c4e8:	62 f3 bd 48 1a f6 01 	vinsertf64x4 zmm6,zmm8,ymm6,0x1
  a2c4ef:	62 e2 fd c9 88 c6    	vexpandpd zmm16{k1}{z},zmm6
  a2c4f5:	62 e1 7c 48 28 f2    	vmovaps zmm22,zmm2
  a2c4fb:	62 a2 65 48 7f f0    	vpermt2ps zmm22,zmm3,zmm16
  a2c501:	62 a1 24 48 58 ee    	vaddps zmm21,zmm11,zmm22
  a2c507:	62 31 34 48 58 ed    	vaddps zmm13,zmm9,zmm21
  a2c50d:	62 e1 7c 48 10 97 78 	vmovups zmm18,ZMMWORD PTR [rdi+0x78]
  a2c514:	00 00 00 
  a2c517:	c5 f8 10 b7 d8 00 00 	vmovups xmm6,XMMWORD PTR [rdi+0xd8]
  a2c51e:	00 
  a2c51f:	c4 e3 49 21 b7 dc 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0xdc],0x10
  a2c526:	00 00 10 
  a2c529:	c5 fc 10 bf b8 00 00 	vmovups ymm7,YMMWORD PTR [rdi+0xb8]
  a2c530:	00 
  a2c531:	c4 62 79 18 87 e0 00 	vbroadcastss xmm8,DWORD PTR [rdi+0xe0]
  a2c538:	00 00 
  a2c53a:	c4 e3 39 0c f6 03    	vblendps xmm6,xmm8,xmm6,0x3
  a2c540:	c4 e3 49 21 b7 e4 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0xe4],0x30
  a2c547:	00 00 30 
  a2c54a:	c5 7b 10 87 e8 00 00 	vmovsd xmm8,QWORD PTR [rdi+0xe8]
  a2c551:	00 
  a2c552:	c4 c3 4d 18 f0 01    	vinsertf128 ymm6,ymm6,xmm8,0x1
  a2c558:	62 f3 c5 48 1a f6 01 	vinsertf64x4 zmm6,zmm7,ymm6,0x1
  a2c55f:	62 62 fd c9 88 c6    	vexpandpd zmm24{k1}{z},zmm6
  a2c565:	62 b1 7c 48 28 fa    	vmovaps zmm7,zmm18
  a2c56b:	62 92 65 48 7f f8    	vpermt2ps zmm7,zmm3,zmm24
  a2c571:	62 e1 7c 48 10 9f 58 	vmovups zmm19,ZMMWORD PTR [rdi+0x258]
  a2c578:	02 00 00 
  a2c57b:	c5 f8 10 b7 b8 02 00 	vmovups xmm6,XMMWORD PTR [rdi+0x2b8]
  a2c582:	00 
  a2c583:	c4 e3 49 21 b7 bc 02 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x2bc],0x10
  a2c58a:	00 00 10 
  a2c58d:	c5 7c 10 87 98 02 00 	vmovups ymm8,YMMWORD PTR [rdi+0x298]
  a2c594:	00 
  a2c595:	c4 e2 79 18 87 c0 02 	vbroadcastss xmm0,DWORD PTR [rdi+0x2c0]
  a2c59c:	00 00 
  a2c59e:	c4 e3 79 0c c6 03    	vblendps xmm0,xmm0,xmm6,0x3
  a2c5a4:	c4 e3 79 21 87 c4 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c4],0x30
  a2c5ab:	00 00 30 
  a2c5ae:	c5 fb 10 b7 c8 02 00 	vmovsd xmm6,QWORD PTR [rdi+0x2c8]
  a2c5b5:	00 
  a2c5b6:	c4 e3 7d 18 c6 01    	vinsertf128 ymm0,ymm0,xmm6,0x1
  a2c5bc:	62 f3 bd 48 1a c0 01 	vinsertf64x4 zmm0,zmm8,ymm0,0x1
  a2c5c3:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a2c5c9:	62 a1 7c 48 28 fb    	vmovaps zmm23,zmm19
  a2c5cf:	62 e2 65 48 7f f8    	vpermt2ps zmm23,zmm3,zmm0
  a2c5d5:	62 b1 44 48 58 cf    	vaddps zmm1,zmm7,zmm23
  a2c5db:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a2c5e2:	0a 
  a2c5e3:	62 e1 7c 48 10 a7 68 	vmovups zmm20,ZMMWORD PTR [rdi+0x168]
  a2c5ea:	01 00 00 
  a2c5ed:	c5 78 10 87 c8 01 00 	vmovups xmm8,XMMWORD PTR [rdi+0x1c8]
  a2c5f4:	00 
  a2c5f5:	62 e1 7c 28 10 8f a8 	vmovups ymm17,YMMWORD PTR [rdi+0x1a8]
  a2c5fc:	01 00 00 
  a2c5ff:	c4 63 39 21 87 cc 01 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0x1cc],0x10
  a2c606:	00 00 10 
  a2c609:	c4 e2 79 18 af d0 01 	vbroadcastss xmm5,DWORD PTR [rdi+0x1d0]
  a2c610:	00 00 
  a2c612:	c4 c3 51 0c e8 03    	vblendps xmm5,xmm5,xmm8,0x3
  a2c618:	c4 e3 51 21 af d4 01 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x1d4],0x30
  a2c61f:	00 00 30 
  a2c622:	c5 7b 10 87 d8 01 00 	vmovsd xmm8,QWORD PTR [rdi+0x1d8]
  a2c629:	00 
  a2c62a:	c4 c3 55 18 e8 01    	vinsertf128 ymm5,ymm5,xmm8,0x1
  a2c630:	62 f3 f5 40 1a ed 01 	vinsertf64x4 zmm5,zmm17,ymm5,0x1
  a2c637:	62 f2 fd c9 88 ed    	vexpandpd zmm5{k1}{z},zmm5
  a2c63d:	62 21 7c 48 28 dc    	vmovaps zmm27,zmm20
  a2c643:	62 62 65 48 7f dd    	vpermt2ps zmm27,zmm3,zmm5
  a2c649:	62 61 7c 48 10 a7 48 	vmovups zmm28,ZMMWORD PTR [rdi+0x348]
  a2c650:	03 00 00 
  a2c653:	c5 78 10 87 a8 03 00 	vmovups xmm8,XMMWORD PTR [rdi+0x3a8]
  a2c65a:	00 
  a2c65b:	62 e1 7c 28 10 8f 88 	vmovups ymm17,YMMWORD PTR [rdi+0x388]
  a2c662:	03 00 00 
  a2c665:	c4 63 39 21 87 ac 03 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0x3ac],0x10
  a2c66c:	00 00 10 
  a2c66f:	c4 e2 79 18 b7 b0 03 	vbroadcastss xmm6,DWORD PTR [rdi+0x3b0]
  a2c676:	00 00 
  a2c678:	c4 c3 49 0c f0 03    	vblendps xmm6,xmm6,xmm8,0x3
  a2c67e:	c4 e3 49 21 b7 b4 03 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x3b4],0x30
  a2c685:	00 00 30 
  a2c688:	c5 7b 10 87 b8 03 00 	vmovsd xmm8,QWORD PTR [rdi+0x3b8]
  a2c68f:	00 
  a2c690:	c4 c3 4d 18 f0 01    	vinsertf128 ymm6,ymm6,xmm8,0x1
  a2c696:	62 f3 f5 40 1a f6 01 	vinsertf64x4 zmm6,zmm17,ymm6,0x1
  a2c69d:	62 f2 fd c9 88 f6    	vexpandpd zmm6{k1}{z},zmm6
  a2c6a3:	62 f2 1d 40 77 de    	vpermi2ps zmm3,zmm28,zmm6
  a2c6a9:	62 e1 24 40 58 cb    	vaddps zmm17,zmm27,zmm3
  a2c6af:	62 21 74 48 58 c9    	vaddps zmm25,zmm1,zmm17
  a2c6b5:	62 01 14 48 58 e9    	vaddps zmm29,zmm13,zmm25
  a2c6bb:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm29
  a2c6c2:	07 
  a2c6c3:	62 71 7c 48 28 05 f3 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff69a8f3]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a2c6ca:	a8 69 ff 
  a2c6cd:	62 91 14 48 5c c9    	vsubps zmm1,zmm13,zmm25
  a2c6d3:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a2c6da:	02 
  a2c6db:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a2c6e0:	62 31 34 48 5c cd    	vsubps zmm9,zmm9,zmm21
  a2c6e6:	62 61 7c 48 28 0d 10 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff664110]        # 90800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dcb0>
  a2c6ed:	41 66 ff 
  a2c6f0:	62 82 35 40 7f d0    	vpermt2ps zmm18,zmm25,zmm24
  a2c6f6:	62 e2 35 40 7f d8    	vpermt2ps zmm19,zmm25,zmm0
  a2c6fc:	62 21 6c 40 58 c3    	vaddps zmm24,zmm18,zmm19
  a2c702:	62 e2 35 40 7f e5    	vpermt2ps zmm20,zmm25,zmm5
  a2c708:	62 62 35 40 7f e6    	vpermt2ps zmm28,zmm25,zmm6
  a2c70e:	62 01 5c 40 58 d4    	vaddps zmm26,zmm20,zmm28
  a2c714:	62 91 3c 40 5c c2    	vsubps zmm0,zmm24,zmm26
  a2c71a:	62 e1 34 48 58 e8    	vaddps zmm21,zmm9,zmm0
  a2c720:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm21
  a2c727:	05 
  a2c728:	62 71 34 48 5c c8    	vsubps zmm9,zmm9,zmm0
  a2c72e:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm9
  a2c735:	09 
  a2c736:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a2c73c:	62 d2 3d 48 7f c5    	vpermt2ps zmm0,zmm8,zmm13
  a2c742:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a2c749:	08 
  a2c74a:	62 d1 5c 48 5c c2    	vsubps zmm0,zmm4,zmm10
  a2c750:	62 52 35 40 7f fe    	vpermt2ps zmm15,zmm25,zmm14
  a2c756:	62 b2 35 40 7f d0    	vpermt2ps zmm2,zmm25,zmm16
  a2c75c:	62 f1 04 48 5c e2    	vsubps zmm4,zmm15,zmm2
  a2c762:	62 f1 7c 48 58 ec    	vaddps zmm5,zmm0,zmm4
  a2c768:	62 b1 44 48 5c f7    	vsubps zmm6,zmm7,zmm23
  a2c76e:	62 31 6c 40 5c d3    	vsubps zmm10,zmm18,zmm19
  a2c774:	62 72 7d 48 18 35 1e 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff648c1e]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a2c77b:	8c 64 ff 
  a2c77e:	62 d1 4c 48 58 fa    	vaddps zmm7,zmm6,zmm10
  a2c784:	62 c1 44 48 59 de    	vmulps zmm19,zmm7,zmm14
  a2c78a:	62 81 5c 40 5c c4    	vsubps zmm16,zmm20,zmm28
  a2c790:	62 f1 24 40 5c db    	vsubps zmm3,zmm27,zmm3
  a2c796:	62 f1 7c 40 5c fb    	vsubps zmm7,zmm16,zmm3
  a2c79c:	62 c1 44 48 59 e6    	vmulps zmm20,zmm7,zmm14
  a2c7a2:	62 b1 64 40 58 fc    	vaddps zmm7,zmm19,zmm20
  a2c7a8:	62 e1 54 48 58 d7    	vaddps zmm18,zmm5,zmm7
  a2c7ae:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm18
  a2c7b5:	0c 
  a2c7b6:	62 f1 54 48 5c ff    	vsubps zmm7,zmm5,zmm7
  a2c7bc:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm7
  a2c7c3:	0b 
  a2c7c4:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a2c7ca:	62 42 3d 48 7f e5    	vpermt2ps zmm28,zmm8,zmm13
  a2c7d0:	62 f1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm4
  a2c7d6:	62 c2 3d 48 7f ed    	vpermt2ps zmm21,zmm8,zmm13
  a2c7dc:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm21
  a2c7e3:	01 
  a2c7e4:	62 f1 2c 48 5c e6    	vsubps zmm4,zmm10,zmm6
  a2c7ea:	62 c1 7c 48 28 f9    	vmovaps zmm23,zmm9
  a2c7f0:	62 c2 3d 48 7f fd    	vpermt2ps zmm23,zmm8,zmm13
  a2c7f6:	62 b1 64 48 58 d8    	vaddps zmm3,zmm3,zmm16
  a2c7fc:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a2c802:	62 d2 3d 48 7f cd    	vpermt2ps zmm1,zmm8,zmm13
  a2c808:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a2c80f:	06 
  a2c810:	62 d1 5c 48 59 e6    	vmulps zmm4,zmm4,zmm14
  a2c816:	62 d1 64 48 59 ee    	vmulps zmm5,zmm3,zmm14
  a2c81c:	62 71 7c 48 28 cf    	vmovaps zmm9,zmm7
  a2c822:	62 52 3d 48 7f cd    	vpermt2ps zmm9,zmm8,zmm13
  a2c828:	62 62 35 40 7f 74 24 	vpermt2ps zmm30,zmm25,ZMMWORD PTR [rsp+0x100]
  a2c82f:	04 
  a2c830:	62 f1 5c 48 58 dd    	vaddps zmm3,zmm4,zmm5
  a2c836:	62 12 35 40 7f e7    	vpermt2ps zmm12,zmm25,zmm31
  a2c83c:	62 f1 7c 48 58 f3    	vaddps zmm6,zmm0,zmm3
  a2c842:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a2c848:	62 61 7c 48 28 fe    	vmovaps zmm31,zmm6
  a2c84e:	62 d2 3d 48 7f cd    	vpermt2ps zmm1,zmm8,zmm13
  a2c854:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a2c85b:	03 
  a2c85c:	62 e1 7c 48 5c c3    	vsubps zmm16,zmm0,zmm3
  a2c862:	62 d1 0c 40 58 dc    	vaddps zmm3,zmm30,zmm12
  a2c868:	62 f1 04 48 58 f2    	vaddps zmm6,zmm15,zmm2
  a2c86e:	62 f1 64 48 58 ce    	vaddps zmm1,zmm3,zmm6
  a2c874:	62 91 3c 40 58 d2    	vaddps zmm2,zmm24,zmm26
  a2c87a:	62 f1 74 48 58 c2    	vaddps zmm0,zmm1,zmm2
  a2c880:	62 71 74 48 5c f2    	vsubps zmm14,zmm1,zmm2
  a2c886:	62 a1 7c 48 28 e8    	vmovaps zmm21,zmm16
  a2c88c:	62 c2 3d 48 7f ed    	vpermt2ps zmm21,zmm8,zmm13
  a2c892:	62 71 74 40 5c 54 24 	vsubps zmm10,zmm17,ZMMWORD PTR [rsp+0x280]
  a2c899:	0a 
  a2c89a:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a2c8a0:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a2c8a6:	62 42 3d 48 7f ed    	vpermt2ps zmm29,zmm8,zmm13
  a2c8ac:	62 f1 64 48 5c de    	vsubps zmm3,zmm3,zmm6
  a2c8b2:	62 f1 2c 48 58 c3    	vaddps zmm0,zmm10,zmm3
  a2c8b8:	62 41 64 48 5c ca    	vsubps zmm25,zmm3,zmm10
  a2c8be:	62 d1 7c 48 28 de    	vmovaps zmm3,zmm14
  a2c8c4:	62 d2 3d 48 7f dd    	vpermt2ps zmm3,zmm8,zmm13
  a2c8ca:	62 d1 4c 40 5c f3    	vsubps zmm6,zmm22,zmm11
  a2c8d0:	62 e1 7c 48 28 d0    	vmovaps zmm18,zmm0
  a2c8d6:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a2c8dc:	62 c2 3d 48 7f d5    	vpermt2ps zmm18,zmm8,zmm13
  a2c8e2:	62 51 0c 40 5c d4    	vsubps zmm10,zmm30,zmm12
  a2c8e8:	62 51 4c 48 58 da    	vaddps zmm11,zmm6,zmm10
  a2c8ee:	62 f1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm5
  a2c8f4:	62 61 24 48 58 f4    	vaddps zmm30,zmm11,zmm4
  a2c8fa:	62 f1 24 48 5c fc    	vsubps zmm7,zmm11,zmm4
  a2c900:	62 01 7c 48 28 c1    	vmovaps zmm24,zmm25
  a2c906:	62 42 3d 48 7f c5    	vpermt2ps zmm24,zmm8,zmm13
  a2c90c:	62 f1 2c 48 5c ee    	vsubps zmm5,zmm10,zmm6
  a2c912:	62 91 7c 48 28 f6    	vmovaps zmm6,zmm30
  a2c918:	62 d2 3d 48 7f f5    	vpermt2ps zmm6,zmm8,zmm13
  a2c91e:	62 31 5c 40 5c e3    	vsubps zmm12,zmm20,zmm19
  a2c924:	62 51 54 48 58 d4    	vaddps zmm10,zmm5,zmm12
  a2c92a:	62 41 54 48 5c dc    	vsubps zmm27,zmm5,zmm12
  a2c930:	62 71 7c 48 28 df    	vmovaps zmm11,zmm7
  a2c936:	62 52 3d 48 7f dd    	vpermt2ps zmm11,zmm8,zmm13
  a2c93c:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a2c942:	62 52 3d 48 7f fd    	vpermt2ps zmm15,zmm8,zmm13
  a2c948:	62 52 25 40 77 c5    	vpermi2ps zmm8,zmm27,zmm13
  a2c94e:	62 71 7c 48 28 25 28 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff69a628]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a2c955:	a6 69 ff 
  a2c958:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x1c0]
  a2c95f:	07 
  a2c960:	62 d2 1d 48 7f d5    	vpermt2ps zmm2,zmm12,zmm13
  a2c966:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x80]
  a2c96d:	02 
  a2c96e:	62 c2 1d 48 7f cd    	vpermt2ps zmm17,zmm12,zmm13
  a2c974:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x140]
  a2c97b:	05 
  a2c97c:	62 d2 1d 48 7f ed    	vpermt2ps zmm5,zmm12,zmm13
  a2c982:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x240]
  a2c989:	09 
  a2c98a:	62 d2 1d 48 7f e5    	vpermt2ps zmm4,zmm12,zmm13
  a2c990:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x300]
  a2c997:	0c 
  a2c998:	62 d2 1d 48 7f cd    	vpermt2ps zmm1,zmm12,zmm13
  a2c99e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a2c9a5:	0b 
  a2c9a6:	62 d2 1d 48 7f c5    	vpermt2ps zmm0,zmm12,zmm13
  a2c9ac:	62 42 1d 48 7f fd    	vpermt2ps zmm31,zmm12,zmm13
  a2c9b2:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm31
  a2c9b9:	04 
  a2c9ba:	62 c2 1d 48 7f c5    	vpermt2ps zmm16,zmm12,zmm13
  a2c9c0:	62 42 1d 48 7f d5    	vpermt2ps zmm26,zmm12,zmm13
  a2c9c6:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm26
  a2c9cd:	02 
  a2c9ce:	62 52 1d 48 7f f5    	vpermt2ps zmm14,zmm12,zmm13
  a2c9d4:	62 c2 1d 48 7f f5    	vpermt2ps zmm22,zmm12,zmm13
  a2c9da:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm22
  a2c9e1:	09 
  a2c9e2:	62 42 1d 48 7f cd    	vpermt2ps zmm25,zmm12,zmm13
  a2c9e8:	62 42 1d 48 7f f5    	vpermt2ps zmm30,zmm12,zmm13
  a2c9ee:	62 d2 1d 48 7f fd    	vpermt2ps zmm7,zmm12,zmm13
  a2c9f4:	62 52 1d 48 7f d5    	vpermt2ps zmm10,zmm12,zmm13
  a2c9fa:	62 42 1d 48 7f dd    	vpermt2ps zmm27,zmm12,zmm13
  a2ca00:	62 61 7c 48 28 3d f6 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff69a4f6]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a2ca07:	a4 69 ff 
  a2ca0a:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x200]
  a2ca11:	08 
  a2ca12:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a2ca18:	62 12 05 40 7f ec    	vpermt2ps zmm13,zmm31,zmm28
  a2ca1e:	62 e1 7c 48 28 25 18 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff69a518]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a2ca25:	a5 69 ff 
  a2ca28:	62 12 5d 40 7f e4    	vpermt2ps zmm12,zmm20,zmm28
  a2ca2e:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm12
  a2ca35:	08 
  a2ca36:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x40]
  a2ca3d:	01 
  a2ca3e:	62 41 7c 48 28 d4    	vmovaps zmm26,zmm12
  a2ca44:	62 22 05 40 7f d7    	vpermt2ps zmm26,zmm31,zmm23
  a2ca4a:	62 32 5d 40 7f e7    	vpermt2ps zmm12,zmm20,zmm23
  a2ca50:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm12
  a2ca57:	01 
  a2ca58:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x180]
  a2ca5f:	06 
  a2ca60:	62 41 7c 48 28 e4    	vmovaps zmm28,zmm12
  a2ca66:	62 42 05 40 7f e1    	vpermt2ps zmm28,zmm31,zmm9
  a2ca6c:	62 52 5d 40 7f e1    	vpermt2ps zmm12,zmm20,zmm9
  a2ca72:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm12
  a2ca79:	06 
  a2ca7a:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0xc0]
  a2ca81:	03 
  a2ca82:	62 c1 7c 48 28 d9    	vmovaps zmm19,zmm9
  a2ca88:	62 a2 05 40 7f dd    	vpermt2ps zmm19,zmm31,zmm21
  a2ca8e:	62 32 5d 40 7f cd    	vpermt2ps zmm9,zmm20,zmm21
  a2ca94:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm9
  a2ca9b:	03 
  a2ca9c:	62 81 7c 48 28 ed    	vmovaps zmm21,zmm29
  a2caa2:	62 e2 05 40 7f eb    	vpermt2ps zmm21,zmm31,zmm3
  a2caa8:	62 62 5d 40 7f eb    	vpermt2ps zmm29,zmm20,zmm3
  a2caae:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm29
  a2cab5:	11 
  a2cab6:	62 a1 7c 48 28 f2    	vmovaps zmm22,zmm18
  a2cabc:	62 82 05 40 7f f0    	vpermt2ps zmm22,zmm31,zmm24
  a2cac2:	62 82 5d 40 7f d0    	vpermt2ps zmm18,zmm20,zmm24
  a2cac8:	62 e1 7c 48 28 fe    	vmovaps zmm23,zmm6
  a2cace:	62 c2 05 40 7f fb    	vpermt2ps zmm23,zmm31,zmm11
  a2cad4:	62 d2 5d 40 7f f3    	vpermt2ps zmm6,zmm20,zmm11
  a2cada:	62 41 7c 48 28 c7    	vmovaps zmm24,zmm15
  a2cae0:	62 42 05 40 7f c0    	vpermt2ps zmm24,zmm31,zmm8
  a2cae6:	62 52 5d 40 7f f8    	vpermt2ps zmm15,zmm20,zmm8
  a2caec:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a2caf2:	62 32 05 40 7f c1    	vpermt2ps zmm8,zmm31,zmm17
  a2caf8:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a2cafe:	62 b2 5d 40 7f d1    	vpermt2ps zmm2,zmm20,zmm17
  a2cb04:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm2
  a2cb0b:	07 
  a2cb0c:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a2cb12:	62 f2 05 40 7f ec    	vpermt2ps zmm5,zmm31,zmm4
  a2cb18:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm5
  a2cb1f:	10 
  a2cb20:	62 f2 5d 40 7f d4    	vpermt2ps zmm2,zmm20,zmm4
  a2cb26:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a2cb2d:	05 
  a2cb2e:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a2cb34:	62 f2 05 40 7f c8    	vpermt2ps zmm1,zmm31,zmm0
  a2cb3a:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a2cb40:	62 f2 5d 40 7f d0    	vpermt2ps zmm2,zmm20,zmm0
  a2cb46:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm2
  a2cb4d:	0c 
  a2cb4e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a2cb55:	04 
  a2cb56:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a2cb5c:	62 22 05 40 7f e8    	vpermt2ps zmm29,zmm31,zmm16
  a2cb62:	62 b2 5d 40 7f c0    	vpermt2ps zmm0,zmm20,zmm16
  a2cb68:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a2cb6f:	04 
  a2cb70:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a2cb77:	02 
  a2cb78:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a2cb7e:	62 d2 05 40 7f de    	vpermt2ps zmm3,zmm31,zmm14
  a2cb84:	62 d2 5d 40 7f c6    	vpermt2ps zmm0,zmm20,zmm14
  a2cb8a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a2cb91:	02 
  a2cb92:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a2cb99:	09 
  a2cb9a:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a2cba0:	62 12 05 40 7f c9    	vpermt2ps zmm9,zmm31,zmm25
  a2cba6:	62 92 5d 40 7f c1    	vpermt2ps zmm0,zmm20,zmm25
  a2cbac:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a2cbb3:	09 
  a2cbb4:	62 11 7c 48 28 e6    	vmovaps zmm12,zmm30
  a2cbba:	62 72 05 40 7f e7    	vpermt2ps zmm12,zmm31,zmm7
  a2cbc0:	62 62 5d 40 7f f7    	vpermt2ps zmm30,zmm20,zmm7
  a2cbc6:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm30
  a2cbcd:	15 
  a2cbce:	62 02 2d 48 77 fb    	vpermi2ps zmm31,zmm10,zmm27
  a2cbd4:	62 12 5d 40 7f d3    	vpermt2ps zmm10,zmm20,zmm27
  a2cbda:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm10
  a2cbe1:	14 
  a2cbe2:	62 61 7c 48 28 35 14 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff69a214]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2cbe9:	a2 69 ff 
  a2cbec:	62 91 95 48 14 c2    	vunpcklpd zmm0,zmm13,zmm26
  a2cbf2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a2cbf9:	0f 
  a2cbfa:	62 b1 9d 40 14 cb    	vunpcklpd zmm1,zmm28,zmm19
  a2cc00:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm1
  a2cc07:	1c 
  a2cc08:	62 f2 0d 40 7f c1    	vpermt2ps zmm0,zmm30,zmm1
  a2cc0e:	62 b1 d5 40 14 ce    	vunpcklpd zmm1,zmm21,zmm22
  a2cc14:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm1
  a2cc1b:	0e 
  a2cc1c:	62 91 c5 40 14 d0    	vunpcklpd zmm2,zmm23,zmm24
  a2cc22:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm2
  a2cc29:	1b 
  a2cc2a:	62 f2 0d 40 7f ca    	vpermt2ps zmm1,zmm30,zmm2
  a2cc30:	62 f1 7c 48 10 52 11 	vmovups zmm2,ZMMWORD PTR [rdx+0x440]
  a2cc37:	62 f1 7c 48 10 62 10 	vmovups zmm4,ZMMWORD PTR [rdx+0x400]
  a2cc3e:	62 71 74 48 59 c4    	vmulps zmm8,zmm1,zmm4
  a2cc44:	62 72 7d 48 b8 c2    	vfmadd231ps zmm8,zmm0,zmm2
  a2cc4a:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm8
  a2cc51:	23 
  a2cc52:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a2cc58:	62 f2 6d 48 bc c1    	vfnmadd231ps zmm0,zmm2,zmm1
  a2cc5e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a2cc65:	0b 
  a2cc66:	62 f1 a5 48 15 c5    	vunpckhpd zmm0,zmm11,zmm5
  a2cc6c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm0
  a2cc73:	17 
  a2cc74:	62 d1 7c 48 28 fb    	vmovaps zmm7,zmm11
  a2cc7a:	62 91 f5 40 15 cd    	vunpckhpd zmm1,zmm17,zmm29
  a2cc80:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm1
  a2cc87:	16 
  a2cc88:	62 31 7c 48 28 d1    	vmovaps zmm10,zmm17
  a2cc8e:	62 f2 0d 40 7f c1    	vpermt2ps zmm0,zmm30,zmm1
  a2cc94:	62 41 e5 48 15 d9    	vunpckhpd zmm27,zmm3,zmm9
  a2cc9a:	62 91 9d 48 15 d7    	vunpckhpd zmm2,zmm12,zmm31
  a2cca0:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm2
  a2cca7:	0d 
  a2cca8:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a2ccae:	62 f2 0d 40 7f ca    	vpermt2ps zmm1,zmm30,zmm2
  a2ccb4:	62 71 7c 48 10 42 04 	vmovups zmm8,ZMMWORD PTR [rdx+0x100]
  a2ccbb:	62 71 7c 48 10 5a 05 	vmovups zmm11,ZMMWORD PTR [rdx+0x140]
  a2ccc2:	62 41 74 48 59 c8    	vmulps zmm25,zmm1,zmm8
  a2ccc8:	62 42 7d 48 b8 cb    	vfmadd231ps zmm25,zmm0,zmm11
  a2ccce:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm25
  a2ccd5:	22 
  a2ccd6:	62 d1 7c 48 59 c0    	vmulps zmm0,zmm0,zmm8
  a2ccdc:	62 f2 25 48 bc c1    	vfnmadd231ps zmm0,zmm11,zmm1
  a2cce2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a2cce9:	0a 
  a2ccea:	62 01 95 48 15 ca    	vunpckhpd zmm25,zmm13,zmm26
  a2ccf0:	62 b1 9d 40 15 d3    	vunpckhpd zmm2,zmm28,zmm19
  a2ccf6:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm2
  a2ccfd:	19 
  a2ccfe:	62 b1 d5 40 15 ce    	vunpckhpd zmm1,zmm21,zmm22
  a2cd04:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm1
  a2cd0b:	1f 
  a2cd0c:	62 11 c5 40 15 d8    	vunpckhpd zmm11,zmm23,zmm24
  a2cd12:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm11
  a2cd19:	1e 
  a2cd1a:	62 71 7c 48 28 05 1c 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff69a11c]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a2cd21:	a1 69 ff 
  a2cd24:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a2cd2a:	62 f2 3d 48 7f c2    	vpermt2ps zmm0,zmm8,zmm2
  a2cd30:	62 d2 3d 48 7f cb    	vpermt2ps zmm1,zmm8,zmm11
  a2cd36:	62 71 7c 48 10 5a 17 	vmovups zmm11,ZMMWORD PTR [rdx+0x5c0]
  a2cd3d:	62 71 7c 48 10 6a 16 	vmovups zmm13,ZMMWORD PTR [rdx+0x580]
  a2cd44:	62 c1 74 48 59 dd    	vmulps zmm19,zmm1,zmm13
  a2cd4a:	62 c2 7d 48 b8 db    	vfmadd231ps zmm19,zmm0,zmm11
  a2cd50:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm19
  a2cd57:	21 
  a2cd58:	62 d1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm13
  a2cd5e:	62 f2 25 48 bc c1    	vfnmadd231ps zmm0,zmm11,zmm1
  a2cd64:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a2cd6b:	13 
  a2cd6c:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x200]
  a2cd73:	08 
  a2cd74:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x40]
  a2cd7b:	01 
  a2cd7c:	62 f1 ed 48 15 c4    	vunpckhpd zmm0,zmm2,zmm4
  a2cd82:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x180]
  a2cd89:	06 
  a2cd8a:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0xc0]
  a2cd91:	03 
  a2cd92:	62 b1 d5 48 15 c8    	vunpckhpd zmm1,zmm5,zmm16
  a2cd98:	62 f2 0d 40 7f c1    	vpermt2ps zmm0,zmm30,zmm1
  a2cd9e:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x440]
  a2cda5:	11 
  a2cda6:	62 b1 8d 48 15 ca    	vunpckhpd zmm1,zmm14,zmm18
  a2cdac:	62 51 cd 48 15 df    	vunpckhpd zmm11,zmm6,zmm15
  a2cdb2:	62 d2 0d 40 7f cb    	vpermt2ps zmm1,zmm30,zmm11
  a2cdb8:	62 71 7c 48 10 5a 1d 	vmovups zmm11,ZMMWORD PTR [rdx+0x740]
  a2cdbf:	62 71 7c 48 10 6a 1c 	vmovups zmm13,ZMMWORD PTR [rdx+0x700]
  a2cdc6:	62 c1 74 48 59 dd    	vmulps zmm19,zmm1,zmm13
  a2cdcc:	62 c2 7d 48 b8 db    	vfmadd231ps zmm19,zmm0,zmm11
  a2cdd2:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm19
  a2cdd9:	20 
  a2cdda:	62 d1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm13
  a2cde0:	62 f2 25 48 bc c1    	vfnmadd231ps zmm0,zmm11,zmm1
  a2cde6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a2cded:	12 
  a2cdee:	62 e1 ed 48 14 cc    	vunpcklpd zmm17,zmm2,zmm4
  a2cdf4:	62 b1 d5 48 14 c0    	vunpcklpd zmm0,zmm5,zmm16
  a2cdfa:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a2ce01:	01 
  a2ce02:	62 31 8d 48 14 da    	vunpcklpd zmm11,zmm14,zmm18
  a2ce08:	62 41 cd 48 14 e7    	vunpcklpd zmm28,zmm6,zmm15
  a2ce0e:	62 b1 7c 48 28 f1    	vmovaps zmm6,zmm17
  a2ce14:	62 f2 3d 48 7f f0    	vpermt2ps zmm6,zmm8,zmm0
  a2ce1a:	62 51 7c 48 28 eb    	vmovaps zmm13,zmm11
  a2ce20:	62 12 3d 48 7f ec    	vpermt2ps zmm13,zmm8,zmm28
  a2ce26:	62 71 7c 48 10 72 1b 	vmovups zmm14,ZMMWORD PTR [rdx+0x6c0]
  a2ce2d:	62 71 7c 48 10 7a 1a 	vmovups zmm15,ZMMWORD PTR [rdx+0x680]
  a2ce34:	62 c1 14 48 59 c7    	vmulps zmm16,zmm13,zmm15
  a2ce3a:	62 c2 4d 48 b8 c6    	vfmadd231ps zmm16,zmm6,zmm14
  a2ce40:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm16
  a2ce47:	11 
  a2ce48:	62 d1 4c 48 59 f7    	vmulps zmm6,zmm6,zmm15
  a2ce4e:	62 d2 0d 48 bc f5    	vfnmadd231ps zmm6,zmm14,zmm13
  a2ce54:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm6
  a2ce5b:	1a 
  a2ce5c:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x1c0]
  a2ce63:	07 
  a2ce64:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0x140]
  a2ce6b:	05 
  a2ce6c:	62 81 ed 40 15 ea    	vunpckhpd zmm21,zmm18,zmm26
  a2ce72:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x300]
  a2ce79:	0c 
  a2ce7a:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x100]
  a2ce81:	04 
  a2ce82:	62 e1 cd 48 15 e5    	vunpckhpd zmm20,zmm6,zmm5
  a2ce88:	62 31 7c 48 28 ed    	vmovaps zmm13,zmm21
  a2ce8e:	62 32 3d 48 7f ec    	vpermt2ps zmm13,zmm8,zmm20
  a2ce94:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x80]
  a2ce9b:	02 
  a2ce9c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a2cea3:	09 
  a2cea4:	62 71 dd 48 15 f0    	vunpckhpd zmm14,zmm4,zmm0
  a2ceaa:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x540]
  a2ceb1:	15 
  a2ceb2:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x500]
  a2ceb9:	14 
  a2ceba:	62 e1 ed 48 15 c1    	vunpckhpd zmm16,zmm2,zmm1
  a2cec0:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a2cec6:	62 32 3d 48 7f f8    	vpermt2ps zmm15,zmm8,zmm16
  a2cecc:	62 e1 7c 48 10 5a 0f 	vmovups zmm19,ZMMWORD PTR [rdx+0x3c0]
  a2ced3:	62 e1 7c 48 10 7a 0e 	vmovups zmm23,ZMMWORD PTR [rdx+0x380]
  a2ceda:	62 21 04 48 59 c7    	vmulps zmm24,zmm15,zmm23
  a2cee0:	62 22 15 48 b8 c3    	vfmadd231ps zmm24,zmm13,zmm19
  a2cee6:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm24
  a2ceed:	1d 
  a2ceee:	62 31 14 48 59 ef    	vmulps zmm13,zmm13,zmm23
  a2cef4:	62 52 65 40 bc ef    	vfnmadd231ps zmm13,zmm19,zmm15
  a2cefa:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm13
  a2cf01:	08 
  a2cf02:	62 71 c5 48 14 6c 24 	vunpcklpd zmm13,zmm7,ZMMWORD PTR [rsp+0x400]
  a2cf09:	10 
  a2cf0a:	62 01 ad 48 14 c5    	vunpcklpd zmm24,zmm10,zmm29
  a2cf10:	62 51 e5 48 14 c9    	vunpcklpd zmm9,zmm3,zmm9
  a2cf16:	62 01 9d 48 14 ef    	vunpcklpd zmm29,zmm12,zmm31
  a2cf1c:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a2cf22:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a2cf28:	62 92 3d 48 7f d8    	vpermt2ps zmm3,zmm8,zmm24
  a2cf2e:	62 d1 7c 48 28 f9    	vmovaps zmm7,zmm9
  a2cf34:	62 41 7c 48 28 f9    	vmovaps zmm31,zmm9
  a2cf3a:	62 92 3d 48 7f fd    	vpermt2ps zmm7,zmm8,zmm29
  a2cf40:	62 71 7c 48 10 4a 02 	vmovups zmm9,ZMMWORD PTR [rdx+0x80]
  a2cf47:	62 71 7c 48 10 62 03 	vmovups zmm12,ZMMWORD PTR [rdx+0xc0]
  a2cf4e:	62 51 44 48 59 d1    	vmulps zmm10,zmm7,zmm9
  a2cf54:	62 52 65 48 b8 d4    	vfmadd231ps zmm10,zmm3,zmm12
  a2cf5a:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm10
  a2cf61:	10 
  a2cf62:	62 d1 64 48 59 d9    	vmulps zmm3,zmm3,zmm9
  a2cf68:	62 f2 1d 48 bc df    	vfnmadd231ps zmm3,zmm12,zmm7
  a2cf6e:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm3
  a2cf75:	18 
  a2cf76:	62 91 ed 40 14 da    	vunpcklpd zmm3,zmm18,zmm26
  a2cf7c:	62 71 cd 48 14 cd    	vunpcklpd zmm9,zmm6,zmm5
  a2cf82:	62 71 dd 48 14 e8    	vunpcklpd zmm13,zmm4,zmm0
  a2cf88:	62 71 ed 48 14 d1    	vunpcklpd zmm10,zmm2,zmm1
  a2cf8e:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a2cf94:	62 d2 0d 40 7f d9    	vpermt2ps zmm3,zmm30,zmm9
  a2cf9a:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a2cfa0:	62 52 0d 40 7f ea    	vpermt2ps zmm13,zmm30,zmm10
  a2cfa6:	62 e1 7c 48 10 52 09 	vmovups zmm18,ZMMWORD PTR [rdx+0x240]
  a2cfad:	62 f1 7c 48 10 7a 08 	vmovups zmm7,ZMMWORD PTR [rdx+0x200]
  a2cfb4:	62 e1 14 48 59 ff    	vmulps zmm23,zmm13,zmm7
  a2cfba:	62 a2 65 48 b8 fa    	vfmadd231ps zmm23,zmm3,zmm18
  a2cfc0:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm23
  a2cfc7:	02 
  a2cfc8:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a2cfce:	62 d2 6d 40 bc dd    	vfnmadd231ps zmm3,zmm18,zmm13
  a2cfd4:	62 e1 7c 48 28 f3    	vmovaps zmm22,zmm3
  a2cfda:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm3
  a2cfe1:	24 
  a2cfe2:	62 52 3d 48 7f e1    	vpermt2ps zmm12,zmm8,zmm9
  a2cfe8:	62 52 3d 48 7f fa    	vpermt2ps zmm15,zmm8,zmm10
  a2cfee:	62 62 3d 48 7f 5c 24 	vpermt2ps zmm27,zmm8,ZMMWORD PTR [rsp+0x340]
  a2cff5:	0d 
  a2cff6:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x5c0]
  a2cffd:	17 
  a2cffe:	62 f2 3d 48 7f 54 24 	vpermt2ps zmm2,zmm8,ZMMWORD PTR [rsp+0x580]
  a2d005:	16 
  a2d006:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x380]
  a2d00d:	0e 
  a2d00e:	62 f2 3d 48 7f 44 24 	vpermt2ps zmm0,zmm8,ZMMWORD PTR [rsp+0x6c0]
  a2d015:	1b 
  a2d016:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x3c0]
  a2d01d:	0f 
  a2d01e:	62 f2 3d 48 7f 7c 24 	vpermt2ps zmm7,zmm8,ZMMWORD PTR [rsp+0x700]
  a2d025:	1c 
  a2d026:	62 32 0d 40 7f f0    	vpermt2ps zmm14,zmm30,zmm16
  a2d02c:	62 a2 0d 40 7f ec    	vpermt2ps zmm21,zmm30,zmm20
  a2d032:	62 71 7c 48 10 42 0d 	vmovups zmm8,ZMMWORD PTR [rdx+0x340]
  a2d039:	62 f1 7c 48 10 5a 0c 	vmovups zmm3,ZMMWORD PTR [rdx+0x300]
  a2d040:	62 f1 54 40 59 f3    	vmulps zmm6,zmm21,zmm3
  a2d046:	62 d2 0d 48 bc f0    	vfnmadd231ps zmm6,zmm14,zmm8
  a2d04c:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm6
  a2d053:	14 
  a2d054:	62 f1 0c 48 59 cb    	vmulps zmm1,zmm14,zmm3
  a2d05a:	62 b2 3d 48 b8 cd    	vfmadd231ps zmm1,zmm8,zmm21
  a2d060:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm1
  a2d067:	0f 
  a2d068:	62 71 7c 48 10 42 13 	vmovups zmm8,ZMMWORD PTR [rdx+0x4c0]
  a2d06f:	62 71 7c 48 10 4a 12 	vmovups zmm9,ZMMWORD PTR [rdx+0x480]
  a2d076:	62 f1 7c 48 28 df    	vmovaps zmm3,zmm7
  a2d07c:	62 d1 44 48 59 c9    	vmulps zmm1,zmm7,zmm9
  a2d082:	62 d2 7d 48 bc c8    	vfnmadd231ps zmm1,zmm0,zmm8
  a2d088:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a2d08e:	62 c1 7c 48 59 e9    	vmulps zmm21,zmm0,zmm9
  a2d094:	62 e2 3d 48 b8 eb    	vfmadd231ps zmm21,zmm8,zmm3
  a2d09a:	62 71 7c 48 10 42 07 	vmovups zmm8,ZMMWORD PTR [rdx+0x1c0]
  a2d0a1:	62 71 7c 48 10 4a 06 	vmovups zmm9,ZMMWORD PTR [rdx+0x180]
  a2d0a8:	62 d1 6c 48 59 c1    	vmulps zmm0,zmm2,zmm9
  a2d0ae:	62 d2 25 40 bc c0    	vfnmadd231ps zmm0,zmm27,zmm8
  a2d0b4:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a2d0ba:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm0
  a2d0c1:	15 
  a2d0c2:	62 41 24 40 59 d1    	vmulps zmm26,zmm27,zmm9
  a2d0c8:	62 62 3d 48 b8 d2    	vfmadd231ps zmm26,zmm8,zmm2
  a2d0ce:	62 12 0d 40 7f dc    	vpermt2ps zmm11,zmm30,zmm28
  a2d0d4:	62 e2 0d 40 7f 4c 24 	vpermt2ps zmm17,zmm30,ZMMWORD PTR [rsp+0x40]
  a2d0db:	01 
  a2d0dc:	62 71 7c 48 10 42 19 	vmovups zmm8,ZMMWORD PTR [rdx+0x640]
  a2d0e3:	62 f1 7c 48 10 62 18 	vmovups zmm4,ZMMWORD PTR [rdx+0x600]
  a2d0ea:	62 f1 74 40 59 c4    	vmulps zmm0,zmm17,zmm4
  a2d0f0:	62 d2 25 48 bc c0    	vfnmadd231ps zmm0,zmm11,zmm8
  a2d0f6:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a2d0fc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a2d103:	0d 
  a2d104:	62 71 24 48 59 f4    	vmulps zmm14,zmm11,zmm4
  a2d10a:	62 32 3d 48 b8 f1    	vfmadd231ps zmm14,zmm8,zmm17
  a2d110:	62 f1 7c 48 10 42 0b 	vmovups zmm0,ZMMWORD PTR [rdx+0x2c0]
  a2d117:	62 f1 7c 48 10 4a 0a 	vmovups zmm1,ZMMWORD PTR [rdx+0x280]
  a2d11e:	62 f1 04 48 59 d1    	vmulps zmm2,zmm15,zmm1
  a2d124:	62 f2 1d 48 b8 d0    	vfmadd231ps zmm2,zmm12,zmm0
  a2d12a:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a2d131:	01 
  a2d132:	62 f1 1c 48 59 c9    	vmulps zmm1,zmm12,zmm1
  a2d138:	62 d2 7d 48 bc cf    	vfnmadd231ps zmm1,zmm0,zmm15
  a2d13e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a2d145:	0c 
  a2d146:	62 62 0d 40 7f 4c 24 	vpermt2ps zmm25,zmm30,ZMMWORD PTR [rsp+0x640]
  a2d14d:	19 
  a2d14e:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x7c0]
  a2d155:	1f 
  a2d156:	62 f2 0d 40 7f 5c 24 	vpermt2ps zmm3,zmm30,ZMMWORD PTR [rsp+0x780]
  a2d15d:	1e 
  a2d15e:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a2d165:	62 f1 7c 48 10 4a 14 	vmovups zmm1,ZMMWORD PTR [rdx+0x500]
  a2d16c:	62 f1 64 48 59 d1    	vmulps zmm2,zmm3,zmm1
  a2d172:	62 f2 35 40 b8 d0    	vfmadd231ps zmm2,zmm25,zmm0
  a2d178:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm2
  a2d17f:	06 
  a2d180:	62 f1 34 40 59 c9    	vmulps zmm1,zmm25,zmm1
  a2d186:	62 f2 7d 48 bc cb    	vfnmadd231ps zmm1,zmm0,zmm3
  a2d18c:	62 e1 7c 48 28 d1    	vmovaps zmm18,zmm1
  a2d192:	62 02 0d 40 7f fd    	vpermt2ps zmm31,zmm30,zmm29
  a2d198:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm31
  a2d19f:	07 
  a2d1a0:	62 82 0d 40 7f d8    	vpermt2ps zmm19,zmm30,zmm24
  a2d1a6:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm19
  a2d1ad:	04 
  a2d1ae:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a2d1b5:	0b 
  a2d1b6:	62 f1 7c 48 5c 44 24 	vsubps zmm0,zmm0,ZMMWORD PTR [rsp+0x280]
  a2d1bd:	0a 
  a2d1be:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x4c0]
  a2d1c5:	13 
  a2d1c6:	62 71 74 48 5c 44 24 	vsubps zmm8,zmm1,ZMMWORD PTR [rsp+0x480]
  a2d1cd:	12 
  a2d1ce:	62 72 7d 48 18 15 80 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff648580]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a2d1d5:	85 64 ff 
  a2d1d8:	62 d1 3c 48 59 ca    	vmulps zmm1,zmm8,zmm10
  a2d1de:	62 f2 7d 48 18 2d b8 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff6481b8]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a2d1e5:	81 64 ff 
  a2d1e8:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a2d1ee:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a2d1f5:	03 
  a2d1f6:	62 d1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm10
  a2d1fc:	62 d2 55 48 bc c0    	vfnmadd231ps zmm0,zmm5,zmm8
  a2d202:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a2d209:	0e 
  a2d20a:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x680]
  a2d211:	1a 
  a2d212:	62 f1 1c 48 5c 44 24 	vsubps zmm0,zmm12,ZMMWORD PTR [rsp+0x200]
  a2d219:	08 
  a2d21a:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x600]
  a2d221:	18 
  a2d222:	62 31 3c 40 5c c6    	vsubps zmm8,zmm24,zmm22
  a2d228:	62 d1 3c 48 59 ca    	vmulps zmm1,zmm8,zmm10
  a2d22e:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a2d234:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a2d23b:	05 
  a2d23c:	62 41 7c 48 59 fa    	vmulps zmm31,zmm0,zmm10
  a2d242:	62 42 55 48 bc f8    	vfnmadd231ps zmm31,zmm5,zmm8
  a2d248:	62 d1 14 48 5c c1    	vsubps zmm0,zmm13,zmm9
  a2d24e:	62 71 4c 48 5c c7    	vsubps zmm8,zmm6,zmm7
  a2d254:	62 61 7c 48 28 cf    	vmovaps zmm25,zmm7
  a2d25a:	62 d1 3c 48 59 d2    	vmulps zmm2,zmm8,zmm10
  a2d260:	62 f2 7d 48 b8 d5    	vfmadd231ps zmm2,zmm0,zmm5
  a2d266:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm2
  a2d26d:	09 
  a2d26e:	62 41 7c 48 59 f2    	vmulps zmm30,zmm0,zmm10
  a2d274:	62 42 55 48 bc f0    	vfnmadd231ps zmm30,zmm5,zmm8
  a2d27a:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x8c0]
  a2d281:	23 
  a2d282:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x880]
  a2d289:	22 
  a2d28a:	62 f1 44 40 5c c6    	vsubps zmm0,zmm23,zmm6
  a2d290:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x840]
  a2d297:	21 
  a2d298:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x800]
  a2d29f:	20 
  a2d2a0:	62 71 34 48 5c c7    	vsubps zmm8,zmm9,zmm7
  a2d2a6:	62 c1 3c 48 59 c2    	vmulps zmm16,zmm8,zmm10
  a2d2ac:	62 e2 7d 48 b8 c5    	vfmadd231ps zmm16,zmm0,zmm5
  a2d2b2:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm16
  a2d2b9:	1e 
  a2d2ba:	62 41 7c 48 59 ea    	vmulps zmm29,zmm0,zmm10
  a2d2c0:	62 42 55 48 bc e8    	vfnmadd231ps zmm29,zmm5,zmm8
  a2d2c6:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x440]
  a2d2cd:	11 
  a2d2ce:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x740]
  a2d2d5:	1d 
  a2d2d6:	62 f1 74 40 5c c4    	vsubps zmm0,zmm17,zmm4
  a2d2dc:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x400]
  a2d2e3:	10 
  a2d2e4:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x80]
  a2d2eb:	02 
  a2d2ec:	62 71 64 48 5c c2    	vsubps zmm8,zmm3,zmm2
  a2d2f2:	62 51 3c 48 59 fa    	vmulps zmm15,zmm8,zmm10
  a2d2f8:	62 72 7d 48 b8 fd    	vfmadd231ps zmm15,zmm0,zmm5
  a2d2fe:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm15
  a2d305:	1c 
  a2d306:	62 c1 7c 48 59 e2    	vmulps zmm20,zmm0,zmm10
  a2d30c:	62 c2 55 48 bc e0    	vfnmadd231ps zmm20,zmm5,zmm8
  a2d312:	62 d1 2c 40 5c c6    	vsubps zmm0,zmm26,zmm14
  a2d318:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x3c0]
  a2d31f:	0f 
  a2d320:	62 31 74 48 5c c5    	vsubps zmm8,zmm1,zmm21
  a2d326:	62 51 3c 48 59 da    	vmulps zmm11,zmm8,zmm10
  a2d32c:	62 72 7d 48 b8 dd    	vfmadd231ps zmm11,zmm0,zmm5
  a2d332:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm11
  a2d339:	1f 
  a2d33a:	62 c1 7c 48 59 da    	vmulps zmm19,zmm0,zmm10
  a2d340:	62 e2 3d 48 bc dd    	vfnmadd231ps zmm19,zmm8,zmm5
  a2d346:	62 e1 34 48 58 f7    	vaddps zmm22,zmm9,zmm7
  a2d34c:	62 71 44 40 58 de    	vaddps zmm11,zmm23,zmm6
  a2d352:	62 71 64 48 58 ea    	vaddps zmm13,zmm3,zmm2
  a2d358:	62 61 74 40 58 e4    	vaddps zmm28,zmm17,zmm4
  a2d35e:	62 21 74 48 58 dd    	vaddps zmm27,zmm1,zmm21
  a2d364:	62 c1 2c 40 58 fe    	vaddps zmm23,zmm26,zmm14
  a2d36a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x480]
  a2d371:	12 
  a2d372:	62 61 7c 48 58 54 24 	vaddps zmm26,zmm0,ZMMWORD PTR [rsp+0x4c0]
  a2d379:	13 
  a2d37a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a2d381:	0a 
  a2d382:	62 f1 7c 48 58 74 24 	vaddps zmm6,zmm0,ZMMWORD PTR [rsp+0x2c0]
  a2d389:	0b 
  a2d38a:	62 71 3c 40 58 54 24 	vaddps zmm10,zmm24,ZMMWORD PTR [rsp+0x900]
  a2d391:	24 
  a2d392:	62 71 1c 48 58 4c 24 	vaddps zmm9,zmm12,ZMMWORD PTR [rsp+0x200]
  a2d399:	08 
  a2d39a:	62 f2 7d 48 18 0d 44 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff648344]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a2d3a1:	83 64 ff 
  a2d3a4:	62 61 7c 48 28 c1    	vmovaps zmm24,zmm1
  a2d3aa:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x300]
  a2d3b1:	0c 
  a2d3b2:	62 62 4d 48 a8 c0    	vfmadd213ps zmm24,zmm6,zmm0
  a2d3b8:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm6
  a2d3bf:	22 
  a2d3c0:	62 f2 7d 48 18 2d 7a 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff64827a]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a2d3c7:	82 64 ff 
  a2d3ca:	62 62 2d 40 bc c5    	vfnmadd231ps zmm24,zmm26,zmm5
  a2d3d0:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm26
  a2d3d7:	21 
  a2d3d8:	62 e1 7c 48 28 e9    	vmovaps zmm21,zmm1
  a2d3de:	62 b1 7c 48 28 fa    	vmovaps zmm7,zmm18
  a2d3e4:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm18
  a2d3eb:	1b 
  a2d3ec:	62 a2 35 48 a8 ea    	vfmadd213ps zmm21,zmm9,zmm18
  a2d3f2:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm9
  a2d3f9:	20 
  a2d3fa:	62 e2 2d 48 bc ed    	vfnmadd231ps zmm21,zmm10,zmm5
  a2d400:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm10
  a2d407:	11 
  a2d408:	62 b1 3c 40 5c d8    	vsubps zmm3,zmm24,zmm16
  a2d40e:	62 d1 54 40 5c e7    	vsubps zmm4,zmm21,zmm15
  a2d414:	62 f1 64 48 5c d4    	vsubps zmm2,zmm3,zmm4
  a2d41a:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a2d421:	02 
  a2d422:	62 f1 64 48 58 d4    	vaddps zmm2,zmm3,zmm4
  a2d428:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm2
  a2d42f:	0a 
  a2d430:	62 61 34 40 58 4c 24 	vaddps zmm25,zmm25,ZMMWORD PTR [rsp+0x500]
  a2d437:	14 
  a2d438:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x540]
  a2d43f:	15 
  a2d440:	62 e1 6c 48 58 54 24 	vaddps zmm18,zmm2,ZMMWORD PTR [rsp+0x340]
  a2d447:	0d 
  a2d448:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a2d44e:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x40]
  a2d455:	01 
  a2d456:	62 c2 25 48 a8 c8    	vfmadd213ps zmm17,zmm11,zmm8
  a2d45c:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a2d462:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm11
  a2d469:	17 
  a2d46a:	62 e2 4d 40 bc cd    	vfnmadd231ps zmm17,zmm22,zmm5
  a2d470:	62 31 7c 48 28 f6    	vmovaps zmm14,zmm22
  a2d476:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm22
  a2d47d:	16 
  a2d47e:	62 e1 7c 48 28 c1    	vmovaps zmm16,zmm1
  a2d484:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x180]
  a2d48b:	06 
  a2d48c:	62 a2 1d 40 a8 c6    	vfmadd213ps zmm16,zmm28,zmm22
  a2d492:	62 e2 15 48 bc c5    	vfnmadd231ps zmm16,zmm13,zmm5
  a2d498:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a2d49e:	62 f1 74 40 58 54 24 	vaddps zmm2,zmm17,ZMMWORD PTR [rsp+0xc0]
  a2d4a5:	03 
  a2d4a6:	62 f1 7c 40 58 5c 24 	vaddps zmm3,zmm16,ZMMWORD PTR [rsp+0x140]
  a2d4ad:	05 
  a2d4ae:	62 f1 6c 48 58 e3    	vaddps zmm4,zmm2,zmm3
  a2d4b4:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm4
  a2d4bb:	13 
  a2d4bc:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a2d4c2:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm2
  a2d4c9:	0b 
  a2d4ca:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a2d4d0:	62 f2 4d 48 ac d0    	vfnmadd213ps zmm2,zmm6,zmm0
  a2d4d6:	62 f2 2d 40 b8 d1    	vfmadd231ps zmm2,zmm26,zmm1
  a2d4dc:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a2d4e2:	62 f2 35 48 ac f7    	vfnmadd213ps zmm6,zmm9,zmm7
  a2d4e8:	62 f2 2d 48 b8 f1    	vfmadd231ps zmm6,zmm10,zmm1
  a2d4ee:	62 91 6c 48 5c dd    	vsubps zmm3,zmm2,zmm29
  a2d4f4:	62 b1 4c 48 5c e4    	vsubps zmm4,zmm6,zmm20
  a2d4fa:	62 f1 64 48 5c c4    	vsubps zmm0,zmm3,zmm4
  a2d500:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm0
  a2d507:	23 
  a2d508:	62 f1 64 48 58 c4    	vaddps zmm0,zmm3,zmm4
  a2d50e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a2d515:	12 
  a2d516:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a2d51c:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x1c0]
  a2d523:	07 
  a2d524:	62 f2 45 40 a8 e3    	vfmadd213ps zmm4,zmm23,zmm3
  a2d52a:	62 11 7c 48 28 db    	vmovaps zmm11,zmm27
  a2d530:	62 f2 25 40 bc e5    	vfnmadd231ps zmm4,zmm27,zmm5
  a2d536:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a2d53c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a2d543:	04 
  a2d544:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a2d54a:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm18
  a2d551:	1a 
  a2d552:	62 f2 6d 40 a8 f8    	vfmadd213ps zmm7,zmm18,zmm0
  a2d558:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm25
  a2d55f:	19 
  a2d560:	62 f2 35 40 bc fd    	vfnmadd231ps zmm7,zmm25,zmm5
  a2d566:	62 71 7c 48 28 ed    	vmovaps zmm13,zmm5
  a2d56c:	62 52 1d 48 ac e8    	vfnmadd213ps zmm13,zmm12,zmm8
  a2d572:	62 72 0d 48 b8 e9    	vfmadd231ps zmm13,zmm14,zmm1
  a2d578:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a2d57e:	62 a2 1d 40 ac d6    	vfnmadd213ps zmm18,zmm28,zmm22
  a2d584:	62 e2 05 48 b8 d1    	vfmadd231ps zmm18,zmm15,zmm1
  a2d58a:	62 51 7c 48 28 c7    	vmovaps zmm8,zmm15
  a2d590:	62 61 7c 48 28 dd    	vmovaps zmm27,zmm5
  a2d596:	62 62 45 40 ac db    	vfnmadd213ps zmm27,zmm23,zmm3
  a2d59c:	62 62 25 48 b8 d9    	vfmadd231ps zmm27,zmm11,zmm1
  a2d5a2:	62 d1 7c 48 28 db    	vmovaps zmm3,zmm11
  a2d5a8:	62 f2 2d 48 ac e8    	vfnmadd213ps zmm5,zmm10,zmm0
  a2d5ae:	62 f2 35 40 b8 e9    	vfmadd231ps zmm5,zmm25,zmm1
  a2d5b4:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x380]
  a2d5bb:	0e 
  a2d5bc:	62 d1 14 48 58 c9    	vaddps zmm1,zmm13,zmm9
  a2d5c2:	62 91 6c 40 58 c7    	vaddps zmm0,zmm18,zmm31
  a2d5c8:	62 71 74 48 58 d0    	vaddps zmm10,zmm1,zmm0
  a2d5ce:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm10
  a2d5d5:	0f 
  a2d5d6:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a2d5dc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm0
  a2d5e3:	1d 
  a2d5e4:	62 91 0c 40 58 c3    	vaddps zmm0,zmm30,zmm27
  a2d5ea:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm0
  a2d5f1:	18 
  a2d5f2:	62 91 24 40 5c ce    	vsubps zmm1,zmm27,zmm30
  a2d5f8:	62 d1 14 48 5c c1    	vsubps zmm0,zmm13,zmm9
  a2d5fe:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a2d605:	0d 
  a2d606:	62 01 6c 40 5c ff    	vsubps zmm31,zmm18,zmm31
  a2d60c:	62 31 54 48 5c cb    	vsubps zmm9,zmm5,zmm19
  a2d612:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm9
  a2d619:	0e 
  a2d61a:	62 31 54 48 58 eb    	vaddps zmm13,zmm5,zmm19
  a2d620:	62 81 6c 48 58 f5    	vaddps zmm22,zmm2,zmm29
  a2d626:	62 f2 7d 48 18 2d 30 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff647e30]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a2d62d:	7e 64 ff 
  a2d630:	62 a1 4c 48 58 d4    	vaddps zmm18,zmm6,zmm20
  a2d636:	62 01 7c 48 58 d7    	vaddps zmm26,zmm0,zmm31
  a2d63c:	62 91 74 48 58 c2    	vaddps zmm0,zmm1,zmm26
  a2d642:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a2d649:	08 
  a2d64a:	62 62 55 48 ac d1    	vfnmadd213ps zmm26,zmm5,zmm1
  a2d650:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a2d656:	62 71 7c 48 28 dd    	vmovaps zmm11,zmm5
  a2d65c:	62 71 7c 48 28 f5    	vmovaps zmm14,zmm5
  a2d662:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a2d668:	62 b1 4c 40 58 c2    	vaddps zmm0,zmm22,zmm18
  a2d66e:	62 71 7c 48 28 e5    	vmovaps zmm12,zmm5
  a2d674:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a2d67a:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a2d680:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a2d686:	62 d2 7d 48 ac ed    	vfnmadd213ps zmm5,zmm0,zmm13
  a2d68c:	62 f1 14 48 58 c0    	vaddps zmm0,zmm13,zmm0
  a2d692:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a2d699:	10 
  a2d69a:	62 f1 74 40 5c 44 24 	vsubps zmm0,zmm17,ZMMWORD PTR [rsp+0xc0]
  a2d6a1:	03 
  a2d6a2:	62 71 7c 40 5c 4c 24 	vsubps zmm9,zmm16,ZMMWORD PTR [rsp+0x140]
  a2d6a9:	05 
  a2d6aa:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x240]
  a2d6b1:	09 
  a2d6b2:	62 71 74 40 58 ec    	vaddps zmm13,zmm17,zmm4
  a2d6b8:	62 a1 5c 48 5c c9    	vsubps zmm17,zmm4,zmm17
  a2d6be:	62 f1 3c 40 58 64 24 	vaddps zmm4,zmm24,ZMMWORD PTR [rsp+0x780]
  a2d6c5:	1e 
  a2d6c6:	62 71 54 40 58 7c 24 	vaddps zmm15,zmm21,ZMMWORD PTR [rsp+0x700]
  a2d6cd:	1c 
  a2d6ce:	62 41 5c 48 5c df    	vsubps zmm27,zmm4,zmm15
  a2d6d4:	62 c1 5c 48 58 df    	vaddps zmm19,zmm4,zmm15
  a2d6da:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x7c0]
  a2d6e1:	1f 
  a2d6e2:	62 d1 44 48 5c e7    	vsubps zmm4,zmm7,zmm15
  a2d6e8:	62 c1 44 48 58 c7    	vaddps zmm16,zmm7,zmm15
  a2d6ee:	62 41 7c 48 58 c1    	vaddps zmm24,zmm0,zmm9
  a2d6f4:	62 41 7c 48 5c c9    	vsubps zmm25,zmm0,zmm9
  a2d6fa:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a2d701:	01 
  a2d702:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x5c0]
  a2d709:	17 
  a2d70a:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x580]
  a2d711:	16 
  a2d712:	62 f1 1c 40 58 7c 24 	vaddps zmm7,zmm28,ZMMWORD PTR [rsp+0x180]
  a2d719:	06 
  a2d71a:	62 d1 44 48 58 f8    	vaddps zmm7,zmm7,zmm8
  a2d720:	62 71 44 40 58 4c 24 	vaddps zmm9,zmm23,ZMMWORD PTR [rsp+0x1c0]
  a2d727:	07 
  a2d728:	62 d1 64 48 58 d9    	vaddps zmm3,zmm3,zmm9
  a2d72e:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm3
  a2d735:	03 
  a2d736:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x300]
  a2d73d:	0c 
  a2d73e:	62 71 64 48 58 4c 24 	vaddps zmm9,zmm3,ZMMWORD PTR [rsp+0x880]
  a2d745:	22 
  a2d746:	62 71 34 48 58 4c 24 	vaddps zmm9,zmm9,ZMMWORD PTR [rsp+0x840]
  a2d74d:	21 
  a2d74e:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x6c0]
  a2d755:	1b 
  a2d756:	62 71 64 48 58 7c 24 	vaddps zmm15,zmm3,ZMMWORD PTR [rsp+0x800]
  a2d75d:	20 
  a2d75e:	62 71 04 48 58 7c 24 	vaddps zmm15,zmm15,ZMMWORD PTR [rsp+0x440]
  a2d765:	11 
  a2d766:	62 41 34 48 5c e7    	vsubps zmm28,zmm9,zmm15
  a2d76c:	62 41 34 48 58 ef    	vaddps zmm29,zmm9,zmm15
  a2d772:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x100]
  a2d779:	04 
  a2d77a:	62 71 64 48 58 4c 24 	vaddps zmm9,zmm3,ZMMWORD PTR [rsp+0x680]
  a2d781:	1a 
  a2d782:	62 e1 34 48 58 6c 24 	vaddps zmm21,zmm9,ZMMWORD PTR [rsp+0x640]
  a2d789:	19 
  a2d78a:	62 e1 7c 48 58 ff    	vaddps zmm23,zmm0,zmm7
  a2d790:	62 61 7c 48 5c f7    	vsubps zmm30,zmm0,zmm7
  a2d796:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x4c0]
  a2d79d:	13 
  a2d79e:	62 52 7d 48 ac d5    	vfnmadd213ps zmm10,zmm0,zmm13
  a2d7a4:	62 f1 14 48 58 c0    	vaddps zmm0,zmm13,zmm0
  a2d7aa:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a2d7b1:	07 
  a2d7b2:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a2d7b9:	0a 
  a2d7ba:	62 72 7d 48 ac dc    	vfnmadd213ps zmm11,zmm0,zmm4
  a2d7c0:	62 f1 5c 48 58 c0    	vaddps zmm0,zmm4,zmm0
  a2d7c6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a2d7cd:	06 
  a2d7ce:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x3c0]
  a2d7d5:	0f 
  a2d7d6:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x600]
  a2d7dd:	18 
  a2d7de:	62 52 35 48 ac f0    	vfnmadd213ps zmm14,zmm9,zmm8
  a2d7e4:	62 72 7d 48 18 2d e6 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff647ae6]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a2d7eb:	7a 64 ff 
  a2d7ee:	62 f1 14 48 59 7c 24 	vmulps zmm7,zmm13,ZMMWORD PTR [rsp+0x8c0]
  a2d7f5:	23 
  a2d7f6:	62 71 0c 48 5c ff    	vsubps zmm15,zmm14,zmm7
  a2d7fc:	62 f1 0c 48 58 ff    	vaddps zmm7,zmm14,zmm7
  a2d802:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x480]
  a2d809:	12 
  a2d80a:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x380]
  a2d811:	0e 
  a2d812:	62 f2 5d 48 ac cb    	vfnmadd213ps zmm1,zmm4,zmm3
  a2d818:	62 71 14 48 59 74 24 	vmulps zmm14,zmm13,ZMMWORD PTR [rsp+0x740]
  a2d81f:	1d 
  a2d820:	62 d1 74 48 58 c6    	vaddps zmm0,zmm1,zmm14
  a2d826:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a2d82d:	01 
  a2d82e:	62 d1 74 48 5c c6    	vsubps zmm0,zmm1,zmm14
  a2d834:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a2d83b:	05 
  a2d83c:	62 b1 4c 40 5c ca    	vsubps zmm1,zmm22,zmm18
  a2d842:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x340]
  a2d849:	0d 
  a2d84a:	62 11 7c 48 5c f7    	vsubps zmm14,zmm0,zmm31
  a2d850:	62 e1 14 48 59 54 24 	vmulps zmm18,zmm13,ZMMWORD PTR [rsp+0x80]
  a2d857:	02 
  a2d858:	62 e1 14 48 59 74 24 	vmulps zmm22,zmm13,ZMMWORD PTR [rsp+0x2c0]
  a2d85f:	0b 
  a2d860:	62 41 24 40 59 dd    	vmulps zmm27,zmm27,zmm13
  a2d866:	62 41 34 40 59 cd    	vmulps zmm25,zmm25,zmm13
  a2d86c:	62 41 1c 40 59 e5    	vmulps zmm28,zmm28,zmm13
  a2d872:	62 41 0c 40 59 f5    	vmulps zmm30,zmm30,zmm13
  a2d878:	62 41 74 48 59 fd    	vmulps zmm31,zmm1,zmm13
  a2d87e:	62 d1 0c 48 59 c5    	vmulps zmm0,zmm14,zmm13
  a2d884:	62 32 3d 40 ac e1    	vfnmadd213ps zmm12,zmm24,zmm17
  a2d88a:	62 81 74 40 58 c8    	vaddps zmm17,zmm17,zmm24
  a2d890:	62 a2 65 40 ac e0    	vfnmadd213ps zmm20,zmm19,zmm16
  a2d896:	62 a1 7c 40 58 c3    	vaddps zmm16,zmm16,zmm19
  a2d89c:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0xc0]
  a2d8a3:	03 
  a2d8a4:	62 92 45 40 ac d0    	vfnmadd213ps zmm2,zmm23,zmm24
  a2d8aa:	62 91 6c 48 5c cc    	vsubps zmm1,zmm2,zmm28
  a2d8b0:	62 11 6c 48 58 f4    	vaddps zmm14,zmm2,zmm28
  a2d8b6:	62 b2 15 40 ac f5    	vfnmadd213ps zmm6,zmm29,zmm21
  a2d8bc:	62 91 4c 48 58 d6    	vaddps zmm2,zmm6,zmm30
  a2d8c2:	62 01 4c 48 5c e6    	vsubps zmm28,zmm6,zmm30
  a2d8c8:	62 31 2c 48 58 ea    	vaddps zmm13,zmm10,zmm18
  a2d8ce:	62 b1 2c 48 5c f2    	vsubps zmm6,zmm10,zmm18
  a2d8d4:	62 a1 24 48 5c d6    	vsubps zmm18,zmm11,zmm22
  a2d8da:	62 21 24 48 58 f6    	vaddps zmm30,zmm11,zmm22
  a2d8e0:	62 c1 3c 48 58 d9    	vaddps zmm19,zmm8,zmm9
  a2d8e6:	62 f1 64 48 58 dc    	vaddps zmm3,zmm3,zmm4
  a2d8ec:	62 81 2c 40 5c f7    	vsubps zmm22,zmm26,zmm31
  a2d8f2:	62 11 2c 40 58 d7    	vaddps zmm10,zmm26,zmm31
  a2d8f8:	62 f1 54 48 58 e0    	vaddps zmm4,zmm5,zmm0
  a2d8fe:	62 f1 54 48 5c c0    	vsubps zmm0,zmm5,zmm0
  a2d904:	62 91 1c 48 58 eb    	vaddps zmm5,zmm12,zmm27
  a2d90a:	62 11 1c 48 5c db    	vsubps zmm11,zmm12,zmm27
  a2d910:	62 01 5c 40 5c d9    	vsubps zmm27,zmm20,zmm25
  a2d916:	62 11 5c 40 58 e1    	vaddps zmm12,zmm20,zmm25
  a2d91c:	62 a1 3c 40 58 ff    	vaddps zmm23,zmm24,zmm23
  a2d922:	62 81 54 40 58 ed    	vaddps zmm21,zmm21,zmm29
  a2d928:	62 61 7c 48 28 0d 0e 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff662f0e]        # 90840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dcf0>
  a2d92f:	2f 66 ff 
  a2d932:	62 a2 35 40 7f fd    	vpermt2ps zmm23,zmm25,zmm21
  a2d938:	62 52 35 40 7f dc    	vpermt2ps zmm11,zmm25,zmm12
  a2d93e:	62 72 35 40 7f d0    	vpermt2ps zmm10,zmm25,zmm0
  a2d944:	62 e2 35 40 7f db    	vpermt2ps zmm19,zmm25,zmm3
  a2d94a:	62 92 35 40 7f f6    	vpermt2ps zmm6,zmm25,zmm30
  a2d950:	62 12 35 40 7f f4    	vpermt2ps zmm14,zmm25,zmm28
  a2d956:	62 a2 35 40 7f c8    	vpermt2ps zmm17,zmm25,zmm16
  a2d95c:	62 e2 35 40 7f f4    	vpermt2ps zmm22,zmm25,zmm4
  a2d962:	62 f2 35 40 7f 7c 24 	vpermt2ps zmm7,zmm25,ZMMWORD PTR [rsp+0x140]
  a2d969:	05 
  a2d96a:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x1c0]
  a2d971:	07 
  a2d972:	62 f2 35 40 7f 5c 24 	vpermt2ps zmm3,zmm25,ZMMWORD PTR [rsp+0x180]
  a2d979:	06 
  a2d97a:	62 f2 35 40 7f ca    	vpermt2ps zmm1,zmm25,zmm2
  a2d980:	62 92 35 40 7f eb    	vpermt2ps zmm5,zmm25,zmm27
  a2d986:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a2d98d:	08 
  a2d98e:	62 f2 35 40 7f 44 24 	vpermt2ps zmm0,zmm25,ZMMWORD PTR [rsp+0x400]
  a2d995:	10 
  a2d996:	62 72 35 40 7f 7c 24 	vpermt2ps zmm15,zmm25,ZMMWORD PTR [rsp+0x40]
  a2d99d:	01 
  a2d99e:	62 32 35 40 7f ea    	vpermt2ps zmm13,zmm25,zmm18
  a2d9a4:	62 e1 7c 48 11 3e    	vmovups ZMMWORD PTR [rsi],zmm23
  a2d9aa:	62 71 7c 48 11 5e 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm11
  a2d9b1:	62 71 7c 48 11 56 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm10
  a2d9b8:	62 e1 7c 48 11 5e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm19
  a2d9bf:	62 f1 7c 48 11 76 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm6
  a2d9c6:	62 71 7c 48 11 76 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm14
  a2d9cd:	62 e1 7c 48 11 4e 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm17
  a2d9d4:	62 e1 7c 48 11 76 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm22
  a2d9db:	62 f1 7c 48 11 7e 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm7
  a2d9e2:	62 f1 7c 48 11 5e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm3
  a2d9e9:	62 f1 7c 48 11 4e 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm1
  a2d9f0:	62 f1 7c 48 11 6e 0b 	vmovups ZMMWORD PTR [rsi+0x2c0],zmm5
  a2d9f7:	62 f1 7c 48 11 46 0c 	vmovups ZMMWORD PTR [rsi+0x300],zmm0
  a2d9fe:	62 71 7c 48 11 7e 0d 	vmovups ZMMWORD PTR [rsi+0x340],zmm15
  a2da05:	62 71 7c 48 11 6e 0e 	vmovups ZMMWORD PTR [rsi+0x380],zmm13
  a2da0c:	48 89 ec             	mov    rsp,rbp
  a2da0f:	5d                   	pop    rbp
  a2da10:	c5 f8 77             	vzeroupper
  a2da13:	c3                   	ret
