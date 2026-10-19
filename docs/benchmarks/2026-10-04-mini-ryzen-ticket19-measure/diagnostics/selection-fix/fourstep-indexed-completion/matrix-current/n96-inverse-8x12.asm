
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b05900 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b05900:	55                   	push   rbp
  b05901:	48 89 e5             	mov    rbp,rsp
  b05904:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  b05908:	48 81 ec c0 02 00 00 	sub    rsp,0x2c0
  b0590f:	c6 84 24 40 02 00 00 	mov    BYTE PTR [rsp+0x240],0x0
  b05916:	00 
  b05917:	48 8d 84 24 40 02 00 	lea    rax,[rsp+0x240]
  b0591e:	00 
  b0591f:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  b05924:	48 8d 44 24 18       	lea    rax,[rsp+0x18]
  b05929:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  b0592d:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  b05932:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  b05937:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  b0593d:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b05942:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b05948:	c5 fc 10 4f 60       	vmovups ymm1,YMMWORD PTR [rdi+0x60]
  b0594d:	c5 fc 10 9f 80 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0x80]
  b05954:	00 
  b05955:	c5 f4 c6 e3 88       	vshufps ymm4,ymm1,ymm3,0x88
  b0595a:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b05960:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  b05965:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  b0596b:	c5 fc 10 9f c0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xc0]
  b05972:	00 
  b05973:	c5 fc 10 af e0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xe0]
  b0597a:	00 
  b0597b:	c5 e4 c6 f5 88       	vshufps ymm6,ymm3,ymm5,0x88
  b05980:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  b05986:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  b0598b:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  b05991:	c5 fc 10 af 20 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x120]
  b05998:	00 
  b05999:	c5 fc 10 bf 40 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x140]
  b059a0:	00 
  b059a1:	c5 54 c6 c7 88       	vshufps ymm8,ymm5,ymm7,0x88
  b059a6:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b059ac:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b059b1:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  b059b7:	c5 fc 10 bf 80 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x180]
  b059be:	00 
  b059bf:	c5 7c 10 8f a0 01 00 	vmovups ymm9,YMMWORD PTR [rdi+0x1a0]
  b059c6:	00 
  b059c7:	c4 41 44 c6 d1 88    	vshufps ymm10,ymm7,ymm9,0x88
  b059cd:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  b059d3:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  b059d9:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  b059df:	c5 7c 10 8f e0 01 00 	vmovups ymm9,YMMWORD PTR [rdi+0x1e0]
  b059e6:	00 
  b059e7:	c5 7c 10 9f 00 02 00 	vmovups ymm11,YMMWORD PTR [rdi+0x200]
  b059ee:	00 
  b059ef:	c4 41 34 c6 e3 88    	vshufps ymm12,ymm9,ymm11,0x88
  b059f5:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b059fb:	c4 41 34 c6 cb dd    	vshufps ymm9,ymm9,ymm11,0xdd
  b05a01:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  b05a07:	c5 7c 10 9f 40 02 00 	vmovups ymm11,YMMWORD PTR [rdi+0x240]
  b05a0e:	00 
  b05a0f:	c5 7c 10 af 60 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x260]
  b05a16:	00 
  b05a17:	c4 41 24 c6 f5 88    	vshufps ymm14,ymm11,ymm13,0x88
  b05a1d:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  b05a23:	c4 41 24 c6 dd dd    	vshufps ymm11,ymm11,ymm13,0xdd
  b05a29:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  b05a2f:	c5 7c 10 af a0 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x2a0]
  b05a36:	00 
  b05a37:	c5 7c 10 bf c0 02 00 	vmovups ymm15,YMMWORD PTR [rdi+0x2c0]
  b05a3e:	00 
  b05a3f:	62 c1 14 28 c6 c7 88 	vshufps ymm16,ymm13,ymm15,0x88
  b05a46:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b05a4d:	c4 41 14 c6 ef dd    	vshufps ymm13,ymm13,ymm15,0xdd
  b05a53:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  b05a59:	c5 7c 58 ff          	vaddps ymm15,ymm0,ymm7
  b05a5d:	62 c1 64 28 58 cb    	vaddps ymm17,ymm3,ymm11
  b05a63:	62 a1 04 28 58 d1    	vaddps ymm18,ymm15,ymm17
  b05a69:	62 c1 74 28 58 d9    	vaddps ymm19,ymm1,ymm9
  b05a6f:	62 c1 54 28 58 e5    	vaddps ymm20,ymm5,ymm13
  b05a75:	62 a1 64 20 58 ec    	vaddps ymm21,ymm19,ymm20
  b05a7b:	62 21 6c 20 58 fd    	vaddps ymm31,ymm18,ymm21
  b05a81:	62 61 7c 28 29 7c 24 	vmovaps YMMWORD PTR [rsp+0x100],ymm31
  b05a88:	08 
  b05a89:	62 c1 6c 28 58 f2    	vaddps ymm22,ymm2,ymm10
  b05a8f:	62 c1 4c 28 58 fe    	vaddps ymm23,ymm6,ymm14
  b05a95:	62 21 4c 20 58 cf    	vaddps ymm25,ymm22,ymm23
  b05a9b:	62 41 5c 28 58 d4    	vaddps ymm26,ymm4,ymm12
  b05aa1:	62 21 3c 28 58 d8    	vaddps ymm27,ymm8,ymm16
  b05aa7:	62 01 2c 20 58 e3    	vaddps ymm28,ymm26,ymm27
  b05aad:	62 01 34 20 58 f4    	vaddps ymm30,ymm25,ymm28
  b05ab3:	62 61 7c 28 29 74 24 	vmovaps YMMWORD PTR [rsp+0x200],ymm30
  b05aba:	10 
  b05abb:	c5 fc 5c c7          	vsubps ymm0,ymm0,ymm7
  b05abf:	c4 c1 4c 5c f6       	vsubps ymm6,ymm6,ymm14
  b05ac4:	62 61 7c 28 58 ee    	vaddps ymm29,ymm0,ymm6
  b05aca:	c4 c1 74 5c c9       	vsubps ymm1,ymm1,ymm9
  b05acf:	c4 c1 5c 5c e4       	vsubps ymm4,ymm4,ymm12
  b05ad4:	62 62 7d 28 18 05 be 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff56f8be]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b05adb:	f8 56 ff 
  b05ade:	c5 f4 58 fc          	vaddps ymm7,ymm1,ymm4
  b05ae2:	62 11 44 28 59 e0    	vmulps ymm12,ymm7,ymm24
  b05ae8:	62 b1 3c 28 5c f8    	vsubps ymm7,ymm8,ymm16
  b05aee:	c4 c1 54 5c ed       	vsubps ymm5,ymm5,ymm13
  b05af3:	c5 44 5c c5          	vsubps ymm8,ymm7,ymm5
  b05af7:	62 11 3c 28 59 c0    	vmulps ymm8,ymm8,ymm24
  b05afd:	c4 41 1c 58 e8       	vaddps ymm13,ymm12,ymm8
  b05b02:	62 51 14 20 58 cd    	vaddps ymm9,ymm29,ymm13
  b05b08:	c5 7c 29 8c 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm9
  b05b0f:	00 00 
  b05b11:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  b05b16:	c5 a4 5c db          	vsubps ymm3,ymm11,ymm3
  b05b1a:	c5 64 58 da          	vaddps ymm11,ymm3,ymm2
  b05b1e:	c5 dc 5c c9          	vsubps ymm1,ymm4,ymm1
  b05b22:	62 91 74 28 59 c8    	vmulps ymm1,ymm1,ymm24
  b05b28:	c5 d4 58 e7          	vaddps ymm4,ymm5,ymm7
  b05b2c:	62 91 5c 28 59 e8    	vmulps ymm5,ymm4,ymm24
  b05b32:	62 e1 74 28 5c c5    	vsubps ymm16,ymm1,ymm5
  b05b38:	62 b1 24 28 58 e0    	vaddps ymm4,ymm11,ymm16
  b05b3e:	c5 fc 29 a4 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm4
  b05b45:	00 00 
  b05b47:	62 31 04 28 5c f9    	vsubps ymm15,ymm15,ymm17
  b05b4d:	62 81 2c 20 5c cb    	vsubps ymm17,ymm26,ymm27
  b05b53:	62 31 04 28 58 d1    	vaddps ymm10,ymm15,ymm17
  b05b59:	c5 7c 29 94 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm10
  b05b60:	00 00 
  b05b62:	62 a1 4c 20 5c f7    	vsubps ymm22,ymm22,ymm23
  b05b68:	62 a1 5c 20 5c db    	vsubps ymm19,ymm20,ymm19
  b05b6e:	62 b1 64 20 58 fe    	vaddps ymm7,ymm19,ymm22
  b05b74:	c5 fc 29 bc 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm7
  b05b7b:	00 00 
  b05b7d:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  b05b81:	c5 f4 58 cd          	vaddps ymm1,ymm1,ymm5
  b05b85:	c5 7c 58 f1          	vaddps ymm14,ymm0,ymm1
  b05b89:	c5 7c 29 b4 24 c0 01 	vmovaps YMMWORD PTR [rsp+0x1c0],ymm14
  b05b90:	00 00 
  b05b92:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  b05b96:	c4 c1 3c 5c dc       	vsubps ymm3,ymm8,ymm12
  b05b9b:	c5 ec 58 eb          	vaddps ymm5,ymm2,ymm3
  b05b9f:	c5 fc 29 ac 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm5
  b05ba6:	00 00 
  b05ba8:	62 a1 6c 20 5c e5    	vsubps ymm20,ymm18,ymm21
  b05bae:	62 e1 7c 28 29 64 24 	vmovaps YMMWORD PTR [rsp+0x120],ymm20
  b05bb5:	09 
  b05bb6:	62 11 34 20 5c e4    	vsubps ymm12,ymm25,ymm28
  b05bbc:	c5 7c 29 a4 24 20 02 	vmovaps YMMWORD PTR [rsp+0x220],ymm12
  b05bc3:	00 00 
  b05bc5:	62 51 14 20 5c ed    	vsubps ymm13,ymm29,ymm13
  b05bcb:	c5 7c 29 ac 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm13
  b05bd2:	00 00 
  b05bd4:	62 b1 24 28 5c f0    	vsubps ymm6,ymm11,ymm16
  b05bda:	c5 fc 29 b4 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm6
  b05be1:	00 00 
  b05be3:	62 a1 04 28 5c c1    	vsubps ymm16,ymm15,ymm17
  b05be9:	62 e1 7c 28 29 44 24 	vmovaps YMMWORD PTR [rsp+0x160],ymm16
  b05bf0:	0b 
  b05bf1:	62 31 4c 20 5c db    	vsubps ymm11,ymm22,ymm19
  b05bf7:	c5 7c 29 5c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm11
  b05bfd:	c5 7c 5c f9          	vsubps ymm15,ymm0,ymm1
  b05c01:	c5 7c 29 bc 24 e0 01 	vmovaps YMMWORD PTR [rsp+0x1e0],ymm15
  b05c08:	00 00 
  b05c0a:	c5 6c 5c c3          	vsubps ymm8,ymm2,ymm3
  b05c0e:	c5 7c 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm8
  b05c14:	62 d3 8d 20 23 c4 03 	vshuff64x2 ymm0,ymm30,ymm12,0x3
  b05c1b:	c4 c3 45 06 cb 31    	vperm2f128 ymm1,ymm7,ymm11,0x31
  b05c21:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  b05c25:	c4 e3 5d 06 de 31    	vperm2f128 ymm3,ymm4,ymm6,0x31
  b05c2b:	62 c3 d5 28 23 d0 03 	vshuff64x2 ymm18,ymm5,ymm8,0x3
  b05c32:	62 a1 e5 28 15 ca    	vunpckhpd ymm17,ymm3,ymm18
  b05c38:	62 b1 6c 28 c6 e1 dd 	vshufps ymm4,ymm2,ymm17,0xdd
  b05c3f:	c5 fc 29 64 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm4
  b05c45:	62 a1 6c 28 c6 c9 88 	vshufps ymm17,ymm2,ymm17,0x88
  b05c4c:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b05c50:	62 b1 e5 28 14 ca    	vunpcklpd ymm1,ymm3,ymm18
  b05c56:	62 e1 7c 28 c6 d1 dd 	vshufps ymm18,ymm0,ymm1,0xdd
  b05c5d:	62 e1 7c 28 c6 d9 88 	vshufps ymm19,ymm0,ymm1,0x88
  b05c64:	62 b3 85 20 23 c4 03 	vshuff64x2 ymm0,ymm31,ymm20,0x3
  b05c6b:	62 b3 ad 28 23 c8 03 	vshuff64x2 ymm1,ymm10,ymm16,0x3
  b05c72:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  b05c76:	c4 c3 35 06 dd 31    	vperm2f128 ymm3,ymm9,ymm13,0x31
  b05c7c:	62 c3 8d 28 23 f7 03 	vshuff64x2 ymm22,ymm14,ymm15,0x3
  b05c83:	62 a1 e5 28 15 ee    	vunpckhpd ymm21,ymm3,ymm22
  b05c89:	62 a1 6c 28 c6 e5 dd 	vshufps ymm20,ymm2,ymm21,0xdd
  b05c90:	62 a1 6c 28 c6 ed 88 	vshufps ymm21,ymm2,ymm21,0x88
  b05c97:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b05c9b:	62 b1 e5 28 14 ce    	vunpcklpd ymm1,ymm3,ymm22
  b05ca1:	62 e1 7c 28 c6 f1 dd 	vshufps ymm22,ymm0,ymm1,0xdd
  b05ca8:	62 e1 7c 28 c6 f9 88 	vshufps ymm23,ymm0,ymm1,0x88
  b05caf:	c5 f8 10 47 50       	vmovups xmm0,XMMWORD PTR [rdi+0x50]
  b05cb4:	c5 f8 10 4f 40       	vmovups xmm1,XMMWORD PTR [rdi+0x40]
  b05cb9:	62 61 74 08 c6 c8 88 	vshufps xmm25,xmm1,xmm0,0x88
  b05cc0:	c5 70 c6 e8 dd       	vshufps xmm13,xmm1,xmm0,0xdd
  b05cc5:	c5 f8 10 97 b0 00 00 	vmovups xmm2,XMMWORD PTR [rdi+0xb0]
  b05ccc:	00 
  b05ccd:	c5 f8 10 9f a0 00 00 	vmovups xmm3,XMMWORD PTR [rdi+0xa0]
  b05cd4:	00 
  b05cd5:	c5 60 c6 f2 88       	vshufps xmm14,xmm3,xmm2,0x88
  b05cda:	c5 60 c6 da dd       	vshufps xmm11,xmm3,xmm2,0xdd
  b05cdf:	c5 f8 10 97 10 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x110]
  b05ce6:	00 
  b05ce7:	c5 f8 10 9f 00 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x100]
  b05cee:	00 
  b05cef:	62 61 64 08 c6 ea 88 	vshufps xmm29,xmm3,xmm2,0x88
  b05cf6:	62 61 64 08 c6 d2 dd 	vshufps xmm26,xmm3,xmm2,0xdd
  b05cfd:	c5 f8 10 97 70 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x170]
  b05d04:	00 
  b05d05:	c5 f8 10 9f 60 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x160]
  b05d0c:	00 
  b05d0d:	c5 60 c6 d2 88       	vshufps xmm10,xmm3,xmm2,0x88
  b05d12:	c5 60 c6 ca dd       	vshufps xmm9,xmm3,xmm2,0xdd
  b05d17:	c5 f8 10 97 d0 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x1d0]
  b05d1e:	00 
  b05d1f:	c5 f8 10 9f c0 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x1c0]
  b05d26:	00 
  b05d27:	62 61 64 08 c6 da 88 	vshufps xmm27,xmm3,xmm2,0x88
  b05d2e:	c5 e0 c6 f2 dd       	vshufps xmm6,xmm3,xmm2,0xdd
  b05d33:	c5 f8 10 97 30 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x230]
  b05d3a:	00 
  b05d3b:	c5 f8 10 9f 20 02 00 	vmovups xmm3,XMMWORD PTR [rdi+0x220]
  b05d42:	00 
  b05d43:	c5 e0 c6 fa 88       	vshufps xmm7,xmm3,xmm2,0x88
  b05d48:	c5 e0 c6 ea dd       	vshufps xmm5,xmm3,xmm2,0xdd
  b05d4d:	c5 f8 10 97 90 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x290]
  b05d54:	00 
  b05d55:	62 61 7c 08 10 67 28 	vmovups xmm28,XMMWORD PTR [rdi+0x280]
  b05d5c:	62 e1 1c 00 c6 c2 88 	vshufps xmm16,xmm28,xmm2,0x88
  b05d63:	62 61 1c 00 c6 fa dd 	vshufps xmm31,xmm28,xmm2,0xdd
  b05d6a:	c5 f8 10 97 f0 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x2f0]
  b05d71:	00 
  b05d72:	62 61 7c 08 10 67 2e 	vmovups xmm28,XMMWORD PTR [rdi+0x2e0]
  b05d79:	62 f1 1c 00 c6 e2 88 	vshufps xmm4,xmm28,xmm2,0x88
  b05d80:	62 f1 1c 00 c6 da dd 	vshufps xmm3,xmm28,xmm2,0xdd
  b05d87:	62 61 14 28 58 f6    	vaddps ymm30,ymm13,ymm6
  b05d8d:	62 91 2c 20 58 cf    	vaddps ymm1,ymm26,ymm31
  b05d93:	62 61 0c 20 58 e1    	vaddps ymm28,ymm30,ymm1
  b05d99:	c5 24 58 fd          	vaddps ymm15,ymm11,ymm5
  b05d9d:	c5 34 58 e3          	vaddps ymm12,ymm9,ymm3
  b05da1:	c4 c1 04 58 c4       	vaddps ymm0,ymm15,ymm12
  b05da6:	62 f1 1c 20 58 d0    	vaddps ymm2,ymm28,ymm0
  b05dac:	62 f1 1c 00 5c c0    	vsubps xmm0,xmm28,xmm0
  b05db2:	62 63 6d 28 18 e0 01 	vinsertf32x4 ymm28,ymm2,xmm0,0x1
  b05db9:	62 f1 0c 20 5c c1    	vsubps ymm0,ymm30,ymm1
  b05dbf:	c5 0c 58 c7          	vaddps ymm8,ymm14,ymm7
  b05dc3:	c5 ac 58 d4          	vaddps ymm2,ymm10,ymm4
  b05dc7:	62 61 3c 28 5c f2    	vsubps ymm30,ymm8,ymm2
  b05dcd:	62 91 7c 28 58 ce    	vaddps ymm1,ymm0,ymm30
  b05dd3:	62 91 7c 08 5c c6    	vsubps xmm0,xmm0,xmm30
  b05dd9:	62 63 75 28 18 f0 01 	vinsertf32x4 ymm30,ymm1,xmm0,0x1
  b05de0:	c5 94 5c ce          	vsubps ymm1,ymm13,ymm6
  b05de4:	c5 a4 5c ed          	vsubps ymm5,ymm11,ymm5
  b05de8:	c5 8c 5c f7          	vsubps ymm6,ymm14,ymm7
  b05dec:	c5 ac 5c e4          	vsubps ymm4,ymm10,ymm4
  b05df0:	c5 b4 5c db          	vsubps ymm3,ymm9,ymm3
  b05df4:	c5 d4 58 c6          	vaddps ymm0,ymm5,ymm6
  b05df8:	62 91 7c 28 59 f8    	vmulps ymm7,ymm0,ymm24
  b05dfe:	c5 dc 5c c3          	vsubps ymm0,ymm4,ymm3
  b05e02:	62 11 7c 28 59 c8    	vmulps ymm9,ymm0,ymm24
  b05e08:	62 31 14 20 5c d0    	vsubps ymm10,ymm29,ymm16
  b05e0e:	c5 ac 58 c1          	vaddps ymm0,ymm10,ymm1
  b05e12:	c5 34 58 df          	vaddps ymm11,ymm9,ymm7
  b05e16:	c5 24 58 e8          	vaddps ymm13,ymm11,ymm0
  b05e1a:	c4 c1 78 5c c3       	vsubps xmm0,xmm0,xmm11
  b05e1f:	c4 e3 15 18 c0 01    	vinsertf128 ymm0,ymm13,xmm0,0x1
  b05e25:	c4 c1 74 5c ca       	vsubps ymm1,ymm1,ymm10
  b05e2a:	c5 cc 5c ed          	vsubps ymm5,ymm6,ymm5
  b05e2e:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  b05e32:	62 91 54 28 59 e0    	vmulps ymm4,ymm5,ymm24
  b05e38:	62 91 64 28 59 d8    	vmulps ymm3,ymm3,ymm24
  b05e3e:	c5 dc 58 eb          	vaddps ymm5,ymm4,ymm3
  b05e42:	c5 f4 58 f5          	vaddps ymm6,ymm1,ymm5
  b05e46:	c5 f0 5c cd          	vsubps xmm1,xmm1,xmm5
  b05e4a:	c4 e3 4d 18 c9 01    	vinsertf128 ymm1,ymm6,xmm1,0x1
  b05e50:	62 b1 14 20 58 e8    	vaddps ymm5,ymm29,ymm16
  b05e56:	c5 bc 58 d2          	vaddps ymm2,ymm8,ymm2
  b05e5a:	62 91 34 20 58 f3    	vaddps ymm6,ymm25,ymm27
  b05e60:	c5 4c 58 c5          	vaddps ymm8,ymm6,ymm5
  b05e64:	c5 3c 58 d2          	vaddps ymm10,ymm8,ymm2
  b05e68:	c5 b8 5c d2          	vsubps xmm2,xmm8,xmm2
  b05e6c:	c4 e3 2d 18 d2 01    	vinsertf128 ymm2,ymm10,xmm2,0x1
  b05e72:	c4 41 1c 5c c7       	vsubps ymm8,ymm12,ymm15
  b05e77:	c5 cc 5c ed          	vsubps ymm5,ymm6,ymm5
  b05e7b:	c5 bc 58 f5          	vaddps ymm6,ymm8,ymm5
  b05e7f:	c4 c1 50 5c e8       	vsubps xmm5,xmm5,xmm8
  b05e84:	c4 e3 4d 18 ed 01    	vinsertf128 ymm5,ymm6,xmm5,0x1
  b05e8a:	62 91 04 20 5c f2    	vsubps ymm6,ymm31,ymm26
  b05e90:	62 11 34 20 5c c3    	vsubps ymm8,ymm25,ymm27
  b05e96:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  b05e9a:	c5 bc 58 e6          	vaddps ymm4,ymm8,ymm6
  b05e9e:	c5 5c 58 d3          	vaddps ymm10,ymm4,ymm3
  b05ea2:	c5 d8 5c db          	vsubps xmm3,xmm4,xmm3
  b05ea6:	c4 e3 2d 18 db 01    	vinsertf128 ymm3,ymm10,xmm3,0x1
  b05eac:	c5 bc 5c e6          	vsubps ymm4,ymm8,ymm6
  b05eb0:	c5 b4 5c f7          	vsubps ymm6,ymm9,ymm7
  b05eb4:	c5 dc 58 fe          	vaddps ymm7,ymm4,ymm6
  b05eb8:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  b05ebc:	c4 e3 45 18 e4 01    	vinsertf128 ymm4,ymm7,xmm4,0x1
  b05ec2:	62 91 9d 20 15 f6    	vunpckhpd ymm6,ymm28,ymm30
  b05ec8:	c5 fd 15 f9          	vunpckhpd ymm7,ymm0,ymm1
  b05ecc:	c5 4c c6 c7 dd       	vshufps ymm8,ymm6,ymm7,0xdd
  b05ed1:	c5 cc c6 f7 88       	vshufps ymm6,ymm6,ymm7,0x88
  b05ed6:	c5 ed 15 fd          	vunpckhpd ymm7,ymm2,ymm5
  b05eda:	c5 65 15 cc          	vunpckhpd ymm9,ymm3,ymm4
  b05ede:	c4 41 44 c6 d1 dd    	vshufps ymm10,ymm7,ymm9,0xdd
  b05ee4:	c4 c1 44 c6 f9 88    	vshufps ymm7,ymm7,ymm9,0x88
  b05eea:	62 11 9d 20 14 ce    	vunpcklpd ymm9,ymm28,ymm30
  b05ef0:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b05ef4:	c5 ed 14 cd          	vunpcklpd ymm1,ymm2,ymm5
  b05ef8:	c5 e5 14 d4          	vunpcklpd ymm2,ymm3,ymm4
  b05efc:	c5 b4 c6 d8 dd       	vshufps ymm3,ymm9,ymm0,0xdd
  b05f01:	c5 b4 c6 c0 88       	vshufps ymm0,ymm9,ymm0,0x88
  b05f06:	c5 f4 c6 e2 dd       	vshufps ymm4,ymm1,ymm2,0xdd
  b05f0b:	c5 f4 c6 ca 88       	vshufps ymm1,ymm1,ymm2,0x88
  b05f10:	62 63 7d 28 04 44 24 	vpermilps ymm24,YMMWORD PTR [rsp+0x60],0xd8
  b05f17:	03 d8 
  b05f19:	62 21 74 20 c6 f1 d8 	vshufps ymm30,ymm17,ymm17,0xd8
  b05f20:	62 b1 6c 20 c6 d2 d8 	vshufps ymm2,ymm18,ymm18,0xd8
  b05f27:	c5 fc 29 54 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm2
  b05f2d:	62 21 64 20 c6 d3 d8 	vshufps ymm26,ymm19,ymm19,0xd8
  b05f34:	62 21 5c 20 c6 cc d8 	vshufps ymm25,ymm20,ymm20,0xd8
  b05f3b:	62 21 54 20 c6 fd d8 	vshufps ymm31,ymm21,ymm21,0xd8
  b05f42:	62 a1 4c 20 c6 ce d8 	vshufps ymm17,ymm22,ymm22,0xd8
  b05f49:	62 a1 44 20 c6 ff d8 	vshufps ymm23,ymm23,ymm23,0xd8
  b05f50:	62 c1 3c 28 c6 d0 d8 	vshufps ymm18,ymm8,ymm8,0xd8
  b05f57:	62 c1 2c 28 c6 da d8 	vshufps ymm19,ymm10,ymm10,0xd8
  b05f5e:	62 e1 4c 28 c6 f6 d8 	vshufps ymm22,ymm6,ymm6,0xd8
  b05f65:	62 61 44 28 c6 df d8 	vshufps ymm27,ymm7,ymm7,0xd8
  b05f6c:	62 61 64 28 c6 e3 d8 	vshufps ymm28,ymm3,ymm3,0xd8
  b05f73:	62 61 5c 28 c6 ec d8 	vshufps ymm29,ymm4,ymm4,0xd8
  b05f7a:	62 e1 7c 28 c6 e0 d8 	vshufps ymm20,ymm0,ymm0,0xd8
  b05f81:	62 e1 74 28 c6 e9 d8 	vshufps ymm21,ymm1,ymm1,0xd8
  b05f88:	c5 fc 28 84 24 00 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x100]
  b05f8f:	00 00 
  b05f91:	c4 e3 7d 18 84 24 20 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rsp+0x120],0x1
  b05f98:	01 00 00 01 
  b05f9c:	c5 fc 28 8c 24 40 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x140]
  b05fa3:	00 00 
  b05fa5:	c4 e3 75 18 8c 24 60 	vinsertf128 ymm1,ymm1,XMMWORD PTR [rsp+0x160],0x1
  b05fac:	01 00 00 01 
  b05fb0:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  b05fb4:	c5 fc 28 9c 24 80 01 	vmovaps ymm3,YMMWORD PTR [rsp+0x180]
  b05fbb:	00 00 
  b05fbd:	c4 e3 65 18 9c 24 a0 	vinsertf128 ymm3,ymm3,XMMWORD PTR [rsp+0x1a0],0x1
  b05fc4:	01 00 00 01 
  b05fc8:	c5 fc 28 a4 24 c0 01 	vmovaps ymm4,YMMWORD PTR [rsp+0x1c0]
  b05fcf:	00 00 
  b05fd1:	c4 e3 5d 18 ac 24 e0 	vinsertf128 ymm5,ymm4,XMMWORD PTR [rsp+0x1e0],0x1
  b05fd8:	01 00 00 01 
  b05fdc:	c5 e5 15 e5          	vunpckhpd ymm4,ymm3,ymm5
  b05fe0:	c5 ec c6 f4 dd       	vshufps ymm6,ymm2,ymm4,0xdd
  b05fe5:	c5 4c c6 ee d8       	vshufps ymm13,ymm6,ymm6,0xd8
  b05fea:	c5 fc 28 b4 24 00 02 	vmovaps ymm6,YMMWORD PTR [rsp+0x200]
  b05ff1:	00 00 
  b05ff3:	c4 e3 4d 18 b4 24 20 	vinsertf128 ymm6,ymm6,XMMWORD PTR [rsp+0x220],0x1
  b05ffa:	02 00 00 01 
  b05ffe:	c5 fc 28 bc 24 80 00 	vmovaps ymm7,YMMWORD PTR [rsp+0x80]
  b06005:	00 00 
  b06007:	c4 63 45 18 44 24 20 	vinsertf128 ymm8,ymm7,XMMWORD PTR [rsp+0x20],0x1
  b0600e:	01 
  b0600f:	c4 c1 4d 15 f8       	vunpckhpd ymm7,ymm6,ymm8
  b06014:	c5 7c 28 8c 24 a0 00 	vmovaps ymm9,YMMWORD PTR [rsp+0xa0]
  b0601b:	00 00 
  b0601d:	c4 63 35 18 8c 24 c0 	vinsertf128 ymm9,ymm9,XMMWORD PTR [rsp+0xc0],0x1
  b06024:	00 00 00 01 
  b06028:	c5 7c 28 94 24 e0 00 	vmovaps ymm10,YMMWORD PTR [rsp+0xe0]
  b0602f:	00 00 
  b06031:	c4 63 2d 18 54 24 40 	vinsertf128 ymm10,ymm10,XMMWORD PTR [rsp+0x40],0x1
  b06038:	01 
  b06039:	c4 41 35 15 da       	vunpckhpd ymm11,ymm9,ymm10
  b0603e:	c4 41 44 c6 e3 dd    	vshufps ymm12,ymm7,ymm11,0xdd
  b06044:	c4 41 1c c6 f4 d8    	vshufps ymm14,ymm12,ymm12,0xd8
  b0604a:	c5 ec c6 d4 88       	vshufps ymm2,ymm2,ymm4,0x88
  b0604f:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b06054:	c4 c1 44 c6 e3 88    	vshufps ymm4,ymm7,ymm11,0x88
  b0605a:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b0605f:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b06063:	c5 e5 14 cd          	vunpcklpd ymm1,ymm3,ymm5
  b06067:	c5 fc c6 d9 dd       	vshufps ymm3,ymm0,ymm1,0xdd
  b0606c:	c5 e4 c6 fb d8       	vshufps ymm7,ymm3,ymm3,0xd8
  b06071:	c4 c1 4d 14 d8       	vunpcklpd ymm3,ymm6,ymm8
  b06076:	c4 c1 35 14 ea       	vunpcklpd ymm5,ymm9,ymm10
  b0607b:	c5 e4 c6 f5 dd       	vshufps ymm6,ymm3,ymm5,0xdd
  b06080:	c5 4c c6 ce d8       	vshufps ymm9,ymm6,ymm6,0xd8
  b06085:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  b0608a:	62 e1 7c 28 c6 c0 d8 	vshufps ymm16,ymm0,ymm0,0xd8
  b06091:	c5 e4 c6 c5 88       	vshufps ymm0,ymm3,ymm5,0x88
  b06096:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b0609b:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  b060a1:	c5 7c 10 62 40       	vmovups ymm12,YMMWORD PTR [rdx+0x40]
  b060a6:	c5 fc 10 4a 60       	vmovups ymm1,YMMWORD PTR [rdx+0x60]
  b060ab:	c5 fc 10 b2 80 00 00 	vmovups ymm6,YMMWORD PTR [rdx+0x80]
  b060b2:	00 
  b060b3:	c5 fc 10 aa a0 00 00 	vmovups ymm5,YMMWORD PTR [rdx+0xa0]
  b060ba:	00 
  b060bb:	c5 7c 10 ba c0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xc0]
  b060c2:	00 
  b060c3:	c5 7c 10 82 80 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x180]
  b060ca:	00 
  b060cb:	c5 7c 10 92 a0 01 00 	vmovups ymm10,YMMWORD PTR [rdx+0x1a0]
  b060d2:	00 
  b060d3:	62 d1 04 20 59 d8    	vmulps ymm3,ymm31,ymm8
  b060d9:	62 d2 0d 20 bc da    	vfnmadd231ps ymm3,ymm30,ymm10
  b060df:	62 51 0c 20 59 c0    	vmulps ymm8,ymm30,ymm8
  b060e5:	62 61 7c 28 10 72 07 	vmovups ymm30,YMMWORD PTR [rdx+0xe0]
  b060ec:	62 52 05 20 b8 c2    	vfmadd231ps ymm8,ymm31,ymm10
  b060f2:	62 61 7c 28 10 7a 08 	vmovups ymm31,YMMWORD PTR [rdx+0x100]
  b060f9:	c4 41 14 59 df       	vmulps ymm11,ymm13,ymm15
  b060fe:	62 12 0d 28 bc de    	vfnmadd231ps ymm11,ymm14,ymm30
  b06104:	c4 41 0c 59 f7       	vmulps ymm14,ymm14,ymm15
  b06109:	c5 7c 10 ba 40 02 00 	vmovups ymm15,YMMWORD PTR [rdx+0x240]
  b06110:	00 
  b06111:	62 12 15 28 b8 f6    	vfmadd231ps ymm14,ymm13,ymm30
  b06117:	62 61 7c 28 10 72 13 	vmovups ymm30,YMMWORD PTR [rdx+0x260]
  b0611e:	62 51 1c 20 59 ef    	vmulps ymm13,ymm28,ymm15
  b06124:	62 12 15 20 bc ee    	vfnmadd231ps ymm13,ymm29,ymm30
  b0612a:	62 51 14 20 59 ff    	vmulps ymm15,ymm29,ymm15
  b06130:	62 61 7c 28 10 6a 09 	vmovups ymm29,YMMWORD PTR [rdx+0x120]
  b06137:	62 12 1d 20 b8 fe    	vfmadd231ps ymm15,ymm28,ymm30
  b0613d:	62 61 7c 28 10 72 0a 	vmovups ymm30,YMMWORD PTR [rdx+0x140]
  b06144:	62 01 44 20 59 e7    	vmulps ymm28,ymm23,ymm31
  b0614a:	62 02 2d 20 bc e5    	vfnmadd231ps ymm28,ymm26,ymm29
  b06150:	62 01 2c 20 59 d7    	vmulps ymm26,ymm26,ymm31
  b06156:	62 61 7c 28 10 7a 14 	vmovups ymm31,YMMWORD PTR [rdx+0x280]
  b0615d:	62 02 45 20 b8 d5    	vfmadd231ps ymm26,ymm23,ymm29
  b06163:	62 61 7c 28 10 6a 15 	vmovups ymm29,YMMWORD PTR [rdx+0x2a0]
  b0616a:	62 91 4c 20 59 c7    	vmulps ymm0,ymm22,ymm31
  b06170:	62 92 25 20 bc c5    	vfnmadd231ps ymm0,ymm27,ymm29
  b06176:	62 81 24 20 59 ff    	vmulps ymm23,ymm27,ymm31
  b0617c:	62 61 7c 28 10 5a 0e 	vmovups ymm27,YMMWORD PTR [rdx+0x1c0]
  b06183:	62 82 4d 20 b8 fd    	vfmadd231ps ymm23,ymm22,ymm29
  b06189:	62 61 7c 28 10 6a 0f 	vmovups ymm29,YMMWORD PTR [rdx+0x1e0]
  b06190:	62 81 34 20 59 f3    	vmulps ymm22,ymm25,ymm27
  b06196:	62 82 3d 20 bc f5    	vfnmadd231ps ymm22,ymm24,ymm29
  b0619c:	62 01 3c 20 59 c3    	vmulps ymm24,ymm24,ymm27
  b061a2:	62 61 7c 28 10 5a 0b 	vmovups ymm27,YMMWORD PTR [rdx+0x160]
  b061a9:	62 02 35 20 b8 c5    	vfmadd231ps ymm24,ymm25,ymm29
  b061af:	62 61 7c 28 10 4a 10 	vmovups ymm25,YMMWORD PTR [rdx+0x200]
  b061b6:	62 41 44 28 59 ec    	vmulps ymm29,ymm7,ymm12
  b061bc:	62 62 35 28 bc e9    	vfnmadd231ps ymm29,ymm9,ymm1
  b061c2:	c4 41 34 59 cc       	vmulps ymm9,ymm9,ymm12
  b061c7:	c5 7c 10 a2 20 02 00 	vmovups ymm12,YMMWORD PTR [rdx+0x220]
  b061ce:	00 
  b061cf:	c4 62 45 b8 c9       	vfmadd231ps ymm9,ymm7,ymm1
  b061d4:	c5 fc 10 ba c0 02 00 	vmovups ymm7,YMMWORD PTR [rdx+0x2c0]
  b061db:	00 
  b061dc:	62 01 5c 20 59 f9    	vmulps ymm31,ymm20,ymm25
  b061e2:	62 42 55 20 bc fc    	vfnmadd231ps ymm31,ymm21,ymm12
  b061e8:	62 81 54 20 59 e9    	vmulps ymm21,ymm21,ymm25
  b061ee:	62 61 7c 28 10 4a 17 	vmovups ymm25,YMMWORD PTR [rdx+0x2e0]
  b061f5:	62 c2 5d 20 b8 ec    	vfmadd231ps ymm21,ymm20,ymm12
  b061fb:	62 f1 7c 20 58 cb    	vaddps ymm1,ymm16,ymm3
  b06201:	c5 fc 29 4c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm1
  b06207:	62 e1 6c 28 59 e6    	vmulps ymm20,ymm2,ymm6
  b0620d:	62 e2 5d 28 bc e5    	vfnmadd231ps ymm20,ymm4,ymm5
  b06213:	c5 dc 59 e6          	vmulps ymm4,ymm4,ymm6
  b06217:	c4 41 24 58 e5       	vaddps ymm12,ymm11,ymm13
  b0621c:	c4 e2 6d b8 e5       	vfmadd231ps ymm4,ymm2,ymm5
  b06221:	c5 9c 58 c9          	vaddps ymm1,ymm12,ymm1
  b06225:	c5 fc 29 8c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm1
  b0622c:	00 00 
  b0622e:	62 f1 6c 20 59 ef    	vmulps ymm5,ymm18,ymm7
  b06234:	62 92 65 20 bc e9    	vfnmadd231ps ymm5,ymm19,ymm25
  b0623a:	62 f1 64 20 59 ff    	vmulps ymm7,ymm19,ymm7
  b06240:	62 f1 1c 20 58 f0    	vaddps ymm6,ymm28,ymm0
  b06246:	62 92 6d 20 b8 f9    	vfmadd231ps ymm7,ymm18,ymm25
  b0624c:	62 01 4c 20 58 cd    	vaddps ymm25,ymm22,ymm29
  b06252:	62 91 74 20 59 d6    	vmulps ymm2,ymm17,ymm30
  b06258:	c5 fc 28 4c 24 60    	vmovaps ymm1,YMMWORD PTR [rsp+0x60]
  b0625e:	62 92 75 28 bc d3    	vfnmadd231ps ymm2,ymm1,ymm27
  b06264:	62 81 74 28 59 d6    	vmulps ymm18,ymm1,ymm30
  b0626a:	62 91 4c 28 58 c9    	vaddps ymm1,ymm6,ymm25
  b06270:	c5 fc 29 8c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm1
  b06277:	00 00 
  b06279:	62 82 75 20 b8 d3    	vfmadd231ps ymm18,ymm17,ymm27
  b0627f:	62 a1 04 20 58 cc    	vaddps ymm17,ymm31,ymm20
  b06285:	62 e1 54 28 58 da    	vaddps ymm19,ymm5,ymm2
  b0628b:	62 61 1c 20 5c e0    	vsubps ymm28,ymm28,ymm0
  b06291:	62 51 3c 20 58 d1    	vaddps ymm10,ymm24,ymm9
  b06297:	62 41 3c 20 5c d9    	vsubps ymm27,ymm24,ymm9
  b0629d:	62 21 74 20 58 f3    	vaddps ymm30,ymm17,ymm19
  b062a3:	62 21 04 20 5c fc    	vsubps ymm31,ymm31,ymm20
  b062a9:	62 31 44 28 58 ca    	vaddps ymm9,ymm7,ymm18
  b062af:	62 a1 44 28 5c e2    	vsubps ymm20,ymm7,ymm18
  b062b5:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  b062bb:	62 e1 3c 28 58 d0    	vaddps ymm18,ymm8,ymm0
  b062c1:	62 e1 7c 20 5c c3    	vsubps ymm16,ymm16,ymm3
  b062c7:	c4 c1 0c 58 df       	vaddps ymm3,ymm14,ymm15
  b062cc:	c4 41 0c 5c f7       	vsubps ymm14,ymm14,ymm15
  b062d1:	62 31 2c 20 58 ff    	vaddps ymm15,ymm26,ymm23
  b062d7:	62 21 2c 20 5c d7    	vsubps ymm26,ymm26,ymm23
  b062dd:	62 e1 54 20 58 fc    	vaddps ymm23,ymm21,ymm4
  b062e3:	62 a1 14 20 5c f6    	vsubps ymm22,ymm29,ymm22
  b062e9:	62 b1 2c 20 58 fe    	vaddps ymm7,ymm26,ymm22
  b062ef:	62 f1 54 20 5c e4    	vsubps ymm4,ymm21,ymm4
  b062f5:	c5 ec 5c ed          	vsubps ymm5,ymm2,ymm5
  b062f9:	62 e1 5c 28 58 ed    	vaddps ymm21,ymm4,ymm5
  b062ff:	62 b1 44 28 5c d5    	vsubps ymm2,ymm7,ymm21
  b06305:	c5 fc 29 94 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm2
  b0630c:	00 00 
  b0630e:	62 b1 44 28 58 d5    	vaddps ymm2,ymm7,ymm21
  b06314:	c5 fc 29 94 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm2
  b0631b:	00 00 
  b0631d:	62 81 1c 20 58 eb    	vaddps ymm21,ymm28,ymm27
  b06323:	c4 c1 7c 5c c0       	vsubps ymm0,ymm0,ymm8
  b06328:	62 31 04 20 58 c4    	vaddps ymm8,ymm31,ymm20
  b0632e:	c4 41 14 5c eb       	vsubps ymm13,ymm13,ymm11
  b06333:	62 41 54 20 58 e8    	vaddps ymm29,ymm21,ymm8
  b06339:	62 d1 54 20 5c d0    	vsubps ymm2,ymm21,ymm8
  b0633f:	c5 fc 29 54 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm2
  b06345:	62 11 74 28 58 c6    	vaddps ymm8,ymm1,ymm30
  b0634b:	62 91 4c 28 5c f1    	vsubps ymm6,ymm6,ymm25
  b06351:	c5 fc 28 94 24 80 00 	vmovaps ymm2,YMMWORD PTR [rsp+0x80]
  b06358:	00 00 
  b0635a:	62 41 6c 28 58 c8    	vaddps ymm25,ymm2,ymm8
  b06360:	62 a1 74 20 5c cb    	vsubps ymm17,ymm17,ymm19
  b06366:	62 a1 64 28 58 da    	vaddps ymm19,ymm3,ymm18
  b0636c:	c5 fc 28 4c 24 20    	vmovaps ymm1,YMMWORD PTR [rsp+0x20]
  b06372:	c4 41 74 5c dc       	vsubps ymm11,ymm1,ymm12
  b06377:	c4 c1 04 58 fa       	vaddps ymm7,ymm15,ymm10
  b0637c:	c4 c1 04 5c ca       	vsubps ymm1,ymm15,ymm10
  b06381:	62 51 44 20 58 d1    	vaddps ymm10,ymm23,ymm9
  b06387:	62 51 44 20 5c e1    	vsubps ymm12,ymm23,ymm9
  b0638d:	c4 41 74 5c cc       	vsubps ymm9,ymm1,ymm12
  b06392:	c5 7c 29 4c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm9
  b06398:	62 c1 74 28 58 ec    	vaddps ymm21,ymm1,ymm12
  b0639e:	c5 2c 58 e7          	vaddps ymm12,ymm10,ymm7
  b063a2:	62 e1 6c 20 5c d3    	vsubps ymm18,ymm18,ymm3
  b063a8:	62 b1 4c 28 58 d9    	vaddps ymm3,ymm6,ymm17
  b063ae:	62 21 4c 28 5c c1    	vsubps ymm24,ymm6,ymm17
  b063b4:	62 51 7c 20 58 ce    	vaddps ymm9,ymm16,ymm14
  b063ba:	62 d1 7c 20 5c ce    	vsubps ymm1,ymm16,ymm14
  b063c0:	62 c1 64 20 58 fc    	vaddps ymm23,ymm19,ymm12
  b063c6:	62 81 1c 20 5c c3    	vsubps ymm16,ymm28,ymm27
  b063cc:	c4 62 7d 18 3d 8b f0 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff56f08b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b063d3:	56 ff 
  b063d5:	62 21 04 20 5c dc    	vsubps ymm27,ymm31,ymm20
  b063db:	62 e1 14 28 58 c8    	vaddps ymm17,ymm13,ymm0
  b063e1:	c4 c1 7c 5c c5       	vsubps ymm0,ymm0,ymm13
  b063e6:	c5 7c 29 fe          	vmovaps ymm6,ymm15
  b063ea:	62 31 2c 20 5c ee    	vsubps ymm13,ymm26,ymm22
  b063f0:	62 c1 7c 28 28 e7    	vmovaps ymm20,ymm15
  b063f6:	c5 dc 5c ed          	vsubps ymm5,ymm4,ymm5
  b063fa:	62 41 7c 28 28 d7    	vmovaps ymm26,ymm15
  b06400:	c4 62 05 ac c2       	vfnmadd213ps ymm8,ymm15,ymm2
  b06405:	62 01 7c 20 58 e3    	vaddps ymm28,ymm16,ymm27
  b0640b:	62 32 05 28 ac e3    	vfnmadd213ps ymm12,ymm15,ymm19
  b06411:	62 11 74 28 58 f4    	vaddps ymm14,ymm1,ymm28
  b06417:	62 62 05 28 ac e1    	vfnmadd213ps ymm28,ymm15,ymm1
  b0641d:	62 c1 7c 28 28 df    	vmovaps ymm19,ymm15
  b06423:	c5 94 58 cd          	vaddps ymm1,ymm13,ymm5
  b06427:	c4 62 75 ac f8       	vfnmadd213ps ymm15,ymm1,ymm0
  b0642c:	c5 fc 58 c9          	vaddps ymm1,ymm0,ymm1
  b06430:	c4 c1 44 5c c2       	vsubps ymm0,ymm7,ymm10
  b06435:	c4 e2 7d 18 3d 96 ee 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff56ee96]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b0643c:	56 ff 
  b0643e:	62 d2 15 20 ac f1    	vfnmadd213ps ymm6,ymm29,ymm9
  b06444:	c5 c4 59 94 24 e0 00 	vmulps ymm2,ymm7,YMMWORD PTR [rsp+0xe0]
  b0644b:	00 00 
  b0644d:	c5 fc 28 a4 24 a0 00 	vmovaps ymm4,YMMWORD PTR [rsp+0xa0]
  b06454:	00 00 
  b06456:	62 01 5c 28 5c f6    	vsubps ymm30,ymm4,ymm30
  b0645c:	62 61 4c 28 58 fa    	vaddps ymm31,ymm6,ymm2
  b06462:	c5 7c 28 94 24 c0 00 	vmovaps ymm10,YMMWORD PTR [rsp+0xc0]
  b06469:	00 00 
  b0646b:	62 a2 2d 28 ac e1    	vfnmadd213ps ymm20,ymm10,ymm17
  b06471:	c5 c4 59 64 24 40    	vmulps ymm4,ymm7,YMMWORD PTR [rsp+0x40]
  b06477:	62 e1 4c 28 5c f2    	vsubps ymm22,ymm6,ymm2
  b0647d:	62 f1 5c 20 5c f4    	vsubps ymm6,ymm20,ymm4
  b06483:	62 f1 5c 20 58 d4    	vaddps ymm2,ymm20,ymm4
  b06489:	62 42 65 28 ac d3    	vfnmadd213ps ymm26,ymm3,ymm11
  b0648f:	62 e1 24 28 58 e3    	vaddps ymm20,ymm11,ymm3
  b06495:	62 a2 55 20 ac da    	vfnmadd213ps ymm19,ymm21,ymm18
  b0649b:	62 b1 6c 20 58 e5    	vaddps ymm4,ymm18,ymm21
  b064a1:	c5 94 5c dd          	vsubps ymm3,ymm13,ymm5
  b064a5:	62 91 7c 20 5c eb    	vsubps ymm5,ymm16,ymm27
  b064ab:	62 e1 44 28 59 44 24 	vmulps ymm16,ymm7,YMMWORD PTR [rsp+0x20]
  b064b2:	01 
  b064b3:	62 61 3c 20 59 c7    	vmulps ymm24,ymm24,ymm7
  b064b9:	c5 fc 59 c7          	vmulps ymm0,ymm0,ymm7
  b064bd:	62 71 0c 20 59 ef    	vmulps ymm13,ymm30,ymm7
  b064c3:	62 61 64 28 59 df    	vmulps ymm27,ymm3,ymm7
  b064c9:	c5 d4 59 ef          	vmulps ymm5,ymm5,ymm7
  b064cd:	62 61 3c 28 58 f0    	vaddps ymm30,ymm8,ymm0
  b064d3:	62 e1 3c 28 5c e8    	vsubps ymm21,ymm8,ymm0
  b064d9:	c4 41 1c 5c dd       	vsubps ymm11,ymm12,ymm13
  b064de:	c4 41 1c 58 c5       	vaddps ymm8,ymm12,ymm13
  b064e3:	62 b1 2c 20 5c c0    	vsubps ymm0,ymm26,ymm16
  b064e9:	62 81 34 28 58 d5    	vaddps ymm18,ymm9,ymm29
  b064ef:	62 11 64 20 58 e8    	vaddps ymm13,ymm19,ymm24
  b064f5:	62 d1 74 20 58 da    	vaddps ymm3,ymm17,ymm10
  b064fb:	62 01 1c 20 58 eb    	vaddps ymm29,ymm28,ymm27
  b06501:	62 a1 2c 20 58 c8    	vaddps ymm17,ymm26,ymm16
  b06507:	c5 04 5c e5          	vsubps ymm12,ymm15,ymm5
  b0650b:	62 91 64 20 5c f8    	vsubps ymm7,ymm19,ymm24
  b06511:	62 81 1c 20 5c c3    	vsubps ymm16,ymm28,ymm27
  b06517:	c5 04 58 d5          	vaddps ymm10,ymm15,ymm5
  b0651b:	c5 7c 28 0d 7d f3 56 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff56f37d]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  b06522:	ff 
  b06523:	62 31 7c 28 28 ff    	vmovaps ymm15,ymm23
  b06529:	62 12 35 28 7f f9    	vpermt2ps ymm15,ymm9,ymm25
  b0652f:	62 e1 7c 28 28 1d a7 	vmovaps ymm19,YMMWORD PTR [rip+0xffffffffff570ca7]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b06536:	0c 57 ff 
  b06539:	62 82 65 20 7f f9    	vpermt2ps ymm23,ymm19,ymm25
  b0653f:	c5 fc 28 ee          	vmovaps ymm5,ymm6
  b06543:	62 92 35 28 7f ef    	vpermt2ps ymm5,ymm9,ymm31
  b06549:	62 92 65 20 7f f7    	vpermt2ps ymm6,ymm19,ymm31
  b0654f:	62 41 7c 28 28 c5    	vmovaps ymm24,ymm13
  b06555:	62 62 35 28 7f c0    	vpermt2ps ymm24,ymm9,ymm0
  b0655b:	62 72 65 20 7f e8    	vpermt2ps ymm13,ymm19,ymm0
  b06561:	c5 fc 28 c1          	vmovaps ymm0,ymm1
  b06565:	62 d2 35 28 7f c6    	vpermt2ps ymm0,ymm9,ymm14
  b0656b:	62 d2 65 20 7f ce    	vpermt2ps ymm1,ymm19,ymm14
  b06571:	c4 41 7c 28 f3       	vmovaps ymm14,ymm11
  b06576:	62 12 35 28 7f f6    	vpermt2ps ymm14,ymm9,ymm30
  b0657c:	62 12 65 20 7f de    	vpermt2ps ymm11,ymm19,ymm30
  b06582:	62 61 7c 28 28 ca    	vmovaps ymm25,ymm2
  b06588:	62 22 35 28 7f ce    	vpermt2ps ymm25,ymm9,ymm22
  b0658e:	62 b2 65 20 7f d6    	vpermt2ps ymm2,ymm19,ymm22
  b06594:	62 e1 7c 28 28 f4    	vmovaps ymm22,ymm4
  b0659a:	62 a2 35 28 7f f4    	vpermt2ps ymm22,ymm9,ymm20
  b065a0:	62 b2 65 20 7f e4    	vpermt2ps ymm4,ymm19,ymm20
  b065a6:	62 c1 7c 28 28 e4    	vmovaps ymm20,ymm12
  b065ac:	62 82 35 28 7f e5    	vpermt2ps ymm20,ymm9,ymm29
  b065b2:	62 12 65 20 7f e5    	vpermt2ps ymm12,ymm19,ymm29
  b065b8:	62 41 7c 28 28 d0    	vmovaps ymm26,ymm8
  b065be:	62 22 35 28 7f d5    	vpermt2ps ymm26,ymm9,ymm21
  b065c4:	62 32 65 20 7f c5    	vpermt2ps ymm8,ymm19,ymm21
  b065ca:	62 e1 7c 28 28 eb    	vmovaps ymm21,ymm3
  b065d0:	62 a2 35 28 7f ea    	vpermt2ps ymm21,ymm9,ymm18
  b065d6:	62 b2 65 20 7f da    	vpermt2ps ymm3,ymm19,ymm18
  b065dc:	62 e1 7c 28 28 d7    	vmovaps ymm18,ymm7
  b065e2:	62 a2 35 28 7f d1    	vpermt2ps ymm18,ymm9,ymm17
  b065e8:	62 b2 65 20 7f f9    	vpermt2ps ymm7,ymm19,ymm17
  b065ee:	62 32 2d 28 77 c8    	vpermi2ps ymm9,ymm10,ymm16
  b065f4:	62 32 65 20 7f d0    	vpermt2ps ymm10,ymm19,ymm16
  b065fa:	62 e1 7c 28 11 3e    	vmovups YMMWORD PTR [rsi],ymm23
  b06600:	c5 7c 11 7e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm15
  b06605:	c5 fc 11 76 40       	vmovups YMMWORD PTR [rsi+0x40],ymm6
  b0660a:	c5 fc 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm5
  b0660f:	c5 7c 11 ae 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm13
  b06616:	00 
  b06617:	62 61 7c 28 11 46 05 	vmovups YMMWORD PTR [rsi+0xa0],ymm24
  b0661e:	c5 fc 11 8e c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm1
  b06625:	00 
  b06626:	c5 fc 11 86 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm0
  b0662d:	00 
  b0662e:	c5 7c 11 9e 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm11
  b06635:	00 
  b06636:	c5 7c 11 b6 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm14
  b0663d:	00 
  b0663e:	c5 fc 11 96 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm2
  b06645:	00 
  b06646:	62 61 7c 28 11 4e 0b 	vmovups YMMWORD PTR [rsi+0x160],ymm25
  b0664d:	c5 fc 11 a6 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm4
  b06654:	00 
  b06655:	62 e1 7c 28 11 76 0d 	vmovups YMMWORD PTR [rsi+0x1a0],ymm22
  b0665c:	c5 7c 11 a6 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm12
  b06663:	00 
  b06664:	62 e1 7c 28 11 66 0f 	vmovups YMMWORD PTR [rsi+0x1e0],ymm20
  b0666b:	c5 7c 11 86 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm8
  b06672:	00 
  b06673:	62 61 7c 28 11 56 11 	vmovups YMMWORD PTR [rsi+0x220],ymm26
  b0667a:	c5 fc 11 9e 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm3
  b06681:	00 
  b06682:	62 e1 7c 28 11 6e 13 	vmovups YMMWORD PTR [rsi+0x260],ymm21
  b06689:	c5 fc 11 be 80 02 00 	vmovups YMMWORD PTR [rsi+0x280],ymm7
  b06690:	00 
  b06691:	62 e1 7c 28 11 56 15 	vmovups YMMWORD PTR [rsi+0x2a0],ymm18
  b06698:	c5 7c 11 96 c0 02 00 	vmovups YMMWORD PTR [rsi+0x2c0],ymm10
  b0669f:	00 
  b066a0:	c5 7c 11 8e e0 02 00 	vmovups YMMWORD PTR [rsi+0x2e0],ymm9
  b066a7:	00 
  b066a8:	48 89 ec             	mov    rsp,rbp
  b066ab:	5d                   	pop    rbp
  b066ac:	c5 f8 77             	vzeroupper
  b066af:	c3                   	ret
  b066b0:	cc                   	int3
  b066b1:	cc                   	int3
  b066b2:	cc                   	int3
  b066b3:	cc                   	int3
  b066b4:	cc                   	int3
  b066b5:	cc                   	int3
  b066b6:	cc                   	int3
  b066b7:	cc                   	int3
  b066b8:	cc                   	int3
  b066b9:	cc                   	int3
  b066ba:	cc                   	int3
  b066bb:	cc                   	int3
  b066bc:	cc                   	int3
  b066bd:	cc                   	int3
  b066be:	cc                   	int3
  b066bf:	cc                   	int3
