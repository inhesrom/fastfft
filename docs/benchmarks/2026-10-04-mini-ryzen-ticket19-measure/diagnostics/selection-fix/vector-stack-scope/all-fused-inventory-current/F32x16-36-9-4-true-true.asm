
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a45ac0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a45ac0:	55                   	push   rbp
  a45ac1:	48 89 e5             	mov    rbp,rsp
  a45ac4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a45ac8:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a45acf:	62 f1 7c 48 28 05 a7 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6814a7]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a45ad6:	14 68 ff 
  a45ad9:	48 c1 e2 05          	shl    rdx,0x5
  a45add:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a45ae1:	31 d2                	xor    edx,edx
  a45ae3:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a45ae8:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a45aed:	62 f1 7c 48 28 25 49 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff64c649]        # 92140 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f5f0>
  a45af4:	c6 64 ff 
  a45af7:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a45afb:	62 f2 7d 48 18 35 5b 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff62f95b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a45b02:	f9 62 ff 
  a45b05:	62 f2 7d 48 18 3d c5 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff62f7c5]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a45b0c:	f7 62 ff 
  a45b0f:	62 71 7c 48 28 2d 67 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff64c667]        # 92180 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f630>
  a45b16:	c6 64 ff 
  a45b19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  a45b20:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a45b25:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a45b2a:	62 e1 7c 28 10 2c 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1]
  a45b31:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x20]
  a45b38:	01 
  a45b39:	62 e1 7c 28 10 4c 17 	vmovups ymm17,YMMWORD PTR [rdi+rdx*1+0x40]
  a45b40:	02 
  a45b41:	62 e1 7c 28 10 74 17 	vmovups ymm22,YMMWORD PTR [rdi+rdx*1+0x60]
  a45b48:	03 
  a45b49:	62 a1 7c 48 28 c5    	vmovaps zmm16,zmm21
  a45b4f:	62 e2 15 48 7f ed    	vpermt2ps zmm21,zmm13,zmm5
  a45b55:	62 a1 7c 48 28 e2    	vmovaps zmm20,zmm18
  a45b5b:	62 e2 5d 48 7f c5    	vpermt2ps zmm16,zmm4,zmm5
  a45b61:	62 e2 15 48 7f d5    	vpermt2ps zmm18,zmm13,zmm5
  a45b67:	62 a1 7c 48 28 d9    	vmovaps zmm19,zmm17
  a45b6d:	62 e2 15 48 7f cd    	vpermt2ps zmm17,zmm13,zmm5
  a45b73:	62 e2 5d 48 7f e5    	vpermt2ps zmm20,zmm4,zmm5
  a45b79:	62 21 7c 48 28 c6    	vmovaps zmm24,zmm22
  a45b7f:	62 e2 15 48 7f f5    	vpermt2ps zmm22,zmm13,zmm5
  a45b85:	62 61 7c 28 10 5c 17 	vmovups ymm27,YMMWORD PTR [rdi+rdx*1+0x80]
  a45b8c:	04 
  a45b8d:	62 e2 5d 48 7f dd    	vpermt2ps zmm19,zmm4,zmm5
  a45b93:	62 01 7c 48 28 cb    	vmovaps zmm25,zmm27
  a45b99:	62 62 15 48 7f dd    	vpermt2ps zmm27,zmm13,zmm5
  a45b9f:	62 61 7c 28 10 6c 17 	vmovups ymm29,YMMWORD PTR [rdi+rdx*1+0xa0]
  a45ba6:	05 
  a45ba7:	62 62 5d 48 7f c5    	vpermt2ps zmm24,zmm4,zmm5
  a45bad:	62 01 7c 48 28 f5    	vmovaps zmm30,zmm29
  a45bb3:	62 62 15 48 7f ed    	vpermt2ps zmm29,zmm13,zmm5
  a45bb9:	62 61 7c 28 10 64 17 	vmovups ymm28,YMMWORD PTR [rdi+rdx*1+0xc0]
  a45bc0:	06 
  a45bc1:	62 62 5d 48 7f cd    	vpermt2ps zmm25,zmm4,zmm5
  a45bc7:	62 01 7c 48 28 d4    	vmovaps zmm26,zmm28
  a45bcd:	62 62 15 48 7f e5    	vpermt2ps zmm28,zmm13,zmm5
  a45bd3:	62 61 7c 28 10 7c 17 	vmovups ymm31,YMMWORD PTR [rdi+rdx*1+0xe0]
  a45bda:	07 
  a45bdb:	62 62 5d 48 7f f5    	vpermt2ps zmm30,zmm4,zmm5
  a45be1:	62 11 7c 48 28 c7    	vmovaps zmm8,zmm31
  a45be7:	62 62 15 48 7f fd    	vpermt2ps zmm31,zmm13,zmm5
  a45bed:	c5 7c 10 8c 17 00 01 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x100]
  a45bf4:	00 00 
  a45bf6:	62 72 5d 48 7f c5    	vpermt2ps zmm8,zmm4,zmm5
  a45bfc:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a45c02:	62 72 5d 48 7f e5    	vpermt2ps zmm12,zmm4,zmm5
  a45c08:	62 72 15 48 7f cd    	vpermt2ps zmm9,zmm13,zmm5
  a45c0e:	62 62 5d 48 7f d5    	vpermt2ps zmm26,zmm4,zmm5
  a45c14:	62 11 4c 40 58 f4    	vaddps zmm14,zmm22,zmm28
  a45c1a:	62 91 24 40 58 d7    	vaddps zmm2,zmm27,zmm31
  a45c20:	62 d1 14 40 58 d9    	vaddps zmm3,zmm29,zmm9
  a45c26:	62 c1 54 40 58 fe    	vaddps zmm23,zmm21,zmm14
  a45c2c:	62 c2 4d 48 bc ee    	vfnmadd231ps zmm21,zmm6,zmm14
  a45c32:	62 11 3c 40 58 f2    	vaddps zmm14,zmm24,zmm26
  a45c38:	62 11 3c 40 5c d2    	vsubps zmm10,zmm24,zmm26
  a45c3e:	62 61 6c 40 58 c2    	vaddps zmm24,zmm18,zmm2
  a45c44:	62 e2 4d 48 bc d2    	vfnmadd231ps zmm18,zmm6,zmm2
  a45c4a:	62 d1 34 40 58 d0    	vaddps zmm2,zmm25,zmm8
  a45c50:	62 51 34 40 5c c0    	vsubps zmm8,zmm25,zmm8
  a45c56:	62 61 5c 40 58 d2    	vaddps zmm26,zmm20,zmm2
  a45c5c:	62 e2 4d 48 bc e2    	vfnmadd231ps zmm20,zmm6,zmm2
  a45c62:	62 61 74 40 58 cb    	vaddps zmm25,zmm17,zmm3
  a45c68:	62 91 24 40 5c d7    	vsubps zmm2,zmm27,zmm31
  a45c6e:	62 41 7c 40 58 de    	vaddps zmm27,zmm16,zmm14
  a45c74:	62 e2 4d 48 bc cb    	vfnmadd231ps zmm17,zmm6,zmm3
  a45c7a:	62 d1 0c 40 58 dc    	vaddps zmm3,zmm30,zmm12
  a45c80:	62 51 0c 40 5c e4    	vsubps zmm12,zmm30,zmm12
  a45c86:	62 61 64 40 58 fb    	vaddps zmm31,zmm19,zmm3
  a45c8c:	62 71 2c 48 59 d7    	vmulps zmm10,zmm10,zmm7
  a45c92:	62 71 3c 48 59 c7    	vmulps zmm8,zmm8,zmm7
  a45c98:	62 e2 4d 48 bc db    	vfnmadd231ps zmm19,zmm6,zmm3
  a45c9e:	62 41 54 40 58 f2    	vaddps zmm30,zmm21,zmm10
  a45ca4:	62 f1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm7
  a45caa:	62 d1 14 40 5c d9    	vsubps zmm3,zmm29,zmm9
  a45cb0:	62 c2 4d 48 bc c6    	vfnmadd231ps zmm16,zmm6,zmm14
  a45cb6:	62 51 6c 40 58 c8    	vaddps zmm9,zmm18,zmm8
  a45cbc:	62 71 5c 40 5c f2    	vsubps zmm14,zmm20,zmm2
  a45cc2:	62 71 1c 48 59 e7    	vmulps zmm12,zmm12,zmm7
  a45cc8:	62 01 4c 40 5c e4    	vsubps zmm28,zmm22,zmm28
  a45cce:	62 72 7d 48 18 1d 90 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff62f990]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a45cd5:	f9 62 ff 
  a45cd8:	62 c1 0c 48 59 f3    	vmulps zmm22,zmm14,zmm11
  a45cde:	62 c1 54 40 5c ea    	vsubps zmm21,zmm21,zmm10
  a45ce4:	62 51 74 40 58 d4    	vaddps zmm10,zmm17,zmm12
  a45cea:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a45cf0:	62 62 7d 48 18 2d de 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff62f7de]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a45cf7:	f7 62 ff 
  a45cfa:	62 82 35 48 b8 f5    	vfmadd231ps zmm22,zmm9,zmm29
  a45d00:	62 51 6c 40 5c c0    	vsubps zmm8,zmm18,zmm8
  a45d06:	62 e1 64 40 5c d3    	vsubps zmm18,zmm19,zmm3
  a45d0c:	62 11 0c 48 59 f5    	vmulps zmm14,zmm14,zmm29
  a45d12:	62 52 25 48 bc f1    	vfnmadd231ps zmm14,zmm11,zmm9
  a45d18:	62 72 7d 48 18 3d f6 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff62f5f6]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a45d1f:	f5 62 ff 
  a45d22:	62 51 6c 40 59 cf    	vmulps zmm9,zmm18,zmm15
  a45d28:	62 f2 7d 48 18 0d aa 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff62f7aa]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a45d2f:	f7 62 ff 
  a45d32:	62 72 2d 48 b8 c9    	vfmadd231ps zmm9,zmm10,zmm1
  a45d38:	62 61 6c 40 59 e9    	vmulps zmm29,zmm18,zmm1
  a45d3e:	62 42 05 48 bc ea    	vfnmadd231ps zmm29,zmm15,zmm10
  a45d44:	62 b1 6c 48 58 d4    	vaddps zmm2,zmm2,zmm20
  a45d4a:	62 71 1c 40 59 d7    	vmulps zmm10,zmm28,zmm7
  a45d50:	62 51 74 40 5c e4    	vsubps zmm12,zmm17,zmm12
  a45d56:	62 01 3c 40 58 e1    	vaddps zmm28,zmm24,zmm25
  a45d5c:	62 b1 64 48 58 db    	vaddps zmm3,zmm3,zmm19
  a45d62:	62 c1 7c 40 5c da    	vsubps zmm19,zmm16,zmm10
  a45d68:	62 31 2c 48 58 d0    	vaddps zmm10,zmm10,zmm16
  a45d6e:	62 51 6c 48 59 df    	vmulps zmm11,zmm2,zmm15
  a45d74:	62 72 3d 48 b8 d9    	vfmadd231ps zmm11,zmm8,zmm1
  a45d7a:	62 f1 6c 48 59 d1    	vmulps zmm2,zmm2,zmm1
  a45d80:	62 d2 05 48 bc d0    	vfnmadd231ps zmm2,zmm15,zmm8
  a45d86:	62 f2 7d 48 18 0d 60 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff62f760]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a45d8d:	f7 62 ff 
  a45d90:	62 71 64 48 59 c1    	vmulps zmm8,zmm3,zmm1
  a45d96:	62 72 7d 48 18 3d 58 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff62f858]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a45d9d:	f8 62 ff 
  a45da0:	62 52 1d 48 bc c7    	vfnmadd231ps zmm8,zmm12,zmm15
  a45da6:	62 d1 64 48 59 df    	vmulps zmm3,zmm3,zmm15
  a45dac:	62 d2 75 48 b8 dc    	vfmadd231ps zmm3,zmm1,zmm12
  a45db2:	62 81 44 40 58 e4    	vaddps zmm20,zmm23,zmm28
  a45db8:	62 22 4d 48 ac e7    	vfnmadd213ps zmm28,zmm6,zmm23
  a45dbe:	62 11 2c 40 58 e7    	vaddps zmm12,zmm26,zmm31
  a45dc4:	62 81 2c 40 5c ff    	vsubps zmm23,zmm26,zmm31
  a45dca:	62 c1 24 40 58 c4    	vaddps zmm16,zmm27,zmm12
  a45dd0:	62 12 4d 48 ac e3    	vfnmadd213ps zmm12,zmm6,zmm27
  a45dd6:	62 41 4c 40 58 d1    	vaddps zmm26,zmm22,zmm9
  a45ddc:	62 01 3c 40 5c c1    	vsubps zmm24,zmm24,zmm25
  a45de2:	62 81 0c 40 58 d2    	vaddps zmm18,zmm30,zmm26
  a45de8:	62 02 4d 48 ac d6    	vfnmadd213ps zmm26,zmm6,zmm30
  a45dee:	62 01 0c 48 58 f5    	vaddps zmm30,zmm14,zmm29
  a45df4:	62 11 0c 48 5c f5    	vsubps zmm14,zmm14,zmm29
  a45dfa:	62 81 64 40 58 ce    	vaddps zmm17,zmm19,zmm30
  a45e00:	62 22 4d 48 ac f3    	vfnmadd213ps zmm30,zmm6,zmm19
  a45e06:	62 41 24 48 58 d8    	vaddps zmm27,zmm11,zmm8
  a45e0c:	62 51 4c 40 5c c9    	vsubps zmm9,zmm22,zmm9
  a45e12:	62 81 54 40 58 f3    	vaddps zmm22,zmm21,zmm27
  a45e18:	62 22 4d 48 ac dd    	vfnmadd213ps zmm27,zmm6,zmm21
  a45e1e:	62 61 6c 48 5c eb    	vsubps zmm29,zmm2,zmm3
  a45e24:	62 f1 6c 48 58 d3    	vaddps zmm2,zmm2,zmm3
  a45e2a:	62 81 2c 48 58 dd    	vaddps zmm19,zmm10,zmm29
  a45e30:	62 42 4d 48 ac ea    	vfnmadd213ps zmm29,zmm6,zmm10
  a45e36:	62 f1 44 40 59 df    	vmulps zmm3,zmm23,zmm7
  a45e3c:	62 51 24 48 5c c0    	vsubps zmm8,zmm11,zmm8
  a45e42:	62 61 1c 40 58 cb    	vaddps zmm25,zmm28,zmm3
  a45e48:	62 71 3c 40 59 d7    	vmulps zmm10,zmm24,zmm7
  a45e4e:	62 f1 1c 40 5c db    	vsubps zmm3,zmm28,zmm3
  a45e54:	62 c1 1c 48 5c ea    	vsubps zmm21,zmm12,zmm10
  a45e5a:	62 71 0c 48 59 df    	vmulps zmm11,zmm14,zmm7
  a45e60:	62 71 34 48 59 cf    	vmulps zmm9,zmm9,zmm7
  a45e66:	62 f1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm7
  a45e6c:	62 41 2c 48 58 c4    	vaddps zmm24,zmm10,zmm12
  a45e72:	62 51 2c 40 58 d3    	vaddps zmm10,zmm26,zmm11
  a45e78:	62 51 2c 40 5c db    	vsubps zmm11,zmm26,zmm11
  a45e7e:	62 71 24 40 58 e2    	vaddps zmm12,zmm27,zmm2
  a45e84:	62 71 3c 48 59 c7    	vmulps zmm8,zmm8,zmm7
  a45e8a:	62 f1 24 40 5c d2    	vsubps zmm2,zmm27,zmm2
  a45e90:	62 41 14 40 5c d8    	vsubps zmm27,zmm29,zmm8
  a45e96:	62 51 14 40 58 c0    	vaddps zmm8,zmm29,zmm8
  a45e9c:	62 51 0c 40 5c f1    	vsubps zmm14,zmm30,zmm9
  a45ea2:	62 41 0c 40 58 d1    	vaddps zmm26,zmm30,zmm9
  a45ea8:	62 e2 7d 48 7f e2    	vpermt2ps zmm20,zmm0,zmm2
  a45eae:	62 72 7d 48 7f d5    	vpermt2ps zmm10,zmm0,zmm5
  a45eb4:	62 f1 7c 48 28 0d 42 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff681042]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a45ebb:	10 68 ff 
  a45ebe:	62 c2 75 48 7f e2    	vpermt2ps zmm20,zmm1,zmm10
  a45ec4:	62 e2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm5
  a45eca:	62 72 7d 48 7f e5    	vpermt2ps zmm12,zmm0,zmm5
  a45ed0:	62 c2 75 48 7f d4    	vpermt2ps zmm18,zmm1,zmm12
  a45ed6:	62 f2 7d 48 7f dd    	vpermt2ps zmm3,zmm0,zmm5
  a45edc:	62 e2 7d 48 7f f5    	vpermt2ps zmm22,zmm0,zmm5
  a45ee2:	62 e2 75 48 7f f3    	vpermt2ps zmm22,zmm1,zmm3
  a45ee8:	62 62 7d 48 7f cd    	vpermt2ps zmm25,zmm0,zmm5
  a45eee:	62 72 7d 48 7f dd    	vpermt2ps zmm11,zmm0,zmm5
  a45ef4:	62 42 75 48 7f cb    	vpermt2ps zmm25,zmm1,zmm11
  a45efa:	62 a1 dd 40 14 fe    	vunpcklpd zmm23,zmm20,zmm22
  a45f00:	62 a1 dd 40 15 e6    	vunpckhpd zmm20,zmm20,zmm22
  a45f06:	62 c2 7d 48 7f c0    	vpermt2ps zmm16,zmm0,zmm8
  a45f0c:	62 81 ed 40 14 f1    	vunpcklpd zmm22,zmm18,zmm25
  a45f12:	62 e2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm5
  a45f18:	62 e2 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm5
  a45f1e:	62 e2 7d 48 7f ed    	vpermt2ps zmm21,zmm0,zmm5
  a45f24:	62 91 ed 40 15 d1    	vunpckhpd zmm2,zmm18,zmm25
  a45f2a:	62 72 7d 48 7f f5    	vpermt2ps zmm14,zmm0,zmm5
  a45f30:	62 62 7d 48 7f dd    	vpermt2ps zmm27,zmm0,zmm5
  a45f36:	62 62 7d 48 7f c5    	vpermt2ps zmm24,zmm0,zmm5
  a45f3c:	62 a1 7c 48 28 d7    	vmovaps zmm18,zmm23
  a45f42:	62 62 7d 48 7f d5    	vpermt2ps zmm26,zmm0,zmm5
  a45f48:	62 c2 75 48 7f c6    	vpermt2ps zmm16,zmm1,zmm14
  a45f4e:	62 82 75 48 7f cb    	vpermt2ps zmm17,zmm1,zmm27
  a45f54:	62 61 7c 48 28 0d e2 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff680ee2]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a45f5b:	0e 68 ff 
  a45f5e:	62 a2 35 40 7f fe    	vpermt2ps zmm23,zmm25,zmm22
  a45f64:	62 82 75 48 7f d8    	vpermt2ps zmm19,zmm1,zmm24
  a45f6a:	62 82 75 48 7f ea    	vpermt2ps zmm21,zmm1,zmm26
  a45f70:	62 b1 fd 40 14 db    	vunpcklpd zmm3,zmm16,zmm19
  a45f76:	62 31 7c 48 28 c4    	vmovaps zmm8,zmm20
  a45f7c:	62 31 fd 40 15 cb    	vunpckhpd zmm9,zmm16,zmm19
  a45f82:	62 31 f5 40 14 d5    	vunpcklpd zmm10,zmm17,zmm21
  a45f88:	62 31 f5 40 15 dd    	vunpckhpd zmm11,zmm17,zmm21
  a45f8e:	62 e2 35 40 7f e2    	vpermt2ps zmm20,zmm25,zmm2
  a45f94:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a45f9a:	62 d2 35 40 7f da    	vpermt2ps zmm3,zmm25,zmm10
  a45fa0:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  a45fa6:	62 e1 7c 48 28 2d 50 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff680e50]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a45fad:	0e 68 ff 
  a45fb0:	62 72 55 40 7f c2    	vpermt2ps zmm8,zmm21,zmm2
  a45fb6:	62 52 35 40 7f cb    	vpermt2ps zmm9,zmm25,zmm11
  a45fbc:	62 f1 7c 48 10 51 02 	vmovups zmm2,ZMMWORD PTR [rcx+0x80]
  a45fc3:	62 e1 7c 48 10 41 03 	vmovups zmm16,ZMMWORD PTR [rcx+0xc0]
  a45fca:	62 e1 44 40 59 ca    	vmulps zmm17,zmm23,zmm2
  a45fd0:	62 a2 65 48 bc c8    	vfnmadd231ps zmm17,zmm3,zmm16
  a45fd6:	62 f1 64 48 59 d2    	vmulps zmm2,zmm3,zmm2
  a45fdc:	62 f1 7c 48 10 59 06 	vmovups zmm3,ZMMWORD PTR [rcx+0x180]
  a45fe3:	62 b2 7d 40 b8 d7    	vfmadd231ps zmm2,zmm16,zmm23
  a45fe9:	62 e1 7c 48 10 41 07 	vmovups zmm16,ZMMWORD PTR [rcx+0x1c0]
  a45ff0:	62 e1 5c 40 59 db    	vmulps zmm19,zmm20,zmm3
  a45ff6:	62 f1 34 48 59 db    	vmulps zmm3,zmm9,zmm3
  a45ffc:	62 a2 35 48 bc d8    	vfnmadd231ps zmm19,zmm9,zmm16
  a46002:	62 b2 7d 40 b8 dc    	vfmadd231ps zmm3,zmm16,zmm20
  a46008:	62 71 7c 48 10 49 04 	vmovups zmm9,ZMMWORD PTR [rcx+0x100]
  a4600f:	62 e1 7c 48 10 41 05 	vmovups zmm16,ZMMWORD PTR [rcx+0x140]
  a46016:	62 52 55 40 7f f3    	vpermt2ps zmm14,zmm21,zmm11
  a4601c:	62 51 3c 48 59 d9    	vmulps zmm11,zmm8,zmm9
  a46022:	62 32 0d 48 bc d8    	vfnmadd231ps zmm11,zmm14,zmm16
  a46028:	62 51 0c 48 59 c9    	vmulps zmm9,zmm14,zmm9
  a4602e:	62 52 7d 40 b8 c8    	vfmadd231ps zmm9,zmm16,zmm8
  a46034:	62 a2 55 40 7f d6    	vpermt2ps zmm18,zmm21,zmm22
  a4603a:	62 52 55 40 7f e2    	vpermt2ps zmm12,zmm21,zmm10
  a46040:	62 51 6c 40 58 c3    	vaddps zmm8,zmm18,zmm11
  a46046:	62 51 6c 40 5c d3    	vsubps zmm10,zmm18,zmm11
  a4604c:	62 71 6c 48 58 db    	vaddps zmm11,zmm2,zmm3
  a46052:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a46058:	62 d1 34 48 58 dc    	vaddps zmm3,zmm9,zmm12
  a4605e:	62 51 1c 48 5c c9    	vsubps zmm9,zmm12,zmm9
  a46064:	62 31 74 40 58 e3    	vaddps zmm12,zmm17,zmm19
  a4606a:	62 31 64 40 5c f1    	vsubps zmm14,zmm19,zmm17
  a46070:	62 e1 2c 48 58 c2    	vaddps zmm16,zmm10,zmm2
  a46076:	62 f1 2c 48 5c d2    	vsubps zmm2,zmm10,zmm2
  a4607c:	62 51 34 48 58 d6    	vaddps zmm10,zmm9,zmm14
  a46082:	62 51 34 48 5c ce    	vsubps zmm9,zmm9,zmm14
  a46088:	62 51 64 48 5c f3    	vsubps zmm14,zmm3,zmm11
  a4608e:	62 d1 64 48 58 db    	vaddps zmm3,zmm3,zmm11
  a46094:	62 51 3c 48 5c dc    	vsubps zmm11,zmm8,zmm12
  a4609a:	62 51 3c 48 58 c4    	vaddps zmm8,zmm8,zmm12
  a460a0:	62 d3 7d 48 19 dc 02 	vextractf32x4 xmm12,zmm3,0x2
  a460a7:	62 f1 7c 48 28 0d 0f 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff64c10f]        # 921c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f670>
  a460ae:	c1 64 ff 
  a460b1:	62 d2 75 48 7f d8    	vpermt2ps zmm3,zmm1,zmm8
  a460b7:	62 f1 7c 48 11 1c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm3
  a460be:	62 73 7d 48 19 c3 02 	vextractf32x4 xmm3,zmm8,0x2
  a460c5:	c5 98 14 db          	vunpcklps xmm3,xmm12,xmm3
  a460c9:	c5 f8 13 5c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm3
  a460cf:	62 73 7d 48 19 d3 02 	vextractf32x4 xmm3,zmm10,0x2
  a460d6:	62 32 75 48 7f d0    	vpermt2ps zmm10,zmm1,zmm16
  a460dc:	62 71 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x48],zmm10
  a460e3:	48 00 00 00 
  a460e7:	62 c3 7d 48 19 c0 02 	vextractf32x4 xmm8,zmm16,0x2
  a460ee:	c4 c1 60 14 d8       	vunpcklps xmm3,xmm3,xmm8
  a460f3:	c5 f8 13 9c 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm3
  a460fa:	00 00 
  a460fc:	62 73 7d 48 19 f3 02 	vextractf32x4 xmm3,zmm14,0x2
  a46103:	62 52 75 48 7f f3    	vpermt2ps zmm14,zmm1,zmm11
  a46109:	62 71 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x90],zmm14
  a46110:	90 00 00 00 
  a46114:	62 53 7d 48 19 d8 02 	vextractf32x4 xmm8,zmm11,0x2
  a4611b:	c4 c1 60 14 d8       	vunpcklps xmm3,xmm3,xmm8
  a46120:	c5 f8 13 9c 16 d0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xd0],xmm3
  a46127:	00 00 
  a46129:	62 73 7d 48 19 cb 02 	vextractf32x4 xmm3,zmm9,0x2
  a46130:	62 72 75 48 7f ca    	vpermt2ps zmm9,zmm1,zmm2
  a46136:	62 71 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xd8],zmm9
  a4613d:	d8 00 00 00 
  a46141:	62 f3 7d 48 19 d2 02 	vextractf32x4 xmm2,zmm2,0x2
  a46148:	c5 e0 14 d2          	vunpcklps xmm2,xmm3,xmm2
  a4614c:	c5 f8 13 94 16 18 01 	vmovlps QWORD PTR [rsi+rdx*1+0x118],xmm2
  a46153:	00 00 
  a46155:	48 81 c2 20 01 00 00 	add    rdx,0x120
  a4615c:	48 39 d0             	cmp    rax,rdx
  a4615f:	0f 85 bb f9 ff ff    	jne    a45b20 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x60>
  a46165:	48 89 ec             	mov    rsp,rbp
  a46168:	5d                   	pop    rbp
  a46169:	c5 f8 77             	vzeroupper
  a4616c:	c3                   	ret
