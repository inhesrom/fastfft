
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a2b100 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a2b100:	55                   	push   rbp
  a2b101:	48 89 e5             	mov    rbp,rsp
  a2b104:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a2b108:	48 81 ec c0 0a 00 00 	sub    rsp,0xac0
  a2b10f:	c6 84 24 40 0a 00 00 	mov    BYTE PTR [rsp+0xa40],0x0
  a2b116:	00 
  a2b117:	48 8d 84 24 40 0a 00 	lea    rax,[rsp+0xa40]
  a2b11e:	00 
  a2b11f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a2b124:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a2b129:	62 f1 7c 48 28 15 cd 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6655cd]        # 90700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dbb0>
  a2b130:	55 66 ff 
  a2b133:	62 f1 7c 48 10 0f    	vmovups zmm1,ZMMWORD PTR [rdi]
  a2b139:	62 71 7c 48 10 47 01 	vmovups zmm8,ZMMWORD PTR [rdi+0x40]
  a2b140:	62 f1 7c 48 10 77 02 	vmovups zmm6,ZMMWORD PTR [rdi+0x80]
  a2b147:	62 71 7c 48 10 57 03 	vmovups zmm10,ZMMWORD PTR [rdi+0xc0]
  a2b14e:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a2b154:	62 52 6d 48 7f e8    	vpermt2ps zmm13,zmm2,zmm8
  a2b15a:	62 71 7c 48 10 67 04 	vmovups zmm12,ZMMWORD PTR [rdi+0x100]
  a2b161:	62 e1 7c 48 10 57 05 	vmovups zmm18,ZMMWORD PTR [rdi+0x140]
  a2b168:	62 d1 7c 48 28 ec    	vmovaps zmm5,zmm12
  a2b16e:	62 b2 6d 48 7f ea    	vpermt2ps zmm5,zmm2,zmm18
  a2b174:	62 71 7c 48 10 77 08 	vmovups zmm14,ZMMWORD PTR [rdi+0x200]
  a2b17b:	62 e1 7c 48 10 5f 09 	vmovups zmm19,ZMMWORD PTR [rdi+0x240]
  a2b182:	62 d1 7c 48 28 fe    	vmovaps zmm7,zmm14
  a2b188:	62 b2 6d 48 7f fb    	vpermt2ps zmm7,zmm2,zmm19
  a2b18e:	62 e1 54 48 58 e7    	vaddps zmm20,zmm5,zmm7
  a2b194:	62 31 14 48 58 dc    	vaddps zmm11,zmm13,zmm20
  a2b19a:	62 f1 7c 48 10 67 06 	vmovups zmm4,ZMMWORD PTR [rdi+0x180]
  a2b1a1:	62 71 7c 48 10 7f 07 	vmovups zmm15,ZMMWORD PTR [rdi+0x1c0]
  a2b1a8:	62 e1 7c 48 28 ec    	vmovaps zmm21,zmm4
  a2b1ae:	62 c2 6d 48 7f ef    	vpermt2ps zmm21,zmm2,zmm15
  a2b1b4:	62 e1 7c 48 10 47 0a 	vmovups zmm16,ZMMWORD PTR [rdi+0x280]
  a2b1bb:	62 e1 7c 48 10 77 0b 	vmovups zmm22,ZMMWORD PTR [rdi+0x2c0]
  a2b1c2:	62 31 7c 48 28 c8    	vmovaps zmm9,zmm16
  a2b1c8:	62 32 6d 48 7f ce    	vpermt2ps zmm9,zmm2,zmm22
  a2b1ce:	62 d2 4d 48 77 d2    	vpermi2ps zmm2,zmm6,zmm10
  a2b1d4:	62 e1 34 48 58 fa    	vaddps zmm23,zmm9,zmm2
  a2b1da:	62 21 54 40 58 cf    	vaddps zmm25,zmm21,zmm23
  a2b1e0:	62 01 24 48 58 d1    	vaddps zmm26,zmm11,zmm25
  a2b1e6:	62 f1 7c 48 28 05 90 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff69bd90]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a2b1ed:	bd 69 ff 
  a2b1f0:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a2b1f4:	62 01 7c 48 28 c2    	vmovaps zmm24,zmm26
  a2b1fa:	62 e2 7d 48 18 0d 5c 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff64a25c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a2b201:	a2 64 ff 
  a2b204:	62 62 7d 48 7f c3    	vpermt2ps zmm24,zmm0,zmm3
  a2b20a:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm24
  a2b211:	03 
  a2b212:	62 32 75 40 bc ec    	vfnmadd231ps zmm13,zmm17,zmm20
  a2b218:	62 61 7c 48 28 1d 1e 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff66551e]        # 90740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dbf0>
  a2b21f:	55 66 ff 
  a2b222:	62 32 25 40 7f e2    	vpermt2ps zmm12,zmm27,zmm18
  a2b228:	62 32 25 40 7f f3    	vpermt2ps zmm14,zmm27,zmm19
  a2b22e:	62 c1 1c 48 5c d6    	vsubps zmm18,zmm12,zmm14
  a2b234:	62 e2 7d 48 18 1d 96 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff64a096]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a2b23b:	a0 64 ff 
  a2b23e:	62 a1 6c 40 59 d3    	vmulps zmm18,zmm18,zmm19
  a2b244:	62 a1 14 48 5c e2    	vsubps zmm20,zmm13,zmm18
  a2b24a:	62 a2 75 40 bc ef    	vfnmadd231ps zmm21,zmm17,zmm23
  a2b250:	62 a2 25 40 7f c6    	vpermt2ps zmm16,zmm27,zmm22
  a2b256:	62 d2 25 40 7f f2    	vpermt2ps zmm6,zmm27,zmm10
  a2b25c:	62 71 7c 40 5c d6    	vsubps zmm10,zmm16,zmm6
  a2b262:	62 31 2c 48 59 d3    	vmulps zmm10,zmm10,zmm19
  a2b268:	62 c1 54 40 5c f2    	vsubps zmm22,zmm21,zmm10
  a2b26e:	62 21 5c 40 58 c6    	vaddps zmm24,zmm20,zmm22
  a2b274:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm24
  a2b27b:	01 
  a2b27c:	62 62 7d 48 7f c3    	vpermt2ps zmm24,zmm0,zmm3
  a2b282:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm24
  a2b289:	0a 
  a2b28a:	62 c1 6c 40 58 d5    	vaddps zmm18,zmm18,zmm13
  a2b290:	62 a1 2c 48 58 ed    	vaddps zmm21,zmm10,zmm21
  a2b296:	62 21 6c 40 58 fd    	vaddps zmm31,zmm18,zmm21
  a2b29c:	62 11 7c 48 28 d7    	vmovaps zmm10,zmm31
  a2b2a2:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a2b2a8:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm10
  a2b2af:	06 
  a2b2b0:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a2b2b5:	62 52 7d 48 7f ed    	vpermt2ps zmm13,zmm0,zmm13
  a2b2bb:	62 21 5c 40 5c ee    	vsubps zmm29,zmm20,zmm22
  a2b2c1:	62 11 7c 48 28 d5    	vmovaps zmm10,zmm29
  a2b2c7:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a2b2cd:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm10
  a2b2d4:	05 
  a2b2d5:	62 a1 6c 40 5c d5    	vsubps zmm18,zmm18,zmm21
  a2b2db:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a2b2e1:	62 a1 7c 48 28 f2    	vmovaps zmm22,zmm18
  a2b2e7:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a2b2ed:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm10
  a2b2f4:	08 
  a2b2f5:	62 11 24 48 5c d9    	vsubps zmm11,zmm11,zmm25
  a2b2fb:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a2b301:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a2b307:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm10
  a2b30e:	04 
  a2b30f:	62 d2 25 40 7f c8    	vpermt2ps zmm1,zmm27,zmm8
  a2b315:	62 51 1c 48 58 c6    	vaddps zmm8,zmm12,zmm14
  a2b31b:	62 51 74 48 58 f0    	vaddps zmm14,zmm1,zmm8
  a2b321:	62 d2 25 40 7f e7    	vpermt2ps zmm4,zmm27,zmm15
  a2b327:	62 f1 7c 40 58 f6    	vaddps zmm6,zmm16,zmm6
  a2b32d:	62 e1 5c 48 58 d6    	vaddps zmm18,zmm4,zmm6
  a2b333:	62 21 0c 48 58 da    	vaddps zmm27,zmm14,zmm18
  a2b339:	62 e1 7c 48 28 2d 7d 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff69bc7d]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a2b340:	bc 69 ff 
  a2b343:	62 81 7c 48 28 c3    	vmovaps zmm16,zmm27
  a2b349:	62 e2 55 40 7f c3    	vpermt2ps zmm16,zmm21,zmm3
  a2b34f:	62 d2 75 40 bc c8    	vfnmadd231ps zmm1,zmm17,zmm8
  a2b355:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a2b35b:	62 b1 54 48 59 eb    	vmulps zmm5,zmm5,zmm19
  a2b361:	62 f1 74 48 58 fd    	vaddps zmm7,zmm1,zmm5
  a2b367:	62 b2 4d 48 bc e1    	vfnmadd231ps zmm4,zmm6,zmm17
  a2b36d:	62 f1 34 48 5c d2    	vsubps zmm2,zmm9,zmm2
  a2b373:	62 b1 6c 48 59 d3    	vmulps zmm2,zmm2,zmm19
  a2b379:	62 f1 5c 48 58 f2    	vaddps zmm6,zmm4,zmm2
  a2b37f:	62 71 44 48 58 c6    	vaddps zmm8,zmm7,zmm6
  a2b385:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a2b38b:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a2b391:	62 72 55 40 7f e3    	vpermt2ps zmm12,zmm21,zmm3
  a2b397:	62 c1 7c 48 28 cc    	vmovaps zmm17,zmm12
  a2b39d:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm12
  a2b3a4:	0d 
  a2b3a5:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm16
  a2b3ac:	07 
  a2b3ad:	62 f1 74 48 5c ed    	vsubps zmm5,zmm1,zmm5
  a2b3b3:	62 f1 5c 48 5c d2    	vsubps zmm2,zmm4,zmm2
  a2b3b9:	62 e1 54 48 58 fa    	vaddps zmm23,zmm5,zmm2
  a2b3bf:	62 31 7c 48 28 ff    	vmovaps zmm15,zmm23
  a2b3c5:	62 72 55 40 7f fb    	vpermt2ps zmm15,zmm21,zmm3
  a2b3cb:	c4 41 38 57 c0       	vxorps xmm8,xmm8,xmm8
  a2b3d0:	62 52 55 40 7f c0    	vpermt2ps zmm8,zmm21,zmm8
  a2b3d6:	62 61 44 48 5c ce    	vsubps zmm25,zmm7,zmm6
  a2b3dc:	62 91 7c 48 28 f1    	vmovaps zmm6,zmm25
  a2b3e2:	62 f2 55 40 7f f3    	vpermt2ps zmm6,zmm21,zmm3
  a2b3e8:	62 61 54 48 5c e2    	vsubps zmm28,zmm5,zmm2
  a2b3ee:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a2b3f4:	62 f2 55 40 7f cb    	vpermt2ps zmm1,zmm21,zmm3
  a2b3fa:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a2b400:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a2b407:	0b 
  a2b408:	62 21 0c 48 5c f2    	vsubps zmm30,zmm14,zmm18
  a2b40e:	62 81 7c 48 28 e6    	vmovaps zmm20,zmm30
  a2b414:	62 e2 55 40 7f e3    	vpermt2ps zmm20,zmm21,zmm3
  a2b41a:	62 62 55 40 7f d3    	vpermt2ps zmm26,zmm21,zmm3
  a2b420:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a2b427:	01 
  a2b428:	62 f2 55 40 7f cb    	vpermt2ps zmm1,zmm21,zmm3
  a2b42e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a2b435:	01 
  a2b436:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm26
  a2b43d:	09 
  a2b43e:	62 62 55 40 7f fb    	vpermt2ps zmm31,zmm21,zmm3
  a2b444:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm31
  a2b44b:	02 
  a2b44c:	62 11 7c 48 28 e5    	vmovaps zmm12,zmm29
  a2b452:	62 72 55 40 7f e3    	vpermt2ps zmm12,zmm21,zmm3
  a2b458:	62 e2 55 40 7f f3    	vpermt2ps zmm22,zmm21,zmm3
  a2b45e:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm22
  a2b465:	16 
  a2b466:	62 72 55 40 7f db    	vpermt2ps zmm11,zmm21,zmm3
  a2b46c:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm12
  a2b473:	19 
  a2b474:	62 62 7d 48 7f db    	vpermt2ps zmm27,zmm0,zmm3
  a2b47a:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  a2b480:	62 72 7d 48 7f f3    	vpermt2ps zmm14,zmm0,zmm3
  a2b486:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm14
  a2b48d:	17 
  a2b48e:	62 e2 7d 48 7f fb    	vpermt2ps zmm23,zmm0,zmm3
  a2b494:	62 62 7d 48 7f cb    	vpermt2ps zmm25,zmm0,zmm3
  a2b49a:	62 62 7d 48 7f e3    	vpermt2ps zmm28,zmm0,zmm3
  a2b4a0:	62 62 7d 48 7f f3    	vpermt2ps zmm30,zmm0,zmm3
  a2b4a6:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a2b4ac:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm11
  a2b4b3:	18 
  a2b4b4:	62 f1 7c 48 28 25 82 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff69ba82]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a2b4bb:	ba 69 ff 
  a2b4be:	62 62 5d 48 7f d1    	vpermt2ps zmm26,zmm4,zmm1
  a2b4c4:	62 81 7c 48 28 da    	vmovaps zmm19,zmm26
  a2b4ca:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm26
  a2b4d1:	1f 
  a2b4d2:	62 42 5d 48 7f f8    	vpermt2ps zmm31,zmm4,zmm8
  a2b4d8:	62 11 7c 48 28 cf    	vmovaps zmm9,zmm31
  a2b4de:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm31
  a2b4e5:	20 
  a2b4e6:	62 32 5d 48 7f e6    	vpermt2ps zmm12,zmm4,zmm22
  a2b4ec:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm12
  a2b4f3:	1e 
  a2b4f4:	62 52 5d 48 7f d0    	vpermt2ps zmm10,zmm4,zmm8
  a2b4fa:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm10
  a2b501:	1d 
  a2b502:	62 a2 5d 48 7f c1    	vpermt2ps zmm16,zmm4,zmm17
  a2b508:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm16
  a2b50f:	23 
  a2b510:	62 51 7c 48 28 df    	vmovaps zmm11,zmm15
  a2b516:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm15
  a2b51d:	0e 
  a2b51e:	62 52 5d 48 7f d8    	vpermt2ps zmm11,zmm4,zmm8
  a2b524:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm11
  a2b52b:	22 
  a2b52c:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm6
  a2b533:	0c 
  a2b534:	62 f2 5d 48 7f f5    	vpermt2ps zmm6,zmm4,zmm5
  a2b53a:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm6
  a2b541:	21 
  a2b542:	62 21 7c 48 28 d4    	vmovaps zmm26,zmm20
  a2b548:	62 c2 5d 48 7f e0    	vpermt2ps zmm20,zmm4,zmm8
  a2b54e:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0xc0]
  a2b555:	03 
  a2b556:	62 61 7c 48 28 c5    	vmovaps zmm24,zmm5
  a2b55c:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x280]
  a2b563:	0a 
  a2b564:	62 d2 5d 48 7f ef    	vpermt2ps zmm5,zmm4,zmm15
  a2b56a:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm5
  a2b571:	03 
  a2b572:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x180]
  a2b579:	06 
  a2b57a:	62 e1 7c 48 28 f3    	vmovaps zmm22,zmm3
  a2b580:	62 d2 5d 48 7f dd    	vpermt2ps zmm3,zmm4,zmm13
  a2b586:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm3
  a2b58d:	06 
  a2b58e:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x140]
  a2b595:	05 
  a2b596:	62 81 7c 48 28 ed    	vmovaps zmm21,zmm29
  a2b59c:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x200]
  a2b5a3:	08 
  a2b5a4:	62 62 5d 48 7f ef    	vpermt2ps zmm29,zmm4,zmm7
  a2b5aa:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm29
  a2b5b1:	05 
  a2b5b2:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x100]
  a2b5b9:	04 
  a2b5ba:	62 e1 7c 48 28 d2    	vmovaps zmm18,zmm2
  a2b5c0:	62 d2 5d 48 7f d5    	vpermt2ps zmm2,zmm4,zmm13
  a2b5c6:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a2b5cd:	04 
  a2b5ce:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a2b5d4:	62 d2 5d 48 7f c6    	vpermt2ps zmm0,zmm4,zmm14
  a2b5da:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a2b5e1:	0f 
  a2b5e2:	62 31 7c 48 28 f7    	vmovaps zmm14,zmm23
  a2b5e8:	62 52 5d 48 7f f5    	vpermt2ps zmm14,zmm4,zmm13
  a2b5ee:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm14
  a2b5f5:	25 
  a2b5f6:	62 91 7c 48 28 c9    	vmovaps zmm1,zmm25
  a2b5fc:	62 92 5d 48 7f cc    	vpermt2ps zmm1,zmm4,zmm28
  a2b602:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm1
  a2b609:	24 
  a2b60a:	62 d2 0d 40 77 e5    	vpermi2ps zmm4,zmm30,zmm13
  a2b610:	62 e1 7c 48 28 0d e6 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff69b7e6]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2b617:	b7 69 ff 
  a2b61a:	62 51 fd 48 15 f6    	vunpckhpd zmm14,zmm0,zmm14
  a2b620:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm14
  a2b627:	15 
  a2b628:	62 f1 f5 48 15 c4    	vunpckhpd zmm0,zmm1,zmm4
  a2b62e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm0
  a2b635:	14 
  a2b636:	62 72 75 40 7f f0    	vpermt2ps zmm14,zmm17,zmm0
  a2b63c:	62 61 d5 48 15 fb    	vunpckhpd zmm31,zmm5,zmm3
  a2b642:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm31
  a2b649:	13 
  a2b64a:	62 f1 95 40 15 c2    	vunpckhpd zmm0,zmm29,zmm2
  a2b650:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a2b657:	12 
  a2b658:	62 62 75 40 7f f8    	vpermt2ps zmm31,zmm17,zmm0
  a2b65e:	62 f1 7c 48 10 52 0d 	vmovups zmm2,ZMMWORD PTR [rdx+0x340]
  a2b665:	62 f1 7c 48 10 4a 0c 	vmovups zmm1,ZMMWORD PTR [rdx+0x300]
  a2b66c:	62 f1 04 40 59 c1    	vmulps zmm0,zmm31,zmm1
  a2b672:	62 f2 0d 48 b8 c2    	vfmadd231ps zmm0,zmm14,zmm2
  a2b678:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xa00],zmm0
  a2b67f:	28 
  a2b680:	62 f1 0c 48 59 c1    	vmulps zmm0,zmm14,zmm1
  a2b686:	62 92 6d 48 bc c7    	vfnmadd231ps zmm0,zmm2,zmm31
  a2b68c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm0
  a2b693:	1a 
  a2b694:	62 d1 fd 40 15 cb    	vunpckhpd zmm1,zmm16,zmm11
  a2b69a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm1
  a2b6a1:	11 
  a2b6a2:	62 a1 7c 48 28 c4    	vmovaps zmm16,zmm20
  a2b6a8:	62 b1 cd 48 15 c4    	vunpckhpd zmm0,zmm6,zmm20
  a2b6ae:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a2b6b5:	10 
  a2b6b6:	62 f2 75 40 7f c8    	vpermt2ps zmm1,zmm17,zmm0
  a2b6bc:	62 41 e5 40 15 f9    	vunpckhpd zmm31,zmm19,zmm9
  a2b6c2:	62 d1 9d 48 15 c2    	vunpckhpd zmm0,zmm12,zmm10
  a2b6c8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm0
  a2b6cf:	1c 
  a2b6d0:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a2b6d6:	62 f2 75 40 7f d0    	vpermt2ps zmm2,zmm17,zmm0
  a2b6dc:	62 b1 7c 48 28 f1    	vmovaps zmm6,zmm17
  a2b6e2:	62 f1 7c 48 10 5a 1d 	vmovups zmm3,ZMMWORD PTR [rdx+0x740]
  a2b6e9:	62 f1 7c 48 10 42 1c 	vmovups zmm0,ZMMWORD PTR [rdx+0x700]
  a2b6f0:	62 61 6c 48 59 e8    	vmulps zmm29,zmm2,zmm0
  a2b6f6:	62 62 75 48 b8 eb    	vfmadd231ps zmm29,zmm1,zmm3
  a2b6fc:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x9c0],zmm29
  a2b703:	27 
  a2b704:	62 f1 74 48 59 c0    	vmulps zmm0,zmm1,zmm0
  a2b70a:	62 f2 65 48 bc c2    	vfnmadd231ps zmm0,zmm3,zmm2
  a2b710:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x980],zmm0
  a2b717:	26 
  a2b718:	62 f1 7c 48 28 05 de 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff69b7de]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a2b71f:	b7 69 ff 
  a2b722:	62 42 7d 48 7f c7    	vpermt2ps zmm24,zmm0,zmm15
  a2b728:	62 e2 7d 48 7f ef    	vpermt2ps zmm21,zmm0,zmm7
  a2b72e:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x1c0]
  a2b735:	07 
  a2b736:	62 62 7d 48 7f 6c 24 	vpermt2ps zmm29,zmm0,ZMMWORD PTR [rsp+0x340]
  a2b73d:	0d 
  a2b73e:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x300]
  a2b745:	0c 
  a2b746:	62 f2 7d 48 7f 7c 24 	vpermt2ps zmm7,zmm0,ZMMWORD PTR [rsp+0x2c0]
  a2b74d:	0b 
  a2b74e:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x240]
  a2b755:	09 
  a2b756:	62 e2 7d 48 7f 4c 24 	vpermt2ps zmm17,zmm0,ZMMWORD PTR [rsp+0x40]
  a2b75d:	01 
  a2b75e:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x640]
  a2b765:	19 
  a2b766:	62 e2 7d 48 7f 64 24 	vpermt2ps zmm20,zmm0,ZMMWORD PTR [rsp+0x580]
  a2b76d:	16 
  a2b76e:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x380]
  a2b775:	0e 
  a2b776:	62 52 7d 48 7f f8    	vpermt2ps zmm15,zmm0,zmm8
  a2b77c:	62 42 7d 48 7f d0    	vpermt2ps zmm26,zmm0,zmm8
  a2b782:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x80]
  a2b789:	02 
  a2b78a:	62 52 7d 48 7f d0    	vpermt2ps zmm10,zmm0,zmm8
  a2b790:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm10
  a2b797:	02 
  a2b798:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x600]
  a2b79f:	18 
  a2b7a0:	62 52 7d 48 7f d8    	vpermt2ps zmm11,zmm0,zmm8
  a2b7a6:	62 62 7d 48 7f 5c 24 	vpermt2ps zmm27,zmm0,ZMMWORD PTR [rsp+0x5c0]
  a2b7ad:	17 
  a2b7ae:	62 02 7d 48 7f cc    	vpermt2ps zmm25,zmm0,zmm28
  a2b7b4:	62 c2 7d 48 7f f5    	vpermt2ps zmm22,zmm0,zmm13
  a2b7ba:	62 c2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm13
  a2b7c0:	62 c2 7d 48 7f fd    	vpermt2ps zmm23,zmm0,zmm13
  a2b7c6:	62 42 7d 48 7f f5    	vpermt2ps zmm30,zmm0,zmm13
  a2b7cc:	62 a1 bd 40 15 de    	vunpckhpd zmm19,zmm24,zmm22
  a2b7d2:	62 b1 d5 40 15 ca    	vunpckhpd zmm1,zmm21,zmm18
  a2b7d8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a2b7df:	0c 
  a2b7e0:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a2b7e6:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a2b7ec:	62 31 a5 40 15 f7    	vunpckhpd zmm14,zmm27,zmm23
  a2b7f2:	62 91 b5 40 15 d6    	vunpckhpd zmm2,zmm25,zmm30
  a2b7f8:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm2
  a2b7ff:	0b 
  a2b800:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  a2b806:	62 f2 4d 48 7f ca    	vpermt2ps zmm1,zmm6,zmm2
  a2b80c:	62 f1 7c 48 10 52 04 	vmovups zmm2,ZMMWORD PTR [rdx+0x100]
  a2b813:	62 f1 7c 48 10 5a 05 	vmovups zmm3,ZMMWORD PTR [rdx+0x140]
  a2b81a:	62 71 74 48 59 c2    	vmulps zmm8,zmm1,zmm2
  a2b820:	62 72 7d 48 bc c3    	vfnmadd231ps zmm8,zmm0,zmm3
  a2b826:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm8
  a2b82d:	19 
  a2b82e:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a2b834:	62 f2 65 48 b8 c1    	vfmadd231ps zmm0,zmm3,zmm1
  a2b83a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm0
  a2b841:	18 
  a2b842:	62 d1 f5 40 15 d2    	vunpckhpd zmm2,zmm17,zmm10
  a2b848:	62 d1 dd 40 15 cb    	vunpckhpd zmm1,zmm20,zmm11
  a2b84e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm1
  a2b855:	1b 
  a2b856:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a2b85c:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a2b862:	62 d1 95 40 15 cf    	vunpckhpd zmm1,zmm29,zmm15
  a2b868:	62 11 c5 48 15 e2    	vunpckhpd zmm12,zmm7,zmm26
  a2b86e:	62 71 7c 48 28 cf    	vmovaps zmm9,zmm7
  a2b874:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a2b87a:	62 d2 4d 48 7f dc    	vpermt2ps zmm3,zmm6,zmm12
  a2b880:	62 71 7c 48 10 42 15 	vmovups zmm8,ZMMWORD PTR [rdx+0x540]
  a2b887:	62 71 7c 48 10 52 14 	vmovups zmm10,ZMMWORD PTR [rdx+0x500]
  a2b88e:	62 51 64 48 59 ea    	vmulps zmm13,zmm3,zmm10
  a2b894:	62 52 7d 48 bc e8    	vfnmadd231ps zmm13,zmm0,zmm8
  a2b89a:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm13
  a2b8a1:	17 
  a2b8a2:	62 d1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm10
  a2b8a8:	62 f2 3d 48 b8 c3    	vfmadd231ps zmm0,zmm8,zmm3
  a2b8ae:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm0
  a2b8b5:	16 
  a2b8b6:	62 b1 bd 40 14 c6    	vunpcklpd zmm0,zmm24,zmm22
  a2b8bc:	62 21 d5 40 14 e2    	vunpcklpd zmm28,zmm21,zmm18
  a2b8c2:	62 b1 a5 40 14 df    	vunpcklpd zmm3,zmm27,zmm23
  a2b8c8:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a2b8cf:	01 
  a2b8d0:	62 01 b5 40 14 de    	vunpcklpd zmm27,zmm25,zmm30
  a2b8d6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a2b8dd:	0d 
  a2b8de:	62 f1 7c 48 28 2d 58 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff69b558]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a2b8e5:	b5 69 ff 
  a2b8e8:	62 92 55 48 7f c4    	vpermt2ps zmm0,zmm5,zmm28
  a2b8ee:	62 92 55 48 7f db    	vpermt2ps zmm3,zmm5,zmm27
  a2b8f4:	62 f1 7c 48 10 72 02 	vmovups zmm6,ZMMWORD PTR [rdx+0x80]
  a2b8fb:	62 f1 7c 48 10 7a 03 	vmovups zmm7,ZMMWORD PTR [rdx+0xc0]
  a2b902:	62 71 64 48 59 c6    	vmulps zmm8,zmm3,zmm6
  a2b908:	62 72 7d 48 bc c7    	vfnmadd231ps zmm8,zmm0,zmm7
  a2b90e:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm8
  a2b915:	0e 
  a2b916:	62 f1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm6
  a2b91c:	62 f2 45 48 b8 c3    	vfmadd231ps zmm0,zmm7,zmm3
  a2b922:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a2b929:	07 
  a2b92a:	62 d1 95 40 14 c7    	vunpcklpd zmm0,zmm29,zmm15
  a2b930:	62 81 b5 48 14 ea    	vunpcklpd zmm21,zmm9,zmm26
  a2b936:	62 f1 f5 40 14 5c 24 	vunpcklpd zmm3,zmm17,ZMMWORD PTR [rsp+0x80]
  a2b93d:	02 
  a2b93e:	62 c1 dd 40 14 cb    	vunpcklpd zmm17,zmm20,zmm11
  a2b944:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a2b94a:	62 b2 55 48 7f d9    	vpermt2ps zmm3,zmm5,zmm17
  a2b950:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a2b956:	62 b2 55 48 7f c5    	vpermt2ps zmm0,zmm5,zmm21
  a2b95c:	62 f1 7c 48 10 72 13 	vmovups zmm6,ZMMWORD PTR [rdx+0x4c0]
  a2b963:	62 f1 7c 48 10 7a 12 	vmovups zmm7,ZMMWORD PTR [rdx+0x480]
  a2b96a:	62 71 7c 48 59 cf    	vmulps zmm9,zmm0,zmm7
  a2b970:	62 72 65 48 bc ce    	vfnmadd231ps zmm9,zmm3,zmm6
  a2b976:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm9
  a2b97d:	0a 
  a2b97e:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a2b984:	62 f2 4d 48 b8 d8    	vfmadd231ps zmm3,zmm6,zmm0
  a2b98a:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a2b991:	02 
  a2b992:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x7c0]
  a2b999:	1f 
  a2b99a:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp+0x800]
  a2b9a1:	20 
  a2b9a2:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x780]
  a2b9a9:	1e 
  a2b9aa:	62 71 e5 48 14 54 24 	vunpcklpd zmm10,zmm3,ZMMWORD PTR [rsp+0x740]
  a2b9b1:	1d 
  a2b9b2:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x8c0]
  a2b9b9:	23 
  a2b9ba:	62 f1 e5 48 14 5c 24 	vunpcklpd zmm3,zmm3,ZMMWORD PTR [rsp+0x880]
  a2b9c1:	22 
  a2b9c2:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x840]
  a2b9c9:	21 
  a2b9ca:	62 a1 cd 48 14 e0    	vunpcklpd zmm20,zmm6,zmm16
  a2b9d0:	62 e1 7c 48 28 d3    	vmovaps zmm18,zmm3
  a2b9d6:	62 b2 55 48 7f dc    	vpermt2ps zmm3,zmm5,zmm20
  a2b9dc:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a2b9e2:	62 d2 55 48 7f c2    	vpermt2ps zmm0,zmm5,zmm10
  a2b9e8:	62 f1 7c 48 10 72 1b 	vmovups zmm6,ZMMWORD PTR [rdx+0x6c0]
  a2b9ef:	62 f1 7c 48 10 7a 1a 	vmovups zmm7,ZMMWORD PTR [rdx+0x680]
  a2b9f6:	62 71 7c 48 59 cf    	vmulps zmm9,zmm0,zmm7
  a2b9fc:	62 72 65 48 b8 ce    	vfmadd231ps zmm9,zmm3,zmm6
  a2ba02:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm9
  a2ba09:	08 
  a2ba0a:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a2ba10:	62 f2 4d 48 bc d8    	vfnmadd231ps zmm3,zmm6,zmm0
  a2ba16:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm3
  a2ba1d:	09 
  a2ba1e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a2ba25:	03 
  a2ba26:	62 f1 fd 48 14 74 24 	vunpcklpd zmm6,zmm0,ZMMWORD PTR [rsp+0x180]
  a2ba2d:	06 
  a2ba2e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a2ba35:	05 
  a2ba36:	62 71 fd 48 14 4c 24 	vunpcklpd zmm9,zmm0,ZMMWORD PTR [rsp+0x100]
  a2ba3d:	04 
  a2ba3e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x3c0]
  a2ba45:	0f 
  a2ba46:	62 f1 fd 48 14 7c 24 	vunpcklpd zmm7,zmm0,ZMMWORD PTR [rsp+0x940]
  a2ba4d:	25 
  a2ba4e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x900]
  a2ba55:	24 
  a2ba56:	62 f1 fd 48 14 dc    	vunpcklpd zmm3,zmm0,zmm4
  a2ba5c:	62 61 7c 48 28 ef    	vmovaps zmm29,zmm7
  a2ba62:	62 f2 55 48 7f fb    	vpermt2ps zmm7,zmm5,zmm3
  a2ba68:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a2ba6e:	62 d2 55 48 7f f1    	vpermt2ps zmm6,zmm5,zmm9
  a2ba74:	62 f1 7c 48 10 62 0b 	vmovups zmm4,ZMMWORD PTR [rdx+0x2c0]
  a2ba7b:	62 71 7c 48 10 7a 0a 	vmovups zmm15,ZMMWORD PTR [rdx+0x280]
  a2ba82:	62 51 4c 48 59 ef    	vmulps zmm13,zmm6,zmm15
  a2ba88:	62 72 45 48 b8 ec    	vfmadd231ps zmm13,zmm7,zmm4
  a2ba8e:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm13
  a2ba95:	0f 
  a2ba96:	62 d1 44 48 59 ff    	vmulps zmm7,zmm7,zmm15
  a2ba9c:	62 f2 5d 48 bc fe    	vfnmadd231ps zmm7,zmm4,zmm6
  a2baa2:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm7
  a2baa9:	03 
  a2baaa:	62 e2 55 48 7f 5c 24 	vpermt2ps zmm19,zmm5,ZMMWORD PTR [rsp+0x300]
  a2bab1:	0c 
  a2bab2:	62 72 55 48 7f 74 24 	vpermt2ps zmm14,zmm5,ZMMWORD PTR [rsp+0x2c0]
  a2bab9:	0b 
  a2baba:	62 f2 55 48 7f 54 24 	vpermt2ps zmm2,zmm5,ZMMWORD PTR [rsp+0x6c0]
  a2bac1:	1b 
  a2bac2:	62 d2 55 48 7f cc    	vpermt2ps zmm1,zmm5,zmm12
  a2bac8:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x540]
  a2bacf:	15 
  a2bad0:	62 72 55 48 7f 7c 24 	vpermt2ps zmm15,zmm5,ZMMWORD PTR [rsp+0x500]
  a2bad7:	14 
  a2bad8:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x4c0]
  a2badf:	13 
  a2bae0:	62 f2 55 48 7f 74 24 	vpermt2ps zmm6,zmm5,ZMMWORD PTR [rsp+0x480]
  a2bae7:	12 
  a2bae8:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x440]
  a2baef:	11 
  a2baf0:	62 e2 55 48 7f 44 24 	vpermt2ps zmm16,zmm5,ZMMWORD PTR [rsp+0x400]
  a2baf7:	10 
  a2baf8:	62 62 55 48 7f 7c 24 	vpermt2ps zmm31,zmm5,ZMMWORD PTR [rsp+0x700]
  a2baff:	1c 
  a2bb00:	62 f1 7c 48 10 62 07 	vmovups zmm4,ZMMWORD PTR [rdx+0x1c0]
  a2bb07:	62 f1 7c 48 10 6a 06 	vmovups zmm5,ZMMWORD PTR [rdx+0x180]
  a2bb0e:	62 61 0c 48 59 f5    	vmulps zmm30,zmm14,zmm5
  a2bb14:	62 62 65 40 bc f4    	vfnmadd231ps zmm30,zmm19,zmm4
  a2bb1a:	62 61 64 40 59 cd    	vmulps zmm25,zmm19,zmm5
  a2bb20:	62 42 5d 48 b8 ce    	vfmadd231ps zmm25,zmm4,zmm14
  a2bb26:	62 f1 7c 48 10 62 17 	vmovups zmm4,ZMMWORD PTR [rdx+0x5c0]
  a2bb2d:	62 f1 7c 48 10 7a 16 	vmovups zmm7,ZMMWORD PTR [rdx+0x580]
  a2bb34:	62 e1 74 48 59 ff    	vmulps zmm23,zmm1,zmm7
  a2bb3a:	62 e2 6d 48 bc fc    	vfnmadd231ps zmm23,zmm2,zmm4
  a2bb40:	62 e1 6c 48 59 f7    	vmulps zmm22,zmm2,zmm7
  a2bb46:	62 e2 5d 48 b8 f1    	vfmadd231ps zmm22,zmm4,zmm1
  a2bb4c:	62 f1 7c 48 10 4a 1f 	vmovups zmm1,ZMMWORD PTR [rdx+0x7c0]
  a2bb53:	62 f1 7c 48 10 62 1e 	vmovups zmm4,ZMMWORD PTR [rdx+0x780]
  a2bb5a:	62 71 04 40 59 dc    	vmulps zmm11,zmm31,zmm4
  a2bb60:	62 72 7d 40 b8 d9    	vfmadd231ps zmm11,zmm16,zmm1
  a2bb66:	62 71 7c 40 59 e4    	vmulps zmm12,zmm16,zmm4
  a2bb6c:	62 12 75 48 bc e7    	vfnmadd231ps zmm12,zmm1,zmm31
  a2bb72:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a2bb79:	62 f1 7c 48 10 62 0e 	vmovups zmm4,ZMMWORD PTR [rdx+0x380]
  a2bb80:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  a2bb86:	62 f1 4c 48 59 f4    	vmulps zmm6,zmm6,zmm4
  a2bb8c:	62 f2 05 48 b8 f1    	vfmadd231ps zmm6,zmm15,zmm1
  a2bb92:	62 71 04 48 59 fc    	vmulps zmm15,zmm15,zmm4
  a2bb98:	62 72 75 48 bc fd    	vfnmadd231ps zmm15,zmm1,zmm5
  a2bb9e:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x340]
  a2bba5:	0d 
  a2bba6:	62 f1 7c 48 28 15 50 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff69b250]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2bbad:	b2 69 ff 
  a2bbb0:	62 82 6d 48 7f c4    	vpermt2ps zmm16,zmm2,zmm28
  a2bbb6:	62 22 6d 48 7f d5    	vpermt2ps zmm26,zmm2,zmm21
  a2bbbc:	62 32 6d 48 7f c1    	vpermt2ps zmm8,zmm2,zmm17
  a2bbc2:	62 42 6d 48 7f c2    	vpermt2ps zmm24,zmm2,zmm10
  a2bbc8:	62 a2 6d 48 7f d4    	vpermt2ps zmm18,zmm2,zmm20
  a2bbce:	62 d2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm9
  a2bbd4:	62 62 6d 48 7f eb    	vpermt2ps zmm29,zmm2,zmm3
  a2bbda:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a2bbe1:	01 
  a2bbe2:	62 92 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm27
  a2bbe8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a2bbef:	01 
  a2bbf0:	62 f1 7c 48 10 4a 11 	vmovups zmm1,ZMMWORD PTR [rdx+0x440]
  a2bbf7:	62 f1 7c 48 10 5a 10 	vmovups zmm3,ZMMWORD PTR [rdx+0x400]
  a2bbfe:	62 61 3c 48 59 db    	vmulps zmm27,zmm8,zmm3
  a2bc04:	62 62 2d 40 b8 d9    	vfmadd231ps zmm27,zmm26,zmm1
  a2bc0a:	62 e1 2c 40 59 db    	vmulps zmm19,zmm26,zmm3
  a2bc10:	62 c2 75 48 bc d8    	vfnmadd231ps zmm19,zmm1,zmm8
  a2bc16:	62 f1 7c 48 10 4a 09 	vmovups zmm1,ZMMWORD PTR [rdx+0x240]
  a2bc1d:	62 f1 7c 48 10 5a 08 	vmovups zmm3,ZMMWORD PTR [rdx+0x200]
  a2bc24:	62 e1 14 40 59 e3    	vmulps zmm20,zmm29,zmm3
  a2bc2a:	62 e2 7d 48 bc e1    	vfnmadd231ps zmm20,zmm0,zmm1
  a2bc30:	62 f1 7c 48 59 db    	vmulps zmm3,zmm0,zmm3
  a2bc36:	62 92 75 48 b8 dd    	vfmadd231ps zmm3,zmm1,zmm29
  a2bc3c:	62 f1 7c 48 10 4a 19 	vmovups zmm1,ZMMWORD PTR [rdx+0x640]
  a2bc43:	62 f1 7c 48 10 42 18 	vmovups zmm0,ZMMWORD PTR [rdx+0x600]
  a2bc4a:	62 e1 6c 40 59 e8    	vmulps zmm21,zmm18,zmm0
  a2bc50:	62 e2 3d 40 bc e9    	vfnmadd231ps zmm21,zmm24,zmm1
  a2bc56:	62 f1 3c 40 59 d0    	vmulps zmm2,zmm24,zmm0
  a2bc5c:	62 b2 75 48 b8 d2    	vfmadd231ps zmm2,zmm1,zmm18
  a2bc62:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x380]
  a2bc69:	0e 
  a2bc6a:	62 f1 1c 40 5c 64 24 	vsubps zmm4,zmm28,ZMMWORD PTR [rsp+0x280]
  a2bc71:	0a 
  a2bc72:	62 e1 14 48 5c 54 24 	vsubps zmm18,zmm13,ZMMWORD PTR [rsp+0x200]
  a2bc79:	08 
  a2bc7a:	62 31 5c 48 5c c2    	vsubps zmm8,zmm4,zmm18
  a2bc80:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a2bc87:	07 
  a2bc88:	62 61 7c 48 5c 44 24 	vsubps zmm24,zmm0,ZMMWORD PTR [rsp+0x80]
  a2bc8f:	02 
  a2bc90:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a2bc97:	09 
  a2bc98:	62 61 7c 48 5c 6c 24 	vsubps zmm29,zmm0,ZMMWORD PTR [rsp+0xc0]
  a2bc9f:	03 
  a2bca0:	62 72 7d 48 18 15 56 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff649a56]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a2bca7:	9a 64 ff 
  a2bcaa:	62 11 3c 40 5c cd    	vsubps zmm9,zmm24,zmm29
  a2bcb0:	62 d1 34 48 59 c2    	vmulps zmm0,zmm9,zmm10
  a2bcb6:	62 62 7d 48 18 15 a4 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff6499a4]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a2bcbd:	99 64 ff 
  a2bcc0:	62 92 3d 48 b8 c2    	vfmadd231ps zmm0,zmm8,zmm26
  a2bcc6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a2bccd:	06 
  a2bcce:	62 91 34 48 59 c2    	vmulps zmm0,zmm9,zmm26
  a2bcd4:	62 d2 2d 48 bc c0    	vfnmadd231ps zmm0,zmm10,zmm8
  a2bcda:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a2bce1:	05 
  a2bce2:	62 31 0c 40 5c cf    	vsubps zmm9,zmm30,zmm23
  a2bce8:	62 c1 4c 48 5c cb    	vsubps zmm17,zmm6,zmm11
  a2bcee:	62 31 34 48 5c f1    	vsubps zmm14,zmm9,zmm17
  a2bcf4:	62 21 34 40 5c fe    	vsubps zmm31,zmm25,zmm22
  a2bcfa:	62 d1 1c 48 5c cf    	vsubps zmm1,zmm12,zmm15
  a2bd00:	62 f1 04 40 5c c1    	vsubps zmm0,zmm31,zmm1
  a2bd06:	62 91 7c 48 59 ea    	vmulps zmm5,zmm0,zmm26
  a2bd0c:	62 d2 0d 48 b8 ea    	vfmadd231ps zmm5,zmm14,zmm10
  a2bd12:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm5
  a2bd19:	04 
  a2bd1a:	62 91 0c 48 59 ea    	vmulps zmm5,zmm14,zmm26
  a2bd20:	62 f2 2d 48 bc e8    	vfnmadd231ps zmm5,zmm10,zmm0
  a2bd26:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm5
  a2bd2d:	15 
  a2bd2e:	62 b1 34 48 58 c1    	vaddps zmm0,zmm9,zmm17
  a2bd34:	62 f1 04 40 58 c9    	vaddps zmm1,zmm31,zmm1
  a2bd3a:	62 b1 5c 48 58 e2    	vaddps zmm4,zmm4,zmm18
  a2bd40:	62 11 3c 40 58 cd    	vaddps zmm9,zmm24,zmm29
  a2bd46:	62 91 34 48 59 ea    	vmulps zmm5,zmm9,zmm26
  a2bd4c:	62 d2 5d 48 b8 ea    	vfmadd231ps zmm5,zmm4,zmm10
  a2bd52:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm5
  a2bd59:	14 
  a2bd5a:	62 d1 34 48 59 ea    	vmulps zmm5,zmm9,zmm10
  a2bd60:	62 f2 2d 40 bc ec    	vfnmadd231ps zmm5,zmm26,zmm4
  a2bd66:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm5
  a2bd6d:	12 
  a2bd6e:	62 d1 74 48 59 e2    	vmulps zmm4,zmm1,zmm10
  a2bd74:	62 92 7d 48 b8 e2    	vfmadd231ps zmm4,zmm0,zmm26
  a2bd7a:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm4
  a2bd81:	13 
  a2bd82:	62 01 74 48 59 d2    	vmulps zmm26,zmm1,zmm26
  a2bd88:	62 42 7d 48 bc d2    	vfnmadd231ps zmm26,zmm0,zmm10
  a2bd8e:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x640]
  a2bd95:	19 
  a2bd96:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x5c0]
  a2bd9d:	17 
  a2bd9e:	62 d1 3c 48 5c c6    	vsubps zmm0,zmm8,zmm14
  a2bda4:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x600]
  a2bdab:	18 
  a2bdac:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x580]
  a2bdb3:	16 
  a2bdb4:	62 91 14 48 5c c8    	vsubps zmm1,zmm13,zmm24
  a2bdba:	62 61 7c 48 58 f9    	vaddps zmm31,zmm0,zmm1
  a2bdc0:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a2bdc6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a2bdcd:	11 
  a2bdce:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xa00]
  a2bdd5:	28 
  a2bdd6:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x9c0]
  a2bddd:	27 
  a2bdde:	62 f1 7c 48 5c cc    	vsubps zmm1,zmm0,zmm4
  a2bde4:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x680]
  a2bdeb:	1a 
  a2bdec:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x980]
  a2bdf3:	26 
  a2bdf4:	62 71 54 48 5c d7    	vsubps zmm10,zmm5,zmm7
  a2bdfa:	62 c1 74 48 5c ca    	vsubps zmm17,zmm1,zmm10
  a2be00:	62 f1 2c 48 58 c9    	vaddps zmm1,zmm10,zmm1
  a2be06:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm1
  a2be0d:	10 
  a2be0e:	62 11 7c 40 5c d3    	vsubps zmm10,zmm16,zmm27
  a2be14:	62 21 24 40 58 d8    	vaddps zmm27,zmm27,zmm16
  a2be1a:	62 61 64 48 5c ea    	vsubps zmm29,zmm3,zmm2
  a2be20:	62 71 64 48 58 ca    	vaddps zmm9,zmm3,zmm2
  a2be26:	62 e1 54 48 58 c7    	vaddps zmm16,zmm5,zmm7
  a2be2c:	62 51 3c 48 58 f6    	vaddps zmm14,zmm8,zmm14
  a2be32:	62 b1 34 40 58 d6    	vaddps zmm2,zmm25,zmm22
  a2be38:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm2
  a2be3f:	1a 
  a2be40:	62 c1 4c 48 58 d3    	vaddps zmm18,zmm6,zmm11
  a2be46:	62 31 0c 40 58 c7    	vaddps zmm8,zmm30,zmm23
  a2be4c:	62 51 04 48 58 dc    	vaddps zmm11,zmm15,zmm12
  a2be52:	62 71 1c 40 58 64 24 	vaddps zmm12,zmm28,ZMMWORD PTR [rsp+0x280]
  a2be59:	0a 
  a2be5a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a2be61:	03 
  a2be62:	62 71 74 48 58 7c 24 	vaddps zmm15,zmm1,ZMMWORD PTR [rsp+0x240]
  a2be69:	09 
  a2be6a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a2be71:	02 
  a2be72:	62 e1 74 48 58 74 24 	vaddps zmm22,zmm1,ZMMWORD PTR [rsp+0x1c0]
  a2be79:	07 
  a2be7a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x3c0]
  a2be81:	0f 
  a2be82:	62 e1 74 48 58 7c 24 	vaddps zmm23,zmm1,ZMMWORD PTR [rsp+0x200]
  a2be89:	08 
  a2be8a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a2be91:	01 
  a2be92:	62 21 74 48 5c cb    	vsubps zmm25,zmm1,zmm19
  a2be98:	62 a1 74 48 58 db    	vaddps zmm19,zmm1,zmm19
  a2be9e:	62 21 54 40 5c e4    	vsubps zmm28,zmm21,zmm20
  a2bea4:	62 a1 5c 40 58 e5    	vaddps zmm20,zmm20,zmm21
  a2beaa:	62 81 14 48 58 e8    	vaddps zmm21,zmm13,zmm24
  a2beb0:	62 61 7c 48 58 f4    	vaddps zmm30,zmm0,zmm4
  a2beb6:	62 d1 1c 48 5c cf    	vsubps zmm1,zmm12,zmm15
  a2bebc:	62 b1 4c 40 5c c7    	vsubps zmm0,zmm22,zmm23
  a2bec2:	62 f1 74 48 58 f0    	vaddps zmm6,zmm1,zmm0
  a2bec8:	62 f1 7c 48 5c f9    	vsubps zmm7,zmm0,zmm1
  a2bece:	62 b1 6c 48 5c ca    	vsubps zmm1,zmm2,zmm18
  a2bed4:	62 d1 3c 48 5c c3    	vsubps zmm0,zmm8,zmm11
  a2beda:	62 f1 74 48 5c e0    	vsubps zmm4,zmm1,zmm0
  a2bee0:	62 f1 7c 48 58 e9    	vaddps zmm5,zmm0,zmm1
  a2bee6:	62 f2 7d 48 18 0d ac 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff6494ac]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a2beed:	94 64 ff 
  a2bef0:	62 e1 74 40 59 c9    	vmulps zmm17,zmm17,zmm1
  a2bef6:	62 f1 04 40 59 d9    	vmulps zmm3,zmm31,zmm1
  a2befc:	62 f1 74 48 59 54 24 	vmulps zmm2,zmm1,ZMMWORD PTR [rsp+0x440]
  a2bf03:	11 
  a2bf04:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp+0x400]
  a2bf0b:	10 
  a2bf0c:	62 61 5c 48 59 f9    	vmulps zmm31,zmm4,zmm1
  a2bf12:	62 f1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm1
  a2bf18:	62 f1 44 48 59 e1    	vmulps zmm4,zmm7,zmm1
  a2bf1e:	62 f1 54 48 59 c9    	vmulps zmm1,zmm5,zmm1
  a2bf24:	62 91 2c 48 5c ec    	vsubps zmm5,zmm10,zmm28
  a2bf2a:	62 51 1c 40 58 d2    	vaddps zmm10,zmm28,zmm10
  a2bf30:	62 61 6c 48 58 e0    	vaddps zmm28,zmm2,zmm0
  a2bf36:	62 f1 6c 48 5c c0    	vsubps zmm0,zmm2,zmm0
  a2bf3c:	62 91 34 40 5c d5    	vsubps zmm2,zmm25,zmm29
  a2bf42:	62 01 34 40 58 cd    	vaddps zmm25,zmm25,zmm29
  a2bf48:	62 61 74 40 5c eb    	vsubps zmm29,zmm17,zmm3
  a2bf4e:	62 31 64 48 58 e9    	vaddps zmm13,zmm3,zmm17
  a2bf54:	62 c1 24 40 5c c9    	vsubps zmm17,zmm27,zmm9
  a2bf5a:	62 11 34 48 58 cb    	vaddps zmm9,zmm9,zmm27
  a2bf60:	62 01 54 40 5c de    	vsubps zmm27,zmm21,zmm30
  a2bf66:	62 81 54 40 58 ee    	vaddps zmm21,zmm21,zmm30
  a2bf6c:	62 d1 3c 48 58 db    	vaddps zmm3,zmm8,zmm11
  a2bf72:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a2bf79:	01 
  a2bf7a:	62 41 1c 48 58 c7    	vaddps zmm24,zmm12,zmm15
  a2bf80:	62 31 64 40 5c e4    	vsubps zmm12,zmm19,zmm20
  a2bf86:	62 31 64 40 58 fc    	vaddps zmm15,zmm19,zmm20
  a2bf8c:	62 c1 7c 40 5c de    	vsubps zmm19,zmm16,zmm14
  a2bf92:	62 a1 0c 48 58 c0    	vaddps zmm16,zmm14,zmm16
  a2bf98:	62 a1 4c 40 58 e7    	vaddps zmm20,zmm22,zmm23
  a2bf9e:	62 71 6c 40 58 74 24 	vaddps zmm14,zmm18,ZMMWORD PTR [rsp+0x680]
  a2bfa5:	1a 
  a2bfa6:	62 81 54 48 5c d5    	vsubps zmm18,zmm5,zmm29
  a2bfac:	62 f1 14 40 58 dd    	vaddps zmm3,zmm29,zmm5
  a2bfb2:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a2bfb9:	02 
  a2bfba:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x140]
  a2bfc1:	05 
  a2bfc2:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x540]
  a2bfc9:	15 
  a2bfca:	62 f1 64 48 5c fd    	vsubps zmm7,zmm3,zmm5
  a2bfd0:	62 f1 64 48 58 dd    	vaddps zmm3,zmm3,zmm5
  a2bfd6:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm3
  a2bfdd:	07 
  a2bfde:	62 01 6c 48 5c f4    	vsubps zmm30,zmm2,zmm28
  a2bfe4:	62 01 6c 48 58 ec    	vaddps zmm29,zmm2,zmm28
  a2bfea:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x180]
  a2bff1:	06 
  a2bff2:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x100]
  a2bff9:	04 
  a2bffa:	62 f1 6c 48 58 eb    	vaddps zmm5,zmm2,zmm3
  a2c000:	62 e1 6c 48 5c fb    	vsubps zmm23,zmm2,zmm3
  a2c006:	62 a1 74 40 5c f3    	vsubps zmm22,zmm17,zmm19
  a2c00c:	62 21 64 40 58 e1    	vaddps zmm28,zmm19,zmm17
  a2c012:	62 e1 5c 48 58 d9    	vaddps zmm19,zmm4,zmm1
  a2c018:	62 e1 5c 48 5c c9    	vsubps zmm17,zmm4,zmm1
  a2c01e:	62 91 1c 48 5c e3    	vsubps zmm4,zmm12,zmm27
  a2c024:	62 01 1c 48 58 db    	vaddps zmm27,zmm12,zmm27
  a2c02a:	62 71 04 40 5c e6    	vsubps zmm12,zmm31,zmm6
  a2c030:	62 11 4c 48 58 df    	vaddps zmm11,zmm6,zmm31
  a2c036:	62 f1 2c 48 5c f0    	vsubps zmm6,zmm10,zmm0
  a2c03c:	62 51 7c 48 58 c2    	vaddps zmm8,zmm0,zmm10
  a2c042:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x480]
  a2c049:	12 
  a2c04a:	62 11 7c 48 5c d2    	vsubps zmm10,zmm0,zmm26
  a2c050:	62 01 7c 48 58 d2    	vaddps zmm26,zmm0,zmm26
  a2c056:	62 d1 34 40 5c d5    	vsubps zmm2,zmm25,zmm13
  a2c05c:	62 51 34 40 58 ed    	vaddps zmm13,zmm25,zmm13
  a2c062:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x500]
  a2c069:	14 
  a2c06a:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x4c0]
  a2c071:	13 
  a2c072:	62 f1 64 48 5c c8    	vsubps zmm1,zmm3,zmm0
  a2c078:	62 61 7c 48 58 fb    	vaddps zmm31,zmm0,zmm3
  a2c07e:	62 b1 34 48 5c dd    	vsubps zmm3,zmm9,zmm21
  a2c084:	62 c1 54 40 58 e9    	vaddps zmm21,zmm21,zmm9
  a2c08a:	62 51 5c 40 5c ce    	vsubps zmm9,zmm20,zmm14
  a2c090:	62 51 5c 40 58 f6    	vaddps zmm14,zmm20,zmm14
  a2c096:	62 a1 04 48 5c e0    	vsubps zmm20,zmm15,zmm16
  a2c09c:	62 31 04 48 58 f8    	vaddps zmm15,zmm15,zmm16
  a2c0a2:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x40]
  a2c0a9:	01 
  a2c0aa:	62 91 7c 40 5c c0    	vsubps zmm0,zmm16,zmm24
  a2c0b0:	62 21 3c 40 58 c8    	vaddps zmm25,zmm24,zmm16
  a2c0b6:	62 e1 6c 40 58 c5    	vaddps zmm16,zmm18,zmm5
  a2c0bc:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm16
  a2c0c3:	01 
  a2c0c4:	62 f1 6c 40 5c ed    	vsubps zmm5,zmm18,zmm5
  a2c0ca:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm5
  a2c0d1:	04 
  a2c0d2:	62 61 0c 40 5c c7    	vsubps zmm24,zmm30,zmm7
  a2c0d8:	62 e1 0c 40 58 c7    	vaddps zmm16,zmm30,zmm7
  a2c0de:	62 d1 4c 40 5c ec    	vsubps zmm5,zmm22,zmm12
  a2c0e4:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm5
  a2c0eb:	03 
  a2c0ec:	62 51 4c 40 58 e4    	vaddps zmm12,zmm22,zmm12
  a2c0f2:	62 a1 5c 48 5c f3    	vsubps zmm22,zmm4,zmm19
  a2c0f8:	62 b1 5c 48 58 eb    	vaddps zmm5,zmm4,zmm19
  a2c0fe:	62 f1 4c 48 5c e1    	vsubps zmm4,zmm6,zmm1
  a2c104:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm4
  a2c10b:	06 
  a2c10c:	62 f1 4c 48 58 f9    	vaddps zmm7,zmm6,zmm1
  a2c112:	62 c1 6c 48 5c d2    	vsubps zmm18,zmm2,zmm10
  a2c118:	62 d1 6c 48 58 d2    	vaddps zmm2,zmm2,zmm10
  a2c11e:	62 f1 64 48 5c c8    	vsubps zmm1,zmm3,zmm0
  a2c124:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a2c12b:	05 
  a2c12c:	62 f1 64 48 58 e0    	vaddps zmm4,zmm3,zmm0
  a2c132:	62 d1 5c 40 5c d9    	vsubps zmm3,zmm20,zmm9
  a2c138:	62 51 5c 40 58 d1    	vaddps zmm10,zmm20,zmm9
  a2c13e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a2c145:	02 
  a2c146:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a2c14d:	07 
  a2c14e:	62 61 7c 48 5c f1    	vsubps zmm30,zmm0,zmm1
  a2c154:	62 f1 7c 48 58 c9    	vaddps zmm1,zmm0,zmm1
  a2c15a:	62 b1 14 40 5c f7    	vsubps zmm6,zmm29,zmm23
  a2c160:	62 a1 14 40 58 ff    	vaddps zmm23,zmm29,zmm23
  a2c166:	62 21 1c 40 5c e9    	vsubps zmm29,zmm28,zmm17
  a2c16c:	62 21 1c 40 58 e1    	vaddps zmm28,zmm28,zmm17
  a2c172:	62 51 24 40 5c cb    	vsubps zmm9,zmm27,zmm11
  a2c178:	62 d1 24 40 58 c3    	vaddps zmm0,zmm27,zmm11
  a2c17e:	62 01 3c 48 5c da    	vsubps zmm27,zmm8,zmm26
  a2c184:	62 11 3c 48 58 c2    	vaddps zmm8,zmm8,zmm26
  a2c18a:	62 11 14 48 5c df    	vsubps zmm11,zmm13,zmm31
  a2c190:	62 81 14 48 58 cf    	vaddps zmm17,zmm13,zmm31
  a2c196:	62 51 54 40 5c ee    	vsubps zmm13,zmm21,zmm14
  a2c19c:	62 c1 54 40 58 ee    	vaddps zmm21,zmm21,zmm14
  a2c1a2:	62 11 04 48 5c f1    	vsubps zmm14,zmm15,zmm25
  a2c1a8:	62 81 04 48 58 d9    	vaddps zmm19,zmm15,zmm25
  a2c1ae:	62 e1 7c 48 28 25 c8 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6645c8]        # 90780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dc30>
  a2c1b5:	45 66 ff 
  a2c1b8:	62 a2 5d 40 7f dd    	vpermt2ps zmm19,zmm20,zmm21
  a2c1be:	62 c2 5d 40 7f c8    	vpermt2ps zmm17,zmm20,zmm8
  a2c1c4:	62 92 5d 40 7f c4    	vpermt2ps zmm0,zmm20,zmm28
  a2c1ca:	62 e2 5d 40 7f f9    	vpermt2ps zmm23,zmm20,zmm1
  a2c1d0:	62 72 5d 40 7f d4    	vpermt2ps zmm10,zmm20,zmm4
  a2c1d6:	62 f2 5d 40 7f d7    	vpermt2ps zmm2,zmm20,zmm7
  a2c1dc:	62 d2 5d 40 7f ec    	vpermt2ps zmm5,zmm20,zmm12
  a2c1e2:	62 e2 5d 40 7f 44 24 	vpermt2ps zmm16,zmm20,ZMMWORD PTR [rsp+0x100]
  a2c1e9:	04 
  a2c1ea:	62 52 5d 40 7f f5    	vpermt2ps zmm14,zmm20,zmm13
  a2c1f0:	62 12 5d 40 7f db    	vpermt2ps zmm11,zmm20,zmm27
  a2c1f6:	62 12 5d 40 7f cd    	vpermt2ps zmm9,zmm20,zmm29
  a2c1fc:	62 92 5d 40 7f f6    	vpermt2ps zmm6,zmm20,zmm30
  a2c202:	62 f2 5d 40 7f 5c 24 	vpermt2ps zmm3,zmm20,ZMMWORD PTR [rsp+0x140]
  a2c209:	05 
  a2c20a:	62 e2 5d 40 7f 54 24 	vpermt2ps zmm18,zmm20,ZMMWORD PTR [rsp+0x180]
  a2c211:	06 
  a2c212:	62 e2 5d 40 7f 74 24 	vpermt2ps zmm22,zmm20,ZMMWORD PTR [rsp+0xc0]
  a2c219:	03 
  a2c21a:	62 62 5d 40 7f 44 24 	vpermt2ps zmm24,zmm20,ZMMWORD PTR [rsp+0x40]
  a2c221:	01 
  a2c222:	62 e3 7d 48 19 5e 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm19,0x2
  a2c229:	02 
  a2c22a:	62 e1 7c 28 11 1e    	vmovups YMMWORD PTR [rsi],ymm19
  a2c230:	62 e3 7d 48 19 4e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm17,0x2
  a2c237:	02 
  a2c238:	62 e1 7c 28 11 8e 30 	vmovups YMMWORD PTR [rsi+0x30],ymm17
  a2c23f:	00 00 00 
  a2c242:	62 f3 7d 48 19 46 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm0,0x2
  a2c249:	02 
  a2c24a:	c5 fc 11 46 60       	vmovups YMMWORD PTR [rsi+0x60],ymm0
  a2c24f:	62 e3 7d 48 19 7e 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm23,0x2
  a2c256:	02 
  a2c257:	62 e1 7c 28 11 be 90 	vmovups YMMWORD PTR [rsi+0x90],ymm23
  a2c25e:	00 00 00 
  a2c261:	62 73 7d 48 19 56 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm10,0x2
  a2c268:	02 
  a2c269:	c5 7c 11 96 c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm10
  a2c270:	00 
  a2c271:	62 f3 7d 48 19 56 11 	vextractf32x4 XMMWORD PTR [rsi+0x110],zmm2,0x2
  a2c278:	02 
  a2c279:	c5 fc 11 96 f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm2
  a2c280:	00 
  a2c281:	62 f3 7d 48 19 6e 14 	vextractf32x4 XMMWORD PTR [rsi+0x140],zmm5,0x2
  a2c288:	02 
  a2c289:	c5 fc 11 ae 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm5
  a2c290:	00 
  a2c291:	62 e3 7d 48 19 46 17 	vextractf32x4 XMMWORD PTR [rsi+0x170],zmm16,0x2
  a2c298:	02 
  a2c299:	62 e1 7c 28 11 86 50 	vmovups YMMWORD PTR [rsi+0x150],ymm16
  a2c2a0:	01 00 00 
  a2c2a3:	62 73 7d 48 19 76 1a 	vextractf32x4 XMMWORD PTR [rsi+0x1a0],zmm14,0x2
  a2c2aa:	02 
  a2c2ab:	c5 7c 11 b6 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm14
  a2c2b2:	00 
  a2c2b3:	62 73 7d 48 19 5e 1d 	vextractf32x4 XMMWORD PTR [rsi+0x1d0],zmm11,0x2
  a2c2ba:	02 
  a2c2bb:	c5 7c 11 9e b0 01 00 	vmovups YMMWORD PTR [rsi+0x1b0],ymm11
  a2c2c2:	00 
  a2c2c3:	62 73 7d 48 19 4e 20 	vextractf32x4 XMMWORD PTR [rsi+0x200],zmm9,0x2
  a2c2ca:	02 
  a2c2cb:	c5 7c 11 8e e0 01 00 	vmovups YMMWORD PTR [rsi+0x1e0],ymm9
  a2c2d2:	00 
  a2c2d3:	62 f3 7d 48 19 76 23 	vextractf32x4 XMMWORD PTR [rsi+0x230],zmm6,0x2
  a2c2da:	02 
  a2c2db:	c5 fc 11 b6 10 02 00 	vmovups YMMWORD PTR [rsi+0x210],ymm6
  a2c2e2:	00 
  a2c2e3:	62 f3 7d 48 19 5e 26 	vextractf32x4 XMMWORD PTR [rsi+0x260],zmm3,0x2
  a2c2ea:	02 
  a2c2eb:	c5 fc 11 9e 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm3
  a2c2f2:	00 
  a2c2f3:	62 e3 7d 48 19 56 29 	vextractf32x4 XMMWORD PTR [rsi+0x290],zmm18,0x2
  a2c2fa:	02 
  a2c2fb:	62 e1 7c 28 11 96 70 	vmovups YMMWORD PTR [rsi+0x270],ymm18
  a2c302:	02 00 00 
  a2c305:	62 e3 7d 48 19 76 2c 	vextractf32x4 XMMWORD PTR [rsi+0x2c0],zmm22,0x2
  a2c30c:	02 
  a2c30d:	62 e1 7c 28 11 76 15 	vmovups YMMWORD PTR [rsi+0x2a0],ymm22
  a2c314:	62 63 7d 48 19 46 2f 	vextractf32x4 XMMWORD PTR [rsi+0x2f0],zmm24,0x2
  a2c31b:	02 
  a2c31c:	62 61 7c 28 11 86 d0 	vmovups YMMWORD PTR [rsi+0x2d0],ymm24
  a2c323:	02 00 00 
  a2c326:	48 89 ec             	mov    rsp,rbp
  a2c329:	5d                   	pop    rbp
  a2c32a:	c5 f8 77             	vzeroupper
  a2c32d:	c3                   	ret
