
target/ticket19/selection-fix/fourstep-storage-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ada440 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ada440:	55                   	push   rbp
  ada441:	48 89 e5             	mov    rbp,rsp
  ada444:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  ada448:	48 81 ec 40 08 00 00 	sub    rsp,0x840
  ada44f:	c5 fc 10 82 00 04 00 	vmovups ymm0,YMMWORD PTR [rdx+0x400]
  ada456:	00 
  ada457:	c5 fc 10 8a 20 04 00 	vmovups ymm1,YMMWORD PTR [rdx+0x420]
  ada45e:	00 
  ada45f:	c5 fc 10 92 40 04 00 	vmovups ymm2,YMMWORD PTR [rdx+0x440]
  ada466:	00 
  ada467:	c5 fc 10 9a 60 04 00 	vmovups ymm3,YMMWORD PTR [rdx+0x460]
  ada46e:	00 
  ada46f:	c5 fc 10 a2 a0 04 00 	vmovups ymm4,YMMWORD PTR [rdx+0x4a0]
  ada476:	00 
  ada477:	c5 fc 10 aa 80 04 00 	vmovups ymm5,YMMWORD PTR [rdx+0x480]
  ada47e:	00 
  ada47f:	31 c0                	xor    eax,eax
  ada481:	c4 e2 7d 19 35 56 a9 	vbroadcastsd ymm6,QWORD PTR [rip+0xffffffffff59a956]        # 74de0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x22c0>
  ada488:	59 ff 
  ada48a:	c4 e2 7d 18 3d c9 ae 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff59aec9]        # 7535c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  ada491:	59 ff 
  ada493:	c4 62 7d 19 05 14 a6 	vbroadcastsd ymm8,QWORD PTR [rip+0xffffffffff59a614]        # 74ab0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f90>
  ada49a:	59 ff 
  ada49c:	c4 62 7d 18 0d 97 af 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff59af97]        # 7543c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x291c>
  ada4a3:	59 ff 
  ada4a5:	48 89 f9             	mov    rcx,rdi
  ada4a8:	45 31 c0             	xor    r8d,r8d
  ada4ab:	eb 61                	jmp    ada50e <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xce>
  ada4ad:	0f 1f 00             	nop    DWORD PTR [rax]
  ada4b0:	62 a1 6c 00 16 d3    	vmovlhps xmm18,xmm18,xmm19
  ada4b6:	62 a1 5c 00 16 de    	vmovlhps xmm19,xmm20,xmm22
  ada4bc:	62 e1 7c 08 29 5c c4 	vmovaps XMMWORD PTR [rsp+rax*8+0x30],xmm19
  ada4c3:	03 
  ada4c4:	62 e1 7c 08 29 54 c4 	vmovaps XMMWORD PTR [rsp+rax*8+0x20],xmm18
  ada4cb:	02 
  ada4cc:	c4 41 08 16 f7       	vmovlhps xmm14,xmm14,xmm15
  ada4d1:	62 31 74 00 16 f8    	vmovlhps xmm15,xmm17,xmm16
  ada4d7:	c5 78 29 7c c4 50    	vmovaps XMMWORD PTR [rsp+rax*8+0x50],xmm15
  ada4dd:	c5 78 29 74 c4 40    	vmovaps XMMWORD PTR [rsp+rax*8+0x40],xmm14
  ada4e3:	c4 41 10 16 db       	vmovlhps xmm11,xmm13,xmm11
  ada4e8:	c4 41 18 16 d2       	vmovlhps xmm10,xmm12,xmm10
  ada4ed:	c5 78 29 54 c4 70    	vmovaps XMMWORD PTR [rsp+rax*8+0x70],xmm10
  ada4f3:	c5 78 29 5c c4 60    	vmovaps XMMWORD PTR [rsp+rax*8+0x60],xmm11
  ada4f9:	48 83 c0 40          	add    rax,0x40
  ada4fd:	48 83 c1 20          	add    rcx,0x20
  ada501:	41 f6 c0 01          	test   r8b,0x1
  ada505:	41 b0 01             	mov    r8b,0x1
  ada508:	0f 85 e5 04 00 00    	jne    ada9f3 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x5b3>
  ada50e:	48 85 c0             	test   rax,rax
  ada511:	74 7d                	je     ada590 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x150>
  ada513:	c5 7b 10 39          	vmovsd xmm15,QWORD PTR [rcx]
  ada517:	c5 7b 10 71 28       	vmovsd xmm14,QWORD PTR [rcx+0x28]
  ada51c:	c5 7b 10 51 50       	vmovsd xmm10,QWORD PTR [rcx+0x50]
  ada521:	c5 7b 10 61 78       	vmovsd xmm12,QWORD PTR [rcx+0x78]
  ada526:	62 e1 ff 08 10 61 14 	vmovsd xmm20,QWORD PTR [rcx+0xa0]
  ada52d:	62 e1 ff 08 10 49 19 	vmovsd xmm17,QWORD PTR [rcx+0xc8]
  ada534:	c5 7b 10 99 f0 00 00 	vmovsd xmm11,QWORD PTR [rcx+0xf0]
  ada53b:	00 
  ada53c:	c5 7b 10 a9 18 01 00 	vmovsd xmm13,QWORD PTR [rcx+0x118]
  ada543:	00 
  ada544:	62 e1 ff 08 10 79 28 	vmovsd xmm23,QWORD PTR [rcx+0x140]
  ada54b:	62 e1 ff 08 10 69 2d 	vmovsd xmm21,QWORD PTR [rcx+0x168]
  ada552:	62 e1 ff 08 10 51 32 	vmovsd xmm18,QWORD PTR [rcx+0x190]
  ada559:	62 e1 ff 08 10 41 37 	vmovsd xmm16,QWORD PTR [rcx+0x1b8]
  ada560:	62 61 ff 08 10 49 3c 	vmovsd xmm25,QWORD PTR [rcx+0x1e0]
  ada567:	62 61 ff 08 10 41 41 	vmovsd xmm24,QWORD PTR [rcx+0x208]
  ada56e:	62 e1 ff 08 10 71 46 	vmovsd xmm22,QWORD PTR [rcx+0x230]
  ada575:	62 e1 ff 08 10 59 4b 	vmovsd xmm19,QWORD PTR [rcx+0x258]
  ada57c:	e9 8d 00 00 00       	jmp    ada60e <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x1ce>
  ada581:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  ada588:	0f 1f 84 00 00 00 00 
  ada58f:	00 
  ada590:	c5 7c 10 39          	vmovups ymm15,YMMWORD PTR [rcx]
  ada594:	c5 7c 10 61 78       	vmovups ymm12,YMMWORD PTR [rcx+0x78]
  ada599:	c5 7c 10 99 f0 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0xf0]
  ada5a0:	00 
  ada5a1:	c5 7c 10 77 28       	vmovups ymm14,YMMWORD PTR [rdi+0x28]
  ada5a6:	c5 7c 10 57 50       	vmovups ymm10,YMMWORD PTR [rdi+0x50]
  ada5ab:	62 e1 7c 28 10 67 05 	vmovups ymm20,YMMWORD PTR [rdi+0xa0]
  ada5b2:	62 e1 7c 28 10 8f c8 	vmovups ymm17,YMMWORD PTR [rdi+0xc8]
  ada5b9:	00 00 00 
  ada5bc:	c5 7c 10 af 18 01 00 	vmovups ymm13,YMMWORD PTR [rdi+0x118]
  ada5c3:	00 
  ada5c4:	62 e1 7c 28 10 7f 0a 	vmovups ymm23,YMMWORD PTR [rdi+0x140]
  ada5cb:	62 e1 7c 28 10 af 68 	vmovups ymm21,YMMWORD PTR [rdi+0x168]
  ada5d2:	01 00 00 
  ada5d5:	62 e1 7c 28 10 97 90 	vmovups ymm18,YMMWORD PTR [rdi+0x190]
  ada5dc:	01 00 00 
  ada5df:	62 e1 7c 28 10 87 b8 	vmovups ymm16,YMMWORD PTR [rdi+0x1b8]
  ada5e6:	01 00 00 
  ada5e9:	62 61 7c 28 10 4f 0f 	vmovups ymm25,YMMWORD PTR [rdi+0x1e0]
  ada5f0:	62 61 7c 28 10 87 08 	vmovups ymm24,YMMWORD PTR [rdi+0x208]
  ada5f7:	02 00 00 
  ada5fa:	62 e1 7c 28 10 b7 30 	vmovups ymm22,YMMWORD PTR [rdi+0x230]
  ada601:	02 00 00 
  ada604:	62 e1 7c 28 10 9f 58 	vmovups ymm19,YMMWORD PTR [rdi+0x258]
  ada60b:	02 00 00 
  ada60e:	62 21 04 28 58 d7    	vaddps ymm26,ymm15,ymm23
  ada614:	62 21 04 28 5c df    	vsubps ymm27,ymm15,ymm23
  ada61a:	62 01 5c 20 58 e1    	vaddps ymm28,ymm20,ymm25
  ada620:	62 11 5c 20 5c f9    	vsubps ymm15,ymm20,ymm25
  ada626:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ada62c:	62 e1 7c 28 28 fe    	vmovaps ymm23,ymm6
  ada632:	62 82 05 28 a8 fb    	vfmadd213ps ymm23,ymm15,ymm27
  ada638:	62 12 4d 28 ac fb    	vfnmadd213ps ymm15,ymm6,ymm27
  ada63e:	62 01 2c 20 58 cc    	vaddps ymm25,ymm26,ymm28
  ada644:	62 81 2c 20 5c e4    	vsubps ymm20,ymm26,ymm28
  ada64a:	62 21 0c 28 58 d5    	vaddps ymm26,ymm14,ymm21
  ada650:	62 31 0c 28 5c f5    	vsubps ymm14,ymm14,ymm21
  ada656:	62 81 74 20 58 e8    	vaddps ymm21,ymm17,ymm24
  ada65c:	62 81 74 20 5c c8    	vsubps ymm17,ymm17,ymm24
  ada662:	62 a1 74 20 c6 c9 b1 	vshufps ymm17,ymm17,ymm17,0xb1
  ada669:	62 61 7c 28 28 c6    	vmovaps ymm24,ymm6
  ada66f:	62 42 75 20 a8 c6    	vfmadd213ps ymm24,ymm17,ymm14
  ada675:	62 c2 4d 28 ac ce    	vfnmadd213ps ymm17,ymm6,ymm14
  ada67b:	62 31 2c 20 58 f5    	vaddps ymm14,ymm26,ymm21
  ada681:	62 a1 2c 20 5c ed    	vsubps ymm21,ymm26,ymm21
  ada687:	62 21 2c 28 58 d2    	vaddps ymm26,ymm10,ymm18
  ada68d:	62 a1 2c 28 5c d2    	vsubps ymm18,ymm10,ymm18
  ada693:	62 21 24 28 58 de    	vaddps ymm27,ymm11,ymm22
  ada699:	62 31 24 28 5c d6    	vsubps ymm10,ymm11,ymm22
  ada69f:	c4 41 2c c6 d2 b1    	vshufps ymm10,ymm10,ymm10,0xb1
  ada6a5:	c5 7c 28 de          	vmovaps ymm11,ymm6
  ada6a9:	62 32 2d 28 a8 da    	vfmadd213ps ymm11,ymm10,ymm18
  ada6af:	62 32 4d 28 ac d2    	vfnmadd213ps ymm10,ymm6,ymm18
  ada6b5:	62 81 2c 20 58 d3    	vaddps ymm18,ymm26,ymm27
  ada6bb:	62 81 2c 20 5c f3    	vsubps ymm22,ymm26,ymm27
  ada6c1:	62 21 1c 28 58 d0    	vaddps ymm26,ymm12,ymm16
  ada6c7:	62 31 1c 28 5c e0    	vsubps ymm12,ymm12,ymm16
  ada6cd:	62 a1 14 28 58 c3    	vaddps ymm16,ymm13,ymm19
  ada6d3:	62 31 14 28 5c eb    	vsubps ymm13,ymm13,ymm19
  ada6d9:	c4 41 14 c6 ed b1    	vshufps ymm13,ymm13,ymm13,0xb1
  ada6df:	62 e1 7c 28 28 de    	vmovaps ymm19,ymm6
  ada6e5:	62 c2 15 28 a8 dc    	vfmadd213ps ymm19,ymm13,ymm12
  ada6eb:	c4 42 4d ac ec       	vfnmadd213ps ymm13,ymm6,ymm12
  ada6f0:	62 21 2c 20 58 d8    	vaddps ymm27,ymm26,ymm16
  ada6f6:	62 31 2c 20 5c e0    	vsubps ymm12,ymm26,ymm16
  ada6fc:	62 81 3c 20 c6 c0 b1 	vshufps ymm16,ymm24,ymm24,0xb1
  ada703:	62 61 3c 20 59 c0    	vmulps ymm24,ymm24,ymm0
  ada709:	62 22 75 28 b8 c0    	vfmadd231ps ymm24,ymm1,ymm16
  ada70f:	62 a1 54 20 c6 c5 b1 	vshufps ymm16,ymm21,ymm21,0xb1
  ada716:	62 61 54 20 59 d7    	vmulps ymm26,ymm21,ymm7
  ada71c:	62 22 3d 28 b8 d0    	vfmadd231ps ymm26,ymm8,ymm16
  ada722:	62 a1 74 20 c6 e9 b1 	vshufps ymm21,ymm17,ymm17,0xb1
  ada729:	62 e1 74 20 59 c2    	vmulps ymm16,ymm17,ymm2
  ada72f:	62 a2 65 28 b8 c5    	vfmadd231ps ymm16,ymm3,ymm21
  ada735:	62 a1 64 20 c6 cb b1 	vshufps ymm17,ymm19,ymm19,0xb1
  ada73c:	62 e1 64 20 59 da    	vmulps ymm19,ymm19,ymm2
  ada742:	62 a2 65 28 b8 d9    	vfmadd231ps ymm19,ymm3,ymm17
  ada748:	62 c1 1c 28 c6 cc b1 	vshufps ymm17,ymm12,ymm12,0xb1
  ada74f:	62 41 1c 28 59 e1    	vmulps ymm28,ymm12,ymm9
  ada755:	62 22 3d 28 b8 e1    	vfmadd231ps ymm28,ymm8,ymm17
  ada75b:	c4 41 14 c6 e5 b1    	vshufps ymm12,ymm13,ymm13,0xb1
  ada761:	62 61 14 28 59 ed    	vmulps ymm29,ymm13,ymm5
  ada767:	62 42 5d 28 b8 ec    	vfmadd231ps ymm29,ymm4,ymm12
  ada76d:	62 a1 34 20 58 ca    	vaddps ymm17,ymm25,ymm18
  ada773:	62 a1 34 20 5c ea    	vsubps ymm21,ymm25,ymm18
  ada779:	c4 41 24 c6 e3 b1    	vshufps ymm12,ymm11,ymm11,0xb1
  ada77f:	62 61 7c 28 28 cf    	vmovaps ymm25,ymm7
  ada785:	62 22 25 28 a8 cf    	vfmadd213ps ymm25,ymm11,ymm23
  ada78b:	62 42 1d 28 b8 c8    	vfmadd231ps ymm25,ymm12,ymm8
  ada791:	62 32 45 28 ac df    	vfnmadd213ps ymm11,ymm7,ymm23
  ada797:	c4 42 3d bc dc       	vfnmadd231ps ymm11,ymm8,ymm12
  ada79c:	62 31 4c 20 c6 e6 b1 	vshufps ymm12,ymm22,ymm22,0xb1
  ada7a3:	62 e1 7c 28 28 f6    	vmovaps ymm22,ymm6
  ada7a9:	62 a2 1d 28 a8 f4    	vfmadd213ps ymm22,ymm12,ymm20
  ada7af:	62 32 4d 28 ac e4    	vfnmadd213ps ymm12,ymm6,ymm20
  ada7b5:	c4 41 2c c6 ea b1    	vshufps ymm13,ymm10,ymm10,0xb1
  ada7bb:	62 61 7c 28 28 f7    	vmovaps ymm30,ymm7
  ada7c1:	62 42 2d 28 ac f7    	vfnmadd213ps ymm30,ymm10,ymm15
  ada7c7:	62 42 15 28 b8 f0    	vfmadd231ps ymm30,ymm13,ymm8
  ada7cd:	c4 42 45 a8 d7       	vfmadd213ps ymm10,ymm7,ymm15
  ada7d2:	c4 42 3d bc d5       	vfnmadd231ps ymm10,ymm8,ymm13
  ada7d7:	62 11 0c 28 58 fb    	vaddps ymm15,ymm14,ymm27
  ada7dd:	62 11 0c 28 5c eb    	vsubps ymm13,ymm14,ymm27
  ada7e3:	c4 41 14 c6 ed b1    	vshufps ymm13,ymm13,ymm13,0xb1
  ada7e9:	62 e1 7c 28 28 d6    	vmovaps ymm18,ymm6
  ada7ef:	62 a2 15 28 a8 d5    	vfmadd213ps ymm18,ymm13,ymm21
  ada7f5:	62 32 4d 28 ac ed    	vfnmadd213ps ymm13,ymm6,ymm21
  ada7fb:	62 c1 74 20 58 ef    	vaddps ymm21,ymm17,ymm15
  ada801:	62 51 74 20 5c f7    	vsubps ymm14,ymm17,ymm15
  ada807:	62 31 3c 20 58 fb    	vaddps ymm15,ymm24,ymm19
  ada80d:	62 a1 3c 20 5c cb    	vsubps ymm17,ymm24,ymm19
  ada813:	62 a1 74 20 c6 c9 b1 	vshufps ymm17,ymm17,ymm17,0xb1
  ada81a:	62 e1 7c 28 28 de    	vmovaps ymm19,ymm6
  ada820:	62 c2 75 20 a8 db    	vfmadd213ps ymm19,ymm17,ymm11
  ada826:	62 32 4d 28 bc d9    	vfnmadd231ps ymm11,ymm6,ymm17
  ada82c:	62 c1 34 20 58 ff    	vaddps ymm23,ymm25,ymm15
  ada832:	62 51 34 20 5c ff    	vsubps ymm15,ymm25,ymm15
  ada838:	62 81 2c 20 58 cc    	vaddps ymm17,ymm26,ymm28
  ada83e:	62 81 2c 20 5c e4    	vsubps ymm20,ymm26,ymm28
  ada844:	62 21 5c 20 c6 c4 b1 	vshufps ymm24,ymm20,ymm20,0xb1
  ada84b:	62 e1 7c 28 28 e6    	vmovaps ymm20,ymm6
  ada851:	62 c2 3d 20 a8 e4    	vfmadd213ps ymm20,ymm24,ymm12
  ada857:	62 12 4d 28 bc e0    	vfnmadd231ps ymm12,ymm6,ymm24
  ada85d:	62 21 4c 20 58 c1    	vaddps ymm24,ymm22,ymm17
  ada863:	62 a1 4c 20 5c c9    	vsubps ymm17,ymm22,ymm17
  ada869:	62 01 7c 20 58 d5    	vaddps ymm26,ymm16,ymm29
  ada86f:	62 81 7c 20 5c c5    	vsubps ymm16,ymm16,ymm29
  ada875:	62 a1 7c 20 c6 c0 b1 	vshufps ymm16,ymm16,ymm16,0xb1
  ada87c:	62 e1 7c 28 28 f6    	vmovaps ymm22,ymm6
  ada882:	62 c2 7d 20 a8 f2    	vfmadd213ps ymm22,ymm16,ymm10
  ada888:	62 32 4d 28 bc d0    	vfnmadd231ps ymm10,ymm6,ymm16
  ada88e:	62 01 0c 20 58 ca    	vaddps ymm25,ymm30,ymm26
  ada894:	62 81 0c 20 5c c2    	vsubps ymm16,ymm30,ymm26
  ada89a:	62 21 d5 20 14 d7    	vunpcklpd ymm26,ymm21,ymm23
  ada8a0:	62 01 bd 20 14 d9    	vunpcklpd ymm27,ymm24,ymm25
  ada8a6:	62 03 2d 20 18 e3 01 	vinsertf32x4 ymm28,ymm26,xmm27,0x1
  ada8ad:	62 61 7c 28 29 24 c4 	vmovaps YMMWORD PTR [rsp+rax*8],ymm28
  ada8b4:	48 83 f8 40          	cmp    rax,0x40
  ada8b8:	0f 84 f2 fb ff ff    	je     ada4b0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x70>
  ada8be:	62 a1 d5 20 15 ef    	vunpckhpd ymm21,ymm21,ymm23
  ada8c4:	62 81 bd 20 15 f9    	vunpckhpd ymm23,ymm24,ymm25
  ada8ca:	62 23 d5 20 23 c7 03 	vshuff64x2 ymm24,ymm21,ymm23,0x3
  ada8d1:	62 03 ad 20 23 cb 03 	vshuff64x2 ymm25,ymm26,ymm27,0x3
  ada8d8:	62 a3 55 20 18 ef 01 	vinsertf32x4 ymm21,ymm21,xmm23,0x1
  ada8df:	62 e1 7c 28 29 6c c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x80],ymm21
  ada8e6:	04 
  ada8e7:	62 61 fd 28 29 4c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x100],ymm25
  ada8ee:	08 
  ada8ef:	62 61 fd 28 29 44 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x180],ymm24
  ada8f6:	0c 
  ada8f7:	62 a1 ed 20 14 eb    	vunpcklpd ymm21,ymm18,ymm19
  ada8fd:	62 a1 dd 20 14 fe    	vunpcklpd ymm23,ymm20,ymm22
  ada903:	62 23 55 20 18 c7 01 	vinsertf32x4 ymm24,ymm21,xmm23,0x1
  ada90a:	62 61 7c 28 29 44 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x20],ymm24
  ada911:	01 
  ada912:	62 a1 ed 20 15 d3    	vunpckhpd ymm18,ymm18,ymm19
  ada918:	62 a1 dd 20 15 de    	vunpckhpd ymm19,ymm20,ymm22
  ada91e:	62 a3 ed 20 23 e3 03 	vshuff64x2 ymm20,ymm18,ymm19,0x3
  ada925:	62 a3 d5 20 23 ef 03 	vshuff64x2 ymm21,ymm21,ymm23,0x3
  ada92c:	62 a3 6d 20 18 d3 01 	vinsertf32x4 ymm18,ymm18,xmm19,0x1
  ada933:	62 e1 7c 28 29 54 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0xa0],ymm18
  ada93a:	05 
  ada93b:	62 e1 fd 28 29 6c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x120],ymm21
  ada942:	09 
  ada943:	62 e1 fd 28 29 64 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x1a0],ymm20
  ada94a:	0d 
  ada94b:	62 c1 8d 28 14 d7    	vunpcklpd ymm18,ymm14,ymm15
  ada951:	62 a1 f5 20 14 d8    	vunpcklpd ymm19,ymm17,ymm16
  ada957:	62 a3 6d 20 18 e3 01 	vinsertf32x4 ymm20,ymm18,xmm19,0x1
  ada95e:	62 e1 7c 28 29 64 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x40],ymm20
  ada965:	02 
  ada966:	c4 41 0d 15 f7       	vunpckhpd ymm14,ymm14,ymm15
  ada96b:	62 31 f5 20 15 f8    	vunpckhpd ymm15,ymm17,ymm16
  ada971:	62 c3 8d 28 23 c7 03 	vshuff64x2 ymm16,ymm14,ymm15,0x3
  ada978:	62 a3 ed 20 23 cb 03 	vshuff64x2 ymm17,ymm18,ymm19,0x3
  ada97f:	c4 43 0d 18 f7 01    	vinsertf128 ymm14,ymm14,xmm15,0x1
  ada985:	c5 7c 29 b4 c4 c0 00 	vmovaps YMMWORD PTR [rsp+rax*8+0xc0],ymm14
  ada98c:	00 00 
  ada98e:	62 e1 fd 28 29 4c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x140],ymm17
  ada995:	0a 
  ada996:	62 e1 fd 28 29 44 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x1c0],ymm16
  ada99d:	0e 
  ada99e:	c4 41 15 14 f3       	vunpcklpd ymm14,ymm13,ymm11
  ada9a3:	c4 41 1d 14 fa       	vunpcklpd ymm15,ymm12,ymm10
  ada9a8:	62 c3 0d 28 18 c7 01 	vinsertf32x4 ymm16,ymm14,xmm15,0x1
  ada9af:	62 e1 7c 28 29 44 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x60],ymm16
  ada9b6:	03 
  ada9b7:	c4 41 15 15 db       	vunpckhpd ymm11,ymm13,ymm11
  ada9bc:	c4 41 1d 15 d2       	vunpckhpd ymm10,ymm12,ymm10
  ada9c1:	c4 43 25 06 e2 31    	vperm2f128 ymm12,ymm11,ymm10,0x31
  ada9c7:	c4 43 0d 06 ef 31    	vperm2f128 ymm13,ymm14,ymm15,0x31
  ada9cd:	c4 43 25 18 d2 01    	vinsertf128 ymm10,ymm11,xmm10,0x1
  ada9d3:	c5 7c 29 94 c4 e0 00 	vmovaps YMMWORD PTR [rsp+rax*8+0xe0],ymm10
  ada9da:	00 00 
  ada9dc:	c5 7d 29 ac c4 60 01 	vmovapd YMMWORD PTR [rsp+rax*8+0x160],ymm13
  ada9e3:	00 00 
  ada9e5:	c5 7d 29 a4 c4 e0 01 	vmovapd YMMWORD PTR [rsp+rax*8+0x1e0],ymm12
  ada9ec:	00 00 
  ada9ee:	e9 06 fb ff ff       	jmp    ada4f9 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xb9>
  ada9f3:	c5 fc 28 84 24 80 00 	vmovaps ymm0,YMMWORD PTR [rsp+0x80]
  ada9fa:	00 00 
  ada9fc:	c5 fc 28 8c 24 00 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x100]
  adaa03:	00 00 
  adaa05:	c5 fc 59 12          	vmulps ymm2,ymm0,YMMWORD PTR [rdx]
  adaa09:	c5 fc c6 c0 b1       	vshufps ymm0,ymm0,ymm0,0xb1
  adaa0e:	c4 e2 7d b8 52 20    	vfmadd231ps ymm2,ymm0,YMMWORD PTR [rdx+0x20]
  adaa14:	c5 f4 c6 c1 b1       	vshufps ymm0,ymm1,ymm1,0xb1
  adaa19:	c5 f4 59 4a 40       	vmulps ymm1,ymm1,YMMWORD PTR [rdx+0x40]
  adaa1e:	c4 e2 7d b8 4a 60    	vfmadd231ps ymm1,ymm0,YMMWORD PTR [rdx+0x60]
  adaa24:	c5 fc 28 84 24 80 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x180]
  adaa2b:	00 00 
  adaa2d:	c5 fc c6 d8 b1       	vshufps ymm3,ymm0,ymm0,0xb1
  adaa32:	c5 fc 59 82 80 00 00 	vmulps ymm0,ymm0,YMMWORD PTR [rdx+0x80]
  adaa39:	00 
  adaa3a:	c4 e2 65 b8 82 a0 00 	vfmadd231ps ymm0,ymm3,YMMWORD PTR [rdx+0xa0]
  adaa41:	00 00 
  adaa43:	c5 fc 28 9c 24 00 02 	vmovaps ymm3,YMMWORD PTR [rsp+0x200]
  adaa4a:	00 00 
  adaa4c:	c5 e4 c6 e3 b1       	vshufps ymm4,ymm3,ymm3,0xb1
  adaa51:	c5 e4 59 9a c0 00 00 	vmulps ymm3,ymm3,YMMWORD PTR [rdx+0xc0]
  adaa58:	00 
  adaa59:	c4 e2 5d b8 9a e0 00 	vfmadd231ps ymm3,ymm4,YMMWORD PTR [rdx+0xe0]
  adaa60:	00 00 
  adaa62:	c5 fc 28 2c 24       	vmovaps ymm5,YMMWORD PTR [rsp]
  adaa67:	c5 ec 58 f3          	vaddps ymm6,ymm2,ymm3
  adaa6b:	c5 f4 58 f8          	vaddps ymm7,ymm1,ymm0
  adaa6f:	c5 6c 5c c3          	vsubps ymm8,ymm2,ymm3
  adaa73:	c5 74 5c c8          	vsubps ymm9,ymm1,ymm0
  adaa77:	c4 e2 7d 18 0d 28 ac 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff59ac28]        # 756a8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b88>
  adaa7e:	59 ff 
  adaa80:	c5 7c 28 d1          	vmovaps ymm10,ymm1
  adaa84:	c4 62 4d a8 d5       	vfmadd213ps ymm10,ymm6,ymm5
  adaa89:	c4 e2 7d 18 05 4a a8 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff59a84a]        # 752dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27bc>
  adaa90:	59 ff 
  adaa92:	c4 62 45 b8 d0       	vfmadd231ps ymm10,ymm7,ymm0
  adaa97:	c5 7c 28 d8          	vmovaps ymm11,ymm0
  adaa9b:	c4 62 4d a8 dd       	vfmadd213ps ymm11,ymm6,ymm5
  adaaa0:	c4 e2 7d 18 15 b7 a8 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff59a8b7]        # 75360 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2840>
  adaaa7:	59 ff 
  adaaa9:	c4 62 45 b8 d9       	vfmadd231ps ymm11,ymm7,ymm1
  adaaae:	c5 bc 59 e2          	vmulps ymm4,ymm8,ymm2
  adaab2:	c4 e2 7d 18 1d 5d ac 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff59ac5d]        # 75718 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bf8>
  adaab9:	59 ff 
  adaabb:	c4 e2 35 b8 e3       	vfmadd231ps ymm4,ymm9,ymm3
  adaac0:	c5 5c c6 e4 b1       	vshufps ymm12,ymm4,ymm4,0xb1
  adaac5:	c5 fc 28 25 b3 da 59 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff59dab3]        # 78580 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5a60>
  adaacc:	ff 
  adaacd:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  adaad1:	c5 3c 59 c3          	vmulps ymm8,ymm8,ymm3
  adaad5:	c4 42 6d bc c1       	vfnmadd231ps ymm8,ymm2,ymm9
  adaada:	c4 41 3c c6 c0 b1    	vshufps ymm8,ymm8,ymm8,0xb1
  adaae0:	c5 3c 57 c4          	vxorps ymm8,ymm8,ymm4
  adaae4:	c5 c4 58 f6          	vaddps ymm6,ymm7,ymm6
  adaae8:	c5 d4 58 ee          	vaddps ymm5,ymm5,ymm6
  adaaec:	c4 c1 2c 58 f4       	vaddps ymm6,ymm10,ymm12
  adaaf1:	c4 c1 24 58 f8       	vaddps ymm7,ymm11,ymm8
  adaaf6:	c4 41 24 5c c0       	vsubps ymm8,ymm11,ymm8
  adaafb:	c4 41 2c 5c cc       	vsubps ymm9,ymm10,ymm12
  adab00:	c5 fc 11 2e          	vmovups YMMWORD PTR [rsi],ymm5
  adab04:	c5 fc 11 b6 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm6
  adab0b:	00 
  adab0c:	c5 fc 11 be 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm7
  adab13:	00 
  adab14:	c5 7c 11 86 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm8
  adab1b:	00 
  adab1c:	c5 7c 11 8e 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm9
  adab23:	00 
  adab24:	c5 fc 28 6c 24 20    	vmovaps ymm5,YMMWORD PTR [rsp+0x20]
  adab2a:	c5 fc 28 b4 24 a0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xa0]
  adab31:	00 00 
  adab33:	c5 fc 28 bc 24 20 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x120]
  adab3a:	00 00 
  adab3c:	c5 4c 59 82 00 01 00 	vmulps ymm8,ymm6,YMMWORD PTR [rdx+0x100]
  adab43:	00 
  adab44:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  adab49:	c4 62 4d b8 82 20 01 	vfmadd231ps ymm8,ymm6,YMMWORD PTR [rdx+0x120]
  adab50:	00 00 
  adab52:	c5 c4 c6 f7 b1       	vshufps ymm6,ymm7,ymm7,0xb1
  adab57:	c5 c4 59 ba 40 01 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x140]
  adab5e:	00 
  adab5f:	c4 e2 4d b8 ba 60 01 	vfmadd231ps ymm7,ymm6,YMMWORD PTR [rdx+0x160]
  adab66:	00 00 
  adab68:	c5 fc 28 b4 24 a0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1a0]
  adab6f:	00 00 
  adab71:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  adab76:	c5 cc 59 b2 80 01 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x180]
  adab7d:	00 
  adab7e:	c4 e2 35 b8 b2 a0 01 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x1a0]
  adab85:	00 00 
  adab87:	c5 7c 28 8c 24 20 02 	vmovaps ymm9,YMMWORD PTR [rsp+0x220]
  adab8e:	00 00 
  adab90:	c4 41 34 c6 d1 b1    	vshufps ymm10,ymm9,ymm9,0xb1
  adab96:	c5 34 59 8a c0 01 00 	vmulps ymm9,ymm9,YMMWORD PTR [rdx+0x1c0]
  adab9d:	00 
  adab9e:	c4 62 2d b8 8a e0 01 	vfmadd231ps ymm9,ymm10,YMMWORD PTR [rdx+0x1e0]
  adaba5:	00 00 
  adaba7:	c4 41 3c 58 d1       	vaddps ymm10,ymm8,ymm9
  adabac:	c5 44 58 de          	vaddps ymm11,ymm7,ymm6
  adabb0:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  adabb5:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  adabb9:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  adabbd:	c4 e2 2d a8 fd       	vfmadd213ps ymm7,ymm10,ymm5
  adabc2:	c4 e2 25 b8 f8       	vfmadd231ps ymm7,ymm11,ymm0
  adabc7:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  adabcb:	c4 62 2d a8 cd       	vfmadd213ps ymm9,ymm10,ymm5
  adabd0:	c4 62 25 b8 c9       	vfmadd231ps ymm9,ymm11,ymm1
  adabd5:	c5 3c 59 e2          	vmulps ymm12,ymm8,ymm2
  adabd9:	c4 62 4d b8 e3       	vfmadd231ps ymm12,ymm6,ymm3
  adabde:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  adabe4:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  adabe8:	c5 3c 59 c3          	vmulps ymm8,ymm8,ymm3
  adabec:	c4 62 6d bc c6       	vfnmadd231ps ymm8,ymm2,ymm6
  adabf1:	c4 c1 3c c6 f0 b1    	vshufps ymm6,ymm8,ymm8,0xb1
  adabf7:	c5 cc 57 f4          	vxorps ymm6,ymm6,ymm4
  adabfb:	c4 41 24 58 c2       	vaddps ymm8,ymm11,ymm10
  adac00:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  adac04:	c5 1c 58 c7          	vaddps ymm8,ymm12,ymm7
  adac08:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  adac0c:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  adac10:	c4 c1 44 5c fc       	vsubps ymm7,ymm7,ymm12
  adac15:	c5 fc 11 6e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm5
  adac1a:	c5 7c 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm8
  adac21:	00 
  adac22:	c5 7c 11 96 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm10
  adac29:	00 
  adac2a:	c5 fc 11 b6 a0 01 00 	vmovups YMMWORD PTR [rsi+0x1a0],ymm6
  adac31:	00 
  adac32:	c5 fc 11 be 20 02 00 	vmovups YMMWORD PTR [rsi+0x220],ymm7
  adac39:	00 
  adac3a:	c5 fc 28 6c 24 40    	vmovaps ymm5,YMMWORD PTR [rsp+0x40]
  adac40:	c5 fc 28 b4 24 c0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xc0]
  adac47:	00 00 
  adac49:	c5 fc 28 bc 24 40 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x140]
  adac50:	00 00 
  adac52:	c5 7c 28 84 24 c0 01 	vmovaps ymm8,YMMWORD PTR [rsp+0x1c0]
  adac59:	00 00 
  adac5b:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  adac60:	c5 cc 59 b2 00 02 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x200]
  adac67:	00 
  adac68:	c4 e2 35 b8 b2 20 02 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x220]
  adac6f:	00 00 
  adac71:	c5 44 59 8a 40 02 00 	vmulps ymm9,ymm7,YMMWORD PTR [rdx+0x240]
  adac78:	00 
  adac79:	c5 c4 c6 ff b1       	vshufps ymm7,ymm7,ymm7,0xb1
  adac7e:	c4 62 45 b8 8a 60 02 	vfmadd231ps ymm9,ymm7,YMMWORD PTR [rdx+0x260]
  adac85:	00 00 
  adac87:	c4 c1 3c c6 f8 b1    	vshufps ymm7,ymm8,ymm8,0xb1
  adac8d:	c5 3c 59 82 80 02 00 	vmulps ymm8,ymm8,YMMWORD PTR [rdx+0x280]
  adac94:	00 
  adac95:	c4 62 45 b8 82 a0 02 	vfmadd231ps ymm8,ymm7,YMMWORD PTR [rdx+0x2a0]
  adac9c:	00 00 
  adac9e:	c5 fc 28 bc 24 40 02 	vmovaps ymm7,YMMWORD PTR [rsp+0x240]
  adaca5:	00 00 
  adaca7:	c5 44 c6 d7 b1       	vshufps ymm10,ymm7,ymm7,0xb1
  adacac:	c5 c4 59 ba c0 02 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x2c0]
  adacb3:	00 
  adacb4:	c4 e2 2d b8 ba e0 02 	vfmadd231ps ymm7,ymm10,YMMWORD PTR [rdx+0x2e0]
  adacbb:	00 00 
  adacbd:	c5 4c 58 d7          	vaddps ymm10,ymm6,ymm7
  adacc1:	c4 41 34 58 d8       	vaddps ymm11,ymm9,ymm8
  adacc6:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  adacca:	c4 c1 34 5c f8       	vsubps ymm7,ymm9,ymm8
  adaccf:	c5 7c 28 c1          	vmovaps ymm8,ymm1
  adacd3:	c4 62 2d a8 c5       	vfmadd213ps ymm8,ymm10,ymm5
  adacd8:	c4 62 25 b8 c0       	vfmadd231ps ymm8,ymm11,ymm0
  adacdd:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  adace1:	c4 62 2d a8 cd       	vfmadd213ps ymm9,ymm10,ymm5
  adace6:	c4 62 25 b8 c9       	vfmadd231ps ymm9,ymm11,ymm1
  adaceb:	c5 4c 59 e2          	vmulps ymm12,ymm6,ymm2
  adacef:	c4 62 45 b8 e3       	vfmadd231ps ymm12,ymm7,ymm3
  adacf4:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  adacfa:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  adacfe:	c5 cc 59 f3          	vmulps ymm6,ymm6,ymm3
  adad02:	c4 e2 6d bc f7       	vfnmadd231ps ymm6,ymm2,ymm7
  adad07:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  adad0c:	c5 cc 57 f4          	vxorps ymm6,ymm6,ymm4
  adad10:	c4 c1 24 58 fa       	vaddps ymm7,ymm11,ymm10
  adad15:	c5 d4 58 ef          	vaddps ymm5,ymm5,ymm7
  adad19:	c4 c1 3c 58 fc       	vaddps ymm7,ymm8,ymm12
  adad1e:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  adad22:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  adad26:	c4 41 3c 5c c4       	vsubps ymm8,ymm8,ymm12
  adad2b:	c5 fc 11 6e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm5
  adad30:	c5 fc 11 be c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm7
  adad37:	00 
  adad38:	c5 7c 11 96 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm10
  adad3f:	00 
  adad40:	c5 fc 11 b6 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm6
  adad47:	00 
  adad48:	c5 7c 11 86 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm8
  adad4f:	00 
  adad50:	c5 fc 28 6c 24 60    	vmovaps ymm5,YMMWORD PTR [rsp+0x60]
  adad56:	c5 fc 28 b4 24 e0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xe0]
  adad5d:	00 00 
  adad5f:	c5 fc 28 bc 24 60 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x160]
  adad66:	00 00 
  adad68:	c5 4c 59 82 00 03 00 	vmulps ymm8,ymm6,YMMWORD PTR [rdx+0x300]
  adad6f:	00 
  adad70:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  adad75:	c4 62 4d b8 82 20 03 	vfmadd231ps ymm8,ymm6,YMMWORD PTR [rdx+0x320]
  adad7c:	00 00 
  adad7e:	c5 c4 c6 f7 b1       	vshufps ymm6,ymm7,ymm7,0xb1
  adad83:	c5 c4 59 ba 40 03 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x340]
  adad8a:	00 
  adad8b:	c4 e2 4d b8 ba 60 03 	vfmadd231ps ymm7,ymm6,YMMWORD PTR [rdx+0x360]
  adad92:	00 00 
  adad94:	c5 fc 28 b4 24 e0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1e0]
  adad9b:	00 00 
  adad9d:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  adada2:	c5 cc 59 b2 80 03 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x380]
  adada9:	00 
  adadaa:	c4 e2 35 b8 b2 a0 03 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x3a0]
  adadb1:	00 00 
  adadb3:	c5 7c 28 8c 24 60 02 	vmovaps ymm9,YMMWORD PTR [rsp+0x260]
  adadba:	00 00 
  adadbc:	c4 41 34 c6 d1 b1    	vshufps ymm10,ymm9,ymm9,0xb1
  adadc2:	c5 34 59 8a c0 03 00 	vmulps ymm9,ymm9,YMMWORD PTR [rdx+0x3c0]
  adadc9:	00 
  adadca:	c4 62 2d b8 8a e0 03 	vfmadd231ps ymm9,ymm10,YMMWORD PTR [rdx+0x3e0]
  adadd1:	00 00 
  adadd3:	c4 41 3c 58 d1       	vaddps ymm10,ymm8,ymm9
  adadd8:	c5 44 58 de          	vaddps ymm11,ymm7,ymm6
  adaddc:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  adade1:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  adade5:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  adade9:	c4 e2 2d a8 fd       	vfmadd213ps ymm7,ymm10,ymm5
  adadee:	c4 e2 25 b8 f8       	vfmadd231ps ymm7,ymm11,ymm0
  adadf3:	c4 e2 2d a8 c5       	vfmadd213ps ymm0,ymm10,ymm5
  adadf8:	c4 e2 25 b8 c1       	vfmadd231ps ymm0,ymm11,ymm1
  adadfd:	c5 bc 59 ca          	vmulps ymm1,ymm8,ymm2
  adae01:	c4 e2 4d b8 cb       	vfmadd231ps ymm1,ymm6,ymm3
  adae06:	c5 f4 c6 c9 b1       	vshufps ymm1,ymm1,ymm1,0xb1
  adae0b:	c5 f4 57 cc          	vxorps ymm1,ymm1,ymm4
  adae0f:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  adae13:	c4 e2 4d bc da       	vfnmadd231ps ymm3,ymm6,ymm2
  adae18:	c5 e4 c6 d3 b1       	vshufps ymm2,ymm3,ymm3,0xb1
  adae1d:	c5 ec 57 d4          	vxorps ymm2,ymm2,ymm4
  adae21:	c4 c1 24 58 da       	vaddps ymm3,ymm11,ymm10
  adae26:	c5 d4 58 db          	vaddps ymm3,ymm5,ymm3
  adae2a:	c5 c4 58 e1          	vaddps ymm4,ymm7,ymm1
  adae2e:	c5 fc 58 ea          	vaddps ymm5,ymm0,ymm2
  adae32:	c5 fc 5c c2          	vsubps ymm0,ymm0,ymm2
  adae36:	c5 c4 5c c9          	vsubps ymm1,ymm7,ymm1
  adae3a:	c5 fc 11 5e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm3
  adae3f:	c5 fc 11 a6 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm4
  adae46:	00 
  adae47:	c5 fc 11 ae 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm5
  adae4e:	00 
  adae4f:	c5 fc 11 86 e0 01 00 	vmovups YMMWORD PTR [rsi+0x1e0],ymm0
  adae56:	00 
  adae57:	c5 fc 11 8e 60 02 00 	vmovups YMMWORD PTR [rsi+0x260],ymm1
  adae5e:	00 
  adae5f:	48 89 ec             	mov    rsp,rbp
  adae62:	5d                   	pop    rbp
  adae63:	c5 f8 77             	vzeroupper
  adae66:	c3                   	ret
  adae67:	cc                   	int3
  adae68:	cc                   	int3
  adae69:	cc                   	int3
  adae6a:	cc                   	int3
  adae6b:	cc                   	int3
  adae6c:	cc                   	int3
  adae6d:	cc                   	int3
  adae6e:	cc                   	int3
  adae6f:	cc                   	int3
  adae70:	cc                   	int3
  adae71:	cc                   	int3
  adae72:	cc                   	int3
  adae73:	cc                   	int3
  adae74:	cc                   	int3
  adae75:	cc                   	int3
  adae76:	cc                   	int3
  adae77:	cc                   	int3
  adae78:	cc                   	int3
  adae79:	cc                   	int3
  adae7a:	cc                   	int3
  adae7b:	cc                   	int3
  adae7c:	cc                   	int3
  adae7d:	cc                   	int3
  adae7e:	cc                   	int3
  adae7f:	cc                   	int3
