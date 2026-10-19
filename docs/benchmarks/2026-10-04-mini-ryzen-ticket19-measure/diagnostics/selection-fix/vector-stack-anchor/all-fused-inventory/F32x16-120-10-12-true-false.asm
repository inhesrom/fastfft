
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a43a40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a43a40:	48 81 ec 48 01 00 00 	sub    rsp,0x148
  a43a47:	62 f1 7c 48 10 17    	vmovups zmm2,ZMMWORD PTR [rdi]
  a43a4d:	c5 fc 10 47 40       	vmovups ymm0,YMMWORD PTR [rdi+0x40]
  a43a52:	62 f1 7c 48 28 1d 24 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff64e624]        # 92080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f530>
  a43a59:	e6 64 ff 
  a43a5c:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a43a62:	62 f2 65 48 7f e0    	vpermt2ps zmm4,zmm3,zmm0
  a43a68:	62 f1 7c 48 28 0d 4e 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff64e64e]        # 920c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f570>
  a43a6f:	e6 64 ff 
  a43a72:	62 f2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm0
  a43a78:	62 f1 7c 48 10 af 60 	vmovups zmm5,ZMMWORD PTR [rdi+0x60]
  a43a7f:	00 00 00 
  a43a82:	c5 fc 10 87 a0 00 00 	vmovups ymm0,YMMWORD PTR [rdi+0xa0]
  a43a89:	00 
  a43a8a:	62 61 7c 48 28 c5    	vmovaps zmm24,zmm5
  a43a90:	62 62 65 48 7f c0    	vpermt2ps zmm24,zmm3,zmm0
  a43a96:	62 f2 75 48 7f e8    	vpermt2ps zmm5,zmm1,zmm0
  a43a9c:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a43aa2:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm5
  a43aa9:	fe 
  a43aaa:	62 71 7c 48 10 57 03 	vmovups zmm10,ZMMWORD PTR [rdi+0xc0]
  a43ab1:	c5 fc 10 87 00 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x100]
  a43ab8:	00 
  a43ab9:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a43abf:	62 72 65 48 7f f8    	vpermt2ps zmm15,zmm3,zmm0
  a43ac5:	62 72 75 48 7f d0    	vpermt2ps zmm10,zmm1,zmm0
  a43acb:	62 71 7c 48 10 a7 20 	vmovups zmm12,ZMMWORD PTR [rdi+0x120]
  a43ad2:	01 00 00 
  a43ad5:	c5 fc 10 87 60 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x160]
  a43adc:	00 
  a43add:	62 c1 7c 48 28 d4    	vmovaps zmm18,zmm12
  a43ae3:	62 e2 65 48 7f d0    	vpermt2ps zmm18,zmm3,zmm0
  a43ae9:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a43aef:	62 71 7c 48 10 4f 06 	vmovups zmm9,ZMMWORD PTR [rdi+0x180]
  a43af6:	c5 fc 10 87 c0 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x1c0]
  a43afd:	00 
  a43afe:	62 c1 7c 48 28 f1    	vmovaps zmm22,zmm9
  a43b04:	62 e2 65 48 7f f0    	vpermt2ps zmm22,zmm3,zmm0
  a43b0a:	62 72 75 48 7f c8    	vpermt2ps zmm9,zmm1,zmm0
  a43b10:	62 f1 7c 48 10 b7 e0 	vmovups zmm6,ZMMWORD PTR [rdi+0x1e0]
  a43b17:	01 00 00 
  a43b1a:	c5 fc 10 87 20 02 00 	vmovups ymm0,YMMWORD PTR [rdi+0x220]
  a43b21:	00 
  a43b22:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  a43b28:	62 f2 65 48 7f e8    	vpermt2ps zmm5,zmm3,zmm0
  a43b2e:	62 f2 75 48 7f f0    	vpermt2ps zmm6,zmm1,zmm0
  a43b34:	62 71 7c 48 10 5f 09 	vmovups zmm11,ZMMWORD PTR [rdi+0x240]
  a43b3b:	c5 fc 10 87 80 02 00 	vmovups ymm0,YMMWORD PTR [rdi+0x280]
  a43b42:	00 
  a43b43:	62 41 7c 48 28 cb    	vmovaps zmm25,zmm11
  a43b49:	62 62 65 48 7f c8    	vpermt2ps zmm25,zmm3,zmm0
  a43b4f:	62 72 75 48 7f d8    	vpermt2ps zmm11,zmm1,zmm0
  a43b55:	62 f1 7c 48 10 bf a0 	vmovups zmm7,ZMMWORD PTR [rdi+0x2a0]
  a43b5c:	02 00 00 
  a43b5f:	c5 fc 10 87 e0 02 00 	vmovups ymm0,YMMWORD PTR [rdi+0x2e0]
  a43b66:	00 
  a43b67:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a43b6d:	62 72 65 48 7f e8    	vpermt2ps zmm13,zmm3,zmm0
  a43b73:	62 f2 75 48 7f f8    	vpermt2ps zmm7,zmm1,zmm0
  a43b79:	62 e1 7c 48 10 47 0c 	vmovups zmm16,ZMMWORD PTR [rdi+0x300]
  a43b80:	c5 fc 10 87 40 03 00 	vmovups ymm0,YMMWORD PTR [rdi+0x340]
  a43b87:	00 
  a43b88:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a43b8e:	62 e2 65 48 7f e0    	vpermt2ps zmm20,zmm3,zmm0
  a43b94:	62 e2 75 48 7f c0    	vpermt2ps zmm16,zmm1,zmm0
  a43b9a:	62 e1 7c 48 10 8f 60 	vmovups zmm17,ZMMWORD PTR [rdi+0x360]
  a43ba1:	03 00 00 
  a43ba4:	c5 fc 10 87 a0 03 00 	vmovups ymm0,YMMWORD PTR [rdi+0x3a0]
  a43bab:	00 
  a43bac:	62 f2 75 40 77 d8    	vpermi2ps zmm3,zmm17,zmm0
  a43bb2:	62 e2 75 48 7f c8    	vpermt2ps zmm17,zmm1,zmm0
  a43bb8:	62 21 2c 48 58 e8    	vaddps zmm29,zmm10,zmm16
  a43bbe:	62 91 6c 48 58 c5    	vaddps zmm0,zmm2,zmm29
  a43bc4:	62 c1 34 48 58 db    	vaddps zmm19,zmm9,zmm11
  a43bca:	62 b1 7c 48 58 cb    	vaddps zmm1,zmm0,zmm19
  a43bd0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a43bd7:	ff 
  a43bd8:	62 41 44 48 58 fc    	vaddps zmm31,zmm7,zmm12
  a43bde:	62 91 4c 48 58 c7    	vaddps zmm0,zmm6,zmm31
  a43be4:	62 c1 74 40 58 e8    	vaddps zmm21,zmm17,zmm8
  a43bea:	62 b1 7c 48 58 c5    	vaddps zmm0,zmm0,zmm21
  a43bf0:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a43bf7:	62 71 74 48 58 f0    	vaddps zmm14,zmm1,zmm0
  a43bfd:	62 21 04 48 58 f4    	vaddps zmm30,zmm15,zmm20
  a43c03:	62 91 5c 48 58 c6    	vaddps zmm0,zmm4,zmm30
  a43c09:	62 81 4c 40 58 f9    	vaddps zmm23,zmm22,zmm25
  a43c0f:	62 31 7c 48 58 c7    	vaddps zmm8,zmm0,zmm23
  a43c15:	62 21 14 48 58 da    	vaddps zmm27,zmm13,zmm18
  a43c1b:	62 91 54 48 58 c3    	vaddps zmm0,zmm5,zmm27
  a43c21:	62 a1 04 48 5c e4    	vsubps zmm20,zmm15,zmm20
  a43c27:	62 01 64 48 58 d0    	vaddps zmm26,zmm3,zmm24
  a43c2d:	62 11 7c 48 58 fa    	vaddps zmm15,zmm0,zmm26
  a43c33:	62 81 4c 40 5c f1    	vsubps zmm22,zmm22,zmm25
  a43c39:	62 62 7d 48 18 25 a5 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff631aa5]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a43c40:	1a 63 ff 
  a43c43:	62 21 14 48 5c ca    	vsubps zmm25,zmm13,zmm18
  a43c49:	62 81 7c 48 28 d4    	vmovaps zmm18,zmm28
  a43c4f:	62 01 64 48 5c c0    	vsubps zmm24,zmm3,zmm24
  a43c55:	62 f2 7d 48 18 05 e5 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6319e5]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a43c5c:	19 63 ff 
  a43c5f:	62 e2 15 40 a8 d2    	vfmadd213ps zmm18,zmm29,zmm2
  a43c65:	62 92 7d 48 bc d5    	vfnmadd231ps zmm2,zmm0,zmm29
  a43c6b:	62 01 7c 48 28 ec    	vmovaps zmm29,zmm28
  a43c71:	62 62 05 40 a8 ee    	vfmadd213ps zmm29,zmm31,zmm6
  a43c77:	62 92 7d 48 bc f7    	vfnmadd231ps zmm6,zmm0,zmm31
  a43c7d:	62 01 7c 48 28 fc    	vmovaps zmm31,zmm28
  a43c83:	62 62 0d 40 a8 fc    	vfmadd213ps zmm31,zmm30,zmm4
  a43c89:	62 92 7d 48 bc e6    	vfnmadd231ps zmm4,zmm0,zmm30
  a43c8f:	62 01 7c 48 28 f4    	vmovaps zmm30,zmm28
  a43c95:	62 62 25 40 a8 f5    	vfmadd213ps zmm30,zmm27,zmm5
  a43c9b:	62 f2 25 40 bc e8    	vfnmadd231ps zmm5,zmm27,zmm0
  a43ca1:	62 d1 3c 48 58 cf    	vaddps zmm1,zmm8,zmm15
  a43ca7:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a43cae:	03 
  a43caf:	62 e2 65 40 bc d0    	vfnmadd231ps zmm18,zmm19,zmm0
  a43cb5:	62 62 55 40 bc e8    	vfnmadd231ps zmm29,zmm21,zmm0
  a43cbb:	62 62 45 40 bc f8    	vfnmadd231ps zmm31,zmm23,zmm0
  a43cc1:	62 62 2d 40 bc f0    	vfnmadd231ps zmm30,zmm26,zmm0
  a43cc7:	62 f2 7d 48 18 05 87 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff631a87]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a43cce:	1a 63 ff 
  a43cd1:	62 b2 1d 40 b8 d3    	vfmadd231ps zmm2,zmm28,zmm19
  a43cd7:	62 71 4c 40 59 e8    	vmulps zmm13,zmm22,zmm0
  a43cdd:	62 b2 1d 40 b8 f5    	vfmadd231ps zmm6,zmm28,zmm21
  a43ce3:	62 e2 7d 48 18 2d b3 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff6316b3]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a43cea:	16 63 ff 
  a43ced:	62 32 5d 40 b8 ed    	vfmadd231ps zmm13,zmm20,zmm21
  a43cf3:	62 b2 1d 40 b8 e7    	vfmadd231ps zmm4,zmm28,zmm23
  a43cf9:	62 c1 6c 40 58 fd    	vaddps zmm23,zmm18,zmm13
  a43cff:	62 92 2d 40 b8 ec    	vfmadd231ps zmm5,zmm26,zmm28
  a43d05:	62 61 3c 40 59 d0    	vmulps zmm26,zmm24,zmm0
  a43d0b:	62 22 35 40 b8 d5    	vfmadd231ps zmm26,zmm25,zmm21
  a43d11:	62 01 14 40 58 da    	vaddps zmm27,zmm29,zmm26
  a43d17:	62 31 2c 48 5c d0    	vsubps zmm10,zmm10,zmm16
  a43d1d:	62 81 44 40 5c db    	vsubps zmm19,zmm23,zmm27
  a43d23:	62 51 34 48 5c cb    	vsubps zmm9,zmm9,zmm11
  a43d29:	62 71 34 48 59 d8    	vmulps zmm11,zmm9,zmm0
  a43d2f:	62 32 2d 48 b8 dd    	vfmadd231ps zmm11,zmm10,zmm21
  a43d35:	62 d1 44 48 5c fc    	vsubps zmm7,zmm7,zmm12
  a43d3b:	62 c1 04 40 5c c3    	vsubps zmm16,zmm31,zmm11
  a43d41:	62 71 74 40 5c 64 24 	vsubps zmm12,zmm17,ZMMWORD PTR [rsp-0x80]
  a43d48:	fe 
  a43d49:	62 e1 1c 48 59 c8    	vmulps zmm17,zmm12,zmm0
  a43d4f:	62 a2 45 48 b8 cd    	vfmadd231ps zmm17,zmm7,zmm21
  a43d55:	62 61 5c 40 59 e0    	vmulps zmm28,zmm20,zmm0
  a43d5b:	62 22 55 40 bc e6    	vfnmadd231ps zmm28,zmm21,zmm22
  a43d61:	62 b1 0c 40 5c d9    	vsubps zmm3,zmm30,zmm17
  a43d67:	62 e1 34 40 59 f0    	vmulps zmm22,zmm25,zmm0
  a43d6d:	62 82 55 40 bc f0    	vfnmadd231ps zmm22,zmm21,zmm24
  a43d73:	62 f1 7c 40 5c cb    	vsubps zmm1,zmm16,zmm3
  a43d79:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a43d80:	02 
  a43d81:	62 71 2c 48 59 d0    	vmulps zmm10,zmm10,zmm0
  a43d87:	62 52 55 40 bc d1    	vfnmadd231ps zmm10,zmm21,zmm9
  a43d8d:	62 01 6c 48 58 c4    	vaddps zmm24,zmm2,zmm28
  a43d93:	62 f1 44 48 59 c0    	vmulps zmm0,zmm7,zmm0
  a43d99:	62 b1 4c 48 58 fe    	vaddps zmm7,zmm6,zmm22
  a43d9f:	62 b2 1d 48 bc c5    	vfnmadd231ps zmm0,zmm12,zmm21
  a43da5:	62 e1 3c 40 58 e7    	vaddps zmm20,zmm24,zmm7
  a43dab:	62 c1 5c 48 5c ea    	vsubps zmm21,zmm4,zmm10
  a43db1:	62 01 6c 48 5c cc    	vsubps zmm25,zmm2,zmm28
  a43db7:	62 61 54 48 5c e0    	vsubps zmm28,zmm5,zmm0
  a43dbd:	62 b1 4c 48 5c ce    	vsubps zmm1,zmm6,zmm22
  a43dc3:	62 11 54 40 58 cc    	vaddps zmm9,zmm21,zmm28
  a43dc9:	62 71 2c 48 58 d4    	vaddps zmm10,zmm10,zmm4
  a43dcf:	62 e1 34 40 5c f1    	vsubps zmm22,zmm25,zmm1
  a43dd5:	62 f1 7c 48 58 ed    	vaddps zmm5,zmm0,zmm5
  a43ddb:	62 f1 2c 48 5c c5    	vsubps zmm0,zmm10,zmm5
  a43de1:	62 c1 6c 40 5c d5    	vsubps zmm18,zmm18,zmm13
  a43de7:	62 01 14 40 5c d2    	vsubps zmm26,zmm29,zmm26
  a43ded:	62 91 6c 40 58 d2    	vaddps zmm2,zmm18,zmm26
  a43df3:	62 11 24 48 58 df    	vaddps zmm11,zmm11,zmm31
  a43df9:	62 01 74 40 58 ee    	vaddps zmm29,zmm17,zmm30
  a43dff:	62 11 24 48 58 ed    	vaddps zmm13,zmm11,zmm29
  a43e05:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a43e0c:	ff 
  a43e0d:	62 f1 5c 48 5c 24 24 	vsubps zmm4,zmm4,ZMMWORD PTR [rsp]
  a43e14:	62 51 3c 48 5c e7    	vsubps zmm12,zmm8,zmm15
  a43e1a:	62 91 44 40 58 f3    	vaddps zmm6,zmm23,zmm27
  a43e20:	62 e1 7c 40 58 c3    	vaddps zmm16,zmm16,zmm3
  a43e26:	62 f1 3c 40 5c ff    	vsubps zmm7,zmm24,zmm7
  a43e2c:	62 91 54 40 5c dc    	vsubps zmm3,zmm21,zmm28
  a43e32:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm3
  a43e39:	04 
  a43e3a:	62 f1 34 40 58 c9    	vaddps zmm1,zmm25,zmm1
  a43e40:	62 e1 2c 48 58 cd    	vaddps zmm17,zmm10,zmm5
  a43e46:	62 91 6c 40 5c da    	vsubps zmm3,zmm18,zmm26
  a43e4c:	62 01 24 48 5c ed    	vsubps zmm29,zmm11,zmm29
  a43e52:	62 e1 7c 48 28 15 24 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff683124]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a43e59:	31 68 ff 
  a43e5c:	62 51 7c 48 28 de    	vmovaps zmm11,zmm14
  a43e62:	62 72 6d 40 7f d9    	vpermt2ps zmm11,zmm18,zmm1
  a43e68:	62 f1 7c 48 28 2d 4e 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff68314e]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a43e6f:	31 68 ff 
  a43e72:	62 72 55 48 7f f1    	vpermt2ps zmm14,zmm5,zmm1
  a43e78:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a43e7e:	62 f2 6d 40 7f cb    	vpermt2ps zmm1,zmm18,zmm3
  a43e84:	62 e2 55 48 7f db    	vpermt2ps zmm19,zmm5,zmm3
  a43e8a:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  a43e8f:	62 b1 7c 48 28 dc    	vmovaps zmm3,zmm20
  a43e95:	62 d2 6d 40 7f da    	vpermt2ps zmm3,zmm18,zmm10
  a43e9b:	62 c2 55 48 7f e2    	vpermt2ps zmm20,zmm5,zmm10
  a43ea1:	62 21 7c 48 28 c6    	vmovaps zmm24,zmm22
  a43ea7:	62 42 6d 40 7f c2    	vpermt2ps zmm24,zmm18,zmm10
  a43ead:	62 c2 55 48 7f f2    	vpermt2ps zmm22,zmm5,zmm10
  a43eb3:	62 61 7c 48 28 ca    	vmovaps zmm25,zmm2
  a43eb9:	62 42 6d 40 7f ca    	vpermt2ps zmm25,zmm18,zmm10
  a43ebf:	62 d2 55 48 7f d2    	vpermt2ps zmm2,zmm5,zmm10
  a43ec5:	62 61 7c 48 28 d4    	vmovaps zmm26,zmm4
  a43ecb:	62 42 6d 40 7f d2    	vpermt2ps zmm26,zmm18,zmm10
  a43ed1:	62 d2 55 48 7f e2    	vpermt2ps zmm4,zmm5,zmm10
  a43ed7:	62 61 7c 48 28 de    	vmovaps zmm27,zmm6
  a43edd:	62 42 6d 40 7f da    	vpermt2ps zmm27,zmm18,zmm10
  a43ee3:	62 d2 55 48 7f f2    	vpermt2ps zmm6,zmm5,zmm10
  a43ee9:	62 61 7c 48 28 e7    	vmovaps zmm28,zmm7
  a43eef:	62 42 6d 40 7f e2    	vpermt2ps zmm28,zmm18,zmm10
  a43ef5:	62 d2 55 48 7f fa    	vpermt2ps zmm7,zmm5,zmm10
  a43efb:	62 e1 7c 48 28 2d fb 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff682ffb]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a43f02:	2f 68 ff 
  a43f05:	62 41 7c 48 28 f3    	vmovaps zmm30,zmm11
  a43f0b:	62 02 55 40 7f f1    	vpermt2ps zmm30,zmm21,zmm25
  a43f11:	62 e1 7c 48 28 3d 25 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff683025]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a43f18:	30 68 ff 
  a43f1b:	62 12 45 40 7f d9    	vpermt2ps zmm11,zmm23,zmm25
  a43f21:	62 61 7c 48 28 c9    	vmovaps zmm25,zmm1
  a43f27:	62 02 55 40 7f ca    	vpermt2ps zmm25,zmm21,zmm26
  a43f2d:	62 92 45 40 7f ca    	vpermt2ps zmm1,zmm23,zmm26
  a43f33:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a43f39:	62 02 55 40 7f d3    	vpermt2ps zmm26,zmm21,zmm27
  a43f3f:	62 92 45 40 7f db    	vpermt2ps zmm3,zmm23,zmm27
  a43f45:	62 01 7c 48 28 d8    	vmovaps zmm27,zmm24
  a43f4b:	62 02 55 40 7f dc    	vpermt2ps zmm27,zmm21,zmm28
  a43f51:	62 02 45 40 7f c4    	vpermt2ps zmm24,zmm23,zmm28
  a43f57:	62 72 55 40 7f f2    	vpermt2ps zmm14,zmm21,zmm2
  a43f5d:	62 e2 55 40 7f dc    	vpermt2ps zmm19,zmm21,zmm4
  a43f63:	62 e2 55 40 7f e6    	vpermt2ps zmm20,zmm21,zmm6
  a43f69:	62 e2 55 40 7f f7    	vpermt2ps zmm22,zmm21,zmm7
  a43f6f:	62 91 8d 40 14 d2    	vunpcklpd zmm2,zmm30,zmm26
  a43f75:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a43f7c:	ff 
  a43f7d:	62 91 8d 40 15 f2    	vunpckhpd zmm6,zmm30,zmm26
  a43f83:	62 91 b5 40 14 d3    	vunpcklpd zmm2,zmm25,zmm27
  a43f89:	62 01 b5 40 15 e3    	vunpckhpd zmm28,zmm25,zmm27
  a43f8f:	62 f1 a5 48 14 e3    	vunpcklpd zmm4,zmm11,zmm3
  a43f95:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a43f9c:	62 f1 a5 48 15 db    	vunpckhpd zmm3,zmm11,zmm3
  a43fa2:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a43fa9:	fe 
  a43faa:	62 01 f5 48 14 f0    	vunpcklpd zmm30,zmm1,zmm24
  a43fb0:	62 01 f5 48 15 d8    	vunpckhpd zmm27,zmm1,zmm24
  a43fb6:	62 b1 8d 48 14 fc    	vunpcklpd zmm7,zmm14,zmm20
  a43fbc:	62 b1 8d 48 15 cc    	vunpckhpd zmm1,zmm14,zmm20
  a43fc2:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a43fc9:	01 
  a43fca:	62 a1 e5 40 14 e6    	vunpcklpd zmm20,zmm19,zmm22
  a43fd0:	62 21 e5 40 15 d6    	vunpckhpd zmm26,zmm19,zmm22
  a43fd6:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0xc0]
  a43fdd:	03 
  a43fde:	62 21 7c 48 28 c6    	vmovaps zmm24,zmm22
  a43fe4:	62 22 6d 40 7f c1    	vpermt2ps zmm24,zmm18,zmm17
  a43fea:	62 a2 55 48 7f f1    	vpermt2ps zmm22,zmm5,zmm17
  a43ff0:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a43ff7:	02 
  a43ff8:	62 61 7c 48 28 c9    	vmovaps zmm25,zmm1
  a43ffe:	62 02 6d 40 7f cd    	vpermt2ps zmm25,zmm18,zmm29
  a44004:	62 92 55 48 7f cd    	vpermt2ps zmm1,zmm5,zmm29
  a4400a:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a44010:	62 41 7c 48 28 f9    	vmovaps zmm31,zmm9
  a44016:	62 42 6d 40 7f fa    	vpermt2ps zmm31,zmm18,zmm10
  a4401c:	62 52 55 48 7f ca    	vpermt2ps zmm9,zmm5,zmm10
  a44022:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a44028:	62 52 6d 40 7f da    	vpermt2ps zmm11,zmm18,zmm10
  a4402e:	62 d2 55 48 7f c2    	vpermt2ps zmm0,zmm5,zmm10
  a44034:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a4403a:	62 d2 6d 40 7f da    	vpermt2ps zmm3,zmm18,zmm10
  a44040:	62 52 55 48 7f ea    	vpermt2ps zmm13,zmm5,zmm10
  a44046:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a4404c:	62 52 6d 40 7f f2    	vpermt2ps zmm14,zmm18,zmm10
  a44052:	62 52 55 48 7f e2    	vpermt2ps zmm12,zmm5,zmm10
  a44058:	62 31 7c 48 28 f8    	vmovaps zmm15,zmm16
  a4405e:	62 52 6d 40 7f fa    	vpermt2ps zmm15,zmm18,zmm10
  a44064:	62 c2 55 48 7f c2    	vpermt2ps zmm16,zmm5,zmm10
  a4406a:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x100]
  a44071:	04 
  a44072:	62 c2 5d 48 77 d2    	vpermi2ps zmm18,zmm4,zmm10
  a44078:	62 d2 55 48 7f e2    	vpermt2ps zmm4,zmm5,zmm10
  a4407e:	62 e1 7c 48 28 0d 78 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff682d78]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a44085:	2d 68 ff 
  a44088:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a4408f:	ff 
  a44090:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a44096:	62 f2 75 40 7f ea    	vpermt2ps zmm5,zmm17,zmm2
  a4409c:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm5
  a440a3:	03 
  a440a4:	62 61 7c 48 28 2d 92 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff682d92]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a440ab:	2d 68 ff 
  a440ae:	62 f2 15 40 7f ca    	vpermt2ps zmm1,zmm29,zmm2
  a440b4:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a440bb:	ff 
  a440bc:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a440c2:	62 12 75 40 7f d4    	vpermt2ps zmm10,zmm17,zmm28
  a440c8:	62 92 15 40 7f f4    	vpermt2ps zmm6,zmm29,zmm28
  a440ce:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a440d5:	62 e1 7c 48 28 d9    	vmovaps zmm19,zmm1
  a440db:	62 82 75 40 7f de    	vpermt2ps zmm19,zmm17,zmm30
  a440e1:	62 92 15 40 7f ce    	vpermt2ps zmm1,zmm29,zmm30
  a440e7:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a440ee:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a440f5:	fe 
  a440f6:	62 61 7c 48 28 f1    	vmovaps zmm30,zmm1
  a440fc:	62 02 75 40 7f f3    	vpermt2ps zmm30,zmm17,zmm27
  a44102:	62 92 15 40 7f cb    	vpermt2ps zmm1,zmm29,zmm27
  a44108:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a4410f:	fe 
  a44110:	62 f1 7c 48 28 d7    	vmovaps zmm2,zmm7
  a44116:	62 b2 75 40 7f d4    	vpermt2ps zmm2,zmm17,zmm20
  a4411c:	62 b2 15 40 7f fc    	vpermt2ps zmm7,zmm29,zmm20
  a44122:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x40]
  a44129:	01 
  a4412a:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a44130:	62 82 75 40 7f e2    	vpermt2ps zmm20,zmm17,zmm26
  a44136:	62 92 15 40 7f ea    	vpermt2ps zmm5,zmm29,zmm26
  a4413c:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a44142:	62 62 55 40 7f d3    	vpermt2ps zmm26,zmm21,zmm3
  a44148:	62 62 45 40 7f c3    	vpermt2ps zmm24,zmm23,zmm3
  a4414e:	62 91 7c 48 28 d9    	vmovaps zmm3,zmm25
  a44154:	62 d2 55 40 7f de    	vpermt2ps zmm3,zmm21,zmm14
  a4415a:	62 42 45 40 7f ce    	vpermt2ps zmm25,zmm23,zmm14
  a44160:	62 01 7c 48 28 df    	vmovaps zmm27,zmm31
  a44166:	62 42 55 40 7f df    	vpermt2ps zmm27,zmm21,zmm15
  a4416c:	62 42 45 40 7f ff    	vpermt2ps zmm31,zmm23,zmm15
  a44172:	62 51 7c 48 28 fb    	vmovaps zmm15,zmm11
  a44178:	62 32 45 40 7f da    	vpermt2ps zmm11,zmm23,zmm18
  a4417e:	62 32 55 40 7f fa    	vpermt2ps zmm15,zmm21,zmm18
  a44184:	62 c2 55 40 7f f5    	vpermt2ps zmm22,zmm21,zmm13
  a4418a:	62 52 55 40 7f c4    	vpermt2ps zmm8,zmm21,zmm12
  a44190:	62 32 55 40 7f c8    	vpermt2ps zmm9,zmm21,zmm16
  a44196:	62 f2 55 40 7f c4    	vpermt2ps zmm0,zmm21,zmm4
  a4419c:	62 11 ad 40 14 f3    	vunpcklpd zmm14,zmm26,zmm27
  a441a2:	62 01 ad 40 15 d3    	vunpckhpd zmm26,zmm26,zmm27
  a441a8:	62 51 e5 48 14 e7    	vunpcklpd zmm12,zmm3,zmm15
  a441ae:	62 c1 e5 48 15 c7    	vunpckhpd zmm16,zmm3,zmm15
  a441b4:	62 11 bd 40 14 ef    	vunpcklpd zmm13,zmm24,zmm31
  a441ba:	62 11 bd 40 15 ff    	vunpckhpd zmm15,zmm24,zmm31
  a441c0:	62 c1 b5 40 14 d3    	vunpcklpd zmm18,zmm25,zmm11
  a441c6:	62 51 b5 40 15 db    	vunpckhpd zmm11,zmm25,zmm11
  a441cc:	62 41 cd 40 14 d9    	vunpcklpd zmm27,zmm22,zmm9
  a441d2:	62 51 cd 40 15 c9    	vunpckhpd zmm9,zmm22,zmm9
  a441d8:	62 e1 bd 48 14 e8    	vunpcklpd zmm21,zmm8,zmm0
  a441de:	62 f1 bd 48 15 c0    	vunpckhpd zmm0,zmm8,zmm0
  a441e4:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  a441ea:	62 d2 75 40 7f cc    	vpermt2ps zmm1,zmm17,zmm12
  a441f0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a441f7:	02 
  a441f8:	62 52 15 40 7f f4    	vpermt2ps zmm14,zmm29,zmm12
  a441fe:	62 11 7c 48 28 c2    	vmovaps zmm8,zmm26
  a44204:	62 32 75 40 7f c0    	vpermt2ps zmm8,zmm17,zmm16
  a4420a:	62 22 15 40 7f d0    	vpermt2ps zmm26,zmm29,zmm16
  a44210:	62 41 7c 48 28 e5    	vmovaps zmm28,zmm13
  a44216:	62 22 75 40 7f e2    	vpermt2ps zmm28,zmm17,zmm18
  a4421c:	62 32 15 40 7f ea    	vpermt2ps zmm13,zmm29,zmm18
  a44222:	62 c1 7c 48 28 ff    	vmovaps zmm23,zmm15
  a44228:	62 c2 75 40 7f fb    	vpermt2ps zmm23,zmm17,zmm11
  a4422e:	62 52 15 40 7f fb    	vpermt2ps zmm15,zmm29,zmm11
  a44234:	62 81 7c 48 28 c3    	vmovaps zmm16,zmm27
  a4423a:	62 a2 75 40 7f c5    	vpermt2ps zmm16,zmm17,zmm21
  a44240:	62 22 15 40 7f dd    	vpermt2ps zmm27,zmm29,zmm21
  a44246:	62 e2 35 48 77 c8    	vpermi2ps zmm17,zmm9,zmm0
  a4424c:	62 72 15 40 7f c8    	vpermt2ps zmm9,zmm29,zmm0
  a44252:	62 61 7c 48 10 4a 02 	vmovups zmm25,ZMMWORD PTR [rdx+0x80]
  a44259:	62 61 7c 48 10 42 03 	vmovups zmm24,ZMMWORD PTR [rdx+0xc0]
  a44260:	62 e1 7c 48 10 6a 04 	vmovups zmm21,ZMMWORD PTR [rdx+0x100]
  a44267:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a4426e:	62 f1 7c 48 10 42 06 	vmovups zmm0,ZMMWORD PTR [rdx+0x180]
  a44275:	62 71 7c 48 10 62 0c 	vmovups zmm12,ZMMWORD PTR [rdx+0x300]
  a4427c:	62 61 7c 48 10 6a 0d 	vmovups zmm29,ZMMWORD PTR [rdx+0x340]
  a44283:	62 51 0c 40 59 dc    	vmulps zmm11,zmm30,zmm12
  a44289:	62 12 45 40 bc dd    	vfnmadd231ps zmm11,zmm23,zmm29
  a4428f:	62 c1 44 40 59 fc    	vmulps zmm23,zmm23,zmm12
  a44295:	62 71 7c 48 10 62 07 	vmovups zmm12,ZMMWORD PTR [rdx+0x1c0]
  a4429c:	62 82 15 40 b8 fe    	vfmadd231ps zmm23,zmm29,zmm30
  a442a2:	62 61 7c 48 10 72 08 	vmovups zmm30,ZMMWORD PTR [rdx+0x200]
  a442a9:	62 e1 4c 48 59 f0    	vmulps zmm22,zmm6,zmm0
  a442af:	62 c2 2d 40 bc f4    	vfnmadd231ps zmm22,zmm26,zmm12
  a442b5:	62 61 2c 40 59 d0    	vmulps zmm26,zmm26,zmm0
  a442bb:	62 f1 7c 48 10 42 12 	vmovups zmm0,ZMMWORD PTR [rdx+0x480]
  a442c2:	62 62 1d 48 b8 d6    	vfmadd231ps zmm26,zmm12,zmm6
  a442c8:	62 71 7c 48 10 62 13 	vmovups zmm12,ZMMWORD PTR [rdx+0x4c0]
  a442cf:	62 f1 44 48 59 f0    	vmulps zmm6,zmm7,zmm0
  a442d5:	62 d2 25 40 bc f4    	vfnmadd231ps zmm6,zmm27,zmm12
  a442db:	62 61 24 40 59 d8    	vmulps zmm27,zmm27,zmm0
  a442e1:	62 f1 7c 48 10 42 09 	vmovups zmm0,ZMMWORD PTR [rdx+0x240]
  a442e8:	62 62 1d 48 b8 df    	vfmadd231ps zmm27,zmm12,zmm7
  a442ee:	62 61 7c 48 10 7a 0a 	vmovups zmm31,ZMMWORD PTR [rdx+0x280]
  a442f5:	62 01 64 40 59 ee    	vmulps zmm29,zmm19,zmm30
  a442fb:	62 62 1d 40 bc e8    	vfnmadd231ps zmm29,zmm28,zmm0
  a44301:	62 91 1c 40 59 fe    	vmulps zmm7,zmm28,zmm30
  a44307:	62 71 7c 48 10 62 14 	vmovups zmm12,ZMMWORD PTR [rdx+0x500]
  a4430e:	62 b2 7d 48 b8 fb    	vfmadd231ps zmm7,zmm0,zmm19
  a44314:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a4431b:	62 c1 5c 40 59 dc    	vmulps zmm19,zmm20,zmm12
  a44321:	62 e2 75 40 bc d8    	vfnmadd231ps zmm19,zmm17,zmm0
  a44327:	62 c1 74 40 59 cc    	vmulps zmm17,zmm17,zmm12
  a4432d:	62 71 7c 48 10 62 0e 	vmovups zmm12,ZMMWORD PTR [rdx+0x380]
  a44334:	62 a2 7d 48 b8 cc    	vfmadd231ps zmm17,zmm0,zmm20
  a4433a:	62 e1 7c 48 10 62 0f 	vmovups zmm20,ZMMWORD PTR [rdx+0x3c0]
  a44341:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a44348:	fe 
  a44349:	62 d1 74 48 59 c4    	vmulps zmm0,zmm1,zmm12
  a4434f:	62 b2 05 48 bc c4    	vfnmadd231ps zmm0,zmm15,zmm20
  a44355:	62 51 04 48 59 fc    	vmulps zmm15,zmm15,zmm12
  a4435b:	62 61 7c 48 10 62 0b 	vmovups zmm28,ZMMWORD PTR [rdx+0x2c0]
  a44362:	62 72 5d 40 b8 f9    	vfmadd231ps zmm15,zmm20,zmm1
  a44368:	62 f1 7c 48 10 62 10 	vmovups zmm4,ZMMWORD PTR [rdx+0x400]
  a4436f:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a44376:	ff 
  a44377:	62 81 74 48 59 e1    	vmulps zmm20,zmm1,zmm25
  a4437d:	62 82 0d 48 bc e0    	vfnmadd231ps zmm20,zmm14,zmm24
  a44383:	62 01 0c 48 59 c9    	vmulps zmm25,zmm14,zmm25
  a44389:	62 71 7c 48 10 62 11 	vmovups zmm12,ZMMWORD PTR [rdx+0x440]
  a44390:	62 62 3d 40 b8 c9    	vfmadd231ps zmm25,zmm24,zmm1
  a44396:	62 71 7c 48 10 72 16 	vmovups zmm14,ZMMWORD PTR [rdx+0x580]
  a4439d:	62 61 6c 48 59 c4    	vmulps zmm24,zmm2,zmm4
  a443a3:	62 42 7d 40 bc c4    	vfnmadd231ps zmm24,zmm16,zmm12
  a443a9:	62 61 7c 40 59 f4    	vmulps zmm30,zmm16,zmm4
  a443af:	62 f1 7c 48 10 62 17 	vmovups zmm4,ZMMWORD PTR [rdx+0x5c0]
  a443b6:	62 62 1d 48 b8 f2    	vfmadd231ps zmm30,zmm12,zmm2
  a443bc:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a443c3:	03 
  a443c4:	62 d1 74 48 58 d3    	vaddps zmm2,zmm1,zmm11
  a443ca:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a443d1:	01 
  a443d2:	62 a1 2c 48 59 c5    	vmulps zmm16,zmm10,zmm21
  a443d8:	62 a2 3d 48 bc c2    	vfnmadd231ps zmm16,zmm8,zmm18
  a443de:	62 a1 3c 48 59 ed    	vmulps zmm21,zmm8,zmm21
  a443e4:	62 71 4c 40 58 e6    	vaddps zmm12,zmm22,zmm6
  a443ea:	62 c2 6d 40 b8 ea    	vfmadd231ps zmm21,zmm18,zmm10
  a443f0:	62 d1 6c 48 58 d4    	vaddps zmm2,zmm2,zmm12
  a443f6:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a443fd:	ff 
  a443fe:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a44404:	62 51 54 48 59 d6    	vmulps zmm10,zmm5,zmm14
  a4440a:	62 72 35 48 bc d4    	vfnmadd231ps zmm10,zmm9,zmm4
  a44410:	62 51 34 48 59 ce    	vmulps zmm9,zmm9,zmm14
  a44416:	62 b1 14 40 58 eb    	vaddps zmm5,zmm29,zmm19
  a4441c:	62 72 5d 48 b8 ca    	vfmadd231ps zmm9,zmm4,zmm2
  a44422:	62 b1 7c 48 58 dc    	vaddps zmm3,zmm0,zmm20
  a44428:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  a4442f:	62 11 6c 48 59 f7    	vmulps zmm14,zmm2,zmm31
  a44435:	62 12 15 48 bc f4    	vfnmadd231ps zmm14,zmm13,zmm28
  a4443b:	62 11 14 48 59 ef    	vmulps zmm13,zmm13,zmm31
  a44441:	62 61 54 48 58 fb    	vaddps zmm31,zmm5,zmm3
  a44447:	62 72 1d 40 b8 ea    	vfmadd231ps zmm13,zmm28,zmm2
  a4444d:	62 a1 3c 40 58 d0    	vaddps zmm18,zmm24,zmm16
  a44453:	62 d1 2c 48 58 d6    	vaddps zmm2,zmm10,zmm14
  a44459:	62 21 14 40 5c eb    	vsubps zmm29,zmm29,zmm19
  a4445f:	62 91 04 48 58 e1    	vaddps zmm4,zmm15,zmm25
  a44465:	62 01 04 48 5c c9    	vsubps zmm25,zmm15,zmm25
  a4446b:	62 61 6c 40 58 e2    	vaddps zmm28,zmm18,zmm2
  a44471:	62 21 3c 40 5c c0    	vsubps zmm24,zmm24,zmm16
  a44477:	62 51 34 48 58 fd    	vaddps zmm15,zmm9,zmm13
  a4447d:	62 c1 34 48 5c dd    	vsubps zmm19,zmm9,zmm13
  a44483:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x80]
  a4448a:	02 
  a4448b:	62 51 44 40 58 e8    	vaddps zmm13,zmm23,zmm8
  a44491:	62 51 74 48 5c db    	vsubps zmm11,zmm1,zmm11
  a44497:	62 81 2c 40 58 c3    	vaddps zmm16,zmm26,zmm27
  a4449d:	62 01 2c 40 5c d3    	vsubps zmm26,zmm26,zmm27
  a444a3:	62 21 44 48 58 d9    	vaddps zmm27,zmm7,zmm17
  a444a9:	62 31 44 48 5c c9    	vsubps zmm9,zmm7,zmm17
  a444af:	62 a1 0c 40 58 cd    	vaddps zmm17,zmm30,zmm21
  a444b5:	62 f1 5c 40 5c c0    	vsubps zmm0,zmm20,zmm0
  a444bb:	62 f1 34 48 58 f8    	vaddps zmm7,zmm9,zmm0
  a444c1:	62 a1 0c 40 5c ed    	vsubps zmm21,zmm30,zmm21
  a444c7:	62 51 0c 48 5c d2    	vsubps zmm10,zmm14,zmm10
  a444cd:	62 c1 54 40 58 e2    	vaddps zmm20,zmm21,zmm10
  a444d3:	62 b1 44 48 5c cc    	vsubps zmm1,zmm7,zmm20
  a444d9:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a444e0:	03 
  a444e1:	62 b1 44 48 58 cc    	vaddps zmm1,zmm7,zmm20
  a444e7:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a444ee:	04 
  a444ef:	62 91 14 40 58 f9    	vaddps zmm7,zmm29,zmm25
  a444f5:	62 a1 3c 48 5c e7    	vsubps zmm20,zmm8,zmm23
  a444fb:	62 a1 3c 40 58 fb    	vaddps zmm23,zmm24,zmm19
  a44501:	62 b1 4c 48 5c f6    	vsubps zmm6,zmm6,zmm22
  a44507:	62 31 44 48 58 f7    	vaddps zmm14,zmm7,zmm23
  a4450d:	62 b1 44 48 5c cf    	vsubps zmm1,zmm7,zmm23
  a44513:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a4451a:	02 
  a4451b:	62 d1 7c 40 58 cd    	vaddps zmm1,zmm16,zmm13
  a44521:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a44528:	fe 
  a44529:	62 f1 54 48 5c db    	vsubps zmm3,zmm5,zmm3
  a4452f:	62 71 24 40 58 c4    	vaddps zmm8,zmm27,zmm4
  a44535:	62 e1 6c 40 5c d2    	vsubps zmm18,zmm18,zmm2
  a4453b:	62 d1 74 40 58 ef    	vaddps zmm5,zmm17,zmm15
  a44541:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a44548:	01 
  a44549:	62 c1 74 48 5c f4    	vsubps zmm22,zmm1,zmm12
  a4454f:	62 01 24 48 58 f2    	vaddps zmm30,zmm11,zmm26
  a44555:	62 f1 24 40 5c d4    	vsubps zmm2,zmm27,zmm4
  a4455b:	62 f2 7d 48 18 3d fb 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff630efb]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a44562:	0e 63 ff 
  a44565:	62 c1 74 40 5c cf    	vsubps zmm17,zmm17,zmm15
  a4456b:	62 b1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm17
  a44571:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a44578:	01 
  a44579:	62 31 6c 48 58 e1    	vaddps zmm12,zmm2,zmm17
  a4457f:	62 61 7c 48 28 df    	vmovaps zmm27,zmm7
  a44585:	62 31 14 48 5c e8    	vsubps zmm13,zmm13,zmm16
  a4458b:	62 b1 64 48 58 d2    	vaddps zmm2,zmm3,zmm18
  a44591:	62 31 64 48 5c fa    	vsubps zmm15,zmm3,zmm18
  a44597:	62 a1 4c 48 58 fc    	vaddps zmm23,zmm6,zmm20
  a4459d:	62 11 24 48 5c da    	vsubps zmm11,zmm11,zmm26
  a445a3:	62 e1 7c 48 28 d7    	vmovaps zmm18,zmm7
  a445a9:	62 01 14 40 5c c9    	vsubps zmm25,zmm29,zmm25
  a445af:	62 e1 7c 48 28 c7    	vmovaps zmm16,zmm7
  a445b5:	62 21 3c 40 5c c3    	vsubps zmm24,zmm24,zmm19
  a445bb:	62 e1 7c 48 28 cf    	vmovaps zmm17,zmm7
  a445c1:	62 e1 5c 40 5c de    	vsubps zmm19,zmm20,zmm6
  a445c7:	62 81 34 40 58 e0    	vaddps zmm20,zmm25,zmm24
  a445cd:	62 f1 34 48 5c c8    	vsubps zmm1,zmm9,zmm0
  a445d3:	62 b1 24 48 58 c4    	vaddps zmm0,zmm11,zmm20
  a445d9:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a445e0:	62 51 54 40 5c ca    	vsubps zmm9,zmm21,zmm10
  a445e6:	62 51 74 48 58 d1    	vaddps zmm10,zmm1,zmm9
  a445ec:	62 c2 45 48 ac e3    	vfnmadd213ps zmm20,zmm7,zmm11
  a445f2:	62 e1 7c 48 28 ef    	vmovaps zmm21,zmm7
  a445f8:	62 61 7c 48 28 d7    	vmovaps zmm26,zmm7
  a445fe:	62 b2 2d 48 ac fb    	vfnmadd213ps zmm7,zmm10,zmm19
  a44604:	62 c1 64 40 58 da    	vaddps zmm19,zmm19,zmm10
  a4460a:	62 61 3c 48 58 ed    	vaddps zmm29,zmm8,zmm5
  a44610:	62 f1 3c 48 5c e5    	vsubps zmm4,zmm8,zmm5
  a44616:	62 11 04 40 58 d4    	vaddps zmm10,zmm31,zmm28
  a4461c:	62 91 04 40 5c ec    	vsubps zmm5,zmm31,zmm28
  a44622:	62 d1 7c 48 28 f6    	vmovaps zmm6,zmm14
  a44628:	62 02 0d 48 ac de    	vfnmadd213ps zmm27,zmm14,zmm30
  a4462e:	62 62 7d 48 18 25 9c 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff630c9c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a44635:	0c 63 ff 
  a44638:	62 71 1c 40 59 5c 24 	vmulps zmm11,zmm28,ZMMWORD PTR [rsp+0xc0]
  a4463f:	03 
  a44640:	62 41 24 40 58 fb    	vaddps zmm31,zmm27,zmm11
  a44646:	62 51 24 40 5c db    	vsubps zmm11,zmm27,zmm11
  a4464c:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x100]
  a44653:	04 
  a44654:	62 a2 65 48 ac d7    	vfnmadd213ps zmm18,zmm3,zmm23
  a4465a:	62 71 1c 40 59 74 24 	vmulps zmm14,zmm28,ZMMWORD PTR [rsp+0x80]
  a44661:	02 
  a44662:	62 d1 6c 40 5c c6    	vsubps zmm0,zmm18,zmm14
  a44668:	62 c1 6c 40 58 d6    	vaddps zmm18,zmm18,zmm14
  a4466e:	62 a2 6d 48 ac c6    	vfnmadd213ps zmm16,zmm2,zmm22
  a44674:	62 61 4c 40 58 da    	vaddps zmm27,zmm22,zmm2
  a4467a:	62 c2 1d 48 ac cd    	vfnmadd213ps zmm17,zmm12,zmm13
  a44680:	62 51 14 48 58 f4    	vaddps zmm14,zmm13,zmm12
  a44686:	62 d1 74 48 5c c9    	vsubps zmm1,zmm1,zmm9
  a4468c:	62 91 34 40 5c d0    	vsubps zmm2,zmm25,zmm24
  a44692:	62 71 1c 40 59 6c 24 	vmulps zmm13,zmm28,ZMMWORD PTR [rsp+0x40]
  a44699:	01 
  a4469a:	62 01 04 48 59 c4    	vmulps zmm24,zmm15,zmm28
  a446a0:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp-0x40]
  a446a7:	ff 
  a446a8:	62 c2 2d 48 ac e8    	vfnmadd213ps zmm21,zmm10,zmm8
  a446ae:	62 91 5c 48 59 e4    	vmulps zmm4,zmm4,zmm28
  a446b4:	62 91 54 48 59 ec    	vmulps zmm5,zmm5,zmm28
  a446ba:	62 91 74 48 59 cc    	vmulps zmm1,zmm1,zmm28
  a446c0:	62 91 6c 48 59 d4    	vmulps zmm2,zmm2,zmm28
  a446c6:	62 61 54 40 58 cc    	vaddps zmm25,zmm21,zmm4
  a446cc:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp-0x80]
  a446d3:	fe 
  a446d4:	62 02 15 40 ac d4    	vfnmadd213ps zmm26,zmm29,zmm28
  a446da:	62 71 54 40 5c e4    	vsubps zmm12,zmm21,zmm4
  a446e0:	62 e1 2c 40 5c ed    	vsubps zmm21,zmm26,zmm5
  a446e6:	62 71 2c 40 58 fd    	vaddps zmm15,zmm26,zmm5
  a446ec:	62 61 0c 40 58 d6    	vaddps zmm26,zmm30,zmm6
  a446f2:	62 71 44 40 58 cb    	vaddps zmm9,zmm23,zmm3
  a446f8:	62 c1 7c 40 5c f5    	vsubps zmm22,zmm16,zmm13
  a446fe:	62 d1 7c 40 58 e5    	vaddps zmm4,zmm16,zmm13
  a44704:	62 11 74 40 58 e8    	vaddps zmm13,zmm17,zmm24
  a4470a:	62 91 74 40 5c e8    	vsubps zmm5,zmm17,zmm24
  a44710:	62 e1 5c 40 58 c1    	vaddps zmm16,zmm20,zmm1
  a44716:	62 f1 5c 40 5c d9    	vsubps zmm3,zmm20,zmm1
  a4471c:	62 e1 44 48 5c ca    	vsubps zmm17,zmm7,zmm2
  a44722:	62 f1 44 48 58 ca    	vaddps zmm1,zmm7,zmm2
  a44728:	62 91 1c 40 58 fd    	vaddps zmm7,zmm28,zmm29
  a4472e:	62 51 3c 48 58 d2    	vaddps zmm10,zmm8,zmm10
  a44734:	62 f1 7c 48 28 15 c2 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff64d9c2]        # 92100 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f5b0>
  a4473b:	d9 64 ff 
  a4473e:	62 b3 7d 48 19 fc 02 	vextractf32x4 xmm20,zmm7,0x2
  a44745:	62 d2 6d 48 7f fa    	vpermt2ps zmm7,zmm2,zmm10
  a4474b:	62 f1 7c 48 11 3e    	vmovups ZMMWORD PTR [rsi],zmm7
  a44751:	62 73 7d 48 19 d7 02 	vextractf32x4 xmm7,zmm10,0x2
  a44758:	62 f1 5c 00 14 ff    	vunpcklps xmm7,xmm20,xmm7
  a4475e:	c5 f8 11 7e 40       	vmovups XMMWORD PTR [rsi+0x40],xmm7
  a44763:	62 f3 7d 48 19 c7 02 	vextractf32x4 xmm7,zmm0,0x2
  a4476a:	62 92 6d 48 7f c7    	vpermt2ps zmm0,zmm2,zmm31
  a44770:	62 f1 7c 48 11 86 50 	vmovups ZMMWORD PTR [rsi+0x50],zmm0
  a44777:	00 00 00 
  a4477a:	62 63 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm31,0x2
  a44781:	c5 c0 14 c0          	vunpcklps xmm0,xmm7,xmm0
  a44785:	c5 f8 11 86 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm0
  a4478c:	00 
  a4478d:	62 73 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm13,0x2
  a44794:	62 32 6d 48 7f ee    	vpermt2ps zmm13,zmm2,zmm22
  a4479a:	62 71 7c 48 11 ae a0 	vmovups ZMMWORD PTR [rsi+0xa0],zmm13
  a447a1:	00 00 00 
  a447a4:	62 e3 7d 48 19 f7 02 	vextractf32x4 xmm7,zmm22,0x2
  a447ab:	c5 f8 14 c7          	vunpcklps xmm0,xmm0,xmm7
  a447af:	c5 f8 11 86 e0 00 00 	vmovups XMMWORD PTR [rsi+0xe0],xmm0
  a447b6:	00 
  a447b7:	62 e3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm19,0x2
  a447be:	62 f1 7c 48 10 34 24 	vmovups zmm6,ZMMWORD PTR [rsp]
  a447c5:	62 e2 6d 48 7f de    	vpermt2ps zmm19,zmm2,zmm6
  a447cb:	62 e1 7c 48 11 9e f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm19
  a447d2:	00 00 00 
  a447d5:	62 f3 7d 48 19 f6 02 	vextractf32x4 xmm6,zmm6,0x2
  a447dc:	c5 f8 14 c6          	vunpcklps xmm0,xmm0,xmm6
  a447e0:	c5 f8 11 86 30 01 00 	vmovups XMMWORD PTR [rsi+0x130],xmm0
  a447e7:	00 
  a447e8:	62 e3 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm21,0x2
  a447ef:	62 82 6d 48 7f e9    	vpermt2ps zmm21,zmm2,zmm25
  a447f5:	62 e1 7c 48 11 6e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm21
  a447fc:	62 63 7d 48 19 ce 02 	vextractf32x4 xmm6,zmm25,0x2
  a44803:	c5 f8 14 c6          	vunpcklps xmm0,xmm0,xmm6
  a44807:	c5 f8 11 86 80 01 00 	vmovups XMMWORD PTR [rsi+0x180],xmm0
  a4480e:	00 
  a4480f:	62 e3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm18,0x2
  a44816:	62 c2 6d 48 7f d3    	vpermt2ps zmm18,zmm2,zmm11
  a4481c:	62 e1 7c 48 11 96 90 	vmovups ZMMWORD PTR [rsi+0x190],zmm18
  a44823:	01 00 00 
  a44826:	62 73 7d 48 19 de 02 	vextractf32x4 xmm6,zmm11,0x2
  a4482d:	c5 f8 14 c6          	vunpcklps xmm0,xmm0,xmm6
  a44831:	c5 f8 11 86 d0 01 00 	vmovups XMMWORD PTR [rsi+0x1d0],xmm0
  a44838:	00 
  a44839:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a44840:	62 12 6d 48 7f f3    	vpermt2ps zmm14,zmm2,zmm27
  a44846:	62 71 7c 48 11 b6 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm14
  a4484d:	01 00 00 
  a44850:	62 63 7d 48 19 de 02 	vextractf32x4 xmm6,zmm27,0x2
  a44857:	c5 f8 14 c6          	vunpcklps xmm0,xmm0,xmm6
  a4485b:	c5 f8 11 86 20 02 00 	vmovups XMMWORD PTR [rsi+0x220],xmm0
  a44862:	00 
  a44863:	62 e3 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm17,0x2
  a4486a:	62 a2 6d 48 7f c8    	vpermt2ps zmm17,zmm2,zmm16
  a44870:	62 e1 7c 48 11 8e 30 	vmovups ZMMWORD PTR [rsi+0x230],zmm17
  a44877:	02 00 00 
  a4487a:	62 e3 7d 48 19 c6 02 	vextractf32x4 xmm6,zmm16,0x2
  a44881:	c5 f8 14 c6          	vunpcklps xmm0,xmm0,xmm6
  a44885:	c5 f8 11 86 70 02 00 	vmovups XMMWORD PTR [rsi+0x270],xmm0
  a4488c:	00 
  a4488d:	62 73 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm15,0x2
  a44894:	62 52 6d 48 7f fc    	vpermt2ps zmm15,zmm2,zmm12
  a4489a:	62 71 7c 48 11 7e 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm15
  a448a1:	62 73 7d 48 19 e6 02 	vextractf32x4 xmm6,zmm12,0x2
  a448a8:	c5 f8 14 c6          	vunpcklps xmm0,xmm0,xmm6
  a448ac:	c5 f8 11 86 c0 02 00 	vmovups XMMWORD PTR [rsi+0x2c0],xmm0
  a448b3:	00 
  a448b4:	62 73 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm9,0x2
  a448bb:	62 12 6d 48 7f ca    	vpermt2ps zmm9,zmm2,zmm26
  a448c1:	62 71 7c 48 11 8e d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm9
  a448c8:	02 00 00 
  a448cb:	62 63 7d 48 19 d6 02 	vextractf32x4 xmm6,zmm26,0x2
  a448d2:	c5 f8 14 c6          	vunpcklps xmm0,xmm0,xmm6
  a448d6:	c5 f8 11 86 10 03 00 	vmovups XMMWORD PTR [rsi+0x310],xmm0
  a448dd:	00 
  a448de:	62 f3 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm5,0x2
  a448e5:	62 f2 6d 48 7f ec    	vpermt2ps zmm5,zmm2,zmm4
  a448eb:	62 f1 7c 48 11 ae 20 	vmovups ZMMWORD PTR [rsi+0x320],zmm5
  a448f2:	03 00 00 
  a448f5:	62 f3 7d 48 19 e4 02 	vextractf32x4 xmm4,zmm4,0x2
  a448fc:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  a44900:	c5 f8 11 86 60 03 00 	vmovups XMMWORD PTR [rsi+0x360],xmm0
  a44907:	00 
  a44908:	62 f2 75 48 77 d3    	vpermi2ps zmm2,zmm1,zmm3
  a4490e:	62 f1 7c 48 11 96 70 	vmovups ZMMWORD PTR [rsi+0x370],zmm2
  a44915:	03 00 00 
  a44918:	62 f3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm3,0x2
  a4491f:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a44926:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a4492a:	c5 f8 11 86 b0 03 00 	vmovups XMMWORD PTR [rsi+0x3b0],xmm0
  a44931:	00 
  a44932:	48 81 c4 48 01 00 00 	add    rsp,0x148
  a44939:	c5 f8 77             	vzeroupper
  a4493c:	c3                   	ret
