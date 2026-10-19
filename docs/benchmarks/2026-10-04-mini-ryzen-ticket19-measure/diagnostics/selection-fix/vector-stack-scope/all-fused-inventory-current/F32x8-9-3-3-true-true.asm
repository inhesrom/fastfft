
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c4740 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c4740:	55                   	push   rbp
  6c4741:	48 89 e5             	mov    rbp,rsp
  6c4744:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6c4748:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  6c474f:	48 c1 e2 03          	shl    rdx,0x3
  6c4753:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  6c4757:	31 d2                	xor    edx,edx
  6c4759:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  6c475e:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  6c4763:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  6c4767:	c4 e2 7d 18 0d f0 0c 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9b0cf0]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c476e:	9b ff 
  6c4770:	c4 e2 7d 18 15 5b 0b 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff9b0b5b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c4777:	9b ff 
  6c4779:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  6c4780:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  6c4785:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  6c478a:	c5 fb 10 5c 17 10    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x10]
  6c4790:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6c4796:	c4 e3 65 0c d8 c0    	vblendps ymm3,ymm3,ymm0,0xc0
  6c479c:	c5 fb 10 64 17 28    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x28]
  6c47a2:	c4 e3 7d 18 e4 01    	vinsertf128 ymm4,ymm0,xmm4,0x1
  6c47a8:	c4 e3 5d 0c e0 c0    	vblendps ymm4,ymm4,ymm0,0xc0
  6c47ae:	c5 f8 10 34 17       	vmovups xmm6,XMMWORD PTR [rdi+rdx*1]
  6c47b3:	c5 f8 10 7c 17 18    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x18]
  6c47b9:	c5 78 10 44 17 30    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x30]
  6c47bf:	c5 fb 10 6c 17 40    	vmovsd xmm5,QWORD PTR [rdi+rdx*1+0x40]
  6c47c5:	c4 e3 7d 18 ed 01    	vinsertf128 ymm5,ymm0,xmm5,0x1
  6c47cb:	c4 e3 55 0c e8 c0    	vblendps ymm5,ymm5,ymm0,0xc0
  6c47d1:	c4 c3 7d 19 d9 01    	vextractf128 xmm9,ymm3,0x1
  6c47d7:	c4 c1 48 c6 d9 dd    	vshufps xmm3,xmm6,xmm9,0xdd
  6c47dd:	c4 c3 7d 19 e2 01    	vextractf128 xmm10,ymm4,0x1
  6c47e3:	c4 c1 40 c6 e2 dd    	vshufps xmm4,xmm7,xmm10,0xdd
  6c47e9:	c4 c3 7d 19 eb 01    	vextractf128 xmm11,ymm5,0x1
  6c47ef:	c4 c1 38 c6 eb dd    	vshufps xmm5,xmm8,xmm11,0xdd
  6c47f5:	c4 c1 48 c6 f1 88    	vshufps xmm6,xmm6,xmm9,0x88
  6c47fb:	c4 41 40 c6 ca 88    	vshufps xmm9,xmm7,xmm10,0x88
  6c4801:	c4 41 38 c6 d3 88    	vshufps xmm10,xmm8,xmm11,0x88
  6c4807:	c5 dc 58 fd          	vaddps ymm7,ymm4,ymm5
  6c480b:	c4 41 34 58 da       	vaddps ymm11,ymm9,ymm10
  6c4810:	c5 7c 28 c1          	vmovaps ymm8,ymm1
  6c4814:	c4 62 45 ac c3       	vfnmadd213ps ymm8,ymm7,ymm3
  6c4819:	c4 41 34 5c ca       	vsubps ymm9,ymm9,ymm10
  6c481e:	c5 34 59 ca          	vmulps ymm9,ymm9,ymm2
  6c4822:	c5 20 58 d6          	vaddps xmm10,xmm11,xmm6
  6c4826:	c4 e2 25 bc f1       	vfnmadd231ps ymm6,ymm11,ymm1
  6c482b:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  6c482f:	c5 dc 59 e2          	vmulps ymm4,ymm4,ymm2
  6c4833:	c5 c0 58 db          	vaddps xmm3,xmm7,xmm3
  6c4837:	c4 c1 38 58 e9       	vaddps xmm5,xmm8,xmm9
  6c483c:	c4 c1 38 5c f9       	vsubps xmm7,xmm8,xmm9
  6c4841:	c5 65 15 c7          	vunpckhpd ymm8,ymm3,ymm7
  6c4845:	c5 e5 14 ff          	vunpcklpd ymm7,ymm3,ymm7
  6c4849:	c4 63 55 0c c8 cc    	vblendps ymm9,ymm5,ymm0,0xcc
  6c484f:	c5 e5 73 dd 08       	vpsrldq ymm3,ymm5,0x8
  6c4854:	c5 bc c6 eb 88       	vshufps ymm5,ymm8,ymm3,0x88
  6c4859:	c4 c1 44 c6 d9 88    	vshufps ymm3,ymm7,ymm9,0x88
  6c485f:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6c4864:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  6c486a:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  6c486f:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  6c4874:	c5 48 5c c4          	vsubps xmm8,xmm6,xmm4
  6c4878:	c5 d8 58 e6          	vaddps xmm4,xmm4,xmm6
  6c487c:	c5 ad 15 f4          	vunpckhpd ymm6,ymm10,ymm4
  6c4880:	c5 2d 14 cc          	vunpcklpd ymm9,ymm10,ymm4
  6c4884:	c4 63 3d 0c d0 cc    	vblendps ymm10,ymm8,ymm0,0xcc
  6c488a:	c4 c1 5d 73 d8 08    	vpsrldq ymm4,ymm8,0x8
  6c4890:	c5 cc c6 f4 88       	vshufps ymm6,ymm6,ymm4,0x88
  6c4895:	c4 c1 34 c6 e2 88    	vshufps ymm4,ymm9,ymm10,0x88
  6c489b:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  6c48a0:	c4 41 34 c6 c2 dd    	vshufps ymm8,ymm9,ymm10,0xdd
  6c48a6:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  6c48ac:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  6c48b1:	c5 7c 10 49 40       	vmovups ymm9,YMMWORD PTR [rcx+0x40]
  6c48b6:	c5 7c 10 51 60       	vmovups ymm10,YMMWORD PTR [rcx+0x60]
  6c48bb:	c5 7c 10 99 80 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0x80]
  6c48c2:	00 
  6c48c3:	c5 7c 10 a1 a0 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0xa0]
  6c48ca:	00 
  6c48cb:	c5 34 59 ef          	vmulps ymm13,ymm9,ymm7
  6c48cf:	c4 42 3d bc ea       	vfnmadd231ps ymm13,ymm8,ymm10
  6c48d4:	c5 24 59 f5          	vmulps ymm14,ymm11,ymm5
  6c48d8:	c4 42 4d bc f4       	vfnmadd231ps ymm14,ymm6,ymm12
  6c48dd:	c4 41 14 58 fe       	vaddps ymm15,ymm13,ymm14
  6c48e2:	c4 41 34 59 c0       	vmulps ymm8,ymm9,ymm8
  6c48e7:	c4 42 45 b8 c2       	vfmadd231ps ymm8,ymm7,ymm10
  6c48ec:	c5 a4 59 f6          	vmulps ymm6,ymm11,ymm6
  6c48f0:	c4 c2 55 b8 f4       	vfmadd231ps ymm6,ymm5,ymm12
  6c48f5:	c5 bc 58 ee          	vaddps ymm5,ymm8,ymm6
  6c48f9:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  6c48fd:	c4 e2 05 ac fb       	vfnmadd213ps ymm7,ymm15,ymm3
  6c4902:	c5 bc 5c f6          	vsubps ymm6,ymm8,ymm6
  6c4906:	c5 cc 59 f2          	vmulps ymm6,ymm6,ymm2
  6c490a:	c5 7c 28 c1          	vmovaps ymm8,ymm1
  6c490e:	c4 62 55 ac c4       	vfnmadd213ps ymm8,ymm5,ymm4
  6c4913:	c4 41 14 5c ce       	vsubps ymm9,ymm13,ymm14
  6c4918:	c5 34 59 ca          	vmulps ymm9,ymm9,ymm2
  6c491c:	c5 80 58 db          	vaddps xmm3,xmm15,xmm3
  6c4920:	c5 d0 58 e4          	vaddps xmm4,xmm5,xmm4
  6c4924:	c5 d8 15 eb          	vunpckhps xmm5,xmm4,xmm3
  6c4928:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  6c492c:	c5 f8 11 1c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm3
  6c4931:	c5 f8 13 6c 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm5
  6c4937:	c5 c0 58 de          	vaddps xmm3,xmm7,xmm6
  6c493b:	c4 c1 38 5c e1       	vsubps xmm4,xmm8,xmm9
  6c4940:	c5 d8 15 eb          	vunpckhps xmm5,xmm4,xmm3
  6c4944:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  6c4948:	c5 f8 11 5c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm3
  6c494e:	c5 f8 13 6c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm5
  6c4954:	c5 c0 5c de          	vsubps xmm3,xmm7,xmm6
  6c4958:	c4 c1 38 58 e1       	vaddps xmm4,xmm8,xmm9
  6c495d:	c5 d8 15 eb          	vunpckhps xmm5,xmm4,xmm3
  6c4961:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  6c4965:	c5 f8 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm3
  6c496b:	c5 f8 13 6c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm5
  6c4971:	48 83 c2 48          	add    rdx,0x48
  6c4975:	48 39 d0             	cmp    rax,rdx
  6c4978:	0f 85 02 fe ff ff    	jne    6c4780 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x40>
  6c497e:	48 89 ec             	mov    rsp,rbp
  6c4981:	5d                   	pop    rbp
  6c4982:	c5 f8 77             	vzeroupper
  6c4985:	c3                   	ret
