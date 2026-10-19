
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a64440 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a64440:	48 81 ec c8 00 00 00 	sub    rsp,0xc8
  a64447:	62 f1 7c 48 10 07    	vmovups zmm0,ZMMWORD PTR [rdi]
  a6444d:	c5 fc 10 4f 40       	vmovups ymm1,YMMWORD PTR [rdi+0x40]
  a64452:	62 f1 7c 48 28 15 e4 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff62fbe4]        # 94040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x214f0>
  a64459:	fb 62 ff 
  a6445c:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a64462:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a64468:	62 f1 7c 48 28 2d 0e 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff62fc0e]        # 94080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21530>
  a6446f:	fc 62 ff 
  a64472:	62 f2 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm1
  a64478:	62 f1 7c 48 10 b7 60 	vmovups zmm6,ZMMWORD PTR [rdi+0x60]
  a6447f:	00 00 00 
  a64482:	c5 fc 10 8f a0 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xa0]
  a64489:	00 
  a6448a:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a64490:	62 f2 6d 48 7f f9    	vpermt2ps zmm7,zmm2,zmm1
  a64496:	62 f2 55 48 7f f1    	vpermt2ps zmm6,zmm5,zmm1
  a6449c:	62 71 7c 48 10 47 03 	vmovups zmm8,ZMMWORD PTR [rdi+0xc0]
  a644a3:	c5 fc 10 8f 00 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x100]
  a644aa:	00 
  a644ab:	62 d1 7c 48 28 e0    	vmovaps zmm4,zmm8
  a644b1:	62 f2 6d 48 7f e1    	vpermt2ps zmm4,zmm2,zmm1
  a644b7:	62 72 55 48 7f c1    	vpermt2ps zmm8,zmm5,zmm1
  a644bd:	62 71 7c 48 10 8f 20 	vmovups zmm9,ZMMWORD PTR [rdi+0x120]
  a644c4:	01 00 00 
  a644c7:	c5 fc 10 8f 60 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x160]
  a644ce:	00 
  a644cf:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a644d5:	62 72 6d 48 7f d1    	vpermt2ps zmm10,zmm2,zmm1
  a644db:	62 72 55 48 7f c9    	vpermt2ps zmm9,zmm5,zmm1
  a644e1:	62 71 7c 48 10 5f 06 	vmovups zmm11,ZMMWORD PTR [rdi+0x180]
  a644e8:	c5 fc 10 8f c0 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x1c0]
  a644ef:	00 
  a644f0:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a644f6:	62 72 6d 48 7f e1    	vpermt2ps zmm12,zmm2,zmm1
  a644fc:	62 72 55 48 7f d9    	vpermt2ps zmm11,zmm5,zmm1
  a64502:	62 71 7c 48 10 af e0 	vmovups zmm13,ZMMWORD PTR [rdi+0x1e0]
  a64509:	01 00 00 
  a6450c:	c5 fc 10 8f 20 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x220]
  a64513:	00 
  a64514:	62 51 7c 48 28 f5    	vmovaps zmm14,zmm13
  a6451a:	62 72 6d 48 7f f1    	vpermt2ps zmm14,zmm2,zmm1
  a64520:	62 72 55 48 7f e9    	vpermt2ps zmm13,zmm5,zmm1
  a64526:	62 71 7c 48 10 7f 09 	vmovups zmm15,ZMMWORD PTR [rdi+0x240]
  a6452d:	c5 fc 10 8f 80 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x280]
  a64534:	00 
  a64535:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a6453b:	62 e2 6d 48 7f c1    	vpermt2ps zmm16,zmm2,zmm1
  a64541:	62 72 55 48 7f f9    	vpermt2ps zmm15,zmm5,zmm1
  a64547:	62 e1 7c 48 10 8f a0 	vmovups zmm17,ZMMWORD PTR [rdi+0x2a0]
  a6454e:	02 00 00 
  a64551:	c5 fc 10 8f e0 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x2e0]
  a64558:	00 
  a64559:	62 f2 75 40 77 d1    	vpermi2ps zmm2,zmm17,zmm1
  a6455f:	62 e2 55 48 7f c9    	vpermt2ps zmm17,zmm5,zmm1
  a64565:	62 c1 64 48 58 d4    	vaddps zmm18,zmm3,zmm12
  a6456b:	62 a1 5c 48 58 d8    	vaddps zmm19,zmm4,zmm16
  a64571:	62 a1 6c 40 58 e3    	vaddps zmm20,zmm18,zmm19
  a64577:	62 c1 44 48 58 ee    	vaddps zmm21,zmm7,zmm14
  a6457d:	62 e1 2c 48 58 f2    	vaddps zmm22,zmm10,zmm2
  a64583:	62 a1 54 40 58 fe    	vaddps zmm23,zmm21,zmm22
  a64589:	62 b1 5c 40 58 cf    	vaddps zmm1,zmm20,zmm23
  a6458f:	62 41 7c 48 58 c3    	vaddps zmm24,zmm0,zmm11
  a64595:	62 41 3c 48 58 cf    	vaddps zmm25,zmm8,zmm15
  a6459b:	62 01 3c 40 58 d1    	vaddps zmm26,zmm24,zmm25
  a645a1:	62 41 4c 48 58 dd    	vaddps zmm27,zmm6,zmm13
  a645a7:	62 21 34 48 58 e1    	vaddps zmm28,zmm9,zmm17
  a645ad:	62 01 24 40 58 ec    	vaddps zmm29,zmm27,zmm28
  a645b3:	62 91 2c 40 58 ed    	vaddps zmm5,zmm26,zmm29
  a645b9:	62 d1 64 48 5c dc    	vsubps zmm3,zmm3,zmm12
  a645bf:	62 51 3c 48 5c ff    	vsubps zmm15,zmm8,zmm15
  a645c5:	62 41 64 48 58 f7    	vaddps zmm30,zmm3,zmm15
  a645cb:	62 d1 44 48 5c fe    	vsubps zmm7,zmm7,zmm14
  a645d1:	62 d1 4c 48 5c f5    	vsubps zmm6,zmm6,zmm13
  a645d7:	62 71 44 48 58 c6    	vaddps zmm8,zmm7,zmm6
  a645dd:	62 72 7d 48 18 2d b5 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff610db5]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a645e4:	0d 61 ff 
  a645e7:	62 51 3c 48 59 f5    	vmulps zmm14,zmm8,zmm13
  a645ed:	62 31 34 48 5c c1    	vsubps zmm8,zmm9,zmm17
  a645f3:	62 f1 2c 48 5c d2    	vsubps zmm2,zmm10,zmm2
  a645f9:	62 71 3c 48 5c ca    	vsubps zmm9,zmm8,zmm2
  a645ff:	62 51 34 48 59 cd    	vmulps zmm9,zmm9,zmm13
  a64605:	62 c1 0c 48 58 c9    	vaddps zmm17,zmm14,zmm9
  a6460b:	62 31 0c 40 58 e1    	vaddps zmm12,zmm30,zmm17
  a64611:	62 d1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm11
  a64617:	62 f1 7c 40 5c e4    	vsubps zmm4,zmm16,zmm4
  a6461d:	62 71 5c 48 58 d8    	vaddps zmm11,zmm4,zmm0
  a64623:	62 f1 4c 48 5c f7    	vsubps zmm6,zmm6,zmm7
  a64629:	62 d1 4c 48 59 f5    	vmulps zmm6,zmm6,zmm13
  a6462f:	62 d1 6c 48 58 d0    	vaddps zmm2,zmm2,zmm8
  a64635:	62 d1 6c 48 59 d5    	vmulps zmm2,zmm2,zmm13
  a6463b:	62 f1 4c 48 5c fa    	vsubps zmm7,zmm6,zmm2
  a64641:	62 71 24 48 58 c7    	vaddps zmm8,zmm11,zmm7
  a64647:	62 a1 6c 40 5c c3    	vsubps zmm16,zmm18,zmm19
  a6464d:	62 81 24 40 5c d4    	vsubps zmm18,zmm27,zmm28
  a64653:	62 31 7c 40 58 ea    	vaddps zmm13,zmm16,zmm18
  a64659:	62 01 3c 40 5c c1    	vsubps zmm24,zmm24,zmm25
  a6465f:	62 a1 4c 40 5c ed    	vsubps zmm21,zmm22,zmm21
  a64665:	62 11 54 40 58 d0    	vaddps zmm10,zmm21,zmm24
  a6466b:	62 d1 64 48 5c df    	vsubps zmm3,zmm3,zmm15
  a64671:	62 f1 4c 48 58 d2    	vaddps zmm2,zmm6,zmm2
  a64677:	62 e1 64 48 58 da    	vaddps zmm19,zmm3,zmm2
  a6467d:	62 f1 7c 48 5c e4    	vsubps zmm4,zmm0,zmm4
  a64683:	62 d1 34 48 5c f6    	vsubps zmm6,zmm9,zmm14
  a64689:	62 f1 5c 48 58 c6    	vaddps zmm0,zmm4,zmm6
  a6468f:	62 a1 5c 40 5c e7    	vsubps zmm20,zmm20,zmm23
  a64695:	62 11 2c 40 5c f5    	vsubps zmm14,zmm26,zmm29
  a6469b:	62 a1 0c 40 5c f1    	vsubps zmm22,zmm30,zmm17
  a646a1:	62 e1 24 48 5c cf    	vsubps zmm17,zmm11,zmm7
  a646a7:	62 b1 7c 40 5c fa    	vsubps zmm7,zmm16,zmm18
  a646ad:	62 a1 3c 40 5c c5    	vsubps zmm16,zmm24,zmm21
  a646b3:	62 f1 64 48 5c d2    	vsubps zmm2,zmm3,zmm2
  a646b9:	62 f1 5c 48 5c de    	vsubps zmm3,zmm4,zmm6
  a646bf:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a646c6:	fe 
  a646c7:	62 e1 7c 48 28 15 af 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6628af]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a646ce:	28 66 ff 
  a646d1:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a646d5:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a646db:	62 f2 6d 40 7f dc    	vpermt2ps zmm3,zmm18,zmm4
  a646e1:	62 71 7c 48 28 0d d5 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6628d5]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a646e8:	28 66 ff 
  a646eb:	62 f2 35 48 7f cc    	vpermt2ps zmm1,zmm9,zmm4
  a646f1:	62 51 7c 48 28 dc    	vmovaps zmm11,zmm12
  a646f7:	62 72 6d 40 7f dc    	vpermt2ps zmm11,zmm18,zmm4
  a646fd:	62 72 35 48 7f e4    	vpermt2ps zmm12,zmm9,zmm4
  a64703:	62 41 7c 48 28 c5    	vmovaps zmm24,zmm13
  a64709:	62 62 6d 40 7f c4    	vpermt2ps zmm24,zmm18,zmm4
  a6470f:	62 72 35 48 7f ec    	vpermt2ps zmm13,zmm9,zmm4
  a64715:	62 21 7c 48 28 cb    	vmovaps zmm25,zmm19
  a6471b:	62 62 6d 40 7f cc    	vpermt2ps zmm25,zmm18,zmm4
  a64721:	62 e2 35 48 7f dc    	vpermt2ps zmm19,zmm9,zmm4
  a64727:	62 b1 7c 48 28 f4    	vmovaps zmm6,zmm20
  a6472d:	62 f2 6d 40 7f f4    	vpermt2ps zmm6,zmm18,zmm4
  a64733:	62 e2 35 48 7f e4    	vpermt2ps zmm20,zmm9,zmm4
  a64739:	62 21 7c 48 28 d6    	vmovaps zmm26,zmm22
  a6473f:	62 62 6d 40 7f d4    	vpermt2ps zmm26,zmm18,zmm4
  a64745:	62 e2 35 48 7f f4    	vpermt2ps zmm22,zmm9,zmm4
  a6474b:	62 61 7c 48 28 df    	vmovaps zmm27,zmm7
  a64751:	62 62 6d 40 7f dc    	vpermt2ps zmm27,zmm18,zmm4
  a64757:	62 f2 35 48 7f fc    	vpermt2ps zmm7,zmm9,zmm4
  a6475d:	62 61 7c 48 28 e2    	vmovaps zmm28,zmm2
  a64763:	62 62 6d 40 7f e4    	vpermt2ps zmm28,zmm18,zmm4
  a64769:	62 f2 35 48 7f d4    	vpermt2ps zmm2,zmm9,zmm4
  a6476f:	62 e1 7c 48 28 2d 87 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff662787]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a64776:	27 66 ff 
  a64779:	62 61 7c 48 28 eb    	vmovaps zmm29,zmm3
  a6477f:	62 62 55 40 7f ee    	vpermt2ps zmm29,zmm21,zmm6
  a64785:	62 e1 7c 48 28 3d b1 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6627b1]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a6478c:	27 66 ff 
  a6478f:	62 f2 45 40 7f de    	vpermt2ps zmm3,zmm23,zmm6
  a64795:	62 41 7c 48 28 f3    	vmovaps zmm30,zmm11
  a6479b:	62 02 55 40 7f f2    	vpermt2ps zmm30,zmm21,zmm26
  a647a1:	62 12 45 40 7f da    	vpermt2ps zmm11,zmm23,zmm26
  a647a7:	62 91 7c 48 28 f0    	vmovaps zmm6,zmm24
  a647ad:	62 92 55 40 7f f3    	vpermt2ps zmm6,zmm21,zmm27
  a647b3:	62 02 45 40 7f c3    	vpermt2ps zmm24,zmm23,zmm27
  a647b9:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a647bf:	62 02 55 40 7f d4    	vpermt2ps zmm26,zmm21,zmm28
  a647c5:	62 02 45 40 7f cc    	vpermt2ps zmm25,zmm23,zmm28
  a647cb:	62 b2 55 40 7f cc    	vpermt2ps zmm1,zmm21,zmm20
  a647d1:	62 32 55 40 7f e6    	vpermt2ps zmm12,zmm21,zmm22
  a647d7:	62 72 55 40 7f ef    	vpermt2ps zmm13,zmm21,zmm7
  a647dd:	62 e2 55 40 7f da    	vpermt2ps zmm19,zmm21,zmm2
  a647e3:	62 f1 95 40 14 d6    	vunpcklpd zmm2,zmm29,zmm6
  a647e9:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a647f0:	ff 
  a647f1:	62 f1 95 40 15 f6    	vunpckhpd zmm6,zmm29,zmm6
  a647f7:	62 01 8d 40 14 fa    	vunpcklpd zmm31,zmm30,zmm26
  a647fd:	62 81 8d 40 15 f2    	vunpckhpd zmm22,zmm30,zmm26
  a64803:	62 91 e5 48 14 d0    	vunpcklpd zmm2,zmm3,zmm24
  a64809:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a64810:	01 
  a64811:	62 91 e5 48 15 d0    	vunpckhpd zmm2,zmm3,zmm24
  a64817:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a6481e:	02 
  a6481f:	62 01 a5 48 14 e1    	vunpcklpd zmm28,zmm11,zmm25
  a64825:	62 81 a5 48 15 e1    	vunpckhpd zmm20,zmm11,zmm25
  a6482b:	62 d1 f5 48 14 fd    	vunpcklpd zmm7,zmm1,zmm13
  a64831:	62 d1 f5 48 15 cd    	vunpckhpd zmm1,zmm1,zmm13
  a64837:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a6483e:	62 21 9d 48 14 db    	vunpcklpd zmm27,zmm12,zmm19
  a64844:	62 21 9d 48 15 d3    	vunpckhpd zmm26,zmm12,zmm19
  a6484a:	62 61 7c 48 28 c5    	vmovaps zmm24,zmm5
  a64850:	62 62 6d 40 7f c4    	vpermt2ps zmm24,zmm18,zmm4
  a64856:	62 f2 35 48 7f ec    	vpermt2ps zmm5,zmm9,zmm4
  a6485c:	62 41 7c 48 28 c8    	vmovaps zmm25,zmm8
  a64862:	62 62 6d 40 7f cc    	vpermt2ps zmm25,zmm18,zmm4
  a64868:	62 72 35 48 7f c4    	vpermt2ps zmm8,zmm9,zmm4
  a6486e:	62 41 7c 48 28 f2    	vmovaps zmm30,zmm10
  a64874:	62 62 6d 40 7f f4    	vpermt2ps zmm30,zmm18,zmm4
  a6487a:	62 72 35 48 7f d4    	vpermt2ps zmm10,zmm9,zmm4
  a64880:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a64886:	62 72 6d 40 7f dc    	vpermt2ps zmm11,zmm18,zmm4
  a6488c:	62 f2 35 48 7f c4    	vpermt2ps zmm0,zmm9,zmm4
  a64892:	62 d1 7c 48 28 de    	vmovaps zmm3,zmm14
  a64898:	62 72 6d 40 7f f4    	vpermt2ps zmm14,zmm18,zmm4
  a6489e:	62 f2 35 48 7f dc    	vpermt2ps zmm3,zmm9,zmm4
  a648a4:	62 31 7c 48 28 f9    	vmovaps zmm15,zmm17
  a648aa:	62 72 6d 40 7f fc    	vpermt2ps zmm15,zmm18,zmm4
  a648b0:	62 e2 35 48 7f cc    	vpermt2ps zmm17,zmm9,zmm4
  a648b6:	62 a1 7c 48 28 d8    	vmovaps zmm19,zmm16
  a648bc:	62 e2 6d 40 7f c4    	vpermt2ps zmm16,zmm18,zmm4
  a648c2:	62 e2 35 48 7f dc    	vpermt2ps zmm19,zmm9,zmm4
  a648c8:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a648cf:	fe 
  a648d0:	62 e2 6d 48 77 d4    	vpermi2ps zmm18,zmm2,zmm4
  a648d6:	62 f2 35 48 7f d4    	vpermt2ps zmm2,zmm9,zmm4
  a648dc:	62 71 7c 48 28 2d 1a 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff66251a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a648e3:	25 66 ff 
  a648e6:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a648ed:	ff 
  a648ee:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a648f4:	62 92 15 48 7f cf    	vpermt2ps zmm1,zmm13,zmm31
  a648fa:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a64901:	fe 
  a64902:	62 61 7c 48 28 2d 34 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff662534]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a64909:	25 66 ff 
  a6490c:	62 92 15 40 7f e7    	vpermt2ps zmm4,zmm29,zmm31
  a64912:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a64919:	ff 
  a6491a:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a64920:	62 32 15 48 7f ce    	vpermt2ps zmm9,zmm13,zmm22
  a64926:	62 b2 15 40 7f f6    	vpermt2ps zmm6,zmm29,zmm22
  a6492c:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a64933:	01 
  a64934:	62 61 7c 48 28 f9    	vmovaps zmm31,zmm1
  a6493a:	62 02 15 48 7f fc    	vpermt2ps zmm31,zmm13,zmm28
  a64940:	62 92 15 40 7f cc    	vpermt2ps zmm1,zmm29,zmm28
  a64946:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a6494d:	01 
  a6494e:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x80]
  a64955:	02 
  a64956:	62 e1 7c 48 28 f4    	vmovaps zmm22,zmm4
  a6495c:	62 a2 15 48 7f f4    	vpermt2ps zmm22,zmm13,zmm20
  a64962:	62 b2 15 40 7f e4    	vpermt2ps zmm4,zmm29,zmm20
  a64968:	62 71 7c 48 28 e7    	vmovaps zmm12,zmm7
  a6496e:	62 12 15 48 7f e3    	vpermt2ps zmm12,zmm13,zmm27
  a64974:	62 92 15 40 7f fb    	vpermt2ps zmm7,zmm29,zmm27
  a6497a:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a64981:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a64987:	62 82 15 48 7f e2    	vpermt2ps zmm20,zmm13,zmm26
  a6498d:	62 92 15 40 7f ca    	vpermt2ps zmm1,zmm29,zmm26
  a64993:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a6499a:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a649a0:	62 42 55 40 7f d6    	vpermt2ps zmm26,zmm21,zmm14
  a649a6:	62 42 45 40 7f c6    	vpermt2ps zmm24,zmm23,zmm14
  a649ac:	62 11 7c 48 28 f1    	vmovaps zmm14,zmm25
  a649b2:	62 52 55 40 7f f7    	vpermt2ps zmm14,zmm21,zmm15
  a649b8:	62 42 45 40 7f cf    	vpermt2ps zmm25,zmm23,zmm15
  a649be:	62 01 7c 48 28 de    	vmovaps zmm27,zmm30
  a649c4:	62 22 55 40 7f d8    	vpermt2ps zmm27,zmm21,zmm16
  a649ca:	62 22 45 40 7f f0    	vpermt2ps zmm30,zmm23,zmm16
  a649d0:	62 c1 7c 48 28 c3    	vmovaps zmm16,zmm11
  a649d6:	62 32 45 40 7f da    	vpermt2ps zmm11,zmm23,zmm18
  a649dc:	62 a2 55 40 7f c2    	vpermt2ps zmm16,zmm21,zmm18
  a649e2:	62 f2 55 40 7f eb    	vpermt2ps zmm5,zmm21,zmm3
  a649e8:	62 32 55 40 7f c1    	vpermt2ps zmm8,zmm21,zmm17
  a649ee:	62 32 55 40 7f d3    	vpermt2ps zmm10,zmm21,zmm19
  a649f4:	62 f2 55 40 7f c2    	vpermt2ps zmm0,zmm21,zmm2
  a649fa:	62 11 ad 40 14 fb    	vunpcklpd zmm15,zmm26,zmm27
  a64a00:	62 01 ad 40 15 d3    	vunpckhpd zmm26,zmm26,zmm27
  a64a06:	62 a1 8d 48 14 c8    	vunpcklpd zmm17,zmm14,zmm16
  a64a0c:	62 a1 8d 48 15 d0    	vunpckhpd zmm18,zmm14,zmm16
  a64a12:	62 11 bd 40 14 f6    	vunpcklpd zmm14,zmm24,zmm30
  a64a18:	62 81 bd 40 15 c6    	vunpckhpd zmm16,zmm24,zmm30
  a64a1e:	62 c1 b5 40 14 eb    	vunpcklpd zmm21,zmm25,zmm11
  a64a24:	62 51 b5 40 15 db    	vunpckhpd zmm11,zmm25,zmm11
  a64a2a:	62 41 d5 48 14 da    	vunpcklpd zmm27,zmm5,zmm10
  a64a30:	62 51 d5 48 15 d2    	vunpckhpd zmm10,zmm5,zmm10
  a64a36:	62 61 bd 48 14 c0    	vunpcklpd zmm24,zmm8,zmm0
  a64a3c:	62 f1 bd 48 15 c0    	vunpckhpd zmm0,zmm8,zmm0
  a64a42:	62 d1 7c 48 28 cf    	vmovaps zmm1,zmm15
  a64a48:	62 b2 15 48 7f c9    	vpermt2ps zmm1,zmm13,zmm17
  a64a4e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a64a55:	02 
  a64a56:	62 32 15 40 7f f9    	vpermt2ps zmm15,zmm29,zmm17
  a64a5c:	62 11 7c 48 28 c2    	vmovaps zmm8,zmm26
  a64a62:	62 32 15 48 7f c2    	vpermt2ps zmm8,zmm13,zmm18
  a64a68:	62 22 15 40 7f d2    	vpermt2ps zmm26,zmm29,zmm18
  a64a6e:	62 41 7c 48 28 e6    	vmovaps zmm28,zmm14
  a64a74:	62 22 15 48 7f e5    	vpermt2ps zmm28,zmm13,zmm21
  a64a7a:	62 32 15 40 7f f5    	vpermt2ps zmm14,zmm29,zmm21
  a64a80:	62 a1 7c 48 28 f8    	vmovaps zmm23,zmm16
  a64a86:	62 c2 15 48 7f fb    	vpermt2ps zmm23,zmm13,zmm11
  a64a8c:	62 c2 15 40 7f c3    	vpermt2ps zmm16,zmm29,zmm11
  a64a92:	62 81 7c 48 28 cb    	vmovaps zmm17,zmm27
  a64a98:	62 82 15 48 7f c8    	vpermt2ps zmm17,zmm13,zmm24
  a64a9e:	62 02 15 40 7f d8    	vpermt2ps zmm27,zmm29,zmm24
  a64aa4:	62 72 2d 48 77 e8    	vpermi2ps zmm13,zmm10,zmm0
  a64aaa:	62 72 15 40 7f d0    	vpermt2ps zmm10,zmm29,zmm0
  a64ab0:	62 61 7c 48 10 4a 02 	vmovups zmm25,ZMMWORD PTR [rdx+0x80]
  a64ab7:	62 61 7c 48 10 42 03 	vmovups zmm24,ZMMWORD PTR [rdx+0xc0]
  a64abe:	62 f1 7c 48 10 4a 04 	vmovups zmm1,ZMMWORD PTR [rdx+0x100]
  a64ac5:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a64acc:	62 f1 7c 48 10 42 06 	vmovups zmm0,ZMMWORD PTR [rdx+0x180]
  a64ad3:	62 61 7c 48 10 6a 0c 	vmovups zmm29,ZMMWORD PTR [rdx+0x300]
  a64ada:	62 61 7c 48 10 72 0d 	vmovups zmm30,ZMMWORD PTR [rdx+0x340]
  a64ae1:	62 11 4c 40 59 dd    	vmulps zmm11,zmm22,zmm29
  a64ae7:	62 12 45 40 bc de    	vfnmadd231ps zmm11,zmm23,zmm30
  a64aed:	62 81 44 40 59 fd    	vmulps zmm23,zmm23,zmm29
  a64af3:	62 61 7c 48 10 6a 07 	vmovups zmm29,ZMMWORD PTR [rdx+0x1c0]
  a64afa:	62 a2 0d 40 b8 fe    	vfmadd231ps zmm23,zmm30,zmm22
  a64b00:	62 61 7c 48 10 72 08 	vmovups zmm30,ZMMWORD PTR [rdx+0x200]
  a64b07:	62 e1 4c 48 59 f0    	vmulps zmm22,zmm6,zmm0
  a64b0d:	62 82 2d 40 bc f5    	vfnmadd231ps zmm22,zmm26,zmm29
  a64b13:	62 61 2c 40 59 d0    	vmulps zmm26,zmm26,zmm0
  a64b19:	62 f1 7c 48 10 42 12 	vmovups zmm0,ZMMWORD PTR [rdx+0x480]
  a64b20:	62 62 15 40 b8 d6    	vfmadd231ps zmm26,zmm29,zmm6
  a64b26:	62 61 7c 48 10 6a 13 	vmovups zmm29,ZMMWORD PTR [rdx+0x4c0]
  a64b2d:	62 f1 44 48 59 f0    	vmulps zmm6,zmm7,zmm0
  a64b33:	62 92 25 40 bc f5    	vfnmadd231ps zmm6,zmm27,zmm29
  a64b39:	62 61 24 40 59 d8    	vmulps zmm27,zmm27,zmm0
  a64b3f:	62 f1 7c 48 10 42 09 	vmovups zmm0,ZMMWORD PTR [rdx+0x240]
  a64b46:	62 62 15 40 b8 df    	vfmadd231ps zmm27,zmm29,zmm7
  a64b4c:	62 61 7c 48 10 6a 0a 	vmovups zmm29,ZMMWORD PTR [rdx+0x280]
  a64b53:	62 91 04 40 59 fe    	vmulps zmm7,zmm31,zmm30
  a64b59:	62 f2 1d 40 bc f8    	vfnmadd231ps zmm7,zmm28,zmm0
  a64b5f:	62 01 1c 40 59 e6    	vmulps zmm28,zmm28,zmm30
  a64b65:	62 61 7c 48 10 72 14 	vmovups zmm30,ZMMWORD PTR [rdx+0x500]
  a64b6c:	62 02 7d 48 b8 e7    	vfmadd231ps zmm28,zmm0,zmm31
  a64b72:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a64b79:	62 01 5c 40 59 fe    	vmulps zmm31,zmm20,zmm30
  a64b7f:	62 62 15 48 bc f8    	vfnmadd231ps zmm31,zmm13,zmm0
  a64b85:	62 11 14 48 59 ee    	vmulps zmm13,zmm13,zmm30
  a64b8b:	62 61 7c 48 10 72 0e 	vmovups zmm30,ZMMWORD PTR [rdx+0x380]
  a64b92:	62 32 7d 48 b8 ec    	vfmadd231ps zmm13,zmm0,zmm20
  a64b98:	62 f1 7c 48 10 42 0f 	vmovups zmm0,ZMMWORD PTR [rdx+0x3c0]
  a64b9f:	62 81 5c 48 59 de    	vmulps zmm19,zmm4,zmm30
  a64ba5:	62 e2 7d 40 bc d8    	vfnmadd231ps zmm19,zmm16,zmm0
  a64bab:	62 81 7c 40 59 c6    	vmulps zmm16,zmm16,zmm30
  a64bb1:	62 e1 7c 48 10 62 0b 	vmovups zmm20,ZMMWORD PTR [rdx+0x2c0]
  a64bb8:	62 e2 7d 48 b8 c4    	vfmadd231ps zmm16,zmm0,zmm4
  a64bbe:	62 f1 7c 48 10 42 10 	vmovups zmm0,ZMMWORD PTR [rdx+0x400]
  a64bc5:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a64bcc:	ff 
  a64bcd:	62 91 6c 48 59 d9    	vmulps zmm3,zmm2,zmm25
  a64bd3:	62 92 05 48 bc d8    	vfnmadd231ps zmm3,zmm15,zmm24
  a64bd9:	62 01 04 48 59 c9    	vmulps zmm25,zmm15,zmm25
  a64bdf:	62 71 7c 48 10 7a 11 	vmovups zmm15,ZMMWORD PTR [rdx+0x440]
  a64be6:	62 62 3d 40 b8 ca    	vfmadd231ps zmm25,zmm24,zmm2
  a64bec:	62 61 7c 48 10 42 16 	vmovups zmm24,ZMMWORD PTR [rdx+0x580]
  a64bf3:	62 61 1c 48 59 f0    	vmulps zmm30,zmm12,zmm0
  a64bf9:	62 42 75 40 bc f7    	vfnmadd231ps zmm30,zmm17,zmm15
  a64bff:	62 f1 74 40 59 d0    	vmulps zmm2,zmm17,zmm0
  a64c05:	62 e1 7c 48 10 4a 17 	vmovups zmm17,ZMMWORD PTR [rdx+0x5c0]
  a64c0c:	62 d2 05 48 b8 d4    	vfmadd231ps zmm2,zmm15,zmm12
  a64c12:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp-0x80]
  a64c19:	fe 
  a64c1a:	62 c1 54 48 58 eb    	vaddps zmm21,zmm5,zmm11
  a64c20:	62 f1 34 48 59 c1    	vmulps zmm0,zmm9,zmm1
  a64c26:	62 b2 3d 48 bc c2    	vfnmadd231ps zmm0,zmm8,zmm18
  a64c2c:	62 f1 3c 48 59 c9    	vmulps zmm1,zmm8,zmm1
  a64c32:	62 71 4c 40 58 e6    	vaddps zmm12,zmm22,zmm6
  a64c38:	62 d2 6d 40 b8 c9    	vfmadd231ps zmm1,zmm18,zmm9
  a64c3e:	62 d1 54 40 58 e4    	vaddps zmm4,zmm21,zmm12
  a64c44:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a64c4b:	ff 
  a64c4c:	62 f1 7c 48 10 24 24 	vmovups zmm4,ZMMWORD PTR [rsp]
  a64c53:	62 11 5c 48 59 c8    	vmulps zmm9,zmm4,zmm24
  a64c59:	62 32 2d 48 bc c9    	vfnmadd231ps zmm9,zmm10,zmm17
  a64c5f:	62 11 2c 48 59 d0    	vmulps zmm10,zmm10,zmm24
  a64c65:	62 01 44 48 58 c7    	vaddps zmm24,zmm7,zmm31
  a64c6b:	62 72 75 40 b8 d4    	vfmadd231ps zmm10,zmm17,zmm4
  a64c71:	62 f1 64 40 58 e3    	vaddps zmm4,zmm19,zmm3
  a64c77:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x40]
  a64c7e:	01 
  a64c7f:	62 11 3c 48 59 fd    	vmulps zmm15,zmm8,zmm29
  a64c85:	62 32 0d 48 bc fc    	vfnmadd231ps zmm15,zmm14,zmm20
  a64c8b:	62 11 0c 48 59 f5    	vmulps zmm14,zmm14,zmm29
  a64c91:	62 e1 3c 40 58 cc    	vaddps zmm17,zmm24,zmm4
  a64c97:	62 e1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm17
  a64c9e:	62 52 5d 40 b8 f0    	vfmadd231ps zmm14,zmm20,zmm8
  a64ca4:	62 e1 0c 40 58 e0    	vaddps zmm20,zmm30,zmm0
  a64caa:	62 c1 34 48 58 cf    	vaddps zmm17,zmm9,zmm15
  a64cb0:	62 01 44 48 5c ff    	vsubps zmm31,zmm7,zmm31
  a64cb6:	62 91 7c 40 58 f9    	vaddps zmm7,zmm16,zmm25
  a64cbc:	62 81 7c 40 5c c1    	vsubps zmm16,zmm16,zmm25
  a64cc2:	62 21 5c 40 58 c9    	vaddps zmm25,zmm20,zmm17
  a64cc8:	62 71 0c 40 5c c0    	vsubps zmm8,zmm30,zmm0
  a64cce:	62 41 2c 48 58 f6    	vaddps zmm30,zmm10,zmm14
  a64cd4:	62 c1 2c 48 5c d6    	vsubps zmm18,zmm10,zmm14
  a64cda:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a64ce1:	02 
  a64ce2:	62 71 44 40 58 d0    	vaddps zmm10,zmm23,zmm0
  a64ce8:	62 51 54 48 5c f3    	vsubps zmm14,zmm5,zmm11
  a64cee:	62 11 2c 40 58 db    	vaddps zmm11,zmm26,zmm27
  a64cf4:	62 01 2c 40 5c d3    	vsubps zmm26,zmm26,zmm27
  a64cfa:	62 41 1c 40 58 dd    	vaddps zmm27,zmm28,zmm13
  a64d00:	62 41 1c 40 5c e5    	vsubps zmm28,zmm28,zmm13
  a64d06:	62 71 6c 48 58 e9    	vaddps zmm13,zmm2,zmm1
  a64d0c:	62 b1 64 48 5c db    	vsubps zmm3,zmm3,zmm19
  a64d12:	62 e1 1c 40 58 db    	vaddps zmm19,zmm28,zmm3
  a64d18:	62 f1 6c 48 5c e9    	vsubps zmm5,zmm2,zmm1
  a64d1e:	62 d1 04 48 5c c9    	vsubps zmm1,zmm15,zmm9
  a64d24:	62 f1 54 48 58 d1    	vaddps zmm2,zmm5,zmm1
  a64d2a:	62 71 64 40 5c ca    	vsubps zmm9,zmm19,zmm2
  a64d30:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm9
  a64d37:	01 
  a64d38:	62 61 64 40 58 ea    	vaddps zmm29,zmm19,zmm2
  a64d3e:	62 31 04 40 58 f8    	vaddps zmm15,zmm31,zmm16
  a64d44:	62 a1 7c 48 5c df    	vsubps zmm19,zmm0,zmm23
  a64d4a:	62 a1 3c 48 58 fa    	vaddps zmm23,zmm8,zmm18
  a64d50:	62 b1 4c 48 5c c6    	vsubps zmm0,zmm6,zmm22
  a64d56:	62 a1 04 48 58 f7    	vaddps zmm22,zmm15,zmm23
  a64d5c:	62 31 04 48 5c cf    	vsubps zmm9,zmm15,zmm23
  a64d62:	62 c1 24 48 58 fa    	vaddps zmm23,zmm11,zmm10
  a64d68:	62 71 3c 40 5c fc    	vsubps zmm15,zmm24,zmm4
  a64d6e:	62 61 24 40 58 c7    	vaddps zmm24,zmm27,zmm7
  a64d74:	62 b1 5c 40 5c e1    	vsubps zmm4,zmm20,zmm17
  a64d7a:	62 91 14 48 58 d6    	vaddps zmm2,zmm13,zmm30
  a64d80:	62 51 54 40 5c e4    	vsubps zmm12,zmm21,zmm12
  a64d86:	62 81 0c 48 58 e2    	vaddps zmm20,zmm14,zmm26
  a64d8c:	62 f1 24 40 5c ff    	vsubps zmm7,zmm27,zmm7
  a64d92:	62 f2 7d 48 18 35 c4 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff6106c4]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a64d99:	06 61 ff 
  a64d9c:	62 11 14 48 5c ee    	vsubps zmm13,zmm13,zmm30
  a64da2:	62 c1 44 48 5c cd    	vsubps zmm17,zmm7,zmm13
  a64da8:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm17
  a64daf:	fe 
  a64db0:	62 c1 44 48 58 cd    	vaddps zmm17,zmm7,zmm13
  a64db6:	62 61 7c 48 28 de    	vmovaps zmm27,zmm6
  a64dbc:	62 51 2c 48 5c d3    	vsubps zmm10,zmm10,zmm11
  a64dc2:	62 61 04 48 58 f4    	vaddps zmm30,zmm15,zmm4
  a64dc8:	62 e1 04 48 5c ec    	vsubps zmm21,zmm15,zmm4
  a64dce:	62 31 7c 48 58 db    	vaddps zmm11,zmm0,zmm19
  a64dd4:	62 91 0c 48 5c fa    	vsubps zmm7,zmm14,zmm26
  a64dda:	62 71 7c 48 28 f6    	vmovaps zmm14,zmm6
  a64de0:	62 21 04 40 5c d0    	vsubps zmm26,zmm31,zmm16
  a64de6:	62 71 7c 48 28 ee    	vmovaps zmm13,zmm6
  a64dec:	62 31 3c 48 5c c2    	vsubps zmm8,zmm8,zmm18
  a64df2:	62 71 7c 48 28 fe    	vmovaps zmm15,zmm6
  a64df8:	62 f1 64 40 5c c0    	vsubps zmm0,zmm19,zmm0
  a64dfe:	62 c1 2c 40 58 c0    	vaddps zmm16,zmm26,zmm8
  a64e04:	62 e1 1c 40 5c d3    	vsubps zmm18,zmm28,zmm3
  a64e0a:	62 b1 44 48 58 d8    	vaddps zmm3,zmm7,zmm16
  a64e10:	62 f1 54 48 5c e9    	vsubps zmm5,zmm5,zmm1
  a64e16:	62 f1 6c 40 58 cd    	vaddps zmm1,zmm18,zmm5
  a64e1c:	62 e2 4d 48 ac c7    	vfnmadd213ps zmm16,zmm6,zmm7
  a64e22:	62 e1 7c 48 28 de    	vmovaps zmm19,zmm6
  a64e28:	62 61 7c 48 28 e6    	vmovaps zmm28,zmm6
  a64e2e:	62 f2 75 48 ac f0    	vfnmadd213ps zmm6,zmm1,zmm0
  a64e34:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a64e3a:	62 61 3c 40 58 fa    	vaddps zmm31,zmm24,zmm2
  a64e40:	62 f1 3c 40 5c d2    	vsubps zmm2,zmm24,zmm2
  a64e46:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a64e4d:	62 01 7c 48 58 c1    	vaddps zmm24,zmm0,zmm25
  a64e53:	62 01 7c 48 5c c9    	vsubps zmm25,zmm0,zmm25
  a64e59:	62 22 4d 40 ac dc    	vfnmadd213ps zmm27,zmm22,zmm20
  a64e5f:	62 f2 7d 48 18 05 6b 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff61046b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a64e66:	04 61 ff 
  a64e69:	62 f1 7c 48 59 4c 24 	vmulps zmm1,zmm0,ZMMWORD PTR [rsp+0x40]
  a64e70:	01 
  a64e71:	62 f1 24 40 58 f9    	vaddps zmm7,zmm27,zmm1
  a64e77:	62 f1 24 40 5c c9    	vsubps zmm1,zmm27,zmm1
  a64e7d:	62 52 15 40 ac f3    	vfnmadd213ps zmm14,zmm29,zmm11
  a64e83:	62 71 34 48 59 c8    	vmulps zmm9,zmm9,zmm0
  a64e89:	62 41 0c 48 5c d9    	vsubps zmm27,zmm14,zmm9
  a64e8f:	62 51 0c 48 58 f1    	vaddps zmm14,zmm14,zmm9
  a64e95:	62 52 0d 40 ac ec    	vfnmadd213ps zmm13,zmm30,zmm12
  a64e9b:	62 11 1c 48 58 ce    	vaddps zmm9,zmm12,zmm30
  a64ea1:	62 52 75 40 ac fa    	vfnmadd213ps zmm15,zmm17,zmm10
  a64ea7:	62 31 2c 48 58 d1    	vaddps zmm10,zmm10,zmm17
  a64ead:	62 f1 6c 40 5c ed    	vsubps zmm5,zmm18,zmm5
  a64eb3:	62 51 2c 40 5c c0    	vsubps zmm8,zmm26,zmm8
  a64eb9:	62 71 7c 48 59 64 24 	vmulps zmm12,zmm0,ZMMWORD PTR [rsp-0x80]
  a64ec0:	fe 
  a64ec1:	62 e1 54 40 59 c8    	vmulps zmm17,zmm21,zmm0
  a64ec7:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp-0x40]
  a64ece:	ff 
  a64ecf:	62 82 3d 40 ac da    	vfnmadd213ps zmm19,zmm24,zmm26
  a64ed5:	62 f1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm0
  a64edb:	62 e1 34 40 59 d0    	vmulps zmm18,zmm25,zmm0
  a64ee1:	62 f1 54 48 59 e8    	vmulps zmm5,zmm5,zmm0
  a64ee7:	62 f1 3c 48 59 c0    	vmulps zmm0,zmm8,zmm0
  a64eed:	62 71 64 40 58 c2    	vaddps zmm8,zmm19,zmm2
  a64ef3:	62 22 05 40 ac e7    	vfnmadd213ps zmm28,zmm31,zmm23
  a64ef9:	62 f1 64 40 5c d2    	vsubps zmm2,zmm19,zmm2
  a64eff:	62 a1 1c 40 5c da    	vsubps zmm19,zmm28,zmm18
  a64f05:	62 a1 1c 40 58 d2    	vaddps zmm18,zmm28,zmm18
  a64f0b:	62 a1 5c 40 58 e6    	vaddps zmm20,zmm20,zmm22
  a64f11:	62 11 24 48 58 dd    	vaddps zmm11,zmm11,zmm29
  a64f17:	62 c1 14 48 5c ec    	vsubps zmm21,zmm13,zmm12
  a64f1d:	62 51 14 48 58 e4    	vaddps zmm12,zmm13,zmm12
  a64f23:	62 31 04 48 58 e9    	vaddps zmm13,zmm15,zmm17
  a64f29:	62 31 04 48 5c f9    	vsubps zmm15,zmm15,zmm17
  a64f2f:	62 e1 7c 40 58 cd    	vaddps zmm17,zmm16,zmm5
  a64f35:	62 f1 7c 40 5c ed    	vsubps zmm5,zmm16,zmm5
  a64f3b:	62 e1 4c 48 5c c0    	vsubps zmm16,zmm6,zmm0
  a64f41:	62 f1 4c 48 58 c0    	vaddps zmm0,zmm6,zmm0
  a64f47:	62 91 2c 40 58 f0    	vaddps zmm6,zmm26,zmm24
  a64f4d:	62 81 44 40 58 f7    	vaddps zmm22,zmm23,zmm31
  a64f53:	62 e1 7c 48 28 3d 63 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff62f163]        # 940c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21570>
  a64f5a:	f1 62 ff 
  a64f5d:	62 b2 45 40 7f f6    	vpermt2ps zmm6,zmm23,zmm22
  a64f63:	62 92 45 40 7f fb    	vpermt2ps zmm7,zmm23,zmm27
  a64f69:	62 c2 45 40 7f ed    	vpermt2ps zmm21,zmm23,zmm13
  a64f6f:	62 f2 45 40 7f dc    	vpermt2ps zmm3,zmm23,zmm4
  a64f75:	62 32 45 40 7f c3    	vpermt2ps zmm8,zmm23,zmm19
  a64f7b:	62 d2 45 40 7f ce    	vpermt2ps zmm1,zmm23,zmm14
  a64f81:	62 52 45 40 7f ca    	vpermt2ps zmm9,zmm23,zmm10
  a64f87:	62 a2 45 40 7f c8    	vpermt2ps zmm17,zmm23,zmm16
  a64f8d:	62 b2 45 40 7f d2    	vpermt2ps zmm2,zmm23,zmm18
  a64f93:	62 c2 45 40 7f e3    	vpermt2ps zmm20,zmm23,zmm11
  a64f99:	62 52 45 40 7f e7    	vpermt2ps zmm12,zmm23,zmm15
  a64f9f:	62 f2 45 40 7f e8    	vpermt2ps zmm5,zmm23,zmm0
  a64fa5:	62 f1 7c 48 11 36    	vmovups ZMMWORD PTR [rsi],zmm6
  a64fab:	62 f1 7c 48 11 7e 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm7
  a64fb2:	62 e1 7c 48 11 6e 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm21
  a64fb9:	62 f1 7c 48 11 5e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm3
  a64fc0:	62 71 7c 48 11 46 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm8
  a64fc7:	62 f1 7c 48 11 4e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm1
  a64fce:	62 71 7c 48 11 4e 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm9
  a64fd5:	62 e1 7c 48 11 4e 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm17
  a64fdc:	62 f1 7c 48 11 56 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm2
  a64fe3:	62 e1 7c 48 11 66 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm20
  a64fea:	62 71 7c 48 11 66 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm12
  a64ff1:	62 f1 7c 48 11 6e 0b 	vmovups ZMMWORD PTR [rsi+0x2c0],zmm5
  a64ff8:	48 81 c4 c8 00 00 00 	add    rsp,0xc8
  a64fff:	c5 f8 77             	vzeroupper
  a65002:	c3                   	ret
