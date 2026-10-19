
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a01440 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a01440:	48 83 ec 48          	sub    rsp,0x48
  a01444:	48 c1 e2 07          	shl    rdx,0x7
  a01448:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a0144c:	31 d2                	xor    edx,edx
  a0144e:	c4 41 20 57 db       	vxorps xmm11,xmm11,xmm11
  a01453:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a0145a:	84 00 00 00 00 00 
  a01460:	c5 fc 10 2c 17       	vmovups ymm5,YMMWORD PTR [rdi+rdx*1]
  a01465:	62 e1 7c 28 10 4c 17 	vmovups ymm17,YMMWORD PTR [rdi+rdx*1+0x20]
  a0146c:	01 
  a0146d:	c5 7c 10 64 17 40    	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x40]
  a01473:	c5 7c 10 7c 17 60    	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0x60]
  a01479:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a0147f:	62 f1 7c 48 28 05 b7 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68cbb7]        # 8e040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b4f0>
  a01486:	cb 68 ff 
  a01489:	62 c2 7d 48 7f c3    	vpermt2ps zmm16,zmm0,zmm11
  a0148f:	62 f1 7c 48 28 25 e7 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff68cbe7]        # 8e080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b530>
  a01496:	cb 68 ff 
  a01499:	62 d2 5d 48 7f eb    	vpermt2ps zmm5,zmm4,zmm11
  a0149f:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a014a5:	62 52 7d 48 7f f3    	vpermt2ps zmm14,zmm0,zmm11
  a014ab:	62 c2 5d 48 7f cb    	vpermt2ps zmm17,zmm4,zmm11
  a014b1:	62 c1 7c 48 28 ec    	vmovaps zmm21,zmm12
  a014b7:	62 c2 7d 48 7f eb    	vpermt2ps zmm21,zmm0,zmm11
  a014bd:	62 52 5d 48 7f e3    	vpermt2ps zmm12,zmm4,zmm11
  a014c3:	62 51 7c 48 28 ef    	vmovaps zmm13,zmm15
  a014c9:	62 52 7d 48 7f eb    	vpermt2ps zmm13,zmm0,zmm11
  a014cf:	62 52 5d 48 7f fb    	vpermt2ps zmm15,zmm4,zmm11
  a014d5:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x80]
  a014dc:	04 
  a014dd:	62 21 7c 48 28 ca    	vmovaps zmm25,zmm18
  a014e3:	62 42 7d 48 7f cb    	vpermt2ps zmm25,zmm0,zmm11
  a014e9:	62 c2 5d 48 7f d3    	vpermt2ps zmm18,zmm4,zmm11
  a014ef:	62 e1 7c 28 10 74 17 	vmovups ymm22,YMMWORD PTR [rdi+rdx*1+0xa0]
  a014f6:	05 
  a014f7:	62 a1 7c 48 28 e6    	vmovaps zmm20,zmm22
  a014fd:	62 c2 7d 48 7f e3    	vpermt2ps zmm20,zmm0,zmm11
  a01503:	62 c2 5d 48 7f f3    	vpermt2ps zmm22,zmm4,zmm11
  a01509:	62 e1 7c 28 10 5c 17 	vmovups ymm19,YMMWORD PTR [rdi+rdx*1+0xc0]
  a01510:	06 
  a01511:	62 21 7c 48 28 e3    	vmovaps zmm28,zmm19
  a01517:	62 42 7d 48 7f e3    	vpermt2ps zmm28,zmm0,zmm11
  a0151d:	62 c2 5d 48 7f db    	vpermt2ps zmm19,zmm4,zmm11
  a01523:	62 61 7c 28 10 74 17 	vmovups ymm30,YMMWORD PTR [rdi+rdx*1+0xe0]
  a0152a:	07 
  a0152b:	62 81 7c 48 28 fe    	vmovaps zmm23,zmm30
  a01531:	62 c2 7d 48 7f fb    	vpermt2ps zmm23,zmm0,zmm11
  a01537:	62 42 5d 48 7f f3    	vpermt2ps zmm30,zmm4,zmm11
  a0153d:	62 61 7c 28 10 54 17 	vmovups ymm26,YMMWORD PTR [rdi+rdx*1+0x100]
  a01544:	08 
  a01545:	62 01 7c 48 28 fa    	vmovaps zmm31,zmm26
  a0154b:	62 42 7d 48 7f fb    	vpermt2ps zmm31,zmm0,zmm11
  a01551:	62 42 5d 48 7f d3    	vpermt2ps zmm26,zmm4,zmm11
  a01557:	62 61 7c 28 10 44 17 	vmovups ymm24,YMMWORD PTR [rdi+rdx*1+0x120]
  a0155e:	09 
  a0155f:	62 91 7c 48 28 d0    	vmovaps zmm2,zmm24
  a01565:	62 d2 7d 48 7f d3    	vpermt2ps zmm2,zmm0,zmm11
  a0156b:	62 42 5d 48 7f c3    	vpermt2ps zmm24,zmm4,zmm11
  a01571:	c5 7c 10 8c 17 40 01 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x140]
  a01578:	00 00 
  a0157a:	62 d1 7c 48 28 d9    	vmovaps zmm3,zmm9
  a01580:	62 d2 7d 48 7f db    	vpermt2ps zmm3,zmm0,zmm11
  a01586:	62 52 5d 48 7f cb    	vpermt2ps zmm9,zmm4,zmm11
  a0158c:	c5 7c 10 94 17 60 01 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x160]
  a01593:	00 00 
  a01595:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  a0159b:	62 d2 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm11
  a015a1:	62 52 5d 48 7f d3    	vpermt2ps zmm10,zmm4,zmm11
  a015a7:	62 01 7c 40 58 dc    	vaddps zmm27,zmm16,zmm28
  a015ad:	62 61 14 48 58 ea    	vaddps zmm29,zmm13,zmm2
  a015b3:	62 71 34 40 58 c3    	vaddps zmm8,zmm25,zmm3
  a015b9:	62 d1 44 40 58 fe    	vaddps zmm7,zmm23,zmm14
  a015bf:	62 b1 04 40 58 e5    	vaddps zmm4,zmm31,zmm21
  a015c5:	62 61 34 40 5c cb    	vsubps zmm25,zmm25,zmm3
  a015cb:	62 b1 0c 40 58 d9    	vaddps zmm3,zmm30,zmm17
  a015d1:	62 a1 0c 40 5c c9    	vsubps zmm17,zmm30,zmm17
  a015d7:	62 21 74 48 58 f4    	vaddps zmm30,zmm1,zmm20
  a015dd:	62 a1 04 40 5c ed    	vsubps zmm21,zmm31,zmm21
  a015e3:	62 21 2c 48 58 fe    	vaddps zmm31,zmm10,zmm22
  a015e9:	62 31 2c 48 5c d6    	vsubps zmm10,zmm10,zmm22
  a015ef:	62 a1 54 48 58 f3    	vaddps zmm22,zmm5,zmm19
  a015f5:	62 81 7c 40 5c c4    	vsubps zmm16,zmm16,zmm28
  a015fb:	62 01 04 48 58 e0    	vaddps zmm28,zmm15,zmm24
  a01601:	62 11 04 48 5c f8    	vsubps zmm15,zmm15,zmm24
  a01607:	62 41 6c 40 58 c1    	vaddps zmm24,zmm18,zmm9
  a0160d:	62 51 6c 40 5c c9    	vsubps zmm9,zmm18,zmm9
  a01613:	62 d1 2c 40 58 f4    	vaddps zmm6,zmm26,zmm12
  a01619:	62 a1 0c 48 5c ff    	vsubps zmm23,zmm14,zmm23
  a0161f:	62 51 44 40 58 f1    	vaddps zmm14,zmm23,zmm9
  a01625:	62 51 2c 40 5c e4    	vsubps zmm12,zmm26,zmm12
  a0162b:	62 f1 5c 40 5c c9    	vsubps zmm1,zmm20,zmm1
  a01631:	62 c1 74 48 58 d4    	vaddps zmm18,zmm1,zmm12
  a01637:	62 21 0c 48 5c d2    	vsubps zmm26,zmm14,zmm18
  a0163d:	62 b1 0c 48 58 c2    	vaddps zmm0,zmm14,zmm18
  a01643:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a0164a:	fe 
  a0164b:	62 a1 34 40 58 e1    	vaddps zmm20,zmm25,zmm17
  a01651:	62 b1 54 48 5c eb    	vsubps zmm5,zmm5,zmm19
  a01657:	62 c1 54 40 58 da    	vaddps zmm19,zmm21,zmm10
  a0165d:	62 d1 6c 48 5c d5    	vsubps zmm2,zmm2,zmm13
  a01663:	62 b1 5c 40 58 c3    	vaddps zmm0,zmm20,zmm19
  a01669:	62 31 5c 40 5c eb    	vsubps zmm13,zmm20,zmm19
  a0166f:	62 71 3c 48 58 f7    	vaddps zmm14,zmm8,zmm7
  a01675:	62 f1 3c 48 5c ff    	vsubps zmm7,zmm8,zmm7
  a0167b:	62 11 5c 48 58 c6    	vaddps zmm8,zmm4,zmm30
  a01681:	62 91 5c 48 5c e6    	vsubps zmm4,zmm4,zmm30
  a01687:	62 81 24 40 58 dd    	vaddps zmm19,zmm27,zmm29
  a0168d:	62 01 24 40 5c dd    	vsubps zmm27,zmm27,zmm29
  a01693:	62 61 3c 40 58 eb    	vaddps zmm29,zmm24,zmm3
  a01699:	62 f1 3c 40 5c db    	vsubps zmm3,zmm24,zmm3
  a0169f:	62 01 4c 48 58 c7    	vaddps zmm24,zmm6,zmm31
  a016a5:	62 91 4c 48 5c f7    	vsubps zmm6,zmm6,zmm31
  a016ab:	62 e1 64 48 5c d6    	vsubps zmm18,zmm3,zmm6
  a016b1:	62 e1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm18
  a016b8:	62 f1 64 48 58 de    	vaddps zmm3,zmm3,zmm6
  a016be:	62 91 4c 40 58 f4    	vaddps zmm6,zmm22,zmm28
  a016c4:	62 01 4c 40 5c e4    	vsubps zmm28,zmm22,zmm28
  a016ca:	62 61 44 48 58 f4    	vaddps zmm30,zmm7,zmm4
  a016d0:	62 f1 44 48 5c e4    	vsubps zmm4,zmm7,zmm4
  a016d6:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a016dd:	ff 
  a016de:	62 c1 7c 40 58 d7    	vaddps zmm18,zmm16,zmm15
  a016e4:	62 d1 7c 40 5c ff    	vsubps zmm7,zmm16,zmm15
  a016ea:	62 21 34 40 5c c9    	vsubps zmm25,zmm25,zmm17
  a016f0:	62 41 0c 48 58 f8    	vaddps zmm31,zmm14,zmm8
  a016f6:	62 51 54 40 5c d2    	vsubps zmm10,zmm21,zmm10
  a016fc:	62 e1 6c 48 58 e5    	vaddps zmm20,zmm2,zmm5
  a01702:	62 f1 54 48 5c d2    	vsubps zmm2,zmm5,zmm2
  a01708:	62 81 64 40 58 cf    	vaddps zmm17,zmm19,zmm31
  a0170e:	62 31 34 48 5c cf    	vsubps zmm9,zmm9,zmm23
  a01714:	62 81 14 40 58 f8    	vaddps zmm23,zmm29,zmm24
  a0171a:	62 f1 1c 48 5c c9    	vsubps zmm1,zmm12,zmm1
  a01720:	62 31 4c 48 58 ff    	vaddps zmm15,zmm6,zmm23
  a01726:	62 f2 7d 48 18 2d 30 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff673d30]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0172d:	3d 67 ff 
  a01730:	62 22 55 48 ac fb    	vfnmadd213ps zmm31,zmm5,zmm19
  a01736:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a0173c:	62 a2 7d 48 ac c2    	vfnmadd213ps zmm16,zmm0,zmm18
  a01742:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a01748:	62 f2 7d 48 18 05 82 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff673b82]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0174f:	3b 67 ff 
  a01752:	62 e1 2c 40 59 e8    	vmulps zmm21,zmm26,zmm0
  a01758:	62 01 14 40 5c c0    	vsubps zmm24,zmm29,zmm24
  a0175e:	62 a1 54 40 58 d8    	vaddps zmm19,zmm21,zmm16
  a01764:	62 e2 55 48 ac fe    	vfnmadd213ps zmm23,zmm5,zmm6
  a0176a:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a01770:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x80]
  a01777:	fe 
  a01778:	62 b2 5d 48 ac f4    	vfnmadd213ps zmm6,zmm4,zmm20
  a0177e:	62 71 14 48 59 e8    	vmulps zmm13,zmm13,zmm0
  a01784:	62 51 0c 48 5c c0    	vsubps zmm8,zmm14,zmm8
  a0178a:	62 51 4c 48 5c e5    	vsubps zmm12,zmm6,zmm13
  a01790:	62 21 7c 40 5c d5    	vsubps zmm26,zmm16,zmm21
  a01796:	62 61 7c 48 28 ed    	vmovaps zmm29,zmm5
  a0179c:	62 02 0d 40 ac eb    	vfnmadd213ps zmm29,zmm30,zmm27
  a017a2:	62 51 4c 48 58 ed    	vaddps zmm13,zmm6,zmm13
  a017a8:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a017ae:	62 92 65 48 ac f4    	vfnmadd213ps zmm6,zmm3,zmm28
  a017b4:	62 01 24 40 58 de    	vaddps zmm27,zmm27,zmm30
  a017ba:	62 41 34 40 58 f2    	vaddps zmm30,zmm25,zmm10
  a017c0:	62 61 1c 40 58 e3    	vaddps zmm28,zmm28,zmm3
  a017c6:	62 91 44 48 58 de    	vaddps zmm3,zmm7,zmm30
  a017cc:	62 62 55 48 ac f7    	vfnmadd213ps zmm30,zmm5,zmm7
  a017d2:	62 f1 34 48 58 f9    	vaddps zmm7,zmm9,zmm1
  a017d8:	62 f1 34 48 5c c9    	vsubps zmm1,zmm9,zmm1
  a017de:	62 e1 6c 48 58 c7    	vaddps zmm16,zmm2,zmm7
  a017e4:	62 f2 55 48 ac fa    	vfnmadd213ps zmm7,zmm5,zmm2
  a017ea:	62 f1 3c 40 59 d0    	vmulps zmm2,zmm24,zmm0
  a017f0:	62 51 34 40 5c ca    	vsubps zmm9,zmm25,zmm10
  a017f6:	62 71 04 40 58 d2    	vaddps zmm10,zmm31,zmm2
  a017fc:	62 71 3c 48 59 c0    	vmulps zmm8,zmm8,zmm0
  a01802:	62 f1 04 40 5c d2    	vsubps zmm2,zmm31,zmm2
  a01808:	62 c1 44 40 5c e8    	vsubps zmm21,zmm23,zmm8
  a0180e:	62 31 3c 48 58 c7    	vaddps zmm8,zmm8,zmm23
  a01814:	62 21 6c 40 58 c6    	vaddps zmm24,zmm18,zmm22
  a0181a:	62 e1 7c 48 59 14 24 	vmulps zmm18,zmm0,ZMMWORD PTR [rsp]
  a01821:	62 f1 5c 40 58 ec    	vaddps zmm5,zmm20,zmm4
  a01827:	62 31 14 40 5c f2    	vsubps zmm14,zmm29,zmm18
  a0182d:	62 e1 7c 48 59 74 24 	vmulps zmm22,zmm0,ZMMWORD PTR [rsp-0x40]
  a01834:	ff 
  a01835:	62 a1 14 40 58 d2    	vaddps zmm18,zmm29,zmm18
  a0183b:	62 e1 4c 40 58 e6    	vaddps zmm20,zmm22,zmm6
  a01841:	62 f1 74 48 59 c8    	vmulps zmm1,zmm1,zmm0
  a01847:	62 b1 4c 48 5c f6    	vsubps zmm6,zmm6,zmm22
  a0184d:	62 81 74 48 58 fe    	vaddps zmm23,zmm1,zmm30
  a01853:	62 71 34 48 59 c8    	vmulps zmm9,zmm9,zmm0
  a01859:	62 f1 0c 40 5c c9    	vsubps zmm1,zmm30,zmm1
  a0185f:	62 c1 44 48 5c f1    	vsubps zmm22,zmm7,zmm9
  a01865:	62 d1 44 48 58 f9    	vaddps zmm7,zmm7,zmm9
  a0186b:	62 71 7c 48 28 0d 0b 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6c570b]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a01872:	57 6c ff 
  a01875:	62 e2 35 48 7f ca    	vpermt2ps zmm17,zmm9,zmm2
  a0187b:	62 82 35 48 7f d8    	vpermt2ps zmm19,zmm9,zmm24
  a01881:	62 32 35 48 7f f2    	vpermt2ps zmm14,zmm9,zmm18
  a01887:	62 f2 35 48 7f d9    	vpermt2ps zmm3,zmm9,zmm1
  a0188d:	62 52 35 48 7f d3    	vpermt2ps zmm10,zmm9,zmm11
  a01893:	62 f1 7c 48 28 25 63 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6c5663]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0189a:	56 6c ff 
  a0189d:	62 c2 5d 48 7f ca    	vpermt2ps zmm17,zmm4,zmm10
  a018a3:	62 42 35 48 7f d3    	vpermt2ps zmm26,zmm9,zmm11
  a018a9:	62 82 5d 48 7f da    	vpermt2ps zmm19,zmm4,zmm26
  a018af:	62 42 35 48 7f db    	vpermt2ps zmm27,zmm9,zmm11
  a018b5:	62 12 5d 48 7f f3    	vpermt2ps zmm14,zmm4,zmm27
  a018bb:	62 c2 35 48 7f fb    	vpermt2ps zmm23,zmm9,zmm11
  a018c1:	62 b2 5d 48 7f df    	vpermt2ps zmm3,zmm4,zmm23
  a018c7:	62 c1 f5 40 14 d6    	vunpcklpd zmm18,zmm17,zmm14
  a018cd:	62 c1 f5 40 15 ce    	vunpckhpd zmm17,zmm17,zmm14
  a018d3:	62 71 e5 40 14 f3    	vunpcklpd zmm14,zmm19,zmm3
  a018d9:	62 f1 e5 40 15 cb    	vunpckhpd zmm1,zmm19,zmm3
  a018df:	62 b1 7c 48 28 d1    	vmovaps zmm2,zmm17
  a018e5:	62 e1 7c 48 28 3d 11 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6c5511]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a018ec:	55 6c ff 
  a018ef:	62 f2 45 40 7f d1    	vpermt2ps zmm2,zmm23,zmm1
  a018f5:	62 71 7c 48 28 15 41 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6c5541]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a018fc:	55 6c ff 
  a018ff:	62 e2 2d 48 7f c9    	vpermt2ps zmm17,zmm10,zmm1
  a01905:	62 52 35 48 7f f8    	vpermt2ps zmm15,zmm9,zmm8
  a0190b:	62 72 35 48 7f e5    	vpermt2ps zmm12,zmm9,zmm5
  a01911:	62 e2 35 48 7f e6    	vpermt2ps zmm20,zmm9,zmm6
  a01917:	62 e2 35 48 7f c7    	vpermt2ps zmm16,zmm9,zmm7
  a0191d:	62 a1 7c 48 28 da    	vmovaps zmm19,zmm18
  a01923:	62 c2 2d 48 7f d6    	vpermt2ps zmm18,zmm10,zmm14
  a01929:	62 c2 35 48 7f eb    	vpermt2ps zmm21,zmm9,zmm11
  a0192f:	62 52 35 48 7f eb    	vpermt2ps zmm13,zmm9,zmm11
  a01935:	62 42 35 48 7f e3    	vpermt2ps zmm28,zmm9,zmm11
  a0193b:	62 c2 35 48 7f f3    	vpermt2ps zmm22,zmm9,zmm11
  a01941:	62 32 5d 48 7f fd    	vpermt2ps zmm15,zmm4,zmm21
  a01947:	62 52 5d 48 7f e5    	vpermt2ps zmm12,zmm4,zmm13
  a0194d:	62 82 5d 48 7f e4    	vpermt2ps zmm20,zmm4,zmm28
  a01953:	62 a2 5d 48 7f c6    	vpermt2ps zmm16,zmm4,zmm22
  a01959:	62 b1 85 48 14 c4    	vunpcklpd zmm0,zmm15,zmm20
  a0195f:	62 b1 85 48 15 cc    	vunpckhpd zmm1,zmm15,zmm20
  a01965:	62 b1 9d 48 14 d8    	vunpcklpd zmm3,zmm12,zmm16
  a0196b:	62 b1 9d 48 15 e0    	vunpckhpd zmm4,zmm12,zmm16
  a01971:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a01977:	62 f2 2d 48 7f c3    	vpermt2ps zmm0,zmm10,zmm3
  a0197d:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a01983:	62 f2 45 40 7f fc    	vpermt2ps zmm7,zmm23,zmm4
  a01989:	62 f2 2d 48 7f cc    	vpermt2ps zmm1,zmm10,zmm4
  a0198f:	62 f1 7c 48 10 61 04 	vmovups zmm4,ZMMWORD PTR [rcx+0x100]
  a01996:	62 71 7c 48 10 41 05 	vmovups zmm8,ZMMWORD PTR [rcx+0x140]
  a0199d:	62 71 6c 48 59 cc    	vmulps zmm9,zmm2,zmm4
  a019a3:	62 52 45 48 bc c8    	vfnmadd231ps zmm9,zmm7,zmm8
  a019a9:	62 f1 44 48 59 e4    	vmulps zmm4,zmm7,zmm4
  a019af:	62 f1 7c 48 10 79 02 	vmovups zmm7,ZMMWORD PTR [rcx+0x80]
  a019b6:	62 f2 3d 48 b8 e2    	vfmadd231ps zmm4,zmm8,zmm2
  a019bc:	62 f1 7c 48 10 51 03 	vmovups zmm2,ZMMWORD PTR [rcx+0xc0]
  a019c3:	62 71 6c 40 59 c7    	vmulps zmm8,zmm18,zmm7
  a019c9:	62 72 7d 48 bc c2    	vfnmadd231ps zmm8,zmm0,zmm2
  a019cf:	62 f1 7c 48 59 c7    	vmulps zmm0,zmm0,zmm7
  a019d5:	62 f1 7c 48 10 79 06 	vmovups zmm7,ZMMWORD PTR [rcx+0x180]
  a019dc:	62 b2 6d 48 b8 c2    	vfmadd231ps zmm0,zmm2,zmm18
  a019e2:	62 f1 7c 48 10 51 07 	vmovups zmm2,ZMMWORD PTR [rcx+0x1c0]
  a019e9:	62 71 74 40 59 d7    	vmulps zmm10,zmm17,zmm7
  a019ef:	62 72 75 48 bc d2    	vfnmadd231ps zmm10,zmm1,zmm2
  a019f5:	62 f1 74 48 59 cf    	vmulps zmm1,zmm1,zmm7
  a019fb:	62 b2 6d 48 b8 c9    	vfmadd231ps zmm1,zmm2,zmm17
  a01a01:	62 c2 45 40 7f de    	vpermt2ps zmm19,zmm23,zmm14
  a01a07:	62 f2 45 40 7f f3    	vpermt2ps zmm6,zmm23,zmm3
  a01a0d:	62 d1 64 40 58 d1    	vaddps zmm2,zmm19,zmm9
  a01a13:	62 d1 64 40 5c d9    	vsubps zmm3,zmm19,zmm9
  a01a19:	62 f1 7c 48 58 f9    	vaddps zmm7,zmm0,zmm1
  a01a1f:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a01a25:	62 f1 5c 48 58 ce    	vaddps zmm1,zmm4,zmm6
  a01a2b:	62 f1 4c 48 5c e4    	vsubps zmm4,zmm6,zmm4
  a01a31:	62 d1 3c 48 58 f2    	vaddps zmm6,zmm8,zmm10
  a01a37:	62 51 2c 48 5c c0    	vsubps zmm8,zmm10,zmm8
  a01a3d:	62 71 64 48 58 c8    	vaddps zmm9,zmm3,zmm0
  a01a43:	62 f1 64 48 5c c0    	vsubps zmm0,zmm3,zmm0
  a01a49:	62 d1 5c 48 58 d8    	vaddps zmm3,zmm4,zmm8
  a01a4f:	62 d1 5c 48 5c e0    	vsubps zmm4,zmm4,zmm8
  a01a55:	62 71 6c 48 5c c6    	vsubps zmm8,zmm2,zmm6
  a01a5b:	62 f1 6c 48 58 d6    	vaddps zmm2,zmm2,zmm6
  a01a61:	62 f1 74 48 5c f7    	vsubps zmm6,zmm1,zmm7
  a01a67:	62 f1 74 48 58 cf    	vaddps zmm1,zmm1,zmm7
  a01a6d:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a01a73:	c5 fc 28 2d c5 51 67 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff6751c5]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a01a7a:	ff 
  a01a7b:	62 f2 55 48 7f f9    	vpermt2ps zmm7,zmm5,zmm1
  a01a81:	62 71 7c 48 28 15 35 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff68c635]        # 8e0c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b570>
  a01a88:	c6 68 ff 
  a01a8b:	62 f2 2d 48 7f d1    	vpermt2ps zmm2,zmm10,zmm1
  a01a91:	62 f1 7c 48 11 14 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm2
  a01a98:	c5 fc 11 7c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm7
  a01a9e:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a01aa4:	62 f2 55 48 7f cb    	vpermt2ps zmm1,zmm5,zmm3
  a01aaa:	62 72 2d 48 7f cb    	vpermt2ps zmm9,zmm10,zmm3
  a01ab0:	62 71 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x60],zmm9
  a01ab7:	60 00 00 00 
  a01abb:	c5 fc 11 8c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm1
  a01ac2:	00 00 
  a01ac4:	62 d1 7c 48 28 c8    	vmovaps zmm1,zmm8
  a01aca:	62 f2 55 48 7f ce    	vpermt2ps zmm1,zmm5,zmm6
  a01ad0:	62 72 2d 48 7f c6    	vpermt2ps zmm8,zmm10,zmm6
  a01ad6:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm8
  a01add:	03 
  a01ade:	c5 fc 11 8c 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm1
  a01ae5:	00 00 
  a01ae7:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a01aed:	62 f2 55 48 7f cc    	vpermt2ps zmm1,zmm5,zmm4
  a01af3:	62 f2 2d 48 7f c4    	vpermt2ps zmm0,zmm10,zmm4
  a01af9:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x120],zmm0
  a01b00:	20 01 00 00 
  a01b04:	c5 fc 11 8c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm1
  a01b0b:	00 00 
  a01b0d:	48 81 c2 80 01 00 00 	add    rdx,0x180
  a01b14:	48 39 d0             	cmp    rax,rdx
  a01b17:	0f 85 43 f9 ff ff    	jne    a01460 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a01b1d:	48 83 c4 48          	add    rsp,0x48
  a01b21:	c5 f8 77             	vzeroupper
  a01b24:	c3                   	ret
