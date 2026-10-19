
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a1dc40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a1dc40:	48 81 ec c8 01 00 00 	sub    rsp,0x1c8
  a1dc47:	62 f1 7c 48 10 27    	vmovups zmm4,ZMMWORD PTR [rdi]
  a1dc4d:	c5 fc 10 47 40       	vmovups ymm0,YMMWORD PTR [rdi+0x40]
  a1dc52:	62 e1 7c 48 28 1d 24 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff672124]        # 8fd80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d230>
  a1dc59:	21 67 ff 
  a1dc5c:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a1dc62:	62 f2 65 40 7f e8    	vpermt2ps zmm5,zmm19,zmm0
  a1dc68:	62 f1 7c 48 28 15 4e 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff67214e]        # 8fdc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d270>
  a1dc6f:	21 67 ff 
  a1dc72:	62 f2 6d 48 7f e0    	vpermt2ps zmm4,zmm2,zmm0
  a1dc78:	62 f1 7c 48 10 b7 60 	vmovups zmm6,ZMMWORD PTR [rdi+0x60]
  a1dc7f:	00 00 00 
  a1dc82:	c5 fc 10 87 a0 00 00 	vmovups ymm0,YMMWORD PTR [rdi+0xa0]
  a1dc89:	00 
  a1dc8a:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a1dc90:	62 72 65 40 7f c8    	vpermt2ps zmm9,zmm19,zmm0
  a1dc96:	62 f2 6d 48 7f f0    	vpermt2ps zmm6,zmm2,zmm0
  a1dc9c:	62 f1 7c 48 10 7f 03 	vmovups zmm7,ZMMWORD PTR [rdi+0xc0]
  a1dca3:	c5 fc 10 87 00 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x100]
  a1dcaa:	00 
  a1dcab:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a1dcb1:	62 72 65 40 7f d0    	vpermt2ps zmm10,zmm19,zmm0
  a1dcb7:	62 f2 6d 48 7f f8    	vpermt2ps zmm7,zmm2,zmm0
  a1dcbd:	62 71 7c 48 10 87 20 	vmovups zmm8,ZMMWORD PTR [rdi+0x120]
  a1dcc4:	01 00 00 
  a1dcc7:	c5 fc 10 87 60 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x160]
  a1dcce:	00 
  a1dccf:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a1dcd5:	62 72 65 40 7f e8    	vpermt2ps zmm13,zmm19,zmm0
  a1dcdb:	62 72 6d 48 7f c0    	vpermt2ps zmm8,zmm2,zmm0
  a1dce1:	62 f1 7c 48 10 47 06 	vmovups zmm0,ZMMWORD PTR [rdi+0x180]
  a1dce8:	c5 fc 10 8f c0 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x1c0]
  a1dcef:	00 
  a1dcf0:	62 e1 7c 48 28 e0    	vmovaps zmm20,zmm0
  a1dcf6:	62 e2 65 40 7f e1    	vpermt2ps zmm20,zmm19,zmm1
  a1dcfc:	62 f2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm1
  a1dd02:	62 f1 7c 48 10 8f e0 	vmovups zmm1,ZMMWORD PTR [rdi+0x1e0]
  a1dd09:	01 00 00 
  a1dd0c:	c5 fc 10 9f 20 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x220]
  a1dd13:	00 
  a1dd14:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a1dd1a:	62 e2 65 40 7f f3    	vpermt2ps zmm22,zmm19,zmm3
  a1dd20:	62 f2 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm3
  a1dd26:	62 e1 7c 48 10 6f 09 	vmovups zmm21,ZMMWORD PTR [rdi+0x240]
  a1dd2d:	c5 fc 10 9f 80 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x280]
  a1dd34:	00 
  a1dd35:	62 21 7c 48 28 c5    	vmovaps zmm24,zmm21
  a1dd3b:	62 62 65 40 7f c3    	vpermt2ps zmm24,zmm19,zmm3
  a1dd41:	62 e2 6d 48 7f eb    	vpermt2ps zmm21,zmm2,zmm3
  a1dd47:	62 61 7c 48 10 8f a0 	vmovups zmm25,ZMMWORD PTR [rdi+0x2a0]
  a1dd4e:	02 00 00 
  a1dd51:	c5 fc 10 9f e0 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x2e0]
  a1dd58:	00 
  a1dd59:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a1dd5f:	62 62 65 40 7f d3    	vpermt2ps zmm26,zmm19,zmm3
  a1dd65:	62 62 6d 48 7f cb    	vpermt2ps zmm25,zmm2,zmm3
  a1dd6b:	62 61 7c 48 10 5f 0c 	vmovups zmm27,ZMMWORD PTR [rdi+0x300]
  a1dd72:	c5 fc 10 9f 40 03 00 	vmovups ymm3,YMMWORD PTR [rdi+0x340]
  a1dd79:	00 
  a1dd7a:	62 e2 25 40 77 db    	vpermi2ps zmm19,zmm27,zmm3
  a1dd80:	62 62 6d 48 7f db    	vpermt2ps zmm27,zmm2,zmm3
  a1dd86:	62 a1 3c 48 58 d5    	vaddps zmm18,zmm8,zmm21
  a1dd8c:	62 31 5c 48 58 fa    	vaddps zmm15,zmm4,zmm18
  a1dd92:	62 01 7c 48 58 e1    	vaddps zmm28,zmm0,zmm25
  a1dd98:	62 91 4c 48 58 d4    	vaddps zmm2,zmm6,zmm28
  a1dd9e:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a1dda5:	fe 
  a1dda6:	62 01 74 48 58 eb    	vaddps zmm29,zmm1,zmm27
  a1ddac:	62 11 44 48 58 dd    	vaddps zmm11,zmm7,zmm29
  a1ddb2:	62 51 6c 48 58 e3    	vaddps zmm12,zmm2,zmm11
  a1ddb8:	62 d1 04 48 58 d4    	vaddps zmm2,zmm15,zmm12
  a1ddbe:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a1ddc5:	ff 
  a1ddc6:	62 81 14 48 58 f8    	vaddps zmm23,zmm13,zmm24
  a1ddcc:	62 a1 54 48 58 c7    	vaddps zmm16,zmm5,zmm23
  a1ddd2:	62 01 5c 40 58 f2    	vaddps zmm30,zmm20,zmm26
  a1ddd8:	62 81 34 48 58 ce    	vaddps zmm17,zmm9,zmm30
  a1ddde:	62 72 7d 48 18 35 78 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff657678]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a1dde5:	76 65 ff 
  a1dde8:	62 21 4c 40 58 fb    	vaddps zmm31,zmm22,zmm19
  a1ddee:	62 b2 0d 48 bc e2    	vfnmadd231ps zmm4,zmm14,zmm18
  a1ddf4:	62 81 2c 48 58 d7    	vaddps zmm18,zmm10,zmm31
  a1ddfa:	62 01 14 48 5c c0    	vsubps zmm24,zmm13,zmm24
  a1de00:	62 31 74 40 58 ea    	vaddps zmm13,zmm17,zmm18
  a1de06:	62 92 0d 48 bc f4    	vfnmadd231ps zmm6,zmm14,zmm28
  a1de0c:	62 d1 7c 40 58 d5    	vaddps zmm2,zmm16,zmm13
  a1de12:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a1de19:	02 
  a1de1a:	62 01 5c 40 5c d2    	vsubps zmm26,zmm20,zmm26
  a1de20:	62 f2 7d 48 18 15 aa 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff6574aa]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a1de27:	74 65 ff 
  a1de2a:	62 61 3c 40 59 c2    	vmulps zmm24,zmm24,zmm2
  a1de30:	62 12 0d 48 bc ce    	vfnmadd231ps zmm9,zmm14,zmm30
  a1de36:	62 81 5c 48 58 e0    	vaddps zmm20,zmm4,zmm24
  a1de3c:	62 61 2c 40 59 d2    	vmulps zmm26,zmm26,zmm2
  a1de42:	62 91 7c 48 5c c1    	vsubps zmm0,zmm0,zmm25
  a1de48:	62 01 4c 48 58 ca    	vaddps zmm25,zmm6,zmm26
  a1de4e:	62 61 7c 48 59 e2    	vmulps zmm28,zmm0,zmm2
  a1de54:	62 92 0d 48 bc fd    	vfnmadd231ps zmm7,zmm14,zmm29
  a1de5a:	62 91 34 48 5c c4    	vsubps zmm0,zmm9,zmm28
  a1de60:	62 a1 4c 40 5c f3    	vsubps zmm22,zmm22,zmm19
  a1de66:	62 62 7d 48 18 2d f8 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff6577f8]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a1de6d:	77 65 ff 
  a1de70:	62 12 0d 48 bc d7    	vfnmadd231ps zmm10,zmm14,zmm31
  a1de76:	62 81 7c 48 59 dd    	vmulps zmm19,zmm0,zmm29
  a1de7c:	62 91 74 48 5c cb    	vsubps zmm1,zmm1,zmm27
  a1de82:	62 62 7d 48 18 1d 4c 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff65764c]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a1de89:	76 65 ff 
  a1de8c:	62 82 35 40 b8 db    	vfmadd231ps zmm19,zmm25,zmm27
  a1de92:	62 61 4c 40 59 f2    	vmulps zmm30,zmm22,zmm2
  a1de98:	62 81 7c 48 59 f3    	vmulps zmm22,zmm0,zmm27
  a1de9e:	62 91 44 48 58 c6    	vaddps zmm0,zmm7,zmm30
  a1dea4:	62 f1 74 48 59 ca    	vmulps zmm1,zmm1,zmm2
  a1deaa:	62 82 35 40 bc f5    	vfnmadd231ps zmm22,zmm25,zmm29
  a1deb0:	62 61 2c 48 5c c9    	vsubps zmm25,zmm10,zmm1
  a1deb6:	62 62 7d 48 18 1d 58 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff657458]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a1debd:	74 65 ff 
  a1dec0:	62 b2 0d 48 bc ef    	vfnmadd231ps zmm5,zmm14,zmm23
  a1dec6:	62 e2 7d 48 18 3d 0c 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff65760c]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a1decd:	76 65 ff 
  a1ded0:	62 a1 3c 48 5c ed    	vsubps zmm21,zmm8,zmm21
  a1ded6:	62 01 34 40 59 eb    	vmulps zmm29,zmm25,zmm27
  a1dedc:	62 22 7d 48 b8 ef    	vfmadd231ps zmm29,zmm0,zmm23
  a1dee2:	62 21 34 40 59 cf    	vmulps zmm25,zmm25,zmm23
  a1dee8:	62 62 25 40 bc c8    	vfnmadd231ps zmm25,zmm27,zmm0
  a1deee:	62 91 64 40 58 c5    	vaddps zmm0,zmm19,zmm29
  a1def4:	62 01 5c 48 5c c0    	vsubps zmm24,zmm4,zmm24
  a1defa:	62 71 5c 40 58 c0    	vaddps zmm8,zmm20,zmm0
  a1df00:	62 e1 54 40 59 ea    	vmulps zmm21,zmm21,zmm2
  a1df06:	62 01 4c 48 5c d2    	vsubps zmm26,zmm6,zmm26
  a1df0c:	62 21 54 48 5c fd    	vsubps zmm31,zmm5,zmm21
  a1df12:	62 51 1c 40 58 c9    	vaddps zmm9,zmm28,zmm9
  a1df18:	62 91 4c 40 58 f1    	vaddps zmm6,zmm22,zmm25
  a1df1e:	62 91 44 48 5c fe    	vsubps zmm7,zmm7,zmm30
  a1df24:	62 f1 04 40 58 de    	vaddps zmm3,zmm31,zmm6
  a1df2a:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a1df31:	01 
  a1df32:	62 d1 74 48 58 ca    	vaddps zmm1,zmm1,zmm10
  a1df38:	62 11 34 48 59 d3    	vmulps zmm10,zmm9,zmm27
  a1df3e:	62 32 2d 40 b8 d7    	vfmadd231ps zmm10,zmm26,zmm23
  a1df44:	62 a1 34 48 59 ff    	vmulps zmm23,zmm9,zmm23
  a1df4a:	62 62 7d 48 18 25 9c 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff65759c]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a1df51:	75 65 ff 
  a1df54:	62 82 2d 40 bc fb    	vfnmadd231ps zmm23,zmm26,zmm27
  a1df5a:	62 01 74 48 59 d4    	vmulps zmm26,zmm1,zmm28
  a1df60:	62 72 7d 48 18 0d 8e 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff65768e]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a1df67:	76 65 ff 
  a1df6a:	62 42 45 48 bc d1    	vfnmadd231ps zmm26,zmm7,zmm9
  a1df70:	62 e1 54 40 58 ed    	vaddps zmm21,zmm21,zmm5
  a1df76:	62 01 2c 48 58 da    	vaddps zmm27,zmm10,zmm26
  a1df7c:	62 41 74 48 59 f1    	vmulps zmm30,zmm1,zmm9
  a1df82:	62 11 3c 40 58 cb    	vaddps zmm9,zmm24,zmm27
  a1df88:	62 02 45 48 b8 f4    	vfmadd231ps zmm30,zmm7,zmm28
  a1df8e:	62 01 44 40 5c e6    	vsubps zmm28,zmm23,zmm30
  a1df94:	62 91 54 40 58 cc    	vaddps zmm1,zmm21,zmm28
  a1df9a:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a1dfa1:	62 52 0d 48 ac e7    	vfnmadd213ps zmm12,zmm14,zmm15
  a1dfa7:	62 b1 74 40 5c ca    	vsubps zmm1,zmm17,zmm18
  a1dfad:	62 71 74 48 59 fa    	vmulps zmm15,zmm1,zmm2
  a1dfb3:	62 d1 1c 48 58 df    	vaddps zmm3,zmm12,zmm15
  a1dfb9:	62 32 0d 48 ac e8    	vfnmadd213ps zmm13,zmm14,zmm16
  a1dfbf:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a1dfc6:	fe 
  a1dfc7:	62 d1 74 48 5c cb    	vsubps zmm1,zmm1,zmm11
  a1dfcd:	62 71 74 48 59 da    	vmulps zmm11,zmm1,zmm2
  a1dfd3:	62 c1 14 48 5c c3    	vsubps zmm16,zmm13,zmm11
  a1dfd9:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  a1dfdf:	62 b2 0d 48 ac c4    	vfnmadd213ps zmm0,zmm14,zmm20
  a1dfe5:	62 91 4c 40 5c f9    	vsubps zmm7,zmm22,zmm25
  a1dfeb:	62 e1 44 48 59 d2    	vmulps zmm18,zmm7,zmm2
  a1dff1:	62 b1 7c 48 58 e2    	vaddps zmm4,zmm0,zmm18
  a1dff7:	62 92 0d 48 ac f7    	vfnmadd213ps zmm6,zmm14,zmm31
  a1dffd:	62 11 64 40 5c f5    	vsubps zmm14,zmm19,zmm29
  a1e003:	62 e1 0c 48 59 e2    	vmulps zmm20,zmm14,zmm2
  a1e009:	62 b1 4c 48 5c ec    	vsubps zmm5,zmm6,zmm20
  a1e00f:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm5
  a1e016:	fe 
  a1e017:	62 02 75 48 ac d8    	vfnmadd213ps zmm27,zmm1,zmm24
  a1e01d:	62 11 44 40 58 f6    	vaddps zmm14,zmm23,zmm30
  a1e023:	62 e1 0c 48 59 f2    	vmulps zmm22,zmm14,zmm2
  a1e029:	62 31 24 40 58 f6    	vaddps zmm14,zmm27,zmm22
  a1e02f:	62 22 75 48 ac e5    	vfnmadd213ps zmm28,zmm1,zmm21
  a1e035:	62 11 2c 48 5c d2    	vsubps zmm10,zmm10,zmm26
  a1e03b:	62 71 2c 48 59 d2    	vmulps zmm10,zmm10,zmm2
  a1e041:	62 d1 1c 40 5c ca    	vsubps zmm1,zmm28,zmm10
  a1e047:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a1e04e:	03 
  a1e04f:	62 c1 1c 48 5c cf    	vsubps zmm17,zmm12,zmm15
  a1e055:	62 d1 24 48 58 d5    	vaddps zmm2,zmm11,zmm13
  a1e05b:	62 a1 7c 48 5c da    	vsubps zmm19,zmm0,zmm18
  a1e061:	62 b1 4c 48 58 c4    	vaddps zmm0,zmm6,zmm20
  a1e067:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a1e06e:	04 
  a1e06f:	62 b1 24 40 5c c6    	vsubps zmm0,zmm27,zmm22
  a1e075:	62 41 1c 40 58 f2    	vaddps zmm30,zmm28,zmm10
  a1e07b:	62 71 7c 48 28 3d fb 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6a8efb]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a1e082:	8e 6a ff 
  a1e085:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp-0x40]
  a1e08c:	ff 
  a1e08d:	62 c1 7c 48 28 d5    	vmovaps zmm18,zmm13
  a1e093:	62 e2 05 48 7f d0    	vpermt2ps zmm18,zmm15,zmm0
  a1e099:	62 e1 7c 48 28 3d 1d 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6a8f1d]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a1e0a0:	8f 6a ff 
  a1e0a3:	62 72 45 40 7f e8    	vpermt2ps zmm13,zmm23,zmm0
  a1e0a9:	62 01 3c 00 57 c0    	vxorps xmm24,xmm24,xmm24
  a1e0af:	62 c1 7c 48 28 e0    	vmovaps zmm20,zmm8
  a1e0b5:	62 82 05 48 7f e0    	vpermt2ps zmm20,zmm15,zmm24
  a1e0bb:	62 12 45 40 7f c0    	vpermt2ps zmm8,zmm23,zmm24
  a1e0c1:	62 c1 7c 48 28 e9    	vmovaps zmm21,zmm9
  a1e0c7:	62 82 05 48 7f e8    	vpermt2ps zmm21,zmm15,zmm24
  a1e0cd:	62 12 45 40 7f c8    	vpermt2ps zmm9,zmm23,zmm24
  a1e0d3:	62 e1 7c 48 28 f3    	vmovaps zmm22,zmm3
  a1e0d9:	62 82 05 48 7f f0    	vpermt2ps zmm22,zmm15,zmm24
  a1e0df:	62 92 45 40 7f d8    	vpermt2ps zmm3,zmm23,zmm24
  a1e0e5:	62 61 7c 48 28 cc    	vmovaps zmm25,zmm4
  a1e0eb:	62 02 05 48 7f c8    	vpermt2ps zmm25,zmm15,zmm24
  a1e0f1:	62 92 45 40 7f e0    	vpermt2ps zmm4,zmm23,zmm24
  a1e0f7:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a1e0fe:	ff 
  a1e0ff:	62 41 7c 48 28 d6    	vmovaps zmm26,zmm14
  a1e105:	62 02 05 48 7f d0    	vpermt2ps zmm26,zmm15,zmm24
  a1e10b:	62 12 45 40 7f f0    	vpermt2ps zmm14,zmm23,zmm24
  a1e111:	62 21 7c 48 28 d9    	vmovaps zmm27,zmm17
  a1e117:	62 02 05 48 7f d8    	vpermt2ps zmm27,zmm15,zmm24
  a1e11d:	62 82 45 40 7f c8    	vpermt2ps zmm17,zmm23,zmm24
  a1e123:	62 21 7c 48 28 e3    	vmovaps zmm28,zmm19
  a1e129:	62 02 05 48 7f e0    	vpermt2ps zmm28,zmm15,zmm24
  a1e12f:	62 82 45 40 7f d8    	vpermt2ps zmm19,zmm23,zmm24
  a1e135:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x80]
  a1e13c:	02 
  a1e13d:	62 61 7c 48 28 ef    	vmovaps zmm29,zmm7
  a1e143:	62 02 05 48 7f ee    	vpermt2ps zmm29,zmm15,zmm30
  a1e149:	62 92 45 40 7f fe    	vpermt2ps zmm7,zmm23,zmm30
  a1e14f:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x40]
  a1e156:	01 
  a1e157:	62 61 7c 48 28 f5    	vmovaps zmm30,zmm5
  a1e15d:	62 02 05 48 7f f0    	vpermt2ps zmm30,zmm15,zmm24
  a1e163:	62 92 45 40 7f e8    	vpermt2ps zmm5,zmm23,zmm24
  a1e169:	62 f1 7c 48 10 24 24 	vmovups zmm4,ZMMWORD PTR [rsp]
  a1e170:	62 61 7c 48 28 fc    	vmovaps zmm31,zmm4
  a1e176:	62 02 05 48 7f f8    	vpermt2ps zmm31,zmm15,zmm24
  a1e17c:	62 92 45 40 7f e0    	vpermt2ps zmm4,zmm23,zmm24
  a1e182:	62 b1 7c 48 28 f0    	vmovaps zmm6,zmm16
  a1e188:	62 92 05 48 7f f0    	vpermt2ps zmm6,zmm15,zmm24
  a1e18e:	62 82 45 40 7f c0    	vpermt2ps zmm16,zmm23,zmm24
  a1e194:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a1e19b:	fe 
  a1e19c:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a1e1a2:	62 12 05 48 7f d0    	vpermt2ps zmm10,zmm15,zmm24
  a1e1a8:	62 92 45 40 7f c0    	vpermt2ps zmm0,zmm23,zmm24
  a1e1ae:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a1e1b5:	fe 
  a1e1b6:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a1e1bd:	03 
  a1e1be:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a1e1c4:	62 12 05 48 7f d8    	vpermt2ps zmm11,zmm15,zmm24
  a1e1ca:	62 92 45 40 7f c0    	vpermt2ps zmm0,zmm23,zmm24
  a1e1d0:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a1e1d7:	03 
  a1e1d8:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a1e1de:	62 12 05 48 7f e0    	vpermt2ps zmm12,zmm15,zmm24
  a1e1e4:	62 92 45 40 7f d0    	vpermt2ps zmm2,zmm23,zmm24
  a1e1ea:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a1e1f1:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a1e1f8:	04 
  a1e1f9:	62 12 7d 48 77 f8    	vpermi2ps zmm15,zmm0,zmm24
  a1e1ff:	62 92 45 40 7f c0    	vpermt2ps zmm0,zmm23,zmm24
  a1e205:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a1e20c:	04 
  a1e20d:	62 f1 7c 48 28 0d e9 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6a8ce9]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1e214:	8c 6a ff 
  a1e217:	62 a1 7c 48 28 fa    	vmovaps zmm23,zmm18
  a1e21d:	62 82 75 48 7f f9    	vpermt2ps zmm23,zmm1,zmm25
  a1e223:	62 f1 7c 48 28 15 13 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6a8d13]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a1e22a:	8d 6a ff 
  a1e22d:	62 82 6d 48 7f d1    	vpermt2ps zmm18,zmm2,zmm25
  a1e233:	62 21 7c 48 28 c4    	vmovaps zmm24,zmm20
  a1e239:	62 02 75 48 7f c2    	vpermt2ps zmm24,zmm1,zmm26
  a1e23f:	62 82 6d 48 7f e2    	vpermt2ps zmm20,zmm2,zmm26
  a1e245:	62 21 7c 48 28 cd    	vmovaps zmm25,zmm21
  a1e24b:	62 02 75 48 7f cb    	vpermt2ps zmm25,zmm1,zmm27
  a1e251:	62 82 6d 48 7f eb    	vpermt2ps zmm21,zmm2,zmm27
  a1e257:	62 21 7c 48 28 d6    	vmovaps zmm26,zmm22
  a1e25d:	62 02 75 48 7f d4    	vpermt2ps zmm26,zmm1,zmm28
  a1e263:	62 82 6d 48 7f f4    	vpermt2ps zmm22,zmm2,zmm28
  a1e269:	62 72 75 48 7f 6c 24 	vpermt2ps zmm13,zmm1,ZMMWORD PTR [rsp-0x40]
  a1e270:	ff 
  a1e271:	62 52 75 48 7f c6    	vpermt2ps zmm8,zmm1,zmm14
  a1e277:	62 32 75 48 7f c9    	vpermt2ps zmm9,zmm1,zmm17
  a1e27d:	62 b2 75 48 7f db    	vpermt2ps zmm3,zmm1,zmm19
  a1e283:	62 91 c5 40 14 c1    	vunpcklpd zmm0,zmm23,zmm25
  a1e289:	62 81 c5 40 15 d9    	vunpckhpd zmm19,zmm23,zmm25
  a1e28f:	62 81 bd 40 14 fa    	vunpcklpd zmm23,zmm24,zmm26
  a1e295:	62 01 bd 40 15 ca    	vunpckhpd zmm25,zmm24,zmm26
  a1e29b:	62 a1 ed 40 14 cd    	vunpcklpd zmm17,zmm18,zmm21
  a1e2a1:	62 31 ed 40 15 f5    	vunpckhpd zmm14,zmm18,zmm21
  a1e2a7:	62 21 dd 40 14 d6    	vunpcklpd zmm26,zmm20,zmm22
  a1e2ad:	62 a1 dd 40 15 f6    	vunpckhpd zmm22,zmm20,zmm22
  a1e2b3:	62 c1 95 48 14 e1    	vunpcklpd zmm20,zmm13,zmm9
  a1e2b9:	62 51 95 48 15 c9    	vunpckhpd zmm9,zmm13,zmm9
  a1e2bf:	62 61 bd 48 14 db    	vunpcklpd zmm27,zmm8,zmm3
  a1e2c5:	62 61 bd 48 15 e3    	vunpckhpd zmm28,zmm8,zmm3
  a1e2cb:	62 e1 7c 48 28 15 2b 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6a8b2b]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1e2d2:	8b 6a ff 
  a1e2d5:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a1e2db:	62 b2 6d 40 7f df    	vpermt2ps zmm3,zmm18,zmm23
  a1e2e1:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm3
  a1e2e8:	02 
  a1e2e9:	62 61 7c 48 28 05 4d 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff6a8b4d]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1e2f0:	8b 6a ff 
  a1e2f3:	62 b2 3d 40 7f c7    	vpermt2ps zmm0,zmm24,zmm23
  a1e2f9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a1e300:	ff 
  a1e301:	62 31 7c 48 28 c3    	vmovaps zmm8,zmm19
  a1e307:	62 12 6d 40 7f c1    	vpermt2ps zmm8,zmm18,zmm25
  a1e30d:	62 82 3d 40 7f d9    	vpermt2ps zmm19,zmm24,zmm25
  a1e313:	62 a1 7c 48 28 e9    	vmovaps zmm21,zmm17
  a1e319:	62 82 6d 40 7f ea    	vpermt2ps zmm21,zmm18,zmm26
  a1e31f:	62 82 3d 40 7f ca    	vpermt2ps zmm17,zmm24,zmm26
  a1e325:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm17
  a1e32c:	01 
  a1e32d:	62 c1 7c 48 28 fe    	vmovaps zmm23,zmm14
  a1e333:	62 a2 6d 40 7f fe    	vpermt2ps zmm23,zmm18,zmm22
  a1e339:	62 32 3d 40 7f f6    	vpermt2ps zmm14,zmm24,zmm22
  a1e33f:	62 a1 7c 48 28 cc    	vmovaps zmm17,zmm20
  a1e345:	62 82 6d 40 7f cb    	vpermt2ps zmm17,zmm18,zmm27
  a1e34b:	62 82 3d 40 7f e3    	vpermt2ps zmm20,zmm24,zmm27
  a1e351:	62 c1 7c 48 28 f1    	vmovaps zmm22,zmm9
  a1e357:	62 82 6d 40 7f f4    	vpermt2ps zmm22,zmm18,zmm28
  a1e35d:	62 12 3d 40 7f cc    	vpermt2ps zmm9,zmm24,zmm28
  a1e363:	62 01 7c 48 28 cd    	vmovaps zmm25,zmm29
  a1e369:	62 42 75 48 7f ca    	vpermt2ps zmm25,zmm1,zmm10
  a1e36f:	62 42 6d 48 7f ea    	vpermt2ps zmm29,zmm2,zmm10
  a1e375:	62 11 7c 48 28 d6    	vmovaps zmm10,zmm30
  a1e37b:	62 52 75 48 7f d3    	vpermt2ps zmm10,zmm1,zmm11
  a1e381:	62 42 6d 48 7f f3    	vpermt2ps zmm30,zmm2,zmm11
  a1e387:	62 01 7c 48 28 d7    	vmovaps zmm26,zmm31
  a1e38d:	62 42 75 48 7f d4    	vpermt2ps zmm26,zmm1,zmm12
  a1e393:	62 42 6d 48 7f fc    	vpermt2ps zmm31,zmm2,zmm12
  a1e399:	62 71 7c 48 28 e6    	vmovaps zmm12,zmm6
  a1e39f:	62 d2 6d 48 7f f7    	vpermt2ps zmm6,zmm2,zmm15
  a1e3a5:	62 52 75 48 7f e7    	vpermt2ps zmm12,zmm1,zmm15
  a1e3ab:	62 f2 75 48 7f 7c 24 	vpermt2ps zmm7,zmm1,ZMMWORD PTR [rsp-0x80]
  a1e3b2:	fe 
  a1e3b3:	62 f2 75 48 7f 6c 24 	vpermt2ps zmm5,zmm1,ZMMWORD PTR [rsp+0xc0]
  a1e3ba:	03 
  a1e3bb:	62 f2 75 48 7f 24 24 	vpermt2ps zmm4,zmm1,ZMMWORD PTR [rsp]
  a1e3c2:	62 e2 75 48 7f 44 24 	vpermt2ps zmm16,zmm1,ZMMWORD PTR [rsp+0x100]
  a1e3c9:	04 
  a1e3ca:	62 11 b5 40 14 da    	vunpcklpd zmm11,zmm25,zmm26
  a1e3d0:	62 01 b5 40 15 da    	vunpckhpd zmm27,zmm25,zmm26
  a1e3d6:	62 d1 ad 48 14 cc    	vunpcklpd zmm1,zmm10,zmm12
  a1e3dc:	62 51 ad 48 15 ec    	vunpckhpd zmm13,zmm10,zmm12
  a1e3e2:	62 11 95 40 14 d7    	vunpcklpd zmm10,zmm29,zmm31
  a1e3e8:	62 11 95 40 15 e7    	vunpckhpd zmm12,zmm29,zmm31
  a1e3ee:	62 71 8d 40 14 fe    	vunpcklpd zmm15,zmm30,zmm6
  a1e3f4:	62 f1 8d 40 15 f6    	vunpckhpd zmm6,zmm30,zmm6
  a1e3fa:	62 61 c5 48 14 e4    	vunpcklpd zmm28,zmm7,zmm4
  a1e400:	62 f1 c5 48 15 fc    	vunpckhpd zmm7,zmm7,zmm4
  a1e406:	62 21 d5 48 14 c8    	vunpcklpd zmm25,zmm5,zmm16
  a1e40c:	62 b1 d5 48 15 d8    	vunpckhpd zmm3,zmm5,zmm16
  a1e412:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a1e418:	62 f2 6d 40 7f c1    	vpermt2ps zmm0,zmm18,zmm1
  a1e41e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a1e425:	fe 
  a1e426:	62 72 3d 40 7f d9    	vpermt2ps zmm11,zmm24,zmm1
  a1e42c:	62 91 7c 48 28 e3    	vmovaps zmm4,zmm27
  a1e432:	62 d2 6d 40 7f e5    	vpermt2ps zmm4,zmm18,zmm13
  a1e438:	62 42 3d 40 7f dd    	vpermt2ps zmm27,zmm24,zmm13
  a1e43e:	62 41 7c 48 28 ea    	vmovaps zmm29,zmm10
  a1e444:	62 42 6d 40 7f ef    	vpermt2ps zmm29,zmm18,zmm15
  a1e44a:	62 52 3d 40 7f d7    	vpermt2ps zmm10,zmm24,zmm15
  a1e450:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a1e456:	62 f2 6d 40 7f ce    	vpermt2ps zmm1,zmm18,zmm6
  a1e45c:	62 72 3d 40 7f e6    	vpermt2ps zmm12,zmm24,zmm6
  a1e462:	62 11 7c 48 28 ec    	vmovaps zmm13,zmm28
  a1e468:	62 12 6d 40 7f e9    	vpermt2ps zmm13,zmm18,zmm25
  a1e46e:	62 02 3d 40 7f e1    	vpermt2ps zmm28,zmm24,zmm25
  a1e474:	62 e2 45 48 77 d3    	vpermi2ps zmm18,zmm7,zmm3
  a1e47a:	62 f2 3d 40 7f fb    	vpermt2ps zmm7,zmm24,zmm3
  a1e480:	62 61 7c 48 10 52 02 	vmovups zmm26,ZMMWORD PTR [rdx+0x80]
  a1e487:	62 61 7c 48 10 4a 03 	vmovups zmm25,ZMMWORD PTR [rdx+0xc0]
  a1e48e:	62 71 7c 48 10 7a 04 	vmovups zmm15,ZMMWORD PTR [rdx+0x100]
  a1e495:	62 f1 7c 48 10 5a 0c 	vmovups zmm3,ZMMWORD PTR [rdx+0x300]
  a1e49c:	62 61 7c 48 10 72 0d 	vmovups zmm30,ZMMWORD PTR [rdx+0x340]
  a1e4a3:	62 f1 44 40 59 f3    	vmulps zmm6,zmm23,zmm3
  a1e4a9:	62 92 75 48 bc f6    	vfnmadd231ps zmm6,zmm1,zmm30
  a1e4af:	62 61 74 48 59 c3    	vmulps zmm24,zmm1,zmm3
  a1e4b5:	62 f1 7c 48 10 4a 06 	vmovups zmm1,ZMMWORD PTR [rdx+0x180]
  a1e4bc:	62 22 0d 40 b8 c7    	vfmadd231ps zmm24,zmm30,zmm23
  a1e4c2:	62 f1 7c 48 10 5a 07 	vmovups zmm3,ZMMWORD PTR [rdx+0x1c0]
  a1e4c9:	62 e1 64 40 59 f9    	vmulps zmm23,zmm19,zmm1
  a1e4cf:	62 e2 25 40 bc fb    	vfnmadd231ps zmm23,zmm27,zmm3
  a1e4d5:	62 f1 24 40 59 c9    	vmulps zmm1,zmm27,zmm1
  a1e4db:	62 61 7c 48 10 5a 12 	vmovups zmm27,ZMMWORD PTR [rdx+0x480]
  a1e4e2:	62 b2 65 48 b8 cb    	vfmadd231ps zmm1,zmm3,zmm19
  a1e4e8:	62 f1 7c 48 10 5a 13 	vmovups zmm3,ZMMWORD PTR [rdx+0x4c0]
  a1e4ef:	62 81 5c 40 59 db    	vmulps zmm19,zmm20,zmm27
  a1e4f5:	62 e2 1d 40 bc db    	vfnmadd231ps zmm19,zmm28,zmm3
  a1e4fb:	62 01 1c 40 59 db    	vmulps zmm27,zmm28,zmm27
  a1e501:	62 61 7c 48 10 72 08 	vmovups zmm30,ZMMWORD PTR [rdx+0x200]
  a1e508:	62 22 65 48 b8 dc    	vfmadd231ps zmm27,zmm3,zmm20
  a1e50e:	62 f1 7c 48 10 5a 09 	vmovups zmm3,ZMMWORD PTR [rdx+0x240]
  a1e515:	62 01 54 40 59 e6    	vmulps zmm28,zmm21,zmm30
  a1e51b:	62 62 15 40 bc e3    	vfnmadd231ps zmm28,zmm29,zmm3
  a1e521:	62 81 14 40 59 e6    	vmulps zmm20,zmm29,zmm30
  a1e527:	62 61 7c 48 10 6a 14 	vmovups zmm29,ZMMWORD PTR [rdx+0x500]
  a1e52e:	62 a2 65 48 b8 e5    	vfmadd231ps zmm20,zmm3,zmm21
  a1e534:	62 f1 7c 48 10 5a 15 	vmovups zmm3,ZMMWORD PTR [rdx+0x540]
  a1e53b:	62 01 4c 40 59 f5    	vmulps zmm30,zmm22,zmm29
  a1e541:	62 62 6d 40 bc f3    	vfnmadd231ps zmm30,zmm18,zmm3
  a1e547:	62 81 6c 40 59 d5    	vmulps zmm18,zmm18,zmm29
  a1e54d:	62 61 7c 48 10 6a 0e 	vmovups zmm29,ZMMWORD PTR [rdx+0x380]
  a1e554:	62 a2 65 48 b8 d6    	vfmadd231ps zmm18,zmm3,zmm22
  a1e55a:	62 f1 7c 48 10 5a 0f 	vmovups zmm3,ZMMWORD PTR [rdx+0x3c0]
  a1e561:	62 81 0c 48 59 ed    	vmulps zmm21,zmm14,zmm29
  a1e567:	62 e2 1d 48 bc eb    	vfnmadd231ps zmm21,zmm12,zmm3
  a1e56d:	62 11 1c 48 59 e5    	vmulps zmm12,zmm12,zmm29
  a1e573:	62 e1 7c 48 10 72 05 	vmovups zmm22,ZMMWORD PTR [rdx+0x140]
  a1e57a:	62 52 65 48 b8 e6    	vfmadd231ps zmm12,zmm3,zmm14
  a1e580:	62 f1 7c 48 10 5a 0a 	vmovups zmm3,ZMMWORD PTR [rdx+0x280]
  a1e587:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a1e58e:	ff 
  a1e58f:	62 01 7c 48 59 ea    	vmulps zmm29,zmm0,zmm26
  a1e595:	62 02 25 48 bc e9    	vfnmadd231ps zmm29,zmm11,zmm25
  a1e59b:	62 81 24 48 59 c2    	vmulps zmm16,zmm11,zmm26
  a1e5a1:	62 71 7c 48 10 5a 10 	vmovups zmm11,ZMMWORD PTR [rdx+0x400]
  a1e5a8:	62 e2 35 40 b8 c0    	vfmadd231ps zmm16,zmm25,zmm0
  a1e5ae:	62 71 7c 48 10 72 11 	vmovups zmm14,ZMMWORD PTR [rdx+0x440]
  a1e5b5:	62 41 74 40 59 cb    	vmulps zmm25,zmm17,zmm11
  a1e5bb:	62 42 15 48 bc ce    	vfnmadd231ps zmm25,zmm13,zmm14
  a1e5c1:	62 51 14 48 59 eb    	vmulps zmm13,zmm13,zmm11
  a1e5c7:	62 61 7c 48 10 52 0b 	vmovups zmm26,ZMMWORD PTR [rdx+0x2c0]
  a1e5ce:	62 32 0d 48 b8 e9    	vfmadd231ps zmm13,zmm14,zmm17
  a1e5d4:	62 71 7c 48 10 72 16 	vmovups zmm14,ZMMWORD PTR [rdx+0x580]
  a1e5db:	62 c1 3c 48 59 cf    	vmulps zmm17,zmm8,zmm15
  a1e5e1:	62 a2 5d 48 bc ce    	vfnmadd231ps zmm17,zmm4,zmm22
  a1e5e7:	62 41 5c 48 59 ff    	vmulps zmm31,zmm4,zmm15
  a1e5ed:	62 f1 7c 48 10 62 17 	vmovups zmm4,ZMMWORD PTR [rdx+0x5c0]
  a1e5f4:	62 42 4d 40 b8 f8    	vfmadd231ps zmm31,zmm22,zmm8
  a1e5fa:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x80]
  a1e601:	02 
  a1e602:	62 71 6c 48 58 de    	vaddps zmm11,zmm2,zmm6
  a1e608:	62 51 34 48 59 c6    	vmulps zmm8,zmm9,zmm14
  a1e60e:	62 72 45 48 bc c4    	vfnmadd231ps zmm8,zmm7,zmm4
  a1e614:	62 d1 44 48 59 ee    	vmulps zmm5,zmm7,zmm14
  a1e61a:	62 a1 44 40 58 f3    	vaddps zmm22,zmm23,zmm19
  a1e620:	62 d2 5d 48 b8 e9    	vfmadd231ps zmm5,zmm4,zmm9
  a1e626:	62 b1 24 48 58 c6    	vaddps zmm0,zmm11,zmm22
  a1e62c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a1e633:	04 
  a1e634:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x40]
  a1e63b:	01 
  a1e63c:	62 71 5c 48 59 cb    	vmulps zmm9,zmm4,zmm3
  a1e642:	62 12 2d 48 bc ca    	vfnmadd231ps zmm9,zmm10,zmm26
  a1e648:	62 f1 2c 48 59 db    	vmulps zmm3,zmm10,zmm3
  a1e64e:	62 91 1c 40 58 c6    	vaddps zmm0,zmm28,zmm30
  a1e654:	62 f2 2d 40 b8 dc    	vfmadd231ps zmm3,zmm26,zmm4
  a1e65a:	62 91 54 40 58 fd    	vaddps zmm7,zmm21,zmm29
  a1e660:	62 21 34 40 58 d1    	vaddps zmm26,zmm25,zmm17
  a1e666:	62 11 1c 40 5c f6    	vsubps zmm14,zmm28,zmm30
  a1e66c:	62 21 1c 48 58 e0    	vaddps zmm28,zmm12,zmm16
  a1e672:	62 31 1c 48 5c f8    	vsubps zmm15,zmm12,zmm16
  a1e678:	62 51 3c 48 58 e1    	vaddps zmm12,zmm8,zmm9
  a1e67e:	62 a1 34 40 5c c1    	vsubps zmm16,zmm25,zmm17
  a1e684:	62 e1 54 48 58 cb    	vaddps zmm17,zmm5,zmm3
  a1e68a:	62 61 54 48 5c cb    	vsubps zmm25,zmm5,zmm3
  a1e690:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x80]
  a1e697:	fe 
  a1e698:	62 61 3c 40 58 f4    	vaddps zmm30,zmm24,zmm4
  a1e69e:	62 f1 6c 48 5c f6    	vsubps zmm6,zmm2,zmm6
  a1e6a4:	62 91 74 48 58 db    	vaddps zmm3,zmm1,zmm27
  a1e6aa:	62 91 74 48 5c cb    	vsubps zmm1,zmm1,zmm27
  a1e6b0:	62 21 5c 40 58 da    	vaddps zmm27,zmm20,zmm18
  a1e6b6:	62 b1 5c 40 5c ea    	vsubps zmm5,zmm20,zmm18
  a1e6bc:	62 81 14 48 58 d7    	vaddps zmm18,zmm13,zmm31
  a1e6c2:	62 21 14 40 5c ed    	vsubps zmm29,zmm29,zmm21
  a1e6c8:	62 11 54 48 58 d5    	vaddps zmm10,zmm5,zmm29
  a1e6ce:	62 11 14 48 5c ef    	vsubps zmm13,zmm13,zmm31
  a1e6d4:	62 51 34 48 5c c8    	vsubps zmm9,zmm9,zmm8
  a1e6da:	62 51 14 48 58 c1    	vaddps zmm8,zmm13,zmm9
  a1e6e0:	62 d1 2c 48 5c d0    	vsubps zmm2,zmm10,zmm8
  a1e6e6:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a1e6ed:	02 
  a1e6ee:	62 d1 2c 48 58 d0    	vaddps zmm2,zmm10,zmm8
  a1e6f4:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a1e6fb:	01 
  a1e6fc:	62 51 0c 48 58 c7    	vaddps zmm8,zmm14,zmm15
  a1e702:	62 81 5c 48 5c e0    	vsubps zmm20,zmm4,zmm24
  a1e708:	62 11 7c 40 58 d1    	vaddps zmm10,zmm16,zmm25
  a1e70e:	62 a1 64 40 5c df    	vsubps zmm19,zmm19,zmm23
  a1e714:	62 d1 3c 48 58 d2    	vaddps zmm2,zmm8,zmm10
  a1e71a:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a1e721:	62 d1 3c 48 5c d2    	vsubps zmm2,zmm8,zmm10
  a1e727:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a1e72e:	ff 
  a1e72f:	62 71 7c 48 58 d7    	vaddps zmm10,zmm0,zmm7
  a1e735:	62 f1 7c 48 5c ff    	vsubps zmm7,zmm0,zmm7
  a1e73b:	62 51 2c 40 58 c4    	vaddps zmm8,zmm26,zmm12
  a1e741:	62 51 2c 40 5c e4    	vsubps zmm12,zmm26,zmm12
  a1e747:	62 91 64 48 58 c6    	vaddps zmm0,zmm3,zmm30
  a1e74d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a1e754:	03 
  a1e755:	62 21 24 48 5c c6    	vsubps zmm24,zmm11,zmm22
  a1e75b:	62 11 24 40 58 dc    	vaddps zmm11,zmm27,zmm28
  a1e761:	62 01 24 40 5c d4    	vsubps zmm26,zmm27,zmm28
  a1e767:	62 b1 6c 40 58 c1    	vaddps zmm0,zmm18,zmm17
  a1e76d:	62 a1 6c 40 5c c9    	vsubps zmm17,zmm18,zmm17
  a1e773:	62 b1 2c 40 5c d1    	vsubps zmm2,zmm26,zmm17
  a1e779:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm2
  a1e780:	06 
  a1e781:	62 a1 2c 40 58 f9    	vaddps zmm23,zmm26,zmm17
  a1e787:	62 61 4c 48 58 f9    	vaddps zmm31,zmm6,zmm1
  a1e78d:	62 e1 0c 40 5c f3    	vsubps zmm22,zmm30,zmm3
  a1e793:	62 41 44 48 58 f4    	vaddps zmm30,zmm7,zmm12
  a1e799:	62 d1 44 48 5c d4    	vsubps zmm2,zmm7,zmm12
  a1e79f:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm2
  a1e7a6:	05 
  a1e7a7:	62 e2 7d 48 18 2d af 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff656caf]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a1e7ae:	6c 65 ff 
  a1e7b1:	62 b1 7c 48 28 d5    	vmovaps zmm2,zmm21
  a1e7b7:	62 f1 4c 48 5c f1    	vsubps zmm6,zmm6,zmm1
  a1e7bd:	62 21 64 40 58 dc    	vaddps zmm27,zmm19,zmm20
  a1e7c3:	62 51 0c 48 5c f7    	vsubps zmm14,zmm14,zmm15
  a1e7c9:	62 31 7c 48 28 fd    	vmovaps zmm15,zmm21
  a1e7cf:	62 01 7c 40 5c c9    	vsubps zmm25,zmm16,zmm25
  a1e7d5:	62 a1 7c 48 28 c5    	vmovaps zmm16,zmm21
  a1e7db:	62 a1 5c 40 5c cb    	vsubps zmm17,zmm20,zmm19
  a1e7e1:	62 a1 7c 48 28 d5    	vmovaps zmm18,zmm21
  a1e7e7:	62 91 54 48 5c ed    	vsubps zmm5,zmm5,zmm29
  a1e7ed:	62 81 0c 48 58 d9    	vaddps zmm19,zmm14,zmm25
  a1e7f3:	62 c1 14 48 5c e1    	vsubps zmm20,zmm13,zmm9
  a1e7f9:	62 b1 4c 48 58 cb    	vaddps zmm1,zmm6,zmm19
  a1e7ff:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a1e806:	fe 
  a1e807:	62 e2 55 40 ac de    	vfnmadd213ps zmm19,zmm21,zmm6
  a1e80d:	62 b1 54 48 58 f4    	vaddps zmm6,zmm5,zmm20
  a1e813:	62 b1 7c 48 28 cd    	vmovaps zmm1,zmm21
  a1e819:	62 31 7c 48 28 cd    	vmovaps zmm9,zmm21
  a1e81f:	62 a2 4d 48 ac e9    	vfnmadd213ps zmm21,zmm6,zmm17
  a1e825:	62 e1 74 40 58 ce    	vaddps zmm17,zmm17,zmm6
  a1e82b:	62 71 24 48 58 e0    	vaddps zmm12,zmm11,zmm0
  a1e831:	62 f1 24 48 5c e0    	vsubps zmm4,zmm11,zmm0
  a1e837:	62 51 2c 48 58 d8    	vaddps zmm11,zmm10,zmm8
  a1e83d:	62 d1 2c 48 5c f0    	vsubps zmm6,zmm10,zmm8
  a1e843:	62 71 7c 48 10 14 24 	vmovups zmm10,ZMMWORD PTR [rsp]
  a1e84a:	62 92 2d 48 ac d7    	vfnmadd213ps zmm2,zmm10,zmm31
  a1e850:	62 f2 7d 48 18 05 7a 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff656a7a]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a1e857:	6a 65 ff 
  a1e85a:	62 71 7c 48 59 44 24 	vmulps zmm8,zmm0,ZMMWORD PTR [rsp+0x80]
  a1e861:	02 
  a1e862:	62 41 6c 48 58 d0    	vaddps zmm26,zmm2,zmm8
  a1e868:	62 41 6c 48 5c e0    	vsubps zmm28,zmm2,zmm8
  a1e86e:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x40]
  a1e875:	01 
  a1e876:	62 12 45 48 ac fb    	vfnmadd213ps zmm15,zmm7,zmm27
  a1e87c:	62 f1 7c 48 59 54 24 	vmulps zmm2,zmm0,ZMMWORD PTR [rsp-0x40]
  a1e883:	ff 
  a1e884:	62 f1 04 48 5c da    	vsubps zmm3,zmm15,zmm2
  a1e88a:	62 71 04 48 58 fa    	vaddps zmm15,zmm15,zmm2
  a1e890:	62 82 0d 40 ac c0    	vfnmadd213ps zmm16,zmm30,zmm24
  a1e896:	62 01 3c 40 58 ee    	vaddps zmm29,zmm24,zmm30
  a1e89c:	62 a2 45 40 ac d6    	vfnmadd213ps zmm18,zmm23,zmm22
  a1e8a2:	62 31 4c 40 58 ef    	vaddps zmm13,zmm22,zmm23
  a1e8a8:	62 b1 54 48 5c ec    	vsubps zmm5,zmm5,zmm20
  a1e8ae:	62 11 0c 48 5c c1    	vsubps zmm8,zmm14,zmm25
  a1e8b4:	62 e1 7c 48 59 74 24 	vmulps zmm22,zmm0,ZMMWORD PTR [rsp+0x180]
  a1e8bb:	06 
  a1e8bc:	62 e1 7c 48 59 7c 24 	vmulps zmm23,zmm0,ZMMWORD PTR [rsp+0x140]
  a1e8c3:	05 
  a1e8c4:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0x100]
  a1e8cb:	04 
  a1e8cc:	62 92 25 48 ac c8    	vfnmadd213ps zmm1,zmm11,zmm24
  a1e8d2:	62 f1 5c 48 59 e0    	vmulps zmm4,zmm4,zmm0
  a1e8d8:	62 f1 4c 48 59 f0    	vmulps zmm6,zmm6,zmm0
  a1e8de:	62 f1 54 48 59 e8    	vmulps zmm5,zmm5,zmm0
  a1e8e4:	62 61 3c 48 59 c8    	vmulps zmm25,zmm8,zmm0
  a1e8ea:	62 f1 74 48 58 d4    	vaddps zmm2,zmm1,zmm4
  a1e8f0:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a1e8f7:	03 
  a1e8f8:	62 72 1d 48 ac c8    	vfnmadd213ps zmm9,zmm12,zmm0
  a1e8fe:	62 e1 74 48 5c e4    	vsubps zmm20,zmm1,zmm4
  a1e904:	62 61 34 48 5c f6    	vsubps zmm30,zmm9,zmm6
  a1e90a:	62 71 34 48 58 f6    	vaddps zmm14,zmm9,zmm6
  a1e910:	62 41 04 40 58 fa    	vaddps zmm31,zmm31,zmm10
  a1e916:	62 71 24 40 58 c7    	vaddps zmm8,zmm27,zmm7
  a1e91c:	62 21 7c 40 5c de    	vsubps zmm27,zmm16,zmm22
  a1e922:	62 31 7c 40 58 ce    	vaddps zmm9,zmm16,zmm22
  a1e928:	62 a1 6c 40 58 c7    	vaddps zmm16,zmm18,zmm23
  a1e92e:	62 b1 6c 40 5c f7    	vsubps zmm6,zmm18,zmm23
  a1e934:	62 e1 64 40 58 d5    	vaddps zmm18,zmm19,zmm5
  a1e93a:	62 f1 64 40 5c fd    	vsubps zmm7,zmm19,zmm5
  a1e940:	62 81 54 40 5c d9    	vsubps zmm19,zmm21,zmm25
  a1e946:	62 91 54 40 58 e9    	vaddps zmm5,zmm21,zmm25
  a1e94c:	62 d1 7c 48 58 cc    	vaddps zmm1,zmm0,zmm12
  a1e952:	62 51 3c 40 58 db    	vaddps zmm11,zmm24,zmm11
  a1e958:	62 f1 7c 48 28 25 9e 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff67149e]        # 8fe00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d2b0>
  a1e95f:	14 67 ff 
  a1e962:	62 b3 7d 48 19 ce 02 	vextractf32x4 xmm22,zmm1,0x2
  a1e969:	62 d2 5d 48 7f cb    	vpermt2ps zmm1,zmm4,zmm11
  a1e96f:	62 f1 7c 48 11 0e    	vmovups ZMMWORD PTR [rsi],zmm1
  a1e975:	62 73 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm11,0x2
  a1e97c:	62 f1 4c 00 14 c9    	vunpcklps xmm1,xmm22,xmm1
  a1e982:	c5 f8 13 4e 40       	vmovlps QWORD PTR [rsi+0x40],xmm1
  a1e987:	62 f3 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm3,0x2
  a1e98e:	62 92 5d 48 7f da    	vpermt2ps zmm3,zmm4,zmm26
  a1e994:	62 f1 7c 48 11 9e 48 	vmovups ZMMWORD PTR [rsi+0x48],zmm3
  a1e99b:	00 00 00 
  a1e99e:	62 63 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm26,0x2
  a1e9a5:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a1e9a9:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  a1e9b0:	00 
  a1e9b1:	62 e3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm16,0x2
  a1e9b8:	62 82 5d 48 7f c3    	vpermt2ps zmm16,zmm4,zmm27
  a1e9be:	62 e1 7c 48 11 86 90 	vmovups ZMMWORD PTR [rsi+0x90],zmm16
  a1e9c5:	00 00 00 
  a1e9c8:	62 63 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm27,0x2
  a1e9cf:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1e9d3:	c5 f8 13 86 d0 00 00 	vmovlps QWORD PTR [rsi+0xd0],xmm0
  a1e9da:	00 
  a1e9db:	62 e3 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm17,0x2
  a1e9e2:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a1e9e9:	fe 
  a1e9ea:	62 e2 5d 48 7f c9    	vpermt2ps zmm17,zmm4,zmm1
  a1e9f0:	62 e1 7c 48 11 8e d8 	vmovups ZMMWORD PTR [rsi+0xd8],zmm17
  a1e9f7:	00 00 00 
  a1e9fa:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a1ea01:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1ea05:	c5 f8 13 86 18 01 00 	vmovlps QWORD PTR [rsi+0x118],xmm0
  a1ea0c:	00 
  a1ea0d:	62 63 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm30,0x2
  a1ea14:	62 62 5d 48 7f f2    	vpermt2ps zmm30,zmm4,zmm2
  a1ea1a:	62 61 7c 48 11 b6 20 	vmovups ZMMWORD PTR [rsi+0x120],zmm30
  a1ea21:	01 00 00 
  a1ea24:	62 f3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm2,0x2
  a1ea2b:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1ea2f:	c5 f8 13 86 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm0
  a1ea36:	00 
  a1ea37:	62 73 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm15,0x2
  a1ea3e:	62 12 5d 48 7f fc    	vpermt2ps zmm15,zmm4,zmm28
  a1ea44:	62 71 7c 48 11 be 68 	vmovups ZMMWORD PTR [rsi+0x168],zmm15
  a1ea4b:	01 00 00 
  a1ea4e:	62 63 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm28,0x2
  a1ea55:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1ea59:	c5 f8 13 86 a8 01 00 	vmovlps QWORD PTR [rsi+0x1a8],xmm0
  a1ea60:	00 
  a1ea61:	62 73 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm13,0x2
  a1ea68:	62 12 5d 48 7f ed    	vpermt2ps zmm13,zmm4,zmm29
  a1ea6e:	62 71 7c 48 11 ae b0 	vmovups ZMMWORD PTR [rsi+0x1b0],zmm13
  a1ea75:	01 00 00 
  a1ea78:	62 63 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm29,0x2
  a1ea7f:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1ea83:	c5 f8 13 86 f0 01 00 	vmovlps QWORD PTR [rsi+0x1f0],xmm0
  a1ea8a:	00 
  a1ea8b:	62 e3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm19,0x2
  a1ea92:	62 a2 5d 48 7f da    	vpermt2ps zmm19,zmm4,zmm18
  a1ea98:	62 e1 7c 48 11 9e f8 	vmovups ZMMWORD PTR [rsi+0x1f8],zmm19
  a1ea9f:	01 00 00 
  a1eaa2:	62 e3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm18,0x2
  a1eaa9:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1eaad:	c5 f8 13 86 38 02 00 	vmovlps QWORD PTR [rsi+0x238],xmm0
  a1eab4:	00 
  a1eab5:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a1eabc:	62 32 5d 48 7f f4    	vpermt2ps zmm14,zmm4,zmm20
  a1eac2:	62 71 7c 48 11 76 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm14
  a1eac9:	62 e3 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm20,0x2
  a1ead0:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1ead4:	c5 f8 13 86 80 02 00 	vmovlps QWORD PTR [rsi+0x280],xmm0
  a1eadb:	00 
  a1eadc:	62 73 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm8,0x2
  a1eae3:	62 12 5d 48 7f c7    	vpermt2ps zmm8,zmm4,zmm31
  a1eae9:	62 71 7c 48 11 86 88 	vmovups ZMMWORD PTR [rsi+0x288],zmm8
  a1eaf0:	02 00 00 
  a1eaf3:	62 63 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm31,0x2
  a1eafa:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1eafe:	c5 f8 13 86 c8 02 00 	vmovlps QWORD PTR [rsi+0x2c8],xmm0
  a1eb05:	00 
  a1eb06:	62 f3 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm6,0x2
  a1eb0d:	62 d2 5d 48 7f f1    	vpermt2ps zmm6,zmm4,zmm9
  a1eb13:	62 f1 7c 48 11 b6 d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm6
  a1eb1a:	02 00 00 
  a1eb1d:	62 73 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm9,0x2
  a1eb24:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1eb28:	c5 f8 13 86 10 03 00 	vmovlps QWORD PTR [rsi+0x310],xmm0
  a1eb2f:	00 
  a1eb30:	62 f2 55 48 77 e7    	vpermi2ps zmm4,zmm5,zmm7
  a1eb36:	62 f1 7c 48 11 a6 18 	vmovups ZMMWORD PTR [rsi+0x318],zmm4
  a1eb3d:	03 00 00 
  a1eb40:	62 f3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm7,0x2
  a1eb47:	62 f3 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm5,0x2
  a1eb4e:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a1eb52:	c5 f8 13 86 58 03 00 	vmovlps QWORD PTR [rsi+0x358],xmm0
  a1eb59:	00 
  a1eb5a:	48 81 c4 c8 01 00 00 	add    rsp,0x1c8
  a1eb61:	c5 f8 77             	vzeroupper
  a1eb64:	c3                   	ret
