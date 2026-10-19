
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a6f7c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a6f7c0:	48 81 ec c8 00 00 00 	sub    rsp,0xc8
  a6f7c7:	48 69 c2 60 03 00 00 	imul   rax,rdx,0x360
  a6f7ce:	31 d2                	xor    edx,edx
  a6f7d0:	62 71 7c 48 10 1c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1]
  a6f7d7:	c5 fc 10 44 17 40    	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x40]
  a6f7dd:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a6f7e3:	62 f1 7c 48 28 1d 13 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff625113]        # 94900 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21db0>
  a6f7ea:	51 62 ff 
  a6f7ed:	62 72 65 48 7f d0    	vpermt2ps zmm10,zmm3,zmm0
  a6f7f3:	62 f1 7c 48 28 35 43 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff625143]        # 94940 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21df0>
  a6f7fa:	51 62 ff 
  a6f7fd:	62 72 4d 48 7f d8    	vpermt2ps zmm11,zmm6,zmm0
  a6f803:	62 71 7c 48 10 a4 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x60]
  a6f80a:	60 00 00 00 
  a6f80e:	c5 fc 10 84 17 a0 00 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0xa0]
  a6f815:	00 00 
  a6f817:	62 51 7c 48 28 fc    	vmovaps zmm15,zmm12
  a6f81d:	62 72 65 48 7f f8    	vpermt2ps zmm15,zmm3,zmm0
  a6f823:	62 72 4d 48 7f e0    	vpermt2ps zmm12,zmm6,zmm0
  a6f829:	62 71 7c 48 10 6c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a6f830:	03 
  a6f831:	c5 fc 10 84 17 00 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x100]
  a6f838:	00 00 
  a6f83a:	62 51 7c 48 28 f5    	vmovaps zmm14,zmm13
  a6f840:	62 72 65 48 7f f0    	vpermt2ps zmm14,zmm3,zmm0
  a6f846:	62 72 4d 48 7f e8    	vpermt2ps zmm13,zmm6,zmm0
  a6f84c:	62 e1 7c 48 10 bc 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1+0x120]
  a6f853:	20 01 00 00 
  a6f857:	c5 fc 10 84 17 60 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x160]
  a6f85e:	00 00 
  a6f860:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a6f866:	62 f2 65 48 7f c8    	vpermt2ps zmm1,zmm3,zmm0
  a6f86c:	62 e2 4d 48 7f f8    	vpermt2ps zmm23,zmm6,zmm0
  a6f872:	62 f1 7c 48 10 6c 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x180]
  a6f879:	06 
  a6f87a:	c5 fc 10 84 17 c0 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x1c0]
  a6f881:	00 00 
  a6f883:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a6f889:	62 f2 65 48 7f d0    	vpermt2ps zmm2,zmm3,zmm0
  a6f88f:	62 f2 4d 48 7f e8    	vpermt2ps zmm5,zmm6,zmm0
  a6f895:	62 e1 7c 48 10 8c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a6f89c:	e0 01 00 00 
  a6f8a0:	c5 fc 10 84 17 20 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x220]
  a6f8a7:	00 00 
  a6f8a9:	62 21 7c 48 28 c1    	vmovaps zmm24,zmm17
  a6f8af:	62 62 65 48 7f c0    	vpermt2ps zmm24,zmm3,zmm0
  a6f8b5:	62 e2 4d 48 7f c8    	vpermt2ps zmm17,zmm6,zmm0
  a6f8bb:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x240]
  a6f8c2:	09 
  a6f8c3:	c5 fc 10 84 17 80 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x280]
  a6f8ca:	00 00 
  a6f8cc:	62 e1 7c 48 28 dc    	vmovaps zmm19,zmm4
  a6f8d2:	62 e2 65 48 7f d8    	vpermt2ps zmm19,zmm3,zmm0
  a6f8d8:	62 f2 4d 48 7f e0    	vpermt2ps zmm4,zmm6,zmm0
  a6f8de:	62 61 7c 48 10 8c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x2a0]
  a6f8e5:	a0 02 00 00 
  a6f8e9:	c5 fc 10 84 17 e0 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x2e0]
  a6f8f0:	00 00 
  a6f8f2:	62 81 7c 48 28 f1    	vmovaps zmm22,zmm25
  a6f8f8:	62 e2 65 48 7f f0    	vpermt2ps zmm22,zmm3,zmm0
  a6f8fe:	62 62 4d 48 7f c8    	vpermt2ps zmm25,zmm6,zmm0
  a6f904:	62 61 7c 48 10 54 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x300]
  a6f90b:	0c 
  a6f90c:	c5 fc 10 84 17 40 03 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x340]
  a6f913:	00 00 
  a6f915:	62 01 7c 48 28 da    	vmovaps zmm27,zmm26
  a6f91b:	62 62 65 48 7f d8    	vpermt2ps zmm27,zmm3,zmm0
  a6f921:	62 62 4d 48 7f d0    	vpermt2ps zmm26,zmm6,zmm0
  a6f927:	62 f1 44 40 58 c4    	vaddps zmm0,zmm23,zmm4
  a6f92d:	62 f1 24 48 58 f8    	vaddps zmm7,zmm11,zmm0
  a6f933:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm7
  a6f93a:	01 
  a6f93b:	62 01 54 48 58 e1    	vaddps zmm28,zmm5,zmm25
  a6f941:	62 91 1c 48 58 dc    	vaddps zmm3,zmm12,zmm28
  a6f947:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a6f94e:	fe 
  a6f94f:	62 01 74 40 58 ea    	vaddps zmm29,zmm17,zmm26
  a6f955:	62 91 14 48 58 f5    	vaddps zmm6,zmm13,zmm29
  a6f95b:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm6
  a6f962:	ff 
  a6f963:	62 e1 64 48 58 e6    	vaddps zmm20,zmm3,zmm6
  a6f969:	62 b1 44 48 58 dc    	vaddps zmm3,zmm7,zmm20
  a6f96f:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a6f976:	62 21 74 48 58 f3    	vaddps zmm30,zmm1,zmm19
  a6f97c:	62 81 2c 48 58 ee    	vaddps zmm21,zmm10,zmm30
  a6f982:	62 21 6c 48 58 fe    	vaddps zmm31,zmm2,zmm22
  a6f988:	62 f2 7d 48 18 3d ce 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff605ace]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a6f98f:	5a 60 ff 
  a6f992:	62 72 45 48 bc d8    	vfnmadd231ps zmm11,zmm7,zmm0
  a6f998:	62 91 04 48 58 f7    	vaddps zmm6,zmm15,zmm31
  a6f99e:	62 31 74 48 5c cb    	vsubps zmm9,zmm1,zmm19
  a6f9a4:	62 11 3c 40 58 c3    	vaddps zmm8,zmm24,zmm27
  a6f9aa:	62 12 45 48 bc e4    	vfnmadd231ps zmm12,zmm7,zmm28
  a6f9b0:	62 d1 0c 48 58 c8    	vaddps zmm1,zmm14,zmm8
  a6f9b6:	62 b1 6c 48 5c d6    	vsubps zmm2,zmm2,zmm22
  a6f9bc:	62 e1 4c 48 58 f1    	vaddps zmm22,zmm6,zmm1
  a6f9c2:	62 12 45 48 bc ff    	vfnmadd231ps zmm15,zmm7,zmm31
  a6f9c8:	62 b1 54 40 58 c6    	vaddps zmm0,zmm21,zmm22
  a6f9ce:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a6f9d5:	02 
  a6f9d6:	62 f2 7d 48 18 1d f4 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff6058f4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a6f9dd:	58 60 ff 
  a6f9e0:	62 71 34 48 59 cb    	vmulps zmm9,zmm9,zmm3
  a6f9e6:	62 01 54 48 5c c9    	vsubps zmm25,zmm5,zmm25
  a6f9ec:	62 d1 24 48 58 e9    	vaddps zmm5,zmm11,zmm9
  a6f9f2:	62 f1 6c 48 59 d3    	vmulps zmm2,zmm2,zmm3
  a6f9f8:	62 12 45 48 bc ed    	vfnmadd231ps zmm13,zmm7,zmm29
  a6f9fe:	62 61 1c 48 58 e2    	vaddps zmm28,zmm12,zmm2
  a6fa04:	62 61 34 40 59 eb    	vmulps zmm29,zmm25,zmm3
  a6fa0a:	62 01 3c 40 5c c3    	vsubps zmm24,zmm24,zmm27
  a6fa10:	62 01 04 48 5c dd    	vsubps zmm27,zmm15,zmm29
  a6fa16:	62 52 45 48 bc f0    	vfnmadd231ps zmm14,zmm7,zmm8
  a6fa1c:	62 e2 7d 48 18 15 42 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff605c42]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a6fa23:	5c 60 ff 
  a6fa26:	62 21 24 40 59 ca    	vmulps zmm25,zmm27,zmm18
  a6fa2c:	62 e2 7d 48 18 1d a2 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff605aa2]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a6fa33:	5a 60 ff 
  a6fa36:	62 22 1d 40 b8 cb    	vfmadd231ps zmm25,zmm28,zmm19
  a6fa3c:	62 71 3c 40 59 c3    	vmulps zmm8,zmm24,zmm3
  a6fa42:	62 81 74 40 5c ca    	vsubps zmm17,zmm17,zmm26
  a6fa48:	62 41 14 48 58 c0    	vaddps zmm24,zmm13,zmm8
  a6fa4e:	62 61 74 40 59 d3    	vmulps zmm26,zmm17,zmm3
  a6fa54:	62 12 45 48 bc d6    	vfnmadd231ps zmm10,zmm7,zmm30
  a6fa5a:	62 01 0c 48 5c f2    	vsubps zmm30,zmm14,zmm26
  a6fa60:	62 f1 44 40 5c e4    	vsubps zmm4,zmm23,zmm4
  a6fa66:	62 62 7d 48 18 3d a8 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff6058a8]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a6fa6d:	58 60 ff 
  a6fa70:	62 81 0c 40 59 c7    	vmulps zmm16,zmm30,zmm31
  a6fa76:	62 f2 7d 48 18 05 5c 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff605a5c]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a6fa7d:	5a 60 ff 
  a6fa80:	62 e2 3d 40 b8 c0    	vfmadd231ps zmm16,zmm24,zmm0
  a6fa86:	62 21 24 40 59 db    	vmulps zmm27,zmm27,zmm19
  a6fa8c:	62 02 6d 40 bc dc    	vfnmadd231ps zmm27,zmm18,zmm28
  a6fa92:	62 a1 34 40 58 c8    	vaddps zmm17,zmm25,zmm16
  a6fa98:	62 61 0c 40 59 e0    	vmulps zmm28,zmm30,zmm0
  a6fa9e:	62 02 05 40 bc e0    	vfnmadd231ps zmm28,zmm31,zmm24
  a6faa4:	62 a1 54 48 58 f9    	vaddps zmm23,zmm5,zmm17
  a6faaa:	62 61 5c 48 59 c3    	vmulps zmm24,zmm4,zmm3
  a6fab0:	62 51 24 48 5c c9    	vsubps zmm9,zmm11,zmm9
  a6fab6:	62 11 2c 48 5c d8    	vsubps zmm11,zmm10,zmm24
  a6fabc:	62 f1 1c 48 5c d2    	vsubps zmm2,zmm12,zmm2
  a6fac2:	62 01 24 40 58 f4    	vaddps zmm30,zmm27,zmm28
  a6fac8:	62 51 14 40 58 e7    	vaddps zmm12,zmm29,zmm15
  a6face:	62 81 24 48 58 de    	vaddps zmm19,zmm11,zmm30
  a6fad4:	62 51 14 48 5c c0    	vsubps zmm8,zmm13,zmm8
  a6fada:	62 11 1c 48 59 ef    	vmulps zmm13,zmm12,zmm31
  a6fae0:	62 72 6d 48 b8 e8    	vfmadd231ps zmm13,zmm2,zmm0
  a6fae6:	62 51 2c 40 58 f6    	vaddps zmm14,zmm26,zmm14
  a6faec:	62 f2 7d 48 18 25 fa 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff6059fa]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a6faf3:	59 60 ff 
  a6faf6:	62 71 0c 48 59 fc    	vmulps zmm15,zmm14,zmm4
  a6fafc:	62 e2 7d 48 18 15 f2 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff605af2]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a6fb03:	5a 60 ff 
  a6fb06:	62 32 3d 48 bc fa    	vfnmadd231ps zmm15,zmm8,zmm18
  a6fb0c:	62 51 3c 40 58 d2    	vaddps zmm10,zmm24,zmm10
  a6fb12:	62 41 14 48 58 d7    	vaddps zmm26,zmm13,zmm15
  a6fb18:	62 71 1c 48 59 e0    	vmulps zmm12,zmm12,zmm0
  a6fb1e:	62 72 05 40 bc e2    	vfnmadd231ps zmm12,zmm31,zmm2
  a6fb24:	62 01 34 48 58 c2    	vaddps zmm24,zmm9,zmm26
  a6fb2a:	62 b1 0c 48 59 d2    	vmulps zmm2,zmm14,zmm18
  a6fb30:	62 d2 5d 48 b8 d0    	vfmadd231ps zmm2,zmm4,zmm8
  a6fb36:	62 71 1c 48 5c c2    	vsubps zmm8,zmm12,zmm2
  a6fb3c:	62 e2 45 48 ac 64 24 	vfnmadd213ps zmm20,zmm7,ZMMWORD PTR [rsp+0x40]
  a6fb43:	01 
  a6fb44:	62 41 2c 48 58 f8    	vaddps zmm31,zmm10,zmm8
  a6fb4a:	62 f1 4c 48 5c c1    	vsubps zmm0,zmm6,zmm1
  a6fb50:	62 f1 7c 48 59 f3    	vmulps zmm6,zmm0,zmm3
  a6fb56:	62 f1 5c 40 58 e6    	vaddps zmm4,zmm20,zmm6
  a6fb5c:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a6fb62:	62 a2 45 48 ac f5    	vfnmadd213ps zmm22,zmm7,zmm21
  a6fb68:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a6fb6f:	fe 
  a6fb70:	62 f1 74 48 5c 4c 24 	vsubps zmm1,zmm1,ZMMWORD PTR [rsp-0x40]
  a6fb77:	ff 
  a6fb78:	62 f1 74 48 59 fb    	vmulps zmm7,zmm1,zmm3
  a6fb7e:	62 e1 4c 40 5c d7    	vsubps zmm18,zmm22,zmm7
  a6fb84:	62 e2 7d 48 ac cd    	vfnmadd213ps zmm17,zmm0,zmm5
  a6fb8a:	62 91 24 40 5c cc    	vsubps zmm1,zmm27,zmm28
  a6fb90:	62 f1 74 48 59 eb    	vmulps zmm5,zmm1,zmm3
  a6fb96:	62 f1 74 40 58 cd    	vaddps zmm1,zmm17,zmm5
  a6fb9c:	62 42 7d 48 ac f3    	vfnmadd213ps zmm30,zmm0,zmm11
  a6fba2:	62 31 34 40 5c d8    	vsubps zmm11,zmm25,zmm16
  a6fba8:	62 71 24 48 59 f3    	vmulps zmm14,zmm11,zmm3
  a6fbae:	62 41 0c 40 5c e6    	vsubps zmm28,zmm30,zmm14
  a6fbb4:	62 42 7d 48 ac d1    	vfnmadd213ps zmm26,zmm0,zmm9
  a6fbba:	62 f1 1c 48 58 d2    	vaddps zmm2,zmm12,zmm2
  a6fbc0:	62 f1 6c 48 59 d3    	vmulps zmm2,zmm2,zmm3
  a6fbc6:	62 71 2c 40 58 ca    	vaddps zmm9,zmm26,zmm2
  a6fbcc:	62 52 7d 48 ac c2    	vfnmadd213ps zmm8,zmm0,zmm10
  a6fbd2:	62 51 14 48 5c d7    	vsubps zmm10,zmm13,zmm15
  a6fbd8:	62 71 2c 48 59 d3    	vmulps zmm10,zmm10,zmm3
  a6fbde:	62 51 3c 48 5c fa    	vsubps zmm15,zmm8,zmm10
  a6fbe4:	62 f1 5c 40 5c f6    	vsubps zmm6,zmm20,zmm6
  a6fbea:	62 a1 44 48 58 f6    	vaddps zmm22,zmm7,zmm22
  a6fbf0:	62 f1 74 40 5c fd    	vsubps zmm7,zmm17,zmm5
  a6fbf6:	62 41 0c 40 58 de    	vaddps zmm27,zmm30,zmm14
  a6fbfc:	62 f1 2c 40 5c d2    	vsubps zmm2,zmm26,zmm2
  a6fc02:	62 d1 3c 48 58 ea    	vaddps zmm5,zmm8,zmm10
  a6fc08:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a6fc0f:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a6fc15:	62 61 7c 48 28 15 61 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff657361]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a6fc1c:	73 65 ff 
  a6fc1f:	62 72 2d 40 7f c2    	vpermt2ps zmm8,zmm26,zmm2
  a6fc25:	62 61 7c 48 28 2d 91 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff657391]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a6fc2c:	73 65 ff 
  a6fc2f:	62 f2 15 40 7f c2    	vpermt2ps zmm0,zmm29,zmm2
  a6fc35:	62 61 7c 48 28 f0    	vmovaps zmm30,zmm0
  a6fc3b:	62 b1 7c 48 28 d7    	vmovaps zmm2,zmm23
  a6fc41:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a6fc45:	62 f2 2d 40 7f d0    	vpermt2ps zmm2,zmm26,zmm0
  a6fc4b:	62 e2 15 40 7f f8    	vpermt2ps zmm23,zmm29,zmm0
  a6fc51:	62 11 7c 48 28 d0    	vmovaps zmm10,zmm24
  a6fc57:	62 72 2d 40 7f d0    	vpermt2ps zmm10,zmm26,zmm0
  a6fc5d:	62 62 15 40 7f c0    	vpermt2ps zmm24,zmm29,zmm0
  a6fc63:	62 e1 7c 48 28 c4    	vmovaps zmm16,zmm4
  a6fc69:	62 e2 2d 40 7f c0    	vpermt2ps zmm16,zmm26,zmm0
  a6fc6f:	62 f2 15 40 7f e0    	vpermt2ps zmm4,zmm29,zmm0
  a6fc75:	62 71 7c 48 28 f1    	vmovaps zmm14,zmm1
  a6fc7b:	62 72 2d 40 7f f0    	vpermt2ps zmm14,zmm26,zmm0
  a6fc81:	62 f2 15 40 7f c8    	vpermt2ps zmm1,zmm29,zmm0
  a6fc87:	62 c1 7c 48 28 c9    	vmovaps zmm17,zmm9
  a6fc8d:	62 e2 2d 40 7f c8    	vpermt2ps zmm17,zmm26,zmm0
  a6fc93:	62 72 15 40 7f c8    	vpermt2ps zmm9,zmm29,zmm0
  a6fc99:	62 e1 7c 48 28 e6    	vmovaps zmm20,zmm6
  a6fc9f:	62 e2 2d 40 7f e0    	vpermt2ps zmm20,zmm26,zmm0
  a6fca5:	62 f2 15 40 7f f0    	vpermt2ps zmm6,zmm29,zmm0
  a6fcab:	62 e1 7c 48 28 ef    	vmovaps zmm21,zmm7
  a6fcb1:	62 e2 2d 40 7f e8    	vpermt2ps zmm21,zmm26,zmm0
  a6fcb7:	62 f2 15 40 7f f8    	vpermt2ps zmm7,zmm29,zmm0
  a6fcbd:	62 41 7c 48 28 c8    	vmovaps zmm25,zmm8
  a6fcc3:	62 71 7c 48 28 25 33 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff657233]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a6fcca:	72 65 ff 
  a6fccd:	62 42 1d 48 7f ce    	vpermt2ps zmm25,zmm12,zmm14
  a6fcd3:	62 71 7c 48 28 2d 63 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff657263]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a6fcda:	72 65 ff 
  a6fcdd:	62 52 15 48 7f c6    	vpermt2ps zmm8,zmm13,zmm14
  a6fce3:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a6fce9:	62 32 1d 48 7f f1    	vpermt2ps zmm14,zmm12,zmm17
  a6fcef:	62 b2 15 48 7f d1    	vpermt2ps zmm2,zmm13,zmm17
  a6fcf5:	62 c1 7c 48 28 ca    	vmovaps zmm17,zmm10
  a6fcfb:	62 a2 1d 48 7f cc    	vpermt2ps zmm17,zmm12,zmm20
  a6fd01:	62 32 15 48 7f d4    	vpermt2ps zmm10,zmm13,zmm20
  a6fd07:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a6fd0d:	62 a2 1d 48 7f e5    	vpermt2ps zmm20,zmm12,zmm21
  a6fd13:	62 a2 15 48 7f c5    	vpermt2ps zmm16,zmm13,zmm21
  a6fd19:	62 62 1d 48 7f f1    	vpermt2ps zmm30,zmm12,zmm1
  a6fd1f:	62 c2 1d 48 7f f9    	vpermt2ps zmm23,zmm12,zmm9
  a6fd25:	62 62 1d 48 7f c6    	vpermt2ps zmm24,zmm12,zmm6
  a6fd2b:	62 f2 1d 48 7f e7    	vpermt2ps zmm4,zmm12,zmm7
  a6fd31:	62 31 b5 40 14 d9    	vunpcklpd zmm11,zmm25,zmm17
  a6fd37:	62 a1 b5 40 15 e9    	vunpckhpd zmm21,zmm25,zmm17
  a6fd3d:	62 b1 8d 48 14 cc    	vunpcklpd zmm1,zmm14,zmm20
  a6fd43:	62 b1 8d 48 15 f4    	vunpckhpd zmm6,zmm14,zmm20
  a6fd49:	62 51 bd 48 14 ca    	vunpcklpd zmm9,zmm8,zmm10
  a6fd4f:	62 51 bd 48 15 f2    	vunpckhpd zmm14,zmm8,zmm10
  a6fd55:	62 b1 ed 48 14 f8    	vunpcklpd zmm7,zmm2,zmm16
  a6fd5b:	62 b1 ed 48 15 d0    	vunpckhpd zmm2,zmm2,zmm16
  a6fd61:	62 01 8d 40 14 c8    	vunpcklpd zmm25,zmm30,zmm24
  a6fd67:	62 81 8d 40 15 e0    	vunpckhpd zmm20,zmm30,zmm24
  a6fd6d:	62 71 c5 40 14 c4    	vunpcklpd zmm8,zmm23,zmm4
  a6fd73:	62 f1 c5 40 15 dc    	vunpckhpd zmm3,zmm23,zmm4
  a6fd79:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a6fd7f:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a6fd85:	62 e1 7c 48 28 0d 71 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff657071]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a6fd8c:	70 65 ff 
  a6fd8f:	62 f2 75 40 7f e1    	vpermt2ps zmm4,zmm17,zmm1
  a6fd95:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a6fd9c:	62 71 7c 48 28 1d 9a 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff65709a]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a6fda3:	70 65 ff 
  a6fda6:	62 72 25 48 7f d1    	vpermt2ps zmm10,zmm11,zmm1
  a6fdac:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm10
  a6fdb3:	01 
  a6fdb4:	62 b1 7c 48 28 cd    	vmovaps zmm1,zmm21
  a6fdba:	62 f2 75 40 7f ce    	vpermt2ps zmm1,zmm17,zmm6
  a6fdc0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a6fdc7:	fe 
  a6fdc8:	62 e2 25 48 7f ee    	vpermt2ps zmm21,zmm11,zmm6
  a6fdce:	62 c1 7c 48 28 c1    	vmovaps zmm16,zmm9
  a6fdd4:	62 e2 75 40 7f c7    	vpermt2ps zmm16,zmm17,zmm7
  a6fdda:	62 72 25 48 7f cf    	vpermt2ps zmm9,zmm11,zmm7
  a6fde0:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm9
  a6fde7:	ff 
  a6fde8:	62 41 7c 48 28 c6    	vmovaps zmm24,zmm14
  a6fdee:	62 62 75 40 7f c2    	vpermt2ps zmm24,zmm17,zmm2
  a6fdf4:	62 72 25 48 7f f2    	vpermt2ps zmm14,zmm11,zmm2
  a6fdfa:	62 81 7c 48 28 f9    	vmovaps zmm23,zmm25
  a6fe00:	62 c2 75 40 7f f8    	vpermt2ps zmm23,zmm17,zmm8
  a6fe06:	62 42 25 48 7f c8    	vpermt2ps zmm25,zmm11,zmm8
  a6fe0c:	62 21 7c 48 28 f4    	vmovaps zmm30,zmm20
  a6fe12:	62 62 75 40 7f f3    	vpermt2ps zmm30,zmm17,zmm3
  a6fe18:	62 e2 25 48 7f e3    	vpermt2ps zmm20,zmm11,zmm3
  a6fe1e:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x80]
  a6fe25:	02 
  a6fe26:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a6fe2c:	62 f2 2d 40 7f dd    	vpermt2ps zmm3,zmm26,zmm5
  a6fe32:	62 f2 15 40 7f e5    	vpermt2ps zmm4,zmm29,zmm5
  a6fe38:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a6fe3e:	62 f2 2d 40 7f c8    	vpermt2ps zmm1,zmm26,zmm0
  a6fe44:	62 e2 15 40 7f d8    	vpermt2ps zmm19,zmm29,zmm0
  a6fe4a:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a6fe50:	62 f2 2d 40 7f d0    	vpermt2ps zmm2,zmm26,zmm0
  a6fe56:	62 62 15 40 7f f8    	vpermt2ps zmm31,zmm29,zmm0
  a6fe5c:	62 b1 7c 48 28 ea    	vmovaps zmm5,zmm18
  a6fe62:	62 f2 2d 40 7f e8    	vpermt2ps zmm5,zmm26,zmm0
  a6fe68:	62 e2 15 40 7f d0    	vpermt2ps zmm18,zmm29,zmm0
  a6fe6e:	62 91 7c 48 28 f4    	vmovaps zmm6,zmm28
  a6fe74:	62 f2 2d 40 7f f0    	vpermt2ps zmm6,zmm26,zmm0
  a6fe7a:	62 62 15 40 7f e0    	vpermt2ps zmm28,zmm29,zmm0
  a6fe80:	62 d1 7c 48 28 ff    	vmovaps zmm7,zmm15
  a6fe86:	62 f2 2d 40 7f f8    	vpermt2ps zmm7,zmm26,zmm0
  a6fe8c:	62 72 15 40 7f f8    	vpermt2ps zmm15,zmm29,zmm0
  a6fe92:	62 31 7c 48 28 c6    	vmovaps zmm8,zmm22
  a6fe98:	62 72 2d 40 7f c0    	vpermt2ps zmm8,zmm26,zmm0
  a6fe9e:	62 e2 15 40 7f f0    	vpermt2ps zmm22,zmm29,zmm0
  a6fea4:	62 11 7c 48 28 cb    	vmovaps zmm9,zmm27
  a6feaa:	62 72 2d 40 7f c8    	vpermt2ps zmm9,zmm26,zmm0
  a6feb0:	62 62 15 40 7f d8    	vpermt2ps zmm27,zmm29,zmm0
  a6feb6:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a6febc:	62 72 1d 48 7f d6    	vpermt2ps zmm10,zmm12,zmm6
  a6fec2:	62 f2 15 48 7f de    	vpermt2ps zmm3,zmm13,zmm6
  a6fec8:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a6fece:	62 f2 1d 48 7f f7    	vpermt2ps zmm6,zmm12,zmm7
  a6fed4:	62 f2 15 48 7f cf    	vpermt2ps zmm1,zmm13,zmm7
  a6feda:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a6fee0:	62 d2 1d 48 7f f8    	vpermt2ps zmm7,zmm12,zmm8
  a6fee6:	62 d2 15 48 7f d0    	vpermt2ps zmm2,zmm13,zmm8
  a6feec:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a6fef2:	62 52 1d 48 7f c1    	vpermt2ps zmm8,zmm12,zmm9
  a6fef8:	62 d2 15 48 7f e9    	vpermt2ps zmm5,zmm13,zmm9
  a6fefe:	62 92 1d 48 7f e4    	vpermt2ps zmm4,zmm12,zmm28
  a6ff04:	62 c2 1d 48 7f df    	vpermt2ps zmm19,zmm12,zmm15
  a6ff0a:	62 22 1d 48 7f fe    	vpermt2ps zmm31,zmm12,zmm22
  a6ff10:	62 82 1d 48 7f d3    	vpermt2ps zmm18,zmm12,zmm27
  a6ff16:	62 71 ad 48 14 e7    	vunpcklpd zmm12,zmm10,zmm7
  a6ff1c:	62 71 ad 48 15 d7    	vunpckhpd zmm10,zmm10,zmm7
  a6ff22:	62 d1 cd 48 14 f8    	vunpcklpd zmm7,zmm6,zmm8
  a6ff28:	62 d1 cd 48 15 f0    	vunpckhpd zmm6,zmm6,zmm8
  a6ff2e:	62 61 e5 48 14 ea    	vunpcklpd zmm29,zmm3,zmm2
  a6ff34:	62 71 e5 48 15 fa    	vunpckhpd zmm15,zmm3,zmm2
  a6ff3a:	62 f1 f5 48 14 d5    	vunpcklpd zmm2,zmm1,zmm5
  a6ff40:	62 f1 f5 48 15 ed    	vunpckhpd zmm5,zmm1,zmm5
  a6ff46:	62 01 dd 48 14 d7    	vunpcklpd zmm26,zmm4,zmm31
  a6ff4c:	62 91 dd 48 15 c7    	vunpckhpd zmm0,zmm4,zmm31
  a6ff52:	62 31 e5 40 14 c2    	vunpcklpd zmm8,zmm19,zmm18
  a6ff58:	62 b1 e5 40 15 da    	vunpckhpd zmm3,zmm19,zmm18
  a6ff5e:	62 c1 7c 48 28 dc    	vmovaps zmm19,zmm12
  a6ff64:	62 e2 75 40 7f df    	vpermt2ps zmm19,zmm17,zmm7
  a6ff6a:	62 72 25 48 7f e7    	vpermt2ps zmm12,zmm11,zmm7
  a6ff70:	62 c1 7c 48 28 d2    	vmovaps zmm18,zmm10
  a6ff76:	62 e2 75 40 7f d6    	vpermt2ps zmm18,zmm17,zmm6
  a6ff7c:	62 72 25 48 7f d6    	vpermt2ps zmm10,zmm11,zmm6
  a6ff82:	62 91 7c 48 28 e5    	vmovaps zmm4,zmm29
  a6ff88:	62 f2 75 40 7f e2    	vpermt2ps zmm4,zmm17,zmm2
  a6ff8e:	62 62 25 48 7f ea    	vpermt2ps zmm29,zmm11,zmm2
  a6ff94:	62 d1 7c 48 28 cf    	vmovaps zmm1,zmm15
  a6ff9a:	62 f2 75 40 7f cd    	vpermt2ps zmm1,zmm17,zmm5
  a6ffa0:	62 72 25 48 7f fd    	vpermt2ps zmm15,zmm11,zmm5
  a6ffa6:	62 91 7c 48 28 ea    	vmovaps zmm5,zmm26
  a6ffac:	62 d2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm8
  a6ffb2:	62 42 25 48 7f d0    	vpermt2ps zmm26,zmm11,zmm8
  a6ffb8:	62 61 7c 48 28 f8    	vmovaps zmm31,zmm0
  a6ffbe:	62 62 75 40 7f fb    	vpermt2ps zmm31,zmm17,zmm3
  a6ffc4:	62 f2 25 48 7f c3    	vpermt2ps zmm0,zmm11,zmm3
  a6ffca:	62 f1 7c 48 10 79 02 	vmovups zmm7,ZMMWORD PTR [rcx+0x80]
  a6ffd1:	62 f1 7c 48 10 71 03 	vmovups zmm6,ZMMWORD PTR [rcx+0xc0]
  a6ffd8:	62 f1 7c 48 10 51 0c 	vmovups zmm2,ZMMWORD PTR [rcx+0x300]
  a6ffdf:	62 71 7c 48 10 41 0d 	vmovups zmm8,ZMMWORD PTR [rcx+0x340]
  a6ffe6:	62 71 3c 40 59 ea    	vmulps zmm13,zmm24,zmm2
  a6ffec:	62 52 75 48 bc e8    	vfnmadd231ps zmm13,zmm1,zmm8
  a6fff2:	62 f1 74 48 59 da    	vmulps zmm3,zmm1,zmm2
  a6fff8:	62 f1 7c 48 10 49 06 	vmovups zmm1,ZMMWORD PTR [rcx+0x180]
  a6ffff:	62 92 3d 48 b8 d8    	vfmadd231ps zmm3,zmm8,zmm24
  a70005:	62 f1 7c 48 10 51 07 	vmovups zmm2,ZMMWORD PTR [rcx+0x1c0]
  a7000c:	62 61 54 40 59 c1    	vmulps zmm24,zmm21,zmm1
  a70012:	62 62 2d 48 bc c2    	vfnmadd231ps zmm24,zmm10,zmm2
  a70018:	62 f1 2c 48 59 c9    	vmulps zmm1,zmm10,zmm1
  a7001e:	62 71 7c 48 10 41 12 	vmovups zmm8,ZMMWORD PTR [rcx+0x480]
  a70025:	62 b2 6d 48 b8 cd    	vfmadd231ps zmm1,zmm2,zmm21
  a7002b:	62 f1 7c 48 10 51 13 	vmovups zmm2,ZMMWORD PTR [rcx+0x4c0]
  a70032:	62 51 34 40 59 d0    	vmulps zmm10,zmm25,zmm8
  a70038:	62 72 2d 40 bc d2    	vfnmadd231ps zmm10,zmm26,zmm2
  a7003e:	62 41 2c 40 59 d0    	vmulps zmm26,zmm26,zmm8
  a70044:	62 71 7c 48 10 41 08 	vmovups zmm8,ZMMWORD PTR [rcx+0x200]
  a7004b:	62 02 6d 48 b8 d1    	vfmadd231ps zmm26,zmm2,zmm25
  a70051:	62 71 7c 48 10 49 09 	vmovups zmm9,ZMMWORD PTR [rcx+0x240]
  a70058:	62 d1 7c 40 59 d0    	vmulps zmm2,zmm16,zmm8
  a7005e:	62 d2 5d 48 bc d1    	vfnmadd231ps zmm2,zmm4,zmm9
  a70064:	62 51 5c 48 59 d8    	vmulps zmm11,zmm4,zmm8
  a7006a:	62 71 7c 48 10 41 14 	vmovups zmm8,ZMMWORD PTR [rcx+0x500]
  a70071:	62 32 35 48 b8 d8    	vfmadd231ps zmm11,zmm9,zmm16
  a70077:	62 71 7c 48 10 49 15 	vmovups zmm9,ZMMWORD PTR [rcx+0x540]
  a7007e:	62 c1 0c 40 59 c0    	vmulps zmm16,zmm30,zmm8
  a70084:	62 c2 05 40 bc c1    	vfnmadd231ps zmm16,zmm31,zmm9
  a7008a:	62 41 04 40 59 d8    	vmulps zmm27,zmm31,zmm8
  a70090:	62 71 7c 48 10 41 0e 	vmovups zmm8,ZMMWORD PTR [rcx+0x380]
  a70097:	62 02 35 48 b8 de    	vfmadd231ps zmm27,zmm9,zmm30
  a7009d:	62 71 7c 48 10 49 0f 	vmovups zmm9,ZMMWORD PTR [rcx+0x3c0]
  a700a4:	62 41 0c 48 59 e0    	vmulps zmm28,zmm14,zmm8
  a700aa:	62 42 05 48 bc e1    	vfnmadd231ps zmm28,zmm15,zmm9
  a700b0:	62 51 04 48 59 c0    	vmulps zmm8,zmm15,zmm8
  a700b6:	62 71 7c 48 10 79 04 	vmovups zmm15,ZMMWORD PTR [rcx+0x100]
  a700bd:	62 52 35 48 b8 c6    	vfmadd231ps zmm8,zmm9,zmm14
  a700c3:	62 71 7c 48 10 49 05 	vmovups zmm9,ZMMWORD PTR [rcx+0x140]
  a700ca:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x40]
  a700d1:	01 
  a700d2:	62 71 5c 48 59 f7    	vmulps zmm14,zmm4,zmm7
  a700d8:	62 72 1d 48 bc f6    	vfnmadd231ps zmm14,zmm12,zmm6
  a700de:	62 f1 1c 48 59 ff    	vmulps zmm7,zmm12,zmm7
  a700e4:	62 71 7c 48 10 61 10 	vmovups zmm12,ZMMWORD PTR [rcx+0x400]
  a700eb:	62 f2 4d 48 b8 fc    	vfmadd231ps zmm7,zmm6,zmm4
  a700f1:	62 f1 7c 48 10 71 11 	vmovups zmm6,ZMMWORD PTR [rcx+0x440]
  a700f8:	62 c1 44 40 59 f4    	vmulps zmm22,zmm23,zmm12
  a700fe:	62 e2 55 48 bc f6    	vfnmadd231ps zmm22,zmm5,zmm6
  a70104:	62 d1 54 48 59 ec    	vmulps zmm5,zmm5,zmm12
  a7010a:	62 71 7c 48 10 61 0a 	vmovups zmm12,ZMMWORD PTR [rcx+0x280]
  a70111:	62 b2 4d 48 b8 ef    	vfmadd231ps zmm5,zmm6,zmm23
  a70117:	62 f1 7c 48 10 71 0b 	vmovups zmm6,ZMMWORD PTR [rcx+0x2c0]
  a7011e:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp-0x80]
  a70125:	fe 
  a70126:	62 41 74 40 59 cf    	vmulps zmm25,zmm17,zmm15
  a7012c:	62 42 6d 40 bc c9    	vfnmadd231ps zmm25,zmm18,zmm9
  a70132:	62 d1 6c 40 59 e7    	vmulps zmm4,zmm18,zmm15
  a70138:	62 71 7c 48 10 79 16 	vmovups zmm15,ZMMWORD PTR [rcx+0x580]
  a7013f:	62 b2 35 48 b8 e1    	vfmadd231ps zmm4,zmm9,zmm17
  a70145:	62 71 7c 48 10 49 17 	vmovups zmm9,ZMMWORD PTR [rcx+0x5c0]
  a7014c:	62 c1 5c 40 59 ff    	vmulps zmm23,zmm20,zmm15
  a70152:	62 c2 7d 48 bc f9    	vfnmadd231ps zmm23,zmm0,zmm9
  a70158:	62 d1 7c 48 59 c7    	vmulps zmm0,zmm0,zmm15
  a7015e:	62 e1 7c 48 10 14 24 	vmovups zmm18,ZMMWORD PTR [rsp]
  a70165:	62 51 6c 40 58 fd    	vaddps zmm15,zmm18,zmm13
  a7016b:	62 b2 35 48 b8 c4    	vfmadd231ps zmm0,zmm9,zmm20
  a70171:	62 51 3c 40 58 ca    	vaddps zmm9,zmm24,zmm10
  a70177:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp-0x40]
  a7017e:	ff 
  a7017f:	62 c1 5c 40 59 ec    	vmulps zmm21,zmm20,zmm12
  a70185:	62 e2 15 40 bc ee    	vfnmadd231ps zmm21,zmm29,zmm6
  a7018b:	62 51 14 40 59 e4    	vmulps zmm12,zmm29,zmm12
  a70191:	62 a1 6c 48 58 c8    	vaddps zmm17,zmm2,zmm16
  a70197:	62 32 4d 48 b8 e4    	vfmadd231ps zmm12,zmm6,zmm20
  a7019d:	62 c1 1c 40 58 e6    	vaddps zmm20,zmm28,zmm14
  a701a3:	62 01 4c 40 58 e9    	vaddps zmm29,zmm22,zmm25
  a701a9:	62 b1 6c 48 5c f0    	vsubps zmm6,zmm2,zmm16
  a701af:	62 e1 3c 48 58 c7    	vaddps zmm16,zmm8,zmm7
  a701b5:	62 f1 3c 48 5c d7    	vsubps zmm2,zmm8,zmm7
  a701bb:	62 31 44 40 58 c5    	vaddps zmm8,zmm23,zmm21
  a701c1:	62 91 4c 40 5c f9    	vsubps zmm7,zmm22,zmm25
  a701c7:	62 c1 7c 48 58 f4    	vaddps zmm22,zmm0,zmm12
  a701cd:	62 51 7c 48 5c e4    	vsubps zmm12,zmm0,zmm12
  a701d3:	62 21 64 48 58 cb    	vaddps zmm25,zmm3,zmm19
  a701d9:	62 c1 6c 40 5c d5    	vsubps zmm18,zmm18,zmm13
  a701df:	62 11 74 48 58 ea    	vaddps zmm13,zmm1,zmm26
  a701e5:	62 91 74 48 5c ca    	vsubps zmm1,zmm1,zmm26
  a701eb:	62 01 24 48 58 d3    	vaddps zmm26,zmm11,zmm27
  a701f1:	62 01 24 48 5c db    	vsubps zmm27,zmm11,zmm27
  a701f7:	62 71 54 48 58 dc    	vaddps zmm11,zmm5,zmm4
  a701fd:	62 11 0c 48 5c f4    	vsubps zmm14,zmm14,zmm28
  a70203:	62 d1 24 40 58 c6    	vaddps zmm0,zmm27,zmm14
  a70209:	62 61 54 48 5c e4    	vsubps zmm28,zmm5,zmm4
  a7020f:	62 a1 54 40 5c ef    	vsubps zmm21,zmm21,zmm23
  a70215:	62 b1 1c 40 58 e5    	vaddps zmm4,zmm28,zmm21
  a7021b:	62 e1 7c 48 5c fc    	vsubps zmm23,zmm0,zmm4
  a70221:	62 f1 7c 48 58 c4    	vaddps zmm0,zmm0,zmm4
  a70227:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a7022e:	fe 
  a7022f:	62 f1 4c 48 58 c2    	vaddps zmm0,zmm6,zmm2
  a70235:	62 e1 64 40 5c db    	vsubps zmm19,zmm19,zmm3
  a7023b:	62 d1 44 48 58 ec    	vaddps zmm5,zmm7,zmm12
  a70241:	62 01 2c 48 5c c0    	vsubps zmm24,zmm10,zmm24
  a70247:	62 f1 7c 48 58 dd    	vaddps zmm3,zmm0,zmm5
  a7024d:	62 f1 7c 48 5c c5    	vsubps zmm0,zmm0,zmm5
  a70253:	62 21 74 40 58 fc    	vaddps zmm31,zmm17,zmm20
  a70259:	62 31 74 40 5c d4    	vsubps zmm10,zmm17,zmm20
  a7025f:	62 41 14 40 58 f0    	vaddps zmm30,zmm29,zmm8
  a70265:	62 c1 14 40 5c c8    	vsubps zmm17,zmm29,zmm8
  a7026b:	62 d1 04 48 58 e1    	vaddps zmm4,zmm15,zmm9
  a70271:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a70278:	ff 
  a70279:	62 51 04 48 5c c9    	vsubps zmm9,zmm15,zmm9
  a7027f:	62 31 2c 40 58 f8    	vaddps zmm15,zmm26,zmm16
  a70285:	62 b1 2c 40 5c e8    	vsubps zmm5,zmm26,zmm16
  a7028b:	62 a1 24 48 58 c6    	vaddps zmm16,zmm11,zmm22
  a70291:	62 a1 24 48 5c e6    	vsubps zmm20,zmm11,zmm22
  a70297:	62 b1 54 48 5c e4    	vsubps zmm4,zmm5,zmm20
  a7029d:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a702a4:	62 a1 54 48 58 f4    	vaddps zmm22,zmm5,zmm20
  a702aa:	62 11 14 48 58 d9    	vaddps zmm11,zmm13,zmm25
  a702b0:	62 41 34 40 5c cd    	vsubps zmm25,zmm25,zmm13
  a702b6:	62 21 2c 48 58 d1    	vaddps zmm26,zmm10,zmm17
  a702bc:	62 31 2c 48 5c e9    	vsubps zmm13,zmm10,zmm17
  a702c2:	62 71 6c 40 58 d1    	vaddps zmm10,zmm18,zmm1
  a702c8:	62 61 6c 40 5c e9    	vsubps zmm29,zmm18,zmm1
  a702ce:	62 81 04 40 58 ce    	vaddps zmm17,zmm31,zmm30
  a702d4:	62 f1 4c 48 5c ea    	vsubps zmm5,zmm6,zmm2
  a702da:	62 a1 04 48 58 e0    	vaddps zmm20,zmm15,zmm16
  a702e0:	62 d1 44 48 5c cc    	vsubps zmm1,zmm7,zmm12
  a702e6:	62 31 3c 40 58 c3    	vaddps zmm8,zmm24,zmm19
  a702ec:	62 81 64 40 5c d8    	vsubps zmm19,zmm19,zmm24
  a702f2:	62 f2 7d 48 18 35 64 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff605164]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a702f9:	51 60 ff 
  a702fc:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a70302:	62 d2 65 48 ac fa    	vfnmadd213ps zmm7,zmm3,zmm10
  a70308:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a7030e:	62 f2 7d 48 18 15 bc 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff604fbc]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a70315:	4f 60 ff 
  a70318:	62 71 44 40 59 e2    	vmulps zmm12,zmm23,zmm2
  a7031e:	62 51 24 40 5c f6    	vsubps zmm14,zmm27,zmm14
  a70324:	62 c1 44 48 58 d4    	vaddps zmm18,zmm7,zmm12
  a7032a:	62 a1 1c 40 5c fd    	vsubps zmm23,zmm28,zmm21
  a70330:	62 e1 7c 48 28 ee    	vmovaps zmm21,zmm6
  a70336:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x80]
  a7033d:	fe 
  a7033e:	62 c2 65 48 ac e8    	vfnmadd213ps zmm21,zmm3,zmm8
  a70344:	62 61 7c 48 59 c2    	vmulps zmm24,zmm0,zmm2
  a7034a:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a70350:	62 31 04 48 5c f8    	vsubps zmm15,zmm15,zmm16
  a70356:	62 91 54 40 5c d0    	vsubps zmm2,zmm21,zmm24
  a7035c:	62 01 04 40 5c de    	vsubps zmm27,zmm31,zmm30
  a70362:	62 61 7c 48 28 e6    	vmovaps zmm28,zmm6
  a70368:	62 42 2d 40 ac e1    	vfnmadd213ps zmm28,zmm26,zmm9
  a7036e:	62 c1 44 48 5c c4    	vsubps zmm16,zmm7,zmm12
  a70374:	62 61 7c 48 28 f6    	vmovaps zmm30,zmm6
  a7037a:	62 02 4d 40 ac f1    	vfnmadd213ps zmm30,zmm22,zmm25
  a70380:	62 11 54 40 58 e0    	vaddps zmm12,zmm21,zmm24
  a70386:	62 61 54 48 58 c1    	vaddps zmm24,zmm5,zmm1
  a7038c:	62 01 34 48 58 fa    	vaddps zmm31,zmm9,zmm26
  a70392:	62 81 14 40 58 e8    	vaddps zmm21,zmm29,zmm24
  a70398:	62 b1 34 40 58 fe    	vaddps zmm7,zmm25,zmm22
  a7039e:	62 31 0c 48 58 cf    	vaddps zmm9,zmm14,zmm23
  a703a4:	62 02 4d 48 ac c5    	vfnmadd213ps zmm24,zmm6,zmm29
  a703aa:	62 c1 64 40 58 f1    	vaddps zmm22,zmm19,zmm9
  a703b0:	62 a1 0c 48 5c ff    	vsubps zmm23,zmm14,zmm23
  a703b6:	62 71 7c 48 28 f6    	vmovaps zmm14,zmm6
  a703bc:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp-0x40]
  a703c3:	ff 
  a703c4:	62 12 75 40 ac f5    	vfnmadd213ps zmm14,zmm17,zmm29
  a703ca:	62 71 04 48 59 f8    	vmulps zmm15,zmm15,zmm0
  a703d0:	62 32 4d 48 ac cb    	vfnmadd213ps zmm9,zmm6,zmm19
  a703d6:	62 41 0c 48 58 cf    	vaddps zmm25,zmm14,zmm15
  a703dc:	62 f1 54 48 5c c9    	vsubps zmm1,zmm5,zmm1
  a703e2:	62 d1 7c 48 28 eb    	vmovaps zmm5,zmm11
  a703e8:	62 d2 5d 40 ac f3    	vfnmadd213ps zmm6,zmm20,zmm11
  a703ee:	62 e1 24 40 59 d8    	vmulps zmm19,zmm27,zmm0
  a703f4:	62 51 0c 48 5c ff    	vsubps zmm15,zmm14,zmm15
  a703fa:	62 21 4c 48 5c d3    	vsubps zmm26,zmm6,zmm19
  a70400:	62 a1 4c 48 58 db    	vaddps zmm19,zmm6,zmm19
  a70406:	62 71 2c 48 58 d4    	vaddps zmm10,zmm10,zmm4
  a7040c:	62 f1 7c 48 59 24 24 	vmulps zmm4,zmm0,ZMMWORD PTR [rsp]
  a70413:	62 71 3c 48 58 f3    	vaddps zmm14,zmm8,zmm3
  a70419:	62 f1 1c 40 5c f4    	vsubps zmm6,zmm28,zmm4
  a7041f:	62 f1 14 48 59 d8    	vmulps zmm3,zmm13,zmm0
  a70425:	62 f1 1c 40 58 e4    	vaddps zmm4,zmm28,zmm4
  a7042b:	62 61 0c 40 58 db    	vaddps zmm27,zmm30,zmm3
  a70431:	62 71 44 40 59 d8    	vmulps zmm11,zmm23,zmm0
  a70437:	62 71 0c 40 5c eb    	vsubps zmm13,zmm30,zmm3
  a7043d:	62 c1 3c 40 58 fb    	vaddps zmm23,zmm24,zmm11
  a70443:	62 f1 74 48 59 c8    	vmulps zmm1,zmm1,zmm0
  a70449:	62 d1 3c 40 5c db    	vsubps zmm3,zmm24,zmm11
  a7044f:	62 61 34 48 5c c1    	vsubps zmm24,zmm9,zmm1
  a70455:	62 71 34 48 58 d9    	vaddps zmm11,zmm9,zmm1
  a7045b:	62 b1 54 48 58 cc    	vaddps zmm1,zmm5,zmm20
  a70461:	62 b1 14 40 58 e9    	vaddps zmm5,zmm29,zmm17
  a70467:	62 d3 7d 48 19 c8 02 	vextractf32x4 xmm8,zmm1,0x2
  a7046e:	62 71 7c 48 28 0d 08 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff624508]        # 94980 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21e30>
  a70475:	45 62 ff 
  a70478:	62 f2 35 48 7f cd    	vpermt2ps zmm1,zmm9,zmm5
  a7047e:	62 f1 7c 48 11 0c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm1
  a70485:	62 f3 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm5,0x2
  a7048c:	c5 b8 14 c9          	vunpcklps xmm1,xmm8,xmm1
  a70490:	c5 f8 13 4c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm1
  a70496:	62 f3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm2,0x2
  a7049d:	62 b2 35 48 7f d2    	vpermt2ps zmm2,zmm9,zmm18
  a704a3:	62 f1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x48],zmm2
  a704aa:	48 00 00 00 
  a704ae:	62 e3 7d 48 19 d2 02 	vextractf32x4 xmm2,zmm18,0x2
  a704b5:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a704b9:	c5 f8 13 8c 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm1
  a704c0:	00 00 
  a704c2:	62 63 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm27,0x2
  a704c9:	62 62 35 48 7f de    	vpermt2ps zmm27,zmm9,zmm6
  a704cf:	62 61 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x90],zmm27
  a704d6:	90 00 00 00 
  a704da:	62 f3 7d 48 19 f2 02 	vextractf32x4 xmm2,zmm6,0x2
  a704e1:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a704e5:	c5 f8 13 8c 16 d0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xd0],xmm1
  a704ec:	00 00 
  a704ee:	62 e3 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm22,0x2
  a704f5:	62 a2 35 48 7f f5    	vpermt2ps zmm22,zmm9,zmm21
  a704fb:	62 e1 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xd8],zmm22
  a70502:	d8 00 00 00 
  a70506:	62 e3 7d 48 19 ea 02 	vextractf32x4 xmm2,zmm21,0x2
  a7050d:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a70511:	c5 f8 13 8c 16 18 01 	vmovlps QWORD PTR [rsi+rdx*1+0x118],xmm1
  a70518:	00 00 
  a7051a:	62 63 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm26,0x2
  a70521:	62 02 35 48 7f d1    	vpermt2ps zmm26,zmm9,zmm25
  a70527:	62 61 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x120],zmm26
  a7052e:	20 01 00 00 
  a70532:	62 63 7d 48 19 ca 02 	vextractf32x4 xmm2,zmm25,0x2
  a70539:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a7053d:	c5 f8 13 8c 16 60 01 	vmovlps QWORD PTR [rsi+rdx*1+0x160],xmm1
  a70544:	00 00 
  a70546:	62 73 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm12,0x2
  a7054d:	62 32 35 48 7f e0    	vpermt2ps zmm12,zmm9,zmm16
  a70553:	62 71 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x168],zmm12
  a7055a:	68 01 00 00 
  a7055e:	62 e3 7d 48 19 c2 02 	vextractf32x4 xmm2,zmm16,0x2
  a70565:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a70569:	c5 f8 13 8c 16 a8 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1a8],xmm1
  a70570:	00 00 
  a70572:	62 f3 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm7,0x2
  a70579:	62 92 35 48 7f ff    	vpermt2ps zmm7,zmm9,zmm31
  a7057f:	62 f1 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1b0],zmm7
  a70586:	b0 01 00 00 
  a7058a:	62 63 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm31,0x2
  a70591:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a70595:	c5 f8 13 84 16 f0 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1f0],xmm0
  a7059c:	00 00 
  a7059e:	62 63 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm24,0x2
  a705a5:	62 22 35 48 7f c7    	vpermt2ps zmm24,zmm9,zmm23
  a705ab:	62 61 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1f8],zmm24
  a705b2:	f8 01 00 00 
  a705b6:	62 e3 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm23,0x2
  a705bd:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a705c1:	c5 f8 13 84 16 38 02 	vmovlps QWORD PTR [rsi+rdx*1+0x238],xmm0
  a705c8:	00 00 
  a705ca:	62 e3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm19,0x2
  a705d1:	62 c2 35 48 7f df    	vpermt2ps zmm19,zmm9,zmm15
  a705d7:	62 e1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm19
  a705de:	09 
  a705df:	62 73 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm15,0x2
  a705e6:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a705ea:	c5 f8 13 84 16 80 02 	vmovlps QWORD PTR [rsi+rdx*1+0x280],xmm0
  a705f1:	00 00 
  a705f3:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a705fa:	62 52 35 48 7f f2    	vpermt2ps zmm14,zmm9,zmm10
  a70600:	62 71 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x288],zmm14
  a70607:	88 02 00 00 
  a7060b:	62 73 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm10,0x2
  a70612:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a70616:	c5 f8 13 84 16 c8 02 	vmovlps QWORD PTR [rsi+rdx*1+0x2c8],xmm0
  a7061d:	00 00 
  a7061f:	62 73 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm13,0x2
  a70626:	62 72 35 48 7f ec    	vpermt2ps zmm13,zmm9,zmm4
  a7062c:	62 71 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm13
  a70633:	d0 02 00 00 
  a70637:	62 f3 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm4,0x2
  a7063e:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a70642:	c5 f8 13 84 16 10 03 	vmovlps QWORD PTR [rsi+rdx*1+0x310],xmm0
  a70649:	00 00 
  a7064b:	62 73 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm11,0x2
  a70652:	62 72 35 48 7f db    	vpermt2ps zmm11,zmm9,zmm3
  a70658:	62 71 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x318],zmm11
  a7065f:	18 03 00 00 
  a70663:	62 f3 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm3,0x2
  a7066a:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a7066e:	c5 f8 13 84 16 58 03 	vmovlps QWORD PTR [rsi+rdx*1+0x358],xmm0
  a70675:	00 00 
  a70677:	48 81 c2 60 03 00 00 	add    rdx,0x360
  a7067e:	48 39 d0             	cmp    rax,rdx
  a70681:	0f 85 49 f1 ff ff    	jne    a6f7d0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  a70687:	48 81 c4 c8 00 00 00 	add    rsp,0xc8
  a7068e:	c5 f8 77             	vzeroupper
  a70691:	c3                   	ret
