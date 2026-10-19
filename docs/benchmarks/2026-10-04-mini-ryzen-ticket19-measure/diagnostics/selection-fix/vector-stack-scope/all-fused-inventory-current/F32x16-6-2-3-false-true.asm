
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a3a740 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a3a740:	62 f1 7c 48 28 05 36 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68c836]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3a747:	c8 68 ff 
  a3a74a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a3a74e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a3a752:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a3a758:	62 f1 7c 48 28 1d 9e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff68c79e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a3a75f:	c7 68 ff 
  a3a762:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a3a768:	62 f2 65 48 7f e2    	vpermt2ps zmm4,zmm3,zmm2
  a3a76e:	62 f1 7c 48 28 2d 88 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff68c688]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3a775:	c6 68 ff 
  a3a778:	62 f1 7c 48 28 35 be 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff68c6be]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a3a77f:	c6 68 ff 
  a3a782:	48 c1 e2 04          	shl    rdx,0x4
  a3a786:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a3a78a:	31 d2                	xor    edx,edx
  a3a78c:	62 f1 7c 48 28 3d 6a 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff656d6a]        # 91500 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e9b0>
  a3a793:	6d 65 ff 
  a3a796:	62 71 7c 48 28 05 a0 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff656da0]        # 91540 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e9f0>
  a3a79d:	6d 65 ff 
  a3a7a0:	62 72 7d 48 18 0d b6 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff63acb6]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a3a7a7:	ac 63 ff 
  a3a7aa:	c4 62 79 18 15 21 ab 	vbroadcastss xmm10,DWORD PTR [rip+0xffffffffff63ab21]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a3a7b1:	63 ff 
  a3a7b3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a3a7ba:	84 00 00 00 00 00 
  a3a7c0:	c5 7b 10 5c 17 10    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x10]
  a3a7c6:	c5 78 10 24 17       	vmovups xmm12,XMMWORD PTR [rdi+rdx*1]
  a3a7cb:	c5 78 10 6c 17 18    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x18]
  a3a7d1:	62 53 1d 48 18 db 01 	vinsertf32x4 zmm11,zmm12,xmm11,0x1
  a3a7d8:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a3a7de:	62 72 45 48 7f e1    	vpermt2ps zmm12,zmm7,zmm1
  a3a7e4:	62 72 3d 48 7f d9    	vpermt2ps zmm11,zmm8,zmm1
  a3a7ea:	c5 7b 10 74 17 28    	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x28]
  a3a7f0:	62 53 15 48 18 ee 01 	vinsertf32x4 zmm13,zmm13,xmm14,0x1
  a3a7f7:	62 51 7c 48 28 f5    	vmovaps zmm14,zmm13
  a3a7fd:	62 72 45 48 7f f1    	vpermt2ps zmm14,zmm7,zmm1
  a3a803:	62 72 3d 48 7f e9    	vpermt2ps zmm13,zmm8,zmm1
  a3a809:	62 51 1c 48 58 fe    	vaddps zmm15,zmm12,zmm14
  a3a80f:	62 c1 24 48 58 c5    	vaddps zmm16,zmm11,zmm13
  a3a815:	62 51 1c 48 5c e6    	vsubps zmm12,zmm12,zmm14
  a3a81b:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a3a821:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a3a827:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a3a82d:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a3a833:	62 72 65 48 7f e2    	vpermt2ps zmm12,zmm3,zmm2
  a3a839:	62 71 85 48 14 ec    	vunpcklpd zmm13,zmm15,zmm4
  a3a83f:	62 71 85 48 15 f4    	vunpckhpd zmm14,zmm15,zmm4
  a3a845:	62 71 9d 48 14 fc    	vunpcklpd zmm15,zmm12,zmm4
  a3a84b:	62 71 9d 48 15 e4    	vunpckhpd zmm12,zmm12,zmm4
  a3a851:	62 c1 7c 48 28 cd    	vmovaps zmm17,zmm13
  a3a857:	62 c2 55 48 7f cf    	vpermt2ps zmm17,zmm5,zmm15
  a3a85d:	62 52 4d 48 7f ef    	vpermt2ps zmm13,zmm6,zmm15
  a3a863:	62 52 55 48 7f f4    	vpermt2ps zmm14,zmm5,zmm12
  a3a869:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a3a86f:	62 72 7d 48 7f d9    	vpermt2ps zmm11,zmm0,zmm1
  a3a875:	62 e2 65 48 7f c2    	vpermt2ps zmm16,zmm3,zmm2
  a3a87b:	62 72 65 48 7f da    	vpermt2ps zmm11,zmm3,zmm2
  a3a881:	62 71 fd 40 14 e4    	vunpcklpd zmm12,zmm16,zmm4
  a3a887:	62 71 fd 40 15 fc    	vunpckhpd zmm15,zmm16,zmm4
  a3a88d:	62 e1 a5 48 14 c4    	vunpcklpd zmm16,zmm11,zmm4
  a3a893:	62 71 a5 48 15 dc    	vunpckhpd zmm11,zmm11,zmm4
  a3a899:	62 c1 7c 48 28 d4    	vmovaps zmm18,zmm12
  a3a89f:	62 a2 55 48 7f d0    	vpermt2ps zmm18,zmm5,zmm16
  a3a8a5:	62 32 4d 48 7f e0    	vpermt2ps zmm12,zmm6,zmm16
  a3a8ab:	62 52 55 48 7f fb    	vpermt2ps zmm15,zmm5,zmm11
  a3a8b1:	62 71 7c 48 10 59 02 	vmovups zmm11,ZMMWORD PTR [rcx+0x80]
  a3a8b8:	62 e1 7c 48 10 41 03 	vmovups zmm16,ZMMWORD PTR [rcx+0xc0]
  a3a8bf:	62 e1 7c 48 10 59 04 	vmovups zmm19,ZMMWORD PTR [rcx+0x100]
  a3a8c6:	62 e1 7c 48 10 61 05 	vmovups zmm20,ZMMWORD PTR [rcx+0x140]
  a3a8cd:	62 c1 14 48 59 eb    	vmulps zmm21,zmm13,zmm11
  a3a8d3:	62 a2 1d 48 bc e8    	vfnmadd231ps zmm21,zmm12,zmm16
  a3a8d9:	62 a1 0c 48 59 f3    	vmulps zmm22,zmm14,zmm19
  a3a8df:	62 a2 05 48 bc f4    	vfnmadd231ps zmm22,zmm15,zmm20
  a3a8e5:	62 a1 54 40 58 fe    	vaddps zmm23,zmm21,zmm22
  a3a8eb:	62 51 1c 48 59 db    	vmulps zmm11,zmm12,zmm11
  a3a8f1:	62 52 7d 40 b8 dd    	vfmadd231ps zmm11,zmm16,zmm13
  a3a8f7:	62 31 04 48 59 e3    	vmulps zmm12,zmm15,zmm19
  a3a8fd:	62 52 5d 40 b8 e6    	vfmadd231ps zmm12,zmm20,zmm14
  a3a903:	62 51 24 48 58 ec    	vaddps zmm13,zmm11,zmm12
  a3a909:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  a3a90f:	62 32 45 40 ac f1    	vfnmadd213ps zmm14,zmm23,zmm17
  a3a915:	62 51 7c 48 28 f9    	vmovaps zmm15,zmm9
  a3a91b:	62 32 15 48 ac fa    	vfnmadd213ps zmm15,zmm13,zmm18
  a3a921:	62 51 6c 00 58 ed    	vaddps xmm13,xmm18,xmm13
  a3a927:	62 a1 74 00 58 c7    	vaddps xmm16,xmm17,xmm23
  a3a92d:	62 51 7c 00 14 ed    	vunpcklps xmm13,xmm16,xmm13
  a3a933:	c5 78 11 2c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm13
  a3a938:	62 31 54 00 5c ee    	vsubps xmm13,xmm21,xmm22
  a3a93e:	c4 41 10 59 ea       	vmulps xmm13,xmm13,xmm10
  a3a943:	62 c1 04 08 5c c5    	vsubps xmm16,xmm15,xmm13
  a3a949:	c4 41 20 5c dc       	vsubps xmm11,xmm11,xmm12
  a3a94e:	c4 41 20 59 da       	vmulps xmm11,xmm11,xmm10
  a3a953:	c4 41 08 58 e3       	vaddps xmm12,xmm14,xmm11
  a3a958:	62 31 1c 08 14 e0    	vunpcklps xmm12,xmm12,xmm16
  a3a95e:	c5 78 11 64 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm12
  a3a964:	c4 41 00 58 e5       	vaddps xmm12,xmm15,xmm13
  a3a969:	c4 41 08 5c db       	vsubps xmm11,xmm14,xmm11
  a3a96e:	c4 41 20 14 dc       	vunpcklps xmm11,xmm11,xmm12
  a3a973:	c5 78 11 5c 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm11
  a3a979:	48 83 c2 30          	add    rdx,0x30
  a3a97d:	48 39 d0             	cmp    rax,rdx
  a3a980:	0f 85 3a fe ff ff    	jne    a3a7c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a3a986:	c5 f8 77             	vzeroupper
  a3a989:	c3                   	ret
