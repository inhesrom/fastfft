
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b08900 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b08900:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  b08904:	c5 f8 10 4f 20       	vmovups xmm1,XMMWORD PTR [rdi+0x20]
  b08909:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  b0890e:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  b08914:	c5 fc 10 5f 60       	vmovups ymm3,YMMWORD PTR [rdi+0x60]
  b08919:	c5 f8 10 af 80 00 00 	vmovups xmm5,XMMWORD PTR [rdi+0x80]
  b08920:	00 
  b08921:	c5 e4 c6 e5 88       	vshufps ymm4,ymm3,ymm5,0x88
  b08926:	c4 e3 fd 01 f4 d8    	vpermpd ymm6,ymm4,0xd8
  b0892c:	c5 ec 5c fe          	vsubps ymm7,ymm2,ymm6
  b08930:	c5 7c 10 87 90 00 00 	vmovups ymm8,YMMWORD PTR [rdi+0x90]
  b08937:	00 
  b08938:	c5 78 10 8f b0 00 00 	vmovups xmm9,XMMWORD PTR [rdi+0xb0]
  b0893f:	00 
  b08940:	c4 c1 3c c6 e1 dd    	vshufps ymm4,ymm8,ymm9,0xdd
  b08946:	c4 63 fd 01 d4 d8    	vpermpd ymm10,ymm4,0xd8
  b0894c:	c5 7c 10 5f 30       	vmovups ymm11,YMMWORD PTR [rdi+0x30]
  b08951:	c5 78 10 67 50       	vmovups xmm12,XMMWORD PTR [rdi+0x50]
  b08956:	c4 c1 24 c6 e4 dd    	vshufps ymm4,ymm11,ymm12,0xdd
  b0895c:	c4 63 fd 01 ec d8    	vpermpd ymm13,ymm4,0xd8
  b08962:	c4 41 2c 5c f5       	vsubps ymm14,ymm10,ymm13
  b08967:	c4 c1 44 5c e6       	vsubps ymm4,ymm7,ymm14
  b0896c:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b08971:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b08977:	c5 e4 c6 cd dd       	vshufps ymm1,ymm3,ymm5,0xdd
  b0897c:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  b08982:	c5 fc 5c d9          	vsubps ymm3,ymm0,ymm1
  b08986:	c4 c1 24 c6 ec 88    	vshufps ymm5,ymm11,ymm12,0x88
  b0898c:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  b08992:	c4 41 3c c6 c1 88    	vshufps ymm8,ymm8,ymm9,0x88
  b08998:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b0899e:	c4 41 54 5c c8       	vsubps ymm9,ymm5,ymm8
  b089a3:	c4 41 64 5c d9       	vsubps ymm11,ymm3,ymm9
  b089a8:	c5 ec 58 d6          	vaddps ymm2,ymm2,ymm6
  b089ac:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  b089b0:	c5 6c 5c c5          	vsubps ymm8,ymm2,ymm5
  b089b4:	c5 fc 58 c1          	vaddps ymm0,ymm0,ymm1
  b089b8:	c4 c1 14 58 ca       	vaddps ymm1,ymm13,ymm10
  b089bd:	c5 fc 5c f1          	vsubps ymm6,ymm0,ymm1
  b089c1:	c5 8c 58 ff          	vaddps ymm7,ymm14,ymm7
  b089c5:	c5 b4 58 db          	vaddps ymm3,ymm9,ymm3
  b089c9:	c5 6c 58 cd          	vaddps ymm9,ymm2,ymm5
  b089cd:	c5 fc 58 c1          	vaddps ymm0,ymm0,ymm1
  b089d1:	c5 f8 28 c8          	vmovaps xmm1,xmm0
  b089d5:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b089db:	c5 f8 28 d3          	vmovaps xmm2,xmm3
  b089df:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b089e5:	c5 f8 28 ee          	vmovaps xmm5,xmm6
  b089e9:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  b089ef:	c5 7d 14 d6          	vunpcklpd ymm10,ymm0,ymm6
  b089f3:	c5 78 29 d8          	vmovaps xmm0,xmm11
  b089f7:	c4 63 7d 19 de 01    	vextractf128 xmm6,ymm11,0x1
  b089fd:	c5 e5 14 de          	vunpcklpd ymm3,ymm3,ymm6
  b08a01:	c5 f5 15 f5          	vunpckhpd ymm6,ymm1,ymm5
  b08a05:	c5 f5 14 cd          	vunpcklpd ymm1,ymm1,ymm5
  b08a09:	c5 6d 15 d8          	vunpckhpd ymm11,ymm2,ymm0
  b08a0d:	c5 ed 14 d0          	vunpcklpd ymm2,ymm2,ymm0
  b08a11:	c5 f4 c6 c2 88       	vshufps ymm0,ymm1,ymm2,0x88
  b08a16:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b08a1b:	c5 f4 c6 ca dd       	vshufps ymm1,ymm1,ymm2,0xdd
  b08a20:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  b08a25:	c4 c1 4c c6 d3 88    	vshufps ymm2,ymm6,ymm11,0x88
  b08a2b:	c5 ec c6 ea d8       	vshufps ymm5,ymm2,ymm2,0xd8
  b08a30:	c4 c1 4c c6 d3 dd    	vshufps ymm2,ymm6,ymm11,0xdd
  b08a36:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b08a3b:	c5 ac c6 f3 88       	vshufps ymm6,ymm10,ymm3,0x88
  b08a40:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  b08a45:	c5 ac c6 db dd       	vshufps ymm3,ymm10,ymm3,0xdd
  b08a4a:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b08a4f:	c4 41 78 28 d1       	vmovaps xmm10,xmm9
  b08a54:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  b08a5a:	c5 78 28 df          	vmovaps xmm11,xmm7
  b08a5e:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  b08a64:	c4 41 78 28 e0       	vmovaps xmm12,xmm8
  b08a69:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  b08a6f:	c4 41 35 14 c0       	vunpcklpd ymm8,ymm9,ymm8
  b08a74:	c5 78 28 cc          	vmovaps xmm9,xmm4
  b08a78:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  b08a7e:	c5 c5 14 fc          	vunpcklpd ymm7,ymm7,ymm4
  b08a82:	c4 41 2d 15 ec       	vunpckhpd ymm13,ymm10,ymm12
  b08a87:	c4 41 2d 14 d4       	vunpcklpd ymm10,ymm10,ymm12
  b08a8c:	c4 41 25 15 e1       	vunpckhpd ymm12,ymm11,ymm9
  b08a91:	c4 41 25 14 c9       	vunpcklpd ymm9,ymm11,ymm9
  b08a96:	c4 c1 2c c6 e1 88    	vshufps ymm4,ymm10,ymm9,0x88
  b08a9c:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b08aa1:	c4 41 2c c6 c9 dd    	vshufps ymm9,ymm10,ymm9,0xdd
  b08aa7:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  b08aad:	c4 41 14 c6 d4 88    	vshufps ymm10,ymm13,ymm12,0x88
  b08ab3:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  b08ab9:	c4 41 14 c6 dc dd    	vshufps ymm11,ymm13,ymm12,0xdd
  b08abf:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  b08ac5:	c5 3c c6 e7 88       	vshufps ymm12,ymm8,ymm7,0x88
  b08aca:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  b08ad0:	c5 bc c6 ff dd       	vshufps ymm7,ymm8,ymm7,0xdd
  b08ad5:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b08ada:	c5 7c 10 42 40       	vmovups ymm8,YMMWORD PTR [rdx+0x40]
  b08adf:	c5 7c 10 6a 60       	vmovups ymm13,YMMWORD PTR [rdx+0x60]
  b08ae4:	c5 7c 10 b2 80 00 00 	vmovups ymm14,YMMWORD PTR [rdx+0x80]
  b08aeb:	00 
  b08aec:	c5 7c 10 ba a0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xa0]
  b08af3:	00 
  b08af4:	62 e1 7c 28 10 42 06 	vmovups ymm16,YMMWORD PTR [rdx+0xc0]
  b08afb:	62 e1 7c 28 10 4a 07 	vmovups ymm17,YMMWORD PTR [rdx+0xe0]
  b08b02:	62 e1 7c 28 10 52 08 	vmovups ymm18,YMMWORD PTR [rdx+0x100]
  b08b09:	62 e1 7c 28 10 5a 09 	vmovups ymm19,YMMWORD PTR [rdx+0x120]
  b08b10:	62 e1 7c 28 10 62 0a 	vmovups ymm20,YMMWORD PTR [rdx+0x140]
  b08b17:	62 e1 7c 28 10 6a 0b 	vmovups ymm21,YMMWORD PTR [rdx+0x160]
  b08b1e:	62 c1 54 28 59 f6    	vmulps ymm22,ymm5,ymm14
  b08b24:	62 c2 2d 28 bc f7    	vfnmadd231ps ymm22,ymm10,ymm15
  b08b2a:	62 a1 4c 28 59 fa    	vmulps ymm23,ymm6,ymm18
  b08b30:	62 a2 1d 28 bc fb    	vfnmadd231ps ymm23,ymm12,ymm19
  b08b36:	62 21 4c 20 58 c7    	vaddps ymm24,ymm22,ymm23
  b08b3c:	62 01 7c 28 58 c8    	vaddps ymm25,ymm0,ymm24
  b08b42:	62 21 6c 28 59 d0    	vmulps ymm26,ymm2,ymm16
  b08b48:	62 22 25 28 bc d1    	vfnmadd231ps ymm26,ymm11,ymm17
  b08b4e:	62 21 64 28 59 dc    	vmulps ymm27,ymm3,ymm20
  b08b54:	62 22 45 28 bc dd    	vfnmadd231ps ymm27,ymm7,ymm21
  b08b5a:	62 41 74 28 59 e0    	vmulps ymm28,ymm1,ymm8
  b08b60:	62 42 35 28 bc e5    	vfnmadd231ps ymm28,ymm9,ymm13
  b08b66:	62 01 24 20 58 ec    	vaddps ymm29,ymm27,ymm28
  b08b6c:	62 01 2c 20 58 f5    	vaddps ymm30,ymm26,ymm29
  b08b72:	c4 41 2c 59 d6       	vmulps ymm10,ymm10,ymm14
  b08b77:	c4 42 55 b8 d7       	vfmadd231ps ymm10,ymm5,ymm15
  b08b7c:	62 31 1c 28 59 e2    	vmulps ymm12,ymm12,ymm18
  b08b82:	62 32 4d 28 b8 e3    	vfmadd231ps ymm12,ymm6,ymm19
  b08b88:	c4 c1 2c 58 f4       	vaddps ymm6,ymm10,ymm12
  b08b8d:	c5 cc 58 ec          	vaddps ymm5,ymm6,ymm4
  b08b91:	62 31 24 28 59 d8    	vmulps ymm11,ymm11,ymm16
  b08b97:	62 32 6d 28 b8 d9    	vfmadd231ps ymm11,ymm2,ymm17
  b08b9d:	62 b1 44 28 59 d4    	vmulps ymm2,ymm7,ymm20
  b08ba3:	62 b2 65 28 b8 d5    	vfmadd231ps ymm2,ymm3,ymm21
  b08ba9:	c4 c1 34 59 d8       	vmulps ymm3,ymm9,ymm8
  b08bae:	c4 c2 75 b8 dd       	vfmadd231ps ymm3,ymm1,ymm13
  b08bb3:	c5 ec 58 cb          	vaddps ymm1,ymm2,ymm3
  b08bb7:	c4 e2 7d 18 3d a0 c8 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff56c8a0]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b08bbe:	56 ff 
  b08bc0:	c5 24 58 c1          	vaddps ymm8,ymm11,ymm1
  b08bc4:	62 62 45 28 ac c0    	vfnmadd213ps ymm24,ymm7,ymm0
  b08bca:	c4 e2 7d 18 05 01 c7 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff56c701]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b08bd1:	56 ff 
  b08bd3:	c4 41 2c 5c cc       	vsubps ymm9,ymm10,ymm12
  b08bd8:	c5 34 59 c8          	vmulps ymm9,ymm9,ymm0
  b08bdc:	62 51 3c 20 58 d1    	vaddps ymm10,ymm24,ymm9
  b08be2:	62 02 45 28 bc d5    	vfnmadd231ps ymm26,ymm7,ymm29
  b08be8:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  b08bec:	c5 ec 59 d0          	vmulps ymm2,ymm2,ymm0
  b08bf0:	62 f1 2c 20 58 da    	vaddps ymm3,ymm26,ymm2
  b08bf6:	c5 2c 5c e3          	vsubps ymm12,ymm10,ymm3
  b08bfa:	c4 e2 45 ac f4       	vfnmadd213ps ymm6,ymm7,ymm4
  b08bff:	62 b1 4c 20 5c e7    	vsubps ymm4,ymm22,ymm23
  b08c05:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  b08c09:	c5 4c 5c ec          	vsubps ymm13,ymm6,ymm4
  b08c0d:	c4 62 75 bc df       	vfnmadd231ps ymm11,ymm1,ymm7
  b08c12:	62 91 24 20 5c cc    	vsubps ymm1,ymm27,ymm28
  b08c18:	c5 f4 59 c0          	vmulps ymm0,ymm1,ymm0
  b08c1c:	c5 a4 5c c8          	vsubps ymm1,ymm11,ymm0
  b08c20:	62 d1 3c 20 5c f9    	vsubps ymm7,ymm24,ymm9
  b08c26:	62 f1 2c 20 5c d2    	vsubps ymm2,ymm26,ymm2
  b08c2c:	c5 44 58 ca          	vaddps ymm9,ymm7,ymm2
  b08c30:	c5 dc 58 e6          	vaddps ymm4,ymm4,ymm6
  b08c34:	c5 a4 58 c0          	vaddps ymm0,ymm11,ymm0
  b08c38:	62 91 34 20 5c f6    	vsubps ymm6,ymm25,ymm30
  b08c3e:	c5 ac 58 db          	vaddps ymm3,ymm10,ymm3
  b08c42:	c5 c4 5c d2          	vsubps ymm2,ymm7,ymm2
  b08c46:	62 91 34 20 58 fe    	vaddps ymm7,ymm25,ymm30
  b08c4c:	c5 38 58 d5          	vaddps xmm10,xmm8,xmm5
  b08c50:	c5 7c 28 1d 88 e5 56 	vmovaps ymm11,YMMWORD PTR [rip+0xffffffffff56e588]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b08c57:	ff 
  b08c58:	62 72 25 28 7f d7    	vpermt2ps ymm10,ymm11,ymm7
  b08c5e:	c5 7c 11 16          	vmovups YMMWORD PTR [rsi],ymm10
  b08c62:	c5 90 5c f9          	vsubps xmm7,xmm13,xmm1
  b08c66:	62 d2 25 28 7f fc    	vpermt2ps ymm7,ymm11,ymm12
  b08c6c:	c5 fc 11 7e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm7
  b08c71:	c5 d8 58 f8          	vaddps xmm7,xmm4,xmm0
  b08c75:	62 d2 25 28 7f f9    	vpermt2ps ymm7,ymm11,ymm9
  b08c7b:	c5 fc 11 7e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm7
  b08c80:	c4 c1 50 5c e8       	vsubps xmm5,xmm5,xmm8
  b08c85:	62 f2 25 28 7f ee    	vpermt2ps ymm5,ymm11,ymm6
  b08c8b:	c5 fc 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm5
  b08c90:	c5 90 58 c9          	vaddps xmm1,xmm13,xmm1
  b08c94:	62 f2 25 28 7f cb    	vpermt2ps ymm1,ymm11,ymm3
  b08c9a:	c5 fc 11 8e 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm1
  b08ca1:	00 
  b08ca2:	c5 d8 5c c0          	vsubps xmm0,xmm4,xmm0
  b08ca6:	62 f2 25 28 7f c2    	vpermt2ps ymm0,ymm11,ymm2
  b08cac:	c5 fc 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm0
  b08cb3:	00 
  b08cb4:	c5 f8 77             	vzeroupper
  b08cb7:	c3                   	ret
