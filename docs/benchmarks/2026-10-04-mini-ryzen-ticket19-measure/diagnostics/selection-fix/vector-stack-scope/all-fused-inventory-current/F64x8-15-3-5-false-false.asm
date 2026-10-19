
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000979300 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  979300:	62 f1 fd 48 10 07    	vmovupd zmm0,ZMMWORD PTR [rdi]
  979306:	c5 f9 10 4f 40       	vmovupd xmm1,XMMWORD PTR [rdi+0x40]
  97930b:	62 f1 fd 48 28 15 6b 	vmovapd zmm2,ZMMWORD PTR [rip+0xffffffffff70e36b]        # 87680 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14b30>
  979312:	e3 70 ff 
  979315:	62 f1 fd 48 28 d8    	vmovapd zmm3,zmm0
  97931b:	62 f2 ed 48 7f d9    	vpermt2pd zmm3,zmm2,zmm1
  979321:	62 f1 fd 48 28 25 95 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff70e395]        # 876c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14b70>
  979328:	e3 70 ff 
  97932b:	62 f2 dd 48 7f c1    	vpermt2pd zmm0,zmm4,zmm1
  979331:	62 f1 fd 48 10 af 50 	vmovupd zmm5,ZMMWORD PTR [rdi+0x50]
  979338:	00 00 00 
  97933b:	c5 f9 10 8f 90 00 00 	vmovupd xmm1,XMMWORD PTR [rdi+0x90]
  979342:	00 
  979343:	62 f1 fd 48 28 f5    	vmovapd zmm6,zmm5
  979349:	62 f2 ed 48 7f f1    	vpermt2pd zmm6,zmm2,zmm1
  97934f:	62 f2 dd 48 7f e9    	vpermt2pd zmm5,zmm4,zmm1
  979355:	62 f1 fd 48 10 bf a0 	vmovupd zmm7,ZMMWORD PTR [rdi+0xa0]
  97935c:	00 00 00 
  97935f:	c5 f9 10 8f e0 00 00 	vmovupd xmm1,XMMWORD PTR [rdi+0xe0]
  979366:	00 
  979367:	62 f2 c5 48 77 d1    	vpermi2pd zmm2,zmm7,zmm1
  97936d:	62 f2 dd 48 7f f9    	vpermt2pd zmm7,zmm4,zmm1
  979373:	62 f1 cd 48 58 e2    	vaddpd zmm4,zmm6,zmm2
  979379:	62 71 e5 48 58 c4    	vaddpd zmm8,zmm3,zmm4
  97937f:	62 71 d5 48 58 cf    	vaddpd zmm9,zmm5,zmm7
  979385:	62 72 fd 48 19 15 09 	vbroadcastsd zmm10,QWORD PTR [rip+0xffffffffff6fb709]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  97938c:	b7 6f ff 
  97938f:	62 d1 fd 48 58 c9    	vaddpd zmm1,zmm0,zmm9
  979395:	62 f2 ad 48 bc dc    	vfnmadd231pd zmm3,zmm10,zmm4
  97939b:	62 f2 fd 48 19 25 7b 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff6fb87b]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  9793a2:	b8 6f ff 
  9793a5:	62 f1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm7
  9793ab:	62 f1 d5 48 59 ec    	vmulpd zmm5,zmm5,zmm4
  9793b1:	62 f1 e5 48 58 fd    	vaddpd zmm7,zmm3,zmm5
  9793b7:	62 d2 b5 48 bc c2    	vfnmadd231pd zmm0,zmm9,zmm10
  9793bd:	62 f1 cd 48 5c d2    	vsubpd zmm2,zmm6,zmm2
  9793c3:	62 f1 ed 48 59 e4    	vmulpd zmm4,zmm2,zmm4
  9793c9:	62 f1 fd 48 5c d4    	vsubpd zmm2,zmm0,zmm4
  9793cf:	62 f1 e5 48 5c dd    	vsubpd zmm3,zmm3,zmm5
  9793d5:	62 f1 dd 48 58 e0    	vaddpd zmm4,zmm4,zmm0
  9793db:	62 f1 fd 48 10 2d 83 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff74d983]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  9793e2:	d9 74 ff 
  9793e5:	c5 c9 57 f6          	vxorpd xmm6,xmm6,xmm6
  9793e9:	62 51 fd 48 28 c8    	vmovapd zmm9,zmm8
  9793ef:	62 72 d5 48 7f ce    	vpermt2pd zmm9,zmm5,zmm6
  9793f5:	62 71 fd 48 10 15 a9 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff74d9a9]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  9793fc:	d9 74 ff 
  9793ff:	62 72 ad 48 7f c6    	vpermt2pd zmm8,zmm10,zmm6
  979405:	62 71 fd 48 28 df    	vmovapd zmm11,zmm7
  97940b:	62 72 d5 48 7f de    	vpermt2pd zmm11,zmm5,zmm6
  979411:	62 f2 ad 48 7f fe    	vpermt2pd zmm7,zmm10,zmm6
  979417:	62 f1 fd 48 28 c3    	vmovapd zmm0,zmm3
  97941d:	62 f2 d5 48 7f c6    	vpermt2pd zmm0,zmm5,zmm6
  979423:	62 f2 ad 48 7f de    	vpermt2pd zmm3,zmm10,zmm6
  979429:	c4 41 19 57 e4       	vxorpd xmm12,xmm12,xmm12
  97942e:	62 52 d5 48 7f e4    	vpermt2pd zmm12,zmm5,zmm12
  979434:	c4 41 11 57 ed       	vxorpd xmm13,xmm13,xmm13
  979439:	62 52 ad 48 7f ed    	vpermt2pd zmm13,zmm10,zmm13
  97943f:	62 71 fd 48 10 35 9f 	vmovupd zmm14,ZMMWORD PTR [rip+0xffffffffff74d89f]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  979446:	d8 74 ff 
  979449:	62 51 fd 48 28 f9    	vmovapd zmm15,zmm9
  97944f:	62 72 8d 48 7f f8    	vpermt2pd zmm15,zmm14,zmm0
  979455:	62 e1 fd 48 10 05 c9 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff74d8c9]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  97945c:	d8 74 ff 
  97945f:	62 72 fd 40 7f c8    	vpermt2pd zmm9,zmm16,zmm0
  979465:	62 c1 fd 48 28 cb    	vmovapd zmm17,zmm11
  97946b:	62 c2 8d 48 7f cc    	vpermt2pd zmm17,zmm14,zmm12
  979471:	62 52 fd 40 7f dc    	vpermt2pd zmm11,zmm16,zmm12
  979477:	62 72 8d 48 7f c3    	vpermt2pd zmm8,zmm14,zmm3
  97947d:	62 d2 8d 48 7f fd    	vpermt2pd zmm7,zmm14,zmm13
  979483:	62 f1 bd 48 14 df    	vunpcklpd zmm3,zmm8,zmm7
  979489:	62 b1 85 48 14 c1    	vunpcklpd zmm0,zmm15,zmm17
  97948f:	62 b1 85 48 15 f9    	vunpckhpd zmm7,zmm15,zmm17
  979495:	62 51 b5 48 14 c3    	vunpcklpd zmm8,zmm9,zmm11
  97949b:	62 51 b5 48 15 cb    	vunpckhpd zmm9,zmm9,zmm11
  9794a1:	62 71 fd 48 28 d9    	vmovapd zmm11,zmm1
  9794a7:	62 72 d5 48 7f de    	vpermt2pd zmm11,zmm5,zmm6
  9794ad:	62 f2 ad 48 7f ce    	vpermt2pd zmm1,zmm10,zmm6
  9794b3:	62 71 fd 48 28 fa    	vmovapd zmm15,zmm2
  9794b9:	62 72 d5 48 7f fe    	vpermt2pd zmm15,zmm5,zmm6
  9794bf:	62 f2 ad 48 7f d6    	vpermt2pd zmm2,zmm10,zmm6
  9794c5:	62 f2 dd 48 77 ee    	vpermi2pd zmm5,zmm4,zmm6
  9794cb:	62 f2 ad 48 7f e6    	vpermt2pd zmm4,zmm10,zmm6
  9794d1:	62 d1 fd 48 28 f3    	vmovapd zmm6,zmm11
  9794d7:	62 f2 8d 48 7f f5    	vpermt2pd zmm6,zmm14,zmm5
  9794dd:	62 72 fd 40 7f dd    	vpermt2pd zmm11,zmm16,zmm5
  9794e3:	62 d1 fd 48 28 ef    	vmovapd zmm5,zmm15
  9794e9:	62 d2 8d 48 7f ec    	vpermt2pd zmm5,zmm14,zmm12
  9794ef:	62 52 fd 40 7f fc    	vpermt2pd zmm15,zmm16,zmm12
  9794f5:	62 f2 8d 48 7f cc    	vpermt2pd zmm1,zmm14,zmm4
  9794fb:	62 d2 8d 48 7f d5    	vpermt2pd zmm2,zmm14,zmm13
  979501:	62 f1 f5 48 14 e2    	vunpcklpd zmm4,zmm1,zmm2
  979507:	62 f1 cd 48 14 cd    	vunpcklpd zmm1,zmm6,zmm5
  97950d:	62 f1 cd 48 15 ed    	vunpckhpd zmm5,zmm6,zmm5
  979513:	62 d1 a5 48 14 f7    	vunpcklpd zmm6,zmm11,zmm15
  979519:	62 51 a5 48 15 d7    	vunpckhpd zmm10,zmm11,zmm15
  97951f:	62 71 fd 48 10 5a 02 	vmovupd zmm11,ZMMWORD PTR [rdx+0x80]
  979526:	62 71 fd 48 10 62 03 	vmovupd zmm12,ZMMWORD PTR [rdx+0xc0]
  97952d:	62 71 fd 48 10 6a 04 	vmovupd zmm13,ZMMWORD PTR [rdx+0x100]
  979534:	62 71 fd 48 10 72 05 	vmovupd zmm14,ZMMWORD PTR [rdx+0x140]
  97953b:	62 71 fd 48 10 7a 06 	vmovupd zmm15,ZMMWORD PTR [rdx+0x180]
  979542:	62 e1 fd 48 10 42 07 	vmovupd zmm16,ZMMWORD PTR [rdx+0x1c0]
  979549:	62 e1 fd 48 10 4a 08 	vmovupd zmm17,ZMMWORD PTR [rdx+0x200]
  979550:	62 e1 fd 48 10 52 09 	vmovupd zmm18,ZMMWORD PTR [rdx+0x240]
  979557:	62 c1 c5 48 59 db    	vmulpd zmm19,zmm7,zmm11
  97955d:	62 c2 d5 48 bc dc    	vfnmadd231pd zmm19,zmm5,zmm12
  979563:	62 a1 e5 48 59 e1    	vmulpd zmm20,zmm3,zmm17
  979569:	62 a2 dd 48 bc e2    	vfnmadd231pd zmm20,zmm4,zmm18
  97956f:	62 b1 e5 40 58 d4    	vaddpd zmm2,zmm19,zmm20
  979575:	62 c1 bd 48 59 ed    	vmulpd zmm21,zmm8,zmm13
  97957b:	62 c2 cd 48 bc ee    	vfnmadd231pd zmm21,zmm6,zmm14
  979581:	62 c1 b5 48 59 f7    	vmulpd zmm22,zmm9,zmm15
  979587:	62 a2 ad 48 bc f0    	vfnmadd231pd zmm22,zmm10,zmm16
  97958d:	62 a1 d5 40 58 fe    	vaddpd zmm23,zmm21,zmm22
  979593:	62 d1 d5 48 59 eb    	vmulpd zmm5,zmm5,zmm11
  979599:	62 d2 c5 48 b8 ec    	vfmadd231pd zmm5,zmm7,zmm12
  97959f:	62 b1 dd 48 59 e1    	vmulpd zmm4,zmm4,zmm17
  9795a5:	62 b2 e5 48 b8 e2    	vfmadd231pd zmm4,zmm3,zmm18
  9795ab:	62 f1 d5 48 58 dc    	vaddpd zmm3,zmm5,zmm4
  9795b1:	62 d1 cd 48 59 f5    	vmulpd zmm6,zmm6,zmm13
  9795b7:	62 d2 bd 48 b8 f6    	vfmadd231pd zmm6,zmm8,zmm14
  9795bd:	62 d1 ad 48 59 ff    	vmulpd zmm7,zmm10,zmm15
  9795c3:	62 b2 b5 48 b8 f8    	vfmadd231pd zmm7,zmm9,zmm16
  9795c9:	62 71 cd 48 58 c7    	vaddpd zmm8,zmm6,zmm7
  9795cf:	62 72 fd 48 19 0d 7f 	vbroadcastsd zmm9,QWORD PTR [rip+0xffffffffff6fb47f]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  9795d6:	b4 6f ff 
  9795d9:	62 51 fd 48 28 d1    	vmovapd zmm10,zmm9
  9795df:	62 72 ed 48 a8 d0    	vfmadd213pd zmm10,zmm2,zmm0
  9795e5:	62 72 fd 48 19 1d 29 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff6fba29]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  9795ec:	ba 6f ff 
  9795ef:	62 52 c5 40 bc d3    	vfnmadd231pd zmm10,zmm23,zmm11
  9795f5:	62 f1 d5 48 5c e4    	vsubpd zmm4,zmm5,zmm4
  9795fb:	62 f1 cd 48 5c ef    	vsubpd zmm5,zmm6,zmm7
  979601:	62 f2 fd 48 19 35 bd 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff6fb1bd]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  979608:	b1 6f ff 
  97960b:	62 f1 d5 48 59 fe    	vmulpd zmm7,zmm5,zmm6
  979611:	62 72 fd 48 19 25 b5 	vbroadcastsd zmm12,QWORD PTR [rip+0xffffffffff6fb5b5]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  979618:	b5 6f ff 
  97961b:	62 d2 dd 48 b8 fc    	vfmadd231pd zmm7,zmm4,zmm12
  979621:	62 71 ad 48 58 ef    	vaddpd zmm13,zmm10,zmm7
  979627:	62 51 fd 48 28 f1    	vmovapd zmm14,zmm9
  97962d:	62 72 e5 48 a8 f1    	vfmadd213pd zmm14,zmm3,zmm1
  979633:	62 52 bd 48 bc f3    	vfnmadd231pd zmm14,zmm8,zmm11
  979639:	62 31 e5 40 5c fc    	vsubpd zmm15,zmm19,zmm20
  97963f:	62 a1 d5 40 5c c6    	vsubpd zmm16,zmm21,zmm22
  979645:	62 e1 fd 40 59 ce    	vmulpd zmm17,zmm16,zmm6
  97964b:	62 c2 85 48 b8 cc    	vfmadd231pd zmm17,zmm15,zmm12
  979651:	62 a1 8d 48 5c d1    	vsubpd zmm18,zmm14,zmm17
  979657:	62 c1 fd 48 28 db    	vmovapd zmm19,zmm11
  97965d:	62 e2 ed 48 ac d8    	vfnmadd213pd zmm19,zmm2,zmm0
  979663:	62 c2 c5 40 b8 d9    	vfmadd231pd zmm19,zmm23,zmm9
  979669:	62 f1 dd 48 59 e6    	vmulpd zmm4,zmm4,zmm6
  97966f:	62 f2 9d 48 bc e5    	vfnmadd231pd zmm4,zmm12,zmm5
  979675:	62 f1 e5 40 58 ec    	vaddpd zmm5,zmm19,zmm4
  97967b:	62 72 e5 48 ac d9    	vfnmadd213pd zmm11,zmm3,zmm1
  979681:	62 52 bd 48 b8 d9    	vfmadd231pd zmm11,zmm8,zmm9
  979687:	62 f1 85 48 59 f6    	vmulpd zmm6,zmm15,zmm6
  97968d:	62 d2 fd 40 bc f4    	vfnmadd231pd zmm6,zmm16,zmm12
  979693:	62 71 a5 48 5c ce    	vsubpd zmm9,zmm11,zmm6
  979699:	62 f1 e5 40 5c e4    	vsubpd zmm4,zmm19,zmm4
  97969f:	62 f1 a5 48 58 f6    	vaddpd zmm6,zmm11,zmm6
  9796a5:	62 f1 ad 48 5c ff    	vsubpd zmm7,zmm10,zmm7
  9796ab:	62 31 8d 48 58 d1    	vaddpd zmm10,zmm14,zmm17
  9796b1:	62 f1 fd 48 58 c2    	vaddpd zmm0,zmm0,zmm2
  9796b7:	62 b1 fd 48 58 c7    	vaddpd zmm0,zmm0,zmm23
  9796bd:	62 f1 e5 48 58 c9    	vaddpd zmm1,zmm3,zmm1
  9796c3:	62 d1 f5 48 58 c8    	vaddpd zmm1,zmm1,zmm8
  9796c9:	62 f1 fd 48 28 15 2d 	vmovapd zmm2,ZMMWORD PTR [rip+0xffffffffff70e02d]        # 87700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14bb0>
  9796d0:	e0 70 ff 
  9796d3:	62 f2 ed 48 7f c1    	vpermt2pd zmm0,zmm2,zmm1
  9796d9:	62 f3 7d 48 19 46 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm0,0x2
  9796e0:	02 
  9796e1:	c5 fd 11 06          	vmovupd YMMWORD PTR [rsi],ymm0
  9796e5:	62 32 ed 48 7f ea    	vpermt2pd zmm13,zmm2,zmm18
  9796eb:	62 73 7d 48 19 6e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm13,0x2
  9796f2:	02 
  9796f3:	c5 7d 11 6e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm13
  9796f8:	62 d2 ed 48 7f e9    	vpermt2pd zmm5,zmm2,zmm9
  9796fe:	62 f3 7d 48 19 6e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm5,0x2
  979705:	02 
  979706:	c5 fd 11 6e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm5
  97970b:	62 f2 ed 48 7f e6    	vpermt2pd zmm4,zmm2,zmm6
  979711:	62 f3 7d 48 19 66 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm4,0x2
  979718:	02 
  979719:	c5 fd 11 a6 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm4
  979720:	00 
  979721:	62 d2 ed 48 7f fa    	vpermt2pd zmm7,zmm2,zmm10
  979727:	62 f3 7d 48 19 7e 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm7,0x2
  97972e:	02 
  97972f:	c5 fd 11 be c0 00 00 	vmovupd YMMWORD PTR [rsi+0xc0],ymm7
  979736:	00 
  979737:	c5 f8 77             	vzeroupper
  97973a:	c3                   	ret
