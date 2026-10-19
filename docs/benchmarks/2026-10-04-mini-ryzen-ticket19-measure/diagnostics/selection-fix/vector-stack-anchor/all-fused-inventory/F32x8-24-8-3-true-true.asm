
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000072b580 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  72b580:	48 83 ec 28          	sub    rsp,0x28
  72b584:	48 c1 e2 06          	shl    rdx,0x6
  72b588:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  72b58c:	31 d2                	xor    edx,edx
  72b58e:	66 90                	xchg   ax,ax
  72b590:	c5 fb 10 44 17 10    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x10]
  72b596:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  72b59c:	c4 41 20 57 db       	vxorps xmm11,xmm11,xmm11
  72b5a1:	c4 c3 7d 0c cb c0    	vblendps ymm1,ymm0,ymm11,0xc0
  72b5a7:	c5 fb 10 44 17 28    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x28]
  72b5ad:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  72b5b3:	c4 43 7d 0c cb c0    	vblendps ymm9,ymm0,ymm11,0xc0
  72b5b9:	c5 fb 10 44 17 40    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x40]
  72b5bf:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  72b5c5:	c4 43 7d 0c c3 c0    	vblendps ymm8,ymm0,ymm11,0xc0
  72b5cb:	c5 f8 10 34 17       	vmovups xmm6,XMMWORD PTR [rdi+rdx*1]
  72b5d0:	c5 f8 10 7c 17 18    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x18]
  72b5d6:	c5 78 10 6c 17 30    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x30]
  72b5dc:	c5 f8 10 44 17 48    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x48]
  72b5e2:	c5 f8 29 04 24       	vmovaps XMMWORD PTR [rsp],xmm0
  72b5e7:	c5 fb 10 44 17 58    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x58]
  72b5ed:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  72b5f3:	c4 c3 7d 0c c3 c0    	vblendps ymm0,ymm0,ymm11,0xc0
  72b5f9:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  72b5ff:	c5 78 10 54 17 60    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x60]
  72b605:	c5 fb 10 44 17 70    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x70]
  72b60b:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  72b611:	c4 c3 7d 0c db c0    	vblendps ymm3,ymm0,ymm11,0xc0
  72b617:	c5 78 10 74 17 78    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x78]
  72b61d:	c5 fb 10 84 17 88 00 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x88]
  72b624:	00 00 
  72b626:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  72b62c:	c4 43 7d 0c fb c0    	vblendps ymm15,ymm0,ymm11,0xc0
  72b632:	c5 f8 10 94 17 90 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x90]
  72b639:	00 00 
  72b63b:	c5 fb 10 84 17 a0 00 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0xa0]
  72b642:	00 00 
  72b644:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  72b64a:	c4 c3 7d 0c c3 c0    	vblendps ymm0,ymm0,ymm11,0xc0
  72b650:	c5 78 10 a4 17 a8 00 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0xa8]
  72b657:	00 00 
  72b659:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  72b65f:	c5 c8 c6 e1 dd       	vshufps xmm4,xmm6,xmm1,0xdd
  72b664:	c5 fc 11 64 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm4
  72b66a:	c4 e3 7d 19 dc 01    	vextractf128 xmm4,ymm3,0x1
  72b670:	c5 c8 c6 c9 88       	vshufps xmm1,xmm6,xmm1,0x88
  72b675:	c5 fc 11 4c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm1
  72b67b:	c5 a8 c6 f4 dd       	vshufps xmm6,xmm10,xmm4,0xdd
  72b680:	c4 63 7d 19 c1 01    	vextractf128 xmm1,ymm8,0x1
  72b686:	c5 28 c6 d4 88       	vshufps xmm10,xmm10,xmm4,0x88
  72b68b:	c5 90 c6 d9 dd       	vshufps xmm3,xmm13,xmm1,0xdd
  72b690:	c5 fc 11 5c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm3
  72b696:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  72b69c:	c5 10 c6 c1 88       	vshufps xmm8,xmm13,xmm1,0x88
  72b6a1:	c5 68 c6 e8 dd       	vshufps xmm13,xmm2,xmm0,0xdd
  72b6a6:	c4 63 7d 19 c9 01    	vextractf128 xmm1,ymm9,0x1
  72b6ac:	c5 e8 c6 e8 88       	vshufps xmm5,xmm2,xmm0,0x88
  72b6b1:	c5 40 c6 c9 dd       	vshufps xmm9,xmm7,xmm1,0xdd
  72b6b6:	c4 63 7d 19 f8 01    	vextractf128 xmm0,ymm15,0x1
  72b6bc:	c5 40 c6 f9 88       	vshufps xmm15,xmm7,xmm1,0x88
  72b6c1:	c5 88 c6 e0 dd       	vshufps xmm4,xmm14,xmm0,0xdd
  72b6c6:	c5 fc 10 4c 24 a0    	vmovups ymm1,YMMWORD PTR [rsp-0x60]
  72b6cc:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  72b6d2:	c5 88 c6 d8 88       	vshufps xmm3,xmm14,xmm0,0x88
  72b6d7:	c5 f8 28 04 24       	vmovaps xmm0,XMMWORD PTR [rsp]
  72b6dc:	c5 f8 c6 f9 dd       	vshufps xmm7,xmm0,xmm1,0xdd
  72b6e1:	c5 78 c6 f1 88       	vshufps xmm14,xmm0,xmm1,0x88
  72b6e6:	c5 fb 10 8c 17 b8 00 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0xb8]
  72b6ed:	00 00 
  72b6ef:	c4 e3 7d 18 c9 01    	vinsertf128 ymm1,ymm0,xmm1,0x1
  72b6f5:	c4 c3 75 0c cb c0    	vblendps ymm1,ymm1,ymm11,0xc0
  72b6fb:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  72b701:	c5 98 c6 d1 dd       	vshufps xmm2,xmm12,xmm1,0xdd
  72b706:	c5 98 c6 c1 88       	vshufps xmm0,xmm12,xmm1,0x88
  72b70b:	c5 fc 10 4c 24 80    	vmovups ymm1,YMMWORD PTR [rsp-0x80]
  72b711:	c5 74 58 e6          	vaddps ymm12,ymm1,ymm6
  72b715:	c5 f4 5c ce          	vsubps ymm1,ymm1,ymm6
  72b719:	c5 fc 11 4c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm1
  72b71f:	c5 bc 58 f5          	vaddps ymm6,ymm8,ymm5
  72b723:	c5 3c 5c dd          	vsubps ymm11,ymm8,ymm5
  72b727:	c5 b4 58 cc          	vaddps ymm1,ymm9,ymm4
  72b72b:	c5 b4 5c e4          	vsubps ymm4,ymm9,ymm4
  72b72f:	c5 04 58 c3          	vaddps ymm8,ymm15,ymm3
  72b733:	c5 84 5c db          	vsubps ymm3,ymm15,ymm3
  72b737:	c5 0c 58 c8          	vaddps ymm9,ymm14,ymm0
  72b73b:	c5 8c 5c c0          	vsubps ymm0,ymm14,ymm0
  72b73f:	c5 44 58 f2          	vaddps ymm14,ymm7,ymm2
  72b743:	c5 c4 5c d2          	vsubps ymm2,ymm7,ymm2
  72b747:	c5 fc 10 6c 24 c0    	vmovups ymm5,YMMWORD PTR [rsp-0x40]
  72b74d:	c5 2c 58 fd          	vaddps ymm15,ymm10,ymm5
  72b751:	c4 c1 54 5c fa       	vsubps ymm7,ymm5,ymm10
  72b756:	c5 fc 10 6c 24 e0    	vmovups ymm5,YMMWORD PTR [rsp-0x20]
  72b75c:	c5 14 58 d5          	vaddps ymm10,ymm13,ymm5
  72b760:	c5 14 5c ed          	vsubps ymm13,ymm13,ymm5
  72b764:	c5 dc 58 eb          	vaddps ymm5,ymm4,ymm3
  72b768:	c5 fc 11 6c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm5
  72b76e:	c5 e4 5c e4          	vsubps ymm4,ymm3,ymm4
  72b772:	c5 fc 5c da          	vsubps ymm3,ymm0,ymm2
  72b776:	c5 fc 11 5c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm3
  72b77c:	c5 ec 58 d8          	vaddps ymm3,ymm2,ymm0
  72b780:	c4 c1 1c 58 d2       	vaddps ymm2,ymm12,ymm10
  72b785:	c4 41 1c 5c e2       	vsubps ymm12,ymm12,ymm10
  72b78a:	c4 c1 3c 58 c1       	vaddps ymm0,ymm8,ymm9
  72b78f:	c5 fc 11 44 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm0
  72b795:	c4 c1 3c 5c e9       	vsubps ymm5,ymm8,ymm9
  72b79a:	c5 04 58 c6          	vaddps ymm8,ymm15,ymm6
  72b79e:	c5 84 5c c6          	vsubps ymm0,ymm15,ymm6
  72b7a2:	c5 fc 11 04 24       	vmovups YMMWORD PTR [rsp],ymm0
  72b7a7:	c5 8c 58 f1          	vaddps ymm6,ymm14,ymm1
  72b7ab:	c5 0c 5c f9          	vsubps ymm15,ymm14,ymm1
  72b7af:	c5 fc 10 44 24 a0    	vmovups ymm0,YMMWORD PTR [rsp-0x60]
  72b7b5:	c5 24 58 f0          	vaddps ymm14,ymm11,ymm0
  72b7b9:	c4 41 7c 5c cb       	vsubps ymm9,ymm0,ymm11
  72b7be:	c4 e2 7d 18 05 d5 9b 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff949bd5]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  72b7c5:	94 ff 
  72b7c7:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  72b7cb:	c5 e4 59 c8          	vmulps ymm1,ymm3,ymm0
  72b7cf:	c5 5c 5c d1          	vsubps ymm10,ymm4,ymm1
  72b7d3:	c5 dc 58 e1          	vaddps ymm4,ymm4,ymm1
  72b7d7:	c5 14 58 df          	vaddps ymm11,ymm13,ymm7
  72b7db:	c4 c1 44 5c cd       	vsubps ymm1,ymm7,ymm13
  72b7e0:	c5 fc 59 7c 24 c0    	vmulps ymm7,ymm0,YMMWORD PTR [rsp-0x40]
  72b7e6:	c5 fc 59 5c 24 80    	vmulps ymm3,ymm0,YMMWORD PTR [rsp-0x80]
  72b7ec:	c5 44 58 eb          	vaddps ymm13,ymm7,ymm3
  72b7f0:	c5 e4 5c df          	vsubps ymm3,ymm3,ymm7
  72b7f4:	c5 ec 58 fe          	vaddps ymm7,ymm2,ymm6
  72b7f8:	c5 e8 5c c6          	vsubps xmm0,xmm2,xmm6
  72b7fc:	c4 e3 45 18 c0 01    	vinsertf128 ymm0,ymm7,xmm0,0x1
  72b802:	c4 c1 0c 58 f5       	vaddps ymm6,ymm14,ymm13
  72b807:	c4 c1 08 5c fd       	vsubps xmm7,xmm14,xmm13
  72b80c:	c4 e3 4d 18 f7 01    	vinsertf128 ymm6,ymm6,xmm7,0x1
  72b812:	c5 9c 58 fd          	vaddps ymm7,ymm12,ymm5
  72b816:	c5 98 5c d5          	vsubps xmm2,xmm12,xmm5
  72b81a:	c4 e3 45 18 d2 01    	vinsertf128 ymm2,ymm7,xmm2,0x1
  72b820:	c5 b4 58 fc          	vaddps ymm7,ymm9,ymm4
  72b824:	c5 b0 5c e4          	vsubps xmm4,xmm9,xmm4
  72b828:	c4 e3 45 18 e4 01    	vinsertf128 ymm4,ymm7,xmm4,0x1
  72b82e:	c5 fd 15 fa          	vunpckhpd ymm7,ymm0,ymm2
  72b832:	c5 fd 14 c2          	vunpcklpd ymm0,ymm0,ymm2
  72b836:	c5 cd 15 d4          	vunpckhpd ymm2,ymm6,ymm4
  72b83a:	c5 c4 c6 d2 88       	vshufps ymm2,ymm7,ymm2,0x88
  72b83f:	c5 cd 14 e4          	vunpcklpd ymm4,ymm6,ymm4
  72b843:	c5 fc c6 f4 88       	vshufps ymm6,ymm0,ymm4,0x88
  72b848:	c5 fc c6 c4 dd       	vshufps ymm0,ymm0,ymm4,0xdd
  72b84d:	c5 fc 10 6c 24 e0    	vmovups ymm5,YMMWORD PTR [rsp-0x20]
  72b853:	c5 bc 58 e5          	vaddps ymm4,ymm8,ymm5
  72b857:	c5 b8 5c fd          	vsubps xmm7,xmm8,xmm5
  72b85b:	c4 e3 5d 18 ff 01    	vinsertf128 ymm7,ymm4,xmm7,0x1
  72b861:	c4 c1 24 58 e2       	vaddps ymm4,ymm11,ymm10
  72b866:	c4 41 20 5c c2       	vsubps xmm8,xmm11,xmm10
  72b86b:	c4 43 5d 18 c0 01    	vinsertf128 ymm8,ymm4,xmm8,0x1
  72b871:	c5 fc 10 2c 24       	vmovups ymm5,YMMWORD PTR [rsp]
  72b876:	c5 84 58 e5          	vaddps ymm4,ymm15,ymm5
  72b87a:	c4 c1 50 5c ef       	vsubps xmm5,xmm5,xmm15
  72b87f:	c4 e3 5d 18 ed 01    	vinsertf128 ymm5,ymm4,xmm5,0x1
  72b885:	c5 74 58 cb          	vaddps ymm9,ymm1,ymm3
  72b889:	c5 cc c6 e6 d8       	vshufps ymm4,ymm6,ymm6,0xd8
  72b88e:	c5 fc c6 f0 d8       	vshufps ymm6,ymm0,ymm0,0xd8
  72b893:	c5 ec c6 c2 d8       	vshufps ymm0,ymm2,ymm2,0xd8
  72b898:	c5 f0 5c cb          	vsubps xmm1,xmm1,xmm3
  72b89c:	c4 e3 35 18 c9 01    	vinsertf128 ymm1,ymm9,xmm1,0x1
  72b8a2:	c5 c5 15 d5          	vunpckhpd ymm2,ymm7,ymm5
  72b8a6:	c5 c5 14 ed          	vunpcklpd ymm5,ymm7,ymm5
  72b8aa:	c5 bd 15 d9          	vunpckhpd ymm3,ymm8,ymm1
  72b8ae:	c5 ec c6 d3 88       	vshufps ymm2,ymm2,ymm3,0x88
  72b8b3:	c5 bd 14 c9          	vunpcklpd ymm1,ymm8,ymm1
  72b8b7:	c5 d4 c6 d9 88       	vshufps ymm3,ymm5,ymm1,0x88
  72b8bc:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  72b8c1:	c5 d4 c6 c9 dd       	vshufps ymm1,ymm5,ymm1,0xdd
  72b8c6:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  72b8cb:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  72b8d0:	c5 fc 10 69 40       	vmovups ymm5,YMMWORD PTR [rcx+0x40]
  72b8d5:	c5 fc 10 79 60       	vmovups ymm7,YMMWORD PTR [rcx+0x60]
  72b8da:	c5 54 59 c1          	vmulps ymm8,ymm5,ymm1
  72b8de:	c4 62 4d b8 c7       	vfmadd231ps ymm8,ymm6,ymm7
  72b8e3:	c5 d4 59 ee          	vmulps ymm5,ymm5,ymm6
  72b8e7:	c5 fc 10 b1 80 00 00 	vmovups ymm6,YMMWORD PTR [rcx+0x80]
  72b8ee:	00 
  72b8ef:	c4 e2 75 bc ef       	vfnmadd231ps ymm5,ymm1,ymm7
  72b8f4:	c5 fc 10 89 a0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xa0]
  72b8fb:	00 
  72b8fc:	c5 cc 59 fa          	vmulps ymm7,ymm6,ymm2
  72b900:	c4 e2 7d b8 f9       	vfmadd231ps ymm7,ymm0,ymm1
  72b905:	c5 cc 59 c0          	vmulps ymm0,ymm6,ymm0
  72b909:	c5 bc 58 f7          	vaddps ymm6,ymm8,ymm7
  72b90d:	c4 e2 6d bc c1       	vfnmadd231ps ymm0,ymm2,ymm1
  72b912:	c4 62 7d 18 0d 45 9b 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff949b45]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  72b919:	94 ff 
  72b91b:	c5 7c 29 c9          	vmovaps ymm1,ymm9
  72b91f:	c4 e2 4d ac cb       	vfnmadd213ps ymm1,ymm6,ymm3
  72b924:	c5 d4 5c d0          	vsubps ymm2,ymm5,ymm0
  72b928:	c4 62 7d 18 15 a3 99 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff9499a3]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  72b92f:	94 ff 
  72b931:	c5 ac 59 d2          	vmulps ymm2,ymm10,ymm2
  72b935:	c5 d4 58 c0          	vaddps ymm0,ymm5,ymm0
  72b939:	c5 f4 58 ea          	vaddps ymm5,ymm1,ymm2
  72b93d:	c5 bc 5c ff          	vsubps ymm7,ymm8,ymm7
  72b941:	c4 41 7c 28 c1       	vmovaps ymm8,ymm9
  72b946:	c4 62 7d ac c4       	vfnmadd213ps ymm8,ymm0,ymm4
  72b94b:	c5 ac 59 ff          	vmulps ymm7,ymm10,ymm7
  72b94f:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  72b953:	c5 bc 5c d7          	vsubps ymm2,ymm8,ymm7
  72b957:	c5 bc 58 ff          	vaddps ymm7,ymm8,ymm7
  72b95b:	c5 cc 58 db          	vaddps ymm3,ymm6,ymm3
  72b95f:	c5 fc 58 c4          	vaddps ymm0,ymm0,ymm4
  72b963:	c5 e4 15 e0          	vunpckhps ymm4,ymm3,ymm0
  72b967:	c5 e4 14 c0          	vunpcklps ymm0,ymm3,ymm0
  72b96b:	c4 e3 7d 06 dc 31    	vperm2f128 ymm3,ymm0,ymm4,0x31
  72b971:	c4 e3 7d 06 c4 20    	vperm2f128 ymm0,ymm0,ymm4,0x20
  72b977:	c5 fc 11 04 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm0
  72b97c:	c5 fc 11 5c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm3
  72b982:	c5 f4 15 c7          	vunpckhps ymm0,ymm1,ymm7
  72b986:	c5 f4 14 cf          	vunpcklps ymm1,ymm1,ymm7
  72b98a:	c4 e3 75 06 d8 31    	vperm2f128 ymm3,ymm1,ymm0,0x31
  72b990:	c4 e3 75 06 c0 20    	vperm2f128 ymm0,ymm1,ymm0,0x20
  72b996:	c5 fc 11 44 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm0
  72b99c:	c5 fc 11 5c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm3
  72b9a2:	c5 d4 15 c2          	vunpckhps ymm0,ymm5,ymm2
  72b9a6:	c5 d4 14 ca          	vunpcklps ymm1,ymm5,ymm2
  72b9aa:	c4 e3 75 06 d0 31    	vperm2f128 ymm2,ymm1,ymm0,0x31
  72b9b0:	c4 e3 75 06 c0 20    	vperm2f128 ymm0,ymm1,ymm0,0x20
  72b9b6:	c5 fc 11 84 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm0
  72b9bd:	00 00 
  72b9bf:	c5 fc 11 94 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm2
  72b9c6:	00 00 
  72b9c8:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  72b9cf:	48 39 d0             	cmp    rax,rdx
  72b9d2:	0f 85 b8 fb ff ff    	jne    72b590 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  72b9d8:	48 83 c4 28          	add    rsp,0x28
  72b9dc:	c5 f8 77             	vzeroupper
  72b9df:	c3                   	ret
