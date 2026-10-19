
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a42400 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a42400:	55                   	push   rbp
  a42401:	48 89 e5             	mov    rbp,rsp
  a42404:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a42408:	48 81 ec 40 03 00 00 	sub    rsp,0x340
  a4240f:	c6 84 24 c0 02 00 00 	mov    BYTE PTR [rsp+0x2c0],0x0
  a42416:	00 
  a42417:	48 8d 84 24 c0 02 00 	lea    rax,[rsp+0x2c0]
  a4241e:	00 
  a4241f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a42424:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a42429:	62 f1 7c 48 10 2f    	vmovups zmm5,ZMMWORD PTR [rdi]
  a4242f:	c5 fb 10 57 40       	vmovsd xmm2,QWORD PTR [rdi+0x40]
  a42434:	62 f1 7c 48 28 0d 02 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff64fa02]        # 91e40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f2f0>
  a4243b:	fa 64 ff 
  a4243e:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a42444:	62 e2 75 48 7f e2    	vpermt2ps zmm20,zmm1,zmm2
  a4244a:	62 f1 7c 48 28 25 2c 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff64fa2c]        # 91e80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f330>
  a42451:	fa 64 ff 
  a42454:	62 f2 5d 48 7f ea    	vpermt2ps zmm5,zmm4,zmm2
  a4245a:	62 71 7c 48 10 87 48 	vmovups zmm8,ZMMWORD PTR [rdi+0x48]
  a42461:	00 00 00 
  a42464:	c5 fb 10 9f 88 00 00 	vmovsd xmm3,QWORD PTR [rdi+0x88]
  a4246b:	00 
  a4246c:	62 c1 7c 48 28 f0    	vmovaps zmm22,zmm8
  a42472:	62 e2 75 48 7f f3    	vpermt2ps zmm22,zmm1,zmm3
  a42478:	62 72 5d 48 7f c3    	vpermt2ps zmm8,zmm4,zmm3
  a4247e:	62 f1 7c 48 10 b7 90 	vmovups zmm6,ZMMWORD PTR [rdi+0x90]
  a42485:	00 00 00 
  a42488:	c5 fb 10 9f d0 00 00 	vmovsd xmm3,QWORD PTR [rdi+0xd0]
  a4248f:	00 
  a42490:	62 71 7c 48 28 ee    	vmovaps zmm13,zmm6
  a42496:	62 72 75 48 7f eb    	vpermt2ps zmm13,zmm1,zmm3
  a4249c:	62 f2 5d 48 7f f3    	vpermt2ps zmm6,zmm4,zmm3
  a424a2:	62 71 7c 48 10 8f d8 	vmovups zmm9,ZMMWORD PTR [rdi+0xd8]
  a424a9:	00 00 00 
  a424ac:	c5 fb 10 bf 18 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x118]
  a424b3:	00 
  a424b4:	62 41 7c 48 28 e1    	vmovaps zmm28,zmm9
  a424ba:	62 62 75 48 7f e7    	vpermt2ps zmm28,zmm1,zmm7
  a424c0:	62 72 5d 48 7f cf    	vpermt2ps zmm9,zmm4,zmm7
  a424c6:	62 71 7c 48 10 97 20 	vmovups zmm10,ZMMWORD PTR [rdi+0x120]
  a424cd:	01 00 00 
  a424d0:	c5 fb 10 bf 60 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x160]
  a424d7:	00 
  a424d8:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a424de:	62 72 75 48 7f df    	vpermt2ps zmm11,zmm1,zmm7
  a424e4:	62 72 5d 48 7f d7    	vpermt2ps zmm10,zmm4,zmm7
  a424ea:	62 71 7c 48 10 bf 68 	vmovups zmm15,ZMMWORD PTR [rdi+0x168]
  a424f1:	01 00 00 
  a424f4:	c5 fb 10 bf a8 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x1a8]
  a424fb:	00 
  a424fc:	62 51 7c 48 28 f7    	vmovaps zmm14,zmm15
  a42502:	62 72 75 48 7f f7    	vpermt2ps zmm14,zmm1,zmm7
  a42508:	62 72 5d 48 7f ff    	vpermt2ps zmm15,zmm4,zmm7
  a4250e:	62 71 7c 48 10 a7 b0 	vmovups zmm12,ZMMWORD PTR [rdi+0x1b0]
  a42515:	01 00 00 
  a42518:	c5 fb 10 bf f0 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x1f0]
  a4251f:	00 
  a42520:	62 c1 7c 48 28 dc    	vmovaps zmm19,zmm12
  a42526:	62 e2 75 48 7f df    	vpermt2ps zmm19,zmm1,zmm7
  a4252c:	62 72 5d 48 7f e7    	vpermt2ps zmm12,zmm4,zmm7
  a42532:	62 e1 7c 48 10 bf f8 	vmovups zmm23,ZMMWORD PTR [rdi+0x1f8]
  a42539:	01 00 00 
  a4253c:	c5 fb 10 bf 38 02 00 	vmovsd xmm7,QWORD PTR [rdi+0x238]
  a42543:	00 
  a42544:	62 a1 7c 48 28 c7    	vmovaps zmm16,zmm23
  a4254a:	62 e2 75 48 7f c7    	vpermt2ps zmm16,zmm1,zmm7
  a42550:	62 e2 5d 48 7f ff    	vpermt2ps zmm23,zmm4,zmm7
  a42556:	62 e1 7c 48 10 57 09 	vmovups zmm18,ZMMWORD PTR [rdi+0x240]
  a4255d:	c5 fb 10 bf 80 02 00 	vmovsd xmm7,QWORD PTR [rdi+0x280]
  a42564:	00 
  a42565:	62 21 7c 48 28 c2    	vmovaps zmm24,zmm18
  a4256b:	62 62 75 48 7f c7    	vpermt2ps zmm24,zmm1,zmm7
  a42571:	62 e2 5d 48 7f d7    	vpermt2ps zmm18,zmm4,zmm7
  a42577:	62 61 7c 48 10 8f 88 	vmovups zmm25,ZMMWORD PTR [rdi+0x288]
  a4257e:	02 00 00 
  a42581:	c5 fb 10 bf c8 02 00 	vmovsd xmm7,QWORD PTR [rdi+0x2c8]
  a42588:	00 
  a42589:	62 81 7c 48 28 c9    	vmovaps zmm17,zmm25
  a4258f:	62 e2 75 48 7f cf    	vpermt2ps zmm17,zmm1,zmm7
  a42595:	62 62 5d 48 7f cf    	vpermt2ps zmm25,zmm4,zmm7
  a4259b:	62 61 7c 48 10 97 d0 	vmovups zmm26,ZMMWORD PTR [rdi+0x2d0]
  a425a2:	02 00 00 
  a425a5:	c5 fb 10 bf 10 03 00 	vmovsd xmm7,QWORD PTR [rdi+0x310]
  a425ac:	00 
  a425ad:	62 81 7c 48 28 ea    	vmovaps zmm21,zmm26
  a425b3:	62 e2 75 48 7f ef    	vpermt2ps zmm21,zmm1,zmm7
  a425b9:	62 62 5d 48 7f d7    	vpermt2ps zmm26,zmm4,zmm7
  a425bf:	62 61 7c 48 10 9f 18 	vmovups zmm27,ZMMWORD PTR [rdi+0x318]
  a425c6:	03 00 00 
  a425c9:	c5 fb 10 bf 58 03 00 	vmovsd xmm7,QWORD PTR [rdi+0x358]
  a425d0:	00 
  a425d1:	62 f2 25 40 77 cf    	vpermi2ps zmm1,zmm27,zmm7
  a425d7:	62 62 5d 48 7f df    	vpermt2ps zmm27,zmm4,zmm7
  a425dd:	62 b1 5c 40 58 c3    	vaddps zmm0,zmm20,zmm19
  a425e3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a425ea:	02 
  a425eb:	62 b1 1c 40 58 f9    	vaddps zmm7,zmm28,zmm17
  a425f1:	62 f1 7c 48 58 c7    	vaddps zmm0,zmm0,zmm7
  a425f7:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a425fe:	01 
  a425ff:	62 b1 24 48 58 e5    	vaddps zmm4,zmm11,zmm21
  a42605:	62 21 7c 40 58 ee    	vaddps zmm29,zmm16,zmm22
  a4260b:	62 91 5c 48 58 c5    	vaddps zmm0,zmm4,zmm29
  a42611:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a42618:	04 
  a42619:	62 41 3c 40 58 f5    	vaddps zmm30,zmm24,zmm13
  a4261f:	62 41 74 48 58 fe    	vaddps zmm31,zmm1,zmm14
  a42625:	62 b1 24 48 5c c5    	vsubps zmm0,zmm11,zmm21
  a4262b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a42632:	06 
  a42633:	62 d1 44 40 58 d8    	vaddps zmm3,zmm23,zmm8
  a42639:	62 c1 44 40 5c e8    	vsubps zmm21,zmm23,zmm8
  a4263f:	62 91 0c 40 58 d7    	vaddps zmm2,zmm30,zmm31
  a42645:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a4264c:	05 
  a4264d:	62 51 3c 40 5c ed    	vsubps zmm13,zmm24,zmm13
  a42653:	62 51 24 40 58 c7    	vaddps zmm8,zmm27,zmm15
  a42659:	62 41 24 40 5c c7    	vsubps zmm24,zmm27,zmm15
  a4265f:	62 41 54 48 58 dc    	vaddps zmm27,zmm5,zmm12
  a42665:	62 a1 5c 40 5c db    	vsubps zmm19,zmm20,zmm19
  a4266b:	62 81 34 48 58 e1    	vaddps zmm20,zmm9,zmm25
  a42671:	62 11 34 48 5c c9    	vsubps zmm9,zmm9,zmm25
  a42677:	62 01 2c 48 58 ca    	vaddps zmm25,zmm10,zmm26
  a4267d:	62 81 2c 48 5c fa    	vsubps zmm23,zmm10,zmm26
  a42683:	62 61 6c 40 58 d6    	vaddps zmm26,zmm18,zmm6
  a42689:	62 31 4c 40 5c d0    	vsubps zmm10,zmm22,zmm16
  a4268f:	62 31 2c 48 58 ff    	vaddps zmm15,zmm10,zmm23
  a42695:	62 71 6c 40 5c de    	vsubps zmm11,zmm18,zmm6
  a4269b:	62 e1 0c 48 5c f1    	vsubps zmm22,zmm14,zmm1
  a426a1:	62 d1 4c 40 58 cb    	vaddps zmm1,zmm22,zmm11
  a426a7:	62 f1 04 48 5c f1    	vsubps zmm6,zmm15,zmm1
  a426ad:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm6
  a426b4:	08 
  a426b5:	62 f1 04 48 58 c9    	vaddps zmm1,zmm15,zmm1
  a426bb:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a426c2:	03 
  a426c3:	62 b1 7c 48 58 cd    	vaddps zmm1,zmm0,zmm21
  a426c9:	62 d1 54 48 5c ec    	vsubps zmm5,zmm5,zmm12
  a426cf:	62 11 14 48 58 e0    	vaddps zmm12,zmm13,zmm24
  a426d5:	62 81 74 40 5c cc    	vsubps zmm17,zmm17,zmm28
  a426db:	62 d1 74 48 58 f4    	vaddps zmm6,zmm1,zmm12
  a426e1:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm6
  a426e8:	09 
  a426e9:	62 d1 74 48 5c c4    	vsubps zmm0,zmm1,zmm12
  a426ef:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a426f6:	07 
  a426f7:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x100]
  a426fe:	04 
  a426ff:	62 71 6c 40 58 f2    	vaddps zmm14,zmm18,zmm2
  a42705:	62 91 5c 48 5c cd    	vsubps zmm1,zmm4,zmm29
  a4270b:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a42712:	01 
  a42713:	62 51 6c 48 58 fe    	vaddps zmm15,zmm2,zmm14
  a42719:	62 01 0c 40 5c e7    	vsubps zmm28,zmm30,zmm31
  a4271f:	62 21 24 40 58 ec    	vaddps zmm29,zmm27,zmm20
  a42725:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a4272c:	02 
  a4272d:	62 61 7c 48 5c f7    	vsubps zmm30,zmm0,zmm7
  a42733:	62 f1 34 40 58 e3    	vaddps zmm4,zmm25,zmm3
  a42739:	62 f1 34 40 5c c3    	vsubps zmm0,zmm25,zmm3
  a4273f:	62 d1 2c 40 58 f8    	vaddps zmm7,zmm26,zmm8
  a42745:	62 51 2c 40 5c c0    	vsubps zmm8,zmm26,zmm8
  a4274b:	62 41 7c 48 5c c8    	vsubps zmm25,zmm0,zmm8
  a42751:	62 41 7c 48 58 f8    	vaddps zmm31,zmm0,zmm8
  a42757:	62 e1 5c 48 58 c7    	vaddps zmm16,zmm4,zmm7
  a4275d:	62 a1 24 40 5c e4    	vsubps zmm20,zmm27,zmm20
  a42763:	62 01 74 48 58 d4    	vaddps zmm26,zmm1,zmm28
  a42769:	62 01 74 48 5c dc    	vsubps zmm27,zmm1,zmm28
  a4276f:	62 51 64 40 58 c1    	vaddps zmm8,zmm19,zmm9
  a42775:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm8
  a4277c:	0a 
  a4277d:	62 c1 64 40 5c d9    	vsubps zmm19,zmm19,zmm9
  a42783:	62 f2 7d 48 18 05 d3 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff632cd3]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a4278a:	2c 63 ff 
  a4278d:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a42794:	06 
  a42795:	62 a1 74 48 5c ed    	vsubps zmm21,zmm1,zmm21
  a4279b:	62 b1 14 40 58 c8    	vaddps zmm1,zmm29,zmm16
  a427a1:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a427a8:	02 
  a427a9:	62 11 14 48 5c e8    	vsubps zmm13,zmm13,zmm24
  a427af:	62 61 74 40 58 c5    	vaddps zmm24,zmm17,zmm5
  a427b5:	62 a1 54 48 5c c9    	vsubps zmm17,zmm5,zmm17
  a427bb:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a427c1:	62 d1 44 40 5c da    	vsubps zmm3,zmm23,zmm10
  a427c7:	62 f2 7d 48 18 0d 03 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff632b03]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a427ce:	2b 63 ff 
  a427d1:	62 52 4d 48 ac c8    	vfnmadd213ps zmm9,zmm6,zmm8
  a427d7:	62 71 74 48 59 54 24 	vmulps zmm10,zmm1,ZMMWORD PTR [rsp+0x200]
  a427de:	08 
  a427df:	62 31 24 48 5c de    	vsubps zmm11,zmm11,zmm22
  a427e5:	62 51 2c 48 58 e1    	vaddps zmm12,zmm10,zmm9
  a427eb:	62 72 7d 48 ac f2    	vfnmadd213ps zmm14,zmm0,zmm2
  a427f1:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a427f7:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0xc0]
  a427fe:	03 
  a427ff:	62 82 3d 48 ac f0    	vfnmadd213ps zmm22,zmm8,zmm24
  a42805:	62 81 7c 48 28 f8    	vmovaps zmm23,zmm24
  a4280b:	62 61 74 48 59 44 24 	vmulps zmm24,zmm1,ZMMWORD PTR [rsp+0x1c0]
  a42812:	07 
  a42813:	62 61 5c 48 5c e7    	vsubps zmm28,zmm4,zmm7
  a42819:	62 91 4c 40 5c d0    	vsubps zmm2,zmm22,zmm24
  a4281f:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a42826:	01 
  a42827:	62 82 7d 48 ac c5    	vfnmadd213ps zmm16,zmm0,zmm29
  a4282d:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a42833:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a42839:	62 02 2d 40 ac ee    	vfnmadd213ps zmm29,zmm26,zmm30
  a4283f:	62 f1 34 40 59 f1    	vmulps zmm6,zmm25,zmm1
  a42845:	62 f1 6c 40 5c 7c 24 	vsubps zmm7,zmm18,ZMMWORD PTR [rsp+0x140]
  a4284c:	05 
  a4284d:	62 f1 14 40 5c e6    	vsubps zmm4,zmm29,zmm6
  a42853:	62 51 34 48 5c ca    	vsubps zmm9,zmm9,zmm10
  a42859:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a4285f:	62 b2 05 40 ac d4    	vfnmadd213ps zmm2,zmm31,zmm20
  a42865:	62 f1 24 40 59 c1    	vmulps zmm0,zmm27,zmm1
  a4286b:	62 11 4c 40 58 d0    	vaddps zmm10,zmm22,zmm24
  a42871:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm10
  a42878:	04 
  a42879:	62 71 7c 48 58 d2    	vaddps zmm10,zmm0,zmm2
  a4287f:	62 01 0c 40 58 d2    	vaddps zmm26,zmm30,zmm26
  a42885:	62 c1 54 40 58 f5    	vaddps zmm22,zmm21,zmm13
  a4288b:	62 81 5c 40 58 e7    	vaddps zmm20,zmm20,zmm31
  a42891:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm20
  a42898:	05 
  a42899:	62 21 64 40 58 ce    	vaddps zmm25,zmm19,zmm22
  a4289f:	62 a2 55 48 ac f3    	vfnmadd213ps zmm22,zmm5,zmm19
  a428a5:	62 c1 64 48 58 db    	vaddps zmm19,zmm3,zmm11
  a428ab:	62 d1 64 48 5c db    	vsubps zmm3,zmm3,zmm11
  a428b1:	62 31 74 40 58 db    	vaddps zmm11,zmm17,zmm19
  a428b7:	62 e1 1c 40 59 e1    	vmulps zmm20,zmm28,zmm1
  a428bd:	62 a2 55 48 ac d9    	vfnmadd213ps zmm19,zmm5,zmm17
  a428c3:	62 21 0c 48 58 e4    	vaddps zmm28,zmm14,zmm20
  a428c9:	62 f1 44 48 59 e9    	vmulps zmm5,zmm7,zmm1
  a428cf:	62 c1 54 40 5c cd    	vsubps zmm17,zmm21,zmm13
  a428d5:	62 71 7c 40 5c ed    	vsubps zmm13,zmm16,zmm5
  a428db:	62 f1 64 48 59 d9    	vmulps zmm3,zmm3,zmm1
  a428e1:	62 a1 0c 48 5c e4    	vsubps zmm20,zmm14,zmm20
  a428e7:	62 21 64 48 58 de    	vaddps zmm27,zmm3,zmm22
  a428ed:	62 e1 74 40 59 c9    	vmulps zmm17,zmm17,zmm1
  a428f3:	62 21 54 48 58 c0    	vaddps zmm24,zmm5,zmm16
  a428f9:	62 31 64 40 5c f1    	vsubps zmm14,zmm19,zmm17
  a428ff:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x240]
  a42906:	09 
  a42907:	62 f1 74 48 58 6c 24 	vaddps zmm5,zmm1,ZMMWORD PTR [rsp+0x280]
  a4290e:	0a 
  a4290f:	62 c1 44 40 58 f8    	vaddps zmm23,zmm23,zmm8
  a42915:	62 f1 14 40 58 ce    	vaddps zmm1,zmm29,zmm6
  a4291b:	62 e1 6c 48 5c e8    	vsubps zmm21,zmm2,zmm0
  a42921:	62 f1 4c 40 5c c3    	vsubps zmm0,zmm22,zmm3
  a42927:	62 b1 64 40 58 f1    	vaddps zmm6,zmm19,zmm17
  a4292d:	62 e1 7c 48 28 05 49 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff684649]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a42934:	46 68 ff 
  a42937:	62 51 7c 48 28 c7    	vmovaps zmm8,zmm15
  a4293d:	62 32 7d 40 7f c4    	vpermt2ps zmm8,zmm16,zmm20
  a42943:	62 e1 7c 48 28 0d 73 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff684673]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a4294a:	46 68 ff 
  a4294d:	62 32 75 40 7f fc    	vpermt2ps zmm15,zmm17,zmm20
  a42953:	62 41 7c 48 28 ec    	vmovaps zmm29,zmm12
  a42959:	62 62 7d 40 7f ed    	vpermt2ps zmm29,zmm16,zmm5
  a4295f:	62 72 75 40 7f e5    	vpermt2ps zmm12,zmm17,zmm5
  a42965:	62 61 7c 48 28 f4    	vmovaps zmm30,zmm4
  a4296b:	62 62 7d 40 7f f1    	vpermt2ps zmm30,zmm16,zmm1
  a42971:	62 f2 75 40 7f e1    	vpermt2ps zmm4,zmm17,zmm1
  a42977:	62 01 7c 48 28 f9    	vmovaps zmm31,zmm25
  a4297d:	62 62 7d 40 7f f8    	vpermt2ps zmm31,zmm16,zmm0
  a42983:	62 62 75 40 7f c8    	vpermt2ps zmm25,zmm17,zmm0
  a42989:	62 a1 4c 00 57 f6    	vxorps xmm22,xmm22,xmm22
  a4298f:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a42995:	62 b2 7d 40 7f c6    	vpermt2ps zmm0,zmm16,zmm22
  a4299b:	62 e1 7c 48 28 15 5b 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff68455b]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a429a2:	45 68 ff 
  a429a5:	62 d1 7c 48 28 c8    	vmovaps zmm1,zmm8
  a429ab:	62 f2 6d 40 7f c8    	vpermt2ps zmm1,zmm18,zmm0
  a429b1:	62 e1 7c 48 28 25 85 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff684585]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a429b8:	45 68 ff 
  a429bb:	62 72 5d 40 7f c0    	vpermt2ps zmm8,zmm20,zmm0
  a429c1:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a429c7:	62 b2 7d 40 7f c6    	vpermt2ps zmm0,zmm16,zmm22
  a429cd:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  a429d3:	62 f2 6d 40 7f d0    	vpermt2ps zmm2,zmm18,zmm0
  a429d9:	62 62 5d 40 7f e8    	vpermt2ps zmm29,zmm20,zmm0
  a429df:	62 91 7c 48 28 c2    	vmovaps zmm0,zmm26
  a429e5:	62 b2 7d 40 7f c6    	vpermt2ps zmm0,zmm16,zmm22
  a429eb:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a429f1:	62 f2 6d 40 7f d8    	vpermt2ps zmm3,zmm18,zmm0
  a429f7:	62 62 5d 40 7f f0    	vpermt2ps zmm30,zmm20,zmm0
  a429fd:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a42a03:	62 b2 7d 40 7f c6    	vpermt2ps zmm0,zmm16,zmm22
  a42a09:	62 91 7c 48 28 ef    	vmovaps zmm5,zmm31
  a42a0f:	62 f2 6d 40 7f e8    	vpermt2ps zmm5,zmm18,zmm0
  a42a15:	62 62 5d 40 7f f8    	vpermt2ps zmm31,zmm20,zmm0
  a42a1b:	62 22 75 40 7f e6    	vpermt2ps zmm28,zmm17,zmm22
  a42a21:	62 12 6d 40 7f fc    	vpermt2ps zmm15,zmm18,zmm28
  a42a27:	62 32 75 40 7f ce    	vpermt2ps zmm9,zmm17,zmm22
  a42a2d:	62 52 6d 40 7f e1    	vpermt2ps zmm12,zmm18,zmm9
  a42a33:	62 22 75 40 7f d6    	vpermt2ps zmm26,zmm17,zmm22
  a42a39:	62 92 6d 40 7f e2    	vpermt2ps zmm4,zmm18,zmm26
  a42a3f:	62 22 75 40 7f de    	vpermt2ps zmm27,zmm17,zmm22
  a42a45:	62 71 85 48 14 cc    	vunpcklpd zmm9,zmm15,zmm4
  a42a4b:	62 02 6d 40 7f cb    	vpermt2ps zmm25,zmm18,zmm27
  a42a51:	62 91 9d 48 14 c1    	vunpcklpd zmm0,zmm12,zmm25
  a42a57:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a42a5e:	03 
  a42a5f:	62 71 f5 48 14 e3    	vunpcklpd zmm12,zmm1,zmm3
  a42a65:	62 71 f5 48 15 fb    	vunpckhpd zmm15,zmm1,zmm3
  a42a6b:	62 f1 ed 48 14 cd    	vunpcklpd zmm1,zmm2,zmm5
  a42a71:	62 f1 ed 48 15 d5    	vunpckhpd zmm2,zmm2,zmm5
  a42a77:	62 81 bd 48 14 de    	vunpcklpd zmm19,zmm8,zmm30
  a42a7d:	62 01 bd 48 15 d6    	vunpckhpd zmm26,zmm8,zmm30
  a42a83:	62 91 95 40 14 df    	vunpcklpd zmm3,zmm29,zmm31
  a42a89:	62 01 95 40 15 ef    	vunpckhpd zmm29,zmm29,zmm31
  a42a8f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a42a96:	02 
  a42a97:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a42a9d:	62 02 7d 40 7f c8    	vpermt2ps zmm25,zmm16,zmm24
  a42aa3:	62 92 75 40 7f c0    	vpermt2ps zmm0,zmm17,zmm24
  a42aa9:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a42aaf:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x40]
  a42ab6:	01 
  a42ab7:	62 61 7c 48 28 c4    	vmovaps zmm24,zmm4
  a42abd:	62 22 7d 40 7f c7    	vpermt2ps zmm24,zmm16,zmm23
  a42ac3:	62 b2 75 40 7f e7    	vpermt2ps zmm4,zmm17,zmm23
  a42ac9:	62 c1 7c 48 28 fa    	vmovaps zmm23,zmm10
  a42acf:	62 a2 7d 40 7f fd    	vpermt2ps zmm23,zmm16,zmm21
  a42ad5:	62 32 75 40 7f d5    	vpermt2ps zmm10,zmm17,zmm21
  a42adb:	62 41 7c 48 28 db    	vmovaps zmm27,zmm11
  a42ae1:	62 62 7d 40 7f de    	vpermt2ps zmm27,zmm16,zmm6
  a42ae7:	62 72 75 40 7f de    	vpermt2ps zmm11,zmm17,zmm6
  a42aed:	62 d1 7c 48 28 ed    	vmovaps zmm5,zmm13
  a42af3:	62 b2 7d 40 7f ee    	vpermt2ps zmm5,zmm16,zmm22
  a42af9:	62 32 75 40 7f ee    	vpermt2ps zmm13,zmm17,zmm22
  a42aff:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x100]
  a42b06:	04 
  a42b07:	62 41 7c 48 28 f0    	vmovaps zmm30,zmm8
  a42b0d:	62 22 7d 40 7f f6    	vpermt2ps zmm30,zmm16,zmm22
  a42b13:	62 32 75 40 7f c6    	vpermt2ps zmm8,zmm17,zmm22
  a42b19:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x140]
  a42b20:	05 
  a42b21:	62 61 7c 48 28 fe    	vmovaps zmm31,zmm6
  a42b27:	62 22 7d 40 7f fe    	vpermt2ps zmm31,zmm16,zmm22
  a42b2d:	62 b2 75 40 7f f6    	vpermt2ps zmm6,zmm17,zmm22
  a42b33:	62 a2 0d 48 77 c6    	vpermi2ps zmm16,zmm14,zmm22
  a42b39:	62 32 75 40 7f f6    	vpermt2ps zmm14,zmm17,zmm22
  a42b3f:	62 61 7c 48 28 25 b7 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff6842b7]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a42b46:	42 68 ff 
  a42b49:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a42b4f:	62 f2 1d 40 7f c1    	vpermt2ps zmm0,zmm28,zmm1
  a42b55:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a42b5c:	02 
  a42b5d:	62 f1 7c 48 28 05 d9 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6842d9]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a42b64:	42 68 ff 
  a42b67:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a42b6d:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a42b73:	62 e2 1d 40 7f ca    	vpermt2ps zmm17,zmm28,zmm2
  a42b79:	62 72 7d 48 7f fa    	vpermt2ps zmm15,zmm0,zmm2
  a42b7f:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a42b85:	62 e2 1d 40 7f db    	vpermt2ps zmm19,zmm28,zmm3
  a42b8b:	62 f2 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm3
  a42b91:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a42b98:	01 
  a42b99:	62 81 7c 48 28 ea    	vmovaps zmm21,zmm26
  a42b9f:	62 82 1d 40 7f ed    	vpermt2ps zmm21,zmm28,zmm29
  a42ba5:	62 02 7d 48 7f d5    	vpermt2ps zmm26,zmm0,zmm29
  a42bab:	62 72 1d 40 7f 4c 24 	vpermt2ps zmm9,zmm28,ZMMWORD PTR [rsp+0xc0]
  a42bb2:	03 
  a42bb3:	62 41 7c 48 28 e9    	vmovaps zmm29,zmm9
  a42bb9:	62 91 7c 48 28 c9    	vmovaps zmm1,zmm25
  a42bbf:	62 f2 6d 40 7f cd    	vpermt2ps zmm1,zmm18,zmm5
  a42bc5:	62 62 5d 40 7f cd    	vpermt2ps zmm25,zmm20,zmm5
  a42bcb:	62 91 7c 48 28 d0    	vmovaps zmm2,zmm24
  a42bd1:	62 92 6d 40 7f d6    	vpermt2ps zmm2,zmm18,zmm30
  a42bd7:	62 02 5d 40 7f c6    	vpermt2ps zmm24,zmm20,zmm30
  a42bdd:	62 b1 7c 48 28 df    	vmovaps zmm3,zmm23
  a42be3:	62 92 6d 40 7f df    	vpermt2ps zmm3,zmm18,zmm31
  a42be9:	62 82 5d 40 7f ff    	vpermt2ps zmm23,zmm20,zmm31
  a42bef:	62 91 7c 48 28 eb    	vmovaps zmm5,zmm27
  a42bf5:	62 22 5d 40 7f d8    	vpermt2ps zmm27,zmm20,zmm16
  a42bfb:	62 b2 6d 40 7f e8    	vpermt2ps zmm5,zmm18,zmm16
  a42c01:	62 d2 6d 40 7f fd    	vpermt2ps zmm7,zmm18,zmm13
  a42c07:	62 d2 6d 40 7f e0    	vpermt2ps zmm4,zmm18,zmm8
  a42c0d:	62 72 6d 40 7f d6    	vpermt2ps zmm10,zmm18,zmm6
  a42c13:	62 51 c5 48 14 ca    	vunpcklpd zmm9,zmm7,zmm10
  a42c19:	62 52 6d 40 7f de    	vpermt2ps zmm11,zmm18,zmm14
  a42c1f:	62 51 dd 48 14 d3    	vunpcklpd zmm10,zmm4,zmm11
  a42c25:	62 71 f5 48 14 eb    	vunpcklpd zmm13,zmm1,zmm3
  a42c2b:	62 71 f5 48 15 f3    	vunpckhpd zmm14,zmm1,zmm3
  a42c31:	62 f1 ed 48 14 cd    	vunpcklpd zmm1,zmm2,zmm5
  a42c37:	62 f1 ed 48 15 d5    	vunpckhpd zmm2,zmm2,zmm5
  a42c3d:	62 b1 b5 40 14 ff    	vunpcklpd zmm7,zmm25,zmm23
  a42c43:	62 31 b5 40 15 df    	vunpckhpd zmm11,zmm25,zmm23
  a42c49:	62 81 bd 40 14 c3    	vunpcklpd zmm16,zmm24,zmm27
  a42c4f:	62 81 bd 40 15 d3    	vunpckhpd zmm18,zmm24,zmm27
  a42c55:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a42c5b:	62 f2 1d 40 7f d9    	vpermt2ps zmm3,zmm28,zmm1
  a42c61:	62 72 7d 48 7f e9    	vpermt2ps zmm13,zmm0,zmm1
  a42c67:	62 d1 7c 48 28 ee    	vmovaps zmm5,zmm14
  a42c6d:	62 f2 1d 40 7f ea    	vpermt2ps zmm5,zmm28,zmm2
  a42c73:	62 72 7d 48 7f f2    	vpermt2ps zmm14,zmm0,zmm2
  a42c79:	62 e1 7c 48 28 f7    	vmovaps zmm22,zmm7
  a42c7f:	62 a2 1d 40 7f f0    	vpermt2ps zmm22,zmm28,zmm16
  a42c85:	62 b2 7d 48 7f f8    	vpermt2ps zmm7,zmm0,zmm16
  a42c8b:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a42c91:	62 b2 1d 40 7f ca    	vpermt2ps zmm1,zmm28,zmm18
  a42c97:	62 32 7d 48 7f da    	vpermt2ps zmm11,zmm0,zmm18
  a42c9d:	62 52 1d 40 7f ca    	vpermt2ps zmm9,zmm28,zmm10
  a42ca3:	62 f1 7c 48 10 42 02 	vmovups zmm0,ZMMWORD PTR [rdx+0x80]
  a42caa:	62 e1 7c 48 10 7a 03 	vmovups zmm23,ZMMWORD PTR [rdx+0xc0]
  a42cb1:	62 e1 7c 48 10 52 04 	vmovups zmm18,ZMMWORD PTR [rdx+0x100]
  a42cb8:	62 e1 7c 48 10 62 05 	vmovups zmm20,ZMMWORD PTR [rdx+0x140]
  a42cbf:	62 f1 7c 48 10 52 06 	vmovups zmm2,ZMMWORD PTR [rdx+0x180]
  a42cc6:	62 e1 7c 48 10 42 07 	vmovups zmm16,ZMMWORD PTR [rdx+0x1c0]
  a42ccd:	62 61 7c 48 10 4a 08 	vmovups zmm25,ZMMWORD PTR [rdx+0x200]
  a42cd4:	62 71 04 48 59 d2    	vmulps zmm10,zmm15,zmm2
  a42cda:	62 32 0d 48 bc d0    	vfnmadd231ps zmm10,zmm14,zmm16
  a42ce0:	62 61 0c 48 59 c2    	vmulps zmm24,zmm14,zmm2
  a42ce6:	62 f1 7c 48 10 52 0c 	vmovups zmm2,ZMMWORD PTR [rdx+0x300]
  a42ced:	62 42 7d 40 b8 c7    	vfmadd231ps zmm24,zmm16,zmm15
  a42cf3:	62 71 7c 48 10 72 0d 	vmovups zmm14,ZMMWORD PTR [rdx+0x340]
  a42cfa:	62 e1 54 40 59 c2    	vmulps zmm16,zmm21,zmm2
  a42d00:	62 c2 75 48 bc c6    	vfnmadd231ps zmm16,zmm1,zmm14
  a42d06:	62 f1 74 48 59 ca    	vmulps zmm1,zmm1,zmm2
  a42d0c:	62 f1 7c 48 10 52 09 	vmovups zmm2,ZMMWORD PTR [rdx+0x240]
  a42d13:	62 b2 0d 48 b8 cd    	vfmadd231ps zmm1,zmm14,zmm21
  a42d19:	62 e1 7c 48 10 6a 0a 	vmovups zmm21,ZMMWORD PTR [rdx+0x280]
  a42d20:	62 71 1c 48 59 f0    	vmulps zmm14,zmm12,zmm0
  a42d26:	62 32 15 48 bc f7    	vfnmadd231ps zmm14,zmm13,zmm23
  a42d2c:	62 71 14 48 59 f8    	vmulps zmm15,zmm13,zmm0
  a42d32:	62 f1 7c 48 10 42 0b 	vmovups zmm0,ZMMWORD PTR [rdx+0x2c0]
  a42d39:	62 52 45 40 b8 fc    	vfmadd231ps zmm15,zmm23,zmm12
  a42d3f:	62 71 7c 48 10 62 0e 	vmovups zmm12,ZMMWORD PTR [rdx+0x380]
  a42d46:	62 11 64 40 59 e9    	vmulps zmm13,zmm19,zmm25
  a42d4c:	62 72 4d 40 bc ea    	vfnmadd231ps zmm13,zmm22,zmm2
  a42d52:	62 81 4c 40 59 f1    	vmulps zmm22,zmm22,zmm25
  a42d58:	62 e1 7c 48 10 7a 0f 	vmovups zmm23,ZMMWORD PTR [rdx+0x3c0]
  a42d5f:	62 a2 6d 48 b8 f3    	vfmadd231ps zmm22,zmm2,zmm19
  a42d65:	62 f1 7c 48 10 52 10 	vmovups zmm2,ZMMWORD PTR [rdx+0x400]
  a42d6c:	62 41 2c 40 59 cc    	vmulps zmm25,zmm26,zmm12
  a42d72:	62 22 25 48 bc cf    	vfnmadd231ps zmm25,zmm11,zmm23
  a42d78:	62 51 24 48 59 e4    	vmulps zmm12,zmm11,zmm12
  a42d7e:	62 71 7c 48 10 5a 11 	vmovups zmm11,ZMMWORD PTR [rdx+0x440]
  a42d85:	62 12 45 40 b8 e2    	vfmadd231ps zmm12,zmm23,zmm26
  a42d8b:	62 a1 2c 48 58 f8    	vaddps zmm23,zmm10,zmm16
  a42d91:	62 31 74 40 59 c2    	vmulps zmm8,zmm17,zmm18
  a42d97:	62 32 55 48 bc c4    	vfnmadd231ps zmm8,zmm5,zmm20
  a42d9d:	62 a1 54 48 59 d2    	vmulps zmm18,zmm5,zmm18
  a42da3:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x80]
  a42daa:	02 
  a42dab:	62 b1 5c 48 58 ef    	vaddps zmm5,zmm4,zmm23
  a42db1:	62 a2 5d 40 b8 d1    	vfmadd231ps zmm18,zmm20,zmm17
  a42db7:	62 81 14 48 58 c9    	vaddps zmm17,zmm13,zmm25
  a42dbd:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x40]
  a42dc4:	01 
  a42dc5:	62 a1 4c 48 59 e5    	vmulps zmm20,zmm6,zmm21
  a42dcb:	62 e2 45 48 bc e0    	vfnmadd231ps zmm20,zmm7,zmm0
  a42dd1:	62 21 44 48 59 d5    	vmulps zmm26,zmm7,zmm21
  a42dd7:	62 b1 0c 48 58 f9    	vaddps zmm7,zmm14,zmm17
  a42ddd:	62 62 7d 48 b8 d6    	vfmadd231ps zmm26,zmm0,zmm6
  a42de3:	62 f1 14 40 59 c2    	vmulps zmm0,zmm29,zmm2
  a42de9:	62 d2 35 48 bc c3    	vfnmadd231ps zmm0,zmm9,zmm11
  a42def:	62 61 5c 40 58 d8    	vaddps zmm27,zmm20,zmm0
  a42df5:	62 61 34 48 59 e2    	vmulps zmm28,zmm9,zmm2
  a42dfb:	62 11 3c 48 58 cb    	vaddps zmm9,zmm8,zmm27
  a42e01:	62 02 25 48 b8 e5    	vfmadd231ps zmm28,zmm11,zmm29
  a42e07:	62 d1 44 48 58 d1    	vaddps zmm2,zmm7,zmm9
  a42e0d:	62 e1 3c 40 58 d9    	vaddps zmm19,zmm24,zmm1
  a42e13:	62 62 7d 48 18 35 43 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff632643]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a42e1a:	26 63 ff 
  a42e1d:	62 b2 0d 40 bc e7    	vfnmadd231ps zmm4,zmm30,zmm23
  a42e23:	62 f1 64 40 58 f3    	vaddps zmm6,zmm19,zmm3
  a42e29:	62 e1 3c 40 5c e9    	vsubps zmm21,zmm24,zmm1
  a42e2f:	62 d1 4c 40 58 cc    	vaddps zmm1,zmm22,zmm12
  a42e35:	62 32 0d 40 bc f1    	vfnmadd231ps zmm14,zmm30,zmm17
  a42e3b:	62 71 04 48 58 d9    	vaddps zmm11,zmm15,zmm1
  a42e41:	62 c1 4c 40 5c cc    	vsubps zmm17,zmm22,zmm12
  a42e47:	62 81 2c 40 58 f4    	vaddps zmm22,zmm26,zmm28
  a42e4d:	62 72 0d 40 bc f9    	vfnmadd231ps zmm15,zmm30,zmm1
  a42e53:	62 31 6c 40 58 e6    	vaddps zmm12,zmm18,zmm22
  a42e59:	62 62 7d 48 18 2d 71 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff632471]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a42e60:	24 63 ff 
  a42e63:	62 91 74 40 59 cd    	vmulps zmm1,zmm17,zmm29
  a42e69:	62 11 14 48 5c e9    	vsubps zmm13,zmm13,zmm25
  a42e6f:	62 e1 0c 48 58 f9    	vaddps zmm23,zmm14,zmm1
  a42e75:	62 01 14 48 59 c5    	vmulps zmm24,zmm13,zmm29
  a42e7b:	62 12 0d 40 bc c3    	vfnmadd231ps zmm8,zmm30,zmm27
  a42e81:	62 81 04 48 5c c8    	vsubps zmm17,zmm15,zmm24
  a42e87:	62 01 2c 40 5c cc    	vsubps zmm25,zmm26,zmm28
  a42e8d:	62 62 7d 48 18 15 d1 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff6327d1]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a42e94:	27 63 ff 
  a42e97:	62 a2 0d 40 bc d6    	vfnmadd231ps zmm18,zmm30,zmm22
  a42e9d:	62 11 74 40 59 ea    	vmulps zmm13,zmm17,zmm26
  a42ea3:	62 f1 5c 40 5c c0    	vsubps zmm0,zmm20,zmm0
  a42ea9:	62 e2 7d 48 18 25 25 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff632625]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a42eb0:	26 63 ff 
  a42eb3:	62 32 45 40 b8 ec    	vfmadd231ps zmm13,zmm23,zmm20
  a42eb9:	62 81 34 40 59 f5    	vmulps zmm22,zmm25,zmm29
  a42ebf:	62 a1 74 40 59 cc    	vmulps zmm17,zmm17,zmm20
  a42ec5:	62 21 3c 48 58 ce    	vaddps zmm25,zmm8,zmm22
  a42ecb:	62 91 7c 48 59 c5    	vmulps zmm0,zmm0,zmm29
  a42ed1:	62 82 45 40 bc ca    	vfnmadd231ps zmm17,zmm23,zmm26
  a42ed7:	62 e2 7d 48 18 3d 37 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff632437]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a42ede:	24 63 ff 
  a42ee1:	62 e1 6c 40 5c e0    	vsubps zmm20,zmm18,zmm0
  a42ee7:	62 b2 0d 40 bc db    	vfnmadd231ps zmm3,zmm30,zmm19
  a42eed:	62 a1 5c 40 59 df    	vmulps zmm19,zmm20,zmm23
  a42ef3:	62 a1 2c 48 5c c0    	vsubps zmm16,zmm10,zmm16
  a42ef9:	62 62 7d 48 18 15 d9 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff6325d9]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a42f00:	25 63 ff 
  a42f03:	62 82 35 40 b8 da    	vfmadd231ps zmm19,zmm25,zmm26
  a42f09:	62 81 5c 40 59 e2    	vmulps zmm20,zmm20,zmm26
  a42f0f:	62 82 45 40 bc e1    	vfnmadd231ps zmm20,zmm23,zmm25
  a42f15:	62 51 24 48 58 d4    	vaddps zmm10,zmm11,zmm12
  a42f1b:	62 81 54 40 59 ed    	vmulps zmm21,zmm21,zmm29
  a42f21:	62 f1 0c 48 5c c9    	vsubps zmm1,zmm14,zmm1
  a42f27:	62 21 5c 48 58 cd    	vaddps zmm25,zmm4,zmm21
  a42f2d:	62 11 04 48 58 f8    	vaddps zmm15,zmm15,zmm24
  a42f33:	62 31 14 48 58 f3    	vaddps zmm14,zmm13,zmm19
  a42f39:	62 a1 3c 48 5c f6    	vsubps zmm22,zmm8,zmm22
  a42f3f:	62 51 34 40 58 c6    	vaddps zmm8,zmm25,zmm14
  a42f45:	62 81 7c 40 59 c5    	vmulps zmm16,zmm16,zmm29
  a42f4b:	62 f1 6c 40 58 c0    	vaddps zmm0,zmm18,zmm0
  a42f51:	62 a1 04 48 59 d7    	vmulps zmm18,zmm15,zmm23
  a42f57:	62 82 75 48 b8 d2    	vfmadd231ps zmm18,zmm1,zmm26
  a42f5d:	62 01 04 48 59 c2    	vmulps zmm24,zmm15,zmm26
  a42f63:	62 72 7d 48 18 3d 83 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff632583]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a42f6a:	25 63 ff 
  a42f6d:	62 22 75 48 bc c7    	vfnmadd231ps zmm24,zmm1,zmm23
  a42f73:	62 c1 7c 48 59 ff    	vmulps zmm23,zmm0,zmm15
  a42f79:	62 f2 7d 48 18 0d 75 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff632675]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a42f80:	26 63 ff 
  a42f83:	62 e2 4d 40 bc f9    	vfnmadd231ps zmm23,zmm22,zmm1
  a42f89:	62 f1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm1
  a42f8f:	62 b1 64 48 5c c8    	vsubps zmm1,zmm3,zmm16
  a42f95:	62 d2 4d 40 b8 c7    	vfmadd231ps zmm0,zmm22,zmm15
  a42f9b:	62 a1 74 40 58 f4    	vaddps zmm22,zmm17,zmm20
  a42fa1:	62 31 74 48 58 fe    	vaddps zmm15,zmm1,zmm22
  a42fa7:	62 b1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm21
  a42fad:	62 a1 6c 40 58 ef    	vaddps zmm21,zmm18,zmm23
  a42fb3:	62 f1 7c 40 58 db    	vaddps zmm3,zmm16,zmm3
  a42fb9:	62 21 5c 48 58 d5    	vaddps zmm26,zmm4,zmm21
  a42fbf:	62 01 7c 48 28 de    	vmovaps zmm27,zmm30
  a42fc5:	62 12 0d 40 ac f1    	vfnmadd213ps zmm14,zmm30,zmm25
  a42fcb:	62 e1 3c 40 5c c0    	vsubps zmm16,zmm24,zmm0
  a42fd1:	62 e2 0d 40 ac f1    	vfnmadd213ps zmm22,zmm30,zmm1
  a42fd7:	62 91 7c 48 28 ce    	vmovaps zmm1,zmm30
  a42fdd:	62 e2 0d 40 ac ec    	vfnmadd213ps zmm21,zmm30,zmm4
  a42fe3:	62 91 7c 48 28 e6    	vmovaps zmm4,zmm30
  a42fe9:	62 62 7d 40 ac db    	vfnmadd213ps zmm27,zmm16,zmm3
  a42fef:	62 01 7c 48 28 f3    	vmovaps zmm30,zmm27
  a42ff5:	62 21 64 48 58 c8    	vaddps zmm25,zmm3,zmm16
  a42ffb:	62 e1 7c 28 28 05 3b 	vmovaps ymm16,YMMWORD PTR [rip+0xffffffffff633c3b]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a43002:	3c 63 ff 
  a43005:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a4300b:	62 d1 7c 48 28 d8    	vmovaps zmm3,zmm8
  a43011:	62 d2 7d 40 7f df    	vpermt2ps zmm3,zmm16,zmm15
  a43017:	62 51 44 48 5c e1    	vsubps zmm12,zmm7,zmm9
  a4301d:	62 91 7c 48 28 fa    	vmovaps zmm7,zmm26
  a43023:	62 92 7d 40 7f f9    	vpermt2ps zmm7,zmm16,zmm25
  a43029:	62 f2 6d 48 ac cd    	vfnmadd213ps zmm1,zmm2,zmm5
  a4302f:	62 01 24 48 59 dd    	vmulps zmm27,zmm11,zmm29
  a43035:	62 a1 74 40 5c cc    	vsubps zmm17,zmm17,zmm20
  a4303b:	62 11 74 48 58 cb    	vaddps zmm9,zmm1,zmm27
  a43041:	62 f2 2d 48 ac e6    	vfnmadd213ps zmm4,zmm10,zmm6
  a43047:	62 81 1c 48 59 e5    	vmulps zmm20,zmm12,zmm29
  a4304d:	62 31 14 48 5c eb    	vsubps zmm13,zmm13,zmm19
  a43053:	62 21 5c 48 5c e4    	vsubps zmm28,zmm4,zmm20
  a43059:	62 f1 3c 40 58 c0    	vaddps zmm0,zmm24,zmm0
  a4305f:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a43065:	62 12 7d 40 7f dc    	vpermt2ps zmm11,zmm16,zmm28
  a4306b:	62 81 74 40 59 dd    	vmulps zmm19,zmm17,zmm29
  a43071:	62 a1 6c 40 5c cf    	vsubps zmm17,zmm18,zmm23
  a43077:	62 31 0c 48 58 e3    	vaddps zmm12,zmm14,zmm19
  a4307d:	62 81 14 48 59 d5    	vmulps zmm18,zmm13,zmm29
  a43083:	62 91 7c 48 59 c5    	vmulps zmm0,zmm0,zmm29
  a43089:	62 81 74 40 59 fd    	vmulps zmm23,zmm17,zmm29
  a4308f:	62 21 4c 40 5c c2    	vsubps zmm24,zmm22,zmm18
  a43095:	62 91 74 48 5c cb    	vsubps zmm1,zmm1,zmm27
  a4309b:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a430a1:	62 12 7d 40 7f e8    	vpermt2ps zmm13,zmm16,zmm24
  a430a7:	62 21 5c 48 58 dc    	vaddps zmm27,zmm4,zmm20
  a430ad:	62 e1 54 40 58 c8    	vaddps zmm17,zmm21,zmm0
  a430b3:	62 31 0c 48 5c f3    	vsubps zmm14,zmm14,zmm19
  a430b9:	62 21 0c 40 5c ef    	vsubps zmm29,zmm30,zmm23
  a430bf:	62 a1 4c 40 58 f2    	vaddps zmm22,zmm22,zmm18
  a430c5:	62 a1 7c 48 28 d9    	vmovaps zmm19,zmm17
  a430cb:	62 82 7d 40 7f dd    	vpermt2ps zmm19,zmm16,zmm29
  a430d1:	62 e1 54 40 5c d0    	vsubps zmm18,zmm21,zmm0
  a430d7:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a430dd:	62 82 7d 40 7f e3    	vpermt2ps zmm20,zmm16,zmm27
  a430e3:	62 a1 0c 40 58 ef    	vaddps zmm21,zmm30,zmm23
  a430e9:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a430ef:	62 b2 7d 40 7f c6    	vpermt2ps zmm0,zmm16,zmm22
  a430f5:	62 f1 54 48 58 d2    	vaddps zmm2,zmm5,zmm2
  a430fb:	62 b1 7c 48 28 e2    	vmovaps zmm4,zmm18
  a43101:	62 b2 7d 40 7f e5    	vpermt2ps zmm4,zmm16,zmm21
  a43107:	62 d1 4c 48 58 ea    	vaddps zmm5,zmm6,zmm10
  a4310d:	62 e2 6d 48 77 c5    	vpermi2ps zmm16,zmm2,zmm5
  a43113:	62 f1 7c 48 28 35 a3 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff64eda3]        # 91ec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f370>
  a4311a:	ed 64 ff 
  a4311d:	62 f2 4d 48 7f d5    	vpermt2ps zmm2,zmm6,zmm5
  a43123:	62 52 4d 48 7f c7    	vpermt2ps zmm8,zmm6,zmm15
  a43129:	62 02 4d 48 7f d1    	vpermt2ps zmm26,zmm6,zmm25
  a4312f:	62 12 4d 48 7f cc    	vpermt2ps zmm9,zmm6,zmm28
  a43135:	62 12 4d 48 7f e0    	vpermt2ps zmm12,zmm6,zmm24
  a4313b:	62 82 4d 48 7f cd    	vpermt2ps zmm17,zmm6,zmm29
  a43141:	62 92 4d 48 7f cb    	vpermt2ps zmm1,zmm6,zmm27
  a43147:	62 32 4d 48 7f f6    	vpermt2ps zmm14,zmm6,zmm22
  a4314d:	62 a2 4d 48 7f d5    	vpermt2ps zmm18,zmm6,zmm21
  a43153:	62 f1 7c 48 11 16    	vmovups ZMMWORD PTR [rsi],zmm2
  a43159:	62 e1 7c 28 11 46 02 	vmovups YMMWORD PTR [rsi+0x40],ymm16
  a43160:	62 71 7c 48 11 86 60 	vmovups ZMMWORD PTR [rsi+0x60],zmm8
  a43167:	00 00 00 
  a4316a:	c5 fc 11 9e a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm3
  a43171:	00 
  a43172:	62 61 7c 48 11 56 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm26
  a43179:	c5 fc 11 be 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm7
  a43180:	00 
  a43181:	62 71 7c 48 11 8e 20 	vmovups ZMMWORD PTR [rsi+0x120],zmm9
  a43188:	01 00 00 
  a4318b:	c5 7c 11 9e 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm11
  a43192:	00 
  a43193:	62 71 7c 48 11 66 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm12
  a4319a:	c5 7c 11 ae c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm13
  a431a1:	00 
  a431a2:	62 e1 7c 48 11 8e e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm17
  a431a9:	01 00 00 
  a431ac:	62 e1 7c 28 11 5e 11 	vmovups YMMWORD PTR [rsi+0x220],ymm19
  a431b3:	62 f1 7c 48 11 4e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm1
  a431ba:	62 e1 7c 28 11 66 14 	vmovups YMMWORD PTR [rsi+0x280],ymm20
  a431c1:	62 71 7c 48 11 b6 a0 	vmovups ZMMWORD PTR [rsi+0x2a0],zmm14
  a431c8:	02 00 00 
  a431cb:	c5 fc 11 86 e0 02 00 	vmovups YMMWORD PTR [rsi+0x2e0],ymm0
  a431d2:	00 
  a431d3:	62 e1 7c 48 11 56 0c 	vmovups ZMMWORD PTR [rsi+0x300],zmm18
  a431da:	c5 fc 11 a6 40 03 00 	vmovups YMMWORD PTR [rsi+0x340],ymm4
  a431e1:	00 
  a431e2:	48 89 ec             	mov    rsp,rbp
  a431e5:	5d                   	pop    rbp
  a431e6:	c5 f8 77             	vzeroupper
  a431e9:	c3                   	ret
