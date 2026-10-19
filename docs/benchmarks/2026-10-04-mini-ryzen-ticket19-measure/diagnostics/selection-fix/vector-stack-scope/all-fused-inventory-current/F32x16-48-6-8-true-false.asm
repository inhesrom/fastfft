
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a045c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a045c0:	55                   	push   rbp
  a045c1:	48 89 e5             	mov    rbp,rsp
  a045c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a045c8:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a045cf:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a045d4:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a045d9:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a045de:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a045e3:	62 71 7c 48 28 05 93 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff689c93]        # 8e280 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b730>
  a045ea:	9c 68 ff 
  a045ed:	62 f1 7c 48 10 0f    	vmovups zmm1,ZMMWORD PTR [rdi]
  a045f3:	62 f1 7c 48 10 77 01 	vmovups zmm6,ZMMWORD PTR [rdi+0x40]
  a045fa:	62 f1 7c 48 10 7f 02 	vmovups zmm7,ZMMWORD PTR [rdi+0x80]
  a04601:	62 f1 7c 48 10 57 03 	vmovups zmm2,ZMMWORD PTR [rdi+0xc0]
  a04608:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a0460c:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a04612:	62 f2 3d 48 7f e3    	vpermt2ps zmm4,zmm8,zmm3
  a04618:	62 f1 7c 48 28 05 9e 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff689c9e]        # 8e2c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b770>
  a0461f:	9c 68 ff 
  a04622:	62 f2 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm3
  a04628:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a0462e:	62 72 3d 48 7f d3    	vpermt2ps zmm10,zmm8,zmm3
  a04634:	62 f2 7d 48 7f f3    	vpermt2ps zmm6,zmm0,zmm3
  a0463a:	62 71 7c 48 28 df    	vmovaps zmm11,zmm7
  a04640:	62 72 3d 48 7f db    	vpermt2ps zmm11,zmm8,zmm3
  a04646:	62 f2 7d 48 7f fb    	vpermt2ps zmm7,zmm0,zmm3
  a0464c:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a04652:	62 72 3d 48 7f cb    	vpermt2ps zmm9,zmm8,zmm3
  a04658:	62 f2 7d 48 7f d3    	vpermt2ps zmm2,zmm0,zmm3
  a0465e:	62 71 7c 48 10 67 04 	vmovups zmm12,ZMMWORD PTR [rdi+0x100]
  a04665:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a0466b:	62 72 3d 48 7f eb    	vpermt2ps zmm13,zmm8,zmm3
  a04671:	62 72 7d 48 7f e3    	vpermt2ps zmm12,zmm0,zmm3
  a04677:	62 71 7c 48 10 77 05 	vmovups zmm14,ZMMWORD PTR [rdi+0x140]
  a0467e:	62 72 0d 48 77 c3    	vpermi2ps zmm8,zmm14,zmm3
  a04684:	62 72 7d 48 7f f3    	vpermt2ps zmm14,zmm0,zmm3
  a0468a:	62 d1 44 48 58 ec    	vaddps zmm5,zmm7,zmm12
  a04690:	62 71 74 48 58 fd    	vaddps zmm15,zmm1,zmm5
  a04696:	62 e1 0c 48 58 c6    	vaddps zmm16,zmm14,zmm6
  a0469c:	62 a1 6c 48 58 c8    	vaddps zmm17,zmm2,zmm16
  a046a2:	62 b1 04 48 58 c1    	vaddps zmm0,zmm15,zmm17
  a046a8:	62 c1 24 48 58 d5    	vaddps zmm18,zmm11,zmm13
  a046ae:	62 e2 7d 48 18 1d a8 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff670da8]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a046b5:	0d 67 ff 
  a046b8:	62 f2 65 40 bc cd    	vfnmadd231ps zmm1,zmm19,zmm5
  a046be:	62 a1 5c 48 58 e2    	vaddps zmm20,zmm4,zmm18
  a046c4:	62 b2 65 40 bc d0    	vfnmadd231ps zmm2,zmm19,zmm16
  a046ca:	62 d1 3c 48 58 ea    	vaddps zmm5,zmm8,zmm10
  a046d0:	62 b2 65 40 bc e2    	vfnmadd231ps zmm4,zmm19,zmm18
  a046d6:	62 e1 34 48 58 c5    	vaddps zmm16,zmm9,zmm5
  a046dc:	62 32 55 48 bc cb    	vfnmadd231ps zmm9,zmm5,zmm19
  a046e2:	62 b1 5c 40 58 e8    	vaddps zmm5,zmm20,zmm16
  a046e8:	62 e2 7d 48 18 15 e2 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff670be2]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a046ef:	0b 67 ff 
  a046f2:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a046f8:	62 31 24 48 59 da    	vmulps zmm11,zmm11,zmm18
  a046fe:	62 51 74 48 58 eb    	vaddps zmm13,zmm1,zmm11
  a04704:	62 51 3c 48 5c c2    	vsubps zmm8,zmm8,zmm10
  a0470a:	62 31 3c 48 59 c2    	vmulps zmm8,zmm8,zmm18
  a04710:	62 51 6c 48 58 d0    	vaddps zmm10,zmm2,zmm8
  a04716:	62 d1 44 48 5c fc    	vsubps zmm7,zmm7,zmm12
  a0471c:	62 c1 14 48 5c da    	vsubps zmm19,zmm13,zmm10
  a04722:	62 b1 44 48 59 fa    	vmulps zmm7,zmm7,zmm18
  a04728:	62 f1 0c 48 5c f6    	vsubps zmm6,zmm14,zmm6
  a0472e:	62 71 5c 48 5c e7    	vsubps zmm12,zmm4,zmm7
  a04734:	62 31 4c 48 59 f2    	vmulps zmm14,zmm6,zmm18
  a0473a:	62 c1 34 48 5c d6    	vsubps zmm18,zmm9,zmm14
  a04740:	62 d1 74 48 5c cb    	vsubps zmm1,zmm1,zmm11
  a04746:	62 b1 1c 48 5c f2    	vsubps zmm6,zmm12,zmm18
  a0474c:	62 d1 6c 48 5c d0    	vsubps zmm2,zmm2,zmm8
  a04752:	62 e1 74 48 58 ea    	vaddps zmm21,zmm1,zmm2
  a04758:	62 f1 44 48 58 e4    	vaddps zmm4,zmm7,zmm4
  a0475e:	62 51 0c 48 58 c9    	vaddps zmm9,zmm14,zmm9
  a04764:	62 d1 5c 48 58 f9    	vaddps zmm7,zmm4,zmm9
  a0476a:	62 31 04 48 5c f9    	vsubps zmm15,zmm15,zmm17
  a04770:	62 31 5c 40 5c c0    	vsubps zmm8,zmm20,zmm16
  a04776:	62 c1 14 48 58 c2    	vaddps zmm16,zmm13,zmm10
  a0477c:	62 31 1c 48 58 e2    	vaddps zmm12,zmm12,zmm18
  a04782:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a04788:	62 51 5c 48 5c d1    	vsubps zmm10,zmm4,zmm9
  a0478e:	62 71 7c 48 28 0d e8 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6c27e8]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a04795:	27 6c ff 
  a04798:	62 f2 35 48 7f c3    	vpermt2ps zmm0,zmm9,zmm3
  a0479e:	62 e2 35 48 7f db    	vpermt2ps zmm19,zmm9,zmm3
  a047a4:	62 e2 35 48 7f eb    	vpermt2ps zmm21,zmm9,zmm3
  a047aa:	62 72 35 48 7f fb    	vpermt2ps zmm15,zmm9,zmm3
  a047b0:	62 e2 35 48 7f c3    	vpermt2ps zmm16,zmm9,zmm3
  a047b6:	62 f2 35 48 7f cb    	vpermt2ps zmm1,zmm9,zmm3
  a047bc:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a047c1:	62 52 35 48 7f ed    	vpermt2ps zmm13,zmm9,zmm13
  a047c7:	62 71 7c 48 28 1d 2f 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6c272f]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a047ce:	27 6c ff 
  a047d1:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a047d7:	62 b2 25 48 7f d0    	vpermt2ps zmm2,zmm11,zmm16
  a047dd:	62 71 7c 48 28 35 59 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6c2759]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a047e4:	27 6c ff 
  a047e7:	62 b2 0d 48 7f c0    	vpermt2ps zmm0,zmm14,zmm16
  a047ed:	62 a1 7c 48 28 c3    	vmovaps zmm16,zmm19
  a047f3:	62 e2 25 48 7f c1    	vpermt2ps zmm16,zmm11,zmm1
  a047f9:	62 e2 0d 48 7f d9    	vpermt2ps zmm19,zmm14,zmm1
  a047ff:	62 b1 7c 48 28 cd    	vmovaps zmm1,zmm21
  a04805:	62 d2 25 48 7f cd    	vpermt2ps zmm1,zmm11,zmm13
  a0480b:	62 c2 0d 48 7f ed    	vpermt2ps zmm21,zmm14,zmm13
  a04811:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a04817:	62 c2 25 48 7f cd    	vpermt2ps zmm17,zmm11,zmm13
  a0481d:	62 52 0d 48 7f fd    	vpermt2ps zmm15,zmm14,zmm13
  a04823:	62 f1 ed 48 14 e1    	vunpcklpd zmm4,zmm2,zmm1
  a04829:	62 f1 ed 48 15 c9    	vunpckhpd zmm1,zmm2,zmm1
  a0482f:	62 a1 fd 40 14 d1    	vunpcklpd zmm18,zmm16,zmm17
  a04835:	62 a1 fd 40 15 c1    	vunpckhpd zmm16,zmm16,zmm17
  a0483b:	62 b1 fd 48 14 d5    	vunpcklpd zmm2,zmm0,zmm21
  a04841:	62 b1 fd 48 15 c5    	vunpckhpd zmm0,zmm0,zmm21
  a04847:	62 c1 e5 40 14 cf    	vunpcklpd zmm17,zmm19,zmm15
  a0484d:	62 c1 e5 40 15 df    	vunpckhpd zmm19,zmm19,zmm15
  a04853:	62 f2 35 48 7f eb    	vpermt2ps zmm5,zmm9,zmm3
  a04859:	62 f2 35 48 7f f3    	vpermt2ps zmm6,zmm9,zmm3
  a0485f:	62 f2 35 48 7f fb    	vpermt2ps zmm7,zmm9,zmm3
  a04865:	62 72 35 48 7f c3    	vpermt2ps zmm8,zmm9,zmm3
  a0486b:	62 72 35 48 7f e3    	vpermt2ps zmm12,zmm9,zmm3
  a04871:	62 72 35 48 7f d3    	vpermt2ps zmm10,zmm9,zmm3
  a04877:	62 71 7c 48 28 0d 7f 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6c257f]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0487e:	25 6c ff 
  a04881:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a04887:	62 c2 25 48 7f e4    	vpermt2ps zmm20,zmm11,zmm12
  a0488d:	62 d2 0d 48 7f ec    	vpermt2ps zmm5,zmm14,zmm12
  a04893:	62 e1 7c 48 28 ee    	vmovaps zmm21,zmm6
  a04899:	62 c2 25 48 7f ea    	vpermt2ps zmm21,zmm11,zmm10
  a0489f:	62 d2 0d 48 7f f2    	vpermt2ps zmm6,zmm14,zmm10
  a048a5:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a048ab:	62 52 25 48 7f d5    	vpermt2ps zmm10,zmm11,zmm13
  a048b1:	62 d2 0d 48 7f fd    	vpermt2ps zmm7,zmm14,zmm13
  a048b7:	62 52 3d 48 77 dd    	vpermi2ps zmm11,zmm8,zmm13
  a048bd:	62 52 0d 48 7f c5    	vpermt2ps zmm8,zmm14,zmm13
  a048c3:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a048c9:	62 b2 35 48 7f da    	vpermt2ps zmm3,zmm9,zmm18
  a048cf:	62 e1 7c 48 28 35 67 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6c2567]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a048d6:	25 6c ff 
  a048d9:	62 b2 4d 40 7f e2    	vpermt2ps zmm4,zmm22,zmm18
  a048df:	62 71 7c 48 28 f1    	vmovaps zmm14,zmm1
  a048e5:	62 32 35 48 7f f0    	vpermt2ps zmm14,zmm9,zmm16
  a048eb:	62 b2 4d 40 7f c8    	vpermt2ps zmm1,zmm22,zmm16
  a048f1:	62 71 7c 48 28 fa    	vmovaps zmm15,zmm2
  a048f7:	62 32 35 48 7f f9    	vpermt2ps zmm15,zmm9,zmm17
  a048fd:	62 b2 4d 40 7f d1    	vpermt2ps zmm2,zmm22,zmm17
  a04903:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a04909:	62 32 35 48 7f eb    	vpermt2ps zmm13,zmm9,zmm19
  a0490f:	62 b2 4d 40 7f c3    	vpermt2ps zmm0,zmm22,zmm19
  a04915:	62 51 dd 40 14 e2    	vunpcklpd zmm12,zmm20,zmm10
  a0491b:	62 51 dd 40 15 d2    	vunpckhpd zmm10,zmm20,zmm10
  a04921:	62 c1 d5 40 14 c3    	vunpcklpd zmm16,zmm21,zmm11
  a04927:	62 c1 d5 40 15 cb    	vunpckhpd zmm17,zmm21,zmm11
  a0492d:	62 71 d5 48 14 df    	vunpcklpd zmm11,zmm5,zmm7
  a04933:	62 f1 d5 48 15 ff    	vunpckhpd zmm7,zmm5,zmm7
  a04939:	62 c1 cd 48 14 d0    	vunpcklpd zmm18,zmm6,zmm8
  a0493f:	62 d1 cd 48 15 f0    	vunpckhpd zmm6,zmm6,zmm8
  a04945:	62 d1 7c 48 28 ec    	vmovaps zmm5,zmm12
  a0494b:	62 b2 35 48 7f e8    	vpermt2ps zmm5,zmm9,zmm16
  a04951:	62 32 4d 40 7f e0    	vpermt2ps zmm12,zmm22,zmm16
  a04957:	62 c1 7c 48 28 c2    	vmovaps zmm16,zmm10
  a0495d:	62 a2 35 48 7f c1    	vpermt2ps zmm16,zmm9,zmm17
  a04963:	62 32 4d 40 7f d1    	vpermt2ps zmm10,zmm22,zmm17
  a04969:	62 51 7c 48 28 c3    	vmovaps zmm8,zmm11
  a0496f:	62 32 35 48 7f c2    	vpermt2ps zmm8,zmm9,zmm18
  a04975:	62 32 4d 40 7f da    	vpermt2ps zmm11,zmm22,zmm18
  a0497b:	62 72 45 48 77 ce    	vpermi2ps zmm9,zmm7,zmm6
  a04981:	62 f2 4d 40 7f fe    	vpermt2ps zmm7,zmm22,zmm6
  a04987:	62 e1 7c 48 10 4a 08 	vmovups zmm17,ZMMWORD PTR [rdx+0x200]
  a0498e:	62 e1 7c 48 10 52 09 	vmovups zmm18,ZMMWORD PTR [rdx+0x240]
  a04995:	62 b1 04 48 59 f1    	vmulps zmm6,zmm15,zmm17
  a0499b:	62 b2 3d 48 bc f2    	vfnmadd231ps zmm6,zmm8,zmm18
  a049a1:	62 31 3c 48 59 c1    	vmulps zmm8,zmm8,zmm17
  a049a7:	62 e1 7c 48 10 4a 04 	vmovups zmm17,ZMMWORD PTR [rdx+0x100]
  a049ae:	62 52 6d 40 b8 c7    	vfmadd231ps zmm8,zmm18,zmm15
  a049b4:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a049bb:	62 31 0c 48 59 f9    	vmulps zmm15,zmm14,zmm17
  a049c1:	62 32 7d 40 bc fa    	vfnmadd231ps zmm15,zmm16,zmm18
  a049c7:	62 a1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm17
  a049cd:	62 e1 7c 48 10 4a 0c 	vmovups zmm17,ZMMWORD PTR [rdx+0x300]
  a049d4:	62 c2 6d 40 b8 c6    	vfmadd231ps zmm16,zmm18,zmm14
  a049da:	62 71 7c 48 10 72 0d 	vmovups zmm14,ZMMWORD PTR [rdx+0x340]
  a049e1:	62 a1 14 48 59 d1    	vmulps zmm18,zmm13,zmm17
  a049e7:	62 c2 35 48 bc d6    	vfnmadd231ps zmm18,zmm9,zmm14
  a049ed:	62 31 34 48 59 c9    	vmulps zmm9,zmm9,zmm17
  a049f3:	62 e1 7c 48 10 4a 02 	vmovups zmm17,ZMMWORD PTR [rdx+0x80]
  a049fa:	62 52 0d 48 b8 cd    	vfmadd231ps zmm9,zmm14,zmm13
  a04a00:	62 71 7c 48 10 6a 03 	vmovups zmm13,ZMMWORD PTR [rdx+0xc0]
  a04a07:	62 31 5c 48 59 f1    	vmulps zmm14,zmm4,zmm17
  a04a0d:	62 52 1d 48 bc f5    	vfnmadd231ps zmm14,zmm12,zmm13
  a04a13:	62 31 1c 48 59 e1    	vmulps zmm12,zmm12,zmm17
  a04a19:	62 e1 7c 48 10 4a 0a 	vmovups zmm17,ZMMWORD PTR [rdx+0x280]
  a04a20:	62 72 15 48 b8 e4    	vfmadd231ps zmm12,zmm13,zmm4
  a04a26:	62 f1 7c 48 10 62 0b 	vmovups zmm4,ZMMWORD PTR [rdx+0x2c0]
  a04a2d:	62 31 6c 48 59 e9    	vmulps zmm13,zmm2,zmm17
  a04a33:	62 72 25 48 bc ec    	vfnmadd231ps zmm13,zmm11,zmm4
  a04a39:	62 31 24 48 59 d9    	vmulps zmm11,zmm11,zmm17
  a04a3f:	62 e1 7c 48 10 4a 06 	vmovups zmm17,ZMMWORD PTR [rdx+0x180]
  a04a46:	62 72 5d 48 b8 da    	vfmadd231ps zmm11,zmm4,zmm2
  a04a4c:	62 f1 7c 48 10 52 07 	vmovups zmm2,ZMMWORD PTR [rdx+0x1c0]
  a04a53:	62 b1 74 48 59 e1    	vmulps zmm4,zmm1,zmm17
  a04a59:	62 f2 2d 48 bc e2    	vfnmadd231ps zmm4,zmm10,zmm2
  a04a5f:	62 31 2c 48 59 d1    	vmulps zmm10,zmm10,zmm17
  a04a65:	62 e1 7c 48 10 4a 0e 	vmovups zmm17,ZMMWORD PTR [rdx+0x380]
  a04a6c:	62 72 6d 48 b8 d1    	vfmadd231ps zmm10,zmm2,zmm1
  a04a72:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a04a79:	62 b1 7c 48 59 d1    	vmulps zmm2,zmm0,zmm17
  a04a7f:	62 f2 45 48 bc d1    	vfnmadd231ps zmm2,zmm7,zmm1
  a04a85:	62 b1 44 48 59 f9    	vmulps zmm7,zmm7,zmm17
  a04a8b:	62 f2 75 48 b8 f8    	vfmadd231ps zmm7,zmm1,zmm0
  a04a91:	62 f1 64 48 58 c6    	vaddps zmm0,zmm3,zmm6
  a04a97:	62 f1 64 48 5c ce    	vsubps zmm1,zmm3,zmm6
  a04a9d:	62 d1 7c 40 58 d9    	vaddps zmm3,zmm16,zmm9
  a04aa3:	62 d1 7c 40 5c f1    	vsubps zmm6,zmm16,zmm9
  a04aa9:	62 51 0c 48 58 cd    	vaddps zmm9,zmm14,zmm13
  a04aaf:	62 51 0c 48 5c ed    	vsubps zmm13,zmm14,zmm13
  a04ab5:	62 51 1c 48 58 f3    	vaddps zmm14,zmm12,zmm11
  a04abb:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a04ac1:	62 71 2c 48 58 e7    	vaddps zmm12,zmm10,zmm7
  a04ac7:	62 f1 2c 48 5c ff    	vsubps zmm7,zmm10,zmm7
  a04acd:	62 71 5c 48 58 d2    	vaddps zmm10,zmm4,zmm2
  a04ad3:	62 f1 5c 48 5c d2    	vsubps zmm2,zmm4,zmm2
  a04ad9:	62 f1 3c 48 58 e5    	vaddps zmm4,zmm8,zmm5
  a04adf:	62 d1 54 48 5c e8    	vsubps zmm5,zmm5,zmm8
  a04ae5:	62 31 04 48 58 c2    	vaddps zmm8,zmm15,zmm18
  a04aeb:	62 51 6c 40 5c ff    	vsubps zmm15,zmm18,zmm15
  a04af1:	62 c1 14 48 58 c3    	vaddps zmm16,zmm13,zmm11
  a04af7:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a04afd:	62 71 44 48 5c ea    	vsubps zmm13,zmm7,zmm2
  a04b03:	62 f1 6c 48 58 d7    	vaddps zmm2,zmm2,zmm7
  a04b09:	62 f2 7d 48 18 3d 89 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff670889]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a04b10:	08 67 ff 
  a04b13:	62 e1 7c 40 59 c7    	vmulps zmm16,zmm16,zmm7
  a04b19:	62 71 14 48 59 ef    	vmulps zmm13,zmm13,zmm7
  a04b1f:	62 71 24 48 59 df    	vmulps zmm11,zmm11,zmm7
  a04b25:	62 f1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm7
  a04b2b:	62 d1 7c 48 58 f8    	vaddps zmm7,zmm0,zmm8
  a04b31:	62 d1 7c 48 5c c0    	vsubps zmm0,zmm0,zmm8
  a04b37:	62 51 0c 48 58 c4    	vaddps zmm8,zmm14,zmm12
  a04b3d:	62 51 0c 48 5c e4    	vsubps zmm12,zmm14,zmm12
  a04b43:	62 71 64 48 58 f4    	vaddps zmm14,zmm3,zmm4
  a04b49:	62 f1 5c 48 5c db    	vsubps zmm3,zmm4,zmm3
  a04b4f:	62 d1 34 48 58 e2    	vaddps zmm4,zmm9,zmm10
  a04b55:	62 51 2c 48 5c c9    	vsubps zmm9,zmm10,zmm9
  a04b5b:	62 71 74 48 58 d6    	vaddps zmm10,zmm1,zmm6
  a04b61:	62 f1 74 48 5c ce    	vsubps zmm1,zmm1,zmm6
  a04b67:	62 f1 24 48 5c f2    	vsubps zmm6,zmm11,zmm2
  a04b6d:	62 f1 24 48 58 d2    	vaddps zmm2,zmm11,zmm2
  a04b73:	62 71 04 48 58 dd    	vaddps zmm11,zmm15,zmm5
  a04b79:	62 d1 54 48 5c ef    	vsubps zmm5,zmm5,zmm15
  a04b7f:	62 51 7c 40 58 fd    	vaddps zmm15,zmm16,zmm13
  a04b85:	62 31 14 48 5c e8    	vsubps zmm13,zmm13,zmm16
  a04b8b:	62 c1 2c 48 58 c7    	vaddps zmm16,zmm10,zmm15
  a04b91:	62 51 2c 48 5c d7    	vsubps zmm10,zmm10,zmm15
  a04b97:	62 71 24 48 58 fe    	vaddps zmm15,zmm11,zmm6
  a04b9d:	62 f1 24 48 5c f6    	vsubps zmm6,zmm11,zmm6
  a04ba3:	62 51 7c 48 58 dc    	vaddps zmm11,zmm0,zmm12
  a04ba9:	62 d1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm12
  a04baf:	62 51 64 48 58 e1    	vaddps zmm12,zmm3,zmm9
  a04bb5:	62 d1 64 48 5c d9    	vsubps zmm3,zmm3,zmm9
  a04bbb:	62 71 74 48 58 ca    	vaddps zmm9,zmm1,zmm2
  a04bc1:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a04bc7:	62 d1 54 48 58 d5    	vaddps zmm2,zmm5,zmm13
  a04bcd:	62 d1 54 48 5c ed    	vsubps zmm5,zmm5,zmm13
  a04bd3:	62 51 0c 48 5c e8    	vsubps zmm13,zmm14,zmm8
  a04bd9:	62 51 0c 48 58 c0    	vaddps zmm8,zmm14,zmm8
  a04bdf:	62 71 44 48 5c f4    	vsubps zmm14,zmm7,zmm4
  a04be5:	62 f1 44 48 58 e4    	vaddps zmm4,zmm7,zmm4
  a04beb:	62 f1 7c 48 28 3d 0b 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff68970b]        # 8e300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b7b0>
  a04bf2:	97 68 ff 
  a04bf5:	62 72 45 48 7f c4    	vpermt2ps zmm8,zmm7,zmm4
  a04bfb:	62 32 45 48 7f f8    	vpermt2ps zmm15,zmm7,zmm16
  a04c01:	62 52 45 48 7f e3    	vpermt2ps zmm12,zmm7,zmm11
  a04c07:	62 d2 45 48 7f d1    	vpermt2ps zmm2,zmm7,zmm9
  a04c0d:	62 52 45 48 7f ee    	vpermt2ps zmm13,zmm7,zmm14
  a04c13:	62 d2 45 48 7f f2    	vpermt2ps zmm6,zmm7,zmm10
  a04c19:	62 f2 45 48 7f d8    	vpermt2ps zmm3,zmm7,zmm0
  a04c1f:	62 f2 45 48 7f e9    	vpermt2ps zmm5,zmm7,zmm1
  a04c25:	62 73 7d 48 19 46 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm8,0x2
  a04c2c:	02 
  a04c2d:	c5 7c 11 06          	vmovups YMMWORD PTR [rsi],ymm8
  a04c31:	62 73 7d 48 19 7e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm15,0x2
  a04c38:	02 
  a04c39:	c5 7c 11 7e 30       	vmovups YMMWORD PTR [rsi+0x30],ymm15
  a04c3e:	62 73 7d 48 19 66 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm12,0x2
  a04c45:	02 
  a04c46:	c5 7c 11 66 60       	vmovups YMMWORD PTR [rsi+0x60],ymm12
  a04c4b:	62 f3 7d 48 19 56 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm2,0x2
  a04c52:	02 
  a04c53:	c5 fc 11 96 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm2
  a04c5a:	00 
  a04c5b:	62 73 7d 48 19 6e 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm13,0x2
  a04c62:	02 
  a04c63:	c5 7c 11 ae c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm13
  a04c6a:	00 
  a04c6b:	62 f3 7d 48 19 76 11 	vextractf32x4 XMMWORD PTR [rsi+0x110],zmm6,0x2
  a04c72:	02 
  a04c73:	c5 fc 11 b6 f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm6
  a04c7a:	00 
  a04c7b:	62 f3 7d 48 19 5e 14 	vextractf32x4 XMMWORD PTR [rsi+0x140],zmm3,0x2
  a04c82:	02 
  a04c83:	c5 fc 11 9e 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm3
  a04c8a:	00 
  a04c8b:	62 f3 7d 48 19 6e 17 	vextractf32x4 XMMWORD PTR [rsi+0x170],zmm5,0x2
  a04c92:	02 
  a04c93:	c5 fc 11 ae 50 01 00 	vmovups YMMWORD PTR [rsi+0x150],ymm5
  a04c9a:	00 
  a04c9b:	48 89 ec             	mov    rsp,rbp
  a04c9e:	5d                   	pop    rbp
  a04c9f:	c5 f8 77             	vzeroupper
  a04ca2:	c3                   	ret
