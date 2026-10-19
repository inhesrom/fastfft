
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a23740 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a23740:	62 f1 7c 48 28 05 36 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6a3836]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a23747:	38 6a ff 
  a2374a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a2374e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a23752:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a23758:	62 f1 7c 48 28 1d 9e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6a379e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a2375f:	37 6a ff 
  a23762:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a23768:	62 f2 65 48 7f e2    	vpermt2ps zmm4,zmm3,zmm2
  a2376e:	62 f1 7c 48 28 2d 88 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6a3688]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a23775:	36 6a ff 
  a23778:	62 f1 7c 48 28 35 be 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6a36be]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a2377f:	36 6a ff 
  a23782:	48 c1 e2 04          	shl    rdx,0x4
  a23786:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a2378a:	31 d2                	xor    edx,edx
  a2378c:	62 f1 7c 48 28 3d 2a 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff66ca2a]        # 901c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d670>
  a23793:	ca 66 ff 
  a23796:	62 71 7c 48 28 05 60 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff66ca60]        # 90200 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d6b0>
  a2379d:	ca 66 ff 
  a237a0:	62 72 7d 48 18 0d b6 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff651cb6]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a237a7:	1c 65 ff 
  a237aa:	c4 62 79 18 15 21 1b 	vbroadcastss xmm10,DWORD PTR [rip+0xffffffffff651b21]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a237b1:	65 ff 
  a237b3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a237ba:	84 00 00 00 00 00 
  a237c0:	c5 7b 10 5c 17 10    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x10]
  a237c6:	c5 78 10 24 17       	vmovups xmm12,XMMWORD PTR [rdi+rdx*1]
  a237cb:	c5 78 10 6c 17 18    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x18]
  a237d1:	62 53 1d 48 18 db 01 	vinsertf32x4 zmm11,zmm12,xmm11,0x1
  a237d8:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a237de:	62 72 45 48 7f e1    	vpermt2ps zmm12,zmm7,zmm1
  a237e4:	62 72 3d 48 7f d9    	vpermt2ps zmm11,zmm8,zmm1
  a237ea:	c5 7b 10 74 17 28    	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x28]
  a237f0:	62 53 15 48 18 ee 01 	vinsertf32x4 zmm13,zmm13,xmm14,0x1
  a237f7:	62 51 7c 48 28 f5    	vmovaps zmm14,zmm13
  a237fd:	62 72 45 48 7f f1    	vpermt2ps zmm14,zmm7,zmm1
  a23803:	62 72 3d 48 7f e9    	vpermt2ps zmm13,zmm8,zmm1
  a23809:	62 51 24 48 58 fd    	vaddps zmm15,zmm11,zmm13
  a2380f:	62 c1 1c 48 58 c6    	vaddps zmm16,zmm12,zmm14
  a23815:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a2381b:	62 51 1c 48 5c e6    	vsubps zmm12,zmm12,zmm14
  a23821:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a23827:	62 72 7d 48 7f d9    	vpermt2ps zmm11,zmm0,zmm1
  a2382d:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a23833:	62 72 65 48 7f da    	vpermt2ps zmm11,zmm3,zmm2
  a23839:	62 71 85 48 14 ec    	vunpcklpd zmm13,zmm15,zmm4
  a2383f:	62 71 85 48 15 f4    	vunpckhpd zmm14,zmm15,zmm4
  a23845:	62 71 a5 48 14 fc    	vunpcklpd zmm15,zmm11,zmm4
  a2384b:	62 71 a5 48 15 dc    	vunpckhpd zmm11,zmm11,zmm4
  a23851:	62 c1 7c 48 28 cd    	vmovaps zmm17,zmm13
  a23857:	62 c2 55 48 7f cf    	vpermt2ps zmm17,zmm5,zmm15
  a2385d:	62 52 4d 48 7f ef    	vpermt2ps zmm13,zmm6,zmm15
  a23863:	62 52 55 48 7f f3    	vpermt2ps zmm14,zmm5,zmm11
  a23869:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a2386f:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a23875:	62 e2 65 48 7f c2    	vpermt2ps zmm16,zmm3,zmm2
  a2387b:	62 72 65 48 7f e2    	vpermt2ps zmm12,zmm3,zmm2
  a23881:	62 71 fd 40 14 dc    	vunpcklpd zmm11,zmm16,zmm4
  a23887:	62 71 fd 40 15 fc    	vunpckhpd zmm15,zmm16,zmm4
  a2388d:	62 e1 9d 48 14 c4    	vunpcklpd zmm16,zmm12,zmm4
  a23893:	62 71 9d 48 15 e4    	vunpckhpd zmm12,zmm12,zmm4
  a23899:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a2389f:	62 a2 55 48 7f d0    	vpermt2ps zmm18,zmm5,zmm16
  a238a5:	62 32 4d 48 7f d8    	vpermt2ps zmm11,zmm6,zmm16
  a238ab:	62 52 55 48 7f fc    	vpermt2ps zmm15,zmm5,zmm12
  a238b1:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a238b8:	62 e1 7c 48 10 41 03 	vmovups zmm16,ZMMWORD PTR [rcx+0xc0]
  a238bf:	62 e1 7c 48 10 59 04 	vmovups zmm19,ZMMWORD PTR [rcx+0x100]
  a238c6:	62 e1 7c 48 10 61 05 	vmovups zmm20,ZMMWORD PTR [rcx+0x140]
  a238cd:	62 c1 14 48 59 ec    	vmulps zmm21,zmm13,zmm12
  a238d3:	62 a2 25 48 bc e8    	vfnmadd231ps zmm21,zmm11,zmm16
  a238d9:	62 a1 0c 48 59 f3    	vmulps zmm22,zmm14,zmm19
  a238df:	62 a2 05 48 bc f4    	vfnmadd231ps zmm22,zmm15,zmm20
  a238e5:	62 a1 54 40 58 fe    	vaddps zmm23,zmm21,zmm22
  a238eb:	62 51 24 48 59 dc    	vmulps zmm11,zmm11,zmm12
  a238f1:	62 52 7d 40 b8 dd    	vfmadd231ps zmm11,zmm16,zmm13
  a238f7:	62 31 04 48 59 e3    	vmulps zmm12,zmm15,zmm19
  a238fd:	62 52 5d 40 b8 e6    	vfmadd231ps zmm12,zmm20,zmm14
  a23903:	62 51 24 48 58 ec    	vaddps zmm13,zmm11,zmm12
  a23909:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  a2390f:	62 32 45 40 ac f1    	vfnmadd213ps zmm14,zmm23,zmm17
  a23915:	62 51 7c 48 28 f9    	vmovaps zmm15,zmm9
  a2391b:	62 32 15 48 ac fa    	vfnmadd213ps zmm15,zmm13,zmm18
  a23921:	62 a1 74 00 58 c7    	vaddps xmm16,xmm17,xmm23
  a23927:	62 51 6c 00 58 ed    	vaddps xmm13,xmm18,xmm13
  a2392d:	62 31 14 08 14 e8    	vunpcklps xmm13,xmm13,xmm16
  a23933:	c5 78 11 2c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm13
  a23938:	c4 41 20 5c dc       	vsubps xmm11,xmm11,xmm12
  a2393d:	c4 41 20 59 da       	vmulps xmm11,xmm11,xmm10
  a23942:	c4 41 08 58 e3       	vaddps xmm12,xmm14,xmm11
  a23947:	62 31 54 00 5c ee    	vsubps xmm13,xmm21,xmm22
  a2394d:	c4 41 10 59 ea       	vmulps xmm13,xmm13,xmm10
  a23952:	62 c1 04 08 5c c5    	vsubps xmm16,xmm15,xmm13
  a23958:	62 51 7c 00 14 e4    	vunpcklps xmm12,xmm16,xmm12
  a2395e:	c5 78 11 64 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm12
  a23964:	c4 41 08 5c db       	vsubps xmm11,xmm14,xmm11
  a23969:	c4 41 00 58 e5       	vaddps xmm12,xmm15,xmm13
  a2396e:	c4 41 18 14 db       	vunpcklps xmm11,xmm12,xmm11
  a23973:	c5 78 11 5c 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm11
  a23979:	48 83 c2 30          	add    rdx,0x30
  a2397d:	48 39 d0             	cmp    rax,rdx
  a23980:	0f 85 3a fe ff ff    	jne    a237c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a23986:	c5 f8 77             	vzeroupper
  a23989:	c3                   	ret
