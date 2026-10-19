
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a516c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a516c0:	55                   	push   rbp
  a516c1:	48 89 e5             	mov    rbp,rsp
  a516c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a516c8:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a516cf:	62 f1 7c 48 28 05 a7 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6758a7]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a516d6:	58 67 ff 
  a516d9:	62 f1 7c 48 28 0d 1d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff67581d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a516e0:	58 67 ff 
  a516e3:	62 f1 7c 48 28 15 13 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff675713]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a516ea:	57 67 ff 
  a516ed:	62 f1 7c 48 28 1d 49 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff675749]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a516f4:	57 67 ff 
  a516f7:	48 c1 e2 06          	shl    rdx,0x6
  a516fb:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a516ff:	31 d2                	xor    edx,edx
  a51701:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a51706:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a5170b:	62 f1 7c 48 28 25 ab 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6413ab]        # 92ac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ff70>
  a51712:	13 64 ff 
  a51715:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a51719:	62 f2 7d 48 18 35 3d 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff623d3d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a51720:	3d 62 ff 
  a51723:	62 f2 7d 48 18 3d a7 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff623ba7]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a5172a:	3b 62 ff 
  a5172d:	62 71 7c 48 28 05 c9 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6413c9]        # 92b00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ffb0>
  a51734:	13 64 ff 
  a51737:	c4 41 30 57 c9       	vxorps xmm9,xmm9,xmm9
  a5173c:	62 52 7d 48 7f c9    	vpermt2ps zmm9,zmm0,zmm9
  a51742:	62 71 7c 48 28 15 f4 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6413f4]        # 92b40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fff0>
  a51749:	13 64 ff 
  a5174c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  a51750:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a51755:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a5175a:	c5 7c 10 1c 17       	vmovups ymm11,YMMWORD PTR [rdi+rdx*1]
  a5175f:	c5 7c 10 74 17 20    	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x20]
  a51765:	c5 7c 10 7c 17 40    	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0x40]
  a5176b:	c5 7c 10 64 17 60    	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x60]
  a51771:	62 51 7c 48 28 eb    	vmovaps zmm13,zmm11
  a51777:	62 72 5d 48 7f ed    	vpermt2ps zmm13,zmm4,zmm5
  a5177d:	62 72 3d 48 7f dd    	vpermt2ps zmm11,zmm8,zmm5
  a51783:	62 c1 7c 48 28 c6    	vmovaps zmm16,zmm14
  a51789:	62 e2 5d 48 7f c5    	vpermt2ps zmm16,zmm4,zmm5
  a5178f:	62 72 3d 48 7f f5    	vpermt2ps zmm14,zmm8,zmm5
  a51795:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a5179b:	62 e2 5d 48 7f cd    	vpermt2ps zmm17,zmm4,zmm5
  a517a1:	62 72 3d 48 7f fd    	vpermt2ps zmm15,zmm8,zmm5
  a517a7:	62 c1 7c 48 28 d4    	vmovaps zmm18,zmm12
  a517ad:	62 e2 5d 48 7f d5    	vpermt2ps zmm18,zmm4,zmm5
  a517b3:	62 e1 7c 28 10 5c 17 	vmovups ymm19,YMMWORD PTR [rdi+rdx*1+0x80]
  a517ba:	04 
  a517bb:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a517c1:	62 e2 5d 48 7f e5    	vpermt2ps zmm20,zmm4,zmm5
  a517c7:	62 e2 3d 48 7f dd    	vpermt2ps zmm19,zmm8,zmm5
  a517cd:	62 e1 7c 28 10 6c 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1+0xa0]
  a517d4:	05 
  a517d5:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a517db:	62 e2 5d 48 7f f5    	vpermt2ps zmm22,zmm4,zmm5
  a517e1:	62 e2 3d 48 7f ed    	vpermt2ps zmm21,zmm8,zmm5
  a517e7:	62 a1 74 40 58 fc    	vaddps zmm23,zmm17,zmm20
  a517ed:	62 21 14 48 58 c7    	vaddps zmm24,zmm13,zmm23
  a517f3:	62 21 4c 40 58 c8    	vaddps zmm25,zmm22,zmm16
  a517f9:	62 32 4d 48 bc ef    	vfnmadd231ps zmm13,zmm6,zmm23
  a517ff:	62 a1 04 48 58 fb    	vaddps zmm23,zmm15,zmm19
  a51805:	62 31 04 48 5c fb    	vsubps zmm15,zmm15,zmm19
  a5180b:	62 81 6c 40 58 d9    	vaddps zmm19,zmm18,zmm25
  a51811:	62 82 4d 48 bc d1    	vfnmadd231ps zmm18,zmm6,zmm25
  a51817:	62 41 54 40 58 ce    	vaddps zmm25,zmm21,zmm14
  a5181d:	62 51 54 40 5c f6    	vsubps zmm14,zmm21,zmm14
  a51823:	62 a1 24 48 58 ef    	vaddps zmm21,zmm11,zmm23
  a51829:	62 32 4d 48 bc df    	vfnmadd231ps zmm11,zmm6,zmm23
  a5182f:	62 72 3d 48 7f e5    	vpermt2ps zmm12,zmm8,zmm5
  a51835:	62 a1 74 40 5c cc    	vsubps zmm17,zmm17,zmm20
  a5183b:	62 81 1c 48 58 e1    	vaddps zmm20,zmm12,zmm25
  a51841:	62 12 4d 48 bc e1    	vfnmadd231ps zmm12,zmm6,zmm25
  a51847:	62 71 04 48 59 ff    	vmulps zmm15,zmm15,zmm7
  a5184d:	62 a1 4c 40 5c c0    	vsubps zmm16,zmm22,zmm16
  a51853:	62 c1 14 48 58 f7    	vaddps zmm22,zmm13,zmm15
  a51859:	62 71 0c 48 59 f7    	vmulps zmm14,zmm14,zmm7
  a5185f:	62 51 14 48 5c ef    	vsubps zmm13,zmm13,zmm15
  a51865:	62 51 6c 40 58 fe    	vaddps zmm15,zmm18,zmm14
  a5186b:	62 e1 74 40 59 cf    	vmulps zmm17,zmm17,zmm7
  a51871:	62 51 6c 40 5c f6    	vsubps zmm14,zmm18,zmm14
  a51877:	62 a1 24 48 5c d1    	vsubps zmm18,zmm11,zmm17
  a5187d:	62 e1 7c 40 59 c7    	vmulps zmm16,zmm16,zmm7
  a51883:	62 51 74 40 58 db    	vaddps zmm11,zmm17,zmm11
  a51889:	62 a1 1c 48 5c c8    	vsubps zmm17,zmm12,zmm16
  a5188f:	62 51 7c 40 58 e4    	vaddps zmm12,zmm16,zmm12
  a51895:	62 a1 3c 40 58 c3    	vaddps zmm16,zmm24,zmm19
  a5189b:	62 a1 3c 40 5c db    	vsubps zmm19,zmm24,zmm19
  a518a1:	62 a1 54 40 58 fc    	vaddps zmm23,zmm21,zmm20
  a518a7:	62 a1 54 40 5c e4    	vsubps zmm20,zmm21,zmm20
  a518ad:	62 c1 4c 40 5c ef    	vsubps zmm21,zmm22,zmm15
  a518b3:	62 51 4c 40 58 ff    	vaddps zmm15,zmm22,zmm15
  a518b9:	62 a1 6c 40 5c f1    	vsubps zmm22,zmm18,zmm17
  a518bf:	62 a1 6c 40 58 c9    	vaddps zmm17,zmm18,zmm17
  a518c5:	62 c1 14 48 58 d6    	vaddps zmm18,zmm13,zmm14
  a518cb:	62 51 14 48 5c ee    	vsubps zmm13,zmm13,zmm14
  a518d1:	62 41 24 48 58 c4    	vaddps zmm24,zmm11,zmm12
  a518d7:	62 41 24 48 5c cc    	vsubps zmm25,zmm11,zmm12
  a518dd:	62 e2 7d 48 7f c5    	vpermt2ps zmm16,zmm0,zmm5
  a518e3:	62 e2 7d 48 7f ed    	vpermt2ps zmm21,zmm0,zmm5
  a518e9:	62 e2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm5
  a518ef:	62 e2 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm5
  a518f5:	62 72 7d 48 7f fd    	vpermt2ps zmm15,zmm0,zmm5
  a518fb:	62 72 7d 48 7f ed    	vpermt2ps zmm13,zmm0,zmm5
  a51901:	62 c2 75 48 7f c7    	vpermt2ps zmm16,zmm1,zmm15
  a51907:	62 c2 75 48 7f ed    	vpermt2ps zmm21,zmm1,zmm13
  a5190d:	62 c2 75 48 7f d1    	vpermt2ps zmm18,zmm1,zmm9
  a51913:	62 c2 75 48 7f d9    	vpermt2ps zmm19,zmm1,zmm9
  a51919:	62 31 fd 40 14 f2    	vunpcklpd zmm14,zmm16,zmm18
  a5191f:	62 31 fd 40 15 ea    	vunpckhpd zmm13,zmm16,zmm18
  a51925:	62 31 d5 40 14 e3    	vunpcklpd zmm12,zmm21,zmm19
  a5192b:	62 31 d5 40 15 fb    	vunpckhpd zmm15,zmm21,zmm19
  a51931:	62 51 7c 48 28 de    	vmovaps zmm11,zmm14
  a51937:	62 52 65 48 7f f4    	vpermt2ps zmm14,zmm3,zmm12
  a5193d:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a51943:	62 c2 6d 48 7f c7    	vpermt2ps zmm16,zmm2,zmm15
  a51949:	62 52 65 48 7f ef    	vpermt2ps zmm13,zmm3,zmm15
  a5194f:	62 e2 7d 48 7f fd    	vpermt2ps zmm23,zmm0,zmm5
  a51955:	62 e2 7d 48 7f f5    	vpermt2ps zmm22,zmm0,zmm5
  a5195b:	62 62 7d 48 7f c5    	vpermt2ps zmm24,zmm0,zmm5
  a51961:	62 e2 7d 48 7f e5    	vpermt2ps zmm20,zmm0,zmm5
  a51967:	62 e2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm5
  a5196d:	62 62 7d 48 7f cd    	vpermt2ps zmm25,zmm0,zmm5
  a51973:	62 a2 75 48 7f f9    	vpermt2ps zmm23,zmm1,zmm17
  a51979:	62 82 75 48 7f f1    	vpermt2ps zmm22,zmm1,zmm25
  a5197f:	62 42 75 48 7f c1    	vpermt2ps zmm24,zmm1,zmm9
  a51985:	62 c2 75 48 7f e1    	vpermt2ps zmm20,zmm1,zmm9
  a5198b:	62 11 c5 40 14 f8    	vunpcklpd zmm15,zmm23,zmm24
  a51991:	62 81 c5 40 15 c8    	vunpckhpd zmm17,zmm23,zmm24
  a51997:	62 a1 cd 40 14 d4    	vunpcklpd zmm18,zmm22,zmm20
  a5199d:	62 a1 cd 40 15 dc    	vunpckhpd zmm19,zmm22,zmm20
  a519a3:	62 c1 7c 48 28 e7    	vmovaps zmm20,zmm15
  a519a9:	62 32 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm18
  a519af:	62 a1 7c 48 28 e9    	vmovaps zmm21,zmm17
  a519b5:	62 a2 6d 48 7f eb    	vpermt2ps zmm21,zmm2,zmm19
  a519bb:	62 a2 65 48 7f cb    	vpermt2ps zmm17,zmm3,zmm19
  a519c1:	62 e1 7c 48 10 59 04 	vmovups zmm19,ZMMWORD PTR [rcx+0x100]
  a519c8:	62 e1 7c 48 10 71 05 	vmovups zmm22,ZMMWORD PTR [rcx+0x140]
  a519cf:	62 a1 7c 40 59 fb    	vmulps zmm23,zmm16,zmm19
  a519d5:	62 a2 55 40 bc fe    	vfnmadd231ps zmm23,zmm21,zmm22
  a519db:	62 a1 54 40 59 db    	vmulps zmm19,zmm21,zmm19
  a519e1:	62 e1 7c 48 10 69 02 	vmovups zmm21,ZMMWORD PTR [rcx+0x80]
  a519e8:	62 a2 4d 40 b8 d8    	vfmadd231ps zmm19,zmm22,zmm16
  a519ee:	62 e1 7c 48 10 41 03 	vmovups zmm16,ZMMWORD PTR [rcx+0xc0]
  a519f5:	62 a1 0c 48 59 f5    	vmulps zmm22,zmm14,zmm21
  a519fb:	62 a2 05 48 bc f0    	vfnmadd231ps zmm22,zmm15,zmm16
  a51a01:	62 31 04 48 59 fd    	vmulps zmm15,zmm15,zmm21
  a51a07:	62 e1 7c 48 10 69 06 	vmovups zmm21,ZMMWORD PTR [rcx+0x180]
  a51a0e:	62 52 7d 40 b8 fe    	vfmadd231ps zmm15,zmm16,zmm14
  a51a14:	62 71 7c 48 10 71 07 	vmovups zmm14,ZMMWORD PTR [rcx+0x1c0]
  a51a1b:	62 a1 14 48 59 c5    	vmulps zmm16,zmm13,zmm21
  a51a21:	62 c2 75 40 bc c6    	vfnmadd231ps zmm16,zmm17,zmm14
  a51a27:	62 a1 74 40 59 cd    	vmulps zmm17,zmm17,zmm21
  a51a2d:	62 c2 0d 48 b8 cd    	vfmadd231ps zmm17,zmm14,zmm13
  a51a33:	62 52 6d 48 7f dc    	vpermt2ps zmm11,zmm2,zmm12
  a51a39:	62 a2 6d 48 7f e2    	vpermt2ps zmm20,zmm2,zmm18
  a51a3f:	62 31 24 48 58 e7    	vaddps zmm12,zmm11,zmm23
  a51a45:	62 31 24 48 5c df    	vsubps zmm11,zmm11,zmm23
  a51a4b:	62 31 04 48 58 e9    	vaddps zmm13,zmm15,zmm17
  a51a51:	62 31 04 48 5c f1    	vsubps zmm14,zmm15,zmm17
  a51a57:	62 31 64 40 58 fc    	vaddps zmm15,zmm19,zmm20
  a51a5d:	62 a1 5c 40 5c cb    	vsubps zmm17,zmm20,zmm19
  a51a63:	62 a1 4c 40 58 d0    	vaddps zmm18,zmm22,zmm16
  a51a69:	62 a1 7c 40 5c c6    	vsubps zmm16,zmm16,zmm22
  a51a6f:	62 c1 24 48 58 de    	vaddps zmm19,zmm11,zmm14
  a51a75:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a51a7b:	62 31 74 40 58 f0    	vaddps zmm14,zmm17,zmm16
  a51a81:	62 a1 74 40 5c c0    	vsubps zmm16,zmm17,zmm16
  a51a87:	62 a1 1c 48 5c ca    	vsubps zmm17,zmm12,zmm18
  a51a8d:	62 31 1c 48 58 e2    	vaddps zmm12,zmm12,zmm18
  a51a93:	62 c1 04 48 5c d5    	vsubps zmm18,zmm15,zmm13
  a51a99:	62 51 04 48 58 ed    	vaddps zmm13,zmm15,zmm13
  a51a9f:	62 52 2d 48 7f e5    	vpermt2ps zmm12,zmm10,zmm13
  a51aa5:	62 73 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm12,0x2
  a51aac:	02 02 
  a51aae:	c5 7c 11 24 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm12
  a51ab3:	62 c2 2d 48 7f de    	vpermt2ps zmm19,zmm10,zmm14
  a51ab9:	62 e3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm19,0x2
  a51ac0:	05 02 
  a51ac2:	62 e1 7c 28 11 9c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm19
  a51ac9:	30 00 00 00 
  a51acd:	62 a2 2d 48 7f ca    	vpermt2ps zmm17,zmm10,zmm18
  a51ad3:	62 e3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm17,0x2
  a51ada:	08 02 
  a51adc:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm17
  a51ae3:	03 
  a51ae4:	62 32 2d 48 7f d8    	vpermt2ps zmm11,zmm10,zmm16
  a51aea:	62 73 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm11,0x2
  a51af1:	0b 02 
  a51af3:	c5 7c 11 9c 16 90 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm11
  a51afa:	00 00 
  a51afc:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  a51b03:	48 39 d0             	cmp    rax,rdx
  a51b06:	0f 85 44 fc ff ff    	jne    a51750 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x90>
  a51b0c:	48 89 ec             	mov    rsp,rbp
  a51b0f:	5d                   	pop    rbp
  a51b10:	c5 f8 77             	vzeroupper
  a51b13:	c3                   	ret
