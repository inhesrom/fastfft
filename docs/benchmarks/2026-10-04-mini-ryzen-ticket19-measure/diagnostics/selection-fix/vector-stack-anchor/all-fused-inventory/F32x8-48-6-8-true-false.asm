
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000070bec0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  70bec0:	48 81 ec a8 01 00 00 	sub    rsp,0x1a8
  70bec7:	c5 fc 10 1f          	vmovups ymm3,YMMWORD PTR [rdi]
  70becb:	c5 fc 10 67 20       	vmovups ymm4,YMMWORD PTR [rdi+0x20]
  70bed0:	c5 fc 10 4f 40       	vmovups ymm1,YMMWORD PTR [rdi+0x40]
  70bed5:	c5 fc 10 47 60       	vmovups ymm0,YMMWORD PTR [rdi+0x60]
  70beda:	c5 fc 10 b7 80 00 00 	vmovups ymm6,YMMWORD PTR [rdi+0x80]
  70bee1:	00 
  70bee2:	c5 7c 10 87 a0 00 00 	vmovups ymm8,YMMWORD PTR [rdi+0xa0]
  70bee9:	00 
  70beea:	c5 7c 10 af c0 00 00 	vmovups ymm13,YMMWORD PTR [rdi+0xc0]
  70bef1:	00 
  70bef2:	c5 7c 10 b7 e0 00 00 	vmovups ymm14,YMMWORD PTR [rdi+0xe0]
  70bef9:	00 
  70befa:	c5 7c 10 97 00 01 00 	vmovups ymm10,YMMWORD PTR [rdi+0x100]
  70bf01:	00 
  70bf02:	c5 7c 10 bf 20 01 00 	vmovups ymm15,YMMWORD PTR [rdi+0x120]
  70bf09:	00 
  70bf0a:	c5 7c 10 a7 40 01 00 	vmovups ymm12,YMMWORD PTR [rdi+0x140]
  70bf11:	00 
  70bf12:	c5 7c 10 9f 60 01 00 	vmovups ymm11,YMMWORD PTR [rdi+0x160]
  70bf19:	00 
  70bf1a:	c5 e4 c6 fc dd       	vshufps ymm7,ymm3,ymm4,0xdd
  70bf1f:	c4 e3 fd 01 d7 d8    	vpermpd ymm2,ymm7,0xd8
  70bf25:	c5 fc 11 54 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm2
  70bf2b:	c4 41 4c c6 c8 dd    	vshufps ymm9,ymm6,ymm8,0xdd
  70bf31:	c4 c3 fd 01 f9 d8    	vpermpd ymm7,ymm9,0xd8
  70bf37:	c5 fc 11 7c 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm7
  70bf3d:	c4 41 2c c6 cf dd    	vshufps ymm9,ymm10,ymm15,0xdd
  70bf43:	c4 c3 fd 01 e9 d8    	vpermpd ymm5,ymm9,0xd8
  70bf49:	c5 fc 11 6c 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm5
  70bf4f:	c4 41 14 c6 ce dd    	vshufps ymm9,ymm13,ymm14,0xdd
  70bf55:	c4 c3 fd 01 d1 d8    	vpermpd ymm2,ymm9,0xd8
  70bf5b:	c5 fc 11 54 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm2
  70bf61:	c5 64 c6 cc 88       	vshufps ymm9,ymm3,ymm4,0x88
  70bf66:	c4 c1 1c c6 db dd    	vshufps ymm3,ymm12,ymm11,0xdd
  70bf6c:	c4 e3 fd 01 d3 d8    	vpermpd ymm2,ymm3,0xd8
  70bf72:	c5 fc 11 54 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm2
  70bf78:	c4 c1 4c c6 f0 88    	vshufps ymm6,ymm6,ymm8,0x88
  70bf7e:	c5 f4 c6 e0 dd       	vshufps ymm4,ymm1,ymm0,0xdd
  70bf83:	c4 63 fd 01 c4 d8    	vpermpd ymm8,ymm4,0xd8
  70bf89:	c5 7c 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm8
  70bf8f:	c4 c3 fd 01 d9 d8    	vpermpd ymm3,ymm9,0xd8
  70bf95:	c4 63 fd 01 ce d8    	vpermpd ymm9,ymm6,0xd8
  70bf9b:	c4 c1 2c c6 f7 88    	vshufps ymm6,ymm10,ymm15,0x88
  70bfa1:	c4 63 fd 01 d6 d8    	vpermpd ymm10,ymm6,0xd8
  70bfa7:	c4 41 14 c6 ee 88    	vshufps ymm13,ymm13,ymm14,0x88
  70bfad:	c4 41 1c c6 fb 88    	vshufps ymm15,ymm12,ymm11,0x88
  70bfb3:	c5 74 c6 f0 88       	vshufps ymm14,ymm1,ymm0,0x88
  70bfb8:	c5 c4 58 ed          	vaddps ymm5,ymm7,ymm5
  70bfbc:	c5 fc 10 44 24 a0    	vmovups ymm0,YMMWORD PTR [rsp-0x60]
  70bfc2:	c5 d4 58 e0          	vaddps ymm4,ymm5,ymm0
  70bfc6:	c5 fc 11 24 24       	vmovups YMMWORD PTR [rsp],ymm4
  70bfcb:	c5 bc 58 f2          	vaddps ymm6,ymm8,ymm2
  70bfcf:	c4 62 7d 18 05 88 94 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff969488]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  70bfd6:	96 ff 
  70bfd8:	c4 e2 3d ac e8       	vfnmadd213ps ymm5,ymm8,ymm0
  70bfdd:	c5 fc 10 44 24 c0    	vmovups ymm0,YMMWORD PTR [rsp-0x40]
  70bfe3:	c5 cc 58 d0          	vaddps ymm2,ymm6,ymm0
  70bfe7:	c4 e2 3d ac f0       	vfnmadd213ps ymm6,ymm8,ymm0
  70bfec:	c4 41 34 58 e2       	vaddps ymm12,ymm9,ymm10
  70bff1:	c5 1c 58 db          	vaddps ymm11,ymm12,ymm3
  70bff5:	c4 62 3d ac e3       	vfnmadd213ps ymm12,ymm8,ymm3
  70bffa:	c4 c3 fd 01 cd d8    	vpermpd ymm1,ymm13,0xd8
  70c000:	c4 43 fd 01 ef d8    	vpermpd ymm13,ymm15,0xd8
  70c006:	c4 c3 fd 01 c6 d8    	vpermpd ymm0,ymm14,0xd8
  70c00c:	c5 14 58 f0          	vaddps ymm14,ymm13,ymm0
  70c010:	c4 62 0d ac c1       	vfnmadd213ps ymm8,ymm14,ymm1
  70c015:	c5 8c 58 f9          	vaddps ymm7,ymm14,ymm1
  70c019:	c4 41 34 5c ca       	vsubps ymm9,ymm9,ymm10
  70c01e:	c5 5c 58 fa          	vaddps ymm15,ymm4,ymm2
  70c022:	c5 7c 11 7c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm15
  70c028:	c5 94 5c c0          	vsubps ymm0,ymm13,ymm0
  70c02c:	c4 62 7d 18 15 9f 92 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff96929f]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  70c033:	96 ff 
  70c035:	c5 fc 10 4c 24 20    	vmovups ymm1,YMMWORD PTR [rsp+0x20]
  70c03b:	c5 74 5c 6c 24 40    	vsubps ymm13,ymm1,YMMWORD PTR [rsp+0x40]
  70c041:	c5 a4 58 cf          	vaddps ymm1,ymm11,ymm7
  70c045:	c5 fc 11 4c 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm1
  70c04b:	c4 41 34 59 ca       	vmulps ymm9,ymm9,ymm10
  70c050:	c5 fc 10 4c 24 e0    	vmovups ymm1,YMMWORD PTR [rsp-0x20]
  70c056:	c5 f4 5c 5c 24 80    	vsubps ymm3,ymm1,YMMWORD PTR [rsp-0x80]
  70c05c:	c5 34 58 f5          	vaddps ymm14,ymm9,ymm5
  70c060:	c5 ac 59 c0          	vmulps ymm0,ymm10,ymm0
  70c064:	c4 c1 14 59 e2       	vmulps ymm4,ymm13,ymm10
  70c069:	c5 ac 59 db          	vmulps ymm3,ymm10,ymm3
  70c06d:	c5 4c 58 d0          	vaddps ymm10,ymm6,ymm0
  70c071:	c4 c1 54 5c e9       	vsubps ymm5,ymm5,ymm9
  70c076:	c4 c1 0c 5c ca       	vsubps ymm1,ymm14,ymm10
  70c07b:	c5 cc 5c c0          	vsubps ymm0,ymm6,ymm0
  70c07f:	c5 9c 5c f4          	vsubps ymm6,ymm12,ymm4
  70c083:	c5 1c 58 cc          	vaddps ymm9,ymm12,ymm4
  70c087:	c5 3c 5c e3          	vsubps ymm12,ymm8,ymm3
  70c08b:	c5 bc 58 db          	vaddps ymm3,ymm8,ymm3
  70c08f:	c4 c1 4c 5c e4       	vsubps ymm4,ymm6,ymm12
  70c094:	c5 fc 11 64 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm4
  70c09a:	c5 fc 10 24 24       	vmovups ymm4,YMMWORD PTR [rsp]
  70c09f:	c5 5c 5c c2          	vsubps ymm8,ymm4,ymm2
  70c0a3:	c5 d4 58 d0          	vaddps ymm2,ymm5,ymm0
  70c0a7:	c5 fc 11 94 24 c0 00 	vmovups YMMWORD PTR [rsp+0xc0],ymm2
  70c0ae:	00 00 
  70c0b0:	c5 24 5c ef          	vsubps ymm13,ymm11,ymm7
  70c0b4:	c5 b4 58 fb          	vaddps ymm7,ymm9,ymm3
  70c0b8:	c4 41 0c 58 f2       	vaddps ymm14,ymm14,ymm10
  70c0bd:	c5 9c 58 f6          	vaddps ymm6,ymm12,ymm6
  70c0c1:	c5 d4 5c e8          	vsubps ymm5,ymm5,ymm0
  70c0c5:	c5 34 5c d3          	vsubps ymm10,ymm9,ymm3
  70c0c9:	c4 c3 05 06 c6 31    	vperm2f128 ymm0,ymm15,ymm14,0x31
  70c0cf:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  70c0d5:	c4 e3 75 06 dd 31    	vperm2f128 ymm3,ymm1,ymm5,0x31
  70c0db:	c5 fc 11 1c 24       	vmovups YMMWORD PTR [rsp],ymm3
  70c0e0:	c5 7c 28 e1          	vmovaps ymm12,ymm1
  70c0e4:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  70c0ea:	c5 fc 11 8c 24 00 01 	vmovups YMMWORD PTR [rsp+0x100],ymm1
  70c0f1:	00 00 
  70c0f3:	c4 63 7d 19 c2 01    	vextractf128 xmm2,ymm8,0x1
  70c0f9:	c5 fc 11 94 24 e0 00 	vmovups YMMWORD PTR [rsp+0xe0],ymm2
  70c100:	00 00 
  70c102:	c4 41 7c 28 c8       	vmovaps ymm9,ymm8
  70c107:	c5 fc 14 c3          	vunpcklps ymm0,ymm0,ymm3
  70c10b:	c5 fc 11 44 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm0
  70c111:	c5 f4 14 da          	vunpcklps ymm3,ymm1,ymm2
  70c115:	c5 fc 11 5c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm3
  70c11b:	c5 fd 14 e3          	vunpcklpd ymm4,ymm0,ymm3
  70c11f:	c5 7c 10 5c 24 60    	vmovups ymm11,YMMWORD PTR [rsp+0x60]
  70c125:	c4 e3 25 06 c6 31    	vperm2f128 ymm0,ymm11,ymm6,0x31
  70c12b:	c5 fc 11 84 24 a0 00 	vmovups YMMWORD PTR [rsp+0xa0],ymm0
  70c132:	00 00 
  70c134:	c5 7c 28 fe          	vmovaps ymm15,ymm6
  70c138:	c4 63 2d 06 44 24 80 	vperm2f128 ymm8,ymm10,YMMWORD PTR [rsp-0x80],0x13
  70c13f:	13 
  70c140:	c5 7c 11 84 24 80 00 	vmovups YMMWORD PTR [rsp+0x80],ymm8
  70c147:	00 00 
  70c149:	c4 e3 7d 19 fe 01    	vextractf128 xmm6,ymm7,0x1
  70c14f:	c5 fc 28 d7          	vmovaps ymm2,ymm7
  70c153:	c5 7c 29 e9          	vmovaps ymm1,ymm13
  70c157:	c4 63 7d 19 eb 01    	vextractf128 xmm3,ymm13,0x1
  70c15d:	c4 c1 7c 14 f8       	vunpcklps ymm7,ymm0,ymm8
  70c162:	c5 fc 11 bc 24 60 01 	vmovups YMMWORD PTR [rsp+0x160],ymm7
  70c169:	00 00 
  70c16b:	c5 cc 14 c3          	vunpcklps ymm0,ymm6,ymm3
  70c16f:	c5 fc 11 84 24 80 01 	vmovups YMMWORD PTR [rsp+0x180],ymm0
  70c176:	00 00 
  70c178:	c5 c5 14 c0          	vunpcklpd ymm0,ymm7,ymm0
  70c17c:	c5 7c 10 82 00 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x100]
  70c183:	00 
  70c184:	c5 fc 10 ba 20 01 00 	vmovups ymm7,YMMWORD PTR [rdx+0x120]
  70c18b:	00 
  70c18c:	c5 3c 59 ec          	vmulps ymm13,ymm8,ymm4
  70c190:	c4 62 7d bc ef       	vfnmadd231ps ymm13,ymm0,ymm7
  70c195:	c5 7c 11 6c 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm13
  70c19b:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  70c19f:	c4 e2 5d b8 c7       	vfmadd231ps ymm0,ymm4,ymm7
  70c1a4:	c5 fc 11 84 24 40 01 	vmovups YMMWORD PTR [rsp+0x140],ymm0
  70c1ab:	00 00 
  70c1ad:	c5 fc 10 44 24 a0    	vmovups ymm0,YMMWORD PTR [rsp-0x60]
  70c1b3:	c4 43 7d 18 f6 01    	vinsertf128 ymm14,ymm0,xmm14,0x1
  70c1b9:	c4 63 1d 18 e5 01    	vinsertf128 ymm12,ymm12,xmm5,0x1
  70c1bf:	c4 43 25 18 ef 01    	vinsertf128 ymm13,ymm11,xmm15,0x1
  70c1c5:	c5 fc 10 44 24 80    	vmovups ymm0,YMMWORD PTR [rsp-0x80]
  70c1cb:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  70c1d1:	c5 78 28 9c 24 c0 00 	vmovaps xmm11,XMMWORD PTR [rsp+0xc0]
  70c1d8:	00 00 
  70c1da:	c5 78 29 cc          	vmovaps xmm4,xmm9
  70c1de:	c5 78 28 c2          	vmovaps xmm8,xmm2
  70c1e2:	c5 f8 28 f9          	vmovaps xmm7,xmm1
  70c1e6:	c4 c1 0c 15 c4       	vunpckhps ymm0,ymm14,ymm12
  70c1eb:	c5 fc 11 84 24 c0 00 	vmovups YMMWORD PTR [rsp+0xc0],ymm0
  70c1f2:	00 00 
  70c1f4:	c5 a4 15 cc          	vunpckhps ymm1,ymm11,ymm4
  70c1f8:	c5 fc 11 4c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm1
  70c1fe:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  70c202:	c4 c1 14 15 c2       	vunpckhps ymm0,ymm13,ymm10
  70c207:	c5 fc 11 44 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm0
  70c20d:	c5 3c 15 ff          	vunpckhps ymm15,ymm8,ymm7
  70c211:	c4 c1 7d 14 ef       	vunpcklpd ymm5,ymm0,ymm15
  70c216:	c5 fc 10 82 80 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0x80]
  70c21d:	00 
  70c21e:	c5 fc 10 8a a0 00 00 	vmovups ymm1,YMMWORD PTR [rdx+0xa0]
  70c225:	00 
  70c226:	c5 7c 59 ca          	vmulps ymm9,ymm0,ymm2
  70c22a:	c4 62 55 bc c9       	vfnmadd231ps ymm9,ymm5,ymm1
  70c22f:	c5 7c 11 4c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm9
  70c235:	c5 7c 59 cd          	vmulps ymm9,ymm0,ymm5
  70c239:	c4 62 6d b8 c9       	vfmadd231ps ymm9,ymm2,ymm1
  70c23e:	c5 fc 10 44 24 c0    	vmovups ymm0,YMMWORD PTR [rsp-0x40]
  70c244:	c5 fc 15 0c 24       	vunpckhps ymm1,ymm0,YMMWORD PTR [rsp]
  70c249:	c5 fc 11 8c 24 20 01 	vmovups YMMWORD PTR [rsp+0x120],ymm1
  70c250:	00 00 
  70c252:	c5 fc 10 84 24 00 01 	vmovups ymm0,YMMWORD PTR [rsp+0x100]
  70c259:	00 00 
  70c25b:	c5 fc 15 94 24 e0 00 	vunpckhps ymm2,ymm0,YMMWORD PTR [rsp+0xe0]
  70c262:	00 00 
  70c264:	c5 fc 11 14 24       	vmovups YMMWORD PTR [rsp],ymm2
  70c269:	c5 fc 10 84 24 a0 00 	vmovups ymm0,YMMWORD PTR [rsp+0xa0]
  70c270:	00 00 
  70c272:	c5 fc 15 84 24 80 00 	vunpckhps ymm0,ymm0,YMMWORD PTR [rsp+0x80]
  70c279:	00 00 
  70c27b:	c5 fc 11 84 24 e0 00 	vmovups YMMWORD PTR [rsp+0xe0],ymm0
  70c282:	00 00 
  70c284:	c5 cc 15 eb          	vunpckhps ymm5,ymm6,ymm3
  70c288:	c5 fc 11 ac 24 00 01 	vmovups YMMWORD PTR [rsp+0x100],ymm5
  70c28f:	00 00 
  70c291:	c5 f5 14 da          	vunpcklpd ymm3,ymm1,ymm2
  70c295:	c5 fd 14 cd          	vunpcklpd ymm1,ymm0,ymm5
  70c299:	c5 fc 10 92 80 01 00 	vmovups ymm2,YMMWORD PTR [rdx+0x180]
  70c2a0:	00 
  70c2a1:	c5 fc 10 82 a0 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x1a0]
  70c2a8:	00 
  70c2a9:	c5 ec 59 eb          	vmulps ymm5,ymm2,ymm3
  70c2ad:	c4 e2 75 bc e8       	vfnmadd231ps ymm5,ymm1,ymm0
  70c2b2:	c5 fc 11 6c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm5
  70c2b8:	c5 ec 59 f1          	vmulps ymm6,ymm2,ymm1
  70c2bc:	c4 e2 65 b8 f0       	vfmadd231ps ymm6,ymm3,ymm0
  70c2c1:	c4 c1 0c 14 cc       	vunpcklps ymm1,ymm14,ymm12
  70c2c6:	c5 fc 11 8c 24 80 00 	vmovups YMMWORD PTR [rsp+0x80],ymm1
  70c2cd:	00 00 
  70c2cf:	c5 a4 14 c4          	vunpcklps ymm0,ymm11,ymm4
  70c2d3:	c5 fc 11 84 24 a0 00 	vmovups YMMWORD PTR [rsp+0xa0],ymm0
  70c2da:	00 00 
  70c2dc:	c4 41 14 14 f2       	vunpcklps ymm14,ymm13,ymm10
  70c2e1:	c5 3c 14 df          	vunpcklps ymm11,ymm8,ymm7
  70c2e5:	c5 f5 15 c0          	vunpckhpd ymm0,ymm1,ymm0
  70c2e9:	c4 c1 0d 15 cb       	vunpckhpd ymm1,ymm14,ymm11
  70c2ee:	c5 fc 10 52 40       	vmovups ymm2,YMMWORD PTR [rdx+0x40]
  70c2f3:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  70c2f8:	c5 ec 59 e8          	vmulps ymm5,ymm2,ymm0
  70c2fc:	c4 e2 75 bc ef       	vfnmadd231ps ymm5,ymm1,ymm7
  70c301:	c5 ec 59 e1          	vmulps ymm4,ymm2,ymm1
  70c305:	c4 e2 7d b8 e7       	vfmadd231ps ymm4,ymm0,ymm7
  70c30a:	c5 fc 10 44 24 40    	vmovups ymm0,YMMWORD PTR [rsp+0x40]
  70c310:	c5 fd 15 7c 24 e0    	vunpckhpd ymm7,ymm0,YMMWORD PTR [rsp-0x20]
  70c316:	c5 fc 10 84 24 60 01 	vmovups ymm0,YMMWORD PTR [rsp+0x160]
  70c31d:	00 00 
  70c31f:	c5 fd 15 8c 24 80 01 	vunpckhpd ymm1,ymm0,YMMWORD PTR [rsp+0x180]
  70c326:	00 00 
  70c328:	c5 7c 10 82 40 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x140]
  70c32f:	00 
  70c330:	c5 7c 10 92 60 01 00 	vmovups ymm10,YMMWORD PTR [rdx+0x160]
  70c337:	00 
  70c338:	c5 bc 59 d7          	vmulps ymm2,ymm8,ymm7
  70c33c:	c4 c2 75 bc d2       	vfnmadd231ps ymm2,ymm1,ymm10
  70c341:	c5 bc 59 d9          	vmulps ymm3,ymm8,ymm1
  70c345:	c4 c2 45 b8 da       	vfmadd231ps ymm3,ymm7,ymm10
  70c34a:	c5 fc 10 84 24 c0 00 	vmovups ymm0,YMMWORD PTR [rsp+0xc0]
  70c351:	00 00 
  70c353:	c5 fd 15 7c 24 a0    	vunpckhpd ymm7,ymm0,YMMWORD PTR [rsp-0x60]
  70c359:	c5 fc 10 44 24 60    	vmovups ymm0,YMMWORD PTR [rsp+0x60]
  70c35f:	c4 41 7d 15 c7       	vunpckhpd ymm8,ymm0,ymm15
  70c364:	c5 7c 10 92 c0 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0xc0]
  70c36b:	00 
  70c36c:	c5 7c 10 aa e0 00 00 	vmovups ymm13,YMMWORD PTR [rdx+0xe0]
  70c373:	00 
  70c374:	c5 2c 59 ff          	vmulps ymm15,ymm10,ymm7
  70c378:	c4 42 3d bc fd       	vfnmadd231ps ymm15,ymm8,ymm13
  70c37d:	c4 41 2c 59 c0       	vmulps ymm8,ymm10,ymm8
  70c382:	c4 42 45 b8 c5       	vfmadd231ps ymm8,ymm7,ymm13
  70c387:	c5 fc 10 84 24 20 01 	vmovups ymm0,YMMWORD PTR [rsp+0x120]
  70c38e:	00 00 
  70c390:	c5 fd 15 3c 24       	vunpckhpd ymm7,ymm0,YMMWORD PTR [rsp]
  70c395:	c5 fc 10 84 24 e0 00 	vmovups ymm0,YMMWORD PTR [rsp+0xe0]
  70c39c:	00 00 
  70c39e:	c5 7d 15 94 24 00 01 	vunpckhpd ymm10,ymm0,YMMWORD PTR [rsp+0x100]
  70c3a5:	00 00 
  70c3a7:	c5 7c 10 aa c0 01 00 	vmovups ymm13,YMMWORD PTR [rdx+0x1c0]
  70c3ae:	00 
  70c3af:	c5 fc 10 8a e0 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x1e0]
  70c3b6:	00 
  70c3b7:	c5 94 59 c7          	vmulps ymm0,ymm13,ymm7
  70c3bb:	c4 e2 2d bc c1       	vfnmadd231ps ymm0,ymm10,ymm1
  70c3c0:	c4 41 14 59 e2       	vmulps ymm12,ymm13,ymm10
  70c3c5:	c4 62 45 b8 e1       	vfmadd231ps ymm12,ymm7,ymm1
  70c3ca:	c5 fc 10 8c 24 80 00 	vmovups ymm1,YMMWORD PTR [rsp+0x80]
  70c3d1:	00 00 
  70c3d3:	c5 f5 14 8c 24 a0 00 	vunpcklpd ymm1,ymm1,YMMWORD PTR [rsp+0xa0]
  70c3da:	00 00 
  70c3dc:	c4 41 0d 14 eb       	vunpcklpd ymm13,ymm14,ymm11
  70c3e1:	c5 fc 10 7c 24 20    	vmovups ymm7,YMMWORD PTR [rsp+0x20]
  70c3e7:	c5 44 58 d1          	vaddps ymm10,ymm7,ymm1
  70c3eb:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  70c3ef:	c5 fc 11 4c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm1
  70c3f5:	c5 34 58 de          	vaddps ymm11,ymm9,ymm6
  70c3f9:	c5 b4 5c ce          	vsubps ymm1,ymm9,ymm6
  70c3fd:	c5 fc 11 4c 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm1
  70c403:	c5 d4 58 ca          	vaddps ymm1,ymm5,ymm2
  70c407:	c5 fc 11 4c 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm1
  70c40d:	c5 d4 5c ea          	vsubps ymm5,ymm5,ymm2
  70c411:	c5 dc 58 fb          	vaddps ymm7,ymm4,ymm3
  70c415:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  70c419:	c4 c1 3c 58 f4       	vaddps ymm6,ymm8,ymm12
  70c41e:	c4 41 3c 5c c4       	vsubps ymm8,ymm8,ymm12
  70c423:	c5 04 58 c8          	vaddps ymm9,ymm15,ymm0
  70c427:	c5 84 5c c0          	vsubps ymm0,ymm15,ymm0
  70c42b:	c5 fc 10 8c 24 40 01 	vmovups ymm1,YMMWORD PTR [rsp+0x140]
  70c432:	00 00 
  70c434:	c5 14 58 e1          	vaddps ymm12,ymm13,ymm1
  70c438:	c5 14 5c e9          	vsubps ymm13,ymm13,ymm1
  70c43c:	c5 fc 10 4c 24 80    	vmovups ymm1,YMMWORD PTR [rsp-0x80]
  70c442:	c5 fc 10 54 24 c0    	vmovups ymm2,YMMWORD PTR [rsp-0x40]
  70c448:	c5 74 58 f2          	vaddps ymm14,ymm1,ymm2
  70c44c:	c5 6c 5c f9          	vsubps ymm15,ymm2,ymm1
  70c450:	c5 d4 58 cb          	vaddps ymm1,ymm5,ymm3
  70c454:	c5 e4 5c dd          	vsubps ymm3,ymm3,ymm5
  70c458:	c5 bc 5c e8          	vsubps ymm5,ymm8,ymm0
  70c45c:	c5 bc 58 c0          	vaddps ymm0,ymm8,ymm0
  70c460:	c4 62 7d 18 05 33 8f 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff968f33]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  70c467:	96 ff 
  70c469:	c5 bc 59 e1          	vmulps ymm4,ymm8,ymm1
  70c46d:	c5 bc 59 d5          	vmulps ymm2,ymm8,ymm5
  70c471:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  70c475:	c5 bc 59 c8          	vmulps ymm1,ymm8,ymm0
  70c479:	c4 c1 2c 58 c6       	vaddps ymm0,ymm10,ymm14
  70c47e:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  70c484:	c4 41 2c 5c f6       	vsubps ymm14,ymm10,ymm14
  70c489:	c5 c4 58 c6          	vaddps ymm0,ymm7,ymm6
  70c48d:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  70c493:	c5 c4 5c fe          	vsubps ymm7,ymm7,ymm6
  70c497:	c4 41 24 58 c4       	vaddps ymm8,ymm11,ymm12
  70c49c:	c4 41 1c 5c e3       	vsubps ymm12,ymm12,ymm11
  70c4a1:	c5 fc 10 44 24 20    	vmovups ymm0,YMMWORD PTR [rsp+0x20]
  70c4a7:	c5 34 58 d8          	vaddps ymm11,ymm9,ymm0
  70c4ab:	c5 b4 5c f0          	vsubps ymm6,ymm9,ymm0
  70c4af:	c5 fc 10 44 24 e0    	vmovups ymm0,YMMWORD PTR [rsp-0x20]
  70c4b5:	c5 fc 10 6c 24 40    	vmovups ymm5,YMMWORD PTR [rsp+0x40]
  70c4bb:	c5 7c 58 cd          	vaddps ymm9,ymm0,ymm5
  70c4bf:	c5 7c 5c d5          	vsubps ymm10,ymm0,ymm5
  70c4c3:	c5 e4 5c c1          	vsubps ymm0,ymm3,ymm1
  70c4c7:	c5 e4 58 e9          	vaddps ymm5,ymm3,ymm1
  70c4cb:	c4 c1 04 58 dd       	vaddps ymm3,ymm15,ymm13
  70c4d0:	c4 41 14 5c ff       	vsubps ymm15,ymm13,ymm15
  70c4d5:	c5 5c 58 ea          	vaddps ymm13,ymm4,ymm2
  70c4d9:	c5 ec 5c e4          	vsubps ymm4,ymm2,ymm4
  70c4dd:	c4 c1 34 58 cd       	vaddps ymm1,ymm9,ymm13
  70c4e2:	c4 41 34 5c ed       	vsubps ymm13,ymm9,ymm13
  70c4e7:	c5 64 58 c8          	vaddps ymm9,ymm3,ymm0
  70c4eb:	c5 e4 5c d8          	vsubps ymm3,ymm3,ymm0
  70c4ef:	c5 8c 58 d7          	vaddps ymm2,ymm14,ymm7
  70c4f3:	c5 8c 5c c7          	vsubps ymm0,ymm14,ymm7
  70c4f7:	c5 fc 11 44 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm0
  70c4fd:	c5 9c 58 fe          	vaddps ymm7,ymm12,ymm6
  70c501:	c5 1c 5c f6          	vsubps ymm14,ymm12,ymm6
  70c505:	c5 2c 58 e5          	vaddps ymm12,ymm10,ymm5
  70c509:	c5 ac 5c c5          	vsubps ymm0,ymm10,ymm5
  70c50d:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  70c513:	c5 04 58 d4          	vaddps ymm10,ymm15,ymm4
  70c517:	c5 84 5c e4          	vsubps ymm4,ymm15,ymm4
  70c51b:	c5 fc 10 44 24 a0    	vmovups ymm0,YMMWORD PTR [rsp-0x60]
  70c521:	c5 bc 5c f0          	vsubps ymm6,ymm8,ymm0
  70c525:	c5 3c 58 f8          	vaddps ymm15,ymm8,ymm0
  70c529:	c5 fc 10 44 24 c0    	vmovups ymm0,YMMWORD PTR [rsp-0x40]
  70c52f:	c4 41 7c 5c c3       	vsubps ymm8,ymm0,ymm11
  70c534:	c5 24 58 d8          	vaddps ymm11,ymm11,ymm0
  70c538:	c4 c1 04 14 eb       	vunpcklps ymm5,ymm15,ymm11
  70c53d:	c4 c1 00 14 c3       	vunpcklps xmm0,xmm15,xmm11
  70c542:	c4 41 00 15 db       	vunpckhps xmm11,xmm15,xmm11
  70c547:	c5 78 11 5e 10       	vmovups XMMWORD PTR [rsi+0x10],xmm11
  70c54c:	c5 f8 11 06          	vmovups XMMWORD PTR [rsi],xmm0
  70c550:	c4 e3 7d 19 6e 20 01 	vextractf128 XMMWORD PTR [rsi+0x20],ymm5,0x1
  70c557:	c5 b4 14 c1          	vunpcklps ymm0,ymm9,ymm1
  70c55b:	c5 b0 14 e9          	vunpcklps xmm5,xmm9,xmm1
  70c55f:	c5 b0 15 c9          	vunpckhps xmm1,xmm9,xmm1
  70c563:	c5 f8 11 4e 40       	vmovups XMMWORD PTR [rsi+0x40],xmm1
  70c568:	c5 f8 11 6e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm5
  70c56d:	c4 e3 7d 19 46 50 01 	vextractf128 XMMWORD PTR [rsi+0x50],ymm0,0x1
  70c574:	c5 c4 14 c2          	vunpcklps ymm0,ymm7,ymm2
  70c578:	c5 c0 14 ca          	vunpcklps xmm1,xmm7,xmm2
  70c57c:	c5 c0 15 d2          	vunpckhps xmm2,xmm7,xmm2
  70c580:	c5 f8 11 56 70       	vmovups XMMWORD PTR [rsi+0x70],xmm2
  70c585:	c5 f8 11 4e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm1
  70c58a:	c4 e3 7d 19 86 80 00 	vextractf128 XMMWORD PTR [rsi+0x80],ymm0,0x1
  70c591:	00 00 01 
  70c594:	c4 c1 2c 14 c4       	vunpcklps ymm0,ymm10,ymm12
  70c599:	c4 c1 28 14 cc       	vunpcklps xmm1,xmm10,xmm12
  70c59e:	c4 c1 28 15 d4       	vunpckhps xmm2,xmm10,xmm12
  70c5a3:	c5 f8 11 96 a0 00 00 	vmovups XMMWORD PTR [rsi+0xa0],xmm2
  70c5aa:	00 
  70c5ab:	c5 f8 11 8e 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm1
  70c5b2:	00 
  70c5b3:	c4 e3 7d 19 86 b0 00 	vextractf128 XMMWORD PTR [rsi+0xb0],ymm0,0x1
  70c5ba:	00 00 01 
  70c5bd:	c4 c1 4c 14 c0       	vunpcklps ymm0,ymm6,ymm8
  70c5c2:	c4 c1 48 14 c8       	vunpcklps xmm1,xmm6,xmm8
  70c5c7:	c4 c1 48 15 d0       	vunpckhps xmm2,xmm6,xmm8
  70c5cc:	c5 f8 11 96 d0 00 00 	vmovups XMMWORD PTR [rsi+0xd0],xmm2
  70c5d3:	00 
  70c5d4:	c5 f8 11 8e c0 00 00 	vmovups XMMWORD PTR [rsi+0xc0],xmm1
  70c5db:	00 
  70c5dc:	c4 e3 7d 19 86 e0 00 	vextractf128 XMMWORD PTR [rsi+0xe0],ymm0,0x1
  70c5e3:	00 00 01 
  70c5e6:	c4 c1 64 14 c5       	vunpcklps ymm0,ymm3,ymm13
  70c5eb:	c4 c1 60 14 cd       	vunpcklps xmm1,xmm3,xmm13
  70c5f0:	c4 c1 60 15 d5       	vunpckhps xmm2,xmm3,xmm13
  70c5f5:	c5 f8 11 96 00 01 00 	vmovups XMMWORD PTR [rsi+0x100],xmm2
  70c5fc:	00 
  70c5fd:	c5 f8 11 8e f0 00 00 	vmovups XMMWORD PTR [rsi+0xf0],xmm1
  70c604:	00 
  70c605:	c4 e3 7d 19 86 10 01 	vextractf128 XMMWORD PTR [rsi+0x110],ymm0,0x1
  70c60c:	00 00 01 
  70c60f:	c5 fc 10 54 24 e0    	vmovups ymm2,YMMWORD PTR [rsp-0x20]
  70c615:	c5 8c 14 c2          	vunpcklps ymm0,ymm14,ymm2
  70c619:	c5 88 14 ca          	vunpcklps xmm1,xmm14,xmm2
  70c61d:	c5 88 15 d2          	vunpckhps xmm2,xmm14,xmm2
  70c621:	c5 f8 11 96 30 01 00 	vmovups XMMWORD PTR [rsi+0x130],xmm2
  70c628:	00 
  70c629:	c5 f8 11 8e 20 01 00 	vmovups XMMWORD PTR [rsi+0x120],xmm1
  70c630:	00 
  70c631:	c4 e3 7d 19 86 40 01 	vextractf128 XMMWORD PTR [rsi+0x140],ymm0,0x1
  70c638:	00 00 01 
  70c63b:	c5 fc 10 54 24 80    	vmovups ymm2,YMMWORD PTR [rsp-0x80]
  70c641:	c5 dc 14 c2          	vunpcklps ymm0,ymm4,ymm2
  70c645:	c5 d8 14 ca          	vunpcklps xmm1,xmm4,xmm2
  70c649:	c5 d8 15 d2          	vunpckhps xmm2,xmm4,xmm2
  70c64d:	c5 f8 11 96 60 01 00 	vmovups XMMWORD PTR [rsi+0x160],xmm2
  70c654:	00 
  70c655:	c5 f8 11 8e 50 01 00 	vmovups XMMWORD PTR [rsi+0x150],xmm1
  70c65c:	00 
  70c65d:	c4 e3 7d 19 86 70 01 	vextractf128 XMMWORD PTR [rsi+0x170],ymm0,0x1
  70c664:	00 00 01 
  70c667:	48 81 c4 a8 01 00 00 	add    rsp,0x1a8
  70c66e:	c5 f8 77             	vzeroupper
  70c671:	c3                   	ret
