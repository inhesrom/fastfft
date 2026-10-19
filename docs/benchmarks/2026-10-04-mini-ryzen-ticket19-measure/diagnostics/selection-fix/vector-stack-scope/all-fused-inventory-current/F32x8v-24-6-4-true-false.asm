
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ab4880 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ab4880:	c5 f8 10 47 50       	vmovups xmm0,XMMWORD PTR [rdi+0x50]
  ab4885:	c5 f8 10 4f 40       	vmovups xmm1,XMMWORD PTR [rdi+0x40]
  ab488a:	c5 f0 c6 d0 dd       	vshufps xmm2,xmm1,xmm0,0xdd
  ab488f:	c5 f8 10 9f 90 00 00 	vmovups xmm3,XMMWORD PTR [rdi+0x90]
  ab4896:	00 
  ab4897:	c5 f8 10 a7 80 00 00 	vmovups xmm4,XMMWORD PTR [rdi+0x80]
  ab489e:	00 
  ab489f:	c5 d8 c6 eb dd       	vshufps xmm5,xmm4,xmm3,0xdd
  ab48a4:	c5 ec 5c f5          	vsubps ymm6,ymm2,ymm5
  ab48a8:	c4 e2 7d 18 3d 23 0a 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff5c0a23]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ab48af:	5c ff 
  ab48b1:	c5 cc 59 f7          	vmulps ymm6,ymm6,ymm7
  ab48b5:	c5 f0 c6 c8 88       	vshufps xmm1,xmm1,xmm0,0x88
  ab48ba:	c5 d8 c6 db 88       	vshufps xmm3,xmm4,xmm3,0x88
  ab48bf:	c5 f4 58 e3          	vaddps ymm4,ymm1,ymm3
  ab48c3:	c5 78 10 07          	vmovups xmm8,XMMWORD PTR [rdi]
  ab48c7:	c5 78 10 4f 10       	vmovups xmm9,XMMWORD PTR [rdi+0x10]
  ab48cc:	c5 78 10 57 20       	vmovups xmm10,XMMWORD PTR [rdi+0x20]
  ab48d1:	c5 78 10 5f 30       	vmovups xmm11,XMMWORD PTR [rdi+0x30]
  ab48d6:	c4 41 38 c6 e1 88    	vshufps xmm12,xmm8,xmm9,0x88
  ab48dc:	c4 62 7d 18 2d 7b 0b 	vbroadcastss ymm13,DWORD PTR [rip+0xffffffffff5c0b7b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ab48e3:	5c ff 
  ab48e5:	c4 41 7c 28 f5       	vmovaps ymm14,ymm13
  ab48ea:	c4 42 5d ac f4       	vfnmadd213ps ymm14,ymm4,ymm12
  ab48ef:	c5 8c 58 c6          	vaddps ymm0,ymm14,ymm6
  ab48f3:	c5 78 10 bf b0 00 00 	vmovups xmm15,XMMWORD PTR [rdi+0xb0]
  ab48fa:	00 
  ab48fb:	62 e1 7c 08 10 47 0a 	vmovups xmm16,XMMWORD PTR [rdi+0xa0]
  ab4902:	62 c1 7c 00 c6 cf dd 	vshufps xmm17,xmm16,xmm15,0xdd
  ab4909:	62 c1 2c 08 c6 d3 dd 	vshufps xmm18,xmm10,xmm11,0xdd
  ab4910:	62 a1 74 20 5c da    	vsubps ymm19,ymm17,ymm18
  ab4916:	62 e1 64 20 59 df    	vmulps ymm19,ymm19,ymm7
  ab491c:	62 51 7c 00 c6 ff 88 	vshufps xmm15,xmm16,xmm15,0x88
  ab4923:	c4 41 28 c6 d3 88    	vshufps xmm10,xmm10,xmm11,0x88
  ab4929:	c4 41 04 58 da       	vaddps ymm11,ymm15,ymm10
  ab492e:	62 e1 7c 08 10 47 07 	vmovups xmm16,XMMWORD PTR [rdi+0x70]
  ab4935:	62 e1 7c 08 10 67 06 	vmovups xmm20,XMMWORD PTR [rdi+0x60]
  ab493c:	62 a1 5c 00 c6 e8 88 	vshufps xmm21,xmm20,xmm16,0x88
  ab4943:	62 c1 7c 28 28 f5    	vmovaps ymm22,ymm13
  ab4949:	62 a2 25 28 ac f5    	vfnmadd213ps ymm22,ymm11,ymm21
  ab494f:	62 a1 64 20 58 fe    	vaddps ymm23,ymm19,ymm22
  ab4955:	c5 ec 58 d5          	vaddps ymm2,ymm2,ymm5
  ab4959:	c4 c1 38 c6 e9 dd    	vshufps xmm5,xmm8,xmm9,0xdd
  ab495f:	c4 41 7c 28 c5       	vmovaps ymm8,ymm13
  ab4964:	c4 62 6d ac c5       	vfnmadd213ps ymm8,ymm2,ymm5
  ab4969:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  ab496d:	c5 f4 59 cf          	vmulps ymm1,ymm1,ymm7
  ab4971:	c5 bc 5c d9          	vsubps ymm3,ymm8,ymm1
  ab4975:	62 31 74 20 58 ca    	vaddps ymm9,ymm17,ymm18
  ab497b:	62 a1 5c 00 c6 c0 dd 	vshufps xmm16,xmm20,xmm16,0xdd
  ab4982:	62 32 35 28 ac e8    	vfnmadd213ps ymm13,ymm9,ymm16
  ab4988:	c4 41 04 5c d2       	vsubps ymm10,ymm15,ymm10
  ab498d:	c5 ac 59 ff          	vmulps ymm7,ymm10,ymm7
  ab4991:	c5 14 5c d7          	vsubps ymm10,ymm13,ymm7
  ab4995:	c5 8c 5c f6          	vsubps ymm6,ymm14,ymm6
  ab4999:	62 31 4c 20 5c f3    	vsubps ymm14,ymm22,ymm19
  ab499f:	c5 bc 58 c9          	vaddps ymm1,ymm8,ymm1
  ab49a3:	c5 94 58 ff          	vaddps ymm7,ymm13,ymm7
  ab49a7:	c5 9c 58 e4          	vaddps ymm4,ymm12,ymm4
  ab49ab:	62 51 54 20 58 c3    	vaddps ymm8,ymm21,ymm11
  ab49b1:	c5 d4 58 d2          	vaddps ymm2,ymm5,ymm2
  ab49b5:	62 d1 7c 20 58 e9    	vaddps ymm5,ymm16,ymm9
  ab49bb:	c4 41 4c 5c ce       	vsubps ymm9,ymm6,ymm14
  ab49c0:	c5 74 5c df          	vsubps ymm11,ymm1,ymm7
  ab49c4:	c5 3c 58 e4          	vaddps ymm12,ymm8,ymm4
  ab49c8:	c5 6c 58 ed          	vaddps ymm13,ymm2,ymm5
  ab49cc:	c5 f0 58 cf          	vaddps xmm1,xmm1,xmm7
  ab49d0:	c4 e3 15 18 c9 01    	vinsertf128 ymm1,ymm13,xmm1,0x1
  ab49d6:	c4 c1 60 5c fa       	vsubps xmm7,xmm3,xmm10
  ab49db:	c4 e3 25 18 ff 01    	vinsertf128 ymm7,ymm11,xmm7,0x1
  ab49e1:	c5 a8 58 db          	vaddps xmm3,xmm10,xmm3
  ab49e5:	c5 75 14 d3          	vunpcklpd ymm10,ymm1,ymm3
  ab49e9:	c5 e8 5c d5          	vsubps xmm2,xmm2,xmm5
  ab49ed:	c5 c5 14 ea          	vunpcklpd ymm5,ymm7,ymm2
  ab49f1:	c5 2c c6 dd 88       	vshufps ymm11,ymm10,ymm5,0x88
  ab49f6:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  ab49fc:	c5 ac c6 ed dd       	vshufps ymm5,ymm10,ymm5,0xdd
  ab4a01:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ab4a06:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  ab4a0a:	c5 c5 15 d2          	vunpckhpd ymm2,ymm7,ymm2
  ab4a0e:	c5 f4 c6 da 88       	vshufps ymm3,ymm1,ymm2,0x88
  ab4a13:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  ab4a18:	c5 f4 c6 ca dd       	vshufps ymm1,ymm1,ymm2,0xdd
  ab4a1d:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  ab4a22:	c5 88 58 d6          	vaddps xmm2,xmm14,xmm6
  ab4a26:	c4 e3 1d 18 d2 01    	vinsertf128 ymm2,ymm12,xmm2,0x1
  ab4a2c:	62 b1 7c 08 5c f7    	vsubps xmm6,xmm0,xmm23
  ab4a32:	c4 e3 35 18 f6 01    	vinsertf128 ymm6,ymm9,xmm6,0x1
  ab4a38:	62 b1 7c 08 58 c7    	vaddps xmm0,xmm0,xmm23
  ab4a3e:	c5 ed 14 f8          	vunpcklpd ymm7,ymm2,ymm0
  ab4a42:	c4 c1 58 5c e0       	vsubps xmm4,xmm4,xmm8
  ab4a47:	c5 4d 14 c4          	vunpcklpd ymm8,ymm6,ymm4
  ab4a4b:	c4 41 44 c6 c8 88    	vshufps ymm9,ymm7,ymm8,0x88
  ab4a51:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  ab4a57:	c4 c1 44 c6 f8 dd    	vshufps ymm7,ymm7,ymm8,0xdd
  ab4a5d:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  ab4a62:	c5 ed 15 c0          	vunpckhpd ymm0,ymm2,ymm0
  ab4a66:	c5 cd 15 d4          	vunpckhpd ymm2,ymm6,ymm4
  ab4a6a:	c5 fc c6 e2 88       	vshufps ymm4,ymm0,ymm2,0x88
  ab4a6f:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ab4a74:	c5 fc c6 c2 dd       	vshufps ymm0,ymm0,ymm2,0xdd
  ab4a79:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  ab4a7e:	c5 fc 10 52 40       	vmovups ymm2,YMMWORD PTR [rdx+0x40]
  ab4a83:	c5 fc 10 72 60       	vmovups ymm6,YMMWORD PTR [rdx+0x60]
  ab4a88:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  ab4a8f:	00 
  ab4a90:	c5 7c 10 92 a0 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0xa0]
  ab4a97:	00 
  ab4a98:	c5 7c 10 a2 c0 00 00 	vmovups ymm12,YMMWORD PTR [rdx+0xc0]
  ab4a9f:	00 
  ab4aa0:	c5 7c 10 aa e0 00 00 	vmovups ymm13,YMMWORD PTR [rdx+0xe0]
  ab4aa7:	00 
  ab4aa8:	c5 3c 59 f3          	vmulps ymm14,ymm8,ymm3
  ab4aac:	c4 42 5d bc f2       	vfnmadd231ps ymm14,ymm4,ymm10
  ab4ab1:	c4 41 24 58 fe       	vaddps ymm15,ymm11,ymm14
  ab4ab6:	62 e1 54 28 59 c2    	vmulps ymm16,ymm5,ymm2
  ab4abc:	62 e2 45 28 bc c6    	vfnmadd231ps ymm16,ymm7,ymm6
  ab4ac2:	62 c1 74 28 59 cc    	vmulps ymm17,ymm1,ymm12
  ab4ac8:	62 c2 7d 28 bc cd    	vfnmadd231ps ymm17,ymm0,ymm13
  ab4ace:	62 a1 7c 20 58 d1    	vaddps ymm18,ymm16,ymm17
  ab4ad4:	c5 bc 59 e4          	vmulps ymm4,ymm8,ymm4
  ab4ad8:	c4 c2 65 b8 e2       	vfmadd231ps ymm4,ymm3,ymm10
  ab4add:	c5 b4 58 dc          	vaddps ymm3,ymm9,ymm4
  ab4ae1:	c5 c4 59 d2          	vmulps ymm2,ymm7,ymm2
  ab4ae5:	c4 e2 55 b8 d6       	vfmadd231ps ymm2,ymm5,ymm6
  ab4aea:	c5 9c 59 c0          	vmulps ymm0,ymm12,ymm0
  ab4aee:	c4 c2 75 b8 c5       	vfmadd231ps ymm0,ymm1,ymm13
  ab4af3:	c5 ec 58 c8          	vaddps ymm1,ymm2,ymm0
  ab4af7:	c4 c1 24 5c ee       	vsubps ymm5,ymm11,ymm14
  ab4afc:	c5 ec 5c c0          	vsubps ymm0,ymm2,ymm0
  ab4b00:	c5 d4 58 d0          	vaddps ymm2,ymm5,ymm0
  ab4b04:	c5 b4 5c e4          	vsubps ymm4,ymm9,ymm4
  ab4b08:	62 b1 74 20 5c f0    	vsubps ymm6,ymm17,ymm16
  ab4b0e:	c5 dc 58 fe          	vaddps ymm7,ymm4,ymm6
  ab4b12:	62 31 04 28 5c c2    	vsubps ymm8,ymm15,ymm18
  ab4b18:	c5 64 5c c9          	vsubps ymm9,ymm3,ymm1
  ab4b1c:	c5 d4 5c c0          	vsubps ymm0,ymm5,ymm0
  ab4b20:	c5 dc 5c e6          	vsubps ymm4,ymm4,ymm6
  ab4b24:	c5 e4 58 c9          	vaddps ymm1,ymm3,ymm1
  ab4b28:	62 b1 04 28 58 da    	vaddps ymm3,ymm15,ymm18
  ab4b2e:	c5 fc 28 2d aa 26 5c 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff5c26aa]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  ab4b35:	ff 
  ab4b36:	c4 e3 7d 19 ce 01    	vextractf128 xmm6,ymm1,0x1
  ab4b3c:	62 f2 55 28 7f cb    	vpermt2ps ymm1,ymm5,ymm3
  ab4b42:	c5 fc 11 0e          	vmovups YMMWORD PTR [rsi],ymm1
  ab4b46:	c4 e3 7d 19 d9 01    	vextractf128 xmm1,ymm3,0x1
  ab4b4c:	c5 c8 14 c9          	vunpcklps xmm1,xmm6,xmm1
  ab4b50:	c5 f8 11 4e 20       	vmovups XMMWORD PTR [rsi+0x20],xmm1
  ab4b55:	c4 e3 7d 19 f9 01    	vextractf128 xmm1,ymm7,0x1
  ab4b5b:	62 f2 55 28 7f fa    	vpermt2ps ymm7,ymm5,ymm2
  ab4b61:	c5 fc 11 7e 30       	vmovups YMMWORD PTR [rsi+0x30],ymm7
  ab4b66:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  ab4b6c:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  ab4b70:	c5 f8 11 4e 50       	vmovups XMMWORD PTR [rsi+0x50],xmm1
  ab4b75:	c4 63 7d 19 c9 01    	vextractf128 xmm1,ymm9,0x1
  ab4b7b:	62 52 55 28 7f c8    	vpermt2ps ymm9,ymm5,ymm8
  ab4b81:	c5 7c 11 4e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm9
  ab4b86:	c4 63 7d 19 c2 01    	vextractf128 xmm2,ymm8,0x1
  ab4b8c:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  ab4b90:	c5 f8 11 8e 80 00 00 	vmovups XMMWORD PTR [rsi+0x80],xmm1
  ab4b97:	00 
  ab4b98:	62 f2 5d 28 77 e8    	vpermi2ps ymm5,ymm4,ymm0
  ab4b9e:	c5 fc 11 ae 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm5
  ab4ba5:	00 
  ab4ba6:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ab4bac:	c4 e3 7d 19 e1 01    	vextractf128 xmm1,ymm4,0x1
  ab4bb2:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  ab4bb6:	c5 f8 11 86 b0 00 00 	vmovups XMMWORD PTR [rsi+0xb0],xmm0
  ab4bbd:	00 
  ab4bbe:	c5 f8 77             	vzeroupper
  ab4bc1:	c3                   	ret
