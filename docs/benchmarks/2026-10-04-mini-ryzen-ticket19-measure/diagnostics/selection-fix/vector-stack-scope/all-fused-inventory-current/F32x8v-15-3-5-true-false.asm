
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000acf100 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  acf100:	c5 fc 10 47 28       	vmovups ymm0,YMMWORD PTR [rdi+0x28]
  acf105:	c5 fb 10 4f 48       	vmovsd xmm1,QWORD PTR [rdi+0x48]
  acf10a:	c5 fc c6 d1 dd       	vshufps ymm2,ymm0,ymm1,0xdd
  acf10f:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  acf115:	c5 fc 10 5f 50       	vmovups ymm3,YMMWORD PTR [rdi+0x50]
  acf11a:	c5 fb 10 67 70       	vmovsd xmm4,QWORD PTR [rdi+0x70]
  acf11f:	c5 e4 c6 ec dd       	vshufps ymm5,ymm3,ymm4,0xdd
  acf124:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  acf12a:	c4 e2 7d 18 35 a1 61 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff5a61a1]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  acf131:	5a ff 
  acf133:	c5 ec 5c fd          	vsubps ymm7,ymm2,ymm5
  acf137:	c5 c4 59 fe          	vmulps ymm7,ymm7,ymm6
  acf13b:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  acf140:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  acf146:	c5 e4 c6 cc 88       	vshufps ymm1,ymm3,ymm4,0x88
  acf14b:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  acf151:	c5 fc 58 d9          	vaddps ymm3,ymm0,ymm1
  acf155:	c5 fc 10 27          	vmovups ymm4,YMMWORD PTR [rdi]
  acf159:	c5 7b 10 47 20       	vmovsd xmm8,QWORD PTR [rdi+0x20]
  acf15e:	c4 41 5c c6 c8 88    	vshufps ymm9,ymm4,ymm8,0x88
  acf164:	c4 62 7d 18 15 f3 62 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff5a62f3]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  acf16b:	5a ff 
  acf16d:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  acf173:	c4 41 7c 28 da       	vmovaps ymm11,ymm10
  acf178:	c4 42 65 ac d9       	vfnmadd213ps ymm11,ymm3,ymm9
  acf17d:	c5 24 58 e7          	vaddps ymm12,ymm11,ymm7
  acf181:	c5 ec 58 d5          	vaddps ymm2,ymm2,ymm5
  acf185:	c4 c1 5c c6 e0 dd    	vshufps ymm4,ymm4,ymm8,0xdd
  acf18b:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  acf191:	c4 62 6d ac d4       	vfnmadd213ps ymm10,ymm2,ymm4
  acf196:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  acf19a:	c5 fc 59 c6          	vmulps ymm0,ymm0,ymm6
  acf19e:	c5 ac 5c c8          	vsubps ymm1,ymm10,ymm0
  acf1a2:	c5 a4 5c ef          	vsubps ymm5,ymm11,ymm7
  acf1a6:	c5 ac 58 c0          	vaddps ymm0,ymm10,ymm0
  acf1aa:	c5 b4 58 f3          	vaddps ymm6,ymm9,ymm3
  acf1ae:	c5 dc 58 d2          	vaddps ymm2,ymm4,ymm2
  acf1b2:	c5 f8 28 da          	vmovaps xmm3,xmm2
  acf1b6:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  acf1bc:	c5 f8 28 e0          	vmovaps xmm4,xmm0
  acf1c0:	c4 e3 7d 19 c7 01    	vextractf128 xmm7,ymm0,0x1
  acf1c6:	c5 78 28 c1          	vmovaps xmm8,xmm1
  acf1ca:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  acf1d0:	c5 6d 14 c9          	vunpcklpd ymm9,ymm2,ymm1
  acf1d4:	c4 c1 65 15 d0       	vunpckhpd ymm2,ymm3,ymm8
  acf1d9:	c4 c1 65 14 d8       	vunpcklpd ymm3,ymm3,ymm8
  acf1de:	c5 7a 7e c0          	vmovq  xmm8,xmm0
  acf1e2:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  acf1e7:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  acf1eb:	c4 e3 45 0c f9 cc    	vblendps ymm7,ymm7,ymm1,0xcc
  acf1f1:	c4 c1 64 c6 c0 88    	vshufps ymm0,ymm3,ymm8,0x88
  acf1f7:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  acf1fc:	c4 c1 64 c6 d8 dd    	vshufps ymm3,ymm3,ymm8,0xdd
  acf202:	c5 64 c6 c3 d8       	vshufps ymm8,ymm3,ymm3,0xd8
  acf207:	c5 ec c6 dc 88       	vshufps ymm3,ymm2,ymm4,0x88
  acf20c:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  acf211:	c5 ec c6 d4 dd       	vshufps ymm2,ymm2,ymm4,0xdd
  acf216:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  acf21b:	c5 b4 c6 e7 88       	vshufps ymm4,ymm9,ymm7,0x88
  acf220:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  acf225:	c5 f8 28 fe          	vmovaps xmm7,xmm6
  acf229:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  acf22f:	c5 78 28 cd          	vmovaps xmm9,xmm5
  acf233:	c4 c3 7d 19 ea 01    	vextractf128 xmm10,ymm5,0x1
  acf239:	c4 41 78 28 dc       	vmovaps xmm11,xmm12
  acf23e:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  acf244:	c4 c1 4d 14 f4       	vunpcklpd ymm6,ymm6,ymm12
  acf249:	c4 41 45 15 e3       	vunpckhpd ymm12,ymm7,ymm11
  acf24e:	c4 c1 45 14 fb       	vunpcklpd ymm7,ymm7,ymm11
  acf253:	c5 fa 7e ed          	vmovq  xmm5,xmm5
  acf257:	c4 c1 35 73 d9 08    	vpsrldq ymm9,ymm9,0x8
  acf25d:	c4 63 2d 0c d1 cc    	vblendps ymm10,ymm10,ymm1,0xcc
  acf263:	c5 c4 c6 cd 88       	vshufps ymm1,ymm7,ymm5,0x88
  acf268:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  acf26d:	c5 c4 c6 ed dd       	vshufps ymm5,ymm7,ymm5,0xdd
  acf272:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  acf277:	c4 c1 1c c6 f9 88    	vshufps ymm7,ymm12,ymm9,0x88
  acf27d:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  acf282:	c4 41 1c c6 c9 dd    	vshufps ymm9,ymm12,ymm9,0xdd
  acf288:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  acf28e:	c4 c1 4c c6 f2 88    	vshufps ymm6,ymm6,ymm10,0x88
  acf294:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  acf299:	c5 7c 10 52 40       	vmovups ymm10,YMMWORD PTR [rdx+0x40]
  acf29e:	c5 7c 10 5a 60       	vmovups ymm11,YMMWORD PTR [rdx+0x60]
  acf2a3:	c5 7c 10 a2 80 00 00 	vmovups ymm12,YMMWORD PTR [rdx+0x80]
  acf2aa:	00 
  acf2ab:	c5 7c 10 aa a0 00 00 	vmovups ymm13,YMMWORD PTR [rdx+0xa0]
  acf2b2:	00 
  acf2b3:	c5 7c 10 b2 c0 00 00 	vmovups ymm14,YMMWORD PTR [rdx+0xc0]
  acf2ba:	00 
  acf2bb:	c5 7c 10 ba e0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xe0]
  acf2c2:	00 
  acf2c3:	62 e1 7c 28 10 42 08 	vmovups ymm16,YMMWORD PTR [rdx+0x100]
  acf2ca:	62 e1 7c 28 10 4a 09 	vmovups ymm17,YMMWORD PTR [rdx+0x120]
  acf2d1:	62 c1 3c 28 59 d2    	vmulps ymm18,ymm8,ymm10
  acf2d7:	62 c2 55 28 bc d3    	vfnmadd231ps ymm18,ymm5,ymm11
  acf2dd:	62 a1 5c 28 59 d8    	vmulps ymm19,ymm4,ymm16
  acf2e3:	62 a2 4d 28 bc d9    	vfnmadd231ps ymm19,ymm6,ymm17
  acf2e9:	62 a1 6c 20 58 e3    	vaddps ymm20,ymm18,ymm19
  acf2ef:	62 c1 64 28 59 ec    	vmulps ymm21,ymm3,ymm12
  acf2f5:	62 c2 45 28 bc ed    	vfnmadd231ps ymm21,ymm7,ymm13
  acf2fb:	62 c1 6c 28 59 f6    	vmulps ymm22,ymm2,ymm14
  acf301:	62 c2 35 28 bc f7    	vfnmadd231ps ymm22,ymm9,ymm15
  acf307:	62 a1 54 20 58 fe    	vaddps ymm23,ymm21,ymm22
  acf30d:	c5 ac 59 ed          	vmulps ymm5,ymm10,ymm5
  acf311:	c4 c2 3d b8 eb       	vfmadd231ps ymm5,ymm8,ymm11
  acf316:	62 b1 4c 28 59 f0    	vmulps ymm6,ymm6,ymm16
  acf31c:	62 b2 5d 28 b8 f1    	vfmadd231ps ymm6,ymm4,ymm17
  acf322:	c5 d4 58 e6          	vaddps ymm4,ymm5,ymm6
  acf326:	c5 9c 59 ff          	vmulps ymm7,ymm12,ymm7
  acf32a:	c4 c2 65 b8 fd       	vfmadd231ps ymm7,ymm3,ymm13
  acf32f:	c4 c1 34 59 de       	vmulps ymm3,ymm9,ymm14
  acf334:	c4 c2 6d b8 df       	vfmadd231ps ymm3,ymm2,ymm15
  acf339:	c5 44 58 c3          	vaddps ymm8,ymm7,ymm3
  acf33d:	c4 62 7d 18 0d a2 63 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff5a63a2]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  acf344:	5a ff 
  acf346:	c4 41 7c 28 d1       	vmovaps ymm10,ymm9
  acf34b:	62 72 5d 20 a8 d0    	vfmadd213ps ymm10,ymm20,ymm0
  acf351:	c4 e2 7d 18 15 ea 62 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff5a62ea]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  acf358:	5a ff 
  acf35a:	62 72 45 20 bc d2    	vfnmadd231ps ymm10,ymm23,ymm2
  acf360:	c5 d4 5c ee          	vsubps ymm5,ymm5,ymm6
  acf364:	c5 c4 5c f3          	vsubps ymm6,ymm7,ymm3
  acf368:	c4 e2 7d 18 3d e7 63 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff5a63e7]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  acf36f:	5a ff 
  acf371:	c5 4c 59 df          	vmulps ymm11,ymm6,ymm7
  acf375:	c4 62 7d 18 25 22 60 	vbroadcastss ymm12,DWORD PTR [rip+0xffffffffff5a6022]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  acf37c:	5a ff 
  acf37e:	c4 42 55 b8 dc       	vfmadd231ps ymm11,ymm5,ymm12
  acf383:	c4 41 2c 58 eb       	vaddps ymm13,ymm10,ymm11
  acf388:	c5 7c 29 cb          	vmovaps ymm3,ymm9
  acf38c:	c4 e2 5d a8 d9       	vfmadd213ps ymm3,ymm4,ymm1
  acf391:	c4 e2 3d bc da       	vfnmadd231ps ymm3,ymm8,ymm2
  acf396:	62 31 6c 20 5c f3    	vsubps ymm14,ymm18,ymm19
  acf39c:	62 31 54 20 5c fe    	vsubps ymm15,ymm21,ymm22
  acf3a2:	62 e1 04 28 59 c7    	vmulps ymm16,ymm15,ymm7
  acf3a8:	62 c2 0d 28 b8 c4    	vfmadd231ps ymm16,ymm14,ymm12
  acf3ae:	62 e1 7c 28 28 ca    	vmovaps ymm17,ymm2
  acf3b4:	62 e2 5d 20 ac c8    	vfnmadd213ps ymm17,ymm20,ymm0
  acf3ba:	62 c2 45 20 b8 c9    	vfmadd231ps ymm17,ymm23,ymm9
  acf3c0:	c5 d4 59 ef          	vmulps ymm5,ymm5,ymm7
  acf3c4:	c4 e2 1d bc ee       	vfnmadd231ps ymm5,ymm12,ymm6
  acf3c9:	62 f1 74 20 58 f5    	vaddps ymm6,ymm17,ymm5
  acf3cf:	c4 e2 5d ac d1       	vfnmadd213ps ymm2,ymm4,ymm1
  acf3d4:	c4 c2 3d b8 d1       	vfmadd231ps ymm2,ymm8,ymm9
  acf3d9:	c5 8c 59 ff          	vmulps ymm7,ymm14,ymm7
  acf3dd:	c4 c2 05 bc fc       	vfnmadd231ps ymm7,ymm15,ymm12
  acf3e2:	62 f1 74 20 5c ed    	vsubps ymm5,ymm17,ymm5
  acf3e8:	c4 41 2c 5c cb       	vsubps ymm9,ymm10,ymm11
  acf3ed:	62 b1 7c 28 58 c4    	vaddps ymm0,ymm0,ymm20
  acf3f3:	62 b1 7c 28 58 c7    	vaddps ymm0,ymm0,ymm23
  acf3f9:	c5 d8 58 c9          	vaddps xmm1,xmm4,xmm1
  acf3fd:	c5 b8 58 c9          	vaddps xmm1,xmm8,xmm1
  acf401:	c5 fc 28 25 b7 8e 5a 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff5a8eb7]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  acf408:	ff 
  acf409:	62 f2 5d 28 7f c8    	vpermt2ps ymm1,ymm4,ymm0
  acf40f:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  acf415:	c5 f8 13 46 10       	vmovlps QWORD PTR [rsi+0x10],xmm0
  acf41a:	c5 f8 11 0e          	vmovups XMMWORD PTR [rsi],xmm1
  acf41e:	62 b1 64 08 5c c0    	vsubps xmm0,xmm3,xmm16
  acf424:	62 d2 5d 28 7f c5    	vpermt2ps ymm0,ymm4,ymm13
  acf42a:	c5 f8 11 46 18       	vmovups XMMWORD PTR [rsi+0x18],xmm0
  acf42f:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  acf435:	c5 f8 13 46 28       	vmovlps QWORD PTR [rsi+0x28],xmm0
  acf43a:	c5 e8 5c c7          	vsubps xmm0,xmm2,xmm7
  acf43e:	62 f2 5d 28 7f c6    	vpermt2ps ymm0,ymm4,ymm6
  acf444:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  acf449:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  acf44f:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  acf454:	c5 e8 58 c7          	vaddps xmm0,xmm2,xmm7
  acf458:	62 f2 5d 28 7f c5    	vpermt2ps ymm0,ymm4,ymm5
  acf45e:	c5 f8 11 46 48       	vmovups XMMWORD PTR [rsi+0x48],xmm0
  acf463:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  acf469:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  acf46e:	62 b1 64 08 58 c0    	vaddps xmm0,xmm3,xmm16
  acf474:	62 d2 5d 28 7f c1    	vpermt2ps ymm0,ymm4,ymm9
  acf47a:	c5 f8 11 46 60       	vmovups XMMWORD PTR [rsi+0x60],xmm0
  acf47f:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  acf485:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  acf48a:	c5 f8 77             	vzeroupper
  acf48d:	c3                   	ret
