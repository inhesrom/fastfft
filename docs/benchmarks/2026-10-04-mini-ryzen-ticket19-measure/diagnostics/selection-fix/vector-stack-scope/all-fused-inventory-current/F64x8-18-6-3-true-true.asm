
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009461c0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  9461c0:	62 f1 fd 48 10 05 9e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff780b9e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  9461c7:	0b 78 ff 
  9461ca:	62 f1 fd 48 10 0d 14 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff780b14]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  9461d1:	0b 78 ff 
  9461d4:	62 f1 fd 48 10 15 4a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff780b4a]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  9461db:	0b 78 ff 
  9461de:	48 c1 e2 05          	shl    rdx,0x5
  9461e2:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  9461e6:	31 d2                	xor    edx,edx
  9461e8:	62 f1 fd 48 28 1d ce 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff73d8ce]        # 83ac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x10f70>
  9461ef:	d8 73 ff 
  9461f2:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  9461f6:	62 f1 fd 48 28 2d 00 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff73d900]        # 83b00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x10fb0>
  9461fd:	d9 73 ff 
  946200:	62 f2 fd 48 19 35 8e 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff72e88e]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  946207:	e8 72 ff 
  94620a:	62 f2 fd 48 19 3d 0c 	vbroadcastsd zmm7,QWORD PTR [rip+0xffffffffff72ea0c]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  946211:	ea 72 ff 
  946214:	62 e1 fd 28 28 05 e2 	vmovapd ymm16,YMMWORD PTR [rip+0xffffffffff730ae2]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  94621b:	0a 73 ff 
  94621e:	62 e1 fd 48 28 1d 18 	vmovapd zmm19,ZMMWORD PTR [rip+0xffffffffff73d918]        # 83b40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x10ff0>
  946225:	d9 73 ff 
  946228:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  94622f:	00 
  946230:	c5 7b 12 54 17 28    	vmovddup xmm10,QWORD PTR [rdi+rdx*1+0x28]
  946236:	c4 63 29 0d 54 17 20 	vblendpd xmm10,xmm10,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  94623d:	01 
  94623e:	c5 7d 10 1c 17       	vmovupd ymm11,YMMWORD PTR [rdi+rdx*1]
  946243:	c5 7d 10 64 17 30    	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0x30]
  946249:	c5 7d 10 6c 17 60    	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0x60]
  94624f:	c5 7d 10 b4 17 90 00 	vmovupd ymm14,YMMWORD PTR [rdi+rdx*1+0x90]
  946256:	00 00 
  946258:	62 53 25 48 18 da 02 	vinsertf32x4 zmm11,zmm11,xmm10,0x2
  94625f:	62 51 fd 48 28 d3    	vmovapd zmm10,zmm11
  946265:	62 72 e5 48 7f d4    	vpermt2pd zmm10,zmm3,zmm4
  94626b:	c5 7b 12 7c 17 58    	vmovddup xmm15,QWORD PTR [rdi+rdx*1+0x58]
  946271:	62 72 d5 48 7f dc    	vpermt2pd zmm11,zmm5,zmm4
  946277:	c4 63 01 0d 7c 17 50 	vblendpd xmm15,xmm15,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  94627e:	01 
  94627f:	62 53 1d 48 18 e7 02 	vinsertf32x4 zmm12,zmm12,xmm15,0x2
  946286:	62 51 fd 48 28 fc    	vmovapd zmm15,zmm12
  94628c:	62 72 e5 48 7f fc    	vpermt2pd zmm15,zmm3,zmm4
  946292:	c5 7b 12 84 17 88 00 	vmovddup xmm8,QWORD PTR [rdi+rdx*1+0x88]
  946299:	00 00 
  94629b:	62 72 d5 48 7f e4    	vpermt2pd zmm12,zmm5,zmm4
  9462a1:	c4 63 39 0d 84 17 80 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  9462a8:	00 00 00 01 
  9462ac:	62 53 15 48 18 c0 02 	vinsertf32x4 zmm8,zmm13,xmm8,0x2
  9462b3:	62 c1 fd 48 28 c8    	vmovapd zmm17,zmm8
  9462b9:	62 e2 e5 48 7f cc    	vpermt2pd zmm17,zmm3,zmm4
  9462bf:	c5 7b 12 ac 17 b8 00 	vmovddup xmm13,QWORD PTR [rdi+rdx*1+0xb8]
  9462c6:	00 00 
  9462c8:	62 72 d5 48 7f c4    	vpermt2pd zmm8,zmm5,zmm4
  9462ce:	c4 63 11 0d ac 17 b0 	vblendpd xmm13,xmm13,XMMWORD PTR [rdi+rdx*1+0xb0],0x1
  9462d5:	00 00 00 01 
  9462d9:	62 53 0d 48 18 f5 02 	vinsertf32x4 zmm14,zmm14,xmm13,0x2
  9462e0:	62 c1 fd 48 28 d6    	vmovapd zmm18,zmm14
  9462e6:	62 e2 e5 48 7f d4    	vpermt2pd zmm18,zmm3,zmm4
  9462ec:	62 72 d5 48 7f f4    	vpermt2pd zmm14,zmm5,zmm4
  9462f2:	c5 7d 10 ac 17 c0 00 	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0xc0]
  9462f9:	00 00 
  9462fb:	c5 7b 12 8c 17 e8 00 	vmovddup xmm9,QWORD PTR [rdi+rdx*1+0xe8]
  946302:	00 00 
  946304:	c4 63 31 0d 8c 17 e0 	vblendpd xmm9,xmm9,XMMWORD PTR [rdi+rdx*1+0xe0],0x1
  94630b:	00 00 00 01 
  94630f:	62 53 15 48 18 c9 02 	vinsertf32x4 zmm9,zmm13,xmm9,0x2
  946316:	62 c1 fd 48 28 e1    	vmovapd zmm20,zmm9
  94631c:	62 e2 e5 48 7f e4    	vpermt2pd zmm20,zmm3,zmm4
  946322:	62 72 d5 48 7f cc    	vpermt2pd zmm9,zmm5,zmm4
  946328:	c5 7b 12 ac 17 18 01 	vmovddup xmm13,QWORD PTR [rdi+rdx*1+0x118]
  94632f:	00 00 
  946331:	c4 63 11 0d ac 17 10 	vblendpd xmm13,xmm13,XMMWORD PTR [rdi+rdx*1+0x110],0x1
  946338:	01 00 00 01 
  94633c:	62 e1 fd 28 10 ac 17 	vmovupd ymm21,YMMWORD PTR [rdi+rdx*1+0xf0]
  946343:	f0 00 00 00 
  946347:	62 c3 55 40 18 ed 02 	vinsertf32x4 zmm21,zmm21,xmm13,0x2
  94634e:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  946354:	62 e2 e5 48 7f f4    	vpermt2pd zmm22,zmm3,zmm4
  94635a:	62 e2 d5 48 7f ec    	vpermt2pd zmm21,zmm5,zmm4
  946360:	62 c1 bd 48 58 f9    	vaddpd zmm23,zmm8,zmm9
  946366:	62 21 a5 48 58 c7    	vaddpd zmm24,zmm11,zmm23
  94636c:	62 41 d5 40 58 cc    	vaddpd zmm25,zmm21,zmm12
  946372:	62 01 8d 48 58 d1    	vaddpd zmm26,zmm14,zmm25
  946378:	62 01 bd 40 58 da    	vaddpd zmm27,zmm24,zmm26
  94637e:	62 21 f5 40 58 e4    	vaddpd zmm28,zmm17,zmm20
  946384:	62 01 ad 48 58 ec    	vaddpd zmm29,zmm10,zmm28
  94638a:	62 41 cd 40 58 f7    	vaddpd zmm30,zmm22,zmm15
  946390:	62 01 ed 40 58 fe    	vaddpd zmm31,zmm18,zmm30
  946396:	62 11 95 40 58 ef    	vaddpd zmm13,zmm29,zmm31
  94639c:	62 32 cd 48 bc df    	vfnmadd231pd zmm11,zmm6,zmm23
  9463a2:	62 a1 f5 40 5c cc    	vsubpd zmm17,zmm17,zmm20
  9463a8:	62 e1 f5 40 59 cf    	vmulpd zmm17,zmm17,zmm7
  9463ae:	62 a1 a5 48 58 e1    	vaddpd zmm20,zmm11,zmm17
  9463b4:	62 12 cd 48 bc f1    	vfnmadd231pd zmm14,zmm6,zmm25
  9463ba:	62 51 cd 40 5c ff    	vsubpd zmm15,zmm22,zmm15
  9463c0:	62 71 85 48 59 ff    	vmulpd zmm15,zmm15,zmm7
  9463c6:	62 c1 8d 48 58 f7    	vaddpd zmm22,zmm14,zmm15
  9463cc:	62 a1 dd 40 5c fe    	vsubpd zmm23,zmm20,zmm22
  9463d2:	62 12 cd 48 bc d4    	vfnmadd231pd zmm10,zmm6,zmm28
  9463d8:	62 51 bd 48 5c c1    	vsubpd zmm8,zmm8,zmm9
  9463de:	62 71 bd 48 59 c7    	vmulpd zmm8,zmm8,zmm7
  9463e4:	62 51 ad 48 5c c8    	vsubpd zmm9,zmm10,zmm8
  9463ea:	62 82 cd 48 bc d6    	vfnmadd231pd zmm18,zmm6,zmm30
  9463f0:	62 51 d5 40 5c e4    	vsubpd zmm12,zmm21,zmm12
  9463f6:	62 71 9d 48 59 e7    	vmulpd zmm12,zmm12,zmm7
  9463fc:	62 c1 ed 40 5c ec    	vsubpd zmm21,zmm18,zmm12
  946402:	62 21 b5 48 5c cd    	vsubpd zmm25,zmm9,zmm21
  946408:	62 31 a5 48 5c d9    	vsubpd zmm11,zmm11,zmm17
  94640e:	62 51 8d 48 5c f7    	vsubpd zmm14,zmm14,zmm15
  946414:	62 51 a5 48 58 fe    	vaddpd zmm15,zmm11,zmm14
  94641a:	62 51 bd 48 58 c2    	vaddpd zmm8,zmm8,zmm10
  946420:	62 31 9d 48 58 d2    	vaddpd zmm10,zmm12,zmm18
  946426:	62 51 bd 48 58 e2    	vaddpd zmm12,zmm8,zmm10
  94642c:	62 81 bd 40 5c ca    	vsubpd zmm17,zmm24,zmm26
  946432:	62 81 95 40 5c d7    	vsubpd zmm18,zmm29,zmm31
  946438:	62 a1 dd 40 58 e6    	vaddpd zmm20,zmm20,zmm22
  94643e:	62 31 b5 48 58 cd    	vaddpd zmm9,zmm9,zmm21
  946444:	62 51 a5 48 5c de    	vsubpd zmm11,zmm11,zmm14
  94644a:	62 51 bd 48 5c c2    	vsubpd zmm8,zmm8,zmm10
  946450:	62 22 fd 48 7f dc    	vpermt2pd zmm27,zmm0,zmm20
  946456:	62 c2 fd 48 7f fb    	vpermt2pd zmm23,zmm0,zmm11
  94645c:	62 72 fd 48 7f fc    	vpermt2pd zmm15,zmm0,zmm4
  946462:	62 e2 fd 48 7f cc    	vpermt2pd zmm17,zmm0,zmm4
  946468:	62 11 fd 48 28 d3    	vmovapd zmm10,zmm27
  94646e:	62 52 f5 48 7f d7    	vpermt2pd zmm10,zmm1,zmm15
  946474:	62 42 ed 48 7f df    	vpermt2pd zmm27,zmm2,zmm15
  94647a:	62 31 fd 48 28 df    	vmovapd zmm11,zmm23
  946480:	62 32 f5 48 7f d9    	vpermt2pd zmm11,zmm1,zmm17
  946486:	62 a2 ed 48 7f f9    	vpermt2pd zmm23,zmm2,zmm17
  94648c:	62 31 a5 40 14 f7    	vunpcklpd zmm14,zmm27,zmm23
  946492:	62 51 ad 48 14 fb    	vunpcklpd zmm15,zmm10,zmm11
  946498:	62 51 ad 48 15 d3    	vunpckhpd zmm10,zmm10,zmm11
  94649e:	62 52 fd 48 7f e9    	vpermt2pd zmm13,zmm0,zmm9
  9464a4:	62 42 fd 48 7f c8    	vpermt2pd zmm25,zmm0,zmm8
  9464aa:	62 72 fd 48 7f e4    	vpermt2pd zmm12,zmm0,zmm4
  9464b0:	62 e2 fd 48 7f d4    	vpermt2pd zmm18,zmm0,zmm4
  9464b6:	62 51 fd 48 28 c5    	vmovapd zmm8,zmm13
  9464bc:	62 52 f5 48 7f c4    	vpermt2pd zmm8,zmm1,zmm12
  9464c2:	62 52 ed 48 7f ec    	vpermt2pd zmm13,zmm2,zmm12
  9464c8:	62 11 fd 48 28 c9    	vmovapd zmm9,zmm25
  9464ce:	62 32 f5 48 7f ca    	vpermt2pd zmm9,zmm1,zmm18
  9464d4:	62 22 ed 48 7f ca    	vpermt2pd zmm25,zmm2,zmm18
  9464da:	62 11 95 48 14 d9    	vunpcklpd zmm11,zmm13,zmm25
  9464e0:	62 51 bd 48 14 e1    	vunpcklpd zmm12,zmm8,zmm9
  9464e6:	62 51 bd 48 15 c1    	vunpckhpd zmm8,zmm8,zmm9
  9464ec:	62 71 fd 48 10 49 02 	vmovupd zmm9,ZMMWORD PTR [rcx+0x80]
  9464f3:	62 71 fd 48 10 69 03 	vmovupd zmm13,ZMMWORD PTR [rcx+0xc0]
  9464fa:	62 e1 fd 48 10 49 04 	vmovupd zmm17,ZMMWORD PTR [rcx+0x100]
  946501:	62 e1 fd 48 10 51 05 	vmovupd zmm18,ZMMWORD PTR [rcx+0x140]
  946508:	62 c1 ad 48 59 e1    	vmulpd zmm20,zmm10,zmm9
  94650e:	62 c2 bd 48 bc e5    	vfnmadd231pd zmm20,zmm8,zmm13
  946514:	62 a1 8d 48 59 e9    	vmulpd zmm21,zmm14,zmm17
  94651a:	62 a2 a5 48 bc ea    	vfnmadd231pd zmm21,zmm11,zmm18
  946520:	62 a1 dd 40 58 f5    	vaddpd zmm22,zmm20,zmm21
  946526:	62 51 bd 48 59 c1    	vmulpd zmm8,zmm8,zmm9
  94652c:	62 52 ad 48 b8 c5    	vfmadd231pd zmm8,zmm10,zmm13
  946532:	62 31 a5 48 59 c9    	vmulpd zmm9,zmm11,zmm17
  946538:	62 32 8d 48 b8 ca    	vfmadd231pd zmm9,zmm14,zmm18
  94653e:	62 51 bd 48 58 d1    	vaddpd zmm10,zmm8,zmm9
  946544:	62 71 fd 48 28 de    	vmovapd zmm11,zmm6
  94654a:	62 52 cd 40 ac df    	vfnmadd213pd zmm11,zmm22,zmm15
  946550:	62 51 bd 48 5c c1    	vsubpd zmm8,zmm8,zmm9
  946556:	62 71 bd 48 59 c7    	vmulpd zmm8,zmm8,zmm7
  94655c:	62 51 a5 48 58 c8    	vaddpd zmm9,zmm11,zmm8
  946562:	62 71 fd 48 28 ee    	vmovapd zmm13,zmm6
  946568:	62 52 ad 48 ac ec    	vfnmadd213pd zmm13,zmm10,zmm12
  94656e:	62 31 dd 40 5c f5    	vsubpd zmm14,zmm20,zmm21
  946574:	62 71 8d 48 59 f7    	vmulpd zmm14,zmm14,zmm7
  94657a:	62 c1 95 48 5c ce    	vsubpd zmm17,zmm13,zmm14
  946580:	62 a1 fd 48 28 d1    	vmovapd zmm18,zmm17
  946586:	62 c2 fd 40 7f d1    	vpermt2pd zmm18,zmm16,zmm9
  94658c:	62 51 a5 48 5c c0    	vsubpd zmm8,zmm11,zmm8
  946592:	62 51 95 48 58 de    	vaddpd zmm11,zmm13,zmm14
  946598:	62 51 fd 48 28 eb    	vmovapd zmm13,zmm11
  94659e:	62 52 fd 40 7f e8    	vpermt2pd zmm13,zmm16,zmm8
  9465a4:	62 51 9d 48 58 d2    	vaddpd zmm10,zmm12,zmm10
  9465aa:	62 31 85 48 58 e6    	vaddpd zmm12,zmm15,zmm22
  9465b0:	62 51 fd 48 28 f2    	vmovapd zmm14,zmm10
  9465b6:	62 52 fd 40 7f f4    	vpermt2pd zmm14,zmm16,zmm12
  9465bc:	62 52 e5 40 7f d4    	vpermt2pd zmm10,zmm19,zmm12
  9465c2:	62 71 fd 48 11 14 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm10
  9465c9:	c5 7d 11 74 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm14
  9465cf:	62 c2 e5 40 7f c9    	vpermt2pd zmm17,zmm19,zmm9
  9465d5:	62 e1 fd 48 11 8c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x60],zmm17
  9465dc:	60 00 00 00 
  9465e0:	62 e1 fd 28 11 54 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm18
  9465e7:	05 
  9465e8:	62 52 e5 40 7f d8    	vpermt2pd zmm11,zmm19,zmm8
  9465ee:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm11
  9465f5:	03 
  9465f6:	c5 7d 11 ac 16 00 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x100],ymm13
  9465fd:	00 00 
  9465ff:	48 81 c2 20 01 00 00 	add    rdx,0x120
  946606:	48 39 d0             	cmp    rax,rdx
  946609:	0f 85 21 fc ff ff    	jne    946230 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  94660f:	c5 f8 77             	vzeroupper
  946612:	c3                   	ret
