
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a27480 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a27480:	55                   	push   rbp
  a27481:	48 89 e5             	mov    rbp,rsp
  a27484:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a27488:	48 81 ec 00 09 00 00 	sub    rsp,0x900
  a2748f:	62 f1 7c 48 28 05 e7 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff69fae7]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a27496:	fa 69 ff 
  a27499:	62 f1 7c 48 28 0d 1d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff69fb1d]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a274a0:	fb 69 ff 
  a274a3:	48 c1 e2 07          	shl    rdx,0x7
  a274a7:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a274ab:	31 d2                	xor    edx,edx
  a274ad:	4c 8d 84 24 80 08 00 	lea    r8,[rsp+0x880]
  a274b4:	00 
  a274b5:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a274ba:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a274be:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a274c4:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm2
  a274cb:	11 
  a274cc:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a274d0:	62 f2 75 48 7f c0    	vpermt2ps zmm0,zmm1,zmm0
  a274d6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a274dd:	10 
  a274de:	66 90                	xchg   ax,ax
  a274e0:	c6 84 24 80 08 00 00 	mov    BYTE PTR [rsp+0x880],0x0
  a274e7:	00 
  a274e8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a274ed:	62 f1 7c 48 10 34 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1]
  a274f4:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x40]
  a274fb:	01 
  a274fc:	62 71 7c 48 10 44 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x80]
  a27503:	02 
  a27504:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a2750b:	03 
  a2750c:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a27512:	62 71 7c 48 28 3d a4 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff668fa4]        # 904c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d970>
  a27519:	8f 66 ff 
  a2751c:	62 f2 05 48 7f c1    	vpermt2ps zmm0,zmm15,zmm1
  a27522:	62 d1 7c 48 28 e8    	vmovaps zmm5,zmm8
  a27528:	62 71 7c 48 10 54 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x200]
  a2752f:	08 
  a27530:	62 f2 05 48 7f ea    	vpermt2ps zmm5,zmm15,zmm2
  a27536:	62 f1 7c 48 10 5c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x240]
  a2753d:	09 
  a2753e:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a27544:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x100]
  a2754b:	04 
  a2754c:	62 f2 05 48 7f fb    	vpermt2ps zmm7,zmm15,zmm3
  a27552:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x140]
  a27559:	05 
  a2755a:	62 51 7c 48 28 cc    	vmovaps zmm9,zmm12
  a27560:	62 71 7c 48 10 6c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x180]
  a27567:	06 
  a27568:	62 72 05 48 7f cc    	vpermt2ps zmm9,zmm15,zmm4
  a2756e:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a27575:	07 
  a27576:	62 51 7c 48 28 dd    	vmovaps zmm11,zmm13
  a2757c:	62 52 05 48 7f de    	vpermt2ps zmm11,zmm15,zmm14
  a27582:	62 71 54 48 58 ff    	vaddps zmm15,zmm5,zmm7
  a27588:	62 c1 34 48 58 c3    	vaddps zmm16,zmm9,zmm11
  a2758e:	62 61 7c 48 28 25 68 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff668f68]        # 90500 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d9b0>
  a27595:	8f 66 ff 
  a27598:	62 72 1d 40 7f c2    	vpermt2ps zmm8,zmm28,zmm2
  a2759e:	62 72 1d 40 7f d3    	vpermt2ps zmm10,zmm28,zmm3
  a275a4:	62 d1 7c 48 58 d7    	vaddps zmm2,zmm0,zmm15
  a275aa:	62 d1 3c 48 5c da    	vsubps zmm3,zmm8,zmm10
  a275b0:	62 72 1d 40 7f e4    	vpermt2ps zmm12,zmm28,zmm4
  a275b6:	62 52 1d 40 7f ee    	vpermt2ps zmm13,zmm28,zmm14
  a275bc:	62 a1 6c 48 58 f0    	vaddps zmm22,zmm2,zmm16
  a275c2:	62 d1 1c 48 5c e5    	vsubps zmm4,zmm12,zmm13
  a275c8:	62 e2 7d 48 18 25 86 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff64e186]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a275cf:	e1 64 ff 
  a275d2:	62 31 5c 48 59 f4    	vmulps zmm14,zmm4,zmm20
  a275d8:	62 e2 7d 48 18 2d be 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff64ddbe]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a275df:	dd 64 ff 
  a275e2:	62 32 65 48 b8 f5    	vfmadd231ps zmm14,zmm3,zmm21
  a275e8:	62 b1 7c 48 28 d6    	vmovaps zmm2,zmm22
  a275ee:	62 62 7d 48 18 05 f0 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff64e0f0]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a275f5:	e0 64 ff 
  a275f8:	62 81 7c 48 28 c8    	vmovaps zmm17,zmm24
  a275fe:	62 e2 05 48 a8 c8    	vfmadd213ps zmm17,zmm15,zmm0
  a27604:	62 62 7d 48 18 0d 36 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff64e036]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a2760b:	e0 64 ff 
  a2760e:	62 82 7d 40 bc c9    	vfnmadd231ps zmm17,zmm16,zmm25
  a27614:	62 e1 7c 48 28 15 62 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff69f962]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a2761b:	f9 69 ff 
  a2761e:	62 a1 64 00 57 db    	vxorps xmm19,xmm19,xmm19
  a27624:	62 b2 6d 40 7f d3    	vpermt2ps zmm2,zmm18,zmm19
  a2762a:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a27631:	05 
  a27632:	62 61 7c 48 28 fa    	vmovaps zmm31,zmm2
  a27638:	62 d2 35 40 bc c7    	vfnmadd231ps zmm0,zmm25,zmm15
  a2763e:	62 b2 3d 40 b8 c0    	vfmadd231ps zmm0,zmm24,zmm16
  a27644:	62 a1 0c 48 58 c1    	vaddps zmm16,zmm14,zmm17
  a2764a:	62 31 64 48 59 fc    	vmulps zmm15,zmm3,zmm20
  a27650:	62 72 55 40 bc fc    	vfnmadd231ps zmm15,zmm21,zmm4
  a27656:	62 41 7c 48 5c df    	vsubps zmm27,zmm0,zmm15
  a2765c:	62 b1 7c 48 28 d0    	vmovaps zmm2,zmm16
  a27662:	62 01 7c 48 28 f3    	vmovaps zmm30,zmm27
  a27668:	62 d1 74 40 5c e6    	vsubps zmm4,zmm17,zmm14
  a2766e:	62 61 04 48 58 d0    	vaddps zmm26,zmm15,zmm0
  a27674:	62 e1 7c 48 28 fc    	vmovaps zmm23,zmm4
  a2767a:	62 f2 1d 40 7f f1    	vpermt2ps zmm6,zmm28,zmm1
  a27680:	62 51 3c 48 58 c2    	vaddps zmm8,zmm8,zmm10
  a27686:	62 d1 4c 48 58 c8    	vaddps zmm1,zmm6,zmm8
  a2768c:	62 01 7c 48 28 ea    	vmovaps zmm29,zmm26
  a27692:	62 51 1c 48 58 d5    	vaddps zmm10,zmm12,zmm13
  a27698:	62 d1 74 48 58 c2    	vaddps zmm0,zmm1,zmm10
  a2769e:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a276a4:	62 b2 6d 40 7f d3    	vpermt2ps zmm2,zmm18,zmm19
  a276aa:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm2
  a276b1:	0d 
  a276b2:	62 11 7c 48 28 e0    	vmovaps zmm12,zmm24
  a276b8:	62 72 3d 48 a8 e6    	vfmadd213ps zmm12,zmm8,zmm6
  a276be:	62 12 2d 48 bc e1    	vfnmadd231ps zmm12,zmm10,zmm25
  a276c4:	62 22 6d 40 7f f3    	vpermt2ps zmm30,zmm18,zmm19
  a276ca:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a276d0:	62 d1 34 48 5c fb    	vsubps zmm7,zmm9,zmm11
  a276d6:	62 31 44 48 59 cc    	vmulps zmm9,zmm7,zmm20
  a276dc:	62 a2 6d 40 7f fb    	vpermt2ps zmm23,zmm18,zmm19
  a276e2:	62 32 55 48 b8 cd    	vfmadd231ps zmm9,zmm5,zmm21
  a276e8:	62 51 1c 48 5c d9    	vsubps zmm11,zmm12,zmm9
  a276ee:	62 c1 7c 48 28 cb    	vmovaps zmm17,zmm11
  a276f4:	62 22 6d 40 7f eb    	vpermt2ps zmm29,zmm18,zmm19
  a276fa:	62 d2 35 40 bc f0    	vfnmadd231ps zmm6,zmm25,zmm8
  a27700:	62 d2 3d 40 b8 f2    	vfmadd231ps zmm6,zmm24,zmm10
  a27706:	62 31 54 48 59 c4    	vmulps zmm8,zmm5,zmm20
  a2770c:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm30
  a27713:	03 
  a27714:	62 72 55 40 bc c7    	vfnmadd231ps zmm8,zmm21,zmm7
  a2771a:	62 c1 4c 48 58 e8    	vaddps zmm21,zmm6,zmm8
  a27720:	62 31 7c 48 28 ed    	vmovaps zmm13,zmm21
  a27726:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm23
  a2772d:	02 
  a2772e:	62 41 1c 48 58 c1    	vaddps zmm24,zmm12,zmm9
  a27734:	62 91 7c 48 28 d8    	vmovaps zmm3,zmm24
  a2773a:	62 51 4c 48 5c c0    	vsubps zmm8,zmm6,zmm8
  a27740:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm29
  a27747:	01 
  a27748:	62 d1 7c 48 28 f0    	vmovaps zmm6,zmm8
  a2774e:	62 f1 7c 48 28 0d e8 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff69f7e8]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a27755:	f7 69 ff 
  a27758:	62 11 7c 48 28 cf    	vmovaps zmm9,zmm31
  a2775e:	62 72 75 48 7f ca    	vpermt2ps zmm9,zmm1,zmm2
  a27764:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm9
  a2776b:	08 
  a2776c:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x440]
  a27773:	11 
  a27774:	62 62 75 48 7f f5    	vpermt2ps zmm30,zmm1,zmm5
  a2777a:	62 e2 75 48 7f fd    	vpermt2ps zmm23,zmm1,zmm5
  a27780:	62 b2 6d 40 7f c3    	vpermt2ps zmm0,zmm18,zmm19
  a27786:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm0
  a2778d:	0c 
  a2778e:	62 32 6d 40 7f db    	vpermt2ps zmm11,zmm18,zmm19
  a27794:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm11
  a2779b:	1a 
  a2779c:	62 62 75 48 7f ed    	vpermt2ps zmm29,zmm1,zmm5
  a277a2:	62 d2 75 48 7f c3    	vpermt2ps zmm0,zmm1,zmm11
  a277a8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a277af:	09 
  a277b0:	62 a2 6d 40 7f eb    	vpermt2ps zmm21,zmm18,zmm19
  a277b6:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm21
  a277bd:	1b 
  a277be:	62 e2 75 48 7f ed    	vpermt2ps zmm21,zmm1,zmm5
  a277c4:	62 22 6d 40 7f c3    	vpermt2ps zmm24,zmm18,zmm19
  a277ca:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm24
  a277d1:	18 
  a277d2:	62 41 7c 48 28 f8    	vmovaps zmm31,zmm8
  a277d8:	62 22 6d 40 7f fb    	vpermt2ps zmm31,zmm18,zmm19
  a277de:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm31
  a277e5:	07 
  a277e6:	62 62 75 48 7f c5    	vpermt2ps zmm24,zmm1,zmm5
  a277ec:	62 62 75 48 7f fd    	vpermt2ps zmm31,zmm1,zmm5
  a277f2:	62 b1 fd 48 15 fd    	vunpckhpd zmm7,zmm0,zmm21
  a277f8:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm7
  a277ff:	21 
  a27800:	62 91 bd 40 15 c7    	vunpckhpd zmm0,zmm24,zmm31
  a27806:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm0
  a2780d:	20 
  a2780e:	62 61 7c 48 28 0d e8 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff69f5e8]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a27815:	f5 69 ff 
  a27818:	62 f2 35 40 7f f8    	vpermt2ps zmm7,zmm25,zmm0
  a2781e:	62 11 b5 48 15 c6    	vunpckhpd zmm8,zmm9,zmm30
  a27824:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm8
  a2782b:	1f 
  a2782c:	62 91 c5 40 15 c5    	vunpckhpd zmm0,zmm23,zmm29
  a27832:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm0
  a27839:	1e 
  a2783a:	62 72 35 40 7f c0    	vpermt2ps zmm8,zmm25,zmm0
  a27840:	62 71 7c 48 10 49 0d 	vmovups zmm9,ZMMWORD PTR [rcx+0x340]
  a27847:	62 71 7c 48 10 51 0c 	vmovups zmm10,ZMMWORD PTR [rcx+0x300]
  a2784e:	62 d1 3c 48 59 c2    	vmulps zmm0,zmm8,zmm10
  a27854:	62 d2 45 48 b8 c1    	vfmadd231ps zmm0,zmm7,zmm9
  a2785a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a27861:	06 
  a27862:	62 d1 44 48 59 c2    	vmulps zmm0,zmm7,zmm10
  a27868:	62 d2 35 48 bc c0    	vfnmadd231ps zmm0,zmm9,zmm8
  a2786e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a27875:	04 
  a27876:	62 f1 7c 48 28 05 40 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff69f740]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a2787d:	f7 69 ff 
  a27880:	62 32 7d 48 7f f3    	vpermt2ps zmm14,zmm0,zmm19
  a27886:	62 a2 7d 48 7f cb    	vpermt2ps zmm17,zmm0,zmm19
  a2788c:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm17
  a27893:	0a 
  a27894:	62 32 7d 48 7f eb    	vpermt2ps zmm13,zmm0,zmm19
  a2789a:	62 b2 7d 48 7f db    	vpermt2ps zmm3,zmm0,zmm19
  a278a0:	62 a2 7d 48 7f f3    	vpermt2ps zmm22,zmm0,zmm19
  a278a6:	62 b1 7c 48 28 d0    	vmovaps zmm2,zmm16
  a278ac:	62 b2 7d 48 7f d3    	vpermt2ps zmm2,zmm0,zmm19
  a278b2:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm2
  a278b9:	0b 
  a278ba:	62 22 7d 48 7f db    	vpermt2ps zmm27,zmm0,zmm19
  a278c0:	62 b2 7d 48 7f f3    	vpermt2ps zmm6,zmm0,zmm19
  a278c6:	62 b2 7d 48 7f e3    	vpermt2ps zmm4,zmm0,zmm19
  a278cc:	62 22 7d 48 7f d3    	vpermt2ps zmm26,zmm0,zmm19
  a278d2:	62 a1 7c 48 28 c6    	vmovaps zmm16,zmm22
  a278d8:	62 e2 75 48 7f f2    	vpermt2ps zmm22,zmm1,zmm2
  a278de:	62 81 7c 48 28 db    	vmovaps zmm19,zmm27
  a278e4:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x400]
  a278eb:	10 
  a278ec:	62 62 75 48 7f da    	vpermt2ps zmm27,zmm1,zmm2
  a278f2:	62 71 7c 48 28 e4    	vmovaps zmm12,zmm4
  a278f8:	62 f2 75 48 7f e2    	vpermt2ps zmm4,zmm1,zmm2
  a278fe:	62 11 7c 48 28 da    	vmovaps zmm11,zmm26
  a27904:	62 62 75 48 7f d2    	vpermt2ps zmm26,zmm1,zmm2
  a2790a:	62 51 7c 48 28 d6    	vmovaps zmm10,zmm14
  a27910:	62 32 75 48 7f f1    	vpermt2ps zmm14,zmm1,zmm17
  a27916:	62 51 7c 48 28 cd    	vmovaps zmm9,zmm13
  a2791c:	62 72 75 48 7f ea    	vpermt2ps zmm13,zmm1,zmm2
  a27922:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a27928:	62 f2 75 48 7f da    	vpermt2ps zmm3,zmm1,zmm2
  a2792e:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a27934:	62 f2 75 48 7f f2    	vpermt2ps zmm6,zmm1,zmm2
  a2793a:	62 c1 8d 48 15 e5    	vunpckhpd zmm20,zmm14,zmm13
  a27940:	62 f1 e5 48 15 c6    	vunpckhpd zmm0,zmm3,zmm6
  a27946:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm0
  a2794d:	17 
  a2794e:	62 31 7c 48 28 fc    	vmovaps zmm15,zmm20
  a27954:	62 72 35 40 7f f8    	vpermt2ps zmm15,zmm25,zmm0
  a2795a:	62 81 cd 40 15 cb    	vunpckhpd zmm17,zmm22,zmm27
  a27960:	62 91 dd 48 15 c2    	vunpckhpd zmm0,zmm4,zmm26
  a27966:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm0
  a2796d:	16 
  a2796e:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a27974:	62 e2 35 40 7f d0    	vpermt2ps zmm18,zmm25,zmm0
  a2797a:	62 f1 7c 48 10 49 1d 	vmovups zmm1,ZMMWORD PTR [rcx+0x740]
  a27981:	62 f1 7c 48 10 41 1c 	vmovups zmm0,ZMMWORD PTR [rcx+0x700]
  a27988:	62 61 6c 40 59 e0    	vmulps zmm28,zmm18,zmm0
  a2798e:	62 62 05 48 b8 e1    	vfmadd231ps zmm28,zmm15,zmm1
  a27994:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm28
  a2799b:	0f 
  a2799c:	62 f1 04 48 59 c0    	vmulps zmm0,zmm15,zmm0
  a279a2:	62 b2 75 48 bc c2    	vfnmadd231ps zmm0,zmm1,zmm18
  a279a8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a279af:	0e 
  a279b0:	62 11 cd 40 14 fb    	vunpcklpd zmm15,zmm22,zmm27
  a279b6:	62 91 dd 48 14 ca    	vunpcklpd zmm1,zmm4,zmm26
  a279bc:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm1
  a279c3:	13 
  a279c4:	62 d1 8d 48 14 c5    	vunpcklpd zmm0,zmm14,zmm13
  a279ca:	62 f1 e5 48 14 de    	vunpcklpd zmm3,zmm3,zmm6
  a279d0:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm3
  a279d7:	12 
  a279d8:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm15
  a279df:	19 
  a279e0:	62 f1 7c 48 28 25 56 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff69f456]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a279e7:	f4 69 ff 
  a279ea:	62 72 5d 48 7f f9    	vpermt2ps zmm15,zmm4,zmm1
  a279f0:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a279f6:	62 f2 5d 48 7f c3    	vpermt2ps zmm0,zmm4,zmm3
  a279fc:	62 f1 7c 48 10 49 1b 	vmovups zmm1,ZMMWORD PTR [rcx+0x6c0]
  a27a03:	62 f1 7c 48 10 59 1a 	vmovups zmm3,ZMMWORD PTR [rcx+0x680]
  a27a0a:	62 f1 04 48 59 f3    	vmulps zmm6,zmm15,zmm3
  a27a10:	62 f2 7d 48 b8 f1    	vfmadd231ps zmm6,zmm0,zmm1
  a27a16:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm6
  a27a1d:	1d 
  a27a1e:	62 f1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm3
  a27a24:	62 d2 75 48 bc c7    	vfnmadd231ps zmm0,zmm1,zmm15
  a27a2a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm0
  a27a31:	1c 
  a27a32:	62 f1 7c 48 28 1d c4 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff69f4c4]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a27a39:	f4 69 ff 
  a27a3c:	62 e2 65 48 7f 44 24 	vpermt2ps zmm16,zmm3,ZMMWORD PTR [rsp+0x2c0]
  a27a43:	0b 
  a27a44:	62 72 65 48 7f 54 24 	vpermt2ps zmm10,zmm3,ZMMWORD PTR [rsp+0x280]
  a27a4b:	0a 
  a27a4c:	62 72 65 48 7f ca    	vpermt2ps zmm9,zmm3,zmm2
  a27a52:	62 72 65 48 7f c2    	vpermt2ps zmm8,zmm3,zmm2
  a27a58:	62 e2 65 48 7f da    	vpermt2ps zmm19,zmm3,zmm2
  a27a5e:	62 f2 65 48 7f fa    	vpermt2ps zmm7,zmm3,zmm2
  a27a64:	62 72 65 48 7f e2    	vpermt2ps zmm12,zmm3,zmm2
  a27a6a:	62 72 65 48 7f da    	vpermt2ps zmm11,zmm3,zmm2
  a27a70:	62 b1 fd 40 14 c3    	vunpcklpd zmm0,zmm16,zmm19
  a27a76:	62 d1 9d 48 14 cb    	vunpcklpd zmm1,zmm12,zmm11
  a27a7c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm1
  a27a83:	15 
  a27a84:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a27a8a:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a27a90:	62 d1 ad 48 14 c9    	vunpcklpd zmm1,zmm10,zmm9
  a27a96:	62 f1 bd 48 14 d7    	vunpcklpd zmm2,zmm8,zmm7
  a27a9c:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm2
  a27aa3:	14 
  a27aa4:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a27aaa:	62 f2 5d 48 7f ca    	vpermt2ps zmm1,zmm4,zmm2
  a27ab0:	62 f1 7c 48 10 51 12 	vmovups zmm2,ZMMWORD PTR [rcx+0x480]
  a27ab7:	62 71 74 48 59 f2    	vmulps zmm14,zmm1,zmm2
  a27abd:	62 f1 7c 48 59 f2    	vmulps zmm6,zmm0,zmm2
  a27ac3:	62 f1 7c 48 10 51 13 	vmovups zmm2,ZMMWORD PTR [rcx+0x4c0]
  a27aca:	62 f2 6d 48 b8 f1    	vfmadd231ps zmm6,zmm2,zmm1
  a27ad0:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm6
  a27ad7:	0b 
  a27ad8:	62 72 7d 48 bc f2    	vfnmadd231ps zmm14,zmm0,zmm2
  a27ade:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm14
  a27ae5:	0a 
  a27ae6:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a27aed:	08 
  a27aee:	62 91 fd 48 14 c6    	vunpcklpd zmm0,zmm0,zmm30
  a27af4:	62 11 c5 40 14 f5    	vunpcklpd zmm14,zmm23,zmm29
  a27afa:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm14
  a27b01:	08 
  a27b02:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x240]
  a27b09:	09 
  a27b0a:	62 b1 f5 48 14 d5    	vunpcklpd zmm2,zmm1,zmm21
  a27b10:	62 01 bd 40 14 df    	vunpcklpd zmm27,zmm24,zmm31
  a27b16:	62 61 7c 48 28 e2    	vmovaps zmm28,zmm2
  a27b1c:	62 92 5d 48 7f d3    	vpermt2ps zmm2,zmm4,zmm27
  a27b22:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a27b28:	62 d2 5d 48 7f c6    	vpermt2ps zmm0,zmm4,zmm14
  a27b2e:	62 71 7c 48 10 71 0b 	vmovups zmm14,ZMMWORD PTR [rcx+0x2c0]
  a27b35:	62 71 7c 48 10 79 0a 	vmovups zmm15,ZMMWORD PTR [rcx+0x280]
  a27b3c:	62 d1 7c 48 59 cf    	vmulps zmm1,zmm0,zmm15
  a27b42:	62 d2 6d 48 b8 ce    	vfmadd231ps zmm1,zmm2,zmm14
  a27b48:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a27b4f:	09 
  a27b50:	62 41 6c 48 59 ef    	vmulps zmm29,zmm2,zmm15
  a27b56:	62 62 0d 48 bc e8    	vfnmadd231ps zmm29,zmm14,zmm0
  a27b5c:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x300]
  a27b63:	0c 
  a27b64:	62 72 65 48 7f 7c 24 	vpermt2ps zmm15,zmm3,ZMMWORD PTR [rsp+0x680]
  a27b6b:	1a 
  a27b6c:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x140]
  a27b73:	05 
  a27b74:	62 f2 65 48 7f 4c 24 	vpermt2ps zmm1,zmm3,ZMMWORD PTR [rsp+0x340]
  a27b7b:	0d 
  a27b7c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a27b83:	03 
  a27b84:	62 f2 65 48 7f c5    	vpermt2ps zmm0,zmm3,zmm5
  a27b8a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a27b91:	03 
  a27b92:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x80]
  a27b99:	02 
  a27b9a:	62 72 65 48 7f f5    	vpermt2ps zmm14,zmm3,zmm5
  a27ba0:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm14
  a27ba7:	02 
  a27ba8:	62 61 7c 48 28 7c 24 	vmovaps zmm31,ZMMWORD PTR [rsp+0x6c0]
  a27baf:	1b 
  a27bb0:	62 62 65 48 7f fd    	vpermt2ps zmm31,zmm3,zmm5
  a27bb6:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a27bbd:	01 
  a27bbe:	62 f2 65 48 7f d5    	vpermt2ps zmm2,zmm3,zmm5
  a27bc4:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a27bcb:	01 
  a27bcc:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x600]
  a27bd3:	18 
  a27bd4:	62 62 65 48 7f c5    	vpermt2ps zmm24,zmm3,zmm5
  a27bda:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x1c0]
  a27be1:	07 
  a27be2:	62 62 65 48 7f f5    	vpermt2ps zmm30,zmm3,zmm5
  a27be8:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm30
  a27bef:	07 
  a27bf0:	62 f1 f5 48 14 c0    	vunpcklpd zmm0,zmm1,zmm0
  a27bf6:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a27bfc:	62 f1 8d 48 14 ca    	vunpcklpd zmm1,zmm14,zmm2
  a27c02:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a27c09:	0d 
  a27c0a:	62 e1 7c 48 28 f8    	vmovaps zmm23,zmm0
  a27c10:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a27c16:	62 81 85 48 14 ef    	vunpcklpd zmm21,zmm15,zmm31
  a27c1c:	62 d1 7c 48 28 d7    	vmovaps zmm2,zmm15
  a27c22:	62 91 bd 40 14 de    	vunpcklpd zmm3,zmm24,zmm30
  a27c28:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm3
  a27c2f:	0c 
  a27c30:	62 91 7c 48 28 c8    	vmovaps zmm1,zmm24
  a27c36:	62 31 7c 48 28 f5    	vmovaps zmm14,zmm21
  a27c3c:	62 72 5d 48 7f f3    	vpermt2ps zmm14,zmm4,zmm3
  a27c42:	62 71 7c 48 10 79 02 	vmovups zmm15,ZMMWORD PTR [rcx+0x80]
  a27c49:	62 e1 7c 48 10 51 03 	vmovups zmm18,ZMMWORD PTR [rcx+0xc0]
  a27c50:	62 41 0c 48 59 c7    	vmulps zmm24,zmm14,zmm15
  a27c56:	62 22 7d 48 bc c2    	vfnmadd231ps zmm24,zmm0,zmm18
  a27c5c:	62 d1 7c 48 59 c7    	vmulps zmm0,zmm0,zmm15
  a27c62:	62 d2 6d 40 b8 c6    	vfmadd231ps zmm0,zmm18,zmm14
  a27c68:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a27c6f:	05 
  a27c70:	62 31 fd 40 15 f3    	vunpckhpd zmm14,zmm16,zmm19
  a27c76:	62 51 9d 48 15 db    	vunpckhpd zmm11,zmm12,zmm11
  a27c7c:	62 51 ad 48 15 f9    	vunpckhpd zmm15,zmm10,zmm9
  a27c82:	62 71 bd 48 15 e7    	vunpckhpd zmm12,zmm8,zmm7
  a27c88:	62 51 7c 48 28 ce    	vmovaps zmm9,zmm14
  a27c8e:	62 52 5d 48 7f f3    	vpermt2ps zmm14,zmm4,zmm11
  a27c94:	62 d1 7c 48 28 df    	vmovaps zmm3,zmm15
  a27c9a:	62 52 5d 48 7f fc    	vpermt2ps zmm15,zmm4,zmm12
  a27ca0:	62 71 7c 48 10 41 17 	vmovups zmm8,ZMMWORD PTR [rcx+0x5c0]
  a27ca7:	62 71 7c 48 10 51 16 	vmovups zmm10,ZMMWORD PTR [rcx+0x580]
  a27cae:	62 d1 04 48 59 fa    	vmulps zmm7,zmm15,zmm10
  a27cb4:	62 d2 0d 48 bc f8    	vfnmadd231ps zmm7,zmm14,zmm8
  a27cba:	62 51 0c 48 59 d2    	vmulps zmm10,zmm14,zmm10
  a27cc0:	62 52 3d 48 b8 d7    	vfmadd231ps zmm10,zmm8,zmm15
  a27cc6:	62 e2 5d 48 7f 4c 24 	vpermt2ps zmm17,zmm4,ZMMWORD PTR [rsp+0x580]
  a27ccd:	16 
  a27cce:	62 e2 5d 48 7f 64 24 	vpermt2ps zmm20,zmm4,ZMMWORD PTR [rsp+0x5c0]
  a27cd5:	17 
  a27cd6:	62 71 7c 48 10 41 1f 	vmovups zmm8,ZMMWORD PTR [rcx+0x7c0]
  a27cdd:	62 71 7c 48 10 71 1e 	vmovups zmm14,ZMMWORD PTR [rcx+0x780]
  a27ce4:	62 c1 74 40 59 de    	vmulps zmm19,zmm17,zmm14
  a27cea:	62 c2 5d 40 b8 d8    	vfmadd231ps zmm19,zmm20,zmm8
  a27cf0:	62 51 5c 40 59 f6    	vmulps zmm14,zmm20,zmm14
  a27cf6:	62 32 3d 48 bc f1    	vfnmadd231ps zmm14,zmm8,zmm17
  a27cfc:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x840]
  a27d03:	21 
  a27d04:	62 f2 5d 48 7f 44 24 	vpermt2ps zmm0,zmm4,ZMMWORD PTR [rsp+0x800]
  a27d0b:	20 
  a27d0c:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x7c0]
  a27d13:	1f 
  a27d14:	62 e2 5d 48 7f 44 24 	vpermt2ps zmm16,zmm4,ZMMWORD PTR [rsp+0x780]
  a27d1b:	1e 
  a27d1c:	62 71 7c 48 10 41 0f 	vmovups zmm8,ZMMWORD PTR [rcx+0x3c0]
  a27d23:	62 71 7c 48 10 79 0e 	vmovups zmm15,ZMMWORD PTR [rcx+0x380]
  a27d2a:	62 c1 7c 40 59 d7    	vmulps zmm18,zmm16,zmm15
  a27d30:	62 c2 7d 48 b8 d0    	vfmadd231ps zmm18,zmm0,zmm8
  a27d36:	62 51 7c 48 59 ff    	vmulps zmm15,zmm0,zmm15
  a27d3c:	62 32 3d 48 bc f8    	vfnmadd231ps zmm15,zmm8,zmm16
  a27d42:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x640]
  a27d49:	19 
  a27d4a:	62 f2 35 40 7f 44 24 	vpermt2ps zmm0,zmm25,ZMMWORD PTR [rsp+0x4c0]
  a27d51:	13 
  a27d52:	62 62 35 40 7f 54 24 	vpermt2ps zmm26,zmm25,ZMMWORD PTR [rsp+0x480]
  a27d59:	12 
  a27d5a:	62 e1 7c 48 10 41 19 	vmovups zmm16,ZMMWORD PTR [rcx+0x640]
  a27d61:	62 e1 7c 48 10 49 18 	vmovups zmm17,ZMMWORD PTR [rcx+0x600]
  a27d68:	62 31 2c 40 59 c1    	vmulps zmm8,zmm26,zmm17
  a27d6e:	62 32 7d 48 bc c0    	vfnmadd231ps zmm8,zmm0,zmm16
  a27d74:	62 21 7c 48 59 f1    	vmulps zmm30,zmm0,zmm17
  a27d7a:	62 02 7d 40 b8 f2    	vfmadd231ps zmm30,zmm16,zmm26
  a27d80:	62 f1 d5 48 15 6c 24 	vunpckhpd zmm5,zmm5,ZMMWORD PTR [rsp+0xc0]
  a27d87:	03 
  a27d88:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a27d8f:	02 
  a27d90:	62 e1 fd 48 15 64 24 	vunpckhpd zmm20,zmm0,ZMMWORD PTR [rsp+0x40]
  a27d97:	01 
  a27d98:	62 81 ed 48 15 c7    	vunpckhpd zmm16,zmm2,zmm31
  a27d9e:	62 61 f5 48 15 7c 24 	vunpckhpd zmm31,zmm1,ZMMWORD PTR [rsp+0x1c0]
  a27da5:	07 
  a27da6:	62 61 7c 48 28 d5    	vmovaps zmm26,zmm5
  a27dac:	62 b2 5d 48 7f ec    	vpermt2ps zmm5,zmm4,zmm20
  a27db2:	62 b1 7c 48 28 d0    	vmovaps zmm2,zmm16
  a27db8:	62 82 5d 48 7f c7    	vpermt2ps zmm16,zmm4,zmm31
  a27dbe:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a27dc5:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  a27dcc:	62 e1 7c 40 59 c8    	vmulps zmm17,zmm16,zmm0
  a27dd2:	62 e2 55 48 bc c9    	vfnmadd231ps zmm17,zmm5,zmm1
  a27dd8:	62 f1 54 48 59 e8    	vmulps zmm5,zmm5,zmm0
  a27dde:	62 b2 75 48 b8 e8    	vfmadd231ps zmm5,zmm1,zmm16
  a27de4:	62 f2 35 40 7f 74 24 	vpermt2ps zmm6,zmm25,ZMMWORD PTR [rsp+0x200]
  a27deb:	08 
  a27dec:	62 02 35 40 7f e3    	vpermt2ps zmm28,zmm25,zmm27
  a27df2:	62 f1 7c 48 10 41 09 	vmovups zmm0,ZMMWORD PTR [rcx+0x240]
  a27df9:	62 f1 7c 48 10 49 08 	vmovups zmm1,ZMMWORD PTR [rcx+0x200]
  a27e00:	62 e1 1c 40 59 c1    	vmulps zmm16,zmm28,zmm1
  a27e06:	62 e2 4d 48 bc c0    	vfnmadd231ps zmm16,zmm6,zmm0
  a27e0c:	62 f1 4c 48 59 c9    	vmulps zmm1,zmm6,zmm1
  a27e12:	62 92 7d 48 b8 cc    	vfmadd231ps zmm1,zmm0,zmm28
  a27e18:	62 52 35 40 7f cb    	vpermt2ps zmm9,zmm25,zmm11
  a27e1e:	62 d2 35 40 7f dc    	vpermt2ps zmm3,zmm25,zmm12
  a27e24:	62 f1 7c 48 10 41 14 	vmovups zmm0,ZMMWORD PTR [rcx+0x500]
  a27e2b:	62 61 64 48 59 d8    	vmulps zmm27,zmm3,zmm0
  a27e31:	62 61 34 48 59 e0    	vmulps zmm28,zmm9,zmm0
  a27e37:	62 f1 7c 48 10 41 15 	vmovups zmm0,ZMMWORD PTR [rcx+0x540]
  a27e3e:	62 62 7d 48 b8 e3    	vfmadd231ps zmm28,zmm0,zmm3
  a27e44:	62 62 35 48 bc d8    	vfnmadd231ps zmm27,zmm9,zmm0
  a27e4a:	62 22 35 40 7f d4    	vpermt2ps zmm26,zmm25,zmm20
  a27e50:	62 92 35 40 7f d7    	vpermt2ps zmm2,zmm25,zmm31
  a27e56:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a27e5d:	62 f1 7c 48 10 59 05 	vmovups zmm3,ZMMWORD PTR [rcx+0x140]
  a27e64:	62 f1 6c 48 59 e0    	vmulps zmm4,zmm2,zmm0
  a27e6a:	62 f2 2d 40 bc e3    	vfnmadd231ps zmm4,zmm26,zmm3
  a27e70:	62 61 2c 40 59 d0    	vmulps zmm26,zmm26,zmm0
  a27e76:	62 62 65 48 b8 d2    	vfmadd231ps zmm26,zmm3,zmm2
  a27e7c:	62 72 35 40 7f 6c 24 	vpermt2ps zmm13,zmm25,ZMMWORD PTR [rsp+0x500]
  a27e83:	14 
  a27e84:	62 e2 35 40 7f 74 24 	vpermt2ps zmm22,zmm25,ZMMWORD PTR [rsp+0x540]
  a27e8b:	15 
  a27e8c:	62 f1 7c 48 10 41 11 	vmovups zmm0,ZMMWORD PTR [rcx+0x440]
  a27e93:	62 f1 7c 48 10 51 10 	vmovups zmm2,ZMMWORD PTR [rcx+0x400]
  a27e9a:	62 f1 4c 40 59 da    	vmulps zmm3,zmm22,zmm2
  a27ea0:	62 f2 15 48 b8 d8    	vfmadd231ps zmm3,zmm13,zmm0
  a27ea6:	62 f1 14 48 59 d2    	vmulps zmm2,zmm13,zmm2
  a27eac:	62 b2 7d 48 bc d6    	vfnmadd231ps zmm2,zmm0,zmm22
  a27eb2:	62 e2 35 40 7f 7c 24 	vpermt2ps zmm23,zmm25,ZMMWORD PTR [rsp+0x340]
  a27eb9:	0d 
  a27eba:	62 e2 35 40 7f 6c 24 	vpermt2ps zmm21,zmm25,ZMMWORD PTR [rsp+0x300]
  a27ec1:	0c 
  a27ec2:	62 61 44 40 5c cb    	vsubps zmm25,zmm23,zmm3
  a27ec8:	62 31 64 48 58 e7    	vaddps zmm12,zmm3,zmm23
  a27ece:	62 11 74 48 5c de    	vsubps zmm11,zmm1,zmm30
  a27ed4:	62 11 74 48 58 ee    	vaddps zmm13,zmm1,zmm30
  a27eda:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a27ee1:	04 
  a27ee2:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x380]
  a27ee9:	0e 
  a27eea:	62 f1 7c 48 5c cb    	vsubps zmm1,zmm0,zmm3
  a27ef0:	62 71 7c 48 58 cb    	vaddps zmm9,zmm0,zmm3
  a27ef6:	62 a1 6c 40 5c fb    	vsubps zmm23,zmm18,zmm19
  a27efc:	62 b1 6c 40 58 c3    	vaddps zmm0,zmm18,zmm19
  a27f02:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a27f09:	02 
  a27f0a:	62 41 54 48 5c f2    	vsubps zmm30,zmm5,zmm10
  a27f10:	62 d1 54 48 58 c2    	vaddps zmm0,zmm5,zmm10
  a27f16:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a27f1d:	01 
  a27f1e:	62 41 0c 48 5c ff    	vsubps zmm31,zmm14,zmm15
  a27f24:	62 51 04 48 58 d6    	vaddps zmm10,zmm15,zmm14
  a27f2a:	62 71 74 40 5c f7    	vsubps zmm14,zmm17,zmm7
  a27f30:	62 e1 74 40 58 d7    	vaddps zmm18,zmm17,zmm7
  a27f36:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x700]
  a27f3d:	1c 
  a27f3e:	62 91 7c 48 5c fd    	vsubps zmm7,zmm0,zmm29
  a27f44:	62 71 14 40 58 f8    	vaddps zmm15,zmm29,zmm0
  a27f4a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a27f51:	0a 
  a27f52:	62 61 3c 40 5c e8    	vsubps zmm29,zmm24,zmm0
  a27f58:	62 e1 3c 40 58 d8    	vaddps zmm19,zmm24,zmm0
  a27f5e:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x2c0]
  a27f65:	0b 
  a27f66:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x140]
  a27f6d:	05 
  a27f6e:	62 f1 54 48 5c c3    	vsubps zmm0,zmm5,zmm3
  a27f74:	62 f1 54 48 58 db    	vaddps zmm3,zmm5,zmm3
  a27f7a:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm3
  a27f81:	04 
  a27f82:	62 91 5c 48 5c db    	vsubps zmm3,zmm4,zmm27
  a27f88:	62 81 5c 48 58 cb    	vaddps zmm17,zmm4,zmm27
  a27f8e:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x740]
  a27f95:	1d 
  a27f96:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x240]
  a27f9d:	09 
  a27f9e:	62 f1 4c 48 5c e5    	vsubps zmm4,zmm6,zmm5
  a27fa4:	62 61 4c 48 58 dd    	vaddps zmm27,zmm6,zmm5
  a27faa:	62 f1 54 40 5c ea    	vsubps zmm5,zmm21,zmm2
  a27fb0:	62 e1 54 40 58 e2    	vaddps zmm20,zmm21,zmm2
  a27fb6:	62 b1 3c 48 5c f0    	vsubps zmm6,zmm8,zmm16
  a27fbc:	62 c1 7c 40 58 e8    	vaddps zmm21,zmm16,zmm8
  a27fc2:	62 11 2c 40 5c c4    	vsubps zmm8,zmm26,zmm28
  a27fc8:	62 91 2c 40 58 d4    	vaddps zmm2,zmm26,zmm28
  a27fce:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x180]
  a27fd5:	06 
  a27fd6:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x3c0]
  a27fdd:	0f 
  a27fde:	62 81 4c 40 5c c0    	vsubps zmm16,zmm22,zmm24
  a27fe4:	62 81 4c 40 58 f0    	vaddps zmm22,zmm22,zmm24
  a27fea:	62 61 7c 40 5c c1    	vsubps zmm24,zmm16,zmm1
  a27ff0:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm24
  a27ff7:	06 
  a27ff8:	62 21 74 48 58 e0    	vaddps zmm28,zmm1,zmm16
  a27ffe:	62 61 34 40 5c d6    	vsubps zmm26,zmm25,zmm6
  a28004:	62 91 4c 48 58 c9    	vaddps zmm1,zmm6,zmm25
  a2800a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a28011:	03 
  a28012:	62 b1 0c 48 5c cf    	vsubps zmm1,zmm14,zmm23
  a28018:	62 31 0c 48 58 f7    	vaddps zmm14,zmm14,zmm23
  a2801e:	62 91 0c 40 5c f7    	vsubps zmm6,zmm30,zmm31
  a28024:	62 01 0c 40 58 f7    	vaddps zmm30,zmm30,zmm31
  a2802a:	62 61 14 40 5c fc    	vsubps zmm31,zmm29,zmm4
  a28030:	62 f1 14 40 58 e4    	vaddps zmm4,zmm29,zmm4
  a28036:	62 61 7c 48 5c ef    	vsubps zmm29,zmm0,zmm7
  a2803c:	62 f1 7c 48 58 ff    	vaddps zmm7,zmm0,zmm7
  a28042:	62 41 64 48 58 c8    	vaddps zmm25,zmm3,zmm8
  a28048:	62 f1 3c 48 5c db    	vsubps zmm3,zmm8,zmm3
  a2804e:	62 c1 1c 48 5c c5    	vsubps zmm16,zmm12,zmm13
  a28054:	62 41 14 48 58 c4    	vaddps zmm24,zmm13,zmm12
  a2805a:	62 c1 54 48 5c fb    	vsubps zmm23,zmm5,zmm11
  a28060:	62 51 54 48 58 db    	vaddps zmm11,zmm5,zmm11
  a28066:	62 d1 6c 40 5c ea    	vsubps zmm5,zmm18,zmm10
  a2806c:	62 d1 6c 40 58 c2    	vaddps zmm0,zmm18,zmm10
  a28072:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a28079:	07 
  a2807a:	62 a1 6c 48 5c d6    	vsubps zmm18,zmm2,zmm22
  a28080:	62 31 6c 48 58 e6    	vaddps zmm12,zmm2,zmm22
  a28086:	62 d1 64 40 5c d7    	vsubps zmm2,zmm19,zmm15
  a2808c:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x100]
  a28093:	04 
  a28094:	62 11 4c 40 5c d3    	vsubps zmm10,zmm22,zmm27
  a2809a:	62 d1 6c 48 58 c2    	vaddps zmm0,zmm2,zmm10
  a280a0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a280a7:	0e 
  a280a8:	62 71 2c 48 5c d2    	vsubps zmm10,zmm10,zmm2
  a280ae:	62 d1 64 40 58 c7    	vaddps zmm0,zmm19,zmm15
  a280b4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a280bb:	05 
  a280bc:	62 a1 5c 40 5c dd    	vsubps zmm19,zmm20,zmm21
  a280c2:	62 b1 5c 40 58 c5    	vaddps zmm0,zmm20,zmm21
  a280c8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a280cf:	0f 
  a280d0:	62 a1 34 48 5c e1    	vsubps zmm20,zmm9,zmm17
  a280d6:	62 51 74 40 58 e9    	vaddps zmm13,zmm17,zmm9
  a280dc:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x80]
  a280e3:	02 
  a280e4:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x40]
  a280eb:	01 
  a280ec:	62 51 34 48 5c f8    	vsubps zmm15,zmm9,zmm8
  a280f2:	62 e1 04 48 5c ed    	vsubps zmm21,zmm15,zmm5
  a280f8:	62 d1 54 48 58 ef    	vaddps zmm5,zmm5,zmm15
  a280fe:	62 f2 7d 48 18 05 f8 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff64d5f8]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a28105:	d5 64 ff 
  a28108:	62 e1 14 40 59 c8    	vmulps zmm17,zmm29,zmm0
  a2810e:	62 f2 7d 48 18 15 4c 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff64d54c]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a28115:	d5 64 ff 
  a28118:	62 e2 05 40 b8 ca    	vfmadd231ps zmm17,zmm31,zmm2
  a2811e:	62 61 14 40 59 ea    	vmulps zmm29,zmm29,zmm2
  a28124:	62 02 7d 48 bc ef    	vfnmadd231ps zmm29,zmm0,zmm31
  a2812a:	62 61 4c 48 59 fa    	vmulps zmm31,zmm6,zmm2
  a28130:	62 62 75 48 b8 f8    	vfmadd231ps zmm31,zmm1,zmm0
  a28136:	62 f1 74 48 59 ca    	vmulps zmm1,zmm1,zmm2
  a2813c:	62 f2 7d 48 bc ce    	vfnmadd231ps zmm1,zmm0,zmm6
  a28142:	62 71 44 48 59 fa    	vmulps zmm15,zmm7,zmm2
  a28148:	62 72 5d 48 b8 f8    	vfmadd231ps zmm15,zmm4,zmm0
  a2814e:	62 f1 44 48 59 f0    	vmulps zmm6,zmm7,zmm0
  a28154:	62 f2 6d 48 bc f4    	vfnmadd231ps zmm6,zmm2,zmm4
  a2815a:	62 f1 0c 40 59 e0    	vmulps zmm4,zmm30,zmm0
  a28160:	62 f2 0d 48 b8 e2    	vfmadd231ps zmm4,zmm14,zmm2
  a28166:	62 f1 0c 40 59 fa    	vmulps zmm7,zmm30,zmm2
  a2816c:	62 d2 7d 48 bc fe    	vfnmadd231ps zmm7,zmm0,zmm14
  a28172:	62 f2 7d 48 18 05 20 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff64d220]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a28179:	d2 64 ff 
  a2817c:	62 f1 64 48 59 d8    	vmulps zmm3,zmm3,zmm0
  a28182:	62 71 1c 40 59 f0    	vmulps zmm14,zmm28,zmm0
  a28188:	62 41 64 48 58 e6    	vaddps zmm28,zmm3,zmm14
  a2818e:	62 d1 64 48 5c de    	vsubps zmm3,zmm3,zmm14
  a28194:	62 71 7c 48 59 74 24 	vmulps zmm14,zmm0,ZMMWORD PTR [rsp+0x180]
  a2819b:	06 
  a2819c:	62 61 34 40 59 c8    	vmulps zmm25,zmm25,zmm0
  a281a2:	62 01 0c 48 5c f1    	vsubps zmm30,zmm14,zmm25
  a281a8:	62 41 34 40 58 ce    	vaddps zmm25,zmm25,zmm14
  a281ae:	62 01 4c 40 58 db    	vaddps zmm27,zmm22,zmm27
  a281b4:	62 51 34 48 58 c0    	vaddps zmm8,zmm9,zmm8
  a281ba:	62 11 2c 40 5c ce    	vsubps zmm9,zmm26,zmm30
  a281c0:	62 91 0c 40 58 d2    	vaddps zmm2,zmm30,zmm26
  a281c6:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a281cd:	01 
  a281ce:	62 21 7c 40 5c d4    	vsubps zmm26,zmm16,zmm20
  a281d4:	62 b1 5c 40 58 d0    	vaddps zmm2,zmm20,zmm16
  a281da:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm2
  a281e1:	06 
  a281e2:	62 e1 2c 48 59 c0    	vmulps zmm16,zmm10,zmm0
  a281e8:	62 f1 54 48 59 e8    	vmulps zmm5,zmm5,zmm0
  a281ee:	62 e1 7c 40 58 f5    	vaddps zmm22,zmm16,zmm5
  a281f4:	62 61 7c 40 5c f5    	vsubps zmm30,zmm16,zmm5
  a281fa:	62 11 44 40 5c d4    	vsubps zmm10,zmm23,zmm28
  a28200:	62 91 44 40 58 d4    	vaddps zmm2,zmm23,zmm28
  a28206:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a2820d:	04 
  a2820e:	62 a1 64 40 5c c2    	vsubps zmm16,zmm19,zmm18
  a28214:	62 a1 64 40 58 fa    	vaddps zmm23,zmm19,zmm18
  a2821a:	62 e1 54 40 59 d8    	vmulps zmm19,zmm21,zmm0
  a28220:	62 e1 7c 48 59 6c 24 	vmulps zmm21,zmm0,ZMMWORD PTR [rsp+0x380]
  a28227:	0e 
  a28228:	62 21 64 40 5c e5    	vsubps zmm28,zmm19,zmm21
  a2822e:	62 a1 54 40 58 e3    	vaddps zmm20,zmm21,zmm19
  a28234:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a2823b:	03 
  a2823c:	62 e1 7c 48 5c eb    	vsubps zmm21,zmm0,zmm3
  a28242:	62 e1 64 48 58 d8    	vaddps zmm19,zmm3,zmm0
  a28248:	62 91 24 48 5c e9    	vsubps zmm5,zmm11,zmm25
  a2824e:	62 01 24 48 58 c9    	vaddps zmm25,zmm11,zmm25
  a28254:	62 71 14 40 5c d9    	vsubps zmm11,zmm29,zmm1
  a2825a:	62 61 14 40 58 e9    	vaddps zmm29,zmm29,zmm1
  a28260:	62 d1 3c 40 5c d4    	vsubps zmm2,zmm24,zmm12
  a28266:	62 81 1c 48 58 d0    	vaddps zmm18,zmm12,zmm24
  a2826c:	62 01 74 40 58 c7    	vaddps zmm24,zmm17,zmm31
  a28272:	62 81 74 40 5c cf    	vsubps zmm17,zmm17,zmm31
  a28278:	62 d1 24 40 5c c8    	vsubps zmm1,zmm27,zmm8
  a2827e:	62 51 24 40 58 f0    	vaddps zmm14,zmm27,zmm8
  a28284:	62 71 4c 48 5c c7    	vsubps zmm8,zmm6,zmm7
  a2828a:	62 f1 4c 48 58 f7    	vaddps zmm6,zmm6,zmm7
  a28290:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x3c0]
  a28297:	0f 
  a28298:	62 d1 7c 48 5c fd    	vsubps zmm7,zmm0,zmm13
  a2829e:	62 51 7c 48 58 e5    	vaddps zmm12,zmm0,zmm13
  a282a4:	62 d1 5c 48 5c c7    	vsubps zmm0,zmm4,zmm15
  a282aa:	62 f1 04 48 58 dc    	vaddps zmm3,zmm15,zmm4
  a282b0:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x1c0]
  a282b7:	07 
  a282b8:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x140]
  a282bf:	05 
  a282c0:	62 51 5c 48 5c fd    	vsubps zmm15,zmm4,zmm13
  a282c6:	62 f1 14 48 58 e4    	vaddps zmm4,zmm13,zmm4
  a282cc:	62 01 34 48 58 f8    	vaddps zmm31,zmm9,zmm24
  a282d2:	62 11 34 48 5c c8    	vsubps zmm9,zmm9,zmm24
  a282d8:	62 01 2c 40 5c dc    	vsubps zmm27,zmm26,zmm28
  a282de:	62 11 2c 40 58 ec    	vaddps zmm13,zmm26,zmm28
  a282e4:	62 41 2c 48 5c c3    	vsubps zmm24,zmm10,zmm11
  a282ea:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm24
  a282f1:	03 
  a282f2:	62 41 2c 48 58 d3    	vaddps zmm26,zmm10,zmm11
  a282f8:	62 31 7c 40 5c d6    	vsubps zmm10,zmm16,zmm22
  a282fe:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm10
  a28305:	02 
  a28306:	62 21 7c 40 58 c6    	vaddps zmm24,zmm16,zmm22
  a2830c:	62 71 54 40 5c d8    	vsubps zmm11,zmm21,zmm0
  a28312:	62 f1 54 40 58 c0    	vaddps zmm0,zmm21,zmm0
  a28318:	62 c1 6c 48 5c f7    	vsubps zmm22,zmm2,zmm15
  a2831e:	62 51 6c 48 58 d7    	vaddps zmm10,zmm2,zmm15
  a28324:	62 41 54 48 5c e0    	vsubps zmm28,zmm5,zmm8
  a2832a:	62 c1 54 48 58 c0    	vaddps zmm16,zmm5,zmm8
  a28330:	62 e1 44 48 5c e9    	vsubps zmm21,zmm7,zmm1
  a28336:	62 f1 44 48 58 d1    	vaddps zmm2,zmm7,zmm1
  a2833c:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a28343:	01 
  a28344:	62 11 74 48 5c c5    	vsubps zmm8,zmm1,zmm29
  a2834a:	62 01 74 48 58 ed    	vaddps zmm29,zmm1,zmm29
  a28350:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a28357:	06 
  a28358:	62 91 74 48 5c fe    	vsubps zmm7,zmm1,zmm30
  a2835e:	62 91 74 48 58 ee    	vaddps zmm5,zmm1,zmm30
  a28364:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a2836b:	04 
  a2836c:	62 21 74 48 5c f1    	vsubps zmm30,zmm1,zmm17
  a28372:	62 b1 74 48 58 c9    	vaddps zmm1,zmm1,zmm17
  a28378:	62 a1 44 40 5c cc    	vsubps zmm17,zmm23,zmm20
  a2837e:	62 a1 44 40 58 e4    	vaddps zmm20,zmm23,zmm20
  a28384:	62 71 64 40 5c fe    	vsubps zmm15,zmm19,zmm6
  a2838a:	62 f1 64 40 58 f6    	vaddps zmm6,zmm19,zmm6
  a28390:	62 c1 6c 40 5c de    	vsubps zmm19,zmm18,zmm14
  a28396:	62 51 6c 40 58 f6    	vaddps zmm14,zmm18,zmm14
  a2839c:	62 e1 34 40 5c d3    	vsubps zmm18,zmm25,zmm3
  a283a2:	62 f1 34 40 58 db    	vaddps zmm3,zmm25,zmm3
  a283a8:	62 e1 1c 48 5c fc    	vsubps zmm23,zmm12,zmm4
  a283ae:	62 f1 1c 48 58 e4    	vaddps zmm4,zmm12,zmm4
  a283b4:	62 71 7c 48 28 25 82 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff668182]        # 90540 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d9f0>
  a283bb:	81 66 ff 
  a283be:	62 72 1d 48 7f f4    	vpermt2ps zmm14,zmm12,zmm4
  a283c4:	62 73 7d 48 19 f4 02 	vextractf32x4 xmm4,zmm14,0x2
  a283cb:	c5 f8 13 64 16 20    	vmovlps QWORD PTR [rsi+rdx*1+0x20],xmm4
  a283d1:	c5 7c 11 34 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm14
  a283d6:	62 f2 1d 48 7f f3    	vpermt2ps zmm6,zmm12,zmm3
  a283dc:	62 f3 7d 48 19 f3 02 	vextractf32x4 xmm3,zmm6,0x2
  a283e3:	c5 f8 13 5c 16 48    	vmovlps QWORD PTR [rsi+rdx*1+0x48],xmm3
  a283e9:	c5 fc 11 74 16 28    	vmovups YMMWORD PTR [rsi+rdx*1+0x28],ymm6
  a283ef:	62 b2 1d 48 7f ec    	vpermt2ps zmm5,zmm12,zmm20
  a283f5:	62 f3 7d 48 19 eb 02 	vextractf32x4 xmm3,zmm5,0x2
  a283fc:	c5 f8 13 5c 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm3
  a28402:	c5 fc 11 6c 16 50    	vmovups YMMWORD PTR [rsi+rdx*1+0x50],ymm5
  a28408:	62 62 1d 48 7f e9    	vpermt2ps zmm29,zmm12,zmm1
  a2840e:	62 63 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm29,0x2
  a28415:	c5 f8 13 8c 16 98 00 	vmovlps QWORD PTR [rsi+rdx*1+0x98],xmm1
  a2841c:	00 00 
  a2841e:	62 61 7c 28 11 ac 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x78],ymm29
  a28425:	78 00 00 00 
  a28429:	62 72 1d 48 7f d2    	vpermt2ps zmm10,zmm12,zmm2
  a2842f:	62 73 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm10,0x2
  a28436:	c5 f8 13 8c 16 c0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xc0],xmm1
  a2843d:	00 00 
  a2843f:	c5 7c 11 94 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm10
  a28446:	00 00 
  a28448:	62 b2 1d 48 7f c0    	vpermt2ps zmm0,zmm12,zmm16
  a2844e:	62 f3 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm0,0x2
  a28455:	c5 f8 13 8c 16 e8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xe8],xmm1
  a2845c:	00 00 
  a2845e:	c5 fc 11 84 16 c8 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc8],ymm0
  a28465:	00 00 
  a28467:	62 12 1d 48 7f e8    	vpermt2ps zmm13,zmm12,zmm24
  a2846d:	62 73 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm13,0x2
  a28474:	c5 f8 13 84 16 10 01 	vmovlps QWORD PTR [rsi+rdx*1+0x110],xmm0
  a2847b:	00 00 
  a2847d:	c5 7c 11 ac 16 f0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm13
  a28484:	00 00 
  a28486:	62 12 1d 48 7f ca    	vpermt2ps zmm9,zmm12,zmm26
  a2848c:	62 73 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm9,0x2
  a28493:	c5 f8 13 84 16 38 01 	vmovlps QWORD PTR [rsi+rdx*1+0x138],xmm0
  a2849a:	00 00 
  a2849c:	c5 7c 11 8c 16 18 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x118],ymm9
  a284a3:	00 00 
  a284a5:	62 a2 1d 48 7f df    	vpermt2ps zmm19,zmm12,zmm23
  a284ab:	62 e3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm19,0x2
  a284b2:	c5 f8 13 84 16 60 01 	vmovlps QWORD PTR [rsi+rdx*1+0x160],xmm0
  a284b9:	00 00 
  a284bb:	62 e1 7c 28 11 5c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm19
  a284c2:	0a 
  a284c3:	62 32 1d 48 7f fa    	vpermt2ps zmm15,zmm12,zmm18
  a284c9:	62 73 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm15,0x2
  a284d0:	c5 f8 13 84 16 88 01 	vmovlps QWORD PTR [rsi+rdx*1+0x188],xmm0
  a284d7:	00 00 
  a284d9:	c5 7c 11 bc 16 68 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x168],ymm15
  a284e0:	00 00 
  a284e2:	62 b2 1d 48 7f f9    	vpermt2ps zmm7,zmm12,zmm17
  a284e8:	62 f3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm7,0x2
  a284ef:	c5 f8 13 84 16 b0 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1b0],xmm0
  a284f6:	00 00 
  a284f8:	c5 fc 11 bc 16 90 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x190],ymm7
  a284ff:	00 00 
  a28501:	62 12 1d 48 7f c6    	vpermt2ps zmm8,zmm12,zmm30
  a28507:	62 73 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm8,0x2
  a2850e:	c5 f8 13 84 16 d8 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1d8],xmm0
  a28515:	00 00 
  a28517:	c5 7c 11 84 16 b8 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1b8],ymm8
  a2851e:	00 00 
  a28520:	62 a2 1d 48 7f f5    	vpermt2ps zmm22,zmm12,zmm21
  a28526:	62 e3 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm22,0x2
  a2852d:	c5 f8 13 84 16 00 02 	vmovlps QWORD PTR [rsi+rdx*1+0x200],xmm0
  a28534:	00 00 
  a28536:	62 e1 7c 28 11 74 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x1e0],ymm22
  a2853d:	0f 
  a2853e:	62 12 1d 48 7f dc    	vpermt2ps zmm11,zmm12,zmm28
  a28544:	62 73 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm11,0x2
  a2854b:	c5 f8 13 84 16 28 02 	vmovlps QWORD PTR [rsi+rdx*1+0x228],xmm0
  a28552:	00 00 
  a28554:	c5 7c 11 9c 16 08 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x208],ymm11
  a2855b:	00 00 
  a2855d:	62 62 1d 48 7f 5c 24 	vpermt2ps zmm27,zmm12,ZMMWORD PTR [rsp+0x80]
  a28564:	02 
  a28565:	62 63 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm27,0x2
  a2856c:	c5 f8 13 84 16 50 02 	vmovlps QWORD PTR [rsi+rdx*1+0x250],xmm0
  a28573:	00 00 
  a28575:	62 61 7c 28 11 9c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x230],ymm27
  a2857c:	30 02 00 00 
  a28580:	62 62 1d 48 7f 7c 24 	vpermt2ps zmm31,zmm12,ZMMWORD PTR [rsp+0xc0]
  a28587:	03 
  a28588:	62 63 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm31,0x2
  a2858f:	c5 f8 13 84 16 78 02 	vmovlps QWORD PTR [rsi+rdx*1+0x278],xmm0
  a28596:	00 00 
  a28598:	62 61 7c 28 11 bc 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x258],ymm31
  a2859f:	58 02 00 00 
  a285a3:	48 81 c2 80 02 00 00 	add    rdx,0x280
  a285aa:	48 39 d0             	cmp    rax,rdx
  a285ad:	0f 85 2d ef ff ff    	jne    a274e0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x60>
  a285b3:	48 89 ec             	mov    rsp,rbp
  a285b6:	5d                   	pop    rbp
  a285b7:	c5 f8 77             	vzeroupper
  a285ba:	c3                   	ret
