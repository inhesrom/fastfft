
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008ed480 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  8ed480:	62 f1 fd 48 10 05 de 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7d98de]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  8ed487:	98 7d ff 
  8ed48a:	62 f1 fd 48 10 0d 14 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7d9914]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  8ed491:	99 7d ff 
  8ed494:	62 f1 fd 48 10 15 4a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff7d984a]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  8ed49b:	98 7d ff 
  8ed49e:	62 f1 fd 48 10 1d 80 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff7d9880]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  8ed4a5:	98 7d ff 
  8ed4a8:	48 c1 e2 07          	shl    rdx,0x7
  8ed4ac:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  8ed4b0:	31 d2                	xor    edx,edx
  8ed4b2:	62 f1 fd 48 28 25 04 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff78f904]        # 7cdc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa270>
  8ed4b9:	f9 78 ff 
  8ed4bc:	62 f1 fd 48 28 2d 3a 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff78f93a]        # 7ce00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa2b0>
  8ed4c3:	f9 78 ff 
  8ed4c6:	62 f2 fd 48 19 35 c8 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff7875c8]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8ed4cd:	75 78 ff 
  8ed4d0:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
  8ed4d4:	62 72 fd 48 19 05 42 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff787742]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8ed4db:	77 78 ff 
  8ed4de:	62 71 fd 48 28 0d 58 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff78f958]        # 7ce40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa2f0>
  8ed4e5:	f9 78 ff 
  8ed4e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  8ed4ef:	00 
  8ed4f0:	62 71 fd 48 10 14 17 	vmovupd zmm10,ZMMWORD PTR [rdi+rdx*1]
  8ed4f7:	c5 7d 10 5c 17 40    	vmovupd ymm11,YMMWORD PTR [rdi+rdx*1+0x40]
  8ed4fd:	62 51 fd 48 28 e2    	vmovapd zmm12,zmm10
  8ed503:	62 52 dd 48 7f e3    	vpermt2pd zmm12,zmm4,zmm11
  8ed509:	62 52 d5 48 7f d3    	vpermt2pd zmm10,zmm5,zmm11
  8ed50f:	62 71 fd 48 10 9c 17 	vmovupd zmm11,ZMMWORD PTR [rdi+rdx*1+0x60]
  8ed516:	60 00 00 00 
  8ed51a:	c5 7d 10 ac 17 a0 00 	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0xa0]
  8ed521:	00 00 
  8ed523:	62 51 fd 48 28 f3    	vmovapd zmm14,zmm11
  8ed529:	62 52 dd 48 7f f5    	vpermt2pd zmm14,zmm4,zmm13
  8ed52f:	62 52 d5 48 7f dd    	vpermt2pd zmm11,zmm5,zmm13
  8ed535:	62 71 fd 48 10 6c 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1+0xc0]
  8ed53c:	03 
  8ed53d:	c5 7d 10 bc 17 00 01 	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0x100]
  8ed544:	00 00 
  8ed546:	62 c1 fd 48 28 c5    	vmovapd zmm16,zmm13
  8ed54c:	62 c2 dd 48 7f c7    	vpermt2pd zmm16,zmm4,zmm15
  8ed552:	62 52 d5 48 7f ef    	vpermt2pd zmm13,zmm5,zmm15
  8ed558:	62 e1 fd 48 10 8c 17 	vmovupd zmm17,ZMMWORD PTR [rdi+rdx*1+0x120]
  8ed55f:	20 01 00 00 
  8ed563:	c5 7d 10 bc 17 60 01 	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0x160]
  8ed56a:	00 00 
  8ed56c:	62 a1 fd 48 28 d1    	vmovapd zmm18,zmm17
  8ed572:	62 c2 dd 48 7f d7    	vpermt2pd zmm18,zmm4,zmm15
  8ed578:	62 c2 d5 48 7f cf    	vpermt2pd zmm17,zmm5,zmm15
  8ed57e:	62 c1 ad 48 58 dd    	vaddpd zmm19,zmm10,zmm13
  8ed584:	62 a1 a5 48 58 e1    	vaddpd zmm20,zmm11,zmm17
  8ed58a:	62 a1 e5 40 58 ec    	vaddpd zmm21,zmm19,zmm20
  8ed590:	62 a1 9d 48 58 f0    	vaddpd zmm22,zmm12,zmm16
  8ed596:	62 a1 8d 48 58 fa    	vaddpd zmm23,zmm14,zmm18
  8ed59c:	62 31 cd 40 58 ff    	vaddpd zmm15,zmm22,zmm23
  8ed5a2:	62 51 ad 48 5c d5    	vsubpd zmm10,zmm10,zmm13
  8ed5a8:	62 31 8d 48 5c ea    	vsubpd zmm13,zmm14,zmm18
  8ed5ae:	62 41 ad 48 58 c5    	vaddpd zmm24,zmm10,zmm13
  8ed5b4:	62 31 9d 48 5c e0    	vsubpd zmm12,zmm12,zmm16
  8ed5ba:	62 51 f5 40 5c db    	vsubpd zmm11,zmm17,zmm11
  8ed5c0:	62 c1 a5 48 58 cc    	vaddpd zmm17,zmm11,zmm12
  8ed5c6:	62 31 e5 40 5c f4    	vsubpd zmm14,zmm19,zmm20
  8ed5cc:	62 a1 cd 40 5c df    	vsubpd zmm19,zmm22,zmm23
  8ed5d2:	62 51 ad 48 5c d5    	vsubpd zmm10,zmm10,zmm13
  8ed5d8:	62 51 9d 48 5c eb    	vsubpd zmm13,zmm12,zmm11
  8ed5de:	62 31 fd 48 28 e5    	vmovapd zmm12,zmm21
  8ed5e4:	62 72 fd 48 7f e7    	vpermt2pd zmm12,zmm0,zmm7
  8ed5ea:	62 e2 f5 48 7f ef    	vpermt2pd zmm21,zmm1,zmm7
  8ed5f0:	62 81 fd 48 28 c0    	vmovapd zmm16,zmm24
  8ed5f6:	62 e2 fd 48 7f c7    	vpermt2pd zmm16,zmm0,zmm7
  8ed5fc:	62 62 f5 48 7f c7    	vpermt2pd zmm24,zmm1,zmm7
  8ed602:	62 51 fd 48 28 de    	vmovapd zmm11,zmm14
  8ed608:	62 72 fd 48 7f df    	vpermt2pd zmm11,zmm0,zmm7
  8ed60e:	62 72 f5 48 7f f7    	vpermt2pd zmm14,zmm1,zmm7
  8ed614:	62 c1 fd 48 28 d2    	vmovapd zmm18,zmm10
  8ed61a:	62 e2 fd 48 7f d7    	vpermt2pd zmm18,zmm0,zmm7
  8ed620:	62 72 f5 48 7f d7    	vpermt2pd zmm10,zmm1,zmm7
  8ed626:	62 c1 fd 48 28 e4    	vmovapd zmm20,zmm12
  8ed62c:	62 c2 ed 48 7f e3    	vpermt2pd zmm20,zmm2,zmm11
  8ed632:	62 52 e5 48 7f e3    	vpermt2pd zmm12,zmm3,zmm11
  8ed638:	62 31 fd 48 28 d8    	vmovapd zmm11,zmm16
  8ed63e:	62 32 ed 48 7f da    	vpermt2pd zmm11,zmm2,zmm18
  8ed644:	62 a2 e5 48 7f c2    	vpermt2pd zmm16,zmm3,zmm18
  8ed64a:	62 c2 ed 48 7f ee    	vpermt2pd zmm21,zmm2,zmm14
  8ed650:	62 42 ed 48 7f c2    	vpermt2pd zmm24,zmm2,zmm10
  8ed656:	62 51 dd 40 14 d3    	vunpcklpd zmm10,zmm20,zmm11
  8ed65c:	62 51 dd 40 15 db    	vunpckhpd zmm11,zmm20,zmm11
  8ed662:	62 a1 9d 48 14 d0    	vunpcklpd zmm18,zmm12,zmm16
  8ed668:	62 31 9d 48 15 f0    	vunpckhpd zmm14,zmm12,zmm16
  8ed66e:	62 81 d5 40 14 c0    	vunpcklpd zmm16,zmm21,zmm24
  8ed674:	62 11 d5 40 15 e0    	vunpckhpd zmm12,zmm21,zmm24
  8ed67a:	62 c1 fd 48 28 e7    	vmovapd zmm20,zmm15
  8ed680:	62 e2 fd 48 7f e7    	vpermt2pd zmm20,zmm0,zmm7
  8ed686:	62 72 f5 48 7f ff    	vpermt2pd zmm15,zmm1,zmm7
  8ed68c:	62 a1 fd 48 28 e9    	vmovapd zmm21,zmm17
  8ed692:	62 e2 fd 48 7f ef    	vpermt2pd zmm21,zmm0,zmm7
  8ed698:	62 e2 f5 48 7f cf    	vpermt2pd zmm17,zmm1,zmm7
  8ed69e:	62 a1 fd 48 28 f3    	vmovapd zmm22,zmm19
  8ed6a4:	62 e2 fd 48 7f f7    	vpermt2pd zmm22,zmm0,zmm7
  8ed6aa:	62 e2 f5 48 7f df    	vpermt2pd zmm19,zmm1,zmm7
  8ed6b0:	62 c1 fd 48 28 fd    	vmovapd zmm23,zmm13
  8ed6b6:	62 e2 fd 48 7f ff    	vpermt2pd zmm23,zmm0,zmm7
  8ed6bc:	62 72 f5 48 7f ef    	vpermt2pd zmm13,zmm1,zmm7
  8ed6c2:	62 21 fd 48 28 c4    	vmovapd zmm24,zmm20
  8ed6c8:	62 22 ed 48 7f c6    	vpermt2pd zmm24,zmm2,zmm22
  8ed6ce:	62 a2 e5 48 7f e6    	vpermt2pd zmm20,zmm3,zmm22
  8ed6d4:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  8ed6da:	62 a2 ed 48 7f f7    	vpermt2pd zmm22,zmm2,zmm23
  8ed6e0:	62 a2 e5 48 7f ef    	vpermt2pd zmm21,zmm3,zmm23
  8ed6e6:	62 32 ed 48 7f fb    	vpermt2pd zmm15,zmm2,zmm19
  8ed6ec:	62 c2 ed 48 7f cd    	vpermt2pd zmm17,zmm2,zmm13
  8ed6f2:	62 31 bd 40 14 ee    	vunpcklpd zmm13,zmm24,zmm22
  8ed6f8:	62 a1 bd 40 15 de    	vunpckhpd zmm19,zmm24,zmm22
  8ed6fe:	62 a1 dd 40 14 f5    	vunpcklpd zmm22,zmm20,zmm21
  8ed704:	62 a1 dd 40 15 e5    	vunpckhpd zmm20,zmm20,zmm21
  8ed70a:	62 a1 85 48 14 e9    	vunpcklpd zmm21,zmm15,zmm17
  8ed710:	62 a1 85 48 15 c9    	vunpckhpd zmm17,zmm15,zmm17
  8ed716:	62 e1 fd 48 10 79 04 	vmovupd zmm23,ZMMWORD PTR [rcx+0x100]
  8ed71d:	62 61 fd 48 10 41 05 	vmovupd zmm24,ZMMWORD PTR [rcx+0x140]
  8ed724:	62 31 ed 40 59 ff    	vmulpd zmm15,zmm18,zmm23
  8ed72a:	62 12 cd 40 bc f8    	vfnmadd231pd zmm15,zmm22,zmm24
  8ed730:	62 a1 cd 40 59 f7    	vmulpd zmm22,zmm22,zmm23
  8ed736:	62 e1 fd 48 10 79 08 	vmovupd zmm23,ZMMWORD PTR [rcx+0x200]
  8ed73d:	62 82 ed 40 b8 f0    	vfmadd231pd zmm22,zmm18,zmm24
  8ed743:	62 e1 fd 48 10 51 09 	vmovupd zmm18,ZMMWORD PTR [rcx+0x240]
  8ed74a:	62 21 fd 40 59 c7    	vmulpd zmm24,zmm16,zmm23
  8ed750:	62 22 d5 40 bc c2    	vfnmadd231pd zmm24,zmm21,zmm18
  8ed756:	62 a1 d5 40 59 ef    	vmulpd zmm21,zmm21,zmm23
  8ed75c:	62 e1 fd 48 10 79 06 	vmovupd zmm23,ZMMWORD PTR [rcx+0x180]
  8ed763:	62 a2 fd 40 b8 ea    	vfmadd231pd zmm21,zmm16,zmm18
  8ed769:	62 e1 fd 48 10 41 07 	vmovupd zmm16,ZMMWORD PTR [rcx+0x1c0]
  8ed770:	62 a1 8d 48 59 d7    	vmulpd zmm18,zmm14,zmm23
  8ed776:	62 a2 dd 40 bc d0    	vfnmadd231pd zmm18,zmm20,zmm16
  8ed77c:	62 a1 dd 40 59 e7    	vmulpd zmm20,zmm20,zmm23
  8ed782:	62 e1 fd 48 10 79 0a 	vmovupd zmm23,ZMMWORD PTR [rcx+0x280]
  8ed789:	62 a2 8d 48 b8 e0    	vfmadd231pd zmm20,zmm14,zmm16
  8ed78f:	62 71 fd 48 10 71 0b 	vmovupd zmm14,ZMMWORD PTR [rcx+0x2c0]
  8ed796:	62 a1 9d 48 59 c7    	vmulpd zmm16,zmm12,zmm23
  8ed79c:	62 c2 f5 40 bc c6    	vfnmadd231pd zmm16,zmm17,zmm14
  8ed7a2:	62 a1 f5 40 59 cf    	vmulpd zmm17,zmm17,zmm23
  8ed7a8:	62 e1 fd 48 10 79 02 	vmovupd zmm23,ZMMWORD PTR [rcx+0x80]
  8ed7af:	62 c2 9d 48 b8 ce    	vfmadd231pd zmm17,zmm12,zmm14
  8ed7b5:	62 71 fd 48 10 61 03 	vmovupd zmm12,ZMMWORD PTR [rcx+0xc0]
  8ed7bc:	62 31 a5 48 59 f7    	vmulpd zmm14,zmm11,zmm23
  8ed7c2:	62 52 e5 40 bc f4    	vfnmadd231pd zmm14,zmm19,zmm12
  8ed7c8:	62 a1 e5 40 59 df    	vmulpd zmm19,zmm19,zmm23
  8ed7ce:	62 81 85 48 58 f8    	vaddpd zmm23,zmm15,zmm24
  8ed7d4:	62 c2 a5 48 b8 dc    	vfmadd231pd zmm19,zmm11,zmm12
  8ed7da:	62 31 ad 48 58 df    	vaddpd zmm11,zmm10,zmm23
  8ed7e0:	62 51 fd 40 58 e6    	vaddpd zmm12,zmm16,zmm14
  8ed7e6:	62 c2 cd 48 ac fa    	vfnmadd213pd zmm23,zmm6,zmm10
  8ed7ec:	62 31 cd 40 58 d5    	vaddpd zmm10,zmm22,zmm21
  8ed7f2:	62 a1 cd 40 5c ed    	vsubpd zmm21,zmm22,zmm21
  8ed7f8:	62 c1 ed 40 58 f4    	vaddpd zmm22,zmm18,zmm12
  8ed7fe:	62 c2 cd 48 bc d4    	vfnmadd231pd zmm18,zmm6,zmm12
  8ed804:	62 31 f5 40 58 e3    	vaddpd zmm12,zmm17,zmm19
  8ed80a:	62 a1 f5 40 5c cb    	vsubpd zmm17,zmm17,zmm19
  8ed810:	62 c1 ad 48 58 dd    	vaddpd zmm19,zmm10,zmm13
  8ed816:	62 52 cd 48 ac d5    	vfnmadd213pd zmm10,zmm6,zmm13
  8ed81c:	62 11 85 48 5c e8    	vsubpd zmm13,zmm15,zmm24
  8ed822:	62 51 dd 40 58 fc    	vaddpd zmm15,zmm20,zmm12
  8ed828:	62 c2 cd 48 bc e4    	vfnmadd231pd zmm20,zmm6,zmm12
  8ed82e:	62 51 d5 40 59 e0    	vmulpd zmm12,zmm21,zmm8
  8ed834:	62 51 fd 40 5c f6    	vsubpd zmm14,zmm16,zmm14
  8ed83a:	62 c1 c5 40 58 c4    	vaddpd zmm16,zmm23,zmm12
  8ed840:	62 c1 f5 40 59 c8    	vmulpd zmm17,zmm17,zmm8
  8ed846:	62 51 c5 40 5c e4    	vsubpd zmm12,zmm23,zmm12
  8ed84c:	62 a1 ed 40 58 e9    	vaddpd zmm21,zmm18,zmm17
  8ed852:	62 51 95 48 59 e8    	vmulpd zmm13,zmm13,zmm8
  8ed858:	62 a1 ed 40 5c c9    	vsubpd zmm17,zmm18,zmm17
  8ed85e:	62 c1 ad 48 5c d5    	vsubpd zmm18,zmm10,zmm13
  8ed864:	62 51 8d 48 59 f0    	vmulpd zmm14,zmm14,zmm8
  8ed86a:	62 51 95 48 58 d2    	vaddpd zmm10,zmm13,zmm10
  8ed870:	62 51 dd 40 5c ee    	vsubpd zmm13,zmm20,zmm14
  8ed876:	62 51 dd 40 58 f6    	vaddpd zmm14,zmm20,zmm14
  8ed87c:	62 a1 fd 40 5c e5    	vsubpd zmm20,zmm16,zmm21
  8ed882:	62 a1 fd 40 58 c5    	vaddpd zmm16,zmm16,zmm21
  8ed888:	62 c1 ed 40 5c ed    	vsubpd zmm21,zmm18,zmm13
  8ed88e:	62 51 ed 40 58 ed    	vaddpd zmm13,zmm18,zmm13
  8ed894:	62 a1 9d 48 58 d1    	vaddpd zmm18,zmm12,zmm17
  8ed89a:	62 31 9d 48 5c e1    	vsubpd zmm12,zmm12,zmm17
  8ed8a0:	62 c1 ad 48 58 ce    	vaddpd zmm17,zmm10,zmm14
  8ed8a6:	62 51 ad 48 5c d6    	vsubpd zmm10,zmm10,zmm14
  8ed8ac:	62 51 e5 40 5c f7    	vsubpd zmm14,zmm19,zmm15
  8ed8b2:	62 51 e5 40 58 ff    	vaddpd zmm15,zmm19,zmm15
  8ed8b8:	62 a1 a5 48 5c de    	vsubpd zmm19,zmm11,zmm22
  8ed8be:	62 31 a5 48 58 de    	vaddpd zmm11,zmm11,zmm22
  8ed8c4:	62 52 b5 48 7f fb    	vpermt2pd zmm15,zmm9,zmm11
  8ed8ca:	62 71 fd 48 11 3c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm15
  8ed8d1:	62 a2 b5 48 7f ec    	vpermt2pd zmm21,zmm9,zmm20
  8ed8d7:	62 e1 fd 48 11 6c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x40],zmm21
  8ed8de:	01 
  8ed8df:	62 a2 b5 48 7f ca    	vpermt2pd zmm17,zmm9,zmm18
  8ed8e5:	62 e1 fd 48 11 4c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x80],zmm17
  8ed8ec:	02 
  8ed8ed:	62 32 b5 48 7f f3    	vpermt2pd zmm14,zmm9,zmm19
  8ed8f3:	62 71 fd 48 11 74 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm14
  8ed8fa:	03 
  8ed8fb:	62 32 b5 48 7f e8    	vpermt2pd zmm13,zmm9,zmm16
  8ed901:	62 71 fd 48 11 6c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x100],zmm13
  8ed908:	04 
  8ed909:	62 52 b5 48 7f d4    	vpermt2pd zmm10,zmm9,zmm12
  8ed90f:	62 71 fd 48 11 54 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x140],zmm10
  8ed916:	05 
  8ed917:	48 81 c2 80 01 00 00 	add    rdx,0x180
  8ed91e:	48 39 d0             	cmp    rax,rdx
  8ed921:	0f 85 c9 fb ff ff    	jne    8ed4f0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  8ed927:	c5 f8 77             	vzeroupper
  8ed92a:	c3                   	ret
