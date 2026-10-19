
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000094e280 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  94e280:	62 f1 fd 48 10 05 de 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff778ade]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  94e287:	8a 77 ff 
  94e28a:	62 f1 fd 48 10 0d 54 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff778a54]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  94e291:	8a 77 ff 
  94e294:	62 f1 fd 48 10 15 8a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff778a8a]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  94e29b:	8a 77 ff 
  94e29e:	48 c1 e2 07          	shl    rdx,0x7
  94e2a2:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  94e2a6:	31 d2                	xor    edx,edx
  94e2a8:	62 f1 fd 48 28 1d 8e 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff73628e]        # 84540 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x119f0>
  94e2af:	62 73 ff 
  94e2b2:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  94e2b6:	62 f1 fd 48 28 2d c0 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff7362c0]        # 84580 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x11a30>
  94e2bd:	62 73 ff 
  94e2c0:	62 f2 fd 48 19 35 ce 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff7267ce]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  94e2c7:	67 72 ff 
  94e2ca:	62 f2 fd 48 19 3d 4c 	vbroadcastsd zmm7,QWORD PTR [rip+0xffffffffff72694c]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  94e2d1:	69 72 ff 
  94e2d4:	c5 7d 28 05 24 8a 72 	vmovapd ymm8,YMMWORD PTR [rip+0xffffffffff728a24]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  94e2db:	ff 
  94e2dc:	62 71 fd 48 28 0d da 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff7362da]        # 845c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x11a70>
  94e2e3:	62 73 ff 
  94e2e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  94e2ed:	00 00 00 
  94e2f0:	62 71 fd 48 10 1c 17 	vmovupd zmm11,ZMMWORD PTR [rdi+rdx*1]
  94e2f7:	62 71 fd 48 10 64 17 	vmovupd zmm12,ZMMWORD PTR [rdi+rdx*1+0x40]
  94e2fe:	01 
  94e2ff:	62 71 fd 48 10 6c 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1+0x80]
  94e306:	02 
  94e307:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0xc0]
  94e30e:	03 
  94e30f:	62 51 fd 48 28 fb    	vmovapd zmm15,zmm11
  94e315:	62 72 e5 48 7f fc    	vpermt2pd zmm15,zmm3,zmm4
  94e31b:	62 72 d5 48 7f dc    	vpermt2pd zmm11,zmm5,zmm4
  94e321:	62 c1 fd 48 28 c4    	vmovapd zmm16,zmm12
  94e327:	62 e2 e5 48 7f c4    	vpermt2pd zmm16,zmm3,zmm4
  94e32d:	62 72 d5 48 7f e4    	vpermt2pd zmm12,zmm5,zmm4
  94e333:	62 c1 fd 48 28 cd    	vmovapd zmm17,zmm13
  94e339:	62 e2 e5 48 7f cc    	vpermt2pd zmm17,zmm3,zmm4
  94e33f:	62 72 d5 48 7f ec    	vpermt2pd zmm13,zmm5,zmm4
  94e345:	62 c1 fd 48 28 d6    	vmovapd zmm18,zmm14
  94e34b:	62 e2 e5 48 7f d4    	vpermt2pd zmm18,zmm3,zmm4
  94e351:	62 72 d5 48 7f f4    	vpermt2pd zmm14,zmm5,zmm4
  94e357:	62 e1 fd 48 10 5c 17 	vmovupd zmm19,ZMMWORD PTR [rdi+rdx*1+0x100]
  94e35e:	04 
  94e35f:	62 a1 fd 48 28 e3    	vmovapd zmm20,zmm19
  94e365:	62 e2 e5 48 7f e4    	vpermt2pd zmm20,zmm3,zmm4
  94e36b:	62 e2 d5 48 7f dc    	vpermt2pd zmm19,zmm5,zmm4
  94e371:	62 e1 fd 48 10 6c 17 	vmovupd zmm21,ZMMWORD PTR [rdi+rdx*1+0x140]
  94e378:	05 
  94e379:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  94e37f:	62 e2 e5 48 7f f4    	vpermt2pd zmm22,zmm3,zmm4
  94e385:	62 e2 d5 48 7f ec    	vpermt2pd zmm21,zmm5,zmm4
  94e38b:	62 a1 f5 40 58 fc    	vaddpd zmm23,zmm17,zmm20
  94e391:	62 21 85 48 58 c7    	vaddpd zmm24,zmm15,zmm23
  94e397:	62 21 cd 40 58 c8    	vaddpd zmm25,zmm22,zmm16
  94e39d:	62 01 ed 40 58 d1    	vaddpd zmm26,zmm18,zmm25
  94e3a3:	62 01 bd 40 58 da    	vaddpd zmm27,zmm24,zmm26
  94e3a9:	62 21 95 48 58 e3    	vaddpd zmm28,zmm13,zmm19
  94e3af:	62 01 a5 48 58 ec    	vaddpd zmm29,zmm11,zmm28
  94e3b5:	62 41 d5 40 58 f4    	vaddpd zmm30,zmm21,zmm12
  94e3bb:	62 01 8d 48 58 fe    	vaddpd zmm31,zmm14,zmm30
  94e3c1:	62 11 95 40 58 d7    	vaddpd zmm10,zmm29,zmm31
  94e3c7:	62 32 cd 48 bc ff    	vfnmadd231pd zmm15,zmm6,zmm23
  94e3cd:	62 31 95 48 5c eb    	vsubpd zmm13,zmm13,zmm19
  94e3d3:	62 71 95 48 59 ef    	vmulpd zmm13,zmm13,zmm7
  94e3d9:	62 c1 85 48 58 dd    	vaddpd zmm19,zmm15,zmm13
  94e3df:	62 82 cd 48 bc d1    	vfnmadd231pd zmm18,zmm6,zmm25
  94e3e5:	62 51 d5 40 5c e4    	vsubpd zmm12,zmm21,zmm12
  94e3eb:	62 71 9d 48 59 e7    	vmulpd zmm12,zmm12,zmm7
  94e3f1:	62 c1 ed 40 58 ec    	vaddpd zmm21,zmm18,zmm12
  94e3f7:	62 a1 e5 40 5c fd    	vsubpd zmm23,zmm19,zmm21
  94e3fd:	62 12 cd 48 bc dc    	vfnmadd231pd zmm11,zmm6,zmm28
  94e403:	62 a1 f5 40 5c cc    	vsubpd zmm17,zmm17,zmm20
  94e409:	62 e1 f5 40 59 cf    	vmulpd zmm17,zmm17,zmm7
  94e40f:	62 a1 a5 48 5c e1    	vsubpd zmm20,zmm11,zmm17
  94e415:	62 12 cd 48 bc f6    	vfnmadd231pd zmm14,zmm6,zmm30
  94e41b:	62 a1 cd 40 5c c0    	vsubpd zmm16,zmm22,zmm16
  94e421:	62 e1 fd 40 59 c7    	vmulpd zmm16,zmm16,zmm7
  94e427:	62 a1 8d 48 5c f0    	vsubpd zmm22,zmm14,zmm16
  94e42d:	62 21 dd 40 5c ce    	vsubpd zmm25,zmm20,zmm22
  94e433:	62 51 85 48 5c ed    	vsubpd zmm13,zmm15,zmm13
  94e439:	62 51 ed 40 5c e4    	vsubpd zmm12,zmm18,zmm12
  94e43f:	62 51 95 48 58 fc    	vaddpd zmm15,zmm13,zmm12
  94e445:	62 51 f5 40 58 db    	vaddpd zmm11,zmm17,zmm11
  94e44b:	62 51 fd 40 58 f6    	vaddpd zmm14,zmm16,zmm14
  94e451:	62 c1 a5 48 58 c6    	vaddpd zmm16,zmm11,zmm14
  94e457:	62 81 bd 40 5c ca    	vsubpd zmm17,zmm24,zmm26
  94e45d:	62 81 95 40 5c d7    	vsubpd zmm18,zmm29,zmm31
  94e463:	62 a1 e5 40 58 dd    	vaddpd zmm19,zmm19,zmm21
  94e469:	62 a1 dd 40 58 e6    	vaddpd zmm20,zmm20,zmm22
  94e46f:	62 51 95 48 5c e4    	vsubpd zmm12,zmm13,zmm12
  94e475:	62 51 a5 48 5c de    	vsubpd zmm11,zmm11,zmm14
  94e47b:	62 22 fd 48 7f db    	vpermt2pd zmm27,zmm0,zmm19
  94e481:	62 c2 fd 48 7f fc    	vpermt2pd zmm23,zmm0,zmm12
  94e487:	62 72 fd 48 7f fc    	vpermt2pd zmm15,zmm0,zmm4
  94e48d:	62 e2 fd 48 7f cc    	vpermt2pd zmm17,zmm0,zmm4
  94e493:	62 11 fd 48 28 e3    	vmovapd zmm12,zmm27
  94e499:	62 52 f5 48 7f e7    	vpermt2pd zmm12,zmm1,zmm15
  94e49f:	62 42 ed 48 7f df    	vpermt2pd zmm27,zmm2,zmm15
  94e4a5:	62 31 fd 48 28 ef    	vmovapd zmm13,zmm23
  94e4ab:	62 32 f5 48 7f e9    	vpermt2pd zmm13,zmm1,zmm17
  94e4b1:	62 a2 ed 48 7f f9    	vpermt2pd zmm23,zmm2,zmm17
  94e4b7:	62 51 9d 48 14 f5    	vunpcklpd zmm14,zmm12,zmm13
  94e4bd:	62 51 9d 48 15 e5    	vunpckhpd zmm12,zmm12,zmm13
  94e4c3:	62 31 a5 40 14 ef    	vunpcklpd zmm13,zmm27,zmm23
  94e4c9:	62 31 a5 40 15 ff    	vunpckhpd zmm15,zmm27,zmm23
  94e4cf:	62 32 fd 48 7f d4    	vpermt2pd zmm10,zmm0,zmm20
  94e4d5:	62 42 fd 48 7f cb    	vpermt2pd zmm25,zmm0,zmm11
  94e4db:	62 e2 fd 48 7f c4    	vpermt2pd zmm16,zmm0,zmm4
  94e4e1:	62 e2 fd 48 7f d4    	vpermt2pd zmm18,zmm0,zmm4
  94e4e7:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  94e4ed:	62 32 f5 48 7f d8    	vpermt2pd zmm11,zmm1,zmm16
  94e4f3:	62 32 ed 48 7f d0    	vpermt2pd zmm10,zmm2,zmm16
  94e4f9:	62 81 fd 48 28 c1    	vmovapd zmm16,zmm25
  94e4ff:	62 a2 f5 48 7f c2    	vpermt2pd zmm16,zmm1,zmm18
  94e505:	62 22 ed 48 7f ca    	vpermt2pd zmm25,zmm2,zmm18
  94e50b:	62 a1 a5 48 14 c8    	vunpcklpd zmm17,zmm11,zmm16
  94e511:	62 31 a5 48 15 d8    	vunpckhpd zmm11,zmm11,zmm16
  94e517:	62 81 ad 48 14 c1    	vunpcklpd zmm16,zmm10,zmm25
  94e51d:	62 11 ad 48 15 d1    	vunpckhpd zmm10,zmm10,zmm25
  94e523:	62 e1 fd 48 10 51 02 	vmovupd zmm18,ZMMWORD PTR [rcx+0x80]
  94e52a:	62 e1 fd 48 10 59 03 	vmovupd zmm19,ZMMWORD PTR [rcx+0xc0]
  94e531:	62 e1 fd 48 10 61 04 	vmovupd zmm20,ZMMWORD PTR [rcx+0x100]
  94e538:	62 e1 fd 48 10 69 05 	vmovupd zmm21,ZMMWORD PTR [rcx+0x140]
  94e53f:	62 e1 fd 48 10 71 06 	vmovupd zmm22,ZMMWORD PTR [rcx+0x180]
  94e546:	62 e1 fd 48 10 79 07 	vmovupd zmm23,ZMMWORD PTR [rcx+0x1c0]
  94e54d:	62 21 95 48 59 c4    	vmulpd zmm24,zmm13,zmm20
  94e553:	62 22 fd 40 bc c5    	vfnmadd231pd zmm24,zmm16,zmm21
  94e559:	62 01 8d 48 58 c8    	vaddpd zmm25,zmm14,zmm24
  94e55f:	62 21 9d 48 59 d2    	vmulpd zmm26,zmm12,zmm18
  94e565:	62 22 a5 48 bc d3    	vfnmadd231pd zmm26,zmm11,zmm19
  94e56b:	62 21 85 48 59 de    	vmulpd zmm27,zmm15,zmm22
  94e571:	62 22 ad 48 bc df    	vfnmadd231pd zmm27,zmm10,zmm23
  94e577:	62 01 ad 40 58 e3    	vaddpd zmm28,zmm26,zmm27
  94e57d:	62 a1 fd 40 59 c4    	vmulpd zmm16,zmm16,zmm20
  94e583:	62 a2 95 48 b8 c5    	vfmadd231pd zmm16,zmm13,zmm21
  94e589:	62 31 fd 40 58 e9    	vaddpd zmm13,zmm16,zmm17
  94e58f:	62 31 a5 48 59 da    	vmulpd zmm11,zmm11,zmm18
  94e595:	62 32 9d 48 b8 db    	vfmadd231pd zmm11,zmm12,zmm19
  94e59b:	62 31 ad 48 59 d6    	vmulpd zmm10,zmm10,zmm22
  94e5a1:	62 32 85 48 b8 d7    	vfmadd231pd zmm10,zmm15,zmm23
  94e5a7:	62 51 a5 48 58 e2    	vaddpd zmm12,zmm11,zmm10
  94e5ad:	62 11 8d 48 5c f0    	vsubpd zmm14,zmm14,zmm24
  94e5b3:	62 51 a5 48 5c d2    	vsubpd zmm10,zmm11,zmm10
  94e5b9:	62 51 8d 48 58 da    	vaddpd zmm11,zmm14,zmm10
  94e5bf:	62 31 f5 40 5c f8    	vsubpd zmm15,zmm17,zmm16
  94e5c5:	62 81 a5 40 5c c2    	vsubpd zmm16,zmm27,zmm26
  94e5cb:	62 a1 85 48 58 c8    	vaddpd zmm17,zmm15,zmm16
  94e5d1:	62 c1 fd 48 28 d3    	vmovapd zmm18,zmm11
  94e5d7:	62 a2 bd 48 7f d1    	vpermt2pd zmm18,zmm8,zmm17
  94e5dd:	62 81 b5 40 5c dc    	vsubpd zmm19,zmm25,zmm28
  94e5e3:	62 c1 95 48 5c e4    	vsubpd zmm20,zmm13,zmm12
  94e5e9:	62 a1 fd 48 28 eb    	vmovapd zmm21,zmm19
  94e5ef:	62 a2 bd 48 7f ec    	vpermt2pd zmm21,zmm8,zmm20
  94e5f5:	62 51 8d 48 5c d2    	vsubpd zmm10,zmm14,zmm10
  94e5fb:	62 31 85 48 5c f0    	vsubpd zmm14,zmm15,zmm16
  94e601:	62 51 fd 48 28 fa    	vmovapd zmm15,zmm10
  94e607:	62 52 bd 48 7f fe    	vpermt2pd zmm15,zmm8,zmm14
  94e60d:	62 81 b5 40 58 c4    	vaddpd zmm16,zmm25,zmm28
  94e613:	62 51 95 48 58 e4    	vaddpd zmm12,zmm13,zmm12
  94e619:	62 31 fd 48 28 e8    	vmovapd zmm13,zmm16
  94e61f:	62 52 bd 48 7f ec    	vpermt2pd zmm13,zmm8,zmm12
  94e625:	62 c2 b5 48 7f c4    	vpermt2pd zmm16,zmm9,zmm12
  94e62b:	62 e1 fd 48 11 04 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm16
  94e632:	c5 7d 11 6c 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm13
  94e638:	62 32 b5 48 7f d9    	vpermt2pd zmm11,zmm9,zmm17
  94e63e:	62 71 fd 48 11 9c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x60],zmm11
  94e645:	60 00 00 00 
  94e649:	62 e1 fd 28 11 54 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm18
  94e650:	05 
  94e651:	62 a2 b5 48 7f dc    	vpermt2pd zmm19,zmm9,zmm20
  94e657:	62 e1 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm19
  94e65e:	03 
  94e65f:	62 e1 fd 28 11 6c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x100],ymm21
  94e666:	08 
  94e667:	62 52 b5 48 7f d6    	vpermt2pd zmm10,zmm9,zmm14
  94e66d:	62 71 fd 48 11 94 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x120],zmm10
  94e674:	20 01 00 00 
  94e678:	c5 7d 11 bc 16 60 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x160],ymm15
  94e67f:	00 00 
  94e681:	48 81 c2 80 01 00 00 	add    rdx,0x180
  94e688:	48 39 d0             	cmp    rax,rdx
  94e68b:	0f 85 5f fc ff ff    	jne    94e2f0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  94e691:	c5 f8 77             	vzeroupper
  94e694:	c3                   	ret
