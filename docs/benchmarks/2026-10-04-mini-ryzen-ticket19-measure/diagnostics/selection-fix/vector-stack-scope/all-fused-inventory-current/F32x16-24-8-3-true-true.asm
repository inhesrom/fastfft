
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a3e440 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a3e440:	55                   	push   rbp
  a3e441:	48 89 e5             	mov    rbp,rsp
  a3e444:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a3e448:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a3e44f:	62 f1 7c 48 28 05 27 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff688b27]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3e456:	8b 68 ff 
  a3e459:	62 f1 7c 48 28 0d 9d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff688a9d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a3e460:	8a 68 ff 
  a3e463:	62 f1 7c 48 28 15 93 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff688993]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3e46a:	89 68 ff 
  a3e46d:	48 c1 e2 06          	shl    rdx,0x6
  a3e471:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a3e475:	31 d2                	xor    edx,edx
  a3e477:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a3e47c:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a3e481:	62 f1 7c 48 28 25 35 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff653535]        # 919c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ee70>
  a3e488:	35 65 ff 
  a3e48b:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a3e48f:	62 f2 7d 48 18 35 03 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff636f03]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a3e496:	6f 63 ff 
  a3e499:	62 f2 7d 48 18 3d bd 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff636fbd]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a3e4a0:	6f 63 ff 
  a3e4a3:	62 71 7c 48 28 05 53 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff653553]        # 91a00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1eeb0>
  a3e4aa:	35 65 ff 
  a3e4ad:	62 72 7d 48 18 0d 1d 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff636e1d]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a3e4b4:	6e 63 ff 
  a3e4b7:	62 71 7c 48 28 15 7f 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff65357f]        # 91a40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1eef0>
  a3e4be:	35 65 ff 
  a3e4c1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a3e4c8:	0f 1f 84 00 00 00 00 
  a3e4cf:	00 
  a3e4d0:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a3e4d5:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a3e4da:	c5 7b 10 5c 17 10    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x10]
  a3e4e0:	c5 78 10 24 17       	vmovups xmm12,XMMWORD PTR [rdi+rdx*1]
  a3e4e5:	c5 78 10 74 17 18    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x18]
  a3e4eb:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0x30]
  a3e4f2:	03 
  a3e4f3:	62 e1 7c 08 10 94 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x48]
  a3e4fa:	48 00 00 00 
  a3e4fe:	62 53 1d 48 18 eb 01 	vinsertf32x4 zmm13,zmm12,xmm11,0x1
  a3e505:	62 51 7c 48 28 dd    	vmovaps zmm11,zmm13
  a3e50b:	62 72 3d 48 7f ed    	vpermt2ps zmm13,zmm8,zmm5
  a3e511:	c5 7b 10 64 17 28    	vmovsd xmm12,QWORD PTR [rdi+rdx*1+0x28]
  a3e517:	62 c3 0d 48 18 cc 01 	vinsertf32x4 zmm17,zmm14,xmm12,0x1
  a3e51e:	62 31 7c 48 28 f9    	vmovaps zmm15,zmm17
  a3e524:	62 e2 3d 48 7f cd    	vpermt2ps zmm17,zmm8,zmm5
  a3e52a:	c5 7b 10 64 17 40    	vmovsd xmm12,QWORD PTR [rdi+rdx*1+0x40]
  a3e530:	62 53 7d 40 18 e4 01 	vinsertf32x4 zmm12,zmm16,xmm12,0x1
  a3e537:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a3e53d:	62 72 3d 48 7f e5    	vpermt2ps zmm12,zmm8,zmm5
  a3e543:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x58]
  a3e54a:	0b 
  a3e54b:	62 a3 6d 40 18 d0 01 	vinsertf32x4 zmm18,zmm18,xmm16,0x1
  a3e552:	62 a1 7c 48 28 da    	vmovaps zmm19,zmm18
  a3e558:	62 e2 3d 48 7f d5    	vpermt2ps zmm18,zmm8,zmm5
  a3e55e:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x70]
  a3e565:	0e 
  a3e566:	62 e1 7c 08 10 64 17 	vmovups xmm20,XMMWORD PTR [rdi+rdx*1+0x60]
  a3e56d:	06 
  a3e56e:	62 a3 5d 40 18 e0 01 	vinsertf32x4 zmm20,zmm20,xmm16,0x1
  a3e575:	62 72 5d 48 7f dd    	vpermt2ps zmm11,zmm4,zmm5
  a3e57b:	62 a1 7c 48 28 c4    	vmovaps zmm16,zmm20
  a3e581:	62 e2 3d 48 7f e5    	vpermt2ps zmm20,zmm8,zmm5
  a3e587:	62 e1 ff 08 10 6c 17 	vmovsd xmm21,QWORD PTR [rdi+rdx*1+0x88]
  a3e58e:	11 
  a3e58f:	62 72 5d 48 7f fd    	vpermt2ps zmm15,zmm4,zmm5
  a3e595:	62 e1 7c 08 10 b4 17 	vmovups xmm22,XMMWORD PTR [rdi+rdx*1+0x78]
  a3e59c:	78 00 00 00 
  a3e5a0:	62 a3 4d 40 18 ed 01 	vinsertf32x4 zmm21,zmm22,xmm21,0x1
  a3e5a7:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a3e5ad:	62 72 5d 48 7f f5    	vpermt2ps zmm14,zmm4,zmm5
  a3e5b3:	62 e2 3d 48 7f ed    	vpermt2ps zmm21,zmm8,zmm5
  a3e5b9:	62 e1 ff 08 10 7c 17 	vmovsd xmm23,QWORD PTR [rdi+rdx*1+0xa0]
  a3e5c0:	14 
  a3e5c1:	62 61 7c 08 10 44 17 	vmovups xmm24,XMMWORD PTR [rdi+rdx*1+0x90]
  a3e5c8:	09 
  a3e5c9:	62 e2 5d 48 7f dd    	vpermt2ps zmm19,zmm4,zmm5
  a3e5cf:	62 a3 3d 40 18 ff 01 	vinsertf32x4 zmm23,zmm24,xmm23,0x1
  a3e5d6:	62 21 7c 48 28 c7    	vmovaps zmm24,zmm23
  a3e5dc:	62 e2 3d 48 7f fd    	vpermt2ps zmm23,zmm8,zmm5
  a3e5e2:	62 e2 5d 48 7f c5    	vpermt2ps zmm16,zmm4,zmm5
  a3e5e8:	62 61 ff 08 10 4c 17 	vmovsd xmm25,QWORD PTR [rdi+rdx*1+0xb8]
  a3e5ef:	17 
  a3e5f0:	62 61 7c 08 10 94 17 	vmovups xmm26,XMMWORD PTR [rdi+rdx*1+0xa8]
  a3e5f7:	a8 00 00 00 
  a3e5fb:	62 03 2d 40 18 c9 01 	vinsertf32x4 zmm25,zmm26,xmm25,0x1
  a3e602:	62 e2 5d 48 7f f5    	vpermt2ps zmm22,zmm4,zmm5
  a3e608:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a3e60e:	62 62 5d 48 7f d5    	vpermt2ps zmm26,zmm4,zmm5
  a3e614:	62 62 3d 48 7f cd    	vpermt2ps zmm25,zmm8,zmm5
  a3e61a:	62 62 5d 48 7f c5    	vpermt2ps zmm24,zmm4,zmm5
  a3e620:	62 21 14 48 58 dc    	vaddps zmm27,zmm13,zmm20
  a3e626:	62 31 14 48 5c ec    	vsubps zmm13,zmm13,zmm20
  a3e62c:	62 a1 74 40 58 e5    	vaddps zmm20,zmm17,zmm21
  a3e632:	62 a1 74 40 5c cd    	vsubps zmm17,zmm17,zmm21
  a3e638:	62 a1 04 48 58 ee    	vaddps zmm21,zmm15,zmm22
  a3e63e:	62 31 04 48 5c fe    	vsubps zmm15,zmm15,zmm22
  a3e644:	62 81 64 40 58 f2    	vaddps zmm22,zmm19,zmm26
  a3e64a:	62 81 64 40 5c da    	vsubps zmm19,zmm19,zmm26
  a3e650:	62 01 6c 40 58 d1    	vaddps zmm26,zmm18,zmm25
  a3e656:	62 81 6c 40 5c d1    	vsubps zmm18,zmm18,zmm25
  a3e65c:	62 01 0c 48 58 c8    	vaddps zmm25,zmm14,zmm24
  a3e662:	62 11 0c 48 5c f0    	vsubps zmm14,zmm14,zmm24
  a3e668:	62 21 1c 48 58 c7    	vaddps zmm24,zmm12,zmm23
  a3e66e:	62 51 44 40 5c e4    	vsubps zmm12,zmm23,zmm12
  a3e674:	62 c1 74 40 58 ff    	vaddps zmm23,zmm17,zmm15
  a3e67a:	62 31 04 48 5c f9    	vsubps zmm15,zmm15,zmm17
  a3e680:	62 a1 64 40 5c ca    	vsubps zmm17,zmm19,zmm18
  a3e686:	62 a1 6c 40 58 d3    	vaddps zmm18,zmm18,zmm19
  a3e68c:	62 a1 24 48 58 d8    	vaddps zmm19,zmm11,zmm16
  a3e692:	62 31 24 48 5c d8    	vsubps zmm11,zmm11,zmm16
  a3e698:	62 81 24 40 58 c0    	vaddps zmm16,zmm27,zmm24
  a3e69e:	62 01 24 40 5c c0    	vsubps zmm24,zmm27,zmm24
  a3e6a4:	62 21 54 40 58 de    	vaddps zmm27,zmm21,zmm22
  a3e6aa:	62 a1 54 40 5c ee    	vsubps zmm21,zmm21,zmm22
  a3e6b0:	62 81 5c 40 58 f2    	vaddps zmm22,zmm20,zmm26
  a3e6b6:	62 a1 2c 40 5c e4    	vsubps zmm20,zmm26,zmm20
  a3e6bc:	62 01 64 40 58 d1    	vaddps zmm26,zmm19,zmm25
  a3e6c2:	62 01 64 40 5c c9    	vsubps zmm25,zmm19,zmm25
  a3e6c8:	62 41 14 48 58 e6    	vaddps zmm28,zmm13,zmm14
  a3e6ce:	62 e1 44 40 59 de    	vmulps zmm19,zmm23,zmm6
  a3e6d4:	62 e1 74 40 59 ce    	vmulps zmm17,zmm17,zmm6
  a3e6da:	62 71 04 48 59 fe    	vmulps zmm15,zmm15,zmm6
  a3e6e0:	62 e1 6c 40 59 d6    	vmulps zmm18,zmm18,zmm6
  a3e6e6:	62 c1 14 48 5c fe    	vsubps zmm23,zmm13,zmm14
  a3e6ec:	62 21 04 48 5c ea    	vsubps zmm29,zmm15,zmm18
  a3e6f2:	62 31 04 48 58 fa    	vaddps zmm15,zmm15,zmm18
  a3e6f8:	62 c1 1c 48 58 d3    	vaddps zmm18,zmm12,zmm11
  a3e6fe:	62 41 24 48 5c f4    	vsubps zmm30,zmm11,zmm12
  a3e704:	62 31 64 40 58 e1    	vaddps zmm12,zmm19,zmm17
  a3e70a:	62 21 74 40 5c fb    	vsubps zmm31,zmm17,zmm19
  a3e710:	62 b1 7c 40 58 de    	vaddps zmm3,zmm16,zmm22
  a3e716:	62 a1 7c 40 5c c6    	vsubps zmm16,zmm16,zmm22
  a3e71c:	62 11 2c 40 58 db    	vaddps zmm11,zmm26,zmm27
  a3e722:	62 81 2c 40 5c db    	vsubps zmm19,zmm26,zmm27
  a3e728:	62 21 3c 40 58 d5    	vaddps zmm26,zmm24,zmm21
  a3e72e:	62 a1 3c 40 5c ed    	vsubps zmm21,zmm24,zmm21
  a3e734:	62 51 1c 40 58 f4    	vaddps zmm14,zmm28,zmm12
  a3e73a:	62 41 1c 40 5c c4    	vsubps zmm24,zmm28,zmm12
  a3e740:	62 11 5c 40 58 e9    	vaddps zmm13,zmm20,zmm25
  a3e746:	62 a1 34 40 5c e4    	vsubps zmm20,zmm25,zmm20
  a3e74c:	62 11 6c 40 58 e5    	vaddps zmm12,zmm18,zmm29
  a3e752:	62 81 6c 40 5c f5    	vsubps zmm22,zmm18,zmm29
  a3e758:	62 c1 44 40 58 cf    	vaddps zmm17,zmm23,zmm15
  a3e75e:	62 c1 44 40 5c ff    	vsubps zmm23,zmm23,zmm15
  a3e764:	62 11 0c 40 58 ff    	vaddps zmm15,zmm30,zmm31
  a3e76a:	62 81 0c 40 5c d7    	vsubps zmm18,zmm30,zmm31
  a3e770:	62 f2 7d 48 7f dd    	vpermt2ps zmm3,zmm0,zmm5
  a3e776:	62 e2 7d 48 7f c5    	vpermt2ps zmm16,zmm0,zmm5
  a3e77c:	62 b2 75 48 7f d8    	vpermt2ps zmm3,zmm1,zmm16
  a3e782:	62 72 7d 48 7f f5    	vpermt2ps zmm14,zmm0,zmm5
  a3e788:	62 62 7d 48 7f c5    	vpermt2ps zmm24,zmm0,zmm5
  a3e78e:	62 12 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm24
  a3e794:	62 62 7d 48 7f d5    	vpermt2ps zmm26,zmm0,zmm5
  a3e79a:	62 e2 7d 48 7f ed    	vpermt2ps zmm21,zmm0,zmm5
  a3e7a0:	62 22 75 48 7f d5    	vpermt2ps zmm26,zmm1,zmm21
  a3e7a6:	62 e2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm5
  a3e7ac:	62 e2 7d 48 7f fd    	vpermt2ps zmm23,zmm0,zmm5
  a3e7b2:	62 a2 75 48 7f cf    	vpermt2ps zmm17,zmm1,zmm23
  a3e7b8:	62 81 e5 48 14 ea    	vunpcklpd zmm21,zmm3,zmm26
  a3e7be:	62 81 e5 48 15 c2    	vunpckhpd zmm16,zmm3,zmm26
  a3e7c4:	62 72 7d 48 7f dd    	vpermt2ps zmm11,zmm0,zmm5
  a3e7ca:	62 e2 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm5
  a3e7d0:	62 32 75 48 7f db    	vpermt2ps zmm11,zmm1,zmm19
  a3e7d6:	62 72 7d 48 7f e5    	vpermt2ps zmm12,zmm0,zmm5
  a3e7dc:	62 72 7d 48 7f ed    	vpermt2ps zmm13,zmm0,zmm5
  a3e7e2:	62 e2 7d 48 7f f5    	vpermt2ps zmm22,zmm0,zmm5
  a3e7e8:	62 e2 7d 48 7f e5    	vpermt2ps zmm20,zmm0,zmm5
  a3e7ee:	62 32 75 48 7f e6    	vpermt2ps zmm12,zmm1,zmm22
  a3e7f4:	62 32 75 48 7f ec    	vpermt2ps zmm13,zmm1,zmm20
  a3e7fa:	62 b1 8d 48 14 d9    	vunpcklpd zmm3,zmm14,zmm17
  a3e800:	62 a1 7c 48 28 dd    	vmovaps zmm19,zmm21
  a3e806:	62 72 7d 48 7f fd    	vpermt2ps zmm15,zmm0,zmm5
  a3e80c:	62 e2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm5
  a3e812:	62 31 8d 48 15 f1    	vunpckhpd zmm14,zmm14,zmm17
  a3e818:	62 32 75 48 7f fa    	vpermt2ps zmm15,zmm1,zmm18
  a3e81e:	62 c1 a5 48 14 cd    	vunpcklpd zmm17,zmm11,zmm13
  a3e824:	62 51 a5 48 15 dd    	vunpckhpd zmm11,zmm11,zmm13
  a3e82a:	62 e1 7c 48 28 15 0c 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff68860c]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a3e831:	86 68 ff 
  a3e834:	62 e2 6d 40 7f eb    	vpermt2ps zmm21,zmm18,zmm3
  a3e83a:	62 51 9d 48 14 ef    	vunpcklpd zmm13,zmm12,zmm15
  a3e840:	62 51 9d 48 15 e7    	vunpckhpd zmm12,zmm12,zmm15
  a3e846:	62 31 7c 48 28 f9    	vmovaps zmm15,zmm17
  a3e84c:	62 c2 6d 48 7f c6    	vpermt2ps zmm16,zmm2,zmm14
  a3e852:	62 c2 6d 40 7f cd    	vpermt2ps zmm17,zmm18,zmm13
  a3e858:	62 71 7c 48 10 71 02 	vmovups zmm14,ZMMWORD PTR [rcx+0x80]
  a3e85f:	62 e1 7c 48 10 51 03 	vmovups zmm18,ZMMWORD PTR [rcx+0xc0]
  a3e866:	62 52 6d 48 7f dc    	vpermt2ps zmm11,zmm2,zmm12
  a3e86c:	62 51 54 40 59 e6    	vmulps zmm12,zmm21,zmm14
  a3e872:	62 32 75 40 bc e2    	vfnmadd231ps zmm12,zmm17,zmm18
  a3e878:	62 51 74 40 59 f6    	vmulps zmm14,zmm17,zmm14
  a3e87e:	62 e1 7c 48 10 49 04 	vmovups zmm17,ZMMWORD PTR [rcx+0x100]
  a3e885:	62 32 6d 40 b8 f5    	vfmadd231ps zmm14,zmm18,zmm21
  a3e88b:	62 e1 7c 48 10 51 05 	vmovups zmm18,ZMMWORD PTR [rcx+0x140]
  a3e892:	62 a1 7c 40 59 e1    	vmulps zmm20,zmm16,zmm17
  a3e898:	62 a2 25 48 bc e2    	vfnmadd231ps zmm20,zmm11,zmm18
  a3e89e:	62 31 24 48 59 d9    	vmulps zmm11,zmm11,zmm17
  a3e8a4:	62 32 6d 40 b8 d8    	vfmadd231ps zmm11,zmm18,zmm16
  a3e8aa:	62 e2 6d 48 7f db    	vpermt2ps zmm19,zmm2,zmm3
  a3e8b0:	62 52 6d 48 7f fd    	vpermt2ps zmm15,zmm2,zmm13
  a3e8b6:	62 d1 0c 48 58 db    	vaddps zmm3,zmm14,zmm11
  a3e8bc:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a3e8c2:	62 51 0c 48 5c db    	vsubps zmm11,zmm14,zmm11
  a3e8c8:	62 31 1c 48 58 f4    	vaddps zmm14,zmm12,zmm20
  a3e8ce:	62 32 0d 48 ac eb    	vfnmadd213ps zmm13,zmm14,zmm19
  a3e8d4:	62 31 1c 48 5c e4    	vsubps zmm12,zmm12,zmm20
  a3e8da:	62 e1 7c 48 28 c7    	vmovaps zmm16,zmm7
  a3e8e0:	62 51 24 48 59 d9    	vmulps zmm11,zmm11,zmm9
  a3e8e6:	62 c2 65 48 ac c7    	vfnmadd213ps zmm16,zmm3,zmm15
  a3e8ec:	62 f1 04 48 58 db    	vaddps zmm3,zmm15,zmm3
  a3e8f2:	62 51 14 48 58 fb    	vaddps zmm15,zmm13,zmm11
  a3e8f8:	62 51 14 48 5c db    	vsubps zmm11,zmm13,zmm11
  a3e8fe:	62 51 1c 48 59 e1    	vmulps zmm12,zmm12,zmm9
  a3e904:	62 51 64 40 58 ee    	vaddps zmm13,zmm19,zmm14
  a3e90a:	62 51 7c 40 5c f4    	vsubps zmm14,zmm16,zmm12
  a3e910:	62 51 7c 40 58 e4    	vaddps zmm12,zmm16,zmm12
  a3e916:	62 d2 2d 48 7f dd    	vpermt2ps zmm3,zmm10,zmm13
  a3e91c:	62 f1 7c 48 11 1c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm3
  a3e923:	62 52 2d 48 7f f7    	vpermt2ps zmm14,zmm10,zmm15
  a3e929:	62 71 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm14
  a3e930:	01 
  a3e931:	62 52 2d 48 7f e3    	vpermt2ps zmm12,zmm10,zmm11
  a3e937:	62 71 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm12
  a3e93e:	02 
  a3e93f:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  a3e946:	48 39 d0             	cmp    rax,rdx
  a3e949:	0f 85 81 fb ff ff    	jne    a3e4d0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x90>
  a3e94f:	48 89 ec             	mov    rsp,rbp
  a3e952:	5d                   	pop    rbp
  a3e953:	c5 f8 77             	vzeroupper
  a3e956:	c3                   	ret
