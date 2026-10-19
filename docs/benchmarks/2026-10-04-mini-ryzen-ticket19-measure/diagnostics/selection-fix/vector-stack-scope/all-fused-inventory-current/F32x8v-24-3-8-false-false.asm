
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b20a40 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b20a40:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  b20a44:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  b20a49:	c5 fc 10 57 40       	vmovups ymm2,YMMWORD PTR [rdi+0x40]
  b20a4e:	c5 fc 10 5f 60       	vmovups ymm3,YMMWORD PTR [rdi+0x60]
  b20a53:	c5 ec c6 e3 88       	vshufps ymm4,ymm2,ymm3,0x88
  b20a58:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b20a5e:	c5 fc 10 af 80 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0x80]
  b20a65:	00 
  b20a66:	c5 fc 10 b7 a0 00 00 	vmovups ymm6,YMMWORD PTR [rdi+0xa0]
  b20a6d:	00 
  b20a6e:	c5 d4 c6 fe 88       	vshufps ymm7,ymm5,ymm6,0x88
  b20a73:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  b20a79:	c5 5c 5c c7          	vsubps ymm8,ymm4,ymm7
  b20a7d:	c4 62 7d 18 0d 4e 48 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff55484e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b20a84:	55 ff 
  b20a86:	c4 41 3c 59 c1       	vmulps ymm8,ymm8,ymm9
  b20a8b:	c5 ec c6 d3 dd       	vshufps ymm2,ymm2,ymm3,0xdd
  b20a90:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  b20a96:	c5 d4 c6 de dd       	vshufps ymm3,ymm5,ymm6,0xdd
  b20a9b:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  b20aa1:	c5 ec 58 f3          	vaddps ymm6,ymm2,ymm3
  b20aa5:	c5 fc c6 e9 dd       	vshufps ymm5,ymm0,ymm1,0xdd
  b20aaa:	c4 63 fd 01 d5 d8    	vpermpd ymm10,ymm5,0xd8
  b20ab0:	c4 62 7d 18 1d a7 49 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff5549a7]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b20ab7:	55 ff 
  b20ab9:	c4 41 7c 28 e3       	vmovaps ymm12,ymm11
  b20abe:	c4 42 4d ac e2       	vfnmadd213ps ymm12,ymm6,ymm10
  b20ac3:	c4 c1 3c 58 ec       	vaddps ymm5,ymm8,ymm12
  b20ac8:	c5 dc 58 e7          	vaddps ymm4,ymm4,ymm7
  b20acc:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  b20ad1:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b20ad7:	c4 62 5d ac d8       	vfnmadd213ps ymm11,ymm4,ymm0
  b20adc:	c5 ec 5c cb          	vsubps ymm1,ymm2,ymm3
  b20ae0:	c5 b4 59 c9          	vmulps ymm1,ymm9,ymm1
  b20ae4:	c5 a4 5c d1          	vsubps ymm2,ymm11,ymm1
  b20ae8:	c4 41 1c 5c e0       	vsubps ymm12,ymm12,ymm8
  b20aed:	c5 a4 58 c9          	vaddps ymm1,ymm11,ymm1
  b20af1:	c5 2c 58 d6          	vaddps ymm10,ymm10,ymm6
  b20af5:	c5 fc 58 c4          	vaddps ymm0,ymm0,ymm4
  b20af9:	c5 f8 28 d8          	vmovaps xmm3,xmm0
  b20afd:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b20b03:	c5 f8 28 e1          	vmovaps xmm4,xmm1
  b20b07:	c4 e3 7d 19 ce 01    	vextractf128 xmm6,ymm1,0x1
  b20b0d:	c5 f8 28 fa          	vmovaps xmm7,xmm2
  b20b11:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  b20b17:	c5 65 15 c7          	vunpckhpd ymm8,ymm3,ymm7
  b20b1b:	c5 e5 14 df          	vunpcklpd ymm3,ymm3,ymm7
  b20b1f:	c5 fa 7e c9          	vmovq  xmm1,xmm1
  b20b23:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  b20b28:	c5 7d 15 da          	vunpckhpd ymm11,ymm0,ymm2
  b20b2c:	c5 fd 14 d2          	vunpcklpd ymm2,ymm0,ymm2
  b20b30:	c4 41 30 57 c9       	vxorps xmm9,xmm9,xmm9
  b20b35:	c4 c3 4d 0c f9 cc    	vblendps ymm7,ymm6,ymm9,0xcc
  b20b3b:	c4 41 4d 15 e9       	vunpckhpd ymm13,ymm6,ymm9
  b20b40:	62 e1 64 28 c6 d1 88 	vshufps ymm18,ymm3,ymm1,0x88
  b20b47:	c5 e4 c6 c9 dd       	vshufps ymm1,ymm3,ymm1,0xdd
  b20b4c:	c5 f4 c6 d9 d8       	vshufps ymm3,ymm1,ymm1,0xd8
  b20b51:	c5 bc c6 cc 88       	vshufps ymm1,ymm8,ymm4,0x88
  b20b56:	c5 f4 c6 f1 d8       	vshufps ymm6,ymm1,ymm1,0xd8
  b20b5b:	c5 bc c6 cc dd       	vshufps ymm1,ymm8,ymm4,0xdd
  b20b60:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  b20b65:	c5 ec c6 e7 88       	vshufps ymm4,ymm2,ymm7,0x88
  b20b6a:	c5 5c c6 c4 d8       	vshufps ymm8,ymm4,ymm4,0xd8
  b20b6f:	c5 ec c6 d7 dd       	vshufps ymm2,ymm2,ymm7,0xdd
  b20b74:	c5 ec c6 e2 d8       	vshufps ymm4,ymm2,ymm2,0xd8
  b20b79:	c4 c1 24 c6 d5 88    	vshufps ymm2,ymm11,ymm13,0x88
  b20b7f:	c5 ec c6 fa d8       	vshufps ymm7,ymm2,ymm2,0xd8
  b20b84:	c4 c1 24 c6 d5 dd    	vshufps ymm2,ymm11,ymm13,0xdd
  b20b8a:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b20b8f:	c4 41 78 28 da       	vmovaps xmm11,xmm10
  b20b94:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  b20b9a:	c4 41 78 28 ec       	vmovaps xmm13,xmm12
  b20b9f:	c4 43 7d 19 e6 01    	vextractf128 xmm14,ymm12,0x1
  b20ba5:	c5 78 28 fd          	vmovaps xmm15,xmm5
  b20ba9:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b20baf:	62 c1 a5 28 15 c7    	vunpckhpd ymm16,ymm11,ymm15
  b20bb5:	c4 41 25 14 df       	vunpcklpd ymm11,ymm11,ymm15
  b20bba:	c4 41 7a 7e e4       	vmovq  xmm12,xmm12
  b20bbf:	c4 c1 15 73 dd 08    	vpsrldq ymm13,ymm13,0x8
  b20bc5:	c5 2d 15 fd          	vunpckhpd ymm15,ymm10,ymm5
  b20bc9:	62 e1 ad 28 14 cd    	vunpcklpd ymm17,ymm10,ymm5
  b20bcf:	c4 c3 0d 0c c1 cc    	vblendps ymm0,ymm14,ymm9,0xcc
  b20bd5:	c4 41 0d 15 f1       	vunpckhpd ymm14,ymm14,ymm9
  b20bda:	c4 c1 24 c6 ec 88    	vshufps ymm5,ymm11,ymm12,0x88
  b20be0:	c4 41 24 c6 cc dd    	vshufps ymm9,ymm11,ymm12,0xdd
  b20be6:	c4 41 34 c6 e1 d8    	vshufps ymm12,ymm9,ymm9,0xd8
  b20bec:	62 51 7c 20 c6 cd 88 	vshufps ymm9,ymm16,ymm13,0x88
  b20bf3:	62 c1 34 28 c6 d9 d8 	vshufps ymm19,ymm9,ymm9,0xd8
  b20bfa:	62 51 7c 20 c6 cd dd 	vshufps ymm9,ymm16,ymm13,0xdd
  b20c01:	c4 41 34 c6 d1 d8    	vshufps ymm10,ymm9,ymm9,0xd8
  b20c07:	62 71 74 20 c6 c8 88 	vshufps ymm9,ymm17,ymm0,0x88
  b20c0e:	62 c1 34 28 c6 c1 d8 	vshufps ymm16,ymm9,ymm9,0xd8
  b20c15:	62 f1 74 20 c6 c0 dd 	vshufps ymm0,ymm17,ymm0,0xdd
  b20c1c:	c5 7c c6 e8 d8       	vshufps ymm13,ymm0,ymm0,0xd8
  b20c21:	c4 c1 04 c6 c6 dd    	vshufps ymm0,ymm15,ymm14,0xdd
  b20c27:	c5 7c c6 c8 d8       	vshufps ymm9,ymm0,ymm0,0xd8
  b20c2c:	c4 c1 04 c6 c6 88    	vshufps ymm0,ymm15,ymm14,0x88
  b20c32:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b20c37:	c5 7c 10 b2 00 01 00 	vmovups ymm14,YMMWORD PTR [rdx+0x100]
  b20c3e:	00 
  b20c3f:	c5 7c 10 ba 20 01 00 	vmovups ymm15,YMMWORD PTR [rdx+0x120]
  b20c46:	00 
  b20c47:	c4 41 3c 59 de       	vmulps ymm11,ymm8,ymm14
  b20c4c:	62 52 7d 20 bc df    	vfnmadd231ps ymm11,ymm16,ymm15
  b20c52:	62 51 7c 20 59 f6    	vmulps ymm14,ymm16,ymm14
  b20c58:	62 e1 7c 28 10 42 04 	vmovups ymm16,YMMWORD PTR [rdx+0x80]
  b20c5f:	c4 42 3d b8 f7       	vfmadd231ps ymm14,ymm8,ymm15
  b20c64:	c5 7c 10 ba a0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xa0]
  b20c6b:	00 
  b20c6c:	62 31 4c 28 59 c0    	vmulps ymm8,ymm6,ymm16
  b20c72:	62 52 65 20 bc c7    	vfnmadd231ps ymm8,ymm19,ymm15
  b20c78:	62 a1 64 20 59 c0    	vmulps ymm16,ymm19,ymm16
  b20c7e:	62 e1 7c 28 10 4a 0c 	vmovups ymm17,YMMWORD PTR [rdx+0x180]
  b20c85:	62 c2 4d 28 b8 c7    	vfmadd231ps ymm16,ymm6,ymm15
  b20c8b:	c5 fc 10 b2 a0 01 00 	vmovups ymm6,YMMWORD PTR [rdx+0x1a0]
  b20c92:	00 
  b20c93:	62 31 44 28 59 f9    	vmulps ymm15,ymm7,ymm17
  b20c99:	c4 62 7d bc fe       	vfnmadd231ps ymm15,ymm0,ymm6
  b20c9e:	62 b1 7c 28 59 c1    	vmulps ymm0,ymm0,ymm17
  b20ca4:	62 e1 7c 28 10 4a 02 	vmovups ymm17,YMMWORD PTR [rdx+0x40]
  b20cab:	c4 e2 45 b8 c6       	vfmadd231ps ymm0,ymm7,ymm6
  b20cb0:	c5 fc 10 72 60       	vmovups ymm6,YMMWORD PTR [rdx+0x60]
  b20cb5:	62 b1 64 28 59 f9    	vmulps ymm7,ymm3,ymm17
  b20cbb:	c4 e2 1d bc fe       	vfnmadd231ps ymm7,ymm12,ymm6
  b20cc0:	62 31 1c 28 59 e1    	vmulps ymm12,ymm12,ymm17
  b20cc6:	62 e1 7c 28 10 4a 0a 	vmovups ymm17,YMMWORD PTR [rdx+0x140]
  b20ccd:	c4 62 65 b8 e6       	vfmadd231ps ymm12,ymm3,ymm6
  b20cd2:	c5 fc 10 9a 60 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x160]
  b20cd9:	00 
  b20cda:	62 b1 5c 28 59 f1    	vmulps ymm6,ymm4,ymm17
  b20ce0:	c4 e2 15 bc f3       	vfnmadd231ps ymm6,ymm13,ymm3
  b20ce5:	62 31 14 28 59 e9    	vmulps ymm13,ymm13,ymm17
  b20ceb:	62 e1 7c 28 10 4a 06 	vmovups ymm17,YMMWORD PTR [rdx+0xc0]
  b20cf2:	c4 62 5d b8 eb       	vfmadd231ps ymm13,ymm4,ymm3
  b20cf7:	c5 fc 10 9a e0 00 00 	vmovups ymm3,YMMWORD PTR [rdx+0xe0]
  b20cfe:	00 
  b20cff:	62 b1 74 28 59 e1    	vmulps ymm4,ymm1,ymm17
  b20d05:	c4 e2 2d bc e3       	vfnmadd231ps ymm4,ymm10,ymm3
  b20d0a:	62 31 2c 28 59 d1    	vmulps ymm10,ymm10,ymm17
  b20d10:	62 e1 7c 28 10 4a 0e 	vmovups ymm17,YMMWORD PTR [rdx+0x1c0]
  b20d17:	c4 62 75 b8 d3       	vfmadd231ps ymm10,ymm1,ymm3
  b20d1c:	c5 fc 10 8a e0 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x1e0]
  b20d23:	00 
  b20d24:	62 b1 6c 28 59 d9    	vmulps ymm3,ymm2,ymm17
  b20d2a:	c4 e2 35 bc d9       	vfnmadd231ps ymm3,ymm9,ymm1
  b20d2f:	62 31 34 28 59 c9    	vmulps ymm9,ymm9,ymm17
  b20d35:	62 a1 6c 20 c6 ca d8 	vshufps ymm17,ymm18,ymm18,0xd8
  b20d3c:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b20d41:	c4 62 6d b8 c9       	vfmadd231ps ymm9,ymm2,ymm1
  b20d46:	62 d1 74 20 58 cb    	vaddps ymm1,ymm17,ymm11
  b20d4c:	c4 c1 3c 58 d7       	vaddps ymm2,ymm8,ymm15
  b20d51:	62 51 74 20 5c db    	vsubps ymm11,ymm17,ymm11
  b20d57:	62 e1 7c 20 58 c8    	vaddps ymm17,ymm16,ymm0
  b20d5d:	62 e1 7c 20 5c c0    	vsubps ymm16,ymm16,ymm0
  b20d63:	62 e1 44 28 58 d6    	vaddps ymm18,ymm7,ymm6
  b20d69:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  b20d6d:	c4 c1 1c 58 fd       	vaddps ymm7,ymm12,ymm13
  b20d72:	c4 41 1c 5c e5       	vsubps ymm12,ymm12,ymm13
  b20d77:	c4 41 2c 58 e9       	vaddps ymm13,ymm10,ymm9
  b20d7c:	c4 41 2c 5c c9       	vsubps ymm9,ymm10,ymm9
  b20d81:	c5 5c 58 d3          	vaddps ymm10,ymm4,ymm3
  b20d85:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  b20d89:	c5 8c 58 e5          	vaddps ymm4,ymm14,ymm5
  b20d8d:	c4 c1 54 5c ee       	vsubps ymm5,ymm5,ymm14
  b20d92:	c5 f4 58 c2          	vaddps ymm0,ymm1,ymm2
  b20d96:	c4 41 04 5c c0       	vsubps ymm8,ymm15,ymm8
  b20d9b:	c5 1c 58 f6          	vaddps ymm14,ymm12,ymm6
  b20d9f:	c5 9c 5c f6          	vsubps ymm6,ymm12,ymm6
  b20da3:	c5 34 5c e3          	vsubps ymm12,ymm9,ymm3
  b20da7:	c5 b4 58 db          	vaddps ymm3,ymm9,ymm3
  b20dab:	c4 62 7d 18 0d e8 45 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff5545e8]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b20db2:	55 ff 
  b20db4:	c4 41 0c 59 f1       	vmulps ymm14,ymm14,ymm9
  b20db9:	c4 41 1c 59 e1       	vmulps ymm12,ymm12,ymm9
  b20dbe:	c5 34 59 fe          	vmulps ymm15,ymm9,ymm6
  b20dc2:	62 c1 64 28 59 d9    	vmulps ymm19,ymm3,ymm9
  b20dc8:	62 d1 6c 20 58 f2    	vaddps ymm6,ymm18,ymm10
  b20dce:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  b20dd2:	62 c1 44 28 58 e5    	vaddps ymm20,ymm7,ymm13
  b20dd8:	c4 c1 44 5c dd       	vsubps ymm3,ymm7,ymm13
  b20ddd:	62 71 74 20 58 ec    	vaddps ymm13,ymm17,ymm4
  b20de3:	62 a1 5c 28 5c c9    	vsubps ymm17,ymm4,ymm17
  b20de9:	62 b1 24 28 58 f8    	vaddps ymm7,ymm11,ymm16
  b20def:	62 31 2c 28 5c d2    	vsubps ymm10,ymm10,ymm18
  b20df5:	c4 41 0c 58 cc       	vaddps ymm9,ymm14,ymm12
  b20dfa:	62 b1 24 28 5c d0    	vsubps ymm2,ymm11,ymm16
  b20e00:	62 31 04 28 5c db    	vsubps ymm11,ymm15,ymm19
  b20e06:	62 b1 04 28 58 e3    	vaddps ymm4,ymm15,ymm19
  b20e0c:	c5 3c 58 fd          	vaddps ymm15,ymm8,ymm5
  b20e10:	c4 c1 54 5c e8       	vsubps ymm5,ymm5,ymm8
  b20e15:	62 c1 04 28 58 c3    	vaddps ymm16,ymm15,ymm11
  b20e1b:	c4 41 1c 5c c6       	vsubps ymm8,ymm12,ymm14
  b20e20:	62 51 74 20 58 e2    	vaddps ymm12,ymm17,ymm10
  b20e26:	c4 41 04 5c db       	vsubps ymm11,ymm15,ymm11
  b20e2b:	c5 3c 58 f5          	vaddps ymm14,ymm8,ymm5
  b20e2f:	62 51 74 20 5c d2    	vsubps ymm10,ymm17,ymm10
  b20e35:	62 31 14 28 5c fc    	vsubps ymm15,ymm13,ymm20
  b20e3b:	c4 c1 54 5c e8       	vsubps ymm5,ymm5,ymm8
  b20e40:	62 31 14 28 58 ec    	vaddps ymm13,ymm13,ymm20
  b20e46:	c5 78 58 c6          	vaddps xmm8,xmm0,xmm6
  b20e4a:	62 e1 7c 28 28 0d 6c 	vmovaps ymm17,YMMWORD PTR [rip+0xffffffffff55746c]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  b20e51:	74 55 ff 
  b20e54:	62 52 75 20 7f c5    	vpermt2ps ymm8,ymm17,ymm13
  b20e5a:	c5 30 58 ef          	vaddps xmm13,xmm9,xmm7
  b20e5e:	62 32 75 20 7f e8    	vpermt2ps ymm13,ymm17,ymm16
  b20e64:	62 e1 74 08 58 c3    	vaddps xmm16,xmm1,xmm3
  b20e6a:	62 c2 75 20 7f c4    	vpermt2ps ymm16,ymm17,ymm12
  b20e70:	c5 68 58 e4          	vaddps xmm12,xmm2,xmm4
  b20e74:	62 52 75 20 7f e6    	vpermt2ps ymm12,ymm17,ymm14
  b20e7a:	c5 f8 5c c6          	vsubps xmm0,xmm0,xmm6
  b20e7e:	62 d2 75 20 7f c7    	vpermt2ps ymm0,ymm17,ymm15
  b20e84:	c4 c1 40 5c f1       	vsubps xmm6,xmm7,xmm9
  b20e89:	62 d2 75 20 7f f3    	vpermt2ps ymm6,ymm17,ymm11
  b20e8f:	c5 f0 5c cb          	vsubps xmm1,xmm1,xmm3
  b20e93:	62 d2 75 20 7f ca    	vpermt2ps ymm1,ymm17,ymm10
  b20e99:	c5 e8 5c d4          	vsubps xmm2,xmm2,xmm4
  b20e9d:	62 f2 75 20 7f d5    	vpermt2ps ymm2,ymm17,ymm5
  b20ea3:	c4 63 7d 19 c3 01    	vextractf128 xmm3,ymm8,0x1
  b20ea9:	c5 f8 13 5e 10       	vmovlps QWORD PTR [rsi+0x10],xmm3
  b20eae:	c5 78 11 06          	vmovups XMMWORD PTR [rsi],xmm8
  b20eb2:	c4 63 7d 19 eb 01    	vextractf128 xmm3,ymm13,0x1
  b20eb8:	c5 f8 13 5e 28       	vmovlps QWORD PTR [rsi+0x28],xmm3
  b20ebd:	c5 78 11 6e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm13
  b20ec2:	62 e3 7d 28 19 c3 01 	vextractf32x4 xmm3,ymm16,0x1
  b20ec9:	c5 f8 13 5e 40       	vmovlps QWORD PTR [rsi+0x40],xmm3
  b20ece:	62 e1 7c 08 11 46 03 	vmovups XMMWORD PTR [rsi+0x30],xmm16
  b20ed5:	c4 63 7d 19 e3 01    	vextractf128 xmm3,ymm12,0x1
  b20edb:	c5 f8 13 5e 58       	vmovlps QWORD PTR [rsi+0x58],xmm3
  b20ee0:	c5 78 11 66 48       	vmovups XMMWORD PTR [rsi+0x48],xmm12
  b20ee5:	c4 e3 7d 19 c3 01    	vextractf128 xmm3,ymm0,0x1
  b20eeb:	c5 f8 13 5e 70       	vmovlps QWORD PTR [rsi+0x70],xmm3
  b20ef0:	c5 f8 11 46 60       	vmovups XMMWORD PTR [rsi+0x60],xmm0
  b20ef5:	c4 e3 7d 19 f0 01    	vextractf128 xmm0,ymm6,0x1
  b20efb:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  b20f02:	00 
  b20f03:	c5 f8 11 76 78       	vmovups XMMWORD PTR [rsi+0x78],xmm6
  b20f08:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  b20f0e:	c5 f8 13 86 a0 00 00 	vmovlps QWORD PTR [rsi+0xa0],xmm0
  b20f15:	00 
  b20f16:	c5 f8 11 8e 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm1
  b20f1d:	00 
  b20f1e:	c4 e3 7d 19 d0 01    	vextractf128 xmm0,ymm2,0x1
  b20f24:	c5 f8 13 86 b8 00 00 	vmovlps QWORD PTR [rsi+0xb8],xmm0
  b20f2b:	00 
  b20f2c:	c5 f8 11 96 a8 00 00 	vmovups XMMWORD PTR [rsi+0xa8],xmm2
  b20f33:	00 
  b20f34:	c5 f8 77             	vzeroupper
  b20f37:	c3                   	ret
