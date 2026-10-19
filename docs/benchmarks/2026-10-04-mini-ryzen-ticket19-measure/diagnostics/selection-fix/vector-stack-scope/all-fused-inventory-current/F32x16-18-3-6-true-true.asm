
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a63240 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a63240:	55                   	push   rbp
  a63241:	48 89 e5             	mov    rbp,rsp
  a63244:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a63248:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a6324f:	62 f1 7c 48 28 05 27 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff663d27]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a63256:	3d 66 ff 
  a63259:	62 f1 7c 48 28 0d 9d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff663c9d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a63260:	3c 66 ff 
  a63263:	62 f1 7c 48 28 15 d3 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff663cd3]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a6326a:	3c 66 ff 
  a6326d:	62 f1 7c 48 28 1d 89 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff663b89]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a63274:	3b 66 ff 
  a63277:	62 f1 7c 48 28 25 bf 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff663bbf]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a6327e:	3b 66 ff 
  a63281:	48 c1 e2 04          	shl    rdx,0x4
  a63285:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a63289:	31 d2                	xor    edx,edx
  a6328b:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a63290:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a63295:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a63299:	62 f2 7d 48 18 3d bd 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff6121bd]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a632a0:	21 61 ff 
  a632a3:	62 72 7d 48 18 05 27 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff612027]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a632aa:	20 61 ff 
  a632ad:	62 61 7c 48 28 15 c9 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff630bc9]        # 93e80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21330>
  a632b4:	0b 63 ff 
  a632b7:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  a632bc:	62 52 7d 48 7f d2    	vpermt2ps zmm10,zmm0,zmm10
  a632c2:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a632c8:	62 52 75 48 7f da    	vpermt2ps zmm11,zmm1,zmm10
  a632ce:	62 41 7c 48 28 da    	vmovaps zmm27,zmm10
  a632d4:	62 42 6d 48 7f da    	vpermt2ps zmm27,zmm2,zmm10
  a632da:	c5 7c 28 2d de 4f 61 	vmovaps ymm13,YMMWORD PTR [rip+0xffffffffff614fde]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a632e1:	ff 
  a632e2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a632e9:	1f 84 00 00 00 00 00 
  a632f0:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a632f5:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a632fa:	c5 78 10 74 17 20    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x20]
  a63300:	c4 63 09 21 74 17 24 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x24],0x10
  a63307:	10 
  a63308:	c4 62 79 18 7c 17 28 	vbroadcastss xmm15,DWORD PTR [rdi+rdx*1+0x28]
  a6330f:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0x50]
  a63316:	05 
  a63317:	c4 43 01 0c f6 03    	vblendps xmm14,xmm15,xmm14,0x3
  a6331d:	62 73 7d 00 21 7c 17 	vinsertps xmm15,xmm16,DWORD PTR [rdi+rdx*1+0x54],0x10
  a63324:	15 10 
  a63326:	c4 63 09 21 74 17 2c 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x2c],0x30
  a6332d:	30 
  a6332e:	62 e1 7c 28 10 04 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1]
  a63335:	c4 e2 79 18 6c 17 58 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x58]
  a6333c:	62 53 7d 40 18 f6 02 	vinsertf32x4 zmm14,zmm16,xmm14,0x2
  a63343:	c4 c3 51 0c ef 03    	vblendps xmm5,xmm5,xmm15,0x3
  a63349:	c4 e3 51 21 6c 17 5c 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x5c],0x30
  a63350:	30 
  a63351:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a63357:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x30]
  a6335e:	30 00 00 00 
  a63362:	62 f3 7d 40 18 ed 02 	vinsertf32x4 zmm5,zmm16,xmm5,0x2
  a63369:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x60]
  a63370:	03 
  a63371:	62 72 2d 40 7f f6    	vpermt2ps zmm14,zmm26,zmm6
  a63377:	62 e1 7c 08 10 4c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0x80]
  a6337e:	08 
  a6337f:	62 73 75 00 21 4c 17 	vinsertps xmm9,xmm17,DWORD PTR [rdi+rdx*1+0x84],0x10
  a63386:	21 10 
  a63388:	62 e1 7c 48 28 cd    	vmovaps zmm17,zmm5
  a6338e:	c4 62 79 18 a4 17 88 	vbroadcastss xmm12,DWORD PTR [rdi+rdx*1+0x88]
  a63395:	00 00 00 
  a63398:	c4 43 19 0c c9 03    	vblendps xmm9,xmm12,xmm9,0x3
  a6339e:	62 f2 2d 40 7f ee    	vpermt2ps zmm5,zmm26,zmm6
  a633a4:	c4 63 31 21 8c 17 8c 	vinsertps xmm9,xmm9,DWORD PTR [rdi+rdx*1+0x8c],0x30
  a633ab:	00 00 00 30 
  a633af:	62 53 7d 40 18 c9 02 	vinsertf32x4 zmm9,zmm16,xmm9,0x2
  a633b6:	62 e1 7c 48 28 05 80 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff630a80]        # 93e40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x212f0>
  a633bd:	0a 63 ff 
  a633c0:	62 e2 7d 40 7f ce    	vpermt2ps zmm17,zmm16,zmm6
  a633c6:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a633cc:	62 72 7d 40 7f e6    	vpermt2ps zmm12,zmm16,zmm6
  a633d2:	62 72 2d 40 7f ce    	vpermt2ps zmm9,zmm26,zmm6
  a633d8:	62 72 7d 40 7f fe    	vpermt2ps zmm15,zmm16,zmm6
  a633de:	62 c1 54 48 58 c1    	vaddps zmm16,zmm5,zmm9
  a633e4:	62 a1 0c 48 58 e0    	vaddps zmm20,zmm14,zmm16
  a633ea:	62 c1 74 40 58 dc    	vaddps zmm19,zmm17,zmm12
  a633f0:	62 a1 04 48 58 d3    	vaddps zmm18,zmm15,zmm19
  a633f6:	62 32 45 48 bc f0    	vfnmadd231ps zmm14,zmm7,zmm16
  a633fc:	62 51 74 40 5c e4    	vsubps zmm12,zmm17,zmm12
  a63402:	62 51 1c 48 59 e0    	vmulps zmm12,zmm12,zmm8
  a63408:	62 c1 0c 48 58 ec    	vaddps zmm21,zmm14,zmm12
  a6340e:	62 32 45 48 bc fb    	vfnmadd231ps zmm15,zmm7,zmm19
  a63414:	62 d1 54 48 5c e9    	vsubps zmm5,zmm5,zmm9
  a6341a:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a63420:	62 e1 04 48 5c dd    	vsubps zmm19,zmm15,zmm5
  a63426:	62 51 0c 48 5c cc    	vsubps zmm9,zmm14,zmm12
  a6342c:	62 d1 54 48 58 ef    	vaddps zmm5,zmm5,zmm15
  a63432:	62 e2 7d 48 7f e6    	vpermt2ps zmm20,zmm0,zmm6
  a63438:	62 e2 7d 48 7f ee    	vpermt2ps zmm21,zmm0,zmm6
  a6343e:	62 31 7c 48 28 e4    	vmovaps zmm12,zmm20
  a63444:	62 52 75 48 7f e2    	vpermt2ps zmm12,zmm1,zmm10
  a6344a:	62 c2 6d 48 7f e2    	vpermt2ps zmm20,zmm2,zmm10
  a63450:	62 72 7d 48 7f ce    	vpermt2ps zmm9,zmm0,zmm6
  a63456:	62 31 7c 48 28 fd    	vmovaps zmm15,zmm21
  a6345c:	62 c2 6d 48 7f ea    	vpermt2ps zmm21,zmm2,zmm10
  a63462:	62 c1 7c 48 28 c9    	vmovaps zmm17,zmm9
  a63468:	62 52 75 48 7f fa    	vpermt2ps zmm15,zmm1,zmm10
  a6346e:	62 c2 75 48 7f ca    	vpermt2ps zmm17,zmm1,zmm10
  a63474:	62 52 6d 48 7f ca    	vpermt2ps zmm9,zmm2,zmm10
  a6347a:	62 c1 dd 40 14 c1    	vunpcklpd zmm16,zmm20,zmm9
  a63480:	62 31 9d 48 14 f1    	vunpcklpd zmm14,zmm12,zmm17
  a63486:	62 a1 9d 48 15 c9    	vunpckhpd zmm17,zmm12,zmm17
  a6348c:	62 51 85 48 14 cb    	vunpcklpd zmm9,zmm15,zmm11
  a63492:	62 11 d5 40 14 e3    	vunpcklpd zmm12,zmm21,zmm27
  a63498:	62 c1 85 48 15 eb    	vunpckhpd zmm21,zmm15,zmm11
  a6349e:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a634a4:	62 e2 7d 48 7f d6    	vpermt2ps zmm18,zmm0,zmm6
  a634aa:	62 e2 7d 48 7f de    	vpermt2ps zmm19,zmm0,zmm6
  a634b0:	62 c2 5d 48 7f c4    	vpermt2ps zmm16,zmm4,zmm12
  a634b6:	62 f2 7d 48 7f ee    	vpermt2ps zmm5,zmm0,zmm6
  a634bc:	62 21 7c 48 28 c2    	vmovaps zmm24,zmm18
  a634c2:	62 42 75 48 7f c2    	vpermt2ps zmm24,zmm1,zmm10
  a634c8:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a634ce:	62 c2 6d 48 7f d2    	vpermt2ps zmm18,zmm2,zmm10
  a634d4:	62 21 7c 48 28 e3    	vmovaps zmm28,zmm19
  a634da:	62 42 75 48 7f e2    	vpermt2ps zmm28,zmm1,zmm10
  a634e0:	62 52 5d 48 7f f1    	vpermt2ps zmm14,zmm4,zmm9
  a634e6:	62 c2 6d 48 7f da    	vpermt2ps zmm19,zmm2,zmm10
  a634ec:	62 61 7c 48 28 ed    	vmovaps zmm29,zmm5
  a634f2:	62 42 75 48 7f ea    	vpermt2ps zmm29,zmm1,zmm10
  a634f8:	62 21 7c 48 28 f1    	vmovaps zmm30,zmm17
  a634fe:	62 d2 6d 48 7f ea    	vpermt2ps zmm5,zmm2,zmm10
  a63504:	62 e1 ed 40 14 fd    	vunpcklpd zmm23,zmm18,zmm5
  a6350a:	62 81 bd 40 14 f5    	vunpcklpd zmm22,zmm24,zmm29
  a63510:	62 a2 5d 48 7f cd    	vpermt2ps zmm17,zmm4,zmm21
  a63516:	62 01 bd 40 15 c5    	vunpckhpd zmm24,zmm24,zmm29
  a6351c:	62 d1 9d 40 14 eb    	vunpcklpd zmm5,zmm28,zmm11
  a63522:	62 c1 9d 40 15 d3    	vunpckhpd zmm18,zmm28,zmm11
  a63528:	62 c2 65 48 7f e4    	vpermt2ps zmm20,zmm3,zmm12
  a6352e:	62 11 e5 40 14 e3    	vunpcklpd zmm12,zmm19,zmm27
  a63534:	62 a1 7c 48 28 de    	vmovaps zmm19,zmm22
  a6353a:	62 01 7c 48 28 e0    	vmovaps zmm28,zmm24
  a63540:	62 52 65 48 7f f9    	vpermt2ps zmm15,zmm3,zmm9
  a63546:	62 22 5d 48 7f c2    	vpermt2ps zmm24,zmm4,zmm18
  a6354c:	62 31 7c 48 28 cf    	vmovaps zmm9,zmm23
  a63552:	62 52 65 48 7f cc    	vpermt2ps zmm9,zmm3,zmm12
  a63558:	62 22 65 48 7f f5    	vpermt2ps zmm30,zmm3,zmm21
  a6355e:	62 c2 5d 48 7f fc    	vpermt2ps zmm23,zmm4,zmm12
  a63564:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a6356b:	62 e1 7c 48 10 69 04 	vmovups zmm21,ZMMWORD PTR [rcx+0x100]
  a63572:	62 22 65 48 7f e2    	vpermt2ps zmm28,zmm3,zmm18
  a63578:	62 61 7c 48 10 69 05 	vmovups zmm29,ZMMWORD PTR [rcx+0x140]
  a6357f:	62 a1 0c 40 59 d5    	vmulps zmm18,zmm30,zmm21
  a63585:	62 21 1c 40 59 fd    	vmulps zmm31,zmm28,zmm21
  a6358b:	62 82 1d 40 bc d5    	vfnmadd231ps zmm18,zmm28,zmm29
  a63591:	62 61 7c 48 10 61 08 	vmovups zmm28,ZMMWORD PTR [rcx+0x200]
  a63598:	62 02 15 40 b8 fe    	vfmadd231ps zmm31,zmm29,zmm30
  a6359e:	62 61 7c 48 10 69 09 	vmovups zmm29,ZMMWORD PTR [rcx+0x240]
  a635a5:	62 81 5c 40 59 ec    	vmulps zmm21,zmm20,zmm28
  a635ab:	62 82 35 48 bc ed    	vfnmadd231ps zmm21,zmm9,zmm29
  a635b1:	62 11 34 48 59 cc    	vmulps zmm9,zmm9,zmm28
  a635b7:	62 61 7c 48 10 61 06 	vmovups zmm28,ZMMWORD PTR [rcx+0x180]
  a635be:	62 e2 5d 48 7f f5    	vpermt2ps zmm22,zmm4,zmm5
  a635c4:	62 32 15 40 b8 cc    	vfmadd231ps zmm9,zmm29,zmm20
  a635ca:	62 e1 7c 48 10 61 07 	vmovups zmm20,ZMMWORD PTR [rcx+0x1c0]
  a635d1:	62 61 7c 48 10 69 0a 	vmovups zmm29,ZMMWORD PTR [rcx+0x280]
  a635d8:	62 e2 65 48 7f dd    	vpermt2ps zmm19,zmm3,zmm5
  a635de:	62 91 74 40 59 ec    	vmulps zmm5,zmm17,zmm28
  a635e4:	62 b2 3d 40 bc ec    	vfnmadd231ps zmm5,zmm24,zmm20
  a635ea:	62 01 3c 40 59 c4    	vmulps zmm24,zmm24,zmm28
  a635f0:	62 61 7c 48 10 61 03 	vmovups zmm28,ZMMWORD PTR [rcx+0xc0]
  a635f7:	62 22 5d 40 b8 c1    	vfmadd231ps zmm24,zmm20,zmm17
  a635fd:	62 e1 7c 48 10 49 0b 	vmovups zmm17,ZMMWORD PTR [rcx+0x2c0]
  a63604:	62 81 7c 40 59 e5    	vmulps zmm20,zmm16,zmm29
  a6360a:	62 a2 45 40 bc e1    	vfnmadd231ps zmm20,zmm23,zmm17
  a63610:	62 81 44 40 59 fd    	vmulps zmm23,zmm23,zmm29
  a63616:	62 41 0c 48 59 ec    	vmulps zmm29,zmm14,zmm12
  a6361c:	62 a2 75 40 b8 f8    	vfmadd231ps zmm23,zmm17,zmm16
  a63622:	62 21 6c 40 58 f5    	vaddps zmm30,zmm18,zmm21
  a63628:	62 02 4d 40 bc ec    	vfnmadd231ps zmm29,zmm22,zmm28
  a6362e:	62 01 5c 40 58 cd    	vaddps zmm25,zmm20,zmm29
  a63634:	62 51 4c 40 59 e4    	vmulps zmm12,zmm22,zmm12
  a6363a:	62 c1 04 40 58 f1    	vaddps zmm22,zmm31,zmm9
  a63640:	62 52 1d 40 b8 e6    	vfmadd231ps zmm12,zmm28,zmm14
  a63646:	62 41 44 40 58 e4    	vaddps zmm28,zmm23,zmm12
  a6364c:	62 e1 7c 48 28 c7    	vmovaps zmm16,zmm7
  a63652:	62 c2 0d 40 ac c7    	vfnmadd213ps zmm16,zmm30,zmm15
  a63658:	62 51 04 40 5c c9    	vsubps zmm9,zmm31,zmm9
  a6365e:	62 61 7c 48 28 ff    	vmovaps zmm31,zmm7
  a63664:	62 62 35 40 ac fd    	vfnmadd213ps zmm31,zmm25,zmm5
  a6366a:	62 51 34 48 59 c8    	vmulps zmm9,zmm9,zmm8
  a63670:	62 51 44 40 5c e4    	vsubps zmm12,zmm23,zmm12
  a63676:	62 51 1c 48 59 e0    	vmulps zmm12,zmm12,zmm8
  a6367c:	62 e1 7c 48 28 cf    	vmovaps zmm17,zmm7
  a63682:	62 a2 4d 40 ac cb    	vfnmadd213ps zmm17,zmm22,zmm19
  a63688:	62 11 54 28 58 f1    	vaddps ymm14,ymm5,ymm25
  a6368e:	62 f1 7c 48 28 ef    	vmovaps zmm5,zmm7
  a63694:	62 92 1d 40 ac e8    	vfnmadd213ps zmm5,zmm28,zmm24
  a6369a:	62 11 04 28 58 fe    	vaddps ymm15,ymm15,ymm30
  a636a0:	62 c1 04 28 58 fe    	vaddps ymm23,ymm15,ymm14
  a636a6:	62 01 3c 00 58 c4    	vaddps xmm24,xmm24,xmm28
  a636ac:	62 a1 4c 00 58 db    	vaddps xmm19,xmm22,xmm19
  a636b2:	62 81 64 00 58 f0    	vaddps xmm22,xmm19,xmm24
  a636b8:	62 a2 15 28 7f f7    	vpermt2ps ymm22,ymm13,ymm23
  a636be:	62 e1 7c 08 11 34 16 	vmovups XMMWORD PTR [rsi+rdx*1],xmm22
  a636c5:	62 c1 04 20 58 fc    	vaddps ymm23,ymm31,ymm12
  a636cb:	62 a3 7d 28 19 f6 01 	vextractf32x4 xmm22,ymm22,0x1
  a636d2:	62 41 7c 20 58 c9    	vaddps ymm25,ymm16,ymm9
  a636d8:	62 81 5c 00 5c e5    	vsubps xmm20,xmm20,xmm29
  a636de:	62 c1 5c 00 59 e0    	vmulps xmm20,xmm20,xmm8
  a636e4:	62 e1 7c 08 13 74 16 	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm22
  a636eb:	02 
  a636ec:	62 a1 54 08 5c f4    	vsubps xmm22,xmm5,xmm20
  a636f2:	62 a1 6c 00 5c d5    	vsubps xmm18,xmm18,xmm21
  a636f8:	62 c1 6c 00 59 d0    	vmulps xmm18,xmm18,xmm8
  a636fe:	62 a1 34 20 5c ef    	vsubps ymm21,ymm25,ymm23
  a63704:	62 21 74 00 5c e2    	vsubps xmm28,xmm17,xmm18
  a6370a:	62 51 04 20 5c e4    	vsubps ymm12,ymm31,ymm12
  a63710:	62 21 1c 00 5c ee    	vsubps xmm29,xmm28,xmm22
  a63716:	62 22 15 28 7f ed    	vpermt2ps ymm29,ymm13,ymm21
  a6371c:	62 51 7c 20 5c c9    	vsubps ymm9,ymm16,ymm9
  a63722:	62 61 7c 08 11 ac 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm29
  a63729:	18 00 00 00 
  a6372d:	62 23 7d 28 19 e8 01 	vextractf32x4 xmm16,ymm29,0x1
  a63734:	62 e1 7c 08 13 44 16 	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm16
  a6373b:	05 
  a6373c:	62 b1 54 08 58 ec    	vaddps xmm5,xmm5,xmm20
  a63742:	62 c1 34 28 58 c4    	vaddps ymm16,ymm9,ymm12
  a63748:	62 a1 6c 00 58 c9    	vaddps xmm17,xmm18,xmm17
  a6374e:	62 e1 74 00 58 d5    	vaddps xmm18,xmm17,xmm5
  a63754:	62 a2 15 28 7f d0    	vpermt2ps ymm18,ymm13,ymm16
  a6375a:	62 e1 7c 08 11 54 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm18
  a63761:	03 
  a63762:	62 a3 7d 28 19 d0 01 	vextractf32x4 xmm16,ymm18,0x1
  a63769:	62 e1 7c 08 13 44 16 	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm16
  a63770:	08 
  a63771:	c4 41 04 5c f6       	vsubps ymm14,ymm15,ymm14
  a63776:	62 11 64 00 5c f8    	vsubps xmm15,xmm19,xmm24
  a6377c:	62 52 15 28 7f fe    	vpermt2ps ymm15,ymm13,ymm14
  a63782:	c4 43 7d 19 fe 01    	vextractf128 xmm14,ymm15,0x1
  a63788:	c5 78 13 74 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm14
  a6378e:	62 31 34 20 58 f7    	vaddps ymm14,ymm25,ymm23
  a63794:	62 a1 1c 00 58 c6    	vaddps xmm16,xmm28,xmm22
  a6379a:	c5 78 11 7c 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm15
  a637a0:	62 c2 15 28 7f c6    	vpermt2ps ymm16,ymm13,ymm14
  a637a6:	62 e1 7c 08 11 44 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm16
  a637ad:	06 
  a637ae:	62 c3 7d 28 19 c6 01 	vextractf32x4 xmm14,ymm16,0x1
  a637b5:	c5 78 13 74 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm14
  a637bb:	c4 41 34 5c cc       	vsubps ymm9,ymm9,ymm12
  a637c0:	62 f1 74 00 5c ed    	vsubps xmm5,xmm17,xmm5
  a637c6:	62 d2 15 28 7f e9    	vpermt2ps ymm5,ymm13,ymm9
  a637cc:	c5 f8 11 6c 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm5
  a637d2:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  a637d8:	c5 f8 13 ac 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm5
  a637df:	00 00 
  a637e1:	48 81 c2 90 00 00 00 	add    rdx,0x90
  a637e8:	48 39 d0             	cmp    rax,rdx
  a637eb:	0f 85 ff fa ff ff    	jne    a632f0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0xb0>
  a637f1:	48 89 ec             	mov    rsp,rbp
  a637f4:	5d                   	pop    rbp
  a637f5:	c5 f8 77             	vzeroupper
  a637f8:	c3                   	ret
