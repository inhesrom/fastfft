
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b076c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b076c0:	55                   	push   rbp
  b076c1:	48 89 e5             	mov    rbp,rsp
  b076c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  b076c8:	48 81 ec c0 02 00 00 	sub    rsp,0x2c0
  b076cf:	c6 84 24 40 02 00 00 	mov    BYTE PTR [rsp+0x240],0x0
  b076d6:	00 
  b076d7:	48 8d 84 24 40 02 00 	lea    rax,[rsp+0x240]
  b076de:	00 
  b076df:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  b076e4:	48 8d 44 24 18       	lea    rax,[rsp+0x18]
  b076e9:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  b076ed:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  b076f2:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  b076f7:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  b076fd:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b07702:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b07708:	c5 fc 10 4f 60       	vmovups ymm1,YMMWORD PTR [rdi+0x60]
  b0770d:	c5 fc 10 9f 80 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0x80]
  b07714:	00 
  b07715:	c5 f4 c6 e3 88       	vshufps ymm4,ymm1,ymm3,0x88
  b0771a:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b07720:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  b07725:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  b0772b:	c5 fc 10 9f c0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xc0]
  b07732:	00 
  b07733:	c5 fc 10 af e0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xe0]
  b0773a:	00 
  b0773b:	c5 e4 c6 f5 88       	vshufps ymm6,ymm3,ymm5,0x88
  b07740:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  b07746:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  b0774b:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  b07751:	c5 fc 10 af 20 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x120]
  b07758:	00 
  b07759:	c5 fc 10 bf 40 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x140]
  b07760:	00 
  b07761:	c5 54 c6 c7 88       	vshufps ymm8,ymm5,ymm7,0x88
  b07766:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b0776c:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b07771:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  b07777:	c5 fc 10 bf 80 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x180]
  b0777e:	00 
  b0777f:	c5 7c 10 8f a0 01 00 	vmovups ymm9,YMMWORD PTR [rdi+0x1a0]
  b07786:	00 
  b07787:	c4 41 44 c6 d1 88    	vshufps ymm10,ymm7,ymm9,0x88
  b0778d:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  b07793:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  b07799:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  b0779f:	c5 7c 10 8f e0 01 00 	vmovups ymm9,YMMWORD PTR [rdi+0x1e0]
  b077a6:	00 
  b077a7:	c5 7c 10 9f 00 02 00 	vmovups ymm11,YMMWORD PTR [rdi+0x200]
  b077ae:	00 
  b077af:	c4 41 34 c6 e3 88    	vshufps ymm12,ymm9,ymm11,0x88
  b077b5:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b077bb:	c4 41 34 c6 cb dd    	vshufps ymm9,ymm9,ymm11,0xdd
  b077c1:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  b077c7:	c5 7c 10 9f 40 02 00 	vmovups ymm11,YMMWORD PTR [rdi+0x240]
  b077ce:	00 
  b077cf:	c5 7c 10 af 60 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x260]
  b077d6:	00 
  b077d7:	c4 41 24 c6 f5 88    	vshufps ymm14,ymm11,ymm13,0x88
  b077dd:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  b077e3:	c4 41 24 c6 dd dd    	vshufps ymm11,ymm11,ymm13,0xdd
  b077e9:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  b077ef:	c5 7c 10 af a0 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x2a0]
  b077f6:	00 
  b077f7:	c5 7c 10 bf c0 02 00 	vmovups ymm15,YMMWORD PTR [rdi+0x2c0]
  b077fe:	00 
  b077ff:	62 c1 14 28 c6 c7 88 	vshufps ymm16,ymm13,ymm15,0x88
  b07806:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b0780d:	c4 41 14 c6 ef dd    	vshufps ymm13,ymm13,ymm15,0xdd
  b07813:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  b07819:	c5 7c 58 ff          	vaddps ymm15,ymm0,ymm7
  b0781d:	62 c1 64 28 58 cb    	vaddps ymm17,ymm3,ymm11
  b07823:	62 a1 04 28 58 d1    	vaddps ymm18,ymm15,ymm17
  b07829:	62 c1 74 28 58 d9    	vaddps ymm19,ymm1,ymm9
  b0782f:	62 c1 54 28 58 e5    	vaddps ymm20,ymm5,ymm13
  b07835:	62 a1 64 20 58 ec    	vaddps ymm21,ymm19,ymm20
  b0783b:	62 21 6c 20 58 fd    	vaddps ymm31,ymm18,ymm21
  b07841:	62 61 7c 28 29 7c 24 	vmovaps YMMWORD PTR [rsp+0x100],ymm31
  b07848:	08 
  b07849:	62 c1 6c 28 58 f2    	vaddps ymm22,ymm2,ymm10
  b0784f:	62 c1 4c 28 58 fe    	vaddps ymm23,ymm6,ymm14
  b07855:	62 21 4c 20 58 cf    	vaddps ymm25,ymm22,ymm23
  b0785b:	62 41 5c 28 58 d4    	vaddps ymm26,ymm4,ymm12
  b07861:	62 21 3c 28 58 d8    	vaddps ymm27,ymm8,ymm16
  b07867:	62 01 2c 20 58 e3    	vaddps ymm28,ymm26,ymm27
  b0786d:	62 01 34 20 58 f4    	vaddps ymm30,ymm25,ymm28
  b07873:	62 61 7c 28 29 74 24 	vmovaps YMMWORD PTR [rsp+0x200],ymm30
  b0787a:	10 
  b0787b:	c5 fc 5c c7          	vsubps ymm0,ymm0,ymm7
  b0787f:	c4 c1 4c 5c f6       	vsubps ymm6,ymm6,ymm14
  b07884:	62 61 7c 28 58 ee    	vaddps ymm29,ymm0,ymm6
  b0788a:	c4 c1 74 5c c9       	vsubps ymm1,ymm1,ymm9
  b0788f:	c4 c1 5c 5c e4       	vsubps ymm4,ymm4,ymm12
  b07894:	62 62 7d 28 18 05 fe 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff56dafe]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b0789b:	da 56 ff 
  b0789e:	c5 f4 58 fc          	vaddps ymm7,ymm1,ymm4
  b078a2:	62 11 44 28 59 e0    	vmulps ymm12,ymm7,ymm24
  b078a8:	62 b1 3c 28 5c f8    	vsubps ymm7,ymm8,ymm16
  b078ae:	c4 c1 54 5c ed       	vsubps ymm5,ymm5,ymm13
  b078b3:	c5 44 5c c5          	vsubps ymm8,ymm7,ymm5
  b078b7:	62 11 3c 28 59 c0    	vmulps ymm8,ymm8,ymm24
  b078bd:	c4 41 1c 58 e8       	vaddps ymm13,ymm12,ymm8
  b078c2:	62 51 14 20 58 cd    	vaddps ymm9,ymm29,ymm13
  b078c8:	c5 7c 29 8c 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm9
  b078cf:	00 00 
  b078d1:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  b078d6:	c5 a4 5c db          	vsubps ymm3,ymm11,ymm3
  b078da:	c5 64 58 da          	vaddps ymm11,ymm3,ymm2
  b078de:	c5 dc 5c c9          	vsubps ymm1,ymm4,ymm1
  b078e2:	62 91 74 28 59 c8    	vmulps ymm1,ymm1,ymm24
  b078e8:	c5 d4 58 e7          	vaddps ymm4,ymm5,ymm7
  b078ec:	62 91 5c 28 59 e8    	vmulps ymm5,ymm4,ymm24
  b078f2:	62 e1 74 28 5c c5    	vsubps ymm16,ymm1,ymm5
  b078f8:	62 b1 24 28 58 e0    	vaddps ymm4,ymm11,ymm16
  b078fe:	c5 fc 29 a4 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm4
  b07905:	00 00 
  b07907:	62 31 04 28 5c f9    	vsubps ymm15,ymm15,ymm17
  b0790d:	62 81 2c 20 5c cb    	vsubps ymm17,ymm26,ymm27
  b07913:	62 31 04 28 58 d1    	vaddps ymm10,ymm15,ymm17
  b07919:	c5 7c 29 94 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm10
  b07920:	00 00 
  b07922:	62 a1 4c 20 5c f7    	vsubps ymm22,ymm22,ymm23
  b07928:	62 a1 5c 20 5c db    	vsubps ymm19,ymm20,ymm19
  b0792e:	62 b1 64 20 58 fe    	vaddps ymm7,ymm19,ymm22
  b07934:	c5 fc 29 bc 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm7
  b0793b:	00 00 
  b0793d:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  b07941:	c5 f4 58 cd          	vaddps ymm1,ymm1,ymm5
  b07945:	c5 7c 58 f1          	vaddps ymm14,ymm0,ymm1
  b07949:	c5 7c 29 b4 24 c0 01 	vmovaps YMMWORD PTR [rsp+0x1c0],ymm14
  b07950:	00 00 
  b07952:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  b07956:	c4 c1 3c 5c dc       	vsubps ymm3,ymm8,ymm12
  b0795b:	c5 ec 58 eb          	vaddps ymm5,ymm2,ymm3
  b0795f:	c5 fc 29 ac 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm5
  b07966:	00 00 
  b07968:	62 a1 6c 20 5c e5    	vsubps ymm20,ymm18,ymm21
  b0796e:	62 e1 7c 28 29 64 24 	vmovaps YMMWORD PTR [rsp+0x120],ymm20
  b07975:	09 
  b07976:	62 11 34 20 5c e4    	vsubps ymm12,ymm25,ymm28
  b0797c:	c5 7c 29 a4 24 20 02 	vmovaps YMMWORD PTR [rsp+0x220],ymm12
  b07983:	00 00 
  b07985:	62 51 14 20 5c ed    	vsubps ymm13,ymm29,ymm13
  b0798b:	c5 7c 29 ac 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm13
  b07992:	00 00 
  b07994:	62 b1 24 28 5c f0    	vsubps ymm6,ymm11,ymm16
  b0799a:	c5 fc 29 b4 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm6
  b079a1:	00 00 
  b079a3:	62 a1 04 28 5c c1    	vsubps ymm16,ymm15,ymm17
  b079a9:	62 e1 7c 28 29 44 24 	vmovaps YMMWORD PTR [rsp+0x160],ymm16
  b079b0:	0b 
  b079b1:	62 31 4c 20 5c db    	vsubps ymm11,ymm22,ymm19
  b079b7:	c5 7c 29 5c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm11
  b079bd:	c5 7c 5c f9          	vsubps ymm15,ymm0,ymm1
  b079c1:	c5 7c 29 bc 24 e0 01 	vmovaps YMMWORD PTR [rsp+0x1e0],ymm15
  b079c8:	00 00 
  b079ca:	c5 6c 5c c3          	vsubps ymm8,ymm2,ymm3
  b079ce:	c5 7c 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm8
  b079d4:	62 d3 8d 20 23 c4 03 	vshuff64x2 ymm0,ymm30,ymm12,0x3
  b079db:	c4 c3 45 06 cb 31    	vperm2f128 ymm1,ymm7,ymm11,0x31
  b079e1:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  b079e5:	c4 e3 5d 06 de 31    	vperm2f128 ymm3,ymm4,ymm6,0x31
  b079eb:	62 c3 d5 28 23 d0 03 	vshuff64x2 ymm18,ymm5,ymm8,0x3
  b079f2:	62 a1 e5 28 15 ca    	vunpckhpd ymm17,ymm3,ymm18
  b079f8:	62 b1 6c 28 c6 e1 dd 	vshufps ymm4,ymm2,ymm17,0xdd
  b079ff:	c5 fc 29 64 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm4
  b07a05:	62 a1 6c 28 c6 c9 88 	vshufps ymm17,ymm2,ymm17,0x88
  b07a0c:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b07a10:	62 b1 e5 28 14 ca    	vunpcklpd ymm1,ymm3,ymm18
  b07a16:	62 e1 7c 28 c6 d1 dd 	vshufps ymm18,ymm0,ymm1,0xdd
  b07a1d:	62 e1 7c 28 c6 d9 88 	vshufps ymm19,ymm0,ymm1,0x88
  b07a24:	62 b3 85 20 23 c4 03 	vshuff64x2 ymm0,ymm31,ymm20,0x3
  b07a2b:	62 b3 ad 28 23 c8 03 	vshuff64x2 ymm1,ymm10,ymm16,0x3
  b07a32:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  b07a36:	c4 c3 35 06 dd 31    	vperm2f128 ymm3,ymm9,ymm13,0x31
  b07a3c:	62 c3 8d 28 23 f7 03 	vshuff64x2 ymm22,ymm14,ymm15,0x3
  b07a43:	62 a1 e5 28 15 ee    	vunpckhpd ymm21,ymm3,ymm22
  b07a49:	62 a1 6c 28 c6 e5 dd 	vshufps ymm20,ymm2,ymm21,0xdd
  b07a50:	62 a1 6c 28 c6 ed 88 	vshufps ymm21,ymm2,ymm21,0x88
  b07a57:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b07a5b:	62 b1 e5 28 14 ce    	vunpcklpd ymm1,ymm3,ymm22
  b07a61:	62 e1 7c 28 c6 f1 dd 	vshufps ymm22,ymm0,ymm1,0xdd
  b07a68:	62 e1 7c 28 c6 f9 88 	vshufps ymm23,ymm0,ymm1,0x88
  b07a6f:	c5 f8 10 47 50       	vmovups xmm0,XMMWORD PTR [rdi+0x50]
  b07a74:	c5 f8 10 4f 40       	vmovups xmm1,XMMWORD PTR [rdi+0x40]
  b07a79:	62 61 74 08 c6 c8 88 	vshufps xmm25,xmm1,xmm0,0x88
  b07a80:	c5 70 c6 e8 dd       	vshufps xmm13,xmm1,xmm0,0xdd
  b07a85:	c5 f8 10 97 b0 00 00 	vmovups xmm2,XMMWORD PTR [rdi+0xb0]
  b07a8c:	00 
  b07a8d:	c5 f8 10 9f a0 00 00 	vmovups xmm3,XMMWORD PTR [rdi+0xa0]
  b07a94:	00 
  b07a95:	c5 60 c6 f2 88       	vshufps xmm14,xmm3,xmm2,0x88
  b07a9a:	c5 60 c6 da dd       	vshufps xmm11,xmm3,xmm2,0xdd
  b07a9f:	c5 f8 10 97 10 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x110]
  b07aa6:	00 
  b07aa7:	c5 f8 10 9f 00 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x100]
  b07aae:	00 
  b07aaf:	62 61 64 08 c6 ea 88 	vshufps xmm29,xmm3,xmm2,0x88
  b07ab6:	62 61 64 08 c6 d2 dd 	vshufps xmm26,xmm3,xmm2,0xdd
  b07abd:	c5 f8 10 97 70 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x170]
  b07ac4:	00 
  b07ac5:	c5 f8 10 9f 60 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x160]
  b07acc:	00 
  b07acd:	c5 60 c6 d2 88       	vshufps xmm10,xmm3,xmm2,0x88
  b07ad2:	c5 60 c6 ca dd       	vshufps xmm9,xmm3,xmm2,0xdd
  b07ad7:	c5 f8 10 97 d0 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x1d0]
  b07ade:	00 
  b07adf:	c5 f8 10 9f c0 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x1c0]
  b07ae6:	00 
  b07ae7:	62 61 64 08 c6 da 88 	vshufps xmm27,xmm3,xmm2,0x88
  b07aee:	c5 e0 c6 f2 dd       	vshufps xmm6,xmm3,xmm2,0xdd
  b07af3:	c5 f8 10 97 30 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x230]
  b07afa:	00 
  b07afb:	c5 f8 10 9f 20 02 00 	vmovups xmm3,XMMWORD PTR [rdi+0x220]
  b07b02:	00 
  b07b03:	c5 e0 c6 fa 88       	vshufps xmm7,xmm3,xmm2,0x88
  b07b08:	c5 e0 c6 ea dd       	vshufps xmm5,xmm3,xmm2,0xdd
  b07b0d:	c5 f8 10 97 90 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x290]
  b07b14:	00 
  b07b15:	62 61 7c 08 10 67 28 	vmovups xmm28,XMMWORD PTR [rdi+0x280]
  b07b1c:	62 e1 1c 00 c6 c2 88 	vshufps xmm16,xmm28,xmm2,0x88
  b07b23:	62 61 1c 00 c6 fa dd 	vshufps xmm31,xmm28,xmm2,0xdd
  b07b2a:	c5 f8 10 97 f0 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x2f0]
  b07b31:	00 
  b07b32:	62 61 7c 08 10 67 2e 	vmovups xmm28,XMMWORD PTR [rdi+0x2e0]
  b07b39:	62 f1 1c 00 c6 e2 88 	vshufps xmm4,xmm28,xmm2,0x88
  b07b40:	62 f1 1c 00 c6 da dd 	vshufps xmm3,xmm28,xmm2,0xdd
  b07b47:	62 61 14 28 58 f6    	vaddps ymm30,ymm13,ymm6
  b07b4d:	62 91 2c 20 58 cf    	vaddps ymm1,ymm26,ymm31
  b07b53:	62 61 0c 20 58 e1    	vaddps ymm28,ymm30,ymm1
  b07b59:	c5 24 58 fd          	vaddps ymm15,ymm11,ymm5
  b07b5d:	c5 34 58 e3          	vaddps ymm12,ymm9,ymm3
  b07b61:	c4 c1 04 58 c4       	vaddps ymm0,ymm15,ymm12
  b07b66:	62 f1 1c 20 58 d0    	vaddps ymm2,ymm28,ymm0
  b07b6c:	62 f1 1c 00 5c c0    	vsubps xmm0,xmm28,xmm0
  b07b72:	62 63 6d 28 18 e0 01 	vinsertf32x4 ymm28,ymm2,xmm0,0x1
  b07b79:	62 f1 0c 20 5c c1    	vsubps ymm0,ymm30,ymm1
  b07b7f:	c5 0c 58 c7          	vaddps ymm8,ymm14,ymm7
  b07b83:	c5 ac 58 d4          	vaddps ymm2,ymm10,ymm4
  b07b87:	62 61 3c 28 5c f2    	vsubps ymm30,ymm8,ymm2
  b07b8d:	62 91 7c 28 58 ce    	vaddps ymm1,ymm0,ymm30
  b07b93:	62 91 7c 08 5c c6    	vsubps xmm0,xmm0,xmm30
  b07b99:	62 63 75 28 18 f0 01 	vinsertf32x4 ymm30,ymm1,xmm0,0x1
  b07ba0:	c5 94 5c ce          	vsubps ymm1,ymm13,ymm6
  b07ba4:	c5 a4 5c ed          	vsubps ymm5,ymm11,ymm5
  b07ba8:	c5 8c 5c f7          	vsubps ymm6,ymm14,ymm7
  b07bac:	c5 ac 5c e4          	vsubps ymm4,ymm10,ymm4
  b07bb0:	c5 b4 5c db          	vsubps ymm3,ymm9,ymm3
  b07bb4:	c5 d4 58 c6          	vaddps ymm0,ymm5,ymm6
  b07bb8:	62 91 7c 28 59 f8    	vmulps ymm7,ymm0,ymm24
  b07bbe:	c5 dc 5c c3          	vsubps ymm0,ymm4,ymm3
  b07bc2:	62 11 7c 28 59 c8    	vmulps ymm9,ymm0,ymm24
  b07bc8:	62 31 14 20 5c d0    	vsubps ymm10,ymm29,ymm16
  b07bce:	c5 ac 58 c1          	vaddps ymm0,ymm10,ymm1
  b07bd2:	c5 34 58 df          	vaddps ymm11,ymm9,ymm7
  b07bd6:	c5 24 58 e8          	vaddps ymm13,ymm11,ymm0
  b07bda:	c4 c1 78 5c c3       	vsubps xmm0,xmm0,xmm11
  b07bdf:	c4 e3 15 18 c0 01    	vinsertf128 ymm0,ymm13,xmm0,0x1
  b07be5:	c4 c1 74 5c ca       	vsubps ymm1,ymm1,ymm10
  b07bea:	c5 cc 5c ed          	vsubps ymm5,ymm6,ymm5
  b07bee:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  b07bf2:	62 91 54 28 59 e0    	vmulps ymm4,ymm5,ymm24
  b07bf8:	62 91 64 28 59 d8    	vmulps ymm3,ymm3,ymm24
  b07bfe:	c5 dc 58 eb          	vaddps ymm5,ymm4,ymm3
  b07c02:	c5 f4 58 f5          	vaddps ymm6,ymm1,ymm5
  b07c06:	c5 f0 5c cd          	vsubps xmm1,xmm1,xmm5
  b07c0a:	c4 e3 4d 18 c9 01    	vinsertf128 ymm1,ymm6,xmm1,0x1
  b07c10:	62 b1 14 20 58 e8    	vaddps ymm5,ymm29,ymm16
  b07c16:	c5 bc 58 d2          	vaddps ymm2,ymm8,ymm2
  b07c1a:	62 91 34 20 58 f3    	vaddps ymm6,ymm25,ymm27
  b07c20:	c5 4c 58 c5          	vaddps ymm8,ymm6,ymm5
  b07c24:	c5 3c 58 d2          	vaddps ymm10,ymm8,ymm2
  b07c28:	c5 b8 5c d2          	vsubps xmm2,xmm8,xmm2
  b07c2c:	c4 e3 2d 18 d2 01    	vinsertf128 ymm2,ymm10,xmm2,0x1
  b07c32:	c4 41 1c 5c c7       	vsubps ymm8,ymm12,ymm15
  b07c37:	c5 cc 5c ed          	vsubps ymm5,ymm6,ymm5
  b07c3b:	c5 bc 58 f5          	vaddps ymm6,ymm8,ymm5
  b07c3f:	c4 c1 50 5c e8       	vsubps xmm5,xmm5,xmm8
  b07c44:	c4 e3 4d 18 ed 01    	vinsertf128 ymm5,ymm6,xmm5,0x1
  b07c4a:	62 91 04 20 5c f2    	vsubps ymm6,ymm31,ymm26
  b07c50:	62 11 34 20 5c c3    	vsubps ymm8,ymm25,ymm27
  b07c56:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  b07c5a:	c5 bc 58 e6          	vaddps ymm4,ymm8,ymm6
  b07c5e:	c5 5c 58 d3          	vaddps ymm10,ymm4,ymm3
  b07c62:	c5 d8 5c db          	vsubps xmm3,xmm4,xmm3
  b07c66:	c4 e3 2d 18 db 01    	vinsertf128 ymm3,ymm10,xmm3,0x1
  b07c6c:	c5 bc 5c e6          	vsubps ymm4,ymm8,ymm6
  b07c70:	c5 b4 5c f7          	vsubps ymm6,ymm9,ymm7
  b07c74:	c5 dc 58 fe          	vaddps ymm7,ymm4,ymm6
  b07c78:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  b07c7c:	c4 e3 45 18 e4 01    	vinsertf128 ymm4,ymm7,xmm4,0x1
  b07c82:	62 91 9d 20 15 f6    	vunpckhpd ymm6,ymm28,ymm30
  b07c88:	c5 fd 15 f9          	vunpckhpd ymm7,ymm0,ymm1
  b07c8c:	c5 4c c6 c7 dd       	vshufps ymm8,ymm6,ymm7,0xdd
  b07c91:	c5 cc c6 f7 88       	vshufps ymm6,ymm6,ymm7,0x88
  b07c96:	c5 ed 15 fd          	vunpckhpd ymm7,ymm2,ymm5
  b07c9a:	c5 65 15 cc          	vunpckhpd ymm9,ymm3,ymm4
  b07c9e:	c4 41 44 c6 d1 dd    	vshufps ymm10,ymm7,ymm9,0xdd
  b07ca4:	c4 c1 44 c6 f9 88    	vshufps ymm7,ymm7,ymm9,0x88
  b07caa:	62 11 9d 20 14 ce    	vunpcklpd ymm9,ymm28,ymm30
  b07cb0:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b07cb4:	c5 ed 14 cd          	vunpcklpd ymm1,ymm2,ymm5
  b07cb8:	c5 e5 14 d4          	vunpcklpd ymm2,ymm3,ymm4
  b07cbc:	c5 b4 c6 d8 dd       	vshufps ymm3,ymm9,ymm0,0xdd
  b07cc1:	c5 b4 c6 c0 88       	vshufps ymm0,ymm9,ymm0,0x88
  b07cc6:	c5 f4 c6 e2 dd       	vshufps ymm4,ymm1,ymm2,0xdd
  b07ccb:	c5 f4 c6 ca 88       	vshufps ymm1,ymm1,ymm2,0x88
  b07cd0:	62 63 7d 28 04 44 24 	vpermilps ymm24,YMMWORD PTR [rsp+0x60],0xd8
  b07cd7:	03 d8 
  b07cd9:	62 21 74 20 c6 f1 d8 	vshufps ymm30,ymm17,ymm17,0xd8
  b07ce0:	62 b1 6c 20 c6 d2 d8 	vshufps ymm2,ymm18,ymm18,0xd8
  b07ce7:	c5 fc 29 54 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm2
  b07ced:	62 21 64 20 c6 d3 d8 	vshufps ymm26,ymm19,ymm19,0xd8
  b07cf4:	62 21 5c 20 c6 cc d8 	vshufps ymm25,ymm20,ymm20,0xd8
  b07cfb:	62 21 54 20 c6 fd d8 	vshufps ymm31,ymm21,ymm21,0xd8
  b07d02:	62 a1 4c 20 c6 ce d8 	vshufps ymm17,ymm22,ymm22,0xd8
  b07d09:	62 a1 44 20 c6 ff d8 	vshufps ymm23,ymm23,ymm23,0xd8
  b07d10:	62 c1 3c 28 c6 d0 d8 	vshufps ymm18,ymm8,ymm8,0xd8
  b07d17:	62 c1 2c 28 c6 da d8 	vshufps ymm19,ymm10,ymm10,0xd8
  b07d1e:	62 e1 4c 28 c6 f6 d8 	vshufps ymm22,ymm6,ymm6,0xd8
  b07d25:	62 61 44 28 c6 df d8 	vshufps ymm27,ymm7,ymm7,0xd8
  b07d2c:	62 61 64 28 c6 e3 d8 	vshufps ymm28,ymm3,ymm3,0xd8
  b07d33:	62 61 5c 28 c6 ec d8 	vshufps ymm29,ymm4,ymm4,0xd8
  b07d3a:	62 e1 7c 28 c6 e0 d8 	vshufps ymm20,ymm0,ymm0,0xd8
  b07d41:	62 e1 74 28 c6 e9 d8 	vshufps ymm21,ymm1,ymm1,0xd8
  b07d48:	c5 fc 28 84 24 00 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x100]
  b07d4f:	00 00 
  b07d51:	c4 e3 7d 18 84 24 20 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rsp+0x120],0x1
  b07d58:	01 00 00 01 
  b07d5c:	c5 fc 28 8c 24 40 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x140]
  b07d63:	00 00 
  b07d65:	c4 e3 75 18 8c 24 60 	vinsertf128 ymm1,ymm1,XMMWORD PTR [rsp+0x160],0x1
  b07d6c:	01 00 00 01 
  b07d70:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  b07d74:	c5 fc 28 9c 24 80 01 	vmovaps ymm3,YMMWORD PTR [rsp+0x180]
  b07d7b:	00 00 
  b07d7d:	c4 e3 65 18 9c 24 a0 	vinsertf128 ymm3,ymm3,XMMWORD PTR [rsp+0x1a0],0x1
  b07d84:	01 00 00 01 
  b07d88:	c5 fc 28 a4 24 c0 01 	vmovaps ymm4,YMMWORD PTR [rsp+0x1c0]
  b07d8f:	00 00 
  b07d91:	c4 e3 5d 18 ac 24 e0 	vinsertf128 ymm5,ymm4,XMMWORD PTR [rsp+0x1e0],0x1
  b07d98:	01 00 00 01 
  b07d9c:	c5 e5 15 e5          	vunpckhpd ymm4,ymm3,ymm5
  b07da0:	c5 ec c6 f4 dd       	vshufps ymm6,ymm2,ymm4,0xdd
  b07da5:	c5 4c c6 ee d8       	vshufps ymm13,ymm6,ymm6,0xd8
  b07daa:	c5 fc 28 b4 24 00 02 	vmovaps ymm6,YMMWORD PTR [rsp+0x200]
  b07db1:	00 00 
  b07db3:	c4 e3 4d 18 b4 24 20 	vinsertf128 ymm6,ymm6,XMMWORD PTR [rsp+0x220],0x1
  b07dba:	02 00 00 01 
  b07dbe:	c5 fc 28 bc 24 80 00 	vmovaps ymm7,YMMWORD PTR [rsp+0x80]
  b07dc5:	00 00 
  b07dc7:	c4 63 45 18 44 24 20 	vinsertf128 ymm8,ymm7,XMMWORD PTR [rsp+0x20],0x1
  b07dce:	01 
  b07dcf:	c4 c1 4d 15 f8       	vunpckhpd ymm7,ymm6,ymm8
  b07dd4:	c5 7c 28 8c 24 a0 00 	vmovaps ymm9,YMMWORD PTR [rsp+0xa0]
  b07ddb:	00 00 
  b07ddd:	c4 63 35 18 8c 24 c0 	vinsertf128 ymm9,ymm9,XMMWORD PTR [rsp+0xc0],0x1
  b07de4:	00 00 00 01 
  b07de8:	c5 7c 28 94 24 e0 00 	vmovaps ymm10,YMMWORD PTR [rsp+0xe0]
  b07def:	00 00 
  b07df1:	c4 63 2d 18 54 24 40 	vinsertf128 ymm10,ymm10,XMMWORD PTR [rsp+0x40],0x1
  b07df8:	01 
  b07df9:	c4 41 35 15 da       	vunpckhpd ymm11,ymm9,ymm10
  b07dfe:	c4 41 44 c6 e3 dd    	vshufps ymm12,ymm7,ymm11,0xdd
  b07e04:	c4 41 1c c6 f4 d8    	vshufps ymm14,ymm12,ymm12,0xd8
  b07e0a:	c5 ec c6 d4 88       	vshufps ymm2,ymm2,ymm4,0x88
  b07e0f:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b07e14:	c4 c1 44 c6 e3 88    	vshufps ymm4,ymm7,ymm11,0x88
  b07e1a:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b07e1f:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b07e23:	c5 e5 14 cd          	vunpcklpd ymm1,ymm3,ymm5
  b07e27:	c5 fc c6 d9 dd       	vshufps ymm3,ymm0,ymm1,0xdd
  b07e2c:	c5 e4 c6 fb d8       	vshufps ymm7,ymm3,ymm3,0xd8
  b07e31:	c4 c1 4d 14 d8       	vunpcklpd ymm3,ymm6,ymm8
  b07e36:	c4 c1 35 14 ea       	vunpcklpd ymm5,ymm9,ymm10
  b07e3b:	c5 e4 c6 f5 dd       	vshufps ymm6,ymm3,ymm5,0xdd
  b07e40:	c5 4c c6 ce d8       	vshufps ymm9,ymm6,ymm6,0xd8
  b07e45:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  b07e4a:	62 e1 7c 28 c6 c0 d8 	vshufps ymm16,ymm0,ymm0,0xd8
  b07e51:	c5 e4 c6 c5 88       	vshufps ymm0,ymm3,ymm5,0x88
  b07e56:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b07e5b:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  b07e61:	c5 7c 10 62 40       	vmovups ymm12,YMMWORD PTR [rdx+0x40]
  b07e66:	c5 fc 10 4a 60       	vmovups ymm1,YMMWORD PTR [rdx+0x60]
  b07e6b:	c5 fc 10 b2 80 00 00 	vmovups ymm6,YMMWORD PTR [rdx+0x80]
  b07e72:	00 
  b07e73:	c5 fc 10 aa a0 00 00 	vmovups ymm5,YMMWORD PTR [rdx+0xa0]
  b07e7a:	00 
  b07e7b:	c5 7c 10 ba c0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xc0]
  b07e82:	00 
  b07e83:	c5 7c 10 82 80 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x180]
  b07e8a:	00 
  b07e8b:	c5 7c 10 92 a0 01 00 	vmovups ymm10,YMMWORD PTR [rdx+0x1a0]
  b07e92:	00 
  b07e93:	62 d1 04 20 59 d8    	vmulps ymm3,ymm31,ymm8
  b07e99:	62 d2 0d 20 bc da    	vfnmadd231ps ymm3,ymm30,ymm10
  b07e9f:	62 51 0c 20 59 c0    	vmulps ymm8,ymm30,ymm8
  b07ea5:	62 61 7c 28 10 72 07 	vmovups ymm30,YMMWORD PTR [rdx+0xe0]
  b07eac:	62 52 05 20 b8 c2    	vfmadd231ps ymm8,ymm31,ymm10
  b07eb2:	62 61 7c 28 10 7a 08 	vmovups ymm31,YMMWORD PTR [rdx+0x100]
  b07eb9:	c4 41 14 59 df       	vmulps ymm11,ymm13,ymm15
  b07ebe:	62 12 0d 28 bc de    	vfnmadd231ps ymm11,ymm14,ymm30
  b07ec4:	c4 41 0c 59 f7       	vmulps ymm14,ymm14,ymm15
  b07ec9:	c5 7c 10 ba 40 02 00 	vmovups ymm15,YMMWORD PTR [rdx+0x240]
  b07ed0:	00 
  b07ed1:	62 12 15 28 b8 f6    	vfmadd231ps ymm14,ymm13,ymm30
  b07ed7:	62 61 7c 28 10 72 13 	vmovups ymm30,YMMWORD PTR [rdx+0x260]
  b07ede:	62 51 1c 20 59 ef    	vmulps ymm13,ymm28,ymm15
  b07ee4:	62 12 15 20 bc ee    	vfnmadd231ps ymm13,ymm29,ymm30
  b07eea:	62 51 14 20 59 ff    	vmulps ymm15,ymm29,ymm15
  b07ef0:	62 61 7c 28 10 6a 09 	vmovups ymm29,YMMWORD PTR [rdx+0x120]
  b07ef7:	62 12 1d 20 b8 fe    	vfmadd231ps ymm15,ymm28,ymm30
  b07efd:	62 61 7c 28 10 72 0a 	vmovups ymm30,YMMWORD PTR [rdx+0x140]
  b07f04:	62 01 44 20 59 e7    	vmulps ymm28,ymm23,ymm31
  b07f0a:	62 02 2d 20 bc e5    	vfnmadd231ps ymm28,ymm26,ymm29
  b07f10:	62 01 2c 20 59 d7    	vmulps ymm26,ymm26,ymm31
  b07f16:	62 61 7c 28 10 7a 14 	vmovups ymm31,YMMWORD PTR [rdx+0x280]
  b07f1d:	62 02 45 20 b8 d5    	vfmadd231ps ymm26,ymm23,ymm29
  b07f23:	62 61 7c 28 10 6a 15 	vmovups ymm29,YMMWORD PTR [rdx+0x2a0]
  b07f2a:	62 91 4c 20 59 c7    	vmulps ymm0,ymm22,ymm31
  b07f30:	62 92 25 20 bc c5    	vfnmadd231ps ymm0,ymm27,ymm29
  b07f36:	62 81 24 20 59 ff    	vmulps ymm23,ymm27,ymm31
  b07f3c:	62 61 7c 28 10 5a 0e 	vmovups ymm27,YMMWORD PTR [rdx+0x1c0]
  b07f43:	62 82 4d 20 b8 fd    	vfmadd231ps ymm23,ymm22,ymm29
  b07f49:	62 61 7c 28 10 6a 0f 	vmovups ymm29,YMMWORD PTR [rdx+0x1e0]
  b07f50:	62 81 34 20 59 f3    	vmulps ymm22,ymm25,ymm27
  b07f56:	62 82 3d 20 bc f5    	vfnmadd231ps ymm22,ymm24,ymm29
  b07f5c:	62 01 3c 20 59 c3    	vmulps ymm24,ymm24,ymm27
  b07f62:	62 61 7c 28 10 5a 0b 	vmovups ymm27,YMMWORD PTR [rdx+0x160]
  b07f69:	62 02 35 20 b8 c5    	vfmadd231ps ymm24,ymm25,ymm29
  b07f6f:	62 61 7c 28 10 4a 10 	vmovups ymm25,YMMWORD PTR [rdx+0x200]
  b07f76:	62 41 44 28 59 ec    	vmulps ymm29,ymm7,ymm12
  b07f7c:	62 62 35 28 bc e9    	vfnmadd231ps ymm29,ymm9,ymm1
  b07f82:	c4 41 34 59 cc       	vmulps ymm9,ymm9,ymm12
  b07f87:	c5 7c 10 a2 20 02 00 	vmovups ymm12,YMMWORD PTR [rdx+0x220]
  b07f8e:	00 
  b07f8f:	c4 62 45 b8 c9       	vfmadd231ps ymm9,ymm7,ymm1
  b07f94:	c5 fc 10 ba c0 02 00 	vmovups ymm7,YMMWORD PTR [rdx+0x2c0]
  b07f9b:	00 
  b07f9c:	62 01 5c 20 59 f9    	vmulps ymm31,ymm20,ymm25
  b07fa2:	62 42 55 20 bc fc    	vfnmadd231ps ymm31,ymm21,ymm12
  b07fa8:	62 81 54 20 59 e9    	vmulps ymm21,ymm21,ymm25
  b07fae:	62 61 7c 28 10 4a 17 	vmovups ymm25,YMMWORD PTR [rdx+0x2e0]
  b07fb5:	62 c2 5d 20 b8 ec    	vfmadd231ps ymm21,ymm20,ymm12
  b07fbb:	62 f1 7c 20 58 cb    	vaddps ymm1,ymm16,ymm3
  b07fc1:	c5 fc 29 4c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm1
  b07fc7:	62 e1 6c 28 59 e6    	vmulps ymm20,ymm2,ymm6
  b07fcd:	62 e2 5d 28 bc e5    	vfnmadd231ps ymm20,ymm4,ymm5
  b07fd3:	c5 dc 59 e6          	vmulps ymm4,ymm4,ymm6
  b07fd7:	c4 41 24 58 e5       	vaddps ymm12,ymm11,ymm13
  b07fdc:	c4 e2 6d b8 e5       	vfmadd231ps ymm4,ymm2,ymm5
  b07fe1:	c5 9c 58 c9          	vaddps ymm1,ymm12,ymm1
  b07fe5:	c5 fc 29 8c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm1
  b07fec:	00 00 
  b07fee:	62 f1 6c 20 59 ef    	vmulps ymm5,ymm18,ymm7
  b07ff4:	62 92 65 20 bc e9    	vfnmadd231ps ymm5,ymm19,ymm25
  b07ffa:	62 f1 64 20 59 ff    	vmulps ymm7,ymm19,ymm7
  b08000:	62 f1 1c 20 58 f0    	vaddps ymm6,ymm28,ymm0
  b08006:	62 92 6d 20 b8 f9    	vfmadd231ps ymm7,ymm18,ymm25
  b0800c:	62 01 4c 20 58 cd    	vaddps ymm25,ymm22,ymm29
  b08012:	62 91 74 20 59 d6    	vmulps ymm2,ymm17,ymm30
  b08018:	c5 fc 28 4c 24 60    	vmovaps ymm1,YMMWORD PTR [rsp+0x60]
  b0801e:	62 92 75 28 bc d3    	vfnmadd231ps ymm2,ymm1,ymm27
  b08024:	62 81 74 28 59 d6    	vmulps ymm18,ymm1,ymm30
  b0802a:	62 91 4c 28 58 c9    	vaddps ymm1,ymm6,ymm25
  b08030:	c5 fc 29 8c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm1
  b08037:	00 00 
  b08039:	62 82 75 20 b8 d3    	vfmadd231ps ymm18,ymm17,ymm27
  b0803f:	62 a1 04 20 58 cc    	vaddps ymm17,ymm31,ymm20
  b08045:	62 e1 54 28 58 da    	vaddps ymm19,ymm5,ymm2
  b0804b:	62 61 1c 20 5c e0    	vsubps ymm28,ymm28,ymm0
  b08051:	62 51 3c 20 58 d1    	vaddps ymm10,ymm24,ymm9
  b08057:	62 41 3c 20 5c d9    	vsubps ymm27,ymm24,ymm9
  b0805d:	62 21 74 20 58 f3    	vaddps ymm30,ymm17,ymm19
  b08063:	62 21 04 20 5c fc    	vsubps ymm31,ymm31,ymm20
  b08069:	62 31 44 28 58 ca    	vaddps ymm9,ymm7,ymm18
  b0806f:	62 a1 44 28 5c e2    	vsubps ymm20,ymm7,ymm18
  b08075:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  b0807b:	62 e1 3c 28 58 d0    	vaddps ymm18,ymm8,ymm0
  b08081:	62 e1 7c 20 5c c3    	vsubps ymm16,ymm16,ymm3
  b08087:	c4 c1 0c 58 df       	vaddps ymm3,ymm14,ymm15
  b0808c:	c4 41 0c 5c f7       	vsubps ymm14,ymm14,ymm15
  b08091:	62 31 2c 20 58 ff    	vaddps ymm15,ymm26,ymm23
  b08097:	62 21 2c 20 5c d7    	vsubps ymm26,ymm26,ymm23
  b0809d:	62 e1 54 20 58 fc    	vaddps ymm23,ymm21,ymm4
  b080a3:	62 a1 14 20 5c f6    	vsubps ymm22,ymm29,ymm22
  b080a9:	62 b1 2c 20 58 fe    	vaddps ymm7,ymm26,ymm22
  b080af:	62 f1 54 20 5c e4    	vsubps ymm4,ymm21,ymm4
  b080b5:	c5 ec 5c ed          	vsubps ymm5,ymm2,ymm5
  b080b9:	62 e1 5c 28 58 ed    	vaddps ymm21,ymm4,ymm5
  b080bf:	62 b1 44 28 5c d5    	vsubps ymm2,ymm7,ymm21
  b080c5:	c5 fc 29 94 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm2
  b080cc:	00 00 
  b080ce:	62 b1 44 28 58 d5    	vaddps ymm2,ymm7,ymm21
  b080d4:	c5 fc 29 94 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm2
  b080db:	00 00 
  b080dd:	62 81 1c 20 58 eb    	vaddps ymm21,ymm28,ymm27
  b080e3:	c4 c1 7c 5c c0       	vsubps ymm0,ymm0,ymm8
  b080e8:	62 31 04 20 58 c4    	vaddps ymm8,ymm31,ymm20
  b080ee:	c4 41 14 5c eb       	vsubps ymm13,ymm13,ymm11
  b080f3:	62 41 54 20 58 e8    	vaddps ymm29,ymm21,ymm8
  b080f9:	62 d1 54 20 5c d0    	vsubps ymm2,ymm21,ymm8
  b080ff:	c5 fc 29 54 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm2
  b08105:	62 11 74 28 58 c6    	vaddps ymm8,ymm1,ymm30
  b0810b:	62 91 4c 28 5c f1    	vsubps ymm6,ymm6,ymm25
  b08111:	c5 fc 28 94 24 80 00 	vmovaps ymm2,YMMWORD PTR [rsp+0x80]
  b08118:	00 00 
  b0811a:	62 41 6c 28 58 c8    	vaddps ymm25,ymm2,ymm8
  b08120:	62 a1 74 20 5c cb    	vsubps ymm17,ymm17,ymm19
  b08126:	62 a1 64 28 58 da    	vaddps ymm19,ymm3,ymm18
  b0812c:	c5 fc 28 4c 24 20    	vmovaps ymm1,YMMWORD PTR [rsp+0x20]
  b08132:	c4 41 74 5c dc       	vsubps ymm11,ymm1,ymm12
  b08137:	c4 c1 04 58 fa       	vaddps ymm7,ymm15,ymm10
  b0813c:	c4 c1 04 5c ca       	vsubps ymm1,ymm15,ymm10
  b08141:	62 51 44 20 58 d1    	vaddps ymm10,ymm23,ymm9
  b08147:	62 51 44 20 5c e1    	vsubps ymm12,ymm23,ymm9
  b0814d:	c4 41 74 5c cc       	vsubps ymm9,ymm1,ymm12
  b08152:	c5 7c 29 4c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm9
  b08158:	62 c1 74 28 58 ec    	vaddps ymm21,ymm1,ymm12
  b0815e:	c5 2c 58 e7          	vaddps ymm12,ymm10,ymm7
  b08162:	62 e1 6c 20 5c d3    	vsubps ymm18,ymm18,ymm3
  b08168:	62 b1 4c 28 58 d9    	vaddps ymm3,ymm6,ymm17
  b0816e:	62 21 4c 28 5c c1    	vsubps ymm24,ymm6,ymm17
  b08174:	62 51 7c 20 58 ce    	vaddps ymm9,ymm16,ymm14
  b0817a:	62 d1 7c 20 5c ce    	vsubps ymm1,ymm16,ymm14
  b08180:	62 c1 64 20 58 fc    	vaddps ymm23,ymm19,ymm12
  b08186:	62 81 1c 20 5c c3    	vsubps ymm16,ymm28,ymm27
  b0818c:	c4 62 7d 18 3d cb d2 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff56d2cb]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b08193:	56 ff 
  b08195:	62 21 04 20 5c dc    	vsubps ymm27,ymm31,ymm20
  b0819b:	62 e1 14 28 58 c8    	vaddps ymm17,ymm13,ymm0
  b081a1:	c4 c1 7c 5c c5       	vsubps ymm0,ymm0,ymm13
  b081a6:	c5 7c 29 fe          	vmovaps ymm6,ymm15
  b081aa:	62 31 2c 20 5c ee    	vsubps ymm13,ymm26,ymm22
  b081b0:	62 c1 7c 28 28 e7    	vmovaps ymm20,ymm15
  b081b6:	c5 dc 5c ed          	vsubps ymm5,ymm4,ymm5
  b081ba:	62 41 7c 28 28 d7    	vmovaps ymm26,ymm15
  b081c0:	c4 62 05 ac c2       	vfnmadd213ps ymm8,ymm15,ymm2
  b081c5:	62 01 7c 20 58 e3    	vaddps ymm28,ymm16,ymm27
  b081cb:	62 32 05 28 ac e3    	vfnmadd213ps ymm12,ymm15,ymm19
  b081d1:	62 11 74 28 58 f4    	vaddps ymm14,ymm1,ymm28
  b081d7:	62 62 05 28 ac e1    	vfnmadd213ps ymm28,ymm15,ymm1
  b081dd:	62 c1 7c 28 28 df    	vmovaps ymm19,ymm15
  b081e3:	c5 94 58 cd          	vaddps ymm1,ymm13,ymm5
  b081e7:	c4 62 75 ac f8       	vfnmadd213ps ymm15,ymm1,ymm0
  b081ec:	c5 fc 58 c9          	vaddps ymm1,ymm0,ymm1
  b081f0:	c4 c1 44 5c c2       	vsubps ymm0,ymm7,ymm10
  b081f5:	c4 e2 7d 18 3d d6 d0 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff56d0d6]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b081fc:	56 ff 
  b081fe:	62 d2 15 20 ac f1    	vfnmadd213ps ymm6,ymm29,ymm9
  b08204:	c5 c4 59 94 24 e0 00 	vmulps ymm2,ymm7,YMMWORD PTR [rsp+0xe0]
  b0820b:	00 00 
  b0820d:	c5 fc 28 a4 24 a0 00 	vmovaps ymm4,YMMWORD PTR [rsp+0xa0]
  b08214:	00 00 
  b08216:	62 01 5c 28 5c f6    	vsubps ymm30,ymm4,ymm30
  b0821c:	62 61 4c 28 58 fa    	vaddps ymm31,ymm6,ymm2
  b08222:	c5 7c 28 94 24 c0 00 	vmovaps ymm10,YMMWORD PTR [rsp+0xc0]
  b08229:	00 00 
  b0822b:	62 a2 2d 28 ac e1    	vfnmadd213ps ymm20,ymm10,ymm17
  b08231:	c5 c4 59 64 24 40    	vmulps ymm4,ymm7,YMMWORD PTR [rsp+0x40]
  b08237:	62 e1 4c 28 5c f2    	vsubps ymm22,ymm6,ymm2
  b0823d:	62 f1 5c 20 5c f4    	vsubps ymm6,ymm20,ymm4
  b08243:	62 f1 5c 20 58 d4    	vaddps ymm2,ymm20,ymm4
  b08249:	62 42 65 28 ac d3    	vfnmadd213ps ymm26,ymm3,ymm11
  b0824f:	62 e1 24 28 58 e3    	vaddps ymm20,ymm11,ymm3
  b08255:	62 a2 55 20 ac da    	vfnmadd213ps ymm19,ymm21,ymm18
  b0825b:	62 b1 6c 20 58 e5    	vaddps ymm4,ymm18,ymm21
  b08261:	c5 94 5c dd          	vsubps ymm3,ymm13,ymm5
  b08265:	62 91 7c 20 5c eb    	vsubps ymm5,ymm16,ymm27
  b0826b:	62 e1 44 28 59 44 24 	vmulps ymm16,ymm7,YMMWORD PTR [rsp+0x20]
  b08272:	01 
  b08273:	62 61 3c 20 59 c7    	vmulps ymm24,ymm24,ymm7
  b08279:	c5 fc 59 c7          	vmulps ymm0,ymm0,ymm7
  b0827d:	62 71 0c 20 59 ef    	vmulps ymm13,ymm30,ymm7
  b08283:	62 61 64 28 59 df    	vmulps ymm27,ymm3,ymm7
  b08289:	c5 d4 59 ef          	vmulps ymm5,ymm5,ymm7
  b0828d:	62 61 3c 28 58 f0    	vaddps ymm30,ymm8,ymm0
  b08293:	62 e1 3c 28 5c e8    	vsubps ymm21,ymm8,ymm0
  b08299:	c4 41 1c 5c dd       	vsubps ymm11,ymm12,ymm13
  b0829e:	c4 41 1c 58 c5       	vaddps ymm8,ymm12,ymm13
  b082a3:	62 b1 2c 20 5c c0    	vsubps ymm0,ymm26,ymm16
  b082a9:	62 81 34 28 58 d5    	vaddps ymm18,ymm9,ymm29
  b082af:	62 11 64 20 58 e8    	vaddps ymm13,ymm19,ymm24
  b082b5:	62 d1 74 20 58 da    	vaddps ymm3,ymm17,ymm10
  b082bb:	62 01 1c 20 58 eb    	vaddps ymm29,ymm28,ymm27
  b082c1:	62 a1 2c 20 58 c8    	vaddps ymm17,ymm26,ymm16
  b082c7:	c5 04 5c e5          	vsubps ymm12,ymm15,ymm5
  b082cb:	62 91 64 20 5c f8    	vsubps ymm7,ymm19,ymm24
  b082d1:	62 81 1c 20 5c c3    	vsubps ymm16,ymm28,ymm27
  b082d7:	c5 04 58 d5          	vaddps ymm10,ymm15,ymm5
  b082db:	c5 7c 28 0d bd d5 56 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff56d5bd]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  b082e2:	ff 
  b082e3:	62 31 7c 28 28 ff    	vmovaps ymm15,ymm23
  b082e9:	62 12 35 28 7f f9    	vpermt2ps ymm15,ymm9,ymm25
  b082ef:	62 e1 7c 28 28 1d e7 	vmovaps ymm19,YMMWORD PTR [rip+0xffffffffff56eee7]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b082f6:	ee 56 ff 
  b082f9:	62 82 65 20 7f f9    	vpermt2ps ymm23,ymm19,ymm25
  b082ff:	c5 fc 28 ee          	vmovaps ymm5,ymm6
  b08303:	62 92 35 28 7f ef    	vpermt2ps ymm5,ymm9,ymm31
  b08309:	62 92 65 20 7f f7    	vpermt2ps ymm6,ymm19,ymm31
  b0830f:	62 41 7c 28 28 c5    	vmovaps ymm24,ymm13
  b08315:	62 62 35 28 7f c0    	vpermt2ps ymm24,ymm9,ymm0
  b0831b:	62 72 65 20 7f e8    	vpermt2ps ymm13,ymm19,ymm0
  b08321:	c5 fc 28 c1          	vmovaps ymm0,ymm1
  b08325:	62 d2 35 28 7f c6    	vpermt2ps ymm0,ymm9,ymm14
  b0832b:	62 d2 65 20 7f ce    	vpermt2ps ymm1,ymm19,ymm14
  b08331:	c4 41 7c 28 f3       	vmovaps ymm14,ymm11
  b08336:	62 12 35 28 7f f6    	vpermt2ps ymm14,ymm9,ymm30
  b0833c:	62 12 65 20 7f de    	vpermt2ps ymm11,ymm19,ymm30
  b08342:	62 61 7c 28 28 ca    	vmovaps ymm25,ymm2
  b08348:	62 22 35 28 7f ce    	vpermt2ps ymm25,ymm9,ymm22
  b0834e:	62 b2 65 20 7f d6    	vpermt2ps ymm2,ymm19,ymm22
  b08354:	62 e1 7c 28 28 f4    	vmovaps ymm22,ymm4
  b0835a:	62 a2 35 28 7f f4    	vpermt2ps ymm22,ymm9,ymm20
  b08360:	62 b2 65 20 7f e4    	vpermt2ps ymm4,ymm19,ymm20
  b08366:	62 c1 7c 28 28 e4    	vmovaps ymm20,ymm12
  b0836c:	62 82 35 28 7f e5    	vpermt2ps ymm20,ymm9,ymm29
  b08372:	62 12 65 20 7f e5    	vpermt2ps ymm12,ymm19,ymm29
  b08378:	62 41 7c 28 28 d0    	vmovaps ymm26,ymm8
  b0837e:	62 22 35 28 7f d5    	vpermt2ps ymm26,ymm9,ymm21
  b08384:	62 32 65 20 7f c5    	vpermt2ps ymm8,ymm19,ymm21
  b0838a:	62 e1 7c 28 28 eb    	vmovaps ymm21,ymm3
  b08390:	62 a2 35 28 7f ea    	vpermt2ps ymm21,ymm9,ymm18
  b08396:	62 b2 65 20 7f da    	vpermt2ps ymm3,ymm19,ymm18
  b0839c:	62 e1 7c 28 28 d7    	vmovaps ymm18,ymm7
  b083a2:	62 a2 35 28 7f d1    	vpermt2ps ymm18,ymm9,ymm17
  b083a8:	62 b2 65 20 7f f9    	vpermt2ps ymm7,ymm19,ymm17
  b083ae:	62 32 2d 28 77 c8    	vpermi2ps ymm9,ymm10,ymm16
  b083b4:	62 32 65 20 7f d0    	vpermt2ps ymm10,ymm19,ymm16
  b083ba:	62 e1 7c 28 11 3e    	vmovups YMMWORD PTR [rsi],ymm23
  b083c0:	c5 7c 11 7e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm15
  b083c5:	c5 fc 11 76 40       	vmovups YMMWORD PTR [rsi+0x40],ymm6
  b083ca:	c5 fc 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm5
  b083cf:	c5 7c 11 ae 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm13
  b083d6:	00 
  b083d7:	62 61 7c 28 11 46 05 	vmovups YMMWORD PTR [rsi+0xa0],ymm24
  b083de:	c5 fc 11 8e c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm1
  b083e5:	00 
  b083e6:	c5 fc 11 86 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm0
  b083ed:	00 
  b083ee:	c5 7c 11 9e 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm11
  b083f5:	00 
  b083f6:	c5 7c 11 b6 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm14
  b083fd:	00 
  b083fe:	c5 fc 11 96 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm2
  b08405:	00 
  b08406:	62 61 7c 28 11 4e 0b 	vmovups YMMWORD PTR [rsi+0x160],ymm25
  b0840d:	c5 fc 11 a6 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm4
  b08414:	00 
  b08415:	62 e1 7c 28 11 76 0d 	vmovups YMMWORD PTR [rsi+0x1a0],ymm22
  b0841c:	c5 7c 11 a6 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm12
  b08423:	00 
  b08424:	62 e1 7c 28 11 66 0f 	vmovups YMMWORD PTR [rsi+0x1e0],ymm20
  b0842b:	c5 7c 11 86 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm8
  b08432:	00 
  b08433:	62 61 7c 28 11 56 11 	vmovups YMMWORD PTR [rsi+0x220],ymm26
  b0843a:	c5 fc 11 9e 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm3
  b08441:	00 
  b08442:	62 e1 7c 28 11 6e 13 	vmovups YMMWORD PTR [rsi+0x260],ymm21
  b08449:	c5 fc 11 be 80 02 00 	vmovups YMMWORD PTR [rsi+0x280],ymm7
  b08450:	00 
  b08451:	62 e1 7c 28 11 56 15 	vmovups YMMWORD PTR [rsi+0x2a0],ymm18
  b08458:	c5 7c 11 96 c0 02 00 	vmovups YMMWORD PTR [rsi+0x2c0],ymm10
  b0845f:	00 
  b08460:	c5 7c 11 8e e0 02 00 	vmovups YMMWORD PTR [rsi+0x2e0],ymm9
  b08467:	00 
  b08468:	48 89 ec             	mov    rsp,rbp
  b0846b:	5d                   	pop    rbp
  b0846c:	c5 f8 77             	vzeroupper
  b0846f:	c3                   	ret
