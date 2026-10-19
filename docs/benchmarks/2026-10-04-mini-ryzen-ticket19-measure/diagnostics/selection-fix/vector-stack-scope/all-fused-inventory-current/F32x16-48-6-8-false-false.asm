
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a6f680 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a6f680:	55                   	push   rbp
  a6f681:	48 89 e5             	mov    rbp,rsp
  a6f684:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a6f688:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a6f68f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a6f694:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a6f699:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a6f69e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a6f6a3:	62 f1 7c 48 28 25 d3 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6250d3]        # 94780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21c30>
  a6f6aa:	50 62 ff 
  a6f6ad:	62 f1 7c 48 10 0f    	vmovups zmm1,ZMMWORD PTR [rdi]
  a6f6b3:	62 f1 7c 48 10 7f 01 	vmovups zmm7,ZMMWORD PTR [rdi+0x40]
  a6f6ba:	62 71 7c 48 10 4f 02 	vmovups zmm9,ZMMWORD PTR [rdi+0x80]
  a6f6c1:	62 f1 7c 48 10 57 03 	vmovups zmm2,ZMMWORD PTR [rdi+0xc0]
  a6f6c8:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a6f6cc:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a6f6d2:	62 f2 5d 48 7f f3    	vpermt2ps zmm6,zmm4,zmm3
  a6f6d8:	62 f1 7c 48 28 05 de 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6250de]        # 947c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21c70>
  a6f6df:	50 62 ff 
  a6f6e2:	62 f2 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm3
  a6f6e8:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a6f6ee:	62 72 5d 48 7f c3    	vpermt2ps zmm8,zmm4,zmm3
  a6f6f4:	62 f2 7d 48 7f fb    	vpermt2ps zmm7,zmm0,zmm3
  a6f6fa:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a6f700:	62 72 5d 48 7f db    	vpermt2ps zmm11,zmm4,zmm3
  a6f706:	62 72 7d 48 7f cb    	vpermt2ps zmm9,zmm0,zmm3
  a6f70c:	62 71 7c 48 28 d2    	vmovaps zmm10,zmm2
  a6f712:	62 72 5d 48 7f d3    	vpermt2ps zmm10,zmm4,zmm3
  a6f718:	62 f2 7d 48 7f d3    	vpermt2ps zmm2,zmm0,zmm3
  a6f71e:	62 71 7c 48 10 67 04 	vmovups zmm12,ZMMWORD PTR [rdi+0x100]
  a6f725:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a6f72b:	62 72 5d 48 7f eb    	vpermt2ps zmm13,zmm4,zmm3
  a6f731:	62 72 7d 48 7f e3    	vpermt2ps zmm12,zmm0,zmm3
  a6f737:	62 71 7c 48 10 77 05 	vmovups zmm14,ZMMWORD PTR [rdi+0x140]
  a6f73e:	62 f2 0d 48 77 e3    	vpermi2ps zmm4,zmm14,zmm3
  a6f744:	62 72 7d 48 7f f3    	vpermt2ps zmm14,zmm0,zmm3
  a6f74a:	62 d1 24 48 58 ed    	vaddps zmm5,zmm11,zmm13
  a6f750:	62 71 4c 48 58 fd    	vaddps zmm15,zmm6,zmm5
  a6f756:	62 c1 5c 48 58 c0    	vaddps zmm16,zmm4,zmm8
  a6f75c:	62 a1 2c 48 58 c8    	vaddps zmm17,zmm10,zmm16
  a6f762:	62 b1 04 48 58 c1    	vaddps zmm0,zmm15,zmm17
  a6f768:	62 c1 34 48 58 d4    	vaddps zmm18,zmm9,zmm12
  a6f76e:	62 e2 7d 48 18 1d e8 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff605ce8]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a6f775:	5c 60 ff 
  a6f778:	62 f2 65 40 bc f5    	vfnmadd231ps zmm6,zmm19,zmm5
  a6f77e:	62 a1 74 48 58 e2    	vaddps zmm20,zmm1,zmm18
  a6f784:	62 32 65 40 bc d0    	vfnmadd231ps zmm10,zmm19,zmm16
  a6f78a:	62 f1 0c 48 58 ef    	vaddps zmm5,zmm14,zmm7
  a6f790:	62 b2 65 40 bc ca    	vfnmadd231ps zmm1,zmm19,zmm18
  a6f796:	62 e1 6c 48 58 c5    	vaddps zmm16,zmm2,zmm5
  a6f79c:	62 b2 55 48 bc d3    	vfnmadd231ps zmm2,zmm5,zmm19
  a6f7a2:	62 b1 5c 40 58 e8    	vaddps zmm5,zmm20,zmm16
  a6f7a8:	62 e2 7d 48 18 15 22 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff605b22]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a6f7af:	5b 60 ff 
  a6f7b2:	62 51 34 48 5c cc    	vsubps zmm9,zmm9,zmm12
  a6f7b8:	62 31 34 48 59 ca    	vmulps zmm9,zmm9,zmm18
  a6f7be:	62 51 4c 48 58 e1    	vaddps zmm12,zmm6,zmm9
  a6f7c4:	62 f1 0c 48 5c ff    	vsubps zmm7,zmm14,zmm7
  a6f7ca:	62 b1 44 48 59 fa    	vmulps zmm7,zmm7,zmm18
  a6f7d0:	62 71 2c 48 58 f7    	vaddps zmm14,zmm10,zmm7
  a6f7d6:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a6f7dc:	62 c1 1c 48 5c de    	vsubps zmm19,zmm12,zmm14
  a6f7e2:	62 31 24 48 59 da    	vmulps zmm11,zmm11,zmm18
  a6f7e8:	62 d1 5c 48 5c e0    	vsubps zmm4,zmm4,zmm8
  a6f7ee:	62 51 74 48 5c eb    	vsubps zmm13,zmm1,zmm11
  a6f7f4:	62 b1 5c 48 59 e2    	vmulps zmm4,zmm4,zmm18
  a6f7fa:	62 e1 6c 48 5c d4    	vsubps zmm18,zmm2,zmm4
  a6f800:	62 51 4c 48 5c c9    	vsubps zmm9,zmm6,zmm9
  a6f806:	62 b1 14 48 5c f2    	vsubps zmm6,zmm13,zmm18
  a6f80c:	62 71 2c 48 5c d7    	vsubps zmm10,zmm10,zmm7
  a6f812:	62 c1 34 48 58 ea    	vaddps zmm21,zmm9,zmm10
  a6f818:	62 f1 24 48 58 c9    	vaddps zmm1,zmm11,zmm1
  a6f81e:	62 f1 5c 48 58 d2    	vaddps zmm2,zmm4,zmm2
  a6f824:	62 f1 74 48 58 fa    	vaddps zmm7,zmm1,zmm2
  a6f82a:	62 31 04 48 5c f9    	vsubps zmm15,zmm15,zmm17
  a6f830:	62 31 5c 40 5c c0    	vsubps zmm8,zmm20,zmm16
  a6f836:	62 d1 1c 48 58 e6    	vaddps zmm4,zmm12,zmm14
  a6f83c:	62 31 14 48 58 e2    	vaddps zmm12,zmm13,zmm18
  a6f842:	62 c1 34 48 5c c2    	vsubps zmm16,zmm9,zmm10
  a6f848:	62 71 74 48 5c d2    	vsubps zmm10,zmm1,zmm2
  a6f84e:	62 71 7c 48 28 0d 28 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff657728]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a6f855:	77 65 ff 
  a6f858:	62 f2 35 48 7f c3    	vpermt2ps zmm0,zmm9,zmm3
  a6f85e:	62 e2 35 48 7f db    	vpermt2ps zmm19,zmm9,zmm3
  a6f864:	62 e2 35 48 7f eb    	vpermt2ps zmm21,zmm9,zmm3
  a6f86a:	62 72 35 48 7f fb    	vpermt2ps zmm15,zmm9,zmm3
  a6f870:	62 f2 35 48 7f e3    	vpermt2ps zmm4,zmm9,zmm3
  a6f876:	62 e2 35 48 7f c3    	vpermt2ps zmm16,zmm9,zmm3
  a6f87c:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a6f881:	62 52 35 48 7f ed    	vpermt2ps zmm13,zmm9,zmm13
  a6f887:	62 71 7c 48 28 1d 6f 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff65766f]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a6f88e:	76 65 ff 
  a6f891:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a6f897:	62 f2 25 48 7f cc    	vpermt2ps zmm1,zmm11,zmm4
  a6f89d:	62 71 7c 48 28 35 99 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff657699]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a6f8a4:	76 65 ff 
  a6f8a7:	62 f2 0d 48 7f c4    	vpermt2ps zmm0,zmm14,zmm4
  a6f8ad:	62 b1 7c 48 28 d3    	vmovaps zmm2,zmm19
  a6f8b3:	62 b2 25 48 7f d0    	vpermt2ps zmm2,zmm11,zmm16
  a6f8b9:	62 a2 0d 48 7f d8    	vpermt2ps zmm19,zmm14,zmm16
  a6f8bf:	62 a1 7c 48 28 c5    	vmovaps zmm16,zmm21
  a6f8c5:	62 c2 25 48 7f c5    	vpermt2ps zmm16,zmm11,zmm13
  a6f8cb:	62 c2 0d 48 7f ed    	vpermt2ps zmm21,zmm14,zmm13
  a6f8d1:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a6f8d7:	62 c2 25 48 7f cd    	vpermt2ps zmm17,zmm11,zmm13
  a6f8dd:	62 52 0d 48 7f fd    	vpermt2ps zmm15,zmm14,zmm13
  a6f8e3:	62 b1 f5 48 14 e0    	vunpcklpd zmm4,zmm1,zmm16
  a6f8e9:	62 b1 f5 48 15 c8    	vunpckhpd zmm1,zmm1,zmm16
  a6f8ef:	62 a1 ed 48 14 c1    	vunpcklpd zmm16,zmm2,zmm17
  a6f8f5:	62 a1 ed 48 15 c9    	vunpckhpd zmm17,zmm2,zmm17
  a6f8fb:	62 b1 fd 48 14 d5    	vunpcklpd zmm2,zmm0,zmm21
  a6f901:	62 b1 fd 48 15 c5    	vunpckhpd zmm0,zmm0,zmm21
  a6f907:	62 c1 e5 40 14 d7    	vunpcklpd zmm18,zmm19,zmm15
  a6f90d:	62 c1 e5 40 15 df    	vunpckhpd zmm19,zmm19,zmm15
  a6f913:	62 f2 35 48 7f eb    	vpermt2ps zmm5,zmm9,zmm3
  a6f919:	62 f2 35 48 7f f3    	vpermt2ps zmm6,zmm9,zmm3
  a6f91f:	62 f2 35 48 7f fb    	vpermt2ps zmm7,zmm9,zmm3
  a6f925:	62 72 35 48 7f c3    	vpermt2ps zmm8,zmm9,zmm3
  a6f92b:	62 72 35 48 7f e3    	vpermt2ps zmm12,zmm9,zmm3
  a6f931:	62 72 35 48 7f d3    	vpermt2ps zmm10,zmm9,zmm3
  a6f937:	62 71 7c 48 28 0d bf 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6574bf]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a6f93e:	74 65 ff 
  a6f941:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a6f947:	62 c2 25 48 7f e4    	vpermt2ps zmm20,zmm11,zmm12
  a6f94d:	62 d2 0d 48 7f ec    	vpermt2ps zmm5,zmm14,zmm12
  a6f953:	62 e1 7c 48 28 ee    	vmovaps zmm21,zmm6
  a6f959:	62 c2 25 48 7f ea    	vpermt2ps zmm21,zmm11,zmm10
  a6f95f:	62 d2 0d 48 7f f2    	vpermt2ps zmm6,zmm14,zmm10
  a6f965:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a6f96b:	62 52 25 48 7f d5    	vpermt2ps zmm10,zmm11,zmm13
  a6f971:	62 d2 0d 48 7f fd    	vpermt2ps zmm7,zmm14,zmm13
  a6f977:	62 52 3d 48 77 dd    	vpermi2ps zmm11,zmm8,zmm13
  a6f97d:	62 52 0d 48 7f c5    	vpermt2ps zmm8,zmm14,zmm13
  a6f983:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a6f989:	62 b2 35 48 7f d8    	vpermt2ps zmm3,zmm9,zmm16
  a6f98f:	62 e1 7c 48 28 35 a7 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6574a7]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a6f996:	74 65 ff 
  a6f999:	62 b2 4d 40 7f e0    	vpermt2ps zmm4,zmm22,zmm16
  a6f99f:	62 71 7c 48 28 f1    	vmovaps zmm14,zmm1
  a6f9a5:	62 32 35 48 7f f1    	vpermt2ps zmm14,zmm9,zmm17
  a6f9ab:	62 b2 4d 40 7f c9    	vpermt2ps zmm1,zmm22,zmm17
  a6f9b1:	62 71 7c 48 28 fa    	vmovaps zmm15,zmm2
  a6f9b7:	62 32 35 48 7f fa    	vpermt2ps zmm15,zmm9,zmm18
  a6f9bd:	62 b2 4d 40 7f d2    	vpermt2ps zmm2,zmm22,zmm18
  a6f9c3:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a6f9c9:	62 32 35 48 7f eb    	vpermt2ps zmm13,zmm9,zmm19
  a6f9cf:	62 b2 4d 40 7f c3    	vpermt2ps zmm0,zmm22,zmm19
  a6f9d5:	62 51 dd 40 14 e2    	vunpcklpd zmm12,zmm20,zmm10
  a6f9db:	62 51 dd 40 15 d2    	vunpckhpd zmm10,zmm20,zmm10
  a6f9e1:	62 c1 d5 40 14 c3    	vunpcklpd zmm16,zmm21,zmm11
  a6f9e7:	62 c1 d5 40 15 cb    	vunpckhpd zmm17,zmm21,zmm11
  a6f9ed:	62 71 d5 48 14 df    	vunpcklpd zmm11,zmm5,zmm7
  a6f9f3:	62 f1 d5 48 15 ff    	vunpckhpd zmm7,zmm5,zmm7
  a6f9f9:	62 c1 cd 48 14 d0    	vunpcklpd zmm18,zmm6,zmm8
  a6f9ff:	62 d1 cd 48 15 f0    	vunpckhpd zmm6,zmm6,zmm8
  a6fa05:	62 d1 7c 48 28 ec    	vmovaps zmm5,zmm12
  a6fa0b:	62 b2 35 48 7f e8    	vpermt2ps zmm5,zmm9,zmm16
  a6fa11:	62 32 4d 40 7f e0    	vpermt2ps zmm12,zmm22,zmm16
  a6fa17:	62 c1 7c 48 28 c2    	vmovaps zmm16,zmm10
  a6fa1d:	62 a2 35 48 7f c1    	vpermt2ps zmm16,zmm9,zmm17
  a6fa23:	62 32 4d 40 7f d1    	vpermt2ps zmm10,zmm22,zmm17
  a6fa29:	62 51 7c 48 28 c3    	vmovaps zmm8,zmm11
  a6fa2f:	62 32 35 48 7f c2    	vpermt2ps zmm8,zmm9,zmm18
  a6fa35:	62 32 4d 40 7f da    	vpermt2ps zmm11,zmm22,zmm18
  a6fa3b:	62 72 45 48 77 ce    	vpermi2ps zmm9,zmm7,zmm6
  a6fa41:	62 f2 4d 40 7f fe    	vpermt2ps zmm7,zmm22,zmm6
  a6fa47:	62 e1 7c 48 10 4a 08 	vmovups zmm17,ZMMWORD PTR [rdx+0x200]
  a6fa4e:	62 e1 7c 48 10 52 09 	vmovups zmm18,ZMMWORD PTR [rdx+0x240]
  a6fa55:	62 b1 04 48 59 f1    	vmulps zmm6,zmm15,zmm17
  a6fa5b:	62 b2 3d 48 bc f2    	vfnmadd231ps zmm6,zmm8,zmm18
  a6fa61:	62 31 3c 48 59 c1    	vmulps zmm8,zmm8,zmm17
  a6fa67:	62 e1 7c 48 10 4a 04 	vmovups zmm17,ZMMWORD PTR [rdx+0x100]
  a6fa6e:	62 52 6d 40 b8 c7    	vfmadd231ps zmm8,zmm18,zmm15
  a6fa74:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a6fa7b:	62 31 0c 48 59 f9    	vmulps zmm15,zmm14,zmm17
  a6fa81:	62 32 7d 40 bc fa    	vfnmadd231ps zmm15,zmm16,zmm18
  a6fa87:	62 a1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm17
  a6fa8d:	62 e1 7c 48 10 4a 0c 	vmovups zmm17,ZMMWORD PTR [rdx+0x300]
  a6fa94:	62 c2 6d 40 b8 c6    	vfmadd231ps zmm16,zmm18,zmm14
  a6fa9a:	62 71 7c 48 10 72 0d 	vmovups zmm14,ZMMWORD PTR [rdx+0x340]
  a6faa1:	62 a1 14 48 59 d1    	vmulps zmm18,zmm13,zmm17
  a6faa7:	62 c2 35 48 bc d6    	vfnmadd231ps zmm18,zmm9,zmm14
  a6faad:	62 31 34 48 59 c9    	vmulps zmm9,zmm9,zmm17
  a6fab3:	62 e1 7c 48 10 4a 02 	vmovups zmm17,ZMMWORD PTR [rdx+0x80]
  a6faba:	62 52 0d 48 b8 cd    	vfmadd231ps zmm9,zmm14,zmm13
  a6fac0:	62 71 7c 48 10 6a 03 	vmovups zmm13,ZMMWORD PTR [rdx+0xc0]
  a6fac7:	62 31 5c 48 59 f1    	vmulps zmm14,zmm4,zmm17
  a6facd:	62 52 1d 48 bc f5    	vfnmadd231ps zmm14,zmm12,zmm13
  a6fad3:	62 31 1c 48 59 e1    	vmulps zmm12,zmm12,zmm17
  a6fad9:	62 e1 7c 48 10 4a 0a 	vmovups zmm17,ZMMWORD PTR [rdx+0x280]
  a6fae0:	62 72 15 48 b8 e4    	vfmadd231ps zmm12,zmm13,zmm4
  a6fae6:	62 f1 7c 48 10 62 0b 	vmovups zmm4,ZMMWORD PTR [rdx+0x2c0]
  a6faed:	62 31 6c 48 59 e9    	vmulps zmm13,zmm2,zmm17
  a6faf3:	62 72 25 48 bc ec    	vfnmadd231ps zmm13,zmm11,zmm4
  a6faf9:	62 31 24 48 59 d9    	vmulps zmm11,zmm11,zmm17
  a6faff:	62 e1 7c 48 10 4a 06 	vmovups zmm17,ZMMWORD PTR [rdx+0x180]
  a6fb06:	62 72 5d 48 b8 da    	vfmadd231ps zmm11,zmm4,zmm2
  a6fb0c:	62 f1 7c 48 10 52 07 	vmovups zmm2,ZMMWORD PTR [rdx+0x1c0]
  a6fb13:	62 b1 74 48 59 e1    	vmulps zmm4,zmm1,zmm17
  a6fb19:	62 f2 2d 48 bc e2    	vfnmadd231ps zmm4,zmm10,zmm2
  a6fb1f:	62 31 2c 48 59 d1    	vmulps zmm10,zmm10,zmm17
  a6fb25:	62 e1 7c 48 10 4a 0e 	vmovups zmm17,ZMMWORD PTR [rdx+0x380]
  a6fb2c:	62 72 6d 48 b8 d1    	vfmadd231ps zmm10,zmm2,zmm1
  a6fb32:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a6fb39:	62 b1 7c 48 59 d1    	vmulps zmm2,zmm0,zmm17
  a6fb3f:	62 f2 45 48 bc d1    	vfnmadd231ps zmm2,zmm7,zmm1
  a6fb45:	62 b1 44 48 59 f9    	vmulps zmm7,zmm7,zmm17
  a6fb4b:	62 f2 75 48 b8 f8    	vfmadd231ps zmm7,zmm1,zmm0
  a6fb51:	62 f1 64 48 58 c6    	vaddps zmm0,zmm3,zmm6
  a6fb57:	62 f1 64 48 5c ce    	vsubps zmm1,zmm3,zmm6
  a6fb5d:	62 d1 7c 40 58 d9    	vaddps zmm3,zmm16,zmm9
  a6fb63:	62 d1 7c 40 5c f1    	vsubps zmm6,zmm16,zmm9
  a6fb69:	62 51 0c 48 58 cd    	vaddps zmm9,zmm14,zmm13
  a6fb6f:	62 51 0c 48 5c ed    	vsubps zmm13,zmm14,zmm13
  a6fb75:	62 51 1c 48 58 f3    	vaddps zmm14,zmm12,zmm11
  a6fb7b:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a6fb81:	62 71 2c 48 58 e7    	vaddps zmm12,zmm10,zmm7
  a6fb87:	62 f1 2c 48 5c ff    	vsubps zmm7,zmm10,zmm7
  a6fb8d:	62 71 5c 48 58 d2    	vaddps zmm10,zmm4,zmm2
  a6fb93:	62 f1 5c 48 5c d2    	vsubps zmm2,zmm4,zmm2
  a6fb99:	62 f1 3c 48 58 e5    	vaddps zmm4,zmm8,zmm5
  a6fb9f:	62 d1 54 48 5c e8    	vsubps zmm5,zmm5,zmm8
  a6fba5:	62 31 04 48 58 c2    	vaddps zmm8,zmm15,zmm18
  a6fbab:	62 51 6c 40 5c ff    	vsubps zmm15,zmm18,zmm15
  a6fbb1:	62 c1 14 48 58 c3    	vaddps zmm16,zmm13,zmm11
  a6fbb7:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a6fbbd:	62 71 44 48 5c ea    	vsubps zmm13,zmm7,zmm2
  a6fbc3:	62 f1 6c 48 58 d7    	vaddps zmm2,zmm2,zmm7
  a6fbc9:	62 f2 7d 48 18 3d c9 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff6057c9]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a6fbd0:	57 60 ff 
  a6fbd3:	62 e1 7c 40 59 c7    	vmulps zmm16,zmm16,zmm7
  a6fbd9:	62 71 14 48 59 ef    	vmulps zmm13,zmm13,zmm7
  a6fbdf:	62 71 24 48 59 df    	vmulps zmm11,zmm11,zmm7
  a6fbe5:	62 f1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm7
  a6fbeb:	62 d1 7c 48 58 f8    	vaddps zmm7,zmm0,zmm8
  a6fbf1:	62 d1 7c 48 5c c0    	vsubps zmm0,zmm0,zmm8
  a6fbf7:	62 51 0c 48 58 c4    	vaddps zmm8,zmm14,zmm12
  a6fbfd:	62 51 0c 48 5c e4    	vsubps zmm12,zmm14,zmm12
  a6fc03:	62 71 64 48 58 f4    	vaddps zmm14,zmm3,zmm4
  a6fc09:	62 f1 5c 48 5c db    	vsubps zmm3,zmm4,zmm3
  a6fc0f:	62 d1 34 48 58 e2    	vaddps zmm4,zmm9,zmm10
  a6fc15:	62 51 2c 48 5c c9    	vsubps zmm9,zmm10,zmm9
  a6fc1b:	62 71 74 48 58 d6    	vaddps zmm10,zmm1,zmm6
  a6fc21:	62 f1 74 48 5c ce    	vsubps zmm1,zmm1,zmm6
  a6fc27:	62 f1 24 48 5c f2    	vsubps zmm6,zmm11,zmm2
  a6fc2d:	62 f1 24 48 58 d2    	vaddps zmm2,zmm11,zmm2
  a6fc33:	62 71 04 48 58 dd    	vaddps zmm11,zmm15,zmm5
  a6fc39:	62 d1 54 48 5c ef    	vsubps zmm5,zmm5,zmm15
  a6fc3f:	62 51 7c 40 58 fd    	vaddps zmm15,zmm16,zmm13
  a6fc45:	62 31 14 48 5c e8    	vsubps zmm13,zmm13,zmm16
  a6fc4b:	62 c1 2c 48 58 c7    	vaddps zmm16,zmm10,zmm15
  a6fc51:	62 51 2c 48 5c d7    	vsubps zmm10,zmm10,zmm15
  a6fc57:	62 71 24 48 58 fe    	vaddps zmm15,zmm11,zmm6
  a6fc5d:	62 f1 24 48 5c f6    	vsubps zmm6,zmm11,zmm6
  a6fc63:	62 51 7c 48 58 dc    	vaddps zmm11,zmm0,zmm12
  a6fc69:	62 d1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm12
  a6fc6f:	62 51 64 48 58 e1    	vaddps zmm12,zmm3,zmm9
  a6fc75:	62 d1 64 48 5c d9    	vsubps zmm3,zmm3,zmm9
  a6fc7b:	62 71 74 48 58 ca    	vaddps zmm9,zmm1,zmm2
  a6fc81:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a6fc87:	62 d1 54 48 58 d5    	vaddps zmm2,zmm5,zmm13
  a6fc8d:	62 d1 54 48 5c ed    	vsubps zmm5,zmm5,zmm13
  a6fc93:	62 71 44 48 5c ec    	vsubps zmm13,zmm7,zmm4
  a6fc99:	62 f1 44 48 58 e4    	vaddps zmm4,zmm7,zmm4
  a6fc9f:	62 d1 0c 48 5c f8    	vsubps zmm7,zmm14,zmm8
  a6fca5:	62 51 0c 48 58 c0    	vaddps zmm8,zmm14,zmm8
  a6fcab:	62 71 7c 48 28 35 4b 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff624b4b]        # 94800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21cb0>
  a6fcb2:	4b 62 ff 
  a6fcb5:	62 d2 0d 48 7f e0    	vpermt2ps zmm4,zmm14,zmm8
  a6fcbb:	62 c2 0d 48 7f c7    	vpermt2ps zmm16,zmm14,zmm15
  a6fcc1:	62 52 0d 48 7f dc    	vpermt2ps zmm11,zmm14,zmm12
  a6fcc7:	62 72 0d 48 7f ca    	vpermt2ps zmm9,zmm14,zmm2
  a6fccd:	62 72 0d 48 7f ef    	vpermt2ps zmm13,zmm14,zmm7
  a6fcd3:	62 72 0d 48 7f d6    	vpermt2ps zmm10,zmm14,zmm6
  a6fcd9:	62 f2 0d 48 7f c3    	vpermt2ps zmm0,zmm14,zmm3
  a6fcdf:	62 f2 0d 48 7f cd    	vpermt2ps zmm1,zmm14,zmm5
  a6fce5:	62 f3 7d 48 19 66 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm4,0x2
  a6fcec:	02 
  a6fced:	c5 fc 11 26          	vmovups YMMWORD PTR [rsi],ymm4
  a6fcf1:	62 e3 7d 48 19 46 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm16,0x2
  a6fcf8:	02 
  a6fcf9:	62 e1 7c 28 11 86 30 	vmovups YMMWORD PTR [rsi+0x30],ymm16
  a6fd00:	00 00 00 
  a6fd03:	62 73 7d 48 19 5e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm11,0x2
  a6fd0a:	02 
  a6fd0b:	c5 7c 11 5e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm11
  a6fd10:	62 73 7d 48 19 4e 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm9,0x2
  a6fd17:	02 
  a6fd18:	c5 7c 11 8e 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm9
  a6fd1f:	00 
  a6fd20:	62 73 7d 48 19 6e 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm13,0x2
  a6fd27:	02 
  a6fd28:	c5 7c 11 ae c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm13
  a6fd2f:	00 
  a6fd30:	62 73 7d 48 19 56 11 	vextractf32x4 XMMWORD PTR [rsi+0x110],zmm10,0x2
  a6fd37:	02 
  a6fd38:	c5 7c 11 96 f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm10
  a6fd3f:	00 
  a6fd40:	62 f3 7d 48 19 46 14 	vextractf32x4 XMMWORD PTR [rsi+0x140],zmm0,0x2
  a6fd47:	02 
  a6fd48:	c5 fc 11 86 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm0
  a6fd4f:	00 
  a6fd50:	62 f3 7d 48 19 4e 17 	vextractf32x4 XMMWORD PTR [rsi+0x170],zmm1,0x2
  a6fd57:	02 
  a6fd58:	c5 fc 11 8e 50 01 00 	vmovups YMMWORD PTR [rsi+0x150],ymm1
  a6fd5f:	00 
  a6fd60:	48 89 ec             	mov    rsp,rbp
  a6fd63:	5d                   	pop    rbp
  a6fd64:	c5 f8 77             	vzeroupper
  a6fd67:	c3                   	ret
