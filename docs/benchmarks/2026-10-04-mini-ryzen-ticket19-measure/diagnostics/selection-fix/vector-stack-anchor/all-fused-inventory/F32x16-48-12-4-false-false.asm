
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a49ac0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a49ac0:	48 81 ec 08 01 00 00 	sub    rsp,0x108
  a49ac7:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a49acb:	c5 7c 10 57 20       	vmovups ymm10,YMMWORD PTR [rdi+0x20]
  a49ad0:	c5 fc 10 57 40       	vmovups ymm2,YMMWORD PTR [rdi+0x40]
  a49ad5:	c5 fc 10 6f 60       	vmovups ymm5,YMMWORD PTR [rdi+0x60]
  a49ada:	62 f1 7c 48 28 25 5c 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff648b5c]        # 92640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1faf0>
  a49ae1:	8b 64 ff 
  a49ae4:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a49ae9:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a49aef:	62 52 5d 48 7f cd    	vpermt2ps zmm9,zmm4,zmm13
  a49af5:	62 f1 7c 48 28 1d 81 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff648b81]        # 92680 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fb30>
  a49afc:	8b 64 ff 
  a49aff:	62 d2 65 48 7f cd    	vpermt2ps zmm1,zmm3,zmm13
  a49b05:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a49b0b:	62 d2 5d 48 7f fd    	vpermt2ps zmm7,zmm4,zmm13
  a49b11:	62 52 65 48 7f d5    	vpermt2ps zmm10,zmm3,zmm13
  a49b17:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a49b1d:	62 52 5d 48 7f f5    	vpermt2ps zmm14,zmm4,zmm13
  a49b23:	62 d2 65 48 7f d5    	vpermt2ps zmm2,zmm3,zmm13
  a49b29:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a49b2f:	62 d2 5d 48 7f f5    	vpermt2ps zmm6,zmm4,zmm13
  a49b35:	62 d2 65 48 7f ed    	vpermt2ps zmm5,zmm3,zmm13
  a49b3b:	c5 7c 10 a7 80 00 00 	vmovups ymm12,YMMWORD PTR [rdi+0x80]
  a49b42:	00 
  a49b43:	62 c1 7c 48 28 dc    	vmovaps zmm19,zmm12
  a49b49:	62 c2 5d 48 7f dd    	vpermt2ps zmm19,zmm4,zmm13
  a49b4f:	62 52 65 48 7f e5    	vpermt2ps zmm12,zmm3,zmm13
  a49b55:	62 e1 7c 28 10 47 05 	vmovups ymm16,YMMWORD PTR [rdi+0xa0]
  a49b5c:	62 b1 7c 48 28 c0    	vmovaps zmm0,zmm16
  a49b62:	62 d2 5d 48 7f c5    	vpermt2ps zmm0,zmm4,zmm13
  a49b68:	62 c2 65 48 7f c5    	vpermt2ps zmm16,zmm3,zmm13
  a49b6e:	c5 7c 10 9f c0 00 00 	vmovups ymm11,YMMWORD PTR [rdi+0xc0]
  a49b75:	00 
  a49b76:	62 c1 7c 48 28 f3    	vmovaps zmm22,zmm11
  a49b7c:	62 c2 5d 48 7f f5    	vpermt2ps zmm22,zmm4,zmm13
  a49b82:	62 52 65 48 7f dd    	vpermt2ps zmm11,zmm3,zmm13
  a49b88:	62 e1 7c 28 10 7f 07 	vmovups ymm23,YMMWORD PTR [rdi+0xe0]
  a49b8f:	62 a1 7c 48 28 cf    	vmovaps zmm17,zmm23
  a49b95:	62 c2 5d 48 7f cd    	vpermt2ps zmm17,zmm4,zmm13
  a49b9b:	62 c2 65 48 7f fd    	vpermt2ps zmm23,zmm3,zmm13
  a49ba1:	62 e1 7c 28 10 67 08 	vmovups ymm20,YMMWORD PTR [rdi+0x100]
  a49ba8:	62 21 7c 48 28 c4    	vmovaps zmm24,zmm20
  a49bae:	62 42 5d 48 7f c5    	vpermt2ps zmm24,zmm4,zmm13
  a49bb4:	62 c2 65 48 7f e5    	vpermt2ps zmm20,zmm3,zmm13
  a49bba:	62 61 7c 28 10 4f 09 	vmovups ymm25,YMMWORD PTR [rdi+0x120]
  a49bc1:	62 11 7c 48 28 f9    	vmovaps zmm15,zmm25
  a49bc7:	62 52 5d 48 7f fd    	vpermt2ps zmm15,zmm4,zmm13
  a49bcd:	62 42 65 48 7f cd    	vpermt2ps zmm25,zmm3,zmm13
  a49bd3:	62 61 7c 28 10 57 0a 	vmovups ymm26,YMMWORD PTR [rdi+0x140]
  a49bda:	62 01 7c 48 28 da    	vmovaps zmm27,zmm26
  a49be0:	62 42 5d 48 7f dd    	vpermt2ps zmm27,zmm4,zmm13
  a49be6:	62 42 65 48 7f d5    	vpermt2ps zmm26,zmm3,zmm13
  a49bec:	62 61 7c 28 10 67 0b 	vmovups ymm28,YMMWORD PTR [rdi+0x160]
  a49bf3:	62 d2 1d 40 77 e5    	vpermi2ps zmm4,zmm28,zmm13
  a49bf9:	62 42 65 48 7f e5    	vpermt2ps zmm28,zmm3,zmm13
  a49bff:	62 b1 34 48 58 de    	vaddps zmm3,zmm9,zmm22
  a49c05:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a49c0c:	fe 
  a49c0d:	62 c1 4c 48 58 ef    	vaddps zmm21,zmm6,zmm15
  a49c13:	62 a1 64 48 58 d5    	vaddps zmm18,zmm3,zmm21
  a49c19:	62 01 64 40 58 eb    	vaddps zmm29,zmm19,zmm27
  a49c1f:	62 61 74 40 58 f7    	vaddps zmm30,zmm17,zmm7
  a49c25:	62 91 14 40 58 de    	vaddps zmm3,zmm29,zmm30
  a49c2b:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a49c32:	ff 
  a49c33:	62 41 3c 40 58 fe    	vaddps zmm31,zmm24,zmm14
  a49c39:	62 91 64 40 5c db    	vsubps zmm3,zmm19,zmm27
  a49c3f:	62 41 44 40 58 da    	vaddps zmm27,zmm23,zmm10
  a49c45:	62 c1 44 40 5c da    	vsubps zmm19,zmm23,zmm10
  a49c4b:	62 e1 5c 48 58 f8    	vaddps zmm23,zmm4,zmm0
  a49c51:	62 41 3c 40 5c c6    	vsubps zmm24,zmm24,zmm14
  a49c57:	62 31 1c 40 58 f0    	vaddps zmm14,zmm28,zmm16
  a49c5d:	62 a1 1c 40 5c c0    	vsubps zmm16,zmm28,zmm16
  a49c63:	62 41 74 48 58 e3    	vaddps zmm28,zmm1,zmm11
  a49c69:	62 31 34 48 5c c6    	vsubps zmm8,zmm9,zmm22
  a49c6f:	62 81 54 48 58 f1    	vaddps zmm22,zmm5,zmm25
  a49c75:	62 01 54 48 5c c9    	vsubps zmm25,zmm5,zmm25
  a49c7b:	62 91 1c 48 58 ea    	vaddps zmm5,zmm12,zmm26
  a49c81:	62 11 1c 48 5c d2    	vsubps zmm10,zmm12,zmm26
  a49c87:	62 71 5c 40 58 e2    	vaddps zmm12,zmm20,zmm2
  a49c8d:	62 b1 44 48 5c f9    	vsubps zmm7,zmm7,zmm17
  a49c93:	62 51 44 48 58 ca    	vaddps zmm9,zmm7,zmm10
  a49c99:	62 e1 5c 40 5c e2    	vsubps zmm20,zmm20,zmm2
  a49c9f:	62 f1 7c 48 5c e4    	vsubps zmm4,zmm0,zmm4
  a49ca5:	62 b1 5c 48 58 d4    	vaddps zmm2,zmm4,zmm20
  a49cab:	62 f1 34 48 5c c2    	vsubps zmm0,zmm9,zmm2
  a49cb1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a49cb8:	03 
  a49cb9:	62 f1 34 48 58 c2    	vaddps zmm0,zmm9,zmm2
  a49cbf:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a49cc6:	02 
  a49cc7:	62 b1 64 48 58 d3    	vaddps zmm2,zmm3,zmm19
  a49ccd:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a49cd3:	62 d1 74 48 5c c3    	vsubps zmm0,zmm1,zmm11
  a49cd9:	62 b1 3c 40 58 c8    	vaddps zmm1,zmm24,zmm16
  a49cdf:	62 f1 04 48 5c de    	vsubps zmm3,zmm15,zmm6
  a49ce5:	62 f1 6c 48 58 f1    	vaddps zmm6,zmm2,zmm1
  a49ceb:	62 f1 7c 48 11 34 24 	vmovups ZMMWORD PTR [rsp],zmm6
  a49cf2:	62 f1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm1
  a49cf8:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a49cff:	01 
  a49d00:	62 b1 04 40 58 d7    	vaddps zmm2,zmm31,zmm23
  a49d06:	62 91 14 40 5c ce    	vsubps zmm1,zmm29,zmm30
  a49d0c:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp-0x40]
  a49d13:	ff 
  a49d14:	62 71 24 48 58 ca    	vaddps zmm9,zmm11,zmm2
  a49d1a:	62 a1 04 40 5c cf    	vsubps zmm17,zmm31,zmm23
  a49d20:	62 21 7c 48 28 fa    	vmovaps zmm31,zmm18
  a49d26:	62 c1 6c 40 58 d1    	vaddps zmm18,zmm18,zmm9
  a49d2c:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp-0x80]
  a49d33:	fe 
  a49d34:	62 a1 4c 48 5c fd    	vsubps zmm23,zmm6,zmm21
  a49d3a:	62 01 54 48 58 eb    	vaddps zmm29,zmm5,zmm27
  a49d40:	62 91 54 48 5c eb    	vsubps zmm5,zmm5,zmm27
  a49d46:	62 41 1c 48 58 de    	vaddps zmm27,zmm12,zmm14
  a49d4c:	62 51 1c 48 5c e6    	vsubps zmm12,zmm12,zmm14
  a49d52:	62 d1 54 48 5c f4    	vsubps zmm6,zmm5,zmm12
  a49d58:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm6
  a49d5f:	fe 
  a49d60:	62 51 54 48 58 f4    	vaddps zmm14,zmm5,zmm12
  a49d66:	62 21 1c 40 58 f6    	vaddps zmm30,zmm28,zmm22
  a49d6c:	62 b1 1c 40 5c f6    	vsubps zmm6,zmm28,zmm22
  a49d72:	62 21 74 48 58 e1    	vaddps zmm28,zmm1,zmm17
  a49d78:	62 a1 74 48 5c f1    	vsubps zmm22,zmm1,zmm17
  a49d7e:	62 11 3c 48 58 e1    	vaddps zmm12,zmm8,zmm25
  a49d84:	62 11 3c 48 5c c1    	vsubps zmm8,zmm8,zmm25
  a49d8a:	62 81 14 40 58 cb    	vaddps zmm17,zmm29,zmm27
  a49d90:	62 a1 2c 40 5c db    	vsubps zmm19,zmm26,zmm19
  a49d96:	62 a1 0c 40 58 e9    	vaddps zmm21,zmm30,zmm17
  a49d9c:	62 21 3c 40 5c c0    	vsubps zmm24,zmm24,zmm16
  a49da2:	62 61 64 48 58 d0    	vaddps zmm26,zmm3,zmm0
  a49da8:	62 f1 7c 48 5c db    	vsubps zmm3,zmm0,zmm3
  a49dae:	62 e2 7d 48 18 05 a8 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff62b6a8]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a49db5:	b6 62 ff 
  a49db8:	62 f1 2c 48 5c ef    	vsubps zmm5,zmm10,zmm7
  a49dbe:	62 b1 7c 48 28 f8    	vmovaps zmm7,zmm16
  a49dc4:	62 e1 5c 40 5c e4    	vsubps zmm20,zmm20,zmm4
  a49dca:	62 21 7c 48 28 c8    	vmovaps zmm25,zmm16
  a49dd0:	62 12 7d 40 ac cf    	vfnmadd213ps zmm9,zmm16,zmm31
  a49dd6:	62 01 64 40 58 f8    	vaddps zmm31,zmm19,zmm24
  a49ddc:	62 82 7d 40 ac ce    	vfnmadd213ps zmm17,zmm16,zmm30
  a49de2:	62 11 3c 48 58 d7    	vaddps zmm10,zmm8,zmm31
  a49de8:	62 42 7d 40 ac f8    	vfnmadd213ps zmm31,zmm16,zmm8
  a49dee:	62 21 7c 48 28 f0    	vmovaps zmm30,zmm16
  a49df4:	62 31 7c 48 28 c0    	vmovaps zmm8,zmm16
  a49dfa:	62 b1 54 48 58 e4    	vaddps zmm4,zmm5,zmm20
  a49e00:	62 e2 5d 48 ac c3    	vfnmadd213ps zmm16,zmm4,zmm3
  a49e06:	62 f1 64 48 58 e4    	vaddps zmm4,zmm3,zmm4
  a49e0c:	62 01 14 40 5c db    	vsubps zmm27,zmm29,zmm27
  a49e12:	62 61 24 48 5c ea    	vsubps zmm29,zmm11,zmm2
  a49e18:	62 f2 7d 48 18 0d b2 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff62b4b2]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a49e1f:	b4 62 ff 
  a49e22:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  a49e29:	62 d2 6d 48 ac fc    	vfnmadd213ps zmm7,zmm2,zmm12
  a49e2f:	62 f1 74 48 59 5c 24 	vmulps zmm3,zmm1,ZMMWORD PTR [rsp+0xc0]
  a49e36:	03 
  a49e37:	62 71 64 48 58 ff    	vaddps zmm15,zmm3,zmm7
  a49e3d:	62 f1 44 48 5c fb    	vsubps zmm7,zmm7,zmm3
  a49e43:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x80]
  a49e4a:	02 
  a49e4b:	62 02 25 48 ac ca    	vfnmadd213ps zmm25,zmm11,zmm26
  a49e51:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp+0x40]
  a49e58:	01 
  a49e59:	62 f1 34 40 5c d8    	vsubps zmm3,zmm25,zmm0
  a49e5f:	62 61 34 40 58 c8    	vaddps zmm25,zmm25,zmm0
  a49e65:	62 22 1d 40 ac f7    	vfnmadd213ps zmm30,zmm28,zmm23
  a49e6b:	62 91 44 40 58 c4    	vaddps zmm0,zmm23,zmm28
  a49e71:	62 72 0d 48 ac c6    	vfnmadd213ps zmm8,zmm14,zmm6
  a49e77:	62 41 4c 48 58 e6    	vaddps zmm28,zmm6,zmm14
  a49e7d:	62 b1 54 48 5c ec    	vsubps zmm5,zmm5,zmm20
  a49e83:	62 91 64 40 5c f0    	vsubps zmm6,zmm19,zmm24
  a49e89:	62 71 74 48 59 74 24 	vmulps zmm14,zmm1,ZMMWORD PTR [rsp-0x80]
  a49e90:	fe 
  a49e91:	62 e1 4c 40 59 d9    	vmulps zmm19,zmm22,zmm1
  a49e97:	62 e1 24 40 59 e1    	vmulps zmm20,zmm27,zmm1
  a49e9d:	62 e1 14 40 59 f1    	vmulps zmm22,zmm29,zmm1
  a49ea3:	62 f1 54 48 59 e9    	vmulps zmm5,zmm5,zmm1
  a49ea9:	62 f1 4c 48 59 c9    	vmulps zmm1,zmm6,zmm1
  a49eaf:	62 a1 34 48 58 fc    	vaddps zmm23,zmm9,zmm20
  a49eb5:	62 a1 34 48 5c e4    	vsubps zmm20,zmm9,zmm20
  a49ebb:	62 31 74 40 5c ce    	vsubps zmm9,zmm17,zmm22
  a49ec1:	62 a1 4c 40 58 c9    	vaddps zmm17,zmm22,zmm17
  a49ec7:	62 e1 1c 48 58 f2    	vaddps zmm22,zmm12,zmm2
  a49ecd:	62 41 2c 40 58 d3    	vaddps zmm26,zmm26,zmm11
  a49ed3:	62 41 0c 40 5c c6    	vsubps zmm24,zmm30,zmm14
  a49ed9:	62 51 0c 40 58 f6    	vaddps zmm14,zmm30,zmm14
  a49edf:	62 d1 64 40 58 f0    	vaddps zmm6,zmm19,zmm8
  a49ee5:	62 31 3c 48 5c c3    	vsubps zmm8,zmm8,zmm19
  a49eeb:	62 81 54 48 58 df    	vaddps zmm19,zmm5,zmm31
  a49ef1:	62 f1 04 40 5c ed    	vsubps zmm5,zmm31,zmm5
  a49ef7:	62 71 7c 40 5c d9    	vsubps zmm11,zmm16,zmm1
  a49efd:	62 f1 7c 40 58 c9    	vaddps zmm1,zmm16,zmm1
  a49f03:	62 e1 7c 48 28 05 73 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff67d073]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a49f0a:	d0 67 ff 
  a49f0d:	62 a2 7d 40 7f d4    	vpermt2ps zmm18,zmm16,zmm20
  a49f13:	62 32 7d 40 7f fe    	vpermt2ps zmm15,zmm16,zmm22
  a49f19:	62 42 7d 40 7f c6    	vpermt2ps zmm24,zmm16,zmm14
  a49f1f:	62 72 7d 40 7f d5    	vpermt2ps zmm10,zmm16,zmm5
  a49f25:	62 c2 7d 40 7f fd    	vpermt2ps zmm23,zmm16,zmm13
  a49f2b:	62 71 7c 48 28 35 cb 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff67cfcb]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a49f32:	cf 67 ff 
  a49f35:	62 a2 0d 48 7f d7    	vpermt2ps zmm18,zmm14,zmm23
  a49f3b:	62 d2 7d 40 7f fd    	vpermt2ps zmm7,zmm16,zmm13
  a49f41:	62 72 0d 48 7f ff    	vpermt2ps zmm15,zmm14,zmm7
  a49f47:	62 d2 7d 40 7f c5    	vpermt2ps zmm0,zmm16,zmm13
  a49f4d:	62 62 0d 48 7f c0    	vpermt2ps zmm24,zmm14,zmm0
  a49f53:	62 c2 7d 40 7f dd    	vpermt2ps zmm19,zmm16,zmm13
  a49f59:	62 32 0d 48 7f d3    	vpermt2ps zmm10,zmm14,zmm19
  a49f5f:	62 91 ed 40 14 e8    	vunpcklpd zmm5,zmm18,zmm24
  a49f65:	62 91 ed 40 15 d0    	vunpckhpd zmm2,zmm18,zmm24
  a49f6b:	62 d1 85 48 14 c2    	vunpcklpd zmm0,zmm15,zmm10
  a49f71:	62 d1 85 48 15 fa    	vunpckhpd zmm7,zmm15,zmm10
  a49f77:	62 a2 7d 40 7f e9    	vpermt2ps zmm21,zmm16,zmm17
  a49f7d:	62 92 7d 40 7f da    	vpermt2ps zmm3,zmm16,zmm26
  a49f83:	62 d2 7d 40 7f f0    	vpermt2ps zmm6,zmm16,zmm8
  a49f89:	62 f2 7d 40 7f e1    	vpermt2ps zmm4,zmm16,zmm1
  a49f8f:	62 f1 7c 48 28 0d 67 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff67ce67]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a49f96:	ce 67 ff 
  a49f99:	62 52 7d 40 7f cd    	vpermt2ps zmm9,zmm16,zmm13
  a49f9f:	62 42 7d 40 7f cd    	vpermt2ps zmm25,zmm16,zmm13
  a49fa5:	62 42 7d 40 7f e5    	vpermt2ps zmm28,zmm16,zmm13
  a49fab:	62 52 7d 40 7f dd    	vpermt2ps zmm11,zmm16,zmm13
  a49fb1:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a49fb7:	62 72 75 48 7f c0    	vpermt2ps zmm8,zmm1,zmm0
  a49fbd:	62 71 7c 48 28 15 79 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff67ce79]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a49fc4:	ce 67 ff 
  a49fc7:	62 f2 2d 48 7f e8    	vpermt2ps zmm5,zmm10,zmm0
  a49fcd:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a49fd3:	62 f2 75 48 7f c7    	vpermt2ps zmm0,zmm1,zmm7
  a49fd9:	62 f2 2d 48 7f d7    	vpermt2ps zmm2,zmm10,zmm7
  a49fdf:	62 c2 0d 48 7f e9    	vpermt2ps zmm21,zmm14,zmm9
  a49fe5:	62 92 0d 48 7f d9    	vpermt2ps zmm3,zmm14,zmm25
  a49feb:	62 92 0d 48 7f f4    	vpermt2ps zmm6,zmm14,zmm28
  a49ff1:	62 d2 0d 48 7f e3    	vpermt2ps zmm4,zmm14,zmm11
  a49ff7:	62 f1 d5 40 14 fe    	vunpcklpd zmm7,zmm21,zmm6
  a49ffd:	62 f1 d5 40 15 f6    	vunpckhpd zmm6,zmm21,zmm6
  a4a003:	62 71 e5 48 14 cc    	vunpcklpd zmm9,zmm3,zmm4
  a4a009:	62 f1 e5 48 15 dc    	vunpckhpd zmm3,zmm3,zmm4
  a4a00f:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a4a015:	62 d2 75 48 7f e1    	vpermt2ps zmm4,zmm1,zmm9
  a4a01b:	62 d2 2d 48 7f f9    	vpermt2ps zmm7,zmm10,zmm9
  a4a021:	62 f2 4d 48 77 cb    	vpermi2ps zmm1,zmm6,zmm3
  a4a027:	62 f2 2d 48 7f f3    	vpermt2ps zmm6,zmm10,zmm3
  a4a02d:	62 f1 7c 48 10 5a 02 	vmovups zmm3,ZMMWORD PTR [rdx+0x80]
  a4a034:	62 71 7c 48 10 4a 03 	vmovups zmm9,ZMMWORD PTR [rdx+0xc0]
  a4a03b:	62 71 7c 48 10 52 04 	vmovups zmm10,ZMMWORD PTR [rdx+0x100]
  a4a042:	62 71 7c 48 10 5a 05 	vmovups zmm11,ZMMWORD PTR [rdx+0x140]
  a4a049:	62 51 7c 48 59 e2    	vmulps zmm12,zmm0,zmm10
  a4a04f:	62 52 75 48 bc e3    	vfnmadd231ps zmm12,zmm1,zmm11
  a4a055:	62 d1 74 48 59 ca    	vmulps zmm1,zmm1,zmm10
  a4a05b:	62 71 7c 48 10 52 06 	vmovups zmm10,ZMMWORD PTR [rdx+0x180]
  a4a062:	62 f2 25 48 b8 c8    	vfmadd231ps zmm1,zmm11,zmm0
  a4a068:	62 f1 7c 48 10 42 07 	vmovups zmm0,ZMMWORD PTR [rdx+0x1c0]
  a4a06f:	62 71 54 48 59 db    	vmulps zmm11,zmm5,zmm3
  a4a075:	62 52 45 48 bc d9    	vfnmadd231ps zmm11,zmm7,zmm9
  a4a07b:	62 f1 44 48 59 db    	vmulps zmm3,zmm7,zmm3
  a4a081:	62 d1 3c 48 58 fc    	vaddps zmm7,zmm8,zmm12
  a4a087:	62 f2 35 48 b8 dd    	vfmadd231ps zmm3,zmm9,zmm5
  a4a08d:	62 d1 6c 48 59 ea    	vmulps zmm5,zmm2,zmm10
  a4a093:	62 f2 4d 48 bc e8    	vfnmadd231ps zmm5,zmm6,zmm0
  a4a099:	62 71 24 48 58 cd    	vaddps zmm9,zmm11,zmm5
  a4a09f:	62 d1 4c 48 59 f2    	vmulps zmm6,zmm6,zmm10
  a4a0a5:	62 71 74 48 58 d4    	vaddps zmm10,zmm1,zmm4
  a4a0ab:	62 f2 7d 48 b8 f2    	vfmadd231ps zmm6,zmm0,zmm2
  a4a0b1:	62 f1 64 48 58 c6    	vaddps zmm0,zmm3,zmm6
  a4a0b7:	62 d1 3c 48 5c d4    	vsubps zmm2,zmm8,zmm12
  a4a0bd:	62 f1 64 48 5c de    	vsubps zmm3,zmm3,zmm6
  a4a0c3:	62 f1 6c 48 58 f3    	vaddps zmm6,zmm2,zmm3
  a4a0c9:	62 f1 5c 48 5c c9    	vsubps zmm1,zmm4,zmm1
  a4a0cf:	62 d1 54 48 5c e3    	vsubps zmm4,zmm5,zmm11
  a4a0d5:	62 f1 74 48 58 ec    	vaddps zmm5,zmm1,zmm4
  a4a0db:	c5 7c 28 05 5d cb 62 	vmovaps ymm8,YMMWORD PTR [rip+0xffffffffff62cb5d]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a4a0e2:	ff 
  a4a0e3:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a4a0e9:	62 72 3d 48 7f dd    	vpermt2ps zmm11,zmm8,zmm5
  a4a0ef:	62 51 44 48 5c e1    	vsubps zmm12,zmm7,zmm9
  a4a0f5:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a4a0fb:	62 f1 2c 48 5c d8    	vsubps zmm3,zmm10,zmm0
  a4a101:	62 f1 74 48 5c cc    	vsubps zmm1,zmm1,zmm4
  a4a107:	62 d1 7c 48 28 e4    	vmovaps zmm4,zmm12
  a4a10d:	62 f2 3d 48 7f e3    	vpermt2ps zmm4,zmm8,zmm3
  a4a113:	62 d1 44 48 58 f9    	vaddps zmm7,zmm7,zmm9
  a4a119:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a4a11f:	62 72 3d 48 7f c9    	vpermt2ps zmm9,zmm8,zmm1
  a4a125:	62 f1 2c 48 58 c0    	vaddps zmm0,zmm10,zmm0
  a4a12b:	62 72 45 48 77 c0    	vpermi2ps zmm8,zmm7,zmm0
  a4a131:	62 71 7c 48 28 15 85 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff648585]        # 926c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fb70>
  a4a138:	85 64 ff 
  a4a13b:	62 f2 2d 48 7f f8    	vpermt2ps zmm7,zmm10,zmm0
  a4a141:	62 f2 2d 48 7f f5    	vpermt2ps zmm6,zmm10,zmm5
  a4a147:	62 72 2d 48 7f e3    	vpermt2ps zmm12,zmm10,zmm3
  a4a14d:	62 f2 2d 48 7f d1    	vpermt2ps zmm2,zmm10,zmm1
  a4a153:	62 f1 7c 48 11 3e    	vmovups ZMMWORD PTR [rsi],zmm7
  a4a159:	c5 7c 11 46 40       	vmovups YMMWORD PTR [rsi+0x40],ymm8
  a4a15e:	62 f1 7c 48 11 b6 60 	vmovups ZMMWORD PTR [rsi+0x60],zmm6
  a4a165:	00 00 00 
  a4a168:	c5 7c 11 9e a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm11
  a4a16f:	00 
  a4a170:	62 71 7c 48 11 66 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm12
  a4a177:	c5 fc 11 a6 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm4
  a4a17e:	00 
  a4a17f:	62 f1 7c 48 11 96 20 	vmovups ZMMWORD PTR [rsi+0x120],zmm2
  a4a186:	01 00 00 
  a4a189:	c5 7c 11 8e 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm9
  a4a190:	00 
  a4a191:	48 81 c4 08 01 00 00 	add    rsp,0x108
  a4a198:	c5 f8 77             	vzeroupper
  a4a19b:	c3                   	ret
