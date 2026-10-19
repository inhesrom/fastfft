
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a3e980 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a3e980:	48 81 ec 48 04 00 00 	sub    rsp,0x448
  a3e987:	62 f1 7c 48 10 1f    	vmovups zmm3,ZMMWORD PTR [rdi]
  a3e98d:	c5 f8 10 4f 40       	vmovups xmm1,XMMWORD PTR [rdi+0x40]
  a3e992:	62 f1 7c 48 28 15 a4 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6531a4]        # 91b40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1eff0>
  a3e999:	31 65 ff 
  a3e99c:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a3e9a2:	62 f2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm1
  a3e9a8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a3e9af:	01 
  a3e9b0:	62 f1 7c 48 28 05 c6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6531c6]        # 91b80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f030>
  a3e9b7:	31 65 ff 
  a3e9ba:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a3e9c0:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a3e9c7:	ff 
  a3e9c8:	62 f1 7c 48 10 a7 50 	vmovups zmm4,ZMMWORD PTR [rdi+0x50]
  a3e9cf:	00 00 00 
  a3e9d2:	c5 f8 10 8f 90 00 00 	vmovups xmm1,XMMWORD PTR [rdi+0x90]
  a3e9d9:	00 
  a3e9da:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a3e9e0:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a3e9e6:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a3e9ec:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm3
  a3e9f3:	08 
  a3e9f4:	62 f2 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm1
  a3e9fa:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a3ea00:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm4
  a3ea07:	07 
  a3ea08:	62 f1 7c 48 10 9f a0 	vmovups zmm3,ZMMWORD PTR [rdi+0xa0]
  a3ea0f:	00 00 00 
  a3ea12:	c5 f8 10 8f e0 00 00 	vmovups xmm1,XMMWORD PTR [rdi+0xe0]
  a3ea19:	00 
  a3ea1a:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a3ea20:	62 f2 6d 48 7f e1    	vpermt2ps zmm4,zmm2,zmm1
  a3ea26:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm4
  a3ea2d:	02 
  a3ea2e:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a3ea34:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a3ea3b:	fe 
  a3ea3c:	62 e1 7c 48 10 b7 f0 	vmovups zmm22,ZMMWORD PTR [rdi+0xf0]
  a3ea43:	00 00 00 
  a3ea46:	c5 f8 10 8f 30 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x130]
  a3ea4d:	00 
  a3ea4e:	62 b1 7c 48 28 de    	vmovaps zmm3,zmm22
  a3ea54:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a3ea5a:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm3
  a3ea61:	0f 
  a3ea62:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a3ea68:	62 f1 7c 48 10 5f 05 	vmovups zmm3,ZMMWORD PTR [rdi+0x140]
  a3ea6f:	c5 f8 10 8f 80 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x180]
  a3ea76:	00 
  a3ea77:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a3ea7d:	62 f2 6d 48 7f e1    	vpermt2ps zmm4,zmm2,zmm1
  a3ea83:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm4
  a3ea8a:	05 
  a3ea8b:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a3ea91:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm3
  a3ea98:	06 
  a3ea99:	62 e1 7c 48 10 87 90 	vmovups zmm16,ZMMWORD PTR [rdi+0x190]
  a3eaa0:	01 00 00 
  a3eaa3:	c5 f8 10 8f d0 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x1d0]
  a3eaaa:	00 
  a3eaab:	62 b1 7c 48 28 d8    	vmovaps zmm3,zmm16
  a3eab1:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a3eab7:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a3eabd:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm3
  a3eac4:	0a 
  a3eac5:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a3eacb:	62 e1 7c 48 10 a7 e0 	vmovups zmm20,ZMMWORD PTR [rdi+0x1e0]
  a3ead2:	01 00 00 
  a3ead5:	c5 f8 10 8f 20 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x220]
  a3eadc:	00 
  a3eadd:	62 b1 7c 48 28 dc    	vmovaps zmm3,zmm20
  a3eae3:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a3eae9:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm3
  a3eaf0:	04 
  a3eaf1:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a3eaf7:	62 e1 7c 48 10 8f 30 	vmovups zmm17,ZMMWORD PTR [rdi+0x230]
  a3eafe:	02 00 00 
  a3eb01:	c5 f8 10 8f 70 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x270]
  a3eb08:	00 
  a3eb09:	62 31 7c 48 28 f9    	vmovaps zmm15,zmm17
  a3eb0f:	62 72 6d 48 7f f9    	vpermt2ps zmm15,zmm2,zmm1
  a3eb15:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a3eb1b:	62 e1 7c 48 10 57 0a 	vmovups zmm18,ZMMWORD PTR [rdi+0x280]
  a3eb22:	c5 f8 10 8f c0 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x2c0]
  a3eb29:	00 
  a3eb2a:	62 b1 7c 48 28 da    	vmovaps zmm3,zmm18
  a3eb30:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a3eb36:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm3
  a3eb3d:	03 
  a3eb3e:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a3eb44:	62 e1 7c 48 10 bf d0 	vmovups zmm23,ZMMWORD PTR [rdi+0x2d0]
  a3eb4b:	02 00 00 
  a3eb4e:	c5 f8 10 8f 10 03 00 	vmovups xmm1,XMMWORD PTR [rdi+0x310]
  a3eb55:	00 
  a3eb56:	62 b1 7c 48 28 df    	vmovaps zmm3,zmm23
  a3eb5c:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a3eb62:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a3eb68:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm3
  a3eb6f:	09 
  a3eb70:	62 e2 7d 48 7f f9    	vpermt2ps zmm23,zmm0,zmm1
  a3eb76:	62 e1 7c 48 10 9f 20 	vmovups zmm19,ZMMWORD PTR [rdi+0x320]
  a3eb7d:	03 00 00 
  a3eb80:	c5 f8 10 8f 60 03 00 	vmovups xmm1,XMMWORD PTR [rdi+0x360]
  a3eb87:	00 
  a3eb88:	62 b1 7c 48 28 db    	vmovaps zmm3,zmm19
  a3eb8e:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a3eb94:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a3eb9b:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a3eba1:	62 61 7c 48 10 8f 70 	vmovups zmm25,ZMMWORD PTR [rdi+0x370]
  a3eba8:	03 00 00 
  a3ebab:	c5 f8 10 8f b0 03 00 	vmovups xmm1,XMMWORD PTR [rdi+0x3b0]
  a3ebb2:	00 
  a3ebb3:	62 01 7c 48 28 c1    	vmovaps zmm24,zmm25
  a3ebb9:	62 62 6d 48 7f c1    	vpermt2ps zmm24,zmm2,zmm1
  a3ebbf:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a3ebc5:	62 e1 7c 48 10 6f 0f 	vmovups zmm21,ZMMWORD PTR [rdi+0x3c0]
  a3ebcc:	c5 f8 10 8f 00 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x400]
  a3ebd3:	00 
  a3ebd4:	62 21 7c 48 28 d5    	vmovaps zmm26,zmm21
  a3ebda:	62 62 6d 48 7f d1    	vpermt2ps zmm26,zmm2,zmm1
  a3ebe0:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a3ebe6:	62 61 7c 48 10 bf 10 	vmovups zmm31,ZMMWORD PTR [rdi+0x410]
  a3ebed:	04 00 00 
  a3ebf0:	c5 f8 10 8f 50 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x450]
  a3ebf7:	00 
  a3ebf8:	62 01 7c 48 28 f7    	vmovaps zmm30,zmm31
  a3ebfe:	62 62 6d 48 7f f1    	vpermt2ps zmm30,zmm2,zmm1
  a3ec04:	62 62 7d 48 7f f9    	vpermt2ps zmm31,zmm0,zmm1
  a3ec0a:	62 61 7c 48 10 a7 60 	vmovups zmm28,ZMMWORD PTR [rdi+0x460]
  a3ec11:	04 00 00 
  a3ec14:	c5 f8 10 8f a0 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x4a0]
  a3ec1b:	00 
  a3ec1c:	62 01 7c 48 28 ec    	vmovaps zmm29,zmm28
  a3ec22:	62 62 6d 48 7f e9    	vpermt2ps zmm29,zmm2,zmm1
  a3ec28:	62 62 7d 48 7f e1    	vpermt2ps zmm28,zmm0,zmm1
  a3ec2e:	62 71 7c 48 10 97 b0 	vmovups zmm10,ZMMWORD PTR [rdi+0x4b0]
  a3ec35:	04 00 00 
  a3ec38:	c5 f8 10 8f f0 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x4f0]
  a3ec3f:	00 
  a3ec40:	62 f2 2d 48 77 d1    	vpermi2ps zmm2,zmm10,zmm1
  a3ec46:	62 72 7d 48 7f d1    	vpermt2ps zmm10,zmm0,zmm1
  a3ec4c:	62 31 4c 48 5c f7    	vsubps zmm14,zmm6,zmm23
  a3ec52:	62 11 5c 48 5c ee    	vsubps zmm13,zmm4,zmm30
  a3ec58:	62 d1 0c 48 58 fd    	vaddps zmm7,zmm14,zmm13
  a3ec5e:	62 51 54 48 5c e0    	vsubps zmm12,zmm5,zmm8
  a3ec64:	62 31 04 40 5c d8    	vsubps zmm11,zmm31,zmm16
  a3ec6a:	62 51 24 48 58 cc    	vaddps zmm9,zmm11,zmm12
  a3ec70:	62 72 7d 48 18 05 ea 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff6369ea]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a3ec77:	69 63 ff 
  a3ec7a:	62 d1 34 48 59 c0    	vmulps zmm0,zmm9,zmm8
  a3ec80:	62 f2 7d 48 18 35 76 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff636a76]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a3ec87:	6a 63 ff 
  a3ec8a:	62 f2 45 48 b8 c6    	vfmadd231ps zmm0,zmm7,zmm6
  a3ec90:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a3ec97:	10 
  a3ec98:	62 f1 34 48 59 c6    	vmulps zmm0,zmm9,zmm6
  a3ec9e:	62 f2 3d 48 bc c7    	vfnmadd231ps zmm0,zmm8,zmm7
  a3eca4:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a3ecab:	0e 
  a3ecac:	62 91 4c 40 5c e9    	vsubps zmm5,zmm22,zmm25
  a3ecb2:	62 f1 04 48 5c e2    	vsubps zmm4,zmm15,zmm2
  a3ecb8:	62 f1 54 48 58 c4    	vaddps zmm0,zmm5,zmm4
  a3ecbe:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x3c0]
  a3ecc5:	0f 
  a3ecc6:	62 91 34 48 5c d8    	vsubps zmm3,zmm9,zmm24
  a3eccc:	62 b1 2c 48 5c c9    	vsubps zmm1,zmm10,zmm17
  a3ecd2:	62 f1 74 48 58 fb    	vaddps zmm7,zmm1,zmm3
  a3ecd8:	62 61 44 48 59 de    	vmulps zmm27,zmm7,zmm6
  a3ecde:	62 42 7d 48 b8 d8    	vfmadd231ps zmm27,zmm0,zmm8
  a3ece4:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm27
  a3eceb:	0d 
  a3ecec:	62 41 44 48 59 d8    	vmulps zmm27,zmm7,zmm8
  a3ecf2:	62 62 4d 48 bc d8    	vfnmadd231ps zmm27,zmm6,zmm0
  a3ecf8:	62 d1 0c 48 5c c5    	vsubps zmm0,zmm14,zmm13
  a3ecfe:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a3ed04:	62 f1 54 48 5c ec    	vsubps zmm5,zmm5,zmm4
  a3ed0a:	62 71 64 48 5c e1    	vsubps zmm12,zmm3,zmm1
  a3ed10:	62 f1 24 48 59 ce    	vmulps zmm1,zmm11,zmm6
  a3ed16:	62 d2 7d 48 b8 c8    	vfmadd231ps zmm1,zmm0,zmm8
  a3ed1c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm1
  a3ed23:	0c 
  a3ed24:	62 d1 24 48 59 e0    	vmulps zmm4,zmm11,zmm8
  a3ed2a:	62 f2 4d 48 bc e0    	vfnmadd231ps zmm4,zmm6,zmm0
  a3ed30:	62 d1 1c 48 59 c0    	vmulps zmm0,zmm12,zmm8
  a3ed36:	62 f2 55 48 b8 c6    	vfmadd231ps zmm0,zmm5,zmm6
  a3ed3c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a3ed43:	0b 
  a3ed44:	62 d1 54 48 59 d8    	vmulps zmm3,zmm5,zmm8
  a3ed4a:	62 f2 1d 48 bc de    	vfnmadd231ps zmm3,zmm12,zmm6
  a3ed50:	62 f1 44 40 58 6c 24 	vaddps zmm5,zmm23,ZMMWORD PTR [rsp+0x1c0]
  a3ed57:	07 
  a3ed58:	62 91 7c 40 58 f7    	vaddps zmm6,zmm16,zmm31
  a3ed5e:	62 11 4c 40 58 c1    	vaddps zmm8,zmm22,zmm25
  a3ed64:	62 51 74 40 58 d2    	vaddps zmm10,zmm17,zmm10
  a3ed6a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x200]
  a3ed71:	08 
  a3ed72:	62 71 7c 48 58 5c 24 	vaddps zmm11,zmm0,ZMMWORD PTR [rsp+0x240]
  a3ed79:	09 
  a3ed7a:	62 71 0c 40 58 64 24 	vaddps zmm12,zmm30,ZMMWORD PTR [rsp+0x280]
  a3ed81:	0a 
  a3ed82:	62 11 34 48 58 e8    	vaddps zmm13,zmm9,zmm24
  a3ed88:	62 f1 04 48 58 d2    	vaddps zmm2,zmm15,zmm2
  a3ed8e:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a3ed95:	ff 
  a3ed96:	62 31 7c 48 58 f2    	vaddps zmm14,zmm0,zmm18
  a3ed9c:	62 a1 7c 48 5c c2    	vsubps zmm16,zmm0,zmm18
  a3eda2:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a3eda9:	05 
  a3edaa:	62 81 7c 48 58 ca    	vaddps zmm17,zmm0,zmm26
  a3edb0:	62 81 7c 48 5c d2    	vsubps zmm18,zmm0,zmm26
  a3edb6:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a3edbd:	fe 
  a3edbe:	62 a1 7c 48 58 f3    	vaddps zmm22,zmm0,zmm19
  a3edc4:	62 a1 7c 48 5c db    	vsubps zmm19,zmm0,zmm19
  a3edca:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a3edd1:	02 
  a3edd2:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a3edd9:	62 e1 7c 48 58 f9    	vaddps zmm23,zmm0,zmm1
  a3eddf:	62 61 7c 48 5c c1    	vsubps zmm24,zmm0,zmm1
  a3ede5:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a3edec:	04 
  a3eded:	62 01 7c 48 58 cd    	vaddps zmm25,zmm0,zmm29
  a3edf3:	62 01 7c 48 5c d5    	vsubps zmm26,zmm0,zmm29
  a3edf9:	62 01 5c 40 58 ec    	vaddps zmm29,zmm20,zmm28
  a3edff:	62 81 5c 40 5c e4    	vsubps zmm20,zmm20,zmm28
  a3ee05:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a3ee0c:	03 
  a3ee0d:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a3ee14:	01 
  a3ee15:	62 61 74 48 58 e0    	vaddps zmm28,zmm1,zmm0
  a3ee1b:	62 61 74 48 5c f0    	vsubps zmm30,zmm1,zmm0
  a3ee21:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a3ee28:	06 
  a3ee29:	62 21 7c 48 58 fd    	vaddps zmm31,zmm0,zmm21
  a3ee2f:	62 e1 54 40 5c e8    	vsubps zmm21,zmm21,zmm0
  a3ee35:	62 91 64 40 58 c0    	vaddps zmm0,zmm19,zmm24
  a3ee3b:	62 a1 3c 40 5c db    	vsubps zmm19,zmm24,zmm19
  a3ee41:	62 21 2c 40 5c c4    	vsubps zmm24,zmm26,zmm20
  a3ee47:	62 81 5c 40 58 e2    	vaddps zmm20,zmm20,zmm26
  a3ee4d:	62 01 0c 48 58 d7    	vaddps zmm26,zmm14,zmm31
  a3ee53:	62 11 0c 48 5c ff    	vsubps zmm15,zmm14,zmm31
  a3ee59:	62 01 44 40 58 f9    	vaddps zmm31,zmm23,zmm25
  a3ee5f:	62 81 44 40 5c f9    	vsubps zmm23,zmm23,zmm25
  a3ee65:	62 61 54 48 58 ce    	vaddps zmm25,zmm5,zmm6
  a3ee6b:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a3ee71:	62 d1 24 48 58 f4    	vaddps zmm6,zmm11,zmm12
  a3ee77:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a3ee7d:	62 71 14 48 58 e2    	vaddps zmm12,zmm13,zmm2
  a3ee83:	62 f1 14 48 5c d2    	vsubps zmm2,zmm13,zmm2
  a3ee89:	62 51 3c 48 58 ea    	vaddps zmm13,zmm8,zmm10
  a3ee8f:	62 51 3c 48 5c c2    	vsubps zmm8,zmm8,zmm10
  a3ee95:	62 31 1c 40 58 d1    	vaddps zmm10,zmm28,zmm17
  a3ee9b:	62 b1 1c 40 5c f9    	vsubps zmm7,zmm28,zmm17
  a3eea1:	62 01 4c 40 58 e5    	vaddps zmm28,zmm22,zmm29
  a3eea7:	62 a1 14 40 5c f6    	vsubps zmm22,zmm29,zmm22
  a3eead:	62 41 54 48 58 eb    	vaddps zmm29,zmm5,zmm11
  a3eeb3:	62 f1 24 48 5c ed    	vsubps zmm5,zmm11,zmm5
  a3eeb9:	62 51 6c 48 5c d8    	vsubps zmm11,zmm2,zmm8
  a3eebf:	62 f1 3c 48 58 d2    	vaddps zmm2,zmm8,zmm2
  a3eec5:	62 72 7d 48 18 05 cd 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff6364cd]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a3eecc:	64 63 ff 
  a3eecf:	62 d1 7c 48 59 c0    	vmulps zmm0,zmm0,zmm8
  a3eed5:	62 41 3c 40 59 c0    	vmulps zmm24,zmm24,zmm8
  a3eedb:	62 c1 64 40 59 d8    	vmulps zmm19,zmm19,zmm8
  a3eee1:	62 c1 5c 40 59 e0    	vmulps zmm20,zmm20,zmm8
  a3eee7:	62 41 14 40 59 e8    	vmulps zmm29,zmm29,zmm8
  a3eeed:	62 51 24 48 59 d8    	vmulps zmm11,zmm11,zmm8
  a3eef3:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a3eef9:	62 d1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm8
  a3eeff:	62 31 7c 40 58 c2    	vaddps zmm8,zmm16,zmm18
  a3ef05:	62 a1 7c 40 5c c2    	vsubps zmm16,zmm16,zmm18
  a3ef0b:	62 a1 64 40 5c d4    	vsubps zmm18,zmm19,zmm20
  a3ef11:	62 a1 64 40 58 dc    	vaddps zmm19,zmm19,zmm20
  a3ef17:	62 81 54 40 58 e6    	vaddps zmm20,zmm21,zmm30
  a3ef1d:	62 a1 0c 40 5c ed    	vsubps zmm21,zmm30,zmm21
  a3ef23:	62 01 7c 48 58 f0    	vaddps zmm30,zmm0,zmm24
  a3ef29:	62 f1 3c 40 5c c8    	vsubps zmm1,zmm24,zmm0
  a3ef2f:	62 01 2c 40 58 c4    	vaddps zmm24,zmm26,zmm28
  a3ef35:	62 91 2c 40 5c c4    	vsubps zmm0,zmm26,zmm28
  a3ef3b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a3ef42:	ff 
  a3ef43:	62 41 4c 48 58 e4    	vaddps zmm28,zmm6,zmm12
  a3ef49:	62 d1 4c 48 5c c4    	vsubps zmm0,zmm6,zmm12
  a3ef4f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a3ef56:	fe 
  a3ef57:	62 91 2c 48 58 f7    	vaddps zmm6,zmm10,zmm31
  a3ef5d:	62 91 2c 48 5c c7    	vsubps zmm0,zmm10,zmm31
  a3ef63:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a3ef6a:	01 
  a3ef6b:	62 51 34 40 58 d5    	vaddps zmm10,zmm25,zmm13
  a3ef71:	62 91 14 48 5c c1    	vsubps zmm0,zmm13,zmm25
  a3ef77:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a3ef7e:	62 01 3c 48 58 ce    	vaddps zmm25,zmm8,zmm30
  a3ef84:	62 01 3c 48 5c fe    	vsubps zmm31,zmm8,zmm30
  a3ef8a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x380]
  a3ef91:	0e 
  a3ef92:	62 11 7c 48 58 c3    	vaddps zmm8,zmm0,zmm27
  a3ef98:	62 01 7c 48 5c f3    	vsubps zmm30,zmm0,zmm27
  a3ef9e:	62 31 5c 40 58 ca    	vaddps zmm9,zmm20,zmm18
  a3efa4:	62 21 5c 40 5c da    	vsubps zmm27,zmm20,zmm18
  a3efaa:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x400]
  a3efb1:	10 
  a3efb2:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x340]
  a3efb9:	0d 
  a3efba:	62 c1 7c 48 58 d4    	vaddps zmm18,zmm0,zmm12
  a3efc0:	62 61 1c 48 5c d0    	vsubps zmm26,zmm12,zmm0
  a3efc6:	62 a1 04 48 58 e7    	vaddps zmm20,zmm15,zmm23
  a3efcc:	62 a1 04 48 5c cf    	vsubps zmm17,zmm15,zmm23
  a3efd2:	62 e1 54 48 5c fa    	vsubps zmm23,zmm5,zmm2
  a3efd8:	62 71 54 48 58 fa    	vaddps zmm15,zmm5,zmm2
  a3efde:	62 f1 4c 40 58 ef    	vaddps zmm5,zmm22,zmm7
  a3efe4:	62 a1 44 48 5c f6    	vsubps zmm22,zmm7,zmm22
  a3efea:	62 d1 14 40 58 c3    	vaddps zmm0,zmm29,zmm11
  a3eff0:	62 11 24 48 5c f5    	vsubps zmm14,zmm11,zmm29
  a3eff6:	62 31 7c 40 58 db    	vaddps zmm11,zmm16,zmm19
  a3effc:	62 31 7c 40 5c eb    	vsubps zmm13,zmm16,zmm19
  a3f002:	62 e1 5c 48 58 db    	vaddps zmm19,zmm4,zmm3
  a3f008:	62 71 5c 48 5c e3    	vsubps zmm12,zmm4,zmm3
  a3f00e:	62 f1 54 40 58 d9    	vaddps zmm3,zmm21,zmm1
  a3f014:	62 f1 54 40 5c f9    	vsubps zmm7,zmm21,zmm1
  a3f01a:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x300]
  a3f021:	0c 
  a3f022:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x2c0]
  a3f029:	0b 
  a3f02a:	62 e1 74 48 5c ea    	vsubps zmm21,zmm1,zmm2
  a3f030:	62 f1 74 48 58 d2    	vaddps zmm2,zmm1,zmm2
  a3f036:	62 d1 3c 40 58 ca    	vaddps zmm1,zmm24,zmm10
  a3f03c:	62 41 3c 40 5c c2    	vsubps zmm24,zmm24,zmm10
  a3f042:	62 91 4c 48 58 e4    	vaddps zmm4,zmm6,zmm28
  a3f048:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm4
  a3f04f:	06 
  a3f050:	62 01 4c 48 5c ec    	vsubps zmm29,zmm6,zmm28
  a3f056:	62 21 34 40 58 e2    	vaddps zmm28,zmm25,zmm18
  a3f05c:	62 31 34 40 5c d2    	vsubps zmm10,zmm25,zmm18
  a3f062:	62 d1 34 48 58 e0    	vaddps zmm4,zmm9,zmm8
  a3f068:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm4
  a3f06f:	02 
  a3f070:	62 d1 34 48 5c e0    	vsubps zmm4,zmm9,zmm8
  a3f076:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm4
  a3f07d:	04 
  a3f07e:	62 f1 5c 40 58 e0    	vaddps zmm4,zmm20,zmm0
  a3f084:	62 71 5c 40 5c c8    	vsubps zmm9,zmm20,zmm0
  a3f08a:	62 a1 54 48 58 c7    	vaddps zmm16,zmm5,zmm23
  a3f090:	62 a1 54 48 5c d7    	vsubps zmm18,zmm5,zmm23
  a3f096:	62 b1 24 48 58 c5    	vaddps zmm0,zmm11,zmm21
  a3f09c:	62 31 24 48 5c c5    	vsubps zmm8,zmm11,zmm21
  a3f0a2:	62 31 64 48 58 db    	vaddps zmm11,zmm3,zmm19
  a3f0a8:	62 b1 64 48 5c db    	vsubps zmm3,zmm3,zmm19
  a3f0ae:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm3
  a3f0b5:	03 
  a3f0b6:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x40]
  a3f0bd:	ff 
  a3f0be:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp-0x80]
  a3f0c5:	fe 
  a3f0c6:	62 f1 64 48 58 f5    	vaddps zmm6,zmm3,zmm5
  a3f0cc:	62 f1 64 48 5c dd    	vsubps zmm3,zmm3,zmm5
  a3f0d2:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x40]
  a3f0d9:	01 
  a3f0da:	62 e1 7c 48 10 24 24 	vmovups zmm20,ZMMWORD PTR [rsp]
  a3f0e1:	62 b1 5c 40 58 eb    	vaddps zmm5,zmm20,zmm19
  a3f0e7:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm5
  a3f0ee:	05 
  a3f0ef:	62 b1 64 40 5c ec    	vsubps zmm5,zmm19,zmm20
  a3f0f5:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm5
  a3f0fc:	01 
  a3f0fd:	62 01 04 40 58 ce    	vaddps zmm25,zmm31,zmm30
  a3f103:	62 01 04 40 5c f6    	vsubps zmm30,zmm31,zmm30
  a3f109:	62 91 24 40 58 ea    	vaddps zmm5,zmm27,zmm26
  a3f10f:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm5
  a3f116:	fe 
  a3f117:	62 81 24 40 5c ea    	vsubps zmm21,zmm27,zmm26
  a3f11d:	62 41 74 40 58 df    	vaddps zmm27,zmm17,zmm15
  a3f123:	62 51 74 40 5c ff    	vsubps zmm15,zmm17,zmm15
  a3f129:	62 c1 4c 40 58 e6    	vaddps zmm20,zmm22,zmm14
  a3f12f:	62 c1 4c 40 5c f6    	vsubps zmm22,zmm22,zmm14
  a3f135:	62 c1 14 48 58 cc    	vaddps zmm17,zmm13,zmm12
  a3f13b:	62 51 14 48 5c e4    	vsubps zmm12,zmm13,zmm12
  a3f141:	62 71 44 48 5c ea    	vsubps zmm13,zmm7,zmm2
  a3f147:	62 f1 44 48 58 d2    	vaddps zmm2,zmm7,zmm2
  a3f14d:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a3f154:	ff 
  a3f155:	62 71 7c 48 28 35 21 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff687e21]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3f15c:	7e 68 ff 
  a3f15f:	62 61 7c 48 28 d1    	vmovaps zmm26,zmm1
  a3f165:	62 02 0d 48 7f d0    	vpermt2ps zmm26,zmm14,zmm24
  a3f16b:	62 e1 7c 48 28 3d 4b 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff687e4b]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a3f172:	7e 68 ff 
  a3f175:	62 92 45 40 7f c8    	vpermt2ps zmm1,zmm23,zmm24
  a3f17b:	62 91 7c 48 28 d4    	vmovaps zmm2,zmm28
  a3f181:	62 d2 0d 48 7f d2    	vpermt2ps zmm2,zmm14,zmm10
  a3f187:	62 42 45 40 7f e2    	vpermt2ps zmm28,zmm23,zmm10
  a3f18d:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a3f193:	62 52 0d 48 7f d1    	vpermt2ps zmm10,zmm14,zmm9
  a3f199:	62 d2 45 40 7f e1    	vpermt2ps zmm4,zmm23,zmm9
  a3f19f:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a3f1a5:	62 d2 0d 48 7f e8    	vpermt2ps zmm5,zmm14,zmm8
  a3f1ab:	62 d2 45 40 7f c0    	vpermt2ps zmm0,zmm23,zmm8
  a3f1b1:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a3f1b7:	62 72 0d 48 7f c3    	vpermt2ps zmm8,zmm14,zmm3
  a3f1bd:	62 f2 45 40 7f f3    	vpermt2ps zmm6,zmm23,zmm3
  a3f1c3:	62 91 7c 48 28 d9    	vmovaps zmm3,zmm25
  a3f1c9:	62 92 0d 48 7f de    	vpermt2ps zmm3,zmm14,zmm30
  a3f1cf:	62 02 45 40 7f ce    	vpermt2ps zmm25,zmm23,zmm30
  a3f1d5:	62 11 7c 48 28 cb    	vmovaps zmm9,zmm27
  a3f1db:	62 52 0d 48 7f cf    	vpermt2ps zmm9,zmm14,zmm15
  a3f1e1:	62 42 45 40 7f df    	vpermt2ps zmm27,zmm23,zmm15
  a3f1e7:	62 21 7c 48 28 f1    	vmovaps zmm30,zmm17
  a3f1ed:	62 42 0d 48 7f f4    	vpermt2ps zmm30,zmm14,zmm12
  a3f1f3:	62 c2 45 40 7f cc    	vpermt2ps zmm17,zmm23,zmm12
  a3f1f9:	62 71 7c 48 28 3d fd 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff687cfd]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a3f200:	7c 68 ff 
  a3f203:	62 11 7c 48 28 e2    	vmovaps zmm12,zmm26
  a3f209:	62 52 05 48 7f e0    	vpermt2ps zmm12,zmm15,zmm8
  a3f20f:	62 61 7c 48 28 05 27 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff687d27]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a3f216:	7d 68 ff 
  a3f219:	62 42 3d 40 7f d0    	vpermt2ps zmm26,zmm24,zmm8
  a3f21f:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a3f225:	62 72 05 48 7f c3    	vpermt2ps zmm8,zmm15,zmm3
  a3f22b:	62 f2 3d 40 7f d3    	vpermt2ps zmm2,zmm24,zmm3
  a3f231:	62 d1 7c 48 28 da    	vmovaps zmm3,zmm10
  a3f237:	62 d2 05 48 7f d9    	vpermt2ps zmm3,zmm15,zmm9
  a3f23d:	62 52 3d 40 7f d1    	vpermt2ps zmm10,zmm24,zmm9
  a3f243:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a3f249:	62 12 05 48 7f ce    	vpermt2ps zmm9,zmm15,zmm30
  a3f24f:	62 92 3d 40 7f ee    	vpermt2ps zmm5,zmm24,zmm30
  a3f255:	62 f2 05 48 7f ce    	vpermt2ps zmm1,zmm15,zmm6
  a3f25b:	62 02 05 48 7f e1    	vpermt2ps zmm28,zmm15,zmm25
  a3f261:	62 92 05 48 7f e3    	vpermt2ps zmm4,zmm15,zmm27
  a3f267:	62 f1 f5 48 14 cc    	vunpcklpd zmm1,zmm1,zmm4
  a3f26d:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a3f274:	62 b2 05 48 7f c1    	vpermt2ps zmm0,zmm15,zmm17
  a3f27a:	62 61 9d 40 14 e0    	vunpcklpd zmm28,zmm28,zmm0
  a3f280:	62 f1 9d 48 14 fb    	vunpcklpd zmm7,zmm12,zmm3
  a3f286:	62 e1 9d 48 15 db    	vunpckhpd zmm19,zmm12,zmm3
  a3f28c:	62 51 bd 48 14 e1    	vunpcklpd zmm12,zmm8,zmm9
  a3f292:	62 41 bd 48 15 f9    	vunpckhpd zmm31,zmm8,zmm9
  a3f298:	62 51 ad 40 14 ca    	vunpcklpd zmm9,zmm26,zmm10
  a3f29e:	62 d1 ad 40 15 f2    	vunpckhpd zmm6,zmm26,zmm10
  a3f2a4:	62 61 ed 48 14 d5    	vunpcklpd zmm26,zmm2,zmm5
  a3f2aa:	62 61 ed 48 15 cd    	vunpckhpd zmm25,zmm2,zmm5
  a3f2b0:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a3f2b7:	06 
  a3f2b8:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a3f2be:	62 02 0d 48 7f dd    	vpermt2ps zmm27,zmm14,zmm29
  a3f2c4:	62 92 45 40 7f c5    	vpermt2ps zmm0,zmm23,zmm29
  a3f2ca:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a3f2d0:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a3f2d7:	02 
  a3f2d8:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a3f2de:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a3f2e5:	04 
  a3f2e6:	62 62 0d 48 7f e9    	vpermt2ps zmm29,zmm14,zmm1
  a3f2ec:	62 f2 45 40 7f c1    	vpermt2ps zmm0,zmm23,zmm1
  a3f2f2:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a3f2f8:	62 21 7c 48 28 f0    	vmovaps zmm30,zmm16
  a3f2fe:	62 22 0d 48 7f f2    	vpermt2ps zmm30,zmm14,zmm18
  a3f304:	62 a2 45 40 7f c2    	vpermt2ps zmm16,zmm23,zmm18
  a3f30a:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a3f310:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a3f317:	03 
  a3f318:	62 e2 0d 48 7f d0    	vpermt2ps zmm18,zmm14,zmm0
  a3f31e:	62 72 45 40 7f d8    	vpermt2ps zmm11,zmm23,zmm0
  a3f324:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x140]
  a3f32b:	05 
  a3f32c:	62 f1 7c 48 28 d4    	vmovaps zmm2,zmm4
  a3f332:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x40]
  a3f339:	01 
  a3f33a:	62 f2 0d 48 7f d3    	vpermt2ps zmm2,zmm14,zmm3
  a3f340:	62 f2 45 40 7f e3    	vpermt2ps zmm4,zmm23,zmm3
  a3f346:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x80]
  a3f34d:	fe 
  a3f34e:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a3f354:	62 b2 0d 48 7f ed    	vpermt2ps zmm5,zmm14,zmm21
  a3f35a:	62 b2 45 40 7f dd    	vpermt2ps zmm3,zmm23,zmm21
  a3f360:	62 31 7c 48 28 c4    	vmovaps zmm8,zmm20
  a3f366:	62 32 0d 48 7f c6    	vpermt2ps zmm8,zmm14,zmm22
  a3f36c:	62 a2 45 40 7f e6    	vpermt2ps zmm20,zmm23,zmm22
  a3f372:	62 e1 7c 48 28 0d 84 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff687a84]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3f379:	7a 68 ff 
  a3f37c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a3f383:	ff 
  a3f384:	62 72 15 48 77 f0    	vpermi2ps zmm14,zmm13,zmm0
  a3f38a:	62 72 45 40 7f e8    	vpermt2ps zmm13,zmm23,zmm0
  a3f390:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a3f396:	62 d2 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm12
  a3f39c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a3f3a3:	ff 
  a3f3a4:	62 e1 7c 48 28 2d 92 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff687a92]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a3f3ab:	7a 68 ff 
  a3f3ae:	62 d2 55 40 7f fc    	vpermt2ps zmm7,zmm21,zmm12
  a3f3b4:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm7
  a3f3bb:	fe 
  a3f3bc:	62 a1 7c 48 28 f3    	vmovaps zmm22,zmm19
  a3f3c2:	62 82 75 40 7f f7    	vpermt2ps zmm22,zmm17,zmm31
  a3f3c8:	62 82 55 40 7f df    	vpermt2ps zmm19,zmm21,zmm31
  a3f3ce:	62 21 7c 48 28 fb    	vmovaps zmm31,zmm19
  a3f3d4:	62 c1 7c 48 28 d9    	vmovaps zmm19,zmm9
  a3f3da:	62 82 75 40 7f da    	vpermt2ps zmm19,zmm17,zmm26
  a3f3e0:	62 12 55 40 7f ca    	vpermt2ps zmm9,zmm21,zmm26
  a3f3e6:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm9
  a3f3ed:	02 
  a3f3ee:	62 61 7c 48 28 d6    	vmovaps zmm26,zmm6
  a3f3f4:	62 02 75 40 7f d1    	vpermt2ps zmm26,zmm17,zmm25
  a3f3fa:	62 92 55 40 7f f1    	vpermt2ps zmm6,zmm21,zmm25
  a3f400:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a3f407:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a3f40d:	62 02 75 40 7f cc    	vpermt2ps zmm25,zmm17,zmm28
  a3f413:	62 92 55 40 7f c4    	vpermt2ps zmm0,zmm21,zmm28
  a3f419:	62 91 7c 48 28 fb    	vmovaps zmm7,zmm27
  a3f41f:	62 f2 05 48 7f fa    	vpermt2ps zmm7,zmm15,zmm2
  a3f425:	62 62 3d 40 7f da    	vpermt2ps zmm27,zmm24,zmm2
  a3f42b:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  a3f431:	62 f2 05 48 7f d5    	vpermt2ps zmm2,zmm15,zmm5
  a3f437:	62 62 3d 40 7f ed    	vpermt2ps zmm29,zmm24,zmm5
  a3f43d:	62 91 7c 48 28 ee    	vmovaps zmm5,zmm30
  a3f443:	62 d2 05 48 7f e8    	vpermt2ps zmm5,zmm15,zmm8
  a3f449:	62 42 3d 40 7f f0    	vpermt2ps zmm30,zmm24,zmm8
  a3f44f:	62 31 7c 48 28 c2    	vmovaps zmm8,zmm18
  a3f455:	62 c2 3d 40 7f d6    	vpermt2ps zmm18,zmm24,zmm14
  a3f45b:	62 52 05 48 7f c6    	vpermt2ps zmm8,zmm15,zmm14
  a3f461:	62 72 05 48 7f d4    	vpermt2ps zmm10,zmm15,zmm4
  a3f467:	62 f2 05 48 7f cb    	vpermt2ps zmm1,zmm15,zmm3
  a3f46d:	62 a2 05 48 7f c4    	vpermt2ps zmm16,zmm15,zmm20
  a3f473:	62 31 ad 48 14 e0    	vunpcklpd zmm12,zmm10,zmm16
  a3f479:	62 52 05 48 7f dd    	vpermt2ps zmm11,zmm15,zmm13
  a3f47f:	62 51 f5 48 14 cb    	vunpcklpd zmm9,zmm1,zmm11
  a3f485:	62 71 c5 48 14 dd    	vunpcklpd zmm11,zmm7,zmm5
  a3f48b:	62 e1 c5 48 15 c5    	vunpckhpd zmm16,zmm7,zmm5
  a3f491:	62 d1 ed 48 14 e8    	vunpcklpd zmm5,zmm2,zmm8
  a3f497:	62 d1 ed 48 15 f8    	vunpckhpd zmm7,zmm2,zmm8
  a3f49d:	62 11 a5 40 14 c6    	vunpcklpd zmm8,zmm27,zmm30
  a3f4a3:	62 81 a5 40 15 e6    	vunpckhpd zmm20,zmm27,zmm30
  a3f4a9:	62 31 95 40 14 d2    	vunpcklpd zmm10,zmm29,zmm18
  a3f4af:	62 31 95 40 15 ea    	vunpckhpd zmm13,zmm29,zmm18
  a3f4b5:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a3f4bb:	62 f2 75 40 7f d5    	vpermt2ps zmm2,zmm17,zmm5
  a3f4c1:	62 72 55 40 7f dd    	vpermt2ps zmm11,zmm21,zmm5
  a3f4c7:	62 b1 7c 48 28 e8    	vmovaps zmm5,zmm16
  a3f4cd:	62 f2 75 40 7f ef    	vpermt2ps zmm5,zmm17,zmm7
  a3f4d3:	62 e2 55 40 7f c7    	vpermt2ps zmm16,zmm21,zmm7
  a3f4d9:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a3f4df:	62 d2 75 40 7f fa    	vpermt2ps zmm7,zmm17,zmm10
  a3f4e5:	62 52 55 40 7f c2    	vpermt2ps zmm8,zmm21,zmm10
  a3f4eb:	62 31 7c 48 28 f4    	vmovaps zmm14,zmm20
  a3f4f1:	62 52 75 40 7f f5    	vpermt2ps zmm14,zmm17,zmm13
  a3f4f7:	62 c2 55 40 7f e5    	vpermt2ps zmm20,zmm21,zmm13
  a3f4fd:	62 c2 1d 48 77 c9    	vpermi2ps zmm17,zmm12,zmm9
  a3f503:	62 52 55 40 7f e1    	vpermt2ps zmm12,zmm21,zmm9
  a3f509:	62 e1 7c 48 10 7a 02 	vmovups zmm23,ZMMWORD PTR [rdx+0x80]
  a3f510:	62 e1 7c 48 10 6a 03 	vmovups zmm21,ZMMWORD PTR [rdx+0xc0]
  a3f517:	62 71 7c 48 10 4a 04 	vmovups zmm9,ZMMWORD PTR [rdx+0x100]
  a3f51e:	62 61 7c 48 10 62 05 	vmovups zmm28,ZMMWORD PTR [rdx+0x140]
  a3f525:	62 51 4c 40 59 d1    	vmulps zmm10,zmm22,zmm9
  a3f52b:	62 12 55 48 bc d4    	vfnmadd231ps zmm10,zmm5,zmm28
  a3f531:	62 61 7c 48 10 6a 11 	vmovups zmm29,ZMMWORD PTR [rdx+0x440]
  a3f538:	62 71 7c 48 10 6a 09 	vmovups zmm13,ZMMWORD PTR [rdx+0x240]
  a3f53f:	62 e1 7c 48 10 52 08 	vmovups zmm18,ZMMWORD PTR [rdx+0x200]
  a3f546:	62 31 64 40 59 fa    	vmulps zmm15,zmm19,zmm18
  a3f54c:	62 52 45 48 bc fd    	vfnmadd231ps zmm15,zmm7,zmm13
  a3f552:	62 a1 44 48 59 d2    	vmulps zmm18,zmm7,zmm18
  a3f558:	62 f1 7c 48 10 7a 0d 	vmovups zmm7,ZMMWORD PTR [rdx+0x340]
  a3f55f:	62 a2 15 48 b8 d3    	vfmadd231ps zmm18,zmm13,zmm19
  a3f565:	62 71 7c 48 10 6a 0c 	vmovups zmm13,ZMMWORD PTR [rdx+0x300]
  a3f56c:	62 41 2c 40 59 c5    	vmulps zmm24,zmm26,zmm13
  a3f572:	62 62 0d 48 bc c7    	vfnmadd231ps zmm24,zmm14,zmm7
  a3f578:	62 c1 0c 48 59 dd    	vmulps zmm19,zmm14,zmm13
  a3f57e:	62 61 7c 48 10 72 10 	vmovups zmm30,ZMMWORD PTR [rdx+0x400]
  a3f585:	62 82 45 48 b8 da    	vfmadd231ps zmm19,zmm7,zmm26
  a3f58b:	62 01 34 40 59 d6    	vmulps zmm26,zmm25,zmm30
  a3f591:	62 02 75 40 bc d5    	vfnmadd231ps zmm26,zmm17,zmm29
  a3f597:	62 11 2c 48 5c ea    	vsubps zmm13,zmm10,zmm26
  a3f59d:	62 41 54 48 59 d9    	vmulps zmm27,zmm5,zmm9
  a3f5a3:	62 11 04 48 5c f0    	vsubps zmm14,zmm15,zmm24
  a3f5a9:	62 22 1d 40 b8 de    	vfmadd231ps zmm27,zmm28,zmm22
  a3f5af:	62 72 7d 48 18 0d 9f 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff63619f]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a3f5b6:	61 63 ff 
  a3f5b9:	62 d1 0c 48 59 f9    	vmulps zmm7,zmm14,zmm9
  a3f5bf:	62 81 74 40 59 ce    	vmulps zmm17,zmm17,zmm30
  a3f5c5:	62 82 15 40 b8 c9    	vfmadd231ps zmm17,zmm29,zmm25
  a3f5cb:	62 f1 7c 48 10 6a 0f 	vmovups zmm5,ZMMWORD PTR [rdx+0x3c0]
  a3f5d2:	62 61 7c 48 10 4a 0e 	vmovups zmm25,ZMMWORD PTR [rdx+0x380]
  a3f5d9:	62 81 5c 40 59 f1    	vmulps zmm22,zmm20,zmm25
  a3f5df:	62 e2 4d 48 b8 f5    	vfmadd231ps zmm22,zmm6,zmm5
  a3f5e5:	62 01 4c 48 59 e1    	vmulps zmm28,zmm6,zmm25
  a3f5eb:	62 f1 7c 48 10 72 07 	vmovups zmm6,ZMMWORD PTR [rdx+0x1c0]
  a3f5f2:	62 22 55 48 bc e4    	vfnmadd231ps zmm28,zmm5,zmm20
  a3f5f8:	62 f1 7c 48 10 6a 06 	vmovups zmm5,ZMMWORD PTR [rdx+0x180]
  a3f5ff:	62 61 7c 40 59 cd    	vmulps zmm25,zmm16,zmm5
  a3f605:	62 62 05 40 b8 ce    	vfmadd231ps zmm25,zmm31,zmm6
  a3f60b:	62 61 04 40 59 f5    	vmulps zmm30,zmm31,zmm5
  a3f611:	62 f1 7c 48 10 5a 13 	vmovups zmm3,ZMMWORD PTR [rdx+0x4c0]
  a3f618:	62 22 4d 48 bc f0    	vfnmadd231ps zmm30,zmm6,zmm16
  a3f61e:	62 f1 7c 48 10 6a 12 	vmovups zmm5,ZMMWORD PTR [rdx+0x480]
  a3f625:	62 61 1c 48 59 ed    	vmulps zmm29,zmm12,zmm5
  a3f62b:	62 62 7d 48 b8 eb    	vfmadd231ps zmm29,zmm0,zmm3
  a3f631:	62 61 7c 48 59 fd    	vmulps zmm31,zmm0,zmm5
  a3f637:	62 f2 7d 48 18 2d 5f 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff635d5f]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a3f63e:	5d 63 ff 
  a3f641:	62 f2 15 48 b8 fd    	vfmadd231ps zmm7,zmm13,zmm5
  a3f647:	62 42 65 48 bc fc    	vfnmadd231ps zmm31,zmm3,zmm12
  a3f64d:	62 b1 6c 40 58 e3    	vaddps zmm4,zmm18,zmm19
  a3f653:	62 b1 24 48 59 c7    	vmulps zmm0,zmm11,zmm23
  a3f659:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a3f660:	fe 
  a3f661:	62 b2 75 48 b8 c5    	vfmadd231ps zmm0,zmm1,zmm21
  a3f667:	62 31 74 48 59 e7    	vmulps zmm12,zmm1,zmm23
  a3f66d:	62 e1 7c 48 10 42 0b 	vmovups zmm16,ZMMWORD PTR [rdx+0x2c0]
  a3f674:	62 52 55 40 bc e3    	vfnmadd231ps zmm12,zmm21,zmm11
  a3f67a:	62 f1 7c 48 10 4a 0a 	vmovups zmm1,ZMMWORD PTR [rdx+0x280]
  a3f681:	62 f1 3c 48 59 d9    	vmulps zmm3,zmm8,zmm1
  a3f687:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x80]
  a3f68e:	02 
  a3f68f:	62 b2 4d 48 b8 d8    	vfmadd231ps zmm3,zmm6,zmm16
  a3f695:	62 f1 4c 48 59 c9    	vmulps zmm1,zmm6,zmm1
  a3f69b:	62 b1 24 40 58 f1    	vaddps zmm6,zmm27,zmm17
  a3f6a1:	62 d2 7d 40 bc c8    	vfnmadd231ps zmm1,zmm16,zmm8
  a3f6a7:	62 e2 7d 48 18 3d 37 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff636037]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a3f6ae:	60 63 ff 
  a3f6b1:	62 a1 7c 48 28 e7    	vmovaps zmm20,zmm23
  a3f6b7:	62 e2 4d 48 a8 e2    	vfmadd213ps zmm20,zmm6,zmm2
  a3f6bd:	62 11 04 48 58 c0    	vaddps zmm8,zmm15,zmm24
  a3f6c3:	62 e2 7d 48 18 2d 77 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff635f77]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a3f6ca:	5f 63 ff 
  a3f6cd:	62 a2 5d 48 bc e5    	vfnmadd231ps zmm20,zmm4,zmm21
  a3f6d3:	62 11 2c 48 58 d2    	vaddps zmm10,zmm10,zmm26
  a3f6d9:	62 61 14 40 58 c0    	vaddps zmm24,zmm29,zmm0
  a3f6df:	62 21 24 40 5c d1    	vsubps zmm26,zmm27,zmm17
  a3f6e5:	62 81 4c 40 58 c1    	vaddps zmm16,zmm22,zmm25
  a3f6eb:	62 21 6c 40 5c db    	vsubps zmm27,zmm18,zmm19
  a3f6f1:	62 51 04 40 5c dc    	vsubps zmm11,zmm31,zmm12
  a3f6f7:	62 51 04 40 58 e4    	vaddps zmm12,zmm31,zmm12
  a3f6fd:	62 01 1c 40 5c fe    	vsubps zmm31,zmm28,zmm30
  a3f703:	62 11 1c 40 58 fe    	vaddps zmm15,zmm28,zmm30
  a3f709:	62 a1 7c 48 28 cf    	vmovaps zmm17,zmm23
  a3f70f:	62 e2 7d 40 a8 cb    	vfmadd213ps zmm17,zmm16,zmm3
  a3f715:	62 a2 3d 40 bc cd    	vfnmadd231ps zmm17,zmm24,zmm21
  a3f71b:	62 81 4c 40 5c f1    	vsubps zmm22,zmm22,zmm25
  a3f721:	62 c1 24 48 59 d1    	vmulps zmm18,zmm11,zmm9
  a3f727:	62 e2 05 40 b8 d5    	vfmadd231ps zmm18,zmm31,zmm5
  a3f72d:	62 f1 14 40 5c c0    	vsubps zmm0,zmm29,zmm0
  a3f733:	62 a1 7c 48 28 df    	vmovaps zmm19,zmm23
  a3f739:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp-0x40]
  a3f740:	ff 
  a3f741:	62 82 2d 48 a8 dc    	vfmadd213ps zmm19,zmm10,zmm28
  a3f747:	62 a2 3d 48 bc dd    	vfnmadd231ps zmm19,zmm8,zmm21
  a3f74d:	62 41 14 48 59 c9    	vmulps zmm25,zmm13,zmm9
  a3f753:	62 42 55 48 bc ce    	vfnmadd231ps zmm25,zmm5,zmm14
  a3f759:	62 51 24 40 59 e9    	vmulps zmm13,zmm27,zmm9
  a3f75f:	62 72 2d 40 b8 ed    	vfmadd231ps zmm13,zmm26,zmm5
  a3f765:	62 51 04 40 59 f1    	vmulps zmm14,zmm31,zmm9
  a3f76b:	62 52 55 48 bc f3    	vfnmadd231ps zmm14,zmm5,zmm11
  a3f771:	62 31 7c 48 28 df    	vmovaps zmm11,zmm23
  a3f777:	62 72 05 48 a8 d9    	vfmadd213ps zmm11,zmm15,zmm1
  a3f77d:	62 32 1d 48 bc dd    	vfnmadd231ps zmm11,zmm12,zmm21
  a3f783:	62 41 2c 40 59 d1    	vmulps zmm26,zmm26,zmm9
  a3f789:	62 02 55 48 bc d3    	vfnmadd231ps zmm26,zmm5,zmm27
  a3f78f:	62 41 7c 48 59 d9    	vmulps zmm27,zmm0,zmm9
  a3f795:	62 62 4d 40 b8 dd    	vfmadd231ps zmm27,zmm22,zmm5
  a3f79b:	62 51 4c 40 59 c9    	vmulps zmm9,zmm22,zmm9
  a3f7a1:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a3f7a7:	62 e2 4d 48 ac f2    	vfnmadd213ps zmm22,zmm6,zmm2
  a3f7ad:	62 a2 5d 48 b8 f7    	vfmadd231ps zmm22,zmm4,zmm23
  a3f7b3:	62 72 7d 48 bc cd    	vfnmadd231ps zmm9,zmm0,zmm5
  a3f7b9:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a3f7bf:	62 f2 7d 40 ac c3    	vfnmadd213ps zmm0,zmm16,zmm3
  a3f7c5:	62 b2 3d 40 b8 c7    	vfmadd231ps zmm0,zmm24,zmm23
  a3f7cb:	62 b1 7c 48 28 ed    	vmovaps zmm5,zmm21
  a3f7d1:	62 01 7c 48 28 fc    	vmovaps zmm31,zmm28
  a3f7d7:	62 92 2d 48 ac ec    	vfnmadd213ps zmm5,zmm10,zmm28
  a3f7dd:	62 b2 3d 48 b8 ef    	vfmadd231ps zmm5,zmm8,zmm23
  a3f7e3:	62 e2 05 48 ac e9    	vfnmadd213ps zmm21,zmm15,zmm1
  a3f7e9:	62 a2 1d 48 b8 ef    	vfmadd231ps zmm21,zmm12,zmm23
  a3f7ef:	62 a1 34 40 58 fe    	vaddps zmm23,zmm25,zmm22
  a3f7f5:	62 81 4c 40 5c f1    	vsubps zmm22,zmm22,zmm25
  a3f7fb:	62 41 7c 48 58 ce    	vaddps zmm25,zmm0,zmm14
  a3f801:	62 51 7c 48 5c f6    	vsubps zmm14,zmm0,zmm14
  a3f807:	62 01 54 48 5c e2    	vsubps zmm28,zmm5,zmm26
  a3f80d:	62 01 54 48 58 d2    	vaddps zmm26,zmm5,zmm26
  a3f813:	62 41 54 40 5c e9    	vsubps zmm29,zmm21,zmm9
  a3f819:	62 c1 54 40 58 e9    	vaddps zmm21,zmm21,zmm9
  a3f81f:	62 31 44 48 58 cc    	vaddps zmm9,zmm7,zmm20
  a3f825:	62 f1 5c 40 5c ff    	vsubps zmm7,zmm20,zmm7
  a3f82b:	62 a1 74 40 58 e2    	vaddps zmm20,zmm17,zmm18
  a3f831:	62 a1 74 40 5c ca    	vsubps zmm17,zmm17,zmm18
  a3f837:	62 c1 64 40 5c d5    	vsubps zmm18,zmm19,zmm13
  a3f83d:	62 51 64 40 58 ed    	vaddps zmm13,zmm19,zmm13
  a3f843:	62 81 24 48 5c db    	vsubps zmm19,zmm11,zmm27
  a3f849:	62 01 24 48 58 db    	vaddps zmm27,zmm11,zmm27
  a3f84f:	62 f1 4c 48 58 c2    	vaddps zmm0,zmm6,zmm2
  a3f855:	62 61 5c 48 58 f0    	vaddps zmm30,zmm4,zmm0
  a3f85b:	62 b1 64 48 58 c0    	vaddps zmm0,zmm3,zmm16
  a3f861:	62 81 7c 48 58 c0    	vaddps zmm16,zmm0,zmm24
  a3f867:	62 d1 04 40 58 c2    	vaddps zmm0,zmm31,zmm10
  a3f86d:	62 41 7c 48 58 c0    	vaddps zmm24,zmm0,zmm8
  a3f873:	62 b1 34 48 5c c4    	vsubps zmm0,zmm9,zmm20
  a3f879:	62 d1 74 48 58 cf    	vaddps zmm1,zmm1,zmm15
  a3f87f:	62 b1 6c 40 5c eb    	vsubps zmm5,zmm18,zmm19
  a3f885:	62 51 74 48 58 e4    	vaddps zmm12,zmm1,zmm12
  a3f88b:	62 91 44 40 58 c9    	vaddps zmm1,zmm23,zmm25
  a3f891:	62 b1 34 48 58 dc    	vaddps zmm3,zmm9,zmm20
  a3f897:	62 11 1c 40 58 d5    	vaddps zmm10,zmm28,zmm29
  a3f89d:	62 31 6c 40 58 fb    	vaddps zmm15,zmm18,zmm19
  a3f8a3:	62 d1 4c 40 5c d6    	vsubps zmm2,zmm22,zmm14
  a3f8a9:	62 91 44 40 5c f1    	vsubps zmm6,zmm23,zmm25
  a3f8af:	62 a1 2c 40 5c d5    	vsubps zmm18,zmm26,zmm21
  a3f8b5:	62 81 1c 40 5c dd    	vsubps zmm19,zmm28,zmm29
  a3f8bb:	62 b1 44 48 58 e1    	vaddps zmm4,zmm7,zmm17
  a3f8c1:	62 51 4c 40 58 ce    	vaddps zmm9,zmm22,zmm14
  a3f8c7:	62 11 14 48 58 f3    	vaddps zmm14,zmm13,zmm27
  a3f8cd:	62 a1 2c 40 58 e5    	vaddps zmm20,zmm26,zmm21
  a3f8d3:	62 31 0c 40 5c c0    	vsubps zmm8,zmm30,zmm16
  a3f8d9:	62 31 44 48 5c d9    	vsubps zmm11,zmm7,zmm17
  a3f8df:	62 c1 3c 40 5c cc    	vsubps zmm17,zmm24,zmm12
  a3f8e5:	62 11 14 48 5c eb    	vsubps zmm13,zmm13,zmm27
  a3f8eb:	62 a1 0c 40 58 c0    	vaddps zmm16,zmm30,zmm16
  a3f8f1:	62 51 3c 40 58 e4    	vaddps zmm12,zmm24,zmm12
  a3f8f7:	62 f1 7c 48 28 3d bf 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6522bf]        # 91bc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f070>
  a3f8fe:	22 65 ff 
  a3f901:	62 a1 7c 48 28 e8    	vmovaps zmm21,zmm16
  a3f907:	62 c2 45 48 7f ec    	vpermt2ps zmm21,zmm7,zmm12
  a3f90d:	62 e1 7c 48 28 35 e9 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6522e9]        # 91c00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f0b0>
  a3f914:	22 65 ff 
  a3f917:	62 c2 4d 40 7f c4    	vpermt2ps zmm16,zmm22,zmm12
  a3f91d:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a3f923:	62 52 45 48 7f e5    	vpermt2ps zmm12,zmm7,zmm13
  a3f929:	62 52 4d 40 7f dd    	vpermt2ps zmm11,zmm22,zmm13
  a3f92f:	62 51 7c 48 28 e9    	vmovaps zmm13,zmm9
  a3f935:	62 32 45 48 7f ec    	vpermt2ps zmm13,zmm7,zmm20
  a3f93b:	62 32 4d 40 7f cc    	vpermt2ps zmm9,zmm22,zmm20
  a3f941:	62 e1 7c 48 28 e6    	vmovaps zmm20,zmm6
  a3f947:	62 a2 45 48 7f e3    	vpermt2ps zmm20,zmm7,zmm19
  a3f94d:	62 b2 4d 40 7f f3    	vpermt2ps zmm6,zmm22,zmm19
  a3f953:	62 e1 7c 48 28 db    	vmovaps zmm19,zmm3
  a3f959:	62 c2 45 48 7f df    	vpermt2ps zmm19,zmm7,zmm15
  a3f95f:	62 d2 4d 40 7f df    	vpermt2ps zmm3,zmm22,zmm15
  a3f965:	62 51 7c 48 28 f8    	vmovaps zmm15,zmm8
  a3f96b:	62 32 45 48 7f f9    	vpermt2ps zmm15,zmm7,zmm17
  a3f971:	62 32 4d 40 7f c1    	vpermt2ps zmm8,zmm22,zmm17
  a3f977:	62 e1 7c 48 28 cc    	vmovaps zmm17,zmm4
  a3f97d:	62 c2 45 48 7f ce    	vpermt2ps zmm17,zmm7,zmm14
  a3f983:	62 d2 4d 40 7f e6    	vpermt2ps zmm4,zmm22,zmm14
  a3f989:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a3f98f:	62 32 45 48 7f f2    	vpermt2ps zmm14,zmm7,zmm18
  a3f995:	62 b2 4d 40 7f d2    	vpermt2ps zmm2,zmm22,zmm18
  a3f99b:	62 e1 7c 48 28 d1    	vmovaps zmm18,zmm1
  a3f9a1:	62 c2 45 48 7f d2    	vpermt2ps zmm18,zmm7,zmm10
  a3f9a7:	62 d2 4d 40 7f ca    	vpermt2ps zmm1,zmm22,zmm10
  a3f9ad:	62 f2 7d 48 77 fd    	vpermi2ps zmm7,zmm0,zmm5
  a3f9b3:	62 f2 4d 40 7f c5    	vpermt2ps zmm0,zmm22,zmm5
  a3f9b9:	62 e1 7c 48 11 06    	vmovups ZMMWORD PTR [rsi],zmm16
  a3f9bf:	62 e1 7c 48 11 6e 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm21
  a3f9c6:	62 71 7c 48 11 5e 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm11
  a3f9cd:	62 71 7c 48 11 66 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm12
  a3f9d4:	62 71 7c 48 11 4e 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm9
  a3f9db:	62 71 7c 48 11 6e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm13
  a3f9e2:	62 f1 7c 48 11 76 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm6
  a3f9e9:	62 e1 7c 48 11 66 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm20
  a3f9f0:	62 f1 7c 48 11 5e 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm3
  a3f9f7:	62 e1 7c 48 11 5e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm19
  a3f9fe:	62 71 7c 48 11 46 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm8
  a3fa05:	62 71 7c 48 11 7e 0b 	vmovups ZMMWORD PTR [rsi+0x2c0],zmm15
  a3fa0c:	62 f1 7c 48 11 66 0c 	vmovups ZMMWORD PTR [rsi+0x300],zmm4
  a3fa13:	62 e1 7c 48 11 4e 0d 	vmovups ZMMWORD PTR [rsi+0x340],zmm17
  a3fa1a:	62 f1 7c 48 11 56 0e 	vmovups ZMMWORD PTR [rsi+0x380],zmm2
  a3fa21:	62 71 7c 48 11 76 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm14
  a3fa28:	62 f1 7c 48 11 4e 10 	vmovups ZMMWORD PTR [rsi+0x400],zmm1
  a3fa2f:	62 e1 7c 48 11 56 11 	vmovups ZMMWORD PTR [rsi+0x440],zmm18
  a3fa36:	62 f1 7c 48 11 46 12 	vmovups ZMMWORD PTR [rsi+0x480],zmm0
  a3fa3d:	62 f1 7c 48 11 7e 13 	vmovups ZMMWORD PTR [rsi+0x4c0],zmm7
  a3fa44:	48 81 c4 48 04 00 00 	add    rsp,0x448
  a3fa4b:	c5 f8 77             	vzeroupper
  a3fa4e:	c3                   	ret
