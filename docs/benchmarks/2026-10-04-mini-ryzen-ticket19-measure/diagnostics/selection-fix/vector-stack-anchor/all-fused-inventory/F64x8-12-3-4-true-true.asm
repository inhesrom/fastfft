
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009784c0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  9784c0:	62 f1 fd 48 10 05 9e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff74e89e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  9784c7:	e8 74 ff 
  9784ca:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  9784ce:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  9784d2:	62 f2 fd 48 7f d2    	vpermt2pd zmm2,zmm0,zmm2
  9784d8:	62 f1 fd 48 10 1d 06 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff74e806]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  9784df:	e8 74 ff 
  9784e2:	62 f1 fd 48 10 25 3c 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff74e83c]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  9784e9:	e8 74 ff 
  9784ec:	48 c1 e2 06          	shl    rdx,0x6
  9784f0:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  9784f4:	31 d2                	xor    edx,edx
  9784f6:	62 f1 fd 48 28 2d 40 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff70f240]        # 87740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14bf0>
  9784fd:	f2 70 ff 
  978500:	62 f2 fd 48 19 35 8e 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff6fc58e]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  978507:	c5 6f ff 
  97850a:	62 f1 fd 48 28 3d 6c 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff70f26c]        # 87780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14c30>
  978511:	f2 70 ff 
  978514:	62 72 fd 48 19 05 02 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff6fc702]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  97851b:	c7 6f ff 
  97851e:	62 71 fd 48 28 0d 98 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff70f298]        # 877c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14c70>
  978525:	f2 70 ff 
  978528:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  97852f:	00 
  978530:	62 71 fd 48 10 14 17 	vmovupd zmm10,ZMMWORD PTR [rdi+rdx*1]
  978537:	62 71 fd 48 10 5c 17 	vmovupd zmm11,ZMMWORD PTR [rdi+rdx*1+0x40]
  97853e:	01 
  97853f:	62 71 fd 48 10 64 17 	vmovupd zmm12,ZMMWORD PTR [rdi+rdx*1+0x80]
  978546:	02 
  978547:	62 51 fd 48 28 ea    	vmovapd zmm13,zmm10
  97854d:	62 72 d5 48 7f e9    	vpermt2pd zmm13,zmm5,zmm1
  978553:	62 72 c5 48 7f d1    	vpermt2pd zmm10,zmm7,zmm1
  978559:	62 51 fd 48 28 f3    	vmovapd zmm14,zmm11
  97855f:	62 72 d5 48 7f f1    	vpermt2pd zmm14,zmm5,zmm1
  978565:	62 72 c5 48 7f d9    	vpermt2pd zmm11,zmm7,zmm1
  97856b:	62 51 fd 48 28 fc    	vmovapd zmm15,zmm12
  978571:	62 72 d5 48 7f f9    	vpermt2pd zmm15,zmm5,zmm1
  978577:	62 72 c5 48 7f e1    	vpermt2pd zmm12,zmm7,zmm1
  97857d:	62 c1 a5 48 58 c4    	vaddpd zmm16,zmm11,zmm12
  978583:	62 a1 ad 48 58 c8    	vaddpd zmm17,zmm10,zmm16
  978589:	62 c1 8d 48 58 d7    	vaddpd zmm18,zmm14,zmm15
  97858f:	62 a1 95 48 58 da    	vaddpd zmm19,zmm13,zmm18
  978595:	62 32 cd 48 bc d0    	vfnmadd231pd zmm10,zmm6,zmm16
  97859b:	62 51 8d 48 5c f7    	vsubpd zmm14,zmm14,zmm15
  9785a1:	62 51 8d 48 59 f0    	vmulpd zmm14,zmm14,zmm8
  9785a7:	62 51 ad 48 58 fe    	vaddpd zmm15,zmm10,zmm14
  9785ad:	62 32 cd 48 bc ea    	vfnmadd231pd zmm13,zmm6,zmm18
  9785b3:	62 51 a5 48 5c dc    	vsubpd zmm11,zmm11,zmm12
  9785b9:	62 51 a5 48 59 d8    	vmulpd zmm11,zmm11,zmm8
  9785bf:	62 51 95 48 5c e3    	vsubpd zmm12,zmm13,zmm11
  9785c5:	62 51 ad 48 5c d6    	vsubpd zmm10,zmm10,zmm14
  9785cb:	62 51 a5 48 58 dd    	vaddpd zmm11,zmm11,zmm13
  9785d1:	62 e2 fd 48 7f c9    	vpermt2pd zmm17,zmm0,zmm1
  9785d7:	62 72 fd 48 7f f9    	vpermt2pd zmm15,zmm0,zmm1
  9785dd:	62 72 fd 48 7f d1    	vpermt2pd zmm10,zmm0,zmm1
  9785e3:	62 31 fd 48 28 e9    	vmovapd zmm13,zmm17
  9785e9:	62 52 e5 48 7f ea    	vpermt2pd zmm13,zmm3,zmm10
  9785ef:	62 c2 dd 48 7f ca    	vpermt2pd zmm17,zmm4,zmm10
  9785f5:	62 51 fd 48 28 d7    	vmovapd zmm10,zmm15
  9785fb:	62 72 e5 48 7f d2    	vpermt2pd zmm10,zmm3,zmm2
  978601:	62 72 dd 48 7f fa    	vpermt2pd zmm15,zmm4,zmm2
  978607:	62 51 95 48 14 f2    	vunpcklpd zmm14,zmm13,zmm10
  97860d:	62 51 95 48 15 d2    	vunpckhpd zmm10,zmm13,zmm10
  978613:	62 51 f5 40 14 ef    	vunpcklpd zmm13,zmm17,zmm15
  978619:	62 51 f5 40 15 ff    	vunpckhpd zmm15,zmm17,zmm15
  97861f:	62 e2 fd 48 7f d9    	vpermt2pd zmm19,zmm0,zmm1
  978625:	62 72 fd 48 7f e1    	vpermt2pd zmm12,zmm0,zmm1
  97862b:	62 72 fd 48 7f d9    	vpermt2pd zmm11,zmm0,zmm1
  978631:	62 a1 fd 48 28 c3    	vmovapd zmm16,zmm19
  978637:	62 c2 e5 48 7f c3    	vpermt2pd zmm16,zmm3,zmm11
  97863d:	62 c2 dd 48 7f db    	vpermt2pd zmm19,zmm4,zmm11
  978643:	62 51 fd 48 28 dc    	vmovapd zmm11,zmm12
  978649:	62 72 e5 48 7f da    	vpermt2pd zmm11,zmm3,zmm2
  97864f:	62 72 dd 48 7f e2    	vpermt2pd zmm12,zmm4,zmm2
  978655:	62 c1 fd 40 14 cb    	vunpcklpd zmm17,zmm16,zmm11
  97865b:	62 51 fd 40 15 db    	vunpckhpd zmm11,zmm16,zmm11
  978661:	62 c1 e5 40 14 c4    	vunpcklpd zmm16,zmm19,zmm12
  978667:	62 51 e5 40 15 e4    	vunpckhpd zmm12,zmm19,zmm12
  97866d:	62 e1 fd 48 10 51 02 	vmovupd zmm18,ZMMWORD PTR [rcx+0x80]
  978674:	62 e1 fd 48 10 59 03 	vmovupd zmm19,ZMMWORD PTR [rcx+0xc0]
  97867b:	62 e1 fd 48 10 61 04 	vmovupd zmm20,ZMMWORD PTR [rcx+0x100]
  978682:	62 e1 fd 48 10 69 05 	vmovupd zmm21,ZMMWORD PTR [rcx+0x140]
  978689:	62 e1 fd 48 10 71 06 	vmovupd zmm22,ZMMWORD PTR [rcx+0x180]
  978690:	62 e1 fd 48 10 79 07 	vmovupd zmm23,ZMMWORD PTR [rcx+0x1c0]
  978697:	62 21 95 48 59 c4    	vmulpd zmm24,zmm13,zmm20
  97869d:	62 22 fd 40 bc c5    	vfnmadd231pd zmm24,zmm16,zmm21
  9786a3:	62 01 8d 48 58 c8    	vaddpd zmm25,zmm14,zmm24
  9786a9:	62 21 ad 48 59 d2    	vmulpd zmm26,zmm10,zmm18
  9786af:	62 22 a5 48 bc d3    	vfnmadd231pd zmm26,zmm11,zmm19
  9786b5:	62 21 85 48 59 de    	vmulpd zmm27,zmm15,zmm22
  9786bb:	62 22 9d 48 bc df    	vfnmadd231pd zmm27,zmm12,zmm23
  9786c1:	62 01 ad 40 58 e3    	vaddpd zmm28,zmm26,zmm27
  9786c7:	62 a1 fd 40 59 c4    	vmulpd zmm16,zmm16,zmm20
  9786cd:	62 a2 95 48 b8 c5    	vfmadd231pd zmm16,zmm13,zmm21
  9786d3:	62 31 fd 40 58 e9    	vaddpd zmm13,zmm16,zmm17
  9786d9:	62 31 a5 48 59 da    	vmulpd zmm11,zmm11,zmm18
  9786df:	62 32 ad 48 b8 db    	vfmadd231pd zmm11,zmm10,zmm19
  9786e5:	62 31 9d 48 59 d6    	vmulpd zmm10,zmm12,zmm22
  9786eb:	62 32 85 48 b8 d7    	vfmadd231pd zmm10,zmm15,zmm23
  9786f1:	62 51 a5 48 58 e2    	vaddpd zmm12,zmm11,zmm10
  9786f7:	62 11 8d 48 5c f0    	vsubpd zmm14,zmm14,zmm24
  9786fd:	62 51 a5 48 5c d2    	vsubpd zmm10,zmm11,zmm10
  978703:	62 51 8d 48 58 da    	vaddpd zmm11,zmm14,zmm10
  978709:	62 31 f5 40 5c f8    	vsubpd zmm15,zmm17,zmm16
  97870f:	62 81 a5 40 5c c2    	vsubpd zmm16,zmm27,zmm26
  978715:	62 a1 85 48 58 c8    	vaddpd zmm17,zmm15,zmm16
  97871b:	62 81 b5 40 5c d4    	vsubpd zmm18,zmm25,zmm28
  978721:	62 c1 95 48 5c dc    	vsubpd zmm19,zmm13,zmm12
  978727:	62 51 8d 48 5c d2    	vsubpd zmm10,zmm14,zmm10
  97872d:	62 31 85 48 5c f0    	vsubpd zmm14,zmm15,zmm16
  978733:	62 51 95 48 58 e4    	vaddpd zmm12,zmm13,zmm12
  978739:	62 11 b5 40 58 ec    	vaddpd zmm13,zmm25,zmm28
  97873f:	62 52 b5 48 7f e5    	vpermt2pd zmm12,zmm9,zmm13
  978745:	62 73 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm12,0x2
  97874c:	02 02 
  97874e:	c5 7d 11 24 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm12
  978753:	62 c2 b5 48 7f cb    	vpermt2pd zmm17,zmm9,zmm11
  978759:	62 e3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm17,0x2
  978760:	05 02 
  978762:	62 e1 fd 28 11 8c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm17
  978769:	30 00 00 00 
  97876d:	62 a2 b5 48 7f da    	vpermt2pd zmm19,zmm9,zmm18
  978773:	62 e3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm19,0x2
  97877a:	08 02 
  97877c:	62 e1 fd 28 11 5c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm19
  978783:	03 
  978784:	62 52 b5 48 7f f2    	vpermt2pd zmm14,zmm9,zmm10
  97878a:	62 73 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm14,0x2
  978791:	0b 02 
  978793:	c5 7d 11 b4 16 90 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm14
  97879a:	00 00 
  97879c:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  9787a3:	48 39 d0             	cmp    rax,rdx
  9787a6:	0f 85 84 fd ff ff    	jne    978530 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  9787ac:	c5 f8 77             	vzeroupper
  9787af:	c3                   	ret
