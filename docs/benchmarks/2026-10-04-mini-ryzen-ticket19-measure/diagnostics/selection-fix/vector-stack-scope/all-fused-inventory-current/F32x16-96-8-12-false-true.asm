
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009fec40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  9fec40:	55                   	push   rbp
  9fec41:	48 89 e5             	mov    rbp,rsp
  9fec44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  9fec48:	48 81 ec 00 03 00 00 	sub    rsp,0x300
  9fec4f:	48 c1 e2 08          	shl    rdx,0x8
  9fec53:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  9fec57:	31 d2                	xor    edx,edx
  9fec59:	4c 8d 84 24 80 02 00 	lea    r8,[rsp+0x280]
  9fec60:	00 
  9fec61:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  9fec66:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  9fec6d:	00 00 00 
  9fec70:	c6 84 24 80 02 00 00 	mov    BYTE PTR [rsp+0x280],0x0
  9fec77:	00 
  9fec78:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  9fec7d:	62 f1 7c 48 10 24 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1]
  9fec84:	c5 7c 10 44 17 40    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x40]
  9fec8a:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  9fec90:	62 f1 7c 48 10 84 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x60]
  9fec97:	60 00 00 00 
  9fec9b:	c5 7c 10 8c 17 a0 00 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0xa0]
  9feca2:	00 00 
  9feca4:	62 71 7c 48 28 15 d2 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff68efd2]        # 8dc80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b130>
  9fecab:	ef 68 ff 
  9fecae:	62 d2 2d 48 7f e0    	vpermt2ps zmm4,zmm10,zmm8
  9fecb4:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  9fecba:	62 f1 7c 48 10 74 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0xc0]
  9fecc1:	03 
  9fecc2:	c5 7c 10 9c 17 00 01 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x100]
  9fecc9:	00 00 
  9feccb:	62 d2 2d 48 7f c1    	vpermt2ps zmm0,zmm10,zmm9
  9fecd1:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  9fecd7:	62 d2 2d 48 7f f3    	vpermt2ps zmm6,zmm10,zmm11
  9fecdd:	62 f1 7c 48 10 bc 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x120]
  9fece4:	20 01 00 00 
  9fece8:	62 f1 7c 48 28 15 4e 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff68ef4e]        # 8dc40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b0f0>
  9fecef:	ef 68 ff 
  9fecf2:	62 d2 6d 48 7f c8    	vpermt2ps zmm1,zmm2,zmm8
  9fecf8:	c5 7c 10 a4 17 60 01 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x160]
  9fecff:	00 00 
  9fed01:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  9fed07:	62 d2 2d 48 7f fc    	vpermt2ps zmm7,zmm10,zmm12
  9fed0d:	62 d2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm9
  9fed13:	62 71 7c 48 10 4c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x180]
  9fed1a:	06 
  9fed1b:	c5 7c 10 ac 17 c0 01 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x1c0]
  9fed22:	00 00 
  9fed24:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  9fed2a:	62 d2 6d 48 7f eb    	vpermt2ps zmm5,zmm2,zmm11
  9fed30:	62 52 2d 48 7f cd    	vpermt2ps zmm9,zmm10,zmm13
  9fed36:	62 71 7c 48 10 9c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  9fed3d:	e0 01 00 00 
  9fed41:	c5 7c 10 bc 17 20 02 	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0x220]
  9fed48:	00 00 
  9fed4a:	62 52 6d 48 7f c4    	vpermt2ps zmm8,zmm2,zmm12
  9fed50:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  9fed56:	62 52 2d 48 7f df    	vpermt2ps zmm11,zmm10,zmm15
  9fed5c:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x240]
  9fed63:	09 
  9fed64:	62 52 6d 48 7f f5    	vpermt2ps zmm14,zmm2,zmm13
  9fed6a:	c5 7c 10 ac 17 80 02 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x280]
  9fed71:	00 00 
  9fed73:	62 a1 7c 48 28 c8    	vmovaps zmm17,zmm16
  9fed79:	62 c2 2d 48 7f c5    	vpermt2ps zmm16,zmm10,zmm13
  9fed7f:	62 52 6d 48 7f e7    	vpermt2ps zmm12,zmm2,zmm15
  9fed85:	62 71 7c 48 10 bc 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x2a0]
  9fed8c:	a0 02 00 00 
  9fed90:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x2e0]
  9fed97:	17 
  9fed98:	62 c1 7c 48 28 df    	vmovaps zmm19,zmm15
  9fed9e:	62 c2 6d 48 7f cd    	vpermt2ps zmm17,zmm2,zmm13
  9feda4:	62 a2 6d 48 7f da    	vpermt2ps zmm19,zmm2,zmm18
  9fedaa:	62 32 2d 48 7f fa    	vpermt2ps zmm15,zmm10,zmm18
  9fedb0:	62 51 74 48 58 ee    	vaddps zmm13,zmm1,zmm14
  9fedb6:	62 a1 54 48 58 d1    	vaddps zmm18,zmm5,zmm17
  9fedbc:	62 c1 64 48 58 ec    	vaddps zmm21,zmm3,zmm12
  9fedc2:	62 a1 3c 48 58 f3    	vaddps zmm22,zmm8,zmm19
  9fedc8:	62 c1 5c 48 58 f9    	vaddps zmm23,zmm4,zmm9
  9fedce:	62 21 14 48 58 ca    	vaddps zmm25,zmm13,zmm18
  9fedd4:	62 21 4c 48 58 c0    	vaddps zmm24,zmm6,zmm16
  9fedda:	62 01 44 40 58 d0    	vaddps zmm26,zmm23,zmm24
  9fede0:	62 41 7c 48 58 db    	vaddps zmm27,zmm0,zmm11
  9fede6:	62 21 54 40 58 e6    	vaddps zmm28,zmm21,zmm22
  9fedec:	62 41 44 48 58 ef    	vaddps zmm29,zmm7,zmm15
  9fedf2:	62 01 24 40 58 f5    	vaddps zmm30,zmm27,zmm29
  9fedf8:	62 d1 74 48 5c ce    	vsubps zmm1,zmm1,zmm14
  9fedfe:	62 81 2c 40 58 e6    	vaddps zmm20,zmm26,zmm30
  9fee04:	62 b1 4c 48 5c f0    	vsubps zmm6,zmm6,zmm16
  9fee0a:	62 71 74 48 58 f6    	vaddps zmm14,zmm1,zmm6
  9fee10:	62 51 64 48 5c e4    	vsubps zmm12,zmm3,zmm12
  9fee16:	62 11 34 40 58 d4    	vaddps zmm10,zmm25,zmm28
  9fee1c:	62 d1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm11
  9fee22:	62 71 1c 48 58 d8    	vaddps zmm11,zmm12,zmm0
  9fee28:	62 d1 44 48 5c ff    	vsubps zmm7,zmm7,zmm15
  9fee2e:	62 f2 7d 48 18 15 64 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff676564]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  9fee35:	65 67 ff 
  9fee38:	62 71 24 48 59 da    	vmulps zmm11,zmm11,zmm2
  9fee3e:	62 31 3c 48 5c c3    	vsubps zmm8,zmm8,zmm19
  9fee44:	62 51 44 48 5c f8    	vsubps zmm15,zmm7,zmm8
  9fee4a:	62 d1 5c 48 5c e1    	vsubps zmm4,zmm4,zmm9
  9fee50:	62 71 04 48 59 ca    	vmulps zmm9,zmm15,zmm2
  9fee56:	62 71 74 40 5c fd    	vsubps zmm15,zmm17,zmm5
  9fee5c:	62 e1 04 48 58 c4    	vaddps zmm16,zmm15,zmm4
  9fee62:	62 d1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm12
  9fee68:	62 c1 24 48 58 c9    	vaddps zmm17,zmm11,zmm9
  9fee6e:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  9fee74:	62 f1 3c 48 58 ef    	vaddps zmm5,zmm8,zmm7
  9fee7a:	62 71 54 48 59 c2    	vmulps zmm8,zmm5,zmm2
  9fee80:	62 c1 7c 48 5c d8    	vsubps zmm19,zmm0,zmm8
  9fee86:	62 31 14 48 5c ea    	vsubps zmm13,zmm13,zmm18
  9fee8c:	62 81 24 40 5c d5    	vsubps zmm18,zmm27,zmm29
  9fee92:	62 b1 14 48 58 fa    	vaddps zmm7,zmm13,zmm18
  9fee98:	62 b1 0c 48 58 e9    	vaddps zmm5,zmm14,zmm17
  9fee9e:	62 01 44 40 5c d8    	vsubps zmm27,zmm23,zmm24
  9feea4:	62 a1 4c 40 5c ed    	vsubps zmm21,zmm22,zmm21
  9feeaa:	62 01 54 40 58 c3    	vaddps zmm24,zmm21,zmm27
  9feeb0:	62 21 7c 40 58 eb    	vaddps zmm29,zmm16,zmm19
  9feeb6:	62 f1 74 48 5c ce    	vsubps zmm1,zmm1,zmm6
  9feebc:	62 d1 7c 48 58 f0    	vaddps zmm6,zmm0,zmm8
  9feec2:	62 d1 5c 48 5c e7    	vsubps zmm4,zmm4,zmm15
  9feec8:	62 71 74 48 58 e6    	vaddps zmm12,zmm1,zmm6
  9feece:	62 51 34 48 5c cb    	vsubps zmm9,zmm9,zmm11
  9feed4:	62 91 34 40 5c c4    	vsubps zmm0,zmm25,zmm28
  9feeda:	62 01 2c 40 5c ce    	vsubps zmm25,zmm26,zmm30
  9feee0:	62 41 5c 48 58 d1    	vaddps zmm26,zmm4,zmm9
  9feee6:	62 31 0c 48 5c d9    	vsubps zmm11,zmm14,zmm17
  9feeec:	62 31 14 48 5c c2    	vsubps zmm8,zmm13,zmm18
  9feef2:	62 21 24 40 5c f5    	vsubps zmm30,zmm27,zmm21
  9feef8:	62 21 7c 40 5c fb    	vsubps zmm31,zmm16,zmm19
  9feefe:	62 71 74 48 5c ee    	vsubps zmm13,zmm1,zmm6
  9fef04:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  9fef0a:	62 e1 7c 48 28 2d 6c 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6c806c]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  9fef11:	80 6c ff 
  9fef14:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  9fef18:	62 f2 55 40 7f cb    	vpermt2ps zmm1,zmm21,zmm3
  9fef1e:	62 41 5c 48 5c e1    	vsubps zmm28,zmm4,zmm9
  9fef24:	62 e1 7c 48 28 05 92 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6c8092]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  9fef2b:	80 6c ff 
  9fef2e:	62 72 7d 40 7f d3    	vpermt2ps zmm10,zmm16,zmm3
  9fef34:	62 f1 7c 48 28 e5    	vmovaps zmm4,zmm5
  9fef3a:	62 71 7c 48 28 f7    	vmovaps zmm14,zmm7
  9fef40:	62 f2 7d 40 7f eb    	vpermt2ps zmm5,zmm16,zmm3
  9fef46:	62 72 55 40 7f f3    	vpermt2ps zmm14,zmm21,zmm3
  9fef4c:	62 f2 7d 40 7f fb    	vpermt2ps zmm7,zmm16,zmm3
  9fef52:	62 51 7c 48 28 cc    	vmovaps zmm9,zmm12
  9fef58:	62 72 7d 40 7f e3    	vpermt2ps zmm12,zmm16,zmm3
  9fef5e:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  9fef64:	62 f2 55 40 7f f3    	vpermt2ps zmm6,zmm21,zmm3
  9fef6a:	62 f2 7d 40 7f c3    	vpermt2ps zmm0,zmm16,zmm3
  9fef70:	62 f2 55 40 7f e3    	vpermt2ps zmm4,zmm21,zmm3
  9fef76:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  9fef7c:	62 72 7d 40 7f db    	vpermt2ps zmm11,zmm16,zmm3
  9fef82:	62 51 7c 48 28 f8    	vmovaps zmm15,zmm8
  9fef88:	62 72 55 40 7f cb    	vpermt2ps zmm9,zmm21,zmm3
  9fef8e:	62 72 55 40 7f fb    	vpermt2ps zmm15,zmm21,zmm3
  9fef94:	62 72 7d 40 7f c3    	vpermt2ps zmm8,zmm16,zmm3
  9fef9a:	62 c1 7c 48 28 f5    	vmovaps zmm22,zmm13
  9fefa0:	62 e2 55 40 7f d3    	vpermt2ps zmm18,zmm21,zmm3
  9fefa6:	62 72 7d 40 7f eb    	vpermt2ps zmm13,zmm16,zmm3
  9fefac:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  9fefb2:	62 f1 7c 48 28 15 44 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6c7f44]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  9fefb9:	7f 6c ff 
  9fefbc:	62 e2 6d 48 7f ce    	vpermt2ps zmm17,zmm2,zmm6
  9fefc2:	62 e2 55 40 7f f3    	vpermt2ps zmm22,zmm21,zmm3
  9fefc8:	62 61 7c 48 28 1d 6e 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff6c7f6e]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  9fefcf:	7f 6c ff 
  9fefd2:	62 f2 25 40 7f ce    	vpermt2ps zmm1,zmm27,zmm6
  9fefd8:	62 c1 7c 48 28 de    	vmovaps zmm19,zmm14
  9fefde:	62 c2 6d 48 7f df    	vpermt2ps zmm19,zmm2,zmm15
  9fefe4:	62 e1 7c 48 28 fc    	vmovaps zmm23,zmm4
  9fefea:	62 52 25 40 7f f7    	vpermt2ps zmm14,zmm27,zmm15
  9feff0:	62 72 6d 48 7f d0    	vpermt2ps zmm10,zmm2,zmm0
  9feff6:	62 d2 6d 48 7f eb    	vpermt2ps zmm5,zmm2,zmm11
  9feffc:	62 b2 25 40 7f e2    	vpermt2ps zmm4,zmm27,zmm18
  9ff002:	62 d2 6d 48 7f f8    	vpermt2ps zmm7,zmm2,zmm8
  9ff008:	62 52 6d 48 7f e5    	vpermt2ps zmm12,zmm2,zmm13
  9ff00e:	62 31 f5 40 14 c3    	vunpcklpd zmm8,zmm17,zmm19
  9ff014:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm8
  9ff01b:	07 
  9ff01c:	62 d1 7c 48 28 f1    	vmovaps zmm6,zmm9
  9ff022:	62 b1 f5 40 15 c3    	vunpckhpd zmm0,zmm17,zmm19
  9ff028:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  9ff02f:	04 
  9ff030:	62 d1 f5 48 14 c6    	vunpcklpd zmm0,zmm1,zmm14
  9ff036:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  9ff03d:	01 
  9ff03e:	62 d1 f5 48 15 c6    	vunpckhpd zmm0,zmm1,zmm14
  9ff044:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  9ff04b:	05 
  9ff04c:	62 32 25 40 7f ce    	vpermt2ps zmm9,zmm27,zmm22
  9ff052:	62 f1 ad 48 14 cf    	vunpcklpd zmm1,zmm10,zmm7
  9ff058:	62 f1 ad 48 15 c7    	vunpckhpd zmm0,zmm10,zmm7
  9ff05e:	62 51 d5 48 14 f4    	vunpcklpd zmm14,zmm5,zmm12
  9ff064:	62 a2 6d 48 7f fa    	vpermt2ps zmm23,zmm2,zmm18
  9ff06a:	62 c1 d5 48 15 d4    	vunpckhpd zmm18,zmm5,zmm12
  9ff070:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm8
  9ff077:	02 
  9ff078:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  9ff07e:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  9ff084:	62 b2 6d 48 7f f6    	vpermt2ps zmm6,zmm2,zmm22
  9ff08a:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  9ff090:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  9ff096:	62 31 7c 48 28 c4    	vmovaps zmm8,zmm20
  9ff09c:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  9ff0a2:	62 f2 55 40 7f cb    	vpermt2ps zmm1,zmm21,zmm3
  9ff0a8:	62 51 dd 48 14 f9    	vunpcklpd zmm15,zmm4,zmm9
  9ff0ae:	62 72 7d 40 7f c3    	vpermt2ps zmm8,zmm16,zmm3
  9ff0b4:	62 91 7c 48 28 ed    	vmovaps zmm5,zmm29
  9ff0ba:	62 f2 55 40 7f eb    	vpermt2ps zmm5,zmm21,zmm3
  9ff0c0:	62 c1 dd 48 15 c9    	vunpckhpd zmm17,zmm4,zmm9
  9ff0c6:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  9ff0cc:	62 f2 55 40 7f e3    	vpermt2ps zmm4,zmm21,zmm3
  9ff0d2:	62 91 7c 48 28 fa    	vmovaps zmm7,zmm26
  9ff0d8:	62 e1 7c 48 28 1d 1e 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff6c7d1e]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  9ff0df:	7d 6c ff 
  9ff0e2:	62 52 65 40 7f de    	vpermt2ps zmm11,zmm19,zmm14
  9ff0e8:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm11
  9ff0ef:	03 
  9ff0f0:	62 f2 55 40 7f fb    	vpermt2ps zmm7,zmm21,zmm3
  9ff0f6:	62 11 7c 48 28 e9    	vmovaps zmm13,zmm25
  9ff0fc:	62 11 7c 48 28 c9    	vmovaps zmm9,zmm25
  9ff102:	62 72 55 40 7f cb    	vpermt2ps zmm9,zmm21,zmm3
  9ff108:	62 f1 7c 48 28 05 2e 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6c7d2e]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  9ff10f:	7d 6c ff 
  9ff112:	62 52 7d 48 7f e6    	vpermt2ps zmm12,zmm0,zmm14
  9ff118:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm12
  9ff11f:	06 
  9ff120:	62 72 7d 40 7f eb    	vpermt2ps zmm13,zmm16,zmm3
  9ff126:	62 11 7c 48 28 f7    	vmovaps zmm14,zmm31
  9ff12c:	62 72 55 40 7f f3    	vpermt2ps zmm14,zmm21,zmm3
  9ff132:	62 a2 65 40 7f f2    	vpermt2ps zmm22,zmm19,zmm18
  9ff138:	62 01 7c 48 28 ce    	vmovaps zmm25,zmm30
  9ff13e:	62 62 55 40 7f cb    	vpermt2ps zmm25,zmm21,zmm3
  9ff144:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  9ff14a:	62 32 7d 48 7f d2    	vpermt2ps zmm10,zmm0,zmm18
  9ff150:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm10
  9ff157:	09 
  9ff158:	62 c2 6d 48 7f e1    	vpermt2ps zmm20,zmm2,zmm9
  9ff15e:	62 d2 25 40 7f c9    	vpermt2ps zmm1,zmm27,zmm9
  9ff164:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  9ff16a:	62 52 6d 48 7f d6    	vpermt2ps zmm10,zmm2,zmm14
  9ff170:	62 d2 25 40 7f ee    	vpermt2ps zmm5,zmm27,zmm14
  9ff176:	62 71 7c 48 28 cc    	vmovaps zmm9,zmm4
  9ff17c:	62 12 6d 48 7f c9    	vpermt2ps zmm9,zmm2,zmm25
  9ff182:	62 71 c5 40 14 e6    	vunpcklpd zmm12,zmm23,zmm6
  9ff188:	62 92 25 40 7f e1    	vpermt2ps zmm4,zmm27,zmm25
  9ff18e:	62 11 7c 48 28 f4    	vmovaps zmm14,zmm28
  9ff194:	62 72 55 40 7f f3    	vpermt2ps zmm14,zmm21,zmm3
  9ff19a:	62 71 c5 40 15 de    	vunpckhpd zmm11,zmm23,zmm6
  9ff1a0:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm11
  9ff1a7:	08 
  9ff1a8:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  9ff1ae:	62 d2 6d 48 7f f6    	vpermt2ps zmm6,zmm2,zmm14
  9ff1b4:	62 d2 25 40 7f fe    	vpermt2ps zmm7,zmm27,zmm14
  9ff1ba:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x100]
  9ff1c1:	04 
  9ff1c2:	62 21 7c 48 28 cf    	vmovaps zmm25,zmm23
  9ff1c8:	62 52 6d 48 7f c5    	vpermt2ps zmm8,zmm2,zmm13
  9ff1ce:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x40]
  9ff1d5:	01 
  9ff1d6:	62 31 7c 48 28 f5    	vmovaps zmm14,zmm21
  9ff1dc:	62 62 7d 40 7f eb    	vpermt2ps zmm29,zmm16,zmm3
  9ff1e2:	62 62 7d 40 7f fb    	vpermt2ps zmm31,zmm16,zmm3
  9ff1e8:	62 02 6d 48 7f ef    	vpermt2ps zmm29,zmm2,zmm31
  9ff1ee:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x140]
  9ff1f5:	05 
  9ff1f6:	62 81 7c 48 28 d3    	vmovaps zmm18,zmm27
  9ff1fc:	62 62 7d 40 7f c3    	vpermt2ps zmm24,zmm16,zmm3
  9ff202:	62 52 65 40 7f f7    	vpermt2ps zmm14,zmm19,zmm15
  9ff208:	62 62 7d 40 7f d3    	vpermt2ps zmm26,zmm16,zmm3
  9ff20e:	62 62 7d 40 7f f3    	vpermt2ps zmm30,zmm16,zmm3
  9ff214:	62 62 7d 40 7f e3    	vpermt2ps zmm28,zmm16,zmm3
  9ff21a:	62 c2 7d 48 7f ef    	vpermt2ps zmm21,zmm0,zmm15
  9ff220:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm21
  9ff227:	01 
  9ff228:	62 02 6d 48 7f c6    	vpermt2ps zmm24,zmm2,zmm30
  9ff22e:	62 02 6d 48 7f d4    	vpermt2ps zmm26,zmm2,zmm28
  9ff234:	62 41 dd 40 14 f1    	vunpcklpd zmm30,zmm20,zmm9
  9ff23a:	62 a2 65 40 7f d1    	vpermt2ps zmm18,zmm19,zmm17
  9ff240:	62 41 dd 40 15 f9    	vunpckhpd zmm31,zmm20,zmm9
  9ff246:	62 71 f5 48 14 cc    	vunpcklpd zmm9,zmm1,zmm4
  9ff24c:	62 e1 f5 48 15 c4    	vunpckhpd zmm16,zmm1,zmm4
  9ff252:	62 22 7d 48 7f d9    	vpermt2ps zmm27,zmm0,zmm17
  9ff258:	62 81 7c 48 28 cb    	vmovaps zmm17,zmm27
  9ff25e:	62 f1 d5 48 14 e7    	vunpcklpd zmm4,zmm5,zmm7
  9ff264:	62 f1 d5 48 15 ef    	vunpckhpd zmm5,zmm5,zmm7
  9ff26a:	62 91 bd 48 14 f8    	vunpcklpd zmm7,zmm8,zmm24
  9ff270:	62 61 ad 48 14 e6    	vunpcklpd zmm28,zmm10,zmm6
  9ff276:	62 81 bd 48 15 e0    	vunpckhpd zmm20,zmm8,zmm24
  9ff27c:	62 91 95 40 14 d2    	vunpcklpd zmm2,zmm29,zmm26
  9ff282:	62 11 95 40 15 c2    	vunpckhpd zmm8,zmm29,zmm26
  9ff288:	62 61 ad 48 15 d6    	vunpckhpd zmm26,zmm10,zmm6
  9ff28e:	62 11 7c 48 28 ee    	vmovaps zmm13,zmm30
  9ff294:	62 91 7c 48 28 df    	vmovaps zmm3,zmm31
  9ff29a:	62 41 7c 48 28 d9    	vmovaps zmm27,zmm9
  9ff2a0:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x80]
  9ff2a7:	02 
  9ff2a8:	62 42 65 40 7f ec    	vpermt2ps zmm29,zmm19,zmm12
  9ff2ae:	62 62 65 40 7f dc    	vpermt2ps zmm27,zmm19,zmm4
  9ff2b4:	62 72 7d 48 7f cc    	vpermt2ps zmm9,zmm0,zmm4
  9ff2ba:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm9
  9ff2c1:	02 
  9ff2c2:	62 b1 7c 48 28 f0    	vmovaps zmm6,zmm16
  9ff2c8:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x1c0]
  9ff2cf:	07 
  9ff2d0:	62 52 7d 48 7f fc    	vpermt2ps zmm15,zmm0,zmm12
  9ff2d6:	62 f2 65 40 7f f5    	vpermt2ps zmm6,zmm19,zmm5
  9ff2dc:	62 e2 7d 48 7f c5    	vpermt2ps zmm16,zmm0,zmm5
  9ff2e2:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  9ff2e8:	62 c2 7d 48 7f fb    	vpermt2ps zmm23,zmm0,zmm11
  9ff2ee:	62 31 7c 48 28 df    	vmovaps zmm11,zmm23
  9ff2f4:	62 f2 65 40 7f e2    	vpermt2ps zmm4,zmm19,zmm2
  9ff2fa:	62 f2 7d 48 7f fa    	vpermt2ps zmm7,zmm0,zmm2
  9ff300:	62 21 7c 48 28 c4    	vmovaps zmm24,zmm20
  9ff306:	62 02 7d 48 7f f4    	vpermt2ps zmm30,zmm0,zmm28
  9ff30c:	62 42 65 40 7f c0    	vpermt2ps zmm24,zmm19,zmm8
  9ff312:	62 31 7c 48 28 e3    	vmovaps zmm12,zmm19
  9ff318:	62 c2 7d 48 7f e0    	vpermt2ps zmm20,zmm0,zmm8
  9ff31e:	62 f1 7c 48 10 49 12 	vmovups zmm1,ZMMWORD PTR [rcx+0x480]
  9ff325:	62 02 7d 48 7f fa    	vpermt2ps zmm31,zmm0,zmm26
  9ff32b:	62 f1 7c 48 10 51 13 	vmovups zmm2,ZMMWORD PTR [rcx+0x4c0]
  9ff332:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  9ff339:	06 
  9ff33a:	62 e1 7c 48 59 f9    	vmulps zmm23,zmm0,zmm1
  9ff340:	62 71 44 48 59 c9    	vmulps zmm9,zmm7,zmm1
  9ff346:	62 e2 45 48 bc fa    	vfnmadd231ps zmm23,zmm7,zmm2
  9ff34c:	62 f1 7c 48 10 49 0c 	vmovups zmm1,ZMMWORD PTR [rcx+0x300]
  9ff353:	62 72 6d 48 b8 c8    	vfmadd231ps zmm9,zmm2,zmm0
  9ff359:	62 f1 7c 48 10 51 0d 	vmovups zmm2,ZMMWORD PTR [rcx+0x340]
  9ff360:	62 f1 6c 40 59 f9    	vmulps zmm7,zmm18,zmm1
  9ff366:	62 f2 4d 48 bc fa    	vfnmadd231ps zmm7,zmm6,zmm2
  9ff36c:	62 e1 4c 48 59 e9    	vmulps zmm21,zmm6,zmm1
  9ff372:	62 f1 7c 48 10 71 14 	vmovups zmm6,ZMMWORD PTR [rcx+0x500]
  9ff379:	62 a2 6d 48 b8 ea    	vfmadd231ps zmm21,zmm2,zmm18
  9ff37f:	62 f1 7c 48 10 51 15 	vmovups zmm2,ZMMWORD PTR [rcx+0x540]
  9ff386:	62 f1 4c 40 59 ce    	vmulps zmm1,zmm22,zmm6
  9ff38c:	62 f1 3c 40 59 f6    	vmulps zmm6,zmm24,zmm6
  9ff392:	62 f2 3d 40 bc ca    	vfnmadd231ps zmm1,zmm24,zmm2
  9ff398:	62 71 7c 48 10 41 08 	vmovups zmm8,ZMMWORD PTR [rcx+0x200]
  9ff39f:	62 b2 6d 48 b8 f6    	vfmadd231ps zmm6,zmm2,zmm22
  9ff3a5:	62 f1 7c 48 10 51 09 	vmovups zmm2,ZMMWORD PTR [rcx+0x240]
  9ff3ac:	62 c1 0c 48 59 f0    	vmulps zmm22,zmm14,zmm8
  9ff3b2:	62 e2 25 40 bc f2    	vfnmadd231ps zmm22,zmm27,zmm2
  9ff3b8:	62 c1 24 40 59 d0    	vmulps zmm18,zmm27,zmm8
  9ff3be:	62 71 7c 48 10 41 0e 	vmovups zmm8,ZMMWORD PTR [rcx+0x380]
  9ff3c5:	62 c2 6d 48 b8 d6    	vfmadd231ps zmm18,zmm2,zmm14
  9ff3cb:	62 f1 7c 48 10 51 0f 	vmovups zmm2,ZMMWORD PTR [rcx+0x3c0]
  9ff3d2:	62 51 74 40 59 f0    	vmulps zmm14,zmm17,zmm8
  9ff3d8:	62 51 7c 40 59 c0    	vmulps zmm8,zmm16,zmm8
  9ff3de:	62 72 7d 40 bc f2    	vfnmadd231ps zmm14,zmm16,zmm2
  9ff3e4:	62 71 7c 48 10 51 06 	vmovups zmm10,ZMMWORD PTR [rcx+0x180]
  9ff3eb:	62 32 6d 48 b8 c1    	vfmadd231ps zmm8,zmm2,zmm17
  9ff3f1:	62 f1 7c 48 10 51 07 	vmovups zmm2,ZMMWORD PTR [rcx+0x1c0]
  9ff3f8:	62 c1 7c 48 28 c3    	vmovaps zmm16,zmm11
  9ff3fe:	62 d1 24 48 59 ea    	vmulps zmm5,zmm11,zmm10
  9ff404:	62 f2 05 40 bc ea    	vfnmadd231ps zmm5,zmm31,zmm2
  9ff40a:	62 51 04 40 59 d2    	vmulps zmm10,zmm31,zmm10
  9ff410:	62 71 7c 48 10 59 02 	vmovups zmm11,ZMMWORD PTR [rcx+0x80]
  9ff417:	62 32 6d 48 b8 d0    	vfmadd231ps zmm10,zmm2,zmm16
  9ff41d:	62 f1 7c 48 10 51 03 	vmovups zmm2,ZMMWORD PTR [rcx+0xc0]
  9ff424:	62 c1 04 48 59 cb    	vmulps zmm17,zmm15,zmm11
  9ff42a:	62 51 0c 40 59 db    	vmulps zmm11,zmm30,zmm11
  9ff430:	62 e2 0d 40 bc ca    	vfnmadd231ps zmm17,zmm30,zmm2
  9ff436:	62 52 6d 48 b8 df    	vfmadd231ps zmm11,zmm2,zmm15
  9ff43c:	62 f1 7c 48 10 51 10 	vmovups zmm2,ZMMWORD PTR [rcx+0x400]
  9ff443:	62 e1 7c 48 10 41 11 	vmovups zmm16,ZMMWORD PTR [rcx+0x440]
  9ff44a:	62 62 65 40 7f 4c 24 	vpermt2ps zmm25,zmm19,ZMMWORD PTR [rsp+0x200]
  9ff451:	08 
  9ff452:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0xc0]
  9ff459:	03 
  9ff45a:	62 61 04 48 59 c2    	vmulps zmm24,zmm15,zmm2
  9ff460:	62 22 5d 48 bc c0    	vfnmadd231ps zmm24,zmm4,zmm16
  9ff466:	62 f1 5c 48 59 d2    	vmulps zmm2,zmm4,zmm2
  9ff46c:	62 f1 7c 48 10 61 04 	vmovups zmm4,ZMMWORD PTR [rcx+0x100]
  9ff473:	62 d2 7d 40 b8 d7    	vfmadd231ps zmm2,zmm16,zmm15
  9ff479:	62 e1 7c 48 10 41 05 	vmovups zmm16,ZMMWORD PTR [rcx+0x140]
  9ff480:	62 e1 7c 48 10 59 0a 	vmovups zmm19,ZMMWORD PTR [rcx+0x280]
  9ff487:	62 92 1d 48 7f da    	vpermt2ps zmm3,zmm12,zmm26
  9ff48d:	62 61 34 40 59 d4    	vmulps zmm26,zmm25,zmm4
  9ff493:	62 22 65 48 bc d0    	vfnmadd231ps zmm26,zmm3,zmm16
  9ff499:	62 f1 64 48 59 e4    	vmulps zmm4,zmm3,zmm4
  9ff49f:	62 f1 7c 48 10 59 0b 	vmovups zmm3,ZMMWORD PTR [rcx+0x2c0]
  9ff4a6:	62 92 7d 40 b8 e1    	vfmadd231ps zmm4,zmm16,zmm25
  9ff4ac:	62 e1 7c 48 10 41 16 	vmovups zmm16,ZMMWORD PTR [rcx+0x580]
  9ff4b3:	62 61 7c 48 10 49 17 	vmovups zmm25,ZMMWORD PTR [rcx+0x5c0]
  9ff4ba:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  9ff4c0:	62 92 1d 48 7f c4    	vpermt2ps zmm0,zmm12,zmm28
  9ff4c6:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x240]
  9ff4cd:	09 
  9ff4ce:	62 21 14 48 59 d8    	vmulps zmm27,zmm13,zmm16
  9ff4d4:	62 02 5d 40 bc d9    	vfnmadd231ps zmm27,zmm20,zmm25
  9ff4da:	62 31 5c 40 59 e0    	vmulps zmm12,zmm20,zmm16
  9ff4e0:	62 01 7c 48 28 e5    	vmovaps zmm28,zmm29
  9ff4e6:	62 e1 14 40 58 c7    	vaddps zmm16,zmm29,zmm7
  9ff4ec:	62 52 35 40 b8 e5    	vfmadd231ps zmm12,zmm25,zmm13
  9ff4f2:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x40]
  9ff4f9:	01 
  9ff4fa:	62 21 14 48 59 cb    	vmulps zmm25,zmm13,zmm19
  9ff500:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x80]
  9ff507:	02 
  9ff508:	62 62 05 48 bc cb    	vfnmadd231ps zmm25,zmm15,zmm3
  9ff50e:	62 21 54 48 58 ef    	vaddps zmm29,zmm5,zmm23
  9ff514:	62 31 04 48 59 fb    	vmulps zmm15,zmm15,zmm19
  9ff51a:	62 e1 4c 40 58 d9    	vaddps zmm19,zmm22,zmm1
  9ff520:	62 52 65 48 b8 fd    	vfmadd231ps zmm15,zmm3,zmm13
  9ff526:	62 31 0c 48 58 e9    	vaddps zmm13,zmm14,zmm17
  9ff52c:	62 01 3c 40 58 f2    	vaddps zmm30,zmm24,zmm26
  9ff532:	62 f1 4c 40 5c c9    	vsubps zmm1,zmm22,zmm1
  9ff538:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  9ff53f:	03 
  9ff540:	62 d1 3c 48 58 cb    	vaddps zmm1,zmm8,zmm11
  9ff546:	62 51 3c 48 5c db    	vsubps zmm11,zmm8,zmm11
  9ff54c:	62 c1 1c 48 58 f7    	vaddps zmm22,zmm12,zmm15
  9ff552:	62 51 1c 48 5c e7    	vsubps zmm12,zmm12,zmm15
  9ff558:	62 01 24 40 58 f9    	vaddps zmm31,zmm27,zmm25
  9ff55e:	62 11 3c 40 5c fa    	vsubps zmm15,zmm24,zmm26
  9ff564:	62 41 2c 48 58 c1    	vaddps zmm24,zmm10,zmm9
  9ff56a:	62 61 1c 40 5c d7    	vsubps zmm26,zmm28,zmm7
  9ff570:	62 51 2c 48 5c d1    	vsubps zmm10,zmm10,zmm9
  9ff576:	62 91 7c 40 58 dd    	vaddps zmm3,zmm16,zmm29
  9ff57c:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  9ff583:	01 
  9ff584:	62 f1 6c 40 58 fe    	vaddps zmm7,zmm18,zmm6
  9ff58a:	62 e1 6c 40 5c d6    	vsubps zmm18,zmm18,zmm6
  9ff590:	62 51 74 40 5c f6    	vsubps zmm14,zmm17,zmm14
  9ff596:	62 51 64 40 58 cd    	vaddps zmm9,zmm19,zmm13
  9ff59c:	62 f1 6c 48 58 f4    	vaddps zmm6,zmm2,zmm4
  9ff5a2:	62 f1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm4
  9ff5a8:	62 81 34 40 5c cb    	vsubps zmm17,zmm25,zmm27
  9ff5ae:	62 11 0c 40 58 c7    	vaddps zmm8,zmm30,zmm31
  9ff5b4:	62 61 54 40 58 c8    	vaddps zmm25,zmm21,zmm0
  9ff5ba:	62 a1 7c 48 5c e5    	vsubps zmm20,zmm0,zmm21
  9ff5c0:	62 e1 44 40 5c ed    	vsubps zmm21,zmm23,zmm5
  9ff5c6:	62 e1 44 48 58 f9    	vaddps zmm23,zmm7,zmm1
  9ff5cc:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0xc0]
  9ff5d3:	03 
  9ff5d4:	62 d1 54 48 58 e3    	vaddps zmm4,zmm5,zmm11
  9ff5da:	62 51 64 40 5c ed    	vsubps zmm13,zmm19,zmm13
  9ff5e0:	62 d1 6c 40 58 c6    	vaddps zmm0,zmm18,zmm14
  9ff5e6:	62 81 0c 40 5c df    	vsubps zmm19,zmm30,zmm31
  9ff5ec:	62 21 6c 48 58 d9    	vaddps zmm27,zmm2,zmm17
  9ff5f2:	62 81 7c 40 5c c5    	vsubps zmm16,zmm16,zmm29
  9ff5f8:	62 01 7c 48 5c e3    	vsubps zmm28,zmm0,zmm27
  9ff5fe:	62 91 7c 48 58 db    	vaddps zmm3,zmm0,zmm27
  9ff604:	62 41 04 48 58 dc    	vaddps zmm27,zmm15,zmm12
  9ff60a:	62 61 44 48 5c e9    	vsubps zmm29,zmm7,zmm1
  9ff610:	62 91 5c 48 58 fb    	vaddps zmm7,zmm4,zmm27
  9ff616:	62 01 5c 48 5c db    	vsubps zmm27,zmm4,zmm27
  9ff61c:	62 21 4c 48 58 f6    	vaddps zmm30,zmm6,zmm22
  9ff622:	62 b1 4c 48 5c e6    	vsubps zmm4,zmm6,zmm22
  9ff628:	62 f1 14 40 5c cc    	vsubps zmm1,zmm29,zmm4
  9ff62e:	62 e1 14 40 58 f4    	vaddps zmm22,zmm29,zmm4
  9ff634:	62 91 3c 40 58 e1    	vaddps zmm4,zmm24,zmm25
  9ff63a:	62 01 34 40 5c c0    	vsubps zmm24,zmm25,zmm24
  9ff640:	62 21 14 48 58 cb    	vaddps zmm25,zmm13,zmm19
  9ff646:	62 b1 14 48 5c f3    	vsubps zmm6,zmm13,zmm19
  9ff64c:	62 c1 2c 40 58 da    	vaddps zmm19,zmm26,zmm10
  9ff652:	62 51 2c 40 5c d2    	vsubps zmm10,zmm26,zmm10
  9ff658:	62 41 54 48 5c d3    	vsubps zmm26,zmm5,zmm11
  9ff65e:	62 d1 7c 48 28 e9    	vmovaps zmm5,zmm9
  9ff664:	62 51 34 48 58 c8    	vaddps zmm9,zmm9,zmm8
  9ff66a:	62 51 04 48 5c fc    	vsubps zmm15,zmm15,zmm12
  9ff670:	62 21 54 40 58 ec    	vaddps zmm29,zmm21,zmm20
  9ff676:	62 a1 5c 40 5c e5    	vsubps zmm20,zmm20,zmm21
  9ff67c:	62 11 44 40 58 e6    	vaddps zmm12,zmm23,zmm30
  9ff682:	62 51 6c 40 5c f6    	vsubps zmm14,zmm18,zmm14
  9ff688:	62 62 7d 48 18 3d ce 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff675dce]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  9ff68f:	5d 67 ff 
  9ff692:	62 11 7c 48 28 ef    	vmovaps zmm13,zmm31
  9ff698:	62 32 45 48 ac eb    	vfnmadd213ps zmm13,zmm7,zmm19
  9ff69e:	62 f2 7d 48 18 05 2c 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff675c2c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  9ff6a5:	5c 67 ff 
  9ff6a8:	62 e1 1c 40 59 d0    	vmulps zmm18,zmm28,zmm0
  9ff6ae:	62 b1 6c 48 5c d1    	vsubps zmm2,zmm2,zmm17
  9ff6b4:	62 81 7c 48 28 cf    	vmovaps zmm17,zmm31
  9ff6ba:	62 81 44 40 5c ee    	vsubps zmm21,zmm23,zmm30
  9ff6c0:	62 31 14 48 58 da    	vaddps zmm11,zmm13,zmm18
  9ff6c6:	62 82 65 48 ac cd    	vfnmadd213ps zmm17,zmm3,zmm29
  9ff6cc:	62 e1 24 40 59 f8    	vmulps zmm23,zmm27,zmm0
  9ff6d2:	62 41 54 48 5c d8    	vsubps zmm27,zmm5,zmm8
  9ff6d8:	62 21 74 40 5c e7    	vsubps zmm28,zmm17,zmm23
  9ff6de:	62 b1 14 48 5c ea    	vsubps zmm5,zmm13,zmm18
  9ff6e4:	62 81 7c 48 28 d7    	vmovaps zmm18,zmm31
  9ff6ea:	62 a2 35 40 ac d0    	vfnmadd213ps zmm18,zmm25,zmm16
  9ff6f0:	62 31 74 40 58 ef    	vaddps zmm13,zmm17,zmm23
  9ff6f6:	62 81 7c 48 28 cf    	vmovaps zmm17,zmm31
  9ff6fc:	62 11 7c 40 58 c1    	vaddps zmm8,zmm16,zmm25
  9ff702:	62 c1 2c 40 58 c7    	vaddps zmm16,zmm26,zmm15
  9ff708:	62 82 4d 40 ac c8    	vfnmadd213ps zmm17,zmm22,zmm24
  9ff70e:	62 a1 3c 40 58 f6    	vaddps zmm22,zmm24,zmm22
  9ff714:	62 a1 2c 48 58 f8    	vaddps zmm23,zmm10,zmm16
  9ff71a:	62 c2 05 40 ac c2    	vfnmadd213ps zmm16,zmm31,zmm10
  9ff720:	62 71 0c 48 58 d2    	vaddps zmm10,zmm14,zmm2
  9ff726:	62 f1 0c 48 5c d2    	vsubps zmm2,zmm14,zmm2
  9ff72c:	62 51 5c 40 58 f2    	vaddps zmm14,zmm20,zmm10
  9ff732:	62 32 05 40 ac d4    	vfnmadd213ps zmm10,zmm31,zmm20
  9ff738:	62 81 7c 48 28 e7    	vmovaps zmm20,zmm31
  9ff73e:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x40]
  9ff745:	01 
  9ff746:	62 82 35 48 ac e6    	vfnmadd213ps zmm20,zmm9,zmm30
  9ff74c:	62 e1 54 40 59 e8    	vmulps zmm21,zmm21,zmm0
  9ff752:	62 51 2c 40 5c ff    	vsubps zmm15,zmm26,zmm15
  9ff758:	62 21 5c 40 58 c5    	vaddps zmm24,zmm20,zmm21
  9ff75e:	62 a1 5c 40 5c e5    	vsubps zmm20,zmm20,zmm21
  9ff764:	62 f1 64 40 58 ff    	vaddps zmm7,zmm19,zmm7
  9ff76a:	62 81 7c 48 28 df    	vmovaps zmm19,zmm31
  9ff770:	62 e2 1d 48 ac dc    	vfnmadd213ps zmm19,zmm12,zmm4
  9ff776:	62 e1 24 40 59 e8    	vmulps zmm21,zmm27,zmm0
  9ff77c:	62 61 14 40 58 d3    	vaddps zmm26,zmm29,zmm3
  9ff782:	62 21 64 40 5c cd    	vsubps zmm25,zmm19,zmm21
  9ff788:	62 a1 64 40 58 dd    	vaddps zmm19,zmm19,zmm21
  9ff78e:	62 f1 74 48 59 c8    	vmulps zmm1,zmm1,zmm0
  9ff794:	62 d1 0c 40 58 d9    	vaddps zmm3,zmm30,zmm9
  9ff79a:	62 71 6c 40 5c c9    	vsubps zmm9,zmm18,zmm1
  9ff7a0:	62 f1 6c 40 58 c9    	vaddps zmm1,zmm18,zmm1
  9ff7a6:	62 f1 4c 48 59 f0    	vmulps zmm6,zmm6,zmm0
  9ff7ac:	62 d1 5c 48 58 e4    	vaddps zmm4,zmm4,zmm12
  9ff7b2:	62 71 74 40 58 e6    	vaddps zmm12,zmm17,zmm6
  9ff7b8:	62 f1 74 40 5c f6    	vsubps zmm6,zmm17,zmm6
  9ff7be:	62 f1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm0
  9ff7c4:	62 e1 7c 48 28 0d f2 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff68e4f2]        # 8dcc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b170>
  9ff7cb:	e4 68 ff 
  9ff7ce:	62 f2 75 40 7f dc    	vpermt2ps zmm3,zmm17,zmm4
  9ff7d4:	62 f1 7c 40 58 e2    	vaddps zmm4,zmm16,zmm2
  9ff7da:	62 f1 7c 40 5c d2    	vsubps zmm2,zmm16,zmm2
  9ff7e0:	62 71 04 48 59 f8    	vmulps zmm15,zmm15,zmm0
  9ff7e6:	62 f1 7c 48 11 1c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm3
  9ff7ed:	62 d1 2c 48 5c df    	vsubps zmm3,zmm10,zmm15
  9ff7f3:	62 51 2c 48 58 d7    	vaddps zmm10,zmm10,zmm15
  9ff7f9:	62 12 75 40 7f dc    	vpermt2ps zmm11,zmm17,zmm28
  9ff7ff:	62 71 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm11
  9ff806:	01 
  9ff807:	62 52 75 40 7f cc    	vpermt2ps zmm9,zmm17,zmm12
  9ff80d:	62 71 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm9
  9ff814:	02 
  9ff815:	62 c2 75 40 7f fe    	vpermt2ps zmm23,zmm17,zmm14
  9ff81b:	62 e1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm23
  9ff822:	03 
  9ff823:	62 02 75 40 7f c1    	vpermt2ps zmm24,zmm17,zmm25
  9ff829:	62 61 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm24
  9ff830:	04 
  9ff831:	62 d2 75 40 7f ed    	vpermt2ps zmm5,zmm17,zmm13
  9ff837:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm5
  9ff83e:	05 
  9ff83f:	62 32 75 40 7f c6    	vpermt2ps zmm8,zmm17,zmm22
  9ff845:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm8
  9ff84c:	06 
  9ff84d:	62 f2 75 40 7f e3    	vpermt2ps zmm4,zmm17,zmm3
  9ff853:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm4
  9ff85a:	07 
  9ff85b:	62 a2 75 40 7f e3    	vpermt2ps zmm20,zmm17,zmm19
  9ff861:	62 e1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm20
  9ff868:	08 
  9ff869:	62 92 75 40 7f fa    	vpermt2ps zmm7,zmm17,zmm26
  9ff86f:	62 f1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm7
  9ff876:	09 
  9ff877:	62 f2 75 40 7f ce    	vpermt2ps zmm1,zmm17,zmm6
  9ff87d:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm1
  9ff884:	0a 
  9ff885:	62 d2 75 40 7f d2    	vpermt2ps zmm2,zmm17,zmm10
  9ff88b:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm2
  9ff892:	0b 
  9ff893:	48 81 c2 00 03 00 00 	add    rdx,0x300
  9ff89a:	48 39 d0             	cmp    rax,rdx
  9ff89d:	0f 85 cd f3 ff ff    	jne    9fec70 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  9ff8a3:	48 89 ec             	mov    rsp,rbp
  9ff8a6:	5d                   	pop    rbp
  9ff8a7:	c5 f8 77             	vzeroupper
  9ff8aa:	c3                   	ret
