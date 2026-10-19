
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000096b3c0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  96b3c0:	62 f1 fd 48 10 05 9e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff75b99e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  96b3c7:	b9 75 ff 
  96b3ca:	62 f1 fd 48 10 0d 14 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff75b914]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  96b3d1:	b9 75 ff 
  96b3d4:	62 f1 fd 48 10 15 4a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff75b94a]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  96b3db:	b9 75 ff 
  96b3de:	48 69 c2 f0 00 00 00 	imul   rax,rdx,0xf0
  96b3e5:	31 d2                	xor    edx,edx
  96b3e7:	62 f1 fd 48 28 1d 8f 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff71b38f]        # 86780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13c30>
  96b3ee:	b3 71 ff 
  96b3f1:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  96b3f5:	62 f2 fd 48 19 2d 59 	vbroadcastsd zmm5,QWORD PTR [rip+0xffffffffff709659]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  96b3fc:	96 70 ff 
  96b3ff:	62 f2 fd 48 19 35 0f 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff709c0f]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  96b406:	9c 70 ff 
  96b409:	62 f2 fd 48 19 3d b5 	vbroadcastsd zmm7,QWORD PTR [rip+0xffffffffff7093b5]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  96b410:	93 70 ff 
  96b413:	62 72 fd 48 19 05 b3 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff7097b3]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  96b41a:	97 70 ff 
  96b41d:	62 e2 fd 48 19 35 71 	vbroadcastsd zmm22,QWORD PTR [rip+0xffffffffff709671]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  96b424:	96 70 ff 
  96b427:	62 71 fd 48 28 15 8f 	vmovapd zmm10,ZMMWORD PTR [rip+0xffffffffff71b38f]        # 867c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13c70>
  96b42e:	b3 71 ff 
  96b431:	62 e2 fd 48 19 15 e5 	vbroadcastsd zmm18,QWORD PTR [rip+0xffffffffff7097e5]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  96b438:	97 70 ff 
  96b43b:	62 71 fd 48 28 25 bb 	vmovapd zmm12,ZMMWORD PTR [rip+0xffffffffff71b3bb]        # 86800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13cb0>
  96b442:	b3 71 ff 
  96b445:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  96b44c:	00 00 00 00 
  96b450:	c5 7b 12 6c 17 28    	vmovddup xmm13,QWORD PTR [rdi+rdx*1+0x28]
  96b456:	c4 63 11 0d 6c 17 20 	vblendpd xmm13,xmm13,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  96b45d:	01 
  96b45e:	c5 7d 10 34 17       	vmovupd ymm14,YMMWORD PTR [rdi+rdx*1]
  96b463:	c5 7d 10 7c 17 30    	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0x30]
  96b469:	62 e1 fd 28 10 44 17 	vmovupd ymm16,YMMWORD PTR [rdi+rdx*1+0x60]
  96b470:	03 
  96b471:	62 e1 fd 28 10 8c 17 	vmovupd ymm17,YMMWORD PTR [rdi+rdx*1+0x90]
  96b478:	90 00 00 00 
  96b47c:	62 53 0d 48 18 ed 02 	vinsertf32x4 zmm13,zmm14,xmm13,0x2
  96b483:	62 51 fd 48 28 f5    	vmovapd zmm14,zmm13
  96b489:	62 72 e5 48 7f f4    	vpermt2pd zmm14,zmm3,zmm4
  96b48f:	c5 7b 12 5c 17 58    	vmovddup xmm11,QWORD PTR [rdi+rdx*1+0x58]
  96b495:	62 72 ad 48 7f ec    	vpermt2pd zmm13,zmm10,zmm4
  96b49b:	c4 63 21 0d 5c 17 50 	vblendpd xmm11,xmm11,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  96b4a2:	01 
  96b4a3:	62 53 05 48 18 db 02 	vinsertf32x4 zmm11,zmm15,xmm11,0x2
  96b4aa:	62 c1 fd 48 28 db    	vmovapd zmm19,zmm11
  96b4b0:	62 e2 e5 48 7f dc    	vpermt2pd zmm19,zmm3,zmm4
  96b4b6:	c5 7b 12 bc 17 88 00 	vmovddup xmm15,QWORD PTR [rdi+rdx*1+0x88]
  96b4bd:	00 00 
  96b4bf:	62 72 ad 48 7f dc    	vpermt2pd zmm11,zmm10,zmm4
  96b4c5:	c4 63 01 0d bc 17 80 	vblendpd xmm15,xmm15,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  96b4cc:	00 00 00 01 
  96b4d0:	62 c3 7d 40 18 c7 02 	vinsertf32x4 zmm16,zmm16,xmm15,0x2
  96b4d7:	62 a1 fd 48 28 e0    	vmovapd zmm20,zmm16
  96b4dd:	62 e2 e5 48 7f e4    	vpermt2pd zmm20,zmm3,zmm4
  96b4e3:	c5 7b 12 bc 17 b8 00 	vmovddup xmm15,QWORD PTR [rdi+rdx*1+0xb8]
  96b4ea:	00 00 
  96b4ec:	62 e2 ad 48 7f c4    	vpermt2pd zmm16,zmm10,zmm4
  96b4f2:	c4 63 01 0d bc 17 b0 	vblendpd xmm15,xmm15,XMMWORD PTR [rdi+rdx*1+0xb0],0x1
  96b4f9:	00 00 00 01 
  96b4fd:	62 c3 75 40 18 cf 02 	vinsertf32x4 zmm17,zmm17,xmm15,0x2
  96b504:	62 a1 fd 48 28 e9    	vmovapd zmm21,zmm17
  96b50a:	62 e2 e5 48 7f ec    	vpermt2pd zmm21,zmm3,zmm4
  96b510:	62 e2 ad 48 7f cc    	vpermt2pd zmm17,zmm10,zmm4
  96b516:	c5 7d 10 bc 17 c0 00 	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0xc0]
  96b51d:	00 00 
  96b51f:	c5 7b 12 8c 17 e8 00 	vmovddup xmm9,QWORD PTR [rdi+rdx*1+0xe8]
  96b526:	00 00 
  96b528:	c4 63 31 0d 8c 17 e0 	vblendpd xmm9,xmm9,XMMWORD PTR [rdi+rdx*1+0xe0],0x1
  96b52f:	00 00 00 01 
  96b533:	62 53 05 48 18 c9 02 	vinsertf32x4 zmm9,zmm15,xmm9,0x2
  96b53a:	62 c1 fd 48 28 f9    	vmovapd zmm23,zmm9
  96b540:	62 e2 e5 48 7f fc    	vpermt2pd zmm23,zmm3,zmm4
  96b546:	62 72 ad 48 7f cc    	vpermt2pd zmm9,zmm10,zmm4
  96b54c:	62 21 e5 40 58 c7    	vaddpd zmm24,zmm19,zmm23
  96b552:	62 11 8d 48 58 f8    	vaddpd zmm15,zmm14,zmm24
  96b558:	62 21 dd 40 58 cd    	vaddpd zmm25,zmm20,zmm21
  96b55e:	62 01 85 48 58 d1    	vaddpd zmm26,zmm15,zmm25
  96b564:	62 41 a5 48 58 d9    	vaddpd zmm27,zmm11,zmm9
  96b56a:	62 11 95 48 58 fb    	vaddpd zmm15,zmm13,zmm27
  96b570:	62 21 fd 40 58 e1    	vaddpd zmm28,zmm16,zmm17
  96b576:	62 11 85 48 58 fc    	vaddpd zmm15,zmm15,zmm28
  96b57c:	62 61 fd 48 28 ed    	vmovapd zmm29,zmm5
  96b582:	62 42 bd 40 a8 ee    	vfmadd213pd zmm29,zmm24,zmm14
  96b588:	62 62 b5 40 bc ee    	vfnmadd231pd zmm29,zmm25,zmm6
  96b58e:	62 51 a5 48 5c c9    	vsubpd zmm9,zmm11,zmm9
  96b594:	62 31 fd 40 5c d9    	vsubpd zmm11,zmm16,zmm17
  96b59a:	62 e1 a5 48 59 c7    	vmulpd zmm16,zmm11,zmm7
  96b5a0:	62 c2 b5 48 b8 c0    	vfmadd231pd zmm16,zmm9,zmm8
  96b5a6:	62 a1 95 40 58 c8    	vaddpd zmm17,zmm29,zmm16
  96b5ac:	62 61 fd 48 28 f5    	vmovapd zmm30,zmm5
  96b5b2:	62 42 a5 40 a8 f5    	vfmadd213pd zmm30,zmm27,zmm13
  96b5b8:	62 62 9d 40 bc f6    	vfnmadd231pd zmm30,zmm28,zmm6
  96b5be:	62 a1 e5 40 5c df    	vsubpd zmm19,zmm19,zmm23
  96b5c4:	62 a1 dd 40 5c e5    	vsubpd zmm20,zmm20,zmm21
  96b5ca:	62 e1 dd 40 59 ef    	vmulpd zmm21,zmm20,zmm7
  96b5d0:	62 c2 e5 40 b8 e8    	vfmadd231pd zmm21,zmm19,zmm8
  96b5d6:	62 a1 8d 40 5c fd    	vsubpd zmm23,zmm30,zmm21
  96b5dc:	62 12 cd 48 bc f0    	vfnmadd231pd zmm14,zmm6,zmm24
  96b5e2:	62 12 d5 48 b8 f1    	vfmadd231pd zmm14,zmm5,zmm25
  96b5e8:	62 71 b5 48 59 cf    	vmulpd zmm9,zmm9,zmm7
  96b5ee:	62 52 bd 48 bc cb    	vfnmadd231pd zmm9,zmm8,zmm11
  96b5f4:	62 51 8d 48 58 d9    	vaddpd zmm11,zmm14,zmm9
  96b5fa:	62 12 cd 48 bc eb    	vfnmadd231pd zmm13,zmm6,zmm27
  96b600:	62 12 d5 48 b8 ec    	vfmadd231pd zmm13,zmm5,zmm28
  96b606:	62 e1 e5 40 59 df    	vmulpd zmm19,zmm19,zmm7
  96b60c:	62 a2 bd 48 bc dc    	vfnmadd231pd zmm19,zmm8,zmm20
  96b612:	62 a1 95 48 5c e3    	vsubpd zmm20,zmm13,zmm19
  96b618:	62 51 8d 48 5c c9    	vsubpd zmm9,zmm14,zmm9
  96b61e:	62 51 e5 40 58 ed    	vaddpd zmm13,zmm19,zmm13
  96b624:	62 31 95 40 5c f0    	vsubpd zmm14,zmm29,zmm16
  96b62a:	62 81 d5 40 58 c6    	vaddpd zmm16,zmm21,zmm30
  96b630:	62 42 fd 48 7f d6    	vpermt2pd zmm26,zmm0,zmm14
  96b636:	62 e2 fd 48 7f cc    	vpermt2pd zmm17,zmm0,zmm4
  96b63c:	62 72 fd 48 7f dc    	vpermt2pd zmm11,zmm0,zmm4
  96b642:	62 72 fd 48 7f cc    	vpermt2pd zmm9,zmm0,zmm4
  96b648:	62 11 fd 48 28 f2    	vmovapd zmm14,zmm26
  96b64e:	62 52 f5 48 7f f3    	vpermt2pd zmm14,zmm1,zmm11
  96b654:	62 42 ed 48 7f d3    	vpermt2pd zmm26,zmm2,zmm11
  96b65a:	62 31 fd 48 28 d9    	vmovapd zmm11,zmm17
  96b660:	62 52 f5 48 7f d9    	vpermt2pd zmm11,zmm1,zmm9
  96b666:	62 c2 ed 48 7f c9    	vpermt2pd zmm17,zmm2,zmm9
  96b66c:	62 31 ad 40 14 c9    	vunpcklpd zmm9,zmm26,zmm17
  96b672:	62 c1 8d 48 14 cb    	vunpcklpd zmm17,zmm14,zmm11
  96b678:	62 51 8d 48 15 db    	vunpckhpd zmm11,zmm14,zmm11
  96b67e:	62 32 fd 48 7f f8    	vpermt2pd zmm15,zmm0,zmm16
  96b684:	62 e2 fd 48 7f fc    	vpermt2pd zmm23,zmm0,zmm4
  96b68a:	62 e2 fd 48 7f e4    	vpermt2pd zmm20,zmm0,zmm4
  96b690:	62 72 fd 48 7f ec    	vpermt2pd zmm13,zmm0,zmm4
  96b696:	62 51 fd 48 28 f7    	vmovapd zmm14,zmm15
  96b69c:	62 32 f5 48 7f f4    	vpermt2pd zmm14,zmm1,zmm20
  96b6a2:	62 32 ed 48 7f fc    	vpermt2pd zmm15,zmm2,zmm20
  96b6a8:	62 a1 fd 48 28 c7    	vmovapd zmm16,zmm23
  96b6ae:	62 c2 f5 48 7f c5    	vpermt2pd zmm16,zmm1,zmm13
  96b6b4:	62 c2 ed 48 7f fd    	vpermt2pd zmm23,zmm2,zmm13
  96b6ba:	62 31 85 48 14 ef    	vunpcklpd zmm13,zmm15,zmm23
  96b6c0:	62 31 8d 48 14 f8    	vunpcklpd zmm15,zmm14,zmm16
  96b6c6:	62 31 8d 48 15 f0    	vunpckhpd zmm14,zmm14,zmm16
  96b6cc:	62 e1 fd 48 10 41 02 	vmovupd zmm16,ZMMWORD PTR [rcx+0x80]
  96b6d3:	62 e1 fd 48 10 59 03 	vmovupd zmm19,ZMMWORD PTR [rcx+0xc0]
  96b6da:	62 e1 fd 48 10 61 04 	vmovupd zmm20,ZMMWORD PTR [rcx+0x100]
  96b6e1:	62 e1 fd 48 10 69 05 	vmovupd zmm21,ZMMWORD PTR [rcx+0x140]
  96b6e8:	62 a1 a5 48 59 f8    	vmulpd zmm23,zmm11,zmm16
  96b6ee:	62 a2 8d 48 bc fb    	vfnmadd231pd zmm23,zmm14,zmm19
  96b6f4:	62 21 b5 48 59 c4    	vmulpd zmm24,zmm9,zmm20
  96b6fa:	62 22 95 48 bc c5    	vfnmadd231pd zmm24,zmm13,zmm21
  96b700:	62 01 c5 40 58 c8    	vaddpd zmm25,zmm23,zmm24
  96b706:	62 31 8d 48 59 f0    	vmulpd zmm14,zmm14,zmm16
  96b70c:	62 32 a5 48 b8 f3    	vfmadd231pd zmm14,zmm11,zmm19
  96b712:	62 31 95 48 59 dc    	vmulpd zmm11,zmm13,zmm20
  96b718:	62 32 b5 48 b8 dd    	vfmadd231pd zmm11,zmm9,zmm21
  96b71e:	62 51 8d 48 58 cb    	vaddpd zmm9,zmm14,zmm11
  96b724:	62 31 fd 48 28 ee    	vmovapd zmm13,zmm22
  96b72a:	62 32 b5 40 ac e9    	vfnmadd213pd zmm13,zmm25,zmm17
  96b730:	62 51 8d 48 5c db    	vsubpd zmm11,zmm14,zmm11
  96b736:	62 31 a5 48 59 da    	vmulpd zmm11,zmm11,zmm18
  96b73c:	62 51 95 48 58 f3    	vaddpd zmm14,zmm13,zmm11
  96b742:	62 a1 fd 48 28 c6    	vmovapd zmm16,zmm22
  96b748:	62 c2 b5 48 ac c7    	vfnmadd213pd zmm16,zmm9,zmm15
  96b74e:	62 81 c5 40 5c d8    	vsubpd zmm19,zmm23,zmm24
  96b754:	62 a1 e5 40 59 da    	vmulpd zmm19,zmm19,zmm18
  96b75a:	62 a1 fd 40 5c e3    	vsubpd zmm20,zmm16,zmm19
  96b760:	62 51 95 48 5c db    	vsubpd zmm11,zmm13,zmm11
  96b766:	62 31 fd 40 58 eb    	vaddpd zmm13,zmm16,zmm19
  96b76c:	62 81 f5 40 58 c1    	vaddpd zmm16,zmm17,zmm25
  96b772:	62 51 85 48 58 c9    	vaddpd zmm9,zmm15,zmm9
  96b778:	62 c3 7d 48 19 c7 02 	vextractf32x4 xmm15,zmm16,0x2
  96b77f:	62 c2 9d 48 7f c1    	vpermt2pd zmm16,zmm12,zmm9
  96b785:	62 e1 fd 48 11 04 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm16
  96b78c:	62 53 7d 48 19 c9 02 	vextractf32x4 xmm9,zmm9,0x2
  96b793:	c4 41 01 14 c9       	vunpcklpd xmm9,xmm15,xmm9
  96b798:	c5 79 11 4c 16 40    	vmovupd XMMWORD PTR [rsi+rdx*1+0x40],xmm9
  96b79e:	62 53 7d 48 19 f1 02 	vextractf32x4 xmm9,zmm14,0x2
  96b7a5:	62 32 9d 48 7f f4    	vpermt2pd zmm14,zmm12,zmm20
  96b7ab:	62 71 fd 48 11 b4 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x50],zmm14
  96b7b2:	50 00 00 00 
  96b7b6:	62 c3 7d 48 19 e6 02 	vextractf32x4 xmm14,zmm20,0x2
  96b7bd:	c4 41 31 14 ce       	vunpcklpd xmm9,xmm9,xmm14
  96b7c2:	c5 79 11 8c 16 90 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0x90],xmm9
  96b7c9:	00 00 
  96b7cb:	62 53 7d 48 19 d9 02 	vextractf32x4 xmm9,zmm11,0x2
  96b7d2:	62 52 9d 48 7f dd    	vpermt2pd zmm11,zmm12,zmm13
  96b7d8:	62 71 fd 48 11 9c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xa0],zmm11
  96b7df:	a0 00 00 00 
  96b7e3:	62 53 7d 48 19 eb 02 	vextractf32x4 xmm11,zmm13,0x2
  96b7ea:	c4 41 31 14 cb       	vunpcklpd xmm9,xmm9,xmm11
  96b7ef:	c5 79 11 8c 16 e0 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0xe0],xmm9
  96b7f6:	00 00 
  96b7f8:	48 81 c2 f0 00 00 00 	add    rdx,0xf0
  96b7ff:	48 39 d0             	cmp    rax,rdx
  96b802:	0f 85 48 fc ff ff    	jne    96b450 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x90>
  96b808:	c5 f8 77             	vzeroupper
  96b80b:	c3                   	ret
