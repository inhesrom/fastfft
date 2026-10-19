
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ac8940 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ac8940:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  ac8945:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ac894b:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  ac8950:	c4 c3 7d 0c c7 c0    	vblendps ymm0,ymm0,ymm15,0xc0
  ac8956:	c5 f8 10 3f          	vmovups xmm7,XMMWORD PTR [rdi]
  ac895a:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  ac895f:	c5 f8 10 6f 30       	vmovups xmm5,XMMWORD PTR [rdi+0x30]
  ac8964:	62 e1 7c 08 10 87 48 	vmovups xmm16,XMMWORD PTR [rdi+0x48]
  ac896b:	00 00 00 
  ac896e:	c4 c3 7d 19 c2 01    	vextractf128 xmm10,ymm0,0x1
  ac8974:	62 41 44 08 c6 ea 88 	vshufps xmm29,xmm7,xmm10,0x88
  ac897b:	c5 78 10 5f 60       	vmovups xmm11,XMMWORD PTR [rdi+0x60]
  ac8980:	c5 fb 10 47 70       	vmovsd xmm0,QWORD PTR [rdi+0x70]
  ac8985:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ac898b:	c4 c3 7d 0c c7 c0    	vblendps ymm0,ymm0,ymm15,0xc0
  ac8991:	c4 c3 7d 19 c6 01    	vextractf128 xmm14,ymm0,0x1
  ac8997:	c4 c1 20 c6 e6 88    	vshufps xmm4,xmm11,xmm14,0x88
  ac899d:	62 61 14 20 5c d4    	vsubps ymm26,ymm29,ymm4
  ac89a3:	c5 78 10 a7 90 00 00 	vmovups xmm12,XMMWORD PTR [rdi+0x90]
  ac89aa:	00 
  ac89ab:	c5 fb 10 87 a0 00 00 	vmovsd xmm0,QWORD PTR [rdi+0xa0]
  ac89b2:	00 
  ac89b3:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ac89b9:	c4 c3 7d 0c c7 c0    	vblendps ymm0,ymm0,ymm15,0xc0
  ac89bf:	62 b3 7d 28 19 c1 01 	vextractf32x4 xmm17,ymm0,0x1
  ac89c6:	62 b1 1c 08 c6 f1 dd 	vshufps xmm6,xmm12,xmm17,0xdd
  ac89cd:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  ac89d2:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ac89d8:	c4 c3 7d 0c c7 c0    	vblendps ymm0,ymm0,ymm15,0xc0
  ac89de:	62 b3 7d 28 19 c2 01 	vextractf32x4 xmm18,ymm0,0x1
  ac89e5:	62 31 54 08 c6 ca dd 	vshufps xmm9,xmm5,xmm18,0xdd
  ac89ec:	c4 41 4c 5c c1       	vsubps ymm8,ymm6,ymm9
  ac89f1:	62 c1 2c 20 5c f0    	vsubps ymm22,ymm26,ymm8
  ac89f7:	c5 7b 10 6f 58       	vmovsd xmm13,QWORD PTR [rdi+0x58]
  ac89fc:	c4 43 7d 18 ed 01    	vinsertf128 ymm13,ymm0,xmm13,0x1
  ac8a02:	c4 43 15 0c ef c0    	vblendps ymm13,ymm13,ymm15,0xc0
  ac8a08:	62 33 7d 28 19 eb 01 	vextractf32x4 xmm19,ymm13,0x1
  ac8a0f:	62 31 7c 00 c6 eb 88 	vshufps xmm13,xmm16,xmm19,0x88
  ac8a16:	62 e1 7c 08 10 a7 a8 	vmovups xmm20,XMMWORD PTR [rdi+0xa8]
  ac8a1d:	00 00 00 
  ac8a20:	62 e1 ff 08 10 6f 17 	vmovsd xmm21,QWORD PTR [rdi+0xb8]
  ac8a27:	62 b3 7d 28 18 c5 01 	vinsertf32x4 ymm0,ymm0,xmm21,0x1
  ac8a2e:	c4 c3 7d 0c c7 c0    	vblendps ymm0,ymm0,ymm15,0xc0
  ac8a34:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ac8a3a:	62 e1 5c 00 c6 e8 88 	vshufps xmm21,xmm20,xmm0,0x88
  ac8a41:	62 a1 14 28 5c fd    	vsubps ymm23,ymm13,ymm21
  ac8a47:	62 a1 7c 00 c6 c3 dd 	vshufps xmm16,xmm16,xmm19,0xdd
  ac8a4e:	62 f1 5c 00 c6 c0 dd 	vshufps xmm0,xmm20,xmm0,0xdd
  ac8a55:	62 e1 7c 20 5c d8    	vsubps ymm19,ymm16,ymm0
  ac8a5b:	62 a1 44 20 5c e3    	vsubps ymm20,ymm23,ymm19
  ac8a61:	62 62 7d 28 18 05 31 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff5ac931]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  ac8a68:	c9 5a ff 
  ac8a6b:	62 81 5c 20 59 e0    	vmulps ymm20,ymm20,ymm24
  ac8a71:	62 61 ff 08 10 4f 05 	vmovsd xmm25,QWORD PTR [rdi+0x28]
  ac8a78:	62 93 7d 28 18 c9 01 	vinsertf32x4 ymm1,ymm0,xmm25,0x1
  ac8a7f:	c4 c3 75 0c cf c0    	vblendps ymm1,ymm1,ymm15,0xc0
  ac8a85:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  ac8a8b:	62 61 64 08 c6 c9 dd 	vshufps xmm25,xmm3,xmm1,0xdd
  ac8a92:	62 61 7c 08 10 9f 78 	vmovups xmm27,XMMWORD PTR [rdi+0x78]
  ac8a99:	00 00 00 
  ac8a9c:	62 61 ff 08 10 67 11 	vmovsd xmm28,QWORD PTR [rdi+0x88]
  ac8aa3:	62 93 7d 28 18 d4 01 	vinsertf32x4 ymm2,ymm0,xmm28,0x1
  ac8aaa:	c4 c3 6d 0c d7 c0    	vblendps ymm2,ymm2,ymm15,0xc0
  ac8ab0:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  ac8ab6:	62 71 24 00 c6 fa dd 	vshufps xmm15,xmm27,xmm2,0xdd
  ac8abd:	62 41 34 20 5c e7    	vsubps ymm28,ymm25,ymm15
  ac8ac3:	c5 e0 c6 c9 88       	vshufps xmm1,xmm3,xmm1,0x88
  ac8ac8:	62 f1 24 00 c6 d2 88 	vshufps xmm2,xmm27,xmm2,0x88
  ac8acf:	62 61 74 28 5c da    	vsubps ymm27,ymm1,ymm2
  ac8ad5:	62 91 1c 20 58 db    	vaddps ymm3,ymm28,ymm27
  ac8adb:	62 01 64 28 59 f0    	vmulps ymm30,ymm3,ymm24
  ac8ae1:	62 91 5c 20 5c de    	vsubps ymm3,ymm20,ymm30
  ac8ae7:	c4 c1 40 c6 fa dd    	vshufps xmm7,xmm7,xmm10,0xdd
  ac8aed:	c4 41 20 c6 d6 dd    	vshufps xmm10,xmm11,xmm14,0xdd
  ac8af3:	c4 41 44 5c da       	vsubps ymm11,ymm7,ymm10
  ac8af8:	62 b1 54 08 c6 ea 88 	vshufps xmm5,xmm5,xmm18,0x88
  ac8aff:	62 31 1c 08 c6 e1 88 	vshufps xmm12,xmm12,xmm17,0x88
  ac8b06:	c4 41 54 5c f4       	vsubps ymm14,ymm5,ymm12
  ac8b0b:	62 c1 24 28 5c ce    	vsubps ymm17,ymm11,ymm14
  ac8b11:	62 81 24 20 5c d4    	vsubps ymm18,ymm27,ymm28
  ac8b17:	62 81 6c 20 59 d0    	vmulps ymm18,ymm18,ymm24
  ac8b1d:	62 a1 64 20 58 df    	vaddps ymm19,ymm19,ymm23
  ac8b23:	62 81 64 20 59 d8    	vmulps ymm19,ymm19,ymm24
  ac8b29:	62 a1 6c 20 58 fb    	vaddps ymm23,ymm18,ymm19
  ac8b2f:	62 f1 14 20 58 e4    	vaddps ymm4,ymm29,ymm4
  ac8b35:	c5 9c 58 ed          	vaddps ymm5,ymm12,ymm5
  ac8b39:	c5 5c 5c e5          	vsubps ymm12,ymm4,ymm5
  ac8b3d:	62 f1 7c 20 58 c0    	vaddps ymm0,ymm16,ymm0
  ac8b43:	62 51 34 20 58 ff    	vaddps ymm15,ymm25,ymm15
  ac8b49:	62 c1 7c 28 5c c7    	vsubps ymm16,ymm0,ymm15
  ac8b4f:	c5 ac 58 ff          	vaddps ymm7,ymm10,ymm7
  ac8b53:	c5 b4 58 f6          	vaddps ymm6,ymm9,ymm6
  ac8b57:	c5 44 5c ce          	vsubps ymm9,ymm7,ymm6
  ac8b5b:	c5 f4 58 ca          	vaddps ymm1,ymm1,ymm2
  ac8b5f:	62 b1 14 28 58 d5    	vaddps ymm2,ymm13,ymm21
  ac8b65:	c5 74 5c d2          	vsubps ymm10,ymm1,ymm2
  ac8b69:	62 11 3c 28 58 c2    	vaddps ymm8,ymm8,ymm26
  ac8b6f:	62 31 6c 20 5c eb    	vsubps ymm13,ymm18,ymm19
  ac8b75:	c4 41 24 58 de       	vaddps ymm11,ymm11,ymm14
  ac8b7a:	62 31 0c 20 58 f4    	vaddps ymm14,ymm30,ymm20
  ac8b80:	c5 dc 58 e5          	vaddps ymm4,ymm4,ymm5
  ac8b84:	c5 f4 58 ca          	vaddps ymm1,ymm1,ymm2
  ac8b88:	c5 c4 58 d6          	vaddps ymm2,ymm7,ymm6
  ac8b8c:	c5 84 58 c0          	vaddps ymm0,ymm15,ymm0
  ac8b90:	62 f1 4c 20 58 eb    	vaddps ymm5,ymm22,ymm3
  ac8b96:	62 b1 74 20 58 f7    	vaddps ymm6,ymm17,ymm23
  ac8b9c:	62 d1 7c 20 58 fc    	vaddps ymm7,ymm16,ymm12
  ac8ba2:	c4 41 34 58 fa       	vaddps ymm15,ymm9,ymm10
  ac8ba7:	62 c1 3c 28 58 d5    	vaddps ymm18,ymm8,ymm13
  ac8bad:	62 c1 24 28 58 de    	vaddps ymm19,ymm11,ymm14
  ac8bb3:	62 e1 5c 28 58 e1    	vaddps ymm20,ymm4,ymm1
  ac8bb9:	62 e1 6c 28 58 e8    	vaddps ymm21,ymm2,ymm0
  ac8bbf:	c5 e8 5c c0          	vsubps xmm0,xmm2,xmm0
  ac8bc3:	62 f3 55 20 18 c0 01 	vinsertf32x4 ymm0,ymm21,xmm0,0x1
  ac8bca:	c4 c1 20 5c d6       	vsubps xmm2,xmm11,xmm14
  ac8bcf:	62 f3 65 20 18 d2 01 	vinsertf32x4 ymm2,ymm19,xmm2,0x1
  ac8bd6:	c4 41 30 5c ca       	vsubps xmm9,xmm9,xmm10
  ac8bdb:	c4 43 05 18 c9 01    	vinsertf128 ymm9,ymm15,xmm9,0x1
  ac8be1:	62 31 74 00 5c d7    	vsubps xmm10,xmm17,xmm23
  ac8be7:	c4 c3 4d 18 f2 01    	vinsertf128 ymm6,ymm6,xmm10,0x1
  ac8bed:	c4 41 7d 15 d1       	vunpckhpd ymm10,ymm0,ymm9
  ac8bf2:	c4 c1 7d 14 c1       	vunpcklpd ymm0,ymm0,ymm9
  ac8bf7:	c5 6d 15 ce          	vunpckhpd ymm9,ymm2,ymm6
  ac8bfb:	c4 41 2c c6 c9 88    	vshufps ymm9,ymm10,ymm9,0x88
  ac8c01:	c5 ed 14 d6          	vunpcklpd ymm2,ymm2,ymm6
  ac8c05:	c5 fc c6 f2 88       	vshufps ymm6,ymm0,ymm2,0x88
  ac8c0a:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ac8c0f:	c5 fc c6 c2 dd       	vshufps ymm0,ymm0,ymm2,0xdd
  ac8c14:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  ac8c19:	c4 c1 34 c6 d1 d8    	vshufps ymm2,ymm9,ymm9,0xd8
  ac8c1f:	c5 d8 5c c9          	vsubps xmm1,xmm4,xmm1
  ac8c23:	62 f3 5d 20 18 c9 01 	vinsertf32x4 ymm1,ymm20,xmm1,0x1
  ac8c2a:	c4 c1 38 5c e5       	vsubps xmm4,xmm8,xmm13
  ac8c2f:	62 f3 6d 20 18 e4 01 	vinsertf32x4 ymm4,ymm18,xmm4,0x1
  ac8c36:	62 31 1c 08 5c c0    	vsubps xmm8,xmm12,xmm16
  ac8c3c:	c4 c3 45 18 f8 01    	vinsertf128 ymm7,ymm7,xmm8,0x1
  ac8c42:	62 f1 4c 00 5c db    	vsubps xmm3,xmm22,xmm3
  ac8c48:	c4 e3 55 18 db 01    	vinsertf128 ymm3,ymm5,xmm3,0x1
  ac8c4e:	c5 f5 15 ef          	vunpckhpd ymm5,ymm1,ymm7
  ac8c52:	c5 f5 14 cf          	vunpcklpd ymm1,ymm1,ymm7
  ac8c56:	c5 dd 15 fb          	vunpckhpd ymm7,ymm4,ymm3
  ac8c5a:	c5 d4 c6 ef 88       	vshufps ymm5,ymm5,ymm7,0x88
  ac8c5f:	c5 dd 14 db          	vunpcklpd ymm3,ymm4,ymm3
  ac8c63:	c5 f4 c6 e3 88       	vshufps ymm4,ymm1,ymm3,0x88
  ac8c68:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ac8c6d:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  ac8c72:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  ac8c77:	c5 d4 c6 dd d8       	vshufps ymm3,ymm5,ymm5,0xd8
  ac8c7c:	c5 fc 10 6a 40       	vmovups ymm5,YMMWORD PTR [rdx+0x40]
  ac8c81:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  ac8c86:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  ac8c8d:	00 
  ac8c8e:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  ac8c95:	00 
  ac8c96:	c5 74 59 d5          	vmulps ymm10,ymm1,ymm5
  ac8c9a:	c4 62 7d b8 d7       	vfmadd231ps ymm10,ymm0,ymm7
  ac8c9f:	c5 3c 59 db          	vmulps ymm11,ymm8,ymm3
  ac8ca3:	c4 42 6d b8 d9       	vfmadd231ps ymm11,ymm2,ymm9
  ac8ca8:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  ac8cad:	c4 62 7d 18 2d aa c7 	vbroadcastss ymm13,DWORD PTR [rip+0xffffffffff5ac7aa]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ac8cb4:	5a ff 
  ac8cb6:	c4 41 7c 28 f5       	vmovaps ymm14,ymm13
  ac8cbb:	c4 62 1d ac f4       	vfnmadd213ps ymm14,ymm12,ymm4
  ac8cc0:	c5 fc 59 c5          	vmulps ymm0,ymm0,ymm5
  ac8cc4:	c4 e2 75 bc c7       	vfnmadd231ps ymm0,ymm1,ymm7
  ac8cc9:	c5 bc 59 ca          	vmulps ymm1,ymm8,ymm2
  ac8ccd:	c4 c2 65 bc c9       	vfnmadd231ps ymm1,ymm3,ymm9
  ac8cd2:	c4 e2 7d 18 15 f9 c5 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff5ac5f9]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ac8cd9:	5a ff 
  ac8cdb:	c5 fc 5c d9          	vsubps ymm3,ymm0,ymm1
  ac8cdf:	c5 e4 59 da          	vmulps ymm3,ymm3,ymm2
  ac8ce3:	c5 8c 58 eb          	vaddps ymm5,ymm14,ymm3
  ac8ce7:	c5 fc 58 c1          	vaddps ymm0,ymm0,ymm1
  ac8ceb:	c4 62 7d ac ee       	vfnmadd213ps ymm13,ymm0,ymm6
  ac8cf0:	c4 c1 2c 5c cb       	vsubps ymm1,ymm10,ymm11
  ac8cf5:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  ac8cf9:	c5 94 5c d1          	vsubps ymm2,ymm13,ymm1
  ac8cfd:	c5 8c 5c db          	vsubps ymm3,ymm14,ymm3
  ac8d01:	c5 94 58 c9          	vaddps ymm1,ymm13,ymm1
  ac8d05:	c5 9c 58 e4          	vaddps ymm4,ymm12,ymm4
  ac8d09:	c5 cc 58 c0          	vaddps ymm0,ymm6,ymm0
  ac8d0d:	c5 fc 28 35 8b cb 5a 	vmovaps ymm6,YMMWORD PTR [rip+0xffffffffff5acb8b]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  ac8d14:	ff 
  ac8d15:	c5 fc 28 fc          	vmovaps ymm7,ymm4
  ac8d19:	62 f2 4d 28 7f f8    	vpermt2ps ymm7,ymm6,ymm0
  ac8d1f:	c5 7c 28 05 b9 e4 5a 	vmovaps ymm8,YMMWORD PTR [rip+0xffffffffff5ae4b9]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  ac8d26:	ff 
  ac8d27:	62 f2 3d 28 7f e0    	vpermt2ps ymm4,ymm8,ymm0
  ac8d2d:	c5 fc 11 26          	vmovups YMMWORD PTR [rsi],ymm4
  ac8d31:	c5 fc 11 7e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm7
  ac8d36:	c5 fc 28 c3          	vmovaps ymm0,ymm3
  ac8d3a:	62 f2 4d 28 7f c1    	vpermt2ps ymm0,ymm6,ymm1
  ac8d40:	62 f2 3d 28 7f d9    	vpermt2ps ymm3,ymm8,ymm1
  ac8d46:	c5 fc 11 5e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm3
  ac8d4b:	c5 fc 11 46 60       	vmovups YMMWORD PTR [rsi+0x60],ymm0
  ac8d50:	62 f2 55 28 77 f2    	vpermi2ps ymm6,ymm5,ymm2
  ac8d56:	62 f2 3d 28 7f ea    	vpermt2ps ymm5,ymm8,ymm2
  ac8d5c:	c5 fc 11 ae 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm5
  ac8d63:	00 
  ac8d64:	c5 fc 11 b6 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm6
  ac8d6b:	00 
  ac8d6c:	c5 f8 77             	vzeroupper
  ac8d6f:	c3                   	ret
