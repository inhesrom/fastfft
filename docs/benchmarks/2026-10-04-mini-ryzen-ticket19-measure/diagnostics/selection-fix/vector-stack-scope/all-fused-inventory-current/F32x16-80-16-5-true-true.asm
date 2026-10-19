
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a3cf80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a3cf80:	55                   	push   rbp
  a3cf81:	48 89 e5             	mov    rbp,rsp
  a3cf84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a3cf88:	48 81 ec 40 03 00 00 	sub    rsp,0x340
  a3cf8f:	48 c1 e2 07          	shl    rdx,0x7
  a3cf93:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a3cf97:	31 d2                	xor    edx,edx
  a3cf99:	4c 8d 84 24 c0 02 00 	lea    r8,[rsp+0x2c0]
  a3cfa0:	00 
  a3cfa1:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a3cfa6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a3cfad:	00 00 00 
  a3cfb0:	c6 84 24 c0 02 00 00 	mov    BYTE PTR [rsp+0x2c0],0x0
  a3cfb7:	00 
  a3cfb8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a3cfbd:	c5 fb 10 44 17 20    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x20]
  a3cfc3:	c5 fc 10 0c 17       	vmovups ymm1,YMMWORD PTR [rdi+rdx*1]
  a3cfc8:	c5 fc 10 54 17 28    	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x28]
  a3cfce:	c5 fc 10 5c 17 50    	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x50]
  a3cfd4:	c5 fc 10 6c 17 78    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x78]
  a3cfda:	62 e3 f5 48 1a f8 01 	vinsertf64x4 zmm23,zmm1,ymm0,0x1
  a3cfe1:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm23
  a3cfe8:	05 
  a3cfe9:	c5 fb 10 44 17 48    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x48]
  a3cfef:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a3cff3:	62 e1 7c 48 28 1d 43 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff654843]        # 91840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ecf0>
  a3cffa:	48 65 ff 
  a3cffd:	62 e2 65 40 7f fc    	vpermt2ps zmm23,zmm19,zmm4
  a3d003:	62 e3 ed 48 1a e8 01 	vinsertf64x4 zmm21,zmm2,ymm0,0x1
  a3d00a:	62 b1 7c 48 28 f5    	vmovaps zmm6,zmm21
  a3d010:	c5 fb 10 44 17 70    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x70]
  a3d016:	62 e2 65 40 7f ec    	vpermt2ps zmm21,zmm19,zmm4
  a3d01c:	62 63 e5 48 1a c8 01 	vinsertf64x4 zmm25,zmm3,ymm0,0x1
  a3d023:	62 01 7c 48 28 c1    	vmovaps zmm24,zmm25
  a3d029:	c5 fb 10 84 17 98 00 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x98]
  a3d030:	00 00 
  a3d032:	62 62 65 40 7f cc    	vpermt2ps zmm25,zmm19,zmm4
  a3d038:	62 e3 d5 48 1a f0 01 	vinsertf64x4 zmm22,zmm5,ymm0,0x1
  a3d03f:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm22
  a3d046:	03 
  a3d047:	c5 fb 10 84 17 c0 00 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0xc0]
  a3d04e:	00 00 
  a3d050:	62 e2 65 40 7f f4    	vpermt2ps zmm22,zmm19,zmm4
  a3d056:	c5 fc 10 8c 17 a0 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xa0]
  a3d05d:	00 00 
  a3d05f:	62 63 f5 48 1a f8 01 	vinsertf64x4 zmm31,zmm1,ymm0,0x1
  a3d066:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm31
  a3d06d:	04 
  a3d06e:	c5 fb 10 84 17 e8 00 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0xe8]
  a3d075:	00 00 
  a3d077:	c5 fc 10 8c 17 c8 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xc8]
  a3d07e:	00 00 
  a3d080:	62 63 f5 48 1a e0 01 	vinsertf64x4 zmm28,zmm1,ymm0,0x1
  a3d087:	62 01 7c 48 28 ec    	vmovaps zmm29,zmm28
  a3d08d:	62 62 65 40 7f e4    	vpermt2ps zmm28,zmm19,zmm4
  a3d093:	c5 fb 10 84 17 10 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x110]
  a3d09a:	00 00 
  a3d09c:	c5 fc 10 8c 17 f0 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xf0]
  a3d0a3:	00 00 
  a3d0a5:	62 73 f5 48 1a e8 01 	vinsertf64x4 zmm13,zmm1,ymm0,0x1
  a3d0ac:	62 c1 7c 48 28 d5    	vmovaps zmm18,zmm13
  a3d0b2:	c5 fb 10 84 17 38 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x138]
  a3d0b9:	00 00 
  a3d0bb:	c5 fc 10 8c 17 18 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x118]
  a3d0c2:	00 00 
  a3d0c4:	62 63 f5 48 1a d0 01 	vinsertf64x4 zmm26,zmm1,ymm0,0x1
  a3d0cb:	62 72 65 40 7f ec    	vpermt2ps zmm13,zmm19,zmm4
  a3d0d1:	c5 fb 10 84 17 60 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x160]
  a3d0d8:	00 00 
  a3d0da:	c5 fc 10 8c 17 40 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x140]
  a3d0e1:	00 00 
  a3d0e3:	62 63 f5 48 1a d8 01 	vinsertf64x4 zmm27,zmm1,ymm0,0x1
  a3d0ea:	62 01 7c 48 28 f2    	vmovaps zmm30,zmm26
  a3d0f0:	62 81 7c 48 28 e3    	vmovaps zmm20,zmm27
  a3d0f6:	c5 fb 10 84 17 88 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x188]
  a3d0fd:	00 00 
  a3d0ff:	c5 fc 10 94 17 68 01 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x168]
  a3d106:	00 00 
  a3d108:	62 62 65 40 7f dc    	vpermt2ps zmm27,zmm19,zmm4
  a3d10e:	62 73 ed 48 1a f8 01 	vinsertf64x4 zmm15,zmm2,ymm0,0x1
  a3d115:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a3d11b:	62 72 65 40 7f fc    	vpermt2ps zmm15,zmm19,zmm4
  a3d121:	62 f1 7c 48 28 0d d5 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6546d5]        # 91800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ecb0>
  a3d128:	46 65 ff 
  a3d12b:	62 f2 75 48 7f f4    	vpermt2ps zmm6,zmm1,zmm4
  a3d131:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm6
  a3d138:	02 
  a3d139:	c5 fb 10 84 17 b0 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x1b0]
  a3d140:	00 00 
  a3d142:	c5 fc 10 94 17 90 01 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x190]
  a3d149:	00 00 
  a3d14b:	62 73 ed 48 1a c0 01 	vinsertf64x4 zmm8,zmm2,ymm0,0x1
  a3d152:	62 62 75 48 7f c4    	vpermt2ps zmm24,zmm1,zmm4
  a3d158:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a3d15e:	62 72 65 40 7f c4    	vpermt2ps zmm8,zmm19,zmm4
  a3d164:	c5 fb 10 84 17 d8 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x1d8]
  a3d16b:	00 00 
  a3d16d:	62 62 75 48 7f fc    	vpermt2ps zmm31,zmm1,zmm4
  a3d173:	c5 fc 10 94 17 b8 01 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x1b8]
  a3d17a:	00 00 
  a3d17c:	62 73 ed 48 1a e0 01 	vinsertf64x4 zmm12,zmm2,ymm0,0x1
  a3d183:	62 c1 7c 48 28 c4    	vmovaps zmm16,zmm12
  a3d189:	62 62 75 48 7f ec    	vpermt2ps zmm29,zmm1,zmm4
  a3d18f:	62 72 65 40 7f e4    	vpermt2ps zmm12,zmm19,zmm4
  a3d195:	c5 fb 10 84 17 00 02 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x200]
  a3d19c:	00 00 
  a3d19e:	c5 fc 10 94 17 e0 01 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x1e0]
  a3d1a5:	00 00 
  a3d1a7:	62 e2 75 48 7f d4    	vpermt2ps zmm18,zmm1,zmm4
  a3d1ad:	62 73 ed 48 1a f0 01 	vinsertf64x4 zmm14,zmm2,ymm0,0x1
  a3d1b4:	62 d1 7c 48 28 fe    	vmovaps zmm7,zmm14
  a3d1ba:	c5 fb 10 84 17 28 02 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x228]
  a3d1c1:	00 00 
  a3d1c3:	62 e2 75 48 7f cc    	vpermt2ps zmm17,zmm1,zmm4
  a3d1c9:	c5 fc 10 94 17 08 02 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x208]
  a3d1d0:	00 00 
  a3d1d2:	62 f3 ed 48 1a f0 01 	vinsertf64x4 zmm6,zmm2,ymm0,0x1
  a3d1d9:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a3d1df:	62 72 75 48 7f dc    	vpermt2ps zmm11,zmm1,zmm4
  a3d1e5:	62 f2 65 40 7f f4    	vpermt2ps zmm6,zmm19,zmm4
  a3d1eb:	c5 fb 10 94 17 50 02 	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0x250]
  a3d1f2:	00 00 
  a3d1f4:	c5 fc 10 9c 17 30 02 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x230]
  a3d1fb:	00 00 
  a3d1fd:	62 f2 75 48 7f fc    	vpermt2ps zmm7,zmm1,zmm4
  a3d203:	62 f3 e5 48 1a ea 01 	vinsertf64x4 zmm5,zmm3,ymm2,0x1
  a3d20a:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a3d210:	62 f2 65 40 7f ec    	vpermt2ps zmm5,zmm19,zmm4
  a3d216:	62 72 75 48 7f cc    	vpermt2ps zmm9,zmm1,zmm4
  a3d21c:	c5 fb 10 94 17 78 02 	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0x278]
  a3d223:	00 00 
  a3d225:	c5 fc 10 9c 17 58 02 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x258]
  a3d22c:	00 00 
  a3d22e:	62 73 e5 48 1a d2 01 	vinsertf64x4 zmm10,zmm3,ymm2,0x1
  a3d235:	62 f2 75 48 7f c4    	vpermt2ps zmm0,zmm1,zmm4
  a3d23b:	62 91 44 40 58 d3    	vaddps zmm2,zmm23,zmm27
  a3d241:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a3d248:	08 
  a3d249:	62 91 44 40 5c d3    	vsubps zmm2,zmm23,zmm27
  a3d24f:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a3d256:	01 
  a3d257:	62 f1 04 40 58 d7    	vaddps zmm2,zmm31,zmm7
  a3d25d:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm2
  a3d264:	06 
  a3d265:	62 f1 04 40 5c d7    	vsubps zmm2,zmm31,zmm7
  a3d26b:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm2
  a3d272:	09 
  a3d273:	62 d1 34 40 58 d0    	vaddps zmm2,zmm25,zmm8
  a3d279:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm2
  a3d280:	07 
  a3d281:	62 51 34 40 5c c0    	vsubps zmm8,zmm25,zmm8
  a3d287:	62 41 3c 40 58 cb    	vaddps zmm25,zmm24,zmm11
  a3d28d:	62 d1 3c 40 5c fb    	vsubps zmm7,zmm24,zmm11
  a3d293:	62 e1 14 48 58 fd    	vaddps zmm23,zmm13,zmm5
  a3d299:	62 f1 14 48 5c dd    	vsubps zmm3,zmm13,zmm5
  a3d29f:	62 61 6c 40 58 c0    	vaddps zmm24,zmm18,zmm0
  a3d2a5:	62 e1 6c 40 5c d0    	vsubps zmm18,zmm18,zmm0
  a3d2ab:	62 51 54 40 58 ef    	vaddps zmm13,zmm21,zmm15
  a3d2b1:	62 d1 54 40 5c c7    	vsubps zmm0,zmm21,zmm15
  a3d2b7:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a3d2be:	0a 
  a3d2bf:	62 51 14 40 58 d9    	vaddps zmm11,zmm29,zmm9
  a3d2c5:	62 41 14 40 5c d9    	vsubps zmm27,zmm29,zmm9
  a3d2cb:	62 f1 1c 40 58 ee    	vaddps zmm5,zmm28,zmm6
  a3d2d1:	62 01 4c 48 5c fc    	vsubps zmm31,zmm6,zmm28
  a3d2d7:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a3d2de:	02 
  a3d2df:	62 b1 7c 48 58 f1    	vaddps zmm6,zmm0,zmm17
  a3d2e5:	62 31 7c 48 5c f9    	vsubps zmm15,zmm0,zmm17
  a3d2eb:	62 41 4c 40 58 ec    	vaddps zmm29,zmm22,zmm12
  a3d2f1:	62 c1 4c 40 5c f4    	vsubps zmm22,zmm22,zmm12
  a3d2f7:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a3d2fd:	62 62 75 48 7f f4    	vpermt2ps zmm30,zmm1,zmm4
  a3d303:	62 72 75 48 7f e4    	vpermt2ps zmm12,zmm1,zmm4
  a3d309:	62 41 0c 40 58 e4    	vaddps zmm28,zmm30,zmm12
  a3d30f:	62 c1 0c 40 5c ec    	vsubps zmm21,zmm30,zmm12
  a3d315:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a3d31c:	03 
  a3d31d:	62 f2 75 48 7f c4    	vpermt2ps zmm0,zmm1,zmm4
  a3d323:	62 e2 75 48 7f c4    	vpermt2ps zmm16,zmm1,zmm4
  a3d329:	62 b1 7c 48 58 d0    	vaddps zmm2,zmm0,zmm16
  a3d32f:	62 a1 7c 48 5c c0    	vsubps zmm16,zmm0,zmm16
  a3d335:	62 62 65 40 7f d4    	vpermt2ps zmm26,zmm19,zmm4
  a3d33b:	62 72 65 40 7f d4    	vpermt2ps zmm10,zmm19,zmm4
  a3d341:	62 d1 2c 40 58 c2    	vaddps zmm0,zmm26,zmm10
  a3d347:	62 11 2c 48 5c ca    	vsubps zmm9,zmm10,zmm26
  a3d34d:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x140]
  a3d354:	05 
  a3d355:	62 72 75 48 7f d4    	vpermt2ps zmm10,zmm1,zmm4
  a3d35b:	62 e2 75 48 7f e4    	vpermt2ps zmm20,zmm1,zmm4
  a3d361:	62 21 2c 48 58 d4    	vaddps zmm26,zmm10,zmm20
  a3d367:	62 a1 2c 48 5c e4    	vsubps zmm20,zmm10,zmm20
  a3d36d:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a3d374:	04 
  a3d375:	62 f2 65 40 7f cc    	vpermt2ps zmm1,zmm19,zmm4
  a3d37b:	62 72 65 40 7f f4    	vpermt2ps zmm14,zmm19,zmm4
  a3d381:	62 c1 74 48 58 ce    	vaddps zmm17,zmm1,zmm14
  a3d387:	62 71 0c 48 5c d1    	vsubps zmm10,zmm14,zmm1
  a3d38d:	62 f1 3c 48 58 cf    	vaddps zmm1,zmm8,zmm7
  a3d393:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a3d39a:	02 
  a3d39b:	62 c1 44 48 5c d8    	vsubps zmm19,zmm7,zmm8
  a3d3a1:	62 61 6c 40 5c f3    	vsubps zmm30,zmm18,zmm3
  a3d3a7:	62 b1 64 48 58 da    	vaddps zmm3,zmm3,zmm18
  a3d3ad:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x200]
  a3d3b4:	08 
  a3d3b5:	62 31 74 48 58 e1    	vaddps zmm12,zmm1,zmm17
  a3d3bb:	62 b1 74 48 5c c9    	vsubps zmm1,zmm1,zmm17
  a3d3c1:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a3d3c8:	05 
  a3d3c9:	62 81 34 40 58 d0    	vaddps zmm18,zmm25,zmm24
  a3d3cf:	62 01 34 40 5c c0    	vsubps zmm24,zmm25,zmm24
  a3d3d5:	62 e1 14 48 58 cd    	vaddps zmm17,zmm13,zmm5
  a3d3db:	62 61 14 48 5c cd    	vsubps zmm25,zmm13,zmm5
  a3d3e1:	62 51 4c 48 58 c3    	vaddps zmm8,zmm6,zmm11
  a3d3e7:	62 d1 4c 48 5c eb    	vsubps zmm5,zmm6,zmm11
  a3d3ed:	62 91 6c 48 58 e4    	vaddps zmm4,zmm2,zmm28
  a3d3f3:	62 01 6c 48 5c e4    	vsubps zmm28,zmm2,zmm28
  a3d3f9:	62 f1 14 40 58 f0    	vaddps zmm6,zmm29,zmm0
  a3d3ff:	62 f1 14 40 5c c0    	vsubps zmm0,zmm29,zmm0
  a3d405:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a3d40c:	06 
  a3d40d:	62 61 2c 40 58 e9    	vaddps zmm29,zmm26,zmm1
  a3d413:	62 f1 2c 40 5c f9    	vsubps zmm7,zmm26,zmm1
  a3d419:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a3d420:	07 
  a3d421:	62 21 74 48 58 d7    	vaddps zmm26,zmm1,zmm23
  a3d427:	62 71 44 40 5c f1    	vsubps zmm14,zmm23,zmm1
  a3d42d:	62 f1 34 40 58 cd    	vaddps zmm1,zmm25,zmm5
  a3d433:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a3d43a:	04 
  a3d43b:	62 91 54 48 5c c9    	vsubps zmm1,zmm5,zmm25
  a3d441:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a3d448:	08 
  a3d449:	62 f1 1c 40 5c c8    	vsubps zmm1,zmm28,zmm0
  a3d44f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a3d456:	03 
  a3d457:	62 01 7c 48 58 cc    	vaddps zmm25,zmm0,zmm28
  a3d45d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a3d464:	01 
  a3d465:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x240]
  a3d46c:	09 
  a3d46d:	62 f1 7c 48 58 e9    	vaddps zmm5,zmm0,zmm1
  a3d473:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a3d479:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a3d480:	01 
  a3d481:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a3d488:	0a 
  a3d489:	62 01 7c 48 58 e3    	vaddps zmm28,zmm0,zmm27
  a3d48f:	62 11 7c 48 5c eb    	vsubps zmm13,zmm0,zmm27
  a3d495:	62 41 04 40 58 df    	vaddps zmm27,zmm31,zmm15
  a3d49b:	62 e2 7d 48 18 3d bf 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff6381bf]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a3d4a2:	81 63 ff 
  a3d4a5:	62 b1 24 40 59 d7    	vmulps zmm2,zmm27,zmm23
  a3d4ab:	62 f2 7d 48 18 05 4b 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff63824b]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a3d4b2:	82 63 ff 
  a3d4b5:	62 f2 1d 40 b8 d0    	vfmadd231ps zmm2,zmm28,zmm0
  a3d4bb:	62 61 24 40 59 d8    	vmulps zmm27,zmm27,zmm0
  a3d4c1:	62 02 45 40 bc dc    	vfnmadd231ps zmm27,zmm23,zmm28
  a3d4c7:	62 11 04 48 5c ff    	vsubps zmm15,zmm15,zmm31
  a3d4cd:	62 21 4c 40 58 e5    	vaddps zmm28,zmm22,zmm21
  a3d4d3:	62 31 4c 40 5c dd    	vsubps zmm11,zmm22,zmm21
  a3d4d9:	62 a1 34 48 58 e8    	vaddps zmm21,zmm9,zmm16
  a3d4df:	62 61 54 40 59 f8    	vmulps zmm31,zmm21,zmm0
  a3d4e5:	62 22 1d 40 b8 ff    	vfmadd231ps zmm31,zmm28,zmm23
  a3d4eb:	62 a1 54 40 59 ef    	vmulps zmm21,zmm21,zmm23
  a3d4f1:	62 82 7d 48 bc ec    	vfnmadd231ps zmm21,zmm0,zmm28
  a3d4f7:	62 f2 7d 48 18 0d 9b 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff637e9b]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a3d4fe:	7e 63 ff 
  a3d501:	62 e1 64 40 59 f1    	vmulps zmm22,zmm19,zmm1
  a3d507:	62 f1 64 48 59 d9    	vmulps zmm3,zmm3,zmm1
  a3d50d:	62 61 4c 40 5c e3    	vsubps zmm28,zmm22,zmm3
  a3d513:	62 f1 4c 40 58 db    	vaddps zmm3,zmm22,zmm3
  a3d519:	62 c1 7c 40 5c c1    	vsubps zmm16,zmm16,zmm9
  a3d51f:	62 a1 2c 48 58 dc    	vaddps zmm19,zmm10,zmm20
  a3d525:	62 51 5c 40 5c ca    	vsubps zmm9,zmm20,zmm10
  a3d52b:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm9
  a3d532:	07 
  a3d533:	62 e1 74 48 59 64 24 	vmulps zmm20,zmm1,ZMMWORD PTR [rsp+0x80]
  a3d53a:	02 
  a3d53b:	62 e1 0c 40 59 f1    	vmulps zmm22,zmm30,zmm1
  a3d541:	62 21 5c 40 58 f6    	vaddps zmm30,zmm20,zmm22
  a3d547:	62 a1 4c 40 5c e4    	vsubps zmm20,zmm22,zmm20
  a3d54d:	62 e1 04 48 59 f0    	vmulps zmm22,zmm15,zmm0
  a3d553:	62 a2 15 48 b8 f7    	vfmadd231ps zmm22,zmm13,zmm23
  a3d559:	62 31 04 48 59 ff    	vmulps zmm15,zmm15,zmm23
  a3d55f:	62 52 7d 48 bc fd    	vfnmadd231ps zmm15,zmm0,zmm13
  a3d565:	62 31 7c 40 59 ef    	vmulps zmm13,zmm16,zmm23
  a3d56b:	62 72 25 48 b8 e8    	vfmadd231ps zmm13,zmm11,zmm0
  a3d571:	62 31 24 48 59 df    	vmulps zmm11,zmm11,zmm23
  a3d577:	62 32 7d 48 bc d8    	vfnmadd231ps zmm11,zmm0,zmm16
  a3d57d:	62 81 1c 48 58 c2    	vaddps zmm16,zmm12,zmm26
  a3d583:	62 91 1c 48 5c c2    	vsubps zmm0,zmm12,zmm26
  a3d589:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a3d590:	02 
  a3d591:	62 71 3c 48 58 d4    	vaddps zmm10,zmm8,zmm4
  a3d597:	62 f1 3c 48 5c c4    	vsubps zmm0,zmm8,zmm4
  a3d59d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a3d5a4:	09 
  a3d5a5:	62 31 14 40 58 ca    	vaddps zmm9,zmm29,zmm18
  a3d5ab:	62 b1 14 40 5c c2    	vsubps zmm0,zmm29,zmm18
  a3d5b1:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a3d5b8:	06 
  a3d5b9:	62 71 74 40 58 e6    	vaddps zmm12,zmm17,zmm6
  a3d5bf:	62 21 4c 48 5c e9    	vsubps zmm29,zmm6,zmm17
  a3d5c5:	62 81 54 48 58 ce    	vaddps zmm17,zmm5,zmm30
  a3d5cb:	62 01 54 48 5c f6    	vsubps zmm30,zmm5,zmm30
  a3d5d1:	62 b1 24 40 58 ed    	vaddps zmm5,zmm27,zmm21
  a3d5d7:	62 21 24 40 5c d5    	vsubps zmm26,zmm27,zmm21
  a3d5dd:	62 01 64 40 58 dc    	vaddps zmm27,zmm19,zmm28
  a3d5e3:	62 01 64 40 5c e4    	vsubps zmm28,zmm19,zmm28
  a3d5e9:	62 81 6c 48 58 df    	vaddps zmm19,zmm2,zmm31
  a3d5ef:	62 61 04 40 5c fa    	vsubps zmm31,zmm31,zmm2
  a3d5f5:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a3d5fc:	05 
  a3d5fd:	62 91 7c 48 58 e0    	vaddps zmm4,zmm0,zmm24
  a3d603:	62 81 7c 48 5c e8    	vsubps zmm21,zmm0,zmm24
  a3d609:	62 e1 74 48 59 54 24 	vmulps zmm18,zmm1,ZMMWORD PTR [rsp+0x200]
  a3d610:	08 
  a3d611:	62 71 34 40 59 c1    	vmulps zmm8,zmm25,zmm1
  a3d617:	62 41 6c 40 5c c0    	vsubps zmm24,zmm18,zmm8
  a3d61d:	62 41 6c 40 58 c8    	vaddps zmm25,zmm18,zmm8
  a3d623:	62 71 0c 48 58 c7    	vaddps zmm8,zmm14,zmm7
  a3d629:	62 d1 44 48 5c fe    	vsubps zmm7,zmm7,zmm14
  a3d62f:	62 71 74 48 59 74 24 	vmulps zmm14,zmm1,ZMMWORD PTR [rsp+0x100]
  a3d636:	04 
  a3d637:	62 e1 74 48 59 54 24 	vmulps zmm18,zmm1,ZMMWORD PTR [rsp+0xc0]
  a3d63e:	03 
  a3d63f:	62 b1 0c 48 58 d2    	vaddps zmm2,zmm14,zmm18
  a3d645:	62 51 6c 40 5c f6    	vsubps zmm14,zmm18,zmm14
  a3d64b:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a3d652:	01 
  a3d653:	62 e1 7c 48 58 d3    	vaddps zmm18,zmm0,zmm3
  a3d659:	62 e1 7c 48 5c fb    	vsubps zmm23,zmm0,zmm3
  a3d65f:	62 d1 04 48 58 db    	vaddps zmm3,zmm15,zmm11
  a3d665:	62 d1 04 48 5c f3    	vsubps zmm6,zmm15,zmm11
  a3d66b:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a3d672:	07 
  a3d673:	62 b1 7c 48 58 cc    	vaddps zmm1,zmm0,zmm20
  a3d679:	62 a1 7c 48 5c e4    	vsubps zmm20,zmm0,zmm20
  a3d67f:	62 51 4c 40 5c fd    	vsubps zmm15,zmm22,zmm13
  a3d685:	62 51 4c 40 58 ed    	vaddps zmm13,zmm22,zmm13
  a3d68b:	62 d1 7c 40 58 c4    	vaddps zmm0,zmm16,zmm12
  a3d691:	62 c1 7c 40 5c f4    	vsubps zmm22,zmm16,zmm12
  a3d697:	62 51 34 48 58 e2    	vaddps zmm12,zmm9,zmm10
  a3d69d:	62 51 34 48 5c ca    	vsubps zmm9,zmm9,zmm10
  a3d6a3:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm9
  a3d6aa:	03 
  a3d6ab:	62 31 74 40 58 cb    	vaddps zmm9,zmm17,zmm19
  a3d6b1:	62 31 74 40 5c d3    	vsubps zmm10,zmm17,zmm19
  a3d6b7:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm10
  a3d6be:	01 
  a3d6bf:	62 71 24 40 58 dd    	vaddps zmm11,zmm27,zmm5
  a3d6c5:	62 f1 24 40 5c ed    	vsubps zmm5,zmm27,zmm5
  a3d6cb:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm5
  a3d6d2:	04 
  a3d6d3:	62 f1 5c 48 58 ea    	vaddps zmm5,zmm4,zmm2
  a3d6d9:	62 71 5c 48 5c d2    	vsubps zmm10,zmm4,zmm2
  a3d6df:	62 81 3c 48 58 c0    	vaddps zmm16,zmm8,zmm24
  a3d6e5:	62 91 3c 48 5c d0    	vsubps zmm2,zmm8,zmm24
  a3d6eb:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a3d6f2:	05 
  a3d6f3:	62 c1 6c 40 58 cf    	vaddps zmm17,zmm18,zmm15
  a3d6f9:	62 c1 6c 40 5c df    	vsubps zmm19,zmm18,zmm15
  a3d6ff:	62 71 74 48 58 fb    	vaddps zmm15,zmm1,zmm3
  a3d705:	62 61 74 48 5c db    	vsubps zmm27,zmm1,zmm3
  a3d70b:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x80]
  a3d712:	02 
  a3d713:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x240]
  a3d71a:	09 
  a3d71b:	62 f1 6c 48 58 cb    	vaddps zmm1,zmm2,zmm3
  a3d721:	62 f1 6c 48 5c e3    	vsubps zmm4,zmm2,zmm3
  a3d727:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x180]
  a3d72e:	06 
  a3d72f:	62 f1 14 40 58 da    	vaddps zmm3,zmm29,zmm2
  a3d735:	62 01 6c 48 5c c5    	vsubps zmm24,zmm2,zmm29
  a3d73b:	62 01 0c 40 58 ea    	vaddps zmm29,zmm30,zmm26
  a3d741:	62 01 0c 40 5c f2    	vsubps zmm30,zmm30,zmm26
  a3d747:	62 11 1c 40 58 c7    	vaddps zmm8,zmm28,zmm31
  a3d74d:	62 01 1c 40 5c d7    	vsubps zmm26,zmm28,zmm31
  a3d753:	62 01 54 40 58 e1    	vaddps zmm28,zmm21,zmm25
  a3d759:	62 01 54 40 5c c9    	vsubps zmm25,zmm21,zmm25
  a3d75f:	62 c1 44 48 58 d6    	vaddps zmm18,zmm7,zmm14
  a3d765:	62 c1 44 48 5c ee    	vsubps zmm21,zmm7,zmm14
  a3d76b:	62 61 44 40 58 fe    	vaddps zmm31,zmm23,zmm6
  a3d771:	62 f1 44 40 5c f6    	vsubps zmm6,zmm23,zmm6
  a3d777:	62 e1 7c 48 28 3d ff 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6897ff]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3d77e:	97 68 ff 
  a3d781:	62 b2 45 40 7f c6    	vpermt2ps zmm0,zmm23,zmm22
  a3d787:	62 d1 5c 40 5c d5    	vsubps zmm2,zmm20,zmm13
  a3d78d:	62 d1 5c 40 58 fd    	vaddps zmm7,zmm20,zmm13
  a3d793:	62 72 45 40 7f 4c 24 	vpermt2ps zmm9,zmm23,ZMMWORD PTR [rsp+0x40]
  a3d79a:	01 
  a3d79b:	62 d2 45 40 7f ea    	vpermt2ps zmm5,zmm23,zmm10
  a3d7a1:	62 f2 45 40 7f cc    	vpermt2ps zmm1,zmm23,zmm4
  a3d7a7:	62 a2 45 40 7f cb    	vpermt2ps zmm17,zmm23,zmm19
  a3d7ad:	62 02 45 40 7f ee    	vpermt2ps zmm29,zmm23,zmm30
  a3d7b3:	62 02 45 40 7f e1    	vpermt2ps zmm28,zmm23,zmm25
  a3d7b9:	62 62 45 40 7f fe    	vpermt2ps zmm31,zmm23,zmm6
  a3d7bf:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a3d7c5:	62 e1 7c 48 28 1d 31 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff689731]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a3d7cc:	97 68 ff 
  a3d7cf:	62 f2 65 40 7f e1    	vpermt2ps zmm4,zmm19,zmm1
  a3d7d5:	62 e1 7c 48 28 25 61 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff689761]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a3d7dc:	97 68 ff 
  a3d7df:	62 f2 5d 40 7f c1    	vpermt2ps zmm0,zmm20,zmm1
  a3d7e5:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a3d7eb:	62 92 65 40 7f f4    	vpermt2ps zmm6,zmm19,zmm28
  a3d7f1:	62 92 5d 40 7f ec    	vpermt2ps zmm5,zmm20,zmm28
  a3d7f7:	62 71 fd 48 14 f5    	vunpcklpd zmm14,zmm0,zmm5
  a3d7fd:	62 f1 dd 48 14 ce    	vunpcklpd zmm1,zmm4,zmm6
  a3d803:	62 71 dd 48 15 ee    	vunpckhpd zmm13,zmm4,zmm6
  a3d809:	62 72 45 40 7f 64 24 	vpermt2ps zmm12,zmm23,ZMMWORD PTR [rsp+0xc0]
  a3d810:	03 
  a3d811:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a3d817:	62 12 5d 40 7f cd    	vpermt2ps zmm9,zmm20,zmm29
  a3d81d:	62 92 65 40 7f c5    	vpermt2ps zmm0,zmm19,zmm29
  a3d823:	62 72 45 40 7f 5c 24 	vpermt2ps zmm11,zmm23,ZMMWORD PTR [rsp+0x100]
  a3d82a:	04 
  a3d82b:	62 b1 7c 48 28 e1    	vmovaps zmm4,zmm17
  a3d831:	62 82 5d 40 7f cf    	vpermt2ps zmm17,zmm20,zmm31
  a3d837:	62 92 65 40 7f e7    	vpermt2ps zmm4,zmm19,zmm31
  a3d83d:	62 e2 45 40 7f 44 24 	vpermt2ps zmm16,zmm23,ZMMWORD PTR [rsp+0x140]
  a3d844:	05 
  a3d845:	62 12 45 40 7f fb    	vpermt2ps zmm15,zmm23,zmm27
  a3d84b:	62 92 45 40 7f d8    	vpermt2ps zmm3,zmm23,zmm24
  a3d851:	62 b1 b5 48 14 e9    	vunpcklpd zmm5,zmm9,zmm17
  a3d857:	62 12 45 40 7f c2    	vpermt2ps zmm8,zmm23,zmm26
  a3d85d:	62 a2 45 40 7f d5    	vpermt2ps zmm18,zmm23,zmm21
  a3d863:	62 f2 45 40 7f d7    	vpermt2ps zmm2,zmm23,zmm7
  a3d869:	62 d1 7c 48 28 f4    	vmovaps zmm6,zmm12
  a3d86f:	62 f2 65 40 7f f3    	vpermt2ps zmm6,zmm19,zmm3
  a3d875:	62 72 5d 40 7f e3    	vpermt2ps zmm12,zmm20,zmm3
  a3d87b:	62 f1 fd 48 14 fc    	vunpcklpd zmm7,zmm0,zmm4
  a3d881:	62 71 fd 48 15 cc    	vunpckhpd zmm9,zmm0,zmm4
  a3d887:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a3d88d:	62 52 65 40 7f d0    	vpermt2ps zmm10,zmm19,zmm8
  a3d893:	62 52 5d 40 7f d8    	vpermt2ps zmm11,zmm20,zmm8
  a3d899:	62 e1 7c 48 28 0d 5d 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff68955d]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3d8a0:	95 68 ff 
  a3d8a3:	62 72 75 40 7f f5    	vpermt2ps zmm14,zmm17,zmm5
  a3d8a9:	62 b1 7c 48 28 c0    	vmovaps zmm0,zmm16
  a3d8af:	62 b2 65 40 7f c2    	vpermt2ps zmm0,zmm19,zmm18
  a3d8b5:	62 a2 5d 40 7f c2    	vpermt2ps zmm16,zmm20,zmm18
  a3d8bb:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a3d8c1:	62 f2 75 40 7f e7    	vpermt2ps zmm4,zmm17,zmm7
  a3d8c7:	62 b1 9d 48 14 e8    	vunpcklpd zmm5,zmm12,zmm16
  a3d8cd:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a3d8d3:	62 71 7c 48 28 25 63 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff689563]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a3d8da:	95 68 ff 
  a3d8dd:	62 f2 1d 48 7f cf    	vpermt2ps zmm1,zmm12,zmm7
  a3d8e3:	62 d1 7c 48 28 ff    	vmovaps zmm7,zmm15
  a3d8e9:	62 f2 65 40 7f fa    	vpermt2ps zmm7,zmm19,zmm2
  a3d8ef:	62 72 5d 40 7f fa    	vpermt2ps zmm15,zmm20,zmm2
  a3d8f5:	62 d2 75 40 7f d9    	vpermt2ps zmm3,zmm17,zmm9
  a3d8fb:	62 d1 a5 48 14 d7    	vunpcklpd zmm2,zmm11,zmm15
  a3d901:	62 71 cd 48 14 c0    	vunpcklpd zmm8,zmm6,zmm0
  a3d907:	62 f1 cd 48 15 c0    	vunpckhpd zmm0,zmm6,zmm0
  a3d90d:	62 52 1d 48 7f e9    	vpermt2ps zmm13,zmm12,zmm9
  a3d913:	62 f1 ad 48 14 f7    	vunpcklpd zmm6,zmm10,zmm7
  a3d919:	62 f1 ad 48 15 ff    	vunpckhpd zmm7,zmm10,zmm7
  a3d91f:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a3d925:	62 72 75 40 7f de    	vpermt2ps zmm11,zmm17,zmm6
  a3d92b:	62 72 1d 48 7f c6    	vpermt2ps zmm8,zmm12,zmm6
  a3d931:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a3d937:	62 f2 75 40 7f ea    	vpermt2ps zmm5,zmm17,zmm2
  a3d93d:	62 f2 75 40 7f f7    	vpermt2ps zmm6,zmm17,zmm7
  a3d943:	62 f1 7c 48 10 51 02 	vmovups zmm2,ZMMWORD PTR [rcx+0x80]
  a3d94a:	62 71 7c 48 10 49 03 	vmovups zmm9,ZMMWORD PTR [rcx+0xc0]
  a3d951:	62 71 7c 48 10 51 04 	vmovups zmm10,ZMMWORD PTR [rcx+0x100]
  a3d958:	62 f2 1d 48 7f c7    	vpermt2ps zmm0,zmm12,zmm7
  a3d95e:	62 f1 3c 48 59 fa    	vmulps zmm7,zmm8,zmm2
  a3d964:	62 d2 75 48 b8 f9    	vfmadd231ps zmm7,zmm1,zmm9
  a3d96a:	62 f1 74 48 59 ca    	vmulps zmm1,zmm1,zmm2
  a3d970:	62 f1 7c 48 10 51 09 	vmovups zmm2,ZMMWORD PTR [rcx+0x240]
  a3d977:	62 d2 35 48 bc c8    	vfnmadd231ps zmm1,zmm9,zmm8
  a3d97d:	62 71 7c 48 10 41 08 	vmovups zmm8,ZMMWORD PTR [rcx+0x200]
  a3d984:	62 51 54 48 59 c8    	vmulps zmm9,zmm5,zmm8
  a3d98a:	62 72 0d 48 b8 ca    	vfmadd231ps zmm9,zmm14,zmm2
  a3d990:	62 51 0c 48 59 c0    	vmulps zmm8,zmm14,zmm8
  a3d996:	62 71 7c 48 10 61 05 	vmovups zmm12,ZMMWORD PTR [rcx+0x140]
  a3d99d:	62 72 6d 48 bc c5    	vfnmadd231ps zmm8,zmm2,zmm5
  a3d9a3:	62 d1 4c 48 59 d2    	vmulps zmm2,zmm6,zmm10
  a3d9a9:	62 d2 65 48 b8 d4    	vfmadd231ps zmm2,zmm3,zmm12
  a3d9af:	62 f1 7c 48 10 69 06 	vmovups zmm5,ZMMWORD PTR [rcx+0x180]
  a3d9b6:	62 d1 64 48 59 da    	vmulps zmm3,zmm3,zmm10
  a3d9bc:	62 71 7c 48 10 51 07 	vmovups zmm10,ZMMWORD PTR [rcx+0x1c0]
  a3d9c3:	62 f2 1d 48 bc de    	vfnmadd231ps zmm3,zmm12,zmm6
  a3d9c9:	62 f1 7c 48 59 f5    	vmulps zmm6,zmm0,zmm5
  a3d9cf:	62 d2 15 48 b8 f2    	vfmadd231ps zmm6,zmm13,zmm10
  a3d9d5:	62 71 6c 48 58 e6    	vaddps zmm12,zmm2,zmm6
  a3d9db:	62 f1 14 48 59 ed    	vmulps zmm5,zmm13,zmm5
  a3d9e1:	62 72 7d 48 18 35 fd 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff637cfd]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a3d9e8:	7c 63 ff 
  a3d9eb:	62 51 7c 48 28 ee    	vmovaps zmm13,zmm14
  a3d9f1:	62 f2 2d 48 bc e8    	vfnmadd231ps zmm5,zmm10,zmm0
  a3d9f7:	62 d1 44 48 58 c1    	vaddps zmm0,zmm7,zmm9
  a3d9fd:	62 52 7d 48 a8 eb    	vfmadd213ps zmm13,zmm0,zmm11
  a3da03:	62 71 64 48 5c d5    	vsubps zmm10,zmm3,zmm5
  a3da09:	62 f1 64 48 58 dd    	vaddps zmm3,zmm3,zmm5
  a3da0f:	62 72 7d 48 18 3d 2b 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff637c2b]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a3da16:	7c 63 ff 
  a3da19:	62 52 1d 48 bc ef    	vfnmadd231ps zmm13,zmm12,zmm15
  a3da1f:	62 d1 74 48 5c e8    	vsubps zmm5,zmm1,zmm8
  a3da25:	62 d1 74 48 58 c8    	vaddps zmm1,zmm1,zmm8
  a3da2b:	62 e2 7d 48 18 05 23 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff637d23]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a3da32:	7d 63 ff 
  a3da35:	62 31 2c 48 59 c0    	vmulps zmm8,zmm10,zmm16
  a3da3b:	62 e2 7d 48 18 0d 5b 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff63795b]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a3da42:	79 63 ff 
  a3da45:	62 32 55 48 b8 c1    	vfmadd231ps zmm8,zmm5,zmm17
  a3da4b:	62 d1 44 48 5c f9    	vsubps zmm7,zmm7,zmm9
  a3da51:	62 f1 6c 48 5c d6    	vsubps zmm2,zmm2,zmm6
  a3da57:	62 b1 6c 48 59 f0    	vmulps zmm6,zmm2,zmm16
  a3da5d:	62 b2 45 48 b8 f1    	vfmadd231ps zmm6,zmm7,zmm17
  a3da63:	62 51 7c 48 28 cf    	vmovaps zmm9,zmm15
  a3da69:	62 52 7d 48 ac cb    	vfnmadd213ps zmm9,zmm0,zmm11
  a3da6f:	62 b1 54 48 59 e8    	vmulps zmm5,zmm5,zmm16
  a3da75:	62 52 1d 48 b8 ce    	vfmadd231ps zmm9,zmm12,zmm14
  a3da7b:	62 d2 75 40 bc ea    	vfnmadd231ps zmm5,zmm17,zmm10
  a3da81:	62 b1 44 48 59 f8    	vmulps zmm7,zmm7,zmm16
  a3da87:	62 f2 75 40 bc fa    	vfnmadd231ps zmm7,zmm17,zmm2
  a3da8d:	62 f1 34 48 58 d5    	vaddps zmm2,zmm9,zmm5
  a3da93:	62 51 7c 48 28 d7    	vmovaps zmm10,zmm15
  a3da99:	62 72 75 48 ac d4    	vfnmadd213ps zmm10,zmm1,zmm4
  a3da9f:	62 52 65 48 b8 d6    	vfmadd231ps zmm10,zmm3,zmm14
  a3daa5:	62 f1 34 48 5c ed    	vsubps zmm5,zmm9,zmm5
  a3daab:	62 71 2c 48 5c cf    	vsubps zmm9,zmm10,zmm7
  a3dab1:	62 f1 2c 48 58 ff    	vaddps zmm7,zmm10,zmm7
  a3dab7:	62 51 14 48 58 d0    	vaddps zmm10,zmm13,zmm8
  a3dabd:	62 51 14 48 5c c0    	vsubps zmm8,zmm13,zmm8
  a3dac3:	62 d1 7c 48 58 c3    	vaddps zmm0,zmm0,zmm11
  a3dac9:	62 d1 7c 48 58 c4    	vaddps zmm0,zmm0,zmm12
  a3dacf:	62 51 7c 48 28 de    	vmovaps zmm11,zmm14
  a3dad5:	62 72 75 48 a8 dc    	vfmadd213ps zmm11,zmm1,zmm4
  a3dadb:	62 f1 5c 48 58 c9    	vaddps zmm1,zmm4,zmm1
  a3dae1:	62 52 65 48 bc df    	vfnmadd231ps zmm11,zmm3,zmm15
  a3dae7:	62 f1 74 48 58 cb    	vaddps zmm1,zmm1,zmm3
  a3daed:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a3daf3:	62 71 7c 48 28 25 83 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff653d83]        # 91880 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ed30>
  a3dafa:	3d 65 ff 
  a3dafd:	62 f2 1d 48 7f d9    	vpermt2ps zmm3,zmm12,zmm1
  a3db03:	62 71 7c 48 28 2d b3 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff653db3]        # 918c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ed70>
  a3db0a:	3d 65 ff 
  a3db0d:	62 f2 15 48 7f c1    	vpermt2ps zmm0,zmm13,zmm1
  a3db13:	62 f1 24 48 5c ce    	vsubps zmm1,zmm11,zmm6
  a3db19:	62 f1 24 48 58 e6    	vaddps zmm4,zmm11,zmm6
  a3db1f:	62 f1 7c 48 11 04 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm0
  a3db26:	62 f1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm3
  a3db2d:	01 
  a3db2e:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a3db34:	62 f2 1d 48 7f c4    	vpermt2ps zmm0,zmm12,zmm4
  a3db3a:	62 72 15 48 7f c4    	vpermt2ps zmm8,zmm13,zmm4
  a3db40:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm8
  a3db47:	02 
  a3db48:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm0
  a3db4f:	03 
  a3db50:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a3db56:	62 f2 1d 48 7f c7    	vpermt2ps zmm0,zmm12,zmm7
  a3db5c:	62 f2 15 48 7f ef    	vpermt2ps zmm5,zmm13,zmm7
  a3db62:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm5
  a3db69:	04 
  a3db6a:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm0
  a3db71:	05 
  a3db72:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a3db78:	62 d2 1d 48 7f c1    	vpermt2ps zmm0,zmm12,zmm9
  a3db7e:	62 d2 15 48 7f d1    	vpermt2ps zmm2,zmm13,zmm9
  a3db84:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm2
  a3db8b:	06 
  a3db8c:	62 d1 7c 48 28 d2    	vmovaps zmm2,zmm10
  a3db92:	62 f2 1d 48 7f d1    	vpermt2ps zmm2,zmm12,zmm1
  a3db98:	62 72 15 48 7f d1    	vpermt2ps zmm10,zmm13,zmm1
  a3db9e:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm0
  a3dba5:	07 
  a3dba6:	62 71 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm10
  a3dbad:	08 
  a3dbae:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm2
  a3dbb5:	09 
  a3dbb6:	48 81 c2 80 02 00 00 	add    rdx,0x280
  a3dbbd:	48 39 d0             	cmp    rax,rdx
  a3dbc0:	0f 85 ea f3 ff ff    	jne    a3cfb0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a3dbc6:	48 89 ec             	mov    rsp,rbp
  a3dbc9:	5d                   	pop    rbp
  a3dbca:	c5 f8 77             	vzeroupper
  a3dbcd:	c3                   	ret
