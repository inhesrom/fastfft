
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a72400 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a72400:	55                   	push   rbp
  a72401:	48 89 e5             	mov    rbp,rsp
  a72404:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a72408:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a7240f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a72414:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a72419:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a7241e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a72423:	62 f1 7c 48 28 1d 93 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff622593]        # 949c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21e70>
  a7242a:	25 62 ff 
  a7242d:	62 f1 7c 48 10 27    	vmovups zmm4,ZMMWORD PTR [rdi]
  a72433:	62 f1 7c 48 10 6f 01 	vmovups zmm5,ZMMWORD PTR [rdi+0x40]
  a7243a:	62 f1 7c 48 10 77 02 	vmovups zmm6,ZMMWORD PTR [rdi+0x80]
  a72441:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a72445:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a7244b:	62 f2 65 48 7f f9    	vpermt2ps zmm7,zmm3,zmm1
  a72451:	62 f1 7c 48 28 05 a5 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6225a5]        # 94a00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21eb0>
  a72458:	25 62 ff 
  a7245b:	62 f2 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm1
  a72461:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a72467:	62 72 65 48 7f c1    	vpermt2ps zmm8,zmm3,zmm1
  a7246d:	62 f2 7d 48 7f e9    	vpermt2ps zmm5,zmm0,zmm1
  a72473:	62 f2 4d 48 77 d9    	vpermi2ps zmm3,zmm6,zmm1
  a72479:	62 f2 7d 48 7f f1    	vpermt2ps zmm6,zmm0,zmm1
  a7247f:	62 71 54 48 58 ce    	vaddps zmm9,zmm5,zmm6
  a72485:	62 d1 5c 48 58 d1    	vaddps zmm2,zmm4,zmm9
  a7248b:	62 71 3c 48 58 d3    	vaddps zmm10,zmm8,zmm3
  a72491:	62 d1 44 48 58 c2    	vaddps zmm0,zmm7,zmm10
  a72497:	62 72 7d 48 18 1d bf 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff602fbf]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a7249e:	2f 60 ff 
  a724a1:	62 d2 25 48 bc e1    	vfnmadd231ps zmm4,zmm11,zmm9
  a724a7:	62 f1 3c 48 5c db    	vsubps zmm3,zmm8,zmm3
  a724ad:	62 72 7d 48 18 05 1d 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff602e1d]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a724b4:	2e 60 ff 
  a724b7:	62 51 64 48 59 c8    	vmulps zmm9,zmm3,zmm8
  a724bd:	62 d1 5c 48 58 d9    	vaddps zmm3,zmm4,zmm9
  a724c3:	62 d2 2d 48 bc fb    	vfnmadd231ps zmm7,zmm10,zmm11
  a724c9:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a724cf:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a724d5:	62 f1 44 48 5c f5    	vsubps zmm6,zmm7,zmm5
  a724db:	62 51 5c 48 5c c1    	vsubps zmm8,zmm4,zmm9
  a724e1:	62 f1 54 48 58 ff    	vaddps zmm7,zmm5,zmm7
  a724e7:	62 f1 7c 48 28 25 8f 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff654a8f]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a724ee:	4a 65 ff 
  a724f1:	62 f2 5d 48 7f d1    	vpermt2ps zmm2,zmm4,zmm1
  a724f7:	62 f2 5d 48 7f d9    	vpermt2ps zmm3,zmm4,zmm1
  a724fd:	62 72 5d 48 7f c1    	vpermt2ps zmm8,zmm4,zmm1
  a72503:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a72507:	62 f2 5d 48 7f ed    	vpermt2ps zmm5,zmm4,zmm5
  a7250d:	62 71 7c 48 28 0d e9 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6549e9]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a72514:	49 65 ff 
  a72517:	62 71 7c 48 28 d2    	vmovaps zmm10,zmm2
  a7251d:	62 72 35 48 7f d5    	vpermt2ps zmm10,zmm9,zmm5
  a72523:	62 71 7c 48 28 25 13 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff654a13]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a7252a:	4a 65 ff 
  a7252d:	62 f2 1d 48 7f d5    	vpermt2ps zmm2,zmm12,zmm5
  a72533:	62 71 7c 48 28 eb    	vmovaps zmm13,zmm3
  a72539:	62 72 35 48 7f ed    	vpermt2ps zmm13,zmm9,zmm5
  a7253f:	62 f2 1d 48 7f dd    	vpermt2ps zmm3,zmm12,zmm5
  a72545:	62 51 7c 48 28 f0    	vmovaps zmm14,zmm8
  a7254b:	62 72 35 48 7f f5    	vpermt2ps zmm14,zmm9,zmm5
  a72551:	62 72 1d 48 7f c5    	vpermt2ps zmm8,zmm12,zmm5
  a72557:	62 71 7c 48 28 dd    	vmovaps zmm11,zmm5
  a7255d:	62 72 35 48 7f dd    	vpermt2ps zmm11,zmm9,zmm5
  a72563:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a72569:	62 f2 5d 48 7f f1    	vpermt2ps zmm6,zmm4,zmm1
  a7256f:	62 f2 5d 48 7f f9    	vpermt2ps zmm7,zmm4,zmm1
  a72575:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a7257b:	62 e2 35 48 7f cd    	vpermt2ps zmm17,zmm9,zmm5
  a72581:	62 f2 1d 48 7f c5    	vpermt2ps zmm0,zmm12,zmm5
  a72587:	62 e1 7c 48 28 d6    	vmovaps zmm18,zmm6
  a7258d:	62 e2 35 48 7f d5    	vpermt2ps zmm18,zmm9,zmm5
  a72593:	62 f2 1d 48 7f f5    	vpermt2ps zmm6,zmm12,zmm5
  a72599:	62 72 45 48 77 cd    	vpermi2ps zmm9,zmm7,zmm5
  a7259f:	62 f2 1d 48 7f fd    	vpermt2ps zmm7,zmm12,zmm5
  a725a5:	62 e1 7c 48 28 dd    	vmovaps zmm19,zmm5
  a725ab:	62 e2 1d 48 7f dd    	vpermt2ps zmm19,zmm12,zmm5
  a725b1:	62 d1 ad 48 14 ee    	vunpcklpd zmm5,zmm10,zmm14
  a725b7:	62 d1 ad 48 15 ce    	vunpckhpd zmm1,zmm10,zmm14
  a725bd:	62 51 95 48 14 d3    	vunpcklpd zmm10,zmm13,zmm11
  a725c3:	62 51 95 48 15 eb    	vunpckhpd zmm13,zmm13,zmm11
  a725c9:	62 d1 ed 48 14 e0    	vunpcklpd zmm4,zmm2,zmm8
  a725cf:	62 d1 ed 48 15 d0    	vunpckhpd zmm2,zmm2,zmm8
  a725d5:	62 31 e5 48 14 f3    	vunpcklpd zmm14,zmm3,zmm19
  a725db:	62 a1 e5 48 15 e3    	vunpckhpd zmm20,zmm3,zmm19
  a725e1:	62 71 7c 48 28 05 15 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff654815]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a725e8:	48 65 ff 
  a725eb:	62 f1 7c 48 28 dd    	vmovaps zmm3,zmm5
  a725f1:	62 d2 3d 48 7f da    	vpermt2ps zmm3,zmm8,zmm10
  a725f7:	62 e1 7c 48 28 2d 3f 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff65483f]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a725fe:	48 65 ff 
  a72601:	62 d2 55 40 7f ea    	vpermt2ps zmm5,zmm21,zmm10
  a72607:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  a7260d:	62 52 3d 48 7f e5    	vpermt2ps zmm12,zmm8,zmm13
  a72613:	62 d2 55 40 7f cd    	vpermt2ps zmm1,zmm21,zmm13
  a72619:	62 e1 7c 48 28 c4    	vmovaps zmm16,zmm4
  a7261f:	62 c2 3d 48 7f c6    	vpermt2ps zmm16,zmm8,zmm14
  a72625:	62 d2 55 40 7f e6    	vpermt2ps zmm4,zmm21,zmm14
  a7262b:	62 71 7c 48 28 fa    	vmovaps zmm15,zmm2
  a72631:	62 32 3d 48 7f fc    	vpermt2ps zmm15,zmm8,zmm20
  a72637:	62 b2 55 40 7f d4    	vpermt2ps zmm2,zmm21,zmm20
  a7263d:	62 51 f5 40 14 f1    	vunpcklpd zmm14,zmm17,zmm9
  a72643:	62 51 f5 40 15 d1    	vunpckhpd zmm10,zmm17,zmm9
  a72649:	62 51 ed 40 14 cb    	vunpcklpd zmm9,zmm18,zmm11
  a7264f:	62 c1 ed 40 15 cb    	vunpckhpd zmm17,zmm18,zmm11
  a72655:	62 71 fd 48 14 ef    	vunpcklpd zmm13,zmm0,zmm7
  a7265b:	62 71 fd 48 15 df    	vunpckhpd zmm11,zmm0,zmm7
  a72661:	62 b1 cd 48 14 fb    	vunpcklpd zmm7,zmm6,zmm19
  a72667:	62 b1 cd 48 15 f3    	vunpckhpd zmm6,zmm6,zmm19
  a7266d:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a72673:	62 d2 3d 48 7f c1    	vpermt2ps zmm0,zmm8,zmm9
  a72679:	62 52 55 40 7f f1    	vpermt2ps zmm14,zmm21,zmm9
  a7267f:	62 c1 7c 48 28 da    	vmovaps zmm19,zmm10
  a72685:	62 a2 3d 48 7f d9    	vpermt2ps zmm19,zmm8,zmm17
  a7268b:	62 32 55 40 7f d1    	vpermt2ps zmm10,zmm21,zmm17
  a72691:	62 51 7c 48 28 cd    	vmovaps zmm9,zmm13
  a72697:	62 72 3d 48 7f cf    	vpermt2ps zmm9,zmm8,zmm7
  a7269d:	62 72 55 40 7f ef    	vpermt2ps zmm13,zmm21,zmm7
  a726a3:	62 72 25 48 77 c6    	vpermi2ps zmm8,zmm11,zmm6
  a726a9:	62 72 55 40 7f de    	vpermt2ps zmm11,zmm21,zmm6
  a726af:	62 e1 7c 48 10 62 02 	vmovups zmm20,ZMMWORD PTR [rdx+0x80]
  a726b6:	62 e1 7c 48 10 6a 03 	vmovups zmm21,ZMMWORD PTR [rdx+0xc0]
  a726bd:	62 f1 7c 48 10 72 04 	vmovups zmm6,ZMMWORD PTR [rdx+0x100]
  a726c4:	62 e1 7c 48 10 72 05 	vmovups zmm22,ZMMWORD PTR [rdx+0x140]
  a726cb:	62 e1 7c 48 10 52 06 	vmovups zmm18,ZMMWORD PTR [rdx+0x180]
  a726d2:	62 e1 7c 48 10 4a 07 	vmovups zmm17,ZMMWORD PTR [rdx+0x1c0]
  a726d9:	62 f1 7c 48 10 7a 08 	vmovups zmm7,ZMMWORD PTR [rdx+0x200]
  a726e0:	62 e1 7c 48 10 7a 09 	vmovups zmm23,ZMMWORD PTR [rdx+0x240]
  a726e7:	62 61 7c 48 10 42 0a 	vmovups zmm24,ZMMWORD PTR [rdx+0x280]
  a726ee:	62 61 7c 48 10 4a 0b 	vmovups zmm25,ZMMWORD PTR [rdx+0x2c0]
  a726f5:	62 61 7c 48 10 52 0c 	vmovups zmm26,ZMMWORD PTR [rdx+0x300]
  a726fc:	62 61 7c 40 59 df    	vmulps zmm27,zmm16,zmm7
  a72702:	62 22 35 48 bc df    	vfnmadd231ps zmm27,zmm9,zmm23
  a72708:	62 f1 34 48 59 ff    	vmulps zmm7,zmm9,zmm7
  a7270e:	62 61 7c 48 10 62 0d 	vmovups zmm28,ZMMWORD PTR [rdx+0x340]
  a72715:	62 b2 45 40 b8 f8    	vfmadd231ps zmm7,zmm23,zmm16
  a7271b:	62 e1 7c 48 10 42 0e 	vmovups zmm16,ZMMWORD PTR [rdx+0x380]
  a72722:	62 71 1c 48 59 ce    	vmulps zmm9,zmm12,zmm6
  a72728:	62 32 65 40 bc ce    	vfnmadd231ps zmm9,zmm19,zmm22
  a7272e:	62 e1 64 40 59 fe    	vmulps zmm23,zmm19,zmm6
  a72734:	62 e1 7c 48 10 5a 0f 	vmovups zmm19,ZMMWORD PTR [rdx+0x3c0]
  a7273b:	62 c2 4d 40 b8 fc    	vfmadd231ps zmm23,zmm22,zmm12
  a72741:	62 91 64 48 58 f3    	vaddps zmm6,zmm3,zmm27
  a72747:	62 11 04 48 59 e2    	vmulps zmm12,zmm15,zmm26
  a7274d:	62 12 3d 48 bc e4    	vfnmadd231ps zmm12,zmm8,zmm28
  a72753:	62 81 3c 48 59 f2    	vmulps zmm22,zmm8,zmm26
  a72759:	62 51 34 48 58 c4    	vaddps zmm8,zmm9,zmm12
  a7275f:	62 c2 1d 40 b8 f7    	vfmadd231ps zmm22,zmm28,zmm15
  a72765:	62 21 54 48 59 d4    	vmulps zmm26,zmm5,zmm20
  a7276b:	62 22 0d 48 bc d5    	vfnmadd231ps zmm26,zmm14,zmm21
  a72771:	62 01 5c 48 59 e0    	vmulps zmm28,zmm4,zmm24
  a72777:	62 02 15 48 bc e1    	vfnmadd231ps zmm28,zmm13,zmm25
  a7277d:	62 31 0c 48 59 fc    	vmulps zmm15,zmm14,zmm20
  a72783:	62 a1 74 48 59 e2    	vmulps zmm20,zmm1,zmm18
  a72789:	62 a2 2d 48 bc e1    	vfnmadd231ps zmm20,zmm10,zmm17
  a7278f:	62 72 55 40 b8 fd    	vfmadd231ps zmm15,zmm21,zmm5
  a72795:	62 b1 6c 48 59 e8    	vmulps zmm5,zmm2,zmm16
  a7279b:	62 b2 25 48 bc eb    	vfnmadd231ps zmm5,zmm11,zmm19
  a727a1:	62 11 14 48 59 e8    	vmulps zmm13,zmm13,zmm24
  a727a7:	62 72 35 40 b8 ec    	vfmadd231ps zmm13,zmm25,zmm4
  a727ad:	62 51 04 48 58 f5    	vaddps zmm14,zmm15,zmm13
  a727b3:	62 31 2c 48 59 d2    	vmulps zmm10,zmm10,zmm18
  a727b9:	62 72 75 40 b8 d1    	vfmadd231ps zmm10,zmm17,zmm1
  a727bf:	62 b1 24 48 59 c8    	vmulps zmm1,zmm11,zmm16
  a727c5:	62 f2 65 40 b8 ca    	vfmadd231ps zmm1,zmm19,zmm2
  a727cb:	62 e1 2c 48 58 c9    	vaddps zmm17,zmm10,zmm1
  a727d1:	62 91 64 48 5c db    	vsubps zmm3,zmm3,zmm27
  a727d7:	62 b1 44 40 5c e6    	vsubps zmm4,zmm23,zmm22
  a727dd:	62 81 2c 40 5c d4    	vsubps zmm18,zmm26,zmm28
  a727e3:	62 c1 04 48 5c ed    	vsubps zmm21,zmm15,zmm13
  a727e9:	62 62 7d 48 18 05 a9 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff602ba9]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a727f0:	2b 60 ff 
  a727f3:	62 61 2c 48 5c c9    	vsubps zmm25,zmm10,zmm1
  a727f9:	62 61 5c 40 5c dd    	vsubps zmm27,zmm20,zmm5
  a727ff:	62 b1 54 40 5c ca    	vsubps zmm1,zmm21,zmm18
  a72805:	62 11 74 48 59 e8    	vmulps zmm13,zmm1,zmm24
  a7280b:	62 91 24 40 58 c9    	vaddps zmm1,zmm27,zmm25
  a72811:	62 11 74 48 59 f8    	vmulps zmm15,zmm1,zmm24
  a72817:	62 e1 5c 20 58 dd    	vaddps ymm19,ymm20,ymm5
  a7281d:	62 81 2c 20 58 e4    	vaddps ymm20,ymm26,ymm28
  a72823:	62 b1 5c 20 58 eb    	vaddps ymm5,ymm20,ymm19
  a72829:	c5 3c 58 d6          	vaddps ymm10,ymm8,ymm6
  a7282d:	62 61 2c 28 58 d5    	vaddps ymm26,ymm10,ymm5
  a72833:	62 31 0c 08 58 d9    	vaddps xmm11,xmm14,xmm17
  a72839:	62 a1 44 00 58 f6    	vaddps xmm22,xmm23,xmm22
  a7283f:	62 e1 44 08 58 f8    	vaddps xmm23,xmm7,xmm0
  a72845:	62 a1 4c 00 58 c7    	vaddps xmm16,xmm22,xmm23
  a7284b:	62 d1 7c 00 58 cb    	vaddps xmm1,xmm16,xmm11
  a72851:	c5 fc 28 15 67 5a 60 	vmovaps ymm2,YMMWORD PTR [rip+0xffffffffff605a67]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a72858:	ff 
  a72859:	62 92 6d 28 7f ca    	vpermt2ps ymm1,ymm2,ymm26
  a7285f:	62 01 34 20 5c cb    	vsubps ymm25,ymm25,ymm27
  a72865:	62 01 34 20 59 c8    	vmulps ymm25,ymm25,ymm24
  a7286b:	62 a1 6c 20 58 d5    	vaddps ymm18,ymm18,ymm21
  a72871:	62 81 6c 20 59 e8    	vmulps ymm21,ymm18,ymm24
  a72877:	62 81 54 20 58 d1    	vaddps ymm18,ymm21,ymm25
  a7287d:	62 61 64 28 58 c4    	vaddps ymm24,ymm3,ymm4
  a72883:	62 21 3c 20 58 d2    	vaddps ymm26,ymm24,ymm18
  a72889:	62 41 14 08 5c df    	vsubps xmm27,xmm13,xmm15
  a7288f:	c4 41 18 5c c9       	vsubps xmm9,xmm12,xmm9
  a72894:	c5 f8 5c ff          	vsubps xmm7,xmm0,xmm7
  a72898:	c5 30 58 e7          	vaddps xmm12,xmm9,xmm7
  a7289c:	62 91 1c 08 58 c3    	vaddps xmm0,xmm12,xmm27
  a728a2:	62 92 6d 28 7f c2    	vpermt2ps ymm0,ymm2,ymm26
  a728a8:	62 31 0c 28 5c f1    	vsubps ymm14,ymm14,ymm17
  a728ae:	c4 41 4c 5c c0       	vsubps ymm8,ymm6,ymm8
  a728b3:	62 a1 64 00 5c cc    	vsubps xmm17,xmm19,xmm20
  a728b9:	62 c1 3c 28 58 de    	vaddps ymm19,ymm8,ymm14
  a728bf:	62 a1 44 00 5c e6    	vsubps xmm20,xmm23,xmm22
  a728c5:	62 b1 5c 00 58 f1    	vaddps xmm6,xmm20,xmm17
  a728cb:	62 b2 6d 28 7f f3    	vpermt2ps ymm6,ymm2,ymm19
  a728d1:	c4 41 14 58 ef       	vaddps ymm13,ymm13,ymm15
  a728d6:	c5 e4 5c dc          	vsubps ymm3,ymm3,ymm4
  a728da:	62 b1 34 00 5c e5    	vsubps xmm4,xmm25,xmm21
  a728e0:	c5 14 58 fb          	vaddps ymm15,ymm13,ymm3
  a728e4:	c4 c1 40 5c f9       	vsubps xmm7,xmm7,xmm9
  a728e9:	c5 40 58 cc          	vaddps xmm9,xmm7,xmm4
  a728ed:	62 52 6d 28 7f cf    	vpermt2ps ymm9,ymm2,ymm15
  a728f3:	c5 ac 5c ed          	vsubps ymm5,ymm10,ymm5
  a728f7:	62 51 7c 00 5c d3    	vsubps xmm10,xmm16,xmm11
  a728fd:	62 72 6d 28 7f d5    	vpermt2ps ymm10,ymm2,ymm5
  a72903:	62 b1 3c 20 5c ea    	vsubps ymm5,ymm24,ymm18
  a72909:	62 11 1c 08 5c db    	vsubps xmm11,xmm12,xmm27
  a7290f:	62 72 6d 28 7f dd    	vpermt2ps ymm11,ymm2,ymm5
  a72915:	c4 c1 3c 5c ee       	vsubps ymm5,ymm8,ymm14
  a7291a:	62 31 5c 00 5c c1    	vsubps xmm8,xmm20,xmm17
  a72920:	62 72 6d 28 7f c5    	vpermt2ps ymm8,ymm2,ymm5
  a72926:	c4 c1 64 5c dd       	vsubps ymm3,ymm3,ymm13
  a7292b:	c5 c0 5c e4          	vsubps xmm4,xmm7,xmm4
  a7292f:	62 f2 6d 28 7f e3    	vpermt2ps ymm4,ymm2,ymm3
  a72935:	c4 e3 7d 19 ca 01    	vextractf128 xmm2,ymm1,0x1
  a7293b:	c5 f8 13 56 10       	vmovlps QWORD PTR [rsi+0x10],xmm2
  a72940:	c5 f8 11 0e          	vmovups XMMWORD PTR [rsi],xmm1
  a72944:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  a7294a:	c5 f8 13 4e 28       	vmovlps QWORD PTR [rsi+0x28],xmm1
  a7294f:	c5 f8 11 46 18       	vmovups XMMWORD PTR [rsi+0x18],xmm0
  a72954:	c4 e3 7d 19 f0 01    	vextractf128 xmm0,ymm6,0x1
  a7295a:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  a7295f:	c5 f8 11 76 30       	vmovups XMMWORD PTR [rsi+0x30],xmm6
  a72964:	c4 63 7d 19 c8 01    	vextractf128 xmm0,ymm9,0x1
  a7296a:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  a7296f:	c5 78 11 4e 48       	vmovups XMMWORD PTR [rsi+0x48],xmm9
  a72974:	c4 63 7d 19 d0 01    	vextractf128 xmm0,ymm10,0x1
  a7297a:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  a7297f:	c5 78 11 56 60       	vmovups XMMWORD PTR [rsi+0x60],xmm10
  a72984:	c4 63 7d 19 d8 01    	vextractf128 xmm0,ymm11,0x1
  a7298a:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  a72991:	00 
  a72992:	c5 78 11 5e 78       	vmovups XMMWORD PTR [rsi+0x78],xmm11
  a72997:	c4 63 7d 19 c0 01    	vextractf128 xmm0,ymm8,0x1
  a7299d:	c5 f8 13 86 a0 00 00 	vmovlps QWORD PTR [rsi+0xa0],xmm0
  a729a4:	00 
  a729a5:	c5 78 11 86 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm8
  a729ac:	00 
  a729ad:	c4 e3 7d 19 e0 01    	vextractf128 xmm0,ymm4,0x1
  a729b3:	c5 f8 13 86 b8 00 00 	vmovlps QWORD PTR [rsi+0xb8],xmm0
  a729ba:	00 
  a729bb:	c5 f8 11 a6 a8 00 00 	vmovups XMMWORD PTR [rsi+0xa8],xmm4
  a729c2:	00 
  a729c3:	48 89 ec             	mov    rsp,rbp
  a729c6:	5d                   	pop    rbp
  a729c7:	c5 f8 77             	vzeroupper
  a729ca:	c3                   	ret
