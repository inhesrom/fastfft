
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a60140 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a60140:	55                   	push   rbp
  a60141:	48 89 e5             	mov    rbp,rsp
  a60144:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a60148:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a6014f:	62 f1 7c 48 28 05 27 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff666e27]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a60156:	6e 66 ff 
  a60159:	62 f1 7c 48 28 0d 9d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff666d9d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a60160:	6d 66 ff 
  a60163:	62 f1 7c 48 28 15 93 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff666c93]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a6016a:	6c 66 ff 
  a6016d:	62 f1 7c 48 28 1d c9 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff666cc9]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a60174:	6c 66 ff 
  a60177:	48 c1 e2 04          	shl    rdx,0x4
  a6017b:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a6017f:	31 d2                	xor    edx,edx
  a60181:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a60186:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a6018b:	62 f1 7c 48 28 25 2b 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff63372b]        # 938c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d70>
  a60192:	37 63 ff 
  a60195:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a60199:	62 f2 7d 48 18 35 bd 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff6152bd]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a601a0:	52 61 ff 
  a601a3:	62 f2 7d 48 18 3d 27 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff615127]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a601aa:	51 61 ff 
  a601ad:	62 71 7c 48 28 05 49 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff633749]        # 93900 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20db0>
  a601b4:	37 63 ff 
  a601b7:	c4 41 30 57 c9       	vxorps xmm9,xmm9,xmm9
  a601bc:	62 52 7d 48 7f c9    	vpermt2ps zmm9,zmm0,zmm9
  a601c2:	62 71 7c 48 28 15 74 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff633774]        # 93940 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20df0>
  a601c9:	37 63 ff 
  a601cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  a601d0:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a601d5:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a601da:	c5 7b 10 5c 17 10    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x10]
  a601e0:	c5 78 10 24 17       	vmovups xmm12,XMMWORD PTR [rdi+rdx*1]
  a601e5:	c5 78 10 6c 17 18    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x18]
  a601eb:	c5 78 10 74 17 30    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x30]
  a601f1:	c5 78 10 7c 17 48    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x48]
  a601f7:	62 53 1d 48 18 e3 01 	vinsertf32x4 zmm12,zmm12,xmm11,0x1
  a601fe:	62 51 7c 48 28 dc    	vmovaps zmm11,zmm12
  a60204:	62 72 5d 48 7f dd    	vpermt2ps zmm11,zmm4,zmm5
  a6020a:	62 72 3d 48 7f e5    	vpermt2ps zmm12,zmm8,zmm5
  a60210:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x28]
  a60217:	05 
  a60218:	62 33 15 48 18 e8 01 	vinsertf32x4 zmm13,zmm13,xmm16,0x1
  a6021f:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a60225:	62 e2 5d 48 7f c5    	vpermt2ps zmm16,zmm4,zmm5
  a6022b:	62 72 3d 48 7f ed    	vpermt2ps zmm13,zmm8,zmm5
  a60231:	62 e1 ff 08 10 4c 17 	vmovsd xmm17,QWORD PTR [rdi+rdx*1+0x40]
  a60238:	08 
  a60239:	62 a3 0d 48 18 c9 01 	vinsertf32x4 zmm17,zmm14,xmm17,0x1
  a60240:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a60246:	62 e2 5d 48 7f d5    	vpermt2ps zmm18,zmm4,zmm5
  a6024c:	62 e2 3d 48 7f cd    	vpermt2ps zmm17,zmm8,zmm5
  a60252:	c5 7b 10 74 17 58    	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x58]
  a60258:	62 53 05 48 18 fe 01 	vinsertf32x4 zmm15,zmm15,xmm14,0x1
  a6025f:	62 51 7c 48 28 f7    	vmovaps zmm14,zmm15
  a60265:	62 72 3d 48 7f fd    	vpermt2ps zmm15,zmm8,zmm5
  a6026b:	62 e1 ff 08 10 5c 17 	vmovsd xmm19,QWORD PTR [rdi+rdx*1+0x70]
  a60272:	0e 
  a60273:	62 e1 7c 08 10 64 17 	vmovups xmm20,XMMWORD PTR [rdi+rdx*1+0x60]
  a6027a:	06 
  a6027b:	62 a3 5d 40 18 db 01 	vinsertf32x4 zmm19,zmm20,xmm19,0x1
  a60282:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a60288:	62 e2 5d 48 7f e5    	vpermt2ps zmm20,zmm4,zmm5
  a6028e:	62 e2 3d 48 7f dd    	vpermt2ps zmm19,zmm8,zmm5
  a60294:	62 e1 ff 08 10 6c 17 	vmovsd xmm21,QWORD PTR [rdi+rdx*1+0x88]
  a6029b:	11 
  a6029c:	62 e1 7c 08 10 b4 17 	vmovups xmm22,XMMWORD PTR [rdi+rdx*1+0x78]
  a602a3:	78 00 00 00 
  a602a7:	62 a3 4d 40 18 ed 01 	vinsertf32x4 zmm21,zmm22,xmm21,0x1
  a602ae:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a602b4:	62 e2 5d 48 7f f5    	vpermt2ps zmm22,zmm4,zmm5
  a602ba:	62 e2 3d 48 7f ed    	vpermt2ps zmm21,zmm8,zmm5
  a602c0:	62 a1 74 40 58 fb    	vaddps zmm23,zmm17,zmm19
  a602c6:	62 21 1c 48 58 c7    	vaddps zmm24,zmm12,zmm23
  a602cc:	62 41 54 40 58 cd    	vaddps zmm25,zmm21,zmm13
  a602d2:	62 32 4d 48 bc e7    	vfnmadd231ps zmm12,zmm6,zmm23
  a602d8:	62 a1 6c 40 58 fc    	vaddps zmm23,zmm18,zmm20
  a602de:	62 a1 6c 40 5c d4    	vsubps zmm18,zmm18,zmm20
  a602e4:	62 81 04 48 58 e1    	vaddps zmm20,zmm15,zmm25
  a602ea:	62 12 4d 48 bc f9    	vfnmadd231ps zmm15,zmm6,zmm25
  a602f0:	62 21 4c 40 58 c8    	vaddps zmm25,zmm22,zmm16
  a602f6:	62 a1 4c 40 5c c0    	vsubps zmm16,zmm22,zmm16
  a602fc:	62 a1 24 48 58 f7    	vaddps zmm22,zmm11,zmm23
  a60302:	62 32 4d 48 bc df    	vfnmadd231ps zmm11,zmm6,zmm23
  a60308:	62 72 5d 48 7f f5    	vpermt2ps zmm14,zmm4,zmm5
  a6030e:	62 a1 74 40 5c cb    	vsubps zmm17,zmm17,zmm19
  a60314:	62 81 0c 48 58 d9    	vaddps zmm19,zmm14,zmm25
  a6031a:	62 12 4d 48 bc f1    	vfnmadd231ps zmm14,zmm6,zmm25
  a60320:	62 e1 6c 40 59 d7    	vmulps zmm18,zmm18,zmm7
  a60326:	62 51 54 40 5c ed    	vsubps zmm13,zmm21,zmm13
  a6032c:	62 a1 1c 48 58 ea    	vaddps zmm21,zmm12,zmm18
  a60332:	62 e1 7c 40 59 c7    	vmulps zmm16,zmm16,zmm7
  a60338:	62 a1 1c 48 5c d2    	vsubps zmm18,zmm12,zmm18
  a6033e:	62 a1 04 48 58 f8    	vaddps zmm23,zmm15,zmm16
  a60344:	62 71 74 40 59 e7    	vmulps zmm12,zmm17,zmm7
  a6034a:	62 31 04 48 5c f8    	vsubps zmm15,zmm15,zmm16
  a60350:	62 c1 24 48 5c c4    	vsubps zmm16,zmm11,zmm12
  a60356:	62 71 14 48 59 ef    	vmulps zmm13,zmm13,zmm7
  a6035c:	62 51 1c 48 58 db    	vaddps zmm11,zmm12,zmm11
  a60362:	62 c1 0c 48 5c cd    	vsubps zmm17,zmm14,zmm13
  a60368:	62 51 14 48 58 f6    	vaddps zmm14,zmm13,zmm14
  a6036e:	62 21 3c 40 58 cc    	vaddps zmm25,zmm24,zmm20
  a60374:	62 a1 3c 40 5c e4    	vsubps zmm20,zmm24,zmm20
  a6037a:	62 31 4c 40 58 eb    	vaddps zmm13,zmm22,zmm19
  a60380:	62 31 4c 40 5c e3    	vsubps zmm12,zmm22,zmm19
  a60386:	62 a1 54 40 5c df    	vsubps zmm19,zmm21,zmm23
  a6038c:	62 a1 54 40 58 ef    	vaddps zmm21,zmm21,zmm23
  a60392:	62 a1 7c 40 5c f1    	vsubps zmm22,zmm16,zmm17
  a60398:	62 a1 7c 40 58 c1    	vaddps zmm16,zmm16,zmm17
  a6039e:	62 c1 6c 40 58 cf    	vaddps zmm17,zmm18,zmm15
  a603a4:	62 51 6c 40 5c ff    	vsubps zmm15,zmm18,zmm15
  a603aa:	62 c1 24 48 58 d6    	vaddps zmm18,zmm11,zmm14
  a603b0:	62 51 24 48 5c f6    	vsubps zmm14,zmm11,zmm14
  a603b6:	62 62 7d 48 7f cd    	vpermt2ps zmm25,zmm0,zmm5
  a603bc:	62 e2 7d 48 7f ed    	vpermt2ps zmm21,zmm0,zmm5
  a603c2:	62 22 75 48 7f cd    	vpermt2ps zmm25,zmm1,zmm21
  a603c8:	62 e2 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm5
  a603ce:	62 e2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm5
  a603d4:	62 e2 7d 48 7f e5    	vpermt2ps zmm20,zmm0,zmm5
  a603da:	62 72 7d 48 7f fd    	vpermt2ps zmm15,zmm0,zmm5
  a603e0:	62 c2 75 48 7f df    	vpermt2ps zmm19,zmm1,zmm15
  a603e6:	62 c2 75 48 7f c9    	vpermt2ps zmm17,zmm1,zmm9
  a603ec:	62 c2 75 48 7f e1    	vpermt2ps zmm20,zmm1,zmm9
  a603f2:	62 31 b5 40 14 f9    	vunpcklpd zmm15,zmm25,zmm17
  a603f8:	62 a1 b5 40 15 c9    	vunpckhpd zmm17,zmm25,zmm17
  a603fe:	62 a1 e5 40 14 ec    	vunpcklpd zmm21,zmm19,zmm20
  a60404:	62 a1 e5 40 15 dc    	vunpckhpd zmm19,zmm19,zmm20
  a6040a:	62 51 7c 48 28 df    	vmovaps zmm11,zmm15
  a60410:	62 32 6d 48 7f dd    	vpermt2ps zmm11,zmm2,zmm21
  a60416:	62 32 65 48 7f fd    	vpermt2ps zmm15,zmm3,zmm21
  a6041c:	62 a2 6d 48 7f cb    	vpermt2ps zmm17,zmm2,zmm19
  a60422:	62 72 7d 48 7f ed    	vpermt2ps zmm13,zmm0,zmm5
  a60428:	62 e2 7d 48 7f f5    	vpermt2ps zmm22,zmm0,zmm5
  a6042e:	62 e2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm5
  a60434:	62 72 7d 48 7f e5    	vpermt2ps zmm12,zmm0,zmm5
  a6043a:	62 e2 7d 48 7f c5    	vpermt2ps zmm16,zmm0,zmm5
  a60440:	62 72 7d 48 7f f5    	vpermt2ps zmm14,zmm0,zmm5
  a60446:	62 32 75 48 7f e8    	vpermt2ps zmm13,zmm1,zmm16
  a6044c:	62 c2 75 48 7f f6    	vpermt2ps zmm22,zmm1,zmm14
  a60452:	62 c2 75 48 7f d1    	vpermt2ps zmm18,zmm1,zmm9
  a60458:	62 52 75 48 7f e1    	vpermt2ps zmm12,zmm1,zmm9
  a6045e:	62 31 95 48 14 f2    	vunpcklpd zmm14,zmm13,zmm18
  a60464:	62 31 95 48 15 ea    	vunpckhpd zmm13,zmm13,zmm18
  a6046a:	62 c1 cd 40 14 c4    	vunpcklpd zmm16,zmm22,zmm12
  a60470:	62 51 cd 40 15 e4    	vunpckhpd zmm12,zmm22,zmm12
  a60476:	62 c1 7c 48 28 d6    	vmovaps zmm18,zmm14
  a6047c:	62 a2 6d 48 7f d0    	vpermt2ps zmm18,zmm2,zmm16
  a60482:	62 32 65 48 7f f0    	vpermt2ps zmm14,zmm3,zmm16
  a60488:	62 52 6d 48 7f ec    	vpermt2ps zmm13,zmm2,zmm12
  a6048e:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a60495:	62 e1 7c 48 10 41 03 	vmovups zmm16,ZMMWORD PTR [rcx+0xc0]
  a6049c:	62 c1 04 48 59 dc    	vmulps zmm19,zmm15,zmm12
  a604a2:	62 a2 0d 48 bc d8    	vfnmadd231ps zmm19,zmm14,zmm16
  a604a8:	62 51 0c 48 59 e4    	vmulps zmm12,zmm14,zmm12
  a604ae:	62 71 7c 48 10 71 04 	vmovups zmm14,ZMMWORD PTR [rcx+0x100]
  a604b5:	62 52 7d 40 b8 e7    	vfmadd231ps zmm12,zmm16,zmm15
  a604bb:	62 71 7c 48 10 79 05 	vmovups zmm15,ZMMWORD PTR [rcx+0x140]
  a604c2:	62 c1 74 40 59 c6    	vmulps zmm16,zmm17,zmm14
  a604c8:	62 c2 15 48 bc c7    	vfnmadd231ps zmm16,zmm13,zmm15
  a604ce:	62 51 14 48 59 ee    	vmulps zmm13,zmm13,zmm14
  a604d4:	62 31 64 40 58 f0    	vaddps zmm14,zmm19,zmm16
  a604da:	62 32 05 48 b8 e9    	vfmadd231ps zmm13,zmm15,zmm17
  a604e0:	62 51 1c 48 58 fd    	vaddps zmm15,zmm12,zmm13
  a604e6:	62 e1 7c 48 28 ce    	vmovaps zmm17,zmm6
  a604ec:	62 c2 0d 48 ac cb    	vfnmadd213ps zmm17,zmm14,zmm11
  a604f2:	62 51 1c 48 5c e5    	vsubps zmm12,zmm12,zmm13
  a604f8:	62 71 1c 48 59 e7    	vmulps zmm12,zmm12,zmm7
  a604fe:	62 51 74 40 58 ec    	vaddps zmm13,zmm17,zmm12
  a60504:	62 a1 64 40 5c c0    	vsubps zmm16,zmm19,zmm16
  a6050a:	62 e1 7c 48 28 de    	vmovaps zmm19,zmm6
  a60510:	62 a2 05 48 ac da    	vfnmadd213ps zmm19,zmm15,zmm18
  a60516:	62 e1 7c 40 59 c7    	vmulps zmm16,zmm16,zmm7
  a6051c:	62 51 74 40 5c e4    	vsubps zmm12,zmm17,zmm12
  a60522:	62 a1 64 40 5c c8    	vsubps zmm17,zmm19,zmm16
  a60528:	62 a1 64 40 58 c0    	vaddps zmm16,zmm19,zmm16
  a6052e:	62 51 6c 40 58 ff    	vaddps zmm15,zmm18,zmm15
  a60534:	62 51 24 48 58 de    	vaddps zmm11,zmm11,zmm14
  a6053a:	62 52 2d 48 7f fb    	vpermt2ps zmm15,zmm10,zmm11
  a60540:	62 73 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm15,0x2
  a60547:	02 02 
  a60549:	c5 7c 11 3c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm15
  a6054e:	62 c2 2d 48 7f cd    	vpermt2ps zmm17,zmm10,zmm13
  a60554:	62 e3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm17,0x2
  a6055b:	05 02 
  a6055d:	62 e1 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm17
  a60564:	30 00 00 00 
  a60568:	62 c2 2d 48 7f c4    	vpermt2ps zmm16,zmm10,zmm12
  a6056e:	62 e3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm16,0x2
  a60575:	08 02 
  a60577:	62 e1 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm16
  a6057e:	03 
  a6057f:	48 81 c2 90 00 00 00 	add    rdx,0x90
  a60586:	48 39 d0             	cmp    rax,rdx
  a60589:	0f 85 41 fc ff ff    	jne    a601d0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x90>
  a6058f:	48 89 ec             	mov    rsp,rbp
  a60592:	5d                   	pop    rbp
  a60593:	c5 f8 77             	vzeroupper
  a60596:	c3                   	ret
