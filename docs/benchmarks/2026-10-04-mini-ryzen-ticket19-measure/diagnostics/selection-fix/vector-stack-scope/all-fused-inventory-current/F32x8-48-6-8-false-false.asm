
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000709800 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  709800:	55                   	push   rbp
  709801:	48 89 e5             	mov    rbp,rsp
  709804:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  709808:	48 81 ec c0 02 00 00 	sub    rsp,0x2c0
  70980f:	c6 84 24 40 02 00 00 	mov    BYTE PTR [rsp+0x240],0x0
  709816:	00 
  709817:	48 8d 84 24 40 02 00 	lea    rax,[rsp+0x240]
  70981e:	00 
  70981f:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
  709824:	48 8d 44 24 78       	lea    rax,[rsp+0x78]
  709829:	c5 fc 10 1f          	vmovups ymm3,YMMWORD PTR [rdi]
  70982d:	c5 fc 10 67 20       	vmovups ymm4,YMMWORD PTR [rdi+0x20]
  709832:	c5 fc 10 4f 40       	vmovups ymm1,YMMWORD PTR [rdi+0x40]
  709837:	c5 fc 10 47 60       	vmovups ymm0,YMMWORD PTR [rdi+0x60]
  70983c:	c5 fc 10 b7 80 00 00 	vmovups ymm6,YMMWORD PTR [rdi+0x80]
  709843:	00 
  709844:	c5 7c 10 87 a0 00 00 	vmovups ymm8,YMMWORD PTR [rdi+0xa0]
  70984b:	00 
  70984c:	c5 7c 10 af c0 00 00 	vmovups ymm13,YMMWORD PTR [rdi+0xc0]
  709853:	00 
  709854:	c5 7c 10 b7 e0 00 00 	vmovups ymm14,YMMWORD PTR [rdi+0xe0]
  70985b:	00 
  70985c:	c5 7c 10 97 00 01 00 	vmovups ymm10,YMMWORD PTR [rdi+0x100]
  709863:	00 
  709864:	c5 7c 10 bf 20 01 00 	vmovups ymm15,YMMWORD PTR [rdi+0x120]
  70986b:	00 
  70986c:	c5 7c 10 a7 40 01 00 	vmovups ymm12,YMMWORD PTR [rdi+0x140]
  709873:	00 
  709874:	c5 7c 10 9f 60 01 00 	vmovups ymm11,YMMWORD PTR [rdi+0x160]
  70987b:	00 
  70987c:	c5 e4 c6 fc 88       	vshufps ymm7,ymm3,ymm4,0x88
  709881:	c4 e3 fd 01 d7 d8    	vpermpd ymm2,ymm7,0xd8
  709887:	c5 fc 29 54 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm2
  70988d:	c4 41 4c c6 c8 88    	vshufps ymm9,ymm6,ymm8,0x88
  709893:	c4 c3 fd 01 f9 d8    	vpermpd ymm7,ymm9,0xd8
  709899:	c5 fc 29 bc 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm7
  7098a0:	00 00 
  7098a2:	c4 41 2c c6 cf 88    	vshufps ymm9,ymm10,ymm15,0x88
  7098a8:	c4 c3 fd 01 e9 d8    	vpermpd ymm5,ymm9,0xd8
  7098ae:	c5 fc 29 ac 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm5
  7098b5:	00 00 
  7098b7:	c4 41 14 c6 ce 88    	vshufps ymm9,ymm13,ymm14,0x88
  7098bd:	c4 c3 fd 01 d1 d8    	vpermpd ymm2,ymm9,0xd8
  7098c3:	c5 fc 29 94 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm2
  7098ca:	00 00 
  7098cc:	c5 64 c6 cc dd       	vshufps ymm9,ymm3,ymm4,0xdd
  7098d1:	c4 c1 1c c6 db 88    	vshufps ymm3,ymm12,ymm11,0x88
  7098d7:	c4 e3 fd 01 d3 d8    	vpermpd ymm2,ymm3,0xd8
  7098dd:	c5 fc 29 54 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm2
  7098e3:	c4 c1 4c c6 f0 dd    	vshufps ymm6,ymm6,ymm8,0xdd
  7098e9:	c5 f4 c6 e0 88       	vshufps ymm4,ymm1,ymm0,0x88
  7098ee:	c4 63 fd 01 c4 d8    	vpermpd ymm8,ymm4,0xd8
  7098f4:	c5 7c 29 04 24       	vmovaps YMMWORD PTR [rsp],ymm8
  7098f9:	c4 c3 fd 01 d9 d8    	vpermpd ymm3,ymm9,0xd8
  7098ff:	c4 63 fd 01 ce d8    	vpermpd ymm9,ymm6,0xd8
  709905:	c4 c1 2c c6 f7 dd    	vshufps ymm6,ymm10,ymm15,0xdd
  70990b:	c4 63 fd 01 d6 d8    	vpermpd ymm10,ymm6,0xd8
  709911:	c4 41 14 c6 ee dd    	vshufps ymm13,ymm13,ymm14,0xdd
  709917:	c4 41 1c c6 fb dd    	vshufps ymm15,ymm12,ymm11,0xdd
  70991d:	c5 74 c6 f0 dd       	vshufps ymm14,ymm1,ymm0,0xdd
  709922:	c5 c4 58 ed          	vaddps ymm5,ymm7,ymm5
  709926:	c5 fc 28 44 24 20    	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  70992c:	c5 d4 58 e0          	vaddps ymm4,ymm5,ymm0
  709930:	c5 fc 29 a4 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm4
  709937:	00 00 
  709939:	c5 bc 58 f2          	vaddps ymm6,ymm8,ymm2
  70993d:	c4 62 7d 18 05 1a bb 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff96bb1a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  709944:	96 ff 
  709946:	c4 e2 3d ac e8       	vfnmadd213ps ymm5,ymm8,ymm0
  70994b:	c5 fc 28 84 24 a0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xa0]
  709952:	00 00 
  709954:	c5 cc 58 d0          	vaddps ymm2,ymm6,ymm0
  709958:	c4 e2 3d ac f0       	vfnmadd213ps ymm6,ymm8,ymm0
  70995d:	c4 41 34 58 e2       	vaddps ymm12,ymm9,ymm10
  709962:	c5 1c 58 db          	vaddps ymm11,ymm12,ymm3
  709966:	c4 62 3d ac e3       	vfnmadd213ps ymm12,ymm8,ymm3
  70996b:	c4 c3 fd 01 cd d8    	vpermpd ymm1,ymm13,0xd8
  709971:	c4 43 fd 01 ef d8    	vpermpd ymm13,ymm15,0xd8
  709977:	c4 c3 fd 01 c6 d8    	vpermpd ymm0,ymm14,0xd8
  70997d:	c5 14 58 f0          	vaddps ymm14,ymm13,ymm0
  709981:	c4 62 0d ac c1       	vfnmadd213ps ymm8,ymm14,ymm1
  709986:	c5 8c 58 f9          	vaddps ymm7,ymm14,ymm1
  70998a:	c4 41 34 5c ca       	vsubps ymm9,ymm9,ymm10
  70998f:	c5 5c 58 fa          	vaddps ymm15,ymm4,ymm2
  709993:	c5 7c 29 7c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm15
  709999:	c5 94 5c c0          	vsubps ymm0,ymm13,ymm0
  70999d:	c4 62 7d 18 15 2e b9 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff96b92e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  7099a4:	96 ff 
  7099a6:	c5 fc 28 8c 24 c0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xc0]
  7099ad:	00 00 
  7099af:	c5 74 5c ac 24 e0 00 	vsubps ymm13,ymm1,YMMWORD PTR [rsp+0xe0]
  7099b6:	00 00 
  7099b8:	c5 a4 58 cf          	vaddps ymm1,ymm11,ymm7
  7099bc:	c5 fc 29 8c 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm1
  7099c3:	00 00 
  7099c5:	c4 41 34 59 ca       	vmulps ymm9,ymm9,ymm10
  7099ca:	c5 fc 28 4c 24 40    	vmovaps ymm1,YMMWORD PTR [rsp+0x40]
  7099d0:	c5 f4 5c 1c 24       	vsubps ymm3,ymm1,YMMWORD PTR [rsp]
  7099d5:	c5 34 58 f5          	vaddps ymm14,ymm9,ymm5
  7099d9:	c5 ac 59 c0          	vmulps ymm0,ymm10,ymm0
  7099dd:	c4 c1 14 59 e2       	vmulps ymm4,ymm13,ymm10
  7099e2:	c5 ac 59 db          	vmulps ymm3,ymm10,ymm3
  7099e6:	c5 4c 58 d0          	vaddps ymm10,ymm6,ymm0
  7099ea:	c4 c1 54 5c e9       	vsubps ymm5,ymm5,ymm9
  7099ef:	c4 c1 0c 5c ca       	vsubps ymm1,ymm14,ymm10
  7099f4:	c5 cc 5c c0          	vsubps ymm0,ymm6,ymm0
  7099f8:	c5 9c 5c f4          	vsubps ymm6,ymm12,ymm4
  7099fc:	c5 1c 58 cc          	vaddps ymm9,ymm12,ymm4
  709a00:	c5 3c 5c e3          	vsubps ymm12,ymm8,ymm3
  709a04:	c5 bc 58 db          	vaddps ymm3,ymm8,ymm3
  709a08:	c4 c1 4c 5c e4       	vsubps ymm4,ymm6,ymm12
  709a0d:	c5 fc 29 24 24       	vmovaps YMMWORD PTR [rsp],ymm4
  709a12:	c5 fc 28 a4 24 80 00 	vmovaps ymm4,YMMWORD PTR [rsp+0x80]
  709a19:	00 00 
  709a1b:	c5 5c 5c c2          	vsubps ymm8,ymm4,ymm2
  709a1f:	c5 d4 58 d0          	vaddps ymm2,ymm5,ymm0
  709a23:	c5 fc 29 94 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm2
  709a2a:	00 00 
  709a2c:	c5 24 5c ef          	vsubps ymm13,ymm11,ymm7
  709a30:	c5 b4 58 fb          	vaddps ymm7,ymm9,ymm3
  709a34:	c4 41 0c 58 f2       	vaddps ymm14,ymm14,ymm10
  709a39:	c5 9c 58 f6          	vaddps ymm6,ymm12,ymm6
  709a3d:	c5 d4 5c e8          	vsubps ymm5,ymm5,ymm0
  709a41:	c5 34 5c d3          	vsubps ymm10,ymm9,ymm3
  709a45:	c4 c3 05 06 c6 31    	vperm2f128 ymm0,ymm15,ymm14,0x31
  709a4b:	c5 fc 29 84 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm0
  709a52:	00 00 
  709a54:	c4 e3 75 06 dd 31    	vperm2f128 ymm3,ymm1,ymm5,0x31
  709a5a:	c5 fc 29 9c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm3
  709a61:	00 00 
  709a63:	c5 7c 28 e1          	vmovaps ymm12,ymm1
  709a67:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  709a6d:	c5 fc 29 8c 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm1
  709a74:	00 00 
  709a76:	c4 63 7d 19 c2 01    	vextractf128 xmm2,ymm8,0x1
  709a7c:	c5 fc 29 94 24 60 01 	vmovaps YMMWORD PTR [rsp+0x160],ymm2
  709a83:	00 00 
  709a85:	c4 41 7c 28 c8       	vmovaps ymm9,ymm8
  709a8a:	c5 fc 14 c3          	vunpcklps ymm0,ymm0,ymm3
  709a8e:	c5 fc 29 84 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm0
  709a95:	00 00 
  709a97:	c5 f4 14 da          	vunpcklps ymm3,ymm1,ymm2
  709a9b:	c5 fc 29 5c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm3
  709aa1:	c5 fd 14 e3          	vunpcklpd ymm4,ymm0,ymm3
  709aa5:	c5 7c 28 9c 24 00 01 	vmovaps ymm11,YMMWORD PTR [rsp+0x100]
  709aac:	00 00 
  709aae:	c4 e3 25 06 c6 31    	vperm2f128 ymm0,ymm11,ymm6,0x31
  709ab4:	c5 fc 29 84 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm0
  709abb:	00 00 
  709abd:	c5 7c 28 fe          	vmovaps ymm15,ymm6
  709ac1:	c4 63 2d 06 04 24 13 	vperm2f128 ymm8,ymm10,YMMWORD PTR [rsp],0x13
  709ac8:	c5 7c 29 84 24 c0 01 	vmovaps YMMWORD PTR [rsp+0x1c0],ymm8
  709acf:	00 00 
  709ad1:	c4 e3 7d 19 fe 01    	vextractf128 xmm6,ymm7,0x1
  709ad7:	c5 fc 28 d7          	vmovaps ymm2,ymm7
  709adb:	c5 7c 29 e9          	vmovaps ymm1,ymm13
  709adf:	c4 63 7d 19 eb 01    	vextractf128 xmm3,ymm13,0x1
  709ae5:	c4 c1 7c 14 f8       	vunpcklps ymm7,ymm0,ymm8
  709aea:	c5 fc 29 bc 24 00 02 	vmovaps YMMWORD PTR [rsp+0x200],ymm7
  709af1:	00 00 
  709af3:	c5 cc 14 c3          	vunpcklps ymm0,ymm6,ymm3
  709af7:	c5 fc 29 84 24 20 02 	vmovaps YMMWORD PTR [rsp+0x220],ymm0
  709afe:	00 00 
  709b00:	c5 c5 14 c0          	vunpcklpd ymm0,ymm7,ymm0
  709b04:	c5 7c 10 82 00 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x100]
  709b0b:	00 
  709b0c:	c5 fc 10 ba 20 01 00 	vmovups ymm7,YMMWORD PTR [rdx+0x120]
  709b13:	00 
  709b14:	c5 3c 59 ec          	vmulps ymm13,ymm8,ymm4
  709b18:	c4 62 7d bc ef       	vfnmadd231ps ymm13,ymm0,ymm7
  709b1d:	c5 7c 29 ac 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm13
  709b24:	00 00 
  709b26:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  709b2a:	c4 e2 5d b8 c7       	vfmadd231ps ymm0,ymm4,ymm7
  709b2f:	c5 fc 29 84 24 e0 01 	vmovaps YMMWORD PTR [rsp+0x1e0],ymm0
  709b36:	00 00 
  709b38:	c5 fc 28 44 24 20    	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  709b3e:	c4 43 7d 18 f6 01    	vinsertf128 ymm14,ymm0,xmm14,0x1
  709b44:	c4 63 1d 18 e5 01    	vinsertf128 ymm12,ymm12,xmm5,0x1
  709b4a:	c4 43 25 18 ef 01    	vinsertf128 ymm13,ymm11,xmm15,0x1
  709b50:	c5 fc 28 04 24       	vmovaps ymm0,YMMWORD PTR [rsp]
  709b55:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  709b5b:	c5 78 28 9c 24 40 01 	vmovaps xmm11,XMMWORD PTR [rsp+0x140]
  709b62:	00 00 
  709b64:	c5 78 29 cc          	vmovaps xmm4,xmm9
  709b68:	c5 78 28 c2          	vmovaps xmm8,xmm2
  709b6c:	c5 f8 28 f9          	vmovaps xmm7,xmm1
  709b70:	c4 c1 0c 15 c4       	vunpckhps ymm0,ymm14,ymm12
  709b75:	c5 fc 29 84 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm0
  709b7c:	00 00 
  709b7e:	c5 a4 15 cc          	vunpckhps ymm1,ymm11,ymm4
  709b82:	c5 fc 29 4c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm1
  709b88:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  709b8c:	c4 c1 14 15 c2       	vunpckhps ymm0,ymm13,ymm10
  709b91:	c5 fc 29 84 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm0
  709b98:	00 00 
  709b9a:	c5 3c 15 ff          	vunpckhps ymm15,ymm8,ymm7
  709b9e:	c4 c1 7d 14 ef       	vunpcklpd ymm5,ymm0,ymm15
  709ba3:	c5 fc 10 82 80 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0x80]
  709baa:	00 
  709bab:	c5 fc 10 8a a0 00 00 	vmovups ymm1,YMMWORD PTR [rdx+0xa0]
  709bb2:	00 
  709bb3:	c5 7c 59 ca          	vmulps ymm9,ymm0,ymm2
  709bb7:	c4 62 55 bc c9       	vfnmadd231ps ymm9,ymm5,ymm1
  709bbc:	c5 7c 29 0c 24       	vmovaps YMMWORD PTR [rsp],ymm9
  709bc1:	c5 7c 59 cd          	vmulps ymm9,ymm0,ymm5
  709bc5:	c4 62 6d b8 c9       	vfmadd231ps ymm9,ymm2,ymm1
  709bca:	c5 fc 28 84 24 a0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xa0]
  709bd1:	00 00 
  709bd3:	c5 fc 15 8c 24 80 00 	vunpckhps ymm1,ymm0,YMMWORD PTR [rsp+0x80]
  709bda:	00 00 
  709bdc:	c5 fc 29 8c 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm1
  709be3:	00 00 
  709be5:	c5 fc 28 84 24 80 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x180]
  709bec:	00 00 
  709bee:	c5 fc 15 94 24 60 01 	vunpckhps ymm2,ymm0,YMMWORD PTR [rsp+0x160]
  709bf5:	00 00 
  709bf7:	c5 fc 29 94 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm2
  709bfe:	00 00 
  709c00:	c5 fc 28 84 24 20 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x120]
  709c07:	00 00 
  709c09:	c5 fc 15 84 24 c0 01 	vunpckhps ymm0,ymm0,YMMWORD PTR [rsp+0x1c0]
  709c10:	00 00 
  709c12:	c5 fc 29 84 24 60 01 	vmovaps YMMWORD PTR [rsp+0x160],ymm0
  709c19:	00 00 
  709c1b:	c5 cc 15 eb          	vunpckhps ymm5,ymm6,ymm3
  709c1f:	c5 fc 29 ac 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm5
  709c26:	00 00 
  709c28:	c5 f5 14 da          	vunpcklpd ymm3,ymm1,ymm2
  709c2c:	c5 fd 14 cd          	vunpcklpd ymm1,ymm0,ymm5
  709c30:	c5 fc 10 92 80 01 00 	vmovups ymm2,YMMWORD PTR [rdx+0x180]
  709c37:	00 
  709c38:	c5 fc 10 82 a0 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x1a0]
  709c3f:	00 
  709c40:	c5 ec 59 eb          	vmulps ymm5,ymm2,ymm3
  709c44:	c4 e2 75 bc e8       	vfnmadd231ps ymm5,ymm1,ymm0
  709c49:	c5 fc 29 ac 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm5
  709c50:	00 00 
  709c52:	c5 ec 59 f1          	vmulps ymm6,ymm2,ymm1
  709c56:	c4 e2 65 b8 f0       	vfmadd231ps ymm6,ymm3,ymm0
  709c5b:	c4 41 0c 14 e4       	vunpcklps ymm12,ymm14,ymm12
  709c60:	c5 a4 14 c4          	vunpcklps ymm0,ymm11,ymm4
  709c64:	c5 fc 29 84 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm0
  709c6b:	00 00 
  709c6d:	c4 41 14 14 f2       	vunpcklps ymm14,ymm13,ymm10
  709c72:	c5 3c 14 df          	vunpcklps ymm11,ymm8,ymm7
  709c76:	c5 9d 15 c0          	vunpckhpd ymm0,ymm12,ymm0
  709c7a:	c4 c1 0d 15 cb       	vunpckhpd ymm1,ymm14,ymm11
  709c7f:	c5 fc 10 52 40       	vmovups ymm2,YMMWORD PTR [rdx+0x40]
  709c84:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  709c89:	c5 ec 59 e8          	vmulps ymm5,ymm2,ymm0
  709c8d:	c4 e2 75 bc ef       	vfnmadd231ps ymm5,ymm1,ymm7
  709c92:	c5 ec 59 e1          	vmulps ymm4,ymm2,ymm1
  709c96:	c4 e2 7d b8 e7       	vfmadd231ps ymm4,ymm0,ymm7
  709c9b:	c5 fc 28 84 24 e0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xe0]
  709ca2:	00 00 
  709ca4:	c5 fd 15 7c 24 40    	vunpckhpd ymm7,ymm0,YMMWORD PTR [rsp+0x40]
  709caa:	c5 fc 28 84 24 00 02 	vmovaps ymm0,YMMWORD PTR [rsp+0x200]
  709cb1:	00 00 
  709cb3:	c5 fd 15 8c 24 20 02 	vunpckhpd ymm1,ymm0,YMMWORD PTR [rsp+0x220]
  709cba:	00 00 
  709cbc:	c5 7c 10 82 40 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x140]
  709cc3:	00 
  709cc4:	c5 7c 10 92 60 01 00 	vmovups ymm10,YMMWORD PTR [rdx+0x160]
  709ccb:	00 
  709ccc:	c5 bc 59 d7          	vmulps ymm2,ymm8,ymm7
  709cd0:	c4 c2 75 bc d2       	vfnmadd231ps ymm2,ymm1,ymm10
  709cd5:	c5 bc 59 d9          	vmulps ymm3,ymm8,ymm1
  709cd9:	c4 c2 45 b8 da       	vfmadd231ps ymm3,ymm7,ymm10
  709cde:	c5 fc 28 84 24 40 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x140]
  709ce5:	00 00 
  709ce7:	c5 fd 15 7c 24 20    	vunpckhpd ymm7,ymm0,YMMWORD PTR [rsp+0x20]
  709ced:	c5 fc 28 84 24 00 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x100]
  709cf4:	00 00 
  709cf6:	c4 41 7d 15 c7       	vunpckhpd ymm8,ymm0,ymm15
  709cfb:	c5 7c 10 92 c0 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0xc0]
  709d02:	00 
  709d03:	c5 7c 10 aa e0 00 00 	vmovups ymm13,YMMWORD PTR [rdx+0xe0]
  709d0a:	00 
  709d0b:	c5 2c 59 ff          	vmulps ymm15,ymm10,ymm7
  709d0f:	c4 42 3d bc fd       	vfnmadd231ps ymm15,ymm8,ymm13
  709d14:	c4 41 2c 59 c0       	vmulps ymm8,ymm10,ymm8
  709d19:	c4 42 45 b8 c5       	vfmadd231ps ymm8,ymm7,ymm13
  709d1e:	c5 fc 28 84 24 a0 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x1a0]
  709d25:	00 00 
  709d27:	c5 fd 15 bc 24 80 00 	vunpckhpd ymm7,ymm0,YMMWORD PTR [rsp+0x80]
  709d2e:	00 00 
  709d30:	c5 fc 28 84 24 60 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x160]
  709d37:	00 00 
  709d39:	c5 7d 15 94 24 80 01 	vunpckhpd ymm10,ymm0,YMMWORD PTR [rsp+0x180]
  709d40:	00 00 
  709d42:	c5 7c 10 aa c0 01 00 	vmovups ymm13,YMMWORD PTR [rdx+0x1c0]
  709d49:	00 
  709d4a:	c5 fc 10 8a e0 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x1e0]
  709d51:	00 
  709d52:	c5 94 59 c7          	vmulps ymm0,ymm13,ymm7
  709d56:	c4 e2 2d bc c1       	vfnmadd231ps ymm0,ymm10,ymm1
  709d5b:	c4 41 14 59 d2       	vmulps ymm10,ymm13,ymm10
  709d60:	c4 62 45 b8 d1       	vfmadd231ps ymm10,ymm7,ymm1
  709d65:	c5 9d 14 8c 24 20 01 	vunpcklpd ymm1,ymm12,YMMWORD PTR [rsp+0x120]
  709d6c:	00 00 
  709d6e:	c4 41 0d 14 e3       	vunpcklpd ymm12,ymm14,ymm11
  709d73:	c5 fc 28 bc 24 c0 00 	vmovaps ymm7,YMMWORD PTR [rsp+0xc0]
  709d7a:	00 00 
  709d7c:	c5 44 58 d9          	vaddps ymm11,ymm7,ymm1
  709d80:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  709d84:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  709d8a:	c5 34 58 f6          	vaddps ymm14,ymm9,ymm6
  709d8e:	c5 b4 5c ce          	vsubps ymm1,ymm9,ymm6
  709d92:	c5 fc 29 8c 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm1
  709d99:	00 00 
  709d9b:	c5 d4 58 ca          	vaddps ymm1,ymm5,ymm2
  709d9f:	c5 d4 5c ea          	vsubps ymm5,ymm5,ymm2
  709da3:	c5 dc 58 f3          	vaddps ymm6,ymm4,ymm3
  709da7:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  709dab:	c4 c1 3c 58 e2       	vaddps ymm4,ymm8,ymm10
  709db0:	c4 41 3c 5c c2       	vsubps ymm8,ymm8,ymm10
  709db5:	c5 04 58 c8          	vaddps ymm9,ymm15,ymm0
  709db9:	c5 84 5c c0          	vsubps ymm0,ymm15,ymm0
  709dbd:	c5 fc 28 94 24 e0 01 	vmovaps ymm2,YMMWORD PTR [rsp+0x1e0]
  709dc4:	00 00 
  709dc6:	c5 1c 58 fa          	vaddps ymm15,ymm12,ymm2
  709dca:	c5 9c 5c d2          	vsubps ymm2,ymm12,ymm2
  709dce:	c5 fc 29 54 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm2
  709dd4:	c5 fc 28 14 24       	vmovaps ymm2,YMMWORD PTR [rsp]
  709dd9:	c5 fc 28 bc 24 a0 00 	vmovaps ymm7,YMMWORD PTR [rsp+0xa0]
  709de0:	00 00 
  709de2:	c5 6c 58 d7          	vaddps ymm10,ymm2,ymm7
  709de6:	c5 44 5c e2          	vsubps ymm12,ymm7,ymm2
  709dea:	c5 54 58 eb          	vaddps ymm13,ymm5,ymm3
  709dee:	c5 e4 5c dd          	vsubps ymm3,ymm3,ymm5
  709df2:	c5 bc 5c e8          	vsubps ymm5,ymm8,ymm0
  709df6:	c5 bc 58 c0          	vaddps ymm0,ymm8,ymm0
  709dfa:	c4 62 7d 18 05 99 b5 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff96b599]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  709e01:	96 ff 
  709e03:	c4 c1 14 59 f8       	vmulps ymm7,ymm13,ymm8
  709e08:	c5 bc 59 d5          	vmulps ymm2,ymm8,ymm5
  709e0c:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  709e10:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  709e14:	c4 c1 24 58 ea       	vaddps ymm5,ymm11,ymm10
  709e19:	c5 fc 29 ac 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm5
  709e20:	00 00 
  709e22:	c4 41 24 5c c2       	vsubps ymm8,ymm11,ymm10
  709e27:	c5 4c 58 d4          	vaddps ymm10,ymm6,ymm4
  709e2b:	c5 cc 5c f4          	vsubps ymm6,ymm6,ymm4
  709e2f:	c4 41 0c 58 ef       	vaddps ymm13,ymm14,ymm15
  709e34:	c4 41 04 5c f6       	vsubps ymm14,ymm15,ymm14
  709e39:	c5 34 58 f9          	vaddps ymm15,ymm9,ymm1
  709e3d:	c5 34 5c c9          	vsubps ymm9,ymm9,ymm1
  709e41:	c5 fc 28 4c 24 40    	vmovaps ymm1,YMMWORD PTR [rsp+0x40]
  709e47:	c5 fc 28 ac 24 e0 00 	vmovaps ymm5,YMMWORD PTR [rsp+0xe0]
  709e4e:	00 00 
  709e50:	c5 f4 58 e5          	vaddps ymm4,ymm1,ymm5
  709e54:	c5 74 5c dd          	vsubps ymm11,ymm1,ymm5
  709e58:	c5 e4 5c c8          	vsubps ymm1,ymm3,ymm0
  709e5c:	c5 e4 58 e8          	vaddps ymm5,ymm3,ymm0
  709e60:	c5 fc 28 44 24 20    	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  709e66:	c5 9c 58 d8          	vaddps ymm3,ymm12,ymm0
  709e6a:	c4 41 7c 5c e4       	vsubps ymm12,ymm0,ymm12
  709e6f:	c5 c4 58 c2          	vaddps ymm0,ymm7,ymm2
  709e73:	c5 ec 5c ff          	vsubps ymm7,ymm2,ymm7
  709e77:	c5 dc 58 d0          	vaddps ymm2,ymm4,ymm0
  709e7b:	c5 dc 5c c0          	vsubps ymm0,ymm4,ymm0
  709e7f:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  709e85:	c5 e4 58 c1          	vaddps ymm0,ymm3,ymm1
  709e89:	c5 e4 5c e1          	vsubps ymm4,ymm3,ymm1
  709e8d:	c5 bc 58 de          	vaddps ymm3,ymm8,ymm6
  709e91:	c5 bc 5c ce          	vsubps ymm1,ymm8,ymm6
  709e95:	c5 fc 29 0c 24       	vmovaps YMMWORD PTR [rsp],ymm1
  709e9a:	c4 c1 0c 58 f1       	vaddps ymm6,ymm14,ymm9
  709e9f:	c4 41 0c 5c c1       	vsubps ymm8,ymm14,ymm9
  709ea4:	c5 24 58 cd          	vaddps ymm9,ymm11,ymm5
  709ea8:	c5 24 5c f5          	vsubps ymm14,ymm11,ymm5
  709eac:	c5 1c 58 df          	vaddps ymm11,ymm12,ymm7
  709eb0:	c5 9c 5c ef          	vsubps ymm5,ymm12,ymm7
  709eb4:	c5 fc 28 8c 24 c0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xc0]
  709ebb:	00 00 
  709ebd:	c4 41 74 5c e7       	vsubps ymm12,ymm1,ymm15
  709ec2:	c5 04 58 f9          	vaddps ymm15,ymm15,ymm1
  709ec6:	c4 c1 14 5c fa       	vsubps ymm7,ymm13,ymm10
  709ecb:	c4 41 14 58 d2       	vaddps ymm10,ymm13,ymm10
  709ed0:	c4 41 04 14 ea       	vunpcklps ymm13,ymm15,ymm10
  709ed5:	c4 c1 00 14 ca       	vunpcklps xmm1,xmm15,xmm10
  709eda:	c4 41 00 15 d2       	vunpckhps xmm10,xmm15,xmm10
  709edf:	c5 78 11 56 10       	vmovups XMMWORD PTR [rsi+0x10],xmm10
  709ee4:	c5 f8 11 0e          	vmovups XMMWORD PTR [rsi],xmm1
  709ee8:	c4 63 7d 19 6e 20 01 	vextractf128 XMMWORD PTR [rsi+0x20],ymm13,0x1
  709eef:	c5 ec 14 c8          	vunpcklps ymm1,ymm2,ymm0
  709ef3:	c5 68 14 d0          	vunpcklps xmm10,xmm2,xmm0
  709ef7:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  709efb:	c5 f8 11 46 40       	vmovups XMMWORD PTR [rsi+0x40],xmm0
  709f00:	c5 78 11 56 30       	vmovups XMMWORD PTR [rsi+0x30],xmm10
  709f05:	c4 e3 7d 19 4e 50 01 	vextractf128 XMMWORD PTR [rsi+0x50],ymm1,0x1
  709f0c:	c5 e4 14 c6          	vunpcklps ymm0,ymm3,ymm6
  709f10:	c5 e0 14 ce          	vunpcklps xmm1,xmm3,xmm6
  709f14:	c5 e0 15 d6          	vunpckhps xmm2,xmm3,xmm6
  709f18:	c5 f8 11 56 70       	vmovups XMMWORD PTR [rsi+0x70],xmm2
  709f1d:	c5 f8 11 4e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm1
  709f22:	c4 e3 7d 19 86 80 00 	vextractf128 XMMWORD PTR [rsi+0x80],ymm0,0x1
  709f29:	00 00 01 
  709f2c:	c4 c1 34 14 c3       	vunpcklps ymm0,ymm9,ymm11
  709f31:	c4 c1 30 14 cb       	vunpcklps xmm1,xmm9,xmm11
  709f36:	c4 c1 30 15 d3       	vunpckhps xmm2,xmm9,xmm11
  709f3b:	c5 f8 11 96 a0 00 00 	vmovups XMMWORD PTR [rsi+0xa0],xmm2
  709f42:	00 
  709f43:	c5 f8 11 8e 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm1
  709f4a:	00 
  709f4b:	c4 e3 7d 19 86 b0 00 	vextractf128 XMMWORD PTR [rsi+0xb0],ymm0,0x1
  709f52:	00 00 01 
  709f55:	c5 9c 14 c7          	vunpcklps ymm0,ymm12,ymm7
  709f59:	c5 98 14 cf          	vunpcklps xmm1,xmm12,xmm7
  709f5d:	c5 98 15 d7          	vunpckhps xmm2,xmm12,xmm7
  709f61:	c5 f8 11 96 d0 00 00 	vmovups XMMWORD PTR [rsi+0xd0],xmm2
  709f68:	00 
  709f69:	c5 f8 11 8e c0 00 00 	vmovups XMMWORD PTR [rsi+0xc0],xmm1
  709f70:	00 
  709f71:	c4 e3 7d 19 86 e0 00 	vextractf128 XMMWORD PTR [rsi+0xe0],ymm0,0x1
  709f78:	00 00 01 
  709f7b:	c5 fc 28 54 24 40    	vmovaps ymm2,YMMWORD PTR [rsp+0x40]
  709f81:	c5 ec 14 c4          	vunpcklps ymm0,ymm2,ymm4
  709f85:	c5 e8 14 cc          	vunpcklps xmm1,xmm2,xmm4
  709f89:	c5 e8 15 d4          	vunpckhps xmm2,xmm2,xmm4
  709f8d:	c5 f8 11 96 00 01 00 	vmovups XMMWORD PTR [rsi+0x100],xmm2
  709f94:	00 
  709f95:	c5 f8 11 8e f0 00 00 	vmovups XMMWORD PTR [rsi+0xf0],xmm1
  709f9c:	00 
  709f9d:	c4 e3 7d 19 86 10 01 	vextractf128 XMMWORD PTR [rsi+0x110],ymm0,0x1
  709fa4:	00 00 01 
  709fa7:	c5 fc 28 14 24       	vmovaps ymm2,YMMWORD PTR [rsp]
  709fac:	c4 c1 6c 14 c0       	vunpcklps ymm0,ymm2,ymm8
  709fb1:	c4 c1 68 14 c8       	vunpcklps xmm1,xmm2,xmm8
  709fb6:	c4 c1 68 15 d0       	vunpckhps xmm2,xmm2,xmm8
  709fbb:	c5 f8 11 96 30 01 00 	vmovups XMMWORD PTR [rsi+0x130],xmm2
  709fc2:	00 
  709fc3:	c5 f8 11 8e 20 01 00 	vmovups XMMWORD PTR [rsi+0x120],xmm1
  709fca:	00 
  709fcb:	c4 e3 7d 19 86 40 01 	vextractf128 XMMWORD PTR [rsi+0x140],ymm0,0x1
  709fd2:	00 00 01 
  709fd5:	c5 8c 14 c5          	vunpcklps ymm0,ymm14,ymm5
  709fd9:	c5 88 14 cd          	vunpcklps xmm1,xmm14,xmm5
  709fdd:	c5 88 15 d5          	vunpckhps xmm2,xmm14,xmm5
  709fe1:	c5 f8 11 96 60 01 00 	vmovups XMMWORD PTR [rsi+0x160],xmm2
  709fe8:	00 
  709fe9:	c5 f8 11 8e 50 01 00 	vmovups XMMWORD PTR [rsi+0x150],xmm1
  709ff0:	00 
  709ff1:	c4 e3 7d 19 86 70 01 	vextractf128 XMMWORD PTR [rsi+0x170],ymm0,0x1
  709ff8:	00 00 01 
  709ffb:	48 89 ec             	mov    rsp,rbp
  709ffe:	5d                   	pop    rbp
  709fff:	c5 f8 77             	vzeroupper
  70a002:	c3                   	ret
