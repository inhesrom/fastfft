
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a16280 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a16280:	c5 fc 10 17          	vmovups ymm2,YMMWORD PTR [rdi]
  a16284:	c5 fc 10 5f 20       	vmovups ymm3,YMMWORD PTR [rdi+0x20]
  a16289:	c5 fc 10 67 40       	vmovups ymm4,YMMWORD PTR [rdi+0x40]
  a1628e:	62 f1 7c 48 28 2d 68 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff679268]        # 8f500 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c9b0>
  a16295:	92 67 ff 
  a16298:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a1629c:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a162a2:	62 f2 55 48 7f f1    	vpermt2ps zmm6,zmm5,zmm1
  a162a8:	62 f1 7c 48 28 05 8e 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff67928e]        # 8f540 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c9f0>
  a162af:	92 67 ff 
  a162b2:	62 f2 7d 48 7f d1    	vpermt2ps zmm2,zmm0,zmm1
  a162b8:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a162be:	62 f2 55 48 7f f9    	vpermt2ps zmm7,zmm5,zmm1
  a162c4:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a162ca:	62 f2 5d 48 77 e9    	vpermi2ps zmm5,zmm4,zmm1
  a162d0:	62 f2 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm1
  a162d6:	62 71 44 48 58 c5    	vaddps zmm8,zmm7,zmm5
  a162dc:	62 51 4c 48 58 c8    	vaddps zmm9,zmm6,zmm8
  a162e2:	62 71 64 48 58 d4    	vaddps zmm10,zmm3,zmm4
  a162e8:	62 d1 6c 48 58 c2    	vaddps zmm0,zmm2,zmm10
  a162ee:	62 72 7d 48 18 1d 68 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff65f168]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a162f5:	f1 65 ff 
  a162f8:	62 d2 25 48 bc f0    	vfnmadd231ps zmm6,zmm11,zmm8
  a162fe:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a16304:	62 f2 7d 48 18 25 c6 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff65efc6]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a1630b:	ef 65 ff 
  a1630e:	62 f1 64 48 59 dc    	vmulps zmm3,zmm3,zmm4
  a16314:	62 71 4c 48 58 c3    	vaddps zmm8,zmm6,zmm3
  a1631a:	62 d2 2d 48 bc d3    	vfnmadd231ps zmm2,zmm10,zmm11
  a16320:	62 f1 44 48 5c ed    	vsubps zmm5,zmm7,zmm5
  a16326:	62 f1 54 48 59 e4    	vmulps zmm4,zmm5,zmm4
  a1632c:	62 f1 6c 48 5c ec    	vsubps zmm5,zmm2,zmm4
  a16332:	62 f1 4c 48 5c db    	vsubps zmm3,zmm6,zmm3
  a16338:	62 f1 5c 48 58 d2    	vaddps zmm2,zmm4,zmm2
  a1633e:	62 f1 7c 48 28 25 38 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6b0c38]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a16345:	0c 6b ff 
  a16348:	62 72 5d 48 7f c9    	vpermt2ps zmm9,zmm4,zmm1
  a1634e:	62 72 5d 48 7f c1    	vpermt2ps zmm8,zmm4,zmm1
  a16354:	62 f2 5d 48 7f d9    	vpermt2ps zmm3,zmm4,zmm1
  a1635a:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a1635e:	62 f2 5d 48 7f f6    	vpermt2ps zmm6,zmm4,zmm6
  a16364:	62 f1 7c 48 28 3d 92 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6b0b92]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1636b:	0b 6b ff 
  a1636e:	62 72 45 48 7f ce    	vpermt2ps zmm9,zmm7,zmm6
  a16374:	62 72 45 48 7f c6    	vpermt2ps zmm8,zmm7,zmm6
  a1637a:	62 f2 45 48 7f de    	vpermt2ps zmm3,zmm7,zmm6
  a16380:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a16386:	62 f2 5d 48 7f e9    	vpermt2ps zmm5,zmm4,zmm1
  a1638c:	62 f2 5d 48 7f d1    	vpermt2ps zmm2,zmm4,zmm1
  a16392:	62 f2 45 48 7f c6    	vpermt2ps zmm0,zmm7,zmm6
  a16398:	62 f2 45 48 7f ee    	vpermt2ps zmm5,zmm7,zmm6
  a1639e:	62 f2 45 48 7f d6    	vpermt2ps zmm2,zmm7,zmm6
  a163a4:	62 f2 45 48 7f f6    	vpermt2ps zmm6,zmm7,zmm6
  a163aa:	62 f1 b5 48 14 e3    	vunpcklpd zmm4,zmm9,zmm3
  a163b0:	62 f1 b5 48 15 db    	vunpckhpd zmm3,zmm9,zmm3
  a163b6:	62 f1 bd 48 14 fe    	vunpcklpd zmm7,zmm8,zmm6
  a163bc:	62 71 bd 48 15 c6    	vunpckhpd zmm8,zmm8,zmm6
  a163c2:	62 71 7c 48 28 0d 34 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6b0a34]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a163c9:	0a 6b ff 
  a163cc:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a163d2:	62 f2 35 48 7f cf    	vpermt2ps zmm1,zmm9,zmm7
  a163d8:	62 71 7c 48 28 15 5e 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6b0a5e]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a163df:	0a 6b ff 
  a163e2:	62 f2 2d 48 7f e7    	vpermt2ps zmm4,zmm10,zmm7
  a163e8:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a163ee:	62 d2 35 48 7f f8    	vpermt2ps zmm7,zmm9,zmm8
  a163f4:	62 d2 2d 48 7f d8    	vpermt2ps zmm3,zmm10,zmm8
  a163fa:	62 71 fd 48 14 c2    	vunpcklpd zmm8,zmm0,zmm2
  a16400:	62 f1 fd 48 15 c2    	vunpckhpd zmm0,zmm0,zmm2
  a16406:	62 f1 d5 48 14 d6    	vunpcklpd zmm2,zmm5,zmm6
  a1640c:	62 f1 d5 48 15 ee    	vunpckhpd zmm5,zmm5,zmm6
  a16412:	62 d1 7c 48 28 f0    	vmovaps zmm6,zmm8
  a16418:	62 f2 35 48 7f f2    	vpermt2ps zmm6,zmm9,zmm2
  a1641e:	62 72 2d 48 7f c2    	vpermt2ps zmm8,zmm10,zmm2
  a16424:	62 72 7d 48 77 cd    	vpermi2ps zmm9,zmm0,zmm5
  a1642a:	62 f2 2d 48 7f c5    	vpermt2ps zmm0,zmm10,zmm5
  a16430:	62 f1 7c 48 10 52 02 	vmovups zmm2,ZMMWORD PTR [rdx+0x80]
  a16437:	62 f1 7c 48 10 6a 03 	vmovups zmm5,ZMMWORD PTR [rdx+0xc0]
  a1643e:	62 71 7c 48 10 52 04 	vmovups zmm10,ZMMWORD PTR [rdx+0x100]
  a16445:	62 71 7c 48 10 5a 05 	vmovups zmm11,ZMMWORD PTR [rdx+0x140]
  a1644c:	62 71 7c 48 10 62 06 	vmovups zmm12,ZMMWORD PTR [rdx+0x180]
  a16453:	62 71 7c 48 10 6a 07 	vmovups zmm13,ZMMWORD PTR [rdx+0x1c0]
  a1645a:	62 51 44 48 59 f2    	vmulps zmm14,zmm7,zmm10
  a16460:	62 52 35 48 bc f3    	vfnmadd231ps zmm14,zmm9,zmm11
  a16466:	62 71 5c 48 59 fa    	vmulps zmm15,zmm4,zmm2
  a1646c:	62 72 3d 48 bc fd    	vfnmadd231ps zmm15,zmm8,zmm5
  a16472:	62 c1 64 48 59 c4    	vmulps zmm16,zmm3,zmm12
  a16478:	62 c2 7d 48 bc c5    	vfnmadd231ps zmm16,zmm0,zmm13
  a1647e:	62 51 34 48 59 ca    	vmulps zmm9,zmm9,zmm10
  a16484:	62 72 25 48 b8 cf    	vfmadd231ps zmm9,zmm11,zmm7
  a1648a:	62 f1 3c 48 59 d2    	vmulps zmm2,zmm8,zmm2
  a16490:	62 f2 55 48 b8 d4    	vfmadd231ps zmm2,zmm5,zmm4
  a16496:	62 d1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm12
  a1649c:	62 f2 15 48 b8 c3    	vfmadd231ps zmm0,zmm13,zmm3
  a164a2:	c5 ec 58 d8          	vaddps ymm3,ymm2,ymm0
  a164a6:	c5 b4 58 e6          	vaddps ymm4,ymm9,ymm6
  a164aa:	c5 dc 58 eb          	vaddps ymm5,ymm4,ymm3
  a164ae:	62 b1 04 08 58 f8    	vaddps xmm7,xmm15,xmm16
  a164b4:	c5 08 58 c1          	vaddps xmm8,xmm14,xmm1
  a164b8:	c5 38 58 d7          	vaddps xmm10,xmm8,xmm7
  a164bc:	c5 7c 28 1d fc 1d 66 	vmovaps ymm11,YMMWORD PTR [rip+0xffffffffff661dfc]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a164c3:	ff 
  a164c4:	62 72 25 28 7f d5    	vpermt2ps ymm10,ymm11,ymm5
  a164ca:	c4 63 7d 19 d5 01    	vextractf128 xmm5,ymm10,0x1
  a164d0:	c5 f8 13 6e 10       	vmovlps QWORD PTR [rsi+0x10],xmm5
  a164d5:	c5 78 11 16          	vmovups XMMWORD PTR [rsi],xmm10
  a164d9:	62 d1 7c 20 5c ef    	vsubps ymm5,ymm16,ymm15
  a164df:	c4 c1 4c 5c f1       	vsubps ymm6,ymm6,ymm9
  a164e4:	c5 4c 58 cd          	vaddps ymm9,ymm6,ymm5
  a164e8:	c5 e8 5c c0          	vsubps xmm0,xmm2,xmm0
  a164ec:	c4 c1 70 5c ce       	vsubps xmm1,xmm1,xmm14
  a164f1:	c5 f0 58 d0          	vaddps xmm2,xmm1,xmm0
  a164f5:	62 d2 25 28 7f d1    	vpermt2ps ymm2,ymm11,ymm9
  a164fb:	c4 c3 7d 19 d1 01    	vextractf128 xmm9,ymm2,0x1
  a16501:	c5 78 13 4e 28       	vmovlps QWORD PTR [rsi+0x28],xmm9
  a16506:	c5 f8 11 56 18       	vmovups XMMWORD PTR [rsi+0x18],xmm2
  a1650b:	c5 dc 5c d3          	vsubps ymm2,ymm4,ymm3
  a1650f:	c5 b8 5c df          	vsubps xmm3,xmm8,xmm7
  a16513:	62 f2 25 28 7f da    	vpermt2ps ymm3,ymm11,ymm2
  a16519:	c4 e3 7d 19 da 01    	vextractf128 xmm2,ymm3,0x1
  a1651f:	c5 f8 13 56 40       	vmovlps QWORD PTR [rsi+0x40],xmm2
  a16524:	c5 f8 11 5e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm3
  a16529:	c5 cc 5c d5          	vsubps ymm2,ymm6,ymm5
  a1652d:	c5 f0 5c c0          	vsubps xmm0,xmm1,xmm0
  a16531:	62 f2 25 28 7f c2    	vpermt2ps ymm0,ymm11,ymm2
  a16537:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  a1653d:	c5 f8 13 4e 58       	vmovlps QWORD PTR [rsi+0x58],xmm1
  a16542:	c5 f8 11 46 48       	vmovups XMMWORD PTR [rsi+0x48],xmm0
  a16547:	c5 f8 77             	vzeroupper
  a1654a:	c3                   	ret
