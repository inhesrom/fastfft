
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000979740 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  979740:	62 f1 fd 48 10 05 1e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff74d61e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  979747:	d6 74 ff 
  97974a:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  97974e:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  979752:	62 f2 fd 48 7f d2    	vpermt2pd zmm2,zmm0,zmm2
  979758:	62 f1 fd 48 10 1d 86 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff74d586]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  97975f:	d5 74 ff 
  979762:	62 f1 fd 48 10 25 bc 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff74d5bc]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  979769:	d5 74 ff 
  97976c:	48 c1 e2 06          	shl    rdx,0x6
  979770:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  979774:	31 d2                	xor    edx,edx
  979776:	62 f1 fd 48 28 2d c0 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff70dfc0]        # 87740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14bf0>
  97977d:	df 70 ff 
  979780:	62 f2 fd 48 19 35 0e 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff6fb30e]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  979787:	b3 6f ff 
  97978a:	62 f1 fd 48 28 3d ec 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff70dfec]        # 87780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14c30>
  979791:	df 70 ff 
  979794:	62 72 fd 48 19 05 82 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff6fb482]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  97979b:	b4 6f ff 
  97979e:	62 71 fd 48 28 0d 18 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff70e018]        # 877c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14c70>
  9797a5:	e0 70 ff 
  9797a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  9797af:	00 
  9797b0:	62 71 fd 48 10 14 17 	vmovupd zmm10,ZMMWORD PTR [rdi+rdx*1]
  9797b7:	62 71 fd 48 10 5c 17 	vmovupd zmm11,ZMMWORD PTR [rdi+rdx*1+0x40]
  9797be:	01 
  9797bf:	62 71 fd 48 10 64 17 	vmovupd zmm12,ZMMWORD PTR [rdi+rdx*1+0x80]
  9797c6:	02 
  9797c7:	62 51 fd 48 28 ea    	vmovapd zmm13,zmm10
  9797cd:	62 72 d5 48 7f e9    	vpermt2pd zmm13,zmm5,zmm1
  9797d3:	62 72 c5 48 7f d1    	vpermt2pd zmm10,zmm7,zmm1
  9797d9:	62 51 fd 48 28 f3    	vmovapd zmm14,zmm11
  9797df:	62 72 d5 48 7f f1    	vpermt2pd zmm14,zmm5,zmm1
  9797e5:	62 72 c5 48 7f d9    	vpermt2pd zmm11,zmm7,zmm1
  9797eb:	62 51 fd 48 28 fc    	vmovapd zmm15,zmm12
  9797f1:	62 72 d5 48 7f f9    	vpermt2pd zmm15,zmm5,zmm1
  9797f7:	62 72 c5 48 7f e1    	vpermt2pd zmm12,zmm7,zmm1
  9797fd:	62 c1 a5 48 58 c4    	vaddpd zmm16,zmm11,zmm12
  979803:	62 a1 ad 48 58 c8    	vaddpd zmm17,zmm10,zmm16
  979809:	62 c1 8d 48 58 d7    	vaddpd zmm18,zmm14,zmm15
  97980f:	62 a1 95 48 58 da    	vaddpd zmm19,zmm13,zmm18
  979815:	62 32 cd 48 bc d0    	vfnmadd231pd zmm10,zmm6,zmm16
  97981b:	62 51 8d 48 5c f7    	vsubpd zmm14,zmm14,zmm15
  979821:	62 51 8d 48 59 f0    	vmulpd zmm14,zmm14,zmm8
  979827:	62 51 ad 48 58 fe    	vaddpd zmm15,zmm10,zmm14
  97982d:	62 32 cd 48 bc ea    	vfnmadd231pd zmm13,zmm6,zmm18
  979833:	62 51 a5 48 5c dc    	vsubpd zmm11,zmm11,zmm12
  979839:	62 51 a5 48 59 d8    	vmulpd zmm11,zmm11,zmm8
  97983f:	62 51 95 48 5c e3    	vsubpd zmm12,zmm13,zmm11
  979845:	62 51 ad 48 5c d6    	vsubpd zmm10,zmm10,zmm14
  97984b:	62 51 a5 48 58 dd    	vaddpd zmm11,zmm11,zmm13
  979851:	62 e2 fd 48 7f c9    	vpermt2pd zmm17,zmm0,zmm1
  979857:	62 72 fd 48 7f f9    	vpermt2pd zmm15,zmm0,zmm1
  97985d:	62 72 fd 48 7f d1    	vpermt2pd zmm10,zmm0,zmm1
  979863:	62 31 fd 48 28 e9    	vmovapd zmm13,zmm17
  979869:	62 52 e5 48 7f ea    	vpermt2pd zmm13,zmm3,zmm10
  97986f:	62 c2 dd 48 7f ca    	vpermt2pd zmm17,zmm4,zmm10
  979875:	62 51 fd 48 28 d7    	vmovapd zmm10,zmm15
  97987b:	62 72 e5 48 7f d2    	vpermt2pd zmm10,zmm3,zmm2
  979881:	62 72 dd 48 7f fa    	vpermt2pd zmm15,zmm4,zmm2
  979887:	62 51 95 48 14 f2    	vunpcklpd zmm14,zmm13,zmm10
  97988d:	62 51 95 48 15 d2    	vunpckhpd zmm10,zmm13,zmm10
  979893:	62 51 f5 40 14 ef    	vunpcklpd zmm13,zmm17,zmm15
  979899:	62 51 f5 40 15 ff    	vunpckhpd zmm15,zmm17,zmm15
  97989f:	62 e2 fd 48 7f d9    	vpermt2pd zmm19,zmm0,zmm1
  9798a5:	62 72 fd 48 7f e1    	vpermt2pd zmm12,zmm0,zmm1
  9798ab:	62 72 fd 48 7f d9    	vpermt2pd zmm11,zmm0,zmm1
  9798b1:	62 a1 fd 48 28 c3    	vmovapd zmm16,zmm19
  9798b7:	62 c2 e5 48 7f c3    	vpermt2pd zmm16,zmm3,zmm11
  9798bd:	62 c2 dd 48 7f db    	vpermt2pd zmm19,zmm4,zmm11
  9798c3:	62 51 fd 48 28 dc    	vmovapd zmm11,zmm12
  9798c9:	62 72 e5 48 7f da    	vpermt2pd zmm11,zmm3,zmm2
  9798cf:	62 72 dd 48 7f e2    	vpermt2pd zmm12,zmm4,zmm2
  9798d5:	62 c1 fd 40 14 cb    	vunpcklpd zmm17,zmm16,zmm11
  9798db:	62 51 fd 40 15 db    	vunpckhpd zmm11,zmm16,zmm11
  9798e1:	62 c1 e5 40 14 c4    	vunpcklpd zmm16,zmm19,zmm12
  9798e7:	62 51 e5 40 15 e4    	vunpckhpd zmm12,zmm19,zmm12
  9798ed:	62 e1 fd 48 10 51 02 	vmovupd zmm18,ZMMWORD PTR [rcx+0x80]
  9798f4:	62 e1 fd 48 10 59 03 	vmovupd zmm19,ZMMWORD PTR [rcx+0xc0]
  9798fb:	62 e1 fd 48 10 61 04 	vmovupd zmm20,ZMMWORD PTR [rcx+0x100]
  979902:	62 e1 fd 48 10 69 05 	vmovupd zmm21,ZMMWORD PTR [rcx+0x140]
  979909:	62 e1 fd 48 10 71 06 	vmovupd zmm22,ZMMWORD PTR [rcx+0x180]
  979910:	62 e1 fd 48 10 79 07 	vmovupd zmm23,ZMMWORD PTR [rcx+0x1c0]
  979917:	62 21 95 48 59 c4    	vmulpd zmm24,zmm13,zmm20
  97991d:	62 22 fd 40 bc c5    	vfnmadd231pd zmm24,zmm16,zmm21
  979923:	62 01 8d 48 58 c8    	vaddpd zmm25,zmm14,zmm24
  979929:	62 21 ad 48 59 d2    	vmulpd zmm26,zmm10,zmm18
  97992f:	62 22 a5 48 bc d3    	vfnmadd231pd zmm26,zmm11,zmm19
  979935:	62 21 85 48 59 de    	vmulpd zmm27,zmm15,zmm22
  97993b:	62 22 9d 48 bc df    	vfnmadd231pd zmm27,zmm12,zmm23
  979941:	62 01 ad 40 58 e3    	vaddpd zmm28,zmm26,zmm27
  979947:	62 a1 fd 40 59 c4    	vmulpd zmm16,zmm16,zmm20
  97994d:	62 a2 95 48 b8 c5    	vfmadd231pd zmm16,zmm13,zmm21
  979953:	62 31 fd 40 58 e9    	vaddpd zmm13,zmm16,zmm17
  979959:	62 31 a5 48 59 da    	vmulpd zmm11,zmm11,zmm18
  97995f:	62 32 ad 48 b8 db    	vfmadd231pd zmm11,zmm10,zmm19
  979965:	62 31 9d 48 59 d6    	vmulpd zmm10,zmm12,zmm22
  97996b:	62 32 85 48 b8 d7    	vfmadd231pd zmm10,zmm15,zmm23
  979971:	62 51 a5 48 58 e2    	vaddpd zmm12,zmm11,zmm10
  979977:	62 11 8d 48 5c f0    	vsubpd zmm14,zmm14,zmm24
  97997d:	62 51 a5 48 5c d2    	vsubpd zmm10,zmm11,zmm10
  979983:	62 51 8d 48 58 da    	vaddpd zmm11,zmm14,zmm10
  979989:	62 31 f5 40 5c f8    	vsubpd zmm15,zmm17,zmm16
  97998f:	62 81 a5 40 5c c2    	vsubpd zmm16,zmm27,zmm26
  979995:	62 a1 85 48 58 c8    	vaddpd zmm17,zmm15,zmm16
  97999b:	62 81 b5 40 5c d4    	vsubpd zmm18,zmm25,zmm28
  9799a1:	62 c1 95 48 5c dc    	vsubpd zmm19,zmm13,zmm12
  9799a7:	62 51 8d 48 5c d2    	vsubpd zmm10,zmm14,zmm10
  9799ad:	62 31 85 48 5c f0    	vsubpd zmm14,zmm15,zmm16
  9799b3:	62 51 95 48 58 e4    	vaddpd zmm12,zmm13,zmm12
  9799b9:	62 11 b5 40 58 ec    	vaddpd zmm13,zmm25,zmm28
  9799bf:	62 52 b5 48 7f e5    	vpermt2pd zmm12,zmm9,zmm13
  9799c5:	62 73 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm12,0x2
  9799cc:	02 02 
  9799ce:	c5 7d 11 24 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm12
  9799d3:	62 c2 b5 48 7f cb    	vpermt2pd zmm17,zmm9,zmm11
  9799d9:	62 e3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm17,0x2
  9799e0:	05 02 
  9799e2:	62 e1 fd 28 11 8c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm17
  9799e9:	30 00 00 00 
  9799ed:	62 a2 b5 48 7f da    	vpermt2pd zmm19,zmm9,zmm18
  9799f3:	62 e3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm19,0x2
  9799fa:	08 02 
  9799fc:	62 e1 fd 28 11 5c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm19
  979a03:	03 
  979a04:	62 52 b5 48 7f f2    	vpermt2pd zmm14,zmm9,zmm10
  979a0a:	62 73 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm14,0x2
  979a11:	0b 02 
  979a13:	c5 7d 11 b4 16 90 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm14
  979a1a:	00 00 
  979a1c:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  979a23:	48 39 d0             	cmp    rax,rdx
  979a26:	0f 85 84 fd ff ff    	jne    9797b0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  979a2c:	c5 f8 77             	vzeroupper
  979a2f:	c3                   	ret
