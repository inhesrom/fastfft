
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ab83c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ab83c0:	48 c1 e2 05          	shl    rdx,0x5
  ab83c4:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  ab83c8:	c4 e2 7d 18 05 03 cf 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5bcf03]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ab83cf:	5b ff 
  ab83d1:	31 d2                	xor    edx,edx
  ab83d3:	c4 e2 7d 18 0d 84 d0 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5bd084]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ab83da:	5b ff 
  ab83dc:	c5 fc 28 15 fc ed 5b 	vmovaps ymm2,YMMWORD PTR [rip+0xffffffffff5bedfc]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  ab83e3:	ff 
  ab83e4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  ab83eb:	00 00 00 00 00 
  ab83f0:	c5 fc 10 5c 17 60    	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x60]
  ab83f6:	c5 f8 10 a4 17 80 00 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x80]
  ab83fd:	00 00 
  ab83ff:	c5 e4 c6 ec dd       	vshufps ymm5,ymm3,ymm4,0xdd
  ab8404:	c4 e3 fd 01 fd d8    	vpermpd ymm7,ymm5,0xd8
  ab840a:	c5 fc 10 ac 17 c0 00 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0xc0]
  ab8411:	00 00 
  ab8413:	c5 78 10 84 17 e0 00 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0xe0]
  ab841a:	00 00 
  ab841c:	c4 c1 54 c6 f0 dd    	vshufps ymm6,ymm5,ymm8,0xdd
  ab8422:	c4 63 fd 01 ce d8    	vpermpd ymm9,ymm6,0xd8
  ab8428:	c4 c1 44 5c f1       	vsubps ymm6,ymm7,ymm9
  ab842d:	c5 cc 59 f0          	vmulps ymm6,ymm6,ymm0
  ab8431:	c5 e4 c6 dc 88       	vshufps ymm3,ymm3,ymm4,0x88
  ab8436:	c4 63 fd 01 d3 d8    	vpermpd ymm10,ymm3,0xd8
  ab843c:	c4 c1 54 c6 d8 88    	vshufps ymm3,ymm5,ymm8,0x88
  ab8442:	c4 63 fd 01 c3 d8    	vpermpd ymm8,ymm3,0xd8
  ab8448:	c4 c1 2c 58 e0       	vaddps ymm4,ymm10,ymm8
  ab844d:	c5 7c 10 1c 17       	vmovups ymm11,YMMWORD PTR [rdi+rdx*1]
  ab8452:	c5 78 10 64 17 20    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x20]
  ab8458:	c4 c1 24 c6 dc 88    	vshufps ymm3,ymm11,ymm12,0x88
  ab845e:	c4 e3 fd 01 eb d8    	vpermpd ymm5,ymm3,0xd8
  ab8464:	c5 7c 28 e9          	vmovaps ymm13,ymm1
  ab8468:	c4 62 5d ac ed       	vfnmadd213ps ymm13,ymm4,ymm5
  ab846d:	c5 94 58 de          	vaddps ymm3,ymm13,ymm6
  ab8471:	c5 7c 10 b4 17 f0 00 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0xf0]
  ab8478:	00 00 
  ab847a:	c5 78 10 bc 17 10 01 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x110]
  ab8481:	00 00 
  ab8483:	62 c1 0c 28 c6 c7 dd 	vshufps ymm16,ymm14,ymm15,0xdd
  ab848a:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  ab8491:	62 e1 7c 28 10 8c 17 	vmovups ymm17,YMMWORD PTR [rdi+rdx*1+0x30]
  ab8498:	30 00 00 00 
  ab849c:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x50]
  ab84a3:	05 
  ab84a4:	62 a1 74 20 c6 da dd 	vshufps ymm19,ymm17,ymm18,0xdd
  ab84ab:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  ab84b2:	c4 41 0c c6 f7 88    	vshufps ymm14,ymm14,ymm15,0x88
  ab84b8:	62 31 7c 20 5c fb    	vsubps ymm15,ymm16,ymm19
  ab84be:	c5 04 59 f8          	vmulps ymm15,ymm15,ymm0
  ab84c2:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  ab84c8:	62 a1 74 20 c6 ca 88 	vshufps ymm17,ymm17,ymm18,0x88
  ab84cf:	62 a3 fd 28 01 c9 d8 	vpermpd ymm17,ymm17,0xd8
  ab84d6:	62 a1 0c 28 58 d1    	vaddps ymm18,ymm14,ymm17
  ab84dc:	c5 b4 58 ff          	vaddps ymm7,ymm9,ymm7
  ab84e0:	c5 7c 10 8c 17 90 00 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x90]
  ab84e7:	00 00 
  ab84e9:	c4 41 24 c6 dc dd    	vshufps ymm11,ymm11,ymm12,0xdd
  ab84ef:	c5 78 10 a4 17 b0 00 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0xb0]
  ab84f6:	00 00 
  ab84f8:	c4 41 2c 5c c0       	vsubps ymm8,ymm10,ymm8
  ab84fd:	c4 41 34 c6 d4 88    	vshufps ymm10,ymm9,ymm12,0x88
  ab8503:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  ab8509:	62 a1 7c 20 58 c3    	vaddps ymm16,ymm16,ymm19
  ab850f:	62 e1 7c 28 28 d9    	vmovaps ymm19,ymm1
  ab8515:	62 c2 6d 20 ac da    	vfnmadd213ps ymm19,ymm18,ymm10
  ab851b:	c4 41 34 c6 cc dd    	vshufps ymm9,ymm9,ymm12,0xdd
  ab8521:	62 31 04 28 58 e3    	vaddps ymm12,ymm15,ymm19
  ab8527:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  ab852d:	62 31 0c 28 5c f1    	vsubps ymm14,ymm14,ymm17
  ab8533:	62 e1 7c 28 28 c9    	vmovaps ymm17,ymm1
  ab8539:	62 c2 45 28 ac cb    	vfnmadd213ps ymm17,ymm7,ymm11
  ab853f:	c5 3c 59 c0          	vmulps ymm8,ymm8,ymm0
  ab8543:	c5 14 5c ee          	vsubps ymm13,ymm13,ymm6
  ab8547:	62 c1 74 20 5c e0    	vsubps ymm20,ymm17,ymm8
  ab854d:	c4 c3 fd 01 f1 d8    	vpermpd ymm6,ymm9,0xd8
  ab8553:	62 51 64 20 5c cf    	vsubps ymm9,ymm19,ymm15
  ab8559:	c5 7c 28 f9          	vmovaps ymm15,ymm1
  ab855d:	62 72 7d 20 ac fe    	vfnmadd213ps ymm15,ymm16,ymm6
  ab8563:	c5 0c 59 f0          	vmulps ymm14,ymm14,ymm0
  ab8567:	62 c1 74 20 58 c8    	vaddps ymm17,ymm17,ymm8
  ab856d:	62 c1 04 28 5c de    	vsubps ymm19,ymm15,ymm14
  ab8573:	c4 41 04 58 f6       	vaddps ymm14,ymm15,ymm14
  ab8578:	c4 41 64 5c fc       	vsubps ymm15,ymm3,ymm12
  ab857d:	c5 d4 58 e4          	vaddps ymm4,ymm5,ymm4
  ab8581:	62 b1 5c 20 5c eb    	vsubps ymm5,ymm20,ymm19
  ab8587:	62 31 2c 28 58 d2    	vaddps ymm10,ymm10,ymm18
  ab858d:	62 c1 14 28 58 d1    	vaddps ymm18,ymm13,ymm9
  ab8593:	c5 a4 58 ff          	vaddps ymm7,ymm11,ymm7
  ab8597:	62 51 74 20 58 de    	vaddps ymm11,ymm17,ymm14
  ab859d:	62 a1 4c 28 58 c0    	vaddps ymm16,ymm6,ymm16
  ab85a3:	c4 c1 5c 5c f2       	vsubps ymm6,ymm4,ymm10
  ab85a8:	c5 1c 58 c3          	vaddps ymm8,ymm12,ymm3
  ab85ac:	62 b1 44 28 5c d8    	vsubps ymm3,ymm7,ymm16
  ab85b2:	62 31 5c 20 58 e3    	vaddps ymm12,ymm20,ymm19
  ab85b8:	c4 41 14 5c c9       	vsubps ymm9,ymm13,ymm9
  ab85bd:	62 51 74 20 5c ee    	vsubps ymm13,ymm17,ymm14
  ab85c3:	c5 ac 58 e4          	vaddps ymm4,ymm10,ymm4
  ab85c7:	62 b1 44 28 58 f8    	vaddps ymm7,ymm7,ymm16
  ab85cd:	c4 43 45 18 d3 01    	vinsertf128 ymm10,ymm7,xmm11,0x1
  ab85d3:	c4 c3 45 06 fb 31    	vperm2f128 ymm7,ymm7,ymm11,0x31
  ab85d9:	c4 63 15 18 dd 01    	vinsertf128 ymm11,ymm13,xmm5,0x1
  ab85df:	c4 e3 15 06 ed 31    	vperm2f128 ymm5,ymm13,ymm5,0x31
  ab85e5:	c4 41 78 28 ec       	vmovaps xmm13,xmm12
  ab85ea:	c4 41 2d 14 f5       	vunpcklpd ymm14,ymm10,ymm13
  ab85ef:	62 e1 7c 08 28 c3    	vmovaps xmm16,xmm3
  ab85f5:	62 a1 a5 28 14 c8    	vunpcklpd ymm17,ymm11,ymm16
  ab85fb:	62 a1 0c 28 c6 d9 88 	vshufps ymm19,ymm14,ymm17,0x88
  ab8602:	62 31 0c 28 c6 f1 dd 	vshufps ymm14,ymm14,ymm17,0xdd
  ab8609:	c4 41 2d 15 d5       	vunpckhpd ymm10,ymm10,ymm13
  ab860e:	62 31 a5 28 15 d8    	vunpckhpd ymm11,ymm11,ymm16
  ab8614:	c4 41 2c c6 eb 88    	vshufps ymm13,ymm10,ymm11,0x88
  ab861a:	c4 41 2c c6 d3 dd    	vshufps ymm10,ymm10,ymm11,0xdd
  ab8620:	c4 43 7d 19 e3 01    	vextractf128 xmm11,ymm12,0x1
  ab8626:	c4 c1 45 14 fb       	vunpcklpd ymm7,ymm7,ymm11
  ab862b:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  ab8631:	c5 d5 14 db          	vunpcklpd ymm3,ymm5,ymm3
  ab8635:	c5 44 c6 db 88       	vshufps ymm11,ymm7,ymm3,0x88
  ab863a:	c5 c4 c6 db dd       	vshufps ymm3,ymm7,ymm3,0xdd
  ab863f:	62 b3 5d 28 18 ea 01 	vinsertf32x4 ymm5,ymm4,xmm18,0x1
  ab8646:	62 33 dd 28 23 e2 03 	vshuff64x2 ymm12,ymm4,ymm18,0x3
  ab864d:	62 c3 35 28 18 c7 01 	vinsertf32x4 ymm16,ymm9,xmm15,0x1
  ab8654:	c4 43 35 06 ff 31    	vperm2f128 ymm15,ymm9,ymm15,0x31
  ab865a:	c5 78 29 c4          	vmovaps xmm4,xmm8
  ab865e:	c5 d5 14 fc          	vunpcklpd ymm7,ymm5,ymm4
  ab8662:	62 e1 7c 08 28 ce    	vmovaps xmm17,xmm6
  ab8668:	62 31 fd 20 14 c9    	vunpcklpd ymm9,ymm16,ymm17
  ab866e:	62 c1 44 28 c6 d1 88 	vshufps ymm18,ymm7,ymm9,0x88
  ab8675:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  ab867b:	62 e1 d5 28 15 e4    	vunpckhpd ymm20,ymm5,ymm4
  ab8681:	62 b1 64 20 c6 e3 d8 	vshufps ymm4,ymm19,ymm19,0xd8
  ab8688:	c4 c1 0c c6 ee d8    	vshufps ymm5,ymm14,ymm14,0xd8
  ab868e:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  ab8694:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  ab869a:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  ab86a0:	c5 64 c6 cb d8       	vshufps ymm9,ymm3,ymm3,0xd8
  ab86a5:	62 b1 6c 20 c6 da d8 	vshufps ymm3,ymm18,ymm18,0xd8
  ab86ac:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  ab86b1:	62 31 fd 20 15 f1    	vunpckhpd ymm14,ymm16,ymm17
  ab86b7:	62 c1 5c 20 c6 c6 88 	vshufps ymm16,ymm20,ymm14,0x88
  ab86be:	62 a1 7c 20 c6 c0 d8 	vshufps ymm16,ymm16,ymm16,0xd8
  ab86c5:	62 51 5c 20 c6 f6 dd 	vshufps ymm14,ymm20,ymm14,0xdd
  ab86cc:	c4 41 0c c6 f6 d8    	vshufps ymm14,ymm14,ymm14,0xd8
  ab86d2:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  ab86d8:	c4 41 1d 14 c0       	vunpcklpd ymm8,ymm12,ymm8
  ab86dd:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  ab86e3:	c5 85 14 f6          	vunpcklpd ymm6,ymm15,ymm6
  ab86e7:	c5 3c c6 e6 88       	vshufps ymm12,ymm8,ymm6,0x88
  ab86ec:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  ab86f2:	c5 bc c6 f6 dd       	vshufps ymm6,ymm8,ymm6,0xdd
  ab86f7:	c5 4c c6 c6 d8       	vshufps ymm8,ymm6,ymm6,0xd8
  ab86fc:	c5 7c 10 b9 80 00 00 	vmovups ymm15,YMMWORD PTR [rcx+0x80]
  ab8703:	00 
  ab8704:	62 e1 7c 28 10 49 05 	vmovups ymm17,YMMWORD PTR [rcx+0xa0]
  ab870b:	c4 c1 14 59 f7       	vmulps ymm6,ymm13,ymm15
  ab8710:	62 b2 7d 20 bc f1    	vfnmadd231ps ymm6,ymm16,ymm17
  ab8716:	62 51 7c 20 59 ff    	vmulps ymm15,ymm16,ymm15
  ab871c:	62 e1 7c 28 10 41 08 	vmovups ymm16,YMMWORD PTR [rcx+0x100]
  ab8723:	62 32 15 28 b8 f9    	vfmadd231ps ymm15,ymm13,ymm17
  ab8729:	c5 7c 10 a9 20 01 00 	vmovups ymm13,YMMWORD PTR [rcx+0x120]
  ab8730:	00 
  ab8731:	62 a1 24 28 59 c8    	vmulps ymm17,ymm11,ymm16
  ab8737:	62 c2 1d 28 bc cd    	vfnmadd231ps ymm17,ymm12,ymm13
  ab873d:	62 31 1c 28 59 e0    	vmulps ymm12,ymm12,ymm16
  ab8743:	62 e1 7c 28 10 41 06 	vmovups ymm16,YMMWORD PTR [rcx+0xc0]
  ab874a:	c4 42 25 b8 e5       	vfmadd231ps ymm12,ymm11,ymm13
  ab874f:	c5 7c 10 99 e0 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0xe0]
  ab8756:	00 
  ab8757:	62 31 2c 28 59 e8    	vmulps ymm13,ymm10,ymm16
  ab875d:	c4 42 0d bc eb       	vfnmadd231ps ymm13,ymm14,ymm11
  ab8762:	62 31 0c 28 59 f0    	vmulps ymm14,ymm14,ymm16
  ab8768:	62 e1 7c 28 10 41 0a 	vmovups ymm16,YMMWORD PTR [rcx+0x140]
  ab876f:	c4 42 2d b8 f3       	vfmadd231ps ymm14,ymm10,ymm11
  ab8774:	c5 7c 10 91 60 01 00 	vmovups ymm10,YMMWORD PTR [rcx+0x160]
  ab877b:	00 
  ab877c:	62 31 34 28 59 d8    	vmulps ymm11,ymm9,ymm16
  ab8782:	c4 42 3d bc da       	vfnmadd231ps ymm11,ymm8,ymm10
  ab8787:	62 31 3c 28 59 c0    	vmulps ymm8,ymm8,ymm16
  ab878d:	62 e1 7c 28 10 41 02 	vmovups ymm16,YMMWORD PTR [rcx+0x40]
  ab8794:	c4 42 35 b8 c2       	vfmadd231ps ymm8,ymm9,ymm10
  ab8799:	c5 7c 10 49 60       	vmovups ymm9,YMMWORD PTR [rcx+0x60]
  ab879e:	62 31 54 28 59 d0    	vmulps ymm10,ymm5,ymm16
  ab87a4:	c4 42 45 bc d1       	vfnmadd231ps ymm10,ymm7,ymm9
  ab87a9:	62 b1 44 28 59 f8    	vmulps ymm7,ymm7,ymm16
  ab87af:	62 a1 4c 28 58 c1    	vaddps ymm16,ymm6,ymm17
  ab87b5:	c4 c2 55 b8 f9       	vfmadd231ps ymm7,ymm5,ymm9
  ab87ba:	62 b1 5c 28 58 e8    	vaddps ymm5,ymm4,ymm16
  ab87c0:	c4 41 24 58 ca       	vaddps ymm9,ymm11,ymm10
  ab87c5:	62 e2 75 28 ac c4    	vfnmadd213ps ymm16,ymm1,ymm4
  ab87cb:	c4 c1 04 58 e4       	vaddps ymm4,ymm15,ymm12
  ab87d0:	c4 41 04 5c e4       	vsubps ymm12,ymm15,ymm12
  ab87d5:	c4 41 14 58 f9       	vaddps ymm15,ymm13,ymm9
  ab87da:	c4 42 75 bc e9       	vfnmadd231ps ymm13,ymm1,ymm9
  ab87df:	c5 3c 58 cf          	vaddps ymm9,ymm8,ymm7
  ab87e3:	c5 bc 5c ff          	vsubps ymm7,ymm8,ymm7
  ab87e7:	c5 5c 58 c3          	vaddps ymm8,ymm4,ymm3
  ab87eb:	c4 e2 75 ac e3       	vfnmadd213ps ymm4,ymm1,ymm3
  ab87f0:	62 b1 4c 28 5c d9    	vsubps ymm3,ymm6,ymm17
  ab87f6:	c4 c1 0c 58 f1       	vaddps ymm6,ymm14,ymm9
  ab87fb:	c4 42 75 bc f1       	vfnmadd231ps ymm14,ymm1,ymm9
  ab8800:	c5 1c 59 c8          	vmulps ymm9,ymm12,ymm0
  ab8804:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  ab8809:	62 51 7c 20 58 d9    	vaddps ymm11,ymm16,ymm9
  ab880f:	c5 c4 59 f8          	vmulps ymm7,ymm7,ymm0
  ab8813:	62 51 7c 20 5c c9    	vsubps ymm9,ymm16,ymm9
  ab8819:	c5 14 58 e7          	vaddps ymm12,ymm13,ymm7
  ab881d:	c5 e4 59 d8          	vmulps ymm3,ymm3,ymm0
  ab8821:	c5 94 5c ff          	vsubps ymm7,ymm13,ymm7
  ab8825:	c5 5c 5c eb          	vsubps ymm13,ymm4,ymm3
  ab8829:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  ab882d:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  ab8831:	c4 c1 0c 5c e2       	vsubps ymm4,ymm14,ymm10
  ab8836:	c4 41 0c 58 d2       	vaddps ymm10,ymm14,ymm10
  ab883b:	c4 41 24 5c f4       	vsubps ymm14,ymm11,ymm12
  ab8840:	c4 41 24 58 dc       	vaddps ymm11,ymm11,ymm12
  ab8845:	c5 14 5c e4          	vsubps ymm12,ymm13,ymm4
  ab8849:	c5 94 58 e4          	vaddps ymm4,ymm13,ymm4
  ab884d:	c5 34 58 ef          	vaddps ymm13,ymm9,ymm7
  ab8851:	c5 b4 5c ff          	vsubps ymm7,ymm9,ymm7
  ab8855:	c5 2c 58 cb          	vaddps ymm9,ymm10,ymm3
  ab8859:	c4 c1 64 5c da       	vsubps ymm3,ymm3,ymm10
  ab885e:	c5 3c 5c d6          	vsubps ymm10,ymm8,ymm6
  ab8862:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  ab8866:	c4 41 54 5c c7       	vsubps ymm8,ymm5,ymm15
  ab886b:	c5 84 58 ed          	vaddps ymm5,ymm15,ymm5
  ab886f:	c4 c3 7d 19 f7 01    	vextractf128 xmm15,ymm6,0x1
  ab8875:	62 f2 6d 28 7f f5    	vpermt2ps ymm6,ymm2,ymm5
  ab887b:	c5 fc 11 34 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm6
  ab8880:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  ab8886:	c5 80 14 ed          	vunpcklps xmm5,xmm15,xmm5
  ab888a:	c5 f8 11 6c 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm5
  ab8890:	c4 63 7d 19 e5 01    	vextractf128 xmm5,ymm12,0x1
  ab8896:	62 52 6d 28 7f e6    	vpermt2ps ymm12,ymm2,ymm14
  ab889c:	c5 7c 11 64 16 30    	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm12
  ab88a2:	c4 63 7d 19 f6 01    	vextractf128 xmm6,ymm14,0x1
  ab88a8:	c5 d0 14 ee          	vunpcklps xmm5,xmm5,xmm6
  ab88ac:	c5 f8 11 6c 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm5
  ab88b2:	c4 63 7d 19 cd 01    	vextractf128 xmm5,ymm9,0x1
  ab88b8:	62 52 6d 28 7f cd    	vpermt2ps ymm9,ymm2,ymm13
  ab88be:	c5 7c 11 4c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm9
  ab88c4:	c4 63 7d 19 ee 01    	vextractf128 xmm6,ymm13,0x1
  ab88ca:	c5 d0 14 ee          	vunpcklps xmm5,xmm5,xmm6
  ab88ce:	c5 f8 11 ac 16 80 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x80],xmm5
  ab88d5:	00 00 
  ab88d7:	c4 63 7d 19 d5 01    	vextractf128 xmm5,ymm10,0x1
  ab88dd:	62 52 6d 28 7f d0    	vpermt2ps ymm10,ymm2,ymm8
  ab88e3:	c5 7c 11 94 16 90 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm10
  ab88ea:	00 00 
  ab88ec:	c4 63 7d 19 c6 01    	vextractf128 xmm6,ymm8,0x1
  ab88f2:	c5 d0 14 ee          	vunpcklps xmm5,xmm5,xmm6
  ab88f6:	c5 f8 11 ac 16 b0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xb0],xmm5
  ab88fd:	00 00 
  ab88ff:	c4 e3 7d 19 e5 01    	vextractf128 xmm5,ymm4,0x1
  ab8905:	62 d2 6d 28 7f e3    	vpermt2ps ymm4,ymm2,ymm11
  ab890b:	c5 fc 11 a4 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm4
  ab8912:	00 00 
  ab8914:	c4 63 7d 19 dc 01    	vextractf128 xmm4,ymm11,0x1
  ab891a:	c5 d0 14 e4          	vunpcklps xmm4,xmm5,xmm4
  ab891e:	c5 f8 11 a4 16 e0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xe0],xmm4
  ab8925:	00 00 
  ab8927:	c4 e3 7d 19 dc 01    	vextractf128 xmm4,ymm3,0x1
  ab892d:	62 f2 6d 28 7f df    	vpermt2ps ymm3,ymm2,ymm7
  ab8933:	c5 fc 11 9c 16 f0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm3
  ab893a:	00 00 
  ab893c:	c4 e3 7d 19 fb 01    	vextractf128 xmm3,ymm7,0x1
  ab8942:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  ab8946:	c5 f8 11 9c 16 10 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x110],xmm3
  ab894d:	00 00 
  ab894f:	48 81 c2 20 01 00 00 	add    rdx,0x120
  ab8956:	48 39 d0             	cmp    rax,rdx
  ab8959:	0f 85 91 fa ff ff    	jne    ab83f0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  ab895f:	c5 f8 77             	vzeroupper
  ab8962:	c3                   	ret
