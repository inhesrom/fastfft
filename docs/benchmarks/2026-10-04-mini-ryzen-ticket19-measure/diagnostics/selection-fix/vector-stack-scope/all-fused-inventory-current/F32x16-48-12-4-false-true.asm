
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a02880 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a02880:	55                   	push   rbp
  a02881:	48 89 e5             	mov    rbp,rsp
  a02884:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a02888:	48 81 ec 40 01 00 00 	sub    rsp,0x140
  a0288f:	48 c1 e2 07          	shl    rdx,0x7
  a02893:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a02897:	31 d2                	xor    edx,edx
  a02899:	4c 8d 84 24 c0 00 00 	lea    r8,[rsp+0xc0]
  a028a0:	00 
  a028a1:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a028a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a028ad:	00 00 00 
  a028b0:	c6 84 24 c0 00 00 00 	mov    BYTE PTR [rsp+0xc0],0x0
  a028b7:	00 
  a028b8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a028bd:	c5 fc 10 2c 17       	vmovups ymm5,YMMWORD PTR [rdi+rdx*1]
  a028c2:	62 e1 7c 28 10 4c 17 	vmovups ymm17,YMMWORD PTR [rdi+rdx*1+0x20]
  a028c9:	01 
  a028ca:	c5 7c 10 64 17 40    	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x40]
  a028d0:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x60]
  a028d7:	03 
  a028d8:	62 71 7c 48 28 fd    	vmovaps zmm15,zmm5
  a028de:	62 f1 7c 48 28 25 98 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff68b798]        # 8e080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b530>
  a028e5:	b7 68 ff 
  a028e8:	c4 41 20 57 db       	vxorps xmm11,xmm11,xmm11
  a028ed:	62 d2 5d 48 7f eb    	vpermt2ps zmm5,zmm4,zmm11
  a028f3:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a028f9:	62 f1 7c 48 28 05 3d 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68b73d]        # 8e040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b4f0>
  a02900:	b7 68 ff 
  a02903:	62 52 7d 48 7f fb    	vpermt2ps zmm15,zmm0,zmm11
  a02909:	62 52 7d 48 7f f3    	vpermt2ps zmm14,zmm0,zmm11
  a0290f:	62 c2 5d 48 7f cb    	vpermt2ps zmm17,zmm4,zmm11
  a02915:	62 c1 7c 48 28 e4    	vmovaps zmm20,zmm12
  a0291b:	62 c2 7d 48 7f e3    	vpermt2ps zmm20,zmm0,zmm11
  a02921:	62 52 5d 48 7f e3    	vpermt2ps zmm12,zmm4,zmm11
  a02927:	62 31 7c 48 28 e8    	vmovaps zmm13,zmm16
  a0292d:	62 c2 5d 48 7f c3    	vpermt2ps zmm16,zmm4,zmm11
  a02933:	62 52 7d 48 7f eb    	vpermt2ps zmm13,zmm0,zmm11
  a02939:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x80]
  a02940:	04 
  a02941:	62 a1 7c 48 28 f2    	vmovaps zmm22,zmm18
  a02947:	62 c2 5d 48 7f d3    	vpermt2ps zmm18,zmm4,zmm11
  a0294d:	62 c2 7d 48 7f f3    	vpermt2ps zmm22,zmm0,zmm11
  a02953:	62 e1 7c 28 10 7c 17 	vmovups ymm23,YMMWORD PTR [rdi+rdx*1+0xa0]
  a0295a:	05 
  a0295b:	62 a1 7c 48 28 ef    	vmovaps zmm21,zmm23
  a02961:	62 c2 5d 48 7f fb    	vpermt2ps zmm23,zmm4,zmm11
  a02967:	62 c2 7d 48 7f eb    	vpermt2ps zmm21,zmm0,zmm11
  a0296d:	62 e1 7c 28 10 5c 17 	vmovups ymm19,YMMWORD PTR [rdi+rdx*1+0xc0]
  a02974:	06 
  a02975:	62 21 7c 48 28 c3    	vmovaps zmm24,zmm19
  a0297b:	62 c2 5d 48 7f db    	vpermt2ps zmm19,zmm4,zmm11
  a02981:	62 42 7d 48 7f c3    	vpermt2ps zmm24,zmm0,zmm11
  a02987:	62 61 7c 28 10 74 17 	vmovups ymm30,YMMWORD PTR [rdi+rdx*1+0xe0]
  a0298e:	07 
  a0298f:	62 01 7c 48 28 ce    	vmovaps zmm25,zmm30
  a02995:	62 42 5d 48 7f f3    	vpermt2ps zmm30,zmm4,zmm11
  a0299b:	62 42 7d 48 7f cb    	vpermt2ps zmm25,zmm0,zmm11
  a029a1:	62 61 7c 28 10 64 17 	vmovups ymm28,YMMWORD PTR [rdi+rdx*1+0x100]
  a029a8:	08 
  a029a9:	62 01 7c 48 28 fc    	vmovaps zmm31,zmm28
  a029af:	62 42 5d 48 7f e3    	vpermt2ps zmm28,zmm4,zmm11
  a029b5:	62 42 7d 48 7f fb    	vpermt2ps zmm31,zmm0,zmm11
  a029bb:	62 61 7c 28 10 54 17 	vmovups ymm26,YMMWORD PTR [rdi+rdx*1+0x120]
  a029c2:	09 
  a029c3:	62 91 7c 48 28 d2    	vmovaps zmm2,zmm26
  a029c9:	62 42 5d 48 7f d3    	vpermt2ps zmm26,zmm4,zmm11
  a029cf:	62 d2 7d 48 7f d3    	vpermt2ps zmm2,zmm0,zmm11
  a029d5:	c5 7c 10 8c 17 40 01 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x140]
  a029dc:	00 00 
  a029de:	62 d1 7c 48 28 d9    	vmovaps zmm3,zmm9
  a029e4:	62 52 5d 48 7f cb    	vpermt2ps zmm9,zmm4,zmm11
  a029ea:	62 d2 7d 48 7f db    	vpermt2ps zmm3,zmm0,zmm11
  a029f0:	c5 7c 10 94 17 60 01 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x160]
  a029f7:	00 00 
  a029f9:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  a029ff:	62 52 5d 48 7f d3    	vpermt2ps zmm10,zmm4,zmm11
  a02a05:	62 d2 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm11
  a02a0b:	62 01 04 48 58 d8    	vaddps zmm27,zmm15,zmm24
  a02a11:	62 61 14 48 58 ea    	vaddps zmm29,zmm13,zmm2
  a02a17:	62 71 4c 40 58 c3    	vaddps zmm8,zmm22,zmm3
  a02a1d:	62 d1 34 40 58 fe    	vaddps zmm7,zmm25,zmm14
  a02a23:	62 b1 0c 40 58 e1    	vaddps zmm4,zmm30,zmm17
  a02a29:	62 a1 0c 40 5c c9    	vsubps zmm17,zmm30,zmm17
  a02a2f:	62 b1 04 40 58 f4    	vaddps zmm6,zmm31,zmm20
  a02a35:	62 e1 4c 40 5c f3    	vsubps zmm22,zmm22,zmm3
  a02a3b:	62 b1 2c 48 58 df    	vaddps zmm3,zmm10,zmm23
  a02a41:	62 21 2c 48 5c f7    	vsubps zmm30,zmm10,zmm23
  a02a47:	62 31 74 48 58 d5    	vaddps zmm10,zmm1,zmm21
  a02a4d:	62 21 04 40 5c fc    	vsubps zmm31,zmm31,zmm20
  a02a53:	62 91 7c 40 58 c2    	vaddps zmm0,zmm16,zmm26
  a02a59:	62 01 7c 40 5c d2    	vsubps zmm26,zmm16,zmm26
  a02a5f:	62 a1 54 48 58 e3    	vaddps zmm20,zmm5,zmm19
  a02a65:	62 01 04 48 5c c0    	vsubps zmm24,zmm15,zmm24
  a02a6b:	62 c1 6c 40 58 f9    	vaddps zmm23,zmm18,zmm9
  a02a71:	62 51 6c 40 5c c9    	vsubps zmm9,zmm18,zmm9
  a02a77:	62 81 0c 48 5c d1    	vsubps zmm18,zmm14,zmm25
  a02a7d:	62 11 24 40 58 f5    	vaddps zmm14,zmm27,zmm29
  a02a83:	62 41 1c 40 58 cc    	vaddps zmm25,zmm28,zmm12
  a02a89:	62 41 1c 40 5c e4    	vsubps zmm28,zmm28,zmm12
  a02a8f:	62 e1 54 40 5c e9    	vsubps zmm21,zmm21,zmm1
  a02a95:	62 71 3c 48 58 e7    	vaddps zmm12,zmm8,zmm7
  a02a9b:	62 e1 44 40 58 c4    	vaddps zmm16,zmm23,zmm4
  a02aa1:	62 b1 54 48 5c eb    	vsubps zmm5,zmm5,zmm19
  a02aa7:	62 d1 6c 48 5c d5    	vsubps zmm2,zmm2,zmm13
  a02aad:	62 51 4c 48 58 fa    	vaddps zmm15,zmm6,zmm10
  a02ab3:	62 f1 34 40 58 cb    	vaddps zmm1,zmm25,zmm3
  a02ab9:	62 f1 3c 48 5c ff    	vsubps zmm7,zmm8,zmm7
  a02abf:	62 31 4c 40 58 c1    	vaddps zmm8,zmm22,zmm17
  a02ac5:	62 d1 4c 48 5c f2    	vsubps zmm6,zmm6,zmm10
  a02acb:	62 11 04 40 58 d6    	vaddps zmm10,zmm31,zmm30
  a02ad1:	62 f1 44 40 5c e4    	vsubps zmm4,zmm23,zmm4
  a02ad7:	62 51 6c 40 58 e9    	vaddps zmm13,zmm18,zmm9
  a02add:	62 01 24 40 5c dd    	vsubps zmm27,zmm27,zmm29
  a02ae3:	62 81 54 40 58 dc    	vaddps zmm19,zmm21,zmm28
  a02ae9:	62 e1 34 40 5c fb    	vsubps zmm23,zmm25,zmm3
  a02aef:	62 21 14 48 5c cb    	vsubps zmm25,zmm13,zmm19
  a02af5:	62 a1 14 48 58 db    	vaddps zmm19,zmm13,zmm19
  a02afb:	62 b1 5c 48 5c df    	vsubps zmm3,zmm4,zmm23
  a02b01:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a02b08:	02 
  a02b09:	62 b1 5c 48 58 e7    	vaddps zmm4,zmm4,zmm23
  a02b0f:	62 c1 3c 48 58 fa    	vaddps zmm23,zmm8,zmm10
  a02b15:	62 51 3c 48 5c c2    	vsubps zmm8,zmm8,zmm10
  a02b1b:	62 71 5c 40 58 d0    	vaddps zmm10,zmm20,zmm0
  a02b21:	62 e1 5c 40 5c e0    	vsubps zmm20,zmm20,zmm0
  a02b27:	62 61 44 48 58 ee    	vaddps zmm29,zmm7,zmm6
  a02b2d:	62 f1 44 48 5c c6    	vsubps zmm0,zmm7,zmm6
  a02b33:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a02b3a:	01 
  a02b3b:	62 91 3c 40 58 f2    	vaddps zmm6,zmm24,zmm26
  a02b41:	62 91 3c 40 5c fa    	vsubps zmm7,zmm24,zmm26
  a02b47:	62 b1 4c 40 5c d9    	vsubps zmm3,zmm22,zmm17
  a02b4d:	62 61 7c 40 58 c1    	vaddps zmm24,zmm16,zmm1
  a02b53:	62 01 04 40 5c d6    	vsubps zmm26,zmm31,zmm30
  a02b59:	62 61 6c 48 58 f5    	vaddps zmm30,zmm2,zmm5
  a02b5f:	62 f1 54 48 5c d2    	vsubps zmm2,zmm5,zmm2
  a02b65:	62 41 1c 48 58 ff    	vaddps zmm31,zmm12,zmm15
  a02b6b:	62 31 34 48 5c ca    	vsubps zmm9,zmm9,zmm18
  a02b71:	62 81 2c 48 58 f0    	vaddps zmm22,zmm10,zmm24
  a02b77:	62 a1 1c 40 5c ed    	vsubps zmm21,zmm28,zmm21
  a02b7d:	62 11 0c 48 58 ef    	vaddps zmm13,zmm14,zmm31
  a02b83:	62 f2 7d 48 18 05 d3 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6728d3]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a02b8a:	28 67 ff 
  a02b8d:	62 42 7d 48 ac fe    	vfnmadd213ps zmm31,zmm0,zmm14
  a02b93:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a02b99:	62 72 45 40 ac f6    	vfnmadd213ps zmm14,zmm23,zmm6
  a02b9f:	62 f2 7d 48 18 2d 2b 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff67272b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a02ba6:	27 67 ff 
  a02ba9:	62 e1 34 40 59 d5    	vmulps zmm18,zmm25,zmm5
  a02baf:	62 f1 7c 40 5c c9    	vsubps zmm1,zmm16,zmm1
  a02bb5:	62 e1 7c 48 28 c0    	vmovaps zmm16,zmm0
  a02bbb:	62 42 7d 48 ac c2    	vfnmadd213ps zmm24,zmm0,zmm10
  a02bc1:	62 c1 6c 40 58 ce    	vaddps zmm17,zmm18,zmm14
  a02bc7:	62 82 65 40 ac c6    	vfnmadd213ps zmm16,zmm19,zmm30
  a02bcd:	62 71 3c 48 59 c5    	vmulps zmm8,zmm8,zmm5
  a02bd3:	62 51 1c 48 5c d7    	vsubps zmm10,zmm12,zmm15
  a02bd9:	62 51 7c 40 5c e0    	vsubps zmm12,zmm16,zmm8
  a02bdf:	62 21 0c 48 5c ca    	vsubps zmm25,zmm14,zmm18
  a02be5:	62 61 7c 48 28 e0    	vmovaps zmm28,zmm0
  a02beb:	62 02 15 40 ac e3    	vfnmadd213ps zmm28,zmm29,zmm27
  a02bf1:	62 51 7c 40 58 f0    	vaddps zmm14,zmm16,zmm8
  a02bf7:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a02bfd:	62 01 24 40 58 dd    	vaddps zmm27,zmm27,zmm29
  a02c03:	62 01 64 48 58 ea    	vaddps zmm29,zmm3,zmm26
  a02c09:	62 32 5d 48 ac c4    	vfnmadd213ps zmm8,zmm4,zmm20
  a02c0f:	62 e1 5c 40 58 c4    	vaddps zmm16,zmm20,zmm4
  a02c15:	62 81 44 48 58 d5    	vaddps zmm18,zmm7,zmm29
  a02c1b:	62 62 7d 48 ac ef    	vfnmadd213ps zmm29,zmm0,zmm7
  a02c21:	62 b1 34 48 58 e5    	vaddps zmm4,zmm9,zmm21
  a02c27:	62 b1 34 48 5c fd    	vsubps zmm7,zmm9,zmm21
  a02c2d:	62 71 6c 48 58 fc    	vaddps zmm15,zmm2,zmm4
  a02c33:	62 f2 7d 48 ac e2    	vfnmadd213ps zmm4,zmm0,zmm2
  a02c39:	62 f1 74 48 59 cd    	vmulps zmm1,zmm1,zmm5
  a02c3f:	62 91 64 48 5c d2    	vsubps zmm2,zmm3,zmm26
  a02c45:	62 71 04 40 58 c9    	vaddps zmm9,zmm31,zmm1
  a02c4b:	62 71 2c 48 59 d5    	vmulps zmm10,zmm10,zmm5
  a02c51:	62 f1 04 40 5c c9    	vsubps zmm1,zmm31,zmm1
  a02c57:	62 c1 3c 40 5c ea    	vsubps zmm21,zmm24,zmm10
  a02c5d:	62 11 2c 48 58 d0    	vaddps zmm10,zmm10,zmm24
  a02c63:	62 b1 4c 48 58 f7    	vaddps zmm6,zmm6,zmm23
  a02c69:	62 f1 54 48 59 5c 24 	vmulps zmm3,zmm5,ZMMWORD PTR [rsp+0x80]
  a02c70:	02 
  a02c71:	62 a1 0c 40 58 e3    	vaddps zmm20,zmm30,zmm19
  a02c77:	62 61 1c 40 5c c3    	vsubps zmm24,zmm28,zmm3
  a02c7d:	62 f1 54 48 59 44 24 	vmulps zmm0,zmm5,ZMMWORD PTR [rsp+0x40]
  a02c84:	01 
  a02c85:	62 f1 1c 40 58 db    	vaddps zmm3,zmm28,zmm3
  a02c8b:	62 c1 7c 48 58 d8    	vaddps zmm19,zmm0,zmm8
  a02c91:	62 f1 44 48 59 fd    	vmulps zmm7,zmm7,zmm5
  a02c97:	62 f1 3c 48 5c c0    	vsubps zmm0,zmm8,zmm0
  a02c9d:	62 11 44 48 58 c5    	vaddps zmm8,zmm7,zmm29
  a02ca3:	62 f1 6c 48 59 d5    	vmulps zmm2,zmm2,zmm5
  a02ca9:	62 f1 14 40 5c ff    	vsubps zmm7,zmm29,zmm7
  a02caf:	62 f1 5c 48 5c ea    	vsubps zmm5,zmm4,zmm2
  a02cb5:	62 f1 5c 48 58 d2    	vaddps zmm2,zmm4,zmm2
  a02cbb:	62 f1 7c 48 28 25 bb 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6c42bb]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a02cc2:	42 6c ff 
  a02cc5:	62 72 5d 48 7f e9    	vpermt2ps zmm13,zmm4,zmm1
  a02ccb:	62 e2 5d 48 7f ce    	vpermt2ps zmm17,zmm4,zmm6
  a02cd1:	62 62 5d 48 7f c3    	vpermt2ps zmm24,zmm4,zmm3
  a02cd7:	62 e2 5d 48 7f d7    	vpermt2ps zmm18,zmm4,zmm7
  a02cdd:	62 52 5d 48 7f cb    	vpermt2ps zmm9,zmm4,zmm11
  a02ce3:	62 f1 7c 48 28 0d 13 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6c4213]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a02cea:	42 6c ff 
  a02ced:	62 52 75 48 7f e9    	vpermt2ps zmm13,zmm1,zmm9
  a02cf3:	62 42 5d 48 7f cb    	vpermt2ps zmm25,zmm4,zmm11
  a02cf9:	62 82 75 48 7f c9    	vpermt2ps zmm17,zmm1,zmm25
  a02cff:	62 42 5d 48 7f db    	vpermt2ps zmm27,zmm4,zmm11
  a02d05:	62 02 75 48 7f c3    	vpermt2ps zmm24,zmm1,zmm27
  a02d0b:	62 52 5d 48 7f c3    	vpermt2ps zmm8,zmm4,zmm11
  a02d11:	62 c2 75 48 7f d0    	vpermt2ps zmm18,zmm1,zmm8
  a02d17:	62 c2 5d 48 7f f2    	vpermt2ps zmm22,zmm4,zmm10
  a02d1d:	62 32 5d 48 7f e4    	vpermt2ps zmm12,zmm4,zmm20
  a02d23:	62 81 95 48 14 f8    	vunpcklpd zmm23,zmm13,zmm24
  a02d29:	62 81 95 48 15 e0    	vunpckhpd zmm20,zmm13,zmm24
  a02d2f:	62 e2 5d 48 7f d8    	vpermt2ps zmm19,zmm4,zmm0
  a02d35:	62 31 f5 40 14 ea    	vunpcklpd zmm13,zmm17,zmm18
  a02d3b:	62 72 5d 48 7f fa    	vpermt2ps zmm15,zmm4,zmm2
  a02d41:	62 b1 f5 40 15 c2    	vunpckhpd zmm0,zmm17,zmm18
  a02d47:	62 c2 5d 48 7f eb    	vpermt2ps zmm21,zmm4,zmm11
  a02d4d:	62 52 5d 48 7f f3    	vpermt2ps zmm14,zmm4,zmm11
  a02d53:	62 c2 5d 48 7f c3    	vpermt2ps zmm16,zmm4,zmm11
  a02d59:	62 a1 7c 48 28 cf    	vmovaps zmm17,zmm23
  a02d5f:	62 d2 5d 48 7f eb    	vpermt2ps zmm5,zmm4,zmm11
  a02d65:	62 a2 75 48 7f f5    	vpermt2ps zmm22,zmm1,zmm21
  a02d6b:	62 52 75 48 7f e6    	vpermt2ps zmm12,zmm1,zmm14
  a02d71:	62 71 7c 48 28 15 c5 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6c40c5]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a02d78:	40 6c ff 
  a02d7b:	62 c2 2d 48 7f fd    	vpermt2ps zmm23,zmm10,zmm13
  a02d81:	62 a2 75 48 7f d8    	vpermt2ps zmm19,zmm1,zmm16
  a02d87:	62 72 75 48 7f fd    	vpermt2ps zmm15,zmm1,zmm5
  a02d8d:	62 b1 cd 40 14 cb    	vunpcklpd zmm1,zmm22,zmm19
  a02d93:	62 b1 7c 48 28 d4    	vmovaps zmm2,zmm20
  a02d99:	62 b1 cd 40 15 db    	vunpckhpd zmm3,zmm22,zmm19
  a02d9f:	62 d1 9d 48 14 e7    	vunpcklpd zmm4,zmm12,zmm15
  a02da5:	62 d1 9d 48 15 f7    	vunpckhpd zmm6,zmm12,zmm15
  a02dab:	62 e2 2d 48 7f e0    	vpermt2ps zmm20,zmm10,zmm0
  a02db1:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a02db7:	62 f2 2d 48 7f cc    	vpermt2ps zmm1,zmm10,zmm4
  a02dbd:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a02dc3:	62 71 7c 48 28 25 33 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6c4033]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a02dca:	40 6c ff 
  a02dcd:	62 f2 1d 48 7f d0    	vpermt2ps zmm2,zmm12,zmm0
  a02dd3:	62 f2 2d 48 7f de    	vpermt2ps zmm3,zmm10,zmm6
  a02dd9:	62 f1 7c 48 10 41 02 	vmovups zmm0,ZMMWORD PTR [rcx+0x80]
  a02de0:	62 71 7c 48 10 49 03 	vmovups zmm9,ZMMWORD PTR [rcx+0xc0]
  a02de7:	62 71 44 40 59 d0    	vmulps zmm10,zmm23,zmm0
  a02ded:	62 52 75 48 bc d1    	vfnmadd231ps zmm10,zmm1,zmm9
  a02df3:	62 f1 74 48 59 c0    	vmulps zmm0,zmm1,zmm0
  a02df9:	62 f1 7c 48 10 49 06 	vmovups zmm1,ZMMWORD PTR [rcx+0x180]
  a02e00:	62 b2 35 48 b8 c7    	vfmadd231ps zmm0,zmm9,zmm23
  a02e06:	62 71 7c 48 10 49 07 	vmovups zmm9,ZMMWORD PTR [rcx+0x1c0]
  a02e0d:	62 71 5c 40 59 d9    	vmulps zmm11,zmm20,zmm1
  a02e13:	62 f1 64 48 59 c9    	vmulps zmm1,zmm3,zmm1
  a02e19:	62 52 65 48 bc d9    	vfnmadd231ps zmm11,zmm3,zmm9
  a02e1f:	62 b2 35 48 b8 cc    	vfmadd231ps zmm1,zmm9,zmm20
  a02e25:	62 f1 7c 48 10 59 04 	vmovups zmm3,ZMMWORD PTR [rcx+0x100]
  a02e2c:	62 71 7c 48 10 49 05 	vmovups zmm9,ZMMWORD PTR [rcx+0x140]
  a02e33:	62 72 1d 48 7f c6    	vpermt2ps zmm8,zmm12,zmm6
  a02e39:	62 f1 6c 48 59 f3    	vmulps zmm6,zmm2,zmm3
  a02e3f:	62 d2 3d 48 bc f1    	vfnmadd231ps zmm6,zmm8,zmm9
  a02e45:	62 f1 3c 48 59 db    	vmulps zmm3,zmm8,zmm3
  a02e4b:	62 f2 35 48 b8 da    	vfmadd231ps zmm3,zmm9,zmm2
  a02e51:	62 c2 1d 48 7f cd    	vpermt2ps zmm17,zmm12,zmm13
  a02e57:	62 f2 1d 48 7f fc    	vpermt2ps zmm7,zmm12,zmm4
  a02e5d:	62 f1 74 40 58 d6    	vaddps zmm2,zmm17,zmm6
  a02e63:	62 f1 74 40 5c e6    	vsubps zmm4,zmm17,zmm6
  a02e69:	62 f1 7c 48 58 f1    	vaddps zmm6,zmm0,zmm1
  a02e6f:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a02e75:	62 f1 64 48 58 cf    	vaddps zmm1,zmm3,zmm7
  a02e7b:	62 f1 44 48 5c db    	vsubps zmm3,zmm7,zmm3
  a02e81:	62 d1 2c 48 58 fb    	vaddps zmm7,zmm10,zmm11
  a02e87:	62 51 24 48 5c c2    	vsubps zmm8,zmm11,zmm10
  a02e8d:	62 71 5c 48 58 c8    	vaddps zmm9,zmm4,zmm0
  a02e93:	62 f1 5c 48 5c c0    	vsubps zmm0,zmm4,zmm0
  a02e99:	62 d1 64 48 58 e0    	vaddps zmm4,zmm3,zmm8
  a02e9f:	62 d1 64 48 5c d8    	vsubps zmm3,zmm3,zmm8
  a02ea5:	62 71 6c 48 5c c7    	vsubps zmm8,zmm2,zmm7
  a02eab:	62 f1 6c 48 58 d7    	vaddps zmm2,zmm2,zmm7
  a02eb1:	62 f1 74 48 5c fe    	vsubps zmm7,zmm1,zmm6
  a02eb7:	62 f1 74 48 58 ce    	vaddps zmm1,zmm1,zmm6
  a02ebd:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a02ec3:	c5 fc 28 2d 75 3d 67 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff673d75]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a02eca:	ff 
  a02ecb:	62 f2 55 48 7f f1    	vpermt2ps zmm6,zmm5,zmm1
  a02ed1:	62 71 7c 48 28 15 e5 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff68b1e5]        # 8e0c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b570>
  a02ed8:	b1 68 ff 
  a02edb:	62 f2 2d 48 7f d1    	vpermt2ps zmm2,zmm10,zmm1
  a02ee1:	62 f1 7c 48 11 14 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm2
  a02ee8:	c5 fc 11 74 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm6
  a02eee:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a02ef4:	62 f2 55 48 7f cc    	vpermt2ps zmm1,zmm5,zmm4
  a02efa:	62 72 2d 48 7f cc    	vpermt2ps zmm9,zmm10,zmm4
  a02f00:	62 71 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x60],zmm9
  a02f07:	60 00 00 00 
  a02f0b:	c5 fc 11 8c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm1
  a02f12:	00 00 
  a02f14:	62 d1 7c 48 28 c8    	vmovaps zmm1,zmm8
  a02f1a:	62 f2 55 48 7f cf    	vpermt2ps zmm1,zmm5,zmm7
  a02f20:	62 72 2d 48 7f c7    	vpermt2ps zmm8,zmm10,zmm7
  a02f26:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm8
  a02f2d:	03 
  a02f2e:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a02f34:	62 f2 55 48 7f d3    	vpermt2ps zmm2,zmm5,zmm3
  a02f3a:	62 f2 2d 48 7f c3    	vpermt2ps zmm0,zmm10,zmm3
  a02f40:	c5 fc 11 8c 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm1
  a02f47:	00 00 
  a02f49:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x120],zmm0
  a02f50:	20 01 00 00 
  a02f54:	c5 fc 11 94 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm2
  a02f5b:	00 00 
  a02f5d:	48 81 c2 80 01 00 00 	add    rdx,0x180
  a02f64:	48 39 d0             	cmp    rax,rdx
  a02f67:	0f 85 43 f9 ff ff    	jne    a028b0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a02f6d:	48 89 ec             	mov    rsp,rbp
  a02f70:	5d                   	pop    rbp
  a02f71:	c5 f8 77             	vzeroupper
  a02f74:	c3                   	ret
