
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000073d080 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  73d080:	48 83 ec 28          	sub    rsp,0x28
  73d084:	c5 fc 10 27          	vmovups ymm4,YMMWORD PTR [rdi]
  73d088:	c5 f8 10 6f 20       	vmovups xmm5,XMMWORD PTR [rdi+0x20]
  73d08d:	c5 7c 10 4f 30       	vmovups ymm9,YMMWORD PTR [rdi+0x30]
  73d092:	c5 f8 10 57 50       	vmovups xmm2,XMMWORD PTR [rdi+0x50]
  73d097:	c5 fc 10 77 60       	vmovups ymm6,YMMWORD PTR [rdi+0x60]
  73d09c:	c5 f8 10 bf 80 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0x80]
  73d0a3:	00 
  73d0a4:	c5 7c 10 97 90 00 00 	vmovups ymm10,YMMWORD PTR [rdi+0x90]
  73d0ab:	00 
  73d0ac:	c5 78 10 a7 b0 00 00 	vmovups xmm12,XMMWORD PTR [rdi+0xb0]
  73d0b3:	00 
  73d0b4:	c5 7c 10 af c0 00 00 	vmovups ymm13,YMMWORD PTR [rdi+0xc0]
  73d0bb:	00 
  73d0bc:	c5 78 10 b7 e0 00 00 	vmovups xmm14,XMMWORD PTR [rdi+0xe0]
  73d0c3:	00 
  73d0c4:	c5 7c 10 bf f0 00 00 	vmovups ymm15,YMMWORD PTR [rdi+0xf0]
  73d0cb:	00 
  73d0cc:	c5 f8 10 8f 10 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x110]
  73d0d3:	00 
  73d0d4:	c5 dc c6 dd dd       	vshufps ymm3,ymm4,ymm5,0xdd
  73d0d9:	c4 e3 fd 01 c3 d8    	vpermpd ymm0,ymm3,0xd8
  73d0df:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  73d0e5:	c5 cc c6 df dd       	vshufps ymm3,ymm6,ymm7,0xdd
  73d0ea:	c4 e3 fd 01 c3 d8    	vpermpd ymm0,ymm3,0xd8
  73d0f0:	c5 fc 11 04 24       	vmovups YMMWORD PTR [rsp],ymm0
  73d0f5:	c4 c1 14 c6 de dd    	vshufps ymm3,ymm13,ymm14,0xdd
  73d0fb:	c4 e3 fd 01 c3 d8    	vpermpd ymm0,ymm3,0xd8
  73d101:	c5 fc 11 44 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm0
  73d107:	c4 41 2c c6 c4 dd    	vshufps ymm8,ymm10,ymm12,0xdd
  73d10d:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  73d113:	c5 5c c6 dd 88       	vshufps ymm11,ymm4,ymm5,0x88
  73d118:	c5 84 c6 e1 dd       	vshufps ymm4,ymm15,ymm1,0xdd
  73d11d:	c4 e3 fd 01 dc d8    	vpermpd ymm3,ymm4,0xd8
  73d123:	c5 fc 11 5c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm3
  73d129:	c5 cc c6 f7 88       	vshufps ymm6,ymm6,ymm7,0x88
  73d12e:	c5 b4 c6 ea dd       	vshufps ymm5,ymm9,ymm2,0xdd
  73d133:	c4 e3 fd 01 c5 d8    	vpermpd ymm0,ymm5,0xd8
  73d139:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  73d13f:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  73d145:	c4 e3 fd 01 e6 d8    	vpermpd ymm4,ymm6,0xd8
  73d14b:	c4 c1 14 c6 f6 88    	vshufps ymm6,ymm13,ymm14,0x88
  73d151:	c4 63 fd 01 f6 d8    	vpermpd ymm14,ymm6,0xd8
  73d157:	c4 c1 2c c6 f4 88    	vshufps ymm6,ymm10,ymm12,0x88
  73d15d:	c4 63 fd 01 d6 d8    	vpermpd ymm10,ymm6,0xd8
  73d163:	c5 84 c6 c9 88       	vshufps ymm1,ymm15,ymm1,0x88
  73d168:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  73d16e:	c5 b4 c6 d2 88       	vshufps ymm2,ymm9,ymm2,0x88
  73d173:	c4 63 fd 01 e2 d8    	vpermpd ymm12,ymm2,0xd8
  73d179:	c5 7c 10 0c 24       	vmovups ymm9,YMMWORD PTR [rsp]
  73d17e:	c5 fc 10 6c 24 e0    	vmovups ymm5,YMMWORD PTR [rsp-0x20]
  73d184:	c5 b4 58 fd          	vaddps ymm7,ymm9,ymm5
  73d188:	c5 7c 10 6c 24 a0    	vmovups ymm13,YMMWORD PTR [rsp-0x60]
  73d18e:	c5 94 58 d7          	vaddps ymm2,ymm13,ymm7
  73d192:	c5 e4 58 f0          	vaddps ymm6,ymm3,ymm0
  73d196:	c4 e2 7d 18 05 c1 82 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9382c1]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  73d19d:	93 ff 
  73d19f:	c4 c2 7d ac fd       	vfnmadd213ps ymm7,ymm0,ymm13
  73d1a4:	c5 0c 58 ec          	vaddps ymm13,ymm14,ymm4
  73d1a8:	c4 41 5c 5c f6       	vsubps ymm14,ymm4,ymm14
  73d1ad:	c5 bc 58 de          	vaddps ymm3,ymm8,ymm6
  73d1b1:	c5 fc 11 5c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm3
  73d1b7:	c4 c2 7d ac f0       	vfnmadd213ps ymm6,ymm0,ymm8
  73d1bc:	c5 1c 58 c1          	vaddps ymm8,ymm12,ymm1
  73d1c0:	c4 41 74 5c fc       	vsubps ymm15,ymm1,ymm12
  73d1c5:	c4 c1 14 58 cb       	vaddps ymm1,ymm13,ymm11
  73d1ca:	c4 42 7d ac eb       	vfnmadd213ps ymm13,ymm0,ymm11
  73d1cf:	c5 6c 58 e3          	vaddps ymm12,ymm2,ymm3
  73d1d3:	c5 b4 5c dd          	vsubps ymm3,ymm9,ymm5
  73d1d7:	c4 41 3c 58 da       	vaddps ymm11,ymm8,ymm10
  73d1dc:	c4 42 7d ac c2       	vfnmadd213ps ymm8,ymm0,ymm10
  73d1e1:	c4 e2 7d 18 05 ea 80 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9380ea]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  73d1e8:	93 ff 
  73d1ea:	c5 0c 59 d0          	vmulps ymm10,ymm14,ymm0
  73d1ee:	c5 fc 10 64 24 c0    	vmovups ymm4,YMMWORD PTR [rsp-0x40]
  73d1f4:	c5 dc 5c 64 24 80    	vsubps ymm4,ymm4,YMMWORD PTR [rsp-0x80]
  73d1fa:	c5 ac 58 ef          	vaddps ymm5,ymm10,ymm7
  73d1fe:	c5 04 59 f0          	vmulps ymm14,ymm15,ymm0
  73d202:	c4 41 44 5c d2       	vsubps ymm10,ymm7,ymm10
  73d207:	c5 0c 58 fe          	vaddps ymm15,ymm14,ymm6
  73d20b:	c5 e4 59 d8          	vmulps ymm3,ymm3,ymm0
  73d20f:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  73d213:	c4 41 4c 5c f6       	vsubps ymm14,ymm6,ymm14
  73d218:	c5 94 5c c3          	vsubps ymm0,ymm13,ymm3
  73d21c:	c5 dc 59 e7          	vmulps ymm4,ymm4,ymm7
  73d220:	c5 94 58 db          	vaddps ymm3,ymm13,ymm3
  73d224:	c5 3c 5c ec          	vsubps ymm13,ymm8,ymm4
  73d228:	c5 bc 58 fc          	vaddps ymm7,ymm8,ymm4
  73d22c:	c5 a4 58 e1          	vaddps ymm4,ymm11,ymm1
  73d230:	c5 ec 5c 74 24 a0    	vsubps ymm6,ymm2,YMMWORD PTR [rsp-0x60]
  73d236:	c4 c1 54 5c d7       	vsubps ymm2,ymm5,ymm15
  73d23b:	c4 c1 74 5c cb       	vsubps ymm1,ymm1,ymm11
  73d240:	c4 41 7c 5c c5       	vsubps ymm8,ymm0,ymm13
  73d245:	c5 84 58 ed          	vaddps ymm5,ymm15,ymm5
  73d249:	c4 41 2c 58 fe       	vaddps ymm15,ymm10,ymm14
  73d24e:	c5 94 58 c0          	vaddps ymm0,ymm13,ymm0
  73d252:	c5 64 58 df          	vaddps ymm11,ymm3,ymm7
  73d256:	c4 41 2c 5c ce       	vsubps ymm9,ymm10,ymm14
  73d25b:	c5 64 5c ef          	vsubps ymm13,ymm3,ymm7
  73d25f:	c4 e3 1d 18 fd 01    	vinsertf128 ymm7,ymm12,xmm5,0x1
  73d265:	c4 e3 1d 06 dd 31    	vperm2f128 ymm3,ymm12,ymm5,0x31
  73d26b:	c4 c3 6d 18 e9 01    	vinsertf128 ymm5,ymm2,xmm9,0x1
  73d271:	c4 c3 6d 06 d1 31    	vperm2f128 ymm2,ymm2,ymm9,0x31
  73d277:	c5 64 14 e2          	vunpcklps ymm12,ymm3,ymm2
  73d27b:	c4 41 78 28 cf       	vmovaps xmm9,xmm15
  73d280:	c5 78 28 d6          	vmovaps xmm10,xmm6
  73d284:	c5 c4 14 dd          	vunpcklps ymm3,ymm7,ymm5
  73d288:	c4 41 34 14 f2       	vunpcklps ymm14,ymm9,ymm10
  73d28d:	c4 c1 65 14 d6       	vunpcklpd ymm2,ymm3,ymm14
  73d292:	c5 fc 11 54 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm2
  73d298:	c4 c1 65 15 de       	vunpckhpd ymm3,ymm3,ymm14
  73d29d:	c5 c4 15 ed          	vunpckhps ymm5,ymm7,ymm5
  73d2a1:	c4 c1 34 15 fa       	vunpckhps ymm7,ymm9,ymm10
  73d2a6:	c5 55 14 cf          	vunpcklpd ymm9,ymm5,ymm7
  73d2aa:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  73d2ae:	c4 63 7d 19 ff 01    	vextractf128 xmm7,ymm15,0x1
  73d2b4:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  73d2ba:	c5 c4 14 f6          	vunpcklps ymm6,ymm7,ymm6
  73d2be:	c5 1d 14 d6          	vunpcklpd ymm10,ymm12,ymm6
  73d2c2:	c5 9d 15 f6          	vunpckhpd ymm6,ymm12,ymm6
  73d2c6:	c4 e3 5d 18 f8 01    	vinsertf128 ymm7,ymm4,xmm0,0x1
  73d2cc:	c4 e3 5d 06 c0 31    	vperm2f128 ymm0,ymm4,ymm0,0x31
  73d2d2:	c4 43 3d 18 e5 01    	vinsertf128 ymm12,ymm8,xmm13,0x1
  73d2d8:	c4 c3 3d 06 e5 31    	vperm2f128 ymm4,ymm8,ymm13,0x31
  73d2de:	c5 fc 14 c4          	vunpcklps ymm0,ymm0,ymm4
  73d2e2:	c4 41 78 28 eb       	vmovaps xmm13,xmm11
  73d2e7:	c5 78 28 f1          	vmovaps xmm14,xmm1
  73d2eb:	c4 41 44 14 c4       	vunpcklps ymm8,ymm7,ymm12
  73d2f0:	c4 41 14 14 fe       	vunpcklps ymm15,ymm13,ymm14
  73d2f5:	c4 c1 3d 14 e7       	vunpcklpd ymm4,ymm8,ymm15
  73d2fa:	c4 41 3d 15 c7       	vunpckhpd ymm8,ymm8,ymm15
  73d2ff:	c4 c1 44 15 fc       	vunpckhps ymm7,ymm7,ymm12
  73d304:	c4 41 14 15 ee       	vunpckhps ymm13,ymm13,ymm14
  73d309:	c4 41 45 14 e5       	vunpcklpd ymm12,ymm7,ymm13
  73d30e:	c4 41 45 15 f5       	vunpckhpd ymm14,ymm7,ymm13
  73d313:	c4 63 7d 19 df 01    	vextractf128 xmm7,ymm11,0x1
  73d319:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  73d31f:	c5 c4 14 c9          	vunpcklps ymm1,ymm7,ymm1
  73d323:	c5 7d 14 e9          	vunpcklpd ymm13,ymm0,ymm1
  73d327:	c5 7d 15 f9          	vunpckhpd ymm15,ymm0,ymm1
  73d32b:	c5 fc 10 82 80 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0x80]
  73d332:	00 
  73d333:	c5 fc 10 8a a0 00 00 	vmovups ymm1,YMMWORD PTR [rdx+0xa0]
  73d33a:	00 
  73d33b:	c5 b4 59 f8          	vmulps ymm7,ymm9,ymm0
  73d33f:	c4 e2 1d bc f9       	vfnmadd231ps ymm7,ymm12,ymm1
  73d344:	c5 1c 59 d8          	vmulps ymm11,ymm12,ymm0
  73d348:	c4 62 35 b8 d9       	vfmadd231ps ymm11,ymm9,ymm1
  73d34d:	c5 fc 10 82 00 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x100]
  73d354:	00 
  73d355:	c5 fc 10 8a 20 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x120]
  73d35c:	00 
  73d35d:	c5 2c 59 e0          	vmulps ymm12,ymm10,ymm0
  73d361:	c4 62 15 bc e1       	vfnmadd231ps ymm12,ymm13,ymm1
  73d366:	c5 14 59 e8          	vmulps ymm13,ymm13,ymm0
  73d36a:	c4 62 2d b8 e9       	vfmadd231ps ymm13,ymm10,ymm1
  73d36f:	c5 fc 10 82 c0 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0xc0]
  73d376:	00 
  73d377:	c5 fc 10 8a e0 00 00 	vmovups ymm1,YMMWORD PTR [rdx+0xe0]
  73d37e:	00 
  73d37f:	c5 7c 59 d5          	vmulps ymm10,ymm0,ymm5
  73d383:	c4 62 0d bc d1       	vfnmadd231ps ymm10,ymm14,ymm1
  73d388:	c5 0c 59 c8          	vmulps ymm9,ymm14,ymm0
  73d38c:	c4 62 55 b8 c9       	vfmadd231ps ymm9,ymm5,ymm1
  73d391:	c5 fc 10 82 40 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x140]
  73d398:	00 
  73d399:	c5 fc 10 8a 60 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x160]
  73d3a0:	00 
  73d3a1:	c5 7c 59 f6          	vmulps ymm14,ymm0,ymm6
  73d3a5:	c4 62 05 bc f1       	vfnmadd231ps ymm14,ymm15,ymm1
  73d3aa:	c5 04 59 f8          	vmulps ymm15,ymm15,ymm0
  73d3ae:	c4 62 4d b8 f9       	vfmadd231ps ymm15,ymm6,ymm1
  73d3b3:	c5 fc 10 4a 40       	vmovups ymm1,YMMWORD PTR [rdx+0x40]
  73d3b8:	c5 fc 10 6a 60       	vmovups ymm5,YMMWORD PTR [rdx+0x60]
  73d3bd:	c5 f4 59 d3          	vmulps ymm2,ymm1,ymm3
  73d3c1:	c4 e2 3d bc d5       	vfnmadd231ps ymm2,ymm8,ymm5
  73d3c6:	c5 bc 59 c9          	vmulps ymm1,ymm8,ymm1
  73d3ca:	c4 e2 65 b8 cd       	vfmadd231ps ymm1,ymm3,ymm5
  73d3cf:	c5 9c 58 f7          	vaddps ymm6,ymm12,ymm7
  73d3d3:	c5 fc 10 44 24 80    	vmovups ymm0,YMMWORD PTR [rsp-0x80]
  73d3d9:	c5 cc 58 d8          	vaddps ymm3,ymm6,ymm0
  73d3dd:	c5 fc 11 5c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm3
  73d3e3:	c4 e2 7d 18 1d 74 80 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff938074]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  73d3ea:	93 ff 
  73d3ec:	c4 e2 65 ac f0       	vfnmadd213ps ymm6,ymm3,ymm0
  73d3f1:	c5 8c 58 ea          	vaddps ymm5,ymm14,ymm2
  73d3f5:	c5 ac 58 c5          	vaddps ymm0,ymm10,ymm5
  73d3f9:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  73d3ff:	c4 62 65 bc d5       	vfnmadd231ps ymm10,ymm3,ymm5
  73d404:	c4 c1 24 58 c5       	vaddps ymm0,ymm11,ymm13
  73d409:	c5 fc 58 ec          	vaddps ymm5,ymm0,ymm4
  73d40d:	c4 e2 65 ac c4       	vfnmadd213ps ymm0,ymm3,ymm4
  73d412:	c5 84 58 e1          	vaddps ymm4,ymm15,ymm1
  73d416:	c5 34 58 c4          	vaddps ymm8,ymm9,ymm4
  73d41a:	c4 e2 7d 18 1d 3d 80 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff93803d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  73d421:	93 ff 
  73d423:	c4 62 5d bc cb       	vfnmadd231ps ymm9,ymm4,ymm3
  73d428:	c4 c1 24 5c e5       	vsubps ymm4,ymm11,ymm13
  73d42d:	c5 84 5c c9          	vsubps ymm1,ymm15,ymm1
  73d431:	c4 c1 44 5c fc       	vsubps ymm7,ymm7,ymm12
  73d436:	c4 62 7d 18 2d 95 7e 	vbroadcastss ymm13,DWORD PTR [rip+0xffffffffff937e95]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  73d43d:	93 ff 
  73d43f:	c5 94 59 e4          	vmulps ymm4,ymm13,ymm4
  73d443:	c5 8c 5c d2          	vsubps ymm2,ymm14,ymm2
  73d447:	c5 4c 58 dc          	vaddps ymm11,ymm6,ymm4
  73d44b:	c5 94 59 c9          	vmulps ymm1,ymm13,ymm1
  73d44f:	c5 14 59 e7          	vmulps ymm12,ymm13,ymm7
  73d453:	c5 94 59 d2          	vmulps ymm2,ymm13,ymm2
  73d457:	c5 2c 58 e9          	vaddps ymm13,ymm10,ymm1
  73d45b:	c5 4c 5c f4          	vsubps ymm14,ymm6,ymm4
  73d45f:	c4 c1 24 5c fd       	vsubps ymm7,ymm11,ymm13
  73d464:	c5 ac 5c c9          	vsubps ymm1,ymm10,ymm1
  73d468:	c4 c1 7c 5c f4       	vsubps ymm6,ymm0,ymm12
  73d46d:	c5 1c 58 d0          	vaddps ymm10,ymm12,ymm0
  73d471:	c5 b4 5c c2          	vsubps ymm0,ymm9,ymm2
  73d475:	c5 b4 58 d2          	vaddps ymm2,ymm9,ymm2
  73d479:	c5 4c 5c e0          	vsubps ymm12,ymm6,ymm0
  73d47d:	c4 c1 24 58 e5       	vaddps ymm4,ymm11,ymm13
  73d482:	c5 0c 58 d9          	vaddps ymm11,ymm14,ymm1
  73d486:	c5 cc 58 f0          	vaddps ymm6,ymm6,ymm0
  73d48a:	c5 2c 58 ea          	vaddps ymm13,ymm10,ymm2
  73d48e:	c5 8c 5c c1          	vsubps ymm0,ymm14,ymm1
  73d492:	c5 7c 10 74 24 c0    	vmovups ymm14,YMMWORD PTR [rsp-0x40]
  73d498:	c5 fc 10 5c 24 80    	vmovups ymm3,YMMWORD PTR [rsp-0x80]
  73d49e:	c5 0c 5c cb          	vsubps ymm9,ymm14,ymm3
  73d4a2:	c5 ac 5c ca          	vsubps ymm1,ymm10,ymm2
  73d4a6:	c4 c1 54 5c d0       	vsubps ymm2,ymm5,ymm8
  73d4ab:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  73d4af:	c5 8c 58 db          	vaddps ymm3,ymm14,ymm3
  73d4b3:	c5 54 14 c3          	vunpcklps ymm8,ymm5,ymm3
  73d4b7:	c5 50 14 d3          	vunpcklps xmm10,xmm5,xmm3
  73d4bb:	c5 d0 15 db          	vunpckhps xmm3,xmm5,xmm3
  73d4bf:	c5 f8 11 5e 10       	vmovups XMMWORD PTR [rsi+0x10],xmm3
  73d4c4:	c5 78 11 16          	vmovups XMMWORD PTR [rsi],xmm10
  73d4c8:	c4 63 7d 19 46 20 01 	vextractf128 XMMWORD PTR [rsi+0x20],ymm8,0x1
  73d4cf:	c5 9c 14 df          	vunpcklps ymm3,ymm12,ymm7
  73d4d3:	c5 98 14 ef          	vunpcklps xmm5,xmm12,xmm7
  73d4d7:	c5 98 15 ff          	vunpckhps xmm7,xmm12,xmm7
  73d4db:	c5 f8 11 7e 40       	vmovups XMMWORD PTR [rsi+0x40],xmm7
  73d4e0:	c5 f8 11 6e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm5
  73d4e5:	c4 e3 7d 19 5e 50 01 	vextractf128 XMMWORD PTR [rsi+0x50],ymm3,0x1
  73d4ec:	c4 c1 14 14 db       	vunpcklps ymm3,ymm13,ymm11
  73d4f1:	c4 c1 10 14 eb       	vunpcklps xmm5,xmm13,xmm11
  73d4f6:	c4 c1 10 15 fb       	vunpckhps xmm7,xmm13,xmm11
  73d4fb:	c5 f8 11 7e 70       	vmovups XMMWORD PTR [rsi+0x70],xmm7
  73d500:	c5 f8 11 6e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm5
  73d505:	c4 e3 7d 19 9e 80 00 	vextractf128 XMMWORD PTR [rsi+0x80],ymm3,0x1
  73d50c:	00 00 01 
  73d50f:	c4 c1 6c 14 d9       	vunpcklps ymm3,ymm2,ymm9
  73d514:	c4 c1 68 14 e9       	vunpcklps xmm5,xmm2,xmm9
  73d519:	c4 c1 68 15 d1       	vunpckhps xmm2,xmm2,xmm9
  73d51e:	c5 f8 11 96 a0 00 00 	vmovups XMMWORD PTR [rsi+0xa0],xmm2
  73d525:	00 
  73d526:	c5 f8 11 ae 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm5
  73d52d:	00 
  73d52e:	c4 e3 7d 19 9e b0 00 	vextractf128 XMMWORD PTR [rsi+0xb0],ymm3,0x1
  73d535:	00 00 01 
  73d538:	c5 cc 14 d4          	vunpcklps ymm2,ymm6,ymm4
  73d53c:	c5 c8 14 dc          	vunpcklps xmm3,xmm6,xmm4
  73d540:	c5 c8 15 e4          	vunpckhps xmm4,xmm6,xmm4
  73d544:	c5 f8 11 a6 d0 00 00 	vmovups XMMWORD PTR [rsi+0xd0],xmm4
  73d54b:	00 
  73d54c:	c5 f8 11 9e c0 00 00 	vmovups XMMWORD PTR [rsi+0xc0],xmm3
  73d553:	00 
  73d554:	c4 e3 7d 19 96 e0 00 	vextractf128 XMMWORD PTR [rsi+0xe0],ymm2,0x1
  73d55b:	00 00 01 
  73d55e:	c5 f4 14 d0          	vunpcklps ymm2,ymm1,ymm0
  73d562:	c5 f0 14 d8          	vunpcklps xmm3,xmm1,xmm0
  73d566:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  73d56a:	c5 f8 11 86 00 01 00 	vmovups XMMWORD PTR [rsi+0x100],xmm0
  73d571:	00 
  73d572:	c5 f8 11 9e f0 00 00 	vmovups XMMWORD PTR [rsi+0xf0],xmm3
  73d579:	00 
  73d57a:	c4 e3 7d 19 96 10 01 	vextractf128 XMMWORD PTR [rsi+0x110],ymm2,0x1
  73d581:	00 00 01 
  73d584:	48 83 c4 28          	add    rsp,0x28
  73d588:	c5 f8 77             	vzeroupper
  73d58b:	c3                   	ret
