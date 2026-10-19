
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a2e000 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a2e000:	55                   	push   rbp
  a2e001:	48 89 e5             	mov    rbp,rsp
  a2e004:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a2e008:	48 81 ec c0 05 00 00 	sub    rsp,0x5c0
  a2e00f:	c6 84 24 40 05 00 00 	mov    BYTE PTR [rsp+0x540],0x0
  a2e016:	00 
  a2e017:	48 8d 84 24 40 05 00 	lea    rax,[rsp+0x540]
  a2e01e:	00 
  a2e01f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a2e024:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a2e029:	c5 fb 10 47 20       	vmovsd xmm0,QWORD PTR [rdi+0x20]
  a2e02e:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a2e032:	c5 fc 10 5f 28       	vmovups ymm3,YMMWORD PTR [rdi+0x28]
  a2e037:	c5 fc 10 67 50       	vmovups ymm4,YMMWORD PTR [rdi+0x50]
  a2e03c:	c5 fc 10 6f 78       	vmovups ymm5,YMMWORD PTR [rdi+0x78]
  a2e041:	62 f3 f5 48 1a c8 01 	vinsertf64x4 zmm1,zmm1,ymm0,0x1
  a2e048:	62 01 14 00 57 ed    	vxorps xmm29,xmm29,xmm29
  a2e04e:	62 f1 7c 48 28 15 a8 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6628a8]        # 90900 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ddb0>
  a2e055:	28 66 ff 
  a2e058:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a2e05e:	62 92 6d 48 7f c5    	vpermt2ps zmm0,zmm2,zmm29
  a2e064:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a2e06b:	06 
  a2e06c:	62 f1 7c 48 28 05 ca 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6628ca]        # 90940 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ddf0>
  a2e073:	28 66 ff 
  a2e076:	62 92 7d 48 7f cd    	vpermt2ps zmm1,zmm0,zmm29
  a2e07c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a2e083:	02 
  a2e084:	c5 fb 10 4f 48       	vmovsd xmm1,QWORD PTR [rdi+0x48]
  a2e089:	62 f3 e5 48 1a c9 01 	vinsertf64x4 zmm1,zmm3,ymm1,0x1
  a2e090:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a2e096:	62 92 6d 48 7f dd    	vpermt2ps zmm3,zmm2,zmm29
  a2e09c:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a2e0a2:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm3
  a2e0a9:	08 
  a2e0aa:	62 92 7d 48 7f cd    	vpermt2ps zmm1,zmm0,zmm29
  a2e0b0:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a2e0b6:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a2e0bd:	09 
  a2e0be:	c5 fb 10 4f 70       	vmovsd xmm1,QWORD PTR [rdi+0x70]
  a2e0c3:	62 f3 dd 48 1a c9 01 	vinsertf64x4 zmm1,zmm4,ymm1,0x1
  a2e0ca:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a2e0d0:	62 92 6d 48 7f dd    	vpermt2ps zmm3,zmm2,zmm29
  a2e0d6:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm3
  a2e0dd:	04 
  a2e0de:	62 92 7d 48 7f cd    	vpermt2ps zmm1,zmm0,zmm29
  a2e0e4:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a2e0eb:	05 
  a2e0ec:	c5 fb 10 8f 98 00 00 	vmovsd xmm1,QWORD PTR [rdi+0x98]
  a2e0f3:	00 
  a2e0f4:	62 73 d5 48 1a e9 01 	vinsertf64x4 zmm13,zmm5,ymm1,0x1
  a2e0fb:	62 c1 7c 48 28 d5    	vmovaps zmm18,zmm13
  a2e101:	62 82 6d 48 7f d5    	vpermt2ps zmm18,zmm2,zmm29
  a2e107:	62 12 7d 48 7f ed    	vpermt2ps zmm13,zmm0,zmm29
  a2e10d:	c5 fb 10 8f c0 00 00 	vmovsd xmm1,QWORD PTR [rdi+0xc0]
  a2e114:	00 
  a2e115:	c5 fc 10 9f a0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xa0]
  a2e11c:	00 
  a2e11d:	62 f3 e5 48 1a d9 01 	vinsertf64x4 zmm3,zmm3,ymm1,0x1
  a2e124:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a2e12a:	62 92 6d 48 7f cd    	vpermt2ps zmm1,zmm2,zmm29
  a2e130:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a2e137:	03 
  a2e138:	62 92 7d 48 7f dd    	vpermt2ps zmm3,zmm0,zmm29
  a2e13e:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a2e145:	01 
  a2e146:	c5 fb 10 8f e8 00 00 	vmovsd xmm1,QWORD PTR [rdi+0xe8]
  a2e14d:	00 
  a2e14e:	c5 fc 10 9f c8 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xc8]
  a2e155:	00 
  a2e156:	62 e3 e5 48 1a e9 01 	vinsertf64x4 zmm21,zmm3,ymm1,0x1
  a2e15d:	62 b1 7c 48 28 cd    	vmovaps zmm1,zmm21
  a2e163:	62 92 6d 48 7f cd    	vpermt2ps zmm1,zmm2,zmm29
  a2e169:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a2e16f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a2e176:	07 
  a2e177:	62 82 7d 48 7f ed    	vpermt2ps zmm21,zmm0,zmm29
  a2e17d:	c5 fb 10 8f 10 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x110]
  a2e184:	00 
  a2e185:	c5 fc 10 9f f0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xf0]
  a2e18c:	00 
  a2e18d:	62 f3 e5 48 1a c9 01 	vinsertf64x4 zmm1,zmm3,ymm1,0x1
  a2e194:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a2e19a:	62 92 6d 48 7f dd    	vpermt2ps zmm3,zmm2,zmm29
  a2e1a0:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm3
  a2e1a7:	14 
  a2e1a8:	62 92 7d 48 7f cd    	vpermt2ps zmm1,zmm0,zmm29
  a2e1ae:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm1
  a2e1b5:	13 
  a2e1b6:	c5 fb 10 8f 38 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x138]
  a2e1bd:	00 
  a2e1be:	c5 fc 10 9f 18 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x118]
  a2e1c5:	00 
  a2e1c6:	62 e3 e5 48 1a c9 01 	vinsertf64x4 zmm17,zmm3,ymm1,0x1
  a2e1cd:	62 31 7c 48 28 e1    	vmovaps zmm12,zmm17
  a2e1d3:	62 12 6d 48 7f e5    	vpermt2ps zmm12,zmm2,zmm29
  a2e1d9:	62 82 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm29
  a2e1df:	c5 fb 10 8f 60 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x160]
  a2e1e6:	00 
  a2e1e7:	c5 fc 10 9f 40 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x140]
  a2e1ee:	00 
  a2e1ef:	62 f3 e5 48 1a c9 01 	vinsertf64x4 zmm1,zmm3,ymm1,0x1
  a2e1f6:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a2e1fc:	62 92 6d 48 7f dd    	vpermt2ps zmm3,zmm2,zmm29
  a2e202:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm3
  a2e209:	11 
  a2e20a:	62 92 7d 48 7f cd    	vpermt2ps zmm1,zmm0,zmm29
  a2e210:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm1
  a2e217:	12 
  a2e218:	c5 fb 10 8f 88 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x188]
  a2e21f:	00 
  a2e220:	c5 fc 10 9f 68 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x168]
  a2e227:	00 
  a2e228:	62 e3 e5 48 1a e1 01 	vinsertf64x4 zmm20,zmm3,ymm1,0x1
  a2e22f:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a2e235:	62 82 6d 48 7f f5    	vpermt2ps zmm22,zmm2,zmm29
  a2e23b:	62 82 7d 48 7f e5    	vpermt2ps zmm20,zmm0,zmm29
  a2e241:	c5 fb 10 8f b0 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x1b0]
  a2e248:	00 
  a2e249:	c5 fc 10 9f 90 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x190]
  a2e250:	00 
  a2e251:	62 e3 e5 48 1a d9 01 	vinsertf64x4 zmm19,zmm3,ymm1,0x1
  a2e258:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a2e25e:	62 92 6d 48 7f cd    	vpermt2ps zmm1,zmm2,zmm29
  a2e264:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm1
  a2e26b:	10 
  a2e26c:	62 82 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm29
  a2e272:	c5 fb 10 8f d8 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x1d8]
  a2e279:	00 
  a2e27a:	c5 fc 10 9f b8 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x1b8]
  a2e281:	00 
  a2e282:	62 e3 e5 48 1a f9 01 	vinsertf64x4 zmm23,zmm3,ymm1,0x1
  a2e289:	62 21 7c 48 28 cf    	vmovaps zmm25,zmm23
  a2e28f:	62 02 6d 48 7f cd    	vpermt2ps zmm25,zmm2,zmm29
  a2e295:	62 82 7d 48 7f fd    	vpermt2ps zmm23,zmm0,zmm29
  a2e29b:	c5 fb 10 8f 00 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x200]
  a2e2a2:	00 
  a2e2a3:	c5 fc 10 9f e0 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x1e0]
  a2e2aa:	00 
  a2e2ab:	62 63 e5 48 1a c1 01 	vinsertf64x4 zmm24,zmm3,ymm1,0x1
  a2e2b2:	c5 fb 10 8f 28 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x228]
  a2e2b9:	00 
  a2e2ba:	c5 fc 10 9f 08 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x208]
  a2e2c1:	00 
  a2e2c2:	62 63 e5 48 1a d9 01 	vinsertf64x4 zmm27,zmm3,ymm1,0x1
  a2e2c9:	c5 fb 10 8f 50 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x250]
  a2e2d0:	00 
  a2e2d1:	c5 fc 10 9f 30 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x230]
  a2e2d8:	00 
  a2e2d9:	62 63 e5 48 1a d1 01 	vinsertf64x4 zmm26,zmm3,ymm1,0x1
  a2e2e0:	c5 fb 10 8f 78 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x278]
  a2e2e7:	00 
  a2e2e8:	c5 fc 10 9f 58 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x258]
  a2e2ef:	00 
  a2e2f0:	62 63 e5 48 1a f9 01 	vinsertf64x4 zmm31,zmm3,ymm1,0x1
  a2e2f7:	62 01 7c 48 28 e0    	vmovaps zmm28,zmm24
  a2e2fd:	62 02 6d 48 7f e5    	vpermt2ps zmm28,zmm2,zmm29
  a2e303:	62 02 7d 48 7f c5    	vpermt2ps zmm24,zmm0,zmm29
  a2e309:	62 81 7c 48 28 c3    	vmovaps zmm16,zmm27
  a2e30f:	62 82 6d 48 7f c5    	vpermt2ps zmm16,zmm2,zmm29
  a2e315:	62 02 7d 48 7f dd    	vpermt2ps zmm27,zmm0,zmm29
  a2e31b:	62 01 7c 48 28 f2    	vmovaps zmm30,zmm26
  a2e321:	62 02 6d 48 7f f5    	vpermt2ps zmm30,zmm2,zmm29
  a2e327:	62 02 7d 48 7f d5    	vpermt2ps zmm26,zmm0,zmm29
  a2e32d:	62 92 05 40 77 d5    	vpermi2ps zmm2,zmm31,zmm29
  a2e333:	62 02 7d 48 7f fd    	vpermt2ps zmm31,zmm0,zmm29
  a2e339:	62 31 4c 48 5c fe    	vsubps zmm15,zmm6,zmm22
  a2e33f:	62 11 54 40 5c f3    	vsubps zmm14,zmm21,zmm27
  a2e345:	62 d1 04 48 58 f6    	vaddps zmm6,zmm15,zmm14
  a2e34b:	62 31 44 48 5c dc    	vsubps zmm11,zmm7,zmm20
  a2e351:	62 71 7c 40 5c d5    	vsubps zmm10,zmm16,zmm5
  a2e357:	62 51 2c 48 58 c3    	vaddps zmm8,zmm10,zmm11
  a2e35d:	62 72 7d 48 18 0d fd 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff6472fd]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a2e364:	72 64 ff 
  a2e367:	62 d1 3c 48 59 c1    	vmulps zmm0,zmm8,zmm9
  a2e36d:	62 f2 7d 48 18 3d 89 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff647389]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a2e374:	73 64 ff 
  a2e377:	62 f2 4d 48 b8 c7    	vfmadd231ps zmm0,zmm6,zmm7
  a2e37d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a2e384:	0f 
  a2e385:	62 f1 3c 48 59 c7    	vmulps zmm0,zmm8,zmm7
  a2e38b:	62 f2 35 48 bc c6    	vfnmadd231ps zmm0,zmm9,zmm6
  a2e391:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a2e398:	0e 
  a2e399:	62 91 6c 40 5c e9    	vsubps zmm5,zmm18,zmm25
  a2e39f:	62 91 74 40 5c e7    	vsubps zmm4,zmm17,zmm31
  a2e3a5:	62 f1 54 48 58 c4    	vaddps zmm0,zmm5,zmm4
  a2e3ab:	62 b1 14 48 5c df    	vsubps zmm3,zmm13,zmm23
  a2e3b1:	62 d1 6c 48 5c cc    	vsubps zmm1,zmm2,zmm12
  a2e3b7:	62 f1 74 48 58 f3    	vaddps zmm6,zmm1,zmm3
  a2e3bd:	62 71 4c 48 59 c7    	vmulps zmm8,zmm6,zmm7
  a2e3c3:	62 52 7d 48 b8 c1    	vfmadd231ps zmm8,zmm0,zmm9
  a2e3c9:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm8
  a2e3d0:	0d 
  a2e3d1:	62 41 4c 48 59 e9    	vmulps zmm29,zmm6,zmm9
  a2e3d7:	62 62 45 48 bc e8    	vfnmadd231ps zmm29,zmm7,zmm0
  a2e3dd:	62 d1 04 48 5c c6    	vsubps zmm0,zmm15,zmm14
  a2e3e3:	62 51 24 48 5c d2    	vsubps zmm10,zmm11,zmm10
  a2e3e9:	62 f1 54 48 5c ec    	vsubps zmm5,zmm5,zmm4
  a2e3ef:	62 71 64 48 5c d9    	vsubps zmm11,zmm3,zmm1
  a2e3f5:	62 f1 2c 48 59 cf    	vmulps zmm1,zmm10,zmm7
  a2e3fb:	62 d2 7d 48 b8 c9    	vfmadd231ps zmm1,zmm0,zmm9
  a2e401:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a2e408:	0c 
  a2e409:	62 d1 2c 48 59 c9    	vmulps zmm1,zmm10,zmm9
  a2e40f:	62 f2 45 48 bc c8    	vfnmadd231ps zmm1,zmm7,zmm0
  a2e415:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a2e41c:	0a 
  a2e41d:	62 d1 24 48 59 c1    	vmulps zmm0,zmm11,zmm9
  a2e423:	62 f2 55 48 b8 c7    	vfmadd231ps zmm0,zmm5,zmm7
  a2e429:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a2e430:	0b 
  a2e431:	62 51 54 48 59 c1    	vmulps zmm8,zmm5,zmm9
  a2e437:	62 72 25 48 bc c7    	vfnmadd231ps zmm8,zmm11,zmm7
  a2e43d:	62 f1 4c 40 58 6c 24 	vaddps zmm5,zmm22,ZMMWORD PTR [rsp+0x200]
  a2e444:	08 
  a2e445:	62 f1 7c 40 58 7c 24 	vaddps zmm7,zmm16,ZMMWORD PTR [rsp+0x1c0]
  a2e44c:	07 
  a2e44d:	62 11 6c 40 58 c9    	vaddps zmm9,zmm18,zmm25
  a2e453:	62 f1 1c 48 58 d2    	vaddps zmm2,zmm12,zmm2
  a2e459:	62 71 5c 40 58 54 24 	vaddps zmm10,zmm20,ZMMWORD PTR [rsp+0x240]
  a2e460:	09 
  a2e461:	62 11 54 40 58 db    	vaddps zmm11,zmm21,zmm27
  a2e467:	62 31 14 48 58 e7    	vaddps zmm12,zmm13,zmm23
  a2e46d:	62 11 74 40 58 ef    	vaddps zmm13,zmm17,zmm31
  a2e473:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a2e47a:	06 
  a2e47b:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x440]
  a2e482:	11 
  a2e483:	62 71 7c 48 58 f9    	vaddps zmm15,zmm0,zmm1
  a2e489:	62 e1 7c 48 5c c1    	vsubps zmm16,zmm0,zmm1
  a2e48f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a2e496:	01 
  a2e497:	62 81 7c 48 58 d0    	vaddps zmm18,zmm0,zmm24
  a2e49d:	62 81 7c 48 5c e0    	vsubps zmm20,zmm0,zmm24
  a2e4a3:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a2e4aa:	04 
  a2e4ab:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x400]
  a2e4b2:	10 
  a2e4b3:	62 e1 7c 48 58 f1    	vaddps zmm22,zmm0,zmm1
  a2e4b9:	62 e1 7c 48 5c f9    	vsubps zmm23,zmm0,zmm1
  a2e4bf:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a2e4c6:	05 
  a2e4c7:	62 21 7c 48 58 c3    	vaddps zmm24,zmm0,zmm19
  a2e4cd:	62 a1 7c 48 5c db    	vsubps zmm19,zmm0,zmm19
  a2e4d3:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x4c0]
  a2e4da:	13 
  a2e4db:	62 01 7c 48 58 ca    	vaddps zmm25,zmm0,zmm26
  a2e4e1:	62 81 7c 48 5c ea    	vsubps zmm21,zmm0,zmm26
  a2e4e7:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x500]
  a2e4ee:	14 
  a2e4ef:	62 01 7c 48 58 d6    	vaddps zmm26,zmm0,zmm30
  a2e4f5:	62 01 7c 48 5c de    	vsubps zmm27,zmm0,zmm30
  a2e4fb:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a2e502:	02 
  a2e503:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x480]
  a2e50a:	12 
  a2e50b:	62 61 7c 48 58 f1    	vaddps zmm30,zmm0,zmm1
  a2e511:	62 e1 7c 48 5c c9    	vsubps zmm17,zmm0,zmm1
  a2e517:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a2e51e:	03 
  a2e51f:	62 01 7c 48 58 fc    	vaddps zmm31,zmm0,zmm28
  a2e525:	62 61 1c 40 5c e0    	vsubps zmm28,zmm28,zmm0
  a2e52b:	62 b1 44 40 58 cb    	vaddps zmm1,zmm23,zmm19
  a2e531:	62 a1 64 40 5c df    	vsubps zmm19,zmm19,zmm23
  a2e537:	62 81 54 40 5c fb    	vsubps zmm23,zmm21,zmm27
  a2e53d:	62 a1 24 40 58 ed    	vaddps zmm21,zmm27,zmm21
  a2e543:	62 01 04 48 58 df    	vaddps zmm27,zmm15,zmm31
  a2e549:	62 11 04 48 5c ff    	vsubps zmm15,zmm15,zmm31
  a2e54f:	62 01 3c 40 58 f9    	vaddps zmm31,zmm24,zmm25
  a2e555:	62 01 3c 40 5c c1    	vsubps zmm24,zmm24,zmm25
  a2e55b:	62 61 54 48 58 cf    	vaddps zmm25,zmm5,zmm7
  a2e561:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a2e567:	62 d1 2c 48 58 fb    	vaddps zmm7,zmm10,zmm11
  a2e56d:	62 51 2c 48 5c d3    	vsubps zmm10,zmm10,zmm11
  a2e573:	62 51 1c 48 58 dd    	vaddps zmm11,zmm12,zmm13
  a2e579:	62 51 1c 48 5c e5    	vsubps zmm12,zmm12,zmm13
  a2e57f:	62 71 34 48 58 ea    	vaddps zmm13,zmm9,zmm2
  a2e585:	62 f1 34 48 5c d2    	vsubps zmm2,zmm9,zmm2
  a2e58b:	62 31 0c 40 58 ca    	vaddps zmm9,zmm30,zmm18
  a2e591:	62 a1 0c 40 5c d2    	vsubps zmm18,zmm30,zmm18
  a2e597:	62 01 4c 40 58 f2    	vaddps zmm30,zmm22,zmm26
  a2e59d:	62 a1 2c 40 5c f6    	vsubps zmm22,zmm26,zmm22
  a2e5a3:	62 41 54 48 58 d2    	vaddps zmm26,zmm5,zmm10
  a2e5a9:	62 f1 2c 48 5c ed    	vsubps zmm5,zmm10,zmm5
  a2e5af:	62 72 7d 48 18 15 e3 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff646de3]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a2e5b6:	6d 64 ff 
  a2e5b9:	62 f1 1c 48 5c c2    	vsubps zmm0,zmm12,zmm2
  a2e5bf:	62 d1 6c 48 58 d4    	vaddps zmm2,zmm2,zmm12
  a2e5c5:	62 d1 74 48 59 ca    	vmulps zmm1,zmm1,zmm10
  a2e5cb:	62 51 44 40 59 e2    	vmulps zmm12,zmm23,zmm10
  a2e5d1:	62 c1 64 40 59 da    	vmulps zmm19,zmm19,zmm10
  a2e5d7:	62 c1 54 40 59 ea    	vmulps zmm21,zmm21,zmm10
  a2e5dd:	62 c1 2c 40 59 fa    	vmulps zmm23,zmm26,zmm10
  a2e5e3:	62 d1 7c 48 59 da    	vmulps zmm3,zmm0,zmm10
  a2e5e9:	62 d1 54 48 59 ea    	vmulps zmm5,zmm5,zmm10
  a2e5ef:	62 d1 6c 48 59 c2    	vmulps zmm0,zmm2,zmm10
  a2e5f5:	62 31 7c 40 58 d4    	vaddps zmm10,zmm16,zmm20
  a2e5fb:	62 a1 7c 40 5c c4    	vsubps zmm16,zmm16,zmm20
  a2e601:	62 a1 64 40 5c e5    	vsubps zmm20,zmm19,zmm21
  a2e607:	62 a1 64 40 58 dd    	vaddps zmm19,zmm19,zmm21
  a2e60d:	62 a1 1c 40 58 e9    	vaddps zmm21,zmm28,zmm17
  a2e613:	62 81 74 40 5c cc    	vsubps zmm17,zmm17,zmm28
  a2e619:	62 41 74 48 58 d4    	vaddps zmm26,zmm1,zmm12
  a2e61f:	62 f1 1c 48 5c f1    	vsubps zmm6,zmm12,zmm1
  a2e625:	62 11 24 40 58 f6    	vaddps zmm14,zmm27,zmm30
  a2e62b:	62 91 24 40 5c ce    	vsubps zmm1,zmm27,zmm30
  a2e631:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a2e638:	04 
  a2e639:	62 41 44 48 58 e3    	vaddps zmm28,zmm7,zmm11
  a2e63f:	62 d1 44 48 5c cb    	vsubps zmm1,zmm7,zmm11
  a2e645:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a2e64c:	03 
  a2e64d:	62 11 34 48 58 df    	vaddps zmm11,zmm9,zmm31
  a2e653:	62 01 34 48 5c df    	vsubps zmm27,zmm9,zmm31
  a2e659:	62 41 34 40 58 f5    	vaddps zmm30,zmm25,zmm13
  a2e65f:	62 11 14 48 5c e9    	vsubps zmm13,zmm13,zmm25
  a2e665:	62 01 2c 48 58 ca    	vaddps zmm25,zmm10,zmm26
  a2e66b:	62 91 2c 48 5c ca    	vsubps zmm1,zmm10,zmm26
  a2e671:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a2e678:	02 
  a2e679:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x380]
  a2e680:	0e 
  a2e681:	62 11 74 48 58 d5    	vaddps zmm10,zmm1,zmm29
  a2e687:	62 01 74 48 5c d5    	vsubps zmm26,zmm1,zmm29
  a2e68d:	62 21 54 40 58 fc    	vaddps zmm31,zmm21,zmm20
  a2e693:	62 a1 54 40 5c ec    	vsubps zmm21,zmm21,zmm20
  a2e699:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x3c0]
  a2e6a0:	0f 
  a2e6a1:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x340]
  a2e6a8:	0d 
  a2e6a9:	62 e1 74 48 58 e2    	vaddps zmm20,zmm1,zmm2
  a2e6af:	62 61 6c 48 5c e9    	vsubps zmm29,zmm2,zmm1
  a2e6b5:	62 91 04 48 58 e0    	vaddps zmm4,zmm15,zmm24
  a2e6bb:	62 11 04 48 5c f8    	vsubps zmm15,zmm15,zmm24
  a2e6c1:	62 61 54 48 5c c0    	vsubps zmm24,zmm5,zmm0
  a2e6c7:	62 71 54 48 58 e0    	vaddps zmm12,zmm5,zmm0
  a2e6cd:	62 b1 4c 40 58 ea    	vaddps zmm5,zmm22,zmm18
  a2e6d3:	62 a1 6c 40 5c f6    	vsubps zmm22,zmm18,zmm22
  a2e6d9:	62 e1 44 40 58 d3    	vaddps zmm18,zmm23,zmm3
  a2e6df:	62 a1 64 48 5c ff    	vsubps zmm23,zmm3,zmm23
  a2e6e5:	62 b1 7c 40 58 db    	vaddps zmm3,zmm16,zmm19
  a2e6eb:	62 a1 7c 40 5c db    	vsubps zmm19,zmm16,zmm19
  a2e6f1:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a2e6f8:	0a 
  a2e6f9:	62 d1 7c 48 58 d0    	vaddps zmm2,zmm0,zmm8
  a2e6ff:	62 51 7c 48 5c c8    	vsubps zmm9,zmm0,zmm8
  a2e705:	62 f1 74 40 58 ce    	vaddps zmm1,zmm17,zmm6
  a2e70b:	62 71 74 40 5c c6    	vsubps zmm8,zmm17,zmm6
  a2e711:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x300]
  a2e718:	0c 
  a2e719:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x2c0]
  a2e720:	0b 
  a2e721:	62 f1 4c 48 5c c7    	vsubps zmm0,zmm6,zmm7
  a2e727:	62 f1 4c 48 58 f7    	vaddps zmm6,zmm6,zmm7
  a2e72d:	62 91 0c 48 58 fe    	vaddps zmm7,zmm14,zmm30
  a2e733:	62 11 0c 48 5c f6    	vsubps zmm14,zmm14,zmm30
  a2e739:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm14
  a2e740:	01 
  a2e741:	62 01 24 48 58 f4    	vaddps zmm30,zmm11,zmm28
  a2e747:	62 11 24 48 5c dc    	vsubps zmm11,zmm11,zmm28
  a2e74d:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm11
  a2e754:	06 
  a2e755:	62 21 34 40 58 e4    	vaddps zmm28,zmm25,zmm20
  a2e75b:	62 a1 34 40 5c cc    	vsubps zmm17,zmm25,zmm20
  a2e761:	62 41 04 40 58 ca    	vaddps zmm25,zmm31,zmm10
  a2e767:	62 51 04 40 5c d2    	vsubps zmm10,zmm31,zmm10
  a2e76d:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm10
  a2e774:	05 
  a2e775:	62 31 5c 48 58 d2    	vaddps zmm10,zmm4,zmm18
  a2e77b:	62 a1 5c 48 5c c2    	vsubps zmm16,zmm4,zmm18
  a2e781:	62 01 54 48 58 f8    	vaddps zmm31,zmm5,zmm24
  a2e787:	62 91 54 48 5c e8    	vsubps zmm5,zmm5,zmm24
  a2e78d:	62 71 64 48 58 d8    	vaddps zmm11,zmm3,zmm0
  a2e793:	62 f1 64 48 5c c0    	vsubps zmm0,zmm3,zmm0
  a2e799:	62 e1 74 48 58 d2    	vaddps zmm18,zmm1,zmm2
  a2e79f:	62 f1 74 48 5c da    	vsubps zmm3,zmm1,zmm2
  a2e7a5:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a2e7ac:	04 
  a2e7ad:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a2e7b4:	03 
  a2e7b5:	62 e1 74 48 58 e2    	vaddps zmm20,zmm1,zmm2
  a2e7bb:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a2e7c1:	62 91 14 48 58 d3    	vaddps zmm2,zmm13,zmm27
  a2e7c7:	62 41 24 40 5c dd    	vsubps zmm27,zmm27,zmm13
  a2e7cd:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x80]
  a2e7d4:	02 
  a2e7d5:	62 11 5c 48 58 ea    	vaddps zmm13,zmm4,zmm26
  a2e7db:	62 91 5c 48 5c e2    	vsubps zmm4,zmm4,zmm26
  a2e7e1:	62 01 54 40 58 d5    	vaddps zmm26,zmm21,zmm29
  a2e7e7:	62 81 54 40 5c ed    	vsubps zmm21,zmm21,zmm29
  a2e7ed:	62 51 04 48 58 f4    	vaddps zmm14,zmm15,zmm12
  a2e7f3:	62 41 04 48 5c ec    	vsubps zmm29,zmm15,zmm12
  a2e7f9:	62 31 4c 40 58 e7    	vaddps zmm12,zmm22,zmm23
  a2e7ff:	62 a1 4c 40 5c f7    	vsubps zmm22,zmm22,zmm23
  a2e805:	62 51 64 40 58 f9    	vaddps zmm15,zmm19,zmm9
  a2e80b:	62 c1 64 40 5c d9    	vsubps zmm19,zmm19,zmm9
  a2e811:	62 71 3c 48 5c ce    	vsubps zmm9,zmm8,zmm6
  a2e817:	62 e1 3c 48 58 fe    	vaddps zmm23,zmm8,zmm6
  a2e81d:	62 61 7c 48 28 05 59 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff698759]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a2e824:	87 69 ff 
  a2e827:	62 f2 3d 40 7f 7c 24 	vpermt2ps zmm7,zmm24,ZMMWORD PTR [rsp+0x40]
  a2e82e:	01 
  a2e82f:	62 22 3d 40 7f e1    	vpermt2ps zmm28,zmm24,zmm17
  a2e835:	62 32 3d 40 7f d0    	vpermt2ps zmm10,zmm24,zmm16
  a2e83b:	62 72 3d 40 7f d8    	vpermt2ps zmm11,zmm24,zmm0
  a2e841:	62 e2 3d 40 7f e1    	vpermt2ps zmm20,zmm24,zmm1
  a2e847:	62 72 3d 40 7f ec    	vpermt2ps zmm13,zmm24,zmm4
  a2e84d:	62 12 3d 40 7f f5    	vpermt2ps zmm14,zmm24,zmm29
  a2e853:	62 32 3d 40 7f fb    	vpermt2ps zmm15,zmm24,zmm19
  a2e859:	62 62 3d 40 7f 74 24 	vpermt2ps zmm30,zmm24,ZMMWORD PTR [rsp+0x180]
  a2e860:	06 
  a2e861:	62 62 3d 40 7f 4c 24 	vpermt2ps zmm25,zmm24,ZMMWORD PTR [rsp+0x140]
  a2e868:	05 
  a2e869:	62 62 3d 40 7f fd    	vpermt2ps zmm31,zmm24,zmm5
  a2e86f:	62 e2 3d 40 7f d3    	vpermt2ps zmm18,zmm24,zmm3
  a2e875:	62 92 3d 40 7f d3    	vpermt2ps zmm2,zmm24,zmm27
  a2e87b:	62 22 3d 40 7f d5    	vpermt2ps zmm26,zmm24,zmm21
  a2e881:	62 32 3d 40 7f e6    	vpermt2ps zmm12,zmm24,zmm22
  a2e887:	62 f1 7c 48 28 05 6f 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff69866f]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a2e88e:	86 69 ff 
  a2e891:	62 32 3d 40 7f cf    	vpermt2ps zmm9,zmm24,zmm23
  a2e897:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a2e89d:	62 b2 7d 48 7f cc    	vpermt2ps zmm1,zmm0,zmm20
  a2e8a3:	62 f1 7c 48 28 1d 93 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff698693]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a2e8aa:	86 69 ff 
  a2e8ad:	62 b2 65 48 7f fc    	vpermt2ps zmm7,zmm3,zmm20
  a2e8b3:	62 91 7c 48 28 e4    	vmovaps zmm4,zmm28
  a2e8b9:	62 d2 7d 48 7f e5    	vpermt2ps zmm4,zmm0,zmm13
  a2e8bf:	62 42 65 48 7f e5    	vpermt2ps zmm28,zmm3,zmm13
  a2e8c5:	62 d1 7c 48 28 ea    	vmovaps zmm5,zmm10
  a2e8cb:	62 d2 7d 48 7f ee    	vpermt2ps zmm5,zmm0,zmm14
  a2e8d1:	62 52 65 48 7f d6    	vpermt2ps zmm10,zmm3,zmm14
  a2e8d7:	62 51 c5 48 14 d2    	vunpcklpd zmm10,zmm7,zmm10
  a2e8dd:	62 d1 7c 48 28 f3    	vmovaps zmm6,zmm11
  a2e8e3:	62 d2 7d 48 7f f7    	vpermt2ps zmm6,zmm0,zmm15
  a2e8e9:	62 52 65 48 7f df    	vpermt2ps zmm11,zmm3,zmm15
  a2e8ef:	62 d1 9d 40 14 fb    	vunpcklpd zmm7,zmm28,zmm11
  a2e8f5:	62 71 f5 48 14 dd    	vunpcklpd zmm11,zmm1,zmm5
  a2e8fb:	62 f1 f5 48 15 ed    	vunpckhpd zmm5,zmm1,zmm5
  a2e901:	62 71 dd 48 14 c6    	vunpcklpd zmm8,zmm4,zmm6
  a2e907:	62 f1 dd 48 15 e6    	vunpckhpd zmm4,zmm4,zmm6
  a2e90d:	62 91 7c 48 28 f6    	vmovaps zmm6,zmm30
  a2e913:	62 f2 7d 48 7f f2    	vpermt2ps zmm6,zmm0,zmm2
  a2e919:	62 62 65 48 7f f2    	vpermt2ps zmm30,zmm3,zmm2
  a2e91f:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a2e925:	62 92 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm26
  a2e92b:	62 02 65 48 7f ca    	vpermt2ps zmm25,zmm3,zmm26
  a2e931:	62 11 7c 48 28 ef    	vmovaps zmm13,zmm31
  a2e937:	62 52 7d 48 7f ec    	vpermt2ps zmm13,zmm0,zmm12
  a2e93d:	62 42 65 48 7f fc    	vpermt2ps zmm31,zmm3,zmm12
  a2e943:	62 71 7c 48 28 25 b3 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6984b3]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2e94a:	84 69 ff 
  a2e94d:	62 d2 6d 40 77 c1    	vpermi2ps zmm0,zmm18,zmm9
  a2e953:	62 c2 65 48 7f d1    	vpermt2ps zmm18,zmm3,zmm9
  a2e959:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a2e95f:	62 d2 1d 48 7f c8    	vpermt2ps zmm1,zmm12,zmm8
  a2e965:	62 f1 7c 48 28 1d d1 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6984d1]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a2e96c:	84 69 ff 
  a2e96f:	62 52 65 48 7f d8    	vpermt2ps zmm11,zmm3,zmm8
  a2e975:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a2e97b:	62 72 1d 48 7f c4    	vpermt2ps zmm8,zmm12,zmm4
  a2e981:	62 f2 65 48 7f ec    	vpermt2ps zmm5,zmm3,zmm4
  a2e987:	62 72 1d 48 7f d7    	vpermt2ps zmm10,zmm12,zmm7
  a2e98d:	62 91 8d 40 14 ff    	vunpcklpd zmm7,zmm30,zmm31
  a2e993:	62 31 b5 40 14 ca    	vunpcklpd zmm9,zmm25,zmm18
  a2e999:	62 51 cd 48 14 f5    	vunpcklpd zmm14,zmm6,zmm13
  a2e99f:	62 d1 cd 48 15 e5    	vunpckhpd zmm4,zmm6,zmm13
  a2e9a5:	62 f1 ed 48 14 f0    	vunpcklpd zmm6,zmm2,zmm0
  a2e9ab:	62 f1 ed 48 15 d0    	vunpckhpd zmm2,zmm2,zmm0
  a2e9b1:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a2e9b7:	62 f2 1d 48 7f c6    	vpermt2ps zmm0,zmm12,zmm6
  a2e9bd:	62 72 65 48 7f f6    	vpermt2ps zmm14,zmm3,zmm6
  a2e9c3:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a2e9c9:	62 f2 1d 48 7f f2    	vpermt2ps zmm6,zmm12,zmm2
  a2e9cf:	62 f2 65 48 7f e2    	vpermt2ps zmm4,zmm3,zmm2
  a2e9d5:	62 d2 1d 48 7f f9    	vpermt2ps zmm7,zmm12,zmm9
  a2e9db:	62 f1 7c 48 10 52 02 	vmovups zmm2,ZMMWORD PTR [rdx+0x80]
  a2e9e2:	62 f1 7c 48 10 5a 03 	vmovups zmm3,ZMMWORD PTR [rdx+0xc0]
  a2e9e9:	62 71 7c 48 10 4a 04 	vmovups zmm9,ZMMWORD PTR [rdx+0x100]
  a2e9f0:	62 71 7c 48 10 62 05 	vmovups zmm12,ZMMWORD PTR [rdx+0x140]
  a2e9f7:	62 71 0c 48 59 ea    	vmulps zmm13,zmm14,zmm2
  a2e9fd:	62 72 25 48 b8 eb    	vfmadd231ps zmm13,zmm11,zmm3
  a2ea03:	62 71 24 48 59 da    	vmulps zmm11,zmm11,zmm2
  a2ea09:	62 f1 7c 48 10 52 09 	vmovups zmm2,ZMMWORD PTR [rdx+0x240]
  a2ea10:	62 52 65 48 bc de    	vfnmadd231ps zmm11,zmm3,zmm14
  a2ea16:	62 f1 7c 48 10 5a 08 	vmovups zmm3,ZMMWORD PTR [rdx+0x200]
  a2ea1d:	62 71 44 48 59 f3    	vmulps zmm14,zmm7,zmm3
  a2ea23:	62 72 2d 48 b8 f2    	vfmadd231ps zmm14,zmm10,zmm2
  a2ea29:	62 71 2c 48 59 d3    	vmulps zmm10,zmm10,zmm3
  a2ea2f:	62 51 4c 48 59 f9    	vmulps zmm15,zmm6,zmm9
  a2ea35:	62 52 3d 48 b8 fc    	vfmadd231ps zmm15,zmm8,zmm12
  a2ea3b:	62 72 6d 48 bc d7    	vfnmadd231ps zmm10,zmm2,zmm7
  a2ea41:	62 f1 7c 48 10 7a 07 	vmovups zmm7,ZMMWORD PTR [rdx+0x1c0]
  a2ea48:	62 e1 7c 48 10 42 06 	vmovups zmm16,ZMMWORD PTR [rdx+0x180]
  a2ea4f:	62 51 3c 48 59 c1    	vmulps zmm8,zmm8,zmm9
  a2ea55:	62 31 5c 48 59 c8    	vmulps zmm9,zmm4,zmm16
  a2ea5b:	62 72 55 48 b8 cf    	vfmadd231ps zmm9,zmm5,zmm7
  a2ea61:	62 72 1d 48 bc c6    	vfnmadd231ps zmm8,zmm12,zmm6
  a2ea67:	62 d1 04 48 58 d1    	vaddps zmm2,zmm15,zmm9
  a2ea6d:	62 d1 14 48 58 de    	vaddps zmm3,zmm13,zmm14
  a2ea73:	62 b1 54 48 59 e8    	vmulps zmm5,zmm5,zmm16
  a2ea79:	62 f2 7d 48 18 35 65 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff646c65]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a2ea80:	6c 64 ff 
  a2ea83:	62 f2 45 48 bc ec    	vfnmadd231ps zmm5,zmm7,zmm4
  a2ea89:	62 f1 7c 48 28 e6    	vmovaps zmm4,zmm6
  a2ea8f:	62 f2 65 48 a8 e0    	vfmadd213ps zmm4,zmm3,zmm0
  a2ea95:	62 f1 3c 48 5c fd    	vsubps zmm7,zmm8,zmm5
  a2ea9b:	62 f1 3c 48 58 ed    	vaddps zmm5,zmm8,zmm5
  a2eaa1:	62 51 24 48 5c c2    	vsubps zmm8,zmm11,zmm10
  a2eaa7:	62 51 24 48 58 d2    	vaddps zmm10,zmm11,zmm10
  a2eaad:	62 72 7d 48 18 1d a1 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff646ca1]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a2eab4:	6c 64 ff 
  a2eab7:	62 51 14 48 5c e6    	vsubps zmm12,zmm13,zmm14
  a2eabd:	62 51 44 48 59 eb    	vmulps zmm13,zmm7,zmm11
  a2eac3:	62 51 04 48 5c c9    	vsubps zmm9,zmm15,zmm9
  a2eac9:	62 72 7d 48 18 35 cd 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff6468cd]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a2ead0:	68 64 ff 
  a2ead3:	62 52 3d 48 b8 ee    	vfmadd231ps zmm13,zmm8,zmm14
  a2ead9:	62 51 3c 48 59 c3    	vmulps zmm8,zmm8,zmm11
  a2eadf:	62 72 0d 48 bc c7    	vfnmadd231ps zmm8,zmm14,zmm7
  a2eae5:	62 d1 34 48 59 fb    	vmulps zmm7,zmm9,zmm11
  a2eaeb:	62 d2 1d 48 b8 fe    	vfmadd231ps zmm7,zmm12,zmm14
  a2eaf1:	62 51 1c 48 59 db    	vmulps zmm11,zmm12,zmm11
  a2eaf7:	62 72 7d 48 18 25 43 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff646b43]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a2eafe:	6b 64 ff 
  a2eb01:	62 d2 6d 48 bc e4    	vfnmadd231ps zmm4,zmm2,zmm12
  a2eb07:	62 52 35 48 bc de    	vfnmadd231ps zmm11,zmm9,zmm14
  a2eb0d:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a2eb13:	62 72 2d 48 a8 c9    	vfmadd213ps zmm9,zmm10,zmm1
  a2eb19:	62 52 55 48 bc cc    	vfnmadd231ps zmm9,zmm5,zmm12
  a2eb1f:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a2eb25:	62 72 65 48 ac f0    	vfnmadd213ps zmm14,zmm3,zmm0
  a2eb2b:	62 72 6d 48 b8 f6    	vfmadd231ps zmm14,zmm2,zmm6
  a2eb31:	62 72 2d 48 ac e1    	vfnmadd213ps zmm12,zmm10,zmm1
  a2eb37:	62 72 55 48 b8 e6    	vfmadd231ps zmm12,zmm5,zmm6
  a2eb3d:	62 d1 0c 48 58 f0    	vaddps zmm6,zmm14,zmm8
  a2eb43:	62 51 0c 48 5c c0    	vsubps zmm8,zmm14,zmm8
  a2eb49:	62 51 1c 48 5c f3    	vsubps zmm14,zmm12,zmm11
  a2eb4f:	62 51 1c 48 58 db    	vaddps zmm11,zmm12,zmm11
  a2eb55:	62 51 5c 48 58 e5    	vaddps zmm12,zmm4,zmm13
  a2eb5b:	62 d1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm13
  a2eb61:	62 71 34 48 5c ef    	vsubps zmm13,zmm9,zmm7
  a2eb67:	62 f1 34 48 58 ff    	vaddps zmm7,zmm9,zmm7
  a2eb6d:	62 f1 64 48 58 c0    	vaddps zmm0,zmm3,zmm0
  a2eb73:	62 f1 7c 48 58 c2    	vaddps zmm0,zmm0,zmm2
  a2eb79:	62 d1 74 48 58 ca    	vaddps zmm1,zmm1,zmm10
  a2eb7f:	62 f1 74 48 58 cd    	vaddps zmm1,zmm1,zmm5
  a2eb85:	62 f1 7c 48 28 15 f1 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff661df1]        # 90980 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1de30>
  a2eb8c:	1d 66 ff 
  a2eb8f:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a2eb95:	62 f2 6d 48 7f d8    	vpermt2ps zmm3,zmm2,zmm0
  a2eb9b:	62 f1 7c 48 28 2d 1b 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff661e1b]        # 909c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1de70>
  a2eba2:	1e 66 ff 
  a2eba5:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a2ebab:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a2ebb1:	62 f2 6d 48 7f c4    	vpermt2ps zmm0,zmm2,zmm4
  a2ebb7:	62 f2 55 48 7f fc    	vpermt2ps zmm7,zmm5,zmm4
  a2ebbd:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a2ebc3:	62 d2 6d 48 7f e0    	vpermt2ps zmm4,zmm2,zmm8
  a2ebc9:	62 52 55 48 7f d8    	vpermt2ps zmm11,zmm5,zmm8
  a2ebcf:	62 51 7c 48 28 c6    	vmovaps zmm8,zmm14
  a2ebd5:	62 72 6d 48 7f c6    	vpermt2ps zmm8,zmm2,zmm6
  a2ebdb:	62 72 55 48 7f f6    	vpermt2ps zmm14,zmm5,zmm6
  a2ebe1:	62 d2 15 48 77 d4    	vpermi2ps zmm2,zmm13,zmm12
  a2ebe7:	62 52 55 48 7f ec    	vpermt2ps zmm13,zmm5,zmm12
  a2ebed:	62 f1 7c 48 11 0e    	vmovups ZMMWORD PTR [rsi],zmm1
  a2ebf3:	62 f1 7c 48 11 5e 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm3
  a2ebfa:	62 f1 7c 48 11 7e 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm7
  a2ec01:	62 f1 7c 48 11 46 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm0
  a2ec08:	62 71 7c 48 11 5e 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm11
  a2ec0f:	62 f1 7c 48 11 66 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm4
  a2ec16:	62 71 7c 48 11 76 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm14
  a2ec1d:	62 71 7c 48 11 46 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm8
  a2ec24:	62 71 7c 48 11 6e 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm13
  a2ec2b:	62 f1 7c 48 11 56 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm2
  a2ec32:	48 89 ec             	mov    rsp,rbp
  a2ec35:	5d                   	pop    rbp
  a2ec36:	c5 f8 77             	vzeroupper
  a2ec39:	c3                   	ret
