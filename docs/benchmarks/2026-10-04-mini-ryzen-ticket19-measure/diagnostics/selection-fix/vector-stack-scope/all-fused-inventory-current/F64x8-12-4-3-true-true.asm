
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000096c300 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  96c300:	62 f1 fd 48 10 05 5e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff75aa5e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  96c307:	aa 75 ff 
  96c30a:	62 f1 fd 48 10 0d d4 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff75a9d4]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  96c311:	a9 75 ff 
  96c314:	62 f1 fd 48 10 15 0a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff75aa0a]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  96c31b:	aa 75 ff 
  96c31e:	48 c1 e2 06          	shl    rdx,0x6
  96c322:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  96c326:	31 d2                	xor    edx,edx
  96c328:	62 f1 fd 48 28 1d 8e 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff71a38e]        # 866c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13b70>
  96c32f:	a3 71 ff 
  96c332:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  96c336:	62 e2 fd 48 19 05 58 	vbroadcastsd zmm16,QWORD PTR [rip+0xffffffffff708758]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  96c33d:	87 70 ff 
  96c340:	62 f1 fd 48 28 35 b6 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff71a3b6]        # 86700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13bb0>
  96c347:	a3 71 ff 
  96c34a:	62 f2 fd 48 19 3d cc 	vbroadcastsd zmm7,QWORD PTR [rip+0xffffffffff7088cc]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  96c351:	88 70 ff 
  96c354:	62 71 fd 48 28 05 e2 	vmovapd zmm8,ZMMWORD PTR [rip+0xffffffffff71a3e2]        # 86740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13bf0>
  96c35b:	a3 71 ff 
  96c35e:	66 90                	xchg   ax,ax
  96c360:	c5 7b 12 4c 17 28    	vmovddup xmm9,QWORD PTR [rdi+rdx*1+0x28]
  96c366:	c4 63 31 0d 4c 17 20 	vblendpd xmm9,xmm9,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  96c36d:	01 
  96c36e:	c5 7d 10 14 17       	vmovupd ymm10,YMMWORD PTR [rdi+rdx*1]
  96c373:	c5 7d 10 5c 17 30    	vmovupd ymm11,YMMWORD PTR [rdi+rdx*1+0x30]
  96c379:	c5 7d 10 64 17 60    	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0x60]
  96c37f:	c5 7d 10 ac 17 90 00 	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0x90]
  96c386:	00 00 
  96c388:	62 53 2d 48 18 c9 02 	vinsertf32x4 zmm9,zmm10,xmm9,0x2
  96c38f:	62 51 fd 48 28 d1    	vmovapd zmm10,zmm9
  96c395:	62 72 e5 48 7f d4    	vpermt2pd zmm10,zmm3,zmm4
  96c39b:	62 72 cd 48 7f cc    	vpermt2pd zmm9,zmm6,zmm4
  96c3a1:	c5 7b 12 74 17 58    	vmovddup xmm14,QWORD PTR [rdi+rdx*1+0x58]
  96c3a7:	c4 63 09 0d 74 17 50 	vblendpd xmm14,xmm14,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  96c3ae:	01 
  96c3af:	62 53 25 48 18 de 02 	vinsertf32x4 zmm11,zmm11,xmm14,0x2
  96c3b6:	62 51 fd 48 28 f3    	vmovapd zmm14,zmm11
  96c3bc:	62 72 e5 48 7f f4    	vpermt2pd zmm14,zmm3,zmm4
  96c3c2:	62 72 cd 48 7f dc    	vpermt2pd zmm11,zmm6,zmm4
  96c3c8:	c5 7b 12 bc 17 88 00 	vmovddup xmm15,QWORD PTR [rdi+rdx*1+0x88]
  96c3cf:	00 00 
  96c3d1:	c4 63 01 0d bc 17 80 	vblendpd xmm15,xmm15,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  96c3d8:	00 00 00 01 
  96c3dc:	62 53 1d 48 18 e7 02 	vinsertf32x4 zmm12,zmm12,xmm15,0x2
  96c3e3:	62 51 fd 48 28 fc    	vmovapd zmm15,zmm12
  96c3e9:	62 72 e5 48 7f fc    	vpermt2pd zmm15,zmm3,zmm4
  96c3ef:	62 72 cd 48 7f e4    	vpermt2pd zmm12,zmm6,zmm4
  96c3f5:	c5 fb 12 ac 17 b8 00 	vmovddup xmm5,QWORD PTR [rdi+rdx*1+0xb8]
  96c3fc:	00 00 
  96c3fe:	c4 e3 51 0d ac 17 b0 	vblendpd xmm5,xmm5,XMMWORD PTR [rdi+rdx*1+0xb0],0x1
  96c405:	00 00 00 01 
  96c409:	62 f3 15 48 18 ed 02 	vinsertf32x4 zmm5,zmm13,xmm5,0x2
  96c410:	62 71 fd 48 28 ed    	vmovapd zmm13,zmm5
  96c416:	62 72 e5 48 7f ec    	vpermt2pd zmm13,zmm3,zmm4
  96c41c:	62 f2 cd 48 7f ec    	vpermt2pd zmm5,zmm6,zmm4
  96c422:	62 c1 b5 48 58 cc    	vaddpd zmm17,zmm9,zmm12
  96c428:	62 e1 a5 48 58 d5    	vaddpd zmm18,zmm11,zmm5
  96c42e:	62 a1 f5 40 58 da    	vaddpd zmm19,zmm17,zmm18
  96c434:	62 c1 ad 48 58 e7    	vaddpd zmm20,zmm10,zmm15
  96c43a:	62 c1 8d 48 58 ed    	vaddpd zmm21,zmm14,zmm13
  96c440:	62 a1 dd 40 58 f5    	vaddpd zmm22,zmm20,zmm21
  96c446:	62 51 b5 48 5c cc    	vsubpd zmm9,zmm9,zmm12
  96c44c:	62 51 8d 48 5c e5    	vsubpd zmm12,zmm14,zmm13
  96c452:	62 51 b5 48 58 ec    	vaddpd zmm13,zmm9,zmm12
  96c458:	62 51 ad 48 5c d7    	vsubpd zmm10,zmm10,zmm15
  96c45e:	62 d1 d5 48 5c eb    	vsubpd zmm5,zmm5,zmm11
  96c464:	62 51 d5 48 58 da    	vaddpd zmm11,zmm5,zmm10
  96c46a:	62 31 f5 40 5c f2    	vsubpd zmm14,zmm17,zmm18
  96c470:	62 31 dd 40 5c fd    	vsubpd zmm15,zmm20,zmm21
  96c476:	62 51 b5 48 5c cc    	vsubpd zmm9,zmm9,zmm12
  96c47c:	62 f1 ad 48 5c ed    	vsubpd zmm5,zmm10,zmm5
  96c482:	62 e2 fd 48 7f dc    	vpermt2pd zmm19,zmm0,zmm4
  96c488:	62 72 fd 48 7f ec    	vpermt2pd zmm13,zmm0,zmm4
  96c48e:	62 72 fd 48 7f f4    	vpermt2pd zmm14,zmm0,zmm4
  96c494:	62 72 fd 48 7f cc    	vpermt2pd zmm9,zmm0,zmm4
  96c49a:	62 31 fd 48 28 d3    	vmovapd zmm10,zmm19
  96c4a0:	62 52 f5 48 7f d6    	vpermt2pd zmm10,zmm1,zmm14
  96c4a6:	62 c2 ed 48 7f de    	vpermt2pd zmm19,zmm2,zmm14
  96c4ac:	62 51 fd 48 28 e5    	vmovapd zmm12,zmm13
  96c4b2:	62 52 f5 48 7f e1    	vpermt2pd zmm12,zmm1,zmm9
  96c4b8:	62 52 ed 48 7f e9    	vpermt2pd zmm13,zmm2,zmm9
  96c4be:	62 51 e5 40 14 cd    	vunpcklpd zmm9,zmm19,zmm13
  96c4c4:	62 51 ad 48 14 ec    	vunpcklpd zmm13,zmm10,zmm12
  96c4ca:	62 51 ad 48 15 d4    	vunpckhpd zmm10,zmm10,zmm12
  96c4d0:	62 e2 fd 48 7f f4    	vpermt2pd zmm22,zmm0,zmm4
  96c4d6:	62 72 fd 48 7f dc    	vpermt2pd zmm11,zmm0,zmm4
  96c4dc:	62 72 fd 48 7f fc    	vpermt2pd zmm15,zmm0,zmm4
  96c4e2:	62 f2 fd 48 7f ec    	vpermt2pd zmm5,zmm0,zmm4
  96c4e8:	62 31 fd 48 28 e6    	vmovapd zmm12,zmm22
  96c4ee:	62 52 f5 48 7f e7    	vpermt2pd zmm12,zmm1,zmm15
  96c4f4:	62 c2 ed 48 7f f7    	vpermt2pd zmm22,zmm2,zmm15
  96c4fa:	62 51 fd 48 28 f3    	vmovapd zmm14,zmm11
  96c500:	62 72 f5 48 7f f5    	vpermt2pd zmm14,zmm1,zmm5
  96c506:	62 72 ed 48 7f dd    	vpermt2pd zmm11,zmm2,zmm5
  96c50c:	62 d1 cd 40 14 eb    	vunpcklpd zmm5,zmm22,zmm11
  96c512:	62 51 9d 48 14 de    	vunpcklpd zmm11,zmm12,zmm14
  96c518:	62 51 9d 48 15 e6    	vunpckhpd zmm12,zmm12,zmm14
  96c51e:	62 71 fd 48 10 71 02 	vmovupd zmm14,ZMMWORD PTR [rcx+0x80]
  96c525:	62 71 fd 48 10 79 03 	vmovupd zmm15,ZMMWORD PTR [rcx+0xc0]
  96c52c:	62 e1 fd 48 10 49 04 	vmovupd zmm17,ZMMWORD PTR [rcx+0x100]
  96c533:	62 e1 fd 48 10 51 05 	vmovupd zmm18,ZMMWORD PTR [rcx+0x140]
  96c53a:	62 c1 ad 48 59 de    	vmulpd zmm19,zmm10,zmm14
  96c540:	62 c2 9d 48 bc df    	vfnmadd231pd zmm19,zmm12,zmm15
  96c546:	62 a1 b5 48 59 e1    	vmulpd zmm20,zmm9,zmm17
  96c54c:	62 a2 d5 48 bc e2    	vfnmadd231pd zmm20,zmm5,zmm18
  96c552:	62 a1 e5 40 58 ec    	vaddpd zmm21,zmm19,zmm20
  96c558:	62 51 9d 48 59 e6    	vmulpd zmm12,zmm12,zmm14
  96c55e:	62 52 ad 48 b8 e7    	vfmadd231pd zmm12,zmm10,zmm15
  96c564:	62 b1 d5 48 59 e9    	vmulpd zmm5,zmm5,zmm17
  96c56a:	62 b2 b5 48 b8 ea    	vfmadd231pd zmm5,zmm9,zmm18
  96c570:	62 71 9d 48 58 cd    	vaddpd zmm9,zmm12,zmm5
  96c576:	62 31 fd 48 28 d0    	vmovapd zmm10,zmm16
  96c57c:	62 52 d5 40 ac d5    	vfnmadd213pd zmm10,zmm21,zmm13
  96c582:	62 f1 9d 48 5c ed    	vsubpd zmm5,zmm12,zmm5
  96c588:	62 f1 d5 48 59 ef    	vmulpd zmm5,zmm5,zmm7
  96c58e:	62 71 ad 48 58 e5    	vaddpd zmm12,zmm10,zmm5
  96c594:	62 31 fd 48 28 f0    	vmovapd zmm14,zmm16
  96c59a:	62 52 b5 48 ac f3    	vfnmadd213pd zmm14,zmm9,zmm11
  96c5a0:	62 31 e5 40 5c fc    	vsubpd zmm15,zmm19,zmm20
  96c5a6:	62 71 85 48 59 ff    	vmulpd zmm15,zmm15,zmm7
  96c5ac:	62 c1 8d 48 5c cf    	vsubpd zmm17,zmm14,zmm15
  96c5b2:	62 f1 ad 48 5c ed    	vsubpd zmm5,zmm10,zmm5
  96c5b8:	62 51 8d 48 58 d7    	vaddpd zmm10,zmm14,zmm15
  96c5be:	62 51 a5 48 58 c9    	vaddpd zmm9,zmm11,zmm9
  96c5c4:	62 31 95 48 58 dd    	vaddpd zmm11,zmm13,zmm21
  96c5ca:	62 52 bd 48 7f cb    	vpermt2pd zmm9,zmm8,zmm11
  96c5d0:	62 71 fd 48 11 0c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm9
  96c5d7:	62 c2 bd 48 7f cc    	vpermt2pd zmm17,zmm8,zmm12
  96c5dd:	62 e1 fd 48 11 4c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x40],zmm17
  96c5e4:	01 
  96c5e5:	62 72 bd 48 7f d5    	vpermt2pd zmm10,zmm8,zmm5
  96c5eb:	62 71 fd 48 11 54 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x80],zmm10
  96c5f2:	02 
  96c5f3:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  96c5fa:	48 39 d0             	cmp    rax,rdx
  96c5fd:	0f 85 5d fd ff ff    	jne    96c360 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x60>
  96c603:	c5 f8 77             	vzeroupper
  96c606:	c3                   	ret
