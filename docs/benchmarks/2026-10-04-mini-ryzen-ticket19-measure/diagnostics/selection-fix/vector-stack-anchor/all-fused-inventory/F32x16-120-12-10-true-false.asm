
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a52700 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a52700:	48 81 ec 08 02 00 00 	sub    rsp,0x208
  a52707:	62 f1 7c 48 10 1f    	vmovups zmm3,ZMMWORD PTR [rdi]
  a5270d:	c5 f8 10 4f 40       	vmovups xmm1,XMMWORD PTR [rdi+0x40]
  a52712:	62 f1 7c 48 28 35 64 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff640564]        # 92c80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20130>
  a52719:	05 64 ff 
  a5271c:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a52722:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a52728:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a5272f:	ff 
  a52730:	62 f1 7c 48 28 15 86 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff640586]        # 92cc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20170>
  a52737:	05 64 ff 
  a5273a:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a52740:	62 71 7c 48 10 87 50 	vmovups zmm8,ZMMWORD PTR [rdi+0x50]
  a52747:	00 00 00 
  a5274a:	c5 f8 10 a7 90 00 00 	vmovups xmm4,XMMWORD PTR [rdi+0x90]
  a52751:	00 
  a52752:	62 d1 7c 48 28 c8    	vmovaps zmm1,zmm8
  a52758:	62 f2 4d 48 7f cc    	vpermt2ps zmm1,zmm6,zmm4
  a5275e:	62 72 6d 48 7f c4    	vpermt2ps zmm8,zmm2,zmm4
  a52764:	62 71 7c 48 10 8f a0 	vmovups zmm9,ZMMWORD PTR [rdi+0xa0]
  a5276b:	00 00 00 
  a5276e:	c5 f8 10 a7 e0 00 00 	vmovups xmm4,XMMWORD PTR [rdi+0xe0]
  a52775:	00 
  a52776:	62 c1 7c 48 28 e1    	vmovaps zmm20,zmm9
  a5277c:	62 e2 4d 48 7f e4    	vpermt2ps zmm20,zmm6,zmm4
  a52782:	62 72 6d 48 7f cc    	vpermt2ps zmm9,zmm2,zmm4
  a52788:	62 f1 7c 48 10 a7 f0 	vmovups zmm4,ZMMWORD PTR [rdi+0xf0]
  a5278f:	00 00 00 
  a52792:	c5 f8 10 bf 30 01 00 	vmovups xmm7,XMMWORD PTR [rdi+0x130]
  a52799:	00 
  a5279a:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a527a0:	62 72 4d 48 7f d7    	vpermt2ps zmm10,zmm6,zmm7
  a527a6:	62 f2 6d 48 7f e7    	vpermt2ps zmm4,zmm2,zmm7
  a527ac:	62 71 7c 48 10 77 05 	vmovups zmm14,ZMMWORD PTR [rdi+0x140]
  a527b3:	c5 f8 10 bf 80 01 00 	vmovups xmm7,XMMWORD PTR [rdi+0x180]
  a527ba:	00 
  a527bb:	62 51 7c 48 28 e6    	vmovaps zmm12,zmm14
  a527c1:	62 72 4d 48 7f e7    	vpermt2ps zmm12,zmm6,zmm7
  a527c7:	62 72 6d 48 7f f7    	vpermt2ps zmm14,zmm2,zmm7
  a527cd:	62 71 7c 48 10 9f 90 	vmovups zmm11,ZMMWORD PTR [rdi+0x190]
  a527d4:	01 00 00 
  a527d7:	c5 f8 10 bf d0 01 00 	vmovups xmm7,XMMWORD PTR [rdi+0x1d0]
  a527de:	00 
  a527df:	62 c1 7c 48 28 cb    	vmovaps zmm17,zmm11
  a527e5:	62 e2 4d 48 7f cf    	vpermt2ps zmm17,zmm6,zmm7
  a527eb:	62 72 6d 48 7f df    	vpermt2ps zmm11,zmm2,zmm7
  a527f1:	62 e1 7c 48 10 97 e0 	vmovups zmm18,ZMMWORD PTR [rdi+0x1e0]
  a527f8:	01 00 00 
  a527fb:	c5 f8 10 bf 20 02 00 	vmovups xmm7,XMMWORD PTR [rdi+0x220]
  a52802:	00 
  a52803:	62 31 7c 48 28 ea    	vmovaps zmm13,zmm18
  a52809:	62 72 4d 48 7f ef    	vpermt2ps zmm13,zmm6,zmm7
  a5280f:	62 e2 6d 48 7f d7    	vpermt2ps zmm18,zmm2,zmm7
  a52815:	62 71 7c 48 10 bf 30 	vmovups zmm15,ZMMWORD PTR [rdi+0x230]
  a5281c:	02 00 00 
  a5281f:	c5 f8 10 bf 70 02 00 	vmovups xmm7,XMMWORD PTR [rdi+0x270]
  a52826:	00 
  a52827:	62 c1 7c 48 28 f7    	vmovaps zmm22,zmm15
  a5282d:	62 e2 4d 48 7f f7    	vpermt2ps zmm22,zmm6,zmm7
  a52833:	62 72 6d 48 7f ff    	vpermt2ps zmm15,zmm2,zmm7
  a52839:	62 e1 7c 48 10 7f 0a 	vmovups zmm23,ZMMWORD PTR [rdi+0x280]
  a52840:	c5 f8 10 bf c0 02 00 	vmovups xmm7,XMMWORD PTR [rdi+0x2c0]
  a52847:	00 
  a52848:	62 a1 7c 48 28 df    	vmovaps zmm19,zmm23
  a5284e:	62 e2 4d 48 7f df    	vpermt2ps zmm19,zmm6,zmm7
  a52854:	62 e2 6d 48 7f ff    	vpermt2ps zmm23,zmm2,zmm7
  a5285a:	62 e1 7c 48 10 87 d0 	vmovups zmm16,ZMMWORD PTR [rdi+0x2d0]
  a52861:	02 00 00 
  a52864:	c5 f8 10 bf 10 03 00 	vmovups xmm7,XMMWORD PTR [rdi+0x310]
  a5286b:	00 
  a5286c:	62 21 7c 48 28 c8    	vmovaps zmm25,zmm16
  a52872:	62 62 4d 48 7f cf    	vpermt2ps zmm25,zmm6,zmm7
  a52878:	62 e2 6d 48 7f c7    	vpermt2ps zmm16,zmm2,zmm7
  a5287e:	62 61 7c 48 10 87 20 	vmovups zmm24,ZMMWORD PTR [rdi+0x320]
  a52885:	03 00 00 
  a52888:	c5 f8 10 bf 60 03 00 	vmovups xmm7,XMMWORD PTR [rdi+0x360]
  a5288f:	00 
  a52890:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a52896:	62 62 4d 48 7f d7    	vpermt2ps zmm26,zmm6,zmm7
  a5289c:	62 62 6d 48 7f c7    	vpermt2ps zmm24,zmm2,zmm7
  a528a2:	62 61 7c 48 10 9f 70 	vmovups zmm27,ZMMWORD PTR [rdi+0x370]
  a528a9:	03 00 00 
  a528ac:	c5 f8 10 bf b0 03 00 	vmovups xmm7,XMMWORD PTR [rdi+0x3b0]
  a528b3:	00 
  a528b4:	62 f2 25 40 77 f7    	vpermi2ps zmm6,zmm27,zmm7
  a528ba:	62 62 6d 48 7f df    	vpermt2ps zmm27,zmm2,zmm7
  a528c0:	62 b1 64 48 58 c2    	vaddps zmm0,zmm3,zmm18
  a528c6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a528cd:	fe 
  a528ce:	62 a1 5c 48 58 e8    	vaddps zmm21,zmm4,zmm16
  a528d4:	62 b1 7c 48 58 c5    	vaddps zmm0,zmm0,zmm21
  a528da:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a528e1:	06 
  a528e2:	62 01 0c 48 58 e0    	vaddps zmm28,zmm14,zmm24
  a528e8:	62 41 04 48 58 e8    	vaddps zmm29,zmm15,zmm8
  a528ee:	62 91 1c 40 58 c5    	vaddps zmm0,zmm28,zmm29
  a528f4:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a528fb:	04 
  a528fc:	62 41 44 40 58 f1    	vaddps zmm30,zmm23,zmm9
  a52902:	62 41 24 40 58 fb    	vaddps zmm31,zmm27,zmm11
  a52908:	62 91 0c 48 5c c0    	vsubps zmm0,zmm14,zmm24
  a5290e:	62 f1 4c 40 58 f9    	vaddps zmm7,zmm22,zmm1
  a52914:	62 e1 4c 40 5c f1    	vsubps zmm22,zmm22,zmm1
  a5291a:	62 91 0c 40 58 cf    	vaddps zmm1,zmm30,zmm31
  a52920:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a52927:	62 c1 44 40 5c f9    	vsubps zmm23,zmm23,zmm9
  a5292d:	62 b1 4c 48 58 e9    	vaddps zmm5,zmm6,zmm17
  a52933:	62 21 4c 48 5c c1    	vsubps zmm24,zmm6,zmm17
  a52939:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp-0x40]
  a52940:	ff 
  a52941:	62 c1 34 48 58 cd    	vaddps zmm17,zmm9,zmm13
  a52947:	62 a1 64 48 5c d2    	vsubps zmm18,zmm3,zmm18
  a5294d:	62 91 2c 48 58 d1    	vaddps zmm2,zmm10,zmm25
  a52953:	62 01 2c 48 5c c9    	vsubps zmm25,zmm10,zmm25
  a52959:	62 11 1c 48 58 d2    	vaddps zmm10,zmm12,zmm26
  a5295f:	62 11 1c 48 5c f2    	vsubps zmm14,zmm12,zmm26
  a52965:	62 21 64 40 58 d4    	vaddps zmm26,zmm19,zmm20
  a5296b:	62 51 3c 48 5c e7    	vsubps zmm12,zmm8,zmm15
  a52971:	62 d1 1c 48 58 de    	vaddps zmm3,zmm12,zmm14
  a52977:	62 31 64 40 5c c4    	vsubps zmm8,zmm19,zmm20
  a5297d:	62 11 24 48 5c db    	vsubps zmm11,zmm11,zmm27
  a52983:	62 d1 24 48 58 f0    	vaddps zmm6,zmm11,zmm8
  a52989:	62 71 64 48 5c fe    	vsubps zmm15,zmm3,zmm6
  a5298f:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm15
  a52996:	02 
  a52997:	62 f1 64 48 58 de    	vaddps zmm3,zmm3,zmm6
  a5299d:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a529a4:	01 
  a529a5:	62 b1 7c 48 58 de    	vaddps zmm3,zmm0,zmm22
  a529ab:	62 51 34 48 5c ed    	vsubps zmm13,zmm9,zmm13
  a529b1:	62 91 44 40 58 f0    	vaddps zmm6,zmm23,zmm24
  a529b7:	62 f1 7c 40 5c e4    	vsubps zmm4,zmm16,zmm4
  a529bd:	62 71 64 48 58 ce    	vaddps zmm9,zmm3,zmm6
  a529c3:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm9
  a529ca:	03 
  a529cb:	62 f1 64 48 5c de    	vsubps zmm3,zmm3,zmm6
  a529d1:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a529d8:	ff 
  a529d9:	62 61 7c 48 10 5c 24 	vmovups zmm27,ZMMWORD PTR [rsp+0x100]
  a529e0:	04 
  a529e1:	62 f1 24 40 58 f1    	vaddps zmm6,zmm27,zmm1
  a529e7:	62 91 1c 40 5c dd    	vsubps zmm3,zmm28,zmm29
  a529ed:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x180]
  a529f4:	06 
  a529f5:	62 e1 74 48 58 de    	vaddps zmm19,zmm1,zmm6
  a529fb:	62 81 0c 40 5c c7    	vsubps zmm16,zmm30,zmm31
  a52a01:	62 61 74 40 58 ea    	vaddps zmm29,zmm17,zmm2
  a52a07:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp-0x80]
  a52a0e:	fe 
  a52a0f:	62 21 34 48 5c fd    	vsubps zmm31,zmm9,zmm21
  a52a15:	62 61 2c 48 58 f7    	vaddps zmm30,zmm10,zmm7
  a52a1b:	62 f1 2c 48 5c ff    	vsubps zmm7,zmm10,zmm7
  a52a21:	62 71 2c 40 58 d5    	vaddps zmm10,zmm26,zmm5
  a52a27:	62 f1 2c 40 5c ed    	vsubps zmm5,zmm26,zmm5
  a52a2d:	62 71 44 48 5c cd    	vsubps zmm9,zmm7,zmm5
  a52a33:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm9
  a52a3a:	fe 
  a52a3b:	62 61 44 48 58 d5    	vaddps zmm26,zmm7,zmm5
  a52a41:	62 51 0c 40 58 fa    	vaddps zmm15,zmm30,zmm10
  a52a47:	62 e1 74 40 5c ca    	vsubps zmm17,zmm17,zmm2
  a52a4d:	62 a1 64 48 58 e8    	vaddps zmm21,zmm3,zmm16
  a52a53:	62 b1 64 48 5c d0    	vsubps zmm2,zmm3,zmm16
  a52a59:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm2
  a52a60:	05 
  a52a61:	62 01 6c 40 58 e1    	vaddps zmm28,zmm18,zmm25
  a52a67:	62 91 6c 40 5c d1    	vsubps zmm2,zmm18,zmm25
  a52a6d:	62 e2 7d 48 18 05 e9 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff6229e9]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a52a74:	29 62 ff 
  a52a77:	62 a1 7c 48 5c f6    	vsubps zmm22,zmm0,zmm22
  a52a7d:	62 d1 14 40 58 c7    	vaddps zmm0,zmm29,zmm15
  a52a83:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a52a8a:	07 
  a52a8b:	62 81 44 40 5c f8    	vsubps zmm23,zmm23,zmm24
  a52a91:	62 c1 5c 48 58 e5    	vaddps zmm20,zmm4,zmm13
  a52a97:	62 f1 14 48 5c fc    	vsubps zmm7,zmm13,zmm4
  a52a9d:	62 31 7c 48 28 e8    	vmovaps zmm13,zmm16
  a52aa3:	62 c1 0c 48 5c d4    	vsubps zmm18,zmm14,zmm12
  a52aa9:	62 31 7c 48 28 f0    	vmovaps zmm14,zmm16
  a52aaf:	62 d1 3c 48 5c eb    	vsubps zmm5,zmm8,zmm11
  a52ab5:	62 b1 7c 48 28 e0    	vmovaps zmm4,zmm16
  a52abb:	62 f2 7d 40 ac f1    	vfnmadd213ps zmm6,zmm16,zmm1
  a52ac1:	62 31 4c 40 58 e7    	vaddps zmm12,zmm22,zmm23
  a52ac7:	62 12 7d 40 ac fd    	vfnmadd213ps zmm15,zmm16,zmm29
  a52acd:	62 51 6c 48 58 cc    	vaddps zmm9,zmm2,zmm12
  a52ad3:	62 72 7d 40 ac e2    	vfnmadd213ps zmm12,zmm16,zmm2
  a52ad9:	62 21 7c 48 28 e8    	vmovaps zmm29,zmm16
  a52adf:	62 f1 6c 40 58 d5    	vaddps zmm2,zmm18,zmm5
  a52ae5:	62 e2 6d 48 ac c7    	vfnmadd213ps zmm16,zmm2,zmm7
  a52aeb:	62 f1 44 48 58 fa    	vaddps zmm7,zmm7,zmm2
  a52af1:	62 61 7c 48 10 4c 24 	vmovups zmm25,ZMMWORD PTR [rsp+0xc0]
  a52af8:	03 
  a52af9:	62 12 35 40 ac ec    	vfnmadd213ps zmm13,zmm25,zmm28
  a52aff:	62 51 0c 40 5c da    	vsubps zmm11,zmm30,zmm10
  a52b05:	62 f2 7d 48 18 05 c5 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6227c5]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a52b0c:	27 62 ff 
  a52b0f:	62 71 7c 48 59 44 24 	vmulps zmm8,zmm0,ZMMWORD PTR [rsp+0x80]
  a52b16:	02 
  a52b17:	62 f1 24 40 5c 1c 24 	vsubps zmm3,zmm27,ZMMWORD PTR [rsp]
  a52b1e:	62 d1 3c 48 58 d5    	vaddps zmm2,zmm8,zmm13
  a52b24:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a52b2b:	01 
  a52b2c:	62 32 75 48 ac f4    	vfnmadd213ps zmm14,zmm1,zmm20
  a52b32:	62 71 7c 48 59 54 24 	vmulps zmm10,zmm0,ZMMWORD PTR [rsp-0x40]
  a52b39:	ff 
  a52b3a:	62 41 14 48 5c f0    	vsubps zmm30,zmm13,zmm8
  a52b40:	62 51 0c 48 5c c2    	vsubps zmm8,zmm14,zmm10
  a52b46:	62 92 55 40 ac e7    	vfnmadd213ps zmm4,zmm21,zmm31
  a52b4c:	62 71 7c 48 59 6c 24 	vmulps zmm13,zmm0,ZMMWORD PTR [rsp-0x80]
  a52b53:	fe 
  a52b54:	62 51 0c 48 58 d2    	vaddps zmm10,zmm14,zmm10
  a52b5a:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm10
  a52b61:	ff 
  a52b62:	62 41 5c 48 5c c5    	vsubps zmm24,zmm4,zmm13
  a52b68:	62 22 2d 40 ac e9    	vfnmadd213ps zmm29,zmm26,zmm17
  a52b6e:	62 71 7c 48 59 74 24 	vmulps zmm14,zmm0,ZMMWORD PTR [rsp+0x140]
  a52b75:	05 
  a52b76:	62 21 04 40 58 fd    	vaddps zmm31,zmm31,zmm21
  a52b7c:	62 11 0c 48 58 d5    	vaddps zmm10,zmm14,zmm29
  a52b82:	62 e1 24 48 59 e8    	vmulps zmm21,zmm11,zmm0
  a52b88:	62 11 74 40 58 da    	vaddps zmm11,zmm17,zmm26
  a52b8e:	62 71 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm11
  a52b95:	62 21 4c 48 58 dd    	vaddps zmm27,zmm6,zmm21
  a52b9b:	62 e1 64 48 59 c8    	vmulps zmm17,zmm3,zmm0
  a52ba1:	62 f1 6c 40 5c dd    	vsubps zmm3,zmm18,zmm5
  a52ba7:	62 31 04 48 5c d9    	vsubps zmm11,zmm15,zmm17
  a52bad:	62 f1 64 48 59 e8    	vmulps zmm5,zmm3,zmm0
  a52bb3:	62 b1 4c 40 5c df    	vsubps zmm3,zmm22,zmm23
  a52bb9:	62 41 54 48 58 d4    	vaddps zmm26,zmm5,zmm12
  a52bbf:	62 f1 64 48 59 c0    	vmulps zmm0,zmm3,zmm0
  a52bc5:	62 f1 7c 40 5c d8    	vsubps zmm3,zmm16,zmm0
  a52bcb:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a52bd2:	fe 
  a52bd3:	62 a1 4c 48 5c ed    	vsubps zmm21,zmm6,zmm21
  a52bd9:	62 c1 74 40 58 ff    	vaddps zmm23,zmm17,zmm15
  a52bdf:	62 81 1c 40 58 c9    	vaddps zmm17,zmm28,zmm25
  a52be5:	62 e1 5c 40 58 f1    	vaddps zmm22,zmm20,zmm1
  a52beb:	62 d1 5c 48 58 cd    	vaddps zmm1,zmm4,zmm13
  a52bf1:	62 c1 14 40 5c e6    	vsubps zmm20,zmm29,zmm14
  a52bf7:	62 f1 1c 48 5c ed    	vsubps zmm5,zmm12,zmm5
  a52bfd:	62 f1 7c 40 58 c0    	vaddps zmm0,zmm16,zmm0
  a52c03:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a52c0a:	03 
  a52c0b:	62 71 7c 48 28 3d 6b 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff67436b]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a52c12:	43 67 ff 
  a52c15:	62 b1 7c 48 28 f3    	vmovaps zmm6,zmm19
  a52c1b:	62 b2 05 48 7f f5    	vpermt2ps zmm6,zmm15,zmm21
  a52c21:	62 e1 7c 48 28 05 95 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff674395]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a52c28:	43 67 ff 
  a52c2b:	62 a2 7d 40 7f dd    	vpermt2ps zmm19,zmm16,zmm21
  a52c31:	62 61 7c 48 28 e2    	vmovaps zmm28,zmm2
  a52c37:	62 22 05 48 7f e1    	vpermt2ps zmm28,zmm15,zmm17
  a52c3d:	62 b2 7d 40 7f d1    	vpermt2ps zmm2,zmm16,zmm17
  a52c43:	62 01 7c 48 28 e8    	vmovaps zmm29,zmm24
  a52c49:	62 62 05 48 7f e9    	vpermt2ps zmm29,zmm15,zmm1
  a52c4f:	62 62 7d 40 7f c1    	vpermt2ps zmm24,zmm16,zmm1
  a52c55:	62 d1 7c 48 28 e1    	vmovaps zmm4,zmm9
  a52c5b:	62 f2 05 48 7f e5    	vpermt2ps zmm4,zmm15,zmm5
  a52c61:	62 72 7d 40 7f cd    	vpermt2ps zmm9,zmm16,zmm5
  a52c67:	62 a1 54 00 57 ed    	vxorps xmm21,xmm21,xmm21
  a52c6d:	62 91 7c 48 28 eb    	vmovaps zmm5,zmm27
  a52c73:	62 b2 05 48 7f ed    	vpermt2ps zmm5,zmm15,zmm21
  a52c79:	62 11 7c 48 28 e6    	vmovaps zmm12,zmm30
  a52c7f:	62 32 05 48 7f e5    	vpermt2ps zmm12,zmm15,zmm21
  a52c85:	62 e1 7c 48 28 0d 71 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff674271]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a52c8c:	42 67 ff 
  a52c8f:	62 71 7c 48 28 ee    	vmovaps zmm13,zmm6
  a52c95:	62 72 75 40 7f ed    	vpermt2ps zmm13,zmm17,zmm5
  a52c9b:	62 f1 7c 48 28 1d 9b 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff67429b]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a52ca2:	42 67 ff 
  a52ca5:	62 f2 65 48 7f f5    	vpermt2ps zmm6,zmm3,zmm5
  a52cab:	62 91 7c 48 28 ec    	vmovaps zmm5,zmm28
  a52cb1:	62 d2 75 40 7f ec    	vpermt2ps zmm5,zmm17,zmm12
  a52cb7:	62 42 65 48 7f e4    	vpermt2ps zmm28,zmm3,zmm12
  a52cbd:	62 11 7c 48 28 e7    	vmovaps zmm12,zmm31
  a52cc3:	62 32 05 48 7f e5    	vpermt2ps zmm12,zmm15,zmm21
  a52cc9:	62 11 7c 48 28 f5    	vmovaps zmm14,zmm29
  a52ccf:	62 52 75 40 7f f4    	vpermt2ps zmm14,zmm17,zmm12
  a52cd5:	62 42 65 48 7f ec    	vpermt2ps zmm29,zmm3,zmm12
  a52cdb:	62 11 7c 48 28 e2    	vmovaps zmm12,zmm26
  a52ce1:	62 32 05 48 7f e5    	vpermt2ps zmm12,zmm15,zmm21
  a52ce7:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a52ced:	62 d2 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm12
  a52cf3:	62 d2 65 48 7f e4    	vpermt2ps zmm4,zmm3,zmm12
  a52cf9:	62 22 7d 40 7f dd    	vpermt2ps zmm27,zmm16,zmm21
  a52cff:	62 82 75 40 7f db    	vpermt2ps zmm19,zmm17,zmm27
  a52d05:	62 22 7d 40 7f f5    	vpermt2ps zmm30,zmm16,zmm21
  a52d0b:	62 92 75 40 7f d6    	vpermt2ps zmm2,zmm17,zmm30
  a52d11:	62 22 7d 40 7f fd    	vpermt2ps zmm31,zmm16,zmm21
  a52d17:	62 22 7d 40 7f d5    	vpermt2ps zmm26,zmm16,zmm21
  a52d1d:	62 02 75 40 7f c7    	vpermt2ps zmm24,zmm17,zmm31
  a52d23:	62 91 e5 40 14 c8    	vunpcklpd zmm1,zmm19,zmm24
  a52d29:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a52d30:	02 
  a52d31:	62 12 75 40 7f ca    	vpermt2ps zmm9,zmm17,zmm26
  a52d37:	62 41 ed 48 14 c9    	vunpcklpd zmm25,zmm2,zmm9
  a52d3d:	62 d1 95 48 14 d6    	vunpcklpd zmm2,zmm13,zmm14
  a52d43:	62 c1 95 48 15 d6    	vunpckhpd zmm18,zmm13,zmm14
  a52d49:	62 71 d5 48 14 c8    	vunpcklpd zmm9,zmm5,zmm0
  a52d4f:	62 61 d5 48 15 f0    	vunpckhpd zmm30,zmm5,zmm0
  a52d55:	62 81 cd 48 14 dd    	vunpcklpd zmm19,zmm6,zmm29
  a52d5b:	62 91 cd 48 15 c5    	vunpckhpd zmm0,zmm6,zmm29
  a52d61:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a52d68:	01 
  a52d69:	62 61 9d 40 14 ec    	vunpcklpd zmm29,zmm28,zmm4
  a52d6f:	62 61 9d 40 15 dc    	vunpckhpd zmm27,zmm28,zmm4
  a52d75:	62 71 7c 48 28 25 81 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff674081]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a52d7c:	40 67 ff 
  a52d7f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a52d86:	07 
  a52d87:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a52d8d:	62 22 05 48 7f c7    	vpermt2ps zmm24,zmm15,zmm23
  a52d93:	62 b2 7d 40 7f c7    	vpermt2ps zmm0,zmm16,zmm23
  a52d99:	62 61 7c 48 28 f8    	vmovaps zmm31,zmm0
  a52d9f:	62 c1 7c 48 28 f8    	vmovaps zmm23,zmm8
  a52da5:	62 a2 05 48 7f fe    	vpermt2ps zmm23,zmm15,zmm22
  a52dab:	62 32 7d 40 7f c6    	vpermt2ps zmm8,zmm16,zmm22
  a52db1:	62 c1 7c 48 28 f2    	vmovaps zmm22,zmm10
  a52db7:	62 a2 05 48 7f f4    	vpermt2ps zmm22,zmm15,zmm20
  a52dbd:	62 32 7d 40 7f d4    	vpermt2ps zmm10,zmm16,zmm20
  a52dc3:	62 61 7c 48 28 d7    	vmovaps zmm26,zmm7
  a52dc9:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a52dd0:	03 
  a52dd1:	62 62 05 48 7f d0    	vpermt2ps zmm26,zmm15,zmm0
  a52dd7:	62 f2 7d 40 7f f8    	vpermt2ps zmm7,zmm16,zmm0
  a52ddd:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a52de3:	62 b2 05 48 7f e5    	vpermt2ps zmm4,zmm15,zmm21
  a52de9:	62 32 7d 40 7f dd    	vpermt2ps zmm11,zmm16,zmm21
  a52def:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp-0x40]
  a52df6:	ff 
  a52df7:	62 71 7c 48 28 ee    	vmovaps zmm13,zmm6
  a52dfd:	62 32 05 48 7f ed    	vpermt2ps zmm13,zmm15,zmm21
  a52e03:	62 b2 7d 40 7f f5    	vpermt2ps zmm6,zmm16,zmm21
  a52e09:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a52e10:	62 71 7c 48 28 f1    	vmovaps zmm14,zmm1
  a52e16:	62 32 05 48 7f f5    	vpermt2ps zmm14,zmm15,zmm21
  a52e1c:	62 b2 7d 40 7f cd    	vpermt2ps zmm1,zmm16,zmm21
  a52e22:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a52e29:	fe 
  a52e2a:	62 32 7d 48 77 fd    	vpermi2ps zmm15,zmm0,zmm21
  a52e30:	62 b2 7d 40 7f c5    	vpermt2ps zmm0,zmm16,zmm21
  a52e36:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a52e3c:	62 d2 1d 48 7f e9    	vpermt2ps zmm5,zmm12,zmm9
  a52e42:	62 61 7c 48 28 25 f4 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff673ff4]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a52e49:	3f 67 ff 
  a52e4c:	62 d2 1d 40 7f d1    	vpermt2ps zmm2,zmm28,zmm9
  a52e52:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a52e59:	62 a1 7c 48 28 e2    	vmovaps zmm20,zmm18
  a52e5f:	62 82 1d 48 7f e6    	vpermt2ps zmm20,zmm12,zmm30
  a52e65:	62 82 1d 40 7f d6    	vpermt2ps zmm18,zmm28,zmm30
  a52e6b:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm18
  a52e72:	fe 
  a52e73:	62 a1 7c 48 28 d3    	vmovaps zmm18,zmm19
  a52e79:	62 82 1d 48 7f d5    	vpermt2ps zmm18,zmm12,zmm29
  a52e7f:	62 82 1d 40 7f dd    	vpermt2ps zmm19,zmm28,zmm29
  a52e85:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm19
  a52e8c:	ff 
  a52e8d:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x40]
  a52e94:	01 
  a52e95:	62 e1 7c 48 28 c2    	vmovaps zmm16,zmm2
  a52e9b:	62 82 1d 48 7f c3    	vpermt2ps zmm16,zmm12,zmm27
  a52ea1:	62 92 1d 40 7f d3    	vpermt2ps zmm2,zmm28,zmm27
  a52ea7:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a52eae:	01 
  a52eaf:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x80]
  a52eb6:	02 
  a52eb7:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  a52ebd:	62 82 1d 48 7f e9    	vpermt2ps zmm21,zmm12,zmm25
  a52ec3:	62 92 1d 40 7f d1    	vpermt2ps zmm2,zmm28,zmm25
  a52ec9:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a52ed0:	02 
  a52ed1:	62 11 7c 48 28 c8    	vmovaps zmm9,zmm24
  a52ed7:	62 72 75 40 7f cc    	vpermt2ps zmm9,zmm17,zmm4
  a52edd:	62 62 65 48 7f c4    	vpermt2ps zmm24,zmm3,zmm4
  a52ee3:	62 b1 7c 48 28 e7    	vmovaps zmm4,zmm23
  a52ee9:	62 d2 75 40 7f e5    	vpermt2ps zmm4,zmm17,zmm13
  a52eef:	62 c2 65 48 7f fd    	vpermt2ps zmm23,zmm3,zmm13
  a52ef5:	62 31 7c 48 28 ee    	vmovaps zmm13,zmm22
  a52efb:	62 52 75 40 7f ee    	vpermt2ps zmm13,zmm17,zmm14
  a52f01:	62 c2 65 48 7f f6    	vpermt2ps zmm22,zmm3,zmm14
  a52f07:	62 81 7c 48 28 da    	vmovaps zmm19,zmm26
  a52f0d:	62 c2 75 40 7f df    	vpermt2ps zmm19,zmm17,zmm15
  a52f13:	62 42 65 48 7f d7    	vpermt2ps zmm26,zmm3,zmm15
  a52f19:	62 42 75 40 7f fb    	vpermt2ps zmm31,zmm17,zmm11
  a52f1f:	62 72 75 40 7f c6    	vpermt2ps zmm8,zmm17,zmm6
  a52f25:	62 72 75 40 7f d1    	vpermt2ps zmm10,zmm17,zmm1
  a52f2b:	62 51 85 40 14 fa    	vunpcklpd zmm15,zmm31,zmm10
  a52f31:	62 f2 75 40 7f f8    	vpermt2ps zmm7,zmm17,zmm0
  a52f37:	62 f1 bd 48 14 df    	vunpcklpd zmm3,zmm8,zmm7
  a52f3d:	62 51 b5 48 14 f5    	vunpcklpd zmm14,zmm9,zmm13
  a52f43:	62 c1 b5 48 15 cd    	vunpckhpd zmm17,zmm9,zmm13
  a52f49:	62 b1 dd 48 14 fb    	vunpcklpd zmm7,zmm4,zmm19
  a52f4f:	62 b1 dd 48 15 e3    	vunpckhpd zmm4,zmm4,zmm19
  a52f55:	62 31 bd 40 14 c6    	vunpcklpd zmm8,zmm24,zmm22
  a52f5b:	62 a1 bd 40 15 de    	vunpckhpd zmm19,zmm24,zmm22
  a52f61:	62 11 c5 40 14 ca    	vunpcklpd zmm9,zmm23,zmm26
  a52f67:	62 11 c5 40 15 da    	vunpckhpd zmm11,zmm23,zmm26
  a52f6d:	62 d1 7c 48 28 d6    	vmovaps zmm2,zmm14
  a52f73:	62 f2 1d 48 7f d7    	vpermt2ps zmm2,zmm12,zmm7
  a52f79:	62 72 1d 40 7f f7    	vpermt2ps zmm14,zmm28,zmm7
  a52f7f:	62 31 7c 48 28 d1    	vmovaps zmm10,zmm17
  a52f85:	62 72 1d 48 7f d4    	vpermt2ps zmm10,zmm12,zmm4
  a52f8b:	62 e2 1d 40 7f cc    	vpermt2ps zmm17,zmm28,zmm4
  a52f91:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a52f97:	62 52 1d 48 7f e9    	vpermt2ps zmm13,zmm12,zmm9
  a52f9d:	62 52 1d 40 7f c1    	vpermt2ps zmm8,zmm28,zmm9
  a52fa3:	62 31 7c 48 28 cb    	vmovaps zmm9,zmm19
  a52fa9:	62 52 1d 48 7f cb    	vpermt2ps zmm9,zmm12,zmm11
  a52faf:	62 c2 1d 40 7f db    	vpermt2ps zmm19,zmm28,zmm11
  a52fb5:	62 72 05 48 77 e3    	vpermi2ps zmm12,zmm15,zmm3
  a52fbb:	62 72 1d 40 7f fb    	vpermt2ps zmm15,zmm28,zmm3
  a52fc1:	62 e1 7c 48 10 7a 02 	vmovups zmm23,ZMMWORD PTR [rdx+0x80]
  a52fc8:	62 e1 7c 48 10 72 03 	vmovups zmm22,ZMMWORD PTR [rdx+0xc0]
  a52fcf:	62 f1 7c 48 10 5a 04 	vmovups zmm3,ZMMWORD PTR [rdx+0x100]
  a52fd6:	62 f1 7c 48 10 62 05 	vmovups zmm4,ZMMWORD PTR [rdx+0x140]
  a52fdd:	62 61 7c 48 10 52 06 	vmovups zmm26,ZMMWORD PTR [rdx+0x180]
  a52fe4:	62 61 7c 48 10 42 07 	vmovups zmm24,ZMMWORD PTR [rdx+0x1c0]
  a52feb:	62 61 7c 48 10 6a 08 	vmovups zmm29,ZMMWORD PTR [rdx+0x200]
  a52ff2:	62 61 7c 48 10 62 09 	vmovups zmm28,ZMMWORD PTR [rdx+0x240]
  a52ff9:	62 61 7c 48 10 4a 0a 	vmovups zmm25,ZMMWORD PTR [rdx+0x280]
  a53000:	62 61 7c 48 10 5a 0b 	vmovups zmm27,ZMMWORD PTR [rdx+0x2c0]
  a53007:	62 f1 5c 40 59 fb    	vmulps zmm7,zmm20,zmm3
  a5300d:	62 f2 2d 48 bc fc    	vfnmadd231ps zmm7,zmm10,zmm4
  a53013:	62 61 2c 48 59 f3    	vmulps zmm30,zmm10,zmm3
  a53019:	62 f1 7c 48 10 5a 10 	vmovups zmm3,ZMMWORD PTR [rdx+0x400]
  a53020:	62 22 5d 48 b8 f4    	vfmadd231ps zmm30,zmm4,zmm20
  a53026:	62 f1 7c 48 10 62 11 	vmovups zmm4,ZMMWORD PTR [rdx+0x440]
  a5302d:	62 71 54 40 59 d3    	vmulps zmm10,zmm21,zmm3
  a53033:	62 72 1d 48 bc d4    	vfnmadd231ps zmm10,zmm12,zmm4
  a53039:	62 e1 1c 48 59 e3    	vmulps zmm20,zmm12,zmm3
  a5303f:	62 f1 7c 48 10 5a 0c 	vmovups zmm3,ZMMWORD PTR [rdx+0x300]
  a53046:	62 a2 5d 48 b8 e5    	vfmadd231ps zmm20,zmm4,zmm21
  a5304c:	62 f1 7c 48 10 62 0d 	vmovups zmm4,ZMMWORD PTR [rdx+0x340]
  a53053:	62 11 6c 40 59 dd    	vmulps zmm11,zmm18,zmm29
  a53059:	62 12 15 48 bc dc    	vfnmadd231ps zmm11,zmm13,zmm28
  a5305f:	62 01 14 48 59 fd    	vmulps zmm31,zmm13,zmm29
  a53065:	62 e1 7c 48 10 6a 0e 	vmovups zmm21,ZMMWORD PTR [rdx+0x380]
  a5306c:	62 22 1d 40 b8 fa    	vfmadd231ps zmm31,zmm28,zmm18
  a53072:	62 e1 7c 48 10 52 0f 	vmovups zmm18,ZMMWORD PTR [rdx+0x3c0]
  a53079:	62 71 7c 40 59 e3    	vmulps zmm12,zmm16,zmm3
  a5307f:	62 72 35 48 bc e4    	vfnmadd231ps zmm12,zmm9,zmm4
  a53085:	62 f1 34 48 59 cb    	vmulps zmm1,zmm9,zmm3
  a5308b:	62 f1 7c 48 10 5a 12 	vmovups zmm3,ZMMWORD PTR [rdx+0x480]
  a53092:	62 b2 5d 48 b8 c8    	vfmadd231ps zmm1,zmm4,zmm16
  a53098:	62 61 7c 48 10 62 13 	vmovups zmm28,ZMMWORD PTR [rdx+0x4c0]
  a5309f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a530a6:	ff 
  a530a7:	62 11 7c 48 59 c9    	vmulps zmm9,zmm0,zmm25
  a530ad:	62 12 3d 48 bc cb    	vfnmadd231ps zmm9,zmm8,zmm27
  a530b3:	62 11 3c 48 59 c1    	vmulps zmm8,zmm8,zmm25
  a530b9:	62 41 44 48 58 ca    	vaddps zmm25,zmm7,zmm10
  a530bf:	62 72 25 40 b8 c0    	vfmadd231ps zmm8,zmm27,zmm0
  a530c5:	62 91 54 48 58 e1    	vaddps zmm4,zmm5,zmm25
  a530cb:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x40]
  a530d2:	01 
  a530d3:	62 31 4c 48 59 ed    	vmulps zmm13,zmm6,zmm21
  a530d9:	62 32 65 40 bc ea    	vfnmadd231ps zmm13,zmm19,zmm18
  a530df:	62 b1 64 40 59 c5    	vmulps zmm0,zmm19,zmm21
  a530e5:	62 c1 24 48 58 dc    	vaddps zmm19,zmm11,zmm12
  a530eb:	62 b1 5c 48 58 e3    	vaddps zmm4,zmm4,zmm19
  a530f1:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a530f8:	ff 
  a530f9:	62 f2 6d 40 b8 c6    	vfmadd231ps zmm0,zmm18,zmm6
  a530ff:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp-0x80]
  a53106:	fe 
  a53107:	62 81 4c 48 59 c2    	vmulps zmm16,zmm6,zmm26
  a5310d:	62 82 75 40 bc c0    	vfnmadd231ps zmm16,zmm17,zmm24
  a53113:	62 21 14 48 58 d8    	vaddps zmm27,zmm13,zmm16
  a53119:	62 01 74 40 59 d2    	vmulps zmm26,zmm17,zmm26
  a5311f:	62 91 34 48 58 e3    	vaddps zmm4,zmm9,zmm27
  a53125:	62 62 3d 40 b8 d6    	vfmadd231ps zmm26,zmm24,zmm6
  a5312b:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x80]
  a53132:	02 
  a53133:	62 e1 14 40 59 cb    	vmulps zmm17,zmm29,zmm3
  a53139:	62 82 05 48 bc cc    	vfnmadd231ps zmm17,zmm15,zmm28
  a5313f:	62 e1 7c 48 10 2c 24 	vmovups zmm21,ZMMWORD PTR [rsp]
  a53146:	62 a1 54 40 59 d7    	vmulps zmm18,zmm21,zmm23
  a5314c:	62 a2 0d 48 bc d6    	vfnmadd231ps zmm18,zmm14,zmm22
  a53152:	62 61 04 48 59 c3    	vmulps zmm24,zmm15,zmm3
  a53158:	62 b1 74 40 58 f2    	vaddps zmm6,zmm17,zmm18
  a5315e:	62 f1 5c 48 58 de    	vaddps zmm3,zmm4,zmm6
  a53164:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a5316b:	01 
  a5316c:	62 02 1d 40 b8 c5    	vfmadd231ps zmm24,zmm28,zmm29
  a53172:	62 21 0c 40 58 ec    	vaddps zmm29,zmm30,zmm20
  a53178:	62 f1 14 40 58 da    	vaddps zmm3,zmm29,zmm2
  a5317e:	62 31 0c 48 59 f7    	vmulps zmm14,zmm14,zmm23
  a53184:	62 f1 04 40 58 e1    	vaddps zmm4,zmm31,zmm1
  a5318a:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a53190:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm3
  a53197:	02 
  a53198:	62 32 4d 40 b8 f5    	vfmadd231ps zmm14,zmm22,zmm21
  a5319e:	62 01 7c 48 58 e2    	vaddps zmm28,zmm0,zmm26
  a531a4:	62 81 3c 48 58 f4    	vaddps zmm22,zmm8,zmm28
  a531aa:	62 31 0c 40 5c fc    	vsubps zmm15,zmm30,zmm20
  a531b0:	62 c1 3c 40 58 fe    	vaddps zmm23,zmm24,zmm14
  a531b6:	62 e1 04 40 5c e1    	vsubps zmm20,zmm31,zmm1
  a531bc:	62 f2 7d 48 18 0d 22 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff622522]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a531c3:	25 62 ff 
  a531c6:	62 b1 4c 40 58 df    	vaddps zmm3,zmm22,zmm23
  a531cc:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a531d3:	62 81 7c 48 5c f2    	vsubps zmm22,zmm0,zmm26
  a531d9:	62 61 7c 48 28 d1    	vmovaps zmm26,zmm1
  a531df:	62 62 35 40 a8 d5    	vfmadd213ps zmm26,zmm25,zmm5
  a531e5:	62 41 3c 40 5c c6    	vsubps zmm24,zmm24,zmm14
  a531eb:	62 62 7d 48 18 35 4f 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff62244f]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a531f2:	24 62 ff 
  a531f5:	62 02 65 40 bc d6    	vfnmadd231ps zmm26,zmm19,zmm30
  a531fb:	62 92 0d 40 bc e9    	vfnmadd231ps zmm5,zmm30,zmm25
  a53201:	62 61 7c 48 28 c9    	vmovaps zmm25,zmm1
  a53207:	62 42 25 40 a8 c9    	vfmadd213ps zmm25,zmm27,zmm9
  a5320d:	62 12 0d 40 bc cb    	vfnmadd231ps zmm9,zmm30,zmm27
  a53213:	62 61 7c 48 28 d9    	vmovaps zmm27,zmm1
  a53219:	62 62 15 40 a8 da    	vfmadd213ps zmm27,zmm29,zmm2
  a5321f:	62 92 0d 40 bc d5    	vfnmadd231ps zmm2,zmm30,zmm29
  a53225:	62 61 7c 48 28 e9    	vmovaps zmm29,zmm1
  a5322b:	62 42 1d 40 a8 e8    	vfmadd213ps zmm29,zmm28,zmm8
  a53231:	62 12 1d 40 bc c6    	vfnmadd231ps zmm8,zmm28,zmm30
  a53237:	62 f2 7d 48 18 05 17 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff622517]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a5323e:	25 62 ff 
  a53241:	62 02 4d 48 bc ce    	vfnmadd231ps zmm25,zmm6,zmm30
  a53247:	62 02 5d 48 bc de    	vfnmadd231ps zmm27,zmm4,zmm30
  a5324d:	62 02 45 40 bc ee    	vfnmadd231ps zmm29,zmm23,zmm30
  a53253:	62 71 5c 40 59 f0    	vmulps zmm14,zmm20,zmm0
  a53259:	62 b2 75 48 b8 eb    	vfmadd231ps zmm5,zmm1,zmm19
  a5325f:	62 62 7d 48 18 35 37 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff622137]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a53266:	21 62 ff 
  a53269:	62 12 05 48 b8 f6    	vfmadd231ps zmm14,zmm15,zmm30
  a5326f:	62 72 75 48 b8 ce    	vfmadd231ps zmm9,zmm1,zmm6
  a53275:	62 41 2c 40 58 e6    	vaddps zmm28,zmm26,zmm14
  a5327b:	62 f2 75 48 b8 d4    	vfmadd231ps zmm2,zmm1,zmm4
  a53281:	62 e1 3c 40 59 e8    	vmulps zmm21,zmm24,zmm0
  a53287:	62 82 4d 40 b8 ee    	vfmadd231ps zmm21,zmm22,zmm30
  a5328d:	62 72 45 40 b8 c1    	vfmadd231ps zmm8,zmm23,zmm1
  a53293:	62 a1 34 40 58 fd    	vaddps zmm23,zmm25,zmm21
  a53299:	62 21 1c 40 5c ff    	vsubps zmm31,zmm28,zmm23
  a5329f:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm31
  a532a6:	03 
  a532a7:	62 d1 44 48 5c ca    	vsubps zmm1,zmm7,zmm10
  a532ad:	c5 fc 28 35 8b 39 62 	vmovaps ymm6,YMMWORD PTR [rip+0xffffffffff62398b]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a532b4:	ff 
  a532b5:	62 51 24 48 5c d4    	vsubps zmm10,zmm11,zmm12
  a532bb:	62 71 2c 48 59 d8    	vmulps zmm11,zmm10,zmm0
  a532c1:	62 12 75 48 b8 de    	vfmadd231ps zmm11,zmm1,zmm30
  a532c7:	62 31 14 48 5c e0    	vsubps zmm12,zmm13,zmm16
  a532cd:	62 51 24 40 5c eb    	vsubps zmm13,zmm27,zmm11
  a532d3:	62 a1 74 40 5c c2    	vsubps zmm16,zmm17,zmm18
  a532d9:	62 e1 7c 40 59 d0    	vmulps zmm18,zmm16,zmm0
  a532df:	62 82 1d 48 b8 d6    	vfmadd231ps zmm18,zmm12,zmm30
  a532e5:	62 71 04 48 59 f8    	vmulps zmm15,zmm15,zmm0
  a532eb:	62 32 0d 40 bc fc    	vfnmadd231ps zmm15,zmm30,zmm20
  a532f1:	62 b1 14 40 5c da    	vsubps zmm3,zmm29,zmm18
  a532f7:	62 e1 4c 40 59 f0    	vmulps zmm22,zmm22,zmm0
  a532fd:	62 82 0d 40 bc f0    	vfnmadd231ps zmm22,zmm30,zmm24
  a53303:	62 e1 14 48 5c db    	vsubps zmm19,zmm13,zmm3
  a53309:	62 f1 74 48 59 c8    	vmulps zmm1,zmm1,zmm0
  a5330f:	62 d2 0d 40 bc ca    	vfnmadd231ps zmm1,zmm30,zmm10
  a53315:	62 b1 7c 48 28 e3    	vmovaps zmm4,zmm19
  a5331b:	62 92 4d 48 7f e7    	vpermt2ps zmm4,zmm6,zmm31
  a53321:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm4
  a53328:	fe 
  a53329:	62 71 1c 48 59 e0    	vmulps zmm12,zmm12,zmm0
  a5332f:	62 c1 54 48 58 cf    	vaddps zmm17,zmm5,zmm15
  a53335:	62 12 7d 40 bc e6    	vfnmadd231ps zmm12,zmm16,zmm30
  a5333b:	62 b1 34 48 58 c6    	vaddps zmm0,zmm9,zmm22
  a53341:	62 61 74 40 58 f8    	vaddps zmm31,zmm17,zmm0
  a53347:	62 d1 54 48 5c ff    	vsubps zmm7,zmm5,zmm15
  a5334d:	62 71 6c 48 5c f9    	vsubps zmm15,zmm2,zmm1
  a53353:	62 a1 34 48 5c f6    	vsubps zmm22,zmm9,zmm22
  a53359:	62 c1 3c 48 5c e4    	vsubps zmm20,zmm8,zmm12
  a5335f:	62 f1 74 48 58 d2    	vaddps zmm2,zmm1,zmm2
  a53365:	62 b1 04 48 58 e4    	vaddps zmm4,zmm15,zmm20
  a5336b:	62 c1 3c 48 58 c4    	vaddps zmm16,zmm8,zmm12
  a53371:	62 61 7c 48 28 f4    	vmovaps zmm30,zmm4
  a53377:	62 02 4d 48 7f f7    	vpermt2ps zmm30,zmm6,zmm31
  a5337d:	62 41 2c 40 5c d6    	vsubps zmm26,zmm26,zmm14
  a53383:	62 21 44 48 5c c6    	vsubps zmm24,zmm7,zmm22
  a53389:	62 a1 34 40 5c ed    	vsubps zmm21,zmm25,zmm21
  a5338f:	62 31 6c 48 5c c0    	vsubps zmm8,zmm2,zmm16
  a53395:	62 01 24 48 58 cb    	vaddps zmm25,zmm11,zmm27
  a5339b:	62 51 7c 48 28 d0    	vmovaps zmm10,zmm8
  a533a1:	62 12 4d 48 7f d0    	vpermt2ps zmm10,zmm6,zmm24
  a533a7:	62 21 14 40 58 da    	vaddps zmm27,zmm29,zmm18
  a533ad:	62 21 2c 40 58 ed    	vaddps zmm29,zmm26,zmm21
  a533b3:	62 21 1c 40 58 e7    	vaddps zmm28,zmm28,zmm23
  a533b9:	62 11 34 40 58 e3    	vaddps zmm12,zmm25,zmm27
  a533bf:	62 71 14 48 58 db    	vaddps zmm11,zmm13,zmm3
  a533c5:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a533cb:	62 12 4d 48 7f ed    	vpermt2ps zmm13,zmm6,zmm29
  a533d1:	62 e1 74 40 5c c8    	vsubps zmm17,zmm17,zmm0
  a533d7:	62 e1 7c 48 10 7c 24 	vmovups zmm23,ZMMWORD PTR [rsp-0x40]
  a533de:	ff 
  a533df:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a533e6:	01 
  a533e7:	62 f1 44 40 5c d9    	vsubps zmm3,zmm23,zmm1
  a533ed:	62 31 04 48 5c f4    	vsubps zmm14,zmm15,zmm20
  a533f3:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x80]
  a533fa:	02 
  a533fb:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a53402:	62 71 54 48 5c f8    	vsubps zmm15,zmm5,zmm0
  a53408:	62 31 44 48 58 ce    	vaddps zmm9,zmm7,zmm22
  a5340e:	62 c1 7c 48 28 d7    	vmovaps zmm18,zmm15
  a53414:	62 e2 4d 48 7f d3    	vpermt2ps zmm18,zmm6,zmm3
  a5341a:	62 a1 6c 48 58 c0    	vaddps zmm16,zmm2,zmm16
  a53420:	62 c1 7c 48 28 e3    	vmovaps zmm20,zmm11
  a53426:	62 82 4d 48 7f e4    	vpermt2ps zmm20,zmm6,zmm28
  a5342c:	62 b1 2c 40 5c fd    	vsubps zmm7,zmm26,zmm21
  a53432:	62 c1 7c 48 28 f6    	vmovaps zmm22,zmm14
  a53438:	62 a2 4d 48 7f f1    	vpermt2ps zmm22,zmm6,zmm17
  a5343e:	62 81 34 40 5c eb    	vsubps zmm21,zmm25,zmm27
  a53444:	62 21 7c 48 28 d8    	vmovaps zmm27,zmm16
  a5344a:	62 42 4d 48 7f d9    	vpermt2ps zmm27,zmm6,zmm9
  a53450:	62 f1 54 48 58 e8    	vaddps zmm5,zmm5,zmm0
  a53456:	62 b1 7c 48 28 d5    	vmovaps zmm2,zmm21
  a5345c:	62 f2 4d 48 7f d7    	vpermt2ps zmm2,zmm6,zmm7
  a53462:	62 61 44 40 58 c9    	vaddps zmm25,zmm23,zmm1
  a53468:	62 92 55 48 77 f1    	vpermi2ps zmm6,zmm5,zmm25
  a5346e:	62 61 7c 48 28 15 88 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff63f888]        # 92d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x201b0>
  a53475:	f8 63 ff 
  a53478:	62 92 2d 40 7f e9    	vpermt2ps zmm5,zmm26,zmm25
  a5347e:	62 e2 2d 40 7f 5c 24 	vpermt2ps zmm19,zmm26,ZMMWORD PTR [rsp+0xc0]
  a53485:	03 
  a53486:	62 92 2d 40 7f e7    	vpermt2ps zmm4,zmm26,zmm31
  a5348c:	62 12 2d 40 7f c0    	vpermt2ps zmm8,zmm26,zmm24
  a53492:	62 12 2d 40 7f e5    	vpermt2ps zmm12,zmm26,zmm29
  a53498:	62 72 2d 40 7f fb    	vpermt2ps zmm15,zmm26,zmm3
  a5349e:	62 12 2d 40 7f dc    	vpermt2ps zmm11,zmm26,zmm28
  a534a4:	62 32 2d 40 7f f1    	vpermt2ps zmm14,zmm26,zmm17
  a534aa:	62 c2 2d 40 7f c1    	vpermt2ps zmm16,zmm26,zmm9
  a534b0:	62 e2 2d 40 7f ef    	vpermt2ps zmm21,zmm26,zmm7
  a534b6:	62 f1 7c 48 11 2e    	vmovups ZMMWORD PTR [rsi],zmm5
  a534bc:	c5 fc 11 76 40       	vmovups YMMWORD PTR [rsi+0x40],ymm6
  a534c1:	62 e1 7c 48 11 9e 60 	vmovups ZMMWORD PTR [rsi+0x60],zmm19
  a534c8:	00 00 00 
  a534cb:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a534d2:	fe 
  a534d3:	c5 fc 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm0
  a534da:	00 
  a534db:	62 f1 7c 48 11 66 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm4
  a534e2:	62 61 7c 28 11 76 08 	vmovups YMMWORD PTR [rsi+0x100],ymm30
  a534e9:	62 71 7c 48 11 86 20 	vmovups ZMMWORD PTR [rsi+0x120],zmm8
  a534f0:	01 00 00 
  a534f3:	c5 7c 11 96 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm10
  a534fa:	00 
  a534fb:	62 71 7c 48 11 66 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm12
  a53502:	c5 7c 11 ae c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm13
  a53509:	00 
  a5350a:	62 71 7c 48 11 be e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm15
  a53511:	01 00 00 
  a53514:	62 e1 7c 28 11 56 11 	vmovups YMMWORD PTR [rsi+0x220],ymm18
  a5351b:	62 71 7c 48 11 5e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm11
  a53522:	62 e1 7c 28 11 66 14 	vmovups YMMWORD PTR [rsi+0x280],ymm20
  a53529:	62 71 7c 48 11 b6 a0 	vmovups ZMMWORD PTR [rsi+0x2a0],zmm14
  a53530:	02 00 00 
  a53533:	62 e1 7c 28 11 76 17 	vmovups YMMWORD PTR [rsi+0x2e0],ymm22
  a5353a:	62 e1 7c 48 11 46 0c 	vmovups ZMMWORD PTR [rsi+0x300],zmm16
  a53541:	62 61 7c 28 11 5e 1a 	vmovups YMMWORD PTR [rsi+0x340],ymm27
  a53548:	62 e1 7c 48 11 ae 60 	vmovups ZMMWORD PTR [rsi+0x360],zmm21
  a5354f:	03 00 00 
  a53552:	c5 fc 11 96 a0 03 00 	vmovups YMMWORD PTR [rsi+0x3a0],ymm2
  a53559:	00 
  a5355a:	48 81 c4 08 02 00 00 	add    rsp,0x208
  a53561:	c5 f8 77             	vzeroupper
  a53564:	c3                   	ret
