
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a46180 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a46180:	55                   	push   rbp
  a46181:	48 89 e5             	mov    rbp,rsp
  a46184:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a46188:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a4618f:	62 f1 7c 48 28 05 e7 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff680de7]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a46196:	0d 68 ff 
  a46199:	62 f1 7c 48 28 0d 1d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff680e1d]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a461a0:	0e 68 ff 
  a461a3:	48 c1 e2 05          	shl    rdx,0x5
  a461a7:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a461ab:	31 d2                	xor    edx,edx
  a461ad:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a461b2:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a461b7:	c4 41 30 57 c9       	vxorps xmm9,xmm9,xmm9
  a461bc:	62 52 7d 48 7f c9    	vpermt2ps zmm9,zmm0,zmm9
  a461c2:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  a461c7:	62 52 75 48 7f d2    	vpermt2ps zmm10,zmm1,zmm10
  a461cd:	62 72 7d 48 18 1d 41 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff62f141]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a461d4:	f1 62 ff 
  a461d7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  a461de:	00 00 
  a461e0:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a461e5:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a461ea:	62 f1 7c 48 10 34 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1]
  a461f1:	c5 fb 10 7c 17 40    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x40]
  a461f7:	62 71 7c 48 28 ee    	vmovaps zmm13,zmm6
  a461fd:	62 f1 7c 48 28 0d 39 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff64c039]        # 92240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f6f0>
  a46204:	c0 64 ff 
  a46207:	62 f2 75 48 7f f7    	vpermt2ps zmm6,zmm1,zmm7
  a4620d:	62 71 7c 48 10 b4 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x48]
  a46214:	48 00 00 00 
  a46218:	c5 7b 10 bc 17 88 00 	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x88]
  a4621f:	00 00 
  a46221:	62 c1 7c 48 28 c6    	vmovaps zmm16,zmm14
  a46227:	62 f1 7c 48 28 05 cf 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff64bfcf]        # 92200 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f6b0>
  a4622e:	bf 64 ff 
  a46231:	62 72 7d 48 7f ef    	vpermt2ps zmm13,zmm0,zmm7
  a46237:	62 52 75 48 7f f7    	vpermt2ps zmm14,zmm1,zmm15
  a4623d:	62 f1 7c 48 10 bc 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x90]
  a46244:	90 00 00 00 
  a46248:	62 e1 ff 08 10 4c 17 	vmovsd xmm17,QWORD PTR [rdi+rdx*1+0xd0]
  a4624f:	1a 
  a46250:	62 c2 7d 48 7f c7    	vpermt2ps zmm16,zmm0,zmm15
  a46256:	62 71 7c 48 28 ff    	vmovaps zmm15,zmm7
  a4625c:	62 b2 75 48 7f f9    	vpermt2ps zmm7,zmm1,zmm17
  a46262:	62 e1 7c 48 10 94 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0xd8]
  a46269:	d8 00 00 00 
  a4626d:	62 32 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm17
  a46273:	62 e1 ff 08 10 4c 17 	vmovsd xmm17,QWORD PTR [rdi+rdx*1+0x118]
  a4627a:	23 
  a4627b:	62 a1 7c 48 28 e2    	vmovaps zmm20,zmm18
  a46281:	62 a2 75 48 7f d1    	vpermt2ps zmm18,zmm1,zmm17
  a46287:	62 a2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm17
  a4628d:	62 e1 4c 48 58 cf    	vaddps zmm17,zmm6,zmm7
  a46293:	62 a1 0c 48 58 ea    	vaddps zmm21,zmm14,zmm18
  a46299:	62 c1 14 48 58 ff    	vaddps zmm23,zmm13,zmm15
  a4629f:	62 21 74 40 58 c5    	vaddps zmm24,zmm17,zmm21
  a462a5:	62 21 7c 40 58 cc    	vaddps zmm25,zmm16,zmm20
  a462ab:	62 f1 4c 48 5c f7    	vsubps zmm6,zmm6,zmm7
  a462b1:	62 b1 7c 40 5c fc    	vsubps zmm7,zmm16,zmm20
  a462b7:	62 01 44 40 58 e9    	vaddps zmm29,zmm23,zmm25
  a462bd:	62 e1 4c 48 58 c7    	vaddps zmm16,zmm6,zmm7
  a462c3:	62 51 14 48 5c ef    	vsubps zmm13,zmm13,zmm15
  a462c9:	62 51 6c 40 5c f6    	vsubps zmm14,zmm18,zmm14
  a462cf:	62 c1 0c 48 58 f5    	vaddps zmm22,zmm14,zmm13
  a462d5:	62 31 74 40 5c fd    	vsubps zmm15,zmm17,zmm21
  a462db:	62 01 44 40 5c f1    	vsubps zmm30,zmm23,zmm25
  a462e1:	62 f1 4c 48 5c f7    	vsubps zmm6,zmm6,zmm7
  a462e7:	62 51 14 48 5c ee    	vsubps zmm13,zmm13,zmm14
  a462ed:	62 91 7c 48 28 f8    	vmovaps zmm7,zmm24
  a462f3:	62 f1 7c 48 28 0d 83 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff680c83]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a462fa:	0c 68 ff 
  a462fd:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a46301:	62 f2 75 48 7f fd    	vpermt2ps zmm7,zmm1,zmm5
  a46307:	62 f1 7c 48 28 1d af 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff680caf]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a4630e:	0c 68 ff 
  a46311:	62 62 65 48 7f c5    	vpermt2ps zmm24,zmm3,zmm5
  a46317:	62 31 7c 48 28 f0    	vmovaps zmm14,zmm16
  a4631d:	62 e2 65 48 7f c5    	vpermt2ps zmm16,zmm3,zmm5
  a46323:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a46329:	62 e2 75 48 7f cd    	vpermt2ps zmm17,zmm1,zmm5
  a4632f:	62 72 75 48 7f f5    	vpermt2ps zmm14,zmm1,zmm5
  a46335:	62 72 65 48 7f fd    	vpermt2ps zmm15,zmm3,zmm5
  a4633b:	62 e1 7c 48 28 d6    	vmovaps zmm18,zmm6
  a46341:	62 f2 65 48 7f f5    	vpermt2ps zmm6,zmm3,zmm5
  a46347:	62 e2 75 48 7f d5    	vpermt2ps zmm18,zmm1,zmm5
  a4634d:	62 e1 7c 48 28 ef    	vmovaps zmm21,zmm7
  a46353:	62 f1 7c 48 28 15 a3 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff680ba3]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a4635a:	0b 68 ff 
  a4635d:	62 c2 6d 48 7f e9    	vpermt2ps zmm21,zmm2,zmm9
  a46363:	62 f1 7c 48 28 25 d3 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff680bd3]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a4636a:	0b 68 ff 
  a4636d:	62 d2 5d 48 7f f9    	vpermt2ps zmm7,zmm4,zmm9
  a46373:	62 41 7c 48 28 fe    	vmovaps zmm31,zmm14
  a46379:	62 52 5d 48 7f f1    	vpermt2ps zmm14,zmm4,zmm9
  a4637f:	62 a1 7c 48 28 f9    	vmovaps zmm23,zmm17
  a46385:	62 c2 5d 48 7f c9    	vpermt2ps zmm17,zmm4,zmm9
  a4638b:	62 c2 6d 48 7f f9    	vpermt2ps zmm23,zmm2,zmm9
  a46391:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a46397:	62 c2 5d 48 7f d1    	vpermt2ps zmm18,zmm4,zmm9
  a4639d:	62 42 6d 48 7f c2    	vpermt2ps zmm24,zmm2,zmm10
  a463a3:	62 42 6d 48 7f f9    	vpermt2ps zmm31,zmm2,zmm9
  a463a9:	62 c2 6d 48 7f c2    	vpermt2ps zmm16,zmm2,zmm10
  a463af:	62 52 6d 48 7f fa    	vpermt2ps zmm15,zmm2,zmm10
  a463b5:	62 c1 bd 40 14 e7    	vunpcklpd zmm20,zmm24,zmm15
  a463bb:	62 d2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm9
  a463c1:	62 d2 6d 48 7f f2    	vpermt2ps zmm6,zmm2,zmm10
  a463c7:	62 f1 fd 40 14 f6    	vunpcklpd zmm6,zmm16,zmm6
  a463cd:	62 21 d5 40 14 cf    	vunpcklpd zmm25,zmm21,zmm23
  a463d3:	62 21 d5 40 15 df    	vunpckhpd zmm27,zmm21,zmm23
  a463d9:	62 a1 c5 48 14 f9    	vunpcklpd zmm23,zmm7,zmm17
  a463df:	62 21 c5 48 15 c1    	vunpckhpd zmm24,zmm7,zmm17
  a463e5:	62 b1 8d 48 14 fa    	vunpcklpd zmm7,zmm14,zmm18
  a463eb:	62 31 8d 48 15 f2    	vunpckhpd zmm14,zmm14,zmm18
  a463f1:	62 21 7c 48 28 d7    	vmovaps zmm26,zmm23
  a463f7:	62 01 7c 48 28 e0    	vmovaps zmm28,zmm24
  a463fd:	62 11 7c 48 28 fd    	vmovaps zmm15,zmm29
  a46403:	62 e1 7c 48 28 1d f3 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff6809f3]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a4640a:	09 68 ff 
  a4640d:	62 e2 65 40 7f e6    	vpermt2ps zmm20,zmm19,zmm6
  a46413:	62 72 75 48 7f fd    	vpermt2ps zmm15,zmm1,zmm5
  a46419:	62 62 65 48 7f ed    	vpermt2ps zmm29,zmm3,zmm5
  a4641f:	62 b1 7c 48 28 f6    	vmovaps zmm6,zmm22
  a46425:	62 e1 85 40 14 c0    	vunpcklpd zmm16,zmm31,zmm0
  a4642b:	62 f2 75 48 7f f5    	vpermt2ps zmm6,zmm1,zmm5
  a46431:	62 e2 65 48 7f f5    	vpermt2ps zmm22,zmm3,zmm5
  a46437:	62 81 7c 48 28 ce    	vmovaps zmm17,zmm30
  a4643d:	62 f1 85 40 15 c0    	vunpckhpd zmm0,zmm31,zmm0
  a46443:	62 e2 75 48 7f cd    	vpermt2ps zmm17,zmm1,zmm5
  a46449:	62 62 65 48 7f f5    	vpermt2ps zmm30,zmm3,zmm5
  a4644f:	62 c1 7c 48 28 d5    	vmovaps zmm18,zmm13
  a46455:	62 62 65 40 7f d7    	vpermt2ps zmm26,zmm19,zmm7
  a4645b:	62 e2 75 48 7f d5    	vpermt2ps zmm18,zmm1,zmm5
  a46461:	62 72 65 48 7f ed    	vpermt2ps zmm13,zmm3,zmm5
  a46467:	62 d1 7c 48 28 df    	vmovaps zmm3,zmm15
  a4646d:	62 71 7c 48 28 25 c9 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6809c9]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a46474:	09 68 ff 
  a46477:	62 e2 1d 48 7f ff    	vpermt2ps zmm23,zmm12,zmm7
  a4647d:	62 d2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm9
  a46483:	62 52 5d 48 7f f9    	vpermt2ps zmm15,zmm4,zmm9
  a46489:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a4648f:	62 42 65 40 7f e6    	vpermt2ps zmm28,zmm19,zmm14
  a46495:	62 d2 6d 48 7f f9    	vpermt2ps zmm7,zmm2,zmm9
  a4649b:	62 d2 5d 48 7f f1    	vpermt2ps zmm6,zmm4,zmm9
  a464a1:	62 b1 7c 48 28 c9    	vmovaps zmm1,zmm17
  a464a7:	62 42 1d 48 7f c6    	vpermt2ps zmm24,zmm12,zmm14
  a464ad:	62 d2 6d 48 7f c9    	vpermt2ps zmm1,zmm2,zmm9
  a464b3:	62 c2 5d 48 7f c9    	vpermt2ps zmm17,zmm4,zmm9
  a464b9:	62 b1 7c 48 28 ea    	vmovaps zmm5,zmm18
  a464bf:	62 81 7c 48 28 e9    	vmovaps zmm21,zmm25
  a464c5:	62 42 6d 48 7f ea    	vpermt2ps zmm29,zmm2,zmm10
  a464cb:	62 42 6d 48 7f f2    	vpermt2ps zmm30,zmm2,zmm10
  a464d1:	62 01 95 40 14 f6    	vunpcklpd zmm30,zmm29,zmm30
  a464d7:	62 01 7c 48 28 fb    	vmovaps zmm31,zmm27
  a464dd:	62 d2 6d 48 7f e9    	vpermt2ps zmm5,zmm2,zmm9
  a464e3:	62 c2 5d 48 7f d1    	vpermt2ps zmm18,zmm4,zmm9
  a464e9:	62 c2 6d 48 7f f2    	vpermt2ps zmm22,zmm2,zmm10
  a464ef:	62 a2 65 40 7f e8    	vpermt2ps zmm21,zmm19,zmm16
  a464f5:	62 52 6d 48 7f ea    	vpermt2ps zmm13,zmm2,zmm10
  a464fb:	62 41 cd 40 14 ed    	vunpcklpd zmm29,zmm22,zmm13
  a46501:	62 e1 e5 48 14 f1    	vunpcklpd zmm22,zmm3,zmm1
  a46507:	62 22 1d 48 7f c8    	vpermt2ps zmm25,zmm12,zmm16
  a4650d:	62 71 e5 48 15 f1    	vunpckhpd zmm14,zmm3,zmm1
  a46513:	62 f1 c5 48 14 cd    	vunpcklpd zmm1,zmm7,zmm5
  a46519:	62 f1 c5 48 15 dd    	vunpckhpd zmm3,zmm7,zmm5
  a4651f:	62 62 65 40 7f f8    	vpermt2ps zmm31,zmm19,zmm0
  a46525:	62 31 85 48 14 e9    	vunpcklpd zmm13,zmm15,zmm17
  a4652b:	62 a1 85 48 15 c9    	vunpckhpd zmm17,zmm15,zmm17
  a46531:	62 b1 cd 48 14 ea    	vunpcklpd zmm5,zmm6,zmm18
  a46537:	62 62 1d 48 7f d8    	vpermt2ps zmm27,zmm12,zmm0
  a4653d:	62 b1 cd 48 15 c2    	vunpckhpd zmm0,zmm6,zmm18
  a46543:	62 b1 7c 48 28 f6    	vmovaps zmm6,zmm22
  a46549:	62 e2 1d 48 7f f1    	vpermt2ps zmm22,zmm12,zmm1
  a4654f:	62 c1 7c 48 28 d6    	vmovaps zmm18,zmm14
  a46555:	62 72 1d 48 7f f3    	vpermt2ps zmm14,zmm12,zmm3
  a4655b:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a46561:	62 72 1d 48 7f ed    	vpermt2ps zmm13,zmm12,zmm5
  a46567:	62 f2 65 40 7f fd    	vpermt2ps zmm7,zmm19,zmm5
  a4656d:	62 b1 7c 48 28 e9    	vmovaps zmm5,zmm17
  a46573:	62 f2 65 40 7f e8    	vpermt2ps zmm5,zmm19,zmm0
  a46579:	62 e2 1d 48 7f c8    	vpermt2ps zmm17,zmm12,zmm0
  a4657f:	62 f2 65 40 7f f1    	vpermt2ps zmm6,zmm19,zmm1
  a46585:	62 02 65 40 7f f5    	vpermt2ps zmm30,zmm19,zmm29
  a4658b:	62 f1 7c 48 10 41 02 	vmovups zmm0,ZMMWORD PTR [rcx+0x80]
  a46592:	62 f1 7c 48 10 49 06 	vmovups zmm1,ZMMWORD PTR [rcx+0x180]
  a46599:	62 e2 65 40 7f d3    	vpermt2ps zmm18,zmm19,zmm3
  a4659f:	62 f1 7c 48 10 59 07 	vmovups zmm3,ZMMWORD PTR [rcx+0x1c0]
  a465a6:	62 61 24 40 59 e9    	vmulps zmm29,zmm27,zmm1
  a465ac:	62 71 0c 48 59 f9    	vmulps zmm15,zmm14,zmm1
  a465b2:	62 62 0d 48 bc eb    	vfnmadd231ps zmm29,zmm14,zmm3
  a465b8:	62 f1 7c 48 10 49 0c 	vmovups zmm1,ZMMWORD PTR [rcx+0x300]
  a465bf:	62 12 65 48 b8 fb    	vfmadd231ps zmm15,zmm3,zmm27
  a465c5:	62 f1 7c 48 10 59 0d 	vmovups zmm3,ZMMWORD PTR [rcx+0x340]
  a465cc:	62 71 1c 40 59 f1    	vmulps zmm14,zmm28,zmm1
  a465d2:	62 72 55 48 bc f3    	vfnmadd231ps zmm14,zmm5,zmm3
  a465d8:	62 f1 54 48 59 c9    	vmulps zmm1,zmm5,zmm1
  a465de:	62 f1 7c 48 10 69 03 	vmovups zmm5,ZMMWORD PTR [rcx+0xc0]
  a465e5:	62 92 65 48 b8 cc    	vfmadd231ps zmm1,zmm3,zmm28
  a465eb:	62 f1 7c 48 10 59 04 	vmovups zmm3,ZMMWORD PTR [rcx+0x100]
  a465f2:	62 61 34 40 59 d8    	vmulps zmm27,zmm25,zmm0
  a465f8:	62 61 4c 40 59 e0    	vmulps zmm28,zmm22,zmm0
  a465fe:	62 62 4d 40 bc dd    	vfnmadd231ps zmm27,zmm22,zmm5
  a46604:	62 f1 7c 48 10 41 08 	vmovups zmm0,ZMMWORD PTR [rcx+0x200]
  a4660b:	62 02 55 48 b8 e1    	vfmadd231ps zmm28,zmm5,zmm25
  a46611:	62 f1 7c 48 10 69 09 	vmovups zmm5,ZMMWORD PTR [rcx+0x240]
  a46618:	62 e1 2c 40 59 c0    	vmulps zmm16,zmm26,zmm0
  a4661e:	62 e2 45 48 bc c5    	vfnmadd231ps zmm16,zmm7,zmm5
  a46624:	62 f1 44 48 59 c0    	vmulps zmm0,zmm7,zmm0
  a4662a:	62 f1 7c 48 10 79 0e 	vmovups zmm7,ZMMWORD PTR [rcx+0x380]
  a46631:	62 92 55 48 b8 c2    	vfmadd231ps zmm0,zmm5,zmm26
  a46637:	62 f1 7c 48 10 69 0f 	vmovups zmm5,ZMMWORD PTR [rcx+0x3c0]
  a4663e:	62 e1 3c 40 59 f7    	vmulps zmm22,zmm24,zmm7
  a46644:	62 f1 74 40 59 ff    	vmulps zmm7,zmm17,zmm7
  a4664a:	62 e2 75 40 bc f5    	vfnmadd231ps zmm22,zmm17,zmm5
  a46650:	62 61 7c 48 10 49 05 	vmovups zmm25,ZMMWORD PTR [rcx+0x140]
  a46657:	62 92 55 48 b8 f8    	vfmadd231ps zmm7,zmm5,zmm24
  a4665d:	62 f1 7c 48 10 69 0a 	vmovups zmm5,ZMMWORD PTR [rcx+0x280]
  a46664:	62 e1 04 40 59 cb    	vmulps zmm17,zmm31,zmm3
  a4666a:	62 82 6d 40 bc c9    	vfnmadd231ps zmm17,zmm18,zmm25
  a46670:	62 e1 6c 40 59 d3    	vmulps zmm18,zmm18,zmm3
  a46676:	62 f1 7c 48 10 59 0b 	vmovups zmm3,ZMMWORD PTR [rcx+0x2c0]
  a4667d:	62 82 35 40 b8 d7    	vfmadd231ps zmm18,zmm25,zmm31
  a46683:	62 61 7c 48 10 41 10 	vmovups zmm24,ZMMWORD PTR [rcx+0x400]
  a4668a:	62 61 44 40 59 d5    	vmulps zmm26,zmm23,zmm5
  a46690:	62 f1 14 48 59 ed    	vmulps zmm5,zmm13,zmm5
  a46696:	62 62 15 48 bc d3    	vfnmadd231ps zmm26,zmm13,zmm3
  a4669c:	62 71 7c 48 10 69 11 	vmovups zmm13,ZMMWORD PTR [rcx+0x440]
  a466a3:	62 b2 65 48 b8 ef    	vfmadd231ps zmm5,zmm3,zmm23
  a466a9:	62 91 5c 40 59 d8    	vmulps zmm3,zmm20,zmm24
  a466af:	62 c1 14 40 58 fe    	vaddps zmm23,zmm29,zmm14
  a466b5:	62 d2 0d 40 bc dd    	vfnmadd231ps zmm3,zmm30,zmm13
  a466bb:	62 01 0c 40 59 f0    	vmulps zmm30,zmm30,zmm24
  a466c1:	62 22 15 48 b8 f4    	vfmadd231ps zmm30,zmm13,zmm20
  a466c7:	62 21 54 40 58 cf    	vaddps zmm25,zmm21,zmm23
  a466cd:	62 31 7c 40 58 ee    	vaddps zmm13,zmm16,zmm22
  a466d3:	62 e1 04 48 58 d9    	vaddps zmm19,zmm15,zmm1
  a466d9:	62 f2 7d 48 18 15 7d 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff62ed7d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a466e0:	ed 62 ff 
  a466e3:	62 a2 6d 48 bc ef    	vfnmadd231ps zmm21,zmm2,zmm23
  a466e9:	62 c1 24 40 58 e5    	vaddps zmm20,zmm27,zmm13
  a466ef:	62 f1 04 48 5c c9    	vsubps zmm1,zmm15,zmm1
  a466f5:	62 71 2c 40 58 fb    	vaddps zmm15,zmm26,zmm3
  a466fb:	62 42 6d 48 bc dd    	vfnmadd231ps zmm27,zmm2,zmm13
  a46701:	62 71 7c 48 58 ef    	vaddps zmm13,zmm0,zmm7
  a46707:	62 f1 7c 48 5c c7    	vsubps zmm0,zmm0,zmm7
  a4670d:	62 41 1c 40 58 c5    	vaddps zmm24,zmm28,zmm13
  a46713:	62 42 6d 48 bc e5    	vfnmadd231ps zmm28,zmm2,zmm13
  a46719:	62 c1 74 40 58 ff    	vaddps zmm23,zmm17,zmm15
  a4671f:	62 a1 7c 40 5c f6    	vsubps zmm22,zmm16,zmm22
  a46725:	62 91 54 48 58 fe    	vaddps zmm7,zmm5,zmm30
  a4672b:	62 c2 6d 48 bc cf    	vfnmadd231ps zmm17,zmm2,zmm15
  a46731:	62 61 64 40 58 fe    	vaddps zmm31,zmm19,zmm6
  a46737:	62 91 54 48 5c ee    	vsubps zmm5,zmm5,zmm30
  a4673d:	62 71 6c 40 58 ef    	vaddps zmm13,zmm18,zmm7
  a46743:	62 e2 6d 48 bc d7    	vfnmadd231ps zmm18,zmm2,zmm7
  a46749:	62 a1 5c 40 58 c7    	vaddps zmm16,zmm20,zmm23
  a4674f:	62 72 7d 48 18 25 7b 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff62eb7b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a46756:	eb 62 ff 
  a46759:	62 d1 74 48 59 cc    	vmulps zmm1,zmm1,zmm12
  a4675f:	62 d1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm12
  a46765:	62 f1 2c 40 5c db    	vsubps zmm3,zmm26,zmm3
  a4676b:	62 f1 54 40 58 f9    	vaddps zmm7,zmm21,zmm1
  a46771:	62 c1 4c 40 59 f4    	vmulps zmm22,zmm22,zmm12
  a46777:	62 d1 54 48 59 ec    	vmulps zmm5,zmm5,zmm12
  a4677d:	62 b2 6d 48 bc f3    	vfnmadd231ps zmm6,zmm2,zmm19
  a46783:	62 e1 24 40 58 d8    	vaddps zmm19,zmm27,zmm0
  a46789:	62 41 14 40 5c ee    	vsubps zmm29,zmm29,zmm14
  a4678f:	62 61 74 40 58 f5    	vaddps zmm30,zmm17,zmm5
  a46795:	62 71 54 40 5c f9    	vsubps zmm15,zmm21,zmm1
  a4679b:	62 b1 1c 40 5c ce    	vsubps zmm1,zmm28,zmm22
  a467a1:	62 d1 64 48 59 dc    	vmulps zmm3,zmm3,zmm12
  a467a7:	62 f1 24 40 5c c0    	vsubps zmm0,zmm27,zmm0
  a467ad:	62 71 6c 40 5c f3    	vsubps zmm14,zmm18,zmm3
  a467b3:	62 21 1c 40 58 e6    	vaddps zmm28,zmm28,zmm22
  a467b9:	62 41 0c 48 59 d3    	vmulps zmm26,zmm14,zmm11
  a467bf:	62 72 7d 48 18 05 13 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff62ed13]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a467c6:	ed 62 ff 
  a467c9:	62 42 0d 40 b8 d0    	vfmadd231ps zmm26,zmm30,zmm8
  a467cf:	62 51 0c 48 59 f0    	vmulps zmm14,zmm14,zmm8
  a467d5:	62 12 25 48 bc f6    	vfnmadd231ps zmm14,zmm11,zmm30
  a467db:	62 f2 7d 48 18 25 83 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff62ee83]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a467e2:	ee 62 ff 
  a467e5:	62 61 74 48 59 dc    	vmulps zmm27,zmm1,zmm4
  a467eb:	62 e2 7d 48 18 2d e3 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff62ece3]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a467f2:	ec 62 ff 
  a467f5:	62 22 65 40 b8 dd    	vfmadd231ps zmm27,zmm19,zmm21
  a467fb:	62 21 74 48 59 f5    	vmulps zmm30,zmm1,zmm21
  a46801:	62 22 5d 48 bc f3    	vfnmadd231ps zmm30,zmm4,zmm19
  a46807:	62 d1 3c 40 58 cd    	vaddps zmm1,zmm24,zmm13
  a4680d:	62 c1 14 40 59 dc    	vmulps zmm19,zmm29,zmm12
  a46813:	62 f1 74 40 5c ed    	vsubps zmm5,zmm17,zmm5
  a46819:	62 b1 4c 48 5c e3    	vsubps zmm4,zmm6,zmm19
  a4681f:	62 f1 6c 40 58 db    	vaddps zmm3,zmm18,zmm3
  a46825:	62 c1 1c 40 59 eb    	vmulps zmm21,zmm28,zmm11
  a4682b:	62 e1 64 40 58 de    	vaddps zmm19,zmm19,zmm6
  a46831:	62 c2 7d 48 b8 e8    	vfmadd231ps zmm21,zmm0,zmm8
  a46837:	62 f2 7d 48 18 35 af 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff62ecaf]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a4683e:	ec 62 ff 
  a46841:	62 e1 64 48 59 f6    	vmulps zmm22,zmm3,zmm6
  a46847:	62 e2 7d 48 18 15 a7 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff62eda7]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a4684e:	ed 62 ff 
  a46851:	62 a2 55 48 bc f2    	vfnmadd231ps zmm22,zmm5,zmm18
  a46857:	62 c1 1c 40 59 c8    	vmulps zmm17,zmm28,zmm8
  a4685d:	62 e2 25 48 bc c8    	vfnmadd231ps zmm17,zmm11,zmm0
  a46863:	62 a1 64 48 59 d2    	vmulps zmm18,zmm3,zmm18
  a46869:	62 e2 4d 48 b8 d5    	vfmadd231ps zmm18,zmm6,zmm5
  a4686f:	62 61 7c 48 28 e2    	vmovaps zmm28,zmm2
  a46875:	62 02 7d 40 ac e1    	vfnmadd213ps zmm28,zmm16,zmm25
  a4687b:	62 61 7c 48 28 ea    	vmovaps zmm29,zmm2
  a46881:	62 02 75 48 ac ef    	vfnmadd213ps zmm29,zmm1,zmm31
  a46887:	62 b1 34 20 58 c0    	vaddps ymm0,ymm25,ymm16
  a4688d:	62 91 24 40 58 da    	vaddps zmm3,zmm27,zmm26
  a46893:	62 f1 04 00 58 c9    	vaddps xmm1,xmm31,xmm1
  a46899:	62 61 7c 48 28 ca    	vmovaps zmm25,zmm2
  a4689f:	c5 7c 28 05 39 09 63 	vmovaps ymm8,YMMWORD PTR [rip+0xffffffffff630939]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a468a6:	ff 
  a468a7:	62 f2 3d 28 7f c8    	vpermt2ps ymm1,ymm8,ymm0
  a468ad:	62 d1 0c 40 58 c6    	vaddps zmm0,zmm30,zmm14
  a468b3:	62 62 65 48 ac cf    	vfnmadd213ps zmm25,zmm3,zmm7
  a468b9:	c5 fc 11 0c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm1
  a468be:	62 61 7c 48 28 fa    	vmovaps zmm31,zmm2
  a468c4:	62 62 7d 48 ac fc    	vfnmadd213ps zmm31,zmm0,zmm4
  a468ca:	c5 c4 58 cb          	vaddps ymm1,ymm7,ymm3
  a468ce:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a468d4:	c5 d8 58 c0          	vaddps xmm0,xmm4,xmm0
  a468d8:	62 b1 54 40 58 de    	vaddps zmm3,zmm21,zmm22
  a468de:	62 d2 65 48 ac f7    	vfnmadd213ps zmm6,zmm3,zmm15
  a468e4:	c5 84 58 db          	vaddps ymm3,ymm15,ymm3
  a468e8:	62 b1 74 40 5c e2    	vsubps zmm4,zmm17,zmm18
  a468ee:	62 f2 3d 28 7f c1    	vpermt2ps ymm0,ymm8,ymm1
  a468f4:	62 b2 5d 48 ac d3    	vfnmadd213ps zmm2,zmm4,zmm19
  a468fa:	62 f1 64 00 58 cc    	vaddps xmm1,xmm19,xmm4
  a46900:	c5 fc 11 44 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm0
  a46906:	62 f2 3d 28 7f cb    	vpermt2ps ymm1,ymm8,ymm3
  a4690c:	62 d1 3c 20 5c c5    	vsubps ymm0,ymm24,ymm13
  a46912:	c5 9c 59 c0          	vmulps ymm0,ymm12,ymm0
  a46916:	c5 fc 11 4c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm1
  a4691c:	62 f1 1c 20 58 c8    	vaddps ymm1,ymm28,ymm0
  a46922:	62 b1 5c 20 5c df    	vsubps ymm3,ymm20,ymm23
  a46928:	c5 9c 59 db          	vmulps ymm3,ymm12,ymm3
  a4692c:	62 f1 14 00 5c e3    	vsubps xmm4,xmm29,xmm3
  a46932:	62 f2 3d 28 7f e1    	vpermt2ps ymm4,ymm8,ymm1
  a46938:	62 d1 0c 20 5c ce    	vsubps ymm1,ymm30,ymm14
  a4693e:	c5 9c 59 c9          	vmulps ymm1,ymm12,ymm1
  a46942:	c5 fc 11 64 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm4
  a46948:	62 f1 34 20 58 e1    	vaddps ymm4,ymm25,ymm1
  a4694e:	62 91 24 20 5c ea    	vsubps ymm5,ymm27,ymm26
  a46954:	c5 9c 59 ed          	vmulps ymm5,ymm12,ymm5
  a46958:	62 71 04 00 5c ed    	vsubps xmm13,xmm31,xmm5
  a4695e:	62 72 3d 28 7f ec    	vpermt2ps ymm13,ymm8,ymm4
  a46964:	62 b1 74 20 58 e2    	vaddps ymm4,ymm17,ymm18
  a4696a:	c5 9c 59 e4          	vmulps ymm4,ymm12,ymm4
  a4696e:	c5 7c 11 ac 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm13
  a46975:	00 00 
  a46977:	c5 4c 58 ec          	vaddps ymm13,ymm6,ymm4
  a4697b:	62 31 54 20 5c f6    	vsubps ymm14,ymm21,ymm22
  a46981:	c4 41 0c 59 f4       	vmulps ymm14,ymm14,ymm12
  a46986:	c4 41 68 5c fe       	vsubps xmm15,xmm2,xmm14
  a4698b:	62 52 3d 28 7f fd    	vpermt2ps ymm15,ymm8,ymm13
  a46991:	62 f1 1c 20 5c c0    	vsubps ymm0,ymm28,ymm0
  a46997:	62 f1 14 00 58 db    	vaddps xmm3,xmm29,xmm3
  a4699d:	c5 7c 11 bc 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm15
  a469a4:	00 00 
  a469a6:	62 f2 3d 28 7f d8    	vpermt2ps ymm3,ymm8,ymm0
  a469ac:	62 f1 34 20 5c c1    	vsubps ymm0,ymm25,ymm1
  a469b2:	62 f1 04 00 58 cd    	vaddps xmm1,xmm31,xmm5
  a469b8:	c5 fc 11 9c 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm3
  a469bf:	00 00 
  a469c1:	62 f2 3d 28 7f c8    	vpermt2ps ymm1,ymm8,ymm0
  a469c7:	c5 cc 5c c4          	vsubps ymm0,ymm6,ymm4
  a469cb:	c5 88 58 da          	vaddps xmm3,xmm14,xmm2
  a469cf:	c5 fc 11 8c 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm1
  a469d6:	00 00 
  a469d8:	62 f2 3d 28 7f d8    	vpermt2ps ymm3,ymm8,ymm0
  a469de:	c5 fc 11 9c 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm3
  a469e5:	00 00 
  a469e7:	48 81 c2 20 01 00 00 	add    rdx,0x120
  a469ee:	48 39 d0             	cmp    rax,rdx
  a469f1:	0f 85 e9 f7 ff ff    	jne    a461e0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x60>
  a469f7:	48 89 ec             	mov    rsp,rbp
  a469fa:	5d                   	pop    rbp
  a469fb:	c5 f8 77             	vzeroupper
  a469fe:	c3                   	ret
