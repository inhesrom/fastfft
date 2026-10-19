
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a2c6c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a2c6c0:	62 61 7c 48 28 1d b6 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff69a8b6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a2c6c7:	a8 69 ff 
  a2c6ca:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a2c6ce:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a2c6d2:	62 f2 25 40 7f d2    	vpermt2ps zmm2,zmm27,zmm2
  a2c6d8:	62 f1 7c 48 28 1d 1e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff69a81e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a2c6df:	a8 69 ff 
  a2c6e2:	62 f1 7c 48 28 25 54 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff69a854]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a2c6e9:	a8 69 ff 
  a2c6ec:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a2c6f2:	62 f2 65 48 7f ea    	vpermt2ps zmm5,zmm3,zmm2
  a2c6f8:	62 61 7c 48 28 d2    	vmovaps zmm26,zmm2
  a2c6fe:	62 62 5d 48 7f d2    	vpermt2ps zmm26,zmm4,zmm2
  a2c704:	62 f1 7c 48 28 3d f2 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff69a6f2]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2c70b:	a6 69 ff 
  a2c70e:	62 71 7c 48 28 05 28 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff69a728]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a2c715:	a7 69 ff 
  a2c718:	48 c1 e2 04          	shl    rdx,0x4
  a2c71c:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a2c720:	31 d2                	xor    edx,edx
  a2c722:	62 72 7d 48 18 15 34 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff648d34]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a2c729:	8d 64 ff 
  a2c72c:	62 61 7c 48 28 0d 8a 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff66418a]        # 908c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dd70>
  a2c733:	41 66 ff 
  a2c736:	62 72 7d 48 18 25 94 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff648b94]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a2c73d:	8b 64 ff 
  a2c740:	c5 7c 28 2d 78 bb 64 	vmovaps ymm13,YMMWORD PTR [rip+0xffffffffff64bb78]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a2c747:	ff 
  a2c748:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  a2c74f:	00 
  a2c750:	c5 78 10 74 17 20    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x20]
  a2c756:	c4 63 09 21 74 17 24 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x24],0x10
  a2c75d:	10 
  a2c75e:	c5 7c 10 3c 17       	vmovups ymm15,YMMWORD PTR [rdi+rdx*1]
  a2c763:	c4 62 79 18 4c 17 28 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0x28]
  a2c76a:	c4 43 31 0c ce 03    	vblendps xmm9,xmm9,xmm14,0x3
  a2c770:	c4 63 31 21 4c 17 2c 	vinsertps xmm9,xmm9,DWORD PTR [rdi+rdx*1+0x2c],0x30
  a2c777:	30 
  a2c778:	62 53 05 48 18 c9 02 	vinsertf32x4 zmm9,zmm15,xmm9,0x2
  a2c77f:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  a2c785:	62 e1 7c 48 28 0d f1 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6640f1]        # 90880 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dd30>
  a2c78c:	40 66 ff 
  a2c78f:	62 72 75 40 7f f1    	vpermt2ps zmm14,zmm17,zmm1
  a2c795:	62 72 35 40 7f c9    	vpermt2ps zmm9,zmm25,zmm1
  a2c79b:	c5 7c 10 7c 17 30    	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0x30]
  a2c7a1:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0x50]
  a2c7a8:	05 
  a2c7a9:	62 73 7d 00 21 5c 17 	vinsertps xmm11,xmm16,DWORD PTR [rdi+rdx*1+0x54],0x10
  a2c7b0:	15 10 
  a2c7b2:	c4 e2 79 18 74 17 58 	vbroadcastss xmm6,DWORD PTR [rdi+rdx*1+0x58]
  a2c7b9:	c4 c3 49 0c f3 03    	vblendps xmm6,xmm6,xmm11,0x3
  a2c7bf:	c4 e3 49 21 74 17 5c 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0x5c],0x30
  a2c7c6:	30 
  a2c7c7:	62 f3 05 48 18 f6 02 	vinsertf32x4 zmm6,zmm15,xmm6,0x2
  a2c7ce:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a2c7d4:	62 72 75 40 7f d9    	vpermt2ps zmm11,zmm17,zmm1
  a2c7da:	62 f2 35 40 7f f1    	vpermt2ps zmm6,zmm25,zmm1
  a2c7e0:	c5 78 10 bc 17 80 00 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x80]
  a2c7e7:	00 00 
  a2c7e9:	c4 63 01 21 bc 17 84 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0x84],0x10
  a2c7f0:	00 00 00 10 
  a2c7f4:	c4 e2 79 18 84 17 88 	vbroadcastss xmm0,DWORD PTR [rdi+rdx*1+0x88]
  a2c7fb:	00 00 00 
  a2c7fe:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x60]
  a2c805:	03 
  a2c806:	c4 c3 79 0c c7 03    	vblendps xmm0,xmm0,xmm15,0x3
  a2c80c:	c4 e3 79 21 84 17 8c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x8c],0x30
  a2c813:	00 00 00 30 
  a2c817:	62 f3 7d 40 18 c0 02 	vinsertf32x4 zmm0,zmm16,xmm0,0x2
  a2c81e:	62 71 7c 48 28 f8    	vmovaps zmm15,zmm0
  a2c824:	62 72 75 40 7f f9    	vpermt2ps zmm15,zmm17,zmm1
  a2c82a:	62 f2 35 40 7f c1    	vpermt2ps zmm0,zmm25,zmm1
  a2c830:	62 c1 24 48 58 c7    	vaddps zmm16,zmm11,zmm15
  a2c836:	62 a1 0c 48 58 c8    	vaddps zmm17,zmm14,zmm16
  a2c83c:	62 e1 4c 48 58 d8    	vaddps zmm19,zmm6,zmm0
  a2c842:	62 a1 34 48 58 d3    	vaddps zmm18,zmm9,zmm19
  a2c848:	62 32 2d 48 bc f0    	vfnmadd231ps zmm14,zmm10,zmm16
  a2c84e:	62 f1 4c 48 5c c0    	vsubps zmm0,zmm6,zmm0
  a2c854:	62 d1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm12
  a2c85a:	62 f1 0c 48 58 f0    	vaddps zmm6,zmm14,zmm0
  a2c860:	62 32 2d 48 bc cb    	vfnmadd231ps zmm9,zmm10,zmm19
  a2c866:	62 51 24 48 5c df    	vsubps zmm11,zmm11,zmm15
  a2c86c:	62 51 24 48 59 dc    	vmulps zmm11,zmm11,zmm12
  a2c872:	62 c1 34 48 5c db    	vsubps zmm19,zmm9,zmm11
  a2c878:	62 f1 0c 48 5c c0    	vsubps zmm0,zmm14,zmm0
  a2c87e:	62 51 24 48 58 c9    	vaddps zmm9,zmm11,zmm9
  a2c884:	62 e2 25 40 7f c9    	vpermt2ps zmm17,zmm27,zmm1
  a2c88a:	62 f2 25 40 7f f1    	vpermt2ps zmm6,zmm27,zmm1
  a2c890:	62 f2 25 40 7f c1    	vpermt2ps zmm0,zmm27,zmm1
  a2c896:	62 31 7c 48 28 d9    	vmovaps zmm11,zmm17
  a2c89c:	62 72 65 48 7f da    	vpermt2ps zmm11,zmm3,zmm2
  a2c8a2:	62 e2 5d 48 7f ca    	vpermt2ps zmm17,zmm4,zmm2
  a2c8a8:	62 71 7c 48 28 f6    	vmovaps zmm14,zmm6
  a2c8ae:	62 72 65 48 7f f2    	vpermt2ps zmm14,zmm3,zmm2
  a2c8b4:	62 f2 5d 48 7f f2    	vpermt2ps zmm6,zmm4,zmm2
  a2c8ba:	62 e1 7c 48 28 e0    	vmovaps zmm20,zmm0
  a2c8c0:	62 e2 65 48 7f e2    	vpermt2ps zmm20,zmm3,zmm2
  a2c8c6:	62 f2 5d 48 7f c2    	vpermt2ps zmm0,zmm4,zmm2
  a2c8cc:	62 e1 f5 40 14 c0    	vunpcklpd zmm16,zmm17,zmm0
  a2c8d2:	62 31 a5 48 14 fc    	vunpcklpd zmm15,zmm11,zmm20
  a2c8d8:	62 a1 a5 48 15 cc    	vunpckhpd zmm17,zmm11,zmm20
  a2c8de:	62 f1 8d 48 14 c5    	vunpcklpd zmm0,zmm14,zmm5
  a2c8e4:	62 71 8d 48 15 dd    	vunpckhpd zmm11,zmm14,zmm5
  a2c8ea:	62 91 cd 48 14 f2    	vunpcklpd zmm6,zmm6,zmm26
  a2c8f0:	62 51 7c 48 28 f7    	vmovaps zmm14,zmm15
  a2c8f6:	62 72 45 48 7f f0    	vpermt2ps zmm14,zmm7,zmm0
  a2c8fc:	62 72 3d 48 7f f8    	vpermt2ps zmm15,zmm8,zmm0
  a2c902:	62 a1 7c 48 28 e1    	vmovaps zmm20,zmm17
  a2c908:	62 c2 45 48 7f e3    	vpermt2ps zmm20,zmm7,zmm11
  a2c90e:	62 c2 3d 48 7f cb    	vpermt2ps zmm17,zmm8,zmm11
  a2c914:	62 a1 7c 48 28 e8    	vmovaps zmm21,zmm16
  a2c91a:	62 e2 45 48 7f ee    	vpermt2ps zmm21,zmm7,zmm6
  a2c920:	62 e2 3d 48 7f c6    	vpermt2ps zmm16,zmm8,zmm6
  a2c926:	62 e2 25 40 7f d1    	vpermt2ps zmm18,zmm27,zmm1
  a2c92c:	62 e2 25 40 7f d9    	vpermt2ps zmm19,zmm27,zmm1
  a2c932:	62 72 25 40 7f c9    	vpermt2ps zmm9,zmm27,zmm1
  a2c938:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a2c93e:	62 f2 65 48 7f c2    	vpermt2ps zmm0,zmm3,zmm2
  a2c944:	62 e2 5d 48 7f d2    	vpermt2ps zmm18,zmm4,zmm2
  a2c94a:	62 b1 7c 48 28 f3    	vmovaps zmm6,zmm19
  a2c950:	62 f2 65 48 7f f2    	vpermt2ps zmm6,zmm3,zmm2
  a2c956:	62 e2 5d 48 7f da    	vpermt2ps zmm19,zmm4,zmm2
  a2c95c:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a2c962:	62 72 65 48 7f da    	vpermt2ps zmm11,zmm3,zmm2
  a2c968:	62 72 5d 48 7f ca    	vpermt2ps zmm9,zmm4,zmm2
  a2c96e:	62 c1 ed 40 14 f9    	vunpcklpd zmm23,zmm18,zmm9
  a2c974:	62 c1 fd 48 14 f3    	vunpcklpd zmm22,zmm0,zmm11
  a2c97a:	62 d1 fd 48 15 c3    	vunpckhpd zmm0,zmm0,zmm11
  a2c980:	62 71 cd 48 14 cd    	vunpcklpd zmm9,zmm6,zmm5
  a2c986:	62 f1 cd 48 15 f5    	vunpckhpd zmm6,zmm6,zmm5
  a2c98c:	62 11 e5 40 14 da    	vunpcklpd zmm11,zmm19,zmm26
  a2c992:	62 a1 7c 48 28 d6    	vmovaps zmm18,zmm22
  a2c998:	62 c2 45 48 7f d1    	vpermt2ps zmm18,zmm7,zmm9
  a2c99e:	62 c2 3d 48 7f f1    	vpermt2ps zmm22,zmm8,zmm9
  a2c9a4:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a2c9aa:	62 72 45 48 7f ce    	vpermt2ps zmm9,zmm7,zmm6
  a2c9b0:	62 f2 3d 48 7f c6    	vpermt2ps zmm0,zmm8,zmm6
  a2c9b6:	62 b1 7c 48 28 f7    	vmovaps zmm6,zmm23
  a2c9bc:	62 d2 45 48 7f f3    	vpermt2ps zmm6,zmm7,zmm11
  a2c9c2:	62 c2 3d 48 7f fb    	vpermt2ps zmm23,zmm8,zmm11
  a2c9c8:	62 71 7c 48 10 59 02 	vmovups zmm11,ZMMWORD PTR [rcx+0x80]
  a2c9cf:	62 61 7c 48 10 61 03 	vmovups zmm28,ZMMWORD PTR [rcx+0xc0]
  a2c9d6:	62 e1 7c 48 10 59 04 	vmovups zmm19,ZMMWORD PTR [rcx+0x100]
  a2c9dd:	62 61 7c 48 10 69 05 	vmovups zmm29,ZMMWORD PTR [rcx+0x140]
  a2c9e4:	62 61 7c 48 10 71 06 	vmovups zmm30,ZMMWORD PTR [rcx+0x180]
  a2c9eb:	62 21 5c 40 59 fb    	vmulps zmm31,zmm20,zmm19
  a2c9f1:	62 02 35 48 bc fd    	vfnmadd231ps zmm31,zmm9,zmm29
  a2c9f7:	62 a1 34 48 59 db    	vmulps zmm19,zmm9,zmm19
  a2c9fd:	62 71 7c 48 10 49 08 	vmovups zmm9,ZMMWORD PTR [rcx+0x200]
  a2ca04:	62 a2 15 40 b8 dc    	vfmadd231ps zmm19,zmm29,zmm20
  a2ca0a:	62 61 7c 48 10 69 09 	vmovups zmm29,ZMMWORD PTR [rcx+0x240]
  a2ca11:	62 41 54 40 59 c1    	vmulps zmm24,zmm21,zmm9
  a2ca17:	62 02 4d 48 bc c5    	vfnmadd231ps zmm24,zmm6,zmm29
  a2ca1d:	62 c1 4c 48 59 e1    	vmulps zmm20,zmm6,zmm9
  a2ca23:	62 f1 7c 48 10 71 07 	vmovups zmm6,ZMMWORD PTR [rcx+0x1c0]
  a2ca2a:	62 a2 15 40 b8 e5    	vfmadd231ps zmm20,zmm29,zmm21
  a2ca30:	62 71 7c 48 10 49 0a 	vmovups zmm9,ZMMWORD PTR [rcx+0x280]
  a2ca37:	62 81 74 40 59 ee    	vmulps zmm21,zmm17,zmm30
  a2ca3d:	62 e2 7d 48 bc ee    	vfnmadd231ps zmm21,zmm0,zmm6
  a2ca43:	62 91 7c 48 59 c6    	vmulps zmm0,zmm0,zmm30
  a2ca49:	62 61 7c 48 10 69 0b 	vmovups zmm29,ZMMWORD PTR [rcx+0x2c0]
  a2ca50:	62 b2 4d 48 b8 c1    	vfmadd231ps zmm0,zmm6,zmm17
  a2ca56:	62 91 04 40 58 f0    	vaddps zmm6,zmm31,zmm24
  a2ca5c:	62 c1 7c 40 59 c9    	vmulps zmm17,zmm16,zmm9
  a2ca62:	62 82 45 40 bc cd    	vfnmadd231ps zmm17,zmm23,zmm29
  a2ca68:	62 51 44 40 59 c9    	vmulps zmm9,zmm23,zmm9
  a2ca6e:	62 c1 04 48 59 fb    	vmulps zmm23,zmm15,zmm11
  a2ca74:	62 82 4d 40 bc fc    	vfnmadd231ps zmm23,zmm22,zmm28
  a2ca7a:	62 32 15 40 b8 c8    	vfmadd231ps zmm9,zmm29,zmm16
  a2ca80:	62 21 74 40 58 ef    	vaddps zmm29,zmm17,zmm23
  a2ca86:	62 21 64 40 58 f4    	vaddps zmm30,zmm19,zmm20
  a2ca8c:	62 51 4c 40 59 db    	vmulps zmm11,zmm22,zmm11
  a2ca92:	62 52 1d 40 b8 df    	vfmadd231ps zmm11,zmm28,zmm15
  a2ca98:	62 c1 34 48 58 f3    	vaddps zmm22,zmm9,zmm11
  a2ca9e:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a2caa4:	62 52 4d 48 ac fe    	vfnmadd213ps zmm15,zmm6,zmm14
  a2caaa:	62 c1 7c 48 28 c2    	vmovaps zmm16,zmm10
  a2cab0:	62 a2 15 40 ac c5    	vfnmadd213ps zmm16,zmm29,zmm21
  a2cab6:	62 01 04 40 5c c0    	vsubps zmm24,zmm31,zmm24
  a2cabc:	62 41 7c 48 28 e2    	vmovaps zmm28,zmm10
  a2cac2:	62 22 0d 40 ac e2    	vfnmadd213ps zmm28,zmm30,zmm18
  a2cac8:	62 41 3c 40 59 c4    	vmulps zmm24,zmm24,zmm12
  a2cace:	62 a1 74 40 5c cf    	vsubps zmm17,zmm17,zmm23
  a2cad4:	62 c1 7c 48 28 fa    	vmovaps zmm23,zmm10
  a2cada:	62 e2 4d 40 ac f8    	vfnmadd213ps zmm23,zmm22,zmm0
  a2cae0:	62 c1 74 40 59 cc    	vmulps zmm17,zmm17,zmm12
  a2cae6:	62 b1 7c 28 58 c6    	vaddps ymm0,ymm0,ymm22
  a2caec:	62 a1 0c 20 58 d2    	vaddps ymm18,ymm30,ymm18
  a2caf2:	62 e1 6c 20 58 f0    	vaddps ymm22,ymm18,ymm0
  a2caf8:	62 81 54 00 58 ed    	vaddps xmm21,xmm21,xmm29
  a2cafe:	c5 88 58 f6          	vaddps xmm6,xmm14,xmm6
  a2cb02:	62 31 4c 08 58 f5    	vaddps xmm14,xmm6,xmm21
  a2cb08:	62 32 15 28 7f f6    	vpermt2ps ymm14,ymm13,ymm22
  a2cb0e:	c5 78 11 34 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm14
  a2cb13:	c4 43 7d 19 f6 01    	vextractf128 xmm14,ymm14,0x1
  a2cb19:	c5 78 13 74 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm14
  a2cb1f:	62 31 44 20 5c f1    	vsubps ymm14,ymm23,ymm17
  a2cb25:	62 81 1c 20 5c f0    	vsubps ymm22,ymm28,ymm24
  a2cb2b:	62 41 4c 20 5c ee    	vsubps ymm29,ymm22,ymm14
  a2cb31:	c4 41 30 5c cb       	vsubps xmm9,xmm9,xmm11
  a2cb36:	c4 41 30 59 cc       	vmulps xmm9,xmm9,xmm12
  a2cb3b:	62 51 7c 00 58 d9    	vaddps xmm11,xmm16,xmm9
  a2cb41:	62 a1 64 00 5c dc    	vsubps xmm19,xmm19,xmm20
  a2cb47:	62 c1 64 00 59 dc    	vmulps xmm19,xmm19,xmm12
  a2cb4d:	62 a1 04 08 58 e3    	vaddps xmm20,xmm15,xmm19
  a2cb53:	62 41 5c 00 5c f3    	vsubps xmm30,xmm20,xmm11
  a2cb59:	62 02 15 28 7f f5    	vpermt2ps ymm30,ymm13,ymm29
  a2cb5f:	62 61 7c 08 11 b4 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm30
  a2cb66:	18 00 00 00 
  a2cb6a:	62 03 7d 28 19 f5 01 	vextractf32x4 xmm29,ymm30,0x1
  a2cb71:	62 61 7c 08 13 6c 16 	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm29
  a2cb78:	05 
  a2cb79:	62 a1 44 20 58 c9    	vaddps ymm17,ymm23,ymm17
  a2cb7f:	62 81 3c 20 58 fc    	vaddps ymm23,ymm24,ymm28
  a2cb85:	62 51 7c 00 5c c9    	vsubps xmm9,xmm16,xmm9
  a2cb8b:	62 a1 44 20 58 c1    	vaddps ymm16,ymm23,ymm17
  a2cb91:	62 31 04 08 5c fb    	vsubps xmm15,xmm15,xmm19
  a2cb97:	62 c1 04 08 58 d9    	vaddps xmm19,xmm15,xmm9
  a2cb9d:	62 a2 15 28 7f d8    	vpermt2ps ymm19,ymm13,ymm16
  a2cba3:	62 e1 7c 08 11 5c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm19
  a2cbaa:	03 
  a2cbab:	62 a3 7d 28 19 d8 01 	vextractf32x4 xmm16,ymm19,0x1
  a2cbb2:	62 e1 7c 08 13 44 16 	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm16
  a2cbb9:	08 
  a2cbba:	62 f1 6c 20 5c c0    	vsubps ymm0,ymm18,ymm0
  a2cbc0:	62 b1 4c 08 5c f5    	vsubps xmm6,xmm6,xmm21
  a2cbc6:	62 f2 15 28 7f f0    	vpermt2ps ymm6,ymm13,ymm0
  a2cbcc:	c4 e3 7d 19 f0 01    	vextractf128 xmm0,ymm6,0x1
  a2cbd2:	c5 f8 13 44 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm0
  a2cbd8:	c5 f8 11 74 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm6
  a2cbde:	62 d1 4c 20 58 c6    	vaddps ymm0,ymm22,ymm14
  a2cbe4:	62 d1 5c 00 58 f3    	vaddps xmm6,xmm20,xmm11
  a2cbea:	62 f2 15 28 7f f0    	vpermt2ps ymm6,ymm13,ymm0
  a2cbf0:	c5 f8 11 74 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm6
  a2cbf6:	c4 e3 7d 19 f0 01    	vextractf128 xmm0,ymm6,0x1
  a2cbfc:	c5 f8 13 44 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm0
  a2cc02:	62 b1 44 20 5c c1    	vsubps ymm0,ymm23,ymm17
  a2cc08:	c4 c1 00 5c f1       	vsubps xmm6,xmm15,xmm9
  a2cc0d:	62 f2 15 28 7f f0    	vpermt2ps ymm6,ymm13,ymm0
  a2cc13:	c5 f8 11 74 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm6
  a2cc19:	c4 e3 7d 19 f0 01    	vextractf128 xmm0,ymm6,0x1
  a2cc1f:	c5 f8 13 84 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm0
  a2cc26:	00 00 
  a2cc28:	48 81 c2 90 00 00 00 	add    rdx,0x90
  a2cc2f:	48 39 d0             	cmp    rax,rdx
  a2cc32:	0f 85 18 fb ff ff    	jne    a2c750 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x90>
  a2cc38:	c5 f8 77             	vzeroupper
  a2cc3b:	c3                   	ret
