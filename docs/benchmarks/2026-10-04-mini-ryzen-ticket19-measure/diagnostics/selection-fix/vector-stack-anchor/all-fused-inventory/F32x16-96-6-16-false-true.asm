
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a216c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a216c0:	48 81 ec 08 09 00 00 	sub    rsp,0x908
  a216c7:	62 f1 7c 48 28 05 af 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6a58af]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a216ce:	58 6a ff 
  a216d1:	62 f1 7c 48 28 0d e5 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6a58e5]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a216d8:	58 6a ff 
  a216db:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a216df:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a216e5:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm2
  a216ec:	1e 
  a216ed:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a216f1:	62 f2 75 48 7f c0    	vpermt2ps zmm0,zmm1,zmm0
  a216f7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm0
  a216fe:	1d 
  a216ff:	48 c1 e2 08          	shl    rdx,0x8
  a21703:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a21707:	31 d2                	xor    edx,edx
  a21709:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  a21710:	62 f1 7c 48 10 04 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1]
  a21717:	62 f1 7c 48 10 74 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x40]
  a2171e:	01 
  a2171f:	62 f1 7c 48 10 5c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x80]
  a21726:	02 
  a21727:	62 f1 7c 48 10 6c 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a2172e:	03 
  a2172f:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a21735:	62 e1 7c 48 28 25 01 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff66e901]        # 90040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d4f0>
  a2173c:	e9 66 ff 
  a2173f:	62 72 5d 40 7f ee    	vpermt2ps zmm13,zmm20,zmm6
  a21745:	62 71 7c 48 10 44 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x100]
  a2174c:	04 
  a2174d:	62 71 7c 48 10 4c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x140]
  a21754:	05 
  a21755:	62 d1 7c 48 28 d0    	vmovaps zmm2,zmm8
  a2175b:	62 d2 5d 40 7f d1    	vpermt2ps zmm2,zmm20,zmm9
  a21761:	62 71 7c 48 10 5c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x200]
  a21768:	08 
  a21769:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x240]
  a21770:	09 
  a21771:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a21777:	62 d2 5d 40 7f e6    	vpermt2ps zmm4,zmm20,zmm14
  a2177d:	62 71 6c 48 58 fc    	vaddps zmm15,zmm2,zmm4
  a21783:	62 c1 14 48 58 c7    	vaddps zmm16,zmm13,zmm15
  a21789:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x180]
  a21790:	06 
  a21791:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a21798:	07 
  a21799:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a2179f:	62 c2 5d 40 7f cc    	vpermt2ps zmm17,zmm20,zmm12
  a217a5:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x280]
  a217ac:	0a 
  a217ad:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  a217b4:	0b 
  a217b5:	62 b1 7c 48 28 fb    	vmovaps zmm7,zmm19
  a217bb:	62 b2 5d 40 7f fa    	vpermt2ps zmm7,zmm20,zmm18
  a217c1:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a217c7:	62 72 5d 40 7f d5    	vpermt2ps zmm10,zmm20,zmm5
  a217cd:	62 c1 44 48 58 e2    	vaddps zmm20,zmm7,zmm10
  a217d3:	62 a1 74 40 58 f4    	vaddps zmm22,zmm17,zmm20
  a217d9:	62 a1 7c 40 58 ee    	vaddps zmm21,zmm16,zmm22
  a217df:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm21
  a217e6:	ff 
  a217e7:	62 e1 7c 48 28 3d 8f 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6a578f]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a217ee:	57 6a ff 
  a217f1:	62 01 3c 00 57 c0    	vxorps xmm24,xmm24,xmm24
  a217f7:	62 82 45 40 7f e8    	vpermt2ps zmm21,zmm23,zmm24
  a217fd:	62 21 7c 48 28 dd    	vmovaps zmm27,zmm21
  a21803:	62 62 7d 48 18 0d 53 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff653c53]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a2180a:	3c 65 ff 
  a2180d:	62 52 35 40 bc ef    	vfnmadd231ps zmm13,zmm25,zmm15
  a21813:	62 61 7c 48 28 15 63 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff66e863]        # 90080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d530>
  a2181a:	e8 66 ff 
  a2181d:	62 52 2d 40 7f c1    	vpermt2ps zmm8,zmm26,zmm9
  a21823:	62 52 2d 40 7f de    	vpermt2ps zmm11,zmm26,zmm14
  a21829:	62 51 3c 48 5c cb    	vsubps zmm9,zmm8,zmm11
  a2182f:	62 72 7d 48 18 3d 9b 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff653a9b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a21836:	3a 65 ff 
  a21839:	62 51 34 48 59 f7    	vmulps zmm14,zmm9,zmm15
  a2183f:	62 c1 14 48 5c ee    	vsubps zmm21,zmm13,zmm14
  a21845:	62 a2 35 40 bc cc    	vfnmadd231ps zmm17,zmm25,zmm20
  a2184b:	62 a2 2d 40 7f da    	vpermt2ps zmm19,zmm26,zmm18
  a21851:	62 f2 2d 40 7f dd    	vpermt2ps zmm3,zmm26,zmm5
  a21857:	62 f1 64 40 5c eb    	vsubps zmm5,zmm19,zmm3
  a2185d:	62 d1 54 48 59 ef    	vmulps zmm5,zmm5,zmm15
  a21863:	62 e1 74 40 5c d5    	vsubps zmm18,zmm17,zmm5
  a21869:	62 31 54 40 58 ca    	vaddps zmm9,zmm21,zmm18
  a2186f:	62 71 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm9
  a21876:	62 12 45 40 7f c8    	vpermt2ps zmm9,zmm23,zmm24
  a2187c:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm9
  a21883:	03 
  a21884:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm27
  a2188b:	05 
  a2188c:	62 81 7c 48 28 e3    	vmovaps zmm20,zmm27
  a21892:	62 51 0c 48 58 ed    	vaddps zmm13,zmm14,zmm13
  a21898:	62 b1 54 48 58 e9    	vaddps zmm5,zmm5,zmm17
  a2189e:	62 e1 14 48 58 cd    	vaddps zmm17,zmm13,zmm5
  a218a4:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a218aa:	62 12 45 40 7f f0    	vpermt2ps zmm14,zmm23,zmm24
  a218b0:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm14
  a218b7:	01 
  a218b8:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm14
  a218bf:	02 
  a218c0:	62 21 54 40 5c fa    	vsubps zmm31,zmm21,zmm18
  a218c6:	62 11 7c 48 28 f7    	vmovaps zmm14,zmm31
  a218cc:	62 12 45 40 7f f0    	vpermt2ps zmm14,zmm23,zmm24
  a218d2:	62 f1 14 48 5c ed    	vsubps zmm5,zmm13,zmm5
  a218d8:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm5
  a218df:	fe 
  a218e0:	62 92 45 40 7f e8    	vpermt2ps zmm5,zmm23,zmm24
  a218e6:	62 61 7c 48 28 dd    	vmovaps zmm27,zmm5
  a218ec:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm14
  a218f3:	04 
  a218f4:	62 a1 7c 40 5c f6    	vsubps zmm22,zmm16,zmm22
  a218fa:	62 b1 7c 48 28 ee    	vmovaps zmm5,zmm22
  a21900:	62 92 45 40 7f e8    	vpermt2ps zmm5,zmm23,zmm24
  a21906:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm5
  a2190d:	07 
  a2190e:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm5
  a21915:	17 
  a21916:	62 f2 2d 40 7f c6    	vpermt2ps zmm0,zmm26,zmm6
  a2191c:	62 d1 3c 48 58 f3    	vaddps zmm6,zmm8,zmm11
  a21922:	62 e1 7c 48 58 c6    	vaddps zmm16,zmm0,zmm6
  a21928:	62 d2 2d 40 7f cc    	vpermt2ps zmm1,zmm26,zmm12
  a2192e:	62 f1 64 40 58 db    	vaddps zmm3,zmm19,zmm3
  a21934:	62 71 74 48 58 e3    	vaddps zmm12,zmm1,zmm3
  a2193a:	62 41 7c 40 58 e4    	vaddps zmm28,zmm16,zmm12
  a21940:	62 11 7c 48 28 c4    	vmovaps zmm8,zmm28
  a21946:	62 f2 35 40 bc c6    	vfnmadd231ps zmm0,zmm25,zmm6
  a2194c:	62 f1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm4
  a21952:	62 d1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm15
  a21958:	62 f1 7c 48 58 e2    	vaddps zmm4,zmm0,zmm2
  a2195e:	62 f2 35 40 bc cb    	vfnmadd231ps zmm1,zmm25,zmm3
  a21964:	62 d1 44 48 5c da    	vsubps zmm3,zmm7,zmm10
  a2196a:	62 d1 64 48 59 df    	vmulps zmm3,zmm3,zmm15
  a21970:	62 f1 74 48 58 f3    	vaddps zmm6,zmm1,zmm3
  a21976:	62 71 5c 48 58 ee    	vaddps zmm13,zmm4,zmm6
  a2197c:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a21982:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a21988:	62 f1 74 48 5c cb    	vsubps zmm1,zmm1,zmm3
  a2198e:	62 61 7c 48 58 e9    	vaddps zmm29,zmm0,zmm1
  a21994:	62 01 7c 48 28 d5    	vmovaps zmm26,zmm29
  a2199a:	62 61 5c 48 5c f6    	vsubps zmm30,zmm4,zmm6
  a219a0:	62 81 7c 48 28 ee    	vmovaps zmm21,zmm30
  a219a6:	62 f1 7c 48 5c f1    	vsubps zmm6,zmm0,zmm1
  a219ac:	62 e1 7c 48 28 de    	vmovaps zmm19,zmm6
  a219b2:	62 51 7c 40 5c d4    	vsubps zmm10,zmm16,zmm12
  a219b8:	62 c1 7c 48 28 d2    	vmovaps zmm18,zmm10
  a219be:	62 f1 7c 48 28 15 78 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6a5578]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a219c5:	55 6a ff 
  a219c8:	62 c2 6d 48 7f e1    	vpermt2ps zmm20,zmm2,zmm9
  a219ce:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm20
  a219d5:	0f 
  a219d6:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x780]
  a219dd:	1e 
  a219de:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x40]
  a219e5:	01 
  a219e6:	62 f2 6d 48 7f dd    	vpermt2ps zmm3,zmm2,zmm5
  a219ec:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a219f3:	01 
  a219f4:	62 d1 7c 48 28 e6    	vmovaps zmm4,zmm14
  a219fa:	62 92 6d 48 7f e3    	vpermt2ps zmm4,zmm2,zmm27
  a21a00:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm4
  a21a07:	0e 
  a21a08:	62 11 7c 48 28 f3    	vmovaps zmm14,zmm27
  a21a0e:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x1c0]
  a21a15:	07 
  a21a16:	62 f2 6d 48 7f fd    	vpermt2ps zmm7,zmm2,zmm5
  a21a1c:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm7
  a21a23:	07 
  a21a24:	62 02 45 40 7f e0    	vpermt2ps zmm28,zmm23,zmm24
  a21a2a:	62 12 45 40 7f e8    	vpermt2ps zmm13,zmm23,zmm24
  a21a30:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a21a36:	62 d2 6d 48 7f c5    	vpermt2ps zmm0,zmm2,zmm13
  a21a3c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm0
  a21a43:	13 
  a21a44:	62 02 45 40 7f e8    	vpermt2ps zmm29,zmm23,zmm24
  a21a4a:	62 91 7c 48 28 cd    	vmovaps zmm1,zmm29
  a21a50:	62 f2 6d 48 7f cd    	vpermt2ps zmm1,zmm2,zmm5
  a21a56:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a21a5c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm1
  a21a63:	12 
  a21a64:	62 02 45 40 7f f0    	vpermt2ps zmm30,zmm23,zmm24
  a21a6a:	62 92 45 40 7f f0    	vpermt2ps zmm6,zmm23,zmm24
  a21a70:	62 91 7c 48 28 ce    	vmovaps zmm1,zmm30
  a21a76:	62 f2 6d 48 7f ce    	vpermt2ps zmm1,zmm2,zmm6
  a21a7c:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a21a82:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm1
  a21a89:	11 
  a21a8a:	62 12 45 40 7f d0    	vpermt2ps zmm10,zmm23,zmm24
  a21a90:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  a21a96:	62 f2 6d 48 7f cd    	vpermt2ps zmm1,zmm2,zmm5
  a21a9c:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  a21aa2:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm1
  a21aa9:	10 
  a21aaa:	62 d1 fd 48 15 c9    	vunpckhpd zmm1,zmm0,zmm9
  a21ab0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm1
  a21ab7:	1b 
  a21ab8:	62 51 a5 48 15 cc    	vunpckhpd zmm9,zmm11,zmm12
  a21abe:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm9
  a21ac5:	06 
  a21ac6:	62 61 7c 48 28 1d 30 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff6a5330]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a21acd:	53 6a ff 
  a21ad0:	62 d2 25 40 7f c9    	vpermt2ps zmm1,zmm27,zmm9
  a21ad6:	62 f1 dd 40 15 db    	vunpckhpd zmm3,zmm20,zmm3
  a21adc:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm3
  a21ae3:	1a 
  a21ae4:	62 71 dd 48 15 df    	vunpckhpd zmm11,zmm4,zmm7
  a21aea:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm11
  a21af1:	19 
  a21af2:	62 d2 25 40 7f db    	vpermt2ps zmm3,zmm27,zmm11
  a21af8:	62 f1 7c 48 10 61 0d 	vmovups zmm4,ZMMWORD PTR [rcx+0x340]
  a21aff:	62 f1 7c 48 10 79 0c 	vmovups zmm7,ZMMWORD PTR [rcx+0x300]
  a21b06:	62 f1 64 48 59 c7    	vmulps zmm0,zmm3,zmm7
  a21b0c:	62 f2 75 48 b8 c4    	vfmadd231ps zmm0,zmm1,zmm4
  a21b12:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a21b19:	09 
  a21b1a:	62 f1 74 48 59 c7    	vmulps zmm0,zmm1,zmm7
  a21b20:	62 f2 5d 48 bc c3    	vfnmadd231ps zmm0,zmm4,zmm3
  a21b26:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm0
  a21b2d:	1c 
  a21b2e:	62 f1 7c 48 28 05 88 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6a5488]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a21b35:	54 6a ff 
  a21b38:	62 12 7d 48 7f c0    	vpermt2ps zmm8,zmm0,zmm24
  a21b3e:	62 12 7d 48 7f f8    	vpermt2ps zmm15,zmm0,zmm24
  a21b44:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm15
  a21b4b:	0d 
  a21b4c:	62 02 7d 48 7f d0    	vpermt2ps zmm26,zmm0,zmm24
  a21b52:	62 82 7d 48 7f e8    	vpermt2ps zmm21,zmm0,zmm24
  a21b58:	62 31 7c 48 28 e3    	vmovaps zmm12,zmm19
  a21b5e:	62 12 7d 48 7f e0    	vpermt2ps zmm12,zmm0,zmm24
  a21b64:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm12
  a21b6b:	0b 
  a21b6c:	62 82 7d 48 7f d0    	vpermt2ps zmm18,zmm0,zmm24
  a21b72:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a21b79:	ff 
  a21b7a:	62 92 7d 48 7f c8    	vpermt2ps zmm1,zmm0,zmm24
  a21b80:	62 f1 7c 48 10 1c 24 	vmovups zmm3,ZMMWORD PTR [rsp]
  a21b87:	62 92 7d 48 7f d8    	vpermt2ps zmm3,zmm0,zmm24
  a21b8d:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a21b94:	62 82 7d 48 7f c8    	vpermt2ps zmm17,zmm0,zmm24
  a21b9a:	62 02 7d 48 7f f8    	vpermt2ps zmm31,zmm0,zmm24
  a21ba0:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x80]
  a21ba7:	fe 
  a21ba8:	62 92 7d 48 7f e0    	vpermt2ps zmm4,zmm0,zmm24
  a21bae:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm4
  a21bb5:	fe 
  a21bb6:	62 82 7d 48 7f f0    	vpermt2ps zmm22,zmm0,zmm24
  a21bbc:	62 e1 7c 48 28 d9    	vmovaps zmm19,zmm1
  a21bc2:	62 f2 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm3
  a21bc8:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a21bce:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a21bd5:	ff 
  a21bd6:	62 a1 7c 48 28 f9    	vmovaps zmm23,zmm17
  a21bdc:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x740]
  a21be3:	1d 
  a21be4:	62 e2 6d 48 7f cb    	vpermt2ps zmm17,zmm2,zmm3
  a21bea:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm17
  a21bf1:	0a 
  a21bf2:	62 01 7c 48 28 c7    	vmovaps zmm24,zmm31
  a21bf8:	62 62 6d 48 7f fc    	vpermt2ps zmm31,zmm2,zmm4
  a21bfe:	62 21 7c 48 28 ce    	vmovaps zmm25,zmm22
  a21c04:	62 e2 6d 48 7f f3    	vpermt2ps zmm22,zmm2,zmm3
  a21c0a:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a21c10:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a21c16:	62 d2 6d 48 7f c7    	vpermt2ps zmm0,zmm2,zmm15
  a21c1c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a21c23:	0c 
  a21c24:	62 91 7c 48 28 e2    	vmovaps zmm4,zmm26
  a21c2a:	62 62 6d 48 7f d3    	vpermt2ps zmm26,zmm2,zmm3
  a21c30:	62 a1 7c 48 28 c5    	vmovaps zmm16,zmm21
  a21c36:	62 c2 6d 48 7f ec    	vpermt2ps zmm21,zmm2,zmm12
  a21c3c:	62 31 7c 48 28 c2    	vmovaps zmm8,zmm18
  a21c42:	62 e2 6d 48 7f d3    	vpermt2ps zmm18,zmm2,zmm3
  a21c48:	62 91 fd 48 15 ca    	vunpckhpd zmm1,zmm0,zmm26
  a21c4e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm1
  a21c55:	16 
  a21c56:	62 b1 d5 40 15 c2    	vunpckhpd zmm0,zmm21,zmm18
  a21c5c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm0
  a21c63:	15 
  a21c64:	62 f2 25 40 7f c8    	vpermt2ps zmm1,zmm27,zmm0
  a21c6a:	62 a1 b5 48 15 e1    	vunpckhpd zmm20,zmm9,zmm17
  a21c70:	62 b1 85 40 15 c6    	vunpckhpd zmm0,zmm31,zmm22
  a21c76:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm0
  a21c7d:	14 
  a21c7e:	62 31 7c 48 28 e4    	vmovaps zmm12,zmm20
  a21c84:	62 72 25 40 7f e0    	vpermt2ps zmm12,zmm27,zmm0
  a21c8a:	62 f1 7c 48 10 51 1d 	vmovups zmm2,ZMMWORD PTR [rcx+0x740]
  a21c91:	62 f1 7c 48 10 41 1c 	vmovups zmm0,ZMMWORD PTR [rcx+0x700]
  a21c98:	62 71 1c 48 59 c8    	vmulps zmm9,zmm12,zmm0
  a21c9e:	62 72 75 48 b8 ca    	vfmadd231ps zmm9,zmm1,zmm2
  a21ca4:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm9
  a21cab:	08 
  a21cac:	62 f1 74 48 59 c0    	vmulps zmm0,zmm1,zmm0
  a21cb2:	62 d2 6d 48 bc c4    	vfnmadd231ps zmm0,zmm2,zmm12
  a21cb8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm0
  a21cbf:	18 
  a21cc0:	62 71 7c 48 28 25 36 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6a5236]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a21cc7:	52 6a ff 
  a21cca:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x140]
  a21cd1:	05 
  a21cd2:	62 72 1d 48 7f 5c 24 	vpermt2ps zmm11,zmm12,ZMMWORD PTR [rsp+0xc0]
  a21cd9:	03 
  a21cda:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x100]
  a21ce1:	04 
  a21ce2:	62 d2 1d 48 7f d6    	vpermt2ps zmm2,zmm12,zmm14
  a21ce8:	62 42 1d 48 7f e5    	vpermt2ps zmm28,zmm12,zmm13
  a21cee:	62 62 1d 48 7f f6    	vpermt2ps zmm30,zmm12,zmm6
  a21cf4:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x80]
  a21cfb:	02 
  a21cfc:	62 72 1d 48 7f fd    	vpermt2ps zmm15,zmm12,zmm5
  a21d02:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x5c0]
  a21d09:	17 
  a21d0a:	62 e2 1d 48 7f cd    	vpermt2ps zmm17,zmm12,zmm5
  a21d10:	62 51 a5 48 15 cf    	vunpckhpd zmm9,zmm11,zmm15
  a21d16:	62 b1 ed 48 15 c9    	vunpckhpd zmm1,zmm2,zmm17
  a21d1c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm1
  a21d23:	21 
  a21d24:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a21d2a:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a21d30:	62 f2 25 40 7f c1    	vpermt2ps zmm0,zmm27,zmm1
  a21d36:	62 62 1d 48 7f ed    	vpermt2ps zmm29,zmm12,zmm5
  a21d3c:	62 72 1d 48 7f d5    	vpermt2ps zmm10,zmm12,zmm5
  a21d42:	62 91 9d 40 15 cd    	vunpckhpd zmm1,zmm28,zmm29
  a21d48:	62 d1 8d 40 15 ea    	vunpckhpd zmm5,zmm30,zmm10
  a21d4e:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm5
  a21d55:	1f 
  a21d56:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a21d5c:	62 f2 25 40 7f d5    	vpermt2ps zmm2,zmm27,zmm5
  a21d62:	62 f1 7c 48 10 69 04 	vmovups zmm5,ZMMWORD PTR [rcx+0x100]
  a21d69:	62 f1 7c 48 10 71 05 	vmovups zmm6,ZMMWORD PTR [rcx+0x140]
  a21d70:	62 71 6c 48 59 ed    	vmulps zmm13,zmm2,zmm5
  a21d76:	62 72 7d 48 bc ee    	vfnmadd231ps zmm13,zmm0,zmm6
  a21d7c:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm13
  a21d83:	05 
  a21d84:	62 f1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm5
  a21d8a:	62 f2 4d 48 b8 c2    	vfmadd231ps zmm0,zmm6,zmm2
  a21d90:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a21d97:	02 
  a21d98:	62 f2 1d 48 7f 7c 24 	vpermt2ps zmm7,zmm12,ZMMWORD PTR [rsp+0x340]
  a21d9f:	0d 
  a21da0:	62 e2 1d 48 7f 44 24 	vpermt2ps zmm16,zmm12,ZMMWORD PTR [rsp+0x2c0]
  a21da7:	0b 
  a21da8:	62 e2 1d 48 7f 1c 24 	vpermt2ps zmm19,zmm12,ZMMWORD PTR [rsp]
  a21daf:	62 62 1d 48 7f 44 24 	vpermt2ps zmm24,zmm12,ZMMWORD PTR [rsp-0x80]
  a21db6:	fe 
  a21db7:	62 f2 1d 48 7f e3    	vpermt2ps zmm4,zmm12,zmm3
  a21dbd:	62 72 1d 48 7f c3    	vpermt2ps zmm8,zmm12,zmm3
  a21dc3:	62 e2 1d 48 7f fb    	vpermt2ps zmm23,zmm12,zmm3
  a21dc9:	62 62 1d 48 7f cb    	vpermt2ps zmm25,zmm12,zmm3
  a21dcf:	62 b1 e5 40 15 ef    	vunpckhpd zmm5,zmm19,zmm23
  a21dd5:	62 91 bd 40 15 c1    	vunpckhpd zmm0,zmm24,zmm25
  a21ddb:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm0
  a21de2:	22 
  a21de3:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a21de9:	62 f2 25 40 7f d0    	vpermt2ps zmm2,zmm27,zmm0
  a21def:	62 f1 c5 48 15 c4    	vunpckhpd zmm0,zmm7,zmm4
  a21df5:	62 d1 fd 40 15 f0    	vunpckhpd zmm6,zmm16,zmm8
  a21dfb:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm6
  a21e02:	20 
  a21e03:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a21e09:	62 72 25 40 7f e6    	vpermt2ps zmm12,zmm27,zmm6
  a21e0f:	62 71 7c 48 10 69 15 	vmovups zmm13,ZMMWORD PTR [rcx+0x540]
  a21e16:	62 61 7c 48 10 59 14 	vmovups zmm27,ZMMWORD PTR [rcx+0x500]
  a21e1d:	62 91 1c 48 59 db    	vmulps zmm3,zmm12,zmm27
  a21e23:	62 d2 6d 48 bc dd    	vfnmadd231ps zmm3,zmm2,zmm13
  a21e29:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a21e30:	fe 
  a21e31:	62 91 6c 48 59 d3    	vmulps zmm2,zmm2,zmm27
  a21e37:	62 d2 15 48 b8 d4    	vfmadd231ps zmm2,zmm13,zmm12
  a21e3d:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a21e44:	62 d1 a5 48 14 d7    	vunpcklpd zmm2,zmm11,zmm15
  a21e4a:	62 b1 8d 48 14 f1    	vunpcklpd zmm6,zmm14,zmm17
  a21e50:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm6
  a21e57:	04 
  a21e58:	62 11 9d 40 14 f5    	vunpcklpd zmm14,zmm28,zmm29
  a21e5e:	62 51 8d 40 14 da    	vunpcklpd zmm11,zmm30,zmm10
  a21e64:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm11
  a21e6b:	03 
  a21e6c:	62 61 7c 48 28 ea    	vmovaps zmm29,zmm2
  a21e72:	62 61 7c 48 28 35 c4 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff6a4fc4]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a21e79:	4f 6a ff 
  a21e7c:	62 f2 0d 40 7f d6    	vpermt2ps zmm2,zmm30,zmm6
  a21e82:	62 51 7c 48 28 d6    	vmovaps zmm10,zmm14
  a21e88:	62 52 0d 40 7f d3    	vpermt2ps zmm10,zmm30,zmm11
  a21e8e:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a21e95:	62 71 7c 48 10 69 03 	vmovups zmm13,ZMMWORD PTR [rcx+0xc0]
  a21e9c:	62 d1 2c 48 59 dc    	vmulps zmm3,zmm10,zmm12
  a21ea2:	62 d2 6d 48 bc dd    	vfnmadd231ps zmm3,zmm2,zmm13
  a21ea8:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm3
  a21eaf:	17 
  a21eb0:	62 d1 6c 48 59 d4    	vmulps zmm2,zmm2,zmm12
  a21eb6:	62 d2 15 48 b8 d2    	vfmadd231ps zmm2,zmm13,zmm10
  a21ebc:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm2
  a21ec3:	0d 
  a21ec4:	62 f1 c5 48 14 d4    	vunpcklpd zmm2,zmm7,zmm4
  a21eca:	62 51 fd 40 14 d0    	vunpcklpd zmm10,zmm16,zmm8
  a21ed0:	62 b1 e5 40 14 df    	vunpcklpd zmm3,zmm19,zmm23
  a21ed6:	62 01 bd 40 14 c1    	vunpcklpd zmm24,zmm24,zmm25
  a21edc:	62 e1 7c 48 28 c3    	vmovaps zmm16,zmm3
  a21ee2:	62 92 0d 40 7f d8    	vpermt2ps zmm3,zmm30,zmm24
  a21ee8:	62 e1 7c 48 28 fa    	vmovaps zmm23,zmm2
  a21eee:	62 d2 0d 40 7f d2    	vpermt2ps zmm2,zmm30,zmm10
  a21ef4:	62 f1 7c 48 10 61 13 	vmovups zmm4,ZMMWORD PTR [rcx+0x4c0]
  a21efb:	62 f1 7c 48 10 79 12 	vmovups zmm7,ZMMWORD PTR [rcx+0x480]
  a21f02:	62 f1 6c 48 59 f7    	vmulps zmm6,zmm2,zmm7
  a21f08:	62 f2 65 48 bc f4    	vfnmadd231ps zmm6,zmm3,zmm4
  a21f0e:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm6
  a21f15:	23 
  a21f16:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a21f1c:	62 f2 5d 48 b8 da    	vfmadd231ps zmm3,zmm4,zmm2
  a21f22:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm3
  a21f29:	0b 
  a21f2a:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a21f31:	ff 
  a21f32:	62 f1 ed 48 14 54 24 	vunpcklpd zmm2,zmm2,ZMMWORD PTR [rsp+0x280]
  a21f39:	0a 
  a21f3a:	62 31 85 40 14 e6    	vunpcklpd zmm12,zmm31,zmm22
  a21f40:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x300]
  a21f47:	0c 
  a21f48:	62 91 e5 48 14 da    	vunpcklpd zmm3,zmm3,zmm26
  a21f4e:	62 31 d5 40 14 ea    	vunpcklpd zmm13,zmm21,zmm18
  a21f54:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a21f5a:	62 d2 0d 40 7f dd    	vpermt2ps zmm3,zmm30,zmm13
  a21f60:	62 71 7c 48 28 da    	vmovaps zmm11,zmm2
  a21f66:	62 d2 0d 40 7f d4    	vpermt2ps zmm2,zmm30,zmm12
  a21f6c:	62 f1 7c 48 10 61 1b 	vmovups zmm4,ZMMWORD PTR [rcx+0x6c0]
  a21f73:	62 f1 7c 48 10 79 1a 	vmovups zmm7,ZMMWORD PTR [rcx+0x680]
  a21f7a:	62 e1 6c 48 59 ef    	vmulps zmm21,zmm2,zmm7
  a21f80:	62 e2 65 48 b8 ec    	vfmadd231ps zmm21,zmm3,zmm4
  a21f86:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a21f8c:	62 f2 5d 48 bc da    	vfnmadd231ps zmm3,zmm4,zmm2
  a21f92:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a21f99:	ff 
  a21f9a:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x3c0]
  a21fa1:	0f 
  a21fa2:	62 f1 ed 48 14 54 24 	vunpcklpd zmm2,zmm2,ZMMWORD PTR [rsp+0x40]
  a21fa9:	01 
  a21faa:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x380]
  a21fb1:	0e 
  a21fb2:	62 61 e5 48 14 4c 24 	vunpcklpd zmm25,zmm3,ZMMWORD PTR [rsp+0x1c0]
  a21fb9:	07 
  a21fba:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x4c0]
  a21fc1:	13 
  a21fc2:	62 f1 e5 48 14 64 24 	vunpcklpd zmm4,zmm3,ZMMWORD PTR [rsp+0x480]
  a21fc9:	12 
  a21fca:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x440]
  a21fd1:	11 
  a21fd2:	62 f1 e5 48 14 5c 24 	vunpcklpd zmm3,zmm3,ZMMWORD PTR [rsp+0x400]
  a21fd9:	10 
  a21fda:	62 e1 7c 48 28 cc    	vmovaps zmm17,zmm4
  a21fe0:	62 f2 0d 40 7f e3    	vpermt2ps zmm4,zmm30,zmm3
  a21fe6:	62 e1 7c 48 28 da    	vmovaps zmm19,zmm2
  a21fec:	62 92 0d 40 7f d1    	vpermt2ps zmm2,zmm30,zmm25
  a21ff2:	62 f1 7c 48 10 79 0b 	vmovups zmm7,ZMMWORD PTR [rcx+0x2c0]
  a21ff9:	62 71 7c 48 10 41 0a 	vmovups zmm8,ZMMWORD PTR [rcx+0x280]
  a22000:	62 51 6c 48 59 f8    	vmulps zmm15,zmm2,zmm8
  a22006:	62 72 5d 48 b8 ff    	vfmadd231ps zmm15,zmm4,zmm7
  a2200c:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm15
  a22013:	01 
  a22014:	62 d1 5c 48 59 e0    	vmulps zmm4,zmm4,zmm8
  a2201a:	62 f2 45 48 bc e2    	vfnmadd231ps zmm4,zmm7,zmm2
  a22020:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a22026:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm4
  a2202d:	0a 
  a2202e:	62 72 0d 40 7f 4c 24 	vpermt2ps zmm9,zmm30,ZMMWORD PTR [rsp+0x840]
  a22035:	21 
  a22036:	62 f2 0d 40 7f 4c 24 	vpermt2ps zmm1,zmm30,ZMMWORD PTR [rsp+0x7c0]
  a2203d:	1f 
  a2203e:	62 f1 7c 48 10 51 07 	vmovups zmm2,ZMMWORD PTR [rcx+0x1c0]
  a22045:	62 f1 7c 48 10 61 06 	vmovups zmm4,ZMMWORD PTR [rcx+0x180]
  a2204c:	62 f1 74 48 59 fc    	vmulps zmm7,zmm1,zmm4
  a22052:	62 f2 35 48 bc fa    	vfnmadd231ps zmm7,zmm9,zmm2
  a22058:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm7
  a2205f:	13 
  a22060:	62 61 34 48 59 e4    	vmulps zmm28,zmm9,zmm4
  a22066:	62 62 6d 48 b8 e1    	vfmadd231ps zmm28,zmm2,zmm1
  a2206c:	62 f2 0d 40 7f 6c 24 	vpermt2ps zmm5,zmm30,ZMMWORD PTR [rsp+0x880]
  a22073:	22 
  a22074:	62 f2 0d 40 7f 44 24 	vpermt2ps zmm0,zmm30,ZMMWORD PTR [rsp+0x800]
  a2207b:	20 
  a2207c:	62 f1 7c 48 10 49 17 	vmovups zmm1,ZMMWORD PTR [rcx+0x5c0]
  a22083:	62 f1 7c 48 10 51 16 	vmovups zmm2,ZMMWORD PTR [rcx+0x580]
  a2208a:	62 61 7c 48 59 da    	vmulps zmm27,zmm0,zmm2
  a22090:	62 62 55 48 bc d9    	vfnmadd231ps zmm27,zmm5,zmm1
  a22096:	62 61 54 48 59 fa    	vmulps zmm31,zmm5,zmm2
  a2209c:	62 62 75 48 b8 f8    	vfmadd231ps zmm31,zmm1,zmm0
  a220a2:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x580]
  a220a9:	16 
  a220aa:	62 f2 0d 40 7f 54 24 	vpermt2ps zmm2,zmm30,ZMMWORD PTR [rsp+0x540]
  a220b1:	15 
  a220b2:	62 e2 0d 40 7f 64 24 	vpermt2ps zmm20,zmm30,ZMMWORD PTR [rsp+0x500]
  a220b9:	14 
  a220ba:	62 f1 7c 48 10 41 1f 	vmovups zmm0,ZMMWORD PTR [rcx+0x7c0]
  a220c1:	62 f1 7c 48 10 49 1e 	vmovups zmm1,ZMMWORD PTR [rcx+0x780]
  a220c8:	62 e1 5c 40 59 f1    	vmulps zmm22,zmm20,zmm1
  a220ce:	62 e2 6d 48 b8 f0    	vfmadd231ps zmm22,zmm2,zmm0
  a220d4:	62 61 6c 48 59 d1    	vmulps zmm26,zmm2,zmm1
  a220da:	62 22 7d 48 bc d4    	vfnmadd231ps zmm26,zmm0,zmm20
  a220e0:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x6c0]
  a220e7:	1b 
  a220e8:	62 f2 0d 40 7f 4c 24 	vpermt2ps zmm1,zmm30,ZMMWORD PTR [rsp+0x180]
  a220ef:	06 
  a220f0:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x680]
  a220f7:	1a 
  a220f8:	62 f2 0d 40 7f 54 24 	vpermt2ps zmm2,zmm30,ZMMWORD PTR [rsp+0x640]
  a220ff:	19 
  a22100:	62 f1 7c 48 10 41 0f 	vmovups zmm0,ZMMWORD PTR [rcx+0x3c0]
  a22107:	62 f1 7c 48 10 61 0e 	vmovups zmm4,ZMMWORD PTR [rcx+0x380]
  a2210e:	62 71 6c 48 59 fc    	vmulps zmm15,zmm2,zmm4
  a22114:	62 72 75 48 b8 f8    	vfmadd231ps zmm15,zmm1,zmm0
  a2211a:	62 e1 74 48 59 d4    	vmulps zmm18,zmm1,zmm4
  a22120:	62 e2 7d 48 bc d2    	vfnmadd231ps zmm18,zmm0,zmm2
  a22126:	62 f1 7c 48 28 2d d0 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6a4cd0]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2212d:	4c 6a ff 
  a22130:	62 c2 55 48 7f fa    	vpermt2ps zmm23,zmm5,zmm10
  a22136:	62 82 55 48 7f c0    	vpermt2ps zmm16,zmm5,zmm24
  a2213c:	62 f1 7c 48 10 41 11 	vmovups zmm0,ZMMWORD PTR [rcx+0x440]
  a22143:	62 f1 7c 48 10 61 10 	vmovups zmm4,ZMMWORD PTR [rcx+0x400]
  a2214a:	62 61 7c 40 59 c4    	vmulps zmm24,zmm16,zmm4
  a22150:	62 62 45 40 b8 c0    	vfmadd231ps zmm24,zmm23,zmm0
  a22156:	62 e1 44 40 59 fc    	vmulps zmm23,zmm23,zmm4
  a2215c:	62 a2 7d 48 bc f8    	vfnmadd231ps zmm23,zmm0,zmm16
  a22162:	62 82 55 48 7f d9    	vpermt2ps zmm19,zmm5,zmm25
  a22168:	62 e2 55 48 7f cb    	vpermt2ps zmm17,zmm5,zmm3
  a2216e:	62 f1 7c 48 10 41 09 	vmovups zmm0,ZMMWORD PTR [rcx+0x240]
  a22175:	62 f1 7c 48 10 59 08 	vmovups zmm3,ZMMWORD PTR [rcx+0x200]
  a2217c:	62 61 74 40 59 cb    	vmulps zmm25,zmm17,zmm3
  a22182:	62 62 65 40 bc c8    	vfnmadd231ps zmm25,zmm19,zmm0
  a22188:	62 e1 64 40 59 c3    	vmulps zmm16,zmm19,zmm3
  a2218e:	62 a2 7d 48 b8 c1    	vfmadd231ps zmm16,zmm0,zmm17
  a22194:	62 52 55 48 7f dc    	vpermt2ps zmm11,zmm5,zmm12
  a2219a:	62 d2 55 48 7f f5    	vpermt2ps zmm6,zmm5,zmm13
  a221a0:	62 f1 7c 48 10 59 19 	vmovups zmm3,ZMMWORD PTR [rcx+0x640]
  a221a7:	62 f1 7c 48 10 61 18 	vmovups zmm4,ZMMWORD PTR [rcx+0x600]
  a221ae:	62 f1 4c 48 59 cc    	vmulps zmm1,zmm6,zmm4
  a221b4:	62 f2 25 48 bc cb    	vfnmadd231ps zmm1,zmm11,zmm3
  a221ba:	62 e1 24 48 59 e4    	vmulps zmm20,zmm11,zmm4
  a221c0:	62 e2 65 48 b8 e6    	vfmadd231ps zmm20,zmm3,zmm6
  a221c6:	62 62 55 48 7f 6c 24 	vpermt2ps zmm29,zmm5,ZMMWORD PTR [rsp+0x100]
  a221cd:	04 
  a221ce:	62 72 55 48 7f 74 24 	vpermt2ps zmm14,zmm5,ZMMWORD PTR [rsp+0xc0]
  a221d5:	03 
  a221d6:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm14
  a221dd:	0c 
  a221de:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x140]
  a221e5:	05 
  a221e6:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp-0x80]
  a221ed:	fe 
  a221ee:	62 d1 1c 48 5c db    	vsubps zmm3,zmm12,zmm11
  a221f4:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a221fb:	02 
  a221fc:	62 f1 7c 48 5c 24 24 	vsubps zmm4,zmm0,ZMMWORD PTR [rsp]
  a22203:	62 f1 64 48 58 c4    	vaddps zmm0,zmm3,zmm4
  a22209:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a22210:	06 
  a22211:	62 f1 5c 48 5c c3    	vsubps zmm0,zmm4,zmm3
  a22217:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm0
  a2221e:	15 
  a2221f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x240]
  a22226:	09 
  a22227:	62 f1 7c 48 5c 5c 24 	vsubps zmm3,zmm0,ZMMWORD PTR [rsp+0x200]
  a2222e:	08 
  a2222f:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x700]
  a22236:	1c 
  a22237:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x600]
  a2223e:	18 
  a2223f:	62 f1 6c 48 5c e0    	vsubps zmm4,zmm2,zmm0
  a22245:	62 f1 64 48 5c ec    	vsubps zmm5,zmm3,zmm4
  a2224b:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm5
  a22252:	1a 
  a22253:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a22259:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm3
  a22260:	11 
  a22261:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x5c0]
  a22268:	17 
  a22269:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x8c0]
  a22270:	23 
  a22271:	62 d1 14 48 5c da    	vsubps zmm3,zmm13,zmm10
  a22277:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm3
  a2227e:	19 
  a2227f:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x40]
  a22286:	01 
  a22287:	62 b1 64 40 5c e5    	vsubps zmm4,zmm19,zmm21
  a2228d:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm4
  a22294:	16 
  a22295:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a2229b:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x340]
  a222a2:	0d 
  a222a3:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x2c0]
  a222aa:	0b 
  a222ab:	62 d1 0c 48 5c e1    	vsubps zmm4,zmm14,zmm9
  a222b1:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm4
  a222b8:	12 
  a222b9:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp-0x40]
  a222c0:	ff 
  a222c1:	62 d1 44 48 5c e8    	vsubps zmm5,zmm7,zmm8
  a222c7:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm5
  a222ce:	04 
  a222cf:	62 f1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm5
  a222d5:	62 e2 7d 48 18 0d 21 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff653421]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a222dc:	34 65 ff 
  a222df:	62 b1 5c 48 59 e9    	vmulps zmm5,zmm4,zmm17
  a222e5:	62 72 7d 48 18 05 75 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff653375]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a222ec:	33 65 ff 
  a222ef:	62 d2 65 48 b8 e8    	vfmadd231ps zmm5,zmm3,zmm8
  a222f5:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm5
  a222fc:	07 
  a222fd:	62 d1 5c 48 59 e0    	vmulps zmm4,zmm4,zmm8
  a22303:	62 f2 75 40 bc e3    	vfnmadd231ps zmm4,zmm17,zmm3
  a22309:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm4
  a22310:	1b 
  a22311:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x4c0]
  a22318:	13 
  a22319:	62 91 64 48 5c e3    	vsubps zmm4,zmm3,zmm27
  a2231f:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm4
  a22326:	10 
  a22327:	62 b1 04 48 5c ee    	vsubps zmm5,zmm15,zmm22
  a2232d:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm5
  a22334:	0f 
  a22335:	62 f1 5c 48 5c ed    	vsubps zmm5,zmm4,zmm5
  a2233b:	62 91 1c 40 5c e7    	vsubps zmm4,zmm28,zmm31
  a22341:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm4
  a22348:	0e 
  a22349:	62 b1 2c 40 5c f2    	vsubps zmm6,zmm26,zmm18
  a2234f:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm6
  a22356:	03 
  a22357:	62 f1 5c 48 5c f6    	vsubps zmm6,zmm4,zmm6
  a2235d:	62 41 4c 48 59 f0    	vmulps zmm30,zmm6,zmm8
  a22363:	62 22 55 48 b8 f1    	vfmadd231ps zmm30,zmm5,zmm17
  a22369:	62 d1 54 48 59 e0    	vmulps zmm4,zmm5,zmm8
  a2236f:	62 f2 75 40 bc e6    	vfnmadd231ps zmm4,zmm17,zmm6
  a22375:	62 91 7c 48 28 ed    	vmovaps zmm5,zmm29
  a2237b:	62 01 14 40 5c e8    	vsubps zmm29,zmm29,zmm24
  a22381:	62 f1 3c 40 58 ed    	vaddps zmm5,zmm24,zmm5
  a22387:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm5
  a2238e:	14 
  a2238f:	62 b1 7c 40 5c f4    	vsubps zmm6,zmm16,zmm20
  a22395:	62 21 7c 40 58 c4    	vaddps zmm24,zmm16,zmm20
  a2239b:	62 f1 6c 48 58 c0    	vaddps zmm0,zmm2,zmm0
  a223a1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm0
  a223a8:	1c 
  a223a9:	62 d1 1c 48 58 c3    	vaddps zmm0,zmm12,zmm11
  a223af:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a223b6:	fe 
  a223b7:	62 11 1c 40 58 df    	vaddps zmm11,zmm28,zmm31
  a223bd:	62 31 04 48 58 fe    	vaddps zmm15,zmm15,zmm22
  a223c3:	62 81 64 48 58 e3    	vaddps zmm20,zmm3,zmm27
  a223c9:	62 81 6c 40 58 d2    	vaddps zmm18,zmm18,zmm26
  a223cf:	62 c1 14 48 58 c2    	vaddps zmm16,zmm13,zmm10
  a223d5:	62 61 44 48 58 54 24 	vaddps zmm26,zmm7,ZMMWORD PTR [rsp+0x280]
  a223dc:	0a 
  a223dd:	62 d1 0c 48 58 d9    	vaddps zmm3,zmm14,zmm9
  a223e3:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm3
  a223ea:	05 
  a223eb:	62 b1 64 40 58 fd    	vaddps zmm7,zmm19,zmm21
  a223f1:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm7
  a223f8:	18 
  a223f9:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x300]
  a22400:	0c 
  a22401:	62 b1 7c 48 5c ef    	vsubps zmm5,zmm0,zmm23
  a22407:	62 31 7c 48 58 e7    	vaddps zmm12,zmm0,zmm23
  a2240d:	62 91 74 48 5c c1    	vsubps zmm0,zmm1,zmm25
  a22413:	62 61 34 40 58 f9    	vaddps zmm31,zmm25,zmm1
  a22419:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a22420:	02 
  a22421:	62 f1 74 48 58 0c 24 	vaddps zmm1,zmm1,ZMMWORD PTR [rsp]
  a22428:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x200]
  a2242f:	08 
  a22430:	62 61 6c 48 58 4c 24 	vaddps zmm25,zmm2,ZMMWORD PTR [rsp+0x240]
  a22437:	09 
  a22438:	62 91 7c 40 5c d2    	vsubps zmm2,zmm16,zmm26
  a2243e:	62 e1 64 48 5c ff    	vsubps zmm23,zmm3,zmm7
  a22444:	62 b1 6c 48 58 df    	vaddps zmm3,zmm2,zmm23
  a2244a:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a22451:	ff 
  a22452:	62 f1 44 40 5c d2    	vsubps zmm2,zmm23,zmm2
  a22458:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm2
  a2245f:	09 
  a22460:	62 d1 24 48 5c d7    	vsubps zmm2,zmm11,zmm15
  a22466:	62 41 7c 48 28 df    	vmovaps zmm27,zmm15
  a2246c:	62 c1 7c 48 28 db    	vmovaps zmm19,zmm11
  a22472:	62 a1 5c 40 5c fa    	vsubps zmm23,zmm20,zmm18
  a22478:	62 b1 6c 48 5c df    	vsubps zmm3,zmm2,zmm23
  a2247e:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a22485:	01 
  a22486:	62 e1 44 40 58 fa    	vaddps zmm23,zmm23,zmm2
  a2248c:	62 71 14 40 5c c8    	vsubps zmm9,zmm29,zmm0
  a22492:	62 91 7c 48 58 c5    	vaddps zmm0,zmm0,zmm29
  a22498:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a2249f:	62 f2 7d 48 18 3d f3 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff652ef3]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a224a6:	2e 65 ff 
  a224a9:	62 f1 44 48 59 44 24 	vmulps zmm0,zmm7,ZMMWORD PTR [rsp+0x540]
  a224b0:	15 
  a224b1:	62 f1 44 48 59 5c 24 	vmulps zmm3,zmm7,ZMMWORD PTR [rsp+0x440]
  a224b8:	11 
  a224b9:	62 f1 7c 48 58 d3    	vaddps zmm2,zmm0,zmm3
  a224bf:	62 f1 7c 48 5c db    	vsubps zmm3,zmm0,zmm3
  a224c5:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x3c0]
  a224cc:	0f 
  a224cd:	62 71 7c 48 58 6c 24 	vaddps zmm13,zmm0,ZMMWORD PTR [rsp+0x400]
  a224d4:	10 
  a224d5:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a224dc:	03 
  a224dd:	62 71 7c 48 58 54 24 	vaddps zmm10,zmm0,ZMMWORD PTR [rsp+0x380]
  a224e4:	0e 
  a224e5:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x580]
  a224ec:	16 
  a224ed:	62 71 7c 48 58 5c 24 	vaddps zmm11,zmm0,ZMMWORD PTR [rsp+0x640]
  a224f4:	19 
  a224f5:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a224fc:	04 
  a224fd:	62 71 7c 48 58 74 24 	vaddps zmm14,zmm0,ZMMWORD PTR [rsp+0x480]
  a22504:	12 
  a22505:	62 e1 54 48 5c f6    	vsubps zmm22,zmm5,zmm6
  a2250b:	62 f1 54 48 58 c6    	vaddps zmm0,zmm5,zmm6
  a22511:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a22518:	08 
  a22519:	62 f1 44 48 59 6c 24 	vmulps zmm5,zmm7,ZMMWORD PTR [rsp+0x680]
  a22520:	1a 
  a22521:	62 f1 44 48 59 74 24 	vmulps zmm6,zmm7,ZMMWORD PTR [rsp+0x180]
  a22528:	06 
  a22529:	62 61 54 48 5c e6    	vsubps zmm28,zmm5,zmm6
  a2252f:	62 f1 4c 48 58 ed    	vaddps zmm5,zmm6,zmm5
  a22535:	62 d1 0c 48 59 f0    	vmulps zmm6,zmm14,zmm8
  a2253b:	62 b2 25 48 b8 f1    	vfmadd231ps zmm6,zmm11,zmm17
  a22541:	62 31 0c 48 59 f1    	vmulps zmm14,zmm14,zmm17
  a22547:	62 52 3d 48 bc f3    	vfnmadd231ps zmm14,zmm8,zmm11
  a2254d:	62 31 2c 48 59 d9    	vmulps zmm11,zmm10,zmm17
  a22553:	62 52 15 48 b8 d8    	vfmadd231ps zmm11,zmm13,zmm8
  a22559:	62 51 2c 48 59 d0    	vmulps zmm10,zmm10,zmm8
  a2255f:	62 52 75 40 bc d5    	vfnmadd231ps zmm10,zmm17,zmm13
  a22565:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x500]
  a2256c:	14 
  a2256d:	62 11 7c 48 5c e8    	vsubps zmm13,zmm0,zmm24
  a22573:	62 61 3c 40 58 c0    	vaddps zmm24,zmm24,zmm0
  a22579:	62 01 74 48 5c e9    	vsubps zmm29,zmm1,zmm25
  a2257f:	62 11 74 48 58 f9    	vaddps zmm15,zmm1,zmm25
  a22585:	62 b1 5c 40 58 c2    	vaddps zmm0,zmm20,zmm18
  a2258b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a22592:	06 
  a22593:	62 81 7c 40 58 d2    	vaddps zmm18,zmm16,zmm26
  a22599:	62 81 1c 48 5c ef    	vsubps zmm21,zmm12,zmm31
  a2259f:	62 91 1c 48 58 c7    	vaddps zmm0,zmm12,zmm31
  a225a5:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x700]
  a225ac:	1c 
  a225ad:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp-0x80]
  a225b4:	fe 
  a225b5:	62 41 74 48 5c d0    	vsubps zmm26,zmm1,zmm8
  a225bb:	62 e1 3c 48 58 e1    	vaddps zmm20,zmm8,zmm1
  a225c1:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a225c8:	05 
  a225c9:	62 71 74 48 58 64 24 	vaddps zmm12,zmm1,ZMMWORD PTR [rsp+0x600]
  a225d0:	18 
  a225d1:	62 81 64 40 58 c3    	vaddps zmm16,zmm19,zmm27
  a225d7:	62 01 34 48 5c dc    	vsubps zmm27,zmm9,zmm28
  a225dd:	62 d1 1c 40 58 c9    	vaddps zmm1,zmm28,zmm9
  a225e3:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a225ea:	fe 
  a225eb:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x6c0]
  a225f2:	1b 
  a225f3:	62 e1 74 48 5c cc    	vsubps zmm17,zmm1,zmm4
  a225f9:	62 f1 74 48 58 cc    	vaddps zmm1,zmm1,zmm4
  a225ff:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a22606:	02 
  a22607:	62 71 4c 40 5c ca    	vsubps zmm9,zmm22,zmm2
  a2260d:	62 61 4c 40 58 e2    	vaddps zmm28,zmm22,zmm2
  a22613:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x1c0]
  a2261a:	07 
  a2261b:	62 01 74 48 58 ce    	vaddps zmm25,zmm1,zmm30
  a22621:	62 81 74 48 5c f6    	vsubps zmm22,zmm1,zmm30
  a22627:	62 11 14 48 5c c2    	vsubps zmm8,zmm13,zmm26
  a2262d:	62 c1 2c 40 58 dd    	vaddps zmm19,zmm26,zmm13
  a22633:	62 61 44 48 59 54 24 	vmulps zmm26,zmm7,ZMMWORD PTR [rsp+0x240]
  a2263a:	09 
  a2263b:	62 e1 44 40 59 ff    	vmulps zmm23,zmm23,zmm7
  a22641:	62 21 2c 40 58 f7    	vaddps zmm30,zmm26,zmm23
  a22647:	62 a1 2c 40 5c ff    	vsubps zmm23,zmm26,zmm23
  a2264d:	62 01 54 40 5c d5    	vsubps zmm26,zmm21,zmm29
  a22653:	62 81 54 40 58 ed    	vaddps zmm21,zmm21,zmm29
  a22659:	62 61 44 48 59 6c 24 	vmulps zmm29,zmm7,ZMMWORD PTR [rsp+0x40]
  a22660:	01 
  a22661:	62 61 44 48 59 7c 24 	vmulps zmm31,zmm7,ZMMWORD PTR [rsp-0x40]
  a22668:	ff 
  a22669:	62 91 14 40 5c d7    	vsubps zmm2,zmm29,zmm31
  a2266f:	62 01 04 40 58 ed    	vaddps zmm29,zmm31,zmm29
  a22675:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a2267c:	62 61 74 48 5c fb    	vsubps zmm31,zmm1,zmm3
  a22682:	62 71 64 48 58 e9    	vaddps zmm13,zmm3,zmm1
  a22688:	62 d1 0c 48 5c da    	vsubps zmm3,zmm14,zmm10
  a2268e:	62 51 0c 48 58 f2    	vaddps zmm14,zmm14,zmm10
  a22694:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x200]
  a2269b:	08 
  a2269c:	62 71 74 48 5c d5    	vsubps zmm10,zmm1,zmm5
  a226a2:	62 f1 74 48 58 fd    	vaddps zmm7,zmm1,zmm5
  a226a8:	62 f1 24 48 5c ce    	vsubps zmm1,zmm11,zmm6
  a226ae:	62 51 4c 48 58 db    	vaddps zmm11,zmm6,zmm11
  a226b4:	62 d1 3c 40 5c f7    	vsubps zmm6,zmm24,zmm15
  a226ba:	62 01 04 48 58 c0    	vaddps zmm24,zmm15,zmm24
  a226c0:	62 31 1c 48 5c f8    	vsubps zmm15,zmm12,zmm16
  a226c6:	62 31 1c 48 58 e0    	vaddps zmm12,zmm12,zmm16
  a226cc:	62 a1 7c 48 5c c4    	vsubps zmm16,zmm0,zmm20
  a226d2:	62 b1 7c 48 58 ec    	vaddps zmm5,zmm0,zmm20
  a226d8:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x180]
  a226df:	06 
  a226e0:	62 b1 5c 48 5c c2    	vsubps zmm0,zmm4,zmm18
  a226e6:	62 f1 6c 40 58 e4    	vaddps zmm4,zmm18,zmm4
  a226ec:	62 81 24 40 58 d1    	vaddps zmm18,zmm27,zmm25
  a226f2:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm18
  a226f9:	ff 
  a226fa:	62 01 24 40 5c c9    	vsubps zmm25,zmm27,zmm25
  a22700:	62 a1 34 48 5c e1    	vsubps zmm20,zmm9,zmm17
  a22706:	62 21 34 48 58 d9    	vaddps zmm27,zmm9,zmm17
  a2270c:	62 e1 3c 48 5c ca    	vsubps zmm17,zmm8,zmm2
  a22712:	62 f1 3c 48 58 d2    	vaddps zmm2,zmm8,zmm2
  a22718:	62 81 2c 40 5c d6    	vsubps zmm18,zmm26,zmm30
  a2271e:	62 01 2c 40 58 f6    	vaddps zmm30,zmm26,zmm30
  a22724:	62 61 04 40 5c d1    	vsubps zmm26,zmm31,zmm1
  a2272a:	62 61 04 40 58 f9    	vaddps zmm31,zmm31,zmm1
  a22730:	62 f1 2c 48 5c cb    	vsubps zmm1,zmm10,zmm3
  a22736:	62 71 2c 48 58 d3    	vaddps zmm10,zmm10,zmm3
  a2273c:	62 f1 4c 48 5c d8    	vsubps zmm3,zmm6,zmm0
  a22742:	62 f1 4c 48 58 c0    	vaddps zmm0,zmm6,zmm0
  a22748:	62 d1 7c 40 5c f7    	vsubps zmm6,zmm16,zmm15
  a2274e:	62 51 7c 40 58 ff    	vaddps zmm15,zmm16,zmm15
  a22754:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp-0x80]
  a2275b:	fe 
  a2275c:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x80]
  a22763:	02 
  a22764:	62 31 3c 48 5c c8    	vsubps zmm9,zmm8,zmm16
  a2276a:	62 a1 3c 48 58 c0    	vaddps zmm16,zmm8,zmm16
  a22770:	62 31 1c 40 5c c6    	vsubps zmm8,zmm28,zmm22
  a22776:	62 a1 1c 40 58 f6    	vaddps zmm22,zmm28,zmm22
  a2277c:	62 21 64 40 5c e7    	vsubps zmm28,zmm19,zmm23
  a22782:	62 a1 64 40 58 df    	vaddps zmm19,zmm19,zmm23
  a22788:	62 81 54 40 5c fd    	vsubps zmm23,zmm21,zmm29
  a2278e:	62 81 54 40 58 ed    	vaddps zmm21,zmm21,zmm29
  a22794:	62 41 14 48 5c ee    	vsubps zmm29,zmm13,zmm14
  a2279a:	62 51 14 48 58 ee    	vaddps zmm13,zmm13,zmm14
  a227a0:	62 51 44 48 5c f3    	vsubps zmm14,zmm7,zmm11
  a227a6:	62 d1 44 48 58 fb    	vaddps zmm7,zmm7,zmm11
  a227ac:	62 51 3c 40 5c dc    	vsubps zmm11,zmm24,zmm12
  a227b2:	62 51 3c 40 58 e4    	vaddps zmm12,zmm24,zmm12
  a227b8:	62 61 54 48 5c c4    	vsubps zmm24,zmm5,zmm4
  a227be:	62 f1 54 48 58 e4    	vaddps zmm4,zmm5,zmm4
  a227c4:	62 f1 7c 48 28 2d f2 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff66d8f2]        # 900c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d570>
  a227cb:	d8 66 ff 
  a227ce:	62 d2 55 48 7f e4    	vpermt2ps zmm4,zmm5,zmm12
  a227d4:	62 f3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm4,0x2
  a227db:	02 02 
  a227dd:	c5 fc 11 24 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm4
  a227e2:	62 d2 55 48 7f fd    	vpermt2ps zmm7,zmm5,zmm13
  a227e8:	62 f3 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm7,0x2
  a227ef:	05 02 
  a227f1:	c5 fc 11 7c 16 30    	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm7
  a227f7:	62 a2 55 48 7f eb    	vpermt2ps zmm21,zmm5,zmm19
  a227fd:	62 e3 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm21,0x2
  a22804:	08 02 
  a22806:	62 e1 7c 28 11 6c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm21
  a2280d:	03 
  a2280e:	62 a2 55 48 7f f0    	vpermt2ps zmm22,zmm5,zmm16
  a22814:	62 e3 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm22,0x2
  a2281b:	0b 02 
  a2281d:	62 e1 7c 28 11 b4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm22
  a22824:	90 00 00 00 
  a22828:	62 72 55 48 7f f8    	vpermt2ps zmm15,zmm5,zmm0
  a2282e:	62 73 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm15,0x2
  a22835:	0e 02 
  a22837:	c5 7c 11 bc 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm15
  a2283e:	00 00 
  a22840:	62 12 55 48 7f d7    	vpermt2ps zmm10,zmm5,zmm31
  a22846:	62 73 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x110],zmm10,0x2
  a2284d:	11 02 
  a2284f:	c5 7c 11 94 16 f0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm10
  a22856:	00 00 
  a22858:	62 62 55 48 7f f2    	vpermt2ps zmm30,zmm5,zmm2
  a2285e:	62 63 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x140],zmm30,0x2
  a22865:	14 02 
  a22867:	62 61 7c 28 11 74 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm30
  a2286e:	09 
  a2286f:	62 02 55 48 7f d9    	vpermt2ps zmm27,zmm5,zmm25
  a22875:	62 63 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x170],zmm27,0x2
  a2287c:	17 02 
  a2287e:	62 61 7c 28 11 9c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x150],ymm27
  a22885:	50 01 00 00 
  a22889:	62 42 55 48 7f c3    	vpermt2ps zmm24,zmm5,zmm11
  a2288f:	62 63 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1a0],zmm24,0x2
  a22896:	1a 02 
  a22898:	62 61 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x180],ymm24
  a2289f:	0c 
  a228a0:	62 12 55 48 7f f5    	vpermt2ps zmm14,zmm5,zmm29
  a228a6:	62 73 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1d0],zmm14,0x2
  a228ad:	1d 02 
  a228af:	c5 7c 11 b4 16 b0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1b0],ymm14
  a228b6:	00 00 
  a228b8:	62 82 55 48 7f fc    	vpermt2ps zmm23,zmm5,zmm28
  a228be:	62 e3 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x200],zmm23,0x2
  a228c5:	20 02 
  a228c7:	62 e1 7c 28 11 7c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x1e0],ymm23
  a228ce:	0f 
  a228cf:	62 52 55 48 7f c1    	vpermt2ps zmm8,zmm5,zmm9
  a228d5:	62 73 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x230],zmm8,0x2
  a228dc:	23 02 
  a228de:	c5 7c 11 84 16 10 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x210],ymm8
  a228e5:	00 00 
  a228e7:	62 f2 55 48 7f f3    	vpermt2ps zmm6,zmm5,zmm3
  a228ed:	62 f3 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x260],zmm6,0x2
  a228f4:	26 02 
  a228f6:	c5 fc 11 b4 16 40 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x240],ymm6
  a228fd:	00 00 
  a228ff:	62 92 55 48 7f ca    	vpermt2ps zmm1,zmm5,zmm26
  a22905:	62 f3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x290],zmm1,0x2
  a2290c:	29 02 
  a2290e:	c5 fc 11 8c 16 70 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x270],ymm1
  a22915:	00 00 
  a22917:	62 a2 55 48 7f d1    	vpermt2ps zmm18,zmm5,zmm17
  a2291d:	62 e3 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x2c0],zmm18,0x2
  a22924:	2c 02 
  a22926:	62 e1 7c 28 11 54 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x2a0],ymm18
  a2292d:	15 
  a2292e:	62 e2 55 48 7f 64 24 	vpermt2ps zmm20,zmm5,ZMMWORD PTR [rsp-0x40]
  a22935:	ff 
  a22936:	62 e3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x2f0],zmm20,0x2
  a2293d:	2f 02 
  a2293f:	62 e1 7c 28 11 a4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x2d0],ymm20
  a22946:	d0 02 00 00 
  a2294a:	48 81 c2 00 03 00 00 	add    rdx,0x300
  a22951:	48 39 d0             	cmp    rax,rdx
  a22954:	0f 85 b6 ed ff ff    	jne    a21710 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x50>
  a2295a:	48 81 c4 08 09 00 00 	add    rsp,0x908
  a22961:	c5 f8 77             	vzeroupper
  a22964:	c3                   	ret
