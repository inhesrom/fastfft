
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ad5940 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ad5940:	48 c1 e2 05          	shl    rdx,0x5
  ad5944:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  ad5948:	31 d2                	xor    edx,edx
  ad594a:	c4 e2 7d 18 05 81 f9 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff59f981]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ad5951:	59 ff 
  ad5953:	c4 e2 7d 18 0d 04 fb 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff59fb04]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ad595a:	59 ff 
  ad595c:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  ad5960:	c5 fc 28 1d 58 29 5a 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff5a2958]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  ad5967:	ff 
  ad5968:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  ad596f:	00 
  ad5970:	c5 f8 10 24 17       	vmovups xmm4,XMMWORD PTR [rdi+rdx*1]
  ad5975:	c5 f8 10 6c 17 10    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x10]
  ad597b:	c5 f8 10 74 17 20    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x20]
  ad5981:	c5 f8 10 7c 17 30    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x30]
  ad5987:	c5 48 c6 c7 88       	vshufps xmm8,xmm6,xmm7,0x88
  ad598c:	c5 78 10 4c 17 50    	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x50]
  ad5992:	c5 78 10 54 17 40    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x40]
  ad5998:	c4 41 28 c6 d9 88    	vshufps xmm11,xmm10,xmm9,0x88
  ad599e:	c4 41 3c 5c e3       	vsubps ymm12,ymm8,ymm11
  ad59a3:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  ad59a7:	c5 c8 c6 f7 dd       	vshufps xmm6,xmm6,xmm7,0xdd
  ad59ac:	c4 c1 28 c6 f9 dd    	vshufps xmm7,xmm10,xmm9,0xdd
  ad59b2:	c5 4c 58 cf          	vaddps ymm9,ymm6,ymm7
  ad59b6:	c5 58 c6 d5 dd       	vshufps xmm10,xmm4,xmm5,0xdd
  ad59bb:	c5 7c 28 e9          	vmovaps ymm13,ymm1
  ad59bf:	c4 42 35 ac ea       	vfnmadd213ps ymm13,ymm9,ymm10
  ad59c4:	c4 41 3c 58 c3       	vaddps ymm8,ymm8,ymm11
  ad59c9:	c5 d8 c6 e5 88       	vshufps xmm4,xmm4,xmm5,0x88
  ad59ce:	c5 b8 58 ec          	vaddps xmm5,xmm8,xmm4
  ad59d2:	c4 e2 3d bc e1       	vfnmadd231ps ymm4,ymm8,ymm1
  ad59d7:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  ad59db:	c5 cc 59 f0          	vmulps ymm6,ymm6,ymm0
  ad59df:	c5 d8 58 fe          	vaddps xmm7,xmm4,xmm6
  ad59e3:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  ad59e7:	c5 d5 15 f4          	vunpckhpd ymm6,ymm5,ymm4
  ad59eb:	c5 d5 14 e4          	vunpcklpd ymm4,ymm5,ymm4
  ad59ef:	c4 e3 45 0c ea cc    	vblendps ymm5,ymm7,ymm2,0xcc
  ad59f5:	c5 c5 73 df 08       	vpsrldq ymm7,ymm7,0x8
  ad59fa:	c5 5c c6 c5 88       	vshufps ymm8,ymm4,ymm5,0x88
  ad59ff:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  ad5a05:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  ad5a0a:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ad5a0f:	c5 cc c6 ef 88       	vshufps ymm5,ymm6,ymm7,0x88
  ad5a14:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ad5a19:	c5 cc c6 f7 dd       	vshufps ymm6,ymm6,ymm7,0xdd
  ad5a1e:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ad5a23:	c4 c1 28 58 f9       	vaddps xmm7,xmm10,xmm9
  ad5a28:	c4 41 10 5c cc       	vsubps xmm9,xmm13,xmm12
  ad5a2d:	c4 41 18 58 d5       	vaddps xmm10,xmm12,xmm13
  ad5a32:	c4 41 45 15 da       	vunpckhpd ymm11,ymm7,ymm10
  ad5a37:	c4 c1 45 14 fa       	vunpcklpd ymm7,ymm7,ymm10
  ad5a3c:	c4 63 35 0c d2 cc    	vblendps ymm10,ymm9,ymm2,0xcc
  ad5a42:	c4 c1 35 73 d9 08    	vpsrldq ymm9,ymm9,0x8
  ad5a48:	c4 41 44 c6 e2 88    	vshufps ymm12,ymm7,ymm10,0x88
  ad5a4e:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  ad5a54:	c4 c1 44 c6 fa dd    	vshufps ymm7,ymm7,ymm10,0xdd
  ad5a5a:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  ad5a5f:	c4 41 24 c6 d1 88    	vshufps ymm10,ymm11,ymm9,0x88
  ad5a65:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  ad5a6b:	c4 41 24 c6 c9 dd    	vshufps ymm9,ymm11,ymm9,0xdd
  ad5a71:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  ad5a77:	c5 7c 10 59 40       	vmovups ymm11,YMMWORD PTR [rcx+0x40]
  ad5a7c:	c5 7c 10 69 60       	vmovups ymm13,YMMWORD PTR [rcx+0x60]
  ad5a81:	c5 7c 10 b1 80 00 00 	vmovups ymm14,YMMWORD PTR [rcx+0x80]
  ad5a88:	00 
  ad5a89:	c5 7c 10 b9 a0 00 00 	vmovups ymm15,YMMWORD PTR [rcx+0xa0]
  ad5a90:	00 
  ad5a91:	62 e1 7c 28 10 41 06 	vmovups ymm16,YMMWORD PTR [rcx+0xc0]
  ad5a98:	62 e1 7c 28 10 49 07 	vmovups ymm17,YMMWORD PTR [rcx+0xe0]
  ad5a9f:	62 c1 54 28 59 d6    	vmulps ymm18,ymm5,ymm14
  ad5aa5:	62 c2 2d 28 bc d7    	vfnmadd231ps ymm18,ymm10,ymm15
  ad5aab:	62 a1 3c 28 58 da    	vaddps ymm19,ymm8,ymm18
  ad5ab1:	62 c1 5c 28 59 e3    	vmulps ymm20,ymm4,ymm11
  ad5ab7:	62 c2 45 28 bc e5    	vfnmadd231ps ymm20,ymm7,ymm13
  ad5abd:	62 a1 4c 28 59 e8    	vmulps ymm21,ymm6,ymm16
  ad5ac3:	62 a2 35 28 bc e9    	vfnmadd231ps ymm21,ymm9,ymm17
  ad5ac9:	62 a1 5c 20 58 f5    	vaddps ymm22,ymm20,ymm21
  ad5acf:	c4 41 2c 59 d6       	vmulps ymm10,ymm10,ymm14
  ad5ad4:	c4 42 55 b8 d7       	vfmadd231ps ymm10,ymm5,ymm15
  ad5ad9:	c4 c1 2c 58 ec       	vaddps ymm5,ymm10,ymm12
  ad5ade:	c5 a4 59 ff          	vmulps ymm7,ymm11,ymm7
  ad5ae2:	c4 c2 5d b8 fd       	vfmadd231ps ymm7,ymm4,ymm13
  ad5ae7:	62 b1 34 28 59 e0    	vmulps ymm4,ymm9,ymm16
  ad5aed:	62 b2 4d 28 b8 e1    	vfmadd231ps ymm4,ymm6,ymm17
  ad5af3:	c5 c4 58 f4          	vaddps ymm6,ymm7,ymm4
  ad5af7:	62 31 3c 28 5c c2    	vsubps ymm8,ymm8,ymm18
  ad5afd:	c5 c4 5c e4          	vsubps ymm4,ymm7,ymm4
  ad5b01:	c4 c1 1c 5c fa       	vsubps ymm7,ymm12,ymm10
  ad5b06:	62 31 54 20 5c cc    	vsubps ymm9,ymm21,ymm20
  ad5b0c:	c5 34 58 d7          	vaddps ymm10,ymm9,ymm7
  ad5b10:	c5 54 5c de          	vsubps ymm11,ymm5,ymm6
  ad5b14:	c4 c1 44 5c f9       	vsubps ymm7,ymm7,ymm9
  ad5b19:	c5 d4 58 ee          	vaddps ymm5,ymm5,ymm6
  ad5b1d:	62 b1 64 00 58 f6    	vaddps xmm6,xmm19,xmm22
  ad5b23:	62 f2 65 28 7f f5    	vpermt2ps ymm6,ymm3,ymm5
  ad5b29:	c5 f8 11 34 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm6
  ad5b2e:	c4 e3 7d 19 f5 01    	vextractf128 xmm5,ymm6,0x1
  ad5b34:	c5 f8 13 6c 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm5
  ad5b3a:	c5 b8 58 ec          	vaddps xmm5,xmm8,xmm4
  ad5b3e:	62 d2 65 28 7f ea    	vpermt2ps ymm5,ymm3,ymm10
  ad5b44:	c5 f8 11 6c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm5
  ad5b4a:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  ad5b50:	c5 f8 13 6c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm5
  ad5b56:	62 b1 64 00 5c ee    	vsubps xmm5,xmm19,xmm22
  ad5b5c:	62 d2 65 28 7f eb    	vpermt2ps ymm5,ymm3,ymm11
  ad5b62:	c5 f8 11 6c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm5
  ad5b68:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  ad5b6e:	c5 f8 13 6c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm5
  ad5b74:	c5 b8 5c e4          	vsubps xmm4,xmm8,xmm4
  ad5b78:	62 f2 65 28 7f e7    	vpermt2ps ymm4,ymm3,ymm7
  ad5b7e:	c4 e3 7d 19 e5 01    	vextractf128 xmm5,ymm4,0x1
  ad5b84:	c5 f8 13 6c 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm5
  ad5b8a:	c5 f8 11 64 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm4
  ad5b90:	48 83 c2 60          	add    rdx,0x60
  ad5b94:	48 39 d0             	cmp    rax,rdx
  ad5b97:	0f 85 d3 fd ff ff    	jne    ad5970 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  ad5b9d:	c5 f8 77             	vzeroupper
  ad5ba0:	c3                   	ret
