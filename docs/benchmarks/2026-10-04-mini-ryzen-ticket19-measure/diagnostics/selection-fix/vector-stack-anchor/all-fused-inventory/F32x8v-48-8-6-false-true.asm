
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000af6900 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  af6900:	48 c1 e2 07          	shl    rdx,0x7
  af6904:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  af6908:	31 d2                	xor    edx,edx
  af690a:	c4 e2 7d 18 05 89 ea 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff57ea89]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  af6911:	57 ff 
  af6913:	c4 e2 7d 18 0d b8 e9 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff57e9b8]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  af691a:	57 ff 
  af691c:	c4 e2 7d 18 15 3b eb 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff57eb3b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  af6923:	57 ff 
  af6925:	c5 fc 28 1d 73 ef 57 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff57ef73]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  af692c:	ff 
  af692d:	c5 fc 28 25 ab 08 58 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff5808ab]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  af6934:	ff 
  af6935:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  af693c:	00 00 00 00 
  af6940:	c5 7c 10 2c 17       	vmovups ymm13,YMMWORD PTR [rdi+rdx*1]
  af6945:	c5 78 10 7c 17 20    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x20]
  af694b:	c4 c1 14 c6 ef dd    	vshufps ymm5,ymm13,ymm15,0xdd
  af6951:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  af6957:	c5 7c 10 b4 17 c0 00 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0xc0]
  af695e:	00 00 
  af6960:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0xe0]
  af6967:	0e 
  af6968:	62 b1 0c 28 c6 f0 dd 	vshufps ymm6,ymm14,ymm16,0xdd
  af696f:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  af6975:	c5 7c 10 9c 17 20 01 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x120]
  af697c:	00 00 
  af697e:	c5 78 10 a4 17 40 01 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x140]
  af6985:	00 00 
  af6987:	c4 c1 24 c6 fc 88    	vshufps ymm7,ymm11,ymm12,0x88
  af698d:	62 e1 7c 28 10 4c 17 	vmovups ymm17,YMMWORD PTR [rdi+rdx*1+0x60]
  af6994:	03 
  af6995:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x80]
  af699c:	08 
  af699d:	62 31 74 20 c6 ca 88 	vshufps ymm9,ymm17,ymm18,0x88
  af69a4:	62 e1 7c 28 10 9c 17 	vmovups ymm19,YMMWORD PTR [rdi+rdx*1+0x90]
  af69ab:	90 00 00 00 
  af69af:	62 e1 7c 08 10 64 17 	vmovups xmm20,XMMWORD PTR [rdi+rdx*1+0xb0]
  af69b6:	0b 
  af69b7:	62 31 64 20 c6 c4 dd 	vshufps ymm8,ymm19,ymm20,0xdd
  af69be:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  af69c4:	62 e1 7c 28 10 ac 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1+0x150]
  af69cb:	50 01 00 00 
  af69cf:	62 e1 7c 08 10 74 17 	vmovups xmm22,XMMWORD PTR [rdi+rdx*1+0x170]
  af69d6:	17 
  af69d7:	62 31 54 20 c6 d6 dd 	vshufps ymm10,ymm21,ymm22,0xdd
  af69de:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  af69e4:	62 a1 64 20 c6 dc 88 	vshufps ymm19,ymm19,ymm20,0x88
  af69eb:	62 a1 54 20 c6 e6 88 	vshufps ymm20,ymm21,ymm22,0x88
  af69f2:	62 e1 7c 28 10 ac 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1+0x30]
  af69f9:	30 00 00 00 
  af69fd:	62 e1 7c 08 10 74 17 	vmovups xmm22,XMMWORD PTR [rdi+rdx*1+0x50]
  af6a04:	05 
  af6a05:	62 a1 54 20 c6 fe 88 	vshufps ymm23,ymm21,ymm22,0x88
  af6a0c:	62 61 7c 28 10 84 17 	vmovups ymm24,YMMWORD PTR [rdi+rdx*1+0xf0]
  af6a13:	f0 00 00 00 
  af6a17:	62 61 7c 08 10 4c 17 	vmovups xmm25,XMMWORD PTR [rdi+rdx*1+0x110]
  af6a1e:	11 
  af6a1f:	62 a1 54 20 c6 ee dd 	vshufps ymm21,ymm21,ymm22,0xdd
  af6a26:	62 81 3c 20 c6 f1 88 	vshufps ymm22,ymm24,ymm25,0x88
  af6a2d:	62 01 3c 20 c6 c1 dd 	vshufps ymm24,ymm24,ymm25,0xdd
  af6a34:	62 41 3c 28 5c ca    	vsubps ymm25,ymm8,ymm10
  af6a3a:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  af6a41:	62 a3 fd 28 01 e4 d8 	vpermpd ymm20,ymm20,0xd8
  af6a48:	c4 41 14 c6 ef 88    	vshufps ymm13,ymm13,ymm15,0x88
  af6a4e:	62 31 64 20 5c fc    	vsubps ymm15,ymm19,ymm20
  af6a54:	62 a3 fd 28 01 ff d8 	vpermpd ymm23,ymm23,0xd8
  af6a5b:	62 a3 fd 28 01 f6 d8 	vpermpd ymm22,ymm22,0xd8
  af6a62:	62 31 0c 28 c6 f0 88 	vshufps ymm14,ymm14,ymm16,0x88
  af6a69:	62 a1 44 20 5c c6    	vsubps ymm16,ymm23,ymm22
  af6a6f:	62 a3 fd 28 01 ed d8 	vpermpd ymm21,ymm21,0xd8
  af6a76:	62 03 fd 28 01 c0 d8 	vpermpd ymm24,ymm24,0xd8
  af6a7d:	62 a1 74 20 c6 ca dd 	vshufps ymm17,ymm17,ymm18,0xdd
  af6a84:	62 81 54 20 5c d0    	vsubps ymm18,ymm21,ymm24
  af6a8a:	c4 41 24 c6 dc dd    	vshufps ymm11,ymm11,ymm12,0xdd
  af6a90:	62 31 7c 20 58 e2    	vaddps ymm12,ymm16,ymm18
  af6a96:	62 a1 6c 20 5c c0    	vsubps ymm16,ymm18,ymm16
  af6a9c:	62 c1 34 20 5c d7    	vsubps ymm18,ymm25,ymm15
  af6aa2:	62 11 04 28 58 f9    	vaddps ymm15,ymm15,ymm25
  af6aa8:	62 61 54 28 5c ce    	vsubps ymm25,ymm5,ymm6
  af6aae:	62 a3 fd 28 01 c9 d8 	vpermpd ymm17,ymm17,0xd8
  af6ab5:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  af6abb:	c5 d4 58 ee          	vaddps ymm5,ymm5,ymm6
  af6abf:	62 d1 74 20 5c f3    	vsubps ymm6,ymm17,ymm11
  af6ac5:	62 51 74 20 58 db    	vaddps ymm11,ymm17,ymm11
  af6acb:	62 a1 64 20 58 cc    	vaddps ymm17,ymm19,ymm20
  af6ad1:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  af6ad7:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  af6add:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  af6ae3:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  af6ae9:	62 a1 44 20 58 de    	vaddps ymm19,ymm23,ymm22
  af6aef:	62 c1 14 28 5c e6    	vsubps ymm20,ymm13,ymm14
  af6af5:	c4 41 14 58 ee       	vaddps ymm13,ymm13,ymm14
  af6afa:	c4 41 44 5c f1       	vsubps ymm14,ymm7,ymm9
  af6aff:	c5 b4 58 ff          	vaddps ymm7,ymm9,ymm7
  af6b03:	62 11 54 20 58 c8    	vaddps ymm9,ymm21,ymm24
  af6b09:	c4 41 3c 58 c2       	vaddps ymm8,ymm8,ymm10
  af6b0e:	62 51 34 20 5c d6    	vsubps ymm10,ymm25,ymm14
  af6b14:	62 e1 6c 20 59 d0    	vmulps ymm18,ymm18,ymm0
  af6b1a:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  af6b1e:	62 e1 7c 20 59 c0    	vmulps ymm16,ymm16,ymm0
  af6b24:	c5 04 59 f8          	vmulps ymm15,ymm15,ymm0
  af6b28:	62 11 0c 28 58 f1    	vaddps ymm14,ymm14,ymm25
  af6b2e:	62 c1 7c 20 58 ef    	vaddps ymm21,ymm16,ymm15
  af6b34:	62 51 7c 20 5c ff    	vsubps ymm15,ymm16,ymm15
  af6b3a:	62 e1 5c 20 5c c6    	vsubps ymm16,ymm20,ymm6
  af6b40:	62 f1 5c 20 58 f6    	vaddps ymm6,ymm20,ymm6
  af6b46:	62 c1 6c 20 5c e4    	vsubps ymm20,ymm18,ymm12
  af6b4c:	62 31 1c 28 58 e2    	vaddps ymm12,ymm12,ymm18
  af6b52:	62 c1 54 28 5c d3    	vsubps ymm18,ymm5,ymm11
  af6b58:	c5 a4 58 ed          	vaddps ymm5,ymm11,ymm5
  af6b5c:	c4 41 34 5c d8       	vsubps ymm11,ymm9,ymm8
  af6b61:	c4 41 34 58 c0       	vaddps ymm8,ymm9,ymm8
  af6b66:	c5 14 5c cf          	vsubps ymm9,ymm13,ymm7
  af6b6a:	c5 94 58 ff          	vaddps ymm7,ymm13,ymm7
  af6b6e:	62 31 74 20 5c eb    	vsubps ymm13,ymm17,ymm19
  af6b74:	62 a1 64 20 58 c9    	vaddps ymm17,ymm19,ymm17
  af6b7a:	62 a1 2c 28 5c dc    	vsubps ymm19,ymm10,ymm20
  af6b80:	62 a1 2c 28 58 e4    	vaddps ymm20,ymm10,ymm20
  af6b86:	62 31 7c 20 5c d5    	vsubps ymm10,ymm16,ymm21
  af6b8c:	62 a1 7c 20 58 c5    	vaddps ymm16,ymm16,ymm21
  af6b92:	62 c1 6c 20 5c ed    	vsubps ymm21,ymm18,ymm13
  af6b98:	62 31 14 28 58 ea    	vaddps ymm13,ymm13,ymm18
  af6b9e:	62 c1 34 28 5c d3    	vsubps ymm18,ymm9,ymm11
  af6ba4:	c4 41 34 58 cb       	vaddps ymm9,ymm9,ymm11
  af6ba9:	c4 41 0c 5c df       	vsubps ymm11,ymm14,ymm15
  af6bae:	c4 41 0c 58 f7       	vaddps ymm14,ymm14,ymm15
  af6bb3:	c4 41 4c 5c fc       	vsubps ymm15,ymm6,ymm12
  af6bb8:	c5 9c 58 f6          	vaddps ymm6,ymm12,ymm6
  af6bbc:	c4 41 54 5c e0       	vsubps ymm12,ymm5,ymm8
  af6bc1:	62 c1 54 28 58 f0    	vaddps ymm22,ymm5,ymm8
  af6bc7:	62 b1 44 28 5c e9    	vsubps ymm5,ymm7,ymm17
  af6bcd:	62 b1 44 28 58 f9    	vaddps ymm7,ymm7,ymm17
  af6bd3:	c4 63 45 18 c5 01    	vinsertf128 ymm8,ymm7,xmm5,0x1
  af6bd9:	c4 e3 45 06 ed 31    	vperm2f128 ymm5,ymm7,ymm5,0x31
  af6bdf:	c4 c3 4d 18 ff 01    	vinsertf128 ymm7,ymm6,xmm15,0x1
  af6be5:	c4 c3 4d 06 f7 31    	vperm2f128 ymm6,ymm6,ymm15,0x31
  af6beb:	62 33 35 28 18 fa 01 	vinsertf32x4 ymm15,ymm9,xmm18,0x1
  af6bf2:	62 33 b5 28 23 ca 03 	vshuff64x2 ymm9,ymm9,ymm18,0x3
  af6bf9:	c4 41 55 14 c9       	vunpcklpd ymm9,ymm5,ymm9
  af6bfe:	62 d3 7d 20 18 ea 01 	vinsertf32x4 ymm5,ymm16,xmm10,0x1
  af6c05:	62 53 fd 20 23 d2 03 	vshuff64x2 ymm10,ymm16,ymm10,0x3
  af6c0c:	c4 c1 4d 14 f2       	vunpcklpd ymm6,ymm6,ymm10
  af6c11:	c4 41 3d 15 d7       	vunpckhpd ymm10,ymm8,ymm15
  af6c16:	c4 41 3d 14 c7       	vunpcklpd ymm8,ymm8,ymm15
  af6c1b:	c5 45 15 fd          	vunpckhpd ymm15,ymm7,ymm5
  af6c1f:	c5 c5 14 fd          	vunpcklpd ymm7,ymm7,ymm5
  af6c23:	c5 bc c6 ef 88       	vshufps ymm5,ymm8,ymm7,0x88
  af6c28:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  af6c2d:	c5 bc c6 ff dd       	vshufps ymm7,ymm8,ymm7,0xdd
  af6c32:	c5 44 c6 c7 d8       	vshufps ymm8,ymm7,ymm7,0xd8
  af6c37:	c4 c1 2c c6 ff 88    	vshufps ymm7,ymm10,ymm15,0x88
  af6c3d:	62 e1 44 28 c6 c7 d8 	vshufps ymm16,ymm7,ymm7,0xd8
  af6c44:	c4 c1 2c c6 ff dd    	vshufps ymm7,ymm10,ymm15,0xdd
  af6c4a:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  af6c4f:	c5 34 c6 d6 88       	vshufps ymm10,ymm9,ymm6,0x88
  af6c54:	c4 41 2c c6 fa d8    	vshufps ymm15,ymm10,ymm10,0xd8
  af6c5a:	c5 b4 c6 f6 dd       	vshufps ymm6,ymm9,ymm6,0xdd
  af6c5f:	c5 4c c6 d6 d8       	vshufps ymm10,ymm6,ymm6,0xd8
  af6c64:	62 d3 4d 20 18 f4 01 	vinsertf32x4 ymm6,ymm22,xmm12,0x1
  af6c6b:	62 53 cd 20 23 cc 03 	vshuff64x2 ymm9,ymm22,ymm12,0x3
  af6c72:	c4 43 0d 18 e3 01    	vinsertf128 ymm12,ymm14,xmm11,0x1
  af6c78:	c4 43 0d 06 db 31    	vperm2f128 ymm11,ymm14,ymm11,0x31
  af6c7e:	62 33 15 28 18 f5 01 	vinsertf32x4 ymm14,ymm13,xmm21,0x1
  af6c85:	62 33 95 28 23 ed 03 	vshuff64x2 ymm13,ymm13,ymm21,0x3
  af6c8c:	c4 41 35 14 ed       	vunpcklpd ymm13,ymm9,ymm13
  af6c91:	62 33 5d 20 18 cb 01 	vinsertf32x4 ymm9,ymm20,xmm19,0x1
  af6c98:	62 a3 dd 20 23 cb 03 	vshuff64x2 ymm17,ymm20,ymm19,0x3
  af6c9f:	62 31 a5 28 14 d9    	vunpcklpd ymm11,ymm11,ymm17
  af6ca5:	62 c1 cd 28 15 ce    	vunpckhpd ymm17,ymm6,ymm14
  af6cab:	c4 41 4d 14 f6       	vunpcklpd ymm14,ymm6,ymm14
  af6cb0:	62 c1 9d 28 15 d1    	vunpckhpd ymm18,ymm12,ymm9
  af6cb6:	c4 41 1d 14 c9       	vunpcklpd ymm9,ymm12,ymm9
  af6cbb:	c4 c1 0c c6 f1 88    	vshufps ymm6,ymm14,ymm9,0x88
  af6cc1:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  af6cc6:	c4 41 0c c6 c9 dd    	vshufps ymm9,ymm14,ymm9,0xdd
  af6ccc:	c4 41 34 c6 f1 d8    	vshufps ymm14,ymm9,ymm9,0xd8
  af6cd2:	62 31 74 20 c6 ca 88 	vshufps ymm9,ymm17,ymm18,0x88
  af6cd9:	c4 41 34 c6 e1 d8    	vshufps ymm12,ymm9,ymm9,0xd8
  af6cdf:	62 31 74 20 c6 ca dd 	vshufps ymm9,ymm17,ymm18,0xdd
  af6ce6:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  af6cec:	62 c1 14 28 c6 cb 88 	vshufps ymm17,ymm13,ymm11,0x88
  af6cf3:	62 a1 74 20 c6 c9 d8 	vshufps ymm17,ymm17,ymm17,0xd8
  af6cfa:	c4 41 14 c6 db dd    	vshufps ymm11,ymm13,ymm11,0xdd
  af6d00:	c4 41 24 c6 eb d8    	vshufps ymm13,ymm11,ymm11,0xd8
  af6d06:	62 e1 7c 28 10 51 02 	vmovups ymm18,YMMWORD PTR [rcx+0x40]
  af6d0d:	62 e1 7c 28 10 59 03 	vmovups ymm19,YMMWORD PTR [rcx+0x60]
  af6d14:	62 e1 7c 28 10 61 04 	vmovups ymm20,YMMWORD PTR [rcx+0x80]
  af6d1b:	62 e1 7c 28 10 69 05 	vmovups ymm21,YMMWORD PTR [rcx+0xa0]
  af6d22:	62 31 7c 20 59 dc    	vmulps ymm11,ymm16,ymm20
  af6d28:	62 32 1d 28 bc dd    	vfnmadd231ps ymm11,ymm12,ymm21
  af6d2e:	62 31 1c 28 59 e4    	vmulps ymm12,ymm12,ymm20
  af6d34:	62 e1 7c 28 10 61 09 	vmovups ymm20,YMMWORD PTR [rcx+0x120]
  af6d3b:	62 32 7d 20 b8 e5    	vfmadd231ps ymm12,ymm16,ymm21
  af6d41:	62 e1 7c 28 10 41 08 	vmovups ymm16,YMMWORD PTR [rcx+0x100]
  af6d48:	62 a1 04 28 59 e8    	vmulps ymm21,ymm15,ymm16
  af6d4e:	62 a2 75 20 bc ec    	vfnmadd231ps ymm21,ymm17,ymm20
  af6d54:	62 a1 74 20 59 c0    	vmulps ymm16,ymm17,ymm16
  af6d5a:	62 a2 05 28 b8 c4    	vfmadd231ps ymm16,ymm15,ymm20
  af6d60:	c5 7c 10 b9 60 01 00 	vmovups ymm15,YMMWORD PTR [rcx+0x160]
  af6d67:	00 
  af6d68:	62 e1 7c 28 10 49 0a 	vmovups ymm17,YMMWORD PTR [rcx+0x140]
  af6d6f:	62 a1 14 28 59 e1    	vmulps ymm20,ymm13,ymm17
  af6d75:	62 c2 2d 28 b8 e7    	vfmadd231ps ymm20,ymm10,ymm15
  af6d7b:	62 31 2c 28 59 d1    	vmulps ymm10,ymm10,ymm17
  af6d81:	62 a1 24 28 5c cd    	vsubps ymm17,ymm11,ymm21
  af6d87:	62 e1 74 20 59 c9    	vmulps ymm17,ymm17,ymm1
  af6d8d:	c4 42 15 bc d7       	vfnmadd231ps ymm10,ymm13,ymm15
  af6d92:	62 31 1c 28 58 e8    	vaddps ymm13,ymm12,ymm16
  af6d98:	62 31 0c 28 59 fa    	vmulps ymm15,ymm14,ymm18
  af6d9e:	62 32 3d 28 b8 fb    	vfmadd231ps ymm15,ymm8,ymm19
  af6da4:	62 31 3c 28 59 c2    	vmulps ymm8,ymm8,ymm18
  af6daa:	62 e1 7c 28 10 51 07 	vmovups ymm18,YMMWORD PTR [rcx+0xe0]
  af6db1:	62 32 0d 28 bc c3    	vfnmadd231ps ymm8,ymm14,ymm19
  af6db7:	c5 7c 10 b1 c0 00 00 	vmovups ymm14,YMMWORD PTR [rcx+0xc0]
  af6dbe:	00 
  af6dbf:	62 c1 34 28 59 de    	vmulps ymm19,ymm9,ymm14
  af6dc5:	62 a2 45 28 b8 da    	vfmadd231ps ymm19,ymm7,ymm18
  af6dcb:	c5 8c 59 ff          	vmulps ymm7,ymm14,ymm7
  af6dcf:	c5 7c 28 f2          	vmovaps ymm14,ymm2
  af6dd3:	c4 62 15 ac f6       	vfnmadd213ps ymm14,ymm13,ymm6
  af6dd8:	62 b2 35 28 bc fa    	vfnmadd231ps ymm7,ymm9,ymm18
  af6dde:	62 51 74 20 58 ce    	vaddps ymm9,ymm17,ymm14
  af6de4:	62 c1 5c 20 58 d7    	vaddps ymm18,ymm20,ymm15
  af6dea:	62 31 24 28 58 dd    	vaddps ymm11,ymm11,ymm21
  af6df0:	62 e1 7c 28 28 ea    	vmovaps ymm21,ymm2
  af6df6:	62 a2 6d 20 ac eb    	vfnmadd213ps ymm21,ymm18,ymm19
  af6dfc:	62 31 1c 28 5c e0    	vsubps ymm12,ymm12,ymm16
  af6e02:	62 c1 2c 28 5c c0    	vsubps ymm16,ymm10,ymm8
  af6e08:	62 e1 7c 20 59 c1    	vmulps ymm16,ymm16,ymm1
  af6e0e:	c4 41 2c 58 c0       	vaddps ymm8,ymm10,ymm8
  af6e13:	62 31 54 20 58 d0    	vaddps ymm10,ymm21,ymm16
  af6e19:	62 51 5c 20 5c ff    	vsubps ymm15,ymm20,ymm15
  af6e1f:	62 e1 7c 28 28 e2    	vmovaps ymm20,ymm2
  af6e25:	62 e2 25 28 ac e5    	vfnmadd213ps ymm20,ymm11,ymm5
  af6e2b:	c5 1c 59 e1          	vmulps ymm12,ymm12,ymm1
  af6e2f:	62 31 0c 28 5c f1    	vsubps ymm14,ymm14,ymm17
  af6e35:	62 c1 5c 20 5c cc    	vsubps ymm17,ymm20,ymm12
  af6e3b:	62 a1 54 20 5c c0    	vsubps ymm16,ymm21,ymm16
  af6e41:	62 e1 7c 28 28 ea    	vmovaps ymm21,ymm2
  af6e47:	62 e2 3d 28 ac ef    	vfnmadd213ps ymm21,ymm8,ymm7
  af6e4d:	c5 04 59 f9          	vmulps ymm15,ymm15,ymm1
  af6e51:	62 51 5c 20 58 e4    	vaddps ymm12,ymm20,ymm12
  af6e57:	62 c1 54 20 5c e7    	vsubps ymm20,ymm21,ymm15
  af6e5d:	62 51 54 20 58 ff    	vaddps ymm15,ymm21,ymm15
  af6e63:	c5 94 58 f6          	vaddps ymm6,ymm13,ymm6
  af6e67:	62 31 64 20 58 ea    	vaddps ymm13,ymm19,ymm18
  af6e6d:	c5 a4 58 ed          	vaddps ymm5,ymm11,ymm5
  af6e71:	c5 bc 58 ff          	vaddps ymm7,ymm8,ymm7
  af6e75:	c4 41 34 5c c2       	vsubps ymm8,ymm9,ymm10
  af6e7a:	c4 41 34 58 ca       	vaddps ymm9,ymm9,ymm10
  af6e7f:	62 31 74 20 5c d4    	vsubps ymm10,ymm17,ymm20
  af6e85:	62 31 74 20 58 dc    	vaddps ymm11,ymm17,ymm20
  af6e8b:	62 a1 0c 28 58 c8    	vaddps ymm17,ymm14,ymm16
  af6e91:	62 31 0c 28 5c f0    	vsubps ymm14,ymm14,ymm16
  af6e97:	62 c1 1c 28 58 c7    	vaddps ymm16,ymm12,ymm15
  af6e9d:	c4 41 1c 5c e7       	vsubps ymm12,ymm12,ymm15
  af6ea2:	c4 41 4c 5c fd       	vsubps ymm15,ymm6,ymm13
  af6ea7:	c5 94 58 f6          	vaddps ymm6,ymm13,ymm6
  af6eab:	c5 54 5c ef          	vsubps ymm13,ymm5,ymm7
  af6eaf:	c5 d4 58 ef          	vaddps ymm5,ymm5,ymm7
  af6eb3:	c5 fc 28 fd          	vmovaps ymm7,ymm5
  af6eb7:	62 f2 65 28 7f fe    	vpermt2ps ymm7,ymm3,ymm6
  af6ebd:	62 f2 5d 28 7f ee    	vpermt2ps ymm5,ymm4,ymm6
  af6ec3:	c5 fc 11 2c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm5
  af6ec8:	c5 fc 11 7c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm7
  af6ece:	c5 7c 29 e5          	vmovaps ymm5,ymm12
  af6ed2:	62 d2 65 28 7f ee    	vpermt2ps ymm5,ymm3,ymm14
  af6ed8:	62 52 5d 28 7f e6    	vpermt2ps ymm12,ymm4,ymm14
  af6ede:	c5 7c 11 64 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm12
  af6ee4:	c5 fc 11 6c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm5
  af6eea:	c5 7c 29 dd          	vmovaps ymm5,ymm11
  af6eee:	62 d2 65 28 7f e9    	vpermt2ps ymm5,ymm3,ymm9
  af6ef4:	62 52 5d 28 7f d9    	vpermt2ps ymm11,ymm4,ymm9
  af6efa:	c5 7c 11 9c 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm11
  af6f01:	00 00 
  af6f03:	c5 fc 11 ac 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm5
  af6f0a:	00 00 
  af6f0c:	c5 7c 29 ed          	vmovaps ymm5,ymm13
  af6f10:	62 d2 65 28 7f ef    	vpermt2ps ymm5,ymm3,ymm15
  af6f16:	62 52 5d 28 7f ef    	vpermt2ps ymm13,ymm4,ymm15
  af6f1c:	c5 7c 11 ac 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm13
  af6f23:	00 00 
  af6f25:	c5 fc 11 ac 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm5
  af6f2c:	00 00 
  af6f2e:	62 b1 7c 28 28 e8    	vmovaps ymm5,ymm16
  af6f34:	62 b2 65 28 7f e9    	vpermt2ps ymm5,ymm3,ymm17
  af6f3a:	62 a2 5d 28 7f c1    	vpermt2ps ymm16,ymm4,ymm17
  af6f40:	62 e1 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm16
  af6f47:	08 
  af6f48:	c5 fc 11 ac 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm5
  af6f4f:	00 00 
  af6f51:	c5 7c 29 d5          	vmovaps ymm5,ymm10
  af6f55:	62 d2 65 28 7f e8    	vpermt2ps ymm5,ymm3,ymm8
  af6f5b:	62 52 5d 28 7f d0    	vpermt2ps ymm10,ymm4,ymm8
  af6f61:	c5 7c 11 94 16 40 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm10
  af6f68:	00 00 
  af6f6a:	c5 fc 11 ac 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm5
  af6f71:	00 00 
  af6f73:	48 81 c2 80 01 00 00 	add    rdx,0x180
  af6f7a:	48 39 d0             	cmp    rax,rdx
  af6f7d:	0f 85 bd f9 ff ff    	jne    af6940 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x40>
  af6f83:	c5 f8 77             	vzeroupper
  af6f86:	c3                   	ret
