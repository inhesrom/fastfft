
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a5eb40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a5eb40:	48 81 ec 88 04 00 00 	sub    rsp,0x488
  a5eb47:	c5 fb 10 47 20       	vmovsd xmm0,QWORD PTR [rdi+0x20]
  a5eb4c:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a5eb50:	c5 fc 10 5f 28       	vmovups ymm3,YMMWORD PTR [rdi+0x28]
  a5eb55:	c5 fc 10 67 50       	vmovups ymm4,YMMWORD PTR [rdi+0x50]
  a5eb5a:	c5 fc 10 6f 78       	vmovups ymm5,YMMWORD PTR [rdi+0x78]
  a5eb5f:	62 f3 f5 48 1a c8 01 	vinsertf64x4 zmm1,zmm1,ymm0,0x1
  a5eb66:	62 01 24 00 57 db    	vxorps xmm27,xmm27,xmm27
  a5eb6c:	62 f1 7c 48 28 15 0a 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff634e0a]        # 93980 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20e30>
  a5eb73:	4e 63 ff 
  a5eb76:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a5eb7c:	62 92 6d 48 7f c3    	vpermt2ps zmm0,zmm2,zmm27
  a5eb82:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a5eb89:	05 
  a5eb8a:	62 f1 7c 48 28 05 2c 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff634e2c]        # 939c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20e70>
  a5eb91:	4e 63 ff 
  a5eb94:	62 92 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm27
  a5eb9a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a5eba1:	ff 
  a5eba2:	c5 fb 10 4f 48       	vmovsd xmm1,QWORD PTR [rdi+0x48]
  a5eba7:	62 f3 e5 48 1a d9 01 	vinsertf64x4 zmm3,zmm3,ymm1,0x1
  a5ebae:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a5ebb4:	62 92 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm27
  a5ebba:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a5ebc0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm1
  a5ebc7:	07 
  a5ebc8:	62 92 7d 48 7f db    	vpermt2ps zmm3,zmm0,zmm27
  a5ebce:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a5ebd4:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm3
  a5ebdb:	06 
  a5ebdc:	c5 fb 10 4f 70       	vmovsd xmm1,QWORD PTR [rdi+0x70]
  a5ebe1:	62 f3 dd 48 1a c9 01 	vinsertf64x4 zmm1,zmm4,ymm1,0x1
  a5ebe8:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a5ebee:	62 92 6d 48 7f db    	vpermt2ps zmm3,zmm2,zmm27
  a5ebf4:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a5ebfb:	fe 
  a5ebfc:	62 92 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm27
  a5ec02:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a5ec09:	04 
  a5ec0a:	c5 fb 10 8f 98 00 00 	vmovsd xmm1,QWORD PTR [rdi+0x98]
  a5ec11:	00 
  a5ec12:	62 e3 d5 48 1a c1 01 	vinsertf64x4 zmm16,zmm5,ymm1,0x1
  a5ec19:	62 b1 7c 48 28 c8    	vmovaps zmm1,zmm16
  a5ec1f:	62 92 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm27
  a5ec25:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a5ec2c:	0f 
  a5ec2d:	62 82 7d 48 7f c3    	vpermt2ps zmm16,zmm0,zmm27
  a5ec33:	c5 fb 10 8f c0 00 00 	vmovsd xmm1,QWORD PTR [rdi+0xc0]
  a5ec3a:	00 
  a5ec3b:	c5 fc 10 9f a0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xa0]
  a5ec42:	00 
  a5ec43:	62 f3 e5 48 1a c9 01 	vinsertf64x4 zmm1,zmm3,ymm1,0x1
  a5ec4a:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a5ec50:	62 92 6d 48 7f db    	vpermt2ps zmm3,zmm2,zmm27
  a5ec56:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm3
  a5ec5d:	02 
  a5ec5e:	62 92 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm27
  a5ec64:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a5ec6b:	03 
  a5ec6c:	c5 fb 10 8f e8 00 00 	vmovsd xmm1,QWORD PTR [rdi+0xe8]
  a5ec73:	00 
  a5ec74:	c5 fc 10 9f c8 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xc8]
  a5ec7b:	00 
  a5ec7c:	62 e3 e5 48 1a d9 01 	vinsertf64x4 zmm19,zmm3,ymm1,0x1
  a5ec83:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a5ec89:	62 92 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm27
  a5ec8f:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a5ec95:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a5ec9c:	09 
  a5ec9d:	62 82 7d 48 7f db    	vpermt2ps zmm19,zmm0,zmm27
  a5eca3:	c5 fb 10 8f 10 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x110]
  a5ecaa:	00 
  a5ecab:	c5 fc 10 9f f0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xf0]
  a5ecb2:	00 
  a5ecb3:	62 f3 e5 48 1a c9 01 	vinsertf64x4 zmm1,zmm3,ymm1,0x1
  a5ecba:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a5ecc0:	62 92 6d 48 7f db    	vpermt2ps zmm3,zmm2,zmm27
  a5ecc6:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a5eccd:	62 92 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm27
  a5ecd3:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a5ecda:	01 
  a5ecdb:	c5 fb 10 8f 38 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x138]
  a5ece2:	00 
  a5ece3:	c5 fc 10 9f 18 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x118]
  a5ecea:	00 
  a5eceb:	62 e3 e5 48 1a c9 01 	vinsertf64x4 zmm17,zmm3,ymm1,0x1
  a5ecf2:	62 a1 7c 48 28 e9    	vmovaps zmm21,zmm17
  a5ecf8:	62 82 6d 48 7f eb    	vpermt2ps zmm21,zmm2,zmm27
  a5ecfe:	62 82 7d 48 7f cb    	vpermt2ps zmm17,zmm0,zmm27
  a5ed04:	c5 fb 10 8f 60 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x160]
  a5ed0b:	00 
  a5ed0c:	c5 fc 10 9f 40 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x140]
  a5ed13:	00 
  a5ed14:	62 e3 e5 48 1a d1 01 	vinsertf64x4 zmm18,zmm3,ymm1,0x1
  a5ed1b:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a5ed21:	62 92 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm27
  a5ed27:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm1
  a5ed2e:	11 
  a5ed2f:	62 82 7d 48 7f d3    	vpermt2ps zmm18,zmm0,zmm27
  a5ed35:	c5 fb 10 8f 88 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x188]
  a5ed3c:	00 
  a5ed3d:	c5 fc 10 9f 68 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x168]
  a5ed44:	00 
  a5ed45:	62 e3 e5 48 1a f1 01 	vinsertf64x4 zmm22,zmm3,ymm1,0x1
  a5ed4c:	62 b1 7c 48 28 ce    	vmovaps zmm1,zmm22
  a5ed52:	62 92 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm27
  a5ed58:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a5ed5e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a5ed65:	08 
  a5ed66:	62 82 7d 48 7f f3    	vpermt2ps zmm22,zmm0,zmm27
  a5ed6c:	c5 fb 10 8f b0 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x1b0]
  a5ed73:	00 
  a5ed74:	c5 fc 10 9f 90 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x190]
  a5ed7b:	00 
  a5ed7c:	62 e3 e5 48 1a e1 01 	vinsertf64x4 zmm20,zmm3,ymm1,0x1
  a5ed83:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  a5ed89:	62 92 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm27
  a5ed8f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm1
  a5ed96:	10 
  a5ed97:	62 82 7d 48 7f e3    	vpermt2ps zmm20,zmm0,zmm27
  a5ed9d:	c5 fb 10 8f d8 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x1d8]
  a5eda4:	00 
  a5eda5:	c5 fc 10 9f b8 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x1b8]
  a5edac:	00 
  a5edad:	62 63 e5 48 1a c9 01 	vinsertf64x4 zmm25,zmm3,ymm1,0x1
  a5edb4:	62 01 7c 48 28 c1    	vmovaps zmm24,zmm25
  a5edba:	62 02 6d 48 7f c3    	vpermt2ps zmm24,zmm2,zmm27
  a5edc0:	62 02 7d 48 7f cb    	vpermt2ps zmm25,zmm0,zmm27
  a5edc6:	c5 fb 10 8f 00 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x200]
  a5edcd:	00 
  a5edce:	c5 fc 10 9f e0 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x1e0]
  a5edd5:	00 
  a5edd6:	62 e3 e5 48 1a f9 01 	vinsertf64x4 zmm23,zmm3,ymm1,0x1
  a5eddd:	c5 fb 10 8f 28 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x228]
  a5ede4:	00 
  a5ede5:	c5 fc 10 9f 08 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x208]
  a5edec:	00 
  a5eded:	62 63 e5 48 1a e1 01 	vinsertf64x4 zmm28,zmm3,ymm1,0x1
  a5edf4:	c5 fb 10 8f 50 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x250]
  a5edfb:	00 
  a5edfc:	c5 fc 10 9f 30 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x230]
  a5ee03:	00 
  a5ee04:	62 63 e5 48 1a d1 01 	vinsertf64x4 zmm26,zmm3,ymm1,0x1
  a5ee0b:	c5 fb 10 8f 78 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x278]
  a5ee12:	00 
  a5ee13:	c5 fc 10 9f 58 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x258]
  a5ee1a:	00 
  a5ee1b:	62 63 e5 48 1a f9 01 	vinsertf64x4 zmm31,zmm3,ymm1,0x1
  a5ee22:	62 21 7c 48 28 ef    	vmovaps zmm29,zmm23
  a5ee28:	62 02 6d 48 7f eb    	vpermt2ps zmm29,zmm2,zmm27
  a5ee2e:	62 82 7d 48 7f fb    	vpermt2ps zmm23,zmm0,zmm27
  a5ee34:	62 11 7c 48 28 fc    	vmovaps zmm15,zmm28
  a5ee3a:	62 12 6d 48 7f fb    	vpermt2ps zmm15,zmm2,zmm27
  a5ee40:	62 02 7d 48 7f e3    	vpermt2ps zmm28,zmm0,zmm27
  a5ee46:	62 01 7c 48 28 f2    	vmovaps zmm30,zmm26
  a5ee4c:	62 02 6d 48 7f f3    	vpermt2ps zmm30,zmm2,zmm27
  a5ee52:	62 02 7d 48 7f d3    	vpermt2ps zmm26,zmm0,zmm27
  a5ee58:	62 92 05 40 77 d3    	vpermi2ps zmm2,zmm31,zmm27
  a5ee5e:	62 02 7d 48 7f fb    	vpermt2ps zmm31,zmm0,zmm27
  a5ee64:	62 31 4c 48 5c f6    	vsubps zmm14,zmm6,zmm22
  a5ee6a:	62 51 54 48 5c e7    	vsubps zmm12,zmm5,zmm15
  a5ee70:	62 d1 0c 48 58 f4    	vaddps zmm6,zmm14,zmm12
  a5ee76:	62 51 44 48 5c d8    	vsubps zmm11,zmm7,zmm8
  a5ee7c:	62 31 1c 40 5c d3    	vsubps zmm10,zmm28,zmm19
  a5ee82:	62 51 2c 48 58 c3    	vaddps zmm8,zmm10,zmm11
  a5ee88:	62 72 7d 48 18 0d d2 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff6167d2]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a5ee8f:	67 61 ff 
  a5ee92:	62 d1 3c 48 59 c1    	vmulps zmm0,zmm8,zmm9
  a5ee98:	62 f2 7d 48 18 3d 5e 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff61685e]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a5ee9f:	68 61 ff 
  a5eea2:	62 f2 4d 48 b8 c7    	vfmadd231ps zmm0,zmm6,zmm7
  a5eea8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a5eeaf:	0e 
  a5eeb0:	62 f1 3c 48 59 c7    	vmulps zmm0,zmm8,zmm7
  a5eeb6:	62 f2 35 48 bc c6    	vfnmadd231ps zmm0,zmm9,zmm6
  a5eebc:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a5eec3:	0d 
  a5eec4:	62 91 7c 40 5c e9    	vsubps zmm5,zmm16,zmm25
  a5eeca:	62 f1 54 40 5c e2    	vsubps zmm4,zmm21,zmm2
  a5eed0:	62 f1 54 48 58 c4    	vaddps zmm0,zmm5,zmm4
  a5eed6:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x3c0]
  a5eedd:	0f 
  a5eede:	62 91 14 48 5c d8    	vsubps zmm3,zmm13,zmm24
  a5eee4:	62 b1 04 40 5c c9    	vsubps zmm1,zmm31,zmm17
  a5eeea:	62 f1 74 48 58 f3    	vaddps zmm6,zmm1,zmm3
  a5eef0:	62 61 4c 48 59 df    	vmulps zmm27,zmm6,zmm7
  a5eef6:	62 42 7d 48 b8 d9    	vfmadd231ps zmm27,zmm0,zmm9
  a5eefc:	62 d1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm9
  a5ef02:	62 f2 45 48 bc f0    	vfnmadd231ps zmm6,zmm7,zmm0
  a5ef08:	62 d1 0c 48 5c c4    	vsubps zmm0,zmm14,zmm12
  a5ef0e:	62 51 24 48 5c d2    	vsubps zmm10,zmm11,zmm10
  a5ef14:	62 f1 54 48 5c ec    	vsubps zmm5,zmm5,zmm4
  a5ef1a:	62 71 64 48 5c d9    	vsubps zmm11,zmm3,zmm1
  a5ef20:	62 f1 2c 48 59 cf    	vmulps zmm1,zmm10,zmm7
  a5ef26:	62 d2 7d 48 b8 c9    	vfmadd231ps zmm1,zmm0,zmm9
  a5ef2c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm1
  a5ef33:	0c 
  a5ef34:	62 d1 2c 48 59 c9    	vmulps zmm1,zmm10,zmm9
  a5ef3a:	62 f2 45 48 bc c8    	vfnmadd231ps zmm1,zmm7,zmm0
  a5ef40:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm1
  a5ef47:	0a 
  a5ef48:	62 d1 24 48 59 c1    	vmulps zmm0,zmm11,zmm9
  a5ef4e:	62 f2 55 48 b8 c7    	vfmadd231ps zmm0,zmm5,zmm7
  a5ef54:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a5ef5b:	0b 
  a5ef5c:	62 51 54 48 59 c1    	vmulps zmm8,zmm5,zmm9
  a5ef62:	62 72 25 48 bc c7    	vfnmadd231ps zmm8,zmm11,zmm7
  a5ef68:	62 f1 4c 40 58 6c 24 	vaddps zmm5,zmm22,ZMMWORD PTR [rsp+0x180]
  a5ef6f:	06 
  a5ef70:	62 91 64 40 58 fc    	vaddps zmm7,zmm19,zmm28
  a5ef76:	62 11 7c 40 58 c9    	vaddps zmm9,zmm16,zmm25
  a5ef7c:	62 11 74 40 58 d7    	vaddps zmm10,zmm17,zmm31
  a5ef82:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a5ef89:	07 
  a5ef8a:	62 71 7c 48 58 5c 24 	vaddps zmm11,zmm0,ZMMWORD PTR [rsp+0x200]
  a5ef91:	08 
  a5ef92:	62 71 04 48 58 64 24 	vaddps zmm12,zmm15,ZMMWORD PTR [rsp+0x240]
  a5ef99:	09 
  a5ef9a:	62 11 14 48 58 e8    	vaddps zmm13,zmm13,zmm24
  a5efa0:	62 f1 54 40 58 d2    	vaddps zmm2,zmm21,zmm2
  a5efa6:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a5efad:	ff 
  a5efae:	62 31 7c 48 58 fa    	vaddps zmm15,zmm0,zmm18
  a5efb4:	62 a1 7c 48 5c c2    	vsubps zmm16,zmm0,zmm18
  a5efba:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a5efc1:	02 
  a5efc2:	62 81 7c 48 58 cd    	vaddps zmm17,zmm0,zmm29
  a5efc8:	62 81 7c 48 5c d5    	vsubps zmm18,zmm0,zmm29
  a5efce:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a5efd5:	04 
  a5efd6:	62 a1 7c 48 58 ec    	vaddps zmm21,zmm0,zmm20
  a5efdc:	62 a1 7c 48 5c e4    	vsubps zmm20,zmm0,zmm20
  a5efe2:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a5efe9:	fe 
  a5efea:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x400]
  a5eff1:	10 
  a5eff2:	62 e1 7c 48 58 f1    	vaddps zmm22,zmm0,zmm1
  a5eff8:	62 61 7c 48 5c c1    	vsubps zmm24,zmm0,zmm1
  a5effe:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a5f005:	62 01 7c 48 58 ce    	vaddps zmm25,zmm0,zmm30
  a5f00b:	62 01 7c 48 5c e6    	vsubps zmm28,zmm0,zmm30
  a5f011:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a5f018:	01 
  a5f019:	62 01 7c 48 58 ea    	vaddps zmm29,zmm0,zmm26
  a5f01f:	62 81 7c 48 5c da    	vsubps zmm19,zmm0,zmm26
  a5f025:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a5f02c:	05 
  a5f02d:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x440]
  a5f034:	11 
  a5f035:	62 61 7c 48 58 d1    	vaddps zmm26,zmm0,zmm1
  a5f03b:	62 61 7c 48 5c f1    	vsubps zmm30,zmm0,zmm1
  a5f041:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a5f048:	03 
  a5f049:	62 21 7c 48 58 ff    	vaddps zmm31,zmm0,zmm23
  a5f04f:	62 e1 44 40 5c f8    	vsubps zmm23,zmm23,zmm0
  a5f055:	62 91 5c 40 58 c8    	vaddps zmm1,zmm20,zmm24
  a5f05b:	62 a1 3c 40 5c e4    	vsubps zmm20,zmm24,zmm20
  a5f061:	62 21 1c 40 5c c3    	vsubps zmm24,zmm28,zmm19
  a5f067:	62 81 64 40 58 dc    	vaddps zmm19,zmm19,zmm28
  a5f06d:	62 01 04 48 58 e7    	vaddps zmm28,zmm15,zmm31
  a5f073:	62 91 04 48 5c c7    	vsubps zmm0,zmm15,zmm31
  a5f079:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a5f080:	ff 
  a5f081:	62 01 4c 40 58 f9    	vaddps zmm31,zmm22,zmm25
  a5f087:	62 81 4c 40 5c f1    	vsubps zmm22,zmm22,zmm25
  a5f08d:	62 61 54 48 58 cf    	vaddps zmm25,zmm5,zmm7
  a5f093:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a5f099:	62 d1 24 48 58 fc    	vaddps zmm7,zmm11,zmm12
  a5f09f:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a5f0a5:	62 71 14 48 58 e2    	vaddps zmm12,zmm13,zmm2
  a5f0ab:	62 f1 14 48 5c d2    	vsubps zmm2,zmm13,zmm2
  a5f0b1:	62 51 34 48 58 ea    	vaddps zmm13,zmm9,zmm10
  a5f0b7:	62 51 34 48 5c ca    	vsubps zmm9,zmm9,zmm10
  a5f0bd:	62 31 2c 40 58 d1    	vaddps zmm10,zmm26,zmm17
  a5f0c3:	62 b1 2c 40 5c c1    	vsubps zmm0,zmm26,zmm17
  a5f0c9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a5f0d0:	fe 
  a5f0d1:	62 01 54 40 58 d5    	vaddps zmm26,zmm21,zmm29
  a5f0d7:	62 a1 14 40 5c ed    	vsubps zmm21,zmm29,zmm21
  a5f0dd:	62 41 54 48 58 eb    	vaddps zmm29,zmm5,zmm11
  a5f0e3:	62 f1 24 48 5c ed    	vsubps zmm5,zmm11,zmm5
  a5f0e9:	62 72 7d 48 18 1d a9 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff6162a9]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a5f0f0:	62 61 ff 
  a5f0f3:	62 d1 6c 48 5c c1    	vsubps zmm0,zmm2,zmm9
  a5f0f9:	62 f1 34 48 58 d2    	vaddps zmm2,zmm9,zmm2
  a5f0ff:	62 d1 74 48 59 cb    	vmulps zmm1,zmm1,zmm11
  a5f105:	62 51 3c 40 59 cb    	vmulps zmm9,zmm24,zmm11
  a5f10b:	62 c1 5c 40 59 e3    	vmulps zmm20,zmm20,zmm11
  a5f111:	62 c1 64 40 59 db    	vmulps zmm19,zmm19,zmm11
  a5f117:	62 41 14 40 59 c3    	vmulps zmm24,zmm29,zmm11
  a5f11d:	62 d1 7c 48 59 e3    	vmulps zmm4,zmm0,zmm11
  a5f123:	62 d1 54 48 59 db    	vmulps zmm3,zmm5,zmm11
  a5f129:	62 d1 6c 48 59 c3    	vmulps zmm0,zmm2,zmm11
  a5f12f:	62 31 7c 40 58 da    	vaddps zmm11,zmm16,zmm18
  a5f135:	62 a1 7c 40 5c c2    	vsubps zmm16,zmm16,zmm18
  a5f13b:	62 a1 5c 40 5c d3    	vsubps zmm18,zmm20,zmm19
  a5f141:	62 a1 5c 40 58 db    	vaddps zmm19,zmm20,zmm19
  a5f147:	62 81 44 40 58 e6    	vaddps zmm20,zmm23,zmm30
  a5f14d:	62 a1 0c 40 5c ff    	vsubps zmm23,zmm30,zmm23
  a5f153:	62 41 74 48 58 e9    	vaddps zmm29,zmm1,zmm9
  a5f159:	62 e1 34 48 5c c9    	vsubps zmm17,zmm9,zmm1
  a5f15f:	62 11 1c 40 58 fa    	vaddps zmm15,zmm28,zmm26
  a5f165:	62 91 1c 40 5c ca    	vsubps zmm1,zmm28,zmm26
  a5f16b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a5f172:	04 
  a5f173:	62 41 44 48 58 e4    	vaddps zmm28,zmm7,zmm12
  a5f179:	62 d1 44 48 5c cc    	vsubps zmm1,zmm7,zmm12
  a5f17f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a5f186:	03 
  a5f187:	62 11 2c 48 58 f7    	vaddps zmm14,zmm10,zmm31
  a5f18d:	62 91 2c 48 5c cf    	vsubps zmm1,zmm10,zmm31
  a5f193:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a5f19a:	02 
  a5f19b:	62 51 34 40 58 d5    	vaddps zmm10,zmm25,zmm13
  a5f1a1:	62 91 14 48 5c c9    	vsubps zmm1,zmm13,zmm25
  a5f1a7:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a5f1ae:	01 
  a5f1af:	62 01 24 48 58 cd    	vaddps zmm25,zmm11,zmm29
  a5f1b5:	62 01 24 48 5c f5    	vsubps zmm30,zmm11,zmm29
  a5f1bb:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x340]
  a5f1c2:	0d 
  a5f1c3:	62 71 74 48 58 de    	vaddps zmm11,zmm1,zmm6
  a5f1c9:	62 61 74 48 5c ee    	vsubps zmm29,zmm1,zmm6
  a5f1cf:	62 21 5c 40 58 fa    	vaddps zmm31,zmm20,zmm18
  a5f1d5:	62 21 5c 40 5c d2    	vsubps zmm26,zmm20,zmm18
  a5f1db:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x380]
  a5f1e2:	0e 
  a5f1e3:	62 81 74 48 58 e3    	vaddps zmm20,zmm1,zmm27
  a5f1e9:	62 61 24 40 5c d9    	vsubps zmm27,zmm27,zmm1
  a5f1ef:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a5f1f6:	ff 
  a5f1f7:	62 b1 74 48 58 f6    	vaddps zmm6,zmm1,zmm22
  a5f1fd:	62 a1 74 48 5c d6    	vsubps zmm18,zmm1,zmm22
  a5f203:	62 e1 64 48 5c f0    	vsubps zmm22,zmm3,zmm0
  a5f209:	62 71 64 48 58 e8    	vaddps zmm13,zmm3,zmm0
  a5f20f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a5f216:	fe 
  a5f217:	62 f1 54 40 58 e8    	vaddps zmm5,zmm21,zmm0
  a5f21d:	62 a1 7c 48 5c ed    	vsubps zmm21,zmm0,zmm21
  a5f223:	62 f1 3c 40 58 d4    	vaddps zmm2,zmm24,zmm4
  a5f229:	62 01 5c 48 5c c0    	vsubps zmm24,zmm4,zmm24
  a5f22f:	62 b1 7c 40 58 e3    	vaddps zmm4,zmm16,zmm19
  a5f235:	62 31 7c 40 5c e3    	vsubps zmm12,zmm16,zmm19
  a5f23b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x280]
  a5f242:	0a 
  a5f243:	62 d1 7c 48 58 d8    	vaddps zmm3,zmm0,zmm8
  a5f249:	62 51 7c 48 5c c8    	vsubps zmm9,zmm0,zmm8
  a5f24f:	62 b1 44 40 58 c9    	vaddps zmm1,zmm23,zmm17
  a5f255:	62 31 44 40 5c c1    	vsubps zmm8,zmm23,zmm17
  a5f25b:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x300]
  a5f262:	0c 
  a5f263:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x2c0]
  a5f26a:	0b 
  a5f26b:	62 b1 44 48 5c c0    	vsubps zmm0,zmm7,zmm16
  a5f271:	62 b1 44 48 58 f8    	vaddps zmm7,zmm7,zmm16
  a5f277:	62 c1 04 48 58 da    	vaddps zmm19,zmm15,zmm10
  a5f27d:	62 51 04 48 5c d2    	vsubps zmm10,zmm15,zmm10
  a5f283:	62 71 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm10
  a5f28a:	62 81 0c 48 58 c4    	vaddps zmm16,zmm14,zmm28
  a5f290:	62 11 0c 48 5c d4    	vsubps zmm10,zmm14,zmm28
  a5f296:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm10
  a5f29d:	ff 
  a5f29e:	62 a1 34 40 58 fc    	vaddps zmm23,zmm25,zmm20
  a5f2a4:	62 a1 34 40 5c e4    	vsubps zmm20,zmm25,zmm20
  a5f2aa:	62 c1 04 40 58 cb    	vaddps zmm17,zmm31,zmm11
  a5f2b0:	62 51 04 40 5c d3    	vsubps zmm10,zmm31,zmm11
  a5f2b6:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm10
  a5f2bd:	fe 
  a5f2be:	62 71 4c 48 58 d2    	vaddps zmm10,zmm6,zmm2
  a5f2c4:	62 f1 4c 48 5c d2    	vsubps zmm2,zmm6,zmm2
  a5f2ca:	62 21 54 48 58 ce    	vaddps zmm25,zmm5,zmm22
  a5f2d0:	62 b1 54 48 5c ee    	vsubps zmm5,zmm5,zmm22
  a5f2d6:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm5
  a5f2dd:	05 
  a5f2de:	62 71 5c 48 58 d8    	vaddps zmm11,zmm4,zmm0
  a5f2e4:	62 e1 5c 48 5c f0    	vsubps zmm22,zmm4,zmm0
  a5f2ea:	62 f1 74 48 58 e3    	vaddps zmm4,zmm1,zmm3
  a5f2f0:	62 61 74 48 5c fb    	vsubps zmm31,zmm1,zmm3
  a5f2f6:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a5f2fd:	04 
  a5f2fe:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0xc0]
  a5f305:	03 
  a5f306:	62 f1 74 48 58 c3    	vaddps zmm0,zmm1,zmm3
  a5f30c:	62 f1 74 48 5c cb    	vsubps zmm1,zmm1,zmm3
  a5f312:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x80]
  a5f319:	02 
  a5f31a:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x40]
  a5f321:	01 
  a5f322:	62 f1 4c 48 58 dd    	vaddps zmm3,zmm6,zmm5
  a5f328:	62 61 54 48 5c e6    	vsubps zmm28,zmm5,zmm6
  a5f32e:	62 91 0c 40 58 ed    	vaddps zmm5,zmm30,zmm29
  a5f334:	62 01 0c 40 5c f5    	vsubps zmm30,zmm30,zmm29
  a5f33a:	62 01 2c 40 58 eb    	vaddps zmm29,zmm26,zmm27
  a5f340:	62 01 2c 40 5c d3    	vsubps zmm26,zmm26,zmm27
  a5f346:	62 51 6c 40 58 f5    	vaddps zmm14,zmm18,zmm13
  a5f34c:	62 41 6c 40 5c dd    	vsubps zmm27,zmm18,zmm13
  a5f352:	62 81 54 40 58 d0    	vaddps zmm18,zmm21,zmm24
  a5f358:	62 11 54 40 5c e8    	vsubps zmm13,zmm21,zmm24
  a5f35e:	62 51 1c 48 58 f9    	vaddps zmm15,zmm12,zmm9
  a5f364:	62 51 1c 48 5c c9    	vsubps zmm9,zmm12,zmm9
  a5f36a:	62 f1 3c 48 5c f7    	vsubps zmm6,zmm8,zmm7
  a5f370:	62 f1 3c 48 58 ff    	vaddps zmm7,zmm8,zmm7
  a5f376:	62 61 7c 48 28 05 00 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff667c00]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5f37d:	7c 66 ff 
  a5f380:	62 e2 3d 40 7f 1c 24 	vpermt2ps zmm19,zmm24,ZMMWORD PTR [rsp]
  a5f387:	62 a2 3d 40 7f fc    	vpermt2ps zmm23,zmm24,zmm20
  a5f38d:	62 72 3d 40 7f d2    	vpermt2ps zmm10,zmm24,zmm2
  a5f393:	62 32 3d 40 7f de    	vpermt2ps zmm11,zmm24,zmm22
  a5f399:	62 f2 3d 40 7f c1    	vpermt2ps zmm0,zmm24,zmm1
  a5f39f:	62 92 3d 40 7f ee    	vpermt2ps zmm5,zmm24,zmm30
  a5f3a5:	62 12 3d 40 7f f3    	vpermt2ps zmm14,zmm24,zmm27
  a5f3ab:	62 52 3d 40 7f f9    	vpermt2ps zmm15,zmm24,zmm9
  a5f3b1:	62 e2 3d 40 7f 44 24 	vpermt2ps zmm16,zmm24,ZMMWORD PTR [rsp-0x40]
  a5f3b8:	ff 
  a5f3b9:	62 e2 3d 40 7f 4c 24 	vpermt2ps zmm17,zmm24,ZMMWORD PTR [rsp-0x80]
  a5f3c0:	fe 
  a5f3c1:	62 62 3d 40 7f 4c 24 	vpermt2ps zmm25,zmm24,ZMMWORD PTR [rsp+0x140]
  a5f3c8:	05 
  a5f3c9:	62 92 3d 40 7f e7    	vpermt2ps zmm4,zmm24,zmm31
  a5f3cf:	62 92 3d 40 7f dc    	vpermt2ps zmm3,zmm24,zmm28
  a5f3d5:	62 02 3d 40 7f ea    	vpermt2ps zmm29,zmm24,zmm26
  a5f3db:	62 c2 3d 40 7f d5    	vpermt2ps zmm18,zmm24,zmm13
  a5f3e1:	62 f1 7c 48 28 15 15 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff667b15]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5f3e8:	7b 66 ff 
  a5f3eb:	62 f2 3d 40 7f f7    	vpermt2ps zmm6,zmm24,zmm7
  a5f3f1:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a5f3f7:	62 f2 6d 48 7f c8    	vpermt2ps zmm1,zmm2,zmm0
  a5f3fd:	62 f1 7c 48 28 3d 39 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff667b39]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a5f404:	7b 66 ff 
  a5f407:	62 e2 45 48 7f d8    	vpermt2ps zmm19,zmm7,zmm0
  a5f40d:	62 b1 7c 48 28 c7    	vmovaps zmm0,zmm23
  a5f413:	62 f2 6d 48 7f c5    	vpermt2ps zmm0,zmm2,zmm5
  a5f419:	62 e2 45 48 7f fd    	vpermt2ps zmm23,zmm7,zmm5
  a5f41f:	62 d1 7c 48 28 ea    	vmovaps zmm5,zmm10
  a5f425:	62 d2 6d 48 7f ee    	vpermt2ps zmm5,zmm2,zmm14
  a5f42b:	62 52 45 48 7f d6    	vpermt2ps zmm10,zmm7,zmm14
  a5f431:	62 51 e5 40 14 d2    	vunpcklpd zmm10,zmm19,zmm10
  a5f437:	62 51 7c 48 28 c3    	vmovaps zmm8,zmm11
  a5f43d:	62 52 6d 48 7f c7    	vpermt2ps zmm8,zmm2,zmm15
  a5f443:	62 52 45 48 7f df    	vpermt2ps zmm11,zmm7,zmm15
  a5f449:	62 51 c5 40 14 cb    	vunpcklpd zmm9,zmm23,zmm11
  a5f44f:	62 71 f5 48 14 dd    	vunpcklpd zmm11,zmm1,zmm5
  a5f455:	62 f1 f5 48 15 ed    	vunpckhpd zmm5,zmm1,zmm5
  a5f45b:	62 51 fd 48 14 e0    	vunpcklpd zmm12,zmm0,zmm8
  a5f461:	62 d1 fd 48 15 c0    	vunpckhpd zmm0,zmm0,zmm8
  a5f467:	62 31 7c 48 28 c0    	vmovaps zmm8,zmm16
  a5f46d:	62 72 6d 48 7f c3    	vpermt2ps zmm8,zmm2,zmm3
  a5f473:	62 e2 45 48 7f c3    	vpermt2ps zmm16,zmm7,zmm3
  a5f479:	62 b1 7c 48 28 d9    	vmovaps zmm3,zmm17
  a5f47f:	62 92 6d 48 7f dd    	vpermt2ps zmm3,zmm2,zmm29
  a5f485:	62 82 45 48 7f cd    	vpermt2ps zmm17,zmm7,zmm29
  a5f48b:	62 11 7c 48 28 e9    	vmovaps zmm13,zmm25
  a5f491:	62 32 6d 48 7f ea    	vpermt2ps zmm13,zmm2,zmm18
  a5f497:	62 22 45 48 7f ca    	vpermt2ps zmm25,zmm7,zmm18
  a5f49d:	62 71 7c 48 28 35 59 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff667959]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5f4a4:	79 66 ff 
  a5f4a7:	62 f2 5d 48 77 d6    	vpermi2ps zmm2,zmm4,zmm6
  a5f4ad:	62 f2 45 48 7f e6    	vpermt2ps zmm4,zmm7,zmm6
  a5f4b3:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a5f4b9:	62 d2 0d 48 7f cc    	vpermt2ps zmm1,zmm14,zmm12
  a5f4bf:	62 f1 7c 48 28 35 77 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff667977]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5f4c6:	79 66 ff 
  a5f4c9:	62 52 4d 48 7f dc    	vpermt2ps zmm11,zmm6,zmm12
  a5f4cf:	62 f1 7c 48 28 fd    	vmovaps zmm7,zmm5
  a5f4d5:	62 f2 0d 48 7f f8    	vpermt2ps zmm7,zmm14,zmm0
  a5f4db:	62 f2 4d 48 7f e8    	vpermt2ps zmm5,zmm6,zmm0
  a5f4e1:	62 52 0d 48 7f d1    	vpermt2ps zmm10,zmm14,zmm9
  a5f4e7:	62 11 fd 40 14 c9    	vunpcklpd zmm9,zmm16,zmm25
  a5f4ed:	62 71 f5 40 14 e4    	vunpcklpd zmm12,zmm17,zmm4
  a5f4f3:	62 51 bd 48 14 fd    	vunpcklpd zmm15,zmm8,zmm13
  a5f4f9:	62 d1 bd 48 15 e5    	vunpckhpd zmm4,zmm8,zmm13
  a5f4ff:	62 71 e5 48 14 c2    	vunpcklpd zmm8,zmm3,zmm2
  a5f505:	62 f1 e5 48 15 d2    	vunpckhpd zmm2,zmm3,zmm2
  a5f50b:	62 d1 7c 48 28 c7    	vmovaps zmm0,zmm15
  a5f511:	62 d2 0d 48 7f c0    	vpermt2ps zmm0,zmm14,zmm8
  a5f517:	62 52 4d 48 7f f8    	vpermt2ps zmm15,zmm6,zmm8
  a5f51d:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a5f523:	62 f2 0d 48 7f da    	vpermt2ps zmm3,zmm14,zmm2
  a5f529:	62 f2 4d 48 7f e2    	vpermt2ps zmm4,zmm6,zmm2
  a5f52f:	62 52 0d 48 7f cc    	vpermt2ps zmm9,zmm14,zmm12
  a5f535:	62 f1 7c 48 10 52 02 	vmovups zmm2,ZMMWORD PTR [rdx+0x80]
  a5f53c:	62 f1 7c 48 10 72 03 	vmovups zmm6,ZMMWORD PTR [rdx+0xc0]
  a5f543:	62 71 7c 48 10 42 04 	vmovups zmm8,ZMMWORD PTR [rdx+0x100]
  a5f54a:	62 71 7c 48 10 62 05 	vmovups zmm12,ZMMWORD PTR [rdx+0x140]
  a5f551:	62 71 04 48 59 ea    	vmulps zmm13,zmm15,zmm2
  a5f557:	62 72 25 48 b8 ee    	vfmadd231ps zmm13,zmm11,zmm6
  a5f55d:	62 71 24 48 59 da    	vmulps zmm11,zmm11,zmm2
  a5f563:	62 f1 7c 48 10 52 09 	vmovups zmm2,ZMMWORD PTR [rdx+0x240]
  a5f56a:	62 52 4d 48 bc df    	vfnmadd231ps zmm11,zmm6,zmm15
  a5f570:	62 f1 7c 48 10 72 08 	vmovups zmm6,ZMMWORD PTR [rdx+0x200]
  a5f577:	62 71 34 48 59 f6    	vmulps zmm14,zmm9,zmm6
  a5f57d:	62 72 2d 48 b8 f2    	vfmadd231ps zmm14,zmm10,zmm2
  a5f583:	62 f1 2c 48 59 f6    	vmulps zmm6,zmm10,zmm6
  a5f589:	62 51 64 48 59 d0    	vmulps zmm10,zmm3,zmm8
  a5f58f:	62 52 45 48 b8 d4    	vfmadd231ps zmm10,zmm7,zmm12
  a5f595:	62 d2 6d 48 bc f1    	vfnmadd231ps zmm6,zmm2,zmm9
  a5f59b:	62 71 7c 48 10 4a 07 	vmovups zmm9,ZMMWORD PTR [rdx+0x1c0]
  a5f5a2:	62 71 7c 48 10 7a 06 	vmovups zmm15,ZMMWORD PTR [rdx+0x180]
  a5f5a9:	62 d1 44 48 59 f8    	vmulps zmm7,zmm7,zmm8
  a5f5af:	62 51 5c 48 59 c7    	vmulps zmm8,zmm4,zmm15
  a5f5b5:	62 52 55 48 b8 c1    	vfmadd231ps zmm8,zmm5,zmm9
  a5f5bb:	62 f2 1d 48 bc fb    	vfnmadd231ps zmm7,zmm12,zmm3
  a5f5c1:	62 d1 2c 48 58 d0    	vaddps zmm2,zmm10,zmm8
  a5f5c7:	62 d1 14 48 58 de    	vaddps zmm3,zmm13,zmm14
  a5f5cd:	62 d1 54 48 59 ef    	vmulps zmm5,zmm5,zmm15
  a5f5d3:	62 72 7d 48 18 25 0b 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff61610b]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a5f5da:	61 61 ff 
  a5f5dd:	62 f2 35 48 bc ec    	vfnmadd231ps zmm5,zmm9,zmm4
  a5f5e3:	62 d1 7c 48 28 e4    	vmovaps zmm4,zmm12
  a5f5e9:	62 f2 65 48 a8 e0    	vfmadd213ps zmm4,zmm3,zmm0
  a5f5ef:	62 71 44 48 5c cd    	vsubps zmm9,zmm7,zmm5
  a5f5f5:	62 f1 44 48 58 ed    	vaddps zmm5,zmm7,zmm5
  a5f5fb:	62 f1 24 48 5c fe    	vsubps zmm7,zmm11,zmm6
  a5f601:	62 f1 24 48 58 f6    	vaddps zmm6,zmm11,zmm6
  a5f607:	62 72 7d 48 18 1d 47 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff616147]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a5f60e:	61 61 ff 
  a5f611:	62 51 14 48 5c ee    	vsubps zmm13,zmm13,zmm14
  a5f617:	62 51 34 48 59 f3    	vmulps zmm14,zmm9,zmm11
  a5f61d:	62 51 2c 48 5c c0    	vsubps zmm8,zmm10,zmm8
  a5f623:	62 72 7d 48 18 15 73 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff615d73]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a5f62a:	5d 61 ff 
  a5f62d:	62 52 45 48 b8 f2    	vfmadd231ps zmm14,zmm7,zmm10
  a5f633:	62 d1 44 48 59 fb    	vmulps zmm7,zmm7,zmm11
  a5f639:	62 d2 2d 48 bc f9    	vfnmadd231ps zmm7,zmm10,zmm9
  a5f63f:	62 51 3c 48 59 cb    	vmulps zmm9,zmm8,zmm11
  a5f645:	62 52 15 48 b8 ca    	vfmadd231ps zmm9,zmm13,zmm10
  a5f64b:	62 51 14 48 59 db    	vmulps zmm11,zmm13,zmm11
  a5f651:	62 72 7d 48 18 2d e9 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff615fe9]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a5f658:	5f 61 ff 
  a5f65b:	62 d2 6d 48 bc e5    	vfnmadd231ps zmm4,zmm2,zmm13
  a5f661:	62 52 3d 48 bc da    	vfnmadd231ps zmm11,zmm8,zmm10
  a5f667:	62 51 7c 48 28 c4    	vmovaps zmm8,zmm12
  a5f66d:	62 72 4d 48 a8 c1    	vfmadd213ps zmm8,zmm6,zmm1
  a5f673:	62 52 55 48 bc c5    	vfnmadd231ps zmm8,zmm5,zmm13
  a5f679:	62 51 7c 48 28 d5    	vmovaps zmm10,zmm13
  a5f67f:	62 72 65 48 ac d0    	vfnmadd213ps zmm10,zmm3,zmm0
  a5f685:	62 52 6d 48 b8 d4    	vfmadd231ps zmm10,zmm2,zmm12
  a5f68b:	62 72 4d 48 ac e9    	vfnmadd213ps zmm13,zmm6,zmm1
  a5f691:	62 52 55 48 b8 ec    	vfmadd231ps zmm13,zmm5,zmm12
  a5f697:	62 71 2c 48 58 e7    	vaddps zmm12,zmm10,zmm7
  a5f69d:	62 f1 2c 48 5c ff    	vsubps zmm7,zmm10,zmm7
  a5f6a3:	62 51 14 48 5c d3    	vsubps zmm10,zmm13,zmm11
  a5f6a9:	62 51 14 48 58 db    	vaddps zmm11,zmm13,zmm11
  a5f6af:	62 51 5c 48 58 ee    	vaddps zmm13,zmm4,zmm14
  a5f6b5:	62 d1 5c 48 5c e6    	vsubps zmm4,zmm4,zmm14
  a5f6bb:	62 51 3c 48 5c f1    	vsubps zmm14,zmm8,zmm9
  a5f6c1:	62 51 3c 48 58 c1    	vaddps zmm8,zmm8,zmm9
  a5f6c7:	62 f1 64 48 58 c0    	vaddps zmm0,zmm3,zmm0
  a5f6cd:	62 f1 7c 48 58 c2    	vaddps zmm0,zmm0,zmm2
  a5f6d3:	62 f1 74 48 58 ce    	vaddps zmm1,zmm1,zmm6
  a5f6d9:	62 f1 74 48 58 cd    	vaddps zmm1,zmm1,zmm5
  a5f6df:	62 f1 7c 48 28 15 17 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff634317]        # 93a00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20eb0>
  a5f6e6:	43 63 ff 
  a5f6e9:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a5f6ef:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a5f6f5:	62 f1 7c 48 28 2d 41 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff634341]        # 93a40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20ef0>
  a5f6fc:	43 63 ff 
  a5f6ff:	62 f2 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm1
  a5f705:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a5f70b:	62 d2 6d 48 7f c8    	vpermt2ps zmm1,zmm2,zmm8
  a5f711:	62 d2 55 48 7f e0    	vpermt2ps zmm4,zmm5,zmm8
  a5f717:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a5f71d:	62 d2 6d 48 7f f3    	vpermt2ps zmm6,zmm2,zmm11
  a5f723:	62 d2 55 48 7f fb    	vpermt2ps zmm7,zmm5,zmm11
  a5f729:	62 51 7c 48 28 c4    	vmovaps zmm8,zmm12
  a5f72f:	62 52 6d 48 7f c2    	vpermt2ps zmm8,zmm2,zmm10
  a5f735:	62 52 55 48 7f e2    	vpermt2ps zmm12,zmm5,zmm10
  a5f73b:	62 d2 15 48 77 d6    	vpermi2ps zmm2,zmm13,zmm14
  a5f741:	62 52 55 48 7f ee    	vpermt2ps zmm13,zmm5,zmm14
  a5f747:	62 f1 7c 48 11 06    	vmovups ZMMWORD PTR [rsi],zmm0
  a5f74d:	62 f1 7c 48 11 5e 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm3
  a5f754:	62 f1 7c 48 11 66 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm4
  a5f75b:	62 f1 7c 48 11 4e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm1
  a5f762:	62 f1 7c 48 11 7e 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm7
  a5f769:	62 f1 7c 48 11 76 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm6
  a5f770:	62 71 7c 48 11 66 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm12
  a5f777:	62 71 7c 48 11 46 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm8
  a5f77e:	62 71 7c 48 11 6e 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm13
  a5f785:	62 f1 7c 48 11 56 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm2
  a5f78c:	48 81 c4 88 04 00 00 	add    rsp,0x488
  a5f793:	c5 f8 77             	vzeroupper
  a5f796:	c3                   	ret
