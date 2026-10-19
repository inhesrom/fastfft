
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ac97c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ac97c0:	48 c1 e2 04          	shl    rdx,0x4
  ac97c4:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  ac97c8:	31 d2                	xor    edx,edx
  ac97ca:	c4 e2 7d 18 05 01 bb 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5abb01]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ac97d1:	5a ff 
  ac97d3:	c4 e2 7d 18 0d 84 bc 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5abc84]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ac97da:	5a ff 
  ac97dc:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  ac97e0:	c5 fc 28 1d d8 ea 5a 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff5aead8]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  ac97e7:	ff 
  ac97e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  ac97ef:	00 
  ac97f0:	c5 fc 10 64 17 30    	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x30]
  ac97f6:	c5 f8 10 6c 17 50    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x50]
  ac97fc:	c5 dc c6 f5 dd       	vshufps ymm6,ymm4,ymm5,0xdd
  ac9801:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  ac9807:	c5 fc 10 7c 17 60    	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x60]
  ac980d:	c5 78 10 84 17 80 00 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x80]
  ac9814:	00 00 
  ac9816:	c4 41 44 c6 c8 dd    	vshufps ymm9,ymm7,ymm8,0xdd
  ac981c:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  ac9822:	c4 41 4c 5c d1       	vsubps ymm10,ymm6,ymm9
  ac9827:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  ac982b:	c5 dc c6 e5 88       	vshufps ymm4,ymm4,ymm5,0x88
  ac9830:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  ac9836:	c4 c1 44 c6 e8 88    	vshufps ymm5,ymm7,ymm8,0x88
  ac983c:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  ac9842:	c5 dc 58 fd          	vaddps ymm7,ymm4,ymm5
  ac9846:	c5 7c 10 04 17       	vmovups ymm8,YMMWORD PTR [rdi+rdx*1]
  ac984b:	c5 78 10 5c 17 20    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x20]
  ac9851:	c4 41 3c c6 e3 88    	vshufps ymm12,ymm8,ymm11,0x88
  ac9857:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  ac985d:	c5 7c 28 e9          	vmovaps ymm13,ymm1
  ac9861:	c4 42 45 ac ec       	vfnmadd213ps ymm13,ymm7,ymm12
  ac9866:	c4 41 2c 58 f5       	vaddps ymm14,ymm10,ymm13
  ac986b:	c5 b4 58 f6          	vaddps ymm6,ymm9,ymm6
  ac986f:	c4 41 3c c6 c3 dd    	vshufps ymm8,ymm8,ymm11,0xdd
  ac9875:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  ac987b:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  ac987f:	c4 42 4d ac c8       	vfnmadd213ps ymm9,ymm6,ymm8
  ac9884:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  ac9888:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  ac988c:	c5 b4 5c ec          	vsubps ymm5,ymm9,ymm4
  ac9890:	c4 41 14 5c d2       	vsubps ymm10,ymm13,ymm10
  ac9895:	c5 b4 58 e4          	vaddps ymm4,ymm9,ymm4
  ac9899:	c5 1c 58 e7          	vaddps ymm12,ymm12,ymm7
  ac989d:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  ac98a1:	c5 f8 28 fe          	vmovaps xmm7,xmm6
  ac98a5:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  ac98ab:	c5 78 28 c4          	vmovaps xmm8,xmm4
  ac98af:	c4 c3 7d 19 e1 01    	vextractf128 xmm9,ymm4,0x1
  ac98b5:	c5 78 28 dd          	vmovaps xmm11,xmm5
  ac98b9:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  ac98bf:	c5 cd 14 f5          	vunpcklpd ymm6,ymm6,ymm5
  ac98c3:	c4 41 45 15 eb       	vunpckhpd ymm13,ymm7,ymm11
  ac98c8:	c4 c1 45 14 eb       	vunpcklpd ymm5,ymm7,ymm11
  ac98cd:	c5 fa 7e fc          	vmovq  xmm7,xmm4
  ac98d1:	c4 c1 3d 73 d8 08    	vpsrldq ymm8,ymm8,0x8
  ac98d7:	c4 63 35 0c fa cc    	vblendps ymm15,ymm9,ymm2,0xcc
  ac98dd:	c5 d4 c6 e7 88       	vshufps ymm4,ymm5,ymm7,0x88
  ac98e2:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ac98e7:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  ac98ec:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ac98f1:	c4 c1 14 c6 f8 88    	vshufps ymm7,ymm13,ymm8,0x88
  ac98f7:	c5 44 c6 df d8       	vshufps ymm11,ymm7,ymm7,0xd8
  ac98fc:	c4 c1 14 c6 f8 dd    	vshufps ymm7,ymm13,ymm8,0xdd
  ac9902:	c5 44 c6 c7 d8       	vshufps ymm8,ymm7,ymm7,0xd8
  ac9907:	c4 c1 4c c6 ff 88    	vshufps ymm7,ymm6,ymm15,0x88
  ac990d:	c5 44 c6 cf d8       	vshufps ymm9,ymm7,ymm7,0xd8
  ac9912:	c4 c1 4c c6 f7 dd    	vshufps ymm6,ymm6,ymm15,0xdd
  ac9918:	c5 cc c6 fe d8       	vshufps ymm7,ymm6,ymm6,0xd8
  ac991d:	c5 78 29 e6          	vmovaps xmm6,xmm12
  ac9921:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  ac9927:	c4 41 78 28 ea       	vmovaps xmm13,xmm10
  ac992c:	c4 43 7d 19 d7 01    	vextractf128 xmm15,ymm10,0x1
  ac9932:	62 c1 7c 08 28 c6    	vmovaps xmm16,xmm14
  ac9938:	c4 43 7d 19 f6 01    	vextractf128 xmm14,ymm14,0x1
  ac993e:	c4 41 1d 14 f6       	vunpcklpd ymm14,ymm12,ymm14
  ac9943:	62 a1 cd 28 15 c8    	vunpckhpd ymm17,ymm6,ymm16
  ac9949:	62 31 cd 28 14 e0    	vunpcklpd ymm12,ymm6,ymm16
  ac994f:	c4 41 7a 7e d2       	vmovq  xmm10,xmm10
  ac9954:	c4 c1 15 73 dd 08    	vpsrldq ymm13,ymm13,0x8
  ac995a:	c4 63 05 0c fa cc    	vblendps ymm15,ymm15,ymm2,0xcc
  ac9960:	c4 c1 1c c6 f2 88    	vshufps ymm6,ymm12,ymm10,0x88
  ac9966:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ac996b:	c4 41 1c c6 d2 dd    	vshufps ymm10,ymm12,ymm10,0xdd
  ac9971:	c4 41 2c c6 e2 d8    	vshufps ymm12,ymm10,ymm10,0xd8
  ac9977:	62 51 74 20 c6 d5 88 	vshufps ymm10,ymm17,ymm13,0x88
  ac997e:	62 c1 2c 28 c6 c2 d8 	vshufps ymm16,ymm10,ymm10,0xd8
  ac9985:	62 51 74 20 c6 d5 dd 	vshufps ymm10,ymm17,ymm13,0xdd
  ac998c:	c4 41 2c c6 ea d8    	vshufps ymm13,ymm10,ymm10,0xd8
  ac9992:	c4 41 0c c6 d7 88    	vshufps ymm10,ymm14,ymm15,0x88
  ac9998:	62 c1 2c 28 c6 ca d8 	vshufps ymm17,ymm10,ymm10,0xd8
  ac999f:	c4 41 0c c6 d7 dd    	vshufps ymm10,ymm14,ymm15,0xdd
  ac99a5:	c4 41 2c c6 f2 d8    	vshufps ymm14,ymm10,ymm10,0xd8
  ac99ab:	c5 7c 10 b9 80 00 00 	vmovups ymm15,YMMWORD PTR [rcx+0x80]
  ac99b2:	00 
  ac99b3:	62 e1 7c 28 10 51 05 	vmovups ymm18,YMMWORD PTR [rcx+0xa0]
  ac99ba:	c4 41 24 59 d7       	vmulps ymm10,ymm11,ymm15
  ac99bf:	62 32 7d 20 bc d2    	vfnmadd231ps ymm10,ymm16,ymm18
  ac99c5:	62 51 7c 20 59 ff    	vmulps ymm15,ymm16,ymm15
  ac99cb:	62 e1 7c 28 10 41 08 	vmovups ymm16,YMMWORD PTR [rcx+0x100]
  ac99d2:	62 32 25 28 b8 fa    	vfmadd231ps ymm15,ymm11,ymm18
  ac99d8:	c5 7c 10 99 20 01 00 	vmovups ymm11,YMMWORD PTR [rcx+0x120]
  ac99df:	00 
  ac99e0:	62 a1 34 28 59 d0    	vmulps ymm18,ymm9,ymm16
  ac99e6:	62 c2 75 20 bc d3    	vfnmadd231ps ymm18,ymm17,ymm11
  ac99ec:	62 a1 74 20 59 c0    	vmulps ymm16,ymm17,ymm16
  ac99f2:	62 e1 7c 28 10 49 06 	vmovups ymm17,YMMWORD PTR [rcx+0xc0]
  ac99f9:	62 c2 35 28 b8 c3    	vfmadd231ps ymm16,ymm9,ymm11
  ac99ff:	c5 7c 10 89 e0 00 00 	vmovups ymm9,YMMWORD PTR [rcx+0xe0]
  ac9a06:	00 
  ac9a07:	62 31 3c 28 59 d9    	vmulps ymm11,ymm8,ymm17
  ac9a0d:	c4 42 15 bc d9       	vfnmadd231ps ymm11,ymm13,ymm9
  ac9a12:	62 31 14 28 59 e9    	vmulps ymm13,ymm13,ymm17
  ac9a18:	62 e1 7c 28 10 49 0a 	vmovups ymm17,YMMWORD PTR [rcx+0x140]
  ac9a1f:	c4 42 3d b8 e9       	vfmadd231ps ymm13,ymm8,ymm9
  ac9a24:	c5 7c 10 81 60 01 00 	vmovups ymm8,YMMWORD PTR [rcx+0x160]
  ac9a2b:	00 
  ac9a2c:	62 31 44 28 59 c9    	vmulps ymm9,ymm7,ymm17
  ac9a32:	c4 42 0d bc c8       	vfnmadd231ps ymm9,ymm14,ymm8
  ac9a37:	62 31 0c 28 59 f1    	vmulps ymm14,ymm14,ymm17
  ac9a3d:	62 e1 7c 28 10 49 02 	vmovups ymm17,YMMWORD PTR [rcx+0x40]
  ac9a44:	c4 42 45 b8 f0       	vfmadd231ps ymm14,ymm7,ymm8
  ac9a49:	c5 fc 10 79 60       	vmovups ymm7,YMMWORD PTR [rcx+0x60]
  ac9a4e:	62 31 54 28 59 c1    	vmulps ymm8,ymm5,ymm17
  ac9a54:	c4 62 1d bc c7       	vfnmadd231ps ymm8,ymm12,ymm7
  ac9a59:	62 31 1c 28 59 e1    	vmulps ymm12,ymm12,ymm17
  ac9a5f:	62 a1 2c 28 58 ca    	vaddps ymm17,ymm10,ymm18
  ac9a65:	c4 62 55 b8 e7       	vfmadd231ps ymm12,ymm5,ymm7
  ac9a6a:	62 b1 5c 28 58 e9    	vaddps ymm5,ymm4,ymm17
  ac9a70:	c4 c1 34 58 f8       	vaddps ymm7,ymm9,ymm8
  ac9a75:	62 e2 75 28 ac cc    	vfnmadd213ps ymm17,ymm1,ymm4
  ac9a7b:	62 a1 04 28 58 d8    	vaddps ymm19,ymm15,ymm16
  ac9a81:	62 31 04 28 5c f8    	vsubps ymm15,ymm15,ymm16
  ac9a87:	62 e1 24 28 58 c7    	vaddps ymm16,ymm11,ymm7
  ac9a8d:	c4 62 75 bc df       	vfnmadd231ps ymm11,ymm1,ymm7
  ac9a92:	c4 c1 0c 58 fc       	vaddps ymm7,ymm14,ymm12
  ac9a97:	c4 41 0c 5c e4       	vsubps ymm12,ymm14,ymm12
  ac9a9c:	62 f1 64 20 58 e6    	vaddps ymm4,ymm19,ymm6
  ac9aa2:	62 e2 75 28 ac de    	vfnmadd213ps ymm19,ymm1,ymm6
  ac9aa8:	62 b1 2c 28 5c f2    	vsubps ymm6,ymm10,ymm18
  ac9aae:	c5 14 58 d7          	vaddps ymm10,ymm13,ymm7
  ac9ab2:	c4 62 75 bc ef       	vfnmadd231ps ymm13,ymm1,ymm7
  ac9ab7:	c5 84 59 f8          	vmulps ymm7,ymm15,ymm0
  ac9abb:	c4 41 34 5c c0       	vsubps ymm8,ymm9,ymm8
  ac9ac0:	62 71 74 20 58 cf    	vaddps ymm9,ymm17,ymm7
  ac9ac6:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  ac9aca:	62 f1 74 20 5c ff    	vsubps ymm7,ymm17,ymm7
  ac9ad0:	c4 41 24 58 f4       	vaddps ymm14,ymm11,ymm12
  ac9ad5:	c5 cc 59 f0          	vmulps ymm6,ymm6,ymm0
  ac9ad9:	c4 41 24 5c dc       	vsubps ymm11,ymm11,ymm12
  ac9ade:	62 71 64 20 5c e6    	vsubps ymm12,ymm19,ymm6
  ac9ae4:	c5 3c 59 c0          	vmulps ymm8,ymm8,ymm0
  ac9ae8:	62 b1 4c 28 58 f3    	vaddps ymm6,ymm6,ymm19
  ac9aee:	c4 41 14 5c f8       	vsubps ymm15,ymm13,ymm8
  ac9af3:	c4 41 14 58 c0       	vaddps ymm8,ymm13,ymm8
  ac9af8:	c4 41 34 5c ee       	vsubps ymm13,ymm9,ymm14
  ac9afd:	c4 41 34 58 ce       	vaddps ymm9,ymm9,ymm14
  ac9b02:	c5 24 58 f7          	vaddps ymm14,ymm11,ymm7
  ac9b06:	c4 c1 44 5c fb       	vsubps ymm7,ymm7,ymm11
  ac9b0b:	62 31 54 28 5c d8    	vsubps ymm11,ymm5,ymm16
  ac9b11:	62 b1 54 28 58 e8    	vaddps ymm5,ymm5,ymm16
  ac9b17:	62 c1 5c 08 58 c2    	vaddps xmm16,xmm4,xmm10
  ac9b1d:	62 e2 65 28 7f c5    	vpermt2ps ymm16,ymm3,ymm5
  ac9b23:	62 e3 7d 28 19 c5 01 	vextractf32x4 xmm5,ymm16,0x1
  ac9b2a:	c5 f8 13 6c 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm5
  ac9b30:	62 e1 7c 08 11 04 16 	vmovups XMMWORD PTR [rsi+rdx*1],xmm16
  ac9b37:	c4 c1 18 5c ef       	vsubps xmm5,xmm12,xmm15
  ac9b3c:	62 d2 65 28 7f ed    	vpermt2ps ymm5,ymm3,ymm13
  ac9b42:	c4 c3 7d 19 ed 01    	vextractf128 xmm13,ymm5,0x1
  ac9b48:	c5 78 13 6c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm13
  ac9b4e:	c5 f8 11 6c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm5
  ac9b54:	c5 b8 58 ee          	vaddps xmm5,xmm8,xmm6
  ac9b58:	62 d2 65 28 7f ee    	vpermt2ps ymm5,ymm3,ymm14
  ac9b5e:	c4 c3 7d 19 ed 01    	vextractf128 xmm13,ymm5,0x1
  ac9b64:	c5 78 13 6c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm13
  ac9b6a:	c5 f8 11 6c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm5
  ac9b70:	c4 c1 58 5c e2       	vsubps xmm4,xmm4,xmm10
  ac9b75:	62 d2 65 28 7f e3    	vpermt2ps ymm4,ymm3,ymm11
  ac9b7b:	c4 e3 7d 19 e5 01    	vextractf128 xmm5,ymm4,0x1
  ac9b81:	c5 f8 13 6c 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm5
  ac9b87:	c5 f8 11 64 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm4
  ac9b8d:	c4 c1 18 58 e7       	vaddps xmm4,xmm12,xmm15
  ac9b92:	62 d2 65 28 7f e1    	vpermt2ps ymm4,ymm3,ymm9
  ac9b98:	c4 e3 7d 19 e5 01    	vextractf128 xmm5,ymm4,0x1
  ac9b9e:	c5 f8 13 6c 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm5
  ac9ba4:	c5 f8 11 64 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm4
  ac9baa:	c4 c1 48 5c e0       	vsubps xmm4,xmm6,xmm8
  ac9baf:	62 f2 65 28 7f e7    	vpermt2ps ymm4,ymm3,ymm7
  ac9bb5:	c4 e3 7d 19 e5 01    	vextractf128 xmm5,ymm4,0x1
  ac9bbb:	c5 f8 13 ac 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm5
  ac9bc2:	00 00 
  ac9bc4:	c5 f8 11 64 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm4
  ac9bca:	48 81 c2 90 00 00 00 	add    rdx,0x90
  ac9bd1:	48 39 d0             	cmp    rax,rdx
  ac9bd4:	0f 85 16 fc ff ff    	jne    ac97f0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  ac9bda:	c5 f8 77             	vzeroupper
  ac9bdd:	c3                   	ret
