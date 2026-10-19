
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a293c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a293c0:	48 81 ec 48 01 00 00 	sub    rsp,0x148
  a293c7:	62 71 7c 48 28 05 6f 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff66726f]        # 90640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1daf0>
  a293ce:	72 66 ff 
  a293d1:	62 f1 7c 48 10 37    	vmovups zmm6,ZMMWORD PTR [rdi]
  a293d7:	62 f1 7c 48 10 67 01 	vmovups zmm4,ZMMWORD PTR [rdi+0x40]
  a293de:	62 71 7c 48 10 4f 02 	vmovups zmm9,ZMMWORD PTR [rdi+0x80]
  a293e5:	62 f1 7c 48 10 47 03 	vmovups zmm0,ZMMWORD PTR [rdi+0xc0]
  a293ec:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a293f0:	62 e1 7c 48 28 c6    	vmovaps zmm16,zmm6
  a293f6:	62 e2 3d 48 7f c5    	vpermt2ps zmm16,zmm8,zmm5
  a293fc:	62 f1 7c 48 28 1d 7a 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff66727a]        # 90680 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1db30>
  a29403:	72 66 ff 
  a29406:	62 f2 65 48 7f f5    	vpermt2ps zmm6,zmm3,zmm5
  a2940c:	62 71 7c 48 28 f4    	vmovaps zmm14,zmm4
  a29412:	62 72 3d 48 7f f5    	vpermt2ps zmm14,zmm8,zmm5
  a29418:	62 f2 65 48 7f e5    	vpermt2ps zmm4,zmm3,zmm5
  a2941e:	62 d1 7c 48 28 f9    	vmovaps zmm7,zmm9
  a29424:	62 f2 3d 48 7f fd    	vpermt2ps zmm7,zmm8,zmm5
  a2942a:	62 72 65 48 7f cd    	vpermt2ps zmm9,zmm3,zmm5
  a29430:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a29436:	62 72 3d 48 7f ed    	vpermt2ps zmm13,zmm8,zmm5
  a2943c:	62 f2 65 48 7f c5    	vpermt2ps zmm0,zmm3,zmm5
  a29442:	62 e1 7c 48 10 4f 04 	vmovups zmm17,ZMMWORD PTR [rdi+0x100]
  a29449:	62 31 7c 48 28 e1    	vmovaps zmm12,zmm17
  a2944f:	62 72 3d 48 7f e5    	vpermt2ps zmm12,zmm8,zmm5
  a29455:	62 e2 65 48 7f cd    	vpermt2ps zmm17,zmm3,zmm5
  a2945b:	62 71 7c 48 10 5f 05 	vmovups zmm11,ZMMWORD PTR [rdi+0x140]
  a29462:	62 c1 7c 48 28 eb    	vmovaps zmm21,zmm11
  a29468:	62 e2 3d 48 7f ed    	vpermt2ps zmm21,zmm8,zmm5
  a2946e:	62 72 65 48 7f dd    	vpermt2ps zmm11,zmm3,zmm5
  a29474:	62 e1 7c 48 10 77 06 	vmovups zmm22,ZMMWORD PTR [rdi+0x180]
  a2947b:	62 31 7c 48 28 d6    	vmovaps zmm10,zmm22
  a29481:	62 72 3d 48 7f d5    	vpermt2ps zmm10,zmm8,zmm5
  a29487:	62 e2 65 48 7f f5    	vpermt2ps zmm22,zmm3,zmm5
  a2948d:	62 e1 7c 48 10 5f 07 	vmovups zmm19,ZMMWORD PTR [rdi+0x1c0]
  a29494:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a2949a:	62 e2 3d 48 7f e5    	vpermt2ps zmm20,zmm8,zmm5
  a294a0:	62 e2 65 48 7f dd    	vpermt2ps zmm19,zmm3,zmm5
  a294a6:	62 e1 7c 48 10 7f 08 	vmovups zmm23,ZMMWORD PTR [rdi+0x200]
  a294ad:	62 21 7c 48 28 c7    	vmovaps zmm24,zmm23
  a294b3:	62 62 3d 48 7f c5    	vpermt2ps zmm24,zmm8,zmm5
  a294b9:	62 e2 65 48 7f fd    	vpermt2ps zmm23,zmm3,zmm5
  a294bf:	62 71 7c 48 10 7f 09 	vmovups zmm15,ZMMWORD PTR [rdi+0x240]
  a294c6:	62 41 7c 48 28 cf    	vmovaps zmm25,zmm15
  a294cc:	62 62 3d 48 7f cd    	vpermt2ps zmm25,zmm8,zmm5
  a294d2:	62 72 65 48 7f fd    	vpermt2ps zmm15,zmm3,zmm5
  a294d8:	62 61 7c 48 10 57 0a 	vmovups zmm26,ZMMWORD PTR [rdi+0x280]
  a294df:	62 01 7c 48 28 da    	vmovaps zmm27,zmm26
  a294e5:	62 62 3d 48 7f dd    	vpermt2ps zmm27,zmm8,zmm5
  a294eb:	62 62 65 48 7f d5    	vpermt2ps zmm26,zmm3,zmm5
  a294f1:	62 61 7c 48 10 67 0b 	vmovups zmm28,ZMMWORD PTR [rdi+0x2c0]
  a294f8:	62 72 1d 40 77 c5    	vpermi2ps zmm8,zmm28,zmm5
  a294fe:	62 62 65 48 7f e5    	vpermt2ps zmm28,zmm3,zmm5
  a29504:	62 b1 4c 48 58 ce    	vaddps zmm1,zmm6,zmm22
  a2950a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a29511:	fe 
  a29512:	62 c1 7c 48 58 d7    	vaddps zmm18,zmm0,zmm15
  a29518:	62 b1 74 48 58 ca    	vaddps zmm1,zmm1,zmm18
  a2951e:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a29525:	62 01 74 40 58 ea    	vaddps zmm29,zmm17,zmm26
  a2952b:	62 61 64 40 58 f4    	vaddps zmm30,zmm19,zmm4
  a29531:	62 91 14 40 58 de    	vaddps zmm3,zmm29,zmm30
  a29537:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a2953e:	01 
  a2953f:	62 41 44 40 58 f9    	vaddps zmm31,zmm23,zmm9
  a29545:	62 81 74 40 5c ca    	vsubps zmm17,zmm17,zmm26
  a2954b:	62 41 5c 40 58 d6    	vaddps zmm26,zmm20,zmm14
  a29551:	62 51 5c 40 5c f6    	vsubps zmm14,zmm20,zmm14
  a29557:	62 d1 1c 40 58 cb    	vaddps zmm1,zmm28,zmm11
  a2955d:	62 c1 44 40 5c e1    	vsubps zmm20,zmm23,zmm9
  a29563:	62 a1 3c 48 58 fd    	vaddps zmm23,zmm8,zmm21
  a29569:	62 31 3c 48 5c c5    	vsubps zmm8,zmm8,zmm21
  a2956f:	62 c1 7c 40 58 ea    	vaddps zmm21,zmm16,zmm10
  a29575:	62 31 4c 48 5c ce    	vsubps zmm9,zmm6,zmm22
  a2957b:	62 91 14 48 58 d1    	vaddps zmm2,zmm13,zmm25
  a29581:	62 01 14 48 5c c9    	vsubps zmm25,zmm13,zmm25
  a29587:	62 81 1c 48 58 f3    	vaddps zmm22,zmm12,zmm27
  a2958d:	62 01 1c 48 5c db    	vsubps zmm27,zmm12,zmm27
  a29593:	62 f1 3c 40 58 f7    	vaddps zmm6,zmm24,zmm7
  a29599:	62 b1 5c 48 5c e3    	vsubps zmm4,zmm4,zmm19
  a2959f:	62 11 5c 48 58 e3    	vaddps zmm12,zmm4,zmm27
  a295a5:	62 f1 3c 40 5c ff    	vsubps zmm7,zmm24,zmm7
  a295ab:	62 01 24 48 5c c4    	vsubps zmm24,zmm11,zmm28
  a295b1:	62 71 3c 40 58 df    	vaddps zmm11,zmm24,zmm7
  a295b7:	62 51 1c 48 5c eb    	vsubps zmm13,zmm12,zmm11
  a295bd:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm13
  a295c4:	04 
  a295c5:	62 51 1c 48 58 db    	vaddps zmm11,zmm12,zmm11
  a295cb:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm11
  a295d2:	03 
  a295d3:	62 51 74 40 58 e6    	vaddps zmm12,zmm17,zmm14
  a295d9:	62 51 7c 40 5c ea    	vsubps zmm13,zmm16,zmm10
  a295df:	62 51 5c 40 58 d0    	vaddps zmm10,zmm20,zmm8
  a295e5:	62 71 04 48 5c f8    	vsubps zmm15,zmm15,zmm0
  a295eb:	62 41 1c 48 58 e2    	vaddps zmm28,zmm12,zmm10
  a295f1:	62 d1 1c 48 5c c2    	vsubps zmm0,zmm12,zmm10
  a295f7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a295fe:	02 
  a295ff:	62 71 04 40 58 e1    	vaddps zmm12,zmm31,zmm1
  a29605:	62 81 14 40 5c de    	vsubps zmm19,zmm29,zmm30
  a2960b:	62 51 64 48 58 d4    	vaddps zmm10,zmm3,zmm12
  a29611:	62 f1 04 40 5c c9    	vsubps zmm1,zmm31,zmm1
  a29617:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a2961e:	62 d1 7c 48 58 da    	vaddps zmm3,zmm0,zmm10
  a29624:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp-0x80]
  a2962b:	fe 
  a2962c:	62 21 24 48 5c ea    	vsubps zmm29,zmm11,zmm18
  a29632:	62 01 4c 40 58 f2    	vaddps zmm30,zmm22,zmm26
  a29638:	62 81 4c 40 5c d2    	vsubps zmm18,zmm22,zmm26
  a2963e:	62 21 4c 48 58 d7    	vaddps zmm26,zmm6,zmm23
  a29644:	62 b1 4c 48 5c f7    	vsubps zmm6,zmm6,zmm23
  a2964a:	62 71 6c 40 5c de    	vsubps zmm11,zmm18,zmm6
  a29650:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm11
  a29657:	fe 
  a29658:	62 e1 6c 40 58 f6    	vaddps zmm22,zmm18,zmm6
  a2965e:	62 61 54 40 58 fa    	vaddps zmm31,zmm21,zmm2
  a29664:	62 e1 54 40 5c fa    	vsubps zmm23,zmm21,zmm2
  a2966a:	62 f1 64 40 58 f1    	vaddps zmm6,zmm19,zmm1
  a29670:	62 f1 64 40 5c c9    	vsubps zmm1,zmm19,zmm1
  a29676:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a2967d:	ff 
  a2967e:	62 11 34 48 58 d9    	vaddps zmm11,zmm9,zmm25
  a29684:	62 11 34 48 5c c9    	vsubps zmm9,zmm9,zmm25
  a2968a:	62 81 0c 40 58 da    	vaddps zmm19,zmm30,zmm26
  a29690:	62 c1 74 40 5c ce    	vsubps zmm17,zmm17,zmm14
  a29696:	62 a1 04 40 58 eb    	vaddps zmm21,zmm31,zmm19
  a2969c:	62 c1 5c 40 5c e0    	vsubps zmm20,zmm20,zmm8
  a296a2:	62 c1 04 48 58 c5    	vaddps zmm16,zmm15,zmm13
  a296a8:	62 51 14 48 5c ef    	vsubps zmm13,zmm13,zmm15
  a296ae:	62 e2 7d 48 18 15 a8 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff64bda8]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a296b5:	bd 64 ff 
  a296b8:	62 f1 24 40 5c e4    	vsubps zmm4,zmm27,zmm4
  a296be:	62 31 7c 48 28 fa    	vmovaps zmm15,zmm18
  a296c4:	62 01 44 48 5c c0    	vsubps zmm24,zmm7,zmm24
  a296ca:	62 21 7c 48 28 ca    	vmovaps zmm25,zmm18
  a296d0:	62 72 6d 40 ac d0    	vfnmadd213ps zmm10,zmm18,zmm0
  a296d6:	62 21 74 40 58 dc    	vaddps zmm27,zmm17,zmm20
  a296dc:	62 82 6d 40 ac df    	vfnmadd213ps zmm19,zmm18,zmm31
  a296e2:	62 11 34 48 58 c3    	vaddps zmm8,zmm9,zmm27
  a296e8:	62 42 6d 40 ac d9    	vfnmadd213ps zmm27,zmm18,zmm9
  a296ee:	62 21 7c 48 28 fa    	vmovaps zmm31,zmm18
  a296f4:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a296fa:	62 91 5c 48 58 f8    	vaddps zmm7,zmm4,zmm24
  a29700:	62 c2 45 48 ac d5    	vfnmadd213ps zmm18,zmm7,zmm13
  a29706:	62 f1 14 48 58 ff    	vaddps zmm7,zmm13,zmm7
  a2970c:	62 01 0c 40 5c d2    	vsubps zmm26,zmm30,zmm26
  a29712:	62 52 1d 40 ac fb    	vfnmadd213ps zmm15,zmm28,zmm11
  a29718:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a2971f:	01 
  a29720:	62 41 74 48 5c f4    	vsubps zmm30,zmm1,zmm12
  a29726:	62 72 7d 48 18 2d a4 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff64bba4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a2972d:	bb 64 ff 
  a29730:	62 71 14 48 59 4c 24 	vmulps zmm9,zmm13,ZMMWORD PTR [rsp+0x100]
  a29737:	04 
  a29738:	62 51 34 48 58 f7    	vaddps zmm14,zmm9,zmm15
  a2973e:	62 d1 04 48 5c d1    	vsubps zmm2,zmm15,zmm9
  a29744:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a2974b:	03 
  a2974c:	62 22 75 48 ac c8    	vfnmadd213ps zmm25,zmm1,zmm16
  a29752:	62 71 14 48 59 64 24 	vmulps zmm12,zmm13,ZMMWORD PTR [rsp+0x80]
  a29759:	02 
  a2975a:	62 51 34 40 5c cc    	vsubps zmm9,zmm25,zmm12
  a29760:	62 51 34 40 58 e4    	vaddps zmm12,zmm25,zmm12
  a29766:	62 02 4d 48 ac fd    	vfnmadd213ps zmm31,zmm6,zmm29
  a2976c:	62 f1 14 40 58 f6    	vaddps zmm6,zmm29,zmm6
  a29772:	62 b2 4d 40 ac c7    	vfnmadd213ps zmm0,zmm22,zmm23
  a29778:	62 21 44 40 58 ee    	vaddps zmm29,zmm23,zmm22
  a2977e:	62 91 5c 48 5c e0    	vsubps zmm4,zmm4,zmm24
  a29784:	62 31 74 40 5c fc    	vsubps zmm15,zmm17,zmm20
  a2978a:	62 e1 14 48 59 74 24 	vmulps zmm22,zmm13,ZMMWORD PTR [rsp-0x80]
  a29791:	fe 
  a29792:	62 e1 14 48 59 7c 24 	vmulps zmm23,zmm13,ZMMWORD PTR [rsp-0x40]
  a29799:	ff 
  a2979a:	62 c1 2c 40 59 cd    	vmulps zmm17,zmm26,zmm13
  a297a0:	62 c1 0c 40 59 e5    	vmulps zmm20,zmm30,zmm13
  a297a6:	62 d1 5c 48 59 e5    	vmulps zmm4,zmm4,zmm13
  a297ac:	62 51 04 48 59 ed    	vmulps zmm13,zmm15,zmm13
  a297b2:	62 21 2c 48 58 c1    	vaddps zmm24,zmm10,zmm17
  a297b8:	62 31 2c 48 5c d1    	vsubps zmm10,zmm10,zmm17
  a297be:	62 a1 64 40 5c cc    	vsubps zmm17,zmm19,zmm20
  a297c4:	62 a1 5c 40 58 e3    	vaddps zmm20,zmm20,zmm19
  a297ca:	62 11 24 48 58 dc    	vaddps zmm11,zmm11,zmm28
  a297d0:	62 21 04 40 5c d6    	vsubps zmm26,zmm31,zmm22
  a297d6:	62 61 7c 40 58 f1    	vaddps zmm30,zmm16,zmm1
  a297dc:	62 71 44 40 58 f8    	vaddps zmm15,zmm23,zmm0
  a297e2:	62 a1 04 40 58 f6    	vaddps zmm22,zmm31,zmm22
  a297e8:	62 01 5c 48 58 e3    	vaddps zmm28,zmm4,zmm27
  a297ee:	62 a1 7c 48 5c ff    	vsubps zmm23,zmm0,zmm23
  a297f4:	62 c1 6c 40 5c c5    	vsubps zmm16,zmm18,zmm13
  a297fa:	62 f1 24 40 5c c4    	vsubps zmm0,zmm27,zmm4
  a29800:	62 41 6c 40 58 cd    	vaddps zmm25,zmm18,zmm13
  a29806:	62 e1 7c 48 28 1d 70 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff69d770]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a2980d:	d7 69 ff 
  a29810:	62 d2 65 40 7f da    	vpermt2ps zmm3,zmm19,zmm10
  a29816:	62 52 65 40 7f f3    	vpermt2ps zmm14,zmm19,zmm11
  a2981c:	62 22 65 40 7f d6    	vpermt2ps zmm26,zmm19,zmm22
  a29822:	62 72 65 40 7f c0    	vpermt2ps zmm8,zmm19,zmm0
  a29828:	62 62 65 40 7f c5    	vpermt2ps zmm24,zmm19,zmm5
  a2982e:	62 f2 65 40 7f d5    	vpermt2ps zmm2,zmm19,zmm5
  a29834:	62 f2 65 40 7f f5    	vpermt2ps zmm6,zmm19,zmm5
  a2983a:	62 62 65 40 7f e5    	vpermt2ps zmm28,zmm19,zmm5
  a29840:	62 e1 7c 48 28 15 b6 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff69d6b6]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a29847:	d6 69 ff 
  a2984a:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a29850:	62 92 6d 40 7f c0    	vpermt2ps zmm0,zmm18,zmm24
  a29856:	62 e1 7c 48 28 35 e0 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff69d6e0]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a2985d:	d6 69 ff 
  a29860:	62 92 4d 40 7f d8    	vpermt2ps zmm3,zmm22,zmm24
  a29866:	62 51 7c 48 28 d6    	vmovaps zmm10,zmm14
  a2986c:	62 72 6d 40 7f d2    	vpermt2ps zmm10,zmm18,zmm2
  a29872:	62 72 4d 40 7f f2    	vpermt2ps zmm14,zmm22,zmm2
  a29878:	62 91 7c 48 28 ca    	vmovaps zmm1,zmm26
  a2987e:	62 f2 6d 40 7f ce    	vpermt2ps zmm1,zmm18,zmm6
  a29884:	62 62 4d 40 7f d6    	vpermt2ps zmm26,zmm22,zmm6
  a2988a:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a29890:	62 12 6d 40 7f dc    	vpermt2ps zmm11,zmm18,zmm28
  a29896:	62 12 4d 40 7f c4    	vpermt2ps zmm8,zmm22,zmm28
  a2989c:	62 f1 fd 48 14 f1    	vunpcklpd zmm6,zmm0,zmm1
  a298a2:	62 f1 fd 48 15 e1    	vunpckhpd zmm4,zmm0,zmm1
  a298a8:	62 d1 ad 48 14 c3    	vunpcklpd zmm0,zmm10,zmm11
  a298ae:	62 d1 ad 48 15 cb    	vunpckhpd zmm1,zmm10,zmm11
  a298b4:	62 01 e5 48 14 da    	vunpcklpd zmm27,zmm3,zmm26
  a298ba:	62 91 e5 48 15 da    	vunpckhpd zmm3,zmm3,zmm26
  a298c0:	62 51 8d 48 14 d8    	vunpcklpd zmm11,zmm14,zmm8
  a298c6:	62 51 8d 48 15 e8    	vunpckhpd zmm13,zmm14,zmm8
  a298cc:	62 71 7c 48 28 05 2a 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff69d52a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a298d3:	d5 69 ff 
  a298d6:	62 61 7c 48 28 d6    	vmovaps zmm26,zmm6
  a298dc:	62 62 3d 48 7f d0    	vpermt2ps zmm26,zmm8,zmm0
  a298e2:	62 61 7c 48 28 05 54 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff69d554]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a298e9:	d5 69 ff 
  a298ec:	62 f2 3d 40 7f f0    	vpermt2ps zmm6,zmm24,zmm0
  a298f2:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a298f8:	62 72 3d 48 7f d1    	vpermt2ps zmm10,zmm8,zmm1
  a298fe:	62 f2 3d 40 7f e1    	vpermt2ps zmm4,zmm24,zmm1
  a29904:	62 11 7c 48 28 f3    	vmovaps zmm14,zmm27
  a2990a:	62 52 3d 48 7f f3    	vpermt2ps zmm14,zmm8,zmm11
  a29910:	62 42 3d 40 7f db    	vpermt2ps zmm27,zmm24,zmm11
  a29916:	62 71 7c 48 28 db    	vmovaps zmm11,zmm3
  a2991c:	62 52 3d 48 7f dd    	vpermt2ps zmm11,zmm8,zmm13
  a29922:	62 d2 3d 40 7f dd    	vpermt2ps zmm3,zmm24,zmm13
  a29928:	62 a2 65 40 7f ec    	vpermt2ps zmm21,zmm19,zmm20
  a2992e:	62 12 65 40 7f ce    	vpermt2ps zmm9,zmm19,zmm30
  a29934:	62 32 65 40 7f ff    	vpermt2ps zmm15,zmm19,zmm23
  a2993a:	62 92 65 40 7f f9    	vpermt2ps zmm7,zmm19,zmm25
  a29940:	62 e2 65 40 7f cd    	vpermt2ps zmm17,zmm19,zmm5
  a29946:	62 72 65 40 7f e5    	vpermt2ps zmm12,zmm19,zmm5
  a2994c:	62 62 65 40 7f ed    	vpermt2ps zmm29,zmm19,zmm5
  a29952:	62 e2 65 40 7f c5    	vpermt2ps zmm16,zmm19,zmm5
  a29958:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a2995e:	62 b2 6d 40 7f c1    	vpermt2ps zmm0,zmm18,zmm17
  a29964:	62 a2 4d 40 7f e9    	vpermt2ps zmm21,zmm22,zmm17
  a2996a:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a29970:	62 d2 6d 40 7f cc    	vpermt2ps zmm1,zmm18,zmm12
  a29976:	62 52 4d 40 7f cc    	vpermt2ps zmm9,zmm22,zmm12
  a2997c:	62 d1 7c 48 28 d7    	vmovaps zmm2,zmm15
  a29982:	62 92 6d 40 7f d5    	vpermt2ps zmm2,zmm18,zmm29
  a29988:	62 12 4d 40 7f fd    	vpermt2ps zmm15,zmm22,zmm29
  a2998e:	62 a2 45 48 77 d0    	vpermi2ps zmm18,zmm7,zmm16
  a29994:	62 b2 4d 40 7f f8    	vpermt2ps zmm7,zmm22,zmm16
  a2999a:	62 e1 fd 48 14 ca    	vunpcklpd zmm17,zmm0,zmm2
  a299a0:	62 71 fd 48 15 ea    	vunpckhpd zmm13,zmm0,zmm2
  a299a6:	62 b1 f5 48 14 d2    	vunpcklpd zmm2,zmm1,zmm18
  a299ac:	62 b1 f5 48 15 ca    	vunpckhpd zmm1,zmm1,zmm18
  a299b2:	62 c1 d5 40 14 c7    	vunpcklpd zmm16,zmm21,zmm15
  a299b8:	62 51 d5 40 15 e7    	vunpckhpd zmm12,zmm21,zmm15
  a299be:	62 f1 b5 48 14 ef    	vunpcklpd zmm5,zmm9,zmm7
  a299c4:	62 f1 b5 48 15 ff    	vunpckhpd zmm7,zmm9,zmm7
  a299ca:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a299d0:	62 f2 3d 48 7f c2    	vpermt2ps zmm0,zmm8,zmm2
  a299d6:	62 e2 3d 40 7f ca    	vpermt2ps zmm17,zmm24,zmm2
  a299dc:	62 d1 7c 48 28 d5    	vmovaps zmm2,zmm13
  a299e2:	62 f2 3d 48 7f d1    	vpermt2ps zmm2,zmm8,zmm1
  a299e8:	62 72 3d 40 7f e9    	vpermt2ps zmm13,zmm24,zmm1
  a299ee:	62 31 7c 48 28 f8    	vmovaps zmm15,zmm16
  a299f4:	62 72 3d 48 7f fd    	vpermt2ps zmm15,zmm8,zmm5
  a299fa:	62 e2 3d 40 7f c5    	vpermt2ps zmm16,zmm24,zmm5
  a29a00:	62 72 1d 48 77 c7    	vpermi2ps zmm8,zmm12,zmm7
  a29a06:	62 72 3d 40 7f e7    	vpermt2ps zmm12,zmm24,zmm7
  a29a0c:	62 e1 7c 48 10 5a 02 	vmovups zmm19,ZMMWORD PTR [rdx+0x80]
  a29a13:	62 f1 7c 48 10 4a 03 	vmovups zmm1,ZMMWORD PTR [rdx+0xc0]
  a29a1a:	62 f1 7c 48 10 6a 04 	vmovups zmm5,ZMMWORD PTR [rdx+0x100]
  a29a21:	62 e1 7c 48 10 62 05 	vmovups zmm20,ZMMWORD PTR [rdx+0x140]
  a29a28:	62 e1 7c 48 10 52 06 	vmovups zmm18,ZMMWORD PTR [rdx+0x180]
  a29a2f:	62 71 7c 48 10 4a 07 	vmovups zmm9,ZMMWORD PTR [rdx+0x1c0]
  a29a36:	62 e1 7c 48 10 6a 08 	vmovups zmm21,ZMMWORD PTR [rdx+0x200]
  a29a3d:	62 e1 7c 48 10 72 09 	vmovups zmm22,ZMMWORD PTR [rdx+0x240]
  a29a44:	62 b1 0c 48 59 fd    	vmulps zmm7,zmm14,zmm21
  a29a4a:	62 b2 05 48 bc fe    	vfnmadd231ps zmm7,zmm15,zmm22
  a29a50:	62 31 04 48 59 fd    	vmulps zmm15,zmm15,zmm21
  a29a56:	62 e1 7c 48 10 6a 0a 	vmovups zmm21,ZMMWORD PTR [rdx+0x280]
  a29a5d:	62 52 4d 40 b8 fe    	vfmadd231ps zmm15,zmm22,zmm14
  a29a63:	62 e1 7c 48 10 72 0b 	vmovups zmm22,ZMMWORD PTR [rdx+0x2c0]
  a29a6a:	62 71 2c 48 59 f5    	vmulps zmm14,zmm10,zmm5
  a29a70:	62 32 6d 48 bc f4    	vfnmadd231ps zmm14,zmm2,zmm20
  a29a76:	62 f1 6c 48 59 d5    	vmulps zmm2,zmm2,zmm5
  a29a7c:	62 f1 7c 48 10 6a 0c 	vmovups zmm5,ZMMWORD PTR [rdx+0x300]
  a29a83:	62 d2 5d 40 b8 d2    	vfmadd231ps zmm2,zmm20,zmm10
  a29a89:	62 e1 7c 48 10 62 0d 	vmovups zmm20,ZMMWORD PTR [rdx+0x340]
  a29a90:	62 71 24 48 59 d5    	vmulps zmm10,zmm11,zmm5
  a29a96:	62 32 3d 48 bc d4    	vfnmadd231ps zmm10,zmm8,zmm20
  a29a9c:	62 f1 3c 48 59 ed    	vmulps zmm5,zmm8,zmm5
  a29aa2:	62 e1 7c 48 10 7a 0e 	vmovups zmm23,ZMMWORD PTR [rdx+0x380]
  a29aa9:	62 d2 5d 40 b8 eb    	vfmadd231ps zmm5,zmm20,zmm11
  a29aaf:	62 e1 7c 48 10 62 0f 	vmovups zmm20,ZMMWORD PTR [rdx+0x3c0]
  a29ab6:	62 21 4c 48 59 c3    	vmulps zmm24,zmm6,zmm19
  a29abc:	62 62 75 40 bc c1    	vfnmadd231ps zmm24,zmm17,zmm1
  a29ac2:	62 a1 74 40 59 db    	vmulps zmm19,zmm17,zmm19
  a29ac8:	62 71 2c 40 58 c7    	vaddps zmm8,zmm26,zmm7
  a29ace:	62 e2 75 48 b8 de    	vfmadd231ps zmm19,zmm1,zmm6
  a29ad4:	62 c1 0c 48 58 ca    	vaddps zmm17,zmm14,zmm10
  a29ada:	62 b1 24 40 59 f5    	vmulps zmm6,zmm27,zmm21
  a29ae0:	62 b2 7d 40 bc f6    	vfnmadd231ps zmm6,zmm16,zmm22
  a29ae6:	62 a1 7c 40 59 c5    	vmulps zmm16,zmm16,zmm21
  a29aec:	62 b1 3c 48 58 c9    	vaddps zmm1,zmm8,zmm17
  a29af2:	62 82 4d 40 b8 c3    	vfmadd231ps zmm16,zmm22,zmm27
  a29af8:	62 71 3c 40 58 de    	vaddps zmm11,zmm24,zmm6
  a29afe:	62 a1 5c 48 59 ea    	vmulps zmm21,zmm4,zmm18
  a29b04:	62 c2 15 48 bc e9    	vfnmadd231ps zmm21,zmm13,zmm9
  a29b0a:	62 31 14 48 59 ea    	vmulps zmm13,zmm13,zmm18
  a29b10:	62 a1 64 48 59 d7    	vmulps zmm18,zmm3,zmm23
  a29b16:	62 a2 1d 48 bc d4    	vfnmadd231ps zmm18,zmm12,zmm20
  a29b1c:	62 72 35 48 b8 ec    	vfmadd231ps zmm13,zmm9,zmm4
  a29b22:	62 31 54 40 58 ca    	vaddps zmm9,zmm21,zmm18
  a29b28:	62 d1 24 48 58 e1    	vaddps zmm4,zmm11,zmm9
  a29b2e:	62 31 1c 48 59 e7    	vmulps zmm12,zmm12,zmm23
  a29b34:	62 e1 04 48 58 f0    	vaddps zmm22,zmm15,zmm0
  a29b3a:	62 72 5d 40 b8 e3    	vfmadd231ps zmm12,zmm20,zmm3
  a29b40:	62 e1 6c 48 58 e5    	vaddps zmm20,zmm2,zmm5
  a29b46:	62 b1 5c 40 58 de    	vaddps zmm3,zmm20,zmm22
  a29b4c:	62 f1 2c 40 5c ff    	vsubps zmm7,zmm26,zmm7
  a29b52:	62 a1 64 40 58 f8    	vaddps zmm23,zmm19,zmm16
  a29b58:	62 61 6c 48 5c cd    	vsubps zmm25,zmm2,zmm5
  a29b5e:	62 d1 14 48 58 d4    	vaddps zmm2,zmm13,zmm12
  a29b64:	62 f1 3c 40 5c ee    	vsubps zmm5,zmm24,zmm6
  a29b6a:	62 f1 44 40 58 f2    	vaddps zmm6,zmm23,zmm2
  a29b70:	62 a1 64 40 5c c0    	vsubps zmm16,zmm19,zmm16
  a29b76:	62 81 44 48 58 d9    	vaddps zmm19,zmm7,zmm25
  a29b7c:	62 51 14 48 5c e4    	vsubps zmm12,zmm13,zmm12
  a29b82:	62 31 54 48 58 e8    	vaddps zmm13,zmm5,zmm16
  a29b88:	62 a1 54 40 5c d2    	vsubps zmm18,zmm21,zmm18
  a29b8e:	62 e2 7d 48 18 2d 04 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff64b804]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a29b95:	b8 64 ff 
  a29b98:	62 31 14 48 59 ed    	vmulps zmm13,zmm13,zmm21
  a29b9e:	62 51 7c 48 5c ff    	vsubps zmm15,zmm0,zmm15
  a29ba4:	62 b1 1c 48 5c c2    	vsubps zmm0,zmm12,zmm18
  a29baa:	62 21 7c 48 59 c5    	vmulps zmm24,zmm0,zmm21
  a29bb0:	62 51 2c 48 5c f6    	vsubps zmm14,zmm10,zmm14
  a29bb6:	62 01 14 48 58 d0    	vaddps zmm26,zmm13,zmm24
  a29bbc:	62 f1 7c 40 5c ed    	vsubps zmm5,zmm16,zmm5
  a29bc2:	62 11 64 40 58 d2    	vaddps zmm10,zmm19,zmm26
  a29bc8:	62 51 6c 40 58 e4    	vaddps zmm12,zmm18,zmm12
  a29bce:	c5 fc 28 05 6a d0 64 	vmovaps ymm0,YMMWORD PTR [rip+0xffffffffff64d06a]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a29bd5:	ff 
  a29bd6:	62 a1 54 48 59 c5    	vmulps zmm16,zmm5,zmm21
  a29bdc:	62 31 1c 48 59 e5    	vmulps zmm12,zmm12,zmm21
  a29be2:	62 c1 0c 48 58 d7    	vaddps zmm18,zmm14,zmm15
  a29be8:	62 a1 3c 48 5c c9    	vsubps zmm17,zmm8,zmm17
  a29bee:	62 c1 7c 40 5c ec    	vsubps zmm21,zmm16,zmm12
  a29bf4:	62 e1 44 40 5c fa    	vsubps zmm23,zmm23,zmm2
  a29bfa:	62 b1 6c 40 58 d5    	vaddps zmm2,zmm18,zmm21
  a29c00:	62 a1 4c 40 5c e4    	vsubps zmm20,zmm22,zmm20
  a29c06:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a29c0c:	62 d2 7d 48 7f ea    	vpermt2ps zmm5,zmm0,zmm10
  a29c12:	62 c1 34 48 5c f3    	vsubps zmm22,zmm9,zmm11
  a29c18:	62 21 74 40 58 df    	vaddps zmm27,zmm17,zmm23
  a29c1e:	62 01 44 48 5c c9    	vsubps zmm25,zmm7,zmm25
  a29c24:	62 b1 5c 40 58 fe    	vaddps zmm7,zmm20,zmm22
  a29c2a:	62 c1 7c 40 58 c4    	vaddps zmm16,zmm16,zmm12
  a29c30:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a29c36:	62 12 7d 48 7f c3    	vpermt2ps zmm8,zmm0,zmm27
  a29c3c:	62 41 04 48 5c e6    	vsubps zmm28,zmm15,zmm14
  a29c42:	62 21 34 40 58 e8    	vaddps zmm29,zmm25,zmm16
  a29c48:	62 41 3c 40 5c c5    	vsubps zmm24,zmm24,zmm13
  a29c4e:	62 11 1c 40 58 c8    	vaddps zmm9,zmm28,zmm24
  a29c54:	62 81 64 40 5c da    	vsubps zmm19,zmm19,zmm26
  a29c5a:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a29c60:	62 12 7d 48 7f e5    	vpermt2ps zmm12,zmm0,zmm29
  a29c66:	62 31 6c 40 5c dd    	vsubps zmm11,zmm18,zmm21
  a29c6c:	62 e1 74 48 5c d4    	vsubps zmm18,zmm1,zmm4
  a29c72:	62 a1 74 40 5c cf    	vsubps zmm17,zmm17,zmm23
  a29c78:	62 71 64 48 5c f6    	vsubps zmm14,zmm3,zmm6
  a29c7e:	62 31 5c 40 5c ee    	vsubps zmm13,zmm20,zmm22
  a29c84:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a29c8a:	62 32 7d 48 7f fa    	vpermt2ps zmm15,zmm0,zmm18
  a29c90:	62 a1 34 40 5c c0    	vsubps zmm16,zmm25,zmm16
  a29c96:	62 c1 7c 48 28 e3    	vmovaps zmm20,zmm11
  a29c9c:	62 a2 7d 48 7f e3    	vpermt2ps zmm20,zmm0,zmm19
  a29ca2:	62 81 1c 40 5c e8    	vsubps zmm21,zmm28,zmm24
  a29ca8:	62 c1 7c 48 28 f5    	vmovaps zmm22,zmm13
  a29cae:	62 a2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm17
  a29cb4:	62 f1 64 48 58 de    	vaddps zmm3,zmm3,zmm6
  a29cba:	62 b1 7c 48 28 f5    	vmovaps zmm6,zmm21
  a29cc0:	62 b2 7d 48 7f f0    	vpermt2ps zmm6,zmm0,zmm16
  a29cc6:	62 f1 74 48 58 cc    	vaddps zmm1,zmm1,zmm4
  a29ccc:	62 f2 65 48 77 c1    	vpermi2ps zmm0,zmm3,zmm1
  a29cd2:	62 f1 7c 48 28 25 e4 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6669e4]        # 906c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1db70>
  a29cd9:	69 66 ff 
  a29cdc:	62 f2 5d 48 7f d9    	vpermt2ps zmm3,zmm4,zmm1
  a29ce2:	62 d2 5d 48 7f d2    	vpermt2ps zmm2,zmm4,zmm10
  a29ce8:	62 92 5d 48 7f fb    	vpermt2ps zmm7,zmm4,zmm27
  a29cee:	62 12 5d 48 7f cd    	vpermt2ps zmm9,zmm4,zmm29
  a29cf4:	62 32 5d 48 7f f2    	vpermt2ps zmm14,zmm4,zmm18
  a29cfa:	62 32 5d 48 7f db    	vpermt2ps zmm11,zmm4,zmm19
  a29d00:	62 32 5d 48 7f e9    	vpermt2ps zmm13,zmm4,zmm17
  a29d06:	62 a2 5d 48 7f e8    	vpermt2ps zmm21,zmm4,zmm16
  a29d0c:	62 f1 7c 48 11 1e    	vmovups ZMMWORD PTR [rsi],zmm3
  a29d12:	c5 fc 11 46 40       	vmovups YMMWORD PTR [rsi+0x40],ymm0
  a29d17:	62 f1 7c 48 11 96 60 	vmovups ZMMWORD PTR [rsi+0x60],zmm2
  a29d1e:	00 00 00 
  a29d21:	c5 fc 11 ae a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm5
  a29d28:	00 
  a29d29:	62 f1 7c 48 11 7e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm7
  a29d30:	c5 7c 11 86 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm8
  a29d37:	00 
  a29d38:	62 71 7c 48 11 8e 20 	vmovups ZMMWORD PTR [rsi+0x120],zmm9
  a29d3f:	01 00 00 
  a29d42:	c5 7c 11 a6 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm12
  a29d49:	00 
  a29d4a:	62 71 7c 48 11 76 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm14
  a29d51:	c5 7c 11 be c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm15
  a29d58:	00 
  a29d59:	62 71 7c 48 11 9e e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm11
  a29d60:	01 00 00 
  a29d63:	62 e1 7c 28 11 66 11 	vmovups YMMWORD PTR [rsi+0x220],ymm20
  a29d6a:	62 71 7c 48 11 6e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm13
  a29d71:	62 e1 7c 28 11 76 14 	vmovups YMMWORD PTR [rsi+0x280],ymm22
  a29d78:	62 e1 7c 48 11 ae a0 	vmovups ZMMWORD PTR [rsi+0x2a0],zmm21
  a29d7f:	02 00 00 
  a29d82:	c5 fc 11 b6 e0 02 00 	vmovups YMMWORD PTR [rsi+0x2e0],ymm6
  a29d89:	00 
  a29d8a:	48 81 c4 48 01 00 00 	add    rsp,0x148
  a29d91:	c5 f8 77             	vzeroupper
  a29d94:	c3                   	ret
