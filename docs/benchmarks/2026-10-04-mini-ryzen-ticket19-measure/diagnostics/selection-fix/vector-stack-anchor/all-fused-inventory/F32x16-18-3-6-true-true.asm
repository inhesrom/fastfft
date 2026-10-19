
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a617c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a617c0:	62 61 7c 48 28 1d b6 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff6657b6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a617c7:	57 66 ff 
  a617ca:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a617ce:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a617d2:	62 f2 25 40 7f d2    	vpermt2ps zmm2,zmm27,zmm2
  a617d8:	62 f1 7c 48 28 1d 1e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff66571e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a617df:	57 66 ff 
  a617e2:	62 f1 7c 48 28 25 54 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff665754]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a617e9:	57 66 ff 
  a617ec:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a617f2:	62 f2 65 48 7f ea    	vpermt2ps zmm5,zmm3,zmm2
  a617f8:	62 61 7c 48 28 d2    	vmovaps zmm26,zmm2
  a617fe:	62 62 5d 48 7f d2    	vpermt2ps zmm26,zmm4,zmm2
  a61804:	62 f1 7c 48 28 3d f2 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6655f2]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a6180b:	55 66 ff 
  a6180e:	62 71 7c 48 28 05 28 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff665628]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a61815:	56 66 ff 
  a61818:	48 c1 e2 04          	shl    rdx,0x4
  a6181c:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a61820:	31 d2                	xor    edx,edx
  a61822:	62 61 7c 48 28 05 14 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff632614]        # 93e40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x212f0>
  a61829:	26 63 ff 
  a6182c:	62 72 7d 48 18 15 2a 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff613c2a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a61833:	3c 61 ff 
  a61836:	62 61 7c 48 28 0d 40 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff632640]        # 93e80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21330>
  a6183d:	26 63 ff 
  a61840:	62 72 7d 48 18 25 8a 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff613a8a]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a61847:	3a 61 ff 
  a6184a:	c5 7c 28 2d 6e 6a 61 	vmovaps ymm13,YMMWORD PTR [rip+0xffffffffff616a6e]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a61851:	ff 
  a61852:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a61859:	1f 84 00 00 00 00 00 
  a61860:	c5 78 10 74 17 20    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x20]
  a61866:	c4 63 09 21 74 17 24 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x24],0x10
  a6186d:	10 
  a6186e:	c5 7c 10 3c 17       	vmovups ymm15,YMMWORD PTR [rdi+rdx*1]
  a61873:	c4 62 79 18 4c 17 28 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0x28]
  a6187a:	c4 43 31 0c ce 03    	vblendps xmm9,xmm9,xmm14,0x3
  a61880:	c4 63 31 21 4c 17 2c 	vinsertps xmm9,xmm9,DWORD PTR [rdi+rdx*1+0x2c],0x30
  a61887:	30 
  a61888:	62 53 05 48 18 c9 02 	vinsertf32x4 zmm9,zmm15,xmm9,0x2
  a6188f:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  a61895:	62 72 3d 40 7f f1    	vpermt2ps zmm14,zmm24,zmm1
  a6189b:	62 72 35 40 7f c9    	vpermt2ps zmm9,zmm25,zmm1
  a618a1:	c5 7c 10 7c 17 30    	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0x30]
  a618a7:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0x50]
  a618ae:	05 
  a618af:	62 73 7d 00 21 5c 17 	vinsertps xmm11,xmm16,DWORD PTR [rdi+rdx*1+0x54],0x10
  a618b6:	15 10 
  a618b8:	c4 e2 79 18 74 17 58 	vbroadcastss xmm6,DWORD PTR [rdi+rdx*1+0x58]
  a618bf:	c4 c3 49 0c f3 03    	vblendps xmm6,xmm6,xmm11,0x3
  a618c5:	c4 e3 49 21 74 17 5c 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0x5c],0x30
  a618cc:	30 
  a618cd:	62 f3 05 48 18 f6 02 	vinsertf32x4 zmm6,zmm15,xmm6,0x2
  a618d4:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a618da:	62 72 3d 40 7f d9    	vpermt2ps zmm11,zmm24,zmm1
  a618e0:	62 f2 35 40 7f f1    	vpermt2ps zmm6,zmm25,zmm1
  a618e6:	c5 78 10 bc 17 80 00 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x80]
  a618ed:	00 00 
  a618ef:	c4 63 01 21 bc 17 84 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0x84],0x10
  a618f6:	00 00 00 10 
  a618fa:	c4 e2 79 18 84 17 88 	vbroadcastss xmm0,DWORD PTR [rdi+rdx*1+0x88]
  a61901:	00 00 00 
  a61904:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x60]
  a6190b:	03 
  a6190c:	c4 c3 79 0c c7 03    	vblendps xmm0,xmm0,xmm15,0x3
  a61912:	c4 e3 79 21 84 17 8c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x8c],0x30
  a61919:	00 00 00 30 
  a6191d:	62 f3 7d 40 18 c0 02 	vinsertf32x4 zmm0,zmm16,xmm0,0x2
  a61924:	62 71 7c 48 28 f8    	vmovaps zmm15,zmm0
  a6192a:	62 72 3d 40 7f f9    	vpermt2ps zmm15,zmm24,zmm1
  a61930:	62 f2 35 40 7f c1    	vpermt2ps zmm0,zmm25,zmm1
  a61936:	62 e1 4c 48 58 c0    	vaddps zmm16,zmm6,zmm0
  a6193c:	62 a1 34 48 58 d0    	vaddps zmm18,zmm9,zmm16
  a61942:	62 c1 24 48 58 df    	vaddps zmm19,zmm11,zmm15
  a61948:	62 a1 0c 48 58 cb    	vaddps zmm17,zmm14,zmm19
  a6194e:	62 32 2d 48 bc c8    	vfnmadd231ps zmm9,zmm10,zmm16
  a61954:	62 51 24 48 5c df    	vsubps zmm11,zmm11,zmm15
  a6195a:	62 51 24 48 59 dc    	vmulps zmm11,zmm11,zmm12
  a61960:	62 c1 34 48 58 e3    	vaddps zmm20,zmm9,zmm11
  a61966:	62 32 2d 48 bc f3    	vfnmadd231ps zmm14,zmm10,zmm19
  a6196c:	62 f1 4c 48 5c c0    	vsubps zmm0,zmm6,zmm0
  a61972:	62 d1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm12
  a61978:	62 f1 0c 48 5c f0    	vsubps zmm6,zmm14,zmm0
  a6197e:	62 51 34 48 5c cb    	vsubps zmm9,zmm9,zmm11
  a61984:	62 d1 7c 48 58 c6    	vaddps zmm0,zmm0,zmm14
  a6198a:	62 e2 25 40 7f d1    	vpermt2ps zmm18,zmm27,zmm1
  a61990:	62 e2 25 40 7f e1    	vpermt2ps zmm20,zmm27,zmm1
  a61996:	62 72 25 40 7f c9    	vpermt2ps zmm9,zmm27,zmm1
  a6199c:	62 31 7c 48 28 da    	vmovaps zmm11,zmm18
  a619a2:	62 72 65 48 7f da    	vpermt2ps zmm11,zmm3,zmm2
  a619a8:	62 e2 5d 48 7f d2    	vpermt2ps zmm18,zmm4,zmm2
  a619ae:	62 31 7c 48 28 f4    	vmovaps zmm14,zmm20
  a619b4:	62 72 65 48 7f f2    	vpermt2ps zmm14,zmm3,zmm2
  a619ba:	62 e2 5d 48 7f e2    	vpermt2ps zmm20,zmm4,zmm2
  a619c0:	62 c1 7c 48 28 d9    	vmovaps zmm19,zmm9
  a619c6:	62 e2 65 48 7f da    	vpermt2ps zmm19,zmm3,zmm2
  a619cc:	62 72 5d 48 7f ca    	vpermt2ps zmm9,zmm4,zmm2
  a619d2:	62 c1 ed 40 14 c1    	vunpcklpd zmm16,zmm18,zmm9
  a619d8:	62 31 a5 48 14 fb    	vunpcklpd zmm15,zmm11,zmm19
  a619de:	62 a1 a5 48 15 d3    	vunpckhpd zmm18,zmm11,zmm19
  a619e4:	62 71 8d 48 14 cd    	vunpcklpd zmm9,zmm14,zmm5
  a619ea:	62 71 8d 48 15 dd    	vunpckhpd zmm11,zmm14,zmm5
  a619f0:	62 81 dd 40 14 da    	vunpcklpd zmm19,zmm20,zmm26
  a619f6:	62 51 7c 48 28 f7    	vmovaps zmm14,zmm15
  a619fc:	62 52 45 48 7f f1    	vpermt2ps zmm14,zmm7,zmm9
  a61a02:	62 52 3d 48 7f f9    	vpermt2ps zmm15,zmm8,zmm9
  a61a08:	62 a1 7c 48 28 ea    	vmovaps zmm21,zmm18
  a61a0e:	62 c2 45 48 7f eb    	vpermt2ps zmm21,zmm7,zmm11
  a61a14:	62 c2 3d 48 7f d3    	vpermt2ps zmm18,zmm8,zmm11
  a61a1a:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a61a20:	62 a2 45 48 7f e3    	vpermt2ps zmm20,zmm7,zmm19
  a61a26:	62 a2 3d 48 7f c3    	vpermt2ps zmm16,zmm8,zmm19
  a61a2c:	62 e2 25 40 7f c9    	vpermt2ps zmm17,zmm27,zmm1
  a61a32:	62 f2 25 40 7f f1    	vpermt2ps zmm6,zmm27,zmm1
  a61a38:	62 f2 25 40 7f c1    	vpermt2ps zmm0,zmm27,zmm1
  a61a3e:	62 31 7c 48 28 c9    	vmovaps zmm9,zmm17
  a61a44:	62 72 65 48 7f ca    	vpermt2ps zmm9,zmm3,zmm2
  a61a4a:	62 e2 5d 48 7f ca    	vpermt2ps zmm17,zmm4,zmm2
  a61a50:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a61a56:	62 72 65 48 7f da    	vpermt2ps zmm11,zmm3,zmm2
  a61a5c:	62 f2 5d 48 7f f2    	vpermt2ps zmm6,zmm4,zmm2
  a61a62:	62 e1 7c 48 28 d8    	vmovaps zmm19,zmm0
  a61a68:	62 e2 65 48 7f da    	vpermt2ps zmm19,zmm3,zmm2
  a61a6e:	62 f2 5d 48 7f c2    	vpermt2ps zmm0,zmm4,zmm2
  a61a74:	62 e1 f5 40 14 f8    	vunpcklpd zmm23,zmm17,zmm0
  a61a7a:	62 a1 b5 48 14 f3    	vunpcklpd zmm22,zmm9,zmm19
  a61a80:	62 b1 b5 48 15 c3    	vunpckhpd zmm0,zmm9,zmm19
  a61a86:	62 71 a5 48 14 cd    	vunpcklpd zmm9,zmm11,zmm5
  a61a8c:	62 71 a5 48 15 dd    	vunpckhpd zmm11,zmm11,zmm5
  a61a92:	62 91 cd 48 14 f2    	vunpcklpd zmm6,zmm6,zmm26
  a61a98:	62 a1 7c 48 28 de    	vmovaps zmm19,zmm22
  a61a9e:	62 c2 45 48 7f d9    	vpermt2ps zmm19,zmm7,zmm9
  a61aa4:	62 c2 3d 48 7f f1    	vpermt2ps zmm22,zmm8,zmm9
  a61aaa:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a61ab0:	62 52 45 48 7f cb    	vpermt2ps zmm9,zmm7,zmm11
  a61ab6:	62 d2 3d 48 7f c3    	vpermt2ps zmm0,zmm8,zmm11
  a61abc:	62 31 7c 48 28 df    	vmovaps zmm11,zmm23
  a61ac2:	62 72 45 48 7f de    	vpermt2ps zmm11,zmm7,zmm6
  a61ac8:	62 e2 3d 48 7f fe    	vpermt2ps zmm23,zmm8,zmm6
  a61ace:	62 f1 7c 48 10 71 02 	vmovups zmm6,ZMMWORD PTR [rcx+0x80]
  a61ad5:	62 61 7c 48 10 61 03 	vmovups zmm28,ZMMWORD PTR [rcx+0xc0]
  a61adc:	62 61 7c 48 10 69 04 	vmovups zmm29,ZMMWORD PTR [rcx+0x100]
  a61ae3:	62 61 7c 48 10 71 05 	vmovups zmm30,ZMMWORD PTR [rcx+0x140]
  a61aea:	62 61 7c 48 10 79 06 	vmovups zmm31,ZMMWORD PTR [rcx+0x180]
  a61af1:	62 81 54 40 59 cd    	vmulps zmm17,zmm21,zmm29
  a61af7:	62 82 35 48 bc ce    	vfnmadd231ps zmm17,zmm9,zmm30
  a61afd:	62 11 34 48 59 cd    	vmulps zmm9,zmm9,zmm29
  a61b03:	62 61 7c 48 10 69 08 	vmovups zmm29,ZMMWORD PTR [rcx+0x200]
  a61b0a:	62 32 0d 40 b8 cd    	vfmadd231ps zmm9,zmm30,zmm21
  a61b10:	62 61 7c 48 10 71 09 	vmovups zmm30,ZMMWORD PTR [rcx+0x240]
  a61b17:	62 81 5c 40 59 ed    	vmulps zmm21,zmm20,zmm29
  a61b1d:	62 82 25 48 bc ee    	vfnmadd231ps zmm21,zmm11,zmm30
  a61b23:	62 11 24 48 59 dd    	vmulps zmm11,zmm11,zmm29
  a61b29:	62 61 7c 48 10 69 07 	vmovups zmm29,ZMMWORD PTR [rcx+0x1c0]
  a61b30:	62 32 0d 40 b8 dc    	vfmadd231ps zmm11,zmm30,zmm20
  a61b36:	62 e1 7c 48 10 61 0a 	vmovups zmm20,ZMMWORD PTR [rcx+0x280]
  a61b3d:	62 01 6c 40 59 f7    	vmulps zmm30,zmm18,zmm31
  a61b43:	62 02 7d 48 bc f5    	vfnmadd231ps zmm30,zmm0,zmm29
  a61b49:	62 91 7c 48 59 c7    	vmulps zmm0,zmm0,zmm31
  a61b4f:	62 61 7c 48 10 79 0b 	vmovups zmm31,ZMMWORD PTR [rcx+0x2c0]
  a61b56:	62 b2 15 40 b8 c2    	vfmadd231ps zmm0,zmm29,zmm18
  a61b5c:	62 a1 74 40 58 d5    	vaddps zmm18,zmm17,zmm21
  a61b62:	62 21 7c 40 59 ec    	vmulps zmm29,zmm16,zmm20
  a61b68:	62 02 45 40 bc ef    	vfnmadd231ps zmm29,zmm23,zmm31
  a61b6e:	62 a1 44 40 59 e4    	vmulps zmm20,zmm23,zmm20
  a61b74:	62 e1 04 48 59 fe    	vmulps zmm23,zmm15,zmm6
  a61b7a:	62 82 4d 40 bc fc    	vfnmadd231ps zmm23,zmm22,zmm28
  a61b80:	62 a2 05 40 b8 e0    	vfmadd231ps zmm20,zmm31,zmm16
  a61b86:	62 a1 14 40 58 c7    	vaddps zmm16,zmm29,zmm23
  a61b8c:	62 41 34 48 58 fb    	vaddps zmm31,zmm9,zmm11
  a61b92:	62 f1 4c 40 59 f6    	vmulps zmm6,zmm22,zmm6
  a61b98:	62 d2 1d 40 b8 f7    	vfmadd231ps zmm6,zmm28,zmm15
  a61b9e:	62 71 5c 40 58 fe    	vaddps zmm15,zmm20,zmm6
  a61ba4:	62 c1 7c 48 28 f2    	vmovaps zmm22,zmm10
  a61baa:	62 c2 6d 40 ac f6    	vfnmadd213ps zmm22,zmm18,zmm14
  a61bb0:	62 51 34 48 5c cb    	vsubps zmm9,zmm9,zmm11
  a61bb6:	62 51 34 48 59 cc    	vmulps zmm9,zmm9,zmm12
  a61bbc:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a61bc2:	62 12 7d 40 ac de    	vfnmadd213ps zmm11,zmm16,zmm30
  a61bc8:	62 f1 5c 40 5c f6    	vsubps zmm6,zmm20,zmm6
  a61bce:	62 d1 4c 48 59 f4    	vmulps zmm6,zmm6,zmm12
  a61bd4:	62 c1 7c 48 28 e2    	vmovaps zmm20,zmm10
  a61bda:	62 a2 05 40 ac e3    	vfnmadd213ps zmm20,zmm31,zmm19
  a61be0:	62 41 7c 48 28 e2    	vmovaps zmm28,zmm10
  a61be6:	62 62 05 48 ac e0    	vfnmadd213ps zmm28,zmm15,zmm0
  a61bec:	62 a1 0c 20 58 c0    	vaddps ymm16,ymm30,ymm16
  a61bf2:	62 31 0c 28 58 f2    	vaddps ymm14,ymm14,ymm18
  a61bf8:	62 a1 0c 28 58 d0    	vaddps ymm18,ymm14,ymm16
  a61bfe:	c5 80 58 c0          	vaddps xmm0,xmm15,xmm0
  a61c02:	62 31 04 00 58 fb    	vaddps xmm15,xmm31,xmm19
  a61c08:	62 e1 04 08 58 d8    	vaddps xmm19,xmm15,xmm0
  a61c0e:	62 a2 15 28 7f da    	vpermt2ps ymm19,ymm13,ymm18
  a61c14:	62 e1 7c 08 11 1c 16 	vmovups XMMWORD PTR [rsi+rdx*1],xmm19
  a61c1b:	62 a3 7d 28 19 da 01 	vextractf32x4 xmm18,ymm19,0x1
  a61c22:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm18
  a61c29:	02 
  a61c2a:	62 e1 24 28 58 d6    	vaddps ymm18,ymm11,ymm6
  a61c30:	62 c1 4c 20 58 d9    	vaddps ymm19,ymm22,ymm9
  a61c36:	62 21 64 20 5c f2    	vsubps ymm30,ymm19,ymm18
  a61c3c:	62 a1 14 00 5c ff    	vsubps xmm23,xmm29,xmm23
  a61c42:	62 c1 44 00 59 fc    	vmulps xmm23,xmm23,xmm12
  a61c48:	62 21 1c 00 5c ef    	vsubps xmm29,xmm28,xmm23
  a61c4e:	62 a1 74 00 5c cd    	vsubps xmm17,xmm17,xmm21
  a61c54:	62 c1 74 00 59 cc    	vmulps xmm17,xmm17,xmm12
  a61c5a:	62 a1 5c 00 5c e9    	vsubps xmm21,xmm20,xmm17
  a61c60:	62 01 54 00 5c fd    	vsubps xmm31,xmm21,xmm29
  a61c66:	62 02 15 28 7f fe    	vpermt2ps ymm31,ymm13,ymm30
  a61c6c:	62 61 7c 08 11 bc 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm31
  a61c73:	18 00 00 00 
  a61c77:	62 03 7d 28 19 fe 01 	vextractf32x4 xmm30,ymm31,0x1
  a61c7e:	62 61 7c 08 13 74 16 	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm30
  a61c85:	05 
  a61c86:	c5 a4 5c f6          	vsubps ymm6,ymm11,ymm6
  a61c8a:	62 51 4c 20 5c c9    	vsubps ymm9,ymm22,ymm9
  a61c90:	62 31 1c 00 58 df    	vaddps xmm11,xmm28,xmm23
  a61c96:	62 e1 34 28 58 f6    	vaddps ymm22,ymm9,ymm6
  a61c9c:	62 a1 74 00 58 cc    	vaddps xmm17,xmm17,xmm20
  a61ca2:	62 c1 74 00 58 e3    	vaddps xmm20,xmm17,xmm11
  a61ca8:	62 a2 15 28 7f e6    	vpermt2ps ymm20,ymm13,ymm22
  a61cae:	62 e1 7c 08 11 64 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm20
  a61cb5:	03 
  a61cb6:	62 a3 7d 28 19 e4 01 	vextractf32x4 xmm20,ymm20,0x1
  a61cbd:	62 e1 7c 08 13 64 16 	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm20
  a61cc4:	08 
  a61cc5:	62 31 0c 28 5c f0    	vsubps ymm14,ymm14,ymm16
  a61ccb:	c5 80 5c c0          	vsubps xmm0,xmm15,xmm0
  a61ccf:	62 d2 15 28 7f c6    	vpermt2ps ymm0,ymm13,ymm14
  a61cd5:	c4 c3 7d 19 c6 01    	vextractf128 xmm14,ymm0,0x1
  a61cdb:	c5 78 13 74 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm14
  a61ce1:	c5 f8 11 44 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm0
  a61ce7:	62 b1 64 20 58 c2    	vaddps ymm0,ymm19,ymm18
  a61ced:	62 11 54 00 58 f5    	vaddps xmm14,xmm21,xmm29
  a61cf3:	62 72 15 28 7f f0    	vpermt2ps ymm14,ymm13,ymm0
  a61cf9:	c5 78 11 74 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm14
  a61cff:	c4 63 7d 19 f0 01    	vextractf128 xmm0,ymm14,0x1
  a61d05:	c5 f8 13 44 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm0
  a61d0b:	c5 b4 5c c6          	vsubps ymm0,ymm9,ymm6
  a61d0f:	62 d1 74 00 5c f3    	vsubps xmm6,xmm17,xmm11
  a61d15:	62 f2 15 28 7f f0    	vpermt2ps ymm6,ymm13,ymm0
  a61d1b:	c5 f8 11 74 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm6
  a61d21:	c4 e3 7d 19 f0 01    	vextractf128 xmm0,ymm6,0x1
  a61d27:	c5 f8 13 84 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm0
  a61d2e:	00 00 
  a61d30:	48 81 c2 90 00 00 00 	add    rdx,0x90
  a61d37:	48 39 d0             	cmp    rax,rdx
  a61d3a:	0f 85 20 fb ff ff    	jne    a61860 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0xa0>
  a61d40:	c5 f8 77             	vzeroupper
  a61d43:	c3                   	ret
