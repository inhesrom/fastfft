
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b22900 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b22900:	48 6b c2 78          	imul   rax,rdx,0x78
  b22904:	31 d2                	xor    edx,edx
  b22906:	62 e2 7d 28 18 1d c4 	vbroadcastss ymm19,DWORD PTR [rip+0xffffffffff5529c4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b2290d:	29 55 ff 
  b22910:	c4 e2 7d 18 0d 47 2b 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff552b47]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b22917:	55 ff 
  b22919:	c4 e2 7d 18 15 c6 2d 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff552dc6]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  b22920:	55 ff 
  b22922:	c4 e2 7d 18 1d 19 2d 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff552d19]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  b22929:	55 ff 
  b2292b:	c4 e2 7d 18 25 24 2e 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff552e24]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  b22932:	55 ff 
  b22934:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  b22938:	c4 e2 7d 18 35 5f 2a 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff552a5f]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  b2293f:	55 ff 
  b22941:	c5 fc 28 3d 77 59 55 	vmovaps ymm7,YMMWORD PTR [rip+0xffffffffff555977]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  b22948:	ff 
  b22949:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  b22950:	c5 7c 10 44 17 28    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x28]
  b22956:	c5 7b 10 4c 17 48    	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0x48]
  b2295c:	c4 41 3c c6 d1 88    	vshufps ymm10,ymm8,ymm9,0x88
  b22962:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  b22968:	c5 7c 10 5c 17 50    	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x50]
  b2296e:	c5 7b 10 64 17 70    	vmovsd xmm12,QWORD PTR [rdi+rdx*1+0x70]
  b22974:	c4 41 24 c6 ec 88    	vshufps ymm13,ymm11,ymm12,0x88
  b2297a:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  b22980:	c4 41 2c 5c f5       	vsubps ymm14,ymm10,ymm13
  b22985:	62 31 0c 28 59 f3    	vmulps ymm14,ymm14,ymm19
  b2298b:	c4 41 3c c6 c1 dd    	vshufps ymm8,ymm8,ymm9,0xdd
  b22991:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b22997:	c4 41 24 c6 cc dd    	vshufps ymm9,ymm11,ymm12,0xdd
  b2299d:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  b229a3:	c4 41 3c 58 d9       	vaddps ymm11,ymm8,ymm9
  b229a8:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  b229ad:	c5 7b 10 7c 17 20    	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x20]
  b229b3:	62 c1 1c 28 c6 c7 dd 	vshufps ymm16,ymm12,ymm15,0xdd
  b229ba:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b229c1:	62 e1 7c 28 28 c9    	vmovaps ymm17,ymm1
  b229c7:	62 a2 25 28 ac c8    	vfnmadd213ps ymm17,ymm11,ymm16
  b229cd:	62 a1 0c 28 58 d1    	vaddps ymm18,ymm14,ymm17
  b229d3:	c4 41 2c 58 d5       	vaddps ymm10,ymm10,ymm13
  b229d8:	c4 41 1c c6 e7 88    	vshufps ymm12,ymm12,ymm15,0x88
  b229de:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b229e4:	c5 7c 28 e9          	vmovaps ymm13,ymm1
  b229e8:	c4 42 2d ac ec       	vfnmadd213ps ymm13,ymm10,ymm12
  b229ed:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  b229f2:	62 31 3c 28 59 c3    	vmulps ymm8,ymm8,ymm19
  b229f8:	c4 41 14 5c c8       	vsubps ymm9,ymm13,ymm8
  b229fd:	62 51 74 20 5c f6    	vsubps ymm14,ymm17,ymm14
  b22a03:	c4 41 14 58 c0       	vaddps ymm8,ymm13,ymm8
  b22a08:	62 51 7c 20 58 eb    	vaddps ymm13,ymm16,ymm11
  b22a0e:	c4 41 1c 58 d2       	vaddps ymm10,ymm12,ymm10
  b22a13:	c4 41 78 28 da       	vmovaps xmm11,xmm10
  b22a18:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  b22a1e:	c4 41 78 28 e0       	vmovaps xmm12,xmm8
  b22a23:	c4 43 7d 19 c7 01    	vextractf128 xmm15,ymm8,0x1
  b22a29:	62 c1 7c 08 28 c1    	vmovaps xmm16,xmm9
  b22a2f:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  b22a35:	c4 41 2d 14 c9       	vunpcklpd ymm9,ymm10,ymm9
  b22a3a:	62 31 a5 28 15 d0    	vunpckhpd ymm10,ymm11,ymm16
  b22a40:	62 31 a5 28 14 d8    	vunpcklpd ymm11,ymm11,ymm16
  b22a46:	62 c1 fe 08 7e c0    	vmovq  xmm16,xmm8
  b22a4c:	c4 c1 1d 73 dc 08    	vpsrldq ymm12,ymm12,0x8
  b22a52:	c4 63 05 0c fd cc    	vblendps ymm15,ymm15,ymm5,0xcc
  b22a58:	62 31 24 28 c6 c0 88 	vshufps ymm8,ymm11,ymm16,0x88
  b22a5f:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  b22a65:	62 31 24 28 c6 d8 dd 	vshufps ymm11,ymm11,ymm16,0xdd
  b22a6c:	62 c1 24 28 c6 c3 d8 	vshufps ymm16,ymm11,ymm11,0xd8
  b22a73:	c4 41 2c c6 dc 88    	vshufps ymm11,ymm10,ymm12,0x88
  b22a79:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  b22a7f:	c4 41 2c c6 d4 dd    	vshufps ymm10,ymm10,ymm12,0xdd
  b22a85:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  b22a8b:	c4 41 34 c6 cf 88    	vshufps ymm9,ymm9,ymm15,0x88
  b22a91:	c4 41 34 c6 e1 d8    	vshufps ymm12,ymm9,ymm9,0xd8
  b22a97:	c4 41 78 28 cd       	vmovaps xmm9,xmm13
  b22a9c:	c4 43 7d 19 ed 01    	vextractf128 xmm13,ymm13,0x1
  b22aa2:	c4 41 78 28 fe       	vmovaps xmm15,xmm14
  b22aa7:	c4 63 7d 19 f0 01    	vextractf128 xmm0,ymm14,0x1
  b22aad:	62 a1 7c 08 28 ca    	vmovaps xmm17,xmm18
  b22ab3:	62 a3 7d 28 19 d2 01 	vextractf32x4 xmm18,ymm18,0x1
  b22aba:	62 31 95 28 14 ea    	vunpcklpd ymm13,ymm13,ymm18
  b22ac0:	62 a1 b5 28 15 d1    	vunpckhpd ymm18,ymm9,ymm17
  b22ac6:	62 a1 b5 28 14 c9    	vunpcklpd ymm17,ymm9,ymm17
  b22acc:	c4 41 7a 7e f6       	vmovq  xmm14,xmm14
  b22ad1:	c4 c1 05 73 df 08    	vpsrldq ymm15,ymm15,0x8
  b22ad7:	c4 e3 7d 0c c5 cc    	vblendps ymm0,ymm0,ymm5,0xcc
  b22add:	62 51 74 20 c6 ce 88 	vshufps ymm9,ymm17,ymm14,0x88
  b22ae4:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  b22aea:	62 51 74 20 c6 f6 dd 	vshufps ymm14,ymm17,ymm14,0xdd
  b22af1:	c4 41 0c c6 f6 d8    	vshufps ymm14,ymm14,ymm14,0xd8
  b22af7:	62 c1 6c 20 c6 cf 88 	vshufps ymm17,ymm18,ymm15,0x88
  b22afe:	62 a1 74 20 c6 c9 d8 	vshufps ymm17,ymm17,ymm17,0xd8
  b22b05:	62 51 6c 20 c6 ff dd 	vshufps ymm15,ymm18,ymm15,0xdd
  b22b0c:	c4 41 04 c6 ff d8    	vshufps ymm15,ymm15,ymm15,0xd8
  b22b12:	c5 94 c6 c0 88       	vshufps ymm0,ymm13,ymm0,0x88
  b22b17:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b22b1c:	c5 7c 10 69 40       	vmovups ymm13,YMMWORD PTR [rcx+0x40]
  b22b21:	62 e1 7c 28 10 51 03 	vmovups ymm18,YMMWORD PTR [rcx+0x60]
  b22b28:	62 e1 7c 28 10 61 04 	vmovups ymm20,YMMWORD PTR [rcx+0x80]
  b22b2f:	62 e1 7c 28 10 69 05 	vmovups ymm21,YMMWORD PTR [rcx+0xa0]
  b22b36:	62 e1 7c 28 10 71 06 	vmovups ymm22,YMMWORD PTR [rcx+0xc0]
  b22b3d:	62 e1 7c 28 10 79 07 	vmovups ymm23,YMMWORD PTR [rcx+0xe0]
  b22b44:	62 61 7c 28 10 41 08 	vmovups ymm24,YMMWORD PTR [rcx+0x100]
  b22b4b:	62 61 7c 28 10 49 09 	vmovups ymm25,YMMWORD PTR [rcx+0x120]
  b22b52:	62 41 7c 20 59 d5    	vmulps ymm26,ymm16,ymm13
  b22b58:	62 22 0d 28 bc d2    	vfnmadd231ps ymm26,ymm14,ymm18
  b22b5e:	62 01 1c 28 59 d8    	vmulps ymm27,ymm12,ymm24
  b22b64:	62 02 7d 28 bc d9    	vfnmadd231ps ymm27,ymm0,ymm25
  b22b6a:	62 01 2c 20 58 e3    	vaddps ymm28,ymm26,ymm27
  b22b70:	62 21 24 28 59 ec    	vmulps ymm29,ymm11,ymm20
  b22b76:	62 22 75 20 bc ed    	vfnmadd231ps ymm29,ymm17,ymm21
  b22b7c:	62 21 2c 28 59 f6    	vmulps ymm30,ymm10,ymm22
  b22b82:	62 22 05 28 bc f7    	vfnmadd231ps ymm30,ymm15,ymm23
  b22b88:	62 01 14 20 58 fe    	vaddps ymm31,ymm29,ymm30
  b22b8e:	c4 41 0c 59 ed       	vmulps ymm13,ymm14,ymm13
  b22b93:	62 32 7d 20 b8 ea    	vfmadd231ps ymm13,ymm16,ymm18
  b22b99:	62 91 7c 28 59 c0    	vmulps ymm0,ymm0,ymm24
  b22b9f:	62 92 1d 28 b8 c1    	vfmadd231ps ymm0,ymm12,ymm25
  b22ba5:	c5 14 58 e0          	vaddps ymm12,ymm13,ymm0
  b22ba9:	62 31 74 20 59 f4    	vmulps ymm14,ymm17,ymm20
  b22baf:	62 32 25 28 b8 f5    	vfmadd231ps ymm14,ymm11,ymm21
  b22bb5:	62 31 04 28 59 de    	vmulps ymm11,ymm15,ymm22
  b22bbb:	62 32 2d 28 b8 df    	vfmadd231ps ymm11,ymm10,ymm23
  b22bc1:	c4 41 0c 58 fb       	vaddps ymm15,ymm14,ymm11
  b22bc6:	c5 7c 28 d2          	vmovaps ymm10,ymm2
  b22bca:	62 52 1d 20 a8 d0    	vfmadd213ps ymm10,ymm28,ymm8
  b22bd0:	62 72 05 20 bc d3    	vfnmadd231ps ymm10,ymm31,ymm3
  b22bd6:	c5 94 5c c0          	vsubps ymm0,ymm13,ymm0
  b22bda:	c4 41 0c 5c eb       	vsubps ymm13,ymm14,ymm11
  b22bdf:	c5 14 59 dc          	vmulps ymm11,ymm13,ymm4
  b22be3:	c4 62 7d b8 de       	vfmadd231ps ymm11,ymm0,ymm6
  b22be8:	c5 7c 28 f2          	vmovaps ymm14,ymm2
  b22bec:	c4 42 1d a8 f1       	vfmadd213ps ymm14,ymm12,ymm9
  b22bf1:	c4 62 05 bc f3       	vfnmadd231ps ymm14,ymm15,ymm3
  b22bf6:	62 81 2c 20 5c c3    	vsubps ymm16,ymm26,ymm27
  b22bfc:	62 81 14 20 5c ce    	vsubps ymm17,ymm29,ymm30
  b22c02:	62 e1 74 20 59 d4    	vmulps ymm18,ymm17,ymm4
  b22c08:	62 e2 7d 20 b8 d6    	vfmadd231ps ymm18,ymm16,ymm6
  b22c0e:	62 a1 0c 28 5c e2    	vsubps ymm20,ymm14,ymm18
  b22c14:	62 e1 7c 28 28 eb    	vmovaps ymm21,ymm3
  b22c1a:	62 c2 1d 20 ac e8    	vfnmadd213ps ymm21,ymm28,ymm8
  b22c20:	62 e2 05 20 b8 ea    	vfmadd231ps ymm21,ymm31,ymm2
  b22c26:	c5 fc 59 c4          	vmulps ymm0,ymm0,ymm4
  b22c2a:	c4 c2 4d bc c5       	vfnmadd231ps ymm0,ymm6,ymm13
  b22c2f:	c5 7c 28 eb          	vmovaps ymm13,ymm3
  b22c33:	c4 42 1d ac e9       	vfnmadd213ps ymm13,ymm12,ymm9
  b22c38:	c4 62 05 b8 ea       	vfmadd231ps ymm13,ymm15,ymm2
  b22c3d:	62 e1 7c 20 59 c4    	vmulps ymm16,ymm16,ymm4
  b22c43:	62 a2 4d 28 bc c1    	vfnmadd231ps ymm16,ymm6,ymm17
  b22c49:	62 a1 14 28 5c c8    	vsubps ymm17,ymm13,ymm16
  b22c4f:	62 31 14 28 58 e8    	vaddps ymm13,ymm13,ymm16
  b22c55:	62 31 0c 28 58 f2    	vaddps ymm14,ymm14,ymm18
  b22c5b:	c4 41 1c 58 c9       	vaddps ymm9,ymm12,ymm9
  b22c60:	c4 41 34 58 cf       	vaddps ymm9,ymm9,ymm15
  b22c65:	62 11 3c 08 58 c4    	vaddps xmm8,xmm8,xmm28
  b22c6b:	62 11 3c 08 58 c7    	vaddps xmm8,xmm8,xmm31
  b22c71:	62 52 45 28 7f c1    	vpermt2ps ymm8,ymm7,ymm9
  b22c77:	c4 43 7d 19 c1 01    	vextractf128 xmm9,ymm8,0x1
  b22c7d:	c5 78 13 4c 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm9
  b22c83:	c5 78 11 04 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm8
  b22c88:	c4 41 28 58 c3       	vaddps xmm8,xmm10,xmm11
  b22c8d:	62 32 45 28 7f c4    	vpermt2ps ymm8,ymm7,ymm20
  b22c93:	c5 78 11 44 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm8
  b22c99:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  b22c9f:	c5 78 13 44 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm8
  b22ca5:	62 71 54 00 58 c0    	vaddps xmm8,xmm21,xmm0
  b22cab:	62 32 45 28 7f c1    	vpermt2ps ymm8,ymm7,ymm17
  b22cb1:	c5 78 11 44 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm8
  b22cb7:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  b22cbd:	c5 78 13 44 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm8
  b22cc3:	62 f1 54 00 5c c0    	vsubps xmm0,xmm21,xmm0
  b22cc9:	62 d2 45 28 7f c5    	vpermt2ps ymm0,ymm7,ymm13
  b22ccf:	c5 f8 11 44 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm0
  b22cd5:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b22cdb:	c5 f8 13 44 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm0
  b22ce1:	c4 c1 28 5c c3       	vsubps xmm0,xmm10,xmm11
  b22ce6:	62 d2 45 28 7f c6    	vpermt2ps ymm0,ymm7,ymm14
  b22cec:	c5 f8 11 44 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm0
  b22cf2:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b22cf8:	c5 f8 13 44 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm0
  b22cfe:	48 83 c2 78          	add    rdx,0x78
  b22d02:	48 39 d0             	cmp    rax,rdx
  b22d05:	0f 85 45 fc ff ff    	jne    b22950 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x50>
  b22d0b:	c5 f8 77             	vzeroupper
  b22d0e:	c3                   	ret
