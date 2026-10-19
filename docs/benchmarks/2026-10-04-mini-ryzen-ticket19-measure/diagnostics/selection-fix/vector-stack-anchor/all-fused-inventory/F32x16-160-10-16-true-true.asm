
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a10b40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a10b40:	48 81 ec 88 09 00 00 	sub    rsp,0x988
  a10b47:	48 c1 e2 08          	shl    rdx,0x8
  a10b4b:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a10b4f:	31 d2                	xor    edx,edx
  a10b51:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a10b58:	0f 1f 84 00 00 00 00 
  a10b5f:	00 
  a10b60:	62 71 7c 48 10 2c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1]
  a10b67:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x40]
  a10b6e:	01 
  a10b6f:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a10b76:	01 
  a10b77:	62 f1 7c 48 10 6c 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x80]
  a10b7e:	02 
  a10b7f:	62 61 7c 48 10 5c 17 	vmovups zmm27,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a10b86:	03 
  a10b87:	62 c1 7c 48 28 e5    	vmovaps zmm20,zmm13
  a10b8d:	62 f1 7c 48 28 05 a9 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff67e4a9]        # 8f040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c4f0>
  a10b94:	e4 67 ff 
  a10b97:	62 e2 7d 48 7f e2    	vpermt2ps zmm20,zmm0,zmm2
  a10b9d:	62 71 7c 48 10 54 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x100]
  a10ba4:	04 
  a10ba5:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x140]
  a10bac:	05 
  a10bad:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  a10bb3:	62 b2 7d 48 7f ca    	vpermt2ps zmm1,zmm0,zmm18
  a10bb9:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a10bc0:	05 
  a10bc1:	62 71 7c 48 10 5c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x400]
  a10bc8:	10 
  a10bc9:	62 61 7c 48 10 44 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x440]
  a10bd0:	11 
  a10bd1:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a10bd7:	62 92 7d 48 7f d0    	vpermt2ps zmm2,zmm0,zmm24
  a10bdd:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm2
  a10be4:	06 
  a10be5:	62 e1 74 48 58 fa    	vaddps zmm23,zmm1,zmm2
  a10beb:	62 b1 5c 40 58 cf    	vaddps zmm1,zmm20,zmm23
  a10bf1:	62 f1 7c 48 10 74 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x200]
  a10bf8:	08 
  a10bf9:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x240]
  a10c00:	09 
  a10c01:	62 f1 7c 48 28 d6    	vmovaps zmm2,zmm6
  a10c07:	62 d2 7d 48 7f d6    	vpermt2ps zmm2,zmm0,zmm14
  a10c0d:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  a10c14:	04 
  a10c15:	62 71 7c 48 10 44 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x300]
  a10c1c:	0c 
  a10c1d:	62 61 7c 48 10 64 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x340]
  a10c24:	0d 
  a10c25:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a10c2b:	62 92 7d 48 7f fc    	vpermt2ps zmm7,zmm0,zmm28
  a10c31:	62 61 6c 48 58 cf    	vaddps zmm25,zmm2,zmm7
  a10c37:	62 11 74 48 58 c9    	vaddps zmm9,zmm1,zmm25
  a10c3d:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x280]
  a10c44:	0a 
  a10c45:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  a10c4c:	0b 
  a10c4d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a10c54:	09 
  a10c55:	62 c1 7c 48 28 f4    	vmovaps zmm22,zmm12
  a10c5b:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a10c61:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x380]
  a10c68:	0e 
  a10c69:	62 61 7c 48 10 6c 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x3c0]
  a10c70:	0f 
  a10c71:	62 b1 7c 48 28 c8    	vmovaps zmm1,zmm16
  a10c77:	62 92 7d 48 7f cd    	vpermt2ps zmm1,zmm0,zmm29
  a10c7d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm1
  a10c84:	0a 
  a10c85:	62 e1 7c 48 10 4c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x180]
  a10c8c:	06 
  a10c8d:	62 61 7c 48 10 74 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a10c94:	07 
  a10c95:	62 b1 7c 48 28 d1    	vmovaps zmm2,zmm17
  a10c9b:	62 92 7d 48 7f d6    	vpermt2ps zmm2,zmm0,zmm30
  a10ca1:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm2
  a10ca8:	0b 
  a10ca9:	62 61 74 48 58 d2    	vaddps zmm26,zmm1,zmm2
  a10caf:	62 01 4c 40 58 fa    	vaddps zmm31,zmm22,zmm26
  a10cb5:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x480]
  a10cbc:	12 
  a10cbd:	62 f1 7c 48 28 25 b9 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff67e3b9]        # 8f080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c530>
  a10cc4:	e3 67 ff 
  a10cc7:	62 d2 5d 48 7f f6    	vpermt2ps zmm6,zmm4,zmm14
  a10ccd:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x4c0]
  a10cd4:	13 
  a10cd5:	62 12 5d 48 7f c4    	vpermt2ps zmm8,zmm4,zmm28
  a10cdb:	62 21 7c 48 28 e3    	vmovaps zmm28,zmm19
  a10ce1:	62 42 7d 48 7f e6    	vpermt2ps zmm28,zmm0,zmm14
  a10ce7:	62 32 5d 48 7f d2    	vpermt2ps zmm10,zmm4,zmm18
  a10ced:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a10cf3:	62 82 7d 48 7f d3    	vpermt2ps zmm18,zmm0,zmm27
  a10cf9:	62 12 5d 48 7f d8    	vpermt2ps zmm11,zmm4,zmm24
  a10cff:	62 21 1c 40 58 c2    	vaddps zmm24,zmm28,zmm18
  a10d05:	62 01 04 40 58 f8    	vaddps zmm31,zmm31,zmm24
  a10d0b:	62 c2 5d 48 7f de    	vpermt2ps zmm19,zmm4,zmm14
  a10d11:	62 51 4c 48 5c f0    	vsubps zmm14,zmm6,zmm8
  a10d17:	62 92 5d 48 7f eb    	vpermt2ps zmm5,zmm4,zmm27
  a10d1d:	62 41 2c 48 5c db    	vsubps zmm27,zmm10,zmm11
  a10d23:	62 82 5d 48 7f c5    	vpermt2ps zmm16,zmm4,zmm29
  a10d29:	62 f2 7d 48 18 15 25 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff664a25]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a10d30:	4a 66 ff 
  a10d33:	62 61 24 40 59 ea    	vmulps zmm29,zmm27,zmm2
  a10d39:	62 f2 7d 48 18 0d 5d 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff66465d]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a10d40:	46 66 ff 
  a10d43:	62 62 0d 48 bc e9    	vfnmadd231ps zmm29,zmm14,zmm1
  a10d49:	62 82 5d 48 7f ce    	vpermt2ps zmm17,zmm4,zmm30
  a10d4f:	62 e2 7d 48 18 2d eb 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff6648eb]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a10d56:	48 66 ff 
  a10d59:	62 21 7c 48 28 f5    	vmovaps zmm30,zmm21
  a10d5f:	62 22 45 40 ac f4    	vfnmadd213ps zmm30,zmm23,zmm20
  a10d65:	62 72 7d 48 18 3d 79 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff664979]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a10d6c:	49 66 ff 
  a10d6f:	62 42 35 40 b8 f7    	vfmadd231ps zmm30,zmm25,zmm15
  a10d75:	62 71 0c 48 59 f2    	vmulps zmm14,zmm14,zmm2
  a10d7b:	62 12 75 48 b8 f3    	vfmadd231ps zmm14,zmm1,zmm27
  a10d81:	62 61 64 40 5c dd    	vsubps zmm27,zmm19,zmm5
  a10d87:	62 a2 05 48 b8 e7    	vfmadd231ps zmm20,zmm15,zmm23
  a10d8d:	62 a1 7c 40 5c f9    	vsubps zmm23,zmm16,zmm17
  a10d93:	62 82 55 40 bc e1    	vfnmadd231ps zmm20,zmm21,zmm25
  a10d99:	62 61 44 40 59 ca    	vmulps zmm25,zmm23,zmm2
  a10d9f:	62 62 25 40 bc c9    	vfnmadd231ps zmm25,zmm27,zmm1
  a10da5:	62 61 24 40 59 da    	vmulps zmm27,zmm27,zmm2
  a10dab:	62 22 75 48 b8 df    	vfmadd231ps zmm27,zmm1,zmm23
  a10db1:	62 a1 7c 48 28 fd    	vmovaps zmm23,zmm21
  a10db7:	62 a2 2d 40 ac fe    	vfnmadd213ps zmm23,zmm26,zmm22
  a10dbd:	62 82 05 48 b8 f2    	vfmadd231ps zmm22,zmm15,zmm26
  a10dc3:	62 91 34 48 58 c7    	vaddps zmm0,zmm9,zmm31
  a10dc9:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a10dd0:	62 c2 3d 40 b8 ff    	vfmadd231ps zmm23,zmm24,zmm15
  a10dd6:	62 82 55 40 bc f0    	vfnmadd231ps zmm22,zmm21,zmm24
  a10ddc:	62 01 14 40 58 c6    	vaddps zmm24,zmm29,zmm30
  a10de2:	62 01 0c 40 5c f5    	vsubps zmm30,zmm30,zmm29
  a10de8:	62 21 34 40 58 d7    	vaddps zmm26,zmm25,zmm23
  a10dee:	62 81 44 40 5c f9    	vsubps zmm23,zmm23,zmm25
  a10df4:	62 21 0c 48 58 cc    	vaddps zmm25,zmm14,zmm20
  a10dfa:	62 51 5c 40 5c f6    	vsubps zmm14,zmm20,zmm14
  a10e00:	62 a1 24 40 58 e6    	vaddps zmm20,zmm27,zmm22
  a10e06:	62 81 4c 40 5c f3    	vsubps zmm22,zmm22,zmm27
  a10e0c:	62 b1 0c 48 58 d6    	vaddps zmm2,zmm14,zmm22
  a10e12:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a10e19:	03 
  a10e1a:	62 21 0c 48 5c de    	vsubps zmm27,zmm14,zmm22
  a10e20:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm27
  a10e27:	0c 
  a10e28:	62 a1 34 40 58 f4    	vaddps zmm22,zmm25,zmm20
  a10e2e:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm22
  a10e35:	fe 
  a10e36:	62 b1 34 40 5c dc    	vsubps zmm3,zmm25,zmm20
  a10e3c:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm3
  a10e43:	07 
  a10e44:	62 81 3c 40 58 e2    	vaddps zmm20,zmm24,zmm26
  a10e4a:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm20
  a10e51:	21 
  a10e52:	62 91 34 48 5c cf    	vsubps zmm1,zmm9,zmm31
  a10e58:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a10e5f:	02 
  a10e60:	62 71 7c 48 28 35 16 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6b6116]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a10e67:	61 6b ff 
  a10e6a:	62 b2 0d 48 7f c4    	vpermt2ps zmm0,zmm14,zmm20
  a10e70:	62 01 3c 40 5c c2    	vsubps zmm24,zmm24,zmm26
  a10e76:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm24
  a10e7d:	ff 
  a10e7e:	62 21 0c 40 58 ef    	vaddps zmm29,zmm30,zmm23
  a10e84:	62 21 0c 40 5c ff    	vsubps zmm31,zmm30,zmm23
  a10e8a:	62 a1 7c 48 28 e6    	vmovaps zmm20,zmm22
  a10e90:	62 a1 4c 00 57 f6    	vxorps xmm22,xmm22,xmm22
  a10e96:	62 a2 0d 48 7f e6    	vpermt2ps zmm20,zmm14,zmm22
  a10e9c:	62 21 7c 48 28 cc    	vmovaps zmm25,zmm20
  a10ea2:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm20
  a10ea9:	12 
  a10eaa:	62 72 5d 48 7f 6c 24 	vpermt2ps zmm13,zmm4,ZMMWORD PTR [rsp+0x40]
  a10eb1:	01 
  a10eb2:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a10eb9:	01 
  a10eba:	62 e1 7c 48 28 e0    	vmovaps zmm20,zmm0
  a10ec0:	62 51 2c 48 58 cb    	vaddps zmm9,zmm10,zmm11
  a10ec6:	62 11 7c 48 28 dd    	vmovaps zmm11,zmm29
  a10ecc:	62 32 0d 48 7f de    	vpermt2ps zmm11,zmm14,zmm22
  a10ed2:	62 51 4c 48 58 d0    	vaddps zmm10,zmm6,zmm8
  a10ed8:	62 e1 7c 48 28 fa    	vmovaps zmm23,zmm2
  a10ede:	62 a2 0d 48 7f fe    	vpermt2ps zmm23,zmm14,zmm22
  a10ee4:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm23
  a10eeb:	11 
  a10eec:	62 72 5d 48 7f 64 24 	vpermt2ps zmm12,zmm4,ZMMWORD PTR [rsp+0x240]
  a10ef3:	09 
  a10ef4:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm11
  a10efb:	08 
  a10efc:	62 41 7c 48 28 f3    	vmovaps zmm30,zmm11
  a10f02:	62 31 7c 40 58 d9    	vaddps zmm11,zmm16,zmm17
  a10f08:	62 62 0d 48 7f db    	vpermt2ps zmm27,zmm14,zmm3
  a10f0e:	62 f1 64 40 58 e5    	vaddps zmm4,zmm19,zmm5
  a10f14:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a10f1a:	62 a2 0d 48 7f ce    	vpermt2ps zmm17,zmm14,zmm22
  a10f20:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm17
  a10f27:	10 
  a10f28:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a10f2f:	04 
  a10f30:	62 f1 7c 48 5c f7    	vsubps zmm6,zmm0,zmm7
  a10f36:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm27
  a10f3d:	20 
  a10f3e:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a10f45:	05 
  a10f46:	62 f1 7c 48 5c 5c 24 	vsubps zmm3,zmm0,ZMMWORD PTR [rsp+0x180]
  a10f4d:	06 
  a10f4e:	62 91 7c 48 28 d0    	vmovaps zmm2,zmm24
  a10f54:	62 b2 0d 48 7f d6    	vpermt2ps zmm2,zmm14,zmm22
  a10f5a:	62 e1 7c 48 28 da    	vmovaps zmm19,zmm2
  a10f60:	62 31 1c 40 5c c2    	vsubps zmm8,zmm28,zmm18
  a10f66:	62 d1 14 48 58 d1    	vaddps zmm2,zmm13,zmm9
  a10f6c:	62 d1 6c 48 58 d2    	vaddps zmm2,zmm2,zmm10
  a10f72:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x280]
  a10f79:	0a 
  a10f7a:	62 f1 7c 48 5c 6c 24 	vsubps zmm5,zmm0,ZMMWORD PTR [rsp+0x2c0]
  a10f81:	0b 
  a10f82:	62 b1 7c 48 28 fd    	vmovaps zmm7,zmm21
  a10f88:	62 d2 35 48 ac fd    	vfnmadd213ps zmm7,zmm9,zmm13
  a10f8e:	62 52 05 48 b8 e9    	vfmadd231ps zmm13,zmm15,zmm9
  a10f94:	62 51 1c 48 58 cb    	vaddps zmm9,zmm12,zmm11
  a10f9a:	62 d2 2d 48 b8 ff    	vfmadd231ps zmm7,zmm10,zmm15
  a10fa0:	62 52 55 40 bc ea    	vfnmadd231ps zmm13,zmm21,zmm10
  a10fa6:	62 e2 7d 48 18 05 a8 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff6647a8]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a10fad:	47 66 ff 
  a10fb0:	62 31 64 48 59 d0    	vmulps zmm10,zmm3,zmm16
  a10fb6:	62 f2 7d 48 18 0d e0 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff6643e0]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a10fbd:	43 66 ff 
  a10fc0:	62 72 4d 48 bc d1    	vfnmadd231ps zmm10,zmm6,zmm1
  a10fc6:	62 b1 4c 48 59 f0    	vmulps zmm6,zmm6,zmm16
  a10fcc:	62 f2 75 48 b8 f3    	vfmadd231ps zmm6,zmm1,zmm3
  a10fd2:	62 b1 7c 48 28 dd    	vmovaps zmm3,zmm21
  a10fd8:	62 d2 25 48 ac dc    	vfnmadd213ps zmm3,zmm11,zmm12
  a10fde:	62 52 05 48 b8 e3    	vfmadd231ps zmm12,zmm15,zmm11
  a10fe4:	62 91 7c 48 28 c7    	vmovaps zmm0,zmm31
  a10fea:	62 b2 0d 48 7f c6    	vpermt2ps zmm0,zmm14,zmm22
  a10ff0:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a10ff6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a10ffd:	0f 
  a10ffe:	62 71 34 48 58 cc    	vaddps zmm9,zmm9,zmm4
  a11004:	62 d2 5d 48 b8 df    	vfmadd231ps zmm3,zmm4,zmm15
  a1100a:	62 72 55 40 bc e4    	vfnmadd231ps zmm12,zmm21,zmm4
  a11010:	62 b1 54 48 59 e0    	vmulps zmm4,zmm5,zmm16
  a11016:	62 f2 3d 48 bc e1    	vfnmadd231ps zmm4,zmm8,zmm1
  a1101c:	62 31 3c 48 59 c0    	vmulps zmm8,zmm8,zmm16
  a11022:	62 72 75 48 b8 c5    	vfmadd231ps zmm8,zmm1,zmm5
  a11028:	62 d1 44 48 5c ea    	vsubps zmm5,zmm7,zmm10
  a1102e:	62 d1 44 48 58 fa    	vaddps zmm7,zmm7,zmm10
  a11034:	62 71 64 48 5c dc    	vsubps zmm11,zmm3,zmm4
  a1103a:	62 f1 64 48 58 e4    	vaddps zmm4,zmm3,zmm4
  a11040:	62 f1 14 48 5c de    	vsubps zmm3,zmm13,zmm6
  a11046:	62 f1 14 48 58 c6    	vaddps zmm0,zmm13,zmm6
  a1104c:	62 d1 1c 48 5c f0    	vsubps zmm6,zmm12,zmm8
  a11052:	62 d1 1c 48 58 c8    	vaddps zmm1,zmm12,zmm8
  a11058:	62 71 7c 48 58 c1    	vaddps zmm8,zmm0,zmm1
  a1105e:	62 e1 7c 48 5c c1    	vsubps zmm16,zmm0,zmm1
  a11064:	62 e1 64 48 58 d6    	vaddps zmm18,zmm3,zmm6
  a1106a:	62 f1 64 48 5c de    	vsubps zmm3,zmm3,zmm6
  a11070:	62 51 6c 48 58 d1    	vaddps zmm10,zmm2,zmm9
  a11076:	62 41 6c 48 5c e1    	vsubps zmm28,zmm2,zmm9
  a1107c:	62 d1 54 48 58 d3    	vaddps zmm2,zmm5,zmm11
  a11082:	62 41 54 48 5c c3    	vsubps zmm24,zmm5,zmm11
  a11088:	62 71 44 48 58 cc    	vaddps zmm9,zmm7,zmm4
  a1108e:	62 71 44 48 5c fc    	vsubps zmm15,zmm7,zmm4
  a11094:	62 b1 7c 48 28 e3    	vmovaps zmm4,zmm19
  a1109a:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm19
  a110a1:	13 
  a110a2:	62 f1 7c 48 28 2d 94 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6b5e94]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a110a9:	5e 6b ff 
  a110ac:	62 82 55 48 7f e1    	vpermt2ps zmm20,zmm5,zmm25
  a110b2:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm20
  a110b9:	16 
  a110ba:	62 91 7c 48 28 c6    	vmovaps zmm0,zmm30
  a110c0:	62 b2 55 48 7f c7    	vpermt2ps zmm0,zmm5,zmm23
  a110c6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm0
  a110cd:	17 
  a110ce:	62 81 7c 48 28 db    	vmovaps zmm19,zmm27
  a110d4:	62 a2 55 48 7f d9    	vpermt2ps zmm19,zmm5,zmm17
  a110da:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm19
  a110e1:	15 
  a110e2:	62 92 55 48 7f e2    	vpermt2ps zmm4,zmm5,zmm26
  a110e8:	62 e1 7c 48 28 cc    	vmovaps zmm17,zmm4
  a110ee:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm4
  a110f5:	14 
  a110f6:	62 41 7c 48 28 ca    	vmovaps zmm25,zmm10
  a110fc:	62 72 0d 48 7f d2    	vpermt2ps zmm10,zmm14,zmm2
  a11102:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a11108:	62 a2 0d 48 7f d6    	vpermt2ps zmm18,zmm14,zmm22
  a1110e:	62 d1 7c 48 28 e2    	vmovaps zmm4,zmm10
  a11114:	62 b2 55 48 7f e2    	vpermt2ps zmm4,zmm5,zmm18
  a1111a:	62 e1 7c 48 28 ec    	vmovaps zmm21,zmm4
  a11120:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm4
  a11127:	1b 
  a11128:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a1112e:	62 32 0d 48 7f ce    	vpermt2ps zmm9,zmm14,zmm22
  a11134:	62 41 7c 48 28 d0    	vmovaps zmm26,zmm8
  a1113a:	62 32 0d 48 7f c6    	vpermt2ps zmm8,zmm14,zmm22
  a11140:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm8
  a11147:	0e 
  a11148:	62 d1 7c 48 28 e1    	vmovaps zmm4,zmm9
  a1114e:	62 d2 55 48 7f e0    	vpermt2ps zmm4,zmm5,zmm8
  a11154:	62 e1 7c 48 28 fc    	vmovaps zmm23,zmm4
  a1115a:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm4
  a11161:	1a 
  a11162:	62 31 7c 48 28 c0    	vmovaps zmm8,zmm16
  a11168:	62 e2 0d 48 7f c3    	vpermt2ps zmm16,zmm14,zmm3
  a1116e:	62 11 7c 48 28 ec    	vmovaps zmm13,zmm28
  a11174:	62 22 0d 48 7f e6    	vpermt2ps zmm28,zmm14,zmm22
  a1117a:	62 b1 7c 48 28 e0    	vmovaps zmm4,zmm16
  a11180:	62 92 55 48 7f e4    	vpermt2ps zmm4,zmm5,zmm28
  a11186:	62 61 7c 48 28 dc    	vmovaps zmm27,zmm4
  a1118c:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm4
  a11193:	19 
  a11194:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a1119a:	62 22 0d 48 7f c6    	vpermt2ps zmm24,zmm14,zmm22
  a111a0:	62 d1 7c 48 28 ff    	vmovaps zmm7,zmm15
  a111a6:	62 32 0d 48 7f fe    	vpermt2ps zmm15,zmm14,zmm22
  a111ac:	62 91 7c 48 28 f0    	vmovaps zmm6,zmm24
  a111b2:	62 d2 55 48 7f f7    	vpermt2ps zmm6,zmm5,zmm15
  a111b8:	62 71 7c 48 28 f6    	vmovaps zmm14,zmm6
  a111be:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm6
  a111c5:	18 
  a111c6:	62 b1 d5 40 15 f7    	vunpckhpd zmm6,zmm21,zmm23
  a111cc:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm6
  a111d3:	0b 
  a111d4:	62 51 a5 40 15 f6    	vunpckhpd zmm14,zmm27,zmm14
  a111da:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm14
  a111e1:	0a 
  a111e2:	62 61 7c 48 28 35 14 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff6b5c14]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a111e9:	5c 6b ff 
  a111ec:	62 d2 0d 40 7f f6    	vpermt2ps zmm6,zmm30,zmm14
  a111f2:	62 71 dd 40 15 f0    	vunpckhpd zmm14,zmm20,zmm0
  a111f8:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm14
  a111ff:	04 
  a11200:	62 b1 e5 40 15 c1    	vunpckhpd zmm0,zmm19,zmm17
  a11206:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a1120d:	09 
  a1120e:	62 72 0d 40 7f f0    	vpermt2ps zmm14,zmm30,zmm0
  a11214:	62 e1 7c 48 10 59 0d 	vmovups zmm19,ZMMWORD PTR [rcx+0x340]
  a1121b:	62 e1 7c 48 10 61 0c 	vmovups zmm20,ZMMWORD PTR [rcx+0x300]
  a11222:	62 b1 0c 48 59 c4    	vmulps zmm0,zmm14,zmm20
  a11228:	62 b2 4d 48 b8 c3    	vfmadd231ps zmm0,zmm6,zmm19
  a1122e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a11235:	06 
  a11236:	62 b1 4c 48 59 c4    	vmulps zmm0,zmm6,zmm20
  a1123c:	62 d2 65 40 bc c6    	vfnmadd231ps zmm0,zmm19,zmm14
  a11242:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a11249:	05 
  a1124a:	62 f1 7c 48 28 05 6c 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6b5d6c]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a11251:	5d 6b ff 
  a11254:	62 62 7d 48 7f ca    	vpermt2ps zmm25,zmm0,zmm2
  a1125a:	62 72 7d 48 7f c3    	vpermt2ps zmm8,zmm0,zmm3
  a11260:	62 f1 7c 48 10 34 24 	vmovups zmm6,ZMMWORD PTR [rsp]
  a11267:	62 f2 7d 48 7f 74 24 	vpermt2ps zmm6,zmm0,ZMMWORD PTR [rsp+0x840]
  a1126e:	21 
  a1126f:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x300]
  a11276:	0c 
  a11277:	62 72 7d 48 7f 74 24 	vpermt2ps zmm14,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a1127e:	07 
  a1127f:	62 b2 7d 48 7f ce    	vpermt2ps zmm1,zmm0,zmm22
  a11285:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm1
  a1128c:	22 
  a1128d:	62 32 7d 48 7f e6    	vpermt2ps zmm12,zmm0,zmm22
  a11293:	62 22 7d 48 7f d6    	vpermt2ps zmm26,zmm0,zmm22
  a11299:	62 32 7d 48 7f ee    	vpermt2ps zmm13,zmm0,zmm22
  a1129f:	62 b2 7d 48 7f e6    	vpermt2ps zmm4,zmm0,zmm22
  a112a5:	62 b2 7d 48 7f fe    	vpermt2ps zmm7,zmm0,zmm22
  a112ab:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a112b2:	fe 
  a112b3:	62 b2 7d 48 7f d6    	vpermt2ps zmm2,zmm0,zmm22
  a112b9:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a112c0:	fe 
  a112c1:	62 22 7d 48 7f ee    	vpermt2ps zmm29,zmm0,zmm22
  a112c7:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0xc0]
  a112ce:	03 
  a112cf:	62 32 7d 48 7f de    	vpermt2ps zmm11,zmm0,zmm22
  a112d5:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm11
  a112dc:	03 
  a112dd:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x80]
  a112e4:	02 
  a112e5:	62 b2 7d 48 7f de    	vpermt2ps zmm3,zmm0,zmm22
  a112eb:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm3
  a112f2:	02 
  a112f3:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp-0x40]
  a112fa:	ff 
  a112fb:	62 a2 7d 48 7f ce    	vpermt2ps zmm17,zmm0,zmm22
  a11301:	62 81 7c 48 28 ff    	vmovaps zmm23,zmm31
  a11307:	62 a2 7d 48 7f fe    	vpermt2ps zmm23,zmm0,zmm22
  a1130d:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm23
  a11314:	0d 
  a11315:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a1131b:	62 61 7c 48 28 fe    	vmovaps zmm31,zmm6
  a11321:	62 f2 55 48 7f c2    	vpermt2ps zmm0,zmm5,zmm2
  a11327:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a1132d:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a11334:	62 81 7c 48 28 ed    	vmovaps zmm21,zmm29
  a1133a:	62 42 55 48 7f eb    	vpermt2ps zmm29,zmm5,zmm11
  a11340:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x940],zmm29
  a11347:	25 
  a11348:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a1134e:	62 c1 7c 48 28 de    	vmovaps zmm19,zmm14
  a11354:	62 f2 55 48 7f c3    	vpermt2ps zmm0,zmm5,zmm3
  a1135a:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a11360:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a11367:	0c 
  a11368:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a1136e:	62 a1 7c 48 28 e1    	vmovaps zmm20,zmm17
  a11374:	62 b2 55 48 7f c7    	vpermt2ps zmm0,zmm5,zmm23
  a1137a:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a11380:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a11387:	ff 
  a11388:	62 11 7c 48 28 f1    	vmovaps zmm14,zmm25
  a1138e:	62 62 55 48 7f c9    	vpermt2ps zmm25,zmm5,zmm1
  a11394:	62 51 7c 48 28 dc    	vmovaps zmm11,zmm12
  a1139a:	62 12 55 48 7f e2    	vpermt2ps zmm12,zmm5,zmm26
  a113a0:	62 d1 7c 48 28 f0    	vmovaps zmm6,zmm8
  a113a6:	62 52 55 48 7f c5    	vpermt2ps zmm8,zmm5,zmm13
  a113ac:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a113b2:	62 f2 55 48 7f e7    	vpermt2ps zmm4,zmm5,zmm7
  a113b8:	62 c1 b5 40 15 fc    	vunpckhpd zmm23,zmm25,zmm12
  a113be:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm23
  a113c5:	1f 
  a113c6:	62 f1 bd 48 15 c4    	vunpckhpd zmm0,zmm8,zmm4
  a113cc:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm0
  a113d3:	1e 
  a113d4:	62 e2 0d 40 7f f8    	vpermt2ps zmm23,zmm30,zmm0
  a113da:	62 81 ed 48 15 f5    	vunpckhpd zmm22,zmm2,zmm29
  a113e0:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm22
  a113e7:	1d 
  a113e8:	62 b1 a5 40 15 c1    	vunpckhpd zmm0,zmm27,zmm17
  a113ee:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm0
  a113f5:	1c 
  a113f6:	62 e2 0d 40 7f f0    	vpermt2ps zmm22,zmm30,zmm0
  a113fc:	62 f1 7c 48 10 49 1d 	vmovups zmm1,ZMMWORD PTR [rcx+0x740]
  a11403:	62 f1 7c 48 10 41 1c 	vmovups zmm0,ZMMWORD PTR [rcx+0x700]
  a1140a:	62 e1 4c 40 59 c8    	vmulps zmm17,zmm22,zmm0
  a11410:	62 e2 45 40 b8 c9    	vfmadd231ps zmm17,zmm23,zmm1
  a11416:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm17
  a1141d:	21 
  a1141e:	62 f1 44 40 59 c0    	vmulps zmm0,zmm23,zmm0
  a11424:	62 b2 75 48 bc c6    	vfnmadd231ps zmm0,zmm1,zmm22
  a1142a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a11431:	07 
  a11432:	62 e1 7c 48 28 3d c4 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6b5ac4]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a11439:	5a 6b ff 
  a1143c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a11443:	01 
  a11444:	62 f2 45 40 7f 44 24 	vpermt2ps zmm0,zmm23,ZMMWORD PTR [rsp+0x480]
  a1144b:	12 
  a1144c:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x200]
  a11453:	08 
  a11454:	62 f2 45 40 7f 54 24 	vpermt2ps zmm2,zmm23,ZMMWORD PTR [rsp+0x440]
  a1145b:	11 
  a1145c:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x800]
  a11463:	20 
  a11464:	62 e2 45 40 7f 74 24 	vpermt2ps zmm22,zmm23,ZMMWORD PTR [rsp+0x400]
  a1146b:	10 
  a1146c:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x4c0]
  a11473:	13 
  a11474:	62 e2 45 40 7f 4c 24 	vpermt2ps zmm17,zmm23,ZMMWORD PTR [rsp+0x3c0]
  a1147b:	0f 
  a1147c:	62 32 45 40 7f d2    	vpermt2ps zmm10,zmm23,zmm18
  a11482:	62 72 45 40 7f 4c 24 	vpermt2ps zmm9,zmm23,ZMMWORD PTR [rsp+0x380]
  a11489:	0e 
  a1148a:	62 82 45 40 7f c4    	vpermt2ps zmm16,zmm23,zmm28
  a11490:	62 42 45 40 7f c7    	vpermt2ps zmm24,zmm23,zmm15
  a11496:	62 e1 fd 48 15 d2    	vunpckhpd zmm18,zmm0,zmm2
  a1149c:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a114a2:	62 b1 cd 40 15 c9    	vunpckhpd zmm1,zmm22,zmm17
  a114a8:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x900],zmm1
  a114af:	24 
  a114b0:	62 21 7c 48 28 e1    	vmovaps zmm28,zmm17
  a114b6:	62 a1 7c 48 28 ce    	vmovaps zmm17,zmm22
  a114bc:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a114c2:	62 f2 0d 40 7f c1    	vpermt2ps zmm0,zmm30,zmm1
  a114c8:	62 41 ad 48 15 d9    	vunpckhpd zmm27,zmm10,zmm9
  a114ce:	62 11 fd 40 15 f8    	vunpckhpd zmm15,zmm16,zmm24
  a114d4:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm15
  a114db:	23 
  a114dc:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a114e2:	62 d2 0d 40 7f cf    	vpermt2ps zmm1,zmm30,zmm15
  a114e8:	62 71 7c 48 10 79 04 	vmovups zmm15,ZMMWORD PTR [rcx+0x100]
  a114ef:	62 e1 7c 48 10 71 05 	vmovups zmm22,ZMMWORD PTR [rcx+0x140]
  a114f6:	62 41 74 48 59 ef    	vmulps zmm29,zmm1,zmm15
  a114fc:	62 22 7d 48 bc ee    	vfnmadd231ps zmm29,zmm0,zmm22
  a11502:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm29
  a11509:	08 
  a1150a:	62 d1 7c 48 59 c7    	vmulps zmm0,zmm0,zmm15
  a11510:	62 f2 4d 40 b8 c1    	vfmadd231ps zmm0,zmm22,zmm1
  a11516:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a1151d:	01 
  a1151e:	62 72 45 40 7f 74 24 	vpermt2ps zmm14,zmm23,ZMMWORD PTR [rsp+0x880]
  a11525:	22 
  a11526:	62 12 45 40 7f da    	vpermt2ps zmm11,zmm23,zmm26
  a1152c:	62 d2 45 40 7f f5    	vpermt2ps zmm6,zmm23,zmm13
  a11532:	62 f2 45 40 7f df    	vpermt2ps zmm3,zmm23,zmm7
  a11538:	62 62 45 40 7f 7c 24 	vpermt2ps zmm31,zmm23,ZMMWORD PTR [rsp-0x80]
  a1153f:	fe 
  a11540:	62 e2 45 40 7f 6c 24 	vpermt2ps zmm21,zmm23,ZMMWORD PTR [rsp+0xc0]
  a11547:	03 
  a11548:	62 e2 45 40 7f 5c 24 	vpermt2ps zmm19,zmm23,ZMMWORD PTR [rsp+0x80]
  a1154f:	02 
  a11550:	62 e2 45 40 7f 64 24 	vpermt2ps zmm20,zmm23,ZMMWORD PTR [rsp+0x340]
  a11557:	0d 
  a11558:	62 b1 85 40 15 cd    	vunpckhpd zmm1,zmm31,zmm21
  a1155e:	62 b1 e5 40 15 c4    	vunpckhpd zmm0,zmm19,zmm20
  a11564:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a1156b:	0f 
  a1156c:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a11572:	62 f2 0d 40 7f f8    	vpermt2ps zmm7,zmm30,zmm0
  a11578:	62 d1 8d 48 15 c3    	vunpckhpd zmm0,zmm14,zmm11
  a1157e:	62 71 cd 48 15 fb    	vunpckhpd zmm15,zmm6,zmm3
  a11584:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm15
  a1158b:	0e 
  a1158c:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a11592:	62 52 0d 40 7f ef    	vpermt2ps zmm13,zmm30,zmm15
  a11598:	62 71 7c 48 10 79 15 	vmovups zmm15,ZMMWORD PTR [rcx+0x540]
  a1159f:	62 e1 7c 48 10 71 14 	vmovups zmm22,ZMMWORD PTR [rcx+0x500]
  a115a6:	62 a1 14 48 59 fe    	vmulps zmm23,zmm13,zmm22
  a115ac:	62 c2 45 48 bc ff    	vfnmadd231ps zmm23,zmm7,zmm15
  a115b2:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm23
  a115b9:	20 
  a115ba:	62 b1 44 48 59 fe    	vmulps zmm7,zmm7,zmm22
  a115c0:	62 d2 05 48 b8 fd    	vfmadd231ps zmm7,zmm15,zmm13
  a115c6:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm7
  a115cd:	03 
  a115ce:	62 f1 d5 48 14 fa    	vunpcklpd zmm7,zmm5,zmm2
  a115d4:	62 11 f5 40 14 ec    	vunpcklpd zmm13,zmm17,zmm28
  a115da:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm13
  a115e1:	12 
  a115e2:	62 d1 ad 48 14 e9    	vunpcklpd zmm5,zmm10,zmm9
  a115e8:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm5
  a115ef:	fe 
  a115f0:	62 91 fd 40 14 d0    	vunpcklpd zmm2,zmm16,zmm24
  a115f6:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm2
  a115fd:	0d 
  a115fe:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm7
  a11605:	13 
  a11606:	62 71 7c 48 28 3d 30 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6b5830]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1160d:	58 6b ff 
  a11610:	62 d2 05 48 7f fd    	vpermt2ps zmm7,zmm15,zmm13
  a11616:	62 f2 05 48 7f ea    	vpermt2ps zmm5,zmm15,zmm2
  a1161c:	62 71 7c 48 10 51 02 	vmovups zmm10,ZMMWORD PTR [rcx+0x80]
  a11623:	62 71 7c 48 10 69 03 	vmovups zmm13,ZMMWORD PTR [rcx+0xc0]
  a1162a:	62 c1 54 48 59 ca    	vmulps zmm17,zmm5,zmm10
  a11630:	62 c2 45 48 bc cd    	vfnmadd231ps zmm17,zmm7,zmm13
  a11636:	62 d1 44 48 59 fa    	vmulps zmm7,zmm7,zmm10
  a1163c:	62 f2 15 48 b8 fd    	vfmadd231ps zmm7,zmm13,zmm5
  a11642:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm7
  a11649:	11 
  a1164a:	62 d1 8d 48 14 eb    	vunpcklpd zmm5,zmm14,zmm11
  a11650:	62 71 cd 48 14 eb    	vunpcklpd zmm13,zmm6,zmm3
  a11656:	62 b1 85 40 14 d5    	vunpcklpd zmm2,zmm31,zmm21
  a1165c:	62 31 e5 40 14 d4    	vunpcklpd zmm10,zmm19,zmm20
  a11662:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a11668:	62 d2 05 48 7f d2    	vpermt2ps zmm2,zmm15,zmm10
  a1166e:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a11674:	62 d2 05 48 7f ed    	vpermt2ps zmm5,zmm15,zmm13
  a1167a:	62 f1 7c 48 10 59 13 	vmovups zmm3,ZMMWORD PTR [rcx+0x4c0]
  a11681:	62 f1 7c 48 10 71 12 	vmovups zmm6,ZMMWORD PTR [rcx+0x480]
  a11688:	62 f1 54 48 59 fe    	vmulps zmm7,zmm5,zmm6
  a1168e:	62 f2 6d 48 bc fb    	vfnmadd231ps zmm7,zmm2,zmm3
  a11694:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm7
  a1169b:	02 
  a1169c:	62 f1 6c 48 59 d6    	vmulps zmm2,zmm2,zmm6
  a116a2:	62 f2 65 48 b8 d5    	vfmadd231ps zmm2,zmm3,zmm5
  a116a8:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm2
  a116af:	10 
  a116b0:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  a116b7:	62 f1 ed 48 14 5c 24 	vunpcklpd zmm3,zmm2,ZMMWORD PTR [rsp+0x940]
  a116be:	25 
  a116bf:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x300]
  a116c6:	0c 
  a116c7:	62 e1 ed 48 14 5c 24 	vunpcklpd zmm19,zmm2,ZMMWORD PTR [rsp-0x40]
  a116ce:	ff 
  a116cf:	62 d1 b5 40 14 ec    	vunpcklpd zmm5,zmm25,zmm12
  a116d5:	62 f1 bd 48 14 d4    	vunpcklpd zmm2,zmm8,zmm4
  a116db:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a116e1:	62 f2 05 48 7f ea    	vpermt2ps zmm5,zmm15,zmm2
  a116e7:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a116ed:	62 b2 05 48 7f db    	vpermt2ps zmm3,zmm15,zmm19
  a116f3:	62 f1 7c 48 10 61 1b 	vmovups zmm4,ZMMWORD PTR [rcx+0x6c0]
  a116fa:	62 f1 7c 48 10 79 1a 	vmovups zmm7,ZMMWORD PTR [rcx+0x680]
  a11701:	62 e1 64 48 59 ef    	vmulps zmm21,zmm3,zmm7
  a11707:	62 e2 55 48 b8 ec    	vfmadd231ps zmm21,zmm5,zmm4
  a1170d:	62 f1 54 48 59 ef    	vmulps zmm5,zmm5,zmm7
  a11713:	62 f2 5d 48 bc eb    	vfnmadd231ps zmm5,zmm4,zmm3
  a11719:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  a11720:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x580]
  a11727:	16 
  a11728:	62 f1 e5 48 14 5c 24 	vunpcklpd zmm3,zmm3,ZMMWORD PTR [rsp+0x5c0]
  a1172f:	17 
  a11730:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x540]
  a11737:	15 
  a11738:	62 71 dd 48 14 64 24 	vunpcklpd zmm12,zmm4,ZMMWORD PTR [rsp+0x500]
  a1173f:	14 
  a11740:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x6c0]
  a11747:	1b 
  a11748:	62 f1 dd 48 14 64 24 	vunpcklpd zmm4,zmm4,ZMMWORD PTR [rsp+0x680]
  a1174f:	1a 
  a11750:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x640]
  a11757:	19 
  a11758:	62 f1 d5 48 14 74 24 	vunpcklpd zmm6,zmm5,ZMMWORD PTR [rsp+0x600]
  a1175f:	18 
  a11760:	62 61 7c 48 28 cc    	vmovaps zmm25,zmm4
  a11766:	62 f2 05 48 7f e6    	vpermt2ps zmm4,zmm15,zmm6
  a1176c:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a11772:	62 d2 05 48 7f dc    	vpermt2ps zmm3,zmm15,zmm12
  a11778:	62 f1 7c 48 10 69 0b 	vmovups zmm5,ZMMWORD PTR [rcx+0x2c0]
  a1177f:	62 f1 7c 48 10 79 0a 	vmovups zmm7,ZMMWORD PTR [rcx+0x280]
  a11786:	62 71 64 48 59 df    	vmulps zmm11,zmm3,zmm7
  a1178c:	62 72 5d 48 b8 dd    	vfmadd231ps zmm11,zmm4,zmm5
  a11792:	62 f1 5c 48 59 e7    	vmulps zmm4,zmm4,zmm7
  a11798:	62 f2 55 48 bc e3    	vfnmadd231ps zmm4,zmm5,zmm3
  a1179e:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a117a4:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm4
  a117ab:	14 
  a117ac:	62 e2 05 48 7f 54 24 	vpermt2ps zmm18,zmm15,ZMMWORD PTR [rsp+0x900]
  a117b3:	24 
  a117b4:	62 62 05 48 7f 5c 24 	vpermt2ps zmm27,zmm15,ZMMWORD PTR [rsp+0x8c0]
  a117bb:	23 
  a117bc:	62 f1 7c 48 10 59 07 	vmovups zmm3,ZMMWORD PTR [rcx+0x1c0]
  a117c3:	62 f1 7c 48 10 61 06 	vmovups zmm4,ZMMWORD PTR [rcx+0x180]
  a117ca:	62 f1 24 40 59 fc    	vmulps zmm7,zmm27,zmm4
  a117d0:	62 f2 6d 40 bc fb    	vfnmadd231ps zmm7,zmm18,zmm3
  a117d6:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm7
  a117dd:	ff 
  a117de:	62 61 6c 40 59 ec    	vmulps zmm29,zmm18,zmm4
  a117e4:	62 02 65 48 b8 eb    	vfmadd231ps zmm29,zmm3,zmm27
  a117ea:	62 f2 05 48 7f 4c 24 	vpermt2ps zmm1,zmm15,ZMMWORD PTR [rsp+0x3c0]
  a117f1:	0f 
  a117f2:	62 f2 05 48 7f 44 24 	vpermt2ps zmm0,zmm15,ZMMWORD PTR [rsp+0x380]
  a117f9:	0e 
  a117fa:	62 f1 7c 48 10 59 17 	vmovups zmm3,ZMMWORD PTR [rcx+0x5c0]
  a11801:	62 f1 7c 48 10 61 16 	vmovups zmm4,ZMMWORD PTR [rcx+0x580]
  a11808:	62 61 7c 48 59 c4    	vmulps zmm24,zmm0,zmm4
  a1180e:	62 62 75 48 bc c3    	vfnmadd231ps zmm24,zmm1,zmm3
  a11814:	62 61 74 48 59 e4    	vmulps zmm28,zmm1,zmm4
  a1181a:	62 62 65 48 b8 e0    	vfmadd231ps zmm28,zmm3,zmm0
  a11820:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x7c0]
  a11827:	1f 
  a11828:	62 f2 05 48 7f 5c 24 	vpermt2ps zmm3,zmm15,ZMMWORD PTR [rsp+0x780]
  a1182f:	1e 
  a11830:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x740]
  a11837:	1d 
  a11838:	62 f2 05 48 7f 64 24 	vpermt2ps zmm4,zmm15,ZMMWORD PTR [rsp+0x700]
  a1183f:	1c 
  a11840:	62 f1 7c 48 10 41 1f 	vmovups zmm0,ZMMWORD PTR [rcx+0x7c0]
  a11847:	62 f1 7c 48 10 49 1e 	vmovups zmm1,ZMMWORD PTR [rcx+0x780]
  a1184e:	62 61 5c 48 59 f9    	vmulps zmm31,zmm4,zmm1
  a11854:	62 62 65 48 b8 f8    	vfmadd231ps zmm31,zmm3,zmm0
  a1185a:	62 e1 64 48 59 f9    	vmulps zmm23,zmm3,zmm1
  a11860:	62 e2 7d 48 bc fc    	vfnmadd231ps zmm23,zmm0,zmm4
  a11866:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x2c0]
  a1186d:	0b 
  a1186e:	62 f2 05 48 7f 4c 24 	vpermt2ps zmm1,zmm15,ZMMWORD PTR [rsp+0x280]
  a11875:	0a 
  a11876:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x100]
  a1187d:	04 
  a1187e:	62 f2 05 48 7f 64 24 	vpermt2ps zmm4,zmm15,ZMMWORD PTR [rsp+0x240]
  a11885:	09 
  a11886:	62 f1 7c 48 10 41 0f 	vmovups zmm0,ZMMWORD PTR [rcx+0x3c0]
  a1188d:	62 f1 7c 48 10 59 0e 	vmovups zmm3,ZMMWORD PTR [rcx+0x380]
  a11894:	62 e1 5c 48 59 c3    	vmulps zmm16,zmm4,zmm3
  a1189a:	62 e2 75 48 b8 c0    	vfmadd231ps zmm16,zmm1,zmm0
  a118a0:	62 e1 74 48 59 f3    	vmulps zmm22,zmm1,zmm3
  a118a6:	62 e2 7d 48 bc f4    	vfnmadd231ps zmm22,zmm0,zmm4
  a118ac:	62 c2 0d 40 7f e5    	vpermt2ps zmm20,zmm30,zmm13
  a118b2:	62 52 0d 40 7f f2    	vpermt2ps zmm14,zmm30,zmm10
  a118b8:	62 f1 7c 48 10 41 11 	vmovups zmm0,ZMMWORD PTR [rcx+0x440]
  a118bf:	62 f1 7c 48 10 61 10 	vmovups zmm4,ZMMWORD PTR [rcx+0x400]
  a118c6:	62 f1 0c 48 59 dc    	vmulps zmm3,zmm14,zmm4
  a118cc:	62 f2 5d 40 b8 d8    	vfmadd231ps zmm3,zmm20,zmm0
  a118d2:	62 e1 5c 40 59 e4    	vmulps zmm20,zmm20,zmm4
  a118d8:	62 c2 7d 48 bc e6    	vfnmadd231ps zmm20,zmm0,zmm14
  a118de:	62 42 0d 40 7f d4    	vpermt2ps zmm26,zmm30,zmm12
  a118e4:	62 62 0d 40 7f ce    	vpermt2ps zmm25,zmm30,zmm6
  a118ea:	62 f1 7c 48 10 41 09 	vmovups zmm0,ZMMWORD PTR [rcx+0x240]
  a118f1:	62 f1 7c 48 10 61 08 	vmovups zmm4,ZMMWORD PTR [rcx+0x200]
  a118f8:	62 61 34 40 59 dc    	vmulps zmm27,zmm25,zmm4
  a118fe:	62 62 2d 40 bc d8    	vfnmadd231ps zmm27,zmm26,zmm0
  a11904:	62 71 2c 40 59 ec    	vmulps zmm13,zmm26,zmm4
  a1190a:	62 12 7d 48 b8 e9    	vfmadd231ps zmm13,zmm0,zmm25
  a11910:	62 32 0d 40 7f cb    	vpermt2ps zmm9,zmm30,zmm19
  a11916:	62 72 0d 40 7f c2    	vpermt2ps zmm8,zmm30,zmm2
  a1191c:	62 f1 7c 48 10 51 19 	vmovups zmm2,ZMMWORD PTR [rcx+0x640]
  a11923:	62 f1 7c 48 10 61 18 	vmovups zmm4,ZMMWORD PTR [rcx+0x600]
  a1192a:	62 f1 3c 48 59 f4    	vmulps zmm6,zmm8,zmm4
  a11930:	62 f2 35 48 bc f2    	vfnmadd231ps zmm6,zmm9,zmm2
  a11936:	62 71 34 48 59 f4    	vmulps zmm14,zmm9,zmm4
  a1193c:	62 52 6d 48 b8 f0    	vfmadd231ps zmm14,zmm2,zmm8
  a11942:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x4c0]
  a11949:	13 
  a1194a:	62 f2 0d 40 7f 44 24 	vpermt2ps zmm0,zmm30,ZMMWORD PTR [rsp+0x480]
  a11951:	12 
  a11952:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a11959:	fe 
  a1195a:	62 f2 0d 40 7f 4c 24 	vpermt2ps zmm1,zmm30,ZMMWORD PTR [rsp+0x340]
  a11961:	0d 
  a11962:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a11969:	fe 
  a1196a:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x200]
  a11971:	08 
  a11972:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x800]
  a11979:	20 
  a1197a:	62 d1 04 48 5c d2    	vsubps zmm2,zmm15,zmm10
  a11980:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a11987:	01 
  a11988:	62 f1 74 48 5c 64 24 	vsubps zmm4,zmm1,ZMMWORD PTR [rsp+0xc0]
  a1198f:	03 
  a11990:	62 f1 6c 48 58 cc    	vaddps zmm1,zmm2,zmm4
  a11996:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a1199d:	04 
  a1199e:	62 f1 5c 48 5c ca    	vsubps zmm1,zmm4,zmm2
  a119a4:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm1
  a119ab:	1d 
  a119ac:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp+0x840]
  a119b3:	21 
  a119b4:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x180]
  a119bb:	06 
  a119bc:	62 91 74 48 5c d2    	vsubps zmm2,zmm1,zmm26
  a119c2:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x140]
  a119c9:	05 
  a119ca:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x1c0]
  a119d1:	07 
  a119d2:	62 f1 64 40 5c e7    	vsubps zmm4,zmm19,zmm7
  a119d8:	62 f1 6c 48 5c cc    	vsubps zmm1,zmm2,zmm4
  a119de:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a119e5:	09 
  a119e6:	62 f1 5c 48 58 ca    	vaddps zmm1,zmm4,zmm2
  a119ec:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm1
  a119f3:	19 
  a119f4:	62 f1 74 40 5c 4c 24 	vsubps zmm1,zmm17,ZMMWORD PTR [rsp+0x80]
  a119fb:	02 
  a119fc:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm1
  a11a03:	1f 
  a11a04:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a11a0a:	62 b1 24 48 5c d5    	vsubps zmm2,zmm11,zmm21
  a11a10:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm2
  a11a17:	1e 
  a11a18:	62 f1 74 48 5c e2    	vsubps zmm4,zmm1,zmm2
  a11a1e:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x440]
  a11a25:	11 
  a11a26:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x400]
  a11a2d:	10 
  a11a2e:	62 d1 1c 48 5c cb    	vsubps zmm1,zmm12,zmm11
  a11a34:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm1
  a11a3b:	1b 
  a11a3c:	62 71 7c 48 10 04 24 	vmovups zmm8,ZMMWORD PTR [rsp]
  a11a43:	62 f1 3c 48 5c d5    	vsubps zmm2,zmm8,zmm5
  a11a49:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm2
  a11a50:	1a 
  a11a51:	62 f1 74 48 5c d2    	vsubps zmm2,zmm1,zmm2
  a11a57:	62 62 7d 48 18 35 9f 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff663c9f]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a11a5e:	3c 66 ff 
  a11a61:	62 91 6c 48 59 ce    	vmulps zmm1,zmm2,zmm30
  a11a67:	62 f2 7d 48 18 2d f3 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff663bf3]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a11a6e:	3b 66 ff 
  a11a71:	62 f2 5d 48 b8 cd    	vfmadd231ps zmm1,zmm4,zmm5
  a11a77:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm1
  a11a7e:	0c 
  a11a7f:	62 f1 6c 48 59 cd    	vmulps zmm1,zmm2,zmm5
  a11a85:	62 f2 0d 40 bc cc    	vfnmadd231ps zmm1,zmm30,zmm4
  a11a8b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  a11a92:	0b 
  a11a93:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a11a9a:	ff 
  a11a9b:	62 91 74 48 5c d0    	vsubps zmm2,zmm1,zmm24
  a11aa1:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm2
  a11aa8:	18 
  a11aa9:	62 91 7c 40 5c e7    	vsubps zmm4,zmm16,zmm31
  a11aaf:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm4
  a11ab6:	17 
  a11ab7:	62 71 6c 48 5c cc    	vsubps zmm9,zmm2,zmm4
  a11abd:	62 91 14 40 5c d4    	vsubps zmm2,zmm29,zmm28
  a11ac3:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm2
  a11aca:	16 
  a11acb:	62 b1 44 40 5c e6    	vsubps zmm4,zmm23,zmm22
  a11ad1:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm4
  a11ad8:	15 
  a11ad9:	62 61 6c 48 5c cc    	vsubps zmm25,zmm2,zmm4
  a11adf:	62 f1 34 40 59 d5    	vmulps zmm2,zmm25,zmm5
  a11ae5:	62 92 35 48 b8 d6    	vfmadd231ps zmm2,zmm9,zmm30
  a11aeb:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm2
  a11af2:	0a 
  a11af3:	62 f1 34 48 59 e5    	vmulps zmm4,zmm9,zmm5
  a11af9:	62 92 0d 40 bc e1    	vfnmadd231ps zmm4,zmm30,zmm25
  a11aff:	62 f1 7c 48 5c d3    	vsubps zmm2,zmm0,zmm3
  a11b05:	62 f1 64 48 58 c0    	vaddps zmm0,zmm3,zmm0
  a11b0b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm0
  a11b12:	1c 
  a11b13:	62 51 14 48 5c ce    	vsubps zmm9,zmm13,zmm14
  a11b19:	62 41 14 48 58 ce    	vaddps zmm25,zmm13,zmm14
  a11b1f:	62 f1 64 40 58 c7    	vaddps zmm0,zmm19,zmm7
  a11b25:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a11b2c:	05 
  a11b2d:	62 d1 04 48 58 c2    	vaddps zmm0,zmm15,zmm10
  a11b33:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a11b3a:	08 
  a11b3b:	62 01 14 40 58 ec    	vaddps zmm29,zmm29,zmm28
  a11b41:	62 91 7c 40 58 ff    	vaddps zmm7,zmm16,zmm31
  a11b47:	62 81 74 48 58 d8    	vaddps zmm19,zmm1,zmm24
  a11b4d:	62 31 4c 40 58 f7    	vaddps zmm14,zmm22,zmm23
  a11b53:	62 e1 74 40 58 74 24 	vaddps zmm22,zmm17,ZMMWORD PTR [rsp+0x80]
  a11b5a:	02 
  a11b5b:	62 e1 3c 48 58 7c 24 	vaddps zmm23,zmm8,ZMMWORD PTR [rsp+0x500]
  a11b62:	14 
  a11b63:	62 51 1c 48 58 c3    	vaddps zmm8,zmm12,zmm11
  a11b69:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm8
  a11b70:	07 
  a11b71:	62 31 6c 40 58 d5    	vaddps zmm10,zmm18,zmm21
  a11b77:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm10
  a11b7e:	ff 
  a11b7f:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x80]
  a11b86:	fe 
  a11b87:	62 b1 64 48 5c cc    	vsubps zmm1,zmm3,zmm20
  a11b8d:	62 21 64 48 58 e4    	vaddps zmm28,zmm3,zmm20
  a11b93:	62 11 4c 48 5c db    	vsubps zmm11,zmm6,zmm27
  a11b99:	62 f1 24 40 58 f6    	vaddps zmm6,zmm27,zmm6
  a11b9f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a11ba6:	03 
  a11ba7:	62 61 7c 48 58 5c 24 	vaddps zmm27,zmm0,ZMMWORD PTR [rsp+0x40]
  a11bae:	01 
  a11baf:	62 f1 2c 40 58 5c 24 	vaddps zmm3,zmm26,ZMMWORD PTR [rsp+0x180]
  a11bb6:	06 
  a11bb7:	62 a1 4c 40 5c e7    	vsubps zmm20,zmm22,zmm23
  a11bbd:	62 41 3c 48 5c fa    	vsubps zmm31,zmm8,zmm10
  a11bc3:	62 91 5c 40 58 c7    	vaddps zmm0,zmm20,zmm31
  a11bc9:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a11bd0:	62 b1 04 40 5c c4    	vsubps zmm0,zmm31,zmm20
  a11bd6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a11bdd:	02 
  a11bde:	62 e1 14 40 5c e7    	vsubps zmm20,zmm29,zmm7
  a11be4:	62 61 7c 48 28 ff    	vmovaps zmm31,zmm7
  a11bea:	62 d1 64 40 5c c6    	vsubps zmm0,zmm19,zmm14
  a11bf0:	62 f1 5c 40 5c f8    	vsubps zmm7,zmm20,zmm0
  a11bf6:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm7
  a11bfd:	fe 
  a11bfe:	62 a1 7c 48 58 e4    	vaddps zmm20,zmm0,zmm20
  a11c04:	62 51 6c 48 5c c3    	vsubps zmm8,zmm2,zmm11
  a11c0a:	62 f1 24 48 58 c2    	vaddps zmm0,zmm11,zmm2
  a11c10:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a11c17:	03 
  a11c18:	62 72 7d 48 18 2d 7a 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff66377a]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a11c1f:	37 66 ff 
  a11c22:	62 71 14 48 59 5c 24 	vmulps zmm11,zmm13,ZMMWORD PTR [rsp+0x740]
  a11c29:	1d 
  a11c2a:	62 f1 14 48 59 44 24 	vmulps zmm0,zmm13,ZMMWORD PTR [rsp+0x640]
  a11c31:	19 
  a11c32:	62 f1 24 48 58 d0    	vaddps zmm2,zmm11,zmm0
  a11c38:	62 e1 24 48 5c d0    	vsubps zmm18,zmm11,zmm0
  a11c3e:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x5c0]
  a11c45:	17 
  a11c46:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x600]
  a11c4d:	18 
  a11c4e:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x540]
  a11c55:	15 
  a11c56:	62 f1 44 48 58 7c 24 	vaddps zmm7,zmm7,ZMMWORD PTR [rsp+0x580]
  a11c5d:	16 
  a11c5e:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x780]
  a11c65:	1e 
  a11c66:	62 71 2c 48 58 7c 24 	vaddps zmm15,zmm10,ZMMWORD PTR [rsp+0x7c0]
  a11c6d:	1f 
  a11c6e:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x680]
  a11c75:	1a 
  a11c76:	62 e1 2c 48 58 44 24 	vaddps zmm16,zmm10,ZMMWORD PTR [rsp+0x6c0]
  a11c7d:	1b 
  a11c7e:	62 c1 74 48 5c c9    	vsubps zmm17,zmm1,zmm9
  a11c84:	62 d1 74 48 58 c9    	vaddps zmm1,zmm1,zmm9
  a11c8a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a11c91:	06 
  a11c92:	62 71 14 48 59 54 24 	vmulps zmm10,zmm13,ZMMWORD PTR [rsp+0x240]
  a11c99:	09 
  a11c9a:	62 61 14 48 59 44 24 	vmulps zmm24,zmm13,ZMMWORD PTR [rsp+0x100]
  a11ca1:	04 
  a11ca2:	62 01 2c 48 5c d0    	vsubps zmm26,zmm10,zmm24
  a11ca8:	62 51 3c 40 58 da    	vaddps zmm11,zmm24,zmm10
  a11cae:	62 61 7c 40 59 c5    	vmulps zmm24,zmm16,zmm5
  a11cb4:	62 02 05 48 b8 c6    	vfmadd231ps zmm24,zmm15,zmm30
  a11cba:	62 81 7c 40 59 c6    	vmulps zmm16,zmm16,zmm30
  a11cc0:	62 c2 55 48 bc c7    	vfnmadd231ps zmm16,zmm5,zmm15
  a11cc6:	62 11 44 48 59 fe    	vmulps zmm15,zmm7,zmm30
  a11ccc:	62 72 7d 48 b8 fd    	vfmadd231ps zmm15,zmm0,zmm5
  a11cd2:	62 f1 44 48 59 fd    	vmulps zmm7,zmm7,zmm5
  a11cd8:	62 f2 0d 40 bc f8    	vfnmadd231ps zmm7,zmm30,zmm0
  a11cde:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x700]
  a11ce5:	1c 
  a11ce6:	62 91 74 48 5c c1    	vsubps zmm0,zmm1,zmm25
  a11cec:	62 e1 34 40 58 e9    	vaddps zmm21,zmm25,zmm1
  a11cf2:	62 61 24 40 5c cb    	vsubps zmm25,zmm27,zmm3
  a11cf8:	62 f1 24 40 58 eb    	vaddps zmm5,zmm27,zmm3
  a11cfe:	62 d1 64 40 58 ce    	vaddps zmm1,zmm19,zmm14
  a11d04:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a11d0b:	04 
  a11d0c:	62 21 4c 40 58 f7    	vaddps zmm30,zmm22,zmm23
  a11d12:	62 e1 1c 40 5c f6    	vsubps zmm22,zmm28,zmm6
  a11d18:	62 71 1c 40 58 e6    	vaddps zmm12,zmm28,zmm6
  a11d1e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a11d25:	05 
  a11d26:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x200]
  a11d2d:	08 
  a11d2e:	62 e1 74 48 5c fb    	vsubps zmm23,zmm1,zmm3
  a11d34:	62 61 64 48 58 d9    	vaddps zmm27,zmm3,zmm1
  a11d3a:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x1c0]
  a11d41:	07 
  a11d42:	62 71 74 48 58 74 24 	vaddps zmm14,zmm1,ZMMWORD PTR [rsp-0x40]
  a11d49:	ff 
  a11d4a:	62 01 14 40 58 e7    	vaddps zmm28,zmm29,zmm31
  a11d50:	62 01 3c 48 5c ea    	vsubps zmm29,zmm8,zmm26
  a11d56:	62 d1 2c 40 58 c8    	vaddps zmm1,zmm26,zmm8
  a11d5c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a11d63:	ff 
  a11d64:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x2c0]
  a11d6b:	0b 
  a11d6c:	62 e1 74 48 5c dc    	vsubps zmm19,zmm1,zmm4
  a11d72:	62 f1 74 48 58 cc    	vaddps zmm1,zmm1,zmm4
  a11d78:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a11d7f:	01 
  a11d80:	62 71 74 40 5c d2    	vsubps zmm10,zmm17,zmm2
  a11d86:	62 f1 74 40 58 ca    	vaddps zmm1,zmm17,zmm2
  a11d8c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a11d93:	05 
  a11d94:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x300]
  a11d9b:	0c 
  a11d9c:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x280]
  a11da3:	0a 
  a11da4:	62 71 74 48 58 c2    	vaddps zmm8,zmm1,zmm2
  a11daa:	62 61 74 48 5c d2    	vsubps zmm26,zmm1,zmm2
  a11db0:	62 31 7c 48 5c cf    	vsubps zmm9,zmm0,zmm23
  a11db6:	62 e1 44 40 58 f8    	vaddps zmm23,zmm23,zmm0
  a11dbc:	62 f1 14 48 59 44 24 	vmulps zmm0,zmm13,ZMMWORD PTR [rsp+0x80]
  a11dc3:	02 
  a11dc4:	62 c1 5c 40 59 cd    	vmulps zmm17,zmm20,zmm13
  a11dca:	62 a1 7c 48 58 e1    	vaddps zmm20,zmm0,zmm17
  a11dd0:	62 21 7c 48 5c f9    	vsubps zmm31,zmm0,zmm17
  a11dd6:	62 81 4c 40 5c c9    	vsubps zmm17,zmm22,zmm25
  a11ddc:	62 81 4c 40 58 f1    	vaddps zmm22,zmm22,zmm25
  a11de2:	62 f1 14 48 59 44 24 	vmulps zmm0,zmm13,ZMMWORD PTR [rsp-0x80]
  a11de9:	fe 
  a11dea:	62 61 14 48 59 0c 24 	vmulps zmm25,zmm13,ZMMWORD PTR [rsp]
  a11df1:	62 91 7c 48 5c d1    	vsubps zmm2,zmm0,zmm25
  a11df7:	62 61 34 40 58 c8    	vaddps zmm25,zmm25,zmm0
  a11dfd:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a11e04:	03 
  a11e05:	62 b1 7c 48 5c e2    	vsubps zmm4,zmm0,zmm18
  a11e0b:	62 e1 6c 40 58 d0    	vaddps zmm18,zmm18,zmm0
  a11e11:	62 f1 7c 40 5c df    	vsubps zmm3,zmm16,zmm7
  a11e17:	62 71 7c 40 58 ef    	vaddps zmm13,zmm16,zmm7
  a11e1d:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a11e24:	06 
  a11e25:	62 c1 7c 48 5c c3    	vsubps zmm16,zmm0,zmm11
  a11e2b:	62 51 7c 48 58 db    	vaddps zmm11,zmm0,zmm11
  a11e31:	62 91 04 48 5c c0    	vsubps zmm0,zmm15,zmm24
  a11e37:	62 41 3c 40 58 c7    	vaddps zmm24,zmm24,zmm15
  a11e3d:	62 71 54 40 5c fd    	vsubps zmm15,zmm21,zmm5
  a11e43:	62 b1 54 48 58 fd    	vaddps zmm7,zmm5,zmm21
  a11e49:	62 91 0c 48 5c cc    	vsubps zmm1,zmm14,zmm28
  a11e4f:	62 01 0c 48 58 e4    	vaddps zmm28,zmm14,zmm28
  a11e55:	62 11 1c 48 5c f3    	vsubps zmm14,zmm12,zmm27
  a11e5b:	62 91 1c 48 58 f3    	vaddps zmm6,zmm12,zmm27
  a11e61:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x100]
  a11e68:	04 
  a11e69:	62 81 54 48 5c ee    	vsubps zmm21,zmm5,zmm30
  a11e6f:	62 f1 0c 40 58 ed    	vaddps zmm5,zmm30,zmm5
  a11e75:	62 41 14 40 58 f0    	vaddps zmm30,zmm29,zmm8
  a11e7b:	62 51 14 40 5c e0    	vsubps zmm12,zmm29,zmm8
  a11e81:	62 31 2c 48 5c c3    	vsubps zmm8,zmm10,zmm19
  a11e87:	62 71 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm8
  a11e8e:	62 21 2c 48 58 eb    	vaddps zmm29,zmm10,zmm19
  a11e94:	62 61 34 48 5c da    	vsubps zmm27,zmm9,zmm2
  a11e9a:	62 71 34 48 58 ca    	vaddps zmm9,zmm9,zmm2
  a11ea0:	62 b1 74 40 5c d4    	vsubps zmm2,zmm17,zmm20
  a11ea6:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a11ead:	fe 
  a11eae:	62 a1 74 40 58 cc    	vaddps zmm17,zmm17,zmm20
  a11eb4:	62 f1 5c 48 5c d0    	vsubps zmm2,zmm4,zmm0
  a11eba:	62 f1 5c 48 58 c0    	vaddps zmm0,zmm4,zmm0
  a11ec0:	62 e1 7c 40 5c e3    	vsubps zmm20,zmm16,zmm3
  a11ec6:	62 e1 7c 40 58 c3    	vaddps zmm16,zmm16,zmm3
  a11ecc:	62 b1 04 48 5c e5    	vsubps zmm4,zmm15,zmm21
  a11ed2:	62 b1 04 48 58 dd    	vaddps zmm3,zmm15,zmm21
  a11ed8:	62 e1 0c 48 5c e9    	vsubps zmm21,zmm14,zmm1
  a11ede:	62 f1 0c 48 58 c9    	vaddps zmm1,zmm14,zmm1
  a11ee4:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp-0x40]
  a11eeb:	ff 
  a11eec:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x40]
  a11ef3:	01 
  a11ef4:	62 51 2c 48 5c c6    	vsubps zmm8,zmm10,zmm14
  a11efa:	62 51 2c 48 58 fe    	vaddps zmm15,zmm10,zmm14
  a11f00:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x140]
  a11f07:	05 
  a11f08:	62 81 2c 48 5c da    	vsubps zmm19,zmm10,zmm26
  a11f0e:	62 01 2c 48 58 d2    	vaddps zmm26,zmm10,zmm26
  a11f14:	62 11 44 40 5c d7    	vsubps zmm10,zmm23,zmm31
  a11f1a:	62 01 44 40 58 ff    	vaddps zmm31,zmm23,zmm31
  a11f20:	62 81 4c 40 5c f9    	vsubps zmm23,zmm22,zmm25
  a11f26:	62 81 4c 40 58 f1    	vaddps zmm22,zmm22,zmm25
  a11f2c:	62 51 6c 40 5c f5    	vsubps zmm14,zmm18,zmm13
  a11f32:	62 c1 6c 40 58 d5    	vaddps zmm18,zmm18,zmm13
  a11f38:	62 11 24 48 5c e8    	vsubps zmm13,zmm11,zmm24
  a11f3e:	62 11 24 48 58 d8    	vaddps zmm11,zmm11,zmm24
  a11f44:	62 01 44 48 5c c4    	vsubps zmm24,zmm7,zmm28
  a11f4a:	62 91 44 48 58 fc    	vaddps zmm7,zmm7,zmm28
  a11f50:	62 61 4c 48 5c cd    	vsubps zmm25,zmm6,zmm5
  a11f56:	62 f1 4c 48 58 ed    	vaddps zmm5,zmm6,zmm5
  a11f5c:	62 f3 7d 48 19 fe 02 	vextractf32x4 xmm6,zmm7,0x2
  a11f63:	62 61 7c 48 28 25 53 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff67d153]        # 8f0c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c570>
  a11f6a:	d1 67 ff 
  a11f6d:	62 f2 1d 40 7f fd    	vpermt2ps zmm7,zmm28,zmm5
  a11f73:	62 f1 7c 48 11 3c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm7
  a11f7a:	62 f3 7d 48 19 ed 02 	vextractf32x4 xmm5,zmm5,0x2
  a11f81:	c5 c8 14 ed          	vunpcklps xmm5,xmm6,xmm5
  a11f85:	c5 f8 11 6c 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm5
  a11f8b:	62 e3 7d 48 19 d5 02 	vextractf32x4 xmm5,zmm18,0x2
  a11f92:	62 c2 1d 40 7f d3    	vpermt2ps zmm18,zmm28,zmm11
  a11f98:	62 e1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x50],zmm18
  a11f9f:	50 00 00 00 
  a11fa3:	62 73 7d 48 19 de 02 	vextractf32x4 xmm6,zmm11,0x2
  a11faa:	c5 d0 14 ee          	vunpcklps xmm5,xmm5,xmm6
  a11fae:	c5 f8 11 ac 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm5
  a11fb5:	00 00 
  a11fb7:	62 63 7d 48 19 fd 02 	vextractf32x4 xmm5,zmm31,0x2
  a11fbe:	62 22 1d 40 7f fe    	vpermt2ps zmm31,zmm28,zmm22
  a11fc4:	62 61 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xa0],zmm31
  a11fcb:	a0 00 00 00 
  a11fcf:	62 e3 7d 48 19 f6 02 	vextractf32x4 xmm6,zmm22,0x2
  a11fd6:	c5 d0 14 ee          	vunpcklps xmm5,xmm5,xmm6
  a11fda:	c5 f8 11 ac 16 e0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xe0],xmm5
  a11fe1:	00 00 
  a11fe3:	62 73 7d 48 19 fd 02 	vextractf32x4 xmm5,zmm15,0x2
  a11fea:	62 12 1d 40 7f fa    	vpermt2ps zmm15,zmm28,zmm26
  a11ff0:	62 71 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm15
  a11ff7:	f0 00 00 00 
  a11ffb:	62 63 7d 48 19 d6 02 	vextractf32x4 xmm6,zmm26,0x2
  a12002:	c5 d0 14 ee          	vunpcklps xmm5,xmm5,xmm6
  a12006:	c5 f8 11 ac 16 30 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x130],xmm5
  a1200d:	00 00 
  a1200f:	62 f3 7d 48 19 dd 02 	vextractf32x4 xmm5,zmm3,0x2
  a12016:	62 f2 1d 40 7f d9    	vpermt2ps zmm3,zmm28,zmm1
  a1201c:	62 f1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm3
  a12023:	05 
  a12024:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a1202b:	c5 d0 14 c9          	vunpcklps xmm1,xmm5,xmm1
  a1202f:	c5 f8 11 8c 16 80 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x180],xmm1
  a12036:	00 00 
  a12038:	62 f3 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm0,0x2
  a1203f:	62 b2 1d 40 7f c0    	vpermt2ps zmm0,zmm28,zmm16
  a12045:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x190],zmm0
  a1204c:	90 01 00 00 
  a12050:	62 e3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm16,0x2
  a12057:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a1205b:	c5 f8 11 84 16 d0 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x1d0],xmm0
  a12062:	00 00 
  a12064:	62 73 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm9,0x2
  a1206b:	62 32 1d 40 7f c9    	vpermt2ps zmm9,zmm28,zmm17
  a12071:	62 71 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm9
  a12078:	e0 01 00 00 
  a1207c:	62 e3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm17,0x2
  a12083:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a12087:	c5 f8 11 84 16 20 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x220],xmm0
  a1208e:	00 00 
  a12090:	62 73 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm12,0x2
  a12097:	62 12 1d 40 7f e5    	vpermt2ps zmm12,zmm28,zmm29
  a1209d:	62 71 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x230],zmm12
  a120a4:	30 02 00 00 
  a120a8:	62 63 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm29,0x2
  a120af:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a120b3:	c5 f8 11 84 16 70 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x270],xmm0
  a120ba:	00 00 
  a120bc:	62 63 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm24,0x2
  a120c3:	62 02 1d 40 7f c1    	vpermt2ps zmm24,zmm28,zmm25
  a120c9:	62 61 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm24
  a120d0:	0a 
  a120d1:	62 63 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm25,0x2
  a120d8:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a120dc:	c5 f8 11 84 16 c0 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x2c0],xmm0
  a120e3:	00 00 
  a120e5:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a120ec:	62 52 1d 40 7f f5    	vpermt2ps zmm14,zmm28,zmm13
  a120f2:	62 71 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm14
  a120f9:	d0 02 00 00 
  a120fd:	62 73 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm13,0x2
  a12104:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a12108:	c5 f8 11 84 16 10 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x310],xmm0
  a1210f:	00 00 
  a12111:	62 73 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm10,0x2
  a12118:	62 32 1d 40 7f d7    	vpermt2ps zmm10,zmm28,zmm23
  a1211e:	62 71 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x320],zmm10
  a12125:	20 03 00 00 
  a12129:	62 e3 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm23,0x2
  a12130:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a12134:	c5 f8 11 84 16 60 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x360],xmm0
  a1213b:	00 00 
  a1213d:	62 73 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm8,0x2
  a12144:	62 32 1d 40 7f c3    	vpermt2ps zmm8,zmm28,zmm19
  a1214a:	62 71 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x370],zmm8
  a12151:	70 03 00 00 
  a12155:	62 e3 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm19,0x2
  a1215c:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a12160:	c5 f8 11 84 16 b0 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x3b0],xmm0
  a12167:	00 00 
  a12169:	62 f3 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm4,0x2
  a12170:	62 b2 1d 40 7f e5    	vpermt2ps zmm4,zmm28,zmm21
  a12176:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3c0],zmm4
  a1217d:	0f 
  a1217e:	62 e3 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm21,0x2
  a12185:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a12189:	c5 f8 11 84 16 00 04 	vmovups XMMWORD PTR [rsi+rdx*1+0x400],xmm0
  a12190:	00 00 
  a12192:	62 f3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm2,0x2
  a12199:	62 b2 1d 40 7f d4    	vpermt2ps zmm2,zmm28,zmm20
  a1219f:	62 f1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x410],zmm2
  a121a6:	10 04 00 00 
  a121aa:	62 e3 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm20,0x2
  a121b1:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a121b5:	c5 f8 11 84 16 50 04 	vmovups XMMWORD PTR [rsi+rdx*1+0x450],xmm0
  a121bc:	00 00 
  a121be:	62 63 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm27,0x2
  a121c5:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a121cc:	fe 
  a121cd:	62 62 1d 40 7f d9    	vpermt2ps zmm27,zmm28,zmm1
  a121d3:	62 61 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x460],zmm27
  a121da:	60 04 00 00 
  a121de:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a121e5:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a121e9:	c5 f8 11 84 16 a0 04 	vmovups XMMWORD PTR [rsi+rdx*1+0x4a0],xmm0
  a121f0:	00 00 
  a121f2:	62 63 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm30,0x2
  a121f9:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a12200:	62 62 1d 40 7f f1    	vpermt2ps zmm30,zmm28,zmm1
  a12206:	62 61 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4b0],zmm30
  a1220d:	b0 04 00 00 
  a12211:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a12218:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1221c:	c5 f8 11 84 16 f0 04 	vmovups XMMWORD PTR [rsi+rdx*1+0x4f0],xmm0
  a12223:	00 00 
  a12225:	48 81 c2 00 05 00 00 	add    rdx,0x500
  a1222c:	48 39 d0             	cmp    rax,rdx
  a1222f:	0f 85 2b e9 ff ff    	jne    a10b60 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a12235:	48 81 c4 88 09 00 00 	add    rsp,0x988
  a1223c:	c5 f8 77             	vzeroupper
  a1223f:	c3                   	ret
