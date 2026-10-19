
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a03100 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a03100:	62 71 7c 48 28 05 76 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff68b176]        # 8e280 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b730>
  a03107:	b1 68 ff 
  a0310a:	62 f1 7c 48 10 0f    	vmovups zmm1,ZMMWORD PTR [rdi]
  a03110:	62 f1 7c 48 10 77 01 	vmovups zmm6,ZMMWORD PTR [rdi+0x40]
  a03117:	62 f1 7c 48 10 7f 02 	vmovups zmm7,ZMMWORD PTR [rdi+0x80]
  a0311e:	62 f1 7c 48 10 57 03 	vmovups zmm2,ZMMWORD PTR [rdi+0xc0]
  a03125:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a03129:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a0312f:	62 f2 3d 48 7f e3    	vpermt2ps zmm4,zmm8,zmm3
  a03135:	62 f1 7c 48 28 05 81 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68b181]        # 8e2c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b770>
  a0313c:	b1 68 ff 
  a0313f:	62 f2 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm3
  a03145:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a0314b:	62 72 3d 48 7f d3    	vpermt2ps zmm10,zmm8,zmm3
  a03151:	62 f2 7d 48 7f f3    	vpermt2ps zmm6,zmm0,zmm3
  a03157:	62 71 7c 48 28 df    	vmovaps zmm11,zmm7
  a0315d:	62 72 3d 48 7f db    	vpermt2ps zmm11,zmm8,zmm3
  a03163:	62 f2 7d 48 7f fb    	vpermt2ps zmm7,zmm0,zmm3
  a03169:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a0316f:	62 72 3d 48 7f cb    	vpermt2ps zmm9,zmm8,zmm3
  a03175:	62 f2 7d 48 7f d3    	vpermt2ps zmm2,zmm0,zmm3
  a0317b:	62 71 7c 48 10 67 04 	vmovups zmm12,ZMMWORD PTR [rdi+0x100]
  a03182:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a03188:	62 72 3d 48 7f eb    	vpermt2ps zmm13,zmm8,zmm3
  a0318e:	62 72 7d 48 7f e3    	vpermt2ps zmm12,zmm0,zmm3
  a03194:	62 71 7c 48 10 77 05 	vmovups zmm14,ZMMWORD PTR [rdi+0x140]
  a0319b:	62 72 0d 48 77 c3    	vpermi2ps zmm8,zmm14,zmm3
  a031a1:	62 72 7d 48 7f f3    	vpermt2ps zmm14,zmm0,zmm3
  a031a7:	62 d1 44 48 58 ec    	vaddps zmm5,zmm7,zmm12
  a031ad:	62 71 74 48 58 fd    	vaddps zmm15,zmm1,zmm5
  a031b3:	62 e1 0c 48 58 c6    	vaddps zmm16,zmm14,zmm6
  a031b9:	62 a1 6c 48 58 c8    	vaddps zmm17,zmm2,zmm16
  a031bf:	62 b1 04 48 58 c1    	vaddps zmm0,zmm15,zmm17
  a031c5:	62 c1 24 48 58 d5    	vaddps zmm18,zmm11,zmm13
  a031cb:	62 e2 7d 48 18 1d 8b 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff67228b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a031d2:	22 67 ff 
  a031d5:	62 f2 65 40 bc cd    	vfnmadd231ps zmm1,zmm19,zmm5
  a031db:	62 a1 5c 48 58 e2    	vaddps zmm20,zmm4,zmm18
  a031e1:	62 b2 65 40 bc d0    	vfnmadd231ps zmm2,zmm19,zmm16
  a031e7:	62 d1 3c 48 58 ea    	vaddps zmm5,zmm8,zmm10
  a031ed:	62 b2 65 40 bc e2    	vfnmadd231ps zmm4,zmm19,zmm18
  a031f3:	62 e1 34 48 58 c5    	vaddps zmm16,zmm9,zmm5
  a031f9:	62 32 55 48 bc cb    	vfnmadd231ps zmm9,zmm5,zmm19
  a031ff:	62 b1 5c 40 58 e8    	vaddps zmm5,zmm20,zmm16
  a03205:	62 e2 7d 48 18 15 c5 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff6720c5]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0320c:	20 67 ff 
  a0320f:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a03215:	62 31 24 48 59 da    	vmulps zmm11,zmm11,zmm18
  a0321b:	62 51 74 48 58 eb    	vaddps zmm13,zmm1,zmm11
  a03221:	62 51 3c 48 5c c2    	vsubps zmm8,zmm8,zmm10
  a03227:	62 31 3c 48 59 c2    	vmulps zmm8,zmm8,zmm18
  a0322d:	62 51 6c 48 58 d0    	vaddps zmm10,zmm2,zmm8
  a03233:	62 d1 44 48 5c fc    	vsubps zmm7,zmm7,zmm12
  a03239:	62 c1 14 48 5c da    	vsubps zmm19,zmm13,zmm10
  a0323f:	62 b1 44 48 59 fa    	vmulps zmm7,zmm7,zmm18
  a03245:	62 f1 0c 48 5c f6    	vsubps zmm6,zmm14,zmm6
  a0324b:	62 71 5c 48 5c e7    	vsubps zmm12,zmm4,zmm7
  a03251:	62 31 4c 48 59 f2    	vmulps zmm14,zmm6,zmm18
  a03257:	62 c1 34 48 5c d6    	vsubps zmm18,zmm9,zmm14
  a0325d:	62 d1 74 48 5c cb    	vsubps zmm1,zmm1,zmm11
  a03263:	62 b1 1c 48 5c f2    	vsubps zmm6,zmm12,zmm18
  a03269:	62 d1 6c 48 5c d0    	vsubps zmm2,zmm2,zmm8
  a0326f:	62 e1 74 48 58 ea    	vaddps zmm21,zmm1,zmm2
  a03275:	62 f1 44 48 58 e4    	vaddps zmm4,zmm7,zmm4
  a0327b:	62 51 0c 48 58 c9    	vaddps zmm9,zmm14,zmm9
  a03281:	62 d1 5c 48 58 f9    	vaddps zmm7,zmm4,zmm9
  a03287:	62 31 04 48 5c f9    	vsubps zmm15,zmm15,zmm17
  a0328d:	62 31 5c 40 5c c0    	vsubps zmm8,zmm20,zmm16
  a03293:	62 c1 14 48 58 c2    	vaddps zmm16,zmm13,zmm10
  a03299:	62 31 1c 48 58 e2    	vaddps zmm12,zmm12,zmm18
  a0329f:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a032a5:	62 51 5c 48 5c d1    	vsubps zmm10,zmm4,zmm9
  a032ab:	62 71 7c 48 28 0d cb 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6c3ccb]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a032b2:	3c 6c ff 
  a032b5:	62 f2 35 48 7f c3    	vpermt2ps zmm0,zmm9,zmm3
  a032bb:	62 e2 35 48 7f db    	vpermt2ps zmm19,zmm9,zmm3
  a032c1:	62 e2 35 48 7f eb    	vpermt2ps zmm21,zmm9,zmm3
  a032c7:	62 72 35 48 7f fb    	vpermt2ps zmm15,zmm9,zmm3
  a032cd:	62 e2 35 48 7f c3    	vpermt2ps zmm16,zmm9,zmm3
  a032d3:	62 f2 35 48 7f cb    	vpermt2ps zmm1,zmm9,zmm3
  a032d9:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a032de:	62 52 35 48 7f ed    	vpermt2ps zmm13,zmm9,zmm13
  a032e4:	62 71 7c 48 28 1d 12 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6c3c12]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a032eb:	3c 6c ff 
  a032ee:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a032f4:	62 b2 25 48 7f d0    	vpermt2ps zmm2,zmm11,zmm16
  a032fa:	62 71 7c 48 28 35 3c 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6c3c3c]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a03301:	3c 6c ff 
  a03304:	62 b2 0d 48 7f c0    	vpermt2ps zmm0,zmm14,zmm16
  a0330a:	62 a1 7c 48 28 c3    	vmovaps zmm16,zmm19
  a03310:	62 e2 25 48 7f c1    	vpermt2ps zmm16,zmm11,zmm1
  a03316:	62 e2 0d 48 7f d9    	vpermt2ps zmm19,zmm14,zmm1
  a0331c:	62 b1 7c 48 28 cd    	vmovaps zmm1,zmm21
  a03322:	62 d2 25 48 7f cd    	vpermt2ps zmm1,zmm11,zmm13
  a03328:	62 c2 0d 48 7f ed    	vpermt2ps zmm21,zmm14,zmm13
  a0332e:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a03334:	62 c2 25 48 7f cd    	vpermt2ps zmm17,zmm11,zmm13
  a0333a:	62 52 0d 48 7f fd    	vpermt2ps zmm15,zmm14,zmm13
  a03340:	62 f1 ed 48 14 e1    	vunpcklpd zmm4,zmm2,zmm1
  a03346:	62 f1 ed 48 15 c9    	vunpckhpd zmm1,zmm2,zmm1
  a0334c:	62 a1 fd 40 14 d1    	vunpcklpd zmm18,zmm16,zmm17
  a03352:	62 a1 fd 40 15 c1    	vunpckhpd zmm16,zmm16,zmm17
  a03358:	62 b1 fd 48 14 d5    	vunpcklpd zmm2,zmm0,zmm21
  a0335e:	62 b1 fd 48 15 c5    	vunpckhpd zmm0,zmm0,zmm21
  a03364:	62 c1 e5 40 14 cf    	vunpcklpd zmm17,zmm19,zmm15
  a0336a:	62 c1 e5 40 15 df    	vunpckhpd zmm19,zmm19,zmm15
  a03370:	62 f2 35 48 7f eb    	vpermt2ps zmm5,zmm9,zmm3
  a03376:	62 f2 35 48 7f f3    	vpermt2ps zmm6,zmm9,zmm3
  a0337c:	62 f2 35 48 7f fb    	vpermt2ps zmm7,zmm9,zmm3
  a03382:	62 72 35 48 7f c3    	vpermt2ps zmm8,zmm9,zmm3
  a03388:	62 72 35 48 7f e3    	vpermt2ps zmm12,zmm9,zmm3
  a0338e:	62 72 35 48 7f d3    	vpermt2ps zmm10,zmm9,zmm3
  a03394:	62 71 7c 48 28 0d 62 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6c3a62]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0339b:	3a 6c ff 
  a0339e:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a033a4:	62 c2 25 48 7f e4    	vpermt2ps zmm20,zmm11,zmm12
  a033aa:	62 d2 0d 48 7f ec    	vpermt2ps zmm5,zmm14,zmm12
  a033b0:	62 e1 7c 48 28 ee    	vmovaps zmm21,zmm6
  a033b6:	62 c2 25 48 7f ea    	vpermt2ps zmm21,zmm11,zmm10
  a033bc:	62 d2 0d 48 7f f2    	vpermt2ps zmm6,zmm14,zmm10
  a033c2:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a033c8:	62 52 25 48 7f d5    	vpermt2ps zmm10,zmm11,zmm13
  a033ce:	62 d2 0d 48 7f fd    	vpermt2ps zmm7,zmm14,zmm13
  a033d4:	62 52 3d 48 77 dd    	vpermi2ps zmm11,zmm8,zmm13
  a033da:	62 52 0d 48 7f c5    	vpermt2ps zmm8,zmm14,zmm13
  a033e0:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a033e6:	62 b2 35 48 7f da    	vpermt2ps zmm3,zmm9,zmm18
  a033ec:	62 e1 7c 48 28 35 4a 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6c3a4a]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a033f3:	3a 6c ff 
  a033f6:	62 b2 4d 40 7f e2    	vpermt2ps zmm4,zmm22,zmm18
  a033fc:	62 71 7c 48 28 f1    	vmovaps zmm14,zmm1
  a03402:	62 32 35 48 7f f0    	vpermt2ps zmm14,zmm9,zmm16
  a03408:	62 b2 4d 40 7f c8    	vpermt2ps zmm1,zmm22,zmm16
  a0340e:	62 71 7c 48 28 fa    	vmovaps zmm15,zmm2
  a03414:	62 32 35 48 7f f9    	vpermt2ps zmm15,zmm9,zmm17
  a0341a:	62 b2 4d 40 7f d1    	vpermt2ps zmm2,zmm22,zmm17
  a03420:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a03426:	62 32 35 48 7f eb    	vpermt2ps zmm13,zmm9,zmm19
  a0342c:	62 b2 4d 40 7f c3    	vpermt2ps zmm0,zmm22,zmm19
  a03432:	62 51 dd 40 14 e2    	vunpcklpd zmm12,zmm20,zmm10
  a03438:	62 51 dd 40 15 d2    	vunpckhpd zmm10,zmm20,zmm10
  a0343e:	62 c1 d5 40 14 c3    	vunpcklpd zmm16,zmm21,zmm11
  a03444:	62 c1 d5 40 15 cb    	vunpckhpd zmm17,zmm21,zmm11
  a0344a:	62 71 d5 48 14 df    	vunpcklpd zmm11,zmm5,zmm7
  a03450:	62 f1 d5 48 15 ff    	vunpckhpd zmm7,zmm5,zmm7
  a03456:	62 c1 cd 48 14 d0    	vunpcklpd zmm18,zmm6,zmm8
  a0345c:	62 d1 cd 48 15 f0    	vunpckhpd zmm6,zmm6,zmm8
  a03462:	62 d1 7c 48 28 ec    	vmovaps zmm5,zmm12
  a03468:	62 b2 35 48 7f e8    	vpermt2ps zmm5,zmm9,zmm16
  a0346e:	62 32 4d 40 7f e0    	vpermt2ps zmm12,zmm22,zmm16
  a03474:	62 c1 7c 48 28 c2    	vmovaps zmm16,zmm10
  a0347a:	62 a2 35 48 7f c1    	vpermt2ps zmm16,zmm9,zmm17
  a03480:	62 32 4d 40 7f d1    	vpermt2ps zmm10,zmm22,zmm17
  a03486:	62 51 7c 48 28 c3    	vmovaps zmm8,zmm11
  a0348c:	62 32 35 48 7f c2    	vpermt2ps zmm8,zmm9,zmm18
  a03492:	62 32 4d 40 7f da    	vpermt2ps zmm11,zmm22,zmm18
  a03498:	62 72 45 48 77 ce    	vpermi2ps zmm9,zmm7,zmm6
  a0349e:	62 f2 4d 40 7f fe    	vpermt2ps zmm7,zmm22,zmm6
  a034a4:	62 e1 7c 48 10 4a 08 	vmovups zmm17,ZMMWORD PTR [rdx+0x200]
  a034ab:	62 e1 7c 48 10 52 09 	vmovups zmm18,ZMMWORD PTR [rdx+0x240]
  a034b2:	62 b1 04 48 59 f1    	vmulps zmm6,zmm15,zmm17
  a034b8:	62 b2 3d 48 bc f2    	vfnmadd231ps zmm6,zmm8,zmm18
  a034be:	62 31 3c 48 59 c1    	vmulps zmm8,zmm8,zmm17
  a034c4:	62 e1 7c 48 10 4a 04 	vmovups zmm17,ZMMWORD PTR [rdx+0x100]
  a034cb:	62 52 6d 40 b8 c7    	vfmadd231ps zmm8,zmm18,zmm15
  a034d1:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a034d8:	62 31 0c 48 59 f9    	vmulps zmm15,zmm14,zmm17
  a034de:	62 32 7d 40 bc fa    	vfnmadd231ps zmm15,zmm16,zmm18
  a034e4:	62 a1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm17
  a034ea:	62 e1 7c 48 10 4a 0c 	vmovups zmm17,ZMMWORD PTR [rdx+0x300]
  a034f1:	62 c2 6d 40 b8 c6    	vfmadd231ps zmm16,zmm18,zmm14
  a034f7:	62 71 7c 48 10 72 0d 	vmovups zmm14,ZMMWORD PTR [rdx+0x340]
  a034fe:	62 a1 14 48 59 d1    	vmulps zmm18,zmm13,zmm17
  a03504:	62 c2 35 48 bc d6    	vfnmadd231ps zmm18,zmm9,zmm14
  a0350a:	62 31 34 48 59 c9    	vmulps zmm9,zmm9,zmm17
  a03510:	62 e1 7c 48 10 4a 02 	vmovups zmm17,ZMMWORD PTR [rdx+0x80]
  a03517:	62 52 0d 48 b8 cd    	vfmadd231ps zmm9,zmm14,zmm13
  a0351d:	62 71 7c 48 10 6a 03 	vmovups zmm13,ZMMWORD PTR [rdx+0xc0]
  a03524:	62 31 5c 48 59 f1    	vmulps zmm14,zmm4,zmm17
  a0352a:	62 52 1d 48 bc f5    	vfnmadd231ps zmm14,zmm12,zmm13
  a03530:	62 31 1c 48 59 e1    	vmulps zmm12,zmm12,zmm17
  a03536:	62 e1 7c 48 10 4a 0a 	vmovups zmm17,ZMMWORD PTR [rdx+0x280]
  a0353d:	62 72 15 48 b8 e4    	vfmadd231ps zmm12,zmm13,zmm4
  a03543:	62 f1 7c 48 10 62 0b 	vmovups zmm4,ZMMWORD PTR [rdx+0x2c0]
  a0354a:	62 31 6c 48 59 e9    	vmulps zmm13,zmm2,zmm17
  a03550:	62 72 25 48 bc ec    	vfnmadd231ps zmm13,zmm11,zmm4
  a03556:	62 31 24 48 59 d9    	vmulps zmm11,zmm11,zmm17
  a0355c:	62 e1 7c 48 10 4a 06 	vmovups zmm17,ZMMWORD PTR [rdx+0x180]
  a03563:	62 72 5d 48 b8 da    	vfmadd231ps zmm11,zmm4,zmm2
  a03569:	62 f1 7c 48 10 52 07 	vmovups zmm2,ZMMWORD PTR [rdx+0x1c0]
  a03570:	62 b1 74 48 59 e1    	vmulps zmm4,zmm1,zmm17
  a03576:	62 f2 2d 48 bc e2    	vfnmadd231ps zmm4,zmm10,zmm2
  a0357c:	62 31 2c 48 59 d1    	vmulps zmm10,zmm10,zmm17
  a03582:	62 e1 7c 48 10 4a 0e 	vmovups zmm17,ZMMWORD PTR [rdx+0x380]
  a03589:	62 72 6d 48 b8 d1    	vfmadd231ps zmm10,zmm2,zmm1
  a0358f:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a03596:	62 b1 7c 48 59 d1    	vmulps zmm2,zmm0,zmm17
  a0359c:	62 f2 45 48 bc d1    	vfnmadd231ps zmm2,zmm7,zmm1
  a035a2:	62 b1 44 48 59 f9    	vmulps zmm7,zmm7,zmm17
  a035a8:	62 f2 75 48 b8 f8    	vfmadd231ps zmm7,zmm1,zmm0
  a035ae:	62 f1 64 48 58 c6    	vaddps zmm0,zmm3,zmm6
  a035b4:	62 f1 64 48 5c ce    	vsubps zmm1,zmm3,zmm6
  a035ba:	62 d1 7c 40 58 d9    	vaddps zmm3,zmm16,zmm9
  a035c0:	62 d1 7c 40 5c f1    	vsubps zmm6,zmm16,zmm9
  a035c6:	62 51 0c 48 58 cd    	vaddps zmm9,zmm14,zmm13
  a035cc:	62 51 0c 48 5c ed    	vsubps zmm13,zmm14,zmm13
  a035d2:	62 51 1c 48 58 f3    	vaddps zmm14,zmm12,zmm11
  a035d8:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a035de:	62 71 2c 48 58 e7    	vaddps zmm12,zmm10,zmm7
  a035e4:	62 f1 2c 48 5c ff    	vsubps zmm7,zmm10,zmm7
  a035ea:	62 71 5c 48 58 d2    	vaddps zmm10,zmm4,zmm2
  a035f0:	62 f1 5c 48 5c d2    	vsubps zmm2,zmm4,zmm2
  a035f6:	62 f1 3c 48 58 e5    	vaddps zmm4,zmm8,zmm5
  a035fc:	62 d1 54 48 5c e8    	vsubps zmm5,zmm5,zmm8
  a03602:	62 31 04 48 58 c2    	vaddps zmm8,zmm15,zmm18
  a03608:	62 51 6c 40 5c ff    	vsubps zmm15,zmm18,zmm15
  a0360e:	62 c1 14 48 58 c3    	vaddps zmm16,zmm13,zmm11
  a03614:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a0361a:	62 71 44 48 5c ea    	vsubps zmm13,zmm7,zmm2
  a03620:	62 f1 6c 48 58 d7    	vaddps zmm2,zmm2,zmm7
  a03626:	62 f2 7d 48 18 3d 6c 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff671d6c]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a0362d:	1d 67 ff 
  a03630:	62 e1 7c 40 59 c7    	vmulps zmm16,zmm16,zmm7
  a03636:	62 71 14 48 59 ef    	vmulps zmm13,zmm13,zmm7
  a0363c:	62 71 24 48 59 df    	vmulps zmm11,zmm11,zmm7
  a03642:	62 f1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm7
  a03648:	62 d1 7c 48 58 f8    	vaddps zmm7,zmm0,zmm8
  a0364e:	62 d1 7c 48 5c c0    	vsubps zmm0,zmm0,zmm8
  a03654:	62 51 0c 48 58 c4    	vaddps zmm8,zmm14,zmm12
  a0365a:	62 51 0c 48 5c e4    	vsubps zmm12,zmm14,zmm12
  a03660:	62 71 64 48 58 f4    	vaddps zmm14,zmm3,zmm4
  a03666:	62 f1 5c 48 5c db    	vsubps zmm3,zmm4,zmm3
  a0366c:	62 d1 34 48 58 e2    	vaddps zmm4,zmm9,zmm10
  a03672:	62 51 2c 48 5c c9    	vsubps zmm9,zmm10,zmm9
  a03678:	62 71 74 48 58 d6    	vaddps zmm10,zmm1,zmm6
  a0367e:	62 f1 74 48 5c ce    	vsubps zmm1,zmm1,zmm6
  a03684:	62 f1 24 48 5c f2    	vsubps zmm6,zmm11,zmm2
  a0368a:	62 f1 24 48 58 d2    	vaddps zmm2,zmm11,zmm2
  a03690:	62 71 04 48 58 dd    	vaddps zmm11,zmm15,zmm5
  a03696:	62 d1 54 48 5c ef    	vsubps zmm5,zmm5,zmm15
  a0369c:	62 51 7c 40 58 fd    	vaddps zmm15,zmm16,zmm13
  a036a2:	62 31 14 48 5c e8    	vsubps zmm13,zmm13,zmm16
  a036a8:	62 c1 2c 48 58 c7    	vaddps zmm16,zmm10,zmm15
  a036ae:	62 51 2c 48 5c d7    	vsubps zmm10,zmm10,zmm15
  a036b4:	62 71 24 48 58 fe    	vaddps zmm15,zmm11,zmm6
  a036ba:	62 f1 24 48 5c f6    	vsubps zmm6,zmm11,zmm6
  a036c0:	62 51 7c 48 58 dc    	vaddps zmm11,zmm0,zmm12
  a036c6:	62 d1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm12
  a036cc:	62 51 64 48 58 e1    	vaddps zmm12,zmm3,zmm9
  a036d2:	62 d1 64 48 5c d9    	vsubps zmm3,zmm3,zmm9
  a036d8:	62 71 74 48 58 ca    	vaddps zmm9,zmm1,zmm2
  a036de:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a036e4:	62 d1 54 48 58 d5    	vaddps zmm2,zmm5,zmm13
  a036ea:	62 d1 54 48 5c ed    	vsubps zmm5,zmm5,zmm13
  a036f0:	62 51 0c 48 5c e8    	vsubps zmm13,zmm14,zmm8
  a036f6:	62 51 0c 48 58 c0    	vaddps zmm8,zmm14,zmm8
  a036fc:	62 71 44 48 5c f4    	vsubps zmm14,zmm7,zmm4
  a03702:	62 f1 44 48 58 e4    	vaddps zmm4,zmm7,zmm4
  a03708:	62 f1 7c 48 28 3d ee 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff68abee]        # 8e300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b7b0>
  a0370f:	ab 68 ff 
  a03712:	62 72 45 48 7f c4    	vpermt2ps zmm8,zmm7,zmm4
  a03718:	62 32 45 48 7f f8    	vpermt2ps zmm15,zmm7,zmm16
  a0371e:	62 52 45 48 7f e3    	vpermt2ps zmm12,zmm7,zmm11
  a03724:	62 d2 45 48 7f d1    	vpermt2ps zmm2,zmm7,zmm9
  a0372a:	62 52 45 48 7f ee    	vpermt2ps zmm13,zmm7,zmm14
  a03730:	62 d2 45 48 7f f2    	vpermt2ps zmm6,zmm7,zmm10
  a03736:	62 f2 45 48 7f d8    	vpermt2ps zmm3,zmm7,zmm0
  a0373c:	62 f2 45 48 7f e9    	vpermt2ps zmm5,zmm7,zmm1
  a03742:	62 73 7d 48 19 46 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm8,0x2
  a03749:	02 
  a0374a:	c5 7c 11 06          	vmovups YMMWORD PTR [rsi],ymm8
  a0374e:	62 73 7d 48 19 7e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm15,0x2
  a03755:	02 
  a03756:	c5 7c 11 7e 30       	vmovups YMMWORD PTR [rsi+0x30],ymm15
  a0375b:	62 73 7d 48 19 66 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm12,0x2
  a03762:	02 
  a03763:	c5 7c 11 66 60       	vmovups YMMWORD PTR [rsi+0x60],ymm12
  a03768:	62 f3 7d 48 19 56 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm2,0x2
  a0376f:	02 
  a03770:	c5 fc 11 96 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm2
  a03777:	00 
  a03778:	62 73 7d 48 19 6e 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm13,0x2
  a0377f:	02 
  a03780:	c5 7c 11 ae c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm13
  a03787:	00 
  a03788:	62 f3 7d 48 19 76 11 	vextractf32x4 XMMWORD PTR [rsi+0x110],zmm6,0x2
  a0378f:	02 
  a03790:	c5 fc 11 b6 f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm6
  a03797:	00 
  a03798:	62 f3 7d 48 19 5e 14 	vextractf32x4 XMMWORD PTR [rsi+0x140],zmm3,0x2
  a0379f:	02 
  a037a0:	c5 fc 11 9e 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm3
  a037a7:	00 
  a037a8:	62 f3 7d 48 19 6e 17 	vextractf32x4 XMMWORD PTR [rsi+0x170],zmm5,0x2
  a037af:	02 
  a037b0:	c5 fc 11 ae 50 01 00 	vmovups YMMWORD PTR [rsi+0x150],ymm5
  a037b7:	00 
  a037b8:	c5 f8 77             	vzeroupper
  a037bb:	c3                   	ret
