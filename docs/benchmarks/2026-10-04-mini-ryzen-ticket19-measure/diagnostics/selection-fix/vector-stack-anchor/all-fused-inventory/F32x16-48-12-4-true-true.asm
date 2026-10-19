
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a1afc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a1afc0:	48 81 ec 88 00 00 00 	sub    rsp,0x88
  a1afc7:	48 c1 e2 07          	shl    rdx,0x7
  a1afcb:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a1afcf:	31 d2                	xor    edx,edx
  a1afd1:	c4 41 18 57 e4       	vxorps xmm12,xmm12,xmm12
  a1afd6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a1afdd:	00 00 00 
  a1afe0:	c5 7c 10 34 17       	vmovups ymm14,YMMWORD PTR [rdi+rdx*1]
  a1afe5:	c5 7c 10 6c 17 20    	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x20]
  a1afeb:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x40]
  a1aff2:	02 
  a1aff3:	c5 7c 10 5c 17 60    	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x60]
  a1aff9:	62 d1 7c 48 28 ee    	vmovaps zmm5,zmm14
  a1afff:	62 f1 7c 48 28 05 77 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff674a77]        # 8fa80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cf30>
  a1b006:	4a 67 ff 
  a1b009:	62 d2 7d 48 7f ec    	vpermt2ps zmm5,zmm0,zmm12
  a1b00f:	62 f1 7c 48 28 25 a7 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff674aa7]        # 8fac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cf70>
  a1b016:	4a 67 ff 
  a1b019:	62 52 5d 48 7f f4    	vpermt2ps zmm14,zmm4,zmm12
  a1b01f:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a1b025:	62 c2 7d 48 7f dc    	vpermt2ps zmm19,zmm0,zmm12
  a1b02b:	62 52 5d 48 7f ec    	vpermt2ps zmm13,zmm4,zmm12
  a1b031:	62 31 7c 48 28 f8    	vmovaps zmm15,zmm16
  a1b037:	62 52 7d 48 7f fc    	vpermt2ps zmm15,zmm0,zmm12
  a1b03d:	62 c2 5d 48 7f c4    	vpermt2ps zmm16,zmm4,zmm12
  a1b043:	62 c1 7c 48 28 cb    	vmovaps zmm17,zmm11
  a1b049:	62 c2 7d 48 7f cc    	vpermt2ps zmm17,zmm0,zmm12
  a1b04f:	62 52 5d 48 7f dc    	vpermt2ps zmm11,zmm4,zmm12
  a1b055:	62 61 7c 28 10 44 17 	vmovups ymm24,YMMWORD PTR [rdi+rdx*1+0x80]
  a1b05c:	04 
  a1b05d:	62 81 7c 48 28 e0    	vmovaps zmm20,zmm24
  a1b063:	62 c2 7d 48 7f e4    	vpermt2ps zmm20,zmm0,zmm12
  a1b069:	62 42 5d 48 7f c4    	vpermt2ps zmm24,zmm4,zmm12
  a1b06f:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0xa0]
  a1b076:	05 
  a1b077:	62 21 7c 48 28 ca    	vmovaps zmm25,zmm18
  a1b07d:	62 42 7d 48 7f cc    	vpermt2ps zmm25,zmm0,zmm12
  a1b083:	62 c2 5d 48 7f d4    	vpermt2ps zmm18,zmm4,zmm12
  a1b089:	62 61 7c 28 10 54 17 	vmovups ymm26,YMMWORD PTR [rdi+rdx*1+0xc0]
  a1b090:	06 
  a1b091:	62 81 7c 48 28 ea    	vmovaps zmm21,zmm26
  a1b097:	62 c2 7d 48 7f ec    	vpermt2ps zmm21,zmm0,zmm12
  a1b09d:	62 42 5d 48 7f d4    	vpermt2ps zmm26,zmm4,zmm12
  a1b0a3:	62 e1 7c 28 10 74 17 	vmovups ymm22,YMMWORD PTR [rdi+rdx*1+0xe0]
  a1b0aa:	07 
  a1b0ab:	62 21 7c 48 28 f6    	vmovaps zmm30,zmm22
  a1b0b1:	62 42 7d 48 7f f4    	vpermt2ps zmm30,zmm0,zmm12
  a1b0b7:	62 c2 5d 48 7f f4    	vpermt2ps zmm22,zmm4,zmm12
  a1b0bd:	62 61 7c 28 10 7c 17 	vmovups ymm31,YMMWORD PTR [rdi+rdx*1+0x100]
  a1b0c4:	08 
  a1b0c5:	62 01 7c 48 28 ef    	vmovaps zmm29,zmm31
  a1b0cb:	62 42 7d 48 7f ec    	vpermt2ps zmm29,zmm0,zmm12
  a1b0d1:	62 42 5d 48 7f fc    	vpermt2ps zmm31,zmm4,zmm12
  a1b0d7:	c5 fc 10 94 17 20 01 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x120]
  a1b0de:	00 00 
  a1b0e0:	62 e1 7c 48 28 fa    	vmovaps zmm23,zmm2
  a1b0e6:	62 c2 7d 48 7f fc    	vpermt2ps zmm23,zmm0,zmm12
  a1b0ec:	62 d2 5d 48 7f d4    	vpermt2ps zmm2,zmm4,zmm12
  a1b0f2:	c5 fc 10 9c 17 40 01 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x140]
  a1b0f9:	00 00 
  a1b0fb:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a1b101:	62 52 7d 48 7f cc    	vpermt2ps zmm9,zmm0,zmm12
  a1b107:	62 d2 5d 48 7f dc    	vpermt2ps zmm3,zmm4,zmm12
  a1b10d:	c5 fc 10 8c 17 60 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x160]
  a1b114:	00 00 
  a1b116:	62 71 7c 48 28 d1    	vmovaps zmm10,zmm1
  a1b11c:	62 52 7d 48 7f d4    	vpermt2ps zmm10,zmm0,zmm12
  a1b122:	62 d2 5d 48 7f cc    	vpermt2ps zmm1,zmm4,zmm12
  a1b128:	62 01 0c 48 58 da    	vaddps zmm27,zmm14,zmm26
  a1b12e:	62 61 24 48 58 e2    	vaddps zmm28,zmm11,zmm2
  a1b134:	62 71 3c 40 58 c3    	vaddps zmm8,zmm24,zmm3
  a1b13a:	62 d1 4c 40 58 fd    	vaddps zmm7,zmm22,zmm13
  a1b140:	62 b1 04 40 58 e0    	vaddps zmm4,zmm31,zmm16
  a1b146:	62 61 3c 40 5c c3    	vsubps zmm24,zmm24,zmm3
  a1b14c:	62 b1 0c 40 58 db    	vaddps zmm3,zmm30,zmm19
  a1b152:	62 a1 0c 40 5c db    	vsubps zmm19,zmm30,zmm19
  a1b158:	62 21 74 48 58 f2    	vaddps zmm30,zmm1,zmm18
  a1b15e:	62 a1 04 40 5c c0    	vsubps zmm16,zmm31,zmm16
  a1b164:	62 01 2c 48 58 f9    	vaddps zmm31,zmm10,zmm25
  a1b16a:	62 11 2c 48 5c d1    	vsubps zmm10,zmm10,zmm25
  a1b170:	62 21 54 48 58 cd    	vaddps zmm25,zmm5,zmm21
  a1b176:	62 11 0c 48 5c f2    	vsubps zmm14,zmm14,zmm26
  a1b17c:	62 21 74 40 58 d7    	vaddps zmm26,zmm17,zmm23
  a1b182:	62 a1 74 40 5c cf    	vsubps zmm17,zmm17,zmm23
  a1b188:	62 c1 5c 40 58 f9    	vaddps zmm23,zmm20,zmm9
  a1b18e:	62 51 5c 40 5c c9    	vsubps zmm9,zmm20,zmm9
  a1b194:	62 c1 14 40 58 e7    	vaddps zmm20,zmm29,zmm15
  a1b19a:	62 b1 14 48 5c f6    	vsubps zmm6,zmm13,zmm22
  a1b1a0:	62 51 4c 48 58 e9    	vaddps zmm13,zmm6,zmm9
  a1b1a6:	62 51 14 40 5c ff    	vsubps zmm15,zmm29,zmm15
  a1b1ac:	62 f1 6c 40 5c c9    	vsubps zmm1,zmm18,zmm1
  a1b1b2:	62 c1 74 48 58 d7    	vaddps zmm18,zmm1,zmm15
  a1b1b8:	62 b1 14 48 5c c2    	vsubps zmm0,zmm13,zmm18
  a1b1be:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a1b1c5:	fe 
  a1b1c6:	62 b1 14 48 58 c2    	vaddps zmm0,zmm13,zmm18
  a1b1cc:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a1b1d3:	ff 
  a1b1d4:	62 a1 3c 40 58 f3    	vaddps zmm22,zmm24,zmm19
  a1b1da:	62 b1 54 48 5c ed    	vsubps zmm5,zmm5,zmm21
  a1b1e0:	62 c1 7c 40 58 ea    	vaddps zmm21,zmm16,zmm10
  a1b1e6:	62 d1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm11
  a1b1ec:	62 b1 4c 40 58 c5    	vaddps zmm0,zmm22,zmm21
  a1b1f2:	62 a1 4c 40 5c ed    	vsubps zmm21,zmm22,zmm21
  a1b1f8:	62 61 3c 48 58 ef    	vaddps zmm29,zmm8,zmm7
  a1b1fe:	62 f1 3c 48 5c ff    	vsubps zmm7,zmm8,zmm7
  a1b204:	62 11 5c 48 58 ee    	vaddps zmm13,zmm4,zmm30
  a1b20a:	62 91 5c 48 5c e6    	vsubps zmm4,zmm4,zmm30
  a1b210:	62 01 24 40 58 f4    	vaddps zmm30,zmm27,zmm28
  a1b216:	62 01 24 40 5c dc    	vsubps zmm27,zmm27,zmm28
  a1b21c:	62 61 44 40 58 e3    	vaddps zmm28,zmm23,zmm3
  a1b222:	62 f1 44 40 5c db    	vsubps zmm3,zmm23,zmm3
  a1b228:	62 81 5c 40 58 ff    	vaddps zmm23,zmm20,zmm31
  a1b22e:	62 11 5c 40 5c df    	vsubps zmm11,zmm20,zmm31
  a1b234:	62 51 64 48 5c c3    	vsubps zmm8,zmm3,zmm11
  a1b23a:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm8
  a1b241:	01 
  a1b242:	62 d1 64 48 58 db    	vaddps zmm3,zmm3,zmm11
  a1b248:	62 01 34 40 58 fa    	vaddps zmm31,zmm25,zmm26
  a1b24e:	62 01 34 40 5c ca    	vsubps zmm25,zmm25,zmm26
  a1b254:	62 61 44 48 58 d4    	vaddps zmm26,zmm7,zmm4
  a1b25a:	62 f1 44 48 5c e4    	vsubps zmm4,zmm7,zmm4
  a1b260:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a1b267:	62 a1 0c 48 58 e1    	vaddps zmm20,zmm14,zmm17
  a1b26d:	62 b1 0c 48 5c f9    	vsubps zmm7,zmm14,zmm17
  a1b273:	62 21 3c 40 5c c3    	vsubps zmm24,zmm24,zmm19
  a1b279:	62 51 14 40 58 f5    	vaddps zmm14,zmm29,zmm13
  a1b27f:	62 51 7c 40 5c d2    	vsubps zmm10,zmm16,zmm10
  a1b285:	62 e1 6c 48 58 d5    	vaddps zmm18,zmm2,zmm5
  a1b28b:	62 71 54 48 5c c2    	vsubps zmm8,zmm5,zmm2
  a1b291:	62 c1 0c 40 58 ce    	vaddps zmm17,zmm30,zmm14
  a1b297:	62 f1 34 48 5c d6    	vsubps zmm2,zmm9,zmm6
  a1b29d:	62 31 1c 40 58 cf    	vaddps zmm9,zmm28,zmm23
  a1b2a3:	62 f1 04 48 5c c9    	vsubps zmm1,zmm15,zmm1
  a1b2a9:	62 51 04 40 58 d9    	vaddps zmm11,zmm31,zmm9
  a1b2af:	62 f2 7d 48 18 2d a7 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff65a1a7]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a1b2b6:	a1 65 ff 
  a1b2b9:	62 12 55 48 ac f6    	vfnmadd213ps zmm14,zmm5,zmm30
  a1b2bf:	62 71 7c 48 28 fd    	vmovaps zmm15,zmm5
  a1b2c5:	62 32 7d 48 ac fc    	vfnmadd213ps zmm15,zmm0,zmm20
  a1b2cb:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a1b2d1:	62 f2 7d 48 18 05 f9 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff659ff9]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a1b2d8:	9f 65 ff 
  a1b2db:	62 e1 7c 48 59 44 24 	vmulps zmm16,zmm0,ZMMWORD PTR [rsp-0x80]
  a1b2e2:	fe 
  a1b2e3:	62 a1 1c 40 5c ff    	vsubps zmm23,zmm28,zmm23
  a1b2e9:	62 c1 7c 40 58 df    	vaddps zmm19,zmm16,zmm15
  a1b2ef:	62 12 55 48 ac cf    	vfnmadd213ps zmm9,zmm5,zmm31
  a1b2f5:	62 61 7c 48 28 e5    	vmovaps zmm28,zmm5
  a1b2fb:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp-0x40]
  a1b302:	ff 
  a1b303:	62 22 4d 48 ac e2    	vfnmadd213ps zmm28,zmm6,zmm18
  a1b309:	62 e1 54 40 59 e8    	vmulps zmm21,zmm21,zmm0
  a1b30f:	62 51 14 40 5c ed    	vsubps zmm13,zmm29,zmm13
  a1b315:	62 b1 1c 40 5c e5    	vsubps zmm4,zmm28,zmm21
  a1b31b:	62 21 04 48 5c f0    	vsubps zmm30,zmm15,zmm16
  a1b321:	62 61 7c 48 28 fd    	vmovaps zmm31,zmm5
  a1b327:	62 02 2d 40 ac fb    	vfnmadd213ps zmm31,zmm26,zmm27
  a1b32d:	62 21 1c 40 58 ed    	vaddps zmm29,zmm28,zmm21
  a1b333:	62 61 7c 48 28 e5    	vmovaps zmm28,zmm5
  a1b339:	62 02 65 48 ac e1    	vfnmadd213ps zmm28,zmm3,zmm25
  a1b33f:	62 01 24 40 58 d2    	vaddps zmm26,zmm27,zmm26
  a1b345:	62 41 3c 40 58 da    	vaddps zmm27,zmm24,zmm10
  a1b34b:	62 71 34 40 58 fb    	vaddps zmm15,zmm25,zmm3
  a1b351:	62 91 44 48 58 db    	vaddps zmm3,zmm7,zmm27
  a1b357:	62 62 55 48 ac df    	vfnmadd213ps zmm27,zmm5,zmm7
  a1b35d:	62 f1 6c 48 58 f9    	vaddps zmm7,zmm2,zmm1
  a1b363:	62 f1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm1
  a1b369:	62 e1 3c 48 58 c7    	vaddps zmm16,zmm8,zmm7
  a1b36f:	62 d2 55 48 ac f8    	vfnmadd213ps zmm7,zmm5,zmm8
  a1b375:	62 f1 44 40 59 d0    	vmulps zmm2,zmm23,zmm0
  a1b37b:	62 41 3c 40 5c c2    	vsubps zmm24,zmm24,zmm10
  a1b381:	62 71 0c 48 58 d2    	vaddps zmm10,zmm14,zmm2
  a1b387:	62 71 14 48 59 c0    	vmulps zmm8,zmm13,zmm0
  a1b38d:	62 f1 0c 48 5c d2    	vsubps zmm2,zmm14,zmm2
  a1b393:	62 c1 34 48 5c e8    	vsubps zmm21,zmm9,zmm8
  a1b399:	62 51 3c 48 58 c1    	vaddps zmm8,zmm8,zmm9
  a1b39f:	62 31 5c 40 58 ce    	vaddps zmm9,zmm20,zmm22
  a1b3a5:	62 71 7c 48 59 6c 24 	vmulps zmm13,zmm0,ZMMWORD PTR [rsp+0x40]
  a1b3ac:	01 
  a1b3ad:	62 f1 6c 40 58 ee    	vaddps zmm5,zmm18,zmm6
  a1b3b3:	62 51 04 40 5c f5    	vsubps zmm14,zmm31,zmm13
  a1b3b9:	62 e1 7c 48 59 14 24 	vmulps zmm18,zmm0,ZMMWORD PTR [rsp]
  a1b3c0:	62 51 04 40 58 ed    	vaddps zmm13,zmm31,zmm13
  a1b3c6:	62 81 6c 40 58 e4    	vaddps zmm20,zmm18,zmm28
  a1b3cc:	62 f1 74 48 59 c8    	vmulps zmm1,zmm1,zmm0
  a1b3d2:	62 a1 1c 40 5c fa    	vsubps zmm23,zmm28,zmm18
  a1b3d8:	62 81 74 48 58 d3    	vaddps zmm18,zmm1,zmm27
  a1b3de:	62 f1 3c 40 59 f0    	vmulps zmm6,zmm24,zmm0
  a1b3e4:	62 f1 24 40 5c c9    	vsubps zmm1,zmm27,zmm1
  a1b3ea:	62 e1 44 48 5c f6    	vsubps zmm22,zmm7,zmm6
  a1b3f0:	62 f1 44 48 58 f6    	vaddps zmm6,zmm7,zmm6
  a1b3f6:	62 f1 7c 48 28 3d 80 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6abb80]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a1b3fd:	bb 6a ff 
  a1b400:	62 e2 45 48 7f ca    	vpermt2ps zmm17,zmm7,zmm2
  a1b406:	62 c2 45 48 7f d9    	vpermt2ps zmm19,zmm7,zmm9
  a1b40c:	62 52 45 48 7f f5    	vpermt2ps zmm14,zmm7,zmm13
  a1b412:	62 f2 45 48 7f d9    	vpermt2ps zmm3,zmm7,zmm1
  a1b418:	62 52 45 48 7f d4    	vpermt2ps zmm10,zmm7,zmm12
  a1b41e:	62 71 7c 48 28 0d d8 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6abad8]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1b425:	ba 6a ff 
  a1b428:	62 c2 35 48 7f ca    	vpermt2ps zmm17,zmm9,zmm10
  a1b42e:	62 42 45 48 7f f4    	vpermt2ps zmm30,zmm7,zmm12
  a1b434:	62 82 35 48 7f de    	vpermt2ps zmm19,zmm9,zmm30
  a1b43a:	62 42 45 48 7f d4    	vpermt2ps zmm26,zmm7,zmm12
  a1b440:	62 12 35 48 7f f2    	vpermt2ps zmm14,zmm9,zmm26
  a1b446:	62 c2 45 48 7f d4    	vpermt2ps zmm18,zmm7,zmm12
  a1b44c:	62 b2 35 48 7f da    	vpermt2ps zmm3,zmm9,zmm18
  a1b452:	62 c1 f5 40 14 d6    	vunpcklpd zmm18,zmm17,zmm14
  a1b458:	62 c1 f5 40 15 ce    	vunpckhpd zmm17,zmm17,zmm14
  a1b45e:	62 71 e5 40 14 eb    	vunpcklpd zmm13,zmm19,zmm3
  a1b464:	62 f1 e5 40 15 cb    	vunpckhpd zmm1,zmm19,zmm3
  a1b46a:	62 b1 7c 48 28 d1    	vmovaps zmm2,zmm17
  a1b470:	62 71 7c 48 28 35 86 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6ab986]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1b477:	b9 6a ff 
  a1b47a:	62 f2 0d 48 7f d1    	vpermt2ps zmm2,zmm14,zmm1
  a1b480:	62 71 7c 48 28 15 b6 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6ab9b6]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1b487:	b9 6a ff 
  a1b48a:	62 e2 2d 48 7f c9    	vpermt2ps zmm17,zmm10,zmm1
  a1b490:	62 52 45 48 7f d8    	vpermt2ps zmm11,zmm7,zmm8
  a1b496:	62 f2 45 48 7f e5    	vpermt2ps zmm4,zmm7,zmm5
  a1b49c:	62 a2 45 48 7f e7    	vpermt2ps zmm20,zmm7,zmm23
  a1b4a2:	62 e2 45 48 7f c6    	vpermt2ps zmm16,zmm7,zmm6
  a1b4a8:	62 a1 7c 48 28 da    	vmovaps zmm19,zmm18
  a1b4ae:	62 c2 2d 48 7f d5    	vpermt2ps zmm18,zmm10,zmm13
  a1b4b4:	62 c2 45 48 7f ec    	vpermt2ps zmm21,zmm7,zmm12
  a1b4ba:	62 42 45 48 7f ec    	vpermt2ps zmm29,zmm7,zmm12
  a1b4c0:	62 52 45 48 7f fc    	vpermt2ps zmm15,zmm7,zmm12
  a1b4c6:	62 c2 45 48 7f f4    	vpermt2ps zmm22,zmm7,zmm12
  a1b4cc:	62 32 35 48 7f dd    	vpermt2ps zmm11,zmm9,zmm21
  a1b4d2:	62 92 35 48 7f e5    	vpermt2ps zmm4,zmm9,zmm29
  a1b4d8:	62 c2 35 48 7f e7    	vpermt2ps zmm20,zmm9,zmm15
  a1b4de:	62 a2 35 48 7f c6    	vpermt2ps zmm16,zmm9,zmm22
  a1b4e4:	62 b1 a5 48 14 c4    	vunpcklpd zmm0,zmm11,zmm20
  a1b4ea:	62 b1 a5 48 15 cc    	vunpckhpd zmm1,zmm11,zmm20
  a1b4f0:	62 b1 dd 48 14 d8    	vunpcklpd zmm3,zmm4,zmm16
  a1b4f6:	62 b1 dd 48 15 e0    	vunpckhpd zmm4,zmm4,zmm16
  a1b4fc:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a1b502:	62 f2 2d 48 7f c3    	vpermt2ps zmm0,zmm10,zmm3
  a1b508:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a1b50e:	62 f2 0d 48 7f fc    	vpermt2ps zmm7,zmm14,zmm4
  a1b514:	62 f2 2d 48 7f cc    	vpermt2ps zmm1,zmm10,zmm4
  a1b51a:	62 f1 7c 48 10 61 04 	vmovups zmm4,ZMMWORD PTR [rcx+0x100]
  a1b521:	62 71 7c 48 10 41 05 	vmovups zmm8,ZMMWORD PTR [rcx+0x140]
  a1b528:	62 71 6c 48 59 cc    	vmulps zmm9,zmm2,zmm4
  a1b52e:	62 52 45 48 bc c8    	vfnmadd231ps zmm9,zmm7,zmm8
  a1b534:	62 f1 44 48 59 e4    	vmulps zmm4,zmm7,zmm4
  a1b53a:	62 f1 7c 48 10 79 02 	vmovups zmm7,ZMMWORD PTR [rcx+0x80]
  a1b541:	62 f2 3d 48 b8 e2    	vfmadd231ps zmm4,zmm8,zmm2
  a1b547:	62 f1 7c 48 10 51 03 	vmovups zmm2,ZMMWORD PTR [rcx+0xc0]
  a1b54e:	62 71 6c 40 59 c7    	vmulps zmm8,zmm18,zmm7
  a1b554:	62 72 7d 48 bc c2    	vfnmadd231ps zmm8,zmm0,zmm2
  a1b55a:	62 f1 7c 48 59 c7    	vmulps zmm0,zmm0,zmm7
  a1b560:	62 f1 7c 48 10 79 06 	vmovups zmm7,ZMMWORD PTR [rcx+0x180]
  a1b567:	62 b2 6d 48 b8 c2    	vfmadd231ps zmm0,zmm2,zmm18
  a1b56d:	62 f1 7c 48 10 51 07 	vmovups zmm2,ZMMWORD PTR [rcx+0x1c0]
  a1b574:	62 71 74 40 59 d7    	vmulps zmm10,zmm17,zmm7
  a1b57a:	62 72 75 48 bc d2    	vfnmadd231ps zmm10,zmm1,zmm2
  a1b580:	62 f1 74 48 59 cf    	vmulps zmm1,zmm1,zmm7
  a1b586:	62 b2 6d 48 b8 c9    	vfmadd231ps zmm1,zmm2,zmm17
  a1b58c:	62 c2 0d 48 7f dd    	vpermt2ps zmm19,zmm14,zmm13
  a1b592:	62 f2 0d 48 7f f3    	vpermt2ps zmm6,zmm14,zmm3
  a1b598:	62 d1 64 40 58 d1    	vaddps zmm2,zmm19,zmm9
  a1b59e:	62 d1 64 40 5c d9    	vsubps zmm3,zmm19,zmm9
  a1b5a4:	62 f1 7c 48 58 f9    	vaddps zmm7,zmm0,zmm1
  a1b5aa:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a1b5b0:	62 f1 5c 48 58 ce    	vaddps zmm1,zmm4,zmm6
  a1b5b6:	62 f1 4c 48 5c e4    	vsubps zmm4,zmm6,zmm4
  a1b5bc:	62 d1 3c 48 58 f2    	vaddps zmm6,zmm8,zmm10
  a1b5c2:	62 51 2c 48 5c c0    	vsubps zmm8,zmm10,zmm8
  a1b5c8:	62 71 64 48 58 c8    	vaddps zmm9,zmm3,zmm0
  a1b5ce:	62 f1 64 48 5c c0    	vsubps zmm0,zmm3,zmm0
  a1b5d4:	62 d1 5c 48 58 d8    	vaddps zmm3,zmm4,zmm8
  a1b5da:	62 d1 5c 48 5c e0    	vsubps zmm4,zmm4,zmm8
  a1b5e0:	62 71 74 48 5c c7    	vsubps zmm8,zmm1,zmm7
  a1b5e6:	62 f1 74 48 58 cf    	vaddps zmm1,zmm1,zmm7
  a1b5ec:	62 f1 6c 48 5c fe    	vsubps zmm7,zmm2,zmm6
  a1b5f2:	62 f1 6c 48 58 d6    	vaddps zmm2,zmm2,zmm6
  a1b5f8:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a1b5fe:	c5 fc 28 2d 3a b6 65 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff65b63a]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a1b605:	ff 
  a1b606:	62 f2 55 48 7f f2    	vpermt2ps zmm6,zmm5,zmm2
  a1b60c:	62 71 7c 48 28 15 ea 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6744ea]        # 8fb00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cfb0>
  a1b613:	44 67 ff 
  a1b616:	62 f2 2d 48 7f ca    	vpermt2ps zmm1,zmm10,zmm2
  a1b61c:	62 f1 7c 48 11 0c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm1
  a1b623:	c5 fc 11 74 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm6
  a1b629:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a1b62f:	62 d2 55 48 7f c9    	vpermt2ps zmm1,zmm5,zmm9
  a1b635:	62 d2 2d 48 7f d9    	vpermt2ps zmm3,zmm10,zmm9
  a1b63b:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x60],zmm3
  a1b642:	60 00 00 00 
  a1b646:	c5 fc 11 8c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm1
  a1b64d:	00 00 
  a1b64f:	62 d1 7c 48 28 c8    	vmovaps zmm1,zmm8
  a1b655:	62 f2 55 48 7f cf    	vpermt2ps zmm1,zmm5,zmm7
  a1b65b:	62 72 2d 48 7f c7    	vpermt2ps zmm8,zmm10,zmm7
  a1b661:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm8
  a1b668:	03 
  a1b669:	c5 fc 11 8c 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm1
  a1b670:	00 00 
  a1b672:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a1b678:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a1b67e:	62 f2 2d 48 7f e0    	vpermt2ps zmm4,zmm10,zmm0
  a1b684:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x120],zmm4
  a1b68b:	20 01 00 00 
  a1b68f:	c5 fc 11 8c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm1
  a1b696:	00 00 
  a1b698:	48 81 c2 80 01 00 00 	add    rdx,0x180
  a1b69f:	48 39 d0             	cmp    rax,rdx
  a1b6a2:	0f 85 38 f9 ff ff    	jne    a1afe0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a1b6a8:	48 81 c4 88 00 00 00 	add    rsp,0x88
  a1b6af:	c5 f8 77             	vzeroupper
  a1b6b2:	c3                   	ret
