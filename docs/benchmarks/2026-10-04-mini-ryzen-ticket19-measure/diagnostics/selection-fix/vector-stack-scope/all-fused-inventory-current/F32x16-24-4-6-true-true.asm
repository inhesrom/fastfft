
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a41b00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a41b00:	55                   	push   rbp
  a41b01:	48 89 e5             	mov    rbp,rsp
  a41b04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a41b08:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a41b0f:	62 f1 7c 48 28 05 67 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff685467]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a41b16:	54 68 ff 
  a41b19:	62 f1 7c 48 28 0d dd 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6853dd]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a41b20:	53 68 ff 
  a41b23:	62 f1 7c 48 28 15 13 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff685413]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a41b2a:	54 68 ff 
  a41b2d:	62 f1 7c 48 28 1d c9 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6852c9]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a41b34:	52 68 ff 
  a41b37:	62 f1 7c 48 28 25 ff 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6852ff]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a41b3e:	52 68 ff 
  a41b41:	48 c1 e2 06          	shl    rdx,0x6
  a41b45:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a41b49:	31 d2                	xor    edx,edx
  a41b4b:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a41b50:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a41b55:	62 61 7c 48 28 05 e1 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff6501e1]        # 91d40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f1f0>
  a41b5c:	01 65 ff 
  a41b5f:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a41b63:	62 61 7c 48 28 0d 13 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff650213]        # 91d80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f230>
  a41b6a:	02 65 ff 
  a41b6d:	c4 41 38 57 c0       	vxorps xmm8,xmm8,xmm8
  a41b72:	62 72 7d 48 18 0d e4 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff6338e4]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a41b79:	38 63 ff 
  a41b7c:	62 52 7d 48 7f c0    	vpermt2ps zmm8,zmm0,zmm8
  a41b82:	62 62 7d 48 18 15 48 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff633748]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a41b89:	37 63 ff 
  a41b8c:	c5 7c 28 1d 4c 56 63 	vmovaps ymm11,YMMWORD PTR [rip+0xffffffffff63564c]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a41b93:	ff 
  a41b94:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a41b9b:	00 00 00 00 00 
  a41ba0:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a41ba5:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a41baa:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  a41baf:	c5 78 10 6c 17 20    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x20]
  a41bb5:	c4 63 11 21 6c 17 24 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x24],0x10
  a41bbc:	10 
  a41bbd:	c4 62 79 18 74 17 28 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x28]
  a41bc4:	c5 78 10 7c 17 50    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x50]
  a41bca:	c4 63 01 21 7c 17 54 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0x54],0x10
  a41bd1:	10 
  a41bd2:	c4 43 09 0c ed 03    	vblendps xmm13,xmm14,xmm13,0x3
  a41bd8:	c4 62 79 18 74 17 58 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x58]
  a41bdf:	c4 63 11 21 6c 17 2c 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x2c],0x30
  a41be6:	30 
  a41be7:	c4 43 09 0c f7 03    	vblendps xmm14,xmm14,xmm15,0x3
  a41bed:	c4 63 09 21 74 17 5c 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x5c],0x30
  a41bf4:	30 
  a41bf5:	62 53 1d 48 18 e5 02 	vinsertf32x4 zmm12,zmm12,xmm13,0x2
  a41bfc:	c5 7c 10 6c 17 30    	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x30]
  a41c02:	62 53 15 48 18 ee 02 	vinsertf32x4 zmm13,zmm13,xmm14,0x2
  a41c09:	c5 7c 10 74 17 60    	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x60]
  a41c0f:	62 51 7c 48 28 fc    	vmovaps zmm15,zmm12
  a41c15:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0x80]
  a41c1c:	08 
  a41c1d:	62 f3 7d 00 21 6c 17 	vinsertps xmm5,xmm16,DWORD PTR [rdi+rdx*1+0x84],0x10
  a41c24:	21 10 
  a41c26:	62 72 35 40 7f e6    	vpermt2ps zmm12,zmm25,zmm6
  a41c2c:	c4 e2 79 18 bc 17 88 	vbroadcastss xmm7,DWORD PTR [rdi+rdx*1+0x88]
  a41c33:	00 00 00 
  a41c36:	c4 e3 41 0c ed 03    	vblendps xmm5,xmm7,xmm5,0x3
  a41c3c:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a41c42:	c4 e3 51 21 ac 17 8c 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x8c],0x30
  a41c49:	00 00 00 30 
  a41c4d:	62 f3 0d 48 18 ed 02 	vinsertf32x4 zmm5,zmm14,xmm5,0x2
  a41c54:	62 72 35 40 7f ee    	vpermt2ps zmm13,zmm25,zmm6
  a41c5a:	c5 78 10 b4 17 b0 00 	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0xb0]
  a41c61:	00 00 
  a41c63:	c4 63 09 21 b4 17 b4 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0xb4],0x10
  a41c6a:	00 00 00 10 
  a41c6e:	62 e1 7c 48 28 cd    	vmovaps zmm17,zmm5
  a41c74:	62 f2 35 40 7f ee    	vpermt2ps zmm5,zmm25,zmm6
  a41c7a:	c4 62 79 18 94 17 b8 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0xb8]
  a41c81:	00 00 00 
  a41c84:	62 72 3d 40 7f fe    	vpermt2ps zmm15,zmm24,zmm6
  a41c8a:	c4 43 29 0c d6 03    	vblendps xmm10,xmm10,xmm14,0x3
  a41c90:	c4 63 29 21 94 17 bc 	vinsertps xmm10,xmm10,DWORD PTR [rdi+rdx*1+0xbc],0x30
  a41c97:	00 00 00 30 
  a41c9b:	62 f2 3d 40 7f fe    	vpermt2ps zmm7,zmm24,zmm6
  a41ca1:	c5 7c 10 b4 17 90 00 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x90]
  a41ca8:	00 00 
  a41caa:	62 53 0d 48 18 d2 02 	vinsertf32x4 zmm10,zmm14,xmm10,0x2
  a41cb1:	62 51 7c 48 28 f2    	vmovaps zmm14,zmm10
  a41cb7:	62 e2 3d 40 7f ce    	vpermt2ps zmm17,zmm24,zmm6
  a41cbd:	62 72 3d 40 7f f6    	vpermt2ps zmm14,zmm24,zmm6
  a41cc3:	62 72 35 40 7f d6    	vpermt2ps zmm10,zmm25,zmm6
  a41cc9:	62 e1 1c 48 58 d5    	vaddps zmm18,zmm12,zmm5
  a41ccf:	62 c1 14 48 58 da    	vaddps zmm19,zmm13,zmm10
  a41cd5:	62 a1 6c 40 58 f3    	vaddps zmm22,zmm18,zmm19
  a41cdb:	62 a1 04 48 58 e1    	vaddps zmm20,zmm15,zmm17
  a41ce1:	62 c1 44 48 58 ee    	vaddps zmm21,zmm7,zmm14
  a41ce7:	62 a1 5c 40 58 c5    	vaddps zmm16,zmm20,zmm21
  a41ced:	62 f1 1c 48 5c ed    	vsubps zmm5,zmm12,zmm5
  a41cf3:	62 d1 44 48 5c fe    	vsubps zmm7,zmm7,zmm14
  a41cf9:	62 31 04 48 5c e1    	vsubps zmm12,zmm15,zmm17
  a41cff:	62 71 54 48 58 f7    	vaddps zmm14,zmm5,zmm7
  a41d05:	62 51 2c 48 5c d5    	vsubps zmm10,zmm10,zmm13
  a41d0b:	62 c1 2c 48 58 cc    	vaddps zmm17,zmm10,zmm12
  a41d11:	62 31 6c 40 5c eb    	vsubps zmm13,zmm18,zmm19
  a41d17:	62 a1 5c 40 5c e5    	vsubps zmm20,zmm20,zmm21
  a41d1d:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a41d23:	62 c1 1c 48 5c ea    	vsubps zmm21,zmm12,zmm10
  a41d29:	62 e2 7d 48 7f f6    	vpermt2ps zmm22,zmm0,zmm6
  a41d2f:	62 72 7d 48 7f f6    	vpermt2ps zmm14,zmm0,zmm6
  a41d35:	62 72 7d 48 7f ee    	vpermt2ps zmm13,zmm0,zmm6
  a41d3b:	62 f2 7d 48 7f ee    	vpermt2ps zmm5,zmm0,zmm6
  a41d41:	62 b1 7c 48 28 fe    	vmovaps zmm7,zmm22
  a41d47:	62 d2 75 48 7f f8    	vpermt2ps zmm7,zmm1,zmm8
  a41d4d:	62 c2 6d 48 7f f0    	vpermt2ps zmm22,zmm2,zmm8
  a41d53:	62 51 7c 48 28 d6    	vmovaps zmm10,zmm14
  a41d59:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a41d5f:	62 52 6d 48 7f f0    	vpermt2ps zmm14,zmm2,zmm8
  a41d65:	62 52 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm8
  a41d6b:	62 52 6d 48 7f e8    	vpermt2ps zmm13,zmm2,zmm8
  a41d71:	62 51 cd 40 14 ed    	vunpcklpd zmm13,zmm22,zmm13
  a41d77:	62 52 75 48 7f d0    	vpermt2ps zmm10,zmm1,zmm8
  a41d7d:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a41d83:	62 c2 75 48 7f d0    	vpermt2ps zmm18,zmm1,zmm8
  a41d89:	62 d2 6d 48 7f e8    	vpermt2ps zmm5,zmm2,zmm8
  a41d8f:	62 f1 8d 48 14 ed    	vunpcklpd zmm5,zmm14,zmm5
  a41d95:	62 51 c5 48 14 f4    	vunpcklpd zmm14,zmm7,zmm12
  a41d9b:	62 51 c5 48 15 fc    	vunpckhpd zmm15,zmm7,zmm12
  a41da1:	62 b1 ad 48 14 fa    	vunpcklpd zmm7,zmm10,zmm18
  a41da7:	62 31 ad 48 15 d2    	vunpckhpd zmm10,zmm10,zmm18
  a41dad:	62 51 7c 48 28 e6    	vmovaps zmm12,zmm14
  a41db3:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a41db9:	62 e2 7d 48 7f c6    	vpermt2ps zmm16,zmm0,zmm6
  a41dbf:	62 c1 7c 48 28 d7    	vmovaps zmm18,zmm15
  a41dc5:	62 e2 7d 48 7f ce    	vpermt2ps zmm17,zmm0,zmm6
  a41dcb:	62 e2 7d 48 7f e6    	vpermt2ps zmm20,zmm0,zmm6
  a41dd1:	62 e2 7d 48 7f ee    	vpermt2ps zmm21,zmm0,zmm6
  a41dd7:	62 e2 65 48 7f dd    	vpermt2ps zmm19,zmm3,zmm5
  a41ddd:	62 a1 7c 48 28 f0    	vmovaps zmm22,zmm16
  a41de3:	62 c2 75 48 7f f0    	vpermt2ps zmm22,zmm1,zmm8
  a41de9:	62 c2 6d 48 7f c0    	vpermt2ps zmm16,zmm2,zmm8
  a41def:	62 72 5d 48 7f ed    	vpermt2ps zmm13,zmm4,zmm5
  a41df5:	62 b1 7c 48 28 e9    	vmovaps zmm5,zmm17
  a41dfb:	62 d2 75 48 7f e8    	vpermt2ps zmm5,zmm1,zmm8
  a41e01:	62 c2 6d 48 7f c8    	vpermt2ps zmm17,zmm2,zmm8
  a41e07:	62 72 65 48 7f e7    	vpermt2ps zmm12,zmm3,zmm7
  a41e0d:	62 a1 7c 48 28 fc    	vmovaps zmm23,zmm20
  a41e13:	62 c2 75 48 7f f8    	vpermt2ps zmm23,zmm1,zmm8
  a41e19:	62 c2 6d 48 7f e0    	vpermt2ps zmm20,zmm2,zmm8
  a41e1f:	62 72 5d 48 7f f7    	vpermt2ps zmm14,zmm4,zmm7
  a41e25:	62 a1 fd 40 14 e4    	vunpcklpd zmm20,zmm16,zmm20
  a41e2b:	62 b1 7c 48 28 fd    	vmovaps zmm7,zmm21
  a41e31:	62 d2 75 48 7f f8    	vpermt2ps zmm7,zmm1,zmm8
  a41e37:	62 c2 65 48 7f d2    	vpermt2ps zmm18,zmm3,zmm10
  a41e3d:	62 c2 6d 48 7f e8    	vpermt2ps zmm21,zmm2,zmm8
  a41e43:	62 a1 f5 40 14 c5    	vunpcklpd zmm16,zmm17,zmm21
  a41e49:	62 a1 cd 40 14 ef    	vunpcklpd zmm21,zmm22,zmm23
  a41e4f:	62 52 5d 48 7f fa    	vpermt2ps zmm15,zmm4,zmm10
  a41e55:	62 31 cd 40 15 d7    	vunpckhpd zmm10,zmm22,zmm23
  a41e5b:	62 e1 d5 48 14 f7    	vunpcklpd zmm22,zmm5,zmm7
  a41e61:	62 f1 d5 48 15 ef    	vunpckhpd zmm5,zmm5,zmm7
  a41e67:	62 a1 7c 48 28 cd    	vmovaps zmm17,zmm21
  a41e6d:	62 a2 5d 48 7f ee    	vpermt2ps zmm21,zmm4,zmm22
  a41e73:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a41e79:	62 a1 7c 48 28 fc    	vmovaps zmm23,zmm20
  a41e7f:	62 72 5d 48 7f d5    	vpermt2ps zmm10,zmm4,zmm5
  a41e85:	62 a2 65 48 7f f8    	vpermt2ps zmm23,zmm3,zmm16
  a41e8b:	62 a2 5d 48 7f e0    	vpermt2ps zmm20,zmm4,zmm16
  a41e91:	62 61 7c 48 10 59 02 	vmovups zmm27,ZMMWORD PTR [rcx+0x80]
  a41e98:	62 a2 65 48 7f ce    	vpermt2ps zmm17,zmm3,zmm22
  a41e9e:	62 61 7c 48 10 61 03 	vmovups zmm28,ZMMWORD PTR [rcx+0xc0]
  a41ea5:	62 61 7c 48 10 69 04 	vmovups zmm29,ZMMWORD PTR [rcx+0x100]
  a41eac:	62 e1 7c 48 10 71 08 	vmovups zmm22,ZMMWORD PTR [rcx+0x200]
  a41eb3:	62 f2 65 48 7f fd    	vpermt2ps zmm7,zmm3,zmm5
  a41eb9:	62 f1 7c 48 10 69 09 	vmovups zmm5,ZMMWORD PTR [rcx+0x240]
  a41ec0:	62 a1 64 40 59 c6    	vmulps zmm16,zmm19,zmm22
  a41ec6:	62 a1 44 40 59 f6    	vmulps zmm22,zmm23,zmm22
  a41ecc:	62 e2 45 40 bc c5    	vfnmadd231ps zmm16,zmm23,zmm5
  a41ed2:	62 61 7c 48 10 71 05 	vmovups zmm30,ZMMWORD PTR [rcx+0x140]
  a41ed9:	62 a2 55 48 b8 f3    	vfmadd231ps zmm22,zmm5,zmm19
  a41edf:	62 f1 7c 48 10 69 06 	vmovups zmm5,ZMMWORD PTR [rcx+0x180]
  a41ee6:	62 81 6c 40 59 dd    	vmulps zmm19,zmm18,zmm29
  a41eec:	62 82 45 48 bc de    	vfnmadd231ps zmm19,zmm7,zmm30
  a41ef2:	62 81 44 48 59 fd    	vmulps zmm23,zmm7,zmm29
  a41ef8:	62 f1 7c 48 10 79 07 	vmovups zmm7,ZMMWORD PTR [rcx+0x1c0]
  a41eff:	62 a2 0d 40 b8 fa    	vfmadd231ps zmm23,zmm30,zmm18
  a41f05:	62 61 7c 48 10 69 0a 	vmovups zmm29,ZMMWORD PTR [rcx+0x280]
  a41f0c:	62 61 04 48 59 f5    	vmulps zmm30,zmm15,zmm5
  a41f12:	62 f1 2c 48 59 ed    	vmulps zmm5,zmm10,zmm5
  a41f18:	62 62 2d 48 bc f7    	vfnmadd231ps zmm30,zmm10,zmm7
  a41f1e:	62 71 7c 48 10 51 0b 	vmovups zmm10,ZMMWORD PTR [rcx+0x2c0]
  a41f25:	62 d2 45 48 b8 ef    	vfmadd231ps zmm5,zmm7,zmm15
  a41f2b:	62 81 14 48 59 d5    	vmulps zmm18,zmm13,zmm29
  a41f31:	62 c2 5d 40 bc d2    	vfnmadd231ps zmm18,zmm20,zmm10
  a41f37:	62 91 0c 48 59 fb    	vmulps zmm7,zmm14,zmm27
  a41f3d:	62 92 55 40 bc fc    	vfnmadd231ps zmm7,zmm21,zmm28
  a41f43:	62 01 5c 40 59 ed    	vmulps zmm29,zmm20,zmm29
  a41f49:	62 21 64 40 58 f8    	vaddps zmm31,zmm19,zmm16
  a41f4f:	62 42 2d 48 b8 ed    	vfmadd231ps zmm29,zmm10,zmm13
  a41f55:	62 11 54 40 59 d3    	vmulps zmm10,zmm21,zmm27
  a41f5b:	62 52 1d 40 b8 d6    	vfmadd231ps zmm10,zmm28,zmm14
  a41f61:	62 71 6c 40 58 ef    	vaddps zmm13,zmm18,zmm7
  a41f67:	62 c1 14 40 58 ea    	vaddps zmm21,zmm29,zmm10
  a41f6d:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  a41f73:	62 51 7c 48 28 f9    	vmovaps zmm15,zmm9
  a41f79:	62 21 44 40 58 de    	vaddps zmm27,zmm23,zmm22
  a41f7f:	62 12 15 48 ac fe    	vfnmadd213ps zmm15,zmm13,zmm30
  a41f85:	62 51 0c 20 58 ed    	vaddps ymm13,ymm30,ymm13
  a41f8b:	62 c1 7c 48 28 e1    	vmovaps zmm20,zmm9
  a41f91:	62 52 05 40 ac f4    	vfnmadd213ps zmm14,zmm31,zmm12
  a41f97:	62 11 1c 28 58 e7    	vaddps ymm12,ymm12,ymm31
  a41f9d:	62 41 7c 48 28 e1    	vmovaps zmm28,zmm9
  a41fa3:	62 62 55 40 ac e5    	vfnmadd213ps zmm28,zmm21,zmm5
  a41fa9:	62 a2 25 40 ac e1    	vfnmadd213ps zmm20,zmm27,zmm17
  a41faf:	62 b1 54 28 58 ed    	vaddps ymm5,ymm5,ymm21
  a41fb5:	62 c1 1c 28 58 ed    	vaddps ymm21,ymm12,ymm13
  a41fbb:	62 a1 24 20 58 c9    	vaddps ymm17,ymm27,ymm17
  a41fc1:	62 61 74 00 58 dd    	vaddps xmm27,xmm17,xmm5
  a41fc7:	62 51 14 20 5c d2    	vsubps ymm10,ymm29,ymm10
  a41fcd:	62 11 2c 28 59 d2    	vmulps ymm10,ymm10,ymm26
  a41fd3:	62 41 04 28 58 ea    	vaddps ymm29,ymm15,ymm10
  a41fd9:	62 22 25 28 7f dd    	vpermt2ps ymm27,ymm11,ymm21
  a41fdf:	62 a1 44 20 5c ee    	vsubps ymm21,ymm23,ymm22
  a41fe5:	62 81 54 20 59 ea    	vmulps ymm21,ymm21,ymm26
  a41feb:	62 a1 0c 28 58 f5    	vaddps ymm22,ymm14,ymm21
  a41ff1:	62 61 7c 28 11 1c 16 	vmovups YMMWORD PTR [rsi+rdx*1],ymm27
  a41ff8:	62 f1 6c 20 5c ff    	vsubps ymm7,ymm18,ymm7
  a41ffe:	62 91 44 28 59 fa    	vmulps ymm7,ymm7,ymm26
  a42004:	62 e1 1c 20 5c d7    	vsubps ymm18,ymm28,ymm7
  a4200a:	62 81 4c 20 5c fd    	vsubps ymm23,ymm22,ymm29
  a42010:	62 a1 64 20 5c c0    	vsubps ymm16,ymm19,ymm16
  a42016:	62 81 7c 20 59 c2    	vmulps ymm16,ymm16,ymm26
  a4201c:	62 a1 5c 20 5c d8    	vsubps ymm19,ymm20,ymm16
  a42022:	62 21 64 00 5c da    	vsubps xmm27,xmm19,xmm18
  a42028:	62 22 25 28 7f df    	vpermt2ps ymm27,ymm11,ymm23
  a4202e:	c4 41 04 5c d2       	vsubps ymm10,ymm15,ymm10
  a42033:	62 31 0c 28 5c f5    	vsubps ymm14,ymm14,ymm21
  a42039:	62 61 7c 28 11 5c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm27
  a42040:	01 
  a42041:	62 f1 1c 20 58 ff    	vaddps ymm7,ymm28,ymm7
  a42047:	c4 41 0c 58 fa       	vaddps ymm15,ymm14,ymm10
  a4204c:	62 a1 7c 20 58 c4    	vaddps ymm16,ymm16,ymm20
  a42052:	62 e1 7c 00 58 e7    	vaddps xmm20,xmm16,xmm7
  a42058:	62 c2 25 28 7f e7    	vpermt2ps ymm20,ymm11,ymm15
  a4205e:	c4 41 1c 5c e5       	vsubps ymm12,ymm12,ymm13
  a42063:	62 f1 74 00 5c ed    	vsubps xmm5,xmm17,xmm5
  a42069:	62 e1 7c 28 11 64 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm20
  a42070:	02 
  a42071:	62 d2 25 28 7f ec    	vpermt2ps ymm5,ymm11,ymm12
  a42077:	62 11 4c 20 58 e5    	vaddps ymm12,ymm22,ymm29
  a4207d:	62 31 64 00 58 ea    	vaddps xmm13,xmm19,xmm18
  a42083:	c5 fc 11 6c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm5
  a42089:	62 52 25 28 7f ec    	vpermt2ps ymm13,ymm11,ymm12
  a4208f:	c4 c1 0c 5c ea       	vsubps ymm5,ymm14,ymm10
  a42094:	62 f1 7c 00 5c ff    	vsubps xmm7,xmm16,xmm7
  a4209a:	c5 7c 11 ac 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm13
  a420a1:	00 00 
  a420a3:	62 f2 25 28 7f fd    	vpermt2ps ymm7,ymm11,ymm5
  a420a9:	c5 fc 11 bc 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm7
  a420b0:	00 00 
  a420b2:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  a420b9:	48 39 d0             	cmp    rax,rdx
  a420bc:	0f 85 de fa ff ff    	jne    a41ba0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0xa0>
  a420c2:	48 89 ec             	mov    rsp,rbp
  a420c5:	5d                   	pop    rbp
  a420c6:	c5 f8 77             	vzeroupper
  a420c9:	c3                   	ret
