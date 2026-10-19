
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000afc800 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  afc800:	48 c1 e2 05          	shl    rdx,0x5
  afc804:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  afc808:	31 d2                	xor    edx,edx
  afc80a:	c4 e2 7d 18 05 4d 8c 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff578c4d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  afc811:	57 ff 
  afc813:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  afc817:	c4 e2 7d 18 15 b4 8a 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff578ab4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  afc81e:	57 ff 
  afc820:	c5 fc 28 1d b8 a9 57 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff57a9b8]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  afc827:	ff 
  afc828:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  afc82f:	00 
  afc830:	c5 fb 10 64 17 10    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x10]
  afc836:	c4 e3 7d 18 e4 01    	vinsertf128 ymm4,ymm0,xmm4,0x1
  afc83c:	c4 e3 5d 0c e1 c0    	vblendps ymm4,ymm4,ymm1,0xc0
  afc842:	c5 f8 10 2c 17       	vmovups xmm5,XMMWORD PTR [rdi+rdx*1]
  afc847:	c5 f8 10 74 17 18    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x18]
  afc84d:	c5 f8 10 7c 17 30    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x30]
  afc853:	c5 78 10 44 17 48    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x48]
  afc859:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  afc85f:	c5 50 c6 cc 88       	vshufps xmm9,xmm5,xmm4,0x88
  afc864:	c5 7b 10 54 17 40    	vmovsd xmm10,QWORD PTR [rdi+rdx*1+0x40]
  afc86a:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  afc870:	c4 63 2d 0c d1 c0    	vblendps ymm10,ymm10,ymm1,0xc0
  afc876:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  afc87c:	c4 41 40 c6 da 88    	vshufps xmm11,xmm7,xmm10,0x88
  afc882:	c4 41 34 5c e3       	vsubps ymm12,ymm9,ymm11
  afc887:	c5 7b 10 6c 17 58    	vmovsd xmm13,QWORD PTR [rdi+rdx*1+0x58]
  afc88d:	c4 43 7d 18 ed 01    	vinsertf128 ymm13,ymm0,xmm13,0x1
  afc893:	c4 63 15 0c e9 c0    	vblendps ymm13,ymm13,ymm1,0xc0
  afc899:	c4 43 7d 19 ed 01    	vextractf128 xmm13,ymm13,0x1
  afc89f:	c4 41 38 c6 f5 dd    	vshufps xmm14,xmm8,xmm13,0xdd
  afc8a5:	c5 7b 10 7c 17 28    	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x28]
  afc8ab:	c4 43 7d 18 ff 01    	vinsertf128 ymm15,ymm0,xmm15,0x1
  afc8b1:	c4 63 05 0c f9 c0    	vblendps ymm15,ymm15,ymm1,0xc0
  afc8b7:	c4 43 7d 19 ff 01    	vextractf128 xmm15,ymm15,0x1
  afc8bd:	62 c1 4c 08 c6 c7 dd 	vshufps xmm16,xmm6,xmm15,0xdd
  afc8c4:	62 a1 0c 28 5c c8    	vsubps ymm17,ymm14,ymm16
  afc8ca:	c5 d0 c6 e4 dd       	vshufps xmm4,xmm5,xmm4,0xdd
  afc8cf:	c4 c1 40 c6 ea dd    	vshufps xmm5,xmm7,xmm10,0xdd
  afc8d5:	c5 dc 5c fd          	vsubps ymm7,ymm4,ymm5
  afc8d9:	c4 c1 48 c6 f7 88    	vshufps xmm6,xmm6,xmm15,0x88
  afc8df:	c4 41 38 c6 c5 88    	vshufps xmm8,xmm8,xmm13,0x88
  afc8e5:	c4 41 4c 5c d0       	vsubps ymm10,ymm6,ymm8
  afc8ea:	c4 41 34 58 cb       	vaddps ymm9,ymm9,ymm11
  afc8ef:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  afc8f3:	c5 dc 58 e5          	vaddps ymm4,ymm4,ymm5
  afc8f7:	62 d1 7c 20 58 ee    	vaddps ymm5,ymm16,ymm14
  afc8fd:	c5 58 58 c5          	vaddps xmm8,xmm4,xmm5
  afc901:	c5 28 58 df          	vaddps xmm11,xmm10,xmm7
  afc905:	c5 d8 5c e5          	vsubps xmm4,xmm4,xmm5
  afc909:	c4 c1 40 5c ea       	vsubps xmm5,xmm7,xmm10
  afc90e:	c5 bd 15 fc          	vunpckhpd ymm7,ymm8,ymm4
  afc912:	c5 bd 14 e4          	vunpcklpd ymm4,ymm8,ymm4
  afc916:	c5 25 15 c5          	vunpckhpd ymm8,ymm11,ymm5
  afc91a:	c4 c1 44 c6 f8 88    	vshufps ymm7,ymm7,ymm8,0x88
  afc920:	c5 a5 14 ed          	vunpcklpd ymm5,ymm11,ymm5
  afc924:	c5 5c c6 c5 88       	vshufps ymm8,ymm4,ymm5,0x88
  afc929:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  afc92f:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  afc934:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  afc939:	c5 c4 c6 ef d8       	vshufps ymm5,ymm7,ymm7,0xd8
  afc93e:	c5 b0 58 fe          	vaddps xmm7,xmm9,xmm6
  afc942:	62 51 74 00 58 d4    	vaddps xmm10,xmm17,xmm12
  afc948:	c5 b0 5c f6          	vsubps xmm6,xmm9,xmm6
  afc94c:	62 31 1c 08 5c c9    	vsubps xmm9,xmm12,xmm17
  afc952:	c5 45 15 de          	vunpckhpd ymm11,ymm7,ymm6
  afc956:	c5 c5 14 f6          	vunpcklpd ymm6,ymm7,ymm6
  afc95a:	c4 c1 2d 15 f9       	vunpckhpd ymm7,ymm10,ymm9
  afc95f:	c5 a4 c6 ff 88       	vshufps ymm7,ymm11,ymm7,0x88
  afc964:	c4 41 2d 14 c9       	vunpcklpd ymm9,ymm10,ymm9
  afc969:	c4 41 4c c6 d1 88    	vshufps ymm10,ymm6,ymm9,0x88
  afc96f:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  afc975:	c4 c1 4c c6 f1 dd    	vshufps ymm6,ymm6,ymm9,0xdd
  afc97b:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  afc980:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  afc985:	c5 7c 10 49 40       	vmovups ymm9,YMMWORD PTR [rcx+0x40]
  afc98a:	c5 7c 10 59 60       	vmovups ymm11,YMMWORD PTR [rcx+0x60]
  afc98f:	c5 7c 10 a1 80 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0x80]
  afc996:	00 
  afc997:	c5 7c 10 a9 a0 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0xa0]
  afc99e:	00 
  afc99f:	c5 34 59 f4          	vmulps ymm14,ymm9,ymm4
  afc9a3:	c4 42 4d bc f3       	vfnmadd231ps ymm14,ymm6,ymm11
  afc9a8:	c5 1c 59 fd          	vmulps ymm15,ymm12,ymm5
  afc9ac:	c4 42 45 bc fd       	vfnmadd231ps ymm15,ymm7,ymm13
  afc9b1:	62 c1 0c 28 58 c7    	vaddps ymm16,ymm14,ymm15
  afc9b7:	c5 b4 59 f6          	vmulps ymm6,ymm9,ymm6
  afc9bb:	c4 c2 5d b8 f3       	vfmadd231ps ymm6,ymm4,ymm11
  afc9c0:	c5 9c 59 e7          	vmulps ymm4,ymm12,ymm7
  afc9c4:	c4 c2 55 b8 e5       	vfmadd231ps ymm4,ymm5,ymm13
  afc9c9:	c5 cc 58 ec          	vaddps ymm5,ymm6,ymm4
  afc9cd:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  afc9d1:	62 d2 7d 20 ac f8    	vfnmadd213ps ymm7,ymm16,ymm8
  afc9d7:	c5 cc 5c e4          	vsubps ymm4,ymm6,ymm4
  afc9db:	c5 dc 59 e2          	vmulps ymm4,ymm4,ymm2
  afc9df:	c5 c4 58 f4          	vaddps ymm6,ymm7,ymm4
  afc9e3:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  afc9e7:	c4 42 55 ac ca       	vfnmadd213ps ymm9,ymm5,ymm10
  afc9ec:	c4 41 0c 5c df       	vsubps ymm11,ymm14,ymm15
  afc9f1:	c5 24 59 da          	vmulps ymm11,ymm11,ymm2
  afc9f5:	c5 c4 5c e4          	vsubps ymm4,ymm7,ymm4
  afc9f9:	62 b1 3c 28 58 f8    	vaddps ymm7,ymm8,ymm16
  afc9ff:	c5 a8 58 ed          	vaddps xmm5,xmm10,xmm5
  afca03:	62 f2 65 28 7f ef    	vpermt2ps ymm5,ymm3,ymm7
  afca09:	c5 fc 11 2c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm5
  afca0e:	c4 c1 30 5c eb       	vsubps xmm5,xmm9,xmm11
  afca13:	62 f2 65 28 7f ee    	vpermt2ps ymm5,ymm3,ymm6
  afca19:	c5 fc 11 6c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm5
  afca1f:	c4 c1 30 58 eb       	vaddps xmm5,xmm9,xmm11
  afca24:	62 f2 65 28 7f ec    	vpermt2ps ymm5,ymm3,ymm4
  afca2a:	c5 fc 11 6c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm5
  afca30:	48 83 c2 60          	add    rdx,0x60
  afca34:	48 39 d0             	cmp    rax,rdx
  afca37:	0f 85 f3 fd ff ff    	jne    afc830 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  afca3d:	c5 f8 77             	vzeroupper
  afca40:	c3                   	ret
