
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a2f600 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a2f600:	55                   	push   rbp
  a2f601:	48 89 e5             	mov    rbp,rsp
  a2f604:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a2f608:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a2f60f:	62 f1 7c 48 28 05 67 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff697967]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a2f616:	79 69 ff 
  a2f619:	62 f1 7c 48 28 0d dd 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6978dd]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a2f620:	78 69 ff 
  a2f623:	62 f1 7c 48 28 15 13 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff697913]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a2f62a:	79 69 ff 
  a2f62d:	62 f1 7c 48 28 1d c9 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6977c9]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2f634:	77 69 ff 
  a2f637:	62 f1 7c 48 28 25 ff 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6977ff]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a2f63e:	77 69 ff 
  a2f641:	48 c1 e2 06          	shl    rdx,0x6
  a2f645:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a2f649:	31 d2                	xor    edx,edx
  a2f64b:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a2f650:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a2f655:	62 61 7c 48 28 05 61 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff661461]        # 90ac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1df70>
  a2f65c:	14 66 ff 
  a2f65f:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a2f663:	62 61 7c 48 28 0d 93 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff661493]        # 90b00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dfb0>
  a2f66a:	14 66 ff 
  a2f66d:	c4 41 38 57 c0       	vxorps xmm8,xmm8,xmm8
  a2f672:	62 72 7d 48 18 0d e4 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff645de4]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a2f679:	5d 64 ff 
  a2f67c:	62 52 7d 48 7f c0    	vpermt2ps zmm8,zmm0,zmm8
  a2f682:	62 62 7d 48 18 15 48 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff645c48]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a2f689:	5c 64 ff 
  a2f68c:	c5 7c 28 1d 4c 7b 64 	vmovaps ymm11,YMMWORD PTR [rip+0xffffffffff647b4c]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a2f693:	ff 
  a2f694:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a2f69b:	00 00 00 00 00 
  a2f6a0:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a2f6a5:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a2f6aa:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  a2f6af:	c5 78 10 6c 17 20    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x20]
  a2f6b5:	c4 63 11 21 6c 17 24 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x24],0x10
  a2f6bc:	10 
  a2f6bd:	c4 62 79 18 74 17 28 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x28]
  a2f6c4:	c5 78 10 7c 17 50    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x50]
  a2f6ca:	c4 63 01 21 7c 17 54 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0x54],0x10
  a2f6d1:	10 
  a2f6d2:	c4 43 09 0c ed 03    	vblendps xmm13,xmm14,xmm13,0x3
  a2f6d8:	c4 62 79 18 74 17 58 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x58]
  a2f6df:	c4 63 11 21 6c 17 2c 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x2c],0x30
  a2f6e6:	30 
  a2f6e7:	c4 43 09 0c f7 03    	vblendps xmm14,xmm14,xmm15,0x3
  a2f6ed:	c4 63 09 21 74 17 5c 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x5c],0x30
  a2f6f4:	30 
  a2f6f5:	62 53 1d 48 18 e5 02 	vinsertf32x4 zmm12,zmm12,xmm13,0x2
  a2f6fc:	c5 7c 10 6c 17 30    	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x30]
  a2f702:	62 53 15 48 18 ee 02 	vinsertf32x4 zmm13,zmm13,xmm14,0x2
  a2f709:	c5 7c 10 74 17 60    	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x60]
  a2f70f:	62 51 7c 48 28 fc    	vmovaps zmm15,zmm12
  a2f715:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0x80]
  a2f71c:	08 
  a2f71d:	62 f3 7d 00 21 6c 17 	vinsertps xmm5,xmm16,DWORD PTR [rdi+rdx*1+0x84],0x10
  a2f724:	21 10 
  a2f726:	62 72 35 40 7f e6    	vpermt2ps zmm12,zmm25,zmm6
  a2f72c:	c4 e2 79 18 bc 17 88 	vbroadcastss xmm7,DWORD PTR [rdi+rdx*1+0x88]
  a2f733:	00 00 00 
  a2f736:	c4 e3 41 0c ed 03    	vblendps xmm5,xmm7,xmm5,0x3
  a2f73c:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a2f742:	c4 e3 51 21 ac 17 8c 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x8c],0x30
  a2f749:	00 00 00 30 
  a2f74d:	62 f3 0d 48 18 ed 02 	vinsertf32x4 zmm5,zmm14,xmm5,0x2
  a2f754:	62 72 35 40 7f ee    	vpermt2ps zmm13,zmm25,zmm6
  a2f75a:	c5 78 10 b4 17 b0 00 	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0xb0]
  a2f761:	00 00 
  a2f763:	c4 63 09 21 b4 17 b4 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0xb4],0x10
  a2f76a:	00 00 00 10 
  a2f76e:	62 e1 7c 48 28 cd    	vmovaps zmm17,zmm5
  a2f774:	62 f2 35 40 7f ee    	vpermt2ps zmm5,zmm25,zmm6
  a2f77a:	c4 62 79 18 94 17 b8 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0xb8]
  a2f781:	00 00 00 
  a2f784:	62 72 3d 40 7f fe    	vpermt2ps zmm15,zmm24,zmm6
  a2f78a:	c4 43 29 0c d6 03    	vblendps xmm10,xmm10,xmm14,0x3
  a2f790:	c4 63 29 21 94 17 bc 	vinsertps xmm10,xmm10,DWORD PTR [rdi+rdx*1+0xbc],0x30
  a2f797:	00 00 00 30 
  a2f79b:	62 f2 3d 40 7f fe    	vpermt2ps zmm7,zmm24,zmm6
  a2f7a1:	c5 7c 10 b4 17 90 00 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x90]
  a2f7a8:	00 00 
  a2f7aa:	62 53 0d 48 18 d2 02 	vinsertf32x4 zmm10,zmm14,xmm10,0x2
  a2f7b1:	62 51 7c 48 28 f2    	vmovaps zmm14,zmm10
  a2f7b7:	62 e2 3d 40 7f ce    	vpermt2ps zmm17,zmm24,zmm6
  a2f7bd:	62 72 3d 40 7f f6    	vpermt2ps zmm14,zmm24,zmm6
  a2f7c3:	62 72 35 40 7f d6    	vpermt2ps zmm10,zmm25,zmm6
  a2f7c9:	62 a1 04 48 58 d1    	vaddps zmm18,zmm15,zmm17
  a2f7cf:	62 c1 44 48 58 de    	vaddps zmm19,zmm7,zmm14
  a2f7d5:	62 e1 1c 48 58 e5    	vaddps zmm20,zmm12,zmm5
  a2f7db:	62 c1 14 48 58 ea    	vaddps zmm21,zmm13,zmm10
  a2f7e1:	62 a1 5c 40 58 c5    	vaddps zmm16,zmm20,zmm21
  a2f7e7:	62 a1 6c 40 58 f3    	vaddps zmm22,zmm18,zmm19
  a2f7ed:	62 31 04 48 5c f9    	vsubps zmm15,zmm15,zmm17
  a2f7f3:	62 51 14 48 5c d2    	vsubps zmm10,zmm13,zmm10
  a2f7f9:	62 f1 1c 48 5c ed    	vsubps zmm5,zmm12,zmm5
  a2f7ff:	62 51 04 48 58 ea    	vaddps zmm13,zmm15,zmm10
  a2f805:	62 f1 0c 48 5c ff    	vsubps zmm7,zmm14,zmm7
  a2f80b:	62 e1 44 48 58 cd    	vaddps zmm17,zmm7,zmm5
  a2f811:	62 a1 5c 40 5c e5    	vsubps zmm20,zmm20,zmm21
  a2f817:	62 31 6c 40 5c e3    	vsubps zmm12,zmm18,zmm19
  a2f81d:	62 51 04 48 5c d2    	vsubps zmm10,zmm15,zmm10
  a2f823:	62 e1 54 48 5c d7    	vsubps zmm18,zmm5,zmm7
  a2f829:	62 e2 7d 48 7f f6    	vpermt2ps zmm22,zmm0,zmm6
  a2f82f:	62 72 7d 48 7f ee    	vpermt2ps zmm13,zmm0,zmm6
  a2f835:	62 72 7d 48 7f e6    	vpermt2ps zmm12,zmm0,zmm6
  a2f83b:	62 72 7d 48 7f d6    	vpermt2ps zmm10,zmm0,zmm6
  a2f841:	62 b1 7c 48 28 ee    	vmovaps zmm5,zmm22
  a2f847:	62 d2 75 48 7f e8    	vpermt2ps zmm5,zmm1,zmm8
  a2f84d:	62 c2 6d 48 7f f0    	vpermt2ps zmm22,zmm2,zmm8
  a2f853:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a2f859:	62 52 6d 48 7f e8    	vpermt2ps zmm13,zmm2,zmm8
  a2f85f:	62 d2 75 48 7f f8    	vpermt2ps zmm7,zmm1,zmm8
  a2f865:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a2f86b:	62 52 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm8
  a2f871:	62 52 6d 48 7f e0    	vpermt2ps zmm12,zmm2,zmm8
  a2f877:	62 51 cd 40 14 e4    	vunpcklpd zmm12,zmm22,zmm12
  a2f87d:	62 c1 7c 48 28 da    	vmovaps zmm19,zmm10
  a2f883:	62 c2 75 48 7f d8    	vpermt2ps zmm19,zmm1,zmm8
  a2f889:	62 52 6d 48 7f d0    	vpermt2ps zmm10,zmm2,zmm8
  a2f88f:	62 51 95 48 14 d2    	vunpcklpd zmm10,zmm13,zmm10
  a2f895:	62 51 d5 48 14 ee    	vunpcklpd zmm13,zmm5,zmm14
  a2f89b:	62 51 d5 48 15 fe    	vunpckhpd zmm15,zmm5,zmm14
  a2f8a1:	62 a1 c5 48 14 fb    	vunpcklpd zmm23,zmm7,zmm19
  a2f8a7:	62 a1 c5 48 15 f3    	vunpckhpd zmm22,zmm7,zmm19
  a2f8ad:	62 e2 7d 48 7f c6    	vpermt2ps zmm16,zmm0,zmm6
  a2f8b3:	62 e2 7d 48 7f ce    	vpermt2ps zmm17,zmm0,zmm6
  a2f8b9:	62 e2 7d 48 7f e6    	vpermt2ps zmm20,zmm0,zmm6
  a2f8bf:	62 c1 7c 48 28 dc    	vmovaps zmm19,zmm12
  a2f8c5:	62 e2 7d 48 7f d6    	vpermt2ps zmm18,zmm0,zmm6
  a2f8cb:	62 b1 7c 48 28 e8    	vmovaps zmm5,zmm16
  a2f8d1:	62 d2 75 48 7f e8    	vpermt2ps zmm5,zmm1,zmm8
  a2f8d7:	62 52 5d 48 7f e2    	vpermt2ps zmm12,zmm4,zmm10
  a2f8dd:	62 c2 6d 48 7f c0    	vpermt2ps zmm16,zmm2,zmm8
  a2f8e3:	62 b1 7c 48 28 f9    	vmovaps zmm7,zmm17
  a2f8e9:	62 d2 75 48 7f f8    	vpermt2ps zmm7,zmm1,zmm8
  a2f8ef:	62 51 7c 48 28 f5    	vmovaps zmm14,zmm13
  a2f8f5:	62 c2 6d 48 7f c8    	vpermt2ps zmm17,zmm2,zmm8
  a2f8fb:	62 21 7c 48 28 dc    	vmovaps zmm27,zmm20
  a2f901:	62 42 75 48 7f d8    	vpermt2ps zmm27,zmm1,zmm8
  a2f907:	62 32 5d 48 7f ef    	vpermt2ps zmm13,zmm4,zmm23
  a2f90d:	62 c2 6d 48 7f e0    	vpermt2ps zmm20,zmm2,zmm8
  a2f913:	62 a1 fd 40 14 e4    	vunpcklpd zmm20,zmm16,zmm20
  a2f919:	62 a1 7c 48 28 c2    	vmovaps zmm16,zmm18
  a2f91f:	62 41 7c 48 28 e7    	vmovaps zmm28,zmm15
  a2f925:	62 c2 75 48 7f c0    	vpermt2ps zmm16,zmm1,zmm8
  a2f92b:	62 c2 6d 48 7f d0    	vpermt2ps zmm18,zmm2,zmm8
  a2f931:	62 a1 f5 40 14 ca    	vunpcklpd zmm17,zmm17,zmm18
  a2f937:	62 32 5d 48 7f fe    	vpermt2ps zmm15,zmm4,zmm22
  a2f93d:	62 81 d5 48 14 eb    	vunpcklpd zmm21,zmm5,zmm27
  a2f943:	62 91 d5 48 15 eb    	vunpckhpd zmm5,zmm5,zmm27
  a2f949:	62 a1 c5 48 14 d0    	vunpcklpd zmm18,zmm7,zmm16
  a2f94f:	62 c2 65 48 7f da    	vpermt2ps zmm19,zmm3,zmm10
  a2f955:	62 b1 c5 48 15 f8    	vunpckhpd zmm7,zmm7,zmm16
  a2f95b:	62 a1 7c 48 28 c5    	vmovaps zmm16,zmm21
  a2f961:	62 a2 65 48 7f c2    	vpermt2ps zmm16,zmm3,zmm18
  a2f967:	62 a2 5d 48 7f ea    	vpermt2ps zmm21,zmm4,zmm18
  a2f96d:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a2f973:	62 72 65 48 7f d7    	vpermt2ps zmm10,zmm3,zmm7
  a2f979:	62 21 7c 48 28 dc    	vmovaps zmm27,zmm20
  a2f97f:	62 f2 5d 48 7f ef    	vpermt2ps zmm5,zmm4,zmm7
  a2f985:	62 22 65 48 7f d9    	vpermt2ps zmm27,zmm3,zmm17
  a2f98b:	62 a2 5d 48 7f e1    	vpermt2ps zmm20,zmm4,zmm17
  a2f991:	62 f1 7c 48 10 79 02 	vmovups zmm7,ZMMWORD PTR [rcx+0x80]
  a2f998:	62 32 65 48 7f f7    	vpermt2ps zmm14,zmm3,zmm23
  a2f99e:	62 e1 7c 48 10 79 03 	vmovups zmm23,ZMMWORD PTR [rcx+0xc0]
  a2f9a5:	62 61 7c 48 10 69 04 	vmovups zmm29,ZMMWORD PTR [rcx+0x100]
  a2f9ac:	62 e1 7c 48 10 51 08 	vmovups zmm18,ZMMWORD PTR [rcx+0x200]
  a2f9b3:	62 22 65 48 7f e6    	vpermt2ps zmm28,zmm3,zmm22
  a2f9b9:	62 e1 7c 48 10 71 09 	vmovups zmm22,ZMMWORD PTR [rcx+0x240]
  a2f9c0:	62 a1 64 40 59 ca    	vmulps zmm17,zmm19,zmm18
  a2f9c6:	62 a1 24 40 59 d2    	vmulps zmm18,zmm27,zmm18
  a2f9cc:	62 a2 25 40 bc ce    	vfnmadd231ps zmm17,zmm27,zmm22
  a2f9d2:	62 61 7c 48 10 59 05 	vmovups zmm27,ZMMWORD PTR [rcx+0x140]
  a2f9d9:	62 a2 4d 40 b8 d3    	vfmadd231ps zmm18,zmm22,zmm19
  a2f9df:	62 61 7c 48 10 71 06 	vmovups zmm30,ZMMWORD PTR [rcx+0x180]
  a2f9e6:	62 81 1c 40 59 f5    	vmulps zmm22,zmm28,zmm29
  a2f9ec:	62 81 2c 48 59 dd    	vmulps zmm19,zmm10,zmm29
  a2f9f2:	62 82 25 40 b8 dc    	vfmadd231ps zmm19,zmm27,zmm28
  a2f9f8:	62 61 7c 48 10 61 07 	vmovups zmm28,ZMMWORD PTR [rcx+0x1c0]
  a2f9ff:	62 82 2d 48 bc f3    	vfnmadd231ps zmm22,zmm10,zmm27
  a2fa05:	62 71 7c 48 10 51 0a 	vmovups zmm10,ZMMWORD PTR [rcx+0x280]
  a2fa0c:	62 01 04 48 59 de    	vmulps zmm27,zmm15,zmm30
  a2fa12:	62 01 54 48 59 ee    	vmulps zmm29,zmm5,zmm30
  a2fa18:	62 02 55 48 bc dc    	vfnmadd231ps zmm27,zmm5,zmm28
  a2fa1e:	62 f1 7c 48 10 69 0b 	vmovups zmm5,ZMMWORD PTR [rcx+0x2c0]
  a2fa25:	62 42 1d 40 b8 ef    	vfmadd231ps zmm29,zmm28,zmm15
  a2fa2b:	62 41 1c 48 59 e2    	vmulps zmm28,zmm12,zmm10
  a2fa31:	62 62 5d 40 bc e5    	vfnmadd231ps zmm28,zmm20,zmm5
  a2fa37:	62 61 14 48 59 f7    	vmulps zmm30,zmm13,zmm7
  a2fa3d:	62 22 55 40 bc f7    	vfnmadd231ps zmm30,zmm21,zmm23
  a2fa43:	62 51 5c 40 59 d2    	vmulps zmm10,zmm20,zmm10
  a2fa49:	62 81 1c 40 58 e6    	vaddps zmm20,zmm28,zmm30
  a2fa4f:	62 52 55 48 b8 d4    	vfmadd231ps zmm10,zmm5,zmm12
  a2fa55:	62 f1 54 40 59 ef    	vmulps zmm5,zmm21,zmm7
  a2fa5b:	62 d2 45 40 b8 ed    	vfmadd231ps zmm5,zmm23,zmm13
  a2fa61:	62 b1 64 40 58 fa    	vaddps zmm7,zmm19,zmm18
  a2fa67:	62 71 2c 48 58 ed    	vaddps zmm13,zmm10,zmm5
  a2fa6d:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a2fa73:	62 c1 7c 48 28 e9    	vmovaps zmm21,zmm9
  a2fa79:	62 a1 4c 40 58 f9    	vaddps zmm23,zmm22,zmm17
  a2fa7f:	62 82 15 48 ac ed    	vfnmadd213ps zmm21,zmm13,zmm29
  a2fa85:	62 51 14 20 58 ed    	vaddps ymm13,ymm29,ymm13
  a2fa8b:	62 41 7c 48 28 e9    	vmovaps zmm29,zmm9
  a2fa91:	62 22 45 48 ac e8    	vfnmadd213ps zmm29,zmm7,zmm16
  a2fa97:	62 31 44 28 58 f8    	vaddps ymm15,ymm7,ymm16
  a2fa9d:	62 d1 7c 48 28 f9    	vmovaps zmm7,zmm9
  a2faa3:	62 92 5d 40 ac fb    	vfnmadd213ps zmm7,zmm20,zmm27
  a2faa9:	62 52 45 40 ac e6    	vfnmadd213ps zmm12,zmm23,zmm14
  a2faaf:	62 a1 24 20 58 c4    	vaddps ymm16,ymm27,ymm20
  a2fab5:	62 c1 04 28 58 e5    	vaddps ymm20,ymm15,ymm13
  a2fabb:	62 31 0c 28 58 f7    	vaddps ymm14,ymm14,ymm23
  a2fac1:	62 a1 0c 08 58 f8    	vaddps xmm23,xmm14,xmm16
  a2fac7:	62 01 1c 20 5c de    	vsubps ymm27,ymm28,ymm30
  a2facd:	62 01 24 20 59 da    	vmulps ymm27,ymm27,ymm26
  a2fad3:	62 01 54 20 5c e3    	vsubps ymm28,ymm21,ymm27
  a2fad9:	62 a2 25 28 7f fc    	vpermt2ps ymm23,ymm11,ymm20
  a2fadf:	62 a1 4c 20 5c c9    	vsubps ymm17,ymm22,ymm17
  a2fae5:	62 81 74 20 59 ca    	vmulps ymm17,ymm17,ymm26
  a2faeb:	62 a1 14 20 5c e1    	vsubps ymm20,ymm29,ymm17
  a2faf1:	62 e1 7c 28 11 3c 16 	vmovups YMMWORD PTR [rsi+rdx*1],ymm23
  a2faf8:	c5 ac 5c ed          	vsubps ymm5,ymm10,ymm5
  a2fafc:	62 91 54 28 59 ea    	vmulps ymm5,ymm5,ymm26
  a2fb02:	c5 44 58 d5          	vaddps ymm10,ymm7,ymm5
  a2fb06:	62 81 5c 20 5c f4    	vsubps ymm22,ymm20,ymm28
  a2fb0c:	62 a1 64 20 5c d2    	vsubps ymm18,ymm19,ymm18
  a2fb12:	62 81 6c 20 59 d2    	vmulps ymm18,ymm18,ymm26
  a2fb18:	62 a1 1c 28 58 da    	vaddps ymm19,ymm12,ymm18
  a2fb1e:	62 c1 64 00 5c fa    	vsubps xmm23,xmm19,xmm10
  a2fb24:	62 a2 25 28 7f fe    	vpermt2ps ymm23,ymm11,ymm22
  a2fb2a:	62 81 54 20 58 eb    	vaddps ymm21,ymm21,ymm27
  a2fb30:	62 81 74 20 58 cd    	vaddps ymm17,ymm17,ymm29
  a2fb36:	62 e1 7c 28 11 7c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm23
  a2fb3d:	01 
  a2fb3e:	c5 c4 5c ed          	vsubps ymm5,ymm7,ymm5
  a2fb42:	62 b1 74 20 58 fd    	vaddps ymm7,ymm17,ymm21
  a2fb48:	62 31 1c 28 5c e2    	vsubps ymm12,ymm12,ymm18
  a2fb4e:	62 e1 1c 08 58 d5    	vaddps xmm18,xmm12,xmm5
  a2fb54:	62 e2 25 28 7f d7    	vpermt2ps ymm18,ymm11,ymm7
  a2fb5a:	c4 c1 04 5c fd       	vsubps ymm7,ymm15,ymm13
  a2fb5f:	62 31 0c 08 5c e8    	vsubps xmm13,xmm14,xmm16
  a2fb65:	62 e1 7c 28 11 54 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm18
  a2fb6c:	02 
  a2fb6d:	62 72 25 28 7f ef    	vpermt2ps ymm13,ymm11,ymm7
  a2fb73:	62 91 5c 20 58 fc    	vaddps ymm7,ymm20,ymm28
  a2fb79:	62 51 64 00 58 d2    	vaddps xmm10,xmm19,xmm10
  a2fb7f:	c5 7c 11 6c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm13
  a2fb85:	62 72 25 28 7f d7    	vpermt2ps ymm10,ymm11,ymm7
  a2fb8b:	62 b1 74 20 5c fd    	vsubps ymm7,ymm17,ymm21
  a2fb91:	c5 98 5c ed          	vsubps xmm5,xmm12,xmm5
  a2fb95:	c5 7c 11 94 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm10
  a2fb9c:	00 00 
  a2fb9e:	62 f2 25 28 7f ef    	vpermt2ps ymm5,ymm11,ymm7
  a2fba4:	c5 fc 11 ac 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm5
  a2fbab:	00 00 
  a2fbad:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  a2fbb4:	48 39 d0             	cmp    rax,rdx
  a2fbb7:	0f 85 e3 fa ff ff    	jne    a2f6a0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0xa0>
  a2fbbd:	48 89 ec             	mov    rsp,rbp
  a2fbc0:	5d                   	pop    rbp
  a2fbc1:	c5 f8 77             	vzeroupper
  a2fbc4:	c3                   	ret
