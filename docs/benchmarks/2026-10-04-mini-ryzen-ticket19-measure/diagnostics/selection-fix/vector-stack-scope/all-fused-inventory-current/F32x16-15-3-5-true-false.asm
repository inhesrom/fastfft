
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a02000 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a02000:	c5 fb 10 47 20       	vmovsd xmm0,QWORD PTR [rdi+0x20]
  a02005:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a02009:	c5 fc 10 57 28       	vmovups ymm2,YMMWORD PTR [rdi+0x28]
  a0200e:	c5 fc 10 5f 50       	vmovups ymm3,YMMWORD PTR [rdi+0x50]
  a02013:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a0201a:	62 f1 7c 48 28 25 dc 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff68bedc]        # 8df00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b3b0>
  a02021:	be 68 ff 
  a02024:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a02028:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a0202e:	62 f2 5d 48 7f f1    	vpermt2ps zmm6,zmm4,zmm1
  a02034:	62 f1 7c 48 28 2d 02 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff68bf02]        # 8df40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b3f0>
  a0203b:	bf 68 ff 
  a0203e:	62 f2 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm1
  a02044:	c5 fb 10 7f 48       	vmovsd xmm7,QWORD PTR [rdi+0x48]
  a02049:	62 f3 ed 48 1a ff 01 	vinsertf64x4 zmm7,zmm2,ymm7,0x1
  a02050:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a02056:	62 72 5d 48 7f c1    	vpermt2ps zmm8,zmm4,zmm1
  a0205c:	62 f2 55 48 7f f9    	vpermt2ps zmm7,zmm5,zmm1
  a02062:	c5 fb 10 57 70       	vmovsd xmm2,QWORD PTR [rdi+0x70]
  a02067:	62 f3 e5 48 1a da 01 	vinsertf64x4 zmm3,zmm3,ymm2,0x1
  a0206e:	62 f2 65 48 77 e1    	vpermi2ps zmm4,zmm3,zmm1
  a02074:	62 f2 55 48 7f d9    	vpermt2ps zmm3,zmm5,zmm1
  a0207a:	62 f1 44 48 58 eb    	vaddps zmm5,zmm7,zmm3
  a02080:	62 71 7c 48 58 cd    	vaddps zmm9,zmm0,zmm5
  a02086:	62 71 3c 48 58 d4    	vaddps zmm10,zmm8,zmm4
  a0208c:	62 d1 4c 48 58 d2    	vaddps zmm2,zmm6,zmm10
  a02092:	62 72 7d 48 18 1d c4 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff6733c4]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a02099:	33 67 ff 
  a0209c:	62 f2 25 48 bc c5    	vfnmadd231ps zmm0,zmm11,zmm5
  a020a2:	62 f1 3c 48 5c e4    	vsubps zmm4,zmm8,zmm4
  a020a8:	62 72 7d 48 18 05 22 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff673222]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a020af:	32 67 ff 
  a020b2:	62 d1 5c 48 59 e0    	vmulps zmm4,zmm4,zmm8
  a020b8:	62 f1 7c 48 58 ec    	vaddps zmm5,zmm0,zmm4
  a020be:	62 d2 2d 48 bc f3    	vfnmadd231ps zmm6,zmm10,zmm11
  a020c4:	62 f1 44 48 5c db    	vsubps zmm3,zmm7,zmm3
  a020ca:	62 d1 64 48 59 f8    	vmulps zmm7,zmm3,zmm8
  a020d0:	62 f1 4c 48 5c df    	vsubps zmm3,zmm6,zmm7
  a020d6:	62 f1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm4
  a020dc:	62 f1 44 48 58 e6    	vaddps zmm4,zmm7,zmm6
  a020e2:	62 f1 7c 48 28 3d 94 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6c4e94]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a020e9:	4e 6c ff 
  a020ec:	62 72 45 48 7f c9    	vpermt2ps zmm9,zmm7,zmm1
  a020f2:	62 f2 45 48 7f e9    	vpermt2ps zmm5,zmm7,zmm1
  a020f8:	62 f2 45 48 7f c1    	vpermt2ps zmm0,zmm7,zmm1
  a020fe:	c4 41 38 57 c0       	vxorps xmm8,xmm8,xmm8
  a02103:	62 52 45 48 7f c0    	vpermt2ps zmm8,zmm7,zmm8
  a02109:	62 f1 7c 48 28 35 ed 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6c4ded]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a02110:	4d 6c ff 
  a02113:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a02119:	62 52 4d 48 7f d0    	vpermt2ps zmm10,zmm6,zmm8
  a0211f:	62 71 7c 48 28 1d 17 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6c4e17]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a02126:	4e 6c ff 
  a02129:	62 52 25 48 7f c8    	vpermt2ps zmm9,zmm11,zmm8
  a0212f:	62 71 7c 48 28 e5    	vmovaps zmm12,zmm5
  a02135:	62 52 4d 48 7f e0    	vpermt2ps zmm12,zmm6,zmm8
  a0213b:	62 d2 25 48 7f e8    	vpermt2ps zmm5,zmm11,zmm8
  a02141:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a02147:	62 52 4d 48 7f e8    	vpermt2ps zmm13,zmm6,zmm8
  a0214d:	62 d2 25 48 7f c0    	vpermt2ps zmm0,zmm11,zmm8
  a02153:	62 f1 b5 48 14 c0    	vunpcklpd zmm0,zmm9,zmm0
  a02159:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a0215f:	62 52 4d 48 7f c8    	vpermt2ps zmm9,zmm6,zmm8
  a02165:	62 f2 45 48 7f d1    	vpermt2ps zmm2,zmm7,zmm1
  a0216b:	62 f2 45 48 7f d9    	vpermt2ps zmm3,zmm7,zmm1
  a02171:	62 f2 45 48 7f e1    	vpermt2ps zmm4,zmm7,zmm1
  a02177:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a0217d:	62 d2 4d 48 7f f8    	vpermt2ps zmm7,zmm6,zmm8
  a02183:	62 d2 25 48 7f d0    	vpermt2ps zmm2,zmm11,zmm8
  a02189:	62 71 7c 48 28 f3    	vmovaps zmm14,zmm3
  a0218f:	62 52 4d 48 7f f0    	vpermt2ps zmm14,zmm6,zmm8
  a02195:	62 d2 25 48 7f d8    	vpermt2ps zmm3,zmm11,zmm8
  a0219b:	62 d2 5d 48 77 f0    	vpermi2ps zmm6,zmm4,zmm8
  a021a1:	62 d2 25 48 7f e0    	vpermt2ps zmm4,zmm11,zmm8
  a021a7:	62 52 25 48 7f c0    	vpermt2ps zmm8,zmm11,zmm8
  a021ad:	62 51 ad 48 14 dd    	vunpcklpd zmm11,zmm10,zmm13
  a021b3:	62 51 ad 48 15 d5    	vunpckhpd zmm10,zmm10,zmm13
  a021b9:	62 51 9d 48 14 e9    	vunpcklpd zmm13,zmm12,zmm9
  a021bf:	62 51 9d 48 15 e1    	vunpckhpd zmm12,zmm12,zmm9
  a021c5:	62 d1 d5 48 14 e8    	vunpcklpd zmm5,zmm5,zmm8
  a021cb:	62 71 7c 48 28 3d 2b 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6c4c2b]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a021d2:	4c 6c ff 
  a021d5:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a021db:	62 d2 05 48 7f cd    	vpermt2ps zmm1,zmm15,zmm13
  a021e1:	62 e1 7c 48 28 05 55 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6c4c55]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a021e8:	4c 6c ff 
  a021eb:	62 52 7d 40 7f dd    	vpermt2ps zmm11,zmm16,zmm13
  a021f1:	62 51 7c 48 28 ea    	vmovaps zmm13,zmm10
  a021f7:	62 52 05 48 7f ec    	vpermt2ps zmm13,zmm15,zmm12
  a021fd:	62 52 7d 40 7f d4    	vpermt2ps zmm10,zmm16,zmm12
  a02203:	62 f2 05 48 7f c5    	vpermt2ps zmm0,zmm15,zmm5
  a02209:	62 f1 ed 48 14 e4    	vunpcklpd zmm4,zmm2,zmm4
  a0220f:	62 f1 c5 48 14 ee    	vunpcklpd zmm5,zmm7,zmm6
  a02215:	62 f1 c5 48 15 f6    	vunpckhpd zmm6,zmm7,zmm6
  a0221b:	62 d1 8d 48 14 f9    	vunpcklpd zmm7,zmm14,zmm9
  a02221:	62 51 8d 48 15 c9    	vunpckhpd zmm9,zmm14,zmm9
  a02227:	62 d1 e5 48 14 d8    	vunpcklpd zmm3,zmm3,zmm8
  a0222d:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a02233:	62 f2 05 48 7f d7    	vpermt2ps zmm2,zmm15,zmm7
  a02239:	62 f2 7d 40 7f ef    	vpermt2ps zmm5,zmm16,zmm7
  a0223f:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a02245:	62 d2 05 48 7f f9    	vpermt2ps zmm7,zmm15,zmm9
  a0224b:	62 d2 7d 40 7f f1    	vpermt2ps zmm6,zmm16,zmm9
  a02251:	62 f2 05 48 7f e3    	vpermt2ps zmm4,zmm15,zmm3
  a02257:	62 f1 7c 48 10 5a 02 	vmovups zmm3,ZMMWORD PTR [rdx+0x80]
  a0225e:	62 71 7c 48 10 42 03 	vmovups zmm8,ZMMWORD PTR [rdx+0xc0]
  a02265:	62 71 7c 48 10 4a 04 	vmovups zmm9,ZMMWORD PTR [rdx+0x100]
  a0226c:	62 71 7c 48 10 62 05 	vmovups zmm12,ZMMWORD PTR [rdx+0x140]
  a02273:	62 71 7c 48 10 72 06 	vmovups zmm14,ZMMWORD PTR [rdx+0x180]
  a0227a:	62 71 7c 48 10 7a 07 	vmovups zmm15,ZMMWORD PTR [rdx+0x1c0]
  a02281:	62 e1 7c 48 10 42 08 	vmovups zmm16,ZMMWORD PTR [rdx+0x200]
  a02288:	62 e1 7c 48 10 4a 09 	vmovups zmm17,ZMMWORD PTR [rdx+0x240]
  a0228f:	62 e1 24 48 59 d3    	vmulps zmm18,zmm11,zmm3
  a02295:	62 c2 55 48 bc d0    	vfnmadd231ps zmm18,zmm5,zmm8
  a0229b:	62 a1 7c 48 59 d8    	vmulps zmm19,zmm0,zmm16
  a022a1:	62 a2 5d 48 bc d9    	vfnmadd231ps zmm19,zmm4,zmm17
  a022a7:	62 a1 6c 40 58 e3    	vaddps zmm20,zmm18,zmm19
  a022ad:	62 c1 14 48 59 e9    	vmulps zmm21,zmm13,zmm9
  a022b3:	62 c2 45 48 bc ec    	vfnmadd231ps zmm21,zmm7,zmm12
  a022b9:	62 c1 2c 48 59 f6    	vmulps zmm22,zmm10,zmm14
  a022bf:	62 c2 4d 48 bc f7    	vfnmadd231ps zmm22,zmm6,zmm15
  a022c5:	62 a1 54 40 58 fe    	vaddps zmm23,zmm21,zmm22
  a022cb:	62 f1 54 48 59 db    	vmulps zmm3,zmm5,zmm3
  a022d1:	62 d2 3d 48 b8 db    	vfmadd231ps zmm3,zmm8,zmm11
  a022d7:	62 b1 5c 48 59 e8    	vmulps zmm5,zmm4,zmm16
  a022dd:	62 f2 75 40 b8 e8    	vfmadd231ps zmm5,zmm17,zmm0
  a022e3:	62 71 64 48 58 c5    	vaddps zmm8,zmm3,zmm5
  a022e9:	62 d1 44 48 59 f9    	vmulps zmm7,zmm7,zmm9
  a022ef:	62 d2 1d 48 b8 fd    	vfmadd231ps zmm7,zmm12,zmm13
  a022f5:	62 d1 4c 48 59 f6    	vmulps zmm6,zmm6,zmm14
  a022fb:	62 d2 05 48 b8 f2    	vfmadd231ps zmm6,zmm15,zmm10
  a02301:	62 71 44 48 58 ce    	vaddps zmm9,zmm7,zmm6
  a02307:	62 72 7d 48 18 15 d7 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff6733d7]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a0230e:	33 67 ff 
  a02311:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a02317:	62 f2 5d 40 a8 c1    	vfmadd213ps zmm0,zmm20,zmm1
  a0231d:	62 f2 7d 48 18 25 1d 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff67331d]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a02324:	33 67 ff 
  a02327:	62 f2 45 40 bc c4    	vfnmadd231ps zmm0,zmm23,zmm4
  a0232d:	62 71 64 48 5c dd    	vsubps zmm11,zmm3,zmm5
  a02333:	62 f1 44 48 5c fe    	vsubps zmm7,zmm7,zmm6
  a02339:	62 72 7d 48 18 25 15 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff673415]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a02340:	34 67 ff 
  a02343:	62 d1 44 48 59 dc    	vmulps zmm3,zmm7,zmm12
  a02349:	62 72 7d 48 18 2d 4d 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff67304d]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a02350:	30 67 ff 
  a02353:	62 d2 25 48 b8 dd    	vfmadd231ps zmm3,zmm11,zmm13
  a02359:	62 d1 7c 48 28 ea    	vmovaps zmm5,zmm10
  a0235f:	62 f2 3d 48 a8 ea    	vfmadd213ps zmm5,zmm8,zmm2
  a02365:	62 f2 35 48 bc ec    	vfnmadd231ps zmm5,zmm9,zmm4
  a0236b:	62 31 6c 40 5c f3    	vsubps zmm14,zmm18,zmm19
  a02371:	62 31 54 40 5c fe    	vsubps zmm15,zmm21,zmm22
  a02377:	62 d1 04 48 59 f4    	vmulps zmm6,zmm15,zmm12
  a0237d:	62 d2 0d 48 b8 f5    	vfmadd231ps zmm6,zmm14,zmm13
  a02383:	62 e1 7c 48 28 c4    	vmovaps zmm16,zmm4
  a02389:	62 e2 5d 40 ac c1    	vfnmadd213ps zmm16,zmm20,zmm1
  a0238f:	62 c2 45 40 b8 c2    	vfmadd231ps zmm16,zmm23,zmm10
  a02395:	62 51 24 48 59 dc    	vmulps zmm11,zmm11,zmm12
  a0239b:	62 72 15 48 bc df    	vfnmadd231ps zmm11,zmm13,zmm7
  a023a1:	62 f2 3d 48 ac e2    	vfnmadd213ps zmm4,zmm8,zmm2
  a023a7:	62 d2 35 48 b8 e2    	vfmadd231ps zmm4,zmm9,zmm10
  a023ad:	62 d1 0c 48 59 fc    	vmulps zmm7,zmm14,zmm12
  a023b3:	62 d2 05 48 bc fd    	vfnmadd231ps zmm7,zmm15,zmm13
  a023b9:	62 b1 74 28 58 cc    	vaddps ymm1,ymm1,ymm20
  a023bf:	62 b1 74 28 58 cf    	vaddps ymm1,ymm1,ymm23
  a023c5:	c5 b8 58 d2          	vaddps xmm2,xmm8,xmm2
  a023c9:	c5 b0 58 d2          	vaddps xmm2,xmm9,xmm2
  a023cd:	c5 7c 28 05 eb 5e 67 	vmovaps ymm8,YMMWORD PTR [rip+0xffffffffff675eeb]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a023d4:	ff 
  a023d5:	62 f2 3d 28 7f d1    	vpermt2ps ymm2,ymm8,ymm1
  a023db:	c5 f8 11 16          	vmovups XMMWORD PTR [rsi],xmm2
  a023df:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  a023e5:	c5 f8 13 4e 10       	vmovlps QWORD PTR [rsi+0x10],xmm1
  a023ea:	c5 fc 58 cb          	vaddps ymm1,ymm0,ymm3
  a023ee:	c5 d0 5c d6          	vsubps xmm2,xmm5,xmm6
  a023f2:	62 f2 3d 28 7f d1    	vpermt2ps ymm2,ymm8,ymm1
  a023f8:	c5 f8 11 56 18       	vmovups XMMWORD PTR [rsi+0x18],xmm2
  a023fd:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  a02403:	c5 f8 13 4e 28       	vmovlps QWORD PTR [rsi+0x28],xmm1
  a02408:	62 d1 7c 20 58 cb    	vaddps ymm1,ymm16,ymm11
  a0240e:	c5 d8 5c d7          	vsubps xmm2,xmm4,xmm7
  a02412:	62 f2 3d 28 7f d1    	vpermt2ps ymm2,ymm8,ymm1
  a02418:	c5 f8 11 56 30       	vmovups XMMWORD PTR [rsi+0x30],xmm2
  a0241d:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  a02423:	c5 f8 13 4e 40       	vmovlps QWORD PTR [rsi+0x40],xmm1
  a02428:	62 d1 7c 20 5c cb    	vsubps ymm1,ymm16,ymm11
  a0242e:	c5 d8 58 d7          	vaddps xmm2,xmm4,xmm7
  a02432:	62 f2 3d 28 7f d1    	vpermt2ps ymm2,ymm8,ymm1
  a02438:	c5 f8 11 56 48       	vmovups XMMWORD PTR [rsi+0x48],xmm2
  a0243d:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  a02443:	c5 f8 13 4e 58       	vmovlps QWORD PTR [rsi+0x58],xmm1
  a02448:	c5 fc 5c c3          	vsubps ymm0,ymm0,ymm3
  a0244c:	c5 d0 58 ce          	vaddps xmm1,xmm5,xmm6
  a02450:	62 f2 3d 28 7f c8    	vpermt2ps ymm1,ymm8,ymm0
  a02456:	c5 f8 11 4e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm1
  a0245b:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  a02461:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  a02466:	c5 f8 77             	vzeroupper
  a02469:	c3                   	ret
