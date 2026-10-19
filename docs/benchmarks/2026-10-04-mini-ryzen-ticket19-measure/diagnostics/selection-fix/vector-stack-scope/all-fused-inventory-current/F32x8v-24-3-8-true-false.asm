
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b1bdc0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b1bdc0:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  b1bdc4:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  b1bdc9:	c5 fc 10 57 40       	vmovups ymm2,YMMWORD PTR [rdi+0x40]
  b1bdce:	c5 fc 10 5f 60       	vmovups ymm3,YMMWORD PTR [rdi+0x60]
  b1bdd3:	c5 ec c6 e3 dd       	vshufps ymm4,ymm2,ymm3,0xdd
  b1bdd8:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b1bdde:	c5 fc 10 af 80 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0x80]
  b1bde5:	00 
  b1bde6:	c5 fc 10 b7 a0 00 00 	vmovups ymm6,YMMWORD PTR [rdi+0xa0]
  b1bded:	00 
  b1bdee:	c5 d4 c6 fe dd       	vshufps ymm7,ymm5,ymm6,0xdd
  b1bdf3:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  b1bdf9:	c5 5c 5c c7          	vsubps ymm8,ymm4,ymm7
  b1bdfd:	c4 62 7d 18 0d ce 94 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff5594ce]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b1be04:	55 ff 
  b1be06:	c4 41 3c 59 c1       	vmulps ymm8,ymm8,ymm9
  b1be0b:	c5 ec c6 d3 88       	vshufps ymm2,ymm2,ymm3,0x88
  b1be10:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  b1be16:	c5 d4 c6 de 88       	vshufps ymm3,ymm5,ymm6,0x88
  b1be1b:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  b1be21:	c5 ec 58 f3          	vaddps ymm6,ymm2,ymm3
  b1be25:	c5 fc c6 e9 88       	vshufps ymm5,ymm0,ymm1,0x88
  b1be2a:	c4 63 fd 01 d5 d8    	vpermpd ymm10,ymm5,0xd8
  b1be30:	c4 62 7d 18 1d 27 96 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff559627]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b1be37:	55 ff 
  b1be39:	c4 41 7c 28 e3       	vmovaps ymm12,ymm11
  b1be3e:	c4 42 4d ac e2       	vfnmadd213ps ymm12,ymm6,ymm10
  b1be43:	c4 c1 3c 58 ec       	vaddps ymm5,ymm8,ymm12
  b1be48:	c5 dc 58 e7          	vaddps ymm4,ymm4,ymm7
  b1be4c:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b1be51:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b1be57:	c4 62 5d ac d8       	vfnmadd213ps ymm11,ymm4,ymm0
  b1be5c:	c5 ec 5c cb          	vsubps ymm1,ymm2,ymm3
  b1be60:	c5 b4 59 c9          	vmulps ymm1,ymm9,ymm1
  b1be64:	c5 a4 5c d1          	vsubps ymm2,ymm11,ymm1
  b1be68:	c4 41 1c 5c e0       	vsubps ymm12,ymm12,ymm8
  b1be6d:	c5 a4 58 c9          	vaddps ymm1,ymm11,ymm1
  b1be71:	c5 2c 58 d6          	vaddps ymm10,ymm10,ymm6
  b1be75:	c5 fc 58 c4          	vaddps ymm0,ymm0,ymm4
  b1be79:	c5 f8 28 d8          	vmovaps xmm3,xmm0
  b1be7d:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b1be83:	c5 f8 28 e1          	vmovaps xmm4,xmm1
  b1be87:	c4 e3 7d 19 ce 01    	vextractf128 xmm6,ymm1,0x1
  b1be8d:	c5 f8 28 fa          	vmovaps xmm7,xmm2
  b1be91:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  b1be97:	c5 65 15 c7          	vunpckhpd ymm8,ymm3,ymm7
  b1be9b:	c5 e5 14 df          	vunpcklpd ymm3,ymm3,ymm7
  b1be9f:	c5 fa 7e c9          	vmovq  xmm1,xmm1
  b1bea3:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  b1bea8:	c5 7d 15 da          	vunpckhpd ymm11,ymm0,ymm2
  b1beac:	c5 fd 14 d2          	vunpcklpd ymm2,ymm0,ymm2
  b1beb0:	c4 41 30 57 c9       	vxorps xmm9,xmm9,xmm9
  b1beb5:	c4 c3 4d 0c f9 cc    	vblendps ymm7,ymm6,ymm9,0xcc
  b1bebb:	c4 41 4d 15 e9       	vunpckhpd ymm13,ymm6,ymm9
  b1bec0:	62 e1 64 28 c6 d1 88 	vshufps ymm18,ymm3,ymm1,0x88
  b1bec7:	c5 e4 c6 c9 dd       	vshufps ymm1,ymm3,ymm1,0xdd
  b1becc:	c5 f4 c6 d9 d8       	vshufps ymm3,ymm1,ymm1,0xd8
  b1bed1:	c5 bc c6 cc 88       	vshufps ymm1,ymm8,ymm4,0x88
  b1bed6:	c5 f4 c6 f1 d8       	vshufps ymm6,ymm1,ymm1,0xd8
  b1bedb:	c5 bc c6 cc dd       	vshufps ymm1,ymm8,ymm4,0xdd
  b1bee0:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  b1bee5:	c5 ec c6 e7 88       	vshufps ymm4,ymm2,ymm7,0x88
  b1beea:	c5 5c c6 c4 d8       	vshufps ymm8,ymm4,ymm4,0xd8
  b1beef:	c5 ec c6 d7 dd       	vshufps ymm2,ymm2,ymm7,0xdd
  b1bef4:	c5 ec c6 e2 d8       	vshufps ymm4,ymm2,ymm2,0xd8
  b1bef9:	c4 c1 24 c6 d5 88    	vshufps ymm2,ymm11,ymm13,0x88
  b1beff:	c5 ec c6 fa d8       	vshufps ymm7,ymm2,ymm2,0xd8
  b1bf04:	c4 c1 24 c6 d5 dd    	vshufps ymm2,ymm11,ymm13,0xdd
  b1bf0a:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b1bf0f:	c4 41 78 28 da       	vmovaps xmm11,xmm10
  b1bf14:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  b1bf1a:	c4 41 78 28 ec       	vmovaps xmm13,xmm12
  b1bf1f:	c4 43 7d 19 e6 01    	vextractf128 xmm14,ymm12,0x1
  b1bf25:	c5 78 28 fd          	vmovaps xmm15,xmm5
  b1bf29:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b1bf2f:	62 c1 a5 28 15 c7    	vunpckhpd ymm16,ymm11,ymm15
  b1bf35:	c4 41 25 14 df       	vunpcklpd ymm11,ymm11,ymm15
  b1bf3a:	c4 41 7a 7e e4       	vmovq  xmm12,xmm12
  b1bf3f:	c4 c1 15 73 dd 08    	vpsrldq ymm13,ymm13,0x8
  b1bf45:	c5 2d 15 fd          	vunpckhpd ymm15,ymm10,ymm5
  b1bf49:	62 e1 ad 28 14 cd    	vunpcklpd ymm17,ymm10,ymm5
  b1bf4f:	c4 c3 0d 0c c1 cc    	vblendps ymm0,ymm14,ymm9,0xcc
  b1bf55:	c4 41 0d 15 f1       	vunpckhpd ymm14,ymm14,ymm9
  b1bf5a:	c4 c1 24 c6 ec 88    	vshufps ymm5,ymm11,ymm12,0x88
  b1bf60:	c4 41 24 c6 cc dd    	vshufps ymm9,ymm11,ymm12,0xdd
  b1bf66:	c4 41 34 c6 e1 d8    	vshufps ymm12,ymm9,ymm9,0xd8
  b1bf6c:	62 51 7c 20 c6 cd 88 	vshufps ymm9,ymm16,ymm13,0x88
  b1bf73:	62 c1 34 28 c6 d9 d8 	vshufps ymm19,ymm9,ymm9,0xd8
  b1bf7a:	62 51 7c 20 c6 cd dd 	vshufps ymm9,ymm16,ymm13,0xdd
  b1bf81:	c4 41 34 c6 d1 d8    	vshufps ymm10,ymm9,ymm9,0xd8
  b1bf87:	62 71 74 20 c6 c8 88 	vshufps ymm9,ymm17,ymm0,0x88
  b1bf8e:	62 c1 34 28 c6 c1 d8 	vshufps ymm16,ymm9,ymm9,0xd8
  b1bf95:	62 f1 74 20 c6 c0 dd 	vshufps ymm0,ymm17,ymm0,0xdd
  b1bf9c:	c5 7c c6 e8 d8       	vshufps ymm13,ymm0,ymm0,0xd8
  b1bfa1:	c4 c1 04 c6 c6 dd    	vshufps ymm0,ymm15,ymm14,0xdd
  b1bfa7:	c5 7c c6 c8 d8       	vshufps ymm9,ymm0,ymm0,0xd8
  b1bfac:	c4 c1 04 c6 c6 88    	vshufps ymm0,ymm15,ymm14,0x88
  b1bfb2:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b1bfb7:	c5 7c 10 b2 00 01 00 	vmovups ymm14,YMMWORD PTR [rdx+0x100]
  b1bfbe:	00 
  b1bfbf:	c5 7c 10 ba 20 01 00 	vmovups ymm15,YMMWORD PTR [rdx+0x120]
  b1bfc6:	00 
  b1bfc7:	c4 41 3c 59 de       	vmulps ymm11,ymm8,ymm14
  b1bfcc:	62 52 7d 20 bc df    	vfnmadd231ps ymm11,ymm16,ymm15
  b1bfd2:	62 51 7c 20 59 f6    	vmulps ymm14,ymm16,ymm14
  b1bfd8:	62 e1 7c 28 10 42 04 	vmovups ymm16,YMMWORD PTR [rdx+0x80]
  b1bfdf:	c4 42 3d b8 f7       	vfmadd231ps ymm14,ymm8,ymm15
  b1bfe4:	c5 7c 10 ba a0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xa0]
  b1bfeb:	00 
  b1bfec:	62 31 4c 28 59 c0    	vmulps ymm8,ymm6,ymm16
  b1bff2:	62 52 65 20 bc c7    	vfnmadd231ps ymm8,ymm19,ymm15
  b1bff8:	62 a1 64 20 59 c0    	vmulps ymm16,ymm19,ymm16
  b1bffe:	62 e1 7c 28 10 4a 0c 	vmovups ymm17,YMMWORD PTR [rdx+0x180]
  b1c005:	62 c2 4d 28 b8 c7    	vfmadd231ps ymm16,ymm6,ymm15
  b1c00b:	c5 fc 10 b2 a0 01 00 	vmovups ymm6,YMMWORD PTR [rdx+0x1a0]
  b1c012:	00 
  b1c013:	62 31 44 28 59 f9    	vmulps ymm15,ymm7,ymm17
  b1c019:	c4 62 7d bc fe       	vfnmadd231ps ymm15,ymm0,ymm6
  b1c01e:	62 b1 7c 28 59 c1    	vmulps ymm0,ymm0,ymm17
  b1c024:	62 e1 7c 28 10 4a 02 	vmovups ymm17,YMMWORD PTR [rdx+0x40]
  b1c02b:	c4 e2 45 b8 c6       	vfmadd231ps ymm0,ymm7,ymm6
  b1c030:	c5 fc 10 72 60       	vmovups ymm6,YMMWORD PTR [rdx+0x60]
  b1c035:	62 b1 64 28 59 f9    	vmulps ymm7,ymm3,ymm17
  b1c03b:	c4 e2 1d bc fe       	vfnmadd231ps ymm7,ymm12,ymm6
  b1c040:	62 31 1c 28 59 e1    	vmulps ymm12,ymm12,ymm17
  b1c046:	62 e1 7c 28 10 4a 0a 	vmovups ymm17,YMMWORD PTR [rdx+0x140]
  b1c04d:	c4 62 65 b8 e6       	vfmadd231ps ymm12,ymm3,ymm6
  b1c052:	c5 fc 10 9a 60 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x160]
  b1c059:	00 
  b1c05a:	62 b1 5c 28 59 f1    	vmulps ymm6,ymm4,ymm17
  b1c060:	c4 e2 15 bc f3       	vfnmadd231ps ymm6,ymm13,ymm3
  b1c065:	62 31 14 28 59 e9    	vmulps ymm13,ymm13,ymm17
  b1c06b:	62 e1 7c 28 10 4a 06 	vmovups ymm17,YMMWORD PTR [rdx+0xc0]
  b1c072:	c4 62 5d b8 eb       	vfmadd231ps ymm13,ymm4,ymm3
  b1c077:	c5 fc 10 9a e0 00 00 	vmovups ymm3,YMMWORD PTR [rdx+0xe0]
  b1c07e:	00 
  b1c07f:	62 b1 74 28 59 e1    	vmulps ymm4,ymm1,ymm17
  b1c085:	c4 e2 2d bc e3       	vfnmadd231ps ymm4,ymm10,ymm3
  b1c08a:	62 31 2c 28 59 d1    	vmulps ymm10,ymm10,ymm17
  b1c090:	62 e1 7c 28 10 4a 0e 	vmovups ymm17,YMMWORD PTR [rdx+0x1c0]
  b1c097:	c4 62 75 b8 d3       	vfmadd231ps ymm10,ymm1,ymm3
  b1c09c:	c5 fc 10 8a e0 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x1e0]
  b1c0a3:	00 
  b1c0a4:	62 b1 6c 28 59 d9    	vmulps ymm3,ymm2,ymm17
  b1c0aa:	c4 e2 35 bc d9       	vfnmadd231ps ymm3,ymm9,ymm1
  b1c0af:	62 31 34 28 59 c9    	vmulps ymm9,ymm9,ymm17
  b1c0b5:	62 a1 6c 20 c6 ca d8 	vshufps ymm17,ymm18,ymm18,0xd8
  b1c0bc:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b1c0c1:	c4 62 6d b8 c9       	vfmadd231ps ymm9,ymm2,ymm1
  b1c0c6:	62 d1 74 20 58 cb    	vaddps ymm1,ymm17,ymm11
  b1c0cc:	c4 c1 3c 58 d7       	vaddps ymm2,ymm8,ymm15
  b1c0d1:	62 51 74 20 5c db    	vsubps ymm11,ymm17,ymm11
  b1c0d7:	62 e1 7c 20 58 c8    	vaddps ymm17,ymm16,ymm0
  b1c0dd:	62 e1 7c 20 5c c0    	vsubps ymm16,ymm16,ymm0
  b1c0e3:	62 e1 44 28 58 d6    	vaddps ymm18,ymm7,ymm6
  b1c0e9:	c5 c4 5c c6          	vsubps ymm0,ymm7,ymm6
  b1c0ed:	c4 c1 1c 58 fd       	vaddps ymm7,ymm12,ymm13
  b1c0f2:	c4 c1 1c 5c f5       	vsubps ymm6,ymm12,ymm13
  b1c0f7:	c4 41 2c 58 e1       	vaddps ymm12,ymm10,ymm9
  b1c0fc:	c4 41 2c 5c c9       	vsubps ymm9,ymm10,ymm9
  b1c101:	c5 5c 58 d3          	vaddps ymm10,ymm4,ymm3
  b1c105:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  b1c109:	c5 8c 58 e5          	vaddps ymm4,ymm14,ymm5
  b1c10d:	c4 c1 54 5c ee       	vsubps ymm5,ymm5,ymm14
  b1c112:	c5 74 58 ea          	vaddps ymm13,ymm1,ymm2
  b1c116:	c4 41 04 5c c0       	vsubps ymm8,ymm15,ymm8
  b1c11b:	c5 7c 58 f6          	vaddps ymm14,ymm0,ymm6
  b1c11f:	c5 cc 5c c0          	vsubps ymm0,ymm6,ymm0
  b1c123:	c5 b4 5c f3          	vsubps ymm6,ymm9,ymm3
  b1c127:	c5 b4 58 db          	vaddps ymm3,ymm9,ymm3
  b1c12b:	c4 62 7d 18 0d 68 92 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff559268]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b1c132:	55 ff 
  b1c134:	c4 41 0c 59 f1       	vmulps ymm14,ymm14,ymm9
  b1c139:	c5 34 59 fe          	vmulps ymm15,ymm9,ymm6
  b1c13d:	62 c1 7c 28 59 d9    	vmulps ymm19,ymm0,ymm9
  b1c143:	c5 b4 59 db          	vmulps ymm3,ymm9,ymm3
  b1c147:	62 51 6c 20 58 ca    	vaddps ymm9,ymm18,ymm10
  b1c14d:	62 e1 74 28 5c e2    	vsubps ymm20,ymm1,ymm2
  b1c153:	c5 9c 58 f7          	vaddps ymm6,ymm12,ymm7
  b1c157:	c4 c1 44 5c fc       	vsubps ymm7,ymm7,ymm12
  b1c15c:	62 71 74 20 58 e4    	vaddps ymm12,ymm17,ymm4
  b1c162:	62 b1 5c 28 5c c1    	vsubps ymm0,ymm4,ymm17
  b1c168:	62 b1 24 28 58 e0    	vaddps ymm4,ymm11,ymm16
  b1c16e:	62 b1 2c 28 5c d2    	vsubps ymm2,ymm10,ymm18
  b1c174:	c4 41 0c 58 d7       	vaddps ymm10,ymm14,ymm15
  b1c179:	62 31 24 28 5c d8    	vsubps ymm11,ymm11,ymm16
  b1c17f:	62 e1 64 20 5c c3    	vsubps ymm16,ymm19,ymm3
  b1c185:	62 e1 64 20 58 cb    	vaddps ymm17,ymm19,ymm3
  b1c18b:	62 e1 3c 28 58 d5    	vaddps ymm18,ymm8,ymm5
  b1c191:	c4 c1 54 5c c8       	vsubps ymm1,ymm5,ymm8
  b1c196:	c5 2c 58 c4          	vaddps ymm8,ymm10,ymm4
  b1c19a:	c4 c1 04 5c de       	vsubps ymm3,ymm15,ymm14
  b1c19f:	62 71 5c 20 58 f7    	vaddps ymm14,ymm20,ymm7
  b1c1a5:	c4 41 5c 5c d2       	vsubps ymm10,ymm4,ymm10
  b1c1aa:	62 31 24 28 58 f9    	vaddps ymm15,ymm11,ymm17
  b1c1b0:	62 f1 5c 20 5c ff    	vsubps ymm7,ymm20,ymm7
  b1c1b6:	62 c1 14 28 5c d9    	vsubps ymm19,ymm13,ymm9
  b1c1bc:	62 b1 24 28 5c e1    	vsubps ymm4,ymm11,ymm17
  b1c1c2:	c4 41 14 58 c9       	vaddps ymm9,ymm13,ymm9
  b1c1c7:	c5 98 58 ee          	vaddps xmm5,xmm12,xmm6
  b1c1cb:	c5 7c 28 1d ed c0 55 	vmovaps ymm11,YMMWORD PTR [rip+0xffffffffff55c0ed]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  b1c1d2:	ff 
  b1c1d3:	62 d2 25 28 7f e9    	vpermt2ps ymm5,ymm11,ymm9
  b1c1d9:	62 31 6c 00 58 c8    	vaddps xmm9,xmm18,xmm16
  b1c1df:	62 52 25 28 7f c8    	vpermt2ps ymm9,ymm11,ymm8
  b1c1e5:	c5 78 58 c2          	vaddps xmm8,xmm0,xmm2
  b1c1e9:	62 52 25 28 7f c6    	vpermt2ps ymm8,ymm11,ymm14
  b1c1ef:	c5 70 58 eb          	vaddps xmm13,xmm1,xmm3
  b1c1f3:	62 52 25 28 7f ef    	vpermt2ps ymm13,ymm11,ymm15
  b1c1f9:	c5 98 5c f6          	vsubps xmm6,xmm12,xmm6
  b1c1fd:	62 b2 25 28 7f f3    	vpermt2ps ymm6,ymm11,ymm19
  b1c203:	62 31 6c 00 5c e0    	vsubps xmm12,xmm18,xmm16
  b1c209:	62 52 25 28 7f e2    	vpermt2ps ymm12,ymm11,ymm10
  b1c20f:	c5 f8 5c c2          	vsubps xmm0,xmm0,xmm2
  b1c213:	62 f2 25 28 7f c7    	vpermt2ps ymm0,ymm11,ymm7
  b1c219:	c5 f0 5c cb          	vsubps xmm1,xmm1,xmm3
  b1c21d:	62 f2 25 28 7f cc    	vpermt2ps ymm1,ymm11,ymm4
  b1c223:	c4 e3 7d 19 ea 01    	vextractf128 xmm2,ymm5,0x1
  b1c229:	c5 f8 13 56 10       	vmovlps QWORD PTR [rsi+0x10],xmm2
  b1c22e:	c5 f8 11 2e          	vmovups XMMWORD PTR [rsi],xmm5
  b1c232:	c4 63 7d 19 ca 01    	vextractf128 xmm2,ymm9,0x1
  b1c238:	c5 f8 13 56 28       	vmovlps QWORD PTR [rsi+0x28],xmm2
  b1c23d:	c5 78 11 4e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm9
  b1c242:	c4 63 7d 19 c2 01    	vextractf128 xmm2,ymm8,0x1
  b1c248:	c5 f8 13 56 40       	vmovlps QWORD PTR [rsi+0x40],xmm2
  b1c24d:	c5 78 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm8
  b1c252:	c4 63 7d 19 ea 01    	vextractf128 xmm2,ymm13,0x1
  b1c258:	c5 f8 13 56 58       	vmovlps QWORD PTR [rsi+0x58],xmm2
  b1c25d:	c5 78 11 6e 48       	vmovups XMMWORD PTR [rsi+0x48],xmm13
  b1c262:	c4 e3 7d 19 f2 01    	vextractf128 xmm2,ymm6,0x1
  b1c268:	c5 f8 13 56 70       	vmovlps QWORD PTR [rsi+0x70],xmm2
  b1c26d:	c5 f8 11 76 60       	vmovups XMMWORD PTR [rsi+0x60],xmm6
  b1c272:	c4 63 7d 19 e2 01    	vextractf128 xmm2,ymm12,0x1
  b1c278:	c5 f8 13 96 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm2
  b1c27f:	00 
  b1c280:	c5 78 11 66 78       	vmovups XMMWORD PTR [rsi+0x78],xmm12
  b1c285:	c4 e3 7d 19 c2 01    	vextractf128 xmm2,ymm0,0x1
  b1c28b:	c5 f8 13 96 a0 00 00 	vmovlps QWORD PTR [rsi+0xa0],xmm2
  b1c292:	00 
  b1c293:	c5 f8 11 86 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm0
  b1c29a:	00 
  b1c29b:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  b1c2a1:	c5 f8 13 86 b8 00 00 	vmovlps QWORD PTR [rsi+0xb8],xmm0
  b1c2a8:	00 
  b1c2a9:	c5 f8 11 8e a8 00 00 	vmovups XMMWORD PTR [rsi+0xa8],xmm1
  b1c2b0:	00 
  b1c2b1:	c5 f8 77             	vzeroupper
  b1c2b4:	c3                   	ret
