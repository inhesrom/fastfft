
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a57a80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a57a80:	48 81 ec c8 00 00 00 	sub    rsp,0xc8
  a57a87:	48 c1 e2 08          	shl    rdx,0x8
  a57a8b:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a57a8f:	31 d2                	xor    edx,edx
  a57a91:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a57a98:	0f 1f 84 00 00 00 00 
  a57a9f:	00 
  a57aa0:	62 f1 7c 48 10 34 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1]
  a57aa7:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x40]
  a57aae:	01 
  a57aaf:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x80]
  a57ab6:	02 
  a57ab7:	62 e1 7c 48 10 4c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a57abe:	03 
  a57abf:	62 e1 7c 48 28 d6    	vmovaps zmm18,zmm6
  a57ac5:	62 f1 7c 48 28 05 f1 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff63b6f1]        # 931c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20670>
  a57acc:	b6 63 ff 
  a57acf:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a57ad4:	62 c2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm13
  a57ada:	62 f1 7c 48 28 2d 1c 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff63b71c]        # 93200 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x206b0>
  a57ae1:	b7 63 ff 
  a57ae4:	62 d2 55 48 7f f5    	vpermt2ps zmm6,zmm5,zmm13
  a57aea:	62 31 7c 48 28 fb    	vmovaps zmm15,zmm19
  a57af0:	62 52 7d 48 7f fd    	vpermt2ps zmm15,zmm0,zmm13
  a57af6:	62 c2 55 48 7f dd    	vpermt2ps zmm19,zmm5,zmm13
  a57afc:	62 c1 7c 48 28 fe    	vmovaps zmm23,zmm14
  a57b02:	62 c2 7d 48 7f fd    	vpermt2ps zmm23,zmm0,zmm13
  a57b08:	62 52 55 48 7f f5    	vpermt2ps zmm14,zmm5,zmm13
  a57b0e:	62 a1 7c 48 28 c1    	vmovaps zmm16,zmm17
  a57b14:	62 c2 7d 48 7f c5    	vpermt2ps zmm16,zmm0,zmm13
  a57b1a:	62 c2 55 48 7f cd    	vpermt2ps zmm17,zmm5,zmm13
  a57b20:	62 e1 7c 48 10 6c 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x100]
  a57b27:	04 
  a57b28:	62 b1 7c 48 28 cd    	vmovaps zmm1,zmm21
  a57b2e:	62 d2 7d 48 7f cd    	vpermt2ps zmm1,zmm0,zmm13
  a57b34:	62 c2 55 48 7f ed    	vpermt2ps zmm21,zmm5,zmm13
  a57b3a:	62 61 7c 48 10 64 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x140]
  a57b41:	05 
  a57b42:	62 81 7c 48 28 f4    	vmovaps zmm22,zmm28
  a57b48:	62 c2 7d 48 7f f5    	vpermt2ps zmm22,zmm0,zmm13
  a57b4e:	62 42 55 48 7f e5    	vpermt2ps zmm28,zmm5,zmm13
  a57b54:	62 e1 7c 48 10 64 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x180]
  a57b5b:	06 
  a57b5c:	62 21 7c 48 28 ec    	vmovaps zmm29,zmm20
  a57b62:	62 42 7d 48 7f ed    	vpermt2ps zmm29,zmm0,zmm13
  a57b68:	62 c2 55 48 7f e5    	vpermt2ps zmm20,zmm5,zmm13
  a57b6e:	62 61 7c 48 10 74 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a57b75:	07 
  a57b76:	62 01 7c 48 28 de    	vmovaps zmm27,zmm30
  a57b7c:	62 42 7d 48 7f dd    	vpermt2ps zmm27,zmm0,zmm13
  a57b82:	62 42 55 48 7f f5    	vpermt2ps zmm30,zmm5,zmm13
  a57b88:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x200]
  a57b8f:	08 
  a57b90:	62 61 7c 48 28 fa    	vmovaps zmm31,zmm2
  a57b96:	62 42 7d 48 7f fd    	vpermt2ps zmm31,zmm0,zmm13
  a57b9c:	62 d2 55 48 7f d5    	vpermt2ps zmm2,zmm5,zmm13
  a57ba2:	62 71 7c 48 10 54 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x240]
  a57ba9:	09 
  a57baa:	62 d1 7c 48 28 da    	vmovaps zmm3,zmm10
  a57bb0:	62 d2 7d 48 7f dd    	vpermt2ps zmm3,zmm0,zmm13
  a57bb6:	62 52 55 48 7f d5    	vpermt2ps zmm10,zmm5,zmm13
  a57bbc:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x280]
  a57bc3:	0a 
  a57bc4:	62 61 7c 48 28 d4    	vmovaps zmm26,zmm4
  a57bca:	62 42 7d 48 7f d5    	vpermt2ps zmm26,zmm0,zmm13
  a57bd0:	62 d2 55 48 7f e5    	vpermt2ps zmm4,zmm5,zmm13
  a57bd6:	62 71 7c 48 10 4c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  a57bdd:	0b 
  a57bde:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a57be4:	62 52 7d 48 7f dd    	vpermt2ps zmm11,zmm0,zmm13
  a57bea:	62 52 55 48 7f cd    	vpermt2ps zmm9,zmm5,zmm13
  a57bf0:	62 01 6c 40 58 c5    	vaddps zmm24,zmm18,zmm29
  a57bf6:	62 61 7c 40 58 cb    	vaddps zmm25,zmm16,zmm3
  a57bfc:	62 11 74 48 58 e2    	vaddps zmm12,zmm1,zmm26
  a57c02:	62 51 24 40 58 c7    	vaddps zmm8,zmm27,zmm15
  a57c08:	62 b1 04 40 58 ef    	vaddps zmm5,zmm31,zmm23
  a57c0e:	62 01 74 48 5c d2    	vsubps zmm26,zmm1,zmm26
  a57c14:	62 b1 0c 40 58 fb    	vaddps zmm7,zmm30,zmm19
  a57c1a:	62 b1 0c 40 5c c3    	vsubps zmm0,zmm30,zmm19
  a57c20:	62 a1 24 48 58 de    	vaddps zmm19,zmm11,zmm22
  a57c26:	62 a1 04 40 5c ff    	vsubps zmm23,zmm31,zmm23
  a57c2c:	62 01 34 48 58 f4    	vaddps zmm30,zmm9,zmm28
  a57c32:	62 11 34 48 5c cc    	vsubps zmm9,zmm9,zmm28
  a57c38:	62 21 4c 48 58 e4    	vaddps zmm28,zmm6,zmm20
  a57c3e:	62 01 6c 40 5c ed    	vsubps zmm29,zmm18,zmm29
  a57c44:	62 41 74 40 58 fa    	vaddps zmm31,zmm17,zmm10
  a57c4a:	62 51 74 40 5c d2    	vsubps zmm10,zmm17,zmm10
  a57c50:	62 e1 54 40 58 cc    	vaddps zmm17,zmm21,zmm4
  a57c56:	62 f1 54 40 5c e4    	vsubps zmm4,zmm21,zmm4
  a57c5c:	62 c1 6c 48 58 d6    	vaddps zmm18,zmm2,zmm14
  a57c62:	62 81 04 48 5c eb    	vsubps zmm21,zmm15,zmm27
  a57c68:	62 71 54 40 58 fc    	vaddps zmm15,zmm21,zmm4
  a57c6e:	62 d1 6c 48 5c d6    	vsubps zmm2,zmm2,zmm14
  a57c74:	62 51 4c 40 5c db    	vsubps zmm11,zmm22,zmm11
  a57c7a:	62 71 24 48 58 f2    	vaddps zmm14,zmm11,zmm2
  a57c80:	62 d1 04 48 5c ce    	vsubps zmm1,zmm15,zmm14
  a57c86:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a57c8d:	fe 
  a57c8e:	62 d1 04 48 58 ce    	vaddps zmm1,zmm15,zmm14
  a57c94:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a57c9b:	01 
  a57c9c:	62 71 2c 40 58 f0    	vaddps zmm14,zmm26,zmm0
  a57ca2:	62 a1 4c 48 5c e4    	vsubps zmm20,zmm6,zmm20
  a57ca8:	62 41 44 40 58 d9    	vaddps zmm27,zmm23,zmm9
  a57cae:	62 b1 64 48 5c d8    	vsubps zmm3,zmm3,zmm16
  a57cb4:	62 91 0c 48 58 cb    	vaddps zmm1,zmm14,zmm27
  a57cba:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a57cc1:	62 81 0c 48 5c f3    	vsubps zmm22,zmm14,zmm27
  a57cc7:	62 51 1c 48 58 f8    	vaddps zmm15,zmm12,zmm8
  a57ccd:	62 51 1c 48 5c c0    	vsubps zmm8,zmm12,zmm8
  a57cd3:	62 31 54 48 58 e3    	vaddps zmm12,zmm5,zmm19
  a57cd9:	62 b1 54 48 5c eb    	vsubps zmm5,zmm5,zmm19
  a57cdf:	62 81 3c 40 58 d9    	vaddps zmm19,zmm24,zmm25
  a57ce5:	62 01 3c 40 5c c9    	vsubps zmm25,zmm24,zmm25
  a57ceb:	62 61 74 40 58 c7    	vaddps zmm24,zmm17,zmm7
  a57cf1:	62 f1 74 40 5c ff    	vsubps zmm7,zmm17,zmm7
  a57cf7:	62 81 6c 40 58 ce    	vaddps zmm17,zmm18,zmm30
  a57cfd:	62 11 6c 40 5c f6    	vsubps zmm14,zmm18,zmm30
  a57d03:	62 d1 44 48 5c f6    	vsubps zmm6,zmm7,zmm14
  a57d09:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm6
  a57d10:	ff 
  a57d11:	62 d1 44 48 58 fe    	vaddps zmm7,zmm7,zmm14
  a57d17:	62 01 1c 40 58 f7    	vaddps zmm30,zmm28,zmm31
  a57d1d:	62 01 1c 40 5c e7    	vsubps zmm28,zmm28,zmm31
  a57d23:	62 61 3c 48 58 fd    	vaddps zmm31,zmm8,zmm5
  a57d29:	62 f1 3c 48 5c ed    	vsubps zmm5,zmm8,zmm5
  a57d2f:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm5
  a57d36:	02 
  a57d37:	62 41 14 40 58 da    	vaddps zmm27,zmm29,zmm10
  a57d3d:	62 51 14 40 5c d2    	vsubps zmm10,zmm29,zmm10
  a57d43:	62 71 2c 40 5c c0    	vsubps zmm8,zmm26,zmm0
  a57d49:	62 41 04 48 58 d4    	vaddps zmm26,zmm15,zmm12
  a57d4f:	62 51 44 40 5c c9    	vsubps zmm9,zmm23,zmm9
  a57d55:	62 21 64 48 58 ec    	vaddps zmm29,zmm3,zmm20
  a57d5b:	62 f1 5c 40 5c db    	vsubps zmm3,zmm20,zmm3
  a57d61:	62 11 64 40 58 f2    	vaddps zmm14,zmm19,zmm26
  a57d67:	62 b1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm21
  a57d6d:	62 b1 3c 40 58 f1    	vaddps zmm6,zmm24,zmm17
  a57d73:	62 d1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm11
  a57d79:	62 e1 0c 40 58 c6    	vaddps zmm16,zmm30,zmm6
  a57d7f:	62 f2 7d 48 18 05 d7 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff61d6d7]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a57d86:	d6 61 ff 
  a57d89:	62 22 7d 48 ac d3    	vfnmadd213ps zmm26,zmm0,zmm19
  a57d8f:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a57d95:	62 12 75 48 ac db    	vfnmadd213ps zmm11,zmm1,zmm27
  a57d9b:	62 f2 7d 48 18 0d 2f 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff61d52f]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a57da2:	d5 61 ff 
  a57da5:	62 e1 74 48 59 5c 24 	vmulps zmm19,zmm1,ZMMWORD PTR [rsp-0x80]
  a57dac:	fe 
  a57dad:	62 a1 3c 40 5c d1    	vsubps zmm18,zmm24,zmm17
  a57db3:	62 c1 64 40 58 cb    	vaddps zmm17,zmm19,zmm11
  a57db9:	62 92 7d 48 ac f6    	vfnmadd213ps zmm6,zmm0,zmm30
  a57dbf:	62 e1 7c 48 28 e8    	vmovaps zmm21,zmm0
  a57dc5:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x40]
  a57dcc:	01 
  a57dcd:	62 82 55 48 ac ed    	vfnmadd213ps zmm21,zmm5,zmm29
  a57dd3:	62 e1 4c 40 59 f1    	vmulps zmm22,zmm22,zmm1
  a57dd9:	62 51 04 48 5c fc    	vsubps zmm15,zmm15,zmm12
  a57ddf:	62 a1 54 40 5c e6    	vsubps zmm20,zmm21,zmm22
  a57de5:	62 a1 24 48 5c fb    	vsubps zmm23,zmm11,zmm19
  a57deb:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a57df1:	62 12 05 40 ac d9    	vfnmadd213ps zmm11,zmm31,zmm25
  a57df7:	62 21 54 40 58 c6    	vaddps zmm24,zmm21,zmm22
  a57dfd:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a57e03:	62 12 45 48 ac e4    	vfnmadd213ps zmm12,zmm7,zmm28
  a57e09:	62 81 34 40 58 df    	vaddps zmm19,zmm25,zmm31
  a57e0f:	62 41 3c 48 58 f1    	vaddps zmm30,zmm8,zmm9
  a57e15:	62 61 1c 40 58 cf    	vaddps zmm25,zmm28,zmm7
  a57e1b:	62 81 2c 48 58 f6    	vaddps zmm22,zmm10,zmm30
  a57e21:	62 42 7d 48 ac f2    	vfnmadd213ps zmm30,zmm0,zmm10
  a57e27:	62 f1 5c 48 58 fa    	vaddps zmm7,zmm4,zmm2
  a57e2d:	62 f1 5c 48 5c d2    	vsubps zmm2,zmm4,zmm2
  a57e33:	62 e1 64 48 58 ef    	vaddps zmm21,zmm3,zmm7
  a57e39:	62 f2 7d 48 ac fb    	vfnmadd213ps zmm7,zmm0,zmm3
  a57e3f:	62 f1 6c 40 59 d9    	vmulps zmm3,zmm18,zmm1
  a57e45:	62 51 3c 48 5c d1    	vsubps zmm10,zmm8,zmm9
  a57e4b:	62 f1 2c 40 58 e3    	vaddps zmm4,zmm26,zmm3
  a57e51:	62 f1 04 48 59 c1    	vmulps zmm0,zmm15,zmm1
  a57e57:	62 f1 2c 40 5c db    	vsubps zmm3,zmm26,zmm3
  a57e5d:	62 61 4c 48 5c e0    	vsubps zmm28,zmm6,zmm0
  a57e63:	62 f1 7c 48 58 c6    	vaddps zmm0,zmm0,zmm6
  a57e69:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a57e70:	fe 
  a57e71:	62 71 24 40 58 3c 24 	vaddps zmm15,zmm27,ZMMWORD PTR [rsp]
  a57e78:	62 f1 74 48 59 74 24 	vmulps zmm6,zmm1,ZMMWORD PTR [rsp-0x40]
  a57e7f:	ff 
  a57e80:	62 61 14 40 58 fd    	vaddps zmm31,zmm29,zmm5
  a57e86:	62 71 24 48 5c c6    	vsubps zmm8,zmm11,zmm6
  a57e8c:	62 71 74 48 59 4c 24 	vmulps zmm9,zmm1,ZMMWORD PTR [rsp+0x80]
  a57e93:	02 
  a57e94:	62 f1 24 48 58 f6    	vaddps zmm6,zmm11,zmm6
  a57e9a:	62 41 34 48 58 dc    	vaddps zmm27,zmm9,zmm12
  a57ea0:	62 f1 6c 48 59 d1    	vmulps zmm2,zmm2,zmm1
  a57ea6:	62 d1 1c 48 5c c1    	vsubps zmm0,zmm12,zmm9
  a57eac:	62 11 6c 48 58 ce    	vaddps zmm9,zmm2,zmm30
  a57eb2:	62 f1 2c 48 59 c9    	vmulps zmm1,zmm10,zmm1
  a57eb8:	62 f1 0c 40 5c d2    	vsubps zmm2,zmm30,zmm2
  a57ebe:	62 61 44 48 5c e9    	vsubps zmm29,zmm7,zmm1
  a57ec4:	62 f1 44 48 58 c9    	vaddps zmm1,zmm7,zmm1
  a57eca:	62 f1 7c 48 28 3d ac 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff66f0ac]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a57ed1:	f0 66 ff 
  a57ed4:	62 72 45 48 7f f3    	vpermt2ps zmm14,zmm7,zmm3
  a57eda:	62 c2 45 48 7f cf    	vpermt2ps zmm17,zmm7,zmm15
  a57ee0:	62 72 45 48 7f c6    	vpermt2ps zmm8,zmm7,zmm6
  a57ee6:	62 e2 45 48 7f f2    	vpermt2ps zmm22,zmm7,zmm2
  a57eec:	62 d2 45 48 7f e5    	vpermt2ps zmm4,zmm7,zmm13
  a57ef2:	62 c2 45 48 7f fd    	vpermt2ps zmm23,zmm7,zmm13
  a57ef8:	62 c2 45 48 7f dd    	vpermt2ps zmm19,zmm7,zmm13
  a57efe:	62 52 45 48 7f cd    	vpermt2ps zmm9,zmm7,zmm13
  a57f04:	62 d1 7c 48 28 d6    	vmovaps zmm2,zmm14
  a57f0a:	62 f1 7c 48 28 35 ec 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff66efec]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a57f11:	ef 66 ff 
  a57f14:	62 f2 4d 48 7f d4    	vpermt2ps zmm2,zmm6,zmm4
  a57f1a:	62 71 7c 48 28 1d 1c 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff66f01c]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a57f21:	f0 66 ff 
  a57f24:	62 72 25 48 7f f4    	vpermt2ps zmm14,zmm11,zmm4
  a57f2a:	62 b1 7c 48 28 d9    	vmovaps zmm3,zmm17
  a57f30:	62 b2 4d 48 7f df    	vpermt2ps zmm3,zmm6,zmm23
  a57f36:	62 a2 25 48 7f cf    	vpermt2ps zmm17,zmm11,zmm23
  a57f3c:	62 d1 7c 48 28 e0    	vmovaps zmm4,zmm8
  a57f42:	62 b2 4d 48 7f e3    	vpermt2ps zmm4,zmm6,zmm19
  a57f48:	62 32 25 48 7f c3    	vpermt2ps zmm8,zmm11,zmm19
  a57f4e:	62 b1 7c 48 28 ee    	vmovaps zmm5,zmm22
  a57f54:	62 d2 4d 48 7f e9    	vpermt2ps zmm5,zmm6,zmm9
  a57f5a:	62 c2 25 48 7f f1    	vpermt2ps zmm22,zmm11,zmm9
  a57f60:	62 e1 ed 48 14 dc    	vunpcklpd zmm19,zmm2,zmm4
  a57f66:	62 71 ed 48 15 fc    	vunpckhpd zmm15,zmm2,zmm4
  a57f6c:	62 71 e5 48 14 cd    	vunpcklpd zmm9,zmm3,zmm5
  a57f72:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm9
  a57f79:	ff 
  a57f7a:	62 f1 e5 48 15 d5    	vunpckhpd zmm2,zmm3,zmm5
  a57f80:	62 c1 8d 48 14 d0    	vunpcklpd zmm18,zmm14,zmm8
  a57f86:	62 51 8d 48 15 f0    	vunpckhpd zmm14,zmm14,zmm8
  a57f8c:	62 b1 f5 40 14 de    	vunpcklpd zmm3,zmm17,zmm22
  a57f92:	62 b1 f5 40 15 e6    	vunpckhpd zmm4,zmm17,zmm22
  a57f98:	62 c1 7c 48 28 f7    	vmovaps zmm22,zmm15
  a57f9e:	62 71 7c 48 28 25 58 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff66ee58]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a57fa5:	ee 66 ff 
  a57fa8:	62 e2 1d 48 7f f2    	vpermt2ps zmm22,zmm12,zmm2
  a57fae:	62 f1 7c 48 28 2d 88 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff66ee88]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a57fb5:	ee 66 ff 
  a57fb8:	62 72 55 48 7f fa    	vpermt2ps zmm15,zmm5,zmm2
  a57fbe:	62 21 7c 48 28 d2    	vmovaps zmm26,zmm18
  a57fc4:	62 62 1d 48 7f d3    	vpermt2ps zmm26,zmm12,zmm3
  a57fca:	62 e2 55 48 7f d3    	vpermt2ps zmm18,zmm5,zmm3
  a57fd0:	62 c1 7c 48 28 fe    	vmovaps zmm23,zmm14
  a57fd6:	62 e2 1d 48 7f fc    	vpermt2ps zmm23,zmm12,zmm4
  a57fdc:	62 72 55 48 7f f4    	vpermt2ps zmm14,zmm5,zmm4
  a57fe2:	62 a1 7c 48 28 cb    	vmovaps zmm17,zmm19
  a57fe8:	62 c2 55 48 7f d9    	vpermt2ps zmm19,zmm5,zmm9
  a57fee:	62 e2 45 48 7f 44 24 	vpermt2ps zmm16,zmm7,ZMMWORD PTR [rsp-0x80]
  a57ff5:	fe 
  a57ff6:	62 82 45 48 7f e7    	vpermt2ps zmm20,zmm7,zmm31
  a57ffc:	62 62 45 48 7f d8    	vpermt2ps zmm27,zmm7,zmm0
  a58002:	62 e2 45 48 7f e9    	vpermt2ps zmm21,zmm7,zmm1
  a58008:	62 42 45 48 7f e5    	vpermt2ps zmm28,zmm7,zmm13
  a5800e:	62 42 45 48 7f c5    	vpermt2ps zmm24,zmm7,zmm13
  a58014:	62 42 45 48 7f cd    	vpermt2ps zmm25,zmm7,zmm13
  a5801a:	62 42 45 48 7f ed    	vpermt2ps zmm29,zmm7,zmm13
  a58020:	62 b1 7c 48 28 c0    	vmovaps zmm0,zmm16
  a58026:	62 92 4d 48 7f c4    	vpermt2ps zmm0,zmm6,zmm28
  a5802c:	62 82 25 48 7f c4    	vpermt2ps zmm16,zmm11,zmm28
  a58032:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  a58038:	62 92 4d 48 7f c8    	vpermt2ps zmm1,zmm6,zmm24
  a5803e:	62 82 25 48 7f e0    	vpermt2ps zmm20,zmm11,zmm24
  a58044:	62 91 7c 48 28 d3    	vmovaps zmm2,zmm27
  a5804a:	62 92 4d 48 7f d1    	vpermt2ps zmm2,zmm6,zmm25
  a58050:	62 02 25 48 7f d9    	vpermt2ps zmm27,zmm11,zmm25
  a58056:	62 b1 7c 48 28 dd    	vmovaps zmm3,zmm21
  a5805c:	62 92 4d 48 7f dd    	vpermt2ps zmm3,zmm6,zmm29
  a58062:	62 82 25 48 7f ed    	vpermt2ps zmm21,zmm11,zmm29
  a58068:	62 61 fd 48 14 f2    	vunpcklpd zmm30,zmm0,zmm2
  a5806e:	62 61 fd 48 15 e2    	vunpckhpd zmm28,zmm0,zmm2
  a58074:	62 61 f5 48 14 c3    	vunpcklpd zmm24,zmm1,zmm3
  a5807a:	62 f1 f5 48 15 c3    	vunpckhpd zmm0,zmm1,zmm3
  a58080:	62 01 fd 40 14 eb    	vunpcklpd zmm29,zmm16,zmm27
  a58086:	62 01 fd 40 15 cb    	vunpckhpd zmm25,zmm16,zmm27
  a5808c:	62 b1 dd 40 14 cd    	vunpcklpd zmm1,zmm20,zmm21
  a58092:	62 b1 dd 40 15 d5    	vunpckhpd zmm2,zmm20,zmm21
  a58098:	62 81 7c 48 28 c6    	vmovaps zmm16,zmm30
  a5809e:	62 02 55 48 7f f0    	vpermt2ps zmm30,zmm5,zmm24
  a580a4:	62 91 7c 48 28 dc    	vmovaps zmm3,zmm28
  a580aa:	62 f2 1d 48 7f d8    	vpermt2ps zmm3,zmm12,zmm0
  a580b0:	62 62 55 48 7f e0    	vpermt2ps zmm28,zmm5,zmm0
  a580b6:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a580bc:	62 f2 1d 48 7f c1    	vpermt2ps zmm0,zmm12,zmm1
  a580c2:	62 62 55 48 7f e9    	vpermt2ps zmm29,zmm5,zmm1
  a580c8:	62 91 7c 48 28 c9    	vmovaps zmm1,zmm25
  a580ce:	62 f2 1d 48 7f ca    	vpermt2ps zmm1,zmm12,zmm2
  a580d4:	62 62 55 48 7f ca    	vpermt2ps zmm25,zmm5,zmm2
  a580da:	62 f1 7c 48 10 51 08 	vmovups zmm2,ZMMWORD PTR [rcx+0x200]
  a580e1:	62 f1 7c 48 10 61 09 	vmovups zmm4,ZMMWORD PTR [rcx+0x240]
  a580e8:	62 e1 2c 40 59 e2    	vmulps zmm20,zmm26,zmm2
  a580ee:	62 e2 7d 48 bc e4    	vfnmadd231ps zmm20,zmm0,zmm4
  a580f4:	62 e1 7c 48 59 ea    	vmulps zmm21,zmm0,zmm2
  a580fa:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a58101:	62 82 5d 48 b8 ea    	vfmadd231ps zmm21,zmm4,zmm26
  a58107:	62 f1 7c 48 10 51 05 	vmovups zmm2,ZMMWORD PTR [rcx+0x140]
  a5810e:	62 61 4c 40 59 d0    	vmulps zmm26,zmm22,zmm0
  a58114:	62 62 65 48 bc d2    	vfnmadd231ps zmm26,zmm3,zmm2
  a5811a:	62 f1 64 48 59 c0    	vmulps zmm0,zmm3,zmm0
  a58120:	62 f1 7c 48 10 59 0c 	vmovups zmm3,ZMMWORD PTR [rcx+0x300]
  a58127:	62 b2 6d 48 b8 c6    	vfmadd231ps zmm0,zmm2,zmm22
  a5812d:	62 f1 7c 48 10 51 0d 	vmovups zmm2,ZMMWORD PTR [rcx+0x340]
  a58134:	62 f1 44 40 59 e3    	vmulps zmm4,zmm23,zmm3
  a5813a:	62 f2 75 48 bc e2    	vfnmadd231ps zmm4,zmm1,zmm2
  a58140:	62 f1 74 48 59 cb    	vmulps zmm1,zmm1,zmm3
  a58146:	62 f1 7c 48 10 59 02 	vmovups zmm3,ZMMWORD PTR [rcx+0x80]
  a5814d:	62 b2 6d 48 b8 cf    	vfmadd231ps zmm1,zmm2,zmm23
  a58153:	62 f1 7c 48 10 51 03 	vmovups zmm2,ZMMWORD PTR [rcx+0xc0]
  a5815a:	62 f1 64 40 59 eb    	vmulps zmm5,zmm19,zmm3
  a58160:	62 f2 0d 40 bc ea    	vfnmadd231ps zmm5,zmm30,zmm2
  a58166:	62 f1 0c 40 59 db    	vmulps zmm3,zmm30,zmm3
  a5816c:	62 f1 7c 48 10 71 0a 	vmovups zmm6,ZMMWORD PTR [rcx+0x280]
  a58173:	62 b2 6d 48 b8 db    	vfmadd231ps zmm3,zmm2,zmm19
  a58179:	62 f1 7c 48 10 51 0b 	vmovups zmm2,ZMMWORD PTR [rcx+0x2c0]
  a58180:	62 f1 6c 40 59 fe    	vmulps zmm7,zmm18,zmm6
  a58186:	62 f2 15 40 bc fa    	vfnmadd231ps zmm7,zmm29,zmm2
  a5818c:	62 f1 14 40 59 f6    	vmulps zmm6,zmm29,zmm6
  a58192:	62 71 7c 48 10 41 06 	vmovups zmm8,ZMMWORD PTR [rcx+0x180]
  a58199:	62 b2 6d 48 b8 f2    	vfmadd231ps zmm6,zmm2,zmm18
  a5819f:	62 f1 7c 48 10 51 07 	vmovups zmm2,ZMMWORD PTR [rcx+0x1c0]
  a581a6:	62 51 04 48 59 c8    	vmulps zmm9,zmm15,zmm8
  a581ac:	62 72 1d 40 bc ca    	vfnmadd231ps zmm9,zmm28,zmm2
  a581b2:	62 51 1c 40 59 c0    	vmulps zmm8,zmm28,zmm8
  a581b8:	62 71 7c 48 10 51 0e 	vmovups zmm10,ZMMWORD PTR [rcx+0x380]
  a581bf:	62 52 6d 48 b8 c7    	vfmadd231ps zmm8,zmm2,zmm15
  a581c5:	62 f1 7c 48 10 51 0f 	vmovups zmm2,ZMMWORD PTR [rcx+0x3c0]
  a581cc:	62 51 0c 48 59 da    	vmulps zmm11,zmm14,zmm10
  a581d2:	62 72 35 40 bc da    	vfnmadd231ps zmm11,zmm25,zmm2
  a581d8:	62 51 34 40 59 d2    	vmulps zmm10,zmm25,zmm10
  a581de:	62 52 6d 48 b8 d6    	vfmadd231ps zmm10,zmm2,zmm14
  a581e4:	62 e2 1d 48 7f 4c 24 	vpermt2ps zmm17,zmm12,ZMMWORD PTR [rsp-0x40]
  a581eb:	ff 
  a581ec:	62 82 1d 48 7f c0    	vpermt2ps zmm16,zmm12,zmm24
  a581f2:	62 b1 74 40 58 d4    	vaddps zmm2,zmm17,zmm20
  a581f8:	62 31 74 40 5c e4    	vsubps zmm12,zmm17,zmm20
  a581fe:	62 71 7c 48 58 e9    	vaddps zmm13,zmm0,zmm1
  a58204:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a5820a:	62 f1 54 48 58 cf    	vaddps zmm1,zmm5,zmm7
  a58210:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a58216:	62 f1 64 48 58 fe    	vaddps zmm7,zmm3,zmm6
  a5821c:	62 f1 64 48 5c de    	vsubps zmm3,zmm3,zmm6
  a58222:	62 d1 3c 48 58 f2    	vaddps zmm6,zmm8,zmm10
  a58228:	62 51 3c 48 5c c2    	vsubps zmm8,zmm8,zmm10
  a5822e:	62 51 34 48 58 d3    	vaddps zmm10,zmm9,zmm11
  a58234:	62 51 34 48 5c cb    	vsubps zmm9,zmm9,zmm11
  a5823a:	62 31 54 40 58 d8    	vaddps zmm11,zmm21,zmm16
  a58240:	62 31 7c 40 5c f5    	vsubps zmm14,zmm16,zmm21
  a58246:	62 71 2c 40 58 fc    	vaddps zmm15,zmm26,zmm4
  a5824c:	62 91 5c 48 5c e2    	vsubps zmm4,zmm4,zmm26
  a58252:	62 e1 54 48 58 c3    	vaddps zmm16,zmm5,zmm3
  a58258:	62 f1 64 48 5c dd    	vsubps zmm3,zmm3,zmm5
  a5825e:	62 d1 3c 48 5c e9    	vsubps zmm5,zmm8,zmm9
  a58264:	62 51 34 48 58 c0    	vaddps zmm8,zmm9,zmm8
  a5826a:	62 51 6c 48 58 cf    	vaddps zmm9,zmm2,zmm15
  a58270:	62 d1 6c 48 5c d7    	vsubps zmm2,zmm2,zmm15
  a58276:	62 71 44 48 58 fe    	vaddps zmm15,zmm7,zmm6
  a5827c:	62 f1 44 48 5c f6    	vsubps zmm6,zmm7,zmm6
  a58282:	62 d1 14 48 58 fb    	vaddps zmm7,zmm13,zmm11
  a58288:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a5828e:	62 51 74 48 58 ea    	vaddps zmm13,zmm1,zmm10
  a58294:	62 f1 2c 48 5c c9    	vsubps zmm1,zmm10,zmm1
  a5829a:	62 71 1c 48 58 d0    	vaddps zmm10,zmm12,zmm0
  a582a0:	62 e2 7d 48 18 0d f2 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff61d0f2]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a582a7:	d0 61 ff 
  a582aa:	62 a1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm17
  a582b0:	62 b1 54 48 59 e9    	vmulps zmm5,zmm5,zmm17
  a582b6:	62 b1 64 48 59 d9    	vmulps zmm3,zmm3,zmm17
  a582bc:	62 31 3c 48 59 c1    	vmulps zmm8,zmm8,zmm17
  a582c2:	62 f1 1c 48 5c c0    	vsubps zmm0,zmm12,zmm0
  a582c8:	62 51 64 48 5c e0    	vsubps zmm12,zmm3,zmm8
  a582ce:	62 d1 64 48 58 d8    	vaddps zmm3,zmm3,zmm8
  a582d4:	62 51 5c 48 58 c6    	vaddps zmm8,zmm4,zmm14
  a582da:	62 f1 0c 48 5c e4    	vsubps zmm4,zmm14,zmm4
  a582e0:	62 71 7c 40 58 f5    	vaddps zmm14,zmm16,zmm5
  a582e6:	62 b1 54 48 5c e8    	vsubps zmm5,zmm5,zmm16
  a582ec:	62 c1 2c 48 58 c6    	vaddps zmm16,zmm10,zmm14
  a582f2:	62 51 2c 48 5c d6    	vsubps zmm10,zmm10,zmm14
  a582f8:	62 51 3c 48 58 f4    	vaddps zmm14,zmm8,zmm12
  a582fe:	62 51 3c 48 5c c4    	vsubps zmm8,zmm8,zmm12
  a58304:	62 71 6c 48 58 e6    	vaddps zmm12,zmm2,zmm6
  a5830a:	62 f1 6c 48 5c d6    	vsubps zmm2,zmm2,zmm6
  a58310:	62 f1 24 48 58 f1    	vaddps zmm6,zmm11,zmm1
  a58316:	62 f1 24 48 5c c9    	vsubps zmm1,zmm11,zmm1
  a5831c:	62 71 7c 48 58 db    	vaddps zmm11,zmm0,zmm3
  a58322:	62 f1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm3
  a58328:	62 f1 5c 48 58 dd    	vaddps zmm3,zmm4,zmm5
  a5832e:	62 f1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm5
  a58334:	62 d1 34 48 5c ed    	vsubps zmm5,zmm9,zmm13
  a5833a:	62 51 34 48 58 cd    	vaddps zmm9,zmm9,zmm13
  a58340:	62 51 44 48 5c ef    	vsubps zmm13,zmm7,zmm15
  a58346:	62 d1 44 48 58 ff    	vaddps zmm7,zmm7,zmm15
  a5834c:	62 51 7c 48 28 f9    	vmovaps zmm15,zmm9
  a58352:	62 e1 7c 28 28 0d e4 	vmovaps ymm17,YMMWORD PTR [rip+0xffffffffff61e8e4]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a58359:	e8 61 ff 
  a5835c:	62 72 75 40 7f ff    	vpermt2ps zmm15,zmm17,zmm7
  a58362:	62 e1 7c 48 28 15 d4 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff63aed4]        # 93240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x206f0>
  a58369:	ae 63 ff 
  a5836c:	62 72 6d 40 7f cf    	vpermt2ps zmm9,zmm18,zmm7
  a58372:	62 71 7c 48 11 0c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm9
  a58379:	c5 7c 11 7c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm15
  a5837f:	62 b1 7c 48 28 f8    	vmovaps zmm7,zmm16
  a58385:	62 d2 75 40 7f fe    	vpermt2ps zmm7,zmm17,zmm14
  a5838b:	62 c2 6d 40 7f c6    	vpermt2ps zmm16,zmm18,zmm14
  a58391:	62 e1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x60],zmm16
  a58398:	60 00 00 00 
  a5839c:	c5 fc 11 bc 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm7
  a583a3:	00 00 
  a583a5:	62 d1 7c 48 28 fc    	vmovaps zmm7,zmm12
  a583ab:	62 f2 75 40 7f fe    	vpermt2ps zmm7,zmm17,zmm6
  a583b1:	62 72 6d 40 7f e6    	vpermt2ps zmm12,zmm18,zmm6
  a583b7:	62 71 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm12
  a583be:	03 
  a583bf:	c5 fc 11 bc 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm7
  a583c6:	00 00 
  a583c8:	62 d1 7c 48 28 f3    	vmovaps zmm6,zmm11
  a583ce:	62 f2 75 40 7f f3    	vpermt2ps zmm6,zmm17,zmm3
  a583d4:	62 72 6d 40 7f db    	vpermt2ps zmm11,zmm18,zmm3
  a583da:	62 71 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x120],zmm11
  a583e1:	20 01 00 00 
  a583e5:	c5 fc 11 b4 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm6
  a583ec:	00 00 
  a583ee:	62 f1 7c 48 28 dd    	vmovaps zmm3,zmm5
  a583f4:	62 d2 75 40 7f dd    	vpermt2ps zmm3,zmm17,zmm13
  a583fa:	62 d2 6d 40 7f ed    	vpermt2ps zmm5,zmm18,zmm13
  a58400:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm5
  a58407:	06 
  a58408:	c5 fc 11 9c 16 c0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm3
  a5840f:	00 00 
  a58411:	62 d1 7c 48 28 da    	vmovaps zmm3,zmm10
  a58417:	62 d2 75 40 7f d8    	vpermt2ps zmm3,zmm17,zmm8
  a5841d:	62 52 6d 40 7f d0    	vpermt2ps zmm10,zmm18,zmm8
  a58423:	62 71 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm10
  a5842a:	e0 01 00 00 
  a5842e:	c5 fc 11 9c 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm3
  a58435:	00 00 
  a58437:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a5843d:	62 f2 75 40 7f d9    	vpermt2ps zmm3,zmm17,zmm1
  a58443:	62 f2 6d 40 7f d1    	vpermt2ps zmm2,zmm18,zmm1
  a58449:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm2
  a58450:	09 
  a58451:	c5 fc 11 9c 16 80 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x280],ymm3
  a58458:	00 00 
  a5845a:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a58460:	62 f2 75 40 7f cc    	vpermt2ps zmm1,zmm17,zmm4
  a58466:	62 f2 6d 40 7f c4    	vpermt2ps zmm0,zmm18,zmm4
  a5846c:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2a0],zmm0
  a58473:	a0 02 00 00 
  a58477:	c5 fc 11 8c 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm1
  a5847e:	00 00 
  a58480:	48 81 c2 00 03 00 00 	add    rdx,0x300
  a58487:	48 39 d0             	cmp    rax,rdx
  a5848a:	0f 85 10 f6 ff ff    	jne    a57aa0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a58490:	48 81 c4 c8 00 00 00 	add    rsp,0xc8
  a58497:	c5 f8 77             	vzeroupper
  a5849a:	c3                   	ret
