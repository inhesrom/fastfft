
target/ticket19/selection-fix/canonical-storage/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000af0740 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  af0740:	48 81 ec 88 00 00 00 	sub    rsp,0x88
  af0747:	48 c1 e2 07          	shl    rdx,0x7
  af074b:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  af074f:	31 d2                	xor    edx,edx
  af0751:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  af0758:	0f 1f 84 00 00 00 00 
  af075f:	00 
  af0760:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  af0765:	c5 fc 10 4c 17 20    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x20]
  af076b:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  af0770:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  af0776:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  af077b:	c4 e3 fd 01 c8 d8    	vpermpd ymm1,ymm0,0xd8
  af0781:	c5 fc 10 44 17 50    	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x50]
  af0787:	c5 fc 10 5c 17 70    	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x70]
  af078d:	c5 fc c6 e3 88       	vshufps ymm4,ymm0,ymm3,0x88
  af0792:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  af0798:	c5 fc c6 c3 dd       	vshufps ymm0,ymm0,ymm3,0xdd
  af079d:	c4 e3 fd 01 d8 d8    	vpermpd ymm3,ymm0,0xd8
  af07a3:	c5 fc 10 84 17 a0 00 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0xa0]
  af07aa:	00 00 
  af07ac:	c5 fc 10 ac 17 c0 00 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0xc0]
  af07b3:	00 00 
  af07b5:	c5 fc c6 f5 88       	vshufps ymm6,ymm0,ymm5,0x88
  af07ba:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  af07c0:	c5 fc c6 c5 dd       	vshufps ymm0,ymm0,ymm5,0xdd
  af07c5:	c4 e3 fd 01 e8 d8    	vpermpd ymm5,ymm0,0xd8
  af07cb:	c5 fc 10 84 17 f0 00 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0xf0]
  af07d2:	00 00 
  af07d4:	c5 7c 10 84 17 10 01 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x110]
  af07db:	00 00 
  af07dd:	c4 41 7c c6 c8 88    	vshufps ymm9,ymm0,ymm8,0x88
  af07e3:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  af07e9:	c4 c1 7c c6 c0 dd    	vshufps ymm0,ymm0,ymm8,0xdd
  af07ef:	c4 63 fd 01 c0 d8    	vpermpd ymm8,ymm0,0xd8
  af07f5:	c5 fc 10 84 17 40 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x140]
  af07fc:	00 00 
  af07fe:	c5 7c 10 94 17 60 01 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x160]
  af0805:	00 00 
  af0807:	c4 41 7c c6 da 88    	vshufps ymm11,ymm0,ymm10,0x88
  af080d:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  af0813:	c4 c1 7c c6 c2 dd    	vshufps ymm0,ymm0,ymm10,0xdd
  af0819:	c4 63 fd 01 d0 d8    	vpermpd ymm10,ymm0,0xd8
  af081f:	c5 fc 10 84 17 90 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x190]
  af0826:	00 00 
  af0828:	c5 7c 10 a4 17 b0 01 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x1b0]
  af082f:	00 00 
  af0831:	c4 41 7c c6 ec 88    	vshufps ymm13,ymm0,ymm12,0x88
  af0837:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  af083d:	c4 c1 7c c6 c4 dd    	vshufps ymm0,ymm0,ymm12,0xdd
  af0843:	c4 63 fd 01 e0 d8    	vpermpd ymm12,ymm0,0xd8
  af0849:	c5 fc 10 84 17 e0 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x1e0]
  af0850:	00 00 
  af0852:	c5 7c 10 b4 17 00 02 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x200]
  af0859:	00 00 
  af085b:	c4 41 7c c6 fe 88    	vshufps ymm15,ymm0,ymm14,0x88
  af0861:	c4 43 fd 01 ff d8    	vpermpd ymm15,ymm15,0xd8
  af0867:	c4 c1 7c c6 c6 dd    	vshufps ymm0,ymm0,ymm14,0xdd
  af086d:	c4 63 fd 01 f0 d8    	vpermpd ymm14,ymm0,0xd8
  af0873:	c5 fc 10 84 17 30 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x230]
  af087a:	00 00 
  af087c:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x250]
  af0883:	50 02 00 00 
  af0887:	62 a1 7c 28 c6 c8 88 	vshufps ymm17,ymm0,ymm16,0x88
  af088e:	62 a3 fd 28 01 c9 d8 	vpermpd ymm17,ymm17,0xd8
  af0895:	62 b1 7c 28 c6 c0 dd 	vshufps ymm0,ymm0,ymm16,0xdd
  af089c:	62 e3 fd 28 01 c0 d8 	vpermpd ymm16,ymm0,0xd8
  af08a3:	62 c1 6c 28 58 d3    	vaddps ymm18,ymm2,ymm11
  af08a9:	62 c1 4c 28 58 df    	vaddps ymm19,ymm6,ymm15
  af08af:	62 a1 6c 20 58 e3    	vaddps ymm20,ymm18,ymm19
  af08b5:	62 c1 5c 28 58 ed    	vaddps ymm21,ymm4,ymm13
  af08bb:	62 a1 34 28 58 f1    	vaddps ymm22,ymm9,ymm17
  af08c1:	62 a1 54 20 58 fe    	vaddps ymm23,ymm21,ymm22
  af08c7:	62 21 5c 20 58 c7    	vaddps ymm24,ymm20,ymm23
  af08cd:	62 41 74 28 58 ca    	vaddps ymm25,ymm1,ymm10
  af08d3:	62 41 54 28 58 d6    	vaddps ymm26,ymm5,ymm14
  af08d9:	62 01 34 20 58 da    	vaddps ymm27,ymm25,ymm26
  af08df:	62 41 64 28 58 e4    	vaddps ymm28,ymm3,ymm12
  af08e5:	62 21 3c 28 58 e8    	vaddps ymm29,ymm8,ymm16
  af08eb:	62 01 1c 20 58 f5    	vaddps ymm30,ymm28,ymm29
  af08f1:	62 91 24 20 58 c6    	vaddps ymm0,ymm27,ymm30
  af08f7:	c4 c1 6c 5c d3       	vsubps ymm2,ymm2,ymm11
  af08fc:	c4 c1 54 5c ee       	vsubps ymm5,ymm5,ymm14
  af0901:	c5 6c 58 dd          	vaddps ymm11,ymm2,ymm5
  af0905:	c4 c1 5c 5c e5       	vsubps ymm4,ymm4,ymm13
  af090a:	c4 c1 64 5c dc       	vsubps ymm3,ymm3,ymm12
  af090f:	c5 5c 58 e3          	vaddps ymm12,ymm4,ymm3
  af0913:	c4 e2 7d 18 3d 20 49 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff584920]        # 7523c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  af091a:	58 ff 
  af091c:	c5 1c 59 e7          	vmulps ymm12,ymm12,ymm7
  af0920:	62 31 3c 28 5c c0    	vsubps ymm8,ymm8,ymm16
  af0926:	62 31 34 28 5c c9    	vsubps ymm9,ymm9,ymm17
  af092c:	c4 41 3c 5c e9       	vsubps ymm13,ymm8,ymm9
  af0931:	c5 14 59 ef          	vmulps ymm13,ymm13,ymm7
  af0935:	c4 41 1c 58 f5       	vaddps ymm14,ymm12,ymm13
  af093a:	62 c1 24 28 58 c6    	vaddps ymm16,ymm11,ymm14
  af0940:	c4 c1 74 5c ca       	vsubps ymm1,ymm1,ymm10
  af0945:	c5 84 5c f6          	vsubps ymm6,ymm15,ymm6
  af0949:	c5 4c 58 d1          	vaddps ymm10,ymm6,ymm1
  af094d:	c5 e4 5c dc          	vsubps ymm3,ymm3,ymm4
  af0951:	c5 e4 59 df          	vmulps ymm3,ymm3,ymm7
  af0955:	c4 c1 34 58 e0       	vaddps ymm4,ymm9,ymm8
  af095a:	c5 dc 59 e7          	vmulps ymm4,ymm4,ymm7
  af095e:	c5 64 5c c4          	vsubps ymm8,ymm3,ymm4
  af0962:	c4 41 2c 58 f8       	vaddps ymm15,ymm10,ymm8
  af0967:	62 31 6c 20 5c cb    	vsubps ymm9,ymm18,ymm19
  af096d:	62 81 1c 20 5c cd    	vsubps ymm17,ymm28,ymm29
  af0973:	62 a1 34 28 58 d1    	vaddps ymm18,ymm9,ymm17
  af0979:	62 81 34 20 5c da    	vsubps ymm19,ymm25,ymm26
  af097f:	62 a1 4c 20 5c ed    	vsubps ymm21,ymm22,ymm21
  af0985:	62 a1 54 20 58 f3    	vaddps ymm22,ymm21,ymm19
  af098b:	c5 ec 5c d5          	vsubps ymm2,ymm2,ymm5
  af098f:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  af0993:	c5 ec 58 e3          	vaddps ymm4,ymm2,ymm3
  af0997:	c5 f4 5c ce          	vsubps ymm1,ymm1,ymm6
  af099b:	c4 c1 14 5c ec       	vsubps ymm5,ymm13,ymm12
  af09a0:	c5 f4 58 f5          	vaddps ymm6,ymm1,ymm5
  af09a4:	62 31 5c 20 5c e7    	vsubps ymm12,ymm20,ymm23
  af09aa:	62 11 24 20 5c ee    	vsubps ymm13,ymm27,ymm30
  af09b0:	c4 41 24 5c de       	vsubps ymm11,ymm11,ymm14
  af09b5:	c4 41 2c 5c f0       	vsubps ymm14,ymm10,ymm8
  af09ba:	62 31 34 28 5c c1    	vsubps ymm8,ymm9,ymm17
  af09c0:	62 a1 64 20 5c cd    	vsubps ymm17,ymm19,ymm21
  af09c6:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  af09ca:	c5 f4 5c dd          	vsubps ymm3,ymm1,ymm5
  af09ce:	62 d3 3d 20 18 cc 01 	vinsertf32x4 ymm1,ymm24,xmm12,0x1
  af09d5:	62 d3 bd 20 23 ec 03 	vshuff64x2 ymm5,ymm24,ymm12,0x3
  af09dc:	62 c3 7d 20 18 fb 01 	vinsertf32x4 ymm23,ymm16,xmm11,0x1
  af09e3:	62 53 fd 20 23 cb 03 	vshuff64x2 ymm9,ymm16,ymm11,0x3
  af09ea:	62 43 6d 20 18 c0 01 	vinsertf32x4 ymm24,ymm18,xmm8,0x1
  af09f1:	62 53 ed 20 23 c0 03 	vshuff64x2 ymm8,ymm18,ymm8,0x3
  af09f8:	62 63 5d 28 18 ca 01 	vinsertf32x4 ymm25,ymm4,xmm2,0x1
  af09ff:	c4 e3 5d 06 d2 31    	vperm2f128 ymm2,ymm4,ymm2,0x31
  af0a05:	62 91 f5 28 14 e0    	vunpcklpd ymm4,ymm1,ymm24
  af0a0b:	62 81 c5 20 14 e1    	vunpcklpd ymm20,ymm23,ymm25
  af0a11:	c4 41 55 14 d0       	vunpcklpd ymm10,ymm5,ymm8
  af0a16:	c4 c1 55 15 e8       	vunpckhpd ymm5,ymm5,ymm8
  af0a1b:	c5 35 14 da          	vunpcklpd ymm11,ymm9,ymm2
  af0a1f:	c5 b5 15 d2          	vunpckhpd ymm2,ymm9,ymm2
  af0a23:	62 b1 5c 28 c6 fc dd 	vshufps ymm7,ymm4,ymm20,0xdd
  af0a2a:	c5 fc 11 7c 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm7
  af0a30:	c4 c1 2c c6 fb 88    	vshufps ymm7,ymm10,ymm11,0x88
  af0a36:	c5 fc 11 7c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm7
  af0a3c:	c4 c1 2c c6 fb dd    	vshufps ymm7,ymm10,ymm11,0xdd
  af0a42:	c5 fc 11 7c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm7
  af0a48:	c5 d4 c6 fa 88       	vshufps ymm7,ymm5,ymm2,0x88
  af0a4d:	c5 fc 11 3c 24       	vmovups YMMWORD PTR [rsp],ymm7
  af0a52:	c5 d4 c6 d2 dd       	vshufps ymm2,ymm5,ymm2,0xdd
  af0a57:	c5 fc 11 54 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm2
  af0a5d:	c4 c3 7d 18 d5 01    	vinsertf128 ymm2,ymm0,xmm13,0x1
  af0a63:	c4 c3 7d 06 c5 31    	vperm2f128 ymm0,ymm0,ymm13,0x31
  af0a69:	c4 c3 05 18 ee 01    	vinsertf128 ymm5,ymm15,xmm14,0x1
  af0a6f:	c4 43 05 06 ee 31    	vperm2f128 ymm13,ymm15,ymm14,0x31
  af0a75:	62 a3 4d 20 18 e9 01 	vinsertf32x4 ymm21,ymm22,xmm17,0x1
  af0a7c:	62 33 cd 20 23 f1 03 	vshuff64x2 ymm14,ymm22,ymm17,0x3
  af0a83:	62 e3 4d 28 18 f3 01 	vinsertf32x4 ymm22,ymm6,xmm3,0x1
  af0a8a:	c4 e3 4d 06 db 31    	vperm2f128 ymm3,ymm6,ymm3,0x31
  af0a90:	62 b1 ed 28 14 f5    	vunpcklpd ymm6,ymm2,ymm21
  af0a96:	62 a1 d5 28 14 de    	vunpcklpd ymm19,ymm5,ymm22
  af0a9c:	62 c1 fd 28 14 c6    	vunpcklpd ymm16,ymm0,ymm14
  af0aa2:	c4 c1 7d 15 c6       	vunpckhpd ymm0,ymm0,ymm14
  af0aa7:	62 e1 95 28 14 cb    	vunpcklpd ymm17,ymm13,ymm3
  af0aad:	c5 95 15 db          	vunpckhpd ymm3,ymm13,ymm3
  af0ab1:	62 31 4c 28 c6 f3 dd 	vshufps ymm14,ymm6,ymm19,0xdd
  af0ab8:	62 31 7c 20 c6 f9 88 	vshufps ymm15,ymm16,ymm17,0x88
  af0abf:	62 a1 7c 20 c6 c1 dd 	vshufps ymm16,ymm16,ymm17,0xdd
  af0ac6:	62 e1 7c 28 c6 cb 88 	vshufps ymm17,ymm0,ymm3,0x88
  af0acd:	62 e1 7c 28 c6 d3 dd 	vshufps ymm18,ymm0,ymm3,0xdd
  af0ad4:	62 a1 4c 28 c6 db 88 	vshufps ymm19,ymm6,ymm19,0x88
  af0adb:	62 a1 5c 28 c6 e4 88 	vshufps ymm20,ymm4,ymm20,0x88
  af0ae2:	62 b1 ed 28 15 c5    	vunpckhpd ymm0,ymm2,ymm21
  af0ae8:	62 b1 d5 28 15 d6    	vunpckhpd ymm2,ymm5,ymm22
  af0aee:	62 e1 7c 28 c6 ea dd 	vshufps ymm21,ymm0,ymm2,0xdd
  af0af5:	62 e1 7c 28 c6 f2 88 	vshufps ymm22,ymm0,ymm2,0x88
  af0afc:	62 91 f5 28 15 c0    	vunpckhpd ymm0,ymm1,ymm24
  af0b02:	62 91 c5 20 15 c9    	vunpckhpd ymm1,ymm23,ymm25
  af0b08:	62 e1 7c 28 c6 f9 dd 	vshufps ymm23,ymm0,ymm1,0xdd
  af0b0f:	62 61 7c 28 c6 c1 88 	vshufps ymm24,ymm0,ymm1,0x88
  af0b16:	c5 78 10 44 17 40    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x40]
  af0b1c:	c4 c3 39 21 d0 9c    	vinsertps xmm2,xmm8,xmm8,0x9c
  af0b22:	c5 f8 10 8c 17 90 00 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x90]
  af0b29:	00 00 
  af0b2b:	c4 e3 71 21 d9 9c    	vinsertps xmm3,xmm1,xmm1,0x9c
  af0b31:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  af0b35:	c5 f0 c6 e0 dd       	vshufps xmm4,xmm1,xmm0,0xdd
  af0b3a:	c5 f8 10 8c 17 e0 00 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0xe0]
  af0b41:	00 00 
  af0b43:	c5 f0 c6 e8 dd       	vshufps xmm5,xmm1,xmm0,0xdd
  af0b48:	c5 f8 10 b4 17 30 01 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x130]
  af0b4f:	00 00 
  af0b51:	c5 48 c6 e8 dd       	vshufps xmm13,xmm6,xmm0,0xdd
  af0b56:	62 61 7c 08 10 4c 17 	vmovups xmm25,XMMWORD PTR [rdi+rdx*1+0x180]
  af0b5d:	18 
  af0b5e:	62 03 35 00 21 d1 9c 	vinsertps xmm26,xmm25,xmm25,0x9c
  af0b65:	62 61 7c 08 10 5c 17 	vmovups xmm27,XMMWORD PTR [rdi+rdx*1+0x1d0]
  af0b6c:	1d 
  af0b6d:	62 03 25 00 21 e3 9c 	vinsertps xmm28,xmm27,xmm27,0x9c
  af0b74:	62 61 24 00 c6 d8 dd 	vshufps xmm27,xmm27,xmm0,0xdd
  af0b7b:	62 61 7c 08 10 6c 17 	vmovups xmm29,XMMWORD PTR [rdi+rdx*1+0x220]
  af0b82:	22 
  af0b83:	62 61 14 00 c6 f0 dd 	vshufps xmm30,xmm29,xmm0,0xdd
  af0b8a:	62 61 7c 08 10 7c 17 	vmovups xmm31,XMMWORD PTR [rdi+rdx*1+0x270]
  af0b91:	27 
  af0b92:	62 91 6c 28 58 fa    	vaddps ymm7,ymm2,ymm26
  af0b98:	62 91 6c 28 5c d2    	vsubps ymm2,ymm2,ymm26
  af0b9e:	62 01 54 28 58 d6    	vaddps ymm26,ymm5,ymm30
  af0ba4:	62 91 54 28 5c ee    	vsubps ymm5,ymm5,ymm30
  af0baa:	62 01 64 28 58 f4    	vaddps ymm30,ymm3,ymm28
  af0bb0:	62 91 64 28 5c dc    	vsubps ymm3,ymm3,ymm28
  af0bb6:	62 01 5c 28 58 e3    	vaddps ymm28,ymm4,ymm27
  af0bbc:	62 91 5c 28 5c e3    	vsubps ymm4,ymm4,ymm27
  af0bc2:	62 61 04 00 c6 d8 dd 	vshufps xmm27,xmm31,xmm0,0xdd
  af0bc9:	62 11 14 28 58 cb    	vaddps ymm9,ymm13,ymm27
  af0bcf:	62 11 14 28 5c eb    	vsubps ymm13,ymm13,ymm27
  af0bd5:	c4 e3 49 21 f6 9c    	vinsertps xmm6,xmm6,xmm6,0x9c
  af0bdb:	62 03 05 00 21 df 9c 	vinsertps xmm27,xmm31,xmm31,0x9c
  af0be2:	62 01 4c 28 58 fb    	vaddps ymm31,ymm6,ymm27
  af0be8:	62 91 4c 28 5c f3    	vsubps ymm6,ymm6,ymm27
  af0bee:	c5 38 c6 c0 dd       	vshufps xmm8,xmm8,xmm0,0xdd
  af0bf3:	62 61 34 00 c6 c8 dd 	vshufps xmm25,xmm25,xmm0,0xdd
  af0bfa:	62 01 3c 28 58 d9    	vaddps ymm27,ymm8,ymm25
  af0c00:	62 11 3c 28 5c c1    	vsubps ymm8,ymm8,ymm25
  af0c06:	c4 e3 71 21 c9 9c    	vinsertps xmm1,xmm1,xmm1,0x9c
  af0c0c:	62 03 15 00 21 cd 9c 	vinsertps xmm25,xmm29,xmm29,0x9c
  af0c13:	62 01 74 28 58 e9    	vaddps ymm29,ymm1,ymm25
  af0c19:	62 61 34 20 5c c9    	vsubps ymm25,ymm25,ymm1
  af0c1f:	c5 64 58 d4          	vaddps ymm10,ymm3,ymm4
  af0c23:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  af0c27:	c5 94 5c e6          	vsubps ymm4,ymm13,ymm6
  af0c2b:	c5 14 58 ee          	vaddps ymm13,ymm13,ymm6
  af0c2f:	62 91 44 28 58 c5    	vaddps ymm0,ymm7,ymm29
  af0c35:	62 91 44 28 5c fd    	vsubps ymm7,ymm7,ymm29
  af0c3b:	62 41 1c 20 58 e9    	vaddps ymm29,ymm28,ymm9
  af0c41:	62 41 1c 20 5c e1    	vsubps ymm28,ymm28,ymm9
  af0c47:	62 11 24 20 58 ca    	vaddps ymm9,ymm27,ymm26
  af0c4d:	62 11 24 20 5c e2    	vsubps ymm12,ymm27,ymm26
  af0c53:	62 01 0c 20 58 d7    	vaddps ymm26,ymm30,ymm31
  af0c59:	62 01 04 20 5c fe    	vsubps ymm31,ymm31,ymm30
  af0c5f:	62 61 6c 28 58 dd    	vaddps ymm27,ymm2,ymm5
  af0c65:	c5 ec 5c d5          	vsubps ymm2,ymm2,ymm5
  af0c69:	c4 e2 7d 18 35 ca 45 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff5845ca]        # 7523c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  af0c70:	58 ff 
  af0c72:	c5 e4 59 de          	vmulps ymm3,ymm3,ymm6
  af0c76:	c5 94 59 ee          	vmulps ymm5,ymm13,ymm6
  af0c7a:	c5 64 5c ed          	vsubps ymm13,ymm3,ymm5
  af0c7e:	c5 e4 58 cd          	vaddps ymm1,ymm3,ymm5
  af0c82:	62 d1 34 20 58 e8    	vaddps ymm5,ymm25,ymm8
  af0c88:	62 11 3c 28 5c d9    	vsubps ymm11,ymm8,ymm25
  af0c8e:	c5 2c 59 c6          	vmulps ymm8,ymm10,ymm6
  af0c92:	c5 dc 59 e6          	vmulps ymm4,ymm4,ymm6
  af0c96:	c5 3c 58 d4          	vaddps ymm10,ymm8,ymm4
  af0c9a:	c4 c1 5c 5c f0       	vsubps ymm6,ymm4,ymm8
  af0c9f:	62 11 7c 28 58 c2    	vaddps ymm8,ymm0,ymm26
  af0ca5:	62 91 7c 08 5c c2    	vsubps xmm0,xmm0,xmm26
  af0cab:	c4 e3 3d 18 d8 01    	vinsertf128 ymm3,ymm8,xmm0,0x1
  af0cb1:	62 51 24 20 58 c2    	vaddps ymm8,ymm27,ymm10
  af0cb7:	62 51 24 00 5c d2    	vsubps xmm10,xmm27,xmm10
  af0cbd:	c4 c3 3d 18 e2 01    	vinsertf128 ymm4,ymm8,xmm10,0x1
  af0cc3:	62 11 44 28 58 c4    	vaddps ymm8,ymm7,ymm28
  af0cc9:	62 91 44 08 5c fc    	vsubps xmm7,xmm7,xmm28
  af0ccf:	c4 e3 3d 18 c7 01    	vinsertf128 ymm0,ymm8,xmm7,0x1
  af0cd5:	c4 e3 7d 04 7c 24 20 	vpermilps ymm7,YMMWORD PTR [rsp+0x20],0xd8
  af0cdc:	d8 
  af0cdd:	c5 fc 11 7c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm7
  af0ce3:	62 63 7d 28 04 5c 24 	vpermilps ymm27,YMMWORD PTR [rsp-0x40],0xd8
  af0cea:	fe d8 
  af0cec:	c4 e3 7d 04 7c 24 a0 	vpermilps ymm7,YMMWORD PTR [rsp-0x60],0xd8
  af0cf3:	d8 
  af0cf4:	c5 fc 11 7c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm7
  af0cfa:	62 63 7d 28 04 14 24 	vpermilps ymm26,YMMWORD PTR [rsp],0xd8
  af0d01:	d8 
  af0d02:	62 63 7d 28 04 4c 24 	vpermilps ymm25,YMMWORD PTR [rsp-0x80],0xd8
  af0d09:	fc d8 
  af0d0b:	c4 c1 0c c6 fe d8    	vshufps ymm7,ymm14,ymm14,0xd8
  af0d11:	c5 fc 11 7c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm7
  af0d17:	c4 c1 04 c6 ff d8    	vshufps ymm7,ymm15,ymm15,0xd8
  af0d1d:	62 31 7c 20 c6 c0 d8 	vshufps ymm8,ymm16,ymm16,0xd8
  af0d24:	c5 7c 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm8
  af0d2a:	62 21 74 20 c6 e1 d8 	vshufps ymm28,ymm17,ymm17,0xd8
  af0d31:	62 31 6c 20 c6 fa d8 	vshufps ymm15,ymm18,ymm18,0xd8
  af0d38:	62 31 64 20 c6 c3 d8 	vshufps ymm8,ymm19,ymm19,0xd8
  af0d3f:	c5 7c 11 04 24       	vmovups YMMWORD PTR [rsp],ymm8
  af0d44:	62 31 5c 20 c6 c4 d8 	vshufps ymm8,ymm20,ymm20,0xd8
  af0d4b:	c5 7c 11 44 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm8
  af0d51:	62 31 54 20 c6 f5 d8 	vshufps ymm14,ymm21,ymm21,0xd8
  af0d58:	62 21 4c 20 c6 f6 d8 	vshufps ymm30,ymm22,ymm22,0xd8
  af0d5f:	62 a1 44 20 c6 c7 d8 	vshufps ymm16,ymm23,ymm23,0xd8
  af0d66:	62 11 3c 20 c6 c0 d8 	vshufps ymm8,ymm24,ymm24,0xd8
  af0d6d:	c5 e5 14 c0          	vunpcklpd ymm0,ymm3,ymm0
  af0d71:	c5 ec 58 d9          	vaddps ymm3,ymm2,ymm1
  af0d75:	c5 e8 5c c9          	vsubps xmm1,xmm2,xmm1
  af0d79:	62 91 34 28 58 d5    	vaddps ymm2,ymm9,ymm29
  af0d7f:	c4 e3 65 18 c9 01    	vinsertf128 ymm1,ymm3,xmm1,0x1
  af0d85:	c5 94 58 dd          	vaddps ymm3,ymm13,ymm5
  af0d89:	c5 dd 14 c9          	vunpcklpd ymm1,ymm4,ymm1
  af0d8d:	62 d1 04 20 58 e4    	vaddps ymm4,ymm31,ymm12
  af0d93:	62 11 34 08 5c cd    	vsubps xmm9,xmm9,xmm29
  af0d99:	62 e1 24 28 58 d6    	vaddps ymm18,ymm11,ymm6
  af0d9f:	c4 c3 6d 18 d1 01    	vinsertf128 ymm2,ymm2,xmm9,0x1
  af0da5:	c5 7c c6 c9 dd       	vshufps ymm9,ymm0,ymm1,0xdd
  af0daa:	c4 41 34 c6 d1 d8    	vshufps ymm10,ymm9,ymm9,0xd8
  af0db0:	c4 c1 50 5c ed       	vsubps xmm5,xmm5,xmm13
  af0db5:	c4 e3 65 18 dd 01    	vinsertf128 ymm3,ymm3,xmm5,0x1
  af0dbb:	62 91 1c 08 5c ef    	vsubps xmm5,xmm12,xmm31
  af0dc1:	c4 e3 5d 18 e5 01    	vinsertf128 ymm4,ymm4,xmm5,0x1
  af0dc7:	c5 ed 14 d4          	vunpcklpd ymm2,ymm2,ymm4
  af0dcb:	c5 a0 5c e6          	vsubps xmm4,xmm11,xmm6
  af0dcf:	62 f3 6d 20 18 e4 01 	vinsertf32x4 ymm4,ymm18,xmm4,0x1
  af0dd6:	c5 e5 14 dc          	vunpcklpd ymm3,ymm3,ymm4
  af0dda:	c5 ec c6 e3 dd       	vshufps ymm4,ymm2,ymm3,0xdd
  af0ddf:	c5 5c c6 e4 d8       	vshufps ymm12,ymm4,ymm4,0xd8
  af0de4:	c5 ec c6 d3 88       	vshufps ymm2,ymm2,ymm3,0x88
  af0de9:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  af0dee:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  af0df3:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  af0df8:	62 e1 7c 28 10 79 02 	vmovups ymm23,YMMWORD PTR [rcx+0x40]
  af0dff:	c5 7c 10 69 60       	vmovups ymm13,YMMWORD PTR [rcx+0x60]
  af0e04:	c5 fc 10 99 80 00 00 	vmovups ymm3,YMMWORD PTR [rcx+0x80]
  af0e0b:	00 
  af0e0c:	c5 fc 10 a1 a0 00 00 	vmovups ymm4,YMMWORD PTR [rcx+0xa0]
  af0e13:	00 
  af0e14:	c5 fc 10 89 c0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xc0]
  af0e1b:	00 
  af0e1c:	c5 fc 10 b1 e0 00 00 	vmovups ymm6,YMMWORD PTR [rcx+0xe0]
  af0e23:	00 
  af0e24:	c5 fc 10 a9 00 01 00 	vmovups ymm5,YMMWORD PTR [rcx+0x100]
  af0e2b:	00 
  af0e2c:	c5 7c 10 89 20 01 00 	vmovups ymm9,YMMWORD PTR [rcx+0x120]
  af0e33:	00 
  af0e34:	62 e1 24 20 59 f5    	vmulps ymm22,ymm27,ymm5
  af0e3a:	62 c2 45 28 bc f1    	vfnmadd231ps ymm22,ymm7,ymm9
  af0e40:	62 e1 44 28 59 dd    	vmulps ymm19,ymm7,ymm5
  af0e46:	c5 fc 10 a9 80 01 00 	vmovups ymm5,YMMWORD PTR [rcx+0x180]
  af0e4d:	00 
  af0e4e:	62 c2 25 20 b8 d9    	vfmadd231ps ymm19,ymm27,ymm9
  af0e54:	c5 fc 10 b9 a0 01 00 	vmovups ymm7,YMMWORD PTR [rcx+0x1a0]
  af0e5b:	00 
  af0e5c:	62 61 2c 20 59 c5    	vmulps ymm24,ymm26,ymm5
  af0e62:	62 62 1d 20 bc c7    	vfnmadd231ps ymm24,ymm28,ymm7
  af0e68:	62 e1 1c 20 59 e5    	vmulps ymm20,ymm28,ymm5
  af0e6e:	62 e1 7c 28 10 49 0a 	vmovups ymm17,YMMWORD PTR [rcx+0x140]
  af0e75:	62 e2 2d 20 b8 e7    	vfmadd231ps ymm20,ymm26,ymm7
  af0e7b:	62 61 7c 28 10 69 0b 	vmovups ymm29,YMMWORD PTR [rcx+0x160]
  af0e82:	62 61 3c 28 59 d3    	vmulps ymm26,ymm8,ymm3
  af0e88:	62 62 0d 20 bc d4    	vfnmadd231ps ymm26,ymm30,ymm4
  af0e8e:	62 61 0c 20 59 db    	vmulps ymm27,ymm30,ymm3
  af0e94:	c5 fc 10 99 00 02 00 	vmovups ymm3,YMMWORD PTR [rcx+0x200]
  af0e9b:	00 
  af0e9c:	62 62 3d 28 b8 dc    	vfmadd231ps ymm27,ymm8,ymm4
  af0ea2:	c5 fc 10 a1 20 02 00 	vmovups ymm4,YMMWORD PTR [rcx+0x220]
  af0ea9:	00 
  af0eaa:	62 61 7c 28 59 f3    	vmulps ymm30,ymm0,ymm3
  af0eb0:	62 62 6d 28 bc f4    	vfnmadd231ps ymm30,ymm2,ymm4
  af0eb6:	62 61 6c 28 59 fb    	vmulps ymm31,ymm2,ymm3
  af0ebc:	c5 fc 10 99 c0 01 00 	vmovups ymm3,YMMWORD PTR [rcx+0x1c0]
  af0ec3:	00 
  af0ec4:	62 62 7d 28 b8 fc    	vfmadd231ps ymm31,ymm0,ymm4
  af0eca:	c5 fc 10 81 e0 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x1e0]
  af0ed1:	00 
  af0ed2:	c5 84 59 d3          	vmulps ymm2,ymm15,ymm3
  af0ed6:	62 f2 35 20 b8 d0    	vfmadd231ps ymm2,ymm25,ymm0
  af0edc:	62 f1 34 20 59 eb    	vmulps ymm5,ymm25,ymm3
  af0ee2:	62 01 2c 20 5c ce    	vsubps ymm25,ymm26,ymm30
  af0ee8:	c4 e2 05 bc e8       	vfnmadd231ps ymm5,ymm15,ymm0
  af0eed:	62 91 4c 20 5c d8    	vsubps ymm3,ymm22,ymm24
  af0ef3:	c5 8c 59 e1          	vmulps ymm4,ymm14,ymm1
  af0ef7:	62 f2 7d 20 b8 e6    	vfmadd231ps ymm4,ymm16,ymm6
  af0efd:	62 f1 7c 20 59 f9    	vmulps ymm7,ymm16,ymm1
  af0f03:	c5 fc 10 81 60 02 00 	vmovups ymm0,YMMWORD PTR [rcx+0x260]
  af0f0a:	00 
  af0f0b:	c4 e2 0d bc fe       	vfnmadd231ps ymm7,ymm14,ymm6
  af0f10:	c5 fc 10 89 40 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x240]
  af0f17:	00 
  af0f18:	c5 9c 59 f1          	vmulps ymm6,ymm12,ymm1
  af0f1c:	c4 e2 2d b8 f0       	vfmadd231ps ymm6,ymm10,ymm0
  af0f21:	c5 ac 59 c9          	vmulps ymm1,ymm10,ymm1
  af0f25:	c4 62 7d 18 3d ca 46 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff5846ca]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bf8>
  af0f2c:	58 ff 
  af0f2e:	62 c1 64 28 59 ef    	vmulps ymm21,ymm3,ymm15
  af0f34:	62 e2 7d 28 18 15 02 	vbroadcastss ymm18,DWORD PTR [rip+0xffffffffff584302]        # 75240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2840>
  af0f3b:	43 58 ff 
  af0f3e:	62 a2 35 20 b8 ea    	vfmadd231ps ymm21,ymm25,ymm18
  af0f44:	c4 e2 1d bc c8       	vfnmadd231ps ymm1,ymm12,ymm0
  af0f49:	62 31 64 20 58 d4    	vaddps ymm10,ymm19,ymm20
  af0f4f:	c5 7c 11 54 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm10
  af0f55:	c5 7c 10 64 24 80    	vmovups ymm12,YMMWORD PTR [rsp-0x80]
  af0f5b:	62 31 1c 28 59 c7    	vmulps ymm8,ymm12,ymm23
  af0f61:	c5 fc 10 44 24 e0    	vmovups ymm0,YMMWORD PTR [rsp-0x20]
  af0f67:	c4 42 7d b8 c5       	vfmadd231ps ymm8,ymm0,ymm13
  af0f6c:	62 31 7c 28 59 cf    	vmulps ymm9,ymm0,ymm23
  af0f72:	62 91 24 20 58 c7    	vaddps ymm0,ymm27,ymm31
  af0f78:	c5 fc 11 44 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm0
  af0f7e:	c4 42 1d bc cd       	vfnmadd231ps ymm9,ymm12,ymm13
  af0f83:	62 e2 7d 28 18 3d fb 	vbroadcastss ymm23,DWORD PTR [rip+0xffffffffff5845fb]        # 75588 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b88>
  af0f8a:	45 58 ff 
  af0f8d:	62 a1 7c 28 28 c7    	vmovaps ymm16,ymm23
  af0f93:	c5 7c 10 2c 24       	vmovups ymm13,YMMWORD PTR [rsp]
  af0f98:	62 c2 7d 28 a8 c5    	vfmadd213ps ymm16,ymm0,ymm13
  af0f9e:	62 62 7d 28 18 25 3c 	vbroadcastss ymm28,DWORD PTR [rip+0xffffffffff58453c]        # 754e4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2ae4>
  af0fa5:	45 58 ff 
  af0fa8:	62 82 2d 28 bc c4    	vfnmadd231ps ymm16,ymm10,ymm28
  af0fae:	c5 7c 10 74 24 a0    	vmovups ymm14,YMMWORD PTR [rsp-0x60]
  af0fb4:	62 31 0c 28 59 e1    	vmulps ymm12,ymm14,ymm17
  af0fba:	c5 fc 10 44 24 c0    	vmovups ymm0,YMMWORD PTR [rsp-0x40]
  af0fc0:	62 12 7d 28 b8 e5    	vfmadd231ps ymm12,ymm0,ymm29
  af0fc6:	62 a1 7c 28 59 c9    	vmulps ymm17,ymm0,ymm17
  af0fcc:	62 b1 54 20 58 c0    	vaddps ymm0,ymm21,ymm16
  af0fd2:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  af0fd8:	62 82 0d 28 bc cd    	vfnmadd231ps ymm17,ymm14,ymm29
  af0fde:	c5 3c 58 de          	vaddps ymm11,ymm8,ymm6
  af0fe2:	c5 ec 58 c4          	vaddps ymm0,ymm2,ymm4
  af0fe6:	62 11 4c 20 58 d0    	vaddps ymm10,ymm22,ymm24
  af0fec:	c5 7c 11 54 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm10
  af0ff2:	62 c2 7d 28 a8 fc    	vfmadd213ps ymm23,ymm0,ymm12
  af0ff8:	c5 fc 11 44 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm0
  af0ffe:	62 11 7c 28 28 d4    	vmovaps ymm10,ymm28
  af1004:	62 82 25 28 bc fc    	vfnmadd231ps ymm23,ymm11,ymm28
  af100a:	62 11 2c 20 58 f6    	vaddps ymm14,ymm26,ymm30
  af1010:	62 61 54 28 5c d7    	vsubps ymm26,ymm5,ymm7
  af1016:	62 01 24 20 5c df    	vsubps ymm27,ymm27,ymm31
  af101c:	62 41 74 28 5c e1    	vsubps ymm28,ymm1,ymm9
  af1022:	62 21 64 20 5c ec    	vsubps ymm29,ymm19,ymm20
  af1028:	62 c1 1c 20 59 e7    	vmulps ymm20,ymm28,ymm15
  af102e:	62 a2 2d 20 b8 e2    	vfmadd231ps ymm20,ymm26,ymm18
  af1034:	62 c1 74 28 58 f1    	vaddps ymm22,ymm1,ymm9
  af103a:	62 b1 44 20 58 cc    	vaddps ymm1,ymm23,ymm20
  af1040:	c5 fc 11 4c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm1
  af1046:	62 e1 54 28 58 df    	vaddps ymm19,ymm5,ymm7
  af104c:	62 41 14 20 59 c7    	vmulps ymm24,ymm29,ymm15
  af1052:	62 22 25 20 b8 c2    	vfmadd231ps ymm24,ymm27,ymm18
  af1058:	c5 ec 5c ec          	vsubps ymm5,ymm2,ymm4
  af105c:	c4 c1 4c 5c f0       	vsubps ymm6,ymm6,ymm8
  af1061:	c5 84 59 e6          	vmulps ymm4,ymm15,ymm6
  af1065:	62 b2 55 28 b8 e2    	vfmadd231ps ymm4,ymm5,ymm18
  af106b:	62 d1 34 20 59 ff    	vmulps ymm7,ymm25,ymm15
  af1071:	62 f2 6d 20 bc fb    	vfnmadd231ps ymm7,ymm18,ymm3
  af1077:	c5 7c 29 d3          	vmovaps ymm3,ymm10
  af107b:	62 41 7c 28 28 f5    	vmovaps ymm30,ymm13
  af1081:	c5 7c 10 6c 24 e0    	vmovups ymm13,YMMWORD PTR [rsp-0x20]
  af1087:	62 92 15 28 ac de    	vfnmadd213ps ymm3,ymm13,ymm30
  af108d:	62 61 7c 28 10 7c 24 	vmovups ymm31,YMMWORD PTR [rsp+0x60]
  af1094:	03 
  af1095:	c4 e2 7d 18 0d ea 44 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5844ea]        # 75588 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b88>
  af109c:	58 ff 
  af109e:	62 f2 05 20 b8 d9    	vfmadd231ps ymm3,ymm31,ymm1
  af10a4:	c5 c4 58 d3          	vaddps ymm2,ymm7,ymm3
  af10a8:	62 51 2c 20 59 c7    	vmulps ymm8,ymm26,ymm15
  af10ae:	62 12 6d 20 bc c4    	vfnmadd231ps ymm8,ymm18,ymm28
  af10b4:	c4 41 7c 28 ca       	vmovaps ymm9,ymm10
  af10b9:	62 41 7c 28 28 e2    	vmovaps ymm28,ymm10
  af10bf:	c4 42 7d ac cc       	vfnmadd213ps ymm9,ymm0,ymm12
  af10c4:	c4 62 25 b8 c9       	vfmadd231ps ymm9,ymm11,ymm1
  af10c9:	62 41 24 20 59 cf    	vmulps ymm25,ymm27,ymm15
  af10cf:	62 02 6d 20 bc cd    	vfnmadd231ps ymm25,ymm18,ymm29
  af10d5:	62 41 34 28 58 d0    	vaddps ymm26,ymm9,ymm8
  af10db:	c5 84 59 ed          	vmulps ymm5,ymm15,ymm5
  af10df:	62 f2 6d 20 bc ee    	vfnmadd231ps ymm5,ymm18,ymm6
  af10e5:	c5 7c 29 d6          	vmovaps ymm6,ymm10
  af10e9:	c5 7c 10 54 24 20    	vmovups ymm10,YMMWORD PTR [rsp+0x20]
  af10ef:	c4 c2 0d ac f2       	vfnmadd213ps ymm6,ymm14,ymm10
  af10f4:	c5 7c 10 7c 24 80    	vmovups ymm15,YMMWORD PTR [rsp-0x80]
  af10fa:	c4 e2 05 b8 f1       	vfmadd231ps ymm6,ymm15,ymm1
  af10ff:	c5 e4 5c ff          	vsubps ymm7,ymm3,ymm7
  af1103:	62 01 4c 28 5c d9    	vsubps ymm27,ymm6,ymm25
  af1109:	c4 41 34 5c c0       	vsubps ymm8,ymm9,ymm8
  af110e:	62 91 7c 28 28 dc    	vmovaps ymm3,ymm28
  af1114:	62 b2 65 20 ac d9    	vfnmadd213ps ymm3,ymm19,ymm17
  af111a:	62 f2 4d 20 b8 d9    	vfmadd231ps ymm3,ymm22,ymm1
  af1120:	62 91 4c 28 58 f1    	vaddps ymm6,ymm6,ymm25
  af1126:	c5 64 5c cd          	vsubps ymm9,ymm3,ymm5
  af112a:	c5 e4 58 ed          	vaddps ymm5,ymm3,ymm5
  af112e:	c5 fc 28 d9          	vmovaps ymm3,ymm1
  af1132:	c4 c2 0d a8 da       	vfmadd213ps ymm3,ymm14,ymm10
  af1137:	62 01 7c 28 28 cc    	vmovaps ymm25,ymm28
  af113d:	62 92 05 28 bc dc    	vfnmadd231ps ymm3,ymm15,ymm28
  af1143:	62 41 7c 28 28 e7    	vmovaps ymm28,ymm15
  af1149:	62 31 7c 20 5c fd    	vsubps ymm15,ymm16,ymm21
  af114f:	62 81 64 28 5c c0    	vsubps ymm16,ymm3,ymm24
  af1155:	62 a1 44 20 5c e4    	vsubps ymm20,ymm23,ymm20
  af115b:	62 b2 65 20 a8 c9    	vfmadd213ps ymm1,ymm19,ymm17
  af1161:	62 92 4d 20 bc c9    	vfnmadd231ps ymm1,ymm22,ymm25
  af1167:	62 01 64 28 58 c0    	vaddps ymm24,ymm3,ymm24
  af116d:	c5 f4 5c dc          	vsubps ymm3,ymm1,ymm4
  af1171:	c5 f4 58 e4          	vaddps ymm4,ymm1,ymm4
  af1175:	62 11 14 28 58 ee    	vaddps ymm13,ymm13,ymm30
  af117b:	62 51 04 20 58 ed    	vaddps ymm13,ymm31,ymm13
  af1181:	c5 1c 58 64 24 40    	vaddps ymm12,ymm12,YMMWORD PTR [rsp+0x40]
  af1187:	c4 41 1c 58 e3       	vaddps ymm12,ymm12,ymm11
  af118c:	c4 c1 2c 58 c6       	vaddps ymm0,ymm10,ymm14
  af1191:	62 11 7c 28 58 dc    	vaddps ymm11,ymm0,ymm28
  af1197:	62 b1 74 20 58 c3    	vaddps ymm0,ymm17,ymm19
  af119d:	62 31 7c 28 58 f6    	vaddps ymm14,ymm0,ymm22
  af11a3:	c5 7c 10 54 24 c0    	vmovups ymm10,YMMWORD PTR [rsp-0x40]
  af11a9:	c5 fc 10 4c 24 a0    	vmovups ymm1,YMMWORD PTR [rsp-0x60]
  af11af:	c5 ac 5c c1          	vsubps ymm0,ymm10,ymm1
  af11b3:	c5 2c 58 d1          	vaddps ymm10,ymm10,ymm1
  af11b7:	62 f1 7c 20 5c cb    	vsubps ymm1,ymm16,ymm3
  af11bd:	62 e1 7c 20 58 c3    	vaddps ymm16,ymm16,ymm3
  af11c3:	62 91 6c 28 58 da    	vaddps ymm3,ymm2,ymm26
  af11c9:	62 81 6c 28 5c ca    	vsubps ymm17,ymm2,ymm26
  af11cf:	62 d1 24 20 58 d1    	vaddps ymm2,ymm27,ymm9
  af11d5:	62 51 24 20 5c c9    	vsubps ymm9,ymm27,ymm9
  af11db:	62 c1 44 28 5c d0    	vsubps ymm18,ymm7,ymm8
  af11e1:	c5 bc 58 ff          	vaddps ymm7,ymm8,ymm7
  af11e5:	c5 4c 5c c5          	vsubps ymm8,ymm6,ymm5
  af11e9:	c5 cc 58 ed          	vaddps ymm5,ymm6,ymm5
  af11ed:	62 b1 04 28 58 f4    	vaddps ymm6,ymm15,ymm20
  af11f3:	62 31 04 28 5c fc    	vsubps ymm15,ymm15,ymm20
  af11f9:	62 e1 3c 20 58 dc    	vaddps ymm19,ymm24,ymm4
  af11ff:	62 f1 3c 20 5c e4    	vsubps ymm4,ymm24,ymm4
  af1205:	62 c1 14 28 5c e4    	vsubps ymm20,ymm13,ymm12
  af120b:	c4 41 14 58 e4       	vaddps ymm12,ymm13,ymm12
  af1210:	c4 41 24 5c ee       	vsubps ymm13,ymm11,ymm14
  af1215:	c4 41 24 58 de       	vaddps ymm11,ymm11,ymm14
  af121a:	c4 41 7c 28 f3       	vmovaps ymm14,ymm11
  af121f:	62 e1 7c 28 28 2d 17 	vmovaps ymm21,YMMWORD PTR [rip+0xffffffffff584517]        # 75740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d40>
  af1226:	45 58 ff 
  af1229:	62 52 55 20 7f f4    	vpermt2ps ymm14,ymm21,ymm12
  af122f:	62 e1 7c 28 28 35 47 	vmovaps ymm22,YMMWORD PTR [rip+0xffffffffff585e47]        # 77080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4680>
  af1236:	5e 58 ff 
  af1239:	62 52 4d 20 7f dc    	vpermt2ps ymm11,ymm22,ymm12
  af123f:	c5 7c 11 1c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm11
  af1244:	c5 7c 11 74 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm14
  af124a:	c5 7c 28 dc          	vmovaps ymm11,ymm4
  af124e:	62 52 55 20 7f df    	vpermt2ps ymm11,ymm21,ymm15
  af1254:	62 d2 4d 20 7f e7    	vpermt2ps ymm4,ymm22,ymm15
  af125a:	c5 fc 11 64 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm4
  af1260:	c5 7c 11 5c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm11
  af1266:	c5 fc 28 e5          	vmovaps ymm4,ymm5
  af126a:	62 f2 55 20 7f e7    	vpermt2ps ymm4,ymm21,ymm7
  af1270:	62 f2 4d 20 7f ef    	vpermt2ps ymm5,ymm22,ymm7
  af1276:	c5 fc 11 ac 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm5
  af127d:	00 00 
  af127f:	c5 fc 11 a4 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm4
  af1286:	00 00 
  af1288:	c5 7c 29 cc          	vmovaps ymm4,ymm9
  af128c:	62 b2 55 20 7f e1    	vpermt2ps ymm4,ymm21,ymm17
  af1292:	62 32 4d 20 7f c9    	vpermt2ps ymm9,ymm22,ymm17
  af1298:	c5 7c 11 8c 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm9
  af129f:	00 00 
  af12a1:	c5 fc 11 a4 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm4
  af12a8:	00 00 
  af12aa:	62 b1 7c 28 28 e0    	vmovaps ymm4,ymm16
  af12b0:	62 d2 55 20 7f e2    	vpermt2ps ymm4,ymm21,ymm10
  af12b6:	62 c2 4d 20 7f c2    	vpermt2ps ymm16,ymm22,ymm10
  af12bc:	62 e1 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm16
  af12c3:	08 
  af12c4:	c5 fc 11 a4 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm4
  af12cb:	00 00 
  af12cd:	c5 7c 29 ec          	vmovaps ymm4,ymm13
  af12d1:	62 b2 55 20 7f e4    	vpermt2ps ymm4,ymm21,ymm20
  af12d7:	62 32 4d 20 7f ec    	vpermt2ps ymm13,ymm22,ymm20
  af12dd:	c5 7c 11 ac 16 40 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm13
  af12e4:	00 00 
  af12e6:	c5 fc 11 a4 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm4
  af12ed:	00 00 
  af12ef:	62 b1 7c 28 28 e3    	vmovaps ymm4,ymm19
  af12f5:	62 f2 55 20 7f e6    	vpermt2ps ymm4,ymm21,ymm6
  af12fb:	62 e2 4d 20 7f de    	vpermt2ps ymm19,ymm22,ymm6
  af1301:	62 e1 7c 28 11 5c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x180],ymm19
  af1308:	0c 
  af1309:	c5 fc 11 a4 16 a0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a0],ymm4
  af1310:	00 00 
  af1312:	c5 7c 29 c4          	vmovaps ymm4,ymm8
  af1316:	62 b2 55 20 7f e2    	vpermt2ps ymm4,ymm21,ymm18
  af131c:	62 32 4d 20 7f c2    	vpermt2ps ymm8,ymm22,ymm18
  af1322:	c5 7c 11 84 16 c0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm8
  af1329:	00 00 
  af132b:	c5 fc 11 a4 16 e0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1e0],ymm4
  af1332:	00 00 
  af1334:	c5 fc 28 e2          	vmovaps ymm4,ymm2
  af1338:	62 f2 55 20 7f e3    	vpermt2ps ymm4,ymm21,ymm3
  af133e:	62 f2 4d 20 7f d3    	vpermt2ps ymm2,ymm22,ymm3
  af1344:	c5 fc 11 94 16 00 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x200],ymm2
  af134b:	00 00 
  af134d:	c5 fc 11 a4 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm4
  af1354:	00 00 
  af1356:	c5 fc 28 d1          	vmovaps ymm2,ymm1
  af135a:	62 f2 55 20 7f d0    	vpermt2ps ymm2,ymm21,ymm0
  af1360:	62 f2 4d 20 7f c8    	vpermt2ps ymm1,ymm22,ymm0
  af1366:	c5 fc 11 8c 16 40 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x240],ymm1
  af136d:	00 00 
  af136f:	c5 fc 11 94 16 60 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x260],ymm2
  af1376:	00 00 
  af1378:	48 81 c2 80 02 00 00 	add    rdx,0x280
  af137f:	48 39 d0             	cmp    rax,rdx
  af1382:	0f 85 d8 f3 ff ff    	jne    af0760 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x20>
  af1388:	48 81 c4 88 00 00 00 	add    rsp,0x88
  af138f:	c5 f8 77             	vzeroupper
  af1392:	c3                   	ret
  af1393:	cc                   	int3
  af1394:	cc                   	int3
  af1395:	cc                   	int3
  af1396:	cc                   	int3
  af1397:	cc                   	int3
  af1398:	cc                   	int3
  af1399:	cc                   	int3
  af139a:	cc                   	int3
  af139b:	cc                   	int3
  af139c:	cc                   	int3
  af139d:	cc                   	int3
  af139e:	cc                   	int3
  af139f:	cc                   	int3
  af13a0:	cc                   	int3
  af13a1:	cc                   	int3
  af13a2:	cc                   	int3
  af13a3:	cc                   	int3
  af13a4:	cc                   	int3
  af13a5:	cc                   	int3
  af13a6:	cc                   	int3
  af13a7:	cc                   	int3
  af13a8:	cc                   	int3
  af13a9:	cc                   	int3
  af13aa:	cc                   	int3
  af13ab:	cc                   	int3
  af13ac:	cc                   	int3
  af13ad:	cc                   	int3
  af13ae:	cc                   	int3
  af13af:	cc                   	int3
  af13b0:	cc                   	int3
  af13b1:	cc                   	int3
  af13b2:	cc                   	int3
  af13b3:	cc                   	int3
  af13b4:	cc                   	int3
  af13b5:	cc                   	int3
  af13b6:	cc                   	int3
  af13b7:	cc                   	int3
  af13b8:	cc                   	int3
  af13b9:	cc                   	int3
  af13ba:	cc                   	int3
  af13bb:	cc                   	int3
  af13bc:	cc                   	int3
  af13bd:	cc                   	int3
  af13be:	cc                   	int3
  af13bf:	cc                   	int3
