
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000aba180 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  aba180:	48 c1 e2 05          	shl    rdx,0x5
  aba184:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  aba188:	c4 e2 7d 18 05 43 b1 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5bb143]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  aba18f:	5b ff 
  aba191:	31 d2                	xor    edx,edx
  aba193:	c4 e2 7d 18 0d c4 b2 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5bb2c4]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  aba19a:	5b ff 
  aba19c:	c5 fc 28 15 3c d0 5b 	vmovaps ymm2,YMMWORD PTR [rip+0xffffffffff5bd03c]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  aba1a3:	ff 
  aba1a4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  aba1ab:	00 00 00 00 00 
  aba1b0:	c5 fc 10 5c 17 60    	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x60]
  aba1b6:	c5 f8 10 a4 17 80 00 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x80]
  aba1bd:	00 00 
  aba1bf:	c5 e4 c6 ec dd       	vshufps ymm5,ymm3,ymm4,0xdd
  aba1c4:	c4 e3 fd 01 fd d8    	vpermpd ymm7,ymm5,0xd8
  aba1ca:	c5 fc 10 ac 17 c0 00 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0xc0]
  aba1d1:	00 00 
  aba1d3:	c5 78 10 84 17 e0 00 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0xe0]
  aba1da:	00 00 
  aba1dc:	c4 c1 54 c6 f0 dd    	vshufps ymm6,ymm5,ymm8,0xdd
  aba1e2:	c4 63 fd 01 ce d8    	vpermpd ymm9,ymm6,0xd8
  aba1e8:	c4 c1 44 5c f1       	vsubps ymm6,ymm7,ymm9
  aba1ed:	c5 cc 59 f0          	vmulps ymm6,ymm6,ymm0
  aba1f1:	c5 e4 c6 dc 88       	vshufps ymm3,ymm3,ymm4,0x88
  aba1f6:	c4 63 fd 01 d3 d8    	vpermpd ymm10,ymm3,0xd8
  aba1fc:	c4 c1 54 c6 d8 88    	vshufps ymm3,ymm5,ymm8,0x88
  aba202:	c4 63 fd 01 c3 d8    	vpermpd ymm8,ymm3,0xd8
  aba208:	c4 c1 2c 58 e0       	vaddps ymm4,ymm10,ymm8
  aba20d:	c5 7c 10 1c 17       	vmovups ymm11,YMMWORD PTR [rdi+rdx*1]
  aba212:	c5 78 10 64 17 20    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x20]
  aba218:	c4 c1 24 c6 dc 88    	vshufps ymm3,ymm11,ymm12,0x88
  aba21e:	c4 e3 fd 01 eb d8    	vpermpd ymm5,ymm3,0xd8
  aba224:	c5 7c 28 e9          	vmovaps ymm13,ymm1
  aba228:	c4 62 5d ac ed       	vfnmadd213ps ymm13,ymm4,ymm5
  aba22d:	c5 94 58 de          	vaddps ymm3,ymm13,ymm6
  aba231:	c5 7c 10 b4 17 f0 00 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0xf0]
  aba238:	00 00 
  aba23a:	c5 78 10 bc 17 10 01 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x110]
  aba241:	00 00 
  aba243:	62 c1 0c 28 c6 c7 dd 	vshufps ymm16,ymm14,ymm15,0xdd
  aba24a:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  aba251:	62 e1 7c 28 10 8c 17 	vmovups ymm17,YMMWORD PTR [rdi+rdx*1+0x30]
  aba258:	30 00 00 00 
  aba25c:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x50]
  aba263:	05 
  aba264:	62 a1 74 20 c6 da dd 	vshufps ymm19,ymm17,ymm18,0xdd
  aba26b:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  aba272:	c4 41 0c c6 f7 88    	vshufps ymm14,ymm14,ymm15,0x88
  aba278:	62 31 7c 20 5c fb    	vsubps ymm15,ymm16,ymm19
  aba27e:	c5 04 59 f8          	vmulps ymm15,ymm15,ymm0
  aba282:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  aba288:	62 a1 74 20 c6 ca 88 	vshufps ymm17,ymm17,ymm18,0x88
  aba28f:	62 a3 fd 28 01 c9 d8 	vpermpd ymm17,ymm17,0xd8
  aba296:	62 a1 0c 28 58 d1    	vaddps ymm18,ymm14,ymm17
  aba29c:	c5 b4 58 ff          	vaddps ymm7,ymm9,ymm7
  aba2a0:	c5 7c 10 8c 17 90 00 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x90]
  aba2a7:	00 00 
  aba2a9:	c4 41 24 c6 dc dd    	vshufps ymm11,ymm11,ymm12,0xdd
  aba2af:	c5 78 10 a4 17 b0 00 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0xb0]
  aba2b6:	00 00 
  aba2b8:	c4 41 2c 5c c0       	vsubps ymm8,ymm10,ymm8
  aba2bd:	c4 41 34 c6 d4 88    	vshufps ymm10,ymm9,ymm12,0x88
  aba2c3:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  aba2c9:	62 a1 7c 20 58 c3    	vaddps ymm16,ymm16,ymm19
  aba2cf:	62 e1 7c 28 28 d9    	vmovaps ymm19,ymm1
  aba2d5:	62 c2 6d 20 ac da    	vfnmadd213ps ymm19,ymm18,ymm10
  aba2db:	c4 41 34 c6 cc dd    	vshufps ymm9,ymm9,ymm12,0xdd
  aba2e1:	62 31 04 28 58 e3    	vaddps ymm12,ymm15,ymm19
  aba2e7:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  aba2ed:	62 31 0c 28 5c f1    	vsubps ymm14,ymm14,ymm17
  aba2f3:	62 e1 7c 28 28 c9    	vmovaps ymm17,ymm1
  aba2f9:	62 c2 45 28 ac cb    	vfnmadd213ps ymm17,ymm7,ymm11
  aba2ff:	c5 3c 59 c0          	vmulps ymm8,ymm8,ymm0
  aba303:	c5 14 5c ee          	vsubps ymm13,ymm13,ymm6
  aba307:	62 c1 74 20 5c e0    	vsubps ymm20,ymm17,ymm8
  aba30d:	c4 c3 fd 01 f1 d8    	vpermpd ymm6,ymm9,0xd8
  aba313:	62 51 64 20 5c cf    	vsubps ymm9,ymm19,ymm15
  aba319:	c5 7c 28 f9          	vmovaps ymm15,ymm1
  aba31d:	62 72 7d 20 ac fe    	vfnmadd213ps ymm15,ymm16,ymm6
  aba323:	c5 0c 59 f0          	vmulps ymm14,ymm14,ymm0
  aba327:	62 c1 74 20 58 c8    	vaddps ymm17,ymm17,ymm8
  aba32d:	62 c1 04 28 5c de    	vsubps ymm19,ymm15,ymm14
  aba333:	c4 41 04 58 f6       	vaddps ymm14,ymm15,ymm14
  aba338:	c4 41 64 5c fc       	vsubps ymm15,ymm3,ymm12
  aba33d:	c5 d4 58 e4          	vaddps ymm4,ymm5,ymm4
  aba341:	62 b1 5c 20 5c eb    	vsubps ymm5,ymm20,ymm19
  aba347:	62 31 2c 28 58 d2    	vaddps ymm10,ymm10,ymm18
  aba34d:	62 c1 14 28 58 d1    	vaddps ymm18,ymm13,ymm9
  aba353:	c5 a4 58 ff          	vaddps ymm7,ymm11,ymm7
  aba357:	62 51 74 20 58 de    	vaddps ymm11,ymm17,ymm14
  aba35d:	62 a1 4c 28 58 c0    	vaddps ymm16,ymm6,ymm16
  aba363:	c4 c1 5c 5c f2       	vsubps ymm6,ymm4,ymm10
  aba368:	c5 1c 58 c3          	vaddps ymm8,ymm12,ymm3
  aba36c:	62 b1 44 28 5c d8    	vsubps ymm3,ymm7,ymm16
  aba372:	62 31 5c 20 58 e3    	vaddps ymm12,ymm20,ymm19
  aba378:	c4 41 14 5c c9       	vsubps ymm9,ymm13,ymm9
  aba37d:	62 51 74 20 5c ee    	vsubps ymm13,ymm17,ymm14
  aba383:	c5 ac 58 e4          	vaddps ymm4,ymm10,ymm4
  aba387:	62 b1 44 28 58 f8    	vaddps ymm7,ymm7,ymm16
  aba38d:	c4 43 45 18 d3 01    	vinsertf128 ymm10,ymm7,xmm11,0x1
  aba393:	c4 c3 45 06 fb 31    	vperm2f128 ymm7,ymm7,ymm11,0x31
  aba399:	c4 63 15 18 dd 01    	vinsertf128 ymm11,ymm13,xmm5,0x1
  aba39f:	c4 e3 15 06 ed 31    	vperm2f128 ymm5,ymm13,ymm5,0x31
  aba3a5:	c4 41 78 28 ec       	vmovaps xmm13,xmm12
  aba3aa:	c4 41 2d 14 f5       	vunpcklpd ymm14,ymm10,ymm13
  aba3af:	62 e1 7c 08 28 c3    	vmovaps xmm16,xmm3
  aba3b5:	62 a1 a5 28 14 c8    	vunpcklpd ymm17,ymm11,ymm16
  aba3bb:	62 a1 0c 28 c6 d9 88 	vshufps ymm19,ymm14,ymm17,0x88
  aba3c2:	62 31 0c 28 c6 f1 dd 	vshufps ymm14,ymm14,ymm17,0xdd
  aba3c9:	c4 41 2d 15 d5       	vunpckhpd ymm10,ymm10,ymm13
  aba3ce:	62 31 a5 28 15 d8    	vunpckhpd ymm11,ymm11,ymm16
  aba3d4:	c4 41 2c c6 eb 88    	vshufps ymm13,ymm10,ymm11,0x88
  aba3da:	c4 41 2c c6 d3 dd    	vshufps ymm10,ymm10,ymm11,0xdd
  aba3e0:	c4 43 7d 19 e3 01    	vextractf128 xmm11,ymm12,0x1
  aba3e6:	c4 c1 45 14 fb       	vunpcklpd ymm7,ymm7,ymm11
  aba3eb:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  aba3f1:	c5 d5 14 db          	vunpcklpd ymm3,ymm5,ymm3
  aba3f5:	c5 44 c6 db 88       	vshufps ymm11,ymm7,ymm3,0x88
  aba3fa:	c5 c4 c6 db dd       	vshufps ymm3,ymm7,ymm3,0xdd
  aba3ff:	62 b3 5d 28 18 ea 01 	vinsertf32x4 ymm5,ymm4,xmm18,0x1
  aba406:	62 33 dd 28 23 e2 03 	vshuff64x2 ymm12,ymm4,ymm18,0x3
  aba40d:	62 c3 35 28 18 c7 01 	vinsertf32x4 ymm16,ymm9,xmm15,0x1
  aba414:	c4 43 35 06 ff 31    	vperm2f128 ymm15,ymm9,ymm15,0x31
  aba41a:	c5 78 29 c4          	vmovaps xmm4,xmm8
  aba41e:	c5 d5 14 fc          	vunpcklpd ymm7,ymm5,ymm4
  aba422:	62 e1 7c 08 28 ce    	vmovaps xmm17,xmm6
  aba428:	62 31 fd 20 14 c9    	vunpcklpd ymm9,ymm16,ymm17
  aba42e:	62 c1 44 28 c6 d1 88 	vshufps ymm18,ymm7,ymm9,0x88
  aba435:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  aba43b:	62 e1 d5 28 15 e4    	vunpckhpd ymm20,ymm5,ymm4
  aba441:	62 b1 64 20 c6 e3 d8 	vshufps ymm4,ymm19,ymm19,0xd8
  aba448:	c4 c1 0c c6 ee d8    	vshufps ymm5,ymm14,ymm14,0xd8
  aba44e:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  aba454:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  aba45a:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  aba460:	c5 64 c6 cb d8       	vshufps ymm9,ymm3,ymm3,0xd8
  aba465:	62 b1 6c 20 c6 da d8 	vshufps ymm3,ymm18,ymm18,0xd8
  aba46c:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  aba471:	62 31 fd 20 15 f1    	vunpckhpd ymm14,ymm16,ymm17
  aba477:	62 c1 5c 20 c6 c6 88 	vshufps ymm16,ymm20,ymm14,0x88
  aba47e:	62 a1 7c 20 c6 c0 d8 	vshufps ymm16,ymm16,ymm16,0xd8
  aba485:	62 51 5c 20 c6 f6 dd 	vshufps ymm14,ymm20,ymm14,0xdd
  aba48c:	c4 41 0c c6 f6 d8    	vshufps ymm14,ymm14,ymm14,0xd8
  aba492:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  aba498:	c4 41 1d 14 c0       	vunpcklpd ymm8,ymm12,ymm8
  aba49d:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  aba4a3:	c5 85 14 f6          	vunpcklpd ymm6,ymm15,ymm6
  aba4a7:	c5 3c c6 e6 88       	vshufps ymm12,ymm8,ymm6,0x88
  aba4ac:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  aba4b2:	c5 bc c6 f6 dd       	vshufps ymm6,ymm8,ymm6,0xdd
  aba4b7:	c5 4c c6 c6 d8       	vshufps ymm8,ymm6,ymm6,0xd8
  aba4bc:	c5 7c 10 b9 80 00 00 	vmovups ymm15,YMMWORD PTR [rcx+0x80]
  aba4c3:	00 
  aba4c4:	62 e1 7c 28 10 49 05 	vmovups ymm17,YMMWORD PTR [rcx+0xa0]
  aba4cb:	c4 c1 14 59 f7       	vmulps ymm6,ymm13,ymm15
  aba4d0:	62 b2 7d 20 bc f1    	vfnmadd231ps ymm6,ymm16,ymm17
  aba4d6:	62 51 7c 20 59 ff    	vmulps ymm15,ymm16,ymm15
  aba4dc:	62 e1 7c 28 10 41 08 	vmovups ymm16,YMMWORD PTR [rcx+0x100]
  aba4e3:	62 32 15 28 b8 f9    	vfmadd231ps ymm15,ymm13,ymm17
  aba4e9:	c5 7c 10 a9 20 01 00 	vmovups ymm13,YMMWORD PTR [rcx+0x120]
  aba4f0:	00 
  aba4f1:	62 a1 24 28 59 c8    	vmulps ymm17,ymm11,ymm16
  aba4f7:	62 c2 1d 28 bc cd    	vfnmadd231ps ymm17,ymm12,ymm13
  aba4fd:	62 31 1c 28 59 e0    	vmulps ymm12,ymm12,ymm16
  aba503:	62 e1 7c 28 10 41 06 	vmovups ymm16,YMMWORD PTR [rcx+0xc0]
  aba50a:	c4 42 25 b8 e5       	vfmadd231ps ymm12,ymm11,ymm13
  aba50f:	c5 7c 10 99 e0 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0xe0]
  aba516:	00 
  aba517:	62 31 2c 28 59 e8    	vmulps ymm13,ymm10,ymm16
  aba51d:	c4 42 0d bc eb       	vfnmadd231ps ymm13,ymm14,ymm11
  aba522:	62 31 0c 28 59 f0    	vmulps ymm14,ymm14,ymm16
  aba528:	62 e1 7c 28 10 41 0a 	vmovups ymm16,YMMWORD PTR [rcx+0x140]
  aba52f:	c4 42 2d b8 f3       	vfmadd231ps ymm14,ymm10,ymm11
  aba534:	c5 7c 10 91 60 01 00 	vmovups ymm10,YMMWORD PTR [rcx+0x160]
  aba53b:	00 
  aba53c:	62 31 34 28 59 d8    	vmulps ymm11,ymm9,ymm16
  aba542:	c4 42 3d bc da       	vfnmadd231ps ymm11,ymm8,ymm10
  aba547:	62 31 3c 28 59 c0    	vmulps ymm8,ymm8,ymm16
  aba54d:	62 e1 7c 28 10 41 02 	vmovups ymm16,YMMWORD PTR [rcx+0x40]
  aba554:	c4 42 35 b8 c2       	vfmadd231ps ymm8,ymm9,ymm10
  aba559:	c5 7c 10 49 60       	vmovups ymm9,YMMWORD PTR [rcx+0x60]
  aba55e:	62 31 54 28 59 d0    	vmulps ymm10,ymm5,ymm16
  aba564:	c4 42 45 bc d1       	vfnmadd231ps ymm10,ymm7,ymm9
  aba569:	62 b1 44 28 59 f8    	vmulps ymm7,ymm7,ymm16
  aba56f:	62 a1 4c 28 58 c1    	vaddps ymm16,ymm6,ymm17
  aba575:	c4 c2 55 b8 f9       	vfmadd231ps ymm7,ymm5,ymm9
  aba57a:	62 b1 5c 28 58 e8    	vaddps ymm5,ymm4,ymm16
  aba580:	c4 41 24 58 ca       	vaddps ymm9,ymm11,ymm10
  aba585:	62 e2 75 28 ac c4    	vfnmadd213ps ymm16,ymm1,ymm4
  aba58b:	c4 c1 04 58 e4       	vaddps ymm4,ymm15,ymm12
  aba590:	c4 41 04 5c e4       	vsubps ymm12,ymm15,ymm12
  aba595:	c4 41 14 58 f9       	vaddps ymm15,ymm13,ymm9
  aba59a:	c4 42 75 bc e9       	vfnmadd231ps ymm13,ymm1,ymm9
  aba59f:	c5 3c 58 cf          	vaddps ymm9,ymm8,ymm7
  aba5a3:	c5 bc 5c ff          	vsubps ymm7,ymm8,ymm7
  aba5a7:	c5 5c 58 c3          	vaddps ymm8,ymm4,ymm3
  aba5ab:	c4 e2 75 ac e3       	vfnmadd213ps ymm4,ymm1,ymm3
  aba5b0:	62 b1 4c 28 5c d9    	vsubps ymm3,ymm6,ymm17
  aba5b6:	c4 c1 0c 58 f1       	vaddps ymm6,ymm14,ymm9
  aba5bb:	c4 42 75 bc f1       	vfnmadd231ps ymm14,ymm1,ymm9
  aba5c0:	c5 1c 59 c8          	vmulps ymm9,ymm12,ymm0
  aba5c4:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  aba5c9:	62 51 7c 20 58 d9    	vaddps ymm11,ymm16,ymm9
  aba5cf:	c5 c4 59 f8          	vmulps ymm7,ymm7,ymm0
  aba5d3:	62 51 7c 20 5c c9    	vsubps ymm9,ymm16,ymm9
  aba5d9:	c5 14 58 e7          	vaddps ymm12,ymm13,ymm7
  aba5dd:	c5 e4 59 d8          	vmulps ymm3,ymm3,ymm0
  aba5e1:	c5 94 5c ff          	vsubps ymm7,ymm13,ymm7
  aba5e5:	c5 5c 5c eb          	vsubps ymm13,ymm4,ymm3
  aba5e9:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  aba5ed:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  aba5f1:	c4 c1 0c 5c e2       	vsubps ymm4,ymm14,ymm10
  aba5f6:	c4 41 0c 58 d2       	vaddps ymm10,ymm14,ymm10
  aba5fb:	c4 41 24 5c f4       	vsubps ymm14,ymm11,ymm12
  aba600:	c4 41 24 58 dc       	vaddps ymm11,ymm11,ymm12
  aba605:	c5 14 5c e4          	vsubps ymm12,ymm13,ymm4
  aba609:	c5 94 58 e4          	vaddps ymm4,ymm13,ymm4
  aba60d:	c5 34 58 ef          	vaddps ymm13,ymm9,ymm7
  aba611:	c5 b4 5c ff          	vsubps ymm7,ymm9,ymm7
  aba615:	c5 2c 58 cb          	vaddps ymm9,ymm10,ymm3
  aba619:	c4 c1 64 5c da       	vsubps ymm3,ymm3,ymm10
  aba61e:	c5 3c 5c d6          	vsubps ymm10,ymm8,ymm6
  aba622:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  aba626:	c4 41 54 5c c7       	vsubps ymm8,ymm5,ymm15
  aba62b:	c5 84 58 ed          	vaddps ymm5,ymm15,ymm5
  aba62f:	c4 c3 7d 19 f7 01    	vextractf128 xmm15,ymm6,0x1
  aba635:	62 f2 6d 28 7f f5    	vpermt2ps ymm6,ymm2,ymm5
  aba63b:	c5 fc 11 34 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm6
  aba640:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  aba646:	c5 80 14 ed          	vunpcklps xmm5,xmm15,xmm5
  aba64a:	c5 f8 11 6c 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm5
  aba650:	c4 63 7d 19 e5 01    	vextractf128 xmm5,ymm12,0x1
  aba656:	62 52 6d 28 7f e6    	vpermt2ps ymm12,ymm2,ymm14
  aba65c:	c5 7c 11 64 16 30    	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm12
  aba662:	c4 63 7d 19 f6 01    	vextractf128 xmm6,ymm14,0x1
  aba668:	c5 d0 14 ee          	vunpcklps xmm5,xmm5,xmm6
  aba66c:	c5 f8 11 6c 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm5
  aba672:	c4 63 7d 19 cd 01    	vextractf128 xmm5,ymm9,0x1
  aba678:	62 52 6d 28 7f cd    	vpermt2ps ymm9,ymm2,ymm13
  aba67e:	c5 7c 11 4c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm9
  aba684:	c4 63 7d 19 ee 01    	vextractf128 xmm6,ymm13,0x1
  aba68a:	c5 d0 14 ee          	vunpcklps xmm5,xmm5,xmm6
  aba68e:	c5 f8 11 ac 16 80 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x80],xmm5
  aba695:	00 00 
  aba697:	c4 63 7d 19 d5 01    	vextractf128 xmm5,ymm10,0x1
  aba69d:	62 52 6d 28 7f d0    	vpermt2ps ymm10,ymm2,ymm8
  aba6a3:	c5 7c 11 94 16 90 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm10
  aba6aa:	00 00 
  aba6ac:	c4 63 7d 19 c6 01    	vextractf128 xmm6,ymm8,0x1
  aba6b2:	c5 d0 14 ee          	vunpcklps xmm5,xmm5,xmm6
  aba6b6:	c5 f8 11 ac 16 b0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xb0],xmm5
  aba6bd:	00 00 
  aba6bf:	c4 e3 7d 19 e5 01    	vextractf128 xmm5,ymm4,0x1
  aba6c5:	62 d2 6d 28 7f e3    	vpermt2ps ymm4,ymm2,ymm11
  aba6cb:	c5 fc 11 a4 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm4
  aba6d2:	00 00 
  aba6d4:	c4 63 7d 19 dc 01    	vextractf128 xmm4,ymm11,0x1
  aba6da:	c5 d0 14 e4          	vunpcklps xmm4,xmm5,xmm4
  aba6de:	c5 f8 11 a4 16 e0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xe0],xmm4
  aba6e5:	00 00 
  aba6e7:	c4 e3 7d 19 dc 01    	vextractf128 xmm4,ymm3,0x1
  aba6ed:	62 f2 6d 28 7f df    	vpermt2ps ymm3,ymm2,ymm7
  aba6f3:	c5 fc 11 9c 16 f0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm3
  aba6fa:	00 00 
  aba6fc:	c4 e3 7d 19 fb 01    	vextractf128 xmm3,ymm7,0x1
  aba702:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  aba706:	c5 f8 11 9c 16 10 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x110],xmm3
  aba70d:	00 00 
  aba70f:	48 81 c2 20 01 00 00 	add    rdx,0x120
  aba716:	48 39 d0             	cmp    rax,rdx
  aba719:	0f 85 91 fa ff ff    	jne    aba1b0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  aba71f:	c5 f8 77             	vzeroupper
  aba722:	c3                   	ret
