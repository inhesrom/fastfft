
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a65580 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a65580:	55                   	push   rbp
  a65581:	48 89 e5             	mov    rbp,rsp
  a65584:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a65588:	48 81 ec 80 02 00 00 	sub    rsp,0x280
  a6558f:	c6 84 24 00 02 00 00 	mov    BYTE PTR [rsp+0x200],0x0
  a65596:	00 
  a65597:	48 8d 84 24 00 02 00 	lea    rax,[rsp+0x200]
  a6559e:	00 
  a6559f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a655a4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a655a9:	62 f1 7c 48 10 0f    	vmovups zmm1,ZMMWORD PTR [rdi]
  a655af:	c5 fc 10 47 40       	vmovups ymm0,YMMWORD PTR [rdi+0x40]
  a655b4:	62 f1 7c 48 28 15 02 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff62ea02]        # 93fc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21470>
  a655bb:	ea 62 ff 
  a655be:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a655c4:	62 f2 6d 48 7f d8    	vpermt2ps zmm3,zmm2,zmm0
  a655ca:	62 f1 7c 48 28 25 2c 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff62ea2c]        # 94000 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x214b0>
  a655d1:	ea 62 ff 
  a655d4:	62 f2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm0
  a655da:	62 f1 7c 48 10 af 60 	vmovups zmm5,ZMMWORD PTR [rdi+0x60]
  a655e1:	00 00 00 
  a655e4:	c5 fc 10 87 a0 00 00 	vmovups ymm0,YMMWORD PTR [rdi+0xa0]
  a655eb:	00 
  a655ec:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a655f2:	62 f2 6d 48 7f f0    	vpermt2ps zmm6,zmm2,zmm0
  a655f8:	62 f2 5d 48 7f e8    	vpermt2ps zmm5,zmm4,zmm0
  a655fe:	62 71 7c 48 10 47 03 	vmovups zmm8,ZMMWORD PTR [rdi+0xc0]
  a65605:	c5 fc 10 87 00 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x100]
  a6560c:	00 
  a6560d:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a65613:	62 72 6d 48 7f c8    	vpermt2ps zmm9,zmm2,zmm0
  a65619:	62 72 5d 48 7f c0    	vpermt2ps zmm8,zmm4,zmm0
  a6561f:	62 71 7c 48 10 97 20 	vmovups zmm10,ZMMWORD PTR [rdi+0x120]
  a65626:	01 00 00 
  a65629:	c5 fc 10 87 60 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x160]
  a65630:	00 
  a65631:	62 f2 2d 48 77 d0    	vpermi2ps zmm2,zmm10,zmm0
  a65637:	62 72 5d 48 7f d0    	vpermt2ps zmm10,zmm4,zmm0
  a6563d:	62 51 74 48 58 d8    	vaddps zmm11,zmm1,zmm8
  a65643:	62 51 54 48 58 e2    	vaddps zmm12,zmm5,zmm10
  a65649:	62 d1 24 48 58 c4    	vaddps zmm0,zmm11,zmm12
  a6564f:	62 51 64 48 58 e9    	vaddps zmm13,zmm3,zmm9
  a65655:	62 71 4c 48 58 f2    	vaddps zmm14,zmm6,zmm2
  a6565b:	62 d1 14 48 58 fe    	vaddps zmm7,zmm13,zmm14
  a65661:	62 d1 74 48 5c c8    	vsubps zmm1,zmm1,zmm8
  a65667:	62 f1 4c 48 5c d2    	vsubps zmm2,zmm6,zmm2
  a6566d:	62 f1 74 48 58 e2    	vaddps zmm4,zmm1,zmm2
  a65673:	62 d1 64 48 5c d9    	vsubps zmm3,zmm3,zmm9
  a65679:	62 f1 2c 48 5c ed    	vsubps zmm5,zmm10,zmm5
  a6567f:	62 e1 54 48 58 cb    	vaddps zmm17,zmm5,zmm3
  a65685:	62 d1 24 48 5c f4    	vsubps zmm6,zmm11,zmm12
  a6568b:	62 51 14 48 5c f6    	vsubps zmm14,zmm13,zmm14
  a65691:	62 71 74 48 5c c2    	vsubps zmm8,zmm1,zmm2
  a65697:	62 e1 64 48 5c d5    	vsubps zmm18,zmm3,zmm5
  a6569d:	62 e1 7c 48 28 25 d9 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6618d9]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a656a4:	18 66 ff 
  a656a7:	62 a1 64 00 57 db    	vxorps xmm19,xmm19,xmm19
  a656ad:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a656b3:	62 b2 5d 40 7f d3    	vpermt2ps zmm2,zmm20,zmm19
  a656b9:	62 e1 7c 48 28 35 fd 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6618fd]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a656c0:	18 66 ff 
  a656c3:	62 b2 4d 40 7f c3    	vpermt2ps zmm0,zmm22,zmm19
  a656c9:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a656cf:	62 32 5d 40 7f d3    	vpermt2ps zmm10,zmm20,zmm19
  a656d5:	62 b2 4d 40 7f e3    	vpermt2ps zmm4,zmm22,zmm19
  a656db:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  a656e1:	62 b2 5d 40 7f eb    	vpermt2ps zmm5,zmm20,zmm19
  a656e7:	62 b2 4d 40 7f f3    	vpermt2ps zmm6,zmm22,zmm19
  a656ed:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a656f3:	62 32 5d 40 7f db    	vpermt2ps zmm11,zmm20,zmm19
  a656f9:	62 32 4d 40 7f c3    	vpermt2ps zmm8,zmm22,zmm19
  a656ff:	62 a1 54 00 57 ed    	vxorps xmm21,xmm21,xmm21
  a65705:	62 a2 5d 40 7f ed    	vpermt2ps zmm21,zmm20,zmm21
  a6570b:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a65710:	62 52 4d 40 7f ed    	vpermt2ps zmm13,zmm22,zmm13
  a65716:	62 e1 7c 48 28 05 e0 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6617e0]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a6571d:	17 66 ff 
  a65720:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a65726:	62 b2 7d 40 7f cd    	vpermt2ps zmm1,zmm16,zmm21
  a6572c:	62 61 7c 48 28 05 0a 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff66180a]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a65733:	18 66 ff 
  a65736:	62 b2 3d 40 7f d5    	vpermt2ps zmm2,zmm24,zmm21
  a6573c:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a65742:	62 32 7d 40 7f e5    	vpermt2ps zmm12,zmm16,zmm21
  a65748:	62 32 3d 40 7f d5    	vpermt2ps zmm10,zmm24,zmm21
  a6574e:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a65754:	62 32 7d 40 7f cd    	vpermt2ps zmm9,zmm16,zmm21
  a6575a:	62 b2 3d 40 7f ed    	vpermt2ps zmm5,zmm24,zmm21
  a65760:	62 51 7c 48 28 fb    	vmovaps zmm15,zmm11
  a65766:	62 32 7d 40 7f fd    	vpermt2ps zmm15,zmm16,zmm21
  a6576c:	62 32 3d 40 7f dd    	vpermt2ps zmm11,zmm24,zmm21
  a65772:	62 d2 7d 40 7f c5    	vpermt2ps zmm0,zmm16,zmm13
  a65778:	62 d2 7d 40 7f e5    	vpermt2ps zmm4,zmm16,zmm13
  a6577e:	62 d2 7d 40 7f f5    	vpermt2ps zmm6,zmm16,zmm13
  a65784:	62 52 7d 40 7f c5    	vpermt2ps zmm8,zmm16,zmm13
  a6578a:	62 d1 f5 48 14 d9    	vunpcklpd zmm3,zmm1,zmm9
  a65790:	62 51 f5 48 15 c9    	vunpckhpd zmm9,zmm1,zmm9
  a65796:	62 41 9d 48 14 cf    	vunpcklpd zmm25,zmm12,zmm15
  a6579c:	62 51 9d 48 15 e7    	vunpckhpd zmm12,zmm12,zmm15
  a657a2:	62 f1 ed 48 14 cd    	vunpcklpd zmm1,zmm2,zmm5
  a657a8:	62 f1 ed 48 15 ed    	vunpckhpd zmm5,zmm2,zmm5
  a657ae:	62 51 ad 48 14 fb    	vunpcklpd zmm15,zmm10,zmm11
  a657b4:	62 41 ad 48 15 d3    	vunpckhpd zmm26,zmm10,zmm11
  a657ba:	62 71 fd 48 14 d6    	vunpcklpd zmm10,zmm0,zmm6
  a657c0:	62 f1 fd 48 15 d6    	vunpckhpd zmm2,zmm0,zmm6
  a657c6:	62 41 dd 48 14 d8    	vunpcklpd zmm27,zmm4,zmm8
  a657cc:	62 41 dd 48 15 e0    	vunpckhpd zmm28,zmm4,zmm8
  a657d2:	62 71 7c 48 28 05 24 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff661624]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a657d9:	16 66 ff 
  a657dc:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a657e2:	62 92 3d 48 7f c1    	vpermt2ps zmm0,zmm8,zmm25
  a657e8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a657ef:	02 
  a657f0:	62 e1 7c 48 28 3d 46 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff661646]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a657f7:	16 66 ff 
  a657fa:	62 92 45 40 7f d9    	vpermt2ps zmm3,zmm23,zmm25
  a65800:	62 d1 7c 48 28 e1    	vmovaps zmm4,zmm9
  a65806:	62 d2 3d 48 7f e4    	vpermt2ps zmm4,zmm8,zmm12
  a6580c:	62 52 45 40 7f cc    	vpermt2ps zmm9,zmm23,zmm12
  a65812:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a65818:	62 52 3d 48 7f df    	vpermt2ps zmm11,zmm8,zmm15
  a6581e:	62 d2 45 40 7f cf    	vpermt2ps zmm1,zmm23,zmm15
  a65824:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a6582b:	03 
  a6582c:	62 71 7c 48 28 fd    	vmovaps zmm15,zmm5
  a65832:	62 12 3d 48 7f fa    	vpermt2ps zmm15,zmm8,zmm26
  a65838:	62 92 45 40 7f ea    	vpermt2ps zmm5,zmm23,zmm26
  a6583e:	62 d1 7c 48 28 f2    	vmovaps zmm6,zmm10
  a65844:	62 92 3d 48 7f f3    	vpermt2ps zmm6,zmm8,zmm27
  a6584a:	62 12 45 40 7f d3    	vpermt2ps zmm10,zmm23,zmm27
  a65850:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a65856:	62 12 3d 48 7f e4    	vpermt2ps zmm12,zmm8,zmm28
  a6585c:	62 92 45 40 7f d4    	vpermt2ps zmm2,zmm23,zmm28
  a65862:	62 61 7c 48 28 cf    	vmovaps zmm25,zmm7
  a65868:	62 22 5d 40 7f cb    	vpermt2ps zmm25,zmm20,zmm19
  a6586e:	62 b2 4d 40 7f fb    	vpermt2ps zmm7,zmm22,zmm19
  a65874:	62 21 7c 48 28 d1    	vmovaps zmm26,zmm17
  a6587a:	62 22 5d 40 7f d3    	vpermt2ps zmm26,zmm20,zmm19
  a65880:	62 a2 4d 40 7f cb    	vpermt2ps zmm17,zmm22,zmm19
  a65886:	62 41 7c 48 28 e6    	vmovaps zmm28,zmm14
  a6588c:	62 22 5d 40 7f e3    	vpermt2ps zmm28,zmm20,zmm19
  a65892:	62 32 4d 40 7f f3    	vpermt2ps zmm14,zmm22,zmm19
  a65898:	62 a2 6d 40 77 e3    	vpermi2ps zmm20,zmm18,zmm19
  a6589e:	62 a2 4d 40 7f d3    	vpermt2ps zmm18,zmm22,zmm19
  a658a4:	62 81 7c 48 28 d9    	vmovaps zmm19,zmm25
  a658aa:	62 a2 7d 40 7f dd    	vpermt2ps zmm19,zmm16,zmm21
  a658b0:	62 22 3d 40 7f cd    	vpermt2ps zmm25,zmm24,zmm21
  a658b6:	62 81 7c 48 28 f2    	vmovaps zmm22,zmm26
  a658bc:	62 a2 7d 40 7f f5    	vpermt2ps zmm22,zmm16,zmm21
  a658c2:	62 22 3d 40 7f d5    	vpermt2ps zmm26,zmm24,zmm21
  a658c8:	62 01 7c 48 28 dc    	vmovaps zmm27,zmm28
  a658ce:	62 22 7d 40 7f dd    	vpermt2ps zmm27,zmm16,zmm21
  a658d4:	62 22 3d 40 7f e5    	vpermt2ps zmm28,zmm24,zmm21
  a658da:	62 21 7c 48 28 ec    	vmovaps zmm29,zmm20
  a658e0:	62 22 7d 40 7f ed    	vpermt2ps zmm29,zmm16,zmm21
  a658e6:	62 a2 3d 40 7f e5    	vpermt2ps zmm20,zmm24,zmm21
  a658ec:	62 d2 7d 40 7f fd    	vpermt2ps zmm7,zmm16,zmm13
  a658f2:	62 c2 7d 40 7f cd    	vpermt2ps zmm17,zmm16,zmm13
  a658f8:	62 52 7d 40 7f f5    	vpermt2ps zmm14,zmm16,zmm13
  a658fe:	62 c2 7d 40 7f d5    	vpermt2ps zmm18,zmm16,zmm13
  a65904:	62 81 e5 40 14 c3    	vunpcklpd zmm16,zmm19,zmm27
  a6590a:	62 01 e5 40 15 db    	vunpckhpd zmm27,zmm19,zmm27
  a65910:	62 81 cd 40 14 ed    	vunpcklpd zmm21,zmm22,zmm29
  a65916:	62 81 cd 40 15 f5    	vunpckhpd zmm22,zmm22,zmm29
  a6591c:	62 11 b5 40 14 ec    	vunpcklpd zmm13,zmm25,zmm28
  a65922:	62 81 b5 40 15 dc    	vunpckhpd zmm19,zmm25,zmm28
  a65928:	62 21 ad 40 14 c4    	vunpcklpd zmm24,zmm26,zmm20
  a6592e:	62 a1 ad 40 15 e4    	vunpckhpd zmm20,zmm26,zmm20
  a65934:	62 41 c5 48 14 e6    	vunpcklpd zmm28,zmm7,zmm14
  a6593a:	62 51 c5 48 15 f6    	vunpckhpd zmm14,zmm7,zmm14
  a65940:	62 21 f5 40 14 ca    	vunpcklpd zmm25,zmm17,zmm18
  a65946:	62 a1 f5 40 15 d2    	vunpckhpd zmm18,zmm17,zmm18
  a6594c:	62 b1 7c 48 28 c0    	vmovaps zmm0,zmm16
  a65952:	62 b2 3d 48 7f c5    	vpermt2ps zmm0,zmm8,zmm21
  a65958:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a6595f:	01 
  a65960:	62 a2 45 40 7f c5    	vpermt2ps zmm16,zmm23,zmm21
  a65966:	62 91 7c 48 28 fb    	vmovaps zmm7,zmm27
  a6596c:	62 b2 3d 48 7f fe    	vpermt2ps zmm7,zmm8,zmm22
  a65972:	62 22 45 40 7f de    	vpermt2ps zmm27,zmm23,zmm22
  a65978:	62 41 7c 48 28 ed    	vmovaps zmm29,zmm13
  a6597e:	62 02 3d 48 7f e8    	vpermt2ps zmm29,zmm8,zmm24
  a65984:	62 12 45 40 7f e8    	vpermt2ps zmm13,zmm23,zmm24
  a6598a:	62 21 7c 48 28 c3    	vmovaps zmm24,zmm19
  a65990:	62 22 3d 48 7f c4    	vpermt2ps zmm24,zmm8,zmm20
  a65996:	62 a2 45 40 7f dc    	vpermt2ps zmm19,zmm23,zmm20
  a6599c:	62 81 7c 48 28 e4    	vmovaps zmm20,zmm28
  a659a2:	62 82 3d 48 7f e1    	vpermt2ps zmm20,zmm8,zmm25
  a659a8:	62 02 45 40 7f e1    	vpermt2ps zmm28,zmm23,zmm25
  a659ae:	62 32 0d 48 77 c2    	vpermi2ps zmm8,zmm14,zmm18
  a659b4:	62 32 45 40 7f f2    	vpermt2ps zmm14,zmm23,zmm18
  a659ba:	62 61 7c 48 10 52 02 	vmovups zmm26,ZMMWORD PTR [rdx+0x80]
  a659c1:	62 61 7c 48 10 4a 03 	vmovups zmm25,ZMMWORD PTR [rdx+0xc0]
  a659c8:	62 e1 7c 48 10 72 04 	vmovups zmm22,ZMMWORD PTR [rdx+0x100]
  a659cf:	62 e1 7c 48 10 6a 05 	vmovups zmm21,ZMMWORD PTR [rdx+0x140]
  a659d6:	62 61 7c 48 10 72 06 	vmovups zmm30,ZMMWORD PTR [rdx+0x180]
  a659dd:	62 e1 7c 48 10 7a 0c 	vmovups zmm23,ZMMWORD PTR [rdx+0x300]
  a659e4:	62 61 7c 48 10 7a 0d 	vmovups zmm31,ZMMWORD PTR [rdx+0x340]
  a659eb:	62 b1 04 48 59 cf    	vmulps zmm1,zmm15,zmm23
  a659f1:	62 92 3d 40 bc cf    	vfnmadd231ps zmm1,zmm24,zmm31
  a659f7:	62 a1 3c 40 59 ff    	vmulps zmm23,zmm24,zmm23
  a659fd:	62 f1 7c 48 10 42 07 	vmovups zmm0,ZMMWORD PTR [rdx+0x1c0]
  a65a04:	62 c2 05 40 b8 ff    	vfmadd231ps zmm23,zmm31,zmm15
  a65a0a:	62 61 7c 48 10 7a 08 	vmovups zmm31,ZMMWORD PTR [rdx+0x200]
  a65a11:	62 01 34 48 59 c6    	vmulps zmm24,zmm9,zmm30
  a65a17:	62 62 25 40 bc c0    	vfnmadd231ps zmm24,zmm27,zmm0
  a65a1d:	62 11 24 40 59 fe    	vmulps zmm15,zmm27,zmm30
  a65a23:	62 61 7c 48 10 5a 12 	vmovups zmm27,ZMMWORD PTR [rdx+0x480]
  a65a2a:	62 52 7d 48 b8 f9    	vfmadd231ps zmm15,zmm0,zmm9
  a65a30:	62 f1 7c 48 10 42 13 	vmovups zmm0,ZMMWORD PTR [rdx+0x4c0]
  a65a37:	62 11 2c 48 59 cb    	vmulps zmm9,zmm10,zmm27
  a65a3d:	62 72 1d 40 bc c8    	vfnmadd231ps zmm9,zmm28,zmm0
  a65a43:	62 01 1c 40 59 db    	vmulps zmm27,zmm28,zmm27
  a65a49:	62 61 7c 48 10 72 09 	vmovups zmm30,ZMMWORD PTR [rdx+0x240]
  a65a50:	62 42 7d 48 b8 da    	vfmadd231ps zmm27,zmm0,zmm10
  a65a56:	62 f1 7c 48 10 42 0a 	vmovups zmm0,ZMMWORD PTR [rdx+0x280]
  a65a5d:	62 01 24 48 59 e7    	vmulps zmm28,zmm11,zmm31
  a65a63:	62 02 15 40 bc e6    	vfnmadd231ps zmm28,zmm29,zmm30
  a65a69:	62 11 14 40 59 d7    	vmulps zmm10,zmm29,zmm31
  a65a6f:	62 61 7c 48 10 6a 14 	vmovups zmm29,ZMMWORD PTR [rdx+0x500]
  a65a76:	62 52 0d 40 b8 d3    	vfmadd231ps zmm10,zmm30,zmm11
  a65a7c:	62 61 7c 48 10 72 15 	vmovups zmm30,ZMMWORD PTR [rdx+0x540]
  a65a83:	62 01 1c 48 59 fd    	vmulps zmm31,zmm12,zmm29
  a65a89:	62 02 3d 48 bc fe    	vfnmadd231ps zmm31,zmm8,zmm30
  a65a8f:	62 11 3c 48 59 dd    	vmulps zmm11,zmm8,zmm29
  a65a95:	62 71 7c 48 10 42 0e 	vmovups zmm8,ZMMWORD PTR [rdx+0x380]
  a65a9c:	62 52 0d 40 b8 dc    	vfmadd231ps zmm11,zmm30,zmm12
  a65aa2:	62 61 7c 48 10 6a 0f 	vmovups zmm29,ZMMWORD PTR [rdx+0x3c0]
  a65aa9:	62 51 54 48 59 e0    	vmulps zmm12,zmm5,zmm8
  a65aaf:	62 12 65 40 bc e5    	vfnmadd231ps zmm12,zmm19,zmm29
  a65ab5:	62 c1 64 40 59 d8    	vmulps zmm19,zmm19,zmm8
  a65abb:	62 61 7c 48 10 72 0b 	vmovups zmm30,ZMMWORD PTR [rdx+0x2c0]
  a65ac2:	62 e2 15 40 b8 dd    	vfmadd231ps zmm19,zmm29,zmm5
  a65ac8:	62 f1 7c 48 10 6a 10 	vmovups zmm5,ZMMWORD PTR [rdx+0x400]
  a65acf:	62 01 64 48 59 ea    	vmulps zmm29,zmm3,zmm26
  a65ad5:	62 02 7d 40 bc e9    	vfnmadd231ps zmm29,zmm16,zmm25
  a65adb:	62 81 7c 40 59 c2    	vmulps zmm16,zmm16,zmm26
  a65ae1:	62 71 7c 48 10 42 11 	vmovups zmm8,ZMMWORD PTR [rdx+0x440]
  a65ae8:	62 e2 35 40 b8 c3    	vfmadd231ps zmm16,zmm25,zmm3
  a65aee:	62 61 7c 48 10 4a 16 	vmovups zmm25,ZMMWORD PTR [rdx+0x580]
  a65af5:	62 61 4c 48 59 d5    	vmulps zmm26,zmm6,zmm5
  a65afb:	62 42 5d 40 bc d0    	vfnmadd231ps zmm26,zmm20,zmm8
  a65b01:	62 e1 5c 40 59 e5    	vmulps zmm20,zmm20,zmm5
  a65b07:	62 f1 7c 48 10 5a 17 	vmovups zmm3,ZMMWORD PTR [rdx+0x5c0]
  a65b0e:	62 e2 3d 48 b8 e6    	vfmadd231ps zmm20,zmm8,zmm6
  a65b14:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x80]
  a65b1b:	02 
  a65b1c:	62 e1 54 48 58 d1    	vaddps zmm18,zmm5,zmm1
  a65b22:	62 31 5c 48 59 c6    	vmulps zmm8,zmm4,zmm22
  a65b28:	62 32 45 48 bc c5    	vfnmadd231ps zmm8,zmm7,zmm21
  a65b2e:	62 a1 44 48 59 f6    	vmulps zmm22,zmm7,zmm22
  a65b34:	62 c1 3c 40 58 c9    	vaddps zmm17,zmm24,zmm9
  a65b3a:	62 e2 55 40 b8 f4    	vfmadd231ps zmm22,zmm21,zmm4
  a65b40:	62 b1 6c 40 58 e1    	vaddps zmm4,zmm18,zmm17
  a65b46:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm4
  a65b4d:	04 
  a65b4e:	62 81 6c 48 59 e9    	vmulps zmm21,zmm2,zmm25
  a65b54:	62 e2 0d 48 bc eb    	vfnmadd231ps zmm21,zmm14,zmm3
  a65b5a:	62 11 0c 48 59 f1    	vmulps zmm14,zmm14,zmm25
  a65b60:	62 01 1c 40 58 cf    	vaddps zmm25,zmm28,zmm31
  a65b66:	62 72 65 48 b8 f2    	vfmadd231ps zmm14,zmm3,zmm2
  a65b6c:	62 91 1c 48 58 f5    	vaddps zmm6,zmm12,zmm29
  a65b72:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a65b79:	03 
  a65b7a:	62 f1 6c 48 59 d8    	vmulps zmm3,zmm2,zmm0
  a65b80:	62 92 15 48 bc de    	vfnmadd231ps zmm3,zmm13,zmm30
  a65b86:	62 f1 14 48 59 c0    	vmulps zmm0,zmm13,zmm0
  a65b8c:	62 f1 34 40 58 e6    	vaddps zmm4,zmm25,zmm6
  a65b92:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm4
  a65b99:	06 
  a65b9a:	62 f2 0d 40 b8 c2    	vfmadd231ps zmm0,zmm30,zmm2
  a65ba0:	62 d1 2c 40 58 d0    	vaddps zmm2,zmm26,zmm8
  a65ba6:	62 71 54 40 58 eb    	vaddps zmm13,zmm21,zmm3
  a65bac:	62 01 1c 40 5c f7    	vsubps zmm30,zmm28,zmm31
  a65bb2:	62 21 64 40 58 e0    	vaddps zmm28,zmm19,zmm16
  a65bb8:	62 a1 64 40 5c d8    	vsubps zmm19,zmm19,zmm16
  a65bbe:	62 d1 6c 48 58 fd    	vaddps zmm7,zmm2,zmm13
  a65bc4:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm7
  a65bcb:	07 
  a65bcc:	62 51 2c 40 5c c0    	vsubps zmm8,zmm26,zmm8
  a65bd2:	62 61 0c 48 58 d0    	vaddps zmm26,zmm14,zmm0
  a65bd8:	62 61 0c 48 5c f8    	vsubps zmm31,zmm14,zmm0
  a65bde:	62 e1 5c 48 58 c7    	vaddps zmm16,zmm4,zmm7
  a65be4:	62 f1 54 48 5c e1    	vsubps zmm4,zmm5,zmm1
  a65bea:	62 11 04 48 58 f3    	vaddps zmm14,zmm15,zmm27
  a65bf0:	62 01 04 48 5c db    	vsubps zmm27,zmm15,zmm27
  a65bf6:	62 d1 2c 48 58 c3    	vaddps zmm0,zmm10,zmm11
  a65bfc:	62 d1 2c 48 5c eb    	vsubps zmm5,zmm10,zmm11
  a65c02:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x40]
  a65c09:	01 
  a65c0a:	62 71 44 40 58 d7    	vaddps zmm10,zmm23,zmm7
  a65c10:	62 51 14 40 5c e4    	vsubps zmm12,zmm29,zmm12
  a65c16:	62 31 5c 40 58 de    	vaddps zmm11,zmm20,zmm22
  a65c1c:	62 a1 5c 40 5c e6    	vsubps zmm20,zmm20,zmm22
  a65c22:	62 c1 0c 48 58 f2    	vaddps zmm22,zmm14,zmm10
  a65c28:	62 b1 64 48 5c cd    	vsubps zmm1,zmm3,zmm21
  a65c2e:	62 81 7c 48 58 ec    	vaddps zmm21,zmm0,zmm28
  a65c34:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm21
  a65c3b:	05 
  a65c3c:	62 b1 44 48 5c df    	vsubps zmm3,zmm7,zmm23
  a65c42:	62 11 24 48 58 fa    	vaddps zmm15,zmm11,zmm26
  a65c48:	62 01 34 48 5c e8    	vsubps zmm29,zmm9,zmm24
  a65c4e:	62 d1 54 40 58 ff    	vaddps zmm7,zmm21,zmm15
  a65c54:	62 f1 34 40 5c f6    	vsubps zmm6,zmm25,zmm6
  a65c5a:	62 31 0c 40 58 cb    	vaddps zmm9,zmm30,zmm19
  a65c60:	62 c1 6c 48 5c fd    	vsubps zmm23,zmm2,zmm13
  a65c66:	62 91 3c 48 58 d7    	vaddps zmm2,zmm8,zmm31
  a65c6c:	62 a1 6c 40 5c d1    	vsubps zmm18,zmm18,zmm17
  a65c72:	62 71 34 48 58 ea    	vaddps zmm13,zmm9,zmm2
  a65c78:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm13
  a65c7f:	02 
  a65c80:	62 01 7c 48 5c c4    	vsubps zmm24,zmm0,zmm28
  a65c86:	62 81 5c 48 58 cb    	vaddps zmm17,zmm4,zmm27
  a65c8c:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm17
  a65c93:	03 
  a65c94:	62 01 24 48 5c ca    	vsubps zmm25,zmm11,zmm26
  a65c9a:	62 f2 7d 48 18 05 bc 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff60f7bc]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a65ca1:	f7 60 ff 
  a65ca4:	62 51 2c 48 5c f6    	vsubps zmm14,zmm10,zmm14
  a65caa:	62 e1 7c 48 28 e8    	vmovaps zmm21,zmm0
  a65cb0:	62 a2 15 48 ac e9    	vfnmadd213ps zmm21,zmm13,zmm17
  a65cb6:	62 01 5c 48 5c e3    	vsubps zmm28,zmm4,zmm27
  a65cbc:	62 d1 54 48 58 e4    	vaddps zmm4,zmm5,zmm12
  a65cc2:	62 31 0c 40 5c d3    	vsubps zmm10,zmm30,zmm19
  a65cc8:	62 61 5c 40 58 d1    	vaddps zmm26,zmm20,zmm1
  a65cce:	62 11 3c 48 5c df    	vsubps zmm11,zmm8,zmm31
  a65cd4:	62 61 14 40 58 db    	vaddps zmm27,zmm29,zmm3
  a65cda:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm27
  a65ce1:	01 
  a65ce2:	62 01 64 48 5c ed    	vsubps zmm29,zmm3,zmm29
  a65ce8:	62 72 7d 48 18 2d e2 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff60f5e2]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a65cef:	f5 60 ff 
  a65cf2:	62 c1 54 48 5c dc    	vsubps zmm19,zmm5,zmm12
  a65cf8:	62 91 5c 48 58 da    	vaddps zmm3,zmm4,zmm26
  a65cfe:	62 e1 5c 40 5c e1    	vsubps zmm20,zmm20,zmm1
  a65d04:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a65d0a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a65d11:	04 
  a65d12:	62 72 7d 40 ac e1    	vfnmadd213ps zmm12,zmm16,zmm1
  a65d18:	62 b1 74 28 58 c8    	vaddps ymm1,ymm1,ymm16
  a65d1e:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a65d24:	62 a2 45 48 ac ce    	vfnmadd213ps zmm17,zmm7,zmm22
  a65d2a:	62 f1 4c 00 58 ff    	vaddps xmm7,xmm22,xmm7
  a65d30:	c5 7c 28 05 a8 14 61 	vmovaps ymm8,YMMWORD PTR [rip+0xffffffffff6114a8]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a65d37:	ff 
  a65d38:	62 f2 3d 28 7f f9    	vpermt2ps ymm7,ymm8,ymm1
  a65d3e:	62 61 7c 48 28 f0    	vmovaps zmm30,zmm0
  a65d44:	62 02 65 48 ac f3    	vfnmadd213ps zmm30,zmm3,zmm27
  a65d4a:	62 91 5c 28 5c ca    	vsubps ymm1,ymm4,ymm26
  a65d50:	62 41 74 28 59 fd    	vmulps ymm31,ymm1,ymm13
  a65d56:	62 91 54 20 58 e7    	vaddps ymm4,ymm21,ymm31
  a65d5c:	c5 b0 5c ca          	vsubps xmm1,xmm9,xmm2
  a65d60:	c5 90 59 c9          	vmulps xmm1,xmm13,xmm1
  a65d64:	62 e1 0c 00 5c c1    	vsubps xmm16,xmm30,xmm1
  a65d6a:	62 e2 3d 28 7f c4    	vpermt2ps ymm16,ymm8,ymm4
  a65d70:	62 91 3c 40 58 d1    	vaddps zmm2,zmm24,zmm25
  a65d76:	62 91 3c 20 5c e1    	vsubps ymm4,ymm24,ymm25
  a65d7c:	62 b1 4c 48 58 ef    	vaddps zmm5,zmm6,zmm23
  a65d82:	62 b1 4c 08 5c f7    	vsubps xmm6,xmm6,xmm23
  a65d88:	62 e1 7c 48 28 f8    	vmovaps zmm23,zmm0
  a65d8e:	62 a2 55 48 ac fa    	vfnmadd213ps zmm23,zmm5,zmm18
  a65d94:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a65d9a:	62 42 6d 48 ac c6    	vfnmadd213ps zmm24,zmm2,zmm14
  a65da0:	62 41 5c 28 59 cd    	vmulps ymm25,ymm4,ymm13
  a65da6:	62 41 4c 08 59 d5    	vmulps xmm26,xmm6,xmm13
  a65dac:	62 91 44 20 5c e1    	vsubps ymm4,ymm23,ymm25
  a65db2:	62 81 3c 00 58 f2    	vaddps xmm22,xmm24,xmm26
  a65db8:	62 e2 3d 28 7f f4    	vpermt2ps ymm22,ymm8,ymm4
  a65dbe:	62 d1 2c 48 58 e3    	vaddps zmm4,zmm10,zmm11
  a65dc4:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a65dca:	62 02 5d 48 ac dc    	vfnmadd213ps zmm27,zmm4,zmm28
  a65dd0:	62 f1 1c 20 58 e4    	vaddps ymm4,ymm28,ymm4
  a65dd6:	62 b1 64 40 58 f4    	vaddps zmm6,zmm19,zmm20
  a65ddc:	62 92 4d 48 ac c5    	vfnmadd213ps zmm0,zmm6,zmm29
  a65de2:	62 61 14 00 58 e6    	vaddps xmm28,xmm29,xmm6
  a65de8:	62 62 3d 28 7f e4    	vpermt2ps ymm28,ymm8,ymm4
  a65dee:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x140]
  a65df5:	05 
  a65df6:	c4 c1 5c 5c e7       	vsubps ymm4,ymm4,ymm15
  a65dfb:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x180]
  a65e02:	06 
  a65e03:	c5 c8 5c b4 24 c0 01 	vsubps xmm6,xmm6,XMMWORD PTR [rsp+0x1c0]
  a65e0a:	00 00 
  a65e0c:	c5 14 59 cc          	vmulps ymm9,ymm13,ymm4
  a65e10:	c5 90 59 f6          	vmulps xmm6,xmm13,xmm6
  a65e14:	c4 41 1c 58 f9       	vaddps ymm15,ymm12,ymm9
  a65e19:	62 f1 74 00 5c e6    	vsubps xmm4,xmm17,xmm6
  a65e1f:	62 d2 3d 28 7f e7    	vpermt2ps ymm4,ymm8,ymm15
  a65e25:	62 11 54 20 5c ff    	vsubps ymm15,ymm21,ymm31
  a65e2b:	62 f1 0c 00 58 c9    	vaddps xmm1,xmm30,xmm1
  a65e31:	62 d2 3d 28 7f cf    	vpermt2ps ymm1,ymm8,ymm15
  a65e37:	62 f1 6c 20 58 ed    	vaddps ymm5,ymm18,ymm5
  a65e3d:	c5 88 58 d2          	vaddps xmm2,xmm14,xmm2
  a65e41:	62 f2 3d 28 7f d5    	vpermt2ps ymm2,ymm8,ymm5
  a65e47:	62 b1 64 20 5c ec    	vsubps ymm5,ymm19,ymm20
  a65e4d:	c5 94 59 ed          	vmulps ymm5,ymm13,ymm5
  a65e51:	c4 41 28 5c d3       	vsubps xmm10,xmm10,xmm11
  a65e56:	62 71 24 20 58 dd    	vaddps ymm11,ymm27,ymm5
  a65e5c:	c4 41 28 59 d5       	vmulps xmm10,xmm10,xmm13
  a65e61:	c4 41 78 5c ea       	vsubps xmm13,xmm0,xmm10
  a65e66:	62 52 3d 28 7f eb    	vpermt2ps ymm13,ymm8,ymm11
  a65e6c:	c4 41 1c 5c c9       	vsubps ymm9,ymm12,ymm9
  a65e71:	62 f1 74 00 58 f6    	vaddps xmm6,xmm17,xmm6
  a65e77:	62 d2 3d 28 7f f1    	vpermt2ps ymm6,ymm8,ymm9
  a65e7d:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x80]
  a65e84:	02 
  a65e85:	c5 34 58 8c 24 c0 00 	vaddps ymm9,ymm9,YMMWORD PTR [rsp+0xc0]
  a65e8c:	00 00 
  a65e8e:	c5 e0 58 5c 24 40    	vaddps xmm3,xmm3,XMMWORD PTR [rsp+0x40]
  a65e94:	62 d2 3d 28 7f d9    	vpermt2ps ymm3,ymm8,ymm9
  a65e9a:	62 11 44 20 58 c9    	vaddps ymm9,ymm23,ymm25
  a65ea0:	62 11 3c 00 5c da    	vsubps xmm11,xmm24,xmm26
  a65ea6:	62 52 3d 28 7f d9    	vpermt2ps ymm11,ymm8,ymm9
  a65eac:	62 f1 24 20 5c ed    	vsubps ymm5,ymm27,ymm5
  a65eb2:	c5 a8 58 c0          	vaddps xmm0,xmm10,xmm0
  a65eb6:	62 f2 3d 28 7f c5    	vpermt2ps ymm0,ymm8,ymm5
  a65ebc:	c5 fc 11 3e          	vmovups YMMWORD PTR [rsi],ymm7
  a65ec0:	62 e1 7c 28 11 46 01 	vmovups YMMWORD PTR [rsi+0x20],ymm16
  a65ec7:	62 e1 7c 28 11 76 02 	vmovups YMMWORD PTR [rsi+0x40],ymm22
  a65ece:	62 61 7c 28 11 66 03 	vmovups YMMWORD PTR [rsi+0x60],ymm28
  a65ed5:	c5 fc 11 a6 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm4
  a65edc:	00 
  a65edd:	c5 fc 11 8e a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm1
  a65ee4:	00 
  a65ee5:	c5 fc 11 96 c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm2
  a65eec:	00 
  a65eed:	c5 7c 11 ae e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm13
  a65ef4:	00 
  a65ef5:	c5 fc 11 b6 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm6
  a65efc:	00 
  a65efd:	c5 fc 11 9e 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm3
  a65f04:	00 
  a65f05:	c5 7c 11 9e 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm11
  a65f0c:	00 
  a65f0d:	c5 fc 11 86 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm0
  a65f14:	00 
  a65f15:	48 89 ec             	mov    rsp,rbp
  a65f18:	5d                   	pop    rbp
  a65f19:	c5 f8 77             	vzeroupper
  a65f1c:	c3                   	ret
