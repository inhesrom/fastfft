
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b09a40 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b09a40:	55                   	push   rbp
  b09a41:	48 89 e5             	mov    rbp,rsp
  b09a44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  b09a48:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  b09a4f:	48 c1 e2 07          	shl    rdx,0x7
  b09a53:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  b09a57:	31 d2                	xor    edx,edx
  b09a59:	4c 8d 84 24 80 00 00 	lea    r8,[rsp+0x80]
  b09a60:	00 
  b09a61:	4c 8d 4c 24 18       	lea    r9,[rsp+0x18]
  b09a66:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  b09a6d:	00 00 00 
  b09a70:	c6 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],0x0
  b09a77:	00 
  b09a78:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  b09a7d:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  b09a82:	c5 7c 10 44 17 20    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x20]
  b09a88:	c4 41 7c c6 c8 88    	vshufps ymm9,ymm0,ymm8,0x88
  b09a8e:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  b09a94:	c4 c1 7c c6 c0 dd    	vshufps ymm0,ymm0,ymm8,0xdd
  b09a9a:	c4 63 fd 01 c0 d8    	vpermpd ymm8,ymm0,0xd8
  b09aa0:	c5 fc 10 44 17 50    	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x50]
  b09aa6:	c5 7c 10 54 17 70    	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x70]
  b09aac:	c4 41 7c c6 da 88    	vshufps ymm11,ymm0,ymm10,0x88
  b09ab2:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  b09ab8:	c4 c1 7c c6 c2 dd    	vshufps ymm0,ymm0,ymm10,0xdd
  b09abe:	c5 7c 10 94 17 a0 00 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0xa0]
  b09ac5:	00 00 
  b09ac7:	c5 7c 10 a4 17 c0 00 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0xc0]
  b09ace:	00 00 
  b09ad0:	c4 63 fd 01 e8 d8    	vpermpd ymm13,ymm0,0xd8
  b09ad6:	c4 c1 2c c6 c4 88    	vshufps ymm0,ymm10,ymm12,0x88
  b09adc:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b09ae2:	c4 41 2c c6 d4 dd    	vshufps ymm10,ymm10,ymm12,0xdd
  b09ae8:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  b09aee:	c5 7c 10 a4 17 f0 00 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0xf0]
  b09af5:	00 00 
  b09af7:	c5 7c 10 b4 17 10 01 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x110]
  b09afe:	00 00 
  b09b00:	c4 41 1c c6 fe 88    	vshufps ymm15,ymm12,ymm14,0x88
  b09b06:	c4 43 fd 01 ff d8    	vpermpd ymm15,ymm15,0xd8
  b09b0c:	c4 41 1c c6 e6 dd    	vshufps ymm12,ymm12,ymm14,0xdd
  b09b12:	c5 7c 10 b4 17 40 01 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x140]
  b09b19:	00 00 
  b09b1b:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x160]
  b09b22:	0b 
  b09b23:	62 c3 fd 28 01 cc d8 	vpermpd ymm17,ymm12,0xd8
  b09b2a:	62 31 0c 28 c6 e0 88 	vshufps ymm12,ymm14,ymm16,0x88
  b09b31:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b09b37:	62 31 0c 28 c6 f0 dd 	vshufps ymm14,ymm14,ymm16,0xdd
  b09b3e:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  b09b44:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x190]
  b09b4b:	90 01 00 00 
  b09b4f:	62 e1 7c 28 10 94 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x1b0]
  b09b56:	b0 01 00 00 
  b09b5a:	62 a1 7c 20 c6 da 88 	vshufps ymm19,ymm16,ymm18,0x88
  b09b61:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  b09b68:	62 a1 7c 20 c6 c2 dd 	vshufps ymm16,ymm16,ymm18,0xdd
  b09b6f:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x1e0]
  b09b76:	0f 
  b09b77:	62 e1 7c 28 10 64 17 	vmovups ymm20,YMMWORD PTR [rdi+rdx*1+0x200]
  b09b7e:	10 
  b09b7f:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b09b86:	62 a1 6c 20 c6 ec 88 	vshufps ymm21,ymm18,ymm20,0x88
  b09b8d:	62 a3 fd 28 01 ed d8 	vpermpd ymm21,ymm21,0xd8
  b09b94:	62 a1 6c 20 c6 d4 dd 	vshufps ymm18,ymm18,ymm20,0xdd
  b09b9b:	62 a3 fd 28 01 d2 d8 	vpermpd ymm18,ymm18,0xd8
  b09ba2:	62 e1 7c 28 10 a4 17 	vmovups ymm20,YMMWORD PTR [rdi+rdx*1+0x230]
  b09ba9:	30 02 00 00 
  b09bad:	62 e1 7c 28 10 b4 17 	vmovups ymm22,YMMWORD PTR [rdi+rdx*1+0x250]
  b09bb4:	50 02 00 00 
  b09bb8:	62 a1 5c 20 c6 fe 88 	vshufps ymm23,ymm20,ymm22,0x88
  b09bbf:	62 a3 fd 28 01 ff d8 	vpermpd ymm23,ymm23,0xd8
  b09bc6:	62 a1 5c 20 c6 e6 dd 	vshufps ymm20,ymm20,ymm22,0xdd
  b09bcd:	62 a3 fd 28 01 e4 d8 	vpermpd ymm20,ymm20,0xd8
  b09bd4:	62 c1 34 28 58 f4    	vaddps ymm22,ymm9,ymm12
  b09bda:	62 21 7c 28 58 c5    	vaddps ymm24,ymm0,ymm21
  b09be0:	62 01 4c 20 58 c8    	vaddps ymm25,ymm22,ymm24
  b09be6:	62 21 24 28 58 d3    	vaddps ymm26,ymm11,ymm19
  b09bec:	62 21 04 28 58 df    	vaddps ymm27,ymm15,ymm23
  b09bf2:	62 01 2c 20 58 e3    	vaddps ymm28,ymm26,ymm27
  b09bf8:	62 41 3c 28 58 ee    	vaddps ymm29,ymm8,ymm14
  b09bfe:	62 21 2c 28 58 f2    	vaddps ymm30,ymm10,ymm18
  b09c04:	62 21 14 28 58 f8    	vaddps ymm31,ymm13,ymm16
  b09c0a:	62 91 14 20 58 ce    	vaddps ymm1,ymm29,ymm30
  b09c10:	62 b1 74 20 58 d4    	vaddps ymm2,ymm17,ymm20
  b09c16:	62 f1 04 20 58 da    	vaddps ymm3,ymm31,ymm2
  b09c1c:	c4 c1 34 5c e4       	vsubps ymm4,ymm9,ymm12
  b09c21:	62 91 34 20 58 ec    	vaddps ymm5,ymm25,ymm28
  b09c27:	62 31 2c 28 5c d2    	vsubps ymm10,ymm10,ymm18
  b09c2d:	c5 2c 58 cc          	vaddps ymm9,ymm10,ymm4
  b09c31:	62 31 24 28 5c db    	vsubps ymm11,ymm11,ymm19
  b09c37:	c5 74 58 e3          	vaddps ymm12,ymm1,ymm3
  b09c3b:	62 a1 14 28 5c c0    	vsubps ymm16,ymm13,ymm16
  b09c41:	62 31 24 28 58 e8    	vaddps ymm13,ymm11,ymm16
  b09c47:	62 a1 74 20 5c cc    	vsubps ymm17,ymm17,ymm20
  b09c4d:	c4 e2 7d 18 35 46 b7 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff56b746]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b09c54:	56 ff 
  b09c56:	62 e1 14 28 59 d6    	vmulps ymm18,ymm13,ymm6
  b09c5c:	62 31 04 28 5c ff    	vsubps ymm15,ymm15,ymm23
  b09c62:	62 51 74 20 5c ef    	vsubps ymm13,ymm17,ymm15
  b09c68:	c4 41 3c 5c c6       	vsubps ymm8,ymm8,ymm14
  b09c6d:	62 e1 14 28 59 e6    	vmulps ymm20,ymm13,ymm6
  b09c73:	62 f1 54 20 5c c0    	vsubps ymm0,ymm21,ymm0
  b09c79:	c5 3c 58 e8          	vaddps ymm13,ymm8,ymm0
  b09c7d:	62 51 7c 20 5c db    	vsubps ymm11,ymm16,ymm11
  b09c83:	c5 24 59 de          	vmulps ymm11,ymm11,ymm6
  b09c87:	62 31 04 28 58 f1    	vaddps ymm14,ymm15,ymm17
  b09c8d:	c5 0c 59 fe          	vmulps ymm15,ymm14,ymm6
  b09c91:	62 81 4c 20 5c c0    	vsubps ymm16,ymm22,ymm24
  b09c97:	62 21 6c 20 58 c4    	vaddps ymm24,ymm18,ymm20
  b09c9d:	62 f1 04 20 5c d2    	vsubps ymm2,ymm31,ymm2
  b09ca3:	62 e1 7c 20 58 ca    	vaddps ymm17,ymm16,ymm2
  b09ca9:	62 81 14 20 5c ee    	vsubps ymm21,ymm29,ymm30
  b09caf:	62 41 24 28 5c ef    	vsubps ymm29,ymm11,ymm15
  b09cb5:	62 01 24 20 5c d2    	vsubps ymm26,ymm27,ymm26
  b09cbb:	62 21 2c 20 58 dd    	vaddps ymm27,ymm26,ymm21
  b09cc1:	c4 41 5c 5c f2       	vsubps ymm14,ymm4,ymm10
  b09cc6:	62 c1 24 28 58 ff    	vaddps ymm23,ymm11,ymm15
  b09ccc:	62 e1 3c 28 5c d8    	vsubps ymm19,ymm8,ymm0
  b09cd2:	62 a1 5c 20 5c f2    	vsubps ymm22,ymm20,ymm18
  b09cd8:	62 91 34 20 5c e4    	vsubps ymm4,ymm25,ymm28
  b09cde:	62 81 34 28 58 e0    	vaddps ymm20,ymm9,ymm24
  b09ce4:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  b09ce8:	62 f1 7c 20 5c d2    	vsubps ymm2,ymm16,ymm2
  b09cee:	62 91 54 20 5c da    	vsubps ymm3,ymm21,ymm26
  b09cf4:	62 11 14 28 58 fd    	vaddps ymm15,ymm13,ymm29
  b09cfa:	c4 e3 55 18 c4 01    	vinsertf128 ymm0,ymm5,xmm4,0x1
  b09d00:	c4 e3 55 06 e4 31    	vperm2f128 ymm4,ymm5,ymm4,0x31
  b09d06:	62 f3 75 20 18 ea 01 	vinsertf32x4 ymm5,ymm17,xmm2,0x1
  b09d0d:	62 a1 0c 28 58 ef    	vaddps ymm21,ymm14,ymm23
  b09d13:	62 f3 f5 20 23 d2 03 	vshuff64x2 ymm2,ymm17,ymm2,0x3
  b09d1a:	c5 fd 14 f5          	vunpcklpd ymm6,ymm0,ymm5
  b09d1e:	c5 fc 29 74 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm6
  b09d24:	c5 5d 14 da          	vunpcklpd ymm11,ymm4,ymm2
  b09d28:	62 a1 64 20 58 ce    	vaddps ymm17,ymm19,ymm22
  b09d2e:	c5 5d 15 d2          	vunpckhpd ymm10,ymm4,ymm2
  b09d32:	c4 e3 1d 18 d1 01    	vinsertf128 ymm2,ymm12,xmm1,0x1
  b09d38:	c4 e3 1d 06 c9 31    	vperm2f128 ymm1,ymm12,ymm1,0x31
  b09d3e:	62 91 34 28 5c e0    	vsubps ymm4,ymm9,ymm24
  b09d44:	62 63 25 20 18 c3 01 	vinsertf32x4 ymm24,ymm27,xmm3,0x1
  b09d4b:	62 f3 a5 20 23 db 03 	vshuff64x2 ymm3,ymm27,ymm3,0x3
  b09d52:	62 91 ed 28 14 f0    	vunpcklpd ymm6,ymm2,ymm24
  b09d58:	c5 fc 29 74 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm6
  b09d5e:	62 81 14 28 5c d5    	vsubps ymm18,ymm13,ymm29
  b09d64:	62 e1 f5 28 14 c3    	vunpcklpd ymm16,ymm1,ymm3
  b09d6a:	c5 75 15 e3          	vunpckhpd ymm12,ymm1,ymm3
  b09d6e:	62 91 ed 28 15 c8    	vunpckhpd ymm1,ymm2,ymm24
  b09d74:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  b09d7a:	62 b1 0c 28 5c cf    	vsubps ymm1,ymm14,ymm23
  b09d80:	c5 7d 15 f5          	vunpckhpd ymm14,ymm0,ymm5
  b09d84:	62 61 7c 08 10 44 17 	vmovups xmm24,XMMWORD PTR [rdi+rdx*1+0x40]
  b09d8b:	04 
  b09d8c:	62 93 3d 00 21 d0 9c 	vinsertps xmm2,xmm24,xmm24,0x9c
  b09d93:	62 a1 64 20 5c f6    	vsubps ymm22,ymm19,ymm22
  b09d99:	c5 f8 10 84 17 90 00 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x90]
  b09da0:	00 00 
  b09da2:	c4 e3 79 21 d8 9c    	vinsertps xmm3,xmm0,xmm0,0x9c
  b09da8:	c4 41 30 57 c9       	vxorps xmm9,xmm9,xmm9
  b09dad:	c4 c1 78 c6 e9 dd    	vshufps xmm5,xmm0,xmm9,0xdd
  b09db3:	62 e3 5d 20 18 dc 01 	vinsertf32x4 ymm19,ymm20,xmm4,0x1
  b09dba:	62 61 7c 08 10 4c 17 	vmovups xmm25,XMMWORD PTR [rdi+rdx*1+0xe0]
  b09dc1:	0e 
  b09dc2:	62 41 34 00 c6 d1 dd 	vshufps xmm26,xmm25,xmm9,0xdd
  b09dc9:	62 61 7c 08 10 5c 17 	vmovups xmm27,XMMWORD PTR [rdi+rdx*1+0x130]
  b09dd0:	13 
  b09dd1:	62 e3 dd 20 23 fc 03 	vshuff64x2 ymm23,ymm20,ymm4,0x3
  b09dd8:	62 d1 24 00 c6 e1 dd 	vshufps xmm4,xmm27,xmm9,0xdd
  b09ddf:	62 61 7c 08 10 64 17 	vmovups xmm28,XMMWORD PTR [rdi+rdx*1+0x180]
  b09de6:	18 
  b09de7:	62 03 1d 00 21 ec 9c 	vinsertps xmm29,xmm28,xmm28,0x9c
  b09dee:	62 e3 55 20 18 e1 01 	vinsertf32x4 ymm20,ymm21,xmm1,0x1
  b09df5:	c5 f8 10 84 17 d0 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x1d0]
  b09dfc:	00 00 
  b09dfe:	62 63 7d 08 21 f0 9c 	vinsertps xmm30,xmm0,xmm0,0x9c
  b09e05:	62 41 7c 08 c6 f9 dd 	vshufps xmm31,xmm0,xmm9,0xdd
  b09e0c:	62 73 d5 20 23 c1 03 	vshuff64x2 ymm8,ymm21,ymm1,0x3
  b09e13:	c5 f8 10 8c 17 20 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x220]
  b09e1a:	00 00 
  b09e1c:	62 c1 74 08 c6 e9 dd 	vshufps xmm21,xmm1,xmm9,0xdd
  b09e23:	c5 f8 10 b4 17 70 02 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x270]
  b09e2a:	00 00 
  b09e2c:	62 91 6c 28 58 fd    	vaddps ymm7,ymm2,ymm29
  b09e32:	62 91 6c 28 5c d5    	vsubps ymm2,ymm2,ymm29
  b09e38:	62 21 2c 20 58 ed    	vaddps ymm29,ymm26,ymm21
  b09e3e:	62 a1 2c 20 5c ed    	vsubps ymm21,ymm26,ymm21
  b09e44:	62 01 64 28 58 d6    	vaddps ymm26,ymm3,ymm30
  b09e4a:	62 91 64 28 5c de    	vsubps ymm3,ymm3,ymm30
  b09e50:	62 01 54 28 58 f7    	vaddps ymm30,ymm5,ymm31
  b09e56:	62 91 54 28 5c ef    	vsubps ymm5,ymm5,ymm31
  b09e5c:	62 41 4c 08 c6 f9 dd 	vshufps xmm31,xmm6,xmm9,0xdd
  b09e63:	62 91 5c 28 58 c7    	vaddps ymm0,ymm4,ymm31
  b09e69:	62 91 5c 28 5c e7    	vsubps ymm4,ymm4,ymm31
  b09e6f:	62 03 25 00 21 db 9c 	vinsertps xmm27,xmm27,xmm27,0x9c
  b09e76:	c4 e3 49 21 f6 9c    	vinsertps xmm6,xmm6,xmm6,0x9c
  b09e7c:	62 61 24 20 58 fe    	vaddps ymm31,ymm27,ymm6
  b09e82:	62 f1 24 20 5c f6    	vsubps ymm6,ymm27,ymm6
  b09e88:	62 41 3c 00 c6 c1 dd 	vshufps xmm24,xmm24,xmm9,0xdd
  b09e8f:	62 41 1c 00 c6 d9 dd 	vshufps xmm27,xmm28,xmm9,0xdd
  b09e96:	62 01 3c 20 58 e3    	vaddps ymm28,ymm24,ymm27
  b09e9c:	62 01 3c 20 5c c3    	vsubps ymm24,ymm24,ymm27
  b09ea2:	62 03 35 00 21 c9 9c 	vinsertps xmm25,xmm25,xmm25,0x9c
  b09ea9:	c4 e3 71 21 c9 9c    	vinsertps xmm1,xmm1,xmm1,0x9c
  b09eaf:	62 61 34 20 58 d9    	vaddps ymm27,ymm25,ymm1
  b09eb5:	62 01 74 28 5c c9    	vsubps ymm25,ymm1,ymm25
  b09ebb:	62 b3 05 28 18 ca 01 	vinsertf32x4 ymm1,ymm15,xmm18,0x1
  b09ec2:	62 33 85 28 23 fa 03 	vshuff64x2 ymm15,ymm15,ymm18,0x3
  b09ec9:	c5 64 58 cd          	vaddps ymm9,ymm3,ymm5
  b09ecd:	c5 d4 5c eb          	vsubps ymm5,ymm5,ymm3
  b09ed1:	62 a3 75 20 18 d6 01 	vinsertf32x4 ymm18,ymm17,xmm22,0x1
  b09ed8:	62 b3 f5 20 23 de 03 	vshuff64x2 ymm3,ymm17,ymm22,0x3
  b09edf:	62 e1 5c 28 5c f6    	vsubps ymm22,ymm4,ymm6
  b09ee5:	c5 cc 58 e4          	vaddps ymm4,ymm6,ymm4
  b09ee9:	62 d1 c5 20 14 f0    	vunpcklpd ymm6,ymm23,ymm8
  b09eef:	62 51 c5 20 15 c0    	vunpckhpd ymm8,ymm23,ymm8
  b09ef5:	62 81 44 28 58 fb    	vaddps ymm23,ymm7,ymm27
  b09efb:	62 91 44 28 5c fb    	vsubps ymm7,ymm7,ymm27
  b09f01:	62 61 85 28 14 db    	vunpcklpd ymm27,ymm15,ymm3
  b09f07:	c5 05 15 fb          	vunpckhpd ymm15,ymm15,ymm3
  b09f0b:	62 71 0c 20 58 e8    	vaddps ymm13,ymm30,ymm0
  b09f11:	62 f1 0c 20 5c c0    	vsubps ymm0,ymm30,ymm0
  b09f17:	62 21 f5 28 14 f2    	vunpcklpd ymm30,ymm1,ymm18
  b09f1d:	62 b1 f5 28 15 ca    	vunpckhpd ymm1,ymm1,ymm18
  b09f23:	62 81 1c 20 58 d5    	vaddps ymm18,ymm28,ymm29
  b09f29:	62 01 1c 20 5c e5    	vsubps ymm28,ymm28,ymm29
  b09f2f:	62 21 e5 20 14 ec    	vunpcklpd ymm29,ymm19,ymm20
  b09f35:	62 a1 e5 20 15 cc    	vunpckhpd ymm17,ymm19,ymm20
  b09f3b:	62 81 2c 20 58 e7    	vaddps ymm20,ymm26,ymm31
  b09f41:	62 01 04 20 5c fa    	vsubps ymm31,ymm31,ymm26
  b09f47:	62 61 24 28 c6 d6 88 	vshufps ymm26,ymm11,ymm6,0x88
  b09f4e:	c5 a4 c6 f6 dd       	vshufps ymm6,ymm11,ymm6,0xdd
  b09f53:	62 31 6c 28 58 dd    	vaddps ymm11,ymm2,ymm21
  b09f59:	62 a1 6c 28 5c ed    	vsubps ymm21,ymm2,ymm21
  b09f5f:	62 e2 7d 28 18 1d 33 	vbroadcastss ymm19,DWORD PTR [rip+0xffffffffff56b433]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b09f66:	b4 56 ff 
  b09f69:	62 b1 54 28 59 d3    	vmulps ymm2,ymm5,ymm19
  b09f6f:	62 b1 5c 28 59 e3    	vmulps ymm4,ymm4,ymm19
  b09f75:	c5 ec 5c dc          	vsubps ymm3,ymm2,ymm4
  b09f79:	c5 ec 58 e4          	vaddps ymm4,ymm2,ymm4
  b09f7d:	c4 c1 2c c6 e8 88    	vshufps ymm5,ymm10,ymm8,0x88
  b09f83:	c4 41 2c c6 c0 dd    	vshufps ymm8,ymm10,ymm8,0xdd
  b09f89:	62 11 34 20 58 d0    	vaddps ymm10,ymm25,ymm24
  b09f8f:	62 91 3c 20 5c d1    	vsubps ymm2,ymm24,ymm25
  b09f95:	62 31 34 28 59 cb    	vmulps ymm9,ymm9,ymm19
  b09f9b:	62 a1 4c 20 59 f3    	vmulps ymm22,ymm22,ymm19
  b09fa1:	62 21 34 28 58 c6    	vaddps ymm24,ymm9,ymm22
  b09fa7:	62 c1 4c 20 5c f1    	vsubps ymm22,ymm22,ymm9
  b09fad:	62 11 7c 20 c6 cb 88 	vshufps ymm9,ymm16,ymm27,0x88
  b09fb4:	62 81 7c 20 c6 c3 dd 	vshufps ymm16,ymm16,ymm27,0xdd
  b09fbb:	62 21 44 20 58 cc    	vaddps ymm25,ymm23,ymm20
  b09fc1:	62 a1 44 00 5c e4    	vsubps xmm20,xmm23,xmm20
  b09fc7:	62 a3 35 20 18 e4 01 	vinsertf32x4 ymm20,ymm25,xmm20,0x1
  b09fce:	62 81 24 28 58 f8    	vaddps ymm23,ymm11,ymm24
  b09fd4:	62 11 24 08 5c d8    	vsubps xmm11,xmm11,xmm24
  b09fda:	62 53 45 20 18 db 01 	vinsertf32x4 ymm11,ymm23,xmm11,0x1
  b09fe1:	62 c1 1c 28 c6 ff 88 	vshufps ymm23,ymm12,ymm15,0x88
  b09fe8:	c4 41 1c c6 ff dd    	vshufps ymm15,ymm12,ymm15,0xdd
  b09fee:	c5 44 58 e0          	vaddps ymm12,ymm7,ymm0
  b09ff2:	c5 c0 5c c0          	vsubps xmm0,xmm7,xmm0
  b09ff6:	62 e1 7c 28 28 5c 24 	vmovaps ymm19,YMMWORD PTR [rsp+0x20]
  b09ffd:	01 
  b09ffe:	62 91 64 20 c6 fe dd 	vshufps ymm7,ymm19,ymm30,0xdd
  b0a005:	62 01 64 20 c6 c6 88 	vshufps ymm24,ymm19,ymm30,0x88
  b0a00c:	c4 e3 1d 18 c0 01    	vinsertf128 ymm0,ymm12,xmm0,0x1
  b0a012:	62 e1 dd 20 14 e0    	vunpcklpd ymm20,ymm20,ymm0
  b0a018:	c5 7c 28 64 24 60    	vmovaps ymm12,YMMWORD PTR [rsp+0x60]
  b0a01e:	62 91 1c 28 c6 c5 dd 	vshufps ymm0,ymm12,ymm29,0xdd
  b0a025:	62 01 1c 28 c6 cd 88 	vshufps ymm25,ymm12,ymm29,0x88
  b0a02c:	62 71 54 20 58 e4    	vaddps ymm12,ymm21,ymm4
  b0a032:	62 f1 54 00 5c e4    	vsubps xmm4,xmm21,xmm4
  b0a038:	62 e1 7c 28 28 5c 24 	vmovaps ymm19,YMMWORD PTR [rsp+0x40]
  b0a03f:	02 
  b0a040:	62 61 64 20 c6 e9 dd 	vshufps ymm29,ymm19,ymm1,0xdd
  b0a047:	62 61 64 20 c6 f1 88 	vshufps ymm30,ymm19,ymm1,0x88
  b0a04e:	c4 e3 1d 18 cc 01    	vinsertf128 ymm1,ymm12,xmm4,0x1
  b0a054:	c5 a5 14 e1          	vunpcklpd ymm4,ymm11,ymm1
  b0a058:	62 b1 0c 28 c6 c9 dd 	vshufps ymm1,ymm14,ymm17,0xdd
  b0a05f:	62 31 0c 28 c6 d9 88 	vshufps ymm11,ymm14,ymm17,0x88
  b0a066:	62 c1 6c 20 58 cd    	vaddps ymm17,ymm18,ymm13
  b0a06c:	62 c1 6c 00 5c d5    	vsubps xmm18,xmm18,xmm13
  b0a072:	c5 7c c6 e0 d8       	vshufps ymm12,ymm0,ymm0,0xd8
  b0a077:	62 81 2c 20 c6 ea d8 	vshufps ymm21,ymm26,ymm26,0xd8
  b0a07e:	c5 cc c6 c6 d8       	vshufps ymm0,ymm6,ymm6,0xd8
  b0a083:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  b0a089:	62 61 54 28 c6 d5 d8 	vshufps ymm26,ymm5,ymm5,0xd8
  b0a090:	c4 41 3c c6 f0 d8    	vshufps ymm14,ymm8,ymm8,0xd8
  b0a096:	c5 44 c6 ef d8       	vshufps ymm13,ymm7,ymm7,0xd8
  b0a09b:	c4 c1 34 c6 c1 d8    	vshufps ymm0,ymm9,ymm9,0xd8
  b0a0a1:	62 b1 7c 20 c6 e8 d8 	vshufps ymm5,ymm16,ymm16,0xd8
  b0a0a8:	c5 fc 29 6c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm5
  b0a0ae:	62 b3 75 20 18 f2 01 	vinsertf32x4 ymm6,ymm17,xmm18,0x1
  b0a0b5:	62 21 44 20 c6 df d8 	vshufps ymm27,ymm23,ymm23,0xd8
  b0a0bc:	c5 ac 58 fb          	vaddps ymm7,ymm10,ymm3
  b0a0c0:	c5 28 5c c3          	vsubps xmm8,xmm10,xmm3
  b0a0c4:	62 11 04 20 58 d4    	vaddps ymm10,ymm31,ymm28
  b0a0ca:	62 c1 04 28 c6 d7 d8 	vshufps ymm18,ymm15,ymm15,0xd8
  b0a0d1:	c4 c3 45 18 f8 01    	vinsertf128 ymm7,ymm7,xmm8,0x1
  b0a0d7:	62 31 6c 28 58 fe    	vaddps ymm15,ymm2,ymm22
  b0a0dd:	62 11 1c 00 5c c7    	vsubps xmm8,xmm28,xmm31
  b0a0e3:	62 01 3c 20 c6 e0 d8 	vshufps ymm28,ymm24,ymm24,0xd8
  b0a0ea:	62 e1 5c 20 c6 c4 dd 	vshufps ymm16,ymm20,ymm4,0xdd
  b0a0f1:	62 b1 7c 20 c6 e8 d8 	vshufps ymm5,ymm16,ymm16,0xd8
  b0a0f8:	c4 43 2d 18 d0 01    	vinsertf128 ymm10,ymm10,xmm8,0x1
  b0a0fe:	62 91 34 20 c6 d9 d8 	vshufps ymm3,ymm25,ymm25,0xd8
  b0a105:	c5 fc 29 5c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm3
  b0a10b:	c4 c1 4d 14 f2       	vunpcklpd ymm6,ymm6,ymm10
  b0a110:	62 b1 6c 08 5c d6    	vsubps xmm2,xmm2,xmm22
  b0a116:	c4 e3 05 18 d2 01    	vinsertf128 ymm2,ymm15,xmm2,0x1
  b0a11c:	62 81 14 20 c6 cd d8 	vshufps ymm17,ymm29,ymm29,0xd8
  b0a123:	c5 c5 14 d2          	vunpcklpd ymm2,ymm7,ymm2
  b0a127:	c5 cc c6 fa dd       	vshufps ymm7,ymm6,ymm2,0xdd
  b0a12c:	62 e1 44 28 c6 ff d8 	vshufps ymm23,ymm7,ymm7,0xd8
  b0a133:	62 91 0c 20 c6 fe d8 	vshufps ymm7,ymm30,ymm30,0xd8
  b0a13a:	c5 cc c6 d2 88       	vshufps ymm2,ymm6,ymm2,0x88
  b0a13f:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b0a144:	62 f1 5c 20 c6 e4 88 	vshufps ymm4,ymm20,ymm4,0x88
  b0a14b:	62 61 74 28 c6 c1 d8 	vshufps ymm24,ymm1,ymm1,0xd8
  b0a152:	c5 dc c6 cc d8       	vshufps ymm1,ymm4,ymm4,0xd8
  b0a157:	62 e1 7c 28 10 71 02 	vmovups ymm22,YMMWORD PTR [rcx+0x40]
  b0a15e:	62 e1 7c 28 10 61 03 	vmovups ymm20,YMMWORD PTR [rcx+0x60]
  b0a165:	c4 c1 24 c6 e3 d8    	vshufps ymm4,ymm11,ymm11,0xd8
  b0a16b:	c5 fc 10 b1 80 00 00 	vmovups ymm6,YMMWORD PTR [rcx+0x80]
  b0a172:	00 
  b0a173:	c5 7c 10 91 00 01 00 	vmovups ymm10,YMMWORD PTR [rcx+0x100]
  b0a17a:	00 
  b0a17b:	c5 7c 10 99 20 01 00 	vmovups ymm11,YMMWORD PTR [rcx+0x120]
  b0a182:	00 
  b0a183:	62 51 54 20 59 ca    	vmulps ymm9,ymm21,ymm10
  b0a189:	c4 42 7d bc cb       	vfnmadd231ps ymm9,ymm0,ymm11
  b0a18e:	62 c1 7c 28 59 c2    	vmulps ymm16,ymm0,ymm10
  b0a194:	c5 fc 10 81 80 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x180]
  b0a19b:	00 
  b0a19c:	62 c2 55 20 b8 c3    	vfmadd231ps ymm16,ymm21,ymm11
  b0a1a2:	c5 7c 10 91 a0 01 00 	vmovups ymm10,YMMWORD PTR [rcx+0x1a0]
  b0a1a9:	00 
  b0a1aa:	62 61 2c 20 59 c8    	vmulps ymm25,ymm26,ymm0
  b0a1b0:	62 e1 24 20 59 e8    	vmulps ymm21,ymm27,ymm0
  b0a1b6:	62 42 25 20 bc ca    	vfnmadd231ps ymm25,ymm27,ymm10
  b0a1bc:	c5 fc 10 81 a0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xa0]
  b0a1c3:	00 
  b0a1c4:	62 c2 2d 20 b8 ea    	vfmadd231ps ymm21,ymm26,ymm10
  b0a1ca:	c5 7c 10 91 c0 00 00 	vmovups ymm10,YMMWORD PTR [rcx+0xc0]
  b0a1d1:	00 
  b0a1d2:	62 61 5c 28 59 d6    	vmulps ymm26,ymm4,ymm6
  b0a1d8:	62 62 45 28 bc d0    	vfnmadd231ps ymm26,ymm7,ymm0
  b0a1de:	62 61 44 28 59 de    	vmulps ymm27,ymm7,ymm6
  b0a1e4:	c5 fc 10 b1 00 02 00 	vmovups ymm6,YMMWORD PTR [rcx+0x200]
  b0a1eb:	00 
  b0a1ec:	62 62 5d 28 b8 d8    	vfmadd231ps ymm27,ymm4,ymm0
  b0a1f2:	c5 fc 10 81 20 02 00 	vmovups ymm0,YMMWORD PTR [rcx+0x220]
  b0a1f9:	00 
  b0a1fa:	62 61 74 28 59 ee    	vmulps ymm29,ymm1,ymm6
  b0a200:	62 e1 6c 28 59 de    	vmulps ymm19,ymm2,ymm6
  b0a206:	62 62 6d 28 bc e8    	vfnmadd231ps ymm29,ymm2,ymm0
  b0a20c:	c5 fc 10 91 c0 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x1c0]
  b0a213:	00 
  b0a214:	62 e2 75 28 b8 d8    	vfmadd231ps ymm19,ymm1,ymm0
  b0a21a:	c5 fc 10 89 e0 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x1e0]
  b0a221:	00 
  b0a222:	62 61 6c 20 59 f2    	vmulps ymm30,ymm18,ymm2
  b0a228:	62 62 0d 28 b8 f1    	vfmadd231ps ymm30,ymm14,ymm1
  b0a22e:	c5 8c 59 c2          	vmulps ymm0,ymm14,ymm2
  b0a232:	c5 fc 10 91 60 02 00 	vmovups ymm2,YMMWORD PTR [rcx+0x260]
  b0a239:	00 
  b0a23a:	62 f2 6d 20 bc c1    	vfnmadd231ps ymm0,ymm18,ymm1
  b0a240:	c5 fc 10 89 40 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x240]
  b0a247:	00 
  b0a248:	62 61 44 20 59 f9    	vmulps ymm31,ymm23,ymm1
  b0a24e:	c5 d4 59 c9          	vmulps ymm1,ymm5,ymm1
  b0a252:	62 62 55 28 b8 fa    	vfmadd231ps ymm31,ymm5,ymm2
  b0a258:	c5 fc 10 a1 e0 00 00 	vmovups ymm4,YMMWORD PTR [rcx+0xe0]
  b0a25f:	00 
  b0a260:	62 f2 45 20 bc ca    	vfnmadd231ps ymm1,ymm23,ymm2
  b0a266:	c5 fc 10 91 40 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x140]
  b0a26d:	00 
  b0a26e:	62 d1 74 20 59 f2    	vmulps ymm6,ymm17,ymm10
  b0a274:	62 f2 3d 20 b8 f4    	vfmadd231ps ymm6,ymm24,ymm4
  b0a27a:	62 d1 3c 20 59 fa    	vmulps ymm7,ymm24,ymm10
  b0a280:	c5 7c 10 99 60 01 00 	vmovups ymm11,YMMWORD PTR [rcx+0x160]
  b0a287:	00 
  b0a288:	62 f2 75 20 bc fc    	vfnmadd231ps ymm7,ymm17,ymm4
  b0a28e:	62 b1 14 28 59 e6    	vmulps ymm4,ymm13,ymm22
  b0a294:	62 b2 1d 28 b8 e4    	vfmadd231ps ymm4,ymm12,ymm20
  b0a29a:	62 31 1c 28 59 f6    	vmulps ymm14,ymm12,ymm22
  b0a2a0:	62 91 2c 20 5c dd    	vsubps ymm3,ymm26,ymm29
  b0a2a6:	62 91 34 28 5c e9    	vsubps ymm5,ymm9,ymm25
  b0a2ac:	62 32 15 28 bc f4    	vfnmadd231ps ymm14,ymm13,ymm20
  b0a2b2:	c5 7c 28 7c 24 40    	vmovaps ymm15,YMMWORD PTR [rsp+0x40]
  b0a2b8:	c5 04 59 e2          	vmulps ymm12,ymm15,ymm2
  b0a2bc:	62 31 7c 20 58 ed    	vaddps ymm13,ymm16,ymm21
  b0a2c2:	c5 7c 28 44 24 20    	vmovaps ymm8,YMMWORD PTR [rsp+0x20]
  b0a2c8:	c4 42 3d b8 e3       	vfmadd231ps ymm12,ymm8,ymm11
  b0a2cd:	c5 3c 59 d2          	vmulps ymm10,ymm8,ymm2
  b0a2d1:	c4 42 05 bc d3       	vfnmadd231ps ymm10,ymm15,ymm11
  b0a2d6:	c4 62 7d 18 05 79 b4 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff56b479]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  b0a2dd:	56 ff 
  b0a2df:	62 c1 54 28 59 f0    	vmulps ymm22,ymm5,ymm8
  b0a2e5:	62 a1 24 20 58 e3    	vaddps ymm20,ymm27,ymm19
  b0a2eb:	c4 62 7d 18 3d f4 b3 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff56b3f4]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  b0a2f2:	56 ff 
  b0a2f4:	62 c1 7c 28 28 ff    	vmovaps ymm23,ymm15
  b0a2fa:	62 91 34 28 58 d1    	vaddps ymm2,ymm9,ymm25
  b0a300:	c5 fc 29 54 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm2
  b0a306:	62 82 5d 20 a8 fc    	vfmadd213ps ymm23,ymm20,ymm28
  b0a30c:	62 e1 04 20 58 cc    	vaddps ymm17,ymm31,ymm4
  b0a312:	62 11 2c 20 58 dd    	vaddps ymm11,ymm26,ymm29
  b0a318:	62 e1 0c 20 58 d6    	vaddps ymm18,ymm30,ymm6
  b0a31e:	62 62 7d 28 18 2d 78 	vbroadcastss ymm29,DWORD PTR [rip+0xffffffffff56b078]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  b0a325:	b0 56 ff 
  b0a328:	62 82 65 28 b8 f5    	vfmadd231ps ymm22,ymm3,ymm29
  b0a32e:	62 b1 24 20 5c d3    	vsubps ymm2,ymm27,ymm19
  b0a334:	c5 7c 5c cf          	vsubps ymm9,ymm0,ymm7
  b0a338:	62 21 7c 20 5c cd    	vsubps ymm25,ymm16,ymm21
  b0a33e:	62 62 7d 28 18 1d fc 	vbroadcastss ymm27,DWORD PTR [rip+0xffffffffff56b2fc]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  b0a345:	b2 56 ff 
  b0a348:	62 82 15 28 bc fb    	vfnmadd231ps ymm23,ymm13,ymm27
  b0a34e:	62 41 74 28 5c d6    	vsubps ymm26,ymm1,ymm14
  b0a354:	c5 0c 58 f1          	vaddps ymm14,ymm14,ymm1
  b0a358:	62 41 2c 20 59 c0    	vmulps ymm24,ymm26,ymm8
  b0a35e:	62 02 35 28 b8 c5    	vfmadd231ps ymm24,ymm9,ymm29
  b0a364:	62 e1 7c 28 58 df    	vaddps ymm19,ymm0,ymm7
  b0a36a:	62 c1 34 20 59 c0    	vmulps ymm16,ymm25,ymm8
  b0a370:	62 f1 0c 20 5c c6    	vsubps ymm0,ymm30,ymm6
  b0a376:	62 82 6d 28 b8 c5    	vfmadd231ps ymm16,ymm2,ymm29
  b0a37c:	62 f1 04 20 5c cc    	vsubps ymm1,ymm31,ymm4
  b0a382:	62 c1 74 28 59 e8    	vmulps ymm21,ymm1,ymm8
  b0a388:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  b0a38c:	62 82 7d 28 b8 ed    	vfmadd231ps ymm21,ymm0,ymm29
  b0a392:	62 f2 15 20 bc dd    	vfnmadd231ps ymm3,ymm29,ymm5
  b0a398:	62 91 7c 28 28 e3    	vmovaps ymm4,ymm27
  b0a39e:	62 92 5d 20 ac e4    	vfnmadd213ps ymm4,ymm20,ymm28
  b0a3a4:	c4 c2 15 b8 e7       	vfmadd231ps ymm4,ymm13,ymm15
  b0a3a9:	62 91 7c 28 28 eb    	vmovaps ymm5,ymm27
  b0a3af:	62 d2 6d 20 ac ec    	vfnmadd213ps ymm5,ymm18,ymm12
  b0a3b5:	c4 c1 34 59 f0       	vmulps ymm6,ymm9,ymm8
  b0a3ba:	62 d2 75 20 b8 ef    	vfmadd231ps ymm5,ymm17,ymm15
  b0a3c0:	62 92 15 20 bc f2    	vfnmadd231ps ymm6,ymm29,ymm26
  b0a3c6:	62 91 7c 28 28 fb    	vmovaps ymm7,ymm27
  b0a3cc:	62 61 7c 28 28 54 24 	vmovaps ymm26,YMMWORD PTR [rsp+0x60]
  b0a3d3:	03 
  b0a3d4:	62 92 25 28 ac fa    	vfnmadd213ps ymm7,ymm11,ymm26
  b0a3da:	62 61 7c 28 28 74 24 	vmovaps ymm30,YMMWORD PTR [rsp+0x20]
  b0a3e1:	01 
  b0a3e2:	62 d2 0d 20 b8 ff    	vfmadd231ps ymm7,ymm30,ymm15
  b0a3e8:	c5 bc 59 d2          	vmulps ymm2,ymm8,ymm2
  b0a3ec:	62 92 15 20 bc d1    	vfnmadd231ps ymm2,ymm29,ymm25
  b0a3f2:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  b0a3f6:	62 61 64 28 58 cc    	vaddps ymm25,ymm3,ymm4
  b0a3fc:	62 f2 15 20 bc c1    	vfnmadd231ps ymm0,ymm29,ymm1
  b0a402:	62 91 7c 28 28 cb    	vmovaps ymm1,ymm27
  b0a408:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  b0a40c:	c5 d4 58 e6          	vaddps ymm4,ymm5,ymm6
  b0a410:	62 d2 65 20 ac ca    	vfnmadd213ps ymm1,ymm19,ymm10
  b0a416:	c4 c2 0d b8 cf       	vfmadd231ps ymm1,ymm14,ymm15
  b0a41b:	c5 d4 5c ee          	vsubps ymm5,ymm5,ymm6
  b0a41f:	c5 c4 5c f2          	vsubps ymm6,ymm7,ymm2
  b0a423:	c5 c4 58 d2          	vaddps ymm2,ymm7,ymm2
  b0a427:	c5 f4 5c f8          	vsubps ymm7,ymm1,ymm0
  b0a42b:	c5 f4 58 c8          	vaddps ymm1,ymm1,ymm0
  b0a42f:	62 b1 4c 20 58 c7    	vaddps ymm0,ymm22,ymm23
  b0a435:	62 a1 44 20 5c f6    	vsubps ymm22,ymm23,ymm22
  b0a43b:	62 11 5c 20 58 cc    	vaddps ymm9,ymm20,ymm28
  b0a441:	62 c1 7c 28 28 e7    	vmovaps ymm20,ymm15
  b0a447:	62 c2 6d 20 a8 e4    	vfmadd213ps ymm20,ymm18,ymm12
  b0a44d:	62 82 75 20 bc e3    	vfnmadd231ps ymm20,ymm17,ymm27
  b0a453:	c4 41 14 58 e9       	vaddps ymm13,ymm13,ymm9
  b0a458:	62 11 5c 20 58 c8    	vaddps ymm9,ymm20,ymm24
  b0a45e:	62 81 5c 20 5c e0    	vsubps ymm20,ymm20,ymm24
  b0a464:	62 31 1c 28 58 e2    	vaddps ymm12,ymm12,ymm18
  b0a46a:	62 31 1c 28 58 e1    	vaddps ymm12,ymm12,ymm17
  b0a470:	62 c1 7c 28 28 cf    	vmovaps ymm17,ymm15
  b0a476:	62 82 25 28 a8 ca    	vfmadd213ps ymm17,ymm11,ymm26
  b0a47c:	62 51 2c 20 58 c3    	vaddps ymm8,ymm26,ymm11
  b0a482:	62 82 0d 20 bc cb    	vfnmadd231ps ymm17,ymm30,ymm27
  b0a488:	62 11 3c 28 58 de    	vaddps ymm11,ymm8,ymm30
  b0a48e:	c4 41 7c 28 c7       	vmovaps ymm8,ymm15
  b0a493:	62 52 65 20 a8 c2    	vfmadd213ps ymm8,ymm19,ymm10
  b0a499:	62 31 2c 28 58 d3    	vaddps ymm10,ymm10,ymm19
  b0a49f:	62 31 74 20 5c f8    	vsubps ymm15,ymm17,ymm16
  b0a4a5:	62 a1 74 20 58 c0    	vaddps ymm16,ymm17,ymm16
  b0a4ab:	62 12 0d 28 bc c3    	vfnmadd231ps ymm8,ymm14,ymm27
  b0a4b1:	c4 41 2c 58 f6       	vaddps ymm14,ymm10,ymm14
  b0a4b6:	62 31 3c 28 5c d5    	vsubps ymm10,ymm8,ymm21
  b0a4bc:	62 a1 3c 28 58 cd    	vaddps ymm17,ymm8,ymm21
  b0a4c2:	c4 41 7c 5c c1       	vsubps ymm8,ymm0,ymm9
  b0a4c7:	62 c1 7c 28 58 d1    	vaddps ymm18,ymm0,ymm9
  b0a4cd:	c4 41 04 5c ca       	vsubps ymm9,ymm15,ymm10
  b0a4d2:	c4 41 04 58 fa       	vaddps ymm15,ymm15,ymm10
  b0a4d7:	62 f1 34 20 58 c4    	vaddps ymm0,ymm25,ymm4
  b0a4dd:	62 f1 34 20 5c e4    	vsubps ymm4,ymm25,ymm4
  b0a4e3:	c5 4c 58 d7          	vaddps ymm10,ymm6,ymm7
  b0a4e7:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  b0a4eb:	c5 e4 5c fd          	vsubps ymm7,ymm3,ymm5
  b0a4ef:	c5 e4 58 dd          	vaddps ymm3,ymm3,ymm5
  b0a4f3:	c5 ec 5c e9          	vsubps ymm5,ymm2,ymm1
  b0a4f7:	c5 ec 58 c9          	vaddps ymm1,ymm2,ymm1
  b0a4fb:	c4 c1 14 5c d4       	vsubps ymm2,ymm13,ymm12
  b0a500:	c4 41 14 58 e4       	vaddps ymm12,ymm13,ymm12
  b0a505:	62 31 4c 20 58 ec    	vaddps ymm13,ymm22,ymm20
  b0a50b:	62 a1 4c 20 5c dc    	vsubps ymm19,ymm22,ymm20
  b0a511:	62 c1 24 28 5c e6    	vsubps ymm20,ymm11,ymm14
  b0a517:	c4 41 24 58 de       	vaddps ymm11,ymm11,ymm14
  b0a51c:	c4 41 7c 28 f3       	vmovaps ymm14,ymm11
  b0a521:	62 e1 7c 28 28 2d 75 	vmovaps ymm21,YMMWORD PTR [rip+0xffffffffff56b375]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  b0a528:	b3 56 ff 
  b0a52b:	62 52 55 20 7f f4    	vpermt2ps ymm14,ymm21,ymm12
  b0a531:	62 e1 7c 28 28 35 a5 	vmovaps ymm22,YMMWORD PTR [rip+0xffffffffff56cca5]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b0a538:	cc 56 ff 
  b0a53b:	62 52 4d 20 7f dc    	vpermt2ps ymm11,ymm22,ymm12
  b0a541:	c5 7c 11 1c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm11
  b0a546:	62 31 7c 20 58 d9    	vaddps ymm11,ymm16,ymm17
  b0a54c:	62 31 7c 20 5c e1    	vsubps ymm12,ymm16,ymm17
  b0a552:	c5 7c 11 74 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm14
  b0a558:	c4 41 7c 28 f4       	vmovaps ymm14,ymm12
  b0a55d:	62 32 4d 20 7f e3    	vpermt2ps ymm12,ymm22,ymm19
  b0a563:	62 32 55 20 7f f3    	vpermt2ps ymm14,ymm21,ymm19
  b0a569:	c5 7c 11 64 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm12
  b0a56f:	c5 7c 11 74 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm14
  b0a575:	c5 7c 28 e1          	vmovaps ymm12,ymm1
  b0a579:	62 72 55 20 7f e3    	vpermt2ps ymm12,ymm21,ymm3
  b0a57f:	62 f2 4d 20 7f cb    	vpermt2ps ymm1,ymm22,ymm3
  b0a585:	c5 fc 11 8c 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm1
  b0a58c:	00 00 
  b0a58e:	c5 7c 11 a4 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm12
  b0a595:	00 00 
  b0a597:	c5 fc 28 ce          	vmovaps ymm1,ymm6
  b0a59b:	62 f2 55 20 7f cc    	vpermt2ps ymm1,ymm21,ymm4
  b0a5a1:	62 f2 4d 20 7f f4    	vpermt2ps ymm6,ymm22,ymm4
  b0a5a7:	c5 fc 11 b4 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm6
  b0a5ae:	00 00 
  b0a5b0:	c5 fc 11 8c 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm1
  b0a5b7:	00 00 
  b0a5b9:	c5 7c 29 f9          	vmovaps ymm1,ymm15
  b0a5bd:	62 b2 55 20 7f ca    	vpermt2ps ymm1,ymm21,ymm18
  b0a5c3:	62 32 4d 20 7f fa    	vpermt2ps ymm15,ymm22,ymm18
  b0a5c9:	c5 7c 11 bc 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm15
  b0a5d0:	00 00 
  b0a5d2:	62 b1 7c 28 28 dc    	vmovaps ymm3,ymm20
  b0a5d8:	62 f2 55 20 7f da    	vpermt2ps ymm3,ymm21,ymm2
  b0a5de:	62 e2 4d 20 7f e2    	vpermt2ps ymm20,ymm22,ymm2
  b0a5e4:	c5 fc 11 8c 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm1
  b0a5eb:	00 00 
  b0a5ed:	62 e1 7c 28 11 64 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm20
  b0a5f4:	0a 
  b0a5f5:	c5 fc 11 9c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm3
  b0a5fc:	00 00 
  b0a5fe:	c5 7c 29 d9          	vmovaps ymm1,ymm11
  b0a602:	62 d2 55 20 7f cd    	vpermt2ps ymm1,ymm21,ymm13
  b0a608:	62 52 4d 20 7f dd    	vpermt2ps ymm11,ymm22,ymm13
  b0a60e:	c5 7c 11 9c 16 80 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x180],ymm11
  b0a615:	00 00 
  b0a617:	c5 fc 11 8c 16 a0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a0],ymm1
  b0a61e:	00 00 
  b0a620:	c5 fc 28 cd          	vmovaps ymm1,ymm5
  b0a624:	62 f2 55 20 7f cf    	vpermt2ps ymm1,ymm21,ymm7
  b0a62a:	62 f2 4d 20 7f ef    	vpermt2ps ymm5,ymm22,ymm7
  b0a630:	c5 fc 11 ac 16 c0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm5
  b0a637:	00 00 
  b0a639:	c5 fc 11 8c 16 e0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1e0],ymm1
  b0a640:	00 00 
  b0a642:	c5 7c 29 d1          	vmovaps ymm1,ymm10
  b0a646:	62 f2 55 20 7f c8    	vpermt2ps ymm1,ymm21,ymm0
  b0a64c:	62 72 4d 20 7f d0    	vpermt2ps ymm10,ymm22,ymm0
  b0a652:	c5 7c 11 94 16 00 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x200],ymm10
  b0a659:	00 00 
  b0a65b:	c5 7c 29 c8          	vmovaps ymm0,ymm9
  b0a65f:	62 d2 55 20 7f c0    	vpermt2ps ymm0,ymm21,ymm8
  b0a665:	62 52 4d 20 7f c8    	vpermt2ps ymm9,ymm22,ymm8
  b0a66b:	c5 fc 11 8c 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm1
  b0a672:	00 00 
  b0a674:	c5 7c 11 8c 16 40 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x240],ymm9
  b0a67b:	00 00 
  b0a67d:	c5 fc 11 84 16 60 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x260],ymm0
  b0a684:	00 00 
  b0a686:	48 81 c2 80 02 00 00 	add    rdx,0x280
  b0a68d:	48 39 d0             	cmp    rax,rdx
  b0a690:	0f 85 da f3 ff ff    	jne    b09a70 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b0a696:	48 89 ec             	mov    rsp,rbp
  b0a699:	5d                   	pop    rbp
  b0a69a:	c5 f8 77             	vzeroupper
  b0a69d:	c3                   	ret
