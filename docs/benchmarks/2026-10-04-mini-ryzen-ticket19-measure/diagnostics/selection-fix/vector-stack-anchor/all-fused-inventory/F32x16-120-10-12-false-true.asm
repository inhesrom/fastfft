
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a584c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a584c0:	48 81 ec 08 01 00 00 	sub    rsp,0x108
  a584c7:	48 69 c2 c0 03 00 00 	imul   rax,rdx,0x3c0
  a584ce:	31 d2                	xor    edx,edx
  a584d0:	62 e1 7c 48 10 0c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1]
  a584d7:	c5 fc 10 44 17 40    	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x40]
  a584dd:	62 a1 7c 48 28 d9    	vmovaps zmm19,zmm17
  a584e3:	62 f1 7c 48 28 0d 93 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff63ad93]        # 93280 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20730>
  a584ea:	ad 63 ff 
  a584ed:	62 e2 75 48 7f d8    	vpermt2ps zmm19,zmm1,zmm0
  a584f3:	62 f1 7c 48 28 15 c3 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff63adc3]        # 932c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20770>
  a584fa:	ad 63 ff 
  a584fd:	62 e2 6d 48 7f c8    	vpermt2ps zmm17,zmm2,zmm0
  a58503:	62 f1 7c 48 10 b4 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x60]
  a5850a:	60 00 00 00 
  a5850e:	c5 fc 10 84 17 a0 00 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0xa0]
  a58515:	00 00 
  a58517:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a5851d:	62 72 75 48 7f d8    	vpermt2ps zmm11,zmm1,zmm0
  a58523:	62 f2 6d 48 7f f0    	vpermt2ps zmm6,zmm2,zmm0
  a58529:	62 f1 7c 48 10 7c 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a58530:	03 
  a58531:	c5 fc 10 84 17 00 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x100]
  a58538:	00 00 
  a5853a:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a58540:	62 f2 75 48 7f e0    	vpermt2ps zmm4,zmm1,zmm0
  a58546:	62 f2 6d 48 7f f8    	vpermt2ps zmm7,zmm2,zmm0
  a5854c:	62 71 7c 48 10 84 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x120]
  a58553:	20 01 00 00 
  a58557:	c5 fc 10 84 17 60 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x160]
  a5855e:	00 00 
  a58560:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a58566:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a5856c:	62 72 6d 48 7f c0    	vpermt2ps zmm8,zmm2,zmm0
  a58572:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x180]
  a58579:	06 
  a5857a:	c5 fc 10 84 17 c0 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x1c0]
  a58581:	00 00 
  a58583:	62 31 7c 48 28 fa    	vmovaps zmm15,zmm18
  a58589:	62 72 75 48 7f f8    	vpermt2ps zmm15,zmm1,zmm0
  a5858f:	62 e2 6d 48 7f d0    	vpermt2ps zmm18,zmm2,zmm0
  a58595:	62 f1 7c 48 10 9c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a5859c:	e0 01 00 00 
  a585a0:	c5 fc 10 84 17 20 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x220]
  a585a7:	00 00 
  a585a9:	62 e1 7c 48 28 e3    	vmovaps zmm20,zmm3
  a585af:	62 e2 75 48 7f e0    	vpermt2ps zmm20,zmm1,zmm0
  a585b5:	62 f2 6d 48 7f d8    	vpermt2ps zmm3,zmm2,zmm0
  a585bb:	62 f1 7c 48 10 44 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x240]
  a585c2:	09 
  a585c3:	c5 fc 10 ac 17 80 02 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x280]
  a585ca:	00 00 
  a585cc:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a585d2:	62 62 75 48 7f dd    	vpermt2ps zmm27,zmm1,zmm5
  a585d8:	62 f2 6d 48 7f c5    	vpermt2ps zmm0,zmm2,zmm5
  a585de:	62 e1 7c 48 10 bc 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1+0x2a0]
  a585e5:	a0 02 00 00 
  a585e9:	c5 fc 10 ac 17 e0 02 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x2e0]
  a585f0:	00 00 
  a585f2:	62 21 7c 48 28 cf    	vmovaps zmm25,zmm23
  a585f8:	62 62 75 48 7f cd    	vpermt2ps zmm25,zmm1,zmm5
  a585fe:	62 e2 6d 48 7f fd    	vpermt2ps zmm23,zmm2,zmm5
  a58604:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x300]
  a5860b:	0c 
  a5860c:	c5 fc 10 ac 17 40 03 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x340]
  a58613:	00 00 
  a58615:	62 41 7c 48 28 f6    	vmovaps zmm30,zmm14
  a5861b:	62 62 75 48 7f f5    	vpermt2ps zmm30,zmm1,zmm5
  a58621:	62 72 6d 48 7f f5    	vpermt2ps zmm14,zmm2,zmm5
  a58627:	62 61 7c 48 10 bc 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x360]
  a5862e:	60 03 00 00 
  a58632:	c5 fc 10 ac 17 a0 03 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x3a0]
  a58639:	00 00 
  a5863b:	62 01 7c 48 28 ef    	vmovaps zmm29,zmm31
  a58641:	62 62 75 48 7f ed    	vpermt2ps zmm29,zmm1,zmm5
  a58647:	62 62 6d 48 7f fd    	vpermt2ps zmm31,zmm2,zmm5
  a5864d:	62 01 5c 48 58 e6    	vaddps zmm28,zmm4,zmm30
  a58653:	62 91 64 40 58 ec    	vaddps zmm5,zmm19,zmm28
  a58659:	62 01 04 48 58 d3    	vaddps zmm26,zmm15,zmm27
  a5865f:	62 91 54 48 58 ca    	vaddps zmm1,zmm5,zmm26
  a58665:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a5866c:	fe 
  a5866d:	62 c1 34 40 58 ec    	vaddps zmm21,zmm25,zmm12
  a58673:	62 b1 5c 40 58 ed    	vaddps zmm5,zmm20,zmm21
  a58679:	62 c1 14 40 58 f3    	vaddps zmm22,zmm29,zmm11
  a5867f:	62 b1 54 48 58 d6    	vaddps zmm2,zmm5,zmm22
  a58685:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a5868c:	01 
  a5868d:	62 f1 74 48 58 ca    	vaddps zmm1,zmm1,zmm2
  a58693:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a5869a:	ff 
  a5869b:	62 51 44 48 58 ce    	vaddps zmm9,zmm7,zmm14
  a586a1:	62 d1 74 40 58 c9    	vaddps zmm1,zmm17,zmm9
  a586a7:	62 d1 44 48 5c d6    	vsubps zmm2,zmm7,zmm14
  a586ad:	62 61 6c 40 58 c0    	vaddps zmm24,zmm18,zmm0
  a586b3:	62 91 74 48 58 e8    	vaddps zmm5,zmm1,zmm24
  a586b9:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  a586c0:	62 f1 6c 40 5c c8    	vsubps zmm1,zmm18,zmm0
  a586c6:	62 d1 44 40 58 f8    	vaddps zmm7,zmm23,zmm8
  a586cc:	62 51 44 40 5c e8    	vsubps zmm13,zmm23,zmm8
  a586d2:	62 e1 04 40 58 fe    	vaddps zmm23,zmm31,zmm6
  a586d8:	62 f1 04 40 5c f6    	vsubps zmm6,zmm31,zmm6
  a586de:	62 f1 64 48 58 c7    	vaddps zmm0,zmm3,zmm7
  a586e4:	62 31 7c 48 58 f7    	vaddps zmm14,zmm0,zmm23
  a586ea:	62 01 5c 48 5c f6    	vsubps zmm30,zmm4,zmm30
  a586f0:	62 d1 54 48 58 c6    	vaddps zmm0,zmm5,zmm14
  a586f6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a586fd:	03 
  a586fe:	62 01 04 48 5c db    	vsubps zmm27,zmm15,zmm27
  a58704:	62 72 7d 48 18 15 da 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff61cfda]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a5870b:	cf 61 ff 
  a5870e:	62 d1 7c 48 28 e2    	vmovaps zmm4,zmm10
  a58714:	62 b2 1d 40 a8 e3    	vfmadd213ps zmm4,zmm28,zmm19
  a5871a:	62 e2 7d 48 18 05 20 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff61cf20]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a58721:	cf 61 ff 
  a58724:	62 b2 2d 40 bc e0    	vfnmadd231ps zmm4,zmm26,zmm16
  a5872a:	62 41 34 40 5c fc    	vsubps zmm31,zmm25,zmm12
  a58730:	62 e2 7d 48 18 15 1e 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff61d01e]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a58737:	d0 61 ff 
  a5873a:	62 31 74 48 59 e2    	vmulps zmm12,zmm1,zmm18
  a58740:	62 f2 7d 48 18 2d 56 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff61cc56]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a58747:	cc 61 ff 
  a5874a:	62 72 6d 48 b8 e5    	vfmadd231ps zmm12,zmm2,zmm5
  a58750:	62 41 14 40 5c eb    	vsubps zmm29,zmm29,zmm11
  a58756:	62 51 5c 48 58 fc    	vaddps zmm15,zmm4,zmm12
  a5875c:	62 82 7d 40 bc dc    	vfnmadd231ps zmm19,zmm16,zmm28
  a58762:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a58768:	62 b2 55 40 a8 c4    	vfmadd213ps zmm0,zmm21,zmm20
  a5876e:	62 b2 4d 40 bc c0    	vfnmadd231ps zmm0,zmm22,zmm16
  a58774:	62 82 2d 48 b8 da    	vfmadd231ps zmm19,zmm10,zmm26
  a5877a:	62 21 4c 48 59 d2    	vmulps zmm26,zmm6,zmm18
  a58780:	62 62 15 48 b8 d5    	vfmadd231ps zmm26,zmm13,zmm5
  a58786:	62 b1 6c 48 59 d2    	vmulps zmm2,zmm2,zmm18
  a5878c:	62 f2 55 48 bc d1    	vfnmadd231ps zmm2,zmm5,zmm1
  a58792:	62 11 7c 48 58 c2    	vaddps zmm8,zmm0,zmm26
  a58798:	62 a2 7d 40 bc e5    	vfnmadd231ps zmm20,zmm16,zmm21
  a5879e:	62 c1 04 48 5c e8    	vsubps zmm21,zmm15,zmm8
  a587a4:	62 a2 2d 48 b8 e6    	vfmadd231ps zmm20,zmm10,zmm22
  a587aa:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  a587b0:	62 b2 35 48 a8 c9    	vfmadd213ps zmm1,zmm9,zmm17
  a587b6:	62 b2 3d 40 bc c8    	vfnmadd231ps zmm1,zmm24,zmm16
  a587bc:	62 31 14 48 59 ea    	vmulps zmm13,zmm13,zmm18
  a587c2:	62 72 55 48 bc ee    	vfnmadd231ps zmm13,zmm5,zmm6
  a587c8:	62 a1 24 40 59 f2    	vmulps zmm22,zmm27,zmm18
  a587ce:	62 e2 0d 40 b8 f5    	vfmadd231ps zmm22,zmm30,zmm5
  a587d4:	62 c2 7d 40 bc c9    	vfnmadd231ps zmm17,zmm16,zmm9
  a587da:	62 b1 74 48 5c f6    	vsubps zmm6,zmm1,zmm22
  a587e0:	62 82 2d 48 b8 c8    	vfmadd231ps zmm17,zmm10,zmm24
  a587e6:	62 41 7c 48 28 c2    	vmovaps zmm24,zmm10
  a587ec:	62 62 45 48 a8 c3    	vfmadd213ps zmm24,zmm7,zmm3
  a587f2:	62 22 45 40 bc c0    	vfnmadd231ps zmm24,zmm23,zmm16
  a587f8:	62 21 0c 40 59 e2    	vmulps zmm28,zmm30,zmm18
  a587fe:	62 02 55 48 bc e3    	vfnmadd231ps zmm28,zmm5,zmm27
  a58804:	62 21 14 40 59 da    	vmulps zmm27,zmm29,zmm18
  a5880a:	62 62 05 40 b8 dd    	vfmadd231ps zmm27,zmm31,zmm5
  a58810:	62 f2 7d 40 bc df    	vfnmadd231ps zmm3,zmm16,zmm7
  a58816:	62 11 3c 40 5c db    	vsubps zmm11,zmm24,zmm27
  a5881c:	62 b2 2d 48 b8 df    	vfmadd231ps zmm3,zmm10,zmm23
  a58822:	62 41 4c 48 5c cb    	vsubps zmm25,zmm6,zmm11
  a58828:	62 b1 04 40 59 fa    	vmulps zmm7,zmm31,zmm18
  a5882e:	62 92 55 48 bc fd    	vfnmadd231ps zmm7,zmm5,zmm29
  a58834:	62 e1 64 40 58 fa    	vaddps zmm23,zmm19,zmm2
  a5883a:	62 f1 64 40 5c d2    	vsubps zmm2,zmm19,zmm2
  a58840:	62 c1 5c 40 58 dd    	vaddps zmm19,zmm20,zmm13
  a58846:	62 51 5c 40 5c ed    	vsubps zmm13,zmm20,zmm13
  a5884c:	62 81 74 40 5c e4    	vsubps zmm20,zmm17,zmm28
  a58852:	62 a1 1c 40 58 c9    	vaddps zmm17,zmm28,zmm17
  a58858:	62 61 64 48 5c e7    	vsubps zmm28,zmm3,zmm7
  a5885e:	62 f1 44 48 58 db    	vaddps zmm3,zmm7,zmm3
  a58864:	62 b1 44 40 58 fb    	vaddps zmm7,zmm23,zmm19
  a5886a:	62 d1 5c 48 5c e4    	vsubps zmm4,zmm4,zmm12
  a58870:	62 01 5c 40 58 ec    	vaddps zmm29,zmm20,zmm28
  a58876:	62 01 7c 48 5c d2    	vsubps zmm26,zmm0,zmm26
  a5887c:	62 51 6c 48 5c e5    	vsubps zmm12,zmm2,zmm13
  a58882:	62 f1 4c 40 58 c9    	vaddps zmm1,zmm22,zmm1
  a58888:	62 61 74 40 5c f3    	vsubps zmm30,zmm17,zmm3
  a5888e:	62 81 24 40 58 f0    	vaddps zmm22,zmm27,zmm24
  a58894:	62 01 5c 48 58 c2    	vaddps zmm24,zmm4,zmm26
  a5889a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a588a1:	fe 
  a588a2:	62 61 7c 48 5c 5c 24 	vsubps zmm27,zmm0,ZMMWORD PTR [rsp+0x40]
  a588a9:	01 
  a588aa:	62 a1 74 48 58 d6    	vaddps zmm18,zmm1,zmm22
  a588b0:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a588b7:	62 41 7c 48 5c fe    	vsubps zmm31,zmm0,zmm14
  a588bd:	62 51 04 48 58 c0    	vaddps zmm8,zmm15,zmm8
  a588c3:	62 d1 4c 48 58 c3    	vaddps zmm0,zmm6,zmm11
  a588c9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a588d0:	02 
  a588d1:	62 31 44 40 5c db    	vsubps zmm11,zmm23,zmm19
  a588d7:	62 81 5c 40 5c e4    	vsubps zmm20,zmm20,zmm28
  a588dd:	62 d1 6c 48 58 d5    	vaddps zmm2,zmm2,zmm13
  a588e3:	62 f1 74 40 58 eb    	vaddps zmm5,zmm17,zmm3
  a588e9:	62 91 5c 48 5c da    	vsubps zmm3,zmm4,zmm26
  a588ef:	62 b1 74 48 5c e6    	vsubps zmm4,zmm1,zmm22
  a588f5:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp-0x40]
  a588fc:	ff 
  a588fd:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  a58903:	62 71 7c 48 28 0d 73 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff66e673]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5890a:	e6 66 ff 
  a5890d:	62 f2 35 48 7f ca    	vpermt2ps zmm1,zmm9,zmm2
  a58913:	62 e1 7c 48 28 05 a3 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff66e6a3]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a5891a:	e6 66 ff 
  a5891d:	62 72 7d 40 7f d2    	vpermt2ps zmm10,zmm16,zmm2
  a58923:	62 41 7c 48 28 d2    	vmovaps zmm26,zmm10
  a58929:	62 b1 7c 48 28 d5    	vmovaps zmm2,zmm21
  a5892f:	62 f2 35 48 7f d3    	vpermt2ps zmm2,zmm9,zmm3
  a58935:	62 e2 7d 40 7f eb    	vpermt2ps zmm21,zmm16,zmm3
  a5893b:	62 f1 7c 48 28 df    	vmovaps zmm3,zmm7
  a58941:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a58945:	62 f2 35 48 7f de    	vpermt2ps zmm3,zmm9,zmm6
  a5894b:	62 f2 7d 40 7f fe    	vpermt2ps zmm7,zmm16,zmm6
  a58951:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a58957:	62 72 35 48 7f ee    	vpermt2ps zmm13,zmm9,zmm6
  a5895d:	62 72 7d 40 7f e6    	vpermt2ps zmm12,zmm16,zmm6
  a58963:	62 11 7c 48 28 f0    	vmovaps zmm14,zmm24
  a58969:	62 72 35 48 7f f6    	vpermt2ps zmm14,zmm9,zmm6
  a5896f:	62 62 7d 40 7f c6    	vpermt2ps zmm24,zmm16,zmm6
  a58975:	62 11 7c 48 28 fb    	vmovaps zmm15,zmm27
  a5897b:	62 72 35 48 7f fe    	vpermt2ps zmm15,zmm9,zmm6
  a58981:	62 62 7d 40 7f de    	vpermt2ps zmm27,zmm16,zmm6
  a58987:	62 c1 7c 48 28 c8    	vmovaps zmm17,zmm8
  a5898d:	62 e2 35 48 7f ce    	vpermt2ps zmm17,zmm9,zmm6
  a58993:	62 72 7d 40 7f c6    	vpermt2ps zmm8,zmm16,zmm6
  a58999:	62 c1 7c 48 28 db    	vmovaps zmm19,zmm11
  a5899f:	62 e2 35 48 7f de    	vpermt2ps zmm19,zmm9,zmm6
  a589a5:	62 72 7d 40 7f de    	vpermt2ps zmm11,zmm16,zmm6
  a589ab:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a589b1:	62 f1 7c 48 28 05 45 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff66e545]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a589b8:	e5 66 ff 
  a589bb:	62 c2 7d 48 7f f6    	vpermt2ps zmm22,zmm0,zmm14
  a589c1:	62 71 7c 48 28 15 75 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff66e575]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a589c8:	e5 66 ff 
  a589cb:	62 d2 2d 48 7f ce    	vpermt2ps zmm1,zmm10,zmm14
  a589d1:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a589d7:	62 52 7d 48 7f f7    	vpermt2ps zmm14,zmm0,zmm15
  a589dd:	62 d2 2d 48 7f d7    	vpermt2ps zmm2,zmm10,zmm15
  a589e3:	62 71 7c 48 28 fb    	vmovaps zmm15,zmm3
  a589e9:	62 32 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm17
  a589ef:	62 b2 2d 48 7f d9    	vpermt2ps zmm3,zmm10,zmm17
  a589f5:	62 c1 7c 48 28 cd    	vmovaps zmm17,zmm13
  a589fb:	62 a2 7d 48 7f cb    	vpermt2ps zmm17,zmm0,zmm19
  a58a01:	62 32 2d 48 7f eb    	vpermt2ps zmm13,zmm10,zmm19
  a58a07:	62 02 7d 48 7f d0    	vpermt2ps zmm26,zmm0,zmm24
  a58a0d:	62 82 7d 48 7f eb    	vpermt2ps zmm21,zmm0,zmm27
  a58a13:	62 d2 7d 48 7f f8    	vpermt2ps zmm7,zmm0,zmm8
  a58a19:	62 52 7d 48 7f e3    	vpermt2ps zmm12,zmm0,zmm11
  a58a1f:	62 c1 cd 40 14 df    	vunpcklpd zmm19,zmm22,zmm15
  a58a25:	62 41 cd 40 15 c7    	vunpckhpd zmm24,zmm22,zmm15
  a58a2b:	62 31 8d 48 14 c1    	vunpcklpd zmm8,zmm14,zmm17
  a58a31:	62 31 8d 48 15 d9    	vunpckhpd zmm11,zmm14,zmm17
  a58a37:	62 71 f5 48 14 fb    	vunpcklpd zmm15,zmm1,zmm3
  a58a3d:	62 e1 f5 48 15 cb    	vunpckhpd zmm17,zmm1,zmm3
  a58a43:	62 d1 ed 48 14 cd    	vunpcklpd zmm1,zmm2,zmm13
  a58a49:	62 d1 ed 48 15 d5    	vunpckhpd zmm2,zmm2,zmm13
  a58a4f:	62 e1 ad 40 14 ff    	vunpcklpd zmm23,zmm26,zmm7
  a58a55:	62 61 ad 40 15 df    	vunpckhpd zmm27,zmm26,zmm7
  a58a5b:	62 d1 d5 40 14 fc    	vunpcklpd zmm7,zmm21,zmm12
  a58a61:	62 51 d5 40 15 e4    	vunpckhpd zmm12,zmm21,zmm12
  a58a67:	62 31 7c 48 28 eb    	vmovaps zmm13,zmm19
  a58a6d:	62 f1 7c 48 28 1d 89 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff66e389]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a58a74:	e3 66 ff 
  a58a77:	62 52 65 48 7f e8    	vpermt2ps zmm13,zmm3,zmm8
  a58a7d:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm13
  a58a84:	ff 
  a58a85:	62 71 7c 48 28 35 b1 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff66e3b1]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a58a8c:	e3 66 ff 
  a58a8f:	62 c2 0d 48 7f d8    	vpermt2ps zmm19,zmm14,zmm8
  a58a95:	62 11 7c 48 28 c0    	vmovaps zmm8,zmm24
  a58a9b:	62 52 65 48 7f c3    	vpermt2ps zmm8,zmm3,zmm11
  a58aa1:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm8
  a58aa8:	01 
  a58aa9:	62 42 0d 48 7f c3    	vpermt2ps zmm24,zmm14,zmm11
  a58aaf:	62 41 7c 48 28 d7    	vmovaps zmm26,zmm15
  a58ab5:	62 62 65 48 7f d1    	vpermt2ps zmm26,zmm3,zmm1
  a58abb:	62 72 0d 48 7f f9    	vpermt2ps zmm15,zmm14,zmm1
  a58ac1:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm15
  a58ac8:	fe 
  a58ac9:	62 a1 7c 48 28 f1    	vmovaps zmm22,zmm17
  a58acf:	62 e2 65 48 7f f2    	vpermt2ps zmm22,zmm3,zmm2
  a58ad5:	62 e2 0d 48 7f ca    	vpermt2ps zmm17,zmm14,zmm2
  a58adb:	62 a1 7c 48 28 ef    	vmovaps zmm21,zmm23
  a58ae1:	62 e2 65 48 7f ef    	vpermt2ps zmm21,zmm3,zmm7
  a58ae7:	62 e2 0d 48 7f ff    	vpermt2ps zmm23,zmm14,zmm7
  a58aed:	62 01 7c 48 28 e3    	vmovaps zmm28,zmm27
  a58af3:	62 42 65 48 7f e4    	vpermt2ps zmm28,zmm3,zmm12
  a58af9:	62 42 0d 48 7f dc    	vpermt2ps zmm27,zmm14,zmm12
  a58aff:	62 61 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm27
  a58b06:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0xc0]
  a58b0d:	03 
  a58b0e:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a58b14:	62 f2 35 48 7f cd    	vpermt2ps zmm1,zmm9,zmm5
  a58b1a:	62 f2 7d 40 7f d5    	vpermt2ps zmm2,zmm16,zmm5
  a58b20:	62 71 7c 48 28 fa    	vmovaps zmm15,zmm2
  a58b26:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a58b2c:	62 f2 35 48 7f d4    	vpermt2ps zmm2,zmm9,zmm4
  a58b32:	62 62 7d 40 7f cc    	vpermt2ps zmm25,zmm16,zmm4
  a58b38:	62 91 7c 48 28 ed    	vmovaps zmm5,zmm29
  a58b3e:	62 f2 35 48 7f ee    	vpermt2ps zmm5,zmm9,zmm6
  a58b44:	62 62 7d 40 7f ee    	vpermt2ps zmm29,zmm16,zmm6
  a58b4a:	62 91 7c 48 28 fe    	vmovaps zmm7,zmm30
  a58b50:	62 f2 35 48 7f fe    	vpermt2ps zmm7,zmm9,zmm6
  a58b56:	62 62 7d 40 7f f6    	vpermt2ps zmm30,zmm16,zmm6
  a58b5c:	62 b1 7c 48 28 e2    	vmovaps zmm4,zmm18
  a58b62:	62 f2 35 48 7f e6    	vpermt2ps zmm4,zmm9,zmm6
  a58b68:	62 e2 7d 40 7f d6    	vpermt2ps zmm18,zmm16,zmm6
  a58b6e:	62 11 7c 48 28 c7    	vmovaps zmm8,zmm31
  a58b74:	62 72 35 48 7f c6    	vpermt2ps zmm8,zmm9,zmm6
  a58b7a:	62 62 7d 40 7f fe    	vpermt2ps zmm31,zmm16,zmm6
  a58b80:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x80]
  a58b87:	02 
  a58b88:	62 51 7c 48 28 dc    	vmovaps zmm11,zmm12
  a58b8e:	62 72 35 48 7f de    	vpermt2ps zmm11,zmm9,zmm6
  a58b94:	62 72 7d 40 7f e6    	vpermt2ps zmm12,zmm16,zmm6
  a58b9a:	62 41 7c 48 28 dc    	vmovaps zmm27,zmm12
  a58ba0:	62 31 7c 48 28 e4    	vmovaps zmm12,zmm20
  a58ba6:	62 72 35 48 7f e6    	vpermt2ps zmm12,zmm9,zmm6
  a58bac:	62 e2 7d 40 7f e6    	vpermt2ps zmm20,zmm16,zmm6
  a58bb2:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a58bb8:	62 72 7d 48 7f ec    	vpermt2ps zmm13,zmm0,zmm4
  a58bbe:	62 f2 2d 48 7f cc    	vpermt2ps zmm1,zmm10,zmm4
  a58bc4:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a58bca:	62 d2 7d 48 7f e0    	vpermt2ps zmm4,zmm0,zmm8
  a58bd0:	62 d2 2d 48 7f d0    	vpermt2ps zmm2,zmm10,zmm8
  a58bd6:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a58bdc:	62 52 7d 48 7f c3    	vpermt2ps zmm8,zmm0,zmm11
  a58be2:	62 d2 2d 48 7f eb    	vpermt2ps zmm5,zmm10,zmm11
  a58be8:	62 71 7c 48 28 df    	vmovaps zmm11,zmm7
  a58bee:	62 52 7d 48 7f dc    	vpermt2ps zmm11,zmm0,zmm12
  a58bf4:	62 d2 2d 48 7f fc    	vpermt2ps zmm7,zmm10,zmm12
  a58bfa:	62 32 7d 48 7f fa    	vpermt2ps zmm15,zmm0,zmm18
  a58c00:	62 02 7d 48 7f cf    	vpermt2ps zmm25,zmm0,zmm31
  a58c06:	62 02 7d 48 7f eb    	vpermt2ps zmm29,zmm0,zmm27
  a58c0c:	62 22 7d 48 7f f4    	vpermt2ps zmm30,zmm0,zmm20
  a58c12:	62 c1 95 48 14 e0    	vunpcklpd zmm20,zmm13,zmm8
  a58c18:	62 51 95 48 15 d0    	vunpckhpd zmm10,zmm13,zmm8
  a58c1e:	62 d1 dd 48 14 c3    	vunpcklpd zmm0,zmm4,zmm11
  a58c24:	62 51 dd 48 15 c3    	vunpckhpd zmm8,zmm4,zmm11
  a58c2a:	62 f1 f5 48 14 e5    	vunpcklpd zmm4,zmm1,zmm5
  a58c30:	62 71 f5 48 15 cd    	vunpckhpd zmm9,zmm1,zmm5
  a58c36:	62 f1 ed 48 14 cf    	vunpcklpd zmm1,zmm2,zmm7
  a58c3c:	62 f1 ed 48 15 d7    	vunpckhpd zmm2,zmm2,zmm7
  a58c42:	62 01 85 48 14 dd    	vunpcklpd zmm27,zmm15,zmm29
  a58c48:	62 91 85 48 15 ed    	vunpckhpd zmm5,zmm15,zmm29
  a58c4e:	62 11 b5 40 14 de    	vunpcklpd zmm11,zmm25,zmm30
  a58c54:	62 11 b5 40 15 e6    	vunpckhpd zmm12,zmm25,zmm30
  a58c5a:	62 a1 7c 48 28 d4    	vmovaps zmm18,zmm20
  a58c60:	62 e2 65 48 7f d0    	vpermt2ps zmm18,zmm3,zmm0
  a58c66:	62 e2 0d 48 7f e0    	vpermt2ps zmm20,zmm14,zmm0
  a58c6c:	62 d1 7c 48 28 f2    	vmovaps zmm6,zmm10
  a58c72:	62 d2 65 48 7f f0    	vpermt2ps zmm6,zmm3,zmm8
  a58c78:	62 52 0d 48 7f d0    	vpermt2ps zmm10,zmm14,zmm8
  a58c7e:	62 61 7c 48 28 fc    	vmovaps zmm31,zmm4
  a58c84:	62 62 65 48 7f f9    	vpermt2ps zmm31,zmm3,zmm1
  a58c8a:	62 f2 0d 48 7f e1    	vpermt2ps zmm4,zmm14,zmm1
  a58c90:	62 51 7c 48 28 f9    	vmovaps zmm15,zmm9
  a58c96:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a58c9c:	62 72 0d 48 7f ca    	vpermt2ps zmm9,zmm14,zmm2
  a58ca2:	62 91 7c 48 28 fb    	vmovaps zmm7,zmm27
  a58ca8:	62 d2 65 48 7f fb    	vpermt2ps zmm7,zmm3,zmm11
  a58cae:	62 42 0d 48 7f db    	vpermt2ps zmm27,zmm14,zmm11
  a58cb4:	62 61 7c 48 28 ed    	vmovaps zmm29,zmm5
  a58cba:	62 42 65 48 7f ec    	vpermt2ps zmm29,zmm3,zmm12
  a58cc0:	62 d2 0d 48 7f ec    	vpermt2ps zmm5,zmm14,zmm12
  a58cc6:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a58ccd:	62 71 7c 48 10 41 03 	vmovups zmm8,ZMMWORD PTR [rcx+0xc0]
  a58cd4:	62 f1 7c 48 10 41 0c 	vmovups zmm0,ZMMWORD PTR [rcx+0x300]
  a58cdb:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  a58ce2:	62 71 4c 40 59 d8    	vmulps zmm11,zmm22,zmm0
  a58ce8:	62 72 05 48 bc d9    	vfnmadd231ps zmm11,zmm15,zmm1
  a58cee:	62 61 04 48 59 f0    	vmulps zmm30,zmm15,zmm0
  a58cf4:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  a58cfb:	62 22 75 48 b8 f6    	vfmadd231ps zmm30,zmm1,zmm22
  a58d01:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a58d08:	62 e1 3c 40 59 f0    	vmulps zmm22,zmm24,zmm0
  a58d0e:	62 e2 2d 48 bc f1    	vfnmadd231ps zmm22,zmm10,zmm1
  a58d14:	62 71 2c 48 59 f8    	vmulps zmm15,zmm10,zmm0
  a58d1a:	62 f1 7c 48 10 41 12 	vmovups zmm0,ZMMWORD PTR [rcx+0x480]
  a58d21:	62 12 75 48 b8 f8    	vfmadd231ps zmm15,zmm1,zmm24
  a58d27:	62 f1 7c 48 10 49 13 	vmovups zmm1,ZMMWORD PTR [rcx+0x4c0]
  a58d2e:	62 71 44 40 59 d0    	vmulps zmm10,zmm23,zmm0
  a58d34:	62 72 25 40 bc d1    	vfnmadd231ps zmm10,zmm27,zmm1
  a58d3a:	62 61 24 40 59 c0    	vmulps zmm24,zmm27,zmm0
  a58d40:	62 f1 7c 48 10 51 08 	vmovups zmm2,ZMMWORD PTR [rcx+0x200]
  a58d47:	62 22 75 48 b8 c7    	vfmadd231ps zmm24,zmm1,zmm23
  a58d4d:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  a58d54:	62 f1 2c 40 59 c2    	vmulps zmm0,zmm26,zmm2
  a58d5a:	62 f2 05 40 bc c1    	vfnmadd231ps zmm0,zmm31,zmm1
  a58d60:	62 61 04 40 59 ca    	vmulps zmm25,zmm31,zmm2
  a58d66:	62 f1 7c 48 10 51 14 	vmovups zmm2,ZMMWORD PTR [rcx+0x500]
  a58d6d:	62 02 75 48 b8 ca    	vfmadd231ps zmm25,zmm1,zmm26
  a58d73:	62 f1 7c 48 10 49 15 	vmovups zmm1,ZMMWORD PTR [rcx+0x540]
  a58d7a:	62 71 1c 40 59 ea    	vmulps zmm13,zmm28,zmm2
  a58d80:	62 72 15 40 bc e9    	vfnmadd231ps zmm13,zmm29,zmm1
  a58d86:	62 61 14 40 59 d2    	vmulps zmm26,zmm29,zmm2
  a58d8c:	62 f1 7c 48 10 51 0e 	vmovups zmm2,ZMMWORD PTR [rcx+0x380]
  a58d93:	62 02 75 48 b8 d4    	vfmadd231ps zmm26,zmm1,zmm28
  a58d99:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a58da0:	62 61 74 40 59 da    	vmulps zmm27,zmm17,zmm2
  a58da6:	62 62 35 48 bc d9    	vfnmadd231ps zmm27,zmm9,zmm1
  a58dac:	62 f1 34 48 59 d2    	vmulps zmm2,zmm9,zmm2
  a58db2:	62 71 7c 48 10 71 04 	vmovups zmm14,ZMMWORD PTR [rcx+0x100]
  a58db9:	62 b2 75 48 b8 d1    	vfmadd231ps zmm2,zmm1,zmm17
  a58dbf:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  a58dc6:	62 d1 64 40 59 dc    	vmulps zmm3,zmm19,zmm12
  a58dcc:	62 d2 5d 40 bc d8    	vfnmadd231ps zmm3,zmm20,zmm8
  a58dd2:	62 51 5c 40 59 cc    	vmulps zmm9,zmm20,zmm12
  a58dd8:	62 71 7c 48 10 61 10 	vmovups zmm12,ZMMWORD PTR [rcx+0x400]
  a58ddf:	62 32 3d 48 b8 cb    	vfmadd231ps zmm9,zmm8,zmm19
  a58de5:	62 71 7c 48 10 41 11 	vmovups zmm8,ZMMWORD PTR [rcx+0x440]
  a58dec:	62 c1 54 40 59 e4    	vmulps zmm20,zmm21,zmm12
  a58df2:	62 c2 45 48 bc e0    	vfnmadd231ps zmm20,zmm7,zmm8
  a58df8:	62 51 44 48 59 e4    	vmulps zmm12,zmm7,zmm12
  a58dfe:	62 f1 7c 48 10 79 0a 	vmovups zmm7,ZMMWORD PTR [rcx+0x280]
  a58e05:	62 32 3d 48 b8 e5    	vfmadd231ps zmm12,zmm8,zmm21
  a58e0b:	62 71 7c 48 10 41 0b 	vmovups zmm8,ZMMWORD PTR [rcx+0x2c0]
  a58e12:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x40]
  a58e19:	01 
  a58e1a:	62 c1 7c 40 59 fe    	vmulps zmm23,zmm16,zmm14
  a58e20:	62 e2 4d 48 bc f9    	vfnmadd231ps zmm23,zmm6,zmm1
  a58e26:	62 d1 4c 48 59 f6    	vmulps zmm6,zmm6,zmm14
  a58e2c:	62 71 7c 48 10 71 16 	vmovups zmm14,ZMMWORD PTR [rcx+0x580]
  a58e33:	62 b2 75 48 b8 f0    	vfmadd231ps zmm6,zmm1,zmm16
  a58e39:	62 f1 7c 48 10 49 17 	vmovups zmm1,ZMMWORD PTR [rcx+0x5c0]
  a58e40:	62 e1 7c 48 10 0c 24 	vmovups zmm17,ZMMWORD PTR [rsp]
  a58e47:	62 c1 74 40 59 ee    	vmulps zmm21,zmm17,zmm14
  a58e4d:	62 e2 55 48 bc e9    	vfnmadd231ps zmm21,zmm5,zmm1
  a58e53:	62 d1 54 48 59 ee    	vmulps zmm5,zmm5,zmm14
  a58e59:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp-0x40]
  a58e60:	ff 
  a58e61:	62 51 7c 40 58 f3    	vaddps zmm14,zmm16,zmm11
  a58e67:	62 b2 75 48 b8 e9    	vfmadd231ps zmm5,zmm1,zmm17
  a58e6d:	62 d1 4c 40 58 ca    	vaddps zmm1,zmm22,zmm10
  a58e73:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp-0x80]
  a58e7a:	fe 
  a58e7b:	62 e1 74 40 59 df    	vmulps zmm19,zmm17,zmm7
  a58e81:	62 c2 5d 48 bc d8    	vfnmadd231ps zmm19,zmm4,zmm8
  a58e87:	62 f1 5c 48 59 e7    	vmulps zmm4,zmm4,zmm7
  a58e8d:	62 41 7c 48 58 e5    	vaddps zmm28,zmm0,zmm13
  a58e93:	62 b2 3d 48 b8 e1    	vfmadd231ps zmm4,zmm8,zmm17
  a58e99:	62 e1 24 40 58 cb    	vaddps zmm17,zmm27,zmm3
  a58e9f:	62 21 5c 40 58 ef    	vaddps zmm29,zmm20,zmm23
  a58ea5:	62 d1 7c 48 5c fd    	vsubps zmm7,zmm0,zmm13
  a58eab:	62 51 6c 48 58 e9    	vaddps zmm13,zmm2,zmm9
  a58eb1:	62 d1 6c 48 5c c1    	vsubps zmm0,zmm2,zmm9
  a58eb7:	62 b1 54 40 58 d3    	vaddps zmm2,zmm21,zmm19
  a58ebd:	62 31 5c 40 5c c7    	vsubps zmm8,zmm20,zmm23
  a58ec3:	62 71 54 48 58 cc    	vaddps zmm9,zmm5,zmm4
  a58ec9:	62 e1 54 48 5c fc    	vsubps zmm23,zmm5,zmm4
  a58ecf:	62 a1 0c 40 58 e2    	vaddps zmm20,zmm30,zmm18
  a58ed5:	62 51 7c 40 5c db    	vsubps zmm11,zmm16,zmm11
  a58edb:	62 81 04 48 58 c0    	vaddps zmm16,zmm15,zmm24
  a58ee1:	62 11 04 48 5c f8    	vsubps zmm15,zmm15,zmm24
  a58ee7:	62 01 34 40 58 c2    	vaddps zmm24,zmm25,zmm26
  a58eed:	62 01 34 40 5c ca    	vsubps zmm25,zmm25,zmm26
  a58ef3:	62 61 1c 48 58 d6    	vaddps zmm26,zmm12,zmm6
  a58ef9:	62 01 64 48 5c db    	vsubps zmm27,zmm3,zmm27
  a58eff:	62 91 34 40 58 db    	vaddps zmm3,zmm25,zmm27
  a58f05:	62 61 1c 48 5c fe    	vsubps zmm31,zmm12,zmm6
  a58f0b:	62 a1 64 40 5c ed    	vsubps zmm21,zmm19,zmm21
  a58f11:	62 b1 04 40 58 e5    	vaddps zmm4,zmm31,zmm21
  a58f17:	62 e1 64 48 5c dc    	vsubps zmm19,zmm3,zmm4
  a58f1d:	62 f1 64 48 58 dc    	vaddps zmm3,zmm3,zmm4
  a58f23:	62 f1 44 48 58 e0    	vaddps zmm4,zmm7,zmm0
  a58f29:	62 01 6c 40 5c f6    	vsubps zmm30,zmm18,zmm30
  a58f2f:	62 b1 3c 48 58 f7    	vaddps zmm6,zmm8,zmm23
  a58f35:	62 a1 2c 48 5c f6    	vsubps zmm22,zmm10,zmm22
  a58f3b:	62 f1 5c 48 58 ee    	vaddps zmm5,zmm4,zmm6
  a58f41:	62 71 5c 48 5c d6    	vsubps zmm10,zmm4,zmm6
  a58f47:	62 31 1c 40 58 e1    	vaddps zmm12,zmm28,zmm17
  a58f4d:	62 a1 1c 40 5c c9    	vsubps zmm17,zmm28,zmm17
  a58f53:	62 61 14 40 58 e2    	vaddps zmm28,zmm29,zmm2
  a58f59:	62 f1 14 40 5c d2    	vsubps zmm2,zmm29,zmm2
  a58f5f:	62 f1 0c 48 58 e1    	vaddps zmm4,zmm14,zmm1
  a58f65:	62 61 0c 48 5c e9    	vsubps zmm29,zmm14,zmm1
  a58f6b:	62 d1 3c 40 58 cd    	vaddps zmm1,zmm24,zmm13
  a58f71:	62 d1 3c 40 5c f5    	vsubps zmm6,zmm24,zmm13
  a58f77:	62 41 2c 40 58 c1    	vaddps zmm24,zmm26,zmm9
  a58f7d:	62 51 2c 40 5c c9    	vsubps zmm9,zmm26,zmm9
  a58f83:	62 51 4c 48 5c e9    	vsubps zmm13,zmm6,zmm9
  a58f89:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm13
  a58f90:	ff 
  a58f91:	62 41 4c 48 58 d1    	vaddps zmm26,zmm6,zmm9
  a58f97:	62 31 7c 40 58 ec    	vaddps zmm13,zmm16,zmm20
  a58f9d:	62 a1 5c 40 5c c0    	vsubps zmm16,zmm20,zmm16
  a58fa3:	62 e1 74 40 58 e2    	vaddps zmm20,zmm17,zmm2
  a58fa9:	62 f1 74 40 5c d2    	vsubps zmm2,zmm17,zmm2
  a58faf:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a58fb6:	fe 
  a58fb7:	62 51 24 48 58 f7    	vaddps zmm14,zmm11,zmm15
  a58fbd:	62 51 24 48 5c ff    	vsubps zmm15,zmm11,zmm15
  a58fc3:	62 81 1c 48 58 d4    	vaddps zmm18,zmm12,zmm28
  a58fc9:	62 f1 44 48 5c d0    	vsubps zmm2,zmm7,zmm0
  a58fcf:	62 91 74 48 58 f0    	vaddps zmm6,zmm1,zmm24
  a58fd5:	62 a1 3c 48 5c ff    	vsubps zmm23,zmm8,zmm23
  a58fdb:	62 11 4c 40 58 c6    	vaddps zmm8,zmm22,zmm30
  a58fe1:	62 a1 0c 40 5c f6    	vsubps zmm22,zmm30,zmm22
  a58fe7:	62 e2 7d 48 18 0d 6f 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff61c46f]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a58fee:	c4 61 ff 
  a58ff1:	62 b1 7c 48 28 f9    	vmovaps zmm7,zmm17
  a58ff7:	62 d2 55 48 ac fe    	vfnmadd213ps zmm7,zmm5,zmm14
  a58ffd:	62 f2 7d 48 18 05 cd 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff61c2cd]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a59004:	c2 61 ff 
  a59007:	62 71 64 40 59 c8    	vmulps zmm9,zmm19,zmm0
  a5900d:	62 01 34 40 5c cb    	vsubps zmm25,zmm25,zmm27
  a59013:	62 c1 44 48 58 d9    	vaddps zmm19,zmm7,zmm9
  a59019:	62 21 04 40 5c dd    	vsubps zmm27,zmm31,zmm21
  a5901f:	62 31 7c 48 28 d9    	vmovaps zmm11,zmm17
  a59025:	62 52 65 48 ac d8    	vfnmadd213ps zmm11,zmm3,zmm8
  a5902b:	62 71 2c 48 59 d0    	vmulps zmm10,zmm10,zmm0
  a59031:	62 01 74 48 5c c0    	vsubps zmm24,zmm1,zmm24
  a59037:	62 c1 24 48 5c ea    	vsubps zmm21,zmm11,zmm10
  a5903d:	62 11 1c 48 5c e4    	vsubps zmm12,zmm12,zmm28
  a59043:	62 21 7c 48 28 e1    	vmovaps zmm28,zmm17
  a59049:	62 02 5d 40 ac e5    	vfnmadd213ps zmm28,zmm20,zmm29
  a5904f:	62 51 44 48 5c c9    	vsubps zmm9,zmm7,zmm9
  a59055:	62 21 7c 48 28 f1    	vmovaps zmm30,zmm17
  a5905b:	62 22 2d 40 ac f0    	vfnmadd213ps zmm30,zmm26,zmm16
  a59061:	62 51 24 48 58 da    	vaddps zmm11,zmm11,zmm10
  a59067:	62 21 6c 48 58 ff    	vaddps zmm31,zmm2,zmm23
  a5906d:	62 b1 14 40 58 fc    	vaddps zmm7,zmm29,zmm20
  a59073:	62 81 04 48 58 e7    	vaddps zmm20,zmm15,zmm31
  a59079:	62 91 7c 40 58 ca    	vaddps zmm1,zmm16,zmm26
  a5907f:	62 01 34 40 58 d3    	vaddps zmm26,zmm25,zmm27
  a59085:	62 42 75 40 ac ff    	vfnmadd213ps zmm31,zmm17,zmm15
  a5908b:	62 01 4c 40 58 ea    	vaddps zmm29,zmm22,zmm26
  a59091:	62 01 34 40 5c cb    	vsubps zmm25,zmm25,zmm27
  a59097:	62 31 7c 48 28 d1    	vmovaps zmm10,zmm17
  a5909d:	62 72 6d 40 ac d4    	vfnmadd213ps zmm10,zmm18,zmm4
  a590a3:	62 71 3c 40 59 f8    	vmulps zmm15,zmm24,zmm0
  a590a9:	62 22 75 40 ac d6    	vfnmadd213ps zmm26,zmm17,zmm22
  a590af:	62 c1 2c 48 58 f7    	vaddps zmm22,zmm10,zmm15
  a590b5:	62 a1 6c 48 5c ff    	vsubps zmm23,zmm2,zmm23
  a590bb:	62 41 7c 48 28 dd    	vmovaps zmm27,zmm13
  a590c1:	62 c2 4d 48 ac cd    	vfnmadd213ps zmm17,zmm6,zmm13
  a590c7:	62 71 1c 48 59 e0    	vmulps zmm12,zmm12,zmm0
  a590cd:	62 c1 2c 48 5c c7    	vsubps zmm16,zmm10,zmm15
  a590d3:	62 41 74 40 5c c4    	vsubps zmm24,zmm17,zmm12
  a590d9:	62 c1 74 40 58 cc    	vaddps zmm17,zmm17,zmm12
  a590df:	62 71 0c 48 58 f5    	vaddps zmm14,zmm14,zmm5
  a590e5:	62 f1 7c 48 59 6c 24 	vmulps zmm5,zmm0,ZMMWORD PTR [rsp-0x40]
  a590ec:	ff 
  a590ed:	62 71 3c 48 58 fb    	vaddps zmm15,zmm8,zmm3
  a590f3:	62 71 1c 40 5c c5    	vsubps zmm8,zmm28,zmm5
  a590f9:	62 f1 7c 48 59 54 24 	vmulps zmm2,zmm0,ZMMWORD PTR [rsp-0x80]
  a59100:	fe 
  a59101:	62 71 1c 40 58 d5    	vaddps zmm10,zmm28,zmm5
  a59107:	62 71 0c 40 58 ea    	vaddps zmm13,zmm30,zmm2
  a5910d:	62 f1 34 40 59 d8    	vmulps zmm3,zmm25,zmm0
  a59113:	62 71 0c 40 5c e2    	vsubps zmm12,zmm30,zmm2
  a59119:	62 f1 04 40 58 d3    	vaddps zmm2,zmm31,zmm3
  a5911f:	62 f1 44 40 59 e8    	vmulps zmm5,zmm23,zmm0
  a59125:	62 f1 04 40 5c db    	vsubps zmm3,zmm31,zmm3
  a5912b:	62 e1 2c 40 5c fd    	vsubps zmm23,zmm26,zmm5
  a59131:	62 f1 2c 40 58 ed    	vaddps zmm5,zmm26,zmm5
  a59137:	62 b1 5c 48 58 e2    	vaddps zmm4,zmm4,zmm18
  a5913d:	62 f1 24 40 58 c6    	vaddps zmm0,zmm27,zmm6
  a59143:	62 f3 7d 48 19 e6 02 	vextractf32x4 xmm6,zmm4,0x2
  a5914a:	62 e1 7c 48 28 15 ac 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff63a1ac]        # 93300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x207b0>
  a59151:	a1 63 ff 
  a59154:	62 f2 6d 40 7f e0    	vpermt2ps zmm4,zmm18,zmm0
  a5915a:	62 f1 7c 48 11 24 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm4
  a59161:	62 f3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm0,0x2
  a59168:	c5 c8 14 c0          	vunpcklps xmm0,xmm6,xmm0
  a5916c:	c5 f8 11 44 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm0
  a59172:	62 e3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm19,0x2
  a59179:	62 a2 6d 40 7f dd    	vpermt2ps zmm19,zmm18,zmm21
  a5917f:	62 e1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x50],zmm19
  a59186:	50 00 00 00 
  a5918a:	62 e3 7d 48 19 ec 02 	vextractf32x4 xmm4,zmm21,0x2
  a59191:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  a59195:	c5 f8 11 84 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm0
  a5919c:	00 00 
  a5919e:	62 73 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm8,0x2
  a591a5:	62 52 6d 40 7f c5    	vpermt2ps zmm8,zmm18,zmm13
  a591ab:	62 71 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xa0],zmm8
  a591b2:	a0 00 00 00 
  a591b6:	62 73 7d 48 19 ec 02 	vextractf32x4 xmm4,zmm13,0x2
  a591bd:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  a591c1:	c5 f8 11 84 16 e0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xe0],xmm0
  a591c8:	00 00 
  a591ca:	62 e3 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm20,0x2
  a591d1:	62 82 6d 40 7f e5    	vpermt2ps zmm20,zmm18,zmm29
  a591d7:	62 e1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm20
  a591de:	f0 00 00 00 
  a591e2:	62 63 7d 48 19 ec 02 	vextractf32x4 xmm4,zmm29,0x2
  a591e9:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  a591ed:	c5 f8 11 84 16 30 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x130],xmm0
  a591f4:	00 00 
  a591f6:	62 e3 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm22,0x2
  a591fd:	62 82 6d 40 7f f0    	vpermt2ps zmm22,zmm18,zmm24
  a59203:	62 e1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm22
  a5920a:	05 
  a5920b:	62 63 7d 48 19 c4 02 	vextractf32x4 xmm4,zmm24,0x2
  a59212:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  a59216:	c5 f8 11 84 16 80 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x180],xmm0
  a5921d:	00 00 
  a5921f:	62 73 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm9,0x2
  a59226:	62 52 6d 40 7f cb    	vpermt2ps zmm9,zmm18,zmm11
  a5922c:	62 71 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x190],zmm9
  a59233:	90 01 00 00 
  a59237:	62 73 7d 48 19 dc 02 	vextractf32x4 xmm4,zmm11,0x2
  a5923e:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  a59242:	c5 f8 11 84 16 d0 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x1d0],xmm0
  a59249:	00 00 
  a5924b:	62 f3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm7,0x2
  a59252:	62 f2 6d 40 7f f9    	vpermt2ps zmm7,zmm18,zmm1
  a59258:	62 f1 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm7
  a5925f:	e0 01 00 00 
  a59263:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a5926a:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a5926e:	c5 f8 11 84 16 20 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x220],xmm0
  a59275:	00 00 
  a59277:	62 f3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm2,0x2
  a5927e:	62 b2 6d 40 7f d7    	vpermt2ps zmm2,zmm18,zmm23
  a59284:	62 f1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x230],zmm2
  a5928b:	30 02 00 00 
  a5928f:	62 e3 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm23,0x2
  a59296:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a5929a:	c5 f8 11 84 16 70 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x270],xmm0
  a592a1:	00 00 
  a592a3:	62 e3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm16,0x2
  a592aa:	62 a2 6d 40 7f c1    	vpermt2ps zmm16,zmm18,zmm17
  a592b0:	62 e1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm16
  a592b7:	0a 
  a592b8:	62 e3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm17,0x2
  a592bf:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a592c3:	c5 f8 11 84 16 c0 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x2c0],xmm0
  a592ca:	00 00 
  a592cc:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a592d3:	62 52 6d 40 7f f7    	vpermt2ps zmm14,zmm18,zmm15
  a592d9:	62 71 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm14
  a592e0:	d0 02 00 00 
  a592e4:	62 73 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm15,0x2
  a592eb:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a592ef:	c5 f8 11 84 16 10 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x310],xmm0
  a592f6:	00 00 
  a592f8:	62 73 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm10,0x2
  a592ff:	62 52 6d 40 7f d4    	vpermt2ps zmm10,zmm18,zmm12
  a59305:	62 71 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x320],zmm10
  a5930c:	20 03 00 00 
  a59310:	62 73 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm12,0x2
  a59317:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a5931b:	c5 f8 11 84 16 60 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x360],xmm0
  a59322:	00 00 
  a59324:	62 f3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm3,0x2
  a5932b:	62 f2 6d 40 7f dd    	vpermt2ps zmm3,zmm18,zmm5
  a59331:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x370],zmm3
  a59338:	70 03 00 00 
  a5933c:	62 f3 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm5,0x2
  a59343:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a59347:	c5 f8 11 84 16 b0 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x3b0],xmm0
  a5934e:	00 00 
  a59350:	48 81 c2 c0 03 00 00 	add    rdx,0x3c0
  a59357:	48 39 d0             	cmp    rax,rdx
  a5935a:	0f 85 70 f1 ff ff    	jne    a584d0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  a59360:	48 81 c4 08 01 00 00 	add    rsp,0x108
  a59367:	c5 f8 77             	vzeroupper
  a5936a:	c3                   	ret
