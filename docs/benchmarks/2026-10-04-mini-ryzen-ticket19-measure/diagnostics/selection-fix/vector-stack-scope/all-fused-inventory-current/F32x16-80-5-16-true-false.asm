
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a43200 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a43200:	55                   	push   rbp
  a43201:	48 89 e5             	mov    rbp,rsp
  a43204:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a43208:	48 81 ec 00 0a 00 00 	sub    rsp,0xa00
  a4320f:	c6 84 24 80 09 00 00 	mov    BYTE PTR [rsp+0x980],0x0
  a43216:	00 
  a43217:	48 8d 84 24 80 09 00 	lea    rax,[rsp+0x980]
  a4321e:	00 
  a4321f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a43224:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a43229:	62 f1 7c 48 28 0d cd 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff64eccd]        # 91f00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f3b0>
  a43230:	ec 64 ff 
  a43233:	62 f1 7c 48 10 37    	vmovups zmm6,ZMMWORD PTR [rdi]
  a43239:	62 f1 7c 48 10 7f 01 	vmovups zmm7,ZMMWORD PTR [rdi+0x40]
  a43240:	62 71 7c 48 10 47 02 	vmovups zmm8,ZMMWORD PTR [rdi+0x80]
  a43247:	62 f1 7c 48 10 57 03 	vmovups zmm2,ZMMWORD PTR [rdi+0xc0]
  a4324e:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a43254:	62 72 75 48 7f df    	vpermt2ps zmm11,zmm1,zmm7
  a4325a:	62 41 7c 48 28 d8    	vmovaps zmm27,zmm8
  a43260:	62 62 75 48 7f da    	vpermt2ps zmm27,zmm1,zmm2
  a43266:	62 71 7c 48 10 67 08 	vmovups zmm12,ZMMWORD PTR [rdi+0x200]
  a4326d:	62 71 7c 48 10 4f 09 	vmovups zmm9,ZMMWORD PTR [rdi+0x240]
  a43274:	62 d1 7c 48 28 dc    	vmovaps zmm3,zmm12
  a4327a:	62 d2 75 48 7f d9    	vpermt2ps zmm3,zmm1,zmm9
  a43280:	62 71 24 40 58 d3    	vaddps zmm10,zmm27,zmm3
  a43286:	62 d1 24 48 58 c2    	vaddps zmm0,zmm11,zmm10
  a4328c:	62 71 7c 48 10 7f 04 	vmovups zmm15,ZMMWORD PTR [rdi+0x100]
  a43293:	62 71 7c 48 10 77 05 	vmovups zmm14,ZMMWORD PTR [rdi+0x140]
  a4329a:	62 51 7c 48 28 ef    	vmovaps zmm13,zmm15
  a432a0:	62 52 75 48 7f ee    	vpermt2ps zmm13,zmm1,zmm14
  a432a6:	62 e1 7c 48 10 57 06 	vmovups zmm18,ZMMWORD PTR [rdi+0x180]
  a432ad:	62 e1 7c 48 10 47 07 	vmovups zmm16,ZMMWORD PTR [rdi+0x1c0]
  a432b4:	62 b2 6d 40 77 c8    	vpermi2ps zmm1,zmm18,zmm16
  a432ba:	62 e1 14 48 58 e1    	vaddps zmm20,zmm13,zmm1
  a432c0:	62 a1 7c 48 58 fc    	vaddps zmm23,zmm0,zmm20
  a432c6:	62 f1 7c 48 28 05 b0 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff683cb0]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a432cd:	3c 68 ff 
  a432d0:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a432d4:	62 b1 7c 48 28 ef    	vmovaps zmm5,zmm23
  a432da:	62 f2 7d 48 7f ec    	vpermt2ps zmm5,zmm0,zmm4
  a432e0:	62 61 7c 48 28 cd    	vmovaps zmm25,zmm5
  a432e6:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm5
  a432ed:	04 
  a432ee:	62 e1 7c 48 28 2d 48 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff64ec48]        # 91f40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f3f0>
  a432f5:	ec 64 ff 
  a432f8:	62 72 55 40 7f c2    	vpermt2ps zmm8,zmm21,zmm2
  a432fe:	62 52 55 40 7f e1    	vpermt2ps zmm12,zmm21,zmm9
  a43304:	62 d1 3c 48 5c d4    	vsubps zmm2,zmm8,zmm12
  a4330a:	62 52 55 40 7f fe    	vpermt2ps zmm15,zmm21,zmm14
  a43310:	62 a2 55 40 7f d0    	vpermt2ps zmm18,zmm21,zmm16
  a43316:	62 31 04 48 5c ca    	vsubps zmm9,zmm15,zmm18
  a4331c:	62 e2 7d 48 18 05 32 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff632432]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a43323:	24 63 ff 
  a43326:	62 a1 34 48 59 f0    	vmulps zmm22,zmm9,zmm16
  a4332c:	62 e2 7d 48 18 0d 6a 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff63206a]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a43333:	20 63 ff 
  a43336:	62 a2 6d 48 b8 f1    	vfmadd231ps zmm22,zmm2,zmm17
  a4333c:	62 e2 7d 48 18 1d a2 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff6323a2]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a43343:	23 63 ff 
  a43346:	62 21 7c 48 28 c3    	vmovaps zmm24,zmm19
  a4334c:	62 42 2d 48 a8 c3    	vfmadd213ps zmm24,zmm10,zmm11
  a43352:	62 62 7d 48 18 15 e8 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff6322e8]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a43359:	22 63 ff 
  a4335c:	62 02 5d 40 bc c2    	vfnmadd231ps zmm24,zmm20,zmm26
  a43362:	62 01 4c 40 58 e8    	vaddps zmm29,zmm22,zmm24
  a43368:	62 91 7c 48 28 ed    	vmovaps zmm5,zmm29
  a4336e:	62 f2 7d 48 7f ec    	vpermt2ps zmm5,zmm0,zmm4
  a43374:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm5
  a4337b:	14 
  a4337c:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm25
  a43383:	01 
  a43384:	62 52 2d 40 bc da    	vfnmadd231ps zmm11,zmm26,zmm10
  a4338a:	62 32 65 40 b8 dc    	vfmadd231ps zmm11,zmm19,zmm20
  a43390:	62 a1 6c 48 59 e0    	vmulps zmm20,zmm2,zmm16
  a43396:	62 c2 75 40 bc e1    	vfnmadd231ps zmm20,zmm17,zmm9
  a4339c:	62 31 24 48 5c d4    	vsubps zmm10,zmm11,zmm20
  a433a2:	62 41 7c 48 28 fa    	vmovaps zmm31,zmm10
  a433a8:	62 62 7d 48 7f fc    	vpermt2ps zmm31,zmm0,zmm4
  a433ae:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a433b2:	62 f2 7d 48 7f ed    	vpermt2ps zmm5,zmm0,zmm5
  a433b8:	62 31 3c 40 5c f6    	vsubps zmm14,zmm24,zmm22
  a433be:	62 c1 7c 48 28 f6    	vmovaps zmm22,zmm14
  a433c4:	62 e2 7d 48 7f f4    	vpermt2ps zmm22,zmm0,zmm4
  a433ca:	62 51 5c 40 58 db    	vaddps zmm11,zmm20,zmm11
  a433d0:	62 41 7c 48 28 e3    	vmovaps zmm28,zmm11
  a433d6:	62 62 7d 48 7f e4    	vpermt2ps zmm28,zmm0,zmm4
  a433dc:	62 f2 55 40 7f f7    	vpermt2ps zmm6,zmm21,zmm7
  a433e2:	62 d1 3c 48 58 fc    	vaddps zmm7,zmm8,zmm12
  a433e8:	62 71 4c 48 58 c7    	vaddps zmm8,zmm6,zmm7
  a433ee:	62 31 04 48 58 fa    	vaddps zmm15,zmm15,zmm18
  a433f4:	62 41 3c 48 58 cf    	vaddps zmm25,zmm8,zmm15
  a433fa:	62 71 7c 48 28 05 bc 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff683bbc]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a43401:	3b 68 ff 
  a43404:	62 01 7c 48 28 f1    	vmovaps zmm30,zmm25
  a4340a:	62 62 3d 48 7f f4    	vpermt2ps zmm30,zmm8,zmm4
  a43410:	62 a1 7c 48 28 d3    	vmovaps zmm18,zmm19
  a43416:	62 e2 45 48 a8 d6    	vfmadd213ps zmm18,zmm7,zmm6
  a4341c:	62 82 05 48 bc d2    	vfnmadd231ps zmm18,zmm15,zmm26
  a43422:	62 e1 24 40 5c e3    	vsubps zmm20,zmm27,zmm3
  a43428:	62 f1 14 48 5c c9    	vsubps zmm1,zmm13,zmm1
  a4342e:	62 31 74 48 59 e8    	vmulps zmm13,zmm1,zmm16
  a43434:	62 32 5d 40 b8 e9    	vfmadd231ps zmm13,zmm20,zmm17
  a4343a:	62 51 6c 40 5c cd    	vsubps zmm9,zmm18,zmm13
  a43440:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a43446:	62 72 3d 48 7f e4    	vpermt2ps zmm12,zmm8,zmm4
  a4344c:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm30
  a43453:	06 
  a43454:	62 92 45 48 bc f2    	vfnmadd231ps zmm6,zmm7,zmm26
  a4345a:	62 b2 05 48 b8 f3    	vfmadd231ps zmm6,zmm15,zmm19
  a43460:	62 b1 5c 40 59 f8    	vmulps zmm7,zmm20,zmm16
  a43466:	62 b2 75 48 bc f9    	vfnmadd231ps zmm7,zmm1,zmm17
  a4346c:	62 61 4c 48 58 df    	vaddps zmm27,zmm6,zmm7
  a43472:	62 11 7c 48 28 fb    	vmovaps zmm15,zmm27
  a43478:	62 72 3d 48 7f fc    	vpermt2ps zmm15,zmm8,zmm4
  a4347e:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a43482:	62 f2 3d 48 7f db    	vpermt2ps zmm3,zmm8,zmm3
  a43488:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm15
  a4348f:	05 
  a43490:	62 c1 6c 40 58 d5    	vaddps zmm18,zmm18,zmm13
  a43496:	62 21 7c 48 28 c2    	vmovaps zmm24,zmm18
  a4349c:	62 62 3d 48 7f c4    	vpermt2ps zmm24,zmm8,zmm4
  a434a2:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm24
  a434a9:	15 
  a434aa:	62 e1 4c 48 5c ef    	vsubps zmm21,zmm6,zmm7
  a434b0:	62 21 7c 48 28 d5    	vmovaps zmm26,zmm21
  a434b6:	62 62 3d 48 7f d4    	vpermt2ps zmm26,zmm8,zmm4
  a434bc:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm26
  a434c3:	13 
  a434c4:	62 e2 3d 48 7f fc    	vpermt2ps zmm23,zmm8,zmm4
  a434ca:	62 62 3d 48 7f ec    	vpermt2ps zmm29,zmm8,zmm4
  a434d0:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm23
  a434d7:	12 
  a434d8:	62 72 3d 48 7f d4    	vpermt2ps zmm10,zmm8,zmm4
  a434de:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm10
  a434e5:	03 
  a434e6:	62 72 3d 48 7f f4    	vpermt2ps zmm14,zmm8,zmm4
  a434ec:	62 72 3d 48 7f dc    	vpermt2ps zmm11,zmm8,zmm4
  a434f2:	62 51 7c 48 28 c6    	vmovaps zmm8,zmm14
  a434f8:	62 62 7d 48 7f cc    	vpermt2ps zmm25,zmm0,zmm4
  a434fe:	62 72 7d 48 7f cc    	vpermt2ps zmm9,zmm0,zmm4
  a43504:	62 62 7d 48 7f dc    	vpermt2ps zmm27,zmm0,zmm4
  a4350a:	62 e2 7d 48 7f d4    	vpermt2ps zmm18,zmm0,zmm4
  a43510:	62 e2 7d 48 7f ec    	vpermt2ps zmm21,zmm0,zmm4
  a43516:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm11
  a4351d:	02 
  a4351e:	62 f1 7c 48 28 15 18 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff683a18]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a43525:	3a 68 ff 
  a43528:	62 b1 7c 48 28 ff    	vmovaps zmm7,zmm23
  a4352e:	62 92 6d 48 7f fd    	vpermt2ps zmm7,zmm2,zmm29
  a43534:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm7
  a4353b:	1b 
  a4353c:	62 72 6d 48 7f d3    	vpermt2ps zmm10,zmm2,zmm3
  a43542:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm10
  a43549:	1c 
  a4354a:	62 72 6d 48 7f f3    	vpermt2ps zmm14,zmm2,zmm3
  a43550:	62 72 6d 48 7f db    	vpermt2ps zmm11,zmm2,zmm3
  a43556:	62 91 7c 48 28 ce    	vmovaps zmm1,zmm30
  a4355c:	62 d2 6d 48 7f cc    	vpermt2ps zmm1,zmm2,zmm12
  a43562:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a43569:	07 
  a4356a:	62 72 6d 48 7f fb    	vpermt2ps zmm15,zmm2,zmm3
  a43570:	62 62 6d 48 7f c3    	vpermt2ps zmm24,zmm2,zmm3
  a43576:	62 62 6d 48 7f d3    	vpermt2ps zmm26,zmm2,zmm3
  a4357c:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x100]
  a43583:	04 
  a43584:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x500]
  a4358b:	14 
  a4358c:	62 22 6d 48 7f f0    	vpermt2ps zmm30,zmm2,zmm16
  a43592:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm30
  a43599:	04 
  a4359a:	62 81 7c 48 28 e7    	vmovaps zmm20,zmm31
  a435a0:	62 62 6d 48 7f fd    	vpermt2ps zmm31,zmm2,zmm5
  a435a6:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm31
  a435ad:	23 
  a435ae:	62 a1 7c 48 28 de    	vmovaps zmm19,zmm22
  a435b4:	62 e2 6d 48 7f f5    	vpermt2ps zmm22,zmm2,zmm5
  a435ba:	62 31 7c 48 28 ee    	vmovaps zmm13,zmm22
  a435c0:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm22
  a435c7:	22 
  a435c8:	62 81 7c 48 28 cc    	vmovaps zmm17,zmm28
  a435ce:	62 62 6d 48 7f e5    	vpermt2ps zmm28,zmm2,zmm5
  a435d4:	62 81 7c 48 28 fc    	vmovaps zmm23,zmm28
  a435da:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm28
  a435e1:	21 
  a435e2:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a435e8:	62 d2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm9
  a435ee:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a435f5:	0a 
  a435f6:	62 91 7c 48 28 e3    	vmovaps zmm4,zmm27
  a435fc:	62 f2 6d 48 7f e5    	vpermt2ps zmm4,zmm2,zmm5
  a43602:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a43608:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm4
  a4360f:	09 
  a43610:	62 b1 7c 48 28 e2    	vmovaps zmm4,zmm18
  a43616:	62 f2 6d 48 7f e5    	vpermt2ps zmm4,zmm2,zmm5
  a4361c:	62 61 7c 48 28 e4    	vmovaps zmm28,zmm4
  a43622:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm4
  a43629:	08 
  a4362a:	62 f2 55 40 77 d5    	vpermi2ps zmm2,zmm21,zmm5
  a43630:	62 e1 7c 48 28 35 c6 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6837c6]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a43637:	37 68 ff 
  a4363a:	62 f1 fd 48 15 e6    	vunpckhpd zmm4,zmm0,zmm6
  a43640:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm4
  a43647:	11 
  a43648:	62 f1 9d 40 15 c2    	vunpckhpd zmm0,zmm28,zmm2
  a4364e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a43655:	10 
  a43656:	62 f2 4d 40 7f e0    	vpermt2ps zmm4,zmm22,zmm0
  a4365c:	62 91 8d 40 15 f7    	vunpckhpd zmm6,zmm30,zmm31
  a43662:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm6
  a43669:	0f 
  a4366a:	62 b1 95 48 15 c7    	vunpckhpd zmm0,zmm13,zmm23
  a43670:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a43677:	0e 
  a43678:	62 f2 4d 40 7f f0    	vpermt2ps zmm6,zmm22,zmm0
  a4367e:	62 61 7c 48 10 72 0d 	vmovups zmm30,ZMMWORD PTR [rdx+0x340]
  a43685:	62 61 7c 48 10 7a 0c 	vmovups zmm31,ZMMWORD PTR [rdx+0x300]
  a4368c:	62 91 4c 48 59 c7    	vmulps zmm0,zmm6,zmm31
  a43692:	62 92 5d 48 b8 c6    	vfmadd231ps zmm0,zmm4,zmm30
  a43698:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm0
  a4369f:	17 
  a436a0:	62 91 5c 48 59 c7    	vmulps zmm0,zmm4,zmm31
  a436a6:	62 f2 0d 40 bc c6    	vfnmadd231ps zmm0,zmm30,zmm6
  a436ac:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm0
  a436b3:	16 
  a436b4:	62 41 f5 48 15 f7    	vunpckhpd zmm30,zmm1,zmm15
  a436ba:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm30
  a436c1:	0d 
  a436c2:	62 91 bd 40 15 c2    	vunpckhpd zmm0,zmm24,zmm26
  a436c8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm0
  a436cf:	0c 
  a436d0:	62 62 4d 40 7f f0    	vpermt2ps zmm30,zmm22,zmm0
  a436d6:	62 51 c5 48 15 ea    	vunpckhpd zmm13,zmm7,zmm10
  a436dc:	62 d1 8d 48 15 c3    	vunpckhpd zmm0,zmm14,zmm11
  a436e2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a436e9:	0b 
  a436ea:	62 41 7c 48 28 fd    	vmovaps zmm31,zmm13
  a436f0:	62 62 4d 40 7f f8    	vpermt2ps zmm31,zmm22,zmm0
  a436f6:	62 f1 7c 48 10 4a 1d 	vmovups zmm1,ZMMWORD PTR [rdx+0x740]
  a436fd:	62 f1 7c 48 10 42 1c 	vmovups zmm0,ZMMWORD PTR [rdx+0x700]
  a43704:	62 f1 04 40 59 e0    	vmulps zmm4,zmm31,zmm0
  a4370a:	62 f2 0d 40 b8 e1    	vfmadd231ps zmm4,zmm30,zmm1
  a43710:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm4
  a43717:	25 
  a43718:	62 f1 0c 40 59 c0    	vmulps zmm0,zmm30,zmm0
  a4371e:	62 92 75 48 bc c7    	vfnmadd231ps zmm0,zmm1,zmm31
  a43724:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm0
  a4372b:	24 
  a4372c:	62 f1 7c 48 28 05 ca 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6837ca]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a43733:	37 68 ff 
  a43736:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x40]
  a4373d:	01 
  a4373e:	62 b2 7d 48 7f e0    	vpermt2ps zmm4,zmm0,zmm16
  a43744:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x180]
  a4374b:	06 
  a4374c:	62 42 7d 48 7f f4    	vpermt2ps zmm30,zmm0,zmm12
  a43752:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x480]
  a43759:	12 
  a4375a:	62 82 7d 48 7f c5    	vpermt2ps zmm16,zmm0,zmm29
  a43760:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x140]
  a43767:	05 
  a43768:	62 f2 7d 48 7f fb    	vpermt2ps zmm7,zmm0,zmm3
  a4376e:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x540]
  a43775:	15 
  a43776:	62 72 7d 48 7f e3    	vpermt2ps zmm12,zmm0,zmm3
  a4377c:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x4c0]
  a43783:	13 
  a43784:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a4378a:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0xc0]
  a43791:	03 
  a43792:	62 62 7d 48 7f eb    	vpermt2ps zmm29,zmm0,zmm3
  a43798:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm29
  a4379f:	03 
  a437a0:	62 41 7c 48 28 f8    	vmovaps zmm31,zmm8
  a437a6:	62 62 7d 48 7f fb    	vpermt2ps zmm31,zmm0,zmm3
  a437ac:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x80]
  a437b3:	02 
  a437b4:	62 62 7d 48 7f e3    	vpermt2ps zmm28,zmm0,zmm3
  a437ba:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm28
  a437c1:	02 
  a437c2:	62 42 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm9
  a437c8:	62 e2 7d 48 7f e5    	vpermt2ps zmm20,zmm0,zmm5
  a437ce:	62 e2 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm5
  a437d4:	62 e2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm5
  a437da:	62 62 7d 48 7f dd    	vpermt2ps zmm27,zmm0,zmm5
  a437e0:	62 e2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm5
  a437e6:	62 e2 7d 48 7f ed    	vpermt2ps zmm21,zmm0,zmm5
  a437ec:	62 a1 dd 48 15 fc    	vunpckhpd zmm23,zmm4,zmm20
  a437f2:	62 b1 e5 40 15 c9    	vunpckhpd zmm1,zmm19,zmm17
  a437f8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm1
  a437ff:	1a 
  a43800:	62 b1 7c 48 28 c7    	vmovaps zmm0,zmm23
  a43806:	62 f2 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm1
  a4380c:	62 91 b5 40 15 f3    	vunpckhpd zmm6,zmm25,zmm27
  a43812:	62 b1 ed 40 15 dd    	vunpckhpd zmm3,zmm18,zmm21
  a43818:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm3
  a4381f:	19 
  a43820:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a43826:	62 f2 4d 40 7f cb    	vpermt2ps zmm1,zmm22,zmm3
  a4382c:	62 f1 7c 48 10 6a 04 	vmovups zmm5,ZMMWORD PTR [rdx+0x100]
  a43833:	62 71 7c 48 10 4a 05 	vmovups zmm9,ZMMWORD PTR [rdx+0x140]
  a4383a:	62 f1 74 48 59 dd    	vmulps zmm3,zmm1,zmm5
  a43840:	62 d2 7d 48 bc d9    	vfnmadd231ps zmm3,zmm0,zmm9
  a43846:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm3
  a4384d:	15 
  a4384e:	62 f1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm5
  a43854:	62 f2 35 48 b8 c1    	vfmadd231ps zmm0,zmm9,zmm1
  a4385a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm0
  a43861:	14 
  a43862:	62 91 fd 40 15 dd    	vunpckhpd zmm3,zmm16,zmm29
  a43868:	62 91 85 40 15 cc    	vunpckhpd zmm1,zmm31,zmm28
  a4386e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm1
  a43875:	18 
  a43876:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a4387c:	62 f2 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm1
  a43882:	62 f1 8d 40 15 ef    	vunpckhpd zmm5,zmm30,zmm7
  a43888:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a4388e:	62 01 7c 48 28 ee    	vmovaps zmm29,zmm30
  a43894:	62 41 9d 48 15 f2    	vunpckhpd zmm30,zmm12,zmm10
  a4389a:	62 d1 7c 48 28 fc    	vmovaps zmm7,zmm12
  a438a0:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a438a6:	62 12 4d 40 7f ce    	vpermt2ps zmm9,zmm22,zmm30
  a438ac:	62 71 7c 48 10 62 15 	vmovups zmm12,ZMMWORD PTR [rdx+0x540]
  a438b3:	62 f1 7c 48 10 4a 14 	vmovups zmm1,ZMMWORD PTR [rdx+0x500]
  a438ba:	62 61 34 48 59 e1    	vmulps zmm28,zmm9,zmm1
  a438c0:	62 42 7d 48 bc e4    	vfnmadd231ps zmm28,zmm0,zmm12
  a438c6:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm28
  a438cd:	13 
  a438ce:	62 f1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm1
  a438d4:	62 d2 1d 48 b8 c1    	vfmadd231ps zmm0,zmm12,zmm9
  a438da:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a438e1:	12 
  a438e2:	62 b1 dd 48 14 c4    	vunpcklpd zmm0,zmm4,zmm20
  a438e8:	62 31 e5 40 14 c9    	vunpcklpd zmm9,zmm19,zmm17
  a438ee:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm9
  a438f5:	1d 
  a438f6:	62 91 b5 40 14 cb    	vunpcklpd zmm1,zmm25,zmm27
  a438fc:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a43903:	01 
  a43904:	62 b1 ed 40 14 e5    	vunpcklpd zmm4,zmm18,zmm21
  a4390a:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm4
  a43911:	1f 
  a43912:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm0
  a43919:	1e 
  a4391a:	62 e1 7c 48 28 25 1c 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff68351c]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a43921:	35 68 ff 
  a43924:	62 d2 5d 40 7f c1    	vpermt2ps zmm0,zmm20,zmm9
  a4392a:	62 f2 5d 40 7f cc    	vpermt2ps zmm1,zmm20,zmm4
  a43930:	62 71 7c 48 10 4a 02 	vmovups zmm9,ZMMWORD PTR [rdx+0x80]
  a43937:	62 71 7c 48 10 62 03 	vmovups zmm12,ZMMWORD PTR [rdx+0xc0]
  a4393e:	62 d1 74 48 59 e1    	vmulps zmm4,zmm1,zmm9
  a43944:	62 d2 7d 48 bc e4    	vfnmadd231ps zmm4,zmm0,zmm12
  a4394a:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm4
  a43951:	20 
  a43952:	62 d1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm9
  a43958:	62 f2 1d 48 b8 c1    	vfmadd231ps zmm0,zmm12,zmm1
  a4395e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a43965:	06 
  a43966:	62 d1 95 40 14 c0    	vunpcklpd zmm0,zmm29,zmm8
  a4396c:	62 41 c5 48 14 ea    	vunpcklpd zmm29,zmm7,zmm10
  a43972:	62 f1 fd 40 14 4c 24 	vunpcklpd zmm1,zmm16,ZMMWORD PTR [rsp+0xc0]
  a43979:	03 
  a4397a:	62 f1 85 40 14 64 24 	vunpcklpd zmm4,zmm31,ZMMWORD PTR [rsp+0x80]
  a43981:	02 
  a43982:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a43988:	62 f2 5d 40 7f cc    	vpermt2ps zmm1,zmm20,zmm4
  a4398e:	62 e1 7c 48 28 d8    	vmovaps zmm19,zmm0
  a43994:	62 92 5d 40 7f c5    	vpermt2ps zmm0,zmm20,zmm29
  a4399a:	62 f1 7c 48 10 7a 13 	vmovups zmm7,ZMMWORD PTR [rdx+0x4c0]
  a439a1:	62 71 7c 48 10 62 12 	vmovups zmm12,ZMMWORD PTR [rdx+0x480]
  a439a8:	62 51 7c 48 59 c4    	vmulps zmm8,zmm0,zmm12
  a439ae:	62 72 75 48 bc c7    	vfnmadd231ps zmm8,zmm1,zmm7
  a439b4:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm8
  a439bb:	02 
  a439bc:	62 d1 74 48 59 cc    	vmulps zmm1,zmm1,zmm12
  a439c2:	62 f2 45 48 b8 c8    	vfmadd231ps zmm1,zmm7,zmm0
  a439c8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a439cf:	03 
  a439d0:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x6c0]
  a439d7:	1b 
  a439d8:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp+0x700]
  a439df:	1c 
  a439e0:	62 d1 8d 48 14 fb    	vunpcklpd zmm7,zmm14,zmm11
  a439e6:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a439ed:	07 
  a439ee:	62 d1 f5 48 14 cf    	vunpcklpd zmm1,zmm1,zmm15
  a439f4:	62 01 bd 40 14 d2    	vunpcklpd zmm26,zmm24,zmm26
  a439fa:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a43a00:	62 92 5d 40 7f ca    	vpermt2ps zmm1,zmm20,zmm26
  a43a06:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a43a0c:	62 f2 5d 40 7f c7    	vpermt2ps zmm0,zmm20,zmm7
  a43a12:	62 71 7c 48 10 52 1b 	vmovups zmm10,ZMMWORD PTR [rdx+0x6c0]
  a43a19:	62 71 7c 48 10 5a 1a 	vmovups zmm11,ZMMWORD PTR [rdx+0x680]
  a43a20:	62 41 7c 48 59 fb    	vmulps zmm31,zmm0,zmm11
  a43a26:	62 42 75 48 b8 fa    	vfmadd231ps zmm31,zmm1,zmm10
  a43a2c:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm31
  a43a33:	07 
  a43a34:	62 d1 74 48 59 cb    	vmulps zmm1,zmm1,zmm11
  a43a3a:	62 f2 2d 48 bc c8    	vfnmadd231ps zmm1,zmm10,zmm0
  a43a40:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a43a47:	05 
  a43a48:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a43a4f:	04 
  a43a50:	62 f1 fd 48 14 4c 24 	vunpcklpd zmm1,zmm0,ZMMWORD PTR [rsp+0x8c0]
  a43a57:	23 
  a43a58:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x880]
  a43a5f:	22 
  a43a60:	62 71 fd 48 14 74 24 	vunpcklpd zmm14,zmm0,ZMMWORD PTR [rsp+0x840]
  a43a67:	21 
  a43a68:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a43a6f:	0a 
  a43a70:	62 71 fd 48 14 5c 24 	vunpcklpd zmm11,zmm0,ZMMWORD PTR [rsp+0x240]
  a43a77:	09 
  a43a78:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a43a7f:	08 
  a43a80:	62 f1 fd 48 14 c2    	vunpcklpd zmm0,zmm0,zmm2
  a43a86:	62 c1 7c 48 28 c3    	vmovaps zmm16,zmm11
  a43a8c:	62 72 5d 40 7f d8    	vpermt2ps zmm11,zmm20,zmm0
  a43a92:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a43a98:	62 d2 5d 40 7f ce    	vpermt2ps zmm1,zmm20,zmm14
  a43a9e:	62 f1 7c 48 10 52 0b 	vmovups zmm2,ZMMWORD PTR [rdx+0x2c0]
  a43aa5:	62 71 7c 48 10 42 0a 	vmovups zmm8,ZMMWORD PTR [rdx+0x280]
  a43aac:	62 c1 74 48 59 d0    	vmulps zmm18,zmm1,zmm8
  a43ab2:	62 e2 25 48 b8 d2    	vfmadd231ps zmm18,zmm11,zmm2
  a43ab8:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm18
  a43abf:	0a 
  a43ac0:	62 51 24 48 59 c8    	vmulps zmm9,zmm11,zmm8
  a43ac6:	62 72 6d 48 bc c9    	vfnmadd231ps zmm9,zmm2,zmm1
  a43acc:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm9
  a43ad3:	09 
  a43ad4:	62 e2 5d 40 7f 7c 24 	vpermt2ps zmm23,zmm20,ZMMWORD PTR [rsp+0x680]
  a43adb:	1a 
  a43adc:	62 f2 5d 40 7f 74 24 	vpermt2ps zmm6,zmm20,ZMMWORD PTR [rsp+0x640]
  a43ae3:	19 
  a43ae4:	62 f2 5d 40 7f 5c 24 	vpermt2ps zmm3,zmm20,ZMMWORD PTR [rsp+0x600]
  a43aeb:	18 
  a43aec:	62 92 5d 40 7f ee    	vpermt2ps zmm5,zmm20,zmm30
  a43af2:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x440]
  a43af9:	11 
  a43afa:	62 72 5d 40 7f 44 24 	vpermt2ps zmm8,zmm20,ZMMWORD PTR [rsp+0x400]
  a43b01:	10 
  a43b02:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x3c0]
  a43b09:	0f 
  a43b0a:	62 72 5d 40 7f 54 24 	vpermt2ps zmm10,zmm20,ZMMWORD PTR [rsp+0x380]
  a43b11:	0e 
  a43b12:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x340]
  a43b19:	0d 
  a43b1a:	62 72 5d 40 7f 64 24 	vpermt2ps zmm12,zmm20,ZMMWORD PTR [rsp+0x300]
  a43b21:	0c 
  a43b22:	62 72 5d 40 7f 6c 24 	vpermt2ps zmm13,zmm20,ZMMWORD PTR [rsp+0x2c0]
  a43b29:	0b 
  a43b2a:	62 f1 7c 48 10 4a 07 	vmovups zmm1,ZMMWORD PTR [rdx+0x1c0]
  a43b31:	62 f1 7c 48 10 52 06 	vmovups zmm2,ZMMWORD PTR [rdx+0x180]
  a43b38:	62 61 4c 48 59 da    	vmulps zmm27,zmm6,zmm2
  a43b3e:	62 62 45 40 bc d9    	vfnmadd231ps zmm27,zmm23,zmm1
  a43b44:	62 61 44 40 59 ca    	vmulps zmm25,zmm23,zmm2
  a43b4a:	62 62 75 48 b8 ce    	vfmadd231ps zmm25,zmm1,zmm6
  a43b50:	62 f1 7c 48 10 4a 17 	vmovups zmm1,ZMMWORD PTR [rdx+0x5c0]
  a43b57:	62 f1 7c 48 10 52 16 	vmovups zmm2,ZMMWORD PTR [rdx+0x580]
  a43b5e:	62 61 54 48 59 f2    	vmulps zmm30,zmm5,zmm2
  a43b64:	62 62 65 48 bc f1    	vfnmadd231ps zmm30,zmm3,zmm1
  a43b6a:	62 e1 64 48 59 ea    	vmulps zmm21,zmm3,zmm2
  a43b70:	62 e2 75 48 b8 ed    	vfmadd231ps zmm21,zmm1,zmm5
  a43b76:	62 f1 7c 48 10 4a 1f 	vmovups zmm1,ZMMWORD PTR [rdx+0x7c0]
  a43b7d:	62 f1 7c 48 10 5a 1e 	vmovups zmm3,ZMMWORD PTR [rdx+0x780]
  a43b84:	62 71 14 48 59 db    	vmulps zmm11,zmm13,zmm3
  a43b8a:	62 72 1d 48 b8 d9    	vfmadd231ps zmm11,zmm12,zmm1
  a43b90:	62 71 1c 48 59 e3    	vmulps zmm12,zmm12,zmm3
  a43b96:	62 52 75 48 bc e5    	vfnmadd231ps zmm12,zmm1,zmm13
  a43b9c:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a43ba3:	62 f1 7c 48 10 5a 0e 	vmovups zmm3,ZMMWORD PTR [rdx+0x380]
  a43baa:	62 f1 2c 48 59 eb    	vmulps zmm5,zmm10,zmm3
  a43bb0:	62 f2 3d 48 b8 e9    	vfmadd231ps zmm5,zmm8,zmm1
  a43bb6:	62 71 3c 48 59 eb    	vmulps zmm13,zmm8,zmm3
  a43bbc:	62 52 75 48 bc ea    	vfnmadd231ps zmm13,zmm1,zmm10
  a43bc2:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x780]
  a43bc9:	1e 
  a43bca:	62 72 4d 40 7f 54 24 	vpermt2ps zmm10,zmm22,ZMMWORD PTR [rsp+0x740]
  a43bd1:	1d 
  a43bd2:	62 82 4d 40 7f dd    	vpermt2ps zmm19,zmm22,zmm29
  a43bd8:	62 e2 4d 40 7f cc    	vpermt2ps zmm17,zmm22,zmm4
  a43bde:	62 62 4d 40 7f c7    	vpermt2ps zmm24,zmm22,zmm7
  a43be4:	62 12 4d 40 7f fa    	vpermt2ps zmm15,zmm22,zmm26
  a43bea:	62 42 4d 40 7f e6    	vpermt2ps zmm28,zmm22,zmm14
  a43bf0:	62 e2 4d 40 7f c0    	vpermt2ps zmm16,zmm22,zmm0
  a43bf6:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a43bfd:	01 
  a43bfe:	62 f2 4d 40 7f 44 24 	vpermt2ps zmm0,zmm22,ZMMWORD PTR [rsp+0x7c0]
  a43c05:	1f 
  a43c06:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a43c0d:	01 
  a43c0e:	62 f1 7c 48 10 42 11 	vmovups zmm0,ZMMWORD PTR [rdx+0x440]
  a43c15:	62 f1 7c 48 10 4a 10 	vmovups zmm1,ZMMWORD PTR [rdx+0x400]
  a43c1c:	62 71 74 40 59 f1    	vmulps zmm14,zmm17,zmm1
  a43c22:	62 72 65 40 b8 f0    	vfmadd231ps zmm14,zmm19,zmm0
  a43c28:	62 e1 64 40 59 d9    	vmulps zmm19,zmm19,zmm1
  a43c2e:	62 a2 7d 48 bc d9    	vfnmadd231ps zmm19,zmm0,zmm17
  a43c34:	62 f1 7c 48 10 42 09 	vmovups zmm0,ZMMWORD PTR [rdx+0x240]
  a43c3b:	62 f1 7c 48 10 4a 08 	vmovups zmm1,ZMMWORD PTR [rdx+0x200]
  a43c42:	62 e1 7c 40 59 e1    	vmulps zmm20,zmm16,zmm1
  a43c48:	62 e2 1d 40 bc e0    	vfnmadd231ps zmm20,zmm28,zmm0
  a43c4e:	62 f1 1c 40 59 f1    	vmulps zmm6,zmm28,zmm1
  a43c54:	62 b2 7d 48 b8 f0    	vfmadd231ps zmm6,zmm0,zmm16
  a43c5a:	62 f1 7c 48 10 42 19 	vmovups zmm0,ZMMWORD PTR [rdx+0x640]
  a43c61:	62 f1 7c 48 10 4a 18 	vmovups zmm1,ZMMWORD PTR [rdx+0x600]
  a43c68:	62 f1 04 48 59 e1    	vmulps zmm4,zmm15,zmm1
  a43c6e:	62 f2 3d 40 bc e0    	vfnmadd231ps zmm4,zmm24,zmm0
  a43c74:	62 e1 3c 40 59 f9    	vmulps zmm23,zmm24,zmm1
  a43c7a:	62 c2 7d 48 b8 ff    	vfmadd231ps zmm23,zmm0,zmm15
  a43c80:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x800]
  a43c87:	20 
  a43c88:	62 e1 14 40 5c 74 24 	vsubps zmm22,zmm29,ZMMWORD PTR [rsp+0x80]
  a43c8f:	02 
  a43c90:	62 01 6c 40 5c c7    	vsubps zmm24,zmm18,zmm31
  a43c96:	62 91 4c 40 5c d8    	vsubps zmm3,zmm22,zmm24
  a43c9c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a43ca3:	06 
  a43ca4:	62 61 7c 48 5c 54 24 	vsubps zmm26,zmm0,ZMMWORD PTR [rsp+0xc0]
  a43cab:	03 
  a43cac:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a43cb3:	05 
  a43cb4:	62 41 7c 48 5c e1    	vsubps zmm28,zmm0,zmm9
  a43cba:	62 f2 7d 48 18 15 3c 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff631a3c]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a43cc1:	1a 63 ff 
  a43cc4:	62 11 2c 40 5c cc    	vsubps zmm9,zmm26,zmm28
  a43cca:	62 f1 34 48 59 c2    	vmulps zmm0,zmm9,zmm2
  a43cd0:	62 e2 7d 48 18 15 8a 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff63198a]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a43cd7:	19 63 ff 
  a43cda:	62 b2 65 48 b8 c2    	vfmadd231ps zmm0,zmm3,zmm18
  a43ce0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a43ce7:	04 
  a43ce8:	62 b1 34 48 59 c2    	vmulps zmm0,zmm9,zmm18
  a43cee:	62 f2 6d 48 bc c3    	vfnmadd231ps zmm0,zmm2,zmm3
  a43cf4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a43cfb:	11 
  a43cfc:	62 91 24 40 5c de    	vsubps zmm3,zmm27,zmm30
  a43d02:	62 51 54 48 5c cb    	vsubps zmm9,zmm5,zmm11
  a43d08:	62 c1 64 48 5c c9    	vsubps zmm17,zmm3,zmm9
  a43d0e:	62 21 34 40 5c fd    	vsubps zmm31,zmm25,zmm21
  a43d14:	62 d1 1c 48 5c cd    	vsubps zmm1,zmm12,zmm13
  a43d1a:	62 f1 04 40 5c c1    	vsubps zmm0,zmm31,zmm1
  a43d20:	62 b1 7c 48 59 fa    	vmulps zmm7,zmm0,zmm18
  a43d26:	62 f2 75 40 b8 fa    	vfmadd231ps zmm7,zmm17,zmm2
  a43d2c:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm7
  a43d33:	10 
  a43d34:	62 b1 74 40 59 fa    	vmulps zmm7,zmm17,zmm18
  a43d3a:	62 f2 6d 48 bc f8    	vfnmadd231ps zmm7,zmm2,zmm0
  a43d40:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm7
  a43d47:	0f 
  a43d48:	62 d1 64 48 58 c1    	vaddps zmm0,zmm3,zmm9
  a43d4e:	62 f1 04 40 58 c9    	vaddps zmm1,zmm31,zmm1
  a43d54:	62 91 4c 40 58 d8    	vaddps zmm3,zmm22,zmm24
  a43d5a:	62 11 2c 40 58 cc    	vaddps zmm9,zmm26,zmm28
  a43d60:	62 b1 34 48 59 fa    	vmulps zmm7,zmm9,zmm18
  a43d66:	62 f2 65 48 b8 fa    	vfmadd231ps zmm7,zmm3,zmm2
  a43d6c:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm7
  a43d73:	0e 
  a43d74:	62 f1 34 48 59 fa    	vmulps zmm7,zmm9,zmm2
  a43d7a:	62 f2 6d 40 bc fb    	vfnmadd231ps zmm7,zmm18,zmm3
  a43d80:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm7
  a43d87:	0c 
  a43d88:	62 f1 74 48 59 da    	vmulps zmm3,zmm1,zmm2
  a43d8e:	62 b2 7d 48 b8 da    	vfmadd231ps zmm3,zmm0,zmm18
  a43d94:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm3
  a43d9b:	0d 
  a43d9c:	62 21 74 48 59 e2    	vmulps zmm28,zmm1,zmm18
  a43da2:	62 62 7d 48 bc e2    	vfnmadd231ps zmm28,zmm0,zmm2
  a43da8:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x540]
  a43daf:	15 
  a43db0:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x4c0]
  a43db7:	13 
  a43db8:	62 91 7c 40 5c c0    	vsubps zmm0,zmm16,zmm24
  a43dbe:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0x500]
  a43dc5:	14 
  a43dc6:	62 61 7c 48 28 7c 24 	vmovaps zmm31,ZMMWORD PTR [rsp+0x480]
  a43dcd:	12 
  a43dce:	62 91 2c 40 5c cf    	vsubps zmm1,zmm26,zmm31
  a43dd4:	62 e1 7c 48 58 c9    	vaddps zmm17,zmm0,zmm1
  a43dda:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a43de0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a43de7:	0b 
  a43de8:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x5c0]
  a43def:	17 
  a43df0:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x940]
  a43df7:	25 
  a43df8:	62 f1 7c 48 5c ca    	vsubps zmm1,zmm0,zmm2
  a43dfe:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x580]
  a43e05:	16 
  a43e06:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x900]
  a43e0d:	24 
  a43e0e:	62 d1 3c 48 5c d9    	vsubps zmm3,zmm8,zmm9
  a43e14:	62 71 74 48 5c fb    	vsubps zmm15,zmm1,zmm3
  a43e1a:	62 f1 64 48 58 c9    	vaddps zmm1,zmm3,zmm1
  a43e20:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a43e27:	08 
  a43e28:	62 d1 2c 48 5c fe    	vsubps zmm7,zmm10,zmm14
  a43e2e:	62 51 0c 48 58 f2    	vaddps zmm14,zmm14,zmm10
  a43e34:	62 a1 4c 48 5c d7    	vsubps zmm18,zmm6,zmm23
  a43e3a:	62 31 4c 48 58 d7    	vaddps zmm10,zmm6,zmm23
  a43e40:	62 c1 3c 48 58 f1    	vaddps zmm22,zmm8,zmm9
  a43e46:	62 01 7c 40 58 c0    	vaddps zmm24,zmm16,zmm24
  a43e4c:	62 b1 34 40 58 dd    	vaddps zmm3,zmm25,zmm21
  a43e52:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm3
  a43e59:	16 
  a43e5a:	62 c1 54 48 58 c3    	vaddps zmm16,zmm5,zmm11
  a43e60:	62 11 24 40 58 de    	vaddps zmm11,zmm27,zmm30
  a43e66:	62 51 14 48 58 cc    	vaddps zmm9,zmm13,zmm12
  a43e6c:	62 71 14 40 58 64 24 	vaddps zmm12,zmm29,ZMMWORD PTR [rsp+0x80]
  a43e73:	02 
  a43e74:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x240]
  a43e7b:	09 
  a43e7c:	62 71 74 48 58 6c 24 	vaddps zmm13,zmm1,ZMMWORD PTR [rsp+0x140]
  a43e83:	05 
  a43e84:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a43e8b:	03 
  a43e8c:	62 e1 74 48 58 6c 24 	vaddps zmm21,zmm1,ZMMWORD PTR [rsp+0x180]
  a43e93:	06 
  a43e94:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a43e9b:	07 
  a43e9c:	62 61 74 48 58 4c 24 	vaddps zmm25,zmm1,ZMMWORD PTR [rsp+0x280]
  a43ea3:	0a 
  a43ea4:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a43eab:	01 
  a43eac:	62 21 74 48 5c db    	vsubps zmm27,zmm1,zmm19
  a43eb2:	62 a1 74 48 58 db    	vaddps zmm19,zmm1,zmm19
  a43eb8:	62 21 5c 48 5c ec    	vsubps zmm29,zmm4,zmm20
  a43ebe:	62 71 5c 40 58 c4    	vaddps zmm8,zmm20,zmm4
  a43ec4:	62 81 2c 40 58 e7    	vaddps zmm20,zmm26,zmm31
  a43eca:	62 61 7c 48 58 f2    	vaddps zmm30,zmm0,zmm2
  a43ed0:	62 d1 1c 48 5c cd    	vsubps zmm1,zmm12,zmm13
  a43ed6:	62 91 54 40 5c c1    	vsubps zmm0,zmm21,zmm25
  a43edc:	62 f1 74 48 58 f0    	vaddps zmm6,zmm1,zmm0
  a43ee2:	62 f1 7c 48 5c e9    	vsubps zmm5,zmm0,zmm1
  a43ee8:	62 b1 64 48 5c c8    	vsubps zmm1,zmm3,zmm16
  a43eee:	62 d1 24 48 5c c1    	vsubps zmm0,zmm11,zmm9
  a43ef4:	62 f1 74 48 5c d8    	vsubps zmm3,zmm1,zmm0
  a43efa:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a43f00:	62 f2 7d 48 18 0d 92 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff631492]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a43f07:	14 63 ff 
  a43f0a:	62 71 04 48 59 f9    	vmulps zmm15,zmm15,zmm1
  a43f10:	62 e1 74 40 59 c9    	vmulps zmm17,zmm17,zmm1
  a43f16:	62 f1 74 48 59 54 24 	vmulps zmm2,zmm1,ZMMWORD PTR [rsp+0x2c0]
  a43f1d:	0b 
  a43f1e:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp+0x200]
  a43f25:	08 
  a43f26:	62 61 64 48 59 f9    	vmulps zmm31,zmm3,zmm1
  a43f2c:	62 f1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm1
  a43f32:	62 f1 54 48 59 e9    	vmulps zmm5,zmm5,zmm1
  a43f38:	62 f1 5c 48 59 c9    	vmulps zmm1,zmm4,zmm1
  a43f3e:	62 91 44 48 5c e5    	vsubps zmm4,zmm7,zmm29
  a43f44:	62 f1 14 40 58 ff    	vaddps zmm7,zmm29,zmm7
  a43f4a:	62 61 6c 48 58 e8    	vaddps zmm29,zmm2,zmm0
  a43f50:	62 f1 6c 48 5c c0    	vsubps zmm0,zmm2,zmm0
  a43f56:	62 b1 24 40 5c d2    	vsubps zmm2,zmm27,zmm18
  a43f5c:	62 a1 24 40 58 d2    	vaddps zmm18,zmm27,zmm18
  a43f62:	62 21 04 48 5c d9    	vsubps zmm27,zmm15,zmm17
  a43f68:	62 51 74 40 58 ff    	vaddps zmm15,zmm17,zmm15
  a43f6e:	62 c1 0c 48 5c ca    	vsubps zmm17,zmm14,zmm10
  a43f74:	62 c1 2c 48 58 fe    	vaddps zmm23,zmm10,zmm14
  a43f7a:	62 11 5c 40 5c f6    	vsubps zmm14,zmm20,zmm30
  a43f80:	62 81 5c 40 58 e6    	vaddps zmm20,zmm20,zmm30
  a43f86:	62 d1 24 48 58 d9    	vaddps zmm3,zmm11,zmm9
  a43f8c:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a43f93:	01 
  a43f94:	62 41 1c 48 58 d5    	vaddps zmm26,zmm12,zmm13
  a43f9a:	62 51 64 40 5c e0    	vsubps zmm12,zmm19,zmm8
  a43fa0:	62 51 64 40 58 d0    	vaddps zmm10,zmm19,zmm8
  a43fa6:	62 11 4c 40 5c e8    	vsubps zmm13,zmm22,zmm24
  a43fac:	62 a1 3c 40 58 de    	vaddps zmm19,zmm24,zmm22
  a43fb2:	62 81 54 40 58 e9    	vaddps zmm21,zmm21,zmm25
  a43fb8:	62 e1 7c 40 58 44 24 	vaddps zmm16,zmm16,ZMMWORD PTR [rsp+0x580]
  a43fbf:	16 
  a43fc0:	62 81 5c 48 5c f3    	vsubps zmm22,zmm4,zmm27
  a43fc6:	62 f1 24 40 58 dc    	vaddps zmm3,zmm27,zmm4
  a43fcc:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm3
  a43fd3:	06 
  a43fd4:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x440]
  a43fdb:	11 
  a43fdc:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x3c0]
  a43fe3:	0f 
  a43fe4:	62 61 64 48 5c cc    	vsubps zmm25,zmm3,zmm4
  a43fea:	62 f1 64 48 58 dc    	vaddps zmm3,zmm3,zmm4
  a43ff0:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm3
  a43ff7:	05 
  a43ff8:	62 01 6c 48 5c f5    	vsubps zmm30,zmm2,zmm29
  a43ffe:	62 91 6c 48 58 d5    	vaddps zmm2,zmm2,zmm29
  a44004:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm2
  a4400b:	17 
  a4400c:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x100]
  a44013:	04 
  a44014:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x400]
  a4401b:	10 
  a4401c:	62 f1 6c 48 58 dc    	vaddps zmm3,zmm2,zmm4
  a44022:	62 61 6c 48 5c ec    	vsubps zmm29,zmm2,zmm4
  a44028:	62 d1 74 40 5c e5    	vsubps zmm4,zmm17,zmm13
  a4402e:	62 21 14 48 58 d9    	vaddps zmm27,zmm13,zmm17
  a44034:	62 71 54 48 58 e9    	vaddps zmm13,zmm5,zmm1
  a4403a:	62 61 54 48 5c c1    	vsubps zmm24,zmm5,zmm1
  a44040:	62 d1 1c 48 5c ee    	vsubps zmm5,zmm12,zmm14
  a44046:	62 c1 1c 48 58 ce    	vaddps zmm17,zmm12,zmm14
  a4404c:	62 71 04 40 5c f6    	vsubps zmm14,zmm31,zmm6
  a44052:	62 11 4c 48 58 e7    	vaddps zmm12,zmm6,zmm31
  a44058:	62 f1 44 48 5c f0    	vsubps zmm6,zmm7,zmm0
  a4405e:	62 71 7c 48 58 df    	vaddps zmm11,zmm0,zmm7
  a44064:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x300]
  a4406b:	0c 
  a4406c:	62 91 7c 48 5c fc    	vsubps zmm7,zmm0,zmm28
  a44072:	62 11 7c 48 58 cc    	vaddps zmm9,zmm0,zmm28
  a44078:	62 41 6c 40 5c e7    	vsubps zmm28,zmm18,zmm15
  a4407e:	62 c1 6c 40 58 d7    	vaddps zmm18,zmm18,zmm15
  a44084:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x380]
  a4408b:	0e 
  a4408c:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x340]
  a44093:	0d 
  a44094:	62 71 74 48 5c f8    	vsubps zmm15,zmm1,zmm0
  a4409a:	62 71 7c 48 58 c1    	vaddps zmm8,zmm0,zmm1
  a440a0:	62 b1 44 40 5c cc    	vsubps zmm1,zmm23,zmm20
  a440a6:	62 a1 5c 40 58 e7    	vaddps zmm20,zmm20,zmm23
  a440ac:	62 a1 54 40 5c f8    	vsubps zmm23,zmm21,zmm16
  a440b2:	62 a1 54 40 58 c0    	vaddps zmm16,zmm21,zmm16
  a440b8:	62 b1 2c 48 5c c3    	vsubps zmm0,zmm10,zmm19
  a440be:	62 21 2c 48 58 fb    	vaddps zmm31,zmm10,zmm19
  a440c4:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a440cb:	01 
  a440cc:	62 81 6c 48 5c ea    	vsubps zmm21,zmm2,zmm26
  a440d2:	62 f1 2c 40 58 d2    	vaddps zmm2,zmm26,zmm2
  a440d8:	62 e1 4c 40 58 db    	vaddps zmm19,zmm22,zmm3
  a440de:	62 71 4c 40 5c d3    	vsubps zmm10,zmm22,zmm3
  a440e4:	62 91 0c 40 5c d9    	vsubps zmm3,zmm30,zmm25
  a440ea:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a440f1:	01 
  a440f2:	62 01 0c 40 58 d1    	vaddps zmm26,zmm30,zmm25
  a440f8:	62 41 5c 48 5c ce    	vsubps zmm25,zmm4,zmm14
  a440fe:	62 41 5c 48 58 f6    	vaddps zmm30,zmm4,zmm14
  a44104:	62 d1 54 48 5c dd    	vsubps zmm3,zmm5,zmm13
  a4410a:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm3
  a44111:	04 
  a44112:	62 c1 54 48 58 f5    	vaddps zmm22,zmm5,zmm13
  a44118:	62 51 4c 48 5c f7    	vsubps zmm14,zmm6,zmm15
  a4411e:	62 d1 4c 48 58 e7    	vaddps zmm4,zmm6,zmm15
  a44124:	62 f1 1c 40 5c df    	vsubps zmm3,zmm28,zmm7
  a4412a:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm3
  a44131:	03 
  a44132:	62 f1 1c 40 58 df    	vaddps zmm3,zmm28,zmm7
  a44138:	62 21 74 48 5c e5    	vsubps zmm28,zmm1,zmm21
  a4413e:	62 a1 74 48 58 ed    	vaddps zmm21,zmm1,zmm21
  a44144:	62 b1 7c 48 5c cf    	vsubps zmm1,zmm0,zmm23
  a4414a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a44151:	02 
  a44152:	62 a1 7c 48 58 ff    	vaddps zmm23,zmm0,zmm23
  a44158:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a4415f:	06 
  a44160:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x140]
  a44167:	05 
  a44168:	62 f1 7c 48 5c e9    	vsubps zmm5,zmm0,zmm1
  a4416e:	62 71 7c 48 58 e9    	vaddps zmm13,zmm0,zmm1
  a44174:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x5c0]
  a4417b:	17 
  a4417c:	62 91 7c 48 5c f5    	vsubps zmm6,zmm0,zmm29
  a44182:	62 01 7c 48 58 ed    	vaddps zmm29,zmm0,zmm29
  a44188:	62 91 24 40 5c f8    	vsubps zmm7,zmm27,zmm24
  a4418e:	62 11 24 40 58 f8    	vaddps zmm15,zmm27,zmm24
  a44194:	62 41 74 40 5c c4    	vsubps zmm24,zmm17,zmm12
  a4419a:	62 51 74 40 58 e4    	vaddps zmm12,zmm17,zmm12
  a441a0:	62 d1 24 48 5c c1    	vsubps zmm0,zmm11,zmm9
  a441a6:	62 d1 24 48 58 c9    	vaddps zmm1,zmm11,zmm9
  a441ac:	62 51 6c 40 5c c8    	vsubps zmm9,zmm18,zmm8
  a441b2:	62 51 6c 40 58 c0    	vaddps zmm8,zmm18,zmm8
  a441b8:	62 31 5c 40 5c d8    	vsubps zmm11,zmm20,zmm16
  a441be:	62 a1 5c 40 58 d0    	vaddps zmm18,zmm20,zmm16
  a441c4:	62 e1 04 40 5c c2    	vsubps zmm16,zmm31,zmm2
  a441ca:	62 f1 04 40 58 d2    	vaddps zmm2,zmm31,zmm2
  a441d0:	62 e1 7c 48 28 25 a6 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff64dda6]        # 91f80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f430>
  a441d7:	dd 64 ff 
  a441da:	62 e2 5d 40 7f d2    	vpermt2ps zmm18,zmm20,zmm2
  a441e0:	62 d2 5d 40 7f c8    	vpermt2ps zmm1,zmm20,zmm8
  a441e6:	62 52 5d 40 7f fc    	vpermt2ps zmm15,zmm20,zmm12
  a441ec:	62 12 5d 40 7f ed    	vpermt2ps zmm13,zmm20,zmm29
  a441f2:	62 a2 5d 40 7f ef    	vpermt2ps zmm21,zmm20,zmm23
  a441f8:	62 f2 5d 40 7f e3    	vpermt2ps zmm4,zmm20,zmm3
  a441fe:	62 22 5d 40 7f f6    	vpermt2ps zmm30,zmm20,zmm22
  a44204:	62 12 5d 40 7f d2    	vpermt2ps zmm10,zmm20,zmm26
  a4420a:	62 32 5d 40 7f d8    	vpermt2ps zmm11,zmm20,zmm16
  a44210:	62 d2 5d 40 7f c1    	vpermt2ps zmm0,zmm20,zmm9
  a44216:	62 92 5d 40 7f f8    	vpermt2ps zmm7,zmm20,zmm24
  a4421c:	62 f2 5d 40 7f ee    	vpermt2ps zmm5,zmm20,zmm6
  a44222:	62 62 5d 40 7f 64 24 	vpermt2ps zmm28,zmm20,ZMMWORD PTR [rsp+0x80]
  a44229:	02 
  a4422a:	62 72 5d 40 7f 74 24 	vpermt2ps zmm14,zmm20,ZMMWORD PTR [rsp+0xc0]
  a44231:	03 
  a44232:	62 62 5d 40 7f 4c 24 	vpermt2ps zmm25,zmm20,ZMMWORD PTR [rsp+0x100]
  a44239:	04 
  a4423a:	62 e2 5d 40 7f 5c 24 	vpermt2ps zmm19,zmm20,ZMMWORD PTR [rsp+0x40]
  a44241:	01 
  a44242:	62 e3 7d 48 19 d2 02 	vextractf32x4 xmm2,zmm18,0x2
  a44249:	c5 f8 13 56 20       	vmovlps QWORD PTR [rsi+0x20],xmm2
  a4424e:	62 e1 7c 28 11 16    	vmovups YMMWORD PTR [rsi],ymm18
  a44254:	62 f3 7d 48 19 ca 02 	vextractf32x4 xmm2,zmm1,0x2
  a4425b:	c5 f8 13 56 48       	vmovlps QWORD PTR [rsi+0x48],xmm2
  a44260:	c5 fc 11 4e 28       	vmovups YMMWORD PTR [rsi+0x28],ymm1
  a44265:	62 73 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm15,0x2
  a4426c:	c5 f8 13 4e 70       	vmovlps QWORD PTR [rsi+0x70],xmm1
  a44271:	c5 7c 11 7e 50       	vmovups YMMWORD PTR [rsi+0x50],ymm15
  a44276:	62 73 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm13,0x2
  a4427d:	c5 f8 13 8e 98 00 00 	vmovlps QWORD PTR [rsi+0x98],xmm1
  a44284:	00 
  a44285:	c5 7c 11 6e 78       	vmovups YMMWORD PTR [rsi+0x78],ymm13
  a4428a:	62 e3 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm21,0x2
  a44291:	c5 f8 13 8e c0 00 00 	vmovlps QWORD PTR [rsi+0xc0],xmm1
  a44298:	00 
  a44299:	62 e1 7c 28 11 6e 05 	vmovups YMMWORD PTR [rsi+0xa0],ymm21
  a442a0:	62 f3 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm4,0x2
  a442a7:	c5 f8 13 8e e8 00 00 	vmovlps QWORD PTR [rsi+0xe8],xmm1
  a442ae:	00 
  a442af:	c5 fc 11 a6 c8 00 00 	vmovups YMMWORD PTR [rsi+0xc8],ymm4
  a442b6:	00 
  a442b7:	62 63 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm30,0x2
  a442be:	c5 f8 13 8e 10 01 00 	vmovlps QWORD PTR [rsi+0x110],xmm1
  a442c5:	00 
  a442c6:	62 61 7c 28 11 b6 f0 	vmovups YMMWORD PTR [rsi+0xf0],ymm30
  a442cd:	00 00 00 
  a442d0:	62 73 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm10,0x2
  a442d7:	c5 f8 13 8e 38 01 00 	vmovlps QWORD PTR [rsi+0x138],xmm1
  a442de:	00 
  a442df:	c5 7c 11 96 18 01 00 	vmovups YMMWORD PTR [rsi+0x118],ymm10
  a442e6:	00 
  a442e7:	62 73 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm11,0x2
  a442ee:	c5 f8 13 8e 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm1
  a442f5:	00 
  a442f6:	c5 7c 11 9e 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm11
  a442fd:	00 
  a442fe:	62 f3 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm0,0x2
  a44305:	c5 f8 13 8e 88 01 00 	vmovlps QWORD PTR [rsi+0x188],xmm1
  a4430c:	00 
  a4430d:	c5 fc 11 86 68 01 00 	vmovups YMMWORD PTR [rsi+0x168],ymm0
  a44314:	00 
  a44315:	62 f3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm7,0x2
  a4431c:	c5 f8 13 86 b0 01 00 	vmovlps QWORD PTR [rsi+0x1b0],xmm0
  a44323:	00 
  a44324:	c5 fc 11 be 90 01 00 	vmovups YMMWORD PTR [rsi+0x190],ymm7
  a4432b:	00 
  a4432c:	62 f3 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm5,0x2
  a44333:	c5 f8 13 86 d8 01 00 	vmovlps QWORD PTR [rsi+0x1d8],xmm0
  a4433a:	00 
  a4433b:	c5 fc 11 ae b8 01 00 	vmovups YMMWORD PTR [rsi+0x1b8],ymm5
  a44342:	00 
  a44343:	62 63 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm28,0x2
  a4434a:	c5 f8 13 86 00 02 00 	vmovlps QWORD PTR [rsi+0x200],xmm0
  a44351:	00 
  a44352:	62 61 7c 28 11 66 0f 	vmovups YMMWORD PTR [rsi+0x1e0],ymm28
  a44359:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a44360:	c5 f8 13 86 28 02 00 	vmovlps QWORD PTR [rsi+0x228],xmm0
  a44367:	00 
  a44368:	c5 7c 11 b6 08 02 00 	vmovups YMMWORD PTR [rsi+0x208],ymm14
  a4436f:	00 
  a44370:	62 63 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm25,0x2
  a44377:	c5 f8 13 86 50 02 00 	vmovlps QWORD PTR [rsi+0x250],xmm0
  a4437e:	00 
  a4437f:	62 61 7c 28 11 8e 30 	vmovups YMMWORD PTR [rsi+0x230],ymm25
  a44386:	02 00 00 
  a44389:	62 e3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm19,0x2
  a44390:	c5 f8 13 86 78 02 00 	vmovlps QWORD PTR [rsi+0x278],xmm0
  a44397:	00 
  a44398:	62 e1 7c 28 11 9e 58 	vmovups YMMWORD PTR [rsi+0x258],ymm19
  a4439f:	02 00 00 
  a443a2:	48 89 ec             	mov    rsp,rbp
  a443a5:	5d                   	pop    rbp
  a443a6:	c5 f8 77             	vzeroupper
  a443a9:	c3                   	ret
