
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006b7780 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6b7780:	55                   	push   rbp
  6b7781:	48 89 e5             	mov    rbp,rsp
  6b7784:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6b7788:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  6b778f:	48 6b c2 78          	imul   rax,rdx,0x78
  6b7793:	31 d2                	xor    edx,edx
  6b7795:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  6b779a:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  6b779f:	90                   	nop
  6b77a0:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  6b77a5:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  6b77aa:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  6b77af:	c5 fc 10 4c 17 28    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x28]
  6b77b5:	c5 fb 10 54 17 48    	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0x48]
  6b77bb:	c5 fc 10 6c 17 50    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x50]
  6b77c1:	c5 fb 10 7c 17 70    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x70]
  6b77c7:	c5 7b 10 44 17 20    	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x20]
  6b77cd:	c4 41 7c c6 c8 dd    	vshufps ymm9,ymm0,ymm8,0xdd
  6b77d3:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  6b77d9:	c5 74 c6 d2 dd       	vshufps ymm10,ymm1,ymm2,0xdd
  6b77de:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  6b77e4:	c5 54 c6 df dd       	vshufps ymm11,ymm5,ymm7,0xdd
  6b77e9:	c4 c1 7c c6 c0 88    	vshufps ymm0,ymm0,ymm8,0x88
  6b77ef:	c5 f4 c6 ca 88       	vshufps ymm1,ymm1,ymm2,0x88
  6b77f4:	c4 c3 fd 01 d3 d8    	vpermpd ymm2,ymm11,0xd8
  6b77fa:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  6b7800:	c5 d4 c6 ef 88       	vshufps ymm5,ymm5,ymm7,0x88
  6b7805:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  6b780b:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  6b7811:	c5 ac 58 fa          	vaddps ymm7,ymm10,ymm2
  6b7815:	c5 34 58 df          	vaddps ymm11,ymm9,ymm7
  6b7819:	c5 74 58 e5          	vaddps ymm12,ymm1,ymm5
  6b781d:	c5 1c 58 c0          	vaddps ymm8,ymm12,ymm0
  6b7821:	c4 e2 7d 18 1d 36 dc 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9bdc36]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6b7828:	9b ff 
  6b782a:	c4 c2 65 ac f9       	vfnmadd213ps ymm7,ymm3,ymm9
  6b782f:	c5 f4 5c cd          	vsubps ymm1,ymm1,ymm5
  6b7833:	c4 e2 7d 18 25 98 da 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff9bda98]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6b783a:	9b ff 
  6b783c:	c5 f4 59 cc          	vmulps ymm1,ymm1,ymm4
  6b7840:	c5 c4 58 e9          	vaddps ymm5,ymm7,ymm1
  6b7844:	c4 62 65 ac e0       	vfnmadd213ps ymm12,ymm3,ymm0
  6b7849:	c5 ac 5c c2          	vsubps ymm0,ymm10,ymm2
  6b784d:	c5 fc 59 c4          	vmulps ymm0,ymm0,ymm4
  6b7851:	c5 1c 5c d0          	vsubps ymm10,ymm12,ymm0
  6b7855:	c5 c4 5c c9          	vsubps ymm1,ymm7,ymm1
  6b7859:	c5 78 29 da          	vmovaps xmm2,xmm11
  6b785d:	c4 63 7d 19 df 01    	vextractf128 xmm7,ymm11,0x1
  6b7863:	c5 9c 58 c0          	vaddps ymm0,ymm12,ymm0
  6b7867:	c5 78 28 cd          	vmovaps xmm9,xmm5
  6b786b:	c4 c3 7d 19 eb 01    	vextractf128 xmm11,ymm5,0x1
  6b7871:	c5 78 28 e1          	vmovaps xmm12,xmm1
  6b7875:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  6b787b:	c5 c5 14 c9          	vunpcklpd ymm1,ymm7,ymm1
  6b787f:	c4 41 6d 15 ec       	vunpckhpd ymm13,ymm2,ymm12
  6b7884:	c5 fa 7e ed          	vmovq  xmm5,xmm5
  6b7888:	c4 c1 6d 14 d4       	vunpcklpd ymm2,ymm2,ymm12
  6b788d:	c4 c1 35 73 d9 08    	vpsrldq ymm9,ymm9,0x8
  6b7893:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  6b7897:	c4 e3 25 0c fc cc    	vblendps ymm7,ymm11,ymm4,0xcc
  6b789d:	c5 f4 c6 cf 88       	vshufps ymm1,ymm1,ymm7,0x88
  6b78a2:	c5 ec c6 fd 88       	vshufps ymm7,ymm2,ymm5,0x88
  6b78a7:	c5 ec c6 d5 dd       	vshufps ymm2,ymm2,ymm5,0xdd
  6b78ac:	c5 78 29 c5          	vmovaps xmm5,xmm8
  6b78b0:	c4 43 7d 19 c3 01    	vextractf128 xmm11,ymm8,0x1
  6b78b6:	c4 41 14 c6 e1 88    	vshufps ymm12,ymm13,ymm9,0x88
  6b78bc:	c4 41 78 28 f2       	vmovaps xmm14,xmm10
  6b78c1:	c4 43 7d 19 d7 01    	vextractf128 xmm15,ymm10,0x1
  6b78c7:	c5 f8 28 f0          	vmovaps xmm6,xmm0
  6b78cb:	c4 41 14 c6 c1 dd    	vshufps ymm8,ymm13,ymm9,0xdd
  6b78d1:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  6b78d7:	c5 25 14 e8          	vunpcklpd ymm13,ymm11,ymm0
  6b78db:	c5 d5 15 de          	vunpckhpd ymm3,ymm5,ymm6
  6b78df:	c5 ec c6 c2 d8       	vshufps ymm0,ymm2,ymm2,0xd8
  6b78e4:	c5 55 14 ce          	vunpcklpd ymm9,ymm5,ymm6
  6b78e8:	c4 41 7a 7e da       	vmovq  xmm11,xmm10
  6b78ed:	c4 c1 6d 73 de 08    	vpsrldq ymm2,ymm14,0x8
  6b78f3:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  6b78f9:	c4 e3 05 0c ec cc    	vblendps ymm5,ymm15,ymm4,0xcc
  6b78ff:	c5 94 c6 ed 88       	vshufps ymm5,ymm13,ymm5,0x88
  6b7904:	c4 c1 34 c6 f3 dd    	vshufps ymm6,ymm9,ymm11,0xdd
  6b790a:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6b790f:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  6b7914:	c5 64 c6 d2 88       	vshufps ymm10,ymm3,ymm2,0x88
  6b7919:	c5 64 c6 ea dd       	vshufps ymm13,ymm3,ymm2,0xdd
  6b791e:	c4 41 2c c6 fa d8    	vshufps ymm15,ymm10,ymm10,0xd8
  6b7924:	c5 d4 c6 d5 d8       	vshufps ymm2,ymm5,ymm5,0xd8
  6b7929:	c5 fc 10 59 40       	vmovups ymm3,YMMWORD PTR [rcx+0x40]
  6b792e:	c5 7c 10 71 60       	vmovups ymm14,YMMWORD PTR [rcx+0x60]
  6b7933:	c5 64 59 d0          	vmulps ymm10,ymm3,ymm0
  6b7937:	c4 42 4d bc d6       	vfnmadd231ps ymm10,ymm6,ymm14
  6b793c:	c5 e4 59 ee          	vmulps ymm5,ymm3,ymm6
  6b7940:	c5 fc 10 99 00 01 00 	vmovups ymm3,YMMWORD PTR [rcx+0x100]
  6b7947:	00 
  6b7948:	c4 c2 7d b8 ee       	vfmadd231ps ymm5,ymm0,ymm14
  6b794d:	c5 fc 10 81 20 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x120]
  6b7954:	00 
  6b7955:	c5 64 59 f1          	vmulps ymm14,ymm3,ymm1
  6b7959:	c5 e4 59 da          	vmulps ymm3,ymm3,ymm2
  6b795d:	c4 62 6d bc f0       	vfnmadd231ps ymm14,ymm2,ymm0
  6b7962:	c5 fc 10 b1 80 00 00 	vmovups ymm6,YMMWORD PTR [rcx+0x80]
  6b7969:	00 
  6b796a:	c4 e2 75 b8 d8       	vfmadd231ps ymm3,ymm1,ymm0
  6b796f:	c5 fc 10 81 a0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xa0]
  6b7976:	00 
  6b7977:	c5 9c 59 d6          	vmulps ymm2,ymm12,ymm6
  6b797b:	c4 e2 05 bc d0       	vfnmadd231ps ymm2,ymm15,ymm0
  6b7980:	c5 84 59 f6          	vmulps ymm6,ymm15,ymm6
  6b7984:	c4 c1 3c c6 c8 d8    	vshufps ymm1,ymm8,ymm8,0xd8
  6b798a:	c4 41 14 c6 c5 d8    	vshufps ymm8,ymm13,ymm13,0xd8
  6b7990:	c4 e2 1d b8 f0       	vfmadd231ps ymm6,ymm12,ymm0
  6b7995:	c5 fc 10 81 c0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xc0]
  6b799c:	00 
  6b799d:	c5 7c 10 a1 e0 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0xe0]
  6b79a4:	00 
  6b79a5:	c4 41 34 c6 cb 88    	vshufps ymm9,ymm9,ymm11,0x88
  6b79ab:	c5 fc 59 e1          	vmulps ymm4,ymm0,ymm1
  6b79af:	c4 c2 3d bc e4       	vfnmadd231ps ymm4,ymm8,ymm12
  6b79b4:	c5 3c 59 c0          	vmulps ymm8,ymm8,ymm0
  6b79b8:	c5 c4 c6 c7 d8       	vshufps ymm0,ymm7,ymm7,0xd8
  6b79bd:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  6b79c3:	c4 42 75 b8 c4       	vfmadd231ps ymm8,ymm1,ymm12
  6b79c8:	c4 c1 2c 58 ce       	vaddps ymm1,ymm10,ymm14
  6b79cd:	c5 54 58 db          	vaddps ymm11,ymm5,ymm3
  6b79d1:	c5 54 5c eb          	vsubps ymm13,ymm5,ymm3
  6b79d5:	c5 3c 58 e6          	vaddps ymm12,ymm8,ymm6
  6b79d9:	c4 c1 4c 5c e8       	vsubps ymm5,ymm6,ymm8
  6b79de:	c5 6c 58 fc          	vaddps ymm15,ymm2,ymm4
  6b79e2:	c4 c1 2c 5c de       	vsubps ymm3,ymm10,ymm14
  6b79e7:	c4 e2 7d 18 3d f8 dc 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff9bdcf8]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  6b79ee:	9b ff 
  6b79f0:	c5 ec 5c d4          	vsubps ymm2,ymm2,ymm4
  6b79f4:	c4 e2 75 a8 f8       	vfmadd213ps ymm7,ymm1,ymm0
  6b79f9:	c4 e2 7d 18 35 42 dc 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff9bdc42]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  6b7a00:	9b ff 
  6b7a02:	c5 7c 28 c6          	vmovaps ymm8,ymm6
  6b7a06:	c4 62 75 ac c0       	vfnmadd213ps ymm8,ymm1,ymm0
  6b7a0b:	c5 f0 58 e0          	vaddps xmm4,xmm1,xmm0
  6b7a0f:	c4 e2 05 bc fe       	vfnmadd231ps ymm7,ymm15,ymm6
  6b7a14:	c4 e2 7d 18 0d 3b dd 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9bdd3b]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  6b7a1b:	9b ff 
  6b7a1d:	c5 54 59 d1          	vmulps ymm10,ymm5,ymm1
  6b7a21:	c4 62 7d 18 35 76 d9 	vbroadcastss ymm14,DWORD PTR [rip+0xffffffffff9bd976]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  6b7a28:	9b ff 
  6b7a2a:	c4 42 15 b8 d6       	vfmadd231ps ymm10,ymm13,ymm14
  6b7a2f:	c5 94 59 c1          	vmulps ymm0,ymm13,ymm1
  6b7a33:	c4 e2 0d bc c5       	vfnmadd231ps ymm0,ymm14,ymm5
  6b7a38:	c5 6c 59 e9          	vmulps ymm13,ymm2,ymm1
  6b7a3c:	c4 42 65 b8 ee       	vfmadd231ps ymm13,ymm3,ymm14
  6b7a41:	c5 e4 59 c9          	vmulps ymm1,ymm3,ymm1
  6b7a45:	c4 e2 0d bc ca       	vfnmadd231ps ymm1,ymm14,ymm2
  6b7a4a:	c4 e2 7d 18 15 95 dc 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff9bdc95]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  6b7a51:	9b ff 
  6b7a53:	c5 7c 28 f2          	vmovaps ymm14,ymm2
  6b7a57:	c4 42 25 a8 f1       	vfmadd213ps ymm14,ymm11,ymm9
  6b7a5c:	c4 62 1d bc f6       	vfnmadd231ps ymm14,ymm12,ymm6
  6b7a61:	c4 62 05 b8 c2       	vfmadd231ps ymm8,ymm15,ymm2
  6b7a66:	c5 fc 28 ea          	vmovaps ymm5,ymm2
  6b7a6a:	c5 80 58 dc          	vaddps xmm3,xmm15,xmm4
  6b7a6e:	c5 fc 28 d6          	vmovaps ymm2,ymm6
  6b7a72:	c4 c2 25 ac d1       	vfnmadd213ps ymm2,ymm11,ymm9
  6b7a77:	c4 e2 1d b8 d5       	vfmadd231ps ymm2,ymm12,ymm5
  6b7a7c:	c4 c1 20 58 e1       	vaddps xmm4,xmm11,xmm9
  6b7a81:	c5 98 58 e4          	vaddps xmm4,xmm12,xmm4
  6b7a85:	c5 d8 14 eb          	vunpcklps xmm5,xmm4,xmm3
  6b7a89:	c5 d8 15 db          	vunpckhps xmm3,xmm4,xmm3
  6b7a8d:	c5 f8 13 5c 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm3
  6b7a93:	c5 f8 11 2c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm5
  6b7a98:	c5 a8 58 df          	vaddps xmm3,xmm10,xmm7
  6b7a9c:	c4 c1 08 5c e5       	vsubps xmm4,xmm14,xmm13
  6b7aa1:	c5 d8 15 eb          	vunpckhps xmm5,xmm4,xmm3
  6b7aa5:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  6b7aa9:	c5 b8 58 e0          	vaddps xmm4,xmm8,xmm0
  6b7aad:	c5 f8 11 5c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm3
  6b7ab3:	c5 e8 5c d9          	vsubps xmm3,xmm2,xmm1
  6b7ab7:	c5 e0 15 f4          	vunpckhps xmm6,xmm3,xmm4
  6b7abb:	c5 e0 14 dc          	vunpcklps xmm3,xmm3,xmm4
  6b7abf:	c5 f8 13 6c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm5
  6b7ac5:	c5 f8 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm3
  6b7acb:	c5 b8 5c c0          	vsubps xmm0,xmm8,xmm0
  6b7acf:	c5 e8 58 c9          	vaddps xmm1,xmm2,xmm1
  6b7ad3:	c5 f8 13 74 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm6
  6b7ad9:	c5 f0 15 d0          	vunpckhps xmm2,xmm1,xmm0
  6b7add:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  6b7ae1:	c4 c1 40 5c ca       	vsubps xmm1,xmm7,xmm10
  6b7ae6:	c5 f8 11 44 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm0
  6b7aec:	c4 c1 08 58 c5       	vaddps xmm0,xmm14,xmm13
  6b7af1:	c5 f8 15 d9          	vunpckhps xmm3,xmm0,xmm1
  6b7af5:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  6b7af9:	c5 f8 13 54 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm2
  6b7aff:	c5 f8 11 44 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm0
  6b7b05:	c5 f8 13 5c 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm3
  6b7b0b:	48 83 c2 78          	add    rdx,0x78
  6b7b0f:	48 39 d0             	cmp    rax,rdx
  6b7b12:	0f 85 88 fc ff ff    	jne    6b77a0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  6b7b18:	48 89 ec             	mov    rsp,rbp
  6b7b1b:	5d                   	pop    rbp
  6b7b1c:	c5 f8 77             	vzeroupper
  6b7b1f:	c3                   	ret
