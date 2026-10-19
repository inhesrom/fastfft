
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006d4840 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6d4840:	55                   	push   rbp
  6d4841:	48 89 e5             	mov    rbp,rsp
  6d4844:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6d4848:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  6d484f:	48 c1 e2 06          	shl    rdx,0x6
  6d4853:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6d4857:	31 d2                	xor    edx,edx
  6d4859:	4c 8d 84 24 80 00 00 	lea    r8,[rsp+0x80]
  6d4860:	00 
  6d4861:	4c 8d 4c 24 18       	lea    r9,[rsp+0x18]
  6d4866:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  6d486d:	00 00 00 
  6d4870:	c6 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],0x0
  6d4877:	00 
  6d4878:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  6d487d:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  6d4882:	c5 f8 10 4c 17 20    	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x20]
  6d4888:	c5 fc 10 54 17 30    	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x30]
  6d488e:	c5 f8 10 5c 17 50    	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x50]
  6d4894:	c5 fc 10 64 17 60    	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x60]
  6d489a:	c5 f8 10 ac 17 80 00 	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x80]
  6d48a1:	00 00 
  6d48a3:	c5 fc 10 b4 17 90 00 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x90]
  6d48aa:	00 00 
  6d48ac:	c5 f8 10 bc 17 b0 00 	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0xb0]
  6d48b3:	00 00 
  6d48b5:	c5 7c c6 c1 88       	vshufps ymm8,ymm0,ymm1,0x88
  6d48ba:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  6d48c0:	c5 5c c6 cd 88       	vshufps ymm9,ymm4,ymm5,0x88
  6d48c5:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  6d48cb:	c5 6c c6 d3 88       	vshufps ymm10,ymm2,ymm3,0x88
  6d48d0:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  6d48d6:	c5 4c c6 df 88       	vshufps ymm11,ymm6,ymm7,0x88
  6d48db:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  6d48e1:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  6d48e6:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  6d48ec:	c5 dc c6 cd dd       	vshufps ymm1,ymm4,ymm5,0xdd
  6d48f1:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  6d48f7:	c5 ec c6 d3 dd       	vshufps ymm2,ymm2,ymm3,0xdd
  6d48fc:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  6d4902:	c5 cc c6 df dd       	vshufps ymm3,ymm6,ymm7,0xdd
  6d4907:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  6d490d:	c4 c1 3c 58 e1       	vaddps ymm4,ymm8,ymm9
  6d4912:	c4 c1 2c 58 eb       	vaddps ymm5,ymm10,ymm11
  6d4917:	c5 fc 58 f9          	vaddps ymm7,ymm0,ymm1
  6d491b:	c5 5c 58 e5          	vaddps ymm12,ymm4,ymm5
  6d491f:	c5 6c 58 eb          	vaddps ymm13,ymm2,ymm3
  6d4923:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  6d4928:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  6d492c:	c5 94 58 df          	vaddps ymm3,ymm13,ymm7
  6d4930:	c5 3c 58 ca          	vaddps ymm9,ymm8,ymm2
  6d4934:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  6d4938:	c4 c1 24 5c ca       	vsubps ymm1,ymm11,ymm10
  6d493d:	c5 f4 58 f0          	vaddps ymm6,ymm1,ymm0
  6d4941:	c5 5c 5c d5          	vsubps ymm10,ymm4,ymm5
  6d4945:	c4 c1 44 5c ed       	vsubps ymm5,ymm7,ymm13
  6d494a:	c5 bc 5c d2          	vsubps ymm2,ymm8,ymm2
  6d494e:	c5 fc 5c e1          	vsubps ymm4,ymm0,ymm1
  6d4952:	c5 78 29 e0          	vmovaps xmm0,xmm12
  6d4956:	c4 63 7d 19 e1 01    	vextractf128 xmm1,ymm12,0x1
  6d495c:	c5 78 29 cf          	vmovaps xmm7,xmm9
  6d4960:	c4 43 7d 19 c8 01    	vextractf128 xmm8,ymm9,0x1
  6d4966:	c4 41 78 28 ca       	vmovaps xmm9,xmm10
  6d496b:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  6d4971:	c5 78 28 da          	vmovaps xmm11,xmm2
  6d4975:	c4 c1 75 14 ca       	vunpcklpd ymm1,ymm1,ymm10
  6d497a:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  6d4980:	c5 3d 14 c2          	vunpcklpd ymm8,ymm8,ymm2
  6d4984:	c4 c1 7d 15 d1       	vunpckhpd ymm2,ymm0,ymm9
  6d4989:	c4 c1 7d 14 c1       	vunpcklpd ymm0,ymm0,ymm9
  6d498e:	c4 41 45 15 cb       	vunpckhpd ymm9,ymm7,ymm11
  6d4993:	c4 c1 45 14 fb       	vunpcklpd ymm7,ymm7,ymm11
  6d4998:	c5 7c c6 d7 88       	vshufps ymm10,ymm0,ymm7,0x88
  6d499d:	c5 fc c6 c7 dd       	vshufps ymm0,ymm0,ymm7,0xdd
  6d49a2:	c4 c1 6c c6 f9 88    	vshufps ymm7,ymm2,ymm9,0x88
  6d49a8:	c4 41 6c c6 d9 dd    	vshufps ymm11,ymm2,ymm9,0xdd
  6d49ae:	c4 41 74 c6 e0 88    	vshufps ymm12,ymm1,ymm8,0x88
  6d49b4:	c4 c1 2c c6 d2 d8    	vshufps ymm2,ymm10,ymm10,0xd8
  6d49ba:	c4 c1 74 c6 c8 dd    	vshufps ymm1,ymm1,ymm8,0xdd
  6d49c0:	c5 78 28 c3          	vmovaps xmm8,xmm3
  6d49c4:	c4 c3 7d 19 da 01    	vextractf128 xmm10,ymm3,0x1
  6d49ca:	c5 fc c6 d8 d8       	vshufps ymm3,ymm0,ymm0,0xd8
  6d49cf:	c5 f8 28 c6          	vmovaps xmm0,xmm6
  6d49d3:	c4 c3 7d 19 f5 01    	vextractf128 xmm13,ymm6,0x1
  6d49d9:	c5 78 28 f5          	vmovaps xmm14,xmm5
  6d49dd:	c5 44 c6 cf d8       	vshufps ymm9,ymm7,ymm7,0xd8
  6d49e2:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  6d49e8:	c5 ad 14 ed          	vunpcklpd ymm5,ymm10,ymm5
  6d49ec:	c5 f8 28 fc          	vmovaps xmm7,xmm4
  6d49f0:	c4 c1 24 c6 f3 d8    	vshufps ymm6,ymm11,ymm11,0xd8
  6d49f6:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  6d49fc:	c5 15 14 ec          	vunpcklpd ymm13,ymm13,ymm4
  6d4a00:	c4 41 3d 15 fe       	vunpckhpd ymm15,ymm8,ymm14
  6d4a05:	c4 41 1c c6 d4 d8    	vshufps ymm10,ymm12,ymm12,0xd8
  6d4a0b:	c4 c1 3d 14 e6       	vunpcklpd ymm4,ymm8,ymm14
  6d4a10:	c5 7d 15 e7          	vunpckhpd ymm12,ymm0,ymm7
  6d4a14:	c5 fd 14 c7          	vunpcklpd ymm0,ymm0,ymm7
  6d4a18:	c5 f4 c6 f9 d8       	vshufps ymm7,ymm1,ymm1,0xd8
  6d4a1d:	c5 dc c6 c8 88       	vshufps ymm1,ymm4,ymm0,0x88
  6d4a22:	c5 5c c6 c0 dd       	vshufps ymm8,ymm4,ymm0,0xdd
  6d4a27:	c4 c1 04 c6 c4 88    	vshufps ymm0,ymm15,ymm12,0x88
  6d4a2d:	c5 f4 c6 e1 d8       	vshufps ymm4,ymm1,ymm1,0xd8
  6d4a32:	c5 7c c6 d8 d8       	vshufps ymm11,ymm0,ymm0,0xd8
  6d4a37:	c4 c1 04 c6 c4 dd    	vshufps ymm0,ymm15,ymm12,0xdd
  6d4a3d:	c4 c1 54 c6 cd 88    	vshufps ymm1,ymm5,ymm13,0x88
  6d4a43:	c5 7c c6 e0 d8       	vshufps ymm12,ymm0,ymm0,0xd8
  6d4a48:	c5 74 c6 f9 d8       	vshufps ymm15,ymm1,ymm1,0xd8
  6d4a4d:	c4 c1 54 c6 c5 dd    	vshufps ymm0,ymm5,ymm13,0xdd
  6d4a53:	c5 fc 10 89 80 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0x80]
  6d4a5a:	00 
  6d4a5b:	c5 7c c6 e8 d8       	vshufps ymm13,ymm0,ymm0,0xd8
  6d4a60:	c5 fc 10 81 a0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xa0]
  6d4a67:	00 
  6d4a68:	c5 b4 59 e9          	vmulps ymm5,ymm9,ymm1
  6d4a6c:	c5 24 59 f1          	vmulps ymm14,ymm11,ymm1
  6d4a70:	c4 e2 25 bc e8       	vfnmadd231ps ymm5,ymm11,ymm0
  6d4a75:	c5 fc 29 6c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm5
  6d4a7b:	c5 fc 10 89 00 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x100]
  6d4a82:	00 
  6d4a83:	c4 62 35 b8 f0       	vfmadd231ps ymm14,ymm9,ymm0
  6d4a88:	c5 fc 10 81 20 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x120]
  6d4a8f:	00 
  6d4a90:	c5 2c 59 d9          	vmulps ymm11,ymm10,ymm1
  6d4a94:	c4 62 05 bc d8       	vfnmadd231ps ymm11,ymm15,ymm0
  6d4a99:	c5 84 59 c9          	vmulps ymm1,ymm15,ymm1
  6d4a9d:	c5 7c 10 89 c0 00 00 	vmovups ymm9,YMMWORD PTR [rcx+0xc0]
  6d4aa4:	00 
  6d4aa5:	c4 e2 2d b8 c8       	vfmadd231ps ymm1,ymm10,ymm0
  6d4aaa:	c5 fc 10 81 e0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xe0]
  6d4ab1:	00 
  6d4ab2:	c5 34 59 d6          	vmulps ymm10,ymm9,ymm6
  6d4ab6:	c4 41 34 59 cc       	vmulps ymm9,ymm9,ymm12
  6d4abb:	c4 62 1d bc d0       	vfnmadd231ps ymm10,ymm12,ymm0
  6d4ac0:	c5 7c 10 b9 40 01 00 	vmovups ymm15,YMMWORD PTR [rcx+0x140]
  6d4ac7:	00 
  6d4ac8:	c4 62 4d b8 c8       	vfmadd231ps ymm9,ymm6,ymm0
  6d4acd:	c5 fc 10 81 60 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x160]
  6d4ad4:	00 
  6d4ad5:	c5 04 59 e7          	vmulps ymm12,ymm15,ymm7
  6d4ad9:	c4 62 15 bc e0       	vfnmadd231ps ymm12,ymm13,ymm0
  6d4ade:	c4 c1 04 59 f5       	vmulps ymm6,ymm15,ymm13
  6d4ae3:	c5 7c 10 69 40       	vmovups ymm13,YMMWORD PTR [rcx+0x40]
  6d4ae8:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  6d4aee:	c4 e2 45 b8 f0       	vfmadd231ps ymm6,ymm7,ymm0
  6d4af3:	c5 fc 10 41 60       	vmovups ymm0,YMMWORD PTR [rcx+0x60]
  6d4af8:	c5 14 59 fb          	vmulps ymm15,ymm13,ymm3
  6d4afc:	c4 62 3d bc f8       	vfnmadd231ps ymm15,ymm8,ymm0
  6d4b01:	c4 c1 14 59 f8       	vmulps ymm7,ymm13,ymm8
  6d4b06:	c5 24 58 ed          	vaddps ymm13,ymm11,ymm5
  6d4b0a:	c4 e2 65 b8 f8       	vfmadd231ps ymm7,ymm3,ymm0
  6d4b0f:	c5 fc 28 da          	vmovaps ymm3,ymm2
  6d4b13:	c5 94 58 c2          	vaddps ymm0,ymm13,ymm2
  6d4b17:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  6d4b1d:	c5 8c 58 c1          	vaddps ymm0,ymm14,ymm1
  6d4b21:	c5 8c 5c d1          	vsubps ymm2,ymm14,ymm1
  6d4b25:	c4 41 1c 58 c7       	vaddps ymm8,ymm12,ymm15
  6d4b2a:	c4 e2 7d 18 2d 2d 09 	vbroadcastss ymm5,DWORD PTR [rip+0xffffffffff9a092d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6d4b31:	9a ff 
  6d4b33:	c4 62 55 ac eb       	vfnmadd213ps ymm13,ymm5,ymm3
  6d4b38:	c5 4c 58 f7          	vaddps ymm14,ymm6,ymm7
  6d4b3c:	c5 cc 5c cf          	vsubps ymm1,ymm6,ymm7
  6d4b40:	c4 c1 2c 58 d8       	vaddps ymm3,ymm10,ymm8
  6d4b45:	c5 fc 29 5c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm3
  6d4b4b:	c4 42 55 bc d0       	vfnmadd231ps ymm10,ymm5,ymm8
  6d4b50:	c5 fc 58 f4          	vaddps ymm6,ymm0,ymm4
  6d4b54:	c4 e2 55 ac c4       	vfnmadd213ps ymm0,ymm5,ymm4
  6d4b59:	c4 c1 34 58 fe       	vaddps ymm7,ymm9,ymm14
  6d4b5e:	c4 e2 7d 18 1d 6d 07 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9a076d]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6d4b65:	9a ff 
  6d4b67:	c5 ec 59 d3          	vmulps ymm2,ymm2,ymm3
  6d4b6b:	c5 f4 59 cb          	vmulps ymm1,ymm1,ymm3
  6d4b6f:	c5 fc 28 64 24 20    	vmovaps ymm4,YMMWORD PTR [rsp+0x20]
  6d4b75:	c4 c1 5c 5c e3       	vsubps ymm4,ymm4,ymm11
  6d4b7a:	c4 42 55 bc ce       	vfnmadd231ps ymm9,ymm5,ymm14
  6d4b7f:	c5 94 58 ea          	vaddps ymm5,ymm13,ymm2
  6d4b83:	c5 2c 58 c1          	vaddps ymm8,ymm10,ymm1
  6d4b87:	c5 5c 59 db          	vmulps ymm11,ymm4,ymm3
  6d4b8b:	c4 c1 1c 5c e7       	vsubps ymm4,ymm12,ymm15
  6d4b90:	c4 41 7c 5c e3       	vsubps ymm12,ymm0,ymm11
  6d4b95:	c5 5c 59 f3          	vmulps ymm14,ymm4,ymm3
  6d4b99:	c5 94 5c e2          	vsubps ymm4,ymm13,ymm2
  6d4b9d:	c4 41 34 5c ee       	vsubps ymm13,ymm9,ymm14
  6d4ba2:	c5 2c 5c d1          	vsubps ymm10,ymm10,ymm1
  6d4ba6:	c5 24 58 d8          	vaddps ymm11,ymm11,ymm0
  6d4baa:	c5 c8 58 c7          	vaddps xmm0,xmm6,xmm7
  6d4bae:	c5 fc 28 5c 24 60    	vmovaps ymm3,YMMWORD PTR [rsp+0x60]
  6d4bb4:	c5 7c 28 7c 24 40    	vmovaps ymm15,YMMWORD PTR [rsp+0x40]
  6d4bba:	c5 80 58 cb          	vaddps xmm1,xmm15,xmm3
  6d4bbe:	c4 41 34 58 ce       	vaddps ymm9,ymm9,ymm14
  6d4bc3:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6d4bc7:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6d4bcb:	c5 f8 11 44 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm0
  6d4bd1:	c5 f8 11 14 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm2
  6d4bd6:	c4 c1 18 5c c5       	vsubps xmm0,xmm12,xmm13
  6d4bdb:	c4 c1 50 5c c8       	vsubps xmm1,xmm5,xmm8
  6d4be0:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6d4be4:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6d4be8:	c5 f8 11 44 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm0
  6d4bee:	c4 c1 20 58 c1       	vaddps xmm0,xmm11,xmm9
  6d4bf3:	c5 a8 58 cc          	vaddps xmm1,xmm10,xmm4
  6d4bf7:	c5 f8 11 54 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm2
  6d4bfd:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6d4c01:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6d4c05:	c5 c8 5c cf          	vsubps xmm1,xmm6,xmm7
  6d4c09:	c5 f8 11 44 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm0
  6d4c0f:	c4 c1 60 5c c7       	vsubps xmm0,xmm3,xmm15
  6d4c14:	c5 f8 14 d9          	vunpcklps xmm3,xmm0,xmm1
  6d4c18:	c5 f8 15 c1          	vunpckhps xmm0,xmm0,xmm1
  6d4c1c:	c5 f8 11 54 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm2
  6d4c22:	c5 f8 11 44 16 70    	vmovups XMMWORD PTR [rsi+rdx*1+0x70],xmm0
  6d4c28:	c4 c1 18 58 c5       	vaddps xmm0,xmm12,xmm13
  6d4c2d:	c5 b8 58 cd          	vaddps xmm1,xmm8,xmm5
  6d4c31:	c5 f8 11 5c 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm3
  6d4c37:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6d4c3b:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6d4c3f:	c4 c1 20 5c c9       	vsubps xmm1,xmm11,xmm9
  6d4c44:	c5 f8 11 84 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm0
  6d4c4b:	00 00 
  6d4c4d:	c4 c1 58 5c c2       	vsubps xmm0,xmm4,xmm10
  6d4c52:	c5 f8 14 d9          	vunpcklps xmm3,xmm0,xmm1
  6d4c56:	c5 f8 15 c1          	vunpckhps xmm0,xmm0,xmm1
  6d4c5a:	c5 f8 11 94 16 80 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x80],xmm2
  6d4c61:	00 00 
  6d4c63:	c5 f8 11 84 16 b0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xb0],xmm0
  6d4c6a:	00 00 
  6d4c6c:	c5 f8 11 9c 16 a0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa0],xmm3
  6d4c73:	00 00 
  6d4c75:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  6d4c7c:	48 39 d0             	cmp    rax,rdx
  6d4c7f:	0f 85 eb fb ff ff    	jne    6d4870 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  6d4c85:	48 89 ec             	mov    rsp,rbp
  6d4c88:	5d                   	pop    rbp
  6d4c89:	c5 f8 77             	vzeroupper
  6d4c8c:	c3                   	ret
