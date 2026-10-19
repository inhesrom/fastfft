
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000936240 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  936240:	62 f1 fd 48 10 05 1e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff790b1e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  936247:	0b 79 ff 
  93624a:	62 f1 fd 48 10 0d 54 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff790b54]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  936251:	0b 79 ff 
  936254:	62 f1 fd 48 10 15 8a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff790a8a]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  93625b:	0a 79 ff 
  93625e:	62 f1 fd 48 10 1d c0 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff790ac0]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  936265:	0a 79 ff 
  936268:	48 c1 e2 08          	shl    rdx,0x8
  93626c:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  936270:	31 d2                	xor    edx,edx
  936272:	62 f1 fd 48 28 25 84 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff74c084]        # 82300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xf7b0>
  936279:	c0 74 ff 
  93627c:	62 f1 fd 48 28 2d ba 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff74c0ba]        # 82340 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xf7f0>
  936283:	c0 74 ff 
  936286:	62 f2 fd 48 19 35 10 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff73ec10]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  93628d:	ec 73 ff 
  936290:	62 f2 fd 48 19 3d 86 	vbroadcastsd zmm7,QWORD PTR [rip+0xffffffffff73e986]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  936297:	e9 73 ff 
  93629a:	62 72 fd 48 19 05 f4 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff73e7f4]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  9362a1:	e7 73 ff 
  9362a4:	62 71 fd 48 28 0d d2 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff74c0d2]        # 82380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xf830>
  9362ab:	c0 74 ff 
  9362ae:	62 71 fd 48 28 15 08 	vmovapd zmm10,ZMMWORD PTR [rip+0xffffffffff74c108]        # 823c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xf870>
  9362b5:	c1 74 ff 
  9362b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  9362bf:	00 
  9362c0:	62 71 fd 48 10 1c 17 	vmovupd zmm11,ZMMWORD PTR [rdi+rdx*1]
  9362c7:	c5 7d 10 64 17 40    	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0x40]
  9362cd:	62 51 fd 48 28 f3    	vmovapd zmm14,zmm11
  9362d3:	62 52 dd 48 7f f4    	vpermt2pd zmm14,zmm4,zmm12
  9362d9:	62 52 d5 48 7f dc    	vpermt2pd zmm11,zmm5,zmm12
  9362df:	62 71 fd 48 10 ac 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1+0x60]
  9362e6:	60 00 00 00 
  9362ea:	c5 7d 10 a4 17 a0 00 	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0xa0]
  9362f1:	00 00 
  9362f3:	62 51 fd 48 28 fd    	vmovapd zmm15,zmm13
  9362f9:	62 52 dd 48 7f fc    	vpermt2pd zmm15,zmm4,zmm12
  9362ff:	62 52 d5 48 7f ec    	vpermt2pd zmm13,zmm5,zmm12
  936305:	62 e1 fd 48 10 44 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0xc0]
  93630c:	03 
  93630d:	62 e1 fd 28 10 4c 17 	vmovupd ymm17,YMMWORD PTR [rdi+rdx*1+0x100]
  936314:	08 
  936315:	62 31 fd 48 28 e0    	vmovapd zmm12,zmm16
  93631b:	62 32 dd 48 7f e1    	vpermt2pd zmm12,zmm4,zmm17
  936321:	62 a2 d5 48 7f c1    	vpermt2pd zmm16,zmm5,zmm17
  936327:	62 e1 fd 48 10 8c 17 	vmovupd zmm17,ZMMWORD PTR [rdi+rdx*1+0x120]
  93632e:	20 01 00 00 
  936332:	62 e1 fd 28 10 54 17 	vmovupd ymm18,YMMWORD PTR [rdi+rdx*1+0x160]
  936339:	0b 
  93633a:	62 a1 fd 48 28 d9    	vmovapd zmm19,zmm17
  936340:	62 a2 dd 48 7f da    	vpermt2pd zmm19,zmm4,zmm18
  936346:	62 a2 d5 48 7f ca    	vpermt2pd zmm17,zmm5,zmm18
  93634c:	62 e1 fd 48 10 54 17 	vmovupd zmm18,ZMMWORD PTR [rdi+rdx*1+0x180]
  936353:	06 
  936354:	62 e1 fd 28 10 64 17 	vmovupd ymm20,YMMWORD PTR [rdi+rdx*1+0x1c0]
  93635b:	0e 
  93635c:	62 a1 fd 48 28 ea    	vmovapd zmm21,zmm18
  936362:	62 a2 dd 48 7f ec    	vpermt2pd zmm21,zmm4,zmm20
  936368:	62 a2 d5 48 7f d4    	vpermt2pd zmm18,zmm5,zmm20
  93636e:	62 e1 fd 48 10 a4 17 	vmovupd zmm20,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  936375:	e0 01 00 00 
  936379:	62 e1 fd 28 10 74 17 	vmovupd ymm22,YMMWORD PTR [rdi+rdx*1+0x220]
  936380:	11 
  936381:	62 a1 fd 48 28 fc    	vmovapd zmm23,zmm20
  936387:	62 a2 dd 48 7f fe    	vpermt2pd zmm23,zmm4,zmm22
  93638d:	62 a2 d5 48 7f e6    	vpermt2pd zmm20,zmm5,zmm22
  936393:	62 e1 fd 48 10 74 17 	vmovupd zmm22,ZMMWORD PTR [rdi+rdx*1+0x240]
  93639a:	09 
  93639b:	62 61 fd 28 10 44 17 	vmovupd ymm24,YMMWORD PTR [rdi+rdx*1+0x280]
  9363a2:	14 
  9363a3:	62 21 fd 48 28 ce    	vmovapd zmm25,zmm22
  9363a9:	62 02 dd 48 7f c8    	vpermt2pd zmm25,zmm4,zmm24
  9363af:	62 82 d5 48 7f f0    	vpermt2pd zmm22,zmm5,zmm24
  9363b5:	62 61 fd 48 10 84 17 	vmovupd zmm24,ZMMWORD PTR [rdi+rdx*1+0x2a0]
  9363bc:	a0 02 00 00 
  9363c0:	62 61 fd 28 10 54 17 	vmovupd ymm26,YMMWORD PTR [rdi+rdx*1+0x2e0]
  9363c7:	17 
  9363c8:	62 01 fd 48 28 d8    	vmovapd zmm27,zmm24
  9363ce:	62 02 dd 48 7f da    	vpermt2pd zmm27,zmm4,zmm26
  9363d4:	62 02 d5 48 7f c2    	vpermt2pd zmm24,zmm5,zmm26
  9363da:	62 21 8d 48 58 d5    	vaddpd zmm26,zmm14,zmm21
  9363e0:	62 31 8d 48 5c f5    	vsubpd zmm14,zmm14,zmm21
  9363e6:	62 a1 fd 40 58 ee    	vaddpd zmm21,zmm16,zmm22
  9363ec:	62 a1 fd 40 5c c6    	vsubpd zmm16,zmm16,zmm22
  9363f2:	62 a1 85 48 58 f7    	vaddpd zmm22,zmm15,zmm23
  9363f8:	62 31 85 48 5c ff    	vsubpd zmm15,zmm15,zmm23
  9363fe:	62 a1 95 48 58 fc    	vaddpd zmm23,zmm13,zmm20
  936404:	62 31 95 48 5c ec    	vsubpd zmm13,zmm13,zmm20
  93640a:	62 81 f5 40 58 e0    	vaddpd zmm20,zmm17,zmm24
  936410:	62 81 f5 40 5c c8    	vsubpd zmm17,zmm17,zmm24
  936416:	62 01 e5 40 58 c3    	vaddpd zmm24,zmm19,zmm27
  93641c:	62 81 e5 40 5c db    	vsubpd zmm19,zmm19,zmm27
  936422:	62 21 a5 48 58 da    	vaddpd zmm27,zmm11,zmm18
  936428:	62 31 a5 48 5c da    	vsubpd zmm11,zmm11,zmm18
  93642e:	62 81 9d 48 58 d1    	vaddpd zmm18,zmm12,zmm25
  936434:	62 51 b5 40 5c e4    	vsubpd zmm12,zmm25,zmm12
  93643a:	62 41 85 48 58 cd    	vaddpd zmm25,zmm15,zmm13
  936440:	62 51 95 48 5c ef    	vsubpd zmm13,zmm13,zmm15
  936446:	62 31 f5 40 5c fb    	vsubpd zmm15,zmm17,zmm19
  93644c:	62 a1 e5 40 58 c9    	vaddpd zmm17,zmm19,zmm17
  936452:	62 a1 ad 40 58 da    	vaddpd zmm19,zmm26,zmm18
  936458:	62 a1 ad 40 5c d2    	vsubpd zmm18,zmm26,zmm18
  93645e:	62 21 c5 40 58 d4    	vaddpd zmm26,zmm23,zmm20
  936464:	62 a1 c5 40 5c e4    	vsubpd zmm20,zmm23,zmm20
  93646a:	62 a1 a5 40 58 fd    	vaddpd zmm23,zmm27,zmm21
  936470:	62 a1 a5 40 5c ed    	vsubpd zmm21,zmm27,zmm21
  936476:	62 01 cd 40 58 d8    	vaddpd zmm27,zmm22,zmm24
  93647c:	62 a1 bd 40 5c f6    	vsubpd zmm22,zmm24,zmm22
  936482:	62 21 8d 48 58 c0    	vaddpd zmm24,zmm14,zmm16
  936488:	62 61 b5 40 59 ce    	vmulpd zmm25,zmm25,zmm6
  93648e:	62 71 85 48 59 fe    	vmulpd zmm15,zmm15,zmm6
  936494:	62 71 95 48 59 ee    	vmulpd zmm13,zmm13,zmm6
  93649a:	62 e1 f5 40 59 ce    	vmulpd zmm17,zmm17,zmm6
  9364a0:	62 31 8d 48 5c f0    	vsubpd zmm14,zmm14,zmm16
  9364a6:	62 a1 95 48 5c c1    	vsubpd zmm16,zmm13,zmm17
  9364ac:	62 31 95 48 58 e9    	vaddpd zmm13,zmm13,zmm17
  9364b2:	62 41 9d 48 58 e3    	vaddpd zmm28,zmm12,zmm11
  9364b8:	62 51 a5 48 5c dc    	vsubpd zmm11,zmm11,zmm12
  9364be:	62 51 b5 40 58 e7    	vaddpd zmm12,zmm25,zmm15
  9364c4:	62 01 85 48 5c c9    	vsubpd zmm25,zmm15,zmm25
  9364ca:	62 01 e5 40 58 eb    	vaddpd zmm29,zmm19,zmm27
  9364d0:	62 81 e5 40 5c db    	vsubpd zmm19,zmm19,zmm27
  9364d6:	62 11 c5 40 58 fa    	vaddpd zmm15,zmm23,zmm26
  9364dc:	62 81 c5 40 5c fa    	vsubpd zmm23,zmm23,zmm26
  9364e2:	62 41 bd 40 58 d4    	vaddpd zmm26,zmm24,zmm12
  9364e8:	62 41 bd 40 5c c4    	vsubpd zmm24,zmm24,zmm12
  9364ee:	62 a1 9d 40 58 c8    	vaddpd zmm17,zmm28,zmm16
  9364f4:	62 21 9d 40 5c d8    	vsubpd zmm27,zmm28,zmm16
  9364fa:	62 a1 ed 40 58 c4    	vaddpd zmm16,zmm18,zmm20
  936500:	62 a1 ed 40 5c d4    	vsubpd zmm18,zmm18,zmm20
  936506:	62 31 cd 40 58 e5    	vaddpd zmm12,zmm22,zmm21
  93650c:	62 a1 d5 40 5c e6    	vsubpd zmm20,zmm21,zmm22
  936512:	62 c1 8d 48 58 ed    	vaddpd zmm21,zmm14,zmm13
  936518:	62 51 8d 48 5c ed    	vsubpd zmm13,zmm14,zmm13
  93651e:	62 81 a5 48 58 f1    	vaddpd zmm22,zmm11,zmm25
  936524:	62 01 a5 48 5c c9    	vsubpd zmm25,zmm11,zmm25
  93652a:	62 01 fd 48 28 e5    	vmovapd zmm28,zmm29
  936530:	62 22 fd 48 7f e3    	vpermt2pd zmm28,zmm0,zmm19
  936536:	62 22 f5 48 7f eb    	vpermt2pd zmm29,zmm1,zmm19
  93653c:	62 81 fd 48 28 da    	vmovapd zmm19,zmm26
  936542:	62 82 fd 48 7f d8    	vpermt2pd zmm19,zmm0,zmm24
  936548:	62 02 f5 48 7f d0    	vpermt2pd zmm26,zmm1,zmm24
  93654e:	62 31 fd 48 28 d8    	vmovapd zmm11,zmm16
  936554:	62 32 fd 48 7f da    	vpermt2pd zmm11,zmm0,zmm18
  93655a:	62 a2 f5 48 7f c2    	vpermt2pd zmm16,zmm1,zmm18
  936560:	62 31 fd 48 28 f5    	vmovapd zmm14,zmm21
  936566:	62 52 fd 48 7f f5    	vpermt2pd zmm14,zmm0,zmm13
  93656c:	62 c2 f5 48 7f ed    	vpermt2pd zmm21,zmm1,zmm13
  936572:	62 11 fd 48 28 ec    	vmovapd zmm13,zmm28
  936578:	62 52 ed 48 7f eb    	vpermt2pd zmm13,zmm2,zmm11
  93657e:	62 42 e5 48 7f e3    	vpermt2pd zmm28,zmm3,zmm11
  936584:	62 a1 fd 48 28 d3    	vmovapd zmm18,zmm19
  93658a:	62 c2 ed 48 7f d6    	vpermt2pd zmm18,zmm2,zmm14
  936590:	62 c2 e5 48 7f de    	vpermt2pd zmm19,zmm3,zmm14
  936596:	62 22 ed 48 7f e8    	vpermt2pd zmm29,zmm2,zmm16
  93659c:	62 22 ed 48 7f d5    	vpermt2pd zmm26,zmm2,zmm21
  9365a2:	62 31 95 48 14 da    	vunpcklpd zmm11,zmm13,zmm18
  9365a8:	62 31 95 48 15 f2    	vunpckhpd zmm14,zmm13,zmm18
  9365ae:	62 a1 9d 40 14 eb    	vunpcklpd zmm21,zmm28,zmm19
  9365b4:	62 31 9d 40 15 eb    	vunpckhpd zmm13,zmm28,zmm19
  9365ba:	62 81 95 40 14 da    	vunpcklpd zmm19,zmm29,zmm26
  9365c0:	62 81 95 40 15 c2    	vunpckhpd zmm16,zmm29,zmm26
  9365c6:	62 c1 fd 48 28 d7    	vmovapd zmm18,zmm15
  9365cc:	62 a2 fd 48 7f d7    	vpermt2pd zmm18,zmm0,zmm23
  9365d2:	62 32 f5 48 7f ff    	vpermt2pd zmm15,zmm1,zmm23
  9365d8:	62 a1 fd 48 28 f9    	vmovapd zmm23,zmm17
  9365de:	62 82 fd 48 7f fb    	vpermt2pd zmm23,zmm0,zmm27
  9365e4:	62 82 f5 48 7f cb    	vpermt2pd zmm17,zmm1,zmm27
  9365ea:	62 41 fd 48 28 c4    	vmovapd zmm24,zmm12
  9365f0:	62 22 fd 48 7f c4    	vpermt2pd zmm24,zmm0,zmm20
  9365f6:	62 32 f5 48 7f e4    	vpermt2pd zmm12,zmm1,zmm20
  9365fc:	62 a1 fd 48 28 e6    	vmovapd zmm20,zmm22
  936602:	62 82 fd 48 7f e1    	vpermt2pd zmm20,zmm0,zmm25
  936608:	62 82 f5 48 7f f1    	vpermt2pd zmm22,zmm1,zmm25
  93660e:	62 21 fd 48 28 ca    	vmovapd zmm25,zmm18
  936614:	62 02 ed 48 7f c8    	vpermt2pd zmm25,zmm2,zmm24
  93661a:	62 82 e5 48 7f d0    	vpermt2pd zmm18,zmm3,zmm24
  936620:	62 21 fd 48 28 c7    	vmovapd zmm24,zmm23
  936626:	62 22 ed 48 7f c4    	vpermt2pd zmm24,zmm2,zmm20
  93662c:	62 a2 e5 48 7f fc    	vpermt2pd zmm23,zmm3,zmm20
  936632:	62 52 ed 48 7f fc    	vpermt2pd zmm15,zmm2,zmm12
  936638:	62 a2 ed 48 7f ce    	vpermt2pd zmm17,zmm2,zmm22
  93663e:	62 11 b5 40 14 e0    	vunpcklpd zmm12,zmm25,zmm24
  936644:	62 81 b5 40 15 e0    	vunpckhpd zmm20,zmm25,zmm24
  93664a:	62 a1 ed 40 14 f7    	vunpcklpd zmm22,zmm18,zmm23
  936650:	62 a1 ed 40 15 d7    	vunpckhpd zmm18,zmm18,zmm23
  936656:	62 a1 85 48 14 f9    	vunpcklpd zmm23,zmm15,zmm17
  93665c:	62 21 85 48 15 c1    	vunpckhpd zmm24,zmm15,zmm17
  936662:	62 61 fd 48 10 49 02 	vmovupd zmm25,ZMMWORD PTR [rcx+0x80]
  936669:	62 61 fd 48 10 51 03 	vmovupd zmm26,ZMMWORD PTR [rcx+0xc0]
  936670:	62 e1 fd 48 10 49 04 	vmovupd zmm17,ZMMWORD PTR [rcx+0x100]
  936677:	62 61 fd 48 10 59 05 	vmovupd zmm27,ZMMWORD PTR [rcx+0x140]
  93667e:	62 31 d5 40 59 f9    	vmulpd zmm15,zmm21,zmm17
  936684:	62 12 cd 40 bc fb    	vfnmadd231pd zmm15,zmm22,zmm27
  93668a:	62 a1 cd 40 59 c9    	vmulpd zmm17,zmm22,zmm17
  936690:	62 e1 fd 48 10 71 09 	vmovupd zmm22,ZMMWORD PTR [rcx+0x240]
  936697:	62 82 d5 40 b8 cb    	vfmadd231pd zmm17,zmm21,zmm27
  93669d:	62 e1 fd 48 10 69 08 	vmovupd zmm21,ZMMWORD PTR [rcx+0x200]
  9366a4:	62 21 e5 40 59 dd    	vmulpd zmm27,zmm19,zmm21
  9366aa:	62 22 c5 40 bc de    	vfnmadd231pd zmm27,zmm23,zmm22
  9366b0:	62 a1 c5 40 59 ed    	vmulpd zmm21,zmm23,zmm21
  9366b6:	62 a2 e5 40 b8 ee    	vfmadd231pd zmm21,zmm19,zmm22
  9366bc:	62 e1 fd 48 10 59 0b 	vmovupd zmm19,ZMMWORD PTR [rcx+0x2c0]
  9366c3:	62 e1 fd 48 10 71 0a 	vmovupd zmm22,ZMMWORD PTR [rcx+0x280]
  9366ca:	62 a1 bd 40 59 fe    	vmulpd zmm23,zmm24,zmm22
  9366d0:	62 a2 fd 40 b8 fb    	vfmadd231pd zmm23,zmm16,zmm19
  9366d6:	62 a1 fd 40 59 c6    	vmulpd zmm16,zmm16,zmm22
  9366dc:	62 81 85 48 5c f3    	vsubpd zmm22,zmm15,zmm27
  9366e2:	62 e1 cd 40 59 f7    	vmulpd zmm22,zmm22,zmm7
  9366e8:	62 a2 bd 40 bc c3    	vfnmadd231pd zmm16,zmm24,zmm19
  9366ee:	62 a1 f5 40 58 dd    	vaddpd zmm19,zmm17,zmm21
  9366f4:	62 01 dd 40 59 c1    	vmulpd zmm24,zmm20,zmm25
  9366fa:	62 02 8d 48 b8 c2    	vfmadd231pd zmm24,zmm14,zmm26
  936700:	62 11 8d 48 59 f1    	vmulpd zmm14,zmm14,zmm25
  936706:	62 61 fd 48 10 49 07 	vmovupd zmm25,ZMMWORD PTR [rcx+0x1c0]
  93670d:	62 12 dd 40 bc f2    	vfnmadd231pd zmm14,zmm20,zmm26
  936713:	62 e1 fd 48 10 61 06 	vmovupd zmm20,ZMMWORD PTR [rcx+0x180]
  93671a:	62 21 ed 40 59 d4    	vmulpd zmm26,zmm18,zmm20
  936720:	62 02 95 48 b8 d1    	vfmadd231pd zmm26,zmm13,zmm25
  936726:	62 31 95 48 59 ec    	vmulpd zmm13,zmm13,zmm20
  93672c:	62 c1 fd 48 28 e0    	vmovapd zmm20,zmm8
  936732:	62 c2 e5 40 ac e4    	vfnmadd213pd zmm20,zmm19,zmm12
  936738:	62 12 ed 40 bc e9    	vfnmadd231pd zmm13,zmm18,zmm25
  93673e:	62 a1 cd 40 58 d4    	vaddpd zmm18,zmm22,zmm20
  936744:	62 01 c5 40 58 c8    	vaddpd zmm25,zmm23,zmm24
  93674a:	62 11 85 48 58 fb    	vaddpd zmm15,zmm15,zmm27
  936750:	62 41 fd 48 28 d8    	vmovapd zmm27,zmm8
  936756:	62 02 b5 40 ac da    	vfnmadd213pd zmm27,zmm25,zmm26
  93675c:	62 a1 f5 40 5c cd    	vsubpd zmm17,zmm17,zmm21
  936762:	62 c1 fd 40 5c ee    	vsubpd zmm21,zmm16,zmm14
  936768:	62 e1 d5 40 59 ef    	vmulpd zmm21,zmm21,zmm7
  93676e:	62 51 fd 40 58 f6    	vaddpd zmm14,zmm16,zmm14
  936774:	62 a1 a5 40 58 c5    	vaddpd zmm16,zmm27,zmm21
  93677a:	62 81 c5 40 5c f8    	vsubpd zmm23,zmm23,zmm24
  936780:	62 41 fd 48 28 c0    	vmovapd zmm24,zmm8
  936786:	62 42 85 48 ac c3    	vfnmadd213pd zmm24,zmm15,zmm11
  93678c:	62 e1 f5 40 59 cf    	vmulpd zmm17,zmm17,zmm7
  936792:	62 a1 dd 40 5c e6    	vsubpd zmm20,zmm20,zmm22
  936798:	62 a1 bd 40 5c f1    	vsubpd zmm22,zmm24,zmm17
  93679e:	62 a1 a5 40 5c ed    	vsubpd zmm21,zmm27,zmm21
  9367a4:	62 41 fd 48 28 d8    	vmovapd zmm27,zmm8
  9367aa:	62 42 8d 48 ac dd    	vfnmadd213pd zmm27,zmm14,zmm13
  9367b0:	62 e1 c5 40 59 ff    	vmulpd zmm23,zmm23,zmm7
  9367b6:	62 a1 bd 40 58 c9    	vaddpd zmm17,zmm24,zmm17
  9367bc:	62 21 a5 40 5c c7    	vsubpd zmm24,zmm27,zmm23
  9367c2:	62 a1 a5 40 58 ff    	vaddpd zmm23,zmm27,zmm23
  9367c8:	62 51 e5 40 58 e4    	vaddpd zmm12,zmm19,zmm12
  9367ce:	62 81 ad 40 58 d9    	vaddpd zmm19,zmm26,zmm25
  9367d4:	62 51 a5 48 58 df    	vaddpd zmm11,zmm11,zmm15
  9367da:	62 51 95 48 58 ee    	vaddpd zmm13,zmm13,zmm14
  9367e0:	62 31 ed 40 5c f0    	vsubpd zmm14,zmm18,zmm16
  9367e6:	62 31 ed 40 58 f8    	vaddpd zmm15,zmm18,zmm16
  9367ec:	62 81 cd 40 5c c0    	vsubpd zmm16,zmm22,zmm24
  9367f2:	62 81 cd 40 58 d0    	vaddpd zmm18,zmm22,zmm24
  9367f8:	62 a1 dd 40 58 f5    	vaddpd zmm22,zmm20,zmm21
  9367fe:	62 a1 dd 40 5c e5    	vsubpd zmm20,zmm20,zmm21
  936804:	62 a1 f5 40 58 ef    	vaddpd zmm21,zmm17,zmm23
  93680a:	62 a1 f5 40 5c cf    	vsubpd zmm17,zmm17,zmm23
  936810:	62 a1 9d 48 5c fb    	vsubpd zmm23,zmm12,zmm19
  936816:	62 31 9d 48 58 e3    	vaddpd zmm12,zmm12,zmm19
  93681c:	62 c1 a5 48 5c dd    	vsubpd zmm19,zmm11,zmm13
  936822:	62 51 a5 48 58 dd    	vaddpd zmm11,zmm11,zmm13
  936828:	62 51 fd 48 28 eb    	vmovapd zmm13,zmm11
  93682e:	62 52 b5 48 7f ec    	vpermt2pd zmm13,zmm9,zmm12
  936834:	62 52 ad 48 7f dc    	vpermt2pd zmm11,zmm10,zmm12
  93683a:	62 71 fd 48 11 1c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm11
  936841:	62 71 fd 48 11 6c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x40],zmm13
  936848:	01 
  936849:	62 31 fd 48 28 d9    	vmovapd zmm11,zmm17
  93684f:	62 32 b5 48 7f dc    	vpermt2pd zmm11,zmm9,zmm20
  936855:	62 a2 ad 48 7f cc    	vpermt2pd zmm17,zmm10,zmm20
  93685b:	62 e1 fd 48 11 4c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x80],zmm17
  936862:	02 
  936863:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm11
  93686a:	03 
  93686b:	62 31 fd 48 28 da    	vmovapd zmm11,zmm18
  936871:	62 52 b5 48 7f df    	vpermt2pd zmm11,zmm9,zmm15
  936877:	62 c2 ad 48 7f d7    	vpermt2pd zmm18,zmm10,zmm15
  93687d:	62 e1 fd 48 11 54 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x100],zmm18
  936884:	04 
  936885:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x140],zmm11
  93688c:	05 
  93688d:	62 31 fd 48 28 db    	vmovapd zmm11,zmm19
  936893:	62 32 b5 48 7f df    	vpermt2pd zmm11,zmm9,zmm23
  936899:	62 a2 ad 48 7f df    	vpermt2pd zmm19,zmm10,zmm23
  93689f:	62 e1 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x180],zmm19
  9368a6:	06 
  9368a7:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm11
  9368ae:	07 
  9368af:	62 31 fd 48 28 dd    	vmovapd zmm11,zmm21
  9368b5:	62 32 b5 48 7f de    	vpermt2pd zmm11,zmm9,zmm22
  9368bb:	62 a2 ad 48 7f ee    	vpermt2pd zmm21,zmm10,zmm22
  9368c1:	62 e1 fd 48 11 6c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x200],zmm21
  9368c8:	08 
  9368c9:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x240],zmm11
  9368d0:	09 
  9368d1:	62 31 fd 48 28 d8    	vmovapd zmm11,zmm16
  9368d7:	62 52 b5 48 7f de    	vpermt2pd zmm11,zmm9,zmm14
  9368dd:	62 c2 ad 48 7f c6    	vpermt2pd zmm16,zmm10,zmm14
  9368e3:	62 e1 fd 48 11 44 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x280],zmm16
  9368ea:	0a 
  9368eb:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm11
  9368f2:	0b 
  9368f3:	48 81 c2 00 03 00 00 	add    rdx,0x300
  9368fa:	48 39 d0             	cmp    rax,rdx
  9368fd:	0f 85 bd f9 ff ff    	jne    9362c0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  936903:	c5 f8 77             	vzeroupper
  936906:	c3                   	ret
