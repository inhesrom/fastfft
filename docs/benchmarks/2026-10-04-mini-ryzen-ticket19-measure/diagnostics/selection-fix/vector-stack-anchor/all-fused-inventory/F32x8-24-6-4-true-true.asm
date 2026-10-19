
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000070c680 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  70c680:	50                   	push   rax
  70c681:	48 c1 e2 06          	shl    rdx,0x6
  70c685:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  70c689:	31 d2                	xor    edx,edx
  70c68b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  70c690:	c5 f8 10 3c 17       	vmovups xmm7,XMMWORD PTR [rdi+rdx*1]
  70c695:	c5 78 10 44 17 10    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x10]
  70c69b:	c5 f8 10 6c 17 20    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x20]
  70c6a1:	c5 f8 10 74 17 30    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x30]
  70c6a7:	c4 c1 40 c6 c0 dd    	vshufps xmm0,xmm7,xmm8,0xdd
  70c6ad:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  70c6b3:	c5 78 10 5c 17 50    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x50]
  70c6b9:	c5 78 10 64 17 40    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x40]
  70c6bf:	c4 c1 18 c6 c3 dd    	vshufps xmm0,xmm12,xmm11,0xdd
  70c6c5:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  70c6cb:	c5 78 10 ac 17 90 00 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x90]
  70c6d2:	00 00 
  70c6d4:	c5 78 10 b4 17 80 00 	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x80]
  70c6db:	00 00 
  70c6dd:	c4 c1 08 c6 e5 dd    	vshufps xmm4,xmm14,xmm13,0xdd
  70c6e3:	c5 fc 11 64 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm4
  70c6e9:	c5 78 10 7c 17 70    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x70]
  70c6ef:	c5 f8 10 54 17 60    	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x60]
  70c6f5:	c4 41 68 c6 cf dd    	vshufps xmm9,xmm2,xmm15,0xdd
  70c6fb:	c5 f8 10 8c 17 b0 00 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0xb0]
  70c702:	00 00 
  70c704:	c4 41 40 c6 d0 88    	vshufps xmm10,xmm7,xmm8,0x88
  70c70a:	c5 f8 10 84 17 a0 00 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0xa0]
  70c711:	00 00 
  70c713:	c4 c1 18 c6 db 88    	vshufps xmm3,xmm12,xmm11,0x88
  70c719:	c5 f8 c6 f9 dd       	vshufps xmm7,xmm0,xmm1,0xdd
  70c71e:	c4 41 08 c6 ed 88    	vshufps xmm13,xmm14,xmm13,0x88
  70c724:	c5 50 c6 c6 dd       	vshufps xmm8,xmm5,xmm6,0xdd
  70c729:	c4 41 68 c6 ff 88    	vshufps xmm15,xmm2,xmm15,0x88
  70c72f:	c5 f8 c6 c1 88       	vshufps xmm0,xmm0,xmm1,0x88
  70c734:	c5 d0 c6 ce 88       	vshufps xmm1,xmm5,xmm6,0x88
  70c739:	c5 fc 10 74 24 a0    	vmovups ymm6,YMMWORD PTR [rsp-0x60]
  70c73f:	c5 4c 58 e4          	vaddps ymm12,ymm6,ymm4
  70c743:	c5 fc 10 6c 24 c0    	vmovups ymm5,YMMWORD PTR [rsp-0x40]
  70c749:	c5 9c 58 d5          	vaddps ymm2,ymm12,ymm5
  70c74d:	c5 fc 11 54 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm2
  70c753:	c5 3c 58 df          	vaddps ymm11,ymm8,ymm7
  70c757:	c4 e2 7d 18 15 00 8d 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff968d00]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  70c75e:	96 ff 
  70c760:	c4 62 6d ac e5       	vfnmadd213ps ymm12,ymm2,ymm5
  70c765:	c5 14 58 f3          	vaddps ymm14,ymm13,ymm3
  70c769:	c4 c1 64 5c ed       	vsubps ymm5,ymm3,ymm13
  70c76e:	c4 41 24 58 e9       	vaddps ymm13,ymm11,ymm9
  70c773:	c4 42 6d ac d9       	vfnmadd213ps ymm11,ymm2,ymm9
  70c778:	c5 7c 58 c9          	vaddps ymm9,ymm0,ymm1
  70c77c:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  70c780:	c4 c1 0c 58 da       	vaddps ymm3,ymm14,ymm10
  70c785:	c4 42 6d ac f2       	vfnmadd213ps ymm14,ymm2,ymm10
  70c78a:	c5 cc 5c 4c 24 80    	vsubps ymm1,ymm6,YMMWORD PTR [rsp-0x80]
  70c790:	c4 c1 34 58 e7       	vaddps ymm4,ymm9,ymm15
  70c795:	c4 42 6d ac cf       	vfnmadd213ps ymm9,ymm2,ymm15
  70c79a:	c4 e2 7d 18 15 31 8b 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff968b31]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  70c7a1:	96 ff 
  70c7a3:	c5 d4 59 ea          	vmulps ymm5,ymm5,ymm2
  70c7a7:	c4 c1 44 5c f8       	vsubps ymm7,ymm7,ymm8
  70c7ac:	c5 1c 58 d5          	vaddps ymm10,ymm12,ymm5
  70c7b0:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  70c7b4:	c5 9c 5c ed          	vsubps ymm5,ymm12,ymm5
  70c7b8:	c5 24 58 e0          	vaddps ymm12,ymm11,ymm0
  70c7bc:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  70c7c0:	c5 a4 5c c0          	vsubps ymm0,ymm11,ymm0
  70c7c4:	c5 0c 5c d9          	vsubps ymm11,ymm14,ymm1
  70c7c8:	c5 c4 59 fa          	vmulps ymm7,ymm7,ymm2
  70c7cc:	c5 0c 58 c1          	vaddps ymm8,ymm14,ymm1
  70c7d0:	c5 b4 5c cf          	vsubps ymm1,ymm9,ymm7
  70c7d4:	c5 34 58 cf          	vaddps ymm9,ymm9,ymm7
  70c7d8:	c4 c1 2c 5c fc       	vsubps ymm7,ymm10,ymm12
  70c7dd:	c4 41 28 58 d4       	vaddps xmm10,xmm10,xmm12
  70c7e2:	c5 fc 10 54 24 e0    	vmovups ymm2,YMMWORD PTR [rsp-0x20]
  70c7e8:	c5 14 58 e2          	vaddps ymm12,ymm13,ymm2
  70c7ec:	c4 43 1d 18 d2 01    	vinsertf128 ymm10,ymm12,xmm10,0x1
  70c7f2:	c5 50 5c e0          	vsubps xmm12,xmm5,xmm0
  70c7f6:	c4 c3 45 18 fc 01    	vinsertf128 ymm7,ymm7,xmm12,0x1
  70c7fc:	c5 d0 58 c0          	vaddps xmm0,xmm5,xmm0
  70c800:	c4 c1 68 5c ed       	vsubps xmm5,xmm2,xmm13
  70c805:	c5 ac 14 f7          	vunpcklps ymm6,ymm10,ymm7
  70c809:	c5 7c 14 e5          	vunpcklps ymm12,ymm0,ymm5
  70c80d:	c4 c1 4d 14 d4       	vunpcklpd ymm2,ymm6,ymm12
  70c812:	c4 c1 4d 15 f4       	vunpckhpd ymm6,ymm6,ymm12
  70c817:	c5 2c 15 d7          	vunpckhps ymm10,ymm10,ymm7
  70c81b:	c5 fc 15 c5          	vunpckhps ymm0,ymm0,ymm5
  70c81f:	c5 ad 14 f8          	vunpcklpd ymm7,ymm10,ymm0
  70c823:	c5 ad 15 e8          	vunpckhpd ymm5,ymm10,ymm0
  70c827:	c5 a4 5c c1          	vsubps ymm0,ymm11,ymm1
  70c82b:	c5 a0 58 c9          	vaddps xmm1,xmm11,xmm1
  70c82f:	c5 64 58 d4          	vaddps ymm10,ymm3,ymm4
  70c833:	c4 e3 2d 18 c9 01    	vinsertf128 ymm1,ymm10,xmm1,0x1
  70c839:	c4 41 38 5c d1       	vsubps xmm10,xmm8,xmm9
  70c83e:	c4 c3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm10,0x1
  70c844:	c4 41 38 58 c1       	vaddps xmm8,xmm8,xmm9
  70c849:	c5 e0 5c e4          	vsubps xmm4,xmm3,xmm4
  70c84d:	c5 74 14 c8          	vunpcklps ymm9,ymm1,ymm0
  70c851:	c5 3c 14 d4          	vunpcklps ymm10,ymm8,ymm4
  70c855:	c4 c1 35 14 da       	vunpcklpd ymm3,ymm9,ymm10
  70c85a:	c4 41 35 15 ca       	vunpckhpd ymm9,ymm9,ymm10
  70c85f:	c5 f4 15 c0          	vunpckhps ymm0,ymm1,ymm0
  70c863:	c5 bc 15 cc          	vunpckhps ymm1,ymm8,ymm4
  70c867:	c5 7d 14 c1          	vunpcklpd ymm8,ymm0,ymm1
  70c86b:	c5 fd 15 e1          	vunpckhpd ymm4,ymm0,ymm1
  70c86f:	c5 fc 10 81 80 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0x80]
  70c876:	00 
  70c877:	c5 fc 10 89 a0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xa0]
  70c87e:	00 
  70c87f:	c5 7c 59 d7          	vmulps ymm10,ymm0,ymm7
  70c883:	c4 62 3d bc d1       	vfnmadd231ps ymm10,ymm8,ymm1
  70c888:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  70c88c:	c5 7c 10 41 40       	vmovups ymm8,YMMWORD PTR [rcx+0x40]
  70c891:	c4 e2 45 b8 c1       	vfmadd231ps ymm0,ymm7,ymm1
  70c896:	c5 fc 10 49 60       	vmovups ymm1,YMMWORD PTR [rcx+0x60]
  70c89b:	c5 bc 59 fe          	vmulps ymm7,ymm8,ymm6
  70c89f:	c4 e2 35 bc f9       	vfnmadd231ps ymm7,ymm9,ymm1
  70c8a4:	c4 41 3c 59 c1       	vmulps ymm8,ymm8,ymm9
  70c8a9:	c5 7c 10 89 c0 00 00 	vmovups ymm9,YMMWORD PTR [rcx+0xc0]
  70c8b0:	00 
  70c8b1:	c4 62 4d b8 c1       	vfmadd231ps ymm8,ymm6,ymm1
  70c8b6:	c5 fc 10 89 e0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xe0]
  70c8bd:	00 
  70c8be:	c5 b4 59 f5          	vmulps ymm6,ymm9,ymm5
  70c8c2:	c4 e2 5d bc f1       	vfnmadd231ps ymm6,ymm4,ymm1
  70c8c7:	c5 b4 59 e4          	vmulps ymm4,ymm9,ymm4
  70c8cb:	c4 e2 55 b8 e1       	vfmadd231ps ymm4,ymm5,ymm1
  70c8d0:	c5 ac 58 ca          	vaddps ymm1,ymm10,ymm2
  70c8d4:	c5 c4 58 ee          	vaddps ymm5,ymm7,ymm6
  70c8d8:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  70c8dd:	c5 3c 58 cc          	vaddps ymm9,ymm8,ymm4
  70c8e1:	c5 bc 5c e4          	vsubps ymm4,ymm8,ymm4
  70c8e5:	c5 7c 58 c3          	vaddps ymm8,ymm0,ymm3
  70c8e9:	c5 e4 5c c0          	vsubps ymm0,ymm3,ymm0
  70c8ed:	c5 ec 58 dc          	vaddps ymm3,ymm2,ymm4
  70c8f1:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  70c8f5:	c5 fc 58 fe          	vaddps ymm7,ymm0,ymm6
  70c8f9:	c5 ec 5c d4          	vsubps ymm2,ymm2,ymm4
  70c8fd:	c5 f4 5c e5          	vsubps ymm4,ymm1,ymm5
  70c901:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  70c905:	c4 c1 3c 5c f1       	vsubps ymm6,ymm8,ymm9
  70c90a:	c4 41 3c 58 c1       	vaddps ymm8,ymm8,ymm9
  70c90f:	c5 f4 58 cd          	vaddps ymm1,ymm1,ymm5
  70c913:	c5 bc 14 e9          	vunpcklps ymm5,ymm8,ymm1
  70c917:	c5 38 14 c9          	vunpcklps xmm9,xmm8,xmm1
  70c91b:	c5 b8 15 c9          	vunpckhps xmm1,xmm8,xmm1
  70c91f:	c5 f8 11 4c 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm1
  70c925:	c5 78 11 0c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm9
  70c92a:	c4 e3 7d 19 6c 16 20 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x20],ymm5,0x1
  70c931:	01 
  70c932:	c5 c4 14 cb          	vunpcklps ymm1,ymm7,ymm3
  70c936:	c5 c0 15 eb          	vunpckhps xmm5,xmm7,xmm3
  70c93a:	c5 c0 14 db          	vunpcklps xmm3,xmm7,xmm3
  70c93e:	c5 f8 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm3
  70c944:	c5 f8 11 6c 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm5
  70c94a:	c4 e3 7d 19 4c 16 50 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x50],ymm1,0x1
  70c951:	01 
  70c952:	c5 cc 14 cc          	vunpcklps ymm1,ymm6,ymm4
  70c956:	c5 c8 15 dc          	vunpckhps xmm3,xmm6,xmm4
  70c95a:	c5 c8 14 e4          	vunpcklps xmm4,xmm6,xmm4
  70c95e:	c5 f8 11 64 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm4
  70c964:	c5 f8 11 5c 16 70    	vmovups XMMWORD PTR [rsi+rdx*1+0x70],xmm3
  70c96a:	c4 e3 7d 19 8c 16 80 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x80],ymm1,0x1
  70c971:	00 00 00 01 
  70c975:	c5 fc 14 ca          	vunpcklps ymm1,ymm0,ymm2
  70c979:	c5 f8 15 da          	vunpckhps xmm3,xmm0,xmm2
  70c97d:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  70c981:	c5 f8 11 84 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm0
  70c988:	00 00 
  70c98a:	c5 f8 11 9c 16 a0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa0],xmm3
  70c991:	00 00 
  70c993:	c4 e3 7d 19 8c 16 b0 	vextractf128 XMMWORD PTR [rsi+rdx*1+0xb0],ymm1,0x1
  70c99a:	00 00 00 01 
  70c99e:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  70c9a5:	48 39 d0             	cmp    rax,rdx
  70c9a8:	0f 85 e2 fc ff ff    	jne    70c690 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  70c9ae:	58                   	pop    rax
  70c9af:	c5 f8 77             	vzeroupper
  70c9b2:	c3                   	ret
