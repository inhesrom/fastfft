
target/ticket19/selection-fix/vector-stack-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b09600 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b09600:	55                   	push   rbp
  b09601:	48 89 e5             	mov    rbp,rsp
  b09604:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  b09608:	48 81 ec c0 02 00 00 	sub    rsp,0x2c0
  b0960f:	c6 84 24 40 02 00 00 	mov    BYTE PTR [rsp+0x240],0x0
  b09616:	00 
  b09617:	48 8d 84 24 40 02 00 	lea    rax,[rsp+0x240]
  b0961e:	00 
  b0961f:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  b09624:	48 8d 44 24 18       	lea    rax,[rsp+0x18]
  b09629:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  b0962d:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  b09632:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  b09637:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  b0963d:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b09642:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b09648:	c5 fc 10 4f 60       	vmovups ymm1,YMMWORD PTR [rdi+0x60]
  b0964d:	c5 fc 10 9f 80 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0x80]
  b09654:	00 
  b09655:	c5 f4 c6 e3 88       	vshufps ymm4,ymm1,ymm3,0x88
  b0965a:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b09660:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  b09665:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  b0966b:	c5 fc 10 9f c0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xc0]
  b09672:	00 
  b09673:	c5 fc 10 af e0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xe0]
  b0967a:	00 
  b0967b:	c5 e4 c6 f5 88       	vshufps ymm6,ymm3,ymm5,0x88
  b09680:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  b09686:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  b0968b:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  b09691:	c5 fc 10 af 20 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x120]
  b09698:	00 
  b09699:	c5 fc 10 bf 40 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x140]
  b096a0:	00 
  b096a1:	c5 54 c6 c7 88       	vshufps ymm8,ymm5,ymm7,0x88
  b096a6:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b096ac:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b096b1:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  b096b7:	c5 fc 10 bf 80 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x180]
  b096be:	00 
  b096bf:	c5 7c 10 8f a0 01 00 	vmovups ymm9,YMMWORD PTR [rdi+0x1a0]
  b096c6:	00 
  b096c7:	c4 41 44 c6 d1 88    	vshufps ymm10,ymm7,ymm9,0x88
  b096cd:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  b096d3:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  b096d9:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  b096df:	c5 7c 10 8f e0 01 00 	vmovups ymm9,YMMWORD PTR [rdi+0x1e0]
  b096e6:	00 
  b096e7:	c5 7c 10 9f 00 02 00 	vmovups ymm11,YMMWORD PTR [rdi+0x200]
  b096ee:	00 
  b096ef:	c4 41 34 c6 e3 88    	vshufps ymm12,ymm9,ymm11,0x88
  b096f5:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b096fb:	c4 41 34 c6 cb dd    	vshufps ymm9,ymm9,ymm11,0xdd
  b09701:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  b09707:	c5 7c 10 9f 40 02 00 	vmovups ymm11,YMMWORD PTR [rdi+0x240]
  b0970e:	00 
  b0970f:	c5 7c 10 af 60 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x260]
  b09716:	00 
  b09717:	c4 41 24 c6 f5 88    	vshufps ymm14,ymm11,ymm13,0x88
  b0971d:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  b09723:	c4 41 24 c6 dd dd    	vshufps ymm11,ymm11,ymm13,0xdd
  b09729:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  b0972f:	c5 7c 10 af a0 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x2a0]
  b09736:	00 
  b09737:	c5 7c 10 bf c0 02 00 	vmovups ymm15,YMMWORD PTR [rdi+0x2c0]
  b0973e:	00 
  b0973f:	62 c1 14 28 c6 c7 88 	vshufps ymm16,ymm13,ymm15,0x88
  b09746:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b0974d:	c4 41 14 c6 ef dd    	vshufps ymm13,ymm13,ymm15,0xdd
  b09753:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  b09759:	c5 7c 58 ff          	vaddps ymm15,ymm0,ymm7
  b0975d:	62 c1 64 28 58 cb    	vaddps ymm17,ymm3,ymm11
  b09763:	62 a1 04 28 58 d1    	vaddps ymm18,ymm15,ymm17
  b09769:	62 c1 74 28 58 d9    	vaddps ymm19,ymm1,ymm9
  b0976f:	62 c1 54 28 58 e5    	vaddps ymm20,ymm5,ymm13
  b09775:	62 a1 64 20 58 ec    	vaddps ymm21,ymm19,ymm20
  b0977b:	62 21 6c 20 58 fd    	vaddps ymm31,ymm18,ymm21
  b09781:	62 61 7c 28 29 7c 24 	vmovaps YMMWORD PTR [rsp+0x100],ymm31
  b09788:	08 
  b09789:	62 c1 6c 28 58 f2    	vaddps ymm22,ymm2,ymm10
  b0978f:	62 c1 4c 28 58 fe    	vaddps ymm23,ymm6,ymm14
  b09795:	62 21 4c 20 58 cf    	vaddps ymm25,ymm22,ymm23
  b0979b:	62 41 5c 28 58 d4    	vaddps ymm26,ymm4,ymm12
  b097a1:	62 21 3c 28 58 d8    	vaddps ymm27,ymm8,ymm16
  b097a7:	62 01 2c 20 58 e3    	vaddps ymm28,ymm26,ymm27
  b097ad:	62 01 34 20 58 f4    	vaddps ymm30,ymm25,ymm28
  b097b3:	62 61 7c 28 29 74 24 	vmovaps YMMWORD PTR [rsp+0x200],ymm30
  b097ba:	10 
  b097bb:	c5 fc 5c c7          	vsubps ymm0,ymm0,ymm7
  b097bf:	c4 c1 4c 5c f6       	vsubps ymm6,ymm6,ymm14
  b097c4:	62 61 7c 28 58 ee    	vaddps ymm29,ymm0,ymm6
  b097ca:	c4 c1 74 5c c9       	vsubps ymm1,ymm1,ymm9
  b097cf:	c4 c1 5c 5c e4       	vsubps ymm4,ymm4,ymm12
  b097d4:	62 62 7d 28 18 05 be 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff56bbbe]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b097db:	bb 56 ff 
  b097de:	c5 f4 58 fc          	vaddps ymm7,ymm1,ymm4
  b097e2:	62 11 44 28 59 e0    	vmulps ymm12,ymm7,ymm24
  b097e8:	62 b1 3c 28 5c f8    	vsubps ymm7,ymm8,ymm16
  b097ee:	c4 c1 54 5c ed       	vsubps ymm5,ymm5,ymm13
  b097f3:	c5 44 5c c5          	vsubps ymm8,ymm7,ymm5
  b097f7:	62 11 3c 28 59 c0    	vmulps ymm8,ymm8,ymm24
  b097fd:	c4 41 1c 58 e8       	vaddps ymm13,ymm12,ymm8
  b09802:	62 51 14 20 58 cd    	vaddps ymm9,ymm29,ymm13
  b09808:	c5 7c 29 8c 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm9
  b0980f:	00 00 
  b09811:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  b09816:	c5 a4 5c db          	vsubps ymm3,ymm11,ymm3
  b0981a:	c5 64 58 da          	vaddps ymm11,ymm3,ymm2
  b0981e:	c5 dc 5c c9          	vsubps ymm1,ymm4,ymm1
  b09822:	62 91 74 28 59 c8    	vmulps ymm1,ymm1,ymm24
  b09828:	c5 d4 58 e7          	vaddps ymm4,ymm5,ymm7
  b0982c:	62 91 5c 28 59 e8    	vmulps ymm5,ymm4,ymm24
  b09832:	62 e1 74 28 5c c5    	vsubps ymm16,ymm1,ymm5
  b09838:	62 b1 24 28 58 e0    	vaddps ymm4,ymm11,ymm16
  b0983e:	c5 fc 29 a4 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm4
  b09845:	00 00 
  b09847:	62 31 04 28 5c f9    	vsubps ymm15,ymm15,ymm17
  b0984d:	62 81 2c 20 5c cb    	vsubps ymm17,ymm26,ymm27
  b09853:	62 31 04 28 58 d1    	vaddps ymm10,ymm15,ymm17
  b09859:	c5 7c 29 94 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm10
  b09860:	00 00 
  b09862:	62 a1 4c 20 5c f7    	vsubps ymm22,ymm22,ymm23
  b09868:	62 a1 5c 20 5c db    	vsubps ymm19,ymm20,ymm19
  b0986e:	62 b1 64 20 58 fe    	vaddps ymm7,ymm19,ymm22
  b09874:	c5 fc 29 bc 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm7
  b0987b:	00 00 
  b0987d:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  b09881:	c5 f4 58 cd          	vaddps ymm1,ymm1,ymm5
  b09885:	c5 7c 58 f1          	vaddps ymm14,ymm0,ymm1
  b09889:	c5 7c 29 b4 24 c0 01 	vmovaps YMMWORD PTR [rsp+0x1c0],ymm14
  b09890:	00 00 
  b09892:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  b09896:	c4 c1 3c 5c dc       	vsubps ymm3,ymm8,ymm12
  b0989b:	c5 ec 58 eb          	vaddps ymm5,ymm2,ymm3
  b0989f:	c5 fc 29 ac 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm5
  b098a6:	00 00 
  b098a8:	62 a1 6c 20 5c e5    	vsubps ymm20,ymm18,ymm21
  b098ae:	62 e1 7c 28 29 64 24 	vmovaps YMMWORD PTR [rsp+0x120],ymm20
  b098b5:	09 
  b098b6:	62 11 34 20 5c e4    	vsubps ymm12,ymm25,ymm28
  b098bc:	c5 7c 29 a4 24 20 02 	vmovaps YMMWORD PTR [rsp+0x220],ymm12
  b098c3:	00 00 
  b098c5:	62 51 14 20 5c ed    	vsubps ymm13,ymm29,ymm13
  b098cb:	c5 7c 29 ac 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm13
  b098d2:	00 00 
  b098d4:	62 b1 24 28 5c f0    	vsubps ymm6,ymm11,ymm16
  b098da:	c5 fc 29 b4 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm6
  b098e1:	00 00 
  b098e3:	62 a1 04 28 5c c1    	vsubps ymm16,ymm15,ymm17
  b098e9:	62 e1 7c 28 29 44 24 	vmovaps YMMWORD PTR [rsp+0x160],ymm16
  b098f0:	0b 
  b098f1:	62 31 4c 20 5c db    	vsubps ymm11,ymm22,ymm19
  b098f7:	c5 7c 29 5c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm11
  b098fd:	c5 7c 5c f9          	vsubps ymm15,ymm0,ymm1
  b09901:	c5 7c 29 bc 24 e0 01 	vmovaps YMMWORD PTR [rsp+0x1e0],ymm15
  b09908:	00 00 
  b0990a:	c5 6c 5c c3          	vsubps ymm8,ymm2,ymm3
  b0990e:	c5 7c 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm8
  b09914:	62 d3 8d 20 23 c4 03 	vshuff64x2 ymm0,ymm30,ymm12,0x3
  b0991b:	c4 c3 45 06 cb 31    	vperm2f128 ymm1,ymm7,ymm11,0x31
  b09921:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  b09925:	c4 e3 5d 06 de 31    	vperm2f128 ymm3,ymm4,ymm6,0x31
  b0992b:	62 c3 d5 28 23 d0 03 	vshuff64x2 ymm18,ymm5,ymm8,0x3
  b09932:	62 a1 e5 28 15 ca    	vunpckhpd ymm17,ymm3,ymm18
  b09938:	62 b1 6c 28 c6 e1 dd 	vshufps ymm4,ymm2,ymm17,0xdd
  b0993f:	c5 fc 29 64 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm4
  b09945:	62 a1 6c 28 c6 c9 88 	vshufps ymm17,ymm2,ymm17,0x88
  b0994c:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b09950:	62 b1 e5 28 14 ca    	vunpcklpd ymm1,ymm3,ymm18
  b09956:	62 e1 7c 28 c6 d1 dd 	vshufps ymm18,ymm0,ymm1,0xdd
  b0995d:	62 e1 7c 28 c6 d9 88 	vshufps ymm19,ymm0,ymm1,0x88
  b09964:	62 b3 85 20 23 c4 03 	vshuff64x2 ymm0,ymm31,ymm20,0x3
  b0996b:	62 b3 ad 28 23 c8 03 	vshuff64x2 ymm1,ymm10,ymm16,0x3
  b09972:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  b09976:	c4 c3 35 06 dd 31    	vperm2f128 ymm3,ymm9,ymm13,0x31
  b0997c:	62 c3 8d 28 23 f7 03 	vshuff64x2 ymm22,ymm14,ymm15,0x3
  b09983:	62 a1 e5 28 15 ee    	vunpckhpd ymm21,ymm3,ymm22
  b09989:	62 a1 6c 28 c6 e5 dd 	vshufps ymm20,ymm2,ymm21,0xdd
  b09990:	62 a1 6c 28 c6 ed 88 	vshufps ymm21,ymm2,ymm21,0x88
  b09997:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b0999b:	62 b1 e5 28 14 ce    	vunpcklpd ymm1,ymm3,ymm22
  b099a1:	62 e1 7c 28 c6 f1 dd 	vshufps ymm22,ymm0,ymm1,0xdd
  b099a8:	62 e1 7c 28 c6 f9 88 	vshufps ymm23,ymm0,ymm1,0x88
  b099af:	c5 f8 10 47 50       	vmovups xmm0,XMMWORD PTR [rdi+0x50]
  b099b4:	c5 f8 10 4f 40       	vmovups xmm1,XMMWORD PTR [rdi+0x40]
  b099b9:	62 61 74 08 c6 c8 88 	vshufps xmm25,xmm1,xmm0,0x88
  b099c0:	c5 70 c6 e8 dd       	vshufps xmm13,xmm1,xmm0,0xdd
  b099c5:	c5 f8 10 97 b0 00 00 	vmovups xmm2,XMMWORD PTR [rdi+0xb0]
  b099cc:	00 
  b099cd:	c5 f8 10 9f a0 00 00 	vmovups xmm3,XMMWORD PTR [rdi+0xa0]
  b099d4:	00 
  b099d5:	c5 60 c6 f2 88       	vshufps xmm14,xmm3,xmm2,0x88
  b099da:	c5 60 c6 da dd       	vshufps xmm11,xmm3,xmm2,0xdd
  b099df:	c5 f8 10 97 10 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x110]
  b099e6:	00 
  b099e7:	c5 f8 10 9f 00 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x100]
  b099ee:	00 
  b099ef:	62 61 64 08 c6 ea 88 	vshufps xmm29,xmm3,xmm2,0x88
  b099f6:	62 61 64 08 c6 d2 dd 	vshufps xmm26,xmm3,xmm2,0xdd
  b099fd:	c5 f8 10 97 70 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x170]
  b09a04:	00 
  b09a05:	c5 f8 10 9f 60 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x160]
  b09a0c:	00 
  b09a0d:	c5 60 c6 d2 88       	vshufps xmm10,xmm3,xmm2,0x88
  b09a12:	c5 60 c6 ca dd       	vshufps xmm9,xmm3,xmm2,0xdd
  b09a17:	c5 f8 10 97 d0 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x1d0]
  b09a1e:	00 
  b09a1f:	c5 f8 10 9f c0 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x1c0]
  b09a26:	00 
  b09a27:	62 61 64 08 c6 da 88 	vshufps xmm27,xmm3,xmm2,0x88
  b09a2e:	c5 e0 c6 f2 dd       	vshufps xmm6,xmm3,xmm2,0xdd
  b09a33:	c5 f8 10 97 30 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x230]
  b09a3a:	00 
  b09a3b:	c5 f8 10 9f 20 02 00 	vmovups xmm3,XMMWORD PTR [rdi+0x220]
  b09a42:	00 
  b09a43:	c5 e0 c6 fa 88       	vshufps xmm7,xmm3,xmm2,0x88
  b09a48:	c5 e0 c6 ea dd       	vshufps xmm5,xmm3,xmm2,0xdd
  b09a4d:	c5 f8 10 97 90 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x290]
  b09a54:	00 
  b09a55:	62 61 7c 08 10 67 28 	vmovups xmm28,XMMWORD PTR [rdi+0x280]
  b09a5c:	62 e1 1c 00 c6 c2 88 	vshufps xmm16,xmm28,xmm2,0x88
  b09a63:	62 61 1c 00 c6 fa dd 	vshufps xmm31,xmm28,xmm2,0xdd
  b09a6a:	c5 f8 10 97 f0 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x2f0]
  b09a71:	00 
  b09a72:	62 61 7c 08 10 67 2e 	vmovups xmm28,XMMWORD PTR [rdi+0x2e0]
  b09a79:	62 f1 1c 00 c6 e2 88 	vshufps xmm4,xmm28,xmm2,0x88
  b09a80:	62 f1 1c 00 c6 da dd 	vshufps xmm3,xmm28,xmm2,0xdd
  b09a87:	62 61 14 28 58 f6    	vaddps ymm30,ymm13,ymm6
  b09a8d:	62 91 2c 20 58 cf    	vaddps ymm1,ymm26,ymm31
  b09a93:	62 61 0c 20 58 e1    	vaddps ymm28,ymm30,ymm1
  b09a99:	c5 24 58 fd          	vaddps ymm15,ymm11,ymm5
  b09a9d:	c5 34 58 e3          	vaddps ymm12,ymm9,ymm3
  b09aa1:	c4 c1 04 58 c4       	vaddps ymm0,ymm15,ymm12
  b09aa6:	62 f1 1c 20 58 d0    	vaddps ymm2,ymm28,ymm0
  b09aac:	62 f1 1c 00 5c c0    	vsubps xmm0,xmm28,xmm0
  b09ab2:	62 63 6d 28 18 e0 01 	vinsertf32x4 ymm28,ymm2,xmm0,0x1
  b09ab9:	62 f1 0c 20 5c c1    	vsubps ymm0,ymm30,ymm1
  b09abf:	c5 0c 58 c7          	vaddps ymm8,ymm14,ymm7
  b09ac3:	c5 ac 58 d4          	vaddps ymm2,ymm10,ymm4
  b09ac7:	62 61 3c 28 5c f2    	vsubps ymm30,ymm8,ymm2
  b09acd:	62 91 7c 28 58 ce    	vaddps ymm1,ymm0,ymm30
  b09ad3:	62 91 7c 08 5c c6    	vsubps xmm0,xmm0,xmm30
  b09ad9:	62 63 75 28 18 f0 01 	vinsertf32x4 ymm30,ymm1,xmm0,0x1
  b09ae0:	c5 94 5c ce          	vsubps ymm1,ymm13,ymm6
  b09ae4:	c5 a4 5c ed          	vsubps ymm5,ymm11,ymm5
  b09ae8:	c5 8c 5c f7          	vsubps ymm6,ymm14,ymm7
  b09aec:	c5 ac 5c e4          	vsubps ymm4,ymm10,ymm4
  b09af0:	c5 b4 5c db          	vsubps ymm3,ymm9,ymm3
  b09af4:	c5 d4 58 c6          	vaddps ymm0,ymm5,ymm6
  b09af8:	62 91 7c 28 59 f8    	vmulps ymm7,ymm0,ymm24
  b09afe:	c5 dc 5c c3          	vsubps ymm0,ymm4,ymm3
  b09b02:	62 11 7c 28 59 c8    	vmulps ymm9,ymm0,ymm24
  b09b08:	62 31 14 20 5c d0    	vsubps ymm10,ymm29,ymm16
  b09b0e:	c5 ac 58 c1          	vaddps ymm0,ymm10,ymm1
  b09b12:	c5 34 58 df          	vaddps ymm11,ymm9,ymm7
  b09b16:	c5 24 58 e8          	vaddps ymm13,ymm11,ymm0
  b09b1a:	c4 c1 78 5c c3       	vsubps xmm0,xmm0,xmm11
  b09b1f:	c4 e3 15 18 c0 01    	vinsertf128 ymm0,ymm13,xmm0,0x1
  b09b25:	c4 c1 74 5c ca       	vsubps ymm1,ymm1,ymm10
  b09b2a:	c5 cc 5c ed          	vsubps ymm5,ymm6,ymm5
  b09b2e:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  b09b32:	62 91 54 28 59 e0    	vmulps ymm4,ymm5,ymm24
  b09b38:	62 91 64 28 59 d8    	vmulps ymm3,ymm3,ymm24
  b09b3e:	c5 dc 58 eb          	vaddps ymm5,ymm4,ymm3
  b09b42:	c5 f4 58 f5          	vaddps ymm6,ymm1,ymm5
  b09b46:	c5 f0 5c cd          	vsubps xmm1,xmm1,xmm5
  b09b4a:	c4 e3 4d 18 c9 01    	vinsertf128 ymm1,ymm6,xmm1,0x1
  b09b50:	62 b1 14 20 58 e8    	vaddps ymm5,ymm29,ymm16
  b09b56:	c5 bc 58 d2          	vaddps ymm2,ymm8,ymm2
  b09b5a:	62 91 34 20 58 f3    	vaddps ymm6,ymm25,ymm27
  b09b60:	c5 4c 58 c5          	vaddps ymm8,ymm6,ymm5
  b09b64:	c5 3c 58 d2          	vaddps ymm10,ymm8,ymm2
  b09b68:	c5 b8 5c d2          	vsubps xmm2,xmm8,xmm2
  b09b6c:	c4 e3 2d 18 d2 01    	vinsertf128 ymm2,ymm10,xmm2,0x1
  b09b72:	c4 41 1c 5c c7       	vsubps ymm8,ymm12,ymm15
  b09b77:	c5 cc 5c ed          	vsubps ymm5,ymm6,ymm5
  b09b7b:	c5 bc 58 f5          	vaddps ymm6,ymm8,ymm5
  b09b7f:	c4 c1 50 5c e8       	vsubps xmm5,xmm5,xmm8
  b09b84:	c4 e3 4d 18 ed 01    	vinsertf128 ymm5,ymm6,xmm5,0x1
  b09b8a:	62 91 04 20 5c f2    	vsubps ymm6,ymm31,ymm26
  b09b90:	62 11 34 20 5c c3    	vsubps ymm8,ymm25,ymm27
  b09b96:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  b09b9a:	c5 bc 58 e6          	vaddps ymm4,ymm8,ymm6
  b09b9e:	c5 5c 58 d3          	vaddps ymm10,ymm4,ymm3
  b09ba2:	c5 d8 5c db          	vsubps xmm3,xmm4,xmm3
  b09ba6:	c4 e3 2d 18 db 01    	vinsertf128 ymm3,ymm10,xmm3,0x1
  b09bac:	c5 bc 5c e6          	vsubps ymm4,ymm8,ymm6
  b09bb0:	c5 b4 5c f7          	vsubps ymm6,ymm9,ymm7
  b09bb4:	c5 dc 58 fe          	vaddps ymm7,ymm4,ymm6
  b09bb8:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  b09bbc:	c4 e3 45 18 e4 01    	vinsertf128 ymm4,ymm7,xmm4,0x1
  b09bc2:	62 91 9d 20 15 f6    	vunpckhpd ymm6,ymm28,ymm30
  b09bc8:	c5 fd 15 f9          	vunpckhpd ymm7,ymm0,ymm1
  b09bcc:	c5 4c c6 c7 dd       	vshufps ymm8,ymm6,ymm7,0xdd
  b09bd1:	c5 cc c6 f7 88       	vshufps ymm6,ymm6,ymm7,0x88
  b09bd6:	c5 ed 15 fd          	vunpckhpd ymm7,ymm2,ymm5
  b09bda:	c5 65 15 cc          	vunpckhpd ymm9,ymm3,ymm4
  b09bde:	c4 41 44 c6 d1 dd    	vshufps ymm10,ymm7,ymm9,0xdd
  b09be4:	c4 c1 44 c6 f9 88    	vshufps ymm7,ymm7,ymm9,0x88
  b09bea:	62 11 9d 20 14 ce    	vunpcklpd ymm9,ymm28,ymm30
  b09bf0:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b09bf4:	c5 ed 14 cd          	vunpcklpd ymm1,ymm2,ymm5
  b09bf8:	c5 e5 14 d4          	vunpcklpd ymm2,ymm3,ymm4
  b09bfc:	c5 b4 c6 d8 dd       	vshufps ymm3,ymm9,ymm0,0xdd
  b09c01:	c5 b4 c6 c0 88       	vshufps ymm0,ymm9,ymm0,0x88
  b09c06:	c5 f4 c6 e2 dd       	vshufps ymm4,ymm1,ymm2,0xdd
  b09c0b:	c5 f4 c6 ca 88       	vshufps ymm1,ymm1,ymm2,0x88
  b09c10:	62 63 7d 28 04 44 24 	vpermilps ymm24,YMMWORD PTR [rsp+0x60],0xd8
  b09c17:	03 d8 
  b09c19:	62 21 74 20 c6 f1 d8 	vshufps ymm30,ymm17,ymm17,0xd8
  b09c20:	62 b1 6c 20 c6 d2 d8 	vshufps ymm2,ymm18,ymm18,0xd8
  b09c27:	c5 fc 29 54 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm2
  b09c2d:	62 21 64 20 c6 d3 d8 	vshufps ymm26,ymm19,ymm19,0xd8
  b09c34:	62 21 5c 20 c6 cc d8 	vshufps ymm25,ymm20,ymm20,0xd8
  b09c3b:	62 21 54 20 c6 fd d8 	vshufps ymm31,ymm21,ymm21,0xd8
  b09c42:	62 a1 4c 20 c6 ce d8 	vshufps ymm17,ymm22,ymm22,0xd8
  b09c49:	62 a1 44 20 c6 ff d8 	vshufps ymm23,ymm23,ymm23,0xd8
  b09c50:	62 c1 3c 28 c6 d0 d8 	vshufps ymm18,ymm8,ymm8,0xd8
  b09c57:	62 c1 2c 28 c6 da d8 	vshufps ymm19,ymm10,ymm10,0xd8
  b09c5e:	62 e1 4c 28 c6 f6 d8 	vshufps ymm22,ymm6,ymm6,0xd8
  b09c65:	62 61 44 28 c6 df d8 	vshufps ymm27,ymm7,ymm7,0xd8
  b09c6c:	62 61 64 28 c6 e3 d8 	vshufps ymm28,ymm3,ymm3,0xd8
  b09c73:	62 61 5c 28 c6 ec d8 	vshufps ymm29,ymm4,ymm4,0xd8
  b09c7a:	62 e1 7c 28 c6 e0 d8 	vshufps ymm20,ymm0,ymm0,0xd8
  b09c81:	62 e1 74 28 c6 e9 d8 	vshufps ymm21,ymm1,ymm1,0xd8
  b09c88:	c5 fc 28 84 24 00 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x100]
  b09c8f:	00 00 
  b09c91:	c4 e3 7d 18 84 24 20 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rsp+0x120],0x1
  b09c98:	01 00 00 01 
  b09c9c:	c5 fc 28 8c 24 40 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x140]
  b09ca3:	00 00 
  b09ca5:	c4 e3 75 18 8c 24 60 	vinsertf128 ymm1,ymm1,XMMWORD PTR [rsp+0x160],0x1
  b09cac:	01 00 00 01 
  b09cb0:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  b09cb4:	c5 fc 28 9c 24 80 01 	vmovaps ymm3,YMMWORD PTR [rsp+0x180]
  b09cbb:	00 00 
  b09cbd:	c4 e3 65 18 9c 24 a0 	vinsertf128 ymm3,ymm3,XMMWORD PTR [rsp+0x1a0],0x1
  b09cc4:	01 00 00 01 
  b09cc8:	c5 fc 28 a4 24 c0 01 	vmovaps ymm4,YMMWORD PTR [rsp+0x1c0]
  b09ccf:	00 00 
  b09cd1:	c4 e3 5d 18 ac 24 e0 	vinsertf128 ymm5,ymm4,XMMWORD PTR [rsp+0x1e0],0x1
  b09cd8:	01 00 00 01 
  b09cdc:	c5 e5 15 e5          	vunpckhpd ymm4,ymm3,ymm5
  b09ce0:	c5 ec c6 f4 dd       	vshufps ymm6,ymm2,ymm4,0xdd
  b09ce5:	c5 4c c6 ee d8       	vshufps ymm13,ymm6,ymm6,0xd8
  b09cea:	c5 fc 28 b4 24 00 02 	vmovaps ymm6,YMMWORD PTR [rsp+0x200]
  b09cf1:	00 00 
  b09cf3:	c4 e3 4d 18 b4 24 20 	vinsertf128 ymm6,ymm6,XMMWORD PTR [rsp+0x220],0x1
  b09cfa:	02 00 00 01 
  b09cfe:	c5 fc 28 bc 24 80 00 	vmovaps ymm7,YMMWORD PTR [rsp+0x80]
  b09d05:	00 00 
  b09d07:	c4 63 45 18 44 24 20 	vinsertf128 ymm8,ymm7,XMMWORD PTR [rsp+0x20],0x1
  b09d0e:	01 
  b09d0f:	c4 c1 4d 15 f8       	vunpckhpd ymm7,ymm6,ymm8
  b09d14:	c5 7c 28 8c 24 a0 00 	vmovaps ymm9,YMMWORD PTR [rsp+0xa0]
  b09d1b:	00 00 
  b09d1d:	c4 63 35 18 8c 24 c0 	vinsertf128 ymm9,ymm9,XMMWORD PTR [rsp+0xc0],0x1
  b09d24:	00 00 00 01 
  b09d28:	c5 7c 28 94 24 e0 00 	vmovaps ymm10,YMMWORD PTR [rsp+0xe0]
  b09d2f:	00 00 
  b09d31:	c4 63 2d 18 54 24 40 	vinsertf128 ymm10,ymm10,XMMWORD PTR [rsp+0x40],0x1
  b09d38:	01 
  b09d39:	c4 41 35 15 da       	vunpckhpd ymm11,ymm9,ymm10
  b09d3e:	c4 41 44 c6 e3 dd    	vshufps ymm12,ymm7,ymm11,0xdd
  b09d44:	c4 41 1c c6 f4 d8    	vshufps ymm14,ymm12,ymm12,0xd8
  b09d4a:	c5 ec c6 d4 88       	vshufps ymm2,ymm2,ymm4,0x88
  b09d4f:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b09d54:	c4 c1 44 c6 e3 88    	vshufps ymm4,ymm7,ymm11,0x88
  b09d5a:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b09d5f:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b09d63:	c5 e5 14 cd          	vunpcklpd ymm1,ymm3,ymm5
  b09d67:	c5 fc c6 d9 dd       	vshufps ymm3,ymm0,ymm1,0xdd
  b09d6c:	c5 e4 c6 fb d8       	vshufps ymm7,ymm3,ymm3,0xd8
  b09d71:	c4 c1 4d 14 d8       	vunpcklpd ymm3,ymm6,ymm8
  b09d76:	c4 c1 35 14 ea       	vunpcklpd ymm5,ymm9,ymm10
  b09d7b:	c5 e4 c6 f5 dd       	vshufps ymm6,ymm3,ymm5,0xdd
  b09d80:	c5 4c c6 ce d8       	vshufps ymm9,ymm6,ymm6,0xd8
  b09d85:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  b09d8a:	62 e1 7c 28 c6 c0 d8 	vshufps ymm16,ymm0,ymm0,0xd8
  b09d91:	c5 e4 c6 c5 88       	vshufps ymm0,ymm3,ymm5,0x88
  b09d96:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b09d9b:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  b09da1:	c5 7c 10 62 40       	vmovups ymm12,YMMWORD PTR [rdx+0x40]
  b09da6:	c5 fc 10 4a 60       	vmovups ymm1,YMMWORD PTR [rdx+0x60]
  b09dab:	c5 fc 10 b2 80 00 00 	vmovups ymm6,YMMWORD PTR [rdx+0x80]
  b09db2:	00 
  b09db3:	c5 fc 10 aa a0 00 00 	vmovups ymm5,YMMWORD PTR [rdx+0xa0]
  b09dba:	00 
  b09dbb:	c5 7c 10 ba c0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xc0]
  b09dc2:	00 
  b09dc3:	c5 7c 10 82 80 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x180]
  b09dca:	00 
  b09dcb:	c5 7c 10 92 a0 01 00 	vmovups ymm10,YMMWORD PTR [rdx+0x1a0]
  b09dd2:	00 
  b09dd3:	62 d1 04 20 59 d8    	vmulps ymm3,ymm31,ymm8
  b09dd9:	62 d2 0d 20 bc da    	vfnmadd231ps ymm3,ymm30,ymm10
  b09ddf:	62 51 0c 20 59 c0    	vmulps ymm8,ymm30,ymm8
  b09de5:	62 61 7c 28 10 72 07 	vmovups ymm30,YMMWORD PTR [rdx+0xe0]
  b09dec:	62 52 05 20 b8 c2    	vfmadd231ps ymm8,ymm31,ymm10
  b09df2:	62 61 7c 28 10 7a 08 	vmovups ymm31,YMMWORD PTR [rdx+0x100]
  b09df9:	c4 41 14 59 df       	vmulps ymm11,ymm13,ymm15
  b09dfe:	62 12 0d 28 bc de    	vfnmadd231ps ymm11,ymm14,ymm30
  b09e04:	c4 41 0c 59 f7       	vmulps ymm14,ymm14,ymm15
  b09e09:	c5 7c 10 ba 40 02 00 	vmovups ymm15,YMMWORD PTR [rdx+0x240]
  b09e10:	00 
  b09e11:	62 12 15 28 b8 f6    	vfmadd231ps ymm14,ymm13,ymm30
  b09e17:	62 61 7c 28 10 72 13 	vmovups ymm30,YMMWORD PTR [rdx+0x260]
  b09e1e:	62 51 1c 20 59 ef    	vmulps ymm13,ymm28,ymm15
  b09e24:	62 12 15 20 bc ee    	vfnmadd231ps ymm13,ymm29,ymm30
  b09e2a:	62 51 14 20 59 ff    	vmulps ymm15,ymm29,ymm15
  b09e30:	62 61 7c 28 10 6a 09 	vmovups ymm29,YMMWORD PTR [rdx+0x120]
  b09e37:	62 12 1d 20 b8 fe    	vfmadd231ps ymm15,ymm28,ymm30
  b09e3d:	62 61 7c 28 10 72 0a 	vmovups ymm30,YMMWORD PTR [rdx+0x140]
  b09e44:	62 01 44 20 59 e7    	vmulps ymm28,ymm23,ymm31
  b09e4a:	62 02 2d 20 bc e5    	vfnmadd231ps ymm28,ymm26,ymm29
  b09e50:	62 01 2c 20 59 d7    	vmulps ymm26,ymm26,ymm31
  b09e56:	62 61 7c 28 10 7a 14 	vmovups ymm31,YMMWORD PTR [rdx+0x280]
  b09e5d:	62 02 45 20 b8 d5    	vfmadd231ps ymm26,ymm23,ymm29
  b09e63:	62 61 7c 28 10 6a 15 	vmovups ymm29,YMMWORD PTR [rdx+0x2a0]
  b09e6a:	62 91 4c 20 59 c7    	vmulps ymm0,ymm22,ymm31
  b09e70:	62 92 25 20 bc c5    	vfnmadd231ps ymm0,ymm27,ymm29
  b09e76:	62 81 24 20 59 ff    	vmulps ymm23,ymm27,ymm31
  b09e7c:	62 61 7c 28 10 5a 0e 	vmovups ymm27,YMMWORD PTR [rdx+0x1c0]
  b09e83:	62 82 4d 20 b8 fd    	vfmadd231ps ymm23,ymm22,ymm29
  b09e89:	62 61 7c 28 10 6a 0f 	vmovups ymm29,YMMWORD PTR [rdx+0x1e0]
  b09e90:	62 81 34 20 59 f3    	vmulps ymm22,ymm25,ymm27
  b09e96:	62 82 3d 20 bc f5    	vfnmadd231ps ymm22,ymm24,ymm29
  b09e9c:	62 01 3c 20 59 c3    	vmulps ymm24,ymm24,ymm27
  b09ea2:	62 61 7c 28 10 5a 0b 	vmovups ymm27,YMMWORD PTR [rdx+0x160]
  b09ea9:	62 02 35 20 b8 c5    	vfmadd231ps ymm24,ymm25,ymm29
  b09eaf:	62 61 7c 28 10 4a 10 	vmovups ymm25,YMMWORD PTR [rdx+0x200]
  b09eb6:	62 41 44 28 59 ec    	vmulps ymm29,ymm7,ymm12
  b09ebc:	62 62 35 28 bc e9    	vfnmadd231ps ymm29,ymm9,ymm1
  b09ec2:	c4 41 34 59 cc       	vmulps ymm9,ymm9,ymm12
  b09ec7:	c5 7c 10 a2 20 02 00 	vmovups ymm12,YMMWORD PTR [rdx+0x220]
  b09ece:	00 
  b09ecf:	c4 62 45 b8 c9       	vfmadd231ps ymm9,ymm7,ymm1
  b09ed4:	c5 fc 10 ba c0 02 00 	vmovups ymm7,YMMWORD PTR [rdx+0x2c0]
  b09edb:	00 
  b09edc:	62 01 5c 20 59 f9    	vmulps ymm31,ymm20,ymm25
  b09ee2:	62 42 55 20 bc fc    	vfnmadd231ps ymm31,ymm21,ymm12
  b09ee8:	62 81 54 20 59 e9    	vmulps ymm21,ymm21,ymm25
  b09eee:	62 61 7c 28 10 4a 17 	vmovups ymm25,YMMWORD PTR [rdx+0x2e0]
  b09ef5:	62 c2 5d 20 b8 ec    	vfmadd231ps ymm21,ymm20,ymm12
  b09efb:	62 f1 7c 20 58 cb    	vaddps ymm1,ymm16,ymm3
  b09f01:	c5 fc 29 4c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm1
  b09f07:	62 e1 6c 28 59 e6    	vmulps ymm20,ymm2,ymm6
  b09f0d:	62 e2 5d 28 bc e5    	vfnmadd231ps ymm20,ymm4,ymm5
  b09f13:	c5 dc 59 e6          	vmulps ymm4,ymm4,ymm6
  b09f17:	c4 41 24 58 e5       	vaddps ymm12,ymm11,ymm13
  b09f1c:	c4 e2 6d b8 e5       	vfmadd231ps ymm4,ymm2,ymm5
  b09f21:	c5 9c 58 c9          	vaddps ymm1,ymm12,ymm1
  b09f25:	c5 fc 29 8c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm1
  b09f2c:	00 00 
  b09f2e:	62 f1 6c 20 59 ef    	vmulps ymm5,ymm18,ymm7
  b09f34:	62 92 65 20 bc e9    	vfnmadd231ps ymm5,ymm19,ymm25
  b09f3a:	62 f1 64 20 59 ff    	vmulps ymm7,ymm19,ymm7
  b09f40:	62 f1 1c 20 58 f0    	vaddps ymm6,ymm28,ymm0
  b09f46:	62 92 6d 20 b8 f9    	vfmadd231ps ymm7,ymm18,ymm25
  b09f4c:	62 01 4c 20 58 cd    	vaddps ymm25,ymm22,ymm29
  b09f52:	62 91 74 20 59 d6    	vmulps ymm2,ymm17,ymm30
  b09f58:	c5 fc 28 4c 24 60    	vmovaps ymm1,YMMWORD PTR [rsp+0x60]
  b09f5e:	62 92 75 28 bc d3    	vfnmadd231ps ymm2,ymm1,ymm27
  b09f64:	62 81 74 28 59 d6    	vmulps ymm18,ymm1,ymm30
  b09f6a:	62 91 4c 28 58 c9    	vaddps ymm1,ymm6,ymm25
  b09f70:	c5 fc 29 8c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm1
  b09f77:	00 00 
  b09f79:	62 82 75 20 b8 d3    	vfmadd231ps ymm18,ymm17,ymm27
  b09f7f:	62 a1 04 20 58 cc    	vaddps ymm17,ymm31,ymm20
  b09f85:	62 e1 54 28 58 da    	vaddps ymm19,ymm5,ymm2
  b09f8b:	62 61 1c 20 5c e0    	vsubps ymm28,ymm28,ymm0
  b09f91:	62 51 3c 20 58 d1    	vaddps ymm10,ymm24,ymm9
  b09f97:	62 41 3c 20 5c d9    	vsubps ymm27,ymm24,ymm9
  b09f9d:	62 21 74 20 58 f3    	vaddps ymm30,ymm17,ymm19
  b09fa3:	62 21 04 20 5c fc    	vsubps ymm31,ymm31,ymm20
  b09fa9:	62 31 44 28 58 ca    	vaddps ymm9,ymm7,ymm18
  b09faf:	62 a1 44 28 5c e2    	vsubps ymm20,ymm7,ymm18
  b09fb5:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  b09fbb:	62 e1 3c 28 58 d0    	vaddps ymm18,ymm8,ymm0
  b09fc1:	62 e1 7c 20 5c c3    	vsubps ymm16,ymm16,ymm3
  b09fc7:	c4 c1 0c 58 df       	vaddps ymm3,ymm14,ymm15
  b09fcc:	c4 41 0c 5c f7       	vsubps ymm14,ymm14,ymm15
  b09fd1:	62 31 2c 20 58 ff    	vaddps ymm15,ymm26,ymm23
  b09fd7:	62 21 2c 20 5c d7    	vsubps ymm26,ymm26,ymm23
  b09fdd:	62 e1 54 20 58 fc    	vaddps ymm23,ymm21,ymm4
  b09fe3:	62 a1 14 20 5c f6    	vsubps ymm22,ymm29,ymm22
  b09fe9:	62 b1 2c 20 58 fe    	vaddps ymm7,ymm26,ymm22
  b09fef:	62 f1 54 20 5c e4    	vsubps ymm4,ymm21,ymm4
  b09ff5:	c5 ec 5c ed          	vsubps ymm5,ymm2,ymm5
  b09ff9:	62 e1 5c 28 58 ed    	vaddps ymm21,ymm4,ymm5
  b09fff:	62 b1 44 28 5c d5    	vsubps ymm2,ymm7,ymm21
  b0a005:	c5 fc 29 94 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm2
  b0a00c:	00 00 
  b0a00e:	62 b1 44 28 58 d5    	vaddps ymm2,ymm7,ymm21
  b0a014:	c5 fc 29 94 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm2
  b0a01b:	00 00 
  b0a01d:	62 81 1c 20 58 eb    	vaddps ymm21,ymm28,ymm27
  b0a023:	c4 c1 7c 5c c0       	vsubps ymm0,ymm0,ymm8
  b0a028:	62 31 04 20 58 c4    	vaddps ymm8,ymm31,ymm20
  b0a02e:	c4 41 14 5c eb       	vsubps ymm13,ymm13,ymm11
  b0a033:	62 41 54 20 58 e8    	vaddps ymm29,ymm21,ymm8
  b0a039:	62 d1 54 20 5c d0    	vsubps ymm2,ymm21,ymm8
  b0a03f:	c5 fc 29 54 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm2
  b0a045:	62 11 74 28 58 c6    	vaddps ymm8,ymm1,ymm30
  b0a04b:	62 91 4c 28 5c f1    	vsubps ymm6,ymm6,ymm25
  b0a051:	c5 fc 28 94 24 80 00 	vmovaps ymm2,YMMWORD PTR [rsp+0x80]
  b0a058:	00 00 
  b0a05a:	62 41 6c 28 58 c8    	vaddps ymm25,ymm2,ymm8
  b0a060:	62 a1 74 20 5c cb    	vsubps ymm17,ymm17,ymm19
  b0a066:	62 a1 64 28 58 da    	vaddps ymm19,ymm3,ymm18
  b0a06c:	c5 fc 28 4c 24 20    	vmovaps ymm1,YMMWORD PTR [rsp+0x20]
  b0a072:	c4 41 74 5c dc       	vsubps ymm11,ymm1,ymm12
  b0a077:	c4 c1 04 58 fa       	vaddps ymm7,ymm15,ymm10
  b0a07c:	c4 c1 04 5c ca       	vsubps ymm1,ymm15,ymm10
  b0a081:	62 51 44 20 58 d1    	vaddps ymm10,ymm23,ymm9
  b0a087:	62 51 44 20 5c e1    	vsubps ymm12,ymm23,ymm9
  b0a08d:	c4 41 74 5c cc       	vsubps ymm9,ymm1,ymm12
  b0a092:	c5 7c 29 4c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm9
  b0a098:	62 c1 74 28 58 ec    	vaddps ymm21,ymm1,ymm12
  b0a09e:	c5 2c 58 e7          	vaddps ymm12,ymm10,ymm7
  b0a0a2:	62 e1 6c 20 5c d3    	vsubps ymm18,ymm18,ymm3
  b0a0a8:	62 b1 4c 28 58 d9    	vaddps ymm3,ymm6,ymm17
  b0a0ae:	62 21 4c 28 5c c1    	vsubps ymm24,ymm6,ymm17
  b0a0b4:	62 51 7c 20 58 ce    	vaddps ymm9,ymm16,ymm14
  b0a0ba:	62 d1 7c 20 5c ce    	vsubps ymm1,ymm16,ymm14
  b0a0c0:	62 c1 64 20 58 fc    	vaddps ymm23,ymm19,ymm12
  b0a0c6:	62 81 1c 20 5c c3    	vsubps ymm16,ymm28,ymm27
  b0a0cc:	c4 62 7d 18 3d 8b b3 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff56b38b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b0a0d3:	56 ff 
  b0a0d5:	62 21 04 20 5c dc    	vsubps ymm27,ymm31,ymm20
  b0a0db:	62 e1 14 28 58 c8    	vaddps ymm17,ymm13,ymm0
  b0a0e1:	c4 c1 7c 5c c5       	vsubps ymm0,ymm0,ymm13
  b0a0e6:	c5 7c 29 fe          	vmovaps ymm6,ymm15
  b0a0ea:	62 31 2c 20 5c ee    	vsubps ymm13,ymm26,ymm22
  b0a0f0:	62 c1 7c 28 28 e7    	vmovaps ymm20,ymm15
  b0a0f6:	c5 dc 5c ed          	vsubps ymm5,ymm4,ymm5
  b0a0fa:	62 41 7c 28 28 d7    	vmovaps ymm26,ymm15
  b0a100:	c4 62 05 ac c2       	vfnmadd213ps ymm8,ymm15,ymm2
  b0a105:	62 01 7c 20 58 e3    	vaddps ymm28,ymm16,ymm27
  b0a10b:	62 32 05 28 ac e3    	vfnmadd213ps ymm12,ymm15,ymm19
  b0a111:	62 11 74 28 58 f4    	vaddps ymm14,ymm1,ymm28
  b0a117:	62 62 05 28 ac e1    	vfnmadd213ps ymm28,ymm15,ymm1
  b0a11d:	62 c1 7c 28 28 df    	vmovaps ymm19,ymm15
  b0a123:	c5 94 58 cd          	vaddps ymm1,ymm13,ymm5
  b0a127:	c4 62 75 ac f8       	vfnmadd213ps ymm15,ymm1,ymm0
  b0a12c:	c5 fc 58 c9          	vaddps ymm1,ymm0,ymm1
  b0a130:	c4 c1 44 5c c2       	vsubps ymm0,ymm7,ymm10
  b0a135:	c4 e2 7d 18 3d 96 b1 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff56b196]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b0a13c:	56 ff 
  b0a13e:	62 d2 15 20 ac f1    	vfnmadd213ps ymm6,ymm29,ymm9
  b0a144:	c5 c4 59 94 24 e0 00 	vmulps ymm2,ymm7,YMMWORD PTR [rsp+0xe0]
  b0a14b:	00 00 
  b0a14d:	c5 fc 28 a4 24 a0 00 	vmovaps ymm4,YMMWORD PTR [rsp+0xa0]
  b0a154:	00 00 
  b0a156:	62 01 5c 28 5c f6    	vsubps ymm30,ymm4,ymm30
  b0a15c:	62 61 4c 28 58 fa    	vaddps ymm31,ymm6,ymm2
  b0a162:	c5 7c 28 94 24 c0 00 	vmovaps ymm10,YMMWORD PTR [rsp+0xc0]
  b0a169:	00 00 
  b0a16b:	62 a2 2d 28 ac e1    	vfnmadd213ps ymm20,ymm10,ymm17
  b0a171:	c5 c4 59 64 24 40    	vmulps ymm4,ymm7,YMMWORD PTR [rsp+0x40]
  b0a177:	62 e1 4c 28 5c f2    	vsubps ymm22,ymm6,ymm2
  b0a17d:	62 f1 5c 20 5c f4    	vsubps ymm6,ymm20,ymm4
  b0a183:	62 f1 5c 20 58 d4    	vaddps ymm2,ymm20,ymm4
  b0a189:	62 42 65 28 ac d3    	vfnmadd213ps ymm26,ymm3,ymm11
  b0a18f:	62 e1 24 28 58 e3    	vaddps ymm20,ymm11,ymm3
  b0a195:	62 a2 55 20 ac da    	vfnmadd213ps ymm19,ymm21,ymm18
  b0a19b:	62 b1 6c 20 58 e5    	vaddps ymm4,ymm18,ymm21
  b0a1a1:	c5 94 5c dd          	vsubps ymm3,ymm13,ymm5
  b0a1a5:	62 91 7c 20 5c eb    	vsubps ymm5,ymm16,ymm27
  b0a1ab:	62 e1 44 28 59 44 24 	vmulps ymm16,ymm7,YMMWORD PTR [rsp+0x20]
  b0a1b2:	01 
  b0a1b3:	62 61 3c 20 59 c7    	vmulps ymm24,ymm24,ymm7
  b0a1b9:	c5 fc 59 c7          	vmulps ymm0,ymm0,ymm7
  b0a1bd:	62 71 0c 20 59 ef    	vmulps ymm13,ymm30,ymm7
  b0a1c3:	62 61 64 28 59 df    	vmulps ymm27,ymm3,ymm7
  b0a1c9:	c5 d4 59 ef          	vmulps ymm5,ymm5,ymm7
  b0a1cd:	62 61 3c 28 58 f0    	vaddps ymm30,ymm8,ymm0
  b0a1d3:	62 e1 3c 28 5c e8    	vsubps ymm21,ymm8,ymm0
  b0a1d9:	c4 41 1c 5c dd       	vsubps ymm11,ymm12,ymm13
  b0a1de:	c4 41 1c 58 c5       	vaddps ymm8,ymm12,ymm13
  b0a1e3:	62 b1 2c 20 5c c0    	vsubps ymm0,ymm26,ymm16
  b0a1e9:	62 81 34 28 58 d5    	vaddps ymm18,ymm9,ymm29
  b0a1ef:	62 11 64 20 58 e8    	vaddps ymm13,ymm19,ymm24
  b0a1f5:	62 d1 74 20 58 da    	vaddps ymm3,ymm17,ymm10
  b0a1fb:	62 01 1c 20 58 eb    	vaddps ymm29,ymm28,ymm27
  b0a201:	62 a1 2c 20 58 c8    	vaddps ymm17,ymm26,ymm16
  b0a207:	c5 04 5c e5          	vsubps ymm12,ymm15,ymm5
  b0a20b:	62 91 64 20 5c f8    	vsubps ymm7,ymm19,ymm24
  b0a211:	62 81 1c 20 5c c3    	vsubps ymm16,ymm28,ymm27
  b0a217:	c5 04 58 d5          	vaddps ymm10,ymm15,ymm5
  b0a21b:	c5 7c 28 0d 7d b6 56 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff56b67d]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  b0a222:	ff 
  b0a223:	62 31 7c 28 28 ff    	vmovaps ymm15,ymm23
  b0a229:	62 12 35 28 7f f9    	vpermt2ps ymm15,ymm9,ymm25
  b0a22f:	62 e1 7c 28 28 1d a7 	vmovaps ymm19,YMMWORD PTR [rip+0xffffffffff56cfa7]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b0a236:	cf 56 ff 
  b0a239:	62 82 65 20 7f f9    	vpermt2ps ymm23,ymm19,ymm25
  b0a23f:	c5 fc 28 ee          	vmovaps ymm5,ymm6
  b0a243:	62 92 35 28 7f ef    	vpermt2ps ymm5,ymm9,ymm31
  b0a249:	62 92 65 20 7f f7    	vpermt2ps ymm6,ymm19,ymm31
  b0a24f:	62 41 7c 28 28 c5    	vmovaps ymm24,ymm13
  b0a255:	62 62 35 28 7f c0    	vpermt2ps ymm24,ymm9,ymm0
  b0a25b:	62 72 65 20 7f e8    	vpermt2ps ymm13,ymm19,ymm0
  b0a261:	c5 fc 28 c1          	vmovaps ymm0,ymm1
  b0a265:	62 d2 35 28 7f c6    	vpermt2ps ymm0,ymm9,ymm14
  b0a26b:	62 d2 65 20 7f ce    	vpermt2ps ymm1,ymm19,ymm14
  b0a271:	c4 41 7c 28 f3       	vmovaps ymm14,ymm11
  b0a276:	62 12 35 28 7f f6    	vpermt2ps ymm14,ymm9,ymm30
  b0a27c:	62 12 65 20 7f de    	vpermt2ps ymm11,ymm19,ymm30
  b0a282:	62 61 7c 28 28 ca    	vmovaps ymm25,ymm2
  b0a288:	62 22 35 28 7f ce    	vpermt2ps ymm25,ymm9,ymm22
  b0a28e:	62 b2 65 20 7f d6    	vpermt2ps ymm2,ymm19,ymm22
  b0a294:	62 e1 7c 28 28 f4    	vmovaps ymm22,ymm4
  b0a29a:	62 a2 35 28 7f f4    	vpermt2ps ymm22,ymm9,ymm20
  b0a2a0:	62 b2 65 20 7f e4    	vpermt2ps ymm4,ymm19,ymm20
  b0a2a6:	62 c1 7c 28 28 e4    	vmovaps ymm20,ymm12
  b0a2ac:	62 82 35 28 7f e5    	vpermt2ps ymm20,ymm9,ymm29
  b0a2b2:	62 12 65 20 7f e5    	vpermt2ps ymm12,ymm19,ymm29
  b0a2b8:	62 41 7c 28 28 d0    	vmovaps ymm26,ymm8
  b0a2be:	62 22 35 28 7f d5    	vpermt2ps ymm26,ymm9,ymm21
  b0a2c4:	62 32 65 20 7f c5    	vpermt2ps ymm8,ymm19,ymm21
  b0a2ca:	62 e1 7c 28 28 eb    	vmovaps ymm21,ymm3
  b0a2d0:	62 a2 35 28 7f ea    	vpermt2ps ymm21,ymm9,ymm18
  b0a2d6:	62 b2 65 20 7f da    	vpermt2ps ymm3,ymm19,ymm18
  b0a2dc:	62 e1 7c 28 28 d7    	vmovaps ymm18,ymm7
  b0a2e2:	62 a2 35 28 7f d1    	vpermt2ps ymm18,ymm9,ymm17
  b0a2e8:	62 b2 65 20 7f f9    	vpermt2ps ymm7,ymm19,ymm17
  b0a2ee:	62 32 2d 28 77 c8    	vpermi2ps ymm9,ymm10,ymm16
  b0a2f4:	62 32 65 20 7f d0    	vpermt2ps ymm10,ymm19,ymm16
  b0a2fa:	62 e1 7c 28 11 3e    	vmovups YMMWORD PTR [rsi],ymm23
  b0a300:	c5 7c 11 7e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm15
  b0a305:	c5 fc 11 76 40       	vmovups YMMWORD PTR [rsi+0x40],ymm6
  b0a30a:	c5 fc 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm5
  b0a30f:	c5 7c 11 ae 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm13
  b0a316:	00 
  b0a317:	62 61 7c 28 11 46 05 	vmovups YMMWORD PTR [rsi+0xa0],ymm24
  b0a31e:	c5 fc 11 8e c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm1
  b0a325:	00 
  b0a326:	c5 fc 11 86 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm0
  b0a32d:	00 
  b0a32e:	c5 7c 11 9e 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm11
  b0a335:	00 
  b0a336:	c5 7c 11 b6 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm14
  b0a33d:	00 
  b0a33e:	c5 fc 11 96 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm2
  b0a345:	00 
  b0a346:	62 61 7c 28 11 4e 0b 	vmovups YMMWORD PTR [rsi+0x160],ymm25
  b0a34d:	c5 fc 11 a6 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm4
  b0a354:	00 
  b0a355:	62 e1 7c 28 11 76 0d 	vmovups YMMWORD PTR [rsi+0x1a0],ymm22
  b0a35c:	c5 7c 11 a6 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm12
  b0a363:	00 
  b0a364:	62 e1 7c 28 11 66 0f 	vmovups YMMWORD PTR [rsi+0x1e0],ymm20
  b0a36b:	c5 7c 11 86 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm8
  b0a372:	00 
  b0a373:	62 61 7c 28 11 56 11 	vmovups YMMWORD PTR [rsi+0x220],ymm26
  b0a37a:	c5 fc 11 9e 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm3
  b0a381:	00 
  b0a382:	62 e1 7c 28 11 6e 13 	vmovups YMMWORD PTR [rsi+0x260],ymm21
  b0a389:	c5 fc 11 be 80 02 00 	vmovups YMMWORD PTR [rsi+0x280],ymm7
  b0a390:	00 
  b0a391:	62 e1 7c 28 11 56 15 	vmovups YMMWORD PTR [rsi+0x2a0],ymm18
  b0a398:	c5 7c 11 96 c0 02 00 	vmovups YMMWORD PTR [rsi+0x2c0],ymm10
  b0a39f:	00 
  b0a3a0:	c5 7c 11 8e e0 02 00 	vmovups YMMWORD PTR [rsi+0x2e0],ymm9
  b0a3a7:	00 
  b0a3a8:	48 89 ec             	mov    rsp,rbp
  b0a3ab:	5d                   	pop    rbp
  b0a3ac:	c5 f8 77             	vzeroupper
  b0a3af:	c3                   	ret
