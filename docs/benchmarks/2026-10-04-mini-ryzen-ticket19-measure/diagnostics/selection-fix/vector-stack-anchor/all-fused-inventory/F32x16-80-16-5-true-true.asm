
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a3bc40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a3bc40:	48 81 ec 48 04 00 00 	sub    rsp,0x448
  a3bc47:	48 c1 e2 07          	shl    rdx,0x7
  a3bc4b:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a3bc4f:	31 d2                	xor    edx,edx
  a3bc51:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a3bc58:	0f 1f 84 00 00 00 00 
  a3bc5f:	00 
  a3bc60:	c5 fb 10 44 17 20    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x20]
  a3bc66:	c5 fc 10 0c 17       	vmovups ymm1,YMMWORD PTR [rdi+rdx*1]
  a3bc6b:	c5 fc 10 54 17 28    	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x28]
  a3bc71:	c5 fc 10 5c 17 50    	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x50]
  a3bc77:	c5 fc 10 64 17 78    	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x78]
  a3bc7d:	62 e3 f5 48 1a d8 01 	vinsertf64x4 zmm19,zmm1,ymm0,0x1
  a3bc84:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm19
  a3bc8b:	01 
  a3bc8c:	62 01 3c 00 57 c0    	vxorps xmm24,xmm24,xmm24
  a3bc92:	62 e1 7c 48 28 0d a4 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff655ba4]        # 91840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ecf0>
  a3bc99:	5b 65 ff 
  a3bc9c:	62 82 75 40 7f d8    	vpermt2ps zmm19,zmm17,zmm24
  a3bca2:	c5 fb 10 44 17 48    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x48]
  a3bca8:	62 e3 ed 48 1a e8 01 	vinsertf64x4 zmm21,zmm2,ymm0,0x1
  a3bcaf:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a3bcb5:	62 71 7c 48 28 2d 41 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff655b41]        # 91800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ecb0>
  a3bcbc:	5b 65 ff 
  a3bcbf:	62 92 15 48 7f c0    	vpermt2ps zmm0,zmm13,zmm24
  a3bcc5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a3bccc:	ff 
  a3bccd:	62 82 75 40 7f e8    	vpermt2ps zmm21,zmm17,zmm24
  a3bcd3:	c5 fb 10 44 17 70    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x70]
  a3bcd9:	62 63 e5 48 1a c8 01 	vinsertf64x4 zmm25,zmm3,ymm0,0x1
  a3bce0:	62 81 7c 48 28 d1    	vmovaps zmm18,zmm25
  a3bce6:	62 82 15 48 7f d0    	vpermt2ps zmm18,zmm13,zmm24
  a3bcec:	62 02 75 40 7f c8    	vpermt2ps zmm25,zmm17,zmm24
  a3bcf2:	c5 fb 10 84 17 98 00 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x98]
  a3bcf9:	00 00 
  a3bcfb:	62 e3 dd 48 1a f0 01 	vinsertf64x4 zmm22,zmm4,ymm0,0x1
  a3bd02:	62 e1 7c 48 11 34 24 	vmovups ZMMWORD PTR [rsp],zmm22
  a3bd09:	62 82 75 40 7f f0    	vpermt2ps zmm22,zmm17,zmm24
  a3bd0f:	c5 fb 10 84 17 c0 00 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0xc0]
  a3bd16:	00 00 
  a3bd18:	c5 fc 10 8c 17 a0 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xa0]
  a3bd1f:	00 00 
  a3bd21:	62 63 f5 48 1a f8 01 	vinsertf64x4 zmm31,zmm1,ymm0,0x1
  a3bd28:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm31
  a3bd2f:	fe 
  a3bd30:	62 02 15 48 7f f8    	vpermt2ps zmm31,zmm13,zmm24
  a3bd36:	c5 fb 10 84 17 e8 00 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0xe8]
  a3bd3d:	00 00 
  a3bd3f:	c5 fc 10 8c 17 c8 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xc8]
  a3bd46:	00 00 
  a3bd48:	62 63 f5 48 1a e0 01 	vinsertf64x4 zmm28,zmm1,ymm0,0x1
  a3bd4f:	62 01 7c 48 28 ec    	vmovaps zmm29,zmm28
  a3bd55:	62 02 15 48 7f e8    	vpermt2ps zmm29,zmm13,zmm24
  a3bd5b:	62 02 75 40 7f e0    	vpermt2ps zmm28,zmm17,zmm24
  a3bd61:	c5 fb 10 84 17 10 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x110]
  a3bd68:	00 00 
  a3bd6a:	c5 fc 10 8c 17 f0 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xf0]
  a3bd71:	00 00 
  a3bd73:	62 f3 f5 48 1a e0 01 	vinsertf64x4 zmm4,zmm1,ymm0,0x1
  a3bd7a:	62 e1 7c 48 28 e4    	vmovaps zmm20,zmm4
  a3bd80:	62 82 15 48 7f e0    	vpermt2ps zmm20,zmm13,zmm24
  a3bd86:	62 92 75 40 7f e0    	vpermt2ps zmm4,zmm17,zmm24
  a3bd8c:	c5 fb 10 84 17 38 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x138]
  a3bd93:	00 00 
  a3bd95:	c5 fc 10 8c 17 18 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x118]
  a3bd9c:	00 00 
  a3bd9e:	62 63 f5 48 1a d0 01 	vinsertf64x4 zmm26,zmm1,ymm0,0x1
  a3bda5:	62 01 7c 48 28 f2    	vmovaps zmm30,zmm26
  a3bdab:	62 02 15 48 7f f0    	vpermt2ps zmm30,zmm13,zmm24
  a3bdb1:	c5 fb 10 84 17 60 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x160]
  a3bdb8:	00 00 
  a3bdba:	c5 fc 10 8c 17 40 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x140]
  a3bdc1:	00 00 
  a3bdc3:	62 f3 f5 48 1a c8 01 	vinsertf64x4 zmm1,zmm1,ymm0,0x1
  a3bdca:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a3bdd1:	02 
  a3bdd2:	62 92 75 40 7f c8    	vpermt2ps zmm1,zmm17,zmm24
  a3bdd8:	c5 fb 10 84 17 88 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x188]
  a3bddf:	00 00 
  a3bde1:	c5 fc 10 94 17 68 01 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x168]
  a3bde8:	00 00 
  a3bdea:	62 73 ed 48 1a e0 01 	vinsertf64x4 zmm12,zmm2,ymm0,0x1
  a3bdf1:	62 c1 7c 48 28 fc    	vmovaps zmm23,zmm12
  a3bdf7:	62 82 15 48 7f f8    	vpermt2ps zmm23,zmm13,zmm24
  a3bdfd:	62 12 75 40 7f e0    	vpermt2ps zmm12,zmm17,zmm24
  a3be03:	c5 fb 10 84 17 b0 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x1b0]
  a3be0a:	00 00 
  a3be0c:	c5 fc 10 94 17 90 01 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x190]
  a3be13:	00 00 
  a3be15:	62 73 ed 48 1a c0 01 	vinsertf64x4 zmm8,zmm2,ymm0,0x1
  a3be1c:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a3be22:	62 12 15 48 7f c8    	vpermt2ps zmm9,zmm13,zmm24
  a3be28:	62 12 75 40 7f c0    	vpermt2ps zmm8,zmm17,zmm24
  a3be2e:	c5 fb 10 84 17 d8 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x1d8]
  a3be35:	00 00 
  a3be37:	c5 fc 10 94 17 b8 01 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x1b8]
  a3be3e:	00 00 
  a3be40:	62 73 ed 48 1a f8 01 	vinsertf64x4 zmm15,zmm2,ymm0,0x1
  a3be47:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a3be4d:	62 12 75 40 7f f8    	vpermt2ps zmm15,zmm17,zmm24
  a3be53:	c5 fb 10 84 17 00 02 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x200]
  a3be5a:	00 00 
  a3be5c:	c5 fc 10 9c 17 e0 01 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x1e0]
  a3be63:	00 00 
  a3be65:	62 73 e5 48 1a d8 01 	vinsertf64x4 zmm11,zmm3,ymm0,0x1
  a3be6c:	62 51 7c 48 28 f3    	vmovaps zmm14,zmm11
  a3be72:	62 12 15 48 7f f0    	vpermt2ps zmm14,zmm13,zmm24
  a3be78:	c5 fb 10 9c 17 28 02 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x228]
  a3be7f:	00 00 
  a3be81:	c5 fc 10 ac 17 08 02 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x208]
  a3be88:	00 00 
  a3be8a:	62 f3 d5 48 1a f3 01 	vinsertf64x4 zmm6,zmm5,ymm3,0x1
  a3be91:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  a3be97:	62 92 15 48 7f e8    	vpermt2ps zmm5,zmm13,zmm24
  a3be9d:	62 92 75 40 7f f0    	vpermt2ps zmm6,zmm17,zmm24
  a3bea3:	c5 fb 10 9c 17 50 02 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x250]
  a3beaa:	00 00 
  a3beac:	c5 fc 10 bc 17 30 02 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x230]
  a3beb3:	00 00 
  a3beb5:	62 f3 c5 48 1a fb 01 	vinsertf64x4 zmm7,zmm7,ymm3,0x1
  a3bebc:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a3bec2:	62 92 15 48 7f c0    	vpermt2ps zmm0,zmm13,zmm24
  a3bec8:	62 92 75 40 7f f8    	vpermt2ps zmm7,zmm17,zmm24
  a3bece:	c5 fb 10 9c 17 78 02 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x278]
  a3bed5:	00 00 
  a3bed7:	c5 7c 10 94 17 58 02 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x258]
  a3bede:	00 00 
  a3bee0:	62 73 ad 48 1a d3 01 	vinsertf64x4 zmm10,zmm10,ymm3,0x1
  a3bee7:	62 f1 64 40 58 d9    	vaddps zmm3,zmm19,zmm1
  a3beed:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm3
  a3bef4:	07 
  a3bef5:	62 f1 64 40 5c c9    	vsubps zmm1,zmm19,zmm1
  a3befb:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a3bf02:	08 
  a3bf03:	62 d1 04 40 58 ce    	vaddps zmm1,zmm31,zmm14
  a3bf09:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a3bf10:	04 
  a3bf11:	62 d1 04 40 5c ce    	vsubps zmm1,zmm31,zmm14
  a3bf17:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a3bf1e:	06 
  a3bf1f:	62 d1 34 40 58 c8    	vaddps zmm1,zmm25,zmm8
  a3bf25:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a3bf2c:	05 
  a3bf2d:	62 51 34 40 5c f0    	vsubps zmm14,zmm25,zmm8
  a3bf33:	62 d1 6c 40 58 c9    	vaddps zmm1,zmm18,zmm9
  a3bf39:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm1
  a3bf40:	10 
  a3bf41:	62 51 6c 40 5c c9    	vsubps zmm9,zmm18,zmm9
  a3bf47:	62 61 5c 40 58 f8    	vaddps zmm31,zmm20,zmm0
  a3bf4d:	62 71 5c 40 5c c0    	vsubps zmm8,zmm20,zmm0
  a3bf53:	62 f1 5c 48 58 c7    	vaddps zmm0,zmm4,zmm7
  a3bf59:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a3bf60:	03 
  a3bf61:	62 f1 5c 48 5c c7    	vsubps zmm0,zmm4,zmm7
  a3bf67:	62 41 54 40 58 dc    	vaddps zmm27,zmm21,zmm12
  a3bf6d:	62 51 54 40 5c e4    	vsubps zmm12,zmm21,zmm12
  a3bf73:	62 61 14 40 58 cd    	vaddps zmm25,zmm29,zmm5
  a3bf79:	62 f1 14 40 5c cd    	vsubps zmm1,zmm29,zmm5
  a3bf7f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a3bf86:	0f 
  a3bf87:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a3bf8e:	ff 
  a3bf8f:	62 a1 5c 48 58 ef    	vaddps zmm21,zmm4,zmm23
  a3bf95:	62 b1 5c 48 5c df    	vsubps zmm3,zmm4,zmm23
  a3bf9b:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm3
  a3bfa2:	0d 
  a3bfa3:	62 e1 1c 40 58 e6    	vaddps zmm20,zmm28,zmm6
  a3bfa9:	62 91 4c 48 5c d4    	vsubps zmm2,zmm6,zmm28
  a3bfaf:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm2
  a3bfb6:	0e 
  a3bfb7:	62 41 4c 40 58 e7    	vaddps zmm28,zmm22,zmm15
  a3bfbd:	62 d1 4c 40 5c ff    	vsubps zmm7,zmm22,zmm15
  a3bfc3:	62 d1 7c 48 28 ea    	vmovaps zmm5,zmm10
  a3bfc9:	62 92 15 48 7f e8    	vpermt2ps zmm5,zmm13,zmm24
  a3bfcf:	62 e1 0c 40 58 dd    	vaddps zmm19,zmm30,zmm5
  a3bfd5:	62 e1 0c 40 5c fd    	vsubps zmm23,zmm30,zmm5
  a3bfdb:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm23
  a3bfe2:	0b 
  a3bfe3:	62 f1 7c 48 10 24 24 	vmovups zmm4,ZMMWORD PTR [rsp]
  a3bfea:	62 92 15 48 7f e0    	vpermt2ps zmm4,zmm13,zmm24
  a3bff0:	62 82 15 48 7f c0    	vpermt2ps zmm16,zmm13,zmm24
  a3bff6:	62 a1 5c 48 58 d0    	vaddps zmm18,zmm4,zmm16
  a3bffc:	62 b1 5c 48 5c f0    	vsubps zmm6,zmm4,zmm16
  a3c002:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm6
  a3c009:	09 
  a3c00a:	62 02 75 40 7f d0    	vpermt2ps zmm26,zmm17,zmm24
  a3c010:	62 12 75 40 7f d0    	vpermt2ps zmm10,zmm17,zmm24
  a3c016:	62 51 2c 40 58 fa    	vaddps zmm15,zmm26,zmm10
  a3c01c:	62 91 2c 48 5c e2    	vsubps zmm4,zmm10,zmm26
  a3c022:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm4
  a3c029:	0a 
  a3c02a:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x40]
  a3c031:	01 
  a3c032:	62 92 15 48 7f e8    	vpermt2ps zmm5,zmm13,zmm24
  a3c038:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x80]
  a3c03f:	02 
  a3c040:	62 12 15 48 7f d0    	vpermt2ps zmm10,zmm13,zmm24
  a3c046:	62 c1 54 48 58 f2    	vaddps zmm22,zmm5,zmm10
  a3c04c:	62 d1 54 48 5c ea    	vsubps zmm5,zmm5,zmm10
  a3c052:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm5
  a3c059:	02 
  a3c05a:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp-0x80]
  a3c061:	fe 
  a3c062:	62 92 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm24
  a3c068:	62 12 75 40 7f d8    	vpermt2ps zmm11,zmm17,zmm24
  a3c06e:	62 41 54 48 58 d3    	vaddps zmm26,zmm5,zmm11
  a3c074:	62 61 24 48 5c f5    	vsubps zmm30,zmm11,zmm5
  a3c07a:	62 d1 0c 48 58 e9    	vaddps zmm5,zmm14,zmm9
  a3c080:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm5
  a3c087:	ff 
  a3c088:	62 d1 34 48 5c ee    	vsubps zmm5,zmm9,zmm14
  a3c08e:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm5
  a3c095:	0c 
  a3c096:	62 f1 3c 48 5c e8    	vsubps zmm5,zmm8,zmm0
  a3c09c:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm5
  a3c0a3:	fe 
  a3c0a4:	62 c1 7c 48 58 c0    	vaddps zmm16,zmm0,zmm8
  a3c0aa:	62 f1 1c 48 58 c1    	vaddps zmm0,zmm12,zmm1
  a3c0b0:	62 41 7c 48 28 ec    	vmovaps zmm29,zmm12
  a3c0b6:	62 f1 6c 48 58 cb    	vaddps zmm1,zmm2,zmm3
  a3c0bc:	62 f2 7d 48 18 1d 9e 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff63959e]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a3c0c3:	95 63 ff 
  a3c0c6:	62 71 74 48 59 e3    	vmulps zmm12,zmm1,zmm3
  a3c0cc:	62 f2 7d 48 18 15 2a 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff63962a]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a3c0d3:	96 63 ff 
  a3c0d6:	62 72 7d 48 b8 e2    	vfmadd231ps zmm12,zmm0,zmm2
  a3c0dc:	62 71 74 48 59 f2    	vmulps zmm14,zmm1,zmm2
  a3c0e2:	62 72 65 48 bc f0    	vfnmadd231ps zmm14,zmm3,zmm0
  a3c0e8:	62 b1 44 48 58 c7    	vaddps zmm0,zmm7,zmm23
  a3c0ee:	62 e1 7c 48 28 ff    	vmovaps zmm23,zmm7
  a3c0f4:	62 f1 5c 48 58 ce    	vaddps zmm1,zmm4,zmm6
  a3c0fa:	62 f1 74 48 59 ea    	vmulps zmm5,zmm1,zmm2
  a3c100:	62 f2 7d 48 b8 eb    	vfmadd231ps zmm5,zmm0,zmm3
  a3c106:	62 e1 74 48 59 cb    	vmulps zmm17,zmm1,zmm3
  a3c10c:	62 e2 6d 48 bc c8    	vfnmadd231ps zmm17,zmm2,zmm0
  a3c112:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a3c119:	07 
  a3c11a:	62 11 7c 48 58 da    	vaddps zmm11,zmm0,zmm26
  a3c120:	62 91 7c 48 5c c2    	vsubps zmm0,zmm0,zmm26
  a3c126:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a3c12d:	01 
  a3c12e:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x400]
  a3c135:	10 
  a3c136:	62 01 7c 48 58 d7    	vaddps zmm26,zmm0,zmm31
  a3c13c:	62 91 7c 48 5c c7    	vsubps zmm0,zmm0,zmm31
  a3c142:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a3c149:	62 21 24 40 58 c4    	vaddps zmm24,zmm27,zmm20
  a3c14f:	62 31 24 40 5c c4    	vsubps zmm8,zmm27,zmm20
  a3c155:	62 11 54 40 58 d1    	vaddps zmm10,zmm21,zmm25
  a3c15b:	62 11 54 40 5c e9    	vsubps zmm13,zmm21,zmm25
  a3c161:	62 31 6c 40 58 cb    	vaddps zmm9,zmm18,zmm19
  a3c167:	62 a1 6c 40 5c eb    	vsubps zmm21,zmm18,zmm19
  a3c16d:	62 d1 1c 40 58 f7    	vaddps zmm6,zmm28,zmm15
  a3c173:	62 d1 1c 40 5c e7    	vsubps zmm4,zmm28,zmm15
  a3c179:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a3c180:	04 
  a3c181:	62 61 4c 40 58 e0    	vaddps zmm28,zmm22,zmm0
  a3c187:	62 e1 4c 40 5c d0    	vsubps zmm18,zmm22,zmm0
  a3c18d:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a3c194:	05 
  a3c195:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0xc0]
  a3c19c:	03 
  a3c19d:	62 f1 74 48 58 c7    	vaddps zmm0,zmm1,zmm7
  a3c1a3:	62 f1 44 48 5c c9    	vsubps zmm1,zmm7,zmm1
  a3c1a9:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a3c1b0:	04 
  a3c1b1:	62 d1 3c 48 58 cd    	vaddps zmm1,zmm8,zmm13
  a3c1b7:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm1
  a3c1be:	07 
  a3c1bf:	62 51 14 48 5c c0    	vsubps zmm8,zmm13,zmm8
  a3c1c5:	62 f1 54 40 5c cc    	vsubps zmm1,zmm21,zmm4
  a3c1cb:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a3c1d2:	05 
  a3c1d3:	62 b1 5c 48 58 e5    	vaddps zmm4,zmm4,zmm21
  a3c1d9:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x200]
  a3c1e0:	08 
  a3c1e1:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x180]
  a3c1e8:	06 
  a3c1e9:	62 e1 74 48 58 ef    	vaddps zmm21,zmm1,zmm7
  a3c1ef:	62 f1 74 48 5c cf    	vsubps zmm1,zmm1,zmm7
  a3c1f5:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a3c1fc:	08 
  a3c1fd:	62 f2 7d 48 18 3d 95 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff639195]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a3c204:	91 63 ff 
  a3c207:	62 e1 44 48 59 74 24 	vmulps zmm22,zmm7,ZMMWORD PTR [rsp+0x300]
  a3c20e:	0c 
  a3c20f:	62 e1 7c 40 59 c7    	vmulps zmm16,zmm16,zmm7
  a3c215:	62 b1 4c 40 5c c8    	vsubps zmm1,zmm22,zmm16
  a3c21b:	62 31 4c 40 58 e8    	vaddps zmm13,zmm22,zmm16
  a3c221:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm13
  a3c228:	06 
  a3c229:	62 e1 14 40 5c 74 24 	vsubps zmm22,zmm29,ZMMWORD PTR [rsp+0x3c0]
  a3c230:	0f 
  a3c231:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x340]
  a3c238:	0d 
  a3c239:	62 61 14 48 5c 6c 24 	vsubps zmm29,zmm13,ZMMWORD PTR [rsp+0x380]
  a3c240:	0e 
  a3c241:	62 e1 44 40 5c 7c 24 	vsubps zmm23,zmm23,ZMMWORD PTR [rsp+0x2c0]
  a3c248:	0b 
  a3c249:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x240]
  a3c250:	09 
  a3c251:	62 71 14 48 5c 7c 24 	vsubps zmm15,zmm13,ZMMWORD PTR [rsp+0x280]
  a3c258:	0a 
  a3c259:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x80]
  a3c260:	02 
  a3c261:	62 c1 0c 40 58 dd    	vaddps zmm19,zmm30,zmm13
  a3c267:	62 11 14 48 5c ee    	vsubps zmm13,zmm13,zmm30
  a3c26d:	62 61 44 48 59 5c 24 	vmulps zmm27,zmm7,ZMMWORD PTR [rsp-0x40]
  a3c274:	ff 
  a3c275:	62 61 44 48 59 74 24 	vmulps zmm30,zmm7,ZMMWORD PTR [rsp-0x80]
  a3c27c:	fe 
  a3c27d:	62 01 24 40 58 fe    	vaddps zmm31,zmm27,zmm30
  a3c283:	62 01 0c 40 5c db    	vsubps zmm27,zmm30,zmm27
  a3c289:	62 61 14 40 59 f2    	vmulps zmm30,zmm29,zmm2
  a3c28f:	62 62 4d 40 b8 f3    	vfmadd231ps zmm30,zmm22,zmm3
  a3c295:	62 61 14 40 59 eb    	vmulps zmm29,zmm29,zmm3
  a3c29b:	62 22 6d 48 bc ee    	vfnmadd231ps zmm29,zmm2,zmm22
  a3c2a1:	62 e1 04 48 59 f3    	vmulps zmm22,zmm15,zmm3
  a3c2a7:	62 e2 45 40 b8 f2    	vfmadd231ps zmm22,zmm23,zmm2
  a3c2ad:	62 e1 44 40 59 fb    	vmulps zmm23,zmm23,zmm3
  a3c2b3:	62 c2 6d 48 bc ff    	vfnmadd231ps zmm23,zmm2,zmm15
  a3c2b9:	62 71 24 48 58 f8    	vaddps zmm15,zmm11,zmm0
  a3c2bf:	62 f1 24 48 5c c0    	vsubps zmm0,zmm11,zmm0
  a3c2c5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a3c2cc:	ff 
  a3c2cd:	62 51 2c 48 58 d9    	vaddps zmm11,zmm10,zmm9
  a3c2d3:	62 d1 2c 48 5c c1    	vsubps zmm0,zmm10,zmm9
  a3c2d9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a3c2e0:	fe 
  a3c2e1:	62 11 1c 40 58 ca    	vaddps zmm9,zmm28,zmm26
  a3c2e7:	62 91 1c 40 5c c2    	vsubps zmm0,zmm28,zmm26
  a3c2ed:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a3c2f4:	03 
  a3c2f5:	62 61 3c 40 58 e6    	vaddps zmm28,zmm24,zmm6
  a3c2fb:	62 01 4c 48 5c d0    	vsubps zmm26,zmm6,zmm24
  a3c301:	62 91 54 40 58 f7    	vaddps zmm6,zmm21,zmm31
  a3c307:	62 01 54 40 5c cf    	vsubps zmm25,zmm21,zmm31
  a3c30d:	62 21 0c 48 58 f9    	vaddps zmm31,zmm14,zmm17
  a3c313:	62 a1 0c 48 5c e9    	vsubps zmm21,zmm14,zmm17
  a3c319:	62 e1 64 40 58 c9    	vaddps zmm17,zmm19,zmm1
  a3c31f:	62 e1 64 40 5c c1    	vsubps zmm16,zmm19,zmm1
  a3c325:	62 e1 1c 48 58 dd    	vaddps zmm19,zmm12,zmm5
  a3c32b:	62 51 54 48 5c f4    	vsubps zmm14,zmm5,zmm12
  a3c331:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a3c338:	01 
  a3c339:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a3c340:	62 f1 7c 48 58 d9    	vaddps zmm3,zmm0,zmm1
  a3c346:	62 61 7c 48 5c c1    	vsubps zmm24,zmm0,zmm1
  a3c34c:	62 71 3c 48 59 c7    	vmulps zmm8,zmm8,zmm7
  a3c352:	62 f1 5c 48 59 e7    	vmulps zmm4,zmm4,zmm7
  a3c358:	62 e1 3c 48 5c e4    	vsubps zmm20,zmm8,zmm4
  a3c35e:	62 71 3c 48 58 d4    	vaddps zmm10,zmm8,zmm4
  a3c364:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a3c36b:	04 
  a3c36c:	62 b1 7c 48 58 d2    	vaddps zmm2,zmm0,zmm18
  a3c372:	62 e1 6c 40 5c d0    	vsubps zmm18,zmm18,zmm0
  a3c378:	62 f1 44 48 59 64 24 	vmulps zmm4,zmm7,ZMMWORD PTR [rsp+0x1c0]
  a3c37f:	07 
  a3c380:	62 71 44 48 59 64 24 	vmulps zmm12,zmm7,ZMMWORD PTR [rsp+0x140]
  a3c387:	05 
  a3c388:	62 d1 5c 48 58 cc    	vaddps zmm1,zmm4,zmm12
  a3c38e:	62 71 1c 48 5c c4    	vsubps zmm8,zmm12,zmm4
  a3c394:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x200]
  a3c39b:	08 
  a3c39c:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x180]
  a3c3a3:	06 
  a3c3a4:	62 f1 7c 48 58 e5    	vaddps zmm4,zmm0,zmm5
  a3c3aa:	62 f1 7c 48 5c fd    	vsubps zmm7,zmm0,zmm5
  a3c3b0:	62 31 14 40 58 e7    	vaddps zmm12,zmm29,zmm23
  a3c3b6:	62 21 14 40 5c ef    	vsubps zmm29,zmm29,zmm23
  a3c3bc:	62 81 14 48 58 fb    	vaddps zmm23,zmm13,zmm27
  a3c3c2:	62 11 14 48 5c eb    	vsubps zmm13,zmm13,zmm27
  a3c3c8:	62 21 0c 40 5c de    	vsubps zmm27,zmm30,zmm22
  a3c3ce:	62 b1 0c 40 58 ee    	vaddps zmm5,zmm30,zmm22
  a3c3d4:	62 91 04 48 58 c4    	vaddps zmm0,zmm15,zmm28
  a3c3da:	62 01 04 48 5c f4    	vsubps zmm30,zmm15,zmm28
  a3c3e0:	62 41 34 48 58 e3    	vaddps zmm28,zmm9,zmm11
  a3c3e6:	62 51 34 48 5c cb    	vsubps zmm9,zmm9,zmm11
  a3c3ec:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm9
  a3c3f3:	01 
  a3c3f4:	62 31 4c 48 58 db    	vaddps zmm11,zmm6,zmm19
  a3c3fa:	62 a1 4c 48 5c f3    	vsubps zmm22,zmm6,zmm19
  a3c400:	62 91 74 40 58 f7    	vaddps zmm6,zmm17,zmm31
  a3c406:	62 11 74 40 5c cf    	vsubps zmm9,zmm17,zmm31
  a3c40c:	62 71 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm9
  a3c413:	62 e1 64 48 58 c9    	vaddps zmm17,zmm3,zmm1
  a3c419:	62 e1 64 48 5c d9    	vsubps zmm19,zmm3,zmm1
  a3c41f:	62 b1 6c 48 58 dc    	vaddps zmm3,zmm2,zmm20
  a3c425:	62 21 6c 48 5c fc    	vsubps zmm31,zmm2,zmm20
  a3c42b:	62 81 5c 48 58 e3    	vaddps zmm20,zmm4,zmm27
  a3c431:	62 01 5c 48 5c db    	vsubps zmm27,zmm4,zmm27
  a3c437:	62 d1 44 40 58 d4    	vaddps zmm2,zmm23,zmm12
  a3c43d:	62 c1 44 40 5c fc    	vsubps zmm23,zmm23,zmm12
  a3c443:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a3c44a:	ff 
  a3c44b:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x80]
  a3c452:	fe 
  a3c453:	62 71 74 48 58 e4    	vaddps zmm12,zmm1,zmm4
  a3c459:	62 f1 74 48 5c e4    	vsubps zmm4,zmm1,zmm4
  a3c45f:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a3c466:	03 
  a3c467:	62 71 2c 40 58 c9    	vaddps zmm9,zmm26,zmm1
  a3c46d:	62 01 74 48 5c d2    	vsubps zmm26,zmm1,zmm26
  a3c473:	62 31 34 40 58 fd    	vaddps zmm15,zmm25,zmm21
  a3c479:	62 b1 34 40 5c cd    	vsubps zmm1,zmm25,zmm21
  a3c47f:	62 41 7c 40 58 ce    	vaddps zmm25,zmm16,zmm14
  a3c485:	62 c1 7c 40 5c ee    	vsubps zmm21,zmm16,zmm14
  a3c48b:	62 51 3c 40 58 f2    	vaddps zmm14,zmm24,zmm10
  a3c491:	62 41 3c 40 5c c2    	vsubps zmm24,zmm24,zmm10
  a3c497:	62 c1 6c 40 58 c0    	vaddps zmm16,zmm18,zmm8
  a3c49d:	62 51 6c 40 5c d0    	vsubps zmm10,zmm18,zmm8
  a3c4a3:	62 81 44 48 58 d5    	vaddps zmm18,zmm7,zmm29
  a3c4a9:	62 91 44 48 5c fd    	vsubps zmm7,zmm7,zmm29
  a3c4af:	62 71 14 48 5c c5    	vsubps zmm8,zmm13,zmm5
  a3c4b5:	62 f1 14 48 58 ed    	vaddps zmm5,zmm13,zmm5
  a3c4bb:	62 61 7c 48 28 2d bb 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff68aabb]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3c4c2:	aa 68 ff 
  a3c4c5:	62 92 15 40 7f c6    	vpermt2ps zmm0,zmm29,zmm30
  a3c4cb:	62 32 15 40 7f de    	vpermt2ps zmm11,zmm29,zmm22
  a3c4d1:	62 a2 15 40 7f cb    	vpermt2ps zmm17,zmm29,zmm19
  a3c4d7:	62 82 15 40 7f e3    	vpermt2ps zmm20,zmm29,zmm27
  a3c4dd:	62 72 15 40 7f e4    	vpermt2ps zmm12,zmm29,zmm4
  a3c4e3:	62 72 15 40 7f f9    	vpermt2ps zmm15,zmm29,zmm1
  a3c4e9:	62 12 15 40 7f f0    	vpermt2ps zmm14,zmm29,zmm24
  a3c4ef:	62 e2 15 40 7f d7    	vpermt2ps zmm18,zmm29,zmm7
  a3c4f5:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a3c4fb:	62 e1 7c 48 28 1d fb 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff68a9fb]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a3c502:	a9 68 ff 
  a3c505:	62 d2 65 40 7f e4    	vpermt2ps zmm4,zmm19,zmm12
  a3c50b:	62 e1 7c 48 28 35 2b 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff68aa2b]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a3c512:	aa 68 ff 
  a3c515:	62 d2 4d 40 7f c4    	vpermt2ps zmm0,zmm22,zmm12
  a3c51b:	62 d1 7c 48 28 fb    	vmovaps zmm7,zmm11
  a3c521:	62 d2 65 40 7f ff    	vpermt2ps zmm7,zmm19,zmm15
  a3c527:	62 52 4d 40 7f df    	vpermt2ps zmm11,zmm22,zmm15
  a3c52d:	62 31 7c 48 28 e1    	vmovaps zmm12,zmm17
  a3c533:	62 52 65 40 7f e6    	vpermt2ps zmm12,zmm19,zmm14
  a3c539:	62 c2 4d 40 7f ce    	vpermt2ps zmm17,zmm22,zmm14
  a3c53f:	62 b1 fd 48 14 c9    	vunpcklpd zmm1,zmm0,zmm17
  a3c545:	62 b1 7c 48 28 c4    	vmovaps zmm0,zmm20
  a3c54b:	62 b2 65 40 7f c2    	vpermt2ps zmm0,zmm19,zmm18
  a3c551:	62 a2 4d 40 7f e2    	vpermt2ps zmm20,zmm22,zmm18
  a3c557:	62 31 a5 48 14 fc    	vunpcklpd zmm15,zmm11,zmm20
  a3c55d:	62 51 dd 48 14 f4    	vunpcklpd zmm14,zmm4,zmm12
  a3c563:	62 51 dd 48 15 dc    	vunpckhpd zmm11,zmm4,zmm12
  a3c569:	62 f1 c5 48 14 e0    	vunpcklpd zmm4,zmm7,zmm0
  a3c56f:	62 f1 c5 48 15 c0    	vunpckhpd zmm0,zmm7,zmm0
  a3c575:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a3c57b:	62 71 7c 48 28 25 7b 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff68a87b]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3c582:	a8 68 ff 
  a3c585:	62 e2 1d 48 7f cc    	vpermt2ps zmm17,zmm12,zmm4
  a3c58b:	62 e1 7c 48 28 15 ab 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff68a8ab]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a3c592:	a8 68 ff 
  a3c595:	62 72 6d 40 7f f4    	vpermt2ps zmm14,zmm18,zmm4
  a3c59b:	62 51 7c 48 28 eb    	vmovaps zmm13,zmm11
  a3c5a1:	62 72 1d 48 7f e8    	vpermt2ps zmm13,zmm12,zmm0
  a3c5a7:	62 72 6d 40 7f d8    	vpermt2ps zmm11,zmm18,zmm0
  a3c5ad:	62 d2 1d 48 7f cf    	vpermt2ps zmm1,zmm12,zmm15
  a3c5b3:	62 62 15 40 7f 64 24 	vpermt2ps zmm28,zmm29,ZMMWORD PTR [rsp+0x40]
  a3c5ba:	01 
  a3c5bb:	62 f2 15 40 7f 34 24 	vpermt2ps zmm6,zmm29,ZMMWORD PTR [rsp]
  a3c5c2:	62 92 15 40 7f df    	vpermt2ps zmm3,zmm29,zmm31
  a3c5c8:	62 b2 15 40 7f d7    	vpermt2ps zmm2,zmm29,zmm23
  a3c5ce:	62 12 15 40 7f ca    	vpermt2ps zmm9,zmm29,zmm26
  a3c5d4:	62 22 15 40 7f cd    	vpermt2ps zmm25,zmm29,zmm21
  a3c5da:	62 c2 15 40 7f c2    	vpermt2ps zmm16,zmm29,zmm10
  a3c5e0:	62 72 15 40 7f c5    	vpermt2ps zmm8,zmm29,zmm5
  a3c5e6:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a3c5ec:	62 d2 65 40 7f c1    	vpermt2ps zmm0,zmm19,zmm9
  a3c5f2:	62 42 4d 40 7f e1    	vpermt2ps zmm28,zmm22,zmm9
  a3c5f8:	62 f1 7c 48 28 e6    	vmovaps zmm4,zmm6
  a3c5fe:	62 92 65 40 7f e1    	vpermt2ps zmm4,zmm19,zmm25
  a3c604:	62 92 4d 40 7f f1    	vpermt2ps zmm6,zmm22,zmm25
  a3c60a:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a3c610:	62 b2 65 40 7f e8    	vpermt2ps zmm5,zmm19,zmm16
  a3c616:	62 b2 4d 40 7f d8    	vpermt2ps zmm3,zmm22,zmm16
  a3c61c:	62 f1 9d 40 14 db    	vunpcklpd zmm3,zmm28,zmm3
  a3c622:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a3c628:	62 d2 65 40 7f f8    	vpermt2ps zmm7,zmm19,zmm8
  a3c62e:	62 d2 4d 40 7f d0    	vpermt2ps zmm2,zmm22,zmm8
  a3c634:	62 f1 cd 48 14 d2    	vunpcklpd zmm2,zmm6,zmm2
  a3c63a:	62 f1 fd 48 14 f5    	vunpcklpd zmm6,zmm0,zmm5
  a3c640:	62 f1 fd 48 15 c5    	vunpckhpd zmm0,zmm0,zmm5
  a3c646:	62 f1 dd 48 14 ef    	vunpcklpd zmm5,zmm4,zmm7
  a3c64c:	62 f1 dd 48 15 ff    	vunpckhpd zmm7,zmm4,zmm7
  a3c652:	62 f1 7c 48 28 e6    	vmovaps zmm4,zmm6
  a3c658:	62 f2 1d 48 7f e5    	vpermt2ps zmm4,zmm12,zmm5
  a3c65e:	62 f2 6d 40 7f f5    	vpermt2ps zmm6,zmm18,zmm5
  a3c664:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a3c66a:	62 f2 1d 48 7f ef    	vpermt2ps zmm5,zmm12,zmm7
  a3c670:	62 f2 6d 40 7f c7    	vpermt2ps zmm0,zmm18,zmm7
  a3c676:	62 f2 1d 48 7f da    	vpermt2ps zmm3,zmm12,zmm2
  a3c67c:	62 f1 7c 48 10 51 02 	vmovups zmm2,ZMMWORD PTR [rcx+0x80]
  a3c683:	62 f1 7c 48 10 79 03 	vmovups zmm7,ZMMWORD PTR [rcx+0xc0]
  a3c68a:	62 71 7c 48 10 41 04 	vmovups zmm8,ZMMWORD PTR [rcx+0x100]
  a3c691:	62 71 7c 48 10 49 05 	vmovups zmm9,ZMMWORD PTR [rcx+0x140]
  a3c698:	62 71 4c 48 59 d2    	vmulps zmm10,zmm6,zmm2
  a3c69e:	62 72 0d 48 b8 d7    	vfmadd231ps zmm10,zmm14,zmm7
  a3c6a4:	62 f1 0c 48 59 d2    	vmulps zmm2,zmm14,zmm2
  a3c6aa:	62 71 7c 48 10 61 09 	vmovups zmm12,ZMMWORD PTR [rcx+0x240]
  a3c6b1:	62 f2 45 48 bc d6    	vfnmadd231ps zmm2,zmm7,zmm6
  a3c6b7:	62 f1 7c 48 10 71 08 	vmovups zmm6,ZMMWORD PTR [rcx+0x200]
  a3c6be:	62 f1 64 48 59 fe    	vmulps zmm7,zmm3,zmm6
  a3c6c4:	62 d2 75 48 b8 fc    	vfmadd231ps zmm7,zmm1,zmm12
  a3c6ca:	62 f1 74 48 59 ce    	vmulps zmm1,zmm1,zmm6
  a3c6d0:	62 d1 54 48 59 f0    	vmulps zmm6,zmm5,zmm8
  a3c6d6:	62 d2 15 48 b8 f1    	vfmadd231ps zmm6,zmm13,zmm9
  a3c6dc:	62 f2 1d 48 bc cb    	vfnmadd231ps zmm1,zmm12,zmm3
  a3c6e2:	62 f1 7c 48 10 59 07 	vmovups zmm3,ZMMWORD PTR [rcx+0x1c0]
  a3c6e9:	62 71 7c 48 10 61 06 	vmovups zmm12,ZMMWORD PTR [rcx+0x180]
  a3c6f0:	62 51 14 48 59 c0    	vmulps zmm8,zmm13,zmm8
  a3c6f6:	62 51 7c 48 59 ec    	vmulps zmm13,zmm0,zmm12
  a3c6fc:	62 72 25 48 b8 eb    	vfmadd231ps zmm13,zmm11,zmm3
  a3c702:	62 72 35 48 bc c5    	vfnmadd231ps zmm8,zmm9,zmm5
  a3c708:	62 d1 4c 48 58 ed    	vaddps zmm5,zmm6,zmm13
  a3c70e:	62 71 2c 48 58 cf    	vaddps zmm9,zmm10,zmm7
  a3c714:	62 51 24 48 59 dc    	vmulps zmm11,zmm11,zmm12
  a3c71a:	62 72 7d 48 18 3d c4 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff638fc4]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a3c721:	8f 63 ff 
  a3c724:	62 51 7c 48 28 e7    	vmovaps zmm12,zmm15
  a3c72a:	62 72 35 48 a8 e4    	vfmadd213ps zmm12,zmm9,zmm4
  a3c730:	62 e2 7d 48 18 05 0a 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff638f0a]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a3c737:	8f 63 ff 
  a3c73a:	62 32 55 48 bc e0    	vfnmadd231ps zmm12,zmm5,zmm16
  a3c740:	62 72 65 48 bc d8    	vfnmadd231ps zmm11,zmm3,zmm0
  a3c746:	62 f1 6c 48 5c d9    	vsubps zmm3,zmm2,zmm1
  a3c74c:	62 51 3c 48 5c f3    	vsubps zmm14,zmm8,zmm11
  a3c752:	62 51 3c 48 58 c3    	vaddps zmm8,zmm8,zmm11
  a3c758:	62 e2 7d 48 18 15 f6 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff638ff6]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a3c75f:	8f 63 ff 
  a3c762:	62 31 0c 48 59 da    	vmulps zmm11,zmm14,zmm18
  a3c768:	62 e2 7d 48 18 1d 2e 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff638c2e]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a3c76f:	8c 63 ff 
  a3c772:	62 32 65 48 b8 db    	vfmadd231ps zmm11,zmm3,zmm19
  a3c778:	62 f1 6c 48 58 c9    	vaddps zmm1,zmm2,zmm1
  a3c77e:	62 d1 1c 48 58 c3    	vaddps zmm0,zmm12,zmm11
  a3c784:	62 f1 2c 48 5c d7    	vsubps zmm2,zmm10,zmm7
  a3c78a:	62 d1 4c 48 5c f5    	vsubps zmm6,zmm6,zmm13
  a3c790:	62 b1 4c 48 59 fa    	vmulps zmm7,zmm6,zmm18
  a3c796:	62 b2 6d 48 b8 fb    	vfmadd231ps zmm7,zmm2,zmm19
  a3c79c:	62 31 7c 48 28 d0    	vmovaps zmm10,zmm16
  a3c7a2:	62 72 35 48 ac d4    	vfnmadd213ps zmm10,zmm9,zmm4
  a3c7a8:	62 52 55 48 b8 d7    	vfmadd231ps zmm10,zmm5,zmm15
  a3c7ae:	62 b1 64 48 59 da    	vmulps zmm3,zmm3,zmm18
  a3c7b4:	62 d2 65 40 bc de    	vfnmadd231ps zmm3,zmm19,zmm14
  a3c7ba:	62 71 2c 48 58 eb    	vaddps zmm13,zmm10,zmm3
  a3c7c0:	62 b1 6c 48 59 d2    	vmulps zmm2,zmm2,zmm18
  a3c7c6:	62 f2 65 40 bc d6    	vfnmadd231ps zmm2,zmm19,zmm6
  a3c7cc:	62 b1 7c 48 28 f0    	vmovaps zmm6,zmm16
  a3c7d2:	62 b2 75 48 ac f1    	vfnmadd213ps zmm6,zmm1,zmm17
  a3c7d8:	62 d2 3d 48 b8 f7    	vfmadd231ps zmm6,zmm8,zmm15
  a3c7de:	62 f1 2c 48 5c db    	vsubps zmm3,zmm10,zmm3
  a3c7e4:	62 71 4c 48 5c d2    	vsubps zmm10,zmm6,zmm2
  a3c7ea:	62 f1 4c 48 58 d2    	vaddps zmm2,zmm6,zmm2
  a3c7f0:	62 d1 7c 48 28 f7    	vmovaps zmm6,zmm15
  a3c7f6:	62 b2 75 48 a8 f1    	vfmadd213ps zmm6,zmm1,zmm17
  a3c7fc:	62 b2 3d 48 bc f0    	vfnmadd231ps zmm6,zmm8,zmm16
  a3c802:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a3c808:	62 71 4c 48 5c e7    	vsubps zmm12,zmm6,zmm7
  a3c80e:	62 f1 4c 48 58 f7    	vaddps zmm6,zmm6,zmm7
  a3c814:	62 f1 34 48 58 e4    	vaddps zmm4,zmm9,zmm4
  a3c81a:	62 f1 5c 48 58 e5    	vaddps zmm4,zmm4,zmm5
  a3c820:	62 f1 74 40 58 c9    	vaddps zmm1,zmm17,zmm1
  a3c826:	62 d1 74 48 58 c8    	vaddps zmm1,zmm1,zmm8
  a3c82c:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a3c832:	62 f1 7c 48 28 3d 44 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff655044]        # 91880 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ed30>
  a3c839:	50 65 ff 
  a3c83c:	62 f2 45 48 7f e9    	vpermt2ps zmm5,zmm7,zmm1
  a3c842:	62 71 7c 48 28 05 74 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff655074]        # 918c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ed70>
  a3c849:	50 65 ff 
  a3c84c:	62 f2 3d 48 7f e1    	vpermt2ps zmm4,zmm8,zmm1
  a3c852:	62 f1 7c 48 11 24 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm4
  a3c859:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm5
  a3c860:	01 
  a3c861:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a3c867:	62 f2 45 48 7f ce    	vpermt2ps zmm1,zmm7,zmm6
  a3c86d:	62 72 3d 48 7f de    	vpermt2ps zmm11,zmm8,zmm6
  a3c873:	62 71 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm11
  a3c87a:	02 
  a3c87b:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm1
  a3c882:	03 
  a3c883:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a3c889:	62 f2 45 48 7f ca    	vpermt2ps zmm1,zmm7,zmm2
  a3c88f:	62 f2 3d 48 7f da    	vpermt2ps zmm3,zmm8,zmm2
  a3c895:	62 f1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm3
  a3c89c:	04 
  a3c89d:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm1
  a3c8a4:	05 
  a3c8a5:	62 d1 7c 48 28 cd    	vmovaps zmm1,zmm13
  a3c8ab:	62 d2 45 48 7f ca    	vpermt2ps zmm1,zmm7,zmm10
  a3c8b1:	62 52 3d 48 7f ea    	vpermt2ps zmm13,zmm8,zmm10
  a3c8b7:	62 71 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm13
  a3c8be:	06 
  a3c8bf:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm1
  a3c8c6:	07 
  a3c8c7:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a3c8cd:	62 d2 45 48 7f cc    	vpermt2ps zmm1,zmm7,zmm12
  a3c8d3:	62 d2 3d 48 7f c4    	vpermt2ps zmm0,zmm8,zmm12
  a3c8d9:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm0
  a3c8e0:	08 
  a3c8e1:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm1
  a3c8e8:	09 
  a3c8e9:	48 81 c2 80 02 00 00 	add    rdx,0x280
  a3c8f0:	48 39 d0             	cmp    rax,rdx
  a3c8f3:	0f 85 67 f3 ff ff    	jne    a3bc60 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a3c8f9:	48 81 c4 48 04 00 00 	add    rsp,0x448
  a3c900:	c5 f8 77             	vzeroupper
  a3c903:	c3                   	ret
