
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a2cc40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a2cc40:	48 81 ec 88 04 00 00 	sub    rsp,0x488
  a2cc47:	c5 fb 10 47 20       	vmovsd xmm0,QWORD PTR [rdi+0x20]
  a2cc4c:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a2cc50:	c5 fc 10 5f 28       	vmovups ymm3,YMMWORD PTR [rdi+0x28]
  a2cc55:	c5 fc 10 67 50       	vmovups ymm4,YMMWORD PTR [rdi+0x50]
  a2cc5a:	c5 fc 10 6f 78       	vmovups ymm5,YMMWORD PTR [rdi+0x78]
  a2cc5f:	62 f3 f5 48 1a c8 01 	vinsertf64x4 zmm1,zmm1,ymm0,0x1
  a2cc66:	62 01 14 00 57 ed    	vxorps xmm29,xmm29,xmm29
  a2cc6c:	62 f1 7c 48 28 15 8a 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff663c8a]        # 90900 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ddb0>
  a2cc73:	3c 66 ff 
  a2cc76:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a2cc7c:	62 92 6d 48 7f c5    	vpermt2ps zmm0,zmm2,zmm29
  a2cc82:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a2cc89:	03 
  a2cc8a:	62 f1 7c 48 28 05 ac 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff663cac]        # 90940 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ddf0>
  a2cc91:	3c 66 ff 
  a2cc94:	62 92 7d 48 7f cd    	vpermt2ps zmm1,zmm0,zmm29
  a2cc9a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a2cca1:	ff 
  a2cca2:	c5 fb 10 4f 48       	vmovsd xmm1,QWORD PTR [rdi+0x48]
  a2cca7:	62 f3 e5 48 1a c9 01 	vinsertf64x4 zmm1,zmm3,ymm1,0x1
  a2ccae:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a2ccb4:	62 92 6d 48 7f dd    	vpermt2ps zmm3,zmm2,zmm29
  a2ccba:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a2ccc0:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm3
  a2ccc7:	05 
  a2ccc8:	62 92 7d 48 7f cd    	vpermt2ps zmm1,zmm0,zmm29
  a2ccce:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a2ccd4:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a2ccdb:	06 
  a2ccdc:	c5 fb 10 4f 70       	vmovsd xmm1,QWORD PTR [rdi+0x70]
  a2cce1:	62 f3 dd 48 1a c9 01 	vinsertf64x4 zmm1,zmm4,ymm1,0x1
  a2cce8:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a2ccee:	62 92 6d 48 7f dd    	vpermt2ps zmm3,zmm2,zmm29
  a2ccf4:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a2ccfb:	01 
  a2ccfc:	62 92 7d 48 7f cd    	vpermt2ps zmm1,zmm0,zmm29
  a2cd02:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a2cd09:	02 
  a2cd0a:	c5 fb 10 8f 98 00 00 	vmovsd xmm1,QWORD PTR [rdi+0x98]
  a2cd11:	00 
  a2cd12:	62 73 d5 48 1a e9 01 	vinsertf64x4 zmm13,zmm5,ymm1,0x1
  a2cd19:	62 c1 7c 48 28 d5    	vmovaps zmm18,zmm13
  a2cd1f:	62 82 6d 48 7f d5    	vpermt2ps zmm18,zmm2,zmm29
  a2cd25:	62 12 7d 48 7f ed    	vpermt2ps zmm13,zmm0,zmm29
  a2cd2b:	c5 fb 10 8f c0 00 00 	vmovsd xmm1,QWORD PTR [rdi+0xc0]
  a2cd32:	00 
  a2cd33:	c5 fc 10 9f a0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xa0]
  a2cd3a:	00 
  a2cd3b:	62 f3 e5 48 1a d9 01 	vinsertf64x4 zmm3,zmm3,ymm1,0x1
  a2cd42:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a2cd48:	62 92 6d 48 7f cd    	vpermt2ps zmm1,zmm2,zmm29
  a2cd4e:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a2cd55:	62 92 7d 48 7f dd    	vpermt2ps zmm3,zmm0,zmm29
  a2cd5b:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a2cd62:	fe 
  a2cd63:	c5 fb 10 8f e8 00 00 	vmovsd xmm1,QWORD PTR [rdi+0xe8]
  a2cd6a:	00 
  a2cd6b:	c5 fc 10 9f c8 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xc8]
  a2cd72:	00 
  a2cd73:	62 e3 e5 48 1a e9 01 	vinsertf64x4 zmm21,zmm3,ymm1,0x1
  a2cd7a:	62 b1 7c 48 28 cd    	vmovaps zmm1,zmm21
  a2cd80:	62 92 6d 48 7f cd    	vpermt2ps zmm1,zmm2,zmm29
  a2cd86:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a2cd8c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a2cd93:	04 
  a2cd94:	62 82 7d 48 7f ed    	vpermt2ps zmm21,zmm0,zmm29
  a2cd9a:	c5 fb 10 8f 10 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x110]
  a2cda1:	00 
  a2cda2:	c5 fc 10 9f f0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xf0]
  a2cda9:	00 
  a2cdaa:	62 f3 e5 48 1a c9 01 	vinsertf64x4 zmm1,zmm3,ymm1,0x1
  a2cdb1:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a2cdb7:	62 92 6d 48 7f dd    	vpermt2ps zmm3,zmm2,zmm29
  a2cdbd:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm3
  a2cdc4:	11 
  a2cdc5:	62 92 7d 48 7f cd    	vpermt2ps zmm1,zmm0,zmm29
  a2cdcb:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm1
  a2cdd2:	10 
  a2cdd3:	c5 fb 10 8f 38 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x138]
  a2cdda:	00 
  a2cddb:	c5 fc 10 9f 18 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x118]
  a2cde2:	00 
  a2cde3:	62 e3 e5 48 1a c9 01 	vinsertf64x4 zmm17,zmm3,ymm1,0x1
  a2cdea:	62 31 7c 48 28 e1    	vmovaps zmm12,zmm17
  a2cdf0:	62 12 6d 48 7f e5    	vpermt2ps zmm12,zmm2,zmm29
  a2cdf6:	62 82 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm29
  a2cdfc:	c5 fb 10 8f 60 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x160]
  a2ce03:	00 
  a2ce04:	c5 fc 10 9f 40 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x140]
  a2ce0b:	00 
  a2ce0c:	62 f3 e5 48 1a c9 01 	vinsertf64x4 zmm1,zmm3,ymm1,0x1
  a2ce13:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a2ce19:	62 92 6d 48 7f dd    	vpermt2ps zmm3,zmm2,zmm29
  a2ce1f:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm3
  a2ce26:	0e 
  a2ce27:	62 92 7d 48 7f cd    	vpermt2ps zmm1,zmm0,zmm29
  a2ce2d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a2ce34:	0f 
  a2ce35:	c5 fb 10 8f 88 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x188]
  a2ce3c:	00 
  a2ce3d:	c5 fc 10 9f 68 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x168]
  a2ce44:	00 
  a2ce45:	62 e3 e5 48 1a e1 01 	vinsertf64x4 zmm20,zmm3,ymm1,0x1
  a2ce4c:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a2ce52:	62 82 6d 48 7f f5    	vpermt2ps zmm22,zmm2,zmm29
  a2ce58:	62 82 7d 48 7f e5    	vpermt2ps zmm20,zmm0,zmm29
  a2ce5e:	c5 fb 10 8f b0 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x1b0]
  a2ce65:	00 
  a2ce66:	c5 fc 10 9f 90 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x190]
  a2ce6d:	00 
  a2ce6e:	62 e3 e5 48 1a d9 01 	vinsertf64x4 zmm19,zmm3,ymm1,0x1
  a2ce75:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a2ce7b:	62 92 6d 48 7f cd    	vpermt2ps zmm1,zmm2,zmm29
  a2ce81:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm1
  a2ce88:	0d 
  a2ce89:	62 82 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm29
  a2ce8f:	c5 fb 10 8f d8 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x1d8]
  a2ce96:	00 
  a2ce97:	c5 fc 10 9f b8 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x1b8]
  a2ce9e:	00 
  a2ce9f:	62 e3 e5 48 1a f9 01 	vinsertf64x4 zmm23,zmm3,ymm1,0x1
  a2cea6:	62 21 7c 48 28 cf    	vmovaps zmm25,zmm23
  a2ceac:	62 02 6d 48 7f cd    	vpermt2ps zmm25,zmm2,zmm29
  a2ceb2:	62 82 7d 48 7f fd    	vpermt2ps zmm23,zmm0,zmm29
  a2ceb8:	c5 fb 10 8f 00 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x200]
  a2cebf:	00 
  a2cec0:	c5 fc 10 9f e0 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x1e0]
  a2cec7:	00 
  a2cec8:	62 63 e5 48 1a c1 01 	vinsertf64x4 zmm24,zmm3,ymm1,0x1
  a2cecf:	c5 fb 10 8f 28 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x228]
  a2ced6:	00 
  a2ced7:	c5 fc 10 9f 08 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x208]
  a2cede:	00 
  a2cedf:	62 63 e5 48 1a d9 01 	vinsertf64x4 zmm27,zmm3,ymm1,0x1
  a2cee6:	c5 fb 10 8f 50 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x250]
  a2ceed:	00 
  a2ceee:	c5 fc 10 9f 30 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x230]
  a2cef5:	00 
  a2cef6:	62 63 e5 48 1a d1 01 	vinsertf64x4 zmm26,zmm3,ymm1,0x1
  a2cefd:	c5 fb 10 8f 78 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x278]
  a2cf04:	00 
  a2cf05:	c5 fc 10 9f 58 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x258]
  a2cf0c:	00 
  a2cf0d:	62 63 e5 48 1a f9 01 	vinsertf64x4 zmm31,zmm3,ymm1,0x1
  a2cf14:	62 01 7c 48 28 e0    	vmovaps zmm28,zmm24
  a2cf1a:	62 02 6d 48 7f e5    	vpermt2ps zmm28,zmm2,zmm29
  a2cf20:	62 02 7d 48 7f c5    	vpermt2ps zmm24,zmm0,zmm29
  a2cf26:	62 81 7c 48 28 c3    	vmovaps zmm16,zmm27
  a2cf2c:	62 82 6d 48 7f c5    	vpermt2ps zmm16,zmm2,zmm29
  a2cf32:	62 02 7d 48 7f dd    	vpermt2ps zmm27,zmm0,zmm29
  a2cf38:	62 01 7c 48 28 f2    	vmovaps zmm30,zmm26
  a2cf3e:	62 02 6d 48 7f f5    	vpermt2ps zmm30,zmm2,zmm29
  a2cf44:	62 02 7d 48 7f d5    	vpermt2ps zmm26,zmm0,zmm29
  a2cf4a:	62 92 05 40 77 d5    	vpermi2ps zmm2,zmm31,zmm29
  a2cf50:	62 02 7d 48 7f fd    	vpermt2ps zmm31,zmm0,zmm29
  a2cf56:	62 31 4c 48 5c fe    	vsubps zmm15,zmm6,zmm22
  a2cf5c:	62 11 54 40 5c f3    	vsubps zmm14,zmm21,zmm27
  a2cf62:	62 d1 04 48 58 f6    	vaddps zmm6,zmm15,zmm14
  a2cf68:	62 31 44 48 5c dc    	vsubps zmm11,zmm7,zmm20
  a2cf6e:	62 71 7c 40 5c d5    	vsubps zmm10,zmm16,zmm5
  a2cf74:	62 51 2c 48 58 c3    	vaddps zmm8,zmm10,zmm11
  a2cf7a:	62 72 7d 48 18 0d e0 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff6486e0]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a2cf81:	86 64 ff 
  a2cf84:	62 d1 3c 48 59 c1    	vmulps zmm0,zmm8,zmm9
  a2cf8a:	62 f2 7d 48 18 3d 6c 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff64876c]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a2cf91:	87 64 ff 
  a2cf94:	62 f2 4d 48 b8 c7    	vfmadd231ps zmm0,zmm6,zmm7
  a2cf9a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a2cfa1:	0c 
  a2cfa2:	62 f1 3c 48 59 c7    	vmulps zmm0,zmm8,zmm7
  a2cfa8:	62 f2 35 48 bc c6    	vfnmadd231ps zmm0,zmm9,zmm6
  a2cfae:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a2cfb5:	0b 
  a2cfb6:	62 91 6c 40 5c e9    	vsubps zmm5,zmm18,zmm25
  a2cfbc:	62 91 74 40 5c e7    	vsubps zmm4,zmm17,zmm31
  a2cfc2:	62 f1 54 48 58 c4    	vaddps zmm0,zmm5,zmm4
  a2cfc8:	62 b1 14 48 5c df    	vsubps zmm3,zmm13,zmm23
  a2cfce:	62 d1 6c 48 5c cc    	vsubps zmm1,zmm2,zmm12
  a2cfd4:	62 f1 74 48 58 f3    	vaddps zmm6,zmm1,zmm3
  a2cfda:	62 71 4c 48 59 c7    	vmulps zmm8,zmm6,zmm7
  a2cfe0:	62 52 7d 48 b8 c1    	vfmadd231ps zmm8,zmm0,zmm9
  a2cfe6:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm8
  a2cfed:	0a 
  a2cfee:	62 41 4c 48 59 e9    	vmulps zmm29,zmm6,zmm9
  a2cff4:	62 62 45 48 bc e8    	vfnmadd231ps zmm29,zmm7,zmm0
  a2cffa:	62 d1 04 48 5c c6    	vsubps zmm0,zmm15,zmm14
  a2d000:	62 51 24 48 5c d2    	vsubps zmm10,zmm11,zmm10
  a2d006:	62 f1 54 48 5c ec    	vsubps zmm5,zmm5,zmm4
  a2d00c:	62 71 64 48 5c d9    	vsubps zmm11,zmm3,zmm1
  a2d012:	62 f1 2c 48 59 cf    	vmulps zmm1,zmm10,zmm7
  a2d018:	62 d2 7d 48 b8 c9    	vfmadd231ps zmm1,zmm0,zmm9
  a2d01e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a2d025:	09 
  a2d026:	62 d1 2c 48 59 c9    	vmulps zmm1,zmm10,zmm9
  a2d02c:	62 f2 45 48 bc c8    	vfnmadd231ps zmm1,zmm7,zmm0
  a2d032:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm1
  a2d039:	07 
  a2d03a:	62 d1 24 48 59 c1    	vmulps zmm0,zmm11,zmm9
  a2d040:	62 f2 55 48 b8 c7    	vfmadd231ps zmm0,zmm5,zmm7
  a2d046:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a2d04d:	08 
  a2d04e:	62 51 54 48 59 c1    	vmulps zmm8,zmm5,zmm9
  a2d054:	62 72 25 48 bc c7    	vfnmadd231ps zmm8,zmm11,zmm7
  a2d05a:	62 f1 4c 40 58 6c 24 	vaddps zmm5,zmm22,ZMMWORD PTR [rsp+0x140]
  a2d061:	05 
  a2d062:	62 f1 7c 40 58 7c 24 	vaddps zmm7,zmm16,ZMMWORD PTR [rsp+0x100]
  a2d069:	04 
  a2d06a:	62 11 6c 40 58 c9    	vaddps zmm9,zmm18,zmm25
  a2d070:	62 f1 1c 48 58 d2    	vaddps zmm2,zmm12,zmm2
  a2d076:	62 71 5c 40 58 54 24 	vaddps zmm10,zmm20,ZMMWORD PTR [rsp+0x180]
  a2d07d:	06 
  a2d07e:	62 11 54 40 58 db    	vaddps zmm11,zmm21,zmm27
  a2d084:	62 31 14 48 58 e7    	vaddps zmm12,zmm13,zmm23
  a2d08a:	62 11 74 40 58 ef    	vaddps zmm13,zmm17,zmm31
  a2d090:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a2d097:	03 
  a2d098:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x380]
  a2d09f:	0e 
  a2d0a0:	62 71 7c 48 58 f9    	vaddps zmm15,zmm0,zmm1
  a2d0a6:	62 e1 7c 48 5c c1    	vsubps zmm16,zmm0,zmm1
  a2d0ac:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a2d0b3:	fe 
  a2d0b4:	62 81 7c 48 58 d0    	vaddps zmm18,zmm0,zmm24
  a2d0ba:	62 81 7c 48 5c e0    	vsubps zmm20,zmm0,zmm24
  a2d0c0:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a2d0c7:	01 
  a2d0c8:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x340]
  a2d0cf:	0d 
  a2d0d0:	62 e1 7c 48 58 f1    	vaddps zmm22,zmm0,zmm1
  a2d0d6:	62 e1 7c 48 5c f9    	vsubps zmm23,zmm0,zmm1
  a2d0dc:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a2d0e3:	02 
  a2d0e4:	62 21 7c 48 58 c3    	vaddps zmm24,zmm0,zmm19
  a2d0ea:	62 a1 7c 48 5c db    	vsubps zmm19,zmm0,zmm19
  a2d0f0:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x400]
  a2d0f7:	10 
  a2d0f8:	62 01 7c 48 58 ca    	vaddps zmm25,zmm0,zmm26
  a2d0fe:	62 81 7c 48 5c ea    	vsubps zmm21,zmm0,zmm26
  a2d104:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x440]
  a2d10b:	11 
  a2d10c:	62 01 7c 48 58 d6    	vaddps zmm26,zmm0,zmm30
  a2d112:	62 01 7c 48 5c de    	vsubps zmm27,zmm0,zmm30
  a2d118:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a2d11f:	ff 
  a2d120:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x3c0]
  a2d127:	0f 
  a2d128:	62 61 7c 48 58 f1    	vaddps zmm30,zmm0,zmm1
  a2d12e:	62 e1 7c 48 5c c9    	vsubps zmm17,zmm0,zmm1
  a2d134:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a2d13b:	62 01 7c 48 58 fc    	vaddps zmm31,zmm0,zmm28
  a2d141:	62 61 1c 40 5c e0    	vsubps zmm28,zmm28,zmm0
  a2d147:	62 b1 44 40 58 cb    	vaddps zmm1,zmm23,zmm19
  a2d14d:	62 a1 64 40 5c df    	vsubps zmm19,zmm19,zmm23
  a2d153:	62 81 54 40 5c fb    	vsubps zmm23,zmm21,zmm27
  a2d159:	62 a1 24 40 58 ed    	vaddps zmm21,zmm27,zmm21
  a2d15f:	62 01 04 48 58 df    	vaddps zmm27,zmm15,zmm31
  a2d165:	62 11 04 48 5c ff    	vsubps zmm15,zmm15,zmm31
  a2d16b:	62 01 3c 40 58 f9    	vaddps zmm31,zmm24,zmm25
  a2d171:	62 01 3c 40 5c c1    	vsubps zmm24,zmm24,zmm25
  a2d177:	62 61 54 48 58 cf    	vaddps zmm25,zmm5,zmm7
  a2d17d:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a2d183:	62 d1 2c 48 58 fb    	vaddps zmm7,zmm10,zmm11
  a2d189:	62 51 2c 48 5c d3    	vsubps zmm10,zmm10,zmm11
  a2d18f:	62 51 1c 48 58 dd    	vaddps zmm11,zmm12,zmm13
  a2d195:	62 51 1c 48 5c e5    	vsubps zmm12,zmm12,zmm13
  a2d19b:	62 71 34 48 58 ea    	vaddps zmm13,zmm9,zmm2
  a2d1a1:	62 f1 34 48 5c d2    	vsubps zmm2,zmm9,zmm2
  a2d1a7:	62 31 0c 40 58 ca    	vaddps zmm9,zmm30,zmm18
  a2d1ad:	62 a1 0c 40 5c d2    	vsubps zmm18,zmm30,zmm18
  a2d1b3:	62 01 4c 40 58 f2    	vaddps zmm30,zmm22,zmm26
  a2d1b9:	62 a1 2c 40 5c f6    	vsubps zmm22,zmm26,zmm22
  a2d1bf:	62 41 54 48 58 d2    	vaddps zmm26,zmm5,zmm10
  a2d1c5:	62 f1 2c 48 5c ed    	vsubps zmm5,zmm10,zmm5
  a2d1cb:	62 72 7d 48 18 15 c7 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff6481c7]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a2d1d2:	81 64 ff 
  a2d1d5:	62 f1 1c 48 5c c2    	vsubps zmm0,zmm12,zmm2
  a2d1db:	62 d1 6c 48 58 d4    	vaddps zmm2,zmm2,zmm12
  a2d1e1:	62 d1 74 48 59 ca    	vmulps zmm1,zmm1,zmm10
  a2d1e7:	62 51 44 40 59 e2    	vmulps zmm12,zmm23,zmm10
  a2d1ed:	62 c1 64 40 59 da    	vmulps zmm19,zmm19,zmm10
  a2d1f3:	62 c1 54 40 59 ea    	vmulps zmm21,zmm21,zmm10
  a2d1f9:	62 c1 2c 40 59 fa    	vmulps zmm23,zmm26,zmm10
  a2d1ff:	62 d1 7c 48 59 da    	vmulps zmm3,zmm0,zmm10
  a2d205:	62 d1 54 48 59 ea    	vmulps zmm5,zmm5,zmm10
  a2d20b:	62 d1 6c 48 59 c2    	vmulps zmm0,zmm2,zmm10
  a2d211:	62 31 7c 40 58 d4    	vaddps zmm10,zmm16,zmm20
  a2d217:	62 a1 7c 40 5c c4    	vsubps zmm16,zmm16,zmm20
  a2d21d:	62 a1 64 40 5c e5    	vsubps zmm20,zmm19,zmm21
  a2d223:	62 a1 64 40 58 dd    	vaddps zmm19,zmm19,zmm21
  a2d229:	62 a1 1c 40 58 e9    	vaddps zmm21,zmm28,zmm17
  a2d22f:	62 81 74 40 5c cc    	vsubps zmm17,zmm17,zmm28
  a2d235:	62 41 74 48 58 d4    	vaddps zmm26,zmm1,zmm12
  a2d23b:	62 f1 1c 48 5c f1    	vsubps zmm6,zmm12,zmm1
  a2d241:	62 11 24 40 58 f6    	vaddps zmm14,zmm27,zmm30
  a2d247:	62 91 24 40 5c ce    	vsubps zmm1,zmm27,zmm30
  a2d24d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a2d254:	01 
  a2d255:	62 41 44 48 58 e3    	vaddps zmm28,zmm7,zmm11
  a2d25b:	62 d1 44 48 5c cb    	vsubps zmm1,zmm7,zmm11
  a2d261:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a2d268:	62 11 34 48 58 df    	vaddps zmm11,zmm9,zmm31
  a2d26e:	62 01 34 48 5c df    	vsubps zmm27,zmm9,zmm31
  a2d274:	62 41 34 40 58 f5    	vaddps zmm30,zmm25,zmm13
  a2d27a:	62 11 14 48 5c e9    	vsubps zmm13,zmm13,zmm25
  a2d280:	62 01 2c 48 58 ca    	vaddps zmm25,zmm10,zmm26
  a2d286:	62 91 2c 48 5c ca    	vsubps zmm1,zmm10,zmm26
  a2d28c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a2d293:	ff 
  a2d294:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x2c0]
  a2d29b:	0b 
  a2d29c:	62 11 74 48 58 d5    	vaddps zmm10,zmm1,zmm29
  a2d2a2:	62 01 74 48 5c d5    	vsubps zmm26,zmm1,zmm29
  a2d2a8:	62 21 54 40 58 fc    	vaddps zmm31,zmm21,zmm20
  a2d2ae:	62 a1 54 40 5c ec    	vsubps zmm21,zmm21,zmm20
  a2d2b4:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x300]
  a2d2bb:	0c 
  a2d2bc:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x280]
  a2d2c3:	0a 
  a2d2c4:	62 e1 74 48 58 e2    	vaddps zmm20,zmm1,zmm2
  a2d2ca:	62 61 6c 48 5c e9    	vsubps zmm29,zmm2,zmm1
  a2d2d0:	62 91 04 48 58 e0    	vaddps zmm4,zmm15,zmm24
  a2d2d6:	62 11 04 48 5c f8    	vsubps zmm15,zmm15,zmm24
  a2d2dc:	62 61 54 48 5c c0    	vsubps zmm24,zmm5,zmm0
  a2d2e2:	62 71 54 48 58 e0    	vaddps zmm12,zmm5,zmm0
  a2d2e8:	62 b1 4c 40 58 ea    	vaddps zmm5,zmm22,zmm18
  a2d2ee:	62 a1 6c 40 5c f6    	vsubps zmm22,zmm18,zmm22
  a2d2f4:	62 e1 44 40 58 d3    	vaddps zmm18,zmm23,zmm3
  a2d2fa:	62 a1 64 48 5c ff    	vsubps zmm23,zmm3,zmm23
  a2d300:	62 b1 7c 40 58 db    	vaddps zmm3,zmm16,zmm19
  a2d306:	62 a1 7c 40 5c db    	vsubps zmm19,zmm16,zmm19
  a2d30c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a2d313:	07 
  a2d314:	62 d1 7c 48 58 d0    	vaddps zmm2,zmm0,zmm8
  a2d31a:	62 51 7c 48 5c c8    	vsubps zmm9,zmm0,zmm8
  a2d320:	62 f1 74 40 58 ce    	vaddps zmm1,zmm17,zmm6
  a2d326:	62 71 74 40 5c c6    	vsubps zmm8,zmm17,zmm6
  a2d32c:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x240]
  a2d333:	09 
  a2d334:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x200]
  a2d33b:	08 
  a2d33c:	62 f1 4c 48 5c c7    	vsubps zmm0,zmm6,zmm7
  a2d342:	62 f1 4c 48 58 f7    	vaddps zmm6,zmm6,zmm7
  a2d348:	62 91 0c 48 58 fe    	vaddps zmm7,zmm14,zmm30
  a2d34e:	62 11 0c 48 5c f6    	vsubps zmm14,zmm14,zmm30
  a2d354:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm14
  a2d35b:	fe 
  a2d35c:	62 01 24 48 58 f4    	vaddps zmm30,zmm11,zmm28
  a2d362:	62 11 24 48 5c dc    	vsubps zmm11,zmm11,zmm28
  a2d368:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm11
  a2d36f:	03 
  a2d370:	62 21 34 40 58 e4    	vaddps zmm28,zmm25,zmm20
  a2d376:	62 a1 34 40 5c cc    	vsubps zmm17,zmm25,zmm20
  a2d37c:	62 41 04 40 58 ca    	vaddps zmm25,zmm31,zmm10
  a2d382:	62 51 04 40 5c d2    	vsubps zmm10,zmm31,zmm10
  a2d388:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm10
  a2d38f:	02 
  a2d390:	62 31 5c 48 58 d2    	vaddps zmm10,zmm4,zmm18
  a2d396:	62 a1 5c 48 5c c2    	vsubps zmm16,zmm4,zmm18
  a2d39c:	62 01 54 48 58 f8    	vaddps zmm31,zmm5,zmm24
  a2d3a2:	62 91 54 48 5c e8    	vsubps zmm5,zmm5,zmm24
  a2d3a8:	62 71 64 48 58 d8    	vaddps zmm11,zmm3,zmm0
  a2d3ae:	62 f1 64 48 5c c0    	vsubps zmm0,zmm3,zmm0
  a2d3b4:	62 e1 74 48 58 d2    	vaddps zmm18,zmm1,zmm2
  a2d3ba:	62 f1 74 48 5c da    	vsubps zmm3,zmm1,zmm2
  a2d3c0:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a2d3c7:	01 
  a2d3c8:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  a2d3cf:	62 e1 74 48 58 e2    	vaddps zmm20,zmm1,zmm2
  a2d3d5:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a2d3db:	62 91 14 48 58 d3    	vaddps zmm2,zmm13,zmm27
  a2d3e1:	62 41 24 40 5c dd    	vsubps zmm27,zmm27,zmm13
  a2d3e7:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a2d3ee:	ff 
  a2d3ef:	62 11 5c 48 58 ea    	vaddps zmm13,zmm4,zmm26
  a2d3f5:	62 91 5c 48 5c e2    	vsubps zmm4,zmm4,zmm26
  a2d3fb:	62 01 54 40 58 d5    	vaddps zmm26,zmm21,zmm29
  a2d401:	62 81 54 40 5c ed    	vsubps zmm21,zmm21,zmm29
  a2d407:	62 51 04 48 58 f4    	vaddps zmm14,zmm15,zmm12
  a2d40d:	62 41 04 48 5c ec    	vsubps zmm29,zmm15,zmm12
  a2d413:	62 31 4c 40 58 e7    	vaddps zmm12,zmm22,zmm23
  a2d419:	62 a1 4c 40 5c f7    	vsubps zmm22,zmm22,zmm23
  a2d41f:	62 51 64 40 58 f9    	vaddps zmm15,zmm19,zmm9
  a2d425:	62 c1 64 40 5c d9    	vsubps zmm19,zmm19,zmm9
  a2d42b:	62 71 3c 48 5c ce    	vsubps zmm9,zmm8,zmm6
  a2d431:	62 e1 3c 48 58 fe    	vaddps zmm23,zmm8,zmm6
  a2d437:	62 61 7c 48 28 05 3f 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff699b3f]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a2d43e:	9b 69 ff 
  a2d441:	62 f2 3d 40 7f 7c 24 	vpermt2ps zmm7,zmm24,ZMMWORD PTR [rsp-0x80]
  a2d448:	fe 
  a2d449:	62 22 3d 40 7f e1    	vpermt2ps zmm28,zmm24,zmm17
  a2d44f:	62 32 3d 40 7f d0    	vpermt2ps zmm10,zmm24,zmm16
  a2d455:	62 72 3d 40 7f d8    	vpermt2ps zmm11,zmm24,zmm0
  a2d45b:	62 e2 3d 40 7f e1    	vpermt2ps zmm20,zmm24,zmm1
  a2d461:	62 72 3d 40 7f ec    	vpermt2ps zmm13,zmm24,zmm4
  a2d467:	62 12 3d 40 7f f5    	vpermt2ps zmm14,zmm24,zmm29
  a2d46d:	62 32 3d 40 7f fb    	vpermt2ps zmm15,zmm24,zmm19
  a2d473:	62 62 3d 40 7f 74 24 	vpermt2ps zmm30,zmm24,ZMMWORD PTR [rsp+0xc0]
  a2d47a:	03 
  a2d47b:	62 62 3d 40 7f 4c 24 	vpermt2ps zmm25,zmm24,ZMMWORD PTR [rsp+0x80]
  a2d482:	02 
  a2d483:	62 62 3d 40 7f fd    	vpermt2ps zmm31,zmm24,zmm5
  a2d489:	62 e2 3d 40 7f d3    	vpermt2ps zmm18,zmm24,zmm3
  a2d48f:	62 92 3d 40 7f d3    	vpermt2ps zmm2,zmm24,zmm27
  a2d495:	62 22 3d 40 7f d5    	vpermt2ps zmm26,zmm24,zmm21
  a2d49b:	62 32 3d 40 7f e6    	vpermt2ps zmm12,zmm24,zmm22
  a2d4a1:	62 f1 7c 48 28 05 55 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff699a55]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a2d4a8:	9a 69 ff 
  a2d4ab:	62 32 3d 40 7f cf    	vpermt2ps zmm9,zmm24,zmm23
  a2d4b1:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a2d4b7:	62 b2 7d 48 7f cc    	vpermt2ps zmm1,zmm0,zmm20
  a2d4bd:	62 f1 7c 48 28 1d 79 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff699a79]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a2d4c4:	9a 69 ff 
  a2d4c7:	62 b2 65 48 7f fc    	vpermt2ps zmm7,zmm3,zmm20
  a2d4cd:	62 91 7c 48 28 e4    	vmovaps zmm4,zmm28
  a2d4d3:	62 d2 7d 48 7f e5    	vpermt2ps zmm4,zmm0,zmm13
  a2d4d9:	62 42 65 48 7f e5    	vpermt2ps zmm28,zmm3,zmm13
  a2d4df:	62 d1 7c 48 28 ea    	vmovaps zmm5,zmm10
  a2d4e5:	62 d2 7d 48 7f ee    	vpermt2ps zmm5,zmm0,zmm14
  a2d4eb:	62 52 65 48 7f d6    	vpermt2ps zmm10,zmm3,zmm14
  a2d4f1:	62 51 c5 48 14 d2    	vunpcklpd zmm10,zmm7,zmm10
  a2d4f7:	62 d1 7c 48 28 f3    	vmovaps zmm6,zmm11
  a2d4fd:	62 d2 7d 48 7f f7    	vpermt2ps zmm6,zmm0,zmm15
  a2d503:	62 52 65 48 7f df    	vpermt2ps zmm11,zmm3,zmm15
  a2d509:	62 d1 9d 40 14 fb    	vunpcklpd zmm7,zmm28,zmm11
  a2d50f:	62 71 f5 48 14 dd    	vunpcklpd zmm11,zmm1,zmm5
  a2d515:	62 f1 f5 48 15 ed    	vunpckhpd zmm5,zmm1,zmm5
  a2d51b:	62 71 dd 48 14 c6    	vunpcklpd zmm8,zmm4,zmm6
  a2d521:	62 f1 dd 48 15 e6    	vunpckhpd zmm4,zmm4,zmm6
  a2d527:	62 91 7c 48 28 f6    	vmovaps zmm6,zmm30
  a2d52d:	62 f2 7d 48 7f f2    	vpermt2ps zmm6,zmm0,zmm2
  a2d533:	62 62 65 48 7f f2    	vpermt2ps zmm30,zmm3,zmm2
  a2d539:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a2d53f:	62 92 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm26
  a2d545:	62 02 65 48 7f ca    	vpermt2ps zmm25,zmm3,zmm26
  a2d54b:	62 11 7c 48 28 ef    	vmovaps zmm13,zmm31
  a2d551:	62 52 7d 48 7f ec    	vpermt2ps zmm13,zmm0,zmm12
  a2d557:	62 42 65 48 7f fc    	vpermt2ps zmm31,zmm3,zmm12
  a2d55d:	62 71 7c 48 28 25 99 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff699899]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2d564:	98 69 ff 
  a2d567:	62 d2 6d 40 77 c1    	vpermi2ps zmm0,zmm18,zmm9
  a2d56d:	62 c2 65 48 7f d1    	vpermt2ps zmm18,zmm3,zmm9
  a2d573:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a2d579:	62 d2 1d 48 7f c8    	vpermt2ps zmm1,zmm12,zmm8
  a2d57f:	62 f1 7c 48 28 1d b7 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6998b7]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a2d586:	98 69 ff 
  a2d589:	62 52 65 48 7f d8    	vpermt2ps zmm11,zmm3,zmm8
  a2d58f:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a2d595:	62 72 1d 48 7f c4    	vpermt2ps zmm8,zmm12,zmm4
  a2d59b:	62 f2 65 48 7f ec    	vpermt2ps zmm5,zmm3,zmm4
  a2d5a1:	62 72 1d 48 7f d7    	vpermt2ps zmm10,zmm12,zmm7
  a2d5a7:	62 91 8d 40 14 ff    	vunpcklpd zmm7,zmm30,zmm31
  a2d5ad:	62 31 b5 40 14 ca    	vunpcklpd zmm9,zmm25,zmm18
  a2d5b3:	62 51 cd 48 14 f5    	vunpcklpd zmm14,zmm6,zmm13
  a2d5b9:	62 d1 cd 48 15 e5    	vunpckhpd zmm4,zmm6,zmm13
  a2d5bf:	62 f1 ed 48 14 f0    	vunpcklpd zmm6,zmm2,zmm0
  a2d5c5:	62 f1 ed 48 15 d0    	vunpckhpd zmm2,zmm2,zmm0
  a2d5cb:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a2d5d1:	62 f2 1d 48 7f c6    	vpermt2ps zmm0,zmm12,zmm6
  a2d5d7:	62 72 65 48 7f f6    	vpermt2ps zmm14,zmm3,zmm6
  a2d5dd:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a2d5e3:	62 f2 1d 48 7f f2    	vpermt2ps zmm6,zmm12,zmm2
  a2d5e9:	62 f2 65 48 7f e2    	vpermt2ps zmm4,zmm3,zmm2
  a2d5ef:	62 d2 1d 48 7f f9    	vpermt2ps zmm7,zmm12,zmm9
  a2d5f5:	62 f1 7c 48 10 52 02 	vmovups zmm2,ZMMWORD PTR [rdx+0x80]
  a2d5fc:	62 f1 7c 48 10 5a 03 	vmovups zmm3,ZMMWORD PTR [rdx+0xc0]
  a2d603:	62 71 7c 48 10 4a 04 	vmovups zmm9,ZMMWORD PTR [rdx+0x100]
  a2d60a:	62 71 7c 48 10 62 05 	vmovups zmm12,ZMMWORD PTR [rdx+0x140]
  a2d611:	62 71 0c 48 59 ea    	vmulps zmm13,zmm14,zmm2
  a2d617:	62 72 25 48 b8 eb    	vfmadd231ps zmm13,zmm11,zmm3
  a2d61d:	62 71 24 48 59 da    	vmulps zmm11,zmm11,zmm2
  a2d623:	62 f1 7c 48 10 52 09 	vmovups zmm2,ZMMWORD PTR [rdx+0x240]
  a2d62a:	62 52 65 48 bc de    	vfnmadd231ps zmm11,zmm3,zmm14
  a2d630:	62 f1 7c 48 10 5a 08 	vmovups zmm3,ZMMWORD PTR [rdx+0x200]
  a2d637:	62 71 44 48 59 f3    	vmulps zmm14,zmm7,zmm3
  a2d63d:	62 72 2d 48 b8 f2    	vfmadd231ps zmm14,zmm10,zmm2
  a2d643:	62 71 2c 48 59 d3    	vmulps zmm10,zmm10,zmm3
  a2d649:	62 51 4c 48 59 f9    	vmulps zmm15,zmm6,zmm9
  a2d64f:	62 52 3d 48 b8 fc    	vfmadd231ps zmm15,zmm8,zmm12
  a2d655:	62 72 6d 48 bc d7    	vfnmadd231ps zmm10,zmm2,zmm7
  a2d65b:	62 f1 7c 48 10 7a 07 	vmovups zmm7,ZMMWORD PTR [rdx+0x1c0]
  a2d662:	62 e1 7c 48 10 42 06 	vmovups zmm16,ZMMWORD PTR [rdx+0x180]
  a2d669:	62 51 3c 48 59 c1    	vmulps zmm8,zmm8,zmm9
  a2d66f:	62 31 5c 48 59 c8    	vmulps zmm9,zmm4,zmm16
  a2d675:	62 72 55 48 b8 cf    	vfmadd231ps zmm9,zmm5,zmm7
  a2d67b:	62 72 1d 48 bc c6    	vfnmadd231ps zmm8,zmm12,zmm6
  a2d681:	62 d1 04 48 58 d1    	vaddps zmm2,zmm15,zmm9
  a2d687:	62 d1 14 48 58 de    	vaddps zmm3,zmm13,zmm14
  a2d68d:	62 b1 54 48 59 e8    	vmulps zmm5,zmm5,zmm16
  a2d693:	62 f2 7d 48 18 35 4b 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff64804b]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a2d69a:	80 64 ff 
  a2d69d:	62 f2 45 48 bc ec    	vfnmadd231ps zmm5,zmm7,zmm4
  a2d6a3:	62 f1 7c 48 28 e6    	vmovaps zmm4,zmm6
  a2d6a9:	62 f2 65 48 a8 e0    	vfmadd213ps zmm4,zmm3,zmm0
  a2d6af:	62 f1 3c 48 5c fd    	vsubps zmm7,zmm8,zmm5
  a2d6b5:	62 f1 3c 48 58 ed    	vaddps zmm5,zmm8,zmm5
  a2d6bb:	62 51 24 48 5c c2    	vsubps zmm8,zmm11,zmm10
  a2d6c1:	62 51 24 48 58 d2    	vaddps zmm10,zmm11,zmm10
  a2d6c7:	62 72 7d 48 18 1d 87 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff648087]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a2d6ce:	80 64 ff 
  a2d6d1:	62 51 14 48 5c e6    	vsubps zmm12,zmm13,zmm14
  a2d6d7:	62 51 44 48 59 eb    	vmulps zmm13,zmm7,zmm11
  a2d6dd:	62 51 04 48 5c c9    	vsubps zmm9,zmm15,zmm9
  a2d6e3:	62 72 7d 48 18 35 b3 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff647cb3]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a2d6ea:	7c 64 ff 
  a2d6ed:	62 52 3d 48 b8 ee    	vfmadd231ps zmm13,zmm8,zmm14
  a2d6f3:	62 51 3c 48 59 c3    	vmulps zmm8,zmm8,zmm11
  a2d6f9:	62 72 0d 48 bc c7    	vfnmadd231ps zmm8,zmm14,zmm7
  a2d6ff:	62 d1 34 48 59 fb    	vmulps zmm7,zmm9,zmm11
  a2d705:	62 d2 1d 48 b8 fe    	vfmadd231ps zmm7,zmm12,zmm14
  a2d70b:	62 51 1c 48 59 db    	vmulps zmm11,zmm12,zmm11
  a2d711:	62 72 7d 48 18 25 29 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff647f29]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a2d718:	7f 64 ff 
  a2d71b:	62 d2 6d 48 bc e4    	vfnmadd231ps zmm4,zmm2,zmm12
  a2d721:	62 52 35 48 bc de    	vfnmadd231ps zmm11,zmm9,zmm14
  a2d727:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a2d72d:	62 72 2d 48 a8 c9    	vfmadd213ps zmm9,zmm10,zmm1
  a2d733:	62 52 55 48 bc cc    	vfnmadd231ps zmm9,zmm5,zmm12
  a2d739:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a2d73f:	62 72 65 48 ac f0    	vfnmadd213ps zmm14,zmm3,zmm0
  a2d745:	62 72 6d 48 b8 f6    	vfmadd231ps zmm14,zmm2,zmm6
  a2d74b:	62 72 2d 48 ac e1    	vfnmadd213ps zmm12,zmm10,zmm1
  a2d751:	62 72 55 48 b8 e6    	vfmadd231ps zmm12,zmm5,zmm6
  a2d757:	62 d1 0c 48 58 f0    	vaddps zmm6,zmm14,zmm8
  a2d75d:	62 51 0c 48 5c c0    	vsubps zmm8,zmm14,zmm8
  a2d763:	62 51 1c 48 5c f3    	vsubps zmm14,zmm12,zmm11
  a2d769:	62 51 1c 48 58 db    	vaddps zmm11,zmm12,zmm11
  a2d76f:	62 51 5c 48 58 e5    	vaddps zmm12,zmm4,zmm13
  a2d775:	62 d1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm13
  a2d77b:	62 71 34 48 5c ef    	vsubps zmm13,zmm9,zmm7
  a2d781:	62 f1 34 48 58 ff    	vaddps zmm7,zmm9,zmm7
  a2d787:	62 f1 64 48 58 c0    	vaddps zmm0,zmm3,zmm0
  a2d78d:	62 f1 7c 48 58 c2    	vaddps zmm0,zmm0,zmm2
  a2d793:	62 d1 74 48 58 ca    	vaddps zmm1,zmm1,zmm10
  a2d799:	62 f1 74 48 58 cd    	vaddps zmm1,zmm1,zmm5
  a2d79f:	62 f1 7c 48 28 15 d7 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6631d7]        # 90980 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1de30>
  a2d7a6:	31 66 ff 
  a2d7a9:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a2d7af:	62 f2 6d 48 7f d8    	vpermt2ps zmm3,zmm2,zmm0
  a2d7b5:	62 f1 7c 48 28 2d 01 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff663201]        # 909c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1de70>
  a2d7bc:	32 66 ff 
  a2d7bf:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a2d7c5:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a2d7cb:	62 f2 6d 48 7f c4    	vpermt2ps zmm0,zmm2,zmm4
  a2d7d1:	62 f2 55 48 7f fc    	vpermt2ps zmm7,zmm5,zmm4
  a2d7d7:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a2d7dd:	62 d2 6d 48 7f e0    	vpermt2ps zmm4,zmm2,zmm8
  a2d7e3:	62 52 55 48 7f d8    	vpermt2ps zmm11,zmm5,zmm8
  a2d7e9:	62 51 7c 48 28 c6    	vmovaps zmm8,zmm14
  a2d7ef:	62 72 6d 48 7f c6    	vpermt2ps zmm8,zmm2,zmm6
  a2d7f5:	62 72 55 48 7f f6    	vpermt2ps zmm14,zmm5,zmm6
  a2d7fb:	62 d2 15 48 77 d4    	vpermi2ps zmm2,zmm13,zmm12
  a2d801:	62 52 55 48 7f ec    	vpermt2ps zmm13,zmm5,zmm12
  a2d807:	62 f1 7c 48 11 0e    	vmovups ZMMWORD PTR [rsi],zmm1
  a2d80d:	62 f1 7c 48 11 5e 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm3
  a2d814:	62 f1 7c 48 11 7e 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm7
  a2d81b:	62 f1 7c 48 11 46 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm0
  a2d822:	62 71 7c 48 11 5e 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm11
  a2d829:	62 f1 7c 48 11 66 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm4
  a2d830:	62 71 7c 48 11 76 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm14
  a2d837:	62 71 7c 48 11 46 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm8
  a2d83e:	62 71 7c 48 11 6e 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm13
  a2d845:	62 f1 7c 48 11 56 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm2
  a2d84c:	48 81 c4 88 04 00 00 	add    rsp,0x488
  a2d853:	c5 f8 77             	vzeroupper
  a2d856:	c3                   	ret
