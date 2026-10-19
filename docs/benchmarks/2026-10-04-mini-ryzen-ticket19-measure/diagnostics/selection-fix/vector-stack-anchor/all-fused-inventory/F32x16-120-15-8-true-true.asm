
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a07880 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a07880:	48 81 ec c8 04 00 00 	sub    rsp,0x4c8
  a07887:	48 69 c2 c0 03 00 00 	imul   rax,rdx,0x3c0
  a0788e:	31 d2                	xor    edx,edx
  a07890:	62 e1 7c 48 10 74 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0x40]
  a07897:	01 
  a07898:	62 e1 7c 48 10 7c 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1+0x80]
  a0789f:	02 
  a078a0:	62 61 7c 48 10 5c 17 	vmovups zmm27,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a078a7:	03 
  a078a8:	62 31 7c 48 28 e6    	vmovaps zmm12,zmm22
  a078ae:	62 f1 7c 48 28 0d 88 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff686e88]        # 8e740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bbf0>
  a078b5:	6e 68 ff 
  a078b8:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  a078bd:	62 52 75 48 7f e7    	vpermt2ps zmm12,zmm1,zmm15
  a078c3:	62 e1 7c 48 28 05 b3 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff686eb3]        # 8e780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bc30>
  a078ca:	6e 68 ff 
  a078cd:	62 c2 7d 40 7f f7    	vpermt2ps zmm22,zmm16,zmm15
  a078d3:	62 31 7c 48 28 f7    	vmovaps zmm14,zmm23
  a078d9:	62 52 75 48 7f f7    	vpermt2ps zmm14,zmm1,zmm15
  a078df:	62 c2 7d 40 7f ff    	vpermt2ps zmm23,zmm16,zmm15
  a078e5:	62 11 7c 48 28 d3    	vmovaps zmm10,zmm27
  a078eb:	62 52 75 48 7f d7    	vpermt2ps zmm10,zmm1,zmm15
  a078f1:	62 61 7c 48 10 6c 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x100]
  a078f8:	04 
  a078f9:	62 91 7c 48 28 f5    	vmovaps zmm6,zmm29
  a078ff:	62 d2 75 48 7f f7    	vpermt2ps zmm6,zmm1,zmm15
  a07905:	62 42 7d 40 7f ef    	vpermt2ps zmm29,zmm16,zmm15
  a0790b:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x140]
  a07912:	05 
  a07913:	62 a1 7c 48 28 ca    	vmovaps zmm17,zmm18
  a07919:	62 c2 75 48 7f cf    	vpermt2ps zmm17,zmm1,zmm15
  a0791f:	62 61 7c 48 10 74 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1+0x180]
  a07926:	06 
  a07927:	62 91 7c 48 28 fe    	vmovaps zmm7,zmm30
  a0792d:	62 d2 75 48 7f ff    	vpermt2ps zmm7,zmm1,zmm15
  a07933:	62 61 7c 48 10 54 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a0793a:	07 
  a0793b:	62 91 7c 48 28 d2    	vmovaps zmm2,zmm26
  a07941:	62 d2 75 48 7f d7    	vpermt2ps zmm2,zmm1,zmm15
  a07947:	62 42 7d 40 7f d7    	vpermt2ps zmm26,zmm16,zmm15
  a0794d:	62 f1 7c 48 10 44 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x200]
  a07954:	08 
  a07955:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a0795b:	62 d2 75 48 7f ef    	vpermt2ps zmm5,zmm1,zmm15
  a07961:	62 d2 7d 40 7f c7    	vpermt2ps zmm0,zmm16,zmm15
  a07967:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x240]
  a0796e:	09 
  a0796f:	62 61 7c 48 28 c4    	vmovaps zmm24,zmm4
  a07975:	62 42 75 48 7f c7    	vpermt2ps zmm24,zmm1,zmm15
  a0797b:	62 e1 7c 48 10 64 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x280]
  a07982:	0a 
  a07983:	62 a1 7c 48 28 dc    	vmovaps zmm19,zmm20
  a07989:	62 c2 75 48 7f df    	vpermt2ps zmm19,zmm1,zmm15
  a0798f:	62 71 7c 48 10 4c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  a07996:	0b 
  a07997:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a0799d:	62 52 75 48 7f df    	vpermt2ps zmm11,zmm1,zmm15
  a079a3:	62 e1 7c 48 28 e9    	vmovaps zmm21,zmm1
  a079a9:	62 52 7d 40 7f cf    	vpermt2ps zmm9,zmm16,zmm15
  a079af:	62 71 7c 48 10 44 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x300]
  a079b6:	0c 
  a079b7:	62 41 7c 48 28 f8    	vmovaps zmm31,zmm8
  a079bd:	62 42 75 48 7f ff    	vpermt2ps zmm31,zmm1,zmm15
  a079c3:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x340]
  a079ca:	0d 
  a079cb:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a079d1:	62 52 55 40 7f ef    	vpermt2ps zmm13,zmm21,zmm15
  a079d7:	62 d2 7d 40 7f cf    	vpermt2ps zmm1,zmm16,zmm15
  a079dd:	62 61 7c 48 10 4c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x380]
  a079e4:	0e 
  a079e5:	62 01 7c 48 28 e1    	vmovaps zmm28,zmm25
  a079eb:	62 42 55 40 7f e7    	vpermt2ps zmm28,zmm21,zmm15
  a079f1:	62 42 7d 40 7f cf    	vpermt2ps zmm25,zmm16,zmm15
  a079f7:	62 31 7c 48 58 ff    	vaddps zmm15,zmm0,zmm23
  a079fd:	62 91 34 48 58 d9    	vaddps zmm3,zmm9,zmm25
  a07a03:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm3
  a07a0a:	02 
  a07a0b:	62 91 74 48 58 da    	vaddps zmm3,zmm1,zmm26
  a07a11:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm3
  a07a18:	04 
  a07a19:	62 c1 54 48 58 ee    	vaddps zmm21,zmm5,zmm14
  a07a1f:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm21
  a07a26:	0b 
  a07a27:	62 d1 54 48 5c de    	vsubps zmm3,zmm5,zmm14
  a07a2d:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm3
  a07a34:	09 
  a07a35:	62 91 24 48 58 dc    	vaddps zmm3,zmm11,zmm28
  a07a3b:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a07a42:	ff 
  a07a43:	62 91 24 48 5c ec    	vsubps zmm5,zmm11,zmm28
  a07a49:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm5
  a07a50:	08 
  a07a51:	62 71 14 48 58 f2    	vaddps zmm14,zmm13,zmm2
  a07a57:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm14
  a07a5e:	0a 
  a07a5f:	62 61 14 48 5c e2    	vsubps zmm28,zmm13,zmm2
  a07a65:	62 71 1c 48 58 ee    	vaddps zmm13,zmm12,zmm6
  a07a6b:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm13
  a07a72:	0c 
  a07a73:	62 f1 1c 48 5c d6    	vsubps zmm2,zmm12,zmm6
  a07a79:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm2
  a07a80:	07 
  a07a81:	62 91 2c 48 58 ef    	vaddps zmm5,zmm10,zmm31
  a07a87:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm5
  a07a8e:	fe 
  a07a8f:	62 91 2c 48 5c ef    	vsubps zmm5,zmm10,zmm31
  a07a95:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm5
  a07a9c:	05 
  a07a9d:	62 91 44 48 58 d0    	vaddps zmm2,zmm7,zmm24
  a07aa3:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a07aaa:	03 
  a07aab:	62 91 44 48 5c d0    	vsubps zmm2,zmm7,zmm24
  a07ab1:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a07ab8:	01 
  a07ab9:	62 81 4c 40 58 c5    	vaddps zmm16,zmm22,zmm29
  a07abf:	62 b1 7c 48 5c c7    	vsubps zmm0,zmm0,zmm23
  a07ac5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a07acc:	0e 
  a07acd:	62 62 7d 48 18 05 11 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff66dc11]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a07ad4:	dc 66 ff 
  a07ad7:	62 11 7c 48 28 e0    	vmovaps zmm12,zmm24
  a07add:	62 32 55 40 a8 e1    	vfmadd213ps zmm12,zmm21,zmm17
  a07ae3:	62 e2 7d 48 18 2d 57 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff66db57]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a07aea:	db 66 ff 
  a07aed:	62 32 65 48 bc e5    	vfnmadd231ps zmm12,zmm3,zmm21
  a07af3:	62 81 34 48 5c f9    	vsubps zmm23,zmm9,zmm25
  a07af9:	62 72 7d 48 18 15 55 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff66dc55]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a07b00:	dc 66 ff 
  a07b03:	62 41 44 40 59 ca    	vmulps zmm25,zmm23,zmm10
  a07b09:	62 72 7d 48 18 1d 8d 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff66d88d]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a07b10:	d8 66 ff 
  a07b13:	62 42 7d 48 b8 cb    	vfmadd231ps zmm25,zmm0,zmm11
  a07b19:	62 11 74 48 5c ca    	vsubps zmm9,zmm1,zmm26
  a07b1f:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a07b25:	62 22 0d 48 a8 d3    	vfmadd213ps zmm26,zmm14,zmm19
  a07b2b:	62 22 15 48 bc d5    	vfnmadd231ps zmm26,zmm13,zmm21
  a07b31:	62 01 4c 40 5c fd    	vsubps zmm31,zmm22,zmm29
  a07b37:	62 41 04 40 59 ea    	vmulps zmm29,zmm31,zmm10
  a07b3d:	62 42 35 48 b8 eb    	vfmadd231ps zmm29,zmm9,zmm11
  a07b43:	62 91 1c 48 5c c1    	vsubps zmm0,zmm12,zmm25
  a07b49:	62 91 2c 40 5c cd    	vsubps zmm1,zmm26,zmm29
  a07b4f:	62 f1 7c 48 5c d9    	vsubps zmm3,zmm0,zmm1
  a07b55:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm3
  a07b5c:	12 
  a07b5d:	62 f1 7c 48 58 c1    	vaddps zmm0,zmm0,zmm1
  a07b63:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a07b6a:	06 
  a07b6b:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a07b6f:	62 f1 7c 48 28 0d 07 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff686c07]        # 8e780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bc30>
  a07b76:	6c 68 ff 
  a07b79:	62 62 75 48 7f d8    	vpermt2ps zmm27,zmm1,zmm0
  a07b7f:	62 72 75 48 7f c0    	vpermt2ps zmm8,zmm1,zmm0
  a07b85:	62 d1 24 40 58 f8    	vaddps zmm7,zmm27,zmm8
  a07b8b:	62 d1 24 40 5c d0    	vsubps zmm2,zmm27,zmm8
  a07b91:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a07b98:	62 62 75 48 7f f0    	vpermt2ps zmm30,zmm1,zmm0
  a07b9e:	62 f2 75 48 7f e0    	vpermt2ps zmm4,zmm1,zmm0
  a07ba4:	62 f1 0c 40 58 f4    	vaddps zmm6,zmm30,zmm4
  a07baa:	62 f1 0c 40 5c d4    	vsubps zmm2,zmm30,zmm4
  a07bb0:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm2
  a07bb7:	0d 
  a07bb8:	62 e2 75 48 7f d0    	vpermt2ps zmm18,zmm1,zmm0
  a07bbe:	62 e2 75 48 7f e0    	vpermt2ps zmm20,zmm1,zmm0
  a07bc4:	62 11 7c 48 28 c0    	vmovaps zmm8,zmm24
  a07bca:	62 32 05 48 a8 c2    	vfmadd213ps zmm8,zmm15,zmm18
  a07bd0:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0x80]
  a07bd7:	02 
  a07bd8:	62 32 0d 40 bc c5    	vfnmadd231ps zmm8,zmm30,zmm21
  a07bde:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x200]
  a07be5:	08 
  a07be6:	62 c1 64 48 59 f2    	vmulps zmm22,zmm3,zmm10
  a07bec:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x240]
  a07bf3:	09 
  a07bf4:	62 c2 6d 48 b8 f3    	vfmadd231ps zmm22,zmm2,zmm11
  a07bfa:	62 11 7c 48 28 e8    	vmovaps zmm13,zmm24
  a07c00:	62 61 7c 48 10 5c 24 	vmovups zmm27,ZMMWORD PTR [rsp+0x100]
  a07c07:	04 
  a07c08:	62 32 25 40 a8 ec    	vfmadd213ps zmm13,zmm27,zmm20
  a07c0e:	62 32 7d 40 bc ed    	vfnmadd231ps zmm13,zmm16,zmm21
  a07c14:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x1c0]
  a07c1b:	07 
  a07c1c:	62 51 54 48 59 f2    	vmulps zmm14,zmm5,zmm10
  a07c22:	62 52 1d 40 b8 f3    	vfmadd231ps zmm14,zmm28,zmm11
  a07c28:	62 b1 3c 48 58 c6    	vaddps zmm0,zmm8,zmm22
  a07c2e:	62 d1 14 48 58 ce    	vaddps zmm1,zmm13,zmm14
  a07c34:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a07c3a:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm4
  a07c41:	10 
  a07c42:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a07c48:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a07c4f:	11 
  a07c50:	62 d1 6c 40 58 c7    	vaddps zmm0,zmm18,zmm15
  a07c56:	62 c2 55 40 bc d7    	vfnmadd231ps zmm18,zmm21,zmm15
  a07c5c:	62 91 7c 48 58 c6    	vaddps zmm0,zmm0,zmm30
  a07c62:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a07c69:	0f 
  a07c6a:	62 82 3d 40 b8 d6    	vfmadd231ps zmm18,zmm24,zmm30
  a07c70:	62 51 6c 48 59 fa    	vmulps zmm15,zmm2,zmm10
  a07c76:	62 72 25 48 bc fb    	vfnmadd231ps zmm15,zmm11,zmm3
  a07c7c:	62 91 5c 40 58 c3    	vaddps zmm0,zmm20,zmm27
  a07c82:	62 82 55 40 bc e3    	vfnmadd231ps zmm20,zmm21,zmm27
  a07c88:	62 b1 7c 48 58 c0    	vaddps zmm0,zmm0,zmm16
  a07c8e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a07c95:	04 
  a07c96:	62 a2 3d 40 b8 e0    	vfmadd231ps zmm20,zmm24,zmm16
  a07c9c:	62 41 1c 40 59 e2    	vmulps zmm28,zmm28,zmm10
  a07ca2:	62 62 25 48 bc e5    	vfnmadd231ps zmm28,zmm11,zmm5
  a07ca8:	62 f1 7c 48 10 0c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1]
  a07caf:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a07cb5:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a07cb9:	62 f1 7c 48 28 1d bd 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff686abd]        # 8e780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bc30>
  a07cc0:	6a 68 ff 
  a07cc3:	62 f2 65 48 7f c8    	vpermt2ps zmm1,zmm3,zmm0
  a07cc9:	62 01 7c 48 28 d8    	vmovaps zmm27,zmm24
  a07ccf:	62 62 45 48 a8 d9    	vfmadd213ps zmm27,zmm7,zmm1
  a07cd5:	62 f1 74 48 58 ef    	vaddps zmm5,zmm1,zmm7
  a07cdb:	62 f2 55 40 bc cf    	vfnmadd231ps zmm1,zmm21,zmm7
  a07ce1:	62 f1 54 48 58 de    	vaddps zmm3,zmm5,zmm6
  a07ce7:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm3
  a07cee:	02 
  a07cef:	62 22 4d 48 bc dd    	vfnmadd231ps zmm27,zmm6,zmm21
  a07cf5:	62 f2 3d 40 b8 ce    	vfmadd231ps zmm1,zmm24,zmm6
  a07cfb:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x40]
  a07d02:	01 
  a07d03:	62 d1 54 48 59 f2    	vmulps zmm6,zmm5,zmm10
  a07d09:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x140]
  a07d10:	05 
  a07d11:	62 d2 65 48 b8 f3    	vfmadd231ps zmm6,zmm3,zmm11
  a07d17:	62 d1 64 48 59 e2    	vmulps zmm4,zmm3,zmm10
  a07d1d:	62 f2 25 48 bc e5    	vfnmadd231ps zmm4,zmm11,zmm5
  a07d23:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x2c0]
  a07d2a:	0b 
  a07d2b:	62 f1 74 40 58 eb    	vaddps zmm5,zmm17,zmm3
  a07d31:	62 e2 55 40 bc cb    	vfnmadd231ps zmm17,zmm21,zmm3
  a07d37:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x40]
  a07d3e:	ff 
  a07d3f:	62 61 54 48 58 f3    	vaddps zmm30,zmm5,zmm3
  a07d45:	62 e2 3d 40 b8 cb    	vfmadd231ps zmm17,zmm24,zmm3
  a07d4b:	62 f1 2c 48 59 6c 24 	vmulps zmm5,zmm10,ZMMWORD PTR [rsp+0x380]
  a07d52:	0e 
  a07d53:	62 b2 25 48 bc ef    	vfnmadd231ps zmm5,zmm11,zmm23
  a07d59:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x280]
  a07d60:	0a 
  a07d61:	62 e1 64 40 58 c3    	vaddps zmm16,zmm19,zmm3
  a07d67:	62 e2 55 40 bc db    	vfnmadd231ps zmm19,zmm21,zmm3
  a07d6d:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x300]
  a07d74:	0c 
  a07d75:	62 e1 7c 40 58 fb    	vaddps zmm23,zmm16,zmm3
  a07d7b:	62 e2 3d 40 b8 db    	vfmadd231ps zmm19,zmm24,zmm3
  a07d81:	62 51 34 48 59 ca    	vmulps zmm9,zmm9,zmm10
  a07d87:	62 12 25 48 bc cf    	vfnmadd231ps zmm9,zmm11,zmm31
  a07d8d:	62 f1 74 40 5c fd    	vsubps zmm7,zmm17,zmm5
  a07d93:	62 c1 64 40 5c c1    	vsubps zmm16,zmm19,zmm9
  a07d99:	62 b1 44 48 5c d8    	vsubps zmm3,zmm7,zmm16
  a07d9f:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a07da6:	01 
  a07da7:	62 b1 44 48 58 d8    	vaddps zmm3,zmm7,zmm16
  a07dad:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm3
  a07db4:	05 
  a07db5:	62 f1 7c 48 28 1d 81 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff686981]        # 8e740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bbf0>
  a07dbc:	69 68 ff 
  a07dbf:	62 f2 65 48 7f d0    	vpermt2ps zmm2,zmm3,zmm0
  a07dc5:	62 91 7c 48 28 d8    	vmovaps zmm3,zmm24
  a07dcb:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a07dd2:	fe 
  a07dd3:	62 f2 7d 48 a8 da    	vfmadd213ps zmm3,zmm0,zmm2
  a07dd9:	62 f1 6c 48 58 f8    	vaddps zmm7,zmm2,zmm0
  a07ddf:	62 f2 55 40 bc d0    	vfnmadd231ps zmm2,zmm21,zmm0
  a07de5:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a07dec:	03 
  a07ded:	62 f1 44 48 58 f8    	vaddps zmm7,zmm7,zmm0
  a07df3:	62 b2 7d 48 bc dd    	vfnmadd231ps zmm3,zmm0,zmm21
  a07df9:	62 f2 3d 40 b8 d0    	vfmadd231ps zmm2,zmm24,zmm0
  a07dff:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x340]
  a07e06:	0d 
  a07e07:	62 41 7c 40 59 fa    	vmulps zmm31,zmm16,zmm10
  a07e0d:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a07e14:	62 42 7d 48 b8 fb    	vfmadd231ps zmm31,zmm0,zmm11
  a07e1a:	62 d1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm10
  a07e20:	62 b2 25 48 bc c0    	vfnmadd231ps zmm0,zmm11,zmm16
  a07e26:	62 c1 6c 40 58 c7    	vaddps zmm16,zmm18,zmm15
  a07e2c:	62 81 5c 40 58 ec    	vaddps zmm21,zmm20,zmm28
  a07e32:	62 31 7c 40 58 d5    	vaddps zmm10,zmm16,zmm21
  a07e38:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm10
  a07e3f:	ff 
  a07e40:	62 31 7c 40 5c d5    	vsubps zmm10,zmm16,zmm21
  a07e46:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm10
  a07e4d:	fe 
  a07e4e:	62 e1 74 48 58 c4    	vaddps zmm16,zmm1,zmm4
  a07e54:	62 e1 74 48 5c ec    	vsubps zmm21,zmm1,zmm4
  a07e5a:	62 51 6c 40 5c ff    	vsubps zmm15,zmm18,zmm15
  a07e60:	62 81 5c 40 5c d4    	vsubps zmm18,zmm20,zmm28
  a07e66:	62 e1 6c 48 5c e0    	vsubps zmm20,zmm2,zmm0
  a07e6c:	62 f1 7c 48 58 c2    	vaddps zmm0,zmm0,zmm2
  a07e72:	62 b1 54 48 58 e1    	vaddps zmm4,zmm5,zmm17
  a07e78:	62 b1 34 48 58 eb    	vaddps zmm5,zmm9,zmm19
  a07e7e:	62 b1 3c 48 5c d6    	vsubps zmm2,zmm8,zmm22
  a07e84:	62 51 14 48 5c c6    	vsubps zmm8,zmm13,zmm14
  a07e8a:	62 71 24 40 58 ce    	vaddps zmm9,zmm27,zmm6
  a07e90:	62 61 24 40 5c de    	vsubps zmm27,zmm27,zmm6
  a07e96:	62 d1 34 40 58 f4    	vaddps zmm6,zmm25,zmm12
  a07e9c:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x3c0]
  a07ea3:	0f 
  a07ea4:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x100]
  a07eab:	04 
  a07eac:	62 51 24 48 58 d5    	vaddps zmm10,zmm11,zmm13
  a07eb2:	62 11 14 40 58 e2    	vaddps zmm12,zmm29,zmm26
  a07eb8:	62 d1 4c 48 5c cc    	vsubps zmm1,zmm6,zmm12
  a07ebe:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a07ec5:	03 
  a07ec6:	62 41 4c 48 58 c4    	vaddps zmm24,zmm6,zmm12
  a07ecc:	62 91 64 48 5c f7    	vsubps zmm6,zmm3,zmm31
  a07ed2:	62 61 04 40 58 cb    	vaddps zmm25,zmm31,zmm3
  a07ed8:	62 41 6c 48 58 d0    	vaddps zmm26,zmm2,zmm8
  a07ede:	62 d1 6c 48 5c c8    	vsubps zmm1,zmm2,zmm8
  a07ee4:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a07eeb:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x80]
  a07ef2:	02 
  a07ef3:	62 51 6c 48 58 c2    	vaddps zmm8,zmm2,zmm10
  a07ef9:	62 f2 7d 48 18 0d 5d 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff66d55d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a07f00:	d5 66 ff 
  a07f03:	62 72 75 48 ac d2    	vfnmadd213ps zmm10,zmm1,zmm2
  a07f09:	62 21 0c 40 58 e7    	vaddps zmm28,zmm30,zmm23
  a07f0f:	62 21 0c 40 5c ef    	vsubps zmm29,zmm30,zmm23
  a07f15:	62 81 44 48 58 dc    	vaddps zmm19,zmm7,zmm28
  a07f1b:	62 62 75 48 ac e7    	vfnmadd213ps zmm28,zmm1,zmm7
  a07f21:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a07f27:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x400]
  a07f2e:	10 
  a07f2f:	62 d2 6d 48 ac f9    	vfnmadd213ps zmm7,zmm2,zmm9
  a07f35:	62 41 24 48 5c fd    	vsubps zmm31,zmm11,zmm13
  a07f3b:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a07f41:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x180]
  a07f48:	06 
  a07f49:	62 72 15 48 ac de    	vfnmadd213ps zmm11,zmm13,zmm6
  a07f4f:	62 e1 34 48 58 ca    	vaddps zmm17,zmm9,zmm2
  a07f55:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a07f5b:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp-0x40]
  a07f62:	ff 
  a07f63:	62 b2 4d 40 ac d0    	vfnmadd213ps zmm2,zmm22,zmm16
  a07f69:	62 f2 7d 48 18 1d 61 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff66d361]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a07f70:	d3 66 ff 
  a07f73:	62 71 64 48 59 4c 24 	vmulps zmm9,zmm3,ZMMWORD PTR [rsp+0x40]
  a07f7a:	01 
  a07f7b:	62 d1 4c 48 58 f5    	vaddps zmm6,zmm6,zmm13
  a07f81:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm6
  a07f88:	06 
  a07f89:	62 d1 6c 48 5c f1    	vsubps zmm6,zmm2,zmm9
  a07f8f:	62 51 6c 48 58 f1    	vaddps zmm14,zmm2,zmm9
  a07f95:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a07f9b:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x140]
  a07fa2:	05 
  a07fa3:	62 32 1d 48 ac cc    	vfnmadd213ps zmm9,zmm12,zmm20
  a07fa9:	62 71 64 48 59 6c 24 	vmulps zmm13,zmm3,ZMMWORD PTR [rsp-0x80]
  a07fb0:	fe 
  a07fb1:	62 d1 34 48 58 d5    	vaddps zmm2,zmm9,zmm13
  a07fb7:	62 c1 34 48 5c fd    	vsubps zmm23,zmm9,zmm13
  a07fbd:	62 21 04 48 58 f2    	vaddps zmm30,zmm15,zmm18
  a07fc3:	62 11 54 40 58 ee    	vaddps zmm13,zmm21,zmm30
  a07fc9:	62 22 75 48 ac f5    	vfnmadd213ps zmm30,zmm1,zmm21
  a07fcf:	62 e1 5c 48 58 ed    	vaddps zmm21,zmm4,zmm5
  a07fd5:	62 f1 5c 48 5c ed    	vsubps zmm5,zmm4,zmm5
  a07fdb:	62 b1 7c 48 58 e5    	vaddps zmm4,zmm0,zmm21
  a07fe1:	62 e2 75 48 ac e8    	vfnmadd213ps zmm21,zmm1,zmm0
  a07fe7:	62 a1 04 48 5c d2    	vsubps zmm18,zmm15,zmm18
  a07fed:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a07ff3:	62 12 2d 40 ac fb    	vfnmadd213ps zmm15,zmm26,zmm27
  a07ff9:	62 01 24 40 58 da    	vaddps zmm27,zmm27,zmm26
  a07fff:	62 61 7c 48 28 d1    	vmovaps zmm26,zmm1
  a08005:	62 02 3d 40 ac d1    	vfnmadd213ps zmm26,zmm24,zmm25
  a0800b:	62 91 34 40 58 c0    	vaddps zmm0,zmm25,zmm24
  a08011:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a08018:	fe 
  a08019:	62 f1 14 40 59 c3    	vmulps zmm0,zmm29,zmm3
  a0801f:	62 61 2c 48 5c e8    	vsubps zmm29,zmm10,zmm0
  a08025:	62 61 2c 48 58 c0    	vaddps zmm24,zmm10,zmm0
  a0802b:	62 71 04 40 59 cb    	vmulps zmm9,zmm31,zmm3
  a08031:	62 91 34 48 58 cc    	vaddps zmm1,zmm9,zmm28
  a08037:	62 41 1c 40 5c e1    	vsubps zmm28,zmm28,zmm9
  a0803d:	62 71 64 48 59 4c 24 	vmulps zmm9,zmm3,ZMMWORD PTR [rsp+0x480]
  a08044:	12 
  a08045:	62 61 34 48 58 ff    	vaddps zmm31,zmm9,zmm7
  a0804b:	62 d1 44 48 5c c1    	vsubps zmm0,zmm7,zmm9
  a08051:	62 f1 64 48 59 7c 24 	vmulps zmm7,zmm3,ZMMWORD PTR [rsp+0x440]
  a08058:	11 
  a08059:	62 71 24 48 5c d7    	vsubps zmm10,zmm11,zmm7
  a0805f:	62 61 24 48 58 cf    	vaddps zmm25,zmm11,zmm7
  a08065:	62 a1 7c 40 58 f6    	vaddps zmm22,zmm16,zmm22
  a0806b:	62 f1 64 48 59 7c 24 	vmulps zmm7,zmm3,ZMMWORD PTR [rsp+0xc0]
  a08072:	03 
  a08073:	62 f1 54 48 59 eb    	vmulps zmm5,zmm5,zmm3
  a08079:	62 51 5c 40 58 dc    	vaddps zmm11,zmm20,zmm12
  a0807f:	62 e1 0c 40 5c e5    	vsubps zmm20,zmm30,zmm5
  a08085:	62 e1 6c 40 59 c3    	vmulps zmm16,zmm18,zmm3
  a0808b:	62 f1 0c 40 58 ed    	vaddps zmm5,zmm30,zmm5
  a08091:	62 31 54 40 58 c8    	vaddps zmm9,zmm21,zmm16
  a08097:	62 21 54 40 5c f0    	vsubps zmm30,zmm21,zmm16
  a0809d:	62 c1 44 48 58 d7    	vaddps zmm18,zmm7,zmm15
  a080a3:	62 e1 64 48 59 04 24 	vmulps zmm16,zmm3,ZMMWORD PTR [rsp]
  a080aa:	62 71 04 48 5c ff    	vsubps zmm15,zmm15,zmm7
  a080b0:	62 b1 2c 40 5c f8    	vsubps zmm7,zmm26,zmm16
  a080b6:	62 a1 2c 40 58 c0    	vaddps zmm16,zmm26,zmm16
  a080bc:	62 61 7c 48 28 15 ba 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff6beeba]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a080c3:	ee 6b ff 
  a080c6:	62 32 2d 40 7f c4    	vpermt2ps zmm8,zmm26,zmm20
  a080cc:	62 02 2d 40 7f fb    	vpermt2ps zmm31,zmm26,zmm27
  a080d2:	62 92 2d 40 7f f0    	vpermt2ps zmm6,zmm26,zmm24
  a080d8:	62 72 2d 40 7f e8    	vpermt2ps zmm13,zmm26,zmm0
  a080de:	62 a2 2d 40 7f d6    	vpermt2ps zmm18,zmm26,zmm22
  a080e4:	62 62 2d 40 7f ed    	vpermt2ps zmm29,zmm26,zmm5
  a080ea:	62 c2 2d 40 7f cf    	vpermt2ps zmm17,zmm26,zmm15
  a080f0:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a080f4:	62 72 2d 40 7f f3    	vpermt2ps zmm14,zmm26,zmm3
  a080fa:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a08100:	62 e1 7c 48 28 35 f6 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6bedf6]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a08107:	ed 6b ff 
  a0810a:	62 b2 4d 40 7f c2    	vpermt2ps zmm0,zmm22,zmm18
  a08110:	62 61 7c 48 28 05 26 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff6bee26]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a08117:	ee 6b ff 
  a0811a:	62 32 3d 40 7f c2    	vpermt2ps zmm8,zmm24,zmm18
  a08120:	62 91 7c 48 28 ef    	vmovaps zmm5,zmm31
  a08126:	62 92 4d 40 7f ed    	vpermt2ps zmm5,zmm22,zmm29
  a0812c:	62 02 3d 40 7f fd    	vpermt2ps zmm31,zmm24,zmm29
  a08132:	62 71 7c 48 28 fe    	vmovaps zmm15,zmm6
  a08138:	62 32 4d 40 7f f9    	vpermt2ps zmm15,zmm22,zmm17
  a0813e:	62 b2 3d 40 7f f1    	vpermt2ps zmm6,zmm24,zmm17
  a08144:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a0814a:	62 52 4d 40 7f e6    	vpermt2ps zmm12,zmm22,zmm14
  a08150:	62 52 3d 40 7f ee    	vpermt2ps zmm13,zmm24,zmm14
  a08156:	62 51 fd 48 14 f7    	vunpcklpd zmm14,zmm0,zmm15
  a0815c:	62 c1 fd 48 15 e7    	vunpckhpd zmm20,zmm0,zmm15
  a08162:	62 51 d5 48 14 fc    	vunpcklpd zmm15,zmm5,zmm12
  a08168:	62 d1 d5 48 15 c4    	vunpckhpd zmm0,zmm5,zmm12
  a0816e:	62 e1 bd 48 14 ee    	vunpcklpd zmm21,zmm8,zmm6
  a08174:	62 e1 bd 48 15 d6    	vunpckhpd zmm18,zmm8,zmm6
  a0817a:	62 d1 85 40 14 f5    	vunpcklpd zmm6,zmm31,zmm13
  a08180:	62 51 85 40 15 ed    	vunpckhpd zmm13,zmm31,zmm13
  a08186:	62 31 7c 48 28 c4    	vmovaps zmm8,zmm20
  a0818c:	62 61 7c 48 28 1d 6a 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff6bec6a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a08193:	ec 6b ff 
  a08196:	62 72 25 40 7f c0    	vpermt2ps zmm8,zmm27,zmm0
  a0819c:	62 61 7c 48 28 2d 9a 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff6bec9a]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a081a3:	ec 6b ff 
  a081a6:	62 e2 15 40 7f e0    	vpermt2ps zmm20,zmm29,zmm0
  a081ac:	62 b1 7c 48 28 ed    	vmovaps zmm5,zmm21
  a081b2:	62 f2 25 40 7f ee    	vpermt2ps zmm5,zmm27,zmm6
  a081b8:	62 e2 15 40 7f ee    	vpermt2ps zmm21,zmm29,zmm6
  a081be:	62 31 7c 48 28 e2    	vmovaps zmm12,zmm18
  a081c4:	62 52 25 40 7f e5    	vpermt2ps zmm12,zmm27,zmm13
  a081ca:	62 c2 15 40 7f d5    	vpermt2ps zmm18,zmm29,zmm13
  a081d0:	62 c2 2d 40 7f d9    	vpermt2ps zmm19,zmm26,zmm9
  a081d6:	62 72 2d 40 7f 54 24 	vpermt2ps zmm10,zmm26,ZMMWORD PTR [rsp-0x80]
  a081dd:	fe 
  a081de:	62 92 2d 40 7f d4    	vpermt2ps zmm2,zmm26,zmm28
  a081e4:	62 51 7c 48 28 ee    	vmovaps zmm13,zmm14
  a081ea:	62 52 15 40 7f f7    	vpermt2ps zmm14,zmm29,zmm15
  a081f0:	62 41 7c 48 28 e7    	vmovaps zmm28,zmm15
  a081f6:	62 92 2d 40 7f e1    	vpermt2ps zmm4,zmm26,zmm25
  a081fc:	62 d2 2d 40 7f fb    	vpermt2ps zmm7,zmm26,zmm11
  a08202:	62 92 2d 40 7f ce    	vpermt2ps zmm1,zmm26,zmm30
  a08208:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x180]
  a0820f:	06 
  a08210:	62 b2 2d 40 7f f0    	vpermt2ps zmm6,zmm26,zmm16
  a08216:	62 e2 2d 40 7f fb    	vpermt2ps zmm23,zmm26,zmm3
  a0821c:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a08222:	62 f2 4d 40 7f c7    	vpermt2ps zmm0,zmm22,zmm7
  a08228:	62 e2 3d 40 7f df    	vpermt2ps zmm19,zmm24,zmm7
  a0822e:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a08234:	62 f2 4d 40 7f f9    	vpermt2ps zmm7,zmm22,zmm1
  a0823a:	62 72 3d 40 7f d1    	vpermt2ps zmm10,zmm24,zmm1
  a08240:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a08246:	62 f2 4d 40 7f ce    	vpermt2ps zmm1,zmm22,zmm6
  a0824c:	62 f2 3d 40 7f d6    	vpermt2ps zmm2,zmm24,zmm6
  a08252:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  a08258:	62 32 4d 40 7f df    	vpermt2ps zmm11,zmm22,zmm23
  a0825e:	62 b2 3d 40 7f e7    	vpermt2ps zmm4,zmm24,zmm23
  a08264:	62 71 fd 48 14 c9    	vunpcklpd zmm9,zmm0,zmm1
  a0826a:	62 f1 fd 48 15 f1    	vunpckhpd zmm6,zmm0,zmm1
  a08270:	62 d1 c5 48 14 db    	vunpcklpd zmm3,zmm7,zmm11
  a08276:	62 d1 c5 48 15 cb    	vunpckhpd zmm1,zmm7,zmm11
  a0827c:	62 f1 e5 40 14 fa    	vunpcklpd zmm7,zmm19,zmm2
  a08282:	62 f1 e5 40 15 c2    	vunpckhpd zmm0,zmm19,zmm2
  a08288:	62 71 ad 48 14 dc    	vunpcklpd zmm11,zmm10,zmm4
  a0828e:	62 f1 ad 48 15 e4    	vunpckhpd zmm4,zmm10,zmm4
  a08294:	62 d1 7c 48 28 d1    	vmovaps zmm2,zmm9
  a0829a:	62 72 15 40 7f cb    	vpermt2ps zmm9,zmm29,zmm3
  a082a0:	62 71 7c 48 28 fe    	vmovaps zmm15,zmm6
  a082a6:	62 72 25 40 7f f9    	vpermt2ps zmm15,zmm27,zmm1
  a082ac:	62 f2 15 40 7f f1    	vpermt2ps zmm6,zmm29,zmm1
  a082b2:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a082b8:	62 d2 25 40 7f cb    	vpermt2ps zmm1,zmm27,zmm11
  a082be:	62 d2 15 40 7f fb    	vpermt2ps zmm7,zmm29,zmm11
  a082c4:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a082ca:	62 72 25 40 7f dc    	vpermt2ps zmm11,zmm27,zmm4
  a082d0:	62 f2 15 40 7f c4    	vpermt2ps zmm0,zmm29,zmm4
  a082d6:	62 71 7c 48 10 51 08 	vmovups zmm10,ZMMWORD PTR [rcx+0x200]
  a082dd:	62 e1 7c 48 10 41 09 	vmovups zmm16,ZMMWORD PTR [rcx+0x240]
  a082e4:	62 d1 54 48 59 e2    	vmulps zmm4,zmm5,zmm10
  a082ea:	62 b2 75 48 bc e0    	vfnmadd231ps zmm4,zmm1,zmm16
  a082f0:	62 51 74 48 59 d2    	vmulps zmm10,zmm1,zmm10
  a082f6:	62 f1 7c 48 10 49 04 	vmovups zmm1,ZMMWORD PTR [rcx+0x100]
  a082fd:	62 72 7d 40 b8 d5    	vfmadd231ps zmm10,zmm16,zmm5
  a08303:	62 e1 7c 48 10 41 05 	vmovups zmm16,ZMMWORD PTR [rcx+0x140]
  a0830a:	62 f1 3c 48 59 e9    	vmulps zmm5,zmm8,zmm1
  a08310:	62 b2 05 48 bc e8    	vfnmadd231ps zmm5,zmm15,zmm16
  a08316:	62 f1 04 48 59 c9    	vmulps zmm1,zmm15,zmm1
  a0831c:	62 71 7c 48 10 79 0c 	vmovups zmm15,ZMMWORD PTR [rcx+0x300]
  a08323:	62 d2 7d 40 b8 c8    	vfmadd231ps zmm1,zmm16,zmm8
  a08329:	62 71 7c 48 10 41 0d 	vmovups zmm8,ZMMWORD PTR [rcx+0x340]
  a08330:	62 c1 1c 48 59 c7    	vmulps zmm16,zmm12,zmm15
  a08336:	62 c2 25 48 bc c0    	vfnmadd231ps zmm16,zmm11,zmm8
  a0833c:	62 51 24 48 59 df    	vmulps zmm11,zmm11,zmm15
  a08342:	62 71 7c 48 10 79 02 	vmovups zmm15,ZMMWORD PTR [rcx+0x80]
  a08349:	62 52 3d 48 b8 dc    	vfmadd231ps zmm11,zmm8,zmm12
  a0834f:	62 71 7c 48 10 41 03 	vmovups zmm8,ZMMWORD PTR [rcx+0xc0]
  a08356:	62 51 0c 48 59 e7    	vmulps zmm12,zmm14,zmm15
  a0835c:	62 52 35 48 bc e0    	vfnmadd231ps zmm12,zmm9,zmm8
  a08362:	62 51 34 48 59 cf    	vmulps zmm9,zmm9,zmm15
  a08368:	62 71 7c 48 10 79 0a 	vmovups zmm15,ZMMWORD PTR [rcx+0x280]
  a0836f:	62 52 3d 48 b8 ce    	vfmadd231ps zmm9,zmm8,zmm14
  a08375:	62 71 7c 48 10 41 0b 	vmovups zmm8,ZMMWORD PTR [rcx+0x2c0]
  a0837c:	62 51 54 40 59 f7    	vmulps zmm14,zmm21,zmm15
  a08382:	62 52 45 48 bc f0    	vfnmadd231ps zmm14,zmm7,zmm8
  a08388:	62 d1 44 48 59 ff    	vmulps zmm7,zmm7,zmm15
  a0838e:	62 71 7c 48 10 79 06 	vmovups zmm15,ZMMWORD PTR [rcx+0x180]
  a08395:	62 b2 3d 48 b8 fd    	vfmadd231ps zmm7,zmm8,zmm21
  a0839b:	62 71 7c 48 10 41 07 	vmovups zmm8,ZMMWORD PTR [rcx+0x1c0]
  a083a2:	62 c1 5c 40 59 df    	vmulps zmm19,zmm20,zmm15
  a083a8:	62 c2 4d 48 bc d8    	vfnmadd231ps zmm19,zmm6,zmm8
  a083ae:	62 d1 4c 48 59 f7    	vmulps zmm6,zmm6,zmm15
  a083b4:	62 71 7c 48 10 79 0e 	vmovups zmm15,ZMMWORD PTR [rcx+0x380]
  a083bb:	62 b2 3d 48 b8 f4    	vfmadd231ps zmm6,zmm8,zmm20
  a083c1:	62 71 7c 48 10 41 0f 	vmovups zmm8,ZMMWORD PTR [rcx+0x3c0]
  a083c8:	62 c1 6c 40 59 e7    	vmulps zmm20,zmm18,zmm15
  a083ce:	62 c2 7d 48 bc e0    	vfnmadd231ps zmm20,zmm0,zmm8
  a083d4:	62 d1 7c 48 59 c7    	vmulps zmm0,zmm0,zmm15
  a083da:	62 b2 3d 48 b8 c2    	vfmadd231ps zmm0,zmm8,zmm18
  a083e0:	62 12 25 40 7f ec    	vpermt2ps zmm13,zmm27,zmm28
  a083e6:	62 f2 25 40 7f d3    	vpermt2ps zmm2,zmm27,zmm3
  a083ec:	62 f1 14 48 58 dc    	vaddps zmm3,zmm13,zmm4
  a083f2:	62 f1 14 48 5c e4    	vsubps zmm4,zmm13,zmm4
  a083f8:	62 51 74 48 58 c3    	vaddps zmm8,zmm1,zmm11
  a083fe:	62 d1 74 48 5c cb    	vsubps zmm1,zmm1,zmm11
  a08404:	62 51 1c 48 58 de    	vaddps zmm11,zmm12,zmm14
  a0840a:	62 51 1c 48 5c e6    	vsubps zmm12,zmm12,zmm14
  a08410:	62 71 34 48 58 ef    	vaddps zmm13,zmm9,zmm7
  a08416:	62 f1 34 48 5c ff    	vsubps zmm7,zmm9,zmm7
  a0841c:	62 71 4c 48 58 c8    	vaddps zmm9,zmm6,zmm0
  a08422:	62 f1 4c 48 5c c0    	vsubps zmm0,zmm6,zmm0
  a08428:	62 b1 64 40 58 f4    	vaddps zmm6,zmm19,zmm20
  a0842e:	62 31 64 40 5c f4    	vsubps zmm14,zmm19,zmm20
  a08434:	62 71 2c 48 58 fa    	vaddps zmm15,zmm10,zmm2
  a0843a:	62 d1 6c 48 5c d2    	vsubps zmm2,zmm2,zmm10
  a08440:	62 31 54 48 58 d0    	vaddps zmm10,zmm5,zmm16
  a08446:	62 f1 7c 40 5c ed    	vsubps zmm5,zmm16,zmm5
  a0844c:	62 e1 1c 48 58 c7    	vaddps zmm16,zmm12,zmm7
  a08452:	62 d1 44 48 5c fc    	vsubps zmm7,zmm7,zmm12
  a08458:	62 51 7c 48 5c e6    	vsubps zmm12,zmm0,zmm14
  a0845e:	62 f1 0c 48 58 c0    	vaddps zmm0,zmm14,zmm0
  a08464:	62 51 64 48 58 f2    	vaddps zmm14,zmm3,zmm10
  a0846a:	62 d1 64 48 5c da    	vsubps zmm3,zmm3,zmm10
  a08470:	62 51 14 48 58 d1    	vaddps zmm10,zmm13,zmm9
  a08476:	62 51 14 48 5c c9    	vsubps zmm9,zmm13,zmm9
  a0847c:	62 51 3c 48 58 ef    	vaddps zmm13,zmm8,zmm15
  a08482:	62 51 04 48 5c c0    	vsubps zmm8,zmm15,zmm8
  a08488:	62 71 24 48 58 fe    	vaddps zmm15,zmm11,zmm6
  a0848e:	62 d1 4c 48 5c f3    	vsubps zmm6,zmm6,zmm11
  a08494:	62 71 5c 48 58 d9    	vaddps zmm11,zmm4,zmm1
  a0849a:	62 e2 7d 48 18 0d f8 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff66cef8]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a084a1:	ce 66 ff 
  a084a4:	62 a1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm17
  a084aa:	62 31 1c 48 59 e1    	vmulps zmm12,zmm12,zmm17
  a084b0:	62 b1 44 48 59 f9    	vmulps zmm7,zmm7,zmm17
  a084b6:	62 b1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm17
  a084bc:	62 f1 5c 48 5c c9    	vsubps zmm1,zmm4,zmm1
  a084c2:	62 e1 44 48 5c c8    	vsubps zmm17,zmm7,zmm0
  a084c8:	62 f1 44 48 58 c0    	vaddps zmm0,zmm7,zmm0
  a084ce:	62 f1 54 48 58 fa    	vaddps zmm7,zmm5,zmm2
  a084d4:	62 e1 6c 48 5c d5    	vsubps zmm18,zmm2,zmm5
  a084da:	62 d1 7c 40 58 d4    	vaddps zmm2,zmm16,zmm12
  a084e0:	62 31 1c 48 5c e0    	vsubps zmm12,zmm12,zmm16
  a084e6:	62 e1 24 48 58 c2    	vaddps zmm16,zmm11,zmm2
  a084ec:	62 f1 24 48 5c e2    	vsubps zmm4,zmm11,zmm2
  a084f2:	62 31 44 48 58 d9    	vaddps zmm11,zmm7,zmm17
  a084f8:	62 b1 44 48 5c e9    	vsubps zmm5,zmm7,zmm17
  a084fe:	62 d1 64 48 58 f9    	vaddps zmm7,zmm3,zmm9
  a08504:	62 d1 64 48 5c d1    	vsubps zmm2,zmm3,zmm9
  a0850a:	62 71 3c 48 58 ce    	vaddps zmm9,zmm8,zmm6
  a08510:	62 f1 3c 48 5c de    	vsubps zmm3,zmm8,zmm6
  a08516:	62 71 74 48 58 c0    	vaddps zmm8,zmm1,zmm0
  a0851c:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a08522:	62 c1 6c 40 58 cc    	vaddps zmm17,zmm18,zmm12
  a08528:	62 d1 6c 40 5c cc    	vsubps zmm1,zmm18,zmm12
  a0852e:	62 d1 14 48 5c f2    	vsubps zmm6,zmm13,zmm10
  a08534:	62 51 14 48 58 d2    	vaddps zmm10,zmm13,zmm10
  a0853a:	62 51 0c 48 5c e7    	vsubps zmm12,zmm14,zmm15
  a08540:	62 51 0c 48 58 ef    	vaddps zmm13,zmm14,zmm15
  a08546:	62 51 7c 48 28 f2    	vmovaps zmm14,zmm10
  a0854c:	62 71 7c 48 28 3d 6a 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff68626a]        # 8e7c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bc70>
  a08553:	62 68 ff 
  a08556:	62 52 05 48 7f f5    	vpermt2ps zmm14,zmm15,zmm13
  a0855c:	62 71 7c 48 11 34 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm14
  a08563:	62 51 2c 48 14 f5    	vunpcklps zmm14,zmm10,zmm13
  a08569:	62 73 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x60],zmm14,0x3
  a08570:	06 03 
  a08572:	62 51 2c 48 15 f5    	vunpckhps zmm14,zmm10,zmm13
  a08578:	62 53 7d 48 19 f6 03 	vextractf32x4 xmm14,zmm14,0x3
  a0857f:	c5 78 13 74 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm14
  a08585:	c5 7c 28 35 73 62 68 	vmovaps ymm14,YMMWORD PTR [rip+0xffffffffff686273]        # 8e800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bcb0>
  a0858c:	ff 
  a0858d:	62 52 0d 48 7f d5    	vpermt2ps zmm10,zmm14,zmm13
  a08593:	c5 7c 11 54 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm10
  a08599:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a0859f:	62 32 05 48 7f d0    	vpermt2ps zmm10,zmm15,zmm16
  a085a5:	62 71 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x78],zmm10
  a085ac:	78 00 00 00 
  a085b0:	62 31 24 48 14 d0    	vunpcklps zmm10,zmm11,zmm16
  a085b6:	62 73 7d 48 19 94 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xd8],zmm10,0x3
  a085bd:	d8 00 00 00 03 
  a085c2:	62 31 24 48 15 d0    	vunpckhps zmm10,zmm11,zmm16
  a085c8:	62 53 7d 48 19 d2 03 	vextractf32x4 xmm10,zmm10,0x3
  a085cf:	c5 78 13 94 16 e8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xe8],xmm10
  a085d6:	00 00 
  a085d8:	62 32 0d 48 7f d8    	vpermt2ps zmm11,zmm14,zmm16
  a085de:	c5 7c 11 9c 16 b8 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xb8],ymm11
  a085e5:	00 00 
  a085e7:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a085ed:	62 72 05 48 7f d7    	vpermt2ps zmm10,zmm15,zmm7
  a085f3:	62 71 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm10
  a085fa:	f0 00 00 00 
  a085fe:	62 71 34 48 14 d7    	vunpcklps zmm10,zmm9,zmm7
  a08604:	62 73 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x150],zmm10,0x3
  a0860b:	15 03 
  a0860d:	62 71 34 48 15 d7    	vunpckhps zmm10,zmm9,zmm7
  a08613:	62 53 7d 48 19 d2 03 	vextractf32x4 xmm10,zmm10,0x3
  a0861a:	c5 78 13 94 16 60 01 	vmovlps QWORD PTR [rsi+rdx*1+0x160],xmm10
  a08621:	00 00 
  a08623:	62 72 0d 48 7f cf    	vpermt2ps zmm9,zmm14,zmm7
  a08629:	c5 7c 11 8c 16 30 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x130],ymm9
  a08630:	00 00 
  a08632:	62 b1 7c 48 28 f9    	vmovaps zmm7,zmm17
  a08638:	62 d2 05 48 7f f8    	vpermt2ps zmm7,zmm15,zmm8
  a0863e:	62 f1 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x168],zmm7
  a08645:	68 01 00 00 
  a08649:	62 d1 74 40 14 f8    	vunpcklps zmm7,zmm17,zmm8
  a0864f:	62 f3 7d 48 19 bc 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1c8],zmm7,0x3
  a08656:	c8 01 00 00 03 
  a0865b:	62 d1 74 40 15 f8    	vunpckhps zmm7,zmm17,zmm8
  a08661:	62 f3 7d 48 19 ff 03 	vextractf32x4 xmm7,zmm7,0x3
  a08668:	c5 f8 13 bc 16 d8 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1d8],xmm7
  a0866f:	00 00 
  a08671:	62 c2 0d 48 7f c8    	vpermt2ps zmm17,zmm14,zmm8
  a08677:	62 e1 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a8],ymm17
  a0867e:	a8 01 00 00 
  a08682:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a08688:	62 d2 05 48 7f fc    	vpermt2ps zmm7,zmm15,zmm12
  a0868e:	62 f1 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm7
  a08695:	e0 01 00 00 
  a08699:	62 d1 4c 48 14 fc    	vunpcklps zmm7,zmm6,zmm12
  a0869f:	62 f3 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x240],zmm7,0x3
  a086a6:	24 03 
  a086a8:	62 d1 4c 48 15 fc    	vunpckhps zmm7,zmm6,zmm12
  a086ae:	62 f3 7d 48 19 ff 03 	vextractf32x4 xmm7,zmm7,0x3
  a086b5:	c5 f8 13 bc 16 50 02 	vmovlps QWORD PTR [rsi+rdx*1+0x250],xmm7
  a086bc:	00 00 
  a086be:	62 d2 0d 48 7f f4    	vpermt2ps zmm6,zmm14,zmm12
  a086c4:	c5 fc 11 b4 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm6
  a086cb:	00 00 
  a086cd:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a086d3:	62 f2 05 48 7f f4    	vpermt2ps zmm6,zmm15,zmm4
  a086d9:	62 f1 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x258],zmm6
  a086e0:	58 02 00 00 
  a086e4:	62 f1 54 48 14 f4    	vunpcklps zmm6,zmm5,zmm4
  a086ea:	62 f3 7d 48 19 b4 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x2b8],zmm6,0x3
  a086f1:	b8 02 00 00 03 
  a086f6:	62 f1 54 48 15 f4    	vunpckhps zmm6,zmm5,zmm4
  a086fc:	62 f3 7d 48 19 f6 03 	vextractf32x4 xmm6,zmm6,0x3
  a08703:	c5 f8 13 b4 16 c8 02 	vmovlps QWORD PTR [rsi+rdx*1+0x2c8],xmm6
  a0870a:	00 00 
  a0870c:	62 f2 0d 48 7f ec    	vpermt2ps zmm5,zmm14,zmm4
  a08712:	c5 fc 11 ac 16 98 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x298],ymm5
  a08719:	00 00 
  a0871b:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a08721:	62 f2 05 48 7f e2    	vpermt2ps zmm4,zmm15,zmm2
  a08727:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm4
  a0872e:	d0 02 00 00 
  a08732:	62 f1 64 48 14 e2    	vunpcklps zmm4,zmm3,zmm2
  a08738:	62 f3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x330],zmm4,0x3
  a0873f:	33 03 
  a08741:	62 f1 64 48 15 e2    	vunpckhps zmm4,zmm3,zmm2
  a08747:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a0874e:	c5 f8 13 a4 16 40 03 	vmovlps QWORD PTR [rsi+rdx*1+0x340],xmm4
  a08755:	00 00 
  a08757:	62 f2 0d 48 7f da    	vpermt2ps zmm3,zmm14,zmm2
  a0875d:	c5 fc 11 9c 16 10 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x310],ymm3
  a08764:	00 00 
  a08766:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a0876c:	62 f2 05 48 7f d0    	vpermt2ps zmm2,zmm15,zmm0
  a08772:	62 f1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x348],zmm2
  a08779:	48 03 00 00 
  a0877d:	62 f1 74 48 14 d0    	vunpcklps zmm2,zmm1,zmm0
  a08783:	62 f3 7d 48 19 94 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x3a8],zmm2,0x3
  a0878a:	a8 03 00 00 03 
  a0878f:	62 f1 74 48 15 d0    	vunpckhps zmm2,zmm1,zmm0
  a08795:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a0879c:	c5 f8 13 94 16 b8 03 	vmovlps QWORD PTR [rsi+rdx*1+0x3b8],xmm2
  a087a3:	00 00 
  a087a5:	62 f2 0d 48 7f c8    	vpermt2ps zmm1,zmm14,zmm0
  a087ab:	c5 fc 11 8c 16 88 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x388],ymm1
  a087b2:	00 00 
  a087b4:	48 81 c2 c0 03 00 00 	add    rdx,0x3c0
  a087bb:	48 39 d0             	cmp    rax,rdx
  a087be:	0f 85 cc f0 ff ff    	jne    a07890 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  a087c4:	48 81 c4 c8 04 00 00 	add    rsp,0x4c8
  a087cb:	c5 f8 77             	vzeroupper
  a087ce:	c3                   	ret
