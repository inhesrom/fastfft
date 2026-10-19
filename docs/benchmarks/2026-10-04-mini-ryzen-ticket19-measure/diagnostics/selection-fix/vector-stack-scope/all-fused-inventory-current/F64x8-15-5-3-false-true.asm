
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000096c640 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  96c640:	62 f1 fd 48 10 05 1e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff75a71e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  96c647:	a7 75 ff 
  96c64a:	62 f1 fd 48 10 0d 94 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff75a694]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  96c651:	a6 75 ff 
  96c654:	62 f1 fd 48 10 15 ca 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff75a6ca]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  96c65b:	a6 75 ff 
  96c65e:	48 69 c2 f0 00 00 00 	imul   rax,rdx,0xf0
  96c665:	31 d2                	xor    edx,edx
  96c667:	62 f1 fd 48 28 1d 0f 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff71a10f]        # 86780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13c30>
  96c66e:	a1 71 ff 
  96c671:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  96c675:	62 f2 fd 48 19 2d d9 	vbroadcastsd zmm5,QWORD PTR [rip+0xffffffffff7083d9]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  96c67c:	83 70 ff 
  96c67f:	62 f2 fd 48 19 35 8f 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff70898f]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  96c686:	89 70 ff 
  96c689:	62 f2 fd 48 19 3d 35 	vbroadcastsd zmm7,QWORD PTR [rip+0xffffffffff708135]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  96c690:	81 70 ff 
  96c693:	62 72 fd 48 19 05 33 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff708533]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  96c69a:	85 70 ff 
  96c69d:	62 e2 fd 48 19 35 f1 	vbroadcastsd zmm22,QWORD PTR [rip+0xffffffffff7083f1]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  96c6a4:	83 70 ff 
  96c6a7:	62 71 fd 48 28 15 0f 	vmovapd zmm10,ZMMWORD PTR [rip+0xffffffffff71a10f]        # 867c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13c70>
  96c6ae:	a1 71 ff 
  96c6b1:	62 e2 fd 48 19 15 65 	vbroadcastsd zmm18,QWORD PTR [rip+0xffffffffff708565]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  96c6b8:	85 70 ff 
  96c6bb:	62 71 fd 48 28 25 3b 	vmovapd zmm12,ZMMWORD PTR [rip+0xffffffffff71a13b]        # 86800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13cb0>
  96c6c2:	a1 71 ff 
  96c6c5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  96c6cc:	00 00 00 00 
  96c6d0:	c5 7b 12 6c 17 28    	vmovddup xmm13,QWORD PTR [rdi+rdx*1+0x28]
  96c6d6:	c4 63 11 0d 6c 17 20 	vblendpd xmm13,xmm13,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  96c6dd:	01 
  96c6de:	c5 7d 10 34 17       	vmovupd ymm14,YMMWORD PTR [rdi+rdx*1]
  96c6e3:	c5 7d 10 7c 17 30    	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0x30]
  96c6e9:	62 e1 fd 28 10 44 17 	vmovupd ymm16,YMMWORD PTR [rdi+rdx*1+0x60]
  96c6f0:	03 
  96c6f1:	62 e1 fd 28 10 8c 17 	vmovupd ymm17,YMMWORD PTR [rdi+rdx*1+0x90]
  96c6f8:	90 00 00 00 
  96c6fc:	62 53 0d 48 18 ed 02 	vinsertf32x4 zmm13,zmm14,xmm13,0x2
  96c703:	62 51 fd 48 28 f5    	vmovapd zmm14,zmm13
  96c709:	62 72 e5 48 7f f4    	vpermt2pd zmm14,zmm3,zmm4
  96c70f:	c5 7b 12 5c 17 58    	vmovddup xmm11,QWORD PTR [rdi+rdx*1+0x58]
  96c715:	62 72 ad 48 7f ec    	vpermt2pd zmm13,zmm10,zmm4
  96c71b:	c4 63 21 0d 5c 17 50 	vblendpd xmm11,xmm11,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  96c722:	01 
  96c723:	62 53 05 48 18 db 02 	vinsertf32x4 zmm11,zmm15,xmm11,0x2
  96c72a:	62 c1 fd 48 28 db    	vmovapd zmm19,zmm11
  96c730:	62 e2 e5 48 7f dc    	vpermt2pd zmm19,zmm3,zmm4
  96c736:	c5 7b 12 bc 17 88 00 	vmovddup xmm15,QWORD PTR [rdi+rdx*1+0x88]
  96c73d:	00 00 
  96c73f:	62 72 ad 48 7f dc    	vpermt2pd zmm11,zmm10,zmm4
  96c745:	c4 63 01 0d bc 17 80 	vblendpd xmm15,xmm15,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  96c74c:	00 00 00 01 
  96c750:	62 c3 7d 40 18 c7 02 	vinsertf32x4 zmm16,zmm16,xmm15,0x2
  96c757:	62 a1 fd 48 28 e0    	vmovapd zmm20,zmm16
  96c75d:	62 e2 e5 48 7f e4    	vpermt2pd zmm20,zmm3,zmm4
  96c763:	c5 7b 12 bc 17 b8 00 	vmovddup xmm15,QWORD PTR [rdi+rdx*1+0xb8]
  96c76a:	00 00 
  96c76c:	62 e2 ad 48 7f c4    	vpermt2pd zmm16,zmm10,zmm4
  96c772:	c4 63 01 0d bc 17 b0 	vblendpd xmm15,xmm15,XMMWORD PTR [rdi+rdx*1+0xb0],0x1
  96c779:	00 00 00 01 
  96c77d:	62 c3 75 40 18 cf 02 	vinsertf32x4 zmm17,zmm17,xmm15,0x2
  96c784:	62 a1 fd 48 28 e9    	vmovapd zmm21,zmm17
  96c78a:	62 e2 e5 48 7f ec    	vpermt2pd zmm21,zmm3,zmm4
  96c790:	62 e2 ad 48 7f cc    	vpermt2pd zmm17,zmm10,zmm4
  96c796:	c5 7d 10 bc 17 c0 00 	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0xc0]
  96c79d:	00 00 
  96c79f:	c5 7b 12 8c 17 e8 00 	vmovddup xmm9,QWORD PTR [rdi+rdx*1+0xe8]
  96c7a6:	00 00 
  96c7a8:	c4 63 31 0d 8c 17 e0 	vblendpd xmm9,xmm9,XMMWORD PTR [rdi+rdx*1+0xe0],0x1
  96c7af:	00 00 00 01 
  96c7b3:	62 53 05 48 18 c9 02 	vinsertf32x4 zmm9,zmm15,xmm9,0x2
  96c7ba:	62 c1 fd 48 28 f9    	vmovapd zmm23,zmm9
  96c7c0:	62 e2 e5 48 7f fc    	vpermt2pd zmm23,zmm3,zmm4
  96c7c6:	62 72 ad 48 7f cc    	vpermt2pd zmm9,zmm10,zmm4
  96c7cc:	62 21 e5 40 58 c7    	vaddpd zmm24,zmm19,zmm23
  96c7d2:	62 11 8d 48 58 f8    	vaddpd zmm15,zmm14,zmm24
  96c7d8:	62 21 dd 40 58 cd    	vaddpd zmm25,zmm20,zmm21
  96c7de:	62 01 85 48 58 d1    	vaddpd zmm26,zmm15,zmm25
  96c7e4:	62 41 a5 48 58 d9    	vaddpd zmm27,zmm11,zmm9
  96c7ea:	62 11 95 48 58 fb    	vaddpd zmm15,zmm13,zmm27
  96c7f0:	62 21 fd 40 58 e1    	vaddpd zmm28,zmm16,zmm17
  96c7f6:	62 11 85 48 58 fc    	vaddpd zmm15,zmm15,zmm28
  96c7fc:	62 61 fd 48 28 ed    	vmovapd zmm29,zmm5
  96c802:	62 42 bd 40 a8 ee    	vfmadd213pd zmm29,zmm24,zmm14
  96c808:	62 62 b5 40 bc ee    	vfnmadd231pd zmm29,zmm25,zmm6
  96c80e:	62 51 a5 48 5c c9    	vsubpd zmm9,zmm11,zmm9
  96c814:	62 31 fd 40 5c d9    	vsubpd zmm11,zmm16,zmm17
  96c81a:	62 e1 a5 48 59 c7    	vmulpd zmm16,zmm11,zmm7
  96c820:	62 c2 b5 48 b8 c0    	vfmadd231pd zmm16,zmm9,zmm8
  96c826:	62 a1 95 40 58 c8    	vaddpd zmm17,zmm29,zmm16
  96c82c:	62 61 fd 48 28 f5    	vmovapd zmm30,zmm5
  96c832:	62 42 a5 40 a8 f5    	vfmadd213pd zmm30,zmm27,zmm13
  96c838:	62 62 9d 40 bc f6    	vfnmadd231pd zmm30,zmm28,zmm6
  96c83e:	62 a1 e5 40 5c df    	vsubpd zmm19,zmm19,zmm23
  96c844:	62 a1 dd 40 5c e5    	vsubpd zmm20,zmm20,zmm21
  96c84a:	62 e1 dd 40 59 ef    	vmulpd zmm21,zmm20,zmm7
  96c850:	62 c2 e5 40 b8 e8    	vfmadd231pd zmm21,zmm19,zmm8
  96c856:	62 a1 8d 40 5c fd    	vsubpd zmm23,zmm30,zmm21
  96c85c:	62 12 cd 48 bc f0    	vfnmadd231pd zmm14,zmm6,zmm24
  96c862:	62 12 d5 48 b8 f1    	vfmadd231pd zmm14,zmm5,zmm25
  96c868:	62 71 b5 48 59 cf    	vmulpd zmm9,zmm9,zmm7
  96c86e:	62 52 bd 48 bc cb    	vfnmadd231pd zmm9,zmm8,zmm11
  96c874:	62 51 8d 48 58 d9    	vaddpd zmm11,zmm14,zmm9
  96c87a:	62 12 cd 48 bc eb    	vfnmadd231pd zmm13,zmm6,zmm27
  96c880:	62 12 d5 48 b8 ec    	vfmadd231pd zmm13,zmm5,zmm28
  96c886:	62 e1 e5 40 59 df    	vmulpd zmm19,zmm19,zmm7
  96c88c:	62 a2 bd 48 bc dc    	vfnmadd231pd zmm19,zmm8,zmm20
  96c892:	62 a1 95 48 5c e3    	vsubpd zmm20,zmm13,zmm19
  96c898:	62 51 8d 48 5c c9    	vsubpd zmm9,zmm14,zmm9
  96c89e:	62 51 e5 40 58 ed    	vaddpd zmm13,zmm19,zmm13
  96c8a4:	62 31 95 40 5c f0    	vsubpd zmm14,zmm29,zmm16
  96c8aa:	62 81 d5 40 58 c6    	vaddpd zmm16,zmm21,zmm30
  96c8b0:	62 42 fd 48 7f d6    	vpermt2pd zmm26,zmm0,zmm14
  96c8b6:	62 e2 fd 48 7f cc    	vpermt2pd zmm17,zmm0,zmm4
  96c8bc:	62 72 fd 48 7f dc    	vpermt2pd zmm11,zmm0,zmm4
  96c8c2:	62 72 fd 48 7f cc    	vpermt2pd zmm9,zmm0,zmm4
  96c8c8:	62 11 fd 48 28 f2    	vmovapd zmm14,zmm26
  96c8ce:	62 52 f5 48 7f f3    	vpermt2pd zmm14,zmm1,zmm11
  96c8d4:	62 42 ed 48 7f d3    	vpermt2pd zmm26,zmm2,zmm11
  96c8da:	62 31 fd 48 28 d9    	vmovapd zmm11,zmm17
  96c8e0:	62 52 f5 48 7f d9    	vpermt2pd zmm11,zmm1,zmm9
  96c8e6:	62 c2 ed 48 7f c9    	vpermt2pd zmm17,zmm2,zmm9
  96c8ec:	62 31 ad 40 14 c9    	vunpcklpd zmm9,zmm26,zmm17
  96c8f2:	62 c1 8d 48 14 cb    	vunpcklpd zmm17,zmm14,zmm11
  96c8f8:	62 51 8d 48 15 db    	vunpckhpd zmm11,zmm14,zmm11
  96c8fe:	62 32 fd 48 7f f8    	vpermt2pd zmm15,zmm0,zmm16
  96c904:	62 e2 fd 48 7f fc    	vpermt2pd zmm23,zmm0,zmm4
  96c90a:	62 e2 fd 48 7f e4    	vpermt2pd zmm20,zmm0,zmm4
  96c910:	62 72 fd 48 7f ec    	vpermt2pd zmm13,zmm0,zmm4
  96c916:	62 51 fd 48 28 f7    	vmovapd zmm14,zmm15
  96c91c:	62 32 f5 48 7f f4    	vpermt2pd zmm14,zmm1,zmm20
  96c922:	62 32 ed 48 7f fc    	vpermt2pd zmm15,zmm2,zmm20
  96c928:	62 a1 fd 48 28 c7    	vmovapd zmm16,zmm23
  96c92e:	62 c2 f5 48 7f c5    	vpermt2pd zmm16,zmm1,zmm13
  96c934:	62 c2 ed 48 7f fd    	vpermt2pd zmm23,zmm2,zmm13
  96c93a:	62 31 85 48 14 ef    	vunpcklpd zmm13,zmm15,zmm23
  96c940:	62 31 8d 48 14 f8    	vunpcklpd zmm15,zmm14,zmm16
  96c946:	62 31 8d 48 15 f0    	vunpckhpd zmm14,zmm14,zmm16
  96c94c:	62 e1 fd 48 10 41 02 	vmovupd zmm16,ZMMWORD PTR [rcx+0x80]
  96c953:	62 e1 fd 48 10 59 03 	vmovupd zmm19,ZMMWORD PTR [rcx+0xc0]
  96c95a:	62 e1 fd 48 10 61 04 	vmovupd zmm20,ZMMWORD PTR [rcx+0x100]
  96c961:	62 e1 fd 48 10 69 05 	vmovupd zmm21,ZMMWORD PTR [rcx+0x140]
  96c968:	62 a1 a5 48 59 f8    	vmulpd zmm23,zmm11,zmm16
  96c96e:	62 a2 8d 48 bc fb    	vfnmadd231pd zmm23,zmm14,zmm19
  96c974:	62 21 b5 48 59 c4    	vmulpd zmm24,zmm9,zmm20
  96c97a:	62 22 95 48 bc c5    	vfnmadd231pd zmm24,zmm13,zmm21
  96c980:	62 01 c5 40 58 c8    	vaddpd zmm25,zmm23,zmm24
  96c986:	62 31 8d 48 59 f0    	vmulpd zmm14,zmm14,zmm16
  96c98c:	62 32 a5 48 b8 f3    	vfmadd231pd zmm14,zmm11,zmm19
  96c992:	62 31 95 48 59 dc    	vmulpd zmm11,zmm13,zmm20
  96c998:	62 32 b5 48 b8 dd    	vfmadd231pd zmm11,zmm9,zmm21
  96c99e:	62 51 8d 48 58 cb    	vaddpd zmm9,zmm14,zmm11
  96c9a4:	62 31 fd 48 28 ee    	vmovapd zmm13,zmm22
  96c9aa:	62 32 b5 40 ac e9    	vfnmadd213pd zmm13,zmm25,zmm17
  96c9b0:	62 51 8d 48 5c db    	vsubpd zmm11,zmm14,zmm11
  96c9b6:	62 31 a5 48 59 da    	vmulpd zmm11,zmm11,zmm18
  96c9bc:	62 51 95 48 58 f3    	vaddpd zmm14,zmm13,zmm11
  96c9c2:	62 a1 fd 48 28 c6    	vmovapd zmm16,zmm22
  96c9c8:	62 c2 b5 48 ac c7    	vfnmadd213pd zmm16,zmm9,zmm15
  96c9ce:	62 81 c5 40 5c d8    	vsubpd zmm19,zmm23,zmm24
  96c9d4:	62 a1 e5 40 59 da    	vmulpd zmm19,zmm19,zmm18
  96c9da:	62 a1 fd 40 5c e3    	vsubpd zmm20,zmm16,zmm19
  96c9e0:	62 51 95 48 5c db    	vsubpd zmm11,zmm13,zmm11
  96c9e6:	62 31 fd 40 58 eb    	vaddpd zmm13,zmm16,zmm19
  96c9ec:	62 81 f5 40 58 c1    	vaddpd zmm16,zmm17,zmm25
  96c9f2:	62 51 85 48 58 c9    	vaddpd zmm9,zmm15,zmm9
  96c9f8:	62 c3 7d 48 19 c7 02 	vextractf32x4 xmm15,zmm16,0x2
  96c9ff:	62 c2 9d 48 7f c1    	vpermt2pd zmm16,zmm12,zmm9
  96ca05:	62 e1 fd 48 11 04 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm16
  96ca0c:	62 53 7d 48 19 c9 02 	vextractf32x4 xmm9,zmm9,0x2
  96ca13:	c4 41 01 14 c9       	vunpcklpd xmm9,xmm15,xmm9
  96ca18:	c5 79 11 4c 16 40    	vmovupd XMMWORD PTR [rsi+rdx*1+0x40],xmm9
  96ca1e:	62 53 7d 48 19 f1 02 	vextractf32x4 xmm9,zmm14,0x2
  96ca25:	62 32 9d 48 7f f4    	vpermt2pd zmm14,zmm12,zmm20
  96ca2b:	62 71 fd 48 11 b4 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x50],zmm14
  96ca32:	50 00 00 00 
  96ca36:	62 c3 7d 48 19 e6 02 	vextractf32x4 xmm14,zmm20,0x2
  96ca3d:	c4 41 31 14 ce       	vunpcklpd xmm9,xmm9,xmm14
  96ca42:	c5 79 11 8c 16 90 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0x90],xmm9
  96ca49:	00 00 
  96ca4b:	62 53 7d 48 19 d9 02 	vextractf32x4 xmm9,zmm11,0x2
  96ca52:	62 52 9d 48 7f dd    	vpermt2pd zmm11,zmm12,zmm13
  96ca58:	62 71 fd 48 11 9c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xa0],zmm11
  96ca5f:	a0 00 00 00 
  96ca63:	62 53 7d 48 19 eb 02 	vextractf32x4 xmm11,zmm13,0x2
  96ca6a:	c4 41 31 14 cb       	vunpcklpd xmm9,xmm9,xmm11
  96ca6f:	c5 79 11 8c 16 e0 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0xe0],xmm9
  96ca76:	00 00 
  96ca78:	48 81 c2 f0 00 00 00 	add    rdx,0xf0
  96ca7f:	48 39 d0             	cmp    rax,rdx
  96ca82:	0f 85 48 fc ff ff    	jne    96c6d0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x90>
  96ca88:	c5 f8 77             	vzeroupper
  96ca8b:	c3                   	ret
