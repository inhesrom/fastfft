
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a16bc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a16bc0:	62 f1 7c 48 28 1d f6 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff678af6]        # 8f6c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cb70>
  a16bc7:	8a 67 ff 
  a16bca:	62 f1 7c 48 10 27    	vmovups zmm4,ZMMWORD PTR [rdi]
  a16bd0:	62 f1 7c 48 10 6f 01 	vmovups zmm5,ZMMWORD PTR [rdi+0x40]
  a16bd7:	62 f1 7c 48 10 77 02 	vmovups zmm6,ZMMWORD PTR [rdi+0x80]
  a16bde:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a16be2:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a16be8:	62 f2 65 48 7f fa    	vpermt2ps zmm7,zmm3,zmm2
  a16bee:	62 f1 7c 48 28 05 08 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff678b08]        # 8f700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cbb0>
  a16bf5:	8b 67 ff 
  a16bf8:	62 f2 7d 48 7f e2    	vpermt2ps zmm4,zmm0,zmm2
  a16bfe:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a16c04:	62 72 65 48 7f ca    	vpermt2ps zmm9,zmm3,zmm2
  a16c0a:	62 f2 7d 48 7f ea    	vpermt2ps zmm5,zmm0,zmm2
  a16c10:	62 f2 4d 48 77 da    	vpermi2ps zmm3,zmm6,zmm2
  a16c16:	62 f2 7d 48 7f f2    	vpermt2ps zmm6,zmm0,zmm2
  a16c1c:	62 71 34 48 58 c3    	vaddps zmm8,zmm9,zmm3
  a16c22:	62 d1 44 48 58 c0    	vaddps zmm0,zmm7,zmm8
  a16c28:	62 71 54 48 58 d6    	vaddps zmm10,zmm5,zmm6
  a16c2e:	62 d1 5c 48 58 ca    	vaddps zmm1,zmm4,zmm10
  a16c34:	62 72 7d 48 18 1d 22 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff65e822]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a16c3b:	e8 65 ff 
  a16c3e:	62 d2 25 48 bc f8    	vfnmadd231ps zmm7,zmm11,zmm8
  a16c44:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a16c4a:	62 f2 7d 48 18 35 80 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff65e680]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a16c51:	e6 65 ff 
  a16c54:	62 f1 54 48 59 ee    	vmulps zmm5,zmm5,zmm6
  a16c5a:	62 71 44 48 58 c5    	vaddps zmm8,zmm7,zmm5
  a16c60:	62 d2 2d 48 bc e3    	vfnmadd231ps zmm4,zmm10,zmm11
  a16c66:	62 f1 34 48 5c db    	vsubps zmm3,zmm9,zmm3
  a16c6c:	62 71 64 48 59 ce    	vmulps zmm9,zmm3,zmm6
  a16c72:	62 d1 5c 48 5c f1    	vsubps zmm6,zmm4,zmm9
  a16c78:	62 f1 44 48 5c dd    	vsubps zmm3,zmm7,zmm5
  a16c7e:	62 f1 34 48 58 fc    	vaddps zmm7,zmm9,zmm4
  a16c84:	62 f1 7c 48 28 25 f2 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6b02f2]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a16c8b:	02 6b ff 
  a16c8e:	62 f2 5d 48 7f c2    	vpermt2ps zmm0,zmm4,zmm2
  a16c94:	62 72 5d 48 7f c2    	vpermt2ps zmm8,zmm4,zmm2
  a16c9a:	62 f2 5d 48 7f da    	vpermt2ps zmm3,zmm4,zmm2
  a16ca0:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a16ca4:	62 f2 5d 48 7f ed    	vpermt2ps zmm5,zmm4,zmm5
  a16caa:	62 71 7c 48 28 15 4c 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6b024c]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a16cb1:	02 6b ff 
  a16cb4:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a16cba:	62 72 2d 48 7f cd    	vpermt2ps zmm9,zmm10,zmm5
  a16cc0:	62 71 7c 48 28 25 76 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6b0276]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a16cc7:	02 6b ff 
  a16cca:	62 f2 1d 48 7f c5    	vpermt2ps zmm0,zmm12,zmm5
  a16cd0:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a16cd6:	62 72 2d 48 7f ed    	vpermt2ps zmm13,zmm10,zmm5
  a16cdc:	62 72 1d 48 7f c5    	vpermt2ps zmm8,zmm12,zmm5
  a16ce2:	62 71 7c 48 28 f3    	vmovaps zmm14,zmm3
  a16ce8:	62 72 2d 48 7f f5    	vpermt2ps zmm14,zmm10,zmm5
  a16cee:	62 f2 1d 48 7f dd    	vpermt2ps zmm3,zmm12,zmm5
  a16cf4:	62 71 7c 48 28 dd    	vmovaps zmm11,zmm5
  a16cfa:	62 72 2d 48 7f dd    	vpermt2ps zmm11,zmm10,zmm5
  a16d00:	62 f2 5d 48 7f ca    	vpermt2ps zmm1,zmm4,zmm2
  a16d06:	62 f2 5d 48 7f f2    	vpermt2ps zmm6,zmm4,zmm2
  a16d0c:	62 f2 5d 48 7f fa    	vpermt2ps zmm7,zmm4,zmm2
  a16d12:	62 e1 7c 48 28 c1    	vmovaps zmm16,zmm1
  a16d18:	62 e2 2d 48 7f c5    	vpermt2ps zmm16,zmm10,zmm5
  a16d1e:	62 f2 1d 48 7f cd    	vpermt2ps zmm1,zmm12,zmm5
  a16d24:	62 e1 7c 48 28 ce    	vmovaps zmm17,zmm6
  a16d2a:	62 e2 2d 48 7f cd    	vpermt2ps zmm17,zmm10,zmm5
  a16d30:	62 f2 1d 48 7f f5    	vpermt2ps zmm6,zmm12,zmm5
  a16d36:	62 72 45 48 77 d5    	vpermi2ps zmm10,zmm7,zmm5
  a16d3c:	62 f2 1d 48 7f fd    	vpermt2ps zmm7,zmm12,zmm5
  a16d42:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a16d48:	62 e2 1d 48 7f d5    	vpermt2ps zmm18,zmm12,zmm5
  a16d4e:	62 d1 b5 48 14 ee    	vunpcklpd zmm5,zmm9,zmm14
  a16d54:	62 d1 b5 48 15 d6    	vunpckhpd zmm2,zmm9,zmm14
  a16d5a:	62 51 95 48 14 e3    	vunpcklpd zmm12,zmm13,zmm11
  a16d60:	62 51 95 48 15 f3    	vunpckhpd zmm14,zmm13,zmm11
  a16d66:	62 f1 fd 48 14 e3    	vunpcklpd zmm4,zmm0,zmm3
  a16d6c:	62 f1 fd 48 15 db    	vunpckhpd zmm3,zmm0,zmm3
  a16d72:	62 a1 bd 48 14 da    	vunpcklpd zmm19,zmm8,zmm18
  a16d78:	62 31 bd 48 15 c2    	vunpckhpd zmm8,zmm8,zmm18
  a16d7e:	62 71 7c 48 28 0d 78 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6b0078]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a16d85:	00 6b ff 
  a16d88:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a16d8e:	62 d2 35 48 7f c4    	vpermt2ps zmm0,zmm9,zmm12
  a16d94:	62 e1 7c 48 28 25 a2 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6b00a2]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a16d9b:	00 6b ff 
  a16d9e:	62 d2 5d 40 7f ec    	vpermt2ps zmm5,zmm20,zmm12
  a16da4:	62 71 7c 48 28 ea    	vmovaps zmm13,zmm2
  a16daa:	62 52 35 48 7f ee    	vpermt2ps zmm13,zmm9,zmm14
  a16db0:	62 d2 5d 40 7f d6    	vpermt2ps zmm2,zmm20,zmm14
  a16db6:	62 71 7c 48 28 fc    	vmovaps zmm15,zmm4
  a16dbc:	62 32 35 48 7f fb    	vpermt2ps zmm15,zmm9,zmm19
  a16dc2:	62 b2 5d 40 7f e3    	vpermt2ps zmm4,zmm20,zmm19
  a16dc8:	62 71 7c 48 28 f3    	vmovaps zmm14,zmm3
  a16dce:	62 52 35 48 7f f0    	vpermt2ps zmm14,zmm9,zmm8
  a16dd4:	62 d2 5d 40 7f d8    	vpermt2ps zmm3,zmm20,zmm8
  a16dda:	62 51 fd 40 14 e2    	vunpcklpd zmm12,zmm16,zmm10
  a16de0:	62 51 fd 40 15 c2    	vunpckhpd zmm8,zmm16,zmm10
  a16de6:	62 51 f5 40 14 d3    	vunpcklpd zmm10,zmm17,zmm11
  a16dec:	62 c1 f5 40 15 c3    	vunpckhpd zmm16,zmm17,zmm11
  a16df2:	62 71 f5 48 14 df    	vunpcklpd zmm11,zmm1,zmm7
  a16df8:	62 f1 f5 48 15 ff    	vunpckhpd zmm7,zmm1,zmm7
  a16dfe:	62 b1 cd 48 14 ca    	vunpcklpd zmm1,zmm6,zmm18
  a16e04:	62 a1 cd 48 15 ca    	vunpckhpd zmm17,zmm6,zmm18
  a16e0a:	62 d1 7c 48 28 f4    	vmovaps zmm6,zmm12
  a16e10:	62 d2 35 48 7f f2    	vpermt2ps zmm6,zmm9,zmm10
  a16e16:	62 52 5d 40 7f e2    	vpermt2ps zmm12,zmm20,zmm10
  a16e1c:	62 51 7c 48 28 d0    	vmovaps zmm10,zmm8
  a16e22:	62 32 35 48 7f d0    	vpermt2ps zmm10,zmm9,zmm16
  a16e28:	62 32 5d 40 7f c0    	vpermt2ps zmm8,zmm20,zmm16
  a16e2e:	62 c1 7c 48 28 db    	vmovaps zmm19,zmm11
  a16e34:	62 e2 35 48 7f d9    	vpermt2ps zmm19,zmm9,zmm1
  a16e3a:	62 72 5d 40 7f d9    	vpermt2ps zmm11,zmm20,zmm1
  a16e40:	62 32 45 48 77 c9    	vpermi2ps zmm9,zmm7,zmm17
  a16e46:	62 b2 5d 40 7f f9    	vpermt2ps zmm7,zmm20,zmm17
  a16e4c:	62 e1 7c 48 10 62 02 	vmovups zmm20,ZMMWORD PTR [rdx+0x80]
  a16e53:	62 e1 7c 48 10 52 03 	vmovups zmm18,ZMMWORD PTR [rdx+0xc0]
  a16e5a:	62 e1 7c 48 10 6a 04 	vmovups zmm21,ZMMWORD PTR [rdx+0x100]
  a16e61:	62 e1 7c 48 10 72 05 	vmovups zmm22,ZMMWORD PTR [rdx+0x140]
  a16e68:	62 e1 7c 48 10 4a 06 	vmovups zmm17,ZMMWORD PTR [rdx+0x180]
  a16e6f:	62 e1 7c 48 10 42 07 	vmovups zmm16,ZMMWORD PTR [rdx+0x1c0]
  a16e76:	62 e1 7c 48 10 7a 08 	vmovups zmm23,ZMMWORD PTR [rdx+0x200]
  a16e7d:	62 61 7c 48 10 42 09 	vmovups zmm24,ZMMWORD PTR [rdx+0x240]
  a16e84:	62 61 7c 48 10 4a 0a 	vmovups zmm25,ZMMWORD PTR [rdx+0x280]
  a16e8b:	62 61 7c 48 10 52 0b 	vmovups zmm26,ZMMWORD PTR [rdx+0x2c0]
  a16e92:	62 61 7c 48 10 5a 0c 	vmovups zmm27,ZMMWORD PTR [rdx+0x300]
  a16e99:	62 b1 04 48 59 cf    	vmulps zmm1,zmm15,zmm23
  a16e9f:	62 92 65 40 bc c8    	vfnmadd231ps zmm1,zmm19,zmm24
  a16ea5:	62 a1 64 40 59 df    	vmulps zmm19,zmm19,zmm23
  a16eab:	62 e1 7c 48 10 7a 0d 	vmovups zmm23,ZMMWORD PTR [rdx+0x340]
  a16eb2:	62 c2 3d 40 b8 df    	vfmadd231ps zmm19,zmm24,zmm15
  a16eb8:	62 71 7c 48 10 7a 0e 	vmovups zmm15,ZMMWORD PTR [rdx+0x380]
  a16ebf:	62 21 14 48 59 c5    	vmulps zmm24,zmm13,zmm21
  a16ec5:	62 22 2d 48 bc c6    	vfnmadd231ps zmm24,zmm10,zmm22
  a16ecb:	62 31 2c 48 59 d5    	vmulps zmm10,zmm10,zmm21
  a16ed1:	62 e1 7c 48 10 6a 0f 	vmovups zmm21,ZMMWORD PTR [rdx+0x3c0]
  a16ed8:	62 52 4d 40 b8 d5    	vfmadd231ps zmm10,zmm22,zmm13
  a16ede:	62 81 0c 48 59 f3    	vmulps zmm22,zmm14,zmm27
  a16ee4:	62 a2 35 48 bc f7    	vfnmadd231ps zmm22,zmm9,zmm23
  a16eea:	62 21 54 48 59 e4    	vmulps zmm28,zmm5,zmm20
  a16ef0:	62 22 1d 48 bc e2    	vfnmadd231ps zmm28,zmm12,zmm18
  a16ef6:	62 11 34 48 59 eb    	vmulps zmm13,zmm9,zmm27
  a16efc:	62 01 5c 48 59 d9    	vmulps zmm27,zmm4,zmm25
  a16f02:	62 02 25 48 bc da    	vfnmadd231ps zmm27,zmm11,zmm26
  a16f08:	62 52 45 40 b8 ee    	vfmadd231ps zmm13,zmm23,zmm14
  a16f0e:	62 11 1c 40 58 cb    	vaddps zmm9,zmm28,zmm27
  a16f14:	62 a1 6c 48 59 f9    	vmulps zmm23,zmm2,zmm17
  a16f1a:	62 a2 3d 48 bc f8    	vfnmadd231ps zmm23,zmm8,zmm16
  a16f20:	62 a1 1c 48 59 e4    	vmulps zmm20,zmm12,zmm20
  a16f26:	62 41 64 48 59 ef    	vmulps zmm29,zmm3,zmm15
  a16f2c:	62 22 45 48 bc ed    	vfnmadd231ps zmm29,zmm7,zmm21
  a16f32:	62 e2 6d 40 b8 e5    	vfmadd231ps zmm20,zmm18,zmm5
  a16f38:	62 11 44 40 58 e5    	vaddps zmm12,zmm23,zmm29
  a16f3e:	62 71 64 40 58 f6    	vaddps zmm14,zmm19,zmm6
  a16f44:	62 81 24 48 59 d1    	vmulps zmm18,zmm11,zmm25
  a16f4a:	62 51 2c 48 58 dd    	vaddps zmm11,zmm10,zmm13
  a16f50:	62 e2 2d 40 b8 d4    	vfmadd231ps zmm18,zmm26,zmm4
  a16f56:	62 b1 3c 48 59 e1    	vmulps zmm4,zmm8,zmm17
  a16f5c:	62 f2 7d 40 b8 e2    	vfmadd231ps zmm4,zmm16,zmm2
  a16f62:	62 d1 44 48 59 d7    	vmulps zmm2,zmm7,zmm15
  a16f68:	62 f2 55 40 b8 d3    	vfmadd231ps zmm2,zmm21,zmm3
  a16f6e:	62 81 1c 40 5c eb    	vsubps zmm21,zmm28,zmm27
  a16f74:	62 21 5c 40 5c ca    	vsubps zmm25,zmm20,zmm18
  a16f7a:	62 91 54 40 58 d9    	vaddps zmm3,zmm21,zmm25
  a16f80:	62 62 7d 48 18 15 12 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff65e412]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a16f87:	e4 65 ff 
  a16f8a:	62 91 64 48 59 ea    	vmulps zmm5,zmm3,zmm26
  a16f90:	62 61 5c 48 5c da    	vsubps zmm27,zmm4,zmm2
  a16f96:	62 81 44 40 5c fd    	vsubps zmm23,zmm23,zmm29
  a16f9c:	62 b1 24 40 5c df    	vsubps zmm3,zmm27,zmm23
  a16fa2:	62 11 64 48 59 c2    	vmulps zmm8,zmm3,zmm26
  a16fa8:	62 31 4c 48 5c fb    	vsubps zmm15,zmm6,zmm19
  a16fae:	62 81 4c 40 5c c0    	vsubps zmm16,zmm22,zmm24
  a16fb4:	62 e1 5c 28 58 da    	vaddps ymm19,ymm4,ymm2
  a16fba:	62 a1 5c 20 58 e2    	vaddps ymm20,ymm20,ymm18
  a16fc0:	62 b1 5c 20 58 e3    	vaddps ymm4,ymm20,ymm19
  a16fc6:	c4 c1 24 58 f6       	vaddps ymm6,ymm11,ymm14
  a16fcb:	62 e1 4c 28 58 d4    	vaddps ymm18,ymm6,ymm4
  a16fd1:	c4 c1 30 58 fc       	vaddps xmm7,xmm9,xmm12
  a16fd6:	62 a1 3c 00 58 f6    	vaddps xmm22,xmm24,xmm22
  a16fdc:	62 61 7c 08 58 c1    	vaddps xmm24,xmm0,xmm1
  a16fe2:	62 a1 3c 00 58 ce    	vaddps xmm17,xmm24,xmm22
  a16fe8:	62 f1 74 00 58 d7    	vaddps xmm2,xmm17,xmm7
  a16fee:	c5 fc 28 1d ca 12 66 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff6612ca]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a16ff5:	ff 
  a16ff6:	62 b2 65 28 7f d2    	vpermt2ps ymm2,ymm3,ymm18
  a16ffc:	62 81 44 20 58 d3    	vaddps ymm18,ymm23,ymm27
  a17002:	62 81 6c 20 59 fa    	vmulps ymm23,ymm18,ymm26
  a17008:	62 a1 34 20 5c d5    	vsubps ymm18,ymm25,ymm21
  a1700e:	62 81 6c 20 59 ea    	vmulps ymm21,ymm18,ymm26
  a17014:	62 a1 54 20 5c d7    	vsubps ymm18,ymm21,ymm23
  a1701a:	62 41 7c 20 58 cf    	vaddps ymm25,ymm16,ymm15
  a17020:	62 21 34 20 58 d2    	vaddps ymm26,ymm25,ymm18
  a17026:	62 41 54 08 58 d8    	vaddps xmm27,xmm5,xmm8
  a1702c:	c4 41 28 5c d5       	vsubps xmm10,xmm10,xmm13
  a17031:	c5 78 5c e9          	vsubps xmm13,xmm0,xmm1
  a17035:	62 41 14 08 58 e2    	vaddps xmm28,xmm13,xmm10
  a1703b:	62 91 1c 00 58 c3    	vaddps xmm0,xmm28,xmm27
  a17041:	62 92 65 28 7f c2    	vpermt2ps ymm0,ymm3,ymm26
  a17047:	c4 41 1c 5c c9       	vsubps ymm9,ymm12,ymm9
  a1704c:	c4 41 0c 5c db       	vsubps ymm11,ymm14,ymm11
  a17051:	62 31 5c 00 5c e3    	vsubps xmm12,xmm20,xmm19
  a17057:	c4 41 24 58 f1       	vaddps ymm14,ymm11,ymm9
  a1705c:	62 a1 3c 00 5c de    	vsubps xmm19,xmm24,xmm22
  a17062:	62 d1 64 00 58 cc    	vaddps xmm1,xmm19,xmm12
  a17068:	62 d2 65 28 7f ce    	vpermt2ps ymm1,ymm3,ymm14
  a1706e:	c5 bc 5c ed          	vsubps ymm5,ymm8,ymm5
  a17072:	62 31 04 28 5c c0    	vsubps ymm8,ymm15,ymm16
  a17078:	62 31 54 00 58 f7    	vaddps xmm14,xmm21,xmm23
  a1707e:	c5 3c 58 fd          	vaddps ymm15,ymm8,ymm5
  a17082:	c4 41 10 5c d2       	vsubps xmm10,xmm13,xmm10
  a17087:	c4 41 28 58 ee       	vaddps xmm13,xmm10,xmm14
  a1708c:	62 52 65 28 7f ef    	vpermt2ps ymm13,ymm3,ymm15
  a17092:	c5 cc 5c e4          	vsubps ymm4,ymm6,ymm4
  a17096:	62 f1 74 00 5c f7    	vsubps xmm6,xmm17,xmm7
  a1709c:	62 f2 65 28 7f f4    	vpermt2ps ymm6,ymm3,ymm4
  a170a2:	62 b1 34 20 5c e2    	vsubps ymm4,ymm25,ymm18
  a170a8:	62 91 1c 00 5c fb    	vsubps xmm7,xmm28,xmm27
  a170ae:	62 f2 65 28 7f fc    	vpermt2ps ymm7,ymm3,ymm4
  a170b4:	c4 c1 24 5c e1       	vsubps ymm4,ymm11,ymm9
  a170b9:	62 51 64 00 5c cc    	vsubps xmm9,xmm19,xmm12
  a170bf:	62 72 65 28 7f cc    	vpermt2ps ymm9,ymm3,ymm4
  a170c5:	c5 bc 5c e5          	vsubps ymm4,ymm8,ymm5
  a170c9:	c4 c1 28 5c ee       	vsubps xmm5,xmm10,xmm14
  a170ce:	62 f2 65 28 7f ec    	vpermt2ps ymm5,ymm3,ymm4
  a170d4:	c4 e3 7d 19 d3 01    	vextractf128 xmm3,ymm2,0x1
  a170da:	c5 f8 13 5e 10       	vmovlps QWORD PTR [rsi+0x10],xmm3
  a170df:	c5 f8 11 16          	vmovups XMMWORD PTR [rsi],xmm2
  a170e3:	c4 e3 7d 19 c2 01    	vextractf128 xmm2,ymm0,0x1
  a170e9:	c5 f8 13 56 28       	vmovlps QWORD PTR [rsi+0x28],xmm2
  a170ee:	c5 f8 11 46 18       	vmovups XMMWORD PTR [rsi+0x18],xmm0
  a170f3:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  a170f9:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  a170fe:	c5 f8 11 4e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm1
  a17103:	c4 63 7d 19 e8 01    	vextractf128 xmm0,ymm13,0x1
  a17109:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  a1710e:	c5 78 11 6e 48       	vmovups XMMWORD PTR [rsi+0x48],xmm13
  a17113:	c4 e3 7d 19 f0 01    	vextractf128 xmm0,ymm6,0x1
  a17119:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  a1711e:	c5 f8 11 76 60       	vmovups XMMWORD PTR [rsi+0x60],xmm6
  a17123:	c4 e3 7d 19 f8 01    	vextractf128 xmm0,ymm7,0x1
  a17129:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  a17130:	00 
  a17131:	c5 f8 11 7e 78       	vmovups XMMWORD PTR [rsi+0x78],xmm7
  a17136:	c4 63 7d 19 c8 01    	vextractf128 xmm0,ymm9,0x1
  a1713c:	c5 f8 13 86 a0 00 00 	vmovlps QWORD PTR [rsi+0xa0],xmm0
  a17143:	00 
  a17144:	c5 78 11 8e 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm9
  a1714b:	00 
  a1714c:	c4 e3 7d 19 e8 01    	vextractf128 xmm0,ymm5,0x1
  a17152:	c5 f8 13 86 b8 00 00 	vmovlps QWORD PTR [rsi+0xb8],xmm0
  a17159:	00 
  a1715a:	c5 f8 11 ae a8 00 00 	vmovups XMMWORD PTR [rsi+0xa8],xmm5
  a17161:	00 
  a17162:	c5 f8 77             	vzeroupper
  a17165:	c3                   	ret
