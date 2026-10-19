
target/ticket19/selection-fix/fourstep-storage-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000af8600 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  af8600:	55                   	push   rbp
  af8601:	48 89 e5             	mov    rbp,rsp
  af8604:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  af8608:	48 81 ec c0 01 00 00 	sub    rsp,0x1c0
  af860f:	48 c1 e2 08          	shl    rdx,0x8
  af8613:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  af8617:	31 d2                	xor    edx,edx
  af8619:	4c 8d 84 24 40 01 00 	lea    r8,[rsp+0x140]
  af8620:	00 
  af8621:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  af8626:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  af862d:	00 00 00 
  af8630:	c6 84 24 40 01 00 00 	mov    BYTE PTR [rsp+0x140],0x0
  af8637:	00 
  af8638:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  af863d:	c5 fc 10 14 17       	vmovups ymm2,YMMWORD PTR [rdi+rdx*1]
  af8642:	c5 fc 10 6c 17 20    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x20]
  af8648:	c5 ec c6 c5 88       	vshufps ymm0,ymm2,ymm5,0x88
  af864d:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  af8653:	c5 ec c6 d5 dd       	vshufps ymm2,ymm2,ymm5,0xdd
  af8658:	c5 fc 10 6c 17 60    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x60]
  af865e:	c5 fc 10 b4 17 80 00 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x80]
  af8665:	00 00 
  af8667:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  af866d:	c5 d4 c6 fe 88       	vshufps ymm7,ymm5,ymm6,0x88
  af8672:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  af8678:	c5 d4 c6 ee dd       	vshufps ymm5,ymm5,ymm6,0xdd
  af867d:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  af8683:	c5 fc 10 b4 17 c0 00 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0xc0]
  af868a:	00 00 
  af868c:	c5 7c 10 84 17 e0 00 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0xe0]
  af8693:	00 00 
  af8695:	c4 41 4c c6 c8 88    	vshufps ymm9,ymm6,ymm8,0x88
  af869b:	c4 c3 fd 01 c9 d8    	vpermpd ymm1,ymm9,0xd8
  af86a1:	c4 c1 4c c6 f0 dd    	vshufps ymm6,ymm6,ymm8,0xdd
  af86a7:	c5 7c 10 84 17 20 01 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x120]
  af86ae:	00 00 
  af86b0:	c5 7c 10 94 17 40 01 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x140]
  af86b7:	00 00 
  af86b9:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  af86bf:	c4 41 3c c6 da 88    	vshufps ymm11,ymm8,ymm10,0x88
  af86c5:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  af86cb:	c4 41 3c c6 c2 dd    	vshufps ymm8,ymm8,ymm10,0xdd
  af86d1:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  af86d7:	c5 7c 10 94 17 80 01 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x180]
  af86de:	00 00 
  af86e0:	c5 7c 10 a4 17 a0 01 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x1a0]
  af86e7:	00 00 
  af86e9:	c4 41 2c c6 ec 88    	vshufps ymm13,ymm10,ymm12,0x88
  af86ef:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  af86f5:	c4 41 2c c6 d4 dd    	vshufps ymm10,ymm10,ymm12,0xdd
  af86fb:	c5 7c 10 a4 17 e0 01 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x1e0]
  af8702:	00 00 
  af8704:	c5 7c 10 b4 17 00 02 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x200]
  af870b:	00 00 
  af870d:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  af8713:	c4 41 1c c6 fe 88    	vshufps ymm15,ymm12,ymm14,0x88
  af8719:	c4 43 fd 01 ff d8    	vpermpd ymm15,ymm15,0xd8
  af871f:	c4 41 1c c6 e6 dd    	vshufps ymm12,ymm12,ymm14,0xdd
  af8725:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  af872b:	c5 7c 10 b4 17 40 02 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x240]
  af8732:	00 00 
  af8734:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x260]
  af873b:	13 
  af873c:	62 a1 0c 28 c6 c8 88 	vshufps ymm17,ymm14,ymm16,0x88
  af8743:	62 a3 fd 28 01 c9 d8 	vpermpd ymm17,ymm17,0xd8
  af874a:	62 31 0c 28 c6 f0 dd 	vshufps ymm14,ymm14,ymm16,0xdd
  af8751:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x2a0]
  af8758:	15 
  af8759:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x2c0]
  af8760:	16 
  af8761:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  af8767:	62 a1 7c 20 c6 da 88 	vshufps ymm19,ymm16,ymm18,0x88
  af876e:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  af8775:	62 a1 7c 20 c6 c2 dd 	vshufps ymm16,ymm16,ymm18,0xdd
  af877c:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  af8783:	62 c1 6c 28 58 ea    	vaddps ymm21,ymm2,ymm10
  af8789:	62 c1 4c 28 58 f6    	vaddps ymm22,ymm6,ymm14
  af878f:	62 c1 54 28 58 fc    	vaddps ymm23,ymm5,ymm12
  af8795:	62 21 54 20 58 c6    	vaddps ymm24,ymm21,ymm22
  af879b:	62 21 3c 28 58 c8    	vaddps ymm25,ymm8,ymm16
  af87a1:	62 41 7c 28 58 d5    	vaddps ymm26,ymm0,ymm13
  af87a7:	62 21 74 28 58 d9    	vaddps ymm27,ymm1,ymm17
  af87ad:	62 01 44 20 58 e1    	vaddps ymm28,ymm23,ymm25
  af87b3:	62 01 2c 20 58 eb    	vaddps ymm29,ymm26,ymm27
  af87b9:	62 41 44 28 58 f7    	vaddps ymm30,ymm7,ymm15
  af87bf:	62 21 24 28 58 fb    	vaddps ymm31,ymm11,ymm19
  af87c5:	62 11 0c 20 58 cf    	vaddps ymm9,ymm30,ymm31
  af87cb:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  af87d0:	62 b1 74 28 5c d9    	vsubps ymm3,ymm1,ymm17
  af87d6:	c5 ec 58 cb          	vaddps ymm1,ymm2,ymm3
  af87da:	c5 fc 29 8c 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm1
  af87e1:	00 00 
  af87e3:	62 11 3c 20 58 d4    	vaddps ymm10,ymm24,ymm28
  af87e9:	c4 c1 54 5c ec       	vsubps ymm5,ymm5,ymm12
  af87ee:	c4 c1 44 5c ff       	vsubps ymm7,ymm7,ymm15
  af87f3:	c5 54 58 ff          	vaddps ymm15,ymm5,ymm7
  af87f7:	62 51 14 20 58 e1    	vaddps ymm12,ymm29,ymm9
  af87fd:	62 31 24 28 5c db    	vsubps ymm11,ymm11,ymm19
  af8803:	62 31 3c 28 5c c0    	vsubps ymm8,ymm8,ymm16
  af8809:	62 c1 24 28 5c c0    	vsubps ymm16,ymm11,ymm8
  af880f:	c4 e2 7d 18 25 44 cb 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff57cb44]        # 7535c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  af8816:	57 ff 
  af8818:	62 e1 04 28 59 cc    	vmulps ymm17,ymm15,ymm4
  af881e:	c4 c1 7c 5c cd       	vsubps ymm1,ymm0,ymm13
  af8823:	c5 8c 5c f6          	vsubps ymm6,ymm14,ymm6
  af8827:	c5 4c 58 f9          	vaddps ymm15,ymm6,ymm1
  af882b:	62 e1 7c 20 59 d4    	vmulps ymm18,ymm16,ymm4
  af8831:	c5 c4 5c c5          	vsubps ymm0,ymm7,ymm5
  af8835:	62 e1 7c 28 59 dc    	vmulps ymm19,ymm0,ymm4
  af883b:	c4 c1 3c 58 c3       	vaddps ymm0,ymm8,ymm11
  af8840:	62 e1 7c 28 59 e4    	vmulps ymm20,ymm0,ymm4
  af8846:	62 b1 54 20 5c ee    	vsubps ymm5,ymm21,ymm22
  af884c:	62 91 0c 20 5c ff    	vsubps ymm7,ymm30,ymm31
  af8852:	62 11 2c 20 5c c3    	vsubps ymm8,ymm26,ymm27
  af8858:	c5 d4 58 c7          	vaddps ymm0,ymm5,ymm7
  af885c:	62 31 34 20 5c f7    	vsubps ymm14,ymm25,ymm23
  af8862:	c5 6c 5c eb          	vsubps ymm13,ymm2,ymm3
  af8866:	c5 74 5c de          	vsubps ymm11,ymm1,ymm6
  af886a:	c4 c1 0c 58 d0       	vaddps ymm2,ymm14,ymm8
  af886f:	62 91 3c 20 5c dc    	vsubps ymm3,ymm24,ymm28
  af8875:	62 d1 14 20 5c c9    	vsubps ymm1,ymm29,ymm9
  af887b:	c5 d4 5c e7          	vsubps ymm4,ymm5,ymm7
  af887f:	c4 41 3c 5c f6       	vsubps ymm14,ymm8,ymm14
  af8884:	c4 e3 2d 18 f3 01    	vinsertf128 ymm6,ymm10,xmm3,0x1
  af888a:	c4 e3 7d 18 fc 01    	vinsertf128 ymm7,ymm0,xmm4,0x1
  af8890:	c5 cd 14 ef          	vunpcklpd ymm5,ymm6,ymm7
  af8894:	c5 fc 29 6c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm5
  af889a:	c5 cd 15 ef          	vunpckhpd ymm5,ymm6,ymm7
  af889e:	c5 fc 29 6c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm5
  af88a4:	c4 63 1d 18 c1 01    	vinsertf128 ymm8,ymm12,xmm1,0x1
  af88aa:	62 c3 6d 28 18 c6 01 	vinsertf32x4 ymm16,ymm2,xmm14,0x1
  af88b1:	62 b1 bd 28 14 e8    	vunpcklpd ymm5,ymm8,ymm16
  af88b7:	c5 fc 29 ac 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm5
  af88be:	00 00 
  af88c0:	62 a1 bd 28 15 c0    	vunpckhpd ymm16,ymm8,ymm16
  af88c6:	c4 e3 1d 06 c9 31    	vperm2f128 ymm1,ymm12,ymm1,0x31
  af88cc:	c4 c3 6d 06 d6 31    	vperm2f128 ymm2,ymm2,ymm14,0x31
  af88d2:	c4 e3 2d 06 db 31    	vperm2f128 ymm3,ymm10,ymm3,0x31
  af88d8:	c5 f5 15 ea          	vunpckhpd ymm5,ymm1,ymm2
  af88dc:	c5 fd 29 ac 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm5
  af88e3:	00 00 
  af88e5:	c4 e3 7d 06 c4 31    	vperm2f128 ymm0,ymm0,ymm4,0x31
  af88eb:	c5 f8 10 64 17 50    	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x50]
  af88f1:	c5 78 10 64 17 40    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x40]
  af88f7:	c5 f5 14 ca          	vunpcklpd ymm1,ymm1,ymm2
  af88fb:	c5 fd 29 8c 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm1
  af8902:	00 00 
  af8904:	62 e1 1c 08 c6 ec 88 	vshufps xmm21,xmm12,xmm4,0x88
  af890b:	62 61 1c 08 c6 c4 dd 	vshufps xmm24,xmm12,xmm4,0xdd
  af8912:	c5 f8 10 8c 17 b0 00 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0xb0]
  af8919:	00 00 
  af891b:	c5 e5 15 d0          	vunpckhpd ymm2,ymm3,ymm0
  af891f:	c5 fd 29 94 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm2
  af8926:	00 00 
  af8928:	c5 f8 10 94 17 a0 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0xa0]
  af892f:	00 00 
  af8931:	62 e1 6c 08 c6 f1 88 	vshufps xmm22,xmm2,xmm1,0x88
  af8938:	62 e1 6c 08 c6 f9 dd 	vshufps xmm23,xmm2,xmm1,0xdd
  af893f:	c5 e5 14 c0          	vunpcklpd ymm0,ymm3,ymm0
  af8943:	c5 fd 29 84 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm0
  af894a:	00 00 
  af894c:	c5 f8 10 84 17 10 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x110]
  af8953:	00 00 
  af8955:	c5 f8 10 8c 17 00 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x100]
  af895c:	00 00 
  af895e:	c5 f0 c6 d8 88       	vshufps xmm3,xmm1,xmm0,0x88
  af8963:	62 b1 74 20 58 e2    	vaddps ymm4,ymm17,ymm18
  af8969:	c5 f0 c6 f0 dd       	vshufps xmm6,xmm1,xmm0,0xdd
  af896e:	c5 f8 10 8c 17 70 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x170]
  af8975:	00 00 
  af8977:	c5 f8 10 94 17 60 01 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x160]
  af897e:	00 00 
  af8980:	62 21 64 20 5c d4    	vsubps ymm26,ymm19,ymm20
  af8986:	62 61 6c 08 c6 c9 88 	vshufps xmm25,xmm2,xmm1,0x88
  af898d:	c5 e8 c6 d1 dd       	vshufps xmm2,xmm2,xmm1,0xdd
  af8992:	c5 f8 10 8c 17 d0 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x1d0]
  af8999:	00 00 
  af899b:	62 a1 64 20 58 e4    	vaddps ymm20,ymm19,ymm20
  af89a1:	62 61 7c 08 10 5c 17 	vmovups xmm27,XMMWORD PTR [rdi+rdx*1+0x1c0]
  af89a8:	1c 
  af89a9:	62 e1 24 00 c6 d9 88 	vshufps xmm19,xmm27,xmm1,0x88
  af89b0:	62 f1 24 00 c6 c9 dd 	vshufps xmm1,xmm27,xmm1,0xdd
  af89b7:	62 a1 6c 20 5c c9    	vsubps ymm17,ymm18,ymm17
  af89bd:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x230]
  af89c4:	23 
  af89c5:	62 61 7c 08 10 5c 17 	vmovups xmm27,XMMWORD PTR [rdi+rdx*1+0x220]
  af89cc:	22 
  af89cd:	62 21 24 00 c6 e2 88 	vshufps xmm28,xmm27,xmm18,0x88
  af89d4:	c5 fc 28 84 24 00 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x100]
  af89db:	00 00 
  af89dd:	62 61 7c 28 58 ec    	vaddps ymm29,ymm0,ymm4
  af89e3:	62 21 24 00 c6 da dd 	vshufps xmm27,xmm27,xmm18,0xdd
  af89ea:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x290]
  af89f1:	29 
  af89f2:	62 61 7c 08 10 74 17 	vmovups xmm30,XMMWORD PTR [rdi+rdx*1+0x280]
  af89f9:	28 
  af89fa:	c5 fc 5c e4          	vsubps ymm4,ymm0,ymm4
  af89fe:	62 21 0c 00 c6 fa 88 	vshufps xmm31,xmm30,xmm18,0x88
  af8a05:	62 21 0c 00 c6 f2 dd 	vshufps xmm30,xmm30,xmm18,0xdd
  af8a0c:	c5 78 10 8c 17 f0 02 	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x2f0]
  af8a13:	00 00 
  af8a15:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x2e0]
  af8a1c:	2e 
  af8a1d:	62 d1 6c 00 c6 c1 88 	vshufps xmm0,xmm18,xmm9,0x88
  af8a24:	62 51 6c 00 c6 c9 dd 	vshufps xmm9,xmm18,xmm9,0xdd
  af8a2b:	62 81 04 28 58 d2    	vaddps ymm18,ymm15,ymm26
  af8a31:	62 01 04 28 5c d2    	vsubps ymm26,ymm15,ymm26
  af8a37:	62 71 3c 20 58 f9    	vaddps ymm15,ymm24,ymm1
  af8a3d:	62 f1 3c 20 5c f9    	vsubps ymm7,ymm24,ymm1
  af8a43:	62 21 14 28 58 c4    	vaddps ymm24,ymm13,ymm20
  af8a49:	62 31 14 28 5c ec    	vsubps ymm13,ymm13,ymm20
  af8a4f:	62 81 64 28 58 e7    	vaddps ymm20,ymm3,ymm31
  af8a55:	62 91 64 28 5c ef    	vsubps ymm5,ymm3,ymm31
  af8a5b:	62 21 24 28 58 f9    	vaddps ymm31,ymm11,ymm17
  af8a61:	62 31 24 28 5c d9    	vsubps ymm11,ymm11,ymm17
  af8a67:	62 81 44 20 58 cb    	vaddps ymm17,ymm23,ymm27
  af8a6d:	62 81 44 20 5c fb    	vsubps ymm23,ymm23,ymm27
  af8a73:	62 03 6d 20 18 da 01 	vinsertf32x4 ymm27,ymm18,xmm26,0x1
  af8a7a:	62 83 ed 20 23 d2 03 	vshuff64x2 ymm18,ymm18,ymm26,0x3
  af8a81:	62 01 4c 20 58 d4    	vaddps ymm26,ymm22,ymm28
  af8a87:	62 81 4c 20 5c f4    	vsubps ymm22,ymm22,ymm28
  af8a8d:	62 43 05 20 18 e3 01 	vinsertf32x4 ymm28,ymm31,xmm11,0x1
  af8a94:	62 53 85 20 23 db 03 	vshuff64x2 ymm11,ymm31,ymm11,0x3
  af8a9b:	62 61 34 20 58 f8    	vaddps ymm31,ymm25,ymm0
  af8aa1:	62 f1 34 20 5c c0    	vsubps ymm0,ymm25,ymm0
  af8aa7:	62 63 15 20 18 cc 01 	vinsertf32x4 ymm25,ymm29,xmm4,0x1
  af8aae:	62 f3 95 20 23 e4 03 	vshuff64x2 ymm4,ymm29,ymm4,0x3
  af8ab5:	62 41 6c 28 58 e9    	vaddps ymm29,ymm2,ymm9
  af8abb:	c4 c1 6c 5c d1       	vsubps ymm2,ymm2,ymm9
  af8ac0:	62 53 3d 20 18 cd 01 	vinsertf32x4 ymm9,ymm24,xmm13,0x1
  af8ac7:	62 53 bd 20 23 ed 03 	vshuff64x2 ymm13,ymm24,ymm13,0x3
  af8ace:	62 21 54 20 58 c3    	vaddps ymm24,ymm21,ymm19
  af8ad4:	62 a1 54 20 5c db    	vsubps ymm19,ymm21,ymm19
  af8ada:	62 d1 b5 20 14 c9    	vunpcklpd ymm1,ymm25,ymm9
  af8ae0:	62 51 b5 20 15 c9    	vunpckhpd ymm9,ymm25,ymm9
  af8ae6:	62 81 4c 28 58 ee    	vaddps ymm21,ymm6,ymm30
  af8aec:	62 f1 0c 20 5c f6    	vsubps ymm6,ymm30,ymm6
  af8af2:	62 01 a5 20 14 cc    	vunpcklpd ymm25,ymm27,ymm28
  af8af8:	62 01 a5 20 15 dc    	vunpckhpd ymm27,ymm27,ymm28
  af8afe:	62 21 44 20 58 e6    	vaddps ymm28,ymm23,ymm22
  af8b04:	62 a1 4c 20 5c f7    	vsubps ymm22,ymm22,ymm23
  af8b0a:	62 c1 ed 20 15 fb    	vunpckhpd ymm23,ymm18,ymm11
  af8b10:	62 c1 ed 20 14 d3    	vunpcklpd ymm18,ymm18,ymm11
  af8b16:	62 61 7c 28 5c f2    	vsubps ymm30,ymm0,ymm2
  af8b1c:	c5 ec 58 d0          	vaddps ymm2,ymm2,ymm0
  af8b20:	c4 41 5d 15 dd       	vunpckhpd ymm11,ymm4,ymm13
  af8b25:	c4 c1 5d 14 dd       	vunpcklpd ymm3,ymm4,ymm13
  af8b2a:	62 31 04 28 58 ed    	vaddps ymm13,ymm15,ymm21
  af8b30:	62 31 04 28 5c fd    	vsubps ymm15,ymm15,ymm21
  af8b36:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  af8b3c:	c4 41 7c c6 e1 88    	vshufps ymm12,ymm0,ymm9,0x88
  af8b42:	c4 41 7c c6 f1 dd    	vshufps ymm14,ymm0,ymm9,0xdd
  af8b48:	62 11 2c 20 58 c7    	vaddps ymm8,ymm26,ymm31
  af8b4e:	62 11 2c 20 5c cf    	vsubps ymm9,ymm26,ymm31
  af8b54:	62 01 7c 20 c6 d3 88 	vshufps ymm26,ymm16,ymm27,0x88
  af8b5b:	62 01 7c 20 c6 db dd 	vshufps ymm27,ymm16,ymm27,0xdd
  af8b62:	62 a1 3c 20 58 ec    	vaddps ymm21,ymm24,ymm20
  af8b68:	62 21 3c 20 5c fc    	vsubps ymm31,ymm24,ymm20
  af8b6e:	c5 fc 28 84 24 c0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xc0]
  af8b75:	00 00 
  af8b77:	62 11 7c 28 c6 d1 dd 	vshufps ymm10,ymm0,ymm25,0xdd
  af8b7e:	62 81 7c 28 c6 e1 88 	vshufps ymm20,ymm0,ymm25,0x88
  af8b85:	62 01 74 20 58 cd    	vaddps ymm25,ymm17,ymm29
  af8b8b:	62 a1 14 20 5c c9    	vsubps ymm17,ymm29,ymm17
  af8b91:	c5 fc 28 44 24 60    	vmovaps ymm0,YMMWORD PTR [rsp+0x60]
  af8b97:	62 61 7c 28 c6 e9 dd 	vshufps ymm29,ymm0,ymm1,0xdd
  af8b9e:	62 e1 7c 28 c6 c1 88 	vshufps ymm16,ymm0,ymm1,0x88
  af8ba5:	c5 c4 58 c5          	vaddps ymm0,ymm7,ymm5
  af8ba9:	c5 c4 5c fd          	vsubps ymm7,ymm7,ymm5
  af8bad:	62 62 7d 28 18 05 a5 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff57c7a5]        # 7535c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  af8bb4:	c7 57 ff 
  af8bb7:	62 91 4c 20 59 e8    	vmulps ymm5,ymm22,ymm24
  af8bbd:	62 91 6c 28 59 d0    	vmulps ymm2,ymm2,ymm24
  af8bc3:	c5 d4 5c e2          	vsubps ymm4,ymm5,ymm2
  af8bc7:	c5 d4 58 ca          	vaddps ymm1,ymm5,ymm2
  af8bcb:	c5 fc 28 94 24 a0 00 	vmovaps ymm2,YMMWORD PTR [rsp+0xa0]
  af8bd2:	00 00 
  af8bd4:	62 a1 6c 28 c6 f7 dd 	vshufps ymm22,ymm2,ymm23,0xdd
  af8bdb:	62 b1 6c 28 c6 ef 88 	vshufps ymm5,ymm2,ymm23,0x88
  af8be2:	62 b1 4c 28 58 d3    	vaddps ymm2,ymm6,ymm19
  af8be8:	62 e1 64 20 5c fe    	vsubps ymm23,ymm19,ymm6
  af8bee:	62 91 1c 20 59 f0    	vmulps ymm6,ymm28,ymm24
  af8bf4:	62 81 0c 20 59 d8    	vmulps ymm19,ymm30,ymm24
  af8bfa:	62 21 4c 28 58 e3    	vaddps ymm28,ymm6,ymm19
  af8c00:	62 61 64 20 5c c6    	vsubps ymm24,ymm19,ymm6
  af8c06:	c5 fc 28 b4 24 e0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xe0]
  af8c0d:	00 00 
  af8c0f:	62 a1 4c 28 c6 da dd 	vshufps ymm19,ymm6,ymm18,0xdd
  af8c16:	62 a1 4c 28 c6 d2 88 	vshufps ymm18,ymm6,ymm18,0x88
  af8c1d:	62 91 14 28 58 f1    	vaddps ymm6,ymm13,ymm25
  af8c23:	62 11 14 08 5c e9    	vsubps xmm13,xmm13,xmm25
  af8c29:	62 43 4d 28 18 f5 01 	vinsertf32x4 ymm30,ymm6,xmm13,0x1
  af8c30:	62 91 7c 28 58 f4    	vaddps ymm6,ymm0,ymm28
  af8c36:	62 91 7c 08 5c c4    	vsubps xmm0,xmm0,xmm28
  af8c3c:	c4 e3 4d 18 c0 01    	vinsertf128 ymm0,ymm6,xmm0,0x1
  af8c42:	c5 fc 28 b4 24 20 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x120]
  af8c49:	00 00 
  af8c4b:	c4 41 4c c6 eb dd    	vshufps ymm13,ymm6,ymm11,0xdd
  af8c51:	62 41 4c 28 c6 cb 88 	vshufps ymm25,ymm6,ymm11,0x88
  af8c58:	c4 41 04 58 d9       	vaddps ymm11,ymm15,ymm9
  af8c5d:	c4 41 00 5c c9       	vsubps xmm9,xmm15,xmm9
  af8c62:	c5 7c 28 bc 24 80 00 	vmovaps ymm15,YMMWORD PTR [rsp+0x80]
  af8c69:	00 00 
  af8c6b:	c5 84 c6 f3 dd       	vshufps ymm6,ymm15,ymm3,0xdd
  af8c70:	c5 fc 29 74 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm6
  af8c76:	c5 04 c6 fb 88       	vshufps ymm15,ymm15,ymm3,0x88
  af8c7b:	c4 43 25 18 d9 01    	vinsertf128 ymm11,ymm11,xmm9,0x1
  af8c81:	62 61 44 28 58 e1    	vaddps ymm28,ymm7,ymm1
  af8c87:	c5 c0 5c c9          	vsubps xmm1,xmm7,xmm1
  af8c8b:	62 11 14 20 c6 cd d8 	vshufps ymm9,ymm29,ymm29,0xd8
  af8c92:	c4 c1 1c c6 f4 d8    	vshufps ymm6,ymm12,ymm12,0xd8
  af8c98:	62 f3 1d 20 18 f9 01 	vinsertf32x4 ymm7,ymm28,xmm1,0x1
  af8c9f:	62 d1 8d 20 14 cb    	vunpcklpd ymm1,ymm30,ymm11
  af8ca5:	c4 c1 0c c6 de d8    	vshufps ymm3,ymm14,ymm14,0xd8
  af8cab:	62 51 8d 20 15 db    	vunpckhpd ymm11,ymm30,ymm11
  af8cb1:	62 61 fd 28 14 f7    	vunpcklpd ymm30,ymm0,ymm7
  af8cb7:	c5 fd 15 c7          	vunpckhpd ymm0,ymm0,ymm7
  af8cbb:	c4 41 2c c6 e2 d8    	vshufps ymm12,ymm10,ymm10,0xd8
  af8cc1:	c5 24 c6 f0 88       	vshufps ymm14,ymm11,ymm0,0x88
  af8cc6:	c5 a4 c6 c0 dd       	vshufps ymm0,ymm11,ymm0,0xdd
  af8ccb:	62 d1 54 20 58 f8    	vaddps ymm7,ymm21,ymm8
  af8cd1:	62 11 2c 20 c6 d2 d8 	vshufps ymm10,ymm26,ymm26,0xd8
  af8cd8:	62 51 54 00 5c c0    	vsubps xmm8,xmm21,xmm8
  af8cde:	c5 6c 58 dc          	vaddps ymm11,ymm2,ymm4
  af8ce2:	c4 43 45 18 c0 01    	vinsertf128 ymm8,ymm7,xmm8,0x1
  af8ce8:	62 81 24 20 c6 eb d8 	vshufps ymm21,ymm27,ymm27,0xd8
  af8cef:	62 01 74 20 58 d7    	vaddps ymm26,ymm17,ymm31
  af8cf5:	c5 e8 5c d4          	vsubps xmm2,xmm2,xmm4
  af8cf9:	62 01 44 20 58 d8    	vaddps ymm27,ymm23,ymm24
  af8cff:	62 b1 5c 20 c6 e4 d8 	vshufps ymm4,ymm20,ymm20,0xd8
  af8d06:	c5 fc 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm4
  af8d0c:	c4 e3 25 18 d2 01    	vinsertf128 ymm2,ymm11,xmm2,0x1
  af8d12:	62 91 74 28 c6 fe dd 	vshufps ymm7,ymm1,ymm30,0xdd
  af8d19:	62 61 44 28 c6 e7 d8 	vshufps ymm28,ymm7,ymm7,0xd8
  af8d20:	62 b1 7c 20 c6 e0 d8 	vshufps ymm4,ymm16,ymm16,0xd8
  af8d27:	62 c1 0c 28 c6 e6 d8 	vshufps ymm20,ymm14,ymm14,0xd8
  af8d2e:	c5 7c c6 d8 d8       	vshufps ymm11,ymm0,ymm0,0xd8
  af8d33:	62 b1 04 00 5c c1    	vsubps xmm0,xmm31,xmm17
  af8d39:	62 a1 4c 20 c6 ce d8 	vshufps ymm17,ymm22,ymm22,0xd8
  af8d40:	62 f3 2d 20 18 c0 01 	vinsertf32x4 ymm0,ymm26,xmm0,0x1
  af8d47:	62 11 44 00 5c f0    	vsubps xmm14,xmm23,xmm24
  af8d4d:	62 53 25 20 18 f6 01 	vinsertf32x4 ymm14,ymm27,xmm14,0x1
  af8d54:	62 e1 54 28 c6 f5 d8 	vshufps ymm22,ymm5,ymm5,0xd8
  af8d5b:	62 e1 bd 28 14 c0    	vunpcklpd ymm16,ymm8,ymm0
  af8d61:	c5 3d 15 c0          	vunpckhpd ymm8,ymm8,ymm0
  af8d65:	62 c1 ed 28 14 fe    	vunpcklpd ymm23,ymm2,ymm14
  af8d6b:	62 b1 64 20 c6 eb d8 	vshufps ymm5,ymm19,ymm19,0xd8
  af8d72:	c4 c1 6d 15 d6       	vunpckhpd ymm2,ymm2,ymm14
  af8d77:	62 b1 7c 20 c6 c7 dd 	vshufps ymm0,ymm16,ymm23,0xdd
  af8d7e:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  af8d83:	62 21 6c 20 c6 da d8 	vshufps ymm27,ymm18,ymm18,0xd8
  af8d8a:	c5 3c c6 f2 88       	vshufps ymm14,ymm8,ymm2,0x88
  af8d8f:	62 41 0c 28 c6 ee d8 	vshufps ymm29,ymm14,ymm14,0xd8
  af8d96:	c5 bc c6 d2 dd       	vshufps ymm2,ymm8,ymm2,0xdd
  af8d9b:	62 41 14 28 c6 c5 d8 	vshufps ymm24,ymm13,ymm13,0xd8
  af8da2:	c5 6c c6 f2 d8       	vshufps ymm14,ymm2,ymm2,0xd8
  af8da7:	62 b1 7c 20 c6 d7 88 	vshufps ymm2,ymm16,ymm23,0x88
  af8dae:	62 e1 6c 28 c6 d2 d8 	vshufps ymm18,ymm2,ymm2,0xd8
  af8db5:	62 81 34 20 c6 f9 d8 	vshufps ymm23,ymm25,ymm25,0xd8
  af8dbc:	62 91 74 28 c6 ce 88 	vshufps ymm1,ymm1,ymm30,0x88
  af8dc3:	62 e1 74 28 c6 d9 d8 	vshufps ymm19,ymm1,ymm1,0xd8
  af8dca:	62 61 7c 28 10 51 02 	vmovups ymm26,YMMWORD PTR [rcx+0x40]
  af8dd1:	62 41 04 28 c6 f7 d8 	vshufps ymm30,ymm15,ymm15,0xd8
  af8dd8:	62 61 7c 28 10 49 03 	vmovups ymm25,YMMWORD PTR [rcx+0x60]
  af8ddf:	c5 fc 10 89 80 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x180]
  af8de6:	00 
  af8de7:	c5 fc 10 91 a0 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x1a0]
  af8dee:	00 
  af8def:	62 71 44 20 59 f9    	vmulps ymm15,ymm23,ymm1
  af8df5:	62 72 4d 20 bc fa    	vfnmadd231ps ymm15,ymm22,ymm2
  af8dfb:	62 e1 4c 20 59 f1    	vmulps ymm22,ymm22,ymm1
  af8e01:	c5 fc 10 89 40 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x240]
  af8e08:	00 
  af8e09:	62 e2 45 20 b8 f2    	vfmadd231ps ymm22,ymm23,ymm2
  af8e0f:	c5 fc 10 91 60 02 00 	vmovups ymm2,YMMWORD PTR [rcx+0x260]
  af8e16:	00 
  af8e17:	62 e1 1c 20 59 f9    	vmulps ymm23,ymm28,ymm1
  af8e1d:	62 61 7c 28 59 f9    	vmulps ymm31,ymm0,ymm1
  af8e23:	62 e2 7d 28 bc fa    	vfnmadd231ps ymm23,ymm0,ymm2
  af8e29:	c5 fc 10 81 c0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xc0]
  af8e30:	00 
  af8e31:	62 62 1d 20 b8 fa    	vfmadd231ps ymm31,ymm28,ymm2
  af8e37:	c5 fc 10 89 e0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xe0]
  af8e3e:	00 
  af8e3f:	62 61 64 28 59 e0    	vmulps ymm28,ymm3,ymm0
  af8e45:	62 62 55 20 bc e1    	vfnmadd231ps ymm28,ymm21,ymm1
  af8e4b:	62 f1 54 20 59 c0    	vmulps ymm0,ymm21,ymm0
  af8e51:	c5 7c 10 81 80 02 00 	vmovups ymm8,YMMWORD PTR [rcx+0x280]
  af8e58:	00 
  af8e59:	c4 e2 65 b8 c1       	vfmadd231ps ymm0,ymm3,ymm1
  af8e5e:	c5 fc 10 89 a0 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x2a0]
  af8e65:	00 
  af8e66:	62 d1 5c 20 59 d0    	vmulps ymm2,ymm20,ymm8
  af8e6c:	62 c1 14 20 59 c0    	vmulps ymm16,ymm29,ymm8
  af8e72:	62 f2 15 20 bc d1    	vfnmadd231ps ymm2,ymm29,ymm1
  af8e78:	c5 fc 10 99 00 01 00 	vmovups ymm3,YMMWORD PTR [rcx+0x100]
  af8e7f:	00 
  af8e80:	62 e2 5d 20 b8 c1    	vfmadd231ps ymm16,ymm20,ymm1
  af8e86:	c5 fc 10 89 20 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x120]
  af8e8d:	00 
  af8e8e:	62 71 0c 20 59 c3    	vmulps ymm8,ymm30,ymm3
  af8e94:	62 72 25 20 bc c1    	vfnmadd231ps ymm8,ymm27,ymm1
  af8e9a:	62 e1 24 20 59 e3    	vmulps ymm20,ymm27,ymm3
  af8ea0:	c5 fc 10 99 c0 01 00 	vmovups ymm3,YMMWORD PTR [rcx+0x1c0]
  af8ea7:	00 
  af8ea8:	62 e2 0d 20 b8 e1    	vfmadd231ps ymm20,ymm30,ymm1
  af8eae:	c5 fc 10 89 e0 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x1e0]
  af8eb5:	00 
  af8eb6:	62 e1 3c 20 59 eb    	vmulps ymm21,ymm24,ymm3
  af8ebc:	62 f1 74 20 59 db    	vmulps ymm3,ymm17,ymm3
  af8ec2:	62 e2 75 20 bc e9    	vfnmadd231ps ymm21,ymm17,ymm1
  af8ec8:	c5 7c 10 a9 80 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0x80]
  af8ecf:	00 
  af8ed0:	62 f2 3d 20 b8 d9    	vfmadd231ps ymm3,ymm24,ymm1
  af8ed6:	c5 fc 10 89 a0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xa0]
  af8edd:	00 
  af8ede:	62 81 34 28 59 ca    	vmulps ymm17,ymm9,ymm26
  af8ee4:	62 82 1d 28 bc c9    	vfnmadd231ps ymm17,ymm12,ymm25
  af8eea:	62 11 1c 28 59 e2    	vmulps ymm12,ymm12,ymm26
  af8ef0:	62 61 7c 28 10 41 10 	vmovups ymm24,YMMWORD PTR [rcx+0x200]
  af8ef7:	62 12 35 28 b8 e1    	vfmadd231ps ymm12,ymm9,ymm25
  af8efd:	c5 7c 10 89 20 02 00 	vmovups ymm9,YMMWORD PTR [rcx+0x220]
  af8f04:	00 
  af8f05:	62 01 64 20 59 c8    	vmulps ymm25,ymm19,ymm24
  af8f0b:	62 01 6c 20 59 c0    	vmulps ymm24,ymm18,ymm24
  af8f11:	62 42 6d 20 bc c9    	vfnmadd231ps ymm25,ymm18,ymm9
  af8f17:	62 e1 7c 28 10 51 0a 	vmovups ymm18,YMMWORD PTR [rcx+0x140]
  af8f1e:	62 42 65 20 b8 c1    	vfmadd231ps ymm24,ymm19,ymm9
  af8f24:	c5 7c 10 89 60 01 00 	vmovups ymm9,YMMWORD PTR [rcx+0x160]
  af8f2b:	00 
  af8f2c:	62 c1 4c 28 59 dd    	vmulps ymm19,ymm6,ymm13
  af8f32:	62 e2 2d 28 bc d9    	vfnmadd231ps ymm19,ymm10,ymm1
  af8f38:	c4 41 2c 59 ed       	vmulps ymm13,ymm10,ymm13
  af8f3d:	c5 7c 10 91 c0 02 00 	vmovups ymm10,YMMWORD PTR [rcx+0x2c0]
  af8f44:	00 
  af8f45:	62 63 7d 28 04 54 24 	vpermilps ymm26,YMMWORD PTR [rsp+0x60],0xd8
  af8f4c:	03 d8 
  af8f4e:	c4 62 4d b8 e9       	vfmadd231ps ymm13,ymm6,ymm1
  af8f53:	c5 fc 10 89 e0 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x2e0]
  af8f5a:	00 
  af8f5b:	62 41 24 28 59 da    	vmulps ymm27,ymm11,ymm10
  af8f61:	62 62 0d 28 bc d9    	vfnmadd231ps ymm27,ymm14,ymm1
  af8f67:	c4 c1 0c 59 f2       	vmulps ymm6,ymm14,ymm10
  af8f6c:	62 41 5c 28 58 ef    	vaddps ymm29,ymm4,ymm15
  af8f72:	c4 e2 25 b8 f1       	vfmadd231ps ymm6,ymm11,ymm1
  af8f77:	62 b1 1c 20 58 cf    	vaddps ymm1,ymm28,ymm23
  af8f7d:	62 31 2c 20 59 da    	vmulps ymm11,ymm26,ymm18
  af8f83:	c4 42 55 bc d9       	vfnmadd231ps ymm11,ymm5,ymm9
  af8f88:	62 b1 54 28 59 ea    	vmulps ymm5,ymm5,ymm18
  af8f8e:	62 e1 3c 28 58 d2    	vaddps ymm18,ymm8,ymm2
  af8f94:	62 d2 2d 20 b8 e9    	vfmadd231ps ymm5,ymm26,ymm9
  af8f9a:	62 21 54 20 58 d1    	vaddps ymm26,ymm21,ymm17
  af8fa0:	62 21 34 20 58 f3    	vaddps ymm30,ymm25,ymm19
  af8fa6:	c5 bc 5c d2          	vsubps ymm2,ymm8,ymm2
  af8faa:	c5 fc 29 94 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm2
  af8fb1:	00 00 
  af8fb3:	c5 1c 58 cb          	vaddps ymm9,ymm12,ymm3
  af8fb7:	c4 c1 64 5c fc       	vsubps ymm7,ymm3,ymm12
  af8fbc:	62 51 24 20 58 d3    	vaddps ymm10,ymm27,ymm11
  af8fc2:	62 a1 34 20 5c db    	vsubps ymm19,ymm25,ymm19
  af8fc8:	62 61 4c 28 58 cd    	vaddps ymm25,ymm6,ymm5
  af8fce:	c5 4c 5c c5          	vsubps ymm8,ymm6,ymm5
  af8fd2:	62 91 7c 28 58 df    	vaddps ymm3,ymm0,ymm31
  af8fd8:	c4 41 5c 5c ff       	vsubps ymm15,ymm4,ymm15
  af8fdd:	62 b1 5c 20 58 e8    	vaddps ymm5,ymm20,ymm16
  af8fe3:	62 01 7c 28 5c ff    	vsubps ymm31,ymm0,ymm31
  af8fe9:	62 31 5c 20 5c f0    	vsubps ymm14,ymm20,ymm16
  af8fef:	62 e1 14 20 58 e1    	vaddps ymm20,ymm29,ymm1
  af8ff5:	62 d1 3c 20 58 c5    	vaddps ymm0,ymm24,ymm13
  af8ffb:	62 a1 74 20 5c ed    	vsubps ymm21,ymm17,ymm21
  af9001:	62 41 3c 20 5c c5    	vsubps ymm24,ymm24,ymm13
  af9007:	62 91 6c 20 58 d2    	vaddps ymm2,ymm18,ymm26
  af900d:	c5 fc 29 94 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm2
  af9014:	00 00 
  af9016:	c5 fc 28 54 24 40    	vmovaps ymm2,YMMWORD PTR [rsp+0x40]
  af901c:	62 71 4c 20 58 ea    	vaddps ymm13,ymm22,ymm2
  af9022:	62 01 24 28 5c db    	vsubps ymm27,ymm11,ymm27
  af9028:	62 b1 6c 28 5c e6    	vsubps ymm4,ymm2,ymm22
  af902e:	62 51 0c 20 58 e2    	vaddps ymm12,ymm30,ymm10
  af9034:	62 c1 54 28 58 f1    	vaddps ymm22,ymm5,ymm9
  af903a:	62 81 44 20 5c fc    	vsubps ymm23,ymm23,ymm28
  af9040:	62 01 7c 28 58 e1    	vaddps ymm28,ymm0,ymm25
  af9046:	62 81 6c 20 5c ca    	vsubps ymm17,ymm18,ymm26
  af904c:	c5 fc 28 b4 24 80 00 	vmovaps ymm6,YMMWORD PTR [rsp+0x80]
  af9053:	00 00 
  af9055:	c5 fc 28 d7          	vmovaps ymm2,ymm7
  af9059:	c5 4c 58 df          	vaddps ymm11,ymm6,ymm7
  af905d:	62 51 0c 20 5c d2    	vsubps ymm10,ymm30,ymm10
  af9063:	62 a1 0c 28 58 d5    	vaddps ymm18,ymm14,ymm21
  af9069:	62 e1 14 20 5c c1    	vsubps ymm16,ymm29,ymm1
  af906f:	62 91 3c 20 58 cb    	vaddps ymm1,ymm24,ymm27
  af9075:	c4 41 54 5c c9       	vsubps ymm9,ymm5,ymm9
  af907a:	62 f1 6c 20 5c e9    	vsubps ymm5,ymm18,ymm1
  af9080:	c5 fc 29 ac 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm5
  af9087:	00 00 
  af9089:	62 61 6c 20 58 d1    	vaddps ymm26,ymm18,ymm1
  af908f:	62 c1 64 20 58 d0    	vaddps ymm18,ymm19,ymm8
  af9095:	62 91 7c 28 5c c1    	vsubps ymm0,ymm0,ymm25
  af909b:	62 b1 24 28 58 fa    	vaddps ymm7,ymm11,ymm18
  af90a1:	62 a1 24 28 5c d2    	vsubps ymm18,ymm11,ymm18
  af90a7:	62 41 64 28 58 cd    	vaddps ymm25,ymm3,ymm13
  af90ad:	62 61 14 28 5c eb    	vsubps ymm29,ymm13,ymm3
  af90b3:	c5 b4 5c c8          	vsubps ymm1,ymm9,ymm0
  af90b7:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  af90bd:	c5 b4 58 d8          	vaddps ymm3,ymm9,ymm0
  af90c1:	62 11 04 28 58 cf    	vaddps ymm9,ymm15,ymm31
  af90c7:	62 01 04 28 5c f7    	vsubps ymm30,ymm15,ymm31
  af90cd:	62 41 74 20 58 fa    	vaddps ymm31,ymm17,ymm10
  af90d3:	62 d1 74 20 5c c2    	vsubps ymm0,ymm17,ymm10
  af90d9:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  af90df:	c5 4c 5c da          	vsubps ymm11,ymm6,ymm2
  af90e3:	62 71 44 20 58 ec    	vaddps ymm13,ymm23,ymm4
  af90e9:	62 d1 64 20 5c e8    	vsubps ymm5,ymm19,ymm8
  af90ef:	c5 fc 28 8c 24 c0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xc0]
  af90f6:	00 00 
  af90f8:	c5 1c 58 d1          	vaddps ymm10,ymm12,ymm1
  af90fc:	62 b1 5c 28 5c e7    	vsubps ymm4,ymm4,ymm23
  af9102:	62 81 4c 20 58 dc    	vaddps ymm19,ymm22,ymm28
  af9108:	62 31 0c 28 5c f5    	vsubps ymm14,ymm14,ymm21
  af910e:	62 51 5c 20 58 fa    	vaddps ymm15,ymm20,ymm10
  af9114:	62 81 3c 20 5c eb    	vsubps ymm21,ymm24,ymm27
  af911a:	c4 e2 7d 18 05 fd c2 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff57c2fd]        # 75420 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2900>
  af9121:	57 ff 
  af9123:	c5 fc 28 f0          	vmovaps ymm6,ymm0
  af9127:	62 32 7d 28 ac d4    	vfnmadd213ps ymm10,ymm0,ymm20
  af912d:	62 a1 34 20 58 fb    	vaddps ymm23,ymm25,ymm19
  af9133:	c5 fc 28 d7          	vmovaps ymm2,ymm7
  af9137:	c4 c2 45 ac f1       	vfnmadd213ps ymm6,ymm7,ymm9
  af913c:	62 c1 7c 28 28 c9    	vmovaps ymm17,ymm9
  af9142:	62 81 4c 20 5c f4    	vsubps ymm22,ymm22,ymm28
  af9148:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  af914c:	62 62 7d 28 18 25 3e 	vbroadcastss ymm28,DWORD PTR [rip+0xffffffffff57c13e]        # 75294 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2774>
  af9153:	c1 57 ff 
  af9156:	62 71 1c 20 59 44 24 	vmulps ymm8,ymm28,YMMWORD PTR [rsp+0xa0]
  af915d:	05 
  af915e:	62 d2 2d 20 ac fd    	vfnmadd213ps ymm7,ymm26,ymm13
  af9164:	62 11 6c 20 59 cc    	vmulps ymm9,ymm18,ymm28
  af916a:	62 82 7d 28 ac d9    	vfnmadd213ps ymm19,ymm0,ymm25
  af9170:	62 c1 4c 28 58 d0    	vaddps ymm18,ymm6,ymm8
  af9176:	c4 41 74 5c e4       	vsubps ymm12,ymm1,ymm12
  af917b:	62 e1 7c 28 28 e0    	vmovaps ymm20,ymm0
  af9181:	c4 c1 4c 5c f0       	vsubps ymm6,ymm6,ymm8
  af9186:	62 41 44 28 5c c1    	vsubps ymm24,ymm7,ymm9
  af918c:	62 a2 05 20 ac e0    	vfnmadd213ps ymm20,ymm31,ymm16
  af9192:	c5 34 58 cf          	vaddps ymm9,ymm9,ymm7
  af9196:	62 61 7c 28 28 c8    	vmovaps ymm25,ymm0
  af919c:	62 02 65 28 ac cd    	vfnmadd213ps ymm25,ymm3,ymm29
  af91a2:	62 91 7c 20 58 ff    	vaddps ymm7,ymm16,ymm31
  af91a8:	62 e1 24 28 58 c5    	vaddps ymm16,ymm11,ymm5
  af91ae:	62 71 14 20 58 c3    	vaddps ymm8,ymm29,ymm3
  af91b4:	62 21 0c 20 58 f8    	vaddps ymm31,ymm30,ymm16
  af91ba:	62 82 7d 28 ac c6    	vfnmadd213ps ymm16,ymm0,ymm30
  af91c0:	62 21 0c 28 58 dd    	vaddps ymm27,ymm14,ymm21
  af91c6:	62 21 0c 28 5c ed    	vsubps ymm29,ymm14,ymm21
  af91cc:	62 81 5c 28 58 eb    	vaddps ymm21,ymm4,ymm27
  af91d2:	62 62 7d 28 ac dc    	vfnmadd213ps ymm27,ymm0,ymm4
  af91d8:	62 91 4c 20 59 e4    	vmulps ymm4,ymm22,ymm28
  af91de:	c5 a4 5c dd          	vsubps ymm3,ymm11,ymm5
  af91e2:	62 e1 2c 28 58 f4    	vaddps ymm22,ymm10,ymm4
  af91e8:	62 11 1c 28 59 e4    	vmulps ymm12,ymm12,ymm28
  af91ee:	62 61 2c 28 5c f4    	vsubps ymm30,ymm10,ymm4
  af91f4:	62 d1 64 20 5c e4    	vsubps ymm4,ymm19,ymm12
  af91fa:	62 51 64 20 58 f4    	vaddps ymm14,ymm19,ymm12
  af9200:	62 71 74 20 58 d2    	vaddps ymm10,ymm17,ymm2
  af9206:	62 f1 1c 20 59 6c 24 	vmulps ymm5,ymm28,YMMWORD PTR [rsp+0x60]
  af920d:	03 
  af920e:	62 11 14 28 58 e2    	vaddps ymm12,ymm13,ymm26
  af9214:	62 f1 5c 20 5c cd    	vsubps ymm1,ymm20,ymm5
  af921a:	62 71 1c 20 59 6c 24 	vmulps ymm13,ymm28,YMMWORD PTR [rsp+0x40]
  af9221:	02 
  af9222:	62 91 14 20 59 c4    	vmulps ymm0,ymm29,ymm28
  af9228:	62 71 5c 20 58 dd    	vaddps ymm11,ymm20,ymm5
  af922e:	62 c1 34 20 58 cd    	vaddps ymm17,ymm25,ymm13
  af9234:	62 51 34 20 5c ed    	vsubps ymm13,ymm25,ymm13
  af923a:	62 e1 7c 20 58 d8    	vaddps ymm19,ymm16,ymm0
  af9240:	62 91 64 28 59 dc    	vmulps ymm3,ymm3,ymm28
  af9246:	62 f1 7c 20 5c c0    	vsubps ymm0,ymm16,ymm0
  af924c:	62 e1 24 20 5c c3    	vsubps ymm16,ymm27,ymm3
  af9252:	62 f1 24 20 58 eb    	vaddps ymm5,ymm27,ymm3
  af9258:	62 b1 7c 28 28 df    	vmovaps ymm3,ymm23
  af925e:	62 e1 7c 28 28 25 f8 	vmovaps ymm20,YMMWORD PTR [rip+0xffffffffff57c5f8]        # 75860 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d40>
  af9265:	c5 57 ff 
  af9268:	62 d2 5d 20 7f df    	vpermt2ps ymm3,ymm20,ymm15
  af926e:	62 61 7c 28 28 0d 28 	vmovaps ymm25,YMMWORD PTR [rip+0xffffffffff57df28]        # 771a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4680>
  af9275:	df 57 ff 
  af9278:	62 c2 35 20 7f ff    	vpermt2ps ymm23,ymm25,ymm15
  af927e:	62 e1 7c 28 11 3c 16 	vmovups YMMWORD PTR [rsi+rdx*1],ymm23
  af9285:	c5 fc 11 5c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm3
  af928b:	62 91 7c 28 28 d8    	vmovaps ymm3,ymm24
  af9291:	62 b2 5d 20 7f da    	vpermt2ps ymm3,ymm20,ymm18
  af9297:	62 22 35 20 7f c2    	vpermt2ps ymm24,ymm25,ymm18
  af929d:	62 61 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm24
  af92a4:	02 
  af92a5:	c5 fc 11 5c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm3
  af92ab:	62 b1 7c 28 28 d9    	vmovaps ymm3,ymm17
  af92b1:	62 f2 5d 20 7f d9    	vpermt2ps ymm3,ymm20,ymm1
  af92b7:	62 e2 35 20 7f c9    	vpermt2ps ymm17,ymm25,ymm1
  af92bd:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm17
  af92c4:	04 
  af92c5:	62 b1 7c 28 28 cd    	vmovaps ymm1,ymm21
  af92cb:	62 92 5d 20 7f cf    	vpermt2ps ymm1,ymm20,ymm31
  af92d1:	62 82 35 20 7f ef    	vpermt2ps ymm21,ymm25,ymm31
  af92d7:	c5 fc 11 9c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm3
  af92de:	00 00 
  af92e0:	62 e1 7c 28 11 6c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm21
  af92e7:	06 
  af92e8:	c5 fc 11 8c 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm1
  af92ef:	00 00 
  af92f1:	c5 fc 28 cc          	vmovaps ymm1,ymm4
  af92f5:	62 b2 5d 20 7f ce    	vpermt2ps ymm1,ymm20,ymm22
  af92fb:	62 b2 35 20 7f e6    	vpermt2ps ymm4,ymm25,ymm22
  af9301:	c5 fc 11 a4 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm4
  af9308:	00 00 
  af930a:	c5 fc 11 8c 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm1
  af9311:	00 00 
  af9313:	c5 7c 29 c9          	vmovaps ymm1,ymm9
  af9317:	62 f2 5d 20 7f ce    	vpermt2ps ymm1,ymm20,ymm6
  af931d:	62 72 35 20 7f ce    	vpermt2ps ymm9,ymm25,ymm6
  af9323:	c5 7c 11 8c 16 40 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm9
  af932a:	00 00 
  af932c:	c5 fc 11 8c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm1
  af9333:	00 00 
  af9335:	c5 7c 29 c1          	vmovaps ymm1,ymm8
  af9339:	62 f2 5d 20 7f cf    	vpermt2ps ymm1,ymm20,ymm7
  af933f:	62 72 35 20 7f c7    	vpermt2ps ymm8,ymm25,ymm7
  af9345:	c5 7c 11 84 16 80 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x180],ymm8
  af934c:	00 00 
  af934e:	62 b1 7c 28 28 d8    	vmovaps ymm3,ymm16
  af9354:	62 b2 5d 20 7f db    	vpermt2ps ymm3,ymm20,ymm19
  af935a:	62 a2 35 20 7f c3    	vpermt2ps ymm16,ymm25,ymm19
  af9360:	c5 fc 11 8c 16 a0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a0],ymm1
  af9367:	00 00 
  af9369:	62 e1 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm16
  af9370:	0e 
  af9371:	c5 fc 11 9c 16 e0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1e0],ymm3
  af9378:	00 00 
  af937a:	c5 7c 29 f1          	vmovaps ymm1,ymm14
  af937e:	62 92 5d 20 7f ce    	vpermt2ps ymm1,ymm20,ymm30
  af9384:	62 12 35 20 7f f6    	vpermt2ps ymm14,ymm25,ymm30
  af938a:	c5 7c 11 b4 16 00 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x200],ymm14
  af9391:	00 00 
  af9393:	c5 fc 11 8c 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm1
  af939a:	00 00 
  af939c:	c5 7c 29 e1          	vmovaps ymm1,ymm12
  af93a0:	62 d2 5d 20 7f ca    	vpermt2ps ymm1,ymm20,ymm10
  af93a6:	62 52 35 20 7f e2    	vpermt2ps ymm12,ymm25,ymm10
  af93ac:	c5 7c 11 a4 16 40 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x240],ymm12
  af93b3:	00 00 
  af93b5:	c5 fc 11 8c 16 60 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x260],ymm1
  af93bc:	00 00 
  af93be:	c5 7c 29 e9          	vmovaps ymm1,ymm13
  af93c2:	62 d2 5d 20 7f cb    	vpermt2ps ymm1,ymm20,ymm11
  af93c8:	62 52 35 20 7f eb    	vpermt2ps ymm13,ymm25,ymm11
  af93ce:	c5 7c 11 ac 16 80 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x280],ymm13
  af93d5:	00 00 
  af93d7:	c5 fc 28 d5          	vmovaps ymm2,ymm5
  af93db:	62 f2 5d 20 7f d0    	vpermt2ps ymm2,ymm20,ymm0
  af93e1:	62 f2 35 20 7f e8    	vpermt2ps ymm5,ymm25,ymm0
  af93e7:	c5 fc 11 8c 16 a0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2a0],ymm1
  af93ee:	00 00 
  af93f0:	c5 fc 11 ac 16 c0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2c0],ymm5
  af93f7:	00 00 
  af93f9:	c5 fc 11 94 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm2
  af9400:	00 00 
  af9402:	48 81 c2 00 03 00 00 	add    rdx,0x300
  af9409:	48 39 d0             	cmp    rax,rdx
  af940c:	0f 85 1e f2 ff ff    	jne    af8630 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  af9412:	48 89 ec             	mov    rsp,rbp
  af9415:	5d                   	pop    rbp
  af9416:	c5 f8 77             	vzeroupper
  af9419:	c3                   	ret
  af941a:	cc                   	int3
  af941b:	cc                   	int3
  af941c:	cc                   	int3
  af941d:	cc                   	int3
  af941e:	cc                   	int3
  af941f:	cc                   	int3
  af9420:	cc                   	int3
  af9421:	cc                   	int3
  af9422:	cc                   	int3
  af9423:	cc                   	int3
  af9424:	cc                   	int3
  af9425:	cc                   	int3
  af9426:	cc                   	int3
  af9427:	cc                   	int3
  af9428:	cc                   	int3
  af9429:	cc                   	int3
  af942a:	cc                   	int3
  af942b:	cc                   	int3
  af942c:	cc                   	int3
  af942d:	cc                   	int3
  af942e:	cc                   	int3
  af942f:	cc                   	int3
  af9430:	cc                   	int3
  af9431:	cc                   	int3
  af9432:	cc                   	int3
  af9433:	cc                   	int3
  af9434:	cc                   	int3
  af9435:	cc                   	int3
  af9436:	cc                   	int3
  af9437:	cc                   	int3
  af9438:	cc                   	int3
  af9439:	cc                   	int3
  af943a:	cc                   	int3
  af943b:	cc                   	int3
  af943c:	cc                   	int3
  af943d:	cc                   	int3
  af943e:	cc                   	int3
  af943f:	cc                   	int3
