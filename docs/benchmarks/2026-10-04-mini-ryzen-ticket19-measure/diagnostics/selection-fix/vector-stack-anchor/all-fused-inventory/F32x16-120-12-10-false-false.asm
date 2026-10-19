
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a59380 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a59380:	48 81 ec c8 01 00 00 	sub    rsp,0x1c8
  a59387:	62 f1 7c 48 10 2f    	vmovups zmm5,ZMMWORD PTR [rdi]
  a5938d:	c5 f8 10 5f 40       	vmovups xmm3,XMMWORD PTR [rdi+0x40]
  a59392:	62 f1 7c 48 28 0d a4 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff639fa4]        # 93340 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x207f0>
  a59399:	9f 63 ff 
  a5939c:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a593a2:	62 f2 75 48 7f c3    	vpermt2ps zmm0,zmm1,zmm3
  a593a8:	62 f1 7c 48 28 15 ce 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff639fce]        # 93380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20830>
  a593af:	9f 63 ff 
  a593b2:	62 f2 6d 48 7f eb    	vpermt2ps zmm5,zmm2,zmm3
  a593b8:	62 71 7c 48 10 87 50 	vmovups zmm8,ZMMWORD PTR [rdi+0x50]
  a593bf:	00 00 00 
  a593c2:	c5 f8 10 a7 90 00 00 	vmovups xmm4,XMMWORD PTR [rdi+0x90]
  a593c9:	00 
  a593ca:	62 c1 7c 48 28 e0    	vmovaps zmm20,zmm8
  a593d0:	62 e2 75 48 7f e4    	vpermt2ps zmm20,zmm1,zmm4
  a593d6:	62 72 6d 48 7f c4    	vpermt2ps zmm8,zmm2,zmm4
  a593dc:	62 f1 7c 48 10 b7 a0 	vmovups zmm6,ZMMWORD PTR [rdi+0xa0]
  a593e3:	00 00 00 
  a593e6:	c5 f8 10 a7 e0 00 00 	vmovups xmm4,XMMWORD PTR [rdi+0xe0]
  a593ed:	00 
  a593ee:	62 71 7c 48 28 e6    	vmovaps zmm12,zmm6
  a593f4:	62 72 75 48 7f e4    	vpermt2ps zmm12,zmm1,zmm4
  a593fa:	62 f2 6d 48 7f f4    	vpermt2ps zmm6,zmm2,zmm4
  a59400:	62 71 7c 48 10 8f f0 	vmovups zmm9,ZMMWORD PTR [rdi+0xf0]
  a59407:	00 00 00 
  a5940a:	c5 f8 10 bf 30 01 00 	vmovups xmm7,XMMWORD PTR [rdi+0x130]
  a59411:	00 
  a59412:	62 d1 7c 48 28 e1    	vmovaps zmm4,zmm9
  a59418:	62 f2 75 48 7f e7    	vpermt2ps zmm4,zmm1,zmm7
  a5941e:	62 72 6d 48 7f cf    	vpermt2ps zmm9,zmm2,zmm7
  a59424:	62 71 7c 48 10 57 05 	vmovups zmm10,ZMMWORD PTR [rdi+0x140]
  a5942b:	c5 f8 10 bf 80 01 00 	vmovups xmm7,XMMWORD PTR [rdi+0x180]
  a59432:	00 
  a59433:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a59439:	62 72 75 48 7f ff    	vpermt2ps zmm15,zmm1,zmm7
  a5943f:	62 72 6d 48 7f d7    	vpermt2ps zmm10,zmm2,zmm7
  a59445:	62 71 7c 48 10 b7 90 	vmovups zmm14,ZMMWORD PTR [rdi+0x190]
  a5944c:	01 00 00 
  a5944f:	c5 f8 10 bf d0 01 00 	vmovups xmm7,XMMWORD PTR [rdi+0x1d0]
  a59456:	00 
  a59457:	62 51 7c 48 28 ee    	vmovaps zmm13,zmm14
  a5945d:	62 72 75 48 7f ef    	vpermt2ps zmm13,zmm1,zmm7
  a59463:	62 72 6d 48 7f f7    	vpermt2ps zmm14,zmm2,zmm7
  a59469:	62 71 7c 48 10 9f e0 	vmovups zmm11,ZMMWORD PTR [rdi+0x1e0]
  a59470:	01 00 00 
  a59473:	c5 f8 10 bf 20 02 00 	vmovups xmm7,XMMWORD PTR [rdi+0x220]
  a5947a:	00 
  a5947b:	62 c1 7c 48 28 db    	vmovaps zmm19,zmm11
  a59481:	62 e2 75 48 7f df    	vpermt2ps zmm19,zmm1,zmm7
  a59487:	62 72 6d 48 7f df    	vpermt2ps zmm11,zmm2,zmm7
  a5948d:	62 e1 7c 48 10 bf 30 	vmovups zmm23,ZMMWORD PTR [rdi+0x230]
  a59494:	02 00 00 
  a59497:	c5 f8 10 bf 70 02 00 	vmovups xmm7,XMMWORD PTR [rdi+0x270]
  a5949e:	00 
  a5949f:	62 a1 7c 48 28 c7    	vmovaps zmm16,zmm23
  a594a5:	62 e2 75 48 7f c7    	vpermt2ps zmm16,zmm1,zmm7
  a594ab:	62 e2 6d 48 7f ff    	vpermt2ps zmm23,zmm2,zmm7
  a594b1:	62 e1 7c 48 10 57 0a 	vmovups zmm18,ZMMWORD PTR [rdi+0x280]
  a594b8:	c5 f8 10 bf c0 02 00 	vmovups xmm7,XMMWORD PTR [rdi+0x2c0]
  a594bf:	00 
  a594c0:	62 21 7c 48 28 c2    	vmovaps zmm24,zmm18
  a594c6:	62 62 75 48 7f c7    	vpermt2ps zmm24,zmm1,zmm7
  a594cc:	62 e2 6d 48 7f d7    	vpermt2ps zmm18,zmm2,zmm7
  a594d2:	62 61 7c 48 10 8f d0 	vmovups zmm25,ZMMWORD PTR [rdi+0x2d0]
  a594d9:	02 00 00 
  a594dc:	c5 f8 10 bf 10 03 00 	vmovups xmm7,XMMWORD PTR [rdi+0x310]
  a594e3:	00 
  a594e4:	62 81 7c 48 28 c9    	vmovaps zmm17,zmm25
  a594ea:	62 e2 75 48 7f cf    	vpermt2ps zmm17,zmm1,zmm7
  a594f0:	62 62 6d 48 7f cf    	vpermt2ps zmm25,zmm2,zmm7
  a594f6:	62 61 7c 48 10 97 20 	vmovups zmm26,ZMMWORD PTR [rdi+0x320]
  a594fd:	03 00 00 
  a59500:	c5 f8 10 bf 60 03 00 	vmovups xmm7,XMMWORD PTR [rdi+0x360]
  a59507:	00 
  a59508:	62 81 7c 48 28 ea    	vmovaps zmm21,zmm26
  a5950e:	62 e2 75 48 7f ef    	vpermt2ps zmm21,zmm1,zmm7
  a59514:	62 62 6d 48 7f d7    	vpermt2ps zmm26,zmm2,zmm7
  a5951a:	62 61 7c 48 10 9f 70 	vmovups zmm27,ZMMWORD PTR [rdi+0x370]
  a59521:	03 00 00 
  a59524:	c5 f8 10 bf b0 03 00 	vmovups xmm7,XMMWORD PTR [rdi+0x3b0]
  a5952b:	00 
  a5952c:	62 f2 25 40 77 cf    	vpermi2ps zmm1,zmm27,zmm7
  a59532:	62 62 6d 48 7f df    	vpermt2ps zmm27,zmm2,zmm7
  a59538:	62 b1 7c 48 58 fb    	vaddps zmm7,zmm0,zmm19
  a5953e:	62 a1 5c 48 58 f1    	vaddps zmm22,zmm4,zmm17
  a59544:	62 b1 44 48 58 d6    	vaddps zmm2,zmm7,zmm22
  a5954a:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a59551:	ff 
  a59552:	62 21 04 48 58 e5    	vaddps zmm28,zmm15,zmm21
  a59558:	62 21 7c 40 58 ec    	vaddps zmm29,zmm16,zmm20
  a5955e:	62 91 1c 40 58 d5    	vaddps zmm2,zmm28,zmm29
  a59564:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  a5956b:	04 
  a5956c:	62 41 3c 40 58 f4    	vaddps zmm30,zmm24,zmm12
  a59572:	62 41 74 48 58 fd    	vaddps zmm31,zmm1,zmm13
  a59578:	62 a1 04 48 5c ed    	vsubps zmm21,zmm15,zmm21
  a5957e:	62 51 44 40 58 f8    	vaddps zmm15,zmm23,zmm8
  a59584:	62 51 44 40 5c c0    	vsubps zmm8,zmm23,zmm8
  a5958a:	62 81 0c 40 58 ff    	vaddps zmm23,zmm30,zmm31
  a59590:	62 51 3c 40 5c e4    	vsubps zmm12,zmm24,zmm12
  a59596:	62 41 24 40 58 c6    	vaddps zmm24,zmm27,zmm14
  a5959c:	62 41 24 40 5c de    	vsubps zmm27,zmm27,zmm14
  a595a2:	62 51 54 48 58 f3    	vaddps zmm14,zmm5,zmm11
  a595a8:	62 b1 7c 48 5c d3    	vsubps zmm2,zmm0,zmm19
  a595ae:	62 81 34 48 58 d9    	vaddps zmm19,zmm9,zmm25
  a595b4:	62 01 34 48 5c c9    	vsubps zmm25,zmm9,zmm25
  a595ba:	62 11 2c 48 58 ca    	vaddps zmm9,zmm10,zmm26
  a595c0:	62 91 2c 48 5c da    	vsubps zmm3,zmm10,zmm26
  a595c6:	62 f1 6c 40 58 c6    	vaddps zmm0,zmm18,zmm6
  a595cc:	62 a1 5c 40 5c e0    	vsubps zmm20,zmm20,zmm16
  a595d2:	62 71 5c 40 58 d3    	vaddps zmm10,zmm20,zmm3
  a595d8:	62 e1 6c 40 5c d6    	vsubps zmm18,zmm18,zmm6
  a595de:	62 71 14 48 5c e9    	vsubps zmm13,zmm13,zmm1
  a595e4:	62 b1 14 48 58 ca    	vaddps zmm1,zmm13,zmm18
  a595ea:	62 f1 2c 48 5c f1    	vsubps zmm6,zmm10,zmm1
  a595f0:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm6
  a595f7:	01 
  a595f8:	62 f1 2c 48 58 c9    	vaddps zmm1,zmm10,zmm1
  a595fe:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a59605:	62 d1 54 40 58 c8    	vaddps zmm1,zmm21,zmm8
  a5960b:	62 51 54 48 5c db    	vsubps zmm11,zmm5,zmm11
  a59611:	62 91 1c 48 58 f3    	vaddps zmm6,zmm12,zmm27
  a59617:	62 f1 74 40 5c e4    	vsubps zmm4,zmm17,zmm4
  a5961d:	62 f1 74 48 58 ee    	vaddps zmm5,zmm1,zmm6
  a59623:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm5
  a5962a:	02 
  a5962b:	62 f1 74 48 5c ce    	vsubps zmm1,zmm1,zmm6
  a59631:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a59638:	fe 
  a59639:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp+0x100]
  a59640:	04 
  a59641:	62 31 2c 40 58 d7    	vaddps zmm10,zmm26,zmm23
  a59647:	62 b1 7c 48 28 ef    	vmovaps zmm5,zmm23
  a5964d:	62 81 1c 40 5c c5    	vsubps zmm16,zmm28,zmm29
  a59653:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a5965a:	ff 
  a5965b:	62 c1 74 48 58 fa    	vaddps zmm23,zmm1,zmm10
  a59661:	62 81 0c 40 5c cf    	vsubps zmm17,zmm30,zmm31
  a59667:	62 21 0c 48 58 f3    	vaddps zmm30,zmm14,zmm19
  a5966d:	62 b1 44 48 5c f6    	vsubps zmm6,zmm7,zmm22
  a59673:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm6
  a5967a:	06 
  a5967b:	62 c1 34 48 58 f7    	vaddps zmm22,zmm9,zmm15
  a59681:	62 d1 34 48 5c ff    	vsubps zmm7,zmm9,zmm15
  a59687:	62 11 7c 48 58 c8    	vaddps zmm9,zmm0,zmm24
  a5968d:	62 91 7c 48 5c c0    	vsubps zmm0,zmm0,zmm24
  a59693:	62 61 44 48 5c c0    	vsubps zmm24,zmm7,zmm0
  a59699:	62 61 44 48 58 e8    	vaddps zmm29,zmm7,zmm0
  a5969f:	62 51 4c 40 58 f9    	vaddps zmm15,zmm22,zmm9
  a596a5:	62 21 0c 48 5c e3    	vsubps zmm28,zmm14,zmm19
  a596ab:	62 a1 7c 40 58 d9    	vaddps zmm19,zmm16,zmm17
  a596b1:	62 b1 7c 40 5c c1    	vsubps zmm0,zmm16,zmm17
  a596b7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a596be:	05 
  a596bf:	62 01 6c 48 58 f9    	vaddps zmm31,zmm2,zmm25
  a596c5:	62 91 6c 48 5c d1    	vsubps zmm2,zmm2,zmm25
  a596cb:	62 e2 7d 48 18 05 8b 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff61bd8b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a596d2:	bd 61 ff 
  a596d5:	62 c1 54 40 5c e8    	vsubps zmm21,zmm21,zmm8
  a596db:	62 d1 0c 40 58 c7    	vaddps zmm0,zmm30,zmm15
  a596e1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a596e8:	03 
  a596e9:	62 11 1c 48 5c f3    	vsubps zmm14,zmm12,zmm27
  a596ef:	62 c1 5c 48 58 cb    	vaddps zmm17,zmm4,zmm11
  a596f5:	62 f1 24 48 5c fc    	vsubps zmm7,zmm11,zmm4
  a596fb:	62 31 7c 48 28 d8    	vmovaps zmm11,zmm16
  a59701:	62 31 64 48 5c c4    	vsubps zmm8,zmm3,zmm20
  a59707:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a5970d:	62 51 6c 40 5c ed    	vsubps zmm13,zmm18,zmm13
  a59713:	62 a1 7c 48 28 d0    	vmovaps zmm18,zmm16
  a59719:	62 72 7d 40 ac d1    	vfnmadd213ps zmm10,zmm16,zmm1
  a5971f:	62 d1 54 40 58 c6    	vaddps zmm0,zmm21,zmm14
  a59725:	62 12 7d 40 ac fe    	vfnmadd213ps zmm15,zmm16,zmm30
  a5972b:	62 71 6c 48 58 e0    	vaddps zmm12,zmm2,zmm0
  a59731:	62 f2 7d 40 ac c2    	vfnmadd213ps zmm0,zmm16,zmm2
  a59737:	62 21 7c 48 28 f0    	vmovaps zmm30,zmm16
  a5973d:	62 d1 3c 48 58 d5    	vaddps zmm2,zmm8,zmm13
  a59743:	62 e2 6d 48 ac c7    	vfnmadd213ps zmm16,zmm2,zmm7
  a59749:	62 f1 44 48 58 ca    	vaddps zmm1,zmm7,zmm2
  a5974f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a59756:	ff 
  a59757:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x80]
  a5975e:	02 
  a5975f:	62 12 4d 48 ac df    	vfnmadd213ps zmm11,zmm6,zmm31
  a59765:	62 c1 4c 40 5c f1    	vsubps zmm22,zmm22,zmm9
  a5976b:	62 62 7d 48 18 0d 5f 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff61bb5f]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a59772:	bb 61 ff 
  a59775:	62 71 34 40 59 4c 24 	vmulps zmm9,zmm25,ZMMWORD PTR [rsp+0x40]
  a5977c:	01 
  a5977d:	62 f1 2c 40 5c dd    	vsubps zmm3,zmm26,zmm5
  a59783:	62 d1 34 48 58 eb    	vaddps zmm5,zmm9,zmm11
  a59789:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  a59790:	62 a2 6d 48 ac e1    	vfnmadd213ps zmm20,zmm2,zmm17
  a59796:	62 61 34 40 59 54 24 	vmulps zmm26,zmm25,ZMMWORD PTR [rsp-0x80]
  a5979d:	fe 
  a5979e:	62 51 24 48 5c c9    	vsubps zmm9,zmm11,zmm9
  a597a4:	62 91 5c 40 5c ca    	vsubps zmm1,zmm20,zmm26
  a597aa:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a597b1:	04 
  a597b2:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x180]
  a597b9:	06 
  a597ba:	62 e2 65 40 ac d7    	vfnmadd213ps zmm18,zmm19,zmm7
  a597c0:	62 91 3c 40 59 c9    	vmulps zmm1,zmm24,zmm25
  a597c6:	62 91 5c 40 58 e2    	vaddps zmm4,zmm20,zmm26
  a597cc:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm4
  a597d3:	fe 
  a597d4:	62 61 6c 40 5c c1    	vsubps zmm24,zmm18,zmm1
  a597da:	62 02 15 40 ac f4    	vfnmadd213ps zmm30,zmm29,zmm28
  a597e0:	62 e1 34 40 59 64 24 	vmulps zmm20,zmm25,ZMMWORD PTR [rsp+0x140]
  a597e7:	05 
  a597e8:	62 b1 44 48 58 fb    	vaddps zmm7,zmm7,zmm19
  a597ee:	62 11 5c 40 58 de    	vaddps zmm11,zmm20,zmm30
  a597f4:	62 81 4c 40 59 f1    	vmulps zmm22,zmm22,zmm25
  a597fa:	62 91 1c 40 58 e5    	vaddps zmm4,zmm28,zmm29
  a59800:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm4
  a59807:	06 
  a59808:	62 21 2c 48 58 de    	vaddps zmm27,zmm10,zmm22
  a5980e:	62 91 64 48 59 d9    	vmulps zmm3,zmm3,zmm25
  a59814:	62 51 3c 48 5c c5    	vsubps zmm8,zmm8,zmm13
  a5981a:	62 f1 04 48 5c e3    	vsubps zmm4,zmm15,zmm3
  a59820:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm4
  a59827:	05 
  a59828:	62 11 3c 48 59 c1    	vmulps zmm8,zmm8,zmm25
  a5982e:	62 51 54 40 5c ee    	vsubps zmm13,zmm21,zmm14
  a59834:	62 61 3c 48 58 d0    	vaddps zmm26,zmm8,zmm0
  a5983a:	62 81 14 48 59 e9    	vmulps zmm21,zmm13,zmm25
  a59840:	62 31 7c 40 5c ed    	vsubps zmm13,zmm16,zmm21
  a59846:	62 21 2c 48 5c ce    	vsubps zmm25,zmm10,zmm22
  a5984c:	62 c1 64 48 58 f7    	vaddps zmm22,zmm3,zmm15
  a59852:	62 f1 04 40 58 de    	vaddps zmm3,zmm31,zmm6
  a59858:	62 71 74 40 58 f2    	vaddps zmm14,zmm17,zmm2
  a5985e:	62 f1 6c 40 58 c9    	vaddps zmm1,zmm18,zmm1
  a59864:	62 a1 0c 40 5c e4    	vsubps zmm20,zmm30,zmm20
  a5986a:	62 d1 7c 48 5c c0    	vsubps zmm0,zmm0,zmm8
  a59870:	62 b1 7c 40 58 e5    	vaddps zmm4,zmm16,zmm21
  a59876:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm4
  a5987d:	02 
  a5987e:	62 71 7c 48 28 3d f8 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff66d6f8]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a59885:	d6 66 ff 
  a59888:	62 b1 7c 48 28 f7    	vmovaps zmm6,zmm23
  a5988e:	62 92 05 48 7f f1    	vpermt2ps zmm6,zmm15,zmm25
  a59894:	62 e1 7c 48 28 05 22 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff66d722]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a5989b:	d7 66 ff 
  a5989e:	62 82 7d 40 7f f9    	vpermt2ps zmm23,zmm16,zmm25
  a598a4:	62 61 7c 48 28 e5    	vmovaps zmm28,zmm5
  a598aa:	62 62 05 48 7f e3    	vpermt2ps zmm28,zmm15,zmm3
  a598b0:	62 f2 7d 40 7f eb    	vpermt2ps zmm5,zmm16,zmm3
  a598b6:	62 01 7c 48 28 e8    	vmovaps zmm29,zmm24
  a598bc:	62 62 05 48 7f e9    	vpermt2ps zmm29,zmm15,zmm1
  a598c2:	62 62 7d 40 7f c1    	vpermt2ps zmm24,zmm16,zmm1
  a598c8:	62 d1 7c 48 28 e4    	vmovaps zmm4,zmm12
  a598ce:	62 f2 05 48 7f e0    	vpermt2ps zmm4,zmm15,zmm0
  a598d4:	62 72 7d 40 7f e0    	vpermt2ps zmm12,zmm16,zmm0
  a598da:	62 a1 54 00 57 ed    	vxorps xmm21,xmm21,xmm21
  a598e0:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a598e6:	62 b2 05 48 7f c5    	vpermt2ps zmm0,zmm15,zmm21
  a598ec:	62 d1 7c 48 28 d9    	vmovaps zmm3,zmm9
  a598f2:	62 b2 05 48 7f dd    	vpermt2ps zmm3,zmm15,zmm21
  a598f8:	62 e1 7c 48 28 0d fe 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff66d5fe]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a598ff:	d5 66 ff 
  a59902:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a59908:	62 72 75 40 7f c0    	vpermt2ps zmm8,zmm17,zmm0
  a5990e:	62 e1 7c 48 28 1d 28 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff66d628]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a59915:	d6 66 ff 
  a59918:	62 f2 65 40 7f f0    	vpermt2ps zmm6,zmm19,zmm0
  a5991e:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a59924:	62 f2 75 40 7f c3    	vpermt2ps zmm0,zmm17,zmm3
  a5992a:	62 62 65 40 7f e3    	vpermt2ps zmm28,zmm19,zmm3
  a59930:	62 f1 7c 48 28 df    	vmovaps zmm3,zmm7
  a59936:	62 b2 05 48 7f dd    	vpermt2ps zmm3,zmm15,zmm21
  a5993c:	62 01 7c 48 28 f5    	vmovaps zmm30,zmm29
  a59942:	62 62 75 40 7f f3    	vpermt2ps zmm30,zmm17,zmm3
  a59948:	62 62 65 40 7f eb    	vpermt2ps zmm29,zmm19,zmm3
  a5994e:	62 91 7c 48 28 da    	vmovaps zmm3,zmm26
  a59954:	62 b2 05 48 7f dd    	vpermt2ps zmm3,zmm15,zmm21
  a5995a:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a59960:	62 f2 75 40 7f cb    	vpermt2ps zmm1,zmm17,zmm3
  a59966:	62 f2 65 40 7f e3    	vpermt2ps zmm4,zmm19,zmm3
  a5996c:	62 22 7d 40 7f dd    	vpermt2ps zmm27,zmm16,zmm21
  a59972:	62 82 75 40 7f fb    	vpermt2ps zmm23,zmm17,zmm27
  a59978:	62 32 7d 40 7f cd    	vpermt2ps zmm9,zmm16,zmm21
  a5997e:	62 d2 75 40 7f e9    	vpermt2ps zmm5,zmm17,zmm9
  a59984:	62 b2 7d 40 7f fd    	vpermt2ps zmm7,zmm16,zmm21
  a5998a:	62 22 7d 40 7f d5    	vpermt2ps zmm26,zmm16,zmm21
  a59990:	62 62 75 40 7f c7    	vpermt2ps zmm24,zmm17,zmm7
  a59996:	62 91 c5 40 14 d0    	vunpcklpd zmm2,zmm23,zmm24
  a5999c:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a599a3:	01 
  a599a4:	62 12 75 40 7f e2    	vpermt2ps zmm12,zmm17,zmm26
  a599aa:	62 41 d5 48 14 cc    	vunpcklpd zmm25,zmm5,zmm12
  a599b0:	62 91 bd 48 14 d6    	vunpcklpd zmm2,zmm8,zmm30
  a599b6:	62 11 bd 48 15 d6    	vunpckhpd zmm10,zmm8,zmm30
  a599bc:	62 f1 fd 48 14 f9    	vunpcklpd zmm7,zmm0,zmm1
  a599c2:	62 61 fd 48 15 f1    	vunpckhpd zmm30,zmm0,zmm1
  a599c8:	62 81 cd 48 14 d5    	vunpcklpd zmm18,zmm6,zmm29
  a599ce:	62 91 cd 48 15 c5    	vunpckhpd zmm0,zmm6,zmm29
  a599d4:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a599db:	62 61 9d 40 14 ec    	vunpcklpd zmm29,zmm28,zmm4
  a599e1:	62 61 9d 40 15 dc    	vunpckhpd zmm27,zmm28,zmm4
  a599e7:	62 71 7c 48 28 25 0f 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff66d40f]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a599ee:	d4 66 ff 
  a599f1:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0xc0]
  a599f8:	03 
  a599f9:	62 61 7c 48 28 c5    	vmovaps zmm24,zmm5
  a599ff:	62 22 05 48 7f c6    	vpermt2ps zmm24,zmm15,zmm22
  a59a05:	62 b2 7d 40 7f ee    	vpermt2ps zmm5,zmm16,zmm22
  a59a0b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a59a12:	04 
  a59a13:	62 e1 7c 48 28 f8    	vmovaps zmm23,zmm0
  a59a19:	62 c2 05 48 7f fe    	vpermt2ps zmm23,zmm15,zmm14
  a59a1f:	62 d2 7d 40 7f c6    	vpermt2ps zmm0,zmm16,zmm14
  a59a25:	62 61 7c 48 28 f8    	vmovaps zmm31,zmm0
  a59a2b:	62 c1 7c 48 28 f3    	vmovaps zmm22,zmm11
  a59a31:	62 a2 05 48 7f f4    	vpermt2ps zmm22,zmm15,zmm20
  a59a37:	62 32 7d 40 7f dc    	vpermt2ps zmm11,zmm16,zmm20
  a59a3d:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x40]
  a59a44:	ff 
  a59a45:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a59a4b:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a59a52:	02 
  a59a53:	62 62 05 48 7f d1    	vpermt2ps zmm26,zmm15,zmm1
  a59a59:	62 f2 7d 40 7f d9    	vpermt2ps zmm3,zmm16,zmm1
  a59a5f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a59a66:	05 
  a59a67:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a59a6d:	62 b2 05 48 7f cd    	vpermt2ps zmm1,zmm15,zmm21
  a59a73:	62 b2 7d 40 7f c5    	vpermt2ps zmm0,zmm16,zmm21
  a59a79:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a59a7f:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp-0x80]
  a59a86:	fe 
  a59a87:	62 f1 7c 48 28 e6    	vmovaps zmm4,zmm6
  a59a8d:	62 b2 05 48 7f e5    	vpermt2ps zmm4,zmm15,zmm21
  a59a93:	62 b2 7d 40 7f f5    	vpermt2ps zmm6,zmm16,zmm21
  a59a99:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a59aa0:	06 
  a59aa1:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a59aa7:	62 32 05 48 7f c5    	vpermt2ps zmm8,zmm15,zmm21
  a59aad:	62 b2 7d 40 7f c5    	vpermt2ps zmm0,zmm16,zmm21
  a59ab3:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a59ab9:	62 32 15 48 77 fd    	vpermi2ps zmm15,zmm13,zmm21
  a59abf:	62 32 7d 40 7f ed    	vpermt2ps zmm13,zmm16,zmm21
  a59ac5:	62 e1 7c 48 28 c2    	vmovaps zmm16,zmm2
  a59acb:	62 e2 1d 48 7f c7    	vpermt2ps zmm16,zmm12,zmm7
  a59ad1:	62 61 7c 48 28 25 65 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff66d365]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a59ad8:	d3 66 ff 
  a59adb:	62 f2 1d 40 7f d7    	vpermt2ps zmm2,zmm28,zmm7
  a59ae1:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a59ae8:	ff 
  a59ae9:	62 c1 7c 48 28 e2    	vmovaps zmm20,zmm10
  a59aef:	62 82 1d 48 7f e6    	vpermt2ps zmm20,zmm12,zmm30
  a59af5:	62 12 1d 40 7f d6    	vpermt2ps zmm10,zmm28,zmm30
  a59afb:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm10
  a59b02:	fe 
  a59b03:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a59b09:	62 82 1d 48 7f d5    	vpermt2ps zmm18,zmm12,zmm29
  a59b0f:	62 92 1d 40 7f c5    	vpermt2ps zmm0,zmm28,zmm29
  a59b15:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a59b1c:	03 
  a59b1d:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  a59b24:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a59b2a:	62 92 1d 48 7f c3    	vpermt2ps zmm0,zmm12,zmm27
  a59b30:	62 92 1d 40 7f d3    	vpermt2ps zmm2,zmm28,zmm27
  a59b36:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a59b3d:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x40]
  a59b44:	01 
  a59b45:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  a59b4b:	62 82 1d 48 7f e9    	vpermt2ps zmm21,zmm12,zmm25
  a59b51:	62 92 1d 40 7f d1    	vpermt2ps zmm2,zmm28,zmm25
  a59b57:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a59b5e:	01 
  a59b5f:	62 91 7c 48 28 f8    	vmovaps zmm7,zmm24
  a59b65:	62 f2 75 40 7f f9    	vpermt2ps zmm7,zmm17,zmm1
  a59b6b:	62 62 65 40 7f c1    	vpermt2ps zmm24,zmm19,zmm1
  a59b71:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a59b77:	62 f2 75 40 7f cc    	vpermt2ps zmm1,zmm17,zmm4
  a59b7d:	62 e2 65 40 7f fc    	vpermt2ps zmm23,zmm19,zmm4
  a59b83:	62 b1 7c 48 28 e6    	vmovaps zmm4,zmm22
  a59b89:	62 d2 75 40 7f e0    	vpermt2ps zmm4,zmm17,zmm8
  a59b8f:	62 c2 65 40 7f f0    	vpermt2ps zmm22,zmm19,zmm8
  a59b95:	62 11 7c 48 28 c2    	vmovaps zmm8,zmm26
  a59b9b:	62 52 75 40 7f c7    	vpermt2ps zmm8,zmm17,zmm15
  a59ba1:	62 42 65 40 7f d7    	vpermt2ps zmm26,zmm19,zmm15
  a59ba7:	62 d2 75 40 7f e9    	vpermt2ps zmm5,zmm17,zmm9
  a59bad:	62 62 75 40 7f fe    	vpermt2ps zmm31,zmm17,zmm6
  a59bb3:	62 52 75 40 7f de    	vpermt2ps zmm11,zmm17,zmm14
  a59bb9:	62 51 d5 48 14 db    	vunpcklpd zmm11,zmm5,zmm11
  a59bbf:	62 d2 75 40 7f dd    	vpermt2ps zmm3,zmm17,zmm13
  a59bc5:	62 71 85 40 14 d3    	vunpcklpd zmm10,zmm31,zmm3
  a59bcb:	62 71 c5 48 14 cc    	vunpcklpd zmm9,zmm7,zmm4
  a59bd1:	62 71 c5 48 15 f4    	vunpckhpd zmm14,zmm7,zmm4
  a59bd7:	62 d1 f5 48 14 e0    	vunpcklpd zmm4,zmm1,zmm8
  a59bdd:	62 51 f5 48 15 c0    	vunpckhpd zmm8,zmm1,zmm8
  a59be3:	62 b1 bd 40 14 fe    	vunpcklpd zmm7,zmm24,zmm22
  a59be9:	62 31 bd 40 15 fe    	vunpckhpd zmm15,zmm24,zmm22
  a59bef:	62 81 c5 40 14 ca    	vunpcklpd zmm17,zmm23,zmm26
  a59bf5:	62 81 c5 40 15 da    	vunpckhpd zmm19,zmm23,zmm26
  a59bfb:	62 d1 7c 48 28 d1    	vmovaps zmm2,zmm9
  a59c01:	62 f2 1d 48 7f d4    	vpermt2ps zmm2,zmm12,zmm4
  a59c07:	62 72 1d 40 7f cc    	vpermt2ps zmm9,zmm28,zmm4
  a59c0d:	62 c1 7c 48 28 fe    	vmovaps zmm23,zmm14
  a59c13:	62 c2 1d 48 7f f8    	vpermt2ps zmm23,zmm12,zmm8
  a59c19:	62 52 1d 40 7f f0    	vpermt2ps zmm14,zmm28,zmm8
  a59c1f:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a59c25:	62 32 1d 48 7f e9    	vpermt2ps zmm13,zmm12,zmm17
  a59c2b:	62 b2 1d 40 7f f9    	vpermt2ps zmm7,zmm28,zmm17
  a59c31:	62 51 7c 48 28 c7    	vmovaps zmm8,zmm15
  a59c37:	62 32 1d 48 7f c3    	vpermt2ps zmm8,zmm12,zmm19
  a59c3d:	62 32 1d 40 7f fb    	vpermt2ps zmm15,zmm28,zmm19
  a59c43:	62 52 25 48 77 e2    	vpermi2ps zmm12,zmm11,zmm10
  a59c49:	62 52 1d 40 7f da    	vpermt2ps zmm11,zmm28,zmm10
  a59c4f:	62 e1 7c 48 10 5a 02 	vmovups zmm19,ZMMWORD PTR [rdx+0x80]
  a59c56:	62 e1 7c 48 10 4a 03 	vmovups zmm17,ZMMWORD PTR [rdx+0xc0]
  a59c5d:	62 f1 7c 48 10 62 04 	vmovups zmm4,ZMMWORD PTR [rdx+0x100]
  a59c64:	62 61 7c 48 10 6a 05 	vmovups zmm29,ZMMWORD PTR [rdx+0x140]
  a59c6b:	62 61 7c 48 10 52 06 	vmovups zmm26,ZMMWORD PTR [rdx+0x180]
  a59c72:	62 61 7c 48 10 42 07 	vmovups zmm24,ZMMWORD PTR [rdx+0x1c0]
  a59c79:	62 61 7c 48 10 7a 08 	vmovups zmm31,ZMMWORD PTR [rdx+0x200]
  a59c80:	62 61 7c 48 10 62 09 	vmovups zmm28,ZMMWORD PTR [rdx+0x240]
  a59c87:	62 e1 7c 48 10 72 0a 	vmovups zmm22,ZMMWORD PTR [rdx+0x280]
  a59c8e:	62 61 7c 48 10 4a 0b 	vmovups zmm25,ZMMWORD PTR [rdx+0x2c0]
  a59c95:	62 71 5c 40 59 d4    	vmulps zmm10,zmm20,zmm4
  a59c9b:	62 12 45 40 bc d5    	vfnmadd231ps zmm10,zmm23,zmm29
  a59ca1:	62 61 44 40 59 dc    	vmulps zmm27,zmm23,zmm4
  a59ca7:	62 f1 7c 48 10 62 10 	vmovups zmm4,ZMMWORD PTR [rdx+0x400]
  a59cae:	62 22 15 40 b8 dc    	vfmadd231ps zmm27,zmm29,zmm20
  a59cb4:	62 e1 7c 48 10 7a 11 	vmovups zmm23,ZMMWORD PTR [rdx+0x440]
  a59cbb:	62 e1 54 40 59 e4    	vmulps zmm20,zmm21,zmm4
  a59cc1:	62 a2 1d 48 bc e7    	vfnmadd231ps zmm20,zmm12,zmm23
  a59cc7:	62 61 1c 48 59 f4    	vmulps zmm30,zmm12,zmm4
  a59ccd:	62 f1 7c 48 10 62 0c 	vmovups zmm4,ZMMWORD PTR [rdx+0x300]
  a59cd4:	62 22 45 40 b8 f5    	vfmadd231ps zmm30,zmm23,zmm21
  a59cda:	62 71 7c 48 10 62 0d 	vmovups zmm12,ZMMWORD PTR [rdx+0x340]
  a59ce1:	62 81 6c 40 59 ff    	vmulps zmm23,zmm18,zmm31
  a59ce7:	62 82 15 48 bc fc    	vfnmadd231ps zmm23,zmm13,zmm28
  a59ced:	62 81 14 48 59 ef    	vmulps zmm21,zmm13,zmm31
  a59cf3:	62 61 7c 48 10 7a 0e 	vmovups zmm31,ZMMWORD PTR [rdx+0x380]
  a59cfa:	62 a2 1d 40 b8 ea    	vfmadd231ps zmm21,zmm28,zmm18
  a59d00:	62 e1 7c 48 10 52 0f 	vmovups zmm18,ZMMWORD PTR [rdx+0x3c0]
  a59d07:	62 61 7c 48 59 ec    	vmulps zmm29,zmm0,zmm4
  a59d0d:	62 42 3d 48 bc ec    	vfnmadd231ps zmm29,zmm8,zmm12
  a59d13:	62 f1 3c 48 59 cc    	vmulps zmm1,zmm8,zmm4
  a59d19:	62 f1 7c 48 10 62 12 	vmovups zmm4,ZMMWORD PTR [rdx+0x480]
  a59d20:	62 f2 1d 48 b8 c8    	vfmadd231ps zmm1,zmm12,zmm0
  a59d26:	62 61 7c 48 10 62 13 	vmovups zmm28,ZMMWORD PTR [rdx+0x4c0]
  a59d2d:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a59d34:	03 
  a59d35:	62 31 7c 48 59 c6    	vmulps zmm8,zmm0,zmm22
  a59d3b:	62 12 45 48 bc c1    	vfnmadd231ps zmm8,zmm7,zmm25
  a59d41:	62 b1 44 48 59 fe    	vmulps zmm7,zmm7,zmm22
  a59d47:	62 a1 2c 48 58 f4    	vaddps zmm22,zmm10,zmm20
  a59d4d:	62 f2 35 40 b8 f8    	vfmadd231ps zmm7,zmm25,zmm0
  a59d53:	62 b1 7c 40 58 ee    	vaddps zmm5,zmm16,zmm22
  a59d59:	62 f1 7c 48 10 1c 24 	vmovups zmm3,ZMMWORD PTR [rsp]
  a59d60:	62 11 64 48 59 ef    	vmulps zmm13,zmm3,zmm31
  a59d66:	62 32 05 48 bc ea    	vfnmadd231ps zmm13,zmm15,zmm18
  a59d6c:	62 01 04 48 59 ff    	vmulps zmm31,zmm15,zmm31
  a59d72:	62 11 44 40 58 e5    	vaddps zmm12,zmm23,zmm29
  a59d78:	62 d1 54 48 58 c4    	vaddps zmm0,zmm5,zmm12
  a59d7e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a59d85:	03 
  a59d86:	62 62 6d 40 b8 fb    	vfmadd231ps zmm31,zmm18,zmm3
  a59d8c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a59d93:	fe 
  a59d94:	62 91 7c 48 59 f2    	vmulps zmm6,zmm0,zmm26
  a59d9a:	62 92 0d 48 bc f0    	vfnmadd231ps zmm6,zmm14,zmm24
  a59da0:	62 61 14 48 58 ce    	vaddps zmm25,zmm13,zmm6
  a59da6:	62 81 0c 48 59 d2    	vmulps zmm18,zmm14,zmm26
  a59dac:	62 91 3c 48 58 e9    	vaddps zmm5,zmm8,zmm25
  a59db2:	62 e2 3d 40 b8 d0    	vfmadd231ps zmm18,zmm24,zmm0
  a59db8:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x40]
  a59dbf:	01 
  a59dc0:	62 71 64 48 59 f4    	vmulps zmm14,zmm3,zmm4
  a59dc6:	62 12 25 48 bc f4    	vfnmadd231ps zmm14,zmm11,zmm28
  a59dcc:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp-0x40]
  a59dd3:	ff 
  a59dd4:	62 31 2c 40 59 fb    	vmulps zmm15,zmm26,zmm19
  a59dda:	62 32 35 48 bc f9    	vfnmadd231ps zmm15,zmm9,zmm17
  a59de0:	62 61 24 48 59 c4    	vmulps zmm24,zmm11,zmm4
  a59de6:	62 d1 0c 48 58 e7    	vaddps zmm4,zmm14,zmm15
  a59dec:	62 f1 54 48 58 c4    	vaddps zmm0,zmm5,zmm4
  a59df2:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a59df9:	62 62 1d 40 b8 c3    	vfmadd231ps zmm24,zmm28,zmm3
  a59dff:	62 01 24 40 58 e6    	vaddps zmm28,zmm27,zmm30
  a59e05:	62 f1 1c 40 58 da    	vaddps zmm3,zmm28,zmm2
  a59e0b:	62 b1 34 48 59 c3    	vmulps zmm0,zmm9,zmm19
  a59e11:	62 71 54 40 58 c9    	vaddps zmm9,zmm21,zmm1
  a59e17:	62 f1 34 48 58 db    	vaddps zmm3,zmm9,zmm3
  a59e1d:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a59e24:	01 
  a59e25:	62 92 75 40 b8 c2    	vfmadd231ps zmm0,zmm17,zmm26
  a59e2b:	62 21 04 40 58 d2    	vaddps zmm26,zmm31,zmm18
  a59e31:	62 91 44 48 58 ea    	vaddps zmm5,zmm7,zmm26
  a59e37:	62 81 24 40 5c ce    	vsubps zmm17,zmm27,zmm30
  a59e3d:	62 e1 3c 40 58 d8    	vaddps zmm19,zmm24,zmm0
  a59e43:	62 f1 54 40 5c d9    	vsubps zmm3,zmm21,zmm1
  a59e49:	62 e2 7d 48 18 2d 95 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff61b895]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a59e50:	b8 61 ff 
  a59e53:	62 b1 54 48 58 cb    	vaddps zmm1,zmm5,zmm19
  a59e59:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a59e60:	ff 
  a59e61:	62 a1 04 40 5c d2    	vsubps zmm18,zmm31,zmm18
  a59e67:	62 31 7c 48 28 dd    	vmovaps zmm11,zmm21
  a59e6d:	62 32 4d 40 a8 d8    	vfmadd213ps zmm11,zmm22,zmm16
  a59e73:	62 61 3c 40 5c d8    	vsubps zmm27,zmm24,zmm0
  a59e79:	62 62 7d 48 18 3d c1 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff61b7c1]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a59e80:	b7 61 ff 
  a59e83:	62 12 1d 48 bc df    	vfnmadd231ps zmm11,zmm12,zmm31
  a59e89:	62 b1 2c 48 5c ec    	vsubps zmm5,zmm10,zmm20
  a59e8f:	62 62 7d 48 18 35 bf 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff61b8bf]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a59e96:	b8 61 ff 
  a59e99:	62 81 44 40 5c fd    	vsubps zmm23,zmm23,zmm29
  a59e9f:	62 e2 7d 48 18 25 f7 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff61b4f7]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a59ea6:	b4 61 ff 
  a59ea9:	62 a2 05 40 bc c6    	vfnmadd231ps zmm16,zmm31,zmm22
  a59eaf:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a59eb5:	62 c2 35 40 a8 f0    	vfmadd213ps zmm22,zmm25,zmm8
  a59ebb:	62 12 05 40 bc c1    	vfnmadd231ps zmm8,zmm31,zmm25
  a59ec1:	62 21 7c 48 28 cd    	vmovaps zmm25,zmm21
  a59ec7:	62 62 1d 40 a8 ca    	vfmadd213ps zmm25,zmm28,zmm2
  a59ecd:	62 92 05 40 bc d4    	vfnmadd231ps zmm2,zmm31,zmm28
  a59ed3:	62 21 7c 48 28 e5    	vmovaps zmm28,zmm21
  a59ed9:	62 62 2d 40 a8 e7    	vfmadd213ps zmm28,zmm26,zmm7
  a59edf:	62 92 2d 40 bc ff    	vfnmadd231ps zmm7,zmm26,zmm31
  a59ee5:	62 91 64 48 59 ce    	vmulps zmm1,zmm3,zmm30
  a59eeb:	62 b2 75 40 b8 cc    	vfmadd231ps zmm1,zmm17,zmm20
  a59ef1:	62 82 5d 48 bc f7    	vfnmadd231ps zmm22,zmm4,zmm31
  a59ef7:	62 02 35 48 bc cf    	vfnmadd231ps zmm25,zmm9,zmm31
  a59efd:	62 02 65 40 bc e7    	vfnmadd231ps zmm28,zmm19,zmm31
  a59f03:	62 61 24 48 58 d1    	vaddps zmm26,zmm11,zmm1
  a59f09:	62 f1 14 48 5c c6    	vsubps zmm0,zmm13,zmm6
  a59f0f:	62 01 24 40 59 c6    	vmulps zmm24,zmm27,zmm30
  a59f15:	62 22 6d 40 b8 c4    	vfmadd231ps zmm24,zmm18,zmm20
  a59f1b:	62 51 0c 48 5c f7    	vsubps zmm14,zmm14,zmm15
  a59f21:	62 11 4c 40 58 f8    	vaddps zmm15,zmm22,zmm24
  a59f27:	62 c2 55 40 b8 c4    	vfmadd231ps zmm16,zmm21,zmm12
  a59f2d:	62 51 2c 40 5c ef    	vsubps zmm13,zmm26,zmm15
  a59f33:	62 72 55 40 b8 c4    	vfmadd231ps zmm8,zmm21,zmm4
  a59f39:	62 91 44 40 59 e6    	vmulps zmm4,zmm23,zmm30
  a59f3f:	62 b2 55 48 b8 e4    	vfmadd231ps zmm4,zmm5,zmm20
  a59f45:	62 d2 55 40 b8 d1    	vfmadd231ps zmm2,zmm21,zmm9
  a59f4b:	62 61 34 40 5c ec    	vsubps zmm29,zmm25,zmm4
  a59f51:	62 b2 65 40 b8 fd    	vfmadd231ps zmm7,zmm19,zmm21
  a59f57:	62 81 0c 48 59 de    	vmulps zmm19,zmm14,zmm30
  a59f5d:	62 a2 7d 48 b8 dc    	vfmadd231ps zmm19,zmm0,zmm20
  a59f63:	62 a1 1c 40 5c eb    	vsubps zmm21,zmm28,zmm19
  a59f69:	62 81 74 40 59 ce    	vmulps zmm17,zmm17,zmm30
  a59f6f:	62 e2 5d 40 bc cb    	vfnmadd231ps zmm17,zmm20,zmm3
  a59f75:	62 b1 14 40 5c f5    	vsubps zmm6,zmm29,zmm21
  a59f7b:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm6
  a59f82:	02 
  a59f83:	62 91 6c 40 59 de    	vmulps zmm3,zmm18,zmm30
  a59f89:	62 92 5d 40 bc db    	vfnmadd231ps zmm3,zmm20,zmm27
  a59f8f:	c5 7c 28 0d a9 cc 61 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff61cca9]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a59f96:	ff 
  a59f97:	62 81 54 48 59 d6    	vmulps zmm18,zmm5,zmm30
  a59f9d:	62 a2 5d 40 bc d7    	vfnmadd231ps zmm18,zmm20,zmm23
  a59fa3:	62 d1 7c 48 28 ed    	vmovaps zmm5,zmm13
  a59fa9:	62 f2 35 48 7f ee    	vpermt2ps zmm5,zmm9,zmm6
  a59faf:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm5
  a59fb6:	fe 
  a59fb7:	62 91 7c 48 59 c6    	vmulps zmm0,zmm0,zmm30
  a59fbd:	62 21 7c 40 58 d9    	vaddps zmm27,zmm16,zmm17
  a59fc3:	62 b2 0d 48 bc c4    	vfnmadd231ps zmm0,zmm14,zmm20
  a59fc9:	62 71 3c 48 58 f3    	vaddps zmm14,zmm8,zmm3
  a59fcf:	62 51 24 40 58 e6    	vaddps zmm12,zmm27,zmm14
  a59fd5:	62 a1 7c 40 5c c1    	vsubps zmm16,zmm16,zmm17
  a59fdb:	62 a1 6c 48 5c e2    	vsubps zmm20,zmm2,zmm18
  a59fe1:	62 f1 3c 48 5c db    	vsubps zmm3,zmm8,zmm3
  a59fe7:	62 61 44 48 5c f0    	vsubps zmm30,zmm7,zmm0
  a59fed:	62 f1 6c 40 58 ea    	vaddps zmm5,zmm18,zmm2
  a59ff3:	62 81 5c 40 58 fe    	vaddps zmm23,zmm20,zmm30
  a59ff9:	62 61 44 48 58 f8    	vaddps zmm31,zmm7,zmm0
  a59fff:	62 51 7c 48 28 d4    	vmovaps zmm10,zmm12
  a5a005:	62 32 35 48 7f d7    	vpermt2ps zmm10,zmm9,zmm23
  a5a00b:	62 f1 24 48 5c d1    	vsubps zmm2,zmm11,zmm1
  a5a011:	62 f1 7c 40 5c fb    	vsubps zmm7,zmm16,zmm3
  a5a017:	62 81 4c 40 5c f0    	vsubps zmm22,zmm22,zmm24
  a5a01d:	62 01 54 48 5c c7    	vsubps zmm24,zmm5,zmm31
  a5a023:	62 91 5c 48 58 e1    	vaddps zmm4,zmm4,zmm25
  a5a029:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a5a02f:	62 92 35 48 7f f0    	vpermt2ps zmm6,zmm9,zmm24
  a5a035:	62 21 1c 40 58 e3    	vaddps zmm28,zmm28,zmm19
  a5a03b:	62 31 6c 48 58 c6    	vaddps zmm8,zmm2,zmm22
  a5a041:	62 51 2c 40 58 df    	vaddps zmm11,zmm26,zmm15
  a5a047:	62 01 5c 48 58 d4    	vaddps zmm26,zmm4,zmm28
  a5a04d:	62 21 14 40 58 cd    	vaddps zmm25,zmm29,zmm21
  a5a053:	62 51 7c 48 28 f8    	vmovaps zmm15,zmm8
  a5a059:	62 12 35 48 7f fa    	vpermt2ps zmm15,zmm9,zmm26
  a5a05f:	62 51 24 40 5c f6    	vsubps zmm14,zmm27,zmm14
  a5a065:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0xc0]
  a5a06c:	03 
  a5a06d:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a5a074:	62 e1 54 40 5c c8    	vsubps zmm17,zmm21,zmm0
  a5a07a:	62 01 5c 40 5c de    	vsubps zmm27,zmm20,zmm30
  a5a080:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0x40]
  a5a087:	01 
  a5a088:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a5a08f:	ff 
  a5a090:	62 61 0c 40 5c e9    	vsubps zmm29,zmm30,zmm1
  a5a096:	62 e1 7c 40 58 c3    	vaddps zmm16,zmm16,zmm3
  a5a09c:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a5a0a2:	62 82 35 48 7f d5    	vpermt2ps zmm18,zmm9,zmm29
  a5a0a8:	62 91 54 48 58 ef    	vaddps zmm5,zmm5,zmm31
  a5a0ae:	62 c1 7c 48 28 e3    	vmovaps zmm20,zmm11
  a5a0b4:	62 82 35 48 7f e1    	vpermt2ps zmm20,zmm9,zmm25
  a5a0ba:	62 a1 6c 48 5c de    	vsubps zmm19,zmm2,zmm22
  a5a0c0:	62 41 7c 48 28 fe    	vmovaps zmm31,zmm14
  a5a0c6:	62 02 35 48 7f fb    	vpermt2ps zmm31,zmm9,zmm27
  a5a0cc:	62 91 5c 48 5c d4    	vsubps zmm2,zmm4,zmm28
  a5a0d2:	62 a1 7c 48 28 f0    	vmovaps zmm22,zmm16
  a5a0d8:	62 e2 35 48 7f f5    	vpermt2ps zmm22,zmm9,zmm5
  a5a0de:	62 f1 54 40 58 d8    	vaddps zmm3,zmm21,zmm0
  a5a0e4:	62 b1 7c 48 28 e3    	vmovaps zmm4,zmm19
  a5a0ea:	62 f2 35 48 7f e2    	vpermt2ps zmm4,zmm9,zmm2
  a5a0f0:	62 61 0c 40 58 e1    	vaddps zmm28,zmm30,zmm1
  a5a0f6:	62 12 65 48 77 cc    	vpermi2ps zmm9,zmm3,zmm28
  a5a0fc:	62 61 7c 48 28 35 ba 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff6392ba]        # 933c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20870>
  a5a103:	92 63 ff 
  a5a106:	62 92 0d 40 7f dc    	vpermt2ps zmm3,zmm30,zmm28
  a5a10c:	62 72 0d 40 7f 6c 24 	vpermt2ps zmm13,zmm30,ZMMWORD PTR [rsp+0x80]
  a5a113:	02 
  a5a114:	62 32 0d 40 7f e7    	vpermt2ps zmm12,zmm30,zmm23
  a5a11a:	62 92 0d 40 7f f8    	vpermt2ps zmm7,zmm30,zmm24
  a5a120:	62 12 0d 40 7f c2    	vpermt2ps zmm8,zmm30,zmm26
  a5a126:	62 82 0d 40 7f cd    	vpermt2ps zmm17,zmm30,zmm29
  a5a12c:	62 12 0d 40 7f d9    	vpermt2ps zmm11,zmm30,zmm25
  a5a132:	62 12 0d 40 7f f3    	vpermt2ps zmm14,zmm30,zmm27
  a5a138:	62 e2 0d 40 7f c5    	vpermt2ps zmm16,zmm30,zmm5
  a5a13e:	62 e2 0d 40 7f da    	vpermt2ps zmm19,zmm30,zmm2
  a5a144:	62 f1 7c 48 11 1e    	vmovups ZMMWORD PTR [rsi],zmm3
  a5a14a:	c5 7c 11 4e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm9
  a5a14f:	62 71 7c 48 11 ae 60 	vmovups ZMMWORD PTR [rsi+0x60],zmm13
  a5a156:	00 00 00 
  a5a159:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a5a160:	fe 
  a5a161:	c5 fc 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm0
  a5a168:	00 
  a5a169:	62 71 7c 48 11 66 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm12
  a5a170:	c5 7c 11 96 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm10
  a5a177:	00 
  a5a178:	62 f1 7c 48 11 be 20 	vmovups ZMMWORD PTR [rsi+0x120],zmm7
  a5a17f:	01 00 00 
  a5a182:	c5 fc 11 b6 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm6
  a5a189:	00 
  a5a18a:	62 71 7c 48 11 46 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm8
  a5a191:	c5 7c 11 be c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm15
  a5a198:	00 
  a5a199:	62 e1 7c 48 11 8e e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm17
  a5a1a0:	01 00 00 
  a5a1a3:	62 e1 7c 28 11 56 11 	vmovups YMMWORD PTR [rsi+0x220],ymm18
  a5a1aa:	62 71 7c 48 11 5e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm11
  a5a1b1:	62 e1 7c 28 11 66 14 	vmovups YMMWORD PTR [rsi+0x280],ymm20
  a5a1b8:	62 71 7c 48 11 b6 a0 	vmovups ZMMWORD PTR [rsi+0x2a0],zmm14
  a5a1bf:	02 00 00 
  a5a1c2:	62 61 7c 28 11 7e 17 	vmovups YMMWORD PTR [rsi+0x2e0],ymm31
  a5a1c9:	62 e1 7c 48 11 46 0c 	vmovups ZMMWORD PTR [rsi+0x300],zmm16
  a5a1d0:	62 e1 7c 28 11 76 1a 	vmovups YMMWORD PTR [rsi+0x340],ymm22
  a5a1d7:	62 e1 7c 48 11 9e 60 	vmovups ZMMWORD PTR [rsi+0x360],zmm19
  a5a1de:	03 00 00 
  a5a1e1:	c5 fc 11 a6 a0 03 00 	vmovups YMMWORD PTR [rsi+0x3a0],ymm4
  a5a1e8:	00 
  a5a1e9:	48 81 c4 c8 01 00 00 	add    rsp,0x1c8
  a5a1f0:	c5 f8 77             	vzeroupper
  a5a1f3:	c3                   	ret
