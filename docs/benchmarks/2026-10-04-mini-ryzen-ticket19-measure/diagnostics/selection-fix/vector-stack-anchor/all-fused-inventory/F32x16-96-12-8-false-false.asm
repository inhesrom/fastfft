
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a721c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a721c0:	48 81 ec 48 01 00 00 	sub    rsp,0x148
  a721c7:	62 f1 7c 48 28 15 2f 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff622a2f]        # 94c00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x220b0>
  a721ce:	2a 62 ff 
  a721d1:	62 f1 7c 48 10 2f    	vmovups zmm5,ZMMWORD PTR [rdi]
  a721d7:	62 71 7c 48 10 57 01 	vmovups zmm10,ZMMWORD PTR [rdi+0x40]
  a721de:	62 f1 7c 48 10 47 02 	vmovups zmm0,ZMMWORD PTR [rdi+0x80]
  a721e5:	62 71 7c 48 10 47 03 	vmovups zmm8,ZMMWORD PTR [rdi+0xc0]
  a721ec:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a721f0:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a721f6:	62 72 6d 48 7f cc    	vpermt2ps zmm9,zmm2,zmm4
  a721fc:	62 f1 7c 48 28 1d 3a 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff622a3a]        # 94c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x220f0>
  a72203:	2a 62 ff 
  a72206:	62 f2 65 48 7f ec    	vpermt2ps zmm5,zmm3,zmm4
  a7220c:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a72212:	62 f2 6d 48 7f fc    	vpermt2ps zmm7,zmm2,zmm4
  a72218:	62 72 65 48 7f d4    	vpermt2ps zmm10,zmm3,zmm4
  a7221e:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a72224:	62 72 6d 48 7f f4    	vpermt2ps zmm14,zmm2,zmm4
  a7222a:	62 f2 65 48 7f c4    	vpermt2ps zmm0,zmm3,zmm4
  a72230:	62 d1 7c 48 28 f0    	vmovaps zmm6,zmm8
  a72236:	62 f2 6d 48 7f f4    	vpermt2ps zmm6,zmm2,zmm4
  a7223c:	62 72 65 48 7f c4    	vpermt2ps zmm8,zmm3,zmm4
  a72242:	62 71 7c 48 10 67 04 	vmovups zmm12,ZMMWORD PTR [rdi+0x100]
  a72249:	62 c1 7c 48 28 cc    	vmovaps zmm17,zmm12
  a7224f:	62 e2 6d 48 7f cc    	vpermt2ps zmm17,zmm2,zmm4
  a72255:	62 72 65 48 7f e4    	vpermt2ps zmm12,zmm3,zmm4
  a7225b:	62 e1 7c 48 10 77 05 	vmovups zmm22,ZMMWORD PTR [rdi+0x140]
  a72262:	62 31 7c 48 28 ee    	vmovaps zmm13,zmm22
  a72268:	62 72 6d 48 7f ec    	vpermt2ps zmm13,zmm2,zmm4
  a7226e:	62 e2 65 48 7f f4    	vpermt2ps zmm22,zmm3,zmm4
  a72274:	62 71 7c 48 10 5f 06 	vmovups zmm11,ZMMWORD PTR [rdi+0x180]
  a7227b:	62 41 7c 48 28 c3    	vmovaps zmm24,zmm11
  a72281:	62 62 6d 48 7f c4    	vpermt2ps zmm24,zmm2,zmm4
  a72287:	62 72 65 48 7f dc    	vpermt2ps zmm11,zmm3,zmm4
  a7228d:	62 e1 7c 48 10 67 07 	vmovups zmm20,ZMMWORD PTR [rdi+0x1c0]
  a72294:	62 a1 7c 48 28 dc    	vmovaps zmm19,zmm20
  a7229a:	62 e2 6d 48 7f dc    	vpermt2ps zmm19,zmm2,zmm4
  a722a0:	62 e2 65 48 7f e4    	vpermt2ps zmm20,zmm3,zmm4
  a722a6:	62 e1 7c 48 10 6f 08 	vmovups zmm21,ZMMWORD PTR [rdi+0x200]
  a722ad:	62 a1 7c 48 28 fd    	vmovaps zmm23,zmm21
  a722b3:	62 e2 6d 48 7f fc    	vpermt2ps zmm23,zmm2,zmm4
  a722b9:	62 e2 65 48 7f ec    	vpermt2ps zmm21,zmm3,zmm4
  a722bf:	62 61 7c 48 10 4f 09 	vmovups zmm25,ZMMWORD PTR [rdi+0x240]
  a722c6:	62 11 7c 48 28 f9    	vmovaps zmm15,zmm25
  a722cc:	62 72 6d 48 7f fc    	vpermt2ps zmm15,zmm2,zmm4
  a722d2:	62 62 65 48 7f cc    	vpermt2ps zmm25,zmm3,zmm4
  a722d8:	62 61 7c 48 10 57 0a 	vmovups zmm26,ZMMWORD PTR [rdi+0x280]
  a722df:	62 01 7c 48 28 da    	vmovaps zmm27,zmm26
  a722e5:	62 62 6d 48 7f dc    	vpermt2ps zmm27,zmm2,zmm4
  a722eb:	62 62 65 48 7f d4    	vpermt2ps zmm26,zmm3,zmm4
  a722f1:	62 61 7c 48 10 67 0b 	vmovups zmm28,ZMMWORD PTR [rdi+0x2c0]
  a722f8:	62 f2 1d 40 77 d4    	vpermi2ps zmm2,zmm28,zmm4
  a722fe:	62 62 65 48 7f e4    	vpermt2ps zmm28,zmm3,zmm4
  a72304:	62 91 34 48 58 c8    	vaddps zmm1,zmm9,zmm24
  a7230a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a72311:	fe 
  a72312:	62 c1 4c 48 58 d7    	vaddps zmm18,zmm6,zmm15
  a72318:	62 b1 74 48 58 ca    	vaddps zmm1,zmm1,zmm18
  a7231e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a72325:	01 
  a72326:	62 01 74 40 58 eb    	vaddps zmm29,zmm17,zmm27
  a7232c:	62 61 64 40 58 f7    	vaddps zmm30,zmm19,zmm7
  a72332:	62 91 14 40 58 ce    	vaddps zmm1,zmm29,zmm30
  a72338:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a7233f:	ff 
  a72340:	62 41 44 40 58 fe    	vaddps zmm31,zmm23,zmm14
  a72346:	62 81 74 40 5c cb    	vsubps zmm17,zmm17,zmm27
  a7234c:	62 41 5c 40 58 da    	vaddps zmm27,zmm20,zmm10
  a72352:	62 c1 5c 40 5c e2    	vsubps zmm20,zmm20,zmm10
  a72358:	62 d1 6c 48 58 cd    	vaddps zmm1,zmm2,zmm13
  a7235e:	62 51 44 40 5c f6    	vsubps zmm14,zmm23,zmm14
  a72364:	62 b1 1c 40 58 de    	vaddps zmm3,zmm28,zmm22
  a7236a:	62 a1 1c 40 5c fe    	vsubps zmm23,zmm28,zmm22
  a72370:	62 41 54 48 58 e3    	vaddps zmm28,zmm5,zmm11
  a72376:	62 11 34 48 5c c8    	vsubps zmm9,zmm9,zmm24
  a7237c:	62 01 3c 48 58 c1    	vaddps zmm24,zmm8,zmm25
  a72382:	62 11 3c 48 5c c1    	vsubps zmm8,zmm8,zmm25
  a72388:	62 81 1c 48 58 f2    	vaddps zmm22,zmm12,zmm26
  a7238e:	62 01 1c 48 5c ca    	vsubps zmm25,zmm12,zmm26
  a72394:	62 71 54 40 58 e0    	vaddps zmm12,zmm21,zmm0
  a7239a:	62 b1 44 48 5c fb    	vsubps zmm7,zmm7,zmm19
  a723a0:	62 11 44 48 58 d1    	vaddps zmm10,zmm7,zmm25
  a723a6:	62 e1 54 40 5c c0    	vsubps zmm16,zmm21,zmm0
  a723ac:	62 71 14 48 5c ea    	vsubps zmm13,zmm13,zmm2
  a723b2:	62 b1 14 48 58 d0    	vaddps zmm2,zmm13,zmm16
  a723b8:	62 f1 2c 48 5c c2    	vsubps zmm0,zmm10,zmm2
  a723be:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a723c5:	04 
  a723c6:	62 f1 2c 48 58 c2    	vaddps zmm0,zmm10,zmm2
  a723cc:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a723d3:	03 
  a723d4:	62 b1 74 40 58 d4    	vaddps zmm2,zmm17,zmm20
  a723da:	62 c1 54 48 5c eb    	vsubps zmm21,zmm5,zmm11
  a723e0:	62 b1 0c 48 58 ef    	vaddps zmm5,zmm14,zmm23
  a723e6:	62 71 04 48 5c fe    	vsubps zmm15,zmm15,zmm6
  a723ec:	62 61 6c 48 58 d5    	vaddps zmm26,zmm2,zmm5
  a723f2:	62 f1 6c 48 5c c5    	vsubps zmm0,zmm2,zmm5
  a723f8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a723ff:	02 
  a72400:	62 f1 04 40 58 d1    	vaddps zmm2,zmm31,zmm1
  a72406:	62 81 14 40 5c de    	vsubps zmm19,zmm29,zmm30
  a7240c:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp-0x40]
  a72413:	ff 
  a72414:	62 71 54 48 58 d2    	vaddps zmm10,zmm5,zmm2
  a7241a:	62 f1 04 40 5c c9    	vsubps zmm1,zmm31,zmm1
  a72420:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a72427:	01 
  a72428:	62 d1 7c 48 58 f2    	vaddps zmm6,zmm0,zmm10
  a7242e:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp-0x80]
  a72435:	fe 
  a72436:	62 21 24 48 5c ea    	vsubps zmm29,zmm11,zmm18
  a7243c:	62 01 4c 40 58 f3    	vaddps zmm30,zmm22,zmm27
  a72442:	62 81 4c 40 5c d3    	vsubps zmm18,zmm22,zmm27
  a72448:	62 61 1c 48 58 fb    	vaddps zmm31,zmm12,zmm3
  a7244e:	62 f1 1c 48 5c db    	vsubps zmm3,zmm12,zmm3
  a72454:	62 71 6c 40 5c db    	vsubps zmm11,zmm18,zmm3
  a7245a:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm11
  a72461:	fe 
  a72462:	62 e1 6c 40 58 f3    	vaddps zmm22,zmm18,zmm3
  a72468:	62 11 1c 40 58 e0    	vaddps zmm12,zmm28,zmm24
  a7246e:	62 01 1c 40 5c c0    	vsubps zmm24,zmm28,zmm24
  a72474:	62 61 64 40 58 e1    	vaddps zmm28,zmm19,zmm1
  a7247a:	62 f1 64 40 5c c9    	vsubps zmm1,zmm19,zmm1
  a72480:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a72487:	62 41 34 48 58 d8    	vaddps zmm27,zmm9,zmm8
  a7248d:	62 51 34 48 5c c8    	vsubps zmm9,zmm9,zmm8
  a72493:	62 81 0c 40 58 df    	vaddps zmm19,zmm30,zmm31
  a72499:	62 a1 74 40 5c cc    	vsubps zmm17,zmm17,zmm20
  a7249f:	62 a1 1c 48 58 e3    	vaddps zmm20,zmm12,zmm19
  a724a5:	62 31 0c 48 5c df    	vsubps zmm11,zmm14,zmm23
  a724ab:	62 a1 04 48 58 fd    	vaddps zmm23,zmm15,zmm21
  a724b1:	62 51 54 40 5c f7    	vsubps zmm14,zmm21,zmm15
  a724b7:	62 e2 7d 48 18 15 9f 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff602f9f]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a724be:	2f 60 ff 
  a724c1:	62 71 34 40 5c ff    	vsubps zmm15,zmm25,zmm7
  a724c7:	62 a1 7c 48 28 ea    	vmovaps zmm21,zmm18
  a724cd:	62 d1 7c 40 5c dd    	vsubps zmm3,zmm16,zmm13
  a724d3:	62 31 7c 48 28 ea    	vmovaps zmm13,zmm18
  a724d9:	62 72 6d 40 ac d0    	vfnmadd213ps zmm10,zmm18,zmm0
  a724df:	62 41 74 40 58 cb    	vaddps zmm25,zmm17,zmm11
  a724e5:	62 c2 6d 40 ac dc    	vfnmadd213ps zmm19,zmm18,zmm12
  a724eb:	62 11 34 48 58 c1    	vaddps zmm8,zmm9,zmm25
  a724f1:	62 42 6d 40 ac c9    	vfnmadd213ps zmm25,zmm18,zmm9
  a724f7:	62 31 7c 48 28 e2    	vmovaps zmm12,zmm18
  a724fd:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a72503:	62 f1 04 48 58 fb    	vaddps zmm7,zmm15,zmm3
  a72509:	62 c2 45 48 ac d6    	vfnmadd213ps zmm18,zmm7,zmm14
  a7250f:	62 f1 0c 48 58 ff    	vaddps zmm7,zmm14,zmm7
  a72515:	62 01 0c 40 5c ff    	vsubps zmm31,zmm30,zmm31
  a7251b:	62 82 2d 40 ac eb    	vfnmadd213ps zmm21,zmm26,zmm27
  a72521:	62 f1 54 48 5c ea    	vsubps zmm5,zmm5,zmm2
  a72527:	62 f2 7d 48 18 05 a3 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff602da3]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a7252e:	2d 60 ff 
  a72531:	62 71 7c 48 59 4c 24 	vmulps zmm9,zmm0,ZMMWORD PTR [rsp+0x100]
  a72538:	04 
  a72539:	62 31 34 48 58 f5    	vaddps zmm14,zmm9,zmm21
  a7253f:	62 c1 54 40 5c e9    	vsubps zmm21,zmm21,zmm9
  a72545:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0xc0]
  a7254c:	03 
  a7254d:	62 32 6d 48 ac ef    	vfnmadd213ps zmm13,zmm2,zmm23
  a72553:	62 61 7c 48 59 74 24 	vmulps zmm30,zmm0,ZMMWORD PTR [rsp+0x80]
  a7255a:	02 
  a7255b:	62 11 14 48 5c ce    	vsubps zmm9,zmm13,zmm30
  a72561:	62 01 14 48 58 f6    	vaddps zmm30,zmm13,zmm30
  a72567:	62 12 1d 40 ac e5    	vfnmadd213ps zmm12,zmm28,zmm29
  a7256d:	62 01 14 40 58 e4    	vaddps zmm28,zmm29,zmm28
  a72573:	62 92 4d 40 ac c8    	vfnmadd213ps zmm1,zmm22,zmm24
  a72579:	62 31 3c 40 58 ee    	vaddps zmm13,zmm24,zmm22
  a7257f:	62 f1 04 48 5c db    	vsubps zmm3,zmm15,zmm3
  a72585:	62 51 74 40 5c fb    	vsubps zmm15,zmm17,zmm11
  a7258b:	62 e1 7c 48 59 74 24 	vmulps zmm22,zmm0,ZMMWORD PTR [rsp-0x80]
  a72592:	fe 
  a72593:	62 e1 7c 48 59 04 24 	vmulps zmm16,zmm0,ZMMWORD PTR [rsp]
  a7259a:	62 e1 04 40 59 c8    	vmulps zmm17,zmm31,zmm0
  a725a0:	62 f1 54 48 59 e8    	vmulps zmm5,zmm5,zmm0
  a725a6:	62 f1 64 48 59 d8    	vmulps zmm3,zmm3,zmm0
  a725ac:	62 61 04 48 59 c0    	vmulps zmm24,zmm15,zmm0
  a725b2:	62 21 2c 48 58 e9    	vaddps zmm29,zmm10,zmm17
  a725b8:	62 31 2c 48 5c d1    	vsubps zmm10,zmm10,zmm17
  a725be:	62 e1 64 40 5c cd    	vsubps zmm17,zmm19,zmm5
  a725c4:	62 21 54 48 58 fb    	vaddps zmm31,zmm5,zmm19
  a725ca:	62 91 24 40 58 ea    	vaddps zmm5,zmm27,zmm26
  a725d0:	62 31 1c 48 5c de    	vsubps zmm11,zmm12,zmm22
  a725d6:	62 f1 44 40 58 c2    	vaddps zmm0,zmm23,zmm2
  a725dc:	62 71 7c 40 58 f9    	vaddps zmm15,zmm16,zmm1
  a725e2:	62 31 1c 48 58 e6    	vaddps zmm12,zmm12,zmm22
  a725e8:	62 01 64 48 58 d1    	vaddps zmm26,zmm3,zmm25
  a725ee:	62 a1 74 48 5c f8    	vsubps zmm23,zmm1,zmm16
  a725f4:	62 81 6c 40 5c c0    	vsubps zmm16,zmm18,zmm24
  a725fa:	62 f1 34 40 5c cb    	vsubps zmm1,zmm25,zmm3
  a72600:	62 01 6c 40 58 c8    	vaddps zmm25,zmm18,zmm24
  a72606:	62 e1 7c 48 28 1d 70 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff654970]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a7260d:	49 65 ff 
  a72610:	62 d2 65 40 7f f2    	vpermt2ps zmm6,zmm19,zmm10
  a72616:	62 72 65 40 7f f5    	vpermt2ps zmm14,zmm19,zmm5
  a7261c:	62 52 65 40 7f dc    	vpermt2ps zmm11,zmm19,zmm12
  a72622:	62 72 65 40 7f c1    	vpermt2ps zmm8,zmm19,zmm1
  a72628:	62 62 65 40 7f ec    	vpermt2ps zmm29,zmm19,zmm4
  a7262e:	62 e2 65 40 7f ec    	vpermt2ps zmm21,zmm19,zmm4
  a72634:	62 62 65 40 7f e4    	vpermt2ps zmm28,zmm19,zmm4
  a7263a:	62 62 65 40 7f d4    	vpermt2ps zmm26,zmm19,zmm4
  a72640:	62 e1 7c 48 28 15 b6 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6548b6]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a72647:	48 65 ff 
  a7264a:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a72650:	62 92 6d 40 7f cd    	vpermt2ps zmm1,zmm18,zmm29
  a72656:	62 e1 7c 48 28 35 e0 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6548e0]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a7265d:	48 65 ff 
  a72660:	62 92 4d 40 7f f5    	vpermt2ps zmm6,zmm22,zmm29
  a72666:	62 d1 7c 48 28 ee    	vmovaps zmm5,zmm14
  a7266c:	62 b2 6d 40 7f ed    	vpermt2ps zmm5,zmm18,zmm21
  a72672:	62 32 4d 40 7f f5    	vpermt2ps zmm14,zmm22,zmm21
  a72678:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a7267e:	62 12 6d 40 7f d4    	vpermt2ps zmm10,zmm18,zmm28
  a72684:	62 12 4d 40 7f dc    	vpermt2ps zmm11,zmm22,zmm28
  a7268a:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a72690:	62 12 6d 40 7f e2    	vpermt2ps zmm12,zmm18,zmm26
  a72696:	62 12 4d 40 7f c2    	vpermt2ps zmm8,zmm22,zmm26
  a7269c:	62 d1 f5 48 14 da    	vunpcklpd zmm3,zmm1,zmm10
  a726a2:	62 41 f5 48 15 d2    	vunpckhpd zmm26,zmm1,zmm10
  a726a8:	62 d1 d5 48 14 cc    	vunpcklpd zmm1,zmm5,zmm12
  a726ae:	62 51 d5 48 15 e4    	vunpckhpd zmm12,zmm5,zmm12
  a726b4:	62 d1 cd 48 14 eb    	vunpcklpd zmm5,zmm6,zmm11
  a726ba:	62 41 cd 48 15 db    	vunpckhpd zmm27,zmm6,zmm11
  a726c0:	62 51 8d 48 14 d8    	vunpcklpd zmm11,zmm14,zmm8
  a726c6:	62 c1 8d 48 15 e8    	vunpckhpd zmm21,zmm14,zmm8
  a726cc:	62 71 7c 48 28 05 2a 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff65472a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a726d3:	47 65 ff 
  a726d6:	62 f1 7c 48 28 d3    	vmovaps zmm2,zmm3
  a726dc:	62 f2 3d 48 7f d1    	vpermt2ps zmm2,zmm8,zmm1
  a726e2:	62 61 7c 48 28 05 54 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff654754]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a726e9:	47 65 ff 
  a726ec:	62 f2 3d 40 7f d9    	vpermt2ps zmm3,zmm24,zmm1
  a726f2:	62 11 7c 48 28 d2    	vmovaps zmm10,zmm26
  a726f8:	62 52 3d 48 7f d4    	vpermt2ps zmm10,zmm8,zmm12
  a726fe:	62 42 3d 40 7f d4    	vpermt2ps zmm26,zmm24,zmm12
  a72704:	62 71 7c 48 28 f5    	vmovaps zmm14,zmm5
  a7270a:	62 52 3d 48 7f f3    	vpermt2ps zmm14,zmm8,zmm11
  a72710:	62 d2 3d 40 7f eb    	vpermt2ps zmm5,zmm24,zmm11
  a72716:	62 11 7c 48 28 db    	vmovaps zmm11,zmm27
  a7271c:	62 32 3d 48 7f dd    	vpermt2ps zmm11,zmm8,zmm21
  a72722:	62 22 3d 40 7f dd    	vpermt2ps zmm27,zmm24,zmm21
  a72728:	62 82 65 40 7f e7    	vpermt2ps zmm20,zmm19,zmm31
  a7272e:	62 72 65 40 7f c8    	vpermt2ps zmm9,zmm19,zmm0
  a72734:	62 32 65 40 7f ff    	vpermt2ps zmm15,zmm19,zmm23
  a7273a:	62 92 65 40 7f f9    	vpermt2ps zmm7,zmm19,zmm25
  a72740:	62 e2 65 40 7f cc    	vpermt2ps zmm17,zmm19,zmm4
  a72746:	62 62 65 40 7f f4    	vpermt2ps zmm30,zmm19,zmm4
  a7274c:	62 72 65 40 7f ec    	vpermt2ps zmm13,zmm19,zmm4
  a72752:	62 e2 65 40 7f c4    	vpermt2ps zmm16,zmm19,zmm4
  a72758:	62 b1 7c 48 28 c4    	vmovaps zmm0,zmm20
  a7275e:	62 b2 6d 40 7f c1    	vpermt2ps zmm0,zmm18,zmm17
  a72764:	62 a2 4d 40 7f e1    	vpermt2ps zmm20,zmm22,zmm17
  a7276a:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a72770:	62 92 6d 40 7f ce    	vpermt2ps zmm1,zmm18,zmm30
  a72776:	62 12 4d 40 7f ce    	vpermt2ps zmm9,zmm22,zmm30
  a7277c:	62 d1 7c 48 28 e7    	vmovaps zmm4,zmm15
  a72782:	62 d2 6d 40 7f e5    	vpermt2ps zmm4,zmm18,zmm13
  a72788:	62 52 4d 40 7f fd    	vpermt2ps zmm15,zmm22,zmm13
  a7278e:	62 a2 45 48 77 d0    	vpermi2ps zmm18,zmm7,zmm16
  a72794:	62 b2 4d 40 7f f8    	vpermt2ps zmm7,zmm22,zmm16
  a7279a:	62 e1 fd 48 14 cc    	vunpcklpd zmm17,zmm0,zmm4
  a727a0:	62 71 fd 48 15 ec    	vunpckhpd zmm13,zmm0,zmm4
  a727a6:	62 b1 f5 48 14 e2    	vunpcklpd zmm4,zmm1,zmm18
  a727ac:	62 b1 f5 48 15 ca    	vunpckhpd zmm1,zmm1,zmm18
  a727b2:	62 c1 dd 40 14 c7    	vunpcklpd zmm16,zmm20,zmm15
  a727b8:	62 51 dd 40 15 e7    	vunpckhpd zmm12,zmm20,zmm15
  a727be:	62 f1 b5 48 14 f7    	vunpcklpd zmm6,zmm9,zmm7
  a727c4:	62 f1 b5 48 15 ff    	vunpckhpd zmm7,zmm9,zmm7
  a727ca:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a727d0:	62 f2 3d 48 7f c4    	vpermt2ps zmm0,zmm8,zmm4
  a727d6:	62 e2 3d 40 7f cc    	vpermt2ps zmm17,zmm24,zmm4
  a727dc:	62 d1 7c 48 28 e5    	vmovaps zmm4,zmm13
  a727e2:	62 f2 3d 48 7f e1    	vpermt2ps zmm4,zmm8,zmm1
  a727e8:	62 72 3d 40 7f e9    	vpermt2ps zmm13,zmm24,zmm1
  a727ee:	62 a1 7c 48 28 d0    	vmovaps zmm18,zmm16
  a727f4:	62 e2 3d 48 7f d6    	vpermt2ps zmm18,zmm8,zmm6
  a727fa:	62 e2 3d 40 7f c6    	vpermt2ps zmm16,zmm24,zmm6
  a72800:	62 72 1d 48 77 c7    	vpermi2ps zmm8,zmm12,zmm7
  a72806:	62 72 3d 40 7f e7    	vpermt2ps zmm12,zmm24,zmm7
  a7280c:	62 e1 7c 48 10 5a 02 	vmovups zmm19,ZMMWORD PTR [rdx+0x80]
  a72813:	62 f1 7c 48 10 4a 03 	vmovups zmm1,ZMMWORD PTR [rdx+0xc0]
  a7281a:	62 f1 7c 48 10 72 04 	vmovups zmm6,ZMMWORD PTR [rdx+0x100]
  a72821:	62 e1 7c 48 10 62 05 	vmovups zmm20,ZMMWORD PTR [rdx+0x140]
  a72828:	62 71 7c 48 10 7a 06 	vmovups zmm15,ZMMWORD PTR [rdx+0x180]
  a7282f:	62 71 7c 48 10 4a 07 	vmovups zmm9,ZMMWORD PTR [rdx+0x1c0]
  a72836:	62 e1 7c 48 10 6a 08 	vmovups zmm21,ZMMWORD PTR [rdx+0x200]
  a7283d:	62 e1 7c 48 10 72 09 	vmovups zmm22,ZMMWORD PTR [rdx+0x240]
  a72844:	62 b1 0c 48 59 fd    	vmulps zmm7,zmm14,zmm21
  a7284a:	62 b2 6d 40 bc fe    	vfnmadd231ps zmm7,zmm18,zmm22
  a72850:	62 a1 6c 40 59 d5    	vmulps zmm18,zmm18,zmm21
  a72856:	62 e1 7c 48 10 6a 0a 	vmovups zmm21,ZMMWORD PTR [rdx+0x280]
  a7285d:	62 c2 4d 40 b8 d6    	vfmadd231ps zmm18,zmm22,zmm14
  a72863:	62 e1 7c 48 10 72 0b 	vmovups zmm22,ZMMWORD PTR [rdx+0x2c0]
  a7286a:	62 71 2c 48 59 f6    	vmulps zmm14,zmm10,zmm6
  a72870:	62 32 5d 48 bc f4    	vfnmadd231ps zmm14,zmm4,zmm20
  a72876:	62 e1 5c 48 59 fe    	vmulps zmm23,zmm4,zmm6
  a7287c:	62 f1 7c 48 10 62 0c 	vmovups zmm4,ZMMWORD PTR [rdx+0x300]
  a72883:	62 c2 5d 40 b8 fa    	vfmadd231ps zmm23,zmm20,zmm10
  a72889:	62 f1 7c 48 10 72 0d 	vmovups zmm6,ZMMWORD PTR [rdx+0x340]
  a72890:	62 e1 24 48 59 e4    	vmulps zmm20,zmm11,zmm4
  a72896:	62 e2 3d 48 bc e6    	vfnmadd231ps zmm20,zmm8,zmm6
  a7289c:	62 61 3c 48 59 c4    	vmulps zmm24,zmm8,zmm4
  a728a2:	62 61 7c 48 10 4a 0e 	vmovups zmm25,ZMMWORD PTR [rdx+0x380]
  a728a9:	62 42 4d 48 b8 c3    	vfmadd231ps zmm24,zmm6,zmm11
  a728af:	62 71 7c 48 10 5a 0f 	vmovups zmm11,ZMMWORD PTR [rdx+0x3c0]
  a728b6:	62 21 64 48 59 e3    	vmulps zmm28,zmm3,zmm19
  a728bc:	62 62 75 40 bc e1    	vfnmadd231ps zmm28,zmm17,zmm1
  a728c2:	62 a1 74 40 59 cb    	vmulps zmm17,zmm17,zmm19
  a728c8:	62 71 6c 48 58 c7    	vaddps zmm8,zmm2,zmm7
  a728ce:	62 e2 75 48 b8 cb    	vfmadd231ps zmm17,zmm1,zmm3
  a728d4:	62 31 0c 48 58 d4    	vaddps zmm10,zmm14,zmm20
  a728da:	62 a1 54 48 59 dd    	vmulps zmm19,zmm5,zmm21
  a728e0:	62 a2 7d 40 bc de    	vfnmadd231ps zmm19,zmm16,zmm22
  a728e6:	62 a1 7c 40 59 c5    	vmulps zmm16,zmm16,zmm21
  a728ec:	62 d1 3c 48 58 ca    	vaddps zmm1,zmm8,zmm10
  a728f2:	62 e2 4d 40 b8 c5    	vfmadd231ps zmm16,zmm22,zmm5
  a728f8:	62 b1 1c 40 58 f3    	vaddps zmm6,zmm28,zmm19
  a728fe:	62 d1 2c 40 59 ef    	vmulps zmm5,zmm26,zmm15
  a72904:	62 d2 15 48 bc e9    	vfnmadd231ps zmm5,zmm13,zmm9
  a7290a:	62 51 14 48 59 ef    	vmulps zmm13,zmm13,zmm15
  a72910:	62 11 24 40 59 f9    	vmulps zmm15,zmm27,zmm25
  a72916:	62 52 1d 48 bc fb    	vfnmadd231ps zmm15,zmm12,zmm11
  a7291c:	62 12 35 48 b8 ea    	vfmadd231ps zmm13,zmm9,zmm26
  a72922:	62 51 54 48 58 cf    	vaddps zmm9,zmm5,zmm15
  a72928:	62 d1 4c 48 58 e1    	vaddps zmm4,zmm6,zmm9
  a7292e:	62 11 1c 48 59 e1    	vmulps zmm12,zmm12,zmm25
  a72934:	62 e1 6c 40 58 e8    	vaddps zmm21,zmm18,zmm0
  a7293a:	62 12 25 48 b8 e3    	vfmadd231ps zmm12,zmm11,zmm27
  a72940:	62 11 44 40 58 d8    	vaddps zmm11,zmm23,zmm24
  a72946:	62 b1 24 48 58 dd    	vaddps zmm3,zmm11,zmm21
  a7294c:	62 e1 6c 48 5c f7    	vsubps zmm22,zmm2,zmm7
  a72952:	62 b1 74 40 58 d0    	vaddps zmm2,zmm17,zmm16
  a72958:	62 81 44 40 5c f8    	vsubps zmm23,zmm23,zmm24
  a7295e:	62 41 14 48 58 c4    	vaddps zmm24,zmm13,zmm12
  a72964:	62 a1 1c 40 5c db    	vsubps zmm19,zmm28,zmm19
  a7296a:	62 91 6c 48 58 f8    	vaddps zmm7,zmm2,zmm24
  a72970:	62 a1 74 40 5c c0    	vsubps zmm16,zmm17,zmm16
  a72976:	62 a1 4c 40 58 cf    	vaddps zmm17,zmm22,zmm23
  a7297c:	62 51 14 48 5c e4    	vsubps zmm12,zmm13,zmm12
  a72982:	62 31 64 40 58 e8    	vaddps zmm13,zmm19,zmm16
  a72988:	62 d1 54 48 5c ef    	vsubps zmm5,zmm5,zmm15
  a7298e:	62 72 7d 48 18 3d 04 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff602a04]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a72995:	2a 60 ff 
  a72998:	62 51 14 48 59 ef    	vmulps zmm13,zmm13,zmm15
  a7299e:	62 a1 7c 48 5c d2    	vsubps zmm18,zmm0,zmm18
  a729a4:	62 f1 1c 48 5c c5    	vsubps zmm0,zmm12,zmm5
  a729aa:	62 41 7c 48 59 cf    	vmulps zmm25,zmm0,zmm15
  a729b0:	62 51 5c 40 5c f6    	vsubps zmm14,zmm20,zmm14
  a729b6:	62 81 14 48 58 e1    	vaddps zmm20,zmm13,zmm25
  a729bc:	62 a1 7c 40 5c c3    	vsubps zmm16,zmm16,zmm19
  a729c2:	62 b1 74 40 58 c4    	vaddps zmm0,zmm17,zmm20
  a729c8:	62 d1 54 48 58 ec    	vaddps zmm5,zmm5,zmm12
  a729ce:	62 31 0c 48 58 e2    	vaddps zmm12,zmm14,zmm18
  a729d4:	62 c1 7c 40 59 c7    	vmulps zmm16,zmm16,zmm15
  a729da:	62 51 54 48 59 ff    	vmulps zmm15,zmm5,zmm15
  a729e0:	62 c1 7c 40 5c df    	vsubps zmm19,zmm16,zmm15
  a729e6:	62 41 3c 48 5c d2    	vsubps zmm26,zmm8,zmm10
  a729ec:	62 21 1c 48 58 db    	vaddps zmm27,zmm12,zmm19
  a729f2:	62 01 6c 48 5c c0    	vsubps zmm24,zmm2,zmm24
  a729f8:	c5 fc 28 15 40 42 60 	vmovaps ymm2,YMMWORD PTR [rip+0xffffffffff604240]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a729ff:	ff 
  a72a00:	62 c1 54 40 5c eb    	vsubps zmm21,zmm21,zmm11
  a72a06:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a72a0c:	62 92 6d 48 7f eb    	vpermt2ps zmm5,zmm2,zmm27
  a72a12:	62 61 34 48 5c e6    	vsubps zmm28,zmm9,zmm6
  a72a18:	62 91 2c 40 58 f0    	vaddps zmm6,zmm26,zmm24
  a72a1e:	62 a1 4c 40 5c f7    	vsubps zmm22,zmm22,zmm23
  a72a24:	62 81 54 40 58 fc    	vaddps zmm23,zmm21,zmm28
  a72a2a:	62 c1 7c 40 58 c7    	vaddps zmm16,zmm16,zmm15
  a72a30:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a72a36:	62 32 6d 48 7f c7    	vpermt2ps zmm8,zmm2,zmm23
  a72a3c:	62 c1 6c 40 5c d6    	vsubps zmm18,zmm18,zmm14
  a72a42:	62 31 4c 40 58 c8    	vaddps zmm9,zmm22,zmm16
  a72a48:	62 41 34 40 5c cd    	vsubps zmm25,zmm25,zmm13
  a72a4e:	62 01 6c 40 58 e9    	vaddps zmm29,zmm18,zmm25
  a72a54:	62 31 74 40 5c d4    	vsubps zmm10,zmm17,zmm20
  a72a5a:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a72a60:	62 12 6d 48 7f dd    	vpermt2ps zmm11,zmm2,zmm29
  a72a66:	62 a1 1c 48 5c cb    	vsubps zmm17,zmm12,zmm19
  a72a6c:	62 71 74 48 5c ec    	vsubps zmm13,zmm1,zmm4
  a72a72:	62 11 2c 40 5c e0    	vsubps zmm12,zmm26,zmm24
  a72a78:	62 e1 64 48 5c df    	vsubps zmm19,zmm3,zmm7
  a72a7e:	62 81 54 40 5c e4    	vsubps zmm20,zmm21,zmm28
  a72a84:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a72a8a:	62 32 6d 48 7f fb    	vpermt2ps zmm15,zmm2,zmm19
  a72a90:	62 31 4c 40 5c f0    	vsubps zmm14,zmm22,zmm16
  a72a96:	62 c1 7c 48 28 c2    	vmovaps zmm16,zmm10
  a72a9c:	62 a2 6d 48 7f c1    	vpermt2ps zmm16,zmm2,zmm17
  a72aa2:	62 81 6c 40 5c d1    	vsubps zmm18,zmm18,zmm25
  a72aa8:	62 c1 7c 48 28 ec    	vmovaps zmm21,zmm12
  a72aae:	62 a2 6d 48 7f ec    	vpermt2ps zmm21,zmm2,zmm20
  a72ab4:	62 f1 74 48 58 cc    	vaddps zmm1,zmm1,zmm4
  a72aba:	62 d1 7c 48 28 e6    	vmovaps zmm4,zmm14
  a72ac0:	62 b2 6d 48 7f e2    	vpermt2ps zmm4,zmm2,zmm18
  a72ac6:	62 f1 64 48 58 df    	vaddps zmm3,zmm3,zmm7
  a72acc:	62 f2 75 48 77 d3    	vpermi2ps zmm2,zmm1,zmm3
  a72ad2:	62 f1 7c 48 28 3d a4 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6221a4]        # 94c80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x22130>
  a72ad9:	21 62 ff 
  a72adc:	62 f2 45 48 7f cb    	vpermt2ps zmm1,zmm7,zmm3
  a72ae2:	62 92 45 48 7f c3    	vpermt2ps zmm0,zmm7,zmm27
  a72ae8:	62 b2 45 48 7f f7    	vpermt2ps zmm6,zmm7,zmm23
  a72aee:	62 12 45 48 7f cd    	vpermt2ps zmm9,zmm7,zmm29
  a72af4:	62 32 45 48 7f eb    	vpermt2ps zmm13,zmm7,zmm19
  a72afa:	62 32 45 48 7f d1    	vpermt2ps zmm10,zmm7,zmm17
  a72b00:	62 32 45 48 7f e4    	vpermt2ps zmm12,zmm7,zmm20
  a72b06:	62 32 45 48 7f f2    	vpermt2ps zmm14,zmm7,zmm18
  a72b0c:	62 f1 7c 48 11 0e    	vmovups ZMMWORD PTR [rsi],zmm1
  a72b12:	c5 fc 11 56 40       	vmovups YMMWORD PTR [rsi+0x40],ymm2
  a72b17:	62 f1 7c 48 11 86 60 	vmovups ZMMWORD PTR [rsi+0x60],zmm0
  a72b1e:	00 00 00 
  a72b21:	c5 fc 11 ae a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm5
  a72b28:	00 
  a72b29:	62 f1 7c 48 11 76 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm6
  a72b30:	c5 7c 11 86 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm8
  a72b37:	00 
  a72b38:	62 71 7c 48 11 8e 20 	vmovups ZMMWORD PTR [rsi+0x120],zmm9
  a72b3f:	01 00 00 
  a72b42:	c5 7c 11 9e 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm11
  a72b49:	00 
  a72b4a:	62 71 7c 48 11 6e 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm13
  a72b51:	c5 7c 11 be c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm15
  a72b58:	00 
  a72b59:	62 71 7c 48 11 96 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm10
  a72b60:	01 00 00 
  a72b63:	62 e1 7c 28 11 46 11 	vmovups YMMWORD PTR [rsi+0x220],ymm16
  a72b6a:	62 71 7c 48 11 66 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm12
  a72b71:	62 e1 7c 28 11 6e 14 	vmovups YMMWORD PTR [rsi+0x280],ymm21
  a72b78:	62 71 7c 48 11 b6 a0 	vmovups ZMMWORD PTR [rsi+0x2a0],zmm14
  a72b7f:	02 00 00 
  a72b82:	c5 fc 11 a6 e0 02 00 	vmovups YMMWORD PTR [rsi+0x2e0],ymm4
  a72b89:	00 
  a72b8a:	48 81 c4 48 01 00 00 	add    rsp,0x148
  a72b91:	c5 f8 77             	vzeroupper
  a72b94:	c3                   	ret
