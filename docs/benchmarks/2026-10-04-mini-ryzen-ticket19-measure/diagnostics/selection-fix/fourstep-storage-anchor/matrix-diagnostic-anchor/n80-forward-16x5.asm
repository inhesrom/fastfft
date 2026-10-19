
target/ticket19/selection-fix/large-storage-crossover/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000bdd200 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  bdd200:	55                   	push   rbp
  bdd201:	48 89 e5             	mov    rbp,rsp
  bdd204:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  bdd208:	48 81 ec 40 08 00 00 	sub    rsp,0x840
  bdd20f:	c5 fc 10 82 00 04 00 	vmovups ymm0,YMMWORD PTR [rdx+0x400]
  bdd216:	00 
  bdd217:	c5 fc 10 8a 20 04 00 	vmovups ymm1,YMMWORD PTR [rdx+0x420]
  bdd21e:	00 
  bdd21f:	c5 fc 10 92 40 04 00 	vmovups ymm2,YMMWORD PTR [rdx+0x440]
  bdd226:	00 
  bdd227:	c5 fc 10 9a 60 04 00 	vmovups ymm3,YMMWORD PTR [rdx+0x460]
  bdd22e:	00 
  bdd22f:	c5 fc 10 a2 a0 04 00 	vmovups ymm4,YMMWORD PTR [rdx+0x4a0]
  bdd236:	00 
  bdd237:	c5 fc 10 aa 80 04 00 	vmovups ymm5,YMMWORD PTR [rdx+0x480]
  bdd23e:	00 
  bdd23f:	31 c0                	xor    eax,eax
  bdd241:	c4 e2 7d 19 35 36 21 	vbroadcastsd ymm6,QWORD PTR [rip+0xffffffffff4c2136]        # 9f380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a50>
  bdd248:	4c ff 
  bdd24a:	c4 e2 7d 18 3d d1 26 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff4c26d1]        # 9f924 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2ff4>
  bdd251:	4c ff 
  bdd253:	c4 62 7d 19 05 e4 1d 	vbroadcastsd ymm8,QWORD PTR [rip+0xffffffffff4c1de4]        # 9f040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2710>
  bdd25a:	4c ff 
  bdd25c:	c4 62 7d 18 0d a3 27 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff4c27a3]        # 9fa08 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30d8>
  bdd263:	4c ff 
  bdd265:	48 89 f9             	mov    rcx,rdi
  bdd268:	45 31 c0             	xor    r8d,r8d
  bdd26b:	eb 61                	jmp    bdd2ce <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xce>
  bdd26d:	0f 1f 00             	nop    DWORD PTR [rax]
  bdd270:	62 a1 6c 00 16 d3    	vmovlhps xmm18,xmm18,xmm19
  bdd276:	62 a1 5c 00 16 de    	vmovlhps xmm19,xmm20,xmm22
  bdd27c:	62 e1 7c 08 29 5c c4 	vmovaps XMMWORD PTR [rsp+rax*8+0x30],xmm19
  bdd283:	03 
  bdd284:	62 e1 7c 08 29 54 c4 	vmovaps XMMWORD PTR [rsp+rax*8+0x20],xmm18
  bdd28b:	02 
  bdd28c:	c4 41 08 16 f7       	vmovlhps xmm14,xmm14,xmm15
  bdd291:	62 31 74 00 16 f8    	vmovlhps xmm15,xmm17,xmm16
  bdd297:	c5 78 29 7c c4 50    	vmovaps XMMWORD PTR [rsp+rax*8+0x50],xmm15
  bdd29d:	c5 78 29 74 c4 40    	vmovaps XMMWORD PTR [rsp+rax*8+0x40],xmm14
  bdd2a3:	c4 41 10 16 db       	vmovlhps xmm11,xmm13,xmm11
  bdd2a8:	c4 41 18 16 d2       	vmovlhps xmm10,xmm12,xmm10
  bdd2ad:	c5 78 29 54 c4 70    	vmovaps XMMWORD PTR [rsp+rax*8+0x70],xmm10
  bdd2b3:	c5 78 29 5c c4 60    	vmovaps XMMWORD PTR [rsp+rax*8+0x60],xmm11
  bdd2b9:	48 83 c0 40          	add    rax,0x40
  bdd2bd:	48 83 c1 20          	add    rcx,0x20
  bdd2c1:	41 f6 c0 01          	test   r8b,0x1
  bdd2c5:	41 b0 01             	mov    r8b,0x1
  bdd2c8:	0f 85 e5 04 00 00    	jne    bdd7b3 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x5b3>
  bdd2ce:	48 85 c0             	test   rax,rax
  bdd2d1:	74 7d                	je     bdd350 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x150>
  bdd2d3:	c5 7b 10 39          	vmovsd xmm15,QWORD PTR [rcx]
  bdd2d7:	c5 7b 10 71 28       	vmovsd xmm14,QWORD PTR [rcx+0x28]
  bdd2dc:	c5 7b 10 51 50       	vmovsd xmm10,QWORD PTR [rcx+0x50]
  bdd2e1:	c5 7b 10 61 78       	vmovsd xmm12,QWORD PTR [rcx+0x78]
  bdd2e6:	62 e1 ff 08 10 61 14 	vmovsd xmm20,QWORD PTR [rcx+0xa0]
  bdd2ed:	62 e1 ff 08 10 49 19 	vmovsd xmm17,QWORD PTR [rcx+0xc8]
  bdd2f4:	c5 7b 10 99 f0 00 00 	vmovsd xmm11,QWORD PTR [rcx+0xf0]
  bdd2fb:	00 
  bdd2fc:	c5 7b 10 a9 18 01 00 	vmovsd xmm13,QWORD PTR [rcx+0x118]
  bdd303:	00 
  bdd304:	62 e1 ff 08 10 79 28 	vmovsd xmm23,QWORD PTR [rcx+0x140]
  bdd30b:	62 e1 ff 08 10 69 2d 	vmovsd xmm21,QWORD PTR [rcx+0x168]
  bdd312:	62 e1 ff 08 10 51 32 	vmovsd xmm18,QWORD PTR [rcx+0x190]
  bdd319:	62 e1 ff 08 10 41 37 	vmovsd xmm16,QWORD PTR [rcx+0x1b8]
  bdd320:	62 61 ff 08 10 49 3c 	vmovsd xmm25,QWORD PTR [rcx+0x1e0]
  bdd327:	62 61 ff 08 10 41 41 	vmovsd xmm24,QWORD PTR [rcx+0x208]
  bdd32e:	62 e1 ff 08 10 71 46 	vmovsd xmm22,QWORD PTR [rcx+0x230]
  bdd335:	62 e1 ff 08 10 59 4b 	vmovsd xmm19,QWORD PTR [rcx+0x258]
  bdd33c:	e9 8d 00 00 00       	jmp    bdd3ce <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x1ce>
  bdd341:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  bdd348:	0f 1f 84 00 00 00 00 
  bdd34f:	00 
  bdd350:	c5 7c 10 39          	vmovups ymm15,YMMWORD PTR [rcx]
  bdd354:	c5 7c 10 61 78       	vmovups ymm12,YMMWORD PTR [rcx+0x78]
  bdd359:	c5 7c 10 99 f0 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0xf0]
  bdd360:	00 
  bdd361:	c5 7c 10 77 28       	vmovups ymm14,YMMWORD PTR [rdi+0x28]
  bdd366:	c5 7c 10 57 50       	vmovups ymm10,YMMWORD PTR [rdi+0x50]
  bdd36b:	62 e1 7c 28 10 67 05 	vmovups ymm20,YMMWORD PTR [rdi+0xa0]
  bdd372:	62 e1 7c 28 10 8f c8 	vmovups ymm17,YMMWORD PTR [rdi+0xc8]
  bdd379:	00 00 00 
  bdd37c:	c5 7c 10 af 18 01 00 	vmovups ymm13,YMMWORD PTR [rdi+0x118]
  bdd383:	00 
  bdd384:	62 e1 7c 28 10 7f 0a 	vmovups ymm23,YMMWORD PTR [rdi+0x140]
  bdd38b:	62 e1 7c 28 10 af 68 	vmovups ymm21,YMMWORD PTR [rdi+0x168]
  bdd392:	01 00 00 
  bdd395:	62 e1 7c 28 10 97 90 	vmovups ymm18,YMMWORD PTR [rdi+0x190]
  bdd39c:	01 00 00 
  bdd39f:	62 e1 7c 28 10 87 b8 	vmovups ymm16,YMMWORD PTR [rdi+0x1b8]
  bdd3a6:	01 00 00 
  bdd3a9:	62 61 7c 28 10 4f 0f 	vmovups ymm25,YMMWORD PTR [rdi+0x1e0]
  bdd3b0:	62 61 7c 28 10 87 08 	vmovups ymm24,YMMWORD PTR [rdi+0x208]
  bdd3b7:	02 00 00 
  bdd3ba:	62 e1 7c 28 10 b7 30 	vmovups ymm22,YMMWORD PTR [rdi+0x230]
  bdd3c1:	02 00 00 
  bdd3c4:	62 e1 7c 28 10 9f 58 	vmovups ymm19,YMMWORD PTR [rdi+0x258]
  bdd3cb:	02 00 00 
  bdd3ce:	62 21 04 28 58 d7    	vaddps ymm26,ymm15,ymm23
  bdd3d4:	62 21 04 28 5c df    	vsubps ymm27,ymm15,ymm23
  bdd3da:	62 01 5c 20 58 e1    	vaddps ymm28,ymm20,ymm25
  bdd3e0:	62 11 5c 20 5c f9    	vsubps ymm15,ymm20,ymm25
  bdd3e6:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  bdd3ec:	62 e1 7c 28 28 fe    	vmovaps ymm23,ymm6
  bdd3f2:	62 82 05 28 a8 fb    	vfmadd213ps ymm23,ymm15,ymm27
  bdd3f8:	62 12 4d 28 ac fb    	vfnmadd213ps ymm15,ymm6,ymm27
  bdd3fe:	62 01 2c 20 58 cc    	vaddps ymm25,ymm26,ymm28
  bdd404:	62 81 2c 20 5c e4    	vsubps ymm20,ymm26,ymm28
  bdd40a:	62 21 0c 28 58 d5    	vaddps ymm26,ymm14,ymm21
  bdd410:	62 31 0c 28 5c f5    	vsubps ymm14,ymm14,ymm21
  bdd416:	62 81 74 20 58 e8    	vaddps ymm21,ymm17,ymm24
  bdd41c:	62 81 74 20 5c c8    	vsubps ymm17,ymm17,ymm24
  bdd422:	62 a1 74 20 c6 c9 b1 	vshufps ymm17,ymm17,ymm17,0xb1
  bdd429:	62 61 7c 28 28 c6    	vmovaps ymm24,ymm6
  bdd42f:	62 42 75 20 a8 c6    	vfmadd213ps ymm24,ymm17,ymm14
  bdd435:	62 c2 4d 28 ac ce    	vfnmadd213ps ymm17,ymm6,ymm14
  bdd43b:	62 31 2c 20 58 f5    	vaddps ymm14,ymm26,ymm21
  bdd441:	62 a1 2c 20 5c ed    	vsubps ymm21,ymm26,ymm21
  bdd447:	62 21 2c 28 58 d2    	vaddps ymm26,ymm10,ymm18
  bdd44d:	62 a1 2c 28 5c d2    	vsubps ymm18,ymm10,ymm18
  bdd453:	62 21 24 28 58 de    	vaddps ymm27,ymm11,ymm22
  bdd459:	62 31 24 28 5c d6    	vsubps ymm10,ymm11,ymm22
  bdd45f:	c4 41 2c c6 d2 b1    	vshufps ymm10,ymm10,ymm10,0xb1
  bdd465:	c5 7c 28 de          	vmovaps ymm11,ymm6
  bdd469:	62 32 2d 28 a8 da    	vfmadd213ps ymm11,ymm10,ymm18
  bdd46f:	62 32 4d 28 ac d2    	vfnmadd213ps ymm10,ymm6,ymm18
  bdd475:	62 81 2c 20 58 d3    	vaddps ymm18,ymm26,ymm27
  bdd47b:	62 81 2c 20 5c f3    	vsubps ymm22,ymm26,ymm27
  bdd481:	62 21 1c 28 58 d0    	vaddps ymm26,ymm12,ymm16
  bdd487:	62 31 1c 28 5c e0    	vsubps ymm12,ymm12,ymm16
  bdd48d:	62 a1 14 28 58 c3    	vaddps ymm16,ymm13,ymm19
  bdd493:	62 31 14 28 5c eb    	vsubps ymm13,ymm13,ymm19
  bdd499:	c4 41 14 c6 ed b1    	vshufps ymm13,ymm13,ymm13,0xb1
  bdd49f:	62 e1 7c 28 28 de    	vmovaps ymm19,ymm6
  bdd4a5:	62 c2 15 28 a8 dc    	vfmadd213ps ymm19,ymm13,ymm12
  bdd4ab:	c4 42 4d ac ec       	vfnmadd213ps ymm13,ymm6,ymm12
  bdd4b0:	62 21 2c 20 58 d8    	vaddps ymm27,ymm26,ymm16
  bdd4b6:	62 31 2c 20 5c e0    	vsubps ymm12,ymm26,ymm16
  bdd4bc:	62 81 3c 20 c6 c0 b1 	vshufps ymm16,ymm24,ymm24,0xb1
  bdd4c3:	62 61 3c 20 59 c0    	vmulps ymm24,ymm24,ymm0
  bdd4c9:	62 22 75 28 b8 c0    	vfmadd231ps ymm24,ymm1,ymm16
  bdd4cf:	62 a1 54 20 c6 c5 b1 	vshufps ymm16,ymm21,ymm21,0xb1
  bdd4d6:	62 61 54 20 59 d7    	vmulps ymm26,ymm21,ymm7
  bdd4dc:	62 22 3d 28 b8 d0    	vfmadd231ps ymm26,ymm8,ymm16
  bdd4e2:	62 a1 74 20 c6 e9 b1 	vshufps ymm21,ymm17,ymm17,0xb1
  bdd4e9:	62 e1 74 20 59 c2    	vmulps ymm16,ymm17,ymm2
  bdd4ef:	62 a2 65 28 b8 c5    	vfmadd231ps ymm16,ymm3,ymm21
  bdd4f5:	62 a1 64 20 c6 cb b1 	vshufps ymm17,ymm19,ymm19,0xb1
  bdd4fc:	62 e1 64 20 59 da    	vmulps ymm19,ymm19,ymm2
  bdd502:	62 a2 65 28 b8 d9    	vfmadd231ps ymm19,ymm3,ymm17
  bdd508:	62 c1 1c 28 c6 cc b1 	vshufps ymm17,ymm12,ymm12,0xb1
  bdd50f:	62 41 1c 28 59 e1    	vmulps ymm28,ymm12,ymm9
  bdd515:	62 22 3d 28 b8 e1    	vfmadd231ps ymm28,ymm8,ymm17
  bdd51b:	c4 41 14 c6 e5 b1    	vshufps ymm12,ymm13,ymm13,0xb1
  bdd521:	62 61 14 28 59 ed    	vmulps ymm29,ymm13,ymm5
  bdd527:	62 42 5d 28 b8 ec    	vfmadd231ps ymm29,ymm4,ymm12
  bdd52d:	62 a1 34 20 58 ca    	vaddps ymm17,ymm25,ymm18
  bdd533:	62 a1 34 20 5c ea    	vsubps ymm21,ymm25,ymm18
  bdd539:	c4 41 24 c6 e3 b1    	vshufps ymm12,ymm11,ymm11,0xb1
  bdd53f:	62 61 7c 28 28 cf    	vmovaps ymm25,ymm7
  bdd545:	62 22 25 28 a8 cf    	vfmadd213ps ymm25,ymm11,ymm23
  bdd54b:	62 42 1d 28 b8 c8    	vfmadd231ps ymm25,ymm12,ymm8
  bdd551:	62 32 45 28 ac df    	vfnmadd213ps ymm11,ymm7,ymm23
  bdd557:	c4 42 3d bc dc       	vfnmadd231ps ymm11,ymm8,ymm12
  bdd55c:	62 31 4c 20 c6 e6 b1 	vshufps ymm12,ymm22,ymm22,0xb1
  bdd563:	62 e1 7c 28 28 f6    	vmovaps ymm22,ymm6
  bdd569:	62 a2 1d 28 a8 f4    	vfmadd213ps ymm22,ymm12,ymm20
  bdd56f:	62 32 4d 28 ac e4    	vfnmadd213ps ymm12,ymm6,ymm20
  bdd575:	c4 41 2c c6 ea b1    	vshufps ymm13,ymm10,ymm10,0xb1
  bdd57b:	62 61 7c 28 28 f7    	vmovaps ymm30,ymm7
  bdd581:	62 42 2d 28 ac f7    	vfnmadd213ps ymm30,ymm10,ymm15
  bdd587:	62 42 15 28 b8 f0    	vfmadd231ps ymm30,ymm13,ymm8
  bdd58d:	c4 42 45 a8 d7       	vfmadd213ps ymm10,ymm7,ymm15
  bdd592:	c4 42 3d bc d5       	vfnmadd231ps ymm10,ymm8,ymm13
  bdd597:	62 11 0c 28 58 fb    	vaddps ymm15,ymm14,ymm27
  bdd59d:	62 11 0c 28 5c eb    	vsubps ymm13,ymm14,ymm27
  bdd5a3:	c4 41 14 c6 ed b1    	vshufps ymm13,ymm13,ymm13,0xb1
  bdd5a9:	62 e1 7c 28 28 d6    	vmovaps ymm18,ymm6
  bdd5af:	62 a2 15 28 a8 d5    	vfmadd213ps ymm18,ymm13,ymm21
  bdd5b5:	62 32 4d 28 ac ed    	vfnmadd213ps ymm13,ymm6,ymm21
  bdd5bb:	62 c1 74 20 58 ef    	vaddps ymm21,ymm17,ymm15
  bdd5c1:	62 51 74 20 5c f7    	vsubps ymm14,ymm17,ymm15
  bdd5c7:	62 31 3c 20 58 fb    	vaddps ymm15,ymm24,ymm19
  bdd5cd:	62 a1 3c 20 5c cb    	vsubps ymm17,ymm24,ymm19
  bdd5d3:	62 a1 74 20 c6 c9 b1 	vshufps ymm17,ymm17,ymm17,0xb1
  bdd5da:	62 e1 7c 28 28 de    	vmovaps ymm19,ymm6
  bdd5e0:	62 c2 75 20 a8 db    	vfmadd213ps ymm19,ymm17,ymm11
  bdd5e6:	62 32 4d 28 bc d9    	vfnmadd231ps ymm11,ymm6,ymm17
  bdd5ec:	62 c1 34 20 58 ff    	vaddps ymm23,ymm25,ymm15
  bdd5f2:	62 51 34 20 5c ff    	vsubps ymm15,ymm25,ymm15
  bdd5f8:	62 81 2c 20 58 cc    	vaddps ymm17,ymm26,ymm28
  bdd5fe:	62 81 2c 20 5c e4    	vsubps ymm20,ymm26,ymm28
  bdd604:	62 21 5c 20 c6 c4 b1 	vshufps ymm24,ymm20,ymm20,0xb1
  bdd60b:	62 e1 7c 28 28 e6    	vmovaps ymm20,ymm6
  bdd611:	62 c2 3d 20 a8 e4    	vfmadd213ps ymm20,ymm24,ymm12
  bdd617:	62 12 4d 28 bc e0    	vfnmadd231ps ymm12,ymm6,ymm24
  bdd61d:	62 21 4c 20 58 c1    	vaddps ymm24,ymm22,ymm17
  bdd623:	62 a1 4c 20 5c c9    	vsubps ymm17,ymm22,ymm17
  bdd629:	62 01 7c 20 58 d5    	vaddps ymm26,ymm16,ymm29
  bdd62f:	62 81 7c 20 5c c5    	vsubps ymm16,ymm16,ymm29
  bdd635:	62 a1 7c 20 c6 c0 b1 	vshufps ymm16,ymm16,ymm16,0xb1
  bdd63c:	62 e1 7c 28 28 f6    	vmovaps ymm22,ymm6
  bdd642:	62 c2 7d 20 a8 f2    	vfmadd213ps ymm22,ymm16,ymm10
  bdd648:	62 32 4d 28 bc d0    	vfnmadd231ps ymm10,ymm6,ymm16
  bdd64e:	62 01 0c 20 58 ca    	vaddps ymm25,ymm30,ymm26
  bdd654:	62 81 0c 20 5c c2    	vsubps ymm16,ymm30,ymm26
  bdd65a:	62 21 d5 20 14 d7    	vunpcklpd ymm26,ymm21,ymm23
  bdd660:	62 01 bd 20 14 d9    	vunpcklpd ymm27,ymm24,ymm25
  bdd666:	62 03 2d 20 18 e3 01 	vinsertf32x4 ymm28,ymm26,xmm27,0x1
  bdd66d:	62 61 7c 28 29 24 c4 	vmovaps YMMWORD PTR [rsp+rax*8],ymm28
  bdd674:	48 83 f8 40          	cmp    rax,0x40
  bdd678:	0f 84 f2 fb ff ff    	je     bdd270 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x70>
  bdd67e:	62 a1 d5 20 15 ef    	vunpckhpd ymm21,ymm21,ymm23
  bdd684:	62 81 bd 20 15 f9    	vunpckhpd ymm23,ymm24,ymm25
  bdd68a:	62 23 d5 20 23 c7 03 	vshuff64x2 ymm24,ymm21,ymm23,0x3
  bdd691:	62 03 ad 20 23 cb 03 	vshuff64x2 ymm25,ymm26,ymm27,0x3
  bdd698:	62 a3 55 20 18 ef 01 	vinsertf32x4 ymm21,ymm21,xmm23,0x1
  bdd69f:	62 e1 7c 28 29 6c c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x80],ymm21
  bdd6a6:	04 
  bdd6a7:	62 61 fd 28 29 4c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x100],ymm25
  bdd6ae:	08 
  bdd6af:	62 61 fd 28 29 44 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x180],ymm24
  bdd6b6:	0c 
  bdd6b7:	62 a1 ed 20 14 eb    	vunpcklpd ymm21,ymm18,ymm19
  bdd6bd:	62 a1 dd 20 14 fe    	vunpcklpd ymm23,ymm20,ymm22
  bdd6c3:	62 23 55 20 18 c7 01 	vinsertf32x4 ymm24,ymm21,xmm23,0x1
  bdd6ca:	62 61 7c 28 29 44 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x20],ymm24
  bdd6d1:	01 
  bdd6d2:	62 a1 ed 20 15 d3    	vunpckhpd ymm18,ymm18,ymm19
  bdd6d8:	62 a1 dd 20 15 de    	vunpckhpd ymm19,ymm20,ymm22
  bdd6de:	62 a3 ed 20 23 e3 03 	vshuff64x2 ymm20,ymm18,ymm19,0x3
  bdd6e5:	62 a3 d5 20 23 ef 03 	vshuff64x2 ymm21,ymm21,ymm23,0x3
  bdd6ec:	62 a3 6d 20 18 d3 01 	vinsertf32x4 ymm18,ymm18,xmm19,0x1
  bdd6f3:	62 e1 7c 28 29 54 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0xa0],ymm18
  bdd6fa:	05 
  bdd6fb:	62 e1 fd 28 29 6c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x120],ymm21
  bdd702:	09 
  bdd703:	62 e1 fd 28 29 64 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x1a0],ymm20
  bdd70a:	0d 
  bdd70b:	62 c1 8d 28 14 d7    	vunpcklpd ymm18,ymm14,ymm15
  bdd711:	62 a1 f5 20 14 d8    	vunpcklpd ymm19,ymm17,ymm16
  bdd717:	62 a3 6d 20 18 e3 01 	vinsertf32x4 ymm20,ymm18,xmm19,0x1
  bdd71e:	62 e1 7c 28 29 64 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x40],ymm20
  bdd725:	02 
  bdd726:	c4 41 0d 15 f7       	vunpckhpd ymm14,ymm14,ymm15
  bdd72b:	62 31 f5 20 15 f8    	vunpckhpd ymm15,ymm17,ymm16
  bdd731:	62 c3 8d 28 23 c7 03 	vshuff64x2 ymm16,ymm14,ymm15,0x3
  bdd738:	62 a3 ed 20 23 cb 03 	vshuff64x2 ymm17,ymm18,ymm19,0x3
  bdd73f:	c4 43 0d 18 f7 01    	vinsertf128 ymm14,ymm14,xmm15,0x1
  bdd745:	c5 7c 29 b4 c4 c0 00 	vmovaps YMMWORD PTR [rsp+rax*8+0xc0],ymm14
  bdd74c:	00 00 
  bdd74e:	62 e1 fd 28 29 4c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x140],ymm17
  bdd755:	0a 
  bdd756:	62 e1 fd 28 29 44 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x1c0],ymm16
  bdd75d:	0e 
  bdd75e:	c4 41 15 14 f3       	vunpcklpd ymm14,ymm13,ymm11
  bdd763:	c4 41 1d 14 fa       	vunpcklpd ymm15,ymm12,ymm10
  bdd768:	62 c3 0d 28 18 c7 01 	vinsertf32x4 ymm16,ymm14,xmm15,0x1
  bdd76f:	62 e1 7c 28 29 44 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x60],ymm16
  bdd776:	03 
  bdd777:	c4 41 15 15 db       	vunpckhpd ymm11,ymm13,ymm11
  bdd77c:	c4 41 1d 15 d2       	vunpckhpd ymm10,ymm12,ymm10
  bdd781:	c4 43 25 06 e2 31    	vperm2f128 ymm12,ymm11,ymm10,0x31
  bdd787:	c4 43 0d 06 ef 31    	vperm2f128 ymm13,ymm14,ymm15,0x31
  bdd78d:	c4 43 25 18 d2 01    	vinsertf128 ymm10,ymm11,xmm10,0x1
  bdd793:	c5 7c 29 94 c4 e0 00 	vmovaps YMMWORD PTR [rsp+rax*8+0xe0],ymm10
  bdd79a:	00 00 
  bdd79c:	c5 7d 29 ac c4 60 01 	vmovapd YMMWORD PTR [rsp+rax*8+0x160],ymm13
  bdd7a3:	00 00 
  bdd7a5:	c5 7d 29 a4 c4 e0 01 	vmovapd YMMWORD PTR [rsp+rax*8+0x1e0],ymm12
  bdd7ac:	00 00 
  bdd7ae:	e9 06 fb ff ff       	jmp    bdd2b9 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xb9>
  bdd7b3:	c5 fc 28 84 24 80 00 	vmovaps ymm0,YMMWORD PTR [rsp+0x80]
  bdd7ba:	00 00 
  bdd7bc:	c5 fc 28 8c 24 00 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x100]
  bdd7c3:	00 00 
  bdd7c5:	c5 fc 59 12          	vmulps ymm2,ymm0,YMMWORD PTR [rdx]
  bdd7c9:	c5 fc c6 c0 b1       	vshufps ymm0,ymm0,ymm0,0xb1
  bdd7ce:	c4 e2 7d b8 52 20    	vfmadd231ps ymm2,ymm0,YMMWORD PTR [rdx+0x20]
  bdd7d4:	c5 f4 c6 c1 b1       	vshufps ymm0,ymm1,ymm1,0xb1
  bdd7d9:	c5 f4 59 4a 40       	vmulps ymm1,ymm1,YMMWORD PTR [rdx+0x40]
  bdd7de:	c4 e2 7d b8 4a 60    	vfmadd231ps ymm1,ymm0,YMMWORD PTR [rdx+0x60]
  bdd7e4:	c5 fc 28 84 24 80 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x180]
  bdd7eb:	00 00 
  bdd7ed:	c5 fc c6 d8 b1       	vshufps ymm3,ymm0,ymm0,0xb1
  bdd7f2:	c5 fc 59 82 80 00 00 	vmulps ymm0,ymm0,YMMWORD PTR [rdx+0x80]
  bdd7f9:	00 
  bdd7fa:	c4 e2 65 b8 82 a0 00 	vfmadd231ps ymm0,ymm3,YMMWORD PTR [rdx+0xa0]
  bdd801:	00 00 
  bdd803:	c5 fc 28 9c 24 00 02 	vmovaps ymm3,YMMWORD PTR [rsp+0x200]
  bdd80a:	00 00 
  bdd80c:	c5 e4 c6 e3 b1       	vshufps ymm4,ymm3,ymm3,0xb1
  bdd811:	c5 e4 59 9a c0 00 00 	vmulps ymm3,ymm3,YMMWORD PTR [rdx+0xc0]
  bdd818:	00 
  bdd819:	c4 e2 5d b8 9a e0 00 	vfmadd231ps ymm3,ymm4,YMMWORD PTR [rdx+0xe0]
  bdd820:	00 00 
  bdd822:	c5 fc 28 2c 24       	vmovaps ymm5,YMMWORD PTR [rsp]
  bdd827:	c5 ec 58 f3          	vaddps ymm6,ymm2,ymm3
  bdd82b:	c5 f4 58 f8          	vaddps ymm7,ymm1,ymm0
  bdd82f:	c5 6c 5c c3          	vsubps ymm8,ymm2,ymm3
  bdd833:	c5 74 5c c8          	vsubps ymm9,ymm1,ymm0
  bdd837:	c4 e2 7d 18 0d 30 24 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff4c2430]        # 9fc70 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x3340>
  bdd83e:	4c ff 
  bdd840:	c5 7c 28 d1          	vmovaps ymm10,ymm1
  bdd844:	c4 62 4d a8 d5       	vfmadd213ps ymm10,ymm6,ymm5
  bdd849:	c4 e2 7d 18 05 52 20 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff4c2052]        # 9f8a4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2f74>
  bdd850:	4c ff 
  bdd852:	c4 62 45 b8 d0       	vfmadd231ps ymm10,ymm7,ymm0
  bdd857:	c5 7c 28 d8          	vmovaps ymm11,ymm0
  bdd85b:	c4 62 4d a8 dd       	vfmadd213ps ymm11,ymm6,ymm5
  bdd860:	c4 e2 7d 18 15 bf 20 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff4c20bf]        # 9f928 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2ff8>
  bdd867:	4c ff 
  bdd869:	c4 62 45 b8 d9       	vfmadd231ps ymm11,ymm7,ymm1
  bdd86e:	c5 bc 59 e2          	vmulps ymm4,ymm8,ymm2
  bdd872:	c4 e2 7d 18 1d 69 24 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff4c2469]        # 9fce4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x33b4>
  bdd879:	4c ff 
  bdd87b:	c4 e2 35 b8 e3       	vfmadd231ps ymm4,ymm9,ymm3
  bdd880:	c5 5c c6 e4 b1       	vshufps ymm12,ymm4,ymm4,0xb1
  bdd885:	c5 fc 28 25 f3 52 4c 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff4c52f3]        # a2b80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x6250>
  bdd88c:	ff 
  bdd88d:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  bdd891:	c5 3c 59 c3          	vmulps ymm8,ymm8,ymm3
  bdd895:	c4 42 6d bc c1       	vfnmadd231ps ymm8,ymm2,ymm9
  bdd89a:	c4 41 3c c6 c0 b1    	vshufps ymm8,ymm8,ymm8,0xb1
  bdd8a0:	c5 3c 57 c4          	vxorps ymm8,ymm8,ymm4
  bdd8a4:	c5 c4 58 f6          	vaddps ymm6,ymm7,ymm6
  bdd8a8:	c5 d4 58 ee          	vaddps ymm5,ymm5,ymm6
  bdd8ac:	c4 c1 2c 58 f4       	vaddps ymm6,ymm10,ymm12
  bdd8b1:	c4 c1 24 58 f8       	vaddps ymm7,ymm11,ymm8
  bdd8b6:	c4 41 24 5c c0       	vsubps ymm8,ymm11,ymm8
  bdd8bb:	c4 41 2c 5c cc       	vsubps ymm9,ymm10,ymm12
  bdd8c0:	c5 fc 11 2e          	vmovups YMMWORD PTR [rsi],ymm5
  bdd8c4:	c5 fc 11 b6 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm6
  bdd8cb:	00 
  bdd8cc:	c5 fc 11 be 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm7
  bdd8d3:	00 
  bdd8d4:	c5 7c 11 86 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm8
  bdd8db:	00 
  bdd8dc:	c5 7c 11 8e 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm9
  bdd8e3:	00 
  bdd8e4:	c5 fc 28 6c 24 20    	vmovaps ymm5,YMMWORD PTR [rsp+0x20]
  bdd8ea:	c5 fc 28 b4 24 a0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xa0]
  bdd8f1:	00 00 
  bdd8f3:	c5 fc 28 bc 24 20 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x120]
  bdd8fa:	00 00 
  bdd8fc:	c5 4c 59 82 00 01 00 	vmulps ymm8,ymm6,YMMWORD PTR [rdx+0x100]
  bdd903:	00 
  bdd904:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  bdd909:	c4 62 4d b8 82 20 01 	vfmadd231ps ymm8,ymm6,YMMWORD PTR [rdx+0x120]
  bdd910:	00 00 
  bdd912:	c5 c4 c6 f7 b1       	vshufps ymm6,ymm7,ymm7,0xb1
  bdd917:	c5 c4 59 ba 40 01 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x140]
  bdd91e:	00 
  bdd91f:	c4 e2 4d b8 ba 60 01 	vfmadd231ps ymm7,ymm6,YMMWORD PTR [rdx+0x160]
  bdd926:	00 00 
  bdd928:	c5 fc 28 b4 24 a0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1a0]
  bdd92f:	00 00 
  bdd931:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  bdd936:	c5 cc 59 b2 80 01 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x180]
  bdd93d:	00 
  bdd93e:	c4 e2 35 b8 b2 a0 01 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x1a0]
  bdd945:	00 00 
  bdd947:	c5 7c 28 8c 24 20 02 	vmovaps ymm9,YMMWORD PTR [rsp+0x220]
  bdd94e:	00 00 
  bdd950:	c4 41 34 c6 d1 b1    	vshufps ymm10,ymm9,ymm9,0xb1
  bdd956:	c5 34 59 8a c0 01 00 	vmulps ymm9,ymm9,YMMWORD PTR [rdx+0x1c0]
  bdd95d:	00 
  bdd95e:	c4 62 2d b8 8a e0 01 	vfmadd231ps ymm9,ymm10,YMMWORD PTR [rdx+0x1e0]
  bdd965:	00 00 
  bdd967:	c4 41 3c 58 d1       	vaddps ymm10,ymm8,ymm9
  bdd96c:	c5 44 58 de          	vaddps ymm11,ymm7,ymm6
  bdd970:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  bdd975:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  bdd979:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  bdd97d:	c4 e2 2d a8 fd       	vfmadd213ps ymm7,ymm10,ymm5
  bdd982:	c4 e2 25 b8 f8       	vfmadd231ps ymm7,ymm11,ymm0
  bdd987:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  bdd98b:	c4 62 2d a8 cd       	vfmadd213ps ymm9,ymm10,ymm5
  bdd990:	c4 62 25 b8 c9       	vfmadd231ps ymm9,ymm11,ymm1
  bdd995:	c5 3c 59 e2          	vmulps ymm12,ymm8,ymm2
  bdd999:	c4 62 4d b8 e3       	vfmadd231ps ymm12,ymm6,ymm3
  bdd99e:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  bdd9a4:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  bdd9a8:	c5 3c 59 c3          	vmulps ymm8,ymm8,ymm3
  bdd9ac:	c4 62 6d bc c6       	vfnmadd231ps ymm8,ymm2,ymm6
  bdd9b1:	c4 c1 3c c6 f0 b1    	vshufps ymm6,ymm8,ymm8,0xb1
  bdd9b7:	c5 cc 57 f4          	vxorps ymm6,ymm6,ymm4
  bdd9bb:	c4 41 24 58 c2       	vaddps ymm8,ymm11,ymm10
  bdd9c0:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  bdd9c4:	c5 1c 58 c7          	vaddps ymm8,ymm12,ymm7
  bdd9c8:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  bdd9cc:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  bdd9d0:	c4 c1 44 5c fc       	vsubps ymm7,ymm7,ymm12
  bdd9d5:	c5 fc 11 6e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm5
  bdd9da:	c5 7c 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm8
  bdd9e1:	00 
  bdd9e2:	c5 7c 11 96 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm10
  bdd9e9:	00 
  bdd9ea:	c5 fc 11 b6 a0 01 00 	vmovups YMMWORD PTR [rsi+0x1a0],ymm6
  bdd9f1:	00 
  bdd9f2:	c5 fc 11 be 20 02 00 	vmovups YMMWORD PTR [rsi+0x220],ymm7
  bdd9f9:	00 
  bdd9fa:	c5 fc 28 6c 24 40    	vmovaps ymm5,YMMWORD PTR [rsp+0x40]
  bdda00:	c5 fc 28 b4 24 c0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xc0]
  bdda07:	00 00 
  bdda09:	c5 fc 28 bc 24 40 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x140]
  bdda10:	00 00 
  bdda12:	c5 7c 28 84 24 c0 01 	vmovaps ymm8,YMMWORD PTR [rsp+0x1c0]
  bdda19:	00 00 
  bdda1b:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  bdda20:	c5 cc 59 b2 00 02 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x200]
  bdda27:	00 
  bdda28:	c4 e2 35 b8 b2 20 02 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x220]
  bdda2f:	00 00 
  bdda31:	c5 44 59 8a 40 02 00 	vmulps ymm9,ymm7,YMMWORD PTR [rdx+0x240]
  bdda38:	00 
  bdda39:	c5 c4 c6 ff b1       	vshufps ymm7,ymm7,ymm7,0xb1
  bdda3e:	c4 62 45 b8 8a 60 02 	vfmadd231ps ymm9,ymm7,YMMWORD PTR [rdx+0x260]
  bdda45:	00 00 
  bdda47:	c4 c1 3c c6 f8 b1    	vshufps ymm7,ymm8,ymm8,0xb1
  bdda4d:	c5 3c 59 82 80 02 00 	vmulps ymm8,ymm8,YMMWORD PTR [rdx+0x280]
  bdda54:	00 
  bdda55:	c4 62 45 b8 82 a0 02 	vfmadd231ps ymm8,ymm7,YMMWORD PTR [rdx+0x2a0]
  bdda5c:	00 00 
  bdda5e:	c5 fc 28 bc 24 40 02 	vmovaps ymm7,YMMWORD PTR [rsp+0x240]
  bdda65:	00 00 
  bdda67:	c5 44 c6 d7 b1       	vshufps ymm10,ymm7,ymm7,0xb1
  bdda6c:	c5 c4 59 ba c0 02 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x2c0]
  bdda73:	00 
  bdda74:	c4 e2 2d b8 ba e0 02 	vfmadd231ps ymm7,ymm10,YMMWORD PTR [rdx+0x2e0]
  bdda7b:	00 00 
  bdda7d:	c5 4c 58 d7          	vaddps ymm10,ymm6,ymm7
  bdda81:	c4 41 34 58 d8       	vaddps ymm11,ymm9,ymm8
  bdda86:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  bdda8a:	c4 c1 34 5c f8       	vsubps ymm7,ymm9,ymm8
  bdda8f:	c5 7c 28 c1          	vmovaps ymm8,ymm1
  bdda93:	c4 62 2d a8 c5       	vfmadd213ps ymm8,ymm10,ymm5
  bdda98:	c4 62 25 b8 c0       	vfmadd231ps ymm8,ymm11,ymm0
  bdda9d:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  bddaa1:	c4 62 2d a8 cd       	vfmadd213ps ymm9,ymm10,ymm5
  bddaa6:	c4 62 25 b8 c9       	vfmadd231ps ymm9,ymm11,ymm1
  bddaab:	c5 4c 59 e2          	vmulps ymm12,ymm6,ymm2
  bddaaf:	c4 62 45 b8 e3       	vfmadd231ps ymm12,ymm7,ymm3
  bddab4:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  bddaba:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  bddabe:	c5 cc 59 f3          	vmulps ymm6,ymm6,ymm3
  bddac2:	c4 e2 6d bc f7       	vfnmadd231ps ymm6,ymm2,ymm7
  bddac7:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  bddacc:	c5 cc 57 f4          	vxorps ymm6,ymm6,ymm4
  bddad0:	c4 c1 24 58 fa       	vaddps ymm7,ymm11,ymm10
  bddad5:	c5 d4 58 ef          	vaddps ymm5,ymm5,ymm7
  bddad9:	c4 c1 3c 58 fc       	vaddps ymm7,ymm8,ymm12
  bddade:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  bddae2:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  bddae6:	c4 41 3c 5c c4       	vsubps ymm8,ymm8,ymm12
  bddaeb:	c5 fc 11 6e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm5
  bddaf0:	c5 fc 11 be c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm7
  bddaf7:	00 
  bddaf8:	c5 7c 11 96 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm10
  bddaff:	00 
  bddb00:	c5 fc 11 b6 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm6
  bddb07:	00 
  bddb08:	c5 7c 11 86 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm8
  bddb0f:	00 
  bddb10:	c5 fc 28 6c 24 60    	vmovaps ymm5,YMMWORD PTR [rsp+0x60]
  bddb16:	c5 fc 28 b4 24 e0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xe0]
  bddb1d:	00 00 
  bddb1f:	c5 fc 28 bc 24 60 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x160]
  bddb26:	00 00 
  bddb28:	c5 4c 59 82 00 03 00 	vmulps ymm8,ymm6,YMMWORD PTR [rdx+0x300]
  bddb2f:	00 
  bddb30:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  bddb35:	c4 62 4d b8 82 20 03 	vfmadd231ps ymm8,ymm6,YMMWORD PTR [rdx+0x320]
  bddb3c:	00 00 
  bddb3e:	c5 c4 c6 f7 b1       	vshufps ymm6,ymm7,ymm7,0xb1
  bddb43:	c5 c4 59 ba 40 03 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x340]
  bddb4a:	00 
  bddb4b:	c4 e2 4d b8 ba 60 03 	vfmadd231ps ymm7,ymm6,YMMWORD PTR [rdx+0x360]
  bddb52:	00 00 
  bddb54:	c5 fc 28 b4 24 e0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1e0]
  bddb5b:	00 00 
  bddb5d:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  bddb62:	c5 cc 59 b2 80 03 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x380]
  bddb69:	00 
  bddb6a:	c4 e2 35 b8 b2 a0 03 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x3a0]
  bddb71:	00 00 
  bddb73:	c5 7c 28 8c 24 60 02 	vmovaps ymm9,YMMWORD PTR [rsp+0x260]
  bddb7a:	00 00 
  bddb7c:	c4 41 34 c6 d1 b1    	vshufps ymm10,ymm9,ymm9,0xb1
  bddb82:	c5 34 59 8a c0 03 00 	vmulps ymm9,ymm9,YMMWORD PTR [rdx+0x3c0]
  bddb89:	00 
  bddb8a:	c4 62 2d b8 8a e0 03 	vfmadd231ps ymm9,ymm10,YMMWORD PTR [rdx+0x3e0]
  bddb91:	00 00 
  bddb93:	c4 41 3c 58 d1       	vaddps ymm10,ymm8,ymm9
  bddb98:	c5 44 58 de          	vaddps ymm11,ymm7,ymm6
  bddb9c:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  bddba1:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  bddba5:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  bddba9:	c4 e2 2d a8 fd       	vfmadd213ps ymm7,ymm10,ymm5
  bddbae:	c4 e2 25 b8 f8       	vfmadd231ps ymm7,ymm11,ymm0
  bddbb3:	c4 e2 2d a8 c5       	vfmadd213ps ymm0,ymm10,ymm5
  bddbb8:	c4 e2 25 b8 c1       	vfmadd231ps ymm0,ymm11,ymm1
  bddbbd:	c5 bc 59 ca          	vmulps ymm1,ymm8,ymm2
  bddbc1:	c4 e2 4d b8 cb       	vfmadd231ps ymm1,ymm6,ymm3
  bddbc6:	c5 f4 c6 c9 b1       	vshufps ymm1,ymm1,ymm1,0xb1
  bddbcb:	c5 f4 57 cc          	vxorps ymm1,ymm1,ymm4
  bddbcf:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  bddbd3:	c4 e2 4d bc da       	vfnmadd231ps ymm3,ymm6,ymm2
  bddbd8:	c5 e4 c6 d3 b1       	vshufps ymm2,ymm3,ymm3,0xb1
  bddbdd:	c5 ec 57 d4          	vxorps ymm2,ymm2,ymm4
  bddbe1:	c4 c1 24 58 da       	vaddps ymm3,ymm11,ymm10
  bddbe6:	c5 d4 58 db          	vaddps ymm3,ymm5,ymm3
  bddbea:	c5 c4 58 e1          	vaddps ymm4,ymm7,ymm1
  bddbee:	c5 fc 58 ea          	vaddps ymm5,ymm0,ymm2
  bddbf2:	c5 fc 5c c2          	vsubps ymm0,ymm0,ymm2
  bddbf6:	c5 c4 5c c9          	vsubps ymm1,ymm7,ymm1
  bddbfa:	c5 fc 11 5e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm3
  bddbff:	c5 fc 11 a6 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm4
  bddc06:	00 
  bddc07:	c5 fc 11 ae 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm5
  bddc0e:	00 
  bddc0f:	c5 fc 11 86 e0 01 00 	vmovups YMMWORD PTR [rsi+0x1e0],ymm0
  bddc16:	00 
  bddc17:	c5 fc 11 8e 60 02 00 	vmovups YMMWORD PTR [rsi+0x260],ymm1
  bddc1e:	00 
  bddc1f:	48 89 ec             	mov    rsp,rbp
  bddc22:	5d                   	pop    rbp
  bddc23:	c5 f8 77             	vzeroupper
  bddc26:	c3                   	ret
  bddc27:	cc                   	int3
  bddc28:	cc                   	int3
  bddc29:	cc                   	int3
  bddc2a:	cc                   	int3
  bddc2b:	cc                   	int3
  bddc2c:	cc                   	int3
  bddc2d:	cc                   	int3
  bddc2e:	cc                   	int3
  bddc2f:	cc                   	int3
  bddc30:	cc                   	int3
  bddc31:	cc                   	int3
  bddc32:	cc                   	int3
  bddc33:	cc                   	int3
  bddc34:	cc                   	int3
  bddc35:	cc                   	int3
  bddc36:	cc                   	int3
  bddc37:	cc                   	int3
  bddc38:	cc                   	int3
  bddc39:	cc                   	int3
  bddc3a:	cc                   	int3
  bddc3b:	cc                   	int3
  bddc3c:	cc                   	int3
  bddc3d:	cc                   	int3
  bddc3e:	cc                   	int3
  bddc3f:	cc                   	int3
