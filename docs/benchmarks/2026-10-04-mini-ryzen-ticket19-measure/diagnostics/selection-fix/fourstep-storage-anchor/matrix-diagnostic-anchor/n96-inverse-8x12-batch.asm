
target/ticket19/selection-fix/large-storage-crossover/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000bd2740 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  bd2740:	55                   	push   rbp
  bd2741:	48 89 e5             	mov    rbp,rsp
  bd2744:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  bd2748:	48 81 ec c0 01 00 00 	sub    rsp,0x1c0
  bd274f:	48 c1 e2 08          	shl    rdx,0x8
  bd2753:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  bd2757:	31 d2                	xor    edx,edx
  bd2759:	4c 8d 84 24 40 01 00 	lea    r8,[rsp+0x140]
  bd2760:	00 
  bd2761:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  bd2766:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  bd276d:	00 00 00 
  bd2770:	c6 84 24 40 01 00 00 	mov    BYTE PTR [rsp+0x140],0x0
  bd2777:	00 
  bd2778:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  bd277d:	c5 fc 10 14 17       	vmovups ymm2,YMMWORD PTR [rdi+rdx*1]
  bd2782:	c5 fc 10 6c 17 20    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x20]
  bd2788:	c5 ec c6 c5 88       	vshufps ymm0,ymm2,ymm5,0x88
  bd278d:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  bd2793:	c5 ec c6 d5 dd       	vshufps ymm2,ymm2,ymm5,0xdd
  bd2798:	c5 fc 10 6c 17 60    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x60]
  bd279e:	c5 fc 10 b4 17 80 00 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x80]
  bd27a5:	00 00 
  bd27a7:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  bd27ad:	c5 d4 c6 fe 88       	vshufps ymm7,ymm5,ymm6,0x88
  bd27b2:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  bd27b8:	c5 d4 c6 ee dd       	vshufps ymm5,ymm5,ymm6,0xdd
  bd27bd:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  bd27c3:	c5 fc 10 b4 17 c0 00 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0xc0]
  bd27ca:	00 00 
  bd27cc:	c5 7c 10 84 17 e0 00 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0xe0]
  bd27d3:	00 00 
  bd27d5:	c4 41 4c c6 c8 88    	vshufps ymm9,ymm6,ymm8,0x88
  bd27db:	c4 c3 fd 01 c9 d8    	vpermpd ymm1,ymm9,0xd8
  bd27e1:	c4 c1 4c c6 f0 dd    	vshufps ymm6,ymm6,ymm8,0xdd
  bd27e7:	c5 7c 10 84 17 20 01 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x120]
  bd27ee:	00 00 
  bd27f0:	c5 7c 10 94 17 40 01 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x140]
  bd27f7:	00 00 
  bd27f9:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  bd27ff:	c4 41 3c c6 da 88    	vshufps ymm11,ymm8,ymm10,0x88
  bd2805:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  bd280b:	c4 41 3c c6 c2 dd    	vshufps ymm8,ymm8,ymm10,0xdd
  bd2811:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  bd2817:	c5 7c 10 94 17 80 01 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x180]
  bd281e:	00 00 
  bd2820:	c5 7c 10 a4 17 a0 01 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x1a0]
  bd2827:	00 00 
  bd2829:	c4 41 2c c6 ec 88    	vshufps ymm13,ymm10,ymm12,0x88
  bd282f:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  bd2835:	c4 41 2c c6 d4 dd    	vshufps ymm10,ymm10,ymm12,0xdd
  bd283b:	c5 7c 10 a4 17 e0 01 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x1e0]
  bd2842:	00 00 
  bd2844:	c5 7c 10 b4 17 00 02 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x200]
  bd284b:	00 00 
  bd284d:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  bd2853:	c4 41 1c c6 fe 88    	vshufps ymm15,ymm12,ymm14,0x88
  bd2859:	c4 43 fd 01 ff d8    	vpermpd ymm15,ymm15,0xd8
  bd285f:	c4 41 1c c6 e6 dd    	vshufps ymm12,ymm12,ymm14,0xdd
  bd2865:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  bd286b:	c5 7c 10 b4 17 40 02 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x240]
  bd2872:	00 00 
  bd2874:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x260]
  bd287b:	13 
  bd287c:	62 a1 0c 28 c6 c8 88 	vshufps ymm17,ymm14,ymm16,0x88
  bd2883:	62 a3 fd 28 01 c9 d8 	vpermpd ymm17,ymm17,0xd8
  bd288a:	62 31 0c 28 c6 f0 dd 	vshufps ymm14,ymm14,ymm16,0xdd
  bd2891:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x2a0]
  bd2898:	15 
  bd2899:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x2c0]
  bd28a0:	16 
  bd28a1:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  bd28a7:	62 a1 7c 20 c6 da 88 	vshufps ymm19,ymm16,ymm18,0x88
  bd28ae:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  bd28b5:	62 a1 7c 20 c6 c2 dd 	vshufps ymm16,ymm16,ymm18,0xdd
  bd28bc:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  bd28c3:	62 c1 6c 28 58 ea    	vaddps ymm21,ymm2,ymm10
  bd28c9:	62 c1 4c 28 58 f6    	vaddps ymm22,ymm6,ymm14
  bd28cf:	62 c1 54 28 58 fc    	vaddps ymm23,ymm5,ymm12
  bd28d5:	62 21 54 20 58 c6    	vaddps ymm24,ymm21,ymm22
  bd28db:	62 21 3c 28 58 c8    	vaddps ymm25,ymm8,ymm16
  bd28e1:	62 41 7c 28 58 d5    	vaddps ymm26,ymm0,ymm13
  bd28e7:	62 21 74 28 58 d9    	vaddps ymm27,ymm1,ymm17
  bd28ed:	62 01 44 20 58 e1    	vaddps ymm28,ymm23,ymm25
  bd28f3:	62 01 2c 20 58 eb    	vaddps ymm29,ymm26,ymm27
  bd28f9:	62 41 44 28 58 f7    	vaddps ymm30,ymm7,ymm15
  bd28ff:	62 21 24 28 58 fb    	vaddps ymm31,ymm11,ymm19
  bd2905:	62 11 0c 20 58 cf    	vaddps ymm9,ymm30,ymm31
  bd290b:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  bd2910:	62 b1 74 28 5c d9    	vsubps ymm3,ymm1,ymm17
  bd2916:	c5 ec 58 cb          	vaddps ymm1,ymm2,ymm3
  bd291a:	c5 fc 29 8c 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm1
  bd2921:	00 00 
  bd2923:	62 11 3c 20 58 d4    	vaddps ymm10,ymm24,ymm28
  bd2929:	c4 c1 54 5c ec       	vsubps ymm5,ymm5,ymm12
  bd292e:	c4 c1 44 5c ff       	vsubps ymm7,ymm7,ymm15
  bd2933:	c5 54 58 ff          	vaddps ymm15,ymm5,ymm7
  bd2937:	62 51 14 20 58 e1    	vaddps ymm12,ymm29,ymm9
  bd293d:	62 31 24 28 5c db    	vsubps ymm11,ymm11,ymm19
  bd2943:	62 31 3c 28 5c c0    	vsubps ymm8,ymm8,ymm16
  bd2949:	62 c1 24 28 5c c0    	vsubps ymm16,ymm11,ymm8
  bd294f:	c4 e2 7d 18 25 cc cf 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff4ccfcc]        # 9f924 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2ff4>
  bd2956:	4c ff 
  bd2958:	62 e1 04 28 59 cc    	vmulps ymm17,ymm15,ymm4
  bd295e:	c4 c1 7c 5c cd       	vsubps ymm1,ymm0,ymm13
  bd2963:	c5 8c 5c f6          	vsubps ymm6,ymm14,ymm6
  bd2967:	c5 4c 58 f9          	vaddps ymm15,ymm6,ymm1
  bd296b:	62 e1 7c 20 59 d4    	vmulps ymm18,ymm16,ymm4
  bd2971:	c5 c4 5c c5          	vsubps ymm0,ymm7,ymm5
  bd2975:	62 e1 7c 28 59 dc    	vmulps ymm19,ymm0,ymm4
  bd297b:	c4 c1 3c 58 c3       	vaddps ymm0,ymm8,ymm11
  bd2980:	62 e1 7c 28 59 e4    	vmulps ymm20,ymm0,ymm4
  bd2986:	62 b1 54 20 5c ee    	vsubps ymm5,ymm21,ymm22
  bd298c:	62 91 0c 20 5c ff    	vsubps ymm7,ymm30,ymm31
  bd2992:	62 11 2c 20 5c c3    	vsubps ymm8,ymm26,ymm27
  bd2998:	c5 d4 58 c7          	vaddps ymm0,ymm5,ymm7
  bd299c:	62 31 34 20 5c f7    	vsubps ymm14,ymm25,ymm23
  bd29a2:	c5 6c 5c eb          	vsubps ymm13,ymm2,ymm3
  bd29a6:	c5 74 5c de          	vsubps ymm11,ymm1,ymm6
  bd29aa:	c4 c1 0c 58 d0       	vaddps ymm2,ymm14,ymm8
  bd29af:	62 91 3c 20 5c dc    	vsubps ymm3,ymm24,ymm28
  bd29b5:	62 d1 14 20 5c c9    	vsubps ymm1,ymm29,ymm9
  bd29bb:	c5 d4 5c e7          	vsubps ymm4,ymm5,ymm7
  bd29bf:	c4 41 3c 5c f6       	vsubps ymm14,ymm8,ymm14
  bd29c4:	c4 e3 2d 18 f3 01    	vinsertf128 ymm6,ymm10,xmm3,0x1
  bd29ca:	c4 e3 7d 18 fc 01    	vinsertf128 ymm7,ymm0,xmm4,0x1
  bd29d0:	c5 cd 14 ef          	vunpcklpd ymm5,ymm6,ymm7
  bd29d4:	c5 fc 29 6c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm5
  bd29da:	c5 cd 15 ef          	vunpckhpd ymm5,ymm6,ymm7
  bd29de:	c5 fc 29 6c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm5
  bd29e4:	c4 63 1d 18 c1 01    	vinsertf128 ymm8,ymm12,xmm1,0x1
  bd29ea:	62 c3 6d 28 18 c6 01 	vinsertf32x4 ymm16,ymm2,xmm14,0x1
  bd29f1:	62 b1 bd 28 14 e8    	vunpcklpd ymm5,ymm8,ymm16
  bd29f7:	c5 fc 29 ac 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm5
  bd29fe:	00 00 
  bd2a00:	62 a1 bd 28 15 c0    	vunpckhpd ymm16,ymm8,ymm16
  bd2a06:	c4 e3 1d 06 c9 31    	vperm2f128 ymm1,ymm12,ymm1,0x31
  bd2a0c:	c4 c3 6d 06 d6 31    	vperm2f128 ymm2,ymm2,ymm14,0x31
  bd2a12:	c4 e3 2d 06 db 31    	vperm2f128 ymm3,ymm10,ymm3,0x31
  bd2a18:	c5 f5 15 ea          	vunpckhpd ymm5,ymm1,ymm2
  bd2a1c:	c5 fd 29 ac 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm5
  bd2a23:	00 00 
  bd2a25:	c4 e3 7d 06 c4 31    	vperm2f128 ymm0,ymm0,ymm4,0x31
  bd2a2b:	c5 f8 10 64 17 50    	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x50]
  bd2a31:	c5 78 10 64 17 40    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x40]
  bd2a37:	c5 f5 14 ca          	vunpcklpd ymm1,ymm1,ymm2
  bd2a3b:	c5 fd 29 8c 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm1
  bd2a42:	00 00 
  bd2a44:	62 e1 1c 08 c6 ec 88 	vshufps xmm21,xmm12,xmm4,0x88
  bd2a4b:	62 61 1c 08 c6 c4 dd 	vshufps xmm24,xmm12,xmm4,0xdd
  bd2a52:	c5 f8 10 8c 17 b0 00 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0xb0]
  bd2a59:	00 00 
  bd2a5b:	c5 e5 15 d0          	vunpckhpd ymm2,ymm3,ymm0
  bd2a5f:	c5 fd 29 94 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm2
  bd2a66:	00 00 
  bd2a68:	c5 f8 10 94 17 a0 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0xa0]
  bd2a6f:	00 00 
  bd2a71:	62 e1 6c 08 c6 f1 88 	vshufps xmm22,xmm2,xmm1,0x88
  bd2a78:	62 e1 6c 08 c6 f9 dd 	vshufps xmm23,xmm2,xmm1,0xdd
  bd2a7f:	c5 e5 14 c0          	vunpcklpd ymm0,ymm3,ymm0
  bd2a83:	c5 fd 29 84 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm0
  bd2a8a:	00 00 
  bd2a8c:	c5 f8 10 84 17 10 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x110]
  bd2a93:	00 00 
  bd2a95:	c5 f8 10 8c 17 00 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x100]
  bd2a9c:	00 00 
  bd2a9e:	c5 f0 c6 d8 88       	vshufps xmm3,xmm1,xmm0,0x88
  bd2aa3:	62 b1 74 20 58 e2    	vaddps ymm4,ymm17,ymm18
  bd2aa9:	c5 f0 c6 f0 dd       	vshufps xmm6,xmm1,xmm0,0xdd
  bd2aae:	c5 f8 10 8c 17 70 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x170]
  bd2ab5:	00 00 
  bd2ab7:	c5 f8 10 94 17 60 01 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x160]
  bd2abe:	00 00 
  bd2ac0:	62 21 64 20 5c d4    	vsubps ymm26,ymm19,ymm20
  bd2ac6:	62 61 6c 08 c6 c9 88 	vshufps xmm25,xmm2,xmm1,0x88
  bd2acd:	c5 e8 c6 d1 dd       	vshufps xmm2,xmm2,xmm1,0xdd
  bd2ad2:	c5 f8 10 8c 17 d0 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x1d0]
  bd2ad9:	00 00 
  bd2adb:	62 a1 64 20 58 e4    	vaddps ymm20,ymm19,ymm20
  bd2ae1:	62 61 7c 08 10 5c 17 	vmovups xmm27,XMMWORD PTR [rdi+rdx*1+0x1c0]
  bd2ae8:	1c 
  bd2ae9:	62 e1 24 00 c6 d9 88 	vshufps xmm19,xmm27,xmm1,0x88
  bd2af0:	62 f1 24 00 c6 c9 dd 	vshufps xmm1,xmm27,xmm1,0xdd
  bd2af7:	62 a1 6c 20 5c c9    	vsubps ymm17,ymm18,ymm17
  bd2afd:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x230]
  bd2b04:	23 
  bd2b05:	62 61 7c 08 10 5c 17 	vmovups xmm27,XMMWORD PTR [rdi+rdx*1+0x220]
  bd2b0c:	22 
  bd2b0d:	62 21 24 00 c6 e2 88 	vshufps xmm28,xmm27,xmm18,0x88
  bd2b14:	c5 fc 28 84 24 00 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x100]
  bd2b1b:	00 00 
  bd2b1d:	62 61 7c 28 58 ec    	vaddps ymm29,ymm0,ymm4
  bd2b23:	62 21 24 00 c6 da dd 	vshufps xmm27,xmm27,xmm18,0xdd
  bd2b2a:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x290]
  bd2b31:	29 
  bd2b32:	62 61 7c 08 10 74 17 	vmovups xmm30,XMMWORD PTR [rdi+rdx*1+0x280]
  bd2b39:	28 
  bd2b3a:	c5 fc 5c e4          	vsubps ymm4,ymm0,ymm4
  bd2b3e:	62 21 0c 00 c6 fa 88 	vshufps xmm31,xmm30,xmm18,0x88
  bd2b45:	62 21 0c 00 c6 f2 dd 	vshufps xmm30,xmm30,xmm18,0xdd
  bd2b4c:	c5 78 10 8c 17 f0 02 	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x2f0]
  bd2b53:	00 00 
  bd2b55:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x2e0]
  bd2b5c:	2e 
  bd2b5d:	62 d1 6c 00 c6 c1 88 	vshufps xmm0,xmm18,xmm9,0x88
  bd2b64:	62 51 6c 00 c6 c9 dd 	vshufps xmm9,xmm18,xmm9,0xdd
  bd2b6b:	62 81 04 28 58 d2    	vaddps ymm18,ymm15,ymm26
  bd2b71:	62 01 04 28 5c d2    	vsubps ymm26,ymm15,ymm26
  bd2b77:	62 71 3c 20 58 f9    	vaddps ymm15,ymm24,ymm1
  bd2b7d:	62 f1 3c 20 5c f9    	vsubps ymm7,ymm24,ymm1
  bd2b83:	62 21 14 28 58 c4    	vaddps ymm24,ymm13,ymm20
  bd2b89:	62 31 14 28 5c ec    	vsubps ymm13,ymm13,ymm20
  bd2b8f:	62 81 64 28 58 e7    	vaddps ymm20,ymm3,ymm31
  bd2b95:	62 91 64 28 5c ef    	vsubps ymm5,ymm3,ymm31
  bd2b9b:	62 21 24 28 58 f9    	vaddps ymm31,ymm11,ymm17
  bd2ba1:	62 31 24 28 5c d9    	vsubps ymm11,ymm11,ymm17
  bd2ba7:	62 81 44 20 58 cb    	vaddps ymm17,ymm23,ymm27
  bd2bad:	62 81 44 20 5c fb    	vsubps ymm23,ymm23,ymm27
  bd2bb3:	62 03 6d 20 18 da 01 	vinsertf32x4 ymm27,ymm18,xmm26,0x1
  bd2bba:	62 83 ed 20 23 d2 03 	vshuff64x2 ymm18,ymm18,ymm26,0x3
  bd2bc1:	62 01 4c 20 58 d4    	vaddps ymm26,ymm22,ymm28
  bd2bc7:	62 81 4c 20 5c f4    	vsubps ymm22,ymm22,ymm28
  bd2bcd:	62 43 05 20 18 e3 01 	vinsertf32x4 ymm28,ymm31,xmm11,0x1
  bd2bd4:	62 53 85 20 23 db 03 	vshuff64x2 ymm11,ymm31,ymm11,0x3
  bd2bdb:	62 61 34 20 58 f8    	vaddps ymm31,ymm25,ymm0
  bd2be1:	62 f1 34 20 5c c0    	vsubps ymm0,ymm25,ymm0
  bd2be7:	62 63 15 20 18 cc 01 	vinsertf32x4 ymm25,ymm29,xmm4,0x1
  bd2bee:	62 f3 95 20 23 e4 03 	vshuff64x2 ymm4,ymm29,ymm4,0x3
  bd2bf5:	62 41 6c 28 58 e9    	vaddps ymm29,ymm2,ymm9
  bd2bfb:	c4 c1 6c 5c d1       	vsubps ymm2,ymm2,ymm9
  bd2c00:	62 53 3d 20 18 cd 01 	vinsertf32x4 ymm9,ymm24,xmm13,0x1
  bd2c07:	62 53 bd 20 23 ed 03 	vshuff64x2 ymm13,ymm24,ymm13,0x3
  bd2c0e:	62 21 54 20 58 c3    	vaddps ymm24,ymm21,ymm19
  bd2c14:	62 a1 54 20 5c db    	vsubps ymm19,ymm21,ymm19
  bd2c1a:	62 d1 b5 20 14 c9    	vunpcklpd ymm1,ymm25,ymm9
  bd2c20:	62 51 b5 20 15 c9    	vunpckhpd ymm9,ymm25,ymm9
  bd2c26:	62 81 4c 28 58 ee    	vaddps ymm21,ymm6,ymm30
  bd2c2c:	62 f1 0c 20 5c f6    	vsubps ymm6,ymm30,ymm6
  bd2c32:	62 01 a5 20 14 cc    	vunpcklpd ymm25,ymm27,ymm28
  bd2c38:	62 01 a5 20 15 dc    	vunpckhpd ymm27,ymm27,ymm28
  bd2c3e:	62 21 44 20 58 e6    	vaddps ymm28,ymm23,ymm22
  bd2c44:	62 a1 4c 20 5c f7    	vsubps ymm22,ymm22,ymm23
  bd2c4a:	62 c1 ed 20 15 fb    	vunpckhpd ymm23,ymm18,ymm11
  bd2c50:	62 c1 ed 20 14 d3    	vunpcklpd ymm18,ymm18,ymm11
  bd2c56:	62 61 7c 28 5c f2    	vsubps ymm30,ymm0,ymm2
  bd2c5c:	c5 ec 58 d0          	vaddps ymm2,ymm2,ymm0
  bd2c60:	c4 41 5d 15 dd       	vunpckhpd ymm11,ymm4,ymm13
  bd2c65:	c4 c1 5d 14 dd       	vunpcklpd ymm3,ymm4,ymm13
  bd2c6a:	62 31 04 28 58 ed    	vaddps ymm13,ymm15,ymm21
  bd2c70:	62 31 04 28 5c fd    	vsubps ymm15,ymm15,ymm21
  bd2c76:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  bd2c7c:	c4 41 7c c6 e1 88    	vshufps ymm12,ymm0,ymm9,0x88
  bd2c82:	c4 41 7c c6 f1 dd    	vshufps ymm14,ymm0,ymm9,0xdd
  bd2c88:	62 11 2c 20 58 c7    	vaddps ymm8,ymm26,ymm31
  bd2c8e:	62 11 2c 20 5c cf    	vsubps ymm9,ymm26,ymm31
  bd2c94:	62 01 7c 20 c6 d3 88 	vshufps ymm26,ymm16,ymm27,0x88
  bd2c9b:	62 01 7c 20 c6 db dd 	vshufps ymm27,ymm16,ymm27,0xdd
  bd2ca2:	62 a1 3c 20 58 ec    	vaddps ymm21,ymm24,ymm20
  bd2ca8:	62 21 3c 20 5c fc    	vsubps ymm31,ymm24,ymm20
  bd2cae:	c5 fc 28 84 24 c0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xc0]
  bd2cb5:	00 00 
  bd2cb7:	62 11 7c 28 c6 d1 dd 	vshufps ymm10,ymm0,ymm25,0xdd
  bd2cbe:	62 81 7c 28 c6 e1 88 	vshufps ymm20,ymm0,ymm25,0x88
  bd2cc5:	62 01 74 20 58 cd    	vaddps ymm25,ymm17,ymm29
  bd2ccb:	62 a1 14 20 5c c9    	vsubps ymm17,ymm29,ymm17
  bd2cd1:	c5 fc 28 44 24 60    	vmovaps ymm0,YMMWORD PTR [rsp+0x60]
  bd2cd7:	62 61 7c 28 c6 e9 dd 	vshufps ymm29,ymm0,ymm1,0xdd
  bd2cde:	62 e1 7c 28 c6 c1 88 	vshufps ymm16,ymm0,ymm1,0x88
  bd2ce5:	c5 c4 58 c5          	vaddps ymm0,ymm7,ymm5
  bd2ce9:	c5 c4 5c fd          	vsubps ymm7,ymm7,ymm5
  bd2ced:	62 62 7d 28 18 05 2d 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff4ccc2d]        # 9f924 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2ff4>
  bd2cf4:	cc 4c ff 
  bd2cf7:	62 91 4c 20 59 e8    	vmulps ymm5,ymm22,ymm24
  bd2cfd:	62 91 6c 28 59 d0    	vmulps ymm2,ymm2,ymm24
  bd2d03:	c5 d4 5c e2          	vsubps ymm4,ymm5,ymm2
  bd2d07:	c5 d4 58 ca          	vaddps ymm1,ymm5,ymm2
  bd2d0b:	c5 fc 28 94 24 a0 00 	vmovaps ymm2,YMMWORD PTR [rsp+0xa0]
  bd2d12:	00 00 
  bd2d14:	62 a1 6c 28 c6 f7 dd 	vshufps ymm22,ymm2,ymm23,0xdd
  bd2d1b:	62 b1 6c 28 c6 ef 88 	vshufps ymm5,ymm2,ymm23,0x88
  bd2d22:	62 b1 4c 28 58 d3    	vaddps ymm2,ymm6,ymm19
  bd2d28:	62 e1 64 20 5c fe    	vsubps ymm23,ymm19,ymm6
  bd2d2e:	62 91 1c 20 59 f0    	vmulps ymm6,ymm28,ymm24
  bd2d34:	62 81 0c 20 59 d8    	vmulps ymm19,ymm30,ymm24
  bd2d3a:	62 21 4c 28 58 e3    	vaddps ymm28,ymm6,ymm19
  bd2d40:	62 61 64 20 5c c6    	vsubps ymm24,ymm19,ymm6
  bd2d46:	c5 fc 28 b4 24 e0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xe0]
  bd2d4d:	00 00 
  bd2d4f:	62 a1 4c 28 c6 da dd 	vshufps ymm19,ymm6,ymm18,0xdd
  bd2d56:	62 a1 4c 28 c6 d2 88 	vshufps ymm18,ymm6,ymm18,0x88
  bd2d5d:	62 91 14 28 58 f1    	vaddps ymm6,ymm13,ymm25
  bd2d63:	62 11 14 08 5c e9    	vsubps xmm13,xmm13,xmm25
  bd2d69:	62 43 4d 28 18 f5 01 	vinsertf32x4 ymm30,ymm6,xmm13,0x1
  bd2d70:	62 91 7c 28 58 f4    	vaddps ymm6,ymm0,ymm28
  bd2d76:	62 91 7c 08 5c c4    	vsubps xmm0,xmm0,xmm28
  bd2d7c:	c4 e3 4d 18 c0 01    	vinsertf128 ymm0,ymm6,xmm0,0x1
  bd2d82:	c5 fc 28 b4 24 20 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x120]
  bd2d89:	00 00 
  bd2d8b:	c4 41 4c c6 eb dd    	vshufps ymm13,ymm6,ymm11,0xdd
  bd2d91:	62 41 4c 28 c6 cb 88 	vshufps ymm25,ymm6,ymm11,0x88
  bd2d98:	c4 41 04 58 d9       	vaddps ymm11,ymm15,ymm9
  bd2d9d:	c4 41 00 5c c9       	vsubps xmm9,xmm15,xmm9
  bd2da2:	c5 7c 28 bc 24 80 00 	vmovaps ymm15,YMMWORD PTR [rsp+0x80]
  bd2da9:	00 00 
  bd2dab:	c5 84 c6 f3 dd       	vshufps ymm6,ymm15,ymm3,0xdd
  bd2db0:	c5 fc 29 74 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm6
  bd2db6:	c5 04 c6 fb 88       	vshufps ymm15,ymm15,ymm3,0x88
  bd2dbb:	c4 43 25 18 d9 01    	vinsertf128 ymm11,ymm11,xmm9,0x1
  bd2dc1:	62 61 44 28 58 e1    	vaddps ymm28,ymm7,ymm1
  bd2dc7:	c5 c0 5c c9          	vsubps xmm1,xmm7,xmm1
  bd2dcb:	62 11 14 20 c6 cd d8 	vshufps ymm9,ymm29,ymm29,0xd8
  bd2dd2:	c4 c1 1c c6 f4 d8    	vshufps ymm6,ymm12,ymm12,0xd8
  bd2dd8:	62 f3 1d 20 18 f9 01 	vinsertf32x4 ymm7,ymm28,xmm1,0x1
  bd2ddf:	62 d1 8d 20 14 cb    	vunpcklpd ymm1,ymm30,ymm11
  bd2de5:	c4 c1 0c c6 de d8    	vshufps ymm3,ymm14,ymm14,0xd8
  bd2deb:	62 51 8d 20 15 db    	vunpckhpd ymm11,ymm30,ymm11
  bd2df1:	62 61 fd 28 14 f7    	vunpcklpd ymm30,ymm0,ymm7
  bd2df7:	c5 fd 15 c7          	vunpckhpd ymm0,ymm0,ymm7
  bd2dfb:	c4 41 2c c6 e2 d8    	vshufps ymm12,ymm10,ymm10,0xd8
  bd2e01:	c5 24 c6 f0 88       	vshufps ymm14,ymm11,ymm0,0x88
  bd2e06:	c5 a4 c6 c0 dd       	vshufps ymm0,ymm11,ymm0,0xdd
  bd2e0b:	62 d1 54 20 58 f8    	vaddps ymm7,ymm21,ymm8
  bd2e11:	62 11 2c 20 c6 d2 d8 	vshufps ymm10,ymm26,ymm26,0xd8
  bd2e18:	62 51 54 00 5c c0    	vsubps xmm8,xmm21,xmm8
  bd2e1e:	c5 6c 58 dc          	vaddps ymm11,ymm2,ymm4
  bd2e22:	c4 43 45 18 c0 01    	vinsertf128 ymm8,ymm7,xmm8,0x1
  bd2e28:	62 81 24 20 c6 eb d8 	vshufps ymm21,ymm27,ymm27,0xd8
  bd2e2f:	62 01 74 20 58 d7    	vaddps ymm26,ymm17,ymm31
  bd2e35:	c5 e8 5c d4          	vsubps xmm2,xmm2,xmm4
  bd2e39:	62 01 44 20 58 d8    	vaddps ymm27,ymm23,ymm24
  bd2e3f:	62 b1 5c 20 c6 e4 d8 	vshufps ymm4,ymm20,ymm20,0xd8
  bd2e46:	c5 fc 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm4
  bd2e4c:	c4 e3 25 18 d2 01    	vinsertf128 ymm2,ymm11,xmm2,0x1
  bd2e52:	62 91 74 28 c6 fe dd 	vshufps ymm7,ymm1,ymm30,0xdd
  bd2e59:	62 61 44 28 c6 e7 d8 	vshufps ymm28,ymm7,ymm7,0xd8
  bd2e60:	62 b1 7c 20 c6 e0 d8 	vshufps ymm4,ymm16,ymm16,0xd8
  bd2e67:	62 c1 0c 28 c6 e6 d8 	vshufps ymm20,ymm14,ymm14,0xd8
  bd2e6e:	c5 7c c6 d8 d8       	vshufps ymm11,ymm0,ymm0,0xd8
  bd2e73:	62 b1 04 00 5c c1    	vsubps xmm0,xmm31,xmm17
  bd2e79:	62 a1 4c 20 c6 ce d8 	vshufps ymm17,ymm22,ymm22,0xd8
  bd2e80:	62 f3 2d 20 18 c0 01 	vinsertf32x4 ymm0,ymm26,xmm0,0x1
  bd2e87:	62 11 44 00 5c f0    	vsubps xmm14,xmm23,xmm24
  bd2e8d:	62 53 25 20 18 f6 01 	vinsertf32x4 ymm14,ymm27,xmm14,0x1
  bd2e94:	62 e1 54 28 c6 f5 d8 	vshufps ymm22,ymm5,ymm5,0xd8
  bd2e9b:	62 e1 bd 28 14 c0    	vunpcklpd ymm16,ymm8,ymm0
  bd2ea1:	c5 3d 15 c0          	vunpckhpd ymm8,ymm8,ymm0
  bd2ea5:	62 c1 ed 28 14 fe    	vunpcklpd ymm23,ymm2,ymm14
  bd2eab:	62 b1 64 20 c6 eb d8 	vshufps ymm5,ymm19,ymm19,0xd8
  bd2eb2:	c4 c1 6d 15 d6       	vunpckhpd ymm2,ymm2,ymm14
  bd2eb7:	62 b1 7c 20 c6 c7 dd 	vshufps ymm0,ymm16,ymm23,0xdd
  bd2ebe:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  bd2ec3:	62 21 6c 20 c6 da d8 	vshufps ymm27,ymm18,ymm18,0xd8
  bd2eca:	c5 3c c6 f2 88       	vshufps ymm14,ymm8,ymm2,0x88
  bd2ecf:	62 41 0c 28 c6 ee d8 	vshufps ymm29,ymm14,ymm14,0xd8
  bd2ed6:	c5 bc c6 d2 dd       	vshufps ymm2,ymm8,ymm2,0xdd
  bd2edb:	62 41 14 28 c6 c5 d8 	vshufps ymm24,ymm13,ymm13,0xd8
  bd2ee2:	c5 6c c6 f2 d8       	vshufps ymm14,ymm2,ymm2,0xd8
  bd2ee7:	62 b1 7c 20 c6 d7 88 	vshufps ymm2,ymm16,ymm23,0x88
  bd2eee:	62 e1 6c 28 c6 d2 d8 	vshufps ymm18,ymm2,ymm2,0xd8
  bd2ef5:	62 81 34 20 c6 f9 d8 	vshufps ymm23,ymm25,ymm25,0xd8
  bd2efc:	62 91 74 28 c6 ce 88 	vshufps ymm1,ymm1,ymm30,0x88
  bd2f03:	62 e1 74 28 c6 d9 d8 	vshufps ymm19,ymm1,ymm1,0xd8
  bd2f0a:	62 61 7c 28 10 51 02 	vmovups ymm26,YMMWORD PTR [rcx+0x40]
  bd2f11:	62 41 04 28 c6 f7 d8 	vshufps ymm30,ymm15,ymm15,0xd8
  bd2f18:	62 61 7c 28 10 49 03 	vmovups ymm25,YMMWORD PTR [rcx+0x60]
  bd2f1f:	c5 fc 10 89 80 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x180]
  bd2f26:	00 
  bd2f27:	c5 fc 10 91 a0 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x1a0]
  bd2f2e:	00 
  bd2f2f:	62 71 44 20 59 f9    	vmulps ymm15,ymm23,ymm1
  bd2f35:	62 72 4d 20 bc fa    	vfnmadd231ps ymm15,ymm22,ymm2
  bd2f3b:	62 e1 4c 20 59 f1    	vmulps ymm22,ymm22,ymm1
  bd2f41:	c5 fc 10 89 40 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x240]
  bd2f48:	00 
  bd2f49:	62 e2 45 20 b8 f2    	vfmadd231ps ymm22,ymm23,ymm2
  bd2f4f:	c5 fc 10 91 60 02 00 	vmovups ymm2,YMMWORD PTR [rcx+0x260]
  bd2f56:	00 
  bd2f57:	62 e1 1c 20 59 f9    	vmulps ymm23,ymm28,ymm1
  bd2f5d:	62 61 7c 28 59 f9    	vmulps ymm31,ymm0,ymm1
  bd2f63:	62 e2 7d 28 bc fa    	vfnmadd231ps ymm23,ymm0,ymm2
  bd2f69:	c5 fc 10 81 c0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xc0]
  bd2f70:	00 
  bd2f71:	62 62 1d 20 b8 fa    	vfmadd231ps ymm31,ymm28,ymm2
  bd2f77:	c5 fc 10 89 e0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xe0]
  bd2f7e:	00 
  bd2f7f:	62 61 64 28 59 e0    	vmulps ymm28,ymm3,ymm0
  bd2f85:	62 62 55 20 bc e1    	vfnmadd231ps ymm28,ymm21,ymm1
  bd2f8b:	62 f1 54 20 59 c0    	vmulps ymm0,ymm21,ymm0
  bd2f91:	c5 7c 10 81 80 02 00 	vmovups ymm8,YMMWORD PTR [rcx+0x280]
  bd2f98:	00 
  bd2f99:	c4 e2 65 b8 c1       	vfmadd231ps ymm0,ymm3,ymm1
  bd2f9e:	c5 fc 10 89 a0 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x2a0]
  bd2fa5:	00 
  bd2fa6:	62 d1 5c 20 59 d0    	vmulps ymm2,ymm20,ymm8
  bd2fac:	62 c1 14 20 59 c0    	vmulps ymm16,ymm29,ymm8
  bd2fb2:	62 f2 15 20 bc d1    	vfnmadd231ps ymm2,ymm29,ymm1
  bd2fb8:	c5 fc 10 99 00 01 00 	vmovups ymm3,YMMWORD PTR [rcx+0x100]
  bd2fbf:	00 
  bd2fc0:	62 e2 5d 20 b8 c1    	vfmadd231ps ymm16,ymm20,ymm1
  bd2fc6:	c5 fc 10 89 20 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x120]
  bd2fcd:	00 
  bd2fce:	62 71 0c 20 59 c3    	vmulps ymm8,ymm30,ymm3
  bd2fd4:	62 72 25 20 bc c1    	vfnmadd231ps ymm8,ymm27,ymm1
  bd2fda:	62 e1 24 20 59 e3    	vmulps ymm20,ymm27,ymm3
  bd2fe0:	c5 fc 10 99 c0 01 00 	vmovups ymm3,YMMWORD PTR [rcx+0x1c0]
  bd2fe7:	00 
  bd2fe8:	62 e2 0d 20 b8 e1    	vfmadd231ps ymm20,ymm30,ymm1
  bd2fee:	c5 fc 10 89 e0 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x1e0]
  bd2ff5:	00 
  bd2ff6:	62 e1 3c 20 59 eb    	vmulps ymm21,ymm24,ymm3
  bd2ffc:	62 f1 74 20 59 db    	vmulps ymm3,ymm17,ymm3
  bd3002:	62 e2 75 20 bc e9    	vfnmadd231ps ymm21,ymm17,ymm1
  bd3008:	c5 7c 10 a9 80 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0x80]
  bd300f:	00 
  bd3010:	62 f2 3d 20 b8 d9    	vfmadd231ps ymm3,ymm24,ymm1
  bd3016:	c5 fc 10 89 a0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xa0]
  bd301d:	00 
  bd301e:	62 81 34 28 59 ca    	vmulps ymm17,ymm9,ymm26
  bd3024:	62 82 1d 28 bc c9    	vfnmadd231ps ymm17,ymm12,ymm25
  bd302a:	62 11 1c 28 59 e2    	vmulps ymm12,ymm12,ymm26
  bd3030:	62 61 7c 28 10 41 10 	vmovups ymm24,YMMWORD PTR [rcx+0x200]
  bd3037:	62 12 35 28 b8 e1    	vfmadd231ps ymm12,ymm9,ymm25
  bd303d:	c5 7c 10 89 20 02 00 	vmovups ymm9,YMMWORD PTR [rcx+0x220]
  bd3044:	00 
  bd3045:	62 01 64 20 59 c8    	vmulps ymm25,ymm19,ymm24
  bd304b:	62 01 6c 20 59 c0    	vmulps ymm24,ymm18,ymm24
  bd3051:	62 42 6d 20 bc c9    	vfnmadd231ps ymm25,ymm18,ymm9
  bd3057:	62 e1 7c 28 10 51 0a 	vmovups ymm18,YMMWORD PTR [rcx+0x140]
  bd305e:	62 42 65 20 b8 c1    	vfmadd231ps ymm24,ymm19,ymm9
  bd3064:	c5 7c 10 89 60 01 00 	vmovups ymm9,YMMWORD PTR [rcx+0x160]
  bd306b:	00 
  bd306c:	62 c1 4c 28 59 dd    	vmulps ymm19,ymm6,ymm13
  bd3072:	62 e2 2d 28 bc d9    	vfnmadd231ps ymm19,ymm10,ymm1
  bd3078:	c4 41 2c 59 ed       	vmulps ymm13,ymm10,ymm13
  bd307d:	c5 7c 10 91 c0 02 00 	vmovups ymm10,YMMWORD PTR [rcx+0x2c0]
  bd3084:	00 
  bd3085:	62 63 7d 28 04 54 24 	vpermilps ymm26,YMMWORD PTR [rsp+0x60],0xd8
  bd308c:	03 d8 
  bd308e:	c4 62 4d b8 e9       	vfmadd231ps ymm13,ymm6,ymm1
  bd3093:	c5 fc 10 89 e0 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x2e0]
  bd309a:	00 
  bd309b:	62 41 24 28 59 da    	vmulps ymm27,ymm11,ymm10
  bd30a1:	62 62 0d 28 bc d9    	vfnmadd231ps ymm27,ymm14,ymm1
  bd30a7:	c4 c1 0c 59 f2       	vmulps ymm6,ymm14,ymm10
  bd30ac:	62 41 5c 28 58 ef    	vaddps ymm29,ymm4,ymm15
  bd30b2:	c4 e2 25 b8 f1       	vfmadd231ps ymm6,ymm11,ymm1
  bd30b7:	62 b1 1c 20 58 cf    	vaddps ymm1,ymm28,ymm23
  bd30bd:	62 31 2c 20 59 da    	vmulps ymm11,ymm26,ymm18
  bd30c3:	c4 42 55 bc d9       	vfnmadd231ps ymm11,ymm5,ymm9
  bd30c8:	62 b1 54 28 59 ea    	vmulps ymm5,ymm5,ymm18
  bd30ce:	62 e1 3c 28 58 d2    	vaddps ymm18,ymm8,ymm2
  bd30d4:	62 d2 2d 20 b8 e9    	vfmadd231ps ymm5,ymm26,ymm9
  bd30da:	62 21 54 20 58 d1    	vaddps ymm26,ymm21,ymm17
  bd30e0:	62 21 34 20 58 f3    	vaddps ymm30,ymm25,ymm19
  bd30e6:	c5 bc 5c d2          	vsubps ymm2,ymm8,ymm2
  bd30ea:	c5 fc 29 94 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm2
  bd30f1:	00 00 
  bd30f3:	c5 1c 58 cb          	vaddps ymm9,ymm12,ymm3
  bd30f7:	c4 c1 64 5c fc       	vsubps ymm7,ymm3,ymm12
  bd30fc:	62 51 24 20 58 d3    	vaddps ymm10,ymm27,ymm11
  bd3102:	62 a1 34 20 5c db    	vsubps ymm19,ymm25,ymm19
  bd3108:	62 61 4c 28 58 cd    	vaddps ymm25,ymm6,ymm5
  bd310e:	c5 4c 5c c5          	vsubps ymm8,ymm6,ymm5
  bd3112:	62 91 7c 28 58 df    	vaddps ymm3,ymm0,ymm31
  bd3118:	c4 41 5c 5c ff       	vsubps ymm15,ymm4,ymm15
  bd311d:	62 b1 5c 20 58 e8    	vaddps ymm5,ymm20,ymm16
  bd3123:	62 01 7c 28 5c ff    	vsubps ymm31,ymm0,ymm31
  bd3129:	62 31 5c 20 5c f0    	vsubps ymm14,ymm20,ymm16
  bd312f:	62 e1 14 20 58 e1    	vaddps ymm20,ymm29,ymm1
  bd3135:	62 d1 3c 20 58 c5    	vaddps ymm0,ymm24,ymm13
  bd313b:	62 a1 74 20 5c ed    	vsubps ymm21,ymm17,ymm21
  bd3141:	62 41 3c 20 5c c5    	vsubps ymm24,ymm24,ymm13
  bd3147:	62 91 6c 20 58 d2    	vaddps ymm2,ymm18,ymm26
  bd314d:	c5 fc 29 94 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm2
  bd3154:	00 00 
  bd3156:	c5 fc 28 54 24 40    	vmovaps ymm2,YMMWORD PTR [rsp+0x40]
  bd315c:	62 71 4c 20 58 ea    	vaddps ymm13,ymm22,ymm2
  bd3162:	62 01 24 28 5c db    	vsubps ymm27,ymm11,ymm27
  bd3168:	62 b1 6c 28 5c e6    	vsubps ymm4,ymm2,ymm22
  bd316e:	62 51 0c 20 58 e2    	vaddps ymm12,ymm30,ymm10
  bd3174:	62 c1 54 28 58 f1    	vaddps ymm22,ymm5,ymm9
  bd317a:	62 81 44 20 5c fc    	vsubps ymm23,ymm23,ymm28
  bd3180:	62 01 7c 28 58 e1    	vaddps ymm28,ymm0,ymm25
  bd3186:	62 81 6c 20 5c ca    	vsubps ymm17,ymm18,ymm26
  bd318c:	c5 fc 28 b4 24 80 00 	vmovaps ymm6,YMMWORD PTR [rsp+0x80]
  bd3193:	00 00 
  bd3195:	c5 fc 28 d7          	vmovaps ymm2,ymm7
  bd3199:	c5 4c 58 df          	vaddps ymm11,ymm6,ymm7
  bd319d:	62 51 0c 20 5c d2    	vsubps ymm10,ymm30,ymm10
  bd31a3:	62 a1 0c 28 58 d5    	vaddps ymm18,ymm14,ymm21
  bd31a9:	62 e1 14 20 5c c1    	vsubps ymm16,ymm29,ymm1
  bd31af:	62 91 3c 20 58 cb    	vaddps ymm1,ymm24,ymm27
  bd31b5:	c4 41 54 5c c9       	vsubps ymm9,ymm5,ymm9
  bd31ba:	62 f1 6c 20 5c e9    	vsubps ymm5,ymm18,ymm1
  bd31c0:	c5 fc 29 ac 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm5
  bd31c7:	00 00 
  bd31c9:	62 61 6c 20 58 d1    	vaddps ymm26,ymm18,ymm1
  bd31cf:	62 c1 64 20 58 d0    	vaddps ymm18,ymm19,ymm8
  bd31d5:	62 91 7c 28 5c c1    	vsubps ymm0,ymm0,ymm25
  bd31db:	62 b1 24 28 58 fa    	vaddps ymm7,ymm11,ymm18
  bd31e1:	62 a1 24 28 5c d2    	vsubps ymm18,ymm11,ymm18
  bd31e7:	62 41 64 28 58 cd    	vaddps ymm25,ymm3,ymm13
  bd31ed:	62 61 14 28 5c eb    	vsubps ymm29,ymm13,ymm3
  bd31f3:	c5 b4 5c c8          	vsubps ymm1,ymm9,ymm0
  bd31f7:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  bd31fd:	c5 b4 58 d8          	vaddps ymm3,ymm9,ymm0
  bd3201:	62 11 04 28 58 cf    	vaddps ymm9,ymm15,ymm31
  bd3207:	62 01 04 28 5c f7    	vsubps ymm30,ymm15,ymm31
  bd320d:	62 41 74 20 58 fa    	vaddps ymm31,ymm17,ymm10
  bd3213:	62 d1 74 20 5c c2    	vsubps ymm0,ymm17,ymm10
  bd3219:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  bd321f:	c5 4c 5c da          	vsubps ymm11,ymm6,ymm2
  bd3223:	62 71 44 20 58 ec    	vaddps ymm13,ymm23,ymm4
  bd3229:	62 d1 64 20 5c e8    	vsubps ymm5,ymm19,ymm8
  bd322f:	c5 fc 28 8c 24 c0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xc0]
  bd3236:	00 00 
  bd3238:	c5 1c 58 d1          	vaddps ymm10,ymm12,ymm1
  bd323c:	62 b1 5c 28 5c e7    	vsubps ymm4,ymm4,ymm23
  bd3242:	62 81 4c 20 58 dc    	vaddps ymm19,ymm22,ymm28
  bd3248:	62 31 0c 28 5c f5    	vsubps ymm14,ymm14,ymm21
  bd324e:	62 51 5c 20 58 fa    	vaddps ymm15,ymm20,ymm10
  bd3254:	62 81 3c 20 5c eb    	vsubps ymm21,ymm24,ymm27
  bd325a:	c4 e2 7d 18 05 85 c7 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff4cc785]        # 9f9e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30b8>
  bd3261:	4c ff 
  bd3263:	c5 fc 28 f0          	vmovaps ymm6,ymm0
  bd3267:	62 32 7d 28 ac d4    	vfnmadd213ps ymm10,ymm0,ymm20
  bd326d:	62 a1 34 20 58 fb    	vaddps ymm23,ymm25,ymm19
  bd3273:	c5 fc 28 d7          	vmovaps ymm2,ymm7
  bd3277:	c4 c2 45 ac f1       	vfnmadd213ps ymm6,ymm7,ymm9
  bd327c:	62 c1 7c 28 28 c9    	vmovaps ymm17,ymm9
  bd3282:	62 81 4c 20 5c f4    	vsubps ymm22,ymm22,ymm28
  bd3288:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  bd328c:	62 62 7d 28 18 25 c6 	vbroadcastss ymm28,DWORD PTR [rip+0xffffffffff4cc5c6]        # 9f85c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2f2c>
  bd3293:	c5 4c ff 
  bd3296:	62 71 1c 20 59 44 24 	vmulps ymm8,ymm28,YMMWORD PTR [rsp+0xa0]
  bd329d:	05 
  bd329e:	62 d2 2d 20 ac fd    	vfnmadd213ps ymm7,ymm26,ymm13
  bd32a4:	62 11 6c 20 59 cc    	vmulps ymm9,ymm18,ymm28
  bd32aa:	62 82 7d 28 ac d9    	vfnmadd213ps ymm19,ymm0,ymm25
  bd32b0:	62 c1 4c 28 58 d0    	vaddps ymm18,ymm6,ymm8
  bd32b6:	c4 41 74 5c e4       	vsubps ymm12,ymm1,ymm12
  bd32bb:	62 e1 7c 28 28 e0    	vmovaps ymm20,ymm0
  bd32c1:	c4 c1 4c 5c f0       	vsubps ymm6,ymm6,ymm8
  bd32c6:	62 41 44 28 5c c1    	vsubps ymm24,ymm7,ymm9
  bd32cc:	62 a2 05 20 ac e0    	vfnmadd213ps ymm20,ymm31,ymm16
  bd32d2:	c5 34 58 cf          	vaddps ymm9,ymm9,ymm7
  bd32d6:	62 61 7c 28 28 c8    	vmovaps ymm25,ymm0
  bd32dc:	62 02 65 28 ac cd    	vfnmadd213ps ymm25,ymm3,ymm29
  bd32e2:	62 91 7c 20 58 ff    	vaddps ymm7,ymm16,ymm31
  bd32e8:	62 e1 24 28 58 c5    	vaddps ymm16,ymm11,ymm5
  bd32ee:	62 71 14 20 58 c3    	vaddps ymm8,ymm29,ymm3
  bd32f4:	62 21 0c 20 58 f8    	vaddps ymm31,ymm30,ymm16
  bd32fa:	62 82 7d 28 ac c6    	vfnmadd213ps ymm16,ymm0,ymm30
  bd3300:	62 21 0c 28 58 dd    	vaddps ymm27,ymm14,ymm21
  bd3306:	62 21 0c 28 5c ed    	vsubps ymm29,ymm14,ymm21
  bd330c:	62 81 5c 28 58 eb    	vaddps ymm21,ymm4,ymm27
  bd3312:	62 62 7d 28 ac dc    	vfnmadd213ps ymm27,ymm0,ymm4
  bd3318:	62 91 4c 20 59 e4    	vmulps ymm4,ymm22,ymm28
  bd331e:	c5 a4 5c dd          	vsubps ymm3,ymm11,ymm5
  bd3322:	62 e1 2c 28 58 f4    	vaddps ymm22,ymm10,ymm4
  bd3328:	62 11 1c 28 59 e4    	vmulps ymm12,ymm12,ymm28
  bd332e:	62 61 2c 28 5c f4    	vsubps ymm30,ymm10,ymm4
  bd3334:	62 d1 64 20 5c e4    	vsubps ymm4,ymm19,ymm12
  bd333a:	62 51 64 20 58 f4    	vaddps ymm14,ymm19,ymm12
  bd3340:	62 71 74 20 58 d2    	vaddps ymm10,ymm17,ymm2
  bd3346:	62 f1 1c 20 59 6c 24 	vmulps ymm5,ymm28,YMMWORD PTR [rsp+0x60]
  bd334d:	03 
  bd334e:	62 11 14 28 58 e2    	vaddps ymm12,ymm13,ymm26
  bd3354:	62 f1 5c 20 5c cd    	vsubps ymm1,ymm20,ymm5
  bd335a:	62 71 1c 20 59 6c 24 	vmulps ymm13,ymm28,YMMWORD PTR [rsp+0x40]
  bd3361:	02 
  bd3362:	62 91 14 20 59 c4    	vmulps ymm0,ymm29,ymm28
  bd3368:	62 71 5c 20 58 dd    	vaddps ymm11,ymm20,ymm5
  bd336e:	62 c1 34 20 58 cd    	vaddps ymm17,ymm25,ymm13
  bd3374:	62 51 34 20 5c ed    	vsubps ymm13,ymm25,ymm13
  bd337a:	62 e1 7c 20 58 d8    	vaddps ymm19,ymm16,ymm0
  bd3380:	62 91 64 28 59 dc    	vmulps ymm3,ymm3,ymm28
  bd3386:	62 f1 7c 20 5c c0    	vsubps ymm0,ymm16,ymm0
  bd338c:	62 e1 24 20 5c c3    	vsubps ymm16,ymm27,ymm3
  bd3392:	62 f1 24 20 58 eb    	vaddps ymm5,ymm27,ymm3
  bd3398:	62 b1 7c 28 28 df    	vmovaps ymm3,ymm23
  bd339e:	62 e1 7c 28 28 25 78 	vmovaps ymm20,YMMWORD PTR [rip+0xffffffffff4cca78]        # 9fe20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x34f0>
  bd33a5:	ca 4c ff 
  bd33a8:	62 d2 5d 20 7f df    	vpermt2ps ymm3,ymm20,ymm15
  bd33ae:	62 61 7c 28 28 0d c8 	vmovaps ymm25,YMMWORD PTR [rip+0xffffffffff4ce3c8]        # a1780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4e50>
  bd33b5:	e3 4c ff 
  bd33b8:	62 c2 35 20 7f ff    	vpermt2ps ymm23,ymm25,ymm15
  bd33be:	62 e1 7c 28 11 3c 16 	vmovups YMMWORD PTR [rsi+rdx*1],ymm23
  bd33c5:	c5 fc 11 5c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm3
  bd33cb:	62 91 7c 28 28 d8    	vmovaps ymm3,ymm24
  bd33d1:	62 b2 5d 20 7f da    	vpermt2ps ymm3,ymm20,ymm18
  bd33d7:	62 22 35 20 7f c2    	vpermt2ps ymm24,ymm25,ymm18
  bd33dd:	62 61 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm24
  bd33e4:	02 
  bd33e5:	c5 fc 11 5c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm3
  bd33eb:	62 b1 7c 28 28 d9    	vmovaps ymm3,ymm17
  bd33f1:	62 f2 5d 20 7f d9    	vpermt2ps ymm3,ymm20,ymm1
  bd33f7:	62 e2 35 20 7f c9    	vpermt2ps ymm17,ymm25,ymm1
  bd33fd:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm17
  bd3404:	04 
  bd3405:	62 b1 7c 28 28 cd    	vmovaps ymm1,ymm21
  bd340b:	62 92 5d 20 7f cf    	vpermt2ps ymm1,ymm20,ymm31
  bd3411:	62 82 35 20 7f ef    	vpermt2ps ymm21,ymm25,ymm31
  bd3417:	c5 fc 11 9c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm3
  bd341e:	00 00 
  bd3420:	62 e1 7c 28 11 6c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm21
  bd3427:	06 
  bd3428:	c5 fc 11 8c 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm1
  bd342f:	00 00 
  bd3431:	c5 fc 28 cc          	vmovaps ymm1,ymm4
  bd3435:	62 b2 5d 20 7f ce    	vpermt2ps ymm1,ymm20,ymm22
  bd343b:	62 b2 35 20 7f e6    	vpermt2ps ymm4,ymm25,ymm22
  bd3441:	c5 fc 11 a4 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm4
  bd3448:	00 00 
  bd344a:	c5 fc 11 8c 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm1
  bd3451:	00 00 
  bd3453:	c5 7c 29 c9          	vmovaps ymm1,ymm9
  bd3457:	62 f2 5d 20 7f ce    	vpermt2ps ymm1,ymm20,ymm6
  bd345d:	62 72 35 20 7f ce    	vpermt2ps ymm9,ymm25,ymm6
  bd3463:	c5 7c 11 8c 16 40 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm9
  bd346a:	00 00 
  bd346c:	c5 fc 11 8c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm1
  bd3473:	00 00 
  bd3475:	c5 7c 29 c1          	vmovaps ymm1,ymm8
  bd3479:	62 f2 5d 20 7f cf    	vpermt2ps ymm1,ymm20,ymm7
  bd347f:	62 72 35 20 7f c7    	vpermt2ps ymm8,ymm25,ymm7
  bd3485:	c5 7c 11 84 16 80 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x180],ymm8
  bd348c:	00 00 
  bd348e:	62 b1 7c 28 28 d8    	vmovaps ymm3,ymm16
  bd3494:	62 b2 5d 20 7f db    	vpermt2ps ymm3,ymm20,ymm19
  bd349a:	62 a2 35 20 7f c3    	vpermt2ps ymm16,ymm25,ymm19
  bd34a0:	c5 fc 11 8c 16 a0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a0],ymm1
  bd34a7:	00 00 
  bd34a9:	62 e1 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm16
  bd34b0:	0e 
  bd34b1:	c5 fc 11 9c 16 e0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1e0],ymm3
  bd34b8:	00 00 
  bd34ba:	c5 7c 29 f1          	vmovaps ymm1,ymm14
  bd34be:	62 92 5d 20 7f ce    	vpermt2ps ymm1,ymm20,ymm30
  bd34c4:	62 12 35 20 7f f6    	vpermt2ps ymm14,ymm25,ymm30
  bd34ca:	c5 7c 11 b4 16 00 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x200],ymm14
  bd34d1:	00 00 
  bd34d3:	c5 fc 11 8c 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm1
  bd34da:	00 00 
  bd34dc:	c5 7c 29 e1          	vmovaps ymm1,ymm12
  bd34e0:	62 d2 5d 20 7f ca    	vpermt2ps ymm1,ymm20,ymm10
  bd34e6:	62 52 35 20 7f e2    	vpermt2ps ymm12,ymm25,ymm10
  bd34ec:	c5 7c 11 a4 16 40 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x240],ymm12
  bd34f3:	00 00 
  bd34f5:	c5 fc 11 8c 16 60 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x260],ymm1
  bd34fc:	00 00 
  bd34fe:	c5 7c 29 e9          	vmovaps ymm1,ymm13
  bd3502:	62 d2 5d 20 7f cb    	vpermt2ps ymm1,ymm20,ymm11
  bd3508:	62 52 35 20 7f eb    	vpermt2ps ymm13,ymm25,ymm11
  bd350e:	c5 7c 11 ac 16 80 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x280],ymm13
  bd3515:	00 00 
  bd3517:	c5 fc 28 d5          	vmovaps ymm2,ymm5
  bd351b:	62 f2 5d 20 7f d0    	vpermt2ps ymm2,ymm20,ymm0
  bd3521:	62 f2 35 20 7f e8    	vpermt2ps ymm5,ymm25,ymm0
  bd3527:	c5 fc 11 8c 16 a0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2a0],ymm1
  bd352e:	00 00 
  bd3530:	c5 fc 11 ac 16 c0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2c0],ymm5
  bd3537:	00 00 
  bd3539:	c5 fc 11 94 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm2
  bd3540:	00 00 
  bd3542:	48 81 c2 00 03 00 00 	add    rdx,0x300
  bd3549:	48 39 d0             	cmp    rax,rdx
  bd354c:	0f 85 1e f2 ff ff    	jne    bd2770 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  bd3552:	48 89 ec             	mov    rsp,rbp
  bd3555:	5d                   	pop    rbp
  bd3556:	c5 f8 77             	vzeroupper
  bd3559:	c3                   	ret
  bd355a:	cc                   	int3
  bd355b:	cc                   	int3
  bd355c:	cc                   	int3
  bd355d:	cc                   	int3
  bd355e:	cc                   	int3
  bd355f:	cc                   	int3
  bd3560:	cc                   	int3
  bd3561:	cc                   	int3
  bd3562:	cc                   	int3
  bd3563:	cc                   	int3
  bd3564:	cc                   	int3
  bd3565:	cc                   	int3
  bd3566:	cc                   	int3
  bd3567:	cc                   	int3
  bd3568:	cc                   	int3
  bd3569:	cc                   	int3
  bd356a:	cc                   	int3
  bd356b:	cc                   	int3
  bd356c:	cc                   	int3
  bd356d:	cc                   	int3
  bd356e:	cc                   	int3
  bd356f:	cc                   	int3
  bd3570:	cc                   	int3
  bd3571:	cc                   	int3
  bd3572:	cc                   	int3
  bd3573:	cc                   	int3
  bd3574:	cc                   	int3
  bd3575:	cc                   	int3
  bd3576:	cc                   	int3
  bd3577:	cc                   	int3
  bd3578:	cc                   	int3
  bd3579:	cc                   	int3
  bd357a:	cc                   	int3
  bd357b:	cc                   	int3
  bd357c:	cc                   	int3
  bd357d:	cc                   	int3
  bd357e:	cc                   	int3
  bd357f:	cc                   	int3
