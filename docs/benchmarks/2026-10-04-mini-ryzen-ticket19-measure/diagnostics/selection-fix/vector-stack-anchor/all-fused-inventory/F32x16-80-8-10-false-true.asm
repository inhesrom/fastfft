
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a65040 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a65040:	48 81 ec 88 00 00 00 	sub    rsp,0x88
  a65047:	48 c1 e2 07          	shl    rdx,0x7
  a6504b:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a6504f:	31 d2                	xor    edx,edx
  a65051:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a65058:	0f 1f 84 00 00 00 00 
  a6505f:	00 
  a65060:	62 71 7c 48 10 04 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1]
  a65067:	c5 f8 10 5c 17 40    	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x40]
  a6506d:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a65073:	62 f1 7c 48 28 05 83 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff62f083]        # 94100 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x215b0>
  a6507a:	f0 62 ff 
  a6507d:	62 f2 7d 48 7f fb    	vpermt2ps zmm7,zmm0,zmm3
  a65083:	62 f1 7c 48 28 0d b3 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff62f0b3]        # 94140 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x215f0>
  a6508a:	f0 62 ff 
  a6508d:	62 72 75 48 7f c3    	vpermt2ps zmm8,zmm1,zmm3
  a65093:	62 f1 7c 48 10 b4 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x50]
  a6509a:	50 00 00 00 
  a6509e:	c5 f8 10 9c 17 90 00 	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x90]
  a650a5:	00 00 
  a650a7:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a650ad:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a650b3:	62 f2 75 48 7f f3    	vpermt2ps zmm6,zmm1,zmm3
  a650b9:	62 e1 7c 48 10 84 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0xa0]
  a650c0:	a0 00 00 00 
  a650c4:	c5 78 10 bc 17 e0 00 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0xe0]
  a650cb:	00 00 
  a650cd:	62 b1 7c 48 28 d8    	vmovaps zmm3,zmm16
  a650d3:	62 d2 7d 48 7f df    	vpermt2ps zmm3,zmm0,zmm15
  a650d9:	62 c2 75 48 7f c7    	vpermt2ps zmm16,zmm1,zmm15
  a650df:	62 e1 7c 48 10 8c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a650e6:	f0 00 00 00 
  a650ea:	c5 78 10 bc 17 30 01 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x130]
  a650f1:	00 00 
  a650f3:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a650f9:	62 c2 7d 48 7f d7    	vpermt2ps zmm18,zmm0,zmm15
  a650ff:	62 c2 75 48 7f cf    	vpermt2ps zmm17,zmm1,zmm15
  a65105:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x140]
  a6510c:	05 
  a6510d:	c5 78 10 bc 17 80 01 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x180]
  a65114:	00 00 
  a65116:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a6511c:	62 c2 7d 48 7f e7    	vpermt2ps zmm20,zmm0,zmm15
  a65122:	62 c2 75 48 7f df    	vpermt2ps zmm19,zmm1,zmm15
  a65128:	62 e1 7c 48 10 ac 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x190]
  a6512f:	90 01 00 00 
  a65133:	c5 78 10 bc 17 d0 01 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x1d0]
  a6513a:	00 00 
  a6513c:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a65142:	62 c2 7d 48 7f f7    	vpermt2ps zmm22,zmm0,zmm15
  a65148:	62 c2 75 48 7f ef    	vpermt2ps zmm21,zmm1,zmm15
  a6514e:	62 e1 7c 48 10 bc 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a65155:	e0 01 00 00 
  a65159:	c5 78 10 bc 17 20 02 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x220]
  a65160:	00 00 
  a65162:	62 21 7c 48 28 c7    	vmovaps zmm24,zmm23
  a65168:	62 42 7d 48 7f c7    	vpermt2ps zmm24,zmm0,zmm15
  a6516e:	62 c2 75 48 7f ff    	vpermt2ps zmm23,zmm1,zmm15
  a65174:	62 61 7c 48 10 8c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x230]
  a6517b:	30 02 00 00 
  a6517f:	c5 78 10 bc 17 70 02 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x270]
  a65186:	00 00 
  a65188:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a6518e:	62 42 7d 48 7f d7    	vpermt2ps zmm26,zmm0,zmm15
  a65194:	62 42 75 48 7f cf    	vpermt2ps zmm25,zmm1,zmm15
  a6519a:	62 21 44 48 58 dc    	vaddps zmm27,zmm7,zmm20
  a651a0:	62 01 64 48 58 e0    	vaddps zmm28,zmm3,zmm24
  a651a6:	62 01 24 40 58 ec    	vaddps zmm29,zmm27,zmm28
  a651ac:	62 21 2c 48 58 f6    	vaddps zmm30,zmm10,zmm22
  a651b2:	62 01 6c 40 58 fa    	vaddps zmm31,zmm18,zmm26
  a651b8:	62 11 0c 40 58 df    	vaddps zmm11,zmm30,zmm31
  a651be:	62 51 14 40 58 fb    	vaddps zmm15,zmm29,zmm11
  a651c4:	62 31 3c 48 58 eb    	vaddps zmm13,zmm8,zmm19
  a651ca:	62 31 7c 40 58 cf    	vaddps zmm9,zmm16,zmm23
  a651d0:	62 d1 14 48 58 e1    	vaddps zmm4,zmm13,zmm9
  a651d6:	62 b1 4c 48 58 ed    	vaddps zmm5,zmm6,zmm21
  a651dc:	62 a1 44 48 5c e4    	vsubps zmm20,zmm7,zmm20
  a651e2:	62 11 74 40 58 f1    	vaddps zmm14,zmm17,zmm25
  a651e8:	62 a1 7c 40 5c ff    	vsubps zmm23,zmm16,zmm23
  a651ee:	62 d1 54 48 58 c6    	vaddps zmm0,zmm5,zmm14
  a651f4:	62 b1 2c 48 5c fe    	vsubps zmm7,zmm10,zmm22
  a651fa:	62 f1 5c 48 58 c8    	vaddps zmm1,zmm4,zmm0
  a65200:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a65207:	ff 
  a65208:	62 b1 4c 48 5c f5    	vsubps zmm6,zmm6,zmm21
  a6520e:	62 31 5c 40 58 d7    	vaddps zmm10,zmm20,zmm23
  a65214:	62 81 74 40 5c e9    	vsubps zmm21,zmm17,zmm25
  a6521a:	62 e1 44 48 58 ce    	vaddps zmm17,zmm7,zmm6
  a65220:	62 f2 7d 48 18 15 72 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff610172]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a65227:	01 61 ff 
  a6522a:	62 e1 74 40 59 f2    	vmulps zmm22,zmm17,zmm2
  a65230:	62 81 6c 40 5c d2    	vsubps zmm18,zmm18,zmm26
  a65236:	62 a1 54 40 5c ca    	vsubps zmm17,zmm21,zmm18
  a6523c:	62 61 74 40 59 ca    	vmulps zmm25,zmm17,zmm2
  a65242:	62 31 3c 48 5c c3    	vsubps zmm8,zmm8,zmm19
  a65248:	62 81 4c 40 58 d9    	vaddps zmm19,zmm22,zmm25
  a6524e:	62 61 3c 40 5c c3    	vsubps zmm24,zmm24,zmm3
  a65254:	62 a1 2c 48 58 cb    	vaddps zmm17,zmm10,zmm19
  a6525a:	62 f1 4c 48 5c df    	vsubps zmm3,zmm6,zmm7
  a65260:	62 d1 3c 40 58 c8    	vaddps zmm1,zmm24,zmm8
  a65266:	62 f1 64 48 59 f2    	vmulps zmm6,zmm3,zmm2
  a6526c:	62 b1 6c 40 58 dd    	vaddps zmm3,zmm18,zmm21
  a65272:	62 e1 64 48 59 d2    	vmulps zmm18,zmm3,zmm2
  a65278:	62 a1 4c 48 5c ea    	vsubps zmm21,zmm6,zmm18
  a6527e:	62 01 24 40 5c dc    	vsubps zmm27,zmm27,zmm28
  a65284:	62 21 74 48 58 d5    	vaddps zmm26,zmm1,zmm21
  a6528a:	62 d1 54 48 5c ee    	vsubps zmm5,zmm5,zmm14
  a65290:	62 f1 24 40 58 dd    	vaddps zmm3,zmm27,zmm5
  a65296:	62 51 14 48 5c c9    	vsubps zmm9,zmm13,zmm9
  a6529c:	62 11 04 40 5c ee    	vsubps zmm13,zmm31,zmm30
  a652a2:	62 c1 14 48 58 c1    	vaddps zmm16,zmm13,zmm9
  a652a8:	62 31 5c 40 5c f7    	vsubps zmm14,zmm20,zmm23
  a652ae:	62 a1 4c 48 58 d2    	vaddps zmm18,zmm6,zmm18
  a652b4:	62 b1 0c 48 58 f2    	vaddps zmm6,zmm14,zmm18
  a652ba:	62 81 3c 48 5c e0    	vsubps zmm20,zmm8,zmm24
  a652c0:	62 a1 34 40 5c f6    	vsubps zmm22,zmm25,zmm22
  a652c6:	62 21 5c 40 58 e6    	vaddps zmm28,zmm20,zmm22
  a652cc:	62 51 14 40 5c db    	vsubps zmm11,zmm29,zmm11
  a652d2:	62 61 5c 48 5c e8    	vsubps zmm29,zmm4,zmm0
  a652d8:	62 31 2c 48 5c c3    	vsubps zmm8,zmm10,zmm19
  a652de:	62 21 74 48 5c fd    	vsubps zmm31,zmm1,zmm21
  a652e4:	62 f1 24 40 5c cd    	vsubps zmm1,zmm27,zmm5
  a652ea:	62 41 34 48 5c f5    	vsubps zmm30,zmm9,zmm13
  a652f0:	62 b1 0c 48 5c e2    	vsubps zmm4,zmm14,zmm18
  a652f6:	62 b1 5c 40 5c c6    	vsubps zmm0,zmm20,zmm22
  a652fc:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a65303:	fe 
  a65304:	62 d1 7c 48 28 ef    	vmovaps zmm5,zmm15
  a6530a:	62 f1 7c 48 28 15 6c 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff661c6c]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a65311:	1c 66 ff 
  a65314:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a65318:	62 f2 6d 48 7f e8    	vpermt2ps zmm5,zmm2,zmm0
  a6531e:	62 71 7c 48 28 25 98 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff661c98]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a65325:	1c 66 ff 
  a65328:	62 72 1d 48 7f f8    	vpermt2ps zmm15,zmm12,zmm0
  a6532e:	62 31 7c 48 28 c9    	vmovaps zmm9,zmm17
  a65334:	62 72 6d 48 7f c8    	vpermt2ps zmm9,zmm2,zmm0
  a6533a:	62 e2 1d 48 7f c8    	vpermt2ps zmm17,zmm12,zmm0
  a65340:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a65346:	62 72 6d 48 7f d0    	vpermt2ps zmm10,zmm2,zmm0
  a6534c:	62 f2 1d 48 7f d8    	vpermt2ps zmm3,zmm12,zmm0
  a65352:	62 71 7c 48 28 ee    	vmovaps zmm13,zmm6
  a65358:	62 72 6d 48 7f e8    	vpermt2ps zmm13,zmm2,zmm0
  a6535e:	62 f2 1d 48 7f f0    	vpermt2ps zmm6,zmm12,zmm0
  a65364:	62 51 7c 48 28 f3    	vmovaps zmm14,zmm11
  a6536a:	62 72 6d 48 7f f0    	vpermt2ps zmm14,zmm2,zmm0
  a65370:	62 72 1d 48 7f d8    	vpermt2ps zmm11,zmm12,zmm0
  a65376:	62 c1 7c 48 28 d0    	vmovaps zmm18,zmm8
  a6537c:	62 e2 6d 48 7f d0    	vpermt2ps zmm18,zmm2,zmm0
  a65382:	62 72 1d 48 7f c0    	vpermt2ps zmm8,zmm12,zmm0
  a65388:	62 e1 7c 48 28 d9    	vmovaps zmm19,zmm1
  a6538e:	62 e2 6d 48 7f d8    	vpermt2ps zmm19,zmm2,zmm0
  a65394:	62 f2 1d 48 7f c8    	vpermt2ps zmm1,zmm12,zmm0
  a6539a:	62 e1 7c 48 28 e4    	vmovaps zmm20,zmm4
  a653a0:	62 e2 6d 48 7f e0    	vpermt2ps zmm20,zmm2,zmm0
  a653a6:	62 f2 1d 48 7f e0    	vpermt2ps zmm4,zmm12,zmm0
  a653ac:	62 e1 7c 48 28 ed    	vmovaps zmm21,zmm5
  a653b2:	62 61 7c 48 28 0d 44 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff661b44]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a653b9:	1b 66 ff 
  a653bc:	62 c2 35 40 7f ee    	vpermt2ps zmm21,zmm25,zmm14
  a653c2:	62 61 7c 48 28 1d 74 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff661b74]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a653c9:	1b 66 ff 
  a653cc:	62 d2 25 40 7f ee    	vpermt2ps zmm5,zmm27,zmm14
  a653d2:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  a653d8:	62 32 35 40 7f f2    	vpermt2ps zmm14,zmm25,zmm18
  a653de:	62 32 25 40 7f ca    	vpermt2ps zmm9,zmm27,zmm18
  a653e4:	62 c1 7c 48 28 f2    	vmovaps zmm22,zmm10
  a653ea:	62 a2 35 40 7f f3    	vpermt2ps zmm22,zmm25,zmm19
  a653f0:	62 32 25 40 7f d3    	vpermt2ps zmm10,zmm27,zmm19
  a653f6:	62 c1 7c 48 28 fd    	vmovaps zmm23,zmm13
  a653fc:	62 a2 35 40 7f fc    	vpermt2ps zmm23,zmm25,zmm20
  a65402:	62 32 25 40 7f ec    	vpermt2ps zmm13,zmm27,zmm20
  a65408:	62 52 35 40 7f fb    	vpermt2ps zmm15,zmm25,zmm11
  a6540e:	62 c2 35 40 7f c8    	vpermt2ps zmm17,zmm25,zmm8
  a65414:	62 f2 35 40 7f d9    	vpermt2ps zmm3,zmm25,zmm1
  a6541a:	62 e1 85 48 14 d3    	vunpcklpd zmm18,zmm15,zmm3
  a65420:	62 f2 35 40 7f f4    	vpermt2ps zmm6,zmm25,zmm4
  a65426:	62 f1 f5 40 14 f6    	vunpcklpd zmm6,zmm17,zmm6
  a6542c:	62 b1 d5 40 14 fe    	vunpcklpd zmm7,zmm21,zmm22
  a65432:	62 a1 d5 40 15 ce    	vunpckhpd zmm17,zmm21,zmm22
  a65438:	62 b1 8d 48 14 cf    	vunpcklpd zmm1,zmm14,zmm23
  a6543e:	62 b1 8d 48 15 df    	vunpckhpd zmm3,zmm14,zmm23
  a65444:	62 c1 d5 48 14 ea    	vunpcklpd zmm21,zmm5,zmm10
  a6544a:	62 c1 d5 48 15 e2    	vunpckhpd zmm20,zmm5,zmm10
  a65450:	62 d1 b5 48 14 e5    	vunpcklpd zmm4,zmm9,zmm13
  a65456:	62 d1 b5 48 15 ed    	vunpckhpd zmm5,zmm9,zmm13
  a6545c:	62 71 7c 48 28 ff    	vmovaps zmm15,zmm7
  a65462:	62 71 7c 48 28 35 94 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff661994]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a65469:	19 66 ff 
  a6546c:	62 72 0d 48 7f f9    	vpermt2ps zmm15,zmm14,zmm1
  a65472:	62 71 7c 48 28 1d c4 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6619c4]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a65479:	19 66 ff 
  a6547c:	62 f2 25 48 7f f9    	vpermt2ps zmm7,zmm11,zmm1
  a65482:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm7
  a65489:	01 
  a6548a:	62 a1 7c 48 28 d9    	vmovaps zmm19,zmm17
  a65490:	62 e2 0d 48 7f db    	vpermt2ps zmm19,zmm14,zmm3
  a65496:	62 e2 25 48 7f cb    	vpermt2ps zmm17,zmm11,zmm3
  a6549c:	62 a1 7c 48 28 fd    	vmovaps zmm23,zmm21
  a654a2:	62 e2 0d 48 7f fc    	vpermt2ps zmm23,zmm14,zmm4
  a654a8:	62 e2 25 48 7f ec    	vpermt2ps zmm21,zmm11,zmm4
  a654ae:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a654b4:	62 e2 0d 48 7f f5    	vpermt2ps zmm22,zmm14,zmm5
  a654ba:	62 e2 25 48 7f e5    	vpermt2ps zmm20,zmm11,zmm5
  a654c0:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a654c6:	62 e2 0d 48 7f d6    	vpermt2ps zmm18,zmm14,zmm6
  a654cc:	62 f2 25 48 7f ce    	vpermt2ps zmm1,zmm11,zmm6
  a654d2:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a654d9:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp-0x40]
  a654e0:	ff 
  a654e1:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a654e7:	62 f2 6d 48 7f f0    	vpermt2ps zmm6,zmm2,zmm0
  a654ed:	62 01 7c 48 28 c2    	vmovaps zmm24,zmm26
  a654f3:	62 11 7c 48 28 ea    	vmovaps zmm13,zmm26
  a654f9:	62 62 6d 48 7f c0    	vpermt2ps zmm24,zmm2,zmm0
  a654ff:	62 21 7c 48 28 d0    	vmovaps zmm26,zmm16
  a65505:	62 62 6d 48 7f d0    	vpermt2ps zmm26,zmm2,zmm0
  a6550b:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a65511:	62 f2 6d 48 7f c8    	vpermt2ps zmm1,zmm2,zmm0
  a65517:	62 91 7c 48 28 dd    	vmovaps zmm3,zmm29
  a6551d:	62 f2 6d 48 7f d8    	vpermt2ps zmm3,zmm2,zmm0
  a65523:	62 91 7c 48 28 e7    	vmovaps zmm4,zmm31
  a65529:	62 f2 6d 48 7f e0    	vpermt2ps zmm4,zmm2,zmm0
  a6552f:	62 91 7c 48 28 ee    	vmovaps zmm5,zmm30
  a65535:	62 f2 6d 48 7f e8    	vpermt2ps zmm5,zmm2,zmm0
  a6553b:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp-0x80]
  a65542:	fe 
  a65543:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a65549:	62 72 6d 48 7f c8    	vpermt2ps zmm9,zmm2,zmm0
  a6554f:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a65555:	62 72 35 40 7f d3    	vpermt2ps zmm10,zmm25,zmm3
  a6555b:	62 f2 25 40 7f f3    	vpermt2ps zmm6,zmm27,zmm3
  a65561:	62 91 7c 48 28 d8    	vmovaps zmm3,zmm24
  a65567:	62 f2 35 40 7f dc    	vpermt2ps zmm3,zmm25,zmm4
  a6556d:	62 62 25 40 7f c4    	vpermt2ps zmm24,zmm27,zmm4
  a65573:	62 91 7c 48 28 e2    	vmovaps zmm4,zmm26
  a65579:	62 f2 35 40 7f e5    	vpermt2ps zmm4,zmm25,zmm5
  a6557f:	62 62 25 40 7f d5    	vpermt2ps zmm26,zmm27,zmm5
  a65585:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a6558b:	62 d2 35 40 7f e9    	vpermt2ps zmm5,zmm25,zmm9
  a65591:	62 d2 25 40 7f c9    	vpermt2ps zmm1,zmm27,zmm9
  a65597:	62 f2 1d 48 7f f8    	vpermt2ps zmm7,zmm12,zmm0
  a6559d:	62 62 1d 48 7f e8    	vpermt2ps zmm29,zmm12,zmm0
  a655a3:	62 92 35 40 7f fd    	vpermt2ps zmm7,zmm25,zmm29
  a655a9:	62 72 1d 48 7f e8    	vpermt2ps zmm13,zmm12,zmm0
  a655af:	62 62 1d 48 7f f8    	vpermt2ps zmm31,zmm12,zmm0
  a655b5:	62 12 35 40 7f ef    	vpermt2ps zmm13,zmm25,zmm31
  a655bb:	62 e2 1d 48 7f c0    	vpermt2ps zmm16,zmm12,zmm0
  a655c1:	62 62 1d 48 7f f0    	vpermt2ps zmm30,zmm12,zmm0
  a655c7:	62 82 35 40 7f c6    	vpermt2ps zmm16,zmm25,zmm30
  a655cd:	62 62 1d 48 7f e0    	vpermt2ps zmm28,zmm12,zmm0
  a655d3:	62 72 1d 48 7f c0    	vpermt2ps zmm8,zmm12,zmm0
  a655d9:	62 31 c5 48 14 e0    	vunpcklpd zmm12,zmm7,zmm16
  a655df:	62 42 35 40 7f e0    	vpermt2ps zmm28,zmm25,zmm8
  a655e5:	62 91 95 48 14 fc    	vunpcklpd zmm7,zmm13,zmm28
  a655eb:	62 f1 ad 48 14 d4    	vunpcklpd zmm2,zmm10,zmm4
  a655f1:	62 61 ad 48 15 e4    	vunpckhpd zmm28,zmm10,zmm4
  a655f7:	62 f1 e5 48 14 e5    	vunpcklpd zmm4,zmm3,zmm5
  a655fd:	62 f1 e5 48 15 ed    	vunpckhpd zmm5,zmm3,zmm5
  a65603:	62 91 cd 48 14 da    	vunpcklpd zmm3,zmm6,zmm26
  a65609:	62 01 cd 48 15 ea    	vunpckhpd zmm29,zmm6,zmm26
  a6560f:	62 f1 bd 40 14 c1    	vunpcklpd zmm0,zmm24,zmm1
  a65615:	62 f1 bd 40 15 c9    	vunpckhpd zmm1,zmm24,zmm1
  a6561b:	62 e1 7c 48 28 c2    	vmovaps zmm16,zmm2
  a65621:	62 e2 0d 48 7f c4    	vpermt2ps zmm16,zmm14,zmm4
  a65627:	62 f2 25 48 7f d4    	vpermt2ps zmm2,zmm11,zmm4
  a6562d:	62 91 7c 48 28 f4    	vmovaps zmm6,zmm28
  a65633:	62 f2 0d 48 7f f5    	vpermt2ps zmm6,zmm14,zmm5
  a65639:	62 62 25 48 7f e5    	vpermt2ps zmm28,zmm11,zmm5
  a6563f:	62 61 7c 48 28 f3    	vmovaps zmm30,zmm3
  a65645:	62 62 0d 48 7f f0    	vpermt2ps zmm30,zmm14,zmm0
  a6564b:	62 f2 25 48 7f d8    	vpermt2ps zmm3,zmm11,zmm0
  a65651:	62 01 7c 48 28 fd    	vmovaps zmm31,zmm29
  a65657:	62 62 0d 48 7f f9    	vpermt2ps zmm31,zmm14,zmm1
  a6565d:	62 62 25 48 7f e9    	vpermt2ps zmm29,zmm11,zmm1
  a65663:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a65669:	62 f2 0d 48 7f c7    	vpermt2ps zmm0,zmm14,zmm7
  a6566f:	62 72 25 48 7f e7    	vpermt2ps zmm12,zmm11,zmm7
  a65675:	62 f1 7c 48 10 49 04 	vmovups zmm1,ZMMWORD PTR [rcx+0x100]
  a6567c:	62 f1 7c 48 10 61 05 	vmovups zmm4,ZMMWORD PTR [rcx+0x140]
  a65683:	62 61 64 40 59 c1    	vmulps zmm24,zmm19,zmm1
  a65689:	62 62 4d 48 bc c4    	vfnmadd231ps zmm24,zmm6,zmm4
  a6568f:	62 f1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm1
  a65695:	62 f1 7c 48 10 49 10 	vmovups zmm1,ZMMWORD PTR [rcx+0x400]
  a6569c:	62 b2 5d 48 b8 f3    	vfmadd231ps zmm6,zmm4,zmm19
  a656a2:	62 f1 7c 48 10 61 11 	vmovups zmm4,ZMMWORD PTR [rcx+0x440]
  a656a9:	62 61 6c 40 59 c9    	vmulps zmm25,zmm18,zmm1
  a656af:	62 62 7d 48 bc cc    	vfnmadd231ps zmm25,zmm0,zmm4
  a656b5:	62 71 7c 48 59 d1    	vmulps zmm10,zmm0,zmm1
  a656bb:	62 f1 7c 48 10 41 08 	vmovups zmm0,ZMMWORD PTR [rcx+0x200]
  a656c2:	62 32 5d 48 b8 d2    	vfmadd231ps zmm10,zmm4,zmm18
  a656c8:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  a656cf:	62 61 44 40 59 d8    	vmulps zmm27,zmm23,zmm0
  a656d5:	62 62 0d 40 bc d9    	vfnmadd231ps zmm27,zmm30,zmm1
  a656db:	62 f1 0c 40 59 c0    	vmulps zmm0,zmm30,zmm0
  a656e1:	62 f1 7c 48 10 61 0c 	vmovups zmm4,ZMMWORD PTR [rcx+0x300]
  a656e8:	62 b2 75 48 b8 c7    	vfmadd231ps zmm0,zmm1,zmm23
  a656ee:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  a656f5:	62 61 4c 40 59 f4    	vmulps zmm30,zmm22,zmm4
  a656fb:	62 62 05 40 bc f1    	vfnmadd231ps zmm30,zmm31,zmm1
  a65701:	62 f1 04 40 59 e4    	vmulps zmm4,zmm31,zmm4
  a65707:	62 f1 7c 48 10 69 0a 	vmovups zmm5,ZMMWORD PTR [rcx+0x280]
  a6570e:	62 b2 75 48 b8 e6    	vfmadd231ps zmm4,zmm1,zmm22
  a65714:	62 f1 7c 48 10 49 0b 	vmovups zmm1,ZMMWORD PTR [rcx+0x2c0]
  a6571b:	62 e1 54 40 59 fd    	vmulps zmm23,zmm21,zmm5
  a65721:	62 e2 65 48 bc f9    	vfnmadd231ps zmm23,zmm3,zmm1
  a65727:	62 e1 64 48 59 f5    	vmulps zmm22,zmm3,zmm5
  a6572d:	62 f1 7c 48 10 69 0e 	vmovups zmm5,ZMMWORD PTR [rcx+0x380]
  a65734:	62 a2 75 48 b8 f5    	vfmadd231ps zmm22,zmm1,zmm21
  a6573a:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a65741:	62 f1 5c 40 59 dd    	vmulps zmm3,zmm20,zmm5
  a65747:	62 f2 15 40 bc d9    	vfnmadd231ps zmm3,zmm29,zmm1
  a6574d:	62 f1 14 40 59 ed    	vmulps zmm5,zmm29,zmm5
  a65753:	62 71 7c 48 10 49 06 	vmovups zmm9,ZMMWORD PTR [rcx+0x180]
  a6575a:	62 b2 75 48 b8 ec    	vfmadd231ps zmm5,zmm1,zmm20
  a65760:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a65767:	62 d1 74 40 59 f9    	vmulps zmm7,zmm17,zmm9
  a6576d:	62 f2 1d 40 bc f9    	vfnmadd231ps zmm7,zmm28,zmm1
  a65773:	62 51 1c 40 59 c9    	vmulps zmm9,zmm28,zmm9
  a65779:	62 71 7c 48 10 59 12 	vmovups zmm11,ZMMWORD PTR [rcx+0x480]
  a65780:	62 32 75 48 b8 c9    	vfmadd231ps zmm9,zmm1,zmm17
  a65786:	62 f1 7c 48 10 49 13 	vmovups zmm1,ZMMWORD PTR [rcx+0x4c0]
  a6578d:	62 71 7c 48 10 04 24 	vmovups zmm8,ZMMWORD PTR [rsp]
  a65794:	62 51 3c 48 59 eb    	vmulps zmm13,zmm8,zmm11
  a6579a:	62 72 1d 48 bc e9    	vfnmadd231ps zmm13,zmm12,zmm1
  a657a0:	62 51 1c 48 59 db    	vmulps zmm11,zmm12,zmm11
  a657a6:	62 71 7c 48 10 71 02 	vmovups zmm14,ZMMWORD PTR [rcx+0x80]
  a657ad:	62 52 75 48 b8 d8    	vfmadd231ps zmm11,zmm1,zmm8
  a657b3:	62 f1 7c 48 10 49 03 	vmovups zmm1,ZMMWORD PTR [rcx+0xc0]
  a657ba:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x40]
  a657c1:	01 
  a657c2:	62 41 1c 48 59 d6    	vmulps zmm26,zmm12,zmm14
  a657c8:	62 62 6d 48 bc d1    	vfnmadd231ps zmm26,zmm2,zmm1
  a657ce:	62 51 6c 48 59 c6    	vmulps zmm8,zmm2,zmm14
  a657d4:	62 52 75 48 b8 c4    	vfmadd231ps zmm8,zmm1,zmm12
  a657da:	62 91 3c 40 58 c9    	vaddps zmm1,zmm24,zmm25
  a657e0:	62 c1 4c 48 58 da    	vaddps zmm19,zmm6,zmm10
  a657e6:	62 d1 4c 48 5c f2    	vsubps zmm6,zmm6,zmm10
  a657ec:	62 e1 7c 48 58 ec    	vaddps zmm21,zmm0,zmm4
  a657f2:	62 f1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm4
  a657f8:	62 c1 54 48 58 d1    	vaddps zmm18,zmm5,zmm9
  a657fe:	62 d1 54 48 5c e1    	vsubps zmm4,zmm5,zmm9
  a65804:	62 c1 24 48 58 e0    	vaddps zmm20,zmm11,zmm8
  a6580a:	62 d1 24 48 5c e8    	vsubps zmm5,zmm11,zmm8
  a65810:	62 71 04 48 58 c1    	vaddps zmm8,zmm15,zmm1
  a65816:	62 11 3c 40 5c c9    	vsubps zmm9,zmm24,zmm25
  a6581c:	62 11 24 40 58 d6    	vaddps zmm10,zmm27,zmm30
  a65822:	62 51 3c 48 58 c2    	vaddps zmm8,zmm8,zmm10
  a65828:	62 11 24 40 5c de    	vsubps zmm11,zmm27,zmm30
  a6582e:	62 71 64 48 58 f7    	vaddps zmm14,zmm3,zmm7
  a65834:	62 f1 64 48 5c ff    	vsubps zmm7,zmm3,zmm7
  a6583a:	62 01 14 48 58 ca    	vaddps zmm25,zmm13,zmm26
  a65840:	62 11 14 48 5c ea    	vsubps zmm13,zmm13,zmm26
  a65846:	62 f2 7d 48 18 15 98 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff60fe98]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a6584d:	fe 60 ff 
  a65850:	62 61 7c 48 28 c2    	vmovaps zmm24,zmm2
  a65856:	62 42 75 48 a8 c7    	vfmadd213ps zmm24,zmm1,zmm15
  a6585c:	62 72 7d 48 18 25 de 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff60fdde]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a65863:	fd 60 ff 
  a65866:	62 72 1d 48 bc f9    	vfnmadd231ps zmm15,zmm12,zmm1
  a6586c:	62 d1 44 40 58 ce    	vaddps zmm1,zmm23,zmm14
  a65872:	62 81 74 48 58 c9    	vaddps zmm17,zmm1,zmm25
  a65878:	62 42 2d 48 bc c4    	vfnmadd231ps zmm24,zmm10,zmm12
  a6587e:	62 52 6d 48 b8 fa    	vfmadd231ps zmm15,zmm2,zmm10
  a65884:	62 62 7d 48 18 15 ca 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff60feca]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a6588b:	fe 60 ff 
  a6588e:	62 91 7c 48 59 ca    	vmulps zmm1,zmm0,zmm26
  a65894:	62 62 7d 48 18 1d 02 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff60fb02]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a6589b:	fb 60 ff 
  a6589e:	62 92 4d 48 b8 cb    	vfmadd231ps zmm1,zmm6,zmm27
  a658a4:	62 91 4c 48 59 f2    	vmulps zmm6,zmm6,zmm26
  a658aa:	62 f2 25 40 bc f0    	vfnmadd231ps zmm6,zmm27,zmm0
  a658b0:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a658b6:	62 b2 0d 48 a8 c7    	vfmadd213ps zmm0,zmm14,zmm23
  a658bc:	62 c2 1d 48 bc fe    	vfnmadd231ps zmm23,zmm12,zmm14
  a658c2:	62 b1 64 40 58 d8    	vaddps zmm3,zmm19,zmm16
  a658c8:	62 f1 54 40 58 db    	vaddps zmm3,zmm21,zmm3
  a658ce:	62 d2 35 40 bc c4    	vfnmadd231ps zmm0,zmm25,zmm12
  a658d4:	62 82 6d 48 b8 f9    	vfmadd231ps zmm23,zmm2,zmm25
  a658da:	62 11 54 48 59 d2    	vmulps zmm10,zmm5,zmm26
  a658e0:	62 12 5d 48 b8 d3    	vfmadd231ps zmm10,zmm4,zmm27
  a658e6:	62 91 5c 48 59 e2    	vmulps zmm4,zmm4,zmm26
  a658ec:	62 f2 25 40 bc e5    	vfnmadd231ps zmm4,zmm27,zmm5
  a658f2:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a658f8:	62 b2 65 40 a8 e8    	vfmadd213ps zmm5,zmm19,zmm16
  a658fe:	62 a2 1d 48 bc c3    	vfnmadd231ps zmm16,zmm12,zmm19
  a65904:	62 31 4c 40 58 f2    	vaddps zmm14,zmm22,zmm18
  a6590a:	62 d2 55 40 bc ec    	vfnmadd231ps zmm5,zmm21,zmm12
  a65910:	62 a2 6d 48 b8 c5    	vfmadd231ps zmm16,zmm2,zmm21
  a65916:	62 81 24 48 59 da    	vmulps zmm19,zmm11,zmm26
  a6591c:	62 82 35 48 b8 db    	vfmadd231ps zmm19,zmm9,zmm27
  a65922:	62 11 34 48 59 ca    	vmulps zmm9,zmm9,zmm26
  a65928:	62 52 25 40 bc cb    	vfnmadd231ps zmm9,zmm27,zmm11
  a6592e:	62 71 7c 48 28 da    	vmovaps zmm11,zmm2
  a65934:	62 32 6d 40 a8 de    	vfmadd213ps zmm11,zmm18,zmm22
  a6593a:	62 a2 1d 48 bc f2    	vfnmadd231ps zmm22,zmm12,zmm18
  a65940:	62 31 0c 48 58 f4    	vaddps zmm14,zmm14,zmm20
  a65946:	62 52 5d 40 bc dc    	vfnmadd231ps zmm11,zmm20,zmm12
  a6594c:	62 a2 6d 48 b8 f4    	vfmadd231ps zmm22,zmm2,zmm20
  a65952:	62 81 14 48 59 d2    	vmulps zmm18,zmm13,zmm26
  a65958:	62 82 45 48 b8 d3    	vfmadd231ps zmm18,zmm7,zmm27
  a6595e:	62 91 44 48 59 fa    	vmulps zmm7,zmm7,zmm26
  a65964:	62 d2 25 40 bc fd    	vfnmadd231ps zmm7,zmm27,zmm13
  a6596a:	62 71 04 48 58 ee    	vaddps zmm13,zmm15,zmm6
  a65970:	62 f1 04 48 5c f6    	vsubps zmm6,zmm15,zmm6
  a65976:	62 71 44 40 58 fc    	vaddps zmm15,zmm23,zmm4
  a6597c:	62 f1 44 40 5c e4    	vsubps zmm4,zmm23,zmm4
  a65982:	62 c1 7c 40 5c e1    	vsubps zmm20,zmm16,zmm9
  a65988:	62 31 34 48 58 c8    	vaddps zmm9,zmm9,zmm16
  a6598e:	62 e1 4c 40 5c c7    	vsubps zmm16,zmm22,zmm7
  a65994:	62 f1 4c 40 58 ff    	vaddps zmm7,zmm22,zmm7
  a6599a:	62 e1 3c 40 58 e9    	vaddps zmm21,zmm24,zmm1
  a659a0:	62 f1 3c 40 5c c9    	vsubps zmm1,zmm24,zmm1
  a659a6:	62 c1 7c 48 58 f2    	vaddps zmm22,zmm0,zmm10
  a659ac:	62 d1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm10
  a659b2:	62 31 54 48 5c d3    	vsubps zmm10,zmm5,zmm19
  a659b8:	62 f1 64 40 58 ed    	vaddps zmm5,zmm19,zmm5
  a659be:	62 a1 24 48 5c da    	vsubps zmm19,zmm11,zmm18
  a659c4:	62 31 24 48 58 da    	vaddps zmm11,zmm11,zmm18
  a659ca:	62 a1 54 40 5c d6    	vsubps zmm18,zmm21,zmm22
  a659d0:	62 a1 54 40 58 ee    	vaddps zmm21,zmm21,zmm22
  a659d6:	62 a1 2c 48 5c f3    	vsubps zmm22,zmm10,zmm19
  a659dc:	62 31 2c 48 58 d3    	vaddps zmm10,zmm10,zmm19
  a659e2:	62 c1 14 48 58 df    	vaddps zmm19,zmm13,zmm15
  a659e8:	62 51 14 48 5c ef    	vsubps zmm13,zmm13,zmm15
  a659ee:	62 31 5c 40 58 f8    	vaddps zmm15,zmm20,zmm16
  a659f4:	62 a1 5c 40 5c c0    	vsubps zmm16,zmm20,zmm16
  a659fa:	62 e1 4c 48 5c e4    	vsubps zmm20,zmm6,zmm4
  a65a00:	62 f1 4c 48 58 e4    	vaddps zmm4,zmm6,zmm4
  a65a06:	62 f1 34 48 5c f7    	vsubps zmm6,zmm9,zmm7
  a65a0c:	62 f1 34 48 58 ff    	vaddps zmm7,zmm9,zmm7
  a65a12:	62 71 74 48 58 c8    	vaddps zmm9,zmm1,zmm0
  a65a18:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a65a1e:	62 d1 54 48 58 cb    	vaddps zmm1,zmm5,zmm11
  a65a24:	62 d1 54 48 5c eb    	vsubps zmm5,zmm5,zmm11
  a65a2a:	62 31 3c 48 5c d9    	vsubps zmm11,zmm8,zmm17
  a65a30:	62 31 3c 48 58 c1    	vaddps zmm8,zmm8,zmm17
  a65a36:	62 c1 64 48 5c ce    	vsubps zmm17,zmm3,zmm14
  a65a3c:	62 d1 64 48 58 de    	vaddps zmm3,zmm3,zmm14
  a65a42:	62 f1 7c 48 28 15 34 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff62e734]        # 94180 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21630>
  a65a49:	e7 62 ff 
  a65a4c:	62 72 6d 48 7f c3    	vpermt2ps zmm8,zmm2,zmm3
  a65a52:	62 71 7c 48 11 04 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm8
  a65a59:	62 a2 6d 48 7f d6    	vpermt2ps zmm18,zmm2,zmm22
  a65a5f:	62 e1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm18
  a65a66:	01 
  a65a67:	62 c2 6d 48 7f df    	vpermt2ps zmm19,zmm2,zmm15
  a65a6d:	62 e1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm19
  a65a74:	02 
  a65a75:	62 e2 6d 48 7f e6    	vpermt2ps zmm20,zmm2,zmm6
  a65a7b:	62 e1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm20
  a65a82:	03 
  a65a83:	62 72 6d 48 7f c9    	vpermt2ps zmm9,zmm2,zmm1
  a65a89:	62 71 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm9
  a65a90:	04 
  a65a91:	62 32 6d 48 7f d9    	vpermt2ps zmm11,zmm2,zmm17
  a65a97:	62 71 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm11
  a65a9e:	05 
  a65a9f:	62 c2 6d 48 7f ea    	vpermt2ps zmm21,zmm2,zmm10
  a65aa5:	62 e1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm21
  a65aac:	06 
  a65aad:	62 32 6d 48 7f e8    	vpermt2ps zmm13,zmm2,zmm16
  a65ab3:	62 71 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm13
  a65aba:	07 
  a65abb:	62 f2 6d 48 7f e7    	vpermt2ps zmm4,zmm2,zmm7
  a65ac1:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm4
  a65ac8:	08 
  a65ac9:	62 f2 6d 48 7f c5    	vpermt2ps zmm0,zmm2,zmm5
  a65acf:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm0
  a65ad6:	09 
  a65ad7:	48 81 c2 80 02 00 00 	add    rdx,0x280
  a65ade:	48 39 d0             	cmp    rax,rdx
  a65ae1:	0f 85 79 f5 ff ff    	jne    a65060 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a65ae7:	48 81 c4 88 00 00 00 	add    rsp,0x88
  a65aee:	c5 f8 77             	vzeroupper
  a65af1:	c3                   	ret
