
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a605c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a605c0:	55                   	push   rbp
  a605c1:	48 89 e5             	mov    rbp,rsp
  a605c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a605c8:	48 81 ec c0 05 00 00 	sub    rsp,0x5c0
  a605cf:	c6 84 24 40 05 00 00 	mov    BYTE PTR [rsp+0x540],0x0
  a605d6:	00 
  a605d7:	48 8d 84 24 40 05 00 	lea    rax,[rsp+0x540]
  a605de:	00 
  a605df:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a605e4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a605e9:	c5 fb 10 47 20       	vmovsd xmm0,QWORD PTR [rdi+0x20]
  a605ee:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a605f2:	c5 fc 10 5f 28       	vmovups ymm3,YMMWORD PTR [rdi+0x28]
  a605f7:	c5 fc 10 67 50       	vmovups ymm4,YMMWORD PTR [rdi+0x50]
  a605fc:	c5 fc 10 6f 78       	vmovups ymm5,YMMWORD PTR [rdi+0x78]
  a60601:	62 f3 f5 48 1a c8 01 	vinsertf64x4 zmm1,zmm1,ymm0,0x1
  a60608:	62 01 24 00 57 db    	vxorps xmm27,xmm27,xmm27
  a6060e:	62 f1 7c 48 28 15 68 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff633368]        # 93980 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20e30>
  a60615:	33 63 ff 
  a60618:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a6061e:	62 92 6d 48 7f c3    	vpermt2ps zmm0,zmm2,zmm27
  a60624:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a6062b:	08 
  a6062c:	62 f1 7c 48 28 05 8a 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff63338a]        # 939c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20e70>
  a60633:	33 63 ff 
  a60636:	62 92 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm27
  a6063c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a60643:	02 
  a60644:	c5 fb 10 4f 48       	vmovsd xmm1,QWORD PTR [rdi+0x48]
  a60649:	62 f3 e5 48 1a d9 01 	vinsertf64x4 zmm3,zmm3,ymm1,0x1
  a60650:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a60656:	62 92 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm27
  a6065c:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a60662:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a60669:	0a 
  a6066a:	62 92 7d 48 7f db    	vpermt2ps zmm3,zmm0,zmm27
  a60670:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a60676:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm3
  a6067d:	09 
  a6067e:	c5 fb 10 4f 70       	vmovsd xmm1,QWORD PTR [rdi+0x70]
  a60683:	62 f3 dd 48 1a c9 01 	vinsertf64x4 zmm1,zmm4,ymm1,0x1
  a6068a:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a60690:	62 92 6d 48 7f db    	vpermt2ps zmm3,zmm2,zmm27
  a60696:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a6069d:	01 
  a6069e:	62 92 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm27
  a606a4:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a606ab:	07 
  a606ac:	c5 fb 10 8f 98 00 00 	vmovsd xmm1,QWORD PTR [rdi+0x98]
  a606b3:	00 
  a606b4:	62 e3 d5 48 1a c1 01 	vinsertf64x4 zmm16,zmm5,ymm1,0x1
  a606bb:	62 b1 7c 48 28 c8    	vmovaps zmm1,zmm16
  a606c1:	62 92 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm27
  a606c7:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm1
  a606ce:	12 
  a606cf:	62 82 7d 48 7f c3    	vpermt2ps zmm16,zmm0,zmm27
  a606d5:	c5 fb 10 8f c0 00 00 	vmovsd xmm1,QWORD PTR [rdi+0xc0]
  a606dc:	00 
  a606dd:	c5 fc 10 9f a0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xa0]
  a606e4:	00 
  a606e5:	62 f3 e5 48 1a c9 01 	vinsertf64x4 zmm1,zmm3,ymm1,0x1
  a606ec:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a606f2:	62 92 6d 48 7f db    	vpermt2ps zmm3,zmm2,zmm27
  a606f8:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm3
  a606ff:	05 
  a60700:	62 92 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm27
  a60706:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a6070d:	06 
  a6070e:	c5 fb 10 8f e8 00 00 	vmovsd xmm1,QWORD PTR [rdi+0xe8]
  a60715:	00 
  a60716:	c5 fc 10 9f c8 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xc8]
  a6071d:	00 
  a6071e:	62 e3 e5 48 1a d9 01 	vinsertf64x4 zmm19,zmm3,ymm1,0x1
  a60725:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a6072b:	62 92 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm27
  a60731:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a60737:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a6073e:	0c 
  a6073f:	62 82 7d 48 7f db    	vpermt2ps zmm19,zmm0,zmm27
  a60745:	c5 fb 10 8f 10 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x110]
  a6074c:	00 
  a6074d:	c5 fc 10 9f f0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xf0]
  a60754:	00 
  a60755:	62 f3 e5 48 1a c9 01 	vinsertf64x4 zmm1,zmm3,ymm1,0x1
  a6075c:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a60762:	62 92 6d 48 7f db    	vpermt2ps zmm3,zmm2,zmm27
  a60768:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm3
  a6076f:	03 
  a60770:	62 92 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm27
  a60776:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a6077d:	04 
  a6077e:	c5 fb 10 8f 38 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x138]
  a60785:	00 
  a60786:	c5 fc 10 9f 18 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x118]
  a6078d:	00 
  a6078e:	62 e3 e5 48 1a c9 01 	vinsertf64x4 zmm17,zmm3,ymm1,0x1
  a60795:	62 a1 7c 48 28 e9    	vmovaps zmm21,zmm17
  a6079b:	62 82 6d 48 7f eb    	vpermt2ps zmm21,zmm2,zmm27
  a607a1:	62 82 7d 48 7f cb    	vpermt2ps zmm17,zmm0,zmm27
  a607a7:	c5 fb 10 8f 60 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x160]
  a607ae:	00 
  a607af:	c5 fc 10 9f 40 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x140]
  a607b6:	00 
  a607b7:	62 e3 e5 48 1a d1 01 	vinsertf64x4 zmm18,zmm3,ymm1,0x1
  a607be:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a607c4:	62 92 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm27
  a607ca:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm1
  a607d1:	14 
  a607d2:	62 82 7d 48 7f d3    	vpermt2ps zmm18,zmm0,zmm27
  a607d8:	c5 fb 10 8f 88 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x188]
  a607df:	00 
  a607e0:	c5 fc 10 9f 68 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x168]
  a607e7:	00 
  a607e8:	62 e3 e5 48 1a f1 01 	vinsertf64x4 zmm22,zmm3,ymm1,0x1
  a607ef:	62 b1 7c 48 28 ce    	vmovaps zmm1,zmm22
  a607f5:	62 92 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm27
  a607fb:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a60801:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a60808:	0b 
  a60809:	62 82 7d 48 7f f3    	vpermt2ps zmm22,zmm0,zmm27
  a6080f:	c5 fb 10 8f b0 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x1b0]
  a60816:	00 
  a60817:	c5 fc 10 9f 90 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x190]
  a6081e:	00 
  a6081f:	62 e3 e5 48 1a e1 01 	vinsertf64x4 zmm20,zmm3,ymm1,0x1
  a60826:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  a6082c:	62 92 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm27
  a60832:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm1
  a60839:	13 
  a6083a:	62 82 7d 48 7f e3    	vpermt2ps zmm20,zmm0,zmm27
  a60840:	c5 fb 10 8f d8 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x1d8]
  a60847:	00 
  a60848:	c5 fc 10 9f b8 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x1b8]
  a6084f:	00 
  a60850:	62 63 e5 48 1a c9 01 	vinsertf64x4 zmm25,zmm3,ymm1,0x1
  a60857:	62 01 7c 48 28 c1    	vmovaps zmm24,zmm25
  a6085d:	62 02 6d 48 7f c3    	vpermt2ps zmm24,zmm2,zmm27
  a60863:	62 02 7d 48 7f cb    	vpermt2ps zmm25,zmm0,zmm27
  a60869:	c5 fb 10 8f 00 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x200]
  a60870:	00 
  a60871:	c5 fc 10 9f e0 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x1e0]
  a60878:	00 
  a60879:	62 e3 e5 48 1a f9 01 	vinsertf64x4 zmm23,zmm3,ymm1,0x1
  a60880:	c5 fb 10 8f 28 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x228]
  a60887:	00 
  a60888:	c5 fc 10 9f 08 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x208]
  a6088f:	00 
  a60890:	62 63 e5 48 1a e1 01 	vinsertf64x4 zmm28,zmm3,ymm1,0x1
  a60897:	c5 fb 10 8f 50 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x250]
  a6089e:	00 
  a6089f:	c5 fc 10 9f 30 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x230]
  a608a6:	00 
  a608a7:	62 63 e5 48 1a d1 01 	vinsertf64x4 zmm26,zmm3,ymm1,0x1
  a608ae:	c5 fb 10 8f 78 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x278]
  a608b5:	00 
  a608b6:	c5 fc 10 9f 58 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x258]
  a608bd:	00 
  a608be:	62 63 e5 48 1a f9 01 	vinsertf64x4 zmm31,zmm3,ymm1,0x1
  a608c5:	62 21 7c 48 28 ef    	vmovaps zmm29,zmm23
  a608cb:	62 02 6d 48 7f eb    	vpermt2ps zmm29,zmm2,zmm27
  a608d1:	62 82 7d 48 7f fb    	vpermt2ps zmm23,zmm0,zmm27
  a608d7:	62 11 7c 48 28 fc    	vmovaps zmm15,zmm28
  a608dd:	62 12 6d 48 7f fb    	vpermt2ps zmm15,zmm2,zmm27
  a608e3:	62 02 7d 48 7f e3    	vpermt2ps zmm28,zmm0,zmm27
  a608e9:	62 01 7c 48 28 f2    	vmovaps zmm30,zmm26
  a608ef:	62 02 6d 48 7f f3    	vpermt2ps zmm30,zmm2,zmm27
  a608f5:	62 02 7d 48 7f d3    	vpermt2ps zmm26,zmm0,zmm27
  a608fb:	62 92 05 40 77 d3    	vpermi2ps zmm2,zmm31,zmm27
  a60901:	62 02 7d 48 7f fb    	vpermt2ps zmm31,zmm0,zmm27
  a60907:	62 31 4c 48 5c f6    	vsubps zmm14,zmm6,zmm22
  a6090d:	62 51 54 48 5c e7    	vsubps zmm12,zmm5,zmm15
  a60913:	62 d1 0c 48 58 f4    	vaddps zmm6,zmm14,zmm12
  a60919:	62 51 44 48 5c d8    	vsubps zmm11,zmm7,zmm8
  a6091f:	62 31 1c 40 5c d3    	vsubps zmm10,zmm28,zmm19
  a60925:	62 51 2c 48 58 c3    	vaddps zmm8,zmm10,zmm11
  a6092b:	62 72 7d 48 18 0d 2f 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff614d2f]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a60932:	4d 61 ff 
  a60935:	62 d1 3c 48 59 c1    	vmulps zmm0,zmm8,zmm9
  a6093b:	62 f2 7d 48 18 3d bb 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff614dbb]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a60942:	4d 61 ff 
  a60945:	62 f2 4d 48 b8 c7    	vfmadd231ps zmm0,zmm6,zmm7
  a6094b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a60952:	11 
  a60953:	62 f1 3c 48 59 c7    	vmulps zmm0,zmm8,zmm7
  a60959:	62 f2 35 48 bc c6    	vfnmadd231ps zmm0,zmm9,zmm6
  a6095f:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a60966:	10 
  a60967:	62 91 7c 40 5c e9    	vsubps zmm5,zmm16,zmm25
  a6096d:	62 f1 54 40 5c e2    	vsubps zmm4,zmm21,zmm2
  a60973:	62 f1 54 48 58 c4    	vaddps zmm0,zmm5,zmm4
  a60979:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x480]
  a60980:	12 
  a60981:	62 91 14 48 5c d8    	vsubps zmm3,zmm13,zmm24
  a60987:	62 b1 04 40 5c c9    	vsubps zmm1,zmm31,zmm17
  a6098d:	62 f1 74 48 58 f3    	vaddps zmm6,zmm1,zmm3
  a60993:	62 61 4c 48 59 df    	vmulps zmm27,zmm6,zmm7
  a60999:	62 42 7d 48 b8 d9    	vfmadd231ps zmm27,zmm0,zmm9
  a6099f:	62 d1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm9
  a609a5:	62 f2 45 48 bc f0    	vfnmadd231ps zmm6,zmm7,zmm0
  a609ab:	62 d1 0c 48 5c c4    	vsubps zmm0,zmm14,zmm12
  a609b1:	62 51 24 48 5c d2    	vsubps zmm10,zmm11,zmm10
  a609b7:	62 f1 54 48 5c ec    	vsubps zmm5,zmm5,zmm4
  a609bd:	62 71 64 48 5c d9    	vsubps zmm11,zmm3,zmm1
  a609c3:	62 f1 2c 48 59 cf    	vmulps zmm1,zmm10,zmm7
  a609c9:	62 d2 7d 48 b8 c9    	vfmadd231ps zmm1,zmm0,zmm9
  a609cf:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm1
  a609d6:	0f 
  a609d7:	62 d1 2c 48 59 c9    	vmulps zmm1,zmm10,zmm9
  a609dd:	62 f2 45 48 bc c8    	vfnmadd231ps zmm1,zmm7,zmm0
  a609e3:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a609ea:	0d 
  a609eb:	62 d1 24 48 59 c1    	vmulps zmm0,zmm11,zmm9
  a609f1:	62 f2 55 48 b8 c7    	vfmadd231ps zmm0,zmm5,zmm7
  a609f7:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a609fe:	0e 
  a609ff:	62 51 54 48 59 c1    	vmulps zmm8,zmm5,zmm9
  a60a05:	62 72 25 48 bc c7    	vfnmadd231ps zmm8,zmm11,zmm7
  a60a0b:	62 f1 4c 40 58 6c 24 	vaddps zmm5,zmm22,ZMMWORD PTR [rsp+0x240]
  a60a12:	09 
  a60a13:	62 91 64 40 58 fc    	vaddps zmm7,zmm19,zmm28
  a60a19:	62 11 7c 40 58 c9    	vaddps zmm9,zmm16,zmm25
  a60a1f:	62 11 74 40 58 d7    	vaddps zmm10,zmm17,zmm31
  a60a25:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a60a2c:	0a 
  a60a2d:	62 71 7c 48 58 5c 24 	vaddps zmm11,zmm0,ZMMWORD PTR [rsp+0x2c0]
  a60a34:	0b 
  a60a35:	62 71 04 48 58 64 24 	vaddps zmm12,zmm15,ZMMWORD PTR [rsp+0x300]
  a60a3c:	0c 
  a60a3d:	62 11 14 48 58 e8    	vaddps zmm13,zmm13,zmm24
  a60a43:	62 f1 54 40 58 d2    	vaddps zmm2,zmm21,zmm2
  a60a49:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a60a50:	02 
  a60a51:	62 31 7c 48 58 fa    	vaddps zmm15,zmm0,zmm18
  a60a57:	62 a1 7c 48 5c c2    	vsubps zmm16,zmm0,zmm18
  a60a5d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a60a64:	05 
  a60a65:	62 81 7c 48 58 cd    	vaddps zmm17,zmm0,zmm29
  a60a6b:	62 81 7c 48 5c d5    	vsubps zmm18,zmm0,zmm29
  a60a71:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a60a78:	07 
  a60a79:	62 a1 7c 48 58 ec    	vaddps zmm21,zmm0,zmm20
  a60a7f:	62 a1 7c 48 5c e4    	vsubps zmm20,zmm0,zmm20
  a60a85:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a60a8c:	01 
  a60a8d:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x4c0]
  a60a94:	13 
  a60a95:	62 e1 7c 48 58 f1    	vaddps zmm22,zmm0,zmm1
  a60a9b:	62 61 7c 48 5c c1    	vsubps zmm24,zmm0,zmm1
  a60aa1:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a60aa8:	03 
  a60aa9:	62 01 7c 48 58 ce    	vaddps zmm25,zmm0,zmm30
  a60aaf:	62 01 7c 48 5c e6    	vsubps zmm28,zmm0,zmm30
  a60ab5:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a60abc:	04 
  a60abd:	62 01 7c 48 58 ea    	vaddps zmm29,zmm0,zmm26
  a60ac3:	62 81 7c 48 5c da    	vsubps zmm19,zmm0,zmm26
  a60ac9:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a60ad0:	08 
  a60ad1:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x500]
  a60ad8:	14 
  a60ad9:	62 61 7c 48 58 d1    	vaddps zmm26,zmm0,zmm1
  a60adf:	62 61 7c 48 5c f1    	vsubps zmm30,zmm0,zmm1
  a60ae5:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a60aec:	06 
  a60aed:	62 21 7c 48 58 ff    	vaddps zmm31,zmm0,zmm23
  a60af3:	62 e1 44 40 5c f8    	vsubps zmm23,zmm23,zmm0
  a60af9:	62 91 5c 40 58 c8    	vaddps zmm1,zmm20,zmm24
  a60aff:	62 a1 3c 40 5c e4    	vsubps zmm20,zmm24,zmm20
  a60b05:	62 21 1c 40 5c c3    	vsubps zmm24,zmm28,zmm19
  a60b0b:	62 81 64 40 58 dc    	vaddps zmm19,zmm19,zmm28
  a60b11:	62 01 04 48 58 e7    	vaddps zmm28,zmm15,zmm31
  a60b17:	62 91 04 48 5c c7    	vsubps zmm0,zmm15,zmm31
  a60b1d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a60b24:	02 
  a60b25:	62 01 4c 40 58 f9    	vaddps zmm31,zmm22,zmm25
  a60b2b:	62 81 4c 40 5c f1    	vsubps zmm22,zmm22,zmm25
  a60b31:	62 61 54 48 58 cf    	vaddps zmm25,zmm5,zmm7
  a60b37:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a60b3d:	62 d1 24 48 58 fc    	vaddps zmm7,zmm11,zmm12
  a60b43:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a60b49:	62 71 14 48 58 e2    	vaddps zmm12,zmm13,zmm2
  a60b4f:	62 f1 14 48 5c d2    	vsubps zmm2,zmm13,zmm2
  a60b55:	62 51 34 48 58 ea    	vaddps zmm13,zmm9,zmm10
  a60b5b:	62 51 34 48 5c ca    	vsubps zmm9,zmm9,zmm10
  a60b61:	62 31 2c 40 58 d1    	vaddps zmm10,zmm26,zmm17
  a60b67:	62 b1 2c 40 5c c1    	vsubps zmm0,zmm26,zmm17
  a60b6d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a60b74:	01 
  a60b75:	62 01 54 40 58 d5    	vaddps zmm26,zmm21,zmm29
  a60b7b:	62 a1 14 40 5c ed    	vsubps zmm21,zmm29,zmm21
  a60b81:	62 41 54 48 58 eb    	vaddps zmm29,zmm5,zmm11
  a60b87:	62 f1 24 48 5c ed    	vsubps zmm5,zmm11,zmm5
  a60b8d:	62 72 7d 48 18 1d 05 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff614805]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a60b94:	48 61 ff 
  a60b97:	62 d1 6c 48 5c c1    	vsubps zmm0,zmm2,zmm9
  a60b9d:	62 f1 34 48 58 d2    	vaddps zmm2,zmm9,zmm2
  a60ba3:	62 d1 74 48 59 cb    	vmulps zmm1,zmm1,zmm11
  a60ba9:	62 51 3c 40 59 cb    	vmulps zmm9,zmm24,zmm11
  a60baf:	62 c1 5c 40 59 e3    	vmulps zmm20,zmm20,zmm11
  a60bb5:	62 c1 64 40 59 db    	vmulps zmm19,zmm19,zmm11
  a60bbb:	62 41 14 40 59 c3    	vmulps zmm24,zmm29,zmm11
  a60bc1:	62 d1 7c 48 59 e3    	vmulps zmm4,zmm0,zmm11
  a60bc7:	62 d1 54 48 59 db    	vmulps zmm3,zmm5,zmm11
  a60bcd:	62 d1 6c 48 59 c3    	vmulps zmm0,zmm2,zmm11
  a60bd3:	62 31 7c 40 58 da    	vaddps zmm11,zmm16,zmm18
  a60bd9:	62 a1 7c 40 5c c2    	vsubps zmm16,zmm16,zmm18
  a60bdf:	62 a1 5c 40 5c d3    	vsubps zmm18,zmm20,zmm19
  a60be5:	62 a1 5c 40 58 db    	vaddps zmm19,zmm20,zmm19
  a60beb:	62 81 44 40 58 e6    	vaddps zmm20,zmm23,zmm30
  a60bf1:	62 a1 0c 40 5c ff    	vsubps zmm23,zmm30,zmm23
  a60bf7:	62 41 74 48 58 e9    	vaddps zmm29,zmm1,zmm9
  a60bfd:	62 e1 34 48 5c c9    	vsubps zmm17,zmm9,zmm1
  a60c03:	62 11 1c 40 58 fa    	vaddps zmm15,zmm28,zmm26
  a60c09:	62 91 1c 40 5c ca    	vsubps zmm1,zmm28,zmm26
  a60c0f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a60c16:	07 
  a60c17:	62 41 44 48 58 e4    	vaddps zmm28,zmm7,zmm12
  a60c1d:	62 d1 44 48 5c cc    	vsubps zmm1,zmm7,zmm12
  a60c23:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a60c2a:	06 
  a60c2b:	62 11 2c 48 58 f7    	vaddps zmm14,zmm10,zmm31
  a60c31:	62 91 2c 48 5c cf    	vsubps zmm1,zmm10,zmm31
  a60c37:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a60c3e:	05 
  a60c3f:	62 51 34 40 58 d5    	vaddps zmm10,zmm25,zmm13
  a60c45:	62 91 14 48 5c c9    	vsubps zmm1,zmm13,zmm25
  a60c4b:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a60c52:	04 
  a60c53:	62 01 24 48 58 cd    	vaddps zmm25,zmm11,zmm29
  a60c59:	62 01 24 48 5c f5    	vsubps zmm30,zmm11,zmm29
  a60c5f:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x400]
  a60c66:	10 
  a60c67:	62 71 74 48 58 de    	vaddps zmm11,zmm1,zmm6
  a60c6d:	62 61 74 48 5c ee    	vsubps zmm29,zmm1,zmm6
  a60c73:	62 21 5c 40 58 fa    	vaddps zmm31,zmm20,zmm18
  a60c79:	62 21 5c 40 5c d2    	vsubps zmm26,zmm20,zmm18
  a60c7f:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x440]
  a60c86:	11 
  a60c87:	62 81 74 48 58 e3    	vaddps zmm20,zmm1,zmm27
  a60c8d:	62 61 24 40 5c d9    	vsubps zmm27,zmm27,zmm1
  a60c93:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a60c9a:	02 
  a60c9b:	62 b1 74 48 58 f6    	vaddps zmm6,zmm1,zmm22
  a60ca1:	62 a1 74 48 5c d6    	vsubps zmm18,zmm1,zmm22
  a60ca7:	62 e1 64 48 5c f0    	vsubps zmm22,zmm3,zmm0
  a60cad:	62 71 64 48 58 e8    	vaddps zmm13,zmm3,zmm0
  a60cb3:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a60cba:	01 
  a60cbb:	62 f1 54 40 58 e8    	vaddps zmm5,zmm21,zmm0
  a60cc1:	62 a1 7c 48 5c ed    	vsubps zmm21,zmm0,zmm21
  a60cc7:	62 f1 3c 40 58 d4    	vaddps zmm2,zmm24,zmm4
  a60ccd:	62 01 5c 48 5c c0    	vsubps zmm24,zmm4,zmm24
  a60cd3:	62 b1 7c 40 58 e3    	vaddps zmm4,zmm16,zmm19
  a60cd9:	62 31 7c 40 5c e3    	vsubps zmm12,zmm16,zmm19
  a60cdf:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x340]
  a60ce6:	0d 
  a60ce7:	62 d1 7c 48 58 d8    	vaddps zmm3,zmm0,zmm8
  a60ced:	62 51 7c 48 5c c8    	vsubps zmm9,zmm0,zmm8
  a60cf3:	62 b1 44 40 58 c9    	vaddps zmm1,zmm23,zmm17
  a60cf9:	62 31 44 40 5c c1    	vsubps zmm8,zmm23,zmm17
  a60cff:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x3c0]
  a60d06:	0f 
  a60d07:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x380]
  a60d0e:	0e 
  a60d0f:	62 b1 44 48 5c c0    	vsubps zmm0,zmm7,zmm16
  a60d15:	62 b1 44 48 58 f8    	vaddps zmm7,zmm7,zmm16
  a60d1b:	62 c1 04 48 58 da    	vaddps zmm19,zmm15,zmm10
  a60d21:	62 51 04 48 5c d2    	vsubps zmm10,zmm15,zmm10
  a60d27:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm10
  a60d2e:	03 
  a60d2f:	62 81 0c 48 58 c4    	vaddps zmm16,zmm14,zmm28
  a60d35:	62 11 0c 48 5c d4    	vsubps zmm10,zmm14,zmm28
  a60d3b:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm10
  a60d42:	02 
  a60d43:	62 a1 34 40 58 fc    	vaddps zmm23,zmm25,zmm20
  a60d49:	62 a1 34 40 5c e4    	vsubps zmm20,zmm25,zmm20
  a60d4f:	62 c1 04 40 58 cb    	vaddps zmm17,zmm31,zmm11
  a60d55:	62 51 04 40 5c d3    	vsubps zmm10,zmm31,zmm11
  a60d5b:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm10
  a60d62:	01 
  a60d63:	62 71 4c 48 58 d2    	vaddps zmm10,zmm6,zmm2
  a60d69:	62 f1 4c 48 5c d2    	vsubps zmm2,zmm6,zmm2
  a60d6f:	62 21 54 48 58 ce    	vaddps zmm25,zmm5,zmm22
  a60d75:	62 b1 54 48 5c ee    	vsubps zmm5,zmm5,zmm22
  a60d7b:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm5
  a60d82:	08 
  a60d83:	62 71 5c 48 58 d8    	vaddps zmm11,zmm4,zmm0
  a60d89:	62 e1 5c 48 5c f0    	vsubps zmm22,zmm4,zmm0
  a60d8f:	62 f1 74 48 58 e3    	vaddps zmm4,zmm1,zmm3
  a60d95:	62 61 74 48 5c fb    	vsubps zmm31,zmm1,zmm3
  a60d9b:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a60da2:	07 
  a60da3:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x180]
  a60daa:	06 
  a60dab:	62 f1 74 48 58 c3    	vaddps zmm0,zmm1,zmm3
  a60db1:	62 f1 74 48 5c cb    	vsubps zmm1,zmm1,zmm3
  a60db7:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x140]
  a60dbe:	05 
  a60dbf:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x100]
  a60dc6:	04 
  a60dc7:	62 f1 4c 48 58 dd    	vaddps zmm3,zmm6,zmm5
  a60dcd:	62 61 54 48 5c e6    	vsubps zmm28,zmm5,zmm6
  a60dd3:	62 91 0c 40 58 ed    	vaddps zmm5,zmm30,zmm29
  a60dd9:	62 01 0c 40 5c f5    	vsubps zmm30,zmm30,zmm29
  a60ddf:	62 01 2c 40 58 eb    	vaddps zmm29,zmm26,zmm27
  a60de5:	62 01 2c 40 5c d3    	vsubps zmm26,zmm26,zmm27
  a60deb:	62 51 6c 40 58 f5    	vaddps zmm14,zmm18,zmm13
  a60df1:	62 41 6c 40 5c dd    	vsubps zmm27,zmm18,zmm13
  a60df7:	62 81 54 40 58 d0    	vaddps zmm18,zmm21,zmm24
  a60dfd:	62 11 54 40 5c e8    	vsubps zmm13,zmm21,zmm24
  a60e03:	62 51 1c 48 58 f9    	vaddps zmm15,zmm12,zmm9
  a60e09:	62 51 1c 48 5c c9    	vsubps zmm9,zmm12,zmm9
  a60e0f:	62 f1 3c 48 5c f7    	vsubps zmm6,zmm8,zmm7
  a60e15:	62 f1 3c 48 58 ff    	vaddps zmm7,zmm8,zmm7
  a60e1b:	62 61 7c 48 28 05 5b 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff66615b]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a60e22:	61 66 ff 
  a60e25:	62 e2 3d 40 7f 5c 24 	vpermt2ps zmm19,zmm24,ZMMWORD PTR [rsp+0xc0]
  a60e2c:	03 
  a60e2d:	62 a2 3d 40 7f fc    	vpermt2ps zmm23,zmm24,zmm20
  a60e33:	62 72 3d 40 7f d2    	vpermt2ps zmm10,zmm24,zmm2
  a60e39:	62 32 3d 40 7f de    	vpermt2ps zmm11,zmm24,zmm22
  a60e3f:	62 f2 3d 40 7f c1    	vpermt2ps zmm0,zmm24,zmm1
  a60e45:	62 92 3d 40 7f ee    	vpermt2ps zmm5,zmm24,zmm30
  a60e4b:	62 12 3d 40 7f f3    	vpermt2ps zmm14,zmm24,zmm27
  a60e51:	62 52 3d 40 7f f9    	vpermt2ps zmm15,zmm24,zmm9
  a60e57:	62 e2 3d 40 7f 44 24 	vpermt2ps zmm16,zmm24,ZMMWORD PTR [rsp+0x80]
  a60e5e:	02 
  a60e5f:	62 e2 3d 40 7f 4c 24 	vpermt2ps zmm17,zmm24,ZMMWORD PTR [rsp+0x40]
  a60e66:	01 
  a60e67:	62 62 3d 40 7f 4c 24 	vpermt2ps zmm25,zmm24,ZMMWORD PTR [rsp+0x200]
  a60e6e:	08 
  a60e6f:	62 92 3d 40 7f e7    	vpermt2ps zmm4,zmm24,zmm31
  a60e75:	62 92 3d 40 7f dc    	vpermt2ps zmm3,zmm24,zmm28
  a60e7b:	62 02 3d 40 7f ea    	vpermt2ps zmm29,zmm24,zmm26
  a60e81:	62 c2 3d 40 7f d5    	vpermt2ps zmm18,zmm24,zmm13
  a60e87:	62 f1 7c 48 28 15 6f 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff66606f]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a60e8e:	60 66 ff 
  a60e91:	62 f2 3d 40 7f f7    	vpermt2ps zmm6,zmm24,zmm7
  a60e97:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a60e9d:	62 f2 6d 48 7f c8    	vpermt2ps zmm1,zmm2,zmm0
  a60ea3:	62 f1 7c 48 28 3d 93 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff666093]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a60eaa:	60 66 ff 
  a60ead:	62 e2 45 48 7f d8    	vpermt2ps zmm19,zmm7,zmm0
  a60eb3:	62 b1 7c 48 28 c7    	vmovaps zmm0,zmm23
  a60eb9:	62 f2 6d 48 7f c5    	vpermt2ps zmm0,zmm2,zmm5
  a60ebf:	62 e2 45 48 7f fd    	vpermt2ps zmm23,zmm7,zmm5
  a60ec5:	62 d1 7c 48 28 ea    	vmovaps zmm5,zmm10
  a60ecb:	62 d2 6d 48 7f ee    	vpermt2ps zmm5,zmm2,zmm14
  a60ed1:	62 52 45 48 7f d6    	vpermt2ps zmm10,zmm7,zmm14
  a60ed7:	62 51 e5 40 14 d2    	vunpcklpd zmm10,zmm19,zmm10
  a60edd:	62 51 7c 48 28 c3    	vmovaps zmm8,zmm11
  a60ee3:	62 52 6d 48 7f c7    	vpermt2ps zmm8,zmm2,zmm15
  a60ee9:	62 52 45 48 7f df    	vpermt2ps zmm11,zmm7,zmm15
  a60eef:	62 51 c5 40 14 cb    	vunpcklpd zmm9,zmm23,zmm11
  a60ef5:	62 71 f5 48 14 dd    	vunpcklpd zmm11,zmm1,zmm5
  a60efb:	62 f1 f5 48 15 ed    	vunpckhpd zmm5,zmm1,zmm5
  a60f01:	62 51 fd 48 14 e0    	vunpcklpd zmm12,zmm0,zmm8
  a60f07:	62 d1 fd 48 15 c0    	vunpckhpd zmm0,zmm0,zmm8
  a60f0d:	62 31 7c 48 28 c0    	vmovaps zmm8,zmm16
  a60f13:	62 72 6d 48 7f c3    	vpermt2ps zmm8,zmm2,zmm3
  a60f19:	62 e2 45 48 7f c3    	vpermt2ps zmm16,zmm7,zmm3
  a60f1f:	62 b1 7c 48 28 d9    	vmovaps zmm3,zmm17
  a60f25:	62 92 6d 48 7f dd    	vpermt2ps zmm3,zmm2,zmm29
  a60f2b:	62 82 45 48 7f cd    	vpermt2ps zmm17,zmm7,zmm29
  a60f31:	62 11 7c 48 28 e9    	vmovaps zmm13,zmm25
  a60f37:	62 32 6d 48 7f ea    	vpermt2ps zmm13,zmm2,zmm18
  a60f3d:	62 22 45 48 7f ca    	vpermt2ps zmm25,zmm7,zmm18
  a60f43:	62 71 7c 48 28 35 b3 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff665eb3]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a60f4a:	5e 66 ff 
  a60f4d:	62 f2 5d 48 77 d6    	vpermi2ps zmm2,zmm4,zmm6
  a60f53:	62 f2 45 48 7f e6    	vpermt2ps zmm4,zmm7,zmm6
  a60f59:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a60f5f:	62 d2 0d 48 7f cc    	vpermt2ps zmm1,zmm14,zmm12
  a60f65:	62 f1 7c 48 28 35 d1 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff665ed1]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a60f6c:	5e 66 ff 
  a60f6f:	62 52 4d 48 7f dc    	vpermt2ps zmm11,zmm6,zmm12
  a60f75:	62 f1 7c 48 28 fd    	vmovaps zmm7,zmm5
  a60f7b:	62 f2 0d 48 7f f8    	vpermt2ps zmm7,zmm14,zmm0
  a60f81:	62 f2 4d 48 7f e8    	vpermt2ps zmm5,zmm6,zmm0
  a60f87:	62 52 0d 48 7f d1    	vpermt2ps zmm10,zmm14,zmm9
  a60f8d:	62 11 fd 40 14 c9    	vunpcklpd zmm9,zmm16,zmm25
  a60f93:	62 71 f5 40 14 e4    	vunpcklpd zmm12,zmm17,zmm4
  a60f99:	62 51 bd 48 14 fd    	vunpcklpd zmm15,zmm8,zmm13
  a60f9f:	62 d1 bd 48 15 e5    	vunpckhpd zmm4,zmm8,zmm13
  a60fa5:	62 71 e5 48 14 c2    	vunpcklpd zmm8,zmm3,zmm2
  a60fab:	62 f1 e5 48 15 d2    	vunpckhpd zmm2,zmm3,zmm2
  a60fb1:	62 d1 7c 48 28 c7    	vmovaps zmm0,zmm15
  a60fb7:	62 d2 0d 48 7f c0    	vpermt2ps zmm0,zmm14,zmm8
  a60fbd:	62 52 4d 48 7f f8    	vpermt2ps zmm15,zmm6,zmm8
  a60fc3:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a60fc9:	62 f2 0d 48 7f da    	vpermt2ps zmm3,zmm14,zmm2
  a60fcf:	62 f2 4d 48 7f e2    	vpermt2ps zmm4,zmm6,zmm2
  a60fd5:	62 52 0d 48 7f cc    	vpermt2ps zmm9,zmm14,zmm12
  a60fdb:	62 f1 7c 48 10 52 02 	vmovups zmm2,ZMMWORD PTR [rdx+0x80]
  a60fe2:	62 f1 7c 48 10 72 03 	vmovups zmm6,ZMMWORD PTR [rdx+0xc0]
  a60fe9:	62 71 7c 48 10 42 04 	vmovups zmm8,ZMMWORD PTR [rdx+0x100]
  a60ff0:	62 71 7c 48 10 62 05 	vmovups zmm12,ZMMWORD PTR [rdx+0x140]
  a60ff7:	62 71 04 48 59 ea    	vmulps zmm13,zmm15,zmm2
  a60ffd:	62 72 25 48 b8 ee    	vfmadd231ps zmm13,zmm11,zmm6
  a61003:	62 71 24 48 59 da    	vmulps zmm11,zmm11,zmm2
  a61009:	62 f1 7c 48 10 52 09 	vmovups zmm2,ZMMWORD PTR [rdx+0x240]
  a61010:	62 52 4d 48 bc df    	vfnmadd231ps zmm11,zmm6,zmm15
  a61016:	62 f1 7c 48 10 72 08 	vmovups zmm6,ZMMWORD PTR [rdx+0x200]
  a6101d:	62 71 34 48 59 f6    	vmulps zmm14,zmm9,zmm6
  a61023:	62 72 2d 48 b8 f2    	vfmadd231ps zmm14,zmm10,zmm2
  a61029:	62 f1 2c 48 59 f6    	vmulps zmm6,zmm10,zmm6
  a6102f:	62 51 64 48 59 d0    	vmulps zmm10,zmm3,zmm8
  a61035:	62 52 45 48 b8 d4    	vfmadd231ps zmm10,zmm7,zmm12
  a6103b:	62 d2 6d 48 bc f1    	vfnmadd231ps zmm6,zmm2,zmm9
  a61041:	62 71 7c 48 10 4a 07 	vmovups zmm9,ZMMWORD PTR [rdx+0x1c0]
  a61048:	62 71 7c 48 10 7a 06 	vmovups zmm15,ZMMWORD PTR [rdx+0x180]
  a6104f:	62 d1 44 48 59 f8    	vmulps zmm7,zmm7,zmm8
  a61055:	62 51 5c 48 59 c7    	vmulps zmm8,zmm4,zmm15
  a6105b:	62 52 55 48 b8 c1    	vfmadd231ps zmm8,zmm5,zmm9
  a61061:	62 f2 1d 48 bc fb    	vfnmadd231ps zmm7,zmm12,zmm3
  a61067:	62 d1 2c 48 58 d0    	vaddps zmm2,zmm10,zmm8
  a6106d:	62 d1 14 48 58 de    	vaddps zmm3,zmm13,zmm14
  a61073:	62 d1 54 48 59 ef    	vmulps zmm5,zmm5,zmm15
  a61079:	62 72 7d 48 18 25 65 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff614665]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a61080:	46 61 ff 
  a61083:	62 f2 35 48 bc ec    	vfnmadd231ps zmm5,zmm9,zmm4
  a61089:	62 d1 7c 48 28 e4    	vmovaps zmm4,zmm12
  a6108f:	62 f2 65 48 a8 e0    	vfmadd213ps zmm4,zmm3,zmm0
  a61095:	62 71 44 48 5c cd    	vsubps zmm9,zmm7,zmm5
  a6109b:	62 f1 44 48 58 ed    	vaddps zmm5,zmm7,zmm5
  a610a1:	62 f1 24 48 5c fe    	vsubps zmm7,zmm11,zmm6
  a610a7:	62 f1 24 48 58 f6    	vaddps zmm6,zmm11,zmm6
  a610ad:	62 72 7d 48 18 1d a1 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff6146a1]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a610b4:	46 61 ff 
  a610b7:	62 51 14 48 5c ee    	vsubps zmm13,zmm13,zmm14
  a610bd:	62 51 34 48 59 f3    	vmulps zmm14,zmm9,zmm11
  a610c3:	62 51 2c 48 5c c0    	vsubps zmm8,zmm10,zmm8
  a610c9:	62 72 7d 48 18 15 cd 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff6142cd]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a610d0:	42 61 ff 
  a610d3:	62 52 45 48 b8 f2    	vfmadd231ps zmm14,zmm7,zmm10
  a610d9:	62 d1 44 48 59 fb    	vmulps zmm7,zmm7,zmm11
  a610df:	62 d2 2d 48 bc f9    	vfnmadd231ps zmm7,zmm10,zmm9
  a610e5:	62 51 3c 48 59 cb    	vmulps zmm9,zmm8,zmm11
  a610eb:	62 52 15 48 b8 ca    	vfmadd231ps zmm9,zmm13,zmm10
  a610f1:	62 51 14 48 59 db    	vmulps zmm11,zmm13,zmm11
  a610f7:	62 72 7d 48 18 2d 43 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff614543]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a610fe:	45 61 ff 
  a61101:	62 d2 6d 48 bc e5    	vfnmadd231ps zmm4,zmm2,zmm13
  a61107:	62 52 3d 48 bc da    	vfnmadd231ps zmm11,zmm8,zmm10
  a6110d:	62 51 7c 48 28 c4    	vmovaps zmm8,zmm12
  a61113:	62 72 4d 48 a8 c1    	vfmadd213ps zmm8,zmm6,zmm1
  a61119:	62 52 55 48 bc c5    	vfnmadd231ps zmm8,zmm5,zmm13
  a6111f:	62 51 7c 48 28 d5    	vmovaps zmm10,zmm13
  a61125:	62 72 65 48 ac d0    	vfnmadd213ps zmm10,zmm3,zmm0
  a6112b:	62 52 6d 48 b8 d4    	vfmadd231ps zmm10,zmm2,zmm12
  a61131:	62 72 4d 48 ac e9    	vfnmadd213ps zmm13,zmm6,zmm1
  a61137:	62 52 55 48 b8 ec    	vfmadd231ps zmm13,zmm5,zmm12
  a6113d:	62 71 2c 48 58 e7    	vaddps zmm12,zmm10,zmm7
  a61143:	62 f1 2c 48 5c ff    	vsubps zmm7,zmm10,zmm7
  a61149:	62 51 14 48 5c d3    	vsubps zmm10,zmm13,zmm11
  a6114f:	62 51 14 48 58 db    	vaddps zmm11,zmm13,zmm11
  a61155:	62 51 5c 48 58 ee    	vaddps zmm13,zmm4,zmm14
  a6115b:	62 d1 5c 48 5c e6    	vsubps zmm4,zmm4,zmm14
  a61161:	62 51 3c 48 5c f1    	vsubps zmm14,zmm8,zmm9
  a61167:	62 51 3c 48 58 c1    	vaddps zmm8,zmm8,zmm9
  a6116d:	62 f1 64 48 58 c0    	vaddps zmm0,zmm3,zmm0
  a61173:	62 f1 7c 48 58 c2    	vaddps zmm0,zmm0,zmm2
  a61179:	62 f1 74 48 58 ce    	vaddps zmm1,zmm1,zmm6
  a6117f:	62 f1 74 48 58 cd    	vaddps zmm1,zmm1,zmm5
  a61185:	62 f1 7c 48 28 15 71 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff632871]        # 93a00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20eb0>
  a6118c:	28 63 ff 
  a6118f:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a61195:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a6119b:	62 f1 7c 48 28 2d 9b 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff63289b]        # 93a40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20ef0>
  a611a2:	28 63 ff 
  a611a5:	62 f2 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm1
  a611ab:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a611b1:	62 d2 6d 48 7f c8    	vpermt2ps zmm1,zmm2,zmm8
  a611b7:	62 d2 55 48 7f e0    	vpermt2ps zmm4,zmm5,zmm8
  a611bd:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a611c3:	62 d2 6d 48 7f f3    	vpermt2ps zmm6,zmm2,zmm11
  a611c9:	62 d2 55 48 7f fb    	vpermt2ps zmm7,zmm5,zmm11
  a611cf:	62 51 7c 48 28 c4    	vmovaps zmm8,zmm12
  a611d5:	62 52 6d 48 7f c2    	vpermt2ps zmm8,zmm2,zmm10
  a611db:	62 52 55 48 7f e2    	vpermt2ps zmm12,zmm5,zmm10
  a611e1:	62 d2 15 48 77 d6    	vpermi2ps zmm2,zmm13,zmm14
  a611e7:	62 52 55 48 7f ee    	vpermt2ps zmm13,zmm5,zmm14
  a611ed:	62 f1 7c 48 11 06    	vmovups ZMMWORD PTR [rsi],zmm0
  a611f3:	62 f1 7c 48 11 5e 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm3
  a611fa:	62 f1 7c 48 11 66 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm4
  a61201:	62 f1 7c 48 11 4e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm1
  a61208:	62 f1 7c 48 11 7e 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm7
  a6120f:	62 f1 7c 48 11 76 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm6
  a61216:	62 71 7c 48 11 66 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm12
  a6121d:	62 71 7c 48 11 46 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm8
  a61224:	62 71 7c 48 11 6e 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm13
  a6122b:	62 f1 7c 48 11 56 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm2
  a61232:	48 89 ec             	mov    rsp,rbp
  a61235:	5d                   	pop    rbp
  a61236:	c5 f8 77             	vzeroupper
  a61239:	c3                   	ret
