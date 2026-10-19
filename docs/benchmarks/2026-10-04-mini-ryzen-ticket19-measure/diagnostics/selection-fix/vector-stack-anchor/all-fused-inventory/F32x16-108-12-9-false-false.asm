
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a412c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a412c0:	48 81 ec 08 02 00 00 	sub    rsp,0x208
  a412c7:	62 f1 7c 48 10 2f    	vmovups zmm5,ZMMWORD PTR [rdi]
  a412cd:	c5 fb 10 57 40       	vmovsd xmm2,QWORD PTR [rdi+0x40]
  a412d2:	62 f1 7c 48 28 0d 64 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff650b64]        # 91e40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f2f0>
  a412d9:	0b 65 ff 
  a412dc:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a412e2:	62 e2 75 48 7f e2    	vpermt2ps zmm20,zmm1,zmm2
  a412e8:	62 f1 7c 48 28 25 8e 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff650b8e]        # 91e80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f330>
  a412ef:	0b 65 ff 
  a412f2:	62 f2 5d 48 7f ea    	vpermt2ps zmm5,zmm4,zmm2
  a412f8:	62 71 7c 48 10 87 48 	vmovups zmm8,ZMMWORD PTR [rdi+0x48]
  a412ff:	00 00 00 
  a41302:	c5 fb 10 9f 88 00 00 	vmovsd xmm3,QWORD PTR [rdi+0x88]
  a41309:	00 
  a4130a:	62 c1 7c 48 28 f0    	vmovaps zmm22,zmm8
  a41310:	62 e2 75 48 7f f3    	vpermt2ps zmm22,zmm1,zmm3
  a41316:	62 72 5d 48 7f c3    	vpermt2ps zmm8,zmm4,zmm3
  a4131c:	62 f1 7c 48 10 b7 90 	vmovups zmm6,ZMMWORD PTR [rdi+0x90]
  a41323:	00 00 00 
  a41326:	c5 fb 10 9f d0 00 00 	vmovsd xmm3,QWORD PTR [rdi+0xd0]
  a4132d:	00 
  a4132e:	62 71 7c 48 28 ee    	vmovaps zmm13,zmm6
  a41334:	62 72 75 48 7f eb    	vpermt2ps zmm13,zmm1,zmm3
  a4133a:	62 f2 5d 48 7f f3    	vpermt2ps zmm6,zmm4,zmm3
  a41340:	62 71 7c 48 10 8f d8 	vmovups zmm9,ZMMWORD PTR [rdi+0xd8]
  a41347:	00 00 00 
  a4134a:	c5 fb 10 bf 18 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x118]
  a41351:	00 
  a41352:	62 41 7c 48 28 e1    	vmovaps zmm28,zmm9
  a41358:	62 62 75 48 7f e7    	vpermt2ps zmm28,zmm1,zmm7
  a4135e:	62 72 5d 48 7f cf    	vpermt2ps zmm9,zmm4,zmm7
  a41364:	62 71 7c 48 10 97 20 	vmovups zmm10,ZMMWORD PTR [rdi+0x120]
  a4136b:	01 00 00 
  a4136e:	c5 fb 10 bf 60 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x160]
  a41375:	00 
  a41376:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a4137c:	62 72 75 48 7f df    	vpermt2ps zmm11,zmm1,zmm7
  a41382:	62 72 5d 48 7f d7    	vpermt2ps zmm10,zmm4,zmm7
  a41388:	62 71 7c 48 10 bf 68 	vmovups zmm15,ZMMWORD PTR [rdi+0x168]
  a4138f:	01 00 00 
  a41392:	c5 fb 10 bf a8 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x1a8]
  a41399:	00 
  a4139a:	62 51 7c 48 28 f7    	vmovaps zmm14,zmm15
  a413a0:	62 72 75 48 7f f7    	vpermt2ps zmm14,zmm1,zmm7
  a413a6:	62 72 5d 48 7f ff    	vpermt2ps zmm15,zmm4,zmm7
  a413ac:	62 71 7c 48 10 a7 b0 	vmovups zmm12,ZMMWORD PTR [rdi+0x1b0]
  a413b3:	01 00 00 
  a413b6:	c5 fb 10 bf f0 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x1f0]
  a413bd:	00 
  a413be:	62 c1 7c 48 28 dc    	vmovaps zmm19,zmm12
  a413c4:	62 e2 75 48 7f df    	vpermt2ps zmm19,zmm1,zmm7
  a413ca:	62 72 5d 48 7f e7    	vpermt2ps zmm12,zmm4,zmm7
  a413d0:	62 e1 7c 48 10 bf f8 	vmovups zmm23,ZMMWORD PTR [rdi+0x1f8]
  a413d7:	01 00 00 
  a413da:	c5 fb 10 bf 38 02 00 	vmovsd xmm7,QWORD PTR [rdi+0x238]
  a413e1:	00 
  a413e2:	62 a1 7c 48 28 c7    	vmovaps zmm16,zmm23
  a413e8:	62 e2 75 48 7f c7    	vpermt2ps zmm16,zmm1,zmm7
  a413ee:	62 e2 5d 48 7f ff    	vpermt2ps zmm23,zmm4,zmm7
  a413f4:	62 e1 7c 48 10 57 09 	vmovups zmm18,ZMMWORD PTR [rdi+0x240]
  a413fb:	c5 fb 10 bf 80 02 00 	vmovsd xmm7,QWORD PTR [rdi+0x280]
  a41402:	00 
  a41403:	62 21 7c 48 28 c2    	vmovaps zmm24,zmm18
  a41409:	62 62 75 48 7f c7    	vpermt2ps zmm24,zmm1,zmm7
  a4140f:	62 e2 5d 48 7f d7    	vpermt2ps zmm18,zmm4,zmm7
  a41415:	62 61 7c 48 10 8f 88 	vmovups zmm25,ZMMWORD PTR [rdi+0x288]
  a4141c:	02 00 00 
  a4141f:	c5 fb 10 bf c8 02 00 	vmovsd xmm7,QWORD PTR [rdi+0x2c8]
  a41426:	00 
  a41427:	62 81 7c 48 28 c9    	vmovaps zmm17,zmm25
  a4142d:	62 e2 75 48 7f cf    	vpermt2ps zmm17,zmm1,zmm7
  a41433:	62 62 5d 48 7f cf    	vpermt2ps zmm25,zmm4,zmm7
  a41439:	62 61 7c 48 10 97 d0 	vmovups zmm26,ZMMWORD PTR [rdi+0x2d0]
  a41440:	02 00 00 
  a41443:	c5 fb 10 bf 10 03 00 	vmovsd xmm7,QWORD PTR [rdi+0x310]
  a4144a:	00 
  a4144b:	62 81 7c 48 28 ea    	vmovaps zmm21,zmm26
  a41451:	62 e2 75 48 7f ef    	vpermt2ps zmm21,zmm1,zmm7
  a41457:	62 62 5d 48 7f d7    	vpermt2ps zmm26,zmm4,zmm7
  a4145d:	62 61 7c 48 10 9f 18 	vmovups zmm27,ZMMWORD PTR [rdi+0x318]
  a41464:	03 00 00 
  a41467:	c5 fb 10 bf 58 03 00 	vmovsd xmm7,QWORD PTR [rdi+0x358]
  a4146e:	00 
  a4146f:	62 f2 25 40 77 cf    	vpermi2ps zmm1,zmm27,zmm7
  a41475:	62 62 5d 48 7f df    	vpermt2ps zmm27,zmm4,zmm7
  a4147b:	62 b1 5c 40 58 c3    	vaddps zmm0,zmm20,zmm19
  a41481:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a41488:	ff 
  a41489:	62 b1 1c 40 58 f9    	vaddps zmm7,zmm28,zmm17
  a4148f:	62 f1 7c 48 58 c7    	vaddps zmm0,zmm0,zmm7
  a41495:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a4149c:	fe 
  a4149d:	62 b1 24 48 58 e5    	vaddps zmm4,zmm11,zmm21
  a414a3:	62 21 7c 40 58 ee    	vaddps zmm29,zmm16,zmm22
  a414a9:	62 91 5c 48 58 c5    	vaddps zmm0,zmm4,zmm29
  a414af:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a414b6:	01 
  a414b7:	62 41 3c 40 58 f5    	vaddps zmm30,zmm24,zmm13
  a414bd:	62 41 74 48 58 fe    	vaddps zmm31,zmm1,zmm14
  a414c3:	62 b1 24 48 5c c5    	vsubps zmm0,zmm11,zmm21
  a414c9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a414d0:	03 
  a414d1:	62 d1 44 40 58 d8    	vaddps zmm3,zmm23,zmm8
  a414d7:	62 c1 44 40 5c e8    	vsubps zmm21,zmm23,zmm8
  a414dd:	62 91 0c 40 58 d7    	vaddps zmm2,zmm30,zmm31
  a414e3:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a414ea:	02 
  a414eb:	62 51 3c 40 5c ed    	vsubps zmm13,zmm24,zmm13
  a414f1:	62 51 24 40 58 c7    	vaddps zmm8,zmm27,zmm15
  a414f7:	62 41 24 40 5c c7    	vsubps zmm24,zmm27,zmm15
  a414fd:	62 41 54 48 58 dc    	vaddps zmm27,zmm5,zmm12
  a41503:	62 a1 5c 40 5c db    	vsubps zmm19,zmm20,zmm19
  a41509:	62 81 34 48 58 e1    	vaddps zmm20,zmm9,zmm25
  a4150f:	62 11 34 48 5c c9    	vsubps zmm9,zmm9,zmm25
  a41515:	62 01 2c 48 58 ca    	vaddps zmm25,zmm10,zmm26
  a4151b:	62 81 2c 48 5c fa    	vsubps zmm23,zmm10,zmm26
  a41521:	62 61 6c 40 58 d6    	vaddps zmm26,zmm18,zmm6
  a41527:	62 31 4c 40 5c d0    	vsubps zmm10,zmm22,zmm16
  a4152d:	62 31 2c 48 58 ff    	vaddps zmm15,zmm10,zmm23
  a41533:	62 71 6c 40 5c de    	vsubps zmm11,zmm18,zmm6
  a41539:	62 e1 0c 48 5c f1    	vsubps zmm22,zmm14,zmm1
  a4153f:	62 d1 4c 40 58 cb    	vaddps zmm1,zmm22,zmm11
  a41545:	62 f1 04 48 5c f1    	vsubps zmm6,zmm15,zmm1
  a4154b:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm6
  a41552:	05 
  a41553:	62 f1 04 48 58 c9    	vaddps zmm1,zmm15,zmm1
  a41559:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a41560:	62 b1 7c 48 58 cd    	vaddps zmm1,zmm0,zmm21
  a41566:	62 d1 54 48 5c ec    	vsubps zmm5,zmm5,zmm12
  a4156c:	62 11 14 48 58 e0    	vaddps zmm12,zmm13,zmm24
  a41572:	62 81 74 40 5c cc    	vsubps zmm17,zmm17,zmm28
  a41578:	62 d1 74 48 58 f4    	vaddps zmm6,zmm1,zmm12
  a4157e:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm6
  a41585:	06 
  a41586:	62 d1 74 48 5c c4    	vsubps zmm0,zmm1,zmm12
  a4158c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a41593:	04 
  a41594:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x40]
  a4159b:	01 
  a4159c:	62 71 6c 40 58 f2    	vaddps zmm14,zmm18,zmm2
  a415a2:	62 91 5c 48 5c cd    	vsubps zmm1,zmm4,zmm29
  a415a8:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a415af:	fe 
  a415b0:	62 51 6c 48 58 fe    	vaddps zmm15,zmm2,zmm14
  a415b6:	62 01 0c 40 5c e7    	vsubps zmm28,zmm30,zmm31
  a415bc:	62 21 24 40 58 ec    	vaddps zmm29,zmm27,zmm20
  a415c2:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a415c9:	ff 
  a415ca:	62 61 7c 48 5c f7    	vsubps zmm30,zmm0,zmm7
  a415d0:	62 f1 34 40 58 e3    	vaddps zmm4,zmm25,zmm3
  a415d6:	62 f1 34 40 5c c3    	vsubps zmm0,zmm25,zmm3
  a415dc:	62 d1 2c 40 58 f8    	vaddps zmm7,zmm26,zmm8
  a415e2:	62 51 2c 40 5c c0    	vsubps zmm8,zmm26,zmm8
  a415e8:	62 41 7c 48 5c c8    	vsubps zmm25,zmm0,zmm8
  a415ee:	62 41 7c 48 58 f8    	vaddps zmm31,zmm0,zmm8
  a415f4:	62 e1 5c 48 58 c7    	vaddps zmm16,zmm4,zmm7
  a415fa:	62 a1 24 40 5c e4    	vsubps zmm20,zmm27,zmm20
  a41600:	62 01 74 48 58 d4    	vaddps zmm26,zmm1,zmm28
  a41606:	62 01 74 48 5c dc    	vsubps zmm27,zmm1,zmm28
  a4160c:	62 51 64 40 58 c1    	vaddps zmm8,zmm19,zmm9
  a41612:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm8
  a41619:	07 
  a4161a:	62 c1 64 40 5c d9    	vsubps zmm19,zmm19,zmm9
  a41620:	62 f2 7d 48 18 05 36 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff633e36]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a41627:	3e 63 ff 
  a4162a:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a41631:	03 
  a41632:	62 a1 74 48 5c ed    	vsubps zmm21,zmm1,zmm21
  a41638:	62 b1 14 40 58 c8    	vaddps zmm1,zmm29,zmm16
  a4163e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a41645:	ff 
  a41646:	62 11 14 48 5c e8    	vsubps zmm13,zmm13,zmm24
  a4164c:	62 61 74 40 58 c5    	vaddps zmm24,zmm17,zmm5
  a41652:	62 a1 54 48 5c c9    	vsubps zmm17,zmm5,zmm17
  a41658:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a4165e:	62 d1 44 40 5c da    	vsubps zmm3,zmm23,zmm10
  a41664:	62 f2 7d 48 18 0d 66 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff633c66]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a4166b:	3c 63 ff 
  a4166e:	62 52 4d 48 ac c8    	vfnmadd213ps zmm9,zmm6,zmm8
  a41674:	62 71 74 48 59 54 24 	vmulps zmm10,zmm1,ZMMWORD PTR [rsp+0x140]
  a4167b:	05 
  a4167c:	62 31 24 48 5c de    	vsubps zmm11,zmm11,zmm22
  a41682:	62 51 2c 48 58 e1    	vaddps zmm12,zmm10,zmm9
  a41688:	62 72 7d 48 ac f2    	vfnmadd213ps zmm14,zmm0,zmm2
  a4168e:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a41694:	62 71 7c 48 10 04 24 	vmovups zmm8,ZMMWORD PTR [rsp]
  a4169b:	62 82 3d 48 ac f0    	vfnmadd213ps zmm22,zmm8,zmm24
  a416a1:	62 81 7c 48 28 f8    	vmovaps zmm23,zmm24
  a416a7:	62 61 74 48 59 44 24 	vmulps zmm24,zmm1,ZMMWORD PTR [rsp+0x100]
  a416ae:	04 
  a416af:	62 61 5c 48 5c e7    	vsubps zmm28,zmm4,zmm7
  a416b5:	62 91 4c 40 5c d0    	vsubps zmm2,zmm22,zmm24
  a416bb:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a416c2:	fe 
  a416c3:	62 82 7d 48 ac c5    	vfnmadd213ps zmm16,zmm0,zmm29
  a416c9:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a416cf:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a416d5:	62 02 2d 40 ac ee    	vfnmadd213ps zmm29,zmm26,zmm30
  a416db:	62 f1 34 40 59 f1    	vmulps zmm6,zmm25,zmm1
  a416e1:	62 f1 6c 40 5c 7c 24 	vsubps zmm7,zmm18,ZMMWORD PTR [rsp+0x80]
  a416e8:	02 
  a416e9:	62 f1 14 40 5c e6    	vsubps zmm4,zmm29,zmm6
  a416ef:	62 51 34 48 5c ca    	vsubps zmm9,zmm9,zmm10
  a416f5:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a416fb:	62 b2 05 40 ac d4    	vfnmadd213ps zmm2,zmm31,zmm20
  a41701:	62 f1 24 40 59 c1    	vmulps zmm0,zmm27,zmm1
  a41707:	62 11 4c 40 58 d0    	vaddps zmm10,zmm22,zmm24
  a4170d:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm10
  a41714:	01 
  a41715:	62 71 7c 48 58 d2    	vaddps zmm10,zmm0,zmm2
  a4171b:	62 01 0c 40 58 d2    	vaddps zmm26,zmm30,zmm26
  a41721:	62 c1 54 40 58 f5    	vaddps zmm22,zmm21,zmm13
  a41727:	62 81 5c 40 58 e7    	vaddps zmm20,zmm20,zmm31
  a4172d:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm20
  a41734:	02 
  a41735:	62 21 64 40 58 ce    	vaddps zmm25,zmm19,zmm22
  a4173b:	62 a2 55 48 ac f3    	vfnmadd213ps zmm22,zmm5,zmm19
  a41741:	62 c1 64 48 58 db    	vaddps zmm19,zmm3,zmm11
  a41747:	62 d1 64 48 5c db    	vsubps zmm3,zmm3,zmm11
  a4174d:	62 31 74 40 58 db    	vaddps zmm11,zmm17,zmm19
  a41753:	62 e1 1c 40 59 e1    	vmulps zmm20,zmm28,zmm1
  a41759:	62 a2 55 48 ac d9    	vfnmadd213ps zmm19,zmm5,zmm17
  a4175f:	62 21 0c 48 58 e4    	vaddps zmm28,zmm14,zmm20
  a41765:	62 f1 44 48 59 e9    	vmulps zmm5,zmm7,zmm1
  a4176b:	62 c1 54 40 5c cd    	vsubps zmm17,zmm21,zmm13
  a41771:	62 71 7c 40 5c ed    	vsubps zmm13,zmm16,zmm5
  a41777:	62 f1 64 48 59 d9    	vmulps zmm3,zmm3,zmm1
  a4177d:	62 a1 0c 48 5c e4    	vsubps zmm20,zmm14,zmm20
  a41783:	62 21 64 48 58 de    	vaddps zmm27,zmm3,zmm22
  a41789:	62 e1 74 40 59 c9    	vmulps zmm17,zmm17,zmm1
  a4178f:	62 21 54 48 58 c0    	vaddps zmm24,zmm5,zmm16
  a41795:	62 31 64 40 5c f1    	vsubps zmm14,zmm19,zmm17
  a4179b:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x180]
  a417a2:	06 
  a417a3:	62 f1 74 48 58 6c 24 	vaddps zmm5,zmm1,ZMMWORD PTR [rsp+0x1c0]
  a417aa:	07 
  a417ab:	62 c1 44 40 58 f8    	vaddps zmm23,zmm23,zmm8
  a417b1:	62 f1 14 40 58 ce    	vaddps zmm1,zmm29,zmm6
  a417b7:	62 e1 6c 48 5c e8    	vsubps zmm21,zmm2,zmm0
  a417bd:	62 f1 4c 40 5c c3    	vsubps zmm0,zmm22,zmm3
  a417c3:	62 b1 64 40 58 f1    	vaddps zmm6,zmm19,zmm17
  a417c9:	62 e1 7c 48 28 05 ad 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6857ad]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a417d0:	57 68 ff 
  a417d3:	62 51 7c 48 28 c7    	vmovaps zmm8,zmm15
  a417d9:	62 32 7d 40 7f c4    	vpermt2ps zmm8,zmm16,zmm20
  a417df:	62 e1 7c 48 28 0d d7 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6857d7]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a417e6:	57 68 ff 
  a417e9:	62 32 75 40 7f fc    	vpermt2ps zmm15,zmm17,zmm20
  a417ef:	62 41 7c 48 28 ec    	vmovaps zmm29,zmm12
  a417f5:	62 62 7d 40 7f ed    	vpermt2ps zmm29,zmm16,zmm5
  a417fb:	62 72 75 40 7f e5    	vpermt2ps zmm12,zmm17,zmm5
  a41801:	62 61 7c 48 28 f4    	vmovaps zmm30,zmm4
  a41807:	62 62 7d 40 7f f1    	vpermt2ps zmm30,zmm16,zmm1
  a4180d:	62 f2 75 40 7f e1    	vpermt2ps zmm4,zmm17,zmm1
  a41813:	62 01 7c 48 28 f9    	vmovaps zmm31,zmm25
  a41819:	62 62 7d 40 7f f8    	vpermt2ps zmm31,zmm16,zmm0
  a4181f:	62 62 75 40 7f c8    	vpermt2ps zmm25,zmm17,zmm0
  a41825:	62 a1 4c 00 57 f6    	vxorps xmm22,xmm22,xmm22
  a4182b:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a41831:	62 b2 7d 40 7f c6    	vpermt2ps zmm0,zmm16,zmm22
  a41837:	62 e1 7c 48 28 15 bf 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6856bf]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a4183e:	56 68 ff 
  a41841:	62 d1 7c 48 28 c8    	vmovaps zmm1,zmm8
  a41847:	62 f2 6d 40 7f c8    	vpermt2ps zmm1,zmm18,zmm0
  a4184d:	62 e1 7c 48 28 25 e9 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6856e9]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a41854:	56 68 ff 
  a41857:	62 72 5d 40 7f c0    	vpermt2ps zmm8,zmm20,zmm0
  a4185d:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a41863:	62 b2 7d 40 7f c6    	vpermt2ps zmm0,zmm16,zmm22
  a41869:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  a4186f:	62 f2 6d 40 7f d0    	vpermt2ps zmm2,zmm18,zmm0
  a41875:	62 62 5d 40 7f e8    	vpermt2ps zmm29,zmm20,zmm0
  a4187b:	62 91 7c 48 28 c2    	vmovaps zmm0,zmm26
  a41881:	62 b2 7d 40 7f c6    	vpermt2ps zmm0,zmm16,zmm22
  a41887:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a4188d:	62 f2 6d 40 7f d8    	vpermt2ps zmm3,zmm18,zmm0
  a41893:	62 62 5d 40 7f f0    	vpermt2ps zmm30,zmm20,zmm0
  a41899:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a4189f:	62 b2 7d 40 7f c6    	vpermt2ps zmm0,zmm16,zmm22
  a418a5:	62 91 7c 48 28 ef    	vmovaps zmm5,zmm31
  a418ab:	62 f2 6d 40 7f e8    	vpermt2ps zmm5,zmm18,zmm0
  a418b1:	62 62 5d 40 7f f8    	vpermt2ps zmm31,zmm20,zmm0
  a418b7:	62 22 75 40 7f e6    	vpermt2ps zmm28,zmm17,zmm22
  a418bd:	62 12 6d 40 7f fc    	vpermt2ps zmm15,zmm18,zmm28
  a418c3:	62 32 75 40 7f ce    	vpermt2ps zmm9,zmm17,zmm22
  a418c9:	62 52 6d 40 7f e1    	vpermt2ps zmm12,zmm18,zmm9
  a418cf:	62 22 75 40 7f d6    	vpermt2ps zmm26,zmm17,zmm22
  a418d5:	62 92 6d 40 7f e2    	vpermt2ps zmm4,zmm18,zmm26
  a418db:	62 22 75 40 7f de    	vpermt2ps zmm27,zmm17,zmm22
  a418e1:	62 71 85 48 14 cc    	vunpcklpd zmm9,zmm15,zmm4
  a418e7:	62 02 6d 40 7f cb    	vpermt2ps zmm25,zmm18,zmm27
  a418ed:	62 91 9d 48 14 c1    	vunpcklpd zmm0,zmm12,zmm25
  a418f3:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a418fa:	62 71 f5 48 14 e3    	vunpcklpd zmm12,zmm1,zmm3
  a41900:	62 71 f5 48 15 fb    	vunpckhpd zmm15,zmm1,zmm3
  a41906:	62 f1 ed 48 14 cd    	vunpcklpd zmm1,zmm2,zmm5
  a4190c:	62 f1 ed 48 15 d5    	vunpckhpd zmm2,zmm2,zmm5
  a41912:	62 81 bd 48 14 de    	vunpcklpd zmm19,zmm8,zmm30
  a41918:	62 01 bd 48 15 d6    	vunpckhpd zmm26,zmm8,zmm30
  a4191e:	62 91 95 40 14 df    	vunpcklpd zmm3,zmm29,zmm31
  a41924:	62 01 95 40 15 ef    	vunpckhpd zmm29,zmm29,zmm31
  a4192a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a41931:	ff 
  a41932:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a41938:	62 02 7d 40 7f c8    	vpermt2ps zmm25,zmm16,zmm24
  a4193e:	62 92 75 40 7f c0    	vpermt2ps zmm0,zmm17,zmm24
  a41944:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a4194a:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x80]
  a41951:	fe 
  a41952:	62 61 7c 48 28 c4    	vmovaps zmm24,zmm4
  a41958:	62 22 7d 40 7f c7    	vpermt2ps zmm24,zmm16,zmm23
  a4195e:	62 b2 75 40 7f e7    	vpermt2ps zmm4,zmm17,zmm23
  a41964:	62 c1 7c 48 28 fa    	vmovaps zmm23,zmm10
  a4196a:	62 a2 7d 40 7f fd    	vpermt2ps zmm23,zmm16,zmm21
  a41970:	62 32 75 40 7f d5    	vpermt2ps zmm10,zmm17,zmm21
  a41976:	62 41 7c 48 28 db    	vmovaps zmm27,zmm11
  a4197c:	62 62 7d 40 7f de    	vpermt2ps zmm27,zmm16,zmm6
  a41982:	62 72 75 40 7f de    	vpermt2ps zmm11,zmm17,zmm6
  a41988:	62 d1 7c 48 28 ed    	vmovaps zmm5,zmm13
  a4198e:	62 b2 7d 40 7f ee    	vpermt2ps zmm5,zmm16,zmm22
  a41994:	62 32 75 40 7f ee    	vpermt2ps zmm13,zmm17,zmm22
  a4199a:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x40]
  a419a1:	01 
  a419a2:	62 41 7c 48 28 f0    	vmovaps zmm30,zmm8
  a419a8:	62 22 7d 40 7f f6    	vpermt2ps zmm30,zmm16,zmm22
  a419ae:	62 32 75 40 7f c6    	vpermt2ps zmm8,zmm17,zmm22
  a419b4:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x80]
  a419bb:	02 
  a419bc:	62 61 7c 48 28 fe    	vmovaps zmm31,zmm6
  a419c2:	62 22 7d 40 7f fe    	vpermt2ps zmm31,zmm16,zmm22
  a419c8:	62 b2 75 40 7f f6    	vpermt2ps zmm6,zmm17,zmm22
  a419ce:	62 a2 0d 48 77 c6    	vpermi2ps zmm16,zmm14,zmm22
  a419d4:	62 32 75 40 7f f6    	vpermt2ps zmm14,zmm17,zmm22
  a419da:	62 61 7c 48 28 25 1c 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff68541c]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a419e1:	54 68 ff 
  a419e4:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a419ea:	62 f2 1d 40 7f c1    	vpermt2ps zmm0,zmm28,zmm1
  a419f0:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a419f7:	ff 
  a419f8:	62 f1 7c 48 28 05 3e 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68543e]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a419ff:	54 68 ff 
  a41a02:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a41a08:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a41a0e:	62 e2 1d 40 7f ca    	vpermt2ps zmm17,zmm28,zmm2
  a41a14:	62 72 7d 48 7f fa    	vpermt2ps zmm15,zmm0,zmm2
  a41a1a:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a41a20:	62 e2 1d 40 7f db    	vpermt2ps zmm19,zmm28,zmm3
  a41a26:	62 f2 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm3
  a41a2c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a41a33:	fe 
  a41a34:	62 81 7c 48 28 ea    	vmovaps zmm21,zmm26
  a41a3a:	62 82 1d 40 7f ed    	vpermt2ps zmm21,zmm28,zmm29
  a41a40:	62 02 7d 48 7f d5    	vpermt2ps zmm26,zmm0,zmm29
  a41a46:	62 72 1d 40 7f 0c 24 	vpermt2ps zmm9,zmm28,ZMMWORD PTR [rsp]
  a41a4d:	62 41 7c 48 28 e9    	vmovaps zmm29,zmm9
  a41a53:	62 91 7c 48 28 c9    	vmovaps zmm1,zmm25
  a41a59:	62 f2 6d 40 7f cd    	vpermt2ps zmm1,zmm18,zmm5
  a41a5f:	62 62 5d 40 7f cd    	vpermt2ps zmm25,zmm20,zmm5
  a41a65:	62 91 7c 48 28 d0    	vmovaps zmm2,zmm24
  a41a6b:	62 92 6d 40 7f d6    	vpermt2ps zmm2,zmm18,zmm30
  a41a71:	62 02 5d 40 7f c6    	vpermt2ps zmm24,zmm20,zmm30
  a41a77:	62 b1 7c 48 28 df    	vmovaps zmm3,zmm23
  a41a7d:	62 92 6d 40 7f df    	vpermt2ps zmm3,zmm18,zmm31
  a41a83:	62 82 5d 40 7f ff    	vpermt2ps zmm23,zmm20,zmm31
  a41a89:	62 91 7c 48 28 eb    	vmovaps zmm5,zmm27
  a41a8f:	62 22 5d 40 7f d8    	vpermt2ps zmm27,zmm20,zmm16
  a41a95:	62 b2 6d 40 7f e8    	vpermt2ps zmm5,zmm18,zmm16
  a41a9b:	62 d2 6d 40 7f fd    	vpermt2ps zmm7,zmm18,zmm13
  a41aa1:	62 d2 6d 40 7f e0    	vpermt2ps zmm4,zmm18,zmm8
  a41aa7:	62 72 6d 40 7f d6    	vpermt2ps zmm10,zmm18,zmm6
  a41aad:	62 51 c5 48 14 ca    	vunpcklpd zmm9,zmm7,zmm10
  a41ab3:	62 52 6d 40 7f de    	vpermt2ps zmm11,zmm18,zmm14
  a41ab9:	62 51 dd 48 14 d3    	vunpcklpd zmm10,zmm4,zmm11
  a41abf:	62 71 f5 48 14 eb    	vunpcklpd zmm13,zmm1,zmm3
  a41ac5:	62 71 f5 48 15 f3    	vunpckhpd zmm14,zmm1,zmm3
  a41acb:	62 f1 ed 48 14 cd    	vunpcklpd zmm1,zmm2,zmm5
  a41ad1:	62 f1 ed 48 15 d5    	vunpckhpd zmm2,zmm2,zmm5
  a41ad7:	62 b1 b5 40 14 ff    	vunpcklpd zmm7,zmm25,zmm23
  a41add:	62 31 b5 40 15 df    	vunpckhpd zmm11,zmm25,zmm23
  a41ae3:	62 81 bd 40 14 c3    	vunpcklpd zmm16,zmm24,zmm27
  a41ae9:	62 81 bd 40 15 d3    	vunpckhpd zmm18,zmm24,zmm27
  a41aef:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a41af5:	62 f2 1d 40 7f d9    	vpermt2ps zmm3,zmm28,zmm1
  a41afb:	62 72 7d 48 7f e9    	vpermt2ps zmm13,zmm0,zmm1
  a41b01:	62 d1 7c 48 28 ee    	vmovaps zmm5,zmm14
  a41b07:	62 f2 1d 40 7f ea    	vpermt2ps zmm5,zmm28,zmm2
  a41b0d:	62 72 7d 48 7f f2    	vpermt2ps zmm14,zmm0,zmm2
  a41b13:	62 e1 7c 48 28 f7    	vmovaps zmm22,zmm7
  a41b19:	62 a2 1d 40 7f f0    	vpermt2ps zmm22,zmm28,zmm16
  a41b1f:	62 b2 7d 48 7f f8    	vpermt2ps zmm7,zmm0,zmm16
  a41b25:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a41b2b:	62 b2 1d 40 7f ca    	vpermt2ps zmm1,zmm28,zmm18
  a41b31:	62 32 7d 48 7f da    	vpermt2ps zmm11,zmm0,zmm18
  a41b37:	62 52 1d 40 7f ca    	vpermt2ps zmm9,zmm28,zmm10
  a41b3d:	62 f1 7c 48 10 42 02 	vmovups zmm0,ZMMWORD PTR [rdx+0x80]
  a41b44:	62 e1 7c 48 10 7a 03 	vmovups zmm23,ZMMWORD PTR [rdx+0xc0]
  a41b4b:	62 e1 7c 48 10 52 04 	vmovups zmm18,ZMMWORD PTR [rdx+0x100]
  a41b52:	62 e1 7c 48 10 62 05 	vmovups zmm20,ZMMWORD PTR [rdx+0x140]
  a41b59:	62 f1 7c 48 10 52 06 	vmovups zmm2,ZMMWORD PTR [rdx+0x180]
  a41b60:	62 e1 7c 48 10 42 07 	vmovups zmm16,ZMMWORD PTR [rdx+0x1c0]
  a41b67:	62 61 7c 48 10 4a 08 	vmovups zmm25,ZMMWORD PTR [rdx+0x200]
  a41b6e:	62 71 04 48 59 d2    	vmulps zmm10,zmm15,zmm2
  a41b74:	62 32 0d 48 bc d0    	vfnmadd231ps zmm10,zmm14,zmm16
  a41b7a:	62 61 0c 48 59 c2    	vmulps zmm24,zmm14,zmm2
  a41b80:	62 f1 7c 48 10 52 0c 	vmovups zmm2,ZMMWORD PTR [rdx+0x300]
  a41b87:	62 42 7d 40 b8 c7    	vfmadd231ps zmm24,zmm16,zmm15
  a41b8d:	62 71 7c 48 10 72 0d 	vmovups zmm14,ZMMWORD PTR [rdx+0x340]
  a41b94:	62 e1 54 40 59 c2    	vmulps zmm16,zmm21,zmm2
  a41b9a:	62 c2 75 48 bc c6    	vfnmadd231ps zmm16,zmm1,zmm14
  a41ba0:	62 f1 74 48 59 ca    	vmulps zmm1,zmm1,zmm2
  a41ba6:	62 f1 7c 48 10 52 09 	vmovups zmm2,ZMMWORD PTR [rdx+0x240]
  a41bad:	62 b2 0d 48 b8 cd    	vfmadd231ps zmm1,zmm14,zmm21
  a41bb3:	62 e1 7c 48 10 6a 0a 	vmovups zmm21,ZMMWORD PTR [rdx+0x280]
  a41bba:	62 71 1c 48 59 f0    	vmulps zmm14,zmm12,zmm0
  a41bc0:	62 32 15 48 bc f7    	vfnmadd231ps zmm14,zmm13,zmm23
  a41bc6:	62 71 14 48 59 f8    	vmulps zmm15,zmm13,zmm0
  a41bcc:	62 f1 7c 48 10 42 0b 	vmovups zmm0,ZMMWORD PTR [rdx+0x2c0]
  a41bd3:	62 52 45 40 b8 fc    	vfmadd231ps zmm15,zmm23,zmm12
  a41bd9:	62 71 7c 48 10 62 0e 	vmovups zmm12,ZMMWORD PTR [rdx+0x380]
  a41be0:	62 11 64 40 59 e9    	vmulps zmm13,zmm19,zmm25
  a41be6:	62 72 4d 40 bc ea    	vfnmadd231ps zmm13,zmm22,zmm2
  a41bec:	62 81 4c 40 59 f1    	vmulps zmm22,zmm22,zmm25
  a41bf2:	62 e1 7c 48 10 7a 0f 	vmovups zmm23,ZMMWORD PTR [rdx+0x3c0]
  a41bf9:	62 a2 6d 48 b8 f3    	vfmadd231ps zmm22,zmm2,zmm19
  a41bff:	62 f1 7c 48 10 52 10 	vmovups zmm2,ZMMWORD PTR [rdx+0x400]
  a41c06:	62 41 2c 40 59 cc    	vmulps zmm25,zmm26,zmm12
  a41c0c:	62 22 25 48 bc cf    	vfnmadd231ps zmm25,zmm11,zmm23
  a41c12:	62 51 24 48 59 e4    	vmulps zmm12,zmm11,zmm12
  a41c18:	62 71 7c 48 10 5a 11 	vmovups zmm11,ZMMWORD PTR [rdx+0x440]
  a41c1f:	62 12 45 40 b8 e2    	vfmadd231ps zmm12,zmm23,zmm26
  a41c25:	62 a1 2c 48 58 f8    	vaddps zmm23,zmm10,zmm16
  a41c2b:	62 31 74 40 59 c2    	vmulps zmm8,zmm17,zmm18
  a41c31:	62 32 55 48 bc c4    	vfnmadd231ps zmm8,zmm5,zmm20
  a41c37:	62 a1 54 48 59 d2    	vmulps zmm18,zmm5,zmm18
  a41c3d:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a41c44:	ff 
  a41c45:	62 b1 5c 48 58 ef    	vaddps zmm5,zmm4,zmm23
  a41c4b:	62 a2 5d 40 b8 d1    	vfmadd231ps zmm18,zmm20,zmm17
  a41c51:	62 81 14 48 58 c9    	vaddps zmm17,zmm13,zmm25
  a41c57:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp-0x80]
  a41c5e:	fe 
  a41c5f:	62 a1 4c 48 59 e5    	vmulps zmm20,zmm6,zmm21
  a41c65:	62 e2 45 48 bc e0    	vfnmadd231ps zmm20,zmm7,zmm0
  a41c6b:	62 21 44 48 59 d5    	vmulps zmm26,zmm7,zmm21
  a41c71:	62 b1 0c 48 58 f9    	vaddps zmm7,zmm14,zmm17
  a41c77:	62 62 7d 48 b8 d6    	vfmadd231ps zmm26,zmm0,zmm6
  a41c7d:	62 f1 14 40 59 c2    	vmulps zmm0,zmm29,zmm2
  a41c83:	62 d2 35 48 bc c3    	vfnmadd231ps zmm0,zmm9,zmm11
  a41c89:	62 61 5c 40 58 d8    	vaddps zmm27,zmm20,zmm0
  a41c8f:	62 61 34 48 59 e2    	vmulps zmm28,zmm9,zmm2
  a41c95:	62 11 3c 48 58 cb    	vaddps zmm9,zmm8,zmm27
  a41c9b:	62 02 25 48 b8 e5    	vfmadd231ps zmm28,zmm11,zmm29
  a41ca1:	62 d1 44 48 58 d1    	vaddps zmm2,zmm7,zmm9
  a41ca7:	62 e1 3c 40 58 d9    	vaddps zmm19,zmm24,zmm1
  a41cad:	62 62 7d 48 18 35 a9 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff6337a9]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a41cb4:	37 63 ff 
  a41cb7:	62 b2 0d 40 bc e7    	vfnmadd231ps zmm4,zmm30,zmm23
  a41cbd:	62 f1 64 40 58 f3    	vaddps zmm6,zmm19,zmm3
  a41cc3:	62 e1 3c 40 5c e9    	vsubps zmm21,zmm24,zmm1
  a41cc9:	62 d1 4c 40 58 cc    	vaddps zmm1,zmm22,zmm12
  a41ccf:	62 32 0d 40 bc f1    	vfnmadd231ps zmm14,zmm30,zmm17
  a41cd5:	62 71 04 48 58 d9    	vaddps zmm11,zmm15,zmm1
  a41cdb:	62 c1 4c 40 5c cc    	vsubps zmm17,zmm22,zmm12
  a41ce1:	62 81 2c 40 58 f4    	vaddps zmm22,zmm26,zmm28
  a41ce7:	62 72 0d 40 bc f9    	vfnmadd231ps zmm15,zmm30,zmm1
  a41ced:	62 31 6c 40 58 e6    	vaddps zmm12,zmm18,zmm22
  a41cf3:	62 62 7d 48 18 2d d7 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff6335d7]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a41cfa:	35 63 ff 
  a41cfd:	62 91 74 40 59 cd    	vmulps zmm1,zmm17,zmm29
  a41d03:	62 11 14 48 5c e9    	vsubps zmm13,zmm13,zmm25
  a41d09:	62 e1 0c 48 58 f9    	vaddps zmm23,zmm14,zmm1
  a41d0f:	62 01 14 48 59 c5    	vmulps zmm24,zmm13,zmm29
  a41d15:	62 12 0d 40 bc c3    	vfnmadd231ps zmm8,zmm30,zmm27
  a41d1b:	62 81 04 48 5c c8    	vsubps zmm17,zmm15,zmm24
  a41d21:	62 01 2c 40 5c cc    	vsubps zmm25,zmm26,zmm28
  a41d27:	62 62 7d 48 18 15 37 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff633937]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a41d2e:	39 63 ff 
  a41d31:	62 a2 0d 40 bc d6    	vfnmadd231ps zmm18,zmm30,zmm22
  a41d37:	62 11 74 40 59 ea    	vmulps zmm13,zmm17,zmm26
  a41d3d:	62 f1 5c 40 5c c0    	vsubps zmm0,zmm20,zmm0
  a41d43:	62 e2 7d 48 18 25 8b 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff63378b]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a41d4a:	37 63 ff 
  a41d4d:	62 32 45 40 b8 ec    	vfmadd231ps zmm13,zmm23,zmm20
  a41d53:	62 81 34 40 59 f5    	vmulps zmm22,zmm25,zmm29
  a41d59:	62 a1 74 40 59 cc    	vmulps zmm17,zmm17,zmm20
  a41d5f:	62 21 3c 48 58 ce    	vaddps zmm25,zmm8,zmm22
  a41d65:	62 91 7c 48 59 c5    	vmulps zmm0,zmm0,zmm29
  a41d6b:	62 82 45 40 bc ca    	vfnmadd231ps zmm17,zmm23,zmm26
  a41d71:	62 e2 7d 48 18 3d 9d 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff63359d]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a41d78:	35 63 ff 
  a41d7b:	62 e1 6c 40 5c e0    	vsubps zmm20,zmm18,zmm0
  a41d81:	62 b2 0d 40 bc db    	vfnmadd231ps zmm3,zmm30,zmm19
  a41d87:	62 a1 5c 40 59 df    	vmulps zmm19,zmm20,zmm23
  a41d8d:	62 a1 2c 48 5c c0    	vsubps zmm16,zmm10,zmm16
  a41d93:	62 62 7d 48 18 15 3f 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff63373f]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a41d9a:	37 63 ff 
  a41d9d:	62 82 35 40 b8 da    	vfmadd231ps zmm19,zmm25,zmm26
  a41da3:	62 81 5c 40 59 e2    	vmulps zmm20,zmm20,zmm26
  a41da9:	62 82 45 40 bc e1    	vfnmadd231ps zmm20,zmm23,zmm25
  a41daf:	62 51 24 48 58 d4    	vaddps zmm10,zmm11,zmm12
  a41db5:	62 81 54 40 59 ed    	vmulps zmm21,zmm21,zmm29
  a41dbb:	62 f1 0c 48 5c c9    	vsubps zmm1,zmm14,zmm1
  a41dc1:	62 21 5c 48 58 cd    	vaddps zmm25,zmm4,zmm21
  a41dc7:	62 11 04 48 58 f8    	vaddps zmm15,zmm15,zmm24
  a41dcd:	62 31 14 48 58 f3    	vaddps zmm14,zmm13,zmm19
  a41dd3:	62 a1 3c 48 5c f6    	vsubps zmm22,zmm8,zmm22
  a41dd9:	62 51 34 40 58 c6    	vaddps zmm8,zmm25,zmm14
  a41ddf:	62 81 7c 40 59 c5    	vmulps zmm16,zmm16,zmm29
  a41de5:	62 f1 6c 40 58 c0    	vaddps zmm0,zmm18,zmm0
  a41deb:	62 a1 04 48 59 d7    	vmulps zmm18,zmm15,zmm23
  a41df1:	62 82 75 48 b8 d2    	vfmadd231ps zmm18,zmm1,zmm26
  a41df7:	62 01 04 48 59 c2    	vmulps zmm24,zmm15,zmm26
  a41dfd:	62 72 7d 48 18 3d e9 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff6336e9]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a41e04:	36 63 ff 
  a41e07:	62 22 75 48 bc c7    	vfnmadd231ps zmm24,zmm1,zmm23
  a41e0d:	62 c1 7c 48 59 ff    	vmulps zmm23,zmm0,zmm15
  a41e13:	62 f2 7d 48 18 0d db 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff6337db]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a41e1a:	37 63 ff 
  a41e1d:	62 e2 4d 40 bc f9    	vfnmadd231ps zmm23,zmm22,zmm1
  a41e23:	62 f1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm1
  a41e29:	62 b1 64 48 5c c8    	vsubps zmm1,zmm3,zmm16
  a41e2f:	62 d2 4d 40 b8 c7    	vfmadd231ps zmm0,zmm22,zmm15
  a41e35:	62 a1 74 40 58 f4    	vaddps zmm22,zmm17,zmm20
  a41e3b:	62 31 74 48 58 fe    	vaddps zmm15,zmm1,zmm22
  a41e41:	62 b1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm21
  a41e47:	62 a1 6c 40 58 ef    	vaddps zmm21,zmm18,zmm23
  a41e4d:	62 f1 7c 40 58 db    	vaddps zmm3,zmm16,zmm3
  a41e53:	62 21 5c 48 58 d5    	vaddps zmm26,zmm4,zmm21
  a41e59:	62 01 7c 48 28 de    	vmovaps zmm27,zmm30
  a41e5f:	62 12 0d 40 ac f1    	vfnmadd213ps zmm14,zmm30,zmm25
  a41e65:	62 e1 3c 40 5c c0    	vsubps zmm16,zmm24,zmm0
  a41e6b:	62 e2 0d 40 ac f1    	vfnmadd213ps zmm22,zmm30,zmm1
  a41e71:	62 91 7c 48 28 ce    	vmovaps zmm1,zmm30
  a41e77:	62 e2 0d 40 ac ec    	vfnmadd213ps zmm21,zmm30,zmm4
  a41e7d:	62 91 7c 48 28 e6    	vmovaps zmm4,zmm30
  a41e83:	62 62 7d 40 ac db    	vfnmadd213ps zmm27,zmm16,zmm3
  a41e89:	62 01 7c 48 28 f3    	vmovaps zmm30,zmm27
  a41e8f:	62 21 64 48 58 c8    	vaddps zmm25,zmm3,zmm16
  a41e95:	62 e1 7c 28 28 05 a1 	vmovaps ymm16,YMMWORD PTR [rip+0xffffffffff634da1]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a41e9c:	4d 63 ff 
  a41e9f:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a41ea5:	62 d1 7c 48 28 d8    	vmovaps zmm3,zmm8
  a41eab:	62 d2 7d 40 7f df    	vpermt2ps zmm3,zmm16,zmm15
  a41eb1:	62 51 44 48 5c e1    	vsubps zmm12,zmm7,zmm9
  a41eb7:	62 91 7c 48 28 fa    	vmovaps zmm7,zmm26
  a41ebd:	62 92 7d 40 7f f9    	vpermt2ps zmm7,zmm16,zmm25
  a41ec3:	62 f2 6d 48 ac cd    	vfnmadd213ps zmm1,zmm2,zmm5
  a41ec9:	62 01 24 48 59 dd    	vmulps zmm27,zmm11,zmm29
  a41ecf:	62 a1 74 40 5c cc    	vsubps zmm17,zmm17,zmm20
  a41ed5:	62 11 74 48 58 cb    	vaddps zmm9,zmm1,zmm27
  a41edb:	62 f2 2d 48 ac e6    	vfnmadd213ps zmm4,zmm10,zmm6
  a41ee1:	62 81 1c 48 59 e5    	vmulps zmm20,zmm12,zmm29
  a41ee7:	62 31 14 48 5c eb    	vsubps zmm13,zmm13,zmm19
  a41eed:	62 21 5c 48 5c e4    	vsubps zmm28,zmm4,zmm20
  a41ef3:	62 f1 3c 40 58 c0    	vaddps zmm0,zmm24,zmm0
  a41ef9:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a41eff:	62 12 7d 40 7f dc    	vpermt2ps zmm11,zmm16,zmm28
  a41f05:	62 81 74 40 59 dd    	vmulps zmm19,zmm17,zmm29
  a41f0b:	62 a1 6c 40 5c cf    	vsubps zmm17,zmm18,zmm23
  a41f11:	62 31 0c 48 58 e3    	vaddps zmm12,zmm14,zmm19
  a41f17:	62 81 14 48 59 d5    	vmulps zmm18,zmm13,zmm29
  a41f1d:	62 91 7c 48 59 c5    	vmulps zmm0,zmm0,zmm29
  a41f23:	62 81 74 40 59 fd    	vmulps zmm23,zmm17,zmm29
  a41f29:	62 21 4c 40 5c c2    	vsubps zmm24,zmm22,zmm18
  a41f2f:	62 91 74 48 5c cb    	vsubps zmm1,zmm1,zmm27
  a41f35:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a41f3b:	62 12 7d 40 7f e8    	vpermt2ps zmm13,zmm16,zmm24
  a41f41:	62 21 5c 48 58 dc    	vaddps zmm27,zmm4,zmm20
  a41f47:	62 e1 54 40 58 c8    	vaddps zmm17,zmm21,zmm0
  a41f4d:	62 31 0c 48 5c f3    	vsubps zmm14,zmm14,zmm19
  a41f53:	62 21 0c 40 5c ef    	vsubps zmm29,zmm30,zmm23
  a41f59:	62 a1 4c 40 58 f2    	vaddps zmm22,zmm22,zmm18
  a41f5f:	62 a1 7c 48 28 d9    	vmovaps zmm19,zmm17
  a41f65:	62 82 7d 40 7f dd    	vpermt2ps zmm19,zmm16,zmm29
  a41f6b:	62 e1 54 40 5c d0    	vsubps zmm18,zmm21,zmm0
  a41f71:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a41f77:	62 82 7d 40 7f e3    	vpermt2ps zmm20,zmm16,zmm27
  a41f7d:	62 a1 0c 40 58 ef    	vaddps zmm21,zmm30,zmm23
  a41f83:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a41f89:	62 b2 7d 40 7f c6    	vpermt2ps zmm0,zmm16,zmm22
  a41f8f:	62 f1 54 48 58 d2    	vaddps zmm2,zmm5,zmm2
  a41f95:	62 b1 7c 48 28 e2    	vmovaps zmm4,zmm18
  a41f9b:	62 b2 7d 40 7f e5    	vpermt2ps zmm4,zmm16,zmm21
  a41fa1:	62 d1 4c 48 58 ea    	vaddps zmm5,zmm6,zmm10
  a41fa7:	62 e2 6d 48 77 c5    	vpermi2ps zmm16,zmm2,zmm5
  a41fad:	62 f1 7c 48 28 35 09 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff64ff09]        # 91ec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f370>
  a41fb4:	ff 64 ff 
  a41fb7:	62 f2 4d 48 7f d5    	vpermt2ps zmm2,zmm6,zmm5
  a41fbd:	62 52 4d 48 7f c7    	vpermt2ps zmm8,zmm6,zmm15
  a41fc3:	62 02 4d 48 7f d1    	vpermt2ps zmm26,zmm6,zmm25
  a41fc9:	62 12 4d 48 7f cc    	vpermt2ps zmm9,zmm6,zmm28
  a41fcf:	62 12 4d 48 7f e0    	vpermt2ps zmm12,zmm6,zmm24
  a41fd5:	62 82 4d 48 7f cd    	vpermt2ps zmm17,zmm6,zmm29
  a41fdb:	62 92 4d 48 7f cb    	vpermt2ps zmm1,zmm6,zmm27
  a41fe1:	62 32 4d 48 7f f6    	vpermt2ps zmm14,zmm6,zmm22
  a41fe7:	62 a2 4d 48 7f d5    	vpermt2ps zmm18,zmm6,zmm21
  a41fed:	62 f1 7c 48 11 16    	vmovups ZMMWORD PTR [rsi],zmm2
  a41ff3:	62 e1 7c 28 11 46 02 	vmovups YMMWORD PTR [rsi+0x40],ymm16
  a41ffa:	62 71 7c 48 11 86 60 	vmovups ZMMWORD PTR [rsi+0x60],zmm8
  a42001:	00 00 00 
  a42004:	c5 fc 11 9e a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm3
  a4200b:	00 
  a4200c:	62 61 7c 48 11 56 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm26
  a42013:	c5 fc 11 be 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm7
  a4201a:	00 
  a4201b:	62 71 7c 48 11 8e 20 	vmovups ZMMWORD PTR [rsi+0x120],zmm9
  a42022:	01 00 00 
  a42025:	c5 7c 11 9e 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm11
  a4202c:	00 
  a4202d:	62 71 7c 48 11 66 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm12
  a42034:	c5 7c 11 ae c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm13
  a4203b:	00 
  a4203c:	62 e1 7c 48 11 8e e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm17
  a42043:	01 00 00 
  a42046:	62 e1 7c 28 11 5e 11 	vmovups YMMWORD PTR [rsi+0x220],ymm19
  a4204d:	62 f1 7c 48 11 4e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm1
  a42054:	62 e1 7c 28 11 66 14 	vmovups YMMWORD PTR [rsi+0x280],ymm20
  a4205b:	62 71 7c 48 11 b6 a0 	vmovups ZMMWORD PTR [rsi+0x2a0],zmm14
  a42062:	02 00 00 
  a42065:	c5 fc 11 86 e0 02 00 	vmovups YMMWORD PTR [rsi+0x2e0],ymm0
  a4206c:	00 
  a4206d:	62 e1 7c 48 11 56 0c 	vmovups ZMMWORD PTR [rsi+0x300],zmm18
  a42074:	c5 fc 11 a6 40 03 00 	vmovups YMMWORD PTR [rsi+0x340],ymm4
  a4207b:	00 
  a4207c:	48 81 c4 08 02 00 00 	add    rsp,0x208
  a42083:	c5 f8 77             	vzeroupper
  a42086:	c3                   	ret
