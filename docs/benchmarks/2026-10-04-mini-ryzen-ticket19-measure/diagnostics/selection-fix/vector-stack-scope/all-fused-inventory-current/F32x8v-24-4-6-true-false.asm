
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b0a6c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b0a6c0:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  b0a6c4:	c5 f8 10 4f 20       	vmovups xmm1,XMMWORD PTR [rdi+0x20]
  b0a6c9:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  b0a6ce:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  b0a6d4:	c5 fc 10 5f 60       	vmovups ymm3,YMMWORD PTR [rdi+0x60]
  b0a6d9:	c5 f8 10 af 80 00 00 	vmovups xmm5,XMMWORD PTR [rdi+0x80]
  b0a6e0:	00 
  b0a6e1:	c5 e4 c6 e5 88       	vshufps ymm4,ymm3,ymm5,0x88
  b0a6e6:	c4 e3 fd 01 f4 d8    	vpermpd ymm6,ymm4,0xd8
  b0a6ec:	c5 ec 5c fe          	vsubps ymm7,ymm2,ymm6
  b0a6f0:	c5 7c 10 87 90 00 00 	vmovups ymm8,YMMWORD PTR [rdi+0x90]
  b0a6f7:	00 
  b0a6f8:	c5 78 10 8f b0 00 00 	vmovups xmm9,XMMWORD PTR [rdi+0xb0]
  b0a6ff:	00 
  b0a700:	c4 c1 3c c6 e1 dd    	vshufps ymm4,ymm8,ymm9,0xdd
  b0a706:	c4 63 fd 01 d4 d8    	vpermpd ymm10,ymm4,0xd8
  b0a70c:	c5 7c 10 5f 30       	vmovups ymm11,YMMWORD PTR [rdi+0x30]
  b0a711:	c5 78 10 67 50       	vmovups xmm12,XMMWORD PTR [rdi+0x50]
  b0a716:	c4 c1 24 c6 e4 dd    	vshufps ymm4,ymm11,ymm12,0xdd
  b0a71c:	c4 63 fd 01 ec d8    	vpermpd ymm13,ymm4,0xd8
  b0a722:	c4 41 2c 5c f5       	vsubps ymm14,ymm10,ymm13
  b0a727:	c4 c1 44 5c e6       	vsubps ymm4,ymm7,ymm14
  b0a72c:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b0a731:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b0a737:	c5 e4 c6 cd dd       	vshufps ymm1,ymm3,ymm5,0xdd
  b0a73c:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  b0a742:	c5 fc 5c d9          	vsubps ymm3,ymm0,ymm1
  b0a746:	c4 c1 24 c6 ec 88    	vshufps ymm5,ymm11,ymm12,0x88
  b0a74c:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  b0a752:	c4 41 3c c6 c1 88    	vshufps ymm8,ymm8,ymm9,0x88
  b0a758:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b0a75e:	c4 41 54 5c c8       	vsubps ymm9,ymm5,ymm8
  b0a763:	c4 41 64 5c d9       	vsubps ymm11,ymm3,ymm9
  b0a768:	c5 ec 58 d6          	vaddps ymm2,ymm2,ymm6
  b0a76c:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  b0a770:	c5 6c 5c c5          	vsubps ymm8,ymm2,ymm5
  b0a774:	c5 fc 58 c1          	vaddps ymm0,ymm0,ymm1
  b0a778:	c4 c1 14 58 ca       	vaddps ymm1,ymm13,ymm10
  b0a77d:	c5 fc 5c f1          	vsubps ymm6,ymm0,ymm1
  b0a781:	c5 8c 58 ff          	vaddps ymm7,ymm14,ymm7
  b0a785:	c5 b4 58 db          	vaddps ymm3,ymm9,ymm3
  b0a789:	c5 6c 58 cd          	vaddps ymm9,ymm2,ymm5
  b0a78d:	c5 fc 58 c1          	vaddps ymm0,ymm0,ymm1
  b0a791:	c5 f8 28 c8          	vmovaps xmm1,xmm0
  b0a795:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b0a79b:	c5 f8 28 d3          	vmovaps xmm2,xmm3
  b0a79f:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b0a7a5:	c5 f8 28 ee          	vmovaps xmm5,xmm6
  b0a7a9:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  b0a7af:	c5 7d 14 d6          	vunpcklpd ymm10,ymm0,ymm6
  b0a7b3:	c5 78 29 d8          	vmovaps xmm0,xmm11
  b0a7b7:	c4 63 7d 19 de 01    	vextractf128 xmm6,ymm11,0x1
  b0a7bd:	c5 e5 14 de          	vunpcklpd ymm3,ymm3,ymm6
  b0a7c1:	c5 f5 15 f5          	vunpckhpd ymm6,ymm1,ymm5
  b0a7c5:	c5 f5 14 cd          	vunpcklpd ymm1,ymm1,ymm5
  b0a7c9:	c5 6d 15 d8          	vunpckhpd ymm11,ymm2,ymm0
  b0a7cd:	c5 ed 14 d0          	vunpcklpd ymm2,ymm2,ymm0
  b0a7d1:	c5 f4 c6 c2 88       	vshufps ymm0,ymm1,ymm2,0x88
  b0a7d6:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b0a7db:	c5 f4 c6 ca dd       	vshufps ymm1,ymm1,ymm2,0xdd
  b0a7e0:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  b0a7e5:	c4 c1 4c c6 d3 88    	vshufps ymm2,ymm6,ymm11,0x88
  b0a7eb:	c5 ec c6 ea d8       	vshufps ymm5,ymm2,ymm2,0xd8
  b0a7f0:	c4 c1 4c c6 d3 dd    	vshufps ymm2,ymm6,ymm11,0xdd
  b0a7f6:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b0a7fb:	c5 ac c6 f3 88       	vshufps ymm6,ymm10,ymm3,0x88
  b0a800:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  b0a805:	c5 ac c6 db dd       	vshufps ymm3,ymm10,ymm3,0xdd
  b0a80a:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b0a80f:	c4 41 78 28 d1       	vmovaps xmm10,xmm9
  b0a814:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  b0a81a:	c5 78 28 df          	vmovaps xmm11,xmm7
  b0a81e:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  b0a824:	c4 41 78 28 e0       	vmovaps xmm12,xmm8
  b0a829:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  b0a82f:	c4 41 35 14 c0       	vunpcklpd ymm8,ymm9,ymm8
  b0a834:	c5 78 28 cc          	vmovaps xmm9,xmm4
  b0a838:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  b0a83e:	c5 c5 14 fc          	vunpcklpd ymm7,ymm7,ymm4
  b0a842:	c4 41 2d 15 ec       	vunpckhpd ymm13,ymm10,ymm12
  b0a847:	c4 41 2d 14 d4       	vunpcklpd ymm10,ymm10,ymm12
  b0a84c:	c4 41 25 15 e1       	vunpckhpd ymm12,ymm11,ymm9
  b0a851:	c4 41 25 14 c9       	vunpcklpd ymm9,ymm11,ymm9
  b0a856:	c4 c1 2c c6 e1 88    	vshufps ymm4,ymm10,ymm9,0x88
  b0a85c:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b0a861:	c4 41 2c c6 c9 dd    	vshufps ymm9,ymm10,ymm9,0xdd
  b0a867:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  b0a86d:	c4 41 14 c6 d4 88    	vshufps ymm10,ymm13,ymm12,0x88
  b0a873:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  b0a879:	c4 41 14 c6 dc dd    	vshufps ymm11,ymm13,ymm12,0xdd
  b0a87f:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  b0a885:	c5 3c c6 e7 88       	vshufps ymm12,ymm8,ymm7,0x88
  b0a88a:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  b0a890:	c5 bc c6 ff dd       	vshufps ymm7,ymm8,ymm7,0xdd
  b0a895:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b0a89a:	c5 7c 10 42 40       	vmovups ymm8,YMMWORD PTR [rdx+0x40]
  b0a89f:	c5 7c 10 6a 60       	vmovups ymm13,YMMWORD PTR [rdx+0x60]
  b0a8a4:	c5 7c 10 b2 80 00 00 	vmovups ymm14,YMMWORD PTR [rdx+0x80]
  b0a8ab:	00 
  b0a8ac:	c5 7c 10 ba a0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xa0]
  b0a8b3:	00 
  b0a8b4:	62 e1 7c 28 10 42 06 	vmovups ymm16,YMMWORD PTR [rdx+0xc0]
  b0a8bb:	62 e1 7c 28 10 4a 07 	vmovups ymm17,YMMWORD PTR [rdx+0xe0]
  b0a8c2:	62 e1 7c 28 10 52 08 	vmovups ymm18,YMMWORD PTR [rdx+0x100]
  b0a8c9:	62 e1 7c 28 10 5a 09 	vmovups ymm19,YMMWORD PTR [rdx+0x120]
  b0a8d0:	62 e1 7c 28 10 62 0a 	vmovups ymm20,YMMWORD PTR [rdx+0x140]
  b0a8d7:	62 e1 7c 28 10 6a 0b 	vmovups ymm21,YMMWORD PTR [rdx+0x160]
  b0a8de:	62 c1 54 28 59 f6    	vmulps ymm22,ymm5,ymm14
  b0a8e4:	62 c2 2d 28 bc f7    	vfnmadd231ps ymm22,ymm10,ymm15
  b0a8ea:	62 a1 4c 28 59 fa    	vmulps ymm23,ymm6,ymm18
  b0a8f0:	62 a2 1d 28 bc fb    	vfnmadd231ps ymm23,ymm12,ymm19
  b0a8f6:	62 21 4c 20 58 c7    	vaddps ymm24,ymm22,ymm23
  b0a8fc:	62 01 7c 28 58 c8    	vaddps ymm25,ymm0,ymm24
  b0a902:	62 21 6c 28 59 d0    	vmulps ymm26,ymm2,ymm16
  b0a908:	62 22 25 28 bc d1    	vfnmadd231ps ymm26,ymm11,ymm17
  b0a90e:	62 21 64 28 59 dc    	vmulps ymm27,ymm3,ymm20
  b0a914:	62 22 45 28 bc dd    	vfnmadd231ps ymm27,ymm7,ymm21
  b0a91a:	62 41 74 28 59 e0    	vmulps ymm28,ymm1,ymm8
  b0a920:	62 42 35 28 bc e5    	vfnmadd231ps ymm28,ymm9,ymm13
  b0a926:	62 01 24 20 58 ec    	vaddps ymm29,ymm27,ymm28
  b0a92c:	62 01 2c 20 58 f5    	vaddps ymm30,ymm26,ymm29
  b0a932:	c4 41 2c 59 d6       	vmulps ymm10,ymm10,ymm14
  b0a937:	c4 42 55 b8 d7       	vfmadd231ps ymm10,ymm5,ymm15
  b0a93c:	62 31 1c 28 59 e2    	vmulps ymm12,ymm12,ymm18
  b0a942:	62 32 4d 28 b8 e3    	vfmadd231ps ymm12,ymm6,ymm19
  b0a948:	c4 c1 2c 58 f4       	vaddps ymm6,ymm10,ymm12
  b0a94d:	c5 cc 58 ec          	vaddps ymm5,ymm6,ymm4
  b0a951:	62 31 24 28 59 d8    	vmulps ymm11,ymm11,ymm16
  b0a957:	62 32 6d 28 b8 d9    	vfmadd231ps ymm11,ymm2,ymm17
  b0a95d:	62 b1 44 28 59 d4    	vmulps ymm2,ymm7,ymm20
  b0a963:	62 b2 65 28 b8 d5    	vfmadd231ps ymm2,ymm3,ymm21
  b0a969:	c4 c1 34 59 d8       	vmulps ymm3,ymm9,ymm8
  b0a96e:	c4 c2 75 b8 dd       	vfmadd231ps ymm3,ymm1,ymm13
  b0a973:	c5 ec 58 cb          	vaddps ymm1,ymm2,ymm3
  b0a977:	c4 e2 7d 18 3d e0 aa 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff56aae0]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b0a97e:	56 ff 
  b0a980:	c5 24 58 c1          	vaddps ymm8,ymm11,ymm1
  b0a984:	62 62 45 28 ac c0    	vfnmadd213ps ymm24,ymm7,ymm0
  b0a98a:	c4 e2 7d 18 05 41 a9 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff56a941]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b0a991:	56 ff 
  b0a993:	c4 41 2c 5c cc       	vsubps ymm9,ymm10,ymm12
  b0a998:	c5 34 59 c8          	vmulps ymm9,ymm9,ymm0
  b0a99c:	62 51 3c 20 58 d1    	vaddps ymm10,ymm24,ymm9
  b0a9a2:	62 02 45 28 bc d5    	vfnmadd231ps ymm26,ymm7,ymm29
  b0a9a8:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  b0a9ac:	c5 ec 59 d0          	vmulps ymm2,ymm2,ymm0
  b0a9b0:	62 f1 2c 20 58 da    	vaddps ymm3,ymm26,ymm2
  b0a9b6:	c5 2c 5c e3          	vsubps ymm12,ymm10,ymm3
  b0a9ba:	c4 e2 45 ac f4       	vfnmadd213ps ymm6,ymm7,ymm4
  b0a9bf:	62 b1 4c 20 5c e7    	vsubps ymm4,ymm22,ymm23
  b0a9c5:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  b0a9c9:	c5 4c 5c ec          	vsubps ymm13,ymm6,ymm4
  b0a9cd:	c4 62 75 bc df       	vfnmadd231ps ymm11,ymm1,ymm7
  b0a9d2:	62 91 24 20 5c cc    	vsubps ymm1,ymm27,ymm28
  b0a9d8:	c5 f4 59 c0          	vmulps ymm0,ymm1,ymm0
  b0a9dc:	c5 a4 5c c8          	vsubps ymm1,ymm11,ymm0
  b0a9e0:	62 d1 3c 20 5c f9    	vsubps ymm7,ymm24,ymm9
  b0a9e6:	62 f1 2c 20 5c d2    	vsubps ymm2,ymm26,ymm2
  b0a9ec:	c5 44 58 ca          	vaddps ymm9,ymm7,ymm2
  b0a9f0:	c5 dc 58 e6          	vaddps ymm4,ymm4,ymm6
  b0a9f4:	c5 a4 58 c0          	vaddps ymm0,ymm11,ymm0
  b0a9f8:	62 91 34 20 5c f6    	vsubps ymm6,ymm25,ymm30
  b0a9fe:	c5 ac 58 db          	vaddps ymm3,ymm10,ymm3
  b0aa02:	c5 c4 5c d2          	vsubps ymm2,ymm7,ymm2
  b0aa06:	62 91 34 20 58 fe    	vaddps ymm7,ymm25,ymm30
  b0aa0c:	c5 38 58 d5          	vaddps xmm10,xmm8,xmm5
  b0aa10:	c5 7c 28 1d c8 c7 56 	vmovaps ymm11,YMMWORD PTR [rip+0xffffffffff56c7c8]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b0aa17:	ff 
  b0aa18:	62 72 25 28 7f d7    	vpermt2ps ymm10,ymm11,ymm7
  b0aa1e:	c5 7c 11 16          	vmovups YMMWORD PTR [rsi],ymm10
  b0aa22:	c5 90 5c f9          	vsubps xmm7,xmm13,xmm1
  b0aa26:	62 d2 25 28 7f fc    	vpermt2ps ymm7,ymm11,ymm12
  b0aa2c:	c5 fc 11 7e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm7
  b0aa31:	c5 d8 58 f8          	vaddps xmm7,xmm4,xmm0
  b0aa35:	62 d2 25 28 7f f9    	vpermt2ps ymm7,ymm11,ymm9
  b0aa3b:	c5 fc 11 7e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm7
  b0aa40:	c4 c1 50 5c e8       	vsubps xmm5,xmm5,xmm8
  b0aa45:	62 f2 25 28 7f ee    	vpermt2ps ymm5,ymm11,ymm6
  b0aa4b:	c5 fc 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm5
  b0aa50:	c5 90 58 c9          	vaddps xmm1,xmm13,xmm1
  b0aa54:	62 f2 25 28 7f cb    	vpermt2ps ymm1,ymm11,ymm3
  b0aa5a:	c5 fc 11 8e 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm1
  b0aa61:	00 
  b0aa62:	c5 d8 5c c0          	vsubps xmm0,xmm4,xmm0
  b0aa66:	62 f2 25 28 7f c2    	vpermt2ps ymm0,ymm11,ymm2
  b0aa6c:	c5 fc 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm0
  b0aa73:	00 
  b0aa74:	c5 f8 77             	vzeroupper
  b0aa77:	c3                   	ret
