
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006e7700 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6e7700:	48 81 ec c8 01 00 00 	sub    rsp,0x1c8
  6e7707:	48 c1 e2 07          	shl    rdx,0x7
  6e770b:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6e770f:	31 d2                	xor    edx,edx
  6e7711:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  6e7718:	0f 1f 84 00 00 00 00 
  6e771f:	00 
  6e7720:	c5 fc 10 1c 17       	vmovups ymm3,YMMWORD PTR [rdi+rdx*1]
  6e7725:	c5 fc 10 6c 17 20    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x20]
  6e772b:	c5 7c 10 4c 17 40    	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x40]
  6e7731:	c5 fc 10 64 17 60    	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x60]
  6e7737:	c5 fc 10 b4 17 80 00 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x80]
  6e773e:	00 00 
  6e7740:	c5 fc 10 bc 17 a0 00 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0xa0]
  6e7747:	00 00 
  6e7749:	c5 7c 10 94 17 c0 00 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0xc0]
  6e7750:	00 00 
  6e7752:	c5 7c 10 a4 17 e0 00 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0xe0]
  6e7759:	00 00 
  6e775b:	c5 7c 10 ac 17 00 01 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x100]
  6e7762:	00 00 
  6e7764:	c5 7c 10 b4 17 20 01 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x120]
  6e776b:	00 00 
  6e776d:	c5 7c 10 bc 17 40 01 	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0x140]
  6e7774:	00 00 
  6e7776:	c5 fc 10 8c 17 60 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x160]
  6e777d:	00 00 
  6e777f:	c5 e4 c6 d5 dd       	vshufps ymm2,ymm3,ymm5,0xdd
  6e7784:	c4 e3 fd 01 c2 d8    	vpermpd ymm0,ymm2,0xd8
  6e778a:	c5 fc 11 04 24       	vmovups YMMWORD PTR [rsp],ymm0
  6e778f:	c5 cc c6 d7 dd       	vshufps ymm2,ymm6,ymm7,0xdd
  6e7794:	c4 e3 fd 01 c2 d8    	vpermpd ymm0,ymm2,0xd8
  6e779a:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  6e77a0:	c4 c1 14 c6 d6 dd    	vshufps ymm2,ymm13,ymm14,0xdd
  6e77a6:	c4 e3 fd 01 c2 d8    	vpermpd ymm0,ymm2,0xd8
  6e77ac:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  6e77b2:	c4 41 2c c6 c4 dd    	vshufps ymm8,ymm10,ymm12,0xdd
  6e77b8:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  6e77be:	c5 64 c6 dd 88       	vshufps ymm11,ymm3,ymm5,0x88
  6e77c3:	c5 84 c6 d9 dd       	vshufps ymm3,ymm15,ymm1,0xdd
  6e77c8:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  6e77ce:	c5 fc 11 5c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm3
  6e77d4:	c5 cc c6 f7 88       	vshufps ymm6,ymm6,ymm7,0x88
  6e77d9:	c5 b4 c6 ec dd       	vshufps ymm5,ymm9,ymm4,0xdd
  6e77de:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  6e77e4:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  6e77ea:	c4 e3 fd 01 d6 d8    	vpermpd ymm2,ymm6,0xd8
  6e77f0:	c4 c1 14 c6 f6 88    	vshufps ymm6,ymm13,ymm14,0x88
  6e77f6:	c4 63 fd 01 ee d8    	vpermpd ymm13,ymm6,0xd8
  6e77fc:	c4 c1 2c c6 f4 88    	vshufps ymm6,ymm10,ymm12,0x88
  6e7802:	c4 63 fd 01 d6 d8    	vpermpd ymm10,ymm6,0xd8
  6e7808:	c5 84 c6 c9 88       	vshufps ymm1,ymm15,ymm1,0x88
  6e780d:	c4 63 fd 01 e1 d8    	vpermpd ymm12,ymm1,0xd8
  6e7813:	c5 b4 c6 cc 88       	vshufps ymm1,ymm9,ymm4,0x88
  6e7818:	c4 63 fd 01 f1 d8    	vpermpd ymm14,ymm1,0xd8
  6e781e:	c5 fc 10 64 24 80    	vmovups ymm4,YMMWORD PTR [rsp-0x80]
  6e7824:	c5 dc 58 f8          	vaddps ymm7,ymm4,ymm0
  6e7828:	c5 fc 10 04 24       	vmovups ymm0,YMMWORD PTR [rsp]
  6e782d:	c5 c4 58 c8          	vaddps ymm1,ymm7,ymm0
  6e7831:	c5 e4 58 f5          	vaddps ymm6,ymm3,ymm5
  6e7835:	c5 bc 58 de          	vaddps ymm3,ymm8,ymm6
  6e7839:	c5 fc 11 5c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm3
  6e783f:	c4 62 7d 18 3d 18 dc 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff98dc18]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6e7846:	98 ff 
  6e7848:	c4 e2 05 ac f8       	vfnmadd213ps ymm7,ymm15,ymm0
  6e784d:	c5 14 58 ca          	vaddps ymm9,ymm13,ymm2
  6e7851:	c4 c1 6c 5c c5       	vsubps ymm0,ymm2,ymm13
  6e7856:	c5 f4 58 d3          	vaddps ymm2,ymm1,ymm3
  6e785a:	c5 fc 11 54 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm2
  6e7860:	c4 c2 05 ac f0       	vfnmadd213ps ymm6,ymm15,ymm8
  6e7865:	c4 41 1c 58 ee       	vaddps ymm13,ymm12,ymm14
  6e786a:	c4 41 1c 5c e6       	vsubps ymm12,ymm12,ymm14
  6e786f:	c4 41 34 58 c3       	vaddps ymm8,ymm9,ymm11
  6e7874:	c4 42 05 ac cb       	vfnmadd213ps ymm9,ymm15,ymm11
  6e7879:	c4 41 14 58 da       	vaddps ymm11,ymm13,ymm10
  6e787e:	c5 dc 5c 54 24 a0    	vsubps ymm2,ymm4,YMMWORD PTR [rsp-0x60]
  6e7884:	c4 c1 3c 58 e3       	vaddps ymm4,ymm8,ymm11
  6e7889:	c5 fc 11 64 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm4
  6e788f:	c4 62 7d 18 35 3c da 	vbroadcastss ymm14,DWORD PTR [rip+0xffffffffff98da3c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6e7896:	98 ff 
  6e7898:	c5 8c 59 c0          	vmulps ymm0,ymm14,ymm0
  6e789c:	c4 42 05 ac ea       	vfnmadd213ps ymm13,ymm15,ymm10
  6e78a1:	c5 44 58 d0          	vaddps ymm10,ymm7,ymm0
  6e78a5:	c4 41 1c 59 e6       	vmulps ymm12,ymm12,ymm14
  6e78aa:	c5 fc 10 5c 24 c0    	vmovups ymm3,YMMWORD PTR [rsp-0x40]
  6e78b0:	c5 e4 5c dd          	vsubps ymm3,ymm3,ymm5
  6e78b4:	c5 9c 58 ee          	vaddps ymm5,ymm12,ymm6
  6e78b8:	c5 c4 5c c0          	vsubps ymm0,ymm7,ymm0
  6e78bc:	c5 ac 5c e5          	vsubps ymm4,ymm10,ymm5
  6e78c0:	c5 8c 59 d2          	vmulps ymm2,ymm14,ymm2
  6e78c4:	c4 c1 4c 5c fc       	vsubps ymm7,ymm6,ymm12
  6e78c9:	c5 34 5c e2          	vsubps ymm12,ymm9,ymm2
  6e78cd:	c5 8c 59 db          	vmulps ymm3,ymm14,ymm3
  6e78d1:	c5 b4 58 d2          	vaddps ymm2,ymm9,ymm2
  6e78d5:	c5 14 5c cb          	vsubps ymm9,ymm13,ymm3
  6e78d9:	c5 94 58 db          	vaddps ymm3,ymm13,ymm3
  6e78dd:	c4 41 1c 5c f9       	vsubps ymm15,ymm12,ymm9
  6e78e2:	c5 74 5c 6c 24 e0    	vsubps ymm13,ymm1,YMMWORD PTR [rsp-0x20]
  6e78e8:	c5 7c 11 ac 24 e0 00 	vmovups YMMWORD PTR [rsp+0xe0],ymm13
  6e78ef:	00 00 
  6e78f1:	c5 fc 58 f7          	vaddps ymm6,ymm0,ymm7
  6e78f5:	c5 fc 11 b4 24 00 01 	vmovups YMMWORD PTR [rsp+0x100],ymm6
  6e78fc:	00 00 
  6e78fe:	c4 41 3c 5c c3       	vsubps ymm8,ymm8,ymm11
  6e7903:	c5 6c 58 db          	vaddps ymm11,ymm2,ymm3
  6e7907:	c5 ac 58 cd          	vaddps ymm1,ymm10,ymm5
  6e790b:	c5 fc 11 8c 24 40 01 	vmovups YMMWORD PTR [rsp+0x140],ymm1
  6e7912:	00 00 
  6e7914:	c4 c1 1c 58 e9       	vaddps ymm5,ymm12,ymm9
  6e7919:	c5 fc 11 ac 24 80 00 	vmovups YMMWORD PTR [rsp+0x80],ymm5
  6e7920:	00 00 
  6e7922:	c5 7c 5c cf          	vsubps ymm9,ymm0,ymm7
  6e7926:	c5 6c 5c d3          	vsubps ymm10,ymm2,ymm3
  6e792a:	c5 fc 10 54 24 40    	vmovups ymm2,YMMWORD PTR [rsp+0x40]
  6e7930:	c4 e3 6d 06 c1 31    	vperm2f128 ymm0,ymm2,ymm1,0x31
  6e7936:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  6e793c:	c5 7c 28 f4          	vmovaps ymm14,ymm4
  6e7940:	c4 c3 5d 06 c9 31    	vperm2f128 ymm1,ymm4,ymm9,0x31
  6e7946:	c5 fc 11 4c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm1
  6e794c:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  6e7952:	c5 fc 11 9c 24 20 01 	vmovups YMMWORD PTR [rsp+0x120],ymm3
  6e7959:	00 00 
  6e795b:	c4 63 7d 19 ef 01    	vextractf128 xmm7,ymm13,0x1
  6e7961:	c5 fc 14 c1          	vunpcklps ymm0,ymm0,ymm1
  6e7965:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  6e796b:	c5 e4 14 cf          	vunpcklps ymm1,ymm3,ymm7
  6e796f:	c5 fc 11 4c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm1
  6e7975:	c5 fd 14 e1          	vunpcklpd ymm4,ymm0,ymm1
  6e7979:	c5 7c 10 64 24 60    	vmovups ymm12,YMMWORD PTR [rsp+0x60]
  6e797f:	c4 e3 1d 06 c5 31    	vperm2f128 ymm0,ymm12,ymm5,0x31
  6e7985:	c5 fc 11 84 24 c0 00 	vmovups YMMWORD PTR [rsp+0xc0],ymm0
  6e798c:	00 00 
  6e798e:	c4 c3 05 06 ca 31    	vperm2f128 ymm1,ymm15,ymm10,0x31
  6e7994:	c5 7c 29 de          	vmovaps ymm6,ymm11
  6e7998:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  6e799e:	c5 7c 11 9c 24 a0 00 	vmovups YMMWORD PTR [rsp+0xa0],ymm11
  6e79a5:	00 00 
  6e79a7:	c4 43 7d 19 c5 01    	vextractf128 xmm13,ymm8,0x1
  6e79ad:	c5 7c 29 c3          	vmovaps ymm3,ymm8
  6e79b1:	c5 fc 14 e9          	vunpcklps ymm5,ymm0,ymm1
  6e79b5:	c5 fc 11 ac 24 80 01 	vmovups YMMWORD PTR [rsp+0x180],ymm5
  6e79bc:	00 00 
  6e79be:	c4 c1 24 14 c5       	vunpcklps ymm0,ymm11,ymm13
  6e79c3:	c5 fc 11 84 24 a0 01 	vmovups YMMWORD PTR [rsp+0x1a0],ymm0
  6e79ca:	00 00 
  6e79cc:	c5 d5 14 c0          	vunpcklpd ymm0,ymm5,ymm0
  6e79d0:	c5 7c 10 81 00 01 00 	vmovups ymm8,YMMWORD PTR [rcx+0x100]
  6e79d7:	00 
  6e79d8:	c5 fc 10 a9 20 01 00 	vmovups ymm5,YMMWORD PTR [rcx+0x120]
  6e79df:	00 
  6e79e0:	c5 3c 59 dc          	vmulps ymm11,ymm8,ymm4
  6e79e4:	c4 62 7d bc dd       	vfnmadd231ps ymm11,ymm0,ymm5
  6e79e9:	c5 7c 11 1c 24       	vmovups YMMWORD PTR [rsp],ymm11
  6e79ee:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  6e79f2:	c4 e2 5d b8 c5       	vfmadd231ps ymm0,ymm4,ymm5
  6e79f7:	c5 fc 11 84 24 60 01 	vmovups YMMWORD PTR [rsp+0x160],ymm0
  6e79fe:	00 00 
  6e7a00:	c4 e3 6d 18 84 24 40 	vinsertf128 ymm0,ymm2,XMMWORD PTR [rsp+0x140],0x1
  6e7a07:	01 00 00 01 
  6e7a0b:	c5 fc 11 44 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm0
  6e7a11:	c4 43 0d 18 d9 01    	vinsertf128 ymm11,ymm14,xmm9,0x1
  6e7a17:	c4 63 1d 18 b4 24 80 	vinsertf128 ymm14,ymm12,XMMWORD PTR [rsp+0x80],0x1
  6e7a1e:	00 00 00 01 
  6e7a22:	c4 43 05 18 e2 01    	vinsertf128 ymm12,ymm15,xmm10,0x1
  6e7a28:	c5 78 28 8c 24 00 01 	vmovaps xmm9,XMMWORD PTR [rsp+0x100]
  6e7a2f:	00 00 
  6e7a31:	c5 f8 28 94 24 e0 00 	vmovaps xmm2,XMMWORD PTR [rsp+0xe0]
  6e7a38:	00 00 
  6e7a3a:	c5 f8 28 e6          	vmovaps xmm4,xmm6
  6e7a3e:	c5 f8 28 db          	vmovaps xmm3,xmm3
  6e7a42:	c4 c1 7c 15 c3       	vunpckhps ymm0,ymm0,ymm11
  6e7a47:	c5 fc 11 84 24 e0 00 	vmovups YMMWORD PTR [rsp+0xe0],ymm0
  6e7a4e:	00 00 
  6e7a50:	c5 b4 15 ea          	vunpckhps ymm5,ymm9,ymm2
  6e7a54:	c5 fc 11 ac 24 00 01 	vmovups YMMWORD PTR [rsp+0x100],ymm5
  6e7a5b:	00 00 
  6e7a5d:	c5 fd 14 ed          	vunpcklpd ymm5,ymm0,ymm5
  6e7a61:	c4 c1 0c 15 c4       	vunpckhps ymm0,ymm14,ymm12
  6e7a66:	c5 fc 11 44 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm0
  6e7a6c:	c5 dc 15 f3          	vunpckhps ymm6,ymm4,ymm3
  6e7a70:	c5 fc 11 b4 24 80 00 	vmovups YMMWORD PTR [rsp+0x80],ymm6
  6e7a77:	00 00 
  6e7a79:	c5 fd 14 f6          	vunpcklpd ymm6,ymm0,ymm6
  6e7a7d:	c5 7c 10 81 80 00 00 	vmovups ymm8,YMMWORD PTR [rcx+0x80]
  6e7a84:	00 
  6e7a85:	c5 fc 10 81 a0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xa0]
  6e7a8c:	00 
  6e7a8d:	c5 3c 59 d5          	vmulps ymm10,ymm8,ymm5
  6e7a91:	c4 62 4d bc d0       	vfnmadd231ps ymm10,ymm6,ymm0
  6e7a96:	c5 7c 11 94 24 40 01 	vmovups YMMWORD PTR [rsp+0x140],ymm10
  6e7a9d:	00 00 
  6e7a9f:	c5 3c 59 d6          	vmulps ymm10,ymm8,ymm6
  6e7aa3:	c4 62 55 b8 d0       	vfmadd231ps ymm10,ymm5,ymm0
  6e7aa8:	c5 fc 10 44 24 a0    	vmovups ymm0,YMMWORD PTR [rsp-0x60]
  6e7aae:	c5 fc 15 6c 24 80    	vunpckhps ymm5,ymm0,YMMWORD PTR [rsp-0x80]
  6e7ab4:	c5 fc 11 6c 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm5
  6e7aba:	c5 fc 10 84 24 20 01 	vmovups ymm0,YMMWORD PTR [rsp+0x120]
  6e7ac1:	00 00 
  6e7ac3:	c5 fc 15 f7          	vunpckhps ymm6,ymm0,ymm7
  6e7ac7:	c5 fc 11 74 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm6
  6e7acd:	c5 fc 10 84 24 c0 00 	vmovups ymm0,YMMWORD PTR [rsp+0xc0]
  6e7ad4:	00 00 
  6e7ad6:	c5 fc 15 f9          	vunpckhps ymm7,ymm0,ymm1
  6e7ada:	c5 fc 11 bc 24 20 01 	vmovups YMMWORD PTR [rsp+0x120],ymm7
  6e7ae1:	00 00 
  6e7ae3:	c5 fc 10 84 24 a0 00 	vmovups ymm0,YMMWORD PTR [rsp+0xa0]
  6e7aea:	00 00 
  6e7aec:	c4 c1 7c 15 c5       	vunpckhps ymm0,ymm0,ymm13
  6e7af1:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  6e7af7:	c5 d5 14 ce          	vunpcklpd ymm1,ymm5,ymm6
  6e7afb:	c5 c5 14 e8          	vunpcklpd ymm5,ymm7,ymm0
  6e7aff:	c5 7c 10 a9 80 01 00 	vmovups ymm13,YMMWORD PTR [rcx+0x180]
  6e7b06:	00 
  6e7b07:	c5 fc 10 81 a0 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x1a0]
  6e7b0e:	00 
  6e7b0f:	c5 14 59 f9          	vmulps ymm15,ymm13,ymm1
  6e7b13:	c4 62 55 bc f8       	vfnmadd231ps ymm15,ymm5,ymm0
  6e7b18:	c5 94 59 fd          	vmulps ymm7,ymm13,ymm5
  6e7b1c:	c4 e2 75 b8 f8       	vfmadd231ps ymm7,ymm1,ymm0
  6e7b21:	c5 fc 10 44 24 20    	vmovups ymm0,YMMWORD PTR [rsp+0x20]
  6e7b27:	c4 c1 7c 14 cb       	vunpcklps ymm1,ymm0,ymm11
  6e7b2c:	c5 fc 11 8c 24 a0 00 	vmovups YMMWORD PTR [rsp+0xa0],ymm1
  6e7b33:	00 00 
  6e7b35:	c5 b4 14 c2          	vunpcklps ymm0,ymm9,ymm2
  6e7b39:	c5 fc 11 84 24 c0 00 	vmovups YMMWORD PTR [rsp+0xc0],ymm0
  6e7b40:	00 00 
  6e7b42:	c4 c1 0c 14 d4       	vunpcklps ymm2,ymm14,ymm12
  6e7b47:	c5 fc 11 54 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm2
  6e7b4d:	c5 5c 14 eb          	vunpcklps ymm13,ymm4,ymm3
  6e7b51:	c5 f5 15 c0          	vunpckhpd ymm0,ymm1,ymm0
  6e7b55:	c4 c1 6d 15 cd       	vunpckhpd ymm1,ymm2,ymm13
  6e7b5a:	c5 fc 10 51 40       	vmovups ymm2,YMMWORD PTR [rcx+0x40]
  6e7b5f:	c5 7c 10 49 60       	vmovups ymm9,YMMWORD PTR [rcx+0x60]
  6e7b64:	c5 6c 59 c0          	vmulps ymm8,ymm2,ymm0
  6e7b68:	c4 42 75 bc c1       	vfnmadd231ps ymm8,ymm1,ymm9
  6e7b6d:	c5 ec 59 f1          	vmulps ymm6,ymm2,ymm1
  6e7b71:	c4 c2 7d b8 f1       	vfmadd231ps ymm6,ymm0,ymm9
  6e7b76:	c5 fc 10 44 24 c0    	vmovups ymm0,YMMWORD PTR [rsp-0x40]
  6e7b7c:	c5 fd 15 44 24 e0    	vunpckhpd ymm0,ymm0,YMMWORD PTR [rsp-0x20]
  6e7b82:	c5 fc 10 8c 24 80 01 	vmovups ymm1,YMMWORD PTR [rsp+0x180]
  6e7b89:	00 00 
  6e7b8b:	c5 f5 15 8c 24 a0 01 	vunpckhpd ymm1,ymm1,YMMWORD PTR [rsp+0x1a0]
  6e7b92:	00 00 
  6e7b94:	c5 7c 10 89 40 01 00 	vmovups ymm9,YMMWORD PTR [rcx+0x140]
  6e7b9b:	00 
  6e7b9c:	c5 7c 10 99 60 01 00 	vmovups ymm11,YMMWORD PTR [rcx+0x160]
  6e7ba3:	00 
  6e7ba4:	c5 b4 59 e0          	vmulps ymm4,ymm9,ymm0
  6e7ba8:	c4 c2 75 bc e3       	vfnmadd231ps ymm4,ymm1,ymm11
  6e7bad:	c5 b4 59 e9          	vmulps ymm5,ymm9,ymm1
  6e7bb1:	c4 c2 7d b8 eb       	vfmadd231ps ymm5,ymm0,ymm11
  6e7bb6:	c5 fc 10 84 24 e0 00 	vmovups ymm0,YMMWORD PTR [rsp+0xe0]
  6e7bbd:	00 00 
  6e7bbf:	c5 7d 15 8c 24 00 01 	vunpckhpd ymm9,ymm0,YMMWORD PTR [rsp+0x100]
  6e7bc6:	00 00 
  6e7bc8:	c5 fc 10 44 24 60    	vmovups ymm0,YMMWORD PTR [rsp+0x60]
  6e7bce:	c5 7d 15 9c 24 80 00 	vunpckhpd ymm11,ymm0,YMMWORD PTR [rsp+0x80]
  6e7bd5:	00 00 
  6e7bd7:	c5 fc 10 81 c0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xc0]
  6e7bde:	00 
  6e7bdf:	c5 7c 10 b1 e0 00 00 	vmovups ymm14,YMMWORD PTR [rcx+0xe0]
  6e7be6:	00 
  6e7be7:	c5 b4 59 d8          	vmulps ymm3,ymm9,ymm0
  6e7beb:	c4 c2 25 bc de       	vfnmadd231ps ymm3,ymm11,ymm14
  6e7bf0:	c5 24 59 d8          	vmulps ymm11,ymm11,ymm0
  6e7bf4:	c4 42 35 b8 de       	vfmadd231ps ymm11,ymm9,ymm14
  6e7bf9:	c5 fc 10 44 24 40    	vmovups ymm0,YMMWORD PTR [rsp+0x40]
  6e7bff:	c5 fd 15 54 24 a0    	vunpckhpd ymm2,ymm0,YMMWORD PTR [rsp-0x60]
  6e7c05:	c5 fc 10 84 24 20 01 	vmovups ymm0,YMMWORD PTR [rsp+0x120]
  6e7c0c:	00 00 
  6e7c0e:	c5 7d 15 4c 24 80    	vunpckhpd ymm9,ymm0,YMMWORD PTR [rsp-0x80]
  6e7c14:	c5 7c 10 b1 c0 01 00 	vmovups ymm14,YMMWORD PTR [rcx+0x1c0]
  6e7c1b:	00 
  6e7c1c:	c5 fc 10 89 e0 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x1e0]
  6e7c23:	00 
  6e7c24:	c5 8c 59 c2          	vmulps ymm0,ymm14,ymm2
  6e7c28:	c4 e2 35 bc c1       	vfnmadd231ps ymm0,ymm9,ymm1
  6e7c2d:	c4 41 0c 59 e1       	vmulps ymm12,ymm14,ymm9
  6e7c32:	c4 62 6d b8 e1       	vfmadd231ps ymm12,ymm2,ymm1
  6e7c37:	c5 fc 10 8c 24 a0 00 	vmovups ymm1,YMMWORD PTR [rsp+0xa0]
  6e7c3e:	00 00 
  6e7c40:	c5 f5 14 8c 24 c0 00 	vunpcklpd ymm1,ymm1,YMMWORD PTR [rsp+0xc0]
  6e7c47:	00 00 
  6e7c49:	c5 fc 10 54 24 20    	vmovups ymm2,YMMWORD PTR [rsp+0x20]
  6e7c4f:	c4 c1 6d 14 d5       	vunpcklpd ymm2,ymm2,ymm13
  6e7c54:	c5 7c 10 2c 24       	vmovups ymm13,YMMWORD PTR [rsp]
  6e7c59:	c5 14 58 c9          	vaddps ymm9,ymm13,ymm1
  6e7c5d:	c4 c1 74 5c cd       	vsubps ymm1,ymm1,ymm13
  6e7c62:	c5 fc 11 4c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm1
  6e7c68:	c5 2c 58 f7          	vaddps ymm14,ymm10,ymm7
  6e7c6c:	c5 ac 5c ff          	vsubps ymm7,ymm10,ymm7
  6e7c70:	c5 3c 58 ec          	vaddps ymm13,ymm8,ymm4
  6e7c74:	c5 bc 5c e4          	vsubps ymm4,ymm8,ymm4
  6e7c78:	c5 4c 58 d5          	vaddps ymm10,ymm6,ymm5
  6e7c7c:	c5 cc 5c ed          	vsubps ymm5,ymm6,ymm5
  6e7c80:	c4 c1 24 58 f4       	vaddps ymm6,ymm11,ymm12
  6e7c85:	c4 41 24 5c c4       	vsubps ymm8,ymm11,ymm12
  6e7c8a:	c5 64 58 d8          	vaddps ymm11,ymm3,ymm0
  6e7c8e:	c5 e4 5c c0          	vsubps ymm0,ymm3,ymm0
  6e7c92:	c5 fc 10 8c 24 60 01 	vmovups ymm1,YMMWORD PTR [rsp+0x160]
  6e7c99:	00 00 
  6e7c9b:	c5 f4 58 da          	vaddps ymm3,ymm1,ymm2
  6e7c9f:	c5 ec 5c d1          	vsubps ymm2,ymm2,ymm1
  6e7ca3:	c5 fc 10 8c 24 40 01 	vmovups ymm1,YMMWORD PTR [rsp+0x140]
  6e7caa:	00 00 
  6e7cac:	c5 04 58 e1          	vaddps ymm12,ymm15,ymm1
  6e7cb0:	c5 84 5c c9          	vsubps ymm1,ymm15,ymm1
  6e7cb4:	c5 5c 58 fd          	vaddps ymm15,ymm4,ymm5
  6e7cb8:	c5 7c 11 7c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm15
  6e7cbe:	c5 d4 5c e4          	vsubps ymm4,ymm5,ymm4
  6e7cc2:	c5 bc 5c e8          	vsubps ymm5,ymm8,ymm0
  6e7cc6:	c5 bc 58 c0          	vaddps ymm0,ymm8,ymm0
  6e7cca:	c4 41 34 58 c4       	vaddps ymm8,ymm9,ymm12
  6e7ccf:	c5 7c 11 04 24       	vmovups YMMWORD PTR [rsp],ymm8
  6e7cd4:	c4 41 34 5c e4       	vsubps ymm12,ymm9,ymm12
  6e7cd9:	c5 2c 58 c6          	vaddps ymm8,ymm10,ymm6
  6e7cdd:	c5 7c 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm8
  6e7ce3:	c5 2c 5c d6          	vsubps ymm10,ymm10,ymm6
  6e7ce7:	c5 8c 58 f3          	vaddps ymm6,ymm14,ymm3
  6e7ceb:	c5 fc 11 74 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm6
  6e7cf1:	c4 41 64 5c ce       	vsubps ymm9,ymm3,ymm14
  6e7cf6:	c4 41 14 58 fb       	vaddps ymm15,ymm13,ymm11
  6e7cfb:	c4 41 24 5c dd       	vsubps ymm11,ymm11,ymm13
  6e7d00:	c5 fc 10 5c 24 e0    	vmovups ymm3,YMMWORD PTR [rsp-0x20]
  6e7d06:	c5 64 58 ef          	vaddps ymm13,ymm3,ymm7
  6e7d0a:	c5 64 5c c7          	vsubps ymm8,ymm3,ymm7
  6e7d0e:	c4 e2 7d 18 1d 85 d6 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff98d685]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  6e7d15:	98 ff 
  6e7d17:	c5 dc 59 e3          	vmulps ymm4,ymm4,ymm3
  6e7d1b:	c5 fc 59 c3          	vmulps ymm0,ymm0,ymm3
  6e7d1f:	c5 5c 5c f0          	vsubps ymm14,ymm4,ymm0
  6e7d23:	c5 dc 58 f8          	vaddps ymm7,ymm4,ymm0
  6e7d27:	c5 f4 58 e2          	vaddps ymm4,ymm1,ymm2
  6e7d2b:	c5 ec 5c f1          	vsubps ymm6,ymm2,ymm1
  6e7d2f:	c5 e4 59 54 24 c0    	vmulps ymm2,ymm3,YMMWORD PTR [rsp-0x40]
  6e7d35:	c5 d4 59 eb          	vmulps ymm5,ymm5,ymm3
  6e7d39:	c5 ec 58 c5          	vaddps ymm0,ymm2,ymm5
  6e7d3d:	c5 d4 5c d2          	vsubps ymm2,ymm5,ymm2
  6e7d41:	c5 94 58 d8          	vaddps ymm3,ymm13,ymm0
  6e7d45:	c5 14 5c e8          	vsubps ymm13,ymm13,ymm0
  6e7d49:	c5 8c 58 c4          	vaddps ymm0,ymm14,ymm4
  6e7d4d:	c4 c1 5c 5c ee       	vsubps ymm5,ymm4,ymm14
  6e7d52:	c4 41 1c 58 f2       	vaddps ymm14,ymm12,ymm10
  6e7d57:	c4 41 1c 5c e2       	vsubps ymm12,ymm12,ymm10
  6e7d5c:	c4 c1 34 58 cb       	vaddps ymm1,ymm9,ymm11
  6e7d61:	c4 c1 34 5c e3       	vsubps ymm4,ymm9,ymm11
  6e7d66:	c5 3c 58 cf          	vaddps ymm9,ymm8,ymm7
  6e7d6a:	c5 bc 5c ff          	vsubps ymm7,ymm8,ymm7
  6e7d6e:	c5 fc 11 7c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm7
  6e7d74:	c5 4c 58 da          	vaddps ymm11,ymm6,ymm2
  6e7d78:	c5 cc 5c d2          	vsubps ymm2,ymm6,ymm2
  6e7d7c:	c5 fc 11 54 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm2
  6e7d82:	c5 fc 10 54 24 a0    	vmovups ymm2,YMMWORD PTR [rsp-0x60]
  6e7d88:	c5 fc 10 74 24 80    	vmovups ymm6,YMMWORD PTR [rsp-0x80]
  6e7d8e:	c5 cc 5c fa          	vsubps ymm7,ymm6,ymm2
  6e7d92:	c5 cc 58 f2          	vaddps ymm6,ymm6,ymm2
  6e7d96:	c5 fc 10 14 24       	vmovups ymm2,YMMWORD PTR [rsp]
  6e7d9b:	c4 41 6c 5c c7       	vsubps ymm8,ymm2,ymm15
  6e7da0:	c5 04 58 d2          	vaddps ymm10,ymm15,ymm2
  6e7da4:	c4 41 4c 14 fa       	vunpcklps ymm15,ymm6,ymm10
  6e7da9:	c4 c1 48 14 d2       	vunpcklps xmm2,xmm6,xmm10
  6e7dae:	c4 c1 48 15 f2       	vunpckhps xmm6,xmm6,xmm10
  6e7db3:	c5 f8 11 74 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm6
  6e7db9:	c5 f8 11 14 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm2
  6e7dbe:	c4 63 7d 19 7c 16 20 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x20],ymm15,0x1
  6e7dc5:	01 
  6e7dc6:	c5 fc 14 d3          	vunpcklps ymm2,ymm0,ymm3
  6e7dca:	c5 f8 14 f3          	vunpcklps xmm6,xmm0,xmm3
  6e7dce:	c5 f8 15 c3          	vunpckhps xmm0,xmm0,xmm3
  6e7dd2:	c5 f8 11 44 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm0
  6e7dd8:	c5 f8 11 74 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm6
  6e7dde:	c4 e3 7d 19 54 16 50 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x50],ymm2,0x1
  6e7de5:	01 
  6e7de6:	c4 c1 74 14 c6       	vunpcklps ymm0,ymm1,ymm14
  6e7deb:	c4 c1 70 14 d6       	vunpcklps xmm2,xmm1,xmm14
  6e7df0:	c4 c1 70 15 ce       	vunpckhps xmm1,xmm1,xmm14
  6e7df5:	c5 f8 11 4c 16 70    	vmovups XMMWORD PTR [rsi+rdx*1+0x70],xmm1
  6e7dfb:	c5 f8 11 54 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm2
  6e7e01:	c4 e3 7d 19 84 16 80 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x80],ymm0,0x1
  6e7e08:	00 00 00 01 
  6e7e0c:	c4 c1 24 14 c1       	vunpcklps ymm0,ymm11,ymm9
  6e7e11:	c4 c1 20 14 c9       	vunpcklps xmm1,xmm11,xmm9
  6e7e16:	c4 c1 20 15 d1       	vunpckhps xmm2,xmm11,xmm9
  6e7e1b:	c5 f8 11 94 16 a0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa0],xmm2
  6e7e22:	00 00 
  6e7e24:	c5 f8 11 8c 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm1
  6e7e2b:	00 00 
  6e7e2d:	c4 e3 7d 19 84 16 b0 	vextractf128 XMMWORD PTR [rsi+rdx*1+0xb0],ymm0,0x1
  6e7e34:	00 00 00 01 
  6e7e38:	c4 c1 44 14 c0       	vunpcklps ymm0,ymm7,ymm8
  6e7e3d:	c4 c1 40 14 c8       	vunpcklps xmm1,xmm7,xmm8
  6e7e42:	c4 c1 40 15 d0       	vunpckhps xmm2,xmm7,xmm8
  6e7e47:	c5 f8 11 94 16 d0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xd0],xmm2
  6e7e4e:	00 00 
  6e7e50:	c5 f8 11 8c 16 c0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xc0],xmm1
  6e7e57:	00 00 
  6e7e59:	c4 e3 7d 19 84 16 e0 	vextractf128 XMMWORD PTR [rsi+rdx*1+0xe0],ymm0,0x1
  6e7e60:	00 00 00 01 
  6e7e64:	c4 c1 54 14 c5       	vunpcklps ymm0,ymm5,ymm13
  6e7e69:	c4 c1 50 14 cd       	vunpcklps xmm1,xmm5,xmm13
  6e7e6e:	c4 c1 50 15 d5       	vunpckhps xmm2,xmm5,xmm13
  6e7e73:	c5 f8 11 94 16 00 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x100],xmm2
  6e7e7a:	00 00 
  6e7e7c:	c5 f8 11 8c 16 f0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xf0],xmm1
  6e7e83:	00 00 
  6e7e85:	c4 e3 7d 19 84 16 10 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x110],ymm0,0x1
  6e7e8c:	01 00 00 01 
  6e7e90:	c4 c1 5c 14 c4       	vunpcklps ymm0,ymm4,ymm12
  6e7e95:	c4 c1 58 14 cc       	vunpcklps xmm1,xmm4,xmm12
  6e7e9a:	c4 c1 58 15 d4       	vunpckhps xmm2,xmm4,xmm12
  6e7e9f:	c5 f8 11 94 16 30 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x130],xmm2
  6e7ea6:	00 00 
  6e7ea8:	c5 f8 11 8c 16 20 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x120],xmm1
  6e7eaf:	00 00 
  6e7eb1:	c4 e3 7d 19 84 16 40 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x140],ymm0,0x1
  6e7eb8:	01 00 00 01 
  6e7ebc:	c5 fc 10 54 24 e0    	vmovups ymm2,YMMWORD PTR [rsp-0x20]
  6e7ec2:	c5 fc 10 5c 24 c0    	vmovups ymm3,YMMWORD PTR [rsp-0x40]
  6e7ec8:	c5 e4 14 c2          	vunpcklps ymm0,ymm3,ymm2
  6e7ecc:	c5 e0 14 ca          	vunpcklps xmm1,xmm3,xmm2
  6e7ed0:	c5 e0 15 d2          	vunpckhps xmm2,xmm3,xmm2
  6e7ed4:	c5 f8 11 94 16 60 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x160],xmm2
  6e7edb:	00 00 
  6e7edd:	c5 f8 11 8c 16 50 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x150],xmm1
  6e7ee4:	00 00 
  6e7ee6:	c4 e3 7d 19 84 16 70 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x170],ymm0,0x1
  6e7eed:	01 00 00 01 
  6e7ef1:	48 81 c2 80 01 00 00 	add    rdx,0x180
  6e7ef8:	48 39 d0             	cmp    rax,rdx
  6e7efb:	0f 85 1f f8 ff ff    	jne    6e7720 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  6e7f01:	48 81 c4 c8 01 00 00 	add    rsp,0x1c8
  6e7f08:	c5 f8 77             	vzeroupper
  6e7f0b:	c3                   	ret
