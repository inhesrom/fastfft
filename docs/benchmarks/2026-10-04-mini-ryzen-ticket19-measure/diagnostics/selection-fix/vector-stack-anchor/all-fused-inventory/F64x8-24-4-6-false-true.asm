
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000915200 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  915200:	62 f1 fd 48 10 05 5e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7b1b5e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  915207:	1b 7b ff 
  91520a:	62 f1 fd 48 10 0d 94 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7b1b94]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  915211:	1b 7b ff 
  915214:	62 f1 fd 48 10 15 ca 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff7b1aca]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  91521b:	1a 7b ff 
  91521e:	62 f1 fd 48 10 1d 00 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff7b1b00]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  915225:	1b 7b ff 
  915228:	48 c1 e2 07          	shl    rdx,0x7
  91522c:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  915230:	31 d2                	xor    edx,edx
  915232:	62 f1 fd 48 28 25 84 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff76a784]        # 7f9c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xce70>
  915239:	a7 76 ff 
  91523c:	62 f1 fd 48 28 2d ba 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff76a7ba]        # 7fa00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xceb0>
  915243:	a7 76 ff 
  915246:	62 f2 fd 48 19 35 48 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff75f848]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  91524d:	f8 75 ff 
  915250:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
  915254:	62 72 fd 48 19 05 c2 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff75f9c2]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  91525b:	f9 75 ff 
  91525e:	62 71 fd 48 28 0d d8 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff76a7d8]        # 7fa40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xcef0>
  915265:	a7 76 ff 
  915268:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  91526f:	00 
  915270:	62 71 fd 48 10 14 17 	vmovupd zmm10,ZMMWORD PTR [rdi+rdx*1]
  915277:	c5 7d 10 5c 17 40    	vmovupd ymm11,YMMWORD PTR [rdi+rdx*1+0x40]
  91527d:	62 51 fd 48 28 e2    	vmovapd zmm12,zmm10
  915283:	62 52 dd 48 7f e3    	vpermt2pd zmm12,zmm4,zmm11
  915289:	62 52 d5 48 7f d3    	vpermt2pd zmm10,zmm5,zmm11
  91528f:	62 71 fd 48 10 9c 17 	vmovupd zmm11,ZMMWORD PTR [rdi+rdx*1+0x60]
  915296:	60 00 00 00 
  91529a:	c5 7d 10 ac 17 a0 00 	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0xa0]
  9152a1:	00 00 
  9152a3:	62 51 fd 48 28 f3    	vmovapd zmm14,zmm11
  9152a9:	62 52 dd 48 7f f5    	vpermt2pd zmm14,zmm4,zmm13
  9152af:	62 52 d5 48 7f dd    	vpermt2pd zmm11,zmm5,zmm13
  9152b5:	62 71 fd 48 10 6c 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1+0xc0]
  9152bc:	03 
  9152bd:	c5 7d 10 bc 17 00 01 	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0x100]
  9152c4:	00 00 
  9152c6:	62 c1 fd 48 28 c5    	vmovapd zmm16,zmm13
  9152cc:	62 c2 dd 48 7f c7    	vpermt2pd zmm16,zmm4,zmm15
  9152d2:	62 52 d5 48 7f ef    	vpermt2pd zmm13,zmm5,zmm15
  9152d8:	62 e1 fd 48 10 8c 17 	vmovupd zmm17,ZMMWORD PTR [rdi+rdx*1+0x120]
  9152df:	20 01 00 00 
  9152e3:	c5 7d 10 bc 17 60 01 	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0x160]
  9152ea:	00 00 
  9152ec:	62 a1 fd 48 28 d1    	vmovapd zmm18,zmm17
  9152f2:	62 c2 dd 48 7f d7    	vpermt2pd zmm18,zmm4,zmm15
  9152f8:	62 c2 d5 48 7f cf    	vpermt2pd zmm17,zmm5,zmm15
  9152fe:	62 a1 9d 48 58 d8    	vaddpd zmm19,zmm12,zmm16
  915304:	62 a1 8d 48 58 e2    	vaddpd zmm20,zmm14,zmm18
  91530a:	62 a1 e5 40 58 ec    	vaddpd zmm21,zmm19,zmm20
  915310:	62 c1 ad 48 58 f5    	vaddpd zmm22,zmm10,zmm13
  915316:	62 a1 a5 48 58 f9    	vaddpd zmm23,zmm11,zmm17
  91531c:	62 31 cd 40 58 ff    	vaddpd zmm15,zmm22,zmm23
  915322:	62 31 9d 48 5c e0    	vsubpd zmm12,zmm12,zmm16
  915328:	62 31 a5 48 5c d9    	vsubpd zmm11,zmm11,zmm17
  91532e:	62 41 9d 48 58 c3    	vaddpd zmm24,zmm12,zmm11
  915334:	62 51 ad 48 5c d5    	vsubpd zmm10,zmm10,zmm13
  91533a:	62 51 ed 40 5c ee    	vsubpd zmm13,zmm18,zmm14
  915340:	62 c1 95 48 58 ca    	vaddpd zmm17,zmm13,zmm10
  915346:	62 31 e5 40 5c f4    	vsubpd zmm14,zmm19,zmm20
  91534c:	62 a1 cd 40 5c df    	vsubpd zmm19,zmm22,zmm23
  915352:	62 51 9d 48 5c db    	vsubpd zmm11,zmm12,zmm11
  915358:	62 51 ad 48 5c ed    	vsubpd zmm13,zmm10,zmm13
  91535e:	62 31 fd 48 28 e5    	vmovapd zmm12,zmm21
  915364:	62 72 fd 48 7f e7    	vpermt2pd zmm12,zmm0,zmm7
  91536a:	62 e2 f5 48 7f ef    	vpermt2pd zmm21,zmm1,zmm7
  915370:	62 81 fd 48 28 c0    	vmovapd zmm16,zmm24
  915376:	62 e2 fd 48 7f c7    	vpermt2pd zmm16,zmm0,zmm7
  91537c:	62 62 f5 48 7f c7    	vpermt2pd zmm24,zmm1,zmm7
  915382:	62 51 fd 48 28 d6    	vmovapd zmm10,zmm14
  915388:	62 72 fd 48 7f d7    	vpermt2pd zmm10,zmm0,zmm7
  91538e:	62 72 f5 48 7f f7    	vpermt2pd zmm14,zmm1,zmm7
  915394:	62 c1 fd 48 28 d3    	vmovapd zmm18,zmm11
  91539a:	62 e2 fd 48 7f d7    	vpermt2pd zmm18,zmm0,zmm7
  9153a0:	62 72 f5 48 7f df    	vpermt2pd zmm11,zmm1,zmm7
  9153a6:	62 c1 fd 48 28 e4    	vmovapd zmm20,zmm12
  9153ac:	62 c2 ed 48 7f e2    	vpermt2pd zmm20,zmm2,zmm10
  9153b2:	62 52 e5 48 7f e2    	vpermt2pd zmm12,zmm3,zmm10
  9153b8:	62 a1 fd 48 28 f0    	vmovapd zmm22,zmm16
  9153be:	62 a2 ed 48 7f f2    	vpermt2pd zmm22,zmm2,zmm18
  9153c4:	62 a2 e5 48 7f c2    	vpermt2pd zmm16,zmm3,zmm18
  9153ca:	62 c2 ed 48 7f ee    	vpermt2pd zmm21,zmm2,zmm14
  9153d0:	62 42 ed 48 7f c3    	vpermt2pd zmm24,zmm2,zmm11
  9153d6:	62 31 dd 40 14 d6    	vunpcklpd zmm10,zmm20,zmm22
  9153dc:	62 31 dd 40 15 de    	vunpckhpd zmm11,zmm20,zmm22
  9153e2:	62 a1 9d 48 14 d0    	vunpcklpd zmm18,zmm12,zmm16
  9153e8:	62 31 9d 48 15 f0    	vunpckhpd zmm14,zmm12,zmm16
  9153ee:	62 81 d5 40 14 c0    	vunpcklpd zmm16,zmm21,zmm24
  9153f4:	62 11 d5 40 15 e0    	vunpckhpd zmm12,zmm21,zmm24
  9153fa:	62 c1 fd 48 28 e7    	vmovapd zmm20,zmm15
  915400:	62 e2 fd 48 7f e7    	vpermt2pd zmm20,zmm0,zmm7
  915406:	62 72 f5 48 7f ff    	vpermt2pd zmm15,zmm1,zmm7
  91540c:	62 a1 fd 48 28 e9    	vmovapd zmm21,zmm17
  915412:	62 e2 fd 48 7f ef    	vpermt2pd zmm21,zmm0,zmm7
  915418:	62 e2 f5 48 7f cf    	vpermt2pd zmm17,zmm1,zmm7
  91541e:	62 a1 fd 48 28 f3    	vmovapd zmm22,zmm19
  915424:	62 e2 fd 48 7f f7    	vpermt2pd zmm22,zmm0,zmm7
  91542a:	62 e2 f5 48 7f df    	vpermt2pd zmm19,zmm1,zmm7
  915430:	62 c1 fd 48 28 fd    	vmovapd zmm23,zmm13
  915436:	62 e2 fd 48 7f ff    	vpermt2pd zmm23,zmm0,zmm7
  91543c:	62 72 f5 48 7f ef    	vpermt2pd zmm13,zmm1,zmm7
  915442:	62 21 fd 48 28 c4    	vmovapd zmm24,zmm20
  915448:	62 22 ed 48 7f c6    	vpermt2pd zmm24,zmm2,zmm22
  91544e:	62 a2 e5 48 7f e6    	vpermt2pd zmm20,zmm3,zmm22
  915454:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  91545a:	62 a2 ed 48 7f f7    	vpermt2pd zmm22,zmm2,zmm23
  915460:	62 a2 e5 48 7f ef    	vpermt2pd zmm21,zmm3,zmm23
  915466:	62 32 ed 48 7f fb    	vpermt2pd zmm15,zmm2,zmm19
  91546c:	62 c2 ed 48 7f cd    	vpermt2pd zmm17,zmm2,zmm13
  915472:	62 31 bd 40 14 ee    	vunpcklpd zmm13,zmm24,zmm22
  915478:	62 a1 bd 40 15 de    	vunpckhpd zmm19,zmm24,zmm22
  91547e:	62 a1 dd 40 14 f5    	vunpcklpd zmm22,zmm20,zmm21
  915484:	62 a1 dd 40 15 e5    	vunpckhpd zmm20,zmm20,zmm21
  91548a:	62 a1 85 48 14 e9    	vunpcklpd zmm21,zmm15,zmm17
  915490:	62 a1 85 48 15 c9    	vunpckhpd zmm17,zmm15,zmm17
  915496:	62 e1 fd 48 10 79 04 	vmovupd zmm23,ZMMWORD PTR [rcx+0x100]
  91549d:	62 61 fd 48 10 41 05 	vmovupd zmm24,ZMMWORD PTR [rcx+0x140]
  9154a4:	62 31 ed 40 59 ff    	vmulpd zmm15,zmm18,zmm23
  9154aa:	62 12 cd 40 bc f8    	vfnmadd231pd zmm15,zmm22,zmm24
  9154b0:	62 a1 cd 40 59 f7    	vmulpd zmm22,zmm22,zmm23
  9154b6:	62 e1 fd 48 10 79 08 	vmovupd zmm23,ZMMWORD PTR [rcx+0x200]
  9154bd:	62 82 ed 40 b8 f0    	vfmadd231pd zmm22,zmm18,zmm24
  9154c3:	62 e1 fd 48 10 51 09 	vmovupd zmm18,ZMMWORD PTR [rcx+0x240]
  9154ca:	62 21 fd 40 59 c7    	vmulpd zmm24,zmm16,zmm23
  9154d0:	62 22 d5 40 bc c2    	vfnmadd231pd zmm24,zmm21,zmm18
  9154d6:	62 a1 d5 40 59 ef    	vmulpd zmm21,zmm21,zmm23
  9154dc:	62 e1 fd 48 10 79 06 	vmovupd zmm23,ZMMWORD PTR [rcx+0x180]
  9154e3:	62 a2 fd 40 b8 ea    	vfmadd231pd zmm21,zmm16,zmm18
  9154e9:	62 e1 fd 48 10 41 07 	vmovupd zmm16,ZMMWORD PTR [rcx+0x1c0]
  9154f0:	62 a1 8d 48 59 d7    	vmulpd zmm18,zmm14,zmm23
  9154f6:	62 a2 dd 40 bc d0    	vfnmadd231pd zmm18,zmm20,zmm16
  9154fc:	62 a1 dd 40 59 e7    	vmulpd zmm20,zmm20,zmm23
  915502:	62 e1 fd 48 10 79 0a 	vmovupd zmm23,ZMMWORD PTR [rcx+0x280]
  915509:	62 a2 8d 48 b8 e0    	vfmadd231pd zmm20,zmm14,zmm16
  91550f:	62 71 fd 48 10 71 0b 	vmovupd zmm14,ZMMWORD PTR [rcx+0x2c0]
  915516:	62 a1 9d 48 59 c7    	vmulpd zmm16,zmm12,zmm23
  91551c:	62 c2 f5 40 bc c6    	vfnmadd231pd zmm16,zmm17,zmm14
  915522:	62 a1 f5 40 59 cf    	vmulpd zmm17,zmm17,zmm23
  915528:	62 e1 fd 48 10 79 02 	vmovupd zmm23,ZMMWORD PTR [rcx+0x80]
  91552f:	62 c2 9d 48 b8 ce    	vfmadd231pd zmm17,zmm12,zmm14
  915535:	62 71 fd 48 10 61 03 	vmovupd zmm12,ZMMWORD PTR [rcx+0xc0]
  91553c:	62 31 a5 48 59 f7    	vmulpd zmm14,zmm11,zmm23
  915542:	62 52 e5 40 bc f4    	vfnmadd231pd zmm14,zmm19,zmm12
  915548:	62 a1 e5 40 59 df    	vmulpd zmm19,zmm19,zmm23
  91554e:	62 81 85 48 58 f8    	vaddpd zmm23,zmm15,zmm24
  915554:	62 c2 a5 48 b8 dc    	vfmadd231pd zmm19,zmm11,zmm12
  91555a:	62 31 ad 48 58 df    	vaddpd zmm11,zmm10,zmm23
  915560:	62 51 fd 40 58 e6    	vaddpd zmm12,zmm16,zmm14
  915566:	62 c2 cd 48 ac fa    	vfnmadd213pd zmm23,zmm6,zmm10
  91556c:	62 31 cd 40 58 d5    	vaddpd zmm10,zmm22,zmm21
  915572:	62 a1 cd 40 5c ed    	vsubpd zmm21,zmm22,zmm21
  915578:	62 c1 ed 40 58 f4    	vaddpd zmm22,zmm18,zmm12
  91557e:	62 c2 cd 48 bc d4    	vfnmadd231pd zmm18,zmm6,zmm12
  915584:	62 31 f5 40 58 e3    	vaddpd zmm12,zmm17,zmm19
  91558a:	62 a1 f5 40 5c cb    	vsubpd zmm17,zmm17,zmm19
  915590:	62 c1 ad 48 58 dd    	vaddpd zmm19,zmm10,zmm13
  915596:	62 52 cd 48 ac d5    	vfnmadd213pd zmm10,zmm6,zmm13
  91559c:	62 11 85 48 5c e8    	vsubpd zmm13,zmm15,zmm24
  9155a2:	62 51 dd 40 58 fc    	vaddpd zmm15,zmm20,zmm12
  9155a8:	62 c2 cd 48 bc e4    	vfnmadd231pd zmm20,zmm6,zmm12
  9155ae:	62 51 d5 40 59 e0    	vmulpd zmm12,zmm21,zmm8
  9155b4:	62 51 fd 40 5c f6    	vsubpd zmm14,zmm16,zmm14
  9155ba:	62 c1 c5 40 58 c4    	vaddpd zmm16,zmm23,zmm12
  9155c0:	62 c1 f5 40 59 c8    	vmulpd zmm17,zmm17,zmm8
  9155c6:	62 51 c5 40 5c e4    	vsubpd zmm12,zmm23,zmm12
  9155cc:	62 a1 ed 40 58 e9    	vaddpd zmm21,zmm18,zmm17
  9155d2:	62 51 95 48 59 e8    	vmulpd zmm13,zmm13,zmm8
  9155d8:	62 a1 ed 40 5c c9    	vsubpd zmm17,zmm18,zmm17
  9155de:	62 c1 ad 48 5c d5    	vsubpd zmm18,zmm10,zmm13
  9155e4:	62 51 8d 48 59 f0    	vmulpd zmm14,zmm14,zmm8
  9155ea:	62 51 95 48 58 d2    	vaddpd zmm10,zmm13,zmm10
  9155f0:	62 51 dd 40 5c ee    	vsubpd zmm13,zmm20,zmm14
  9155f6:	62 51 dd 40 58 f6    	vaddpd zmm14,zmm20,zmm14
  9155fc:	62 a1 fd 40 5c e5    	vsubpd zmm20,zmm16,zmm21
  915602:	62 a1 fd 40 58 c5    	vaddpd zmm16,zmm16,zmm21
  915608:	62 c1 ed 40 5c ed    	vsubpd zmm21,zmm18,zmm13
  91560e:	62 51 ed 40 58 ed    	vaddpd zmm13,zmm18,zmm13
  915614:	62 a1 9d 48 58 d1    	vaddpd zmm18,zmm12,zmm17
  91561a:	62 31 9d 48 5c e1    	vsubpd zmm12,zmm12,zmm17
  915620:	62 c1 ad 48 58 ce    	vaddpd zmm17,zmm10,zmm14
  915626:	62 51 ad 48 5c d6    	vsubpd zmm10,zmm10,zmm14
  91562c:	62 31 a5 48 5c f6    	vsubpd zmm14,zmm11,zmm22
  915632:	62 31 a5 48 58 de    	vaddpd zmm11,zmm11,zmm22
  915638:	62 c1 e5 40 5c f7    	vsubpd zmm22,zmm19,zmm15
  91563e:	62 51 e5 40 58 ff    	vaddpd zmm15,zmm19,zmm15
  915644:	62 52 b5 48 7f df    	vpermt2pd zmm11,zmm9,zmm15
  91564a:	62 71 fd 48 11 1c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm11
  915651:	62 a2 b5 48 7f e5    	vpermt2pd zmm20,zmm9,zmm21
  915657:	62 e1 fd 48 11 64 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x40],zmm20
  91565e:	01 
  91565f:	62 a2 b5 48 7f d1    	vpermt2pd zmm18,zmm9,zmm17
  915665:	62 e1 fd 48 11 54 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x80],zmm18
  91566c:	02 
  91566d:	62 32 b5 48 7f f6    	vpermt2pd zmm14,zmm9,zmm22
  915673:	62 71 fd 48 11 74 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm14
  91567a:	03 
  91567b:	62 c2 b5 48 7f c5    	vpermt2pd zmm16,zmm9,zmm13
  915681:	62 e1 fd 48 11 44 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x100],zmm16
  915688:	04 
  915689:	62 52 b5 48 7f e2    	vpermt2pd zmm12,zmm9,zmm10
  91568f:	62 71 fd 48 11 64 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x140],zmm12
  915696:	05 
  915697:	48 81 c2 80 01 00 00 	add    rdx,0x180
  91569e:	48 39 d0             	cmp    rax,rdx
  9156a1:	0f 85 c9 fb ff ff    	jne    915270 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  9156a7:	c5 f8 77             	vzeroupper
  9156aa:	c3                   	ret
