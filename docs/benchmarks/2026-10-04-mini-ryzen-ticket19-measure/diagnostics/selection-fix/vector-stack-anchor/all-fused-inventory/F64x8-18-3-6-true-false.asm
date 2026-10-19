
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000968500 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  968500:	62 f1 fd 48 10 1f    	vmovupd zmm3,ZMMWORD PTR [rdi]
  968506:	c5 fd 10 47 40       	vmovupd ymm0,YMMWORD PTR [rdi+0x40]
  96850b:	62 f1 fd 48 28 2d 2b 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff71dc2b]        # 86140 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x135f0>
  968512:	dc 71 ff 
  968515:	62 f1 fd 48 28 f3    	vmovapd zmm6,zmm3
  96851b:	62 f2 d5 48 7f f0    	vpermt2pd zmm6,zmm5,zmm0
  968521:	62 f1 fd 48 28 0d 55 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff71dc55]        # 86180 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13630>
  968528:	dc 71 ff 
  96852b:	62 f2 f5 48 7f d8    	vpermt2pd zmm3,zmm1,zmm0
  968531:	62 f1 fd 48 10 bf 60 	vmovupd zmm7,ZMMWORD PTR [rdi+0x60]
  968538:	00 00 00 
  96853b:	c5 fd 10 87 a0 00 00 	vmovupd ymm0,YMMWORD PTR [rdi+0xa0]
  968542:	00 
  968543:	62 71 fd 48 28 c7    	vmovapd zmm8,zmm7
  968549:	62 72 d5 48 7f c0    	vpermt2pd zmm8,zmm5,zmm0
  96854f:	62 f2 f5 48 7f f8    	vpermt2pd zmm7,zmm1,zmm0
  968555:	62 71 fd 48 10 4f 03 	vmovupd zmm9,ZMMWORD PTR [rdi+0xc0]
  96855c:	c5 fd 10 87 00 01 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x100]
  968563:	00 
  968564:	62 f2 b5 48 77 e8    	vpermi2pd zmm5,zmm9,zmm0
  96856a:	62 72 f5 48 7f c8    	vpermt2pd zmm9,zmm1,zmm0
  968570:	62 d1 c5 48 58 c1    	vaddpd zmm0,zmm7,zmm9
  968576:	62 f1 e5 48 58 e0    	vaddpd zmm4,zmm3,zmm0
  96857c:	62 71 bd 48 58 d5    	vaddpd zmm10,zmm8,zmm5
  968582:	62 f2 fd 48 19 0d 0c 	vbroadcastsd zmm1,QWORD PTR [rip+0xffffffffff70c50c]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  968589:	c5 70 ff 
  96858c:	62 d1 cd 48 58 d2    	vaddpd zmm2,zmm6,zmm10
  968592:	62 f2 f5 48 bc d8    	vfnmadd231pd zmm3,zmm1,zmm0
  968598:	62 f2 fd 48 19 05 7e 	vbroadcastsd zmm0,QWORD PTR [rip+0xffffffffff70c67e]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  96859f:	c6 70 ff 
  9685a2:	62 f1 bd 48 5c ed    	vsubpd zmm5,zmm8,zmm5
  9685a8:	62 71 d5 48 59 d8    	vmulpd zmm11,zmm5,zmm0
  9685ae:	62 51 e5 48 58 c3    	vaddpd zmm8,zmm3,zmm11
  9685b4:	62 d2 f5 48 bc f2    	vfnmadd231pd zmm6,zmm1,zmm10
  9685ba:	62 d1 c5 48 5c e9    	vsubpd zmm5,zmm7,zmm9
  9685c0:	62 f1 d5 48 59 f8    	vmulpd zmm7,zmm5,zmm0
  9685c6:	62 f1 cd 48 5c ef    	vsubpd zmm5,zmm6,zmm7
  9685cc:	62 d1 e5 48 5c db    	vsubpd zmm3,zmm3,zmm11
  9685d2:	62 f1 c5 48 58 fe    	vaddpd zmm7,zmm7,zmm6
  9685d8:	62 71 fd 48 10 15 86 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff75e786]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  9685df:	e7 75 ff 
  9685e2:	c5 c9 57 f6          	vxorpd xmm6,xmm6,xmm6
  9685e6:	62 71 fd 48 28 cc    	vmovapd zmm9,zmm4
  9685ec:	62 72 ad 48 7f ce    	vpermt2pd zmm9,zmm10,zmm6
  9685f2:	62 71 fd 48 10 1d ac 	vmovupd zmm11,ZMMWORD PTR [rip+0xffffffffff75e7ac]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  9685f9:	e7 75 ff 
  9685fc:	62 f2 a5 48 7f e6    	vpermt2pd zmm4,zmm11,zmm6
  968602:	62 51 fd 48 28 e0    	vmovapd zmm12,zmm8
  968608:	62 72 ad 48 7f e6    	vpermt2pd zmm12,zmm10,zmm6
  96860e:	62 72 a5 48 7f c6    	vpermt2pd zmm8,zmm11,zmm6
  968614:	62 71 fd 48 28 eb    	vmovapd zmm13,zmm3
  96861a:	62 72 ad 48 7f ee    	vpermt2pd zmm13,zmm10,zmm6
  968620:	62 f2 a5 48 7f de    	vpermt2pd zmm3,zmm11,zmm6
  968626:	c4 41 09 57 f6       	vxorpd xmm14,xmm14,xmm14
  96862b:	62 52 ad 48 7f f6    	vpermt2pd zmm14,zmm10,zmm14
  968631:	c4 41 01 57 ff       	vxorpd xmm15,xmm15,xmm15
  968636:	62 52 a5 48 7f ff    	vpermt2pd zmm15,zmm11,zmm15
  96863c:	62 e1 fd 48 10 05 a2 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff75e6a2]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  968643:	e6 75 ff 
  968646:	62 e1 fd 48 28 ca    	vmovapd zmm17,zmm2
  96864c:	62 e2 ad 48 7f ce    	vpermt2pd zmm17,zmm10,zmm6
  968652:	62 f2 a5 48 7f d6    	vpermt2pd zmm2,zmm11,zmm6
  968658:	62 e1 fd 48 28 d5    	vmovapd zmm18,zmm5
  96865e:	62 e2 ad 48 7f d6    	vpermt2pd zmm18,zmm10,zmm6
  968664:	62 f2 a5 48 7f ee    	vpermt2pd zmm5,zmm11,zmm6
  96866a:	62 72 c5 48 77 d6    	vpermi2pd zmm10,zmm7,zmm6
  968670:	62 f2 a5 48 7f fe    	vpermt2pd zmm7,zmm11,zmm6
  968676:	62 d1 fd 48 28 f1    	vmovapd zmm6,zmm9
  96867c:	62 d2 fd 40 7f f5    	vpermt2pd zmm6,zmm16,zmm13
  968682:	62 71 fd 48 10 1d 9c 	vmovupd zmm11,ZMMWORD PTR [rip+0xffffffffff75e69c]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  968689:	e6 75 ff 
  96868c:	62 52 a5 48 7f cd    	vpermt2pd zmm9,zmm11,zmm13
  968692:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  968698:	62 52 fd 40 7f ee    	vpermt2pd zmm13,zmm16,zmm14
  96869e:	62 52 a5 48 7f e6    	vpermt2pd zmm12,zmm11,zmm14
  9686a4:	62 f2 fd 40 7f e3    	vpermt2pd zmm4,zmm16,zmm3
  9686aa:	62 52 fd 40 7f c7    	vpermt2pd zmm8,zmm16,zmm15
  9686b0:	62 d1 cd 48 14 dd    	vunpcklpd zmm3,zmm6,zmm13
  9686b6:	62 d1 cd 48 15 f5    	vunpckhpd zmm6,zmm6,zmm13
  9686bc:	62 51 b5 48 14 ec    	vunpcklpd zmm13,zmm9,zmm12
  9686c2:	62 51 b5 48 15 cc    	vunpckhpd zmm9,zmm9,zmm12
  9686c8:	62 51 dd 48 14 e0    	vunpcklpd zmm12,zmm4,zmm8
  9686ce:	62 51 dd 48 15 c0    	vunpckhpd zmm8,zmm4,zmm8
  9686d4:	62 a1 fd 48 28 d9    	vmovapd zmm19,zmm17
  9686da:	62 c2 fd 40 7f da    	vpermt2pd zmm19,zmm16,zmm10
  9686e0:	62 c2 a5 48 7f ca    	vpermt2pd zmm17,zmm11,zmm10
  9686e6:	62 31 fd 48 28 d2    	vmovapd zmm10,zmm18
  9686ec:	62 52 fd 40 7f d6    	vpermt2pd zmm10,zmm16,zmm14
  9686f2:	62 c2 a5 48 7f d6    	vpermt2pd zmm18,zmm11,zmm14
  9686f8:	62 f2 fd 40 7f d7    	vpermt2pd zmm2,zmm16,zmm7
  9686fe:	62 d2 fd 40 7f ef    	vpermt2pd zmm5,zmm16,zmm15
  968704:	62 d1 e5 40 14 e2    	vunpcklpd zmm4,zmm19,zmm10
  96870a:	62 d1 e5 40 15 fa    	vunpckhpd zmm7,zmm19,zmm10
  968710:	62 31 f5 40 14 d2    	vunpcklpd zmm10,zmm17,zmm18
  968716:	62 31 f5 40 15 da    	vunpckhpd zmm11,zmm17,zmm18
  96871c:	62 71 ed 48 14 f5    	vunpcklpd zmm14,zmm2,zmm5
  968722:	62 f1 ed 48 15 ed    	vunpckhpd zmm5,zmm2,zmm5
  968728:	62 71 fd 48 10 7a 02 	vmovupd zmm15,ZMMWORD PTR [rdx+0x80]
  96872f:	62 e1 fd 48 10 42 03 	vmovupd zmm16,ZMMWORD PTR [rdx+0xc0]
  968736:	62 e1 fd 48 10 4a 04 	vmovupd zmm17,ZMMWORD PTR [rdx+0x100]
  96873d:	62 e1 fd 48 10 52 05 	vmovupd zmm18,ZMMWORD PTR [rdx+0x140]
  968744:	62 b1 95 48 59 d1    	vmulpd zmm2,zmm13,zmm17
  96874a:	62 b2 ad 48 bc d2    	vfnmadd231pd zmm2,zmm10,zmm18
  968750:	62 31 ad 48 59 d1    	vmulpd zmm10,zmm10,zmm17
  968756:	62 e1 fd 48 10 4a 08 	vmovupd zmm17,ZMMWORD PTR [rdx+0x200]
  96875d:	62 32 95 48 b8 d2    	vfmadd231pd zmm10,zmm13,zmm18
  968763:	62 71 fd 48 10 6a 09 	vmovupd zmm13,ZMMWORD PTR [rdx+0x240]
  96876a:	62 a1 9d 48 59 d1    	vmulpd zmm18,zmm12,zmm17
  968770:	62 c2 8d 48 bc d5    	vfnmadd231pd zmm18,zmm14,zmm13
  968776:	62 31 8d 48 59 f1    	vmulpd zmm14,zmm14,zmm17
  96877c:	62 e1 fd 48 10 4a 06 	vmovupd zmm17,ZMMWORD PTR [rdx+0x180]
  968783:	62 52 9d 48 b8 f5    	vfmadd231pd zmm14,zmm12,zmm13
  968789:	62 71 fd 48 10 62 07 	vmovupd zmm12,ZMMWORD PTR [rdx+0x1c0]
  968790:	62 31 b5 48 59 e9    	vmulpd zmm13,zmm9,zmm17
  968796:	62 52 a5 48 bc ec    	vfnmadd231pd zmm13,zmm11,zmm12
  96879c:	62 31 a5 48 59 d9    	vmulpd zmm11,zmm11,zmm17
  9687a2:	62 e1 fd 48 10 4a 0a 	vmovupd zmm17,ZMMWORD PTR [rdx+0x280]
  9687a9:	62 52 b5 48 b8 dc    	vfmadd231pd zmm11,zmm9,zmm12
  9687af:	62 71 fd 48 10 4a 0b 	vmovupd zmm9,ZMMWORD PTR [rdx+0x2c0]
  9687b6:	62 31 bd 48 59 e1    	vmulpd zmm12,zmm8,zmm17
  9687bc:	62 52 d5 48 bc e1    	vfnmadd231pd zmm12,zmm5,zmm9
  9687c2:	62 a1 d5 48 59 c9    	vmulpd zmm17,zmm5,zmm17
  9687c8:	62 a1 ed 48 58 da    	vaddpd zmm19,zmm2,zmm18
  9687ce:	62 c2 bd 48 b8 c9    	vfmadd231pd zmm17,zmm8,zmm9
  9687d4:	62 b1 e5 48 58 eb    	vaddpd zmm5,zmm3,zmm19
  9687da:	62 51 cd 48 59 c7    	vmulpd zmm8,zmm6,zmm15
  9687e0:	62 32 c5 48 bc c0    	vfnmadd231pd zmm8,zmm7,zmm16
  9687e6:	62 d1 c5 48 59 ff    	vmulpd zmm7,zmm7,zmm15
  9687ec:	62 51 9d 48 58 c8    	vaddpd zmm9,zmm12,zmm8
  9687f2:	62 b2 cd 48 b8 f8    	vfmadd231pd zmm7,zmm6,zmm16
  9687f8:	62 d1 95 48 58 f1    	vaddpd zmm6,zmm13,zmm9
  9687fe:	62 51 ad 48 58 fe    	vaddpd zmm15,zmm10,zmm14
  968804:	62 e2 f5 48 ac db    	vfnmadd213pd zmm19,zmm1,zmm3
  96880a:	62 f1 85 48 58 dc    	vaddpd zmm3,zmm15,zmm4
  968810:	62 52 f5 48 bc e9    	vfnmadd231pd zmm13,zmm1,zmm9
  968816:	62 71 f5 40 58 cf    	vaddpd zmm9,zmm17,zmm7
  96881c:	62 72 f5 48 ac fc    	vfnmadd213pd zmm15,zmm1,zmm4
  968822:	62 d1 a5 48 58 e1    	vaddpd zmm4,zmm11,zmm9
  968828:	62 72 b5 48 bc d9    	vfnmadd231pd zmm11,zmm9,zmm1
  96882e:	62 d1 ad 48 5c ce    	vsubpd zmm1,zmm10,zmm14
  968834:	62 f1 f5 40 5c ff    	vsubpd zmm7,zmm17,zmm7
  96883a:	62 b1 ed 48 5c d2    	vsubpd zmm2,zmm2,zmm18
  968840:	62 51 9d 48 5c c0    	vsubpd zmm8,zmm12,zmm8
  968846:	62 f1 f5 48 59 c8    	vmulpd zmm1,zmm1,zmm0
  96884c:	62 f1 c5 48 59 f8    	vmulpd zmm7,zmm7,zmm0
  968852:	62 f1 ed 48 59 d0    	vmulpd zmm2,zmm2,zmm0
  968858:	62 f1 bd 48 59 c0    	vmulpd zmm0,zmm8,zmm0
  96885e:	62 71 e5 40 58 c1    	vaddpd zmm8,zmm19,zmm1
  968864:	62 f1 e5 40 5c c9    	vsubpd zmm1,zmm19,zmm1
  96886a:	62 71 95 48 58 cf    	vaddpd zmm9,zmm13,zmm7
  968870:	62 f1 95 48 5c ff    	vsubpd zmm7,zmm13,zmm7
  968876:	62 71 85 48 5c d2    	vsubpd zmm10,zmm15,zmm2
  96887c:	62 d1 ed 48 58 d7    	vaddpd zmm2,zmm2,zmm15
  968882:	62 71 a5 48 5c e0    	vsubpd zmm12,zmm11,zmm0
  968888:	62 f1 a5 48 58 c0    	vaddpd zmm0,zmm11,zmm0
  96888e:	62 51 bd 48 5c d9    	vsubpd zmm11,zmm8,zmm9
  968894:	62 51 bd 48 58 c1    	vaddpd zmm8,zmm8,zmm9
  96889a:	62 51 ad 48 5c cc    	vsubpd zmm9,zmm10,zmm12
  9688a0:	62 51 ad 48 58 d4    	vaddpd zmm10,zmm10,zmm12
  9688a6:	62 71 f5 48 58 e7    	vaddpd zmm12,zmm1,zmm7
  9688ac:	62 f1 f5 48 5c cf    	vsubpd zmm1,zmm1,zmm7
  9688b2:	62 f1 ed 48 58 f8    	vaddpd zmm7,zmm2,zmm0
  9688b8:	62 f1 ed 48 5c c0    	vsubpd zmm0,zmm2,zmm0
  9688be:	62 f1 e5 48 5c d4    	vsubpd zmm2,zmm3,zmm4
  9688c4:	62 f1 e5 48 58 dc    	vaddpd zmm3,zmm3,zmm4
  9688ca:	62 f1 d5 48 5c e6    	vsubpd zmm4,zmm5,zmm6
  9688d0:	62 f1 d5 48 58 ee    	vaddpd zmm5,zmm5,zmm6
  9688d6:	62 f1 fd 48 28 35 e0 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff71d8e0]        # 861c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13670>
  9688dd:	d8 71 ff 
  9688e0:	62 f2 cd 48 7f dd    	vpermt2pd zmm3,zmm6,zmm5
  9688e6:	62 52 cd 48 7f cb    	vpermt2pd zmm9,zmm6,zmm11
  9688ec:	62 d2 cd 48 7f fc    	vpermt2pd zmm7,zmm6,zmm12
  9688f2:	62 f2 cd 48 7f d4    	vpermt2pd zmm2,zmm6,zmm4
  9688f8:	62 52 cd 48 7f d0    	vpermt2pd zmm10,zmm6,zmm8
  9688fe:	62 f2 cd 48 7f c1    	vpermt2pd zmm0,zmm6,zmm1
  968904:	62 f3 7d 48 19 5e 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm3,0x2
  96890b:	02 
  96890c:	c5 fd 11 1e          	vmovupd YMMWORD PTR [rsi],ymm3
  968910:	62 73 7d 48 19 4e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm9,0x2
  968917:	02 
  968918:	c5 7d 11 4e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm9
  96891d:	62 f3 7d 48 19 7e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm7,0x2
  968924:	02 
  968925:	c5 fd 11 7e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm7
  96892a:	62 f3 7d 48 19 56 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm2,0x2
  968931:	02 
  968932:	c5 fd 11 96 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm2
  968939:	00 
  96893a:	62 73 7d 48 19 56 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm10,0x2
  968941:	02 
  968942:	c5 7d 11 96 c0 00 00 	vmovupd YMMWORD PTR [rsi+0xc0],ymm10
  968949:	00 
  96894a:	62 f3 7d 48 19 46 11 	vextractf32x4 XMMWORD PTR [rsi+0x110],zmm0,0x2
  968951:	02 
  968952:	c5 fd 11 86 f0 00 00 	vmovupd YMMWORD PTR [rsi+0xf0],ymm0
  968959:	00 
  96895a:	c5 f8 77             	vzeroupper
  96895d:	c3                   	ret
