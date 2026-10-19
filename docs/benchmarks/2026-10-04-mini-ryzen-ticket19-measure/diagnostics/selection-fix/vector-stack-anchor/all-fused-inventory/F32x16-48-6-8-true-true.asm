
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a258c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a258c0:	62 f1 7c 48 28 05 b6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6a16b6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a258c7:	16 6a ff 
  a258ca:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a258ce:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a258d2:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a258d8:	62 f1 7c 48 28 1d 1e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6a161e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a258df:	16 6a ff 
  a258e2:	62 f1 7c 48 28 25 54 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6a1654]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a258e9:	16 6a ff 
  a258ec:	62 f1 7c 48 28 2d 0a 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6a150a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a258f3:	15 6a ff 
  a258f6:	62 f1 7c 48 28 35 40 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6a1540]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a258fd:	15 6a ff 
  a25900:	48 c1 e2 07          	shl    rdx,0x7
  a25904:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a25908:	31 d2                	xor    edx,edx
  a2590a:	62 71 7c 48 28 25 6c 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff66ab6c]        # 90480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d930>
  a25911:	ab 66 ff 
  a25914:	62 72 7d 48 18 15 b6 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff64f9b6]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a2591b:	f9 64 ff 
  a2591e:	66 90                	xchg   ax,ax
  a25920:	62 71 7c 48 10 2c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1]
  a25927:	62 71 7c 48 10 7c 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x40]
  a2592e:	01 
  a2592f:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x80]
  a25936:	02 
  a25937:	62 e1 7c 48 10 4c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a2593e:	03 
  a2593f:	62 c1 7c 48 28 d5    	vmovaps zmm18,zmm13
  a25945:	62 f1 7c 48 28 3d b1 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff66aab1]        # 90400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d8b0>
  a2594c:	aa 66 ff 
  a2594f:	62 e2 45 48 7f d1    	vpermt2ps zmm18,zmm7,zmm1
  a25955:	62 71 7c 48 28 05 e1 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff66aae1]        # 90440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d8f0>
  a2595c:	aa 66 ff 
  a2595f:	62 72 3d 48 7f e9    	vpermt2ps zmm13,zmm8,zmm1
  a25965:	62 c1 7c 48 28 e7    	vmovaps zmm20,zmm15
  a2596b:	62 e2 45 48 7f e1    	vpermt2ps zmm20,zmm7,zmm1
  a25971:	62 72 3d 48 7f f9    	vpermt2ps zmm15,zmm8,zmm1
  a25977:	62 a1 7c 48 28 e8    	vmovaps zmm21,zmm16
  a2597d:	62 e2 45 48 7f e9    	vpermt2ps zmm21,zmm7,zmm1
  a25983:	62 e2 3d 48 7f c1    	vpermt2ps zmm16,zmm8,zmm1
  a25989:	62 a1 7c 48 28 f1    	vmovaps zmm22,zmm17
  a2598f:	62 e2 45 48 7f f1    	vpermt2ps zmm22,zmm7,zmm1
  a25995:	62 e2 3d 48 7f c9    	vpermt2ps zmm17,zmm8,zmm1
  a2599b:	62 e1 7c 48 10 7c 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1+0x100]
  a259a2:	04 
  a259a3:	62 21 7c 48 28 c7    	vmovaps zmm24,zmm23
  a259a9:	62 62 45 48 7f c1    	vpermt2ps zmm24,zmm7,zmm1
  a259af:	62 e2 3d 48 7f f9    	vpermt2ps zmm23,zmm8,zmm1
  a259b5:	62 61 7c 48 10 4c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x140]
  a259bc:	05 
  a259bd:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a259c3:	62 62 45 48 7f d1    	vpermt2ps zmm26,zmm7,zmm1
  a259c9:	62 62 3d 48 7f c9    	vpermt2ps zmm25,zmm8,zmm1
  a259cf:	62 a1 7c 40 58 df    	vaddps zmm19,zmm16,zmm23
  a259d5:	62 21 14 48 58 db    	vaddps zmm27,zmm13,zmm19
  a259db:	62 41 34 40 58 e7    	vaddps zmm28,zmm25,zmm15
  a259e1:	62 01 74 40 58 ec    	vaddps zmm29,zmm17,zmm28
  a259e7:	62 11 24 40 58 f5    	vaddps zmm14,zmm27,zmm29
  a259ed:	62 01 54 40 58 f0    	vaddps zmm30,zmm21,zmm24
  a259f3:	62 01 6c 40 58 fe    	vaddps zmm31,zmm18,zmm30
  a259f9:	62 31 2c 40 58 c4    	vaddps zmm8,zmm26,zmm20
  a259ff:	62 51 4c 40 58 c8    	vaddps zmm9,zmm22,zmm8
  a25a05:	62 f2 7d 48 18 3d 51 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff64fa51]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a25a0c:	fa 64 ff 
  a25a0f:	62 32 45 48 bc eb    	vfnmadd231ps zmm13,zmm7,zmm19
  a25a15:	62 c1 04 40 58 d9    	vaddps zmm19,zmm31,zmm9
  a25a1b:	62 81 54 40 5c e8    	vsubps zmm21,zmm21,zmm24
  a25a21:	62 c1 54 40 59 ea    	vmulps zmm21,zmm21,zmm10
  a25a27:	62 21 14 48 58 c5    	vaddps zmm24,zmm13,zmm21
  a25a2d:	62 82 45 48 bc cc    	vfnmadd231ps zmm17,zmm7,zmm28
  a25a33:	62 a1 2c 40 5c e4    	vsubps zmm20,zmm26,zmm20
  a25a39:	62 c1 5c 40 59 e2    	vmulps zmm20,zmm20,zmm10
  a25a3f:	62 21 74 40 58 e4    	vaddps zmm28,zmm17,zmm20
  a25a45:	62 11 3c 40 5c dc    	vsubps zmm11,zmm24,zmm28
  a25a4b:	62 82 45 48 bc d6    	vfnmadd231ps zmm18,zmm7,zmm30
  a25a51:	62 a1 7c 40 5c c7    	vsubps zmm16,zmm16,zmm23
  a25a57:	62 c1 7c 40 59 c2    	vmulps zmm16,zmm16,zmm10
  a25a5d:	62 21 6c 40 5c f0    	vsubps zmm30,zmm18,zmm16
  a25a63:	62 c2 45 48 bc f0    	vfnmadd231ps zmm22,zmm7,zmm8
  a25a69:	62 51 34 40 5c c7    	vsubps zmm8,zmm25,zmm15
  a25a6f:	62 51 3c 48 59 c2    	vmulps zmm8,zmm8,zmm10
  a25a75:	62 51 4c 40 5c f8    	vsubps zmm15,zmm22,zmm8
  a25a7b:	62 41 0c 40 5c d7    	vsubps zmm26,zmm30,zmm15
  a25a81:	62 31 14 48 5c ed    	vsubps zmm13,zmm13,zmm21
  a25a87:	62 a1 74 40 5c cc    	vsubps zmm17,zmm17,zmm20
  a25a8d:	62 a1 14 48 58 e1    	vaddps zmm20,zmm13,zmm17
  a25a93:	62 a1 7c 40 58 c2    	vaddps zmm16,zmm16,zmm18
  a25a99:	62 31 3c 48 58 c6    	vaddps zmm8,zmm8,zmm22
  a25a9f:	62 c1 7c 40 58 f8    	vaddps zmm23,zmm16,zmm8
  a25aa5:	62 81 24 40 5c ed    	vsubps zmm21,zmm27,zmm29
  a25aab:	62 41 04 40 5c d9    	vsubps zmm27,zmm31,zmm9
  a25ab1:	62 11 3c 40 58 cc    	vaddps zmm9,zmm24,zmm28
  a25ab7:	62 41 0c 40 58 cf    	vaddps zmm25,zmm30,zmm15
  a25abd:	62 31 14 48 5c e9    	vsubps zmm13,zmm13,zmm17
  a25ac3:	62 c1 7c 40 5c f0    	vsubps zmm22,zmm16,zmm8
  a25ac9:	62 72 7d 48 7f f1    	vpermt2ps zmm14,zmm0,zmm1
  a25acf:	62 72 7d 48 7f d9    	vpermt2ps zmm11,zmm0,zmm1
  a25ad5:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a25adb:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a25ae1:	62 72 7d 48 7f c9    	vpermt2ps zmm9,zmm0,zmm1
  a25ae7:	62 72 7d 48 7f e9    	vpermt2ps zmm13,zmm0,zmm1
  a25aed:	62 51 7c 48 28 c6    	vmovaps zmm8,zmm14
  a25af3:	62 52 65 48 7f c1    	vpermt2ps zmm8,zmm3,zmm9
  a25af9:	62 52 5d 48 7f f1    	vpermt2ps zmm14,zmm4,zmm9
  a25aff:	62 51 7c 48 28 cb    	vmovaps zmm9,zmm11
  a25b05:	62 52 65 48 7f cd    	vpermt2ps zmm9,zmm3,zmm13
  a25b0b:	62 52 5d 48 7f dd    	vpermt2ps zmm11,zmm4,zmm13
  a25b11:	62 31 7c 48 28 ec    	vmovaps zmm13,zmm20
  a25b17:	62 72 65 48 7f ea    	vpermt2ps zmm13,zmm3,zmm2
  a25b1d:	62 e2 5d 48 7f e2    	vpermt2ps zmm20,zmm4,zmm2
  a25b23:	62 31 7c 48 28 fd    	vmovaps zmm15,zmm21
  a25b29:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a25b2f:	62 e2 5d 48 7f ea    	vpermt2ps zmm21,zmm4,zmm2
  a25b35:	62 c1 bd 48 14 d5    	vunpcklpd zmm18,zmm8,zmm13
  a25b3b:	62 c1 bd 48 15 c5    	vunpckhpd zmm16,zmm8,zmm13
  a25b41:	62 51 b5 48 14 ef    	vunpcklpd zmm13,zmm9,zmm15
  a25b47:	62 51 b5 48 15 c7    	vunpckhpd zmm8,zmm9,zmm15
  a25b4d:	62 a1 8d 48 14 cc    	vunpcklpd zmm17,zmm14,zmm20
  a25b53:	62 31 8d 48 15 fc    	vunpckhpd zmm15,zmm14,zmm20
  a25b59:	62 31 a5 48 14 cd    	vunpcklpd zmm9,zmm11,zmm21
  a25b5f:	62 31 a5 48 15 dd    	vunpckhpd zmm11,zmm11,zmm21
  a25b65:	62 31 7c 48 28 f2    	vmovaps zmm14,zmm18
  a25b6b:	62 c2 4d 48 7f d5    	vpermt2ps zmm18,zmm6,zmm13
  a25b71:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a25b77:	62 c2 55 48 7f e0    	vpermt2ps zmm20,zmm5,zmm8
  a25b7d:	62 c2 4d 48 7f c0    	vpermt2ps zmm16,zmm6,zmm8
  a25b83:	62 21 7c 48 28 c1    	vmovaps zmm24,zmm17
  a25b89:	62 42 55 48 7f c1    	vpermt2ps zmm24,zmm5,zmm9
  a25b8f:	62 c2 4d 48 7f c9    	vpermt2ps zmm17,zmm6,zmm9
  a25b95:	62 c1 7c 48 28 ef    	vmovaps zmm21,zmm15
  a25b9b:	62 c2 55 48 7f eb    	vpermt2ps zmm21,zmm5,zmm11
  a25ba1:	62 52 4d 48 7f fb    	vpermt2ps zmm15,zmm6,zmm11
  a25ba7:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a25bad:	62 62 7d 48 7f d1    	vpermt2ps zmm26,zmm0,zmm1
  a25bb3:	62 e2 7d 48 7f f9    	vpermt2ps zmm23,zmm0,zmm1
  a25bb9:	62 62 7d 48 7f d9    	vpermt2ps zmm27,zmm0,zmm1
  a25bbf:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a25bc5:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a25bcb:	62 31 7c 48 28 c3    	vmovaps zmm8,zmm19
  a25bd1:	62 12 65 48 7f c1    	vpermt2ps zmm8,zmm3,zmm25
  a25bd7:	62 82 5d 48 7f d9    	vpermt2ps zmm19,zmm4,zmm25
  a25bdd:	62 11 7c 48 28 ca    	vmovaps zmm9,zmm26
  a25be3:	62 32 65 48 7f ce    	vpermt2ps zmm9,zmm3,zmm22
  a25be9:	62 22 5d 48 7f d6    	vpermt2ps zmm26,zmm4,zmm22
  a25bef:	62 31 7c 48 28 df    	vmovaps zmm11,zmm23
  a25bf5:	62 72 65 48 7f da    	vpermt2ps zmm11,zmm3,zmm2
  a25bfb:	62 e2 5d 48 7f fa    	vpermt2ps zmm23,zmm4,zmm2
  a25c01:	62 01 7c 48 28 e3    	vmovaps zmm28,zmm27
  a25c07:	62 62 65 48 7f e2    	vpermt2ps zmm28,zmm3,zmm2
  a25c0d:	62 62 5d 48 7f da    	vpermt2ps zmm27,zmm4,zmm2
  a25c13:	62 41 bd 48 14 eb    	vunpcklpd zmm29,zmm8,zmm11
  a25c19:	62 41 bd 48 15 cb    	vunpckhpd zmm25,zmm8,zmm11
  a25c1f:	62 81 b5 48 14 f4    	vunpcklpd zmm22,zmm9,zmm28
  a25c25:	62 11 b5 48 15 c4    	vunpckhpd zmm8,zmm9,zmm28
  a25c2b:	62 21 e5 40 14 e7    	vunpcklpd zmm28,zmm19,zmm23
  a25c31:	62 a1 e5 40 15 ff    	vunpckhpd zmm23,zmm19,zmm23
  a25c37:	62 11 ad 40 14 cb    	vunpcklpd zmm9,zmm26,zmm27
  a25c3d:	62 11 ad 40 15 db    	vunpckhpd zmm11,zmm26,zmm27
  a25c43:	62 81 7c 48 28 dd    	vmovaps zmm19,zmm29
  a25c49:	62 22 4d 48 7f ee    	vpermt2ps zmm29,zmm6,zmm22
  a25c4f:	62 01 7c 48 28 f1    	vmovaps zmm30,zmm25
  a25c55:	62 42 55 48 7f f0    	vpermt2ps zmm30,zmm5,zmm8
  a25c5b:	62 42 4d 48 7f c8    	vpermt2ps zmm25,zmm6,zmm8
  a25c61:	62 11 7c 48 28 c4    	vmovaps zmm8,zmm28
  a25c67:	62 52 55 48 7f c1    	vpermt2ps zmm8,zmm5,zmm9
  a25c6d:	62 42 4d 48 7f e1    	vpermt2ps zmm28,zmm6,zmm9
  a25c73:	62 31 7c 48 28 cf    	vmovaps zmm9,zmm23
  a25c79:	62 52 55 48 7f cb    	vpermt2ps zmm9,zmm5,zmm11
  a25c7f:	62 c2 4d 48 7f fb    	vpermt2ps zmm23,zmm6,zmm11
  a25c85:	62 71 7c 48 10 59 08 	vmovups zmm11,ZMMWORD PTR [rcx+0x200]
  a25c8c:	62 61 7c 48 10 79 09 	vmovups zmm31,ZMMWORD PTR [rcx+0x240]
  a25c93:	62 41 3c 40 59 d3    	vmulps zmm26,zmm24,zmm11
  a25c99:	62 02 3d 48 bc d7    	vfnmadd231ps zmm26,zmm8,zmm31
  a25c9f:	62 41 3c 48 59 db    	vmulps zmm27,zmm8,zmm11
  a25ca5:	62 71 7c 48 10 41 04 	vmovups zmm8,ZMMWORD PTR [rcx+0x100]
  a25cac:	62 02 05 40 b8 d8    	vfmadd231ps zmm27,zmm31,zmm24
  a25cb2:	62 71 7c 48 10 59 05 	vmovups zmm11,ZMMWORD PTR [rcx+0x140]
  a25cb9:	62 41 5c 40 59 c0    	vmulps zmm24,zmm20,zmm8
  a25cbf:	62 42 0d 40 bc c3    	vfnmadd231ps zmm24,zmm30,zmm11
  a25cc5:	62 51 0c 40 59 c0    	vmulps zmm8,zmm30,zmm8
  a25ccb:	62 61 7c 48 10 71 0c 	vmovups zmm30,ZMMWORD PTR [rcx+0x300]
  a25cd2:	62 32 25 48 b8 c4    	vfmadd231ps zmm8,zmm11,zmm20
  a25cd8:	62 71 7c 48 10 59 0d 	vmovups zmm11,ZMMWORD PTR [rcx+0x340]
  a25cdf:	62 81 54 40 59 e6    	vmulps zmm20,zmm21,zmm30
  a25ce5:	62 c2 35 48 bc e3    	vfnmadd231ps zmm20,zmm9,zmm11
  a25ceb:	62 11 34 48 59 ce    	vmulps zmm9,zmm9,zmm30
  a25cf1:	62 61 7c 48 10 71 02 	vmovups zmm30,ZMMWORD PTR [rcx+0x80]
  a25cf8:	62 32 25 48 b8 cd    	vfmadd231ps zmm9,zmm11,zmm21
  a25cfe:	62 71 7c 48 10 59 03 	vmovups zmm11,ZMMWORD PTR [rcx+0xc0]
  a25d05:	62 81 6c 40 59 ee    	vmulps zmm21,zmm18,zmm30
  a25d0b:	62 c2 15 40 bc eb    	vfnmadd231ps zmm21,zmm29,zmm11
  a25d11:	62 01 14 40 59 ee    	vmulps zmm29,zmm29,zmm30
  a25d17:	62 61 7c 48 10 71 0a 	vmovups zmm30,ZMMWORD PTR [rcx+0x280]
  a25d1e:	62 22 25 48 b8 ea    	vfmadd231ps zmm29,zmm11,zmm18
  a25d24:	62 71 7c 48 10 59 0b 	vmovups zmm11,ZMMWORD PTR [rcx+0x2c0]
  a25d2b:	62 81 74 40 59 d6    	vmulps zmm18,zmm17,zmm30
  a25d31:	62 c2 1d 40 bc d3    	vfnmadd231ps zmm18,zmm28,zmm11
  a25d37:	62 01 1c 40 59 e6    	vmulps zmm28,zmm28,zmm30
  a25d3d:	62 61 7c 48 10 71 06 	vmovups zmm30,ZMMWORD PTR [rcx+0x180]
  a25d44:	62 22 25 48 b8 e1    	vfmadd231ps zmm28,zmm11,zmm17
  a25d4a:	62 71 7c 48 10 59 07 	vmovups zmm11,ZMMWORD PTR [rcx+0x1c0]
  a25d51:	62 81 7c 40 59 ce    	vmulps zmm17,zmm16,zmm30
  a25d57:	62 c2 35 40 bc cb    	vfnmadd231ps zmm17,zmm25,zmm11
  a25d5d:	62 01 34 40 59 ce    	vmulps zmm25,zmm25,zmm30
  a25d63:	62 61 7c 48 10 71 0e 	vmovups zmm30,ZMMWORD PTR [rcx+0x380]
  a25d6a:	62 22 25 48 b8 c8    	vfmadd231ps zmm25,zmm11,zmm16
  a25d70:	62 71 7c 48 10 59 0f 	vmovups zmm11,ZMMWORD PTR [rcx+0x3c0]
  a25d77:	62 81 04 48 59 c6    	vmulps zmm16,zmm15,zmm30
  a25d7d:	62 c2 45 40 bc c3    	vfnmadd231ps zmm16,zmm23,zmm11
  a25d83:	62 81 44 40 59 fe    	vmulps zmm23,zmm23,zmm30
  a25d89:	62 c2 25 48 b8 ff    	vfmadd231ps zmm23,zmm11,zmm15
  a25d8f:	62 52 55 48 7f f5    	vpermt2ps zmm14,zmm5,zmm13
  a25d95:	62 a2 55 48 7f de    	vpermt2ps zmm19,zmm5,zmm22
  a25d9b:	62 11 0c 48 58 da    	vaddps zmm11,zmm14,zmm26
  a25da1:	62 11 0c 48 5c ea    	vsubps zmm13,zmm14,zmm26
  a25da7:	62 51 3c 48 58 f1    	vaddps zmm14,zmm8,zmm9
  a25dad:	62 51 3c 48 5c c1    	vsubps zmm8,zmm8,zmm9
  a25db3:	62 31 54 40 58 ca    	vaddps zmm9,zmm21,zmm18
  a25db9:	62 31 54 40 5c fa    	vsubps zmm15,zmm21,zmm18
  a25dbf:	62 81 14 40 58 d4    	vaddps zmm18,zmm29,zmm28
  a25dc5:	62 81 14 40 5c ec    	vsubps zmm21,zmm29,zmm28
  a25dcb:	62 a1 34 40 58 f7    	vaddps zmm22,zmm25,zmm23
  a25dd1:	62 a1 34 40 5c ff    	vsubps zmm23,zmm25,zmm23
  a25dd7:	62 21 74 40 58 c8    	vaddps zmm25,zmm17,zmm16
  a25ddd:	62 a1 74 40 5c c0    	vsubps zmm16,zmm17,zmm16
  a25de3:	62 a1 24 40 58 cb    	vaddps zmm17,zmm27,zmm19
  a25de9:	62 81 64 40 5c db    	vsubps zmm19,zmm19,zmm27
  a25def:	62 21 3c 40 58 d4    	vaddps zmm26,zmm24,zmm20
  a25df5:	62 81 5c 40 5c e0    	vsubps zmm20,zmm20,zmm24
  a25dfb:	62 21 04 48 58 c5    	vaddps zmm24,zmm15,zmm21
  a25e01:	62 51 54 40 5c ff    	vsubps zmm15,zmm21,zmm15
  a25e07:	62 a1 44 40 5c e8    	vsubps zmm21,zmm23,zmm16
  a25e0d:	62 a1 7c 40 58 c7    	vaddps zmm16,zmm16,zmm23
  a25e13:	62 81 24 48 58 fa    	vaddps zmm23,zmm11,zmm26
  a25e19:	62 11 24 48 5c da    	vsubps zmm11,zmm11,zmm26
  a25e1f:	62 21 6c 40 58 d6    	vaddps zmm26,zmm18,zmm22
  a25e25:	62 a1 6c 40 5c d6    	vsubps zmm18,zmm18,zmm22
  a25e2b:	62 a1 0c 48 58 f1    	vaddps zmm22,zmm14,zmm17
  a25e31:	62 51 74 40 5c f6    	vsubps zmm14,zmm17,zmm14
  a25e37:	62 81 34 48 58 c9    	vaddps zmm17,zmm9,zmm25
  a25e3d:	62 51 34 40 5c c9    	vsubps zmm9,zmm25,zmm9
  a25e43:	62 41 14 48 58 c8    	vaddps zmm25,zmm13,zmm8
  a25e49:	62 f2 7d 48 18 3d 49 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff64f549]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a25e50:	f5 64 ff 
  a25e53:	62 61 3c 40 59 c7    	vmulps zmm24,zmm24,zmm7
  a25e59:	62 e1 54 40 59 ef    	vmulps zmm21,zmm21,zmm7
  a25e5f:	62 71 04 48 59 ff    	vmulps zmm15,zmm15,zmm7
  a25e65:	62 e1 7c 40 59 c7    	vmulps zmm16,zmm16,zmm7
  a25e6b:	62 51 14 48 5c c0    	vsubps zmm8,zmm13,zmm8
  a25e71:	62 31 04 48 5c e8    	vsubps zmm13,zmm15,zmm16
  a25e77:	62 31 04 48 58 f8    	vaddps zmm15,zmm15,zmm16
  a25e7d:	62 a1 5c 40 58 c3    	vaddps zmm16,zmm20,zmm19
  a25e83:	62 a1 64 40 5c dc    	vsubps zmm19,zmm19,zmm20
  a25e89:	62 a1 3c 40 58 e5    	vaddps zmm20,zmm24,zmm21
  a25e8f:	62 81 54 40 5c e8    	vsubps zmm21,zmm21,zmm24
  a25e95:	62 21 34 40 58 c4    	vaddps zmm24,zmm25,zmm20
  a25e9b:	62 a1 34 40 5c e4    	vsubps zmm20,zmm25,zmm20
  a25ea1:	62 41 7c 40 58 cd    	vaddps zmm25,zmm16,zmm13
  a25ea7:	62 51 7c 40 5c ed    	vsubps zmm13,zmm16,zmm13
  a25ead:	62 a1 24 48 58 c2    	vaddps zmm16,zmm11,zmm18
  a25eb3:	62 31 24 48 5c da    	vsubps zmm11,zmm11,zmm18
  a25eb9:	62 c1 0c 48 58 d1    	vaddps zmm18,zmm14,zmm9
  a25ebf:	62 51 0c 48 5c c9    	vsubps zmm9,zmm14,zmm9
  a25ec5:	62 51 3c 48 58 f7    	vaddps zmm14,zmm8,zmm15
  a25ecb:	62 51 3c 48 5c c7    	vsubps zmm8,zmm8,zmm15
  a25ed1:	62 31 64 40 58 fd    	vaddps zmm15,zmm19,zmm21
  a25ed7:	62 a1 64 40 5c dd    	vsubps zmm19,zmm19,zmm21
  a25edd:	62 81 4c 40 5c ea    	vsubps zmm21,zmm22,zmm26
  a25ee3:	62 81 4c 40 58 f2    	vaddps zmm22,zmm22,zmm26
  a25ee9:	62 21 44 40 5c d1    	vsubps zmm26,zmm23,zmm17
  a25eef:	62 a1 44 40 58 c9    	vaddps zmm17,zmm23,zmm17
  a25ef5:	62 a2 1d 48 7f f1    	vpermt2ps zmm22,zmm12,zmm17
  a25efb:	62 e3 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm22,0x2
  a25f02:	02 02 
  a25f04:	62 e1 7c 28 11 34 16 	vmovups YMMWORD PTR [rsi+rdx*1],ymm22
  a25f0b:	62 02 1d 48 7f c8    	vpermt2ps zmm25,zmm12,zmm24
  a25f11:	62 63 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm25,0x2
  a25f18:	05 02 
  a25f1a:	62 61 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm25
  a25f21:	30 00 00 00 
  a25f25:	62 a2 1d 48 7f d0    	vpermt2ps zmm18,zmm12,zmm16
  a25f2b:	62 e3 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm18,0x2
  a25f32:	08 02 
  a25f34:	62 e1 7c 28 11 54 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm18
  a25f3b:	03 
  a25f3c:	62 52 1d 48 7f fe    	vpermt2ps zmm15,zmm12,zmm14
  a25f42:	62 73 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm15,0x2
  a25f49:	0b 02 
  a25f4b:	c5 7c 11 bc 16 90 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm15
  a25f52:	00 00 
  a25f54:	62 82 1d 48 7f ea    	vpermt2ps zmm21,zmm12,zmm26
  a25f5a:	62 e3 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm21,0x2
  a25f61:	0e 02 
  a25f63:	62 e1 7c 28 11 6c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm21
  a25f6a:	06 
  a25f6b:	62 32 1d 48 7f ec    	vpermt2ps zmm13,zmm12,zmm20
  a25f71:	62 73 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x110],zmm13,0x2
  a25f78:	11 02 
  a25f7a:	c5 7c 11 ac 16 f0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm13
  a25f81:	00 00 
  a25f83:	62 52 1d 48 7f cb    	vpermt2ps zmm9,zmm12,zmm11
  a25f89:	62 73 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x140],zmm9,0x2
  a25f90:	14 02 
  a25f92:	c5 7c 11 8c 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm9
  a25f99:	00 00 
  a25f9b:	62 c2 1d 48 7f d8    	vpermt2ps zmm19,zmm12,zmm8
  a25fa1:	62 e3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x170],zmm19,0x2
  a25fa8:	17 02 
  a25faa:	62 e1 7c 28 11 9c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x150],ymm19
  a25fb1:	50 01 00 00 
  a25fb5:	48 81 c2 80 01 00 00 	add    rdx,0x180
  a25fbc:	48 39 d0             	cmp    rax,rdx
  a25fbf:	0f 85 5b f9 ff ff    	jne    a25920 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x60>
  a25fc5:	c5 f8 77             	vzeroupper
  a25fc8:	c3                   	ret
