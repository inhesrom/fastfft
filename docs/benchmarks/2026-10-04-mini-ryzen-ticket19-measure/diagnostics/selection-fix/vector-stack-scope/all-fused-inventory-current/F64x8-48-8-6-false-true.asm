
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009374c0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  9374c0:	62 f1 fd 48 10 05 9e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff78f89e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  9374c7:	f8 78 ff 
  9374ca:	62 f1 fd 48 10 0d d4 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff78f8d4]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  9374d1:	f8 78 ff 
  9374d4:	62 f1 fd 48 10 15 0a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff78f80a]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  9374db:	f8 78 ff 
  9374de:	62 f1 fd 48 10 1d 40 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff78f840]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  9374e5:	f8 78 ff 
  9374e8:	48 c1 e2 08          	shl    rdx,0x8
  9374ec:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  9374f0:	31 d2                	xor    edx,edx
  9374f2:	62 f1 fd 48 28 25 04 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff74ae04]        # 82300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xf7b0>
  9374f9:	ae 74 ff 
  9374fc:	62 f1 fd 48 28 2d 3a 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff74ae3a]        # 82340 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xf7f0>
  937503:	ae 74 ff 
  937506:	62 f2 fd 48 19 35 90 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff73d990]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  93750d:	d9 73 ff 
  937510:	62 f2 fd 48 19 3d 06 	vbroadcastsd zmm7,QWORD PTR [rip+0xffffffffff73d706]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  937517:	d7 73 ff 
  93751a:	62 72 fd 48 19 05 74 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff73d574]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  937521:	d5 73 ff 
  937524:	62 71 fd 48 28 0d 52 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff74ae52]        # 82380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xf830>
  93752b:	ae 74 ff 
  93752e:	62 71 fd 48 28 15 88 	vmovapd zmm10,ZMMWORD PTR [rip+0xffffffffff74ae88]        # 823c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xf870>
  937535:	ae 74 ff 
  937538:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  93753f:	00 
  937540:	62 71 fd 48 10 1c 17 	vmovupd zmm11,ZMMWORD PTR [rdi+rdx*1]
  937547:	c5 7d 10 64 17 40    	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0x40]
  93754d:	62 51 fd 48 28 f3    	vmovapd zmm14,zmm11
  937553:	62 52 dd 48 7f f4    	vpermt2pd zmm14,zmm4,zmm12
  937559:	62 52 d5 48 7f dc    	vpermt2pd zmm11,zmm5,zmm12
  93755f:	62 71 fd 48 10 ac 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1+0x60]
  937566:	60 00 00 00 
  93756a:	c5 7d 10 a4 17 a0 00 	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0xa0]
  937571:	00 00 
  937573:	62 51 fd 48 28 fd    	vmovapd zmm15,zmm13
  937579:	62 52 dd 48 7f fc    	vpermt2pd zmm15,zmm4,zmm12
  93757f:	62 52 d5 48 7f ec    	vpermt2pd zmm13,zmm5,zmm12
  937585:	62 e1 fd 48 10 44 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0xc0]
  93758c:	03 
  93758d:	62 e1 fd 28 10 4c 17 	vmovupd ymm17,YMMWORD PTR [rdi+rdx*1+0x100]
  937594:	08 
  937595:	62 31 fd 48 28 e0    	vmovapd zmm12,zmm16
  93759b:	62 32 dd 48 7f e1    	vpermt2pd zmm12,zmm4,zmm17
  9375a1:	62 a2 d5 48 7f c1    	vpermt2pd zmm16,zmm5,zmm17
  9375a7:	62 e1 fd 48 10 8c 17 	vmovupd zmm17,ZMMWORD PTR [rdi+rdx*1+0x120]
  9375ae:	20 01 00 00 
  9375b2:	62 e1 fd 28 10 54 17 	vmovupd ymm18,YMMWORD PTR [rdi+rdx*1+0x160]
  9375b9:	0b 
  9375ba:	62 a1 fd 48 28 d9    	vmovapd zmm19,zmm17
  9375c0:	62 a2 dd 48 7f da    	vpermt2pd zmm19,zmm4,zmm18
  9375c6:	62 a2 d5 48 7f ca    	vpermt2pd zmm17,zmm5,zmm18
  9375cc:	62 e1 fd 48 10 54 17 	vmovupd zmm18,ZMMWORD PTR [rdi+rdx*1+0x180]
  9375d3:	06 
  9375d4:	62 e1 fd 28 10 64 17 	vmovupd ymm20,YMMWORD PTR [rdi+rdx*1+0x1c0]
  9375db:	0e 
  9375dc:	62 a1 fd 48 28 ea    	vmovapd zmm21,zmm18
  9375e2:	62 a2 dd 48 7f ec    	vpermt2pd zmm21,zmm4,zmm20
  9375e8:	62 a2 d5 48 7f d4    	vpermt2pd zmm18,zmm5,zmm20
  9375ee:	62 e1 fd 48 10 a4 17 	vmovupd zmm20,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  9375f5:	e0 01 00 00 
  9375f9:	62 e1 fd 28 10 74 17 	vmovupd ymm22,YMMWORD PTR [rdi+rdx*1+0x220]
  937600:	11 
  937601:	62 a1 fd 48 28 fc    	vmovapd zmm23,zmm20
  937607:	62 a2 dd 48 7f fe    	vpermt2pd zmm23,zmm4,zmm22
  93760d:	62 a2 d5 48 7f e6    	vpermt2pd zmm20,zmm5,zmm22
  937613:	62 e1 fd 48 10 74 17 	vmovupd zmm22,ZMMWORD PTR [rdi+rdx*1+0x240]
  93761a:	09 
  93761b:	62 61 fd 28 10 44 17 	vmovupd ymm24,YMMWORD PTR [rdi+rdx*1+0x280]
  937622:	14 
  937623:	62 21 fd 48 28 ce    	vmovapd zmm25,zmm22
  937629:	62 02 dd 48 7f c8    	vpermt2pd zmm25,zmm4,zmm24
  93762f:	62 82 d5 48 7f f0    	vpermt2pd zmm22,zmm5,zmm24
  937635:	62 61 fd 48 10 84 17 	vmovupd zmm24,ZMMWORD PTR [rdi+rdx*1+0x2a0]
  93763c:	a0 02 00 00 
  937640:	62 61 fd 28 10 54 17 	vmovupd ymm26,YMMWORD PTR [rdi+rdx*1+0x2e0]
  937647:	17 
  937648:	62 01 fd 48 28 d8    	vmovapd zmm27,zmm24
  93764e:	62 02 dd 48 7f da    	vpermt2pd zmm27,zmm4,zmm26
  937654:	62 02 d5 48 7f c2    	vpermt2pd zmm24,zmm5,zmm26
  93765a:	62 21 8d 48 58 d5    	vaddpd zmm26,zmm14,zmm21
  937660:	62 31 8d 48 5c f5    	vsubpd zmm14,zmm14,zmm21
  937666:	62 a1 fd 40 58 ee    	vaddpd zmm21,zmm16,zmm22
  93766c:	62 a1 fd 40 5c c6    	vsubpd zmm16,zmm16,zmm22
  937672:	62 a1 85 48 58 f7    	vaddpd zmm22,zmm15,zmm23
  937678:	62 31 85 48 5c ff    	vsubpd zmm15,zmm15,zmm23
  93767e:	62 a1 95 48 58 fc    	vaddpd zmm23,zmm13,zmm20
  937684:	62 31 95 48 5c ec    	vsubpd zmm13,zmm13,zmm20
  93768a:	62 81 f5 40 58 e0    	vaddpd zmm20,zmm17,zmm24
  937690:	62 81 f5 40 5c c8    	vsubpd zmm17,zmm17,zmm24
  937696:	62 01 e5 40 58 c3    	vaddpd zmm24,zmm19,zmm27
  93769c:	62 81 e5 40 5c db    	vsubpd zmm19,zmm19,zmm27
  9376a2:	62 21 a5 48 58 da    	vaddpd zmm27,zmm11,zmm18
  9376a8:	62 31 a5 48 5c da    	vsubpd zmm11,zmm11,zmm18
  9376ae:	62 81 9d 48 58 d1    	vaddpd zmm18,zmm12,zmm25
  9376b4:	62 51 b5 40 5c e4    	vsubpd zmm12,zmm25,zmm12
  9376ba:	62 41 85 48 58 cd    	vaddpd zmm25,zmm15,zmm13
  9376c0:	62 51 95 48 5c ef    	vsubpd zmm13,zmm13,zmm15
  9376c6:	62 31 f5 40 5c fb    	vsubpd zmm15,zmm17,zmm19
  9376cc:	62 a1 e5 40 58 c9    	vaddpd zmm17,zmm19,zmm17
  9376d2:	62 a1 ad 40 58 da    	vaddpd zmm19,zmm26,zmm18
  9376d8:	62 a1 ad 40 5c d2    	vsubpd zmm18,zmm26,zmm18
  9376de:	62 21 c5 40 58 d4    	vaddpd zmm26,zmm23,zmm20
  9376e4:	62 a1 c5 40 5c e4    	vsubpd zmm20,zmm23,zmm20
  9376ea:	62 a1 a5 40 58 fd    	vaddpd zmm23,zmm27,zmm21
  9376f0:	62 a1 a5 40 5c ed    	vsubpd zmm21,zmm27,zmm21
  9376f6:	62 01 cd 40 58 d8    	vaddpd zmm27,zmm22,zmm24
  9376fc:	62 a1 bd 40 5c f6    	vsubpd zmm22,zmm24,zmm22
  937702:	62 21 8d 48 58 c0    	vaddpd zmm24,zmm14,zmm16
  937708:	62 61 b5 40 59 ce    	vmulpd zmm25,zmm25,zmm6
  93770e:	62 71 85 48 59 fe    	vmulpd zmm15,zmm15,zmm6
  937714:	62 71 95 48 59 ee    	vmulpd zmm13,zmm13,zmm6
  93771a:	62 e1 f5 40 59 ce    	vmulpd zmm17,zmm17,zmm6
  937720:	62 31 8d 48 5c f0    	vsubpd zmm14,zmm14,zmm16
  937726:	62 a1 95 48 5c c1    	vsubpd zmm16,zmm13,zmm17
  93772c:	62 31 95 48 58 e9    	vaddpd zmm13,zmm13,zmm17
  937732:	62 41 9d 48 58 e3    	vaddpd zmm28,zmm12,zmm11
  937738:	62 51 a5 48 5c dc    	vsubpd zmm11,zmm11,zmm12
  93773e:	62 51 b5 40 58 e7    	vaddpd zmm12,zmm25,zmm15
  937744:	62 01 85 48 5c c9    	vsubpd zmm25,zmm15,zmm25
  93774a:	62 01 e5 40 58 eb    	vaddpd zmm29,zmm19,zmm27
  937750:	62 81 e5 40 5c db    	vsubpd zmm19,zmm19,zmm27
  937756:	62 11 c5 40 58 fa    	vaddpd zmm15,zmm23,zmm26
  93775c:	62 81 c5 40 5c fa    	vsubpd zmm23,zmm23,zmm26
  937762:	62 41 bd 40 58 d4    	vaddpd zmm26,zmm24,zmm12
  937768:	62 41 bd 40 5c c4    	vsubpd zmm24,zmm24,zmm12
  93776e:	62 a1 9d 40 58 c8    	vaddpd zmm17,zmm28,zmm16
  937774:	62 21 9d 40 5c d8    	vsubpd zmm27,zmm28,zmm16
  93777a:	62 a1 ed 40 58 c4    	vaddpd zmm16,zmm18,zmm20
  937780:	62 a1 ed 40 5c d4    	vsubpd zmm18,zmm18,zmm20
  937786:	62 31 cd 40 58 e5    	vaddpd zmm12,zmm22,zmm21
  93778c:	62 a1 d5 40 5c e6    	vsubpd zmm20,zmm21,zmm22
  937792:	62 c1 8d 48 58 ed    	vaddpd zmm21,zmm14,zmm13
  937798:	62 51 8d 48 5c ed    	vsubpd zmm13,zmm14,zmm13
  93779e:	62 81 a5 48 58 f1    	vaddpd zmm22,zmm11,zmm25
  9377a4:	62 01 a5 48 5c c9    	vsubpd zmm25,zmm11,zmm25
  9377aa:	62 01 fd 48 28 e5    	vmovapd zmm28,zmm29
  9377b0:	62 22 fd 48 7f e3    	vpermt2pd zmm28,zmm0,zmm19
  9377b6:	62 22 f5 48 7f eb    	vpermt2pd zmm29,zmm1,zmm19
  9377bc:	62 81 fd 48 28 da    	vmovapd zmm19,zmm26
  9377c2:	62 82 fd 48 7f d8    	vpermt2pd zmm19,zmm0,zmm24
  9377c8:	62 02 f5 48 7f d0    	vpermt2pd zmm26,zmm1,zmm24
  9377ce:	62 31 fd 48 28 d8    	vmovapd zmm11,zmm16
  9377d4:	62 32 fd 48 7f da    	vpermt2pd zmm11,zmm0,zmm18
  9377da:	62 a2 f5 48 7f c2    	vpermt2pd zmm16,zmm1,zmm18
  9377e0:	62 31 fd 48 28 f5    	vmovapd zmm14,zmm21
  9377e6:	62 52 fd 48 7f f5    	vpermt2pd zmm14,zmm0,zmm13
  9377ec:	62 c2 f5 48 7f ed    	vpermt2pd zmm21,zmm1,zmm13
  9377f2:	62 11 fd 48 28 ec    	vmovapd zmm13,zmm28
  9377f8:	62 52 ed 48 7f eb    	vpermt2pd zmm13,zmm2,zmm11
  9377fe:	62 42 e5 48 7f e3    	vpermt2pd zmm28,zmm3,zmm11
  937804:	62 a1 fd 48 28 d3    	vmovapd zmm18,zmm19
  93780a:	62 c2 ed 48 7f d6    	vpermt2pd zmm18,zmm2,zmm14
  937810:	62 c2 e5 48 7f de    	vpermt2pd zmm19,zmm3,zmm14
  937816:	62 22 ed 48 7f e8    	vpermt2pd zmm29,zmm2,zmm16
  93781c:	62 22 ed 48 7f d5    	vpermt2pd zmm26,zmm2,zmm21
  937822:	62 31 95 48 14 da    	vunpcklpd zmm11,zmm13,zmm18
  937828:	62 31 95 48 15 f2    	vunpckhpd zmm14,zmm13,zmm18
  93782e:	62 a1 9d 40 14 eb    	vunpcklpd zmm21,zmm28,zmm19
  937834:	62 31 9d 40 15 eb    	vunpckhpd zmm13,zmm28,zmm19
  93783a:	62 81 95 40 14 da    	vunpcklpd zmm19,zmm29,zmm26
  937840:	62 81 95 40 15 c2    	vunpckhpd zmm16,zmm29,zmm26
  937846:	62 c1 fd 48 28 d7    	vmovapd zmm18,zmm15
  93784c:	62 a2 fd 48 7f d7    	vpermt2pd zmm18,zmm0,zmm23
  937852:	62 32 f5 48 7f ff    	vpermt2pd zmm15,zmm1,zmm23
  937858:	62 a1 fd 48 28 f9    	vmovapd zmm23,zmm17
  93785e:	62 82 fd 48 7f fb    	vpermt2pd zmm23,zmm0,zmm27
  937864:	62 82 f5 48 7f cb    	vpermt2pd zmm17,zmm1,zmm27
  93786a:	62 41 fd 48 28 c4    	vmovapd zmm24,zmm12
  937870:	62 22 fd 48 7f c4    	vpermt2pd zmm24,zmm0,zmm20
  937876:	62 32 f5 48 7f e4    	vpermt2pd zmm12,zmm1,zmm20
  93787c:	62 a1 fd 48 28 e6    	vmovapd zmm20,zmm22
  937882:	62 82 fd 48 7f e1    	vpermt2pd zmm20,zmm0,zmm25
  937888:	62 82 f5 48 7f f1    	vpermt2pd zmm22,zmm1,zmm25
  93788e:	62 21 fd 48 28 ca    	vmovapd zmm25,zmm18
  937894:	62 02 ed 48 7f c8    	vpermt2pd zmm25,zmm2,zmm24
  93789a:	62 82 e5 48 7f d0    	vpermt2pd zmm18,zmm3,zmm24
  9378a0:	62 21 fd 48 28 c7    	vmovapd zmm24,zmm23
  9378a6:	62 22 ed 48 7f c4    	vpermt2pd zmm24,zmm2,zmm20
  9378ac:	62 a2 e5 48 7f fc    	vpermt2pd zmm23,zmm3,zmm20
  9378b2:	62 52 ed 48 7f fc    	vpermt2pd zmm15,zmm2,zmm12
  9378b8:	62 a2 ed 48 7f ce    	vpermt2pd zmm17,zmm2,zmm22
  9378be:	62 11 b5 40 14 e0    	vunpcklpd zmm12,zmm25,zmm24
  9378c4:	62 81 b5 40 15 e0    	vunpckhpd zmm20,zmm25,zmm24
  9378ca:	62 a1 ed 40 14 f7    	vunpcklpd zmm22,zmm18,zmm23
  9378d0:	62 a1 ed 40 15 d7    	vunpckhpd zmm18,zmm18,zmm23
  9378d6:	62 a1 85 48 14 f9    	vunpcklpd zmm23,zmm15,zmm17
  9378dc:	62 21 85 48 15 c1    	vunpckhpd zmm24,zmm15,zmm17
  9378e2:	62 61 fd 48 10 49 02 	vmovupd zmm25,ZMMWORD PTR [rcx+0x80]
  9378e9:	62 61 fd 48 10 51 03 	vmovupd zmm26,ZMMWORD PTR [rcx+0xc0]
  9378f0:	62 e1 fd 48 10 49 04 	vmovupd zmm17,ZMMWORD PTR [rcx+0x100]
  9378f7:	62 61 fd 48 10 59 05 	vmovupd zmm27,ZMMWORD PTR [rcx+0x140]
  9378fe:	62 31 d5 40 59 f9    	vmulpd zmm15,zmm21,zmm17
  937904:	62 12 cd 40 bc fb    	vfnmadd231pd zmm15,zmm22,zmm27
  93790a:	62 a1 cd 40 59 c9    	vmulpd zmm17,zmm22,zmm17
  937910:	62 e1 fd 48 10 71 09 	vmovupd zmm22,ZMMWORD PTR [rcx+0x240]
  937917:	62 82 d5 40 b8 cb    	vfmadd231pd zmm17,zmm21,zmm27
  93791d:	62 e1 fd 48 10 69 08 	vmovupd zmm21,ZMMWORD PTR [rcx+0x200]
  937924:	62 21 e5 40 59 dd    	vmulpd zmm27,zmm19,zmm21
  93792a:	62 22 c5 40 bc de    	vfnmadd231pd zmm27,zmm23,zmm22
  937930:	62 a1 c5 40 59 ed    	vmulpd zmm21,zmm23,zmm21
  937936:	62 a2 e5 40 b8 ee    	vfmadd231pd zmm21,zmm19,zmm22
  93793c:	62 e1 fd 48 10 59 0b 	vmovupd zmm19,ZMMWORD PTR [rcx+0x2c0]
  937943:	62 e1 fd 48 10 71 0a 	vmovupd zmm22,ZMMWORD PTR [rcx+0x280]
  93794a:	62 a1 bd 40 59 fe    	vmulpd zmm23,zmm24,zmm22
  937950:	62 a2 fd 40 b8 fb    	vfmadd231pd zmm23,zmm16,zmm19
  937956:	62 a1 fd 40 59 c6    	vmulpd zmm16,zmm16,zmm22
  93795c:	62 81 85 48 5c f3    	vsubpd zmm22,zmm15,zmm27
  937962:	62 e1 cd 40 59 f7    	vmulpd zmm22,zmm22,zmm7
  937968:	62 a2 bd 40 bc c3    	vfnmadd231pd zmm16,zmm24,zmm19
  93796e:	62 a1 f5 40 58 dd    	vaddpd zmm19,zmm17,zmm21
  937974:	62 01 dd 40 59 c1    	vmulpd zmm24,zmm20,zmm25
  93797a:	62 02 8d 48 b8 c2    	vfmadd231pd zmm24,zmm14,zmm26
  937980:	62 11 8d 48 59 f1    	vmulpd zmm14,zmm14,zmm25
  937986:	62 61 fd 48 10 49 07 	vmovupd zmm25,ZMMWORD PTR [rcx+0x1c0]
  93798d:	62 12 dd 40 bc f2    	vfnmadd231pd zmm14,zmm20,zmm26
  937993:	62 e1 fd 48 10 61 06 	vmovupd zmm20,ZMMWORD PTR [rcx+0x180]
  93799a:	62 21 ed 40 59 d4    	vmulpd zmm26,zmm18,zmm20
  9379a0:	62 02 95 48 b8 d1    	vfmadd231pd zmm26,zmm13,zmm25
  9379a6:	62 31 95 48 59 ec    	vmulpd zmm13,zmm13,zmm20
  9379ac:	62 c1 fd 48 28 e0    	vmovapd zmm20,zmm8
  9379b2:	62 c2 e5 40 ac e4    	vfnmadd213pd zmm20,zmm19,zmm12
  9379b8:	62 12 ed 40 bc e9    	vfnmadd231pd zmm13,zmm18,zmm25
  9379be:	62 a1 cd 40 58 d4    	vaddpd zmm18,zmm22,zmm20
  9379c4:	62 01 c5 40 58 c8    	vaddpd zmm25,zmm23,zmm24
  9379ca:	62 11 85 48 58 fb    	vaddpd zmm15,zmm15,zmm27
  9379d0:	62 41 fd 48 28 d8    	vmovapd zmm27,zmm8
  9379d6:	62 02 b5 40 ac da    	vfnmadd213pd zmm27,zmm25,zmm26
  9379dc:	62 a1 f5 40 5c cd    	vsubpd zmm17,zmm17,zmm21
  9379e2:	62 c1 fd 40 5c ee    	vsubpd zmm21,zmm16,zmm14
  9379e8:	62 e1 d5 40 59 ef    	vmulpd zmm21,zmm21,zmm7
  9379ee:	62 51 fd 40 58 f6    	vaddpd zmm14,zmm16,zmm14
  9379f4:	62 a1 a5 40 58 c5    	vaddpd zmm16,zmm27,zmm21
  9379fa:	62 81 c5 40 5c f8    	vsubpd zmm23,zmm23,zmm24
  937a00:	62 41 fd 48 28 c0    	vmovapd zmm24,zmm8
  937a06:	62 42 85 48 ac c3    	vfnmadd213pd zmm24,zmm15,zmm11
  937a0c:	62 e1 f5 40 59 cf    	vmulpd zmm17,zmm17,zmm7
  937a12:	62 a1 dd 40 5c e6    	vsubpd zmm20,zmm20,zmm22
  937a18:	62 a1 bd 40 5c f1    	vsubpd zmm22,zmm24,zmm17
  937a1e:	62 a1 a5 40 5c ed    	vsubpd zmm21,zmm27,zmm21
  937a24:	62 41 fd 48 28 d8    	vmovapd zmm27,zmm8
  937a2a:	62 42 8d 48 ac dd    	vfnmadd213pd zmm27,zmm14,zmm13
  937a30:	62 e1 c5 40 59 ff    	vmulpd zmm23,zmm23,zmm7
  937a36:	62 a1 bd 40 58 c9    	vaddpd zmm17,zmm24,zmm17
  937a3c:	62 21 a5 40 5c c7    	vsubpd zmm24,zmm27,zmm23
  937a42:	62 a1 a5 40 58 ff    	vaddpd zmm23,zmm27,zmm23
  937a48:	62 51 e5 40 58 e4    	vaddpd zmm12,zmm19,zmm12
  937a4e:	62 81 ad 40 58 d9    	vaddpd zmm19,zmm26,zmm25
  937a54:	62 51 a5 48 58 df    	vaddpd zmm11,zmm11,zmm15
  937a5a:	62 51 95 48 58 ee    	vaddpd zmm13,zmm13,zmm14
  937a60:	62 31 ed 40 5c f0    	vsubpd zmm14,zmm18,zmm16
  937a66:	62 31 ed 40 58 f8    	vaddpd zmm15,zmm18,zmm16
  937a6c:	62 81 cd 40 5c c0    	vsubpd zmm16,zmm22,zmm24
  937a72:	62 81 cd 40 58 d0    	vaddpd zmm18,zmm22,zmm24
  937a78:	62 a1 dd 40 58 f5    	vaddpd zmm22,zmm20,zmm21
  937a7e:	62 a1 dd 40 5c e5    	vsubpd zmm20,zmm20,zmm21
  937a84:	62 a1 f5 40 58 ef    	vaddpd zmm21,zmm17,zmm23
  937a8a:	62 a1 f5 40 5c cf    	vsubpd zmm17,zmm17,zmm23
  937a90:	62 a1 9d 48 5c fb    	vsubpd zmm23,zmm12,zmm19
  937a96:	62 31 9d 48 58 e3    	vaddpd zmm12,zmm12,zmm19
  937a9c:	62 c1 a5 48 5c dd    	vsubpd zmm19,zmm11,zmm13
  937aa2:	62 51 a5 48 58 dd    	vaddpd zmm11,zmm11,zmm13
  937aa8:	62 51 fd 48 28 eb    	vmovapd zmm13,zmm11
  937aae:	62 52 b5 48 7f ec    	vpermt2pd zmm13,zmm9,zmm12
  937ab4:	62 52 ad 48 7f dc    	vpermt2pd zmm11,zmm10,zmm12
  937aba:	62 71 fd 48 11 1c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm11
  937ac1:	62 71 fd 48 11 6c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x40],zmm13
  937ac8:	01 
  937ac9:	62 31 fd 48 28 d9    	vmovapd zmm11,zmm17
  937acf:	62 32 b5 48 7f dc    	vpermt2pd zmm11,zmm9,zmm20
  937ad5:	62 a2 ad 48 7f cc    	vpermt2pd zmm17,zmm10,zmm20
  937adb:	62 e1 fd 48 11 4c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x80],zmm17
  937ae2:	02 
  937ae3:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm11
  937aea:	03 
  937aeb:	62 31 fd 48 28 da    	vmovapd zmm11,zmm18
  937af1:	62 52 b5 48 7f df    	vpermt2pd zmm11,zmm9,zmm15
  937af7:	62 c2 ad 48 7f d7    	vpermt2pd zmm18,zmm10,zmm15
  937afd:	62 e1 fd 48 11 54 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x100],zmm18
  937b04:	04 
  937b05:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x140],zmm11
  937b0c:	05 
  937b0d:	62 31 fd 48 28 db    	vmovapd zmm11,zmm19
  937b13:	62 32 b5 48 7f df    	vpermt2pd zmm11,zmm9,zmm23
  937b19:	62 a2 ad 48 7f df    	vpermt2pd zmm19,zmm10,zmm23
  937b1f:	62 e1 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x180],zmm19
  937b26:	06 
  937b27:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm11
  937b2e:	07 
  937b2f:	62 31 fd 48 28 dd    	vmovapd zmm11,zmm21
  937b35:	62 32 b5 48 7f de    	vpermt2pd zmm11,zmm9,zmm22
  937b3b:	62 a2 ad 48 7f ee    	vpermt2pd zmm21,zmm10,zmm22
  937b41:	62 e1 fd 48 11 6c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x200],zmm21
  937b48:	08 
  937b49:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x240],zmm11
  937b50:	09 
  937b51:	62 31 fd 48 28 d8    	vmovapd zmm11,zmm16
  937b57:	62 52 b5 48 7f de    	vpermt2pd zmm11,zmm9,zmm14
  937b5d:	62 c2 ad 48 7f c6    	vpermt2pd zmm16,zmm10,zmm14
  937b63:	62 e1 fd 48 11 44 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x280],zmm16
  937b6a:	0a 
  937b6b:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm11
  937b72:	0b 
  937b73:	48 81 c2 00 03 00 00 	add    rdx,0x300
  937b7a:	48 39 d0             	cmp    rax,rdx
  937b7d:	0f 85 bd f9 ff ff    	jne    937540 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  937b83:	c5 f8 77             	vzeroupper
  937b86:	c3                   	ret
