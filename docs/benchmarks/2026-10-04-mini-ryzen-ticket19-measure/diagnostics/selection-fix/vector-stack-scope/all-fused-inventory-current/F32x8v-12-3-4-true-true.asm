
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ac2e00 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ac2e00:	48 c1 e2 05          	shl    rdx,0x5
  ac2e04:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  ac2e08:	31 d2                	xor    edx,edx
  ac2e0a:	c4 e2 7d 18 05 c1 24 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5b24c1]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ac2e11:	5b ff 
  ac2e13:	c4 e2 7d 18 0d 44 26 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5b2644]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ac2e1a:	5b ff 
  ac2e1c:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  ac2e20:	c5 fc 28 1d 98 54 5b 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff5b5498]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  ac2e27:	ff 
  ac2e28:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  ac2e2f:	00 
  ac2e30:	c5 f8 10 24 17       	vmovups xmm4,XMMWORD PTR [rdi+rdx*1]
  ac2e35:	c5 f8 10 6c 17 10    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x10]
  ac2e3b:	c5 f8 10 74 17 20    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x20]
  ac2e41:	c5 f8 10 7c 17 30    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x30]
  ac2e47:	c5 48 c6 c7 dd       	vshufps xmm8,xmm6,xmm7,0xdd
  ac2e4c:	c5 78 10 4c 17 50    	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x50]
  ac2e52:	c5 78 10 54 17 40    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x40]
  ac2e58:	c4 41 28 c6 d9 dd    	vshufps xmm11,xmm10,xmm9,0xdd
  ac2e5e:	c4 41 3c 5c e3       	vsubps ymm12,ymm8,ymm11
  ac2e63:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  ac2e67:	c5 c8 c6 f7 88       	vshufps xmm6,xmm6,xmm7,0x88
  ac2e6c:	c4 c1 28 c6 f9 88    	vshufps xmm7,xmm10,xmm9,0x88
  ac2e72:	c5 4c 58 cf          	vaddps ymm9,ymm6,ymm7
  ac2e76:	c5 58 c6 d5 88       	vshufps xmm10,xmm4,xmm5,0x88
  ac2e7b:	c5 7c 28 e9          	vmovaps ymm13,ymm1
  ac2e7f:	c4 42 35 ac ea       	vfnmadd213ps ymm13,ymm9,ymm10
  ac2e84:	c4 41 3c 58 c3       	vaddps ymm8,ymm8,ymm11
  ac2e89:	c5 d8 c6 e5 dd       	vshufps xmm4,xmm4,xmm5,0xdd
  ac2e8e:	c5 b8 58 ec          	vaddps xmm5,xmm8,xmm4
  ac2e92:	c4 e2 3d bc e1       	vfnmadd231ps ymm4,ymm8,ymm1
  ac2e97:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  ac2e9b:	c5 cc 59 f0          	vmulps ymm6,ymm6,ymm0
  ac2e9f:	c5 d8 58 fe          	vaddps xmm7,xmm4,xmm6
  ac2ea3:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  ac2ea7:	c5 d5 15 f4          	vunpckhpd ymm6,ymm5,ymm4
  ac2eab:	c5 d5 14 e4          	vunpcklpd ymm4,ymm5,ymm4
  ac2eaf:	c4 e3 45 0c ea cc    	vblendps ymm5,ymm7,ymm2,0xcc
  ac2eb5:	c5 c5 73 df 08       	vpsrldq ymm7,ymm7,0x8
  ac2eba:	c5 5c c6 c5 88       	vshufps ymm8,ymm4,ymm5,0x88
  ac2ebf:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  ac2ec5:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  ac2eca:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ac2ecf:	c5 cc c6 ef 88       	vshufps ymm5,ymm6,ymm7,0x88
  ac2ed4:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ac2ed9:	c5 cc c6 f7 dd       	vshufps ymm6,ymm6,ymm7,0xdd
  ac2ede:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ac2ee3:	c4 c1 28 58 f9       	vaddps xmm7,xmm10,xmm9
  ac2ee8:	c4 41 10 5c cc       	vsubps xmm9,xmm13,xmm12
  ac2eed:	c4 41 18 58 d5       	vaddps xmm10,xmm12,xmm13
  ac2ef2:	c4 41 45 15 da       	vunpckhpd ymm11,ymm7,ymm10
  ac2ef7:	c4 c1 45 14 fa       	vunpcklpd ymm7,ymm7,ymm10
  ac2efc:	c4 63 35 0c d2 cc    	vblendps ymm10,ymm9,ymm2,0xcc
  ac2f02:	c4 c1 35 73 d9 08    	vpsrldq ymm9,ymm9,0x8
  ac2f08:	c4 41 44 c6 e2 88    	vshufps ymm12,ymm7,ymm10,0x88
  ac2f0e:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  ac2f14:	c4 c1 44 c6 fa dd    	vshufps ymm7,ymm7,ymm10,0xdd
  ac2f1a:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  ac2f1f:	c4 41 24 c6 d1 88    	vshufps ymm10,ymm11,ymm9,0x88
  ac2f25:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  ac2f2b:	c4 41 24 c6 c9 dd    	vshufps ymm9,ymm11,ymm9,0xdd
  ac2f31:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  ac2f37:	c5 7c 10 59 40       	vmovups ymm11,YMMWORD PTR [rcx+0x40]
  ac2f3c:	c5 7c 10 69 60       	vmovups ymm13,YMMWORD PTR [rcx+0x60]
  ac2f41:	c5 7c 10 b1 80 00 00 	vmovups ymm14,YMMWORD PTR [rcx+0x80]
  ac2f48:	00 
  ac2f49:	c5 7c 10 b9 a0 00 00 	vmovups ymm15,YMMWORD PTR [rcx+0xa0]
  ac2f50:	00 
  ac2f51:	62 e1 7c 28 10 41 06 	vmovups ymm16,YMMWORD PTR [rcx+0xc0]
  ac2f58:	62 e1 7c 28 10 49 07 	vmovups ymm17,YMMWORD PTR [rcx+0xe0]
  ac2f5f:	62 c1 54 28 59 d6    	vmulps ymm18,ymm5,ymm14
  ac2f65:	62 c2 2d 28 bc d7    	vfnmadd231ps ymm18,ymm10,ymm15
  ac2f6b:	62 a1 3c 28 58 da    	vaddps ymm19,ymm8,ymm18
  ac2f71:	62 c1 5c 28 59 e3    	vmulps ymm20,ymm4,ymm11
  ac2f77:	62 c2 45 28 bc e5    	vfnmadd231ps ymm20,ymm7,ymm13
  ac2f7d:	62 a1 4c 28 59 e8    	vmulps ymm21,ymm6,ymm16
  ac2f83:	62 a2 35 28 bc e9    	vfnmadd231ps ymm21,ymm9,ymm17
  ac2f89:	62 a1 5c 20 58 f5    	vaddps ymm22,ymm20,ymm21
  ac2f8f:	c4 41 2c 59 d6       	vmulps ymm10,ymm10,ymm14
  ac2f94:	c4 42 55 b8 d7       	vfmadd231ps ymm10,ymm5,ymm15
  ac2f99:	c4 c1 2c 58 ec       	vaddps ymm5,ymm10,ymm12
  ac2f9e:	c5 a4 59 ff          	vmulps ymm7,ymm11,ymm7
  ac2fa2:	c4 c2 5d b8 fd       	vfmadd231ps ymm7,ymm4,ymm13
  ac2fa7:	62 b1 34 28 59 e0    	vmulps ymm4,ymm9,ymm16
  ac2fad:	62 b2 4d 28 b8 e1    	vfmadd231ps ymm4,ymm6,ymm17
  ac2fb3:	c5 c4 58 f4          	vaddps ymm6,ymm7,ymm4
  ac2fb7:	62 31 3c 28 5c c2    	vsubps ymm8,ymm8,ymm18
  ac2fbd:	c5 c4 5c e4          	vsubps ymm4,ymm7,ymm4
  ac2fc1:	c5 bc 58 fc          	vaddps ymm7,ymm8,ymm4
  ac2fc5:	c4 41 1c 5c ca       	vsubps ymm9,ymm12,ymm10
  ac2fca:	62 31 54 20 5c d4    	vsubps ymm10,ymm21,ymm20
  ac2fd0:	62 31 64 20 5c de    	vsubps ymm11,ymm19,ymm22
  ac2fd6:	c5 bc 5c e4          	vsubps ymm4,ymm8,ymm4
  ac2fda:	62 31 64 20 58 c6    	vaddps ymm8,ymm19,ymm22
  ac2fe0:	c5 50 58 e6          	vaddps xmm12,xmm5,xmm6
  ac2fe4:	62 52 65 28 7f e0    	vpermt2ps ymm12,ymm3,ymm8
  ac2fea:	c5 78 11 24 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm12
  ac2fef:	c4 43 7d 19 e0 01    	vextractf128 xmm8,ymm12,0x1
  ac2ff5:	c5 78 13 44 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm8
  ac2ffb:	c4 41 30 58 c2       	vaddps xmm8,xmm9,xmm10
  ac3000:	62 72 65 28 7f c7    	vpermt2ps ymm8,ymm3,ymm7
  ac3006:	c5 78 11 44 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm8
  ac300c:	c4 63 7d 19 c7 01    	vextractf128 xmm7,ymm8,0x1
  ac3012:	c5 f8 13 7c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm7
  ac3018:	c5 d0 5c ee          	vsubps xmm5,xmm5,xmm6
  ac301c:	62 d2 65 28 7f eb    	vpermt2ps ymm5,ymm3,ymm11
  ac3022:	c5 f8 11 6c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm5
  ac3028:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  ac302e:	c5 f8 13 6c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm5
  ac3034:	c4 c1 30 5c ea       	vsubps xmm5,xmm9,xmm10
  ac3039:	62 f2 65 28 7f ec    	vpermt2ps ymm5,ymm3,ymm4
  ac303f:	c4 e3 7d 19 ec 01    	vextractf128 xmm4,ymm5,0x1
  ac3045:	c5 f8 13 64 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm4
  ac304b:	c5 f8 11 6c 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm5
  ac3051:	48 83 c2 60          	add    rdx,0x60
  ac3055:	48 39 d0             	cmp    rax,rdx
  ac3058:	0f 85 d2 fd ff ff    	jne    ac2e30 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  ac305e:	c5 f8 77             	vzeroupper
  ac3061:	c3                   	ret
