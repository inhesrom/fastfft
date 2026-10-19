
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000af4840 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  af4840:	c5 fc 10 4f 60       	vmovups ymm1,YMMWORD PTR [rdi+0x60]
  af4845:	c5 f8 10 97 80 00 00 	vmovups xmm2,XMMWORD PTR [rdi+0x80]
  af484c:	00 
  af484d:	c5 f4 c6 c2 dd       	vshufps ymm0,ymm1,ymm2,0xdd
  af4852:	c4 e3 fd 01 f0 d8    	vpermpd ymm6,ymm0,0xd8
  af4858:	c5 fc 10 9f c0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xc0]
  af485f:	00 
  af4860:	c5 f8 10 a7 e0 00 00 	vmovups xmm4,XMMWORD PTR [rdi+0xe0]
  af4867:	00 
  af4868:	c5 e4 c6 c4 dd       	vshufps ymm0,ymm3,ymm4,0xdd
  af486d:	c4 e3 fd 01 f8 d8    	vpermpd ymm7,ymm0,0xd8
  af4873:	c5 cc 5c ef          	vsubps ymm5,ymm6,ymm7
  af4877:	c4 e2 7d 18 05 54 0a 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff580a54]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  af487e:	58 ff 
  af4880:	c5 d4 59 e8          	vmulps ymm5,ymm5,ymm0
  af4884:	c5 f4 c6 ca 88       	vshufps ymm1,ymm1,ymm2,0x88
  af4889:	c4 63 fd 01 c1 d8    	vpermpd ymm8,ymm1,0xd8
  af488f:	c5 e4 c6 cc 88       	vshufps ymm1,ymm3,ymm4,0x88
  af4894:	c4 63 fd 01 c9 d8    	vpermpd ymm9,ymm1,0xd8
  af489a:	c4 c1 3c 58 d9       	vaddps ymm3,ymm8,ymm9
  af489f:	c5 7c 10 17          	vmovups ymm10,YMMWORD PTR [rdi]
  af48a3:	c5 78 10 5f 20       	vmovups xmm11,XMMWORD PTR [rdi+0x20]
  af48a8:	c4 c1 2c c6 cb 88    	vshufps ymm1,ymm10,ymm11,0x88
  af48ae:	c4 e3 fd 01 e1 d8    	vpermpd ymm4,ymm1,0xd8
  af48b4:	c4 e2 7d 18 0d a3 0b 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff580ba3]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  af48bb:	58 ff 
  af48bd:	c5 7c 28 e1          	vmovaps ymm12,ymm1
  af48c1:	c4 62 65 ac e4       	vfnmadd213ps ymm12,ymm3,ymm4
  af48c6:	c5 9c 58 d5          	vaddps ymm2,ymm12,ymm5
  af48ca:	c5 7c 10 af f0 00 00 	vmovups ymm13,YMMWORD PTR [rdi+0xf0]
  af48d1:	00 
  af48d2:	c5 78 10 b7 10 01 00 	vmovups xmm14,XMMWORD PTR [rdi+0x110]
  af48d9:	00 
  af48da:	c4 41 14 c6 fe dd    	vshufps ymm15,ymm13,ymm14,0xdd
  af48e0:	c4 43 fd 01 ff d8    	vpermpd ymm15,ymm15,0xd8
  af48e6:	62 e1 7c 28 10 87 30 	vmovups ymm16,YMMWORD PTR [rdi+0x30]
  af48ed:	00 00 00 
  af48f0:	62 e1 7c 08 10 4f 05 	vmovups xmm17,XMMWORD PTR [rdi+0x50]
  af48f7:	62 a1 7c 20 c6 d1 dd 	vshufps ymm18,ymm16,ymm17,0xdd
  af48fe:	62 a3 fd 28 01 d2 d8 	vpermpd ymm18,ymm18,0xd8
  af4905:	c4 41 14 c6 ee 88    	vshufps ymm13,ymm13,ymm14,0x88
  af490b:	62 31 04 28 5c f2    	vsubps ymm14,ymm15,ymm18
  af4911:	c5 0c 59 f0          	vmulps ymm14,ymm14,ymm0
  af4915:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  af491b:	62 a1 7c 20 c6 c1 88 	vshufps ymm16,ymm16,ymm17,0x88
  af4922:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  af4929:	62 a1 14 28 58 c8    	vaddps ymm17,ymm13,ymm16
  af492f:	c5 cc 58 f7          	vaddps ymm6,ymm6,ymm7
  af4933:	c5 fc 10 bf 90 00 00 	vmovups ymm7,YMMWORD PTR [rdi+0x90]
  af493a:	00 
  af493b:	c4 41 2c c6 d3 dd    	vshufps ymm10,ymm10,ymm11,0xdd
  af4941:	c5 78 10 9f b0 00 00 	vmovups xmm11,XMMWORD PTR [rdi+0xb0]
  af4948:	00 
  af4949:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  af494e:	c4 41 44 c6 cb 88    	vshufps ymm9,ymm7,ymm11,0x88
  af4954:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  af495a:	62 31 04 28 58 fa    	vaddps ymm15,ymm15,ymm18
  af4960:	62 e1 7c 28 28 d1    	vmovaps ymm18,ymm1
  af4966:	62 c2 75 20 ac d1    	vfnmadd213ps ymm18,ymm17,ymm9
  af496c:	c4 c1 44 c6 fb dd    	vshufps ymm7,ymm7,ymm11,0xdd
  af4972:	62 31 0c 28 58 da    	vaddps ymm11,ymm14,ymm18
  af4978:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  af497e:	62 31 14 28 5c e8    	vsubps ymm13,ymm13,ymm16
  af4984:	62 e1 7c 28 28 c1    	vmovaps ymm16,ymm1
  af498a:	62 c2 4d 28 ac c2    	vfnmadd213ps ymm16,ymm6,ymm10
  af4990:	c5 3c 59 c0          	vmulps ymm8,ymm8,ymm0
  af4994:	c5 9c 5c ed          	vsubps ymm5,ymm12,ymm5
  af4998:	62 51 7c 20 5c e0    	vsubps ymm12,ymm16,ymm8
  af499e:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  af49a4:	62 51 6c 20 5c f6    	vsubps ymm14,ymm18,ymm14
  af49aa:	62 e1 7c 28 28 d1    	vmovaps ymm18,ymm1
  af49b0:	62 e2 05 28 ac d7    	vfnmadd213ps ymm18,ymm15,ymm7
  af49b6:	c5 14 59 e8          	vmulps ymm13,ymm13,ymm0
  af49ba:	62 51 7c 20 58 c0    	vaddps ymm8,ymm16,ymm8
  af49c0:	62 c1 6c 20 5c c5    	vsubps ymm16,ymm18,ymm13
  af49c6:	62 51 6c 20 58 ed    	vaddps ymm13,ymm18,ymm13
  af49cc:	62 c1 6c 28 5c d3    	vsubps ymm18,ymm2,ymm11
  af49d2:	c5 dc 58 db          	vaddps ymm3,ymm4,ymm3
  af49d6:	62 b1 1c 28 5c e0    	vsubps ymm4,ymm12,ymm16
  af49dc:	62 31 34 28 58 c9    	vaddps ymm9,ymm9,ymm17
  af49e2:	62 c1 54 28 58 ce    	vaddps ymm17,ymm5,ymm14
  af49e8:	c5 ac 58 f6          	vaddps ymm6,ymm10,ymm6
  af49ec:	c4 41 3c 58 d5       	vaddps ymm10,ymm8,ymm13
  af49f1:	c5 04 58 ff          	vaddps ymm15,ymm15,ymm7
  af49f5:	c4 c1 64 5c f9       	vsubps ymm7,ymm3,ymm9
  af49fa:	c5 24 58 da          	vaddps ymm11,ymm11,ymm2
  af49fe:	62 c1 4c 28 5c df    	vsubps ymm19,ymm6,ymm15
  af4a04:	62 31 1c 28 58 e0    	vaddps ymm12,ymm12,ymm16
  af4a0a:	c4 41 54 5c f6       	vsubps ymm14,ymm5,ymm14
  af4a0f:	c4 c1 3c 5c d5       	vsubps ymm2,ymm8,ymm13
  af4a14:	c5 34 58 eb          	vaddps ymm13,ymm9,ymm3
  af4a18:	c5 84 58 de          	vaddps ymm3,ymm15,ymm6
  af4a1c:	c4 c3 65 18 ea 01    	vinsertf128 ymm5,ymm3,xmm10,0x1
  af4a22:	c4 c3 65 06 f2 31    	vperm2f128 ymm6,ymm3,ymm10,0x31
  af4a28:	c4 63 6d 18 c4 01    	vinsertf128 ymm8,ymm2,xmm4,0x1
  af4a2e:	c4 e3 6d 06 e4 31    	vperm2f128 ymm4,ymm2,ymm4,0x31
  af4a34:	c4 41 78 28 cc       	vmovaps xmm9,xmm12
  af4a39:	c4 c1 55 14 d9       	vunpcklpd ymm3,ymm5,ymm9
  af4a3e:	62 31 7c 08 28 d3    	vmovaps xmm10,xmm19
  af4a44:	c4 41 3d 14 fa       	vunpcklpd ymm15,ymm8,ymm10
  af4a49:	c4 c1 64 c6 d7 88    	vshufps ymm2,ymm3,ymm15,0x88
  af4a4f:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  af4a54:	c4 c1 64 c6 df dd    	vshufps ymm3,ymm3,ymm15,0xdd
  af4a5a:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  af4a5f:	c4 c1 55 15 e9       	vunpckhpd ymm5,ymm5,ymm9
  af4a64:	c4 41 3d 15 ca       	vunpckhpd ymm9,ymm8,ymm10
  af4a69:	c4 41 54 c6 c1 88    	vshufps ymm8,ymm5,ymm9,0x88
  af4a6f:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  af4a75:	c4 c1 54 c6 e9 dd    	vshufps ymm5,ymm5,ymm9,0xdd
  af4a7b:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  af4a80:	c4 43 7d 19 e1 01    	vextractf128 xmm9,ymm12,0x1
  af4a86:	c4 c1 4d 14 f1       	vunpcklpd ymm6,ymm6,ymm9
  af4a8b:	62 c3 7d 28 19 d9 01 	vextractf32x4 xmm9,ymm19,0x1
  af4a92:	c4 c1 5d 14 e1       	vunpcklpd ymm4,ymm4,ymm9
  af4a97:	c5 4c c6 cc 88       	vshufps ymm9,ymm6,ymm4,0x88
  af4a9c:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  af4aa2:	c5 cc c6 e4 dd       	vshufps ymm4,ymm6,ymm4,0xdd
  af4aa7:	c5 dc c6 f4 d8       	vshufps ymm6,ymm4,ymm4,0xd8
  af4aac:	62 33 15 28 18 e1 01 	vinsertf32x4 ymm12,ymm13,xmm17,0x1
  af4ab3:	62 33 95 28 23 e9 03 	vshuff64x2 ymm13,ymm13,ymm17,0x3
  af4aba:	62 33 0d 28 18 fa 01 	vinsertf32x4 ymm15,ymm14,xmm18,0x1
  af4ac1:	62 33 8d 28 23 f2 03 	vshuff64x2 ymm14,ymm14,ymm18,0x3
  af4ac8:	62 c1 7c 08 28 c3    	vmovaps xmm16,xmm11
  af4ace:	62 31 9d 28 14 d0    	vunpcklpd ymm10,ymm12,ymm16
  af4ad4:	62 e1 7c 08 28 cf    	vmovaps xmm17,xmm7
  af4ada:	62 a1 85 28 14 d1    	vunpcklpd ymm18,ymm15,ymm17
  af4ae0:	62 b1 2c 28 c6 e2 88 	vshufps ymm4,ymm10,ymm18,0x88
  af4ae7:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  af4aec:	62 31 2c 28 c6 d2 dd 	vshufps ymm10,ymm10,ymm18,0xdd
  af4af3:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  af4af9:	62 31 9d 28 15 e0    	vunpckhpd ymm12,ymm12,ymm16
  af4aff:	62 31 85 28 15 f9    	vunpckhpd ymm15,ymm15,ymm17
  af4b05:	62 c1 1c 28 c6 c7 88 	vshufps ymm16,ymm12,ymm15,0x88
  af4b0c:	62 a1 7c 20 c6 c0 d8 	vshufps ymm16,ymm16,ymm16,0xd8
  af4b13:	c4 41 1c c6 e7 dd    	vshufps ymm12,ymm12,ymm15,0xdd
  af4b19:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  af4b1f:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  af4b25:	c4 41 15 14 db       	vunpcklpd ymm11,ymm13,ymm11
  af4b2a:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  af4b30:	c5 8d 14 ff          	vunpcklpd ymm7,ymm14,ymm7
  af4b34:	c5 24 c6 ef 88       	vshufps ymm13,ymm11,ymm7,0x88
  af4b39:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  af4b3f:	c5 a4 c6 ff dd       	vshufps ymm7,ymm11,ymm7,0xdd
  af4b44:	c5 44 c6 df d8       	vshufps ymm11,ymm7,ymm7,0xd8
  af4b49:	c5 7c 10 72 40       	vmovups ymm14,YMMWORD PTR [rdx+0x40]
  af4b4e:	c5 7c 10 7a 60       	vmovups ymm15,YMMWORD PTR [rdx+0x60]
  af4b53:	62 e1 7c 28 10 4a 04 	vmovups ymm17,YMMWORD PTR [rdx+0x80]
  af4b5a:	62 e1 7c 28 10 52 05 	vmovups ymm18,YMMWORD PTR [rdx+0xa0]
  af4b61:	62 b1 3c 28 59 f9    	vmulps ymm7,ymm8,ymm17
  af4b67:	62 b2 7d 20 bc fa    	vfnmadd231ps ymm7,ymm16,ymm18
  af4b6d:	62 a1 7c 20 59 c1    	vmulps ymm16,ymm16,ymm17
  af4b73:	62 e1 7c 28 10 4a 08 	vmovups ymm17,YMMWORD PTR [rdx+0x100]
  af4b7a:	62 a2 3d 28 b8 c2    	vfmadd231ps ymm16,ymm8,ymm18
  af4b80:	c5 7c 10 82 20 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x120]
  af4b87:	00 
  af4b88:	62 a1 34 28 59 d1    	vmulps ymm18,ymm9,ymm17
  af4b8e:	62 c2 15 28 bc d0    	vfnmadd231ps ymm18,ymm13,ymm8
  af4b94:	62 31 14 28 59 e9    	vmulps ymm13,ymm13,ymm17
  af4b9a:	62 e1 7c 28 10 4a 06 	vmovups ymm17,YMMWORD PTR [rdx+0xc0]
  af4ba1:	c4 42 35 b8 e8       	vfmadd231ps ymm13,ymm9,ymm8
  af4ba6:	c5 7c 10 82 e0 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0xe0]
  af4bad:	00 
  af4bae:	62 31 54 28 59 c9    	vmulps ymm9,ymm5,ymm17
  af4bb4:	c4 42 1d bc c8       	vfnmadd231ps ymm9,ymm12,ymm8
  af4bb9:	62 31 1c 28 59 e1    	vmulps ymm12,ymm12,ymm17
  af4bbf:	62 e1 7c 28 10 4a 0a 	vmovups ymm17,YMMWORD PTR [rdx+0x140]
  af4bc6:	c4 42 55 b8 e0       	vfmadd231ps ymm12,ymm5,ymm8
  af4bcb:	c5 fc 10 aa 60 01 00 	vmovups ymm5,YMMWORD PTR [rdx+0x160]
  af4bd2:	00 
  af4bd3:	62 31 4c 28 59 c1    	vmulps ymm8,ymm6,ymm17
  af4bd9:	c4 62 25 bc c5       	vfnmadd231ps ymm8,ymm11,ymm5
  af4bde:	62 31 24 28 59 d9    	vmulps ymm11,ymm11,ymm17
  af4be4:	62 a1 44 28 58 ca    	vaddps ymm17,ymm7,ymm18
  af4bea:	c4 62 4d b8 dd       	vfmadd231ps ymm11,ymm6,ymm5
  af4bef:	62 b1 6c 28 58 e9    	vaddps ymm5,ymm2,ymm17
  af4bf5:	c5 8c 59 f3          	vmulps ymm6,ymm14,ymm3
  af4bf9:	c4 c2 2d bc f7       	vfnmadd231ps ymm6,ymm10,ymm15
  af4bfe:	c4 41 2c 59 d6       	vmulps ymm10,ymm10,ymm14
  af4c03:	c5 3c 58 f6          	vaddps ymm14,ymm8,ymm6
  af4c07:	c4 42 65 b8 d7       	vfmadd231ps ymm10,ymm3,ymm15
  af4c0c:	c4 c1 34 58 de       	vaddps ymm3,ymm9,ymm14
  af4c11:	62 51 7c 20 58 fd    	vaddps ymm15,ymm16,ymm13
  af4c17:	62 e2 75 28 ac ca    	vfnmadd213ps ymm17,ymm1,ymm2
  af4c1d:	c5 84 58 d4          	vaddps ymm2,ymm15,ymm4
  af4c21:	c4 42 75 bc ce       	vfnmadd231ps ymm9,ymm1,ymm14
  af4c26:	c4 41 24 58 f2       	vaddps ymm14,ymm11,ymm10
  af4c2b:	c4 62 75 ac fc       	vfnmadd213ps ymm15,ymm1,ymm4
  af4c30:	c4 c1 1c 58 e6       	vaddps ymm4,ymm12,ymm14
  af4c35:	c4 62 0d bc e1       	vfnmadd231ps ymm12,ymm14,ymm1
  af4c3a:	62 d1 7c 20 5c cd    	vsubps ymm1,ymm16,ymm13
  af4c40:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  af4c45:	62 b1 44 28 5c fa    	vsubps ymm7,ymm7,ymm18
  af4c4b:	c5 f4 59 c8          	vmulps ymm1,ymm1,ymm0
  af4c4f:	c5 bc 5c f6          	vsubps ymm6,ymm8,ymm6
  af4c53:	62 71 74 20 58 c1    	vaddps ymm8,ymm17,ymm1
  af4c59:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  af4c5d:	c5 c4 59 f8          	vmulps ymm7,ymm7,ymm0
  af4c61:	c5 cc 59 c0          	vmulps ymm0,ymm6,ymm0
  af4c65:	c4 c1 34 58 f2       	vaddps ymm6,ymm9,ymm10
  af4c6a:	62 f1 74 20 5c c9    	vsubps ymm1,ymm17,ymm1
  af4c70:	c5 3c 5c de          	vsubps ymm11,ymm8,ymm6
  af4c74:	c4 41 34 5c ca       	vsubps ymm9,ymm9,ymm10
  af4c79:	c5 04 5c d7          	vsubps ymm10,ymm15,ymm7
  af4c7d:	c5 84 58 ff          	vaddps ymm7,ymm15,ymm7
  af4c81:	c5 1c 5c e8          	vsubps ymm13,ymm12,ymm0
  af4c85:	c5 9c 58 c0          	vaddps ymm0,ymm12,ymm0
  af4c89:	c4 41 2c 5c e5       	vsubps ymm12,ymm10,ymm13
  af4c8e:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  af4c92:	c5 34 58 c1          	vaddps ymm8,ymm9,ymm1
  af4c96:	c4 41 2c 58 d5       	vaddps ymm10,ymm10,ymm13
  af4c9b:	c5 44 58 e8          	vaddps ymm13,ymm7,ymm0
  af4c9f:	c4 c1 74 5c c9       	vsubps ymm1,ymm1,ymm9
  af4ca4:	c5 54 5c cb          	vsubps ymm9,ymm5,ymm3
  af4ca8:	c5 c4 5c c0          	vsubps ymm0,ymm7,ymm0
  af4cac:	c5 ec 5c fc          	vsubps ymm7,ymm2,ymm4
  af4cb0:	c5 ec 58 d4          	vaddps ymm2,ymm2,ymm4
  af4cb4:	c5 d4 58 db          	vaddps ymm3,ymm5,ymm3
  af4cb8:	c5 fc 28 25 20 25 58 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff582520]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  af4cbf:	ff 
  af4cc0:	c4 e3 7d 19 d5 01    	vextractf128 xmm5,ymm2,0x1
  af4cc6:	62 f2 5d 28 7f d3    	vpermt2ps ymm2,ymm4,ymm3
  af4ccc:	c5 fc 11 16          	vmovups YMMWORD PTR [rsi],ymm2
  af4cd0:	c4 e3 7d 19 da 01    	vextractf128 xmm2,ymm3,0x1
  af4cd6:	c5 d0 14 d2          	vunpcklps xmm2,xmm5,xmm2
  af4cda:	c5 f8 11 56 20       	vmovups XMMWORD PTR [rsi+0x20],xmm2
  af4cdf:	c4 63 7d 19 e2 01    	vextractf128 xmm2,ymm12,0x1
  af4ce5:	62 52 5d 28 7f e3    	vpermt2ps ymm12,ymm4,ymm11
  af4ceb:	c5 7c 11 66 30       	vmovups YMMWORD PTR [rsi+0x30],ymm12
  af4cf0:	c4 63 7d 19 db 01    	vextractf128 xmm3,ymm11,0x1
  af4cf6:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  af4cfa:	c5 f8 11 56 50       	vmovups XMMWORD PTR [rsi+0x50],xmm2
  af4cff:	c4 63 7d 19 ea 01    	vextractf128 xmm2,ymm13,0x1
  af4d05:	62 52 5d 28 7f e8    	vpermt2ps ymm13,ymm4,ymm8
  af4d0b:	c5 7c 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm13
  af4d10:	c4 63 7d 19 c3 01    	vextractf128 xmm3,ymm8,0x1
  af4d16:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  af4d1a:	c5 f8 11 96 80 00 00 	vmovups XMMWORD PTR [rsi+0x80],xmm2
  af4d21:	00 
  af4d22:	c4 e3 7d 19 fa 01    	vextractf128 xmm2,ymm7,0x1
  af4d28:	62 d2 5d 28 7f f9    	vpermt2ps ymm7,ymm4,ymm9
  af4d2e:	c5 fc 11 be 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm7
  af4d35:	00 
  af4d36:	c4 63 7d 19 cb 01    	vextractf128 xmm3,ymm9,0x1
  af4d3c:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  af4d40:	c5 f8 11 96 b0 00 00 	vmovups XMMWORD PTR [rsi+0xb0],xmm2
  af4d47:	00 
  af4d48:	c4 63 7d 19 d2 01    	vextractf128 xmm2,ymm10,0x1
  af4d4e:	62 72 5d 28 7f d6    	vpermt2ps ymm10,ymm4,ymm6
  af4d54:	c5 7c 11 96 c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm10
  af4d5b:	00 
  af4d5c:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  af4d62:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  af4d66:	c5 f8 11 96 e0 00 00 	vmovups XMMWORD PTR [rsi+0xe0],xmm2
  af4d6d:	00 
  af4d6e:	62 f2 7d 28 77 e1    	vpermi2ps ymm4,ymm0,ymm1
  af4d74:	c5 fc 11 a6 f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm4
  af4d7b:	00 
  af4d7c:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  af4d82:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  af4d88:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  af4d8c:	c5 f8 11 86 10 01 00 	vmovups XMMWORD PTR [rsi+0x110],xmm0
  af4d93:	00 
  af4d94:	c5 f8 77             	vzeroupper
  af4d97:	c3                   	ret
