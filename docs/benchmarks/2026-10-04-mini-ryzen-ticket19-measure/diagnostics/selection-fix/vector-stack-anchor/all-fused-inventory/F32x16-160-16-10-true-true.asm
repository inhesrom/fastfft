
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a6c800 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a6c800:	48 81 ec 08 03 00 00 	sub    rsp,0x308
  a6c807:	48 c1 e2 08          	shl    rdx,0x8
  a6c80b:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a6c80f:	31 d2                	xor    edx,edx
  a6c811:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a6c818:	0f 1f 84 00 00 00 00 
  a6c81f:	00 
  a6c820:	62 e1 7c 48 10 3c 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1]
  a6c827:	c5 f8 10 44 17 40    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x40]
  a6c82d:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a6c833:	62 e1 7c 48 28 1d 43 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff627e43]        # 94680 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21b30>
  a6c83a:	7e 62 ff 
  a6c83d:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a6c843:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a6c84a:	05 
  a6c84b:	62 f1 7c 48 28 15 6b 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff627e6b]        # 946c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21b70>
  a6c852:	7e 62 ff 
  a6c855:	62 e2 6d 48 7f f8    	vpermt2ps zmm23,zmm2,zmm0
  a6c85b:	62 e1 7c 48 10 ac 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x50]
  a6c862:	50 00 00 00 
  a6c866:	c5 f8 10 84 17 90 00 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x90]
  a6c86d:	00 00 
  a6c86f:	62 b1 7c 48 28 cd    	vmovaps zmm1,zmm21
  a6c875:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a6c87b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a6c882:	ff 
  a6c883:	62 e2 6d 48 7f e8    	vpermt2ps zmm21,zmm2,zmm0
  a6c889:	62 61 7c 48 10 8c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0xa0]
  a6c890:	a0 00 00 00 
  a6c894:	c5 f8 10 84 17 e0 00 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0xe0]
  a6c89b:	00 00 
  a6c89d:	62 11 7c 48 28 d1    	vmovaps zmm10,zmm25
  a6c8a3:	62 72 65 40 7f d0    	vpermt2ps zmm10,zmm19,zmm0
  a6c8a9:	62 62 6d 48 7f c8    	vpermt2ps zmm25,zmm2,zmm0
  a6c8af:	62 e1 7c 48 10 b4 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a6c8b6:	f0 00 00 00 
  a6c8ba:	c5 f8 10 84 17 30 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x130]
  a6c8c1:	00 00 
  a6c8c3:	62 b1 7c 48 28 ce    	vmovaps zmm1,zmm22
  a6c8c9:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a6c8cf:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a6c8d6:	fe 
  a6c8d7:	62 e2 6d 48 7f f0    	vpermt2ps zmm22,zmm2,zmm0
  a6c8dd:	62 e1 7c 48 10 64 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x140]
  a6c8e4:	05 
  a6c8e5:	c5 f8 10 84 17 80 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x180]
  a6c8ec:	00 00 
  a6c8ee:	62 a1 7c 48 28 d4    	vmovaps zmm18,zmm20
  a6c8f4:	62 e2 65 40 7f d0    	vpermt2ps zmm18,zmm19,zmm0
  a6c8fa:	62 e2 6d 48 7f e0    	vpermt2ps zmm20,zmm2,zmm0
  a6c900:	62 61 7c 48 10 84 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x190]
  a6c907:	90 01 00 00 
  a6c90b:	c5 f8 10 84 17 d0 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x1d0]
  a6c912:	00 00 
  a6c914:	62 11 7c 48 28 c8    	vmovaps zmm9,zmm24
  a6c91a:	62 72 65 40 7f c8    	vpermt2ps zmm9,zmm19,zmm0
  a6c920:	62 62 6d 48 7f c0    	vpermt2ps zmm24,zmm2,zmm0
  a6c926:	62 71 7c 48 10 9c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a6c92d:	e0 01 00 00 
  a6c931:	c5 f8 10 84 17 20 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x220]
  a6c938:	00 00 
  a6c93a:	62 51 7c 48 28 c3    	vmovaps zmm8,zmm11
  a6c940:	62 72 65 40 7f c0    	vpermt2ps zmm8,zmm19,zmm0
  a6c946:	62 72 6d 48 7f d8    	vpermt2ps zmm11,zmm2,zmm0
  a6c94c:	62 61 7c 48 10 94 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x230]
  a6c953:	30 02 00 00 
  a6c957:	c5 f8 10 84 17 70 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x270]
  a6c95e:	00 00 
  a6c960:	62 81 7c 48 28 ca    	vmovaps zmm17,zmm26
  a6c966:	62 e2 65 40 7f c8    	vpermt2ps zmm17,zmm19,zmm0
  a6c96c:	62 62 6d 48 7f d0    	vpermt2ps zmm26,zmm2,zmm0
  a6c972:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x280]
  a6c979:	0a 
  a6c97a:	c5 f8 10 84 17 c0 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x2c0]
  a6c981:	00 00 
  a6c983:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a6c989:	62 72 65 40 7f f0    	vpermt2ps zmm14,zmm19,zmm0
  a6c98f:	62 72 6d 48 7f e0    	vpermt2ps zmm12,zmm2,zmm0
  a6c995:	62 61 7c 48 10 9c 17 	vmovups zmm27,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a6c99c:	d0 02 00 00 
  a6c9a0:	c5 f8 10 84 17 10 03 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x310]
  a6c9a7:	00 00 
  a6c9a9:	62 11 7c 48 28 fb    	vmovaps zmm15,zmm27
  a6c9af:	62 72 65 40 7f f8    	vpermt2ps zmm15,zmm19,zmm0
  a6c9b5:	62 62 6d 48 7f d8    	vpermt2ps zmm27,zmm2,zmm0
  a6c9bb:	62 61 7c 48 10 b4 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1+0x320]
  a6c9c2:	20 03 00 00 
  a6c9c6:	c5 f8 10 8c 17 60 03 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x360]
  a6c9cd:	00 00 
  a6c9cf:	62 91 7c 48 28 ee    	vmovaps zmm5,zmm30
  a6c9d5:	62 f2 65 40 7f e9    	vpermt2ps zmm5,zmm19,zmm1
  a6c9db:	62 62 6d 48 7f f1    	vpermt2ps zmm30,zmm2,zmm1
  a6c9e1:	62 61 7c 48 10 a4 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x370]
  a6c9e8:	70 03 00 00 
  a6c9ec:	c5 f8 10 8c 17 b0 03 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x3b0]
  a6c9f3:	00 00 
  a6c9f5:	62 81 7c 48 28 c4    	vmovaps zmm16,zmm28
  a6c9fb:	62 e2 65 40 7f c1    	vpermt2ps zmm16,zmm19,zmm1
  a6ca01:	62 62 6d 48 7f e1    	vpermt2ps zmm28,zmm2,zmm1
  a6ca07:	62 71 7c 48 10 6c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x3c0]
  a6ca0e:	0f 
  a6ca0f:	c5 f8 10 8c 17 00 04 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x400]
  a6ca16:	00 00 
  a6ca18:	62 d1 7c 48 28 f5    	vmovaps zmm6,zmm13
  a6ca1e:	62 f2 65 40 7f f1    	vpermt2ps zmm6,zmm19,zmm1
  a6ca24:	62 72 6d 48 7f e9    	vpermt2ps zmm13,zmm2,zmm1
  a6ca2a:	62 61 7c 48 10 bc 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x410]
  a6ca31:	10 04 00 00 
  a6ca35:	c5 f8 10 8c 17 50 04 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x450]
  a6ca3c:	00 00 
  a6ca3e:	62 91 7c 48 28 ff    	vmovaps zmm7,zmm31
  a6ca44:	62 f2 65 40 7f f9    	vpermt2ps zmm7,zmm19,zmm1
  a6ca4a:	62 62 6d 48 7f f9    	vpermt2ps zmm31,zmm2,zmm1
  a6ca50:	62 f1 7c 48 10 84 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x460]
  a6ca57:	60 04 00 00 
  a6ca5b:	c5 f8 10 8c 17 a0 04 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x4a0]
  a6ca62:	00 00 
  a6ca64:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a6ca6a:	62 f2 65 40 7f d9    	vpermt2ps zmm3,zmm19,zmm1
  a6ca70:	62 f2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm1
  a6ca76:	62 f1 7c 48 10 8c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x4b0]
  a6ca7d:	b0 04 00 00 
  a6ca81:	62 61 7c 08 10 6c 17 	vmovups xmm29,XMMWORD PTR [rdi+rdx*1+0x4f0]
  a6ca88:	4f 
  a6ca89:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a6ca8f:	62 92 65 40 7f e5    	vpermt2ps zmm4,zmm19,zmm29
  a6ca95:	62 92 6d 48 7f cd    	vpermt2ps zmm1,zmm2,zmm29
  a6ca9b:	62 d1 44 40 58 d4    	vaddps zmm2,zmm23,zmm12
  a6caa1:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a6caa8:	01 
  a6caa9:	62 d1 44 40 5c d4    	vsubps zmm2,zmm23,zmm12
  a6caaf:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a6cab6:	02 
  a6cab7:	62 f1 6c 40 58 d6    	vaddps zmm2,zmm18,zmm6
  a6cabd:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a6cac4:	03 
  a6cac5:	62 f1 6c 40 5c d6    	vsubps zmm2,zmm18,zmm6
  a6cacb:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  a6cad2:	04 
  a6cad3:	62 91 34 40 58 d6    	vaddps zmm2,zmm25,zmm30
  a6cad9:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a6cae0:	62 01 34 40 5c f6    	vsubps zmm30,zmm25,zmm30
  a6cae6:	62 e1 2c 48 58 dd    	vaddps zmm19,zmm10,zmm5
  a6caec:	62 61 2c 48 5c ed    	vsubps zmm29,zmm10,zmm5
  a6caf2:	62 e1 3c 48 58 d3    	vaddps zmm18,zmm8,zmm3
  a6caf8:	62 f1 3c 48 5c d3    	vsubps zmm2,zmm8,zmm3
  a6cafe:	62 61 24 48 58 c8    	vaddps zmm25,zmm11,zmm0
  a6cb04:	62 f1 24 48 5c c0    	vsubps zmm0,zmm11,zmm0
  a6cb0a:	62 11 54 40 58 e3    	vaddps zmm12,zmm21,zmm27
  a6cb10:	62 11 54 40 5c c3    	vsubps zmm8,zmm21,zmm27
  a6cb16:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm8
  a6cb1d:	0b 
  a6cb1e:	62 61 34 48 58 df    	vaddps zmm27,zmm9,zmm7
  a6cb24:	62 f1 34 48 5c ff    	vsubps zmm7,zmm9,zmm7
  a6cb2a:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm7
  a6cb31:	07 
  a6cb32:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x40]
  a6cb39:	ff 
  a6cb3a:	62 51 64 48 58 d7    	vaddps zmm10,zmm3,zmm15
  a6cb40:	62 51 64 48 5c cf    	vsubps zmm9,zmm3,zmm15
  a6cb46:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm9
  a6cb4d:	0a 
  a6cb4e:	62 91 3c 40 58 f7    	vaddps zmm6,zmm24,zmm31
  a6cb54:	62 91 04 40 5c e8    	vsubps zmm5,zmm31,zmm24
  a6cb5a:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm5
  a6cb61:	06 
  a6cb62:	62 11 4c 40 58 dc    	vaddps zmm11,zmm22,zmm28
  a6cb68:	62 81 4c 40 5c fc    	vsubps zmm23,zmm22,zmm28
  a6cb6e:	62 61 74 40 58 fc    	vaddps zmm31,zmm17,zmm4
  a6cb74:	62 e1 74 40 5c ec    	vsubps zmm21,zmm17,zmm4
  a6cb7a:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x80]
  a6cb81:	fe 
  a6cb82:	62 b1 64 48 58 e0    	vaddps zmm4,zmm3,zmm16
  a6cb88:	62 a1 64 48 5c f0    	vsubps zmm22,zmm3,zmm16
  a6cb8e:	62 f1 2c 40 58 d9    	vaddps zmm3,zmm26,zmm1
  a6cb94:	62 81 74 48 5c c2    	vsubps zmm16,zmm1,zmm26
  a6cb9a:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a6cba1:	05 
  a6cba2:	62 41 74 48 58 d6    	vaddps zmm26,zmm1,zmm14
  a6cba8:	62 51 74 48 5c fe    	vsubps zmm15,zmm1,zmm14
  a6cbae:	62 41 5c 40 58 e5    	vaddps zmm28,zmm20,zmm13
  a6cbb4:	62 21 14 48 5c c4    	vsubps zmm24,zmm13,zmm20
  a6cbba:	62 91 0c 40 58 cd    	vaddps zmm1,zmm30,zmm29
  a6cbc0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a6cbc7:	ff 
  a6cbc8:	62 91 14 40 5c ce    	vsubps zmm1,zmm29,zmm30
  a6cbce:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a6cbd5:	09 
  a6cbd6:	62 f1 6c 48 5c c8    	vsubps zmm1,zmm2,zmm0
  a6cbdc:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a6cbe3:	fe 
  a6cbe4:	62 e1 7c 48 58 e2    	vaddps zmm20,zmm0,zmm2
  a6cbea:	62 f1 3c 48 58 c7    	vaddps zmm0,zmm8,zmm7
  a6cbf0:	62 d1 54 48 58 d1    	vaddps zmm2,zmm5,zmm9
  a6cbf6:	62 72 7d 48 18 35 64 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff608a64]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a6cbfd:	8a 60 ff 
  a6cc00:	62 d1 6c 48 59 fe    	vmulps zmm7,zmm2,zmm14
  a6cc06:	62 f2 7d 48 18 0d f0 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff608af0]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a6cc0d:	8a 60 ff 
  a6cc10:	62 f2 7d 48 b8 f9    	vfmadd231ps zmm7,zmm0,zmm1
  a6cc16:	62 e1 6c 48 59 c9    	vmulps zmm17,zmm2,zmm1
  a6cc1c:	62 e2 0d 48 bc c8    	vfnmadd231ps zmm17,zmm14,zmm0
  a6cc22:	62 b1 44 40 58 c5    	vaddps zmm0,zmm23,zmm21
  a6cc28:	62 b1 7c 40 58 d6    	vaddps zmm2,zmm16,zmm22
  a6cc2e:	62 71 6c 48 59 c1    	vmulps zmm8,zmm2,zmm1
  a6cc34:	62 52 7d 48 b8 c6    	vfmadd231ps zmm8,zmm0,zmm14
  a6cc3a:	62 51 6c 48 59 ee    	vmulps zmm13,zmm2,zmm14
  a6cc40:	62 72 75 48 bc e8    	vfnmadd231ps zmm13,zmm1,zmm0
  a6cc46:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a6cc4d:	01 
  a6cc4e:	62 01 7c 48 58 f4    	vaddps zmm30,zmm0,zmm28
  a6cc54:	62 91 7c 48 5c c4    	vsubps zmm0,zmm0,zmm28
  a6cc5a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a6cc61:	05 
  a6cc62:	62 21 64 40 58 e2    	vaddps zmm28,zmm19,zmm18
  a6cc68:	62 21 64 40 5c ea    	vsubps zmm29,zmm19,zmm18
  a6cc6e:	62 71 1c 48 58 ce    	vaddps zmm9,zmm12,zmm6
  a6cc74:	62 f1 1c 48 5c d6    	vsubps zmm2,zmm12,zmm6
  a6cc7a:	62 11 2c 48 58 e3    	vaddps zmm12,zmm10,zmm27
  a6cc80:	62 91 2c 48 5c f3    	vsubps zmm6,zmm10,zmm27
  a6cc86:	62 81 5c 48 58 df    	vaddps zmm19,zmm4,zmm31
  a6cc8c:	62 81 5c 48 5c d7    	vsubps zmm18,zmm4,zmm31
  a6cc92:	62 61 24 48 58 fb    	vaddps zmm31,zmm11,zmm3
  a6cc98:	62 71 24 48 5c d3    	vsubps zmm10,zmm11,zmm3
  a6cc9e:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a6cca5:	03 
  a6cca6:	62 61 2c 40 58 d8    	vaddps zmm27,zmm26,zmm0
  a6ccac:	62 f1 2c 40 5c c0    	vsubps zmm0,zmm26,zmm0
  a6ccb2:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a6ccb9:	03 
  a6ccba:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a6ccc1:	62 91 7c 48 58 d9    	vaddps zmm3,zmm0,zmm25
  a6ccc7:	62 61 34 40 5c d0    	vsubps zmm26,zmm25,zmm0
  a6cccd:	62 f1 6c 48 58 c6    	vaddps zmm0,zmm2,zmm6
  a6ccd3:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a6ccda:	01 
  a6ccdb:	62 f1 4c 48 5c c2    	vsubps zmm0,zmm6,zmm2
  a6cce1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a6cce8:	08 
  a6cce9:	62 d1 6c 40 5c c2    	vsubps zmm0,zmm18,zmm10
  a6ccef:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a6ccf6:	62 21 2c 48 58 ca    	vaddps zmm25,zmm10,zmm18
  a6ccfc:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a6cd03:	02 
  a6cd04:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x100]
  a6cd0b:	04 
  a6cd0c:	62 71 7c 48 58 d2    	vaddps zmm10,zmm0,zmm2
  a6cd12:	62 f1 7c 48 5c f2    	vsubps zmm6,zmm0,zmm2
  a6cd18:	62 f2 7d 48 18 15 7a 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff60867a]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a6cd1f:	86 60 ff 
  a6cd22:	62 e1 6c 48 59 54 24 	vmulps zmm18,zmm2,ZMMWORD PTR [rsp+0x240]
  a6cd29:	09 
  a6cd2a:	62 f1 5c 40 59 e2    	vmulps zmm4,zmm20,zmm2
  a6cd30:	62 f1 6c 40 5c ec    	vsubps zmm5,zmm18,zmm4
  a6cd36:	62 f1 6c 40 58 e4    	vaddps zmm4,zmm18,zmm4
  a6cd3c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x2c0]
  a6cd43:	0b 
  a6cd44:	62 71 7c 48 5c 5c 24 	vsubps zmm11,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a6cd4b:	07 
  a6cd4c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x280]
  a6cd53:	0a 
  a6cd54:	62 e1 7c 48 5c 54 24 	vsubps zmm18,zmm0,ZMMWORD PTR [rsp+0x180]
  a6cd5b:	06 
  a6cd5c:	62 a1 44 40 5c ed    	vsubps zmm21,zmm23,zmm21
  a6cd62:	62 a1 4c 40 5c c0    	vsubps zmm16,zmm22,zmm16
  a6cd68:	62 c1 3c 40 58 e7    	vaddps zmm20,zmm24,zmm15
  a6cd6e:	62 91 04 48 5c c0    	vsubps zmm0,zmm15,zmm24
  a6cd74:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a6cd7b:	02 
  a6cd7c:	62 e1 6c 48 59 74 24 	vmulps zmm22,zmm2,ZMMWORD PTR [rsp-0x40]
  a6cd83:	ff 
  a6cd84:	62 61 6c 48 59 44 24 	vmulps zmm24,zmm2,ZMMWORD PTR [rsp-0x80]
  a6cd8b:	fe 
  a6cd8c:	62 91 4c 40 58 c0    	vaddps zmm0,zmm22,zmm24
  a6cd92:	62 a1 3c 40 5c f6    	vsubps zmm22,zmm24,zmm22
  a6cd98:	62 61 6c 40 59 c1    	vmulps zmm24,zmm18,zmm1
  a6cd9e:	62 42 25 48 b8 c6    	vfmadd231ps zmm24,zmm11,zmm14
  a6cda4:	62 c1 6c 40 59 d6    	vmulps zmm18,zmm18,zmm14
  a6cdaa:	62 c2 75 48 bc d3    	vfnmadd231ps zmm18,zmm1,zmm11
  a6cdb0:	62 51 7c 40 59 de    	vmulps zmm11,zmm16,zmm14
  a6cdb6:	62 72 55 40 b8 d9    	vfmadd231ps zmm11,zmm21,zmm1
  a6cdbc:	62 c1 54 40 59 ee    	vmulps zmm21,zmm21,zmm14
  a6cdc2:	62 a2 75 48 bc e8    	vfnmadd231ps zmm21,zmm1,zmm16
  a6cdc8:	62 e1 0c 40 58 c3    	vaddps zmm16,zmm30,zmm3
  a6cdce:	62 f1 0c 40 5c cb    	vsubps zmm1,zmm30,zmm3
  a6cdd4:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a6cddb:	ff 
  a6cddc:	62 31 1c 48 58 fb    	vaddps zmm15,zmm12,zmm19
  a6cde2:	62 b1 1c 48 5c cb    	vsubps zmm1,zmm12,zmm19
  a6cde8:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a6cdef:	fe 
  a6cdf0:	62 11 24 40 58 f4    	vaddps zmm14,zmm27,zmm28
  a6cdf6:	62 91 24 40 5c cc    	vsubps zmm1,zmm27,zmm28
  a6cdfc:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm1
  a6ce03:	07 
  a6ce04:	62 01 34 48 58 df    	vaddps zmm27,zmm9,zmm31
  a6ce0a:	62 d1 04 40 5c c9    	vsubps zmm1,zmm31,zmm9
  a6ce10:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a6ce17:	06 
  a6ce18:	62 61 2c 48 58 f8    	vaddps zmm31,zmm10,zmm0
  a6ce1e:	62 61 2c 48 5c f0    	vsubps zmm30,zmm10,zmm0
  a6ce24:	62 51 74 40 58 e5    	vaddps zmm12,zmm17,zmm13
  a6ce2a:	62 41 74 40 5c e5    	vsubps zmm28,zmm17,zmm13
  a6ce30:	62 71 5c 40 58 d5    	vaddps zmm10,zmm20,zmm5
  a6ce36:	62 e1 5c 40 5c fd    	vsubps zmm23,zmm20,zmm5
  a6ce3c:	62 51 44 48 58 e8    	vaddps zmm13,zmm7,zmm8
  a6ce42:	62 e1 3c 48 5c df    	vsubps zmm19,zmm8,zmm7
  a6ce48:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a6ce4f:	05 
  a6ce50:	62 81 7c 48 58 e5    	vaddps zmm20,zmm0,zmm29
  a6ce56:	62 81 7c 48 5c cd    	vsubps zmm17,zmm0,zmm29
  a6ce5c:	62 f1 6c 48 59 5c 24 	vmulps zmm3,zmm2,ZMMWORD PTR [rsp+0x200]
  a6ce63:	08 
  a6ce64:	62 71 34 40 59 c2    	vmulps zmm8,zmm25,zmm2
  a6ce6a:	62 41 64 48 5c e8    	vsubps zmm29,zmm3,zmm8
  a6ce70:	62 41 64 48 58 c8    	vaddps zmm25,zmm3,zmm8
  a6ce76:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a6ce7d:	03 
  a6ce7e:	62 f1 2c 40 58 e8    	vaddps zmm5,zmm26,zmm0
  a6ce84:	62 01 7c 48 5c d2    	vsubps zmm26,zmm0,zmm26
  a6ce8a:	62 f1 6c 48 59 5c 24 	vmulps zmm3,zmm2,ZMMWORD PTR [rsp+0x40]
  a6ce91:	01 
  a6ce92:	62 71 6c 48 59 04 24 	vmulps zmm8,zmm2,ZMMWORD PTR [rsp]
  a6ce99:	62 d1 64 48 58 c8    	vaddps zmm1,zmm3,zmm8
  a6ce9f:	62 71 3c 48 5c cb    	vsubps zmm9,zmm8,zmm3
  a6cea5:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a6ceab:	62 f1 4c 48 58 e4    	vaddps zmm4,zmm6,zmm4
  a6ceb1:	62 f1 4c 48 5c f8    	vsubps zmm7,zmm6,zmm0
  a6ceb7:	62 b1 6c 40 58 d5    	vaddps zmm2,zmm18,zmm21
  a6cebd:	62 a1 6c 40 5c ed    	vsubps zmm21,zmm18,zmm21
  a6cec3:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a6ceca:	02 
  a6cecb:	62 b1 7c 48 58 de    	vaddps zmm3,zmm0,zmm22
  a6ced1:	62 b1 7c 48 5c f6    	vsubps zmm6,zmm0,zmm22
  a6ced7:	62 d1 3c 40 5c c3    	vsubps zmm0,zmm24,zmm11
  a6cedd:	62 41 3c 40 58 c3    	vaddps zmm24,zmm24,zmm11
  a6cee3:	62 81 7c 40 58 f3    	vaddps zmm22,zmm16,zmm27
  a6cee9:	62 01 7c 40 5c db    	vsubps zmm27,zmm16,zmm27
  a6ceef:	62 51 0c 48 58 c7    	vaddps zmm8,zmm14,zmm15
  a6cef5:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm8
  a6cefc:	02 
  a6cefd:	62 51 0c 48 5c c7    	vsubps zmm8,zmm14,zmm15
  a6cf03:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm8
  a6cf0a:	04 
  a6cf0b:	62 51 04 40 58 c5    	vaddps zmm8,zmm31,zmm13
  a6cf11:	62 51 04 40 5c fd    	vsubps zmm15,zmm31,zmm13
  a6cf17:	62 41 2c 48 58 fc    	vaddps zmm31,zmm10,zmm12
  a6cf1d:	62 51 2c 48 5c d4    	vsubps zmm10,zmm10,zmm12
  a6cf23:	62 71 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm10
  a6cf2a:	62 71 5c 40 58 d1    	vaddps zmm10,zmm20,zmm1
  a6cf30:	62 e1 5c 40 5c e1    	vsubps zmm20,zmm20,zmm1
  a6cf36:	62 11 54 48 58 f5    	vaddps zmm14,zmm5,zmm29
  a6cf3c:	62 11 54 48 5c e5    	vsubps zmm12,zmm5,zmm29
  a6cf42:	62 e1 5c 48 58 c0    	vaddps zmm16,zmm4,zmm0
  a6cf48:	62 f1 5c 48 5c c8    	vsubps zmm1,zmm4,zmm0
  a6cf4e:	62 71 64 48 58 da    	vaddps zmm11,zmm3,zmm2
  a6cf54:	62 71 64 48 5c ea    	vsubps zmm13,zmm3,zmm2
  a6cf5a:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a6cf61:	ff 
  a6cf62:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x80]
  a6cf69:	fe 
  a6cf6a:	62 f1 6c 48 58 c3    	vaddps zmm0,zmm2,zmm3
  a6cf70:	62 f1 6c 48 5c db    	vsubps zmm3,zmm2,zmm3
  a6cf76:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x1c0]
  a6cf7d:	07 
  a6cf7e:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x180]
  a6cf85:	06 
  a6cf86:	62 f1 54 48 58 d4    	vaddps zmm2,zmm5,zmm4
  a6cf8c:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a6cf93:	01 
  a6cf94:	62 f1 5c 48 5c d5    	vsubps zmm2,zmm4,zmm5
  a6cf9a:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a6cfa1:	03 
  a6cfa2:	62 91 0c 40 58 d4    	vaddps zmm2,zmm30,zmm28
  a6cfa8:	62 01 0c 40 5c e4    	vsubps zmm28,zmm30,zmm28
  a6cfae:	62 b1 44 40 58 e3    	vaddps zmm4,zmm23,zmm19
  a6cfb4:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm4
  a6cfbb:	fe 
  a6cfbc:	62 b1 44 40 5c e3    	vsubps zmm4,zmm23,zmm19
  a6cfc2:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm4
  a6cfc9:	08 
  a6cfca:	62 81 74 40 58 d9    	vaddps zmm19,zmm17,zmm25
  a6cfd0:	62 81 74 40 5c c9    	vsubps zmm17,zmm17,zmm25
  a6cfd6:	62 41 2c 40 58 f1    	vaddps zmm30,zmm26,zmm9
  a6cfdc:	62 51 2c 40 5c c9    	vsubps zmm9,zmm26,zmm9
  a6cfe2:	62 a1 44 48 58 fd    	vaddps zmm23,zmm7,zmm21
  a6cfe8:	62 b1 44 48 5c fd    	vsubps zmm7,zmm7,zmm21
  a6cfee:	62 01 4c 48 5c e8    	vsubps zmm29,zmm6,zmm24
  a6cff4:	62 91 4c 48 58 f0    	vaddps zmm6,zmm6,zmm24
  a6cffa:	62 a1 7c 48 28 ee    	vmovaps zmm21,zmm22
  a6d000:	62 f1 7c 48 28 25 76 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff659f76]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a6d007:	9f 65 ff 
  a6d00a:	62 82 5d 48 7f eb    	vpermt2ps zmm21,zmm4,zmm27
  a6d010:	62 f1 7c 48 28 2d a6 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff659fa6]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a6d017:	9f 65 ff 
  a6d01a:	62 82 55 48 7f f3    	vpermt2ps zmm22,zmm5,zmm27
  a6d020:	62 41 7c 48 28 c0    	vmovaps zmm24,zmm8
  a6d026:	62 42 5d 48 7f c7    	vpermt2ps zmm24,zmm4,zmm15
  a6d02c:	62 52 55 48 7f c7    	vpermt2ps zmm8,zmm5,zmm15
  a6d032:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a6d038:	62 32 5d 48 7f fc    	vpermt2ps zmm15,zmm4,zmm20
  a6d03e:	62 32 55 48 7f d4    	vpermt2ps zmm10,zmm5,zmm20
  a6d044:	62 21 7c 48 28 c8    	vmovaps zmm25,zmm16
  a6d04a:	62 62 5d 48 7f c9    	vpermt2ps zmm25,zmm4,zmm1
  a6d050:	62 e2 55 48 7f c1    	vpermt2ps zmm16,zmm5,zmm1
  a6d056:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a6d05c:	62 f2 5d 48 7f cb    	vpermt2ps zmm1,zmm4,zmm3
  a6d062:	62 f2 55 48 7f c3    	vpermt2ps zmm0,zmm5,zmm3
  a6d068:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a6d06e:	62 92 5d 48 7f dc    	vpermt2ps zmm3,zmm4,zmm28
  a6d074:	62 92 55 48 7f d4    	vpermt2ps zmm2,zmm5,zmm28
  a6d07a:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a6d080:	62 a2 5d 48 7f e1    	vpermt2ps zmm20,zmm4,zmm17
  a6d086:	62 a2 55 48 7f d9    	vpermt2ps zmm19,zmm5,zmm17
  a6d08c:	62 a1 7c 48 28 cf    	vmovaps zmm17,zmm23
  a6d092:	62 e2 5d 48 7f cf    	vpermt2ps zmm17,zmm4,zmm7
  a6d098:	62 e2 55 48 7f ff    	vpermt2ps zmm23,zmm5,zmm7
  a6d09e:	62 b1 7c 48 28 fd    	vmovaps zmm7,zmm21
  a6d0a4:	62 61 7c 48 28 25 52 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff659e52]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a6d0ab:	9e 65 ff 
  a6d0ae:	62 f2 1d 40 7f f9    	vpermt2ps zmm7,zmm28,zmm1
  a6d0b4:	62 e1 7c 48 28 15 82 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff659e82]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a6d0bb:	9e 65 ff 
  a6d0be:	62 e2 6d 40 7f e9    	vpermt2ps zmm21,zmm18,zmm1
  a6d0c4:	62 91 7c 48 28 c8    	vmovaps zmm1,zmm24
  a6d0ca:	62 f2 1d 40 7f cb    	vpermt2ps zmm1,zmm28,zmm3
  a6d0d0:	62 62 6d 40 7f c3    	vpermt2ps zmm24,zmm18,zmm3
  a6d0d6:	62 41 7c 48 28 d7    	vmovaps zmm26,zmm15
  a6d0dc:	62 22 1d 40 7f d4    	vpermt2ps zmm26,zmm28,zmm20
  a6d0e2:	62 32 6d 40 7f fc    	vpermt2ps zmm15,zmm18,zmm20
  a6d0e8:	62 01 7c 48 28 d9    	vmovaps zmm27,zmm25
  a6d0ee:	62 22 1d 40 7f d9    	vpermt2ps zmm27,zmm28,zmm17
  a6d0f4:	62 22 6d 40 7f c9    	vpermt2ps zmm25,zmm18,zmm17
  a6d0fa:	62 e2 1d 40 7f f0    	vpermt2ps zmm22,zmm28,zmm0
  a6d100:	62 72 1d 40 7f c2    	vpermt2ps zmm8,zmm28,zmm2
  a6d106:	62 32 1d 40 7f d3    	vpermt2ps zmm10,zmm28,zmm19
  a6d10c:	62 51 cd 40 14 d2    	vunpcklpd zmm10,zmm22,zmm10
  a6d112:	62 a2 1d 40 7f c7    	vpermt2ps zmm16,zmm28,zmm23
  a6d118:	62 b1 bd 48 14 c0    	vunpcklpd zmm0,zmm8,zmm16
  a6d11e:	62 81 c5 48 14 e2    	vunpcklpd zmm20,zmm7,zmm26
  a6d124:	62 81 c5 48 15 f2    	vunpckhpd zmm22,zmm7,zmm26
  a6d12a:	62 91 f5 48 14 d3    	vunpcklpd zmm2,zmm1,zmm27
  a6d130:	62 91 f5 48 15 cb    	vunpckhpd zmm1,zmm1,zmm27
  a6d136:	62 d1 d5 40 14 df    	vunpcklpd zmm3,zmm21,zmm15
  a6d13c:	62 51 d5 40 15 c7    	vunpckhpd zmm8,zmm21,zmm15
  a6d142:	62 91 bd 40 14 f9    	vunpcklpd zmm7,zmm24,zmm25
  a6d148:	62 11 bd 40 15 f9    	vunpckhpd zmm15,zmm24,zmm25
  a6d14e:	62 a1 7c 48 28 c4    	vmovaps zmm16,zmm20
  a6d154:	62 e1 7c 48 28 0d a2 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff659ca2]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a6d15b:	9c 65 ff 
  a6d15e:	62 e2 75 40 7f c2    	vpermt2ps zmm16,zmm17,zmm2
  a6d164:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm16
  a6d16b:	05 
  a6d16c:	62 61 7c 48 28 05 ca 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff659cca]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a6d173:	9c 65 ff 
  a6d176:	62 e2 3d 40 7f e2    	vpermt2ps zmm20,zmm24,zmm2
  a6d17c:	62 21 7c 48 28 ce    	vmovaps zmm25,zmm22
  a6d182:	62 62 75 40 7f c9    	vpermt2ps zmm25,zmm17,zmm1
  a6d188:	62 e2 3d 40 7f f1    	vpermt2ps zmm22,zmm24,zmm1
  a6d18e:	62 e1 7c 48 28 db    	vmovaps zmm19,zmm3
  a6d194:	62 e2 75 40 7f df    	vpermt2ps zmm19,zmm17,zmm7
  a6d19a:	62 f2 3d 40 7f df    	vpermt2ps zmm3,zmm24,zmm7
  a6d1a0:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a6d1a7:	ff 
  a6d1a8:	62 c1 7c 48 28 f8    	vmovaps zmm23,zmm8
  a6d1ae:	62 c2 75 40 7f ff    	vpermt2ps zmm23,zmm17,zmm15
  a6d1b4:	62 52 3d 40 7f c7    	vpermt2ps zmm8,zmm24,zmm15
  a6d1ba:	62 c1 7c 48 28 ea    	vmovaps zmm21,zmm10
  a6d1c0:	62 e2 75 40 7f e8    	vpermt2ps zmm21,zmm17,zmm0
  a6d1c6:	62 72 3d 40 7f d0    	vpermt2ps zmm10,zmm24,zmm0
  a6d1cc:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a6d1d3:	02 
  a6d1d4:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a6d1da:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x100]
  a6d1e1:	04 
  a6d1e2:	62 f2 5d 48 7f c2    	vpermt2ps zmm0,zmm4,zmm2
  a6d1e8:	62 f2 55 48 7f ca    	vpermt2ps zmm1,zmm5,zmm2
  a6d1ee:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a6d1f4:	62 91 7c 48 28 cf    	vmovaps zmm1,zmm31
  a6d1fa:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  a6d201:	62 f2 5d 48 7f ca    	vpermt2ps zmm1,zmm4,zmm2
  a6d207:	62 62 55 48 7f fa    	vpermt2ps zmm31,zmm5,zmm2
  a6d20d:	62 d1 7c 48 28 d6    	vmovaps zmm2,zmm14
  a6d213:	62 d2 5d 48 7f d4    	vpermt2ps zmm2,zmm4,zmm12
  a6d219:	62 52 55 48 7f f4    	vpermt2ps zmm14,zmm5,zmm12
  a6d21f:	62 d1 7c 48 28 fb    	vmovaps zmm7,zmm11
  a6d225:	62 d2 5d 48 7f fd    	vpermt2ps zmm7,zmm4,zmm13
  a6d22b:	62 52 55 48 7f dd    	vpermt2ps zmm11,zmm5,zmm13
  a6d231:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x40]
  a6d238:	01 
  a6d239:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a6d23f:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0xc0]
  a6d246:	03 
  a6d247:	62 52 5d 48 7f e7    	vpermt2ps zmm12,zmm4,zmm15
  a6d24d:	62 52 55 48 7f ef    	vpermt2ps zmm13,zmm5,zmm15
  a6d253:	62 41 7c 48 28 d5    	vmovaps zmm26,zmm13
  a6d259:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp-0x80]
  a6d260:	fe 
  a6d261:	62 51 7c 48 28 ef    	vmovaps zmm13,zmm15
  a6d267:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x200]
  a6d26e:	08 
  a6d26f:	62 32 5d 48 7f e8    	vpermt2ps zmm13,zmm4,zmm16
  a6d275:	62 32 55 48 7f f8    	vpermt2ps zmm15,zmm5,zmm16
  a6d27b:	62 41 7c 48 28 df    	vmovaps zmm27,zmm15
  a6d281:	62 11 7c 48 28 fe    	vmovaps zmm15,zmm30
  a6d287:	62 52 5d 48 7f f9    	vpermt2ps zmm15,zmm4,zmm9
  a6d28d:	62 42 55 48 7f f1    	vpermt2ps zmm30,zmm5,zmm9
  a6d293:	62 11 7c 48 28 cd    	vmovaps zmm9,zmm29
  a6d299:	62 72 5d 48 7f ce    	vpermt2ps zmm9,zmm4,zmm6
  a6d29f:	62 62 55 48 7f ee    	vpermt2ps zmm29,zmm5,zmm6
  a6d2a5:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a6d2ab:	62 d2 1d 40 7f f4    	vpermt2ps zmm6,zmm28,zmm12
  a6d2b1:	62 d2 6d 40 7f c4    	vpermt2ps zmm0,zmm18,zmm12
  a6d2b7:	62 e1 7c 48 28 c1    	vmovaps zmm16,zmm1
  a6d2bd:	62 c2 1d 40 7f c5    	vpermt2ps zmm16,zmm28,zmm13
  a6d2c3:	62 d2 6d 40 7f cd    	vpermt2ps zmm1,zmm18,zmm13
  a6d2c9:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a6d2cf:	62 52 1d 40 7f e7    	vpermt2ps zmm12,zmm28,zmm15
  a6d2d5:	62 d2 6d 40 7f d7    	vpermt2ps zmm2,zmm18,zmm15
  a6d2db:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a6d2e1:	62 52 1d 40 7f e9    	vpermt2ps zmm13,zmm28,zmm9
  a6d2e7:	62 d2 6d 40 7f f9    	vpermt2ps zmm7,zmm18,zmm9
  a6d2ed:	62 92 1d 40 7f da    	vpermt2ps zmm3,zmm28,zmm26
  a6d2f3:	62 02 1d 40 7f fb    	vpermt2ps zmm31,zmm28,zmm27
  a6d2f9:	62 12 1d 40 7f f6    	vpermt2ps zmm14,zmm28,zmm30
  a6d2ff:	62 41 e5 48 14 f6    	vunpcklpd zmm30,zmm3,zmm14
  a6d305:	62 12 1d 40 7f dd    	vpermt2ps zmm11,zmm28,zmm29
  a6d30b:	62 d1 85 40 14 e3    	vunpcklpd zmm4,zmm31,zmm11
  a6d311:	62 41 cd 48 14 ec    	vunpcklpd zmm29,zmm6,zmm12
  a6d317:	62 51 cd 48 15 e4    	vunpckhpd zmm12,zmm6,zmm12
  a6d31d:	62 d1 fd 40 14 f5    	vunpcklpd zmm6,zmm16,zmm13
  a6d323:	62 51 fd 40 15 cd    	vunpckhpd zmm9,zmm16,zmm13
  a6d329:	62 61 fd 48 14 d2    	vunpcklpd zmm26,zmm0,zmm2
  a6d32f:	62 f1 fd 48 15 ea    	vunpckhpd zmm5,zmm0,zmm2
  a6d335:	62 f1 f5 48 14 c7    	vunpcklpd zmm0,zmm1,zmm7
  a6d33b:	62 f1 f5 48 15 cf    	vunpckhpd zmm1,zmm1,zmm7
  a6d341:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  a6d347:	62 f2 75 40 7f d6    	vpermt2ps zmm2,zmm17,zmm6
  a6d34d:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a6d354:	02 
  a6d355:	62 62 3d 40 7f ee    	vpermt2ps zmm29,zmm24,zmm6
  a6d35b:	62 d1 7c 48 28 d4    	vmovaps zmm2,zmm12
  a6d361:	62 d2 75 40 7f d1    	vpermt2ps zmm2,zmm17,zmm9
  a6d367:	62 52 3d 40 7f e1    	vpermt2ps zmm12,zmm24,zmm9
  a6d36d:	62 91 7c 48 28 f2    	vmovaps zmm6,zmm26
  a6d373:	62 f2 75 40 7f f0    	vpermt2ps zmm6,zmm17,zmm0
  a6d379:	62 62 3d 40 7f d0    	vpermt2ps zmm26,zmm24,zmm0
  a6d37f:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a6d385:	62 f2 75 40 7f c1    	vpermt2ps zmm0,zmm17,zmm1
  a6d38b:	62 f2 3d 40 7f e9    	vpermt2ps zmm5,zmm24,zmm1
  a6d391:	62 91 7c 48 28 ce    	vmovaps zmm1,zmm30
  a6d397:	62 f2 75 40 7f cc    	vpermt2ps zmm1,zmm17,zmm4
  a6d39d:	62 62 3d 40 7f f4    	vpermt2ps zmm30,zmm24,zmm4
  a6d3a3:	62 71 7c 48 10 79 02 	vmovups zmm15,ZMMWORD PTR [rcx+0x80]
  a6d3aa:	62 71 7c 48 10 69 03 	vmovups zmm13,ZMMWORD PTR [rcx+0xc0]
  a6d3b1:	62 f1 7c 48 10 79 04 	vmovups zmm7,ZMMWORD PTR [rcx+0x100]
  a6d3b8:	62 61 7c 48 10 41 05 	vmovups zmm24,ZMMWORD PTR [rcx+0x140]
  a6d3bf:	62 61 34 40 59 df    	vmulps zmm27,zmm25,zmm7
  a6d3c5:	62 02 6d 48 bc d8    	vfnmadd231ps zmm27,zmm2,zmm24
  a6d3cb:	62 61 7c 48 10 79 11 	vmovups zmm31,ZMMWORD PTR [rcx+0x440]
  a6d3d2:	62 f1 7c 48 10 61 09 	vmovups zmm4,ZMMWORD PTR [rcx+0x240]
  a6d3d9:	62 71 7c 48 10 59 08 	vmovups zmm11,ZMMWORD PTR [rcx+0x200]
  a6d3e0:	62 c1 64 40 59 cb    	vmulps zmm17,zmm19,zmm11
  a6d3e6:	62 e2 4d 48 bc cc    	vfnmadd231ps zmm17,zmm6,zmm4
  a6d3ec:	62 51 4c 48 59 db    	vmulps zmm11,zmm6,zmm11
  a6d3f2:	62 f1 7c 48 10 71 0d 	vmovups zmm6,ZMMWORD PTR [rcx+0x340]
  a6d3f9:	62 32 5d 48 b8 db    	vfmadd231ps zmm11,zmm4,zmm19
  a6d3ff:	62 f1 7c 48 10 61 0c 	vmovups zmm4,ZMMWORD PTR [rcx+0x300]
  a6d406:	62 71 44 40 59 f4    	vmulps zmm14,zmm23,zmm4
  a6d40c:	62 72 7d 48 bc f6    	vfnmadd231ps zmm14,zmm0,zmm6
  a6d412:	62 f1 7c 48 59 e4    	vmulps zmm4,zmm0,zmm4
  a6d418:	62 f1 7c 48 10 41 10 	vmovups zmm0,ZMMWORD PTR [rcx+0x400]
  a6d41f:	62 b2 4d 48 b8 e7    	vfmadd231ps zmm4,zmm6,zmm23
  a6d425:	62 e1 54 40 59 d8    	vmulps zmm19,zmm21,zmm0
  a6d42b:	62 82 75 48 bc df    	vfnmadd231ps zmm19,zmm1,zmm31
  a6d431:	62 b1 24 40 5c db    	vsubps zmm3,zmm27,zmm19
  a6d437:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a6d43e:	01 
  a6d43f:	62 e1 6c 48 59 c7    	vmulps zmm16,zmm2,zmm7
  a6d445:	62 d1 74 40 5c d6    	vsubps zmm2,zmm17,zmm14
  a6d44b:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a6d452:	fe 
  a6d453:	62 82 3d 40 b8 c1    	vfmadd231ps zmm16,zmm24,zmm25
  a6d459:	62 62 7d 48 18 0d f5 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff6082f5]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a6d460:	82 60 ff 
  a6d463:	62 91 6c 48 59 d1    	vmulps zmm2,zmm2,zmm25
  a6d469:	62 62 7d 48 18 05 2d 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff607f2d]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a6d470:	7f 60 ff 
  a6d473:	62 92 65 48 b8 d0    	vfmadd231ps zmm2,zmm3,zmm24
  a6d479:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a6d47f:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  a6d486:	04 
  a6d487:	62 e1 24 48 58 fc    	vaddps zmm23,zmm11,zmm4
  a6d48d:	62 e1 7c 48 11 3c 24 	vmovups ZMMWORD PTR [rsp],zmm23
  a6d494:	62 61 74 48 59 e0    	vmulps zmm28,zmm1,zmm0
  a6d49a:	62 22 05 40 b8 e5    	vfmadd231ps zmm28,zmm31,zmm21
  a6d4a0:	62 f1 7c 48 10 41 0f 	vmovups zmm0,ZMMWORD PTR [rcx+0x3c0]
  a6d4a7:	62 f1 7c 48 10 49 0e 	vmovups zmm1,ZMMWORD PTR [rcx+0x380]
  a6d4ae:	62 e1 54 48 59 e9    	vmulps zmm21,zmm5,zmm1
  a6d4b4:	62 e2 3d 48 b8 e8    	vfmadd231ps zmm21,zmm8,zmm0
  a6d4ba:	62 f1 3c 48 59 c9    	vmulps zmm1,zmm8,zmm1
  a6d4c0:	62 f1 7c 48 10 71 07 	vmovups zmm6,ZMMWORD PTR [rcx+0x1c0]
  a6d4c7:	62 f2 7d 48 bc cd    	vfnmadd231ps zmm1,zmm0,zmm5
  a6d4cd:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  a6d4d4:	62 f1 1c 48 59 d0    	vmulps zmm2,zmm12,zmm0
  a6d4da:	62 f2 4d 40 b8 d6    	vfmadd231ps zmm2,zmm22,zmm6
  a6d4e0:	62 e1 4c 40 59 f0    	vmulps zmm22,zmm22,zmm0
  a6d4e6:	62 f1 7c 48 10 41 13 	vmovups zmm0,ZMMWORD PTR [rcx+0x4c0]
  a6d4ed:	62 c2 4d 48 bc f4    	vfnmadd231ps zmm22,zmm6,zmm12
  a6d4f3:	62 f1 7c 48 10 69 12 	vmovups zmm5,ZMMWORD PTR [rcx+0x480]
  a6d4fa:	62 f1 0c 40 59 f5    	vmulps zmm6,zmm30,zmm5
  a6d500:	62 f2 2d 48 b8 f0    	vfmadd231ps zmm6,zmm10,zmm0
  a6d506:	62 61 2c 48 59 fd    	vmulps zmm31,zmm10,zmm5
  a6d50c:	62 11 7c 40 58 cc    	vaddps zmm9,zmm16,zmm28
  a6d512:	62 02 7d 48 bc fe    	vfnmadd231ps zmm31,zmm0,zmm30
  a6d518:	62 62 7d 48 18 05 c6 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff6081c6]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a6d51f:	81 60 ff 
  a6d522:	62 11 7c 48 28 e0    	vmovaps zmm12,zmm24
  a6d528:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x80]
  a6d52f:	02 
  a6d530:	62 72 35 48 a8 e7    	vfmadd213ps zmm12,zmm9,zmm7
  a6d536:	62 e2 7d 48 18 15 04 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff608104]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a6d53d:	81 60 ff 
  a6d540:	62 32 45 40 bc e2    	vfnmadd231ps zmm12,zmm23,zmm18
  a6d546:	62 a1 7c 48 28 fa    	vmovaps zmm23,zmm18
  a6d54c:	62 41 14 40 59 f7    	vmulps zmm30,zmm29,zmm15
  a6d552:	62 42 5d 40 b8 f5    	vfmadd231ps zmm30,zmm20,zmm13
  a6d558:	62 d1 5c 40 59 ef    	vmulps zmm5,zmm20,zmm15
  a6d55e:	62 f1 7c 48 10 41 0b 	vmovups zmm0,ZMMWORD PTR [rcx+0x2c0]
  a6d565:	62 92 15 48 bc ed    	vfnmadd231ps zmm5,zmm13,zmm29
  a6d56b:	62 71 7c 48 10 69 0a 	vmovups zmm13,ZMMWORD PTR [rcx+0x280]
  a6d572:	62 51 2c 40 59 c5    	vmulps zmm8,zmm26,zmm13
  a6d578:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp-0x40]
  a6d57f:	ff 
  a6d580:	62 72 2d 48 b8 c0    	vfmadd231ps zmm8,zmm10,zmm0
  a6d586:	62 51 2c 48 59 d5    	vmulps zmm10,zmm10,zmm13
  a6d58c:	62 51 64 48 58 ec    	vaddps zmm13,zmm3,zmm12
  a6d592:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm13
  a6d599:	ff 
  a6d59a:	62 12 7d 48 bc d2    	vfnmadd231ps zmm10,zmm0,zmm26
  a6d5a0:	62 11 4c 48 58 ee    	vaddps zmm13,zmm6,zmm30
  a6d5a6:	62 71 54 40 58 fa    	vaddps zmm15,zmm21,zmm2
  a6d5ac:	62 c1 74 40 58 d6    	vaddps zmm18,zmm17,zmm14
  a6d5b2:	62 81 7c 48 28 e0    	vmovaps zmm20,zmm24
  a6d5b8:	62 c2 05 48 a8 e0    	vfmadd213ps zmm20,zmm15,zmm8
  a6d5be:	62 a2 15 48 bc e7    	vfnmadd231ps zmm20,zmm13,zmm23
  a6d5c4:	62 31 24 40 58 f3    	vaddps zmm14,zmm27,zmm19
  a6d5ca:	62 21 74 48 5c d6    	vsubps zmm26,zmm1,zmm22
  a6d5d0:	62 01 7c 40 5c dc    	vsubps zmm27,zmm16,zmm28
  a6d5d6:	62 61 04 40 5c e5    	vsubps zmm28,zmm31,zmm5
  a6d5dc:	62 f1 24 48 5c dc    	vsubps zmm3,zmm11,zmm4
  a6d5e2:	62 91 1c 40 59 c1    	vmulps zmm0,zmm28,zmm25
  a6d5e8:	62 e2 7d 48 18 1d ae 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff607dae]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a6d5ef:	7d 60 ff 
  a6d5f2:	62 b2 2d 40 b8 c3    	vfmadd231ps zmm0,zmm26,zmm19
  a6d5f8:	62 71 04 40 58 dd    	vaddps zmm11,zmm31,zmm5
  a6d5fe:	62 61 5c 40 58 e8    	vaddps zmm29,zmm20,zmm0
  a6d604:	62 a1 74 48 58 c6    	vaddps zmm16,zmm1,zmm22
  a6d60a:	62 91 64 48 59 c9    	vmulps zmm1,zmm3,zmm25
  a6d610:	62 b2 25 40 b8 cb    	vfmadd231ps zmm1,zmm27,zmm19
  a6d616:	62 f1 54 40 5c ea    	vsubps zmm5,zmm21,zmm2
  a6d61c:	62 91 4c 48 5c f6    	vsubps zmm6,zmm6,zmm30
  a6d622:	62 91 4c 48 59 d1    	vmulps zmm2,zmm6,zmm25
  a6d628:	62 b2 55 48 b8 d3    	vfmadd231ps zmm2,zmm5,zmm19
  a6d62e:	62 e1 34 40 59 6c 24 	vmulps zmm21,zmm25,ZMMWORD PTR [rsp+0x40]
  a6d635:	01 
  a6d636:	62 e2 65 40 bc 6c 24 	vfnmadd231ps zmm21,zmm19,ZMMWORD PTR [rsp-0x80]
  a6d63d:	fe 
  a6d63e:	62 21 7c 48 28 f3    	vmovaps zmm30,zmm19
  a6d644:	62 b1 7c 48 28 e7    	vmovaps zmm4,zmm23
  a6d64a:	62 a1 7c 48 28 cf    	vmovaps zmm17,zmm23
  a6d650:	62 61 7c 48 28 ff    	vmovaps zmm31,zmm7
  a6d656:	62 e2 35 48 ac cf    	vfnmadd213ps zmm17,zmm9,zmm7
  a6d65c:	62 f1 7c 48 10 3c 24 	vmovups zmm7,ZMMWORD PTR [rsp]
  a6d663:	62 82 45 48 b8 c8    	vfmadd231ps zmm17,zmm7,zmm24
  a6d669:	62 a1 54 40 58 d9    	vaddps zmm19,zmm21,zmm17
  a6d66f:	62 81 2c 40 59 f1    	vmulps zmm22,zmm26,zmm25
  a6d675:	62 82 0d 40 bc f4    	vfnmadd231ps zmm22,zmm30,zmm28
  a6d67b:	62 c2 05 48 ac f8    	vfnmadd213ps zmm23,zmm15,zmm8
  a6d681:	62 82 15 48 b8 f8    	vfmadd231ps zmm23,zmm13,zmm24
  a6d687:	62 01 24 40 59 d1    	vmulps zmm26,zmm27,zmm25
  a6d68d:	62 62 0d 40 bc d3    	vfnmadd231ps zmm26,zmm30,zmm3
  a6d693:	62 21 44 40 58 de    	vaddps zmm27,zmm23,zmm22
  a6d699:	62 91 54 48 59 d9    	vmulps zmm3,zmm5,zmm25
  a6d69f:	62 f2 0d 40 bc de    	vfnmadd231ps zmm3,zmm30,zmm6
  a6d6a5:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a6d6ab:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0x140]
  a6d6b2:	05 
  a6d6b3:	62 92 0d 48 ac ee    	vfnmadd213ps zmm5,zmm14,zmm30
  a6d6b9:	62 92 6d 40 b8 e8    	vfmadd231ps zmm5,zmm18,zmm24
  a6d6bf:	62 b1 74 40 5c f5    	vsubps zmm6,zmm17,zmm21
  a6d6c5:	62 81 54 48 5c ca    	vsubps zmm17,zmm5,zmm26
  a6d6cb:	62 a1 44 40 5c ee    	vsubps zmm21,zmm23,zmm22
  a6d6d1:	62 e1 7c 48 28 f4    	vmovaps zmm22,zmm4
  a6d6d7:	62 c2 7d 40 ac f2    	vfnmadd213ps zmm22,zmm16,zmm10
  a6d6dd:	62 82 25 48 b8 f0    	vfmadd231ps zmm22,zmm11,zmm24
  a6d6e3:	62 91 54 48 58 ea    	vaddps zmm5,zmm5,zmm26
  a6d6e9:	62 e1 4c 40 5c fb    	vsubps zmm23,zmm22,zmm3
  a6d6ef:	62 e1 4c 40 58 f3    	vaddps zmm22,zmm22,zmm3
  a6d6f5:	62 91 7c 48 28 d8    	vmovaps zmm3,zmm24
  a6d6fb:	62 92 0d 48 a8 de    	vfmadd213ps zmm3,zmm14,zmm30
  a6d701:	62 f2 6d 40 bc dc    	vfnmadd231ps zmm3,zmm18,zmm4
  a6d707:	62 71 1c 48 5c 64 24 	vsubps zmm12,zmm12,ZMMWORD PTR [rsp+0x100]
  a6d70e:	04 
  a6d70f:	62 61 64 48 5c c9    	vsubps zmm25,zmm3,zmm1
  a6d715:	62 e1 5c 40 5c e0    	vsubps zmm20,zmm20,zmm0
  a6d71b:	62 42 7d 40 a8 c2    	vfmadd213ps zmm24,zmm16,zmm10
  a6d721:	62 62 25 48 bc c4    	vfnmadd231ps zmm24,zmm11,zmm4
  a6d727:	62 61 64 48 58 d1    	vaddps zmm26,zmm3,zmm1
  a6d72d:	62 f1 3c 40 5c ca    	vsubps zmm1,zmm24,zmm2
  a6d733:	62 61 3c 40 58 e2    	vaddps zmm28,zmm24,zmm2
  a6d739:	62 91 34 48 58 c7    	vaddps zmm0,zmm9,zmm31
  a6d73f:	62 f1 44 48 58 f8    	vaddps zmm7,zmm7,zmm0
  a6d745:	62 d1 3c 48 58 c7    	vaddps zmm0,zmm8,zmm15
  a6d74b:	62 51 7c 48 58 c5    	vaddps zmm8,zmm0,zmm13
  a6d751:	62 d1 0c 40 58 c6    	vaddps zmm0,zmm30,zmm14
  a6d757:	62 31 7c 48 58 ca    	vaddps zmm9,zmm0,zmm18
  a6d75d:	62 b1 2c 48 58 c0    	vaddps zmm0,zmm10,zmm16
  a6d763:	62 51 7c 48 58 d3    	vaddps zmm10,zmm0,zmm11
  a6d769:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a6d770:	ff 
  a6d771:	62 91 7c 48 5c dd    	vsubps zmm3,zmm0,zmm29
  a6d777:	62 91 7c 48 58 e5    	vaddps zmm4,zmm0,zmm29
  a6d77d:	62 f1 34 40 5c c1    	vsubps zmm0,zmm25,zmm1
  a6d783:	62 71 34 40 58 d9    	vaddps zmm11,zmm25,zmm1
  a6d789:	62 91 64 40 58 cb    	vaddps zmm1,zmm19,zmm27
  a6d78f:	62 11 64 40 5c eb    	vsubps zmm13,zmm19,zmm27
  a6d795:	62 b1 74 40 58 d7    	vaddps zmm2,zmm17,zmm23
  a6d79b:	62 31 74 40 5c f7    	vsubps zmm14,zmm17,zmm23
  a6d7a1:	62 31 4c 48 5c fd    	vsubps zmm15,zmm6,zmm21
  a6d7a7:	62 b1 4c 48 58 f5    	vaddps zmm6,zmm6,zmm21
  a6d7ad:	62 a1 54 48 5c c6    	vsubps zmm16,zmm5,zmm22
  a6d7b3:	62 b1 54 48 58 ee    	vaddps zmm5,zmm5,zmm22
  a6d7b9:	62 a1 1c 48 58 cc    	vaddps zmm17,zmm12,zmm20
  a6d7bf:	62 31 1c 48 5c e4    	vsubps zmm12,zmm12,zmm20
  a6d7c5:	62 81 2c 40 58 d4    	vaddps zmm18,zmm26,zmm28
  a6d7cb:	62 81 2c 40 5c dc    	vsubps zmm19,zmm26,zmm28
  a6d7d1:	62 c1 44 48 5c e0    	vsubps zmm20,zmm7,zmm8
  a6d7d7:	62 d1 44 48 58 f8    	vaddps zmm7,zmm7,zmm8
  a6d7dd:	62 51 34 48 5c c2    	vsubps zmm8,zmm9,zmm10
  a6d7e3:	62 51 34 48 58 ca    	vaddps zmm9,zmm9,zmm10
  a6d7e9:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a6d7ef:	62 e1 7c 48 28 2d 07 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff626f07]        # 94700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21bb0>
  a6d7f6:	6f 62 ff 
  a6d7f9:	62 52 55 40 7f d1    	vpermt2ps zmm10,zmm21,zmm9
  a6d7ff:	62 e1 7c 48 28 35 37 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff626f37]        # 94740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21bf0>
  a6d806:	6f 62 ff 
  a6d809:	62 d2 4d 40 7f f9    	vpermt2ps zmm7,zmm22,zmm9
  a6d80f:	62 f1 7c 48 11 3c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm7
  a6d816:	62 71 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm10
  a6d81d:	01 
  a6d81e:	62 d1 7c 48 28 fc    	vmovaps zmm7,zmm12
  a6d824:	62 b2 55 40 7f fb    	vpermt2ps zmm7,zmm21,zmm19
  a6d82a:	62 32 4d 40 7f e3    	vpermt2ps zmm12,zmm22,zmm19
  a6d830:	62 71 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm12
  a6d837:	02 
  a6d838:	62 f1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm7
  a6d83f:	03 
  a6d840:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a6d846:	62 f2 55 40 7f fd    	vpermt2ps zmm7,zmm21,zmm5
  a6d84c:	62 f2 4d 40 7f f5    	vpermt2ps zmm6,zmm22,zmm5
  a6d852:	62 f1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm6
  a6d859:	04 
  a6d85a:	62 f1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm7
  a6d861:	05 
  a6d862:	62 d1 7c 48 28 ed    	vmovaps zmm5,zmm13
  a6d868:	62 d2 55 40 7f ee    	vpermt2ps zmm5,zmm21,zmm14
  a6d86e:	62 52 4d 40 7f ee    	vpermt2ps zmm13,zmm22,zmm14
  a6d874:	62 71 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm13
  a6d87b:	06 
  a6d87c:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm5
  a6d883:	07 
  a6d884:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a6d88a:	62 d2 55 40 7f eb    	vpermt2ps zmm5,zmm21,zmm11
  a6d890:	62 d2 4d 40 7f e3    	vpermt2ps zmm4,zmm22,zmm11
  a6d896:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm4
  a6d89d:	08 
  a6d89e:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm5
  a6d8a5:	09 
  a6d8a6:	62 b1 7c 48 28 e4    	vmovaps zmm4,zmm20
  a6d8ac:	62 d2 55 40 7f e0    	vpermt2ps zmm4,zmm21,zmm8
  a6d8b2:	62 c2 4d 40 7f e0    	vpermt2ps zmm20,zmm22,zmm8
  a6d8b8:	62 e1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm20
  a6d8bf:	0a 
  a6d8c0:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm4
  a6d8c7:	0b 
  a6d8c8:	62 b1 7c 48 28 e1    	vmovaps zmm4,zmm17
  a6d8ce:	62 b2 55 40 7f e2    	vpermt2ps zmm4,zmm21,zmm18
  a6d8d4:	62 a2 4d 40 7f ca    	vpermt2ps zmm17,zmm22,zmm18
  a6d8da:	62 e1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x300],zmm17
  a6d8e1:	0c 
  a6d8e2:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x340],zmm4
  a6d8e9:	0d 
  a6d8ea:	62 d1 7c 48 28 e7    	vmovaps zmm4,zmm15
  a6d8f0:	62 b2 55 40 7f e0    	vpermt2ps zmm4,zmm21,zmm16
  a6d8f6:	62 32 4d 40 7f f8    	vpermt2ps zmm15,zmm22,zmm16
  a6d8fc:	62 71 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x380],zmm15
  a6d903:	0e 
  a6d904:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3c0],zmm4
  a6d90b:	0f 
  a6d90c:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a6d912:	62 f2 55 40 7f e2    	vpermt2ps zmm4,zmm21,zmm2
  a6d918:	62 f2 4d 40 7f ca    	vpermt2ps zmm1,zmm22,zmm2
  a6d91e:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x400],zmm1
  a6d925:	10 
  a6d926:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x440],zmm4
  a6d92d:	11 
  a6d92e:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a6d934:	62 f2 55 40 7f c8    	vpermt2ps zmm1,zmm21,zmm0
  a6d93a:	62 f2 4d 40 7f d8    	vpermt2ps zmm3,zmm22,zmm0
  a6d940:	62 f1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x480],zmm3
  a6d947:	12 
  a6d948:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4c0],zmm1
  a6d94f:	13 
  a6d950:	48 81 c2 00 05 00 00 	add    rdx,0x500
  a6d957:	48 39 d0             	cmp    rax,rdx
  a6d95a:	0f 85 c0 ee ff ff    	jne    a6c820 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a6d960:	48 81 c4 08 03 00 00 	add    rsp,0x308
  a6d967:	c5 f8 77             	vzeroupper
  a6d96a:	c3                   	ret
