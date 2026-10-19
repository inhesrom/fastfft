
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008f2300 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  8f2300:	62 f1 fd 48 10 05 5e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7d4a5e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  8f2307:	4a 7d ff 
  8f230a:	62 f1 fd 48 10 0d 94 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7d4a94]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  8f2311:	4a 7d ff 
  8f2314:	62 f1 fd 48 10 15 ca 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff7d49ca]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  8f231b:	49 7d ff 
  8f231e:	62 f1 fd 48 10 1d 00 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff7d4a00]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  8f2325:	4a 7d ff 
  8f2328:	48 c1 e2 08          	shl    rdx,0x8
  8f232c:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  8f2330:	31 d2                	xor    edx,edx
  8f2332:	c4 41 39 57 c0       	vxorpd xmm8,xmm8,xmm8
  8f2337:	c5 7d 28 15 c1 49 78 	vmovapd ymm10,YMMWORD PTR [rip+0xffffffffff7849c1]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  8f233e:	ff 
  8f233f:	62 71 fd 48 28 1d 77 	vmovapd zmm11,ZMMWORD PTR [rip+0xffffffffff78b077]        # 7d3c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa870>
  8f2346:	b0 78 ff 
  8f2349:	62 f2 fd 48 19 35 cd 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff7828cd]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8f2350:	28 78 ff 
  8f2353:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  8f235a:	84 00 00 00 00 00 
  8f2360:	62 71 fd 48 10 24 17 	vmovupd zmm12,ZMMWORD PTR [rdi+rdx*1]
  8f2367:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x40]
  8f236e:	01 
  8f236f:	62 71 fd 48 10 7c 17 	vmovupd zmm15,ZMMWORD PTR [rdi+rdx*1+0x80]
  8f2376:	02 
  8f2377:	62 e1 fd 48 10 44 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0xc0]
  8f237e:	03 
  8f237f:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  8f2385:	62 f1 fd 48 28 25 b1 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff78afb1]        # 7d340 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa7f0>
  8f238c:	af 78 ff 
  8f238f:	62 52 dd 48 7f ee    	vpermt2pd zmm13,zmm4,zmm14
  8f2395:	62 f1 fd 48 28 2d e1 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff78afe1]        # 7d380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa830>
  8f239c:	af 78 ff 
  8f239f:	62 52 d5 48 7f e6    	vpermt2pd zmm12,zmm5,zmm14
  8f23a5:	62 c1 fd 48 28 cf    	vmovapd zmm17,zmm15
  8f23ab:	62 a2 dd 48 7f c8    	vpermt2pd zmm17,zmm4,zmm16
  8f23b1:	62 32 d5 48 7f f8    	vpermt2pd zmm15,zmm5,zmm16
  8f23b7:	62 e1 fd 48 10 44 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0x100]
  8f23be:	04 
  8f23bf:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x140]
  8f23c6:	05 
  8f23c7:	62 a1 fd 48 28 d0    	vmovapd zmm18,zmm16
  8f23cd:	62 c2 dd 48 7f d6    	vpermt2pd zmm18,zmm4,zmm14
  8f23d3:	62 c2 d5 48 7f c6    	vpermt2pd zmm16,zmm5,zmm14
  8f23d9:	62 e1 fd 48 10 64 17 	vmovupd zmm20,ZMMWORD PTR [rdi+rdx*1+0x180]
  8f23e0:	06 
  8f23e1:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  8f23e8:	07 
  8f23e9:	62 a1 fd 48 28 ec    	vmovapd zmm21,zmm20
  8f23ef:	62 c2 dd 48 7f ee    	vpermt2pd zmm21,zmm4,zmm14
  8f23f5:	62 c2 d5 48 7f e6    	vpermt2pd zmm20,zmm5,zmm14
  8f23fb:	62 e1 fd 48 10 74 17 	vmovupd zmm22,ZMMWORD PTR [rdi+rdx*1+0x200]
  8f2402:	08 
  8f2403:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x240]
  8f240a:	09 
  8f240b:	62 a1 fd 48 28 fe    	vmovapd zmm23,zmm22
  8f2411:	62 c2 dd 48 7f fe    	vpermt2pd zmm23,zmm4,zmm14
  8f2417:	62 c2 d5 48 7f f6    	vpermt2pd zmm22,zmm5,zmm14
  8f241d:	62 61 fd 48 10 44 17 	vmovupd zmm24,ZMMWORD PTR [rdi+rdx*1+0x280]
  8f2424:	0a 
  8f2425:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  8f242c:	0b 
  8f242d:	62 01 fd 48 28 c8    	vmovapd zmm25,zmm24
  8f2433:	62 42 dd 48 7f ce    	vpermt2pd zmm25,zmm4,zmm14
  8f2439:	62 42 d5 48 7f c6    	vpermt2pd zmm24,zmm5,zmm14
  8f243f:	62 a1 ed 40 58 df    	vaddpd zmm19,zmm18,zmm23
  8f2445:	62 21 95 48 58 db    	vaddpd zmm27,zmm13,zmm19
  8f244b:	62 21 b5 40 58 d1    	vaddpd zmm26,zmm25,zmm17
  8f2451:	62 01 d5 40 58 e2    	vaddpd zmm28,zmm21,zmm26
  8f2457:	62 11 a5 40 58 f4    	vaddpd zmm14,zmm27,zmm28
  8f245d:	62 21 fd 40 58 ee    	vaddpd zmm29,zmm16,zmm22
  8f2463:	62 01 9d 48 58 f5    	vaddpd zmm30,zmm12,zmm29
  8f2469:	62 41 bd 40 58 ff    	vaddpd zmm31,zmm24,zmm15
  8f246f:	62 91 dd 40 58 ef    	vaddpd zmm5,zmm20,zmm31
  8f2475:	62 f2 fd 48 19 25 19 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff782619]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8f247c:	26 78 ff 
  8f247f:	62 32 dd 48 bc eb    	vfnmadd231pd zmm13,zmm4,zmm19
  8f2485:	62 e1 8d 40 58 dd    	vaddpd zmm19,zmm30,zmm5
  8f248b:	62 a1 fd 40 5c c6    	vsubpd zmm16,zmm16,zmm22
  8f2491:	62 e1 fd 40 59 c6    	vmulpd zmm16,zmm16,zmm6
  8f2497:	62 a1 95 48 58 f0    	vaddpd zmm22,zmm13,zmm16
  8f249d:	62 82 dd 48 bc ea    	vfnmadd231pd zmm21,zmm4,zmm26
  8f24a3:	62 51 bd 40 5c ff    	vsubpd zmm15,zmm24,zmm15
  8f24a9:	62 71 85 48 59 fe    	vmulpd zmm15,zmm15,zmm6
  8f24af:	62 d1 d5 40 58 ff    	vaddpd zmm7,zmm21,zmm15
  8f24b5:	62 71 cd 40 5c cf    	vsubpd zmm9,zmm22,zmm7
  8f24bb:	62 12 dd 48 bc e5    	vfnmadd231pd zmm12,zmm4,zmm29
  8f24c1:	62 a1 ed 40 5c d7    	vsubpd zmm18,zmm18,zmm23
  8f24c7:	62 e1 ed 40 59 d6    	vmulpd zmm18,zmm18,zmm6
  8f24cd:	62 21 9d 48 5c ea    	vsubpd zmm29,zmm12,zmm18
  8f24d3:	62 82 dd 48 bc e7    	vfnmadd231pd zmm20,zmm4,zmm31
  8f24d9:	62 a1 b5 40 5c c9    	vsubpd zmm17,zmm25,zmm17
  8f24df:	62 e1 f5 40 59 ce    	vmulpd zmm17,zmm17,zmm6
  8f24e5:	62 21 dd 40 5c c9    	vsubpd zmm25,zmm20,zmm17
  8f24eb:	62 81 95 40 5c f9    	vsubpd zmm23,zmm29,zmm25
  8f24f1:	62 31 95 48 5c e8    	vsubpd zmm13,zmm13,zmm16
  8f24f7:	62 51 d5 40 5c ff    	vsubpd zmm15,zmm21,zmm15
  8f24fd:	62 c1 95 48 58 c7    	vaddpd zmm16,zmm13,zmm15
  8f2503:	62 51 ed 40 58 e4    	vaddpd zmm12,zmm18,zmm12
  8f2509:	62 a1 f5 40 58 cc    	vaddpd zmm17,zmm17,zmm20
  8f250f:	62 21 9d 48 58 d1    	vaddpd zmm26,zmm12,zmm17
  8f2515:	62 81 a5 40 5c d4    	vsubpd zmm18,zmm27,zmm28
  8f251b:	62 61 8d 40 5c c5    	vsubpd zmm24,zmm30,zmm5
  8f2521:	62 f1 cd 40 58 ef    	vaddpd zmm5,zmm22,zmm7
  8f2527:	62 91 95 40 58 f9    	vaddpd zmm7,zmm29,zmm25
  8f252d:	62 51 95 48 5c ef    	vsubpd zmm13,zmm13,zmm15
  8f2533:	62 a1 9d 48 5c e1    	vsubpd zmm20,zmm12,zmm17
  8f2539:	62 51 fd 48 28 fe    	vmovapd zmm15,zmm14
  8f253f:	62 72 fd 48 7f fd    	vpermt2pd zmm15,zmm0,zmm5
  8f2545:	62 72 f5 48 7f f5    	vpermt2pd zmm14,zmm1,zmm5
  8f254b:	62 d1 fd 48 28 e9    	vmovapd zmm5,zmm9
  8f2551:	62 d2 fd 48 7f ed    	vpermt2pd zmm5,zmm0,zmm13
  8f2557:	62 52 f5 48 7f cd    	vpermt2pd zmm9,zmm1,zmm13
  8f255d:	62 31 fd 48 28 e8    	vmovapd zmm13,zmm16
  8f2563:	62 52 fd 48 7f e8    	vpermt2pd zmm13,zmm0,zmm8
  8f2569:	62 c2 f5 48 7f c0    	vpermt2pd zmm16,zmm1,zmm8
  8f256f:	62 a1 fd 48 28 ca    	vmovapd zmm17,zmm18
  8f2575:	62 c2 fd 48 7f c8    	vpermt2pd zmm17,zmm0,zmm8
  8f257b:	62 c2 f5 48 7f d0    	vpermt2pd zmm18,zmm1,zmm8
  8f2581:	62 51 fd 48 28 e7    	vmovapd zmm12,zmm15
  8f2587:	62 52 ed 48 7f e5    	vpermt2pd zmm12,zmm2,zmm13
  8f258d:	62 52 e5 48 7f fd    	vpermt2pd zmm15,zmm3,zmm13
  8f2593:	62 71 fd 48 28 ed    	vmovapd zmm13,zmm5
  8f2599:	62 32 ed 48 7f e9    	vpermt2pd zmm13,zmm2,zmm17
  8f259f:	62 b2 e5 48 7f e9    	vpermt2pd zmm5,zmm3,zmm17
  8f25a5:	62 c1 fd 48 28 ee    	vmovapd zmm21,zmm14
  8f25ab:	62 a2 ed 48 7f e8    	vpermt2pd zmm21,zmm2,zmm16
  8f25b1:	62 32 e5 48 7f f0    	vpermt2pd zmm14,zmm3,zmm16
  8f25b7:	62 c1 fd 48 28 c1    	vmovapd zmm16,zmm9
  8f25bd:	62 a2 ed 48 7f c2    	vpermt2pd zmm16,zmm2,zmm18
  8f25c3:	62 32 e5 48 7f ca    	vpermt2pd zmm9,zmm3,zmm18
  8f25c9:	62 c1 9d 48 15 cd    	vunpckhpd zmm17,zmm12,zmm13
  8f25cf:	62 e1 85 48 14 f5    	vunpcklpd zmm22,zmm15,zmm5
  8f25d5:	62 71 85 48 15 fd    	vunpckhpd zmm15,zmm15,zmm5
  8f25db:	62 21 d5 40 14 c8    	vunpcklpd zmm25,zmm21,zmm16
  8f25e1:	62 a1 d5 40 15 c0    	vunpckhpd zmm16,zmm21,zmm16
  8f25e7:	62 c1 8d 48 14 e9    	vunpcklpd zmm21,zmm14,zmm9
  8f25ed:	62 51 8d 48 15 f1    	vunpckhpd zmm14,zmm14,zmm9
  8f25f3:	62 b1 fd 48 28 eb    	vmovapd zmm5,zmm19
  8f25f9:	62 f2 fd 48 7f ef    	vpermt2pd zmm5,zmm0,zmm7
  8f25ff:	62 e2 f5 48 7f df    	vpermt2pd zmm19,zmm1,zmm7
  8f2605:	62 b1 fd 48 28 ff    	vmovapd zmm7,zmm23
  8f260b:	62 b2 fd 48 7f fc    	vpermt2pd zmm7,zmm0,zmm20
  8f2611:	62 a2 f5 48 7f fc    	vpermt2pd zmm23,zmm1,zmm20
  8f2617:	62 11 fd 48 28 ca    	vmovapd zmm9,zmm26
  8f261d:	62 52 fd 48 7f c8    	vpermt2pd zmm9,zmm0,zmm8
  8f2623:	62 42 f5 48 7f d0    	vpermt2pd zmm26,zmm1,zmm8
  8f2629:	62 01 fd 48 28 d8    	vmovapd zmm27,zmm24
  8f262f:	62 42 fd 48 7f d8    	vpermt2pd zmm27,zmm0,zmm8
  8f2635:	62 42 f5 48 7f c0    	vpermt2pd zmm24,zmm1,zmm8
  8f263b:	62 e1 fd 48 28 d5    	vmovapd zmm18,zmm5
  8f2641:	62 c2 ed 48 7f d1    	vpermt2pd zmm18,zmm2,zmm9
  8f2647:	62 d2 e5 48 7f e9    	vpermt2pd zmm5,zmm3,zmm9
  8f264d:	62 e1 fd 48 28 e7    	vmovapd zmm20,zmm7
  8f2653:	62 82 ed 48 7f e3    	vpermt2pd zmm20,zmm2,zmm27
  8f2659:	62 92 e5 48 7f fb    	vpermt2pd zmm7,zmm3,zmm27
  8f265f:	62 31 fd 48 28 cb    	vmovapd zmm9,zmm19
  8f2665:	62 12 ed 48 7f ca    	vpermt2pd zmm9,zmm2,zmm26
  8f266b:	62 82 e5 48 7f da    	vpermt2pd zmm19,zmm3,zmm26
  8f2671:	62 21 fd 48 28 df    	vmovapd zmm27,zmm23
  8f2677:	62 02 ed 48 7f d8    	vpermt2pd zmm27,zmm2,zmm24
  8f267d:	62 82 e5 48 7f f8    	vpermt2pd zmm23,zmm3,zmm24
  8f2683:	62 21 ed 40 15 e4    	vunpckhpd zmm28,zmm18,zmm20
  8f2689:	62 61 d5 48 14 ef    	vunpcklpd zmm29,zmm5,zmm7
  8f268f:	62 61 d5 48 15 d7    	vunpckhpd zmm26,zmm5,zmm7
  8f2695:	62 91 b5 48 14 eb    	vunpcklpd zmm5,zmm9,zmm27
  8f269b:	62 01 b5 48 15 db    	vunpckhpd zmm27,zmm9,zmm27
  8f26a1:	62 21 e5 40 15 c7    	vunpckhpd zmm24,zmm19,zmm23
  8f26a7:	62 b1 e5 40 14 ff    	vunpcklpd zmm7,zmm19,zmm23
  8f26ad:	62 71 fd 48 10 49 08 	vmovupd zmm9,ZMMWORD PTR [rcx+0x200]
  8f26b4:	62 61 fd 48 10 71 09 	vmovupd zmm30,ZMMWORD PTR [rcx+0x240]
  8f26bb:	62 c1 b5 40 59 d9    	vmulpd zmm19,zmm25,zmm9
  8f26c1:	62 82 d5 48 bc de    	vfnmadd231pd zmm19,zmm5,zmm30
  8f26c7:	62 c1 d5 48 59 f9    	vmulpd zmm23,zmm5,zmm9
  8f26cd:	62 f1 fd 48 10 69 04 	vmovupd zmm5,ZMMWORD PTR [rcx+0x100]
  8f26d4:	62 82 b5 40 b8 fe    	vfmadd231pd zmm23,zmm25,zmm30
  8f26da:	62 71 fd 48 10 49 05 	vmovupd zmm9,ZMMWORD PTR [rcx+0x140]
  8f26e1:	62 61 cd 40 59 cd    	vmulpd zmm25,zmm22,zmm5
  8f26e7:	62 42 95 40 bc c9    	vfnmadd231pd zmm25,zmm29,zmm9
  8f26ed:	62 f1 95 40 59 ed    	vmulpd zmm5,zmm29,zmm5
  8f26f3:	62 61 fd 48 10 69 0c 	vmovupd zmm29,ZMMWORD PTR [rcx+0x300]
  8f26fa:	62 d2 cd 40 b8 e9    	vfmadd231pd zmm5,zmm22,zmm9
  8f2700:	62 71 fd 48 10 49 0d 	vmovupd zmm9,ZMMWORD PTR [rcx+0x340]
  8f2707:	62 81 d5 40 59 f5    	vmulpd zmm22,zmm21,zmm29
  8f270d:	62 c2 c5 48 bc f1    	vfnmadd231pd zmm22,zmm7,zmm9
  8f2713:	62 91 c5 48 59 fd    	vmulpd zmm7,zmm7,zmm29
  8f2719:	62 61 fd 48 10 69 02 	vmovupd zmm29,ZMMWORD PTR [rcx+0x80]
  8f2720:	62 d2 d5 40 b8 f9    	vfmadd231pd zmm7,zmm21,zmm9
  8f2726:	62 71 fd 48 10 49 03 	vmovupd zmm9,ZMMWORD PTR [rcx+0xc0]
  8f272d:	62 81 f5 40 59 ed    	vmulpd zmm21,zmm17,zmm29
  8f2733:	62 c2 9d 40 bc e9    	vfnmadd231pd zmm21,zmm28,zmm9
  8f2739:	62 01 9d 40 59 e5    	vmulpd zmm28,zmm28,zmm29
  8f273f:	62 61 fd 48 10 69 0a 	vmovupd zmm29,ZMMWORD PTR [rcx+0x280]
  8f2746:	62 42 f5 40 b8 e1    	vfmadd231pd zmm28,zmm17,zmm9
  8f274c:	62 71 fd 48 10 49 0b 	vmovupd zmm9,ZMMWORD PTR [rcx+0x2c0]
  8f2753:	62 81 fd 40 59 cd    	vmulpd zmm17,zmm16,zmm29
  8f2759:	62 c2 a5 40 bc c9    	vfnmadd231pd zmm17,zmm27,zmm9
  8f275f:	62 01 a5 40 59 dd    	vmulpd zmm27,zmm27,zmm29
  8f2765:	62 61 fd 48 10 69 06 	vmovupd zmm29,ZMMWORD PTR [rcx+0x180]
  8f276c:	62 42 fd 40 b8 d9    	vfmadd231pd zmm27,zmm16,zmm9
  8f2772:	62 71 fd 48 10 49 07 	vmovupd zmm9,ZMMWORD PTR [rcx+0x1c0]
  8f2779:	62 81 85 48 59 c5    	vmulpd zmm16,zmm15,zmm29
  8f277f:	62 c2 ad 40 bc c1    	vfnmadd231pd zmm16,zmm26,zmm9
  8f2785:	62 01 ad 40 59 d5    	vmulpd zmm26,zmm26,zmm29
  8f278b:	62 61 fd 48 10 69 0e 	vmovupd zmm29,ZMMWORD PTR [rcx+0x380]
  8f2792:	62 42 85 48 b8 d1    	vfmadd231pd zmm26,zmm15,zmm9
  8f2798:	62 71 fd 48 10 49 0f 	vmovupd zmm9,ZMMWORD PTR [rcx+0x3c0]
  8f279f:	62 11 8d 48 59 fd    	vmulpd zmm15,zmm14,zmm29
  8f27a5:	62 52 bd 40 bc f9    	vfnmadd231pd zmm15,zmm24,zmm9
  8f27ab:	62 01 bd 40 59 c5    	vmulpd zmm24,zmm24,zmm29
  8f27b1:	62 42 8d 48 b8 c1    	vfmadd231pd zmm24,zmm14,zmm9
  8f27b7:	62 51 9d 48 14 cd    	vunpcklpd zmm9,zmm12,zmm13
  8f27bd:	62 31 ed 40 14 e4    	vunpcklpd zmm12,zmm18,zmm20
  8f27c3:	62 31 b5 48 58 eb    	vaddpd zmm13,zmm9,zmm19
  8f27c9:	62 31 b5 48 5c cb    	vsubpd zmm9,zmm9,zmm19
  8f27cf:	62 71 d5 48 58 f7    	vaddpd zmm14,zmm5,zmm7
  8f27d5:	62 f1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm7
  8f27db:	62 b1 d5 40 58 f9    	vaddpd zmm7,zmm21,zmm17
  8f27e1:	62 a1 d5 40 5c c9    	vsubpd zmm17,zmm21,zmm17
  8f27e7:	62 81 9d 40 58 d3    	vaddpd zmm18,zmm28,zmm27
  8f27ed:	62 81 9d 40 5c db    	vsubpd zmm19,zmm28,zmm27
  8f27f3:	62 81 ad 40 58 e0    	vaddpd zmm20,zmm26,zmm24
  8f27f9:	62 81 ad 40 5c e8    	vsubpd zmm21,zmm26,zmm24
  8f27ff:	62 41 fd 40 58 c7    	vaddpd zmm24,zmm16,zmm15
  8f2805:	62 51 fd 40 5c ff    	vsubpd zmm15,zmm16,zmm15
  8f280b:	62 c1 c5 40 58 c4    	vaddpd zmm16,zmm23,zmm12
  8f2811:	62 31 9d 48 5c e7    	vsubpd zmm12,zmm12,zmm23
  8f2817:	62 a1 b5 40 58 fe    	vaddpd zmm23,zmm25,zmm22
  8f281d:	62 81 cd 40 5c f1    	vsubpd zmm22,zmm22,zmm25
  8f2823:	62 21 f5 40 58 cb    	vaddpd zmm25,zmm17,zmm19
  8f2829:	62 a1 e5 40 5c c9    	vsubpd zmm17,zmm19,zmm17
  8f282f:	62 c1 d5 40 5c df    	vsubpd zmm19,zmm21,zmm15
  8f2835:	62 31 85 48 58 fd    	vaddpd zmm15,zmm15,zmm21
  8f283b:	62 a1 95 48 58 ef    	vaddpd zmm21,zmm13,zmm23
  8f2841:	62 31 95 48 5c ef    	vsubpd zmm13,zmm13,zmm23
  8f2847:	62 a1 ed 40 58 fc    	vaddpd zmm23,zmm18,zmm20
  8f284d:	62 a1 ed 40 5c d4    	vsubpd zmm18,zmm18,zmm20
  8f2853:	62 a1 8d 48 58 e0    	vaddpd zmm20,zmm14,zmm16
  8f2859:	62 51 fd 40 5c f6    	vsubpd zmm14,zmm16,zmm14
  8f285f:	62 81 c5 48 58 c0    	vaddpd zmm16,zmm7,zmm24
  8f2865:	62 f1 bd 40 5c ff    	vsubpd zmm7,zmm24,zmm7
  8f286b:	62 61 b5 48 58 c5    	vaddpd zmm24,zmm9,zmm5
  8f2871:	62 f2 fd 48 19 25 25 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff782625]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  8f2878:	26 78 ff 
  8f287b:	62 61 b5 40 59 cc    	vmulpd zmm25,zmm25,zmm4
  8f2881:	62 e1 e5 40 59 dc    	vmulpd zmm19,zmm19,zmm4
  8f2887:	62 e1 f5 40 59 cc    	vmulpd zmm17,zmm17,zmm4
  8f288d:	62 71 85 48 59 fc    	vmulpd zmm15,zmm15,zmm4
  8f2893:	62 f1 b5 48 5c ed    	vsubpd zmm5,zmm9,zmm5
  8f2899:	62 51 f5 40 5c cf    	vsubpd zmm9,zmm17,zmm15
  8f289f:	62 51 f5 40 58 ff    	vaddpd zmm15,zmm17,zmm15
  8f28a5:	62 c1 cd 40 58 cc    	vaddpd zmm17,zmm22,zmm12
  8f28ab:	62 31 9d 48 5c e6    	vsubpd zmm12,zmm12,zmm22
  8f28b1:	62 a1 b5 40 58 f3    	vaddpd zmm22,zmm25,zmm19
  8f28b7:	62 81 e5 40 5c d9    	vsubpd zmm19,zmm19,zmm25
  8f28bd:	62 21 bd 40 58 ce    	vaddpd zmm25,zmm24,zmm22
  8f28c3:	62 a1 bd 40 5c f6    	vsubpd zmm22,zmm24,zmm22
  8f28c9:	62 41 f5 40 58 c1    	vaddpd zmm24,zmm17,zmm9
  8f28cf:	62 51 f5 40 5c c9    	vsubpd zmm9,zmm17,zmm9
  8f28d5:	62 a1 95 48 58 ca    	vaddpd zmm17,zmm13,zmm18
  8f28db:	62 31 95 48 5c ea    	vsubpd zmm13,zmm13,zmm18
  8f28e1:	62 e1 8d 48 58 d7    	vaddpd zmm18,zmm14,zmm7
  8f28e7:	62 f1 8d 48 5c ff    	vsubpd zmm7,zmm14,zmm7
  8f28ed:	62 51 d5 48 58 f7    	vaddpd zmm14,zmm5,zmm15
  8f28f3:	62 d1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm15
  8f28f9:	62 31 9d 48 58 fb    	vaddpd zmm15,zmm12,zmm19
  8f28ff:	62 31 9d 48 5c e3    	vsubpd zmm12,zmm12,zmm19
  8f2905:	62 a1 d5 40 5c d8    	vsubpd zmm19,zmm21,zmm16
  8f290b:	62 a1 d5 40 58 c0    	vaddpd zmm16,zmm21,zmm16
  8f2911:	62 a1 dd 40 5c ef    	vsubpd zmm21,zmm20,zmm23
  8f2917:	62 a1 dd 40 58 e7    	vaddpd zmm20,zmm20,zmm23
  8f291d:	62 a1 fd 48 28 f8    	vmovapd zmm23,zmm16
  8f2923:	62 a2 ad 48 7f fc    	vpermt2pd zmm23,zmm10,zmm20
  8f2929:	62 a2 a5 48 7f c4    	vpermt2pd zmm16,zmm11,zmm20
  8f292f:	62 e1 fd 48 11 04 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm16
  8f2936:	62 e1 fd 28 11 7c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm23
  8f293d:	02 
  8f293e:	62 81 fd 48 28 c1    	vmovapd zmm16,zmm25
  8f2944:	62 82 ad 48 7f c0    	vpermt2pd zmm16,zmm10,zmm24
  8f294a:	62 02 a5 48 7f c8    	vpermt2pd zmm25,zmm11,zmm24
  8f2950:	62 61 fd 48 11 8c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x60],zmm25
  8f2957:	60 00 00 00 
  8f295b:	62 e1 fd 28 11 44 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm16
  8f2962:	05 
  8f2963:	62 a1 fd 48 28 c1    	vmovapd zmm16,zmm17
  8f2969:	62 a2 ad 48 7f c2    	vpermt2pd zmm16,zmm10,zmm18
  8f296f:	62 a2 a5 48 7f ca    	vpermt2pd zmm17,zmm11,zmm18
  8f2975:	62 e1 fd 48 11 4c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm17
  8f297c:	03 
  8f297d:	62 e1 fd 28 11 44 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x100],ymm16
  8f2984:	08 
  8f2985:	62 c1 fd 48 28 c6    	vmovapd zmm16,zmm14
  8f298b:	62 c2 ad 48 7f c7    	vpermt2pd zmm16,zmm10,zmm15
  8f2991:	62 52 a5 48 7f f7    	vpermt2pd zmm14,zmm11,zmm15
  8f2997:	62 71 fd 48 11 b4 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x120],zmm14
  8f299e:	20 01 00 00 
  8f29a2:	62 e1 fd 28 11 44 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x160],ymm16
  8f29a9:	0b 
  8f29aa:	62 31 fd 48 28 f3    	vmovapd zmm14,zmm19
  8f29b0:	62 32 ad 48 7f f5    	vpermt2pd zmm14,zmm10,zmm21
  8f29b6:	62 a2 a5 48 7f dd    	vpermt2pd zmm19,zmm11,zmm21
  8f29bc:	62 e1 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x180],zmm19
  8f29c3:	06 
  8f29c4:	c5 7d 11 b4 16 c0 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x1c0],ymm14
  8f29cb:	00 00 
  8f29cd:	62 31 fd 48 28 f6    	vmovapd zmm14,zmm22
  8f29d3:	62 52 ad 48 7f f1    	vpermt2pd zmm14,zmm10,zmm9
  8f29d9:	62 c2 a5 48 7f f1    	vpermt2pd zmm22,zmm11,zmm9
  8f29df:	62 e1 fd 48 11 b4 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm22
  8f29e6:	e0 01 00 00 
  8f29ea:	c5 7d 11 b4 16 20 02 	vmovupd YMMWORD PTR [rsi+rdx*1+0x220],ymm14
  8f29f1:	00 00 
  8f29f3:	62 51 fd 48 28 cd    	vmovapd zmm9,zmm13
  8f29f9:	62 72 ad 48 7f cf    	vpermt2pd zmm9,zmm10,zmm7
  8f29ff:	62 72 a5 48 7f ef    	vpermt2pd zmm13,zmm11,zmm7
  8f2a05:	62 71 fd 48 11 6c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x240],zmm13
  8f2a0c:	09 
  8f2a0d:	c5 7d 11 8c 16 80 02 	vmovupd YMMWORD PTR [rsi+rdx*1+0x280],ymm9
  8f2a14:	00 00 
  8f2a16:	62 f1 fd 48 28 fd    	vmovapd zmm7,zmm5
  8f2a1c:	62 d2 ad 48 7f fc    	vpermt2pd zmm7,zmm10,zmm12
  8f2a22:	62 d2 a5 48 7f ec    	vpermt2pd zmm5,zmm11,zmm12
  8f2a28:	62 f1 fd 48 11 ac 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x2a0],zmm5
  8f2a2f:	a0 02 00 00 
  8f2a33:	c5 fd 11 bc 16 e0 02 	vmovupd YMMWORD PTR [rsi+rdx*1+0x2e0],ymm7
  8f2a3a:	00 00 
  8f2a3c:	48 81 c2 00 03 00 00 	add    rdx,0x300
  8f2a43:	48 39 d0             	cmp    rax,rdx
  8f2a46:	0f 85 14 f9 ff ff    	jne    8f2360 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x60>
  8f2a4c:	c5 f8 77             	vzeroupper
  8f2a4f:	c3                   	ret
