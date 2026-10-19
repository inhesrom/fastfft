
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b180c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b180c0:	48 c1 e2 06          	shl    rdx,0x6
  b180c4:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  b180c8:	c4 e2 7d 18 05 8f d3 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff55d38f]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b180cf:	55 ff 
  b180d1:	31 d2                	xor    edx,edx
  b180d3:	c4 e2 7d 18 0d f8 d1 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff55d1f8]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b180da:	55 ff 
  b180dc:	c5 fc 28 15 fc f0 55 	vmovaps ymm2,YMMWORD PTR [rip+0xffffffffff55f0fc]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b180e3:	ff 
  b180e4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b180eb:	00 00 00 00 00 
  b180f0:	c5 fc 10 1c 17       	vmovups ymm3,YMMWORD PTR [rdi+rdx*1]
  b180f5:	c5 f8 10 64 17 20    	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x20]
  b180fb:	c5 e4 c6 ec 88       	vshufps ymm5,ymm3,ymm4,0x88
  b18100:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  b18106:	c5 fc 10 7c 17 60    	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x60]
  b1810c:	c5 78 10 84 17 80 00 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x80]
  b18113:	00 00 
  b18115:	c4 c1 44 c6 f0 88    	vshufps ymm6,ymm7,ymm8,0x88
  b1811b:	c4 63 fd 01 ce d8    	vpermpd ymm9,ymm6,0xd8
  b18121:	c4 41 54 5c d1       	vsubps ymm10,ymm5,ymm9
  b18126:	c5 7c 10 9c 17 90 00 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x90]
  b1812d:	00 00 
  b1812f:	c5 78 10 a4 17 b0 00 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0xb0]
  b18136:	00 00 
  b18138:	c4 c1 24 c6 f4 dd    	vshufps ymm6,ymm11,ymm12,0xdd
  b1813e:	c4 63 fd 01 ee d8    	vpermpd ymm13,ymm6,0xd8
  b18144:	c5 7c 10 74 17 30    	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x30]
  b1814a:	c5 78 10 7c 17 50    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x50]
  b18150:	c4 c1 0c c6 f7 dd    	vshufps ymm6,ymm14,ymm15,0xdd
  b18156:	62 e3 fd 28 01 c6 d8 	vpermpd ymm16,ymm6,0xd8
  b1815d:	62 a1 14 28 5c c8    	vsubps ymm17,ymm13,ymm16
  b18163:	62 b1 2c 28 5c f1    	vsubps ymm6,ymm10,ymm17
  b18169:	c5 e4 c6 dc dd       	vshufps ymm3,ymm3,ymm4,0xdd
  b1816e:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  b18174:	c4 c1 44 c6 e0 dd    	vshufps ymm4,ymm7,ymm8,0xdd
  b1817a:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b18180:	c5 e4 5c fc          	vsubps ymm7,ymm3,ymm4
  b18184:	c4 41 0c c6 c7 88    	vshufps ymm8,ymm14,ymm15,0x88
  b1818a:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b18190:	c4 41 24 c6 dc 88    	vshufps ymm11,ymm11,ymm12,0x88
  b18196:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  b1819c:	c4 41 3c 5c e3       	vsubps ymm12,ymm8,ymm11
  b181a1:	c4 41 44 5c f4       	vsubps ymm14,ymm7,ymm12
  b181a6:	c5 b4 58 ed          	vaddps ymm5,ymm9,ymm5
  b181aa:	c4 41 3c 58 c3       	vaddps ymm8,ymm8,ymm11
  b181af:	c4 41 54 5c d8       	vsubps ymm11,ymm5,ymm8
  b181b4:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  b181b8:	62 d1 7c 20 58 e5    	vaddps ymm4,ymm16,ymm13
  b181be:	c5 64 5c cc          	vsubps ymm9,ymm3,ymm4
  b181c2:	62 51 74 20 58 d2    	vaddps ymm10,ymm17,ymm10
  b181c8:	c5 9c 58 ff          	vaddps ymm7,ymm12,ymm7
  b181cc:	c5 3c 58 e5          	vaddps ymm12,ymm8,ymm5
  b181d0:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  b181d4:	c5 f8 28 e3          	vmovaps xmm4,xmm3
  b181d8:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b181de:	c5 f8 28 ef          	vmovaps xmm5,xmm7
  b181e2:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  b181e8:	c4 41 78 28 c1       	vmovaps xmm8,xmm9
  b181ed:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  b181f3:	c4 41 65 14 e9       	vunpcklpd ymm13,ymm3,ymm9
  b181f8:	c5 78 29 f3          	vmovaps xmm3,xmm14
  b181fc:	c4 43 7d 19 f1 01    	vextractf128 xmm9,ymm14,0x1
  b18202:	c4 41 45 14 f1       	vunpcklpd ymm14,ymm7,ymm9
  b18207:	c4 c1 5d 15 f8       	vunpckhpd ymm7,ymm4,ymm8
  b1820c:	c4 c1 5d 14 e0       	vunpcklpd ymm4,ymm4,ymm8
  b18211:	c5 55 15 c3          	vunpckhpd ymm8,ymm5,ymm3
  b18215:	c5 d5 14 eb          	vunpcklpd ymm5,ymm5,ymm3
  b18219:	c5 dc c6 dd 88       	vshufps ymm3,ymm4,ymm5,0x88
  b1821e:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b18223:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  b18228:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b1822d:	c4 c1 44 c6 e8 88    	vshufps ymm5,ymm7,ymm8,0x88
  b18233:	c5 54 c6 cd d8       	vshufps ymm9,ymm5,ymm5,0xd8
  b18238:	c4 c1 44 c6 e8 dd    	vshufps ymm5,ymm7,ymm8,0xdd
  b1823e:	c5 d4 c6 fd d8       	vshufps ymm7,ymm5,ymm5,0xd8
  b18243:	c4 c1 14 c6 ee 88    	vshufps ymm5,ymm13,ymm14,0x88
  b18249:	c5 54 c6 c5 d8       	vshufps ymm8,ymm5,ymm5,0xd8
  b1824e:	c4 c1 14 c6 ee dd    	vshufps ymm5,ymm13,ymm14,0xdd
  b18254:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b18259:	c4 41 78 28 ec       	vmovaps xmm13,xmm12
  b1825e:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  b18264:	c4 41 78 28 f2       	vmovaps xmm14,xmm10
  b18269:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  b1826f:	c4 41 78 28 fb       	vmovaps xmm15,xmm11
  b18274:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  b1827a:	c4 41 1d 14 e3       	vunpcklpd ymm12,ymm12,ymm11
  b1827f:	c5 78 28 de          	vmovaps xmm11,xmm6
  b18283:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  b18289:	c5 2d 14 d6          	vunpcklpd ymm10,ymm10,ymm6
  b1828d:	62 c1 95 28 15 c7    	vunpckhpd ymm16,ymm13,ymm15
  b18293:	c4 41 15 14 ef       	vunpcklpd ymm13,ymm13,ymm15
  b18298:	c4 41 0d 15 fb       	vunpckhpd ymm15,ymm14,ymm11
  b1829d:	c4 41 0d 14 db       	vunpcklpd ymm11,ymm14,ymm11
  b182a2:	c4 c1 14 c6 f3 88    	vshufps ymm6,ymm13,ymm11,0x88
  b182a8:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  b182ad:	c4 41 14 c6 db dd    	vshufps ymm11,ymm13,ymm11,0xdd
  b182b3:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  b182b9:	62 51 7c 20 c6 ef 88 	vshufps ymm13,ymm16,ymm15,0x88
  b182c0:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  b182c6:	62 51 7c 20 c6 f7 dd 	vshufps ymm14,ymm16,ymm15,0xdd
  b182cd:	c4 41 0c c6 f6 d8    	vshufps ymm14,ymm14,ymm14,0xd8
  b182d3:	c4 41 1c c6 fa 88    	vshufps ymm15,ymm12,ymm10,0x88
  b182d9:	c4 41 04 c6 ff d8    	vshufps ymm15,ymm15,ymm15,0xd8
  b182df:	c4 41 1c c6 d2 dd    	vshufps ymm10,ymm12,ymm10,0xdd
  b182e5:	c4 41 2c c6 e2 d8    	vshufps ymm12,ymm10,ymm10,0xd8
  b182eb:	62 e1 7c 28 10 41 04 	vmovups ymm16,YMMWORD PTR [rcx+0x80]
  b182f2:	62 e1 7c 28 10 49 05 	vmovups ymm17,YMMWORD PTR [rcx+0xa0]
  b182f9:	62 31 34 28 59 d0    	vmulps ymm10,ymm9,ymm16
  b182ff:	62 32 15 28 bc d1    	vfnmadd231ps ymm10,ymm13,ymm17
  b18305:	62 31 14 28 59 e8    	vmulps ymm13,ymm13,ymm16
  b1830b:	62 e1 7c 28 10 41 08 	vmovups ymm16,YMMWORD PTR [rcx+0x100]
  b18312:	62 32 35 28 b8 e9    	vfmadd231ps ymm13,ymm9,ymm17
  b18318:	c5 7c 10 89 20 01 00 	vmovups ymm9,YMMWORD PTR [rcx+0x120]
  b1831f:	00 
  b18320:	62 a1 3c 28 59 c8    	vmulps ymm17,ymm8,ymm16
  b18326:	62 c2 05 28 bc c9    	vfnmadd231ps ymm17,ymm15,ymm9
  b1832c:	62 31 04 28 59 f8    	vmulps ymm15,ymm15,ymm16
  b18332:	62 e1 7c 28 10 41 06 	vmovups ymm16,YMMWORD PTR [rcx+0xc0]
  b18339:	c4 42 3d b8 f9       	vfmadd231ps ymm15,ymm8,ymm9
  b1833e:	c5 7c 10 81 e0 00 00 	vmovups ymm8,YMMWORD PTR [rcx+0xe0]
  b18345:	00 
  b18346:	62 31 44 28 59 c8    	vmulps ymm9,ymm7,ymm16
  b1834c:	c4 42 0d bc c8       	vfnmadd231ps ymm9,ymm14,ymm8
  b18351:	62 31 0c 28 59 f0    	vmulps ymm14,ymm14,ymm16
  b18357:	62 e1 7c 28 10 41 0a 	vmovups ymm16,YMMWORD PTR [rcx+0x140]
  b1835e:	c4 42 45 b8 f0       	vfmadd231ps ymm14,ymm7,ymm8
  b18363:	c5 fc 10 b9 60 01 00 	vmovups ymm7,YMMWORD PTR [rcx+0x160]
  b1836a:	00 
  b1836b:	62 31 54 28 59 c0    	vmulps ymm8,ymm5,ymm16
  b18371:	c4 62 1d bc c7       	vfnmadd231ps ymm8,ymm12,ymm7
  b18376:	62 31 1c 28 59 e0    	vmulps ymm12,ymm12,ymm16
  b1837c:	62 e1 7c 28 10 41 02 	vmovups ymm16,YMMWORD PTR [rcx+0x40]
  b18383:	c4 62 55 b8 e7       	vfmadd231ps ymm12,ymm5,ymm7
  b18388:	c5 fc 10 69 60       	vmovups ymm5,YMMWORD PTR [rcx+0x60]
  b1838d:	62 b1 5c 28 59 f8    	vmulps ymm7,ymm4,ymm16
  b18393:	c4 e2 25 bc fd       	vfnmadd231ps ymm7,ymm11,ymm5
  b18398:	62 31 24 28 59 d8    	vmulps ymm11,ymm11,ymm16
  b1839e:	62 a1 2c 28 58 c1    	vaddps ymm16,ymm10,ymm17
  b183a4:	c4 62 5d b8 dd       	vfmadd231ps ymm11,ymm4,ymm5
  b183a9:	62 b1 64 28 58 e0    	vaddps ymm4,ymm3,ymm16
  b183af:	c5 bc 58 ef          	vaddps ymm5,ymm8,ymm7
  b183b3:	62 e2 7d 28 ac c3    	vfnmadd213ps ymm16,ymm0,ymm3
  b183b9:	c4 c1 14 58 df       	vaddps ymm3,ymm13,ymm15
  b183be:	c4 41 14 5c ef       	vsubps ymm13,ymm13,ymm15
  b183c3:	c5 34 58 fd          	vaddps ymm15,ymm9,ymm5
  b183c7:	c4 62 7d bc cd       	vfnmadd231ps ymm9,ymm0,ymm5
  b183cc:	c4 c1 1c 58 eb       	vaddps ymm5,ymm12,ymm11
  b183d1:	c4 41 1c 5c db       	vsubps ymm11,ymm12,ymm11
  b183d6:	c5 64 58 e6          	vaddps ymm12,ymm3,ymm6
  b183da:	c4 e2 7d ac de       	vfnmadd213ps ymm3,ymm0,ymm6
  b183df:	62 b1 2c 28 5c f1    	vsubps ymm6,ymm10,ymm17
  b183e5:	c5 0c 58 d5          	vaddps ymm10,ymm14,ymm5
  b183e9:	c4 62 7d bc f5       	vfnmadd231ps ymm14,ymm0,ymm5
  b183ee:	c5 94 59 e9          	vmulps ymm5,ymm13,ymm1
  b183f2:	c5 bc 5c ff          	vsubps ymm7,ymm8,ymm7
  b183f6:	62 71 7c 20 58 c5    	vaddps ymm8,ymm16,ymm5
  b183fc:	c5 24 59 d9          	vmulps ymm11,ymm11,ymm1
  b18400:	62 f1 7c 20 5c ed    	vsubps ymm5,ymm16,ymm5
  b18406:	c4 41 34 58 eb       	vaddps ymm13,ymm9,ymm11
  b1840b:	c5 cc 59 f1          	vmulps ymm6,ymm6,ymm1
  b1840f:	c4 41 34 5c cb       	vsubps ymm9,ymm9,ymm11
  b18414:	c5 64 5c de          	vsubps ymm11,ymm3,ymm6
  b18418:	c5 c4 59 f9          	vmulps ymm7,ymm7,ymm1
  b1841c:	c5 cc 58 db          	vaddps ymm3,ymm6,ymm3
  b18420:	c5 8c 5c f7          	vsubps ymm6,ymm14,ymm7
  b18424:	c5 8c 58 ff          	vaddps ymm7,ymm14,ymm7
  b18428:	c4 41 3c 5c f5       	vsubps ymm14,ymm8,ymm13
  b1842d:	c4 41 3c 58 c5       	vaddps ymm8,ymm8,ymm13
  b18432:	c5 34 58 ed          	vaddps ymm13,ymm9,ymm5
  b18436:	c4 c1 54 5c e9       	vsubps ymm5,ymm5,ymm9
  b1843b:	c4 41 5c 5c cf       	vsubps ymm9,ymm4,ymm15
  b18440:	c5 84 58 e4          	vaddps ymm4,ymm15,ymm4
  b18444:	c4 41 18 58 fa       	vaddps xmm15,xmm12,xmm10
  b18449:	62 72 6d 28 7f fc    	vpermt2ps ymm15,ymm2,ymm4
  b1844f:	c5 7c 11 3c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm15
  b18454:	c5 a0 5c e6          	vsubps xmm4,xmm11,xmm6
  b18458:	62 d2 6d 28 7f e6    	vpermt2ps ymm4,ymm2,ymm14
  b1845e:	c5 fc 11 64 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm4
  b18464:	c5 e0 58 e7          	vaddps xmm4,xmm3,xmm7
  b18468:	62 d2 6d 28 7f e5    	vpermt2ps ymm4,ymm2,ymm13
  b1846e:	c5 fc 11 64 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm4
  b18474:	c4 c1 18 5c e2       	vsubps xmm4,xmm12,xmm10
  b18479:	62 d2 6d 28 7f e1    	vpermt2ps ymm4,ymm2,ymm9
  b1847f:	c5 fc 11 64 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm4
  b18485:	c5 a0 58 e6          	vaddps xmm4,xmm11,xmm6
  b18489:	62 d2 6d 28 7f e0    	vpermt2ps ymm4,ymm2,ymm8
  b1848f:	c5 fc 11 a4 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm4
  b18496:	00 00 
  b18498:	c5 e0 5c df          	vsubps xmm3,xmm3,xmm7
  b1849c:	62 f2 6d 28 7f dd    	vpermt2ps ymm3,ymm2,ymm5
  b184a2:	c5 fc 11 9c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm3
  b184a9:	00 00 
  b184ab:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  b184b2:	48 39 d0             	cmp    rax,rdx
  b184b5:	0f 85 35 fc ff ff    	jne    b180f0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b184bb:	c5 f8 77             	vzeroupper
  b184be:	c3                   	ret
