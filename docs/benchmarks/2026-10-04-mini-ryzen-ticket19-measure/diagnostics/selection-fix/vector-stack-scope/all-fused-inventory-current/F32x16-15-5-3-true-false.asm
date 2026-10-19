
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a02480 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a02480:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a02485:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a02489:	c5 f8 10 67 18       	vmovups xmm4,XMMWORD PTR [rdi+0x18]
  a0248e:	c5 f8 10 6f 30       	vmovups xmm5,XMMWORD PTR [rdi+0x30]
  a02493:	c5 f8 10 77 48       	vmovups xmm6,XMMWORD PTR [rdi+0x48]
  a02498:	62 f3 75 48 18 d0 01 	vinsertf32x4 zmm2,zmm1,xmm0,0x1
  a0249f:	62 f1 7c 48 28 3d d7 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff68bad7]        # 8df80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b430>
  a024a6:	ba 68 ff 
  a024a9:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a024ad:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a024b3:	62 f2 45 48 7f d8    	vpermt2ps zmm3,zmm7,zmm0
  a024b9:	62 f1 7c 48 28 0d fd 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff68bafd]        # 8dfc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b470>
  a024c0:	ba 68 ff 
  a024c3:	62 f2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm0
  a024c9:	c5 7b 10 47 28       	vmovsd xmm8,QWORD PTR [rdi+0x28]
  a024ce:	62 d3 5d 48 18 e0 01 	vinsertf32x4 zmm4,zmm4,xmm8,0x1
  a024d5:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a024db:	62 72 45 48 7f c0    	vpermt2ps zmm8,zmm7,zmm0
  a024e1:	62 f2 75 48 7f e0    	vpermt2ps zmm4,zmm1,zmm0
  a024e7:	c5 7b 10 4f 40       	vmovsd xmm9,QWORD PTR [rdi+0x40]
  a024ec:	62 53 55 48 18 c9 01 	vinsertf32x4 zmm9,zmm5,xmm9,0x1
  a024f3:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a024f9:	62 72 45 48 7f d0    	vpermt2ps zmm10,zmm7,zmm0
  a024ff:	62 72 75 48 7f c8    	vpermt2ps zmm9,zmm1,zmm0
  a02505:	c5 fb 10 6f 58       	vmovsd xmm5,QWORD PTR [rdi+0x58]
  a0250a:	62 f3 4d 48 18 f5 01 	vinsertf32x4 zmm6,zmm6,xmm5,0x1
  a02511:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a02517:	62 72 45 48 7f d8    	vpermt2ps zmm11,zmm7,zmm0
  a0251d:	62 f2 75 48 7f f0    	vpermt2ps zmm6,zmm1,zmm0
  a02523:	c5 fb 10 6f 70       	vmovsd xmm5,QWORD PTR [rdi+0x70]
  a02528:	c5 78 10 67 60       	vmovups xmm12,XMMWORD PTR [rdi+0x60]
  a0252d:	62 73 1d 48 18 e5 01 	vinsertf32x4 zmm12,zmm12,xmm5,0x1
  a02534:	62 f2 1d 48 77 f8    	vpermi2ps zmm7,zmm12,zmm0
  a0253a:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a02540:	62 51 5c 48 58 ec    	vaddps zmm13,zmm4,zmm12
  a02546:	62 d1 6c 48 58 cd    	vaddps zmm1,zmm2,zmm13
  a0254c:	62 71 34 48 58 f6    	vaddps zmm14,zmm9,zmm6
  a02552:	62 d1 74 48 58 ee    	vaddps zmm5,zmm1,zmm14
  a02558:	62 71 3c 48 58 ff    	vaddps zmm15,zmm8,zmm7
  a0255e:	62 d1 64 48 58 cf    	vaddps zmm1,zmm3,zmm15
  a02564:	62 c1 2c 48 58 c3    	vaddps zmm16,zmm10,zmm11
  a0256a:	62 b1 74 48 58 c8    	vaddps zmm1,zmm1,zmm16
  a02570:	62 e2 7d 48 18 0d 6e 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff67316e]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a02577:	31 67 ff 
  a0257a:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a02580:	62 e2 15 48 a8 d2    	vfmadd213ps zmm18,zmm13,zmm2
  a02586:	62 e2 7d 48 18 1d b4 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff6730b4]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a0258d:	30 67 ff 
  a02590:	62 a2 0d 48 bc d3    	vfnmadd231ps zmm18,zmm14,zmm19
  a02596:	62 f1 3c 48 5c ff    	vsubps zmm7,zmm8,zmm7
  a0259c:	62 72 7d 48 18 05 b2 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff6731b2]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a025a3:	31 67 ff 
  a025a6:	62 51 2c 48 5c d3    	vsubps zmm10,zmm10,zmm11
  a025ac:	62 51 2c 48 59 d8    	vmulps zmm11,zmm10,zmm8
  a025b2:	62 e2 7d 48 18 25 e4 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff672de4]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a025b9:	2d 67 ff 
  a025bc:	62 32 45 48 b8 dc    	vfmadd231ps zmm11,zmm7,zmm20
  a025c2:	62 c1 6c 40 58 eb    	vaddps zmm21,zmm18,zmm11
  a025c8:	62 a1 7c 48 28 f1    	vmovaps zmm22,zmm17
  a025ce:	62 e2 05 48 a8 f3    	vfmadd213ps zmm22,zmm15,zmm3
  a025d4:	62 a2 7d 40 bc f3    	vfnmadd231ps zmm22,zmm16,zmm19
  a025da:	62 51 5c 48 5c e4    	vsubps zmm12,zmm4,zmm12
  a025e0:	62 f1 34 48 5c f6    	vsubps zmm6,zmm9,zmm6
  a025e6:	62 51 4c 48 59 c8    	vmulps zmm9,zmm6,zmm8
  a025ec:	62 32 1d 48 b8 cc    	vfmadd231ps zmm9,zmm12,zmm20
  a025f2:	62 d1 4c 40 5c e1    	vsubps zmm4,zmm22,zmm9
  a025f8:	62 d2 65 40 bc d5    	vfnmadd231ps zmm2,zmm19,zmm13
  a025fe:	62 d2 75 40 b8 d6    	vfmadd231ps zmm2,zmm17,zmm14
  a02604:	62 d1 44 48 59 f8    	vmulps zmm7,zmm7,zmm8
  a0260a:	62 d2 5d 40 bc fa    	vfnmadd231ps zmm7,zmm20,zmm10
  a02610:	62 71 6c 48 58 d7    	vaddps zmm10,zmm2,zmm7
  a02616:	62 b2 05 48 bc db    	vfnmadd231ps zmm3,zmm15,zmm19
  a0261c:	62 b2 7d 40 b8 d9    	vfmadd231ps zmm3,zmm16,zmm17
  a02622:	62 51 1c 48 59 c0    	vmulps zmm8,zmm12,zmm8
  a02628:	62 32 4d 48 bc c4    	vfnmadd231ps zmm8,zmm6,zmm20
  a0262e:	62 d1 64 48 5c f0    	vsubps zmm6,zmm3,zmm8
  a02634:	62 f1 6c 48 5c d7    	vsubps zmm2,zmm2,zmm7
  a0263a:	62 f1 3c 48 58 db    	vaddps zmm3,zmm8,zmm3
  a02640:	62 d1 6c 40 5c fb    	vsubps zmm7,zmm18,zmm11
  a02646:	62 31 34 48 58 c6    	vaddps zmm8,zmm9,zmm22
  a0264c:	62 71 7c 48 28 0d 2a 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6c492a]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a02653:	49 6c ff 
  a02656:	62 f2 35 48 7f e8    	vpermt2ps zmm5,zmm9,zmm0
  a0265c:	62 e2 35 48 7f e8    	vpermt2ps zmm21,zmm9,zmm0
  a02662:	62 72 35 48 7f d0    	vpermt2ps zmm10,zmm9,zmm0
  a02668:	62 f2 35 48 7f d0    	vpermt2ps zmm2,zmm9,zmm0
  a0266e:	62 f2 35 48 7f f8    	vpermt2ps zmm7,zmm9,zmm0
  a02674:	c4 41 20 57 db       	vxorps xmm11,xmm11,xmm11
  a02679:	62 52 35 48 7f db    	vpermt2ps zmm11,zmm9,zmm11
  a0267f:	62 71 7c 48 28 25 77 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6c4877]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a02686:	48 6c ff 
  a02689:	62 f2 1d 48 7f ef    	vpermt2ps zmm5,zmm12,zmm7
  a0268f:	62 c2 1d 48 7f eb    	vpermt2ps zmm21,zmm12,zmm11
  a02695:	62 52 1d 48 7f d3    	vpermt2ps zmm10,zmm12,zmm11
  a0269b:	62 d2 1d 48 7f d3    	vpermt2ps zmm2,zmm12,zmm11
  a026a1:	62 d1 d5 48 14 fa    	vunpcklpd zmm7,zmm5,zmm10
  a026a7:	62 d1 d5 48 15 ea    	vunpckhpd zmm5,zmm5,zmm10
  a026ad:	62 71 d5 40 14 d2    	vunpcklpd zmm10,zmm21,zmm2
  a026b3:	62 71 d5 40 15 ea    	vunpckhpd zmm13,zmm21,zmm2
  a026b9:	62 71 7c 48 28 35 3d 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6c473d]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a026c0:	47 6c ff 
  a026c3:	62 f1 7c 48 28 d7    	vmovaps zmm2,zmm7
  a026c9:	62 d2 0d 48 7f d2    	vpermt2ps zmm2,zmm14,zmm10
  a026cf:	62 71 7c 48 28 3d 67 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6c4767]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a026d6:	47 6c ff 
  a026d9:	62 d2 05 48 7f fa    	vpermt2ps zmm7,zmm15,zmm10
  a026df:	62 d2 0d 48 7f ed    	vpermt2ps zmm5,zmm14,zmm13
  a026e5:	62 f2 35 48 7f c8    	vpermt2ps zmm1,zmm9,zmm0
  a026eb:	62 f2 35 48 7f e0    	vpermt2ps zmm4,zmm9,zmm0
  a026f1:	62 f2 35 48 7f f0    	vpermt2ps zmm6,zmm9,zmm0
  a026f7:	62 f2 35 48 7f d8    	vpermt2ps zmm3,zmm9,zmm0
  a026fd:	62 72 35 48 7f c0    	vpermt2ps zmm8,zmm9,zmm0
  a02703:	62 d2 1d 48 7f c8    	vpermt2ps zmm1,zmm12,zmm8
  a02709:	62 d2 1d 48 7f e3    	vpermt2ps zmm4,zmm12,zmm11
  a0270f:	62 d2 1d 48 7f f3    	vpermt2ps zmm6,zmm12,zmm11
  a02715:	62 d2 1d 48 7f db    	vpermt2ps zmm3,zmm12,zmm11
  a0271b:	62 f1 f5 48 14 c6    	vunpcklpd zmm0,zmm1,zmm6
  a02721:	62 f1 f5 48 15 ce    	vunpckhpd zmm1,zmm1,zmm6
  a02727:	62 f1 dd 48 14 f3    	vunpcklpd zmm6,zmm4,zmm3
  a0272d:	62 f1 dd 48 15 db    	vunpckhpd zmm3,zmm4,zmm3
  a02733:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a02739:	62 f2 0d 48 7f e6    	vpermt2ps zmm4,zmm14,zmm6
  a0273f:	62 f2 05 48 7f c6    	vpermt2ps zmm0,zmm15,zmm6
  a02745:	62 f2 0d 48 7f cb    	vpermt2ps zmm1,zmm14,zmm3
  a0274b:	62 f1 7c 48 10 5a 02 	vmovups zmm3,ZMMWORD PTR [rdx+0x80]
  a02752:	62 f1 7c 48 10 72 03 	vmovups zmm6,ZMMWORD PTR [rdx+0xc0]
  a02759:	62 71 7c 48 10 42 04 	vmovups zmm8,ZMMWORD PTR [rdx+0x100]
  a02760:	62 71 7c 48 10 4a 05 	vmovups zmm9,ZMMWORD PTR [rdx+0x140]
  a02767:	62 71 44 48 59 d3    	vmulps zmm10,zmm7,zmm3
  a0276d:	62 72 7d 48 bc d6    	vfnmadd231ps zmm10,zmm0,zmm6
  a02773:	62 51 54 48 59 d8    	vmulps zmm11,zmm5,zmm8
  a02779:	62 52 75 48 bc d9    	vfnmadd231ps zmm11,zmm1,zmm9
  a0277f:	62 51 2c 48 58 e3    	vaddps zmm12,zmm10,zmm11
  a02785:	62 f1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm3
  a0278b:	62 f2 4d 48 b8 c7    	vfmadd231ps zmm0,zmm6,zmm7
  a02791:	62 d1 74 48 59 c8    	vmulps zmm1,zmm1,zmm8
  a02797:	62 f2 35 48 b8 cd    	vfmadd231ps zmm1,zmm9,zmm5
  a0279d:	62 f1 7c 48 58 d9    	vaddps zmm3,zmm0,zmm1
  a027a3:	62 f2 7d 48 18 2d b3 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff672cb3]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a027aa:	2c 67 ff 
  a027ad:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a027b3:	62 f2 1d 48 ac f2    	vfnmadd213ps zmm6,zmm12,zmm2
  a027b9:	62 f2 7d 48 18 3d 11 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff672b11]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a027c0:	2b 67 ff 
  a027c3:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a027c9:	62 f1 7c 48 59 c7    	vmulps zmm0,zmm0,zmm7
  a027cf:	62 f1 4c 48 58 c8    	vaddps zmm1,zmm6,zmm0
  a027d5:	62 f2 65 48 ac ec    	vfnmadd213ps zmm5,zmm3,zmm4
  a027db:	62 51 2c 48 5c c3    	vsubps zmm8,zmm10,zmm11
  a027e1:	62 f1 3c 48 59 ff    	vmulps zmm7,zmm8,zmm7
  a027e7:	62 71 54 48 5c c7    	vsubps zmm8,zmm5,zmm7
  a027ed:	62 f1 4c 48 5c c0    	vsubps zmm0,zmm6,zmm0
  a027f3:	62 f1 54 48 58 ef    	vaddps zmm5,zmm5,zmm7
  a027f9:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a027ff:	62 d1 6c 48 58 d4    	vaddps zmm2,zmm2,zmm12
  a02805:	62 f1 7c 48 28 25 f1 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff68b7f1]        # 8e000 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b4b0>
  a0280c:	b7 68 ff 
  a0280f:	62 f2 5d 48 7f da    	vpermt2ps zmm3,zmm4,zmm2
  a02815:	c5 fc 11 1e          	vmovups YMMWORD PTR [rsi],ymm3
  a02819:	62 f3 7d 48 19 da 02 	vextractf32x4 xmm2,zmm3,0x2
  a02820:	c5 f8 13 56 20       	vmovlps QWORD PTR [rsi+0x20],xmm2
  a02825:	62 72 5d 48 7f c1    	vpermt2ps zmm8,zmm4,zmm1
  a0282b:	c5 7c 11 46 28       	vmovups YMMWORD PTR [rsi+0x28],ymm8
  a02830:	62 73 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm8,0x2
  a02837:	c5 f8 13 4e 48       	vmovlps QWORD PTR [rsi+0x48],xmm1
  a0283c:	62 f2 5d 48 7f e8    	vpermt2ps zmm5,zmm4,zmm0
  a02842:	c5 fc 11 6e 50       	vmovups YMMWORD PTR [rsi+0x50],ymm5
  a02847:	62 f3 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm5,0x2
  a0284e:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  a02853:	c5 f8 77             	vzeroupper
  a02856:	c3                   	ret
