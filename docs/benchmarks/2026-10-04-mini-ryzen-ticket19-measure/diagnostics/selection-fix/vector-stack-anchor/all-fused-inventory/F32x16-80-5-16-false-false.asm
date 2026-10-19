
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a1eb80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a1eb80:	48 81 ec c8 08 00 00 	sub    rsp,0x8c8
  a1eb87:	62 f1 7c 48 28 0d af 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6712af]        # 8fe40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d2f0>
  a1eb8e:	12 67 ff 
  a1eb91:	62 f1 7c 48 10 37    	vmovups zmm6,ZMMWORD PTR [rdi]
  a1eb97:	62 f1 7c 48 10 7f 01 	vmovups zmm7,ZMMWORD PTR [rdi+0x40]
  a1eb9e:	62 71 7c 48 10 47 02 	vmovups zmm8,ZMMWORD PTR [rdi+0x80]
  a1eba5:	62 f1 7c 48 10 57 03 	vmovups zmm2,ZMMWORD PTR [rdi+0xc0]
  a1ebac:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a1ebb2:	62 72 75 48 7f df    	vpermt2ps zmm11,zmm1,zmm7
  a1ebb8:	62 41 7c 48 28 d8    	vmovaps zmm27,zmm8
  a1ebbe:	62 62 75 48 7f da    	vpermt2ps zmm27,zmm1,zmm2
  a1ebc4:	62 71 7c 48 10 67 08 	vmovups zmm12,ZMMWORD PTR [rdi+0x200]
  a1ebcb:	62 71 7c 48 10 4f 09 	vmovups zmm9,ZMMWORD PTR [rdi+0x240]
  a1ebd2:	62 d1 7c 48 28 dc    	vmovaps zmm3,zmm12
  a1ebd8:	62 d2 75 48 7f d9    	vpermt2ps zmm3,zmm1,zmm9
  a1ebde:	62 71 24 40 58 d3    	vaddps zmm10,zmm27,zmm3
  a1ebe4:	62 d1 24 48 58 c2    	vaddps zmm0,zmm11,zmm10
  a1ebea:	62 71 7c 48 10 7f 04 	vmovups zmm15,ZMMWORD PTR [rdi+0x100]
  a1ebf1:	62 71 7c 48 10 77 05 	vmovups zmm14,ZMMWORD PTR [rdi+0x140]
  a1ebf8:	62 51 7c 48 28 ef    	vmovaps zmm13,zmm15
  a1ebfe:	62 52 75 48 7f ee    	vpermt2ps zmm13,zmm1,zmm14
  a1ec04:	62 e1 7c 48 10 57 06 	vmovups zmm18,ZMMWORD PTR [rdi+0x180]
  a1ec0b:	62 e1 7c 48 10 47 07 	vmovups zmm16,ZMMWORD PTR [rdi+0x1c0]
  a1ec12:	62 b2 6d 40 77 c8    	vpermi2ps zmm1,zmm18,zmm16
  a1ec18:	62 e1 14 48 58 e1    	vaddps zmm20,zmm13,zmm1
  a1ec1e:	62 a1 7c 48 58 fc    	vaddps zmm23,zmm0,zmm20
  a1ec24:	62 f1 7c 48 28 05 52 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6a8352]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a1ec2b:	83 6a ff 
  a1ec2e:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a1ec32:	62 b1 7c 48 28 ef    	vmovaps zmm5,zmm23
  a1ec38:	62 f2 7d 48 7f ec    	vpermt2ps zmm5,zmm0,zmm4
  a1ec3e:	62 61 7c 48 28 cd    	vmovaps zmm25,zmm5
  a1ec44:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm5
  a1ec4b:	01 
  a1ec4c:	62 e1 7c 48 28 2d 2a 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff67122a]        # 8fe80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d330>
  a1ec53:	12 67 ff 
  a1ec56:	62 72 55 40 7f c2    	vpermt2ps zmm8,zmm21,zmm2
  a1ec5c:	62 52 55 40 7f e1    	vpermt2ps zmm12,zmm21,zmm9
  a1ec62:	62 d1 3c 48 5c d4    	vsubps zmm2,zmm8,zmm12
  a1ec68:	62 52 55 40 7f fe    	vpermt2ps zmm15,zmm21,zmm14
  a1ec6e:	62 a2 55 40 7f d0    	vpermt2ps zmm18,zmm21,zmm16
  a1ec74:	62 31 04 48 5c ca    	vsubps zmm9,zmm15,zmm18
  a1ec7a:	62 e2 7d 48 18 05 d4 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff656ad4]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a1ec81:	6a 65 ff 
  a1ec84:	62 a1 34 48 59 f0    	vmulps zmm22,zmm9,zmm16
  a1ec8a:	62 e2 7d 48 18 0d 0c 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff65670c]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a1ec91:	67 65 ff 
  a1ec94:	62 a2 6d 48 b8 f1    	vfmadd231ps zmm22,zmm2,zmm17
  a1ec9a:	62 e2 7d 48 18 1d 44 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff656a44]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a1eca1:	6a 65 ff 
  a1eca4:	62 21 7c 48 28 c3    	vmovaps zmm24,zmm19
  a1ecaa:	62 42 2d 48 a8 c3    	vfmadd213ps zmm24,zmm10,zmm11
  a1ecb0:	62 62 7d 48 18 15 8a 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff65698a]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a1ecb7:	69 65 ff 
  a1ecba:	62 02 5d 40 bc c2    	vfnmadd231ps zmm24,zmm20,zmm26
  a1ecc0:	62 01 4c 40 58 e8    	vaddps zmm29,zmm22,zmm24
  a1ecc6:	62 91 7c 48 28 ed    	vmovaps zmm5,zmm29
  a1eccc:	62 f2 7d 48 7f ec    	vpermt2ps zmm5,zmm0,zmm4
  a1ecd2:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm5
  a1ecd9:	12 
  a1ecda:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm25
  a1ece1:	fe 
  a1ece2:	62 52 2d 40 bc da    	vfnmadd231ps zmm11,zmm26,zmm10
  a1ece8:	62 32 65 40 b8 dc    	vfmadd231ps zmm11,zmm19,zmm20
  a1ecee:	62 a1 6c 48 59 e0    	vmulps zmm20,zmm2,zmm16
  a1ecf4:	62 c2 75 40 bc e1    	vfnmadd231ps zmm20,zmm17,zmm9
  a1ecfa:	62 31 24 48 5c d4    	vsubps zmm10,zmm11,zmm20
  a1ed00:	62 41 7c 48 28 fa    	vmovaps zmm31,zmm10
  a1ed06:	62 62 7d 48 7f fc    	vpermt2ps zmm31,zmm0,zmm4
  a1ed0c:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a1ed10:	62 f2 7d 48 7f ed    	vpermt2ps zmm5,zmm0,zmm5
  a1ed16:	62 31 3c 40 5c f6    	vsubps zmm14,zmm24,zmm22
  a1ed1c:	62 c1 7c 48 28 f6    	vmovaps zmm22,zmm14
  a1ed22:	62 e2 7d 48 7f f4    	vpermt2ps zmm22,zmm0,zmm4
  a1ed28:	62 51 5c 40 58 db    	vaddps zmm11,zmm20,zmm11
  a1ed2e:	62 41 7c 48 28 e3    	vmovaps zmm28,zmm11
  a1ed34:	62 62 7d 48 7f e4    	vpermt2ps zmm28,zmm0,zmm4
  a1ed3a:	62 f2 55 40 7f f7    	vpermt2ps zmm6,zmm21,zmm7
  a1ed40:	62 d1 3c 48 58 fc    	vaddps zmm7,zmm8,zmm12
  a1ed46:	62 71 4c 48 58 c7    	vaddps zmm8,zmm6,zmm7
  a1ed4c:	62 31 04 48 58 fa    	vaddps zmm15,zmm15,zmm18
  a1ed52:	62 41 3c 48 58 cf    	vaddps zmm25,zmm8,zmm15
  a1ed58:	62 71 7c 48 28 05 5e 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6a825e]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a1ed5f:	82 6a ff 
  a1ed62:	62 01 7c 48 28 f1    	vmovaps zmm30,zmm25
  a1ed68:	62 62 3d 48 7f f4    	vpermt2ps zmm30,zmm8,zmm4
  a1ed6e:	62 a1 7c 48 28 d3    	vmovaps zmm18,zmm19
  a1ed74:	62 e2 45 48 a8 d6    	vfmadd213ps zmm18,zmm7,zmm6
  a1ed7a:	62 82 05 48 bc d2    	vfnmadd231ps zmm18,zmm15,zmm26
  a1ed80:	62 e1 24 40 5c e3    	vsubps zmm20,zmm27,zmm3
  a1ed86:	62 f1 14 48 5c c9    	vsubps zmm1,zmm13,zmm1
  a1ed8c:	62 31 74 48 59 e8    	vmulps zmm13,zmm1,zmm16
  a1ed92:	62 32 5d 40 b8 e9    	vfmadd231ps zmm13,zmm20,zmm17
  a1ed98:	62 51 6c 40 5c cd    	vsubps zmm9,zmm18,zmm13
  a1ed9e:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a1eda4:	62 72 3d 48 7f e4    	vpermt2ps zmm12,zmm8,zmm4
  a1edaa:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm30
  a1edb1:	03 
  a1edb2:	62 92 45 48 bc f2    	vfnmadd231ps zmm6,zmm7,zmm26
  a1edb8:	62 b2 05 48 b8 f3    	vfmadd231ps zmm6,zmm15,zmm19
  a1edbe:	62 b1 5c 40 59 f8    	vmulps zmm7,zmm20,zmm16
  a1edc4:	62 b2 75 48 bc f9    	vfnmadd231ps zmm7,zmm1,zmm17
  a1edca:	62 61 4c 48 58 df    	vaddps zmm27,zmm6,zmm7
  a1edd0:	62 11 7c 48 28 fb    	vmovaps zmm15,zmm27
  a1edd6:	62 72 3d 48 7f fc    	vpermt2ps zmm15,zmm8,zmm4
  a1eddc:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a1ede0:	62 f2 3d 48 7f db    	vpermt2ps zmm3,zmm8,zmm3
  a1ede6:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm15
  a1eded:	02 
  a1edee:	62 c1 6c 40 58 d5    	vaddps zmm18,zmm18,zmm13
  a1edf4:	62 21 7c 48 28 c2    	vmovaps zmm24,zmm18
  a1edfa:	62 62 3d 48 7f c4    	vpermt2ps zmm24,zmm8,zmm4
  a1ee00:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm24
  a1ee07:	13 
  a1ee08:	62 e1 4c 48 5c ef    	vsubps zmm21,zmm6,zmm7
  a1ee0e:	62 21 7c 48 28 d5    	vmovaps zmm26,zmm21
  a1ee14:	62 62 3d 48 7f d4    	vpermt2ps zmm26,zmm8,zmm4
  a1ee1a:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm26
  a1ee21:	11 
  a1ee22:	62 e2 3d 48 7f fc    	vpermt2ps zmm23,zmm8,zmm4
  a1ee28:	62 62 3d 48 7f ec    	vpermt2ps zmm29,zmm8,zmm4
  a1ee2e:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm23
  a1ee35:	10 
  a1ee36:	62 72 3d 48 7f d4    	vpermt2ps zmm10,zmm8,zmm4
  a1ee3c:	62 71 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm10
  a1ee43:	62 72 3d 48 7f f4    	vpermt2ps zmm14,zmm8,zmm4
  a1ee49:	62 72 3d 48 7f dc    	vpermt2ps zmm11,zmm8,zmm4
  a1ee4f:	62 51 7c 48 28 c6    	vmovaps zmm8,zmm14
  a1ee55:	62 62 7d 48 7f cc    	vpermt2ps zmm25,zmm0,zmm4
  a1ee5b:	62 72 7d 48 7f cc    	vpermt2ps zmm9,zmm0,zmm4
  a1ee61:	62 62 7d 48 7f dc    	vpermt2ps zmm27,zmm0,zmm4
  a1ee67:	62 e2 7d 48 7f d4    	vpermt2ps zmm18,zmm0,zmm4
  a1ee6d:	62 e2 7d 48 7f ec    	vpermt2ps zmm21,zmm0,zmm4
  a1ee73:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm11
  a1ee7a:	ff 
  a1ee7b:	62 f1 7c 48 28 15 bb 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6a80bb]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a1ee82:	80 6a ff 
  a1ee85:	62 b1 7c 48 28 ff    	vmovaps zmm7,zmm23
  a1ee8b:	62 92 6d 48 7f fd    	vpermt2ps zmm7,zmm2,zmm29
  a1ee91:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm7
  a1ee98:	18 
  a1ee99:	62 72 6d 48 7f d3    	vpermt2ps zmm10,zmm2,zmm3
  a1ee9f:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm10
  a1eea6:	19 
  a1eea7:	62 72 6d 48 7f f3    	vpermt2ps zmm14,zmm2,zmm3
  a1eead:	62 72 6d 48 7f db    	vpermt2ps zmm11,zmm2,zmm3
  a1eeb3:	62 91 7c 48 28 ce    	vmovaps zmm1,zmm30
  a1eeb9:	62 d2 6d 48 7f cc    	vpermt2ps zmm1,zmm2,zmm12
  a1eebf:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a1eec6:	05 
  a1eec7:	62 72 6d 48 7f fb    	vpermt2ps zmm15,zmm2,zmm3
  a1eecd:	62 62 6d 48 7f c3    	vpermt2ps zmm24,zmm2,zmm3
  a1eed3:	62 62 6d 48 7f d3    	vpermt2ps zmm26,zmm2,zmm3
  a1eed9:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0x40]
  a1eee0:	01 
  a1eee1:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x480]
  a1eee8:	12 
  a1eee9:	62 22 6d 48 7f f0    	vpermt2ps zmm30,zmm2,zmm16
  a1eeef:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm30
  a1eef6:	01 
  a1eef7:	62 81 7c 48 28 e7    	vmovaps zmm20,zmm31
  a1eefd:	62 62 6d 48 7f fd    	vpermt2ps zmm31,zmm2,zmm5
  a1ef03:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm31
  a1ef0a:	20 
  a1ef0b:	62 a1 7c 48 28 de    	vmovaps zmm19,zmm22
  a1ef11:	62 e2 6d 48 7f f5    	vpermt2ps zmm22,zmm2,zmm5
  a1ef17:	62 31 7c 48 28 ee    	vmovaps zmm13,zmm22
  a1ef1d:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm22
  a1ef24:	1f 
  a1ef25:	62 81 7c 48 28 cc    	vmovaps zmm17,zmm28
  a1ef2b:	62 62 6d 48 7f e5    	vpermt2ps zmm28,zmm2,zmm5
  a1ef31:	62 81 7c 48 28 fc    	vmovaps zmm23,zmm28
  a1ef37:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm28
  a1ef3e:	1e 
  a1ef3f:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a1ef45:	62 d2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm9
  a1ef4b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a1ef52:	08 
  a1ef53:	62 91 7c 48 28 e3    	vmovaps zmm4,zmm27
  a1ef59:	62 f2 6d 48 7f e5    	vpermt2ps zmm4,zmm2,zmm5
  a1ef5f:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a1ef65:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm4
  a1ef6c:	07 
  a1ef6d:	62 b1 7c 48 28 e2    	vmovaps zmm4,zmm18
  a1ef73:	62 f2 6d 48 7f e5    	vpermt2ps zmm4,zmm2,zmm5
  a1ef79:	62 61 7c 48 28 e4    	vmovaps zmm28,zmm4
  a1ef7f:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm4
  a1ef86:	06 
  a1ef87:	62 f2 55 40 77 d5    	vpermi2ps zmm2,zmm21,zmm5
  a1ef8d:	62 e1 7c 48 28 35 69 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6a7e69]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1ef94:	7e 6a ff 
  a1ef97:	62 f1 fd 48 15 e6    	vunpckhpd zmm4,zmm0,zmm6
  a1ef9d:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm4
  a1efa4:	0f 
  a1efa5:	62 f1 9d 40 15 c2    	vunpckhpd zmm0,zmm28,zmm2
  a1efab:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a1efb2:	0e 
  a1efb3:	62 f2 4d 40 7f e0    	vpermt2ps zmm4,zmm22,zmm0
  a1efb9:	62 91 8d 40 15 f7    	vunpckhpd zmm6,zmm30,zmm31
  a1efbf:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm6
  a1efc6:	0d 
  a1efc7:	62 b1 95 48 15 c7    	vunpckhpd zmm0,zmm13,zmm23
  a1efcd:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a1efd4:	0c 
  a1efd5:	62 f2 4d 40 7f f0    	vpermt2ps zmm6,zmm22,zmm0
  a1efdb:	62 61 7c 48 10 72 0d 	vmovups zmm30,ZMMWORD PTR [rdx+0x340]
  a1efe2:	62 61 7c 48 10 7a 0c 	vmovups zmm31,ZMMWORD PTR [rdx+0x300]
  a1efe9:	62 91 4c 48 59 c7    	vmulps zmm0,zmm6,zmm31
  a1efef:	62 92 5d 48 b8 c6    	vfmadd231ps zmm0,zmm4,zmm30
  a1eff5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm0
  a1effc:	14 
  a1effd:	62 91 5c 48 59 c7    	vmulps zmm0,zmm4,zmm31
  a1f003:	62 f2 0d 40 bc c6    	vfnmadd231ps zmm0,zmm30,zmm6
  a1f009:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a1f010:	04 
  a1f011:	62 41 f5 48 15 f7    	vunpckhpd zmm30,zmm1,zmm15
  a1f017:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm30
  a1f01e:	0b 
  a1f01f:	62 91 bd 40 15 c2    	vunpckhpd zmm0,zmm24,zmm26
  a1f025:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a1f02c:	0a 
  a1f02d:	62 62 4d 40 7f f0    	vpermt2ps zmm30,zmm22,zmm0
  a1f033:	62 51 c5 48 15 ea    	vunpckhpd zmm13,zmm7,zmm10
  a1f039:	62 d1 8d 48 15 c3    	vunpckhpd zmm0,zmm14,zmm11
  a1f03f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a1f046:	09 
  a1f047:	62 41 7c 48 28 fd    	vmovaps zmm31,zmm13
  a1f04d:	62 62 4d 40 7f f8    	vpermt2ps zmm31,zmm22,zmm0
  a1f053:	62 f1 7c 48 10 4a 1d 	vmovups zmm1,ZMMWORD PTR [rdx+0x740]
  a1f05a:	62 f1 7c 48 10 42 1c 	vmovups zmm0,ZMMWORD PTR [rdx+0x700]
  a1f061:	62 f1 04 40 59 e0    	vmulps zmm4,zmm31,zmm0
  a1f067:	62 f2 0d 40 b8 e1    	vfmadd231ps zmm4,zmm30,zmm1
  a1f06d:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm4
  a1f074:	22 
  a1f075:	62 f1 0c 40 59 c0    	vmulps zmm0,zmm30,zmm0
  a1f07b:	62 92 75 48 bc c7    	vfnmadd231ps zmm0,zmm1,zmm31
  a1f081:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm0
  a1f088:	21 
  a1f089:	62 f1 7c 48 28 05 6d 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6a7e6d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1f090:	7e 6a ff 
  a1f093:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x80]
  a1f09a:	fe 
  a1f09b:	62 b2 7d 48 7f e0    	vpermt2ps zmm4,zmm0,zmm16
  a1f0a1:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0xc0]
  a1f0a8:	03 
  a1f0a9:	62 42 7d 48 7f f4    	vpermt2ps zmm30,zmm0,zmm12
  a1f0af:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x400]
  a1f0b6:	10 
  a1f0b7:	62 82 7d 48 7f c5    	vpermt2ps zmm16,zmm0,zmm29
  a1f0bd:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x80]
  a1f0c4:	02 
  a1f0c5:	62 f2 7d 48 7f fb    	vpermt2ps zmm7,zmm0,zmm3
  a1f0cb:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x4c0]
  a1f0d2:	13 
  a1f0d3:	62 72 7d 48 7f e3    	vpermt2ps zmm12,zmm0,zmm3
  a1f0d9:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x440]
  a1f0e0:	11 
  a1f0e1:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a1f0e7:	62 61 7c 48 10 2c 24 	vmovups zmm29,ZMMWORD PTR [rsp]
  a1f0ee:	62 62 7d 48 7f eb    	vpermt2ps zmm29,zmm0,zmm3
  a1f0f4:	62 61 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm29
  a1f0fb:	62 41 7c 48 28 f8    	vmovaps zmm31,zmm8
  a1f101:	62 62 7d 48 7f fb    	vpermt2ps zmm31,zmm0,zmm3
  a1f107:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp-0x40]
  a1f10e:	ff 
  a1f10f:	62 62 7d 48 7f e3    	vpermt2ps zmm28,zmm0,zmm3
  a1f115:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm28
  a1f11c:	ff 
  a1f11d:	62 42 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm9
  a1f123:	62 e2 7d 48 7f e5    	vpermt2ps zmm20,zmm0,zmm5
  a1f129:	62 e2 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm5
  a1f12f:	62 e2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm5
  a1f135:	62 62 7d 48 7f dd    	vpermt2ps zmm27,zmm0,zmm5
  a1f13b:	62 e2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm5
  a1f141:	62 e2 7d 48 7f ed    	vpermt2ps zmm21,zmm0,zmm5
  a1f147:	62 a1 dd 48 15 fc    	vunpckhpd zmm23,zmm4,zmm20
  a1f14d:	62 b1 e5 40 15 c9    	vunpckhpd zmm1,zmm19,zmm17
  a1f153:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm1
  a1f15a:	17 
  a1f15b:	62 b1 7c 48 28 c7    	vmovaps zmm0,zmm23
  a1f161:	62 f2 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm1
  a1f167:	62 91 b5 40 15 f3    	vunpckhpd zmm6,zmm25,zmm27
  a1f16d:	62 b1 ed 40 15 dd    	vunpckhpd zmm3,zmm18,zmm21
  a1f173:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm3
  a1f17a:	16 
  a1f17b:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a1f181:	62 f2 4d 40 7f cb    	vpermt2ps zmm1,zmm22,zmm3
  a1f187:	62 f1 7c 48 10 6a 04 	vmovups zmm5,ZMMWORD PTR [rdx+0x100]
  a1f18e:	62 71 7c 48 10 4a 05 	vmovups zmm9,ZMMWORD PTR [rdx+0x140]
  a1f195:	62 f1 74 48 59 dd    	vmulps zmm3,zmm1,zmm5
  a1f19b:	62 d2 7d 48 bc d9    	vfnmadd231ps zmm3,zmm0,zmm9
  a1f1a1:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm3
  a1f1a8:	13 
  a1f1a9:	62 f1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm5
  a1f1af:	62 f2 35 48 b8 c1    	vfmadd231ps zmm0,zmm9,zmm1
  a1f1b5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a1f1bc:	12 
  a1f1bd:	62 91 fd 40 15 dd    	vunpckhpd zmm3,zmm16,zmm29
  a1f1c3:	62 91 85 40 15 cc    	vunpckhpd zmm1,zmm31,zmm28
  a1f1c9:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm1
  a1f1d0:	15 
  a1f1d1:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a1f1d7:	62 f2 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm1
  a1f1dd:	62 f1 8d 40 15 ef    	vunpckhpd zmm5,zmm30,zmm7
  a1f1e3:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a1f1e9:	62 01 7c 48 28 ee    	vmovaps zmm29,zmm30
  a1f1ef:	62 41 9d 48 15 f2    	vunpckhpd zmm30,zmm12,zmm10
  a1f1f5:	62 d1 7c 48 28 fc    	vmovaps zmm7,zmm12
  a1f1fb:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a1f201:	62 12 4d 40 7f ce    	vpermt2ps zmm9,zmm22,zmm30
  a1f207:	62 71 7c 48 10 62 15 	vmovups zmm12,ZMMWORD PTR [rdx+0x540]
  a1f20e:	62 f1 7c 48 10 4a 14 	vmovups zmm1,ZMMWORD PTR [rdx+0x500]
  a1f215:	62 61 34 48 59 e1    	vmulps zmm28,zmm9,zmm1
  a1f21b:	62 42 7d 48 bc e4    	vfnmadd231ps zmm28,zmm0,zmm12
  a1f221:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm28
  a1f228:	11 
  a1f229:	62 f1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm1
  a1f22f:	62 d2 1d 48 b8 c1    	vfmadd231ps zmm0,zmm12,zmm9
  a1f235:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a1f23c:	10 
  a1f23d:	62 b1 dd 48 14 c4    	vunpcklpd zmm0,zmm4,zmm20
  a1f243:	62 31 e5 40 14 c9    	vunpcklpd zmm9,zmm19,zmm17
  a1f249:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm9
  a1f250:	1a 
  a1f251:	62 91 b5 40 14 cb    	vunpcklpd zmm1,zmm25,zmm27
  a1f257:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a1f25e:	fe 
  a1f25f:	62 b1 ed 40 14 e5    	vunpcklpd zmm4,zmm18,zmm21
  a1f265:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm4
  a1f26c:	1c 
  a1f26d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm0
  a1f274:	1b 
  a1f275:	62 e1 7c 48 28 25 c1 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6a7bc1]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1f27c:	7b 6a ff 
  a1f27f:	62 d2 5d 40 7f c1    	vpermt2ps zmm0,zmm20,zmm9
  a1f285:	62 f2 5d 40 7f cc    	vpermt2ps zmm1,zmm20,zmm4
  a1f28b:	62 71 7c 48 10 4a 02 	vmovups zmm9,ZMMWORD PTR [rdx+0x80]
  a1f292:	62 71 7c 48 10 62 03 	vmovups zmm12,ZMMWORD PTR [rdx+0xc0]
  a1f299:	62 d1 74 48 59 e1    	vmulps zmm4,zmm1,zmm9
  a1f29f:	62 d2 7d 48 bc e4    	vfnmadd231ps zmm4,zmm0,zmm12
  a1f2a5:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm4
  a1f2ac:	1d 
  a1f2ad:	62 d1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm9
  a1f2b3:	62 f2 1d 48 b8 c1    	vfmadd231ps zmm0,zmm12,zmm1
  a1f2b9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a1f2c0:	03 
  a1f2c1:	62 d1 95 40 14 c0    	vunpcklpd zmm0,zmm29,zmm8
  a1f2c7:	62 41 c5 48 14 ea    	vunpcklpd zmm29,zmm7,zmm10
  a1f2cd:	62 f1 fd 40 14 0c 24 	vunpcklpd zmm1,zmm16,ZMMWORD PTR [rsp]
  a1f2d4:	62 f1 85 40 14 64 24 	vunpcklpd zmm4,zmm31,ZMMWORD PTR [rsp-0x40]
  a1f2db:	ff 
  a1f2dc:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a1f2e2:	62 f2 5d 40 7f cc    	vpermt2ps zmm1,zmm20,zmm4
  a1f2e8:	62 e1 7c 48 28 d8    	vmovaps zmm19,zmm0
  a1f2ee:	62 92 5d 40 7f c5    	vpermt2ps zmm0,zmm20,zmm29
  a1f2f4:	62 f1 7c 48 10 7a 13 	vmovups zmm7,ZMMWORD PTR [rdx+0x4c0]
  a1f2fb:	62 71 7c 48 10 62 12 	vmovups zmm12,ZMMWORD PTR [rdx+0x480]
  a1f302:	62 51 7c 48 59 c4    	vmulps zmm8,zmm0,zmm12
  a1f308:	62 72 75 48 bc c7    	vfnmadd231ps zmm8,zmm1,zmm7
  a1f30e:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm8
  a1f315:	ff 
  a1f316:	62 d1 74 48 59 cc    	vmulps zmm1,zmm1,zmm12
  a1f31c:	62 f2 45 48 b8 c8    	vfmadd231ps zmm1,zmm7,zmm0
  a1f322:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a1f329:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x600]
  a1f330:	18 
  a1f331:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp+0x640]
  a1f338:	19 
  a1f339:	62 d1 8d 48 14 fb    	vunpcklpd zmm7,zmm14,zmm11
  a1f33f:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a1f346:	05 
  a1f347:	62 d1 f5 48 14 cf    	vunpcklpd zmm1,zmm1,zmm15
  a1f34d:	62 01 bd 40 14 d2    	vunpcklpd zmm26,zmm24,zmm26
  a1f353:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a1f359:	62 92 5d 40 7f ca    	vpermt2ps zmm1,zmm20,zmm26
  a1f35f:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a1f365:	62 f2 5d 40 7f c7    	vpermt2ps zmm0,zmm20,zmm7
  a1f36b:	62 71 7c 48 10 52 1b 	vmovups zmm10,ZMMWORD PTR [rdx+0x6c0]
  a1f372:	62 71 7c 48 10 5a 1a 	vmovups zmm11,ZMMWORD PTR [rdx+0x680]
  a1f379:	62 41 7c 48 59 fb    	vmulps zmm31,zmm0,zmm11
  a1f37f:	62 42 75 48 b8 fa    	vfmadd231ps zmm31,zmm1,zmm10
  a1f385:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm31
  a1f38c:	05 
  a1f38d:	62 d1 74 48 59 cb    	vmulps zmm1,zmm1,zmm11
  a1f393:	62 f2 2d 48 bc c8    	vfnmadd231ps zmm1,zmm10,zmm0
  a1f399:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a1f3a0:	02 
  a1f3a1:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a1f3a8:	01 
  a1f3a9:	62 f1 fd 48 14 4c 24 	vunpcklpd zmm1,zmm0,ZMMWORD PTR [rsp+0x800]
  a1f3b0:	20 
  a1f3b1:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x7c0]
  a1f3b8:	1f 
  a1f3b9:	62 71 fd 48 14 74 24 	vunpcklpd zmm14,zmm0,ZMMWORD PTR [rsp+0x780]
  a1f3c0:	1e 
  a1f3c1:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x200]
  a1f3c8:	08 
  a1f3c9:	62 71 fd 48 14 5c 24 	vunpcklpd zmm11,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a1f3d0:	07 
  a1f3d1:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a1f3d8:	06 
  a1f3d9:	62 f1 fd 48 14 c2    	vunpcklpd zmm0,zmm0,zmm2
  a1f3df:	62 c1 7c 48 28 c3    	vmovaps zmm16,zmm11
  a1f3e5:	62 72 5d 40 7f d8    	vpermt2ps zmm11,zmm20,zmm0
  a1f3eb:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a1f3f1:	62 d2 5d 40 7f ce    	vpermt2ps zmm1,zmm20,zmm14
  a1f3f7:	62 f1 7c 48 10 52 0b 	vmovups zmm2,ZMMWORD PTR [rdx+0x2c0]
  a1f3fe:	62 71 7c 48 10 42 0a 	vmovups zmm8,ZMMWORD PTR [rdx+0x280]
  a1f405:	62 c1 74 48 59 d0    	vmulps zmm18,zmm1,zmm8
  a1f40b:	62 e2 25 48 b8 d2    	vfmadd231ps zmm18,zmm11,zmm2
  a1f411:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm18
  a1f418:	08 
  a1f419:	62 51 24 48 59 c8    	vmulps zmm9,zmm11,zmm8
  a1f41f:	62 72 6d 48 bc c9    	vfnmadd231ps zmm9,zmm2,zmm1
  a1f425:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm9
  a1f42c:	07 
  a1f42d:	62 e2 5d 40 7f 7c 24 	vpermt2ps zmm23,zmm20,ZMMWORD PTR [rsp+0x5c0]
  a1f434:	17 
  a1f435:	62 f2 5d 40 7f 74 24 	vpermt2ps zmm6,zmm20,ZMMWORD PTR [rsp+0x580]
  a1f43c:	16 
  a1f43d:	62 f2 5d 40 7f 5c 24 	vpermt2ps zmm3,zmm20,ZMMWORD PTR [rsp+0x540]
  a1f444:	15 
  a1f445:	62 92 5d 40 7f ee    	vpermt2ps zmm5,zmm20,zmm30
  a1f44b:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x3c0]
  a1f452:	0f 
  a1f453:	62 72 5d 40 7f 44 24 	vpermt2ps zmm8,zmm20,ZMMWORD PTR [rsp+0x380]
  a1f45a:	0e 
  a1f45b:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x340]
  a1f462:	0d 
  a1f463:	62 72 5d 40 7f 54 24 	vpermt2ps zmm10,zmm20,ZMMWORD PTR [rsp+0x300]
  a1f46a:	0c 
  a1f46b:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x2c0]
  a1f472:	0b 
  a1f473:	62 72 5d 40 7f 64 24 	vpermt2ps zmm12,zmm20,ZMMWORD PTR [rsp+0x280]
  a1f47a:	0a 
  a1f47b:	62 72 5d 40 7f 6c 24 	vpermt2ps zmm13,zmm20,ZMMWORD PTR [rsp+0x240]
  a1f482:	09 
  a1f483:	62 f1 7c 48 10 4a 07 	vmovups zmm1,ZMMWORD PTR [rdx+0x1c0]
  a1f48a:	62 f1 7c 48 10 52 06 	vmovups zmm2,ZMMWORD PTR [rdx+0x180]
  a1f491:	62 61 4c 48 59 da    	vmulps zmm27,zmm6,zmm2
  a1f497:	62 62 45 40 bc d9    	vfnmadd231ps zmm27,zmm23,zmm1
  a1f49d:	62 61 44 40 59 ca    	vmulps zmm25,zmm23,zmm2
  a1f4a3:	62 62 75 48 b8 ce    	vfmadd231ps zmm25,zmm1,zmm6
  a1f4a9:	62 f1 7c 48 10 4a 17 	vmovups zmm1,ZMMWORD PTR [rdx+0x5c0]
  a1f4b0:	62 f1 7c 48 10 52 16 	vmovups zmm2,ZMMWORD PTR [rdx+0x580]
  a1f4b7:	62 61 54 48 59 f2    	vmulps zmm30,zmm5,zmm2
  a1f4bd:	62 62 65 48 bc f1    	vfnmadd231ps zmm30,zmm3,zmm1
  a1f4c3:	62 e1 64 48 59 ea    	vmulps zmm21,zmm3,zmm2
  a1f4c9:	62 e2 75 48 b8 ed    	vfmadd231ps zmm21,zmm1,zmm5
  a1f4cf:	62 f1 7c 48 10 4a 1f 	vmovups zmm1,ZMMWORD PTR [rdx+0x7c0]
  a1f4d6:	62 f1 7c 48 10 5a 1e 	vmovups zmm3,ZMMWORD PTR [rdx+0x780]
  a1f4dd:	62 71 14 48 59 db    	vmulps zmm11,zmm13,zmm3
  a1f4e3:	62 72 1d 48 b8 d9    	vfmadd231ps zmm11,zmm12,zmm1
  a1f4e9:	62 71 1c 48 59 e3    	vmulps zmm12,zmm12,zmm3
  a1f4ef:	62 52 75 48 bc e5    	vfnmadd231ps zmm12,zmm1,zmm13
  a1f4f5:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a1f4fc:	62 f1 7c 48 10 5a 0e 	vmovups zmm3,ZMMWORD PTR [rdx+0x380]
  a1f503:	62 f1 2c 48 59 eb    	vmulps zmm5,zmm10,zmm3
  a1f509:	62 f2 3d 48 b8 e9    	vfmadd231ps zmm5,zmm8,zmm1
  a1f50f:	62 71 3c 48 59 eb    	vmulps zmm13,zmm8,zmm3
  a1f515:	62 52 75 48 bc ea    	vfnmadd231ps zmm13,zmm1,zmm10
  a1f51b:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x6c0]
  a1f522:	1b 
  a1f523:	62 72 4d 40 7f 54 24 	vpermt2ps zmm10,zmm22,ZMMWORD PTR [rsp+0x680]
  a1f52a:	1a 
  a1f52b:	62 82 4d 40 7f dd    	vpermt2ps zmm19,zmm22,zmm29
  a1f531:	62 e2 4d 40 7f cc    	vpermt2ps zmm17,zmm22,zmm4
  a1f537:	62 62 4d 40 7f c7    	vpermt2ps zmm24,zmm22,zmm7
  a1f53d:	62 12 4d 40 7f fa    	vpermt2ps zmm15,zmm22,zmm26
  a1f543:	62 42 4d 40 7f e6    	vpermt2ps zmm28,zmm22,zmm14
  a1f549:	62 e2 4d 40 7f c0    	vpermt2ps zmm16,zmm22,zmm0
  a1f54f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a1f556:	fe 
  a1f557:	62 f2 4d 40 7f 44 24 	vpermt2ps zmm0,zmm22,ZMMWORD PTR [rsp+0x700]
  a1f55e:	1c 
  a1f55f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a1f566:	fe 
  a1f567:	62 f1 7c 48 10 42 11 	vmovups zmm0,ZMMWORD PTR [rdx+0x440]
  a1f56e:	62 f1 7c 48 10 4a 10 	vmovups zmm1,ZMMWORD PTR [rdx+0x400]
  a1f575:	62 71 74 40 59 f1    	vmulps zmm14,zmm17,zmm1
  a1f57b:	62 72 65 40 b8 f0    	vfmadd231ps zmm14,zmm19,zmm0
  a1f581:	62 e1 64 40 59 d9    	vmulps zmm19,zmm19,zmm1
  a1f587:	62 a2 7d 48 bc d9    	vfnmadd231ps zmm19,zmm0,zmm17
  a1f58d:	62 f1 7c 48 10 42 09 	vmovups zmm0,ZMMWORD PTR [rdx+0x240]
  a1f594:	62 f1 7c 48 10 4a 08 	vmovups zmm1,ZMMWORD PTR [rdx+0x200]
  a1f59b:	62 e1 7c 40 59 e1    	vmulps zmm20,zmm16,zmm1
  a1f5a1:	62 e2 1d 40 bc e0    	vfnmadd231ps zmm20,zmm28,zmm0
  a1f5a7:	62 f1 1c 40 59 f1    	vmulps zmm6,zmm28,zmm1
  a1f5ad:	62 b2 7d 48 b8 f0    	vfmadd231ps zmm6,zmm0,zmm16
  a1f5b3:	62 f1 7c 48 10 42 19 	vmovups zmm0,ZMMWORD PTR [rdx+0x640]
  a1f5ba:	62 f1 7c 48 10 4a 18 	vmovups zmm1,ZMMWORD PTR [rdx+0x600]
  a1f5c1:	62 f1 04 48 59 e1    	vmulps zmm4,zmm15,zmm1
  a1f5c7:	62 f2 3d 40 bc e0    	vfnmadd231ps zmm4,zmm24,zmm0
  a1f5cd:	62 e1 3c 40 59 f9    	vmulps zmm23,zmm24,zmm1
  a1f5d3:	62 c2 7d 48 b8 ff    	vfmadd231ps zmm23,zmm0,zmm15
  a1f5d9:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x740]
  a1f5e0:	1d 
  a1f5e1:	62 e1 14 40 5c 74 24 	vsubps zmm22,zmm29,ZMMWORD PTR [rsp-0x40]
  a1f5e8:	ff 
  a1f5e9:	62 01 6c 40 5c c7    	vsubps zmm24,zmm18,zmm31
  a1f5ef:	62 91 4c 40 5c d8    	vsubps zmm3,zmm22,zmm24
  a1f5f5:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a1f5fc:	03 
  a1f5fd:	62 61 7c 48 5c 14 24 	vsubps zmm26,zmm0,ZMMWORD PTR [rsp]
  a1f604:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a1f60b:	02 
  a1f60c:	62 41 7c 48 5c e1    	vsubps zmm28,zmm0,zmm9
  a1f612:	62 f2 7d 48 18 15 e4 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff6560e4]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a1f619:	60 65 ff 
  a1f61c:	62 11 2c 40 5c cc    	vsubps zmm9,zmm26,zmm28
  a1f622:	62 f1 34 48 59 c2    	vmulps zmm0,zmm9,zmm2
  a1f628:	62 e2 7d 48 18 15 32 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff656032]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a1f62f:	60 65 ff 
  a1f632:	62 b2 65 48 b8 c2    	vfmadd231ps zmm0,zmm3,zmm18
  a1f638:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a1f63f:	01 
  a1f640:	62 b1 34 48 59 c2    	vmulps zmm0,zmm9,zmm18
  a1f646:	62 f2 6d 48 bc c3    	vfnmadd231ps zmm0,zmm2,zmm3
  a1f64c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a1f653:	0f 
  a1f654:	62 91 24 40 5c de    	vsubps zmm3,zmm27,zmm30
  a1f65a:	62 51 54 48 5c cb    	vsubps zmm9,zmm5,zmm11
  a1f660:	62 c1 64 48 5c c9    	vsubps zmm17,zmm3,zmm9
  a1f666:	62 21 34 40 5c fd    	vsubps zmm31,zmm25,zmm21
  a1f66c:	62 d1 1c 48 5c cd    	vsubps zmm1,zmm12,zmm13
  a1f672:	62 f1 04 40 5c c1    	vsubps zmm0,zmm31,zmm1
  a1f678:	62 b1 7c 48 59 fa    	vmulps zmm7,zmm0,zmm18
  a1f67e:	62 f2 75 40 b8 fa    	vfmadd231ps zmm7,zmm17,zmm2
  a1f684:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm7
  a1f68b:	0e 
  a1f68c:	62 b1 74 40 59 fa    	vmulps zmm7,zmm17,zmm18
  a1f692:	62 f2 6d 48 bc f8    	vfnmadd231ps zmm7,zmm2,zmm0
  a1f698:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm7
  a1f69f:	0d 
  a1f6a0:	62 d1 64 48 58 c1    	vaddps zmm0,zmm3,zmm9
  a1f6a6:	62 f1 04 40 58 c9    	vaddps zmm1,zmm31,zmm1
  a1f6ac:	62 91 4c 40 58 d8    	vaddps zmm3,zmm22,zmm24
  a1f6b2:	62 11 2c 40 58 cc    	vaddps zmm9,zmm26,zmm28
  a1f6b8:	62 b1 34 48 59 fa    	vmulps zmm7,zmm9,zmm18
  a1f6be:	62 f2 65 48 b8 fa    	vfmadd231ps zmm7,zmm3,zmm2
  a1f6c4:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm7
  a1f6cb:	0c 
  a1f6cc:	62 f1 34 48 59 fa    	vmulps zmm7,zmm9,zmm2
  a1f6d2:	62 f2 6d 40 bc fb    	vfnmadd231ps zmm7,zmm18,zmm3
  a1f6d8:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm7
  a1f6df:	0a 
  a1f6e0:	62 f1 74 48 59 da    	vmulps zmm3,zmm1,zmm2
  a1f6e6:	62 b2 7d 48 b8 da    	vfmadd231ps zmm3,zmm0,zmm18
  a1f6ec:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm3
  a1f6f3:	0b 
  a1f6f4:	62 21 74 48 59 e2    	vmulps zmm28,zmm1,zmm18
  a1f6fa:	62 62 7d 48 bc e2    	vfnmadd231ps zmm28,zmm0,zmm2
  a1f700:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x4c0]
  a1f707:	13 
  a1f708:	62 61 7c 48 10 7c 24 	vmovups zmm31,ZMMWORD PTR [rsp+0x440]
  a1f70f:	11 
  a1f710:	62 91 7c 40 5c c7    	vsubps zmm0,zmm16,zmm31
  a1f716:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0x480]
  a1f71d:	12 
  a1f71e:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp+0x400]
  a1f725:	10 
  a1f726:	62 91 3c 40 5c ca    	vsubps zmm1,zmm24,zmm26
  a1f72c:	62 e1 7c 48 58 c9    	vaddps zmm17,zmm0,zmm1
  a1f732:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a1f738:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a1f73f:	09 
  a1f740:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x500]
  a1f747:	14 
  a1f748:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x880]
  a1f74f:	22 
  a1f750:	62 f1 7c 48 5c ca    	vsubps zmm1,zmm0,zmm2
  a1f756:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x100]
  a1f75d:	04 
  a1f75e:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x840]
  a1f765:	21 
  a1f766:	62 d1 3c 48 5c d9    	vsubps zmm3,zmm8,zmm9
  a1f76c:	62 71 74 48 5c fb    	vsubps zmm15,zmm1,zmm3
  a1f772:	62 f1 64 48 58 c9    	vaddps zmm1,zmm3,zmm1
  a1f778:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a1f77f:	06 
  a1f780:	62 d1 2c 48 5c fe    	vsubps zmm7,zmm10,zmm14
  a1f786:	62 51 0c 48 58 f2    	vaddps zmm14,zmm14,zmm10
  a1f78c:	62 a1 4c 48 5c d7    	vsubps zmm18,zmm6,zmm23
  a1f792:	62 31 4c 48 58 d7    	vaddps zmm10,zmm6,zmm23
  a1f798:	62 c1 3c 48 58 f1    	vaddps zmm22,zmm8,zmm9
  a1f79e:	62 01 7c 40 58 ff    	vaddps zmm31,zmm16,zmm31
  a1f7a4:	62 b1 34 40 58 dd    	vaddps zmm3,zmm25,zmm21
  a1f7aa:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm3
  a1f7b1:	04 
  a1f7b2:	62 c1 54 48 58 c3    	vaddps zmm16,zmm5,zmm11
  a1f7b8:	62 11 24 40 58 de    	vaddps zmm11,zmm27,zmm30
  a1f7be:	62 51 14 48 58 cc    	vaddps zmm9,zmm13,zmm12
  a1f7c4:	62 71 14 40 58 64 24 	vaddps zmm12,zmm29,ZMMWORD PTR [rsp-0x40]
  a1f7cb:	ff 
  a1f7cc:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x1c0]
  a1f7d3:	07 
  a1f7d4:	62 71 74 48 58 6c 24 	vaddps zmm13,zmm1,ZMMWORD PTR [rsp+0x80]
  a1f7db:	02 
  a1f7dc:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a1f7e3:	62 e1 74 48 58 6c 24 	vaddps zmm21,zmm1,ZMMWORD PTR [rsp+0xc0]
  a1f7ea:	03 
  a1f7eb:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a1f7f2:	05 
  a1f7f3:	62 61 74 48 58 4c 24 	vaddps zmm25,zmm1,ZMMWORD PTR [rsp+0x200]
  a1f7fa:	08 
  a1f7fb:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a1f802:	fe 
  a1f803:	62 21 74 48 5c db    	vsubps zmm27,zmm1,zmm19
  a1f809:	62 a1 74 48 58 db    	vaddps zmm19,zmm1,zmm19
  a1f80f:	62 21 5c 48 5c ec    	vsubps zmm29,zmm4,zmm20
  a1f815:	62 71 5c 40 58 c4    	vaddps zmm8,zmm20,zmm4
  a1f81b:	62 81 3c 40 58 e2    	vaddps zmm20,zmm24,zmm26
  a1f821:	62 61 7c 48 58 f2    	vaddps zmm30,zmm0,zmm2
  a1f827:	62 d1 1c 48 5c cd    	vsubps zmm1,zmm12,zmm13
  a1f82d:	62 91 54 40 5c c1    	vsubps zmm0,zmm21,zmm25
  a1f833:	62 f1 74 48 58 f0    	vaddps zmm6,zmm1,zmm0
  a1f839:	62 f1 7c 48 5c e9    	vsubps zmm5,zmm0,zmm1
  a1f83f:	62 b1 64 48 5c c8    	vsubps zmm1,zmm3,zmm16
  a1f845:	62 d1 24 48 5c c1    	vsubps zmm0,zmm11,zmm9
  a1f84b:	62 f1 74 48 5c d8    	vsubps zmm3,zmm1,zmm0
  a1f851:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a1f857:	62 f2 7d 48 18 0d 3b 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff655b3b]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a1f85e:	5b 65 ff 
  a1f861:	62 71 04 48 59 f9    	vmulps zmm15,zmm15,zmm1
  a1f867:	62 e1 74 40 59 c9    	vmulps zmm17,zmm17,zmm1
  a1f86d:	62 f1 74 48 59 54 24 	vmulps zmm2,zmm1,ZMMWORD PTR [rsp+0x240]
  a1f874:	09 
  a1f875:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp+0x180]
  a1f87c:	06 
  a1f87d:	62 61 64 48 59 d1    	vmulps zmm26,zmm3,zmm1
  a1f883:	62 f1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm1
  a1f889:	62 f1 54 48 59 e9    	vmulps zmm5,zmm5,zmm1
  a1f88f:	62 f1 5c 48 59 c9    	vmulps zmm1,zmm4,zmm1
  a1f895:	62 91 44 48 5c e5    	vsubps zmm4,zmm7,zmm29
  a1f89b:	62 f1 14 40 58 ff    	vaddps zmm7,zmm29,zmm7
  a1f8a1:	62 61 6c 48 58 e8    	vaddps zmm29,zmm2,zmm0
  a1f8a7:	62 f1 6c 48 5c d8    	vsubps zmm3,zmm2,zmm0
  a1f8ad:	62 b1 24 40 5c d2    	vsubps zmm2,zmm27,zmm18
  a1f8b3:	62 a1 24 40 58 d2    	vaddps zmm18,zmm27,zmm18
  a1f8b9:	62 21 04 48 5c d9    	vsubps zmm27,zmm15,zmm17
  a1f8bf:	62 51 74 40 58 ff    	vaddps zmm15,zmm17,zmm15
  a1f8c5:	62 c1 0c 48 5c ca    	vsubps zmm17,zmm14,zmm10
  a1f8cb:	62 c1 2c 48 58 fe    	vaddps zmm23,zmm10,zmm14
  a1f8d1:	62 11 5c 40 5c f6    	vsubps zmm14,zmm20,zmm30
  a1f8d7:	62 81 5c 40 58 e6    	vaddps zmm20,zmm20,zmm30
  a1f8dd:	62 d1 24 48 58 c1    	vaddps zmm0,zmm11,zmm9
  a1f8e3:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a1f8ea:	fe 
  a1f8eb:	62 41 1c 48 58 c5    	vaddps zmm24,zmm12,zmm13
  a1f8f1:	62 51 64 40 5c e0    	vsubps zmm12,zmm19,zmm8
  a1f8f7:	62 d1 64 40 58 c0    	vaddps zmm0,zmm19,zmm8
  a1f8fd:	62 11 4c 40 5c ef    	vsubps zmm13,zmm22,zmm31
  a1f903:	62 a1 04 40 58 de    	vaddps zmm19,zmm31,zmm22
  a1f909:	62 81 54 40 58 e9    	vaddps zmm21,zmm21,zmm25
  a1f90f:	62 e1 7c 40 58 44 24 	vaddps zmm16,zmm16,ZMMWORD PTR [rsp+0x100]
  a1f916:	04 
  a1f917:	62 81 5c 48 5c f3    	vsubps zmm22,zmm4,zmm27
  a1f91d:	62 f1 24 40 58 e4    	vaddps zmm4,zmm27,zmm4
  a1f923:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm4
  a1f92a:	14 
  a1f92b:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x3c0]
  a1f932:	0f 
  a1f933:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x340]
  a1f93a:	0d 
  a1f93b:	62 51 5c 48 5c c8    	vsubps zmm9,zmm4,zmm8
  a1f941:	62 d1 5c 48 58 e0    	vaddps zmm4,zmm4,zmm8
  a1f947:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm4
  a1f94e:	04 
  a1f94f:	62 01 6c 48 5c dd    	vsubps zmm27,zmm2,zmm29
  a1f955:	62 01 6c 48 58 ed    	vaddps zmm29,zmm2,zmm29
  a1f95b:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x40]
  a1f962:	01 
  a1f963:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x380]
  a1f96a:	0e 
  a1f96b:	62 71 6c 48 58 c4    	vaddps zmm8,zmm2,zmm4
  a1f971:	62 61 6c 48 5c f4    	vsubps zmm30,zmm2,zmm4
  a1f977:	62 41 74 40 5c fd    	vsubps zmm31,zmm17,zmm13
  a1f97d:	62 21 14 48 58 c9    	vaddps zmm25,zmm13,zmm17
  a1f983:	62 71 54 48 58 e9    	vaddps zmm13,zmm5,zmm1
  a1f989:	62 e1 54 48 5c c9    	vsubps zmm17,zmm5,zmm1
  a1f98f:	62 d1 1c 48 5c ee    	vsubps zmm5,zmm12,zmm14
  a1f995:	62 51 1c 48 58 e6    	vaddps zmm12,zmm12,zmm14
  a1f99b:	62 71 2c 40 5c f6    	vsubps zmm14,zmm26,zmm6
  a1f9a1:	62 11 4c 48 58 da    	vaddps zmm11,zmm6,zmm26
  a1f9a7:	62 f1 44 48 5c f3    	vsubps zmm6,zmm7,zmm3
  a1f9ad:	62 71 64 48 58 d7    	vaddps zmm10,zmm3,zmm7
  a1f9b3:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x280]
  a1f9ba:	0a 
  a1f9bb:	62 91 74 48 5c fc    	vsubps zmm7,zmm1,zmm28
  a1f9c1:	62 01 74 48 58 d4    	vaddps zmm26,zmm1,zmm28
  a1f9c7:	62 d1 6c 40 5c df    	vsubps zmm3,zmm18,zmm15
  a1f9cd:	62 c1 6c 40 58 d7    	vaddps zmm18,zmm18,zmm15
  a1f9d3:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x300]
  a1f9da:	0c 
  a1f9db:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x2c0]
  a1f9e2:	0b 
  a1f9e3:	62 71 6c 48 5c f9    	vsubps zmm15,zmm2,zmm1
  a1f9e9:	62 61 74 48 58 e2    	vaddps zmm28,zmm1,zmm2
  a1f9ef:	62 b1 44 40 5c d4    	vsubps zmm2,zmm23,zmm20
  a1f9f5:	62 a1 5c 40 58 e7    	vaddps zmm20,zmm20,zmm23
  a1f9fb:	62 a1 54 40 5c f8    	vsubps zmm23,zmm21,zmm16
  a1fa01:	62 a1 54 40 58 e8    	vaddps zmm21,zmm21,zmm16
  a1fa07:	62 b1 7c 48 5c cb    	vsubps zmm1,zmm0,zmm19
  a1fa0d:	62 a1 7c 48 58 db    	vaddps zmm19,zmm0,zmm19
  a1fa13:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x80]
  a1fa1a:	fe 
  a1fa1b:	62 91 5c 48 5c c0    	vsubps zmm0,zmm4,zmm24
  a1fa21:	62 f1 3c 40 58 e4    	vaddps zmm4,zmm24,zmm4
  a1fa27:	62 c1 4c 40 58 c0    	vaddps zmm16,zmm22,zmm8
  a1fa2d:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm16
  a1fa34:	fe 
  a1fa35:	62 51 4c 40 5c c0    	vsubps zmm8,zmm22,zmm8
  a1fa3b:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm8
  a1fa42:	02 
  a1fa43:	62 c1 24 40 5c c1    	vsubps zmm16,zmm27,zmm9
  a1fa49:	62 41 24 40 58 d9    	vaddps zmm27,zmm27,zmm9
  a1fa4f:	62 51 04 40 5c c6    	vsubps zmm8,zmm31,zmm14
  a1fa55:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm8
  a1fa5c:	01 
  a1fa5d:	62 41 04 40 58 c6    	vaddps zmm24,zmm31,zmm14
  a1fa63:	62 41 54 48 5c fd    	vsubps zmm31,zmm5,zmm13
  a1fa69:	62 51 54 48 58 f5    	vaddps zmm14,zmm5,zmm13
  a1fa6f:	62 d1 4c 48 5c ef    	vsubps zmm5,zmm6,zmm15
  a1fa75:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  a1fa7c:	62 c1 4c 48 58 f7    	vaddps zmm22,zmm6,zmm15
  a1fa82:	62 f1 64 48 5c f7    	vsubps zmm6,zmm3,zmm7
  a1fa88:	62 71 64 48 58 c7    	vaddps zmm8,zmm3,zmm7
  a1fa8e:	62 f1 6c 48 5c d8    	vsubps zmm3,zmm2,zmm0
  a1fa94:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a1fa9b:	ff 
  a1fa9c:	62 f1 6c 48 58 d8    	vaddps zmm3,zmm2,zmm0
  a1faa2:	62 b1 74 48 5c d7    	vsubps zmm2,zmm1,zmm23
  a1faa8:	62 b1 74 48 58 c7    	vaddps zmm0,zmm1,zmm23
  a1faae:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x500]
  a1fab5:	14 
  a1fab6:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x100]
  a1fabd:	04 
  a1fabe:	62 f1 54 48 5c cf    	vsubps zmm1,zmm5,zmm7
  a1fac4:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a1facb:	03 
  a1facc:	62 f1 54 48 58 cf    	vaddps zmm1,zmm5,zmm7
  a1fad2:	62 91 14 40 5c ee    	vsubps zmm5,zmm29,zmm30
  a1fad8:	62 11 14 40 58 ee    	vaddps zmm13,zmm29,zmm30
  a1fade:	62 a1 34 40 5c f9    	vsubps zmm23,zmm25,zmm17
  a1fae4:	62 21 34 40 58 c9    	vaddps zmm25,zmm25,zmm17
  a1faea:	62 d1 1c 48 5c fb    	vsubps zmm7,zmm12,zmm11
  a1faf0:	62 51 1c 48 58 fb    	vaddps zmm15,zmm12,zmm11
  a1faf6:	62 11 2c 48 5c da    	vsubps zmm11,zmm10,zmm26
  a1fafc:	62 11 2c 48 58 d2    	vaddps zmm10,zmm10,zmm26
  a1fb02:	62 11 6c 40 5c cc    	vsubps zmm9,zmm18,zmm28
  a1fb08:	62 81 6c 40 58 cc    	vaddps zmm17,zmm18,zmm28
  a1fb0e:	62 21 5c 40 5c d5    	vsubps zmm26,zmm20,zmm21
  a1fb14:	62 a1 5c 40 58 ed    	vaddps zmm21,zmm20,zmm21
  a1fb1a:	62 71 64 40 5c e4    	vsubps zmm12,zmm19,zmm4
  a1fb20:	62 e1 64 40 58 d4    	vaddps zmm18,zmm19,zmm4
  a1fb26:	62 e1 7c 48 28 25 90 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff670390]        # 8fec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d370>
  a1fb2d:	03 67 ff 
  a1fb30:	62 a2 5d 40 7f d5    	vpermt2ps zmm18,zmm20,zmm21
  a1fb36:	62 c2 5d 40 7f ca    	vpermt2ps zmm17,zmm20,zmm10
  a1fb3c:	62 12 5d 40 7f f9    	vpermt2ps zmm15,zmm20,zmm25
  a1fb42:	62 72 5d 40 7f e9    	vpermt2ps zmm13,zmm20,zmm1
  a1fb48:	62 f2 5d 40 7f c3    	vpermt2ps zmm0,zmm20,zmm3
  a1fb4e:	62 32 5d 40 7f c6    	vpermt2ps zmm8,zmm20,zmm22
  a1fb54:	62 12 5d 40 7f f0    	vpermt2ps zmm14,zmm20,zmm24
  a1fb5a:	62 62 5d 40 7f 5c 24 	vpermt2ps zmm27,zmm20,ZMMWORD PTR [rsp+0x80]
  a1fb61:	02 
  a1fb62:	62 12 5d 40 7f e2    	vpermt2ps zmm12,zmm20,zmm26
  a1fb68:	62 52 5d 40 7f cb    	vpermt2ps zmm9,zmm20,zmm11
  a1fb6e:	62 b2 5d 40 7f ff    	vpermt2ps zmm7,zmm20,zmm23
  a1fb74:	62 f2 5d 40 7f 6c 24 	vpermt2ps zmm5,zmm20,ZMMWORD PTR [rsp+0xc0]
  a1fb7b:	03 
  a1fb7c:	62 f2 5d 40 7f 54 24 	vpermt2ps zmm2,zmm20,ZMMWORD PTR [rsp-0x40]
  a1fb83:	ff 
  a1fb84:	62 f2 5d 40 7f 34 24 	vpermt2ps zmm6,zmm20,ZMMWORD PTR [rsp]
  a1fb8b:	62 62 5d 40 7f 7c 24 	vpermt2ps zmm31,zmm20,ZMMWORD PTR [rsp+0x40]
  a1fb92:	01 
  a1fb93:	62 e2 5d 40 7f 44 24 	vpermt2ps zmm16,zmm20,ZMMWORD PTR [rsp-0x80]
  a1fb9a:	fe 
  a1fb9b:	62 e3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm18,0x2
  a1fba2:	c5 f8 13 4e 20       	vmovlps QWORD PTR [rsi+0x20],xmm1
  a1fba7:	62 e1 7c 28 11 16    	vmovups YMMWORD PTR [rsi],ymm18
  a1fbad:	62 e3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm17,0x2
  a1fbb4:	c5 f8 13 4e 48       	vmovlps QWORD PTR [rsi+0x48],xmm1
  a1fbb9:	62 e1 7c 28 11 8e 28 	vmovups YMMWORD PTR [rsi+0x28],ymm17
  a1fbc0:	00 00 00 
  a1fbc3:	62 73 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm15,0x2
  a1fbca:	c5 f8 13 4e 70       	vmovlps QWORD PTR [rsi+0x70],xmm1
  a1fbcf:	c5 7c 11 7e 50       	vmovups YMMWORD PTR [rsi+0x50],ymm15
  a1fbd4:	62 73 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm13,0x2
  a1fbdb:	c5 f8 13 8e 98 00 00 	vmovlps QWORD PTR [rsi+0x98],xmm1
  a1fbe2:	00 
  a1fbe3:	c5 7c 11 6e 78       	vmovups YMMWORD PTR [rsi+0x78],ymm13
  a1fbe8:	62 f3 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm0,0x2
  a1fbef:	c5 f8 13 8e c0 00 00 	vmovlps QWORD PTR [rsi+0xc0],xmm1
  a1fbf6:	00 
  a1fbf7:	c5 fc 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm0
  a1fbfe:	00 
  a1fbff:	62 73 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm8,0x2
  a1fc06:	c5 f8 13 86 e8 00 00 	vmovlps QWORD PTR [rsi+0xe8],xmm0
  a1fc0d:	00 
  a1fc0e:	c5 7c 11 86 c8 00 00 	vmovups YMMWORD PTR [rsi+0xc8],ymm8
  a1fc15:	00 
  a1fc16:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a1fc1d:	c5 f8 13 86 10 01 00 	vmovlps QWORD PTR [rsi+0x110],xmm0
  a1fc24:	00 
  a1fc25:	c5 7c 11 b6 f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm14
  a1fc2c:	00 
  a1fc2d:	62 63 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm27,0x2
  a1fc34:	c5 f8 13 86 38 01 00 	vmovlps QWORD PTR [rsi+0x138],xmm0
  a1fc3b:	00 
  a1fc3c:	62 61 7c 28 11 9e 18 	vmovups YMMWORD PTR [rsi+0x118],ymm27
  a1fc43:	01 00 00 
  a1fc46:	62 73 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm12,0x2
  a1fc4d:	c5 f8 13 86 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm0
  a1fc54:	00 
  a1fc55:	c5 7c 11 a6 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm12
  a1fc5c:	00 
  a1fc5d:	62 73 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm9,0x2
  a1fc64:	c5 f8 13 86 88 01 00 	vmovlps QWORD PTR [rsi+0x188],xmm0
  a1fc6b:	00 
  a1fc6c:	c5 7c 11 8e 68 01 00 	vmovups YMMWORD PTR [rsi+0x168],ymm9
  a1fc73:	00 
  a1fc74:	62 f3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm7,0x2
  a1fc7b:	c5 f8 13 86 b0 01 00 	vmovlps QWORD PTR [rsi+0x1b0],xmm0
  a1fc82:	00 
  a1fc83:	c5 fc 11 be 90 01 00 	vmovups YMMWORD PTR [rsi+0x190],ymm7
  a1fc8a:	00 
  a1fc8b:	62 f3 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm5,0x2
  a1fc92:	c5 f8 13 86 d8 01 00 	vmovlps QWORD PTR [rsi+0x1d8],xmm0
  a1fc99:	00 
  a1fc9a:	c5 fc 11 ae b8 01 00 	vmovups YMMWORD PTR [rsi+0x1b8],ymm5
  a1fca1:	00 
  a1fca2:	62 f3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm2,0x2
  a1fca9:	c5 f8 13 86 00 02 00 	vmovlps QWORD PTR [rsi+0x200],xmm0
  a1fcb0:	00 
  a1fcb1:	c5 fc 11 96 e0 01 00 	vmovups YMMWORD PTR [rsi+0x1e0],ymm2
  a1fcb8:	00 
  a1fcb9:	62 f3 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm6,0x2
  a1fcc0:	c5 f8 13 86 28 02 00 	vmovlps QWORD PTR [rsi+0x228],xmm0
  a1fcc7:	00 
  a1fcc8:	c5 fc 11 b6 08 02 00 	vmovups YMMWORD PTR [rsi+0x208],ymm6
  a1fccf:	00 
  a1fcd0:	62 63 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm31,0x2
  a1fcd7:	c5 f8 13 86 50 02 00 	vmovlps QWORD PTR [rsi+0x250],xmm0
  a1fcde:	00 
  a1fcdf:	62 61 7c 28 11 be 30 	vmovups YMMWORD PTR [rsi+0x230],ymm31
  a1fce6:	02 00 00 
  a1fce9:	62 e3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm16,0x2
  a1fcf0:	c5 f8 13 86 78 02 00 	vmovlps QWORD PTR [rsi+0x278],xmm0
  a1fcf7:	00 
  a1fcf8:	62 e1 7c 28 11 86 58 	vmovups YMMWORD PTR [rsi+0x258],ymm16
  a1fcff:	02 00 00 
  a1fd02:	48 81 c4 c8 08 00 00 	add    rsp,0x8c8
  a1fd09:	c5 f8 77             	vzeroupper
  a1fd0c:	c3                   	ret
