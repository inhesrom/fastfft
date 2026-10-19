
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a1cd80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a1cd80:	55                   	push   rbp
  a1cd81:	48 89 e5             	mov    rbp,rsp
  a1cd84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a1cd88:	48 81 ec c0 03 00 00 	sub    rsp,0x3c0
  a1cd8f:	48 69 c2 c0 03 00 00 	imul   rax,rdx,0x3c0
  a1cd96:	31 d2                	xor    edx,edx
  a1cd98:	4c 8d 84 24 40 03 00 	lea    r8,[rsp+0x340]
  a1cd9f:	00 
  a1cda0:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a1cda5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  a1cdac:	00 00 00 00 
  a1cdb0:	c6 84 24 40 03 00 00 	mov    BYTE PTR [rsp+0x340],0x0
  a1cdb7:	00 
  a1cdb8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a1cdbd:	62 e1 7c 48 10 0c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1]
  a1cdc4:	62 61 7c 48 10 64 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x40]
  a1cdcb:	01 
  a1cdcc:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x80]
  a1cdd3:	02 
  a1cdd4:	62 61 7c 48 10 44 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a1cddb:	03 
  a1cddc:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a1cde2:	62 f1 7c 48 28 15 54 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff672d54]        # 8fb40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cff0>
  a1cde9:	2d 67 ff 
  a1cdec:	62 01 34 00 57 c9    	vxorps xmm25,xmm25,xmm25
  a1cdf2:	62 82 6d 48 7f d1    	vpermt2ps zmm18,zmm2,zmm25
  a1cdf8:	62 01 7c 48 28 f4    	vmovaps zmm30,zmm28
  a1cdfe:	62 61 7c 48 28 15 78 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff672d78]        # 8fb80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d030>
  a1ce05:	2d 67 ff 
  a1ce08:	62 02 2d 40 7f e1    	vpermt2ps zmm28,zmm26,zmm25
  a1ce0e:	62 71 7c 48 28 f1    	vmovaps zmm14,zmm1
  a1ce14:	62 02 6d 48 7f f1    	vpermt2ps zmm30,zmm2,zmm25
  a1ce1a:	62 12 6d 48 7f f1    	vpermt2ps zmm14,zmm2,zmm25
  a1ce20:	62 92 2d 40 7f c9    	vpermt2ps zmm1,zmm26,zmm25
  a1ce26:	62 91 7c 48 28 c0    	vmovaps zmm0,zmm24
  a1ce2c:	62 92 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm25
  a1ce32:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a1ce39:	01 
  a1ce3a:	62 02 2d 40 7f c1    	vpermt2ps zmm24,zmm26,zmm25
  a1ce40:	62 61 7c 48 10 6c 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x100]
  a1ce47:	04 
  a1ce48:	62 11 7c 48 28 e5    	vmovaps zmm12,zmm29
  a1ce4e:	62 12 6d 48 7f e1    	vpermt2ps zmm12,zmm2,zmm25
  a1ce54:	62 02 2d 40 7f e9    	vpermt2ps zmm29,zmm26,zmm25
  a1ce5a:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x140]
  a1ce61:	05 
  a1ce62:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a1ce68:	62 82 6d 48 7f e1    	vpermt2ps zmm20,zmm2,zmm25
  a1ce6e:	62 82 2d 40 7f d9    	vpermt2ps zmm19,zmm26,zmm25
  a1ce74:	62 61 7c 48 10 5c 17 	vmovups zmm27,ZMMWORD PTR [rdi+rdx*1+0x180]
  a1ce7b:	06 
  a1ce7c:	62 11 7c 48 28 eb    	vmovaps zmm13,zmm27
  a1ce82:	62 12 6d 48 7f e9    	vpermt2ps zmm13,zmm2,zmm25
  a1ce88:	62 02 2d 40 7f d9    	vpermt2ps zmm27,zmm26,zmm25
  a1ce8e:	62 f1 7c 48 10 74 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a1ce95:	07 
  a1ce96:	62 f1 7c 48 28 e6    	vmovaps zmm4,zmm6
  a1ce9c:	62 92 6d 48 7f e1    	vpermt2ps zmm4,zmm2,zmm25
  a1cea2:	62 92 2d 40 7f f1    	vpermt2ps zmm6,zmm26,zmm25
  a1cea8:	62 f1 7c 48 10 7c 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x200]
  a1ceaf:	08 
  a1ceb0:	62 e1 7c 48 28 c7    	vmovaps zmm16,zmm7
  a1ceb6:	62 82 6d 48 7f c1    	vpermt2ps zmm16,zmm2,zmm25
  a1cebc:	62 92 2d 40 7f f9    	vpermt2ps zmm7,zmm26,zmm25
  a1cec2:	62 71 7c 48 10 4c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x240]
  a1cec9:	09 
  a1ceca:	62 d1 7c 48 28 d9    	vmovaps zmm3,zmm9
  a1ced0:	62 92 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm25
  a1ced6:	62 12 2d 40 7f c9    	vpermt2ps zmm9,zmm26,zmm25
  a1cedc:	62 e1 7c 48 10 6c 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x280]
  a1cee3:	0a 
  a1cee4:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a1ceea:	62 82 6d 48 7f f1    	vpermt2ps zmm22,zmm2,zmm25
  a1cef0:	62 71 7c 48 10 5c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  a1cef7:	0b 
  a1cef8:	62 d1 7c 48 28 eb    	vmovaps zmm5,zmm11
  a1cefe:	62 12 2d 40 7f d9    	vpermt2ps zmm11,zmm26,zmm25
  a1cf04:	62 92 6d 48 7f e9    	vpermt2ps zmm5,zmm2,zmm25
  a1cf0a:	62 71 7c 48 10 54 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x300]
  a1cf11:	0c 
  a1cf12:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a1cf18:	62 12 2d 40 7f d1    	vpermt2ps zmm10,zmm26,zmm25
  a1cf1e:	62 12 6d 48 7f f9    	vpermt2ps zmm15,zmm2,zmm25
  a1cf24:	62 e1 7c 48 10 7c 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1+0x340]
  a1cf2b:	0d 
  a1cf2c:	62 31 7c 48 28 c7    	vmovaps zmm8,zmm23
  a1cf32:	62 82 2d 40 7f f9    	vpermt2ps zmm23,zmm26,zmm25
  a1cf38:	62 12 6d 48 7f c1    	vpermt2ps zmm8,zmm2,zmm25
  a1cf3e:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a1cf42:	62 61 7c 48 10 7c 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x380]
  a1cf49:	0e 
  a1cf4a:	62 01 7c 48 28 cf    	vmovaps zmm25,zmm31
  a1cf50:	62 62 2d 40 7f f8    	vpermt2ps zmm31,zmm26,zmm0
  a1cf56:	62 62 6d 48 7f c8    	vpermt2ps zmm25,zmm2,zmm0
  a1cf5c:	62 d1 3c 40 58 c2    	vaddps zmm0,zmm24,zmm10
  a1cf62:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a1cf69:	0a 
  a1cf6a:	62 f1 44 48 58 c1    	vaddps zmm0,zmm7,zmm1
  a1cf70:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a1cf77:	06 
  a1cf78:	62 f1 44 48 5c f9    	vsubps zmm7,zmm7,zmm1
  a1cf7e:	62 91 24 48 58 c7    	vaddps zmm0,zmm11,zmm31
  a1cf84:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a1cf8b:	05 
  a1cf8c:	62 11 24 48 5c df    	vsubps zmm11,zmm11,zmm31
  a1cf92:	62 f1 44 40 58 c6    	vaddps zmm0,zmm23,zmm6
  a1cf98:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a1cf9f:	08 
  a1cfa0:	62 61 44 40 5c fe    	vsubps zmm31,zmm23,zmm6
  a1cfa6:	62 91 1c 40 58 c5    	vaddps zmm0,zmm28,zmm29
  a1cfac:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a1cfb3:	07 
  a1cfb4:	62 81 1c 40 5c fd    	vsubps zmm23,zmm28,zmm29
  a1cfba:	62 d1 24 40 58 c1    	vaddps zmm0,zmm27,zmm9
  a1cfc0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a1cfc7:	09 
  a1cfc8:	62 41 3c 40 5c ea    	vsubps zmm29,zmm24,zmm10
  a1cfce:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x40]
  a1cfd5:	01 
  a1cfd6:	62 41 2c 48 58 c7    	vaddps zmm24,zmm10,zmm15
  a1cfdc:	62 d1 24 40 5c f1    	vsubps zmm6,zmm27,zmm9
  a1cfe2:	62 d1 7c 40 58 ce    	vaddps zmm1,zmm16,zmm14
  a1cfe8:	62 51 7c 40 5c ce    	vsubps zmm9,zmm16,zmm14
  a1cfee:	62 91 54 48 58 c1    	vaddps zmm0,zmm5,zmm25
  a1cff4:	62 01 54 48 5c c9    	vsubps zmm25,zmm5,zmm25
  a1cffa:	62 f1 3c 48 58 d4    	vaddps zmm2,zmm8,zmm4
  a1d000:	62 61 3c 48 5c dc    	vsubps zmm27,zmm8,zmm4
  a1d006:	62 51 0c 40 58 c4    	vaddps zmm8,zmm30,zmm12
  a1d00c:	62 d1 0c 40 5c e4    	vsubps zmm4,zmm30,zmm12
  a1d012:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm4
  a1d019:	03 
  a1d01a:	62 61 14 48 58 e3    	vaddps zmm28,zmm13,zmm3
  a1d020:	62 d1 2c 48 5c e7    	vsubps zmm4,zmm10,zmm15
  a1d026:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm4
  a1d02d:	04 
  a1d02e:	62 f1 5c 40 58 e1    	vaddps zmm4,zmm20,zmm1
  a1d034:	62 f1 14 48 5c db    	vsubps zmm3,zmm13,zmm3
  a1d03a:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a1d041:	02 
  a1d042:	62 72 7d 48 18 35 9c 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff65869c]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a1d049:	86 65 ff 
  a1d04c:	62 d1 7c 48 28 ee    	vmovaps zmm5,zmm14
  a1d052:	62 b2 75 48 a8 ec    	vfmadd213ps zmm5,zmm1,zmm20
  a1d058:	62 f1 5c 48 58 d8    	vaddps zmm3,zmm4,zmm0
  a1d05e:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a1d065:	01 
  a1d066:	62 72 7d 48 18 25 d4 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff6585d4]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a1d06d:	85 65 ff 
  a1d070:	62 e2 1d 48 bc e1    	vfnmadd231ps zmm20,zmm12,zmm1
  a1d076:	62 f1 4c 40 58 da    	vaddps zmm3,zmm22,zmm2
  a1d07c:	62 d2 7d 48 bc ec    	vfnmadd231ps zmm5,zmm0,zmm12
  a1d082:	62 e2 0d 48 b8 e0    	vfmadd231ps zmm20,zmm14,zmm0
  a1d088:	62 f2 7d 48 18 0d c6 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff6586c6]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a1d08f:	86 65 ff 
  a1d092:	62 e1 24 48 59 c1    	vmulps zmm16,zmm11,zmm1
  a1d098:	62 f2 7d 48 18 05 fe 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6582fe]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a1d09f:	82 65 ff 
  a1d0a2:	62 e2 45 48 b8 c0    	vfmadd231ps zmm16,zmm7,zmm0
  a1d0a8:	62 71 44 48 59 d1    	vmulps zmm10,zmm7,zmm1
  a1d0ae:	62 d1 64 48 58 d8    	vaddps zmm3,zmm3,zmm8
  a1d0b4:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm3
  a1d0bb:	0c 
  a1d0bc:	62 52 7d 48 bc d3    	vfnmadd231ps zmm10,zmm0,zmm11
  a1d0c2:	62 d1 7c 48 28 e6    	vmovaps zmm4,zmm14
  a1d0c8:	62 b2 6d 48 a8 e6    	vfmadd213ps zmm4,zmm2,zmm22
  a1d0ce:	62 d2 3d 48 bc e4    	vfnmadd231ps zmm4,zmm8,zmm12
  a1d0d4:	62 e2 1d 48 bc f2    	vfnmadd231ps zmm22,zmm12,zmm2
  a1d0da:	62 71 44 40 59 e9    	vmulps zmm13,zmm23,zmm1
  a1d0e0:	62 72 05 40 b8 e8    	vfmadd231ps zmm13,zmm31,zmm0
  a1d0e6:	62 c2 0d 48 b8 f0    	vfmadd231ps zmm22,zmm14,zmm8
  a1d0ec:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a1d0f2:	62 f1 04 40 59 f9    	vmulps zmm7,zmm31,zmm1
  a1d0f8:	62 b2 7d 48 bc ff    	vfnmadd231ps zmm7,zmm0,zmm23
  a1d0fe:	62 91 6c 40 58 d0    	vaddps zmm2,zmm18,zmm24
  a1d104:	62 32 3d 40 a8 fa    	vfmadd213ps zmm15,zmm24,zmm18
  a1d10a:	62 82 1d 48 bc d0    	vfnmadd231ps zmm18,zmm12,zmm24
  a1d110:	62 71 4c 48 59 d9    	vmulps zmm11,zmm6,zmm1
  a1d116:	62 72 15 40 b8 d8    	vfmadd231ps zmm11,zmm29,zmm0
  a1d11c:	62 f1 14 40 59 d9    	vmulps zmm3,zmm29,zmm1
  a1d122:	62 f2 7d 48 bc de    	vfnmadd231ps zmm3,zmm0,zmm6
  a1d128:	62 51 7c 48 28 c6    	vmovaps zmm8,zmm14
  a1d12e:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x180]
  a1d135:	06 
  a1d136:	62 32 45 40 a8 c3    	vfmadd213ps zmm8,zmm23,zmm19
  a1d13c:	62 b1 64 40 58 f7    	vaddps zmm6,zmm19,zmm23
  a1d142:	62 a2 1d 48 bc df    	vfnmadd231ps zmm19,zmm12,zmm23
  a1d148:	62 a1 44 00 57 ff    	vxorps xmm23,xmm23,xmm23
  a1d14e:	62 a2 2d 40 7f cf    	vpermt2ps zmm17,zmm26,zmm23
  a1d154:	62 a2 2d 40 7f ef    	vpermt2ps zmm21,zmm26,zmm23
  a1d15a:	62 01 6c 48 58 d4    	vaddps zmm26,zmm2,zmm28
  a1d160:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x140]
  a1d167:	05 
  a1d168:	62 f1 4c 48 58 f2    	vaddps zmm6,zmm6,zmm2
  a1d16e:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm6
  a1d175:	06 
  a1d176:	62 52 6d 48 bc c4    	vfnmadd231ps zmm8,zmm2,zmm12
  a1d17c:	62 52 1d 40 bc fc    	vfnmadd231ps zmm15,zmm28,zmm12
  a1d182:	62 e2 0d 48 b8 da    	vfmadd231ps zmm19,zmm14,zmm2
  a1d188:	62 e1 34 40 59 f9    	vmulps zmm23,zmm25,zmm1
  a1d18e:	62 e2 35 48 b8 f8    	vfmadd231ps zmm23,zmm9,zmm0
  a1d194:	62 82 0d 48 b8 d4    	vfmadd231ps zmm18,zmm14,zmm28
  a1d19a:	62 41 7c 48 28 e6    	vmovaps zmm28,zmm14
  a1d1a0:	62 f1 34 48 59 d1    	vmulps zmm2,zmm9,zmm1
  a1d1a6:	62 92 7d 48 bc d1    	vfnmadd231ps zmm2,zmm0,zmm25
  a1d1ac:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x200]
  a1d1b3:	08 
  a1d1b4:	62 d1 54 40 58 f1    	vaddps zmm6,zmm21,zmm9
  a1d1ba:	62 22 35 48 a8 e5    	vfmadd213ps zmm28,zmm9,zmm21
  a1d1c0:	62 c2 1d 48 bc e9    	vfnmadd231ps zmm21,zmm12,zmm9
  a1d1c6:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x280]
  a1d1cd:	0a 
  a1d1ce:	62 11 74 40 58 c9    	vaddps zmm9,zmm17,zmm25
  a1d1d4:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x1c0]
  a1d1db:	07 
  a1d1dc:	62 01 4c 48 58 f0    	vaddps zmm30,zmm6,zmm24
  a1d1e2:	62 42 3d 40 bc e4    	vfnmadd231ps zmm28,zmm24,zmm12
  a1d1e8:	62 82 0d 48 b8 e8    	vfmadd231ps zmm21,zmm14,zmm24
  a1d1ee:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0xc0]
  a1d1f5:	03 
  a1d1f6:	62 61 3c 40 59 f9    	vmulps zmm31,zmm24,zmm1
  a1d1fc:	62 62 25 40 b8 f8    	vfmadd231ps zmm31,zmm27,zmm0
  a1d202:	62 f1 24 40 59 f1    	vmulps zmm6,zmm27,zmm1
  a1d208:	62 92 7d 48 bc f0    	vfnmadd231ps zmm6,zmm0,zmm24
  a1d20e:	62 41 7c 48 28 c6    	vmovaps zmm24,zmm14
  a1d214:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x240]
  a1d21b:	09 
  a1d21c:	62 11 34 48 58 cb    	vaddps zmm9,zmm9,zmm27
  a1d222:	62 22 35 40 a8 c1    	vfmadd213ps zmm24,zmm25,zmm17
  a1d228:	62 82 1d 48 bc c9    	vfnmadd231ps zmm17,zmm12,zmm25
  a1d22e:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x80]
  a1d235:	02 
  a1d236:	62 61 34 40 59 e9    	vmulps zmm29,zmm25,zmm1
  a1d23c:	62 42 25 40 bc c4    	vfnmadd231ps zmm24,zmm27,zmm12
  a1d242:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x100]
  a1d249:	04 
  a1d24a:	62 62 1d 48 b8 e8    	vfmadd231ps zmm29,zmm12,zmm0
  a1d250:	62 82 0d 48 b8 cb    	vfmadd231ps zmm17,zmm14,zmm27
  a1d256:	62 71 1c 48 59 e1    	vmulps zmm12,zmm12,zmm1
  a1d25c:	62 21 3c 48 5c df    	vsubps zmm27,zmm8,zmm23
  a1d262:	62 12 7d 48 bc e1    	vfnmadd231ps zmm12,zmm0,zmm25
  a1d268:	62 f1 6c 40 58 c3    	vaddps zmm0,zmm18,zmm3
  a1d26e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a1d275:	05 
  a1d276:	62 61 6c 40 5c cb    	vsubps zmm25,zmm18,zmm3
  a1d27c:	62 d1 5c 40 58 ca    	vaddps zmm1,zmm20,zmm10
  a1d282:	62 c1 5c 40 5c d2    	vsubps zmm18,zmm20,zmm10
  a1d288:	62 f1 4c 40 58 c7    	vaddps zmm0,zmm22,zmm7
  a1d28e:	62 f1 4c 40 5c df    	vsubps zmm3,zmm22,zmm7
  a1d294:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm3
  a1d29b:	0b 
  a1d29c:	62 d1 74 40 5c dc    	vsubps zmm3,zmm17,zmm12
  a1d2a2:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm3
  a1d2a9:	09 
  a1d2aa:	62 a1 1c 48 58 e1    	vaddps zmm20,zmm12,zmm17
  a1d2b0:	62 71 64 40 5c e2    	vsubps zmm12,zmm19,zmm2
  a1d2b6:	62 a1 6c 48 58 f3    	vaddps zmm22,zmm2,zmm19
  a1d2bc:	62 f1 54 40 5c d6    	vsubps zmm2,zmm21,zmm6
  a1d2c2:	62 b1 4c 48 58 fd    	vaddps zmm7,zmm6,zmm21
  a1d2c8:	62 91 1c 40 5c f7    	vsubps zmm6,zmm28,zmm31
  a1d2ce:	62 f1 24 40 5c de    	vsubps zmm3,zmm27,zmm6
  a1d2d4:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm3
  a1d2db:	08 
  a1d2dc:	62 e1 24 40 58 de    	vaddps zmm19,zmm27,zmm6
  a1d2e2:	62 b1 54 48 58 f0    	vaddps zmm6,zmm5,zmm16
  a1d2e8:	62 c1 5c 48 58 cd    	vaddps zmm17,zmm4,zmm13
  a1d2ee:	62 a1 4c 48 58 e9    	vaddps zmm21,zmm6,zmm17
  a1d2f4:	62 b1 4c 48 5c d9    	vsubps zmm3,zmm6,zmm17
  a1d2fa:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm3
  a1d301:	07 
  a1d302:	62 31 54 48 5c d0    	vsubps zmm10,zmm5,zmm16
  a1d308:	62 d1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm13
  a1d30e:	62 71 1c 48 5c ea    	vsubps zmm13,zmm12,zmm2
  a1d314:	62 f1 1c 48 58 d2    	vaddps zmm2,zmm12,zmm2
  a1d31a:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a1d321:	02 
  a1d322:	62 d1 04 48 58 d3    	vaddps zmm2,zmm15,zmm11
  a1d328:	62 51 04 48 5c e3    	vsubps zmm12,zmm15,zmm11
  a1d32e:	62 71 74 48 58 f8    	vaddps zmm15,zmm1,zmm0
  a1d334:	62 61 74 48 5c d8    	vsubps zmm27,zmm1,zmm0
  a1d33a:	62 51 44 40 58 c0    	vaddps zmm8,zmm23,zmm8
  a1d340:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x40]
  a1d347:	01 
  a1d348:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x300]
  a1d34f:	0c 
  a1d350:	62 f1 54 48 58 c6    	vaddps zmm0,zmm5,zmm6
  a1d356:	62 11 04 40 58 dc    	vaddps zmm11,zmm31,zmm28
  a1d35c:	62 d1 3c 48 5c cb    	vsubps zmm1,zmm8,zmm11
  a1d362:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a1d369:	04 
  a1d36a:	62 d1 3c 48 58 cb    	vaddps zmm1,zmm8,zmm11
  a1d370:	62 11 3c 40 5c dd    	vsubps zmm11,zmm24,zmm29
  a1d376:	62 01 14 40 58 e8    	vaddps zmm29,zmm29,zmm24
  a1d37c:	62 61 2c 48 58 fc    	vaddps zmm31,zmm10,zmm4
  a1d382:	62 f1 2c 48 5c dc    	vsubps zmm3,zmm10,zmm4
  a1d388:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm3
  a1d38f:	03 
  a1d390:	62 71 2c 40 58 f0    	vaddps zmm14,zmm26,zmm0
  a1d396:	62 62 7d 48 18 05 c0 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff6580c0]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a1d39d:	80 65 ff 
  a1d3a0:	62 92 3d 40 ac c2    	vfnmadd213ps zmm0,zmm24,zmm26
  a1d3a6:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x180]
  a1d3ad:	06 
  a1d3ae:	62 91 5c 48 58 de    	vaddps zmm3,zmm4,zmm30
  a1d3b4:	62 91 5c 48 5c e6    	vsubps zmm4,zmm4,zmm30
  a1d3ba:	62 e1 34 48 58 cb    	vaddps zmm17,zmm9,zmm3
  a1d3c0:	62 d2 3d 40 ac d9    	vfnmadd213ps zmm3,zmm24,zmm9
  a1d3c6:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a1d3cc:	62 62 55 40 ac d2    	vfnmadd213ps zmm26,zmm21,zmm2
  a1d3d2:	62 61 54 48 5c f6    	vsubps zmm30,zmm5,zmm6
  a1d3d8:	62 11 7c 48 28 d0    	vmovaps zmm10,zmm24
  a1d3de:	62 52 65 40 ac d3    	vfnmadd213ps zmm10,zmm19,zmm11
  a1d3e4:	62 a1 6c 48 58 ed    	vaddps zmm21,zmm2,zmm21
  a1d3ea:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x2c0]
  a1d3f1:	0b 
  a1d3f2:	62 b1 6c 40 58 d0    	vaddps zmm2,zmm18,zmm16
  a1d3f8:	62 b1 24 48 58 eb    	vaddps zmm5,zmm11,zmm19
  a1d3fe:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm5
  a1d405:	0a 
  a1d406:	62 71 34 40 58 ca    	vaddps zmm9,zmm25,zmm2
  a1d40c:	62 92 3d 40 ac d1    	vfnmadd213ps zmm2,zmm24,zmm25
  a1d412:	62 e1 4c 40 58 df    	vaddps zmm19,zmm22,zmm7
  a1d418:	62 61 4c 40 5c e7    	vsubps zmm28,zmm22,zmm7
  a1d41e:	62 91 7c 48 28 f8    	vmovaps zmm7,zmm24
  a1d424:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x140]
  a1d42b:	05 
  a1d42c:	62 d2 05 48 ac f8    	vfnmadd213ps zmm7,zmm15,zmm8
  a1d432:	62 c1 7c 48 28 ff    	vmovaps zmm23,zmm15
  a1d438:	62 f2 7d 48 18 35 92 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff657e92]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a1d43f:	7e 65 ff 
  a1d442:	62 71 14 48 59 ee    	vmulps zmm13,zmm13,zmm6
  a1d448:	62 51 44 48 5c dd    	vsubps zmm11,zmm7,zmm13
  a1d44e:	62 51 44 48 58 fd    	vaddps zmm15,zmm7,zmm13
  a1d454:	62 a1 5c 40 58 f3    	vaddps zmm22,zmm20,zmm19
  a1d45a:	62 a2 3d 40 ac dc    	vfnmadd213ps zmm19,zmm24,zmm20
  a1d460:	62 a1 6c 40 5c c0    	vsubps zmm16,zmm18,zmm16
  a1d466:	62 81 7c 48 28 e0    	vmovaps zmm20,zmm24
  a1d46c:	62 c2 05 40 ac e4    	vfnmadd213ps zmm20,zmm31,zmm12
  a1d472:	62 01 1c 48 58 ff    	vaddps zmm31,zmm12,zmm31
  a1d478:	62 91 7c 48 28 e8    	vmovaps zmm5,zmm24
  a1d47e:	62 92 75 48 ac ed    	vfnmadd213ps zmm5,zmm1,zmm29
  a1d484:	62 f1 5c 48 59 e6    	vmulps zmm4,zmm4,zmm6
  a1d48a:	62 f1 0c 40 59 fe    	vmulps zmm7,zmm30,zmm6
  a1d490:	62 61 14 40 58 e9    	vaddps zmm29,zmm29,zmm1
  a1d496:	62 61 7c 48 5c f4    	vsubps zmm30,zmm0,zmm4
  a1d49c:	62 f1 7c 48 58 e4    	vaddps zmm4,zmm0,zmm4
  a1d4a2:	62 61 44 48 58 cb    	vaddps zmm25,zmm7,zmm3
  a1d4a8:	62 f1 64 48 5c c7    	vsubps zmm0,zmm3,zmm7
  a1d4ae:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a1d4b5:	01 
  a1d4b6:	62 91 7c 48 28 c0    	vmovaps zmm0,zmm24
  a1d4bc:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x240]
  a1d4c3:	09 
  a1d4c4:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a1d4cb:	02 
  a1d4cc:	62 b2 75 48 ac c2    	vfnmadd213ps zmm0,zmm1,zmm18
  a1d4d2:	62 f1 24 40 59 de    	vmulps zmm3,zmm27,zmm6
  a1d4d8:	62 71 7c 48 58 eb    	vaddps zmm13,zmm0,zmm3
  a1d4de:	62 61 7c 48 5c c3    	vsubps zmm24,zmm0,zmm3
  a1d4e4:	62 f1 4c 48 59 44 24 	vmulps zmm0,zmm6,ZMMWORD PTR [rsp+0x200]
  a1d4eb:	08 
  a1d4ec:	62 91 7c 48 58 fa    	vaddps zmm7,zmm0,zmm26
  a1d4f2:	62 f1 2c 40 5c d8    	vsubps zmm3,zmm26,zmm0
  a1d4f8:	62 f1 4c 48 59 44 24 	vmulps zmm0,zmm6,ZMMWORD PTR [rsp+0x1c0]
  a1d4ff:	07 
  a1d500:	62 61 2c 48 5c d8    	vsubps zmm27,zmm10,zmm0
  a1d506:	62 61 2c 48 58 d0    	vaddps zmm26,zmm10,zmm0
  a1d50c:	62 31 3c 48 58 d7    	vaddps zmm10,zmm8,zmm23
  a1d512:	62 f1 4c 48 59 44 24 	vmulps zmm0,zmm6,ZMMWORD PTR [rsp+0x100]
  a1d519:	04 
  a1d51a:	62 71 1c 40 59 e6    	vmulps zmm12,zmm28,zmm6
  a1d520:	62 61 7c 40 59 e6    	vmulps zmm28,zmm16,zmm6
  a1d526:	62 f1 6c 40 58 c9    	vaddps zmm1,zmm18,zmm1
  a1d52c:	62 c1 6c 48 5c d4    	vsubps zmm18,zmm2,zmm12
  a1d532:	62 d1 6c 48 58 d4    	vaddps zmm2,zmm2,zmm12
  a1d538:	62 81 64 40 58 c4    	vaddps zmm16,zmm19,zmm28
  a1d53e:	62 01 64 40 5c e4    	vsubps zmm28,zmm19,zmm28
  a1d544:	62 a1 7c 48 58 dc    	vaddps zmm19,zmm0,zmm20
  a1d54a:	62 71 4c 48 59 64 24 	vmulps zmm12,zmm6,ZMMWORD PTR [rsp+0xc0]
  a1d551:	03 
  a1d552:	62 e1 5c 40 5c e0    	vsubps zmm20,zmm20,zmm0
  a1d558:	62 d1 54 48 5c c4    	vsubps zmm0,zmm5,zmm12
  a1d55e:	62 51 54 48 58 e4    	vaddps zmm12,zmm5,zmm12
  a1d564:	62 e1 7c 48 28 3d 12 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6a9a12]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a1d56b:	9a 6a ff 
  a1d56e:	62 32 45 40 7f f2    	vpermt2ps zmm14,zmm23,zmm18
  a1d574:	62 92 45 40 7f ff    	vpermt2ps zmm7,zmm23,zmm31
  a1d57a:	62 72 45 40 7f dc    	vpermt2ps zmm11,zmm23,zmm4
  a1d580:	62 72 45 40 7f cb    	vpermt2ps zmm9,zmm23,zmm3
  a1d586:	62 c2 45 40 7f da    	vpermt2ps zmm19,zmm23,zmm10
  a1d58c:	62 62 45 40 7f f2    	vpermt2ps zmm30,zmm23,zmm2
  a1d592:	62 a2 45 40 7f ec    	vpermt2ps zmm21,zmm23,zmm20
  a1d598:	62 a1 6c 00 57 d2    	vxorps xmm18,xmm18,xmm18
  a1d59e:	62 32 45 40 7f fa    	vpermt2ps zmm15,zmm23,zmm18
  a1d5a4:	62 d1 7c 48 28 d6    	vmovaps zmm2,zmm14
  a1d5aa:	62 61 7c 48 28 3d 4c 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff6a994c]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1d5b1:	99 6a ff 
  a1d5b4:	62 b2 05 40 7f d3    	vpermt2ps zmm2,zmm31,zmm19
  a1d5ba:	62 f1 7c 48 28 25 7c 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6a997c]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a1d5c1:	99 6a ff 
  a1d5c4:	62 32 5d 48 7f f3    	vpermt2ps zmm14,zmm4,zmm19
  a1d5ca:	62 f1 7c 48 28 df    	vmovaps zmm3,zmm7
  a1d5d0:	62 92 05 40 7f de    	vpermt2ps zmm3,zmm31,zmm30
  a1d5d6:	62 92 5d 48 7f fe    	vpermt2ps zmm7,zmm4,zmm30
  a1d5dc:	62 d1 7c 48 28 eb    	vmovaps zmm5,zmm11
  a1d5e2:	62 b2 05 40 7f ed    	vpermt2ps zmm5,zmm31,zmm21
  a1d5e8:	62 32 5d 48 7f dd    	vpermt2ps zmm11,zmm4,zmm21
  a1d5ee:	62 d1 7c 48 28 f1    	vmovaps zmm6,zmm9
  a1d5f4:	62 52 5d 48 7f cf    	vpermt2ps zmm9,zmm4,zmm15
  a1d5fa:	62 d2 05 40 7f f7    	vpermt2ps zmm6,zmm31,zmm15
  a1d600:	62 c1 8d 48 14 eb    	vunpcklpd zmm21,zmm14,zmm11
  a1d606:	62 c1 8d 48 15 db    	vunpckhpd zmm19,zmm14,zmm11
  a1d60c:	62 61 ed 48 14 f5    	vunpcklpd zmm30,zmm2,zmm5
  a1d612:	62 e1 ed 48 15 e5    	vunpckhpd zmm20,zmm2,zmm5
  a1d618:	62 d1 c5 48 14 d1    	vunpcklpd zmm2,zmm7,zmm9
  a1d61e:	62 51 c5 48 15 d9    	vunpckhpd zmm11,zmm7,zmm9
  a1d624:	62 f1 e5 48 14 ee    	vunpcklpd zmm5,zmm3,zmm6
  a1d62a:	62 71 e5 48 15 d6    	vunpckhpd zmm10,zmm3,zmm6
  a1d630:	62 a2 45 40 7f c8    	vpermt2ps zmm17,zmm23,zmm16
  a1d636:	62 02 45 40 7f dd    	vpermt2ps zmm27,zmm23,zmm29
  a1d63c:	62 21 7c 48 28 ed    	vmovaps zmm29,zmm21
  a1d642:	62 e1 7c 48 28 05 f4 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6a97f4]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1d649:	97 6a ff 
  a1d64c:	62 e2 7d 40 7f ea    	vpermt2ps zmm21,zmm16,zmm2
  a1d652:	62 72 45 40 7f 6c 24 	vpermt2ps zmm13,zmm23,ZMMWORD PTR [rsp+0x40]
  a1d659:	01 
  a1d65a:	62 82 45 40 7f f2    	vpermt2ps zmm22,zmm23,zmm26
  a1d660:	62 f2 45 40 7f c1    	vpermt2ps zmm0,zmm23,zmm1
  a1d666:	62 21 7c 48 28 d3    	vmovaps zmm26,zmm19
  a1d66c:	62 02 45 40 7f cc    	vpermt2ps zmm25,zmm23,zmm28
  a1d672:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x280]
  a1d679:	0a 
  a1d67a:	62 d2 45 40 7f dc    	vpermt2ps zmm3,zmm23,zmm12
  a1d680:	62 22 45 40 7f c2    	vpermt2ps zmm24,zmm23,zmm18
  a1d686:	62 c2 7d 40 7f db    	vpermt2ps zmm19,zmm16,zmm11
  a1d68c:	62 b1 7c 48 28 f1    	vmovaps zmm6,zmm17
  a1d692:	62 f2 05 40 7f f0    	vpermt2ps zmm6,zmm31,zmm0
  a1d698:	62 e2 5d 48 7f c8    	vpermt2ps zmm17,zmm4,zmm0
  a1d69e:	62 01 7c 48 28 e6    	vmovaps zmm28,zmm30
  a1d6a4:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a1d6aa:	62 92 05 40 7f c1    	vpermt2ps zmm0,zmm31,zmm25
  a1d6b0:	62 02 5d 48 7f d9    	vpermt2ps zmm27,zmm4,zmm25
  a1d6b6:	62 62 7d 40 7f f5    	vpermt2ps zmm30,zmm16,zmm5
  a1d6bc:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a1d6c2:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a1d6c8:	62 f2 05 40 7f fb    	vpermt2ps zmm7,zmm31,zmm3
  a1d6ce:	62 72 5d 48 7f eb    	vpermt2ps zmm13,zmm4,zmm3
  a1d6d4:	62 b1 7c 48 28 dc    	vmovaps zmm3,zmm20
  a1d6da:	62 31 7c 48 28 c6    	vmovaps zmm8,zmm22
  a1d6e0:	62 12 05 40 7f c0    	vpermt2ps zmm8,zmm31,zmm24
  a1d6e6:	62 82 5d 48 7f f0    	vpermt2ps zmm22,zmm4,zmm24
  a1d6ec:	62 c2 7d 40 7f e2    	vpermt2ps zmm20,zmm16,zmm10
  a1d6f2:	62 f1 cd 48 14 ef    	vunpcklpd zmm5,zmm6,zmm7
  a1d6f8:	62 71 cd 48 15 cf    	vunpckhpd zmm9,zmm6,zmm7
  a1d6fe:	62 d1 fd 48 14 e0    	vunpcklpd zmm4,zmm0,zmm8
  a1d704:	62 e1 7c 48 28 3d f2 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6a96f2]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1d70b:	96 6a ff 
  a1d70e:	62 62 45 40 7f ea    	vpermt2ps zmm29,zmm23,zmm2
  a1d714:	62 51 fd 48 15 f0    	vunpckhpd zmm14,zmm0,zmm8
  a1d71a:	62 d1 f5 40 14 c5    	vunpcklpd zmm0,zmm17,zmm13
  a1d720:	62 51 f5 40 15 e5    	vunpckhpd zmm12,zmm17,zmm13
  a1d726:	62 42 45 40 7f d3    	vpermt2ps zmm26,zmm23,zmm11
  a1d72c:	62 b1 a5 40 14 f6    	vunpcklpd zmm6,zmm27,zmm22
  a1d732:	62 b1 a5 40 15 fe    	vunpckhpd zmm7,zmm27,zmm22
  a1d738:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a1d73e:	62 f2 7d 40 7f ec    	vpermt2ps zmm5,zmm16,zmm4
  a1d744:	62 d1 7c 48 28 d1    	vmovaps zmm2,zmm9
  a1d74a:	62 52 7d 40 7f ce    	vpermt2ps zmm9,zmm16,zmm14
  a1d750:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a1d756:	62 72 45 40 7f c6    	vpermt2ps zmm8,zmm23,zmm6
  a1d75c:	62 f2 7d 40 7f c6    	vpermt2ps zmm0,zmm16,zmm6
  a1d762:	62 51 7c 48 28 dc    	vmovaps zmm11,zmm12
  a1d768:	62 72 45 40 7f df    	vpermt2ps zmm11,zmm23,zmm7
  a1d76e:	62 d2 45 40 7f da    	vpermt2ps zmm3,zmm23,zmm10
  a1d774:	62 72 7d 40 7f e7    	vpermt2ps zmm12,zmm16,zmm7
  a1d77a:	62 f1 7c 48 10 79 08 	vmovups zmm7,ZMMWORD PTR [rcx+0x200]
  a1d781:	62 71 7c 48 10 51 09 	vmovups zmm10,ZMMWORD PTR [rcx+0x240]
  a1d788:	62 f1 14 40 59 f7    	vmulps zmm6,zmm29,zmm7
  a1d78e:	62 d2 3d 48 bc f2    	vfnmadd231ps zmm6,zmm8,zmm10
  a1d794:	62 f1 3c 48 59 ff    	vmulps zmm7,zmm8,zmm7
  a1d79a:	62 71 7c 48 10 79 0c 	vmovups zmm15,ZMMWORD PTR [rcx+0x300]
  a1d7a1:	62 92 2d 48 b8 fd    	vfmadd231ps zmm7,zmm10,zmm29
  a1d7a7:	62 71 7c 48 10 69 0d 	vmovups zmm13,ZMMWORD PTR [rcx+0x340]
  a1d7ae:	62 51 2c 40 59 c7    	vmulps zmm8,zmm26,zmm15
  a1d7b4:	62 51 24 48 59 d7    	vmulps zmm10,zmm11,zmm15
  a1d7ba:	62 52 25 48 bc c5    	vfnmadd231ps zmm8,zmm11,zmm13
  a1d7c0:	62 71 7c 48 10 59 02 	vmovups zmm11,ZMMWORD PTR [rcx+0x80]
  a1d7c7:	62 12 15 48 b8 d2    	vfmadd231ps zmm10,zmm13,zmm26
  a1d7cd:	62 71 7c 48 10 69 03 	vmovups zmm13,ZMMWORD PTR [rcx+0xc0]
  a1d7d4:	62 51 0c 40 59 fb    	vmulps zmm15,zmm30,zmm11
  a1d7da:	62 52 55 48 bc fd    	vfnmadd231ps zmm15,zmm5,zmm13
  a1d7e0:	62 d1 54 48 59 eb    	vmulps zmm5,zmm5,zmm11
  a1d7e6:	62 71 7c 48 10 59 0a 	vmovups zmm11,ZMMWORD PTR [rcx+0x280]
  a1d7ed:	62 92 15 48 b8 ee    	vfmadd231ps zmm5,zmm13,zmm30
  a1d7f3:	62 71 7c 48 10 69 0b 	vmovups zmm13,ZMMWORD PTR [rcx+0x2c0]
  a1d7fa:	62 c1 54 40 59 c3    	vmulps zmm16,zmm21,zmm11
  a1d800:	62 51 7c 48 59 db    	vmulps zmm11,zmm0,zmm11
  a1d806:	62 c2 7d 48 bc c5    	vfnmadd231ps zmm16,zmm0,zmm13
  a1d80c:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  a1d813:	62 32 15 48 b8 dd    	vfmadd231ps zmm11,zmm13,zmm21
  a1d819:	62 71 7c 48 10 69 07 	vmovups zmm13,ZMMWORD PTR [rcx+0x1c0]
  a1d820:	62 e1 5c 40 59 c8    	vmulps zmm17,zmm20,zmm0
  a1d826:	62 c2 35 48 bc cd    	vfnmadd231ps zmm17,zmm9,zmm13
  a1d82c:	62 f1 34 48 59 c0    	vmulps zmm0,zmm9,zmm0
  a1d832:	62 71 7c 48 10 49 0e 	vmovups zmm9,ZMMWORD PTR [rcx+0x380]
  a1d839:	62 b2 15 48 b8 c4    	vfmadd231ps zmm0,zmm13,zmm20
  a1d83f:	62 71 7c 48 10 69 0f 	vmovups zmm13,ZMMWORD PTR [rcx+0x3c0]
  a1d846:	62 c1 64 40 59 e1    	vmulps zmm20,zmm19,zmm9
  a1d84c:	62 51 1c 48 59 c9    	vmulps zmm9,zmm12,zmm9
  a1d852:	62 c2 1d 48 bc e5    	vfnmadd231ps zmm20,zmm12,zmm13
  a1d858:	62 32 15 48 b8 cb    	vfmadd231ps zmm9,zmm13,zmm19
  a1d85e:	62 71 7c 48 10 61 04 	vmovups zmm12,ZMMWORD PTR [rcx+0x100]
  a1d865:	62 71 7c 48 10 69 05 	vmovups zmm13,ZMMWORD PTR [rcx+0x140]
  a1d86c:	62 d2 45 40 7f d6    	vpermt2ps zmm2,zmm23,zmm14
  a1d872:	62 51 64 48 59 f4    	vmulps zmm14,zmm3,zmm12
  a1d878:	62 52 6d 48 bc f5    	vfnmadd231ps zmm14,zmm2,zmm13
  a1d87e:	62 d1 6c 48 59 d4    	vmulps zmm2,zmm2,zmm12
  a1d884:	62 f2 15 48 b8 d3    	vfmadd231ps zmm2,zmm13,zmm3
  a1d88a:	62 22 45 40 7f e2    	vpermt2ps zmm28,zmm23,zmm18
  a1d890:	62 f2 45 40 7f cc    	vpermt2ps zmm1,zmm23,zmm4
  a1d896:	62 f1 1c 40 58 de    	vaddps zmm3,zmm28,zmm6
  a1d89c:	62 f1 1c 40 5c e6    	vsubps zmm4,zmm28,zmm6
  a1d8a2:	62 b1 04 48 58 f0    	vaddps zmm6,zmm15,zmm16
  a1d8a8:	62 31 04 48 5c e0    	vsubps zmm12,zmm15,zmm16
  a1d8ae:	62 51 54 48 58 eb    	vaddps zmm13,zmm5,zmm11
  a1d8b4:	62 d1 54 48 5c eb    	vsubps zmm5,zmm5,zmm11
  a1d8ba:	62 51 7c 48 58 d9    	vaddps zmm11,zmm0,zmm9
  a1d8c0:	62 d1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm9
  a1d8c6:	62 31 74 40 58 cc    	vaddps zmm9,zmm17,zmm20
  a1d8cc:	62 31 74 40 5c fc    	vsubps zmm15,zmm17,zmm20
  a1d8d2:	62 e1 44 48 58 c1    	vaddps zmm16,zmm7,zmm1
  a1d8d8:	62 f1 74 48 5c cf    	vsubps zmm1,zmm1,zmm7
  a1d8de:	62 d1 6c 48 58 fa    	vaddps zmm7,zmm2,zmm10
  a1d8e4:	62 d1 6c 48 5c d2    	vsubps zmm2,zmm2,zmm10
  a1d8ea:	62 51 0c 48 58 d0    	vaddps zmm10,zmm14,zmm8
  a1d8f0:	62 51 3c 48 5c c6    	vsubps zmm8,zmm8,zmm14
  a1d8f6:	62 71 1c 48 58 f5    	vaddps zmm14,zmm12,zmm5
  a1d8fc:	62 d1 54 48 5c ec    	vsubps zmm5,zmm5,zmm12
  a1d902:	62 51 7c 48 5c e7    	vsubps zmm12,zmm0,zmm15
  a1d908:	62 f1 04 48 58 c0    	vaddps zmm0,zmm15,zmm0
  a1d90e:	62 51 64 48 58 fa    	vaddps zmm15,zmm3,zmm10
  a1d914:	62 d1 64 48 5c da    	vsubps zmm3,zmm3,zmm10
  a1d91a:	62 51 14 48 58 d3    	vaddps zmm10,zmm13,zmm11
  a1d920:	62 51 14 48 5c db    	vsubps zmm11,zmm13,zmm11
  a1d926:	62 31 44 48 58 e8    	vaddps zmm13,zmm7,zmm16
  a1d92c:	62 f1 7c 40 5c ff    	vsubps zmm7,zmm16,zmm7
  a1d932:	62 c1 4c 48 58 c1    	vaddps zmm16,zmm6,zmm9
  a1d938:	62 f1 34 48 5c f6    	vsubps zmm6,zmm9,zmm6
  a1d93e:	62 71 5c 48 58 ca    	vaddps zmm9,zmm4,zmm2
  a1d944:	62 e2 7d 48 18 15 4e 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff657a4e]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a1d94b:	7a 65 ff 
  a1d94e:	62 31 0c 48 59 f2    	vmulps zmm14,zmm14,zmm18
  a1d954:	62 31 1c 48 59 e2    	vmulps zmm12,zmm12,zmm18
  a1d95a:	62 f1 5c 48 5c e2    	vsubps zmm4,zmm4,zmm2
  a1d960:	62 e1 3c 48 58 c9    	vaddps zmm17,zmm8,zmm1
  a1d966:	62 b1 54 48 59 d2    	vmulps zmm2,zmm5,zmm18
  a1d96c:	62 b1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm18
  a1d972:	62 51 74 48 5c c0    	vsubps zmm8,zmm1,zmm8
  a1d978:	62 f1 6c 48 5c e8    	vsubps zmm5,zmm2,zmm0
  a1d97e:	62 e1 6c 48 58 d0    	vaddps zmm18,zmm2,zmm0
  a1d984:	62 c1 64 48 58 db    	vaddps zmm19,zmm3,zmm11
  a1d98a:	62 d1 64 48 5c cb    	vsubps zmm1,zmm3,zmm11
  a1d990:	62 d1 0c 48 58 c4    	vaddps zmm0,zmm14,zmm12
  a1d996:	62 51 1c 48 5c de    	vsubps zmm11,zmm12,zmm14
  a1d99c:	62 71 44 48 58 e6    	vaddps zmm12,zmm7,zmm6
  a1d9a2:	62 f1 44 48 5c d6    	vsubps zmm2,zmm7,zmm6
  a1d9a8:	62 71 34 48 58 f0    	vaddps zmm14,zmm9,zmm0
  a1d9ae:	62 f1 34 48 5c c0    	vsubps zmm0,zmm9,zmm0
  a1d9b4:	62 b1 04 48 5c f0    	vsubps zmm6,zmm15,zmm16
  a1d9ba:	62 31 04 48 58 c8    	vaddps zmm9,zmm15,zmm16
  a1d9c0:	62 71 74 40 58 fd    	vaddps zmm15,zmm17,zmm5
  a1d9c6:	62 f1 74 40 5c ed    	vsubps zmm5,zmm17,zmm5
  a1d9cc:	62 d1 14 48 5c fa    	vsubps zmm7,zmm13,zmm10
  a1d9d2:	62 51 14 48 58 d2    	vaddps zmm10,zmm13,zmm10
  a1d9d8:	62 d1 7c 48 28 d9    	vmovaps zmm3,zmm9
  a1d9de:	62 e1 7c 48 28 05 d8 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6721d8]        # 8fbc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d070>
  a1d9e5:	21 67 ff 
  a1d9e8:	62 d2 7d 40 7f da    	vpermt2ps zmm3,zmm16,zmm10
  a1d9ee:	62 f1 7c 48 11 1c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm3
  a1d9f5:	62 d1 34 48 14 da    	vunpcklps zmm3,zmm9,zmm10
  a1d9fb:	62 f3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x60],zmm3,0x3
  a1da02:	06 03 
  a1da04:	62 d1 34 48 15 da    	vunpckhps zmm3,zmm9,zmm10
  a1da0a:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a1da11:	c5 f8 13 5c 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm3
  a1da17:	62 31 5c 48 58 ea    	vaddps zmm13,zmm4,zmm18
  a1da1d:	62 b1 5c 48 5c da    	vsubps zmm3,zmm4,zmm18
  a1da23:	62 e1 7c 28 28 0d d3 	vmovaps ymm17,YMMWORD PTR [rip+0xffffffffff6721d3]        # 8fc00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d0b0>
  a1da2a:	21 67 ff 
  a1da2d:	62 52 75 40 7f ca    	vpermt2ps zmm9,zmm17,zmm10
  a1da33:	c5 7c 11 4c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm9
  a1da39:	62 51 3c 48 58 cb    	vaddps zmm9,zmm8,zmm11
  a1da3f:	62 d1 3c 48 5c e3    	vsubps zmm4,zmm8,zmm11
  a1da45:	62 51 7c 48 28 c6    	vmovaps zmm8,zmm14
  a1da4b:	62 52 7d 40 7f c7    	vpermt2ps zmm8,zmm16,zmm15
  a1da51:	62 71 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x78],zmm8
  a1da58:	78 00 00 00 
  a1da5c:	62 51 0c 48 14 c7    	vunpcklps zmm8,zmm14,zmm15
  a1da62:	62 73 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xd8],zmm8,0x3
  a1da69:	d8 00 00 00 03 
  a1da6e:	62 51 0c 48 15 c7    	vunpckhps zmm8,zmm14,zmm15
  a1da74:	62 53 7d 48 19 c0 03 	vextractf32x4 xmm8,zmm8,0x3
  a1da7b:	c5 78 13 84 16 e8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xe8],xmm8
  a1da82:	00 00 
  a1da84:	62 52 75 40 7f f7    	vpermt2ps zmm14,zmm17,zmm15
  a1da8a:	c5 7c 11 b4 16 b8 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xb8],ymm14
  a1da91:	00 00 
  a1da93:	62 31 7c 48 28 c3    	vmovaps zmm8,zmm19
  a1da99:	62 52 7d 40 7f c4    	vpermt2ps zmm8,zmm16,zmm12
  a1da9f:	62 71 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm8
  a1daa6:	f0 00 00 00 
  a1daaa:	62 51 64 40 14 c4    	vunpcklps zmm8,zmm19,zmm12
  a1dab0:	62 73 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x150],zmm8,0x3
  a1dab7:	15 03 
  a1dab9:	62 51 64 40 15 c4    	vunpckhps zmm8,zmm19,zmm12
  a1dabf:	62 53 7d 48 19 c0 03 	vextractf32x4 xmm8,zmm8,0x3
  a1dac6:	c5 78 13 84 16 60 01 	vmovlps QWORD PTR [rsi+rdx*1+0x160],xmm8
  a1dacd:	00 00 
  a1dacf:	62 c2 75 40 7f dc    	vpermt2ps zmm19,zmm17,zmm12
  a1dad5:	62 e1 7c 28 11 9c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x130],ymm19
  a1dadc:	30 01 00 00 
  a1dae0:	62 51 7c 48 28 c5    	vmovaps zmm8,zmm13
  a1dae6:	62 52 7d 40 7f c1    	vpermt2ps zmm8,zmm16,zmm9
  a1daec:	62 71 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x168],zmm8
  a1daf3:	68 01 00 00 
  a1daf7:	62 51 14 48 14 c1    	vunpcklps zmm8,zmm13,zmm9
  a1dafd:	62 73 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1c8],zmm8,0x3
  a1db04:	c8 01 00 00 03 
  a1db09:	62 51 14 48 15 c1    	vunpckhps zmm8,zmm13,zmm9
  a1db0f:	62 53 7d 48 19 c0 03 	vextractf32x4 xmm8,zmm8,0x3
  a1db16:	c5 78 13 84 16 d8 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1d8],xmm8
  a1db1d:	00 00 
  a1db1f:	62 52 75 40 7f e9    	vpermt2ps zmm13,zmm17,zmm9
  a1db25:	c5 7c 11 ac 16 a8 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a8],ymm13
  a1db2c:	00 00 
  a1db2e:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a1db34:	62 72 7d 40 7f c7    	vpermt2ps zmm8,zmm16,zmm7
  a1db3a:	62 71 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm8
  a1db41:	e0 01 00 00 
  a1db45:	62 71 4c 48 14 c7    	vunpcklps zmm8,zmm6,zmm7
  a1db4b:	62 73 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x240],zmm8,0x3
  a1db52:	24 03 
  a1db54:	62 71 4c 48 15 c7    	vunpckhps zmm8,zmm6,zmm7
  a1db5a:	62 53 7d 48 19 c0 03 	vextractf32x4 xmm8,zmm8,0x3
  a1db61:	c5 78 13 84 16 50 02 	vmovlps QWORD PTR [rsi+rdx*1+0x250],xmm8
  a1db68:	00 00 
  a1db6a:	62 f2 75 40 7f f7    	vpermt2ps zmm6,zmm17,zmm7
  a1db70:	c5 fc 11 b4 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm6
  a1db77:	00 00 
  a1db79:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a1db7f:	62 f2 7d 40 7f f5    	vpermt2ps zmm6,zmm16,zmm5
  a1db85:	62 f1 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x258],zmm6
  a1db8c:	58 02 00 00 
  a1db90:	62 f1 7c 48 14 f5    	vunpcklps zmm6,zmm0,zmm5
  a1db96:	62 f3 7d 48 19 b4 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x2b8],zmm6,0x3
  a1db9d:	b8 02 00 00 03 
  a1dba2:	62 f1 7c 48 15 f5    	vunpckhps zmm6,zmm0,zmm5
  a1dba8:	62 f3 7d 48 19 f6 03 	vextractf32x4 xmm6,zmm6,0x3
  a1dbaf:	c5 f8 13 b4 16 c8 02 	vmovlps QWORD PTR [rsi+rdx*1+0x2c8],xmm6
  a1dbb6:	00 00 
  a1dbb8:	62 f2 75 40 7f c5    	vpermt2ps zmm0,zmm17,zmm5
  a1dbbe:	c5 fc 11 84 16 98 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x298],ymm0
  a1dbc5:	00 00 
  a1dbc7:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a1dbcd:	62 f2 7d 40 7f c2    	vpermt2ps zmm0,zmm16,zmm2
  a1dbd3:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm0
  a1dbda:	d0 02 00 00 
  a1dbde:	62 f1 74 48 14 c2    	vunpcklps zmm0,zmm1,zmm2
  a1dbe4:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x330],zmm0,0x3
  a1dbeb:	33 03 
  a1dbed:	62 f1 74 48 15 c2    	vunpckhps zmm0,zmm1,zmm2
  a1dbf3:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a1dbfa:	c5 f8 13 84 16 40 03 	vmovlps QWORD PTR [rsi+rdx*1+0x340],xmm0
  a1dc01:	00 00 
  a1dc03:	62 f2 75 40 7f ca    	vpermt2ps zmm1,zmm17,zmm2
  a1dc09:	c5 fc 11 8c 16 10 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x310],ymm1
  a1dc10:	00 00 
  a1dc12:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a1dc18:	62 f2 7d 40 7f c4    	vpermt2ps zmm0,zmm16,zmm4
  a1dc1e:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x348],zmm0
  a1dc25:	48 03 00 00 
  a1dc29:	62 f1 64 48 14 c4    	vunpcklps zmm0,zmm3,zmm4
  a1dc2f:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x3a8],zmm0,0x3
  a1dc36:	a8 03 00 00 03 
  a1dc3b:	62 f1 64 48 15 c4    	vunpckhps zmm0,zmm3,zmm4
  a1dc41:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a1dc48:	c5 f8 13 84 16 b8 03 	vmovlps QWORD PTR [rsi+rdx*1+0x3b8],xmm0
  a1dc4f:	00 00 
  a1dc51:	62 f2 75 40 7f dc    	vpermt2ps zmm3,zmm17,zmm4
  a1dc57:	c5 fc 11 9c 16 88 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x388],ymm3
  a1dc5e:	00 00 
  a1dc60:	48 81 c2 c0 03 00 00 	add    rdx,0x3c0
  a1dc67:	48 39 d0             	cmp    rax,rdx
  a1dc6a:	0f 85 40 f1 ff ff    	jne    a1cdb0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a1dc70:	48 89 ec             	mov    rsp,rbp
  a1dc73:	5d                   	pop    rbp
  a1dc74:	c5 f8 77             	vzeroupper
  a1dc77:	c3                   	ret
