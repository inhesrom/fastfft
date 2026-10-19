
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a21240 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a21240:	55                   	push   rbp
  a21241:	48 89 e5             	mov    rbp,rsp
  a21244:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a21248:	48 81 ec c0 0b 00 00 	sub    rsp,0xbc0
  a2124f:	c6 84 24 40 0b 00 00 	mov    BYTE PTR [rsp+0xb40],0x0
  a21256:	00 
  a21257:	48 8d 84 24 40 0b 00 	lea    rax,[rsp+0xb40]
  a2125e:	00 
  a2125f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a21264:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a21269:	62 71 7c 48 28 05 8d 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff66ec8d]        # 8ff00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d3b0>
  a21270:	ec 66 ff 
  a21273:	62 f1 7c 48 10 2f    	vmovups zmm5,ZMMWORD PTR [rdi]
  a21279:	62 61 7c 48 10 47 01 	vmovups zmm24,ZMMWORD PTR [rdi+0x40]
  a21280:	62 f1 7c 48 10 77 02 	vmovups zmm6,ZMMWORD PTR [rdi+0x80]
  a21287:	62 71 7c 48 10 77 03 	vmovups zmm14,ZMMWORD PTR [rdi+0xc0]
  a2128e:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a21294:	62 82 3d 48 7f c0    	vpermt2ps zmm16,zmm8,zmm24
  a2129a:	62 f1 7c 48 10 57 04 	vmovups zmm2,ZMMWORD PTR [rdi+0x100]
  a212a1:	62 f1 7c 48 10 67 05 	vmovups zmm4,ZMMWORD PTR [rdi+0x140]
  a212a8:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a212ae:	62 f2 3d 48 7f c4    	vpermt2ps zmm0,zmm8,zmm4
  a212b4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a212bb:	07 
  a212bc:	62 71 7c 48 10 67 10 	vmovups zmm12,ZMMWORD PTR [rdi+0x400]
  a212c3:	62 71 7c 48 10 7f 11 	vmovups zmm15,ZMMWORD PTR [rdi+0x440]
  a212ca:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a212d0:	62 d2 3d 48 7f cf    	vpermt2ps zmm1,zmm8,zmm15
  a212d6:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a212dd:	06 
  a212de:	62 e1 7c 48 58 f1    	vaddps zmm22,zmm0,zmm1
  a212e4:	62 b1 7c 40 58 de    	vaddps zmm3,zmm16,zmm22
  a212ea:	62 71 7c 48 10 6f 08 	vmovups zmm13,ZMMWORD PTR [rdi+0x200]
  a212f1:	62 e1 7c 48 10 7f 09 	vmovups zmm23,ZMMWORD PTR [rdi+0x240]
  a212f8:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a212fe:	62 a2 3d 48 7f df    	vpermt2ps zmm19,zmm8,zmm23
  a21304:	62 e1 7c 48 10 4f 0c 	vmovups zmm17,ZMMWORD PTR [rdi+0x300]
  a2130b:	62 61 7c 48 10 6f 0d 	vmovups zmm29,ZMMWORD PTR [rdi+0x340]
  a21312:	62 31 7c 48 28 c9    	vmovaps zmm9,zmm17
  a21318:	62 12 3d 48 7f cd    	vpermt2ps zmm9,zmm8,zmm29
  a2131e:	62 41 64 40 58 c9    	vaddps zmm25,zmm19,zmm9
  a21324:	62 91 64 48 58 c1    	vaddps zmm0,zmm3,zmm25
  a2132a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a21331:	01 
  a21332:	62 f1 7c 48 10 7f 0a 	vmovups zmm7,ZMMWORD PTR [rdi+0x280]
  a21339:	62 61 7c 48 10 5f 0b 	vmovups zmm27,ZMMWORD PTR [rdi+0x2c0]
  a21340:	62 e1 7c 48 28 ef    	vmovaps zmm21,zmm7
  a21346:	62 82 3d 48 7f eb    	vpermt2ps zmm21,zmm8,zmm27
  a2134c:	62 e1 7c 48 10 57 0e 	vmovups zmm18,ZMMWORD PTR [rdi+0x380]
  a21353:	62 61 7c 48 10 77 0f 	vmovups zmm30,ZMMWORD PTR [rdi+0x3c0]
  a2135a:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a21360:	62 12 3d 48 7f d6    	vpermt2ps zmm10,zmm8,zmm30
  a21366:	62 e1 7c 48 10 67 06 	vmovups zmm20,ZMMWORD PTR [rdi+0x180]
  a2136d:	62 f1 7c 48 10 47 07 	vmovups zmm0,ZMMWORD PTR [rdi+0x1c0]
  a21374:	62 31 7c 48 28 dc    	vmovaps zmm11,zmm20
  a2137a:	62 72 3d 48 7f d8    	vpermt2ps zmm11,zmm8,zmm0
  a21380:	62 41 2c 48 58 d3    	vaddps zmm26,zmm10,zmm11
  a21386:	62 61 7c 48 28 25 b0 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff66ebb0]        # 8ff40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d3f0>
  a2138d:	eb 66 ff 
  a21390:	62 32 1d 40 7f ef    	vpermt2ps zmm13,zmm28,zmm23
  a21396:	62 e1 7c 48 10 7f 12 	vmovups zmm23,ZMMWORD PTR [rdi+0x480]
  a2139d:	62 82 1d 40 7f cd    	vpermt2ps zmm17,zmm28,zmm29
  a213a3:	62 61 7c 48 10 7f 13 	vmovups zmm31,ZMMWORD PTR [rdi+0x4c0]
  a213aa:	62 f2 1d 40 7f d4    	vpermt2ps zmm2,zmm28,zmm4
  a213b0:	62 b1 7c 48 28 e7    	vmovaps zmm4,zmm23
  a213b6:	62 92 3d 48 7f e7    	vpermt2ps zmm4,zmm8,zmm31
  a213bc:	62 52 4d 48 77 c6    	vpermi2ps zmm8,zmm6,zmm14
  a213c2:	62 52 1d 40 7f e7    	vpermt2ps zmm12,zmm28,zmm15
  a213c8:	62 21 14 48 5c e9    	vsubps zmm29,zmm13,zmm17
  a213ce:	62 82 1d 40 7f ff    	vpermt2ps zmm23,zmm28,zmm31
  a213d4:	62 41 6c 48 5c fc    	vsubps zmm31,zmm2,zmm12
  a213da:	62 d2 1d 40 7f f6    	vpermt2ps zmm6,zmm28,zmm14
  a213e0:	62 f2 7d 48 18 0d 6e 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff65436e]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a213e7:	43 65 ff 
  a213ea:	62 82 1d 40 7f d6    	vpermt2ps zmm18,zmm28,zmm30
  a213f0:	62 61 04 40 59 f1    	vmulps zmm30,zmm31,zmm1
  a213f6:	62 e2 1d 40 7f e0    	vpermt2ps zmm20,zmm28,zmm0
  a213fc:	62 72 7d 48 18 3d 9a 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff653f9a]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a21403:	3f 65 ff 
  a21406:	62 42 15 40 bc f7    	vfnmadd231ps zmm30,zmm29,zmm15
  a2140c:	62 92 1d 40 7f e8    	vpermt2ps zmm5,zmm28,zmm24
  a21412:	62 62 7d 48 18 05 28 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff654228]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a21419:	42 65 ff 
  a2141c:	62 92 1d 40 7f fb    	vpermt2ps zmm7,zmm28,zmm27
  a21422:	62 91 7c 48 28 c0    	vmovaps zmm0,zmm24
  a21428:	62 b2 4d 40 ac c0    	vfnmadd213ps zmm0,zmm22,zmm16
  a2142e:	62 62 7d 48 18 1d b0 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff6542b0]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a21435:	42 65 ff 
  a21438:	62 92 35 40 b8 c3    	vfmadd231ps zmm0,zmm25,zmm27
  a2143e:	62 61 14 40 59 e1    	vmulps zmm28,zmm29,zmm1
  a21444:	62 02 05 48 b8 e7    	vfmadd231ps zmm28,zmm15,zmm31
  a2144a:	62 61 44 40 5c ee    	vsubps zmm29,zmm23,zmm6
  a21450:	62 a2 25 40 b8 c6    	vfmadd231ps zmm16,zmm27,zmm22
  a21456:	62 a1 6c 40 5c f4    	vsubps zmm22,zmm18,zmm20
  a2145c:	62 82 3d 40 bc c1    	vfnmadd231ps zmm16,zmm24,zmm25
  a21462:	62 61 4c 40 59 c9    	vmulps zmm25,zmm22,zmm1
  a21468:	62 42 15 40 bc cf    	vfnmadd231ps zmm25,zmm29,zmm15
  a2146e:	62 61 14 40 59 e9    	vmulps zmm29,zmm29,zmm1
  a21474:	62 22 05 48 b8 ee    	vfmadd231ps zmm29,zmm15,zmm22
  a2147a:	62 81 7c 48 28 f0    	vmovaps zmm22,zmm24
  a21480:	62 a2 2d 40 ac f5    	vfnmadd213ps zmm22,zmm26,zmm21
  a21486:	62 01 54 40 58 fa    	vaddps zmm31,zmm21,zmm26
  a2148c:	62 82 25 40 b8 ea    	vfmadd231ps zmm21,zmm27,zmm26
  a21492:	62 41 5c 48 58 d0    	vaddps zmm26,zmm4,zmm8
  a21498:	62 01 04 40 58 fa    	vaddps zmm31,zmm31,zmm26
  a2149e:	62 82 2d 40 b8 f3    	vfmadd231ps zmm22,zmm26,zmm27
  a214a4:	62 82 3d 40 bc ea    	vfnmadd231ps zmm21,zmm24,zmm26
  a214aa:	62 61 0c 40 58 d0    	vaddps zmm26,zmm30,zmm0
  a214b0:	62 91 7c 48 5c c6    	vsubps zmm0,zmm0,zmm30
  a214b6:	62 21 34 40 58 f6    	vaddps zmm30,zmm25,zmm22
  a214bc:	62 81 4c 40 5c f1    	vsubps zmm22,zmm22,zmm25
  a214c2:	62 21 1c 40 58 c8    	vaddps zmm25,zmm28,zmm16
  a214c8:	62 81 7c 40 5c c4    	vsubps zmm16,zmm16,zmm28
  a214ce:	62 21 14 40 58 e5    	vaddps zmm28,zmm29,zmm21
  a214d4:	62 81 54 40 5c ed    	vsubps zmm21,zmm21,zmm29
  a214da:	62 b1 7c 40 58 cd    	vaddps zmm1,zmm16,zmm21
  a214e0:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a214e7:	02 
  a214e8:	62 21 7c 40 5c ed    	vsubps zmm29,zmm16,zmm21
  a214ee:	62 91 34 40 58 cc    	vaddps zmm1,zmm25,zmm28
  a214f4:	62 91 34 40 5c dc    	vsubps zmm3,zmm25,zmm28
  a214fa:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x40]
  a21501:	01 
  a21502:	62 01 0c 48 58 cf    	vaddps zmm25,zmm14,zmm31
  a21508:	62 11 0c 48 5c f7    	vsubps zmm14,zmm14,zmm31
  a2150e:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm14
  a21515:	08 
  a21516:	62 81 2c 40 58 c6    	vaddps zmm16,zmm26,zmm30
  a2151c:	62 11 2c 40 5c f6    	vsubps zmm14,zmm26,zmm30
  a21522:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm14
  a21529:	09 
  a2152a:	62 21 7c 48 58 fe    	vaddps zmm31,zmm0,zmm22
  a21530:	62 b1 7c 48 5c c6    	vsubps zmm0,zmm0,zmm22
  a21536:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a2153d:	03 
  a2153e:	62 d1 6c 48 58 c4    	vaddps zmm0,zmm2,zmm12
  a21544:	62 71 7c 48 28 35 32 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6a5a32]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a2154b:	5a 6a ff 
  a2154e:	62 31 14 48 58 e9    	vaddps zmm13,zmm13,zmm17
  a21554:	62 e1 54 48 58 c8    	vaddps zmm17,zmm5,zmm0
  a2155a:	62 31 6c 40 58 e4    	vaddps zmm12,zmm18,zmm20
  a21560:	62 c1 44 48 58 d4    	vaddps zmm18,zmm7,zmm12
  a21566:	62 e1 44 40 58 e6    	vaddps zmm20,zmm23,zmm6
  a2156c:	62 91 7c 48 28 f0    	vmovaps zmm6,zmm24
  a21572:	62 f2 7d 48 ac f5    	vfnmadd213ps zmm6,zmm0,zmm5
  a21578:	62 f2 25 40 b8 e8    	vfmadd231ps zmm5,zmm27,zmm0
  a2157e:	62 81 7c 48 28 e8    	vmovaps zmm21,zmm24
  a21584:	62 e2 1d 48 ac ef    	vfnmadd213ps zmm21,zmm12,zmm7
  a2158a:	62 92 1d 48 b8 fb    	vfmadd231ps zmm7,zmm12,zmm27
  a21590:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a21596:	62 b2 0d 48 7f c0    	vpermt2ps zmm0,zmm14,zmm16
  a2159c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a215a3:	05 
  a215a4:	62 92 15 48 b8 f3    	vfmadd231ps zmm6,zmm13,zmm27
  a215aa:	62 82 5d 40 b8 eb    	vfmadd231ps zmm21,zmm20,zmm27
  a215b0:	c4 41 18 57 e4       	vxorps xmm12,xmm12,xmm12
  a215b5:	62 c1 74 40 58 fd    	vaddps zmm23,zmm17,zmm13
  a215bb:	62 d2 3d 40 bc ed    	vfnmadd231ps zmm5,zmm24,zmm13
  a215c1:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a215c7:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a215ce:	01 
  a215cf:	62 92 5d 40 bc f8    	vfnmadd231ps zmm7,zmm20,zmm24
  a215d5:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a215db:	62 81 7c 48 28 f5    	vmovaps zmm22,zmm29
  a215e1:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a215e7:	62 f2 0d 48 7f c3    	vpermt2ps zmm0,zmm14,zmm3
  a215ed:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a215f4:	04 
  a215f5:	62 a1 6c 40 58 d4    	vaddps zmm18,zmm18,zmm20
  a215fb:	62 31 44 40 58 ea    	vaddps zmm13,zmm23,zmm18
  a21601:	62 d1 64 40 5c c1    	vsubps zmm0,zmm19,zmm9
  a21607:	62 e1 7c 48 28 0d af 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6a59af]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a2160e:	59 6a ff 
  a21611:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a21618:	07 
  a21619:	62 f1 74 48 5c 4c 24 	vsubps zmm1,zmm1,ZMMWORD PTR [rsp+0x180]
  a21620:	06 
  a21621:	62 f2 7d 48 18 15 2d 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff65412d]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a21628:	41 65 ff 
  a2162b:	62 71 74 48 59 ca    	vmulps zmm9,zmm1,zmm2
  a21631:	62 52 7d 48 bc cf    	vfnmadd231ps zmm9,zmm0,zmm15
  a21637:	62 d1 5c 48 5c e0    	vsubps zmm4,zmm4,zmm8
  a2163d:	62 51 4c 48 5c c1    	vsubps zmm8,zmm6,zmm9
  a21643:	62 d1 2c 48 5c db    	vsubps zmm3,zmm10,zmm11
  a21649:	62 71 64 48 59 d2    	vmulps zmm10,zmm3,zmm2
  a2164f:	62 52 5d 48 bc d7    	vfnmadd231ps zmm10,zmm4,zmm15
  a21655:	62 71 7c 48 59 da    	vmulps zmm11,zmm0,zmm2
  a2165b:	62 72 05 48 b8 d9    	vfmadd231ps zmm11,zmm15,zmm1
  a21661:	62 c1 54 40 5c da    	vsubps zmm19,zmm21,zmm10
  a21667:	62 f1 5c 48 59 ca    	vmulps zmm1,zmm4,zmm2
  a2166d:	62 21 3c 48 58 f3    	vaddps zmm30,zmm8,zmm19
  a21673:	62 d2 65 48 b8 cf    	vfmadd231ps zmm1,zmm3,zmm15
  a21679:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a2167f:	62 d1 7c 48 28 d5    	vmovaps zmm2,zmm13
  a21685:	62 12 75 40 7f fe    	vpermt2ps zmm15,zmm17,zmm30
  a2168b:	62 d1 54 48 5c db    	vsubps zmm3,zmm5,zmm11
  a21691:	62 d1 4c 48 58 e1    	vaddps zmm4,zmm6,zmm9
  a21697:	62 f1 44 48 5c f1    	vsubps zmm6,zmm7,zmm1
  a2169d:	62 51 54 40 58 ca    	vaddps zmm9,zmm21,zmm10
  a216a3:	62 71 64 48 58 d6    	vaddps zmm10,zmm3,zmm6
  a216a9:	62 d1 54 48 58 eb    	vaddps zmm5,zmm5,zmm11
  a216af:	62 51 7c 48 28 ea    	vmovaps zmm13,zmm10
  a216b5:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a216bb:	62 52 75 40 7f ec    	vpermt2ps zmm13,zmm17,zmm12
  a216c1:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm13
  a216c8:	07 
  a216c9:	62 f1 44 48 58 c9    	vaddps zmm1,zmm7,zmm1
  a216cf:	62 f1 54 48 58 f9    	vaddps zmm7,zmm5,zmm1
  a216d5:	62 61 54 48 5c e9    	vsubps zmm29,zmm5,zmm1
  a216db:	62 41 5c 48 58 d9    	vaddps zmm27,zmm4,zmm9
  a216e1:	62 f1 64 48 5c ce    	vsubps zmm1,zmm3,zmm6
  a216e7:	62 81 7c 48 28 eb    	vmovaps zmm21,zmm27
  a216ed:	62 c2 75 40 7f ec    	vpermt2ps zmm21,zmm17,zmm12
  a216f3:	62 31 44 40 5c d2    	vsubps zmm10,zmm23,zmm18
  a216f9:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a216ff:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a21705:	62 d2 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm12
  a2170b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a21712:	06 
  a21713:	62 21 3c 48 5c c3    	vsubps zmm24,zmm8,zmm19
  a21719:	62 81 7c 48 28 d5    	vmovaps zmm18,zmm29
  a2171f:	62 e2 75 40 7f d1    	vpermt2ps zmm18,zmm17,zmm1
  a21725:	62 d1 5c 48 5c d9    	vsubps zmm3,zmm4,zmm9
  a2172b:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm3
  a21732:	1f 
  a21733:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a21739:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a2173f:	62 d2 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm12
  a21745:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm0
  a2174c:	1e 
  a2174d:	62 22 75 40 7f c8    	vpermt2ps zmm25,zmm17,zmm16
  a21753:	62 11 7c 48 28 c8    	vmovaps zmm9,zmm24
  a21759:	62 52 75 40 7f cc    	vpermt2ps zmm9,zmm17,zmm12
  a2175f:	62 a1 7c 48 28 de    	vmovaps zmm19,zmm22
  a21765:	62 82 75 40 7f da    	vpermt2ps zmm19,zmm17,zmm26
  a2176b:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a21771:	62 d2 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm12
  a21777:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a2177e:	0a 
  a2177f:	62 42 75 40 7f e4    	vpermt2ps zmm28,zmm17,zmm12
  a21785:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm28
  a2178c:	11 
  a2178d:	62 11 7c 48 28 ef    	vmovaps zmm13,zmm31
  a21793:	62 42 75 40 7f fc    	vpermt2ps zmm31,zmm17,zmm12
  a21799:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x80]
  a217a0:	02 
  a217a1:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a217a7:	62 d2 75 40 7f e4    	vpermt2ps zmm4,zmm17,zmm12
  a217ad:	62 e1 7c 48 28 f4    	vmovaps zmm22,zmm4
  a217b3:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a217ba:	02 
  a217bb:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x200]
  a217c2:	08 
  a217c3:	62 61 7c 48 28 d5    	vmovaps zmm26,zmm5
  a217c9:	62 d2 75 40 7f ec    	vpermt2ps zmm5,zmm17,zmm12
  a217cf:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm5
  a217d6:	08 
  a217d7:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x240]
  a217de:	09 
  a217df:	62 c1 7c 48 28 e2    	vmovaps zmm20,zmm10
  a217e5:	62 52 75 40 7f d4    	vpermt2ps zmm10,zmm17,zmm12
  a217eb:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0xc0]
  a217f2:	03 
  a217f3:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a217f9:	62 d2 75 40 7f dc    	vpermt2ps zmm3,zmm17,zmm12
  a217ff:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm3
  a21806:	03 
  a21807:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a2180d:	62 12 0d 48 7f c6    	vpermt2ps zmm8,zmm14,zmm30
  a21813:	62 62 0d 48 7f e9    	vpermt2ps zmm29,zmm14,zmm1
  a21819:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a21820:	01 
  a21821:	62 d2 0d 48 7f cc    	vpermt2ps zmm1,zmm14,zmm12
  a21827:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a2182e:	01 
  a2182f:	62 52 0d 48 7f ec    	vpermt2ps zmm13,zmm14,zmm12
  a21835:	62 d2 0d 48 7f c4    	vpermt2ps zmm0,zmm14,zmm12
  a2183b:	62 42 0d 48 7f d4    	vpermt2ps zmm26,zmm14,zmm12
  a21841:	62 c2 0d 48 7f e4    	vpermt2ps zmm20,zmm14,zmm12
  a21847:	62 c2 0d 48 7f fc    	vpermt2ps zmm23,zmm14,zmm12
  a2184d:	62 52 0d 48 7f dc    	vpermt2ps zmm11,zmm14,zmm12
  a21853:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm11
  a2185a:	0d 
  a2185b:	62 42 0d 48 7f dc    	vpermt2ps zmm27,zmm14,zmm12
  a21861:	62 d2 0d 48 7f f4    	vpermt2ps zmm6,zmm14,zmm12
  a21867:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm6
  a2186e:	0c 
  a2186f:	62 d2 0d 48 7f fc    	vpermt2ps zmm7,zmm14,zmm12
  a21875:	62 42 0d 48 7f c4    	vpermt2ps zmm24,zmm14,zmm12
  a2187b:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x7c0]
  a21882:	1f 
  a21883:	62 42 0d 48 7f f4    	vpermt2ps zmm30,zmm14,zmm12
  a21889:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm25
  a21890:	12 
  a21891:	62 f1 7c 48 28 25 a5 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6a56a5]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a21898:	56 6a ff 
  a2189b:	62 02 5d 48 7f cc    	vpermt2ps zmm25,zmm4,zmm28
  a218a1:	62 01 7c 48 28 e1    	vmovaps zmm28,zmm25
  a218a7:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm25
  a218ae:	24 
  a218af:	62 81 7c 48 28 cf    	vmovaps zmm17,zmm31
  a218b5:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm31
  a218bc:	10 
  a218bd:	62 a2 5d 48 7f ce    	vpermt2ps zmm17,zmm4,zmm22
  a218c3:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm17
  a218ca:	25 
  a218cb:	62 a1 7c 48 28 c3    	vmovaps zmm16,zmm19
  a218d1:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm19
  a218d8:	0f 
  a218d9:	62 e2 5d 48 7f c5    	vpermt2ps zmm16,zmm4,zmm5
  a218df:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm16
  a218e6:	23 
  a218e7:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm10
  a218ee:	0e 
  a218ef:	62 72 5d 48 7f d3    	vpermt2ps zmm10,zmm4,zmm3
  a218f5:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm10
  a218fc:	09 
  a218fd:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm15
  a21904:	0b 
  a21905:	62 72 5d 48 7f 7c 24 	vpermt2ps zmm15,zmm4,ZMMWORD PTR [rsp+0x1c0]
  a2190c:	07 
  a2190d:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm21
  a21914:	22 
  a21915:	62 e2 5d 48 7f 6c 24 	vpermt2ps zmm21,zmm4,ZMMWORD PTR [rsp+0x180]
  a2191c:	06 
  a2191d:	62 31 7c 48 28 e5    	vmovaps zmm12,zmm21
  a21923:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xa00],zmm21
  a2192a:	28 
  a2192b:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm18
  a21932:	21 
  a21933:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x780]
  a2193a:	1e 
  a2193b:	62 a2 5d 48 7f d6    	vpermt2ps zmm18,zmm4,zmm22
  a21941:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a21947:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x9c0],zmm18
  a2194e:	27 
  a2194f:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm9
  a21956:	20 
  a21957:	62 72 5d 48 7f 4c 24 	vpermt2ps zmm9,zmm4,ZMMWORD PTR [rsp+0x280]
  a2195e:	0a 
  a2195f:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x980],zmm9
  a21966:	26 
  a21967:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x140]
  a2196e:	05 
  a2196f:	62 e1 7c 48 28 ed    	vmovaps zmm21,zmm5
  a21975:	62 f2 5d 48 7f e9    	vpermt2ps zmm5,zmm4,zmm1
  a2197b:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm5
  a21982:	05 
  a21983:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a21989:	62 72 5d 48 7f e8    	vpermt2ps zmm13,zmm4,zmm0
  a2198f:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a21995:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm13
  a2199c:	13 
  a2199d:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a219a4:	04 
  a219a5:	62 e1 7c 48 28 d1    	vmovaps zmm18,zmm1
  a219ab:	62 92 5d 48 7f ca    	vpermt2ps zmm1,zmm4,zmm26
  a219b1:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a219b8:	04 
  a219b9:	62 31 7c 48 28 f4    	vmovaps zmm14,zmm20
  a219bf:	62 32 5d 48 7f f7    	vpermt2ps zmm14,zmm4,zmm23
  a219c5:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xa40],zmm14
  a219cc:	29 
  a219cd:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a219d3:	62 d2 5d 48 7f c3    	vpermt2ps zmm0,zmm4,zmm11
  a219d9:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm0
  a219e0:	17 
  a219e1:	62 91 7c 48 28 db    	vmovaps zmm3,zmm27
  a219e7:	62 f2 5d 48 7f de    	vpermt2ps zmm3,zmm4,zmm6
  a219ed:	62 f1 7c 48 28 d3    	vmovaps zmm2,zmm3
  a219f3:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm3
  a219fa:	16 
  a219fb:	62 91 7c 48 28 dd    	vmovaps zmm3,zmm29
  a21a01:	62 f2 5d 48 7f df    	vpermt2ps zmm3,zmm4,zmm7
  a21a07:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm3
  a21a0e:	15 
  a21a0f:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a21a15:	62 92 3d 40 77 e6    	vpermi2ps zmm4,zmm24,zmm30
  a21a1b:	62 91 7c 48 28 fe    	vmovaps zmm7,zmm30
  a21a21:	62 61 7c 48 28 35 d5 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff6a53d5]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a21a28:	53 6a ff 
  a21a2b:	62 71 fd 48 15 da    	vunpckhpd zmm11,zmm0,zmm2
  a21a31:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm11
  a21a38:	1d 
  a21a39:	62 f1 e5 48 15 c4    	vunpckhpd zmm0,zmm3,zmm4
  a21a3f:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm0
  a21a46:	1c 
  a21a47:	62 72 0d 40 7f d8    	vpermt2ps zmm11,zmm30,zmm0
  a21a4d:	62 41 d5 48 15 fd    	vunpckhpd zmm31,zmm5,zmm13
  a21a53:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm31
  a21a5a:	1b 
  a21a5b:	62 d1 f5 48 15 c6    	vunpckhpd zmm0,zmm1,zmm14
  a21a61:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm0
  a21a68:	1a 
  a21a69:	62 62 0d 40 7f f8    	vpermt2ps zmm31,zmm30,zmm0
  a21a6f:	62 f1 7c 48 10 52 0d 	vmovups zmm2,ZMMWORD PTR [rdx+0x340]
  a21a76:	62 f1 7c 48 10 4a 0c 	vmovups zmm1,ZMMWORD PTR [rdx+0x300]
  a21a7d:	62 f1 04 40 59 c1    	vmulps zmm0,zmm31,zmm1
  a21a83:	62 f2 25 48 b8 c2    	vfmadd231ps zmm0,zmm11,zmm2
  a21a89:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm0
  a21a90:	1f 
  a21a91:	62 f1 24 48 59 c1    	vmulps zmm0,zmm11,zmm1
  a21a97:	62 92 6d 48 bc c7    	vfnmadd231ps zmm0,zmm2,zmm31
  a21a9d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xb00],zmm0
  a21aa4:	2c 
  a21aa5:	62 d1 85 48 15 cc    	vunpckhpd zmm1,zmm15,zmm12
  a21aab:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm1
  a21ab2:	14 
  a21ab3:	62 d1 ad 48 15 c1    	vunpckhpd zmm0,zmm10,zmm9
  a21ab9:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm0
  a21ac0:	19 
  a21ac1:	62 f2 0d 40 7f c8    	vpermt2ps zmm1,zmm30,zmm0
  a21ac7:	62 21 9d 40 15 f9    	vunpckhpd zmm31,zmm28,zmm17
  a21acd:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x240]
  a21ad4:	09 
  a21ad5:	62 d1 fd 40 15 c6    	vunpckhpd zmm0,zmm16,zmm14
  a21adb:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm0
  a21ae2:	18 
  a21ae3:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a21ae9:	62 f2 0d 40 7f d0    	vpermt2ps zmm2,zmm30,zmm0
  a21aef:	62 f1 7c 48 10 5a 1d 	vmovups zmm3,ZMMWORD PTR [rdx+0x740]
  a21af6:	62 f1 7c 48 10 42 1c 	vmovups zmm0,ZMMWORD PTR [rdx+0x700]
  a21afd:	62 61 6c 48 59 e0    	vmulps zmm28,zmm2,zmm0
  a21b03:	62 62 75 48 b8 e3    	vfmadd231ps zmm28,zmm1,zmm3
  a21b09:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xac0],zmm28
  a21b10:	2b 
  a21b11:	62 f1 74 48 59 c0    	vmulps zmm0,zmm1,zmm0
  a21b17:	62 f2 65 48 bc c2    	vfnmadd231ps zmm0,zmm3,zmm2
  a21b1d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xa80],zmm0
  a21b24:	2a 
  a21b25:	62 f1 7c 48 28 05 d1 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6a53d1]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a21b2c:	53 6a ff 
  a21b2f:	62 e2 7d 48 7f 6c 24 	vpermt2ps zmm21,zmm0,ZMMWORD PTR [rsp+0x40]
  a21b36:	01 
  a21b37:	62 82 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm25
  a21b3d:	62 82 7d 48 7f d2    	vpermt2ps zmm18,zmm0,zmm26
  a21b43:	62 a2 7d 48 7f e7    	vpermt2ps zmm20,zmm0,zmm23
  a21b49:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x2c0]
  a21b50:	0b 
  a21b51:	62 72 7d 48 7f 6c 24 	vpermt2ps zmm13,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a21b58:	07 
  a21b59:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x880]
  a21b60:	22 
  a21b61:	62 72 7d 48 7f 5c 24 	vpermt2ps zmm11,zmm0,ZMMWORD PTR [rsp+0x180]
  a21b68:	06 
  a21b69:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x840]
  a21b70:	21 
  a21b71:	62 32 7d 48 7f d6    	vpermt2ps zmm10,zmm0,zmm22
  a21b77:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x800]
  a21b7e:	20 
  a21b7f:	62 62 7d 48 7f 4c 24 	vpermt2ps zmm25,zmm0,ZMMWORD PTR [rsp+0x280]
  a21b86:	0a 
  a21b87:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x480]
  a21b8e:	12 
  a21b8f:	62 72 7d 48 7f 64 24 	vpermt2ps zmm12,zmm0,ZMMWORD PTR [rsp+0x440]
  a21b96:	11 
  a21b97:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x400]
  a21b9e:	10 
  a21b9f:	62 e2 7d 48 7f 44 24 	vpermt2ps zmm16,zmm0,ZMMWORD PTR [rsp+0x80]
  a21ba6:	02 
  a21ba7:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x3c0]
  a21bae:	0f 
  a21baf:	62 e2 7d 48 7f 4c 24 	vpermt2ps zmm17,zmm0,ZMMWORD PTR [rsp+0x200]
  a21bb6:	08 
  a21bb7:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x380]
  a21bbe:	0e 
  a21bbf:	62 e2 7d 48 7f 7c 24 	vpermt2ps zmm23,zmm0,ZMMWORD PTR [rsp+0xc0]
  a21bc6:	03 
  a21bc7:	62 72 7d 48 7f 44 24 	vpermt2ps zmm8,zmm0,ZMMWORD PTR [rsp+0x340]
  a21bce:	0d 
  a21bcf:	62 62 7d 48 7f 5c 24 	vpermt2ps zmm27,zmm0,ZMMWORD PTR [rsp+0x300]
  a21bd6:	0c 
  a21bd7:	62 62 7d 48 7f ee    	vpermt2ps zmm29,zmm0,zmm6
  a21bdd:	62 62 7d 48 7f c7    	vpermt2ps zmm24,zmm0,zmm7
  a21be3:	62 21 d5 40 15 d3    	vunpckhpd zmm26,zmm21,zmm19
  a21be9:	62 b1 ed 40 15 d4    	vunpckhpd zmm2,zmm18,zmm20
  a21bef:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm2
  a21bf6:	0e 
  a21bf7:	62 91 7c 48 28 c2    	vmovaps zmm0,zmm26
  a21bfd:	62 f2 0d 40 7f c2    	vpermt2ps zmm0,zmm30,zmm2
  a21c03:	62 91 bd 48 15 db    	vunpckhpd zmm3,zmm8,zmm27
  a21c09:	62 d1 7c 48 28 e8    	vmovaps zmm5,zmm8
  a21c0f:	62 91 95 40 15 d0    	vunpckhpd zmm2,zmm29,zmm24
  a21c15:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm2
  a21c1c:	0d 
  a21c1d:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a21c23:	62 f2 0d 40 7f ca    	vpermt2ps zmm1,zmm30,zmm2
  a21c29:	62 f1 7c 48 10 52 04 	vmovups zmm2,ZMMWORD PTR [rdx+0x100]
  a21c30:	62 f1 7c 48 10 7a 05 	vmovups zmm7,ZMMWORD PTR [rdx+0x140]
  a21c37:	62 71 74 48 59 c2    	vmulps zmm8,zmm1,zmm2
  a21c3d:	62 72 7d 48 bc c7    	vfnmadd231ps zmm8,zmm0,zmm7
  a21c43:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm8
  a21c4a:	07 
  a21c4b:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a21c51:	62 f2 45 48 b8 c1    	vfmadd231ps zmm0,zmm7,zmm1
  a21c57:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a21c5e:	06 
  a21c5f:	62 21 9d 48 15 e0    	vunpckhpd zmm28,zmm12,zmm16
  a21c65:	62 b1 f5 40 15 cf    	vunpckhpd zmm1,zmm17,zmm23
  a21c6b:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a21c72:	0c 
  a21c73:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a21c79:	62 f2 0d 40 7f c1    	vpermt2ps zmm0,zmm30,zmm1
  a21c7f:	62 d1 95 48 15 cb    	vunpckhpd zmm1,zmm13,zmm11
  a21c85:	62 91 ad 48 15 f1    	vunpckhpd zmm6,zmm10,zmm25
  a21c8b:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm6
  a21c92:	0b 
  a21c93:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a21c99:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a21c9f:	62 f2 0d 40 7f d6    	vpermt2ps zmm2,zmm30,zmm6
  a21ca5:	62 71 7c 48 10 42 15 	vmovups zmm8,ZMMWORD PTR [rdx+0x540]
  a21cac:	62 71 7c 48 10 4a 14 	vmovups zmm9,ZMMWORD PTR [rdx+0x500]
  a21cb3:	62 51 6c 48 59 d1    	vmulps zmm10,zmm2,zmm9
  a21cb9:	62 52 7d 48 bc d0    	vfnmadd231ps zmm10,zmm0,zmm8
  a21cbf:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm10
  a21cc6:	0a 
  a21cc7:	62 d1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm9
  a21ccd:	62 f2 3d 48 b8 c2    	vfmadd231ps zmm0,zmm8,zmm2
  a21cd3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm0
  a21cda:	1e 
  a21cdb:	62 b1 d5 40 14 c3    	vunpcklpd zmm0,zmm21,zmm19
  a21ce1:	62 31 ed 40 14 c4    	vunpcklpd zmm8,zmm18,zmm20
  a21ce7:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm8
  a21cee:	0f 
  a21cef:	62 91 d5 48 14 eb    	vunpcklpd zmm5,zmm5,zmm27
  a21cf5:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm5
  a21cfc:	01 
  a21cfd:	62 91 95 40 14 f0    	vunpcklpd zmm6,zmm29,zmm24
  a21d03:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm6
  a21d0a:	11 
  a21d0b:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a21d11:	62 f1 7c 48 28 15 25 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6a5125]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a21d18:	51 6a ff 
  a21d1b:	62 d2 6d 48 7f c0    	vpermt2ps zmm0,zmm2,zmm8
  a21d21:	62 f2 6d 48 7f ee    	vpermt2ps zmm5,zmm2,zmm6
  a21d27:	62 f1 7c 48 10 72 02 	vmovups zmm6,ZMMWORD PTR [rdx+0x80]
  a21d2e:	62 71 7c 48 10 42 03 	vmovups zmm8,ZMMWORD PTR [rdx+0xc0]
  a21d35:	62 71 54 48 59 ce    	vmulps zmm9,zmm5,zmm6
  a21d3b:	62 52 7d 48 bc c8    	vfnmadd231ps zmm9,zmm0,zmm8
  a21d41:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm9
  a21d48:	12 
  a21d49:	62 f1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm6
  a21d4f:	62 f2 3d 48 b8 c5    	vfmadd231ps zmm0,zmm8,zmm5
  a21d55:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a21d5c:	10 
  a21d5d:	62 d1 95 48 14 c3    	vunpcklpd zmm0,zmm13,zmm11
  a21d63:	62 11 c5 48 14 e9    	vunpcklpd zmm13,zmm7,zmm25
  a21d69:	62 b1 9d 48 14 e8    	vunpcklpd zmm5,zmm12,zmm16
  a21d6f:	62 31 f5 40 14 e7    	vunpcklpd zmm12,zmm17,zmm23
  a21d75:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a21d7b:	62 d2 6d 48 7f ec    	vpermt2ps zmm5,zmm2,zmm12
  a21d81:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a21d87:	62 d2 6d 48 7f c5    	vpermt2ps zmm0,zmm2,zmm13
  a21d8d:	62 f1 7c 48 10 72 13 	vmovups zmm6,ZMMWORD PTR [rdx+0x4c0]
  a21d94:	62 71 7c 48 10 42 12 	vmovups zmm8,ZMMWORD PTR [rdx+0x480]
  a21d9b:	62 51 7c 48 59 c8    	vmulps zmm9,zmm0,zmm8
  a21da1:	62 72 55 48 bc ce    	vfnmadd231ps zmm9,zmm5,zmm6
  a21da7:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm9
  a21dae:	03 
  a21daf:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a21db5:	62 f2 4d 48 b8 e8    	vfmadd231ps zmm5,zmm6,zmm0
  a21dbb:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm5
  a21dc2:	02 
  a21dc3:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x900]
  a21dca:	24 
  a21dcb:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp+0x940]
  a21dd2:	25 
  a21dd3:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x8c0]
  a21dda:	23 
  a21ddb:	62 51 d5 48 14 ce    	vunpcklpd zmm9,zmm5,zmm14
  a21de1:	62 f1 85 48 14 6c 24 	vunpcklpd zmm5,zmm15,ZMMWORD PTR [rsp+0xa00]
  a21de8:	28 
  a21de9:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x9c0]
  a21df0:	27 
  a21df1:	62 71 cd 48 14 44 24 	vunpcklpd zmm8,zmm6,ZMMWORD PTR [rsp+0x980]
  a21df8:	26 
  a21df9:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a21dff:	62 d2 6d 48 7f e8    	vpermt2ps zmm5,zmm2,zmm8
  a21e05:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a21e0b:	62 d2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm9
  a21e11:	62 f1 7c 48 10 72 1b 	vmovups zmm6,ZMMWORD PTR [rdx+0x6c0]
  a21e18:	62 71 7c 48 10 52 1a 	vmovups zmm10,ZMMWORD PTR [rdx+0x680]
  a21e1f:	62 51 7c 48 59 f2    	vmulps zmm14,zmm0,zmm10
  a21e25:	62 72 55 48 b8 f6    	vfmadd231ps zmm14,zmm5,zmm6
  a21e2b:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm14
  a21e32:	09 
  a21e33:	62 d1 54 48 59 ea    	vmulps zmm5,zmm5,zmm10
  a21e39:	62 f2 4d 48 bc e8    	vfnmadd231ps zmm5,zmm6,zmm0
  a21e3f:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm5
  a21e46:	08 
  a21e47:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a21e4e:	05 
  a21e4f:	62 71 fd 48 14 7c 24 	vunpcklpd zmm15,zmm0,ZMMWORD PTR [rsp+0x4c0]
  a21e56:	13 
  a21e57:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a21e5e:	04 
  a21e5f:	62 f1 fd 48 14 74 24 	vunpcklpd zmm6,zmm0,ZMMWORD PTR [rsp+0xa40]
  a21e66:	29 
  a21e67:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x5c0]
  a21e6e:	17 
  a21e6f:	62 71 fd 48 14 74 24 	vunpcklpd zmm14,zmm0,ZMMWORD PTR [rsp+0x580]
  a21e76:	16 
  a21e77:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x540]
  a21e7e:	15 
  a21e7f:	62 f1 fd 48 14 ec    	vunpcklpd zmm5,zmm0,zmm4
  a21e85:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a21e8b:	62 72 6d 48 7f f5    	vpermt2ps zmm14,zmm2,zmm5
  a21e91:	62 51 7c 48 28 d7    	vmovaps zmm10,zmm15
  a21e97:	62 72 6d 48 7f fe    	vpermt2ps zmm15,zmm2,zmm6
  a21e9d:	62 f1 7c 48 10 62 0b 	vmovups zmm4,ZMMWORD PTR [rdx+0x2c0]
  a21ea4:	62 e1 7c 48 10 4a 0a 	vmovups zmm17,ZMMWORD PTR [rdx+0x280]
  a21eab:	62 a1 04 48 59 d1    	vmulps zmm18,zmm15,zmm17
  a21eb1:	62 e2 0d 48 b8 d4    	vfmadd231ps zmm18,zmm14,zmm4
  a21eb7:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm18
  a21ebe:	05 
  a21ebf:	62 31 0c 48 59 f1    	vmulps zmm14,zmm14,zmm17
  a21ec5:	62 52 5d 48 bc f7    	vfnmadd231ps zmm14,zmm4,zmm15
  a21ecb:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm14
  a21ed2:	04 
  a21ed3:	62 62 6d 48 7f 54 24 	vpermt2ps zmm26,zmm2,ZMMWORD PTR [rsp+0x380]
  a21eda:	0e 
  a21edb:	62 f2 6d 48 7f 5c 24 	vpermt2ps zmm3,zmm2,ZMMWORD PTR [rsp+0x340]
  a21ee2:	0d 
  a21ee3:	62 62 6d 48 7f 64 24 	vpermt2ps zmm28,zmm2,ZMMWORD PTR [rsp+0x300]
  a21eea:	0c 
  a21eeb:	62 f2 6d 48 7f 4c 24 	vpermt2ps zmm1,zmm2,ZMMWORD PTR [rsp+0x2c0]
  a21ef2:	0b 
  a21ef3:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x740]
  a21efa:	1d 
  a21efb:	62 72 6d 48 7f 74 24 	vpermt2ps zmm14,zmm2,ZMMWORD PTR [rsp+0x700]
  a21f02:	1c 
  a21f03:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x6c0]
  a21f0a:	1b 
  a21f0b:	62 f2 6d 48 7f 7c 24 	vpermt2ps zmm7,zmm2,ZMMWORD PTR [rsp+0x680]
  a21f12:	1a 
  a21f13:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x500]
  a21f1a:	14 
  a21f1b:	62 72 6d 48 7f 5c 24 	vpermt2ps zmm11,zmm2,ZMMWORD PTR [rsp+0x640]
  a21f22:	19 
  a21f23:	62 62 6d 48 7f 7c 24 	vpermt2ps zmm31,zmm2,ZMMWORD PTR [rsp+0x600]
  a21f2a:	18 
  a21f2b:	62 f1 7c 48 10 52 07 	vmovups zmm2,ZMMWORD PTR [rdx+0x1c0]
  a21f32:	62 f1 7c 48 10 62 06 	vmovups zmm4,ZMMWORD PTR [rdx+0x180]
  a21f39:	62 61 64 48 59 c4    	vmulps zmm24,zmm3,zmm4
  a21f3f:	62 62 2d 40 bc c2    	vfnmadd231ps zmm24,zmm26,zmm2
  a21f45:	62 e1 2c 40 59 ec    	vmulps zmm21,zmm26,zmm4
  a21f4b:	62 e2 6d 48 b8 eb    	vfmadd231ps zmm21,zmm2,zmm3
  a21f51:	62 f1 7c 48 10 52 17 	vmovups zmm2,ZMMWORD PTR [rdx+0x5c0]
  a21f58:	62 f1 7c 48 10 5a 16 	vmovups zmm3,ZMMWORD PTR [rdx+0x580]
  a21f5f:	62 61 74 48 59 eb    	vmulps zmm29,zmm1,zmm3
  a21f65:	62 62 1d 40 bc ea    	vfnmadd231ps zmm29,zmm28,zmm2
  a21f6b:	62 71 1c 40 59 fb    	vmulps zmm15,zmm28,zmm3
  a21f71:	62 72 6d 48 b8 f9    	vfmadd231ps zmm15,zmm2,zmm1
  a21f77:	62 f1 7c 48 10 4a 1f 	vmovups zmm1,ZMMWORD PTR [rdx+0x7c0]
  a21f7e:	62 f1 7c 48 10 52 1e 	vmovups zmm2,ZMMWORD PTR [rdx+0x780]
  a21f85:	62 e1 04 40 59 da    	vmulps zmm19,zmm31,zmm2
  a21f8b:	62 e2 25 48 b8 d9    	vfmadd231ps zmm19,zmm11,zmm1
  a21f91:	62 e1 24 48 59 ca    	vmulps zmm17,zmm11,zmm2
  a21f97:	62 82 75 48 bc cf    	vfnmadd231ps zmm17,zmm1,zmm31
  a21f9d:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a21fa4:	62 f1 7c 48 10 62 0e 	vmovups zmm4,ZMMWORD PTR [rdx+0x380]
  a21fab:	62 f1 7c 48 28 df    	vmovaps zmm3,zmm7
  a21fb1:	62 f1 44 48 59 fc    	vmulps zmm7,zmm7,zmm4
  a21fb7:	62 f2 0d 48 b8 f9    	vfmadd231ps zmm7,zmm14,zmm1
  a21fbd:	62 e1 0c 48 59 d4    	vmulps zmm18,zmm14,zmm4
  a21fc3:	62 e2 75 48 bc d3    	vfnmadd231ps zmm18,zmm1,zmm3
  a21fc9:	62 e2 0d 40 7f 74 24 	vpermt2ps zmm22,zmm30,ZMMWORD PTR [rsp+0x3c0]
  a21fd0:	0f 
  a21fd1:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm22
  a21fd8:	1a 
  a21fd9:	62 42 0d 40 7f cd    	vpermt2ps zmm25,zmm30,zmm13
  a21fdf:	62 c2 0d 40 7f e4    	vpermt2ps zmm20,zmm30,zmm12
  a21fe5:	62 42 0d 40 7f d9    	vpermt2ps zmm27,zmm30,zmm9
  a21feb:	62 c2 0d 40 7f c0    	vpermt2ps zmm16,zmm30,zmm8
  a21ff1:	62 72 0d 40 7f d6    	vpermt2ps zmm10,zmm30,zmm6
  a21ff7:	62 f2 0d 40 7f c5    	vpermt2ps zmm0,zmm30,zmm5
  a21ffd:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a22004:	01 
  a22005:	62 f2 0d 40 7f 4c 24 	vpermt2ps zmm1,zmm30,ZMMWORD PTR [rsp+0x440]
  a2200c:	11 
  a2200d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a22014:	01 
  a22015:	62 f1 7c 48 10 4a 11 	vmovups zmm1,ZMMWORD PTR [rdx+0x440]
  a2201c:	62 f1 7c 48 10 62 10 	vmovups zmm4,ZMMWORD PTR [rdx+0x400]
  a22023:	62 61 5c 40 59 d4    	vmulps zmm26,zmm20,zmm4
  a22029:	62 62 35 40 b8 d1    	vfmadd231ps zmm26,zmm25,zmm1
  a2202f:	62 e1 34 40 59 fc    	vmulps zmm23,zmm25,zmm4
  a22035:	62 a2 75 48 bc fc    	vfnmadd231ps zmm23,zmm1,zmm20
  a2203b:	62 f1 7c 48 10 4a 09 	vmovups zmm1,ZMMWORD PTR [rdx+0x240]
  a22042:	62 f1 7c 48 10 62 08 	vmovups zmm4,ZMMWORD PTR [rdx+0x200]
  a22049:	62 e1 7c 48 59 e4    	vmulps zmm20,zmm0,zmm4
  a2204f:	62 e2 2d 48 bc e1    	vfnmadd231ps zmm20,zmm10,zmm1
  a22055:	62 61 2c 48 59 e4    	vmulps zmm28,zmm10,zmm4
  a2205b:	62 62 75 48 b8 e0    	vfmadd231ps zmm28,zmm1,zmm0
  a22061:	62 f1 7c 48 10 4a 19 	vmovups zmm1,ZMMWORD PTR [rdx+0x640]
  a22068:	62 f1 7c 48 10 42 18 	vmovups zmm0,ZMMWORD PTR [rdx+0x600]
  a2206f:	62 61 7c 40 59 c8    	vmulps zmm25,zmm16,zmm0
  a22075:	62 62 25 40 bc c9    	vfnmadd231ps zmm25,zmm27,zmm1
  a2207b:	62 f1 24 40 59 d0    	vmulps zmm2,zmm27,zmm0
  a22081:	62 b2 75 48 b8 d0    	vfmadd231ps zmm2,zmm1,zmm16
  a22087:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x480]
  a2208e:	12 
  a2208f:	62 71 0c 40 5c 54 24 	vsubps zmm10,zmm30,ZMMWORD PTR [rsp+0xc0]
  a22096:	03 
  a22097:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a2209e:	05 
  a2209f:	62 71 7c 48 5c 5c 24 	vsubps zmm11,zmm0,ZMMWORD PTR [rsp+0x240]
  a220a6:	09 
  a220a7:	62 d1 2c 48 5c e3    	vsubps zmm4,zmm10,zmm11
  a220ad:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x400]
  a220b4:	10 
  a220b5:	62 71 4c 40 5c 6c 24 	vsubps zmm13,zmm22,ZMMWORD PTR [rsp+0x80]
  a220bc:	02 
  a220bd:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a220c4:	08 
  a220c5:	62 e1 7c 48 5c 44 24 	vsubps zmm16,zmm0,ZMMWORD PTR [rsp+0x100]
  a220cc:	04 
  a220cd:	62 72 7d 48 18 05 29 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff653629]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a220d4:	36 65 ff 
  a220d7:	62 b1 14 48 5c e8    	vsubps zmm5,zmm13,zmm16
  a220dd:	62 d1 54 48 59 c0    	vmulps zmm0,zmm5,zmm8
  a220e3:	62 72 7d 48 18 25 77 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff653577]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a220ea:	35 65 ff 
  a220ed:	62 d2 5d 48 b8 c4    	vfmadd231ps zmm0,zmm4,zmm12
  a220f3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm0
  a220fa:	1d 
  a220fb:	62 d1 54 48 59 c4    	vmulps zmm0,zmm5,zmm12
  a22101:	62 f2 3d 48 bc c4    	vfnmadd231ps zmm0,zmm8,zmm4
  a22107:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm0
  a2210e:	1c 
  a2210f:	62 91 3c 40 5c ed    	vsubps zmm5,zmm24,zmm29
  a22115:	62 21 44 48 5c db    	vsubps zmm27,zmm7,zmm19
  a2211b:	62 11 54 48 5c cb    	vsubps zmm9,zmm5,zmm27
  a22121:	62 41 54 40 5c ff    	vsubps zmm31,zmm21,zmm15
  a22127:	62 b1 74 40 5c ca    	vsubps zmm1,zmm17,zmm18
  a2212d:	62 f1 04 40 5c c1    	vsubps zmm0,zmm31,zmm1
  a22133:	62 d1 7c 48 59 dc    	vmulps zmm3,zmm0,zmm12
  a22139:	62 d2 35 48 b8 d8    	vfmadd231ps zmm3,zmm9,zmm8
  a2213f:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm3
  a22146:	1b 
  a22147:	62 d1 34 48 59 dc    	vmulps zmm3,zmm9,zmm12
  a2214d:	62 f2 3d 48 bc d8    	vfnmadd231ps zmm3,zmm8,zmm0
  a22153:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm3
  a2215a:	19 
  a2215b:	62 91 54 48 58 c3    	vaddps zmm0,zmm5,zmm27
  a22161:	62 f1 04 40 58 c9    	vaddps zmm1,zmm31,zmm1
  a22167:	62 d1 2c 48 58 eb    	vaddps zmm5,zmm10,zmm11
  a2216d:	62 31 14 48 58 d0    	vaddps zmm10,zmm13,zmm16
  a22173:	62 d1 2c 48 59 dc    	vmulps zmm3,zmm10,zmm12
  a22179:	62 d2 55 48 b8 d8    	vfmadd231ps zmm3,zmm5,zmm8
  a2217f:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm3
  a22186:	18 
  a22187:	62 d1 2c 48 59 d8    	vmulps zmm3,zmm10,zmm8
  a2218d:	62 f2 1d 48 bc dd    	vfnmadd231ps zmm3,zmm12,zmm5
  a22193:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm3
  a2219a:	16 
  a2219b:	62 d1 74 48 59 d8    	vmulps zmm3,zmm1,zmm8
  a221a1:	62 d2 7d 48 b8 dc    	vfmadd231ps zmm3,zmm0,zmm12
  a221a7:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm3
  a221ae:	17 
  a221af:	62 51 74 48 59 f4    	vmulps zmm14,zmm1,zmm12
  a221b5:	62 52 7d 48 bc f0    	vfnmadd231ps zmm14,zmm0,zmm8
  a221bb:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x1c0]
  a221c2:	07 
  a221c3:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x280]
  a221ca:	0a 
  a221cb:	62 d1 4c 48 5c c1    	vsubps zmm0,zmm6,zmm9
  a221d1:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x180]
  a221d8:	06 
  a221d9:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x780]
  a221e0:	1e 
  a221e1:	62 d1 24 48 5c cc    	vsubps zmm1,zmm11,zmm12
  a221e7:	62 f1 7c 48 58 d9    	vaddps zmm3,zmm0,zmm1
  a221ed:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm3
  a221f4:	15 
  a221f5:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a221fb:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm0
  a22202:	14 
  a22203:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x7c0]
  a2220a:	1f 
  a2220b:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0xac0]
  a22212:	2b 
  a22213:	62 f1 7c 48 5c cb    	vsubps zmm1,zmm0,zmm3
  a22219:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0xb00]
  a22220:	2c 
  a22221:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0xa80]
  a22228:	2a 
  a22229:	62 71 5c 48 5c c5    	vsubps zmm8,zmm4,zmm5
  a2222f:	62 51 74 48 5c e8    	vsubps zmm13,zmm1,zmm8
  a22235:	62 f1 3c 48 58 c9    	vaddps zmm1,zmm8,zmm1
  a2223b:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm1
  a22242:	13 
  a22243:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x680]
  a2224a:	1a 
  a2224b:	62 11 74 48 5c c2    	vsubps zmm8,zmm1,zmm26
  a22251:	62 61 2c 40 58 d1    	vaddps zmm26,zmm26,zmm1
  a22257:	62 61 1c 40 5c da    	vsubps zmm27,zmm28,zmm2
  a2225d:	62 71 1c 40 58 d2    	vaddps zmm10,zmm28,zmm2
  a22263:	62 61 5c 48 58 e5    	vaddps zmm28,zmm4,zmm5
  a22269:	62 41 4c 48 58 f9    	vaddps zmm31,zmm6,zmm9
  a2226f:	62 c1 54 40 58 c7    	vaddps zmm16,zmm21,zmm15
  a22275:	62 31 44 48 58 fb    	vaddps zmm15,zmm7,zmm19
  a2227b:	62 11 3c 40 58 cd    	vaddps zmm9,zmm24,zmm29
  a22281:	62 a1 6c 40 58 c9    	vaddps zmm17,zmm18,zmm17
  a22287:	62 e1 0c 40 58 54 24 	vaddps zmm18,zmm30,ZMMWORD PTR [rsp+0xc0]
  a2228e:	03 
  a2228f:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a22296:	04 
  a22297:	62 e1 74 48 58 5c 24 	vaddps zmm19,zmm1,ZMMWORD PTR [rsp+0x200]
  a2229e:	08 
  a2229f:	62 e1 4c 40 58 6c 24 	vaddps zmm21,zmm22,ZMMWORD PTR [rsp+0x80]
  a222a6:	02 
  a222a7:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x140]
  a222ae:	05 
  a222af:	62 e1 74 48 58 74 24 	vaddps zmm22,zmm1,ZMMWORD PTR [rsp+0x240]
  a222b6:	09 
  a222b7:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a222be:	01 
  a222bf:	62 21 74 48 5c c7    	vsubps zmm24,zmm1,zmm23
  a222c5:	62 a1 74 48 58 ff    	vaddps zmm23,zmm1,zmm23
  a222cb:	62 21 34 40 5c ec    	vsubps zmm29,zmm25,zmm20
  a222d1:	62 81 5c 40 58 e1    	vaddps zmm20,zmm20,zmm25
  a222d7:	62 41 24 48 58 cc    	vaddps zmm25,zmm11,zmm12
  a222dd:	62 61 7c 48 58 f3    	vaddps zmm30,zmm0,zmm3
  a222e3:	62 b1 6c 40 5c cb    	vsubps zmm1,zmm18,zmm19
  a222e9:	62 b1 54 40 5c c6    	vsubps zmm0,zmm21,zmm22
  a222ef:	62 f1 74 48 58 f0    	vaddps zmm6,zmm1,zmm0
  a222f5:	62 f1 7c 48 5c f9    	vsubps zmm7,zmm0,zmm1
  a222fb:	62 d1 7c 40 5c cf    	vsubps zmm1,zmm16,zmm15
  a22301:	62 b1 34 48 5c c1    	vsubps zmm0,zmm9,zmm17
  a22307:	62 f1 74 48 5c e0    	vsubps zmm4,zmm1,zmm0
  a2230d:	62 f1 7c 48 58 e9    	vaddps zmm5,zmm0,zmm1
  a22313:	62 f2 7d 48 18 0d 7f 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff65307f]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a2231a:	30 65 ff 
  a2231d:	62 71 14 48 59 e9    	vmulps zmm13,zmm13,zmm1
  a22323:	62 f1 74 48 59 5c 24 	vmulps zmm3,zmm1,ZMMWORD PTR [rsp+0x540]
  a2232a:	15 
  a2232b:	62 f1 74 48 59 54 24 	vmulps zmm2,zmm1,ZMMWORD PTR [rsp+0x500]
  a22332:	14 
  a22333:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp+0x4c0]
  a2233a:	13 
  a2233b:	62 71 5c 48 59 d9    	vmulps zmm11,zmm4,zmm1
  a22341:	62 71 4c 48 59 e1    	vmulps zmm12,zmm6,zmm1
  a22347:	62 f1 44 48 59 f1    	vmulps zmm6,zmm7,zmm1
  a2234d:	62 f1 54 48 59 c9    	vmulps zmm1,zmm5,zmm1
  a22353:	62 91 3c 48 5c ed    	vsubps zmm5,zmm8,zmm29
  a22359:	62 51 14 40 58 c0    	vaddps zmm8,zmm29,zmm8
  a2235f:	62 61 6c 48 58 e8    	vaddps zmm29,zmm2,zmm0
  a22365:	62 f1 6c 48 5c c0    	vsubps zmm0,zmm2,zmm0
  a2236b:	62 91 3c 40 5c d3    	vsubps zmm2,zmm24,zmm27
  a22371:	62 01 3c 40 58 c3    	vaddps zmm24,zmm24,zmm27
  a22377:	62 61 14 48 5c db    	vsubps zmm27,zmm13,zmm3
  a2237d:	62 d1 64 48 58 dd    	vaddps zmm3,zmm3,zmm13
  a22383:	62 51 2c 40 5c ea    	vsubps zmm13,zmm26,zmm10
  a22389:	62 11 2c 48 58 d2    	vaddps zmm10,zmm10,zmm26
  a2238f:	62 01 34 40 5c d6    	vsubps zmm26,zmm25,zmm30
  a22395:	62 01 34 40 58 ce    	vaddps zmm25,zmm25,zmm30
  a2239b:	62 b1 34 48 58 e1    	vaddps zmm4,zmm9,zmm17
  a223a1:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm4
  a223a8:	01 
  a223a9:	62 b1 6c 40 58 e3    	vaddps zmm4,zmm18,zmm19
  a223af:	62 a1 44 40 5c d4    	vsubps zmm18,zmm23,zmm20
  a223b5:	62 a1 44 40 58 dc    	vaddps zmm19,zmm23,zmm20
  a223bb:	62 81 1c 40 5c e7    	vsubps zmm20,zmm28,zmm31
  a223c1:	62 81 04 40 58 fc    	vaddps zmm23,zmm31,zmm28
  a223c7:	62 a1 54 40 58 ee    	vaddps zmm21,zmm21,zmm22
  a223cd:	62 51 7c 40 58 ff    	vaddps zmm15,zmm16,zmm15
  a223d3:	62 81 54 48 5c c3    	vsubps zmm16,zmm5,zmm27
  a223d9:	62 f1 24 40 58 ed    	vaddps zmm5,zmm27,zmm5
  a223df:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm5
  a223e6:	03 
  a223e7:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x700]
  a223ee:	1c 
  a223ef:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x640]
  a223f6:	19 
  a223f7:	62 d1 54 48 5c f9    	vsubps zmm7,zmm5,zmm9
  a223fd:	62 d1 54 48 58 e9    	vaddps zmm5,zmm5,zmm9
  a22403:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm5
  a2240a:	02 
  a2240b:	62 01 6c 48 5c e5    	vsubps zmm28,zmm2,zmm29
  a22411:	62 01 6c 48 58 ed    	vaddps zmm29,zmm2,zmm29
  a22417:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x740]
  a2241e:	1d 
  a2241f:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x6c0]
  a22426:	1b 
  a22427:	62 61 6c 48 58 f5    	vaddps zmm30,zmm2,zmm5
  a2242d:	62 61 6c 48 5c dd    	vsubps zmm27,zmm2,zmm5
  a22433:	62 21 14 48 5c fc    	vsubps zmm31,zmm13,zmm20
  a22439:	62 c1 5c 40 58 f5    	vaddps zmm22,zmm20,zmm13
  a2243f:	62 e1 4c 48 58 e1    	vaddps zmm20,zmm6,zmm1
  a22445:	62 71 4c 48 5c e9    	vsubps zmm13,zmm6,zmm1
  a2244b:	62 91 6c 40 5c d2    	vsubps zmm2,zmm18,zmm26
  a22451:	62 01 6c 40 58 d2    	vaddps zmm26,zmm18,zmm26
  a22457:	62 c1 24 48 5c d4    	vsubps zmm18,zmm11,zmm12
  a2245d:	62 c1 1c 48 58 cb    	vaddps zmm17,zmm12,zmm11
  a22463:	62 f1 3c 48 5c f0    	vsubps zmm6,zmm8,zmm0
  a22469:	62 51 7c 48 58 c8    	vaddps zmm9,zmm0,zmm8
  a2246f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x580]
  a22476:	16 
  a22477:	62 51 7c 48 5c c6    	vsubps zmm8,zmm0,zmm14
  a2247d:	62 51 7c 48 58 de    	vaddps zmm11,zmm0,zmm14
  a22483:	62 71 3c 40 5c e3    	vsubps zmm12,zmm24,zmm3
  a22489:	62 61 3c 40 58 c3    	vaddps zmm24,zmm24,zmm3
  a2248f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x600]
  a22496:	18 
  a22497:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x5c0]
  a2249e:	17 
  a2249f:	62 f1 74 48 5c d8    	vsubps zmm3,zmm1,zmm0
  a224a5:	62 f1 7c 48 58 e9    	vaddps zmm5,zmm0,zmm1
  a224ab:	62 91 2c 48 5c c9    	vsubps zmm1,zmm10,zmm25
  a224b1:	62 51 34 40 58 d2    	vaddps zmm10,zmm25,zmm10
  a224b7:	62 d1 54 40 5c c7    	vsubps zmm0,zmm21,zmm15
  a224bd:	62 c1 54 40 58 ef    	vaddps zmm21,zmm21,zmm15
  a224c3:	62 31 64 40 5c ff    	vsubps zmm15,zmm19,zmm23
  a224c9:	62 a1 64 40 58 ff    	vaddps zmm23,zmm19,zmm23
  a224cf:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x40]
  a224d6:	01 
  a224d7:	62 e1 0c 48 5c dc    	vsubps zmm19,zmm14,zmm4
  a224dd:	62 d1 5c 48 58 e6    	vaddps zmm4,zmm4,zmm14
  a224e3:	62 11 7c 40 58 f6    	vaddps zmm14,zmm16,zmm30
  a224e9:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm14
  a224f0:	01 
  a224f1:	62 01 7c 40 5c ce    	vsubps zmm25,zmm16,zmm30
  a224f7:	62 71 1c 40 5c f7    	vsubps zmm14,zmm28,zmm7
  a224fd:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm14
  a22504:	05 
  a22505:	62 71 1c 40 58 f7    	vaddps zmm14,zmm28,zmm7
  a2250b:	62 b1 04 40 5c fa    	vsubps zmm7,zmm31,zmm18
  a22511:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm7
  a22518:	04 
  a22519:	62 a1 04 40 58 c2    	vaddps zmm16,zmm31,zmm18
  a2251f:	62 21 6c 48 5c e4    	vsubps zmm28,zmm2,zmm20
  a22525:	62 a1 6c 48 58 d4    	vaddps zmm18,zmm2,zmm20
  a2252b:	62 61 4c 48 5c fb    	vsubps zmm31,zmm6,zmm3
  a22531:	62 f1 4c 48 58 f3    	vaddps zmm6,zmm6,zmm3
  a22537:	62 d1 1c 48 5c d0    	vsubps zmm2,zmm12,zmm8
  a2253d:	62 d1 1c 48 58 d8    	vaddps zmm3,zmm12,zmm8
  a22543:	62 21 74 48 5c f3    	vsubps zmm30,zmm1,zmm19
  a22549:	62 b1 74 48 58 cb    	vaddps zmm1,zmm1,zmm19
  a2254f:	62 71 04 48 5c c0    	vsubps zmm8,zmm15,zmm0
  a22555:	62 e1 04 48 58 e0    	vaddps zmm20,zmm15,zmm0
  a2255b:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a22562:	03 
  a22563:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x80]
  a2256a:	02 
  a2256b:	62 71 7c 48 5c e7    	vsubps zmm12,zmm0,zmm7
  a22571:	62 71 7c 48 58 ff    	vaddps zmm15,zmm0,zmm7
  a22577:	62 91 14 40 5c c3    	vsubps zmm0,zmm29,zmm27
  a2257d:	62 01 14 40 58 eb    	vaddps zmm29,zmm29,zmm27
  a22583:	62 41 4c 40 5c dd    	vsubps zmm27,zmm22,zmm13
  a22589:	62 c1 4c 40 58 f5    	vaddps zmm22,zmm22,zmm13
  a2258f:	62 31 2c 40 5c e9    	vsubps zmm13,zmm26,zmm17
  a22595:	62 a1 2c 40 58 d9    	vaddps zmm19,zmm26,zmm17
  a2259b:	62 41 34 48 5c d3    	vsubps zmm26,zmm9,zmm11
  a225a1:	62 51 34 48 58 cb    	vaddps zmm9,zmm9,zmm11
  a225a7:	62 e1 3c 40 5c cd    	vsubps zmm17,zmm24,zmm5
  a225ad:	62 71 3c 40 58 dd    	vaddps zmm11,zmm24,zmm5
  a225b3:	62 b1 2c 48 5c ed    	vsubps zmm5,zmm10,zmm21
  a225b9:	62 31 2c 48 58 d5    	vaddps zmm10,zmm10,zmm21
  a225bf:	62 e1 44 40 5c ec    	vsubps zmm21,zmm23,zmm4
  a225c5:	62 f1 44 40 58 e4    	vaddps zmm4,zmm23,zmm4
  a225cb:	62 f1 7c 48 28 3d ab 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff66d9ab]        # 8ff80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d430>
  a225d2:	d9 66 ff 
  a225d5:	62 b3 7d 48 19 e7 02 	vextractf32x4 xmm23,zmm4,0x2
  a225dc:	62 d2 45 48 7f e2    	vpermt2ps zmm4,zmm7,zmm10
  a225e2:	62 f1 7c 48 11 26    	vmovups ZMMWORD PTR [rsi],zmm4
  a225e8:	62 73 7d 48 19 d4 02 	vextractf32x4 xmm4,zmm10,0x2
  a225ef:	62 f1 44 00 14 e4    	vunpcklps xmm4,xmm23,xmm4
  a225f5:	c5 f8 11 66 40       	vmovups XMMWORD PTR [rsi+0x40],xmm4
  a225fa:	62 73 7d 48 19 dc 02 	vextractf32x4 xmm4,zmm11,0x2
  a22601:	62 52 45 48 7f d9    	vpermt2ps zmm11,zmm7,zmm9
  a22607:	62 71 7c 48 11 9e 50 	vmovups ZMMWORD PTR [rsi+0x50],zmm11
  a2260e:	00 00 00 
  a22611:	62 53 7d 48 19 c9 02 	vextractf32x4 xmm9,zmm9,0x2
  a22618:	c4 c1 58 14 e1       	vunpcklps xmm4,xmm4,xmm9
  a2261d:	c5 f8 11 a6 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm4
  a22624:	00 
  a22625:	62 e3 7d 48 19 dc 02 	vextractf32x4 xmm4,zmm19,0x2
  a2262c:	62 a2 45 48 7f de    	vpermt2ps zmm19,zmm7,zmm22
  a22632:	62 e1 7c 48 11 9e a0 	vmovups ZMMWORD PTR [rsi+0xa0],zmm19
  a22639:	00 00 00 
  a2263c:	62 c3 7d 48 19 f1 02 	vextractf32x4 xmm9,zmm22,0x2
  a22643:	c4 c1 58 14 e1       	vunpcklps xmm4,xmm4,xmm9
  a22648:	c5 f8 11 a6 e0 00 00 	vmovups XMMWORD PTR [rsi+0xe0],xmm4
  a2264f:	00 
  a22650:	62 63 7d 48 19 ec 02 	vextractf32x4 xmm4,zmm29,0x2
  a22657:	62 42 45 48 7f ef    	vpermt2ps zmm29,zmm7,zmm15
  a2265d:	62 61 7c 48 11 ae f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm29
  a22664:	00 00 00 
  a22667:	62 53 7d 48 19 f9 02 	vextractf32x4 xmm9,zmm15,0x2
  a2266e:	c4 c1 58 14 e1       	vunpcklps xmm4,xmm4,xmm9
  a22673:	c5 f8 11 a6 30 01 00 	vmovups XMMWORD PTR [rsi+0x130],xmm4
  a2267a:	00 
  a2267b:	62 e3 7d 48 19 e4 02 	vextractf32x4 xmm4,zmm20,0x2
  a22682:	62 e2 45 48 7f e1    	vpermt2ps zmm20,zmm7,zmm1
  a22688:	62 e1 7c 48 11 66 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm20
  a2268f:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a22696:	c5 d8 14 c9          	vunpcklps xmm1,xmm4,xmm1
  a2269a:	c5 f8 11 8e 80 01 00 	vmovups XMMWORD PTR [rsi+0x180],xmm1
  a226a1:	00 
  a226a2:	62 f3 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm3,0x2
  a226a9:	62 f2 45 48 7f de    	vpermt2ps zmm3,zmm7,zmm6
  a226af:	62 f1 7c 48 11 9e 90 	vmovups ZMMWORD PTR [rsi+0x190],zmm3
  a226b6:	01 00 00 
  a226b9:	62 f3 7d 48 19 f3 02 	vextractf32x4 xmm3,zmm6,0x2
  a226c0:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  a226c4:	c5 f8 11 8e d0 01 00 	vmovups XMMWORD PTR [rsi+0x1d0],xmm1
  a226cb:	00 
  a226cc:	62 e3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm18,0x2
  a226d3:	62 a2 45 48 7f d0    	vpermt2ps zmm18,zmm7,zmm16
  a226d9:	62 e1 7c 48 11 96 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm18
  a226e0:	01 00 00 
  a226e3:	62 e3 7d 48 19 c3 02 	vextractf32x4 xmm3,zmm16,0x2
  a226ea:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  a226ee:	c5 f8 11 8e 20 02 00 	vmovups XMMWORD PTR [rsi+0x220],xmm1
  a226f5:	00 
  a226f6:	62 73 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm14,0x2
  a226fd:	62 12 45 48 7f f1    	vpermt2ps zmm14,zmm7,zmm25
  a22703:	62 71 7c 48 11 b6 30 	vmovups ZMMWORD PTR [rsi+0x230],zmm14
  a2270a:	02 00 00 
  a2270d:	62 63 7d 48 19 cb 02 	vextractf32x4 xmm3,zmm25,0x2
  a22714:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  a22718:	c5 f8 11 8e 70 02 00 	vmovups XMMWORD PTR [rsi+0x270],xmm1
  a2271f:	00 
  a22720:	62 e3 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm21,0x2
  a22727:	62 e2 45 48 7f ed    	vpermt2ps zmm21,zmm7,zmm5
  a2272d:	62 e1 7c 48 11 6e 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm21
  a22734:	62 f3 7d 48 19 eb 02 	vextractf32x4 xmm3,zmm5,0x2
  a2273b:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  a2273f:	c5 f8 11 8e c0 02 00 	vmovups XMMWORD PTR [rsi+0x2c0],xmm1
  a22746:	00 
  a22747:	62 e3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm17,0x2
  a2274e:	62 82 45 48 7f ca    	vpermt2ps zmm17,zmm7,zmm26
  a22754:	62 e1 7c 48 11 8e d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm17
  a2275b:	02 00 00 
  a2275e:	62 63 7d 48 19 d3 02 	vextractf32x4 xmm3,zmm26,0x2
  a22765:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  a22769:	c5 f8 11 8e 10 03 00 	vmovups XMMWORD PTR [rsi+0x310],xmm1
  a22770:	00 
  a22771:	62 73 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm13,0x2
  a22778:	62 12 45 48 7f eb    	vpermt2ps zmm13,zmm7,zmm27
  a2277e:	62 71 7c 48 11 ae 20 	vmovups ZMMWORD PTR [rsi+0x320],zmm13
  a22785:	03 00 00 
  a22788:	62 63 7d 48 19 db 02 	vextractf32x4 xmm3,zmm27,0x2
  a2278f:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  a22793:	c5 f8 11 8e 60 03 00 	vmovups XMMWORD PTR [rsi+0x360],xmm1
  a2279a:	00 
  a2279b:	62 f3 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm0,0x2
  a227a2:	62 d2 45 48 7f c4    	vpermt2ps zmm0,zmm7,zmm12
  a227a8:	62 f1 7c 48 11 86 70 	vmovups ZMMWORD PTR [rsi+0x370],zmm0
  a227af:	03 00 00 
  a227b2:	62 73 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm12,0x2
  a227b9:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a227bd:	c5 f8 11 86 b0 03 00 	vmovups XMMWORD PTR [rsi+0x3b0],xmm0
  a227c4:	00 
  a227c5:	62 73 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm8,0x2
  a227cc:	62 12 45 48 7f c6    	vpermt2ps zmm8,zmm7,zmm30
  a227d2:	62 71 7c 48 11 46 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm8
  a227d9:	62 63 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm30,0x2
  a227e0:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a227e4:	c5 f8 11 86 00 04 00 	vmovups XMMWORD PTR [rsi+0x400],xmm0
  a227eb:	00 
  a227ec:	62 f3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm2,0x2
  a227f3:	62 92 45 48 7f d7    	vpermt2ps zmm2,zmm7,zmm31
  a227f9:	62 f1 7c 48 11 96 10 	vmovups ZMMWORD PTR [rsi+0x410],zmm2
  a22800:	04 00 00 
  a22803:	62 63 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm31,0x2
  a2280a:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a2280e:	c5 f8 11 86 50 04 00 	vmovups XMMWORD PTR [rsi+0x450],xmm0
  a22815:	00 
  a22816:	62 63 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm28,0x2
  a2281d:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a22824:	04 
  a22825:	62 62 45 48 7f e1    	vpermt2ps zmm28,zmm7,zmm1
  a2282b:	62 61 7c 48 11 a6 60 	vmovups ZMMWORD PTR [rsi+0x460],zmm28
  a22832:	04 00 00 
  a22835:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a2283c:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a22840:	c5 f8 11 86 a0 04 00 	vmovups XMMWORD PTR [rsi+0x4a0],xmm0
  a22847:	00 
  a22848:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a2284f:	01 
  a22850:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x140]
  a22857:	05 
  a22858:	62 f2 75 48 77 f8    	vpermi2ps zmm7,zmm1,zmm0
  a2285e:	62 f1 7c 48 11 be b0 	vmovups ZMMWORD PTR [rsi+0x4b0],zmm7
  a22865:	04 00 00 
  a22868:	62 f3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm0,0x2
  a2286f:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a22876:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a2287a:	c5 f8 11 86 f0 04 00 	vmovups XMMWORD PTR [rsi+0x4f0],xmm0
  a22881:	00 
  a22882:	48 89 ec             	mov    rsp,rbp
  a22885:	5d                   	pop    rbp
  a22886:	c5 f8 77             	vzeroupper
  a22889:	c3                   	ret
