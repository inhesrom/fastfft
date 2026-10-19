
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a58200 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a58200:	55                   	push   rbp
  a58201:	48 89 e5             	mov    rbp,rsp
  a58204:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a58208:	48 81 ec c0 03 00 00 	sub    rsp,0x3c0
  a5820f:	48 69 c2 c0 03 00 00 	imul   rax,rdx,0x3c0
  a58216:	31 d2                	xor    edx,edx
  a58218:	4c 8d 84 24 40 03 00 	lea    r8,[rsp+0x340]
  a5821f:	00 
  a58220:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a58225:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  a5822c:	00 00 00 00 
  a58230:	c6 84 24 40 03 00 00 	mov    BYTE PTR [rsp+0x340],0x0
  a58237:	00 
  a58238:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a5823d:	62 e1 7c 48 10 0c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1]
  a58244:	c5 fc 10 4c 17 40    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x40]
  a5824a:	62 a1 7c 48 28 c1    	vmovaps zmm16,zmm17
  a58250:	62 e1 7c 48 28 1d e6 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff63aee6]        # 93140 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x205f0>
  a58257:	ae 63 ff 
  a5825a:	62 e2 65 40 7f c9    	vpermt2ps zmm17,zmm19,zmm1
  a58260:	62 e1 7c 48 10 ac 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x60]
  a58267:	60 00 00 00 
  a5826b:	c5 fc 10 94 17 a0 00 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0xa0]
  a58272:	00 00 
  a58274:	62 b1 7c 48 28 e5    	vmovaps zmm4,zmm21
  a5827a:	62 e2 65 40 7f ea    	vpermt2ps zmm21,zmm19,zmm2
  a58280:	62 71 7c 48 10 54 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a58287:	03 
  a58288:	c5 fc 10 9c 17 00 01 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x100]
  a5828f:	00 00 
  a58291:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a58297:	62 72 65 40 7f d3    	vpermt2ps zmm10,zmm19,zmm3
  a5829d:	62 71 7c 48 10 8c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x120]
  a582a4:	20 01 00 00 
  a582a8:	c5 fc 10 ac 17 60 01 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x160]
  a582af:	00 00 
  a582b1:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a582b7:	62 71 7c 48 28 2d 3f 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff63ae3f]        # 93100 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x205b0>
  a582be:	ae 63 ff 
  a582c1:	62 e2 15 48 7f c1    	vpermt2ps zmm16,zmm13,zmm1
  a582c7:	62 72 65 40 7f cd    	vpermt2ps zmm9,zmm19,zmm5
  a582cd:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x180]
  a582d4:	06 
  a582d5:	c5 fc 10 8c 17 c0 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x1c0]
  a582dc:	00 00 
  a582de:	62 f2 15 48 7f e2    	vpermt2ps zmm4,zmm13,zmm2
  a582e4:	62 d1 7c 48 28 d4    	vmovaps zmm2,zmm12
  a582ea:	62 72 65 40 7f e1    	vpermt2ps zmm12,zmm19,zmm1
  a582f0:	62 e1 7c 48 10 94 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a582f7:	e0 01 00 00 
  a582fb:	62 f2 15 48 7f c3    	vpermt2ps zmm0,zmm13,zmm3
  a58301:	c5 fc 10 b4 17 20 02 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x220]
  a58308:	00 00 
  a5830a:	62 b1 7c 48 28 da    	vmovaps zmm3,zmm18
  a58310:	62 e2 65 40 7f d6    	vpermt2ps zmm18,zmm19,zmm6
  a58316:	62 72 15 48 7f dd    	vpermt2ps zmm11,zmm13,zmm5
  a5831c:	62 e1 7c 48 10 64 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x240]
  a58323:	09 
  a58324:	c5 fc 10 ac 17 80 02 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x280]
  a5832b:	00 00 
  a5832d:	62 31 7c 48 28 f4    	vmovaps zmm14,zmm20
  a58333:	62 f2 15 48 7f d1    	vpermt2ps zmm2,zmm13,zmm1
  a58339:	62 e2 65 40 7f e5    	vpermt2ps zmm20,zmm19,zmm5
  a5833f:	62 71 7c 48 10 bc 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x2a0]
  a58346:	a0 02 00 00 
  a5834a:	c5 fc 10 8c 17 e0 02 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x2e0]
  a58351:	00 00 
  a58353:	62 f2 15 48 7f de    	vpermt2ps zmm3,zmm13,zmm6
  a58359:	62 c1 7c 48 28 f7    	vmovaps zmm22,zmm15
  a5835f:	62 72 65 40 7f f9    	vpermt2ps zmm15,zmm19,zmm1
  a58365:	62 61 7c 48 10 54 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x300]
  a5836c:	0c 
  a5836d:	62 72 15 48 7f f5    	vpermt2ps zmm14,zmm13,zmm5
  a58373:	c5 fc 10 ac 17 40 03 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x340]
  a5837a:	00 00 
  a5837c:	62 11 7c 48 28 c2    	vmovaps zmm8,zmm26
  a58382:	62 62 65 40 7f d5    	vpermt2ps zmm26,zmm19,zmm5
  a58388:	62 e2 15 48 7f f1    	vpermt2ps zmm22,zmm13,zmm1
  a5838e:	62 61 7c 48 10 9c 17 	vmovups zmm27,ZMMWORD PTR [rdi+rdx*1+0x360]
  a58395:	60 03 00 00 
  a58399:	c5 fc 10 8c 17 a0 03 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x3a0]
  a583a0:	00 00 
  a583a2:	62 01 7c 48 28 e3    	vmovaps zmm28,zmm27
  a583a8:	62 72 15 48 7f c5    	vpermt2ps zmm8,zmm13,zmm5
  a583ae:	62 62 15 48 7f e1    	vpermt2ps zmm28,zmm13,zmm1
  a583b4:	62 62 65 40 7f d9    	vpermt2ps zmm27,zmm19,zmm1
  a583ba:	62 01 2c 48 58 ca    	vaddps zmm25,zmm10,zmm26
  a583c0:	62 91 74 40 58 e9    	vaddps zmm5,zmm17,zmm25
  a583c6:	62 a1 1c 48 58 dc    	vaddps zmm19,zmm12,zmm20
  a583cc:	62 41 04 48 58 c1    	vaddps zmm24,zmm15,zmm9
  a583d2:	62 a1 24 40 58 fd    	vaddps zmm23,zmm27,zmm21
  a583d8:	62 01 6c 40 58 e8    	vaddps zmm29,zmm18,zmm24
  a583de:	62 d1 7c 48 58 c8    	vaddps zmm1,zmm0,zmm8
  a583e4:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a583eb:	06 
  a583ec:	62 61 7c 40 58 f1    	vaddps zmm30,zmm16,zmm1
  a583f2:	62 d1 6c 48 58 f6    	vaddps zmm6,zmm2,zmm14
  a583f8:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm6
  a583ff:	08 
  a58400:	62 b1 54 48 58 eb    	vaddps zmm5,zmm5,zmm19
  a58406:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm5
  a5840d:	02 
  a5840e:	62 d1 4c 40 58 cb    	vaddps zmm1,zmm22,zmm11
  a58414:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a5841b:	01 
  a5841c:	62 41 7c 48 5c f8    	vsubps zmm31,zmm0,zmm8
  a58422:	62 71 64 48 58 e9    	vaddps zmm13,zmm3,zmm1
  a58428:	62 b1 14 40 58 c7    	vaddps zmm0,zmm29,zmm23
  a5842e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a58435:	03 
  a58436:	62 d1 6c 48 5c d6    	vsubps zmm2,zmm2,zmm14
  a5843c:	62 f1 1c 40 58 cc    	vaddps zmm1,zmm28,zmm4
  a58442:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a58449:	04 
  a5844a:	62 41 4c 40 5c eb    	vsubps zmm29,zmm22,zmm11
  a58450:	62 71 0c 40 58 de    	vaddps zmm11,zmm30,zmm6
  a58456:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm11
  a5845d:	05 
  a5845e:	62 62 7d 48 18 35 80 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff61d280]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a58465:	d2 61 ff 
  a58468:	62 11 7c 48 28 f6    	vmovaps zmm14,zmm30
  a5846e:	62 32 35 40 a8 f1    	vfmadd213ps zmm14,zmm25,zmm17
  a58474:	62 61 1c 40 5c e4    	vsubps zmm28,zmm28,zmm4
  a5847a:	62 f1 14 48 58 f9    	vaddps zmm7,zmm13,zmm1
  a58480:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm7
  a58487:	07 
  a58488:	62 f2 7d 48 18 35 c6 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff61d2c6]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a5848f:	d2 61 ff 
  a58492:	62 e1 6c 48 59 f6    	vmulps zmm22,zmm2,zmm6
  a58498:	62 11 2c 48 5c d2    	vsubps zmm10,zmm10,zmm26
  a5849e:	62 01 7c 48 28 d6    	vmovaps zmm26,zmm30
  a584a4:	62 f2 7d 48 18 25 96 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff61d196]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a584ab:	d1 61 ff 
  a584ae:	62 72 65 40 bc f4    	vfnmadd231ps zmm14,zmm19,zmm4
  a584b4:	62 22 3d 40 a8 d2    	vfmadd213ps zmm26,zmm24,zmm18
  a584ba:	62 62 45 40 bc d4    	vfnmadd231ps zmm26,zmm23,zmm4
  a584c0:	62 31 1c 48 5c ec    	vsubps zmm13,zmm12,zmm20
  a584c6:	62 71 54 48 58 c0    	vaddps zmm8,zmm5,zmm0
  a584cc:	62 c1 04 48 5c e1    	vsubps zmm20,zmm15,zmm9
  a584d2:	62 71 1c 40 59 e6    	vmulps zmm12,zmm28,zmm6
  a584d8:	62 31 24 40 5c cd    	vsubps zmm9,zmm27,zmm21
  a584de:	62 f2 7d 48 18 0d b8 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff61ceb8]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a584e5:	ce 61 ff 
  a584e8:	62 e2 05 40 b8 f1    	vfmadd231ps zmm22,zmm31,zmm1
  a584ee:	62 11 7c 48 28 fe    	vmovaps zmm15,zmm30
  a584f4:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x180]
  a584fb:	06 
  a584fc:	62 32 55 48 a8 f8    	vfmadd213ps zmm15,zmm5,zmm16
  a58502:	62 82 5d 48 bc c9    	vfnmadd231ps zmm17,zmm4,zmm25
  a58508:	62 72 15 40 b8 e1    	vfmadd231ps zmm12,zmm29,zmm1
  a5850e:	62 61 14 48 59 de    	vmulps zmm27,zmm13,zmm6
  a58514:	62 62 2d 48 b8 d9    	vfmadd231ps zmm27,zmm10,zmm1
  a5851a:	62 a2 0d 40 b8 cb    	vfmadd231ps zmm17,zmm30,zmm19
  a58520:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x200]
  a58527:	08 
  a58528:	62 72 65 40 bc fc    	vfnmadd231ps zmm15,zmm19,zmm4
  a5852e:	62 91 7c 48 28 c6    	vmovaps zmm0,zmm30
  a58534:	62 61 04 40 59 ce    	vmulps zmm25,zmm31,zmm6
  a5853a:	62 62 75 48 bc ca    	vfnmadd231ps zmm25,zmm1,zmm2
  a58540:	62 f1 24 48 58 d7    	vaddps zmm2,zmm11,zmm7
  a58546:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm2
  a5854d:	09 
  a5854e:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x40]
  a58555:	01 
  a58556:	62 f2 45 48 a8 c3    	vfmadd213ps zmm0,zmm7,zmm3
  a5855c:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x100]
  a58563:	04 
  a58564:	62 f2 25 48 bc c4    	vfnmadd231ps zmm0,zmm11,zmm4
  a5856a:	62 82 5d 48 bc d0    	vfnmadd231ps zmm18,zmm4,zmm24
  a58570:	62 21 0c 48 58 fe    	vaddps zmm31,zmm14,zmm22
  a58576:	62 a2 0d 40 b8 d7    	vfmadd231ps zmm18,zmm30,zmm23
  a5857c:	62 f1 14 40 59 d6    	vmulps zmm2,zmm29,zmm6
  a58582:	62 92 75 48 bc d4    	vfnmadd231ps zmm2,zmm1,zmm28
  a58588:	62 41 2c 40 58 e4    	vaddps zmm28,zmm26,zmm12
  a5858e:	62 61 34 48 59 c6    	vmulps zmm24,zmm9,zmm6
  a58594:	62 62 5d 40 b8 c1    	vfmadd231ps zmm24,zmm20,zmm1
  a5859a:	62 e2 5d 48 bc c5    	vfnmadd231ps zmm16,zmm4,zmm5
  a585a0:	62 81 04 48 5c eb    	vsubps zmm21,zmm15,zmm27
  a585a6:	62 a2 0d 40 b8 c3    	vfmadd231ps zmm16,zmm30,zmm19
  a585ac:	62 71 2c 48 59 d6    	vmulps zmm10,zmm10,zmm6
  a585b2:	62 52 75 48 bc d5    	vfnmadd231ps zmm10,zmm1,zmm13
  a585b8:	62 11 7c 48 5c e8    	vsubps zmm13,zmm0,zmm24
  a585be:	62 81 74 40 58 d9    	vaddps zmm19,zmm17,zmm25
  a585c4:	62 f2 5d 48 bc df    	vfnmadd231ps zmm3,zmm4,zmm7
  a585ca:	62 d2 0d 40 b8 db    	vfmadd231ps zmm3,zmm30,zmm11
  a585d0:	62 91 04 40 5c fc    	vsubps zmm7,zmm31,zmm28
  a585d6:	62 f1 6c 40 58 ea    	vaddps zmm5,zmm18,zmm2
  a585dc:	62 f1 5c 40 59 f6    	vmulps zmm6,zmm20,zmm6
  a585e2:	62 d2 75 48 bc f1    	vfnmadd231ps zmm6,zmm1,zmm9
  a585e8:	62 c1 54 40 5c fd    	vsubps zmm23,zmm21,zmm13
  a585ee:	62 81 74 40 5c c9    	vsubps zmm17,zmm17,zmm25
  a585f4:	62 41 7c 40 5c f2    	vsubps zmm30,zmm16,zmm10
  a585fa:	62 e1 6c 40 5c d2    	vsubps zmm18,zmm18,zmm2
  a58600:	62 71 64 40 58 cd    	vaddps zmm9,zmm19,zmm5
  a58606:	62 21 2c 48 58 e8    	vaddps zmm29,zmm10,zmm16
  a5860c:	62 f1 64 48 5c ce    	vsubps zmm1,zmm3,zmm6
  a58612:	62 f1 4c 48 58 d3    	vaddps zmm2,zmm6,zmm3
  a58618:	62 f1 0c 40 58 d9    	vaddps zmm3,zmm30,zmm1
  a5861e:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm3
  a58625:	04 
  a58626:	62 31 0c 48 5c f6    	vsubps zmm14,zmm14,zmm22
  a5862c:	62 31 74 40 5c d2    	vsubps zmm10,zmm17,zmm18
  a58632:	62 41 2c 40 5c d4    	vsubps zmm26,zmm26,zmm12
  a58638:	62 61 14 40 5c ca    	vsubps zmm25,zmm29,zmm2
  a5863e:	62 51 24 40 58 ff    	vaddps zmm15,zmm27,zmm15
  a58644:	62 11 0c 48 58 e2    	vaddps zmm12,zmm14,zmm26
  a5864a:	62 f1 3c 40 58 c0    	vaddps zmm0,zmm24,zmm0
  a58650:	62 f1 04 48 58 d8    	vaddps zmm3,zmm15,zmm0
  a58656:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm3
  a5865d:	08 
  a5865e:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x80]
  a58665:	02 
  a58666:	62 e1 64 48 5c 44 24 	vsubps zmm16,zmm3,ZMMWORD PTR [rsp+0xc0]
  a5866d:	03 
  a5866e:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x140]
  a58675:	05 
  a58676:	62 f1 64 48 5c 5c 24 	vsubps zmm3,zmm3,ZMMWORD PTR [rsp+0x1c0]
  a5867d:	07 
  a5867e:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm3
  a58685:	05 
  a58686:	62 91 04 40 58 f4    	vaddps zmm6,zmm31,zmm28
  a5868c:	62 d1 54 40 58 dd    	vaddps zmm3,zmm21,zmm13
  a58692:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm3
  a58699:	06 
  a5869a:	62 71 64 40 5c dd    	vsubps zmm11,zmm19,zmm5
  a586a0:	62 61 0c 40 5c f1    	vsubps zmm30,zmm30,zmm1
  a586a6:	62 b1 74 40 58 ea    	vaddps zmm5,zmm17,zmm18
  a586ac:	62 f1 14 40 58 e2    	vaddps zmm4,zmm29,zmm2
  a586b2:	62 91 0c 48 5c d2    	vsubps zmm2,zmm14,zmm26
  a586b8:	62 e1 04 48 5c f0    	vsubps zmm22,zmm15,zmm0
  a586be:	62 51 7c 48 28 f0    	vmovaps zmm14,zmm8
  a586c4:	62 61 7c 48 28 1d b2 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff66e8b2]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a586cb:	e8 66 ff 
  a586ce:	62 72 25 40 7f f5    	vpermt2ps zmm14,zmm27,zmm5
  a586d4:	62 e1 7c 48 28 25 e2 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff66e8e2]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a586db:	e8 66 ff 
  a586de:	62 72 5d 40 7f c5    	vpermt2ps zmm8,zmm20,zmm5
  a586e4:	62 f1 7c 48 28 ef    	vmovaps zmm5,zmm7
  a586ea:	62 f2 5d 40 7f fa    	vpermt2ps zmm7,zmm20,zmm2
  a586f0:	62 f2 25 40 7f ea    	vpermt2ps zmm5,zmm27,zmm2
  a586f6:	62 d1 7c 48 28 d1    	vmovaps zmm2,zmm9
  a586fc:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a58700:	62 72 5d 40 7f cb    	vpermt2ps zmm9,zmm20,zmm3
  a58706:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a5870c:	62 f2 25 40 7f d3    	vpermt2ps zmm2,zmm27,zmm3
  a58712:	62 72 5d 40 7f d3    	vpermt2ps zmm10,zmm20,zmm3
  a58718:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a5871e:	62 72 5d 40 7f e3    	vpermt2ps zmm12,zmm20,zmm3
  a58724:	62 72 25 40 7f fb    	vpermt2ps zmm15,zmm27,zmm3
  a5872a:	62 a1 7c 48 28 c8    	vmovaps zmm17,zmm16
  a58730:	62 e2 25 40 7f cb    	vpermt2ps zmm17,zmm27,zmm3
  a58736:	62 e2 5d 40 7f c3    	vpermt2ps zmm16,zmm20,zmm3
  a5873c:	62 f2 25 40 7f c3    	vpermt2ps zmm0,zmm27,zmm3
  a58742:	62 e1 7c 48 28 ee    	vmovaps zmm21,zmm6
  a58748:	62 f2 5d 40 7f f3    	vpermt2ps zmm6,zmm20,zmm3
  a5874e:	62 41 7c 48 28 d3    	vmovaps zmm26,zmm11
  a58754:	62 e2 25 40 7f eb    	vpermt2ps zmm21,zmm27,zmm3
  a5875a:	62 62 25 40 7f d3    	vpermt2ps zmm26,zmm27,zmm3
  a58760:	62 72 5d 40 7f db    	vpermt2ps zmm11,zmm20,zmm3
  a58766:	62 c1 7c 48 28 d6    	vmovaps zmm18,zmm14
  a5876c:	62 f1 7c 48 28 0d 8a 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff66e78a]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a58773:	e7 66 ff 
  a58776:	62 e2 75 48 7f d0    	vpermt2ps zmm18,zmm1,zmm0
  a5877c:	62 61 7c 48 28 05 ba 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff66e7ba]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a58783:	e7 66 ff 
  a58786:	62 72 3d 40 7f f0    	vpermt2ps zmm14,zmm24,zmm0
  a5878c:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a58792:	62 b2 3d 40 7f e9    	vpermt2ps zmm5,zmm24,zmm17
  a58798:	62 b2 75 48 7f c1    	vpermt2ps zmm0,zmm1,zmm17
  a5879e:	62 e1 7c 48 28 da    	vmovaps zmm19,zmm2
  a587a4:	62 b2 3d 40 7f d5    	vpermt2ps zmm2,zmm24,zmm21
  a587aa:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a587b0:	62 a2 75 48 7f dd    	vpermt2ps zmm19,zmm1,zmm21
  a587b6:	62 12 3d 40 7f fa    	vpermt2ps zmm15,zmm24,zmm26
  a587bc:	62 52 75 48 7f c4    	vpermt2ps zmm8,zmm1,zmm12
  a587c2:	62 b2 75 48 7f f8    	vpermt2ps zmm7,zmm1,zmm16
  a587c8:	62 82 75 48 7f ca    	vpermt2ps zmm17,zmm1,zmm26
  a587ce:	62 72 75 48 7f ce    	vpermt2ps zmm9,zmm1,zmm6
  a587d4:	62 52 75 48 7f d3    	vpermt2ps zmm10,zmm1,zmm11
  a587da:	62 f1 8d 48 14 f2    	vunpcklpd zmm6,zmm14,zmm2
  a587e0:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm6
  a587e7:	03 
  a587e8:	62 f1 8d 48 15 d2    	vunpckhpd zmm2,zmm14,zmm2
  a587ee:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a587f5:	01 
  a587f6:	62 d1 bd 48 14 d1    	vunpcklpd zmm2,zmm8,zmm9
  a587fc:	62 d1 bd 48 15 f1    	vunpckhpd zmm6,zmm8,zmm9
  a58802:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm6
  a58809:	02 
  a5880a:	62 51 c5 48 14 ca    	vunpcklpd zmm9,zmm7,zmm10
  a58810:	62 d1 d5 48 14 f7    	vunpcklpd zmm6,zmm5,zmm15
  a58816:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm6
  a5881d:	0c 
  a5881e:	62 41 c5 48 15 e2    	vunpckhpd zmm28,zmm7,zmm10
  a58824:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x240]
  a5882b:	09 
  a5882c:	62 71 7c 48 28 e7    	vmovaps zmm12,zmm7
  a58832:	62 72 25 40 7f e4    	vpermt2ps zmm12,zmm27,zmm4
  a58838:	62 d1 d5 48 15 ef    	vunpckhpd zmm5,zmm5,zmm15
  a5883e:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm5
  a58845:	0b 
  a58846:	62 f2 5d 40 7f fc    	vpermt2ps zmm7,zmm20,zmm4
  a5884c:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a58852:	62 b1 7c 48 28 ff    	vmovaps zmm7,zmm23
  a58858:	62 a2 25 40 7f fe    	vpermt2ps zmm23,zmm27,zmm22
  a5885e:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a58864:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a5886a:	62 b2 5d 40 7f fe    	vpermt2ps zmm7,zmm20,zmm22
  a58870:	62 f1 7c 48 28 d7    	vmovaps zmm2,zmm7
  a58876:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x100]
  a5887d:	04 
  a5887e:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a58884:	62 72 25 40 7f fb    	vpermt2ps zmm15,zmm27,zmm3
  a5888a:	62 b1 ed 40 14 eb    	vunpcklpd zmm5,zmm18,zmm19
  a58890:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm5
  a58897:	0a 
  a58898:	62 81 7c 48 28 f1    	vmovaps zmm22,zmm25
  a5889e:	62 e2 25 40 7f f3    	vpermt2ps zmm22,zmm27,zmm3
  a588a4:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x200]
  a588ab:	08 
  a588ac:	62 31 7c 48 28 d5    	vmovaps zmm10,zmm21
  a588b2:	62 21 ed 40 15 fb    	vunpckhpd zmm31,zmm18,zmm19
  a588b8:	62 72 25 40 7f d3    	vpermt2ps zmm10,zmm27,zmm3
  a588be:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x140]
  a588c5:	05 
  a588c6:	62 a1 7c 48 28 d0    	vmovaps zmm18,zmm16
  a588cc:	62 e2 25 40 7f d3    	vpermt2ps zmm18,zmm27,zmm3
  a588d2:	62 31 fd 48 14 d9    	vunpcklpd zmm11,zmm0,zmm17
  a588d8:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x180]
  a588df:	06 
  a588e0:	62 e1 7c 48 28 de    	vmovaps zmm19,zmm6
  a588e6:	62 e2 25 40 7f db    	vpermt2ps zmm19,zmm27,zmm3
  a588ec:	62 91 7c 48 28 ee    	vmovaps zmm5,zmm30
  a588f2:	62 01 7c 48 28 ee    	vmovaps zmm29,zmm30
  a588f8:	62 a1 fd 48 15 c9    	vunpckhpd zmm17,zmm0,zmm17
  a588fe:	62 62 25 40 7f eb    	vpermt2ps zmm29,zmm27,zmm3
  a58904:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a5890a:	62 d2 75 48 7f c2    	vpermt2ps zmm0,zmm1,zmm10
  a58910:	62 f1 7c 48 28 3d 26 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff66e526]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a58917:	e5 66 ff 
  a5891a:	62 52 45 48 7f c1    	vpermt2ps zmm8,zmm7,zmm9
  a58920:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm8
  a58927:	07 
  a58928:	62 52 3d 40 7f e2    	vpermt2ps zmm12,zmm24,zmm10
  a5892e:	62 31 7c 48 28 c7    	vmovaps zmm8,zmm23
  a58934:	62 32 75 48 7f c2    	vpermt2ps zmm8,zmm1,zmm18
  a5893a:	62 61 7c 48 28 35 bc 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff66e4bc]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a58941:	e4 66 ff 
  a58944:	62 52 0d 40 7f f1    	vpermt2ps zmm14,zmm30,zmm9
  a5894a:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm14
  a58951:	09 
  a58952:	62 a2 3d 40 7f fa    	vpermt2ps zmm23,zmm24,zmm18
  a58958:	62 51 7c 48 28 cf    	vmovaps zmm9,zmm15
  a5895e:	62 32 75 48 7f cb    	vpermt2ps zmm9,zmm1,zmm19
  a58964:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0xc0]
  a5896b:	03 
  a5896c:	62 c1 7c 48 28 d2    	vmovaps zmm18,zmm10
  a58972:	62 32 3d 40 7f fb    	vpermt2ps zmm15,zmm24,zmm19
  a58978:	62 21 7c 48 28 de    	vmovaps zmm27,zmm22
  a5897e:	62 02 75 48 7f dd    	vpermt2ps zmm27,zmm1,zmm29
  a58984:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x300]
  a5898b:	0c 
  a5898c:	62 32 45 48 7f d3    	vpermt2ps zmm10,zmm7,zmm19
  a58992:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm10
  a58999:	03 
  a5899a:	62 82 3d 40 7f f5    	vpermt2ps zmm22,zmm24,zmm29
  a589a0:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x80]
  a589a7:	02 
  a589a8:	62 51 7c 48 28 f2    	vmovaps zmm14,zmm10
  a589ae:	62 12 45 48 7f d4    	vpermt2ps zmm10,zmm7,zmm28
  a589b4:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm10
  a589bb:	02 
  a589bc:	62 12 0d 40 7f f4    	vpermt2ps zmm14,zmm30,zmm28
  a589c2:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x40]
  a589c9:	01 
  a589ca:	62 41 7c 48 28 e2    	vmovaps zmm28,zmm10
  a589d0:	62 72 5d 40 7f eb    	vpermt2ps zmm13,zmm20,zmm3
  a589d6:	62 62 5d 40 7f cb    	vpermt2ps zmm25,zmm20,zmm3
  a589dc:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x2c0]
  a589e3:	0b 
  a589e4:	62 12 45 48 7f d5    	vpermt2ps zmm10,zmm7,zmm29
  a589ea:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm10
  a589f1:	01 
  a589f2:	62 e2 5d 40 7f eb    	vpermt2ps zmm21,zmm20,zmm3
  a589f8:	62 e2 5d 40 7f c3    	vpermt2ps zmm16,zmm20,zmm3
  a589fe:	62 b2 75 48 7f e5    	vpermt2ps zmm4,zmm1,zmm21
  a58a04:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x280]
  a58a0b:	0a 
  a58a0c:	62 41 7c 48 28 c2    	vmovaps zmm24,zmm10
  a58a12:	62 f2 5d 40 7f f3    	vpermt2ps zmm6,zmm20,zmm3
  a58a18:	62 f2 5d 40 7f eb    	vpermt2ps zmm5,zmm20,zmm3
  a58a1e:	62 b2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm16
  a58a24:	62 52 45 48 7f d3    	vpermt2ps zmm10,zmm7,zmm11
  a58a2a:	62 c1 7c 48 28 e2    	vmovaps zmm20,zmm10
  a58a30:	62 72 75 48 7f ee    	vpermt2ps zmm13,zmm1,zmm6
  a58a36:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a58a3c:	62 62 75 48 7f cd    	vpermt2ps zmm25,zmm1,zmm5
  a58a42:	62 c1 fd 48 14 e9    	vunpcklpd zmm21,zmm0,zmm9
  a58a48:	62 11 7c 48 28 ef    	vmovaps zmm13,zmm31
  a58a4e:	62 51 fd 48 15 d1    	vunpckhpd zmm10,zmm0,zmm9
  a58a54:	62 91 bd 48 14 cb    	vunpcklpd zmm1,zmm8,zmm27
  a58a5a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a58a61:	05 
  a58a62:	62 11 bd 48 15 cb    	vunpckhpd zmm9,zmm8,zmm27
  a58a68:	62 22 45 48 7f f9    	vpermt2ps zmm31,zmm7,zmm17
  a58a6e:	62 21 7c 48 28 d9    	vmovaps zmm27,zmm17
  a58a74:	62 c1 9d 48 14 c7    	vunpcklpd zmm16,zmm12,zmm15
  a58a7a:	62 d1 9d 48 15 c7    	vunpckhpd zmm0,zmm12,zmm15
  a58a80:	62 31 c5 40 14 c6    	vunpcklpd zmm8,zmm23,zmm22
  a58a86:	62 a2 0d 40 7f d3    	vpermt2ps zmm18,zmm30,zmm19
  a58a8c:	62 a1 7c 48 28 da    	vmovaps zmm19,zmm18
  a58a92:	62 a1 c5 40 15 f6    	vunpckhpd zmm22,zmm23,zmm22
  a58a98:	62 f1 dd 48 14 f3    	vunpcklpd zmm6,zmm4,zmm3
  a58a9e:	62 71 dd 48 15 fb    	vunpckhpd zmm15,zmm4,zmm3
  a58aa4:	62 02 0d 40 7f e5    	vpermt2ps zmm28,zmm30,zmm29
  a58aaa:	62 81 ed 48 14 f9    	vunpcklpd zmm23,zmm2,zmm25
  a58ab0:	62 91 ed 48 15 d9    	vunpckhpd zmm3,zmm2,zmm25
  a58ab6:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm21
  a58abd:	06 
  a58abe:	62 e2 45 48 7f e9    	vpermt2ps zmm21,zmm7,zmm1
  a58ac4:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a58aca:	62 21 7c 48 28 e8    	vmovaps zmm29,zmm16
  a58ad0:	62 c2 45 48 7f c0    	vpermt2ps zmm16,zmm7,zmm8
  a58ad6:	62 42 0d 40 7f e8    	vpermt2ps zmm29,zmm30,zmm8
  a58adc:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a58ae2:	62 b2 45 48 7f c6    	vpermt2ps zmm0,zmm7,zmm22
  a58ae8:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  a58aee:	62 52 45 48 7f d1    	vpermt2ps zmm10,zmm7,zmm9
  a58af4:	62 b2 0d 40 7f ef    	vpermt2ps zmm5,zmm30,zmm23
  a58afa:	62 b2 45 48 7f f7    	vpermt2ps zmm6,zmm7,zmm23
  a58b00:	62 41 7c 48 28 cf    	vmovaps zmm25,zmm15
  a58b06:	62 32 0d 40 7f c6    	vpermt2ps zmm8,zmm30,zmm22
  a58b0c:	62 62 0d 40 7f cb    	vpermt2ps zmm25,zmm30,zmm3
  a58b12:	62 72 45 48 7f fb    	vpermt2ps zmm15,zmm7,zmm3
  a58b18:	62 f1 7c 48 10 59 12 	vmovups zmm3,ZMMWORD PTR [rcx+0x480]
  a58b1f:	62 42 0d 40 7f c3    	vpermt2ps zmm24,zmm30,zmm11
  a58b25:	62 f1 7c 48 10 49 13 	vmovups zmm1,ZMMWORD PTR [rcx+0x4c0]
  a58b2c:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x1c0]
  a58b33:	07 
  a58b34:	62 f1 5c 48 59 d3    	vmulps zmm2,zmm4,zmm3
  a58b3a:	62 f1 4c 48 59 fb    	vmulps zmm7,zmm6,zmm3
  a58b40:	62 f2 4d 48 bc d1    	vfnmadd231ps zmm2,zmm6,zmm1
  a58b46:	62 e1 7c 48 28 fa    	vmovaps zmm23,zmm2
  a58b4c:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a58b53:	04 
  a58b54:	62 f1 7c 48 10 59 0c 	vmovups zmm3,ZMMWORD PTR [rcx+0x300]
  a58b5b:	62 f2 75 48 b8 fc    	vfmadd231ps zmm7,zmm1,zmm4
  a58b61:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  a58b68:	62 f1 1c 40 59 f3    	vmulps zmm6,zmm28,zmm3
  a58b6e:	62 f2 3d 48 bc f1    	vfnmadd231ps zmm6,zmm8,zmm1
  a58b74:	62 e1 3c 48 59 f3    	vmulps zmm22,zmm8,zmm3
  a58b7a:	62 f1 7c 48 10 51 14 	vmovups zmm2,ZMMWORD PTR [rcx+0x500]
  a58b81:	62 82 75 48 b8 f4    	vfmadd231ps zmm22,zmm1,zmm28
  a58b87:	62 f1 7c 48 10 49 15 	vmovups zmm1,ZMMWORD PTR [rcx+0x540]
  a58b8e:	62 e1 0c 48 59 d2    	vmulps zmm18,zmm14,zmm2
  a58b94:	62 71 34 40 59 c2    	vmulps zmm8,zmm25,zmm2
  a58b9a:	62 e2 35 40 bc d1    	vfnmadd231ps zmm18,zmm25,zmm1
  a58ba0:	62 f1 7c 48 10 51 06 	vmovups zmm2,ZMMWORD PTR [rcx+0x180]
  a58ba7:	62 52 75 48 b8 c6    	vfmadd231ps zmm8,zmm1,zmm14
  a58bad:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a58bb4:	62 e1 04 40 59 ca    	vmulps zmm17,zmm31,zmm2
  a58bba:	62 e2 2d 48 bc c9    	vfnmadd231ps zmm17,zmm10,zmm1
  a58bc0:	62 71 2c 48 59 d2    	vmulps zmm10,zmm10,zmm2
  a58bc6:	62 f1 7c 48 10 51 0e 	vmovups zmm2,ZMMWORD PTR [rcx+0x380]
  a58bcd:	62 12 75 48 b8 d7    	vfmadd231ps zmm10,zmm1,zmm31
  a58bd3:	62 f1 7c 48 10 59 0f 	vmovups zmm3,ZMMWORD PTR [rcx+0x3c0]
  a58bda:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a58be1:	01 
  a58be2:	62 f1 74 48 59 e2    	vmulps zmm4,zmm1,zmm2
  a58be8:	62 61 7c 48 59 ca    	vmulps zmm25,zmm0,zmm2
  a58bee:	62 f2 7d 48 bc e3    	vfnmadd231ps zmm4,zmm0,zmm3
  a58bf4:	62 f1 7c 48 10 41 08 	vmovups zmm0,ZMMWORD PTR [rcx+0x200]
  a58bfb:	62 62 65 48 b8 c9    	vfmadd231ps zmm25,zmm3,zmm1
  a58c01:	62 f1 7c 48 10 51 09 	vmovups zmm2,ZMMWORD PTR [rcx+0x240]
  a58c08:	62 f1 64 40 59 d8    	vmulps zmm3,zmm19,zmm0
  a58c0e:	62 f2 15 40 bc da    	vfnmadd231ps zmm3,zmm29,zmm2
  a58c14:	62 f1 14 40 59 c0    	vmulps zmm0,zmm29,zmm0
  a58c1a:	62 71 7c 48 10 71 02 	vmovups zmm14,ZMMWORD PTR [rcx+0x80]
  a58c21:	62 b2 6d 48 b8 c3    	vfmadd231ps zmm0,zmm2,zmm19
  a58c27:	62 61 7c 48 10 61 03 	vmovups zmm28,ZMMWORD PTR [rcx+0xc0]
  a58c2e:	62 d1 5c 40 59 d6    	vmulps zmm2,zmm20,zmm14
  a58c34:	62 51 54 40 59 f6    	vmulps zmm14,zmm21,zmm14
  a58c3a:	62 92 55 40 bc d4    	vfnmadd231ps zmm2,zmm21,zmm28
  a58c40:	62 32 1d 40 b8 f4    	vfmadd231ps zmm14,zmm28,zmm20
  a58c46:	62 e1 7c 48 10 59 10 	vmovups zmm19,ZMMWORD PTR [rcx+0x400]
  a58c4d:	62 e1 7c 48 10 69 11 	vmovups zmm21,ZMMWORD PTR [rcx+0x440]
  a58c54:	62 12 0d 40 7f eb    	vpermt2ps zmm13,zmm30,zmm27
  a58c5a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x240]
  a58c61:	09 
  a58c62:	62 21 74 48 59 d3    	vmulps zmm26,zmm1,zmm19
  a58c68:	62 22 55 48 bc d5    	vfnmadd231ps zmm26,zmm5,zmm21
  a58c6e:	62 b1 54 48 59 eb    	vmulps zmm5,zmm5,zmm19
  a58c74:	62 e1 7c 48 10 59 04 	vmovups zmm19,ZMMWORD PTR [rcx+0x100]
  a58c7b:	62 f2 55 40 b8 e9    	vfmadd231ps zmm5,zmm21,zmm1
  a58c81:	62 e1 7c 48 10 61 05 	vmovups zmm20,ZMMWORD PTR [rcx+0x140]
  a58c88:	62 e1 7c 48 10 69 0a 	vmovups zmm21,ZMMWORD PTR [rcx+0x280]
  a58c8f:	62 52 0d 40 7f e1    	vpermt2ps zmm12,zmm30,zmm9
  a58c95:	62 21 14 48 59 e3    	vmulps zmm28,zmm13,zmm19
  a58c9b:	62 22 1d 48 bc e4    	vfnmadd231ps zmm28,zmm12,zmm20
  a58ca1:	62 a1 1c 48 59 db    	vmulps zmm19,zmm12,zmm19
  a58ca7:	62 71 7c 48 10 49 0b 	vmovups zmm9,ZMMWORD PTR [rcx+0x2c0]
  a58cae:	62 c2 5d 40 b8 dd    	vfmadd231ps zmm19,zmm20,zmm13
  a58cb4:	62 71 7c 48 10 61 16 	vmovups zmm12,ZMMWORD PTR [rcx+0x580]
  a58cbb:	62 71 7c 48 10 69 17 	vmovups zmm13,ZMMWORD PTR [rcx+0x5c0]
  a58cc2:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x180]
  a58cc9:	06 
  a58cca:	62 62 0d 40 7f 5c 24 	vpermt2ps zmm27,zmm30,ZMMWORD PTR [rsp+0x140]
  a58cd1:	05 
  a58cd2:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a58cd9:	02 
  a58cda:	62 c1 74 48 59 e4    	vmulps zmm20,zmm1,zmm12
  a58ce0:	62 c2 05 48 bc e5    	vfnmadd231ps zmm20,zmm15,zmm13
  a58ce6:	62 51 04 48 59 e4    	vmulps zmm12,zmm15,zmm12
  a58cec:	62 61 3c 40 58 ee    	vaddps zmm29,zmm24,zmm6
  a58cf2:	62 72 15 48 b8 e1    	vfmadd231ps zmm12,zmm13,zmm1
  a58cf8:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a58cff:	03 
  a58d00:	62 31 74 48 59 dd    	vmulps zmm11,zmm1,zmm21
  a58d06:	62 52 7d 40 bc d9    	vfnmadd231ps zmm11,zmm16,zmm9
  a58d0c:	62 31 74 40 58 ef    	vaddps zmm13,zmm17,zmm23
  a58d12:	62 31 7c 40 59 fd    	vmulps zmm15,zmm16,zmm21
  a58d18:	62 a1 64 48 58 ea    	vaddps zmm21,zmm3,zmm18
  a58d1e:	62 72 35 48 b8 f9    	vfmadd231ps zmm15,zmm9,zmm1
  a58d24:	62 61 5c 48 58 f2    	vaddps zmm30,zmm4,zmm2
  a58d2a:	62 41 5c 40 58 fb    	vaddps zmm31,zmm20,zmm11
  a58d30:	62 b1 64 48 5c ca    	vsubps zmm1,zmm3,zmm18
  a58d36:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a58d3d:	01 
  a58d3e:	62 c1 34 40 58 d6    	vaddps zmm18,zmm25,zmm14
  a58d44:	62 c1 34 40 5c fe    	vsubps zmm23,zmm25,zmm14
  a58d4a:	62 41 1c 48 58 cf    	vaddps zmm25,zmm12,zmm15
  a58d50:	62 51 1c 48 5c e7    	vsubps zmm12,zmm12,zmm15
  a58d56:	62 61 3c 40 5c c6    	vsubps zmm24,zmm24,zmm6
  a58d5c:	62 91 2c 40 58 dc    	vaddps zmm3,zmm26,zmm28
  a58d62:	62 f1 2c 48 58 f7    	vaddps zmm6,zmm10,zmm7
  a58d68:	62 f1 2c 48 5c ff    	vsubps zmm7,zmm10,zmm7
  a58d6e:	62 11 4c 40 58 d3    	vaddps zmm10,zmm22,zmm27
  a58d74:	62 11 2c 40 5c cc    	vsubps zmm9,zmm26,zmm28
  a58d7a:	62 d1 7c 48 58 c8    	vaddps zmm1,zmm0,zmm8
  a58d80:	62 41 7c 48 5c e0    	vsubps zmm28,zmm0,zmm8
  a58d86:	62 71 6c 48 5c f4    	vsubps zmm14,zmm2,zmm4
  a58d8c:	62 d1 14 40 58 c5    	vaddps zmm0,zmm29,zmm13
  a58d92:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a58d99:	02 
  a58d9a:	62 b1 54 48 58 c3    	vaddps zmm0,zmm5,zmm19
  a58da0:	62 31 54 48 5c fb    	vsubps zmm15,zmm5,zmm19
  a58da6:	62 a1 24 48 5c c4    	vsubps zmm16,zmm11,zmm20
  a58dac:	62 91 54 40 58 e6    	vaddps zmm4,zmm21,zmm30
  a58db2:	62 d1 4c 48 58 d2    	vaddps zmm2,zmm6,zmm10
  a58db8:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a58dbf:	03 
  a58dc0:	62 a1 24 40 5c f6    	vsubps zmm22,zmm27,zmm22
  a58dc6:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x100]
  a58dcd:	04 
  a58dce:	62 b1 6c 48 5c e9    	vsubps zmm5,zmm2,zmm17
  a58dd4:	62 81 64 48 58 e7    	vaddps zmm20,zmm3,zmm31
  a58dda:	62 31 74 48 58 da    	vaddps zmm11,zmm1,zmm18
  a58de0:	62 81 54 40 5c ee    	vsubps zmm21,zmm21,zmm30
  a58de6:	62 c1 14 40 5c cd    	vsubps zmm17,zmm29,zmm13
  a58dec:	62 11 7c 48 58 e9    	vaddps zmm13,zmm0,zmm25
  a58df2:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x40]
  a58df9:	01 
  a58dfa:	62 21 3c 48 58 ef    	vaddps zmm29,zmm8,zmm23
  a58e00:	62 a1 74 48 5c d2    	vsubps zmm18,zmm1,zmm18
  a58e06:	62 e1 3c 40 58 df    	vaddps zmm19,zmm24,zmm7
  a58e0c:	62 01 64 48 5c f7    	vsubps zmm30,zmm3,zmm31
  a58e12:	62 d1 1c 40 58 d6    	vaddps zmm2,zmm28,zmm14
  a58e18:	62 01 7c 48 5c c9    	vsubps zmm25,zmm0,zmm25
  a58e1e:	62 f1 2c 48 5c f6    	vsubps zmm6,zmm10,zmm6
  a58e24:	62 21 5c 48 58 d4    	vaddps zmm26,zmm4,zmm20
  a58e2a:	62 b1 04 48 58 d8    	vaddps zmm3,zmm15,zmm16
  a58e30:	62 71 3c 40 5c d7    	vsubps zmm10,zmm24,zmm7
  a58e36:	62 f1 6c 48 5c fb    	vsubps zmm7,zmm2,zmm3
  a58e3c:	62 f1 6c 48 58 d3    	vaddps zmm2,zmm2,zmm3
  a58e42:	62 d1 34 48 58 dc    	vaddps zmm3,zmm9,zmm12
  a58e48:	62 a1 3c 48 5c ff    	vsubps zmm23,zmm8,zmm23
  a58e4e:	62 71 14 40 58 c3    	vaddps zmm8,zmm29,zmm3
  a58e54:	62 61 14 40 5c c3    	vsubps zmm24,zmm29,zmm3
  a58e5a:	62 d1 24 48 58 dd    	vaddps zmm3,zmm11,zmm13
  a58e60:	62 d1 34 48 5c cc    	vsubps zmm1,zmm9,zmm12
  a58e66:	62 11 6c 40 5c c9    	vsubps zmm9,zmm18,zmm25
  a58e6c:	62 81 6c 40 58 d1    	vaddps zmm18,zmm18,zmm25
  a58e72:	62 21 54 48 58 ce    	vaddps zmm25,zmm5,zmm22
  a58e78:	62 f1 4c 40 5c ed    	vsubps zmm5,zmm22,zmm5
  a58e7e:	62 81 54 40 58 f6    	vaddps zmm22,zmm21,zmm30
  a58e84:	62 81 54 40 5c ee    	vsubps zmm21,zmm21,zmm30
  a58e8a:	62 72 7d 48 18 25 cc 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff61c5cc]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a58e91:	c5 61 ff 
  a58e94:	62 41 7c 48 28 dc    	vmovaps zmm27,zmm12
  a58e9a:	62 22 3d 48 ac db    	vfnmadd213ps zmm27,zmm8,zmm19
  a58ea0:	62 51 1c 40 5c f6    	vsubps zmm14,zmm28,zmm14
  a58ea6:	62 f2 7d 48 18 05 24 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff61c424]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a58ead:	c4 61 ff 
  a58eb0:	62 61 44 48 59 e0    	vmulps zmm28,zmm7,zmm0
  a58eb6:	62 41 7c 48 28 ec    	vmovaps zmm29,zmm12
  a58ebc:	62 02 6d 48 ac e9    	vfnmadd213ps zmm29,zmm2,zmm25
  a58ec2:	62 31 04 48 5c f8    	vsubps zmm15,zmm15,zmm16
  a58ec8:	62 61 3c 40 59 c0    	vmulps zmm24,zmm24,zmm0
  a58ece:	62 41 7c 48 28 f4    	vmovaps zmm30,zmm12
  a58ed4:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a58eda:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a58ee0:	62 22 4d 40 ac f1    	vfnmadd213ps zmm30,zmm22,zmm17
  a58ee6:	62 72 6d 40 ac ee    	vfnmadd213ps zmm13,zmm18,zmm6
  a58eec:	62 a1 5c 48 5c e4    	vsubps zmm20,zmm4,zmm20
  a58ef2:	62 61 44 40 58 f9    	vaddps zmm31,zmm23,zmm1
  a58ef8:	62 b1 74 40 58 e6    	vaddps zmm4,zmm17,zmm22
  a58efe:	62 81 2c 48 58 cf    	vaddps zmm17,zmm10,zmm31
  a58f04:	62 b1 4c 48 58 fa    	vaddps zmm7,zmm6,zmm18
  a58f0a:	62 42 1d 48 ac fa    	vfnmadd213ps zmm31,zmm12,zmm10
  a58f10:	62 91 24 40 58 f4    	vaddps zmm6,zmm27,zmm28
  a58f16:	62 c1 0c 48 58 d7    	vaddps zmm18,zmm14,zmm15
  a58f1c:	62 51 0c 48 5c d7    	vsubps zmm10,zmm14,zmm15
  a58f22:	62 a1 54 48 58 f2    	vaddps zmm22,zmm5,zmm18
  a58f28:	62 81 24 40 5c c4    	vsubps zmm16,zmm27,zmm28
  a58f2e:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a58f34:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x80]
  a58f3b:	02 
  a58f3c:	62 12 2d 40 ac f4    	vfnmadd213ps zmm14,zmm26,zmm28
  a58f42:	62 e2 1d 48 ac d5    	vfnmadd213ps zmm18,zmm12,zmm5
  a58f48:	62 01 14 40 5c d8    	vsubps zmm27,zmm29,zmm24
  a58f4e:	62 f1 24 48 59 e8    	vmulps zmm5,zmm11,zmm0
  a58f54:	62 71 44 40 5c d9    	vsubps zmm11,zmm23,zmm1
  a58f5a:	62 e1 0c 48 58 fd    	vaddps zmm23,zmm14,zmm5
  a58f60:	62 01 14 40 58 c0    	vaddps zmm24,zmm29,zmm24
  a58f66:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0xc0]
  a58f6d:	03 
  a58f6e:	62 12 65 48 ac e5    	vfnmadd213ps zmm12,zmm3,zmm29
  a58f74:	62 71 5c 40 59 f8    	vmulps zmm15,zmm20,zmm0
  a58f7a:	62 71 0c 48 5c f5    	vsubps zmm14,zmm14,zmm5
  a58f80:	62 c1 1c 48 5c e7    	vsubps zmm20,zmm12,zmm15
  a58f86:	62 51 1c 48 58 ff    	vaddps zmm15,zmm12,zmm15
  a58f8c:	62 51 64 40 58 c0    	vaddps zmm8,zmm19,zmm8
  a58f92:	62 f1 34 48 59 c8    	vmulps zmm1,zmm9,zmm0
  a58f98:	62 71 34 40 58 e2    	vaddps zmm12,zmm25,zmm2
  a58f9e:	62 f1 0c 40 5c d1    	vsubps zmm2,zmm30,zmm1
  a58fa4:	62 71 54 40 59 c8    	vmulps zmm9,zmm21,zmm0
  a58faa:	62 f1 0c 40 58 e9    	vaddps zmm5,zmm30,zmm1
  a58fb0:	62 c1 14 48 58 e9    	vaddps zmm21,zmm13,zmm9
  a58fb6:	62 f1 2c 48 59 c8    	vmulps zmm1,zmm10,zmm0
  a58fbc:	62 51 14 48 5c d1    	vsubps zmm10,zmm13,zmm9
  a58fc2:	62 71 04 40 58 e9    	vaddps zmm13,zmm31,zmm1
  a58fc8:	62 71 24 48 59 c8    	vmulps zmm9,zmm11,zmm0
  a58fce:	62 f1 04 40 5c c9    	vsubps zmm1,zmm31,zmm1
  a58fd4:	62 51 6c 40 5c d9    	vsubps zmm11,zmm18,zmm9
  a58fda:	62 51 6c 40 58 c9    	vaddps zmm9,zmm18,zmm9
  a58fe0:	62 f1 14 40 58 db    	vaddps zmm3,zmm29,zmm3
  a58fe6:	62 91 1c 40 58 c2    	vaddps zmm0,zmm28,zmm26
  a58fec:	62 b3 7d 48 19 da 02 	vextractf32x4 xmm18,zmm3,0x2
  a58ff3:	62 e1 7c 48 28 1d 83 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff63a183]        # 93180 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20630>
  a58ffa:	a1 63 ff 
  a58ffd:	62 f2 65 40 7f d8    	vpermt2ps zmm3,zmm19,zmm0
  a59003:	62 f1 7c 48 11 1c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm3
  a5900a:	62 f3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm0,0x2
  a59011:	62 f1 6c 00 14 c0    	vunpcklps xmm0,xmm18,xmm0
  a59017:	c5 f8 11 44 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm0
  a5901d:	62 63 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm27,0x2
  a59024:	62 62 65 40 7f de    	vpermt2ps zmm27,zmm19,zmm6
  a5902a:	62 61 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x50],zmm27
  a59031:	50 00 00 00 
  a59035:	62 f3 7d 48 19 f3 02 	vextractf32x4 xmm3,zmm6,0x2
  a5903c:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  a59040:	c5 f8 11 84 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm0
  a59047:	00 00 
  a59049:	62 e3 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm21,0x2
  a59050:	62 e2 65 40 7f ea    	vpermt2ps zmm21,zmm19,zmm2
  a59056:	62 e1 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xa0],zmm21
  a5905d:	a0 00 00 00 
  a59061:	62 f3 7d 48 19 d2 02 	vextractf32x4 xmm2,zmm2,0x2
  a59068:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a5906c:	c5 f8 11 84 16 e0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xe0],xmm0
  a59073:	00 00 
  a59075:	62 e3 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm22,0x2
  a5907c:	62 a2 65 40 7f f1    	vpermt2ps zmm22,zmm19,zmm17
  a59082:	62 e1 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm22
  a59089:	f0 00 00 00 
  a5908d:	62 e3 7d 48 19 ca 02 	vextractf32x4 xmm2,zmm17,0x2
  a59094:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a59098:	c5 f8 11 84 16 30 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x130],xmm0
  a5909f:	00 00 
  a590a1:	62 e3 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm20,0x2
  a590a8:	62 a2 65 40 7f e7    	vpermt2ps zmm20,zmm19,zmm23
  a590ae:	62 e1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm20
  a590b5:	05 
  a590b6:	62 e3 7d 48 19 fa 02 	vextractf32x4 xmm2,zmm23,0x2
  a590bd:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a590c1:	c5 f8 11 84 16 80 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x180],xmm0
  a590c8:	00 00 
  a590ca:	62 63 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm24,0x2
  a590d1:	62 22 65 40 7f c0    	vpermt2ps zmm24,zmm19,zmm16
  a590d7:	62 61 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x190],zmm24
  a590de:	90 01 00 00 
  a590e2:	62 e3 7d 48 19 c2 02 	vextractf32x4 xmm2,zmm16,0x2
  a590e9:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a590ed:	c5 f8 11 84 16 d0 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x1d0],xmm0
  a590f4:	00 00 
  a590f6:	62 f3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm7,0x2
  a590fd:	62 f2 65 40 7f fc    	vpermt2ps zmm7,zmm19,zmm4
  a59103:	62 f1 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm7
  a5910a:	e0 01 00 00 
  a5910e:	62 f3 7d 48 19 e2 02 	vextractf32x4 xmm2,zmm4,0x2
  a59115:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a59119:	c5 f8 11 84 16 20 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x220],xmm0
  a59120:	00 00 
  a59122:	62 73 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm11,0x2
  a59129:	62 52 65 40 7f dd    	vpermt2ps zmm11,zmm19,zmm13
  a5912f:	62 71 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x230],zmm11
  a59136:	30 02 00 00 
  a5913a:	62 73 7d 48 19 ea 02 	vextractf32x4 xmm2,zmm13,0x2
  a59141:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a59145:	c5 f8 11 84 16 70 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x270],xmm0
  a5914c:	00 00 
  a5914e:	62 73 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm15,0x2
  a59155:	62 52 65 40 7f fe    	vpermt2ps zmm15,zmm19,zmm14
  a5915b:	62 71 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm15
  a59162:	0a 
  a59163:	62 73 7d 48 19 f2 02 	vextractf32x4 xmm2,zmm14,0x2
  a5916a:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a5916e:	c5 f8 11 84 16 c0 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x2c0],xmm0
  a59175:	00 00 
  a59177:	62 73 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm12,0x2
  a5917e:	62 52 65 40 7f e0    	vpermt2ps zmm12,zmm19,zmm8
  a59184:	62 71 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm12
  a5918b:	d0 02 00 00 
  a5918f:	62 73 7d 48 19 c2 02 	vextractf32x4 xmm2,zmm8,0x2
  a59196:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a5919a:	c5 f8 11 84 16 10 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x310],xmm0
  a591a1:	00 00 
  a591a3:	62 73 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm10,0x2
  a591aa:	62 72 65 40 7f d5    	vpermt2ps zmm10,zmm19,zmm5
  a591b0:	62 71 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x320],zmm10
  a591b7:	20 03 00 00 
  a591bb:	62 f3 7d 48 19 ea 02 	vextractf32x4 xmm2,zmm5,0x2
  a591c2:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a591c6:	c5 f8 11 84 16 60 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x360],xmm0
  a591cd:	00 00 
  a591cf:	62 73 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm9,0x2
  a591d6:	62 72 65 40 7f c9    	vpermt2ps zmm9,zmm19,zmm1
  a591dc:	62 71 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x370],zmm9
  a591e3:	70 03 00 00 
  a591e7:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a591ee:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a591f2:	c5 f8 11 84 16 b0 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x3b0],xmm0
  a591f9:	00 00 
  a591fb:	48 81 c2 c0 03 00 00 	add    rdx,0x3c0
  a59202:	48 39 d0             	cmp    rax,rdx
  a59205:	0f 85 25 f0 ff ff    	jne    a58230 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a5920b:	48 89 ec             	mov    rsp,rbp
  a5920e:	5d                   	pop    rbp
  a5920f:	c5 f8 77             	vzeroupper
  a59212:	c3                   	ret
