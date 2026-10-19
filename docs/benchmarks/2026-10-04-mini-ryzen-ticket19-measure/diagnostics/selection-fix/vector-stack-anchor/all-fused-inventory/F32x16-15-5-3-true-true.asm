
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a16580 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a16580:	62 f1 7c 48 28 05 f6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6b09f6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a16587:	09 6b ff 
  a1658a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a1658e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a16592:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a16598:	62 f1 7c 48 28 1d 5e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6b095e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1659f:	09 6b ff 
  a165a2:	62 f1 7c 48 28 25 54 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6b0854]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a165a9:	08 6b ff 
  a165ac:	62 f1 7c 48 28 2d 8a 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6b088a]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a165b3:	08 6b ff 
  a165b6:	48 6b c2 78          	imul   rax,rdx,0x78
  a165ba:	31 d2                	xor    edx,edx
  a165bc:	62 f1 7c 48 28 35 ba 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff678fba]        # 8f580 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ca30>
  a165c3:	8f 67 ff 
  a165c6:	62 f2 7d 48 18 3d 18 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff65f118]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a165cd:	f1 65 ff 
  a165d0:	62 72 7d 48 18 05 6a 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff65f06a]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a165d7:	f0 65 ff 
  a165da:	62 72 7d 48 18 0d 74 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff65f174]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a165e1:	f1 65 ff 
  a165e4:	62 72 7d 48 18 15 b2 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff65edb2]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a165eb:	ed 65 ff 
  a165ee:	62 72 7d 48 18 1d 68 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff65ee68]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a165f5:	ee 65 ff 
  a165f8:	62 71 7c 48 28 25 be 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff678fbe]        # 8f5c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ca70>
  a165ff:	8f 67 ff 
  a16602:	62 72 7d 48 18 2d c8 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff65ecc8]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a16609:	ec 65 ff 
  a1660c:	62 71 7c 48 28 35 ea 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff678fea]        # 8f600 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cab0>
  a16613:	8f 67 ff 
  a16616:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a1661d:	00 00 00 
  a16620:	c5 7b 10 7c 17 10    	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x10]
  a16626:	62 e1 7c 08 10 04 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1]
  a1662d:	62 e1 7c 08 10 8c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0x18]
  a16634:	18 00 00 00 
  a16638:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x30]
  a1663f:	03 
  a16640:	62 e1 7c 08 10 9c 17 	vmovups xmm19,XMMWORD PTR [rdi+rdx*1+0x48]
  a16647:	48 00 00 00 
  a1664b:	62 c3 7d 40 18 c7 01 	vinsertf32x4 zmm16,zmm16,xmm15,0x1
  a16652:	62 31 7c 48 28 f8    	vmovaps zmm15,zmm16
  a16658:	62 72 4d 48 7f f9    	vpermt2ps zmm15,zmm6,zmm1
  a1665e:	62 e2 1d 48 7f c1    	vpermt2ps zmm16,zmm12,zmm1
  a16664:	62 e1 ff 08 10 64 17 	vmovsd xmm20,QWORD PTR [rdi+rdx*1+0x28]
  a1666b:	05 
  a1666c:	62 a3 75 40 18 cc 01 	vinsertf32x4 zmm17,zmm17,xmm20,0x1
  a16673:	62 a1 7c 48 28 e1    	vmovaps zmm20,zmm17
  a16679:	62 e2 4d 48 7f e1    	vpermt2ps zmm20,zmm6,zmm1
  a1667f:	62 e2 1d 48 7f c9    	vpermt2ps zmm17,zmm12,zmm1
  a16685:	62 e1 ff 08 10 6c 17 	vmovsd xmm21,QWORD PTR [rdi+rdx*1+0x40]
  a1668c:	08 
  a1668d:	62 a3 6d 40 18 d5 01 	vinsertf32x4 zmm18,zmm18,xmm21,0x1
  a16694:	62 a1 7c 48 28 ea    	vmovaps zmm21,zmm18
  a1669a:	62 e2 4d 48 7f e9    	vpermt2ps zmm21,zmm6,zmm1
  a166a0:	62 e2 1d 48 7f d1    	vpermt2ps zmm18,zmm12,zmm1
  a166a6:	62 e1 ff 08 10 74 17 	vmovsd xmm22,QWORD PTR [rdi+rdx*1+0x58]
  a166ad:	0b 
  a166ae:	62 a3 65 40 18 de 01 	vinsertf32x4 zmm19,zmm19,xmm22,0x1
  a166b5:	62 a1 7c 48 28 f3    	vmovaps zmm22,zmm19
  a166bb:	62 e2 4d 48 7f f1    	vpermt2ps zmm22,zmm6,zmm1
  a166c1:	62 e2 1d 48 7f d9    	vpermt2ps zmm19,zmm12,zmm1
  a166c7:	62 e1 ff 08 10 7c 17 	vmovsd xmm23,QWORD PTR [rdi+rdx*1+0x70]
  a166ce:	0e 
  a166cf:	62 61 7c 08 10 44 17 	vmovups xmm24,XMMWORD PTR [rdi+rdx*1+0x60]
  a166d6:	06 
  a166d7:	62 a3 3d 40 18 ff 01 	vinsertf32x4 zmm23,zmm24,xmm23,0x1
  a166de:	62 21 7c 48 28 c7    	vmovaps zmm24,zmm23
  a166e4:	62 62 4d 48 7f c1    	vpermt2ps zmm24,zmm6,zmm1
  a166ea:	62 e2 1d 48 7f f9    	vpermt2ps zmm23,zmm12,zmm1
  a166f0:	62 21 74 40 58 cf    	vaddps zmm25,zmm17,zmm23
  a166f6:	62 01 5c 40 58 d0    	vaddps zmm26,zmm20,zmm24
  a166fc:	62 81 5c 40 5c e0    	vsubps zmm20,zmm20,zmm24
  a16702:	62 21 54 40 58 c6    	vaddps zmm24,zmm21,zmm22
  a16708:	62 a1 54 40 5c ee    	vsubps zmm21,zmm21,zmm22
  a1670e:	62 81 7c 40 58 f1    	vaddps zmm22,zmm16,zmm25
  a16714:	62 a1 74 40 5c ff    	vsubps zmm23,zmm17,zmm23
  a1671a:	62 a1 6c 40 58 cb    	vaddps zmm17,zmm18,zmm19
  a16720:	62 a1 4c 40 58 f1    	vaddps zmm22,zmm22,zmm17
  a16726:	62 a1 6c 40 5c d3    	vsubps zmm18,zmm18,zmm19
  a1672c:	62 e1 7c 48 28 df    	vmovaps zmm19,zmm7
  a16732:	62 a2 35 40 a8 d8    	vfmadd213ps zmm19,zmm25,zmm16
  a16738:	62 82 3d 48 bc c1    	vfnmadd231ps zmm16,zmm8,zmm25
  a1673e:	62 01 04 48 58 ca    	vaddps zmm25,zmm15,zmm26
  a16744:	62 c2 75 40 bc d8    	vfnmadd231ps zmm19,zmm17,zmm8
  a1674a:	62 a2 45 48 b8 c1    	vfmadd231ps zmm16,zmm7,zmm17
  a16750:	62 41 54 40 59 d9    	vmulps zmm27,zmm21,zmm9
  a16756:	62 42 5d 40 b8 da    	vfmadd231ps zmm27,zmm20,zmm10
  a1675c:	62 c1 5c 40 59 e1    	vmulps zmm20,zmm20,zmm9
  a16762:	62 a2 2d 48 bc e5    	vfnmadd231ps zmm20,zmm10,zmm21
  a16768:	62 e1 7c 48 28 ef    	vmovaps zmm21,zmm7
  a1676e:	62 c2 2d 40 a8 ef    	vfmadd213ps zmm21,zmm26,zmm15
  a16774:	62 12 3d 48 bc fa    	vfnmadd231ps zmm15,zmm8,zmm26
  a1677a:	62 81 34 40 58 c8    	vaddps zmm17,zmm25,zmm24
  a16780:	62 c2 3d 40 bc e8    	vfnmadd231ps zmm21,zmm24,zmm8
  a16786:	62 12 45 48 b8 f8    	vfmadd231ps zmm15,zmm7,zmm24
  a1678c:	62 41 6c 40 59 c1    	vmulps zmm24,zmm18,zmm9
  a16792:	62 42 45 40 b8 c2    	vfmadd231ps zmm24,zmm23,zmm10
  a16798:	62 c1 44 40 59 f9    	vmulps zmm23,zmm23,zmm9
  a1679e:	62 a2 2d 48 bc fa    	vfnmadd231ps zmm23,zmm10,zmm18
  a167a4:	62 a1 7c 40 58 d4    	vaddps zmm18,zmm16,zmm20
  a167aa:	62 a1 7c 40 5c c4    	vsubps zmm16,zmm16,zmm20
  a167b0:	62 a1 04 48 5c e7    	vsubps zmm20,zmm15,zmm23
  a167b6:	62 c1 44 40 58 ff    	vaddps zmm23,zmm23,zmm15
  a167bc:	62 11 64 40 58 fb    	vaddps zmm15,zmm19,zmm27
  a167c2:	62 81 64 40 5c db    	vsubps zmm19,zmm19,zmm27
  a167c8:	62 01 54 40 5c c8    	vsubps zmm25,zmm21,zmm24
  a167ce:	62 a1 3c 40 58 ed    	vaddps zmm21,zmm24,zmm21
  a167d4:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a167da:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a167e0:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a167e6:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a167ec:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a167f2:	62 a2 65 48 7f f3    	vpermt2ps zmm22,zmm3,zmm19
  a167f8:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a167fe:	62 e2 65 48 7f d2    	vpermt2ps zmm18,zmm3,zmm2
  a16804:	62 e2 65 48 7f c2    	vpermt2ps zmm16,zmm3,zmm2
  a1680a:	62 a1 cd 40 14 da    	vunpcklpd zmm19,zmm22,zmm18
  a16810:	62 a1 cd 40 15 d2    	vunpckhpd zmm18,zmm22,zmm18
  a16816:	62 a1 85 48 14 f0    	vunpcklpd zmm22,zmm15,zmm16
  a1681c:	62 a1 85 48 15 c0    	vunpckhpd zmm16,zmm15,zmm16
  a16822:	62 31 7c 48 28 fb    	vmovaps zmm15,zmm19
  a16828:	62 32 5d 48 7f fe    	vpermt2ps zmm15,zmm4,zmm22
  a1682e:	62 a2 55 48 7f de    	vpermt2ps zmm19,zmm5,zmm22
  a16834:	62 a2 5d 48 7f d0    	vpermt2ps zmm18,zmm4,zmm16
  a1683a:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a16840:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a16846:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a1684c:	62 e2 7d 48 7f f9    	vpermt2ps zmm23,zmm0,zmm1
  a16852:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a16858:	62 a2 65 48 7f cd    	vpermt2ps zmm17,zmm3,zmm21
  a1685e:	62 62 65 48 7f ca    	vpermt2ps zmm25,zmm3,zmm2
  a16864:	62 e2 65 48 7f e2    	vpermt2ps zmm20,zmm3,zmm2
  a1686a:	62 e2 65 48 7f fa    	vpermt2ps zmm23,zmm3,zmm2
  a16870:	62 a1 f5 40 14 c4    	vunpcklpd zmm16,zmm17,zmm20
  a16876:	62 a1 f5 40 15 cc    	vunpckhpd zmm17,zmm17,zmm20
  a1687c:	62 a1 b5 40 14 e7    	vunpcklpd zmm20,zmm25,zmm23
  a16882:	62 a1 b5 40 15 ef    	vunpckhpd zmm21,zmm25,zmm23
  a16888:	62 a1 7c 48 28 f0    	vmovaps zmm22,zmm16
  a1688e:	62 a2 5d 48 7f f4    	vpermt2ps zmm22,zmm4,zmm20
  a16894:	62 a2 55 48 7f c4    	vpermt2ps zmm16,zmm5,zmm20
  a1689a:	62 a2 5d 48 7f cd    	vpermt2ps zmm17,zmm4,zmm21
  a168a0:	62 e1 7c 48 10 61 02 	vmovups zmm20,ZMMWORD PTR [rcx+0x80]
  a168a7:	62 e1 7c 48 10 69 03 	vmovups zmm21,ZMMWORD PTR [rcx+0xc0]
  a168ae:	62 a1 64 40 59 fc    	vmulps zmm23,zmm19,zmm20
  a168b4:	62 a2 7d 40 bc fd    	vfnmadd231ps zmm23,zmm16,zmm21
  a168ba:	62 a1 7c 40 59 c4    	vmulps zmm16,zmm16,zmm20
  a168c0:	62 e1 7c 48 10 61 04 	vmovups zmm20,ZMMWORD PTR [rcx+0x100]
  a168c7:	62 a2 55 40 b8 c3    	vfmadd231ps zmm16,zmm21,zmm19
  a168cd:	62 e1 7c 48 10 59 05 	vmovups zmm19,ZMMWORD PTR [rcx+0x140]
  a168d4:	62 a1 6c 40 59 ec    	vmulps zmm21,zmm18,zmm20
  a168da:	62 a2 75 40 bc eb    	vfnmadd231ps zmm21,zmm17,zmm19
  a168e0:	62 a1 74 40 59 cc    	vmulps zmm17,zmm17,zmm20
  a168e6:	62 a1 44 40 58 e5    	vaddps zmm20,zmm23,zmm21
  a168ec:	62 a2 65 40 b8 ca    	vfmadd231ps zmm17,zmm19,zmm18
  a168f2:	62 a1 7c 40 58 d1    	vaddps zmm18,zmm16,zmm17
  a168f8:	62 c1 7c 48 28 db    	vmovaps zmm19,zmm11
  a168fe:	62 c2 5d 40 ac df    	vfnmadd213ps zmm19,zmm20,zmm15
  a16904:	62 a1 7c 40 5c c1    	vsubps zmm16,zmm16,zmm17
  a1690a:	62 c1 7c 40 59 c5    	vmulps zmm16,zmm16,zmm13
  a16910:	62 a1 64 40 58 c8    	vaddps zmm17,zmm19,zmm16
  a16916:	62 a1 44 40 5c ed    	vsubps zmm21,zmm23,zmm21
  a1691c:	62 c1 7c 48 28 fb    	vmovaps zmm23,zmm11
  a16922:	62 a2 6d 40 ac fe    	vfnmadd213ps zmm23,zmm18,zmm22
  a16928:	62 c1 54 40 59 ed    	vmulps zmm21,zmm21,zmm13
  a1692e:	62 a1 64 40 5c c0    	vsubps zmm16,zmm19,zmm16
  a16934:	62 a1 44 40 5c dd    	vsubps zmm19,zmm23,zmm21
  a1693a:	62 a1 44 40 58 ed    	vaddps zmm21,zmm23,zmm21
  a16940:	62 a1 4c 40 58 d2    	vaddps zmm18,zmm22,zmm18
  a16946:	62 31 04 48 58 fc    	vaddps zmm15,zmm15,zmm20
  a1694c:	62 c2 0d 48 7f d7    	vpermt2ps zmm18,zmm14,zmm15
  a16952:	62 e1 7c 28 11 14 16 	vmovups YMMWORD PTR [rsi+rdx*1],ymm18
  a16959:	62 c3 7d 48 19 d7 02 	vextractf32x4 xmm15,zmm18,0x2
  a16960:	c5 78 13 7c 16 20    	vmovlps QWORD PTR [rsi+rdx*1+0x20],xmm15
  a16966:	62 a2 0d 48 7f d9    	vpermt2ps zmm19,zmm14,zmm17
  a1696c:	62 e1 7c 28 11 9c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x28],ymm19
  a16973:	28 00 00 00 
  a16977:	62 c3 7d 48 19 df 02 	vextractf32x4 xmm15,zmm19,0x2
  a1697e:	c5 78 13 7c 16 48    	vmovlps QWORD PTR [rsi+rdx*1+0x48],xmm15
  a16984:	62 a2 0d 48 7f e8    	vpermt2ps zmm21,zmm14,zmm16
  a1698a:	62 e1 7c 28 11 ac 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x50],ymm21
  a16991:	50 00 00 00 
  a16995:	62 c3 7d 48 19 ef 02 	vextractf32x4 xmm15,zmm21,0x2
  a1699c:	c5 78 13 7c 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm15
  a169a2:	48 83 c2 78          	add    rdx,0x78
  a169a6:	48 39 d0             	cmp    rax,rdx
  a169a9:	0f 85 71 fc ff ff    	jne    a16620 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0xa0>
  a169af:	c5 f8 77             	vzeroupper
  a169b2:	c3                   	ret
