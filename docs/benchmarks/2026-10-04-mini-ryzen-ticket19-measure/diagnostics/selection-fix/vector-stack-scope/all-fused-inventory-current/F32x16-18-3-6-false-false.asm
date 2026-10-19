
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009fe700 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  9fe700:	55                   	push   rbp
  9fe701:	48 89 e5             	mov    rbp,rsp
  9fe704:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  9fe708:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  9fe70f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  9fe714:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  9fe719:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  9fe71e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  9fe723:	c5 f8 10 47 20       	vmovups xmm0,XMMWORD PTR [rdi+0x20]
  9fe728:	c4 e3 79 21 47 24 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24],0x10
  9fe72f:	c4 e2 79 18 4f 28    	vbroadcastss xmm1,DWORD PTR [rdi+0x28]
  9fe735:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  9fe73b:	c4 e3 79 21 47 2c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c],0x30
  9fe742:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  9fe746:	62 f3 75 48 18 d0 02 	vinsertf32x4 zmm2,zmm1,xmm0,0x2
  9fe74d:	62 f1 7c 48 28 2d 69 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff68f469]        # 8dbc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b070>
  9fe754:	f4 68 ff 
  9fe757:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  9fe75b:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  9fe761:	62 f2 55 48 7f f3    	vpermt2ps zmm6,zmm5,zmm3
  9fe767:	62 f1 7c 48 28 05 8f 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68f48f]        # 8dc00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b0b0>
  9fe76e:	f4 68 ff 
  9fe771:	c5 f8 10 4f 50       	vmovups xmm1,XMMWORD PTR [rdi+0x50]
  9fe776:	c4 e3 71 21 4f 54 10 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x54],0x10
  9fe77d:	c4 e2 79 18 67 58    	vbroadcastss xmm4,DWORD PTR [rdi+0x58]
  9fe783:	62 f2 7d 48 7f d3    	vpermt2ps zmm2,zmm0,zmm3
  9fe789:	c4 e3 59 0c c9 03    	vblendps xmm1,xmm4,xmm1,0x3
  9fe78f:	c4 e3 71 21 4f 5c 30 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x5c],0x30
  9fe796:	c5 fc 10 67 30       	vmovups ymm4,YMMWORD PTR [rdi+0x30]
  9fe79b:	62 f3 5d 48 18 c9 02 	vinsertf32x4 zmm1,zmm4,xmm1,0x2
  9fe7a2:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  9fe7a8:	62 72 55 48 7f c3    	vpermt2ps zmm8,zmm5,zmm3
  9fe7ae:	62 f2 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm3
  9fe7b4:	c5 f8 10 a7 80 00 00 	vmovups xmm4,XMMWORD PTR [rdi+0x80]
  9fe7bb:	00 
  9fe7bc:	c4 e3 59 21 a7 84 00 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x84],0x10
  9fe7c3:	00 00 10 
  9fe7c6:	c5 fc 10 7f 60       	vmovups ymm7,YMMWORD PTR [rdi+0x60]
  9fe7cb:	c4 62 79 18 8f 88 00 	vbroadcastss xmm9,DWORD PTR [rdi+0x88]
  9fe7d2:	00 00 
  9fe7d4:	c4 e3 31 0c e4 03    	vblendps xmm4,xmm9,xmm4,0x3
  9fe7da:	c4 e3 59 21 a7 8c 00 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x8c],0x30
  9fe7e1:	00 00 30 
  9fe7e4:	62 f3 45 48 18 fc 02 	vinsertf32x4 zmm7,zmm7,xmm4,0x2
  9fe7eb:	62 f2 45 48 77 eb    	vpermi2ps zmm5,zmm7,zmm3
  9fe7f1:	62 f2 7d 48 7f fb    	vpermt2ps zmm7,zmm0,zmm3
  9fe7f7:	62 71 3c 48 58 cd    	vaddps zmm9,zmm8,zmm5
  9fe7fd:	62 51 4c 48 58 d1    	vaddps zmm10,zmm6,zmm9
  9fe803:	62 71 74 48 58 df    	vaddps zmm11,zmm1,zmm7
  9fe809:	62 d1 6c 48 58 e3    	vaddps zmm4,zmm2,zmm11
  9fe80f:	62 f2 7d 48 18 05 47 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff676c47]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  9fe816:	6c 67 ff 
  9fe819:	62 d2 7d 48 bc f1    	vfnmadd231ps zmm6,zmm0,zmm9
  9fe81f:	62 f1 74 48 5c ff    	vsubps zmm7,zmm1,zmm7
  9fe825:	62 f2 7d 48 18 0d a5 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff676aa5]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  9fe82c:	6a 67 ff 
  9fe82f:	62 71 44 48 59 c9    	vmulps zmm9,zmm7,zmm1
  9fe835:	62 d1 4c 48 58 f9    	vaddps zmm7,zmm6,zmm9
  9fe83b:	62 d2 7d 48 bc d3    	vfnmadd231ps zmm2,zmm0,zmm11
  9fe841:	62 f1 3c 48 5c ed    	vsubps zmm5,zmm8,zmm5
  9fe847:	62 71 54 48 59 c1    	vmulps zmm8,zmm5,zmm1
  9fe84d:	62 d1 6c 48 5c e8    	vsubps zmm5,zmm2,zmm8
  9fe853:	62 51 4c 48 5c d9    	vsubps zmm11,zmm6,zmm9
  9fe859:	62 f1 3c 48 58 f2    	vaddps zmm6,zmm8,zmm2
  9fe85f:	62 71 7c 48 28 05 17 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6c8717]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  9fe866:	87 6c ff 
  9fe869:	62 72 3d 48 7f d3    	vpermt2ps zmm10,zmm8,zmm3
  9fe86f:	62 f2 3d 48 7f fb    	vpermt2ps zmm7,zmm8,zmm3
  9fe875:	62 72 3d 48 7f db    	vpermt2ps zmm11,zmm8,zmm3
  9fe87b:	c4 41 18 57 e4       	vxorps xmm12,xmm12,xmm12
  9fe880:	62 52 3d 48 7f e4    	vpermt2ps zmm12,zmm8,zmm12
  9fe886:	62 71 7c 48 28 0d 70 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6c8670]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  9fe88d:	86 6c ff 
  9fe890:	62 51 7c 48 28 ea    	vmovaps zmm13,zmm10
  9fe896:	62 52 35 48 7f ec    	vpermt2ps zmm13,zmm9,zmm12
  9fe89c:	62 71 7c 48 28 35 9a 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6c869a]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  9fe8a3:	86 6c ff 
  9fe8a6:	62 52 0d 48 7f d4    	vpermt2ps zmm10,zmm14,zmm12
  9fe8ac:	62 71 7c 48 28 ff    	vmovaps zmm15,zmm7
  9fe8b2:	62 52 35 48 7f fc    	vpermt2ps zmm15,zmm9,zmm12
  9fe8b8:	62 d2 0d 48 7f fc    	vpermt2ps zmm7,zmm14,zmm12
  9fe8be:	62 c1 7c 48 28 c3    	vmovaps zmm16,zmm11
  9fe8c4:	62 c2 35 48 7f c4    	vpermt2ps zmm16,zmm9,zmm12
  9fe8ca:	62 52 0d 48 7f dc    	vpermt2ps zmm11,zmm14,zmm12
  9fe8d0:	62 d1 ad 48 14 d3    	vunpcklpd zmm2,zmm10,zmm11
  9fe8d6:	62 51 7c 48 28 dc    	vmovaps zmm11,zmm12
  9fe8dc:	62 52 35 48 7f dc    	vpermt2ps zmm11,zmm9,zmm12
  9fe8e2:	62 f2 3d 48 7f e3    	vpermt2ps zmm4,zmm8,zmm3
  9fe8e8:	62 f2 3d 48 7f eb    	vpermt2ps zmm5,zmm8,zmm3
  9fe8ee:	62 f2 3d 48 7f f3    	vpermt2ps zmm6,zmm8,zmm3
  9fe8f4:	62 e1 7c 48 28 cc    	vmovaps zmm17,zmm4
  9fe8fa:	62 c2 35 48 7f cc    	vpermt2ps zmm17,zmm9,zmm12
  9fe900:	62 d2 0d 48 7f e4    	vpermt2ps zmm4,zmm14,zmm12
  9fe906:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  9fe90c:	62 c2 35 48 7f d4    	vpermt2ps zmm18,zmm9,zmm12
  9fe912:	62 d2 0d 48 7f ec    	vpermt2ps zmm5,zmm14,zmm12
  9fe918:	62 52 4d 48 77 cc    	vpermi2ps zmm9,zmm6,zmm12
  9fe91e:	62 d2 0d 48 7f f4    	vpermt2ps zmm6,zmm14,zmm12
  9fe924:	62 52 0d 48 7f e4    	vpermt2ps zmm12,zmm14,zmm12
  9fe92a:	62 31 95 48 14 c0    	vunpcklpd zmm8,zmm13,zmm16
  9fe930:	62 31 95 48 15 d0    	vunpckhpd zmm10,zmm13,zmm16
  9fe936:	62 51 85 48 14 eb    	vunpcklpd zmm13,zmm15,zmm11
  9fe93c:	62 51 85 48 15 f3    	vunpckhpd zmm14,zmm15,zmm11
  9fe942:	62 d1 c5 48 14 fc    	vunpcklpd zmm7,zmm7,zmm12
  9fe948:	62 71 7c 48 28 3d ae 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6c84ae]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  9fe94f:	84 6c ff 
  9fe952:	62 d1 7c 48 28 d8    	vmovaps zmm3,zmm8
  9fe958:	62 d2 05 48 7f dd    	vpermt2ps zmm3,zmm15,zmm13
  9fe95e:	62 e1 7c 48 28 05 d8 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6c84d8]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  9fe965:	84 6c ff 
  9fe968:	62 52 7d 40 7f c5    	vpermt2ps zmm8,zmm16,zmm13
  9fe96e:	62 51 7c 48 28 ea    	vmovaps zmm13,zmm10
  9fe974:	62 52 05 48 7f ee    	vpermt2ps zmm13,zmm15,zmm14
  9fe97a:	62 52 7d 40 7f d6    	vpermt2ps zmm10,zmm16,zmm14
  9fe980:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  9fe986:	62 72 05 48 7f f7    	vpermt2ps zmm14,zmm15,zmm7
  9fe98c:	62 f2 7d 40 7f d7    	vpermt2ps zmm2,zmm16,zmm7
  9fe992:	62 f1 dd 48 14 f6    	vunpcklpd zmm6,zmm4,zmm6
  9fe998:	62 d1 f5 40 14 f9    	vunpcklpd zmm7,zmm17,zmm9
  9fe99e:	62 51 f5 40 15 c9    	vunpckhpd zmm9,zmm17,zmm9
  9fe9a4:	62 c1 ed 40 14 cb    	vunpcklpd zmm17,zmm18,zmm11
  9fe9aa:	62 51 ed 40 15 db    	vunpckhpd zmm11,zmm18,zmm11
  9fe9b0:	62 d1 d5 48 14 ec    	vunpcklpd zmm5,zmm5,zmm12
  9fe9b6:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  9fe9bc:	62 b2 05 48 7f e1    	vpermt2ps zmm4,zmm15,zmm17
  9fe9c2:	62 b2 7d 40 7f f9    	vpermt2ps zmm7,zmm16,zmm17
  9fe9c8:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  9fe9ce:	62 52 05 48 7f e3    	vpermt2ps zmm12,zmm15,zmm11
  9fe9d4:	62 52 7d 40 7f cb    	vpermt2ps zmm9,zmm16,zmm11
  9fe9da:	62 72 4d 48 77 fd    	vpermi2ps zmm15,zmm6,zmm5
  9fe9e0:	62 f2 7d 40 7f f5    	vpermt2ps zmm6,zmm16,zmm5
  9fe9e6:	62 71 7c 48 10 5a 02 	vmovups zmm11,ZMMWORD PTR [rdx+0x80]
  9fe9ed:	62 e1 7c 48 10 42 03 	vmovups zmm16,ZMMWORD PTR [rdx+0xc0]
  9fe9f4:	62 f1 7c 48 10 6a 04 	vmovups zmm5,ZMMWORD PTR [rdx+0x100]
  9fe9fb:	62 e1 7c 48 10 4a 05 	vmovups zmm17,ZMMWORD PTR [rdx+0x140]
  9fea02:	62 e1 7c 48 10 52 06 	vmovups zmm18,ZMMWORD PTR [rdx+0x180]
  9fea09:	62 e1 7c 48 10 5a 07 	vmovups zmm19,ZMMWORD PTR [rdx+0x1c0]
  9fea10:	62 e1 7c 48 10 62 08 	vmovups zmm20,ZMMWORD PTR [rdx+0x200]
  9fea17:	62 e1 7c 48 10 6a 09 	vmovups zmm21,ZMMWORD PTR [rdx+0x240]
  9fea1e:	62 e1 7c 48 10 72 0a 	vmovups zmm22,ZMMWORD PTR [rdx+0x280]
  9fea25:	62 e1 7c 48 10 7a 0b 	vmovups zmm23,ZMMWORD PTR [rdx+0x2c0]
  9fea2c:	62 61 14 48 59 c5    	vmulps zmm24,zmm13,zmm5
  9fea32:	62 22 1d 48 bc c1    	vfnmadd231ps zmm24,zmm12,zmm17
  9fea38:	62 21 0c 48 59 cc    	vmulps zmm25,zmm14,zmm20
  9fea3e:	62 22 05 48 bc cd    	vfnmadd231ps zmm25,zmm15,zmm21
  9fea44:	62 01 3c 40 58 d1    	vaddps zmm26,zmm24,zmm25
  9fea4a:	62 21 2c 48 59 da    	vmulps zmm27,zmm10,zmm18
  9fea50:	62 22 35 48 bc db    	vfnmadd231ps zmm27,zmm9,zmm19
  9fea56:	62 21 6c 48 59 e6    	vmulps zmm28,zmm2,zmm22
  9fea5c:	62 22 4d 48 bc e7    	vfnmadd231ps zmm28,zmm6,zmm23
  9fea62:	62 41 3c 48 59 eb    	vmulps zmm29,zmm8,zmm11
  9fea68:	62 22 45 48 bc e8    	vfnmadd231ps zmm29,zmm7,zmm16
  9fea6e:	62 01 1c 40 58 f5    	vaddps zmm30,zmm28,zmm29
  9fea74:	62 f1 1c 48 59 ed    	vmulps zmm5,zmm12,zmm5
  9fea7a:	62 d2 75 40 b8 ed    	vfmadd231ps zmm5,zmm17,zmm13
  9fea80:	62 31 04 48 59 e4    	vmulps zmm12,zmm15,zmm20
  9fea86:	62 52 55 40 b8 e6    	vfmadd231ps zmm12,zmm21,zmm14
  9fea8c:	62 51 54 48 58 ec    	vaddps zmm13,zmm5,zmm12
  9fea92:	62 31 34 48 59 ca    	vmulps zmm9,zmm9,zmm18
  9fea98:	62 52 65 40 b8 ca    	vfmadd231ps zmm9,zmm19,zmm10
  9fea9e:	62 31 4c 48 59 d6    	vmulps zmm10,zmm6,zmm22
  9feaa4:	62 72 45 40 b8 d2    	vfmadd231ps zmm10,zmm23,zmm2
  9feaaa:	62 d1 44 48 59 fb    	vmulps zmm7,zmm7,zmm11
  9feab0:	62 d2 7d 40 b8 f8    	vfmadd231ps zmm7,zmm16,zmm8
  9feab6:	62 f1 2c 48 58 d7    	vaddps zmm2,zmm10,zmm7
  9feabc:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  9feac2:	62 f2 2d 40 ac f3    	vfnmadd213ps zmm6,zmm26,zmm3
  9feac8:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  9feace:	62 12 0d 40 ac c3    	vfnmadd213ps zmm8,zmm30,zmm27
  9fead4:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  9feada:	62 72 15 48 ac dc    	vfnmadd213ps zmm11,zmm13,zmm4
  9feae0:	62 11 3c 40 5c f1    	vsubps zmm14,zmm24,zmm25
  9feae6:	62 71 0c 48 59 f1    	vmulps zmm14,zmm14,zmm1
  9feaec:	62 d2 6d 48 ac c1    	vfnmadd213ps zmm0,zmm2,zmm9
  9feaf2:	62 11 1c 40 5c fd    	vsubps zmm15,zmm28,zmm29
  9feaf8:	62 71 04 48 59 f9    	vmulps zmm15,zmm15,zmm1
  9feafe:	c5 34 58 ca          	vaddps ymm9,ymm9,ymm2
  9feb02:	c5 94 58 e4          	vaddps ymm4,ymm13,ymm4
  9feb06:	c5 34 58 ec          	vaddps ymm13,ymm9,ymm4
  9feb0a:	62 81 24 00 58 c6    	vaddps xmm16,xmm27,xmm30
  9feb10:	62 91 64 08 58 da    	vaddps xmm3,xmm3,xmm26
  9feb16:	62 a1 64 08 58 c8    	vaddps xmm17,xmm3,xmm16
  9feb1c:	c5 fc 28 15 9c 97 67 	vmovaps ymm2,YMMWORD PTR [rip+0xffffffffff67979c]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  9feb23:	ff 
  9feb24:	62 c2 6d 28 7f cd    	vpermt2ps ymm17,ymm2,ymm13
  9feb2a:	62 e1 7c 08 11 0e    	vmovups XMMWORD PTR [rsi],xmm17
  9feb30:	62 c3 7d 28 19 cd 01 	vextractf32x4 xmm13,ymm17,0x1
  9feb37:	c5 78 13 6e 10       	vmovlps QWORD PTR [rsi+0x10],xmm13
  9feb3c:	c4 41 7c 5c ef       	vsubps ymm13,ymm0,ymm15
  9feb41:	62 c1 24 28 5c ce    	vsubps ymm17,ymm11,ymm14
  9feb47:	62 c1 74 20 5c d5    	vsubps ymm18,ymm17,ymm13
  9feb4d:	c5 a8 5c ff          	vsubps xmm7,xmm10,xmm7
  9feb51:	c5 c0 59 f9          	vmulps xmm7,xmm7,xmm1
  9feb55:	c5 38 58 d7          	vaddps xmm10,xmm8,xmm7
  9feb59:	c4 c1 50 5c ec       	vsubps xmm5,xmm5,xmm12
  9feb5e:	c5 d0 59 c9          	vmulps xmm1,xmm5,xmm1
  9feb62:	c5 c8 58 e9          	vaddps xmm5,xmm6,xmm1
  9feb66:	c4 41 50 5c e2       	vsubps xmm12,xmm5,xmm10
  9feb6b:	62 32 6d 28 7f e2    	vpermt2ps ymm12,ymm2,ymm18
  9feb71:	c5 78 11 66 18       	vmovups XMMWORD PTR [rsi+0x18],xmm12
  9feb76:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  9feb7c:	c5 78 13 66 28       	vmovlps QWORD PTR [rsi+0x28],xmm12
  9feb81:	c5 84 58 c0          	vaddps ymm0,ymm15,ymm0
  9feb85:	c4 41 0c 58 db       	vaddps ymm11,ymm14,ymm11
  9feb8a:	c5 24 58 e0          	vaddps ymm12,ymm11,ymm0
  9feb8e:	c5 b8 5c ff          	vsubps xmm7,xmm8,xmm7
  9feb92:	c5 c8 5c c9          	vsubps xmm1,xmm6,xmm1
  9feb96:	c5 f0 58 f7          	vaddps xmm6,xmm1,xmm7
  9feb9a:	62 d2 6d 28 7f f4    	vpermt2ps ymm6,ymm2,ymm12
  9feba0:	c5 f8 11 76 30       	vmovups XMMWORD PTR [rsi+0x30],xmm6
  9feba5:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  9febab:	c5 f8 13 76 40       	vmovlps QWORD PTR [rsi+0x40],xmm6
  9febb0:	c4 c1 5c 5c e1       	vsubps ymm4,ymm4,ymm9
  9febb5:	62 b1 64 08 5c d8    	vsubps xmm3,xmm3,xmm16
  9febbb:	62 f2 6d 28 7f dc    	vpermt2ps ymm3,ymm2,ymm4
  9febc1:	c4 e3 7d 19 dc 01    	vextractf128 xmm4,ymm3,0x1
  9febc7:	c5 f8 13 66 58       	vmovlps QWORD PTR [rsi+0x58],xmm4
  9febcc:	c5 f8 11 5e 48       	vmovups XMMWORD PTR [rsi+0x48],xmm3
  9febd1:	62 d1 74 20 58 dd    	vaddps ymm3,ymm17,ymm13
  9febd7:	c5 a8 58 e5          	vaddps xmm4,xmm10,xmm5
  9febdb:	62 f2 6d 28 7f e3    	vpermt2ps ymm4,ymm2,ymm3
  9febe1:	c5 f8 11 66 60       	vmovups XMMWORD PTR [rsi+0x60],xmm4
  9febe6:	c4 e3 7d 19 e3 01    	vextractf128 xmm3,ymm4,0x1
  9febec:	c5 f8 13 5e 70       	vmovlps QWORD PTR [rsi+0x70],xmm3
  9febf1:	c5 a4 5c c0          	vsubps ymm0,ymm11,ymm0
  9febf5:	c5 f0 5c cf          	vsubps xmm1,xmm1,xmm7
  9febf9:	62 f2 6d 28 7f c8    	vpermt2ps ymm1,ymm2,ymm0
  9febff:	c5 f8 11 4e 78       	vmovups XMMWORD PTR [rsi+0x78],xmm1
  9fec04:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  9fec0a:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  9fec11:	00 
  9fec12:	48 89 ec             	mov    rsp,rbp
  9fec15:	5d                   	pop    rbp
  9fec16:	c5 f8 77             	vzeroupper
  9fec19:	c3                   	ret
