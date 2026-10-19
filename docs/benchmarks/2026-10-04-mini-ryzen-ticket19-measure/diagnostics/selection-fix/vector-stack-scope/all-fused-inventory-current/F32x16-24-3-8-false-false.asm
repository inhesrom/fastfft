
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a180c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a180c0:	55                   	push   rbp
  a180c1:	48 89 e5             	mov    rbp,rsp
  a180c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a180c8:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a180cf:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a180d4:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a180d9:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a180de:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a180e3:	62 f1 7c 48 28 1d d3 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6775d3]        # 8f6c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cb70>
  a180ea:	75 67 ff 
  a180ed:	62 f1 7c 48 10 27    	vmovups zmm4,ZMMWORD PTR [rdi]
  a180f3:	62 f1 7c 48 10 6f 01 	vmovups zmm5,ZMMWORD PTR [rdi+0x40]
  a180fa:	62 f1 7c 48 10 77 02 	vmovups zmm6,ZMMWORD PTR [rdi+0x80]
  a18101:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a18105:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a1810b:	62 f2 65 48 7f fa    	vpermt2ps zmm7,zmm3,zmm2
  a18111:	62 f1 7c 48 28 05 e5 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6775e5]        # 8f700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cbb0>
  a18118:	75 67 ff 
  a1811b:	62 f2 7d 48 7f e2    	vpermt2ps zmm4,zmm0,zmm2
  a18121:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a18127:	62 72 65 48 7f ca    	vpermt2ps zmm9,zmm3,zmm2
  a1812d:	62 f2 7d 48 7f ea    	vpermt2ps zmm5,zmm0,zmm2
  a18133:	62 f2 4d 48 77 da    	vpermi2ps zmm3,zmm6,zmm2
  a18139:	62 f2 7d 48 7f f2    	vpermt2ps zmm6,zmm0,zmm2
  a1813f:	62 71 34 48 58 c3    	vaddps zmm8,zmm9,zmm3
  a18145:	62 d1 44 48 58 c0    	vaddps zmm0,zmm7,zmm8
  a1814b:	62 71 54 48 58 d6    	vaddps zmm10,zmm5,zmm6
  a18151:	62 d1 5c 48 58 ca    	vaddps zmm1,zmm4,zmm10
  a18157:	62 72 7d 48 18 1d ff 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff65d2ff]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a1815e:	d2 65 ff 
  a18161:	62 d2 25 48 bc f8    	vfnmadd231ps zmm7,zmm11,zmm8
  a18167:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a1816d:	62 f2 7d 48 18 35 5d 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff65d15d]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a18174:	d1 65 ff 
  a18177:	62 f1 54 48 59 ee    	vmulps zmm5,zmm5,zmm6
  a1817d:	62 71 44 48 58 c5    	vaddps zmm8,zmm7,zmm5
  a18183:	62 d2 2d 48 bc e3    	vfnmadd231ps zmm4,zmm10,zmm11
  a18189:	62 f1 34 48 5c db    	vsubps zmm3,zmm9,zmm3
  a1818f:	62 71 64 48 59 ce    	vmulps zmm9,zmm3,zmm6
  a18195:	62 d1 5c 48 5c f1    	vsubps zmm6,zmm4,zmm9
  a1819b:	62 f1 44 48 5c dd    	vsubps zmm3,zmm7,zmm5
  a181a1:	62 f1 34 48 58 fc    	vaddps zmm7,zmm9,zmm4
  a181a7:	62 f1 7c 48 28 25 cf 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6aedcf]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a181ae:	ed 6a ff 
  a181b1:	62 f2 5d 48 7f c2    	vpermt2ps zmm0,zmm4,zmm2
  a181b7:	62 72 5d 48 7f c2    	vpermt2ps zmm8,zmm4,zmm2
  a181bd:	62 f2 5d 48 7f da    	vpermt2ps zmm3,zmm4,zmm2
  a181c3:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a181c7:	62 f2 5d 48 7f ed    	vpermt2ps zmm5,zmm4,zmm5
  a181cd:	62 71 7c 48 28 15 29 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6aed29]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a181d4:	ed 6a ff 
  a181d7:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a181dd:	62 72 2d 48 7f cd    	vpermt2ps zmm9,zmm10,zmm5
  a181e3:	62 71 7c 48 28 25 53 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6aed53]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a181ea:	ed 6a ff 
  a181ed:	62 f2 1d 48 7f c5    	vpermt2ps zmm0,zmm12,zmm5
  a181f3:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a181f9:	62 72 2d 48 7f ed    	vpermt2ps zmm13,zmm10,zmm5
  a181ff:	62 72 1d 48 7f c5    	vpermt2ps zmm8,zmm12,zmm5
  a18205:	62 71 7c 48 28 f3    	vmovaps zmm14,zmm3
  a1820b:	62 72 2d 48 7f f5    	vpermt2ps zmm14,zmm10,zmm5
  a18211:	62 f2 1d 48 7f dd    	vpermt2ps zmm3,zmm12,zmm5
  a18217:	62 71 7c 48 28 dd    	vmovaps zmm11,zmm5
  a1821d:	62 72 2d 48 7f dd    	vpermt2ps zmm11,zmm10,zmm5
  a18223:	62 f2 5d 48 7f ca    	vpermt2ps zmm1,zmm4,zmm2
  a18229:	62 f2 5d 48 7f f2    	vpermt2ps zmm6,zmm4,zmm2
  a1822f:	62 f2 5d 48 7f fa    	vpermt2ps zmm7,zmm4,zmm2
  a18235:	62 e1 7c 48 28 c1    	vmovaps zmm16,zmm1
  a1823b:	62 e2 2d 48 7f c5    	vpermt2ps zmm16,zmm10,zmm5
  a18241:	62 f2 1d 48 7f cd    	vpermt2ps zmm1,zmm12,zmm5
  a18247:	62 e1 7c 48 28 ce    	vmovaps zmm17,zmm6
  a1824d:	62 e2 2d 48 7f cd    	vpermt2ps zmm17,zmm10,zmm5
  a18253:	62 f2 1d 48 7f f5    	vpermt2ps zmm6,zmm12,zmm5
  a18259:	62 72 45 48 77 d5    	vpermi2ps zmm10,zmm7,zmm5
  a1825f:	62 f2 1d 48 7f fd    	vpermt2ps zmm7,zmm12,zmm5
  a18265:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a1826b:	62 e2 1d 48 7f d5    	vpermt2ps zmm18,zmm12,zmm5
  a18271:	62 d1 b5 48 14 ee    	vunpcklpd zmm5,zmm9,zmm14
  a18277:	62 d1 b5 48 15 d6    	vunpckhpd zmm2,zmm9,zmm14
  a1827d:	62 51 95 48 14 e3    	vunpcklpd zmm12,zmm13,zmm11
  a18283:	62 51 95 48 15 f3    	vunpckhpd zmm14,zmm13,zmm11
  a18289:	62 f1 fd 48 14 e3    	vunpcklpd zmm4,zmm0,zmm3
  a1828f:	62 f1 fd 48 15 db    	vunpckhpd zmm3,zmm0,zmm3
  a18295:	62 a1 bd 48 14 da    	vunpcklpd zmm19,zmm8,zmm18
  a1829b:	62 31 bd 48 15 c2    	vunpckhpd zmm8,zmm8,zmm18
  a182a1:	62 71 7c 48 28 0d 55 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6aeb55]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a182a8:	eb 6a ff 
  a182ab:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a182b1:	62 d2 35 48 7f c4    	vpermt2ps zmm0,zmm9,zmm12
  a182b7:	62 e1 7c 48 28 25 7f 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6aeb7f]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a182be:	eb 6a ff 
  a182c1:	62 d2 5d 40 7f ec    	vpermt2ps zmm5,zmm20,zmm12
  a182c7:	62 71 7c 48 28 ea    	vmovaps zmm13,zmm2
  a182cd:	62 52 35 48 7f ee    	vpermt2ps zmm13,zmm9,zmm14
  a182d3:	62 d2 5d 40 7f d6    	vpermt2ps zmm2,zmm20,zmm14
  a182d9:	62 71 7c 48 28 fc    	vmovaps zmm15,zmm4
  a182df:	62 32 35 48 7f fb    	vpermt2ps zmm15,zmm9,zmm19
  a182e5:	62 b2 5d 40 7f e3    	vpermt2ps zmm4,zmm20,zmm19
  a182eb:	62 71 7c 48 28 f3    	vmovaps zmm14,zmm3
  a182f1:	62 52 35 48 7f f0    	vpermt2ps zmm14,zmm9,zmm8
  a182f7:	62 d2 5d 40 7f d8    	vpermt2ps zmm3,zmm20,zmm8
  a182fd:	62 51 fd 40 14 e2    	vunpcklpd zmm12,zmm16,zmm10
  a18303:	62 51 fd 40 15 c2    	vunpckhpd zmm8,zmm16,zmm10
  a18309:	62 51 f5 40 14 d3    	vunpcklpd zmm10,zmm17,zmm11
  a1830f:	62 c1 f5 40 15 c3    	vunpckhpd zmm16,zmm17,zmm11
  a18315:	62 71 f5 48 14 df    	vunpcklpd zmm11,zmm1,zmm7
  a1831b:	62 f1 f5 48 15 ff    	vunpckhpd zmm7,zmm1,zmm7
  a18321:	62 b1 cd 48 14 ca    	vunpcklpd zmm1,zmm6,zmm18
  a18327:	62 a1 cd 48 15 ca    	vunpckhpd zmm17,zmm6,zmm18
  a1832d:	62 d1 7c 48 28 f4    	vmovaps zmm6,zmm12
  a18333:	62 d2 35 48 7f f2    	vpermt2ps zmm6,zmm9,zmm10
  a18339:	62 52 5d 40 7f e2    	vpermt2ps zmm12,zmm20,zmm10
  a1833f:	62 51 7c 48 28 d0    	vmovaps zmm10,zmm8
  a18345:	62 32 35 48 7f d0    	vpermt2ps zmm10,zmm9,zmm16
  a1834b:	62 32 5d 40 7f c0    	vpermt2ps zmm8,zmm20,zmm16
  a18351:	62 c1 7c 48 28 db    	vmovaps zmm19,zmm11
  a18357:	62 e2 35 48 7f d9    	vpermt2ps zmm19,zmm9,zmm1
  a1835d:	62 72 5d 40 7f d9    	vpermt2ps zmm11,zmm20,zmm1
  a18363:	62 32 45 48 77 c9    	vpermi2ps zmm9,zmm7,zmm17
  a18369:	62 b2 5d 40 7f f9    	vpermt2ps zmm7,zmm20,zmm17
  a1836f:	62 e1 7c 48 10 62 02 	vmovups zmm20,ZMMWORD PTR [rdx+0x80]
  a18376:	62 e1 7c 48 10 52 03 	vmovups zmm18,ZMMWORD PTR [rdx+0xc0]
  a1837d:	62 e1 7c 48 10 6a 04 	vmovups zmm21,ZMMWORD PTR [rdx+0x100]
  a18384:	62 e1 7c 48 10 72 05 	vmovups zmm22,ZMMWORD PTR [rdx+0x140]
  a1838b:	62 e1 7c 48 10 4a 06 	vmovups zmm17,ZMMWORD PTR [rdx+0x180]
  a18392:	62 e1 7c 48 10 42 07 	vmovups zmm16,ZMMWORD PTR [rdx+0x1c0]
  a18399:	62 e1 7c 48 10 7a 08 	vmovups zmm23,ZMMWORD PTR [rdx+0x200]
  a183a0:	62 61 7c 48 10 42 09 	vmovups zmm24,ZMMWORD PTR [rdx+0x240]
  a183a7:	62 61 7c 48 10 4a 0a 	vmovups zmm25,ZMMWORD PTR [rdx+0x280]
  a183ae:	62 61 7c 48 10 52 0b 	vmovups zmm26,ZMMWORD PTR [rdx+0x2c0]
  a183b5:	62 61 7c 48 10 5a 0c 	vmovups zmm27,ZMMWORD PTR [rdx+0x300]
  a183bc:	62 b1 04 48 59 cf    	vmulps zmm1,zmm15,zmm23
  a183c2:	62 92 65 40 bc c8    	vfnmadd231ps zmm1,zmm19,zmm24
  a183c8:	62 a1 64 40 59 df    	vmulps zmm19,zmm19,zmm23
  a183ce:	62 e1 7c 48 10 7a 0d 	vmovups zmm23,ZMMWORD PTR [rdx+0x340]
  a183d5:	62 c2 3d 40 b8 df    	vfmadd231ps zmm19,zmm24,zmm15
  a183db:	62 71 7c 48 10 7a 0e 	vmovups zmm15,ZMMWORD PTR [rdx+0x380]
  a183e2:	62 21 14 48 59 c5    	vmulps zmm24,zmm13,zmm21
  a183e8:	62 22 2d 48 bc c6    	vfnmadd231ps zmm24,zmm10,zmm22
  a183ee:	62 31 2c 48 59 d5    	vmulps zmm10,zmm10,zmm21
  a183f4:	62 e1 7c 48 10 6a 0f 	vmovups zmm21,ZMMWORD PTR [rdx+0x3c0]
  a183fb:	62 52 4d 40 b8 d5    	vfmadd231ps zmm10,zmm22,zmm13
  a18401:	62 81 0c 48 59 f3    	vmulps zmm22,zmm14,zmm27
  a18407:	62 a2 35 48 bc f7    	vfnmadd231ps zmm22,zmm9,zmm23
  a1840d:	62 21 54 48 59 e4    	vmulps zmm28,zmm5,zmm20
  a18413:	62 22 1d 48 bc e2    	vfnmadd231ps zmm28,zmm12,zmm18
  a18419:	62 11 34 48 59 eb    	vmulps zmm13,zmm9,zmm27
  a1841f:	62 01 5c 48 59 d9    	vmulps zmm27,zmm4,zmm25
  a18425:	62 02 25 48 bc da    	vfnmadd231ps zmm27,zmm11,zmm26
  a1842b:	62 52 45 40 b8 ee    	vfmadd231ps zmm13,zmm23,zmm14
  a18431:	62 11 1c 40 58 cb    	vaddps zmm9,zmm28,zmm27
  a18437:	62 a1 6c 48 59 f9    	vmulps zmm23,zmm2,zmm17
  a1843d:	62 a2 3d 48 bc f8    	vfnmadd231ps zmm23,zmm8,zmm16
  a18443:	62 a1 1c 48 59 e4    	vmulps zmm20,zmm12,zmm20
  a18449:	62 41 64 48 59 ef    	vmulps zmm29,zmm3,zmm15
  a1844f:	62 22 45 48 bc ed    	vfnmadd231ps zmm29,zmm7,zmm21
  a18455:	62 e2 6d 40 b8 e5    	vfmadd231ps zmm20,zmm18,zmm5
  a1845b:	62 11 44 40 58 e5    	vaddps zmm12,zmm23,zmm29
  a18461:	62 71 64 40 58 f6    	vaddps zmm14,zmm19,zmm6
  a18467:	62 81 24 48 59 d1    	vmulps zmm18,zmm11,zmm25
  a1846d:	62 51 2c 48 58 dd    	vaddps zmm11,zmm10,zmm13
  a18473:	62 e2 2d 40 b8 d4    	vfmadd231ps zmm18,zmm26,zmm4
  a18479:	62 b1 3c 48 59 e1    	vmulps zmm4,zmm8,zmm17
  a1847f:	62 f2 7d 40 b8 e2    	vfmadd231ps zmm4,zmm16,zmm2
  a18485:	62 d1 44 48 59 d7    	vmulps zmm2,zmm7,zmm15
  a1848b:	62 f2 55 40 b8 d3    	vfmadd231ps zmm2,zmm21,zmm3
  a18491:	62 81 1c 40 5c eb    	vsubps zmm21,zmm28,zmm27
  a18497:	62 21 5c 40 5c ca    	vsubps zmm25,zmm20,zmm18
  a1849d:	62 91 54 40 58 d9    	vaddps zmm3,zmm21,zmm25
  a184a3:	62 62 7d 48 18 15 ef 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff65ceef]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a184aa:	ce 65 ff 
  a184ad:	62 91 64 48 59 ea    	vmulps zmm5,zmm3,zmm26
  a184b3:	62 61 5c 48 5c da    	vsubps zmm27,zmm4,zmm2
  a184b9:	62 81 44 40 5c fd    	vsubps zmm23,zmm23,zmm29
  a184bf:	62 b1 24 40 5c df    	vsubps zmm3,zmm27,zmm23
  a184c5:	62 11 64 48 59 c2    	vmulps zmm8,zmm3,zmm26
  a184cb:	62 31 4c 48 5c fb    	vsubps zmm15,zmm6,zmm19
  a184d1:	62 81 4c 40 5c c0    	vsubps zmm16,zmm22,zmm24
  a184d7:	62 e1 5c 28 58 da    	vaddps ymm19,ymm4,ymm2
  a184dd:	62 a1 5c 20 58 e2    	vaddps ymm20,ymm20,ymm18
  a184e3:	62 b1 5c 20 58 e3    	vaddps ymm4,ymm20,ymm19
  a184e9:	c4 c1 24 58 f6       	vaddps ymm6,ymm11,ymm14
  a184ee:	62 e1 4c 28 58 d4    	vaddps ymm18,ymm6,ymm4
  a184f4:	c4 c1 30 58 fc       	vaddps xmm7,xmm9,xmm12
  a184f9:	62 a1 3c 00 58 f6    	vaddps xmm22,xmm24,xmm22
  a184ff:	62 61 7c 08 58 c1    	vaddps xmm24,xmm0,xmm1
  a18505:	62 a1 3c 00 58 ce    	vaddps xmm17,xmm24,xmm22
  a1850b:	62 f1 74 00 58 d7    	vaddps xmm2,xmm17,xmm7
  a18511:	c5 fc 28 1d a7 fd 65 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff65fda7]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a18518:	ff 
  a18519:	62 b2 65 28 7f d2    	vpermt2ps ymm2,ymm3,ymm18
  a1851f:	62 81 44 20 58 d3    	vaddps ymm18,ymm23,ymm27
  a18525:	62 81 6c 20 59 fa    	vmulps ymm23,ymm18,ymm26
  a1852b:	62 a1 34 20 5c d5    	vsubps ymm18,ymm25,ymm21
  a18531:	62 81 6c 20 59 ea    	vmulps ymm21,ymm18,ymm26
  a18537:	62 a1 54 20 5c d7    	vsubps ymm18,ymm21,ymm23
  a1853d:	62 41 7c 20 58 cf    	vaddps ymm25,ymm16,ymm15
  a18543:	62 21 34 20 58 d2    	vaddps ymm26,ymm25,ymm18
  a18549:	62 41 54 08 58 d8    	vaddps xmm27,xmm5,xmm8
  a1854f:	c4 41 28 5c d5       	vsubps xmm10,xmm10,xmm13
  a18554:	c5 78 5c e9          	vsubps xmm13,xmm0,xmm1
  a18558:	62 41 14 08 58 e2    	vaddps xmm28,xmm13,xmm10
  a1855e:	62 91 1c 00 58 c3    	vaddps xmm0,xmm28,xmm27
  a18564:	62 92 65 28 7f c2    	vpermt2ps ymm0,ymm3,ymm26
  a1856a:	c4 41 1c 5c c9       	vsubps ymm9,ymm12,ymm9
  a1856f:	c4 41 0c 5c db       	vsubps ymm11,ymm14,ymm11
  a18574:	62 31 5c 00 5c e3    	vsubps xmm12,xmm20,xmm19
  a1857a:	c4 41 24 58 f1       	vaddps ymm14,ymm11,ymm9
  a1857f:	62 a1 3c 00 5c de    	vsubps xmm19,xmm24,xmm22
  a18585:	62 d1 64 00 58 cc    	vaddps xmm1,xmm19,xmm12
  a1858b:	62 d2 65 28 7f ce    	vpermt2ps ymm1,ymm3,ymm14
  a18591:	c5 bc 5c ed          	vsubps ymm5,ymm8,ymm5
  a18595:	62 31 04 28 5c c0    	vsubps ymm8,ymm15,ymm16
  a1859b:	62 31 54 00 58 f7    	vaddps xmm14,xmm21,xmm23
  a185a1:	c5 3c 58 fd          	vaddps ymm15,ymm8,ymm5
  a185a5:	c4 41 10 5c d2       	vsubps xmm10,xmm13,xmm10
  a185aa:	c4 41 28 58 ee       	vaddps xmm13,xmm10,xmm14
  a185af:	62 52 65 28 7f ef    	vpermt2ps ymm13,ymm3,ymm15
  a185b5:	c5 cc 5c e4          	vsubps ymm4,ymm6,ymm4
  a185b9:	62 f1 74 00 5c f7    	vsubps xmm6,xmm17,xmm7
  a185bf:	62 f2 65 28 7f f4    	vpermt2ps ymm6,ymm3,ymm4
  a185c5:	62 b1 34 20 5c e2    	vsubps ymm4,ymm25,ymm18
  a185cb:	62 91 1c 00 5c fb    	vsubps xmm7,xmm28,xmm27
  a185d1:	62 f2 65 28 7f fc    	vpermt2ps ymm7,ymm3,ymm4
  a185d7:	c4 c1 24 5c e1       	vsubps ymm4,ymm11,ymm9
  a185dc:	62 51 64 00 5c cc    	vsubps xmm9,xmm19,xmm12
  a185e2:	62 72 65 28 7f cc    	vpermt2ps ymm9,ymm3,ymm4
  a185e8:	c5 bc 5c e5          	vsubps ymm4,ymm8,ymm5
  a185ec:	c4 c1 28 5c ee       	vsubps xmm5,xmm10,xmm14
  a185f1:	62 f2 65 28 7f ec    	vpermt2ps ymm5,ymm3,ymm4
  a185f7:	c4 e3 7d 19 d3 01    	vextractf128 xmm3,ymm2,0x1
  a185fd:	c5 f8 13 5e 10       	vmovlps QWORD PTR [rsi+0x10],xmm3
  a18602:	c5 f8 11 16          	vmovups XMMWORD PTR [rsi],xmm2
  a18606:	c4 e3 7d 19 c2 01    	vextractf128 xmm2,ymm0,0x1
  a1860c:	c5 f8 13 56 28       	vmovlps QWORD PTR [rsi+0x28],xmm2
  a18611:	c5 f8 11 46 18       	vmovups XMMWORD PTR [rsi+0x18],xmm0
  a18616:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  a1861c:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  a18621:	c5 f8 11 4e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm1
  a18626:	c4 63 7d 19 e8 01    	vextractf128 xmm0,ymm13,0x1
  a1862c:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  a18631:	c5 78 11 6e 48       	vmovups XMMWORD PTR [rsi+0x48],xmm13
  a18636:	c4 e3 7d 19 f0 01    	vextractf128 xmm0,ymm6,0x1
  a1863c:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  a18641:	c5 f8 11 76 60       	vmovups XMMWORD PTR [rsi+0x60],xmm6
  a18646:	c4 e3 7d 19 f8 01    	vextractf128 xmm0,ymm7,0x1
  a1864c:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  a18653:	00 
  a18654:	c5 f8 11 7e 78       	vmovups XMMWORD PTR [rsi+0x78],xmm7
  a18659:	c4 63 7d 19 c8 01    	vextractf128 xmm0,ymm9,0x1
  a1865f:	c5 f8 13 86 a0 00 00 	vmovlps QWORD PTR [rsi+0xa0],xmm0
  a18666:	00 
  a18667:	c5 78 11 8e 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm9
  a1866e:	00 
  a1866f:	c4 e3 7d 19 e8 01    	vextractf128 xmm0,ymm5,0x1
  a18675:	c5 f8 13 86 b8 00 00 	vmovlps QWORD PTR [rsi+0xb8],xmm0
  a1867c:	00 
  a1867d:	c5 f8 11 ae a8 00 00 	vmovups XMMWORD PTR [rsi+0xa8],xmm5
  a18684:	00 
  a18685:	48 89 ec             	mov    rsp,rbp
  a18688:	5d                   	pop    rbp
  a18689:	c5 f8 77             	vzeroupper
  a1868c:	c3                   	ret
