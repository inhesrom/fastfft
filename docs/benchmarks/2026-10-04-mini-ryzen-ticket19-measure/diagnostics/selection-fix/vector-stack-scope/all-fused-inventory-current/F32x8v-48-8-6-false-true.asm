
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000af86c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  af86c0:	48 c1 e2 07          	shl    rdx,0x7
  af86c4:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  af86c8:	31 d2                	xor    edx,edx
  af86ca:	c4 e2 7d 18 05 c9 cc 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff57ccc9]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  af86d1:	57 ff 
  af86d3:	c4 e2 7d 18 0d f8 cb 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff57cbf8]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  af86da:	57 ff 
  af86dc:	c4 e2 7d 18 15 7b cd 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff57cd7b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  af86e3:	57 ff 
  af86e5:	c5 fc 28 1d b3 d1 57 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff57d1b3]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  af86ec:	ff 
  af86ed:	c5 fc 28 25 eb ea 57 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff57eaeb]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  af86f4:	ff 
  af86f5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  af86fc:	00 00 00 00 
  af8700:	c5 7c 10 2c 17       	vmovups ymm13,YMMWORD PTR [rdi+rdx*1]
  af8705:	c5 78 10 7c 17 20    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x20]
  af870b:	c4 c1 14 c6 ef dd    	vshufps ymm5,ymm13,ymm15,0xdd
  af8711:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  af8717:	c5 7c 10 b4 17 c0 00 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0xc0]
  af871e:	00 00 
  af8720:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0xe0]
  af8727:	0e 
  af8728:	62 b1 0c 28 c6 f0 dd 	vshufps ymm6,ymm14,ymm16,0xdd
  af872f:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  af8735:	c5 7c 10 9c 17 20 01 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x120]
  af873c:	00 00 
  af873e:	c5 78 10 a4 17 40 01 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x140]
  af8745:	00 00 
  af8747:	c4 c1 24 c6 fc 88    	vshufps ymm7,ymm11,ymm12,0x88
  af874d:	62 e1 7c 28 10 4c 17 	vmovups ymm17,YMMWORD PTR [rdi+rdx*1+0x60]
  af8754:	03 
  af8755:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x80]
  af875c:	08 
  af875d:	62 31 74 20 c6 ca 88 	vshufps ymm9,ymm17,ymm18,0x88
  af8764:	62 e1 7c 28 10 9c 17 	vmovups ymm19,YMMWORD PTR [rdi+rdx*1+0x90]
  af876b:	90 00 00 00 
  af876f:	62 e1 7c 08 10 64 17 	vmovups xmm20,XMMWORD PTR [rdi+rdx*1+0xb0]
  af8776:	0b 
  af8777:	62 31 64 20 c6 c4 dd 	vshufps ymm8,ymm19,ymm20,0xdd
  af877e:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  af8784:	62 e1 7c 28 10 ac 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1+0x150]
  af878b:	50 01 00 00 
  af878f:	62 e1 7c 08 10 74 17 	vmovups xmm22,XMMWORD PTR [rdi+rdx*1+0x170]
  af8796:	17 
  af8797:	62 31 54 20 c6 d6 dd 	vshufps ymm10,ymm21,ymm22,0xdd
  af879e:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  af87a4:	62 a1 64 20 c6 dc 88 	vshufps ymm19,ymm19,ymm20,0x88
  af87ab:	62 a1 54 20 c6 e6 88 	vshufps ymm20,ymm21,ymm22,0x88
  af87b2:	62 e1 7c 28 10 ac 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1+0x30]
  af87b9:	30 00 00 00 
  af87bd:	62 e1 7c 08 10 74 17 	vmovups xmm22,XMMWORD PTR [rdi+rdx*1+0x50]
  af87c4:	05 
  af87c5:	62 a1 54 20 c6 fe 88 	vshufps ymm23,ymm21,ymm22,0x88
  af87cc:	62 61 7c 28 10 84 17 	vmovups ymm24,YMMWORD PTR [rdi+rdx*1+0xf0]
  af87d3:	f0 00 00 00 
  af87d7:	62 61 7c 08 10 4c 17 	vmovups xmm25,XMMWORD PTR [rdi+rdx*1+0x110]
  af87de:	11 
  af87df:	62 a1 54 20 c6 ee dd 	vshufps ymm21,ymm21,ymm22,0xdd
  af87e6:	62 81 3c 20 c6 f1 88 	vshufps ymm22,ymm24,ymm25,0x88
  af87ed:	62 01 3c 20 c6 c1 dd 	vshufps ymm24,ymm24,ymm25,0xdd
  af87f4:	62 41 3c 28 5c ca    	vsubps ymm25,ymm8,ymm10
  af87fa:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  af8801:	62 a3 fd 28 01 e4 d8 	vpermpd ymm20,ymm20,0xd8
  af8808:	c4 41 14 c6 ef 88    	vshufps ymm13,ymm13,ymm15,0x88
  af880e:	62 31 64 20 5c fc    	vsubps ymm15,ymm19,ymm20
  af8814:	62 a3 fd 28 01 ff d8 	vpermpd ymm23,ymm23,0xd8
  af881b:	62 a3 fd 28 01 f6 d8 	vpermpd ymm22,ymm22,0xd8
  af8822:	62 31 0c 28 c6 f0 88 	vshufps ymm14,ymm14,ymm16,0x88
  af8829:	62 a1 44 20 5c c6    	vsubps ymm16,ymm23,ymm22
  af882f:	62 a3 fd 28 01 ed d8 	vpermpd ymm21,ymm21,0xd8
  af8836:	62 03 fd 28 01 c0 d8 	vpermpd ymm24,ymm24,0xd8
  af883d:	62 a1 74 20 c6 ca dd 	vshufps ymm17,ymm17,ymm18,0xdd
  af8844:	62 81 54 20 5c d0    	vsubps ymm18,ymm21,ymm24
  af884a:	c4 41 24 c6 dc dd    	vshufps ymm11,ymm11,ymm12,0xdd
  af8850:	62 31 7c 20 58 e2    	vaddps ymm12,ymm16,ymm18
  af8856:	62 a1 6c 20 5c c0    	vsubps ymm16,ymm18,ymm16
  af885c:	62 c1 34 20 5c d7    	vsubps ymm18,ymm25,ymm15
  af8862:	62 11 04 28 58 f9    	vaddps ymm15,ymm15,ymm25
  af8868:	62 61 54 28 5c ce    	vsubps ymm25,ymm5,ymm6
  af886e:	62 a3 fd 28 01 c9 d8 	vpermpd ymm17,ymm17,0xd8
  af8875:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  af887b:	c5 d4 58 ee          	vaddps ymm5,ymm5,ymm6
  af887f:	62 d1 74 20 5c f3    	vsubps ymm6,ymm17,ymm11
  af8885:	62 51 74 20 58 db    	vaddps ymm11,ymm17,ymm11
  af888b:	62 a1 64 20 58 cc    	vaddps ymm17,ymm19,ymm20
  af8891:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  af8897:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  af889d:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  af88a3:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  af88a9:	62 a1 44 20 58 de    	vaddps ymm19,ymm23,ymm22
  af88af:	62 c1 14 28 5c e6    	vsubps ymm20,ymm13,ymm14
  af88b5:	c4 41 14 58 ee       	vaddps ymm13,ymm13,ymm14
  af88ba:	c4 41 44 5c f1       	vsubps ymm14,ymm7,ymm9
  af88bf:	c5 b4 58 ff          	vaddps ymm7,ymm9,ymm7
  af88c3:	62 11 54 20 58 c8    	vaddps ymm9,ymm21,ymm24
  af88c9:	c4 41 3c 58 c2       	vaddps ymm8,ymm8,ymm10
  af88ce:	62 51 34 20 5c d6    	vsubps ymm10,ymm25,ymm14
  af88d4:	62 e1 6c 20 59 d0    	vmulps ymm18,ymm18,ymm0
  af88da:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  af88de:	62 e1 7c 20 59 c0    	vmulps ymm16,ymm16,ymm0
  af88e4:	c5 04 59 f8          	vmulps ymm15,ymm15,ymm0
  af88e8:	62 11 0c 28 58 f1    	vaddps ymm14,ymm14,ymm25
  af88ee:	62 c1 7c 20 58 ef    	vaddps ymm21,ymm16,ymm15
  af88f4:	62 51 7c 20 5c ff    	vsubps ymm15,ymm16,ymm15
  af88fa:	62 e1 5c 20 5c c6    	vsubps ymm16,ymm20,ymm6
  af8900:	62 f1 5c 20 58 f6    	vaddps ymm6,ymm20,ymm6
  af8906:	62 c1 6c 20 5c e4    	vsubps ymm20,ymm18,ymm12
  af890c:	62 31 1c 28 58 e2    	vaddps ymm12,ymm12,ymm18
  af8912:	62 c1 54 28 5c d3    	vsubps ymm18,ymm5,ymm11
  af8918:	c5 a4 58 ed          	vaddps ymm5,ymm11,ymm5
  af891c:	c4 41 34 5c d8       	vsubps ymm11,ymm9,ymm8
  af8921:	c4 41 34 58 c0       	vaddps ymm8,ymm9,ymm8
  af8926:	c5 14 5c cf          	vsubps ymm9,ymm13,ymm7
  af892a:	c5 94 58 ff          	vaddps ymm7,ymm13,ymm7
  af892e:	62 31 74 20 5c eb    	vsubps ymm13,ymm17,ymm19
  af8934:	62 a1 64 20 58 c9    	vaddps ymm17,ymm19,ymm17
  af893a:	62 a1 2c 28 5c dc    	vsubps ymm19,ymm10,ymm20
  af8940:	62 a1 2c 28 58 e4    	vaddps ymm20,ymm10,ymm20
  af8946:	62 31 7c 20 5c d5    	vsubps ymm10,ymm16,ymm21
  af894c:	62 a1 7c 20 58 c5    	vaddps ymm16,ymm16,ymm21
  af8952:	62 c1 6c 20 5c ed    	vsubps ymm21,ymm18,ymm13
  af8958:	62 31 14 28 58 ea    	vaddps ymm13,ymm13,ymm18
  af895e:	62 c1 34 28 5c d3    	vsubps ymm18,ymm9,ymm11
  af8964:	c4 41 34 58 cb       	vaddps ymm9,ymm9,ymm11
  af8969:	c4 41 0c 5c df       	vsubps ymm11,ymm14,ymm15
  af896e:	c4 41 0c 58 f7       	vaddps ymm14,ymm14,ymm15
  af8973:	c4 41 4c 5c fc       	vsubps ymm15,ymm6,ymm12
  af8978:	c5 9c 58 f6          	vaddps ymm6,ymm12,ymm6
  af897c:	c4 41 54 5c e0       	vsubps ymm12,ymm5,ymm8
  af8981:	62 c1 54 28 58 f0    	vaddps ymm22,ymm5,ymm8
  af8987:	62 b1 44 28 5c e9    	vsubps ymm5,ymm7,ymm17
  af898d:	62 b1 44 28 58 f9    	vaddps ymm7,ymm7,ymm17
  af8993:	c4 63 45 18 c5 01    	vinsertf128 ymm8,ymm7,xmm5,0x1
  af8999:	c4 e3 45 06 ed 31    	vperm2f128 ymm5,ymm7,ymm5,0x31
  af899f:	c4 c3 4d 18 ff 01    	vinsertf128 ymm7,ymm6,xmm15,0x1
  af89a5:	c4 c3 4d 06 f7 31    	vperm2f128 ymm6,ymm6,ymm15,0x31
  af89ab:	62 33 35 28 18 fa 01 	vinsertf32x4 ymm15,ymm9,xmm18,0x1
  af89b2:	62 33 b5 28 23 ca 03 	vshuff64x2 ymm9,ymm9,ymm18,0x3
  af89b9:	c4 41 55 14 c9       	vunpcklpd ymm9,ymm5,ymm9
  af89be:	62 d3 7d 20 18 ea 01 	vinsertf32x4 ymm5,ymm16,xmm10,0x1
  af89c5:	62 53 fd 20 23 d2 03 	vshuff64x2 ymm10,ymm16,ymm10,0x3
  af89cc:	c4 c1 4d 14 f2       	vunpcklpd ymm6,ymm6,ymm10
  af89d1:	c4 41 3d 15 d7       	vunpckhpd ymm10,ymm8,ymm15
  af89d6:	c4 41 3d 14 c7       	vunpcklpd ymm8,ymm8,ymm15
  af89db:	c5 45 15 fd          	vunpckhpd ymm15,ymm7,ymm5
  af89df:	c5 c5 14 fd          	vunpcklpd ymm7,ymm7,ymm5
  af89e3:	c5 bc c6 ef 88       	vshufps ymm5,ymm8,ymm7,0x88
  af89e8:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  af89ed:	c5 bc c6 ff dd       	vshufps ymm7,ymm8,ymm7,0xdd
  af89f2:	c5 44 c6 c7 d8       	vshufps ymm8,ymm7,ymm7,0xd8
  af89f7:	c4 c1 2c c6 ff 88    	vshufps ymm7,ymm10,ymm15,0x88
  af89fd:	62 e1 44 28 c6 c7 d8 	vshufps ymm16,ymm7,ymm7,0xd8
  af8a04:	c4 c1 2c c6 ff dd    	vshufps ymm7,ymm10,ymm15,0xdd
  af8a0a:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  af8a0f:	c5 34 c6 d6 88       	vshufps ymm10,ymm9,ymm6,0x88
  af8a14:	c4 41 2c c6 fa d8    	vshufps ymm15,ymm10,ymm10,0xd8
  af8a1a:	c5 b4 c6 f6 dd       	vshufps ymm6,ymm9,ymm6,0xdd
  af8a1f:	c5 4c c6 d6 d8       	vshufps ymm10,ymm6,ymm6,0xd8
  af8a24:	62 d3 4d 20 18 f4 01 	vinsertf32x4 ymm6,ymm22,xmm12,0x1
  af8a2b:	62 53 cd 20 23 cc 03 	vshuff64x2 ymm9,ymm22,ymm12,0x3
  af8a32:	c4 43 0d 18 e3 01    	vinsertf128 ymm12,ymm14,xmm11,0x1
  af8a38:	c4 43 0d 06 db 31    	vperm2f128 ymm11,ymm14,ymm11,0x31
  af8a3e:	62 33 15 28 18 f5 01 	vinsertf32x4 ymm14,ymm13,xmm21,0x1
  af8a45:	62 33 95 28 23 ed 03 	vshuff64x2 ymm13,ymm13,ymm21,0x3
  af8a4c:	c4 41 35 14 ed       	vunpcklpd ymm13,ymm9,ymm13
  af8a51:	62 33 5d 20 18 cb 01 	vinsertf32x4 ymm9,ymm20,xmm19,0x1
  af8a58:	62 a3 dd 20 23 cb 03 	vshuff64x2 ymm17,ymm20,ymm19,0x3
  af8a5f:	62 31 a5 28 14 d9    	vunpcklpd ymm11,ymm11,ymm17
  af8a65:	62 c1 cd 28 15 ce    	vunpckhpd ymm17,ymm6,ymm14
  af8a6b:	c4 41 4d 14 f6       	vunpcklpd ymm14,ymm6,ymm14
  af8a70:	62 c1 9d 28 15 d1    	vunpckhpd ymm18,ymm12,ymm9
  af8a76:	c4 41 1d 14 c9       	vunpcklpd ymm9,ymm12,ymm9
  af8a7b:	c4 c1 0c c6 f1 88    	vshufps ymm6,ymm14,ymm9,0x88
  af8a81:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  af8a86:	c4 41 0c c6 c9 dd    	vshufps ymm9,ymm14,ymm9,0xdd
  af8a8c:	c4 41 34 c6 f1 d8    	vshufps ymm14,ymm9,ymm9,0xd8
  af8a92:	62 31 74 20 c6 ca 88 	vshufps ymm9,ymm17,ymm18,0x88
  af8a99:	c4 41 34 c6 e1 d8    	vshufps ymm12,ymm9,ymm9,0xd8
  af8a9f:	62 31 74 20 c6 ca dd 	vshufps ymm9,ymm17,ymm18,0xdd
  af8aa6:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  af8aac:	62 c1 14 28 c6 cb 88 	vshufps ymm17,ymm13,ymm11,0x88
  af8ab3:	62 a1 74 20 c6 c9 d8 	vshufps ymm17,ymm17,ymm17,0xd8
  af8aba:	c4 41 14 c6 db dd    	vshufps ymm11,ymm13,ymm11,0xdd
  af8ac0:	c4 41 24 c6 eb d8    	vshufps ymm13,ymm11,ymm11,0xd8
  af8ac6:	62 e1 7c 28 10 51 02 	vmovups ymm18,YMMWORD PTR [rcx+0x40]
  af8acd:	62 e1 7c 28 10 59 03 	vmovups ymm19,YMMWORD PTR [rcx+0x60]
  af8ad4:	62 e1 7c 28 10 61 04 	vmovups ymm20,YMMWORD PTR [rcx+0x80]
  af8adb:	62 e1 7c 28 10 69 05 	vmovups ymm21,YMMWORD PTR [rcx+0xa0]
  af8ae2:	62 31 7c 20 59 dc    	vmulps ymm11,ymm16,ymm20
  af8ae8:	62 32 1d 28 bc dd    	vfnmadd231ps ymm11,ymm12,ymm21
  af8aee:	62 31 1c 28 59 e4    	vmulps ymm12,ymm12,ymm20
  af8af4:	62 e1 7c 28 10 61 09 	vmovups ymm20,YMMWORD PTR [rcx+0x120]
  af8afb:	62 32 7d 20 b8 e5    	vfmadd231ps ymm12,ymm16,ymm21
  af8b01:	62 e1 7c 28 10 41 08 	vmovups ymm16,YMMWORD PTR [rcx+0x100]
  af8b08:	62 a1 04 28 59 e8    	vmulps ymm21,ymm15,ymm16
  af8b0e:	62 a2 75 20 bc ec    	vfnmadd231ps ymm21,ymm17,ymm20
  af8b14:	62 a1 74 20 59 c0    	vmulps ymm16,ymm17,ymm16
  af8b1a:	62 a2 05 28 b8 c4    	vfmadd231ps ymm16,ymm15,ymm20
  af8b20:	c5 7c 10 b9 60 01 00 	vmovups ymm15,YMMWORD PTR [rcx+0x160]
  af8b27:	00 
  af8b28:	62 e1 7c 28 10 49 0a 	vmovups ymm17,YMMWORD PTR [rcx+0x140]
  af8b2f:	62 a1 14 28 59 e1    	vmulps ymm20,ymm13,ymm17
  af8b35:	62 c2 2d 28 b8 e7    	vfmadd231ps ymm20,ymm10,ymm15
  af8b3b:	62 31 2c 28 59 d1    	vmulps ymm10,ymm10,ymm17
  af8b41:	62 a1 24 28 5c cd    	vsubps ymm17,ymm11,ymm21
  af8b47:	62 e1 74 20 59 c9    	vmulps ymm17,ymm17,ymm1
  af8b4d:	c4 42 15 bc d7       	vfnmadd231ps ymm10,ymm13,ymm15
  af8b52:	62 31 1c 28 58 e8    	vaddps ymm13,ymm12,ymm16
  af8b58:	62 31 0c 28 59 fa    	vmulps ymm15,ymm14,ymm18
  af8b5e:	62 32 3d 28 b8 fb    	vfmadd231ps ymm15,ymm8,ymm19
  af8b64:	62 31 3c 28 59 c2    	vmulps ymm8,ymm8,ymm18
  af8b6a:	62 e1 7c 28 10 51 07 	vmovups ymm18,YMMWORD PTR [rcx+0xe0]
  af8b71:	62 32 0d 28 bc c3    	vfnmadd231ps ymm8,ymm14,ymm19
  af8b77:	c5 7c 10 b1 c0 00 00 	vmovups ymm14,YMMWORD PTR [rcx+0xc0]
  af8b7e:	00 
  af8b7f:	62 c1 34 28 59 de    	vmulps ymm19,ymm9,ymm14
  af8b85:	62 a2 45 28 b8 da    	vfmadd231ps ymm19,ymm7,ymm18
  af8b8b:	c5 8c 59 ff          	vmulps ymm7,ymm14,ymm7
  af8b8f:	c5 7c 28 f2          	vmovaps ymm14,ymm2
  af8b93:	c4 62 15 ac f6       	vfnmadd213ps ymm14,ymm13,ymm6
  af8b98:	62 b2 35 28 bc fa    	vfnmadd231ps ymm7,ymm9,ymm18
  af8b9e:	62 51 74 20 58 ce    	vaddps ymm9,ymm17,ymm14
  af8ba4:	62 c1 5c 20 58 d7    	vaddps ymm18,ymm20,ymm15
  af8baa:	62 31 24 28 58 dd    	vaddps ymm11,ymm11,ymm21
  af8bb0:	62 e1 7c 28 28 ea    	vmovaps ymm21,ymm2
  af8bb6:	62 a2 6d 20 ac eb    	vfnmadd213ps ymm21,ymm18,ymm19
  af8bbc:	62 31 1c 28 5c e0    	vsubps ymm12,ymm12,ymm16
  af8bc2:	62 c1 2c 28 5c c0    	vsubps ymm16,ymm10,ymm8
  af8bc8:	62 e1 7c 20 59 c1    	vmulps ymm16,ymm16,ymm1
  af8bce:	c4 41 2c 58 c0       	vaddps ymm8,ymm10,ymm8
  af8bd3:	62 31 54 20 58 d0    	vaddps ymm10,ymm21,ymm16
  af8bd9:	62 51 5c 20 5c ff    	vsubps ymm15,ymm20,ymm15
  af8bdf:	62 e1 7c 28 28 e2    	vmovaps ymm20,ymm2
  af8be5:	62 e2 25 28 ac e5    	vfnmadd213ps ymm20,ymm11,ymm5
  af8beb:	c5 1c 59 e1          	vmulps ymm12,ymm12,ymm1
  af8bef:	62 31 0c 28 5c f1    	vsubps ymm14,ymm14,ymm17
  af8bf5:	62 c1 5c 20 5c cc    	vsubps ymm17,ymm20,ymm12
  af8bfb:	62 a1 54 20 5c c0    	vsubps ymm16,ymm21,ymm16
  af8c01:	62 e1 7c 28 28 ea    	vmovaps ymm21,ymm2
  af8c07:	62 e2 3d 28 ac ef    	vfnmadd213ps ymm21,ymm8,ymm7
  af8c0d:	c5 04 59 f9          	vmulps ymm15,ymm15,ymm1
  af8c11:	62 51 5c 20 58 e4    	vaddps ymm12,ymm20,ymm12
  af8c17:	62 c1 54 20 5c e7    	vsubps ymm20,ymm21,ymm15
  af8c1d:	62 51 54 20 58 ff    	vaddps ymm15,ymm21,ymm15
  af8c23:	c5 94 58 f6          	vaddps ymm6,ymm13,ymm6
  af8c27:	62 31 64 20 58 ea    	vaddps ymm13,ymm19,ymm18
  af8c2d:	c5 a4 58 ed          	vaddps ymm5,ymm11,ymm5
  af8c31:	c5 bc 58 ff          	vaddps ymm7,ymm8,ymm7
  af8c35:	c4 41 34 5c c2       	vsubps ymm8,ymm9,ymm10
  af8c3a:	c4 41 34 58 ca       	vaddps ymm9,ymm9,ymm10
  af8c3f:	62 31 74 20 5c d4    	vsubps ymm10,ymm17,ymm20
  af8c45:	62 31 74 20 58 dc    	vaddps ymm11,ymm17,ymm20
  af8c4b:	62 a1 0c 28 58 c8    	vaddps ymm17,ymm14,ymm16
  af8c51:	62 31 0c 28 5c f0    	vsubps ymm14,ymm14,ymm16
  af8c57:	62 c1 1c 28 58 c7    	vaddps ymm16,ymm12,ymm15
  af8c5d:	c4 41 1c 5c e7       	vsubps ymm12,ymm12,ymm15
  af8c62:	c4 41 4c 5c fd       	vsubps ymm15,ymm6,ymm13
  af8c67:	c5 94 58 f6          	vaddps ymm6,ymm13,ymm6
  af8c6b:	c5 54 5c ef          	vsubps ymm13,ymm5,ymm7
  af8c6f:	c5 d4 58 ef          	vaddps ymm5,ymm5,ymm7
  af8c73:	c5 fc 28 fd          	vmovaps ymm7,ymm5
  af8c77:	62 f2 65 28 7f fe    	vpermt2ps ymm7,ymm3,ymm6
  af8c7d:	62 f2 5d 28 7f ee    	vpermt2ps ymm5,ymm4,ymm6
  af8c83:	c5 fc 11 2c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm5
  af8c88:	c5 fc 11 7c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm7
  af8c8e:	c5 7c 29 e5          	vmovaps ymm5,ymm12
  af8c92:	62 d2 65 28 7f ee    	vpermt2ps ymm5,ymm3,ymm14
  af8c98:	62 52 5d 28 7f e6    	vpermt2ps ymm12,ymm4,ymm14
  af8c9e:	c5 7c 11 64 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm12
  af8ca4:	c5 fc 11 6c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm5
  af8caa:	c5 7c 29 dd          	vmovaps ymm5,ymm11
  af8cae:	62 d2 65 28 7f e9    	vpermt2ps ymm5,ymm3,ymm9
  af8cb4:	62 52 5d 28 7f d9    	vpermt2ps ymm11,ymm4,ymm9
  af8cba:	c5 7c 11 9c 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm11
  af8cc1:	00 00 
  af8cc3:	c5 fc 11 ac 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm5
  af8cca:	00 00 
  af8ccc:	c5 7c 29 ed          	vmovaps ymm5,ymm13
  af8cd0:	62 d2 65 28 7f ef    	vpermt2ps ymm5,ymm3,ymm15
  af8cd6:	62 52 5d 28 7f ef    	vpermt2ps ymm13,ymm4,ymm15
  af8cdc:	c5 7c 11 ac 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm13
  af8ce3:	00 00 
  af8ce5:	c5 fc 11 ac 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm5
  af8cec:	00 00 
  af8cee:	62 b1 7c 28 28 e8    	vmovaps ymm5,ymm16
  af8cf4:	62 b2 65 28 7f e9    	vpermt2ps ymm5,ymm3,ymm17
  af8cfa:	62 a2 5d 28 7f c1    	vpermt2ps ymm16,ymm4,ymm17
  af8d00:	62 e1 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm16
  af8d07:	08 
  af8d08:	c5 fc 11 ac 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm5
  af8d0f:	00 00 
  af8d11:	c5 7c 29 d5          	vmovaps ymm5,ymm10
  af8d15:	62 d2 65 28 7f e8    	vpermt2ps ymm5,ymm3,ymm8
  af8d1b:	62 52 5d 28 7f d0    	vpermt2ps ymm10,ymm4,ymm8
  af8d21:	c5 7c 11 94 16 40 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm10
  af8d28:	00 00 
  af8d2a:	c5 fc 11 ac 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm5
  af8d31:	00 00 
  af8d33:	48 81 c2 80 01 00 00 	add    rdx,0x180
  af8d3a:	48 39 d0             	cmp    rax,rdx
  af8d3d:	0f 85 bd f9 ff ff    	jne    af8700 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x40>
  af8d43:	c5 f8 77             	vzeroupper
  af8d46:	c3                   	ret
