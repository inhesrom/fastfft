
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000938380 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  938380:	62 f1 fd 48 28 05 36 	vmovapd zmm0,ZMMWORD PTR [rip+0xffffffffff74a336]        # 826c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xfb70>
  938387:	a3 74 ff 
  93838a:	62 f1 fd 48 10 0f    	vmovupd zmm1,ZMMWORD PTR [rdi]
  938390:	62 f1 fd 48 10 57 01 	vmovupd zmm2,ZMMWORD PTR [rdi+0x40]
  938397:	62 f1 fd 48 10 5f 02 	vmovupd zmm3,ZMMWORD PTR [rdi+0x80]
  93839e:	62 f1 fd 48 10 67 03 	vmovupd zmm4,ZMMWORD PTR [rdi+0xc0]
  9383a5:	62 f1 fd 48 28 e9    	vmovapd zmm5,zmm1
  9383ab:	62 f2 fd 48 7f ea    	vpermt2pd zmm5,zmm0,zmm2
  9383b1:	62 f1 fd 48 28 35 45 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff74a345]        # 82700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xfbb0>
  9383b8:	a3 74 ff 
  9383bb:	62 f2 cd 48 7f ca    	vpermt2pd zmm1,zmm6,zmm2
  9383c1:	62 f1 fd 48 28 d3    	vmovapd zmm2,zmm3
  9383c7:	62 f2 fd 48 7f d4    	vpermt2pd zmm2,zmm0,zmm4
  9383cd:	62 f2 cd 48 7f dc    	vpermt2pd zmm3,zmm6,zmm4
  9383d3:	62 f1 fd 48 10 67 04 	vmovupd zmm4,ZMMWORD PTR [rdi+0x100]
  9383da:	62 f1 fd 48 10 7f 05 	vmovupd zmm7,ZMMWORD PTR [rdi+0x140]
  9383e1:	62 f2 dd 48 77 c7    	vpermi2pd zmm0,zmm4,zmm7
  9383e7:	62 f2 cd 48 7f e7    	vpermt2pd zmm4,zmm6,zmm7
  9383ed:	62 f1 ed 48 58 f0    	vaddpd zmm6,zmm2,zmm0
  9383f3:	62 f1 d5 48 58 fe    	vaddpd zmm7,zmm5,zmm6
  9383f9:	62 71 e5 48 58 c4    	vaddpd zmm8,zmm3,zmm4
  9383ff:	62 51 f5 48 58 c8    	vaddpd zmm9,zmm1,zmm8
  938405:	62 72 fd 48 19 15 89 	vbroadcastsd zmm10,QWORD PTR [rip+0xffffffffff73c689]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  93840c:	c6 73 ff 
  93840f:	62 f2 ad 48 bc ee    	vfnmadd231pd zmm5,zmm10,zmm6
  938415:	62 f1 e5 48 5c dc    	vsubpd zmm3,zmm3,zmm4
  93841b:	62 f2 fd 48 19 25 fb 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff73c7fb]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  938422:	c7 73 ff 
  938425:	62 f1 e5 48 59 dc    	vmulpd zmm3,zmm3,zmm4
  93842b:	62 71 d5 48 58 e3    	vaddpd zmm12,zmm5,zmm3
  938431:	62 d2 bd 48 bc ca    	vfnmadd231pd zmm1,zmm8,zmm10
  938437:	62 f1 ed 48 5c c0    	vsubpd zmm0,zmm2,zmm0
  93843d:	62 f1 fd 48 59 c4    	vmulpd zmm0,zmm0,zmm4
  938443:	62 71 f5 48 5c f0    	vsubpd zmm14,zmm1,zmm0
  938449:	62 f1 d5 48 5c d3    	vsubpd zmm2,zmm5,zmm3
  93844f:	62 71 fd 48 58 d9    	vaddpd zmm11,zmm0,zmm1
  938455:	62 71 fd 48 10 3d 09 	vmovupd zmm15,ZMMWORD PTR [rip+0xffffffffff78e909]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  93845c:	e9 78 ff 
  93845f:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  938463:	62 f1 fd 48 28 df    	vmovapd zmm3,zmm7
  938469:	62 f2 85 48 7f dc    	vpermt2pd zmm3,zmm15,zmm4
  93846f:	62 e1 fd 48 10 05 2f 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff78e92f]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  938476:	e9 78 ff 
  938479:	62 f2 fd 40 7f fc    	vpermt2pd zmm7,zmm16,zmm4
  93847f:	62 d1 fd 48 28 ec    	vmovapd zmm5,zmm12
  938485:	62 f2 85 48 7f ec    	vpermt2pd zmm5,zmm15,zmm4
  93848b:	62 72 fd 40 7f e4    	vpermt2pd zmm12,zmm16,zmm4
  938491:	62 f1 fd 48 28 ca    	vmovapd zmm1,zmm2
  938497:	62 f2 85 48 7f cc    	vpermt2pd zmm1,zmm15,zmm4
  93849d:	62 f2 fd 40 7f d4    	vpermt2pd zmm2,zmm16,zmm4
  9384a3:	62 a1 f5 00 57 c9    	vxorpd xmm17,xmm17,xmm17
  9384a9:	62 a2 85 48 7f c9    	vpermt2pd zmm17,zmm15,zmm17
  9384af:	62 a1 ed 00 57 d2    	vxorpd xmm18,xmm18,xmm18
  9384b5:	62 a2 fd 40 7f d2    	vpermt2pd zmm18,zmm16,zmm18
  9384bb:	62 e1 fd 48 10 1d 23 	vmovupd zmm19,ZMMWORD PTR [rip+0xffffffffff78e823]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  9384c2:	e8 78 ff 
  9384c5:	62 f1 fd 48 28 c3    	vmovapd zmm0,zmm3
  9384cb:	62 f2 e5 40 7f c1    	vpermt2pd zmm0,zmm19,zmm1
  9384d1:	62 e1 fd 48 10 25 4d 	vmovupd zmm20,ZMMWORD PTR [rip+0xffffffffff78e84d]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  9384d8:	e8 78 ff 
  9384db:	62 f2 dd 40 7f d9    	vpermt2pd zmm3,zmm20,zmm1
  9384e1:	62 f1 fd 48 28 cd    	vmovapd zmm1,zmm5
  9384e7:	62 b2 e5 40 7f c9    	vpermt2pd zmm1,zmm19,zmm17
  9384ed:	62 b2 dd 40 7f e9    	vpermt2pd zmm5,zmm20,zmm17
  9384f3:	62 71 fd 48 28 c7    	vmovapd zmm8,zmm7
  9384f9:	62 72 e5 40 7f c2    	vpermt2pd zmm8,zmm19,zmm2
  9384ff:	62 f2 dd 40 7f fa    	vpermt2pd zmm7,zmm20,zmm2
  938505:	62 d1 fd 48 28 d4    	vmovapd zmm2,zmm12
  93850b:	62 b2 e5 40 7f d2    	vpermt2pd zmm2,zmm19,zmm18
  938511:	62 32 dd 40 7f e2    	vpermt2pd zmm12,zmm20,zmm18
  938517:	62 f1 fd 48 15 f1    	vunpckhpd zmm6,zmm0,zmm1
  93851d:	62 71 e5 48 14 d5    	vunpcklpd zmm10,zmm3,zmm5
  938523:	62 f1 e5 48 15 dd    	vunpckhpd zmm3,zmm3,zmm5
  938529:	62 71 bd 48 14 ea    	vunpcklpd zmm13,zmm8,zmm2
  93852f:	62 f1 bd 48 15 ea    	vunpckhpd zmm5,zmm8,zmm2
  938535:	62 51 c5 48 14 c4    	vunpcklpd zmm8,zmm7,zmm12
  93853b:	62 d1 c5 48 15 d4    	vunpckhpd zmm2,zmm7,zmm12
  938541:	62 51 fd 48 28 e1    	vmovapd zmm12,zmm9
  938547:	62 72 85 48 7f e4    	vpermt2pd zmm12,zmm15,zmm4
  93854d:	62 72 fd 40 7f cc    	vpermt2pd zmm9,zmm16,zmm4
  938553:	62 c1 fd 48 28 ee    	vmovapd zmm21,zmm14
  938559:	62 e2 85 48 7f ec    	vpermt2pd zmm21,zmm15,zmm4
  93855f:	62 72 fd 40 7f f4    	vpermt2pd zmm14,zmm16,zmm4
  938565:	62 72 a5 48 77 fc    	vpermi2pd zmm15,zmm11,zmm4
  93856b:	62 72 fd 40 7f dc    	vpermt2pd zmm11,zmm16,zmm4
  938571:	62 d1 fd 48 28 e4    	vmovapd zmm4,zmm12
  938577:	62 d2 e5 40 7f e7    	vpermt2pd zmm4,zmm19,zmm15
  93857d:	62 52 dd 40 7f e7    	vpermt2pd zmm12,zmm20,zmm15
  938583:	62 b1 fd 48 28 fd    	vmovapd zmm7,zmm21
  938589:	62 b2 e5 40 7f f9    	vpermt2pd zmm7,zmm19,zmm17
  93858f:	62 a2 dd 40 7f e9    	vpermt2pd zmm21,zmm20,zmm17
  938595:	62 51 fd 48 28 f9    	vmovapd zmm15,zmm9
  93859b:	62 52 e5 40 7f fb    	vpermt2pd zmm15,zmm19,zmm11
  9385a1:	62 52 dd 40 7f cb    	vpermt2pd zmm9,zmm20,zmm11
  9385a7:	62 a2 8d 48 77 da    	vpermi2pd zmm19,zmm14,zmm18
  9385ad:	62 32 dd 40 7f f2    	vpermt2pd zmm14,zmm20,zmm18
  9385b3:	62 e1 dd 48 15 c7    	vunpckhpd zmm16,zmm4,zmm7
  9385b9:	62 a1 9d 48 14 cd    	vunpcklpd zmm17,zmm12,zmm21
  9385bf:	62 31 9d 48 15 e5    	vunpckhpd zmm12,zmm12,zmm21
  9385c5:	62 a1 85 48 14 d3    	vunpcklpd zmm18,zmm15,zmm19
  9385cb:	62 31 85 48 15 fb    	vunpckhpd zmm15,zmm15,zmm19
  9385d1:	62 51 b5 48 15 de    	vunpckhpd zmm11,zmm9,zmm14
  9385d7:	62 c1 b5 48 14 de    	vunpcklpd zmm19,zmm9,zmm14
  9385dd:	62 71 fd 48 10 72 08 	vmovupd zmm14,ZMMWORD PTR [rdx+0x200]
  9385e4:	62 e1 fd 48 10 62 09 	vmovupd zmm20,ZMMWORD PTR [rdx+0x240]
  9385eb:	62 51 95 48 59 ce    	vmulpd zmm9,zmm13,zmm14
  9385f1:	62 32 ed 40 bc cc    	vfnmadd231pd zmm9,zmm18,zmm20
  9385f7:	62 51 ed 40 59 f6    	vmulpd zmm14,zmm18,zmm14
  9385fd:	62 e1 fd 48 10 52 04 	vmovupd zmm18,ZMMWORD PTR [rdx+0x100]
  938604:	62 32 95 48 b8 f4    	vfmadd231pd zmm14,zmm13,zmm20
  93860a:	62 e1 fd 48 10 62 05 	vmovupd zmm20,ZMMWORD PTR [rdx+0x140]
  938611:	62 31 ad 48 59 ea    	vmulpd zmm13,zmm10,zmm18
  938617:	62 32 f5 40 bc ec    	vfnmadd231pd zmm13,zmm17,zmm20
  93861d:	62 a1 f5 40 59 ca    	vmulpd zmm17,zmm17,zmm18
  938623:	62 e1 fd 48 10 52 0c 	vmovupd zmm18,ZMMWORD PTR [rdx+0x300]
  93862a:	62 a2 ad 48 b8 cc    	vfmadd231pd zmm17,zmm10,zmm20
  938630:	62 71 fd 48 10 52 0d 	vmovupd zmm10,ZMMWORD PTR [rdx+0x340]
  938637:	62 a1 bd 48 59 e2    	vmulpd zmm20,zmm8,zmm18
  93863d:	62 c2 e5 40 bc e2    	vfnmadd231pd zmm20,zmm19,zmm10
  938643:	62 a1 e5 40 59 d2    	vmulpd zmm18,zmm19,zmm18
  938649:	62 e1 fd 48 10 5a 02 	vmovupd zmm19,ZMMWORD PTR [rdx+0x80]
  938650:	62 c2 bd 48 b8 d2    	vfmadd231pd zmm18,zmm8,zmm10
  938656:	62 71 fd 48 10 42 03 	vmovupd zmm8,ZMMWORD PTR [rdx+0xc0]
  93865d:	62 31 cd 48 59 d3    	vmulpd zmm10,zmm6,zmm19
  938663:	62 52 fd 40 bc d0    	vfnmadd231pd zmm10,zmm16,zmm8
  938669:	62 a1 fd 40 59 c3    	vmulpd zmm16,zmm16,zmm19
  93866f:	62 e1 fd 48 10 5a 0a 	vmovupd zmm19,ZMMWORD PTR [rdx+0x280]
  938676:	62 c2 cd 48 b8 c0    	vfmadd231pd zmm16,zmm6,zmm8
  93867c:	62 f1 fd 48 10 72 0b 	vmovupd zmm6,ZMMWORD PTR [rdx+0x2c0]
  938683:	62 31 d5 48 59 c3    	vmulpd zmm8,zmm5,zmm19
  938689:	62 72 85 48 bc c6    	vfnmadd231pd zmm8,zmm15,zmm6
  93868f:	62 31 85 48 59 fb    	vmulpd zmm15,zmm15,zmm19
  938695:	62 e1 fd 48 10 5a 06 	vmovupd zmm19,ZMMWORD PTR [rdx+0x180]
  93869c:	62 72 d5 48 b8 fe    	vfmadd231pd zmm15,zmm5,zmm6
  9386a2:	62 f1 fd 48 10 6a 07 	vmovupd zmm5,ZMMWORD PTR [rdx+0x1c0]
  9386a9:	62 b1 e5 48 59 f3    	vmulpd zmm6,zmm3,zmm19
  9386af:	62 f2 9d 48 bc f5    	vfnmadd231pd zmm6,zmm12,zmm5
  9386b5:	62 31 9d 48 59 e3    	vmulpd zmm12,zmm12,zmm19
  9386bb:	62 e1 fd 48 10 5a 0e 	vmovupd zmm19,ZMMWORD PTR [rdx+0x380]
  9386c2:	62 72 e5 48 b8 e5    	vfmadd231pd zmm12,zmm3,zmm5
  9386c8:	62 f1 fd 48 10 5a 0f 	vmovupd zmm3,ZMMWORD PTR [rdx+0x3c0]
  9386cf:	62 b1 ed 48 59 eb    	vmulpd zmm5,zmm2,zmm19
  9386d5:	62 f2 a5 48 bc eb    	vfnmadd231pd zmm5,zmm11,zmm3
  9386db:	62 31 a5 48 59 db    	vmulpd zmm11,zmm11,zmm19
  9386e1:	62 72 ed 48 b8 db    	vfmadd231pd zmm11,zmm2,zmm3
  9386e7:	62 f1 fd 48 14 c1    	vunpcklpd zmm0,zmm0,zmm1
  9386ed:	62 f1 dd 48 14 cf    	vunpcklpd zmm1,zmm4,zmm7
  9386f3:	62 d1 fd 48 58 d1    	vaddpd zmm2,zmm0,zmm9
  9386f9:	62 d1 fd 48 5c c1    	vsubpd zmm0,zmm0,zmm9
  9386ff:	62 b1 f5 40 58 da    	vaddpd zmm3,zmm17,zmm18
  938705:	62 b1 f5 40 5c e2    	vsubpd zmm4,zmm17,zmm18
  93870b:	62 d1 ad 48 58 f8    	vaddpd zmm7,zmm10,zmm8
  938711:	62 51 ad 48 5c c0    	vsubpd zmm8,zmm10,zmm8
  938717:	62 51 fd 40 58 cf    	vaddpd zmm9,zmm16,zmm15
  93871d:	62 51 fd 40 5c d7    	vsubpd zmm10,zmm16,zmm15
  938723:	62 51 9d 48 58 fb    	vaddpd zmm15,zmm12,zmm11
  938729:	62 51 9d 48 5c db    	vsubpd zmm11,zmm12,zmm11
  93872f:	62 71 cd 48 58 e5    	vaddpd zmm12,zmm6,zmm5
  938735:	62 f1 cd 48 5c ed    	vsubpd zmm5,zmm6,zmm5
  93873b:	62 f1 8d 48 58 f1    	vaddpd zmm6,zmm14,zmm1
  938741:	62 d1 f5 48 5c ce    	vsubpd zmm1,zmm1,zmm14
  938747:	62 31 95 48 58 f4    	vaddpd zmm14,zmm13,zmm20
  93874d:	62 51 dd 40 5c ed    	vsubpd zmm13,zmm20,zmm13
  938753:	62 c1 bd 48 58 c2    	vaddpd zmm16,zmm8,zmm10
  938759:	62 51 ad 48 5c c0    	vsubpd zmm8,zmm10,zmm8
  93875f:	62 71 a5 48 5c d5    	vsubpd zmm10,zmm11,zmm5
  938765:	62 d1 d5 48 58 eb    	vaddpd zmm5,zmm5,zmm11
  93876b:	62 72 fd 48 19 1d 2b 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff73c72b]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  938772:	c7 73 ff 
  938775:	62 c1 fd 40 59 c3    	vmulpd zmm16,zmm16,zmm11
  93877b:	62 51 ad 48 59 d3    	vmulpd zmm10,zmm10,zmm11
  938781:	62 51 bd 48 59 c3    	vmulpd zmm8,zmm8,zmm11
  938787:	62 d1 d5 48 59 eb    	vmulpd zmm5,zmm5,zmm11
  93878d:	62 51 ed 48 58 de    	vaddpd zmm11,zmm2,zmm14
  938793:	62 d1 ed 48 5c d6    	vsubpd zmm2,zmm2,zmm14
  938799:	62 51 b5 48 58 f7    	vaddpd zmm14,zmm9,zmm15
  93879f:	62 51 b5 48 5c cf    	vsubpd zmm9,zmm9,zmm15
  9387a5:	62 71 e5 48 58 fe    	vaddpd zmm15,zmm3,zmm6
  9387ab:	62 f1 cd 48 5c db    	vsubpd zmm3,zmm6,zmm3
  9387b1:	62 d1 c5 48 58 f4    	vaddpd zmm6,zmm7,zmm12
  9387b7:	62 f1 9d 48 5c ff    	vsubpd zmm7,zmm12,zmm7
  9387bd:	62 71 fd 48 58 e4    	vaddpd zmm12,zmm0,zmm4
  9387c3:	62 f1 fd 48 5c c4    	vsubpd zmm0,zmm0,zmm4
  9387c9:	62 f1 bd 48 5c e5    	vsubpd zmm4,zmm8,zmm5
  9387cf:	62 f1 bd 48 58 ed    	vaddpd zmm5,zmm8,zmm5
  9387d5:	62 71 95 48 58 c1    	vaddpd zmm8,zmm13,zmm1
  9387db:	62 d1 f5 48 5c cd    	vsubpd zmm1,zmm1,zmm13
  9387e1:	62 51 fd 40 58 ea    	vaddpd zmm13,zmm16,zmm10
  9387e7:	62 31 ad 48 5c d0    	vsubpd zmm10,zmm10,zmm16
  9387ed:	62 c1 9d 48 58 c5    	vaddpd zmm16,zmm12,zmm13
  9387f3:	62 51 9d 48 5c e5    	vsubpd zmm12,zmm12,zmm13
  9387f9:	62 71 bd 48 58 ec    	vaddpd zmm13,zmm8,zmm4
  9387ff:	62 f1 bd 48 5c e4    	vsubpd zmm4,zmm8,zmm4
  938805:	62 51 ed 48 58 c1    	vaddpd zmm8,zmm2,zmm9
  93880b:	62 d1 ed 48 5c d1    	vsubpd zmm2,zmm2,zmm9
  938811:	62 71 e5 48 58 cf    	vaddpd zmm9,zmm3,zmm7
  938817:	62 f1 e5 48 5c df    	vsubpd zmm3,zmm3,zmm7
  93881d:	62 f1 fd 48 58 fd    	vaddpd zmm7,zmm0,zmm5
  938823:	62 f1 fd 48 5c c5    	vsubpd zmm0,zmm0,zmm5
  938829:	62 d1 f5 48 58 ea    	vaddpd zmm5,zmm1,zmm10
  93882f:	62 d1 f5 48 5c ca    	vsubpd zmm1,zmm1,zmm10
  938835:	62 71 a5 48 5c d6    	vsubpd zmm10,zmm11,zmm6
  93883b:	62 f1 a5 48 58 f6    	vaddpd zmm6,zmm11,zmm6
  938841:	62 51 85 48 5c de    	vsubpd zmm11,zmm15,zmm14
  938847:	62 51 85 48 58 f6    	vaddpd zmm14,zmm15,zmm14
  93884d:	62 71 fd 48 28 3d e9 	vmovapd zmm15,ZMMWORD PTR [rip+0xffffffffff749ee9]        # 82740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xfbf0>
  938854:	9e 74 ff 
  938857:	62 d2 85 48 7f f6    	vpermt2pd zmm6,zmm15,zmm14
  93885d:	62 c2 85 48 7f c5    	vpermt2pd zmm16,zmm15,zmm13
  938863:	62 52 85 48 7f c1    	vpermt2pd zmm8,zmm15,zmm9
  938869:	62 f2 85 48 7f fd    	vpermt2pd zmm7,zmm15,zmm5
  93886f:	62 52 85 48 7f d3    	vpermt2pd zmm10,zmm15,zmm11
  938875:	62 72 85 48 7f e4    	vpermt2pd zmm12,zmm15,zmm4
  93887b:	62 f2 85 48 7f d3    	vpermt2pd zmm2,zmm15,zmm3
  938881:	62 f2 85 48 7f c1    	vpermt2pd zmm0,zmm15,zmm1
  938887:	62 f3 7d 48 19 76 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm6,0x2
  93888e:	02 
  93888f:	c5 fd 11 36          	vmovupd YMMWORD PTR [rsi],ymm6
  938893:	62 e3 7d 48 19 46 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm16,0x2
  93889a:	02 
  93889b:	62 e1 fd 28 11 86 30 	vmovupd YMMWORD PTR [rsi+0x30],ymm16
  9388a2:	00 00 00 
  9388a5:	62 73 7d 48 19 46 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm8,0x2
  9388ac:	02 
  9388ad:	c5 7d 11 46 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm8
  9388b2:	62 f3 7d 48 19 7e 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm7,0x2
  9388b9:	02 
  9388ba:	c5 fd 11 be 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm7
  9388c1:	00 
  9388c2:	62 73 7d 48 19 56 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm10,0x2
  9388c9:	02 
  9388ca:	c5 7d 11 96 c0 00 00 	vmovupd YMMWORD PTR [rsi+0xc0],ymm10
  9388d1:	00 
  9388d2:	62 73 7d 48 19 66 11 	vextractf32x4 XMMWORD PTR [rsi+0x110],zmm12,0x2
  9388d9:	02 
  9388da:	c5 7d 11 a6 f0 00 00 	vmovupd YMMWORD PTR [rsi+0xf0],ymm12
  9388e1:	00 
  9388e2:	62 f3 7d 48 19 56 14 	vextractf32x4 XMMWORD PTR [rsi+0x140],zmm2,0x2
  9388e9:	02 
  9388ea:	c5 fd 11 96 20 01 00 	vmovupd YMMWORD PTR [rsi+0x120],ymm2
  9388f1:	00 
  9388f2:	62 f3 7d 48 19 46 17 	vextractf32x4 XMMWORD PTR [rsi+0x170],zmm0,0x2
  9388f9:	02 
  9388fa:	c5 fd 11 86 50 01 00 	vmovupd YMMWORD PTR [rsi+0x150],ymm0
  938901:	00 
  938902:	c5 f8 77             	vzeroupper
  938905:	c3                   	ret
