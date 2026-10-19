
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a11440 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a11440:	62 f1 7c 48 28 05 36 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6b5b36]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a11447:	5b 6b ff 
  a1144a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a1144e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a11452:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a11458:	62 f1 7c 48 28 1d 9e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6b5a9e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1145f:	5a 6b ff 
  a11462:	62 f1 7c 48 28 25 d4 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6b5ad4]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a11469:	5a 6b ff 
  a1146c:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a11472:	62 f2 65 48 7f ea    	vpermt2ps zmm5,zmm3,zmm2
  a11478:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a1147e:	62 f2 5d 48 7f f2    	vpermt2ps zmm6,zmm4,zmm2
  a11484:	62 f1 7c 48 28 3d 72 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6b5972]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1148b:	59 6b ff 
  a1148e:	62 71 7c 48 28 05 a8 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6b59a8]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a11495:	59 6b ff 
  a11498:	48 6b c2 78          	imul   rax,rdx,0x78
  a1149c:	31 d2                	xor    edx,edx
  a1149e:	62 71 7c 48 28 0d 58 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff67da58]        # 8ef00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c3b0>
  a114a5:	da 67 ff 
  a114a8:	62 72 7d 48 18 15 ae 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff663fae]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a114af:	3f 66 ff 
  a114b2:	62 72 7d 48 18 1d 18 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff663e18]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a114b9:	3e 66 ff 
  a114bc:	62 72 7d 48 18 25 22 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff664222]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a114c3:	42 66 ff 
  a114c6:	62 72 7d 48 18 2d 74 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff664174]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a114cd:	41 66 ff 
  a114d0:	62 72 7d 48 18 35 7e 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff66427e]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a114d7:	42 66 ff 
  a114da:	62 71 7c 48 28 3d 5c 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff67da5c]        # 8ef40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c3f0>
  a114e1:	da 67 ff 
  a114e4:	62 e2 7d 48 18 05 b2 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff663eb2]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a114eb:	3e 66 ff 
  a114ee:	62 e1 7c 28 28 0d c8 	vmovaps ymm17,YMMWORD PTR [rip+0xffffffffff666dc8]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a114f5:	6d 66 ff 
  a114f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  a114ff:	00 
  a11500:	62 e1 ff 08 10 54 17 	vmovsd xmm18,QWORD PTR [rdi+rdx*1+0x20]
  a11507:	04 
  a11508:	62 e1 7c 28 10 1c 17 	vmovups ymm19,YMMWORD PTR [rdi+rdx*1]
  a1150f:	62 e1 7c 28 10 a4 17 	vmovups ymm20,YMMWORD PTR [rdi+rdx*1+0x28]
  a11516:	28 00 00 00 
  a1151a:	62 e1 7c 28 10 ac 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1+0x50]
  a11521:	50 00 00 00 
  a11525:	62 a3 e5 40 1a d2 01 	vinsertf64x4 zmm18,zmm19,ymm18,0x1
  a1152c:	62 a1 7c 48 28 f2    	vmovaps zmm22,zmm18
  a11532:	62 e2 35 48 7f f1    	vpermt2ps zmm22,zmm9,zmm1
  a11538:	62 e2 05 48 7f d1    	vpermt2ps zmm18,zmm15,zmm1
  a1153e:	62 e1 ff 08 10 5c 17 	vmovsd xmm19,QWORD PTR [rdi+rdx*1+0x48]
  a11545:	09 
  a11546:	62 a3 dd 40 1a e3 01 	vinsertf64x4 zmm20,zmm20,ymm19,0x1
  a1154d:	62 a1 7c 48 28 fc    	vmovaps zmm23,zmm20
  a11553:	62 e2 35 48 7f f9    	vpermt2ps zmm23,zmm9,zmm1
  a11559:	62 e2 05 48 7f e1    	vpermt2ps zmm20,zmm15,zmm1
  a1155f:	62 e1 ff 08 10 5c 17 	vmovsd xmm19,QWORD PTR [rdi+rdx*1+0x70]
  a11566:	0e 
  a11567:	62 a3 d5 40 1a eb 01 	vinsertf64x4 zmm21,zmm21,ymm19,0x1
  a1156e:	62 21 7c 48 28 c5    	vmovaps zmm24,zmm21
  a11574:	62 62 35 48 7f c1    	vpermt2ps zmm24,zmm9,zmm1
  a1157a:	62 e2 05 48 7f e9    	vpermt2ps zmm21,zmm15,zmm1
  a11580:	62 21 5c 40 58 cd    	vaddps zmm25,zmm20,zmm21
  a11586:	62 01 6c 40 58 d1    	vaddps zmm26,zmm18,zmm25
  a1158c:	62 01 44 40 58 d8    	vaddps zmm27,zmm23,zmm24
  a11592:	62 81 4c 40 58 db    	vaddps zmm19,zmm22,zmm27
  a11598:	62 82 2d 48 bc d1    	vfnmadd231ps zmm18,zmm10,zmm25
  a1159e:	62 81 44 40 5c f8    	vsubps zmm23,zmm23,zmm24
  a115a4:	62 c1 44 40 59 fb    	vmulps zmm23,zmm23,zmm11
  a115aa:	62 21 6c 40 58 c7    	vaddps zmm24,zmm18,zmm23
  a115b0:	62 82 2d 48 bc f3    	vfnmadd231ps zmm22,zmm10,zmm27
  a115b6:	62 a1 5c 40 5c e5    	vsubps zmm20,zmm20,zmm21
  a115bc:	62 c1 5c 40 59 e3    	vmulps zmm20,zmm20,zmm11
  a115c2:	62 21 4c 40 5c cc    	vsubps zmm25,zmm22,zmm20
  a115c8:	62 a1 6c 40 5c d7    	vsubps zmm18,zmm18,zmm23
  a115ce:	62 21 5c 40 58 de    	vaddps zmm27,zmm20,zmm22
  a115d4:	62 62 7d 48 7f d1    	vpermt2ps zmm26,zmm0,zmm1
  a115da:	62 62 7d 48 7f c1    	vpermt2ps zmm24,zmm0,zmm1
  a115e0:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a115e6:	62 81 7c 48 28 e2    	vmovaps zmm20,zmm26
  a115ec:	62 e2 65 48 7f e2    	vpermt2ps zmm20,zmm3,zmm2
  a115f2:	62 62 5d 48 7f d2    	vpermt2ps zmm26,zmm4,zmm2
  a115f8:	62 81 7c 48 28 f0    	vmovaps zmm22,zmm24
  a115fe:	62 e2 65 48 7f f2    	vpermt2ps zmm22,zmm3,zmm2
  a11604:	62 62 5d 48 7f c2    	vpermt2ps zmm24,zmm4,zmm2
  a1160a:	62 21 7c 48 28 e2    	vmovaps zmm28,zmm18
  a11610:	62 62 65 48 7f e2    	vpermt2ps zmm28,zmm3,zmm2
  a11616:	62 e2 5d 48 7f d2    	vpermt2ps zmm18,zmm4,zmm2
  a1161c:	62 a1 ad 40 14 ea    	vunpcklpd zmm21,zmm26,zmm18
  a11622:	62 81 dd 40 14 fc    	vunpcklpd zmm23,zmm20,zmm28
  a11628:	62 81 dd 40 15 e4    	vunpckhpd zmm20,zmm20,zmm28
  a1162e:	62 61 cd 40 14 d5    	vunpcklpd zmm26,zmm22,zmm5
  a11634:	62 61 cd 40 15 e5    	vunpckhpd zmm28,zmm22,zmm5
  a1163a:	62 61 bd 40 14 c6    	vunpcklpd zmm24,zmm24,zmm6
  a11640:	62 a1 7c 48 28 d7    	vmovaps zmm18,zmm23
  a11646:	62 82 45 48 7f d2    	vpermt2ps zmm18,zmm7,zmm26
  a1164c:	62 82 3d 48 7f fa    	vpermt2ps zmm23,zmm8,zmm26
  a11652:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a11658:	62 82 45 48 7f f4    	vpermt2ps zmm22,zmm7,zmm28
  a1165e:	62 82 3d 48 7f e4    	vpermt2ps zmm20,zmm8,zmm28
  a11664:	62 82 45 48 7f e8    	vpermt2ps zmm21,zmm7,zmm24
  a1166a:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a11670:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a11676:	62 62 7d 48 7f d9    	vpermt2ps zmm27,zmm0,zmm1
  a1167c:	62 21 7c 48 28 c3    	vmovaps zmm24,zmm19
  a11682:	62 62 65 48 7f c2    	vpermt2ps zmm24,zmm3,zmm2
  a11688:	62 e2 5d 48 7f da    	vpermt2ps zmm19,zmm4,zmm2
  a1168e:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a11694:	62 62 65 48 7f d2    	vpermt2ps zmm26,zmm3,zmm2
  a1169a:	62 62 5d 48 7f ca    	vpermt2ps zmm25,zmm4,zmm2
  a116a0:	62 01 7c 48 28 e3    	vmovaps zmm28,zmm27
  a116a6:	62 62 65 48 7f e2    	vpermt2ps zmm28,zmm3,zmm2
  a116ac:	62 62 5d 48 7f da    	vpermt2ps zmm27,zmm4,zmm2
  a116b2:	62 01 e5 40 14 db    	vunpcklpd zmm27,zmm19,zmm27
  a116b8:	62 01 bd 40 14 ec    	vunpcklpd zmm29,zmm24,zmm28
  a116be:	62 01 bd 40 15 c4    	vunpckhpd zmm24,zmm24,zmm28
  a116c4:	62 61 ad 40 14 e5    	vunpcklpd zmm28,zmm26,zmm5
  a116ca:	62 61 ad 40 15 d5    	vunpckhpd zmm26,zmm26,zmm5
  a116d0:	62 61 b5 40 14 ce    	vunpcklpd zmm25,zmm25,zmm6
  a116d6:	62 81 7c 48 28 dd    	vmovaps zmm19,zmm29
  a116dc:	62 82 45 48 7f dc    	vpermt2ps zmm19,zmm7,zmm28
  a116e2:	62 02 3d 48 7f ec    	vpermt2ps zmm29,zmm8,zmm28
  a116e8:	62 01 7c 48 28 e0    	vmovaps zmm28,zmm24
  a116ee:	62 02 45 48 7f e2    	vpermt2ps zmm28,zmm7,zmm26
  a116f4:	62 02 3d 48 7f c2    	vpermt2ps zmm24,zmm8,zmm26
  a116fa:	62 02 45 48 7f d9    	vpermt2ps zmm27,zmm7,zmm25
  a11700:	62 61 7c 48 10 49 02 	vmovups zmm25,ZMMWORD PTR [rcx+0x80]
  a11707:	62 61 7c 48 10 51 03 	vmovups zmm26,ZMMWORD PTR [rcx+0xc0]
  a1170e:	62 01 44 40 59 f1    	vmulps zmm30,zmm23,zmm25
  a11714:	62 02 15 40 bc f2    	vfnmadd231ps zmm30,zmm29,zmm26
  a1171a:	62 01 14 40 59 c9    	vmulps zmm25,zmm29,zmm25
  a11720:	62 61 7c 48 10 69 08 	vmovups zmm29,ZMMWORD PTR [rcx+0x200]
  a11727:	62 22 2d 40 b8 cf    	vfmadd231ps zmm25,zmm26,zmm23
  a1172d:	62 e1 7c 48 10 79 09 	vmovups zmm23,ZMMWORD PTR [rcx+0x240]
  a11734:	62 01 54 40 59 d5    	vmulps zmm26,zmm21,zmm29
  a1173a:	62 22 25 40 bc d7    	vfnmadd231ps zmm26,zmm27,zmm23
  a11740:	62 01 24 40 59 dd    	vmulps zmm27,zmm27,zmm29
  a11746:	62 61 7c 48 10 69 04 	vmovups zmm29,ZMMWORD PTR [rcx+0x100]
  a1174d:	62 22 45 40 b8 dd    	vfmadd231ps zmm27,zmm23,zmm21
  a11753:	62 e1 7c 48 10 69 05 	vmovups zmm21,ZMMWORD PTR [rcx+0x140]
  a1175a:	62 81 4c 40 59 fd    	vmulps zmm23,zmm22,zmm29
  a11760:	62 a2 1d 40 bc fd    	vfnmadd231ps zmm23,zmm28,zmm21
  a11766:	62 01 1c 40 59 e5    	vmulps zmm28,zmm28,zmm29
  a1176c:	62 61 7c 48 10 69 06 	vmovups zmm29,ZMMWORD PTR [rcx+0x180]
  a11773:	62 22 55 40 b8 e6    	vfmadd231ps zmm28,zmm21,zmm22
  a11779:	62 e1 7c 48 10 69 07 	vmovups zmm21,ZMMWORD PTR [rcx+0x1c0]
  a11780:	62 81 5c 40 59 f5    	vmulps zmm22,zmm20,zmm29
  a11786:	62 a2 3d 40 bc f5    	vfnmadd231ps zmm22,zmm24,zmm21
  a1178c:	62 01 3c 40 59 c5    	vmulps zmm24,zmm24,zmm29
  a11792:	62 22 55 40 b8 c4    	vfmadd231ps zmm24,zmm21,zmm20
  a11798:	62 01 0c 40 58 ea    	vaddps zmm29,zmm30,zmm26
  a1179e:	62 01 34 40 58 fb    	vaddps zmm31,zmm25,zmm27
  a117a4:	62 01 34 40 5c cb    	vsubps zmm25,zmm25,zmm27
  a117aa:	62 01 1c 40 58 d8    	vaddps zmm27,zmm28,zmm24
  a117b0:	62 01 1c 40 5c c0    	vsubps zmm24,zmm28,zmm24
  a117b6:	62 21 44 40 58 e6    	vaddps zmm28,zmm23,zmm22
  a117bc:	62 01 0c 40 5c d2    	vsubps zmm26,zmm30,zmm26
  a117c2:	62 c1 7c 48 28 e4    	vmovaps zmm20,zmm12
  a117c8:	62 a2 15 40 a8 e2    	vfmadd213ps zmm20,zmm29,zmm18
  a117ce:	62 c2 1d 40 bc e5    	vfnmadd231ps zmm20,zmm28,zmm13
  a117d4:	62 a1 44 40 5c fe    	vsubps zmm23,zmm23,zmm22
  a117da:	62 c1 3c 40 59 ee    	vmulps zmm21,zmm24,zmm14
  a117e0:	62 a2 35 40 b8 e8    	vfmadd231ps zmm21,zmm25,zmm16
  a117e6:	62 41 34 40 59 ce    	vmulps zmm25,zmm25,zmm14
  a117ec:	62 02 7d 40 bc c8    	vfnmadd231ps zmm25,zmm16,zmm24
  a117f2:	62 c1 44 40 59 f6    	vmulps zmm22,zmm23,zmm14
  a117f8:	62 a2 2d 40 b8 f0    	vfmadd231ps zmm22,zmm26,zmm16
  a117fe:	62 41 2c 40 59 c6    	vmulps zmm24,zmm26,zmm14
  a11804:	62 22 7d 40 bc c7    	vfnmadd231ps zmm24,zmm16,zmm23
  a1180a:	62 c1 7c 48 28 fd    	vmovaps zmm23,zmm13
  a11810:	62 a2 15 40 ac fa    	vfnmadd213ps zmm23,zmm29,zmm18
  a11816:	62 81 6c 20 58 d5    	vaddps ymm18,ymm18,ymm29
  a1181c:	62 41 7c 48 28 d4    	vmovaps zmm26,zmm12
  a11822:	62 22 05 40 a8 d3    	vfmadd213ps zmm26,zmm31,zmm19
  a11828:	62 c2 1d 40 b8 fc    	vfmadd231ps zmm23,zmm28,zmm12
  a1182e:	62 81 6c 20 58 d4    	vaddps ymm18,ymm18,ymm28
  a11834:	62 41 7c 48 28 e5    	vmovaps zmm28,zmm13
  a1183a:	62 22 05 40 ac e3    	vfnmadd213ps zmm28,zmm31,zmm19
  a11840:	62 a1 04 00 58 db    	vaddps xmm19,xmm31,xmm19
  a11846:	62 42 25 40 bc d5    	vfnmadd231ps zmm26,zmm27,zmm13
  a1184c:	62 42 25 40 b8 e4    	vfmadd231ps zmm28,zmm27,zmm12
  a11852:	62 81 64 00 58 db    	vaddps xmm19,xmm19,xmm27
  a11858:	62 a2 75 20 7f da    	vpermt2ps ymm19,ymm17,ymm18
  a1185e:	62 e1 7c 08 11 1c 16 	vmovups XMMWORD PTR [rsi+rdx*1],xmm19
  a11865:	62 a3 7d 28 19 da 01 	vextractf32x4 xmm18,ymm19,0x1
  a1186c:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm18
  a11873:	02 
  a11874:	62 a1 5c 20 58 d5    	vaddps ymm18,ymm20,ymm21
  a1187a:	62 a1 2c 00 5c de    	vsubps xmm19,xmm26,xmm22
  a11880:	62 a2 75 20 7f da    	vpermt2ps ymm19,ymm17,ymm18
  a11886:	62 e1 7c 08 11 9c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm19
  a1188d:	18 00 00 00 
  a11891:	62 a3 7d 28 19 da 01 	vextractf32x4 xmm18,ymm19,0x1
  a11898:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm18
  a1189f:	05 
  a118a0:	62 81 44 20 58 d1    	vaddps ymm18,ymm23,ymm25
  a118a6:	62 81 1c 00 5c d8    	vsubps xmm19,xmm28,xmm24
  a118ac:	62 a2 75 20 7f da    	vpermt2ps ymm19,ymm17,ymm18
  a118b2:	62 e1 7c 08 11 5c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm19
  a118b9:	03 
  a118ba:	62 a3 7d 28 19 da 01 	vextractf32x4 xmm18,ymm19,0x1
  a118c1:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm18
  a118c8:	08 
  a118c9:	62 81 44 20 5c d1    	vsubps ymm18,ymm23,ymm25
  a118cf:	62 81 1c 00 58 d8    	vaddps xmm19,xmm28,xmm24
  a118d5:	62 a2 75 20 7f da    	vpermt2ps ymm19,ymm17,ymm18
  a118db:	62 e1 7c 08 11 9c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm19
  a118e2:	48 00 00 00 
  a118e6:	62 a3 7d 28 19 da 01 	vextractf32x4 xmm18,ymm19,0x1
  a118ed:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm18
  a118f4:	0b 
  a118f5:	62 a1 5c 20 5c d5    	vsubps ymm18,ymm20,ymm21
  a118fb:	62 a1 2c 00 58 de    	vaddps xmm19,xmm26,xmm22
  a11901:	62 a2 75 20 7f da    	vpermt2ps ymm19,ymm17,ymm18
  a11907:	62 e1 7c 08 11 5c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm19
  a1190e:	06 
  a1190f:	62 a3 7d 28 19 da 01 	vextractf32x4 xmm18,ymm19,0x1
  a11916:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm18
  a1191d:	0e 
  a1191e:	48 83 c2 78          	add    rdx,0x78
  a11922:	48 39 d0             	cmp    rax,rdx
  a11925:	0f 85 d5 fb ff ff    	jne    a11500 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0xc0>
  a1192b:	c5 f8 77             	vzeroupper
  a1192e:	c3                   	ret
