
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a613c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a613c0:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a613c5:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a613c9:	c5 f8 10 67 18       	vmovups xmm4,XMMWORD PTR [rdi+0x18]
  a613ce:	c5 f8 10 6f 30       	vmovups xmm5,XMMWORD PTR [rdi+0x30]
  a613d3:	c5 f8 10 77 48       	vmovups xmm6,XMMWORD PTR [rdi+0x48]
  a613d8:	62 f3 75 48 18 d0 01 	vinsertf32x4 zmm2,zmm1,xmm0,0x1
  a613df:	62 f1 7c 48 28 3d 97 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff632997]        # 93d80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21230>
  a613e6:	29 63 ff 
  a613e9:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a613ed:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a613f3:	62 f2 45 48 7f d8    	vpermt2ps zmm3,zmm7,zmm0
  a613f9:	62 f1 7c 48 28 0d bd 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6329bd]        # 93dc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21270>
  a61400:	29 63 ff 
  a61403:	62 f2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm0
  a61409:	c5 7b 10 47 28       	vmovsd xmm8,QWORD PTR [rdi+0x28]
  a6140e:	62 d3 5d 48 18 e0 01 	vinsertf32x4 zmm4,zmm4,xmm8,0x1
  a61415:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a6141b:	62 72 45 48 7f c0    	vpermt2ps zmm8,zmm7,zmm0
  a61421:	62 f2 75 48 7f e0    	vpermt2ps zmm4,zmm1,zmm0
  a61427:	c5 7b 10 4f 40       	vmovsd xmm9,QWORD PTR [rdi+0x40]
  a6142c:	62 53 55 48 18 c9 01 	vinsertf32x4 zmm9,zmm5,xmm9,0x1
  a61433:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a61439:	62 72 45 48 7f d0    	vpermt2ps zmm10,zmm7,zmm0
  a6143f:	62 72 75 48 7f c8    	vpermt2ps zmm9,zmm1,zmm0
  a61445:	c5 fb 10 6f 58       	vmovsd xmm5,QWORD PTR [rdi+0x58]
  a6144a:	62 f3 4d 48 18 f5 01 	vinsertf32x4 zmm6,zmm6,xmm5,0x1
  a61451:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a61457:	62 72 45 48 7f d8    	vpermt2ps zmm11,zmm7,zmm0
  a6145d:	62 f2 75 48 7f f0    	vpermt2ps zmm6,zmm1,zmm0
  a61463:	c5 fb 10 6f 70       	vmovsd xmm5,QWORD PTR [rdi+0x70]
  a61468:	c5 78 10 67 60       	vmovups xmm12,XMMWORD PTR [rdi+0x60]
  a6146d:	62 73 1d 48 18 e5 01 	vinsertf32x4 zmm12,zmm12,xmm5,0x1
  a61474:	62 f2 1d 48 77 f8    	vpermi2ps zmm7,zmm12,zmm0
  a6147a:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a61480:	62 71 3c 48 58 ef    	vaddps zmm13,zmm8,zmm7
  a61486:	62 d1 64 48 58 cd    	vaddps zmm1,zmm3,zmm13
  a6148c:	62 51 2c 48 58 f3    	vaddps zmm14,zmm10,zmm11
  a61492:	62 d1 74 48 58 ee    	vaddps zmm5,zmm1,zmm14
  a61498:	62 51 5c 48 58 fc    	vaddps zmm15,zmm4,zmm12
  a6149e:	62 d1 6c 48 58 cf    	vaddps zmm1,zmm2,zmm15
  a614a4:	62 e1 34 48 58 c6    	vaddps zmm16,zmm9,zmm6
  a614aa:	62 b1 74 48 58 c8    	vaddps zmm1,zmm1,zmm16
  a614b0:	62 e2 7d 48 18 0d 2e 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff61422e]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a614b7:	42 61 ff 
  a614ba:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a614c0:	62 e2 15 48 a8 d3    	vfmadd213ps zmm18,zmm13,zmm3
  a614c6:	62 e2 7d 48 18 1d 74 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff614174]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a614cd:	41 61 ff 
  a614d0:	62 a2 0d 48 bc d3    	vfnmadd231ps zmm18,zmm14,zmm19
  a614d6:	62 51 5c 48 5c e4    	vsubps zmm12,zmm4,zmm12
  a614dc:	62 e2 7d 48 18 25 72 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff614272]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a614e3:	42 61 ff 
  a614e6:	62 f1 34 48 5c f6    	vsubps zmm6,zmm9,zmm6
  a614ec:	62 31 4c 48 59 cc    	vmulps zmm9,zmm6,zmm20
  a614f2:	62 e2 7d 48 18 2d a4 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff613ea4]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a614f9:	3e 61 ff 
  a614fc:	62 32 1d 48 b8 cd    	vfmadd231ps zmm9,zmm12,zmm21
  a61502:	62 c1 6c 40 58 f1    	vaddps zmm22,zmm18,zmm9
  a61508:	62 a1 7c 48 28 f9    	vmovaps zmm23,zmm17
  a6150e:	62 e2 05 48 a8 fa    	vfmadd213ps zmm23,zmm15,zmm2
  a61514:	62 a2 7d 40 bc fb    	vfnmadd231ps zmm23,zmm16,zmm19
  a6151a:	62 f1 3c 48 5c ff    	vsubps zmm7,zmm8,zmm7
  a61520:	62 51 2c 48 5c c3    	vsubps zmm8,zmm10,zmm11
  a61526:	62 31 3c 48 59 d4    	vmulps zmm10,zmm8,zmm20
  a6152c:	62 32 45 48 b8 d5    	vfmadd231ps zmm10,zmm7,zmm21
  a61532:	62 d1 44 40 5c e2    	vsubps zmm4,zmm23,zmm10
  a61538:	62 d2 65 40 bc dd    	vfnmadd231ps zmm3,zmm19,zmm13
  a6153e:	62 d2 75 40 b8 de    	vfmadd231ps zmm3,zmm17,zmm14
  a61544:	62 31 1c 48 59 dc    	vmulps zmm11,zmm12,zmm20
  a6154a:	62 72 55 40 bc de    	vfnmadd231ps zmm11,zmm21,zmm6
  a61550:	62 d1 64 48 58 f3    	vaddps zmm6,zmm3,zmm11
  a61556:	62 b2 05 48 bc d3    	vfnmadd231ps zmm2,zmm15,zmm19
  a6155c:	62 b2 7d 40 b8 d1    	vfmadd231ps zmm2,zmm16,zmm17
  a61562:	62 b1 44 48 59 fc    	vmulps zmm7,zmm7,zmm20
  a61568:	62 b2 3d 48 bc fd    	vfnmadd231ps zmm7,zmm8,zmm21
  a6156e:	62 71 6c 48 5c c7    	vsubps zmm8,zmm2,zmm7
  a61574:	62 d1 64 48 5c db    	vsubps zmm3,zmm3,zmm11
  a6157a:	62 f1 44 48 58 fa    	vaddps zmm7,zmm7,zmm2
  a61580:	62 d1 6c 40 5c d1    	vsubps zmm2,zmm18,zmm9
  a61586:	62 31 2c 48 58 cf    	vaddps zmm9,zmm10,zmm23
  a6158c:	62 71 7c 48 28 15 ea 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6659ea]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a61593:	59 66 ff 
  a61596:	62 f2 2d 48 7f e8    	vpermt2ps zmm5,zmm10,zmm0
  a6159c:	62 e2 2d 48 7f f0    	vpermt2ps zmm22,zmm10,zmm0
  a615a2:	62 f2 2d 48 7f f0    	vpermt2ps zmm6,zmm10,zmm0
  a615a8:	62 f2 2d 48 7f d8    	vpermt2ps zmm3,zmm10,zmm0
  a615ae:	62 f2 2d 48 7f d0    	vpermt2ps zmm2,zmm10,zmm0
  a615b4:	c4 41 20 57 db       	vxorps xmm11,xmm11,xmm11
  a615b9:	62 52 2d 48 7f db    	vpermt2ps zmm11,zmm10,zmm11
  a615bf:	62 71 7c 48 28 25 37 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff665937]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a615c6:	59 66 ff 
  a615c9:	62 f2 1d 48 7f ea    	vpermt2ps zmm5,zmm12,zmm2
  a615cf:	62 c2 1d 48 7f f3    	vpermt2ps zmm22,zmm12,zmm11
  a615d5:	62 d2 1d 48 7f f3    	vpermt2ps zmm6,zmm12,zmm11
  a615db:	62 d2 1d 48 7f db    	vpermt2ps zmm3,zmm12,zmm11
  a615e1:	62 71 d5 48 14 ee    	vunpcklpd zmm13,zmm5,zmm6
  a615e7:	62 f1 d5 48 15 ee    	vunpckhpd zmm5,zmm5,zmm6
  a615ed:	62 f1 cd 40 14 f3    	vunpcklpd zmm6,zmm22,zmm3
  a615f3:	62 f1 cd 40 15 db    	vunpckhpd zmm3,zmm22,zmm3
  a615f9:	62 71 7c 48 28 35 fd 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6657fd]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a61600:	57 66 ff 
  a61603:	62 d1 7c 48 28 d5    	vmovaps zmm2,zmm13
  a61609:	62 f2 0d 48 7f d6    	vpermt2ps zmm2,zmm14,zmm6
  a6160f:	62 71 7c 48 28 3d 27 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff665827]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a61616:	58 66 ff 
  a61619:	62 72 05 48 7f ee    	vpermt2ps zmm13,zmm15,zmm6
  a6161f:	62 f2 0d 48 7f eb    	vpermt2ps zmm5,zmm14,zmm3
  a61625:	62 f2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm0
  a6162b:	62 f2 2d 48 7f e0    	vpermt2ps zmm4,zmm10,zmm0
  a61631:	62 72 2d 48 7f c0    	vpermt2ps zmm8,zmm10,zmm0
  a61637:	62 f2 2d 48 7f f8    	vpermt2ps zmm7,zmm10,zmm0
  a6163d:	62 72 2d 48 7f c8    	vpermt2ps zmm9,zmm10,zmm0
  a61643:	62 d2 1d 48 7f c9    	vpermt2ps zmm1,zmm12,zmm9
  a61649:	62 d2 1d 48 7f e3    	vpermt2ps zmm4,zmm12,zmm11
  a6164f:	62 52 1d 48 7f c3    	vpermt2ps zmm8,zmm12,zmm11
  a61655:	62 d2 1d 48 7f fb    	vpermt2ps zmm7,zmm12,zmm11
  a6165b:	62 d1 f5 48 14 c0    	vunpcklpd zmm0,zmm1,zmm8
  a61661:	62 d1 f5 48 15 c8    	vunpckhpd zmm1,zmm1,zmm8
  a61667:	62 f1 dd 48 14 df    	vunpcklpd zmm3,zmm4,zmm7
  a6166d:	62 f1 dd 48 15 e7    	vunpckhpd zmm4,zmm4,zmm7
  a61673:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a61679:	62 f2 0d 48 7f f3    	vpermt2ps zmm6,zmm14,zmm3
  a6167f:	62 f2 05 48 7f c3    	vpermt2ps zmm0,zmm15,zmm3
  a61685:	62 f2 0d 48 7f cc    	vpermt2ps zmm1,zmm14,zmm4
  a6168b:	62 f1 7c 48 10 5a 02 	vmovups zmm3,ZMMWORD PTR [rdx+0x80]
  a61692:	62 f1 7c 48 10 62 03 	vmovups zmm4,ZMMWORD PTR [rdx+0xc0]
  a61699:	62 f1 7c 48 10 7a 04 	vmovups zmm7,ZMMWORD PTR [rdx+0x100]
  a616a0:	62 71 7c 48 10 42 05 	vmovups zmm8,ZMMWORD PTR [rdx+0x140]
  a616a7:	62 71 14 48 59 cb    	vmulps zmm9,zmm13,zmm3
  a616ad:	62 72 7d 48 bc cc    	vfnmadd231ps zmm9,zmm0,zmm4
  a616b3:	62 71 54 48 59 d7    	vmulps zmm10,zmm5,zmm7
  a616b9:	62 52 75 48 bc d0    	vfnmadd231ps zmm10,zmm1,zmm8
  a616bf:	62 51 34 48 58 da    	vaddps zmm11,zmm9,zmm10
  a616c5:	62 f1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm3
  a616cb:	62 d2 5d 48 b8 c5    	vfmadd231ps zmm0,zmm4,zmm13
  a616d1:	62 f1 74 48 59 cf    	vmulps zmm1,zmm1,zmm7
  a616d7:	62 f2 3d 48 b8 cd    	vfmadd231ps zmm1,zmm8,zmm5
  a616dd:	62 f1 7c 48 58 d9    	vaddps zmm3,zmm0,zmm1
  a616e3:	62 f2 7d 48 18 25 73 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff613d73]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a616ea:	3d 61 ff 
  a616ed:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a616f3:	62 f2 25 48 ac ea    	vfnmadd213ps zmm5,zmm11,zmm2
  a616f9:	62 f2 7d 48 18 3d d1 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff613bd1]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a61700:	3b 61 ff 
  a61703:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a61709:	62 f1 7c 48 59 c7    	vmulps zmm0,zmm0,zmm7
  a6170f:	62 f1 54 48 58 c8    	vaddps zmm1,zmm5,zmm0
  a61715:	62 f2 65 48 ac e6    	vfnmadd213ps zmm4,zmm3,zmm6
  a6171b:	62 51 34 48 5c c2    	vsubps zmm8,zmm9,zmm10
  a61721:	62 f1 3c 48 59 ff    	vmulps zmm7,zmm8,zmm7
  a61727:	62 71 5c 48 5c c7    	vsubps zmm8,zmm4,zmm7
  a6172d:	62 f1 54 48 5c c0    	vsubps zmm0,zmm5,zmm0
  a61733:	62 f1 5c 48 58 e7    	vaddps zmm4,zmm4,zmm7
  a61739:	62 d1 6c 48 58 d3    	vaddps zmm2,zmm2,zmm11
  a6173f:	62 f1 4c 48 58 db    	vaddps zmm3,zmm6,zmm3
  a61745:	62 f1 7c 48 28 2d b1 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6326b1]        # 93e00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x212b0>
  a6174c:	26 63 ff 
  a6174f:	62 f2 55 48 7f d3    	vpermt2ps zmm2,zmm5,zmm3
  a61755:	c5 fc 11 16          	vmovups YMMWORD PTR [rsi],ymm2
  a61759:	62 f3 7d 48 19 d2 02 	vextractf32x4 xmm2,zmm2,0x2
  a61760:	c5 f8 13 56 20       	vmovlps QWORD PTR [rsi+0x20],xmm2
  a61765:	62 d2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm8
  a6176b:	c5 fc 11 4e 28       	vmovups YMMWORD PTR [rsi+0x28],ymm1
  a61770:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a61777:	c5 f8 13 4e 48       	vmovlps QWORD PTR [rsi+0x48],xmm1
  a6177c:	62 f2 55 48 7f c4    	vpermt2ps zmm0,zmm5,zmm4
  a61782:	c5 fc 11 46 50       	vmovups YMMWORD PTR [rsi+0x50],ymm0
  a61787:	62 f3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm0,0x2
  a6178e:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  a61793:	c5 f8 77             	vzeroupper
  a61796:	c3                   	ret
