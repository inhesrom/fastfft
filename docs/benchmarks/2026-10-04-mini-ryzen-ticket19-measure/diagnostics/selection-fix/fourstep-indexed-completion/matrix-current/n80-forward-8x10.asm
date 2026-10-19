
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b193c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b193c0:	55                   	push   rbp
  b193c1:	48 89 e5             	mov    rbp,rsp
  b193c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  b193c8:	48 81 ec 40 02 00 00 	sub    rsp,0x240
  b193cf:	c6 84 24 c0 01 00 00 	mov    BYTE PTR [rsp+0x1c0],0x0
  b193d6:	00 
  b193d7:	48 8d 84 24 c0 01 00 	lea    rax,[rsp+0x1c0]
  b193de:	00 
  b193df:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  b193e4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  b193e9:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  b193ed:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  b193f2:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  b193f7:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  b193fd:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b19402:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b19408:	c5 fc 10 4f 50       	vmovups ymm1,YMMWORD PTR [rdi+0x50]
  b1940d:	c5 fc 10 5f 70       	vmovups ymm3,YMMWORD PTR [rdi+0x70]
  b19412:	c5 f4 c6 e3 88       	vshufps ymm4,ymm1,ymm3,0x88
  b19417:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b1941d:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  b19422:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  b19428:	c5 fc 10 9f a0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xa0]
  b1942f:	00 
  b19430:	c5 fc 10 af c0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xc0]
  b19437:	00 
  b19438:	c5 e4 c6 f5 88       	vshufps ymm6,ymm3,ymm5,0x88
  b1943d:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  b19443:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  b19448:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  b1944e:	c5 fc 10 af f0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xf0]
  b19455:	00 
  b19456:	c5 fc 10 bf 10 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x110]
  b1945d:	00 
  b1945e:	c5 54 c6 c7 88       	vshufps ymm8,ymm5,ymm7,0x88
  b19463:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b19469:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b1946e:	c4 63 fd 01 cd d8    	vpermpd ymm9,ymm5,0xd8
  b19474:	c5 fc 10 af 40 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x140]
  b1947b:	00 
  b1947c:	c5 fc 10 bf 60 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x160]
  b19483:	00 
  b19484:	c5 54 c6 d7 88       	vshufps ymm10,ymm5,ymm7,0x88
  b19489:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  b1948f:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b19494:	c4 63 fd 01 dd d8    	vpermpd ymm11,ymm5,0xd8
  b1949a:	c5 fc 10 af 90 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x190]
  b194a1:	00 
  b194a2:	c5 fc 10 bf b0 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x1b0]
  b194a9:	00 
  b194aa:	c5 54 c6 e7 88       	vshufps ymm12,ymm5,ymm7,0x88
  b194af:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b194b5:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b194ba:	c4 e3 fd 01 fd d8    	vpermpd ymm7,ymm5,0xd8
  b194c0:	c5 fc 10 af e0 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x1e0]
  b194c7:	00 
  b194c8:	c5 7c 10 af 00 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x200]
  b194cf:	00 
  b194d0:	c4 41 54 c6 f5 88    	vshufps ymm14,ymm5,ymm13,0x88
  b194d6:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  b194dc:	c4 c1 54 c6 ed dd    	vshufps ymm5,ymm5,ymm13,0xdd
  b194e2:	c4 63 fd 01 ed d8    	vpermpd ymm13,ymm5,0xd8
  b194e8:	c5 fc 10 af 30 02 00 	vmovups ymm5,YMMWORD PTR [rdi+0x230]
  b194ef:	00 
  b194f0:	c5 7c 10 bf 50 02 00 	vmovups ymm15,YMMWORD PTR [rdi+0x250]
  b194f7:	00 
  b194f8:	62 c1 54 28 c6 c7 88 	vshufps ymm16,ymm5,ymm15,0x88
  b194ff:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b19506:	c4 c1 54 c6 ef dd    	vshufps ymm5,ymm5,ymm15,0xdd
  b1950c:	c4 63 fd 01 fd d8    	vpermpd ymm15,ymm5,0xd8
  b19512:	62 c1 6c 28 58 ca    	vaddps ymm17,ymm2,ymm10
  b19518:	62 c1 4c 28 58 d6    	vaddps ymm18,ymm6,ymm14
  b1951e:	62 a1 74 20 58 da    	vaddps ymm19,ymm17,ymm18
  b19524:	62 c1 5c 28 58 e4    	vaddps ymm20,ymm4,ymm12
  b1952a:	62 a1 3c 28 58 e8    	vaddps ymm21,ymm8,ymm16
  b19530:	62 a1 5c 20 58 f5    	vaddps ymm22,ymm20,ymm21
  b19536:	62 a1 64 20 58 fe    	vaddps ymm23,ymm19,ymm22
  b1953c:	62 41 7c 28 58 c3    	vaddps ymm24,ymm0,ymm11
  b19542:	62 41 64 28 58 cd    	vaddps ymm25,ymm3,ymm13
  b19548:	62 01 3c 20 58 d1    	vaddps ymm26,ymm24,ymm25
  b1954e:	62 61 74 28 58 df    	vaddps ymm27,ymm1,ymm7
  b19554:	62 41 34 28 58 e7    	vaddps ymm28,ymm9,ymm15
  b1955a:	62 01 24 20 58 ec    	vaddps ymm29,ymm27,ymm28
  b19560:	62 91 2c 20 58 ed    	vaddps ymm5,ymm26,ymm29
  b19566:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  b1956b:	c4 c1 64 5c dd       	vsubps ymm3,ymm3,ymm13
  b19570:	c5 6c 58 d3          	vaddps ymm10,ymm2,ymm3
  b19574:	c4 c1 5c 5c e4       	vsubps ymm4,ymm4,ymm12
  b19579:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  b1957d:	c5 5c 58 e1          	vaddps ymm12,ymm4,ymm1
  b19581:	c4 e2 7d 18 3d 12 be 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff55be12]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b19588:	55 ff 
  b1958a:	c5 1c 59 e7          	vmulps ymm12,ymm12,ymm7
  b1958e:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  b19593:	62 31 3c 28 5c c0    	vsubps ymm8,ymm8,ymm16
  b19599:	c4 41 34 5c e8       	vsubps ymm13,ymm9,ymm8
  b1959e:	c5 14 59 ef          	vmulps ymm13,ymm13,ymm7
  b195a2:	c4 41 1c 58 fd       	vaddps ymm15,ymm12,ymm13
  b195a7:	62 c1 2c 28 58 c7    	vaddps ymm16,ymm10,ymm15
  b195ad:	c4 c1 7c 5c c3       	vsubps ymm0,ymm0,ymm11
  b195b2:	c5 8c 5c f6          	vsubps ymm6,ymm14,ymm6
  b195b6:	c5 4c 58 d8          	vaddps ymm11,ymm6,ymm0
  b195ba:	c5 f4 5c cc          	vsubps ymm1,ymm1,ymm4
  b195be:	c5 f4 59 cf          	vmulps ymm1,ymm1,ymm7
  b195c2:	c4 c1 3c 58 e1       	vaddps ymm4,ymm8,ymm9
  b195c7:	c5 dc 59 e7          	vmulps ymm4,ymm4,ymm7
  b195cb:	c5 74 5c c4          	vsubps ymm8,ymm1,ymm4
  b195cf:	c4 41 24 58 f0       	vaddps ymm14,ymm11,ymm8
  b195d4:	62 31 74 20 5c ca    	vsubps ymm9,ymm17,ymm18
  b195da:	62 81 24 20 5c cc    	vsubps ymm17,ymm27,ymm28
  b195e0:	62 a1 34 28 58 d1    	vaddps ymm18,ymm9,ymm17
  b195e6:	62 01 3c 20 5c c1    	vsubps ymm24,ymm24,ymm25
  b195ec:	62 a1 54 20 5c e4    	vsubps ymm20,ymm21,ymm20
  b195f2:	62 81 5c 20 58 e8    	vaddps ymm21,ymm20,ymm24
  b195f8:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  b195fc:	c5 f4 58 cc          	vaddps ymm1,ymm1,ymm4
  b19600:	c5 ec 58 e1          	vaddps ymm4,ymm2,ymm1
  b19604:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  b19608:	c4 c1 14 5c dc       	vsubps ymm3,ymm13,ymm12
  b1960d:	c5 7c 58 eb          	vaddps ymm13,ymm0,ymm3
  b19611:	62 b1 64 20 5c f6    	vsubps ymm6,ymm19,ymm22
  b19617:	62 81 2c 20 5c dd    	vsubps ymm19,ymm26,ymm29
  b1961d:	c4 41 2c 5c d7       	vsubps ymm10,ymm10,ymm15
  b19622:	c4 41 24 5c c0       	vsubps ymm8,ymm11,ymm8
  b19627:	62 31 34 28 5c c9    	vsubps ymm9,ymm9,ymm17
  b1962d:	62 31 3c 20 5c fc    	vsubps ymm15,ymm24,ymm20
  b19633:	c5 6c 5c d9          	vsubps ymm11,ymm2,ymm1
  b19637:	62 e1 7c 28 5c cb    	vsubps ymm17,ymm0,ymm3
  b1963d:	62 f3 45 20 18 c6 01 	vinsertf32x4 ymm0,ymm23,xmm6,0x1
  b19644:	c5 fc 29 84 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm0
  b1964b:	00 00 
  b1964d:	62 f3 c5 20 23 f6 03 	vshuff64x2 ymm6,ymm23,ymm6,0x3
  b19654:	62 d3 7d 20 18 ca 01 	vinsertf32x4 ymm1,ymm16,xmm10,0x1
  b1965b:	c5 fc 29 8c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm1
  b19662:	00 00 
  b19664:	62 53 fd 20 23 d2 03 	vshuff64x2 ymm10,ymm16,ymm10,0x3
  b1966b:	62 d3 6d 20 18 d1 01 	vinsertf32x4 ymm2,ymm18,xmm9,0x1
  b19672:	c5 fc 29 94 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm2
  b19679:	00 00 
  b1967b:	62 53 ed 20 23 c9 03 	vshuff64x2 ymm9,ymm18,ymm9,0x3
  b19682:	c4 c3 5d 18 db 01    	vinsertf128 ymm3,ymm4,xmm11,0x1
  b19688:	c5 fc 29 9c 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm3
  b1968f:	00 00 
  b19691:	c4 c3 5d 06 e3 31    	vperm2f128 ymm4,ymm4,ymm11,0x31
  b19697:	c4 41 4d 14 d9       	vunpcklpd ymm11,ymm6,ymm9
  b1969c:	c4 c1 4d 15 f1       	vunpckhpd ymm6,ymm6,ymm9
  b196a1:	c5 2d 14 e4          	vunpcklpd ymm12,ymm10,ymm4
  b196a5:	c5 ad 15 e4          	vunpckhpd ymm4,ymm10,ymm4
  b196a9:	c4 c1 24 c6 fc 88    	vshufps ymm7,ymm11,ymm12,0x88
  b196af:	c5 fc 29 bc 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm7
  b196b6:	00 00 
  b196b8:	c4 c1 24 c6 fc dd    	vshufps ymm7,ymm11,ymm12,0xdd
  b196be:	c5 fc 29 bc 24 60 01 	vmovaps YMMWORD PTR [rsp+0x160],ymm7
  b196c5:	00 00 
  b196c7:	c5 cc c6 fc 88       	vshufps ymm7,ymm6,ymm4,0x88
  b196cc:	c5 fc 29 bc 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm7
  b196d3:	00 00 
  b196d5:	c5 cc c6 e4 dd       	vshufps ymm4,ymm6,ymm4,0xdd
  b196da:	c5 fc 29 a4 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm4
  b196e1:	00 00 
  b196e3:	62 b3 55 28 18 e3 01 	vinsertf32x4 ymm4,ymm5,xmm19,0x1
  b196ea:	c5 fc 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm4
  b196f0:	62 a3 d5 28 23 c3 03 	vshuff64x2 ymm16,ymm5,ymm19,0x3
  b196f7:	c4 c3 0d 18 e8 01    	vinsertf128 ymm5,ymm14,xmm8,0x1
  b196fd:	c5 fc 29 ac 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm5
  b19704:	00 00 
  b19706:	c4 43 0d 06 f0 31    	vperm2f128 ymm14,ymm14,ymm8,0x31
  b1970c:	62 d3 55 20 18 f7 01 	vinsertf32x4 ymm6,ymm21,xmm15,0x1
  b19713:	c5 fc 29 b4 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm6
  b1971a:	00 00 
  b1971c:	62 53 d5 20 23 ff 03 	vshuff64x2 ymm15,ymm21,ymm15,0x3
  b19723:	62 b3 15 28 18 f9 01 	vinsertf32x4 ymm7,ymm13,xmm17,0x1
  b1972a:	c5 fc 29 7c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm7
  b19730:	62 33 95 28 23 e9 03 	vshuff64x2 ymm13,ymm13,ymm17,0x3
  b19737:	62 c1 fd 20 14 cf    	vunpcklpd ymm17,ymm16,ymm15
  b1973d:	62 c1 fd 20 15 c7    	vunpckhpd ymm16,ymm16,ymm15
  b19743:	c4 41 0d 14 fd       	vunpcklpd ymm15,ymm14,ymm13
  b19748:	62 c1 8d 28 15 d5    	vunpckhpd ymm18,ymm14,ymm13
  b1974e:	62 51 74 20 c6 ef 88 	vshufps ymm13,ymm17,ymm15,0x88
  b19755:	62 51 74 20 c6 f7 dd 	vshufps ymm14,ymm17,ymm15,0xdd
  b1975c:	62 31 7c 20 c6 fa 88 	vshufps ymm15,ymm16,ymm18,0x88
  b19763:	62 a1 7c 20 c6 c2 dd 	vshufps ymm16,ymm16,ymm18,0xdd
  b1976a:	62 e1 dd 28 15 d6    	vunpckhpd ymm18,ymm4,ymm6
  b19770:	62 e1 d5 28 15 df    	vunpckhpd ymm19,ymm5,ymm7
  b19776:	62 a1 6c 20 c6 cb dd 	vshufps ymm17,ymm18,ymm19,0xdd
  b1977d:	62 a1 6c 20 c6 d3 88 	vshufps ymm18,ymm18,ymm19,0x88
  b19784:	62 e1 fd 28 15 e2    	vunpckhpd ymm20,ymm0,ymm2
  b1978a:	62 e1 f5 28 15 eb    	vunpckhpd ymm21,ymm1,ymm3
  b19790:	62 a1 5c 20 c6 dd dd 	vshufps ymm19,ymm20,ymm21,0xdd
  b19797:	62 a1 5c 20 c6 e5 88 	vshufps ymm20,ymm20,ymm21,0x88
  b1979e:	62 e1 7c 08 10 6f 04 	vmovups xmm21,XMMWORD PTR [rdi+0x40]
  b197a5:	62 23 55 00 21 e5 9c 	vinsertps xmm28,xmm21,xmm21,0x9c
  b197ac:	62 01 3c 00 57 c0    	vxorps xmm24,xmm24,xmm24
  b197b2:	62 81 54 00 c6 e8 dd 	vshufps xmm21,xmm21,xmm24,0xdd
  b197b9:	62 e1 7c 08 10 77 09 	vmovups xmm22,XMMWORD PTR [rdi+0x90]
  b197c0:	62 23 4d 00 21 f6 9c 	vinsertps xmm30,xmm22,xmm22,0x9c
  b197c7:	62 01 4c 00 c6 f8 dd 	vshufps xmm31,xmm22,xmm24,0xdd
  b197ce:	62 e1 7c 08 10 7f 0e 	vmovups xmm23,XMMWORD PTR [rdi+0xe0]
  b197d5:	62 a3 45 00 21 f7 9c 	vinsertps xmm22,xmm23,xmm23,0x9c
  b197dc:	62 01 44 00 c6 c8 dd 	vshufps xmm25,xmm23,xmm24,0xdd
  b197e3:	62 e1 7c 08 10 7f 13 	vmovups xmm23,XMMWORD PTR [rdi+0x130]
  b197ea:	62 33 45 00 21 df 9c 	vinsertps xmm11,xmm23,xmm23,0x9c
  b197f1:	62 11 44 00 c6 d0 dd 	vshufps xmm10,xmm23,xmm24,0xdd
  b197f8:	62 e1 7c 08 10 7f 18 	vmovups xmm23,XMMWORD PTR [rdi+0x180]
  b197ff:	62 33 45 00 21 c7 9c 	vinsertps xmm8,xmm23,xmm23,0x9c
  b19806:	62 81 44 00 c6 f8 dd 	vshufps xmm23,xmm23,xmm24,0xdd
  b1980d:	62 61 7c 08 10 57 1d 	vmovups xmm26,XMMWORD PTR [rdi+0x1d0]
  b19814:	62 93 2d 00 21 fa 9c 	vinsertps xmm7,xmm26,xmm26,0x9c
  b1981b:	62 91 2c 00 c6 f0 dd 	vshufps xmm6,xmm26,xmm24,0xdd
  b19822:	62 61 7c 08 10 5f 22 	vmovups xmm27,XMMWORD PTR [rdi+0x220]
  b19829:	62 03 25 00 21 d3 9c 	vinsertps xmm26,xmm27,xmm27,0x9c
  b19830:	62 01 24 00 c6 d8 dd 	vshufps xmm27,xmm27,xmm24,0xdd
  b19837:	62 61 7c 08 10 6f 27 	vmovups xmm29,XMMWORD PTR [rdi+0x270]
  b1983e:	62 91 14 00 c6 e0 dd 	vshufps xmm4,xmm29,xmm24,0xdd
  b19845:	62 93 15 00 21 ed 9c 	vinsertps xmm5,xmm29,xmm29,0x9c
  b1984c:	62 41 1c 20 58 c0    	vaddps ymm24,ymm28,ymm8
  b19852:	62 91 4c 20 58 d2    	vaddps ymm2,ymm22,ymm26
  b19858:	62 f1 3c 20 58 ca    	vaddps ymm1,ymm24,ymm2
  b1985e:	62 61 0c 20 58 ef    	vaddps ymm29,ymm30,ymm7
  b19864:	c5 24 58 e5          	vaddps ymm12,ymm11,ymm5
  b19868:	62 d1 14 20 58 c4    	vaddps ymm0,ymm29,ymm12
  b1986e:	c5 f4 58 d8          	vaddps ymm3,ymm1,ymm0
  b19872:	c5 f0 5c c0          	vsubps xmm0,xmm1,xmm0
  b19876:	c4 e3 65 18 d8 01    	vinsertf128 ymm3,ymm3,xmm0,0x1
  b1987c:	62 f1 3c 20 5c ca    	vsubps ymm1,ymm24,ymm2
  b19882:	62 71 04 20 58 ce    	vaddps ymm9,ymm31,ymm6
  b19888:	c5 ac 58 d4          	vaddps ymm2,ymm10,ymm4
  b1988c:	62 61 34 28 5c c2    	vsubps ymm24,ymm9,ymm2
  b19892:	62 91 74 28 58 c0    	vaddps ymm0,ymm1,ymm24
  b19898:	62 91 74 08 5c c8    	vsubps xmm1,xmm1,xmm24
  b1989e:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  b198a4:	62 61 e5 28 14 c0    	vunpcklpd ymm24,ymm3,ymm0
  b198aa:	62 d1 1c 20 5c c0    	vsubps ymm0,ymm28,ymm8
  b198b0:	62 f1 0c 20 5c cf    	vsubps ymm1,ymm30,ymm7
  b198b6:	62 f1 04 20 5c de    	vsubps ymm3,ymm31,ymm6
  b198bc:	c5 ac 5c e4          	vsubps ymm4,ymm10,ymm4
  b198c0:	c5 a4 5c ed          	vsubps ymm5,ymm11,ymm5
  b198c4:	c5 f4 58 f3          	vaddps ymm6,ymm1,ymm3
  b198c8:	c4 62 7d 18 1d cb ba 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff55bacb]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b198cf:	55 ff 
  b198d1:	62 41 4c 28 59 e3    	vmulps ymm28,ymm6,ymm11
  b198d7:	c5 dc 5c f5          	vsubps ymm6,ymm4,ymm5
  b198db:	62 41 4c 28 59 f3    	vmulps ymm30,ymm6,ymm11
  b198e1:	62 91 34 20 5c f3    	vsubps ymm6,ymm25,ymm27
  b198e7:	c5 fc 58 fe          	vaddps ymm7,ymm0,ymm6
  b198eb:	62 11 1c 20 58 c6    	vaddps ymm8,ymm28,ymm30
  b198f1:	c5 3c 58 d7          	vaddps ymm10,ymm8,ymm7
  b198f5:	c4 c1 40 5c f8       	vsubps xmm7,xmm7,xmm8
  b198fa:	c4 e3 2d 18 ff 01    	vinsertf128 ymm7,ymm10,xmm7,0x1
  b19900:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  b19904:	c5 e4 5c c9          	vsubps ymm1,ymm3,ymm1
  b19908:	c5 d4 58 dc          	vaddps ymm3,ymm5,ymm4
  b1990c:	c5 a4 59 c9          	vmulps ymm1,ymm11,ymm1
  b19910:	c5 a4 59 db          	vmulps ymm3,ymm11,ymm3
  b19914:	c5 f4 58 e3          	vaddps ymm4,ymm1,ymm3
  b19918:	c5 fc 58 ec          	vaddps ymm5,ymm0,ymm4
  b1991c:	c5 f8 5c c4          	vsubps xmm0,xmm0,xmm4
  b19920:	c4 e3 55 18 c0 01    	vinsertf128 ymm0,ymm5,xmm0,0x1
  b19926:	c5 c5 14 c0          	vunpcklpd ymm0,ymm7,ymm0
  b1992a:	62 91 34 20 58 e3    	vaddps ymm4,ymm25,ymm27
  b19930:	c5 b4 58 d2          	vaddps ymm2,ymm9,ymm2
  b19934:	62 b1 54 20 58 ef    	vaddps ymm5,ymm21,ymm23
  b1993a:	c5 d4 58 f4          	vaddps ymm6,ymm5,ymm4
  b1993e:	c5 cc 58 fa          	vaddps ymm7,ymm6,ymm2
  b19942:	c5 c8 5c d2          	vsubps xmm2,xmm6,xmm2
  b19946:	c4 e3 45 18 d2 01    	vinsertf128 ymm2,ymm7,xmm2,0x1
  b1994c:	62 91 1c 28 5c f5    	vsubps ymm6,ymm12,ymm29
  b19952:	c5 d4 5c e4          	vsubps ymm4,ymm5,ymm4
  b19956:	c5 cc 58 ec          	vaddps ymm5,ymm6,ymm4
  b1995a:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  b1995e:	c4 e3 55 18 e4 01    	vinsertf128 ymm4,ymm5,xmm4,0x1
  b19964:	c5 ed 14 d4          	vunpcklpd ymm2,ymm2,ymm4
  b19968:	62 b1 2c 20 5c e6    	vsubps ymm4,ymm26,ymm22
  b1996e:	62 b1 54 20 5c ef    	vsubps ymm5,ymm21,ymm23
  b19974:	c5 dc 58 f5          	vaddps ymm6,ymm4,ymm5
  b19978:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  b1997c:	c5 cc 58 d9          	vaddps ymm3,ymm6,ymm1
  b19980:	c5 c8 5c c9          	vsubps xmm1,xmm6,xmm1
  b19984:	62 e3 7d 28 04 74 24 	vpermilps ymm22,YMMWORD PTR [rsp+0x180],0xd8
  b1998b:	0c d8 
  b1998d:	c4 e3 7d 04 bc 24 60 	vpermilps ymm7,YMMWORD PTR [rsp+0x160],0xd8
  b19994:	01 00 00 d8 
  b19998:	62 e3 7d 28 04 6c 24 	vpermilps ymm21,YMMWORD PTR [rsp+0x140],0xd8
  b1999f:	0a d8 
  b199a1:	c4 63 7d 04 a4 24 20 	vpermilps ymm12,YMMWORD PTR [rsp+0x120],0xd8
  b199a8:	01 00 00 d8 
  b199ac:	62 41 14 28 c6 ed d8 	vshufps ymm29,ymm13,ymm13,0xd8
  b199b3:	c4 41 0c c6 ce d8    	vshufps ymm9,ymm14,ymm14,0xd8
  b199b9:	62 c1 04 28 c6 ff d8 	vshufps ymm23,ymm15,ymm15,0xd8
  b199c0:	62 31 7c 20 c6 f0 d8 	vshufps ymm14,ymm16,ymm16,0xd8
  b199c7:	62 31 74 20 c6 d1 d8 	vshufps ymm10,ymm17,ymm17,0xd8
  b199ce:	62 21 6c 20 c6 da d8 	vshufps ymm27,ymm18,ymm18,0xd8
  b199d5:	62 31 64 20 c6 eb d8 	vshufps ymm13,ymm19,ymm19,0xd8
  b199dc:	62 21 5c 20 c6 cc d8 	vshufps ymm25,ymm20,ymm20,0xd8
  b199e3:	c4 e3 65 18 c9 01    	vinsertf128 ymm1,ymm3,xmm1,0x1
  b199e9:	62 f1 3c 20 c6 d8 dd 	vshufps ymm3,ymm24,ymm0,0xdd
  b199f0:	c5 64 c6 db d8       	vshufps ymm11,ymm3,ymm3,0xd8
  b199f5:	c5 d4 5c dc          	vsubps ymm3,ymm5,ymm4
  b199f9:	62 91 0c 20 5c e4    	vsubps ymm4,ymm30,ymm28
  b199ff:	c5 e4 58 ec          	vaddps ymm5,ymm3,ymm4
  b19a03:	c5 e0 5c dc          	vsubps xmm3,xmm3,xmm4
  b19a07:	c4 e3 55 18 db 01    	vinsertf128 ymm3,ymm5,xmm3,0x1
  b19a0d:	c5 f5 14 cb          	vunpcklpd ymm1,ymm1,ymm3
  b19a11:	c5 ec c6 d9 dd       	vshufps ymm3,ymm2,ymm1,0xdd
  b19a16:	c5 64 c6 fb d8       	vshufps ymm15,ymm3,ymm3,0xd8
  b19a1b:	62 f1 3c 20 c6 c0 88 	vshufps ymm0,ymm24,ymm0,0x88
  b19a22:	62 61 7c 28 c6 e0 d8 	vshufps ymm28,ymm0,ymm0,0xd8
  b19a29:	c5 ec c6 c1 88       	vshufps ymm0,ymm2,ymm1,0x88
  b19a2e:	62 61 7c 28 c6 f0 d8 	vshufps ymm30,ymm0,ymm0,0xd8
  b19a35:	c5 fc 28 84 24 c0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xc0]
  b19a3c:	00 00 
  b19a3e:	c5 fd 14 84 24 00 01 	vunpcklpd ymm0,ymm0,YMMWORD PTR [rsp+0x100]
  b19a45:	00 00 
  b19a47:	c5 fc 28 8c 24 a0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xa0]
  b19a4e:	00 00 
  b19a50:	c5 f5 14 8c 24 e0 00 	vunpcklpd ymm1,ymm1,YMMWORD PTR [rsp+0xe0]
  b19a57:	00 00 
  b19a59:	c5 fc c6 d1 dd       	vshufps ymm2,ymm0,ymm1,0xdd
  b19a5e:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b19a63:	c5 fc 28 5c 24 40    	vmovaps ymm3,YMMWORD PTR [rsp+0x40]
  b19a69:	c5 e5 14 a4 24 80 00 	vunpcklpd ymm4,ymm3,YMMWORD PTR [rsp+0x80]
  b19a70:	00 00 
  b19a72:	c5 fc 28 9c 24 a0 01 	vmovaps ymm3,YMMWORD PTR [rsp+0x1a0]
  b19a79:	00 00 
  b19a7b:	c5 e5 14 6c 24 60    	vunpcklpd ymm5,ymm3,YMMWORD PTR [rsp+0x60]
  b19a81:	c5 dc c6 dd dd       	vshufps ymm3,ymm4,ymm5,0xdd
  b19a86:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b19a8b:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  b19a90:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b19a95:	c5 fc 29 84 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm0
  b19a9c:	00 00 
  b19a9e:	c5 dc c6 cd 88       	vshufps ymm1,ymm4,ymm5,0x88
  b19aa3:	c5 f4 c6 c1 d8       	vshufps ymm0,ymm1,ymm1,0xd8
  b19aa8:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  b19aae:	62 e1 7c 28 10 4a 02 	vmovups ymm17,YMMWORD PTR [rdx+0x40]
  b19ab5:	62 e1 7c 28 10 42 03 	vmovups ymm16,YMMWORD PTR [rdx+0x60]
  b19abc:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  b19ac3:	00 
  b19ac4:	62 61 7c 28 10 42 05 	vmovups ymm24,YMMWORD PTR [rdx+0xa0]
  b19acb:	62 61 7c 28 10 52 06 	vmovups ymm26,YMMWORD PTR [rdx+0xc0]
  b19ad2:	c5 fc 10 a2 e0 00 00 	vmovups ymm4,YMMWORD PTR [rdx+0xe0]
  b19ad9:	00 
  b19ada:	c5 fc 10 b2 00 01 00 	vmovups ymm6,YMMWORD PTR [rdx+0x100]
  b19ae1:	00 
  b19ae2:	62 e1 7c 28 10 52 09 	vmovups ymm18,YMMWORD PTR [rdx+0x120]
  b19ae9:	62 f1 4c 20 59 ee    	vmulps ymm5,ymm22,ymm6
  b19aef:	62 b2 15 20 bc ea    	vfnmadd231ps ymm5,ymm29,ymm18
  b19af5:	62 f1 14 20 59 f6    	vmulps ymm6,ymm29,ymm6
  b19afb:	62 e1 7c 28 10 62 0c 	vmovups ymm20,YMMWORD PTR [rdx+0x180]
  b19b02:	62 b2 4d 20 b8 f2    	vfmadd231ps ymm6,ymm22,ymm18
  b19b08:	62 61 7c 28 10 6a 0d 	vmovups ymm29,YMMWORD PTR [rdx+0x1a0]
  b19b0f:	62 a1 54 20 59 dc    	vmulps ymm19,ymm21,ymm20
  b19b15:	62 82 45 20 bc dd    	vfnmadd231ps ymm19,ymm23,ymm29
  b19b1b:	62 a1 44 20 59 d4    	vmulps ymm18,ymm23,ymm20
  b19b21:	62 e1 7c 28 10 72 0a 	vmovups ymm22,YMMWORD PTR [rdx+0x140]
  b19b28:	62 82 55 20 b8 d5    	vfmadd231ps ymm18,ymm21,ymm29
  b19b2e:	62 e1 7c 28 10 7a 0b 	vmovups ymm23,YMMWORD PTR [rdx+0x160]
  b19b35:	62 c1 34 20 59 e0    	vmulps ymm20,ymm25,ymm8
  b19b3b:	62 82 25 20 bc e0    	vfnmadd231ps ymm20,ymm27,ymm24
  b19b41:	62 c1 24 20 59 e8    	vmulps ymm21,ymm27,ymm8
  b19b47:	c5 7c 10 82 00 02 00 	vmovups ymm8,YMMWORD PTR [rdx+0x200]
  b19b4e:	00 
  b19b4f:	62 82 35 20 b8 e8    	vfmadd231ps ymm21,ymm25,ymm24
  b19b55:	62 61 7c 28 10 5a 11 	vmovups ymm27,YMMWORD PTR [rdx+0x220]
  b19b5c:	62 41 1c 20 59 c0    	vmulps ymm24,ymm28,ymm8
  b19b62:	62 02 0d 20 bc c3    	vfnmadd231ps ymm24,ymm30,ymm27
  b19b68:	62 41 0c 20 59 c8    	vmulps ymm25,ymm30,ymm8
  b19b6e:	c5 7c 10 82 c0 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x1c0]
  b19b75:	00 
  b19b76:	62 02 1d 20 b8 cb    	vfmadd231ps ymm25,ymm28,ymm27
  b19b7c:	62 61 7c 28 10 6a 0f 	vmovups ymm29,YMMWORD PTR [rdx+0x1e0]
  b19b83:	62 41 0c 28 59 d8    	vmulps ymm27,ymm14,ymm8
  b19b89:	62 02 1d 28 b8 dd    	vfmadd231ps ymm27,ymm12,ymm29
  b19b8f:	62 41 1c 28 59 f0    	vmulps ymm30,ymm12,ymm8
  b19b95:	62 01 5c 20 5c e0    	vsubps ymm28,ymm20,ymm24
  b19b9b:	62 02 0d 28 bc f5    	vfnmadd231ps ymm30,ymm14,ymm29
  b19ba1:	c4 62 7d 18 05 ae bb 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff55bbae]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  b19ba8:	55 ff 
  b19baa:	62 01 2c 28 59 ea    	vmulps ymm29,ymm10,ymm26
  b19bb0:	62 62 15 28 b8 ec    	vfmadd231ps ymm29,ymm13,ymm4
  b19bb6:	62 11 14 28 59 ea    	vmulps ymm13,ymm13,ymm26
  b19bbc:	c5 7c 10 a2 60 02 00 	vmovups ymm12,YMMWORD PTR [rdx+0x260]
  b19bc3:	00 
  b19bc4:	c4 62 2d bc ec       	vfnmadd231ps ymm13,ymm10,ymm4
  b19bc9:	c5 fc 10 a2 40 02 00 	vmovups ymm4,YMMWORD PTR [rdx+0x240]
  b19bd0:	00 
  b19bd1:	62 61 04 28 59 fc    	vmulps ymm31,ymm15,ymm4
  b19bd7:	62 42 25 28 b8 fc    	vfmadd231ps ymm31,ymm11,ymm12
  b19bdd:	c5 a4 59 c4          	vmulps ymm0,ymm11,ymm4
  b19be1:	62 21 54 28 5c d3    	vsubps ymm26,ymm5,ymm19
  b19be7:	c4 c2 05 bc c4       	vfnmadd231ps ymm0,ymm15,ymm12
  b19bec:	62 d1 2c 20 59 e0    	vmulps ymm4,ymm26,ymm8
  b19bf2:	62 b1 64 28 59 c9    	vmulps ymm1,ymm3,ymm17
  b19bf8:	62 b2 6d 28 b8 c8    	vfmadd231ps ymm1,ymm2,ymm16
  b19bfe:	62 a1 6c 28 59 c9    	vmulps ymm17,ymm2,ymm17
  b19c04:	c4 62 7d 18 1d 93 b7 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff55b793]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  b19c0b:	55 ff 
  b19c0d:	62 d2 1d 20 b8 e3    	vfmadd231ps ymm4,ymm28,ymm11
  b19c13:	62 a2 65 28 bc c8    	vfnmadd231ps ymm17,ymm3,ymm16
  b19c19:	62 31 4c 28 58 e2    	vaddps ymm12,ymm6,ymm18
  b19c1f:	c5 7c 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm12
  b19c25:	62 b1 34 28 59 de    	vmulps ymm3,ymm9,ymm22
  b19c2b:	62 b2 45 28 b8 df    	vfmadd231ps ymm3,ymm7,ymm23
  b19c31:	62 b1 44 28 59 fe    	vmulps ymm7,ymm7,ymm22
  b19c37:	62 11 54 20 58 d1    	vaddps ymm10,ymm21,ymm25
  b19c3d:	62 b2 35 28 bc ff    	vfnmadd231ps ymm7,ymm9,ymm23
  b19c43:	62 e2 7d 28 18 35 9b 	vbroadcastss ymm22,DWORD PTR [rip+0xffffffffff55ba9b]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  b19c4a:	ba 55 ff 
  b19c4d:	62 31 7c 28 28 fe    	vmovaps ymm15,ymm22
  b19c53:	c5 fc 28 54 24 60    	vmovaps ymm2,YMMWORD PTR [rsp+0x60]
  b19c59:	c4 62 2d a8 fa       	vfmadd213ps ymm15,ymm10,ymm2
  b19c5e:	62 b1 54 28 58 eb    	vaddps ymm5,ymm5,ymm19
  b19c64:	62 e2 7d 28 18 05 d6 	vbroadcastss ymm16,DWORD PTR [rip+0xffffffffff55b9d6]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  b19c6b:	b9 55 ff 
  b19c6e:	62 32 1d 28 bc f8    	vfnmadd231ps ymm15,ymm12,ymm16
  b19c74:	62 11 5c 20 58 c8    	vaddps ymm9,ymm20,ymm24
  b19c7a:	62 71 04 20 58 e1    	vaddps ymm12,ymm31,ymm1
  b19c80:	62 81 54 20 5c e9    	vsubps ymm21,ymm21,ymm25
  b19c86:	62 11 24 20 58 f5    	vaddps ymm14,ymm27,ymm29
  b19c8c:	62 a1 4c 28 5c fa    	vsubps ymm23,ymm6,ymm18
  b19c92:	62 21 7c 28 5c c1    	vsubps ymm24,ymm0,ymm17
  b19c98:	62 b1 7c 28 58 f1    	vaddps ymm6,ymm0,ymm17
  b19c9e:	62 d1 0c 20 5c c5    	vsubps ymm0,ymm30,ymm13
  b19ca4:	62 51 0c 20 58 ed    	vaddps ymm13,ymm30,ymm13
  b19caa:	62 a1 7c 28 28 ce    	vmovaps ymm17,ymm22
  b19cb0:	62 e2 0d 28 a8 cb    	vfmadd213ps ymm17,ymm14,ymm3
  b19cb6:	62 a2 1d 28 bc c8    	vfnmadd231ps ymm17,ymm12,ymm16
  b19cbc:	62 01 24 20 5c cd    	vsubps ymm25,ymm27,ymm29
  b19cc2:	62 c1 3c 20 59 d0    	vmulps ymm18,ymm24,ymm8
  b19cc8:	62 c2 7d 28 b8 d3    	vfmadd231ps ymm18,ymm0,ymm11
  b19cce:	62 f1 04 20 5c c9    	vsubps ymm1,ymm31,ymm1
  b19cd4:	62 a1 7c 28 28 de    	vmovaps ymm19,ymm22
  b19cda:	62 61 7c 28 28 6c 24 	vmovaps ymm29,YMMWORD PTR [rsp+0x80]
  b19ce1:	04 
  b19ce2:	62 82 35 28 a8 dd    	vfmadd213ps ymm19,ymm9,ymm29
  b19ce8:	62 a2 55 28 bc d8    	vfnmadd231ps ymm19,ymm5,ymm16
  b19cee:	62 41 1c 20 59 d8    	vmulps ymm27,ymm28,ymm8
  b19cf4:	62 02 25 28 bc da    	vfnmadd231ps ymm27,ymm11,ymm26
  b19cfa:	62 c1 44 20 59 e0    	vmulps ymm20,ymm23,ymm8
  b19d00:	62 c2 55 20 b8 e3    	vfmadd231ps ymm20,ymm21,ymm11
  b19d06:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  b19d0a:	62 92 25 28 bc c0    	vfnmadd231ps ymm0,ymm11,ymm24
  b19d10:	62 21 7c 28 28 c6    	vmovaps ymm24,ymm22
  b19d16:	62 62 15 28 a8 c7    	vfmadd213ps ymm24,ymm13,ymm7
  b19d1c:	62 22 4d 28 bc c0    	vfnmadd231ps ymm24,ymm6,ymm16
  b19d22:	62 c1 54 20 59 e8    	vmulps ymm21,ymm21,ymm8
  b19d28:	62 a2 25 28 bc ef    	vfnmadd231ps ymm21,ymm11,ymm23
  b19d2e:	62 c1 74 28 59 f8    	vmulps ymm23,ymm1,ymm8
  b19d34:	62 c2 35 20 b8 fb    	vfmadd231ps ymm23,ymm25,ymm11
  b19d3a:	62 51 34 20 59 c0    	vmulps ymm8,ymm25,ymm8
  b19d40:	62 21 7c 28 28 c8    	vmovaps ymm25,ymm16
  b19d46:	62 61 7c 28 28 f2    	vmovaps ymm30,ymm2
  b19d4c:	62 62 2d 28 ac ca    	vfnmadd213ps ymm25,ymm10,ymm2
  b19d52:	c5 fc 28 54 24 40    	vmovaps ymm2,YMMWORD PTR [rsp+0x40]
  b19d58:	62 22 6d 28 b8 ce    	vfmadd231ps ymm25,ymm2,ymm22
  b19d5e:	c4 42 75 bc c3       	vfnmadd231ps ymm8,ymm1,ymm11
  b19d63:	62 b1 7c 28 28 c8    	vmovaps ymm1,ymm16
  b19d69:	c4 e2 0d ac cb       	vfnmadd213ps ymm1,ymm14,ymm3
  b19d6e:	62 b2 1d 28 b8 ce    	vfmadd231ps ymm1,ymm12,ymm22
  b19d74:	62 31 7c 28 28 d8    	vmovaps ymm11,ymm16
  b19d7a:	62 12 35 28 ac dd    	vfnmadd213ps ymm11,ymm9,ymm29
  b19d80:	62 32 55 28 b8 de    	vfmadd231ps ymm11,ymm5,ymm22
  b19d86:	62 e2 15 28 ac c7    	vfnmadd213ps ymm16,ymm13,ymm7
  b19d8c:	62 a2 4d 28 b8 c6    	vfmadd231ps ymm16,ymm6,ymm22
  b19d92:	62 81 24 20 58 f1    	vaddps ymm22,ymm27,ymm25
  b19d98:	62 01 34 20 5c cb    	vsubps ymm25,ymm25,ymm27
  b19d9e:	62 61 74 28 58 d0    	vaddps ymm26,ymm1,ymm0
  b19da4:	62 61 74 28 5c d8    	vsubps ymm27,ymm1,ymm0
  b19daa:	62 21 24 28 5c e5    	vsubps ymm28,ymm11,ymm21
  b19db0:	62 31 24 28 58 dd    	vaddps ymm11,ymm11,ymm21
  b19db6:	62 c1 7c 20 5c e8    	vsubps ymm21,ymm16,ymm8
  b19dbc:	62 51 7c 20 58 c0    	vaddps ymm8,ymm16,ymm8
  b19dc2:	c5 84 58 cc          	vaddps ymm1,ymm15,ymm4
  b19dc6:	c5 04 5c fc          	vsubps ymm15,ymm15,ymm4
  b19dca:	62 a1 74 20 58 c2    	vaddps ymm16,ymm17,ymm18
  b19dd0:	62 a1 74 20 5c ca    	vsubps ymm17,ymm17,ymm18
  b19dd6:	62 a1 64 20 5c d4    	vsubps ymm18,ymm19,ymm20
  b19ddc:	62 a1 64 20 58 dc    	vaddps ymm19,ymm19,ymm20
  b19de2:	62 a1 3c 20 5c e7    	vsubps ymm20,ymm24,ymm23
  b19de8:	62 a1 3c 20 58 ff    	vaddps ymm23,ymm24,ymm23
  b19dee:	62 91 2c 28 58 c6    	vaddps ymm0,ymm10,ymm30
  b19df4:	62 61 6c 28 58 c0    	vaddps ymm24,ymm2,ymm0
  b19dfa:	c5 8c 58 c3          	vaddps ymm0,ymm14,ymm3
  b19dfe:	c5 1c 58 e0          	vaddps ymm12,ymm12,ymm0
  b19e02:	62 d1 14 20 58 c1    	vaddps ymm0,ymm29,ymm9
  b19e08:	c5 7c 58 f5          	vaddps ymm14,ymm0,ymm5
  b19e0c:	62 b1 74 28 5c e0    	vsubps ymm4,ymm1,ymm16
  b19e12:	c5 94 58 d7          	vaddps ymm2,ymm13,ymm7
  b19e16:	62 b1 6c 20 5c c4    	vsubps ymm0,ymm18,ymm20
  b19e1c:	c5 ec 58 f6          	vaddps ymm6,ymm2,ymm6
  b19e20:	62 11 4c 20 58 ca    	vaddps ymm9,ymm22,ymm26
  b19e26:	62 31 74 28 58 e8    	vaddps ymm13,ymm1,ymm16
  b19e2c:	62 b1 1c 20 58 cd    	vaddps ymm1,ymm28,ymm21
  b19e32:	62 b1 6c 20 58 dc    	vaddps ymm3,ymm18,ymm20
  b19e38:	62 81 34 20 5c c3    	vsubps ymm16,ymm25,ymm27
  b19e3e:	62 81 4c 20 5c d2    	vsubps ymm18,ymm22,ymm26
  b19e44:	c4 c1 24 5c d0       	vsubps ymm2,ymm11,ymm8
  b19e49:	62 b1 1c 20 5c fd    	vsubps ymm7,ymm28,ymm21
  b19e4f:	62 a1 04 28 58 e1    	vaddps ymm20,ymm15,ymm17
  b19e55:	62 81 34 20 58 eb    	vaddps ymm21,ymm25,ymm27
  b19e5b:	62 b1 64 20 58 ef    	vaddps ymm5,ymm19,ymm23
  b19e61:	c4 41 24 58 d0       	vaddps ymm10,ymm11,ymm8
  b19e66:	62 c1 3c 20 5c f4    	vsubps ymm22,ymm24,ymm12
  b19e6c:	62 31 04 28 5c f9    	vsubps ymm15,ymm15,ymm17
  b19e72:	c5 0c 5c c6          	vsubps ymm8,ymm14,ymm6
  b19e76:	62 31 64 20 5c df    	vsubps ymm11,ymm19,ymm23
  b19e7c:	62 51 3c 20 58 e4    	vaddps ymm12,ymm24,ymm12
  b19e82:	c5 0c 58 f6          	vaddps ymm14,ymm14,ymm6
  b19e86:	c5 fc 28 35 12 ba 55 	vmovaps ymm6,YMMWORD PTR [rip+0xffffffffff55ba12]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  b19e8d:	ff 
  b19e8e:	62 c1 7c 28 28 ce    	vmovaps ymm17,ymm14
  b19e94:	62 c2 4d 28 7f cc    	vpermt2ps ymm17,ymm6,ymm12
  b19e9a:	62 e1 7c 28 28 1d 3c 	vmovaps ymm19,YMMWORD PTR [rip+0xffffffffff55d33c]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b19ea1:	d3 55 ff 
  b19ea4:	62 52 65 20 7f f4    	vpermt2ps ymm14,ymm19,ymm12
  b19eaa:	c4 41 7c 28 e3       	vmovaps ymm12,ymm11
  b19eaf:	62 52 4d 28 7f e7    	vpermt2ps ymm12,ymm6,ymm15
  b19eb5:	62 52 65 20 7f df    	vpermt2ps ymm11,ymm19,ymm15
  b19ebb:	c4 41 7c 28 fa       	vmovaps ymm15,ymm10
  b19ec0:	62 32 4d 28 7f fd    	vpermt2ps ymm15,ymm6,ymm21
  b19ec6:	62 32 65 20 7f d5    	vpermt2ps ymm10,ymm19,ymm21
  b19ecc:	62 e1 7c 28 28 ef    	vmovaps ymm21,ymm7
  b19ed2:	62 a2 4d 28 7f ea    	vpermt2ps ymm21,ymm6,ymm18
  b19ed8:	62 b2 65 20 7f fa    	vpermt2ps ymm7,ymm19,ymm18
  b19ede:	62 e1 7c 28 28 d3    	vmovaps ymm18,ymm3
  b19ee4:	62 c2 4d 28 7f d5    	vpermt2ps ymm18,ymm6,ymm13
  b19eea:	62 d2 65 20 7f dd    	vpermt2ps ymm3,ymm19,ymm13
  b19ef0:	c4 41 7c 28 e8       	vmovaps ymm13,ymm8
  b19ef5:	62 32 4d 28 7f ee    	vpermt2ps ymm13,ymm6,ymm22
  b19efb:	62 32 65 20 7f c6    	vpermt2ps ymm8,ymm19,ymm22
  b19f01:	62 e1 7c 28 28 f5    	vmovaps ymm22,ymm5
  b19f07:	62 a2 4d 28 7f f4    	vpermt2ps ymm22,ymm6,ymm20
  b19f0d:	62 b2 65 20 7f ec    	vpermt2ps ymm5,ymm19,ymm20
  b19f13:	62 e1 7c 28 28 e2    	vmovaps ymm20,ymm2
  b19f19:	62 a2 4d 28 7f e0    	vpermt2ps ymm20,ymm6,ymm16
  b19f1f:	62 b2 65 20 7f d0    	vpermt2ps ymm2,ymm19,ymm16
  b19f25:	62 e1 7c 28 28 c1    	vmovaps ymm16,ymm1
  b19f2b:	62 c2 4d 28 7f c1    	vpermt2ps ymm16,ymm6,ymm9
  b19f31:	62 d2 65 20 7f c9    	vpermt2ps ymm1,ymm19,ymm9
  b19f37:	62 f2 7d 28 77 f4    	vpermi2ps ymm6,ymm0,ymm4
  b19f3d:	62 f2 65 20 7f c4    	vpermt2ps ymm0,ymm19,ymm4
  b19f43:	c5 7c 11 36          	vmovups YMMWORD PTR [rsi],ymm14
  b19f47:	62 e1 7c 28 11 4e 01 	vmovups YMMWORD PTR [rsi+0x20],ymm17
  b19f4e:	c5 7c 11 5e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm11
  b19f53:	c5 7c 11 66 60       	vmovups YMMWORD PTR [rsi+0x60],ymm12
  b19f58:	c5 7c 11 96 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm10
  b19f5f:	00 
  b19f60:	c5 7c 11 be a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm15
  b19f67:	00 
  b19f68:	c5 fc 11 be c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm7
  b19f6f:	00 
  b19f70:	62 e1 7c 28 11 6e 07 	vmovups YMMWORD PTR [rsi+0xe0],ymm21
  b19f77:	c5 fc 11 9e 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm3
  b19f7e:	00 
  b19f7f:	62 e1 7c 28 11 56 09 	vmovups YMMWORD PTR [rsi+0x120],ymm18
  b19f86:	c5 7c 11 86 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm8
  b19f8d:	00 
  b19f8e:	c5 7c 11 ae 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm13
  b19f95:	00 
  b19f96:	c5 fc 11 ae 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm5
  b19f9d:	00 
  b19f9e:	62 e1 7c 28 11 76 0d 	vmovups YMMWORD PTR [rsi+0x1a0],ymm22
  b19fa5:	c5 fc 11 96 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm2
  b19fac:	00 
  b19fad:	62 e1 7c 28 11 66 0f 	vmovups YMMWORD PTR [rsi+0x1e0],ymm20
  b19fb4:	c5 fc 11 8e 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm1
  b19fbb:	00 
  b19fbc:	62 e1 7c 28 11 46 11 	vmovups YMMWORD PTR [rsi+0x220],ymm16
  b19fc3:	c5 fc 11 86 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm0
  b19fca:	00 
  b19fcb:	c5 fc 11 b6 60 02 00 	vmovups YMMWORD PTR [rsi+0x260],ymm6
  b19fd2:	00 
  b19fd3:	48 89 ec             	mov    rsp,rbp
  b19fd6:	5d                   	pop    rbp
  b19fd7:	c5 f8 77             	vzeroupper
  b19fda:	c3                   	ret
  b19fdb:	cc                   	int3
  b19fdc:	cc                   	int3
  b19fdd:	cc                   	int3
  b19fde:	cc                   	int3
  b19fdf:	cc                   	int3
  b19fe0:	cc                   	int3
  b19fe1:	cc                   	int3
  b19fe2:	cc                   	int3
  b19fe3:	cc                   	int3
  b19fe4:	cc                   	int3
  b19fe5:	cc                   	int3
  b19fe6:	cc                   	int3
  b19fe7:	cc                   	int3
  b19fe8:	cc                   	int3
  b19fe9:	cc                   	int3
  b19fea:	cc                   	int3
  b19feb:	cc                   	int3
  b19fec:	cc                   	int3
  b19fed:	cc                   	int3
  b19fee:	cc                   	int3
  b19fef:	cc                   	int3
  b19ff0:	cc                   	int3
  b19ff1:	cc                   	int3
  b19ff2:	cc                   	int3
  b19ff3:	cc                   	int3
  b19ff4:	cc                   	int3
  b19ff5:	cc                   	int3
  b19ff6:	cc                   	int3
  b19ff7:	cc                   	int3
  b19ff8:	cc                   	int3
  b19ff9:	cc                   	int3
  b19ffa:	cc                   	int3
  b19ffb:	cc                   	int3
  b19ffc:	cc                   	int3
  b19ffd:	cc                   	int3
  b19ffe:	cc                   	int3
  b19fff:	cc                   	int3
