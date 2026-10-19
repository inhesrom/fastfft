
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a39140 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a39140:	55                   	push   rbp
  a39141:	48 89 e5             	mov    rbp,rsp
  a39144:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a39148:	48 81 ec 80 03 00 00 	sub    rsp,0x380
  a3914f:	48 c1 e2 07          	shl    rdx,0x7
  a39153:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a39157:	31 d2                	xor    edx,edx
  a39159:	4c 8d 84 24 00 03 00 	lea    r8,[rsp+0x300]
  a39160:	00 
  a39161:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a39166:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a3916d:	00 00 00 
  a39170:	c6 84 24 00 03 00 00 	mov    BYTE PTR [rsp+0x300],0x0
  a39177:	00 
  a39178:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a3917d:	c5 fb 10 44 17 20    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x20]
  a39183:	c5 fc 10 0c 17       	vmovups ymm1,YMMWORD PTR [rdi+rdx*1]
  a39188:	c5 fc 10 54 17 28    	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x28]
  a3918e:	c5 fc 10 5c 17 50    	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x50]
  a39194:	c5 fc 10 6c 17 78    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x78]
  a3919a:	62 e3 f5 48 1a d0 01 	vinsertf64x4 zmm18,zmm1,ymm0,0x1
  a391a1:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm18
  a391a8:	03 
  a391a9:	c5 fb 10 44 17 48    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x48]
  a391af:	62 e3 ed 48 1a f0 01 	vinsertf64x4 zmm22,zmm2,ymm0,0x1
  a391b6:	62 b1 7c 48 28 d6    	vmovaps zmm2,zmm22
  a391bc:	c5 fb 10 44 17 70    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x70]
  a391c2:	62 63 e5 48 1a c0 01 	vinsertf64x4 zmm24,zmm3,ymm0,0x1
  a391c9:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a391cd:	62 71 7c 48 28 35 29 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff658129]        # 91300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e7b0>
  a391d4:	81 65 ff 
  a391d7:	62 e2 0d 48 7f f4    	vpermt2ps zmm22,zmm14,zmm4
  a391dd:	62 81 7c 48 28 d8    	vmovaps zmm19,zmm24
  a391e3:	c5 fb 10 84 17 98 00 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x98]
  a391ea:	00 00 
  a391ec:	62 e3 d5 48 1a e0 01 	vinsertf64x4 zmm20,zmm5,ymm0,0x1
  a391f3:	62 62 0d 48 7f c4    	vpermt2ps zmm24,zmm14,zmm4
  a391f9:	c5 fb 10 84 17 c0 00 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0xc0]
  a39200:	00 00 
  a39202:	c5 fc 10 8c 17 a0 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xa0]
  a39209:	00 00 
  a3920b:	62 63 f5 48 1a f8 01 	vinsertf64x4 zmm31,zmm1,ymm0,0x1
  a39212:	62 a1 7c 48 28 ec    	vmovaps zmm21,zmm20
  a39218:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm31
  a3921f:	02 
  a39220:	c5 fb 10 84 17 e8 00 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0xe8]
  a39227:	00 00 
  a39229:	c5 fc 10 8c 17 c8 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xc8]
  a39230:	00 00 
  a39232:	62 62 0d 48 7f fc    	vpermt2ps zmm31,zmm14,zmm4
  a39238:	62 63 f5 48 1a e8 01 	vinsertf64x4 zmm29,zmm1,ymm0,0x1
  a3923f:	62 01 7c 48 28 dd    	vmovaps zmm27,zmm29
  a39245:	c5 fb 10 84 17 10 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x110]
  a3924c:	00 00 
  a3924e:	62 62 0d 48 7f ec    	vpermt2ps zmm29,zmm14,zmm4
  a39254:	c5 fc 10 8c 17 f0 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xf0]
  a3925b:	00 00 
  a3925d:	62 73 f5 48 1a e8 01 	vinsertf64x4 zmm13,zmm1,ymm0,0x1
  a39264:	62 c1 7c 48 28 fd    	vmovaps zmm23,zmm13
  a3926a:	62 72 0d 48 7f ec    	vpermt2ps zmm13,zmm14,zmm4
  a39270:	c5 fb 10 84 17 38 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x138]
  a39277:	00 00 
  a39279:	c5 fc 10 8c 17 18 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x118]
  a39280:	00 00 
  a39282:	62 63 f5 48 1a f0 01 	vinsertf64x4 zmm30,zmm1,ymm0,0x1
  a39289:	62 01 7c 48 28 e6    	vmovaps zmm28,zmm30
  a3928f:	62 62 0d 48 7f f4    	vpermt2ps zmm30,zmm14,zmm4
  a39295:	c5 fb 10 84 17 60 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x160]
  a3929c:	00 00 
  a3929e:	c5 fc 10 8c 17 40 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x140]
  a392a5:	00 00 
  a392a7:	62 f1 7c 48 28 3d 0f 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff65800f]        # 912c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e770>
  a392ae:	80 65 ff 
  a392b1:	62 e2 45 48 7f d4    	vpermt2ps zmm18,zmm7,zmm4
  a392b7:	62 e3 f5 48 1a c8 01 	vinsertf64x4 zmm17,zmm1,ymm0,0x1
  a392be:	62 21 7c 48 28 d1    	vmovaps zmm26,zmm17
  a392c4:	c5 fb 10 84 17 88 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x188]
  a392cb:	00 00 
  a392cd:	62 f2 45 48 7f d4    	vpermt2ps zmm2,zmm7,zmm4
  a392d3:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a392da:	01 
  a392db:	c5 fc 10 8c 17 68 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x168]
  a392e2:	00 00 
  a392e4:	62 73 f5 48 1a d8 01 	vinsertf64x4 zmm11,zmm1,ymm0,0x1
  a392eb:	62 51 7c 48 28 fb    	vmovaps zmm15,zmm11
  a392f1:	62 e2 45 48 7f dc    	vpermt2ps zmm19,zmm7,zmm4
  a392f7:	62 72 0d 48 7f dc    	vpermt2ps zmm11,zmm14,zmm4
  a392fd:	c5 fb 10 84 17 b0 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x1b0]
  a39304:	00 00 
  a39306:	c5 fc 10 8c 17 90 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x190]
  a3930d:	00 00 
  a3930f:	62 e2 45 48 7f ec    	vpermt2ps zmm21,zmm7,zmm4
  a39315:	62 73 f5 48 1a c0 01 	vinsertf64x4 zmm8,zmm1,ymm0,0x1
  a3931c:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a39322:	62 72 0d 48 7f c4    	vpermt2ps zmm8,zmm14,zmm4
  a39328:	62 62 45 48 7f dc    	vpermt2ps zmm27,zmm7,zmm4
  a3932e:	c5 fb 10 84 17 d8 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x1d8]
  a39335:	00 00 
  a39337:	c5 fc 10 8c 17 b8 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x1b8]
  a3933e:	00 00 
  a39340:	62 73 f5 48 1a e0 01 	vinsertf64x4 zmm12,zmm1,ymm0,0x1
  a39347:	62 e2 45 48 7f fc    	vpermt2ps zmm23,zmm7,zmm4
  a3934d:	62 d1 7c 48 28 dc    	vmovaps zmm3,zmm12
  a39353:	c5 fb 10 84 17 00 02 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x200]
  a3935a:	00 00 
  a3935c:	c5 fc 10 8c 17 e0 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x1e0]
  a39363:	00 00 
  a39365:	62 62 45 48 7f d4    	vpermt2ps zmm26,zmm7,zmm4
  a3936b:	62 f3 f5 48 1a f0 01 	vinsertf64x4 zmm6,zmm1,ymm0,0x1
  a39372:	62 e1 7c 48 28 c6    	vmovaps zmm16,zmm6
  a39378:	62 f2 0d 48 7f f4    	vpermt2ps zmm6,zmm14,zmm4
  a3937e:	62 72 45 48 7f fc    	vpermt2ps zmm15,zmm7,zmm4
  a39384:	c5 fb 10 84 17 28 02 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x228]
  a3938b:	00 00 
  a3938d:	c5 fc 10 8c 17 08 02 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x208]
  a39394:	00 00 
  a39396:	62 73 f5 48 1a d0 01 	vinsertf64x4 zmm10,zmm1,ymm0,0x1
  a3939d:	62 72 45 48 7f cc    	vpermt2ps zmm9,zmm7,zmm4
  a393a3:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a393a9:	62 72 0d 48 7f d4    	vpermt2ps zmm10,zmm14,zmm4
  a393af:	c5 fb 10 8c 17 50 02 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x250]
  a393b6:	00 00 
  a393b8:	62 f2 45 48 7f dc    	vpermt2ps zmm3,zmm7,zmm4
  a393be:	c5 fc 10 94 17 30 02 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x230]
  a393c5:	00 00 
  a393c7:	62 f3 ed 48 1a c9 01 	vinsertf64x4 zmm1,zmm2,ymm1,0x1
  a393ce:	62 61 7c 48 28 c9    	vmovaps zmm25,zmm1
  a393d4:	62 f2 45 48 7f c4    	vpermt2ps zmm0,zmm7,zmm4
  a393da:	62 f2 0d 48 7f cc    	vpermt2ps zmm1,zmm14,zmm4
  a393e0:	c5 fb 10 94 17 78 02 	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0x278]
  a393e7:	00 00 
  a393e9:	c5 fc 10 ac 17 58 02 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x258]
  a393f0:	00 00 
  a393f2:	62 62 45 48 7f cc    	vpermt2ps zmm25,zmm7,zmm4
  a393f8:	62 f3 d5 48 1a ea 01 	vinsertf64x4 zmm5,zmm5,ymm2,0x1
  a393ff:	62 91 6c 40 58 d2    	vaddps zmm2,zmm18,zmm26
  a39405:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm2
  a3940c:	09 
  a3940d:	62 91 6c 40 5c d2    	vsubps zmm2,zmm18,zmm26
  a39413:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm2
  a3941a:	0b 
  a3941b:	62 f1 04 40 58 d6    	vaddps zmm2,zmm31,zmm6
  a39421:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm2
  a39428:	07 
  a39429:	62 f1 04 40 5c d6    	vsubps zmm2,zmm31,zmm6
  a3942f:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm2
  a39436:	0a 
  a39437:	62 d1 64 40 58 d1    	vaddps zmm2,zmm19,zmm9
  a3943d:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a39444:	08 
  a39445:	62 51 64 40 5c c9    	vsubps zmm9,zmm19,zmm9
  a3944b:	62 c1 3c 40 58 d8    	vaddps zmm19,zmm24,zmm8
  a39451:	62 51 3c 40 5c c0    	vsubps zmm8,zmm24,zmm8
  a39457:	62 e1 14 48 58 d1    	vaddps zmm18,zmm13,zmm1
  a3945d:	62 f1 14 48 5c f1    	vsubps zmm6,zmm13,zmm1
  a39463:	62 01 44 40 58 c1    	vaddps zmm24,zmm23,zmm25
  a39469:	62 91 44 40 5c d1    	vsubps zmm2,zmm23,zmm25
  a3946f:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a39476:	01 
  a39477:	62 41 74 48 58 cf    	vaddps zmm25,zmm1,zmm15
  a3947d:	62 41 74 48 5c ff    	vsubps zmm31,zmm1,zmm15
  a39483:	62 51 14 40 58 fa    	vaddps zmm15,zmm29,zmm10
  a39489:	62 c1 14 40 5c fa    	vsubps zmm23,zmm29,zmm10
  a3948f:	62 51 4c 40 58 eb    	vaddps zmm13,zmm22,zmm11
  a39495:	62 41 4c 40 5c eb    	vsubps zmm29,zmm22,zmm11
  a3949b:	62 71 24 40 58 d0    	vaddps zmm10,zmm27,zmm0
  a394a1:	62 81 7c 48 5c f3    	vsubps zmm22,zmm0,zmm27
  a394a7:	62 71 54 40 58 db    	vaddps zmm11,zmm21,zmm3
  a394ad:	62 61 54 40 5c d3    	vsubps zmm26,zmm21,zmm3
  a394b3:	62 f1 7c 48 28 dd    	vmovaps zmm3,zmm5
  a394b9:	62 f2 0d 48 7f ec    	vpermt2ps zmm5,zmm14,zmm4
  a394bf:	62 61 0c 40 58 dd    	vaddps zmm27,zmm30,zmm5
  a394c5:	62 e1 0c 40 5c ed    	vsubps zmm21,zmm30,zmm5
  a394cb:	62 e2 0d 48 7f e4    	vpermt2ps zmm20,zmm14,zmm4
  a394d1:	62 72 0d 48 7f e4    	vpermt2ps zmm12,zmm14,zmm4
  a394d7:	62 41 5c 40 58 f4    	vaddps zmm30,zmm20,zmm12
  a394dd:	62 51 5c 40 5c e4    	vsubps zmm12,zmm20,zmm12
  a394e3:	62 62 45 48 7f e4    	vpermt2ps zmm28,zmm7,zmm4
  a394e9:	62 f2 45 48 7f dc    	vpermt2ps zmm3,zmm7,zmm4
  a394ef:	62 f1 1c 40 58 c3    	vaddps zmm0,zmm28,zmm3
  a394f5:	62 91 64 48 5c dc    	vsubps zmm3,zmm3,zmm28
  a394fb:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0xc0]
  a39502:	03 
  a39503:	62 f2 0d 48 7f ec    	vpermt2ps zmm5,zmm14,zmm4
  a39509:	62 e2 0d 48 7f cc    	vpermt2ps zmm17,zmm14,zmm4
  a3950f:	62 b1 54 48 58 c9    	vaddps zmm1,zmm5,zmm17
  a39515:	62 a1 54 48 5c e1    	vsubps zmm20,zmm5,zmm17
  a3951b:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x80]
  a39522:	02 
  a39523:	62 72 45 48 7f f4    	vpermt2ps zmm14,zmm7,zmm4
  a39529:	62 e2 45 48 7f c4    	vpermt2ps zmm16,zmm7,zmm4
  a3952f:	62 b1 0c 48 58 e8    	vaddps zmm5,zmm14,zmm16
  a39535:	62 c1 7c 40 5c c6    	vsubps zmm16,zmm16,zmm14
  a3953b:	62 d1 34 48 58 e0    	vaddps zmm4,zmm9,zmm8
  a39541:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm4
  a39548:	06 
  a39549:	62 d1 3c 48 5c f9    	vsubps zmm7,zmm8,zmm9
  a3954f:	62 f1 4c 48 5c e2    	vsubps zmm4,zmm6,zmm2
  a39555:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm4
  a3955c:	05 
  a3955d:	62 f1 6c 48 58 d6    	vaddps zmm2,zmm2,zmm6
  a39563:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a3956a:	04 
  a3956b:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x240]
  a39572:	09 
  a39573:	62 71 6c 48 58 f5    	vaddps zmm14,zmm2,zmm5
  a39579:	62 f1 6c 48 5c d5    	vsubps zmm2,zmm2,zmm5
  a3957f:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a39586:	03 
  a39587:	62 b1 64 40 58 ea    	vaddps zmm5,zmm19,zmm18
  a3958d:	62 b1 64 40 5c d2    	vsubps zmm2,zmm19,zmm18
  a39593:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a3959a:	02 
  a3959b:	62 c1 34 40 58 ca    	vaddps zmm17,zmm25,zmm10
  a395a1:	62 51 34 40 5c ca    	vsubps zmm9,zmm25,zmm10
  a395a7:	62 41 14 48 58 e7    	vaddps zmm28,zmm13,zmm15
  a395ad:	62 51 14 48 5c d7    	vsubps zmm10,zmm13,zmm15
  a395b3:	62 11 0c 40 58 c3    	vaddps zmm8,zmm30,zmm27
  a395b9:	62 91 0c 40 5c e3    	vsubps zmm4,zmm30,zmm27
  a395bf:	62 61 24 48 58 f0    	vaddps zmm30,zmm11,zmm0
  a395c5:	62 f1 24 48 5c c0    	vsubps zmm0,zmm11,zmm0
  a395cb:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x1c0]
  a395d2:	07 
  a395d3:	62 f1 74 48 58 f2    	vaddps zmm6,zmm1,zmm2
  a395d9:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a395df:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a395e6:	09 
  a395e7:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x200]
  a395ee:	08 
  a395ef:	62 11 74 48 58 d8    	vaddps zmm11,zmm1,zmm24
  a395f5:	62 f1 3c 40 5c c9    	vsubps zmm1,zmm24,zmm1
  a395fb:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a39602:	07 
  a39603:	62 d1 34 48 58 ca    	vaddps zmm1,zmm9,zmm10
  a39609:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a39610:	01 
  a39611:	62 41 2c 48 5c c9    	vsubps zmm25,zmm10,zmm9
  a39617:	62 f1 5c 48 5c c8    	vsubps zmm1,zmm4,zmm0
  a3961d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a39624:	08 
  a39625:	62 61 7c 48 58 c4    	vaddps zmm24,zmm0,zmm4
  a3962b:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a39632:	0b 
  a39633:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x280]
  a3963a:	0a 
  a3963b:	62 f1 7c 48 58 d1    	vaddps zmm2,zmm0,zmm1
  a39641:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a39647:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a3964e:	0b 
  a3964f:	62 b1 04 40 58 c7    	vaddps zmm0,zmm31,zmm23
  a39655:	62 31 04 40 5c cf    	vsubps zmm9,zmm31,zmm23
  a3965b:	62 11 4c 40 58 d5    	vaddps zmm10,zmm22,zmm29
  a39661:	62 e2 7d 48 18 15 f9 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff63bff9]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a39668:	bf 63 ff 
  a3966b:	62 31 2c 48 59 fa    	vmulps zmm15,zmm10,zmm18
  a39671:	62 e2 7d 48 18 3d 85 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff63c085]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a39678:	c0 63 ff 
  a3967b:	62 32 7d 48 b8 ff    	vfmadd231ps zmm15,zmm0,zmm23
  a39681:	62 31 2c 48 59 d7    	vmulps zmm10,zmm10,zmm23
  a39687:	62 72 6d 40 bc d0    	vfnmadd231ps zmm10,zmm18,zmm0
  a3968d:	62 b1 14 40 5c ce    	vsubps zmm1,zmm29,zmm22
  a39693:	62 a1 2c 40 58 f5    	vaddps zmm22,zmm26,zmm21
  a39699:	62 a1 2c 40 5c dd    	vsubps zmm19,zmm26,zmm21
  a3969f:	62 c1 64 48 58 ec    	vaddps zmm21,zmm3,zmm12
  a396a5:	62 21 54 40 59 d7    	vmulps zmm26,zmm21,zmm23
  a396ab:	62 22 4d 40 b8 d2    	vfmadd231ps zmm26,zmm22,zmm18
  a396b1:	62 a1 54 40 59 ea    	vmulps zmm21,zmm21,zmm18
  a396b7:	62 a2 45 40 bc ee    	vfnmadd231ps zmm21,zmm23,zmm22
  a396bd:	62 72 7d 48 18 2d d5 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff63bcd5]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a396c4:	bc 63 ff 
  a396c7:	62 c1 44 48 59 f5    	vmulps zmm22,zmm7,zmm13
  a396cd:	62 61 14 48 59 6c 24 	vmulps zmm29,zmm13,ZMMWORD PTR [rsp+0x100]
  a396d4:	04 
  a396d5:	62 01 4c 40 5c fd    	vsubps zmm31,zmm22,zmm29
  a396db:	62 91 4c 40 58 c5    	vaddps zmm0,zmm22,zmm29
  a396e1:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a396e8:	0a 
  a396e9:	62 f1 1c 48 5c db    	vsubps zmm3,zmm12,zmm3
  a396ef:	62 b1 7c 40 58 e4    	vaddps zmm4,zmm16,zmm20
  a396f5:	62 b1 5c 40 5c f8    	vsubps zmm7,zmm20,zmm16
  a396fb:	62 61 14 48 59 5c 24 	vmulps zmm27,zmm13,ZMMWORD PTR [rsp+0x180]
  a39702:	06 
  a39703:	62 61 14 48 59 6c 24 	vmulps zmm29,zmm13,ZMMWORD PTR [rsp+0x140]
  a3970a:	05 
  a3970b:	62 91 24 40 58 c5    	vaddps zmm0,zmm27,zmm29
  a39711:	62 01 14 40 5c db    	vsubps zmm27,zmm29,zmm27
  a39717:	62 21 74 48 59 ef    	vmulps zmm29,zmm1,zmm23
  a3971d:	62 22 35 48 b8 ea    	vfmadd231ps zmm29,zmm9,zmm18
  a39723:	62 b1 74 48 59 ca    	vmulps zmm1,zmm1,zmm18
  a39729:	62 d2 45 40 bc c9    	vfnmadd231ps zmm1,zmm23,zmm9
  a3972f:	62 31 64 48 59 ca    	vmulps zmm9,zmm3,zmm18
  a39735:	62 32 65 40 b8 cf    	vfmadd231ps zmm9,zmm19,zmm23
  a3973b:	62 a1 64 40 59 da    	vmulps zmm19,zmm19,zmm18
  a39741:	62 e2 45 40 bc db    	vfnmadd231ps zmm19,zmm23,zmm3
  a39747:	62 c1 0c 48 58 c3    	vaddps zmm16,zmm14,zmm11
  a3974d:	62 d1 0c 48 5c db    	vsubps zmm3,zmm14,zmm11
  a39753:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm3
  a3975a:	06 
  a3975b:	62 d1 1c 40 58 d8    	vaddps zmm3,zmm28,zmm8
  a39761:	62 51 1c 40 5c c0    	vsubps zmm8,zmm28,zmm8
  a39767:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm8
  a3976e:	05 
  a3976f:	62 61 4c 48 58 e5    	vaddps zmm28,zmm6,zmm5
  a39775:	62 f1 4c 48 5c ed    	vsubps zmm5,zmm6,zmm5
  a3977b:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm5
  a39782:	04 
  a39783:	62 91 74 40 58 f6    	vaddps zmm6,zmm17,zmm30
  a39789:	62 21 0c 40 5c f1    	vsubps zmm30,zmm30,zmm17
  a3978f:	62 e1 6c 48 58 c8    	vaddps zmm17,zmm2,zmm0
  a39795:	62 e1 6c 48 5c f8    	vsubps zmm23,zmm2,zmm0
  a3979b:	62 31 2c 48 58 e5    	vaddps zmm12,zmm10,zmm21
  a397a1:	62 a1 2c 48 5c f5    	vsubps zmm22,zmm10,zmm21
  a397a7:	62 11 5c 48 58 d7    	vaddps zmm10,zmm4,zmm31
  a397ad:	62 81 5c 48 5c ef    	vsubps zmm21,zmm4,zmm31
  a397b3:	62 01 04 48 58 fa    	vaddps zmm31,zmm15,zmm26
  a397b9:	62 41 2c 40 5c d7    	vsubps zmm26,zmm26,zmm15
  a397bf:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a397c6:	03 
  a397c7:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x80]
  a397ce:	02 
  a397cf:	62 71 7c 48 58 fa    	vaddps zmm15,zmm0,zmm2
  a397d5:	62 e1 7c 48 5c e2    	vsubps zmm20,zmm0,zmm2
  a397db:	62 51 34 40 59 dd    	vmulps zmm11,zmm25,zmm13
  a397e1:	62 51 3c 40 59 f5    	vmulps zmm14,zmm24,zmm13
  a397e7:	62 41 24 48 5c c6    	vsubps zmm24,zmm11,zmm14
  a397ed:	62 41 24 48 58 ce    	vaddps zmm25,zmm11,zmm14
  a397f3:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a397fa:	09 
  a397fb:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x1c0]
  a39802:	07 
  a39803:	62 f1 6c 48 58 e0    	vaddps zmm4,zmm2,zmm0
  a39809:	62 e1 7c 48 5c d2    	vsubps zmm18,zmm0,zmm2
  a3980f:	62 71 14 48 59 5c 24 	vmulps zmm11,zmm13,ZMMWORD PTR [rsp+0x40]
  a39816:	01 
  a39817:	62 71 14 48 59 74 24 	vmulps zmm14,zmm13,ZMMWORD PTR [rsp+0x200]
  a3981e:	08 
  a3981f:	62 d1 24 48 58 d6    	vaddps zmm2,zmm11,zmm14
  a39825:	62 51 0c 48 5c eb    	vsubps zmm13,zmm14,zmm11
  a3982b:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a39832:	0b 
  a39833:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x280]
  a3983a:	0a 
  a3983b:	62 71 7c 48 58 f5    	vaddps zmm14,zmm0,zmm5
  a39841:	62 71 7c 48 5c c5    	vsubps zmm8,zmm0,zmm5
  a39847:	62 31 74 48 58 db    	vaddps zmm11,zmm1,zmm19
  a3984d:	62 b1 74 48 5c eb    	vsubps zmm5,zmm1,zmm19
  a39853:	62 91 44 48 58 cb    	vaddps zmm1,zmm7,zmm27
  a39859:	62 91 44 48 5c fb    	vsubps zmm7,zmm7,zmm27
  a3985f:	62 41 14 40 5c d9    	vsubps zmm27,zmm29,zmm9
  a39865:	62 51 14 40 58 c9    	vaddps zmm9,zmm29,zmm9
  a3986b:	62 f1 7c 40 58 c6    	vaddps zmm0,zmm16,zmm6
  a39871:	62 e1 7c 40 5c de    	vsubps zmm19,zmm16,zmm6
  a39877:	62 61 1c 40 58 eb    	vaddps zmm29,zmm28,zmm3
  a3987d:	62 f1 1c 40 5c db    	vsubps zmm3,zmm28,zmm3
  a39883:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a3988a:	01 
  a3988b:	62 91 74 40 58 df    	vaddps zmm3,zmm17,zmm31
  a39891:	62 01 74 40 5c e7    	vsubps zmm28,zmm17,zmm31
  a39897:	62 41 2c 48 58 fc    	vaddps zmm31,zmm10,zmm12
  a3989d:	62 d1 2c 48 5c f4    	vsubps zmm6,zmm10,zmm12
  a398a3:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm6
  a398aa:	02 
  a398ab:	62 71 04 48 58 e2    	vaddps zmm12,zmm15,zmm2
  a398b1:	62 71 04 48 5c d2    	vsubps zmm10,zmm15,zmm2
  a398b7:	62 81 5c 48 58 c8    	vaddps zmm17,zmm4,zmm24
  a398bd:	62 91 5c 48 5c d0    	vsubps zmm2,zmm4,zmm24
  a398c3:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a398ca:	03 
  a398cb:	62 81 0c 48 58 c3    	vaddps zmm16,zmm14,zmm27
  a398d1:	62 01 0c 48 5c db    	vsubps zmm27,zmm14,zmm27
  a398d7:	62 51 74 48 58 fb    	vaddps zmm15,zmm1,zmm11
  a398dd:	62 41 74 48 5c c3    	vsubps zmm24,zmm1,zmm11
  a398e3:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x180]
  a398ea:	06 
  a398eb:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x140]
  a398f2:	05 
  a398f3:	62 f1 6c 48 58 cc    	vaddps zmm1,zmm2,zmm4
  a398f9:	62 71 6c 48 5c f4    	vsubps zmm14,zmm2,zmm4
  a398ff:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x100]
  a39906:	04 
  a39907:	62 71 0c 40 58 da    	vaddps zmm11,zmm30,zmm2
  a3990d:	62 01 6c 48 5c f6    	vsubps zmm30,zmm2,zmm30
  a39913:	62 b1 44 40 58 f6    	vaddps zmm6,zmm23,zmm22
  a39919:	62 a1 44 40 5c fe    	vsubps zmm23,zmm23,zmm22
  a3991f:	62 91 54 40 58 e2    	vaddps zmm4,zmm21,zmm26
  a39925:	62 81 54 40 5c ea    	vsubps zmm21,zmm21,zmm26
  a3992b:	62 01 5c 40 58 d1    	vaddps zmm26,zmm20,zmm25
  a39931:	62 01 5c 40 5c c9    	vsubps zmm25,zmm20,zmm25
  a39937:	62 c1 6c 40 58 e5    	vaddps zmm20,zmm18,zmm13
  a3993d:	62 c1 6c 40 5c f5    	vsubps zmm22,zmm18,zmm13
  a39943:	62 e1 3c 48 58 d5    	vaddps zmm18,zmm8,zmm5
  a39949:	62 71 3c 48 5c c5    	vsubps zmm8,zmm8,zmm5
  a3994f:	62 f1 7c 48 28 2d 27 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff68d627]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a39956:	d6 68 ff 
  a39959:	62 b2 55 48 7f c3    	vpermt2ps zmm0,zmm5,zmm19
  a3995f:	62 d1 44 48 5c d1    	vsubps zmm2,zmm7,zmm9
  a39965:	62 51 44 48 58 c9    	vaddps zmm9,zmm7,zmm9
  a3996b:	62 92 55 48 7f dc    	vpermt2ps zmm3,zmm5,zmm28
  a39971:	62 52 55 48 7f e2    	vpermt2ps zmm12,zmm5,zmm10
  a39977:	62 d2 55 48 7f ce    	vpermt2ps zmm1,zmm5,zmm14
  a3997d:	62 82 55 48 7f c3    	vpermt2ps zmm16,zmm5,zmm27
  a39983:	62 b2 55 48 7f f7    	vpermt2ps zmm6,zmm5,zmm23
  a39989:	62 02 55 48 7f d1    	vpermt2ps zmm26,zmm5,zmm25
  a3998f:	62 c2 55 48 7f d0    	vpermt2ps zmm18,zmm5,zmm8
  a39995:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a3999b:	62 71 7c 48 28 15 5b 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff68d55b]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a399a2:	d5 68 ff 
  a399a5:	62 f2 2d 48 7f f9    	vpermt2ps zmm7,zmm10,zmm1
  a399ab:	62 71 7c 48 28 35 8b 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff68d58b]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a399b2:	d5 68 ff 
  a399b5:	62 f2 0d 48 7f c1    	vpermt2ps zmm0,zmm14,zmm1
  a399bb:	62 51 7c 48 28 c4    	vmovaps zmm8,zmm12
  a399c1:	62 12 2d 48 7f c2    	vpermt2ps zmm8,zmm10,zmm26
  a399c7:	62 12 0d 48 7f e2    	vpermt2ps zmm12,zmm14,zmm26
  a399cd:	62 51 fd 48 14 e4    	vunpcklpd zmm12,zmm0,zmm12
  a399d3:	62 d1 c5 48 14 c8    	vunpcklpd zmm1,zmm7,zmm8
  a399d9:	62 51 c5 48 15 e8    	vunpckhpd zmm13,zmm7,zmm8
  a399df:	62 62 55 48 7f 6c 24 	vpermt2ps zmm29,zmm5,ZMMWORD PTR [rsp+0x40]
  a399e6:	01 
  a399e7:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a399ed:	62 f2 0d 48 7f de    	vpermt2ps zmm3,zmm14,zmm6
  a399f3:	62 f2 2d 48 7f c6    	vpermt2ps zmm0,zmm10,zmm6
  a399f9:	62 62 55 48 7f 7c 24 	vpermt2ps zmm31,zmm5,ZMMWORD PTR [rsp+0x80]
  a39a00:	02 
  a39a01:	62 b1 7c 48 28 f0    	vmovaps zmm6,zmm16
  a39a07:	62 a2 0d 48 7f c2    	vpermt2ps zmm16,zmm14,zmm18
  a39a0d:	62 b2 2d 48 7f f2    	vpermt2ps zmm6,zmm10,zmm18
  a39a13:	62 e2 55 48 7f 4c 24 	vpermt2ps zmm17,zmm5,ZMMWORD PTR [rsp+0xc0]
  a39a1a:	03 
  a39a1b:	62 12 55 48 7f f8    	vpermt2ps zmm15,zmm5,zmm24
  a39a21:	62 12 55 48 7f de    	vpermt2ps zmm11,zmm5,zmm30
  a39a27:	62 b1 e5 48 14 d8    	vunpcklpd zmm3,zmm3,zmm16
  a39a2d:	62 b2 55 48 7f e5    	vpermt2ps zmm4,zmm5,zmm21
  a39a33:	62 a2 55 48 7f e6    	vpermt2ps zmm20,zmm5,zmm22
  a39a39:	62 d2 55 48 7f d1    	vpermt2ps zmm2,zmm5,zmm9
  a39a3f:	62 91 7c 48 28 ed    	vmovaps zmm5,zmm29
  a39a45:	62 d2 2d 48 7f eb    	vpermt2ps zmm5,zmm10,zmm11
  a39a4b:	62 42 0d 48 7f eb    	vpermt2ps zmm29,zmm14,zmm11
  a39a51:	62 f1 fd 48 14 fe    	vunpcklpd zmm7,zmm0,zmm6
  a39a57:	62 f1 fd 48 15 f6    	vunpckhpd zmm6,zmm0,zmm6
  a39a5d:	62 11 7c 48 28 c7    	vmovaps zmm8,zmm31
  a39a63:	62 72 2d 48 7f c4    	vpermt2ps zmm8,zmm10,zmm4
  a39a69:	62 62 0d 48 7f fc    	vpermt2ps zmm31,zmm14,zmm4
  a39a6f:	62 e1 7c 48 28 05 87 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff68d387]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a39a76:	d3 68 ff 
  a39a79:	62 72 7d 40 7f e3    	vpermt2ps zmm12,zmm16,zmm3
  a39a7f:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a39a85:	62 b2 2d 48 7f c4    	vpermt2ps zmm0,zmm10,zmm20
  a39a8b:	62 a2 0d 48 7f cc    	vpermt2ps zmm17,zmm14,zmm20
  a39a91:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a39a97:	62 f2 7d 40 7f e7    	vpermt2ps zmm4,zmm16,zmm7
  a39a9d:	62 31 95 40 14 c9    	vunpcklpd zmm9,zmm29,zmm17
  a39aa3:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a39aa9:	62 e1 7c 48 28 0d 8d 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff68d38d]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a39ab0:	d3 68 ff 
  a39ab3:	62 f2 75 40 7f cf    	vpermt2ps zmm1,zmm17,zmm7
  a39ab9:	62 d1 7c 48 28 ff    	vmovaps zmm7,zmm15
  a39abf:	62 f2 2d 48 7f fa    	vpermt2ps zmm7,zmm10,zmm2
  a39ac5:	62 72 0d 48 7f fa    	vpermt2ps zmm15,zmm14,zmm2
  a39acb:	62 f2 7d 40 7f de    	vpermt2ps zmm3,zmm16,zmm6
  a39ad1:	62 d1 85 40 14 d7    	vunpcklpd zmm2,zmm31,zmm15
  a39ad7:	62 71 d5 48 14 d0    	vunpcklpd zmm10,zmm5,zmm0
  a39add:	62 f1 d5 48 15 c0    	vunpckhpd zmm0,zmm5,zmm0
  a39ae3:	62 72 75 40 7f ee    	vpermt2ps zmm13,zmm17,zmm6
  a39ae9:	62 f1 bd 48 14 ef    	vunpcklpd zmm5,zmm8,zmm7
  a39aef:	62 f1 bd 48 15 f7    	vunpckhpd zmm6,zmm8,zmm7
  a39af5:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a39afb:	62 72 7d 40 7f dd    	vpermt2ps zmm11,zmm16,zmm5
  a39b01:	62 72 75 40 7f d5    	vpermt2ps zmm10,zmm17,zmm5
  a39b07:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a39b0d:	62 72 7d 40 7f ca    	vpermt2ps zmm9,zmm16,zmm2
  a39b13:	62 f2 7d 40 7f ee    	vpermt2ps zmm5,zmm16,zmm6
  a39b19:	62 f1 7c 48 10 51 02 	vmovups zmm2,ZMMWORD PTR [rcx+0x80]
  a39b20:	62 f1 7c 48 10 79 03 	vmovups zmm7,ZMMWORD PTR [rcx+0xc0]
  a39b27:	62 71 7c 48 10 41 04 	vmovups zmm8,ZMMWORD PTR [rcx+0x100]
  a39b2e:	62 f2 75 40 7f c6    	vpermt2ps zmm0,zmm17,zmm6
  a39b34:	62 f1 2c 48 59 f2    	vmulps zmm6,zmm10,zmm2
  a39b3a:	62 f2 75 48 b8 f7    	vfmadd231ps zmm6,zmm1,zmm7
  a39b40:	62 f1 74 48 59 ca    	vmulps zmm1,zmm1,zmm2
  a39b46:	62 f1 7c 48 10 51 09 	vmovups zmm2,ZMMWORD PTR [rcx+0x240]
  a39b4d:	62 d2 45 48 bc ca    	vfnmadd231ps zmm1,zmm7,zmm10
  a39b53:	62 f1 7c 48 10 79 08 	vmovups zmm7,ZMMWORD PTR [rcx+0x200]
  a39b5a:	62 71 34 48 59 d7    	vmulps zmm10,zmm9,zmm7
  a39b60:	62 72 1d 48 b8 d2    	vfmadd231ps zmm10,zmm12,zmm2
  a39b66:	62 f1 1c 48 59 ff    	vmulps zmm7,zmm12,zmm7
  a39b6c:	62 71 7c 48 10 61 05 	vmovups zmm12,ZMMWORD PTR [rcx+0x140]
  a39b73:	62 d2 6d 48 bc f9    	vfnmadd231ps zmm7,zmm2,zmm9
  a39b79:	62 d1 54 48 59 d0    	vmulps zmm2,zmm5,zmm8
  a39b7f:	62 d2 65 48 b8 d4    	vfmadd231ps zmm2,zmm3,zmm12
  a39b85:	62 71 7c 48 10 49 06 	vmovups zmm9,ZMMWORD PTR [rcx+0x180]
  a39b8c:	62 d1 64 48 59 d8    	vmulps zmm3,zmm3,zmm8
  a39b92:	62 71 7c 48 10 41 07 	vmovups zmm8,ZMMWORD PTR [rcx+0x1c0]
  a39b99:	62 f2 1d 48 bc dd    	vfnmadd231ps zmm3,zmm12,zmm5
  a39b9f:	62 d1 7c 48 59 e9    	vmulps zmm5,zmm0,zmm9
  a39ba5:	62 d2 15 48 b8 e8    	vfmadd231ps zmm5,zmm13,zmm8
  a39bab:	62 71 6c 48 58 e5    	vaddps zmm12,zmm2,zmm5
  a39bb1:	62 51 14 48 59 c9    	vmulps zmm9,zmm13,zmm9
  a39bb7:	62 72 7d 48 18 35 27 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff63bb27]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a39bbe:	bb 63 ff 
  a39bc1:	62 51 7c 48 28 ee    	vmovaps zmm13,zmm14
  a39bc7:	62 72 3d 48 bc c8    	vfnmadd231ps zmm9,zmm8,zmm0
  a39bcd:	62 d1 4c 48 58 c2    	vaddps zmm0,zmm6,zmm10
  a39bd3:	62 52 7d 48 a8 eb    	vfmadd213ps zmm13,zmm0,zmm11
  a39bd9:	62 51 64 48 5c c1    	vsubps zmm8,zmm3,zmm9
  a39bdf:	62 d1 64 48 58 d9    	vaddps zmm3,zmm3,zmm9
  a39be5:	62 72 7d 48 18 3d 55 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff63ba55]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a39bec:	ba 63 ff 
  a39bef:	62 52 1d 48 bc ef    	vfnmadd231ps zmm13,zmm12,zmm15
  a39bf5:	62 71 74 48 5c cf    	vsubps zmm9,zmm1,zmm7
  a39bfb:	62 f1 74 48 58 cf    	vaddps zmm1,zmm1,zmm7
  a39c01:	62 e2 7d 48 18 05 4d 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff63bb4d]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a39c08:	bb 63 ff 
  a39c0b:	62 b1 3c 48 59 f8    	vmulps zmm7,zmm8,zmm16
  a39c11:	62 e2 7d 48 18 0d 85 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff63b785]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a39c18:	b7 63 ff 
  a39c1b:	62 b2 35 48 b8 f9    	vfmadd231ps zmm7,zmm9,zmm17
  a39c21:	62 d1 4c 48 5c f2    	vsubps zmm6,zmm6,zmm10
  a39c27:	62 f1 6c 48 5c d5    	vsubps zmm2,zmm2,zmm5
  a39c2d:	62 b1 6c 48 59 e8    	vmulps zmm5,zmm2,zmm16
  a39c33:	62 b2 4d 48 b8 e9    	vfmadd231ps zmm5,zmm6,zmm17
  a39c39:	62 51 7c 48 28 d7    	vmovaps zmm10,zmm15
  a39c3f:	62 52 7d 48 ac d3    	vfnmadd213ps zmm10,zmm0,zmm11
  a39c45:	62 31 34 48 59 c8    	vmulps zmm9,zmm9,zmm16
  a39c4b:	62 52 1d 48 b8 d6    	vfmadd231ps zmm10,zmm12,zmm14
  a39c51:	62 52 75 40 bc c8    	vfnmadd231ps zmm9,zmm17,zmm8
  a39c57:	62 b1 4c 48 59 f0    	vmulps zmm6,zmm6,zmm16
  a39c5d:	62 f2 75 40 bc f2    	vfnmadd231ps zmm6,zmm17,zmm2
  a39c63:	62 d1 2c 48 58 d1    	vaddps zmm2,zmm10,zmm9
  a39c69:	62 51 7c 48 28 c7    	vmovaps zmm8,zmm15
  a39c6f:	62 72 75 48 ac c4    	vfnmadd213ps zmm8,zmm1,zmm4
  a39c75:	62 52 65 48 b8 c6    	vfmadd231ps zmm8,zmm3,zmm14
  a39c7b:	62 51 2c 48 5c c9    	vsubps zmm9,zmm10,zmm9
  a39c81:	62 71 3c 48 5c d6    	vsubps zmm10,zmm8,zmm6
  a39c87:	62 f1 3c 48 58 f6    	vaddps zmm6,zmm8,zmm6
  a39c8d:	62 71 14 48 58 c7    	vaddps zmm8,zmm13,zmm7
  a39c93:	62 f1 14 48 5c ff    	vsubps zmm7,zmm13,zmm7
  a39c99:	62 d1 7c 48 58 c3    	vaddps zmm0,zmm0,zmm11
  a39c9f:	62 d1 7c 48 58 c4    	vaddps zmm0,zmm0,zmm12
  a39ca5:	62 51 7c 48 28 de    	vmovaps zmm11,zmm14
  a39cab:	62 72 75 48 a8 dc    	vfmadd213ps zmm11,zmm1,zmm4
  a39cb1:	62 f1 5c 48 58 c9    	vaddps zmm1,zmm4,zmm1
  a39cb7:	62 52 65 48 bc df    	vfnmadd231ps zmm11,zmm3,zmm15
  a39cbd:	62 f1 74 48 58 cb    	vaddps zmm1,zmm1,zmm3
  a39cc3:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a39cc9:	62 71 7c 48 28 25 6d 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff65766d]        # 91340 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e7f0>
  a39cd0:	76 65 ff 
  a39cd3:	62 f2 1d 48 7f d8    	vpermt2ps zmm3,zmm12,zmm0
  a39cd9:	62 71 7c 48 28 2d 9d 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff65769d]        # 91380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e830>
  a39ce0:	76 65 ff 
  a39ce3:	62 f2 15 48 7f c8    	vpermt2ps zmm1,zmm13,zmm0
  a39ce9:	62 f1 24 48 5c c5    	vsubps zmm0,zmm11,zmm5
  a39cef:	62 f1 24 48 58 e5    	vaddps zmm4,zmm11,zmm5
  a39cf5:	62 f1 7c 48 11 0c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm1
  a39cfc:	62 f1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm3
  a39d03:	01 
  a39d04:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a39d0a:	62 f2 1d 48 7f cf    	vpermt2ps zmm1,zmm12,zmm7
  a39d10:	62 f2 15 48 7f e7    	vpermt2ps zmm4,zmm13,zmm7
  a39d16:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm4
  a39d1d:	02 
  a39d1e:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm1
  a39d25:	03 
  a39d26:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a39d2c:	62 d2 1d 48 7f c9    	vpermt2ps zmm1,zmm12,zmm9
  a39d32:	62 d2 15 48 7f f1    	vpermt2ps zmm6,zmm13,zmm9
  a39d38:	62 f1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm6
  a39d3f:	04 
  a39d40:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm1
  a39d47:	05 
  a39d48:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  a39d4e:	62 f2 1d 48 7f ca    	vpermt2ps zmm1,zmm12,zmm2
  a39d54:	62 72 15 48 7f d2    	vpermt2ps zmm10,zmm13,zmm2
  a39d5a:	62 71 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm10
  a39d61:	06 
  a39d62:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a39d68:	62 d2 1d 48 7f d0    	vpermt2ps zmm2,zmm12,zmm8
  a39d6e:	62 d2 15 48 7f c0    	vpermt2ps zmm0,zmm13,zmm8
  a39d74:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm1
  a39d7b:	07 
  a39d7c:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm0
  a39d83:	08 
  a39d84:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm2
  a39d8b:	09 
  a39d8c:	48 81 c2 80 02 00 00 	add    rdx,0x280
  a39d93:	48 39 d0             	cmp    rax,rdx
  a39d96:	0f 85 d4 f3 ff ff    	jne    a39170 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a39d9c:	48 89 ec             	mov    rsp,rbp
  a39d9f:	5d                   	pop    rbp
  a39da0:	c5 f8 77             	vzeroupper
  a39da3:	c3                   	ret
