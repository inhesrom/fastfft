
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a0c800 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a0c800:	55                   	push   rbp
  a0c801:	48 89 e5             	mov    rbp,rsp
  a0c804:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a0c808:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a0c80f:	62 f1 7c 48 28 05 67 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6ba767]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a0c816:	a7 6b ff 
  a0c819:	62 f1 7c 48 28 0d dd 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6ba6dd]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0c820:	a6 6b ff 
  a0c823:	62 f1 7c 48 28 15 13 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6ba713]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a0c82a:	a7 6b ff 
  a0c82d:	62 e1 7c 48 28 3d c9 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6ba5c9]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0c834:	a5 6b ff 
  a0c837:	62 61 7c 48 28 05 ff 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff6ba5ff]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a0c83e:	a5 6b ff 
  a0c841:	48 c1 e2 05          	shl    rdx,0x5
  a0c845:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a0c849:	31 d2                	xor    edx,edx
  a0c84b:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a0c850:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a0c855:	62 61 7c 48 28 0d 21 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff682221]        # 8ea80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bf30>
  a0c85c:	22 68 ff 
  a0c85f:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a0c863:	62 f2 7d 48 18 3d f3 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff668bf3]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0c86a:	8b 66 ff 
  a0c86d:	62 72 7d 48 18 05 5d 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff668a5d]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0c874:	8a 66 ff 
  a0c877:	62 61 7c 48 28 15 3f 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff68223f]        # 8eac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bf70>
  a0c87e:	22 68 ff 
  a0c881:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  a0c886:	62 52 7d 48 7f d2    	vpermt2ps zmm10,zmm0,zmm10
  a0c88c:	62 71 7c 48 28 1d 6a 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff68226a]        # 8eb00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bfb0>
  a0c893:	22 68 ff 
  a0c896:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a0c89d:	00 00 00 
  a0c8a0:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a0c8a5:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a0c8aa:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  a0c8af:	c5 78 10 6c 17 20    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x20]
  a0c8b5:	c4 63 11 21 6c 17 24 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x24],0x10
  a0c8bc:	10 
  a0c8bd:	c4 62 79 18 74 17 28 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x28]
  a0c8c4:	c5 78 10 7c 17 50    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x50]
  a0c8ca:	c4 63 01 21 7c 17 54 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0x54],0x10
  a0c8d1:	10 
  a0c8d2:	c4 43 09 0c ed 03    	vblendps xmm13,xmm14,xmm13,0x3
  a0c8d8:	c4 62 79 18 74 17 58 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x58]
  a0c8df:	c4 63 11 21 6c 17 2c 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x2c],0x30
  a0c8e6:	30 
  a0c8e7:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x30]
  a0c8ee:	30 00 00 00 
  a0c8f2:	c4 43 09 0c f7 03    	vblendps xmm14,xmm14,xmm15,0x3
  a0c8f8:	c4 63 09 21 74 17 5c 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x5c],0x30
  a0c8ff:	30 
  a0c900:	c5 78 10 bc 17 80 00 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x80]
  a0c907:	00 00 
  a0c909:	c4 63 01 21 bc 17 84 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0x84],0x10
  a0c910:	00 00 00 10 
  a0c914:	62 53 1d 48 18 e5 02 	vinsertf32x4 zmm12,zmm12,xmm13,0x2
  a0c91b:	62 c3 7d 40 18 c6 02 	vinsertf32x4 zmm16,zmm16,xmm14,0x2
  a0c922:	c4 62 79 18 b4 17 88 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x88]
  a0c929:	00 00 00 
  a0c92c:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a0c932:	c4 43 09 0c f7 03    	vblendps xmm14,xmm14,xmm15,0x3
  a0c938:	c4 63 09 21 b4 17 8c 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x8c],0x30
  a0c93f:	00 00 00 30 
  a0c943:	62 72 2d 40 7f e6    	vpermt2ps zmm12,zmm26,zmm6
  a0c949:	c5 7c 10 7c 17 60    	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0x60]
  a0c94f:	62 c3 05 48 18 de 02 	vinsertf32x4 zmm19,zmm15,xmm14,0x2
  a0c956:	c5 7c 10 b4 17 90 00 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x90]
  a0c95d:	00 00 
  a0c95f:	62 31 7c 48 28 f8    	vmovaps zmm15,zmm16
  a0c965:	62 e1 7c 08 10 4c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0xb0]
  a0c96c:	0b 
  a0c96d:	62 f3 75 00 21 5c 17 	vinsertps xmm3,xmm17,DWORD PTR [rdi+rdx*1+0xb4],0x10
  a0c974:	2d 10 
  a0c976:	62 e2 2d 40 7f c6    	vpermt2ps zmm16,zmm26,zmm6
  a0c97c:	c4 e2 79 18 a4 17 b8 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0xb8]
  a0c983:	00 00 00 
  a0c986:	c4 e3 59 0c db 03    	vblendps xmm3,xmm4,xmm3,0x3
  a0c98c:	62 a1 7c 48 28 d3    	vmovaps zmm18,zmm19
  a0c992:	c4 e3 61 21 9c 17 bc 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0xbc],0x30
  a0c999:	00 00 00 30 
  a0c99d:	62 73 0d 48 18 f3 02 	vinsertf32x4 zmm14,zmm14,xmm3,0x2
  a0c9a4:	62 e2 2d 40 7f de    	vpermt2ps zmm19,zmm26,zmm6
  a0c9aa:	c5 f8 10 9c 17 e0 00 	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0xe0]
  a0c9b1:	00 00 
  a0c9b3:	c4 e3 61 21 9c 17 e4 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0xe4],0x10
  a0c9ba:	00 00 00 10 
  a0c9be:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a0c9c4:	c5 fc 10 a4 17 c0 00 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0xc0]
  a0c9cb:	00 00 
  a0c9cd:	c4 e2 79 18 ac 17 e8 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0xe8]
  a0c9d4:	00 00 00 
  a0c9d7:	62 72 2d 40 7f f6    	vpermt2ps zmm14,zmm26,zmm6
  a0c9dd:	c4 e3 51 0c db 03    	vblendps xmm3,xmm5,xmm3,0x3
  a0c9e3:	c4 e3 61 21 9c 17 ec 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0xec],0x30
  a0c9ea:	00 00 00 30 
  a0c9ee:	62 72 35 40 7f ee    	vpermt2ps zmm13,zmm25,zmm6
  a0c9f4:	62 f3 5d 48 18 db 02 	vinsertf32x4 zmm3,zmm4,xmm3,0x2
  a0c9fb:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a0ca01:	62 f2 2d 40 7f de    	vpermt2ps zmm3,zmm26,zmm6
  a0ca07:	62 72 35 40 7f fe    	vpermt2ps zmm15,zmm25,zmm6
  a0ca0d:	c5 f8 10 ac 17 10 01 	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x110]
  a0ca14:	00 00 
  a0ca16:	c4 e3 51 21 ac 17 14 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x114],0x10
  a0ca1d:	01 00 00 10 
  a0ca21:	62 e2 35 40 7f d6    	vpermt2ps zmm18,zmm25,zmm6
  a0ca27:	62 e1 7c 28 10 a4 17 	vmovups ymm20,YMMWORD PTR [rdi+rdx*1+0xf0]
  a0ca2e:	f0 00 00 00 
  a0ca32:	c4 62 79 18 8c 17 18 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0x118]
  a0ca39:	01 00 00 
  a0ca3c:	62 e2 35 40 7f ce    	vpermt2ps zmm17,zmm25,zmm6
  a0ca42:	c4 e3 31 0c ed 03    	vblendps xmm5,xmm9,xmm5,0x3
  a0ca48:	c4 e3 51 21 ac 17 1c 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x11c],0x30
  a0ca4f:	01 00 00 30 
  a0ca53:	62 f2 35 40 7f e6    	vpermt2ps zmm4,zmm25,zmm6
  a0ca59:	62 f3 5d 40 18 ed 02 	vinsertf32x4 zmm5,zmm20,xmm5,0x2
  a0ca60:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a0ca66:	62 f2 2d 40 7f ee    	vpermt2ps zmm5,zmm26,zmm6
  a0ca6c:	62 72 35 40 7f ce    	vpermt2ps zmm9,zmm25,zmm6
  a0ca72:	62 e1 6c 40 58 e4    	vaddps zmm20,zmm18,zmm4
  a0ca78:	62 e1 64 40 58 eb    	vaddps zmm21,zmm19,zmm3
  a0ca7e:	62 f1 64 40 5c db    	vsubps zmm3,zmm19,zmm3
  a0ca84:	62 a1 14 48 58 dc    	vaddps zmm19,zmm13,zmm20
  a0ca8a:	62 a1 54 48 58 f0    	vaddps zmm22,zmm5,zmm16
  a0ca90:	62 b1 54 48 5c e8    	vsubps zmm5,zmm5,zmm16
  a0ca96:	62 c1 34 48 58 c7    	vaddps zmm16,zmm9,zmm15
  a0ca9c:	62 32 45 48 bc ec    	vfnmadd231ps zmm13,zmm7,zmm20
  a0caa2:	62 a1 1c 48 58 e5    	vaddps zmm20,zmm12,zmm21
  a0caa8:	62 32 45 48 bc e5    	vfnmadd231ps zmm12,zmm7,zmm21
  a0caae:	62 a1 74 40 58 e8    	vaddps zmm21,zmm17,zmm16
  a0cab4:	62 a2 45 48 bc c8    	vfnmadd231ps zmm17,zmm7,zmm16
  a0caba:	62 21 0c 48 58 de    	vaddps zmm27,zmm14,zmm22
  a0cac0:	62 f1 6c 40 5c e4    	vsubps zmm4,zmm18,zmm4
  a0cac6:	62 32 45 48 bc f6    	vfnmadd231ps zmm14,zmm7,zmm22
  a0cacc:	62 a1 64 40 58 f5    	vaddps zmm22,zmm19,zmm21
  a0cad2:	62 81 5c 40 58 c3    	vaddps zmm16,zmm20,zmm27
  a0cad8:	62 d1 64 48 59 d8    	vmulps zmm3,zmm3,zmm8
  a0cade:	62 51 34 48 5c cf    	vsubps zmm9,zmm9,zmm15
  a0cae4:	62 71 14 48 58 fb    	vaddps zmm15,zmm13,zmm3
  a0caea:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a0caf0:	62 d1 5c 48 59 e0    	vmulps zmm4,zmm4,zmm8
  a0caf6:	62 f1 14 48 5c db    	vsubps zmm3,zmm13,zmm3
  a0cafc:	62 71 74 40 58 ed    	vaddps zmm13,zmm17,zmm5
  a0cb02:	62 f1 74 40 5c ed    	vsubps zmm5,zmm17,zmm5
  a0cb08:	62 61 1c 48 5c e4    	vsubps zmm28,zmm12,zmm4
  a0cb0e:	62 51 34 48 59 c8    	vmulps zmm9,zmm9,zmm8
  a0cb14:	62 d1 5c 48 58 e4    	vaddps zmm4,zmm4,zmm12
  a0cb1a:	62 51 0c 48 5c e1    	vsubps zmm12,zmm14,zmm9
  a0cb20:	62 51 34 48 58 ce    	vaddps zmm9,zmm9,zmm14
  a0cb26:	62 a1 64 40 5c dd    	vsubps zmm19,zmm19,zmm21
  a0cb2c:	62 41 04 48 5c ed    	vsubps zmm29,zmm15,zmm13
  a0cb32:	62 c1 1c 40 5c cc    	vsubps zmm17,zmm28,zmm12
  a0cb38:	62 81 5c 40 5c d3    	vsubps zmm18,zmm20,zmm27
  a0cb3e:	62 71 64 48 58 f5    	vaddps zmm14,zmm3,zmm5
  a0cb44:	62 51 04 48 58 ed    	vaddps zmm13,zmm15,zmm13
  a0cb4a:	62 c1 5c 48 58 e1    	vaddps zmm20,zmm4,zmm9
  a0cb50:	62 51 1c 40 58 e4    	vaddps zmm12,zmm28,zmm12
  a0cb56:	62 f1 64 48 5c dd    	vsubps zmm3,zmm3,zmm5
  a0cb5c:	62 c1 5c 48 5c e9    	vsubps zmm21,zmm4,zmm9
  a0cb62:	62 e2 7d 48 7f f6    	vpermt2ps zmm22,zmm0,zmm6
  a0cb68:	62 62 7d 48 7f ee    	vpermt2ps zmm29,zmm0,zmm6
  a0cb6e:	62 e2 7d 48 7f de    	vpermt2ps zmm19,zmm0,zmm6
  a0cb74:	62 72 7d 48 7f f6    	vpermt2ps zmm14,zmm0,zmm6
  a0cb7a:	62 72 7d 48 7f ee    	vpermt2ps zmm13,zmm0,zmm6
  a0cb80:	62 f2 7d 48 7f de    	vpermt2ps zmm3,zmm0,zmm6
  a0cb86:	62 b1 7c 48 28 e6    	vmovaps zmm4,zmm22
  a0cb8c:	62 d2 75 48 7f e5    	vpermt2ps zmm4,zmm1,zmm13
  a0cb92:	62 c2 6d 48 7f f5    	vpermt2ps zmm22,zmm2,zmm13
  a0cb98:	62 91 7c 48 28 ed    	vmovaps zmm5,zmm29
  a0cb9e:	62 62 6d 48 7f eb    	vpermt2ps zmm29,zmm2,zmm3
  a0cba4:	62 f2 75 48 7f eb    	vpermt2ps zmm5,zmm1,zmm3
  a0cbaa:	62 d1 7c 48 28 de    	vmovaps zmm3,zmm14
  a0cbb0:	62 d2 75 48 7f da    	vpermt2ps zmm3,zmm1,zmm10
  a0cbb6:	62 52 6d 48 7f f2    	vpermt2ps zmm14,zmm2,zmm10
  a0cbbc:	62 51 cd 40 14 f6    	vunpcklpd zmm14,zmm22,zmm14
  a0cbc2:	62 31 7c 48 28 cb    	vmovaps zmm9,zmm19
  a0cbc8:	62 52 75 48 7f ca    	vpermt2ps zmm9,zmm1,zmm10
  a0cbce:	62 c2 6d 48 7f da    	vpermt2ps zmm19,zmm2,zmm10
  a0cbd4:	62 a1 95 40 14 f3    	vunpcklpd zmm22,zmm29,zmm19
  a0cbda:	62 71 dd 48 14 eb    	vunpcklpd zmm13,zmm4,zmm3
  a0cbe0:	62 71 dd 48 15 fb    	vunpckhpd zmm15,zmm4,zmm3
  a0cbe6:	62 d1 d5 48 14 d9    	vunpcklpd zmm3,zmm5,zmm9
  a0cbec:	62 d1 d5 48 15 e1    	vunpckhpd zmm4,zmm5,zmm9
  a0cbf2:	62 e2 7d 48 7f c6    	vpermt2ps zmm16,zmm0,zmm6
  a0cbf8:	62 e2 7d 48 7f ce    	vpermt2ps zmm17,zmm0,zmm6
  a0cbfe:	62 e2 7d 48 7f e6    	vpermt2ps zmm20,zmm0,zmm6
  a0cc04:	62 c1 7c 48 28 de    	vmovaps zmm19,zmm14
  a0cc0a:	62 e2 7d 48 7f d6    	vpermt2ps zmm18,zmm0,zmm6
  a0cc10:	62 72 7d 48 7f e6    	vpermt2ps zmm12,zmm0,zmm6
  a0cc16:	62 e2 7d 48 7f ee    	vpermt2ps zmm21,zmm0,zmm6
  a0cc1c:	62 32 3d 40 7f f6    	vpermt2ps zmm14,zmm24,zmm22
  a0cc22:	62 b1 7c 48 28 e8    	vmovaps zmm5,zmm16
  a0cc28:	62 d2 75 48 7f ec    	vpermt2ps zmm5,zmm1,zmm12
  a0cc2e:	62 c2 6d 48 7f c4    	vpermt2ps zmm16,zmm2,zmm12
  a0cc34:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a0cc3a:	62 31 7c 48 28 c9    	vmovaps zmm9,zmm17
  a0cc40:	62 32 75 48 7f cd    	vpermt2ps zmm9,zmm1,zmm21
  a0cc46:	62 a2 6d 48 7f cd    	vpermt2ps zmm17,zmm2,zmm21
  a0cc4c:	62 72 3d 40 7f eb    	vpermt2ps zmm13,zmm24,zmm3
  a0cc52:	62 21 7c 48 28 dc    	vmovaps zmm27,zmm20
  a0cc58:	62 42 75 48 7f da    	vpermt2ps zmm27,zmm1,zmm10
  a0cc5e:	62 c2 6d 48 7f e2    	vpermt2ps zmm20,zmm2,zmm10
  a0cc64:	62 a2 45 40 7f de    	vpermt2ps zmm19,zmm23,zmm22
  a0cc6a:	62 a1 fd 40 14 e4    	vunpcklpd zmm20,zmm16,zmm20
  a0cc70:	62 21 7c 48 28 e2    	vmovaps zmm28,zmm18
  a0cc76:	62 42 75 48 7f e2    	vpermt2ps zmm28,zmm1,zmm10
  a0cc7c:	62 c1 7c 48 28 ef    	vmovaps zmm21,zmm15
  a0cc82:	62 c2 6d 48 7f d2    	vpermt2ps zmm18,zmm2,zmm10
  a0cc88:	62 a1 f5 40 14 d2    	vunpcklpd zmm18,zmm17,zmm18
  a0cc8e:	62 81 d5 48 14 c3    	vunpcklpd zmm16,zmm5,zmm27
  a0cc94:	62 72 3d 40 7f fc    	vpermt2ps zmm15,zmm24,zmm4
  a0cc9a:	62 81 d5 48 15 f3    	vunpckhpd zmm22,zmm5,zmm27
  a0cca0:	62 81 b5 48 14 cc    	vunpcklpd zmm17,zmm9,zmm28
  a0cca6:	62 91 b5 48 15 ec    	vunpckhpd zmm5,zmm9,zmm28
  a0ccac:	62 72 45 40 7f e3    	vpermt2ps zmm12,zmm23,zmm3
  a0ccb2:	62 b1 7c 48 28 de    	vmovaps zmm3,zmm22
  a0ccb8:	62 e2 3d 40 7f f5    	vpermt2ps zmm22,zmm24,zmm5
  a0ccbe:	62 31 7c 48 28 cc    	vmovaps zmm9,zmm20
  a0ccc4:	62 e2 45 40 7f ec    	vpermt2ps zmm21,zmm23,zmm4
  a0ccca:	62 32 45 40 7f ca    	vpermt2ps zmm9,zmm23,zmm18
  a0ccd0:	62 a2 3d 40 7f e2    	vpermt2ps zmm20,zmm24,zmm18
  a0ccd6:	62 f1 7c 48 10 61 08 	vmovups zmm4,ZMMWORD PTR [rcx+0x200]
  a0ccdd:	62 f2 45 40 7f dd    	vpermt2ps zmm3,zmm23,zmm5
  a0cce3:	62 f1 7c 48 10 69 09 	vmovups zmm5,ZMMWORD PTR [rcx+0x240]
  a0ccea:	62 e1 64 40 59 d4    	vmulps zmm18,zmm19,zmm4
  a0ccf0:	62 f1 34 48 59 e4    	vmulps zmm4,zmm9,zmm4
  a0ccf6:	62 e2 35 48 bc d5    	vfnmadd231ps zmm18,zmm9,zmm5
  a0ccfc:	62 71 7c 48 10 49 04 	vmovups zmm9,ZMMWORD PTR [rcx+0x100]
  a0cd03:	62 b2 55 48 b8 e3    	vfmadd231ps zmm4,zmm5,zmm19
  a0cd09:	62 f1 7c 48 10 69 05 	vmovups zmm5,ZMMWORD PTR [rcx+0x140]
  a0cd10:	62 41 54 40 59 d9    	vmulps zmm27,zmm21,zmm9
  a0cd16:	62 62 65 48 bc dd    	vfnmadd231ps zmm27,zmm3,zmm5
  a0cd1c:	62 d1 64 48 59 d9    	vmulps zmm3,zmm3,zmm9
  a0cd22:	62 71 7c 48 10 49 06 	vmovups zmm9,ZMMWORD PTR [rcx+0x180]
  a0cd29:	62 b2 55 48 b8 dd    	vfmadd231ps zmm3,zmm5,zmm21
  a0cd2f:	62 f1 7c 48 10 69 07 	vmovups zmm5,ZMMWORD PTR [rcx+0x1c0]
  a0cd36:	62 c1 04 48 59 e9    	vmulps zmm21,zmm15,zmm9
  a0cd3c:	62 c1 4c 40 59 d9    	vmulps zmm19,zmm22,zmm9
  a0cd42:	62 e2 4d 40 bc ed    	vfnmadd231ps zmm21,zmm22,zmm5
  a0cd48:	62 71 7c 48 10 49 0a 	vmovups zmm9,ZMMWORD PTR [rcx+0x280]
  a0cd4f:	62 c2 55 48 b8 df    	vfmadd231ps zmm19,zmm5,zmm15
  a0cd55:	62 f1 7c 48 10 69 0b 	vmovups zmm5,ZMMWORD PTR [rcx+0x2c0]
  a0cd5c:	62 51 0c 48 59 f9    	vmulps zmm15,zmm14,zmm9
  a0cd62:	62 72 5d 40 bc fd    	vfnmadd231ps zmm15,zmm20,zmm5
  a0cd68:	62 51 5c 40 59 c9    	vmulps zmm9,zmm20,zmm9
  a0cd6e:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a0cd74:	62 a2 3d 40 7f c1    	vpermt2ps zmm16,zmm24,zmm17
  a0cd7a:	62 52 55 48 b8 ce    	vfmadd231ps zmm9,zmm5,zmm14
  a0cd80:	62 f1 7c 48 10 69 02 	vmovups zmm5,ZMMWORD PTR [rcx+0x80]
  a0cd87:	62 71 7c 48 10 71 03 	vmovups zmm14,ZMMWORD PTR [rcx+0xc0]
  a0cd8e:	62 a2 45 40 7f e1    	vpermt2ps zmm20,zmm23,zmm17
  a0cd94:	62 e1 14 48 59 cd    	vmulps zmm17,zmm13,zmm5
  a0cd9a:	62 c2 7d 40 bc ce    	vfnmadd231ps zmm17,zmm16,zmm14
  a0cda0:	62 f1 7c 40 59 ed    	vmulps zmm5,zmm16,zmm5
  a0cda6:	62 a1 24 40 58 c2    	vaddps zmm16,zmm27,zmm18
  a0cdac:	62 d2 0d 48 b8 ed    	vfmadd231ps zmm5,zmm14,zmm13
  a0cdb2:	62 31 04 48 58 e9    	vaddps zmm13,zmm15,zmm17
  a0cdb8:	62 71 64 48 58 f4    	vaddps zmm14,zmm3,zmm4
  a0cdbe:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a0cdc4:	62 d1 54 40 58 e5    	vaddps zmm4,zmm21,zmm13
  a0cdca:	62 c2 45 48 bc ed    	vfnmadd231ps zmm21,zmm7,zmm13
  a0cdd0:	62 31 1c 48 58 e8    	vaddps zmm13,zmm12,zmm16
  a0cdd6:	62 32 45 48 bc e0    	vfnmadd231ps zmm12,zmm7,zmm16
  a0cddc:	62 e1 34 48 58 c5    	vaddps zmm16,zmm9,zmm5
  a0cde2:	62 f1 34 48 5c ed    	vsubps zmm5,zmm9,zmm5
  a0cde8:	62 31 0c 48 58 cc    	vaddps zmm9,zmm14,zmm20
  a0cdee:	62 c2 45 48 bc e6    	vfnmadd231ps zmm20,zmm7,zmm14
  a0cdf4:	62 31 24 40 5c f2    	vsubps zmm14,zmm27,zmm18
  a0cdfa:	62 a1 64 40 58 d0    	vaddps zmm18,zmm19,zmm16
  a0ce00:	62 a2 45 48 bc d8    	vfnmadd231ps zmm19,zmm7,zmm16
  a0ce06:	62 d1 64 48 59 d8    	vmulps zmm3,zmm3,zmm8
  a0ce0c:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a0ce12:	62 31 04 48 5c f9    	vsubps zmm15,zmm15,zmm17
  a0ce18:	62 e1 54 40 58 c5    	vaddps zmm16,zmm21,zmm5
  a0ce1e:	62 f1 54 40 5c ed    	vsubps zmm5,zmm21,zmm5
  a0ce24:	62 e1 1c 48 58 cb    	vaddps zmm17,zmm12,zmm3
  a0ce2a:	62 51 0c 48 59 f0    	vmulps zmm14,zmm14,zmm8
  a0ce30:	62 51 04 48 59 f8    	vmulps zmm15,zmm15,zmm8
  a0ce36:	62 f1 1c 48 5c db    	vsubps zmm3,zmm12,zmm3
  a0ce3c:	62 51 64 40 5c e7    	vsubps zmm12,zmm19,zmm15
  a0ce42:	62 51 64 40 58 ff    	vaddps zmm15,zmm19,zmm15
  a0ce48:	62 c1 5c 40 5c de    	vsubps zmm19,zmm20,zmm14
  a0ce4e:	62 31 0c 48 58 f4    	vaddps zmm14,zmm14,zmm20
  a0ce54:	62 a1 74 40 5c e0    	vsubps zmm20,zmm17,zmm16
  a0ce5a:	62 a1 74 40 58 c0    	vaddps zmm16,zmm17,zmm16
  a0ce60:	62 c1 64 40 5c cc    	vsubps zmm17,zmm19,zmm12
  a0ce66:	62 51 64 40 58 e4    	vaddps zmm12,zmm19,zmm12
  a0ce6c:	62 e1 14 48 5c dc    	vsubps zmm19,zmm13,zmm4
  a0ce72:	62 f1 14 48 58 e4    	vaddps zmm4,zmm13,zmm4
  a0ce78:	62 71 64 48 58 ed    	vaddps zmm13,zmm3,zmm5
  a0ce7e:	62 f1 64 48 5c dd    	vsubps zmm3,zmm3,zmm5
  a0ce84:	62 b1 34 48 5c ea    	vsubps zmm5,zmm9,zmm18
  a0ce8a:	62 31 34 48 58 ca    	vaddps zmm9,zmm9,zmm18
  a0ce90:	62 c1 0c 48 58 d7    	vaddps zmm18,zmm14,zmm15
  a0ce96:	62 51 0c 48 5c f7    	vsubps zmm14,zmm14,zmm15
  a0ce9c:	62 d2 25 48 7f e1    	vpermt2ps zmm4,zmm11,zmm9
  a0cea2:	62 f3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm4,0x2
  a0cea9:	02 02 
  a0ceab:	c5 fc 11 24 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm4
  a0ceb0:	62 a2 25 48 7f e1    	vpermt2ps zmm20,zmm11,zmm17
  a0ceb6:	62 e3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm20,0x2
  a0cebd:	05 02 
  a0cebf:	62 e1 7c 28 11 a4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm20
  a0cec6:	30 00 00 00 
  a0ceca:	62 32 25 48 7f ea    	vpermt2ps zmm13,zmm11,zmm18
  a0ced0:	62 73 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm13,0x2
  a0ced7:	08 02 
  a0ced9:	c5 7c 11 6c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm13
  a0cedf:	62 e2 25 48 7f dd    	vpermt2ps zmm19,zmm11,zmm5
  a0cee5:	62 e3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm19,0x2
  a0ceec:	0b 02 
  a0ceee:	62 e1 7c 28 11 9c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm19
  a0cef5:	90 00 00 00 
  a0cef9:	62 c2 25 48 7f c4    	vpermt2ps zmm16,zmm11,zmm12
  a0ceff:	62 d2 25 48 7f de    	vpermt2ps zmm3,zmm11,zmm14
  a0cf05:	62 e3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm16,0x2
  a0cf0c:	0e 02 
  a0cf0e:	62 e1 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm16
  a0cf15:	06 
  a0cf16:	62 f3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x110],zmm3,0x2
  a0cf1d:	11 02 
  a0cf1f:	c5 fc 11 9c 16 f0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm3
  a0cf26:	00 00 
  a0cf28:	48 81 c2 20 01 00 00 	add    rdx,0x120
  a0cf2f:	48 39 d0             	cmp    rax,rdx
  a0cf32:	0f 85 68 f9 ff ff    	jne    a0c8a0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0xa0>
  a0cf38:	48 89 ec             	mov    rsp,rbp
  a0cf3b:	5d                   	pop    rbp
  a0cf3c:	c5 f8 77             	vzeroupper
  a0cf3f:	c3                   	ret
