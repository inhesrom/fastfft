
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a22980 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a22980:	48 81 ec 08 01 00 00 	sub    rsp,0x108
  a22987:	48 69 c2 60 03 00 00 	imul   rax,rdx,0x360
  a2298e:	31 d2                	xor    edx,edx
  a22990:	62 71 7c 48 10 3c 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1]
  a22997:	c5 fb 10 5c 17 40    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x40]
  a2299d:	62 51 7c 48 28 df    	vmovaps zmm11,zmm15
  a229a3:	62 f1 7c 48 28 05 53 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff66d753]        # 90100 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d5b0>
  a229aa:	d7 66 ff 
  a229ad:	62 72 7d 48 7f db    	vpermt2ps zmm11,zmm0,zmm3
  a229b3:	62 f1 7c 48 28 0d 83 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff66d783]        # 90140 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d5f0>
  a229ba:	d7 66 ff 
  a229bd:	62 72 75 48 7f fb    	vpermt2ps zmm15,zmm1,zmm3
  a229c3:	62 71 7c 48 10 a4 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x48]
  a229ca:	48 00 00 00 
  a229ce:	c5 fb 10 ac 17 88 00 	vmovsd xmm5,QWORD PTR [rdi+rdx*1+0x88]
  a229d5:	00 00 
  a229d7:	62 d1 7c 48 28 dc    	vmovaps zmm3,zmm12
  a229dd:	62 f2 7d 48 7f dd    	vpermt2ps zmm3,zmm0,zmm5
  a229e3:	62 72 75 48 7f e5    	vpermt2ps zmm12,zmm1,zmm5
  a229e9:	62 f1 7c 48 10 ac 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x90]
  a229f0:	90 00 00 00 
  a229f4:	c5 7b 10 ac 17 d0 00 	vmovsd xmm13,QWORD PTR [rdi+rdx*1+0xd0]
  a229fb:	00 00 
  a229fd:	62 e1 7c 48 28 dd    	vmovaps zmm19,zmm5
  a22a03:	62 c2 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm13
  a22a09:	62 d2 75 48 7f ed    	vpermt2ps zmm5,zmm1,zmm13
  a22a0f:	62 e1 7c 48 10 8c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0xd8]
  a22a16:	d8 00 00 00 
  a22a1a:	c5 7b 10 b4 17 18 01 	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x118]
  a22a21:	00 00 
  a22a23:	62 31 7c 48 28 e9    	vmovaps zmm13,zmm17
  a22a29:	62 52 7d 48 7f ee    	vpermt2ps zmm13,zmm0,zmm14
  a22a2f:	62 c2 75 48 7f ce    	vpermt2ps zmm17,zmm1,zmm14
  a22a35:	62 e1 7c 48 10 b4 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0x120]
  a22a3c:	20 01 00 00 
  a22a40:	c5 7b 10 b4 17 60 01 	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x160]
  a22a47:	00 00 
  a22a49:	62 a1 7c 48 28 e6    	vmovaps zmm20,zmm22
  a22a4f:	62 c2 7d 48 7f e6    	vpermt2ps zmm20,zmm0,zmm14
  a22a55:	62 c2 75 48 7f f6    	vpermt2ps zmm22,zmm1,zmm14
  a22a5b:	62 71 7c 48 10 b4 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x168]
  a22a62:	68 01 00 00 
  a22a66:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x1a8]
  a22a6d:	35 
  a22a6e:	62 41 7c 48 28 c6    	vmovaps zmm24,zmm14
  a22a74:	62 22 7d 48 7f c0    	vpermt2ps zmm24,zmm0,zmm16
  a22a7a:	62 32 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm16
  a22a80:	62 61 7c 48 10 8c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x1b0]
  a22a87:	b0 01 00 00 
  a22a8b:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x1f0]
  a22a92:	3e 
  a22a93:	62 81 7c 48 28 e9    	vmovaps zmm21,zmm25
  a22a99:	62 a2 7d 48 7f e8    	vpermt2ps zmm21,zmm0,zmm16
  a22a9f:	62 22 75 48 7f c8    	vpermt2ps zmm25,zmm1,zmm16
  a22aa5:	62 e1 7c 48 10 bc 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1+0x1f8]
  a22aac:	f8 01 00 00 
  a22ab0:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x238]
  a22ab7:	47 
  a22ab8:	62 21 7c 48 28 f7    	vmovaps zmm30,zmm23
  a22abe:	62 22 7d 48 7f f0    	vpermt2ps zmm30,zmm0,zmm16
  a22ac4:	62 a2 75 48 7f f8    	vpermt2ps zmm23,zmm1,zmm16
  a22aca:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x240]
  a22ad1:	09 
  a22ad2:	62 61 ff 08 10 54 17 	vmovsd xmm26,QWORD PTR [rdi+rdx*1+0x280]
  a22ad9:	50 
  a22ada:	62 21 7c 48 28 d8    	vmovaps zmm27,zmm16
  a22ae0:	62 02 7d 48 7f da    	vpermt2ps zmm27,zmm0,zmm26
  a22ae6:	62 82 75 48 7f c2    	vpermt2ps zmm16,zmm1,zmm26
  a22aec:	62 61 7c 48 10 94 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x288]
  a22af3:	88 02 00 00 
  a22af7:	62 61 ff 08 10 64 17 	vmovsd xmm28,QWORD PTR [rdi+rdx*1+0x2c8]
  a22afe:	59 
  a22aff:	62 01 7c 48 28 fa    	vmovaps zmm31,zmm26
  a22b05:	62 02 7d 48 7f fc    	vpermt2ps zmm31,zmm0,zmm28
  a22b0b:	62 02 75 48 7f d4    	vpermt2ps zmm26,zmm1,zmm28
  a22b11:	62 e1 7c 48 10 94 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a22b18:	d0 02 00 00 
  a22b1c:	62 61 ff 08 10 64 17 	vmovsd xmm28,QWORD PTR [rdi+rdx*1+0x310]
  a22b23:	62 
  a22b24:	62 b1 7c 48 28 e2    	vmovaps zmm4,zmm18
  a22b2a:	62 92 7d 48 7f e4    	vpermt2ps zmm4,zmm0,zmm28
  a22b30:	62 82 75 48 7f d4    	vpermt2ps zmm18,zmm1,zmm28
  a22b36:	62 71 7c 48 10 8c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x318]
  a22b3d:	18 03 00 00 
  a22b41:	62 61 ff 08 10 64 17 	vmovsd xmm28,QWORD PTR [rdi+rdx*1+0x358]
  a22b48:	6b 
  a22b49:	62 d1 7c 48 28 f1    	vmovaps zmm6,zmm9
  a22b4f:	62 92 7d 48 7f f4    	vpermt2ps zmm6,zmm0,zmm28
  a22b55:	62 12 75 48 7f cc    	vpermt2ps zmm9,zmm1,zmm28
  a22b5b:	62 01 04 48 58 e1    	vaddps zmm28,zmm15,zmm25
  a22b61:	62 01 74 40 58 ea    	vaddps zmm29,zmm17,zmm26
  a22b67:	62 b1 4c 40 58 c2    	vaddps zmm0,zmm22,zmm18
  a22b6d:	62 d1 44 40 58 fc    	vaddps zmm7,zmm23,zmm12
  a22b73:	62 f1 7c 40 58 d5    	vaddps zmm2,zmm16,zmm5
  a22b79:	62 b1 4c 40 5c ca    	vsubps zmm1,zmm22,zmm18
  a22b7f:	62 e1 0c 40 58 d3    	vaddps zmm18,zmm30,zmm3
  a22b85:	62 e1 0c 40 5c f3    	vsubps zmm22,zmm30,zmm3
  a22b8b:	62 41 34 48 58 f6    	vaddps zmm30,zmm9,zmm14
  a22b91:	62 71 7c 40 5c d5    	vsubps zmm10,zmm16,zmm5
  a22b97:	62 91 4c 48 58 e8    	vaddps zmm5,zmm6,zmm24
  a22b9d:	62 91 4c 48 5c f0    	vsubps zmm6,zmm6,zmm24
  a22ba3:	62 21 24 48 58 c5    	vaddps zmm24,zmm11,zmm21
  a22ba9:	62 11 04 48 5c f9    	vsubps zmm15,zmm15,zmm25
  a22baf:	62 01 14 48 58 cf    	vaddps zmm25,zmm13,zmm31
  a22bb5:	62 11 14 48 5c ef    	vsubps zmm13,zmm13,zmm31
  a22bbb:	62 61 5c 40 58 fc    	vaddps zmm31,zmm20,zmm4
  a22bc1:	62 f1 5c 40 5c e4    	vsubps zmm4,zmm20,zmm4
  a22bc7:	62 a1 24 40 58 e3    	vaddps zmm20,zmm27,zmm19
  a22bcd:	62 a1 1c 48 5c ff    	vsubps zmm23,zmm12,zmm23
  a22bd3:	62 71 44 40 58 e4    	vaddps zmm12,zmm23,zmm4
  a22bd9:	62 21 24 40 5c db    	vsubps zmm27,zmm27,zmm19
  a22bdf:	62 51 0c 48 5c c9    	vsubps zmm9,zmm14,zmm9
  a22be5:	62 11 34 48 58 f3    	vaddps zmm14,zmm9,zmm27
  a22beb:	62 d1 1c 48 5c de    	vsubps zmm3,zmm12,zmm14
  a22bf1:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a22bf8:	62 c1 1c 48 58 c6    	vaddps zmm16,zmm12,zmm14
  a22bfe:	62 31 74 48 58 f6    	vaddps zmm14,zmm1,zmm22
  a22c04:	62 e1 7c 48 28 d9    	vmovaps zmm19,zmm1
  a22c0a:	62 a1 24 48 5c ed    	vsubps zmm21,zmm11,zmm21
  a22c10:	62 71 2c 48 58 de    	vaddps zmm11,zmm10,zmm6
  a22c16:	62 a1 2c 40 5c c9    	vsubps zmm17,zmm26,zmm17
  a22c1c:	62 d1 0c 48 58 db    	vaddps zmm3,zmm14,zmm11
  a22c22:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a22c29:	fe 
  a22c2a:	62 51 0c 48 5c f3    	vsubps zmm14,zmm14,zmm11
  a22c30:	62 61 7c 48 58 d7    	vaddps zmm26,zmm0,zmm7
  a22c36:	62 f1 7c 48 5c c7    	vsubps zmm0,zmm0,zmm7
  a22c3c:	62 11 6c 48 58 e6    	vaddps zmm12,zmm2,zmm30
  a22c42:	62 91 6c 48 5c d6    	vsubps zmm2,zmm2,zmm30
  a22c48:	62 01 1c 40 58 f5    	vaddps zmm30,zmm28,zmm29
  a22c4e:	62 01 1c 40 5c e5    	vsubps zmm28,zmm28,zmm29
  a22c54:	62 21 04 40 58 ea    	vaddps zmm29,zmm31,zmm18
  a22c5a:	62 31 04 40 5c da    	vsubps zmm11,zmm31,zmm18
  a22c60:	62 e1 5c 40 58 d5    	vaddps zmm18,zmm20,zmm5
  a22c66:	62 f1 5c 40 5c ed    	vsubps zmm5,zmm20,zmm5
  a22c6c:	62 e1 24 48 5c e5    	vsubps zmm20,zmm11,zmm5
  a22c72:	62 61 24 48 58 fd    	vaddps zmm31,zmm11,zmm5
  a22c78:	62 11 3c 40 58 c1    	vaddps zmm8,zmm24,zmm25
  a22c7e:	62 01 3c 40 5c c1    	vsubps zmm24,zmm24,zmm25
  a22c84:	62 61 7c 48 58 ca    	vaddps zmm25,zmm0,zmm2
  a22c8a:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a22c90:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a22c97:	01 
  a22c98:	62 d1 04 48 58 cd    	vaddps zmm1,zmm15,zmm13
  a22c9e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a22ca5:	ff 
  a22ca6:	62 d1 04 48 5c d5    	vsubps zmm2,zmm15,zmm13
  a22cac:	62 d1 2c 40 58 fc    	vaddps zmm7,zmm26,zmm12
  a22cb2:	62 b1 64 40 5c ee    	vsubps zmm5,zmm19,zmm22
  a22cb8:	62 71 0c 40 58 df    	vaddps zmm11,zmm30,zmm7
  a22cbe:	62 f1 2c 48 5c f6    	vsubps zmm6,zmm10,zmm6
  a22cc4:	62 31 74 40 58 ed    	vaddps zmm13,zmm17,zmm21
  a22cca:	62 a1 54 40 5c c9    	vsubps zmm17,zmm21,zmm17
  a22cd0:	62 a1 14 40 58 ea    	vaddps zmm21,zmm29,zmm18
  a22cd6:	62 b1 5c 48 5c e7    	vsubps zmm4,zmm4,zmm23
  a22cdc:	62 b1 3c 48 58 c5    	vaddps zmm0,zmm8,zmm21
  a22ce2:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a22ce9:	02 
  a22cea:	62 51 24 40 5c c9    	vsubps zmm9,zmm27,zmm9
  a22cf0:	62 72 7d 48 18 3d 66 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff652766]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a22cf7:	27 65 ff 
  a22cfa:	62 c1 7c 48 28 f7    	vmovaps zmm22,zmm15
  a22d00:	62 e2 65 48 ac f1    	vfnmadd213ps zmm22,zmm3,zmm1
  a22d06:	62 e2 7d 48 18 1d c4 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff6525c4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a22d0d:	25 65 ff 
  a22d10:	62 71 64 40 59 14 24 	vmulps zmm10,zmm19,ZMMWORD PTR [rsp]
  a22d17:	62 d1 7c 48 28 c7    	vmovaps zmm0,zmm15
  a22d1d:	62 92 05 48 ac fe    	vfnmadd213ps zmm7,zmm15,zmm30
  a22d23:	62 31 2c 48 58 fe    	vaddps zmm15,zmm10,zmm22
  a22d29:	62 a1 14 40 5c d2    	vsubps zmm18,zmm29,zmm18
  a22d2f:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a22d35:	62 42 7d 40 ac dd    	vfnmadd213ps zmm27,zmm16,zmm13
  a22d3b:	62 31 0c 48 59 f3    	vmulps zmm14,zmm14,zmm19
  a22d41:	62 c2 7d 48 ac e8    	vfnmadd213ps zmm21,zmm0,zmm8
  a22d47:	62 c1 24 40 5c fe    	vsubps zmm23,zmm27,zmm14
  a22d4d:	62 d1 2c 40 5c dc    	vsubps zmm3,zmm26,zmm12
  a22d53:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a22d59:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a22d5f:	62 12 35 40 ac c4    	vfnmadd213ps zmm8,zmm25,zmm28
  a22d65:	62 b1 5c 40 59 c3    	vmulps zmm0,zmm20,zmm19
  a22d6b:	62 c1 4c 40 5c f2    	vsubps zmm22,zmm22,zmm10
  a22d71:	62 e1 3c 48 5c e0    	vsubps zmm20,zmm8,zmm0
  a22d77:	62 51 24 40 58 d6    	vaddps zmm10,zmm27,zmm14
  a22d7d:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm10
  a22d84:	03 
  a22d85:	62 11 7c 48 28 d2    	vmovaps zmm10,zmm26
  a22d8b:	62 12 05 40 ac d0    	vfnmadd213ps zmm10,zmm31,zmm24
  a22d91:	62 71 64 40 59 74 24 	vmulps zmm14,zmm19,ZMMWORD PTR [rsp+0x40]
  a22d98:	01 
  a22d99:	62 01 1c 40 58 c9    	vaddps zmm25,zmm28,zmm25
  a22d9f:	62 71 54 48 58 e6    	vaddps zmm12,zmm5,zmm6
  a22da5:	62 01 3c 40 58 e7    	vaddps zmm28,zmm24,zmm31
  a22dab:	62 41 6c 48 58 c4    	vaddps zmm24,zmm2,zmm12
  a22db1:	62 72 2d 40 ac e2    	vfnmadd213ps zmm12,zmm26,zmm2
  a22db7:	62 d1 5c 48 58 d1    	vaddps zmm2,zmm4,zmm9
  a22dbd:	62 d1 5c 48 5c e1    	vsubps zmm4,zmm4,zmm9
  a22dc3:	62 61 74 40 58 ea    	vaddps zmm29,zmm17,zmm2
  a22dc9:	62 b2 2d 40 ac d1    	vfnmadd213ps zmm2,zmm26,zmm17
  a22dcf:	62 41 0c 48 58 fa    	vaddps zmm31,zmm14,zmm10
  a22dd5:	62 31 6c 40 59 cb    	vmulps zmm9,zmm18,zmm19
  a22ddb:	62 f1 54 48 5c f6    	vsubps zmm6,zmm5,zmm6
  a22de1:	62 41 44 48 58 f1    	vaddps zmm30,zmm7,zmm9
  a22de7:	62 b1 64 48 59 cb    	vmulps zmm1,zmm3,zmm19
  a22ded:	62 d1 44 48 5c f9    	vsubps zmm7,zmm7,zmm9
  a22df3:	62 e1 54 40 5c c9    	vsubps zmm17,zmm21,zmm1
  a22df9:	62 b1 5c 48 59 e3    	vmulps zmm4,zmm4,zmm19
  a22dff:	62 b1 74 48 58 dd    	vaddps zmm3,zmm1,zmm21
  a22e05:	62 41 5c 48 58 d4    	vaddps zmm26,zmm4,zmm12
  a22e0b:	62 b1 4c 48 59 f3    	vmulps zmm6,zmm6,zmm19
  a22e11:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a22e18:	fe 
  a22e19:	62 71 74 48 58 4c 24 	vaddps zmm9,zmm1,ZMMWORD PTR [rsp-0x40]
  a22e20:	ff 
  a22e21:	62 61 6c 48 5c de    	vsubps zmm27,zmm2,zmm6
  a22e27:	62 b1 14 48 58 e8    	vaddps zmm5,zmm13,zmm16
  a22e2d:	62 f1 3c 48 58 c0    	vaddps zmm0,zmm8,zmm0
  a22e33:	62 d1 2c 48 5c ce    	vsubps zmm1,zmm10,zmm14
  a22e39:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a22e40:	fe 
  a22e41:	62 f1 1c 48 5c e4    	vsubps zmm4,zmm12,zmm4
  a22e47:	62 f1 6c 48 58 ce    	vaddps zmm1,zmm2,zmm6
  a22e4d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a22e54:	ff 
  a22e55:	62 c1 7c 48 28 db    	vmovaps zmm19,zmm11
  a22e5b:	62 71 7c 48 28 15 1b 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6a411b]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a22e62:	41 6a ff 
  a22e65:	62 e2 2d 48 7f df    	vpermt2ps zmm19,zmm10,zmm7
  a22e6b:	62 71 7c 48 28 2d 4b 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6a414b]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a22e72:	41 6a ff 
  a22e75:	62 72 15 48 7f df    	vpermt2ps zmm11,zmm13,zmm7
  a22e7b:	62 c1 7c 48 28 ef    	vmovaps zmm21,zmm15
  a22e81:	62 c2 2d 48 7f e9    	vpermt2ps zmm21,zmm10,zmm9
  a22e87:	62 52 15 48 7f f9    	vpermt2ps zmm15,zmm13,zmm9
  a22e8d:	62 b1 7c 48 28 d4    	vmovaps zmm2,zmm20
  a22e93:	62 f2 2d 48 7f d0    	vpermt2ps zmm2,zmm10,zmm0
  a22e99:	62 e2 15 48 7f e0    	vpermt2ps zmm20,zmm13,zmm0
  a22e9f:	62 91 7c 48 28 c0    	vmovaps zmm0,zmm24
  a22ea5:	62 f2 2d 48 7f c4    	vpermt2ps zmm0,zmm10,zmm4
  a22eab:	62 62 15 48 7f c4    	vpermt2ps zmm24,zmm13,zmm4
  a22eb1:	62 91 7c 48 28 e6    	vmovaps zmm4,zmm30
  a22eb7:	c4 41 18 57 e4       	vxorps xmm12,xmm12,xmm12
  a22ebc:	62 d2 2d 48 7f e4    	vpermt2ps zmm4,zmm10,zmm12
  a22ec2:	62 b1 7c 48 28 f6    	vmovaps zmm6,zmm22
  a22ec8:	62 d2 2d 48 7f f4    	vpermt2ps zmm6,zmm10,zmm12
  a22ece:	62 91 7c 48 28 f9    	vmovaps zmm7,zmm25
  a22ed4:	62 d2 2d 48 7f fc    	vpermt2ps zmm7,zmm10,zmm12
  a22eda:	62 11 7c 48 28 c2    	vmovaps zmm8,zmm26
  a22ee0:	62 52 2d 48 7f c4    	vpermt2ps zmm8,zmm10,zmm12
  a22ee6:	62 31 7c 48 28 cb    	vmovaps zmm9,zmm19
  a22eec:	62 e1 7c 48 28 15 0a 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6a400a]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a22ef3:	40 6a ff 
  a22ef6:	62 72 6d 40 7f cc    	vpermt2ps zmm9,zmm18,zmm4
  a22efc:	62 71 7c 48 28 35 3a 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6a403a]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a22f03:	40 6a ff 
  a22f06:	62 e2 0d 48 7f dc    	vpermt2ps zmm19,zmm14,zmm4
  a22f0c:	62 b1 7c 48 28 e5    	vmovaps zmm4,zmm21
  a22f12:	62 f2 6d 40 7f e6    	vpermt2ps zmm4,zmm18,zmm6
  a22f18:	62 e2 0d 48 7f ee    	vpermt2ps zmm21,zmm14,zmm6
  a22f1e:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a22f24:	62 f2 6d 40 7f f7    	vpermt2ps zmm6,zmm18,zmm7
  a22f2a:	62 f2 0d 48 7f d7    	vpermt2ps zmm2,zmm14,zmm7
  a22f30:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a22f36:	62 d2 6d 40 7f f8    	vpermt2ps zmm7,zmm18,zmm8
  a22f3c:	62 d2 0d 48 7f c0    	vpermt2ps zmm0,zmm14,zmm8
  a22f42:	62 42 15 48 7f f4    	vpermt2ps zmm30,zmm13,zmm12
  a22f48:	62 12 6d 40 7f de    	vpermt2ps zmm11,zmm18,zmm30
  a22f4e:	62 c2 15 48 7f f4    	vpermt2ps zmm22,zmm13,zmm12
  a22f54:	62 32 6d 40 7f fe    	vpermt2ps zmm15,zmm18,zmm22
  a22f5a:	62 42 15 48 7f cc    	vpermt2ps zmm25,zmm13,zmm12
  a22f60:	62 42 15 48 7f d4    	vpermt2ps zmm26,zmm13,zmm12
  a22f66:	62 82 6d 40 7f e1    	vpermt2ps zmm20,zmm18,zmm25
  a22f6c:	62 b1 a5 48 14 cc    	vunpcklpd zmm1,zmm11,zmm20
  a22f72:	62 02 6d 40 7f c2    	vpermt2ps zmm24,zmm18,zmm26
  a22f78:	62 11 85 48 14 c0    	vunpcklpd zmm8,zmm15,zmm24
  a22f7e:	62 61 b5 48 14 d6    	vunpcklpd zmm26,zmm9,zmm6
  a22f84:	62 61 b5 48 15 c6    	vunpckhpd zmm24,zmm9,zmm6
  a22f8a:	62 f1 dd 48 14 f7    	vunpcklpd zmm6,zmm4,zmm7
  a22f90:	62 f1 dd 48 15 e7    	vunpckhpd zmm4,zmm4,zmm7
  a22f96:	62 e1 e5 40 14 f2    	vunpcklpd zmm22,zmm19,zmm2
  a22f9c:	62 71 e5 40 15 fa    	vunpckhpd zmm15,zmm19,zmm2
  a22fa2:	62 f1 d5 40 14 d0    	vunpcklpd zmm2,zmm21,zmm0
  a22fa8:	62 f1 d5 40 15 c0    	vunpckhpd zmm0,zmm21,zmm0
  a22fae:	62 81 7c 48 28 da    	vmovaps zmm19,zmm26
  a22fb4:	62 71 7c 48 28 0d 42 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6a3e42]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a22fbb:	3e 6a ff 
  a22fbe:	62 e2 35 48 7f de    	vpermt2ps zmm19,zmm9,zmm6
  a22fc4:	62 71 7c 48 28 1d 72 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6a3e72]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a22fcb:	3e 6a ff 
  a22fce:	62 62 25 48 7f d6    	vpermt2ps zmm26,zmm11,zmm6
  a22fd4:	62 81 7c 48 28 e0    	vmovaps zmm20,zmm24
  a22fda:	62 e2 35 48 7f e4    	vpermt2ps zmm20,zmm9,zmm4
  a22fe0:	62 62 25 48 7f c4    	vpermt2ps zmm24,zmm11,zmm4
  a22fe6:	62 21 7c 48 28 f6    	vmovaps zmm30,zmm22
  a22fec:	62 62 35 48 7f f2    	vpermt2ps zmm30,zmm9,zmm2
  a22ff2:	62 e2 25 48 7f f2    	vpermt2ps zmm22,zmm11,zmm2
  a22ff8:	62 41 7c 48 28 cf    	vmovaps zmm25,zmm15
  a22ffe:	62 62 35 48 7f c8    	vpermt2ps zmm25,zmm9,zmm0
  a23004:	62 72 25 48 7f f8    	vpermt2ps zmm15,zmm11,zmm0
  a2300a:	62 d2 35 48 7f c8    	vpermt2ps zmm1,zmm9,zmm8
  a23010:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a23017:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a2301e:	02 
  a2301f:	62 e1 7c 48 28 e8    	vmovaps zmm21,zmm0
  a23025:	62 e2 2d 48 7f eb    	vpermt2ps zmm21,zmm10,zmm3
  a2302b:	62 f2 15 48 7f c3    	vpermt2ps zmm0,zmm13,zmm3
  a23031:	62 e1 7c 48 28 c0    	vmovaps zmm16,zmm0
  a23037:	62 b1 7c 48 28 df    	vmovaps zmm3,zmm23
  a2303d:	62 f2 2d 48 7f dd    	vpermt2ps zmm3,zmm10,zmm5
  a23043:	62 e2 15 48 7f fd    	vpermt2ps zmm23,zmm13,zmm5
  a23049:	62 91 7c 48 28 c7    	vmovaps zmm0,zmm31
  a2304f:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a23056:	fe 
  a23057:	62 f2 2d 48 7f c1    	vpermt2ps zmm0,zmm10,zmm1
  a2305d:	62 62 15 48 7f f9    	vpermt2ps zmm31,zmm13,zmm1
  a23063:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  a23069:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a23070:	ff 
  a23071:	62 f2 2d 48 7f d1    	vpermt2ps zmm2,zmm10,zmm1
  a23077:	62 62 15 48 7f e9    	vpermt2ps zmm29,zmm13,zmm1
  a2307d:	62 b1 7c 48 28 e1    	vmovaps zmm4,zmm17
  a23083:	62 d2 2d 48 7f e4    	vpermt2ps zmm4,zmm10,zmm12
  a23089:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a23090:	03 
  a23091:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a23097:	62 d2 2d 48 7f ec    	vpermt2ps zmm5,zmm10,zmm12
  a2309d:	62 91 7c 48 28 f4    	vmovaps zmm6,zmm28
  a230a3:	62 d2 2d 48 7f f4    	vpermt2ps zmm6,zmm10,zmm12
  a230a9:	62 91 7c 48 28 fb    	vmovaps zmm7,zmm27
  a230af:	62 d2 2d 48 7f fc    	vpermt2ps zmm7,zmm10,zmm12
  a230b5:	62 31 7c 48 28 c5    	vmovaps zmm8,zmm21
  a230bb:	62 72 6d 40 7f c4    	vpermt2ps zmm8,zmm18,zmm4
  a230c1:	62 e2 0d 48 7f ec    	vpermt2ps zmm21,zmm14,zmm4
  a230c7:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a230cd:	62 f2 6d 40 7f e5    	vpermt2ps zmm4,zmm18,zmm5
  a230d3:	62 f2 0d 48 7f dd    	vpermt2ps zmm3,zmm14,zmm5
  a230d9:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a230df:	62 f2 6d 40 7f ee    	vpermt2ps zmm5,zmm18,zmm6
  a230e5:	62 f2 0d 48 7f c6    	vpermt2ps zmm0,zmm14,zmm6
  a230eb:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a230f1:	62 f2 6d 40 7f f7    	vpermt2ps zmm6,zmm18,zmm7
  a230f7:	62 f2 0d 48 7f d7    	vpermt2ps zmm2,zmm14,zmm7
  a230fd:	62 c2 15 48 7f cc    	vpermt2ps zmm17,zmm13,zmm12
  a23103:	62 a2 6d 40 7f c1    	vpermt2ps zmm16,zmm18,zmm17
  a23109:	62 d2 15 48 7f cc    	vpermt2ps zmm1,zmm13,zmm12
  a2310f:	62 e2 6d 40 7f f9    	vpermt2ps zmm23,zmm18,zmm1
  a23115:	62 42 15 48 7f e4    	vpermt2ps zmm28,zmm13,zmm12
  a2311b:	62 42 15 48 7f dc    	vpermt2ps zmm27,zmm13,zmm12
  a23121:	62 02 6d 40 7f fc    	vpermt2ps zmm31,zmm18,zmm28
  a23127:	62 81 fd 40 14 cf    	vunpcklpd zmm17,zmm16,zmm31
  a2312d:	62 02 6d 40 7f eb    	vpermt2ps zmm29,zmm18,zmm27
  a23133:	62 91 c5 40 14 cd    	vunpcklpd zmm1,zmm23,zmm29
  a23139:	62 71 bd 48 14 ed    	vunpcklpd zmm13,zmm8,zmm5
  a2313f:	62 e1 bd 48 15 fd    	vunpckhpd zmm23,zmm8,zmm5
  a23145:	62 f1 dd 48 14 fe    	vunpcklpd zmm7,zmm4,zmm6
  a2314b:	62 f1 dd 48 15 e6    	vunpckhpd zmm4,zmm4,zmm6
  a23151:	62 61 d5 40 14 d8    	vunpcklpd zmm27,zmm21,zmm0
  a23157:	62 f1 d5 40 15 e8    	vunpckhpd zmm5,zmm21,zmm0
  a2315d:	62 f1 e5 48 14 c2    	vunpcklpd zmm0,zmm3,zmm2
  a23163:	62 f1 e5 48 15 d2    	vunpckhpd zmm2,zmm3,zmm2
  a23169:	62 c1 7c 48 28 ed    	vmovaps zmm21,zmm13
  a2316f:	62 e2 35 48 7f ef    	vpermt2ps zmm21,zmm9,zmm7
  a23175:	62 72 25 48 7f ef    	vpermt2ps zmm13,zmm11,zmm7
  a2317b:	62 b1 7c 48 28 df    	vmovaps zmm3,zmm23
  a23181:	62 f2 35 48 7f dc    	vpermt2ps zmm3,zmm9,zmm4
  a23187:	62 e2 25 48 7f fc    	vpermt2ps zmm23,zmm11,zmm4
  a2318d:	62 11 7c 48 28 f3    	vmovaps zmm14,zmm27
  a23193:	62 72 35 48 7f f0    	vpermt2ps zmm14,zmm9,zmm0
  a23199:	62 62 25 48 7f d8    	vpermt2ps zmm27,zmm11,zmm0
  a2319f:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a231a5:	62 f2 35 48 7f c2    	vpermt2ps zmm0,zmm9,zmm2
  a231ab:	62 f2 25 48 7f ea    	vpermt2ps zmm5,zmm11,zmm2
  a231b1:	62 e2 35 48 7f c9    	vpermt2ps zmm17,zmm9,zmm1
  a231b7:	62 f1 7c 48 10 49 02 	vmovups zmm1,ZMMWORD PTR [rcx+0x80]
  a231be:	62 e1 7c 48 10 41 03 	vmovups zmm16,ZMMWORD PTR [rcx+0xc0]
  a231c5:	62 f1 7c 48 10 51 06 	vmovups zmm2,ZMMWORD PTR [rcx+0x180]
  a231cc:	62 f1 7c 48 10 61 07 	vmovups zmm4,ZMMWORD PTR [rcx+0x1c0]
  a231d3:	62 71 3c 40 59 e2    	vmulps zmm12,zmm24,zmm2
  a231d9:	62 72 45 40 bc e4    	vfnmadd231ps zmm12,zmm23,zmm4
  a231df:	62 61 44 40 59 ea    	vmulps zmm29,zmm23,zmm2
  a231e5:	62 f1 7c 48 10 51 0c 	vmovups zmm2,ZMMWORD PTR [rcx+0x300]
  a231ec:	62 02 5d 48 b8 e8    	vfmadd231ps zmm29,zmm4,zmm24
  a231f2:	62 f1 7c 48 10 61 0d 	vmovups zmm4,ZMMWORD PTR [rcx+0x340]
  a231f9:	62 61 34 40 59 e2    	vmulps zmm28,zmm25,zmm2
  a231ff:	62 62 7d 48 bc e4    	vfnmadd231ps zmm28,zmm0,zmm4
  a23205:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a2320b:	62 f1 7c 48 10 51 04 	vmovups zmm2,ZMMWORD PTR [rcx+0x100]
  a23212:	62 92 5d 48 b8 c1    	vfmadd231ps zmm0,zmm4,zmm25
  a23218:	62 f1 7c 48 10 61 05 	vmovups zmm4,ZMMWORD PTR [rcx+0x140]
  a2321f:	62 e1 2c 40 59 f9    	vmulps zmm23,zmm26,zmm1
  a23225:	62 a2 15 48 bc f8    	vfnmadd231ps zmm23,zmm13,zmm16
  a2322b:	62 61 14 48 59 c1    	vmulps zmm24,zmm13,zmm1
  a23231:	62 f1 7c 48 10 49 08 	vmovups zmm1,ZMMWORD PTR [rcx+0x200]
  a23238:	62 02 7d 40 b8 c2    	vfmadd231ps zmm24,zmm16,zmm26
  a2323e:	62 f1 7c 48 10 71 09 	vmovups zmm6,ZMMWORD PTR [rcx+0x240]
  a23245:	62 f1 0c 40 59 f9    	vmulps zmm7,zmm30,zmm1
  a2324b:	62 f2 0d 48 bc fe    	vfnmadd231ps zmm7,zmm14,zmm6
  a23251:	62 f1 0c 48 59 c9    	vmulps zmm1,zmm14,zmm1
  a23257:	62 71 7c 48 10 41 0e 	vmovups zmm8,ZMMWORD PTR [rcx+0x380]
  a2325e:	62 92 4d 48 b8 ce    	vfmadd231ps zmm1,zmm6,zmm30
  a23264:	62 f1 7c 48 10 71 0f 	vmovups zmm6,ZMMWORD PTR [rcx+0x3c0]
  a2326b:	62 51 04 48 59 c8    	vmulps zmm9,zmm15,zmm8
  a23271:	62 72 55 48 bc ce    	vfnmadd231ps zmm9,zmm5,zmm6
  a23277:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a2327d:	62 71 7c 48 10 41 0a 	vmovups zmm8,ZMMWORD PTR [rcx+0x280]
  a23284:	62 d2 4d 48 b8 ef    	vfmadd231ps zmm5,zmm6,zmm15
  a2328a:	62 f1 7c 48 10 71 0b 	vmovups zmm6,ZMMWORD PTR [rcx+0x2c0]
  a23291:	62 71 5c 40 59 ea    	vmulps zmm13,zmm20,zmm2
  a23297:	62 72 65 48 bc ec    	vfnmadd231ps zmm13,zmm3,zmm4
  a2329d:	62 71 64 48 59 f2    	vmulps zmm14,zmm3,zmm2
  a232a3:	62 f1 7c 48 10 51 10 	vmovups zmm2,ZMMWORD PTR [rcx+0x400]
  a232aa:	62 32 5d 48 b8 f4    	vfmadd231ps zmm14,zmm4,zmm20
  a232b0:	62 f1 7c 48 10 59 11 	vmovups zmm3,ZMMWORD PTR [rcx+0x440]
  a232b7:	62 d1 4c 40 59 e0    	vmulps zmm4,zmm22,zmm8
  a232bd:	62 f2 25 40 bc e6    	vfnmadd231ps zmm4,zmm27,zmm6
  a232c3:	62 51 24 40 59 c0    	vmulps zmm8,zmm27,zmm8
  a232c9:	62 11 1c 48 58 d4    	vaddps zmm10,zmm12,zmm28
  a232cf:	62 32 4d 48 b8 c6    	vfmadd231ps zmm8,zmm6,zmm22
  a232d5:	62 c1 64 40 58 f2    	vaddps zmm22,zmm19,zmm10
  a232db:	62 71 7c 48 10 3c 24 	vmovups zmm15,ZMMWORD PTR [rsp]
  a232e2:	62 f1 04 48 59 f2    	vmulps zmm6,zmm15,zmm2
  a232e8:	62 f2 75 40 bc f3    	vfnmadd231ps zmm6,zmm17,zmm3
  a232ee:	62 f1 74 40 59 d2    	vmulps zmm2,zmm17,zmm2
  a232f4:	62 51 44 48 58 d9    	vaddps zmm11,zmm7,zmm9
  a232fa:	62 d2 65 48 b8 d7    	vfmadd231ps zmm2,zmm3,zmm15
  a23300:	62 51 44 40 58 fb    	vaddps zmm15,zmm23,zmm11
  a23306:	62 f1 5c 48 58 de    	vaddps zmm3,zmm4,zmm6
  a2330c:	62 62 7d 48 18 35 4a 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff65214a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a23313:	21 65 ff 
  a23316:	62 c2 0d 40 bc da    	vfnmadd231ps zmm19,zmm30,zmm10
  a2331c:	62 71 14 40 58 d0    	vaddps zmm10,zmm29,zmm0
  a23322:	62 f1 14 40 5c c0    	vsubps zmm0,zmm29,zmm0
  a23328:	62 e1 14 48 58 cb    	vaddps zmm17,zmm13,zmm3
  a2332e:	62 c2 0d 40 bc fb    	vfnmadd231ps zmm23,zmm30,zmm11
  a23334:	62 71 74 48 58 dd    	vaddps zmm11,zmm1,zmm5
  a2333a:	62 f1 74 48 5c cd    	vsubps zmm1,zmm1,zmm5
  a23340:	62 d1 3c 40 58 eb    	vaddps zmm5,zmm24,zmm11
  a23346:	62 42 0d 40 bc c3    	vfnmadd231ps zmm24,zmm30,zmm11
  a2334c:	62 31 2c 48 58 dd    	vaddps zmm11,zmm10,zmm21
  a23352:	62 d1 44 48 5c f9    	vsubps zmm7,zmm7,zmm9
  a23358:	62 71 3c 48 58 ca    	vaddps zmm9,zmm8,zmm2
  a2335e:	62 72 0d 40 bc eb    	vfnmadd231ps zmm13,zmm30,zmm3
  a23364:	62 41 0c 48 58 c9    	vaddps zmm25,zmm14,zmm9
  a2336a:	62 62 7d 48 18 2d 60 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff651f60]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a23371:	1f 65 ff 
  a23374:	62 91 7c 48 59 c5    	vmulps zmm0,zmm0,zmm29
  a2337a:	62 91 74 48 59 cd    	vmulps zmm1,zmm1,zmm29
  a23380:	62 f1 3c 48 5c d2    	vsubps zmm2,zmm8,zmm2
  a23386:	62 f1 44 40 58 d9    	vaddps zmm3,zmm23,zmm1
  a2338c:	62 91 44 48 59 fd    	vmulps zmm7,zmm7,zmm29
  a23392:	62 52 0d 40 bc f1    	vfnmadd231ps zmm14,zmm30,zmm9
  a23398:	62 71 3c 40 5c c7    	vsubps zmm8,zmm24,zmm7
  a2339e:	62 f1 5c 48 5c e6    	vsubps zmm4,zmm4,zmm6
  a233a4:	62 e2 7d 48 18 05 ba 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff6522ba]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a233ab:	22 65 ff 
  a233ae:	62 a1 3c 48 59 e0    	vmulps zmm20,zmm8,zmm16
  a233b4:	62 e2 7d 48 18 15 1a 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff65211a]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a233bb:	21 65 ff 
  a233be:	62 a2 65 48 b8 e2    	vfmadd231ps zmm20,zmm3,zmm18
  a233c4:	62 91 6c 48 59 d5    	vmulps zmm2,zmm2,zmm29
  a233ca:	62 c2 0d 40 bc ea    	vfnmadd231ps zmm21,zmm30,zmm10
  a233d0:	62 f1 14 48 58 f2    	vaddps zmm6,zmm13,zmm2
  a233d6:	62 91 5c 48 59 e5    	vmulps zmm4,zmm4,zmm29
  a233dc:	62 11 1c 48 5c cc    	vsubps zmm9,zmm12,zmm28
  a233e2:	62 71 0c 48 5c d4    	vsubps zmm10,zmm14,zmm4
  a233e8:	62 31 3c 48 59 c2    	vmulps zmm8,zmm8,zmm18
  a233ee:	62 72 7d 40 bc c3    	vfnmadd231ps zmm8,zmm16,zmm3
  a233f4:	62 62 7d 48 18 15 1a 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff651f1a]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a233fb:	1f 65 ff 
  a233fe:	62 81 2c 48 59 c2    	vmulps zmm16,zmm10,zmm26
  a23404:	62 62 7d 48 18 1d ce 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff6520ce]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a2340b:	20 65 ff 
  a2340e:	62 82 4d 48 b8 c3    	vfmadd231ps zmm16,zmm6,zmm27
  a23414:	62 11 2c 48 59 d3    	vmulps zmm10,zmm10,zmm27
  a2341a:	62 72 2d 40 bc d6    	vfnmadd231ps zmm10,zmm26,zmm6
  a23420:	62 f1 64 40 58 f0    	vaddps zmm6,zmm19,zmm0
  a23426:	62 f1 64 40 5c c0    	vsubps zmm0,zmm19,zmm0
  a2342c:	62 f1 44 40 5c c9    	vsubps zmm1,zmm23,zmm1
  a23432:	62 f1 3c 40 58 ff    	vaddps zmm7,zmm24,zmm7
  a23438:	62 31 04 48 58 e1    	vaddps zmm12,zmm15,zmm17
  a2343e:	62 f1 14 48 5c d2    	vsubps zmm2,zmm13,zmm2
  a23444:	62 91 54 48 58 d9    	vaddps zmm3,zmm5,zmm25
  a2344a:	62 11 34 48 59 cd    	vmulps zmm9,zmm9,zmm29
  a23450:	62 f1 0c 48 58 e4    	vaddps zmm4,zmm14,zmm4
  a23456:	62 51 54 40 5c e9    	vsubps zmm13,zmm21,zmm9
  a2345c:	62 31 34 48 58 cd    	vaddps zmm9,zmm9,zmm21
  a23462:	62 81 44 48 59 d2    	vmulps zmm18,zmm7,zmm26
  a23468:	62 82 75 48 b8 d3    	vfmadd231ps zmm18,zmm1,zmm27
  a2346e:	62 91 44 48 59 fb    	vmulps zmm7,zmm7,zmm27
  a23474:	62 f2 2d 40 bc f9    	vfnmadd231ps zmm7,zmm26,zmm1
  a2347a:	62 72 7d 48 18 35 6c 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff65206c]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a23481:	20 65 ff 
  a23484:	62 d1 5c 48 59 ce    	vmulps zmm1,zmm4,zmm14
  a2348a:	62 e2 7d 48 18 1d 64 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff652164]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a23491:	21 65 ff 
  a23494:	62 b2 6d 48 bc cb    	vfnmadd231ps zmm1,zmm2,zmm19
  a2349a:	62 b1 5c 48 59 e3    	vmulps zmm4,zmm4,zmm19
  a234a0:	62 f2 0d 48 b8 e2    	vfmadd231ps zmm4,zmm14,zmm2
  a234a6:	62 b1 5c 40 58 d0    	vaddps zmm2,zmm20,zmm16
  a234ac:	62 81 54 48 5c d9    	vsubps zmm19,zmm5,zmm25
  a234b2:	62 f1 4c 48 58 ea    	vaddps zmm5,zmm6,zmm2
  a234b8:	62 a1 04 48 5c c9    	vsubps zmm17,zmm15,zmm17
  a234be:	62 c1 3c 48 58 ea    	vaddps zmm21,zmm8,zmm10
  a234c4:	62 f2 0d 40 ac d6    	vfnmadd213ps zmm2,zmm30,zmm6
  a234ca:	62 31 14 48 58 f5    	vaddps zmm14,zmm13,zmm21
  a234d0:	62 d1 3c 48 5c f2    	vsubps zmm6,zmm8,zmm10
  a234d6:	62 71 6c 40 58 c1    	vaddps zmm8,zmm18,zmm1
  a234dc:	62 c2 0d 40 ac ed    	vfnmadd213ps zmm21,zmm30,zmm13
  a234e2:	62 51 7c 48 58 f8    	vaddps zmm15,zmm0,zmm8
  a234e8:	62 31 5c 40 5c d0    	vsubps zmm10,zmm20,zmm16
  a234ee:	62 e1 44 48 5c fc    	vsubps zmm23,zmm7,zmm4
  a234f4:	62 72 0d 40 ac c0    	vfnmadd213ps zmm8,zmm30,zmm0
  a234fa:	62 b1 34 48 58 c7    	vaddps zmm0,zmm9,zmm23
  a23500:	62 f1 44 48 58 e4    	vaddps zmm4,zmm7,zmm4
  a23506:	62 91 7c 48 28 fe    	vmovaps zmm7,zmm30
  a2350c:	62 b2 1d 48 ac fe    	vfnmadd213ps zmm7,zmm12,zmm22
  a23512:	62 11 64 40 59 ed    	vmulps zmm13,zmm19,zmm29
  a23518:	62 c2 0d 40 ac f9    	vfnmadd213ps zmm23,zmm30,zmm9
  a2351e:	62 51 44 48 58 cd    	vaddps zmm9,zmm7,zmm13
  a23524:	62 f1 6c 40 5c c9    	vsubps zmm1,zmm18,zmm1
  a2352a:	62 81 7c 48 28 c6    	vmovaps zmm16,zmm30
  a23530:	62 c2 65 48 ac c3    	vfnmadd213ps zmm16,zmm3,zmm11
  a23536:	62 81 74 40 59 cd    	vmulps zmm17,zmm17,zmm29
  a2353c:	62 51 44 48 5c ed    	vsubps zmm13,zmm7,zmm13
  a23542:	62 b1 7c 40 5c f9    	vsubps zmm7,zmm16,zmm17
  a23548:	62 91 4c 48 59 f5    	vmulps zmm6,zmm6,zmm29
  a2354e:	62 a1 7c 40 58 d9    	vaddps zmm19,zmm16,zmm17
  a23554:	62 e1 6c 48 58 d6    	vaddps zmm18,zmm2,zmm6
  a2355a:	62 11 2c 48 59 d5    	vmulps zmm10,zmm10,zmm29
  a23560:	62 e1 6c 48 5c c6    	vsubps zmm16,zmm2,zmm6
  a23566:	62 d1 54 40 5c d2    	vsubps zmm2,zmm21,zmm10
  a2356c:	62 91 5c 48 59 e5    	vmulps zmm4,zmm4,zmm29
  a23572:	62 c1 54 40 58 e2    	vaddps zmm20,zmm21,zmm10
  a23578:	62 f1 3c 48 58 f4    	vaddps zmm6,zmm8,zmm4
  a2357e:	62 91 74 48 59 cd    	vmulps zmm1,zmm1,zmm29
  a23584:	62 e1 3c 48 5c cc    	vsubps zmm17,zmm8,zmm4
  a2358a:	62 f1 44 40 5c e1    	vsubps zmm4,zmm23,zmm1
  a23590:	62 e1 44 40 58 e9    	vaddps zmm21,zmm23,zmm1
  a23596:	62 f1 24 48 58 cb    	vaddps zmm1,zmm11,zmm3
  a2359c:	62 d1 4c 40 58 dc    	vaddps zmm3,zmm22,zmm12
  a235a2:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a235a8:	c5 7c 28 15 90 36 65 	vmovaps ymm10,YMMWORD PTR [rip+0xffffffffff653690]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a235af:	ff 
  a235b0:	62 72 2d 48 7f c3    	vpermt2ps zmm8,zmm10,zmm3
  a235b6:	62 71 7c 48 28 1d c0 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff66cbc0]        # 90180 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d630>
  a235bd:	cb 66 ff 
  a235c0:	62 f2 25 48 7f cb    	vpermt2ps zmm1,zmm11,zmm3
  a235c6:	62 f1 7c 48 11 0c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm1
  a235cd:	c5 7c 11 44 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm8
  a235d3:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  a235d9:	62 f2 2d 48 7f cd    	vpermt2ps zmm1,zmm10,zmm5
  a235df:	62 72 25 48 7f f5    	vpermt2ps zmm14,zmm11,zmm5
  a235e5:	62 71 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x60],zmm14
  a235ec:	60 00 00 00 
  a235f0:	c5 fc 11 8c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm1
  a235f7:	00 00 
  a235f9:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a235ff:	62 d2 2d 48 7f cf    	vpermt2ps zmm1,zmm10,zmm15
  a23605:	62 d2 25 48 7f c7    	vpermt2ps zmm0,zmm11,zmm15
  a2360b:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm0
  a23612:	03 
  a23613:	c5 fc 11 8c 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm1
  a2361a:	00 00 
  a2361c:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a23622:	62 d2 2d 48 7f c1    	vpermt2ps zmm0,zmm10,zmm9
  a23628:	62 d2 25 48 7f f9    	vpermt2ps zmm7,zmm11,zmm9
  a2362e:	62 f1 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x120],zmm7
  a23635:	20 01 00 00 
  a23639:	c5 fc 11 84 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm0
  a23640:	00 00 
  a23642:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a23648:	62 b2 2d 48 7f c2    	vpermt2ps zmm0,zmm10,zmm18
  a2364e:	62 b2 25 48 7f d2    	vpermt2ps zmm2,zmm11,zmm18
  a23654:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm2
  a2365b:	06 
  a2365c:	c5 fc 11 84 16 c0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm0
  a23663:	00 00 
  a23665:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a2366b:	62 f2 2d 48 7f c6    	vpermt2ps zmm0,zmm10,zmm6
  a23671:	62 f2 25 48 7f e6    	vpermt2ps zmm4,zmm11,zmm6
  a23677:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm4
  a2367e:	e0 01 00 00 
  a23682:	c5 fc 11 84 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm0
  a23689:	00 00 
  a2368b:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a23691:	62 d2 2d 48 7f c5    	vpermt2ps zmm0,zmm10,zmm13
  a23697:	62 c2 25 48 7f dd    	vpermt2ps zmm19,zmm11,zmm13
  a2369d:	62 e1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm19
  a236a4:	09 
  a236a5:	c5 fc 11 84 16 80 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x280],ymm0
  a236ac:	00 00 
  a236ae:	62 b1 7c 48 28 c4    	vmovaps zmm0,zmm20
  a236b4:	62 b2 2d 48 7f c0    	vpermt2ps zmm0,zmm10,zmm16
  a236ba:	62 a2 25 48 7f e0    	vpermt2ps zmm20,zmm11,zmm16
  a236c0:	62 e1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2a0],zmm20
  a236c7:	a0 02 00 00 
  a236cb:	c5 fc 11 84 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm0
  a236d2:	00 00 
  a236d4:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a236da:	62 b2 2d 48 7f c1    	vpermt2ps zmm0,zmm10,zmm17
  a236e0:	62 a2 25 48 7f e9    	vpermt2ps zmm21,zmm11,zmm17
  a236e6:	62 e1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x300],zmm21
  a236ed:	0c 
  a236ee:	c5 fc 11 84 16 40 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x340],ymm0
  a236f5:	00 00 
  a236f7:	48 81 c2 60 03 00 00 	add    rdx,0x360
  a236fe:	48 39 d0             	cmp    rax,rdx
  a23701:	0f 85 89 f2 ff ff    	jne    a22990 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  a23707:	48 81 c4 08 01 00 00 	add    rsp,0x108
  a2370e:	c5 f8 77             	vzeroupper
  a23711:	c3                   	ret
