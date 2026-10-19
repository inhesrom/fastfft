
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a6e540 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a6e540:	55                   	push   rbp
  a6e541:	48 89 e5             	mov    rbp,rsp
  a6e544:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a6e548:	48 81 ec 00 04 00 00 	sub    rsp,0x400
  a6e54f:	48 c1 e2 08          	shl    rdx,0x8
  a6e553:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a6e557:	31 d2                	xor    edx,edx
  a6e559:	4c 8d 84 24 80 03 00 	lea    r8,[rsp+0x380]
  a6e560:	00 
  a6e561:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a6e566:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a6e56d:	00 00 00 
  a6e570:	c6 84 24 80 03 00 00 	mov    BYTE PTR [rsp+0x380],0x0
  a6e577:	00 
  a6e578:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a6e57d:	62 e1 7c 48 10 3c 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1]
  a6e584:	c5 f8 10 44 17 40    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x40]
  a6e58a:	62 b1 7c 48 28 ff    	vmovaps zmm7,zmm23
  a6e590:	62 f1 7c 48 28 25 26 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff626126]        # 946c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21b70>
  a6e597:	61 62 ff 
  a6e59a:	62 e2 5d 48 7f f8    	vpermt2ps zmm23,zmm4,zmm0
  a6e5a0:	62 e1 7c 48 10 ac 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x50]
  a6e5a7:	50 00 00 00 
  a6e5ab:	c5 f8 10 8c 17 90 00 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x90]
  a6e5b2:	00 00 
  a6e5b4:	62 31 7c 48 28 cd    	vmovaps zmm9,zmm21
  a6e5ba:	62 e2 5d 48 7f e9    	vpermt2ps zmm21,zmm4,zmm1
  a6e5c0:	62 61 7c 48 10 84 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0xa0]
  a6e5c7:	a0 00 00 00 
  a6e5cb:	c5 f8 10 94 17 e0 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0xe0]
  a6e5d2:	00 00 
  a6e5d4:	62 01 7c 48 28 c8    	vmovaps zmm25,zmm24
  a6e5da:	62 62 5d 48 7f c2    	vpermt2ps zmm24,zmm4,zmm2
  a6e5e0:	62 e1 7c 48 10 b4 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a6e5e7:	f0 00 00 00 
  a6e5eb:	c5 f8 10 b4 17 30 01 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x130]
  a6e5f2:	00 00 
  a6e5f4:	62 a1 7c 48 28 e6    	vmovaps zmm20,zmm22
  a6e5fa:	62 e2 5d 48 7f f6    	vpermt2ps zmm22,zmm4,zmm6
  a6e600:	62 71 7c 48 10 44 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x140]
  a6e607:	05 
  a6e608:	c5 f8 10 ac 17 80 01 	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x180]
  a6e60f:	00 00 
  a6e611:	62 c1 7c 48 28 d0    	vmovaps zmm18,zmm8
  a6e617:	62 f1 7c 48 28 1d 5f 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff62605f]        # 94680 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21b30>
  a6e61e:	60 62 ff 
  a6e621:	62 f2 65 48 7f f8    	vpermt2ps zmm7,zmm3,zmm0
  a6e627:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm7
  a6e62e:	03 
  a6e62f:	62 72 5d 48 7f c5    	vpermt2ps zmm8,zmm4,zmm5
  a6e635:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm8
  a6e63c:	02 
  a6e63d:	62 61 7c 48 10 94 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x190]
  a6e644:	90 01 00 00 
  a6e648:	c5 f8 10 84 17 d0 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x1d0]
  a6e64f:	00 00 
  a6e651:	62 72 65 48 7f c9    	vpermt2ps zmm9,zmm3,zmm1
  a6e657:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm9
  a6e65e:	08 
  a6e65f:	62 01 7c 48 28 ea    	vmovaps zmm29,zmm26
  a6e665:	62 62 5d 48 7f d0    	vpermt2ps zmm26,zmm4,zmm0
  a6e66b:	62 71 7c 48 10 b4 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a6e672:	e0 01 00 00 
  a6e676:	62 62 65 48 7f ca    	vpermt2ps zmm25,zmm3,zmm2
  a6e67c:	c5 f8 10 8c 17 20 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x220]
  a6e683:	00 00 
  a6e685:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a6e68b:	62 72 5d 48 7f f1    	vpermt2ps zmm14,zmm4,zmm1
  a6e691:	62 e2 65 48 7f e6    	vpermt2ps zmm20,zmm3,zmm6
  a6e697:	62 61 7c 48 10 a4 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x230]
  a6e69e:	30 02 00 00 
  a6e6a2:	c5 f8 10 94 17 70 02 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x270]
  a6e6a9:	00 00 
  a6e6ab:	62 01 7c 48 28 f4    	vmovaps zmm30,zmm28
  a6e6b1:	62 e2 65 48 7f d5    	vpermt2ps zmm18,zmm3,zmm5
  a6e6b7:	62 62 5d 48 7f e2    	vpermt2ps zmm28,zmm4,zmm2
  a6e6bd:	62 61 7c 48 10 5c 17 	vmovups zmm27,ZMMWORD PTR [rdi+rdx*1+0x280]
  a6e6c4:	0a 
  a6e6c5:	c5 f8 10 ac 17 c0 02 	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x2c0]
  a6e6cc:	00 00 
  a6e6ce:	62 62 65 48 7f e8    	vpermt2ps zmm29,zmm3,zmm0
  a6e6d4:	62 81 7c 48 28 db    	vmovaps zmm19,zmm27
  a6e6da:	62 62 5d 48 7f dd    	vpermt2ps zmm27,zmm4,zmm5
  a6e6e0:	62 61 7c 48 10 bc 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a6e6e7:	d0 02 00 00 
  a6e6eb:	62 e2 65 48 7f c9    	vpermt2ps zmm17,zmm3,zmm1
  a6e6f1:	c5 f8 10 8c 17 10 03 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x310]
  a6e6f8:	00 00 
  a6e6fa:	62 11 7c 48 28 df    	vmovaps zmm11,zmm31
  a6e700:	62 62 5d 48 7f f9    	vpermt2ps zmm31,zmm4,zmm1
  a6e706:	62 62 65 48 7f f2    	vpermt2ps zmm30,zmm3,zmm2
  a6e70c:	62 e1 7c 48 10 84 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x320]
  a6e713:	20 03 00 00 
  a6e717:	c5 f8 10 94 17 60 03 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x360]
  a6e71e:	00 00 
  a6e720:	62 31 7c 48 28 c8    	vmovaps zmm9,zmm16
  a6e726:	62 e2 65 48 7f dd    	vpermt2ps zmm19,zmm3,zmm5
  a6e72c:	62 e2 5d 48 7f c2    	vpermt2ps zmm16,zmm4,zmm2
  a6e732:	62 71 7c 48 10 ac 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x370]
  a6e739:	70 03 00 00 
  a6e73d:	c5 f8 10 ac 17 b0 03 	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x3b0]
  a6e744:	00 00 
  a6e746:	62 72 65 48 7f d9    	vpermt2ps zmm11,zmm3,zmm1
  a6e74c:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a6e752:	62 72 5d 48 7f ed    	vpermt2ps zmm13,zmm4,zmm5
  a6e758:	62 71 7c 48 10 54 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x3c0]
  a6e75f:	0f 
  a6e760:	62 72 65 48 7f ca    	vpermt2ps zmm9,zmm3,zmm2
  a6e766:	c5 f8 10 94 17 00 04 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x400]
  a6e76d:	00 00 
  a6e76f:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a6e775:	62 72 5d 48 7f d2    	vpermt2ps zmm10,zmm4,zmm2
  a6e77b:	62 72 65 48 7f e5    	vpermt2ps zmm12,zmm3,zmm5
  a6e781:	62 f1 7c 48 10 b4 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x410]
  a6e788:	10 04 00 00 
  a6e78c:	c5 f8 10 ac 17 50 04 	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x450]
  a6e793:	00 00 
  a6e795:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a6e79b:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a6e7a1:	62 f2 5d 48 7f f5    	vpermt2ps zmm6,zmm4,zmm5
  a6e7a7:	62 f1 7c 48 10 84 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x460]
  a6e7ae:	60 04 00 00 
  a6e7b2:	c5 f8 10 bc 17 a0 04 	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x4a0]
  a6e7b9:	00 00 
  a6e7bb:	62 72 65 48 7f c5    	vpermt2ps zmm8,zmm3,zmm5
  a6e7c1:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a6e7c7:	62 f2 5d 48 7f c7    	vpermt2ps zmm0,zmm4,zmm7
  a6e7cd:	62 f1 7c 48 10 94 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x4b0]
  a6e7d4:	b0 04 00 00 
  a6e7d8:	62 f2 65 48 7f cf    	vpermt2ps zmm1,zmm3,zmm7
  a6e7de:	c5 f8 10 ac 17 f0 04 	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x4f0]
  a6e7e5:	00 00 
  a6e7e7:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a6e7ed:	62 f2 5d 48 7f d5    	vpermt2ps zmm2,zmm4,zmm5
  a6e7f3:	62 f2 65 48 7f fd    	vpermt2ps zmm7,zmm3,zmm5
  a6e7f9:	62 91 44 40 58 db    	vaddps zmm3,zmm23,zmm27
  a6e7ff:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a6e806:	01 
  a6e807:	62 91 44 40 5c db    	vsubps zmm3,zmm23,zmm27
  a6e80d:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm3
  a6e814:	07 
  a6e815:	62 d1 6c 40 58 df    	vaddps zmm3,zmm18,zmm15
  a6e81b:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm3
  a6e822:	05 
  a6e823:	62 d1 6c 40 5c df    	vsubps zmm3,zmm18,zmm15
  a6e829:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm3
  a6e830:	06 
  a6e831:	62 b1 3c 40 58 d8    	vaddps zmm3,zmm24,zmm16
  a6e837:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm3
  a6e83e:	04 
  a6e83f:	62 a1 3c 40 5c d0    	vsubps zmm18,zmm24,zmm16
  a6e845:	62 51 34 40 58 f9    	vaddps zmm15,zmm25,zmm9
  a6e84b:	62 d1 34 40 5c e1    	vsubps zmm4,zmm25,zmm9
  a6e851:	62 e1 0c 48 58 c0    	vaddps zmm16,zmm14,zmm0
  a6e857:	62 71 0c 48 5c c8    	vsubps zmm9,zmm14,zmm0
  a6e85d:	62 61 74 40 58 c1    	vaddps zmm24,zmm17,zmm1
  a6e863:	62 71 74 40 5c f1    	vsubps zmm14,zmm17,zmm1
  a6e869:	62 91 54 40 58 ef    	vaddps zmm5,zmm21,zmm31
  a6e86f:	62 81 54 40 5c ff    	vsubps zmm23,zmm21,zmm31
  a6e875:	62 41 14 40 58 c8    	vaddps zmm25,zmm29,zmm8
  a6e87b:	62 c1 14 40 5c e8    	vsubps zmm21,zmm29,zmm8
  a6e881:	62 f1 2c 40 58 ce    	vaddps zmm1,zmm26,zmm6
  a6e887:	62 11 4c 48 5c c2    	vsubps zmm8,zmm6,zmm26
  a6e88d:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x200]
  a6e894:	08 
  a6e895:	62 d1 64 48 58 c3    	vaddps zmm0,zmm3,zmm11
  a6e89b:	62 41 64 48 5c db    	vsubps zmm27,zmm3,zmm11
  a6e8a1:	62 d1 4c 40 58 dd    	vaddps zmm3,zmm22,zmm13
  a6e8a7:	62 41 4c 40 5c fd    	vsubps zmm31,zmm22,zmm13
  a6e8ad:	62 71 0c 40 58 ef    	vaddps zmm13,zmm30,zmm7
  a6e8b3:	62 e1 0c 40 5c f7    	vsubps zmm22,zmm30,zmm7
  a6e8b9:	62 f1 1c 40 58 fa    	vaddps zmm7,zmm28,zmm2
  a6e8bf:	62 11 6c 48 5c dc    	vsubps zmm11,zmm2,zmm28
  a6e8c5:	62 41 5c 40 58 e4    	vaddps zmm28,zmm20,zmm12
  a6e8cb:	62 41 5c 40 5c f4    	vsubps zmm30,zmm20,zmm12
  a6e8d1:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x80]
  a6e8d8:	02 
  a6e8d9:	62 c1 6c 48 58 e2    	vaddps zmm20,zmm2,zmm10
  a6e8df:	62 61 2c 48 5c d2    	vsubps zmm26,zmm10,zmm2
  a6e8e5:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a6e8ec:	03 
  a6e8ed:	62 a1 6c 48 58 cb    	vaddps zmm17,zmm2,zmm19
  a6e8f3:	62 31 6c 48 5c d3    	vsubps zmm10,zmm2,zmm19
  a6e8f9:	62 f1 6c 40 58 d4    	vaddps zmm2,zmm18,zmm4
  a6e8ff:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a6e906:	03 
  a6e907:	62 b1 5c 48 5c d2    	vsubps zmm2,zmm4,zmm18
  a6e90d:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a6e914:	08 
  a6e915:	62 d1 0c 48 5c d1    	vsubps zmm2,zmm14,zmm9
  a6e91b:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a6e922:	02 
  a6e923:	62 d1 34 48 58 d6    	vaddps zmm2,zmm9,zmm14
  a6e929:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm2
  a6e930:	0a 
  a6e931:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a6e938:	01 
  a6e939:	62 a1 6c 48 58 d4    	vaddps zmm18,zmm2,zmm20
  a6e93f:	62 b1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm20
  a6e945:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a6e94c:	01 
  a6e94d:	62 81 04 48 58 e0    	vaddps zmm20,zmm15,zmm24
  a6e953:	62 01 04 48 5c e8    	vsubps zmm29,zmm15,zmm24
  a6e959:	62 61 54 48 58 c1    	vaddps zmm24,zmm5,zmm1
  a6e95f:	62 f1 54 48 5c c9    	vsubps zmm1,zmm5,zmm1
  a6e965:	62 11 7c 48 58 c9    	vaddps zmm9,zmm0,zmm25
  a6e96b:	62 91 7c 48 5c c1    	vsubps zmm0,zmm0,zmm25
  a6e971:	62 61 64 48 58 cf    	vaddps zmm25,zmm3,zmm7
  a6e977:	62 f1 64 48 5c ff    	vsubps zmm7,zmm3,zmm7
  a6e97d:	62 d1 1c 40 58 f5    	vaddps zmm6,zmm28,zmm13
  a6e983:	62 51 1c 40 5c f5    	vsubps zmm14,zmm28,zmm13
  a6e989:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x100]
  a6e990:	04 
  a6e991:	62 b1 6c 48 58 e0    	vaddps zmm4,zmm2,zmm16
  a6e997:	62 71 7c 40 5c ea    	vsubps zmm13,zmm16,zmm2
  a6e99d:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x140]
  a6e9a4:	05 
  a6e9a5:	62 e1 74 40 58 c2    	vaddps zmm16,zmm17,zmm2
  a6e9ab:	62 71 74 40 5c e2    	vsubps zmm12,zmm17,zmm2
  a6e9b1:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x1c0]
  a6e9b8:	07 
  a6e9b9:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x180]
  a6e9c0:	06 
  a6e9c1:	62 e1 6c 48 58 cb    	vaddps zmm17,zmm2,zmm3
  a6e9c7:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a6e9cd:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm2
  a6e9d4:	07 
  a6e9d5:	62 b1 44 40 58 dd    	vaddps zmm3,zmm23,zmm21
  a6e9db:	62 a1 44 40 5c ed    	vsubps zmm21,zmm23,zmm21
  a6e9e1:	62 81 3c 48 58 fb    	vaddps zmm23,zmm8,zmm27
  a6e9e7:	62 51 24 40 5c c0    	vsubps zmm8,zmm27,zmm8
  a6e9ed:	62 b1 04 40 58 d6    	vaddps zmm2,zmm31,zmm22
  a6e9f3:	62 31 04 40 5c fe    	vsubps zmm15,zmm31,zmm22
  a6e9f9:	62 81 24 48 58 f6    	vaddps zmm22,zmm11,zmm30
  a6e9ff:	62 d1 0c 40 5c eb    	vsubps zmm5,zmm30,zmm11
  a6ea05:	62 71 74 48 58 d8    	vaddps zmm11,zmm1,zmm0
  a6ea0b:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm11
  a6ea12:	0d 
  a6ea13:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a6ea19:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a6ea20:	0b 
  a6ea21:	62 41 2c 40 58 fa    	vaddps zmm31,zmm26,zmm10
  a6ea27:	62 01 2c 48 5c e2    	vsubps zmm28,zmm10,zmm26
  a6ea2d:	62 61 0c 48 5c f7    	vsubps zmm30,zmm14,zmm7
  a6ea33:	62 c1 44 48 58 de    	vaddps zmm19,zmm7,zmm14
  a6ea39:	62 f1 6c 40 58 c4    	vaddps zmm0,zmm18,zmm4
  a6ea3f:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a6ea46:	04 
  a6ea47:	62 71 6c 40 5c dc    	vsubps zmm11,zmm18,zmm4
  a6ea4d:	62 f1 34 48 58 c6    	vaddps zmm0,zmm9,zmm6
  a6ea53:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm0
  a6ea5a:	0c 
  a6ea5b:	62 f1 34 48 5c c6    	vsubps zmm0,zmm9,zmm6
  a6ea61:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a6ea68:	05 
  a6ea69:	62 91 3c 40 58 f1    	vaddps zmm6,zmm24,zmm25
  a6ea6f:	62 91 34 40 5c c0    	vsubps zmm0,zmm25,zmm24
  a6ea75:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a6ea7c:	06 
  a6ea7d:	62 31 7c 40 58 cc    	vaddps zmm9,zmm16,zmm20
  a6ea83:	62 b1 7c 40 5c c4    	vsubps zmm0,zmm16,zmm20
  a6ea89:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a6ea90:	09 
  a6ea91:	62 f2 7d 48 18 25 c9 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff606bc9]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a6ea98:	6b 60 ff 
  a6ea9b:	62 e1 44 40 59 c4    	vmulps zmm16,zmm23,zmm4
  a6eaa1:	62 f2 7d 48 18 3d 55 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff606c55]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a6eaa8:	6c 60 ff 
  a6eaab:	62 e2 65 48 b8 c7    	vfmadd231ps zmm16,zmm3,zmm7
  a6eab1:	62 e1 44 40 59 d7    	vmulps zmm18,zmm23,zmm7
  a6eab7:	62 e2 5d 48 bc d3    	vfnmadd231ps zmm18,zmm4,zmm3
  a6eabd:	62 f1 4c 40 59 df    	vmulps zmm3,zmm22,zmm7
  a6eac3:	62 f2 6d 48 b8 dc    	vfmadd231ps zmm3,zmm2,zmm4
  a6eac9:	62 e1 4c 40 59 e4    	vmulps zmm20,zmm22,zmm4
  a6eacf:	62 e2 45 48 bc e2    	vfnmadd231ps zmm20,zmm7,zmm2
  a6ead5:	62 f2 7d 48 18 0d bd 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff6068bd]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a6eadc:	68 60 ff 
  a6eadf:	62 f1 74 48 59 54 24 	vmulps zmm2,zmm1,ZMMWORD PTR [rsp+0x200]
  a6eae6:	08 
  a6eae7:	62 e1 74 48 59 74 24 	vmulps zmm22,zmm1,ZMMWORD PTR [rsp+0x280]
  a6eaee:	0a 
  a6eaef:	62 a1 6c 48 5c fe    	vsubps zmm23,zmm2,zmm22
  a6eaf5:	62 b1 6c 48 58 c6    	vaddps zmm0,zmm2,zmm22
  a6eafb:	62 e1 74 48 59 74 24 	vmulps zmm22,zmm1,ZMMWORD PTR [rsp+0xc0]
  a6eb02:	03 
  a6eb03:	62 61 74 48 59 44 24 	vmulps zmm24,zmm1,ZMMWORD PTR [rsp+0x80]
  a6eb0a:	02 
  a6eb0b:	62 01 4c 40 58 c8    	vaddps zmm25,zmm22,zmm24
  a6eb11:	62 a1 3c 40 5c f6    	vsubps zmm22,zmm24,zmm22
  a6eb17:	62 61 3c 48 59 c7    	vmulps zmm24,zmm8,zmm7
  a6eb1d:	62 62 55 40 b8 c4    	vfmadd231ps zmm24,zmm21,zmm4
  a6eb23:	62 71 3c 48 59 c4    	vmulps zmm8,zmm8,zmm4
  a6eb29:	62 32 45 48 bc c5    	vfnmadd231ps zmm8,zmm7,zmm21
  a6eb2f:	62 e1 54 48 59 ec    	vmulps zmm21,zmm5,zmm4
  a6eb35:	62 e2 05 48 b8 ef    	vfmadd231ps zmm21,zmm15,zmm7
  a6eb3b:	62 71 04 48 59 fc    	vmulps zmm15,zmm15,zmm4
  a6eb41:	62 72 45 48 bc fd    	vfnmadd231ps zmm15,zmm7,zmm5
  a6eb47:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a6eb4e:	01 
  a6eb4f:	62 11 6c 48 58 d5    	vaddps zmm10,zmm2,zmm29
  a6eb55:	62 01 6c 48 5c dd    	vsubps zmm27,zmm2,zmm29
  a6eb5b:	62 01 74 40 58 e9    	vaddps zmm29,zmm17,zmm25
  a6eb61:	62 91 74 40 5c d1    	vsubps zmm2,zmm17,zmm25
  a6eb67:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a6eb6e:	01 
  a6eb6f:	62 41 14 48 58 cc    	vaddps zmm25,zmm13,zmm12
  a6eb75:	62 41 1c 48 5c d5    	vsubps zmm26,zmm12,zmm13
  a6eb7b:	62 31 04 40 58 e7    	vaddps zmm12,zmm31,zmm23
  a6eb81:	62 a1 04 40 5c ff    	vsubps zmm23,zmm31,zmm23
  a6eb87:	62 f1 74 48 59 6c 24 	vmulps zmm5,zmm1,ZMMWORD PTR [rsp+0x2c0]
  a6eb8e:	0b 
  a6eb8f:	62 e1 64 40 59 d9    	vmulps zmm19,zmm19,zmm1
  a6eb95:	62 21 54 48 5c fb    	vsubps zmm31,zmm5,zmm19
  a6eb9b:	62 31 54 48 58 f3    	vaddps zmm14,zmm5,zmm19
  a6eba1:	62 f1 74 48 59 6c 24 	vmulps zmm5,zmm1,ZMMWORD PTR [rsp+0x340]
  a6eba8:	0d 
  a6eba9:	62 e1 0c 40 59 d9    	vmulps zmm19,zmm30,zmm1
  a6ebaf:	62 21 54 48 58 f3    	vaddps zmm30,zmm5,zmm19
  a6ebb5:	62 e1 64 40 5c cd    	vsubps zmm17,zmm19,zmm5
  a6ebbb:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a6ebc2:	07 
  a6ebc3:	62 f1 74 48 58 e0    	vaddps zmm4,zmm1,zmm0
  a6ebc9:	62 e1 74 48 5c d8    	vsubps zmm19,zmm1,zmm0
  a6ebcf:	62 b1 6c 40 58 c4    	vaddps zmm0,zmm18,zmm20
  a6ebd5:	62 31 6c 40 5c ec    	vsubps zmm13,zmm18,zmm20
  a6ebdb:	62 b1 1c 40 58 d6    	vaddps zmm2,zmm28,zmm22
  a6ebe1:	62 a1 1c 40 5c f6    	vsubps zmm22,zmm28,zmm22
  a6ebe7:	62 61 7c 40 58 e3    	vaddps zmm28,zmm16,zmm3
  a6ebed:	62 b1 64 48 5c f8    	vsubps zmm7,zmm3,zmm16
  a6ebf3:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a6ebfa:	04 
  a6ebfb:	62 e1 74 48 58 d6    	vaddps zmm18,zmm1,zmm6
  a6ec01:	62 e1 74 48 5c c6    	vsubps zmm16,zmm1,zmm6
  a6ec07:	62 d1 3c 48 58 f7    	vaddps zmm6,zmm8,zmm15
  a6ec0d:	62 d1 3c 48 5c cf    	vsubps zmm1,zmm8,zmm15
  a6ec13:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x300]
  a6ec1a:	0c 
  a6ec1b:	62 f1 34 48 58 dd    	vaddps zmm3,zmm9,zmm5
  a6ec21:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm3
  a6ec28:	0a 
  a6ec29:	62 f1 34 48 5c dd    	vsubps zmm3,zmm9,zmm5
  a6ec2f:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm3
  a6ec36:	07 
  a6ec37:	62 31 3c 40 5c fd    	vsubps zmm15,zmm24,zmm21
  a6ec3d:	62 a1 3c 40 58 ed    	vaddps zmm21,zmm24,zmm21
  a6ec43:	62 91 2c 48 58 ee    	vaddps zmm5,zmm10,zmm30
  a6ec49:	62 11 2c 48 5c d6    	vsubps zmm10,zmm10,zmm30
  a6ec4f:	62 81 14 40 58 e4    	vaddps zmm20,zmm29,zmm28
  a6ec55:	62 01 14 40 5c f4    	vsubps zmm30,zmm29,zmm28
  a6ec5b:	62 01 34 40 58 ef    	vaddps zmm29,zmm25,zmm31
  a6ec61:	62 91 34 40 5c df    	vsubps zmm3,zmm25,zmm31
  a6ec67:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a6ec6e:	02 
  a6ec6f:	62 61 1c 48 58 c8    	vaddps zmm25,zmm12,zmm0
  a6ec75:	62 f1 1c 48 5c c0    	vsubps zmm0,zmm12,zmm0
  a6ec7b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a6ec82:	04 
  a6ec83:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a6ec8a:	05 
  a6ec8b:	62 71 24 48 58 e0    	vaddps zmm12,zmm11,zmm0
  a6ec91:	62 71 24 48 5c c8    	vsubps zmm9,zmm11,zmm0
  a6ec97:	62 d1 5c 48 58 c7    	vaddps zmm0,zmm4,zmm15
  a6ec9d:	62 d1 5c 48 5c df    	vsubps zmm3,zmm4,zmm15
  a6eca3:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x180]
  a6ecaa:	06 
  a6ecab:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x240]
  a6ecb2:	09 
  a6ecb3:	62 d1 3c 48 58 e3    	vaddps zmm4,zmm8,zmm11
  a6ecb9:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm4
  a6ecc0:	03 
  a6ecc1:	62 d1 24 48 5c e0    	vsubps zmm4,zmm11,zmm8
  a6ecc7:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm4
  a6ecce:	08 
  a6eccf:	62 61 6c 48 58 c6    	vaddps zmm24,zmm2,zmm6
  a6ecd5:	62 71 6c 48 5c fe    	vsubps zmm15,zmm2,zmm6
  a6ecdb:	62 d1 24 40 58 f6    	vaddps zmm6,zmm27,zmm14
  a6ece1:	62 d1 24 40 5c d6    	vsubps zmm2,zmm27,zmm14
  a6ece7:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x40]
  a6ecee:	01 
  a6ecef:	62 41 5c 48 58 dd    	vaddps zmm27,zmm4,zmm13
  a6ecf5:	62 41 5c 48 5c e5    	vsubps zmm28,zmm4,zmm13
  a6ecfb:	62 21 2c 40 58 f9    	vaddps zmm31,zmm26,zmm17
  a6ed01:	62 b1 2c 40 5c e1    	vsubps zmm4,zmm26,zmm17
  a6ed07:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm4
  a6ed0e:	06 
  a6ed0f:	62 61 44 40 58 d7    	vaddps zmm26,zmm23,zmm7
  a6ed15:	62 f1 44 40 5c e7    	vsubps zmm4,zmm23,zmm7
  a6ed1b:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm4
  a6ed22:	05 
  a6ed23:	62 71 64 40 58 f1    	vaddps zmm14,zmm19,zmm1
  a6ed29:	62 e1 64 40 5c c9    	vsubps zmm17,zmm19,zmm1
  a6ed2f:	62 a1 4c 40 5c dd    	vsubps zmm19,zmm22,zmm21
  a6ed35:	62 b1 4c 40 58 cd    	vaddps zmm1,zmm22,zmm21
  a6ed3b:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a6ed42:	01 
  a6ed43:	62 b1 7c 48 28 fa    	vmovaps zmm7,zmm18
  a6ed49:	62 f1 7c 48 28 0d 2d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff65822d]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a6ed50:	82 65 ff 
  a6ed53:	62 b2 75 48 7f f8    	vpermt2ps zmm7,zmm1,zmm16
  a6ed59:	62 71 7c 48 28 05 5d 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff65825d]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a6ed60:	82 65 ff 
  a6ed63:	62 a2 3d 48 7f d0    	vpermt2ps zmm18,zmm8,zmm16
  a6ed69:	62 31 7c 48 28 ec    	vmovaps zmm13,zmm20
  a6ed6f:	62 12 75 48 7f ee    	vpermt2ps zmm13,zmm1,zmm30
  a6ed75:	62 82 3d 48 7f e6    	vpermt2ps zmm20,zmm8,zmm30
  a6ed7b:	62 e1 7c 48 28 fd    	vmovaps zmm23,zmm5
  a6ed81:	62 c2 75 48 7f fa    	vpermt2ps zmm23,zmm1,zmm10
  a6ed87:	62 d2 3d 48 7f ea    	vpermt2ps zmm5,zmm8,zmm10
  a6ed8d:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a6ed93:	62 f2 3d 48 7f c3    	vpermt2ps zmm0,zmm8,zmm3
  a6ed99:	62 f2 75 48 7f e3    	vpermt2ps zmm4,zmm1,zmm3
  a6ed9f:	62 d1 7c 48 28 dc    	vmovaps zmm3,zmm12
  a6eda5:	62 d2 75 48 7f d9    	vpermt2ps zmm3,zmm1,zmm9
  a6edab:	62 52 3d 48 7f e1    	vpermt2ps zmm12,zmm8,zmm9
  a6edb1:	62 11 7c 48 28 cb    	vmovaps zmm9,zmm27
  a6edb7:	62 12 75 48 7f cc    	vpermt2ps zmm9,zmm1,zmm28
  a6edbd:	62 02 3d 48 7f dc    	vpermt2ps zmm27,zmm8,zmm28
  a6edc3:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a6edc9:	62 72 75 48 7f d2    	vpermt2ps zmm10,zmm1,zmm2
  a6edcf:	62 f2 3d 48 7f f2    	vpermt2ps zmm6,zmm8,zmm2
  a6edd5:	62 d1 7c 48 28 d6    	vmovaps zmm2,zmm14
  a6eddb:	62 32 3d 48 7f f1    	vpermt2ps zmm14,zmm8,zmm17
  a6ede1:	62 b2 75 48 7f d1    	vpermt2ps zmm2,zmm1,zmm17
  a6ede7:	62 e1 7c 48 28 cf    	vmovaps zmm17,zmm7
  a6eded:	62 71 7c 48 28 1d 09 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff658109]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a6edf4:	81 65 ff 
  a6edf7:	62 e2 25 48 7f cb    	vpermt2ps zmm17,zmm11,zmm3
  a6edfd:	62 e1 7c 48 28 05 39 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff658139]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a6ee04:	81 65 ff 
  a6ee07:	62 f2 7d 40 7f fb    	vpermt2ps zmm7,zmm16,zmm3
  a6ee0d:	62 b1 7c 48 28 df    	vmovaps zmm3,zmm23
  a6ee13:	62 d2 25 48 7f da    	vpermt2ps zmm3,zmm11,zmm10
  a6ee19:	62 c2 7d 40 7f fa    	vpermt2ps zmm23,zmm16,zmm10
  a6ee1f:	62 c2 25 48 7f d4    	vpermt2ps zmm18,zmm11,zmm12
  a6ee25:	62 82 25 48 7f e3    	vpermt2ps zmm20,zmm11,zmm27
  a6ee2b:	62 f2 25 48 7f ee    	vpermt2ps zmm5,zmm11,zmm6
  a6ee31:	62 41 7c 48 28 dd    	vmovaps zmm27,zmm13
  a6ee37:	62 52 7d 40 7f e9    	vpermt2ps zmm13,zmm16,zmm9
  a6ee3d:	62 42 25 48 7f d9    	vpermt2ps zmm27,zmm11,zmm9
  a6ee43:	62 61 ed 40 14 e5    	vunpcklpd zmm28,zmm18,zmm5
  a6ee49:	62 d2 25 48 7f c6    	vpermt2ps zmm0,zmm11,zmm14
  a6ee4f:	62 f1 dd 40 14 c0    	vunpcklpd zmm0,zmm20,zmm0
  a6ee55:	62 e1 f5 40 14 e3    	vunpcklpd zmm20,zmm17,zmm3
  a6ee5b:	62 e1 f5 40 15 f3    	vunpckhpd zmm22,zmm17,zmm3
  a6ee61:	62 b1 c5 48 14 df    	vunpcklpd zmm3,zmm7,zmm23
  a6ee67:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm3
  a6ee6e:	09 
  a6ee6f:	62 a1 c5 48 15 ff    	vunpckhpd zmm23,zmm7,zmm23
  a6ee75:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x280]
  a6ee7c:	0a 
  a6ee7d:	62 d1 7c 48 28 e9    	vmovaps zmm5,zmm9
  a6ee83:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x1c0]
  a6ee8a:	07 
  a6ee8b:	62 f2 75 48 7f ee    	vpermt2ps zmm5,zmm1,zmm6
  a6ee91:	62 72 3d 48 7f ce    	vpermt2ps zmm9,zmm8,zmm6
  a6ee97:	62 91 7c 48 28 d9    	vmovaps zmm3,zmm25
  a6ee9d:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x100]
  a6eea4:	04 
  a6eea5:	62 f2 75 48 7f de    	vpermt2ps zmm3,zmm1,zmm6
  a6eeab:	62 62 3d 48 7f ce    	vpermt2ps zmm25,zmm8,zmm6
  a6eeb1:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a6eeb7:	62 f2 7d 40 7f e2    	vpermt2ps zmm4,zmm16,zmm2
  a6eebd:	62 f2 25 48 7f fa    	vpermt2ps zmm7,zmm11,zmm2
  a6eec3:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  a6eec9:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x80]
  a6eed0:	02 
  a6eed1:	62 f2 75 48 7f d6    	vpermt2ps zmm2,zmm1,zmm6
  a6eed7:	62 62 3d 48 7f ee    	vpermt2ps zmm29,zmm8,zmm6
  a6eedd:	62 91 7c 48 28 f0    	vmovaps zmm6,zmm24
  a6eee3:	62 d2 75 48 7f f7    	vpermt2ps zmm6,zmm1,zmm15
  a6eee9:	62 42 3d 48 7f c7    	vpermt2ps zmm24,zmm8,zmm15
  a6eeef:	62 71 95 48 14 d4    	vunpcklpd zmm10,zmm13,zmm4
  a6eef5:	62 71 95 48 15 fc    	vunpckhpd zmm15,zmm13,zmm4
  a6eefb:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0xc0]
  a6ef02:	03 
  a6ef03:	62 31 7c 48 28 ea    	vmovaps zmm13,zmm18
  a6ef09:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x200]
  a6ef10:	08 
  a6ef11:	62 52 75 48 7f ec    	vpermt2ps zmm13,zmm1,zmm12
  a6ef17:	62 c2 3d 48 7f d4    	vpermt2ps zmm18,zmm8,zmm12
  a6ef1d:	62 11 7c 48 28 f2    	vmovaps zmm14,zmm26
  a6ef23:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x140]
  a6ef2a:	05 
  a6ef2b:	62 72 75 48 7f f4    	vpermt2ps zmm14,zmm1,zmm4
  a6ef31:	62 62 3d 48 7f d4    	vpermt2ps zmm26,zmm8,zmm4
  a6ef37:	62 81 7c 48 28 cf    	vmovaps zmm17,zmm31
  a6ef3d:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x180]
  a6ef44:	06 
  a6ef45:	62 e2 75 48 7f cc    	vpermt2ps zmm17,zmm1,zmm4
  a6ef4b:	62 62 3d 48 7f fc    	vpermt2ps zmm31,zmm8,zmm4
  a6ef51:	62 81 7c 48 28 ec    	vmovaps zmm21,zmm28
  a6ef57:	62 71 7c 48 28 25 9f 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff657e9f]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a6ef5e:	7e 65 ff 
  a6ef61:	62 e2 1d 48 7f e8    	vpermt2ps zmm21,zmm12,zmm0
  a6ef67:	62 f1 7c 48 28 25 cf 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff657ecf]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a6ef6e:	7e 65 ff 
  a6ef71:	62 62 5d 48 7f e0    	vpermt2ps zmm28,zmm4,zmm0
  a6ef77:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm28
  a6ef7e:	02 
  a6ef7f:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a6ef85:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x40]
  a6ef8c:	01 
  a6ef8d:	62 92 75 48 7f c4    	vpermt2ps zmm0,zmm1,zmm28
  a6ef93:	62 82 3d 48 7f dc    	vpermt2ps zmm19,zmm8,zmm28
  a6ef99:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a6ef9f:	62 52 25 48 7f c5    	vpermt2ps zmm8,zmm11,zmm13
  a6efa5:	62 d2 7d 40 7f ed    	vpermt2ps zmm5,zmm16,zmm13
  a6efab:	62 71 a5 40 14 ef    	vunpcklpd zmm13,zmm27,zmm7
  a6efb1:	62 f1 a5 40 15 ff    	vunpckhpd zmm7,zmm27,zmm7
  a6efb7:	62 61 7c 48 28 e3    	vmovaps zmm28,zmm3
  a6efbd:	62 42 25 48 7f e6    	vpermt2ps zmm28,zmm11,zmm14
  a6efc3:	62 d2 7d 40 7f de    	vpermt2ps zmm3,zmm16,zmm14
  a6efc9:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a6efcf:	62 32 25 48 7f f1    	vpermt2ps zmm14,zmm11,zmm17
  a6efd5:	62 b2 7d 40 7f d1    	vpermt2ps zmm2,zmm16,zmm17
  a6efdb:	62 61 7c 48 28 f6    	vmovaps zmm30,zmm6
  a6efe1:	62 62 25 48 7f f0    	vpermt2ps zmm30,zmm11,zmm0
  a6efe7:	62 f2 7d 40 7f f0    	vpermt2ps zmm6,zmm16,zmm0
  a6efed:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x240]
  a6eff4:	09 
  a6eff5:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a6effb:	62 d2 1d 48 7f c2    	vpermt2ps zmm0,zmm12,zmm10
  a6f001:	62 d2 5d 48 7f ca    	vpermt2ps zmm1,zmm4,zmm10
  a6f007:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a6f00d:	62 32 25 48 7f ca    	vpermt2ps zmm9,zmm11,zmm18
  a6f013:	62 31 7c 48 28 d4    	vmovaps zmm10,zmm20
  a6f019:	62 02 25 48 7f ca    	vpermt2ps zmm25,zmm11,zmm26
  a6f01f:	62 a1 7c 48 28 c6    	vmovaps zmm16,zmm22
  a6f025:	62 02 25 48 7f ef    	vpermt2ps zmm29,zmm11,zmm31
  a6f02b:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a6f031:	62 d2 1d 48 7f cf    	vpermt2ps zmm1,zmm12,zmm15
  a6f037:	62 c2 5d 48 7f ff    	vpermt2ps zmm23,zmm4,zmm15
  a6f03d:	62 01 b5 48 14 dd    	vunpcklpd zmm27,zmm9,zmm29
  a6f043:	62 22 25 48 7f c3    	vpermt2ps zmm24,zmm11,zmm19
  a6f049:	62 11 b5 40 14 c8    	vunpcklpd zmm9,zmm25,zmm24
  a6f04f:	62 52 1d 48 7f d5    	vpermt2ps zmm10,zmm12,zmm13
  a6f055:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm10
  a6f05c:	03 
  a6f05d:	62 41 bd 48 14 ce    	vunpcklpd zmm25,zmm8,zmm14
  a6f063:	62 41 bd 48 15 d6    	vunpckhpd zmm26,zmm8,zmm14
  a6f069:	62 11 9d 40 14 c6    	vunpcklpd zmm8,zmm28,zmm30
  a6f06f:	62 c2 5d 48 7f e5    	vpermt2ps zmm20,zmm4,zmm13
  a6f075:	62 11 9d 40 15 de    	vunpckhpd zmm11,zmm28,zmm30
  a6f07b:	62 61 d5 48 14 c2    	vunpcklpd zmm24,zmm5,zmm2
  a6f081:	62 71 d5 48 15 d2    	vunpckhpd zmm10,zmm5,zmm2
  a6f087:	62 e2 1d 48 7f c7    	vpermt2ps zmm16,zmm12,zmm7
  a6f08d:	62 f1 e5 48 14 d6    	vunpcklpd zmm2,zmm3,zmm6
  a6f093:	62 f1 e5 48 15 de    	vunpckhpd zmm3,zmm3,zmm6
  a6f099:	62 81 7c 48 28 d9    	vmovaps zmm19,zmm25
  a6f09f:	62 e2 5d 48 7f f7    	vpermt2ps zmm22,zmm4,zmm7
  a6f0a5:	62 11 7c 48 28 fa    	vmovaps zmm15,zmm26
  a6f0ab:	62 91 7c 48 28 f0    	vmovaps zmm6,zmm24
  a6f0b1:	62 f2 1d 48 7f f2    	vpermt2ps zmm6,zmm12,zmm2
  a6f0b7:	62 c2 1d 48 7f d8    	vpermt2ps zmm19,zmm12,zmm8
  a6f0bd:	62 62 5d 48 7f c2    	vpermt2ps zmm24,zmm4,zmm2
  a6f0c3:	62 d1 7c 48 28 d2    	vmovaps zmm2,zmm10
  a6f0c9:	62 f2 1d 48 7f d3    	vpermt2ps zmm2,zmm12,zmm3
  a6f0cf:	62 42 5d 48 7f c8    	vpermt2ps zmm25,zmm4,zmm8
  a6f0d5:	62 72 5d 48 7f d3    	vpermt2ps zmm10,zmm4,zmm3
  a6f0db:	62 91 7c 48 28 fb    	vmovaps zmm7,zmm27
  a6f0e1:	62 d2 1d 48 7f f9    	vpermt2ps zmm7,zmm12,zmm9
  a6f0e7:	62 52 1d 48 7f fb    	vpermt2ps zmm15,zmm12,zmm11
  a6f0ed:	62 42 5d 48 7f d9    	vpermt2ps zmm27,zmm4,zmm9
  a6f0f3:	62 61 7c 48 10 61 02 	vmovups zmm28,ZMMWORD PTR [rcx+0x80]
  a6f0fa:	62 71 7c 48 10 49 04 	vmovups zmm9,ZMMWORD PTR [rcx+0x100]
  a6f101:	62 42 5d 48 7f d3    	vpermt2ps zmm26,zmm4,zmm11
  a6f107:	62 f1 7c 48 10 69 05 	vmovups zmm5,ZMMWORD PTR [rcx+0x140]
  a6f10e:	62 71 7c 48 10 59 09 	vmovups zmm11,ZMMWORD PTR [rcx+0x240]
  a6f115:	62 71 7c 48 10 41 08 	vmovups zmm8,ZMMWORD PTR [rcx+0x200]
  a6f11c:	62 41 7c 48 59 e8    	vmulps zmm29,zmm0,zmm8
  a6f122:	62 42 4d 48 bc eb    	vfnmadd231ps zmm29,zmm6,zmm11
  a6f128:	62 51 4c 48 59 c0    	vmulps zmm8,zmm6,zmm8
  a6f12e:	62 f1 7c 48 10 71 0d 	vmovups zmm6,ZMMWORD PTR [rcx+0x340]
  a6f135:	62 72 25 48 b8 c0    	vfmadd231ps zmm8,zmm11,zmm0
  a6f13b:	62 f1 7c 48 10 41 0c 	vmovups zmm0,ZMMWORD PTR [rcx+0x300]
  a6f142:	62 71 74 48 59 e0    	vmulps zmm12,zmm1,zmm0
  a6f148:	62 71 6c 48 59 d8    	vmulps zmm11,zmm2,zmm0
  a6f14e:	62 72 6d 48 bc e6    	vfnmadd231ps zmm12,zmm2,zmm6
  a6f154:	62 f1 7c 48 10 41 11 	vmovups zmm0,ZMMWORD PTR [rcx+0x440]
  a6f15b:	62 72 4d 48 b8 d9    	vfmadd231ps zmm11,zmm6,zmm1
  a6f161:	62 f1 7c 48 10 49 10 	vmovups zmm1,ZMMWORD PTR [rcx+0x400]
  a6f168:	62 71 54 40 59 e9    	vmulps zmm13,zmm21,zmm1
  a6f16e:	62 72 45 48 bc e8    	vfnmadd231ps zmm13,zmm7,zmm0
  a6f174:	62 61 44 48 59 f1    	vmulps zmm30,zmm7,zmm1
  a6f17a:	62 51 7c 40 59 f1    	vmulps zmm14,zmm16,zmm9
  a6f180:	62 d1 04 48 59 e1    	vmulps zmm4,zmm15,zmm9
  a6f186:	62 22 7d 48 b8 f5    	vfmadd231ps zmm30,zmm0,zmm21
  a6f18c:	62 f1 7c 48 10 41 0f 	vmovups zmm0,ZMMWORD PTR [rcx+0x3c0]
  a6f193:	62 f1 7c 48 10 49 0e 	vmovups zmm1,ZMMWORD PTR [rcx+0x380]
  a6f19a:	62 72 05 48 bc f5    	vfnmadd231ps zmm14,zmm15,zmm5
  a6f1a0:	62 61 2c 48 59 f9    	vmulps zmm31,zmm10,zmm1
  a6f1a6:	62 62 45 40 b8 f8    	vfmadd231ps zmm31,zmm23,zmm0
  a6f1ac:	62 f1 44 40 59 f1    	vmulps zmm6,zmm23,zmm1
  a6f1b2:	62 f1 7c 48 10 49 03 	vmovups zmm1,ZMMWORD PTR [rcx+0xc0]
  a6f1b9:	62 d2 7d 48 bc f2    	vfnmadd231ps zmm6,zmm0,zmm10
  a6f1bf:	62 f1 7c 48 10 51 13 	vmovups zmm2,ZMMWORD PTR [rcx+0x4c0]
  a6f1c6:	62 f1 7c 48 10 79 07 	vmovups zmm7,ZMMWORD PTR [rcx+0x1c0]
  a6f1cd:	62 b2 55 48 b8 e0    	vfmadd231ps zmm4,zmm5,zmm16
  a6f1d3:	62 f1 7c 48 10 69 06 	vmovups zmm5,ZMMWORD PTR [rcx+0x180]
  a6f1da:	62 f1 2c 40 59 c5    	vmulps zmm0,zmm26,zmm5
  a6f1e0:	62 e1 4c 40 59 fd    	vmulps zmm23,zmm22,zmm5
  a6f1e6:	62 f2 4d 40 b8 c7    	vfmadd231ps zmm0,zmm22,zmm7
  a6f1ec:	62 f1 7c 48 10 69 12 	vmovups zmm5,ZMMWORD PTR [rcx+0x480]
  a6f1f3:	62 82 45 48 bc fa    	vfnmadd231ps zmm23,zmm7,zmm26
  a6f1f9:	62 e1 24 40 59 f5    	vmulps zmm22,zmm27,zmm5
  a6f1ff:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x80]
  a6f206:	02 
  a6f207:	62 e2 65 48 b8 f2    	vfmadd231ps zmm22,zmm3,zmm2
  a6f20d:	62 01 34 40 59 d4    	vmulps zmm26,zmm25,zmm28
  a6f213:	62 62 5d 40 b8 d1    	vfmadd231ps zmm26,zmm20,zmm1
  a6f219:	62 e1 64 48 59 ed    	vmulps zmm21,zmm3,zmm5
  a6f21f:	62 d1 14 40 5c fc    	vsubps zmm7,zmm29,zmm12
  a6f225:	62 82 6d 48 bc eb    	vfnmadd231ps zmm21,zmm2,zmm27
  a6f22b:	62 f1 7c 48 10 51 0b 	vmovups zmm2,ZMMWORD PTR [rcx+0x2c0]
  a6f232:	62 01 5c 40 59 dc    	vmulps zmm27,zmm20,zmm28
  a6f238:	62 51 3c 48 58 cb    	vaddps zmm9,zmm8,zmm11
  a6f23e:	62 f1 7c 48 10 69 0a 	vmovups zmm5,ZMMWORD PTR [rcx+0x280]
  a6f245:	62 02 75 48 bc d9    	vfnmadd231ps zmm27,zmm1,zmm25
  a6f24b:	62 71 3c 40 59 d5    	vmulps zmm10,zmm24,zmm5
  a6f251:	62 41 0c 48 5c cd    	vsubps zmm25,zmm14,zmm13
  a6f257:	62 72 75 40 b8 d2    	vfmadd231ps zmm10,zmm17,zmm2
  a6f25d:	62 e1 74 40 59 d5    	vmulps zmm18,zmm17,zmm5
  a6f263:	62 82 6d 48 bc d0    	vfnmadd231ps zmm18,zmm2,zmm24
  a6f269:	62 11 5c 48 58 fe    	vaddps zmm15,zmm4,zmm30
  a6f26f:	62 f2 7d 48 18 1d 6f 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff60646f]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a6f276:	64 60 ff 
  a6f279:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a6f27f:	62 81 4c 40 58 e2    	vaddps zmm20,zmm22,zmm26
  a6f285:	62 c1 14 40 58 cc    	vaddps zmm17,zmm29,zmm12
  a6f28b:	62 62 7d 48 18 2d c3 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff6064c3]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a6f292:	64 60 ff 
  a6f295:	62 81 44 48 59 c5    	vmulps zmm16,zmm7,zmm29
  a6f29b:	62 d1 0c 48 58 ed    	vaddps zmm5,zmm14,zmm13
  a6f2a1:	62 71 04 40 58 e0    	vaddps zmm12,zmm31,zmm0
  a6f2a7:	62 11 5c 48 5c ee    	vsubps zmm13,zmm4,zmm30
  a6f2ad:	62 b2 05 48 a8 cb    	vfmadd213ps zmm1,zmm15,zmm19
  a6f2b3:	62 31 4c 48 5c f7    	vsubps zmm14,zmm6,zmm23
  a6f2b9:	62 41 3c 48 5c c3    	vsubps zmm24,zmm8,zmm11
  a6f2bf:	62 01 54 40 5c e3    	vsubps zmm28,zmm21,zmm27
  a6f2c5:	62 62 7d 48 18 35 d1 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff6060d1]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a6f2cc:	60 60 ff 
  a6f2cf:	62 82 35 40 b8 c6    	vfmadd231ps zmm16,zmm25,zmm30
  a6f2d5:	62 91 54 40 58 e3    	vaddps zmm4,zmm21,zmm27
  a6f2db:	62 91 1c 40 59 d5    	vmulps zmm2,zmm28,zmm29
  a6f2e1:	62 31 4c 48 58 df    	vaddps zmm11,zmm6,zmm23
  a6f2e7:	62 62 7d 48 18 1d 53 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff606353]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a6f2ee:	63 60 ff 
  a6f2f1:	62 92 35 48 bc cb    	vfnmadd231ps zmm1,zmm9,zmm27
  a6f2f7:	62 11 3c 40 59 c5    	vmulps zmm8,zmm24,zmm29
  a6f2fd:	62 12 15 48 b8 c6    	vfmadd231ps zmm8,zmm13,zmm30
  a6f303:	62 f1 04 40 5c f0    	vsubps zmm6,zmm31,zmm0
  a6f309:	62 92 0d 48 b8 d6    	vfmadd231ps zmm2,zmm14,zmm30
  a6f30f:	62 81 4c 40 5c ea    	vsubps zmm21,zmm22,zmm26
  a6f315:	62 91 54 40 59 c5    	vmulps zmm0,zmm21,zmm29
  a6f31b:	62 81 34 40 59 f5    	vmulps zmm22,zmm25,zmm29
  a6f321:	62 92 4d 48 b8 c6    	vfmadd231ps zmm0,zmm6,zmm30
  a6f327:	62 e2 0d 40 bc f7    	vfnmadd231ps zmm22,zmm30,zmm7
  a6f32d:	62 91 7c 48 28 fb    	vmovaps zmm7,zmm27
  a6f333:	62 b2 05 48 ac fb    	vfnmadd213ps zmm7,zmm15,zmm19
  a6f339:	62 f2 35 48 b8 fb    	vfmadd231ps zmm7,zmm9,zmm3
  a6f33f:	62 81 7c 48 28 fb    	vmovaps zmm23,zmm27
  a6f345:	62 c2 1d 48 ac fa    	vfnmadd213ps zmm23,zmm12,zmm10
  a6f34b:	62 11 0c 48 59 f5    	vmulps zmm14,zmm14,zmm29
  a6f351:	62 e2 5d 40 b8 fb    	vfmadd231ps zmm23,zmm20,zmm3
  a6f357:	62 12 0d 40 bc f4    	vfnmadd231ps zmm14,zmm30,zmm28
  a6f35d:	62 01 7c 48 28 cb    	vmovaps zmm25,zmm27
  a6f363:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0xc0]
  a6f36a:	03 
  a6f36b:	62 02 55 48 ac ca    	vfnmadd213ps zmm25,zmm5,zmm26
  a6f371:	62 62 75 40 b8 cb    	vfmadd231ps zmm25,zmm17,zmm3
  a6f377:	62 11 14 48 59 ed    	vmulps zmm13,zmm13,zmm29
  a6f37d:	62 12 0d 40 bc e8    	vfnmadd231ps zmm13,zmm30,zmm24
  a6f383:	62 91 4c 48 59 f5    	vmulps zmm6,zmm6,zmm29
  a6f389:	62 61 4c 40 58 c7    	vaddps zmm24,zmm22,zmm7
  a6f38f:	62 b2 0d 40 bc f5    	vfnmadd231ps zmm6,zmm30,zmm21
  a6f395:	62 81 7c 48 28 eb    	vmovaps zmm21,zmm27
  a6f39b:	62 b1 44 48 5c fe    	vsubps zmm7,zmm7,zmm22
  a6f3a1:	62 c1 44 40 58 f6    	vaddps zmm22,zmm23,zmm14
  a6f3a7:	62 a2 25 48 ac ea    	vfnmadd213ps zmm21,zmm11,zmm18
  a6f3ad:	62 e2 5d 48 b8 eb    	vfmadd231ps zmm21,zmm4,zmm3
  a6f3b3:	62 51 44 40 5c f6    	vsubps zmm14,zmm23,zmm14
  a6f3b9:	62 c1 34 40 5c fd    	vsubps zmm23,zmm25,zmm13
  a6f3bf:	62 51 34 40 58 ed    	vaddps zmm13,zmm25,zmm13
  a6f3c5:	62 61 54 40 5c ce    	vsubps zmm25,zmm21,zmm6
  a6f3cb:	62 f1 54 40 58 f6    	vaddps zmm6,zmm21,zmm6
  a6f3d1:	62 e1 7c 40 58 e9    	vaddps zmm21,zmm16,zmm1
  a6f3d7:	62 a1 74 48 5c c0    	vsubps zmm16,zmm1,zmm16
  a6f3dd:	62 b1 04 48 58 cb    	vaddps zmm1,zmm15,zmm19
  a6f3e3:	62 71 7c 48 28 fb    	vmovaps zmm15,zmm3
  a6f3e9:	62 52 1d 48 a8 fa    	vfmadd213ps zmm15,zmm12,zmm10
  a6f3ef:	62 12 5d 40 bc fb    	vfnmadd231ps zmm15,zmm20,zmm27
  a6f3f5:	62 71 34 48 58 c9    	vaddps zmm9,zmm9,zmm1
  a6f3fb:	62 f1 04 48 58 ca    	vaddps zmm1,zmm15,zmm2
  a6f401:	62 71 04 48 5c fa    	vsubps zmm15,zmm15,zmm2
  a6f407:	62 d1 2c 48 58 d4    	vaddps zmm2,zmm10,zmm12
  a6f40d:	62 31 6c 48 58 d4    	vaddps zmm10,zmm2,zmm20
  a6f413:	62 f1 7c 48 28 d3    	vmovaps zmm2,zmm3
  a6f419:	62 92 55 48 a8 d2    	vfmadd213ps zmm2,zmm5,zmm26
  a6f41f:	62 f1 2c 40 58 ed    	vaddps zmm5,zmm26,zmm5
  a6f425:	62 92 75 40 bc d3    	vfnmadd231ps zmm2,zmm17,zmm27
  a6f42b:	62 b1 54 48 58 e9    	vaddps zmm5,zmm5,zmm17
  a6f431:	62 b2 25 48 a8 da    	vfmadd213ps zmm3,zmm11,zmm18
  a6f437:	62 51 6c 40 58 db    	vaddps zmm11,zmm18,zmm11
  a6f43d:	62 51 6c 48 5c e0    	vsubps zmm12,zmm2,zmm8
  a6f443:	62 51 6c 48 58 c0    	vaddps zmm8,zmm2,zmm8
  a6f449:	62 92 5d 48 bc db    	vfnmadd231ps zmm3,zmm4,zmm27
  a6f44f:	62 f1 24 48 58 e4    	vaddps zmm4,zmm11,zmm4
  a6f455:	62 f1 64 48 5c d0    	vsubps zmm2,zmm3,zmm0
  a6f45b:	62 71 64 48 58 d8    	vaddps zmm11,zmm3,zmm0
  a6f461:	62 f1 54 40 5c c1    	vsubps zmm0,zmm21,zmm1
  a6f467:	62 e1 54 40 58 c9    	vaddps zmm17,zmm21,zmm1
  a6f46d:	62 f1 1c 48 5c ca    	vsubps zmm1,zmm12,zmm2
  a6f473:	62 71 1c 48 58 e2    	vaddps zmm12,zmm12,zmm2
  a6f479:	62 b1 3c 40 58 d6    	vaddps zmm2,zmm24,zmm22
  a6f47f:	62 a1 3c 40 5c d6    	vsubps zmm18,zmm24,zmm22
  a6f485:	62 91 44 40 58 d9    	vaddps zmm3,zmm23,zmm25
  a6f48b:	62 81 44 40 5c d9    	vsubps zmm19,zmm23,zmm25
  a6f491:	62 c1 44 48 5c e6    	vsubps zmm20,zmm7,zmm14
  a6f497:	62 d1 44 48 58 fe    	vaddps zmm7,zmm7,zmm14
  a6f49d:	62 71 14 48 5c f6    	vsubps zmm14,zmm13,zmm6
  a6f4a3:	62 f1 14 48 58 f6    	vaddps zmm6,zmm13,zmm6
  a6f4a9:	62 51 34 48 5c ea    	vsubps zmm13,zmm9,zmm10
  a6f4af:	62 51 34 48 58 ca    	vaddps zmm9,zmm9,zmm10
  a6f4b5:	62 51 7c 40 58 d7    	vaddps zmm10,zmm16,zmm15
  a6f4bb:	62 51 7c 40 5c ff    	vsubps zmm15,zmm16,zmm15
  a6f4c1:	62 e1 54 48 5c c4    	vsubps zmm16,zmm5,zmm4
  a6f4c7:	62 f1 54 48 58 e4    	vaddps zmm4,zmm5,zmm4
  a6f4cd:	62 d1 7c 48 28 e9    	vmovaps zmm5,zmm9
  a6f4d3:	62 e1 7c 48 28 2d 23 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff625223]        # 94700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21bb0>
  a6f4da:	52 62 ff 
  a6f4dd:	62 f2 55 40 7f ec    	vpermt2ps zmm5,zmm21,zmm4
  a6f4e3:	62 e1 7c 48 28 35 53 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff625253]        # 94740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21bf0>
  a6f4ea:	52 62 ff 
  a6f4ed:	62 72 4d 40 7f cc    	vpermt2ps zmm9,zmm22,zmm4
  a6f4f3:	62 71 7c 48 11 0c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm9
  a6f4fa:	62 d1 3c 48 58 e3    	vaddps zmm4,zmm8,zmm11
  a6f500:	62 51 3c 48 5c c3    	vsubps zmm8,zmm8,zmm11
  a6f506:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm5
  a6f50d:	01 
  a6f50e:	62 d1 7c 48 28 ef    	vmovaps zmm5,zmm15
  a6f514:	62 52 4d 40 7f f8    	vpermt2ps zmm15,zmm22,zmm8
  a6f51a:	62 d2 55 40 7f e8    	vpermt2ps zmm5,zmm21,zmm8
  a6f520:	62 71 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm15
  a6f527:	02 
  a6f528:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm5
  a6f52f:	03 
  a6f530:	62 f1 7c 48 28 ef    	vmovaps zmm5,zmm7
  a6f536:	62 f2 55 40 7f ee    	vpermt2ps zmm5,zmm21,zmm6
  a6f53c:	62 f2 4d 40 7f fe    	vpermt2ps zmm7,zmm22,zmm6
  a6f542:	62 f1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm7
  a6f549:	04 
  a6f54a:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm5
  a6f551:	05 
  a6f552:	62 b1 7c 48 28 ea    	vmovaps zmm5,zmm18
  a6f558:	62 b2 55 40 7f eb    	vpermt2ps zmm5,zmm21,zmm19
  a6f55e:	62 a2 4d 40 7f d3    	vpermt2ps zmm18,zmm22,zmm19
  a6f564:	62 e1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm18
  a6f56b:	06 
  a6f56c:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm5
  a6f573:	07 
  a6f574:	62 b1 7c 48 28 e9    	vmovaps zmm5,zmm17
  a6f57a:	62 d2 55 40 7f ec    	vpermt2ps zmm5,zmm21,zmm12
  a6f580:	62 c2 4d 40 7f cc    	vpermt2ps zmm17,zmm22,zmm12
  a6f586:	62 e1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm17
  a6f58d:	08 
  a6f58e:	62 d1 7c 48 28 f5    	vmovaps zmm6,zmm13
  a6f594:	62 b2 55 40 7f f0    	vpermt2ps zmm6,zmm21,zmm16
  a6f59a:	62 32 4d 40 7f e8    	vpermt2ps zmm13,zmm22,zmm16
  a6f5a0:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm5
  a6f5a7:	09 
  a6f5a8:	62 71 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm13
  a6f5af:	0a 
  a6f5b0:	62 f1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm6
  a6f5b7:	0b 
  a6f5b8:	62 d1 7c 48 28 ea    	vmovaps zmm5,zmm10
  a6f5be:	62 f2 55 40 7f ec    	vpermt2ps zmm5,zmm21,zmm4
  a6f5c4:	62 72 4d 40 7f d4    	vpermt2ps zmm10,zmm22,zmm4
  a6f5ca:	62 71 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x300],zmm10
  a6f5d1:	0c 
  a6f5d2:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x340],zmm5
  a6f5d9:	0d 
  a6f5da:	62 b1 7c 48 28 e4    	vmovaps zmm4,zmm20
  a6f5e0:	62 d2 55 40 7f e6    	vpermt2ps zmm4,zmm21,zmm14
  a6f5e6:	62 c2 4d 40 7f e6    	vpermt2ps zmm20,zmm22,zmm14
  a6f5ec:	62 e1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x380],zmm20
  a6f5f3:	0e 
  a6f5f4:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3c0],zmm4
  a6f5fb:	0f 
  a6f5fc:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a6f602:	62 f2 55 40 7f e3    	vpermt2ps zmm4,zmm21,zmm3
  a6f608:	62 f2 4d 40 7f d3    	vpermt2ps zmm2,zmm22,zmm3
  a6f60e:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x400],zmm2
  a6f615:	10 
  a6f616:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a6f61c:	62 f2 55 40 7f d1    	vpermt2ps zmm2,zmm21,zmm1
  a6f622:	62 f2 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm1
  a6f628:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x440],zmm4
  a6f62f:	11 
  a6f630:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x480],zmm0
  a6f637:	12 
  a6f638:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4c0],zmm2
  a6f63f:	13 
  a6f640:	48 81 c2 00 05 00 00 	add    rdx,0x500
  a6f647:	48 39 d0             	cmp    rax,rdx
  a6f64a:	0f 85 20 ef ff ff    	jne    a6e570 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a6f650:	48 89 ec             	mov    rsp,rbp
  a6f653:	5d                   	pop    rbp
  a6f654:	c5 f8 77             	vzeroupper
  a6f657:	c3                   	ret
