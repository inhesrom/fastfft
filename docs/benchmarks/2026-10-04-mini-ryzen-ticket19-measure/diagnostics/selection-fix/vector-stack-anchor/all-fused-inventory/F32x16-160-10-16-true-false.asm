
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a65b00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a65b00:	48 81 ec 88 0a 00 00 	sub    rsp,0xa88
  a65b07:	62 71 7c 48 28 05 af 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff62e6af]        # 941c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21670>
  a65b0e:	e6 62 ff 
  a65b11:	62 f1 7c 48 10 2f    	vmovups zmm5,ZMMWORD PTR [rdi]
  a65b17:	62 61 7c 48 10 47 01 	vmovups zmm24,ZMMWORD PTR [rdi+0x40]
  a65b1e:	62 f1 7c 48 10 77 02 	vmovups zmm6,ZMMWORD PTR [rdi+0x80]
  a65b25:	62 71 7c 48 10 77 03 	vmovups zmm14,ZMMWORD PTR [rdi+0xc0]
  a65b2c:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a65b32:	62 82 3d 48 7f c0    	vpermt2ps zmm16,zmm8,zmm24
  a65b38:	62 f1 7c 48 10 57 04 	vmovups zmm2,ZMMWORD PTR [rdi+0x100]
  a65b3f:	62 f1 7c 48 10 67 05 	vmovups zmm4,ZMMWORD PTR [rdi+0x140]
  a65b46:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a65b4c:	62 f2 3d 48 7f c4    	vpermt2ps zmm0,zmm8,zmm4
  a65b52:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a65b59:	05 
  a65b5a:	62 71 7c 48 10 67 10 	vmovups zmm12,ZMMWORD PTR [rdi+0x400]
  a65b61:	62 71 7c 48 10 7f 11 	vmovups zmm15,ZMMWORD PTR [rdi+0x440]
  a65b68:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a65b6e:	62 d2 3d 48 7f cf    	vpermt2ps zmm1,zmm8,zmm15
  a65b74:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a65b7b:	04 
  a65b7c:	62 e1 7c 48 58 f1    	vaddps zmm22,zmm0,zmm1
  a65b82:	62 b1 7c 40 58 de    	vaddps zmm3,zmm16,zmm22
  a65b88:	62 71 7c 48 10 6f 08 	vmovups zmm13,ZMMWORD PTR [rdi+0x200]
  a65b8f:	62 e1 7c 48 10 7f 09 	vmovups zmm23,ZMMWORD PTR [rdi+0x240]
  a65b96:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a65b9c:	62 a2 3d 48 7f df    	vpermt2ps zmm19,zmm8,zmm23
  a65ba2:	62 e1 7c 48 10 4f 0c 	vmovups zmm17,ZMMWORD PTR [rdi+0x300]
  a65ba9:	62 61 7c 48 10 6f 0d 	vmovups zmm29,ZMMWORD PTR [rdi+0x340]
  a65bb0:	62 31 7c 48 28 c9    	vmovaps zmm9,zmm17
  a65bb6:	62 12 3d 48 7f cd    	vpermt2ps zmm9,zmm8,zmm29
  a65bbc:	62 41 64 40 58 c9    	vaddps zmm25,zmm19,zmm9
  a65bc2:	62 91 64 48 58 c1    	vaddps zmm0,zmm3,zmm25
  a65bc8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a65bcf:	fe 
  a65bd0:	62 f1 7c 48 10 7f 0a 	vmovups zmm7,ZMMWORD PTR [rdi+0x280]
  a65bd7:	62 61 7c 48 10 5f 0b 	vmovups zmm27,ZMMWORD PTR [rdi+0x2c0]
  a65bde:	62 e1 7c 48 28 ef    	vmovaps zmm21,zmm7
  a65be4:	62 82 3d 48 7f eb    	vpermt2ps zmm21,zmm8,zmm27
  a65bea:	62 e1 7c 48 10 57 0e 	vmovups zmm18,ZMMWORD PTR [rdi+0x380]
  a65bf1:	62 61 7c 48 10 77 0f 	vmovups zmm30,ZMMWORD PTR [rdi+0x3c0]
  a65bf8:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a65bfe:	62 12 3d 48 7f d6    	vpermt2ps zmm10,zmm8,zmm30
  a65c04:	62 e1 7c 48 10 67 06 	vmovups zmm20,ZMMWORD PTR [rdi+0x180]
  a65c0b:	62 f1 7c 48 10 47 07 	vmovups zmm0,ZMMWORD PTR [rdi+0x1c0]
  a65c12:	62 31 7c 48 28 dc    	vmovaps zmm11,zmm20
  a65c18:	62 72 3d 48 7f d8    	vpermt2ps zmm11,zmm8,zmm0
  a65c1e:	62 41 2c 48 58 d3    	vaddps zmm26,zmm10,zmm11
  a65c24:	62 61 7c 48 28 25 d2 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff62e5d2]        # 94200 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x216b0>
  a65c2b:	e5 62 ff 
  a65c2e:	62 32 1d 40 7f ef    	vpermt2ps zmm13,zmm28,zmm23
  a65c34:	62 e1 7c 48 10 7f 12 	vmovups zmm23,ZMMWORD PTR [rdi+0x480]
  a65c3b:	62 82 1d 40 7f cd    	vpermt2ps zmm17,zmm28,zmm29
  a65c41:	62 61 7c 48 10 7f 13 	vmovups zmm31,ZMMWORD PTR [rdi+0x4c0]
  a65c48:	62 f2 1d 40 7f d4    	vpermt2ps zmm2,zmm28,zmm4
  a65c4e:	62 b1 7c 48 28 e7    	vmovaps zmm4,zmm23
  a65c54:	62 92 3d 48 7f e7    	vpermt2ps zmm4,zmm8,zmm31
  a65c5a:	62 52 4d 48 77 c6    	vpermi2ps zmm8,zmm6,zmm14
  a65c60:	62 52 1d 40 7f e7    	vpermt2ps zmm12,zmm28,zmm15
  a65c66:	62 21 14 48 5c e9    	vsubps zmm29,zmm13,zmm17
  a65c6c:	62 82 1d 40 7f ff    	vpermt2ps zmm23,zmm28,zmm31
  a65c72:	62 41 6c 48 5c fc    	vsubps zmm31,zmm2,zmm12
  a65c78:	62 d2 1d 40 7f f6    	vpermt2ps zmm6,zmm28,zmm14
  a65c7e:	62 f2 7d 48 18 0d d0 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff60fad0]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a65c85:	fa 60 ff 
  a65c88:	62 82 1d 40 7f d6    	vpermt2ps zmm18,zmm28,zmm30
  a65c8e:	62 61 04 40 59 f1    	vmulps zmm30,zmm31,zmm1
  a65c94:	62 e2 1d 40 7f e0    	vpermt2ps zmm20,zmm28,zmm0
  a65c9a:	62 72 7d 48 18 3d fc 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff60f6fc]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a65ca1:	f6 60 ff 
  a65ca4:	62 42 15 40 bc f7    	vfnmadd231ps zmm30,zmm29,zmm15
  a65caa:	62 92 1d 40 7f e8    	vpermt2ps zmm5,zmm28,zmm24
  a65cb0:	62 62 7d 48 18 05 8a 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff60f98a]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a65cb7:	f9 60 ff 
  a65cba:	62 92 1d 40 7f fb    	vpermt2ps zmm7,zmm28,zmm27
  a65cc0:	62 91 7c 48 28 c0    	vmovaps zmm0,zmm24
  a65cc6:	62 b2 4d 40 ac c0    	vfnmadd213ps zmm0,zmm22,zmm16
  a65ccc:	62 62 7d 48 18 1d 12 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff60fa12]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a65cd3:	fa 60 ff 
  a65cd6:	62 92 35 40 b8 c3    	vfmadd231ps zmm0,zmm25,zmm27
  a65cdc:	62 61 14 40 59 e1    	vmulps zmm28,zmm29,zmm1
  a65ce2:	62 02 05 48 b8 e7    	vfmadd231ps zmm28,zmm15,zmm31
  a65ce8:	62 61 44 40 5c ee    	vsubps zmm29,zmm23,zmm6
  a65cee:	62 a2 25 40 b8 c6    	vfmadd231ps zmm16,zmm27,zmm22
  a65cf4:	62 a1 6c 40 5c f4    	vsubps zmm22,zmm18,zmm20
  a65cfa:	62 82 3d 40 bc c1    	vfnmadd231ps zmm16,zmm24,zmm25
  a65d00:	62 61 4c 40 59 c9    	vmulps zmm25,zmm22,zmm1
  a65d06:	62 42 15 40 bc cf    	vfnmadd231ps zmm25,zmm29,zmm15
  a65d0c:	62 61 14 40 59 e9    	vmulps zmm29,zmm29,zmm1
  a65d12:	62 22 05 48 b8 ee    	vfmadd231ps zmm29,zmm15,zmm22
  a65d18:	62 81 7c 48 28 f0    	vmovaps zmm22,zmm24
  a65d1e:	62 a2 2d 40 ac f5    	vfnmadd213ps zmm22,zmm26,zmm21
  a65d24:	62 01 54 40 58 fa    	vaddps zmm31,zmm21,zmm26
  a65d2a:	62 82 25 40 b8 ea    	vfmadd231ps zmm21,zmm27,zmm26
  a65d30:	62 41 5c 48 58 d0    	vaddps zmm26,zmm4,zmm8
  a65d36:	62 01 04 40 58 fa    	vaddps zmm31,zmm31,zmm26
  a65d3c:	62 82 2d 40 b8 f3    	vfmadd231ps zmm22,zmm26,zmm27
  a65d42:	62 82 3d 40 bc ea    	vfnmadd231ps zmm21,zmm24,zmm26
  a65d48:	62 61 0c 40 58 d0    	vaddps zmm26,zmm30,zmm0
  a65d4e:	62 91 7c 48 5c c6    	vsubps zmm0,zmm0,zmm30
  a65d54:	62 21 34 40 58 f6    	vaddps zmm30,zmm25,zmm22
  a65d5a:	62 81 4c 40 5c f1    	vsubps zmm22,zmm22,zmm25
  a65d60:	62 21 1c 40 58 c8    	vaddps zmm25,zmm28,zmm16
  a65d66:	62 81 7c 40 5c c4    	vsubps zmm16,zmm16,zmm28
  a65d6c:	62 21 14 40 58 e5    	vaddps zmm28,zmm29,zmm21
  a65d72:	62 81 54 40 5c ed    	vsubps zmm21,zmm21,zmm29
  a65d78:	62 b1 7c 40 58 cd    	vaddps zmm1,zmm16,zmm21
  a65d7e:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a65d85:	62 21 7c 40 5c ed    	vsubps zmm29,zmm16,zmm21
  a65d8b:	62 91 34 40 58 cc    	vaddps zmm1,zmm25,zmm28
  a65d91:	62 91 34 40 5c dc    	vsubps zmm3,zmm25,zmm28
  a65d97:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp-0x80]
  a65d9e:	fe 
  a65d9f:	62 01 0c 48 58 cf    	vaddps zmm25,zmm14,zmm31
  a65da5:	62 11 0c 48 5c f7    	vsubps zmm14,zmm14,zmm31
  a65dab:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm14
  a65db2:	06 
  a65db3:	62 81 2c 40 58 c6    	vaddps zmm16,zmm26,zmm30
  a65db9:	62 11 2c 40 5c f6    	vsubps zmm14,zmm26,zmm30
  a65dbf:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm14
  a65dc6:	ff 
  a65dc7:	62 21 7c 48 58 fe    	vaddps zmm31,zmm0,zmm22
  a65dcd:	62 b1 7c 48 5c c6    	vsubps zmm0,zmm0,zmm22
  a65dd3:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a65dda:	01 
  a65ddb:	62 d1 6c 48 58 c4    	vaddps zmm0,zmm2,zmm12
  a65de1:	62 71 7c 48 28 35 95 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff661195]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a65de8:	11 66 ff 
  a65deb:	62 31 14 48 58 e9    	vaddps zmm13,zmm13,zmm17
  a65df1:	62 e1 54 48 58 c8    	vaddps zmm17,zmm5,zmm0
  a65df7:	62 31 6c 40 58 e4    	vaddps zmm12,zmm18,zmm20
  a65dfd:	62 c1 44 48 58 d4    	vaddps zmm18,zmm7,zmm12
  a65e03:	62 e1 44 40 58 e6    	vaddps zmm20,zmm23,zmm6
  a65e09:	62 91 7c 48 28 f0    	vmovaps zmm6,zmm24
  a65e0f:	62 f2 7d 48 ac f5    	vfnmadd213ps zmm6,zmm0,zmm5
  a65e15:	62 f2 25 40 b8 e8    	vfmadd231ps zmm5,zmm27,zmm0
  a65e1b:	62 81 7c 48 28 e8    	vmovaps zmm21,zmm24
  a65e21:	62 e2 1d 48 ac ef    	vfnmadd213ps zmm21,zmm12,zmm7
  a65e27:	62 92 1d 48 b8 fb    	vfmadd231ps zmm7,zmm12,zmm27
  a65e2d:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a65e33:	62 b2 0d 48 7f c0    	vpermt2ps zmm0,zmm14,zmm16
  a65e39:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a65e40:	03 
  a65e41:	62 92 15 48 b8 f3    	vfmadd231ps zmm6,zmm13,zmm27
  a65e47:	62 82 5d 40 b8 eb    	vfmadd231ps zmm21,zmm20,zmm27
  a65e4d:	c4 41 18 57 e4       	vxorps xmm12,xmm12,xmm12
  a65e52:	62 c1 74 40 58 fd    	vaddps zmm23,zmm17,zmm13
  a65e58:	62 d2 3d 40 bc ed    	vfnmadd231ps zmm5,zmm24,zmm13
  a65e5e:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a65e64:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a65e6b:	fe 
  a65e6c:	62 92 5d 40 bc f8    	vfnmadd231ps zmm7,zmm20,zmm24
  a65e72:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a65e78:	62 81 7c 48 28 f5    	vmovaps zmm22,zmm29
  a65e7e:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a65e84:	62 f2 0d 48 7f c3    	vpermt2ps zmm0,zmm14,zmm3
  a65e8a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a65e91:	02 
  a65e92:	62 a1 6c 40 58 d4    	vaddps zmm18,zmm18,zmm20
  a65e98:	62 31 44 40 58 ea    	vaddps zmm13,zmm23,zmm18
  a65e9e:	62 d1 64 40 5c c1    	vsubps zmm0,zmm19,zmm9
  a65ea4:	62 e1 7c 48 28 0d 12 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff661112]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a65eab:	11 66 ff 
  a65eae:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a65eb5:	05 
  a65eb6:	62 f1 74 48 5c 4c 24 	vsubps zmm1,zmm1,ZMMWORD PTR [rsp+0x100]
  a65ebd:	04 
  a65ebe:	62 f2 7d 48 18 15 90 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff60f890]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a65ec5:	f8 60 ff 
  a65ec8:	62 71 74 48 59 ca    	vmulps zmm9,zmm1,zmm2
  a65ece:	62 52 7d 48 bc cf    	vfnmadd231ps zmm9,zmm0,zmm15
  a65ed4:	62 d1 5c 48 5c e0    	vsubps zmm4,zmm4,zmm8
  a65eda:	62 51 4c 48 5c c1    	vsubps zmm8,zmm6,zmm9
  a65ee0:	62 d1 2c 48 5c db    	vsubps zmm3,zmm10,zmm11
  a65ee6:	62 71 64 48 59 d2    	vmulps zmm10,zmm3,zmm2
  a65eec:	62 52 5d 48 bc d7    	vfnmadd231ps zmm10,zmm4,zmm15
  a65ef2:	62 71 7c 48 59 da    	vmulps zmm11,zmm0,zmm2
  a65ef8:	62 72 05 48 b8 d9    	vfmadd231ps zmm11,zmm15,zmm1
  a65efe:	62 c1 54 40 5c da    	vsubps zmm19,zmm21,zmm10
  a65f04:	62 f1 5c 48 59 ca    	vmulps zmm1,zmm4,zmm2
  a65f0a:	62 21 3c 48 58 f3    	vaddps zmm30,zmm8,zmm19
  a65f10:	62 d2 65 48 b8 cf    	vfmadd231ps zmm1,zmm3,zmm15
  a65f16:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a65f1c:	62 d1 7c 48 28 d5    	vmovaps zmm2,zmm13
  a65f22:	62 12 75 40 7f fe    	vpermt2ps zmm15,zmm17,zmm30
  a65f28:	62 d1 54 48 5c db    	vsubps zmm3,zmm5,zmm11
  a65f2e:	62 d1 4c 48 58 e1    	vaddps zmm4,zmm6,zmm9
  a65f34:	62 f1 44 48 5c f1    	vsubps zmm6,zmm7,zmm1
  a65f3a:	62 51 54 40 58 ca    	vaddps zmm9,zmm21,zmm10
  a65f40:	62 71 64 48 58 d6    	vaddps zmm10,zmm3,zmm6
  a65f46:	62 d1 54 48 58 eb    	vaddps zmm5,zmm5,zmm11
  a65f4c:	62 51 7c 48 28 ea    	vmovaps zmm13,zmm10
  a65f52:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a65f58:	62 52 75 40 7f ec    	vpermt2ps zmm13,zmm17,zmm12
  a65f5e:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm13
  a65f65:	05 
  a65f66:	62 f1 44 48 58 c9    	vaddps zmm1,zmm7,zmm1
  a65f6c:	62 f1 54 48 58 f9    	vaddps zmm7,zmm5,zmm1
  a65f72:	62 61 54 48 5c e9    	vsubps zmm29,zmm5,zmm1
  a65f78:	62 41 5c 48 58 d9    	vaddps zmm27,zmm4,zmm9
  a65f7e:	62 f1 64 48 5c ce    	vsubps zmm1,zmm3,zmm6
  a65f84:	62 81 7c 48 28 eb    	vmovaps zmm21,zmm27
  a65f8a:	62 c2 75 40 7f ec    	vpermt2ps zmm21,zmm17,zmm12
  a65f90:	62 31 44 40 5c d2    	vsubps zmm10,zmm23,zmm18
  a65f96:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a65f9c:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a65fa2:	62 d2 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm12
  a65fa8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a65faf:	04 
  a65fb0:	62 21 3c 48 5c c3    	vsubps zmm24,zmm8,zmm19
  a65fb6:	62 81 7c 48 28 d5    	vmovaps zmm18,zmm29
  a65fbc:	62 e2 75 40 7f d1    	vpermt2ps zmm18,zmm17,zmm1
  a65fc2:	62 d1 5c 48 5c d9    	vsubps zmm3,zmm4,zmm9
  a65fc8:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm3
  a65fcf:	1c 
  a65fd0:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a65fd6:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a65fdc:	62 d2 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm12
  a65fe2:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm0
  a65fe9:	1b 
  a65fea:	62 22 75 40 7f c8    	vpermt2ps zmm25,zmm17,zmm16
  a65ff0:	62 11 7c 48 28 c8    	vmovaps zmm9,zmm24
  a65ff6:	62 52 75 40 7f cc    	vpermt2ps zmm9,zmm17,zmm12
  a65ffc:	62 a1 7c 48 28 de    	vmovaps zmm19,zmm22
  a66002:	62 82 75 40 7f da    	vpermt2ps zmm19,zmm17,zmm26
  a66008:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a6600e:	62 d2 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm12
  a66014:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a6601b:	07 
  a6601c:	62 42 75 40 7f e4    	vpermt2ps zmm28,zmm17,zmm12
  a66022:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm28
  a66029:	0e 
  a6602a:	62 11 7c 48 28 ef    	vmovaps zmm13,zmm31
  a66030:	62 42 75 40 7f fc    	vpermt2ps zmm31,zmm17,zmm12
  a66036:	62 f1 7c 48 10 24 24 	vmovups zmm4,ZMMWORD PTR [rsp]
  a6603d:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a66043:	62 d2 75 40 7f e4    	vpermt2ps zmm4,zmm17,zmm12
  a66049:	62 e1 7c 48 28 f4    	vmovaps zmm22,zmm4
  a6604f:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a66056:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x180]
  a6605d:	06 
  a6605e:	62 61 7c 48 28 d5    	vmovaps zmm26,zmm5
  a66064:	62 d2 75 40 7f ec    	vpermt2ps zmm5,zmm17,zmm12
  a6606a:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm5
  a66071:	06 
  a66072:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp-0x40]
  a66079:	ff 
  a6607a:	62 c1 7c 48 28 e2    	vmovaps zmm20,zmm10
  a66080:	62 52 75 40 7f d4    	vpermt2ps zmm10,zmm17,zmm12
  a66086:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x40]
  a6608d:	01 
  a6608e:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a66094:	62 d2 75 40 7f dc    	vpermt2ps zmm3,zmm17,zmm12
  a6609a:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a660a1:	01 
  a660a2:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a660a8:	62 12 0d 48 7f c6    	vpermt2ps zmm8,zmm14,zmm30
  a660ae:	62 62 0d 48 7f e9    	vpermt2ps zmm29,zmm14,zmm1
  a660b4:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a660bb:	fe 
  a660bc:	62 d2 0d 48 7f cc    	vpermt2ps zmm1,zmm14,zmm12
  a660c2:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a660c9:	fe 
  a660ca:	62 52 0d 48 7f ec    	vpermt2ps zmm13,zmm14,zmm12
  a660d0:	62 d2 0d 48 7f c4    	vpermt2ps zmm0,zmm14,zmm12
  a660d6:	62 42 0d 48 7f d4    	vpermt2ps zmm26,zmm14,zmm12
  a660dc:	62 c2 0d 48 7f e4    	vpermt2ps zmm20,zmm14,zmm12
  a660e2:	62 c2 0d 48 7f fc    	vpermt2ps zmm23,zmm14,zmm12
  a660e8:	62 52 0d 48 7f dc    	vpermt2ps zmm11,zmm14,zmm12
  a660ee:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm11
  a660f5:	0a 
  a660f6:	62 42 0d 48 7f dc    	vpermt2ps zmm27,zmm14,zmm12
  a660fc:	62 d2 0d 48 7f f4    	vpermt2ps zmm6,zmm14,zmm12
  a66102:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm6
  a66109:	09 
  a6610a:	62 d2 0d 48 7f fc    	vpermt2ps zmm7,zmm14,zmm12
  a66110:	62 42 0d 48 7f c4    	vpermt2ps zmm24,zmm14,zmm12
  a66116:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0x700]
  a6611d:	1c 
  a6611e:	62 42 0d 48 7f f4    	vpermt2ps zmm30,zmm14,zmm12
  a66124:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm25
  a6612b:	0f 
  a6612c:	62 f1 7c 48 28 25 0a 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff660e0a]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a66133:	0e 66 ff 
  a66136:	62 02 5d 48 7f cc    	vpermt2ps zmm25,zmm4,zmm28
  a6613c:	62 01 7c 48 28 e1    	vmovaps zmm28,zmm25
  a66142:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm25
  a66149:	21 
  a6614a:	62 81 7c 48 28 cf    	vmovaps zmm17,zmm31
  a66150:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm31
  a66157:	0d 
  a66158:	62 a2 5d 48 7f ce    	vpermt2ps zmm17,zmm4,zmm22
  a6615e:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm17
  a66165:	22 
  a66166:	62 a1 7c 48 28 c3    	vmovaps zmm16,zmm19
  a6616c:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm19
  a66173:	0c 
  a66174:	62 e2 5d 48 7f c5    	vpermt2ps zmm16,zmm4,zmm5
  a6617a:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm16
  a66181:	20 
  a66182:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm10
  a66189:	0b 
  a6618a:	62 72 5d 48 7f d3    	vpermt2ps zmm10,zmm4,zmm3
  a66190:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm10
  a66197:	ff 
  a66198:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm15
  a6619f:	08 
  a661a0:	62 72 5d 48 7f 7c 24 	vpermt2ps zmm15,zmm4,ZMMWORD PTR [rsp+0x140]
  a661a7:	05 
  a661a8:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm21
  a661af:	1f 
  a661b0:	62 e2 5d 48 7f 6c 24 	vpermt2ps zmm21,zmm4,ZMMWORD PTR [rsp+0x100]
  a661b7:	04 
  a661b8:	62 31 7c 48 28 e5    	vmovaps zmm12,zmm21
  a661be:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x940],zmm21
  a661c5:	25 
  a661c6:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm18
  a661cd:	1e 
  a661ce:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x6c0]
  a661d5:	1b 
  a661d6:	62 a2 5d 48 7f d6    	vpermt2ps zmm18,zmm4,zmm22
  a661dc:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a661e2:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x900],zmm18
  a661e9:	24 
  a661ea:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm9
  a661f1:	1d 
  a661f2:	62 72 5d 48 7f 4c 24 	vpermt2ps zmm9,zmm4,ZMMWORD PTR [rsp+0x1c0]
  a661f9:	07 
  a661fa:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm9
  a66201:	23 
  a66202:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0xc0]
  a66209:	03 
  a6620a:	62 e1 7c 48 28 ed    	vmovaps zmm21,zmm5
  a66210:	62 f2 5d 48 7f e9    	vpermt2ps zmm5,zmm4,zmm1
  a66216:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm5
  a6621d:	03 
  a6621e:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a66224:	62 72 5d 48 7f e8    	vpermt2ps zmm13,zmm4,zmm0
  a6622a:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a66230:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm13
  a66237:	10 
  a66238:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a6623f:	02 
  a66240:	62 e1 7c 48 28 d1    	vmovaps zmm18,zmm1
  a66246:	62 92 5d 48 7f ca    	vpermt2ps zmm1,zmm4,zmm26
  a6624c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a66253:	02 
  a66254:	62 31 7c 48 28 f4    	vmovaps zmm14,zmm20
  a6625a:	62 32 5d 48 7f f7    	vpermt2ps zmm14,zmm4,zmm23
  a66260:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x980],zmm14
  a66267:	26 
  a66268:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a6626e:	62 d2 5d 48 7f c3    	vpermt2ps zmm0,zmm4,zmm11
  a66274:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm0
  a6627b:	14 
  a6627c:	62 91 7c 48 28 db    	vmovaps zmm3,zmm27
  a66282:	62 f2 5d 48 7f de    	vpermt2ps zmm3,zmm4,zmm6
  a66288:	62 f1 7c 48 28 d3    	vmovaps zmm2,zmm3
  a6628e:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm3
  a66295:	13 
  a66296:	62 91 7c 48 28 dd    	vmovaps zmm3,zmm29
  a6629c:	62 f2 5d 48 7f df    	vpermt2ps zmm3,zmm4,zmm7
  a662a2:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm3
  a662a9:	12 
  a662aa:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a662b0:	62 92 3d 40 77 e6    	vpermi2ps zmm4,zmm24,zmm30
  a662b6:	62 91 7c 48 28 fe    	vmovaps zmm7,zmm30
  a662bc:	62 61 7c 48 28 35 3a 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff660b3a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a662c3:	0b 66 ff 
  a662c6:	62 71 fd 48 15 da    	vunpckhpd zmm11,zmm0,zmm2
  a662cc:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm11
  a662d3:	1a 
  a662d4:	62 f1 e5 48 15 c4    	vunpckhpd zmm0,zmm3,zmm4
  a662da:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm0
  a662e1:	19 
  a662e2:	62 72 0d 40 7f d8    	vpermt2ps zmm11,zmm30,zmm0
  a662e8:	62 41 d5 48 15 fd    	vunpckhpd zmm31,zmm5,zmm13
  a662ee:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm31
  a662f5:	18 
  a662f6:	62 d1 f5 48 15 c6    	vunpckhpd zmm0,zmm1,zmm14
  a662fc:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm0
  a66303:	17 
  a66304:	62 62 0d 40 7f f8    	vpermt2ps zmm31,zmm30,zmm0
  a6630a:	62 f1 7c 48 10 52 0d 	vmovups zmm2,ZMMWORD PTR [rdx+0x340]
  a66311:	62 f1 7c 48 10 4a 0c 	vmovups zmm1,ZMMWORD PTR [rdx+0x300]
  a66318:	62 f1 04 40 59 c1    	vmulps zmm0,zmm31,zmm1
  a6631e:	62 f2 25 48 b8 c2    	vfmadd231ps zmm0,zmm11,zmm2
  a66324:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm0
  a6632b:	1c 
  a6632c:	62 f1 24 48 59 c1    	vmulps zmm0,zmm11,zmm1
  a66332:	62 92 6d 48 bc c7    	vfnmadd231ps zmm0,zmm2,zmm31
  a66338:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xa40],zmm0
  a6633f:	29 
  a66340:	62 d1 85 48 15 cc    	vunpckhpd zmm1,zmm15,zmm12
  a66346:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm1
  a6634d:	11 
  a6634e:	62 d1 ad 48 15 c1    	vunpckhpd zmm0,zmm10,zmm9
  a66354:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm0
  a6635b:	16 
  a6635c:	62 f2 0d 40 7f c8    	vpermt2ps zmm1,zmm30,zmm0
  a66362:	62 21 9d 40 15 f9    	vunpckhpd zmm31,zmm28,zmm17
  a66368:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp-0x40]
  a6636f:	ff 
  a66370:	62 d1 fd 40 15 c6    	vunpckhpd zmm0,zmm16,zmm14
  a66376:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm0
  a6637d:	15 
  a6637e:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a66384:	62 f2 0d 40 7f d0    	vpermt2ps zmm2,zmm30,zmm0
  a6638a:	62 f1 7c 48 10 5a 1d 	vmovups zmm3,ZMMWORD PTR [rdx+0x740]
  a66391:	62 f1 7c 48 10 42 1c 	vmovups zmm0,ZMMWORD PTR [rdx+0x700]
  a66398:	62 61 6c 48 59 e0    	vmulps zmm28,zmm2,zmm0
  a6639e:	62 62 75 48 b8 e3    	vfmadd231ps zmm28,zmm1,zmm3
  a663a4:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xa00],zmm28
  a663ab:	28 
  a663ac:	62 f1 74 48 59 c0    	vmulps zmm0,zmm1,zmm0
  a663b2:	62 f2 65 48 bc c2    	vfnmadd231ps zmm0,zmm3,zmm2
  a663b8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x9c0],zmm0
  a663bf:	27 
  a663c0:	62 f1 7c 48 28 05 36 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff660b36]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a663c7:	0b 66 ff 
  a663ca:	62 e2 7d 48 7f 6c 24 	vpermt2ps zmm21,zmm0,ZMMWORD PTR [rsp-0x80]
  a663d1:	fe 
  a663d2:	62 82 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm25
  a663d8:	62 82 7d 48 7f d2    	vpermt2ps zmm18,zmm0,zmm26
  a663de:	62 a2 7d 48 7f e7    	vpermt2ps zmm20,zmm0,zmm23
  a663e4:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x200]
  a663eb:	08 
  a663ec:	62 72 7d 48 7f 6c 24 	vpermt2ps zmm13,zmm0,ZMMWORD PTR [rsp+0x140]
  a663f3:	05 
  a663f4:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x7c0]
  a663fb:	1f 
  a663fc:	62 72 7d 48 7f 5c 24 	vpermt2ps zmm11,zmm0,ZMMWORD PTR [rsp+0x100]
  a66403:	04 
  a66404:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x780]
  a6640b:	1e 
  a6640c:	62 32 7d 48 7f d6    	vpermt2ps zmm10,zmm0,zmm22
  a66412:	62 61 7c 48 10 4c 24 	vmovups zmm25,ZMMWORD PTR [rsp+0x740]
  a66419:	1d 
  a6641a:	62 62 7d 48 7f 4c 24 	vpermt2ps zmm25,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a66421:	07 
  a66422:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x3c0]
  a66429:	0f 
  a6642a:	62 72 7d 48 7f 64 24 	vpermt2ps zmm12,zmm0,ZMMWORD PTR [rsp+0x380]
  a66431:	0e 
  a66432:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x340]
  a66439:	0d 
  a6643a:	62 e2 7d 48 7f 04 24 	vpermt2ps zmm16,zmm0,ZMMWORD PTR [rsp]
  a66441:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x300]
  a66448:	0c 
  a66449:	62 e2 7d 48 7f 4c 24 	vpermt2ps zmm17,zmm0,ZMMWORD PTR [rsp+0x180]
  a66450:	06 
  a66451:	62 e1 7c 48 10 7c 24 	vmovups zmm23,ZMMWORD PTR [rsp+0x2c0]
  a66458:	0b 
  a66459:	62 e2 7d 48 7f 7c 24 	vpermt2ps zmm23,zmm0,ZMMWORD PTR [rsp+0x40]
  a66460:	01 
  a66461:	62 72 7d 48 7f 44 24 	vpermt2ps zmm8,zmm0,ZMMWORD PTR [rsp+0x280]
  a66468:	0a 
  a66469:	62 62 7d 48 7f 5c 24 	vpermt2ps zmm27,zmm0,ZMMWORD PTR [rsp+0x240]
  a66470:	09 
  a66471:	62 62 7d 48 7f ee    	vpermt2ps zmm29,zmm0,zmm6
  a66477:	62 62 7d 48 7f c7    	vpermt2ps zmm24,zmm0,zmm7
  a6647d:	62 21 d5 40 15 d3    	vunpckhpd zmm26,zmm21,zmm19
  a66483:	62 b1 ed 40 15 d4    	vunpckhpd zmm2,zmm18,zmm20
  a66489:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm2
  a66490:	0b 
  a66491:	62 91 7c 48 28 c2    	vmovaps zmm0,zmm26
  a66497:	62 f2 0d 40 7f c2    	vpermt2ps zmm0,zmm30,zmm2
  a6649d:	62 91 bd 48 15 db    	vunpckhpd zmm3,zmm8,zmm27
  a664a3:	62 d1 7c 48 28 e8    	vmovaps zmm5,zmm8
  a664a9:	62 91 95 40 15 d0    	vunpckhpd zmm2,zmm29,zmm24
  a664af:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm2
  a664b6:	0a 
  a664b7:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a664bd:	62 f2 0d 40 7f ca    	vpermt2ps zmm1,zmm30,zmm2
  a664c3:	62 f1 7c 48 10 52 04 	vmovups zmm2,ZMMWORD PTR [rdx+0x100]
  a664ca:	62 f1 7c 48 10 7a 05 	vmovups zmm7,ZMMWORD PTR [rdx+0x140]
  a664d1:	62 71 74 48 59 c2    	vmulps zmm8,zmm1,zmm2
  a664d7:	62 72 7d 48 bc c7    	vfnmadd231ps zmm8,zmm0,zmm7
  a664dd:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm8
  a664e4:	05 
  a664e5:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a664eb:	62 f2 45 48 b8 c1    	vfmadd231ps zmm0,zmm7,zmm1
  a664f1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a664f8:	04 
  a664f9:	62 21 9d 48 15 e0    	vunpckhpd zmm28,zmm12,zmm16
  a664ff:	62 b1 f5 40 15 cf    	vunpckhpd zmm1,zmm17,zmm23
  a66505:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a6650c:	09 
  a6650d:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a66513:	62 f2 0d 40 7f c1    	vpermt2ps zmm0,zmm30,zmm1
  a66519:	62 d1 95 48 15 cb    	vunpckhpd zmm1,zmm13,zmm11
  a6651f:	62 91 ad 48 15 f1    	vunpckhpd zmm6,zmm10,zmm25
  a66525:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm6
  a6652c:	08 
  a6652d:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a66533:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a66539:	62 f2 0d 40 7f d6    	vpermt2ps zmm2,zmm30,zmm6
  a6653f:	62 71 7c 48 10 42 15 	vmovups zmm8,ZMMWORD PTR [rdx+0x540]
  a66546:	62 71 7c 48 10 4a 14 	vmovups zmm9,ZMMWORD PTR [rdx+0x500]
  a6654d:	62 51 6c 48 59 d1    	vmulps zmm10,zmm2,zmm9
  a66553:	62 52 7d 48 bc d0    	vfnmadd231ps zmm10,zmm0,zmm8
  a66559:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm10
  a66560:	07 
  a66561:	62 d1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm9
  a66567:	62 f2 3d 48 b8 c2    	vfmadd231ps zmm0,zmm8,zmm2
  a6656d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm0
  a66574:	1b 
  a66575:	62 b1 d5 40 14 c3    	vunpcklpd zmm0,zmm21,zmm19
  a6657b:	62 31 ed 40 14 c4    	vunpcklpd zmm8,zmm18,zmm20
  a66581:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm8
  a66588:	0c 
  a66589:	62 91 d5 48 14 eb    	vunpcklpd zmm5,zmm5,zmm27
  a6658f:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm5
  a66596:	fe 
  a66597:	62 91 95 40 14 f0    	vunpcklpd zmm6,zmm29,zmm24
  a6659d:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm6
  a665a4:	0e 
  a665a5:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a665ab:	62 f1 7c 48 28 15 8b 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff66088b]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a665b2:	08 66 ff 
  a665b5:	62 d2 6d 48 7f c0    	vpermt2ps zmm0,zmm2,zmm8
  a665bb:	62 f2 6d 48 7f ee    	vpermt2ps zmm5,zmm2,zmm6
  a665c1:	62 f1 7c 48 10 72 02 	vmovups zmm6,ZMMWORD PTR [rdx+0x80]
  a665c8:	62 71 7c 48 10 42 03 	vmovups zmm8,ZMMWORD PTR [rdx+0xc0]
  a665cf:	62 71 54 48 59 ce    	vmulps zmm9,zmm5,zmm6
  a665d5:	62 52 7d 48 bc c8    	vfnmadd231ps zmm9,zmm0,zmm8
  a665db:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm9
  a665e2:	0f 
  a665e3:	62 f1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm6
  a665e9:	62 f2 3d 48 b8 c5    	vfmadd231ps zmm0,zmm8,zmm5
  a665ef:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a665f6:	0d 
  a665f7:	62 d1 95 48 14 c3    	vunpcklpd zmm0,zmm13,zmm11
  a665fd:	62 11 c5 48 14 e9    	vunpcklpd zmm13,zmm7,zmm25
  a66603:	62 b1 9d 48 14 e8    	vunpcklpd zmm5,zmm12,zmm16
  a66609:	62 31 f5 40 14 e7    	vunpcklpd zmm12,zmm17,zmm23
  a6660f:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a66615:	62 d2 6d 48 7f ec    	vpermt2ps zmm5,zmm2,zmm12
  a6661b:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a66621:	62 d2 6d 48 7f c5    	vpermt2ps zmm0,zmm2,zmm13
  a66627:	62 f1 7c 48 10 72 13 	vmovups zmm6,ZMMWORD PTR [rdx+0x4c0]
  a6662e:	62 71 7c 48 10 42 12 	vmovups zmm8,ZMMWORD PTR [rdx+0x480]
  a66635:	62 51 7c 48 59 c8    	vmulps zmm9,zmm0,zmm8
  a6663b:	62 72 55 48 bc ce    	vfnmadd231ps zmm9,zmm5,zmm6
  a66641:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm9
  a66648:	01 
  a66649:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a6664f:	62 f2 4d 48 b8 e8    	vfmadd231ps zmm5,zmm6,zmm0
  a66655:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  a6665c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x840]
  a66663:	21 
  a66664:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp+0x880]
  a6666b:	22 
  a6666c:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x800]
  a66673:	20 
  a66674:	62 51 d5 48 14 ce    	vunpcklpd zmm9,zmm5,zmm14
  a6667a:	62 f1 85 48 14 6c 24 	vunpcklpd zmm5,zmm15,ZMMWORD PTR [rsp+0x940]
  a66681:	25 
  a66682:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x900]
  a66689:	24 
  a6668a:	62 71 cd 48 14 44 24 	vunpcklpd zmm8,zmm6,ZMMWORD PTR [rsp+0x8c0]
  a66691:	23 
  a66692:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a66698:	62 d2 6d 48 7f e8    	vpermt2ps zmm5,zmm2,zmm8
  a6669e:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a666a4:	62 d2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm9
  a666aa:	62 f1 7c 48 10 72 1b 	vmovups zmm6,ZMMWORD PTR [rdx+0x6c0]
  a666b1:	62 71 7c 48 10 52 1a 	vmovups zmm10,ZMMWORD PTR [rdx+0x680]
  a666b8:	62 51 7c 48 59 f2    	vmulps zmm14,zmm0,zmm10
  a666be:	62 72 55 48 b8 f6    	vfmadd231ps zmm14,zmm5,zmm6
  a666c4:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm14
  a666cb:	ff 
  a666cc:	62 d1 54 48 59 ea    	vmulps zmm5,zmm5,zmm10
  a666d2:	62 f2 4d 48 bc e8    	vfnmadd231ps zmm5,zmm6,zmm0
  a666d8:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm5
  a666df:	06 
  a666e0:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a666e7:	03 
  a666e8:	62 71 fd 48 14 7c 24 	vunpcklpd zmm15,zmm0,ZMMWORD PTR [rsp+0x400]
  a666ef:	10 
  a666f0:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a666f7:	02 
  a666f8:	62 f1 fd 48 14 74 24 	vunpcklpd zmm6,zmm0,ZMMWORD PTR [rsp+0x980]
  a666ff:	26 
  a66700:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x500]
  a66707:	14 
  a66708:	62 71 fd 48 14 74 24 	vunpcklpd zmm14,zmm0,ZMMWORD PTR [rsp+0x4c0]
  a6670f:	13 
  a66710:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x480]
  a66717:	12 
  a66718:	62 f1 fd 48 14 ec    	vunpcklpd zmm5,zmm0,zmm4
  a6671e:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a66724:	62 72 6d 48 7f f5    	vpermt2ps zmm14,zmm2,zmm5
  a6672a:	62 51 7c 48 28 d7    	vmovaps zmm10,zmm15
  a66730:	62 72 6d 48 7f fe    	vpermt2ps zmm15,zmm2,zmm6
  a66736:	62 f1 7c 48 10 62 0b 	vmovups zmm4,ZMMWORD PTR [rdx+0x2c0]
  a6673d:	62 e1 7c 48 10 4a 0a 	vmovups zmm17,ZMMWORD PTR [rdx+0x280]
  a66744:	62 a1 04 48 59 d1    	vmulps zmm18,zmm15,zmm17
  a6674a:	62 e2 0d 48 b8 d4    	vfmadd231ps zmm18,zmm14,zmm4
  a66750:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm18
  a66757:	03 
  a66758:	62 31 0c 48 59 f1    	vmulps zmm14,zmm14,zmm17
  a6675e:	62 52 5d 48 bc f7    	vfnmadd231ps zmm14,zmm4,zmm15
  a66764:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm14
  a6676b:	02 
  a6676c:	62 62 6d 48 7f 54 24 	vpermt2ps zmm26,zmm2,ZMMWORD PTR [rsp+0x2c0]
  a66773:	0b 
  a66774:	62 f2 6d 48 7f 5c 24 	vpermt2ps zmm3,zmm2,ZMMWORD PTR [rsp+0x280]
  a6677b:	0a 
  a6677c:	62 62 6d 48 7f 64 24 	vpermt2ps zmm28,zmm2,ZMMWORD PTR [rsp+0x240]
  a66783:	09 
  a66784:	62 f2 6d 48 7f 4c 24 	vpermt2ps zmm1,zmm2,ZMMWORD PTR [rsp+0x200]
  a6678b:	08 
  a6678c:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x680]
  a66793:	1a 
  a66794:	62 72 6d 48 7f 74 24 	vpermt2ps zmm14,zmm2,ZMMWORD PTR [rsp+0x640]
  a6679b:	19 
  a6679c:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x600]
  a667a3:	18 
  a667a4:	62 f2 6d 48 7f 7c 24 	vpermt2ps zmm7,zmm2,ZMMWORD PTR [rsp+0x5c0]
  a667ab:	17 
  a667ac:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x440]
  a667b3:	11 
  a667b4:	62 72 6d 48 7f 5c 24 	vpermt2ps zmm11,zmm2,ZMMWORD PTR [rsp+0x580]
  a667bb:	16 
  a667bc:	62 62 6d 48 7f 7c 24 	vpermt2ps zmm31,zmm2,ZMMWORD PTR [rsp+0x540]
  a667c3:	15 
  a667c4:	62 f1 7c 48 10 52 07 	vmovups zmm2,ZMMWORD PTR [rdx+0x1c0]
  a667cb:	62 f1 7c 48 10 62 06 	vmovups zmm4,ZMMWORD PTR [rdx+0x180]
  a667d2:	62 61 64 48 59 c4    	vmulps zmm24,zmm3,zmm4
  a667d8:	62 62 2d 40 bc c2    	vfnmadd231ps zmm24,zmm26,zmm2
  a667de:	62 e1 2c 40 59 ec    	vmulps zmm21,zmm26,zmm4
  a667e4:	62 e2 6d 48 b8 eb    	vfmadd231ps zmm21,zmm2,zmm3
  a667ea:	62 f1 7c 48 10 52 17 	vmovups zmm2,ZMMWORD PTR [rdx+0x5c0]
  a667f1:	62 f1 7c 48 10 5a 16 	vmovups zmm3,ZMMWORD PTR [rdx+0x580]
  a667f8:	62 61 74 48 59 eb    	vmulps zmm29,zmm1,zmm3
  a667fe:	62 62 1d 40 bc ea    	vfnmadd231ps zmm29,zmm28,zmm2
  a66804:	62 71 1c 40 59 fb    	vmulps zmm15,zmm28,zmm3
  a6680a:	62 72 6d 48 b8 f9    	vfmadd231ps zmm15,zmm2,zmm1
  a66810:	62 f1 7c 48 10 4a 1f 	vmovups zmm1,ZMMWORD PTR [rdx+0x7c0]
  a66817:	62 f1 7c 48 10 52 1e 	vmovups zmm2,ZMMWORD PTR [rdx+0x780]
  a6681e:	62 e1 04 40 59 da    	vmulps zmm19,zmm31,zmm2
  a66824:	62 e2 25 48 b8 d9    	vfmadd231ps zmm19,zmm11,zmm1
  a6682a:	62 e1 24 48 59 ca    	vmulps zmm17,zmm11,zmm2
  a66830:	62 82 75 48 bc cf    	vfnmadd231ps zmm17,zmm1,zmm31
  a66836:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a6683d:	62 f1 7c 48 10 62 0e 	vmovups zmm4,ZMMWORD PTR [rdx+0x380]
  a66844:	62 f1 7c 48 28 df    	vmovaps zmm3,zmm7
  a6684a:	62 f1 44 48 59 fc    	vmulps zmm7,zmm7,zmm4
  a66850:	62 f2 0d 48 b8 f9    	vfmadd231ps zmm7,zmm14,zmm1
  a66856:	62 e1 0c 48 59 d4    	vmulps zmm18,zmm14,zmm4
  a6685c:	62 e2 75 48 bc d3    	vfnmadd231ps zmm18,zmm1,zmm3
  a66862:	62 e2 0d 40 7f 74 24 	vpermt2ps zmm22,zmm30,ZMMWORD PTR [rsp+0x300]
  a66869:	0c 
  a6686a:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm22
  a66871:	17 
  a66872:	62 42 0d 40 7f cd    	vpermt2ps zmm25,zmm30,zmm13
  a66878:	62 c2 0d 40 7f e4    	vpermt2ps zmm20,zmm30,zmm12
  a6687e:	62 42 0d 40 7f d9    	vpermt2ps zmm27,zmm30,zmm9
  a66884:	62 c2 0d 40 7f c0    	vpermt2ps zmm16,zmm30,zmm8
  a6688a:	62 72 0d 40 7f d6    	vpermt2ps zmm10,zmm30,zmm6
  a66890:	62 f2 0d 40 7f c5    	vpermt2ps zmm0,zmm30,zmm5
  a66896:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a6689d:	fe 
  a6689e:	62 f2 0d 40 7f 4c 24 	vpermt2ps zmm1,zmm30,ZMMWORD PTR [rsp+0x380]
  a668a5:	0e 
  a668a6:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a668ad:	fe 
  a668ae:	62 f1 7c 48 10 4a 11 	vmovups zmm1,ZMMWORD PTR [rdx+0x440]
  a668b5:	62 f1 7c 48 10 62 10 	vmovups zmm4,ZMMWORD PTR [rdx+0x400]
  a668bc:	62 61 5c 40 59 d4    	vmulps zmm26,zmm20,zmm4
  a668c2:	62 62 35 40 b8 d1    	vfmadd231ps zmm26,zmm25,zmm1
  a668c8:	62 e1 34 40 59 fc    	vmulps zmm23,zmm25,zmm4
  a668ce:	62 a2 75 48 bc fc    	vfnmadd231ps zmm23,zmm1,zmm20
  a668d4:	62 f1 7c 48 10 4a 09 	vmovups zmm1,ZMMWORD PTR [rdx+0x240]
  a668db:	62 f1 7c 48 10 62 08 	vmovups zmm4,ZMMWORD PTR [rdx+0x200]
  a668e2:	62 e1 7c 48 59 e4    	vmulps zmm20,zmm0,zmm4
  a668e8:	62 e2 2d 48 bc e1    	vfnmadd231ps zmm20,zmm10,zmm1
  a668ee:	62 61 2c 48 59 e4    	vmulps zmm28,zmm10,zmm4
  a668f4:	62 62 75 48 b8 e0    	vfmadd231ps zmm28,zmm1,zmm0
  a668fa:	62 f1 7c 48 10 4a 19 	vmovups zmm1,ZMMWORD PTR [rdx+0x640]
  a66901:	62 f1 7c 48 10 42 18 	vmovups zmm0,ZMMWORD PTR [rdx+0x600]
  a66908:	62 61 7c 40 59 c8    	vmulps zmm25,zmm16,zmm0
  a6690e:	62 62 25 40 bc c9    	vfnmadd231ps zmm25,zmm27,zmm1
  a66914:	62 f1 24 40 59 d0    	vmulps zmm2,zmm27,zmm0
  a6691a:	62 b2 75 48 b8 d0    	vfmadd231ps zmm2,zmm1,zmm16
  a66920:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0x3c0]
  a66927:	0f 
  a66928:	62 71 0c 40 5c 54 24 	vsubps zmm10,zmm30,ZMMWORD PTR [rsp+0x40]
  a6692f:	01 
  a66930:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a66937:	03 
  a66938:	62 71 7c 48 5c 5c 24 	vsubps zmm11,zmm0,ZMMWORD PTR [rsp-0x40]
  a6693f:	ff 
  a66940:	62 d1 2c 48 5c e3    	vsubps zmm4,zmm10,zmm11
  a66946:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x340]
  a6694d:	0d 
  a6694e:	62 71 4c 40 5c 2c 24 	vsubps zmm13,zmm22,ZMMWORD PTR [rsp]
  a66955:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a6695c:	06 
  a6695d:	62 e1 7c 48 5c 44 24 	vsubps zmm16,zmm0,ZMMWORD PTR [rsp+0x80]
  a66964:	02 
  a66965:	62 72 7d 48 18 05 91 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff60ed91]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a6696c:	ed 60 ff 
  a6696f:	62 b1 14 48 5c e8    	vsubps zmm5,zmm13,zmm16
  a66975:	62 d1 54 48 59 c0    	vmulps zmm0,zmm5,zmm8
  a6697b:	62 72 7d 48 18 25 df 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff60ecdf]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a66982:	ec 60 ff 
  a66985:	62 d2 5d 48 b8 c4    	vfmadd231ps zmm0,zmm4,zmm12
  a6698b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm0
  a66992:	1a 
  a66993:	62 d1 54 48 59 c4    	vmulps zmm0,zmm5,zmm12
  a66999:	62 f2 3d 48 bc c4    	vfnmadd231ps zmm0,zmm8,zmm4
  a6699f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm0
  a669a6:	19 
  a669a7:	62 91 3c 40 5c ed    	vsubps zmm5,zmm24,zmm29
  a669ad:	62 21 44 48 5c db    	vsubps zmm27,zmm7,zmm19
  a669b3:	62 11 54 48 5c cb    	vsubps zmm9,zmm5,zmm27
  a669b9:	62 41 54 40 5c ff    	vsubps zmm31,zmm21,zmm15
  a669bf:	62 b1 74 40 5c ca    	vsubps zmm1,zmm17,zmm18
  a669c5:	62 f1 04 40 5c c1    	vsubps zmm0,zmm31,zmm1
  a669cb:	62 d1 7c 48 59 dc    	vmulps zmm3,zmm0,zmm12
  a669d1:	62 d2 35 48 b8 d8    	vfmadd231ps zmm3,zmm9,zmm8
  a669d7:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm3
  a669de:	18 
  a669df:	62 d1 34 48 59 dc    	vmulps zmm3,zmm9,zmm12
  a669e5:	62 f2 3d 48 bc d8    	vfnmadd231ps zmm3,zmm8,zmm0
  a669eb:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm3
  a669f2:	16 
  a669f3:	62 91 54 48 58 c3    	vaddps zmm0,zmm5,zmm27
  a669f9:	62 f1 04 40 58 c9    	vaddps zmm1,zmm31,zmm1
  a669ff:	62 d1 2c 48 58 eb    	vaddps zmm5,zmm10,zmm11
  a66a05:	62 31 14 48 58 d0    	vaddps zmm10,zmm13,zmm16
  a66a0b:	62 d1 2c 48 59 dc    	vmulps zmm3,zmm10,zmm12
  a66a11:	62 d2 55 48 b8 d8    	vfmadd231ps zmm3,zmm5,zmm8
  a66a17:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm3
  a66a1e:	15 
  a66a1f:	62 d1 2c 48 59 d8    	vmulps zmm3,zmm10,zmm8
  a66a25:	62 f2 1d 48 bc dd    	vfnmadd231ps zmm3,zmm12,zmm5
  a66a2b:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm3
  a66a32:	13 
  a66a33:	62 d1 74 48 59 d8    	vmulps zmm3,zmm1,zmm8
  a66a39:	62 d2 7d 48 b8 dc    	vfmadd231ps zmm3,zmm0,zmm12
  a66a3f:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm3
  a66a46:	14 
  a66a47:	62 51 74 48 59 e4    	vmulps zmm12,zmm1,zmm12
  a66a4d:	62 52 7d 48 bc e0    	vfnmadd231ps zmm12,zmm0,zmm8
  a66a53:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x140]
  a66a5a:	05 
  a66a5b:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x1c0]
  a66a62:	07 
  a66a63:	62 d1 4c 48 5c c1    	vsubps zmm0,zmm6,zmm9
  a66a69:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x100]
  a66a70:	04 
  a66a71:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x6c0]
  a66a78:	1b 
  a66a79:	62 d1 24 48 5c ce    	vsubps zmm1,zmm11,zmm14
  a66a7f:	62 f1 7c 48 58 d9    	vaddps zmm3,zmm0,zmm1
  a66a85:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm3
  a66a8c:	12 
  a66a8d:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a66a93:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a66a9a:	11 
  a66a9b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x700]
  a66aa2:	1c 
  a66aa3:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0xa00]
  a66aaa:	28 
  a66aab:	62 f1 7c 48 5c cb    	vsubps zmm1,zmm0,zmm3
  a66ab1:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0xa40]
  a66ab8:	29 
  a66ab9:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x9c0]
  a66ac0:	27 
  a66ac1:	62 71 5c 48 5c c5    	vsubps zmm8,zmm4,zmm5
  a66ac7:	62 51 74 48 5c e8    	vsubps zmm13,zmm1,zmm8
  a66acd:	62 f1 3c 48 58 c9    	vaddps zmm1,zmm8,zmm1
  a66ad3:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm1
  a66ada:	10 
  a66adb:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x5c0]
  a66ae2:	17 
  a66ae3:	62 11 74 48 5c c2    	vsubps zmm8,zmm1,zmm26
  a66ae9:	62 61 2c 40 58 d1    	vaddps zmm26,zmm26,zmm1
  a66aef:	62 61 1c 40 5c da    	vsubps zmm27,zmm28,zmm2
  a66af5:	62 71 1c 40 58 d2    	vaddps zmm10,zmm28,zmm2
  a66afb:	62 61 5c 48 58 e5    	vaddps zmm28,zmm4,zmm5
  a66b01:	62 41 4c 48 58 f9    	vaddps zmm31,zmm6,zmm9
  a66b07:	62 c1 54 40 58 c7    	vaddps zmm16,zmm21,zmm15
  a66b0d:	62 31 44 48 58 fb    	vaddps zmm15,zmm7,zmm19
  a66b13:	62 11 3c 40 58 cd    	vaddps zmm9,zmm24,zmm29
  a66b19:	62 a1 6c 40 58 c9    	vaddps zmm17,zmm18,zmm17
  a66b1f:	62 e1 0c 40 58 54 24 	vaddps zmm18,zmm30,ZMMWORD PTR [rsp+0x40]
  a66b26:	01 
  a66b27:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a66b2e:	02 
  a66b2f:	62 e1 74 48 58 5c 24 	vaddps zmm19,zmm1,ZMMWORD PTR [rsp+0x180]
  a66b36:	06 
  a66b37:	62 e1 4c 40 58 2c 24 	vaddps zmm21,zmm22,ZMMWORD PTR [rsp]
  a66b3e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a66b45:	03 
  a66b46:	62 e1 74 48 58 74 24 	vaddps zmm22,zmm1,ZMMWORD PTR [rsp-0x40]
  a66b4d:	ff 
  a66b4e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a66b55:	fe 
  a66b56:	62 21 74 48 5c c7    	vsubps zmm24,zmm1,zmm23
  a66b5c:	62 a1 74 48 58 ff    	vaddps zmm23,zmm1,zmm23
  a66b62:	62 21 34 40 5c ec    	vsubps zmm29,zmm25,zmm20
  a66b68:	62 81 5c 40 58 e1    	vaddps zmm20,zmm20,zmm25
  a66b6e:	62 41 24 48 58 ce    	vaddps zmm25,zmm11,zmm14
  a66b74:	62 61 7c 48 58 f3    	vaddps zmm30,zmm0,zmm3
  a66b7a:	62 b1 6c 40 5c cb    	vsubps zmm1,zmm18,zmm19
  a66b80:	62 b1 54 40 5c c6    	vsubps zmm0,zmm21,zmm22
  a66b86:	62 f1 74 48 58 f0    	vaddps zmm6,zmm1,zmm0
  a66b8c:	62 f1 7c 48 5c f9    	vsubps zmm7,zmm0,zmm1
  a66b92:	62 d1 7c 40 5c cf    	vsubps zmm1,zmm16,zmm15
  a66b98:	62 b1 34 48 5c c1    	vsubps zmm0,zmm9,zmm17
  a66b9e:	62 f1 74 48 5c e0    	vsubps zmm4,zmm1,zmm0
  a66ba4:	62 f1 7c 48 58 e9    	vaddps zmm5,zmm0,zmm1
  a66baa:	62 f2 7d 48 18 0d e8 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff60e7e8]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a66bb1:	e7 60 ff 
  a66bb4:	62 71 14 48 59 e9    	vmulps zmm13,zmm13,zmm1
  a66bba:	62 f1 74 48 59 5c 24 	vmulps zmm3,zmm1,ZMMWORD PTR [rsp+0x480]
  a66bc1:	12 
  a66bc2:	62 f1 74 48 59 54 24 	vmulps zmm2,zmm1,ZMMWORD PTR [rsp+0x440]
  a66bc9:	11 
  a66bca:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp+0x400]
  a66bd1:	10 
  a66bd2:	62 71 5c 48 59 f1    	vmulps zmm14,zmm4,zmm1
  a66bd8:	62 71 4c 48 59 d9    	vmulps zmm11,zmm6,zmm1
  a66bde:	62 f1 44 48 59 e1    	vmulps zmm4,zmm7,zmm1
  a66be4:	62 f1 54 48 59 c9    	vmulps zmm1,zmm5,zmm1
  a66bea:	62 91 3c 48 5c ed    	vsubps zmm5,zmm8,zmm29
  a66bf0:	62 51 14 40 58 c0    	vaddps zmm8,zmm29,zmm8
  a66bf6:	62 61 6c 48 58 e8    	vaddps zmm29,zmm2,zmm0
  a66bfc:	62 f1 6c 48 5c f8    	vsubps zmm7,zmm2,zmm0
  a66c02:	62 91 3c 40 5c d3    	vsubps zmm2,zmm24,zmm27
  a66c08:	62 01 3c 40 58 c3    	vaddps zmm24,zmm24,zmm27
  a66c0e:	62 61 14 48 5c db    	vsubps zmm27,zmm13,zmm3
  a66c14:	62 d1 64 48 58 c5    	vaddps zmm0,zmm3,zmm13
  a66c1a:	62 51 2c 40 5c ea    	vsubps zmm13,zmm26,zmm10
  a66c20:	62 11 2c 48 58 d2    	vaddps zmm10,zmm10,zmm26
  a66c26:	62 01 34 40 5c d6    	vsubps zmm26,zmm25,zmm30
  a66c2c:	62 01 34 40 58 ce    	vaddps zmm25,zmm25,zmm30
  a66c32:	62 b1 34 48 58 d9    	vaddps zmm3,zmm9,zmm17
  a66c38:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a66c3f:	fe 
  a66c40:	62 21 6c 40 58 f3    	vaddps zmm30,zmm18,zmm19
  a66c46:	62 a1 44 40 5c d4    	vsubps zmm18,zmm23,zmm20
  a66c4c:	62 a1 44 40 58 cc    	vaddps zmm17,zmm23,zmm20
  a66c52:	62 81 1c 40 5c e7    	vsubps zmm20,zmm28,zmm31
  a66c58:	62 81 04 40 58 fc    	vaddps zmm23,zmm31,zmm28
  a66c5e:	62 a1 54 40 58 ee    	vaddps zmm21,zmm21,zmm22
  a66c64:	62 51 7c 40 58 ff    	vaddps zmm15,zmm16,zmm15
  a66c6a:	62 81 54 48 5c c3    	vsubps zmm16,zmm5,zmm27
  a66c70:	62 f1 24 40 58 dd    	vaddps zmm3,zmm27,zmm5
  a66c76:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm3
  a66c7d:	02 
  a66c7e:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x640]
  a66c85:	19 
  a66c86:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x580]
  a66c8d:	16 
  a66c8e:	62 71 64 48 5c cd    	vsubps zmm9,zmm3,zmm5
  a66c94:	62 f1 64 48 58 dd    	vaddps zmm3,zmm3,zmm5
  a66c9a:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a66ca1:	01 
  a66ca2:	62 01 6c 48 5c e5    	vsubps zmm28,zmm2,zmm29
  a66ca8:	62 91 6c 48 58 d5    	vaddps zmm2,zmm2,zmm29
  a66cae:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a66cb5:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x680]
  a66cbc:	1a 
  a66cbd:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x600]
  a66cc4:	18 
  a66cc5:	62 f1 6c 48 58 dd    	vaddps zmm3,zmm2,zmm5
  a66ccb:	62 f1 6c 48 5c d5    	vsubps zmm2,zmm2,zmm5
  a66cd1:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a66cd8:	ff 
  a66cd9:	62 21 14 48 5c fc    	vsubps zmm31,zmm13,zmm20
  a66cdf:	62 41 5c 40 58 ed    	vaddps zmm29,zmm20,zmm13
  a66ce5:	62 f1 5c 48 58 f1    	vaddps zmm6,zmm4,zmm1
  a66ceb:	62 61 5c 48 5c d9    	vsubps zmm27,zmm4,zmm1
  a66cf1:	62 91 6c 40 5c ca    	vsubps zmm1,zmm18,zmm26
  a66cf7:	62 01 6c 40 58 d2    	vaddps zmm26,zmm18,zmm26
  a66cfd:	62 c1 0c 48 5c d3    	vsubps zmm18,zmm14,zmm11
  a66d03:	62 c1 24 48 58 f6    	vaddps zmm22,zmm11,zmm14
  a66d09:	62 71 3c 48 5c df    	vsubps zmm11,zmm8,zmm7
  a66d0f:	62 c1 44 48 58 e0    	vaddps zmm20,zmm7,zmm8
  a66d15:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x4c0]
  a66d1c:	13 
  a66d1d:	62 d1 6c 48 5c e4    	vsubps zmm4,zmm2,zmm12
  a66d23:	62 c1 6c 48 58 dc    	vaddps zmm19,zmm2,zmm12
  a66d29:	62 71 3c 40 5c f0    	vsubps zmm14,zmm24,zmm0
  a66d2f:	62 71 3c 40 58 e0    	vaddps zmm12,zmm24,zmm0
  a66d35:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x540]
  a66d3c:	15 
  a66d3d:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x500]
  a66d44:	14 
  a66d45:	62 61 6c 48 5c c0    	vsubps zmm24,zmm2,zmm0
  a66d4b:	62 71 7c 48 58 c2    	vaddps zmm8,zmm0,zmm2
  a66d51:	62 91 2c 48 5c c1    	vsubps zmm0,zmm10,zmm25
  a66d57:	62 41 34 40 58 ca    	vaddps zmm25,zmm25,zmm10
  a66d5d:	62 51 54 40 5c d7    	vsubps zmm10,zmm21,zmm15
  a66d63:	62 d1 54 40 58 ff    	vaddps zmm7,zmm21,zmm15
  a66d69:	62 31 74 40 5c ff    	vsubps zmm15,zmm17,zmm23
  a66d6f:	62 b1 74 40 58 ef    	vaddps zmm5,zmm17,zmm23
  a66d75:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a66d7c:	fe 
  a66d7d:	62 81 6c 48 5c fe    	vsubps zmm23,zmm2,zmm30
  a66d83:	62 f1 0c 40 58 d2    	vaddps zmm2,zmm30,zmm2
  a66d89:	62 71 7c 40 58 eb    	vaddps zmm13,zmm16,zmm3
  a66d8f:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm13
  a66d96:	fe 
  a66d97:	62 71 7c 40 5c eb    	vsubps zmm13,zmm16,zmm3
  a66d9d:	62 d1 1c 40 5c d9    	vsubps zmm3,zmm28,zmm9
  a66da3:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm3
  a66daa:	03 
  a66dab:	62 41 1c 40 58 e1    	vaddps zmm28,zmm28,zmm9
  a66db1:	62 a1 04 40 5c c2    	vsubps zmm16,zmm31,zmm18
  a66db7:	62 a1 04 40 58 ca    	vaddps zmm17,zmm31,zmm18
  a66dbd:	62 61 74 48 5c fe    	vsubps zmm31,zmm1,zmm6
  a66dc3:	62 e1 74 48 58 d6    	vaddps zmm18,zmm1,zmm6
  a66dc9:	62 11 24 48 5c c8    	vsubps zmm9,zmm11,zmm24
  a66dcf:	62 91 24 48 58 f0    	vaddps zmm6,zmm11,zmm24
  a66dd5:	62 e1 0c 48 5c ec    	vsubps zmm21,zmm14,zmm4
  a66ddb:	62 61 0c 48 58 f4    	vaddps zmm30,zmm14,zmm4
  a66de1:	62 21 7c 48 5c c7    	vsubps zmm24,zmm0,zmm23
  a66de7:	62 a1 7c 48 58 ff    	vaddps zmm23,zmm0,zmm23
  a66ded:	62 d1 04 48 5c da    	vsubps zmm3,zmm15,zmm10
  a66df3:	62 d1 04 48 58 e2    	vaddps zmm4,zmm15,zmm10
  a66df9:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a66e00:	02 
  a66e01:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a66e08:	01 
  a66e09:	62 71 7c 48 5c f1    	vsubps zmm14,zmm0,zmm1
  a66e0f:	62 f1 7c 48 58 c1    	vaddps zmm0,zmm0,zmm1
  a66e15:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a66e1c:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp-0x40]
  a66e23:	ff 
  a66e24:	62 51 74 48 5c d3    	vsubps zmm10,zmm1,zmm11
  a66e2a:	62 d1 74 48 58 cb    	vaddps zmm1,zmm1,zmm11
  a66e30:	62 11 14 40 5c db    	vsubps zmm11,zmm29,zmm27
  a66e36:	62 01 14 40 58 eb    	vaddps zmm29,zmm29,zmm27
  a66e3c:	62 21 2c 40 5c de    	vsubps zmm27,zmm26,zmm22
  a66e42:	62 a1 2c 40 58 f6    	vaddps zmm22,zmm26,zmm22
  a66e48:	62 31 5c 40 5c fb    	vsubps zmm15,zmm20,zmm19
  a66e4e:	62 a1 5c 40 58 e3    	vaddps zmm20,zmm20,zmm19
  a66e54:	62 c1 1c 48 5c d8    	vsubps zmm19,zmm12,zmm8
  a66e5a:	62 51 1c 48 58 c0    	vaddps zmm8,zmm12,zmm8
  a66e60:	62 71 34 40 5c e7    	vsubps zmm12,zmm25,zmm7
  a66e66:	62 61 34 40 58 cf    	vaddps zmm25,zmm25,zmm7
  a66e6c:	62 61 54 48 5c d2    	vsubps zmm26,zmm5,zmm2
  a66e72:	62 f1 54 48 58 d2    	vaddps zmm2,zmm5,zmm2
  a66e78:	62 f1 7c 48 28 3d be 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff62d3be]        # 94240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x216f0>
  a66e7f:	d3 62 ff 
  a66e82:	62 63 7d 48 19 cd 02 	vextractf32x4 xmm5,zmm25,0x2
  a66e89:	62 62 45 48 7f ca    	vpermt2ps zmm25,zmm7,zmm2
  a66e8f:	62 61 7c 48 11 0e    	vmovups ZMMWORD PTR [rsi],zmm25
  a66e95:	62 f3 7d 48 19 d2 02 	vextractf32x4 xmm2,zmm2,0x2
  a66e9c:	c5 d0 14 d2          	vunpcklps xmm2,xmm5,xmm2
  a66ea0:	c5 f8 11 56 40       	vmovups XMMWORD PTR [rsi+0x40],xmm2
  a66ea5:	62 e3 7d 48 19 e2 02 	vextractf32x4 xmm2,zmm20,0x2
  a66eac:	62 c2 45 48 7f e0    	vpermt2ps zmm20,zmm7,zmm8
  a66eb2:	62 e1 7c 48 11 a6 50 	vmovups ZMMWORD PTR [rsi+0x50],zmm20
  a66eb9:	00 00 00 
  a66ebc:	62 73 7d 48 19 c5 02 	vextractf32x4 xmm5,zmm8,0x2
  a66ec3:	c5 e8 14 d5          	vunpcklps xmm2,xmm2,xmm5
  a66ec7:	c5 f8 11 96 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm2
  a66ece:	00 
  a66ecf:	62 63 7d 48 19 ea 02 	vextractf32x4 xmm2,zmm29,0x2
  a66ed6:	62 22 45 48 7f ee    	vpermt2ps zmm29,zmm7,zmm22
  a66edc:	62 61 7c 48 11 ae a0 	vmovups ZMMWORD PTR [rsi+0xa0],zmm29
  a66ee3:	00 00 00 
  a66ee6:	62 e3 7d 48 19 f5 02 	vextractf32x4 xmm5,zmm22,0x2
  a66eed:	c5 e8 14 d5          	vunpcklps xmm2,xmm2,xmm5
  a66ef1:	c5 f8 11 96 e0 00 00 	vmovups XMMWORD PTR [rsi+0xe0],xmm2
  a66ef8:	00 
  a66ef9:	62 f3 7d 48 19 c2 02 	vextractf32x4 xmm2,zmm0,0x2
  a66f00:	62 f2 45 48 7f c1    	vpermt2ps zmm0,zmm7,zmm1
  a66f06:	62 f1 7c 48 11 86 f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm0
  a66f0d:	00 00 00 
  a66f10:	62 f3 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm1,0x2
  a66f17:	c5 e8 14 c0          	vunpcklps xmm0,xmm2,xmm0
  a66f1b:	c5 f8 11 86 30 01 00 	vmovups XMMWORD PTR [rsi+0x130],xmm0
  a66f22:	00 
  a66f23:	62 e3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm23,0x2
  a66f2a:	62 e2 45 48 7f fc    	vpermt2ps zmm23,zmm7,zmm4
  a66f30:	62 e1 7c 48 11 7e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm23
  a66f37:	62 f3 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm4,0x2
  a66f3e:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a66f42:	c5 f8 11 86 80 01 00 	vmovups XMMWORD PTR [rsi+0x180],xmm0
  a66f49:	00 
  a66f4a:	62 f3 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm6,0x2
  a66f51:	62 92 45 48 7f f6    	vpermt2ps zmm6,zmm7,zmm30
  a66f57:	62 f1 7c 48 11 b6 90 	vmovups ZMMWORD PTR [rsi+0x190],zmm6
  a66f5e:	01 00 00 
  a66f61:	62 63 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm30,0x2
  a66f68:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a66f6c:	c5 f8 11 86 d0 01 00 	vmovups XMMWORD PTR [rsi+0x1d0],xmm0
  a66f73:	00 
  a66f74:	62 e3 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm17,0x2
  a66f7b:	62 a2 45 48 7f ca    	vpermt2ps zmm17,zmm7,zmm18
  a66f81:	62 e1 7c 48 11 8e e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm17
  a66f88:	01 00 00 
  a66f8b:	62 e3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm18,0x2
  a66f92:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a66f96:	c5 f8 11 86 20 02 00 	vmovups XMMWORD PTR [rsi+0x220],xmm0
  a66f9d:	00 
  a66f9e:	62 73 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm13,0x2
  a66fa5:	62 12 45 48 7f ec    	vpermt2ps zmm13,zmm7,zmm28
  a66fab:	62 71 7c 48 11 ae 30 	vmovups ZMMWORD PTR [rsi+0x230],zmm13
  a66fb2:	02 00 00 
  a66fb5:	62 63 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm28,0x2
  a66fbc:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a66fc0:	c5 f8 11 86 70 02 00 	vmovups XMMWORD PTR [rsi+0x270],xmm0
  a66fc7:	00 
  a66fc8:	62 73 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm12,0x2
  a66fcf:	62 12 45 48 7f e2    	vpermt2ps zmm12,zmm7,zmm26
  a66fd5:	62 71 7c 48 11 66 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm12
  a66fdc:	62 63 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm26,0x2
  a66fe3:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a66fe7:	c5 f8 11 86 c0 02 00 	vmovups XMMWORD PTR [rsi+0x2c0],xmm0
  a66fee:	00 
  a66fef:	62 73 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm15,0x2
  a66ff6:	62 32 45 48 7f fb    	vpermt2ps zmm15,zmm7,zmm19
  a66ffc:	62 71 7c 48 11 be d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm15
  a67003:	02 00 00 
  a67006:	62 e3 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm19,0x2
  a6700d:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a67011:	c5 f8 11 86 10 03 00 	vmovups XMMWORD PTR [rsi+0x310],xmm0
  a67018:	00 
  a67019:	62 73 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm11,0x2
  a67020:	62 12 45 48 7f db    	vpermt2ps zmm11,zmm7,zmm27
  a67026:	62 71 7c 48 11 9e 20 	vmovups ZMMWORD PTR [rsi+0x320],zmm11
  a6702d:	03 00 00 
  a67030:	62 63 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm27,0x2
  a67037:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a6703b:	c5 f8 11 86 60 03 00 	vmovups XMMWORD PTR [rsi+0x360],xmm0
  a67042:	00 
  a67043:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a6704a:	62 52 45 48 7f f2    	vpermt2ps zmm14,zmm7,zmm10
  a67050:	62 71 7c 48 11 b6 70 	vmovups ZMMWORD PTR [rsi+0x370],zmm14
  a67057:	03 00 00 
  a6705a:	62 73 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm10,0x2
  a67061:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a67065:	c5 f8 11 86 b0 03 00 	vmovups XMMWORD PTR [rsi+0x3b0],xmm0
  a6706c:	00 
  a6706d:	62 63 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm24,0x2
  a67074:	62 62 45 48 7f c3    	vpermt2ps zmm24,zmm7,zmm3
  a6707a:	62 61 7c 48 11 46 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm24
  a67081:	62 f3 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm3,0x2
  a67088:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a6708c:	c5 f8 11 86 00 04 00 	vmovups XMMWORD PTR [rsi+0x400],xmm0
  a67093:	00 
  a67094:	62 73 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm9,0x2
  a6709b:	62 32 45 48 7f cd    	vpermt2ps zmm9,zmm7,zmm21
  a670a1:	62 71 7c 48 11 8e 10 	vmovups ZMMWORD PTR [rsi+0x410],zmm9
  a670a8:	04 00 00 
  a670ab:	62 e3 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm21,0x2
  a670b2:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a670b6:	c5 f8 11 86 50 04 00 	vmovups XMMWORD PTR [rsi+0x450],xmm0
  a670bd:	00 
  a670be:	62 e3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm16,0x2
  a670c5:	62 82 45 48 7f c7    	vpermt2ps zmm16,zmm7,zmm31
  a670cb:	62 e1 7c 48 11 86 60 	vmovups ZMMWORD PTR [rsi+0x460],zmm16
  a670d2:	04 00 00 
  a670d5:	62 63 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm31,0x2
  a670dc:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a670e0:	c5 f8 11 86 a0 04 00 	vmovups XMMWORD PTR [rsi+0x4a0],xmm0
  a670e7:	00 
  a670e8:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a670ef:	fe 
  a670f0:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a670f7:	03 
  a670f8:	62 f2 75 48 77 f8    	vpermi2ps zmm7,zmm1,zmm0
  a670fe:	62 f1 7c 48 11 be b0 	vmovups ZMMWORD PTR [rsi+0x4b0],zmm7
  a67105:	04 00 00 
  a67108:	62 f3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm0,0x2
  a6710f:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a67116:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a6711a:	c5 f8 11 86 f0 04 00 	vmovups XMMWORD PTR [rsi+0x4f0],xmm0
  a67121:	00 
  a67122:	48 81 c4 88 0a 00 00 	add    rsp,0xa88
  a67129:	c5 f8 77             	vzeroupper
  a6712c:	c3                   	ret
