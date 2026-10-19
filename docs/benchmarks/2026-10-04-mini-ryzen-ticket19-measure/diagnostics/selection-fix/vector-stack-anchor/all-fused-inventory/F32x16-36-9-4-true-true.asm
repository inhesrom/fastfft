
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a44940 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a44940:	62 f1 7c 48 28 05 36 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff682636]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a44947:	26 68 ff 
  a4494a:	62 f1 7c 48 28 0d ac 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6825ac]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a44951:	25 68 ff 
  a44954:	48 c1 e2 05          	shl    rdx,0x5
  a44958:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a4495c:	31 d2                	xor    edx,edx
  a4495e:	62 f1 7c 48 28 25 d8 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff64d7d8]        # 92140 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f5f0>
  a44965:	d7 64 ff 
  a44968:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a4496c:	62 f2 7d 48 18 35 ea 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff630aea]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a44973:	0a 63 ff 
  a44976:	62 f2 7d 48 18 3d 54 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff630954]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a4497d:	09 63 ff 
  a44980:	62 71 7c 48 28 2d f6 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff64d7f6]        # 92180 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f630>
  a44987:	d7 64 ff 
  a4498a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  a44990:	62 e1 7c 28 10 14 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1]
  a44997:	62 e1 7c 28 10 5c 17 	vmovups ymm19,YMMWORD PTR [rdi+rdx*1+0x20]
  a4499e:	01 
  a4499f:	62 e1 7c 28 10 4c 17 	vmovups ymm17,YMMWORD PTR [rdi+rdx*1+0x40]
  a449a6:	02 
  a449a7:	62 e1 7c 28 10 7c 17 	vmovups ymm23,YMMWORD PTR [rdi+rdx*1+0x60]
  a449ae:	03 
  a449af:	62 a1 7c 48 28 c2    	vmovaps zmm16,zmm18
  a449b5:	62 e2 5d 48 7f c5    	vpermt2ps zmm16,zmm4,zmm5
  a449bb:	62 e2 15 48 7f d5    	vpermt2ps zmm18,zmm13,zmm5
  a449c1:	62 a1 7c 48 28 eb    	vmovaps zmm21,zmm19
  a449c7:	62 e2 5d 48 7f ed    	vpermt2ps zmm21,zmm4,zmm5
  a449cd:	62 e2 15 48 7f dd    	vpermt2ps zmm19,zmm13,zmm5
  a449d3:	62 a1 7c 48 28 e1    	vmovaps zmm20,zmm17
  a449d9:	62 e2 5d 48 7f e5    	vpermt2ps zmm20,zmm4,zmm5
  a449df:	62 e2 15 48 7f cd    	vpermt2ps zmm17,zmm13,zmm5
  a449e5:	62 21 7c 48 28 cf    	vmovaps zmm25,zmm23
  a449eb:	62 62 5d 48 7f cd    	vpermt2ps zmm25,zmm4,zmm5
  a449f1:	62 e2 15 48 7f fd    	vpermt2ps zmm23,zmm13,zmm5
  a449f7:	62 61 7c 28 10 74 17 	vmovups ymm30,YMMWORD PTR [rdi+rdx*1+0x80]
  a449fe:	04 
  a449ff:	62 01 7c 48 28 d6    	vmovaps zmm26,zmm30
  a44a05:	62 62 5d 48 7f d5    	vpermt2ps zmm26,zmm4,zmm5
  a44a0b:	62 62 15 48 7f f5    	vpermt2ps zmm30,zmm13,zmm5
  a44a11:	62 61 7c 28 10 6c 17 	vmovups ymm29,YMMWORD PTR [rdi+rdx*1+0xa0]
  a44a18:	05 
  a44a19:	62 01 7c 48 28 fd    	vmovaps zmm31,zmm29
  a44a1f:	62 62 5d 48 7f fd    	vpermt2ps zmm31,zmm4,zmm5
  a44a25:	62 62 15 48 7f ed    	vpermt2ps zmm29,zmm13,zmm5
  a44a2b:	62 61 7c 28 10 64 17 	vmovups ymm28,YMMWORD PTR [rdi+rdx*1+0xc0]
  a44a32:	06 
  a44a33:	62 01 7c 48 28 dc    	vmovaps zmm27,zmm28
  a44a39:	62 62 5d 48 7f dd    	vpermt2ps zmm27,zmm4,zmm5
  a44a3f:	62 62 15 48 7f e5    	vpermt2ps zmm28,zmm13,zmm5
  a44a45:	c5 7c 10 84 17 e0 00 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0xe0]
  a44a4c:	00 00 
  a44a4e:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a44a54:	62 72 5d 48 7f cd    	vpermt2ps zmm9,zmm4,zmm5
  a44a5a:	62 72 15 48 7f c5    	vpermt2ps zmm8,zmm13,zmm5
  a44a60:	c5 7c 10 a4 17 00 01 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x100]
  a44a67:	00 00 
  a44a69:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a44a6f:	62 72 5d 48 7f f5    	vpermt2ps zmm14,zmm4,zmm5
  a44a75:	62 72 15 48 7f e5    	vpermt2ps zmm12,zmm13,zmm5
  a44a7b:	62 91 44 40 58 d4    	vaddps zmm2,zmm23,zmm28
  a44a81:	62 61 6c 40 58 c2    	vaddps zmm24,zmm18,zmm2
  a44a87:	62 d1 0c 40 58 d8    	vaddps zmm3,zmm30,zmm8
  a44a8d:	62 e1 64 40 58 f3    	vaddps zmm22,zmm19,zmm3
  a44a93:	62 51 14 40 58 d4    	vaddps zmm10,zmm29,zmm12
  a44a99:	62 e2 4d 48 bc d2    	vfnmadd231ps zmm18,zmm6,zmm2
  a44a9f:	62 91 34 40 58 d3    	vaddps zmm2,zmm25,zmm27
  a44aa5:	62 11 34 40 5c db    	vsubps zmm11,zmm25,zmm27
  a44aab:	62 41 74 40 58 ca    	vaddps zmm25,zmm17,zmm10
  a44ab1:	62 e2 4d 48 bc db    	vfnmadd231ps zmm19,zmm6,zmm3
  a44ab7:	62 d1 2c 40 58 d9    	vaddps zmm3,zmm26,zmm9
  a44abd:	62 51 2c 40 5c c9    	vsubps zmm9,zmm26,zmm9
  a44ac3:	62 61 54 40 58 db    	vaddps zmm27,zmm21,zmm3
  a44ac9:	62 e2 4d 48 bc eb    	vfnmadd231ps zmm21,zmm6,zmm3
  a44acf:	62 61 7c 40 58 d2    	vaddps zmm26,zmm16,zmm2
  a44ad5:	62 d1 0c 40 5c d8    	vsubps zmm3,zmm30,zmm8
  a44adb:	62 51 04 40 58 c6    	vaddps zmm8,zmm31,zmm14
  a44ae1:	62 c2 4d 48 bc ca    	vfnmadd231ps zmm17,zmm6,zmm10
  a44ae7:	62 41 5c 40 58 f0    	vaddps zmm30,zmm20,zmm8
  a44aed:	62 71 24 48 59 d7    	vmulps zmm10,zmm11,zmm7
  a44af3:	62 71 34 48 59 cf    	vmulps zmm9,zmm9,zmm7
  a44af9:	62 51 04 40 5c de    	vsubps zmm11,zmm31,zmm14
  a44aff:	62 51 64 40 58 f1    	vaddps zmm14,zmm19,zmm9
  a44b05:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a44b0b:	62 c2 4d 48 bc e0    	vfnmadd231ps zmm20,zmm6,zmm8
  a44b11:	62 71 54 40 5c c3    	vsubps zmm8,zmm21,zmm3
  a44b17:	62 51 14 40 5c e4    	vsubps zmm12,zmm29,zmm12
  a44b1d:	62 62 7d 48 18 3d 41 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff630b41]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a44b24:	0b 63 ff 
  a44b27:	62 01 3c 48 59 ef    	vmulps zmm29,zmm8,zmm31
  a44b2d:	62 72 7d 48 18 3d a1 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff6309a1]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a44b34:	09 63 ff 
  a44b37:	62 42 0d 48 b8 ef    	vfmadd231ps zmm29,zmm14,zmm15
  a44b3d:	62 71 24 48 59 df    	vmulps zmm11,zmm11,zmm7
  a44b43:	62 e2 4d 48 bc c2    	vfnmadd231ps zmm16,zmm6,zmm2
  a44b49:	62 d1 74 40 58 d3    	vaddps zmm2,zmm17,zmm11
  a44b4f:	62 71 1c 48 59 e7    	vmulps zmm12,zmm12,zmm7
  a44b55:	62 81 44 40 5c fc    	vsubps zmm23,zmm23,zmm28
  a44b5b:	62 41 5c 40 5c e4    	vsubps zmm28,zmm20,zmm12
  a44b61:	62 51 3c 48 59 c7    	vmulps zmm8,zmm8,zmm15
  a44b67:	62 52 05 40 bc c6    	vfnmadd231ps zmm8,zmm31,zmm14
  a44b6d:	62 72 7d 48 18 3d a1 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff6307a1]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a44b74:	07 63 ff 
  a44b77:	62 51 1c 40 59 f7    	vmulps zmm14,zmm28,zmm15
  a44b7d:	62 62 7d 48 18 3d 55 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff630955]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a44b84:	09 63 ff 
  a44b87:	62 12 6d 48 b8 f7    	vfmadd231ps zmm14,zmm2,zmm31
  a44b8d:	62 01 1c 40 59 e7    	vmulps zmm28,zmm28,zmm31
  a44b93:	62 62 05 48 bc e2    	vfnmadd231ps zmm28,zmm15,zmm2
  a44b99:	62 d1 6c 40 58 d2    	vaddps zmm2,zmm18,zmm10
  a44b9f:	62 51 6c 40 5c d2    	vsubps zmm10,zmm18,zmm10
  a44ba5:	62 51 64 40 5c c9    	vsubps zmm9,zmm19,zmm9
  a44bab:	62 b1 64 48 58 dd    	vaddps zmm3,zmm3,zmm21
  a44bb1:	62 51 74 40 5c db    	vsubps zmm11,zmm17,zmm11
  a44bb7:	62 81 4c 40 58 e9    	vaddps zmm21,zmm22,zmm25
  a44bbd:	62 e1 44 40 59 cf    	vmulps zmm17,zmm23,zmm7
  a44bc3:	62 31 1c 48 58 e4    	vaddps zmm12,zmm12,zmm20
  a44bc9:	62 a1 7c 40 5c d1    	vsubps zmm18,zmm16,zmm17
  a44bcf:	62 a1 74 40 58 e0    	vaddps zmm20,zmm17,zmm16
  a44bd5:	62 c1 64 48 59 ff    	vmulps zmm23,zmm3,zmm15
  a44bdb:	62 82 35 48 b8 ff    	vfmadd231ps zmm23,zmm9,zmm31
  a44be1:	62 91 64 48 59 df    	vmulps zmm3,zmm3,zmm31
  a44be7:	62 d2 05 48 bc d9    	vfnmadd231ps zmm3,zmm15,zmm9
  a44bed:	62 72 7d 48 18 3d f9 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff6308f9]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a44bf4:	08 63 ff 
  a44bf7:	62 51 1c 48 59 cf    	vmulps zmm9,zmm12,zmm15
  a44bfd:	62 e2 7d 48 18 05 f1 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff6309f1]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a44c04:	09 63 ff 
  a44c07:	62 32 25 48 bc c8    	vfnmadd231ps zmm9,zmm11,zmm16
  a44c0d:	62 31 1c 48 59 e0    	vmulps zmm12,zmm12,zmm16
  a44c13:	62 52 05 48 b8 e3    	vfmadd231ps zmm12,zmm15,zmm11
  a44c19:	62 a1 3c 40 58 dd    	vaddps zmm19,zmm24,zmm21
  a44c1f:	62 82 4d 48 ac e8    	vfnmadd213ps zmm21,zmm6,zmm24
  a44c25:	62 11 24 40 58 de    	vaddps zmm11,zmm27,zmm30
  a44c2b:	62 01 24 40 5c c6    	vsubps zmm24,zmm27,zmm30
  a44c31:	62 c1 2c 40 58 c3    	vaddps zmm16,zmm26,zmm11
  a44c37:	62 12 4d 48 ac da    	vfnmadd213ps zmm11,zmm6,zmm26
  a44c3d:	62 41 14 40 58 d6    	vaddps zmm26,zmm29,zmm14
  a44c43:	62 01 4c 40 5c c9    	vsubps zmm25,zmm22,zmm25
  a44c49:	62 81 6c 48 58 f2    	vaddps zmm22,zmm2,zmm26
  a44c4f:	62 62 4d 48 ac d2    	vfnmadd213ps zmm26,zmm6,zmm2
  a44c55:	62 91 3c 48 58 d4    	vaddps zmm2,zmm8,zmm28
  a44c5b:	62 11 3c 48 5c c4    	vsubps zmm8,zmm8,zmm28
  a44c61:	62 e1 6c 40 58 ca    	vaddps zmm17,zmm18,zmm2
  a44c67:	62 b2 4d 48 ac d2    	vfnmadd213ps zmm2,zmm6,zmm18
  a44c6d:	62 41 44 40 58 d9    	vaddps zmm27,zmm23,zmm9
  a44c73:	62 51 14 40 5c f6    	vsubps zmm14,zmm29,zmm14
  a44c79:	62 01 2c 48 58 e3    	vaddps zmm28,zmm10,zmm27
  a44c7f:	62 42 4d 48 ac da    	vfnmadd213ps zmm27,zmm6,zmm10
  a44c85:	62 51 64 48 5c d4    	vsubps zmm10,zmm3,zmm12
  a44c8b:	62 d1 64 48 58 dc    	vaddps zmm3,zmm3,zmm12
  a44c91:	62 c1 5c 40 58 d2    	vaddps zmm18,zmm20,zmm10
  a44c97:	62 32 4d 48 ac d4    	vfnmadd213ps zmm10,zmm6,zmm20
  a44c9d:	62 71 3c 40 59 e7    	vmulps zmm12,zmm24,zmm7
  a44ca3:	62 51 44 40 5c c9    	vsubps zmm9,zmm23,zmm9
  a44ca9:	62 41 54 40 58 ec    	vaddps zmm29,zmm21,zmm12
  a44caf:	62 e1 34 40 59 ff    	vmulps zmm23,zmm25,zmm7
  a44cb5:	62 51 54 40 5c e4    	vsubps zmm12,zmm21,zmm12
  a44cbb:	62 a1 24 48 5c e7    	vsubps zmm20,zmm11,zmm23
  a44cc1:	62 71 3c 48 59 c7    	vmulps zmm8,zmm8,zmm7
  a44cc7:	62 41 44 40 58 c3    	vaddps zmm24,zmm23,zmm11
  a44ccd:	62 51 2c 40 58 d8    	vaddps zmm11,zmm26,zmm8
  a44cd3:	62 71 0c 48 59 f7    	vmulps zmm14,zmm14,zmm7
  a44cd9:	62 51 2c 40 5c c0    	vsubps zmm8,zmm26,zmm8
  a44cdf:	62 41 6c 48 5c d6    	vsubps zmm26,zmm2,zmm14
  a44ce5:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a44ceb:	62 41 6c 48 58 ce    	vaddps zmm25,zmm2,zmm14
  a44cf1:	62 f1 24 40 58 d3    	vaddps zmm2,zmm27,zmm3
  a44cf7:	62 71 34 48 59 cf    	vmulps zmm9,zmm9,zmm7
  a44cfd:	62 f1 24 40 5c db    	vsubps zmm3,zmm27,zmm3
  a44d03:	62 41 2c 48 5c d9    	vsubps zmm27,zmm10,zmm9
  a44d09:	62 51 2c 48 58 c9    	vaddps zmm9,zmm10,zmm9
  a44d0f:	62 e2 7d 48 7f db    	vpermt2ps zmm19,zmm0,zmm3
  a44d15:	62 72 7d 48 7f dd    	vpermt2ps zmm11,zmm0,zmm5
  a44d1b:	62 c2 75 48 7f db    	vpermt2ps zmm19,zmm1,zmm11
  a44d21:	62 e2 7d 48 7f f5    	vpermt2ps zmm22,zmm0,zmm5
  a44d27:	62 f2 7d 48 7f d5    	vpermt2ps zmm2,zmm0,zmm5
  a44d2d:	62 e2 75 48 7f f2    	vpermt2ps zmm22,zmm1,zmm2
  a44d33:	62 62 7d 48 7f e5    	vpermt2ps zmm28,zmm0,zmm5
  a44d39:	62 72 7d 48 7f e5    	vpermt2ps zmm12,zmm0,zmm5
  a44d3f:	62 42 75 48 7f e4    	vpermt2ps zmm28,zmm1,zmm12
  a44d45:	62 62 7d 48 7f ed    	vpermt2ps zmm29,zmm0,zmm5
  a44d4b:	62 72 7d 48 7f c5    	vpermt2ps zmm8,zmm0,zmm5
  a44d51:	62 42 75 48 7f e8    	vpermt2ps zmm29,zmm1,zmm8
  a44d57:	62 81 e5 40 14 fc    	vunpcklpd zmm23,zmm19,zmm28
  a44d5d:	62 81 e5 40 15 ec    	vunpckhpd zmm21,zmm19,zmm28
  a44d63:	62 81 cd 40 14 dd    	vunpcklpd zmm19,zmm22,zmm29
  a44d69:	62 91 cd 40 15 d5    	vunpckhpd zmm2,zmm22,zmm29
  a44d6f:	62 b1 7c 48 28 dd    	vmovaps zmm3,zmm21
  a44d75:	62 61 7c 48 28 25 81 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff682081]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a44d7c:	20 68 ff 
  a44d7f:	62 f2 1d 40 7f da    	vpermt2ps zmm3,zmm28,zmm2
  a44d85:	62 71 7c 48 28 35 b1 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6820b1]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a44d8c:	20 68 ff 
  a44d8f:	62 e2 0d 48 7f ea    	vpermt2ps zmm21,zmm14,zmm2
  a44d95:	62 c2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm9
  a44d9b:	62 a1 7c 48 28 f7    	vmovaps zmm22,zmm23
  a44da1:	62 a2 0d 48 7f fb    	vpermt2ps zmm23,zmm14,zmm19
  a44da7:	62 e2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm5
  a44dad:	62 e2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm5
  a44db3:	62 e2 7d 48 7f e5    	vpermt2ps zmm20,zmm0,zmm5
  a44db9:	62 62 7d 48 7f d5    	vpermt2ps zmm26,zmm0,zmm5
  a44dbf:	62 62 7d 48 7f dd    	vpermt2ps zmm27,zmm0,zmm5
  a44dc5:	62 62 7d 48 7f c5    	vpermt2ps zmm24,zmm0,zmm5
  a44dcb:	62 62 7d 48 7f cd    	vpermt2ps zmm25,zmm0,zmm5
  a44dd1:	62 82 75 48 7f c2    	vpermt2ps zmm16,zmm1,zmm26
  a44dd7:	62 82 75 48 7f cb    	vpermt2ps zmm17,zmm1,zmm27
  a44ddd:	62 82 75 48 7f d0    	vpermt2ps zmm18,zmm1,zmm24
  a44de3:	62 82 75 48 7f e1    	vpermt2ps zmm20,zmm1,zmm25
  a44de9:	62 b1 fd 40 14 d2    	vunpcklpd zmm2,zmm16,zmm18
  a44def:	62 31 fd 40 15 c2    	vunpckhpd zmm8,zmm16,zmm18
  a44df5:	62 31 f5 40 14 cc    	vunpcklpd zmm9,zmm17,zmm20
  a44dfb:	62 31 f5 40 15 d4    	vunpckhpd zmm10,zmm17,zmm20
  a44e01:	62 71 7c 48 28 da    	vmovaps zmm11,zmm2
  a44e07:	62 d2 0d 48 7f d1    	vpermt2ps zmm2,zmm14,zmm9
  a44e0d:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a44e13:	62 52 1d 40 7f e2    	vpermt2ps zmm12,zmm28,zmm10
  a44e19:	62 52 0d 48 7f c2    	vpermt2ps zmm8,zmm14,zmm10
  a44e1f:	62 71 7c 48 10 51 04 	vmovups zmm10,ZMMWORD PTR [rcx+0x100]
  a44e26:	62 71 7c 48 10 71 05 	vmovups zmm14,ZMMWORD PTR [rcx+0x140]
  a44e2d:	62 c1 64 48 59 c2    	vmulps zmm16,zmm3,zmm10
  a44e33:	62 c2 1d 48 bc c6    	vfnmadd231ps zmm16,zmm12,zmm14
  a44e39:	62 51 1c 48 59 d2    	vmulps zmm10,zmm12,zmm10
  a44e3f:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a44e46:	62 72 0d 48 b8 d3    	vfmadd231ps zmm10,zmm14,zmm3
  a44e4c:	62 f1 7c 48 10 59 03 	vmovups zmm3,ZMMWORD PTR [rcx+0xc0]
  a44e53:	62 51 44 40 59 f4    	vmulps zmm14,zmm23,zmm12
  a44e59:	62 72 6d 48 bc f3    	vfnmadd231ps zmm14,zmm2,zmm3
  a44e5f:	62 d1 6c 48 59 d4    	vmulps zmm2,zmm2,zmm12
  a44e65:	62 71 7c 48 10 61 06 	vmovups zmm12,ZMMWORD PTR [rcx+0x180]
  a44e6c:	62 b2 65 48 b8 d7    	vfmadd231ps zmm2,zmm3,zmm23
  a44e72:	62 f1 7c 48 10 59 07 	vmovups zmm3,ZMMWORD PTR [rcx+0x1c0]
  a44e79:	62 c1 54 40 59 cc    	vmulps zmm17,zmm21,zmm12
  a44e7f:	62 e2 3d 48 bc cb    	vfnmadd231ps zmm17,zmm8,zmm3
  a44e85:	62 51 3c 48 59 c4    	vmulps zmm8,zmm8,zmm12
  a44e8b:	62 32 65 48 b8 c5    	vfmadd231ps zmm8,zmm3,zmm21
  a44e91:	62 a2 1d 40 7f f3    	vpermt2ps zmm22,zmm28,zmm19
  a44e97:	62 52 1d 40 7f d9    	vpermt2ps zmm11,zmm28,zmm9
  a44e9d:	62 b1 4c 40 58 d8    	vaddps zmm3,zmm22,zmm16
  a44ea3:	62 31 4c 40 5c c8    	vsubps zmm9,zmm22,zmm16
  a44ea9:	62 51 6c 48 58 e0    	vaddps zmm12,zmm2,zmm8
  a44eaf:	62 d1 6c 48 5c d0    	vsubps zmm2,zmm2,zmm8
  a44eb5:	62 51 2c 48 58 c3    	vaddps zmm8,zmm10,zmm11
  a44ebb:	62 51 24 48 5c d2    	vsubps zmm10,zmm11,zmm10
  a44ec1:	62 31 0c 48 58 d9    	vaddps zmm11,zmm14,zmm17
  a44ec7:	62 51 74 40 5c f6    	vsubps zmm14,zmm17,zmm14
  a44ecd:	62 e1 34 48 58 c2    	vaddps zmm16,zmm9,zmm2
  a44ed3:	62 f1 34 48 5c d2    	vsubps zmm2,zmm9,zmm2
  a44ed9:	62 51 2c 48 58 ce    	vaddps zmm9,zmm10,zmm14
  a44edf:	62 51 2c 48 5c d6    	vsubps zmm10,zmm10,zmm14
  a44ee5:	62 51 3c 48 5c f4    	vsubps zmm14,zmm8,zmm12
  a44eeb:	62 51 3c 48 58 c4    	vaddps zmm8,zmm8,zmm12
  a44ef1:	62 51 64 48 5c e3    	vsubps zmm12,zmm3,zmm11
  a44ef7:	62 d1 64 48 58 db    	vaddps zmm3,zmm3,zmm11
  a44efd:	62 53 7d 48 19 c3 02 	vextractf32x4 xmm11,zmm8,0x2
  a44f04:	62 71 7c 48 28 3d b2 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff64d2b2]        # 921c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f670>
  a44f0b:	d2 64 ff 
  a44f0e:	62 72 05 48 7f c3    	vpermt2ps zmm8,zmm15,zmm3
  a44f14:	62 71 7c 48 11 04 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm8
  a44f1b:	62 f3 7d 48 19 db 02 	vextractf32x4 xmm3,zmm3,0x2
  a44f22:	c5 a0 14 db          	vunpcklps xmm3,xmm11,xmm3
  a44f26:	c5 f8 13 5c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm3
  a44f2c:	62 73 7d 48 19 cb 02 	vextractf32x4 xmm3,zmm9,0x2
  a44f33:	62 32 05 48 7f c8    	vpermt2ps zmm9,zmm15,zmm16
  a44f39:	62 71 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x48],zmm9
  a44f40:	48 00 00 00 
  a44f44:	62 c3 7d 48 19 c0 02 	vextractf32x4 xmm8,zmm16,0x2
  a44f4b:	c4 c1 60 14 d8       	vunpcklps xmm3,xmm3,xmm8
  a44f50:	c5 f8 13 9c 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm3
  a44f57:	00 00 
  a44f59:	62 73 7d 48 19 f3 02 	vextractf32x4 xmm3,zmm14,0x2
  a44f60:	62 52 05 48 7f f4    	vpermt2ps zmm14,zmm15,zmm12
  a44f66:	62 71 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x90],zmm14
  a44f6d:	90 00 00 00 
  a44f71:	62 53 7d 48 19 e0 02 	vextractf32x4 xmm8,zmm12,0x2
  a44f78:	c4 c1 60 14 d8       	vunpcklps xmm3,xmm3,xmm8
  a44f7d:	c5 f8 13 9c 16 d0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xd0],xmm3
  a44f84:	00 00 
  a44f86:	62 73 7d 48 19 d3 02 	vextractf32x4 xmm3,zmm10,0x2
  a44f8d:	62 72 05 48 7f d2    	vpermt2ps zmm10,zmm15,zmm2
  a44f93:	62 71 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xd8],zmm10
  a44f9a:	d8 00 00 00 
  a44f9e:	62 f3 7d 48 19 d2 02 	vextractf32x4 xmm2,zmm2,0x2
  a44fa5:	c5 e0 14 d2          	vunpcklps xmm2,xmm3,xmm2
  a44fa9:	c5 f8 13 94 16 18 01 	vmovlps QWORD PTR [rsi+rdx*1+0x118],xmm2
  a44fb0:	00 00 
  a44fb2:	48 81 c2 20 01 00 00 	add    rdx,0x120
  a44fb9:	48 39 d0             	cmp    rax,rdx
  a44fbc:	0f 85 ce f9 ff ff    	jne    a44990 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x50>
  a44fc2:	c5 f8 77             	vzeroupper
  a44fc5:	c3                   	ret
