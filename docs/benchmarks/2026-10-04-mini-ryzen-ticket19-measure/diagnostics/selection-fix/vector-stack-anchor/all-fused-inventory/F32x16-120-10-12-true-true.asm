
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a56b80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a56b80:	48 81 ec 48 01 00 00 	sub    rsp,0x148
  a56b87:	48 69 c2 c0 03 00 00 	imul   rax,rdx,0x3c0
  a56b8e:	31 d2                	xor    edx,edx
  a56b90:	62 e1 7c 48 10 1c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1]
  a56b97:	c5 fc 10 44 17 40    	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x40]
  a56b9d:	62 a1 7c 48 28 cb    	vmovaps zmm17,zmm19
  a56ba3:	62 f1 7c 48 28 0d 53 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff63c553]        # 93100 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x205b0>
  a56baa:	c5 63 ff 
  a56bad:	62 e2 75 48 7f c8    	vpermt2ps zmm17,zmm1,zmm0
  a56bb3:	62 f1 7c 48 28 15 83 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff63c583]        # 93140 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x205f0>
  a56bba:	c5 63 ff 
  a56bbd:	62 e2 6d 48 7f d8    	vpermt2ps zmm19,zmm2,zmm0
  a56bc3:	62 71 7c 48 10 9c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x60]
  a56bca:	60 00 00 00 
  a56bce:	c5 fc 10 84 17 a0 00 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0xa0]
  a56bd5:	00 00 
  a56bd7:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a56bdd:	62 f2 75 48 7f e0    	vpermt2ps zmm4,zmm1,zmm0
  a56be3:	62 72 6d 48 7f d8    	vpermt2ps zmm11,zmm2,zmm0
  a56be9:	62 f1 7c 48 10 74 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a56bf0:	03 
  a56bf1:	c5 fc 10 84 17 00 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x100]
  a56bf8:	00 00 
  a56bfa:	62 71 7c 48 28 e6    	vmovaps zmm12,zmm6
  a56c00:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a56c06:	62 f2 6d 48 7f f0    	vpermt2ps zmm6,zmm2,zmm0
  a56c0c:	62 71 7c 48 10 84 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x120]
  a56c13:	20 01 00 00 
  a56c17:	c5 fc 10 84 17 60 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x160]
  a56c1e:	00 00 
  a56c20:	62 c1 7c 48 28 d0    	vmovaps zmm18,zmm8
  a56c26:	62 e2 75 48 7f d0    	vpermt2ps zmm18,zmm1,zmm0
  a56c2c:	62 72 6d 48 7f c0    	vpermt2ps zmm8,zmm2,zmm0
  a56c32:	62 f1 7c 48 10 7c 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x180]
  a56c39:	06 
  a56c3a:	c5 fc 10 84 17 c0 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x1c0]
  a56c41:	00 00 
  a56c43:	62 e1 7c 48 28 f7    	vmovaps zmm22,zmm7
  a56c49:	62 e2 75 48 7f f0    	vpermt2ps zmm22,zmm1,zmm0
  a56c4f:	62 f2 6d 48 7f f8    	vpermt2ps zmm7,zmm2,zmm0
  a56c55:	62 e1 7c 48 10 a4 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a56c5c:	e0 01 00 00 
  a56c60:	c5 fc 10 84 17 20 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x220]
  a56c67:	00 00 
  a56c69:	62 b1 7c 48 28 dc    	vmovaps zmm3,zmm20
  a56c6f:	62 f2 75 48 7f d8    	vpermt2ps zmm3,zmm1,zmm0
  a56c75:	62 e2 6d 48 7f e0    	vpermt2ps zmm20,zmm2,zmm0
  a56c7b:	62 61 7c 48 10 4c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x240]
  a56c82:	09 
  a56c83:	c5 fc 10 84 17 80 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x280]
  a56c8a:	00 00 
  a56c8c:	62 01 7c 48 28 c1    	vmovaps zmm24,zmm25
  a56c92:	62 62 75 48 7f c0    	vpermt2ps zmm24,zmm1,zmm0
  a56c98:	62 62 6d 48 7f c8    	vpermt2ps zmm25,zmm2,zmm0
  a56c9e:	62 e1 7c 48 10 ac 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x2a0]
  a56ca5:	a0 02 00 00 
  a56ca9:	c5 fc 10 84 17 e0 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x2e0]
  a56cb0:	00 00 
  a56cb2:	62 21 7c 48 28 f5    	vmovaps zmm30,zmm21
  a56cb8:	62 62 75 48 7f f0    	vpermt2ps zmm30,zmm1,zmm0
  a56cbe:	62 e2 6d 48 7f e8    	vpermt2ps zmm21,zmm2,zmm0
  a56cc4:	62 f1 7c 48 10 44 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x300]
  a56ccb:	0c 
  a56ccc:	c5 fc 10 ac 17 40 03 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x340]
  a56cd3:	00 00 
  a56cd5:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a56cdb:	62 72 75 48 7f f5    	vpermt2ps zmm14,zmm1,zmm5
  a56ce1:	62 f2 6d 48 7f c5    	vpermt2ps zmm0,zmm2,zmm5
  a56ce7:	62 61 7c 48 10 ac 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x360]
  a56cee:	60 03 00 00 
  a56cf2:	c5 fc 10 ac 17 a0 03 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x3a0]
  a56cf9:	00 00 
  a56cfb:	62 01 7c 48 28 fd    	vmovaps zmm31,zmm29
  a56d01:	62 62 75 48 7f fd    	vpermt2ps zmm31,zmm1,zmm5
  a56d07:	62 62 6d 48 7f ed    	vpermt2ps zmm29,zmm2,zmm5
  a56d0d:	62 61 4c 48 58 e0    	vaddps zmm28,zmm6,zmm0
  a56d13:	62 91 64 40 58 ec    	vaddps zmm5,zmm19,zmm28
  a56d19:	62 01 44 48 58 d9    	vaddps zmm27,zmm7,zmm25
  a56d1f:	62 91 54 48 58 cb    	vaddps zmm1,zmm5,zmm27
  a56d25:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a56d2c:	fe 
  a56d2d:	62 c1 54 40 58 f8    	vaddps zmm23,zmm21,zmm8
  a56d33:	62 b1 5c 40 58 ef    	vaddps zmm5,zmm20,zmm23
  a56d39:	62 51 14 40 58 fb    	vaddps zmm15,zmm29,zmm11
  a56d3f:	62 d1 54 48 58 d7    	vaddps zmm2,zmm5,zmm15
  a56d45:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a56d4c:	02 
  a56d4d:	62 f1 74 48 58 ca    	vaddps zmm1,zmm1,zmm2
  a56d53:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a56d5a:	ff 
  a56d5b:	62 51 1c 48 58 d6    	vaddps zmm10,zmm12,zmm14
  a56d61:	62 d1 74 40 58 ca    	vaddps zmm1,zmm17,zmm10
  a56d67:	62 d1 1c 48 5c d6    	vsubps zmm2,zmm12,zmm14
  a56d6d:	62 01 4c 40 58 d0    	vaddps zmm26,zmm22,zmm24
  a56d73:	62 91 74 48 58 ea    	vaddps zmm5,zmm1,zmm26
  a56d79:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm5
  a56d80:	01 
  a56d81:	62 91 4c 40 5c c8    	vsubps zmm1,zmm22,zmm24
  a56d87:	62 31 0c 40 58 f2    	vaddps zmm14,zmm30,zmm18
  a56d8d:	62 21 0c 40 5c f2    	vsubps zmm30,zmm30,zmm18
  a56d93:	62 61 04 40 58 c4    	vaddps zmm24,zmm31,zmm4
  a56d99:	62 61 04 40 5c fc    	vsubps zmm31,zmm31,zmm4
  a56d9f:	62 d1 64 48 58 e6    	vaddps zmm4,zmm3,zmm14
  a56da5:	62 81 5c 48 58 f0    	vaddps zmm22,zmm4,zmm24
  a56dab:	62 71 4c 48 5c e0    	vsubps zmm12,zmm6,zmm0
  a56db1:	62 b1 54 48 58 c6    	vaddps zmm0,zmm5,zmm22
  a56db7:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a56dbe:	62 91 44 48 5c f9    	vsubps zmm7,zmm7,zmm25
  a56dc4:	62 e2 7d 48 18 05 1a 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff61e91a]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a56dcb:	e9 61 ff 
  a56dce:	62 b1 7c 48 28 e0    	vmovaps zmm4,zmm16
  a56dd4:	62 b2 1d 40 a8 e3    	vfmadd213ps zmm4,zmm28,zmm19
  a56dda:	62 e2 7d 48 18 15 60 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff61e860]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a56de1:	e8 61 ff 
  a56de4:	62 b2 25 40 bc e2    	vfnmadd231ps zmm4,zmm27,zmm18
  a56dea:	62 51 54 40 5c e8    	vsubps zmm13,zmm21,zmm8
  a56df0:	62 f2 7d 48 18 2d 5e 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff61e95e]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a56df7:	e9 61 ff 
  a56dfa:	62 71 74 48 59 c5    	vmulps zmm8,zmm1,zmm5
  a56e00:	62 f2 7d 48 18 35 96 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff61e596]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a56e07:	e5 61 ff 
  a56e0a:	62 72 6d 48 b8 c6    	vfmadd231ps zmm8,zmm2,zmm6
  a56e10:	62 51 14 40 5c cb    	vsubps zmm9,zmm29,zmm11
  a56e16:	62 51 5c 48 58 d8    	vaddps zmm11,zmm4,zmm8
  a56e1c:	62 82 6d 40 bc dc    	vfnmadd231ps zmm19,zmm18,zmm28
  a56e22:	62 b1 7c 48 28 c0    	vmovaps zmm0,zmm16
  a56e28:	62 b2 45 40 a8 c4    	vfmadd213ps zmm0,zmm23,zmm20
  a56e2e:	62 b2 05 48 bc c2    	vfnmadd231ps zmm0,zmm15,zmm18
  a56e34:	62 82 7d 40 b8 db    	vfmadd231ps zmm19,zmm16,zmm27
  a56e3a:	62 61 04 40 59 e5    	vmulps zmm28,zmm31,zmm5
  a56e40:	62 62 0d 40 b8 e6    	vfmadd231ps zmm28,zmm30,zmm6
  a56e46:	62 f1 6c 48 59 d5    	vmulps zmm2,zmm2,zmm5
  a56e4c:	62 f2 4d 48 bc d1    	vfnmadd231ps zmm2,zmm6,zmm1
  a56e52:	62 01 7c 48 58 dc    	vaddps zmm27,zmm0,zmm28
  a56e58:	62 a2 6d 40 bc e7    	vfnmadd231ps zmm20,zmm18,zmm23
  a56e5e:	62 81 24 48 5c eb    	vsubps zmm21,zmm11,zmm27
  a56e64:	62 c2 7d 40 b8 e7    	vfmadd231ps zmm20,zmm16,zmm15
  a56e6a:	62 b1 7c 48 28 c8    	vmovaps zmm1,zmm16
  a56e70:	62 b2 2d 48 a8 c9    	vfmadd213ps zmm1,zmm10,zmm17
  a56e76:	62 b2 2d 40 bc ca    	vfnmadd231ps zmm1,zmm26,zmm18
  a56e7c:	62 71 0c 40 59 fd    	vmulps zmm15,zmm30,zmm5
  a56e82:	62 12 4d 48 bc ff    	vfnmadd231ps zmm15,zmm6,zmm31
  a56e88:	62 e1 44 48 59 fd    	vmulps zmm23,zmm7,zmm5
  a56e8e:	62 e2 1d 48 b8 fe    	vfmadd231ps zmm23,zmm12,zmm6
  a56e94:	62 c2 6d 40 bc ca    	vfnmadd231ps zmm17,zmm18,zmm10
  a56e9a:	62 31 74 48 5c d7    	vsubps zmm10,zmm1,zmm23
  a56ea0:	62 82 7d 40 b8 ca    	vfmadd231ps zmm17,zmm16,zmm26
  a56ea6:	62 21 7c 48 28 d0    	vmovaps zmm26,zmm16
  a56eac:	62 62 0d 48 a8 d3    	vfmadd213ps zmm26,zmm14,zmm3
  a56eb2:	62 22 3d 40 bc d2    	vfnmadd231ps zmm26,zmm24,zmm18
  a56eb8:	62 61 1c 48 59 ed    	vmulps zmm29,zmm12,zmm5
  a56ebe:	62 62 4d 48 bc ef    	vfnmadd231ps zmm29,zmm6,zmm7
  a56ec4:	62 61 34 48 59 fd    	vmulps zmm31,zmm9,zmm5
  a56eca:	62 62 15 48 b8 fe    	vfmadd231ps zmm31,zmm13,zmm6
  a56ed0:	62 d2 6d 40 bc de    	vfnmadd231ps zmm3,zmm18,zmm14
  a56ed6:	62 11 2c 40 5c e7    	vsubps zmm12,zmm26,zmm31
  a56edc:	62 92 7d 40 b8 d8    	vfmadd231ps zmm3,zmm16,zmm24
  a56ee2:	62 c1 2c 48 5c c4    	vsubps zmm16,zmm10,zmm12
  a56ee8:	62 f1 14 48 59 fd    	vmulps zmm7,zmm13,zmm5
  a56eee:	62 d2 4d 48 bc f9    	vfnmadd231ps zmm7,zmm6,zmm9
  a56ef4:	62 71 64 40 58 ea    	vaddps zmm13,zmm19,zmm2
  a56efa:	62 f1 64 40 5c d2    	vsubps zmm2,zmm19,zmm2
  a56f00:	62 c1 5c 40 58 df    	vaddps zmm19,zmm20,zmm15
  a56f06:	62 51 5c 40 5c ff    	vsubps zmm15,zmm20,zmm15
  a56f0c:	62 81 74 40 5c e5    	vsubps zmm20,zmm17,zmm29
  a56f12:	62 a1 14 40 58 c9    	vaddps zmm17,zmm29,zmm17
  a56f18:	62 61 64 48 5c c7    	vsubps zmm24,zmm3,zmm7
  a56f1e:	62 f1 44 48 58 db    	vaddps zmm3,zmm7,zmm3
  a56f24:	62 b1 14 48 58 fb    	vaddps zmm7,zmm13,zmm19
  a56f2a:	62 d1 5c 48 5c e0    	vsubps zmm4,zmm4,zmm8
  a56f30:	62 01 5c 40 58 e8    	vaddps zmm29,zmm20,zmm24
  a56f36:	62 91 7c 48 5c c4    	vsubps zmm0,zmm0,zmm28
  a56f3c:	62 51 6c 48 5c c7    	vsubps zmm8,zmm2,zmm15
  a56f42:	62 f1 44 40 58 c9    	vaddps zmm1,zmm23,zmm1
  a56f48:	62 61 74 40 5c f3    	vsubps zmm30,zmm17,zmm3
  a56f4e:	62 81 04 40 58 fa    	vaddps zmm23,zmm31,zmm26
  a56f54:	62 61 5c 48 58 d0    	vaddps zmm26,zmm4,zmm0
  a56f5a:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp-0x80]
  a56f61:	fe 
  a56f62:	62 61 54 48 5c 64 24 	vsubps zmm28,zmm5,ZMMWORD PTR [rsp+0x80]
  a56f69:	02 
  a56f6a:	62 21 74 48 58 cf    	vaddps zmm25,zmm1,zmm23
  a56f70:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x40]
  a56f77:	01 
  a56f78:	62 21 54 48 5c fe    	vsubps zmm31,zmm5,zmm22
  a56f7e:	62 11 24 48 58 f3    	vaddps zmm14,zmm11,zmm27
  a56f84:	62 d1 2c 48 58 ec    	vaddps zmm5,zmm10,zmm12
  a56f8a:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm5
  a56f91:	04 
  a56f92:	62 31 14 48 5c e3    	vsubps zmm12,zmm13,zmm19
  a56f98:	62 81 5c 40 5c e0    	vsubps zmm20,zmm20,zmm24
  a56f9e:	62 d1 6c 48 58 d7    	vaddps zmm2,zmm2,zmm15
  a56fa4:	62 f1 74 40 58 eb    	vaddps zmm5,zmm17,zmm3
  a56faa:	62 f1 5c 48 5c c0    	vsubps zmm0,zmm4,zmm0
  a56fb0:	62 b1 74 48 5c cf    	vsubps zmm1,zmm1,zmm23
  a56fb6:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a56fbd:	03 
  a56fbe:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a56fc5:	ff 
  a56fc6:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a56fcc:	62 61 7c 48 28 1d aa 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff66ffaa]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a56fd3:	ff 66 ff 
  a56fd6:	62 f2 25 40 7f ca    	vpermt2ps zmm1,zmm27,zmm2
  a56fdc:	62 71 7c 48 28 1d da 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff66ffda]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a56fe3:	ff 66 ff 
  a56fe6:	62 f2 25 48 7f e2    	vpermt2ps zmm4,zmm11,zmm2
  a56fec:	62 b1 7c 48 28 d5    	vmovaps zmm2,zmm21
  a56ff2:	62 f2 25 40 7f d0    	vpermt2ps zmm2,zmm27,zmm0
  a56ff8:	62 e2 25 48 7f e8    	vpermt2ps zmm21,zmm11,zmm0
  a56ffe:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a57004:	c4 41 30 57 c9       	vxorps xmm9,xmm9,xmm9
  a57009:	62 d2 25 40 7f c1    	vpermt2ps zmm0,zmm27,zmm9
  a5700f:	62 d2 25 48 7f f9    	vpermt2ps zmm7,zmm11,zmm9
  a57015:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a5701b:	62 52 25 40 7f e9    	vpermt2ps zmm13,zmm27,zmm9
  a57021:	62 52 25 48 7f c1    	vpermt2ps zmm8,zmm11,zmm9
  a57027:	62 91 7c 48 28 da    	vmovaps zmm3,zmm26
  a5702d:	62 d2 25 40 7f d9    	vpermt2ps zmm3,zmm27,zmm9
  a57033:	62 42 25 48 7f d1    	vpermt2ps zmm26,zmm11,zmm9
  a57039:	62 11 7c 48 28 fc    	vmovaps zmm15,zmm28
  a5703f:	62 52 25 40 7f f9    	vpermt2ps zmm15,zmm27,zmm9
  a57045:	62 42 25 48 7f e1    	vpermt2ps zmm28,zmm11,zmm9
  a5704b:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a57051:	62 c2 25 40 7f c9    	vpermt2ps zmm17,zmm27,zmm9
  a57057:	62 52 25 48 7f f1    	vpermt2ps zmm14,zmm11,zmm9
  a5705d:	62 c1 7c 48 28 dc    	vmovaps zmm19,zmm12
  a57063:	62 c2 25 40 7f d9    	vpermt2ps zmm19,zmm27,zmm9
  a57069:	62 52 25 48 7f e1    	vpermt2ps zmm12,zmm11,zmm9
  a5706f:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a57075:	62 f1 7c 48 28 35 81 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff66fe81]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5707c:	fe 66 ff 
  a5707f:	62 e2 4d 48 7f f3    	vpermt2ps zmm22,zmm6,zmm3
  a57085:	62 e1 7c 48 28 15 b1 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff66feb1]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a5708c:	fe 66 ff 
  a5708f:	62 f2 6d 40 7f cb    	vpermt2ps zmm1,zmm18,zmm3
  a57095:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a5709b:	62 d2 4d 48 7f df    	vpermt2ps zmm3,zmm6,zmm15
  a570a1:	62 d2 6d 40 7f d7    	vpermt2ps zmm2,zmm18,zmm15
  a570a7:	62 71 7c 48 28 f8    	vmovaps zmm15,zmm0
  a570ad:	62 32 4d 48 7f f9    	vpermt2ps zmm15,zmm6,zmm17
  a570b3:	62 b2 6d 40 7f c1    	vpermt2ps zmm0,zmm18,zmm17
  a570b9:	62 c1 7c 48 28 cd    	vmovaps zmm17,zmm13
  a570bf:	62 a2 4d 48 7f cb    	vpermt2ps zmm17,zmm6,zmm19
  a570c5:	62 32 6d 40 7f eb    	vpermt2ps zmm13,zmm18,zmm19
  a570cb:	62 92 4d 48 7f e2    	vpermt2ps zmm4,zmm6,zmm26
  a570d1:	62 82 4d 48 7f ec    	vpermt2ps zmm21,zmm6,zmm28
  a570d7:	62 d2 4d 48 7f fe    	vpermt2ps zmm7,zmm6,zmm14
  a570dd:	62 52 4d 48 7f c4    	vpermt2ps zmm8,zmm6,zmm12
  a570e3:	62 c1 cd 40 14 df    	vunpcklpd zmm19,zmm22,zmm15
  a570e9:	62 41 cd 40 15 c7    	vunpckhpd zmm24,zmm22,zmm15
  a570ef:	62 31 e5 48 14 e1    	vunpcklpd zmm12,zmm3,zmm17
  a570f5:	62 31 e5 48 15 f1    	vunpckhpd zmm14,zmm3,zmm17
  a570fb:	62 71 f5 48 14 f8    	vunpcklpd zmm15,zmm1,zmm0
  a57101:	62 e1 f5 48 15 c8    	vunpckhpd zmm17,zmm1,zmm0
  a57107:	62 d1 ed 48 14 c5    	vunpcklpd zmm0,zmm2,zmm13
  a5710d:	62 d1 ed 48 15 cd    	vunpckhpd zmm1,zmm2,zmm13
  a57113:	62 e1 dd 48 14 ff    	vunpcklpd zmm23,zmm4,zmm7
  a57119:	62 71 dd 48 15 ef    	vunpckhpd zmm13,zmm4,zmm7
  a5711f:	62 d1 d5 40 14 d0    	vunpcklpd zmm2,zmm21,zmm8
  a57125:	62 d1 d5 40 15 f8    	vunpckhpd zmm7,zmm21,zmm8
  a5712b:	62 31 7c 48 28 c3    	vmovaps zmm8,zmm19
  a57131:	62 f1 7c 48 28 1d c5 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff66fcc5]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a57138:	fc 66 ff 
  a5713b:	62 52 65 48 7f c4    	vpermt2ps zmm8,zmm3,zmm12
  a57141:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm8
  a57148:	ff 
  a57149:	62 71 7c 48 28 15 ed 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff66fced]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a57150:	fc 66 ff 
  a57153:	62 c2 2d 48 7f dc    	vpermt2ps zmm19,zmm10,zmm12
  a57159:	62 11 7c 48 28 c0    	vmovaps zmm8,zmm24
  a5715f:	62 52 65 48 7f c6    	vpermt2ps zmm8,zmm3,zmm14
  a57165:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm8
  a5716c:	02 
  a5716d:	62 42 2d 48 7f c6    	vpermt2ps zmm24,zmm10,zmm14
  a57173:	62 41 7c 48 28 d7    	vmovaps zmm26,zmm15
  a57179:	62 62 65 48 7f d0    	vpermt2ps zmm26,zmm3,zmm0
  a5717f:	62 72 2d 48 7f f8    	vpermt2ps zmm15,zmm10,zmm0
  a57185:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm15
  a5718c:	fe 
  a5718d:	62 a1 7c 48 28 f1    	vmovaps zmm22,zmm17
  a57193:	62 e2 65 48 7f f1    	vpermt2ps zmm22,zmm3,zmm1
  a57199:	62 e2 2d 48 7f c9    	vpermt2ps zmm17,zmm10,zmm1
  a5719f:	62 a1 7c 48 28 ef    	vmovaps zmm21,zmm23
  a571a5:	62 e2 65 48 7f ea    	vpermt2ps zmm21,zmm3,zmm2
  a571ab:	62 e2 2d 48 7f fa    	vpermt2ps zmm23,zmm10,zmm2
  a571b1:	62 41 7c 48 28 e5    	vmovaps zmm28,zmm13
  a571b7:	62 62 65 48 7f e7    	vpermt2ps zmm28,zmm3,zmm7
  a571bd:	62 72 2d 48 7f ef    	vpermt2ps zmm13,zmm10,zmm7
  a571c3:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm13
  a571ca:	01 
  a571cb:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a571d2:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a571d8:	62 f2 25 40 7f c5    	vpermt2ps zmm0,zmm27,zmm5
  a571de:	62 f2 25 48 7f cd    	vpermt2ps zmm1,zmm11,zmm5
  a571e4:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a571ea:	62 b1 7c 48 28 c8    	vmovaps zmm1,zmm16
  a571f0:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0xc0]
  a571f7:	03 
  a571f8:	62 f2 25 40 7f ca    	vpermt2ps zmm1,zmm27,zmm2
  a571fe:	62 e2 25 48 7f c2    	vpermt2ps zmm16,zmm11,zmm2
  a57204:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  a5720a:	62 d2 25 40 7f d1    	vpermt2ps zmm2,zmm27,zmm9
  a57210:	62 42 25 48 7f e9    	vpermt2ps zmm29,zmm11,zmm9
  a57216:	62 91 7c 48 28 ee    	vmovaps zmm5,zmm30
  a5721c:	62 d2 25 40 7f e9    	vpermt2ps zmm5,zmm27,zmm9
  a57222:	62 42 25 48 7f f1    	vpermt2ps zmm30,zmm11,zmm9
  a57228:	62 91 7c 48 28 e1    	vmovaps zmm4,zmm25
  a5722e:	62 d2 25 40 7f e1    	vpermt2ps zmm4,zmm27,zmm9
  a57234:	62 42 25 48 7f c9    	vpermt2ps zmm25,zmm11,zmm9
  a5723a:	62 91 7c 48 28 ff    	vmovaps zmm7,zmm31
  a57240:	62 d2 25 40 7f f9    	vpermt2ps zmm7,zmm27,zmm9
  a57246:	62 42 25 48 7f f9    	vpermt2ps zmm31,zmm11,zmm9
  a5724c:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x100]
  a57253:	04 
  a57254:	62 51 7c 48 28 c4    	vmovaps zmm8,zmm12
  a5725a:	62 52 25 40 7f c1    	vpermt2ps zmm8,zmm27,zmm9
  a57260:	62 52 25 48 7f e1    	vpermt2ps zmm12,zmm11,zmm9
  a57266:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a5726c:	62 31 7c 48 28 e4    	vmovaps zmm12,zmm20
  a57272:	62 52 25 40 7f e1    	vpermt2ps zmm12,zmm27,zmm9
  a57278:	62 c2 25 48 7f e1    	vpermt2ps zmm20,zmm11,zmm9
  a5727e:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a57284:	62 72 4d 48 7f ec    	vpermt2ps zmm13,zmm6,zmm4
  a5728a:	62 f2 6d 40 7f c4    	vpermt2ps zmm0,zmm18,zmm4
  a57290:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a57296:	62 f2 4d 48 7f e7    	vpermt2ps zmm4,zmm6,zmm7
  a5729c:	62 f2 6d 40 7f cf    	vpermt2ps zmm1,zmm18,zmm7
  a572a2:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a572a8:	62 d2 4d 48 7f f8    	vpermt2ps zmm7,zmm6,zmm8
  a572ae:	62 d2 6d 40 7f d0    	vpermt2ps zmm2,zmm18,zmm8
  a572b4:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a572ba:	62 52 4d 48 7f c4    	vpermt2ps zmm8,zmm6,zmm12
  a572c0:	62 d2 6d 40 7f ec    	vpermt2ps zmm5,zmm18,zmm12
  a572c6:	62 12 4d 48 7f f9    	vpermt2ps zmm15,zmm6,zmm25
  a572cc:	62 82 4d 48 7f c7    	vpermt2ps zmm16,zmm6,zmm31
  a572d2:	62 42 4d 48 7f ee    	vpermt2ps zmm29,zmm6,zmm14
  a572d8:	62 22 4d 48 7f f4    	vpermt2ps zmm30,zmm6,zmm20
  a572de:	62 e1 95 48 14 d7    	vunpcklpd zmm18,zmm13,zmm7
  a572e4:	62 71 95 48 15 cf    	vunpckhpd zmm9,zmm13,zmm7
  a572ea:	62 d1 dd 48 14 f8    	vunpcklpd zmm7,zmm4,zmm8
  a572f0:	62 51 dd 48 15 c0    	vunpckhpd zmm8,zmm4,zmm8
  a572f6:	62 f1 fd 48 14 e2    	vunpcklpd zmm4,zmm0,zmm2
  a572fc:	62 71 fd 48 15 f2    	vunpckhpd zmm14,zmm0,zmm2
  a57302:	62 f1 f5 48 14 c5    	vunpcklpd zmm0,zmm1,zmm5
  a57308:	62 f1 f5 48 15 cd    	vunpckhpd zmm1,zmm1,zmm5
  a5730e:	62 01 85 48 14 dd    	vunpcklpd zmm27,zmm15,zmm29
  a57314:	62 91 85 48 15 ed    	vunpckhpd zmm5,zmm15,zmm29
  a5731a:	62 91 fd 40 14 d6    	vunpcklpd zmm2,zmm16,zmm30
  a57320:	62 11 fd 40 15 de    	vunpckhpd zmm11,zmm16,zmm30
  a57326:	62 b1 7c 48 28 f2    	vmovaps zmm6,zmm18
  a5732c:	62 f2 65 48 7f f7    	vpermt2ps zmm6,zmm3,zmm7
  a57332:	62 f1 7c 48 11 34 24 	vmovups ZMMWORD PTR [rsp],zmm6
  a57339:	62 e2 2d 48 7f d7    	vpermt2ps zmm18,zmm10,zmm7
  a5733f:	62 d1 7c 48 28 f1    	vmovaps zmm6,zmm9
  a57345:	62 d2 65 48 7f f0    	vpermt2ps zmm6,zmm3,zmm8
  a5734b:	62 52 2d 48 7f c8    	vpermt2ps zmm9,zmm10,zmm8
  a57351:	62 61 7c 48 28 fc    	vmovaps zmm31,zmm4
  a57357:	62 62 65 48 7f f8    	vpermt2ps zmm31,zmm3,zmm0
  a5735d:	62 f2 2d 48 7f e0    	vpermt2ps zmm4,zmm10,zmm0
  a57363:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a57369:	62 72 65 48 7f f9    	vpermt2ps zmm15,zmm3,zmm1
  a5736f:	62 72 2d 48 7f f1    	vpermt2ps zmm14,zmm10,zmm1
  a57375:	62 91 7c 48 28 fb    	vmovaps zmm7,zmm27
  a5737b:	62 f2 65 48 7f fa    	vpermt2ps zmm7,zmm3,zmm2
  a57381:	62 62 2d 48 7f da    	vpermt2ps zmm27,zmm10,zmm2
  a57387:	62 61 7c 48 28 ed    	vmovaps zmm29,zmm5
  a5738d:	62 42 65 48 7f eb    	vpermt2ps zmm29,zmm3,zmm11
  a57393:	62 d2 2d 48 7f eb    	vpermt2ps zmm5,zmm10,zmm11
  a57399:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a573a0:	62 71 7c 48 10 41 03 	vmovups zmm8,ZMMWORD PTR [rcx+0xc0]
  a573a7:	62 f1 7c 48 10 41 0c 	vmovups zmm0,ZMMWORD PTR [rcx+0x300]
  a573ae:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  a573b5:	62 71 4c 40 59 d8    	vmulps zmm11,zmm22,zmm0
  a573bb:	62 72 05 48 bc d9    	vfnmadd231ps zmm11,zmm15,zmm1
  a573c1:	62 61 04 48 59 f0    	vmulps zmm30,zmm15,zmm0
  a573c7:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  a573ce:	62 22 75 48 b8 f6    	vfmadd231ps zmm30,zmm1,zmm22
  a573d4:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a573db:	62 e1 3c 40 59 f0    	vmulps zmm22,zmm24,zmm0
  a573e1:	62 e2 35 48 bc f1    	vfnmadd231ps zmm22,zmm9,zmm1
  a573e7:	62 71 34 48 59 f8    	vmulps zmm15,zmm9,zmm0
  a573ed:	62 f1 7c 48 10 41 12 	vmovups zmm0,ZMMWORD PTR [rcx+0x480]
  a573f4:	62 12 75 48 b8 f8    	vfmadd231ps zmm15,zmm1,zmm24
  a573fa:	62 f1 7c 48 10 49 13 	vmovups zmm1,ZMMWORD PTR [rcx+0x4c0]
  a57401:	62 71 44 40 59 d0    	vmulps zmm10,zmm23,zmm0
  a57407:	62 72 25 40 bc d1    	vfnmadd231ps zmm10,zmm27,zmm1
  a5740d:	62 61 24 40 59 c0    	vmulps zmm24,zmm27,zmm0
  a57413:	62 f1 7c 48 10 51 08 	vmovups zmm2,ZMMWORD PTR [rcx+0x200]
  a5741a:	62 22 75 48 b8 c7    	vfmadd231ps zmm24,zmm1,zmm23
  a57420:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  a57427:	62 f1 2c 40 59 c2    	vmulps zmm0,zmm26,zmm2
  a5742d:	62 f2 05 40 bc c1    	vfnmadd231ps zmm0,zmm31,zmm1
  a57433:	62 61 04 40 59 ca    	vmulps zmm25,zmm31,zmm2
  a57439:	62 f1 7c 48 10 51 14 	vmovups zmm2,ZMMWORD PTR [rcx+0x500]
  a57440:	62 02 75 48 b8 ca    	vfmadd231ps zmm25,zmm1,zmm26
  a57446:	62 f1 7c 48 10 49 15 	vmovups zmm1,ZMMWORD PTR [rcx+0x540]
  a5744d:	62 71 1c 40 59 ea    	vmulps zmm13,zmm28,zmm2
  a57453:	62 72 15 40 bc e9    	vfnmadd231ps zmm13,zmm29,zmm1
  a57459:	62 61 14 40 59 d2    	vmulps zmm26,zmm29,zmm2
  a5745f:	62 f1 7c 48 10 51 0e 	vmovups zmm2,ZMMWORD PTR [rcx+0x380]
  a57466:	62 02 75 48 b8 d4    	vfmadd231ps zmm26,zmm1,zmm28
  a5746c:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a57473:	62 61 74 40 59 da    	vmulps zmm27,zmm17,zmm2
  a57479:	62 62 0d 48 bc d9    	vfnmadd231ps zmm27,zmm14,zmm1
  a5747f:	62 f1 0c 48 59 d2    	vmulps zmm2,zmm14,zmm2
  a57485:	62 71 7c 48 10 71 04 	vmovups zmm14,ZMMWORD PTR [rcx+0x100]
  a5748c:	62 b2 75 48 b8 d1    	vfmadd231ps zmm2,zmm1,zmm17
  a57492:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  a57499:	62 d1 64 40 59 dc    	vmulps zmm3,zmm19,zmm12
  a5749f:	62 d2 6d 40 bc d8    	vfnmadd231ps zmm3,zmm18,zmm8
  a574a5:	62 51 6c 40 59 cc    	vmulps zmm9,zmm18,zmm12
  a574ab:	62 71 7c 48 10 61 10 	vmovups zmm12,ZMMWORD PTR [rcx+0x400]
  a574b2:	62 32 3d 48 b8 cb    	vfmadd231ps zmm9,zmm8,zmm19
  a574b8:	62 71 7c 48 10 41 11 	vmovups zmm8,ZMMWORD PTR [rcx+0x440]
  a574bf:	62 c1 54 40 59 e4    	vmulps zmm20,zmm21,zmm12
  a574c5:	62 c2 45 48 bc e0    	vfnmadd231ps zmm20,zmm7,zmm8
  a574cb:	62 d1 44 48 59 fc    	vmulps zmm7,zmm7,zmm12
  a574d1:	62 71 7c 48 10 61 0a 	vmovups zmm12,ZMMWORD PTR [rcx+0x280]
  a574d8:	62 b2 3d 48 b8 fd    	vfmadd231ps zmm7,zmm8,zmm21
  a574de:	62 71 7c 48 10 41 0b 	vmovups zmm8,ZMMWORD PTR [rcx+0x2c0]
  a574e5:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x80]
  a574ec:	02 
  a574ed:	62 c1 7c 40 59 fe    	vmulps zmm23,zmm16,zmm14
  a574f3:	62 e2 4d 48 bc f9    	vfnmadd231ps zmm23,zmm6,zmm1
  a574f9:	62 51 4c 48 59 f6    	vmulps zmm14,zmm6,zmm14
  a574ff:	62 f1 7c 48 10 71 16 	vmovups zmm6,ZMMWORD PTR [rcx+0x580]
  a57506:	62 32 75 48 b8 f0    	vfmadd231ps zmm14,zmm1,zmm16
  a5750c:	62 f1 7c 48 10 49 17 	vmovups zmm1,ZMMWORD PTR [rcx+0x5c0]
  a57513:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x40]
  a5751a:	01 
  a5751b:	62 e1 74 40 59 ee    	vmulps zmm21,zmm17,zmm6
  a57521:	62 e2 55 48 bc e9    	vfnmadd231ps zmm21,zmm5,zmm1
  a57527:	62 f1 54 48 59 ee    	vmulps zmm5,zmm5,zmm6
  a5752d:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp-0x40]
  a57534:	ff 
  a57535:	62 41 7c 40 58 e3    	vaddps zmm28,zmm16,zmm11
  a5753b:	62 b2 75 48 b8 e9    	vfmadd231ps zmm5,zmm1,zmm17
  a57541:	62 d1 4c 40 58 ca    	vaddps zmm1,zmm22,zmm10
  a57547:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp-0x80]
  a5754e:	fe 
  a5754f:	62 c1 4c 48 59 dc    	vmulps zmm19,zmm6,zmm12
  a57555:	62 c2 5d 48 bc d8    	vfnmadd231ps zmm19,zmm4,zmm8
  a5755b:	62 d1 5c 48 59 e4    	vmulps zmm4,zmm4,zmm12
  a57561:	62 51 7c 48 58 e5    	vaddps zmm12,zmm0,zmm13
  a57567:	62 f2 3d 48 b8 e6    	vfmadd231ps zmm4,zmm8,zmm6
  a5756d:	62 e1 24 40 58 cb    	vaddps zmm17,zmm27,zmm3
  a57573:	62 21 5c 40 58 ef    	vaddps zmm29,zmm20,zmm23
  a57579:	62 d1 7c 48 5c f5    	vsubps zmm6,zmm0,zmm13
  a5757f:	62 51 6c 48 58 e9    	vaddps zmm13,zmm2,zmm9
  a57585:	62 d1 6c 48 5c c1    	vsubps zmm0,zmm2,zmm9
  a5758b:	62 b1 54 40 58 d3    	vaddps zmm2,zmm21,zmm19
  a57591:	62 31 5c 40 5c c7    	vsubps zmm8,zmm20,zmm23
  a57597:	62 71 54 48 58 cc    	vaddps zmm9,zmm5,zmm4
  a5759d:	62 e1 54 48 5c fc    	vsubps zmm23,zmm5,zmm4
  a575a3:	62 f1 7c 48 10 2c 24 	vmovups zmm5,ZMMWORD PTR [rsp]
  a575aa:	62 e1 0c 40 58 e5    	vaddps zmm20,zmm30,zmm5
  a575b0:	62 c1 7c 40 5c c3    	vsubps zmm16,zmm16,zmm11
  a575b6:	62 01 04 48 58 f8    	vaddps zmm31,zmm15,zmm24
  a575bc:	62 11 04 48 5c f8    	vsubps zmm15,zmm15,zmm24
  a575c2:	62 11 34 40 58 da    	vaddps zmm11,zmm25,zmm26
  a575c8:	62 01 34 40 5c c2    	vsubps zmm24,zmm25,zmm26
  a575ce:	62 41 44 48 58 ce    	vaddps zmm25,zmm7,zmm14
  a575d4:	62 01 64 48 5c d3    	vsubps zmm26,zmm3,zmm27
  a575da:	62 91 3c 40 58 da    	vaddps zmm3,zmm24,zmm26
  a575e0:	62 41 44 48 5c de    	vsubps zmm27,zmm7,zmm14
  a575e6:	62 a1 64 40 5c dd    	vsubps zmm19,zmm19,zmm21
  a575ec:	62 b1 24 40 58 e3    	vaddps zmm4,zmm27,zmm19
  a575f2:	62 e1 64 48 5c ec    	vsubps zmm21,zmm3,zmm4
  a575f8:	62 f1 64 48 58 dc    	vaddps zmm3,zmm3,zmm4
  a575fe:	62 f1 4c 48 58 e0    	vaddps zmm4,zmm6,zmm0
  a57604:	62 81 54 48 5c d6    	vsubps zmm18,zmm5,zmm30
  a5760a:	62 b1 3c 48 58 ff    	vaddps zmm7,zmm8,zmm23
  a57610:	62 a1 2c 48 5c f6    	vsubps zmm22,zmm10,zmm22
  a57616:	62 f1 5c 48 58 ef    	vaddps zmm5,zmm4,zmm7
  a5761c:	62 61 5c 48 5c f7    	vsubps zmm30,zmm4,zmm7
  a57622:	62 31 1c 48 58 f1    	vaddps zmm14,zmm12,zmm17
  a57628:	62 31 1c 48 5c d1    	vsubps zmm10,zmm12,zmm17
  a5762e:	62 71 14 40 58 e2    	vaddps zmm12,zmm29,zmm2
  a57634:	62 f1 14 40 5c d2    	vsubps zmm2,zmm29,zmm2
  a5763a:	62 f1 1c 40 58 e1    	vaddps zmm4,zmm28,zmm1
  a57640:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm4
  a57647:	fe 
  a57648:	62 61 1c 40 5c e1    	vsubps zmm28,zmm28,zmm1
  a5764e:	62 41 24 48 58 ed    	vaddps zmm29,zmm11,zmm13
  a57654:	62 d1 24 48 5c cd    	vsubps zmm1,zmm11,zmm13
  a5765a:	62 51 34 40 58 e9    	vaddps zmm13,zmm25,zmm9
  a57660:	62 d1 34 40 5c f9    	vsubps zmm7,zmm25,zmm9
  a57666:	62 f1 74 48 5c e7    	vsubps zmm4,zmm1,zmm7
  a5766c:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a57673:	ff 
  a57674:	62 71 74 48 58 cf    	vaddps zmm9,zmm1,zmm7
  a5767a:	62 b1 04 40 58 fc    	vaddps zmm7,zmm31,zmm20
  a57680:	62 01 5c 40 5c cf    	vsubps zmm25,zmm20,zmm31
  a57686:	62 61 2c 48 58 fa    	vaddps zmm31,zmm10,zmm2
  a5768c:	62 71 2c 48 5c da    	vsubps zmm11,zmm10,zmm2
  a57692:	62 51 7c 40 58 d7    	vaddps zmm10,zmm16,zmm15
  a57698:	62 d1 7c 40 5c d7    	vsubps zmm2,zmm16,zmm15
  a5769e:	62 c1 0c 48 58 cc    	vaddps zmm17,zmm14,zmm12
  a576a4:	62 f1 4c 48 5c c8    	vsubps zmm1,zmm6,zmm0
  a576aa:	62 c1 14 40 58 e5    	vaddps zmm20,zmm29,zmm13
  a576b0:	62 a1 3c 48 5c c7    	vsubps zmm16,zmm8,zmm23
  a576b6:	62 a1 4c 40 58 fa    	vaddps zmm23,zmm22,zmm18
  a576bc:	62 a1 6c 40 5c f6    	vsubps zmm22,zmm18,zmm22
  a576c2:	62 72 7d 48 18 3d 94 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff61dd94]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a576c9:	dd 61 ff 
  a576cc:	62 d1 7c 48 28 f7    	vmovaps zmm6,zmm15
  a576d2:	62 d2 55 48 ac f2    	vfnmadd213ps zmm6,zmm5,zmm10
  a576d8:	62 f2 7d 48 18 25 f2 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff61dbf2]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a576df:	db 61 ff 
  a576e2:	62 71 54 40 59 c4    	vmulps zmm8,zmm21,zmm4
  a576e8:	62 01 3c 40 5c c2    	vsubps zmm24,zmm24,zmm26
  a576ee:	62 c1 4c 48 58 d0    	vaddps zmm18,zmm6,zmm8
  a576f4:	62 a1 24 40 5c db    	vsubps zmm19,zmm27,zmm19
  a576fa:	62 c1 7c 48 28 ef    	vmovaps zmm21,zmm15
  a57700:	62 a2 65 48 ac ef    	vfnmadd213ps zmm21,zmm3,zmm23
  a57706:	62 61 0c 40 59 d4    	vmulps zmm26,zmm30,zmm4
  a5770c:	62 51 14 40 5c ed    	vsubps zmm13,zmm29,zmm13
  a57712:	62 91 54 40 5c c2    	vsubps zmm0,zmm21,zmm26
  a57718:	62 51 0c 48 5c f4    	vsubps zmm14,zmm14,zmm12
  a5771e:	62 41 7c 48 28 df    	vmovaps zmm27,zmm15
  a57724:	62 02 05 40 ac dc    	vfnmadd213ps zmm27,zmm31,zmm28
  a5772a:	62 51 4c 48 5c c0    	vsubps zmm8,zmm6,zmm8
  a57730:	62 41 7c 48 28 ef    	vmovaps zmm29,zmm15
  a57736:	62 02 35 48 ac e9    	vfnmadd213ps zmm29,zmm9,zmm25
  a5773c:	62 11 54 40 58 e2    	vaddps zmm12,zmm21,zmm26
  a57742:	62 21 74 48 58 d0    	vaddps zmm26,zmm1,zmm16
  a57748:	62 91 1c 40 58 f7    	vaddps zmm6,zmm28,zmm31
  a5774e:	62 81 6c 48 58 ea    	vaddps zmm21,zmm2,zmm26
  a57754:	62 51 34 40 58 c9    	vaddps zmm9,zmm25,zmm9
  a5775a:	62 21 3c 40 58 cb    	vaddps zmm25,zmm24,zmm19
  a57760:	62 62 05 48 ac d2    	vfnmadd213ps zmm26,zmm15,zmm2
  a57766:	62 91 4c 40 58 d1    	vaddps zmm2,zmm22,zmm25
  a5776c:	62 21 3c 40 5c c3    	vsubps zmm24,zmm24,zmm19
  a57772:	62 c1 7c 48 28 df    	vmovaps zmm19,zmm15
  a57778:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp-0x80]
  a5777f:	fe 
  a57780:	62 82 75 40 ac de    	vfnmadd213ps zmm19,zmm17,zmm30
  a57786:	62 71 14 48 59 ec    	vmulps zmm13,zmm13,zmm4
  a5778c:	62 22 05 48 ac ce    	vfnmadd213ps zmm25,zmm15,zmm22
  a57792:	62 c1 64 40 58 f5    	vaddps zmm22,zmm19,zmm13
  a57798:	62 21 74 48 5c e0    	vsubps zmm28,zmm1,zmm16
  a5779e:	62 72 5d 40 ac ff    	vfnmadd213ps zmm15,zmm20,zmm7
  a577a4:	62 71 0c 48 59 f4    	vmulps zmm14,zmm14,zmm4
  a577aa:	62 c1 64 40 5c c5    	vsubps zmm16,zmm19,zmm13
  a577b0:	62 51 04 48 5c ee    	vsubps zmm13,zmm15,zmm14
  a577b6:	62 c1 04 48 58 de    	vaddps zmm19,zmm15,zmm14
  a577bc:	62 71 2c 48 58 d5    	vaddps zmm10,zmm10,zmm5
  a577c2:	62 f1 5c 48 59 6c 24 	vmulps zmm5,zmm4,ZMMWORD PTR [rsp-0x40]
  a577c9:	ff 
  a577ca:	62 71 44 40 58 fb    	vaddps zmm15,zmm23,zmm3
  a577d0:	62 e1 24 40 5c fd    	vsubps zmm23,zmm27,zmm5
  a577d6:	62 f1 24 48 59 cc    	vmulps zmm1,zmm11,zmm4
  a577dc:	62 f1 24 40 58 ed    	vaddps zmm5,zmm27,zmm5
  a577e2:	62 61 14 40 58 d9    	vaddps zmm27,zmm29,zmm1
  a577e8:	62 f1 3c 40 59 dc    	vmulps zmm3,zmm24,zmm4
  a577ee:	62 71 14 40 5c f1    	vsubps zmm14,zmm29,zmm1
  a577f4:	62 f1 2c 40 58 cb    	vaddps zmm1,zmm26,zmm3
  a577fa:	62 71 1c 40 59 dc    	vmulps zmm11,zmm28,zmm4
  a57800:	62 f1 2c 40 5c db    	vsubps zmm3,zmm26,zmm3
  a57806:	62 41 34 40 5c c3    	vsubps zmm24,zmm25,zmm11
  a5780c:	62 51 34 40 58 db    	vaddps zmm11,zmm25,zmm11
  a57812:	62 b1 44 48 58 fc    	vaddps zmm7,zmm7,zmm20
  a57818:	62 b1 0c 40 58 e1    	vaddps zmm4,zmm30,zmm17
  a5781e:	62 b3 7d 48 19 f9 02 	vextractf32x4 xmm17,zmm7,0x2
  a57825:	62 e1 7c 48 28 25 51 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff63b951]        # 93180 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20630>
  a5782c:	b9 63 ff 
  a5782f:	62 f2 5d 40 7f fc    	vpermt2ps zmm7,zmm20,zmm4
  a57835:	62 f1 7c 48 11 3c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm7
  a5783c:	62 f3 7d 48 19 e4 02 	vextractf32x4 xmm4,zmm4,0x2
  a57843:	62 f1 74 00 14 e4    	vunpcklps xmm4,xmm17,xmm4
  a57849:	c5 f8 11 64 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm4
  a5784f:	62 f3 7d 48 19 c4 02 	vextractf32x4 xmm4,zmm0,0x2
  a57856:	62 b2 5d 40 7f c2    	vpermt2ps zmm0,zmm20,zmm18
  a5785c:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x50],zmm0
  a57863:	50 00 00 00 
  a57867:	62 e3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm18,0x2
  a5786e:	c5 d8 14 c0          	vunpcklps xmm0,xmm4,xmm0
  a57872:	c5 f8 11 84 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm0
  a57879:	00 00 
  a5787b:	62 63 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm27,0x2
  a57882:	62 22 5d 40 7f df    	vpermt2ps zmm27,zmm20,zmm23
  a57888:	62 61 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xa0],zmm27
  a5788f:	a0 00 00 00 
  a57893:	62 e3 7d 48 19 fc 02 	vextractf32x4 xmm4,zmm23,0x2
  a5789a:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  a5789e:	c5 f8 11 84 16 e0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xe0],xmm0
  a578a5:	00 00 
  a578a7:	62 f3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm2,0x2
  a578ae:	62 b2 5d 40 7f d5    	vpermt2ps zmm2,zmm20,zmm21
  a578b4:	62 f1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm2
  a578bb:	f0 00 00 00 
  a578bf:	62 e3 7d 48 19 ea 02 	vextractf32x4 xmm2,zmm21,0x2
  a578c6:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a578ca:	c5 f8 11 84 16 30 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x130],xmm0
  a578d1:	00 00 
  a578d3:	62 73 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm13,0x2
  a578da:	62 32 5d 40 7f ee    	vpermt2ps zmm13,zmm20,zmm22
  a578e0:	62 71 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm13
  a578e7:	05 
  a578e8:	62 e3 7d 48 19 f2 02 	vextractf32x4 xmm2,zmm22,0x2
  a578ef:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a578f3:	c5 f8 11 84 16 80 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x180],xmm0
  a578fa:	00 00 
  a578fc:	62 73 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm12,0x2
  a57903:	62 52 5d 40 7f e0    	vpermt2ps zmm12,zmm20,zmm8
  a57909:	62 71 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x190],zmm12
  a57910:	90 01 00 00 
  a57914:	62 73 7d 48 19 c2 02 	vextractf32x4 xmm2,zmm8,0x2
  a5791b:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a5791f:	c5 f8 11 84 16 d0 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x1d0],xmm0
  a57926:	00 00 
  a57928:	62 73 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm9,0x2
  a5792f:	62 72 5d 40 7f ce    	vpermt2ps zmm9,zmm20,zmm6
  a57935:	62 71 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm9
  a5793c:	e0 01 00 00 
  a57940:	62 f3 7d 48 19 f2 02 	vextractf32x4 xmm2,zmm6,0x2
  a57947:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a5794b:	c5 f8 11 84 16 20 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x220],xmm0
  a57952:	00 00 
  a57954:	62 63 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm24,0x2
  a5795b:	62 62 5d 40 7f c1    	vpermt2ps zmm24,zmm20,zmm1
  a57961:	62 61 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x230],zmm24
  a57968:	30 02 00 00 
  a5796c:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a57973:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a57977:	c5 f8 11 84 16 70 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x270],xmm0
  a5797e:	00 00 
  a57980:	62 e3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm19,0x2
  a57987:	62 a2 5d 40 7f d8    	vpermt2ps zmm19,zmm20,zmm16
  a5798d:	62 e1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm19
  a57994:	0a 
  a57995:	62 e3 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm16,0x2
  a5799c:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a579a0:	c5 f8 11 84 16 c0 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x2c0],xmm0
  a579a7:	00 00 
  a579a9:	62 73 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm15,0x2
  a579b0:	62 52 5d 40 7f fa    	vpermt2ps zmm15,zmm20,zmm10
  a579b6:	62 71 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm15
  a579bd:	d0 02 00 00 
  a579c1:	62 73 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm10,0x2
  a579c8:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a579cc:	c5 f8 11 84 16 10 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x310],xmm0
  a579d3:	00 00 
  a579d5:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a579dc:	62 72 5d 40 7f f5    	vpermt2ps zmm14,zmm20,zmm5
  a579e2:	62 71 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x320],zmm14
  a579e9:	20 03 00 00 
  a579ed:	62 f3 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm5,0x2
  a579f4:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a579f8:	c5 f8 11 84 16 60 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x360],xmm0
  a579ff:	00 00 
  a57a01:	62 73 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm11,0x2
  a57a08:	62 72 5d 40 7f db    	vpermt2ps zmm11,zmm20,zmm3
  a57a0e:	62 71 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x370],zmm11
  a57a15:	70 03 00 00 
  a57a19:	62 f3 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm3,0x2
  a57a20:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a57a24:	c5 f8 11 84 16 b0 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x3b0],xmm0
  a57a2b:	00 00 
  a57a2d:	48 81 c2 c0 03 00 00 	add    rdx,0x3c0
  a57a34:	48 39 d0             	cmp    rax,rdx
  a57a37:	0f 85 53 f1 ff ff    	jne    a56b90 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  a57a3d:	48 81 c4 48 01 00 00 	add    rsp,0x148
  a57a44:	c5 f8 77             	vzeroupper
  a57a47:	c3                   	ret
