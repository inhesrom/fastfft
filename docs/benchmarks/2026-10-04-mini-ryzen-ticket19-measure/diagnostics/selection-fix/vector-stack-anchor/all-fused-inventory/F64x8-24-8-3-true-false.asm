
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000939340 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  939340:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  939345:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  93934c:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  939350:	c5 fd 10 67 30       	vmovupd ymm4,YMMWORD PTR [rdi+0x30]
  939355:	c5 fd 10 7f 60       	vmovupd ymm7,YMMWORD PTR [rdi+0x60]
  93935a:	c5 7d 10 87 90 00 00 	vmovupd ymm8,YMMWORD PTR [rdi+0x90]
  939361:	00 
  939362:	62 f3 75 48 18 d0 02 	vinsertf32x4 zmm2,zmm1,xmm0,0x2
  939369:	62 f1 fd 48 28 0d 4d 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff74954d]        # 828c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xfd70>
  939370:	95 74 ff 
  939373:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  939377:	62 e1 fd 48 28 d2    	vmovapd zmm18,zmm2
  93937d:	62 e2 f5 48 7f d3    	vpermt2pd zmm18,zmm1,zmm3
  939383:	62 71 fd 48 28 1d 73 	vmovapd zmm11,ZMMWORD PTR [rip+0xffffffffff749573]        # 82900 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xfdb0>
  93938a:	95 74 ff 
  93938d:	62 f2 a5 48 7f d3    	vpermt2pd zmm2,zmm11,zmm3
  939393:	c5 fb 12 6f 58       	vmovddup xmm5,QWORD PTR [rdi+0x58]
  939398:	c4 e3 51 0d 6f 50 01 	vblendpd xmm5,xmm5,XMMWORD PTR [rdi+0x50],0x1
  93939f:	62 f3 5d 48 18 f5 02 	vinsertf32x4 zmm6,zmm4,xmm5,0x2
  9393a6:	62 f1 fd 48 28 ee    	vmovapd zmm5,zmm6
  9393ac:	62 f2 f5 48 7f eb    	vpermt2pd zmm5,zmm1,zmm3
  9393b2:	62 f2 a5 48 7f f3    	vpermt2pd zmm6,zmm11,zmm3
  9393b8:	c5 fb 12 a7 88 00 00 	vmovddup xmm4,QWORD PTR [rdi+0x88]
  9393bf:	00 
  9393c0:	c4 e3 59 0d a7 80 00 	vblendpd xmm4,xmm4,XMMWORD PTR [rdi+0x80],0x1
  9393c7:	00 00 01 
  9393ca:	62 f3 45 48 18 e4 02 	vinsertf32x4 zmm4,zmm7,xmm4,0x2
  9393d1:	62 71 fd 48 28 cc    	vmovapd zmm9,zmm4
  9393d7:	62 72 f5 48 7f cb    	vpermt2pd zmm9,zmm1,zmm3
  9393dd:	62 f2 a5 48 7f e3    	vpermt2pd zmm4,zmm11,zmm3
  9393e3:	c5 fb 12 bf b8 00 00 	vmovddup xmm7,QWORD PTR [rdi+0xb8]
  9393ea:	00 
  9393eb:	c4 e3 41 0d bf b0 00 	vblendpd xmm7,xmm7,XMMWORD PTR [rdi+0xb0],0x1
  9393f2:	00 00 01 
  9393f5:	62 73 3d 48 18 c7 02 	vinsertf32x4 zmm8,zmm8,xmm7,0x2
  9393fc:	62 51 fd 48 28 d0    	vmovapd zmm10,zmm8
  939402:	62 72 f5 48 7f d3    	vpermt2pd zmm10,zmm1,zmm3
  939408:	62 72 a5 48 7f c3    	vpermt2pd zmm8,zmm11,zmm3
  93940e:	c5 fb 12 bf e8 00 00 	vmovddup xmm7,QWORD PTR [rdi+0xe8]
  939415:	00 
  939416:	c4 e3 41 0d bf e0 00 	vblendpd xmm7,xmm7,XMMWORD PTR [rdi+0xe0],0x1
  93941d:	00 00 01 
  939420:	c5 7d 10 a7 c0 00 00 	vmovupd ymm12,YMMWORD PTR [rdi+0xc0]
  939427:	00 
  939428:	62 73 1d 48 18 e7 02 	vinsertf32x4 zmm12,zmm12,xmm7,0x2
  93942f:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  939435:	62 72 f5 48 7f eb    	vpermt2pd zmm13,zmm1,zmm3
  93943b:	62 72 a5 48 7f e3    	vpermt2pd zmm12,zmm11,zmm3
  939441:	c5 fd 10 bf f0 00 00 	vmovupd ymm7,YMMWORD PTR [rdi+0xf0]
  939448:	00 
  939449:	c5 7b 12 b7 18 01 00 	vmovddup xmm14,QWORD PTR [rdi+0x118]
  939450:	00 
  939451:	c4 63 09 0d b7 10 01 	vblendpd xmm14,xmm14,XMMWORD PTR [rdi+0x110],0x1
  939458:	00 00 01 
  93945b:	62 53 45 48 18 f6 02 	vinsertf32x4 zmm14,zmm7,xmm14,0x2
  939462:	62 51 fd 48 28 fe    	vmovapd zmm15,zmm14
  939468:	62 72 f5 48 7f fb    	vpermt2pd zmm15,zmm1,zmm3
  93946e:	62 72 a5 48 7f f3    	vpermt2pd zmm14,zmm11,zmm3
  939474:	c5 fb 12 bf 48 01 00 	vmovddup xmm7,QWORD PTR [rdi+0x148]
  93947b:	00 
  93947c:	62 e1 fd 28 10 47 09 	vmovupd ymm16,YMMWORD PTR [rdi+0x120]
  939483:	c4 e3 41 0d bf 40 01 	vblendpd xmm7,xmm7,XMMWORD PTR [rdi+0x140],0x1
  93948a:	00 00 01 
  93948d:	62 e3 7d 40 18 c7 02 	vinsertf32x4 zmm16,zmm16,xmm7,0x2
  939494:	62 a1 fd 48 28 c8    	vmovapd zmm17,zmm16
  93949a:	62 e2 f5 48 7f cb    	vpermt2pd zmm17,zmm1,zmm3
  9394a0:	62 e2 a5 48 7f c3    	vpermt2pd zmm16,zmm11,zmm3
  9394a6:	c5 fd 10 bf 50 01 00 	vmovupd ymm7,YMMWORD PTR [rdi+0x150]
  9394ad:	00 
  9394ae:	c5 fb 12 87 78 01 00 	vmovddup xmm0,QWORD PTR [rdi+0x178]
  9394b5:	00 
  9394b6:	c4 e3 79 0d 87 70 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x170],0x1
  9394bd:	00 00 01 
  9394c0:	62 f3 45 48 18 c0 02 	vinsertf32x4 zmm0,zmm7,xmm0,0x2
  9394c7:	62 f2 fd 48 77 cb    	vpermi2pd zmm1,zmm0,zmm3
  9394cd:	62 f2 a5 48 7f c3    	vpermt2pd zmm0,zmm11,zmm3
  9394d3:	62 51 ed 48 58 dc    	vaddpd zmm11,zmm2,zmm12
  9394d9:	62 a1 dd 48 58 d8    	vaddpd zmm19,zmm4,zmm16
  9394df:	62 a1 a5 48 58 e3    	vaddpd zmm20,zmm11,zmm19
  9394e5:	62 c1 cd 48 58 ee    	vaddpd zmm21,zmm6,zmm14
  9394eb:	62 e1 bd 48 58 f0    	vaddpd zmm22,zmm8,zmm0
  9394f1:	62 a1 d5 40 58 fe    	vaddpd zmm23,zmm21,zmm22
  9394f7:	62 b1 dd 40 58 ff    	vaddpd zmm7,zmm20,zmm23
  9394fd:	62 41 ed 40 58 c5    	vaddpd zmm24,zmm18,zmm13
  939503:	62 21 b5 48 58 c9    	vaddpd zmm25,zmm9,zmm17
  939509:	62 01 bd 40 58 d1    	vaddpd zmm26,zmm24,zmm25
  93950f:	62 41 d5 48 58 df    	vaddpd zmm27,zmm5,zmm15
  939515:	62 61 ad 48 58 e1    	vaddpd zmm28,zmm10,zmm1
  93951b:	62 01 a5 40 58 ec    	vaddpd zmm29,zmm27,zmm28
  939521:	62 91 ad 40 58 dd    	vaddpd zmm3,zmm26,zmm29
  939527:	62 d1 ed 48 5c d4    	vsubpd zmm2,zmm2,zmm12
  93952d:	62 31 b5 48 5c c9    	vsubpd zmm9,zmm9,zmm17
  939533:	62 51 ed 48 58 e1    	vaddpd zmm12,zmm2,zmm9
  939539:	62 d1 cd 48 5c f6    	vsubpd zmm6,zmm6,zmm14
  93953f:	62 d1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm15
  939545:	62 72 fd 48 19 35 51 	vbroadcastsd zmm14,QWORD PTR [rip+0xffffffffff73b951]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  93954c:	b9 73 ff 
  93954f:	62 71 cd 48 58 fd    	vaddpd zmm15,zmm6,zmm5
  939555:	62 51 85 48 59 fe    	vmulpd zmm15,zmm15,zmm14
  93955b:	62 f1 ad 48 5c c9    	vsubpd zmm1,zmm10,zmm1
  939561:	62 f1 bd 48 5c c0    	vsubpd zmm0,zmm8,zmm0
  939567:	62 71 f5 48 5c c0    	vsubpd zmm8,zmm1,zmm0
  93956d:	62 51 bd 48 59 c6    	vmulpd zmm8,zmm8,zmm14
  939573:	62 51 85 48 58 d0    	vaddpd zmm10,zmm15,zmm8
  939579:	62 c1 9d 48 58 ca    	vaddpd zmm17,zmm12,zmm10
  93957f:	62 51 ed 40 5c ed    	vsubpd zmm13,zmm18,zmm13
  939585:	62 f1 fd 40 5c e4    	vsubpd zmm4,zmm16,zmm4
  93958b:	62 c1 dd 48 58 c5    	vaddpd zmm16,zmm4,zmm13
  939591:	62 f1 d5 48 5c ee    	vsubpd zmm5,zmm5,zmm6
  939597:	62 d1 d5 48 59 ee    	vmulpd zmm5,zmm5,zmm14
  93959d:	62 f1 fd 48 58 c1    	vaddpd zmm0,zmm0,zmm1
  9395a3:	62 d1 fd 48 59 c6    	vmulpd zmm0,zmm0,zmm14
  9395a9:	62 f1 d5 48 5c c8    	vsubpd zmm1,zmm5,zmm0
  9395af:	62 f1 fd 40 58 f1    	vaddpd zmm6,zmm16,zmm1
  9395b5:	62 31 a5 48 5c db    	vsubpd zmm11,zmm11,zmm19
  9395bb:	62 11 a5 40 5c f4    	vsubpd zmm14,zmm27,zmm28
  9395c1:	62 c1 a5 48 58 d6    	vaddpd zmm18,zmm11,zmm14
  9395c7:	62 81 bd 40 5c d9    	vsubpd zmm19,zmm24,zmm25
  9395cd:	62 a1 cd 40 5c ed    	vsubpd zmm21,zmm22,zmm21
  9395d3:	62 a1 d5 40 58 f3    	vaddpd zmm22,zmm21,zmm19
  9395d9:	62 d1 ed 48 5c d1    	vsubpd zmm2,zmm2,zmm9
  9395df:	62 f1 d5 48 58 c0    	vaddpd zmm0,zmm5,zmm0
  9395e5:	62 f1 ed 48 58 e8    	vaddpd zmm5,zmm2,zmm0
  9395eb:	62 f1 95 48 5c e4    	vsubpd zmm4,zmm13,zmm4
  9395f1:	62 51 bd 48 5c c7    	vsubpd zmm8,zmm8,zmm15
  9395f7:	62 51 dd 48 58 c8    	vaddpd zmm9,zmm4,zmm8
  9395fd:	62 31 dd 40 5c ef    	vsubpd zmm13,zmm20,zmm23
  939603:	62 11 ad 40 5c fd    	vsubpd zmm15,zmm26,zmm29
  939609:	62 51 9d 48 5c d2    	vsubpd zmm10,zmm12,zmm10
  93960f:	62 f1 fd 40 5c c9    	vsubpd zmm1,zmm16,zmm1
  939615:	62 51 a5 48 5c de    	vsubpd zmm11,zmm11,zmm14
  93961b:	62 31 e5 40 5c e5    	vsubpd zmm12,zmm19,zmm21
  939621:	62 f1 ed 48 5c c0    	vsubpd zmm0,zmm2,zmm0
  939627:	62 d1 dd 48 5c d0    	vsubpd zmm2,zmm4,zmm8
  93962d:	62 f1 fd 48 10 25 31 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff78d731]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  939634:	d7 78 ff 
  939637:	62 d2 dd 48 7f fd    	vpermt2pd zmm7,zmm4,zmm13
  93963d:	62 c2 dd 48 7f ca    	vpermt2pd zmm17,zmm4,zmm10
  939643:	62 c2 dd 48 7f d3    	vpermt2pd zmm18,zmm4,zmm11
  939649:	62 f2 dd 48 7f e8    	vpermt2pd zmm5,zmm4,zmm0
  93964f:	62 f1 fd 48 10 05 8f 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff78d68f]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  939656:	d6 78 ff 
  939659:	62 71 fd 48 28 c7    	vmovapd zmm8,zmm7
  93965f:	62 32 fd 48 7f c2    	vpermt2pd zmm8,zmm0,zmm18
  939665:	62 71 fd 48 10 15 b9 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff78d6b9]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  93966c:	d6 78 ff 
  93966f:	62 b2 ad 48 7f fa    	vpermt2pd zmm7,zmm10,zmm18
  939675:	62 31 fd 48 28 d9    	vmovapd zmm11,zmm17
  93967b:	62 72 fd 48 7f dd    	vpermt2pd zmm11,zmm0,zmm5
  939681:	62 e2 ad 48 7f cd    	vpermt2pd zmm17,zmm10,zmm5
  939687:	62 b1 c5 48 14 e9    	vunpcklpd zmm5,zmm7,zmm17
  93968d:	62 d1 bd 48 14 fb    	vunpcklpd zmm7,zmm8,zmm11
  939693:	62 51 bd 48 15 c3    	vunpckhpd zmm8,zmm8,zmm11
  939699:	62 d2 dd 48 7f df    	vpermt2pd zmm3,zmm4,zmm15
  93969f:	62 f2 dd 48 7f f1    	vpermt2pd zmm6,zmm4,zmm1
  9396a5:	62 c2 dd 48 7f f4    	vpermt2pd zmm22,zmm4,zmm12
  9396ab:	62 72 dd 48 7f ca    	vpermt2pd zmm9,zmm4,zmm2
  9396b1:	62 f1 fd 48 28 cb    	vmovapd zmm1,zmm3
  9396b7:	62 b2 fd 48 7f ce    	vpermt2pd zmm1,zmm0,zmm22
  9396bd:	62 b2 ad 48 7f de    	vpermt2pd zmm3,zmm10,zmm22
  9396c3:	62 d2 cd 48 77 c1    	vpermi2pd zmm0,zmm6,zmm9
  9396c9:	62 d2 ad 48 7f f1    	vpermt2pd zmm6,zmm10,zmm9
  9396cf:	62 f1 e5 48 14 d6    	vunpcklpd zmm2,zmm3,zmm6
  9396d5:	62 f1 f5 48 14 d8    	vunpcklpd zmm3,zmm1,zmm0
  9396db:	62 f1 f5 48 15 c0    	vunpckhpd zmm0,zmm1,zmm0
  9396e1:	62 f1 fd 48 10 4a 02 	vmovupd zmm1,ZMMWORD PTR [rdx+0x80]
  9396e8:	62 f1 fd 48 10 62 03 	vmovupd zmm4,ZMMWORD PTR [rdx+0xc0]
  9396ef:	62 f1 fd 48 10 72 04 	vmovupd zmm6,ZMMWORD PTR [rdx+0x100]
  9396f6:	62 71 fd 48 10 4a 05 	vmovupd zmm9,ZMMWORD PTR [rdx+0x140]
  9396fd:	62 71 fd 48 59 d1    	vmulpd zmm10,zmm0,zmm1
  939703:	62 72 bd 48 b8 d4    	vfmadd231pd zmm10,zmm8,zmm4
  939709:	62 71 ed 48 59 de    	vmulpd zmm11,zmm2,zmm6
  93970f:	62 52 d5 48 b8 d9    	vfmadd231pd zmm11,zmm5,zmm9
  939715:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  93971b:	62 72 fd 48 19 2d 73 	vbroadcastsd zmm13,QWORD PTR [rip+0xffffffffff73b373]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  939722:	b3 73 ff 
  939725:	62 51 fd 48 28 f5    	vmovapd zmm14,zmm13
  93972b:	62 72 9d 48 ac f3    	vfnmadd213pd zmm14,zmm12,zmm3
  939731:	62 f1 bd 48 59 c9    	vmulpd zmm1,zmm8,zmm1
  939737:	62 f2 fd 48 bc cc    	vfnmadd231pd zmm1,zmm0,zmm4
  93973d:	62 f1 d5 48 59 c6    	vmulpd zmm0,zmm5,zmm6
  939743:	62 d2 ed 48 bc c1    	vfnmadd231pd zmm0,zmm2,zmm9
  939749:	62 f2 fd 48 19 15 cd 	vbroadcastsd zmm2,QWORD PTR [rip+0xffffffffff73b4cd]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  939750:	b4 73 ff 
  939753:	62 f1 f5 48 5c e0    	vsubpd zmm4,zmm1,zmm0
  939759:	62 f1 dd 48 59 e2    	vmulpd zmm4,zmm4,zmm2
  93975f:	62 f1 8d 48 58 ec    	vaddpd zmm5,zmm14,zmm4
  939765:	62 f1 f5 48 58 c0    	vaddpd zmm0,zmm1,zmm0
  93976b:	62 72 fd 48 ac ef    	vfnmadd213pd zmm13,zmm0,zmm7
  939771:	62 d1 ad 48 5c cb    	vsubpd zmm1,zmm10,zmm11
  939777:	62 f1 f5 48 59 ca    	vmulpd zmm1,zmm1,zmm2
  93977d:	62 f1 95 48 5c d1    	vsubpd zmm2,zmm13,zmm1
  939783:	62 f1 8d 48 5c e4    	vsubpd zmm4,zmm14,zmm4
  939789:	62 f1 95 48 58 c9    	vaddpd zmm1,zmm13,zmm1
  93978f:	62 d1 e5 48 58 dc    	vaddpd zmm3,zmm3,zmm12
  939795:	62 f1 c5 48 58 c0    	vaddpd zmm0,zmm7,zmm0
  93979b:	62 f1 fd 48 28 35 9b 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff74919b]        # 82940 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xfdf0>
  9397a2:	91 74 ff 
  9397a5:	62 f1 fd 48 28 fb    	vmovapd zmm7,zmm3
  9397ab:	62 f2 cd 48 7f f8    	vpermt2pd zmm7,zmm6,zmm0
  9397b1:	62 71 fd 48 28 05 c5 	vmovapd zmm8,ZMMWORD PTR [rip+0xffffffffff7491c5]        # 82980 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xfe30>
  9397b8:	91 74 ff 
  9397bb:	62 f2 bd 48 7f d8    	vpermt2pd zmm3,zmm8,zmm0
  9397c1:	62 f1 fd 48 11 1e    	vmovupd ZMMWORD PTR [rsi],zmm3
  9397c7:	62 f1 fd 48 11 7e 01 	vmovupd ZMMWORD PTR [rsi+0x40],zmm7
  9397ce:	62 f1 fd 48 28 c4    	vmovapd zmm0,zmm4
  9397d4:	62 f2 cd 48 7f c1    	vpermt2pd zmm0,zmm6,zmm1
  9397da:	62 f2 bd 48 7f e1    	vpermt2pd zmm4,zmm8,zmm1
  9397e0:	62 f1 fd 48 11 66 02 	vmovupd ZMMWORD PTR [rsi+0x80],zmm4
  9397e7:	62 f1 fd 48 11 46 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm0
  9397ee:	62 f2 d5 48 77 f2    	vpermi2pd zmm6,zmm5,zmm2
  9397f4:	62 f2 bd 48 7f ea    	vpermt2pd zmm5,zmm8,zmm2
  9397fa:	62 f1 fd 48 11 6e 04 	vmovupd ZMMWORD PTR [rsi+0x100],zmm5
  939801:	62 f1 fd 48 11 76 05 	vmovupd ZMMWORD PTR [rsi+0x140],zmm6
  939808:	c5 f8 77             	vzeroupper
  93980b:	c3                   	ret
