
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000916480 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  916480:	62 f1 fd 48 10 05 de 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7b08de]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  916487:	08 7b ff 
  91648a:	62 f1 fd 48 10 0d 14 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7b0914]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  916491:	09 7b ff 
  916494:	62 f1 fd 48 10 15 4a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff7b084a]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  91649b:	08 7b ff 
  91649e:	62 f1 fd 48 10 1d 80 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff7b0880]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  9164a5:	08 7b ff 
  9164a8:	48 c1 e2 07          	shl    rdx,0x7
  9164ac:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  9164b0:	31 d2                	xor    edx,edx
  9164b2:	62 f1 fd 48 28 25 04 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff769504]        # 7f9c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xce70>
  9164b9:	95 76 ff 
  9164bc:	62 f1 fd 48 28 2d 3a 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff76953a]        # 7fa00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xceb0>
  9164c3:	95 76 ff 
  9164c6:	62 f2 fd 48 19 35 c8 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff75e5c8]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  9164cd:	e5 75 ff 
  9164d0:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
  9164d4:	62 72 fd 48 19 05 42 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff75e742]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  9164db:	e7 75 ff 
  9164de:	62 71 fd 48 28 0d 58 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff769558]        # 7fa40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xcef0>
  9164e5:	95 76 ff 
  9164e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  9164ef:	00 
  9164f0:	62 71 fd 48 10 14 17 	vmovupd zmm10,ZMMWORD PTR [rdi+rdx*1]
  9164f7:	c5 7d 10 5c 17 40    	vmovupd ymm11,YMMWORD PTR [rdi+rdx*1+0x40]
  9164fd:	62 51 fd 48 28 e2    	vmovapd zmm12,zmm10
  916503:	62 52 dd 48 7f e3    	vpermt2pd zmm12,zmm4,zmm11
  916509:	62 52 d5 48 7f d3    	vpermt2pd zmm10,zmm5,zmm11
  91650f:	62 71 fd 48 10 9c 17 	vmovupd zmm11,ZMMWORD PTR [rdi+rdx*1+0x60]
  916516:	60 00 00 00 
  91651a:	c5 7d 10 ac 17 a0 00 	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0xa0]
  916521:	00 00 
  916523:	62 51 fd 48 28 f3    	vmovapd zmm14,zmm11
  916529:	62 52 dd 48 7f f5    	vpermt2pd zmm14,zmm4,zmm13
  91652f:	62 52 d5 48 7f dd    	vpermt2pd zmm11,zmm5,zmm13
  916535:	62 71 fd 48 10 6c 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1+0xc0]
  91653c:	03 
  91653d:	c5 7d 10 bc 17 00 01 	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0x100]
  916544:	00 00 
  916546:	62 c1 fd 48 28 c5    	vmovapd zmm16,zmm13
  91654c:	62 c2 dd 48 7f c7    	vpermt2pd zmm16,zmm4,zmm15
  916552:	62 52 d5 48 7f ef    	vpermt2pd zmm13,zmm5,zmm15
  916558:	62 e1 fd 48 10 8c 17 	vmovupd zmm17,ZMMWORD PTR [rdi+rdx*1+0x120]
  91655f:	20 01 00 00 
  916563:	c5 7d 10 bc 17 60 01 	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0x160]
  91656a:	00 00 
  91656c:	62 a1 fd 48 28 d1    	vmovapd zmm18,zmm17
  916572:	62 c2 dd 48 7f d7    	vpermt2pd zmm18,zmm4,zmm15
  916578:	62 c2 d5 48 7f cf    	vpermt2pd zmm17,zmm5,zmm15
  91657e:	62 a1 9d 48 58 d8    	vaddpd zmm19,zmm12,zmm16
  916584:	62 a1 8d 48 58 e2    	vaddpd zmm20,zmm14,zmm18
  91658a:	62 a1 e5 40 58 ec    	vaddpd zmm21,zmm19,zmm20
  916590:	62 c1 ad 48 58 f5    	vaddpd zmm22,zmm10,zmm13
  916596:	62 a1 a5 48 58 f9    	vaddpd zmm23,zmm11,zmm17
  91659c:	62 31 cd 40 58 ff    	vaddpd zmm15,zmm22,zmm23
  9165a2:	62 31 9d 48 5c e0    	vsubpd zmm12,zmm12,zmm16
  9165a8:	62 31 a5 48 5c d9    	vsubpd zmm11,zmm11,zmm17
  9165ae:	62 41 9d 48 58 c3    	vaddpd zmm24,zmm12,zmm11
  9165b4:	62 51 ad 48 5c d5    	vsubpd zmm10,zmm10,zmm13
  9165ba:	62 51 ed 40 5c ee    	vsubpd zmm13,zmm18,zmm14
  9165c0:	62 c1 95 48 58 ca    	vaddpd zmm17,zmm13,zmm10
  9165c6:	62 31 e5 40 5c f4    	vsubpd zmm14,zmm19,zmm20
  9165cc:	62 a1 cd 40 5c df    	vsubpd zmm19,zmm22,zmm23
  9165d2:	62 51 9d 48 5c db    	vsubpd zmm11,zmm12,zmm11
  9165d8:	62 51 ad 48 5c ed    	vsubpd zmm13,zmm10,zmm13
  9165de:	62 31 fd 48 28 e5    	vmovapd zmm12,zmm21
  9165e4:	62 72 fd 48 7f e7    	vpermt2pd zmm12,zmm0,zmm7
  9165ea:	62 e2 f5 48 7f ef    	vpermt2pd zmm21,zmm1,zmm7
  9165f0:	62 81 fd 48 28 c0    	vmovapd zmm16,zmm24
  9165f6:	62 e2 fd 48 7f c7    	vpermt2pd zmm16,zmm0,zmm7
  9165fc:	62 62 f5 48 7f c7    	vpermt2pd zmm24,zmm1,zmm7
  916602:	62 51 fd 48 28 d6    	vmovapd zmm10,zmm14
  916608:	62 72 fd 48 7f d7    	vpermt2pd zmm10,zmm0,zmm7
  91660e:	62 72 f5 48 7f f7    	vpermt2pd zmm14,zmm1,zmm7
  916614:	62 c1 fd 48 28 d3    	vmovapd zmm18,zmm11
  91661a:	62 e2 fd 48 7f d7    	vpermt2pd zmm18,zmm0,zmm7
  916620:	62 72 f5 48 7f df    	vpermt2pd zmm11,zmm1,zmm7
  916626:	62 c1 fd 48 28 e4    	vmovapd zmm20,zmm12
  91662c:	62 c2 ed 48 7f e2    	vpermt2pd zmm20,zmm2,zmm10
  916632:	62 52 e5 48 7f e2    	vpermt2pd zmm12,zmm3,zmm10
  916638:	62 a1 fd 48 28 f0    	vmovapd zmm22,zmm16
  91663e:	62 a2 ed 48 7f f2    	vpermt2pd zmm22,zmm2,zmm18
  916644:	62 a2 e5 48 7f c2    	vpermt2pd zmm16,zmm3,zmm18
  91664a:	62 c2 ed 48 7f ee    	vpermt2pd zmm21,zmm2,zmm14
  916650:	62 42 ed 48 7f c3    	vpermt2pd zmm24,zmm2,zmm11
  916656:	62 31 dd 40 14 d6    	vunpcklpd zmm10,zmm20,zmm22
  91665c:	62 31 dd 40 15 de    	vunpckhpd zmm11,zmm20,zmm22
  916662:	62 a1 9d 48 14 d0    	vunpcklpd zmm18,zmm12,zmm16
  916668:	62 31 9d 48 15 f0    	vunpckhpd zmm14,zmm12,zmm16
  91666e:	62 81 d5 40 14 c0    	vunpcklpd zmm16,zmm21,zmm24
  916674:	62 11 d5 40 15 e0    	vunpckhpd zmm12,zmm21,zmm24
  91667a:	62 c1 fd 48 28 e7    	vmovapd zmm20,zmm15
  916680:	62 e2 fd 48 7f e7    	vpermt2pd zmm20,zmm0,zmm7
  916686:	62 72 f5 48 7f ff    	vpermt2pd zmm15,zmm1,zmm7
  91668c:	62 a1 fd 48 28 e9    	vmovapd zmm21,zmm17
  916692:	62 e2 fd 48 7f ef    	vpermt2pd zmm21,zmm0,zmm7
  916698:	62 e2 f5 48 7f cf    	vpermt2pd zmm17,zmm1,zmm7
  91669e:	62 a1 fd 48 28 f3    	vmovapd zmm22,zmm19
  9166a4:	62 e2 fd 48 7f f7    	vpermt2pd zmm22,zmm0,zmm7
  9166aa:	62 e2 f5 48 7f df    	vpermt2pd zmm19,zmm1,zmm7
  9166b0:	62 c1 fd 48 28 fd    	vmovapd zmm23,zmm13
  9166b6:	62 e2 fd 48 7f ff    	vpermt2pd zmm23,zmm0,zmm7
  9166bc:	62 72 f5 48 7f ef    	vpermt2pd zmm13,zmm1,zmm7
  9166c2:	62 21 fd 48 28 c4    	vmovapd zmm24,zmm20
  9166c8:	62 22 ed 48 7f c6    	vpermt2pd zmm24,zmm2,zmm22
  9166ce:	62 a2 e5 48 7f e6    	vpermt2pd zmm20,zmm3,zmm22
  9166d4:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  9166da:	62 a2 ed 48 7f f7    	vpermt2pd zmm22,zmm2,zmm23
  9166e0:	62 a2 e5 48 7f ef    	vpermt2pd zmm21,zmm3,zmm23
  9166e6:	62 32 ed 48 7f fb    	vpermt2pd zmm15,zmm2,zmm19
  9166ec:	62 c2 ed 48 7f cd    	vpermt2pd zmm17,zmm2,zmm13
  9166f2:	62 31 bd 40 14 ee    	vunpcklpd zmm13,zmm24,zmm22
  9166f8:	62 a1 bd 40 15 de    	vunpckhpd zmm19,zmm24,zmm22
  9166fe:	62 a1 dd 40 14 f5    	vunpcklpd zmm22,zmm20,zmm21
  916704:	62 a1 dd 40 15 e5    	vunpckhpd zmm20,zmm20,zmm21
  91670a:	62 a1 85 48 14 e9    	vunpcklpd zmm21,zmm15,zmm17
  916710:	62 a1 85 48 15 c9    	vunpckhpd zmm17,zmm15,zmm17
  916716:	62 e1 fd 48 10 79 04 	vmovupd zmm23,ZMMWORD PTR [rcx+0x100]
  91671d:	62 61 fd 48 10 41 05 	vmovupd zmm24,ZMMWORD PTR [rcx+0x140]
  916724:	62 31 ed 40 59 ff    	vmulpd zmm15,zmm18,zmm23
  91672a:	62 12 cd 40 bc f8    	vfnmadd231pd zmm15,zmm22,zmm24
  916730:	62 a1 cd 40 59 f7    	vmulpd zmm22,zmm22,zmm23
  916736:	62 e1 fd 48 10 79 08 	vmovupd zmm23,ZMMWORD PTR [rcx+0x200]
  91673d:	62 82 ed 40 b8 f0    	vfmadd231pd zmm22,zmm18,zmm24
  916743:	62 e1 fd 48 10 51 09 	vmovupd zmm18,ZMMWORD PTR [rcx+0x240]
  91674a:	62 21 fd 40 59 c7    	vmulpd zmm24,zmm16,zmm23
  916750:	62 22 d5 40 bc c2    	vfnmadd231pd zmm24,zmm21,zmm18
  916756:	62 a1 d5 40 59 ef    	vmulpd zmm21,zmm21,zmm23
  91675c:	62 e1 fd 48 10 79 06 	vmovupd zmm23,ZMMWORD PTR [rcx+0x180]
  916763:	62 a2 fd 40 b8 ea    	vfmadd231pd zmm21,zmm16,zmm18
  916769:	62 e1 fd 48 10 41 07 	vmovupd zmm16,ZMMWORD PTR [rcx+0x1c0]
  916770:	62 a1 8d 48 59 d7    	vmulpd zmm18,zmm14,zmm23
  916776:	62 a2 dd 40 bc d0    	vfnmadd231pd zmm18,zmm20,zmm16
  91677c:	62 a1 dd 40 59 e7    	vmulpd zmm20,zmm20,zmm23
  916782:	62 e1 fd 48 10 79 0a 	vmovupd zmm23,ZMMWORD PTR [rcx+0x280]
  916789:	62 a2 8d 48 b8 e0    	vfmadd231pd zmm20,zmm14,zmm16
  91678f:	62 71 fd 48 10 71 0b 	vmovupd zmm14,ZMMWORD PTR [rcx+0x2c0]
  916796:	62 a1 9d 48 59 c7    	vmulpd zmm16,zmm12,zmm23
  91679c:	62 c2 f5 40 bc c6    	vfnmadd231pd zmm16,zmm17,zmm14
  9167a2:	62 a1 f5 40 59 cf    	vmulpd zmm17,zmm17,zmm23
  9167a8:	62 e1 fd 48 10 79 02 	vmovupd zmm23,ZMMWORD PTR [rcx+0x80]
  9167af:	62 c2 9d 48 b8 ce    	vfmadd231pd zmm17,zmm12,zmm14
  9167b5:	62 71 fd 48 10 61 03 	vmovupd zmm12,ZMMWORD PTR [rcx+0xc0]
  9167bc:	62 31 a5 48 59 f7    	vmulpd zmm14,zmm11,zmm23
  9167c2:	62 52 e5 40 bc f4    	vfnmadd231pd zmm14,zmm19,zmm12
  9167c8:	62 a1 e5 40 59 df    	vmulpd zmm19,zmm19,zmm23
  9167ce:	62 81 85 48 58 f8    	vaddpd zmm23,zmm15,zmm24
  9167d4:	62 c2 a5 48 b8 dc    	vfmadd231pd zmm19,zmm11,zmm12
  9167da:	62 31 ad 48 58 df    	vaddpd zmm11,zmm10,zmm23
  9167e0:	62 51 fd 40 58 e6    	vaddpd zmm12,zmm16,zmm14
  9167e6:	62 c2 cd 48 ac fa    	vfnmadd213pd zmm23,zmm6,zmm10
  9167ec:	62 31 cd 40 58 d5    	vaddpd zmm10,zmm22,zmm21
  9167f2:	62 a1 cd 40 5c ed    	vsubpd zmm21,zmm22,zmm21
  9167f8:	62 c1 ed 40 58 f4    	vaddpd zmm22,zmm18,zmm12
  9167fe:	62 c2 cd 48 bc d4    	vfnmadd231pd zmm18,zmm6,zmm12
  916804:	62 31 f5 40 58 e3    	vaddpd zmm12,zmm17,zmm19
  91680a:	62 a1 f5 40 5c cb    	vsubpd zmm17,zmm17,zmm19
  916810:	62 c1 ad 48 58 dd    	vaddpd zmm19,zmm10,zmm13
  916816:	62 52 cd 48 ac d5    	vfnmadd213pd zmm10,zmm6,zmm13
  91681c:	62 11 85 48 5c e8    	vsubpd zmm13,zmm15,zmm24
  916822:	62 51 dd 40 58 fc    	vaddpd zmm15,zmm20,zmm12
  916828:	62 c2 cd 48 bc e4    	vfnmadd231pd zmm20,zmm6,zmm12
  91682e:	62 51 d5 40 59 e0    	vmulpd zmm12,zmm21,zmm8
  916834:	62 51 fd 40 5c f6    	vsubpd zmm14,zmm16,zmm14
  91683a:	62 c1 c5 40 58 c4    	vaddpd zmm16,zmm23,zmm12
  916840:	62 c1 f5 40 59 c8    	vmulpd zmm17,zmm17,zmm8
  916846:	62 51 c5 40 5c e4    	vsubpd zmm12,zmm23,zmm12
  91684c:	62 a1 ed 40 58 e9    	vaddpd zmm21,zmm18,zmm17
  916852:	62 51 95 48 59 e8    	vmulpd zmm13,zmm13,zmm8
  916858:	62 a1 ed 40 5c c9    	vsubpd zmm17,zmm18,zmm17
  91685e:	62 c1 ad 48 5c d5    	vsubpd zmm18,zmm10,zmm13
  916864:	62 51 8d 48 59 f0    	vmulpd zmm14,zmm14,zmm8
  91686a:	62 51 95 48 58 d2    	vaddpd zmm10,zmm13,zmm10
  916870:	62 51 dd 40 5c ee    	vsubpd zmm13,zmm20,zmm14
  916876:	62 51 dd 40 58 f6    	vaddpd zmm14,zmm20,zmm14
  91687c:	62 a1 fd 40 5c e5    	vsubpd zmm20,zmm16,zmm21
  916882:	62 a1 fd 40 58 c5    	vaddpd zmm16,zmm16,zmm21
  916888:	62 c1 ed 40 5c ed    	vsubpd zmm21,zmm18,zmm13
  91688e:	62 51 ed 40 58 ed    	vaddpd zmm13,zmm18,zmm13
  916894:	62 a1 9d 48 58 d1    	vaddpd zmm18,zmm12,zmm17
  91689a:	62 31 9d 48 5c e1    	vsubpd zmm12,zmm12,zmm17
  9168a0:	62 c1 ad 48 58 ce    	vaddpd zmm17,zmm10,zmm14
  9168a6:	62 51 ad 48 5c d6    	vsubpd zmm10,zmm10,zmm14
  9168ac:	62 31 a5 48 5c f6    	vsubpd zmm14,zmm11,zmm22
  9168b2:	62 31 a5 48 58 de    	vaddpd zmm11,zmm11,zmm22
  9168b8:	62 c1 e5 40 5c f7    	vsubpd zmm22,zmm19,zmm15
  9168be:	62 51 e5 40 58 ff    	vaddpd zmm15,zmm19,zmm15
  9168c4:	62 52 b5 48 7f df    	vpermt2pd zmm11,zmm9,zmm15
  9168ca:	62 71 fd 48 11 1c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm11
  9168d1:	62 a2 b5 48 7f e5    	vpermt2pd zmm20,zmm9,zmm21
  9168d7:	62 e1 fd 48 11 64 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x40],zmm20
  9168de:	01 
  9168df:	62 a2 b5 48 7f d1    	vpermt2pd zmm18,zmm9,zmm17
  9168e5:	62 e1 fd 48 11 54 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x80],zmm18
  9168ec:	02 
  9168ed:	62 32 b5 48 7f f6    	vpermt2pd zmm14,zmm9,zmm22
  9168f3:	62 71 fd 48 11 74 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm14
  9168fa:	03 
  9168fb:	62 c2 b5 48 7f c5    	vpermt2pd zmm16,zmm9,zmm13
  916901:	62 e1 fd 48 11 44 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x100],zmm16
  916908:	04 
  916909:	62 52 b5 48 7f e2    	vpermt2pd zmm12,zmm9,zmm10
  91690f:	62 71 fd 48 11 64 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x140],zmm12
  916916:	05 
  916917:	48 81 c2 80 01 00 00 	add    rdx,0x180
  91691e:	48 39 d0             	cmp    rax,rdx
  916921:	0f 85 c9 fb ff ff    	jne    9164f0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  916927:	c5 f8 77             	vzeroupper
  91692a:	c3                   	ret
