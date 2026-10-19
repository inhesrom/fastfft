
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a00580 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a00580:	62 f1 7c 48 28 05 f6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6c69f6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a00587:	69 6c ff 
  a0058a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a0058e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a00592:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a00598:	62 f1 7c 48 28 05 5e 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6c695e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0059f:	69 6c ff 
  a005a2:	62 f1 7c 48 28 1d 94 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6c6994]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a005a9:	69 6c ff 
  a005ac:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a005b2:	62 f2 7d 48 7f e2    	vpermt2ps zmm4,zmm0,zmm2
  a005b8:	62 f1 7c 48 11 a4 24 	vmovups ZMMWORD PTR [rsp-0x48],zmm4
  a005bf:	b8 ff ff ff 
  a005c3:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a005c9:	62 f2 65 48 7f f2    	vpermt2ps zmm6,zmm3,zmm2
  a005cf:	48 c1 e2 06          	shl    rdx,0x6
  a005d3:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a005d7:	31 d2                	xor    edx,edx
  a005d9:	c5 7c 28 35 df 7c 67 	vmovaps ymm14,YMMWORD PTR [rip+0xffffffffff677cdf]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a005e0:	ff 
  a005e1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a005e8:	0f 1f 84 00 00 00 00 
  a005ef:	00 
  a005f0:	62 71 7c 48 10 14 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1]
  a005f7:	62 71 7c 48 10 7c 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x40]
  a005fe:	01 
  a005ff:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x80]
  a00606:	02 
  a00607:	62 c1 7c 48 28 ca    	vmovaps zmm17,zmm10
  a0060d:	62 f1 7c 48 28 05 69 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68d869]        # 8de80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b330>
  a00614:	d8 68 ff 
  a00617:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a0061d:	62 f1 7c 48 28 1d 99 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff68d899]        # 8dec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b370>
  a00624:	d8 68 ff 
  a00627:	62 72 65 48 7f d1    	vpermt2ps zmm10,zmm3,zmm1
  a0062d:	62 c1 7c 48 28 d7    	vmovaps zmm18,zmm15
  a00633:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a00639:	62 72 65 48 7f f9    	vpermt2ps zmm15,zmm3,zmm1
  a0063f:	62 a1 7c 48 28 d8    	vmovaps zmm19,zmm16
  a00645:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a0064b:	62 e2 65 48 7f c1    	vpermt2ps zmm16,zmm3,zmm1
  a00651:	62 a1 6c 40 58 eb    	vaddps zmm21,zmm18,zmm19
  a00657:	62 a1 74 40 58 f5    	vaddps zmm22,zmm17,zmm21
  a0065d:	62 a1 04 48 58 f8    	vaddps zmm23,zmm15,zmm16
  a00663:	62 a1 2c 48 58 e7    	vaddps zmm20,zmm10,zmm23
  a00669:	62 f2 7d 48 18 05 ed 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff674ded]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a00670:	4d 67 ff 
  a00673:	62 a2 7d 48 bc cd    	vfnmadd231ps zmm17,zmm0,zmm21
  a00679:	62 31 04 48 5c f8    	vsubps zmm15,zmm15,zmm16
  a0067f:	62 f2 7d 48 18 1d 4b 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff674c4b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a00686:	4c 67 ff 
  a00689:	62 71 04 48 59 fb    	vmulps zmm15,zmm15,zmm3
  a0068f:	62 41 74 40 58 c7    	vaddps zmm24,zmm17,zmm15
  a00695:	62 32 7d 48 bc d7    	vfnmadd231ps zmm10,zmm0,zmm23
  a0069b:	62 a1 6c 40 5c c3    	vsubps zmm16,zmm18,zmm19
  a006a1:	62 e1 7c 40 59 c3    	vmulps zmm16,zmm16,zmm3
  a006a7:	62 a1 2c 48 5c e8    	vsubps zmm21,zmm10,zmm16
  a006ad:	62 51 74 40 5c ff    	vsubps zmm15,zmm17,zmm15
  a006b3:	62 41 7c 40 58 ca    	vaddps zmm25,zmm16,zmm10
  a006b9:	62 f1 7c 48 28 05 bd 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6c68bd]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a006c0:	68 6c ff 
  a006c3:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a006c9:	62 62 7d 48 7f c1    	vpermt2ps zmm24,zmm0,zmm1
  a006cf:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a006d5:	62 31 7c 48 28 d6    	vmovaps zmm10,zmm22
  a006db:	62 f1 7c 48 28 1d 1b 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6c681b]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a006e2:	68 6c ff 
  a006e5:	62 72 65 48 7f d2    	vpermt2ps zmm10,zmm3,zmm2
  a006eb:	62 f1 7c 48 28 25 4b 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6c684b]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a006f2:	68 6c ff 
  a006f5:	62 e2 5d 48 7f f2    	vpermt2ps zmm22,zmm4,zmm2
  a006fb:	62 81 7c 48 28 c8    	vmovaps zmm17,zmm24
  a00701:	62 e2 65 48 7f ca    	vpermt2ps zmm17,zmm3,zmm2
  a00707:	62 62 5d 48 7f c2    	vpermt2ps zmm24,zmm4,zmm2
  a0070d:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a00713:	62 e2 65 48 7f c2    	vpermt2ps zmm16,zmm3,zmm2
  a00719:	62 72 5d 48 7f fa    	vpermt2ps zmm15,zmm4,zmm2
  a0071f:	62 a1 ad 48 14 d8    	vunpcklpd zmm19,zmm10,zmm16
  a00725:	62 a1 ad 48 15 c0    	vunpckhpd zmm16,zmm10,zmm16
  a0072b:	62 f1 7c 48 10 ac 24 	vmovups zmm5,ZMMWORD PTR [rsp-0x48]
  a00732:	b8 ff ff ff 
  a00736:	62 71 f5 40 14 d5    	vunpcklpd zmm10,zmm17,zmm5
  a0073c:	62 e1 f5 40 15 fd    	vunpckhpd zmm23,zmm17,zmm5
  a00742:	62 c1 cd 40 14 d7    	vunpcklpd zmm18,zmm22,zmm15
  a00748:	62 c1 cd 40 15 cf    	vunpckhpd zmm17,zmm22,zmm15
  a0074e:	62 61 bd 40 14 de    	vunpcklpd zmm27,zmm24,zmm6
  a00754:	62 61 bd 40 15 c6    	vunpckhpd zmm24,zmm24,zmm6
  a0075a:	62 31 7c 48 28 fb    	vmovaps zmm15,zmm19
  a00760:	62 f1 7c 48 28 3d 96 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6c6696]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a00767:	66 6c ff 
  a0076a:	62 52 45 48 7f fa    	vpermt2ps zmm15,zmm7,zmm10
  a00770:	62 71 7c 48 28 05 c6 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6c66c6]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a00777:	66 6c ff 
  a0077a:	62 c2 3d 48 7f da    	vpermt2ps zmm19,zmm8,zmm10
  a00780:	62 a1 7c 48 28 f0    	vmovaps zmm22,zmm16
  a00786:	62 a2 45 48 7f f7    	vpermt2ps zmm22,zmm7,zmm23
  a0078c:	62 a2 3d 48 7f c7    	vpermt2ps zmm16,zmm8,zmm23
  a00792:	62 21 7c 48 28 d2    	vmovaps zmm26,zmm18
  a00798:	62 02 45 48 7f d3    	vpermt2ps zmm26,zmm7,zmm27
  a0079e:	62 82 3d 48 7f d3    	vpermt2ps zmm18,zmm8,zmm27
  a007a4:	62 a1 7c 48 28 f9    	vmovaps zmm23,zmm17
  a007aa:	62 82 45 48 7f f8    	vpermt2ps zmm23,zmm7,zmm24
  a007b0:	62 82 3d 48 7f c8    	vpermt2ps zmm17,zmm8,zmm24
  a007b6:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a007bc:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a007c2:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a007c8:	62 31 7c 48 28 d4    	vmovaps zmm10,zmm20
  a007ce:	62 72 65 48 7f d2    	vpermt2ps zmm10,zmm3,zmm2
  a007d4:	62 e2 5d 48 7f e2    	vpermt2ps zmm20,zmm4,zmm2
  a007da:	62 21 7c 48 28 dd    	vmovaps zmm27,zmm21
  a007e0:	62 62 65 48 7f da    	vpermt2ps zmm27,zmm3,zmm2
  a007e6:	62 e2 5d 48 7f ea    	vpermt2ps zmm21,zmm4,zmm2
  a007ec:	62 01 7c 48 28 c1    	vmovaps zmm24,zmm25
  a007f2:	62 62 65 48 7f c2    	vpermt2ps zmm24,zmm3,zmm2
  a007f8:	62 62 5d 48 7f ca    	vpermt2ps zmm25,zmm4,zmm2
  a007fe:	62 01 ad 48 14 e8    	vunpcklpd zmm29,zmm10,zmm24
  a00804:	62 11 ad 48 15 d8    	vunpckhpd zmm11,zmm10,zmm24
  a0080a:	62 71 a5 40 14 d5    	vunpcklpd zmm10,zmm27,zmm5
  a00810:	62 61 a5 40 15 e5    	vunpckhpd zmm28,zmm27,zmm5
  a00816:	62 01 dd 40 14 d9    	vunpcklpd zmm27,zmm20,zmm25
  a0081c:	62 01 dd 40 15 c9    	vunpckhpd zmm25,zmm20,zmm25
  a00822:	62 e1 d5 40 14 e6    	vunpcklpd zmm20,zmm21,zmm6
  a00828:	62 61 d5 40 15 f6    	vunpckhpd zmm30,zmm21,zmm6
  a0082e:	62 81 7c 48 28 ed    	vmovaps zmm21,zmm29
  a00834:	62 c2 45 48 7f ea    	vpermt2ps zmm21,zmm7,zmm10
  a0083a:	62 42 3d 48 7f ea    	vpermt2ps zmm29,zmm8,zmm10
  a00840:	62 41 7c 48 28 c3    	vmovaps zmm24,zmm11
  a00846:	62 02 45 48 7f c4    	vpermt2ps zmm24,zmm7,zmm28
  a0084c:	62 12 3d 48 7f dc    	vpermt2ps zmm11,zmm8,zmm28
  a00852:	62 11 7c 48 28 d3    	vmovaps zmm10,zmm27
  a00858:	62 32 45 48 7f d4    	vpermt2ps zmm10,zmm7,zmm20
  a0085e:	62 22 3d 48 7f dc    	vpermt2ps zmm27,zmm8,zmm20
  a00864:	62 01 7c 48 28 e1    	vmovaps zmm28,zmm25
  a0086a:	62 02 45 48 7f e6    	vpermt2ps zmm28,zmm7,zmm30
  a00870:	62 02 3d 48 7f ce    	vpermt2ps zmm25,zmm8,zmm30
  a00876:	62 71 7c 48 10 49 02 	vmovups zmm9,ZMMWORD PTR [rcx+0x80]
  a0087d:	62 71 7c 48 10 61 03 	vmovups zmm12,ZMMWORD PTR [rcx+0xc0]
  a00884:	62 71 7c 48 10 69 04 	vmovups zmm13,ZMMWORD PTR [rcx+0x100]
  a0088b:	62 f1 7c 48 10 41 05 	vmovups zmm0,ZMMWORD PTR [rcx+0x140]
  a00892:	62 61 7c 48 10 79 06 	vmovups zmm31,ZMMWORD PTR [rcx+0x180]
  a00899:	62 61 7c 48 10 71 07 	vmovups zmm30,ZMMWORD PTR [rcx+0x1c0]
  a008a0:	62 f1 7c 48 10 59 08 	vmovups zmm3,ZMMWORD PTR [rcx+0x200]
  a008a7:	62 f1 7c 48 10 61 09 	vmovups zmm4,ZMMWORD PTR [rcx+0x240]
  a008ae:	62 f1 7c 48 10 79 0a 	vmovups zmm7,ZMMWORD PTR [rcx+0x280]
  a008b5:	62 e1 2c 40 59 e3    	vmulps zmm20,zmm26,zmm3
  a008bb:	62 e2 2d 48 bc e4    	vfnmadd231ps zmm20,zmm10,zmm4
  a008c1:	62 f1 2c 48 59 db    	vmulps zmm3,zmm10,zmm3
  a008c7:	62 71 7c 48 10 41 0b 	vmovups zmm8,ZMMWORD PTR [rcx+0x2c0]
  a008ce:	62 92 5d 48 b8 da    	vfmadd231ps zmm3,zmm4,zmm26
  a008d4:	62 f1 7c 48 10 61 0c 	vmovups zmm4,ZMMWORD PTR [rcx+0x300]
  a008db:	62 51 4c 40 59 d5    	vmulps zmm10,zmm22,zmm13
  a008e1:	62 72 3d 40 bc d0    	vfnmadd231ps zmm10,zmm24,zmm0
  a008e7:	62 41 3c 40 59 d5    	vmulps zmm26,zmm24,zmm13
  a008ed:	62 71 7c 48 10 69 0d 	vmovups zmm13,ZMMWORD PTR [rcx+0x340]
  a008f4:	62 22 7d 48 b8 d6    	vfmadd231ps zmm26,zmm0,zmm22
  a008fa:	62 f1 7c 48 10 41 0e 	vmovups zmm0,ZMMWORD PTR [rcx+0x380]
  a00901:	62 f1 44 40 59 ec    	vmulps zmm5,zmm23,zmm4
  a00907:	62 d2 1d 40 bc ed    	vfnmadd231ps zmm5,zmm28,zmm13
  a0090d:	62 61 1c 40 59 e4    	vmulps zmm28,zmm28,zmm4
  a00913:	62 f1 7c 48 10 61 0f 	vmovups zmm4,ZMMWORD PTR [rcx+0x3c0]
  a0091a:	62 22 15 48 b8 e7    	vfmadd231ps zmm28,zmm13,zmm23
  a00920:	62 51 64 40 59 e9    	vmulps zmm13,zmm19,zmm9
  a00926:	62 52 15 40 bc ec    	vfnmadd231ps zmm13,zmm29,zmm12
  a0092c:	62 61 6c 40 59 c7    	vmulps zmm24,zmm18,zmm7
  a00932:	62 42 25 40 bc c0    	vfnmadd231ps zmm24,zmm27,zmm8
  a00938:	62 51 14 40 59 c9    	vmulps zmm9,zmm29,zmm9
  a0093e:	62 81 14 48 58 f0    	vaddps zmm22,zmm13,zmm24
  a00944:	62 32 1d 48 b8 cb    	vfmadd231ps zmm9,zmm12,zmm19
  a0094a:	62 11 7c 40 59 e7    	vmulps zmm12,zmm16,zmm31
  a00950:	62 12 25 48 bc e6    	vfnmadd231ps zmm12,zmm11,zmm30
  a00956:	62 e1 74 40 59 d8    	vmulps zmm19,zmm17,zmm0
  a0095c:	62 e2 35 40 bc dc    	vfnmadd231ps zmm19,zmm25,zmm4
  a00962:	62 f1 24 40 59 ff    	vmulps zmm7,zmm27,zmm7
  a00968:	62 a1 1c 48 58 fb    	vaddps zmm23,zmm12,zmm19
  a0096e:	62 b2 3d 48 b8 fa    	vfmadd231ps zmm7,zmm8,zmm18
  a00974:	62 21 64 48 58 dd    	vaddps zmm27,zmm3,zmm21
  a0097a:	62 01 2c 40 58 ec    	vaddps zmm29,zmm26,zmm28
  a00980:	62 11 24 48 59 c7    	vmulps zmm8,zmm11,zmm31
  a00986:	62 32 0d 40 b8 c0    	vfmadd231ps zmm8,zmm30,zmm16
  a0098c:	62 f1 34 40 59 c0    	vmulps zmm0,zmm25,zmm0
  a00992:	62 b2 5d 48 b8 c1    	vfmadd231ps zmm0,zmm4,zmm17
  a00998:	62 91 14 48 5c e0    	vsubps zmm4,zmm13,zmm24
  a0099e:	62 71 34 48 5c df    	vsubps zmm11,zmm9,zmm7
  a009a4:	62 51 5c 48 58 eb    	vaddps zmm13,zmm4,zmm11
  a009aa:	62 62 7d 48 18 3d e8 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff6749e8]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a009b1:	49 67 ff 
  a009b4:	62 81 14 48 59 cf    	vmulps zmm17,zmm13,zmm31
  a009ba:	62 71 3c 48 5c e8    	vsubps zmm13,zmm8,zmm0
  a009c0:	62 31 1c 48 5c e3    	vsubps zmm12,zmm12,zmm19
  a009c6:	62 c1 14 48 5c c4    	vsubps zmm16,zmm13,zmm12
  a009cc:	62 01 7c 40 59 c7    	vmulps zmm24,zmm16,zmm31
  a009d2:	62 e1 54 40 5c eb    	vsubps zmm21,zmm21,zmm3
  a009d8:	62 41 54 48 5c ca    	vsubps zmm25,zmm5,zmm10
  a009de:	c5 bc 58 c0          	vaddps ymm0,ymm8,ymm0
  a009e2:	c5 b4 58 df          	vaddps ymm3,ymm9,ymm7
  a009e6:	62 e1 64 28 58 c0    	vaddps ymm16,ymm3,ymm0
  a009ec:	62 81 14 20 58 d3    	vaddps ymm18,ymm29,ymm27
  a009f2:	62 b1 6c 20 58 f8    	vaddps ymm7,ymm18,ymm16
  a009f8:	62 a1 4c 00 58 df    	vaddps xmm19,xmm22,xmm23
  a009fe:	c5 a8 58 ed          	vaddps xmm5,xmm10,xmm5
  a00a02:	62 31 04 08 58 c4    	vaddps xmm8,xmm15,xmm20
  a00a08:	62 61 3c 08 58 f5    	vaddps xmm30,xmm8,xmm5
  a00a0e:	62 31 0c 00 58 cb    	vaddps xmm9,xmm30,xmm19
  a00a14:	62 72 0d 28 7f cf    	vpermt2ps ymm9,ymm14,ymm7
  a00a1a:	c4 63 7d 19 cf 01    	vextractf128 xmm7,ymm9,0x1
  a00a20:	c5 f8 13 7c 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm7
  a00a26:	c5 78 11 0c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm9
  a00a2b:	c4 c1 1c 58 fd       	vaddps ymm7,ymm12,ymm13
  a00a30:	62 91 44 28 59 ff    	vmulps ymm7,ymm7,ymm31
  a00a36:	c5 a4 5c e4          	vsubps ymm4,ymm11,ymm4
  a00a3a:	62 91 5c 28 59 e7    	vmulps ymm4,ymm4,ymm31
  a00a40:	62 61 5c 28 5c ff    	vsubps ymm31,ymm4,ymm7
  a00a46:	62 31 34 20 58 cd    	vaddps ymm9,ymm25,ymm21
  a00a4c:	62 11 34 28 58 d7    	vaddps ymm10,ymm9,ymm31
  a00a52:	62 11 74 00 58 d8    	vaddps xmm11,xmm17,xmm24
  a00a58:	62 11 2c 00 5c e4    	vsubps xmm12,xmm26,xmm28
  a00a5e:	62 31 04 08 5c ec    	vsubps xmm13,xmm15,xmm20
  a00a64:	c4 41 10 58 fc       	vaddps xmm15,xmm13,xmm12
  a00a69:	62 c1 04 08 58 e3    	vaddps xmm20,xmm15,xmm11
  a00a6f:	62 c2 0d 28 7f e2    	vpermt2ps ymm20,ymm14,ymm10
  a00a75:	62 c3 7d 28 19 e2 01 	vextractf32x4 xmm10,ymm20,0x1
  a00a7c:	c5 78 13 54 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm10
  a00a82:	62 e1 7c 08 11 a4 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm20
  a00a89:	18 00 00 00 
  a00a8d:	62 31 44 20 5c d6    	vsubps ymm10,ymm23,ymm22
  a00a93:	62 81 24 20 5c e5    	vsubps ymm20,ymm27,ymm29
  a00a99:	c5 e0 5c c0          	vsubps xmm0,xmm3,xmm0
  a00a9d:	62 d1 5c 20 58 da    	vaddps ymm3,ymm20,ymm10
  a00aa3:	c5 b8 5c ed          	vsubps xmm5,xmm8,xmm5
  a00aa7:	c5 50 58 c0          	vaddps xmm8,xmm5,xmm0
  a00aab:	62 72 0d 28 7f c3    	vpermt2ps ymm8,ymm14,ymm3
  a00ab1:	c4 63 7d 19 c3 01    	vextractf128 xmm3,ymm8,0x1
  a00ab7:	c5 f8 13 5c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm3
  a00abd:	c5 78 11 44 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm8
  a00ac3:	62 b1 3c 20 5c d9    	vsubps ymm3,ymm24,ymm17
  a00ac9:	62 11 54 20 5c c1    	vsubps ymm8,ymm21,ymm25
  a00acf:	c5 d8 58 e7          	vaddps xmm4,xmm4,xmm7
  a00ad3:	c5 bc 58 fb          	vaddps ymm7,ymm8,ymm3
  a00ad7:	c4 41 10 5c e4       	vsubps xmm12,xmm13,xmm12
  a00adc:	c5 18 58 ec          	vaddps xmm13,xmm12,xmm4
  a00ae0:	62 72 0d 28 7f ef    	vpermt2ps ymm13,ymm14,ymm7
  a00ae6:	c4 63 7d 19 ef 01    	vextractf128 xmm7,ymm13,0x1
  a00aec:	c5 f8 13 7c 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm7
  a00af2:	c5 78 11 6c 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm13
  a00af8:	62 b1 6c 20 5c f8    	vsubps ymm7,ymm18,ymm16
  a00afe:	62 31 0c 00 5c eb    	vsubps xmm13,xmm30,xmm19
  a00b04:	62 72 0d 28 7f ef    	vpermt2ps ymm13,ymm14,ymm7
  a00b0a:	c4 63 7d 19 ef 01    	vextractf128 xmm7,ymm13,0x1
  a00b10:	c5 f8 13 7c 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm7
  a00b16:	c5 78 11 6c 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm13
  a00b1c:	62 91 34 28 5c ff    	vsubps ymm7,ymm9,ymm31
  a00b22:	c4 41 00 5c cb       	vsubps xmm9,xmm15,xmm11
  a00b27:	62 72 0d 28 7f cf    	vpermt2ps ymm9,ymm14,ymm7
  a00b2d:	c4 63 7d 19 cf 01    	vextractf128 xmm7,ymm9,0x1
  a00b33:	c5 f8 13 bc 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm7
  a00b3a:	00 00 
  a00b3c:	c5 78 11 4c 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm9
  a00b42:	62 d1 5c 20 5c fa    	vsubps ymm7,ymm20,ymm10
  a00b48:	c5 d0 5c c0          	vsubps xmm0,xmm5,xmm0
  a00b4c:	62 f2 0d 28 7f c7    	vpermt2ps ymm0,ymm14,ymm7
  a00b52:	c4 e3 7d 19 c5 01    	vextractf128 xmm5,ymm0,0x1
  a00b58:	c5 f8 13 ac 16 a0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xa0],xmm5
  a00b5f:	00 00 
  a00b61:	c5 f8 11 84 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm0
  a00b68:	00 00 
  a00b6a:	c5 bc 5c c3          	vsubps ymm0,ymm8,ymm3
  a00b6e:	c5 98 5c dc          	vsubps xmm3,xmm12,xmm4
  a00b72:	62 f2 0d 28 7f d8    	vpermt2ps ymm3,ymm14,ymm0
  a00b78:	c4 e3 7d 19 d8 01    	vextractf128 xmm0,ymm3,0x1
  a00b7e:	c5 f8 13 84 16 b8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xb8],xmm0
  a00b85:	00 00 
  a00b87:	c5 f8 11 9c 16 a8 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa8],xmm3
  a00b8e:	00 00 
  a00b90:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  a00b97:	48 39 d0             	cmp    rax,rdx
  a00b9a:	0f 85 50 fa ff ff    	jne    a005f0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  a00ba0:	c5 f8 77             	vzeroupper
  a00ba3:	c3                   	ret
