
target/small-latency/final-source/executable-0:     file format elf64-x86-64


Disassembly of section .text:

00000000002856f0 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::one>:
  2856f0:	c5 fc 10 07          	vmovups (%rdi),%ymm0
  2856f4:	c5 fc 10 4f 20       	vmovups 0x20(%rdi),%ymm1
  2856f9:	c5 fc 10 57 40       	vmovups 0x40(%rdi),%ymm2
  2856fe:	c5 fc 10 5f 60       	vmovups 0x60(%rdi),%ymm3
  285703:	c5 fc 10 a7 80 00 00 	vmovups 0x80(%rdi),%ymm4
  28570a:	00 
  28570b:	c5 fc 10 af a0 00 00 	vmovups 0xa0(%rdi),%ymm5
  285712:	00 
  285713:	c5 fc 10 b7 c0 00 00 	vmovups 0xc0(%rdi),%ymm6
  28571a:	00 
  28571b:	c5 fc 10 bf e0 00 00 	vmovups 0xe0(%rdi),%ymm7
  285722:	00 
  285723:	c5 7c c6 c1 dd       	vshufps $0xdd,%ymm1,%ymm0,%ymm8
  285728:	c4 43 fd 01 c0 d8    	vpermpd $0xd8,%ymm8,%ymm8
  28572e:	c5 5c c6 cd dd       	vshufps $0xdd,%ymm5,%ymm4,%ymm9
  285733:	c4 43 fd 01 c9 d8    	vpermpd $0xd8,%ymm9,%ymm9
  285739:	c4 41 3c 58 d1       	vaddps %ymm9,%ymm8,%ymm10
  28573e:	c4 41 3c 5c c1       	vsubps %ymm9,%ymm8,%ymm8
  285743:	c5 6c c6 cb dd       	vshufps $0xdd,%ymm3,%ymm2,%ymm9
  285748:	c4 43 fd 01 c9 d8    	vpermpd $0xd8,%ymm9,%ymm9
  28574e:	c5 4c c6 df dd       	vshufps $0xdd,%ymm7,%ymm6,%ymm11
  285753:	c4 43 fd 01 db d8    	vpermpd $0xd8,%ymm11,%ymm11
  285759:	c4 41 34 58 e3       	vaddps %ymm11,%ymm9,%ymm12
  28575e:	c4 41 34 5c cb       	vsubps %ymm11,%ymm9,%ymm9
  285763:	c5 fc c6 c1 88       	vshufps $0x88,%ymm1,%ymm0,%ymm0
  285768:	c4 e3 fd 01 c0 d8    	vpermpd $0xd8,%ymm0,%ymm0
  28576e:	c5 dc c6 cd 88       	vshufps $0x88,%ymm5,%ymm4,%ymm1
  285773:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  285779:	c5 fc 58 e1          	vaddps %ymm1,%ymm0,%ymm4
  28577d:	c5 fc 5c c1          	vsubps %ymm1,%ymm0,%ymm0
  285781:	c5 ec c6 cb 88       	vshufps $0x88,%ymm3,%ymm2,%ymm1
  285786:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  28578c:	c5 cc c6 d7 88       	vshufps $0x88,%ymm7,%ymm6,%ymm2
  285791:	c4 e3 fd 01 d2 d8    	vpermpd $0xd8,%ymm2,%ymm2
  285797:	c5 f4 58 da          	vaddps %ymm2,%ymm1,%ymm3
  28579b:	c5 f4 5c ca          	vsubps %ymm2,%ymm1,%ymm1
  28579f:	c4 c1 2c 58 d4       	vaddps %ymm12,%ymm10,%ymm2
  2857a4:	c5 bc 58 e9          	vaddps %ymm1,%ymm8,%ymm5
  2857a8:	c4 c1 2c 5c f4       	vsubps %ymm12,%ymm10,%ymm6
  2857ad:	c5 bc 5c c9          	vsubps %ymm1,%ymm8,%ymm1
  2857b1:	c5 dc 58 fb          	vaddps %ymm3,%ymm4,%ymm7
  2857b5:	c4 41 7c 5c c1       	vsubps %ymm9,%ymm0,%ymm8
  2857ba:	c5 dc 5c db          	vsubps %ymm3,%ymm4,%ymm3
  2857be:	c5 34 58 d8          	vaddps %ymm0,%ymm9,%ymm11
  2857c2:	c5 ec 14 e5          	vunpcklps %ymm5,%ymm2,%ymm4
  2857c6:	c5 ec 15 d5          	vunpckhps %ymm5,%ymm2,%ymm2
  2857ca:	c5 cc 14 e9          	vunpcklps %ymm1,%ymm6,%ymm5
  2857ce:	c5 cc 15 c9          	vunpckhps %ymm1,%ymm6,%ymm1
  2857d2:	c5 dd 14 c5          	vunpcklpd %ymm5,%ymm4,%ymm0
  2857d6:	c5 fc 11 44 24 d8    	vmovups %ymm0,-0x28(%rsp)
  2857dc:	c5 ed 14 f1          	vunpcklpd %ymm1,%ymm2,%ymm6
  2857e0:	c5 5d 15 cd          	vunpckhpd %ymm5,%ymm4,%ymm9
  2857e4:	c5 ed 15 e1          	vunpckhpd %ymm1,%ymm2,%ymm4
  2857e8:	c4 c3 7d 19 c2 01    	vextractf128 $0x1,%ymm0,%xmm10
  2857ee:	c4 c1 44 14 c8       	vunpcklps %ymm8,%ymm7,%ymm1
  2857f3:	c4 c1 44 15 d0       	vunpckhps %ymm8,%ymm7,%ymm2
  2857f8:	c4 c1 64 14 eb       	vunpcklps %ymm11,%ymm3,%ymm5
  2857fd:	c4 c1 64 15 fb       	vunpckhps %ymm11,%ymm3,%ymm7
  285802:	c5 f5 14 c5          	vunpcklpd %ymm5,%ymm1,%ymm0
  285806:	c5 fc 11 44 24 a8    	vmovups %ymm0,-0x58(%rsp)
  28580c:	c5 6d 14 df          	vunpcklpd %ymm7,%ymm2,%ymm11
  285810:	c5 75 15 f5          	vunpckhpd %ymm5,%ymm1,%ymm14
  285814:	c5 ed 15 ef          	vunpckhpd %ymm7,%ymm2,%ymm5
  285818:	c4 c3 7d 19 c5 01    	vextractf128 $0x1,%ymm0,%xmm13
  28581e:	c5 f8 28 3d 5a 0d df 	vmovaps -0x20f2a6(%rip),%xmm7        # 76580 <__abi_tag+0x76284>
  285825:	ff 
  285826:	c5 88 59 c7          	vmulps %xmm7,%xmm14,%xmm0
  28582a:	c5 f8 28 15 7e ec de 	vmovaps -0x211382(%rip),%xmm2        # 744b0 <__abi_tag+0x741b4>
  285831:	ff 
  285832:	c4 e2 31 b8 c2       	vfmadd231ps %xmm2,%xmm9,%xmm0
  285837:	c5 f8 29 44 24 c8    	vmovaps %xmm0,-0x38(%rsp)
  28583d:	c5 88 59 c2          	vmulps %xmm2,%xmm14,%xmm0
  285841:	c4 e2 31 bc c7       	vfnmadd231ps %xmm7,%xmm9,%xmm0
  285846:	c5 f8 29 44 24 88    	vmovaps %xmm0,-0x78(%rsp)
  28584c:	c5 78 28 25 0c db de 	vmovaps -0x2124f4(%rip),%xmm12        # 73360 <__abi_tag+0x73064>
  285853:	ff 
  285854:	c4 c1 20 59 fc       	vmulps %xmm12,%xmm11,%xmm7
  285859:	c5 78 28 05 2f 0d df 	vmovaps -0x20f2d1(%rip),%xmm8        # 76590 <__abi_tag+0x76294>
  285860:	ff 
  285861:	c4 c2 49 b8 f8       	vfmadd231ps %xmm8,%xmm6,%xmm7
  285866:	c4 c1 20 59 c0       	vmulps %xmm8,%xmm11,%xmm0
  28586b:	c4 c2 49 bc c4       	vfnmadd231ps %xmm12,%xmm6,%xmm0
  285870:	c5 f8 29 44 24 98    	vmovaps %xmm0,-0x68(%rsp)
  285876:	c5 78 28 3d 62 09 df 	vmovaps -0x20f69e(%rip),%xmm15        # 761e0 <__abi_tag+0x75ee4>
  28587d:	ff 
  28587e:	c4 41 10 59 e7       	vmulps %xmm15,%xmm13,%xmm12
  285883:	c5 f8 28 05 65 22 df 	vmovaps -0x20dd9b(%rip),%xmm0        # 77af0 <__abi_tag+0x777f4>
  28588a:	ff 
  28588b:	c4 62 29 b8 e0       	vfmadd231ps %xmm0,%xmm10,%xmm12
  285890:	c5 10 59 e8          	vmulps %xmm0,%xmm13,%xmm13
  285894:	c4 63 7d 19 c8 01    	vextractf128 $0x1,%ymm9,%xmm0
  28589a:	c4 43 7d 19 f6 01    	vextractf128 $0x1,%ymm14,%xmm14
  2858a0:	c4 42 29 bc ef       	vfnmadd231ps %xmm15,%xmm10,%xmm13
  2858a5:	c5 78 28 3d 83 3b df 	vmovaps -0x20c47d(%rip),%xmm15        # 79430 <__abi_tag+0x79134>
  2858ac:	ff 
  2858ad:	c4 41 08 59 cf       	vmulps %xmm15,%xmm14,%xmm9
  2858b2:	c5 78 28 15 46 1d df 	vmovaps -0x20e2ba(%rip),%xmm10        # 77600 <__abi_tag+0x77304>
  2858b9:	ff 
  2858ba:	c4 42 79 b8 ca       	vfmadd231ps %xmm10,%xmm0,%xmm9
  2858bf:	c4 41 08 59 d2       	vmulps %xmm10,%xmm14,%xmm10
  2858c4:	c4 e3 7d 19 f6 01    	vextractf128 $0x1,%ymm6,%xmm6
  2858ca:	c4 43 7d 19 db 01    	vextractf128 $0x1,%ymm11,%xmm11
  2858d0:	c4 42 79 bc d7       	vfnmadd231ps %xmm15,%xmm0,%xmm10
  2858d5:	c5 78 28 35 e3 eb de 	vmovaps -0x21141d(%rip),%xmm14        # 744c0 <__abi_tag+0x741c4>
  2858dc:	ff 
  2858dd:	c4 c1 20 59 c6       	vmulps %xmm14,%xmm11,%xmm0
  2858e2:	c5 78 28 3d 66 d6 de 	vmovaps -0x21299a(%rip),%xmm15        # 72f50 <__abi_tag+0x72c54>
  2858e9:	ff 
  2858ea:	c4 c2 49 b8 c7       	vfmadd231ps %xmm15,%xmm6,%xmm0
  2858ef:	c4 41 20 59 df       	vmulps %xmm15,%xmm11,%xmm11
  2858f4:	c4 42 49 bc de       	vfnmadd231ps %xmm14,%xmm6,%xmm11
  2858f9:	c5 f8 28 35 9f 0c df 	vmovaps -0x20f361(%rip),%xmm6        # 765a0 <__abi_tag+0x762a4>
  285900:	ff 
  285901:	c5 50 59 fe          	vmulps %xmm6,%xmm5,%xmm15
  285905:	c5 78 28 35 03 e3 de 	vmovaps -0x211cfd(%rip),%xmm14        # 73c10 <__abi_tag+0x73914>
  28590c:	ff 
  28590d:	c4 42 59 b8 fe       	vfmadd231ps %xmm14,%xmm4,%xmm15
  285912:	c5 08 59 f5          	vmulps %xmm5,%xmm14,%xmm14
  285916:	c4 62 59 bc f6       	vfnmadd231ps %xmm6,%xmm4,%xmm14
  28591b:	c4 e3 7d 19 e4 01    	vextractf128 $0x1,%ymm4,%xmm4
  285921:	c4 e3 7d 19 ed 01    	vextractf128 $0x1,%ymm5,%xmm5
  285927:	c5 f8 28 35 81 3e df 	vmovaps -0x20c17f(%rip),%xmm6        # 797b0 <__abi_tag+0x794b4>
  28592e:	ff 
  28592f:	c5 d0 59 ce          	vmulps %xmm6,%xmm5,%xmm1
  285933:	c5 f8 28 15 75 4a df 	vmovaps -0x20b58b(%rip),%xmm2        # 7a3b0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x570>
  28593a:	ff 
  28593b:	c4 e2 59 b8 ca       	vfmadd231ps %xmm2,%xmm4,%xmm1
  285940:	c5 d0 59 d2          	vmulps %xmm2,%xmm5,%xmm2
  285944:	c4 e2 59 bc d6       	vfnmadd231ps %xmm6,%xmm4,%xmm2
  285949:	c5 fc 10 5c 24 d8    	vmovups -0x28(%rsp),%ymm3
  28594f:	c5 98 58 e3          	vaddps %xmm3,%xmm12,%xmm4
  285953:	c4 c1 60 5c ec       	vsubps %xmm12,%xmm3,%xmm5
  285958:	c5 c0 58 f0          	vaddps %xmm0,%xmm7,%xmm6
  28595c:	c5 40 5c c0          	vsubps %xmm0,%xmm7,%xmm8
  285960:	c5 fc 10 44 24 a8    	vmovups -0x58(%rsp),%ymm0
  285966:	c5 90 58 d8          	vaddps %xmm0,%xmm13,%xmm3
  28596a:	c4 c1 78 5c fd       	vsubps %xmm13,%xmm0,%xmm7
  28596f:	c5 78 28 64 24 98    	vmovaps -0x68(%rsp),%xmm12
  285975:	c4 c1 18 58 c3       	vaddps %xmm11,%xmm12,%xmm0
  28597a:	c4 41 18 5c db       	vsubps %xmm11,%xmm12,%xmm11
  28597f:	c5 58 58 e6          	vaddps %xmm6,%xmm4,%xmm12
  285983:	c5 58 5c ee          	vsubps %xmm6,%xmm4,%xmm13
  285987:	c5 a0 58 f5          	vaddps %xmm5,%xmm11,%xmm6
  28598b:	c4 c1 50 5c e3       	vsubps %xmm11,%xmm5,%xmm4
  285990:	c5 f8 29 64 24 d8    	vmovaps %xmm4,-0x28(%rsp)
  285996:	c5 60 58 d8          	vaddps %xmm0,%xmm3,%xmm11
  28599a:	c5 e0 5c e8          	vsubps %xmm0,%xmm3,%xmm5
  28599e:	c4 c1 40 5c c0       	vsubps %xmm8,%xmm7,%xmm0
  2859a3:	c5 b8 58 df          	vaddps %xmm7,%xmm8,%xmm3
  2859a7:	c5 f8 29 5c 24 a8    	vmovaps %xmm3,-0x58(%rsp)
  2859ad:	c5 f8 28 64 24 c8    	vmovaps -0x38(%rsp),%xmm4
  2859b3:	c5 b0 58 dc          	vaddps %xmm4,%xmm9,%xmm3
  2859b7:	c4 c1 58 5c f9       	vsubps %xmm9,%xmm4,%xmm7
  2859bc:	c5 00 58 c1          	vaddps %xmm1,%xmm15,%xmm8
  2859c0:	c5 80 5c c9          	vsubps %xmm1,%xmm15,%xmm1
  2859c4:	c5 f8 28 64 24 88    	vmovaps -0x78(%rsp),%xmm4
  2859ca:	c5 28 58 cc          	vaddps %xmm4,%xmm10,%xmm9
  2859ce:	c4 41 58 5c d2       	vsubps %xmm10,%xmm4,%xmm10
  2859d3:	c5 08 58 fa          	vaddps %xmm2,%xmm14,%xmm15
  2859d7:	c5 88 5c d2          	vsubps %xmm2,%xmm14,%xmm2
  2859db:	c5 38 58 f3          	vaddps %xmm3,%xmm8,%xmm14
  2859df:	c4 c1 60 5c d8       	vsubps %xmm8,%xmm3,%xmm3
  2859e4:	c5 40 58 c2          	vaddps %xmm2,%xmm7,%xmm8
  2859e8:	c5 c0 5c d2          	vsubps %xmm2,%xmm7,%xmm2
  2859ec:	c4 c1 30 58 ff       	vaddps %xmm15,%xmm9,%xmm7
  2859f1:	c4 41 30 5c cf       	vsubps %xmm15,%xmm9,%xmm9
  2859f6:	c5 28 5c f9          	vsubps %xmm1,%xmm10,%xmm15
  2859fa:	c5 a8 58 c9          	vaddps %xmm1,%xmm10,%xmm1
  2859fe:	c4 41 38 58 d7       	vaddps %xmm15,%xmm8,%xmm10
  285a03:	c4 41 00 5c c0       	vsubps %xmm8,%xmm15,%xmm8
  285a08:	c5 70 5c fa          	vsubps %xmm2,%xmm1,%xmm15
  285a0c:	c5 e8 58 c9          	vaddps %xmm1,%xmm2,%xmm1
  285a10:	c4 e2 79 18 15 2f 70 	vbroadcastss -0x208fd1(%rip),%xmm2        # 7ca48 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  285a17:	df ff 
  285a19:	c5 e0 57 da          	vxorps %xmm2,%xmm3,%xmm3
  285a1d:	c5 f0 57 ca          	vxorps %xmm2,%xmm1,%xmm1
  285a21:	c4 e2 79 18 15 16 6e 	vbroadcastss -0x2091ea(%rip),%xmm2        # 7c840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a00>
  285a28:	df ff 
  285a2a:	c5 28 59 d2          	vmulps %xmm2,%xmm10,%xmm10
  285a2e:	c5 38 59 c2          	vmulps %xmm2,%xmm8,%xmm8
  285a32:	c5 00 59 fa          	vmulps %xmm2,%xmm15,%xmm15
  285a36:	c5 f0 59 ca          	vmulps %xmm2,%xmm1,%xmm1
  285a3a:	c4 c1 18 58 d6       	vaddps %xmm14,%xmm12,%xmm2
  285a3f:	c4 41 18 5c e6       	vsubps %xmm14,%xmm12,%xmm12
  285a44:	c5 20 58 f7          	vaddps %xmm7,%xmm11,%xmm14
  285a48:	c5 a0 5c ff          	vsubps %xmm7,%xmm11,%xmm7
  285a4c:	c5 28 58 de          	vaddps %xmm6,%xmm10,%xmm11
  285a50:	c4 c1 48 5c e2       	vsubps %xmm10,%xmm6,%xmm4
  285a55:	c5 f8 29 64 24 88    	vmovaps %xmm4,-0x78(%rsp)
  285a5b:	c5 38 58 d0          	vaddps %xmm0,%xmm8,%xmm10
  285a5f:	c4 c1 78 5c e0       	vsubps %xmm8,%xmm0,%xmm4
  285a64:	c4 41 10 58 c1       	vaddps %xmm9,%xmm13,%xmm8
  285a69:	c4 41 10 5c c9       	vsubps %xmm9,%xmm13,%xmm9
  285a6e:	c5 50 58 eb          	vaddps %xmm3,%xmm5,%xmm13
  285a72:	c5 d0 5c db          	vsubps %xmm3,%xmm5,%xmm3
  285a76:	c5 f8 28 44 24 d8    	vmovaps -0x28(%rsp),%xmm0
  285a7c:	c5 80 58 e8          	vaddps %xmm0,%xmm15,%xmm5
  285a80:	c4 41 78 5c ff       	vsubps %xmm15,%xmm0,%xmm15
  285a85:	c5 f8 28 74 24 a8    	vmovaps -0x58(%rsp),%xmm6
  285a8b:	c5 c8 58 c1          	vaddps %xmm1,%xmm6,%xmm0
  285a8f:	c5 c8 5c f1          	vsubps %xmm1,%xmm6,%xmm6
  285a93:	c5 88 14 ca          	vunpcklps %xmm2,%xmm14,%xmm1
  285a97:	c5 88 15 d2          	vunpckhps %xmm2,%xmm14,%xmm2
  285a9b:	c5 f8 11 0e          	vmovups %xmm1,(%rsi)
  285a9f:	c5 f8 11 56 10       	vmovups %xmm2,0x10(%rsi)
  285aa4:	c4 c1 28 14 cb       	vunpcklps %xmm11,%xmm10,%xmm1
  285aa9:	c4 c1 28 15 d3       	vunpckhps %xmm11,%xmm10,%xmm2
  285aae:	c5 f8 11 4e 20       	vmovups %xmm1,0x20(%rsi)
  285ab3:	c5 f8 11 56 30       	vmovups %xmm2,0x30(%rsi)
  285ab8:	c4 c1 10 14 c8       	vunpcklps %xmm8,%xmm13,%xmm1
  285abd:	c4 c1 10 15 d0       	vunpckhps %xmm8,%xmm13,%xmm2
  285ac2:	c5 f8 11 4e 40       	vmovups %xmm1,0x40(%rsi)
  285ac7:	c5 f8 11 56 50       	vmovups %xmm2,0x50(%rsi)
  285acc:	c5 f8 14 cd          	vunpcklps %xmm5,%xmm0,%xmm1
  285ad0:	c5 f8 15 c5          	vunpckhps %xmm5,%xmm0,%xmm0
  285ad4:	c5 f8 11 4e 60       	vmovups %xmm1,0x60(%rsi)
  285ad9:	c5 f8 11 46 70       	vmovups %xmm0,0x70(%rsi)
  285ade:	c4 c1 40 14 c4       	vunpcklps %xmm12,%xmm7,%xmm0
  285ae3:	c4 c1 40 15 cc       	vunpckhps %xmm12,%xmm7,%xmm1
  285ae8:	c5 f8 11 86 80 00 00 	vmovups %xmm0,0x80(%rsi)
  285aef:	00 
  285af0:	c5 f8 11 8e 90 00 00 	vmovups %xmm1,0x90(%rsi)
  285af7:	00 
  285af8:	c5 f8 28 4c 24 88    	vmovaps -0x78(%rsp),%xmm1
  285afe:	c5 d8 14 c1          	vunpcklps %xmm1,%xmm4,%xmm0
  285b02:	c5 d8 15 c9          	vunpckhps %xmm1,%xmm4,%xmm1
  285b06:	c5 f8 11 86 a0 00 00 	vmovups %xmm0,0xa0(%rsi)
  285b0d:	00 
  285b0e:	c5 f8 11 8e b0 00 00 	vmovups %xmm1,0xb0(%rsi)
  285b15:	00 
  285b16:	c4 c1 60 14 c1       	vunpcklps %xmm9,%xmm3,%xmm0
  285b1b:	c4 c1 60 15 c9       	vunpckhps %xmm9,%xmm3,%xmm1
  285b20:	c5 f8 11 86 c0 00 00 	vmovups %xmm0,0xc0(%rsi)
  285b27:	00 
  285b28:	c5 f8 11 8e d0 00 00 	vmovups %xmm1,0xd0(%rsi)
  285b2f:	00 
  285b30:	c4 c1 48 14 c7       	vunpcklps %xmm15,%xmm6,%xmm0
  285b35:	c4 c1 48 15 cf       	vunpckhps %xmm15,%xmm6,%xmm1
  285b3a:	c5 f8 11 86 e0 00 00 	vmovups %xmm0,0xe0(%rsi)
  285b41:	00 
  285b42:	c5 f8 11 8e f0 00 00 	vmovups %xmm1,0xf0(%rsi)
  285b49:	00 
  285b4a:	c5 f8 77             	vzeroupper
  285b4d:	c3                   	ret
  285b4e:	cc                   	int3
  285b4f:	cc                   	int3
