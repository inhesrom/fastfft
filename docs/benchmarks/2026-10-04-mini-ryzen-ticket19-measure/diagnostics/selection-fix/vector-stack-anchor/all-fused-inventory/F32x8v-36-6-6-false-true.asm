
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000aa6600 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  aa6600:	48 c1 e2 05          	shl    rdx,0x5
  aa6604:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  aa6608:	c4 e2 7d 18 05 c3 ec 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5cecc3]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  aa660f:	5c ff 
  aa6611:	31 d2                	xor    edx,edx
  aa6613:	c4 e2 7d 18 0d 44 ee 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5cee44]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  aa661a:	5c ff 
  aa661c:	c5 fc 28 15 bc 0b 5d 	vmovaps ymm2,YMMWORD PTR [rip+0xffffffffff5d0bbc]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  aa6623:	ff 
  aa6624:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  aa662b:	00 00 00 00 00 
  aa6630:	c5 fc 10 5c 17 60    	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x60]
  aa6636:	c5 f8 10 a4 17 80 00 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x80]
  aa663d:	00 00 
  aa663f:	c5 e4 c6 ec 88       	vshufps ymm5,ymm3,ymm4,0x88
  aa6644:	c4 e3 fd 01 fd d8    	vpermpd ymm7,ymm5,0xd8
  aa664a:	c5 fc 10 ac 17 c0 00 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0xc0]
  aa6651:	00 00 
  aa6653:	c5 78 10 84 17 e0 00 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0xe0]
  aa665a:	00 00 
  aa665c:	c4 c1 54 c6 f0 88    	vshufps ymm6,ymm5,ymm8,0x88
  aa6662:	c4 63 fd 01 ce d8    	vpermpd ymm9,ymm6,0xd8
  aa6668:	c4 c1 44 5c f1       	vsubps ymm6,ymm7,ymm9
  aa666d:	c5 cc 59 f0          	vmulps ymm6,ymm6,ymm0
  aa6671:	c5 e4 c6 dc dd       	vshufps ymm3,ymm3,ymm4,0xdd
  aa6676:	c4 63 fd 01 d3 d8    	vpermpd ymm10,ymm3,0xd8
  aa667c:	c4 c1 54 c6 d8 dd    	vshufps ymm3,ymm5,ymm8,0xdd
  aa6682:	c4 63 fd 01 c3 d8    	vpermpd ymm8,ymm3,0xd8
  aa6688:	c4 c1 2c 58 e0       	vaddps ymm4,ymm10,ymm8
  aa668d:	c5 7c 10 1c 17       	vmovups ymm11,YMMWORD PTR [rdi+rdx*1]
  aa6692:	c5 78 10 64 17 20    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x20]
  aa6698:	c4 c1 24 c6 dc dd    	vshufps ymm3,ymm11,ymm12,0xdd
  aa669e:	c4 e3 fd 01 eb d8    	vpermpd ymm5,ymm3,0xd8
  aa66a4:	c5 7c 28 e9          	vmovaps ymm13,ymm1
  aa66a8:	c4 62 5d ac ed       	vfnmadd213ps ymm13,ymm4,ymm5
  aa66ad:	c5 94 58 de          	vaddps ymm3,ymm13,ymm6
  aa66b1:	c5 7c 10 b4 17 f0 00 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0xf0]
  aa66b8:	00 00 
  aa66ba:	c5 78 10 bc 17 10 01 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x110]
  aa66c1:	00 00 
  aa66c3:	62 c1 0c 28 c6 c7 88 	vshufps ymm16,ymm14,ymm15,0x88
  aa66ca:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  aa66d1:	62 e1 7c 28 10 8c 17 	vmovups ymm17,YMMWORD PTR [rdi+rdx*1+0x30]
  aa66d8:	30 00 00 00 
  aa66dc:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x50]
  aa66e3:	05 
  aa66e4:	62 a1 74 20 c6 da 88 	vshufps ymm19,ymm17,ymm18,0x88
  aa66eb:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  aa66f2:	c4 41 0c c6 f7 dd    	vshufps ymm14,ymm14,ymm15,0xdd
  aa66f8:	62 31 7c 20 5c fb    	vsubps ymm15,ymm16,ymm19
  aa66fe:	c5 04 59 f8          	vmulps ymm15,ymm15,ymm0
  aa6702:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  aa6708:	62 a1 74 20 c6 ca dd 	vshufps ymm17,ymm17,ymm18,0xdd
  aa670f:	62 a3 fd 28 01 c9 d8 	vpermpd ymm17,ymm17,0xd8
  aa6716:	62 a1 0c 28 58 d1    	vaddps ymm18,ymm14,ymm17
  aa671c:	c5 b4 58 ff          	vaddps ymm7,ymm9,ymm7
  aa6720:	c5 7c 10 8c 17 90 00 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x90]
  aa6727:	00 00 
  aa6729:	c4 41 24 c6 dc 88    	vshufps ymm11,ymm11,ymm12,0x88
  aa672f:	c5 78 10 a4 17 b0 00 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0xb0]
  aa6736:	00 00 
  aa6738:	c4 41 2c 5c c0       	vsubps ymm8,ymm10,ymm8
  aa673d:	c4 41 34 c6 d4 dd    	vshufps ymm10,ymm9,ymm12,0xdd
  aa6743:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  aa6749:	62 a1 7c 20 58 c3    	vaddps ymm16,ymm16,ymm19
  aa674f:	62 e1 7c 28 28 d9    	vmovaps ymm19,ymm1
  aa6755:	62 c2 6d 20 ac da    	vfnmadd213ps ymm19,ymm18,ymm10
  aa675b:	c4 41 34 c6 cc 88    	vshufps ymm9,ymm9,ymm12,0x88
  aa6761:	62 31 04 28 58 e3    	vaddps ymm12,ymm15,ymm19
  aa6767:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  aa676d:	62 31 0c 28 5c f1    	vsubps ymm14,ymm14,ymm17
  aa6773:	62 e1 7c 28 28 c9    	vmovaps ymm17,ymm1
  aa6779:	62 c2 45 28 ac cb    	vfnmadd213ps ymm17,ymm7,ymm11
  aa677f:	c5 3c 59 c0          	vmulps ymm8,ymm8,ymm0
  aa6783:	c5 14 5c ee          	vsubps ymm13,ymm13,ymm6
  aa6787:	62 c1 74 20 5c e0    	vsubps ymm20,ymm17,ymm8
  aa678d:	c4 c3 fd 01 f1 d8    	vpermpd ymm6,ymm9,0xd8
  aa6793:	62 51 64 20 5c cf    	vsubps ymm9,ymm19,ymm15
  aa6799:	c5 7c 28 f9          	vmovaps ymm15,ymm1
  aa679d:	62 72 7d 20 ac fe    	vfnmadd213ps ymm15,ymm16,ymm6
  aa67a3:	c5 0c 59 f0          	vmulps ymm14,ymm14,ymm0
  aa67a7:	62 c1 74 20 58 c8    	vaddps ymm17,ymm17,ymm8
  aa67ad:	62 c1 04 28 5c de    	vsubps ymm19,ymm15,ymm14
  aa67b3:	c4 41 04 58 f6       	vaddps ymm14,ymm15,ymm14
  aa67b8:	c4 41 64 5c fc       	vsubps ymm15,ymm3,ymm12
  aa67bd:	c5 d4 58 e4          	vaddps ymm4,ymm5,ymm4
  aa67c1:	62 b1 5c 20 5c eb    	vsubps ymm5,ymm20,ymm19
  aa67c7:	62 31 2c 28 58 d2    	vaddps ymm10,ymm10,ymm18
  aa67cd:	62 c1 14 28 58 d1    	vaddps ymm18,ymm13,ymm9
  aa67d3:	c5 a4 58 ff          	vaddps ymm7,ymm11,ymm7
  aa67d7:	62 51 74 20 58 de    	vaddps ymm11,ymm17,ymm14
  aa67dd:	62 a1 4c 28 58 c0    	vaddps ymm16,ymm6,ymm16
  aa67e3:	c4 c1 5c 5c f2       	vsubps ymm6,ymm4,ymm10
  aa67e8:	c5 1c 58 c3          	vaddps ymm8,ymm12,ymm3
  aa67ec:	62 b1 44 28 5c d8    	vsubps ymm3,ymm7,ymm16
  aa67f2:	62 31 5c 20 58 e3    	vaddps ymm12,ymm20,ymm19
  aa67f8:	c4 41 14 5c c9       	vsubps ymm9,ymm13,ymm9
  aa67fd:	62 51 74 20 5c ee    	vsubps ymm13,ymm17,ymm14
  aa6803:	c5 ac 58 e4          	vaddps ymm4,ymm10,ymm4
  aa6807:	62 b1 44 28 58 f8    	vaddps ymm7,ymm7,ymm16
  aa680d:	c4 43 45 18 d3 01    	vinsertf128 ymm10,ymm7,xmm11,0x1
  aa6813:	c4 c3 45 06 fb 31    	vperm2f128 ymm7,ymm7,ymm11,0x31
  aa6819:	c4 63 15 18 dd 01    	vinsertf128 ymm11,ymm13,xmm5,0x1
  aa681f:	c4 e3 15 06 ed 31    	vperm2f128 ymm5,ymm13,ymm5,0x31
  aa6825:	c4 41 78 28 ec       	vmovaps xmm13,xmm12
  aa682a:	c4 41 2d 14 f5       	vunpcklpd ymm14,ymm10,ymm13
  aa682f:	62 e1 7c 08 28 c3    	vmovaps xmm16,xmm3
  aa6835:	62 a1 a5 28 14 c8    	vunpcklpd ymm17,ymm11,ymm16
  aa683b:	62 a1 0c 28 c6 d9 88 	vshufps ymm19,ymm14,ymm17,0x88
  aa6842:	62 31 0c 28 c6 f1 dd 	vshufps ymm14,ymm14,ymm17,0xdd
  aa6849:	c4 41 2d 15 d5       	vunpckhpd ymm10,ymm10,ymm13
  aa684e:	62 31 a5 28 15 d8    	vunpckhpd ymm11,ymm11,ymm16
  aa6854:	c4 41 2c c6 eb 88    	vshufps ymm13,ymm10,ymm11,0x88
  aa685a:	c4 41 2c c6 d3 dd    	vshufps ymm10,ymm10,ymm11,0xdd
  aa6860:	c4 43 7d 19 e3 01    	vextractf128 xmm11,ymm12,0x1
  aa6866:	c4 c1 45 14 fb       	vunpcklpd ymm7,ymm7,ymm11
  aa686b:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  aa6871:	c5 d5 14 db          	vunpcklpd ymm3,ymm5,ymm3
  aa6875:	c5 44 c6 db 88       	vshufps ymm11,ymm7,ymm3,0x88
  aa687a:	c5 c4 c6 db dd       	vshufps ymm3,ymm7,ymm3,0xdd
  aa687f:	62 b3 5d 28 18 ea 01 	vinsertf32x4 ymm5,ymm4,xmm18,0x1
  aa6886:	62 33 dd 28 23 e2 03 	vshuff64x2 ymm12,ymm4,ymm18,0x3
  aa688d:	62 c3 35 28 18 c7 01 	vinsertf32x4 ymm16,ymm9,xmm15,0x1
  aa6894:	c4 43 35 06 ff 31    	vperm2f128 ymm15,ymm9,ymm15,0x31
  aa689a:	c5 78 29 c4          	vmovaps xmm4,xmm8
  aa689e:	c5 d5 14 fc          	vunpcklpd ymm7,ymm5,ymm4
  aa68a2:	62 e1 7c 08 28 ce    	vmovaps xmm17,xmm6
  aa68a8:	62 31 fd 20 14 c9    	vunpcklpd ymm9,ymm16,ymm17
  aa68ae:	62 c1 44 28 c6 d1 88 	vshufps ymm18,ymm7,ymm9,0x88
  aa68b5:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  aa68bb:	62 e1 d5 28 15 e4    	vunpckhpd ymm20,ymm5,ymm4
  aa68c1:	62 b1 64 20 c6 e3 d8 	vshufps ymm4,ymm19,ymm19,0xd8
  aa68c8:	c4 c1 0c c6 ee d8    	vshufps ymm5,ymm14,ymm14,0xd8
  aa68ce:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  aa68d4:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  aa68da:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  aa68e0:	c5 64 c6 cb d8       	vshufps ymm9,ymm3,ymm3,0xd8
  aa68e5:	62 b1 6c 20 c6 da d8 	vshufps ymm3,ymm18,ymm18,0xd8
  aa68ec:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  aa68f1:	62 31 fd 20 15 f1    	vunpckhpd ymm14,ymm16,ymm17
  aa68f7:	62 c1 5c 20 c6 c6 88 	vshufps ymm16,ymm20,ymm14,0x88
  aa68fe:	62 a1 7c 20 c6 c0 d8 	vshufps ymm16,ymm16,ymm16,0xd8
  aa6905:	62 51 5c 20 c6 f6 dd 	vshufps ymm14,ymm20,ymm14,0xdd
  aa690c:	c4 41 0c c6 f6 d8    	vshufps ymm14,ymm14,ymm14,0xd8
  aa6912:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  aa6918:	c4 41 1d 14 c0       	vunpcklpd ymm8,ymm12,ymm8
  aa691d:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  aa6923:	c5 85 14 f6          	vunpcklpd ymm6,ymm15,ymm6
  aa6927:	c5 3c c6 e6 88       	vshufps ymm12,ymm8,ymm6,0x88
  aa692c:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  aa6932:	c5 bc c6 f6 dd       	vshufps ymm6,ymm8,ymm6,0xdd
  aa6937:	c5 4c c6 c6 d8       	vshufps ymm8,ymm6,ymm6,0xd8
  aa693c:	c5 7c 10 b9 80 00 00 	vmovups ymm15,YMMWORD PTR [rcx+0x80]
  aa6943:	00 
  aa6944:	62 e1 7c 28 10 49 05 	vmovups ymm17,YMMWORD PTR [rcx+0xa0]
  aa694b:	c4 c1 14 59 f7       	vmulps ymm6,ymm13,ymm15
  aa6950:	62 b2 7d 20 bc f1    	vfnmadd231ps ymm6,ymm16,ymm17
  aa6956:	62 51 7c 20 59 ff    	vmulps ymm15,ymm16,ymm15
  aa695c:	62 e1 7c 28 10 41 08 	vmovups ymm16,YMMWORD PTR [rcx+0x100]
  aa6963:	62 32 15 28 b8 f9    	vfmadd231ps ymm15,ymm13,ymm17
  aa6969:	c5 7c 10 a9 20 01 00 	vmovups ymm13,YMMWORD PTR [rcx+0x120]
  aa6970:	00 
  aa6971:	62 a1 24 28 59 c8    	vmulps ymm17,ymm11,ymm16
  aa6977:	62 c2 1d 28 bc cd    	vfnmadd231ps ymm17,ymm12,ymm13
  aa697d:	62 31 1c 28 59 e0    	vmulps ymm12,ymm12,ymm16
  aa6983:	62 e1 7c 28 10 41 06 	vmovups ymm16,YMMWORD PTR [rcx+0xc0]
  aa698a:	c4 42 25 b8 e5       	vfmadd231ps ymm12,ymm11,ymm13
  aa698f:	c5 7c 10 99 e0 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0xe0]
  aa6996:	00 
  aa6997:	62 31 2c 28 59 e8    	vmulps ymm13,ymm10,ymm16
  aa699d:	c4 42 0d bc eb       	vfnmadd231ps ymm13,ymm14,ymm11
  aa69a2:	62 31 0c 28 59 f0    	vmulps ymm14,ymm14,ymm16
  aa69a8:	62 e1 7c 28 10 41 0a 	vmovups ymm16,YMMWORD PTR [rcx+0x140]
  aa69af:	c4 42 2d b8 f3       	vfmadd231ps ymm14,ymm10,ymm11
  aa69b4:	c5 7c 10 91 60 01 00 	vmovups ymm10,YMMWORD PTR [rcx+0x160]
  aa69bb:	00 
  aa69bc:	62 31 34 28 59 d8    	vmulps ymm11,ymm9,ymm16
  aa69c2:	c4 42 3d bc da       	vfnmadd231ps ymm11,ymm8,ymm10
  aa69c7:	62 31 3c 28 59 c0    	vmulps ymm8,ymm8,ymm16
  aa69cd:	62 e1 7c 28 10 41 02 	vmovups ymm16,YMMWORD PTR [rcx+0x40]
  aa69d4:	c4 42 35 b8 c2       	vfmadd231ps ymm8,ymm9,ymm10
  aa69d9:	c5 7c 10 49 60       	vmovups ymm9,YMMWORD PTR [rcx+0x60]
  aa69de:	62 31 54 28 59 d0    	vmulps ymm10,ymm5,ymm16
  aa69e4:	c4 42 45 bc d1       	vfnmadd231ps ymm10,ymm7,ymm9
  aa69e9:	62 b1 44 28 59 f8    	vmulps ymm7,ymm7,ymm16
  aa69ef:	62 a1 4c 28 58 c1    	vaddps ymm16,ymm6,ymm17
  aa69f5:	c4 c2 55 b8 f9       	vfmadd231ps ymm7,ymm5,ymm9
  aa69fa:	62 b1 5c 28 58 e8    	vaddps ymm5,ymm4,ymm16
  aa6a00:	c4 41 24 58 ca       	vaddps ymm9,ymm11,ymm10
  aa6a05:	62 e2 75 28 ac c4    	vfnmadd213ps ymm16,ymm1,ymm4
  aa6a0b:	c4 c1 04 58 e4       	vaddps ymm4,ymm15,ymm12
  aa6a10:	c4 41 04 5c e4       	vsubps ymm12,ymm15,ymm12
  aa6a15:	c4 41 14 58 f9       	vaddps ymm15,ymm13,ymm9
  aa6a1a:	c4 42 75 bc e9       	vfnmadd231ps ymm13,ymm1,ymm9
  aa6a1f:	c5 3c 58 cf          	vaddps ymm9,ymm8,ymm7
  aa6a23:	c5 bc 5c ff          	vsubps ymm7,ymm8,ymm7
  aa6a27:	c5 5c 58 c3          	vaddps ymm8,ymm4,ymm3
  aa6a2b:	c4 e2 75 ac e3       	vfnmadd213ps ymm4,ymm1,ymm3
  aa6a30:	62 b1 4c 28 5c d9    	vsubps ymm3,ymm6,ymm17
  aa6a36:	c4 c1 0c 58 f1       	vaddps ymm6,ymm14,ymm9
  aa6a3b:	c4 42 75 bc f1       	vfnmadd231ps ymm14,ymm1,ymm9
  aa6a40:	c5 1c 59 c8          	vmulps ymm9,ymm12,ymm0
  aa6a44:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  aa6a49:	62 51 7c 20 58 d9    	vaddps ymm11,ymm16,ymm9
  aa6a4f:	c5 c4 59 f8          	vmulps ymm7,ymm7,ymm0
  aa6a53:	62 51 7c 20 5c c9    	vsubps ymm9,ymm16,ymm9
  aa6a59:	c5 14 58 e7          	vaddps ymm12,ymm13,ymm7
  aa6a5d:	c5 e4 59 d8          	vmulps ymm3,ymm3,ymm0
  aa6a61:	c5 94 5c ff          	vsubps ymm7,ymm13,ymm7
  aa6a65:	c5 5c 5c eb          	vsubps ymm13,ymm4,ymm3
  aa6a69:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  aa6a6d:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  aa6a71:	c4 c1 0c 5c e2       	vsubps ymm4,ymm14,ymm10
  aa6a76:	c4 41 0c 58 d2       	vaddps ymm10,ymm14,ymm10
  aa6a7b:	c4 41 24 5c f4       	vsubps ymm14,ymm11,ymm12
  aa6a80:	c4 41 24 58 dc       	vaddps ymm11,ymm11,ymm12
  aa6a85:	c5 14 5c e4          	vsubps ymm12,ymm13,ymm4
  aa6a89:	c5 94 58 e4          	vaddps ymm4,ymm13,ymm4
  aa6a8d:	c5 34 58 ef          	vaddps ymm13,ymm9,ymm7
  aa6a91:	c5 b4 5c ff          	vsubps ymm7,ymm9,ymm7
  aa6a95:	c5 2c 58 cb          	vaddps ymm9,ymm10,ymm3
  aa6a99:	c4 c1 64 5c da       	vsubps ymm3,ymm3,ymm10
  aa6a9e:	c4 41 54 5c d7       	vsubps ymm10,ymm5,ymm15
  aa6aa3:	c5 84 58 ed          	vaddps ymm5,ymm15,ymm5
  aa6aa7:	c5 3c 5c fe          	vsubps ymm15,ymm8,ymm6
  aa6aab:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  aa6aaf:	c4 c3 7d 19 e8 01    	vextractf128 xmm8,ymm5,0x1
  aa6ab5:	62 f2 6d 28 7f ee    	vpermt2ps ymm5,ymm2,ymm6
  aa6abb:	c5 fc 11 2c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm5
  aa6ac0:	c4 e3 7d 19 f5 01    	vextractf128 xmm5,ymm6,0x1
  aa6ac6:	c5 b8 14 ed          	vunpcklps xmm5,xmm8,xmm5
  aa6aca:	c5 f8 11 6c 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm5
  aa6ad0:	c4 63 7d 19 f5 01    	vextractf128 xmm5,ymm14,0x1
  aa6ad6:	62 52 6d 28 7f f4    	vpermt2ps ymm14,ymm2,ymm12
  aa6adc:	c5 7c 11 74 16 30    	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm14
  aa6ae2:	c4 63 7d 19 e6 01    	vextractf128 xmm6,ymm12,0x1
  aa6ae8:	c5 d0 14 ee          	vunpcklps xmm5,xmm5,xmm6
  aa6aec:	c5 f8 11 6c 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm5
  aa6af2:	c4 63 7d 19 ed 01    	vextractf128 xmm5,ymm13,0x1
  aa6af8:	62 52 6d 28 7f e9    	vpermt2ps ymm13,ymm2,ymm9
  aa6afe:	c5 7c 11 6c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm13
  aa6b04:	c4 63 7d 19 ce 01    	vextractf128 xmm6,ymm9,0x1
  aa6b0a:	c5 d0 14 ee          	vunpcklps xmm5,xmm5,xmm6
  aa6b0e:	c5 f8 11 ac 16 80 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x80],xmm5
  aa6b15:	00 00 
  aa6b17:	c4 63 7d 19 d5 01    	vextractf128 xmm5,ymm10,0x1
  aa6b1d:	62 52 6d 28 7f d7    	vpermt2ps ymm10,ymm2,ymm15
  aa6b23:	c5 7c 11 94 16 90 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm10
  aa6b2a:	00 00 
  aa6b2c:	c4 63 7d 19 fe 01    	vextractf128 xmm6,ymm15,0x1
  aa6b32:	c5 d0 14 ee          	vunpcklps xmm5,xmm5,xmm6
  aa6b36:	c5 f8 11 ac 16 b0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xb0],xmm5
  aa6b3d:	00 00 
  aa6b3f:	c4 63 7d 19 dd 01    	vextractf128 xmm5,ymm11,0x1
  aa6b45:	62 72 6d 28 7f dc    	vpermt2ps ymm11,ymm2,ymm4
  aa6b4b:	c5 7c 11 9c 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm11
  aa6b52:	00 00 
  aa6b54:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  aa6b5a:	c5 d0 14 e4          	vunpcklps xmm4,xmm5,xmm4
  aa6b5e:	c5 f8 11 a4 16 e0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xe0],xmm4
  aa6b65:	00 00 
  aa6b67:	c4 e3 7d 19 fc 01    	vextractf128 xmm4,ymm7,0x1
  aa6b6d:	62 f2 6d 28 7f fb    	vpermt2ps ymm7,ymm2,ymm3
  aa6b73:	c5 fc 11 bc 16 f0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm7
  aa6b7a:	00 00 
  aa6b7c:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  aa6b82:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  aa6b86:	c5 f8 11 9c 16 10 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x110],xmm3
  aa6b8d:	00 00 
  aa6b8f:	48 81 c2 20 01 00 00 	add    rdx,0x120
  aa6b96:	48 39 d0             	cmp    rax,rdx
  aa6b99:	0f 85 91 fa ff ff    	jne    aa6630 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  aa6b9f:	c5 f8 77             	vzeroupper
  aa6ba2:	c3                   	ret
