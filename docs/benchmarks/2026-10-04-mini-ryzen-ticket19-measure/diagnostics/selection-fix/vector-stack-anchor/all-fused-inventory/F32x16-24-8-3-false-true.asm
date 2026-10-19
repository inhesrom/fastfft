
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a56340 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a56340:	62 f1 7c 48 28 05 36 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff670c36]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a56347:	0c 67 ff 
  a5634a:	62 f1 7c 48 28 0d ac 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff670bac]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a56351:	0b 67 ff 
  a56354:	62 f1 7c 48 28 15 a2 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff670aa2]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5635b:	0a 67 ff 
  a5635e:	62 f1 7c 48 28 1d d8 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff670ad8]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a56365:	0a 67 ff 
  a56368:	48 c1 e2 06          	shl    rdx,0x6
  a5636c:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a56370:	31 d2                	xor    edx,edx
  a56372:	62 f1 7c 48 28 25 44 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff63cc44]        # 92fc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20470>
  a56379:	cc 63 ff 
  a5637c:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a56380:	62 f2 7d 48 18 35 12 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff61f012]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a56387:	f0 61 ff 
  a5638a:	62 f2 7d 48 18 3d cc 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff61f0cc]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a56391:	f0 61 ff 
  a56394:	62 71 7c 48 28 05 62 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff63cc62]        # 93000 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x204b0>
  a5639b:	cc 63 ff 
  a5639e:	62 72 7d 48 18 0d 2c 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff61ef2c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a563a5:	ef 61 ff 
  a563a8:	62 71 7c 48 28 15 8e 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff63cc8e]        # 93040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x204f0>
  a563af:	cc 63 ff 
  a563b2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a563b9:	1f 84 00 00 00 00 00 
  a563c0:	c5 7b 10 5c 17 10    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x10]
  a563c6:	c5 78 10 24 17       	vmovups xmm12,XMMWORD PTR [rdi+rdx*1]
  a563cb:	c5 78 10 6c 17 18    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x18]
  a563d1:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0x30]
  a563d8:	03 
  a563d9:	62 e1 7c 08 10 8c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0x48]
  a563e0:	48 00 00 00 
  a563e4:	62 53 1d 48 18 db 01 	vinsertf32x4 zmm11,zmm12,xmm11,0x1
  a563eb:	62 51 7c 48 28 f3    	vmovaps zmm14,zmm11
  a563f1:	62 72 5d 48 7f f5    	vpermt2ps zmm14,zmm4,zmm5
  a563f7:	62 72 3d 48 7f dd    	vpermt2ps zmm11,zmm8,zmm5
  a563fd:	c5 7b 10 64 17 28    	vmovsd xmm12,QWORD PTR [rdi+rdx*1+0x28]
  a56403:	62 53 15 48 18 ec 01 	vinsertf32x4 zmm13,zmm13,xmm12,0x1
  a5640a:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a56410:	62 72 5d 48 7f fd    	vpermt2ps zmm15,zmm4,zmm5
  a56416:	62 72 3d 48 7f ed    	vpermt2ps zmm13,zmm8,zmm5
  a5641c:	c5 7b 10 64 17 40    	vmovsd xmm12,QWORD PTR [rdi+rdx*1+0x40]
  a56422:	62 c3 7d 40 18 c4 01 	vinsertf32x4 zmm16,zmm16,xmm12,0x1
  a56429:	62 31 7c 48 28 e0    	vmovaps zmm12,zmm16
  a5642f:	62 72 5d 48 7f e5    	vpermt2ps zmm12,zmm4,zmm5
  a56435:	62 e2 3d 48 7f c5    	vpermt2ps zmm16,zmm8,zmm5
  a5643b:	62 e1 ff 08 10 54 17 	vmovsd xmm18,QWORD PTR [rdi+rdx*1+0x58]
  a56442:	0b 
  a56443:	62 a3 75 40 18 ca 01 	vinsertf32x4 zmm17,zmm17,xmm18,0x1
  a5644a:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a56450:	62 e2 5d 48 7f d5    	vpermt2ps zmm18,zmm4,zmm5
  a56456:	62 e2 3d 48 7f cd    	vpermt2ps zmm17,zmm8,zmm5
  a5645c:	62 e1 ff 08 10 5c 17 	vmovsd xmm19,QWORD PTR [rdi+rdx*1+0x70]
  a56463:	0e 
  a56464:	62 e1 7c 08 10 64 17 	vmovups xmm20,XMMWORD PTR [rdi+rdx*1+0x60]
  a5646b:	06 
  a5646c:	62 a3 5d 40 18 db 01 	vinsertf32x4 zmm19,zmm20,xmm19,0x1
  a56473:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a56479:	62 e2 5d 48 7f e5    	vpermt2ps zmm20,zmm4,zmm5
  a5647f:	62 e2 3d 48 7f dd    	vpermt2ps zmm19,zmm8,zmm5
  a56485:	62 e1 ff 08 10 6c 17 	vmovsd xmm21,QWORD PTR [rdi+rdx*1+0x88]
  a5648c:	11 
  a5648d:	62 e1 7c 08 10 b4 17 	vmovups xmm22,XMMWORD PTR [rdi+rdx*1+0x78]
  a56494:	78 00 00 00 
  a56498:	62 a3 4d 40 18 ed 01 	vinsertf32x4 zmm21,zmm22,xmm21,0x1
  a5649f:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a564a5:	62 e2 5d 48 7f f5    	vpermt2ps zmm22,zmm4,zmm5
  a564ab:	62 e2 3d 48 7f ed    	vpermt2ps zmm21,zmm8,zmm5
  a564b1:	62 e1 ff 08 10 7c 17 	vmovsd xmm23,QWORD PTR [rdi+rdx*1+0xa0]
  a564b8:	14 
  a564b9:	62 61 7c 08 10 44 17 	vmovups xmm24,XMMWORD PTR [rdi+rdx*1+0x90]
  a564c0:	09 
  a564c1:	62 a3 3d 40 18 ff 01 	vinsertf32x4 zmm23,zmm24,xmm23,0x1
  a564c8:	62 21 7c 48 28 c7    	vmovaps zmm24,zmm23
  a564ce:	62 62 5d 48 7f c5    	vpermt2ps zmm24,zmm4,zmm5
  a564d4:	62 e2 3d 48 7f fd    	vpermt2ps zmm23,zmm8,zmm5
  a564da:	62 61 ff 08 10 4c 17 	vmovsd xmm25,QWORD PTR [rdi+rdx*1+0xb8]
  a564e1:	17 
  a564e2:	62 61 7c 08 10 94 17 	vmovups xmm26,XMMWORD PTR [rdi+rdx*1+0xa8]
  a564e9:	a8 00 00 00 
  a564ed:	62 03 2d 40 18 c9 01 	vinsertf32x4 zmm25,zmm26,xmm25,0x1
  a564f4:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a564fa:	62 62 5d 48 7f d5    	vpermt2ps zmm26,zmm4,zmm5
  a56500:	62 62 3d 48 7f cd    	vpermt2ps zmm25,zmm8,zmm5
  a56506:	62 21 0c 48 58 dc    	vaddps zmm27,zmm14,zmm20
  a5650c:	62 31 0c 48 5c f4    	vsubps zmm14,zmm14,zmm20
  a56512:	62 a1 7c 40 58 e7    	vaddps zmm20,zmm16,zmm23
  a56518:	62 a1 7c 40 5c c7    	vsubps zmm16,zmm16,zmm23
  a5651e:	62 a1 04 48 58 fe    	vaddps zmm23,zmm15,zmm22
  a56524:	62 31 04 48 5c fe    	vsubps zmm15,zmm15,zmm22
  a5652a:	62 a1 14 48 58 f5    	vaddps zmm22,zmm13,zmm21
  a56530:	62 31 14 48 5c ed    	vsubps zmm13,zmm13,zmm21
  a56536:	62 81 74 40 58 e9    	vaddps zmm21,zmm17,zmm25
  a5653c:	62 81 74 40 5c c9    	vsubps zmm17,zmm17,zmm25
  a56542:	62 01 6c 40 58 ca    	vaddps zmm25,zmm18,zmm26
  a56548:	62 81 6c 40 5c d2    	vsubps zmm18,zmm18,zmm26
  a5654e:	62 21 24 48 58 d3    	vaddps zmm26,zmm11,zmm19
  a56554:	62 31 24 48 5c db    	vsubps zmm11,zmm11,zmm19
  a5655a:	62 81 1c 48 58 d8    	vaddps zmm19,zmm12,zmm24
  a56560:	62 51 3c 40 5c e4    	vsubps zmm12,zmm24,zmm12
  a56566:	62 41 04 48 58 c5    	vaddps zmm24,zmm15,zmm13
  a5656c:	62 51 14 48 5c ef    	vsubps zmm13,zmm13,zmm15
  a56572:	62 31 74 40 5c fa    	vsubps zmm15,zmm17,zmm18
  a56578:	62 a1 6c 40 58 c9    	vaddps zmm17,zmm18,zmm17
  a5657e:	62 a1 24 40 58 d3    	vaddps zmm18,zmm27,zmm19
  a56584:	62 21 24 40 5c db    	vsubps zmm27,zmm27,zmm19
  a5658a:	62 a1 4c 40 58 dd    	vaddps zmm19,zmm22,zmm21
  a56590:	62 a1 4c 40 5c ed    	vsubps zmm21,zmm22,zmm21
  a56596:	62 a1 2c 40 58 f4    	vaddps zmm22,zmm26,zmm20
  a5659c:	62 a1 2c 40 5c e4    	vsubps zmm20,zmm26,zmm20
  a565a2:	62 01 44 40 58 d1    	vaddps zmm26,zmm23,zmm25
  a565a8:	62 a1 34 40 5c ff    	vsubps zmm23,zmm25,zmm23
  a565ae:	62 21 0c 48 58 c8    	vaddps zmm25,zmm14,zmm16
  a565b4:	62 61 3c 40 59 c6    	vmulps zmm24,zmm24,zmm6
  a565ba:	62 71 04 48 59 fe    	vmulps zmm15,zmm15,zmm6
  a565c0:	62 71 14 48 59 ee    	vmulps zmm13,zmm13,zmm6
  a565c6:	62 e1 74 40 59 ce    	vmulps zmm17,zmm17,zmm6
  a565cc:	62 21 0c 48 5c e0    	vsubps zmm28,zmm14,zmm16
  a565d2:	62 31 14 48 5c f1    	vsubps zmm14,zmm13,zmm17
  a565d8:	62 a1 14 48 58 c9    	vaddps zmm17,zmm13,zmm17
  a565de:	62 c1 1c 48 58 c3    	vaddps zmm16,zmm12,zmm11
  a565e4:	62 51 24 48 5c e4    	vsubps zmm12,zmm11,zmm12
  a565ea:	62 51 3c 40 58 ef    	vaddps zmm13,zmm24,zmm15
  a565f0:	62 01 04 48 5c c0    	vsubps zmm24,zmm15,zmm24
  a565f6:	62 01 6c 40 58 ea    	vaddps zmm29,zmm18,zmm26
  a565fc:	62 01 6c 40 5c d2    	vsubps zmm26,zmm18,zmm26
  a56602:	62 31 4c 40 58 db    	vaddps zmm11,zmm22,zmm19
  a56608:	62 a1 4c 40 5c d3    	vsubps zmm18,zmm22,zmm19
  a5660e:	62 c1 34 40 58 f5    	vaddps zmm22,zmm25,zmm13
  a56614:	62 41 34 40 5c cd    	vsubps zmm25,zmm25,zmm13
  a5661a:	62 51 7c 40 58 ee    	vaddps zmm13,zmm16,zmm14
  a56620:	62 c1 7c 40 5c de    	vsubps zmm19,zmm16,zmm14
  a56626:	62 21 24 40 58 f5    	vaddps zmm30,zmm27,zmm21
  a5662c:	62 a1 24 40 5c ed    	vsubps zmm21,zmm27,zmm21
  a56632:	62 31 44 40 58 f4    	vaddps zmm14,zmm23,zmm20
  a56638:	62 a1 5c 40 5c c7    	vsubps zmm16,zmm20,zmm23
  a5663e:	62 a1 1c 40 58 f9    	vaddps zmm23,zmm28,zmm17
  a56644:	62 a1 1c 40 5c c9    	vsubps zmm17,zmm28,zmm17
  a5664a:	62 11 1c 48 58 f8    	vaddps zmm15,zmm12,zmm24
  a56650:	62 81 1c 48 5c e0    	vsubps zmm20,zmm12,zmm24
  a56656:	62 62 7d 48 7f ed    	vpermt2ps zmm29,zmm0,zmm5
  a5665c:	62 62 7d 48 7f d5    	vpermt2ps zmm26,zmm0,zmm5
  a56662:	62 02 75 48 7f ea    	vpermt2ps zmm29,zmm1,zmm26
  a56668:	62 e2 7d 48 7f f5    	vpermt2ps zmm22,zmm0,zmm5
  a5666e:	62 62 7d 48 7f cd    	vpermt2ps zmm25,zmm0,zmm5
  a56674:	62 82 75 48 7f f1    	vpermt2ps zmm22,zmm1,zmm25
  a5667a:	62 62 7d 48 7f f5    	vpermt2ps zmm30,zmm0,zmm5
  a56680:	62 e2 7d 48 7f ed    	vpermt2ps zmm21,zmm0,zmm5
  a56686:	62 22 75 48 7f f5    	vpermt2ps zmm30,zmm1,zmm21
  a5668c:	62 e2 7d 48 7f fd    	vpermt2ps zmm23,zmm0,zmm5
  a56692:	62 e2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm5
  a56698:	62 a2 75 48 7f f9    	vpermt2ps zmm23,zmm1,zmm17
  a5669e:	62 81 95 40 14 ee    	vunpcklpd zmm21,zmm29,zmm30
  a566a4:	62 81 95 40 15 ce    	vunpckhpd zmm17,zmm29,zmm30
  a566aa:	62 21 cd 40 14 c7    	vunpcklpd zmm24,zmm22,zmm23
  a566b0:	62 a1 cd 40 15 f7    	vunpckhpd zmm22,zmm22,zmm23
  a566b6:	62 31 7c 48 28 e5    	vmovaps zmm12,zmm21
  a566bc:	62 12 6d 48 7f e0    	vpermt2ps zmm12,zmm2,zmm24
  a566c2:	62 82 65 48 7f e8    	vpermt2ps zmm21,zmm3,zmm24
  a566c8:	62 a2 6d 48 7f ce    	vpermt2ps zmm17,zmm2,zmm22
  a566ce:	62 72 7d 48 7f dd    	vpermt2ps zmm11,zmm0,zmm5
  a566d4:	62 e2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm5
  a566da:	62 32 75 48 7f da    	vpermt2ps zmm11,zmm1,zmm18
  a566e0:	62 72 7d 48 7f ed    	vpermt2ps zmm13,zmm0,zmm5
  a566e6:	62 e2 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm5
  a566ec:	62 32 75 48 7f eb    	vpermt2ps zmm13,zmm1,zmm19
  a566f2:	62 72 7d 48 7f f5    	vpermt2ps zmm14,zmm0,zmm5
  a566f8:	62 72 7d 48 7f fd    	vpermt2ps zmm15,zmm0,zmm5
  a566fe:	62 e2 7d 48 7f c5    	vpermt2ps zmm16,zmm0,zmm5
  a56704:	62 e2 7d 48 7f e5    	vpermt2ps zmm20,zmm0,zmm5
  a5670a:	62 32 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm16
  a56710:	62 32 75 48 7f fc    	vpermt2ps zmm15,zmm1,zmm20
  a56716:	62 c1 a5 48 14 c6    	vunpcklpd zmm16,zmm11,zmm14
  a5671c:	62 51 a5 48 15 de    	vunpckhpd zmm11,zmm11,zmm14
  a56722:	62 51 95 48 14 f7    	vunpcklpd zmm14,zmm13,zmm15
  a56728:	62 51 95 48 15 ef    	vunpckhpd zmm13,zmm13,zmm15
  a5672e:	62 31 7c 48 28 f8    	vmovaps zmm15,zmm16
  a56734:	62 52 6d 48 7f fe    	vpermt2ps zmm15,zmm2,zmm14
  a5673a:	62 c2 65 48 7f c6    	vpermt2ps zmm16,zmm3,zmm14
  a56740:	62 52 6d 48 7f dd    	vpermt2ps zmm11,zmm2,zmm13
  a56746:	62 71 7c 48 10 69 02 	vmovups zmm13,ZMMWORD PTR [rcx+0x80]
  a5674d:	62 71 7c 48 10 71 03 	vmovups zmm14,ZMMWORD PTR [rcx+0xc0]
  a56754:	62 c1 54 40 59 d5    	vmulps zmm18,zmm21,zmm13
  a5675a:	62 c2 7d 40 bc d6    	vfnmadd231ps zmm18,zmm16,zmm14
  a56760:	62 51 7c 40 59 ed    	vmulps zmm13,zmm16,zmm13
  a56766:	62 e1 7c 48 10 41 04 	vmovups zmm16,ZMMWORD PTR [rcx+0x100]
  a5676d:	62 32 0d 48 b8 ed    	vfmadd231ps zmm13,zmm14,zmm21
  a56773:	62 71 7c 48 10 71 05 	vmovups zmm14,ZMMWORD PTR [rcx+0x140]
  a5677a:	62 a1 74 40 59 d8    	vmulps zmm19,zmm17,zmm16
  a56780:	62 c2 25 48 bc de    	vfnmadd231ps zmm19,zmm11,zmm14
  a56786:	62 31 24 48 59 d8    	vmulps zmm11,zmm11,zmm16
  a5678c:	62 a1 6c 40 58 c3    	vaddps zmm16,zmm18,zmm19
  a56792:	62 32 0d 48 b8 d9    	vfmadd231ps zmm11,zmm14,zmm17
  a56798:	62 51 14 48 58 f3    	vaddps zmm14,zmm13,zmm11
  a5679e:	62 e1 7c 48 28 cf    	vmovaps zmm17,zmm7
  a567a4:	62 c2 7d 40 ac cc    	vfnmadd213ps zmm17,zmm16,zmm12
  a567aa:	62 51 14 48 5c db    	vsubps zmm11,zmm13,zmm11
  a567b0:	62 51 24 48 59 d9    	vmulps zmm11,zmm11,zmm9
  a567b6:	62 51 74 40 58 eb    	vaddps zmm13,zmm17,zmm11
  a567bc:	62 a1 6c 40 5c d3    	vsubps zmm18,zmm18,zmm19
  a567c2:	62 e1 7c 48 28 df    	vmovaps zmm19,zmm7
  a567c8:	62 c2 0d 48 ac df    	vfnmadd213ps zmm19,zmm14,zmm15
  a567ce:	62 c1 6c 40 59 d1    	vmulps zmm18,zmm18,zmm9
  a567d4:	62 51 74 40 5c db    	vsubps zmm11,zmm17,zmm11
  a567da:	62 a1 64 40 5c ca    	vsubps zmm17,zmm19,zmm18
  a567e0:	62 a1 64 40 58 d2    	vaddps zmm18,zmm19,zmm18
  a567e6:	62 31 1c 48 58 e0    	vaddps zmm12,zmm12,zmm16
  a567ec:	62 51 04 48 58 f6    	vaddps zmm14,zmm15,zmm14
  a567f2:	62 52 2d 48 7f e6    	vpermt2ps zmm12,zmm10,zmm14
  a567f8:	62 71 7c 48 11 24 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm12
  a567ff:	62 32 2d 48 7f e9    	vpermt2ps zmm13,zmm10,zmm17
  a56805:	62 71 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm13
  a5680c:	01 
  a5680d:	62 32 2d 48 7f da    	vpermt2ps zmm11,zmm10,zmm18
  a56813:	62 71 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm11
  a5681a:	02 
  a5681b:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  a56822:	48 39 d0             	cmp    rax,rdx
  a56825:	0f 85 95 fb ff ff    	jne    a563c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a5682b:	c5 f8 77             	vzeroupper
  a5682e:	c3                   	ret
