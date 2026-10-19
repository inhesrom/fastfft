
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a01b40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a01b40:	48 81 ec 08 05 00 00 	sub    rsp,0x508
  a01b47:	62 71 7c 48 28 15 af 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff68c5af]        # 8e100 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b5b0>
  a01b4e:	c5 68 ff 
  a01b51:	62 61 7c 48 10 17    	vmovups zmm26,ZMMWORD PTR [rdi]
  a01b57:	62 61 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm26
  a01b5e:	62 f1 7c 48 10 6f 01 	vmovups zmm5,ZMMWORD PTR [rdi+0x40]
  a01b65:	62 f1 7c 48 10 57 02 	vmovups zmm2,ZMMWORD PTR [rdi+0x80]
  a01b6c:	62 71 7c 48 10 4f 03 	vmovups zmm9,ZMMWORD PTR [rdi+0xc0]
  a01b73:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a01b77:	62 62 2d 48 7f d0    	vpermt2ps zmm26,zmm10,zmm0
  a01b7d:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm26
  a01b84:	ff 
  a01b85:	62 71 7c 48 28 35 b1 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff68c5b1]        # 8e140 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b5f0>
  a01b8c:	c5 68 ff 
  a01b8f:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a01b95:	62 f2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm0
  a01b9b:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a01ba1:	62 e1 7c 48 28 ca    	vmovaps zmm17,zmm2
  a01ba7:	62 e2 2d 48 7f c8    	vpermt2ps zmm17,zmm10,zmm0
  a01bad:	62 f2 0d 48 7f d0    	vpermt2ps zmm2,zmm14,zmm0
  a01bb3:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm2
  a01bba:	05 
  a01bbb:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a01bc1:	62 f2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm0
  a01bc7:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a01bce:	fe 
  a01bcf:	62 f1 7c 48 10 77 04 	vmovups zmm6,ZMMWORD PTR [rdi+0x100]
  a01bd6:	62 71 7c 48 28 ee    	vmovaps zmm13,zmm6
  a01bdc:	62 72 2d 48 7f e8    	vpermt2ps zmm13,zmm10,zmm0
  a01be2:	62 61 7c 48 10 5f 05 	vmovups zmm27,ZMMWORD PTR [rdi+0x140]
  a01be9:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm27
  a01bf0:	08 
  a01bf1:	62 62 2d 48 7f d8    	vpermt2ps zmm27,zmm10,zmm0
  a01bf7:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm27
  a01bfe:	07 
  a01bff:	62 71 7c 48 10 7f 06 	vmovups zmm15,ZMMWORD PTR [rdi+0x180]
  a01c06:	62 d1 7c 48 28 cf    	vmovaps zmm1,zmm15
  a01c0c:	62 f2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm0
  a01c12:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a01c18:	62 61 7c 48 10 67 07 	vmovups zmm28,ZMMWORD PTR [rdi+0x1c0]
  a01c1f:	62 91 7c 48 28 dc    	vmovaps zmm3,zmm28
  a01c25:	62 f2 2d 48 7f d8    	vpermt2ps zmm3,zmm10,zmm0
  a01c2b:	62 e1 7c 48 10 77 08 	vmovups zmm22,ZMMWORD PTR [rdi+0x200]
  a01c32:	62 a1 7c 48 28 d6    	vmovaps zmm18,zmm22
  a01c38:	62 e2 2d 48 7f d0    	vpermt2ps zmm18,zmm10,zmm0
  a01c3e:	62 e2 0d 48 7f f0    	vpermt2ps zmm22,zmm14,zmm0
  a01c44:	62 e1 7c 48 10 7f 09 	vmovups zmm23,ZMMWORD PTR [rdi+0x240]
  a01c4b:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a01c51:	62 f2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm0
  a01c57:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a01c5e:	06 
  a01c5f:	62 e1 7c 48 10 47 0a 	vmovups zmm16,ZMMWORD PTR [rdi+0x280]
  a01c66:	62 21 7c 48 28 d8    	vmovaps zmm27,zmm16
  a01c6c:	62 62 2d 48 7f d8    	vpermt2ps zmm27,zmm10,zmm0
  a01c72:	62 e1 7c 48 10 6f 0b 	vmovups zmm21,ZMMWORD PTR [rdi+0x2c0]
  a01c79:	62 a1 7c 48 28 e5    	vmovaps zmm20,zmm21
  a01c7f:	62 e2 2d 48 7f e0    	vpermt2ps zmm20,zmm10,zmm0
  a01c85:	62 e2 0d 48 7f e8    	vpermt2ps zmm21,zmm14,zmm0
  a01c8b:	62 61 7c 48 10 6f 0c 	vmovups zmm29,ZMMWORD PTR [rdi+0x300]
  a01c92:	62 01 7c 48 28 fd    	vmovaps zmm31,zmm29
  a01c98:	62 62 2d 48 7f f8    	vpermt2ps zmm31,zmm10,zmm0
  a01c9e:	62 61 7c 48 10 77 0d 	vmovups zmm30,ZMMWORD PTR [rdi+0x340]
  a01ca5:	62 01 7c 48 28 ce    	vmovaps zmm25,zmm30
  a01cab:	62 62 2d 48 7f c8    	vpermt2ps zmm25,zmm10,zmm0
  a01cb1:	62 e1 7c 48 10 5f 0e 	vmovups zmm19,ZMMWORD PTR [rdi+0x380]
  a01cb8:	62 72 65 40 77 d0    	vpermi2ps zmm10,zmm19,zmm0
  a01cbe:	62 e2 0d 48 7f d8    	vpermt2ps zmm19,zmm14,zmm0
  a01cc4:	62 f1 4c 40 5c d2    	vsubps zmm2,zmm22,zmm2
  a01cca:	62 b1 54 40 5c cb    	vsubps zmm1,zmm21,zmm19
  a01cd0:	62 f2 7d 48 18 05 7e 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff673a7e]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a01cd7:	3a 67 ff 
  a01cda:	62 f1 74 48 59 e0    	vmulps zmm4,zmm1,zmm0
  a01ce0:	62 72 7d 48 18 25 b6 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff6736b6]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a01ce7:	36 67 ff 
  a01cea:	62 d2 6d 48 b8 e4    	vfmadd231ps zmm4,zmm2,zmm12
  a01cf0:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm4
  a01cf7:	13 
  a01cf8:	62 f1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm0
  a01cfe:	62 f2 1d 48 bc d1    	vfnmadd231ps zmm2,zmm12,zmm1
  a01d04:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  a01d0b:	04 
  a01d0c:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a01d10:	62 f2 0d 48 7f e9    	vpermt2ps zmm5,zmm14,zmm1
  a01d16:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm5
  a01d1d:	02 
  a01d1e:	62 f2 0d 48 7f f1    	vpermt2ps zmm6,zmm14,zmm1
  a01d24:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm6
  a01d2b:	01 
  a01d2c:	62 62 0d 48 7f e1    	vpermt2ps zmm28,zmm14,zmm1
  a01d32:	62 62 0d 48 7f f1    	vpermt2ps zmm30,zmm14,zmm1
  a01d38:	62 91 0c 40 5c cc    	vsubps zmm1,zmm30,zmm28
  a01d3e:	62 f1 54 48 5c d6    	vsubps zmm2,zmm5,zmm6
  a01d44:	62 f1 6c 48 59 e0    	vmulps zmm4,zmm2,zmm0
  a01d4a:	62 d2 75 48 b8 e4    	vfmadd231ps zmm4,zmm1,zmm12
  a01d50:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm4
  a01d57:	10 
  a01d58:	62 f1 74 48 59 c8    	vmulps zmm1,zmm1,zmm0
  a01d5e:	62 f2 1d 48 bc ca    	vfnmadd231ps zmm1,zmm12,zmm2
  a01d64:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a01d6b:	03 
  a01d6c:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a01d70:	62 72 0d 48 7f c9    	vpermt2ps zmm9,zmm14,zmm1
  a01d76:	62 72 0d 48 7f f9    	vpermt2ps zmm15,zmm14,zmm1
  a01d7c:	62 e2 0d 48 7f f9    	vpermt2ps zmm23,zmm14,zmm1
  a01d82:	62 62 0d 48 7f e9    	vpermt2ps zmm29,zmm14,zmm1
  a01d88:	62 91 34 48 5c cd    	vsubps zmm1,zmm9,zmm29
  a01d8e:	62 b1 04 48 5c d7    	vsubps zmm2,zmm15,zmm23
  a01d94:	62 d1 7c 48 28 ff    	vmovaps zmm7,zmm15
  a01d9a:	62 f1 6c 48 59 e0    	vmulps zmm4,zmm2,zmm0
  a01da0:	62 d2 75 48 b8 e4    	vfmadd231ps zmm4,zmm1,zmm12
  a01da6:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm4
  a01dad:	12 
  a01dae:	62 61 74 48 59 d0    	vmulps zmm26,zmm1,zmm0
  a01db4:	62 62 1d 48 bc d2    	vfnmadd231ps zmm26,zmm12,zmm2
  a01dba:	62 b1 6c 40 5c c9    	vsubps zmm1,zmm18,zmm17
  a01dc0:	62 d1 5c 40 5c d2    	vsubps zmm2,zmm20,zmm10
  a01dc6:	62 f1 6c 48 59 e0    	vmulps zmm4,zmm2,zmm0
  a01dcc:	62 d2 75 48 b8 e4    	vfmadd231ps zmm4,zmm1,zmm12
  a01dd2:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm4
  a01dd9:	0f 
  a01dda:	62 61 74 48 59 c0    	vmulps zmm24,zmm1,zmm0
  a01de0:	62 62 1d 48 bc c2    	vfnmadd231ps zmm24,zmm12,zmm2
  a01de6:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a01dec:	62 f1 34 40 5c cb    	vsubps zmm1,zmm25,zmm3
  a01df2:	62 d1 7c 48 28 f3    	vmovaps zmm6,zmm11
  a01df8:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a01dfe:	62 f1 24 48 59 d0    	vmulps zmm2,zmm11,zmm0
  a01e04:	62 d2 75 48 b8 d4    	vfmadd231ps zmm2,zmm1,zmm12
  a01e0a:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm2
  a01e11:	0b 
  a01e12:	62 71 74 48 59 f8    	vmulps zmm15,zmm1,zmm0
  a01e18:	62 52 1d 48 bc fb    	vfnmadd231ps zmm15,zmm12,zmm11
  a01e1e:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x80]
  a01e25:	fe 
  a01e26:	62 91 5c 48 5c cf    	vsubps zmm1,zmm4,zmm31
  a01e2c:	62 d1 7c 48 28 d8    	vmovaps zmm3,zmm8
  a01e32:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x180]
  a01e39:	06 
  a01e3a:	62 71 3c 48 5c da    	vsubps zmm11,zmm8,zmm2
  a01e40:	62 71 24 48 59 c0    	vmulps zmm8,zmm11,zmm0
  a01e46:	62 52 75 48 b8 c4    	vfmadd231ps zmm8,zmm1,zmm12
  a01e4c:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm8
  a01e53:	11 
  a01e54:	62 71 74 48 59 c0    	vmulps zmm8,zmm1,zmm0
  a01e5a:	62 52 25 48 bc c4    	vfnmadd231ps zmm8,zmm11,zmm12
  a01e60:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a01e64:	62 71 7c 48 10 24 24 	vmovups zmm12,ZMMWORD PTR [rsp]
  a01e6b:	62 72 0d 48 7f e0    	vpermt2ps zmm12,zmm14,zmm0
  a01e71:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x200]
  a01e78:	08 
  a01e79:	62 f2 0d 48 7f c8    	vpermt2ps zmm1,zmm14,zmm0
  a01e7f:	62 e2 0d 48 7f c0    	vpermt2ps zmm16,zmm14,zmm0
  a01e85:	62 91 5c 48 58 c7    	vaddps zmm0,zmm4,zmm31
  a01e8b:	62 f1 64 48 58 e2    	vaddps zmm4,zmm3,zmm2
  a01e91:	62 31 6c 40 58 f1    	vaddps zmm14,zmm18,zmm17
  a01e97:	62 41 5c 40 58 fa    	vaddps zmm31,zmm20,zmm10
  a01e9d:	62 61 34 40 58 cd    	vaddps zmm25,zmm25,zmm5
  a01ea3:	62 c1 4c 48 58 d5    	vaddps zmm18,zmm6,zmm13
  a01ea9:	62 01 34 48 58 ed    	vaddps zmm29,zmm9,zmm29
  a01eaf:	62 a1 44 48 58 ff    	vaddps zmm23,zmm7,zmm23
  a01eb5:	62 e1 4c 40 58 74 24 	vaddps zmm22,zmm22,ZMMWORD PTR [rsp+0x140]
  a01ebc:	05 
  a01ebd:	62 b1 54 40 58 d3    	vaddps zmm2,zmm21,zmm19
  a01ec3:	62 01 0c 40 58 e4    	vaddps zmm28,zmm30,zmm28
  a01ec9:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x40]
  a01ed0:	01 
  a01ed1:	62 f1 64 48 58 5c 24 	vaddps zmm3,zmm3,ZMMWORD PTR [rsp+0x80]
  a01ed8:	02 
  a01ed9:	62 72 7d 48 18 1d 05 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff673805]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a01ee0:	38 67 ff 
  a01ee3:	62 d1 7c 48 28 eb    	vmovaps zmm5,zmm11
  a01ee9:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x1c0]
  a01ef0:	07 
  a01ef1:	62 f2 0d 48 a8 ee    	vfmadd213ps zmm5,zmm14,zmm6
  a01ef7:	62 62 7d 48 18 35 43 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff673743]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a01efe:	37 67 ff 
  a01f01:	62 51 4c 48 58 ce    	vaddps zmm9,zmm6,zmm14
  a01f07:	62 d2 0d 40 bc f6    	vfnmadd231ps zmm6,zmm30,zmm14
  a01f0d:	62 e1 7c 48 28 e6    	vmovaps zmm20,zmm6
  a01f13:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a01f19:	62 12 35 40 a8 d3    	vfmadd213ps zmm10,zmm25,zmm27
  a01f1f:	62 91 24 40 58 f1    	vaddps zmm6,zmm27,zmm25
  a01f25:	62 02 0d 40 bc d9    	vfnmadd231ps zmm27,zmm30,zmm25
  a01f2b:	62 51 7c 48 28 f3    	vmovaps zmm14,zmm11
  a01f31:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp-0x40]
  a01f38:	ff 
  a01f39:	62 72 7d 48 a8 f7    	vfmadd213ps zmm14,zmm0,zmm7
  a01f3f:	62 61 44 48 58 c8    	vaddps zmm25,zmm7,zmm0
  a01f45:	62 f2 0d 40 bc f8    	vfnmadd231ps zmm7,zmm30,zmm0
  a01f4b:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a01f51:	62 c1 7c 48 28 db    	vmovaps zmm19,zmm11
  a01f57:	62 e2 4d 40 a8 d9    	vfmadd213ps zmm19,zmm22,zmm1
  a01f5d:	62 b1 74 48 58 c6    	vaddps zmm0,zmm1,zmm22
  a01f63:	62 b2 0d 40 bc ce    	vfnmadd231ps zmm1,zmm30,zmm22
  a01f69:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a01f6f:	62 c1 7c 48 28 eb    	vmovaps zmm21,zmm11
  a01f75:	62 a2 1d 40 a8 e8    	vfmadd213ps zmm21,zmm28,zmm16
  a01f7b:	62 91 7c 40 58 fc    	vaddps zmm7,zmm16,zmm28
  a01f81:	62 82 0d 40 bc c4    	vfnmadd231ps zmm16,zmm30,zmm28
  a01f87:	62 c1 7c 48 28 f3    	vmovaps zmm22,zmm11
  a01f8d:	62 c2 15 40 a8 f4    	vfmadd213ps zmm22,zmm29,zmm12
  a01f93:	62 01 1c 48 58 e5    	vaddps zmm28,zmm12,zmm29
  a01f99:	62 12 15 40 bc e6    	vfnmadd231ps zmm12,zmm29,zmm30
  a01f9f:	62 92 05 40 bc ee    	vfnmadd231ps zmm5,zmm31,zmm30
  a01fa5:	62 12 6d 40 bc d6    	vfnmadd231ps zmm10,zmm18,zmm30
  a01fab:	62 12 5d 48 bc f6    	vfnmadd231ps zmm14,zmm4,zmm30
  a01fb1:	62 82 6d 48 bc de    	vfnmadd231ps zmm19,zmm2,zmm30
  a01fb7:	62 82 65 48 bc ee    	vfnmadd231ps zmm21,zmm3,zmm30
  a01fbd:	62 82 45 40 bc f6    	vfnmadd231ps zmm22,zmm23,zmm30
  a01fc3:	62 11 34 48 58 cf    	vaddps zmm9,zmm9,zmm31
  a01fc9:	62 82 25 48 b8 e7    	vfmadd231ps zmm20,zmm11,zmm31
  a01fcf:	62 b1 4c 48 58 f2    	vaddps zmm6,zmm6,zmm18
  a01fd5:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm6
  a01fdc:	0a 
  a01fdd:	62 22 25 48 b8 da    	vfmadd231ps zmm27,zmm11,zmm18
  a01fe3:	62 f1 34 40 58 cc    	vaddps zmm1,zmm25,zmm4
  a01fe9:	62 72 25 48 b8 ec    	vfmadd231ps zmm13,zmm11,zmm4
  a01fef:	62 e1 7c 48 58 d2    	vaddps zmm18,zmm0,zmm2
  a01ff5:	62 e2 25 48 b8 ca    	vfmadd231ps zmm17,zmm11,zmm2
  a01ffb:	62 b1 1c 40 58 c7    	vaddps zmm0,zmm28,zmm23
  a02001:	62 52 45 40 b8 e3    	vfmadd231ps zmm12,zmm23,zmm11
  a02007:	62 e2 25 48 b8 c3    	vfmadd231ps zmm16,zmm11,zmm3
  a0200d:	62 61 44 48 58 cb    	vaddps zmm25,zmm7,zmm3
  a02013:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x3c0]
  a0201a:	0f 
  a0201b:	62 91 64 40 5c d5    	vsubps zmm2,zmm19,zmm29
  a02021:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0x2c0]
  a02028:	0b 
  a02029:	62 91 54 40 5c de    	vsubps zmm3,zmm21,zmm30
  a0202f:	62 f1 6c 48 5c e3    	vsubps zmm4,zmm2,zmm3
  a02035:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm4
  a0203c:	08 
  a0203d:	62 f1 6c 48 58 d3    	vaddps zmm2,zmm2,zmm3
  a02043:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a0204a:	fe 
  a0204b:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp+0x4c0]
  a02052:	13 
  a02053:	62 91 54 48 58 d4    	vaddps zmm2,zmm5,zmm28
  a02059:	62 e1 7c 48 10 7c 24 	vmovups zmm23,ZMMWORD PTR [rsp+0x400]
  a02060:	10 
  a02061:	62 b1 2c 48 58 df    	vaddps zmm3,zmm10,zmm23
  a02067:	62 f1 6c 48 58 e3    	vaddps zmm4,zmm2,zmm3
  a0206d:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm4
  a02074:	01 
  a02075:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a0207b:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm2
  a02082:	06 
  a02083:	62 91 74 40 5c d0    	vsubps zmm2,zmm17,zmm24
  a02089:	62 d1 7c 40 5c df    	vsubps zmm3,zmm16,zmm15
  a0208f:	62 f1 6c 48 5c e3    	vsubps zmm4,zmm2,zmm3
  a02095:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm4
  a0209c:	02 
  a0209d:	62 f1 6c 48 58 d3    	vaddps zmm2,zmm2,zmm3
  a020a3:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm2
  a020aa:	05 
  a020ab:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x100]
  a020b2:	04 
  a020b3:	62 f1 5c 40 58 d4    	vaddps zmm2,zmm20,zmm4
  a020b9:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0xc0]
  a020c0:	03 
  a020c1:	62 f1 24 40 58 df    	vaddps zmm3,zmm27,zmm7
  a020c7:	62 71 6c 48 58 db    	vaddps zmm11,zmm2,zmm3
  a020cd:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm11
  a020d4:	0d 
  a020d5:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a020db:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm2
  a020e2:	0e 
  a020e3:	62 91 14 48 58 d2    	vaddps zmm2,zmm13,zmm26
  a020e9:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm2
  a020f0:	0c 
  a020f1:	62 01 14 48 5c d2    	vsubps zmm26,zmm13,zmm26
  a020f7:	62 f1 5c 40 5c e4    	vsubps zmm4,zmm20,zmm4
  a020fd:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm4
  a02104:	09 
  a02105:	62 f1 24 40 5c ff    	vsubps zmm7,zmm27,zmm7
  a0210b:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm7
  a02112:	03 
  a02113:	62 d1 1c 48 5c d0    	vsubps zmm2,zmm12,zmm8
  a02119:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  a02120:	04 
  a02121:	62 41 3c 48 58 dc    	vaddps zmm27,zmm8,zmm12
  a02127:	62 a1 3c 40 58 c9    	vaddps zmm17,zmm24,zmm17
  a0212d:	62 31 04 48 58 f8    	vaddps zmm15,zmm15,zmm16
  a02133:	62 61 34 48 58 fe    	vaddps zmm31,zmm9,zmm6
  a02139:	62 51 7c 48 28 e9    	vmovaps zmm13,zmm9
  a0213f:	62 91 74 48 58 d7    	vaddps zmm2,zmm1,zmm31
  a02145:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm2
  a0214c:	07 
  a0214d:	62 f2 7d 48 18 15 09 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff673309]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a02154:	33 67 ff 
  a02157:	62 62 6d 48 ac f9    	vfnmadd213ps zmm31,zmm2,zmm1
  a0215d:	62 11 6c 40 58 c9    	vaddps zmm9,zmm18,zmm25
  a02163:	62 11 7c 48 28 d9    	vmovaps zmm11,zmm25
  a02169:	62 b1 7c 48 28 da    	vmovaps zmm3,zmm18
  a0216f:	62 d1 7c 48 58 c9    	vaddps zmm1,zmm0,zmm9
  a02175:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a0217c:	62 72 6d 48 ac c8    	vfnmadd213ps zmm9,zmm2,zmm0
  a02182:	62 71 5c 48 58 c7    	vaddps zmm8,zmm4,zmm7
  a02188:	62 c1 2c 40 58 e0    	vaddps zmm20,zmm26,zmm8
  a0218e:	62 12 6d 48 ac c2    	vfnmadd213ps zmm8,zmm2,zmm26
  a02194:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a0219a:	62 e1 7c 48 28 d2    	vmovaps zmm18,zmm2
  a021a0:	62 61 7c 48 28 c2    	vmovaps zmm24,zmm2
  a021a6:	62 e1 7c 48 28 c2    	vmovaps zmm16,zmm2
  a021ac:	62 41 74 40 58 d7    	vaddps zmm26,zmm17,zmm15
  a021b2:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a021b8:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a021be:	62 92 2d 40 ac d3    	vfnmadd213ps zmm2,zmm26,zmm27
  a021c4:	62 91 24 40 58 c2    	vaddps zmm0,zmm27,zmm26
  a021ca:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a021d1:	ff 
  a021d2:	62 91 54 48 5c ec    	vsubps zmm5,zmm5,zmm28
  a021d8:	62 31 2c 48 5c d7    	vsubps zmm10,zmm10,zmm23
  a021de:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x480]
  a021e5:	12 
  a021e6:	62 61 0c 48 58 d0    	vaddps zmm26,zmm14,zmm0
  a021ec:	62 61 0c 48 5c c8    	vsubps zmm25,zmm14,zmm0
  a021f2:	62 31 14 40 58 f3    	vaddps zmm14,zmm29,zmm19
  a021f8:	62 a1 0c 40 58 dd    	vaddps zmm19,zmm30,zmm21
  a021fe:	62 a1 0c 48 5c eb    	vsubps zmm21,zmm14,zmm19
  a02204:	62 b1 0c 48 58 fb    	vaddps zmm7,zmm14,zmm19
  a0220a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x440]
  a02211:	11 
  a02212:	62 71 4c 40 5c f0    	vsubps zmm14,zmm22,zmm0
  a02218:	62 a1 7c 48 58 f6    	vaddps zmm22,zmm0,zmm22
  a0221e:	62 d1 54 48 58 c2    	vaddps zmm0,zmm5,zmm10
  a02224:	62 d1 54 48 5c ea    	vsubps zmm5,zmm5,zmm10
  a0222a:	62 41 64 48 5c e3    	vsubps zmm28,zmm3,zmm11
  a02230:	62 71 14 48 5c 54 24 	vsubps zmm10,zmm13,ZMMWORD PTR [rsp+0x280]
  a02237:	0a 
  a02238:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a0223f:	01 
  a02240:	62 12 75 48 ac e2    	vfnmadd213ps zmm12,zmm1,zmm26
  a02246:	62 61 2c 40 58 d1    	vaddps zmm26,zmm26,zmm1
  a0224c:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a02253:	fe 
  a02254:	62 c2 75 48 ac d6    	vfnmadd213ps zmm18,zmm1,zmm14
  a0225a:	62 f1 0c 48 58 c9    	vaddps zmm1,zmm14,zmm1
  a02260:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a02267:	fe 
  a02268:	62 62 7d 48 18 2d 62 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff673062]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0226f:	30 67 ff 
  a02272:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x340]
  a02279:	0d 
  a0227a:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x300]
  a02281:	0c 
  a02282:	62 42 65 40 ac c5    	vfnmadd213ps zmm24,zmm19,zmm13
  a02288:	62 61 14 40 59 5c 24 	vmulps zmm27,zmm29,ZMMWORD PTR [rsp+0x80]
  a0228f:	02 
  a02290:	62 11 3c 40 5c f3    	vsubps zmm14,zmm24,zmm27
  a02296:	62 01 3c 40 58 db    	vaddps zmm27,zmm24,zmm27
  a0229c:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x140]
  a022a3:	05 
  a022a4:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a022ab:	04 
  a022ac:	62 e2 65 48 ac c1    	vfnmadd213ps zmm16,zmm3,zmm1
  a022b2:	62 61 14 40 59 44 24 	vmulps zmm24,zmm29,ZMMWORD PTR [rsp+0x380]
  a022b9:	0e 
  a022ba:	62 01 7c 40 58 f0    	vaddps zmm30,zmm16,zmm24
  a022c0:	62 01 7c 40 5c c0    	vsubps zmm24,zmm16,zmm24
  a022c6:	62 51 74 40 5c df    	vsubps zmm11,zmm17,zmm15
  a022cc:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x240]
  a022d3:	09 
  a022d4:	62 71 04 48 5c 7c 24 	vsubps zmm15,zmm15,ZMMWORD PTR [rsp+0xc0]
  a022db:	03 
  a022dc:	62 e1 14 40 59 4c 24 	vmulps zmm17,zmm29,ZMMWORD PTR [rsp+0x200]
  a022e3:	08 
  a022e4:	62 e1 14 40 59 7c 24 	vmulps zmm23,zmm29,ZMMWORD PTR [rsp+0x180]
  a022eb:	06 
  a022ec:	62 81 54 40 59 ed    	vmulps zmm21,zmm21,zmm29
  a022f2:	62 91 54 48 59 ed    	vmulps zmm5,zmm5,zmm29
  a022f8:	62 81 1c 40 59 c5    	vmulps zmm16,zmm28,zmm29
  a022fe:	62 01 2c 48 59 e5    	vmulps zmm28,zmm10,zmm29
  a02304:	62 11 24 48 59 d5    	vmulps zmm10,zmm11,zmm29
  a0230a:	62 01 04 48 59 ed    	vmulps zmm29,zmm15,zmm29
  a02310:	62 92 7d 48 ac e1    	vfnmadd213ps zmm4,zmm0,zmm25
  a02316:	62 71 34 40 58 f8    	vaddps zmm15,zmm25,zmm0
  a0231c:	62 b2 45 48 ac f6    	vfnmadd213ps zmm6,zmm7,zmm22
  a02322:	62 61 4c 40 58 cf    	vaddps zmm25,zmm22,zmm7
  a02328:	62 b1 04 40 5c c0    	vsubps zmm0,zmm31,zmm16
  a0232e:	62 a1 04 40 58 f0    	vaddps zmm22,zmm31,zmm16
  a02334:	62 c1 1c 40 58 c1    	vaddps zmm16,zmm28,zmm9
  a0233a:	62 01 34 48 5c fc    	vsubps zmm31,zmm9,zmm28
  a02340:	62 d1 74 40 58 fc    	vaddps zmm7,zmm17,zmm12
  a02346:	62 31 1c 48 5c e1    	vsubps zmm12,zmm12,zmm17
  a0234c:	62 31 6c 40 5c df    	vsubps zmm11,zmm18,zmm23
  a02352:	62 a1 6c 40 58 d7    	vaddps zmm18,zmm18,zmm23
  a02358:	62 21 14 48 58 e3    	vaddps zmm28,zmm13,zmm19
  a0235e:	62 e1 74 48 58 db    	vaddps zmm19,zmm1,zmm3
  a02364:	62 c1 3c 48 5c fa    	vsubps zmm23,zmm8,zmm10
  a0236a:	62 51 3c 48 58 c2    	vaddps zmm8,zmm8,zmm10
  a02370:	62 11 6c 48 58 d5    	vaddps zmm10,zmm2,zmm29
  a02376:	62 01 6c 48 5c ed    	vsubps zmm29,zmm2,zmm29
  a0237c:	62 f1 54 40 58 d4    	vaddps zmm2,zmm21,zmm4
  a02382:	62 a1 5c 48 5c ed    	vsubps zmm21,zmm4,zmm21
  a02388:	62 e1 4c 48 5c cd    	vsubps zmm17,zmm6,zmm5
  a0238e:	62 f1 4c 48 58 cd    	vaddps zmm1,zmm6,zmm5
  a02394:	62 71 7c 48 28 0d e2 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6c4be2]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a0239b:	4b 6c ff 
  a0239e:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x1c0]
  a023a5:	07 
  a023a6:	62 b2 35 48 7f e7    	vpermt2ps zmm4,zmm9,zmm23
  a023ac:	62 d2 35 48 7f ff    	vpermt2ps zmm7,zmm9,zmm15
  a023b2:	62 32 35 48 7f f6    	vpermt2ps zmm14,zmm9,zmm22
  a023b8:	62 c2 35 48 7f e4    	vpermt2ps zmm20,zmm9,zmm12
  a023be:	62 92 35 48 7f d4    	vpermt2ps zmm2,zmm9,zmm28
  a023c4:	62 d2 35 48 7f c0    	vpermt2ps zmm0,zmm9,zmm8
  a023ca:	62 22 35 48 7f d5    	vpermt2ps zmm26,zmm9,zmm21
  a023d0:	62 a1 44 00 57 ff    	vxorps xmm23,xmm23,xmm23
  a023d6:	62 22 35 48 7f df    	vpermt2ps zmm27,zmm9,zmm23
  a023dc:	62 e1 7c 48 28 35 1a 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6c4b1a]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a023e3:	4b 6c ff 
  a023e6:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a023ec:	62 f2 4d 40 7f da    	vpermt2ps zmm3,zmm22,zmm2
  a023f2:	62 61 7c 48 28 25 44 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff6c4b44]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a023f9:	4b 6c ff 
  a023fc:	62 f2 1d 40 7f e2    	vpermt2ps zmm4,zmm28,zmm2
  a02402:	62 f1 7c 48 28 ef    	vmovaps zmm5,zmm7
  a02408:	62 f2 4d 40 7f e8    	vpermt2ps zmm5,zmm22,zmm0
  a0240e:	62 f2 1d 40 7f f8    	vpermt2ps zmm7,zmm28,zmm0
  a02414:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a0241a:	62 92 4d 40 7f c2    	vpermt2ps zmm0,zmm22,zmm26
  a02420:	62 12 1d 40 7f f2    	vpermt2ps zmm14,zmm28,zmm26
  a02426:	62 b1 7c 48 28 f4    	vmovaps zmm6,zmm20
  a0242c:	62 92 4d 40 7f f3    	vpermt2ps zmm6,zmm22,zmm27
  a02432:	62 82 1d 40 7f e3    	vpermt2ps zmm20,zmm28,zmm27
  a02438:	62 61 e5 48 14 d8    	vunpcklpd zmm27,zmm3,zmm0
  a0243e:	62 f1 e5 48 15 d0    	vunpckhpd zmm2,zmm3,zmm0
  a02444:	62 f1 d5 48 14 c6    	vunpcklpd zmm0,zmm5,zmm6
  a0244a:	62 f1 d5 48 15 ee    	vunpckhpd zmm5,zmm5,zmm6
  a02450:	62 d1 dd 48 14 f6    	vunpcklpd zmm6,zmm4,zmm14
  a02456:	62 d1 dd 48 15 de    	vunpckhpd zmm3,zmm4,zmm14
  a0245c:	62 31 c5 48 14 ec    	vunpcklpd zmm13,zmm7,zmm20
  a02462:	62 a1 c5 48 15 ec    	vunpckhpd zmm21,zmm7,zmm20
  a02468:	62 71 7c 48 28 05 8e 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6c498e]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0246f:	49 6c ff 
  a02472:	62 91 7c 48 28 e3    	vmovaps zmm4,zmm27
  a02478:	62 f2 3d 48 7f e0    	vpermt2ps zmm4,zmm8,zmm0
  a0247e:	62 61 7c 48 28 15 b8 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff6c49b8]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a02485:	49 6c ff 
  a02488:	62 62 2d 40 7f d8    	vpermt2ps zmm27,zmm26,zmm0
  a0248e:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a02494:	62 72 3d 48 7f e5    	vpermt2ps zmm12,zmm8,zmm5
  a0249a:	62 f2 2d 40 7f d5    	vpermt2ps zmm2,zmm26,zmm5
  a024a0:	62 71 7c 48 28 f6    	vmovaps zmm14,zmm6
  a024a6:	62 52 3d 48 7f f5    	vpermt2ps zmm14,zmm8,zmm13
  a024ac:	62 d2 2d 40 7f f5    	vpermt2ps zmm6,zmm26,zmm13
  a024b2:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a024b8:	62 b2 3d 48 7f fd    	vpermt2ps zmm7,zmm8,zmm21
  a024be:	62 b2 2d 40 7f dd    	vpermt2ps zmm3,zmm26,zmm21
  a024c4:	62 f1 7c 48 10 2c 24 	vmovups zmm5,ZMMWORD PTR [rsp]
  a024cb:	62 d2 35 48 7f ea    	vpermt2ps zmm5,zmm9,zmm10
  a024d1:	62 12 35 48 7f d9    	vpermt2ps zmm11,zmm9,zmm25
  a024d7:	62 02 35 48 7f f7    	vpermt2ps zmm30,zmm9,zmm31
  a024dd:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp-0x40]
  a024e4:	ff 
  a024e5:	62 32 35 48 7f ea    	vpermt2ps zmm13,zmm9,zmm18
  a024eb:	62 a2 35 48 7f cb    	vpermt2ps zmm17,zmm9,zmm19
  a024f1:	62 82 35 48 7f c5    	vpermt2ps zmm16,zmm9,zmm29
  a024f7:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp-0x80]
  a024fe:	fe 
  a024ff:	62 72 35 48 7f d1    	vpermt2ps zmm10,zmm9,zmm1
  a02505:	62 22 35 48 7f c7    	vpermt2ps zmm24,zmm9,zmm23
  a0250b:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a02511:	62 b2 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm17
  a02517:	62 b2 1d 40 7f e9    	vpermt2ps zmm5,zmm28,zmm17
  a0251d:	62 e1 7c 48 28 cd    	vmovaps zmm17,zmm5
  a02523:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a02529:	62 b2 4d 40 7f c8    	vpermt2ps zmm1,zmm22,zmm16
  a0252f:	62 32 1d 40 7f d8    	vpermt2ps zmm11,zmm28,zmm16
  a02535:	62 91 7c 48 28 ee    	vmovaps zmm5,zmm30
  a0253b:	62 d2 4d 40 7f ea    	vpermt2ps zmm5,zmm22,zmm10
  a02541:	62 42 1d 40 7f f2    	vpermt2ps zmm30,zmm28,zmm10
  a02547:	62 51 7c 48 28 cd    	vmovaps zmm9,zmm13
  a0254d:	62 82 15 48 77 f0    	vpermi2ps zmm22,zmm13,zmm24
  a02553:	62 12 1d 40 7f c8    	vpermt2ps zmm9,zmm28,zmm24
  a02559:	62 c1 7c 48 28 d1    	vmovaps zmm18,zmm9
  a0255f:	62 71 fd 48 14 fd    	vunpcklpd zmm15,zmm0,zmm5
  a02565:	62 71 fd 48 15 cd    	vunpckhpd zmm9,zmm0,zmm5
  a0256b:	62 b1 f5 48 14 ee    	vunpcklpd zmm5,zmm1,zmm22
  a02571:	62 31 f5 48 15 ee    	vunpckhpd zmm13,zmm1,zmm22
  a02577:	62 11 f5 40 14 d6    	vunpcklpd zmm10,zmm17,zmm30
  a0257d:	62 91 f5 40 15 ce    	vunpckhpd zmm1,zmm17,zmm30
  a02583:	62 a1 a5 48 14 c2    	vunpcklpd zmm16,zmm11,zmm18
  a02589:	62 31 a5 48 15 da    	vunpckhpd zmm11,zmm11,zmm18
  a0258f:	62 d1 7c 48 28 c7    	vmovaps zmm0,zmm15
  a02595:	62 f2 3d 48 7f c5    	vpermt2ps zmm0,zmm8,zmm5
  a0259b:	62 72 2d 40 7f fd    	vpermt2ps zmm15,zmm26,zmm5
  a025a1:	62 41 7c 48 28 c9    	vmovaps zmm25,zmm9
  a025a7:	62 42 3d 48 7f cd    	vpermt2ps zmm25,zmm8,zmm13
  a025ad:	62 52 2d 40 7f cd    	vpermt2ps zmm9,zmm26,zmm13
  a025b3:	62 51 7c 48 28 ea    	vmovaps zmm13,zmm10
  a025b9:	62 32 3d 48 7f e8    	vpermt2ps zmm13,zmm8,zmm16
  a025bf:	62 32 2d 40 7f d0    	vpermt2ps zmm10,zmm26,zmm16
  a025c5:	62 52 75 48 77 c3    	vpermi2ps zmm8,zmm1,zmm11
  a025cb:	62 d2 2d 40 7f cb    	vpermt2ps zmm1,zmm26,zmm11
  a025d1:	62 e1 7c 48 10 72 02 	vmovups zmm22,ZMMWORD PTR [rdx+0x80]
  a025d8:	62 e1 7c 48 10 6a 03 	vmovups zmm21,ZMMWORD PTR [rdx+0xc0]
  a025df:	62 71 7c 48 10 5a 04 	vmovups zmm11,ZMMWORD PTR [rdx+0x100]
  a025e6:	62 61 7c 48 10 52 05 	vmovups zmm26,ZMMWORD PTR [rdx+0x140]
  a025ed:	62 e1 7c 48 10 4a 06 	vmovups zmm17,ZMMWORD PTR [rdx+0x180]
  a025f4:	62 e1 7c 48 10 42 07 	vmovups zmm16,ZMMWORD PTR [rdx+0x1c0]
  a025fb:	62 61 7c 48 10 62 08 	vmovups zmm28,ZMMWORD PTR [rdx+0x200]
  a02602:	62 61 7c 48 10 6a 09 	vmovups zmm29,ZMMWORD PTR [rdx+0x240]
  a02609:	62 61 7c 48 10 42 0a 	vmovups zmm24,ZMMWORD PTR [rdx+0x280]
  a02610:	62 e1 7c 48 10 7a 0b 	vmovups zmm23,ZMMWORD PTR [rdx+0x2c0]
  a02617:	62 61 7c 48 10 72 0c 	vmovups zmm30,ZMMWORD PTR [rdx+0x300]
  a0261e:	62 61 7c 48 10 7a 0d 	vmovups zmm31,ZMMWORD PTR [rdx+0x340]
  a02625:	62 e1 7c 48 10 62 0e 	vmovups zmm20,ZMMWORD PTR [rdx+0x380]
  a0262c:	62 e1 7c 48 10 5a 0f 	vmovups zmm19,ZMMWORD PTR [rdx+0x3c0]
  a02633:	62 81 0c 48 59 d4    	vmulps zmm18,zmm14,zmm28
  a02639:	62 82 15 48 bc d5    	vfnmadd231ps zmm18,zmm13,zmm29
  a0263f:	62 b1 5c 48 58 ea    	vaddps zmm5,zmm4,zmm18
  a02645:	62 11 14 48 59 ec    	vmulps zmm13,zmm13,zmm28
  a0264b:	62 41 1c 48 59 e3    	vmulps zmm28,zmm12,zmm11
  a02651:	62 02 35 40 bc e2    	vfnmadd231ps zmm28,zmm25,zmm26
  a02657:	62 52 15 40 b8 ee    	vfmadd231ps zmm13,zmm29,zmm14
  a0265d:	62 11 44 48 59 f6    	vmulps zmm14,zmm7,zmm30
  a02663:	62 12 3d 48 bc f7    	vfnmadd231ps zmm14,zmm8,zmm31
  a02669:	62 41 1c 40 58 ee    	vaddps zmm29,zmm28,zmm14
  a0266f:	62 41 34 40 59 cb    	vmulps zmm25,zmm25,zmm11
  a02675:	62 11 54 48 58 dd    	vaddps zmm11,zmm5,zmm29
  a0267b:	62 42 2d 40 b8 cc    	vfmadd231ps zmm25,zmm26,zmm12
  a02681:	62 31 24 40 59 e6    	vmulps zmm12,zmm27,zmm22
  a02687:	62 32 05 48 bc e5    	vfnmadd231ps zmm12,zmm15,zmm21
  a0268d:	62 01 4c 48 59 d0    	vmulps zmm26,zmm6,zmm24
  a02693:	62 22 2d 48 bc d7    	vfnmadd231ps zmm26,zmm10,zmm23
  a02699:	62 11 3c 48 59 c6    	vmulps zmm8,zmm8,zmm30
  a0269f:	62 01 1c 48 58 f2    	vaddps zmm30,zmm12,zmm26
  a026a5:	62 72 05 40 b8 c7    	vfmadd231ps zmm8,zmm31,zmm7
  a026ab:	62 b1 6c 48 59 f9    	vmulps zmm7,zmm2,zmm17
  a026b1:	62 b2 35 48 bc f8    	vfnmadd231ps zmm7,zmm9,zmm16
  a026b7:	62 21 64 48 59 fc    	vmulps zmm31,zmm3,zmm20
  a026bd:	62 22 75 48 bc fb    	vfnmadd231ps zmm31,zmm1,zmm19
  a026c3:	62 31 04 48 59 fe    	vmulps zmm15,zmm15,zmm22
  a026c9:	62 81 44 48 58 f7    	vaddps zmm22,zmm7,zmm31
  a026cf:	62 12 55 40 b8 fb    	vfmadd231ps zmm15,zmm21,zmm27
  a026d5:	62 a1 0c 40 58 ee    	vaddps zmm21,zmm30,zmm22
  a026db:	62 61 14 48 58 d8    	vaddps zmm27,zmm13,zmm0
  a026e1:	62 11 2c 48 59 d0    	vmulps zmm10,zmm10,zmm24
  a026e7:	62 41 34 40 58 c0    	vaddps zmm24,zmm25,zmm8
  a026ed:	62 72 45 40 b8 d6    	vfmadd231ps zmm10,zmm23,zmm6
  a026f3:	62 81 3c 40 58 fb    	vaddps zmm23,zmm24,zmm27
  a026f9:	62 d1 04 48 58 f2    	vaddps zmm6,zmm15,zmm10
  a026ff:	62 31 34 48 59 c9    	vmulps zmm9,zmm9,zmm17
  a02705:	62 72 7d 40 b8 ca    	vfmadd231ps zmm9,zmm16,zmm2
  a0270b:	62 b1 74 48 59 cc    	vmulps zmm1,zmm1,zmm20
  a02711:	62 f2 65 40 b8 cb    	vfmadd231ps zmm1,zmm19,zmm3
  a02717:	62 f1 34 48 58 d1    	vaddps zmm2,zmm9,zmm1
  a0271d:	62 e1 4c 48 58 c2    	vaddps zmm16,zmm6,zmm2
  a02723:	62 b1 5c 48 5c da    	vsubps zmm3,zmm4,zmm18
  a02729:	62 d1 34 40 5c e0    	vsubps zmm4,zmm25,zmm8
  a0272f:	62 71 64 48 58 c4    	vaddps zmm8,zmm3,zmm4
  a02735:	62 11 1c 48 5c e2    	vsubps zmm12,zmm12,zmm26
  a0273b:	62 51 04 48 5c d2    	vsubps zmm10,zmm15,zmm10
  a02741:	62 72 7d 48 18 3d 51 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff672c51]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a02748:	2c 67 ff 
  a0274b:	62 c1 1c 48 58 ca    	vaddps zmm17,zmm12,zmm10
  a02751:	62 c1 74 40 59 cf    	vmulps zmm17,zmm17,zmm15
  a02757:	62 71 34 48 5c c9    	vsubps zmm9,zmm9,zmm1
  a0275d:	62 91 44 48 5c ff    	vsubps zmm7,zmm7,zmm31
  a02763:	62 f1 34 48 5c cf    	vsubps zmm1,zmm9,zmm7
  a02769:	62 c1 74 48 59 d7    	vmulps zmm18,zmm1,zmm15
  a0276f:	62 a1 74 40 58 da    	vaddps zmm19,zmm17,zmm18
  a02775:	62 b1 3c 48 58 cb    	vaddps zmm1,zmm8,zmm19
  a0277b:	62 d1 7c 48 5c c5    	vsubps zmm0,zmm0,zmm13
  a02781:	62 11 0c 48 5c ec    	vsubps zmm13,zmm14,zmm28
  a02787:	62 71 14 48 58 f0    	vaddps zmm14,zmm13,zmm0
  a0278d:	62 51 2c 48 5c d4    	vsubps zmm10,zmm10,zmm12
  a02793:	62 51 2c 48 59 d7    	vmulps zmm10,zmm10,zmm15
  a02799:	62 d1 44 48 58 f9    	vaddps zmm7,zmm7,zmm9
  a0279f:	62 d1 44 48 59 ff    	vmulps zmm7,zmm7,zmm15
  a027a5:	62 71 2c 48 5c cf    	vsubps zmm9,zmm10,zmm7
  a027ab:	62 c1 0c 48 58 e1    	vaddps zmm20,zmm14,zmm9
  a027b1:	62 11 54 48 5c e5    	vsubps zmm12,zmm5,zmm29
  a027b7:	62 f1 4c 48 5c d2    	vsubps zmm2,zmm6,zmm2
  a027bd:	62 f1 1c 48 58 ea    	vaddps zmm5,zmm12,zmm2
  a027c3:	62 11 24 40 5c f8    	vsubps zmm15,zmm27,zmm24
  a027c9:	62 81 4c 40 5c f6    	vsubps zmm22,zmm22,zmm30
  a027cf:	62 21 04 48 58 c6    	vaddps zmm24,zmm15,zmm22
  a027d5:	62 f1 64 48 5c e4    	vsubps zmm4,zmm3,zmm4
  a027db:	62 71 2c 48 58 d7    	vaddps zmm10,zmm10,zmm7
  a027e1:	62 d1 5c 48 58 fa    	vaddps zmm7,zmm4,zmm10
  a027e7:	62 41 7c 48 5c d5    	vsubps zmm26,zmm0,zmm13
  a027ed:	62 a1 6c 40 5c c9    	vsubps zmm17,zmm18,zmm17
  a027f3:	62 21 2c 40 58 d9    	vaddps zmm27,zmm26,zmm17
  a027f9:	62 b1 24 48 5c f5    	vsubps zmm6,zmm11,zmm21
  a027ff:	62 21 44 40 5c c8    	vsubps zmm25,zmm23,zmm16
  a02805:	62 b1 3c 48 5c db    	vsubps zmm3,zmm8,zmm19
  a0280b:	62 c1 0c 48 5c d9    	vsubps zmm19,zmm14,zmm9
  a02811:	62 f1 1c 48 5c d2    	vsubps zmm2,zmm12,zmm2
  a02817:	62 31 04 48 5c ee    	vsubps zmm13,zmm15,zmm22
  a0281d:	62 d1 5c 48 5c c2    	vsubps zmm0,zmm4,zmm10
  a02823:	62 31 2c 40 5c c9    	vsubps zmm9,zmm26,zmm17
  a02829:	62 31 24 48 58 c5    	vaddps zmm8,zmm11,zmm21
  a0282f:	62 31 44 40 58 f8    	vaddps zmm15,zmm23,zmm16
  a02835:	62 f1 7c 48 28 25 41 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff68b941]        # 8e180 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b630>
  a0283c:	b9 68 ff 
  a0283f:	62 51 7c 48 28 d0    	vmovaps zmm10,zmm8
  a02845:	62 52 5d 48 7f d7    	vpermt2ps zmm10,zmm4,zmm15
  a0284b:	62 51 3c 48 15 df    	vunpckhps zmm11,zmm8,zmm15
  a02851:	62 71 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm11
  a02858:	62 51 3c 48 14 df    	vunpcklps zmm11,zmm8,zmm15
  a0285e:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm11
  a02865:	ff 
  a02866:	c5 7c 28 35 52 b9 68 	vmovaps ymm14,YMMWORD PTR [rip+0xffffffffff68b952]        # 8e1c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b670>
  a0286d:	ff 
  a0286e:	62 52 0d 48 7f c7    	vpermt2ps zmm8,zmm14,zmm15
  a02874:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a0287a:	62 32 5d 48 7f fc    	vpermt2ps zmm15,zmm4,zmm20
  a02880:	62 a1 74 48 15 c4    	vunpckhps zmm16,zmm1,zmm20
  a02886:	62 a1 74 48 14 cc    	vunpcklps zmm17,zmm1,zmm20
  a0288c:	62 b2 0d 48 7f cc    	vpermt2ps zmm1,zmm14,zmm20
  a02892:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a02898:	62 82 5d 48 7f d0    	vpermt2ps zmm18,zmm4,zmm24
  a0289e:	62 81 54 48 15 e0    	vunpckhps zmm20,zmm5,zmm24
  a028a4:	62 81 54 48 14 e8    	vunpcklps zmm21,zmm5,zmm24
  a028aa:	62 92 0d 48 7f e8    	vpermt2ps zmm5,zmm14,zmm24
  a028b0:	62 e1 7c 48 28 f7    	vmovaps zmm22,zmm7
  a028b6:	62 82 5d 48 7f f3    	vpermt2ps zmm22,zmm4,zmm27
  a028bc:	62 81 44 48 15 fb    	vunpckhps zmm23,zmm7,zmm27
  a028c2:	62 01 44 48 14 c3    	vunpcklps zmm24,zmm7,zmm27
  a028c8:	62 92 0d 48 7f fb    	vpermt2ps zmm7,zmm14,zmm27
  a028ce:	62 61 7c 48 28 d6    	vmovaps zmm26,zmm6
  a028d4:	62 02 5d 48 7f d1    	vpermt2ps zmm26,zmm4,zmm25
  a028da:	62 01 4c 48 15 d9    	vunpckhps zmm27,zmm6,zmm25
  a028e0:	62 01 4c 48 14 e1    	vunpcklps zmm28,zmm6,zmm25
  a028e6:	62 92 0d 48 7f f1    	vpermt2ps zmm6,zmm14,zmm25
  a028ec:	62 61 7c 48 28 cb    	vmovaps zmm25,zmm3
  a028f2:	62 22 5d 48 7f cb    	vpermt2ps zmm25,zmm4,zmm19
  a028f8:	62 21 64 48 15 eb    	vunpckhps zmm29,zmm3,zmm19
  a028fe:	62 21 64 48 14 f3    	vunpcklps zmm30,zmm3,zmm19
  a02904:	62 b2 0d 48 7f db    	vpermt2ps zmm3,zmm14,zmm19
  a0290a:	62 e1 7c 48 28 da    	vmovaps zmm19,zmm2
  a02910:	62 c2 5d 48 7f dd    	vpermt2ps zmm19,zmm4,zmm13
  a02916:	62 41 6c 48 15 fd    	vunpckhps zmm31,zmm2,zmm13
  a0291c:	62 51 6c 48 14 e5    	vunpcklps zmm12,zmm2,zmm13
  a02922:	62 d2 0d 48 7f d5    	vpermt2ps zmm2,zmm14,zmm13
  a02928:	62 d2 7d 48 77 e1    	vpermi2ps zmm4,zmm0,zmm9
  a0292e:	62 51 7c 48 15 e9    	vunpckhps zmm13,zmm0,zmm9
  a02934:	62 51 7c 48 14 d9    	vunpcklps zmm11,zmm0,zmm9
  a0293a:	62 d2 0d 48 7f c1    	vpermt2ps zmm0,zmm14,zmm9
  a02940:	62 71 7c 48 11 16    	vmovups ZMMWORD PTR [rsi],zmm10
  a02946:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp-0x40]
  a0294d:	ff 
  a0294e:	62 73 7d 48 19 4e 06 	vextractf32x4 XMMWORD PTR [rsi+0x60],zmm9,0x3
  a02955:	03 
  a02956:	62 71 7c 48 10 0c 24 	vmovups zmm9,ZMMWORD PTR [rsp]
  a0295d:	62 53 7d 48 19 c9 03 	vextractf32x4 xmm9,zmm9,0x3
  a02964:	c5 78 13 4e 70       	vmovlps QWORD PTR [rsi+0x70],xmm9
  a02969:	c5 7c 11 46 40       	vmovups YMMWORD PTR [rsi+0x40],ymm8
  a0296e:	62 71 7c 48 11 be 78 	vmovups ZMMWORD PTR [rsi+0x78],zmm15
  a02975:	00 00 00 
  a02978:	62 e3 7d 48 19 8e d8 	vextractf32x4 XMMWORD PTR [rsi+0xd8],zmm17,0x3
  a0297f:	00 00 00 03 
  a02983:	62 c3 7d 48 19 c0 03 	vextractf32x4 xmm8,zmm16,0x3
  a0298a:	c5 78 13 86 e8 00 00 	vmovlps QWORD PTR [rsi+0xe8],xmm8
  a02991:	00 
  a02992:	c5 fc 11 8e b8 00 00 	vmovups YMMWORD PTR [rsi+0xb8],ymm1
  a02999:	00 
  a0299a:	62 e1 7c 48 11 96 f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm18
  a029a1:	00 00 00 
  a029a4:	62 e3 7d 48 19 6e 15 	vextractf32x4 XMMWORD PTR [rsi+0x150],zmm21,0x3
  a029ab:	03 
  a029ac:	62 e3 7d 48 19 e1 03 	vextractf32x4 xmm1,zmm20,0x3
  a029b3:	c5 f8 13 8e 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm1
  a029ba:	00 
  a029bb:	c5 fc 11 ae 30 01 00 	vmovups YMMWORD PTR [rsi+0x130],ymm5
  a029c2:	00 
  a029c3:	62 e1 7c 48 11 b6 68 	vmovups ZMMWORD PTR [rsi+0x168],zmm22
  a029ca:	01 00 00 
  a029cd:	62 63 7d 48 19 86 c8 	vextractf32x4 XMMWORD PTR [rsi+0x1c8],zmm24,0x3
  a029d4:	01 00 00 03 
  a029d8:	62 e3 7d 48 19 f9 03 	vextractf32x4 xmm1,zmm23,0x3
  a029df:	c5 f8 13 8e d8 01 00 	vmovlps QWORD PTR [rsi+0x1d8],xmm1
  a029e6:	00 
  a029e7:	c5 fc 11 be a8 01 00 	vmovups YMMWORD PTR [rsi+0x1a8],ymm7
  a029ee:	00 
  a029ef:	62 61 7c 48 11 96 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm26
  a029f6:	01 00 00 
  a029f9:	62 63 7d 48 19 66 24 	vextractf32x4 XMMWORD PTR [rsi+0x240],zmm28,0x3
  a02a00:	03 
  a02a01:	62 63 7d 48 19 d9 03 	vextractf32x4 xmm1,zmm27,0x3
  a02a08:	c5 f8 13 8e 50 02 00 	vmovlps QWORD PTR [rsi+0x250],xmm1
  a02a0f:	00 
  a02a10:	c5 fc 11 b6 20 02 00 	vmovups YMMWORD PTR [rsi+0x220],ymm6
  a02a17:	00 
  a02a18:	62 61 7c 48 11 8e 58 	vmovups ZMMWORD PTR [rsi+0x258],zmm25
  a02a1f:	02 00 00 
  a02a22:	62 63 7d 48 19 b6 b8 	vextractf32x4 XMMWORD PTR [rsi+0x2b8],zmm30,0x3
  a02a29:	02 00 00 03 
  a02a2d:	62 63 7d 48 19 e9 03 	vextractf32x4 xmm1,zmm29,0x3
  a02a34:	c5 f8 13 8e c8 02 00 	vmovlps QWORD PTR [rsi+0x2c8],xmm1
  a02a3b:	00 
  a02a3c:	c5 fc 11 9e 98 02 00 	vmovups YMMWORD PTR [rsi+0x298],ymm3
  a02a43:	00 
  a02a44:	62 e1 7c 48 11 9e d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm19
  a02a4b:	02 00 00 
  a02a4e:	62 73 7d 48 19 66 33 	vextractf32x4 XMMWORD PTR [rsi+0x330],zmm12,0x3
  a02a55:	03 
  a02a56:	62 63 7d 48 19 f9 03 	vextractf32x4 xmm1,zmm31,0x3
  a02a5d:	c5 f8 13 8e 40 03 00 	vmovlps QWORD PTR [rsi+0x340],xmm1
  a02a64:	00 
  a02a65:	c5 fc 11 96 10 03 00 	vmovups YMMWORD PTR [rsi+0x310],ymm2
  a02a6c:	00 
  a02a6d:	62 f1 7c 48 11 a6 48 	vmovups ZMMWORD PTR [rsi+0x348],zmm4
  a02a74:	03 00 00 
  a02a77:	62 73 7d 48 19 9e a8 	vextractf32x4 XMMWORD PTR [rsi+0x3a8],zmm11,0x3
  a02a7e:	03 00 00 03 
  a02a82:	62 73 7d 48 19 e9 03 	vextractf32x4 xmm1,zmm13,0x3
  a02a89:	c5 f8 13 8e b8 03 00 	vmovlps QWORD PTR [rsi+0x3b8],xmm1
  a02a90:	00 
  a02a91:	c5 fc 11 86 88 03 00 	vmovups YMMWORD PTR [rsi+0x388],ymm0
  a02a98:	00 
  a02a99:	48 81 c4 08 05 00 00 	add    rsp,0x508
  a02aa0:	c5 f8 77             	vzeroupper
  a02aa3:	c3                   	ret
