
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a191c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a191c0:	48 81 ec 88 01 00 00 	sub    rsp,0x188
  a191c7:	48 69 c2 c0 03 00 00 	imul   rax,rdx,0x3c0
  a191ce:	31 d2                	xor    edx,edx
  a191d0:	62 71 7c 48 10 24 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1]
  a191d7:	c5 f8 10 64 17 40    	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x40]
  a191dd:	62 d1 7c 48 28 dc    	vmovaps zmm3,zmm12
  a191e3:	62 f1 7c 48 28 05 53 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff676653]        # 8f840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ccf0>
  a191ea:	66 67 ff 
  a191ed:	62 f2 7d 48 7f dc    	vpermt2ps zmm3,zmm0,zmm4
  a191f3:	62 f1 7c 48 28 0d 83 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff676683]        # 8f880 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cd30>
  a191fa:	66 67 ff 
  a191fd:	62 72 75 48 7f e4    	vpermt2ps zmm12,zmm1,zmm4
  a19203:	62 71 7c 48 10 84 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x50]
  a1920a:	50 00 00 00 
  a1920e:	c5 f8 10 a4 17 90 00 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x90]
  a19215:	00 00 
  a19217:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a1921d:	62 f2 7d 48 7f fc    	vpermt2ps zmm7,zmm0,zmm4
  a19223:	62 72 75 48 7f c4    	vpermt2ps zmm8,zmm1,zmm4
  a19229:	62 71 7c 48 10 9c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0xa0]
  a19230:	a0 00 00 00 
  a19234:	c5 f8 10 a4 17 e0 00 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0xe0]
  a1923b:	00 00 
  a1923d:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a19243:	62 e2 7d 48 7f d4    	vpermt2ps zmm18,zmm0,zmm4
  a19249:	62 72 75 48 7f dc    	vpermt2ps zmm11,zmm1,zmm4
  a1924f:	62 e1 7c 48 10 8c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a19256:	f0 00 00 00 
  a1925a:	c5 f8 10 a4 17 30 01 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x130]
  a19261:	00 00 
  a19263:	62 31 7c 48 28 e9    	vmovaps zmm13,zmm17
  a19269:	62 72 7d 48 7f ec    	vpermt2ps zmm13,zmm0,zmm4
  a1926f:	62 e2 75 48 7f cc    	vpermt2ps zmm17,zmm1,zmm4
  a19275:	62 e1 7c 48 10 6c 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x140]
  a1927c:	05 
  a1927d:	c5 f8 10 a4 17 80 01 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x180]
  a19284:	00 00 
  a19286:	62 a1 7c 48 28 dd    	vmovaps zmm19,zmm21
  a1928c:	62 e2 7d 48 7f dc    	vpermt2ps zmm19,zmm0,zmm4
  a19292:	62 e2 75 48 7f ec    	vpermt2ps zmm21,zmm1,zmm4
  a19298:	62 71 7c 48 10 b4 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x190]
  a1929f:	90 01 00 00 
  a192a3:	c5 f8 10 a4 17 d0 01 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x1d0]
  a192aa:	00 00 
  a192ac:	62 c1 7c 48 28 fe    	vmovaps zmm23,zmm14
  a192b2:	62 e2 7d 48 7f fc    	vpermt2ps zmm23,zmm0,zmm4
  a192b8:	62 72 75 48 7f f4    	vpermt2ps zmm14,zmm1,zmm4
  a192be:	62 61 7c 48 10 84 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a192c5:	e0 01 00 00 
  a192c9:	c5 f8 10 a4 17 20 02 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x220]
  a192d0:	00 00 
  a192d2:	62 81 7c 48 28 e0    	vmovaps zmm20,zmm24
  a192d8:	62 e2 7d 48 7f e4    	vpermt2ps zmm20,zmm0,zmm4
  a192de:	62 62 75 48 7f c4    	vpermt2ps zmm24,zmm1,zmm4
  a192e4:	62 e1 7c 48 10 b4 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0x230]
  a192eb:	30 02 00 00 
  a192ef:	c5 f8 10 a4 17 70 02 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x270]
  a192f6:	00 00 
  a192f8:	62 21 7c 48 28 e6    	vmovaps zmm28,zmm22
  a192fe:	62 62 7d 48 7f e4    	vpermt2ps zmm28,zmm0,zmm4
  a19304:	62 e2 75 48 7f f4    	vpermt2ps zmm22,zmm1,zmm4
  a1930a:	62 61 7c 48 10 6c 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x280]
  a19311:	0a 
  a19312:	62 61 7c 08 10 4c 17 	vmovups xmm25,XMMWORD PTR [rdi+rdx*1+0x2c0]
  a19319:	2c 
  a1931a:	62 91 7c 48 28 e5    	vmovaps zmm4,zmm29
  a19320:	62 92 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm25
  a19326:	62 02 75 48 7f e9    	vpermt2ps zmm29,zmm1,zmm25
  a1932c:	62 61 7c 48 10 8c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a19333:	d0 02 00 00 
  a19337:	62 61 7c 08 10 54 17 	vmovups xmm26,XMMWORD PTR [rdi+rdx*1+0x310]
  a1933e:	31 
  a1933f:	62 01 7c 48 28 f1    	vmovaps zmm30,zmm25
  a19345:	62 02 7d 48 7f f2    	vpermt2ps zmm30,zmm0,zmm26
  a1934b:	62 02 75 48 7f ca    	vpermt2ps zmm25,zmm1,zmm26
  a19351:	62 61 7c 48 10 bc 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x320]
  a19358:	20 03 00 00 
  a1935c:	62 61 7c 08 10 54 17 	vmovups xmm26,XMMWORD PTR [rdi+rdx*1+0x360]
  a19363:	36 
  a19364:	62 91 7c 48 28 ef    	vmovaps zmm5,zmm31
  a1936a:	62 92 7d 48 7f ea    	vpermt2ps zmm5,zmm0,zmm26
  a19370:	62 02 75 48 7f fa    	vpermt2ps zmm31,zmm1,zmm26
  a19376:	62 e1 7c 48 10 84 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x370]
  a1937d:	70 03 00 00 
  a19381:	62 61 7c 08 10 54 17 	vmovups xmm26,XMMWORD PTR [rdi+rdx*1+0x3b0]
  a19388:	3b 
  a19389:	62 31 7c 48 28 f8    	vmovaps zmm15,zmm16
  a1938f:	62 12 7d 48 7f fa    	vpermt2ps zmm15,zmm0,zmm26
  a19395:	62 82 75 48 7f c2    	vpermt2ps zmm16,zmm1,zmm26
  a1939b:	62 01 1c 48 58 d0    	vaddps zmm26,zmm12,zmm24
  a193a1:	62 01 74 40 58 d9    	vaddps zmm27,zmm17,zmm25
  a193a7:	62 91 54 40 58 f7    	vaddps zmm6,zmm21,zmm31
  a193ad:	62 51 4c 40 58 c8    	vaddps zmm9,zmm22,zmm8
  a193b3:	62 d1 14 40 58 c3    	vaddps zmm0,zmm29,zmm11
  a193b9:	62 81 54 40 5c ef    	vsubps zmm21,zmm21,zmm31
  a193bf:	62 61 1c 40 58 ff    	vaddps zmm31,zmm28,zmm7
  a193c5:	62 f1 1c 40 5c ff    	vsubps zmm7,zmm28,zmm7
  a193cb:	62 41 7c 40 58 e6    	vaddps zmm28,zmm16,zmm14
  a193d1:	62 51 14 40 5c d3    	vsubps zmm10,zmm29,zmm11
  a193d7:	62 21 04 48 58 ef    	vaddps zmm29,zmm15,zmm23
  a193dd:	62 31 04 48 5c ff    	vsubps zmm15,zmm15,zmm23
  a193e3:	62 a1 64 48 58 fc    	vaddps zmm23,zmm3,zmm20
  a193e9:	62 11 1c 48 5c e0    	vsubps zmm12,zmm12,zmm24
  a193ef:	62 01 14 48 58 c6    	vaddps zmm24,zmm13,zmm30
  a193f5:	62 11 14 48 5c ee    	vsubps zmm13,zmm13,zmm30
  a193fb:	62 61 64 40 58 f5    	vaddps zmm30,zmm19,zmm5
  a19401:	62 f1 64 40 5c ed    	vsubps zmm5,zmm19,zmm5
  a19407:	62 b1 5c 48 58 ca    	vaddps zmm1,zmm4,zmm18
  a1940d:	62 a1 3c 48 5c de    	vsubps zmm19,zmm8,zmm22
  a19413:	62 71 64 40 58 c5    	vaddps zmm8,zmm19,zmm5
  a19419:	62 b1 5c 48 5c d2    	vsubps zmm2,zmm4,zmm18
  a1941f:	62 31 0c 48 5c f0    	vsubps zmm14,zmm14,zmm16
  a19425:	62 f1 0c 48 58 e2    	vaddps zmm4,zmm14,zmm2
  a1942b:	62 e1 3c 48 5c c4    	vsubps zmm16,zmm8,zmm4
  a19431:	62 f1 3c 48 58 e4    	vaddps zmm4,zmm8,zmm4
  a19437:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a1943e:	62 f1 54 40 58 e7    	vaddps zmm4,zmm21,zmm7
  a19444:	62 a1 64 48 5c d4    	vsubps zmm18,zmm3,zmm20
  a1944a:	62 d1 2c 48 58 df    	vaddps zmm3,zmm10,zmm15
  a19450:	62 a1 34 40 5c c9    	vsubps zmm17,zmm25,zmm17
  a19456:	62 71 5c 48 58 c3    	vaddps zmm8,zmm4,zmm3
  a1945c:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm8
  a19463:	fe 
  a19464:	62 e1 5c 48 5c e3    	vsubps zmm20,zmm4,zmm3
  a1946a:	62 41 4c 48 58 c9    	vaddps zmm25,zmm6,zmm9
  a19470:	62 d1 4c 48 5c d9    	vsubps zmm3,zmm6,zmm9
  a19476:	62 91 7c 48 58 f4    	vaddps zmm6,zmm0,zmm28
  a1947c:	62 91 7c 48 5c c4    	vsubps zmm0,zmm0,zmm28
  a19482:	62 11 2c 40 58 cb    	vaddps zmm9,zmm26,zmm27
  a19488:	62 01 2c 40 5c d3    	vsubps zmm26,zmm26,zmm27
  a1948e:	62 01 0c 40 58 df    	vaddps zmm27,zmm30,zmm31
  a19494:	62 91 0c 40 5c e7    	vsubps zmm4,zmm30,zmm31
  a1949a:	62 01 74 48 58 e5    	vaddps zmm28,zmm1,zmm29
  a194a0:	62 91 74 48 5c cd    	vsubps zmm1,zmm1,zmm29
  a194a6:	62 61 5c 48 5c e9    	vsubps zmm29,zmm4,zmm1
  a194ac:	62 f1 5c 48 58 e1    	vaddps zmm4,zmm4,zmm1
  a194b2:	62 01 44 40 58 f0    	vaddps zmm30,zmm23,zmm24
  a194b8:	62 01 44 40 5c f8    	vsubps zmm31,zmm23,zmm24
  a194be:	62 e1 64 48 58 f8    	vaddps zmm23,zmm3,zmm0
  a194c4:	62 61 64 48 5c c0    	vsubps zmm24,zmm3,zmm0
  a194ca:	62 c1 1c 48 58 f5    	vaddps zmm22,zmm12,zmm13
  a194d0:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm22
  a194d7:	ff 
  a194d8:	62 51 1c 48 5c e5    	vsubps zmm12,zmm12,zmm13
  a194de:	62 71 34 40 58 ee    	vaddps zmm13,zmm25,zmm6
  a194e4:	62 71 54 40 5c df    	vsubps zmm11,zmm21,zmm7
  a194ea:	62 d1 34 48 58 dd    	vaddps zmm3,zmm9,zmm13
  a194f0:	62 51 2c 48 5c ff    	vsubps zmm15,zmm10,zmm15
  a194f6:	62 a1 74 40 58 ea    	vaddps zmm21,zmm17,zmm18
  a194fc:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm21
  a19503:	01 
  a19504:	62 31 6c 40 5c d1    	vsubps zmm10,zmm18,zmm17
  a1950a:	62 91 24 40 58 c4    	vaddps zmm0,zmm27,zmm28
  a19510:	62 b1 54 48 5c eb    	vsubps zmm5,zmm5,zmm19
  a19516:	62 f1 0c 40 58 c8    	vaddps zmm1,zmm30,zmm0
  a1951c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a19523:	05 
  a19524:	62 d1 6c 48 5c d6    	vsubps zmm2,zmm2,zmm14
  a1952a:	62 e2 7d 48 18 1d 2c 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff65bf2c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a19531:	bf 65 ff 
  a19534:	62 31 7c 48 28 f3    	vmovaps zmm14,zmm19
  a1953a:	62 32 3d 48 ac f6    	vfnmadd213ps zmm14,zmm8,zmm22
  a19540:	62 f2 7d 48 18 0d 8a 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff65bd8a]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a19547:	bd 65 ff 
  a1954a:	62 e1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm1
  a19550:	62 52 65 40 ac e9    	vfnmadd213ps zmm13,zmm19,zmm9
  a19556:	62 c1 7c 40 58 ce    	vaddps zmm17,zmm16,zmm14
  a1955c:	62 11 24 40 5c cc    	vsubps zmm9,zmm27,zmm28
  a19562:	62 a1 7c 48 28 f3    	vmovaps zmm22,zmm19
  a19568:	62 f1 7c 48 10 3c 24 	vmovups zmm7,ZMMWORD PTR [rsp]
  a1956f:	62 a2 45 48 ac f5    	vfnmadd213ps zmm22,zmm7,zmm21
  a19575:	62 61 5c 40 59 d9    	vmulps zmm27,zmm20,zmm1
  a1957b:	62 92 65 40 ac c6    	vfnmadd213ps zmm0,zmm19,zmm30
  a19581:	62 81 4c 40 5c d3    	vsubps zmm18,zmm22,zmm27
  a19587:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm18
  a1958e:	02 
  a1958f:	62 f1 34 40 5c f6    	vsubps zmm6,zmm25,zmm6
  a19595:	62 21 7c 48 28 cb    	vmovaps zmm25,zmm19
  a1959b:	62 02 45 40 ac ca    	vfnmadd213ps zmm25,zmm23,zmm26
  a195a1:	62 61 14 40 59 e1    	vmulps zmm28,zmm29,zmm1
  a195a7:	62 a1 0c 48 5c e8    	vsubps zmm21,zmm14,zmm16
  a195ad:	62 81 34 40 5c e4    	vsubps zmm20,zmm25,zmm28
  a195b3:	62 11 4c 40 58 f3    	vaddps zmm14,zmm22,zmm27
  a195b9:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm14
  a195c0:	04 
  a195c1:	62 31 7c 48 28 f3    	vmovaps zmm14,zmm19
  a195c7:	62 12 5d 48 ac f7    	vfnmadd213ps zmm14,zmm4,zmm31
  a195cd:	62 71 3c 40 59 c1    	vmulps zmm8,zmm24,zmm1
  a195d3:	62 a1 2c 40 58 ff    	vaddps zmm23,zmm26,zmm23
  a195d9:	62 41 24 48 58 f7    	vaddps zmm30,zmm11,zmm15
  a195df:	62 f1 04 40 58 e4    	vaddps zmm4,zmm31,zmm4
  a195e5:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm4
  a195ec:	03 
  a195ed:	62 81 1c 48 58 f6    	vaddps zmm22,zmm12,zmm30
  a195f3:	62 42 65 40 ac f4    	vfnmadd213ps zmm30,zmm19,zmm12
  a195f9:	62 61 54 48 58 fa    	vaddps zmm31,zmm5,zmm2
  a195ff:	62 f1 54 48 5c ea    	vsubps zmm5,zmm5,zmm2
  a19605:	62 01 2c 48 58 c7    	vaddps zmm24,zmm10,zmm31
  a1960b:	62 42 65 40 ac fa    	vfnmadd213ps zmm31,zmm19,zmm10
  a19611:	62 c1 3c 48 58 c6    	vaddps zmm16,zmm8,zmm14
  a19617:	62 71 34 48 59 c9    	vmulps zmm9,zmm9,zmm1
  a1961d:	62 51 24 48 5c d7    	vsubps zmm10,zmm11,zmm15
  a19623:	62 41 14 48 58 e9    	vaddps zmm29,zmm13,zmm9
  a19629:	62 f1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm1
  a1962f:	62 51 14 48 5c c9    	vsubps zmm9,zmm13,zmm9
  a19635:	62 e1 7c 48 5c de    	vsubps zmm19,zmm0,zmm6
  a1963b:	62 f1 54 48 59 e9    	vmulps zmm5,zmm5,zmm1
  a19641:	62 f1 4c 48 58 d0    	vaddps zmm2,zmm6,zmm0
  a19647:	62 01 54 48 58 d6    	vaddps zmm26,zmm5,zmm30
  a1964d:	62 f1 2c 48 59 f1    	vmulps zmm6,zmm10,zmm1
  a19653:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a1965a:	fe 
  a1965b:	62 71 7c 48 58 54 24 	vaddps zmm10,zmm0,ZMMWORD PTR [rsp-0x40]
  a19662:	ff 
  a19663:	62 61 04 40 5c de    	vsubps zmm27,zmm31,zmm6
  a19669:	62 71 44 48 58 5c 24 	vaddps zmm11,zmm7,ZMMWORD PTR [rsp+0x40]
  a19670:	01 
  a19671:	62 11 34 40 58 fc    	vaddps zmm15,zmm25,zmm28
  a19677:	62 51 0c 48 5c f0    	vsubps zmm14,zmm14,zmm8
  a1967d:	62 f1 0c 40 5c ed    	vsubps zmm5,zmm30,zmm5
  a19683:	62 71 04 40 58 ee    	vaddps zmm13,zmm31,zmm6
  a19689:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a1968f:	62 61 7c 48 28 25 e7 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff6ad8e7]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a19696:	d8 6a ff 
  a19699:	62 d2 1d 40 7f e1    	vpermt2ps zmm4,zmm28,zmm9
  a1969f:	62 61 7c 48 28 35 17 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff6ad917]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a196a6:	d9 6a ff 
  a196a9:	62 d2 0d 40 7f d9    	vpermt2ps zmm3,zmm30,zmm9
  a196af:	62 21 7c 48 28 f9    	vmovaps zmm31,zmm17
  a196b5:	62 42 1d 40 7f fa    	vpermt2ps zmm31,zmm28,zmm10
  a196bb:	62 c2 0d 40 7f ca    	vpermt2ps zmm17,zmm30,zmm10
  a196c1:	62 b1 7c 48 28 f4    	vmovaps zmm6,zmm20
  a196c7:	62 d2 1d 40 7f f7    	vpermt2ps zmm6,zmm28,zmm15
  a196cd:	62 c2 0d 40 7f e7    	vpermt2ps zmm20,zmm30,zmm15
  a196d3:	62 31 7c 48 28 c6    	vmovaps zmm8,zmm22
  a196d9:	62 72 1d 40 7f c5    	vpermt2ps zmm8,zmm28,zmm5
  a196df:	62 e2 0d 40 7f f5    	vpermt2ps zmm22,zmm30,zmm5
  a196e5:	62 91 7c 48 28 ed    	vmovaps zmm5,zmm29
  a196eb:	c4 41 18 57 e4       	vxorps xmm12,xmm12,xmm12
  a196f0:	62 d2 1d 40 7f ec    	vpermt2ps zmm5,zmm28,zmm12
  a196f6:	62 31 7c 48 28 cd    	vmovaps zmm9,zmm21
  a196fc:	62 52 1d 40 7f cc    	vpermt2ps zmm9,zmm28,zmm12
  a19702:	62 31 7c 48 28 d7    	vmovaps zmm10,zmm23
  a19708:	62 52 1d 40 7f d4    	vpermt2ps zmm10,zmm28,zmm12
  a1970e:	62 11 7c 48 28 fa    	vmovaps zmm15,zmm26
  a19714:	62 52 1d 40 7f fc    	vpermt2ps zmm15,zmm28,zmm12
  a1971a:	62 61 7c 48 28 cc    	vmovaps zmm25,zmm4
  a19720:	62 f1 7c 48 28 05 d6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6ad7d6]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a19727:	d7 6a ff 
  a1972a:	62 62 7d 48 7f cd    	vpermt2ps zmm25,zmm0,zmm5
  a19730:	62 e1 7c 48 28 15 06 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6ad806]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a19737:	d8 6a ff 
  a1973a:	62 f2 6d 40 7f e5    	vpermt2ps zmm4,zmm18,zmm5
  a19740:	62 91 7c 48 28 ef    	vmovaps zmm5,zmm31
  a19746:	62 d2 7d 48 7f e9    	vpermt2ps zmm5,zmm0,zmm9
  a1974c:	62 42 6d 40 7f f9    	vpermt2ps zmm31,zmm18,zmm9
  a19752:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a19758:	62 52 7d 48 7f ca    	vpermt2ps zmm9,zmm0,zmm10
  a1975e:	62 d2 6d 40 7f f2    	vpermt2ps zmm6,zmm18,zmm10
  a19764:	62 51 7c 48 28 d0    	vmovaps zmm10,zmm8
  a1976a:	62 52 7d 48 7f d7    	vpermt2ps zmm10,zmm0,zmm15
  a19770:	62 52 6d 40 7f c7    	vpermt2ps zmm8,zmm18,zmm15
  a19776:	62 42 0d 40 7f ec    	vpermt2ps zmm29,zmm30,zmm12
  a1977c:	62 92 7d 48 7f dd    	vpermt2ps zmm3,zmm0,zmm29
  a19782:	62 c2 0d 40 7f ec    	vpermt2ps zmm21,zmm30,zmm12
  a19788:	62 c2 0d 40 7f fc    	vpermt2ps zmm23,zmm30,zmm12
  a1978e:	62 42 0d 40 7f d4    	vpermt2ps zmm26,zmm30,zmm12
  a19794:	62 a2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm21
  a1979a:	62 a2 7d 48 7f e7    	vpermt2ps zmm20,zmm0,zmm23
  a197a0:	62 a1 e5 48 14 e4    	vunpcklpd zmm20,zmm3,zmm20
  a197a6:	62 82 7d 48 7f f2    	vpermt2ps zmm22,zmm0,zmm26
  a197ac:	62 31 f5 40 14 fe    	vunpcklpd zmm15,zmm17,zmm22
  a197b2:	62 d1 b5 40 14 d9    	vunpcklpd zmm3,zmm25,zmm9
  a197b8:	62 d1 b5 40 15 c9    	vunpckhpd zmm1,zmm25,zmm9
  a197be:	62 51 d5 48 14 ca    	vunpcklpd zmm9,zmm5,zmm10
  a197c4:	62 d1 d5 48 15 ea    	vunpckhpd zmm5,zmm5,zmm10
  a197ca:	62 e1 dd 48 14 fe    	vunpcklpd zmm23,zmm4,zmm6
  a197d0:	62 e1 dd 48 15 f6    	vunpckhpd zmm22,zmm4,zmm6
  a197d6:	62 d1 85 40 14 e0    	vunpcklpd zmm4,zmm31,zmm8
  a197dc:	62 d1 85 40 15 f0    	vunpckhpd zmm6,zmm31,zmm8
  a197e2:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a197e8:	62 61 7c 48 28 eb    	vmovaps zmm29,zmm3
  a197ee:	62 61 7c 48 28 0d 08 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff6ad608]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a197f5:	d6 6a ff 
  a197f8:	62 42 35 40 7f e9    	vpermt2ps zmm29,zmm25,zmm9
  a197fe:	62 e1 7c 48 28 0d 38 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6ad638]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a19805:	d6 6a ff 
  a19808:	62 52 75 40 7f c1    	vpermt2ps zmm8,zmm17,zmm9
  a1980e:	62 71 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm8
  a19815:	62 61 7c 48 28 f9    	vmovaps zmm31,zmm1
  a1981b:	62 62 35 40 7f fd    	vpermt2ps zmm31,zmm25,zmm5
  a19821:	62 f2 75 40 7f cd    	vpermt2ps zmm1,zmm17,zmm5
  a19827:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a1982e:	ff 
  a1982f:	62 a1 7c 48 28 ef    	vmovaps zmm21,zmm23
  a19835:	62 e2 35 40 7f ec    	vpermt2ps zmm21,zmm25,zmm4
  a1983b:	62 e2 75 40 7f fc    	vpermt2ps zmm23,zmm17,zmm4
  a19841:	62 21 7c 48 28 d6    	vmovaps zmm26,zmm22
  a19847:	62 62 35 40 7f d6    	vpermt2ps zmm26,zmm25,zmm6
  a1984d:	62 e2 75 40 7f f6    	vpermt2ps zmm22,zmm17,zmm6
  a19853:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  a19859:	62 c2 35 40 7f e7    	vpermt2ps zmm20,zmm25,zmm15
  a1985f:	62 d2 75 40 7f cf    	vpermt2ps zmm1,zmm17,zmm15
  a19865:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a1986c:	fe 
  a1986d:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x140]
  a19874:	05 
  a19875:	62 d1 7c 48 28 e7    	vmovaps zmm4,zmm15
  a1987b:	62 f2 1d 40 7f e2    	vpermt2ps zmm4,zmm28,zmm2
  a19881:	62 72 0d 40 7f fa    	vpermt2ps zmm15,zmm30,zmm2
  a19887:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x80]
  a1988e:	02 
  a1988f:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a19895:	62 d2 1d 40 7f fb    	vpermt2ps zmm7,zmm28,zmm11
  a1989b:	62 d2 0d 40 7f db    	vpermt2ps zmm3,zmm30,zmm11
  a198a1:	62 b1 7c 48 28 e8    	vmovaps zmm5,zmm16
  a198a7:	62 d2 1d 40 7f ee    	vpermt2ps zmm5,zmm28,zmm14
  a198ad:	62 c2 0d 40 7f c6    	vpermt2ps zmm16,zmm30,zmm14
  a198b3:	62 91 7c 48 28 f0    	vmovaps zmm6,zmm24
  a198b9:	62 d2 1d 40 7f f5    	vpermt2ps zmm6,zmm28,zmm13
  a198bf:	62 42 0d 40 7f c5    	vpermt2ps zmm24,zmm30,zmm13
  a198c5:	62 31 7c 48 28 c3    	vmovaps zmm8,zmm19
  a198cb:	62 52 1d 40 7f c4    	vpermt2ps zmm8,zmm28,zmm12
  a198d1:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a198d8:	04 
  a198d9:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a198df:	62 52 1d 40 7f cc    	vpermt2ps zmm9,zmm28,zmm12
  a198e5:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0xc0]
  a198ec:	03 
  a198ed:	62 71 7c 48 28 d2    	vmovaps zmm10,zmm2
  a198f3:	62 52 1d 40 7f d4    	vpermt2ps zmm10,zmm28,zmm12
  a198f9:	62 11 7c 48 28 db    	vmovaps zmm11,zmm27
  a198ff:	62 52 1d 40 7f dc    	vpermt2ps zmm11,zmm28,zmm12
  a19905:	62 71 7c 48 28 ec    	vmovaps zmm13,zmm4
  a1990b:	62 52 7d 48 7f e8    	vpermt2ps zmm13,zmm0,zmm8
  a19911:	62 d2 6d 40 7f e0    	vpermt2ps zmm4,zmm18,zmm8
  a19917:	62 71 7c 48 28 f7    	vmovaps zmm14,zmm7
  a1991d:	62 52 7d 48 7f f1    	vpermt2ps zmm14,zmm0,zmm9
  a19923:	62 d2 6d 40 7f f9    	vpermt2ps zmm7,zmm18,zmm9
  a19929:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a1992f:	62 52 7d 48 7f ca    	vpermt2ps zmm9,zmm0,zmm10
  a19935:	62 d2 6d 40 7f ea    	vpermt2ps zmm5,zmm18,zmm10
  a1993b:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a19941:	62 52 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm11
  a19947:	62 d2 6d 40 7f f3    	vpermt2ps zmm6,zmm18,zmm11
  a1994d:	62 c2 0d 40 7f dc    	vpermt2ps zmm19,zmm30,zmm12
  a19953:	62 32 7d 48 7f fb    	vpermt2ps zmm15,zmm0,zmm19
  a19959:	62 d2 0d 40 7f cc    	vpermt2ps zmm1,zmm30,zmm12
  a1995f:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a19965:	62 d2 0d 40 7f d4    	vpermt2ps zmm2,zmm30,zmm12
  a1996b:	62 e2 7d 48 7f c2    	vpermt2ps zmm16,zmm0,zmm2
  a19971:	62 42 0d 40 7f dc    	vpermt2ps zmm27,zmm30,zmm12
  a19977:	62 a1 85 48 14 c0    	vunpcklpd zmm16,zmm15,zmm16
  a1997d:	62 02 7d 48 7f c3    	vpermt2ps zmm24,zmm0,zmm27
  a19983:	62 91 e5 48 14 c0    	vunpcklpd zmm0,zmm3,zmm24
  a19989:	62 51 95 48 14 c1    	vunpcklpd zmm8,zmm13,zmm9
  a1998f:	62 41 95 48 15 e1    	vunpckhpd zmm28,zmm13,zmm9
  a19995:	62 d1 8d 48 14 ca    	vunpcklpd zmm1,zmm14,zmm10
  a1999b:	62 d1 8d 48 15 d2    	vunpckhpd zmm2,zmm14,zmm10
  a199a1:	62 61 dd 48 14 c5    	vunpcklpd zmm24,zmm4,zmm5
  a199a7:	62 61 dd 48 15 f5    	vunpckhpd zmm30,zmm4,zmm5
  a199ad:	62 f1 c5 48 14 ee    	vunpcklpd zmm5,zmm7,zmm6
  a199b3:	62 f1 c5 48 15 f6    	vunpckhpd zmm6,zmm7,zmm6
  a199b9:	62 c1 7c 48 28 d0    	vmovaps zmm18,zmm8
  a199bf:	62 e2 35 40 7f d1    	vpermt2ps zmm18,zmm25,zmm1
  a199c5:	62 72 75 40 7f c1    	vpermt2ps zmm8,zmm17,zmm1
  a199cb:	62 91 7c 48 28 e4    	vmovaps zmm4,zmm28
  a199d1:	62 f2 35 40 7f e2    	vpermt2ps zmm4,zmm25,zmm2
  a199d7:	62 62 75 40 7f e2    	vpermt2ps zmm28,zmm17,zmm2
  a199dd:	62 11 7c 48 28 f0    	vmovaps zmm14,zmm24
  a199e3:	62 72 35 40 7f f5    	vpermt2ps zmm14,zmm25,zmm5
  a199e9:	62 62 75 40 7f c5    	vpermt2ps zmm24,zmm17,zmm5
  a199ef:	62 11 7c 48 28 de    	vmovaps zmm11,zmm30
  a199f5:	62 72 35 40 7f de    	vpermt2ps zmm11,zmm25,zmm6
  a199fb:	62 62 75 40 7f f6    	vpermt2ps zmm30,zmm17,zmm6
  a19a01:	62 b1 7c 48 28 c8    	vmovaps zmm1,zmm16
  a19a07:	62 f2 35 40 7f c8    	vpermt2ps zmm1,zmm25,zmm0
  a19a0d:	62 e2 75 40 7f c0    	vpermt2ps zmm16,zmm17,zmm0
  a19a13:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a19a1a:	62 f1 7c 48 10 51 05 	vmovups zmm2,ZMMWORD PTR [rcx+0x140]
  a19a21:	62 61 04 40 59 d8    	vmulps zmm27,zmm31,zmm0
  a19a27:	62 62 5d 48 bc da    	vfnmadd231ps zmm27,zmm4,zmm2
  a19a2d:	62 f1 5c 48 59 e0    	vmulps zmm4,zmm4,zmm0
  a19a33:	62 f1 7c 48 10 41 10 	vmovups zmm0,ZMMWORD PTR [rcx+0x400]
  a19a3a:	62 92 6d 48 b8 e7    	vfmadd231ps zmm4,zmm2,zmm31
  a19a40:	62 f1 7c 48 10 51 11 	vmovups zmm2,ZMMWORD PTR [rcx+0x440]
  a19a47:	62 f1 5c 40 59 f8    	vmulps zmm7,zmm20,zmm0
  a19a4d:	62 f2 75 48 bc fa    	vfnmadd231ps zmm7,zmm1,zmm2
  a19a53:	62 61 74 48 59 f8    	vmulps zmm31,zmm1,zmm0
  a19a59:	62 f1 7c 48 10 41 08 	vmovups zmm0,ZMMWORD PTR [rcx+0x200]
  a19a60:	62 22 6d 48 b8 fc    	vfmadd231ps zmm31,zmm2,zmm20
  a19a66:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  a19a6d:	62 71 54 40 59 e8    	vmulps zmm13,zmm21,zmm0
  a19a73:	62 72 0d 48 bc e9    	vfnmadd231ps zmm13,zmm14,zmm1
  a19a79:	62 f1 0c 48 59 c0    	vmulps zmm0,zmm14,zmm0
  a19a7f:	62 f1 7c 48 10 51 0c 	vmovups zmm2,ZMMWORD PTR [rcx+0x300]
  a19a86:	62 b2 75 48 b8 c5    	vfmadd231ps zmm0,zmm1,zmm21
  a19a8c:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  a19a93:	62 e1 2c 40 59 e2    	vmulps zmm20,zmm26,zmm2
  a19a99:	62 e2 25 48 bc e1    	vfnmadd231ps zmm20,zmm11,zmm1
  a19a9f:	62 f1 24 48 59 d2    	vmulps zmm2,zmm11,zmm2
  a19aa5:	62 f1 7c 48 10 69 0a 	vmovups zmm5,ZMMWORD PTR [rcx+0x280]
  a19aac:	62 92 75 48 b8 d2    	vfmadd231ps zmm2,zmm1,zmm26
  a19ab2:	62 f1 7c 48 10 49 0b 	vmovups zmm1,ZMMWORD PTR [rcx+0x2c0]
  a19ab9:	62 61 44 40 59 cd    	vmulps zmm25,zmm23,zmm5
  a19abf:	62 62 3d 40 bc c9    	vfnmadd231ps zmm25,zmm24,zmm1
  a19ac5:	62 61 3c 40 59 c5    	vmulps zmm24,zmm24,zmm5
  a19acb:	62 f1 7c 48 10 69 0e 	vmovups zmm5,ZMMWORD PTR [rcx+0x380]
  a19ad2:	62 22 75 48 b8 c7    	vfmadd231ps zmm24,zmm1,zmm23
  a19ad8:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a19adf:	62 e1 4c 40 59 fd    	vmulps zmm23,zmm22,zmm5
  a19ae5:	62 e2 0d 40 bc f9    	vfnmadd231ps zmm23,zmm30,zmm1
  a19aeb:	62 f1 0c 40 59 ed    	vmulps zmm5,zmm30,zmm5
  a19af1:	62 f1 7c 48 10 71 06 	vmovups zmm6,ZMMWORD PTR [rcx+0x180]
  a19af8:	62 b2 75 48 b8 ee    	vfmadd231ps zmm5,zmm1,zmm22
  a19afe:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a19b05:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x40]
  a19b0c:	ff 
  a19b0d:	62 e1 64 48 59 f6    	vmulps zmm22,zmm3,zmm6
  a19b13:	62 e2 1d 40 bc f1    	vfnmadd231ps zmm22,zmm28,zmm1
  a19b19:	62 f1 1c 40 59 f6    	vmulps zmm6,zmm28,zmm6
  a19b1f:	62 71 7c 48 10 49 12 	vmovups zmm9,ZMMWORD PTR [rcx+0x480]
  a19b26:	62 f2 75 48 b8 f3    	vfmadd231ps zmm6,zmm1,zmm3
  a19b2c:	62 f1 7c 48 10 49 13 	vmovups zmm1,ZMMWORD PTR [rcx+0x4c0]
  a19b33:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x80]
  a19b3a:	fe 
  a19b3b:	62 51 64 48 59 d1    	vmulps zmm10,zmm3,zmm9
  a19b41:	62 72 7d 40 bc d1    	vfnmadd231ps zmm10,zmm16,zmm1
  a19b47:	62 51 7c 40 59 c9    	vmulps zmm9,zmm16,zmm9
  a19b4d:	62 71 7c 48 10 59 02 	vmovups zmm11,ZMMWORD PTR [rcx+0x80]
  a19b54:	62 72 75 48 b8 cb    	vfmadd231ps zmm9,zmm1,zmm3
  a19b5a:	62 f1 7c 48 10 49 03 	vmovups zmm1,ZMMWORD PTR [rcx+0xc0]
  a19b61:	62 71 7c 48 10 24 24 	vmovups zmm12,ZMMWORD PTR [rsp]
  a19b68:	62 51 1c 48 59 fb    	vmulps zmm15,zmm12,zmm11
  a19b6e:	62 72 3d 48 bc f9    	vfnmadd231ps zmm15,zmm8,zmm1
  a19b74:	62 d1 3c 48 59 db    	vmulps zmm3,zmm8,zmm11
  a19b7a:	62 d2 75 48 b8 dc    	vfmadd231ps zmm3,zmm1,zmm12
  a19b80:	62 f1 24 40 58 cf    	vaddps zmm1,zmm27,zmm7
  a19b86:	62 11 5c 48 58 e7    	vaddps zmm12,zmm4,zmm31
  a19b8c:	62 81 5c 48 5c c7    	vsubps zmm16,zmm4,zmm31
  a19b92:	62 e1 7c 48 58 da    	vaddps zmm19,zmm0,zmm2
  a19b98:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a19b9e:	62 71 54 48 58 de    	vaddps zmm11,zmm5,zmm6
  a19ba4:	62 f1 54 48 5c d6    	vsubps zmm2,zmm5,zmm6
  a19baa:	62 71 34 48 58 f3    	vaddps zmm14,zmm9,zmm3
  a19bb0:	62 f1 34 48 5c eb    	vsubps zmm5,zmm9,zmm3
  a19bb6:	62 f1 14 40 58 d9    	vaddps zmm3,zmm29,zmm1
  a19bbc:	62 f1 24 40 5c f7    	vsubps zmm6,zmm27,zmm7
  a19bc2:	62 b1 14 48 58 e4    	vaddps zmm4,zmm13,zmm20
  a19bc8:	62 f1 64 48 58 dc    	vaddps zmm3,zmm3,zmm4
  a19bce:	62 31 14 48 5c cc    	vsubps zmm9,zmm13,zmm20
  a19bd4:	62 b1 44 40 58 fe    	vaddps zmm7,zmm23,zmm22
  a19bda:	62 a1 44 40 5c ee    	vsubps zmm21,zmm23,zmm22
  a19be0:	62 c1 2c 48 58 e7    	vaddps zmm20,zmm10,zmm15
  a19be6:	62 c1 2c 48 5c f7    	vsubps zmm22,zmm10,zmm15
  a19bec:	62 e2 7d 48 18 3d f2 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff65baf2]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a19bf3:	ba 65 ff 
  a19bf6:	62 31 7c 48 28 ef    	vmovaps zmm13,zmm23
  a19bfc:	62 12 75 48 a8 ed    	vfmadd213ps zmm13,zmm1,zmm29
  a19c02:	62 62 7d 48 18 15 38 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff65ba38]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a19c09:	ba 65 ff 
  a19c0c:	62 62 2d 40 bc e9    	vfnmadd231ps zmm29,zmm26,zmm1
  a19c12:	62 f1 34 40 58 cf    	vaddps zmm1,zmm25,zmm7
  a19c18:	62 31 74 48 58 c4    	vaddps zmm8,zmm1,zmm20
  a19c1e:	62 12 5d 48 bc ea    	vfnmadd231ps zmm13,zmm4,zmm26
  a19c24:	62 62 45 40 b8 ec    	vfmadd231ps zmm29,zmm23,zmm4
  a19c2a:	62 62 7d 48 18 1d 24 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff65bb24]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a19c31:	bb 65 ff 
  a19c34:	62 91 7c 48 59 e3    	vmulps zmm4,zmm0,zmm27
  a19c3a:	62 62 7d 48 18 25 5c 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff65b75c]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a19c41:	b7 65 ff 
  a19c44:	62 92 7d 40 b8 e4    	vfmadd231ps zmm4,zmm16,zmm28
  a19c4a:	62 91 7c 40 59 cb    	vmulps zmm1,zmm16,zmm27
  a19c50:	62 f2 1d 40 bc c8    	vfnmadd231ps zmm1,zmm28,zmm0
  a19c56:	62 b1 7c 48 28 c7    	vmovaps zmm0,zmm23
  a19c5c:	62 92 45 48 a8 c1    	vfmadd213ps zmm0,zmm7,zmm25
  a19c62:	62 62 2d 40 bc cf    	vfnmadd231ps zmm25,zmm26,zmm7
  a19c68:	62 b1 1c 48 58 fa    	vaddps zmm7,zmm12,zmm18
  a19c6e:	62 f1 64 40 58 ff    	vaddps zmm7,zmm19,zmm7
  a19c74:	62 92 5d 40 bc c2    	vfnmadd231ps zmm0,zmm20,zmm26
  a19c7a:	62 22 45 40 b8 cc    	vfmadd231ps zmm25,zmm23,zmm20
  a19c80:	62 11 54 48 59 d3    	vmulps zmm10,zmm5,zmm27
  a19c86:	62 12 6d 48 b8 d4    	vfmadd231ps zmm10,zmm2,zmm28
  a19c8c:	62 91 6c 48 59 d3    	vmulps zmm2,zmm2,zmm27
  a19c92:	62 f2 1d 40 bc d5    	vfnmadd231ps zmm2,zmm28,zmm5
  a19c98:	62 b1 7c 48 28 ef    	vmovaps zmm5,zmm23
  a19c9e:	62 b2 1d 48 a8 ea    	vfmadd213ps zmm5,zmm12,zmm18
  a19ca4:	62 c2 2d 40 bc d4    	vfnmadd231ps zmm18,zmm26,zmm12
  a19caa:	62 51 3c 40 58 e3    	vaddps zmm12,zmm24,zmm11
  a19cb0:	62 92 65 40 bc ea    	vfnmadd231ps zmm5,zmm19,zmm26
  a19cb6:	62 a2 45 40 b8 d3    	vfmadd231ps zmm18,zmm23,zmm19
  a19cbc:	62 11 34 48 59 fb    	vmulps zmm15,zmm9,zmm27
  a19cc2:	62 12 4d 48 b8 fc    	vfmadd231ps zmm15,zmm6,zmm28
  a19cc8:	62 91 4c 48 59 f3    	vmulps zmm6,zmm6,zmm27
  a19cce:	62 d2 1d 40 bc f1    	vfnmadd231ps zmm6,zmm28,zmm9
  a19cd4:	62 31 7c 48 28 cf    	vmovaps zmm9,zmm23
  a19cda:	62 12 25 48 a8 c8    	vfmadd213ps zmm9,zmm11,zmm24
  a19ce0:	62 42 2d 40 bc c3    	vfnmadd231ps zmm24,zmm26,zmm11
  a19ce6:	62 c1 1c 48 58 e6    	vaddps zmm20,zmm12,zmm14
  a19cec:	62 12 0d 48 bc ca    	vfnmadd231ps zmm9,zmm14,zmm26
  a19cf2:	62 42 45 40 b8 c6    	vfmadd231ps zmm24,zmm23,zmm14
  a19cf8:	62 11 4c 40 59 db    	vmulps zmm11,zmm22,zmm27
  a19cfe:	62 12 55 40 b8 dc    	vfmadd231ps zmm11,zmm21,zmm28
  a19d04:	62 11 54 40 59 e3    	vmulps zmm12,zmm21,zmm27
  a19d0a:	62 32 1d 40 bc e6    	vfnmadd231ps zmm12,zmm28,zmm22
  a19d10:	62 71 14 40 58 f1    	vaddps zmm14,zmm29,zmm1
  a19d16:	62 f1 14 40 5c c9    	vsubps zmm1,zmm29,zmm1
  a19d1c:	62 e1 34 40 58 c2    	vaddps zmm16,zmm25,zmm2
  a19d22:	62 f1 34 40 5c d2    	vsubps zmm2,zmm25,zmm2
  a19d28:	62 e1 6c 40 5c ee    	vsubps zmm21,zmm18,zmm6
  a19d2e:	62 b1 4c 48 58 f2    	vaddps zmm6,zmm6,zmm18
  a19d34:	62 c1 3c 40 5c d4    	vsubps zmm18,zmm24,zmm12
  a19d3a:	62 c1 3c 40 58 f4    	vaddps zmm22,zmm24,zmm12
  a19d40:	62 71 14 48 58 e4    	vaddps zmm12,zmm13,zmm4
  a19d46:	62 71 14 48 5c ec    	vsubps zmm13,zmm13,zmm4
  a19d4c:	62 d1 7c 48 58 e2    	vaddps zmm4,zmm0,zmm10
  a19d52:	62 d1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm10
  a19d58:	62 51 54 48 5c d7    	vsubps zmm10,zmm5,zmm15
  a19d5e:	62 f1 04 48 58 ed    	vaddps zmm5,zmm15,zmm5
  a19d64:	62 51 34 48 5c fb    	vsubps zmm15,zmm9,zmm11
  a19d6a:	62 51 34 48 58 cb    	vaddps zmm9,zmm9,zmm11
  a19d70:	62 e1 1c 48 5c fc    	vsubps zmm23,zmm12,zmm4
  a19d76:	62 e1 1c 48 58 cc    	vaddps zmm17,zmm12,zmm4
  a19d7c:	62 41 2c 48 5c c7    	vsubps zmm24,zmm10,zmm15
  a19d82:	62 c1 2c 48 58 df    	vaddps zmm19,zmm10,zmm15
  a19d88:	62 31 0c 48 58 d0    	vaddps zmm10,zmm14,zmm16
  a19d8e:	62 b1 0c 48 5c e0    	vsubps zmm4,zmm14,zmm16
  a19d94:	62 31 54 40 58 fa    	vaddps zmm15,zmm21,zmm18
  a19d9a:	62 a1 54 40 5c d2    	vsubps zmm18,zmm21,zmm18
  a19da0:	62 e1 74 48 5c c2    	vsubps zmm16,zmm1,zmm2
  a19da6:	62 71 74 48 58 e2    	vaddps zmm12,zmm1,zmm2
  a19dac:	62 b1 4c 48 5c ce    	vsubps zmm1,zmm6,zmm22
  a19db2:	62 31 4c 48 58 f6    	vaddps zmm14,zmm6,zmm22
  a19db8:	62 f1 14 48 58 d0    	vaddps zmm2,zmm13,zmm0
  a19dbe:	62 71 14 48 5c d8    	vsubps zmm11,zmm13,zmm0
  a19dc4:	62 d1 54 48 58 c1    	vaddps zmm0,zmm5,zmm9
  a19dca:	62 51 54 48 5c e9    	vsubps zmm13,zmm5,zmm9
  a19dd0:	62 b1 44 48 5c ec    	vsubps zmm5,zmm7,zmm20
  a19dd6:	62 b1 44 48 58 f4    	vaddps zmm6,zmm7,zmm20
  a19ddc:	62 d1 64 48 5c f8    	vsubps zmm7,zmm3,zmm8
  a19de2:	62 d1 64 48 58 d8    	vaddps zmm3,zmm3,zmm8
  a19de8:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a19dee:	c5 7c 28 0d 4a ce 65 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff65ce4a]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a19df5:	ff 
  a19df6:	62 72 35 48 7f c3    	vpermt2ps zmm8,zmm9,zmm3
  a19dfc:	62 e1 7c 48 28 25 ba 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff675aba]        # 8f8c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cd70>
  a19e03:	5a 67 ff 
  a19e06:	62 f2 5d 40 7f f3    	vpermt2ps zmm6,zmm20,zmm3
  a19e0c:	62 f1 7c 48 11 34 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm6
  a19e13:	c5 7c 11 44 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm8
  a19e19:	62 91 7c 48 28 d8    	vmovaps zmm3,zmm24
  a19e1f:	62 b2 35 48 7f df    	vpermt2ps zmm3,zmm9,zmm23
  a19e25:	62 22 5d 40 7f c7    	vpermt2ps zmm24,zmm20,zmm23
  a19e2b:	62 61 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x60],zmm24
  a19e32:	60 00 00 00 
  a19e36:	c5 fc 11 9c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm3
  a19e3d:	00 00 
  a19e3f:	62 d1 7c 48 28 df    	vmovaps zmm3,zmm15
  a19e45:	62 d2 35 48 7f da    	vpermt2ps zmm3,zmm9,zmm10
  a19e4b:	62 52 5d 40 7f fa    	vpermt2ps zmm15,zmm20,zmm10
  a19e51:	62 71 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm15
  a19e58:	03 
  a19e59:	c5 fc 11 9c 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm3
  a19e60:	00 00 
  a19e62:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a19e68:	62 b2 35 48 7f d8    	vpermt2ps zmm3,zmm9,zmm16
  a19e6e:	62 b2 5d 40 7f c8    	vpermt2ps zmm1,zmm20,zmm16
  a19e74:	62 f1 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x120],zmm1
  a19e7b:	20 01 00 00 
  a19e7f:	c5 fc 11 9c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm3
  a19e86:	00 00 
  a19e88:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a19e8e:	62 f2 35 48 7f ca    	vpermt2ps zmm1,zmm9,zmm2
  a19e94:	62 f2 5d 40 7f c2    	vpermt2ps zmm0,zmm20,zmm2
  a19e9a:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm0
  a19ea1:	06 
  a19ea2:	c5 fc 11 8c 16 c0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm1
  a19ea9:	00 00 
  a19eab:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a19eb1:	62 f2 35 48 7f c7    	vpermt2ps zmm0,zmm9,zmm7
  a19eb7:	62 f2 5d 40 7f ef    	vpermt2ps zmm5,zmm20,zmm7
  a19ebd:	62 f1 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm5
  a19ec4:	e0 01 00 00 
  a19ec8:	c5 fc 11 84 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm0
  a19ecf:	00 00 
  a19ed1:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a19ed7:	62 b2 35 48 7f c1    	vpermt2ps zmm0,zmm9,zmm17
  a19edd:	62 a2 5d 40 7f d9    	vpermt2ps zmm19,zmm20,zmm17
  a19ee3:	62 e1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm19
  a19eea:	09 
  a19eeb:	c5 fc 11 84 16 80 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x280],ymm0
  a19ef2:	00 00 
  a19ef4:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a19efa:	62 f2 35 48 7f c4    	vpermt2ps zmm0,zmm9,zmm4
  a19f00:	62 e2 5d 40 7f d4    	vpermt2ps zmm18,zmm20,zmm4
  a19f06:	62 e1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2a0],zmm18
  a19f0d:	a0 02 00 00 
  a19f11:	c5 fc 11 84 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm0
  a19f18:	00 00 
  a19f1a:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a19f20:	62 d2 35 48 7f c4    	vpermt2ps zmm0,zmm9,zmm12
  a19f26:	62 52 5d 40 7f f4    	vpermt2ps zmm14,zmm20,zmm12
  a19f2c:	62 71 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x300],zmm14
  a19f33:	0c 
  a19f34:	c5 fc 11 84 16 40 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x340],ymm0
  a19f3b:	00 00 
  a19f3d:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a19f43:	62 d2 35 48 7f c3    	vpermt2ps zmm0,zmm9,zmm11
  a19f49:	62 52 5d 40 7f eb    	vpermt2ps zmm13,zmm20,zmm11
  a19f4f:	62 71 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x360],zmm13
  a19f56:	60 03 00 00 
  a19f5a:	c5 fc 11 84 16 a0 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x3a0],ymm0
  a19f61:	00 00 
  a19f63:	48 81 c2 c0 03 00 00 	add    rdx,0x3c0
  a19f6a:	48 39 d0             	cmp    rax,rdx
  a19f6d:	0f 85 5d f2 ff ff    	jne    a191d0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  a19f73:	48 81 c4 88 01 00 00 	add    rsp,0x188
  a19f7a:	c5 f8 77             	vzeroupper
  a19f7d:	c3                   	ret
