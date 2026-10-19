
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a62280 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a62280:	55                   	push   rbp
  a62281:	48 89 e5             	mov    rbp,rsp
  a62284:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a62288:	48 81 ec 80 02 00 00 	sub    rsp,0x280
  a6228f:	c6 84 24 00 02 00 00 	mov    BYTE PTR [rsp+0x200],0x0
  a62296:	00 
  a62297:	48 8d 84 24 00 02 00 	lea    rax,[rsp+0x200]
  a6229e:	00 
  a6229f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a622a4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a622a9:	c5 fc 10 2f          	vmovups ymm5,YMMWORD PTR [rdi]
  a622ad:	c5 fc 10 47 20       	vmovups ymm0,YMMWORD PTR [rdi+0x20]
  a622b2:	c5 7c 10 47 40       	vmovups ymm8,YMMWORD PTR [rdi+0x40]
  a622b7:	c5 fc 10 4f 60       	vmovups ymm1,YMMWORD PTR [rdi+0x60]
  a622bc:	62 71 7c 48 28 0d 3a 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff63193a]        # 93c00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x210b0>
  a622c3:	19 63 ff 
  a622c6:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a622ca:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a622d0:	62 f2 35 48 7f d4    	vpermt2ps zmm2,zmm9,zmm4
  a622d6:	62 f1 7c 48 28 1d 60 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff631960]        # 93c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x210f0>
  a622dd:	19 63 ff 
  a622e0:	62 f2 65 48 7f ec    	vpermt2ps zmm5,zmm3,zmm4
  a622e6:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a622ec:	62 72 35 48 7f f4    	vpermt2ps zmm14,zmm9,zmm4
  a622f2:	62 f2 65 48 7f c4    	vpermt2ps zmm0,zmm3,zmm4
  a622f8:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a622fe:	62 f2 35 48 7f fc    	vpermt2ps zmm7,zmm9,zmm4
  a62304:	62 72 65 48 7f c4    	vpermt2ps zmm8,zmm3,zmm4
  a6230a:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  a62310:	62 72 35 48 7f e4    	vpermt2ps zmm12,zmm9,zmm4
  a62316:	62 f2 65 48 7f cc    	vpermt2ps zmm1,zmm3,zmm4
  a6231c:	62 e1 7c 28 10 4f 04 	vmovups ymm17,YMMWORD PTR [rdi+0x80]
  a62323:	62 31 7c 48 28 e9    	vmovaps zmm13,zmm17
  a62329:	62 72 35 48 7f ec    	vpermt2ps zmm13,zmm9,zmm4
  a6232f:	62 e2 65 48 7f cc    	vpermt2ps zmm17,zmm3,zmm4
  a62335:	c5 7c 10 97 a0 00 00 	vmovups ymm10,YMMWORD PTR [rdi+0xa0]
  a6233c:	00 
  a6233d:	62 c1 7c 48 28 da    	vmovaps zmm19,zmm10
  a62343:	62 e2 35 48 7f dc    	vpermt2ps zmm19,zmm9,zmm4
  a62349:	62 72 65 48 7f d4    	vpermt2ps zmm10,zmm3,zmm4
  a6234f:	62 e1 7c 28 10 67 06 	vmovups ymm20,YMMWORD PTR [rdi+0xc0]
  a62356:	62 31 7c 48 28 dc    	vmovaps zmm11,zmm20
  a6235c:	62 72 35 48 7f dc    	vpermt2ps zmm11,zmm9,zmm4
  a62362:	62 e2 65 48 7f e4    	vpermt2ps zmm20,zmm3,zmm4
  a62368:	62 e1 7c 28 10 47 07 	vmovups ymm16,YMMWORD PTR [rdi+0xe0]
  a6236f:	62 a1 7c 48 28 f0    	vmovaps zmm22,zmm16
  a62375:	62 e2 35 48 7f f4    	vpermt2ps zmm22,zmm9,zmm4
  a6237b:	62 e2 65 48 7f c4    	vpermt2ps zmm16,zmm3,zmm4
  a62381:	62 61 7c 28 10 47 08 	vmovups ymm24,YMMWORD PTR [rdi+0x100]
  a62388:	62 81 7c 48 28 f8    	vmovaps zmm23,zmm24
  a6238e:	62 e2 35 48 7f fc    	vpermt2ps zmm23,zmm9,zmm4
  a62394:	62 62 65 48 7f c4    	vpermt2ps zmm24,zmm3,zmm4
  a6239a:	c5 7c 10 bf 20 01 00 	vmovups ymm15,YMMWORD PTR [rdi+0x120]
  a623a1:	00 
  a623a2:	62 41 7c 48 28 d7    	vmovaps zmm26,zmm15
  a623a8:	62 62 35 48 7f d4    	vpermt2ps zmm26,zmm9,zmm4
  a623ae:	62 72 65 48 7f fc    	vpermt2ps zmm15,zmm3,zmm4
  a623b4:	62 61 7c 28 10 4f 0a 	vmovups ymm25,YMMWORD PTR [rdi+0x140]
  a623bb:	62 01 7c 48 28 d9    	vmovaps zmm27,zmm25
  a623c1:	62 62 35 48 7f dc    	vpermt2ps zmm27,zmm9,zmm4
  a623c7:	62 62 65 48 7f cc    	vpermt2ps zmm25,zmm3,zmm4
  a623cd:	62 61 7c 28 10 67 0b 	vmovups ymm28,YMMWORD PTR [rdi+0x160]
  a623d4:	62 72 1d 40 77 cc    	vpermi2ps zmm9,zmm28,zmm4
  a623da:	62 62 65 48 7f e4    	vpermt2ps zmm28,zmm3,zmm4
  a623e0:	62 a1 54 48 58 d4    	vaddps zmm18,zmm5,zmm20
  a623e6:	62 c1 74 48 58 ef    	vaddps zmm21,zmm1,zmm15
  a623ec:	62 b1 6c 40 58 dd    	vaddps zmm3,zmm18,zmm21
  a623f2:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a623f9:	02 
  a623fa:	62 01 74 40 58 e9    	vaddps zmm29,zmm17,zmm25
  a62400:	62 61 7c 40 58 f0    	vaddps zmm30,zmm16,zmm0
  a62406:	62 91 14 40 58 de    	vaddps zmm3,zmm29,zmm30
  a6240c:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a62413:	01 
  a62414:	62 41 3c 40 58 f8    	vaddps zmm31,zmm24,zmm8
  a6241a:	62 81 74 40 5c c9    	vsubps zmm17,zmm17,zmm25
  a62420:	62 d1 4c 40 58 de    	vaddps zmm3,zmm22,zmm14
  a62426:	62 c1 4c 40 5c f6    	vsubps zmm22,zmm22,zmm14
  a6242c:	62 51 1c 40 58 f2    	vaddps zmm14,zmm28,zmm10
  a62432:	62 41 3c 40 5c c0    	vsubps zmm24,zmm24,zmm8
  a62438:	62 31 34 48 58 c3    	vaddps zmm8,zmm9,zmm19
  a6243e:	62 21 34 48 5c cb    	vsubps zmm25,zmm9,zmm19
  a62444:	62 d1 6c 48 58 f3    	vaddps zmm6,zmm2,zmm11
  a6244a:	62 b1 54 48 5c ec    	vsubps zmm5,zmm5,zmm20
  a62450:	62 81 1c 48 58 e2    	vaddps zmm20,zmm12,zmm26
  a62456:	62 01 1c 48 5c d2    	vsubps zmm26,zmm12,zmm26
  a6245c:	62 81 14 48 58 db    	vaddps zmm19,zmm13,zmm27
  a62462:	62 01 14 48 5c db    	vsubps zmm27,zmm13,zmm27
  a62468:	62 71 44 40 58 ef    	vaddps zmm13,zmm23,zmm7
  a6246e:	62 b1 7c 48 5c c0    	vsubps zmm0,zmm0,zmm16
  a62474:	62 11 7c 48 58 cb    	vaddps zmm9,zmm0,zmm27
  a6247a:	62 f1 44 40 5c ff    	vsubps zmm7,zmm23,zmm7
  a62480:	62 11 2c 48 5c d4    	vsubps zmm10,zmm10,zmm28
  a62486:	62 71 2c 48 58 e7    	vaddps zmm12,zmm10,zmm7
  a6248c:	62 c1 34 48 5c c4    	vsubps zmm16,zmm9,zmm12
  a62492:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm16
  a62499:	07 
  a6249a:	62 51 34 48 58 cc    	vaddps zmm9,zmm9,zmm12
  a624a0:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm9
  a624a7:	06 
  a624a8:	62 31 74 40 58 ce    	vaddps zmm9,zmm17,zmm22
  a624ae:	62 c1 6c 48 5c c3    	vsubps zmm16,zmm2,zmm11
  a624b4:	62 91 3c 40 58 d1    	vaddps zmm2,zmm24,zmm25
  a624ba:	62 71 04 48 5c e1    	vsubps zmm12,zmm15,zmm1
  a624c0:	62 f1 34 48 58 ca    	vaddps zmm1,zmm9,zmm2
  a624c6:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a624cd:	04 
  a624ce:	62 f1 34 48 5c ca    	vsubps zmm1,zmm9,zmm2
  a624d4:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a624db:	05 
  a624dc:	62 c1 04 40 58 fe    	vaddps zmm23,zmm31,zmm14
  a624e2:	62 91 14 40 5c ce    	vsubps zmm1,zmm29,zmm30
  a624e8:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x40]
  a624ef:	01 
  a624f0:	62 31 04 48 58 cf    	vaddps zmm9,zmm15,zmm23
  a624f6:	62 41 04 40 5c f6    	vsubps zmm30,zmm31,zmm14
  a624fc:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x80]
  a62503:	02 
  a62504:	62 41 6c 48 58 e1    	vaddps zmm28,zmm2,zmm9
  a6250a:	62 31 6c 40 5c f5    	vsubps zmm14,zmm18,zmm21
  a62510:	62 61 64 40 58 fb    	vaddps zmm31,zmm19,zmm3
  a62516:	62 f1 64 40 5c db    	vsubps zmm3,zmm19,zmm3
  a6251c:	62 c1 14 48 58 e8    	vaddps zmm21,zmm13,zmm8
  a62522:	62 51 14 48 5c c0    	vsubps zmm8,zmm13,zmm8
  a62528:	62 51 64 48 5c d8    	vsubps zmm11,zmm3,zmm8
  a6252e:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm11
  a62535:	03 
  a62536:	62 c1 64 48 58 d8    	vaddps zmm19,zmm3,zmm8
  a6253c:	62 b1 4c 48 58 dc    	vaddps zmm3,zmm6,zmm20
  a62542:	62 a1 4c 48 5c e4    	vsubps zmm20,zmm6,zmm20
  a62548:	62 11 74 48 58 de    	vaddps zmm11,zmm1,zmm30
  a6254e:	62 01 74 48 5c f6    	vsubps zmm30,zmm1,zmm30
  a62554:	62 11 54 48 58 ea    	vaddps zmm13,zmm5,zmm26
  a6255a:	62 91 54 48 5c ea    	vsubps zmm5,zmm5,zmm26
  a62560:	62 a1 04 40 58 d5    	vaddps zmm18,zmm31,zmm21
  a62566:	62 a1 74 40 5c f6    	vsubps zmm22,zmm17,zmm22
  a6256c:	62 31 64 48 58 c2    	vaddps zmm8,zmm3,zmm18
  a62572:	62 01 3c 40 5c c1    	vsubps zmm24,zmm24,zmm25
  a62578:	62 21 1c 48 58 e8    	vaddps zmm29,zmm12,zmm16
  a6257e:	62 d1 7c 40 5c f4    	vsubps zmm6,zmm16,zmm12
  a62584:	62 e2 7d 48 18 05 d2 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff612ed2]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a6258b:	2e 61 ff 
  a6258e:	62 71 24 40 5c e0    	vsubps zmm12,zmm27,zmm0
  a62594:	62 21 7c 48 28 c8    	vmovaps zmm25,zmm16
  a6259a:	62 d1 44 48 5c fa    	vsubps zmm7,zmm7,zmm10
  a625a0:	62 21 7c 48 28 d0    	vmovaps zmm26,zmm16
  a625a6:	62 72 7d 40 ac ca    	vfnmadd213ps zmm9,zmm16,zmm2
  a625ac:	62 01 4c 40 58 d8    	vaddps zmm27,zmm22,zmm24
  a625b2:	62 e2 7d 40 ac d3    	vfnmadd213ps zmm18,zmm16,zmm3
  a625b8:	62 11 54 48 58 d3    	vaddps zmm10,zmm5,zmm27
  a625be:	62 62 7d 40 ac dd    	vfnmadd213ps zmm27,zmm16,zmm5
  a625c4:	62 b1 7c 48 28 e8    	vmovaps zmm5,zmm16
  a625ca:	62 b1 7c 48 28 c8    	vmovaps zmm1,zmm16
  a625d0:	62 f1 1c 48 58 df    	vaddps zmm3,zmm12,zmm7
  a625d6:	62 e2 65 48 ac c6    	vfnmadd213ps zmm16,zmm3,zmm6
  a625dc:	62 e1 4c 48 58 cb    	vaddps zmm17,zmm6,zmm3
  a625e2:	62 21 04 40 5c fd    	vsubps zmm31,zmm31,zmm21
  a625e8:	62 a1 04 48 5c ef    	vsubps zmm21,zmm15,zmm23
  a625ee:	62 f2 7d 48 18 1d dc 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff612cdc]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a625f5:	2c 61 ff 
  a625f8:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x100]
  a625ff:	04 
  a62600:	62 42 6d 48 ac cd    	vfnmadd213ps zmm25,zmm2,zmm13
  a62606:	62 f1 64 48 59 44 24 	vmulps zmm0,zmm3,ZMMWORD PTR [rsp+0x1c0]
  a6260d:	07 
  a6260e:	62 11 7c 48 58 f9    	vaddps zmm15,zmm0,zmm25
  a62614:	62 f1 34 40 5c f0    	vsubps zmm6,zmm25,zmm0
  a6261a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a62621:	06 
  a62622:	62 02 7d 48 ac d5    	vfnmadd213ps zmm26,zmm0,zmm29
  a62628:	62 e1 64 48 59 7c 24 	vmulps zmm23,zmm3,ZMMWORD PTR [rsp+0x140]
  a6262f:	05 
  a62630:	62 21 2c 40 5c cf    	vsubps zmm25,zmm26,zmm23
  a62636:	62 a1 2c 40 58 ff    	vaddps zmm23,zmm26,zmm23
  a6263c:	62 d2 25 48 ac ee    	vfnmadd213ps zmm5,zmm11,zmm14
  a62642:	62 41 0c 48 58 d3    	vaddps zmm26,zmm14,zmm11
  a62648:	62 b2 65 40 ac cc    	vfnmadd213ps zmm1,zmm19,zmm20
  a6264e:	62 a1 5c 40 58 db    	vaddps zmm19,zmm20,zmm19
  a62654:	62 f1 1c 48 5c ff    	vsubps zmm7,zmm12,zmm7
  a6265a:	62 11 4c 40 5c d8    	vsubps zmm11,zmm22,zmm24
  a62660:	62 71 64 48 59 64 24 	vmulps zmm12,zmm3,ZMMWORD PTR [rsp+0xc0]
  a62667:	03 
  a62668:	62 71 0c 40 59 f3    	vmulps zmm14,zmm30,zmm3
  a6266e:	62 e1 04 40 59 e3    	vmulps zmm20,zmm31,zmm3
  a62674:	62 e1 54 40 59 eb    	vmulps zmm21,zmm21,zmm3
  a6267a:	62 e1 44 48 59 f3    	vmulps zmm22,zmm7,zmm3
  a62680:	62 f1 24 48 59 db    	vmulps zmm3,zmm11,zmm3
  a62686:	62 21 34 48 58 c4    	vaddps zmm24,zmm9,zmm20
  a6268c:	62 a1 34 48 5c e4    	vsubps zmm20,zmm9,zmm20
  a62692:	62 31 6c 40 5c cd    	vsubps zmm9,zmm18,zmm21
  a62698:	62 a1 54 40 58 d2    	vaddps zmm18,zmm21,zmm18
  a6269e:	62 71 14 48 58 ea    	vaddps zmm13,zmm13,zmm2
  a626a4:	62 61 14 40 58 e8    	vaddps zmm29,zmm29,zmm0
  a626aa:	62 c1 54 48 5c ec    	vsubps zmm21,zmm5,zmm12
  a626b0:	62 d1 54 48 58 ec    	vaddps zmm5,zmm5,zmm12
  a626b6:	62 f1 0c 48 58 f9    	vaddps zmm7,zmm14,zmm1
  a626bc:	62 d1 74 48 5c ce    	vsubps zmm1,zmm1,zmm14
  a626c2:	62 11 4c 40 58 e3    	vaddps zmm12,zmm22,zmm27
  a626c8:	62 31 24 40 5c f6    	vsubps zmm14,zmm27,zmm22
  a626ce:	62 71 7c 40 5c db    	vsubps zmm11,zmm16,zmm3
  a626d4:	62 f1 7c 40 58 db    	vaddps zmm3,zmm16,zmm3
  a626da:	62 e1 7c 48 28 05 9c 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff66489c]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a626e1:	48 66 ff 
  a626e4:	62 22 7d 40 7f e4    	vpermt2ps zmm28,zmm16,zmm20
  a626ea:	62 52 7d 40 7f fd    	vpermt2ps zmm15,zmm16,zmm13
  a626f0:	62 e2 7d 40 7f ed    	vpermt2ps zmm21,zmm16,zmm5
  a626f6:	62 52 7d 40 7f d6    	vpermt2ps zmm10,zmm16,zmm14
  a626fc:	62 62 7d 40 7f c4    	vpermt2ps zmm24,zmm16,zmm4
  a62702:	62 71 7c 48 28 2d f4 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6647f4]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a62709:	47 66 ff 
  a6270c:	62 02 15 48 7f e0    	vpermt2ps zmm28,zmm13,zmm24
  a62712:	62 f2 7d 40 7f f4    	vpermt2ps zmm6,zmm16,zmm4
  a62718:	62 72 15 48 7f fe    	vpermt2ps zmm15,zmm13,zmm6
  a6271e:	62 62 7d 40 7f d4    	vpermt2ps zmm26,zmm16,zmm4
  a62724:	62 82 15 48 7f ea    	vpermt2ps zmm21,zmm13,zmm26
  a6272a:	62 72 7d 40 7f e4    	vpermt2ps zmm12,zmm16,zmm4
  a62730:	62 52 15 48 7f d4    	vpermt2ps zmm10,zmm13,zmm12
  a62736:	62 b1 9d 40 14 ed    	vunpcklpd zmm5,zmm28,zmm21
  a6273c:	62 b1 9d 40 15 d5    	vunpckhpd zmm2,zmm28,zmm21
  a62742:	62 d1 85 48 14 c2    	vunpcklpd zmm0,zmm15,zmm10
  a62748:	62 51 85 48 15 d2    	vunpckhpd zmm10,zmm15,zmm10
  a6274e:	62 32 7d 40 7f c2    	vpermt2ps zmm8,zmm16,zmm18
  a62754:	62 02 7d 40 7f cd    	vpermt2ps zmm25,zmm16,zmm29
  a6275a:	62 f2 7d 40 7f f9    	vpermt2ps zmm7,zmm16,zmm1
  a62760:	62 e2 7d 40 7f cb    	vpermt2ps zmm17,zmm16,zmm3
  a62766:	62 f1 7c 48 28 0d 90 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff664690]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a6276d:	46 66 ff 
  a62770:	62 72 7d 40 7f cc    	vpermt2ps zmm9,zmm16,zmm4
  a62776:	62 e2 7d 40 7f fc    	vpermt2ps zmm23,zmm16,zmm4
  a6277c:	62 e2 7d 40 7f dc    	vpermt2ps zmm19,zmm16,zmm4
  a62782:	62 72 7d 40 7f dc    	vpermt2ps zmm11,zmm16,zmm4
  a62788:	62 f1 7c 48 28 dd    	vmovaps zmm3,zmm5
  a6278e:	62 f2 75 48 7f d8    	vpermt2ps zmm3,zmm1,zmm0
  a62794:	62 f1 7c 48 28 25 a2 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6646a2]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a6279b:	46 66 ff 
  a6279e:	62 f2 5d 48 7f e8    	vpermt2ps zmm5,zmm4,zmm0
  a627a4:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a627aa:	62 d2 75 48 7f c2    	vpermt2ps zmm0,zmm1,zmm10
  a627b0:	62 d2 5d 48 7f d2    	vpermt2ps zmm2,zmm4,zmm10
  a627b6:	62 52 15 48 7f c1    	vpermt2ps zmm8,zmm13,zmm9
  a627bc:	62 22 15 48 7f cf    	vpermt2ps zmm25,zmm13,zmm23
  a627c2:	62 b2 15 48 7f fb    	vpermt2ps zmm7,zmm13,zmm19
  a627c8:	62 c2 15 48 7f cb    	vpermt2ps zmm17,zmm13,zmm11
  a627ce:	62 71 bd 48 14 cf    	vunpcklpd zmm9,zmm8,zmm7
  a627d4:	62 f1 bd 48 15 ff    	vunpckhpd zmm7,zmm8,zmm7
  a627da:	62 31 b5 40 14 c1    	vunpcklpd zmm8,zmm25,zmm17
  a627e0:	62 b1 b5 40 15 f1    	vunpckhpd zmm6,zmm25,zmm17
  a627e6:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a627ec:	62 52 75 48 7f d0    	vpermt2ps zmm10,zmm1,zmm8
  a627f2:	62 52 5d 48 7f c8    	vpermt2ps zmm9,zmm4,zmm8
  a627f8:	62 f2 45 48 77 ce    	vpermi2ps zmm1,zmm7,zmm6
  a627fe:	62 f2 5d 48 7f fe    	vpermt2ps zmm7,zmm4,zmm6
  a62804:	62 f1 7c 48 10 62 02 	vmovups zmm4,ZMMWORD PTR [rdx+0x80]
  a6280b:	62 f1 7c 48 10 72 03 	vmovups zmm6,ZMMWORD PTR [rdx+0xc0]
  a62812:	62 71 7c 48 10 42 04 	vmovups zmm8,ZMMWORD PTR [rdx+0x100]
  a62819:	62 71 7c 48 10 5a 05 	vmovups zmm11,ZMMWORD PTR [rdx+0x140]
  a62820:	62 51 7c 48 59 e0    	vmulps zmm12,zmm0,zmm8
  a62826:	62 52 75 48 bc e3    	vfnmadd231ps zmm12,zmm1,zmm11
  a6282c:	62 d1 74 48 59 c8    	vmulps zmm1,zmm1,zmm8
  a62832:	62 71 7c 48 10 42 06 	vmovups zmm8,ZMMWORD PTR [rdx+0x180]
  a62839:	62 f2 25 48 b8 c8    	vfmadd231ps zmm1,zmm11,zmm0
  a6283f:	62 f1 7c 48 10 42 07 	vmovups zmm0,ZMMWORD PTR [rdx+0x1c0]
  a62846:	62 71 54 48 59 dc    	vmulps zmm11,zmm5,zmm4
  a6284c:	62 72 35 48 bc de    	vfnmadd231ps zmm11,zmm9,zmm6
  a62852:	62 f1 34 48 59 e4    	vmulps zmm4,zmm9,zmm4
  a62858:	62 51 64 48 58 cc    	vaddps zmm9,zmm3,zmm12
  a6285e:	62 f2 4d 48 b8 e5    	vfmadd231ps zmm4,zmm6,zmm5
  a62864:	62 d1 6c 48 59 e8    	vmulps zmm5,zmm2,zmm8
  a6286a:	62 f2 45 48 bc e8    	vfnmadd231ps zmm5,zmm7,zmm0
  a62870:	62 f1 24 48 58 f5    	vaddps zmm6,zmm11,zmm5
  a62876:	62 d1 44 48 59 f8    	vmulps zmm7,zmm7,zmm8
  a6287c:	62 51 74 48 58 c2    	vaddps zmm8,zmm1,zmm10
  a62882:	62 f2 7d 48 b8 fa    	vfmadd231ps zmm7,zmm0,zmm2
  a62888:	62 f1 5c 48 58 c7    	vaddps zmm0,zmm4,zmm7
  a6288e:	62 d1 64 48 5c d4    	vsubps zmm2,zmm3,zmm12
  a62894:	62 f1 5c 48 5c df    	vsubps zmm3,zmm4,zmm7
  a6289a:	62 f1 6c 48 58 e3    	vaddps zmm4,zmm2,zmm3
  a628a0:	c5 fc 28 3d 98 43 61 	vmovaps ymm7,YMMWORD PTR [rip+0xffffffffff614398]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a628a7:	ff 
  a628a8:	62 f1 2c 48 5c c9    	vsubps zmm1,zmm10,zmm1
  a628ae:	62 d1 54 48 5c eb    	vsubps zmm5,zmm5,zmm11
  a628b4:	62 71 74 48 58 d5    	vaddps zmm10,zmm1,zmm5
  a628ba:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a628c0:	62 72 45 48 7f dc    	vpermt2ps zmm11,zmm7,zmm4
  a628c6:	62 71 34 48 5c e6    	vsubps zmm12,zmm9,zmm6
  a628cc:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a628d2:	62 f1 3c 48 5c d8    	vsubps zmm3,zmm8,zmm0
  a628d8:	62 f1 74 48 5c cd    	vsubps zmm1,zmm1,zmm5
  a628de:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a628e4:	62 d2 45 48 7f ec    	vpermt2ps zmm5,zmm7,zmm12
  a628ea:	62 f1 3c 48 58 c0    	vaddps zmm0,zmm8,zmm0
  a628f0:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a628f6:	62 72 45 48 7f c2    	vpermt2ps zmm8,zmm7,zmm2
  a628fc:	62 f1 34 48 58 f6    	vaddps zmm6,zmm9,zmm6
  a62902:	62 f2 7d 48 77 fe    	vpermi2ps zmm7,zmm0,zmm6
  a62908:	62 71 7c 48 28 0d 6e 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff63136e]        # 93c80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21130>
  a6290f:	13 63 ff 
  a62912:	62 f2 35 48 7f c6    	vpermt2ps zmm0,zmm9,zmm6
  a62918:	62 72 35 48 7f d4    	vpermt2ps zmm10,zmm9,zmm4
  a6291e:	62 d2 35 48 7f dc    	vpermt2ps zmm3,zmm9,zmm12
  a62924:	62 f2 35 48 7f ca    	vpermt2ps zmm1,zmm9,zmm2
  a6292a:	62 f1 7c 48 11 06    	vmovups ZMMWORD PTR [rsi],zmm0
  a62930:	c5 fc 11 7e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm7
  a62935:	62 71 7c 48 11 96 60 	vmovups ZMMWORD PTR [rsi+0x60],zmm10
  a6293c:	00 00 00 
  a6293f:	c5 7c 11 9e a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm11
  a62946:	00 
  a62947:	62 f1 7c 48 11 5e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm3
  a6294e:	c5 fc 11 ae 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm5
  a62955:	00 
  a62956:	62 f1 7c 48 11 8e 20 	vmovups ZMMWORD PTR [rsi+0x120],zmm1
  a6295d:	01 00 00 
  a62960:	c5 7c 11 86 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm8
  a62967:	00 
  a62968:	48 89 ec             	mov    rsp,rbp
  a6296b:	5d                   	pop    rbp
  a6296c:	c5 f8 77             	vzeroupper
  a6296f:	c3                   	ret
