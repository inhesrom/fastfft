
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b12640 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b12640:	48 c1 e2 06          	shl    rdx,0x6
  b12644:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  b12648:	31 d2                	xor    edx,edx
  b1264a:	62 e2 7d 28 18 35 80 	vbroadcastss ymm22,DWORD PTR [rip+0xffffffffff562c80]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b12651:	2c 56 ff 
  b12654:	62 e2 7d 28 18 3d 02 	vbroadcastss ymm23,DWORD PTR [rip+0xffffffffff562e02]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b1265b:	2e 56 ff 
  b1265e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  b12662:	c4 e2 7d 18 1d 31 2d 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff562d31]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b12669:	56 ff 
  b1266b:	c5 fc 28 25 4d 5c 56 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff565c4d]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  b12672:	ff 
  b12673:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b1267a:	84 00 00 00 00 00 
  b12680:	c5 fc 10 2c 17       	vmovups ymm5,YMMWORD PTR [rdi+rdx*1]
  b12685:	c5 fc 10 74 17 20    	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x20]
  b1268b:	c5 fc 10 7c 17 40    	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x40]
  b12691:	c5 7c 10 44 17 60    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x60]
  b12697:	c4 41 44 c6 c8 88    	vshufps ymm9,ymm7,ymm8,0x88
  b1269d:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  b126a3:	c5 7c 10 94 17 80 00 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x80]
  b126aa:	00 00 
  b126ac:	c5 7c 10 9c 17 a0 00 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0xa0]
  b126b3:	00 00 
  b126b5:	c4 41 2c c6 e3 88    	vshufps ymm12,ymm10,ymm11,0x88
  b126bb:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b126c1:	c4 41 34 5c ec       	vsubps ymm13,ymm9,ymm12
  b126c6:	62 31 14 28 59 ee    	vmulps ymm13,ymm13,ymm22
  b126cc:	c4 c1 44 c6 f8 dd    	vshufps ymm7,ymm7,ymm8,0xdd
  b126d2:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  b126d8:	c4 41 2c c6 c3 dd    	vshufps ymm8,ymm10,ymm11,0xdd
  b126de:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b126e4:	c5 3c 58 d7          	vaddps ymm10,ymm8,ymm7
  b126e8:	c5 54 c6 de dd       	vshufps ymm11,ymm5,ymm6,0xdd
  b126ed:	c4 43 fd 01 f3 d8    	vpermpd ymm14,ymm11,0xd8
  b126f3:	62 31 7c 28 28 ff    	vmovaps ymm15,ymm23
  b126f9:	c4 42 2d ac fe       	vfnmadd213ps ymm15,ymm10,ymm14
  b126fe:	c4 41 14 58 df       	vaddps ymm11,ymm13,ymm15
  b12703:	c4 41 34 58 cc       	vaddps ymm9,ymm9,ymm12
  b12708:	c5 d4 c6 ee 88       	vshufps ymm5,ymm5,ymm6,0x88
  b1270d:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  b12713:	62 b1 7c 28 28 f7    	vmovaps ymm6,ymm23
  b12719:	c4 e2 35 ac f5       	vfnmadd213ps ymm6,ymm9,ymm5
  b1271e:	c4 c1 44 5c f8       	vsubps ymm7,ymm7,ymm8
  b12723:	62 b1 44 28 59 fe    	vmulps ymm7,ymm7,ymm22
  b12729:	c5 4c 5c c7          	vsubps ymm8,ymm6,ymm7
  b1272d:	c4 41 04 5c e5       	vsubps ymm12,ymm15,ymm13
  b12732:	c5 cc 58 f7          	vaddps ymm6,ymm6,ymm7
  b12736:	62 c1 0c 28 58 c2    	vaddps ymm16,ymm14,ymm10
  b1273c:	c5 b4 58 ed          	vaddps ymm5,ymm9,ymm5
  b12740:	c5 f8 28 fd          	vmovaps xmm7,xmm5
  b12744:	c4 c3 7d 19 e9 01    	vextractf128 xmm9,ymm5,0x1
  b1274a:	c5 78 28 d6          	vmovaps xmm10,xmm6
  b1274e:	c4 c3 7d 19 f5 01    	vextractf128 xmm13,ymm6,0x1
  b12754:	c5 78 29 c5          	vmovaps xmm5,xmm8
  b12758:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  b1275e:	c5 45 15 f5          	vunpckhpd ymm14,ymm7,ymm5
  b12762:	c5 c5 14 ed          	vunpcklpd ymm5,ymm7,ymm5
  b12766:	c5 fa 7e f6          	vmovq  xmm6,xmm6
  b1276a:	c4 c1 45 73 da 08    	vpsrldq ymm7,ymm10,0x8
  b12770:	62 c1 b5 28 15 c8    	vunpckhpd ymm17,ymm9,ymm8
  b12776:	c4 41 35 14 c0       	vunpcklpd ymm8,ymm9,ymm8
  b1277b:	c4 63 15 0c d2 cc    	vblendps ymm10,ymm13,ymm2,0xcc
  b12781:	62 e1 95 28 15 d2    	vunpckhpd ymm18,ymm13,ymm2
  b12787:	c5 54 c6 ce dd       	vshufps ymm9,ymm5,ymm6,0xdd
  b1278c:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  b12792:	c5 0c c6 ef 88       	vshufps ymm13,ymm14,ymm7,0x88
  b12797:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  b1279d:	c5 8c c6 ff dd       	vshufps ymm7,ymm14,ymm7,0xdd
  b127a2:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b127a7:	c4 41 3c c6 f2 88    	vshufps ymm14,ymm8,ymm10,0x88
  b127ad:	c4 41 0c c6 fe d8    	vshufps ymm15,ymm14,ymm14,0xd8
  b127b3:	c4 41 3c c6 c2 dd    	vshufps ymm8,ymm8,ymm10,0xdd
  b127b9:	c4 41 3c c6 d0 d8    	vshufps ymm10,ymm8,ymm8,0xd8
  b127bf:	62 31 74 20 c6 c2 88 	vshufps ymm8,ymm17,ymm18,0x88
  b127c6:	c4 41 3c c6 f0 d8    	vshufps ymm14,ymm8,ymm8,0xd8
  b127cc:	62 31 74 20 c6 c2 dd 	vshufps ymm8,ymm17,ymm18,0xdd
  b127d3:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  b127d9:	62 a1 7c 08 28 c8    	vmovaps xmm17,xmm16
  b127df:	62 a3 7d 28 19 c0 01 	vextractf32x4 xmm16,ymm16,0x1
  b127e6:	62 c1 7c 08 28 d4    	vmovaps xmm18,xmm12
  b127ec:	c4 63 7d 19 e0 01    	vextractf128 xmm0,ymm12,0x1
  b127f2:	62 c1 7c 08 28 db    	vmovaps xmm19,xmm11
  b127f8:	62 33 7d 28 19 dc 01 	vextractf32x4 xmm20,ymm11,0x1
  b127ff:	62 a1 f5 20 15 eb    	vunpckhpd ymm21,ymm17,ymm19
  b12805:	62 31 f5 20 14 db    	vunpcklpd ymm11,ymm17,ymm19
  b1280b:	c4 41 7a 7e e4       	vmovq  xmm12,xmm12
  b12810:	62 b1 75 20 73 da 08 	vpsrldq ymm17,ymm18,0x8
  b12817:	62 a1 fd 20 15 d4    	vunpckhpd ymm18,ymm16,ymm20
  b1281d:	62 a1 fd 20 14 c4    	vunpcklpd ymm16,ymm16,ymm20
  b12823:	c4 e3 7d 0c ca cc    	vblendps ymm1,ymm0,ymm2,0xcc
  b12829:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  b1282d:	62 c1 24 28 c6 dc dd 	vshufps ymm19,ymm11,ymm12,0xdd
  b12834:	62 a1 64 20 c6 db d8 	vshufps ymm19,ymm19,ymm19,0xd8
  b1283b:	62 a1 54 20 c6 e1 88 	vshufps ymm20,ymm21,ymm17,0x88
  b12842:	62 21 5c 20 c6 c4 d8 	vshufps ymm24,ymm20,ymm20,0xd8
  b12849:	62 a1 54 20 c6 c9 dd 	vshufps ymm17,ymm21,ymm17,0xdd
  b12850:	62 a1 74 20 c6 c9 d8 	vshufps ymm17,ymm17,ymm17,0xd8
  b12857:	62 e1 7c 20 c6 e1 88 	vshufps ymm20,ymm16,ymm1,0x88
  b1285e:	62 a1 5c 20 c6 ec d8 	vshufps ymm21,ymm20,ymm20,0xd8
  b12865:	62 f1 7c 20 c6 c9 dd 	vshufps ymm1,ymm16,ymm1,0xdd
  b1286c:	62 e1 74 28 c6 e1 d8 	vshufps ymm20,ymm1,ymm1,0xd8
  b12873:	62 f1 6c 20 c6 c8 dd 	vshufps ymm1,ymm18,ymm0,0xdd
  b1287a:	62 e1 74 28 c6 c1 d8 	vshufps ymm16,ymm1,ymm1,0xd8
  b12881:	62 f1 6c 20 c6 c0 88 	vshufps ymm0,ymm18,ymm0,0x88
  b12888:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b1288d:	c5 fc 10 89 00 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x100]
  b12894:	00 
  b12895:	62 61 7c 28 10 49 09 	vmovups ymm25,YMMWORD PTR [rcx+0x120]
  b1289c:	62 e1 04 28 59 d1    	vmulps ymm18,ymm15,ymm1
  b128a2:	62 82 55 20 bc d1    	vfnmadd231ps ymm18,ymm21,ymm25
  b128a8:	62 e1 54 20 59 e9    	vmulps ymm21,ymm21,ymm1
  b128ae:	c5 fc 10 89 80 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0x80]
  b128b5:	00 
  b128b6:	62 82 05 28 b8 e9    	vfmadd231ps ymm21,ymm15,ymm25
  b128bc:	62 61 7c 28 10 49 05 	vmovups ymm25,YMMWORD PTR [rcx+0xa0]
  b128c3:	c5 14 59 f9          	vmulps ymm15,ymm13,ymm1
  b128c7:	62 12 3d 20 bc f9    	vfnmadd231ps ymm15,ymm24,ymm25
  b128cd:	62 f1 3c 20 59 c9    	vmulps ymm1,ymm24,ymm1
  b128d3:	62 61 7c 28 10 41 0c 	vmovups ymm24,YMMWORD PTR [rcx+0x180]
  b128da:	62 92 15 28 b8 c9    	vfmadd231ps ymm1,ymm13,ymm25
  b128e0:	c5 7c 10 a9 a0 01 00 	vmovups ymm13,YMMWORD PTR [rcx+0x1a0]
  b128e7:	00 
  b128e8:	62 01 0c 28 59 c8    	vmulps ymm25,ymm14,ymm24
  b128ee:	62 42 7d 28 bc cd    	vfnmadd231ps ymm25,ymm0,ymm13
  b128f4:	62 91 7c 28 59 c0    	vmulps ymm0,ymm0,ymm24
  b128fa:	62 61 7c 28 10 41 02 	vmovups ymm24,YMMWORD PTR [rcx+0x40]
  b12901:	c4 c2 0d b8 c5       	vfmadd231ps ymm0,ymm14,ymm13
  b12906:	c5 7c 10 69 60       	vmovups ymm13,YMMWORD PTR [rcx+0x60]
  b1290b:	62 11 34 28 59 f0    	vmulps ymm14,ymm9,ymm24
  b12911:	62 52 65 20 bc f5    	vfnmadd231ps ymm14,ymm19,ymm13
  b12917:	62 81 64 20 59 d8    	vmulps ymm19,ymm19,ymm24
  b1291d:	62 61 7c 28 10 41 0a 	vmovups ymm24,YMMWORD PTR [rcx+0x140]
  b12924:	62 c2 35 28 b8 dd    	vfmadd231ps ymm19,ymm9,ymm13
  b1292a:	c5 7c 10 89 60 01 00 	vmovups ymm9,YMMWORD PTR [rcx+0x160]
  b12931:	00 
  b12932:	62 11 2c 28 59 e8    	vmulps ymm13,ymm10,ymm24
  b12938:	62 52 5d 20 bc e9    	vfnmadd231ps ymm13,ymm20,ymm9
  b1293e:	62 81 5c 20 59 e0    	vmulps ymm20,ymm20,ymm24
  b12944:	62 61 7c 28 10 41 06 	vmovups ymm24,YMMWORD PTR [rcx+0xc0]
  b1294b:	62 c2 2d 28 b8 e1    	vfmadd231ps ymm20,ymm10,ymm9
  b12951:	c5 7c 10 89 e0 00 00 	vmovups ymm9,YMMWORD PTR [rcx+0xe0]
  b12958:	00 
  b12959:	62 11 44 28 59 d0    	vmulps ymm10,ymm7,ymm24
  b1295f:	62 52 75 20 bc d1    	vfnmadd231ps ymm10,ymm17,ymm9
  b12965:	62 81 74 20 59 c8    	vmulps ymm17,ymm17,ymm24
  b1296b:	62 61 7c 28 10 41 0e 	vmovups ymm24,YMMWORD PTR [rcx+0x1c0]
  b12972:	62 c2 45 28 b8 c9    	vfmadd231ps ymm17,ymm7,ymm9
  b12978:	c5 fc 10 b9 e0 01 00 	vmovups ymm7,YMMWORD PTR [rcx+0x1e0]
  b1297f:	00 
  b12980:	62 11 3c 28 59 c8    	vmulps ymm9,ymm8,ymm24
  b12986:	62 72 7d 20 bc cf    	vfnmadd231ps ymm9,ymm16,ymm7
  b1298c:	62 81 7c 20 59 c0    	vmulps ymm16,ymm16,ymm24
  b12992:	62 e2 3d 28 b8 c7    	vfmadd231ps ymm16,ymm8,ymm7
  b12998:	c5 d4 c6 ee 88       	vshufps ymm5,ymm5,ymm6,0x88
  b1299d:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b129a2:	c4 c1 24 c6 f4 88    	vshufps ymm6,ymm11,ymm12,0x88
  b129a8:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  b129ad:	62 b1 54 28 58 fa    	vaddps ymm7,ymm5,ymm18
  b129b3:	62 31 54 28 5c c2    	vsubps ymm8,ymm5,ymm18
  b129b9:	c5 74 58 d8          	vaddps ymm11,ymm1,ymm0
  b129bd:	c5 f4 5c c0          	vsubps ymm0,ymm1,ymm0
  b129c1:	c4 c1 0c 58 cd       	vaddps ymm1,ymm14,ymm13
  b129c6:	c4 c1 0c 5c ed       	vsubps ymm5,ymm14,ymm13
  b129cb:	62 31 64 20 58 e4    	vaddps ymm12,ymm19,ymm20
  b129d1:	62 31 64 20 5c ec    	vsubps ymm13,ymm19,ymm20
  b129d7:	62 31 74 20 58 f0    	vaddps ymm14,ymm17,ymm16
  b129dd:	62 a1 74 20 5c c0    	vsubps ymm16,ymm17,ymm16
  b129e3:	62 c1 2c 28 58 c9    	vaddps ymm17,ymm10,ymm9
  b129e9:	c4 41 2c 5c c9       	vsubps ymm9,ymm10,ymm9
  b129ee:	62 71 54 20 58 d6    	vaddps ymm10,ymm21,ymm6
  b129f4:	62 a1 4c 28 5c d5    	vsubps ymm18,ymm6,ymm21
  b129fa:	62 91 04 28 58 f1    	vaddps ymm6,ymm15,ymm25
  b12a00:	62 51 34 20 5c ff    	vsubps ymm15,ymm25,ymm15
  b12a06:	62 c1 54 28 58 dd    	vaddps ymm19,ymm5,ymm13
  b12a0c:	c5 14 5c ed          	vsubps ymm13,ymm13,ymm5
  b12a10:	62 c1 7c 20 5c e1    	vsubps ymm20,ymm16,ymm9
  b12a16:	62 a1 34 28 58 c0    	vaddps ymm16,ymm9,ymm16
  b12a1c:	c5 44 58 ce          	vaddps ymm9,ymm7,ymm6
  b12a20:	c5 c4 5c ee          	vsubps ymm5,ymm7,ymm6
  b12a24:	62 c1 1c 28 58 ee    	vaddps ymm21,ymm12,ymm14
  b12a2a:	c4 c1 1c 5c f6       	vsubps ymm6,ymm12,ymm14
  b12a2f:	c4 41 24 58 f2       	vaddps ymm14,ymm11,ymm10
  b12a34:	c4 41 2c 5c db       	vsubps ymm11,ymm10,ymm11
  b12a39:	62 31 74 28 58 e1    	vaddps ymm12,ymm1,ymm17
  b12a3f:	62 f1 74 20 5c c9    	vsubps ymm1,ymm17,ymm1
  b12a45:	c5 3c 58 d0          	vaddps ymm10,ymm8,ymm0
  b12a49:	62 e1 64 20 59 cb    	vmulps ymm17,ymm19,ymm3
  b12a4f:	62 e1 5c 20 59 db    	vmulps ymm19,ymm20,ymm3
  b12a55:	c5 14 59 eb          	vmulps ymm13,ymm13,ymm3
  b12a59:	62 e1 7c 20 59 c3    	vmulps ymm16,ymm16,ymm3
  b12a5f:	c5 bc 5c f8          	vsubps ymm7,ymm8,ymm0
  b12a63:	62 b1 14 28 5c c0    	vsubps ymm0,ymm13,ymm16
  b12a69:	62 31 14 28 58 c0    	vaddps ymm8,ymm13,ymm16
  b12a6f:	62 31 04 28 58 ea    	vaddps ymm13,ymm15,ymm18
  b12a75:	62 51 6c 20 5c ff    	vsubps ymm15,ymm18,ymm15
  b12a7b:	62 a1 74 20 58 c3    	vaddps ymm16,ymm17,ymm19
  b12a81:	62 a1 64 20 5c c9    	vsubps ymm17,ymm19,ymm17
  b12a87:	62 e1 14 28 58 d0    	vaddps ymm18,ymm13,ymm0
  b12a8d:	c5 94 5c c0          	vsubps ymm0,ymm13,ymm0
  b12a91:	c5 24 58 e9          	vaddps ymm13,ymm11,ymm1
  b12a95:	c5 a4 5c c9          	vsubps ymm1,ymm11,ymm1
  b12a99:	62 a1 04 28 58 d9    	vaddps ymm19,ymm15,ymm17
  b12a9f:	62 31 04 28 5c d9    	vsubps ymm11,ymm15,ymm17
  b12aa5:	62 31 0c 28 5c fd    	vsubps ymm15,ymm14,ymm21
  b12aab:	62 31 0c 28 58 f5    	vaddps ymm14,ymm14,ymm21
  b12ab1:	62 c1 34 08 58 cc    	vaddps xmm17,xmm9,xmm12
  b12ab7:	62 c2 5d 28 7f ce    	vpermt2ps ymm17,ymm4,ymm14
  b12abd:	62 c3 7d 28 19 ce 01 	vextractf32x4 xmm14,ymm17,0x1
  b12ac4:	c5 78 13 74 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm14
  b12aca:	62 e1 7c 08 11 0c 16 	vmovups XMMWORD PTR [rsi+rdx*1],xmm17
  b12ad1:	62 31 2c 08 58 f0    	vaddps xmm14,xmm10,xmm16
  b12ad7:	62 32 5d 28 7f f2    	vpermt2ps ymm14,ymm4,ymm18
  b12add:	62 33 7d 28 19 f1 01 	vextractf32x4 xmm17,ymm14,0x1
  b12ae4:	62 e1 7c 08 13 4c 16 	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm17
  b12aeb:	05 
  b12aec:	c5 78 11 74 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm14
  b12af2:	c5 50 58 f6          	vaddps xmm14,xmm5,xmm6
  b12af6:	62 52 5d 28 7f f5    	vpermt2ps ymm14,ymm4,ymm13
  b12afc:	c4 43 7d 19 f5 01    	vextractf128 xmm13,ymm14,0x1
  b12b02:	c5 78 13 6c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm13
  b12b08:	c5 78 11 74 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm14
  b12b0e:	c5 38 58 ef          	vaddps xmm13,xmm8,xmm7
  b12b12:	62 32 5d 28 7f eb    	vpermt2ps ymm13,ymm4,ymm19
  b12b18:	c4 43 7d 19 ee 01    	vextractf128 xmm14,ymm13,0x1
  b12b1e:	c5 78 13 74 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm14
  b12b24:	c5 78 11 6c 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm13
  b12b2a:	c4 41 30 5c cc       	vsubps xmm9,xmm9,xmm12
  b12b2f:	62 52 5d 28 7f cf    	vpermt2ps ymm9,ymm4,ymm15
  b12b35:	c4 43 7d 19 cc 01    	vextractf128 xmm12,ymm9,0x1
  b12b3b:	c5 78 13 64 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm12
  b12b41:	c5 78 11 4c 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm9
  b12b47:	62 31 2c 08 5c c8    	vsubps xmm9,xmm10,xmm16
  b12b4d:	62 72 5d 28 7f c8    	vpermt2ps ymm9,ymm4,ymm0
  b12b53:	c4 63 7d 19 c8 01    	vextractf128 xmm0,ymm9,0x1
  b12b59:	c5 f8 13 84 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm0
  b12b60:	00 00 
  b12b62:	c5 78 11 4c 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm9
  b12b68:	c5 d0 5c c6          	vsubps xmm0,xmm5,xmm6
  b12b6c:	62 f2 5d 28 7f c1    	vpermt2ps ymm0,ymm4,ymm1
  b12b72:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  b12b78:	c5 f8 13 8c 16 a0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xa0],xmm1
  b12b7f:	00 00 
  b12b81:	c5 f8 11 84 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm0
  b12b88:	00 00 
  b12b8a:	c4 c1 40 5c c0       	vsubps xmm0,xmm7,xmm8
  b12b8f:	62 d2 5d 28 7f c3    	vpermt2ps ymm0,ymm4,ymm11
  b12b95:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  b12b9b:	c5 f8 13 8c 16 b8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xb8],xmm1
  b12ba2:	00 00 
  b12ba4:	c5 f8 11 84 16 a8 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa8],xmm0
  b12bab:	00 00 
  b12bad:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  b12bb4:	48 39 d0             	cmp    rax,rdx
  b12bb7:	0f 85 c3 fa ff ff    	jne    b12680 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x40>
  b12bbd:	c5 f8 77             	vzeroupper
  b12bc0:	c3                   	ret
