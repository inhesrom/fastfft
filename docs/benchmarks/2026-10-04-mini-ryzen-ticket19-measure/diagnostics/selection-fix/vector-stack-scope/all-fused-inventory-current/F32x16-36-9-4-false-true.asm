
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a738c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a738c0:	55                   	push   rbp
  a738c1:	48 89 e5             	mov    rbp,rsp
  a738c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a738c8:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a738cf:	62 f1 7c 48 28 05 a7 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6536a7]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a738d6:	36 65 ff 
  a738d9:	48 c1 e2 05          	shl    rdx,0x5
  a738dd:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a738e1:	31 d2                	xor    edx,edx
  a738e3:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a738e8:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a738ed:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a738f1:	62 f2 7d 48 18 35 65 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff601b65]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a738f8:	1b 60 ff 
  a738fb:	62 f2 7d 48 18 3d cf 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff6019cf]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a73902:	19 60 ff 
  a73905:	62 71 7c 48 28 2d 71 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff621271]        # 94b80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x22030>
  a7390c:	12 62 ff 
  a7390f:	90                   	nop
  a73910:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a73915:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a7391a:	62 e1 7c 28 10 04 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1]
  a73921:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x20]
  a73928:	01 
  a73929:	62 e1 7c 28 10 4c 17 	vmovups ymm17,YMMWORD PTR [rdi+rdx*1+0x40]
  a73930:	02 
  a73931:	62 e1 7c 28 10 7c 17 	vmovups ymm23,YMMWORD PTR [rdi+rdx*1+0x60]
  a73938:	03 
  a73939:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a7393f:	62 e2 15 48 7f c5    	vpermt2ps zmm16,zmm13,zmm5
  a73945:	62 a1 7c 48 28 ea    	vmovaps zmm21,zmm18
  a7394b:	62 f1 7c 48 28 0d eb 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6211eb]        # 94b40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21ff0>
  a73952:	11 62 ff 
  a73955:	62 e2 75 48 7f e5    	vpermt2ps zmm20,zmm1,zmm5
  a7395b:	62 e2 15 48 7f d5    	vpermt2ps zmm18,zmm13,zmm5
  a73961:	62 a1 7c 48 28 d9    	vmovaps zmm19,zmm17
  a73967:	62 e2 15 48 7f cd    	vpermt2ps zmm17,zmm13,zmm5
  a7396d:	62 e2 75 48 7f ed    	vpermt2ps zmm21,zmm1,zmm5
  a73973:	62 21 7c 48 28 c7    	vmovaps zmm24,zmm23
  a73979:	62 e2 15 48 7f fd    	vpermt2ps zmm23,zmm13,zmm5
  a7397f:	62 61 7c 28 10 54 17 	vmovups ymm26,YMMWORD PTR [rdi+rdx*1+0x80]
  a73986:	04 
  a73987:	62 e2 75 48 7f dd    	vpermt2ps zmm19,zmm1,zmm5
  a7398d:	62 01 7c 48 28 ca    	vmovaps zmm25,zmm26
  a73993:	62 62 15 48 7f d5    	vpermt2ps zmm26,zmm13,zmm5
  a73999:	62 61 7c 28 10 6c 17 	vmovups ymm29,YMMWORD PTR [rdi+rdx*1+0xa0]
  a739a0:	05 
  a739a1:	62 62 75 48 7f c5    	vpermt2ps zmm24,zmm1,zmm5
  a739a7:	62 01 7c 48 28 f5    	vmovaps zmm30,zmm29
  a739ad:	62 62 15 48 7f ed    	vpermt2ps zmm29,zmm13,zmm5
  a739b3:	62 61 7c 28 10 5c 17 	vmovups ymm27,YMMWORD PTR [rdi+rdx*1+0xc0]
  a739ba:	06 
  a739bb:	62 62 75 48 7f cd    	vpermt2ps zmm25,zmm1,zmm5
  a739c1:	62 01 7c 48 28 e3    	vmovaps zmm28,zmm27
  a739c7:	62 62 15 48 7f dd    	vpermt2ps zmm27,zmm13,zmm5
  a739cd:	62 61 7c 28 10 7c 17 	vmovups ymm31,YMMWORD PTR [rdi+rdx*1+0xe0]
  a739d4:	07 
  a739d5:	62 62 75 48 7f f5    	vpermt2ps zmm30,zmm1,zmm5
  a739db:	62 11 7c 48 28 c7    	vmovaps zmm8,zmm31
  a739e1:	62 62 15 48 7f fd    	vpermt2ps zmm31,zmm13,zmm5
  a739e7:	c5 7c 10 8c 17 00 01 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x100]
  a739ee:	00 00 
  a739f0:	62 72 75 48 7f c5    	vpermt2ps zmm8,zmm1,zmm5
  a739f6:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a739fc:	62 72 75 48 7f e5    	vpermt2ps zmm12,zmm1,zmm5
  a73a02:	62 72 15 48 7f cd    	vpermt2ps zmm9,zmm13,zmm5
  a73a08:	62 62 75 48 7f e5    	vpermt2ps zmm28,zmm1,zmm5
  a73a0e:	62 11 3c 40 58 f4    	vaddps zmm14,zmm24,zmm28
  a73a14:	62 d1 34 40 58 d0    	vaddps zmm2,zmm25,zmm8
  a73a1a:	62 d1 0c 40 58 dc    	vaddps zmm3,zmm30,zmm12
  a73a20:	62 c1 5c 40 58 f6    	vaddps zmm22,zmm20,zmm14
  a73a26:	62 c2 4d 48 bc e6    	vfnmadd231ps zmm20,zmm6,zmm14
  a73a2c:	62 11 44 40 58 f3    	vaddps zmm14,zmm23,zmm27
  a73a32:	62 11 44 40 5c d3    	vsubps zmm10,zmm23,zmm27
  a73a38:	62 e1 54 40 58 fa    	vaddps zmm23,zmm21,zmm2
  a73a3e:	62 e2 4d 48 bc ea    	vfnmadd231ps zmm21,zmm6,zmm2
  a73a44:	62 91 2c 40 58 d7    	vaddps zmm2,zmm26,zmm31
  a73a4a:	62 11 2c 40 5c df    	vsubps zmm11,zmm26,zmm31
  a73a50:	62 61 6c 40 58 da    	vaddps zmm27,zmm18,zmm2
  a73a56:	62 e2 4d 48 bc d2    	vfnmadd231ps zmm18,zmm6,zmm2
  a73a5c:	62 41 7c 40 58 d6    	vaddps zmm26,zmm16,zmm14
  a73a62:	62 d1 34 40 5c d0    	vsubps zmm2,zmm25,zmm8
  a73a68:	62 61 64 40 58 cb    	vaddps zmm25,zmm19,zmm3
  a73a6e:	62 e2 4d 48 bc db    	vfnmadd231ps zmm19,zmm6,zmm3
  a73a74:	62 d1 14 40 58 d9    	vaddps zmm3,zmm29,zmm9
  a73a7a:	62 51 14 40 5c c1    	vsubps zmm8,zmm29,zmm9
  a73a80:	62 61 74 40 58 fb    	vaddps zmm31,zmm17,zmm3
  a73a86:	62 71 2c 48 59 cf    	vmulps zmm9,zmm10,zmm7
  a73a8c:	62 71 24 48 59 d7    	vmulps zmm10,zmm11,zmm7
  a73a92:	62 e2 4d 48 bc cb    	vfnmadd231ps zmm17,zmm6,zmm3
  a73a98:	62 41 5c 40 58 e9    	vaddps zmm29,zmm20,zmm9
  a73a9e:	62 f1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm7
  a73aa4:	62 d1 0c 40 5c dc    	vsubps zmm3,zmm30,zmm12
  a73aaa:	62 c2 4d 48 bc c6    	vfnmadd231ps zmm16,zmm6,zmm14
  a73ab0:	62 51 54 40 58 da    	vaddps zmm11,zmm21,zmm10
  a73ab6:	62 71 6c 40 5c e2    	vsubps zmm12,zmm18,zmm2
  a73abc:	62 71 3c 48 59 c7    	vmulps zmm8,zmm8,zmm7
  a73ac2:	62 11 3c 40 5c f4    	vsubps zmm14,zmm24,zmm28
  a73ac8:	62 72 7d 48 18 3d 96 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff601b96]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a73acf:	1b 60 ff 
  a73ad2:	62 41 1c 48 59 c7    	vmulps zmm24,zmm12,zmm15
  a73ad8:	62 41 5c 40 5c e1    	vsubps zmm28,zmm20,zmm9
  a73ade:	62 51 64 40 58 c8    	vaddps zmm9,zmm19,zmm8
  a73ae4:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a73aea:	62 62 7d 48 18 35 e4 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff6019e4]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a73af1:	19 60 ff 
  a73af4:	62 02 25 48 b8 c6    	vfmadd231ps zmm24,zmm11,zmm30
  a73afa:	62 51 54 40 5c d2    	vsubps zmm10,zmm21,zmm10
  a73b00:	62 e1 74 40 5c e3    	vsubps zmm20,zmm17,zmm3
  a73b06:	62 11 1c 48 59 e6    	vmulps zmm12,zmm12,zmm30
  a73b0c:	62 52 05 48 bc e3    	vfnmadd231ps zmm12,zmm15,zmm11
  a73b12:	62 f2 7d 48 18 0d fc 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff6017fc]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a73b19:	17 60 ff 
  a73b1c:	62 71 5c 40 59 d9    	vmulps zmm11,zmm20,zmm1
  a73b22:	62 f2 7d 48 18 25 b0 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff6019b0]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a73b29:	19 60 ff 
  a73b2c:	62 72 35 48 b8 dc    	vfmadd231ps zmm11,zmm9,zmm4
  a73b32:	62 61 5c 40 59 f4    	vmulps zmm30,zmm20,zmm4
  a73b38:	62 42 75 48 bc f1    	vfnmadd231ps zmm30,zmm1,zmm9
  a73b3e:	62 b1 6c 48 58 d2    	vaddps zmm2,zmm2,zmm18
  a73b44:	62 71 0c 48 59 cf    	vmulps zmm9,zmm14,zmm7
  a73b4a:	62 51 64 40 5c c0    	vsubps zmm8,zmm19,zmm8
  a73b50:	62 81 44 40 58 e9    	vaddps zmm21,zmm23,zmm25
  a73b56:	62 b1 64 48 58 d9    	vaddps zmm3,zmm3,zmm17
  a73b5c:	62 51 7c 40 5c f1    	vsubps zmm14,zmm16,zmm9
  a73b62:	62 31 34 48 58 c8    	vaddps zmm9,zmm9,zmm16
  a73b68:	62 71 6c 48 59 f9    	vmulps zmm15,zmm2,zmm1
  a73b6e:	62 72 2d 48 b8 fc    	vfmadd231ps zmm15,zmm10,zmm4
  a73b74:	62 f1 6c 48 59 d4    	vmulps zmm2,zmm2,zmm4
  a73b7a:	62 d2 75 48 bc d2    	vfnmadd231ps zmm2,zmm1,zmm10
  a73b80:	62 f2 7d 48 18 0d 66 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff601966]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a73b87:	19 60 ff 
  a73b8a:	62 71 64 48 59 d1    	vmulps zmm10,zmm3,zmm1
  a73b90:	62 f2 7d 48 18 25 5e 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff601a5e]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a73b97:	1a 60 ff 
  a73b9a:	62 72 3d 48 bc d4    	vfnmadd231ps zmm10,zmm8,zmm4
  a73ba0:	62 f1 64 48 59 dc    	vmulps zmm3,zmm3,zmm4
  a73ba6:	62 d2 75 48 b8 d8    	vfmadd231ps zmm3,zmm1,zmm8
  a73bac:	62 a1 4c 40 58 e5    	vaddps zmm20,zmm22,zmm21
  a73bb2:	62 a2 4d 48 ac ee    	vfnmadd213ps zmm21,zmm6,zmm22
  a73bb8:	62 11 24 40 58 c7    	vaddps zmm8,zmm27,zmm31
  a73bbe:	62 01 24 40 5c df    	vsubps zmm27,zmm27,zmm31
  a73bc4:	62 c1 2c 40 58 c0    	vaddps zmm16,zmm26,zmm8
  a73bca:	62 12 4d 48 ac c2    	vfnmadd213ps zmm8,zmm6,zmm26
  a73bd0:	62 41 3c 40 58 d3    	vaddps zmm26,zmm24,zmm11
  a73bd6:	62 81 44 40 5c f9    	vsubps zmm23,zmm23,zmm25
  a73bdc:	62 81 14 40 58 d2    	vaddps zmm18,zmm29,zmm26
  a73be2:	62 02 4d 48 ac d5    	vfnmadd213ps zmm26,zmm6,zmm29
  a73be8:	62 01 1c 48 58 ee    	vaddps zmm29,zmm12,zmm30
  a73bee:	62 11 1c 48 5c e6    	vsubps zmm12,zmm12,zmm30
  a73bf4:	62 81 0c 48 58 cd    	vaddps zmm17,zmm14,zmm29
  a73bfa:	62 42 4d 48 ac ee    	vfnmadd213ps zmm29,zmm6,zmm14
  a73c00:	62 51 04 48 58 f2    	vaddps zmm14,zmm15,zmm10
  a73c06:	62 51 3c 40 5c db    	vsubps zmm11,zmm24,zmm11
  a73c0c:	62 c1 1c 40 58 f6    	vaddps zmm22,zmm28,zmm14
  a73c12:	62 12 4d 48 ac f4    	vfnmadd213ps zmm14,zmm6,zmm28
  a73c18:	62 61 6c 48 5c e3    	vsubps zmm28,zmm2,zmm3
  a73c1e:	62 f1 6c 48 58 d3    	vaddps zmm2,zmm2,zmm3
  a73c24:	62 81 34 48 58 dc    	vaddps zmm19,zmm9,zmm28
  a73c2a:	62 42 4d 48 ac e1    	vfnmadd213ps zmm28,zmm6,zmm9
  a73c30:	62 f1 24 40 59 df    	vmulps zmm3,zmm27,zmm7
  a73c36:	62 51 04 48 5c ca    	vsubps zmm9,zmm15,zmm10
  a73c3c:	62 61 54 40 58 cb    	vaddps zmm25,zmm21,zmm3
  a73c42:	62 71 44 40 59 d7    	vmulps zmm10,zmm23,zmm7
  a73c48:	62 f1 54 40 5c db    	vsubps zmm3,zmm21,zmm3
  a73c4e:	62 c1 3c 48 5c ea    	vsubps zmm21,zmm8,zmm10
  a73c54:	62 71 1c 48 59 e7    	vmulps zmm12,zmm12,zmm7
  a73c5a:	62 71 24 48 59 df    	vmulps zmm11,zmm11,zmm7
  a73c60:	62 f1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm7
  a73c66:	62 41 2c 48 58 c0    	vaddps zmm24,zmm10,zmm8
  a73c6c:	62 51 2c 40 58 c4    	vaddps zmm8,zmm26,zmm12
  a73c72:	62 51 2c 40 5c d4    	vsubps zmm10,zmm26,zmm12
  a73c78:	62 71 0c 48 58 e2    	vaddps zmm12,zmm14,zmm2
  a73c7e:	62 71 34 48 59 cf    	vmulps zmm9,zmm9,zmm7
  a73c84:	62 f1 0c 48 5c d2    	vsubps zmm2,zmm14,zmm2
  a73c8a:	62 41 1c 40 5c d9    	vsubps zmm27,zmm28,zmm9
  a73c90:	62 51 1c 40 58 c9    	vaddps zmm9,zmm28,zmm9
  a73c96:	62 51 14 40 5c f3    	vsubps zmm14,zmm29,zmm11
  a73c9c:	62 41 14 40 58 d3    	vaddps zmm26,zmm29,zmm11
  a73ca2:	62 e2 7d 48 7f e2    	vpermt2ps zmm20,zmm0,zmm2
  a73ca8:	62 72 7d 48 7f c5    	vpermt2ps zmm8,zmm0,zmm5
  a73cae:	62 f1 7c 48 28 0d 48 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff653248]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a73cb5:	32 65 ff 
  a73cb8:	62 c2 75 48 7f e0    	vpermt2ps zmm20,zmm1,zmm8
  a73cbe:	62 e2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm5
  a73cc4:	62 72 7d 48 7f e5    	vpermt2ps zmm12,zmm0,zmm5
  a73cca:	62 c2 75 48 7f d4    	vpermt2ps zmm18,zmm1,zmm12
  a73cd0:	62 f2 7d 48 7f dd    	vpermt2ps zmm3,zmm0,zmm5
  a73cd6:	62 e2 7d 48 7f f5    	vpermt2ps zmm22,zmm0,zmm5
  a73cdc:	62 e2 75 48 7f f3    	vpermt2ps zmm22,zmm1,zmm3
  a73ce2:	62 62 7d 48 7f cd    	vpermt2ps zmm25,zmm0,zmm5
  a73ce8:	62 72 7d 48 7f d5    	vpermt2ps zmm10,zmm0,zmm5
  a73cee:	62 42 75 48 7f ca    	vpermt2ps zmm25,zmm1,zmm10
  a73cf4:	62 a1 dd 40 14 fe    	vunpcklpd zmm23,zmm20,zmm22
  a73cfa:	62 a1 dd 40 15 e6    	vunpckhpd zmm20,zmm20,zmm22
  a73d00:	62 c2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm9
  a73d06:	62 81 ed 40 14 f1    	vunpcklpd zmm22,zmm18,zmm25
  a73d0c:	62 e2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm5
  a73d12:	62 e2 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm5
  a73d18:	62 e2 7d 48 7f ed    	vpermt2ps zmm21,zmm0,zmm5
  a73d1e:	62 91 ed 40 15 d1    	vunpckhpd zmm2,zmm18,zmm25
  a73d24:	62 72 7d 48 7f f5    	vpermt2ps zmm14,zmm0,zmm5
  a73d2a:	62 62 7d 48 7f dd    	vpermt2ps zmm27,zmm0,zmm5
  a73d30:	62 62 7d 48 7f c5    	vpermt2ps zmm24,zmm0,zmm5
  a73d36:	62 a1 7c 48 28 d7    	vmovaps zmm18,zmm23
  a73d3c:	62 62 7d 48 7f d5    	vpermt2ps zmm26,zmm0,zmm5
  a73d42:	62 c2 75 48 7f c6    	vpermt2ps zmm16,zmm1,zmm14
  a73d48:	62 82 75 48 7f cb    	vpermt2ps zmm17,zmm1,zmm27
  a73d4e:	62 61 7c 48 28 0d e8 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff6530e8]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a73d55:	30 65 ff 
  a73d58:	62 a2 35 40 7f fe    	vpermt2ps zmm23,zmm25,zmm22
  a73d5e:	62 82 75 48 7f d8    	vpermt2ps zmm19,zmm1,zmm24
  a73d64:	62 82 75 48 7f ea    	vpermt2ps zmm21,zmm1,zmm26
  a73d6a:	62 b1 fd 40 14 db    	vunpcklpd zmm3,zmm16,zmm19
  a73d70:	62 31 7c 48 28 c4    	vmovaps zmm8,zmm20
  a73d76:	62 31 fd 40 15 cb    	vunpckhpd zmm9,zmm16,zmm19
  a73d7c:	62 31 f5 40 14 d5    	vunpcklpd zmm10,zmm17,zmm21
  a73d82:	62 31 f5 40 15 dd    	vunpckhpd zmm11,zmm17,zmm21
  a73d88:	62 e2 35 40 7f e2    	vpermt2ps zmm20,zmm25,zmm2
  a73d8e:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a73d94:	62 d2 35 40 7f da    	vpermt2ps zmm3,zmm25,zmm10
  a73d9a:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  a73da0:	62 e1 7c 48 28 1d 56 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff653056]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a73da7:	30 65 ff 
  a73daa:	62 72 65 40 7f c2    	vpermt2ps zmm8,zmm19,zmm2
  a73db0:	62 52 35 40 7f cb    	vpermt2ps zmm9,zmm25,zmm11
  a73db6:	62 f1 7c 48 10 51 02 	vmovups zmm2,ZMMWORD PTR [rcx+0x80]
  a73dbd:	62 71 7c 48 10 79 03 	vmovups zmm15,ZMMWORD PTR [rcx+0xc0]
  a73dc4:	62 e1 44 40 59 c2    	vmulps zmm16,zmm23,zmm2
  a73dca:	62 c2 65 48 bc c7    	vfnmadd231ps zmm16,zmm3,zmm15
  a73dd0:	62 f1 64 48 59 d2    	vmulps zmm2,zmm3,zmm2
  a73dd6:	62 f1 7c 48 10 59 06 	vmovups zmm3,ZMMWORD PTR [rcx+0x180]
  a73ddd:	62 b2 05 48 b8 d7    	vfmadd231ps zmm2,zmm15,zmm23
  a73de3:	62 71 7c 48 10 79 07 	vmovups zmm15,ZMMWORD PTR [rcx+0x1c0]
  a73dea:	62 e1 5c 40 59 cb    	vmulps zmm17,zmm20,zmm3
  a73df0:	62 f1 34 48 59 db    	vmulps zmm3,zmm9,zmm3
  a73df6:	62 c2 35 48 bc cf    	vfnmadd231ps zmm17,zmm9,zmm15
  a73dfc:	62 b2 05 48 b8 dc    	vfmadd231ps zmm3,zmm15,zmm20
  a73e02:	62 71 7c 48 10 49 04 	vmovups zmm9,ZMMWORD PTR [rcx+0x100]
  a73e09:	62 71 7c 48 10 79 05 	vmovups zmm15,ZMMWORD PTR [rcx+0x140]
  a73e10:	62 52 65 40 7f f3    	vpermt2ps zmm14,zmm19,zmm11
  a73e16:	62 51 3c 48 59 d9    	vmulps zmm11,zmm8,zmm9
  a73e1c:	62 52 0d 48 bc df    	vfnmadd231ps zmm11,zmm14,zmm15
  a73e22:	62 51 0c 48 59 c9    	vmulps zmm9,zmm14,zmm9
  a73e28:	62 52 05 48 b8 c8    	vfmadd231ps zmm9,zmm15,zmm8
  a73e2e:	62 a2 65 40 7f d6    	vpermt2ps zmm18,zmm19,zmm22
  a73e34:	62 52 65 40 7f e2    	vpermt2ps zmm12,zmm19,zmm10
  a73e3a:	62 51 6c 40 58 c3    	vaddps zmm8,zmm18,zmm11
  a73e40:	62 51 6c 40 5c d3    	vsubps zmm10,zmm18,zmm11
  a73e46:	62 71 6c 48 58 db    	vaddps zmm11,zmm2,zmm3
  a73e4c:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a73e52:	62 d1 34 48 58 dc    	vaddps zmm3,zmm9,zmm12
  a73e58:	62 51 1c 48 5c c9    	vsubps zmm9,zmm12,zmm9
  a73e5e:	62 31 7c 40 58 e1    	vaddps zmm12,zmm16,zmm17
  a73e64:	62 31 74 40 5c f0    	vsubps zmm14,zmm17,zmm16
  a73e6a:	62 71 2c 48 58 fa    	vaddps zmm15,zmm10,zmm2
  a73e70:	62 f1 2c 48 5c d2    	vsubps zmm2,zmm10,zmm2
  a73e76:	62 51 34 48 58 d6    	vaddps zmm10,zmm9,zmm14
  a73e7c:	62 51 34 48 5c ce    	vsubps zmm9,zmm9,zmm14
  a73e82:	62 51 3c 48 5c f4    	vsubps zmm14,zmm8,zmm12
  a73e88:	62 51 3c 48 58 c4    	vaddps zmm8,zmm8,zmm12
  a73e8e:	62 51 64 48 5c e3    	vsubps zmm12,zmm3,zmm11
  a73e94:	62 d1 64 48 58 db    	vaddps zmm3,zmm3,zmm11
  a73e9a:	62 53 7d 48 19 c3 02 	vextractf32x4 xmm11,zmm8,0x2
  a73ea1:	62 f1 7c 48 28 0d 15 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff620d15]        # 94bc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x22070>
  a73ea8:	0d 62 ff 
  a73eab:	62 72 75 48 7f c3    	vpermt2ps zmm8,zmm1,zmm3
  a73eb1:	62 71 7c 48 11 04 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm8
  a73eb8:	62 f3 7d 48 19 db 02 	vextractf32x4 xmm3,zmm3,0x2
  a73ebf:	c5 a0 14 db          	vunpcklps xmm3,xmm11,xmm3
  a73ec3:	c5 f8 13 5c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm3
  a73ec9:	62 73 7d 48 19 fb 02 	vextractf32x4 xmm3,zmm15,0x2
  a73ed0:	62 52 75 48 7f fa    	vpermt2ps zmm15,zmm1,zmm10
  a73ed6:	62 71 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x48],zmm15
  a73edd:	48 00 00 00 
  a73ee1:	62 53 7d 48 19 d0 02 	vextractf32x4 xmm8,zmm10,0x2
  a73ee8:	c4 c1 60 14 d8       	vunpcklps xmm3,xmm3,xmm8
  a73eed:	c5 f8 13 9c 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm3
  a73ef4:	00 00 
  a73ef6:	62 73 7d 48 19 f3 02 	vextractf32x4 xmm3,zmm14,0x2
  a73efd:	62 52 75 48 7f f4    	vpermt2ps zmm14,zmm1,zmm12
  a73f03:	62 71 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x90],zmm14
  a73f0a:	90 00 00 00 
  a73f0e:	62 53 7d 48 19 e0 02 	vextractf32x4 xmm8,zmm12,0x2
  a73f15:	c4 c1 60 14 d8       	vunpcklps xmm3,xmm3,xmm8
  a73f1a:	c5 f8 13 9c 16 d0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xd0],xmm3
  a73f21:	00 00 
  a73f23:	62 f3 7d 48 19 d3 02 	vextractf32x4 xmm3,zmm2,0x2
  a73f2a:	62 d2 75 48 7f d1    	vpermt2ps zmm2,zmm1,zmm9
  a73f30:	62 f1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xd8],zmm2
  a73f37:	d8 00 00 00 
  a73f3b:	62 73 7d 48 19 ca 02 	vextractf32x4 xmm2,zmm9,0x2
  a73f42:	c5 e0 14 d2          	vunpcklps xmm2,xmm3,xmm2
  a73f46:	c5 f8 13 94 16 18 01 	vmovlps QWORD PTR [rsi+rdx*1+0x118],xmm2
  a73f4d:	00 00 
  a73f4f:	48 81 c2 20 01 00 00 	add    rdx,0x120
  a73f56:	48 39 d0             	cmp    rax,rdx
  a73f59:	0f 85 b1 f9 ff ff    	jne    a73910 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x50>
  a73f5f:	48 89 ec             	mov    rsp,rbp
  a73f62:	5d                   	pop    rbp
  a73f63:	c5 f8 77             	vzeroupper
  a73f66:	c3                   	ret
