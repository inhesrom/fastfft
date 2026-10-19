
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a247c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a247c0:	48 81 ec 48 04 00 00 	sub    rsp,0x448
  a247c7:	62 f1 7c 48 10 1f    	vmovups zmm3,ZMMWORD PTR [rdi]
  a247cd:	c5 f8 10 4f 40       	vmovups xmm1,XMMWORD PTR [rdi+0x40]
  a247d2:	62 f1 7c 48 28 15 24 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff66bb24]        # 90300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d7b0>
  a247d9:	bb 66 ff 
  a247dc:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a247e2:	62 f2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm1
  a247e8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a247ef:	ff 
  a247f0:	62 f1 7c 48 28 05 46 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff66bb46]        # 90340 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d7f0>
  a247f7:	bb 66 ff 
  a247fa:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a24800:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a24807:	62 f1 7c 48 10 9f 50 	vmovups zmm3,ZMMWORD PTR [rdi+0x50]
  a2480e:	00 00 00 
  a24811:	c5 f8 10 8f 90 00 00 	vmovups xmm1,XMMWORD PTR [rdi+0x90]
  a24818:	00 
  a24819:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a2481f:	62 f2 6d 48 7f e1    	vpermt2ps zmm4,zmm2,zmm1
  a24825:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a2482b:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm4
  a24832:	09 
  a24833:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a24839:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a2483f:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm3
  a24846:	0a 
  a24847:	62 f1 7c 48 10 9f a0 	vmovups zmm3,ZMMWORD PTR [rdi+0xa0]
  a2484e:	00 00 00 
  a24851:	c5 f8 10 8f e0 00 00 	vmovups xmm1,XMMWORD PTR [rdi+0xe0]
  a24858:	00 
  a24859:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a2485f:	62 f2 6d 48 7f e1    	vpermt2ps zmm4,zmm2,zmm1
  a24865:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm4
  a2486c:	03 
  a2486d:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a24873:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a2487a:	fe 
  a2487b:	62 f1 7c 48 10 9f f0 	vmovups zmm3,ZMMWORD PTR [rdi+0xf0]
  a24882:	00 00 00 
  a24885:	c5 f8 10 8f 30 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x130]
  a2488c:	00 
  a2488d:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a24893:	62 f2 6d 48 7f e1    	vpermt2ps zmm4,zmm2,zmm1
  a24899:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm4
  a248a0:	0e 
  a248a1:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a248a7:	62 71 7c 48 28 fb    	vmovaps zmm15,zmm3
  a248ad:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm3
  a248b4:	07 
  a248b5:	62 f1 7c 48 10 67 05 	vmovups zmm4,ZMMWORD PTR [rdi+0x140]
  a248bc:	c5 f8 10 8f 80 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x180]
  a248c3:	00 
  a248c4:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a248ca:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a248d0:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm3
  a248d7:	05 
  a248d8:	62 f2 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm1
  a248de:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm4
  a248e5:	04 
  a248e6:	62 e1 7c 48 10 97 90 	vmovups zmm18,ZMMWORD PTR [rdi+0x190]
  a248ed:	01 00 00 
  a248f0:	c5 f8 10 8f d0 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x1d0]
  a248f7:	00 
  a248f8:	62 b1 7c 48 28 da    	vmovaps zmm3,zmm18
  a248fe:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a24904:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a2490a:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm3
  a24911:	08 
  a24912:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a24918:	62 e1 7c 48 10 af e0 	vmovups zmm21,ZMMWORD PTR [rdi+0x1e0]
  a2491f:	01 00 00 
  a24922:	c5 f8 10 8f 20 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x220]
  a24929:	00 
  a2492a:	62 b1 7c 48 28 dd    	vmovaps zmm3,zmm21
  a24930:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a24936:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm3
  a2493d:	02 
  a2493e:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a24944:	62 e1 7c 48 10 87 30 	vmovups zmm16,ZMMWORD PTR [rdi+0x230]
  a2494b:	02 00 00 
  a2494e:	c5 f8 10 8f 70 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x270]
  a24955:	00 
  a24956:	62 b1 7c 48 28 d8    	vmovaps zmm3,zmm16
  a2495c:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a24962:	62 61 7c 48 28 db    	vmovaps zmm27,zmm3
  a24968:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm3
  a2496f:	06 
  a24970:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a24976:	62 e1 7c 48 10 4f 0a 	vmovups zmm17,ZMMWORD PTR [rdi+0x280]
  a2497d:	c5 f8 10 8f c0 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x2c0]
  a24984:	00 
  a24985:	62 b1 7c 48 28 d9    	vmovaps zmm3,zmm17
  a2498b:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a24991:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a24998:	01 
  a24999:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a2499f:	62 e1 7c 48 10 a7 d0 	vmovups zmm20,ZMMWORD PTR [rdi+0x2d0]
  a249a6:	02 00 00 
  a249a9:	c5 f8 10 8f 10 03 00 	vmovups xmm1,XMMWORD PTR [rdi+0x310]
  a249b0:	00 
  a249b1:	62 a1 7c 48 28 fc    	vmovaps zmm23,zmm20
  a249b7:	62 e2 6d 48 7f f9    	vpermt2ps zmm23,zmm2,zmm1
  a249bd:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a249c3:	62 e1 7c 48 10 9f 20 	vmovups zmm19,ZMMWORD PTR [rdi+0x320]
  a249ca:	03 00 00 
  a249cd:	c5 f8 10 8f 60 03 00 	vmovups xmm1,XMMWORD PTR [rdi+0x360]
  a249d4:	00 
  a249d5:	62 b1 7c 48 28 db    	vmovaps zmm3,zmm19
  a249db:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a249e1:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm3
  a249e8:	10 
  a249e9:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a249ef:	62 61 7c 48 10 87 70 	vmovups zmm24,ZMMWORD PTR [rdi+0x370]
  a249f6:	03 00 00 
  a249f9:	c5 f8 10 8f b0 03 00 	vmovups xmm1,XMMWORD PTR [rdi+0x3b0]
  a24a00:	00 
  a24a01:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a24a07:	62 62 6d 48 7f d1    	vpermt2ps zmm26,zmm2,zmm1
  a24a0d:	62 62 7d 48 7f c1    	vpermt2ps zmm24,zmm0,zmm1
  a24a13:	62 61 7c 48 10 4f 0f 	vmovups zmm25,ZMMWORD PTR [rdi+0x3c0]
  a24a1a:	c5 f8 10 8f 00 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x400]
  a24a21:	00 
  a24a22:	62 81 7c 48 28 f1    	vmovaps zmm22,zmm25
  a24a28:	62 e2 6d 48 7f f1    	vpermt2ps zmm22,zmm2,zmm1
  a24a2e:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a24a34:	62 61 7c 48 10 b7 10 	vmovups zmm30,ZMMWORD PTR [rdi+0x410]
  a24a3b:	04 00 00 
  a24a3e:	c5 f8 10 8f 50 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x450]
  a24a45:	00 
  a24a46:	62 01 7c 48 28 fe    	vmovaps zmm31,zmm30
  a24a4c:	62 62 6d 48 7f f9    	vpermt2ps zmm31,zmm2,zmm1
  a24a52:	62 62 7d 48 7f f1    	vpermt2ps zmm30,zmm0,zmm1
  a24a58:	62 61 7c 48 10 a7 60 	vmovups zmm28,ZMMWORD PTR [rdi+0x460]
  a24a5f:	04 00 00 
  a24a62:	c5 f8 10 8f a0 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x4a0]
  a24a69:	00 
  a24a6a:	62 01 7c 48 28 ec    	vmovaps zmm29,zmm28
  a24a70:	62 62 6d 48 7f e9    	vpermt2ps zmm29,zmm2,zmm1
  a24a76:	62 62 7d 48 7f e1    	vpermt2ps zmm28,zmm0,zmm1
  a24a7c:	62 71 7c 48 10 97 b0 	vmovups zmm10,ZMMWORD PTR [rdi+0x4b0]
  a24a83:	04 00 00 
  a24a86:	c5 f8 10 8f f0 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x4f0]
  a24a8d:	00 
  a24a8e:	62 f2 2d 48 77 d1    	vpermi2ps zmm2,zmm10,zmm1
  a24a94:	62 72 7d 48 7f d1    	vpermt2ps zmm10,zmm0,zmm1
  a24a9a:	62 31 4c 48 5c f7    	vsubps zmm14,zmm6,zmm23
  a24aa0:	62 11 6c 40 5c ee    	vsubps zmm13,zmm18,zmm30
  a24aa6:	62 d1 0c 48 58 fd    	vaddps zmm7,zmm14,zmm13
  a24aac:	62 31 54 48 5c e4    	vsubps zmm12,zmm5,zmm20
  a24ab2:	62 71 04 40 5c dc    	vsubps zmm11,zmm31,zmm4
  a24ab8:	62 51 24 48 58 cc    	vaddps zmm9,zmm11,zmm12
  a24abe:	62 72 7d 48 18 05 9c 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff650b9c]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a24ac5:	0b 65 ff 
  a24ac8:	62 d1 34 48 59 c0    	vmulps zmm0,zmm9,zmm8
  a24ace:	62 f2 7d 48 18 35 28 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff650c28]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a24ad5:	0c 65 ff 
  a24ad8:	62 f2 45 48 b8 c6    	vfmadd231ps zmm0,zmm7,zmm6
  a24ade:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a24ae5:	0f 
  a24ae6:	62 f1 34 48 59 c6    	vmulps zmm0,zmm9,zmm6
  a24aec:	62 f2 3d 48 bc c7    	vfnmadd231ps zmm0,zmm8,zmm7
  a24af2:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a24af9:	0d 
  a24afa:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x380]
  a24b01:	0e 
  a24b02:	62 91 34 48 5c ea    	vsubps zmm5,zmm9,zmm26
  a24b08:	62 d1 7c 40 5c e2    	vsubps zmm4,zmm16,zmm10
  a24b0e:	62 f1 54 48 58 c4    	vaddps zmm0,zmm5,zmm4
  a24b14:	62 91 04 48 5c d8    	vsubps zmm3,zmm15,zmm24
  a24b1a:	62 91 6c 48 5c cb    	vsubps zmm1,zmm2,zmm27
  a24b20:	62 f1 74 48 58 fb    	vaddps zmm7,zmm1,zmm3
  a24b26:	62 61 44 48 59 de    	vmulps zmm27,zmm7,zmm6
  a24b2c:	62 42 7d 48 b8 d8    	vfmadd231ps zmm27,zmm0,zmm8
  a24b32:	62 51 44 48 59 f8    	vmulps zmm15,zmm7,zmm8
  a24b38:	62 72 4d 48 bc f8    	vfnmadd231ps zmm15,zmm6,zmm0
  a24b3e:	62 d1 0c 48 5c c5    	vsubps zmm0,zmm14,zmm13
  a24b44:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a24b4a:	62 f1 54 48 5c ec    	vsubps zmm5,zmm5,zmm4
  a24b50:	62 71 64 48 5c e1    	vsubps zmm12,zmm3,zmm1
  a24b56:	62 f1 24 48 59 ce    	vmulps zmm1,zmm11,zmm6
  a24b5c:	62 d2 7d 48 b8 c8    	vfmadd231ps zmm1,zmm0,zmm8
  a24b62:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm1
  a24b69:	0c 
  a24b6a:	62 d1 24 48 59 c8    	vmulps zmm1,zmm11,zmm8
  a24b70:	62 f2 4d 48 bc c8    	vfnmadd231ps zmm1,zmm6,zmm0
  a24b76:	62 d1 1c 48 59 c0    	vmulps zmm0,zmm12,zmm8
  a24b7c:	62 f2 55 48 b8 c6    	vfmadd231ps zmm0,zmm5,zmm6
  a24b82:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a24b89:	0b 
  a24b8a:	62 d1 54 48 59 e0    	vmulps zmm4,zmm5,zmm8
  a24b90:	62 f2 1d 48 bc e6    	vfnmadd231ps zmm4,zmm12,zmm6
  a24b96:	62 f1 44 40 58 6c 24 	vaddps zmm5,zmm23,ZMMWORD PTR [rsp+0x240]
  a24b9d:	09 
  a24b9e:	62 f1 04 40 58 74 24 	vaddps zmm6,zmm31,ZMMWORD PTR [rsp+0x200]
  a24ba5:	08 
  a24ba6:	62 11 34 48 58 c2    	vaddps zmm8,zmm9,zmm26
  a24bac:	62 f1 6c 48 58 54 24 	vaddps zmm2,zmm2,ZMMWORD PTR [rsp+0x180]
  a24bb3:	06 
  a24bb4:	62 71 5c 40 58 5c 24 	vaddps zmm11,zmm20,ZMMWORD PTR [rsp+0x280]
  a24bbb:	0a 
  a24bbc:	62 11 6c 40 58 e6    	vaddps zmm12,zmm18,zmm30
  a24bc2:	62 71 3c 40 58 6c 24 	vaddps zmm13,zmm24,ZMMWORD PTR [rsp+0x1c0]
  a24bc9:	07 
  a24bca:	62 51 7c 40 58 d2    	vaddps zmm10,zmm16,zmm10
  a24bd0:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a24bd7:	ff 
  a24bd8:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x40]
  a24bdf:	01 
  a24be0:	62 71 7c 48 58 f3    	vaddps zmm14,zmm0,zmm3
  a24be6:	62 e1 7c 48 5c c3    	vsubps zmm16,zmm0,zmm3
  a24bec:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a24bf3:	04 
  a24bf4:	62 81 7c 48 58 d1    	vaddps zmm18,zmm0,zmm25
  a24bfa:	62 81 7c 48 5c e1    	vsubps zmm20,zmm0,zmm25
  a24c00:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a24c07:	03 
  a24c08:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x400]
  a24c0f:	10 
  a24c10:	62 e1 7c 48 58 fb    	vaddps zmm23,zmm0,zmm3
  a24c16:	62 61 7c 48 5c c3    	vsubps zmm24,zmm0,zmm3
  a24c1c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a24c23:	fe 
  a24c24:	62 21 7c 48 58 cb    	vaddps zmm25,zmm0,zmm19
  a24c2a:	62 a1 7c 48 5c db    	vsubps zmm19,zmm0,zmm19
  a24c30:	62 01 54 40 58 d4    	vaddps zmm26,zmm21,zmm28
  a24c36:	62 81 54 40 5c ec    	vsubps zmm21,zmm21,zmm28
  a24c3c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a24c43:	02 
  a24c44:	62 01 7c 48 58 e5    	vaddps zmm28,zmm0,zmm29
  a24c4a:	62 01 7c 48 5c ed    	vsubps zmm29,zmm0,zmm29
  a24c50:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a24c57:	62 21 7c 48 58 f1    	vaddps zmm30,zmm0,zmm17
  a24c5d:	62 a1 7c 48 5c c9    	vsubps zmm17,zmm0,zmm17
  a24c63:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a24c6a:	05 
  a24c6b:	62 21 7c 48 58 fe    	vaddps zmm31,zmm0,zmm22
  a24c71:	62 e1 4c 40 5c f0    	vsubps zmm22,zmm22,zmm0
  a24c77:	62 b1 3c 40 58 c3    	vaddps zmm0,zmm24,zmm19
  a24c7d:	62 81 64 40 5c d8    	vsubps zmm19,zmm19,zmm24
  a24c83:	62 01 54 40 5c c5    	vsubps zmm24,zmm21,zmm29
  a24c89:	62 a1 14 40 58 ed    	vaddps zmm21,zmm29,zmm21
  a24c8f:	62 01 0c 48 58 ef    	vaddps zmm29,zmm14,zmm31
  a24c95:	62 11 0c 48 5c f7    	vsubps zmm14,zmm14,zmm31
  a24c9b:	62 01 34 40 58 fa    	vaddps zmm31,zmm25,zmm26
  a24ca1:	62 01 34 40 5c ca    	vsubps zmm25,zmm25,zmm26
  a24ca7:	62 61 54 48 58 d6    	vaddps zmm26,zmm5,zmm6
  a24cad:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a24cb3:	62 d1 24 48 58 f4    	vaddps zmm6,zmm11,zmm12
  a24cb9:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a24cbf:	62 51 14 48 58 e2    	vaddps zmm12,zmm13,zmm10
  a24cc5:	62 51 14 48 5c d2    	vsubps zmm10,zmm13,zmm10
  a24ccb:	62 71 3c 48 58 ea    	vaddps zmm13,zmm8,zmm2
  a24cd1:	62 f1 3c 48 5c d2    	vsubps zmm2,zmm8,zmm2
  a24cd7:	62 31 0c 40 58 c2    	vaddps zmm8,zmm30,zmm18
  a24cdd:	62 a1 0c 40 5c d2    	vsubps zmm18,zmm30,zmm18
  a24ce3:	62 01 44 40 58 f4    	vaddps zmm30,zmm23,zmm28
  a24ce9:	62 a1 1c 40 5c ff    	vsubps zmm23,zmm28,zmm23
  a24cef:	62 41 54 48 58 e3    	vaddps zmm28,zmm5,zmm11
  a24cf5:	62 f1 24 48 5c ed    	vsubps zmm5,zmm11,zmm5
  a24cfb:	62 71 2c 48 5c da    	vsubps zmm11,zmm10,zmm2
  a24d01:	62 d1 6c 48 58 d2    	vaddps zmm2,zmm2,zmm10
  a24d07:	62 72 7d 48 18 15 8b 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff65068b]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a24d0e:	06 65 ff 
  a24d11:	62 d1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm10
  a24d17:	62 41 3c 40 59 c2    	vmulps zmm24,zmm24,zmm10
  a24d1d:	62 c1 64 40 59 da    	vmulps zmm19,zmm19,zmm10
  a24d23:	62 c1 54 40 59 ea    	vmulps zmm21,zmm21,zmm10
  a24d29:	62 41 1c 40 59 e2    	vmulps zmm28,zmm28,zmm10
  a24d2f:	62 51 24 48 59 da    	vmulps zmm11,zmm11,zmm10
  a24d35:	62 d1 54 48 59 ea    	vmulps zmm5,zmm5,zmm10
  a24d3b:	62 d1 6c 48 59 fa    	vmulps zmm7,zmm2,zmm10
  a24d41:	62 31 7c 40 58 d4    	vaddps zmm10,zmm16,zmm20
  a24d47:	62 a1 7c 40 5c c4    	vsubps zmm16,zmm16,zmm20
  a24d4d:	62 a1 64 40 5c e5    	vsubps zmm20,zmm19,zmm21
  a24d53:	62 a1 64 40 58 dd    	vaddps zmm19,zmm19,zmm21
  a24d59:	62 a1 4c 40 58 e9    	vaddps zmm21,zmm22,zmm17
  a24d5f:	62 a1 74 40 5c ce    	vsubps zmm17,zmm17,zmm22
  a24d65:	62 81 7c 48 58 f0    	vaddps zmm22,zmm0,zmm24
  a24d6b:	62 f1 3c 40 5c c0    	vsubps zmm0,zmm24,zmm0
  a24d71:	62 01 14 40 58 c6    	vaddps zmm24,zmm29,zmm30
  a24d77:	62 91 14 40 5c d6    	vsubps zmm2,zmm29,zmm30
  a24d7d:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a24d84:	62 41 4c 48 58 f4    	vaddps zmm30,zmm6,zmm12
  a24d8a:	62 d1 4c 48 5c d4    	vsubps zmm2,zmm6,zmm12
  a24d90:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a24d97:	ff 
  a24d98:	62 91 3c 48 58 df    	vaddps zmm3,zmm8,zmm31
  a24d9e:	62 91 3c 48 5c d7    	vsubps zmm2,zmm8,zmm31
  a24da4:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a24dab:	fe 
  a24dac:	62 51 2c 40 58 c5    	vaddps zmm8,zmm26,zmm13
  a24db2:	62 91 14 48 5c d2    	vsubps zmm2,zmm13,zmm26
  a24db8:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a24dbf:	02 
  a24dc0:	62 21 2c 48 58 d6    	vaddps zmm26,zmm10,zmm22
  a24dc6:	62 b1 2c 48 5c d6    	vsubps zmm2,zmm10,zmm22
  a24dcc:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a24dd3:	01 
  a24dd4:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x340]
  a24ddb:	0d 
  a24ddc:	62 51 6c 48 58 d7    	vaddps zmm10,zmm2,zmm15
  a24de2:	62 41 6c 48 5c ff    	vsubps zmm31,zmm2,zmm15
  a24de8:	62 31 54 40 58 cc    	vaddps zmm9,zmm21,zmm20
  a24dee:	62 21 54 40 5c ec    	vsubps zmm29,zmm21,zmm20
  a24df4:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x3c0]
  a24dfb:	0f 
  a24dfc:	62 81 6c 48 58 e3    	vaddps zmm20,zmm2,zmm27
  a24e02:	62 61 24 40 5c da    	vsubps zmm27,zmm27,zmm2
  a24e08:	62 91 0c 48 58 f1    	vaddps zmm6,zmm14,zmm25
  a24e0e:	62 81 0c 48 5c f1    	vsubps zmm22,zmm14,zmm25
  a24e14:	62 61 54 48 5c cf    	vsubps zmm25,zmm5,zmm7
  a24e1a:	62 e1 54 48 58 ef    	vaddps zmm21,zmm5,zmm7
  a24e20:	62 b1 44 40 58 ea    	vaddps zmm5,zmm23,zmm18
  a24e26:	62 a1 6c 40 5c ff    	vsubps zmm23,zmm18,zmm23
  a24e2c:	62 c1 1c 40 58 d3    	vaddps zmm18,zmm28,zmm11
  a24e32:	62 01 24 48 5c e4    	vsubps zmm28,zmm11,zmm28
  a24e38:	62 31 7c 40 58 db    	vaddps zmm11,zmm16,zmm19
  a24e3e:	62 31 7c 40 5c f3    	vsubps zmm14,zmm16,zmm19
  a24e44:	62 e1 74 48 58 dc    	vaddps zmm19,zmm1,zmm4
  a24e4a:	62 71 74 48 5c ec    	vsubps zmm13,zmm1,zmm4
  a24e50:	62 f1 74 40 58 c8    	vaddps zmm1,zmm17,zmm0
  a24e56:	62 71 74 40 5c e0    	vsubps zmm12,zmm17,zmm0
  a24e5c:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x300]
  a24e63:	0c 
  a24e64:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x2c0]
  a24e6b:	0b 
  a24e6c:	62 f1 6c 48 5c c4    	vsubps zmm0,zmm2,zmm4
  a24e72:	62 f1 6c 48 58 e4    	vaddps zmm4,zmm2,zmm4
  a24e78:	62 d1 3c 40 58 d0    	vaddps zmm2,zmm24,zmm8
  a24e7e:	62 51 3c 40 5c c0    	vsubps zmm8,zmm24,zmm8
  a24e84:	62 91 64 48 58 fe    	vaddps zmm7,zmm3,zmm30
  a24e8a:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm7
  a24e91:	03 
  a24e92:	62 01 64 48 5c f6    	vsubps zmm30,zmm3,zmm30
  a24e98:	62 b1 2c 40 58 dc    	vaddps zmm3,zmm26,zmm20
  a24e9e:	62 a1 2c 40 5c c4    	vsubps zmm16,zmm26,zmm20
  a24ea4:	62 41 34 48 58 c2    	vaddps zmm24,zmm9,zmm10
  a24eaa:	62 c1 34 48 5c ca    	vsubps zmm17,zmm9,zmm10
  a24eb0:	62 31 4c 48 58 fa    	vaddps zmm15,zmm6,zmm18
  a24eb6:	62 31 4c 48 5c ca    	vsubps zmm9,zmm6,zmm18
  a24ebc:	62 81 54 48 58 e1    	vaddps zmm20,zmm5,zmm25
  a24ec2:	62 81 54 48 5c d1    	vsubps zmm18,zmm5,zmm25
  a24ec8:	62 f1 24 48 58 e8    	vaddps zmm5,zmm11,zmm0
  a24ece:	62 f1 24 48 5c c0    	vsubps zmm0,zmm11,zmm0
  a24ed4:	62 31 74 48 58 d3    	vaddps zmm10,zmm1,zmm19
  a24eda:	62 b1 74 48 5c cb    	vsubps zmm1,zmm1,zmm19
  a24ee0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a24ee7:	04 
  a24ee8:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a24eef:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp-0x40]
  a24ef6:	ff 
  a24ef7:	62 f1 74 48 58 fe    	vaddps zmm7,zmm1,zmm6
  a24efd:	62 61 74 48 5c ce    	vsubps zmm25,zmm1,zmm6
  a24f03:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp-0x80]
  a24f0a:	fe 
  a24f0b:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x80]
  a24f12:	02 
  a24f13:	62 f1 24 48 58 ce    	vaddps zmm1,zmm11,zmm6
  a24f19:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a24f20:	05 
  a24f21:	62 d1 4c 48 5c cb    	vsubps zmm1,zmm6,zmm11
  a24f27:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a24f2e:	02 
  a24f2f:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a24f36:	01 
  a24f37:	62 91 74 48 58 f7    	vaddps zmm6,zmm1,zmm31
  a24f3d:	62 01 74 48 5c ff    	vsubps zmm31,zmm1,zmm31
  a24f43:	62 91 14 40 58 cb    	vaddps zmm1,zmm29,zmm27
  a24f49:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a24f50:	fe 
  a24f51:	62 91 14 40 5c cb    	vsubps zmm1,zmm29,zmm27
  a24f57:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a24f5e:	01 
  a24f5f:	62 b1 4c 40 58 cd    	vaddps zmm1,zmm22,zmm21
  a24f65:	62 a1 4c 40 5c ed    	vsubps zmm21,zmm22,zmm21
  a24f6b:	62 11 44 40 58 dc    	vaddps zmm11,zmm23,zmm28
  a24f71:	62 81 44 40 5c f4    	vsubps zmm22,zmm23,zmm28
  a24f77:	62 41 0c 48 58 e5    	vaddps zmm28,zmm14,zmm13
  a24f7d:	62 41 0c 48 5c ed    	vsubps zmm29,zmm14,zmm13
  a24f83:	62 71 1c 48 5c ec    	vsubps zmm13,zmm12,zmm4
  a24f89:	62 f1 1c 48 58 e4    	vaddps zmm4,zmm12,zmm4
  a24f8f:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a24f96:	ff 
  a24f97:	62 71 7c 48 28 35 df 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6a1fdf]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a24f9e:	1f 6a ff 
  a24fa1:	62 61 7c 48 28 d2    	vmovaps zmm26,zmm2
  a24fa7:	62 42 0d 48 7f d0    	vpermt2ps zmm26,zmm14,zmm8
  a24fad:	62 e1 7c 48 28 3d 09 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6a2009]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a24fb4:	20 6a ff 
  a24fb7:	62 d2 45 40 7f d0    	vpermt2ps zmm2,zmm23,zmm8
  a24fbd:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a24fc3:	62 32 0d 48 7f c0    	vpermt2ps zmm8,zmm14,zmm16
  a24fc9:	62 b2 45 40 7f d8    	vpermt2ps zmm3,zmm23,zmm16
  a24fcf:	62 d1 7c 48 28 e7    	vmovaps zmm4,zmm15
  a24fd5:	62 d2 0d 48 7f e1    	vpermt2ps zmm4,zmm14,zmm9
  a24fdb:	62 52 45 40 7f f9    	vpermt2ps zmm15,zmm23,zmm9
  a24fe1:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a24fe7:	62 72 0d 48 7f c8    	vpermt2ps zmm9,zmm14,zmm0
  a24fed:	62 f2 45 40 7f e8    	vpermt2ps zmm5,zmm23,zmm0
  a24ff3:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a24ff9:	62 92 0d 48 7f c1    	vpermt2ps zmm0,zmm14,zmm25
  a24fff:	62 92 45 40 7f f9    	vpermt2ps zmm7,zmm23,zmm25
  a25005:	62 61 7c 48 28 ce    	vmovaps zmm25,zmm6
  a2500b:	62 02 0d 48 7f cf    	vpermt2ps zmm25,zmm14,zmm31
  a25011:	62 92 45 40 7f f7    	vpermt2ps zmm6,zmm23,zmm31
  a25017:	62 61 7c 48 28 d9    	vmovaps zmm27,zmm1
  a2501d:	62 22 0d 48 7f dd    	vpermt2ps zmm27,zmm14,zmm21
  a25023:	62 b2 45 40 7f cd    	vpermt2ps zmm1,zmm23,zmm21
  a25029:	62 81 7c 48 28 c4    	vmovaps zmm16,zmm28
  a2502f:	62 82 0d 48 7f c5    	vpermt2ps zmm16,zmm14,zmm29
  a25035:	62 02 45 40 7f e5    	vpermt2ps zmm28,zmm23,zmm29
  a2503b:	62 61 7c 48 28 3d bb 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff6a1ebb]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a25042:	1e 6a ff 
  a25045:	62 81 7c 48 28 ea    	vmovaps zmm21,zmm26
  a2504b:	62 e2 05 40 7f e8    	vpermt2ps zmm21,zmm31,zmm0
  a25051:	62 71 7c 48 28 25 e5 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6a1ee5]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a25058:	1e 6a ff 
  a2505b:	62 62 1d 48 7f d0    	vpermt2ps zmm26,zmm12,zmm0
  a25061:	62 41 7c 48 28 e8    	vmovaps zmm29,zmm8
  a25067:	62 02 05 40 7f e9    	vpermt2ps zmm29,zmm31,zmm25
  a2506d:	62 12 1d 48 7f c1    	vpermt2ps zmm8,zmm12,zmm25
  a25073:	62 61 7c 48 28 cc    	vmovaps zmm25,zmm4
  a25079:	62 02 05 40 7f cb    	vpermt2ps zmm25,zmm31,zmm27
  a2507f:	62 92 1d 48 7f e3    	vpermt2ps zmm4,zmm12,zmm27
  a25085:	62 41 7c 48 28 d9    	vmovaps zmm27,zmm9
  a2508b:	62 22 05 40 7f d8    	vpermt2ps zmm27,zmm31,zmm16
  a25091:	62 32 1d 48 7f c8    	vpermt2ps zmm9,zmm12,zmm16
  a25097:	62 f2 05 40 7f d7    	vpermt2ps zmm2,zmm31,zmm7
  a2509d:	62 f2 05 40 7f de    	vpermt2ps zmm3,zmm31,zmm6
  a250a3:	62 72 05 40 7f f9    	vpermt2ps zmm15,zmm31,zmm1
  a250a9:	62 d1 ed 48 14 c7    	vunpcklpd zmm0,zmm2,zmm15
  a250af:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a250b6:	62 92 05 40 7f ec    	vpermt2ps zmm5,zmm31,zmm28
  a250bc:	62 61 e5 48 14 e5    	vunpcklpd zmm28,zmm3,zmm5
  a250c2:	62 81 d5 40 14 d9    	vunpcklpd zmm19,zmm21,zmm25
  a250c8:	62 91 d5 40 15 e9    	vunpckhpd zmm5,zmm21,zmm25
  a250ce:	62 91 95 40 14 d3    	vunpcklpd zmm2,zmm29,zmm27
  a250d4:	62 91 95 40 15 cb    	vunpckhpd zmm1,zmm29,zmm27
  a250da:	62 71 ad 40 14 fc    	vunpcklpd zmm15,zmm26,zmm4
  a250e0:	62 f1 ad 40 15 f4    	vunpckhpd zmm6,zmm26,zmm4
  a250e6:	62 41 bd 48 14 d1    	vunpcklpd zmm26,zmm8,zmm9
  a250ec:	62 41 bd 48 15 c9    	vunpckhpd zmm25,zmm8,zmm9
  a250f2:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0xc0]
  a250f9:	03 
  a250fa:	62 61 7c 48 28 dc    	vmovaps zmm27,zmm4
  a25100:	62 02 0d 48 7f de    	vpermt2ps zmm27,zmm14,zmm30
  a25106:	62 92 45 40 7f e6    	vpermt2ps zmm4,zmm23,zmm30
  a2510c:	62 e1 7c 48 28 c4    	vmovaps zmm16,zmm4
  a25112:	62 01 7c 48 28 e8    	vmovaps zmm29,zmm24
  a25118:	62 22 0d 48 7f e9    	vpermt2ps zmm29,zmm14,zmm17
  a2511e:	62 22 45 40 7f c1    	vpermt2ps zmm24,zmm23,zmm17
  a25124:	62 21 7c 48 28 f4    	vmovaps zmm30,zmm20
  a2512a:	62 22 0d 48 7f f2    	vpermt2ps zmm30,zmm14,zmm18
  a25130:	62 a2 45 40 7f e2    	vpermt2ps zmm20,zmm23,zmm18
  a25136:	62 c1 7c 48 28 d2    	vmovaps zmm18,zmm10
  a2513c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a25143:	04 
  a25144:	62 e2 0d 48 7f d0    	vpermt2ps zmm18,zmm14,zmm0
  a2514a:	62 72 45 40 7f d0    	vpermt2ps zmm10,zmm23,zmm0
  a25150:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x140]
  a25157:	05 
  a25158:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a2515e:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a25165:	02 
  a25166:	62 f2 0d 48 7f e0    	vpermt2ps zmm4,zmm14,zmm0
  a2516c:	62 f2 45 40 7f d8    	vpermt2ps zmm3,zmm23,zmm0
  a25172:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp-0x80]
  a25179:	fe 
  a2517a:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a25180:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a25187:	01 
  a25188:	62 f2 0d 48 7f f8    	vpermt2ps zmm7,zmm14,zmm0
  a2518e:	62 72 45 40 7f c0    	vpermt2ps zmm8,zmm23,zmm0
  a25194:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a2519a:	62 51 7c 48 28 c3    	vmovaps zmm8,zmm11
  a251a0:	62 32 0d 48 7f c6    	vpermt2ps zmm8,zmm14,zmm22
  a251a6:	62 32 45 40 7f de    	vpermt2ps zmm11,zmm23,zmm22
  a251ac:	62 e1 7c 48 28 0d 4a 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6a1c4a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a251b3:	1c 6a ff 
  a251b6:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp-0x40]
  a251bd:	ff 
  a251be:	62 52 15 48 77 f1    	vpermi2ps zmm14,zmm13,zmm9
  a251c4:	62 52 45 40 7f e9    	vpermt2ps zmm13,zmm23,zmm9
  a251ca:	62 31 7c 48 28 cb    	vmovaps zmm9,zmm19
  a251d0:	62 72 75 40 7f ca    	vpermt2ps zmm9,zmm17,zmm2
  a251d6:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm9
  a251dd:	ff 
  a251de:	62 e1 7c 48 28 2d 58 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6a1c58]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a251e5:	1c 6a ff 
  a251e8:	62 e2 55 40 7f da    	vpermt2ps zmm19,zmm21,zmm2
  a251ee:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm19
  a251f5:	03 
  a251f6:	62 e1 7c 48 28 f5    	vmovaps zmm22,zmm5
  a251fc:	62 e2 75 40 7f f1    	vpermt2ps zmm22,zmm17,zmm1
  a25202:	62 f2 55 40 7f e9    	vpermt2ps zmm5,zmm21,zmm1
  a25208:	62 c1 7c 48 28 df    	vmovaps zmm19,zmm15
  a2520e:	62 82 75 40 7f da    	vpermt2ps zmm19,zmm17,zmm26
  a25214:	62 12 55 40 7f fa    	vpermt2ps zmm15,zmm21,zmm26
  a2521a:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm15
  a25221:	fe 
  a25222:	62 61 7c 48 28 d6    	vmovaps zmm26,zmm6
  a25228:	62 02 75 40 7f d1    	vpermt2ps zmm26,zmm17,zmm25
  a2522e:	62 92 55 40 7f f1    	vpermt2ps zmm6,zmm21,zmm25
  a25234:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a2523b:	62 61 7c 48 28 c9    	vmovaps zmm25,zmm1
  a25241:	62 02 75 40 7f cc    	vpermt2ps zmm25,zmm17,zmm28
  a25247:	62 92 55 40 7f cc    	vpermt2ps zmm1,zmm21,zmm28
  a2524d:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a25254:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a2525a:	62 f2 05 40 7f cc    	vpermt2ps zmm1,zmm31,zmm4
  a25260:	62 62 1d 48 7f dc    	vpermt2ps zmm27,zmm12,zmm4
  a25266:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  a2526c:	62 f2 05 40 7f d7    	vpermt2ps zmm2,zmm31,zmm7
  a25272:	62 62 1d 48 7f ef    	vpermt2ps zmm29,zmm12,zmm7
  a25278:	62 91 7c 48 28 e6    	vmovaps zmm4,zmm30
  a2527e:	62 d2 05 40 7f e0    	vpermt2ps zmm4,zmm31,zmm8
  a25284:	62 42 1d 48 7f f0    	vpermt2ps zmm30,zmm12,zmm8
  a2528a:	62 b1 7c 48 28 fa    	vmovaps zmm7,zmm18
  a25290:	62 c2 1d 48 7f d6    	vpermt2ps zmm18,zmm12,zmm14
  a25296:	62 d2 05 40 7f fe    	vpermt2ps zmm7,zmm31,zmm14
  a2529c:	62 e2 05 40 7f c3    	vpermt2ps zmm16,zmm31,zmm3
  a252a2:	62 62 05 40 7f c0    	vpermt2ps zmm24,zmm31,zmm0
  a252a8:	62 c2 05 40 7f e3    	vpermt2ps zmm20,zmm31,zmm11
  a252ae:	62 31 fd 40 14 e4    	vunpcklpd zmm12,zmm16,zmm20
  a252b4:	62 52 05 40 7f d5    	vpermt2ps zmm10,zmm31,zmm13
  a252ba:	62 51 bd 40 14 ca    	vunpcklpd zmm9,zmm24,zmm10
  a252c0:	62 71 f5 48 14 dc    	vunpcklpd zmm11,zmm1,zmm4
  a252c6:	62 e1 f5 48 15 c4    	vunpckhpd zmm16,zmm1,zmm4
  a252cc:	62 f1 ed 48 14 cf    	vunpcklpd zmm1,zmm2,zmm7
  a252d2:	62 f1 ed 48 15 e7    	vunpckhpd zmm4,zmm2,zmm7
  a252d8:	62 11 a5 40 14 c6    	vunpcklpd zmm8,zmm27,zmm30
  a252de:	62 81 a5 40 15 e6    	vunpckhpd zmm20,zmm27,zmm30
  a252e4:	62 b1 95 40 14 fa    	vunpcklpd zmm7,zmm29,zmm18
  a252ea:	62 31 95 40 15 d2    	vunpckhpd zmm10,zmm29,zmm18
  a252f0:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a252f6:	62 f2 75 40 7f d1    	vpermt2ps zmm2,zmm17,zmm1
  a252fc:	62 72 55 40 7f d9    	vpermt2ps zmm11,zmm21,zmm1
  a25302:	62 b1 7c 48 28 c8    	vmovaps zmm1,zmm16
  a25308:	62 f2 75 40 7f cc    	vpermt2ps zmm1,zmm17,zmm4
  a2530e:	62 e2 55 40 7f c4    	vpermt2ps zmm16,zmm21,zmm4
  a25314:	62 d1 7c 48 28 e0    	vmovaps zmm4,zmm8
  a2531a:	62 f2 75 40 7f e7    	vpermt2ps zmm4,zmm17,zmm7
  a25320:	62 72 55 40 7f c7    	vpermt2ps zmm8,zmm21,zmm7
  a25326:	62 b1 7c 48 28 fc    	vmovaps zmm7,zmm20
  a2532c:	62 d2 75 40 7f fa    	vpermt2ps zmm7,zmm17,zmm10
  a25332:	62 c2 55 40 7f e2    	vpermt2ps zmm20,zmm21,zmm10
  a25338:	62 c2 1d 48 77 c9    	vpermi2ps zmm17,zmm12,zmm9
  a2533e:	62 52 55 40 7f e1    	vpermt2ps zmm12,zmm21,zmm9
  a25344:	62 e1 7c 48 10 7a 02 	vmovups zmm23,ZMMWORD PTR [rdx+0x80]
  a2534b:	62 e1 7c 48 10 6a 03 	vmovups zmm21,ZMMWORD PTR [rdx+0xc0]
  a25352:	62 71 7c 48 10 4a 04 	vmovups zmm9,ZMMWORD PTR [rdx+0x100]
  a25359:	62 61 7c 48 10 62 05 	vmovups zmm28,ZMMWORD PTR [rdx+0x140]
  a25360:	62 51 4c 40 59 d1    	vmulps zmm10,zmm22,zmm9
  a25366:	62 12 75 48 bc d4    	vfnmadd231ps zmm10,zmm1,zmm28
  a2536c:	62 61 7c 48 10 6a 11 	vmovups zmm29,ZMMWORD PTR [rdx+0x440]
  a25373:	62 71 7c 48 10 6a 09 	vmovups zmm13,ZMMWORD PTR [rdx+0x240]
  a2537a:	62 71 7c 48 10 72 08 	vmovups zmm14,ZMMWORD PTR [rdx+0x200]
  a25381:	62 51 64 40 59 fe    	vmulps zmm15,zmm19,zmm14
  a25387:	62 52 5d 48 bc fd    	vfnmadd231ps zmm15,zmm4,zmm13
  a2538d:	62 c1 5c 48 59 d6    	vmulps zmm18,zmm4,zmm14
  a25393:	62 f1 7c 48 10 62 0d 	vmovups zmm4,ZMMWORD PTR [rdx+0x340]
  a2539a:	62 a2 15 48 b8 d3    	vfmadd231ps zmm18,zmm13,zmm19
  a253a0:	62 71 7c 48 10 6a 0c 	vmovups zmm13,ZMMWORD PTR [rdx+0x300]
  a253a7:	62 41 2c 40 59 c5    	vmulps zmm24,zmm26,zmm13
  a253ad:	62 62 45 48 bc c4    	vfnmadd231ps zmm24,zmm7,zmm4
  a253b3:	62 c1 44 48 59 dd    	vmulps zmm19,zmm7,zmm13
  a253b9:	62 61 7c 48 10 72 10 	vmovups zmm30,ZMMWORD PTR [rdx+0x400]
  a253c0:	62 82 5d 48 b8 da    	vfmadd231ps zmm19,zmm4,zmm26
  a253c6:	62 01 34 40 59 d6    	vmulps zmm26,zmm25,zmm30
  a253cc:	62 02 75 40 bc d5    	vfnmadd231ps zmm26,zmm17,zmm29
  a253d2:	62 11 2c 48 5c ea    	vsubps zmm13,zmm10,zmm26
  a253d8:	62 41 74 48 59 d9    	vmulps zmm27,zmm1,zmm9
  a253de:	62 11 04 48 5c f0    	vsubps zmm14,zmm15,zmm24
  a253e4:	62 22 1d 40 b8 de    	vfmadd231ps zmm27,zmm28,zmm22
  a253ea:	62 72 7d 48 18 0d 64 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff650364]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a253f1:	03 65 ff 
  a253f4:	62 d1 0c 48 59 f9    	vmulps zmm7,zmm14,zmm9
  a253fa:	62 81 74 40 59 ce    	vmulps zmm17,zmm17,zmm30
  a25400:	62 82 15 40 b8 c9    	vfmadd231ps zmm17,zmm29,zmm25
  a25406:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a2540d:	62 f1 7c 48 10 62 0e 	vmovups zmm4,ZMMWORD PTR [rdx+0x380]
  a25414:	62 e1 5c 40 59 f4    	vmulps zmm22,zmm20,zmm4
  a2541a:	62 e2 4d 48 b8 f1    	vfmadd231ps zmm22,zmm6,zmm1
  a25420:	62 61 4c 48 59 e4    	vmulps zmm28,zmm6,zmm4
  a25426:	62 f1 7c 48 10 62 07 	vmovups zmm4,ZMMWORD PTR [rdx+0x1c0]
  a2542d:	62 22 75 48 bc e4    	vfnmadd231ps zmm28,zmm1,zmm20
  a25433:	62 f1 7c 48 10 4a 06 	vmovups zmm1,ZMMWORD PTR [rdx+0x180]
  a2543a:	62 61 7c 40 59 c9    	vmulps zmm25,zmm16,zmm1
  a25440:	62 62 55 48 b8 cc    	vfmadd231ps zmm25,zmm5,zmm4
  a25446:	62 61 54 48 59 f1    	vmulps zmm30,zmm5,zmm1
  a2544c:	62 f1 7c 48 10 4a 13 	vmovups zmm1,ZMMWORD PTR [rdx+0x4c0]
  a25453:	62 22 5d 48 bc f0    	vfnmadd231ps zmm30,zmm4,zmm16
  a25459:	62 f1 7c 48 10 62 12 	vmovups zmm4,ZMMWORD PTR [rdx+0x480]
  a25460:	62 61 1c 48 59 ec    	vmulps zmm29,zmm12,zmm4
  a25466:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a2546d:	62 62 7d 48 b8 e9    	vfmadd231ps zmm29,zmm0,zmm1
  a25473:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a25479:	62 f2 7d 48 18 2d 1d 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff64ff1d]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a25480:	ff 64 ff 
  a25483:	62 f2 15 48 b8 fd    	vfmadd231ps zmm7,zmm13,zmm5
  a25489:	62 d2 75 48 bc c4    	vfnmadd231ps zmm0,zmm1,zmm12
  a2548f:	62 b1 6c 40 58 e3    	vaddps zmm4,zmm18,zmm19
  a25495:	62 21 24 48 59 ff    	vmulps zmm31,zmm11,zmm23
  a2549b:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a254a2:	03 
  a254a3:	62 22 75 48 b8 fd    	vfmadd231ps zmm31,zmm1,zmm21
  a254a9:	62 31 74 48 59 e7    	vmulps zmm12,zmm1,zmm23
  a254af:	62 e1 7c 48 10 42 0b 	vmovups zmm16,ZMMWORD PTR [rdx+0x2c0]
  a254b6:	62 52 55 40 bc e3    	vfnmadd231ps zmm12,zmm21,zmm11
  a254bc:	62 f1 7c 48 10 4a 0a 	vmovups zmm1,ZMMWORD PTR [rdx+0x280]
  a254c3:	62 f1 3c 48 59 d9    	vmulps zmm3,zmm8,zmm1
  a254c9:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp-0x80]
  a254d0:	fe 
  a254d1:	62 b2 4d 48 b8 d8    	vfmadd231ps zmm3,zmm6,zmm16
  a254d7:	62 f1 4c 48 59 c9    	vmulps zmm1,zmm6,zmm1
  a254dd:	62 b1 24 40 58 f1    	vaddps zmm6,zmm27,zmm17
  a254e3:	62 d2 7d 40 bc c8    	vfnmadd231ps zmm1,zmm16,zmm8
  a254e9:	62 e2 7d 48 18 3d f5 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff6501f5]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a254f0:	01 65 ff 
  a254f3:	62 a1 7c 48 28 e7    	vmovaps zmm20,zmm23
  a254f9:	62 e2 4d 48 a8 e2    	vfmadd213ps zmm20,zmm6,zmm2
  a254ff:	62 11 04 48 58 c0    	vaddps zmm8,zmm15,zmm24
  a25505:	62 e2 7d 48 18 2d 35 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff650135]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a2550c:	01 65 ff 
  a2550f:	62 a2 5d 48 bc e5    	vfnmadd231ps zmm20,zmm4,zmm21
  a25515:	62 11 2c 48 58 d2    	vaddps zmm10,zmm10,zmm26
  a2551b:	62 01 14 40 58 c7    	vaddps zmm24,zmm29,zmm31
  a25521:	62 21 24 40 5c d1    	vsubps zmm26,zmm27,zmm17
  a25527:	62 81 4c 40 58 c1    	vaddps zmm16,zmm22,zmm25
  a2552d:	62 21 6c 40 5c db    	vsubps zmm27,zmm18,zmm19
  a25533:	62 51 7c 48 5c dc    	vsubps zmm11,zmm0,zmm12
  a25539:	62 51 7c 48 58 e4    	vaddps zmm12,zmm0,zmm12
  a2553f:	62 91 1c 40 5c c6    	vsubps zmm0,zmm28,zmm30
  a25545:	62 11 1c 40 58 fe    	vaddps zmm15,zmm28,zmm30
  a2554b:	62 a1 7c 48 28 cf    	vmovaps zmm17,zmm23
  a25551:	62 e2 7d 40 a8 cb    	vfmadd213ps zmm17,zmm16,zmm3
  a25557:	62 a2 3d 40 bc cd    	vfnmadd231ps zmm17,zmm24,zmm21
  a2555d:	62 81 4c 40 5c f1    	vsubps zmm22,zmm22,zmm25
  a25563:	62 c1 24 48 59 d1    	vmulps zmm18,zmm11,zmm9
  a25569:	62 e2 7d 48 b8 d5    	vfmadd231ps zmm18,zmm0,zmm5
  a2556f:	62 01 14 40 5c cf    	vsubps zmm25,zmm29,zmm31
  a25575:	62 a1 7c 48 28 df    	vmovaps zmm19,zmm23
  a2557b:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp-0x40]
  a25582:	ff 
  a25583:	62 82 2d 48 a8 de    	vfmadd213ps zmm19,zmm10,zmm30
  a25589:	62 a2 3d 48 bc dd    	vfnmadd231ps zmm19,zmm8,zmm21
  a2558f:	62 41 14 48 59 e1    	vmulps zmm28,zmm13,zmm9
  a25595:	62 42 55 48 bc e6    	vfnmadd231ps zmm28,zmm5,zmm14
  a2559b:	62 51 24 40 59 e9    	vmulps zmm13,zmm27,zmm9
  a255a1:	62 72 2d 40 b8 ed    	vfmadd231ps zmm13,zmm26,zmm5
  a255a7:	62 d1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm9
  a255ad:	62 d2 55 48 bc c3    	vfnmadd231ps zmm0,zmm5,zmm11
  a255b3:	62 31 7c 48 28 df    	vmovaps zmm11,zmm23
  a255b9:	62 72 05 48 a8 d9    	vfmadd213ps zmm11,zmm15,zmm1
  a255bf:	62 32 1d 48 bc dd    	vfnmadd231ps zmm11,zmm12,zmm21
  a255c5:	62 51 2c 40 59 f1    	vmulps zmm14,zmm26,zmm9
  a255cb:	62 12 55 48 bc f3    	vfnmadd231ps zmm14,zmm5,zmm27
  a255d1:	62 41 34 40 59 d1    	vmulps zmm26,zmm25,zmm9
  a255d7:	62 62 4d 40 b8 d5    	vfmadd231ps zmm26,zmm22,zmm5
  a255dd:	62 51 4c 40 59 c9    	vmulps zmm9,zmm22,zmm9
  a255e3:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a255e9:	62 e2 4d 48 ac f2    	vfnmadd213ps zmm22,zmm6,zmm2
  a255ef:	62 a2 5d 48 b8 f7    	vfmadd231ps zmm22,zmm4,zmm23
  a255f5:	62 72 35 40 bc cd    	vfnmadd231ps zmm9,zmm25,zmm5
  a255fb:	62 b1 7c 48 28 ed    	vmovaps zmm5,zmm21
  a25601:	62 f2 7d 40 ac eb    	vfnmadd213ps zmm5,zmm16,zmm3
  a25607:	62 b2 3d 40 b8 ef    	vfmadd231ps zmm5,zmm24,zmm23
  a2560d:	62 21 7c 48 28 cd    	vmovaps zmm25,zmm21
  a25613:	62 02 2d 48 ac ce    	vfnmadd213ps zmm25,zmm10,zmm30
  a25619:	62 22 3d 48 b8 cf    	vfmadd231ps zmm25,zmm8,zmm23
  a2561f:	62 e2 05 48 ac e9    	vfnmadd213ps zmm21,zmm15,zmm1
  a25625:	62 a2 1d 48 b8 ef    	vfmadd231ps zmm21,zmm12,zmm23
  a2562b:	62 a1 1c 40 58 fe    	vaddps zmm23,zmm28,zmm22
  a25631:	62 81 4c 40 5c f4    	vsubps zmm22,zmm22,zmm28
  a25637:	62 61 54 48 58 d8    	vaddps zmm27,zmm5,zmm0
  a2563d:	62 f1 54 48 5c e8    	vsubps zmm5,zmm5,zmm0
  a25643:	62 41 34 40 5c e6    	vsubps zmm28,zmm25,zmm14
  a25649:	62 51 34 40 58 f6    	vaddps zmm14,zmm25,zmm14
  a2564f:	62 41 54 40 5c c9    	vsubps zmm25,zmm21,zmm9
  a25655:	62 c1 54 40 58 e9    	vaddps zmm21,zmm21,zmm9
  a2565b:	62 21 44 48 58 ec    	vaddps zmm29,zmm7,zmm20
  a25661:	62 e1 5c 40 5c e7    	vsubps zmm20,zmm20,zmm7
  a25667:	62 b1 74 40 58 fa    	vaddps zmm7,zmm17,zmm18
  a2566d:	62 a1 74 40 5c ca    	vsubps zmm17,zmm17,zmm18
  a25673:	62 c1 64 40 5c d5    	vsubps zmm18,zmm19,zmm13
  a25679:	62 51 64 40 58 ed    	vaddps zmm13,zmm19,zmm13
  a2567f:	62 81 24 48 5c da    	vsubps zmm19,zmm11,zmm26
  a25685:	62 11 24 48 58 da    	vaddps zmm11,zmm11,zmm26
  a2568b:	62 f1 4c 48 58 c2    	vaddps zmm0,zmm6,zmm2
  a25691:	62 f1 5c 48 58 f0    	vaddps zmm6,zmm4,zmm0
  a25697:	62 b1 64 48 58 c0    	vaddps zmm0,zmm3,zmm16
  a2569d:	62 81 7c 48 58 c0    	vaddps zmm16,zmm0,zmm24
  a256a3:	62 d1 0c 40 58 c2    	vaddps zmm0,zmm30,zmm10
  a256a9:	62 41 7c 48 58 c0    	vaddps zmm24,zmm0,zmm8
  a256af:	62 f1 14 40 5c e7    	vsubps zmm4,zmm29,zmm7
  a256b5:	62 d1 74 48 58 cf    	vaddps zmm1,zmm1,zmm15
  a256bb:	62 b1 6c 40 5c c3    	vsubps zmm0,zmm18,zmm19
  a256c1:	62 51 74 48 58 e4    	vaddps zmm12,zmm1,zmm12
  a256c7:	62 11 44 40 58 cb    	vaddps zmm9,zmm23,zmm27
  a256cd:	62 71 14 40 58 ff    	vaddps zmm15,zmm29,zmm7
  a256d3:	62 91 1c 40 58 c9    	vaddps zmm1,zmm28,zmm25
  a256d9:	62 b1 6c 40 58 db    	vaddps zmm3,zmm18,zmm19
  a256df:	62 e1 4c 40 5c d5    	vsubps zmm18,zmm22,zmm5
  a256e5:	62 81 44 40 5c db    	vsubps zmm19,zmm23,zmm27
  a256eb:	62 b1 0c 48 5c d5    	vsubps zmm2,zmm14,zmm21
  a256f1:	62 91 1c 40 5c f9    	vsubps zmm7,zmm28,zmm25
  a256f7:	62 a1 5c 40 58 f9    	vaddps zmm23,zmm20,zmm17
  a256fd:	62 e1 4c 40 58 f5    	vaddps zmm22,zmm22,zmm5
  a25703:	62 d1 14 48 58 eb    	vaddps zmm5,zmm13,zmm11
  a25709:	62 31 0c 48 58 d5    	vaddps zmm10,zmm14,zmm21
  a2570f:	62 31 4c 48 5c f0    	vsubps zmm14,zmm6,zmm16
  a25715:	62 a1 5c 40 5c c9    	vsubps zmm17,zmm20,zmm17
  a2571b:	62 51 3c 40 5c c4    	vsubps zmm8,zmm24,zmm12
  a25721:	62 51 14 48 5c db    	vsubps zmm11,zmm13,zmm11
  a25727:	62 31 4c 48 58 e8    	vaddps zmm13,zmm6,zmm16
  a2572d:	62 51 3c 40 58 e4    	vaddps zmm12,zmm24,zmm12
  a25733:	62 f1 7c 48 28 35 43 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff66ac43]        # 90380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d830>
  a2573a:	ac 66 ff 
  a2573d:	62 c1 7c 48 28 c4    	vmovaps zmm16,zmm12
  a25743:	62 c2 4d 48 7f c5    	vpermt2ps zmm16,zmm6,zmm13
  a25749:	62 e1 7c 48 28 25 6d 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff66ac6d]        # 903c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d870>
  a25750:	ac 66 ff 
  a25753:	62 52 5d 40 7f e5    	vpermt2ps zmm12,zmm20,zmm13
  a25759:	62 51 7c 48 28 eb    	vmovaps zmm13,zmm11
  a2575f:	62 32 4d 48 7f e9    	vpermt2ps zmm13,zmm6,zmm17
  a25765:	62 32 5d 40 7f d9    	vpermt2ps zmm11,zmm20,zmm17
  a2576b:	62 c1 7c 48 28 ca    	vmovaps zmm17,zmm10
  a25771:	62 a2 4d 48 7f ce    	vpermt2ps zmm17,zmm6,zmm22
  a25777:	62 32 5d 40 7f d6    	vpermt2ps zmm10,zmm20,zmm22
  a2577d:	62 e1 7c 48 28 ef    	vmovaps zmm21,zmm7
  a25783:	62 a2 4d 48 7f eb    	vpermt2ps zmm21,zmm6,zmm19
  a25789:	62 b2 5d 40 7f fb    	vpermt2ps zmm7,zmm20,zmm19
  a2578f:	62 e1 7c 48 28 db    	vmovaps zmm19,zmm3
  a25795:	62 c2 4d 48 7f df    	vpermt2ps zmm19,zmm6,zmm15
  a2579b:	62 d2 5d 40 7f df    	vpermt2ps zmm3,zmm20,zmm15
  a257a1:	62 51 7c 48 28 f8    	vmovaps zmm15,zmm8
  a257a7:	62 52 4d 48 7f fe    	vpermt2ps zmm15,zmm6,zmm14
  a257ad:	62 52 5d 40 7f c6    	vpermt2ps zmm8,zmm20,zmm14
  a257b3:	62 71 7c 48 28 f5    	vmovaps zmm14,zmm5
  a257b9:	62 32 4d 48 7f f7    	vpermt2ps zmm14,zmm6,zmm23
  a257bf:	62 b2 5d 40 7f ef    	vpermt2ps zmm5,zmm20,zmm23
  a257c5:	62 e1 7c 48 28 f2    	vmovaps zmm22,zmm2
  a257cb:	62 a2 4d 48 7f f2    	vpermt2ps zmm22,zmm6,zmm18
  a257d1:	62 b2 5d 40 7f d2    	vpermt2ps zmm2,zmm20,zmm18
  a257d7:	62 e1 7c 48 28 d1    	vmovaps zmm18,zmm1
  a257dd:	62 c2 4d 48 7f d1    	vpermt2ps zmm18,zmm6,zmm9
  a257e3:	62 d2 5d 40 7f c9    	vpermt2ps zmm1,zmm20,zmm9
  a257e9:	62 f2 7d 48 77 f4    	vpermi2ps zmm6,zmm0,zmm4
  a257ef:	62 f2 5d 40 7f c4    	vpermt2ps zmm0,zmm20,zmm4
  a257f5:	62 71 7c 48 11 26    	vmovups ZMMWORD PTR [rsi],zmm12
  a257fb:	62 e1 7c 48 11 46 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm16
  a25802:	62 71 7c 48 11 5e 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm11
  a25809:	62 71 7c 48 11 6e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm13
  a25810:	62 71 7c 48 11 56 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm10
  a25817:	62 e1 7c 48 11 4e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm17
  a2581e:	62 f1 7c 48 11 7e 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm7
  a25825:	62 e1 7c 48 11 6e 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm21
  a2582c:	62 f1 7c 48 11 5e 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm3
  a25833:	62 e1 7c 48 11 5e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm19
  a2583a:	62 71 7c 48 11 46 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm8
  a25841:	62 71 7c 48 11 7e 0b 	vmovups ZMMWORD PTR [rsi+0x2c0],zmm15
  a25848:	62 f1 7c 48 11 6e 0c 	vmovups ZMMWORD PTR [rsi+0x300],zmm5
  a2584f:	62 71 7c 48 11 76 0d 	vmovups ZMMWORD PTR [rsi+0x340],zmm14
  a25856:	62 f1 7c 48 11 56 0e 	vmovups ZMMWORD PTR [rsi+0x380],zmm2
  a2585d:	62 e1 7c 48 11 76 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm22
  a25864:	62 f1 7c 48 11 4e 10 	vmovups ZMMWORD PTR [rsi+0x400],zmm1
  a2586b:	62 e1 7c 48 11 56 11 	vmovups ZMMWORD PTR [rsi+0x440],zmm18
  a25872:	62 f1 7c 48 11 46 12 	vmovups ZMMWORD PTR [rsi+0x480],zmm0
  a25879:	62 f1 7c 48 11 76 13 	vmovups ZMMWORD PTR [rsi+0x4c0],zmm6
  a25880:	48 81 c4 48 04 00 00 	add    rsp,0x448
  a25887:	c5 f8 77             	vzeroupper
  a2588a:	c3                   	ret
