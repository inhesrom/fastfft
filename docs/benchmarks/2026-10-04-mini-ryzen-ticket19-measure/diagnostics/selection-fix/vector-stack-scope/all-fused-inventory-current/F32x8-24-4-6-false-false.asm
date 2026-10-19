
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000715700 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  715700:	55                   	push   rbp
  715701:	48 89 e5             	mov    rbp,rsp
  715704:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  715708:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  71570f:	c6 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],0x0
  715716:	00 
  715717:	48 8d 84 24 80 00 00 	lea    rax,[rsp+0x80]
  71571e:	00 
  71571f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  715724:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  715729:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  71572d:	c5 f8 10 4f 20       	vmovups xmm1,XMMWORD PTR [rdi+0x20]
  715732:	c5 fc 10 57 30       	vmovups ymm2,YMMWORD PTR [rdi+0x30]
  715737:	c5 f8 10 5f 50       	vmovups xmm3,XMMWORD PTR [rdi+0x50]
  71573c:	c5 fc 10 67 60       	vmovups ymm4,YMMWORD PTR [rdi+0x60]
  715741:	c5 f8 10 af 80 00 00 	vmovups xmm5,XMMWORD PTR [rdi+0x80]
  715748:	00 
  715749:	c5 fc 10 b7 90 00 00 	vmovups ymm6,YMMWORD PTR [rdi+0x90]
  715750:	00 
  715751:	c5 f8 10 bf b0 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0xb0]
  715758:	00 
  715759:	c5 7c c6 c1 88       	vshufps ymm8,ymm0,ymm1,0x88
  71575e:	c4 43 fd 01 c8 d8    	vpermpd ymm9,ymm8,0xd8
  715764:	c5 5c c6 c5 88       	vshufps ymm8,ymm4,ymm5,0x88
  715769:	c4 43 fd 01 d0 d8    	vpermpd ymm10,ymm8,0xd8
  71576f:	c5 6c c6 c3 88       	vshufps ymm8,ymm2,ymm3,0x88
  715774:	c4 43 fd 01 d8 d8    	vpermpd ymm11,ymm8,0xd8
  71577a:	c5 4c c6 c7 88       	vshufps ymm8,ymm6,ymm7,0x88
  71577f:	c4 43 fd 01 e0 d8    	vpermpd ymm12,ymm8,0xd8
  715785:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  71578a:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  715790:	c5 dc c6 cd dd       	vshufps ymm1,ymm4,ymm5,0xdd
  715795:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  71579b:	c5 ec c6 d3 dd       	vshufps ymm2,ymm2,ymm3,0xdd
  7157a0:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  7157a6:	c5 cc c6 df dd       	vshufps ymm3,ymm6,ymm7,0xdd
  7157ab:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  7157b1:	c4 c1 34 58 e2       	vaddps ymm4,ymm9,ymm10
  7157b6:	c4 c1 24 58 ec       	vaddps ymm5,ymm11,ymm12
  7157bb:	c5 dc 58 f5          	vaddps ymm6,ymm4,ymm5
  7157bf:	c5 fc 58 f9          	vaddps ymm7,ymm0,ymm1
  7157c3:	c5 6c 58 eb          	vaddps ymm13,ymm2,ymm3
  7157c7:	c5 14 58 c7          	vaddps ymm8,ymm13,ymm7
  7157cb:	c4 41 34 5c d2       	vsubps ymm10,ymm9,ymm10
  7157d0:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  7157d4:	c5 2c 58 f2          	vaddps ymm14,ymm10,ymm2
  7157d8:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  7157dc:	c4 c1 1c 5c cb       	vsubps ymm1,ymm12,ymm11
  7157e1:	c5 74 58 c8          	vaddps ymm9,ymm1,ymm0
  7157e5:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  7157e9:	c4 c1 44 5c ed       	vsubps ymm5,ymm7,ymm13
  7157ee:	c5 ac 5c d2          	vsubps ymm2,ymm10,ymm2
  7157f2:	c5 fc 5c d9          	vsubps ymm3,ymm0,ymm1
  7157f6:	c5 f8 28 c6          	vmovaps xmm0,xmm6
  7157fa:	c4 e3 7d 19 f1 01    	vextractf128 xmm1,ymm6,0x1
  715800:	c5 78 29 f6          	vmovaps xmm6,xmm14
  715804:	c4 63 7d 19 f7 01    	vextractf128 xmm7,ymm14,0x1
  71580a:	c5 78 28 d4          	vmovaps xmm10,xmm4
  71580e:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  715814:	c5 75 14 dc          	vunpcklpd ymm11,ymm1,ymm4
  715818:	c5 f8 28 ca          	vmovaps xmm1,xmm2
  71581c:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  715822:	c5 c5 14 d2          	vunpcklpd ymm2,ymm7,ymm2
  715826:	c4 c1 7d 15 e2       	vunpckhpd ymm4,ymm0,ymm10
  71582b:	c4 c1 7d 14 fa       	vunpcklpd ymm7,ymm0,ymm10
  715830:	c5 4d 15 d1          	vunpckhpd ymm10,ymm6,ymm1
  715834:	c5 cd 14 c9          	vunpcklpd ymm1,ymm6,ymm1
  715838:	c5 c4 c6 c1 88       	vshufps ymm0,ymm7,ymm1,0x88
  71583d:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  715842:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  715848:	c5 c4 c6 c9 dd       	vshufps ymm1,ymm7,ymm1,0xdd
  71584d:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  715852:	c4 c1 5c c6 f2 88    	vshufps ymm6,ymm4,ymm10,0x88
  715858:	c5 cc c6 fe d8       	vshufps ymm7,ymm6,ymm6,0xd8
  71585d:	c4 c1 5c c6 e2 dd    	vshufps ymm4,ymm4,ymm10,0xdd
  715863:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  715868:	c5 a4 c6 f2 88       	vshufps ymm6,ymm11,ymm2,0x88
  71586d:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  715872:	c5 a4 c6 d2 dd       	vshufps ymm2,ymm11,ymm2,0xdd
  715877:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  71587c:	c4 41 78 28 d0       	vmovaps xmm10,xmm8
  715881:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  715887:	c4 41 78 28 d9       	vmovaps xmm11,xmm9
  71588c:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  715892:	c5 78 28 e5          	vmovaps xmm12,xmm5
  715896:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  71589c:	c5 bd 14 ed          	vunpcklpd ymm5,ymm8,ymm5
  7158a0:	c5 78 28 c3          	vmovaps xmm8,xmm3
  7158a4:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  7158aa:	c5 35 14 eb          	vunpcklpd ymm13,ymm9,ymm3
  7158ae:	c4 41 2d 15 f4       	vunpckhpd ymm14,ymm10,ymm12
  7158b3:	c4 41 2d 14 cc       	vunpcklpd ymm9,ymm10,ymm12
  7158b8:	c4 41 25 15 d0       	vunpckhpd ymm10,ymm11,ymm8
  7158bd:	c4 41 25 14 c0       	vunpcklpd ymm8,ymm11,ymm8
  7158c2:	c4 c1 34 c6 d8 88    	vshufps ymm3,ymm9,ymm8,0x88
  7158c8:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  7158cd:	c4 41 34 c6 c0 dd    	vshufps ymm8,ymm9,ymm8,0xdd
  7158d3:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  7158d9:	c4 41 0c c6 ca 88    	vshufps ymm9,ymm14,ymm10,0x88
  7158df:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  7158e5:	c4 41 0c c6 d2 dd    	vshufps ymm10,ymm14,ymm10,0xdd
  7158eb:	c4 41 2c c6 f2 d8    	vshufps ymm14,ymm10,ymm10,0xd8
  7158f1:	c4 41 54 c6 d5 88    	vshufps ymm10,ymm5,ymm13,0x88
  7158f7:	c4 41 2c c6 e2 d8    	vshufps ymm12,ymm10,ymm10,0xd8
  7158fd:	c4 c1 54 c6 ed dd    	vshufps ymm5,ymm5,ymm13,0xdd
  715903:	c5 54 c6 ed d8       	vshufps ymm13,ymm5,ymm5,0xd8
  715908:	c5 7c 10 5a 40       	vmovups ymm11,YMMWORD PTR [rdx+0x40]
  71590d:	c5 7c 10 92 80 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0x80]
  715914:	00 
  715915:	c5 7c 10 ba a0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xa0]
  71591c:	00 
  71591d:	c5 ac 59 ef          	vmulps ymm5,ymm10,ymm7
  715921:	c4 c2 35 bc ef       	vfnmadd231ps ymm5,ymm9,ymm15
  715926:	c4 41 2c 59 c9       	vmulps ymm9,ymm10,ymm9
  71592b:	c5 fc 10 82 00 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x100]
  715932:	00 
  715933:	c4 42 45 b8 cf       	vfmadd231ps ymm9,ymm7,ymm15
  715938:	c5 fc 10 ba 20 01 00 	vmovups ymm7,YMMWORD PTR [rdx+0x120]
  71593f:	00 
  715940:	c5 7c 59 d6          	vmulps ymm10,ymm0,ymm6
  715944:	c4 62 1d bc d7       	vfnmadd231ps ymm10,ymm12,ymm7
  715949:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  71594d:	c5 fc 10 82 c0 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0xc0]
  715954:	00 
  715955:	c4 62 4d b8 e7       	vfmadd231ps ymm12,ymm6,ymm7
  71595a:	c5 7c 10 ba e0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xe0]
  715961:	00 
  715962:	c5 fc 59 f4          	vmulps ymm6,ymm0,ymm4
  715966:	c4 c2 0d bc f7       	vfnmadd231ps ymm6,ymm14,ymm15
  71596b:	c5 8c 59 f8          	vmulps ymm7,ymm14,ymm0
  71596f:	c5 fc 10 82 40 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x140]
  715976:	00 
  715977:	c4 c2 5d b8 ff       	vfmadd231ps ymm7,ymm4,ymm15
  71597c:	c5 7c 10 ba 60 01 00 	vmovups ymm15,YMMWORD PTR [rdx+0x160]
  715983:	00 
  715984:	c5 7c 59 f2          	vmulps ymm14,ymm0,ymm2
  715988:	c4 42 15 bc f7       	vfnmadd231ps ymm14,ymm13,ymm15
  71598d:	c5 94 59 e0          	vmulps ymm4,ymm13,ymm0
  715991:	c5 fc 10 42 60       	vmovups ymm0,YMMWORD PTR [rdx+0x60]
  715996:	c4 c2 6d b8 e7       	vfmadd231ps ymm4,ymm2,ymm15
  71599b:	c5 2c 58 ed          	vaddps ymm13,ymm10,ymm5
  71599f:	c5 24 59 f9          	vmulps ymm15,ymm11,ymm1
  7159a3:	c4 62 3d bc f8       	vfnmadd231ps ymm15,ymm8,ymm0
  7159a8:	c4 41 24 59 c0       	vmulps ymm8,ymm11,ymm8
  7159ad:	c5 fc 28 54 24 40    	vmovaps ymm2,YMMWORD PTR [rsp+0x40]
  7159b3:	c5 14 58 da          	vaddps ymm11,ymm13,ymm2
  7159b7:	c5 7c 29 5c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm11
  7159bd:	c4 62 75 b8 c0       	vfmadd231ps ymm8,ymm1,ymm0
  7159c2:	c4 62 7d 18 1d 95 fa 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff95fa95]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  7159c9:	95 ff 
  7159cb:	c4 c1 0c 58 cf       	vaddps ymm1,ymm14,ymm15
  7159d0:	c4 62 25 ac ea       	vfnmadd213ps ymm13,ymm11,ymm2
  7159d5:	c5 cc 58 c1          	vaddps ymm0,ymm6,ymm1
  7159d9:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  7159df:	c4 e2 25 bc f1       	vfnmadd231ps ymm6,ymm11,ymm1
  7159e4:	c4 c1 34 58 c4       	vaddps ymm0,ymm9,ymm12
  7159e9:	c5 fc 58 d3          	vaddps ymm2,ymm0,ymm3
  7159ed:	c4 e2 25 ac c3       	vfnmadd213ps ymm0,ymm11,ymm3
  7159f2:	c5 bc 58 cc          	vaddps ymm1,ymm8,ymm4
  7159f6:	c5 c4 58 d9          	vaddps ymm3,ymm7,ymm1
  7159fa:	c4 c2 75 bc fb       	vfnmadd231ps ymm7,ymm1,ymm11
  7159ff:	c4 c1 34 5c cc       	vsubps ymm1,ymm9,ymm12
  715a04:	c4 41 5c 5c c0       	vsubps ymm8,ymm4,ymm8
  715a09:	c4 62 7d 18 0d c2 f8 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff95f8c2]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  715a10:	95 ff 
  715a12:	c5 b4 59 c9          	vmulps ymm1,ymm9,ymm1
  715a16:	c4 c1 54 5c ea       	vsubps ymm5,ymm5,ymm10
  715a1b:	c5 94 58 e1          	vaddps ymm4,ymm13,ymm1
  715a1f:	c4 41 3c 59 e1       	vmulps ymm12,ymm8,ymm9
  715a24:	c4 41 0c 5c d7       	vsubps ymm10,ymm14,ymm15
  715a29:	c5 1c 58 c6          	vaddps ymm8,ymm12,ymm6
  715a2d:	c5 34 59 f5          	vmulps ymm14,ymm9,ymm5
  715a31:	c4 41 2c 59 f9       	vmulps ymm15,ymm10,ymm9
  715a36:	c4 41 7c 5c d6       	vsubps ymm10,ymm0,ymm14
  715a3b:	c5 94 5c e9          	vsubps ymm5,ymm13,ymm1
  715a3f:	c4 41 44 5c df       	vsubps ymm11,ymm7,ymm15
  715a44:	c4 c1 4c 5c f4       	vsubps ymm6,ymm6,ymm12
  715a49:	c5 0c 58 c8          	vaddps ymm9,ymm14,ymm0
  715a4d:	c5 84 58 ff          	vaddps ymm7,ymm15,ymm7
  715a51:	c5 e8 58 c3          	vaddps xmm0,xmm2,xmm3
  715a55:	c5 7c 28 6c 24 60    	vmovaps ymm13,YMMWORD PTR [rsp+0x60]
  715a5b:	c5 7c 28 74 24 40    	vmovaps ymm14,YMMWORD PTR [rsp+0x40]
  715a61:	c4 c1 10 58 ce       	vaddps xmm1,xmm13,xmm14
  715a66:	c5 70 14 e0          	vunpcklps xmm12,xmm1,xmm0
  715a6a:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  715a6e:	c5 f8 11 46 10       	vmovups XMMWORD PTR [rsi+0x10],xmm0
  715a73:	c5 78 11 26          	vmovups XMMWORD PTR [rsi],xmm12
  715a77:	c4 c1 28 5c c3       	vsubps xmm0,xmm10,xmm11
  715a7c:	c4 c1 58 5c c8       	vsubps xmm1,xmm4,xmm8
  715a81:	c5 70 14 e0          	vunpcklps xmm12,xmm1,xmm0
  715a85:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  715a89:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  715a8e:	c5 78 11 66 20       	vmovups XMMWORD PTR [rsi+0x20],xmm12
  715a93:	c5 b0 58 c7          	vaddps xmm0,xmm9,xmm7
  715a97:	c5 d0 58 ce          	vaddps xmm1,xmm5,xmm6
  715a9b:	c5 70 14 e0          	vunpcklps xmm12,xmm1,xmm0
  715a9f:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  715aa3:	c5 f8 11 46 50       	vmovups XMMWORD PTR [rsi+0x50],xmm0
  715aa8:	c5 78 11 66 40       	vmovups XMMWORD PTR [rsi+0x40],xmm12
  715aad:	c5 e8 5c c3          	vsubps xmm0,xmm2,xmm3
  715ab1:	c4 c1 10 5c ce       	vsubps xmm1,xmm13,xmm14
  715ab6:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  715aba:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  715abe:	c5 f8 11 46 70       	vmovups XMMWORD PTR [rsi+0x70],xmm0
  715ac3:	c5 f8 11 56 60       	vmovups XMMWORD PTR [rsi+0x60],xmm2
  715ac8:	c4 c1 28 58 c3       	vaddps xmm0,xmm10,xmm11
  715acd:	c5 b8 58 cc          	vaddps xmm1,xmm8,xmm4
  715ad1:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  715ad5:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  715ad9:	c5 f8 11 86 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm0
  715ae0:	00 
  715ae1:	c5 f8 11 96 80 00 00 	vmovups XMMWORD PTR [rsi+0x80],xmm2
  715ae8:	00 
  715ae9:	c5 b0 5c c7          	vsubps xmm0,xmm9,xmm7
  715aed:	c5 d0 5c ce          	vsubps xmm1,xmm5,xmm6
  715af1:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  715af5:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  715af9:	c5 f8 11 86 b0 00 00 	vmovups XMMWORD PTR [rsi+0xb0],xmm0
  715b00:	00 
  715b01:	c5 f8 11 96 a0 00 00 	vmovups XMMWORD PTR [rsi+0xa0],xmm2
  715b08:	00 
  715b09:	48 89 ec             	mov    rsp,rbp
  715b0c:	5d                   	pop    rbp
  715b0d:	c5 f8 77             	vzeroupper
  715b10:	c3                   	ret
