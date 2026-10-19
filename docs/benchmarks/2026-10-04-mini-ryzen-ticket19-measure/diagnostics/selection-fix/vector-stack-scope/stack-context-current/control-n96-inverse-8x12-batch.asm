
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000af9dc0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  af9dc0:	55                   	push   rbp
  af9dc1:	48 89 e5             	mov    rbp,rsp
  af9dc4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  af9dc8:	48 81 ec c0 01 00 00 	sub    rsp,0x1c0
  af9dcf:	48 c1 e2 08          	shl    rdx,0x8
  af9dd3:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  af9dd7:	31 d2                	xor    edx,edx
  af9dd9:	4c 8d 84 24 40 01 00 	lea    r8,[rsp+0x140]
  af9de0:	00 
  af9de1:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  af9de6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  af9ded:	00 00 00 
  af9df0:	c6 84 24 40 01 00 00 	mov    BYTE PTR [rsp+0x140],0x0
  af9df7:	00 
  af9df8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  af9dfd:	c5 fc 10 14 17       	vmovups ymm2,YMMWORD PTR [rdi+rdx*1]
  af9e02:	c5 fc 10 6c 17 20    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x20]
  af9e08:	c5 ec c6 c5 88       	vshufps ymm0,ymm2,ymm5,0x88
  af9e0d:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  af9e13:	c5 ec c6 d5 dd       	vshufps ymm2,ymm2,ymm5,0xdd
  af9e18:	c5 fc 10 6c 17 60    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x60]
  af9e1e:	c5 fc 10 b4 17 80 00 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x80]
  af9e25:	00 00 
  af9e27:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  af9e2d:	c5 d4 c6 fe 88       	vshufps ymm7,ymm5,ymm6,0x88
  af9e32:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  af9e38:	c5 d4 c6 ee dd       	vshufps ymm5,ymm5,ymm6,0xdd
  af9e3d:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  af9e43:	c5 fc 10 b4 17 c0 00 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0xc0]
  af9e4a:	00 00 
  af9e4c:	c5 7c 10 84 17 e0 00 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0xe0]
  af9e53:	00 00 
  af9e55:	c4 41 4c c6 c8 88    	vshufps ymm9,ymm6,ymm8,0x88
  af9e5b:	c4 c3 fd 01 c9 d8    	vpermpd ymm1,ymm9,0xd8
  af9e61:	c4 c1 4c c6 f0 dd    	vshufps ymm6,ymm6,ymm8,0xdd
  af9e67:	c5 7c 10 84 17 20 01 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x120]
  af9e6e:	00 00 
  af9e70:	c5 7c 10 94 17 40 01 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x140]
  af9e77:	00 00 
  af9e79:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  af9e7f:	c4 41 3c c6 da 88    	vshufps ymm11,ymm8,ymm10,0x88
  af9e85:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  af9e8b:	c4 41 3c c6 c2 dd    	vshufps ymm8,ymm8,ymm10,0xdd
  af9e91:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  af9e97:	c5 7c 10 94 17 80 01 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x180]
  af9e9e:	00 00 
  af9ea0:	c5 7c 10 a4 17 a0 01 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x1a0]
  af9ea7:	00 00 
  af9ea9:	c4 41 2c c6 ec 88    	vshufps ymm13,ymm10,ymm12,0x88
  af9eaf:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  af9eb5:	c4 41 2c c6 d4 dd    	vshufps ymm10,ymm10,ymm12,0xdd
  af9ebb:	c5 7c 10 a4 17 e0 01 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x1e0]
  af9ec2:	00 00 
  af9ec4:	c5 7c 10 b4 17 00 02 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x200]
  af9ecb:	00 00 
  af9ecd:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  af9ed3:	c4 41 1c c6 fe 88    	vshufps ymm15,ymm12,ymm14,0x88
  af9ed9:	c4 43 fd 01 ff d8    	vpermpd ymm15,ymm15,0xd8
  af9edf:	c4 41 1c c6 e6 dd    	vshufps ymm12,ymm12,ymm14,0xdd
  af9ee5:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  af9eeb:	c5 7c 10 b4 17 40 02 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x240]
  af9ef2:	00 00 
  af9ef4:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x260]
  af9efb:	13 
  af9efc:	62 a1 0c 28 c6 c8 88 	vshufps ymm17,ymm14,ymm16,0x88
  af9f03:	62 a3 fd 28 01 c9 d8 	vpermpd ymm17,ymm17,0xd8
  af9f0a:	62 31 0c 28 c6 f0 dd 	vshufps ymm14,ymm14,ymm16,0xdd
  af9f11:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x2a0]
  af9f18:	15 
  af9f19:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x2c0]
  af9f20:	16 
  af9f21:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  af9f27:	62 a1 7c 20 c6 da 88 	vshufps ymm19,ymm16,ymm18,0x88
  af9f2e:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  af9f35:	62 a1 7c 20 c6 c2 dd 	vshufps ymm16,ymm16,ymm18,0xdd
  af9f3c:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  af9f43:	62 c1 6c 28 58 ea    	vaddps ymm21,ymm2,ymm10
  af9f49:	62 c1 4c 28 58 f6    	vaddps ymm22,ymm6,ymm14
  af9f4f:	62 c1 54 28 58 fc    	vaddps ymm23,ymm5,ymm12
  af9f55:	62 21 54 20 58 c6    	vaddps ymm24,ymm21,ymm22
  af9f5b:	62 21 3c 28 58 c8    	vaddps ymm25,ymm8,ymm16
  af9f61:	62 41 7c 28 58 d5    	vaddps ymm26,ymm0,ymm13
  af9f67:	62 21 74 28 58 d9    	vaddps ymm27,ymm1,ymm17
  af9f6d:	62 01 44 20 58 e1    	vaddps ymm28,ymm23,ymm25
  af9f73:	62 01 2c 20 58 eb    	vaddps ymm29,ymm26,ymm27
  af9f79:	62 41 44 28 58 f7    	vaddps ymm30,ymm7,ymm15
  af9f7f:	62 21 24 28 58 fb    	vaddps ymm31,ymm11,ymm19
  af9f85:	62 11 0c 20 58 cf    	vaddps ymm9,ymm30,ymm31
  af9f8b:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  af9f90:	62 b1 74 28 5c d9    	vsubps ymm3,ymm1,ymm17
  af9f96:	c5 ec 58 cb          	vaddps ymm1,ymm2,ymm3
  af9f9a:	c5 fc 29 8c 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm1
  af9fa1:	00 00 
  af9fa3:	62 11 3c 20 58 d4    	vaddps ymm10,ymm24,ymm28
  af9fa9:	c4 c1 54 5c ec       	vsubps ymm5,ymm5,ymm12
  af9fae:	c4 c1 44 5c ff       	vsubps ymm7,ymm7,ymm15
  af9fb3:	c5 54 58 ff          	vaddps ymm15,ymm5,ymm7
  af9fb7:	62 51 14 20 58 e1    	vaddps ymm12,ymm29,ymm9
  af9fbd:	62 31 24 28 5c db    	vsubps ymm11,ymm11,ymm19
  af9fc3:	62 31 3c 28 5c c0    	vsubps ymm8,ymm8,ymm16
  af9fc9:	62 c1 24 28 5c c0    	vsubps ymm16,ymm11,ymm8
  af9fcf:	c4 e2 7d 18 25 c4 b3 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff57b3c4]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  af9fd6:	57 ff 
  af9fd8:	62 e1 04 28 59 cc    	vmulps ymm17,ymm15,ymm4
  af9fde:	c4 c1 7c 5c cd       	vsubps ymm1,ymm0,ymm13
  af9fe3:	c5 8c 5c f6          	vsubps ymm6,ymm14,ymm6
  af9fe7:	c5 4c 58 f9          	vaddps ymm15,ymm6,ymm1
  af9feb:	62 e1 7c 20 59 d4    	vmulps ymm18,ymm16,ymm4
  af9ff1:	c5 c4 5c c5          	vsubps ymm0,ymm7,ymm5
  af9ff5:	62 e1 7c 28 59 dc    	vmulps ymm19,ymm0,ymm4
  af9ffb:	c4 c1 3c 58 c3       	vaddps ymm0,ymm8,ymm11
  afa000:	62 e1 7c 28 59 e4    	vmulps ymm20,ymm0,ymm4
  afa006:	62 b1 54 20 5c ee    	vsubps ymm5,ymm21,ymm22
  afa00c:	62 91 0c 20 5c ff    	vsubps ymm7,ymm30,ymm31
  afa012:	62 11 2c 20 5c c3    	vsubps ymm8,ymm26,ymm27
  afa018:	c5 d4 58 c7          	vaddps ymm0,ymm5,ymm7
  afa01c:	62 31 34 20 5c f7    	vsubps ymm14,ymm25,ymm23
  afa022:	c5 6c 5c eb          	vsubps ymm13,ymm2,ymm3
  afa026:	c5 74 5c de          	vsubps ymm11,ymm1,ymm6
  afa02a:	c4 c1 0c 58 d0       	vaddps ymm2,ymm14,ymm8
  afa02f:	62 91 3c 20 5c dc    	vsubps ymm3,ymm24,ymm28
  afa035:	62 d1 14 20 5c c9    	vsubps ymm1,ymm29,ymm9
  afa03b:	c5 d4 5c e7          	vsubps ymm4,ymm5,ymm7
  afa03f:	c4 41 3c 5c f6       	vsubps ymm14,ymm8,ymm14
  afa044:	c4 e3 2d 18 f3 01    	vinsertf128 ymm6,ymm10,xmm3,0x1
  afa04a:	c4 e3 7d 18 fc 01    	vinsertf128 ymm7,ymm0,xmm4,0x1
  afa050:	c5 cd 14 ef          	vunpcklpd ymm5,ymm6,ymm7
  afa054:	c5 fc 29 6c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm5
  afa05a:	c5 cd 15 ef          	vunpckhpd ymm5,ymm6,ymm7
  afa05e:	c5 fc 29 6c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm5
  afa064:	c4 63 1d 18 c1 01    	vinsertf128 ymm8,ymm12,xmm1,0x1
  afa06a:	62 c3 6d 28 18 c6 01 	vinsertf32x4 ymm16,ymm2,xmm14,0x1
  afa071:	62 b1 bd 28 14 e8    	vunpcklpd ymm5,ymm8,ymm16
  afa077:	c5 fc 29 ac 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm5
  afa07e:	00 00 
  afa080:	62 a1 bd 28 15 c0    	vunpckhpd ymm16,ymm8,ymm16
  afa086:	c4 e3 1d 06 c9 31    	vperm2f128 ymm1,ymm12,ymm1,0x31
  afa08c:	c4 c3 6d 06 d6 31    	vperm2f128 ymm2,ymm2,ymm14,0x31
  afa092:	c4 e3 2d 06 db 31    	vperm2f128 ymm3,ymm10,ymm3,0x31
  afa098:	c5 f5 15 ea          	vunpckhpd ymm5,ymm1,ymm2
  afa09c:	c5 fd 29 ac 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm5
  afa0a3:	00 00 
  afa0a5:	c4 e3 7d 06 c4 31    	vperm2f128 ymm0,ymm0,ymm4,0x31
  afa0ab:	c5 f8 10 64 17 50    	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x50]
  afa0b1:	c5 78 10 64 17 40    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x40]
  afa0b7:	c5 f5 14 ca          	vunpcklpd ymm1,ymm1,ymm2
  afa0bb:	c5 fd 29 8c 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm1
  afa0c2:	00 00 
  afa0c4:	62 e1 1c 08 c6 ec 88 	vshufps xmm21,xmm12,xmm4,0x88
  afa0cb:	62 61 1c 08 c6 c4 dd 	vshufps xmm24,xmm12,xmm4,0xdd
  afa0d2:	c5 f8 10 8c 17 b0 00 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0xb0]
  afa0d9:	00 00 
  afa0db:	c5 e5 15 d0          	vunpckhpd ymm2,ymm3,ymm0
  afa0df:	c5 fd 29 94 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm2
  afa0e6:	00 00 
  afa0e8:	c5 f8 10 94 17 a0 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0xa0]
  afa0ef:	00 00 
  afa0f1:	62 e1 6c 08 c6 f1 88 	vshufps xmm22,xmm2,xmm1,0x88
  afa0f8:	62 e1 6c 08 c6 f9 dd 	vshufps xmm23,xmm2,xmm1,0xdd
  afa0ff:	c5 e5 14 c0          	vunpcklpd ymm0,ymm3,ymm0
  afa103:	c5 fd 29 84 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm0
  afa10a:	00 00 
  afa10c:	c5 f8 10 84 17 10 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x110]
  afa113:	00 00 
  afa115:	c5 f8 10 8c 17 00 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x100]
  afa11c:	00 00 
  afa11e:	c5 f0 c6 d8 88       	vshufps xmm3,xmm1,xmm0,0x88
  afa123:	62 b1 74 20 58 e2    	vaddps ymm4,ymm17,ymm18
  afa129:	c5 f0 c6 f0 dd       	vshufps xmm6,xmm1,xmm0,0xdd
  afa12e:	c5 f8 10 8c 17 70 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x170]
  afa135:	00 00 
  afa137:	c5 f8 10 94 17 60 01 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x160]
  afa13e:	00 00 
  afa140:	62 21 64 20 5c d4    	vsubps ymm26,ymm19,ymm20
  afa146:	62 61 6c 08 c6 c9 88 	vshufps xmm25,xmm2,xmm1,0x88
  afa14d:	c5 e8 c6 d1 dd       	vshufps xmm2,xmm2,xmm1,0xdd
  afa152:	c5 f8 10 8c 17 d0 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x1d0]
  afa159:	00 00 
  afa15b:	62 a1 64 20 58 e4    	vaddps ymm20,ymm19,ymm20
  afa161:	62 61 7c 08 10 5c 17 	vmovups xmm27,XMMWORD PTR [rdi+rdx*1+0x1c0]
  afa168:	1c 
  afa169:	62 e1 24 00 c6 d9 88 	vshufps xmm19,xmm27,xmm1,0x88
  afa170:	62 f1 24 00 c6 c9 dd 	vshufps xmm1,xmm27,xmm1,0xdd
  afa177:	62 a1 6c 20 5c c9    	vsubps ymm17,ymm18,ymm17
  afa17d:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x230]
  afa184:	23 
  afa185:	62 61 7c 08 10 5c 17 	vmovups xmm27,XMMWORD PTR [rdi+rdx*1+0x220]
  afa18c:	22 
  afa18d:	62 21 24 00 c6 e2 88 	vshufps xmm28,xmm27,xmm18,0x88
  afa194:	c5 fc 28 84 24 00 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x100]
  afa19b:	00 00 
  afa19d:	62 61 7c 28 58 ec    	vaddps ymm29,ymm0,ymm4
  afa1a3:	62 21 24 00 c6 da dd 	vshufps xmm27,xmm27,xmm18,0xdd
  afa1aa:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x290]
  afa1b1:	29 
  afa1b2:	62 61 7c 08 10 74 17 	vmovups xmm30,XMMWORD PTR [rdi+rdx*1+0x280]
  afa1b9:	28 
  afa1ba:	c5 fc 5c e4          	vsubps ymm4,ymm0,ymm4
  afa1be:	62 21 0c 00 c6 fa 88 	vshufps xmm31,xmm30,xmm18,0x88
  afa1c5:	62 21 0c 00 c6 f2 dd 	vshufps xmm30,xmm30,xmm18,0xdd
  afa1cc:	c5 78 10 8c 17 f0 02 	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x2f0]
  afa1d3:	00 00 
  afa1d5:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x2e0]
  afa1dc:	2e 
  afa1dd:	62 d1 6c 00 c6 c1 88 	vshufps xmm0,xmm18,xmm9,0x88
  afa1e4:	62 51 6c 00 c6 c9 dd 	vshufps xmm9,xmm18,xmm9,0xdd
  afa1eb:	62 81 04 28 58 d2    	vaddps ymm18,ymm15,ymm26
  afa1f1:	62 01 04 28 5c d2    	vsubps ymm26,ymm15,ymm26
  afa1f7:	62 71 3c 20 58 f9    	vaddps ymm15,ymm24,ymm1
  afa1fd:	62 f1 3c 20 5c f9    	vsubps ymm7,ymm24,ymm1
  afa203:	62 21 14 28 58 c4    	vaddps ymm24,ymm13,ymm20
  afa209:	62 31 14 28 5c ec    	vsubps ymm13,ymm13,ymm20
  afa20f:	62 81 64 28 58 e7    	vaddps ymm20,ymm3,ymm31
  afa215:	62 91 64 28 5c ef    	vsubps ymm5,ymm3,ymm31
  afa21b:	62 21 24 28 58 f9    	vaddps ymm31,ymm11,ymm17
  afa221:	62 31 24 28 5c d9    	vsubps ymm11,ymm11,ymm17
  afa227:	62 81 44 20 58 cb    	vaddps ymm17,ymm23,ymm27
  afa22d:	62 81 44 20 5c fb    	vsubps ymm23,ymm23,ymm27
  afa233:	62 03 6d 20 18 da 01 	vinsertf32x4 ymm27,ymm18,xmm26,0x1
  afa23a:	62 83 ed 20 23 d2 03 	vshuff64x2 ymm18,ymm18,ymm26,0x3
  afa241:	62 01 4c 20 58 d4    	vaddps ymm26,ymm22,ymm28
  afa247:	62 81 4c 20 5c f4    	vsubps ymm22,ymm22,ymm28
  afa24d:	62 43 05 20 18 e3 01 	vinsertf32x4 ymm28,ymm31,xmm11,0x1
  afa254:	62 53 85 20 23 db 03 	vshuff64x2 ymm11,ymm31,ymm11,0x3
  afa25b:	62 61 34 20 58 f8    	vaddps ymm31,ymm25,ymm0
  afa261:	62 f1 34 20 5c c0    	vsubps ymm0,ymm25,ymm0
  afa267:	62 63 15 20 18 cc 01 	vinsertf32x4 ymm25,ymm29,xmm4,0x1
  afa26e:	62 f3 95 20 23 e4 03 	vshuff64x2 ymm4,ymm29,ymm4,0x3
  afa275:	62 41 6c 28 58 e9    	vaddps ymm29,ymm2,ymm9
  afa27b:	c4 c1 6c 5c d1       	vsubps ymm2,ymm2,ymm9
  afa280:	62 53 3d 20 18 cd 01 	vinsertf32x4 ymm9,ymm24,xmm13,0x1
  afa287:	62 53 bd 20 23 ed 03 	vshuff64x2 ymm13,ymm24,ymm13,0x3
  afa28e:	62 21 54 20 58 c3    	vaddps ymm24,ymm21,ymm19
  afa294:	62 a1 54 20 5c db    	vsubps ymm19,ymm21,ymm19
  afa29a:	62 d1 b5 20 14 c9    	vunpcklpd ymm1,ymm25,ymm9
  afa2a0:	62 51 b5 20 15 c9    	vunpckhpd ymm9,ymm25,ymm9
  afa2a6:	62 81 4c 28 58 ee    	vaddps ymm21,ymm6,ymm30
  afa2ac:	62 f1 0c 20 5c f6    	vsubps ymm6,ymm30,ymm6
  afa2b2:	62 01 a5 20 14 cc    	vunpcklpd ymm25,ymm27,ymm28
  afa2b8:	62 01 a5 20 15 dc    	vunpckhpd ymm27,ymm27,ymm28
  afa2be:	62 21 44 20 58 e6    	vaddps ymm28,ymm23,ymm22
  afa2c4:	62 a1 4c 20 5c f7    	vsubps ymm22,ymm22,ymm23
  afa2ca:	62 c1 ed 20 15 fb    	vunpckhpd ymm23,ymm18,ymm11
  afa2d0:	62 c1 ed 20 14 d3    	vunpcklpd ymm18,ymm18,ymm11
  afa2d6:	62 61 7c 28 5c f2    	vsubps ymm30,ymm0,ymm2
  afa2dc:	c5 ec 58 d0          	vaddps ymm2,ymm2,ymm0
  afa2e0:	c4 41 5d 15 dd       	vunpckhpd ymm11,ymm4,ymm13
  afa2e5:	c4 c1 5d 14 dd       	vunpcklpd ymm3,ymm4,ymm13
  afa2ea:	62 31 04 28 58 ed    	vaddps ymm13,ymm15,ymm21
  afa2f0:	62 31 04 28 5c fd    	vsubps ymm15,ymm15,ymm21
  afa2f6:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  afa2fc:	c4 41 7c c6 e1 88    	vshufps ymm12,ymm0,ymm9,0x88
  afa302:	c4 41 7c c6 f1 dd    	vshufps ymm14,ymm0,ymm9,0xdd
  afa308:	62 11 2c 20 58 c7    	vaddps ymm8,ymm26,ymm31
  afa30e:	62 11 2c 20 5c cf    	vsubps ymm9,ymm26,ymm31
  afa314:	62 01 7c 20 c6 d3 88 	vshufps ymm26,ymm16,ymm27,0x88
  afa31b:	62 01 7c 20 c6 db dd 	vshufps ymm27,ymm16,ymm27,0xdd
  afa322:	62 a1 3c 20 58 ec    	vaddps ymm21,ymm24,ymm20
  afa328:	62 21 3c 20 5c fc    	vsubps ymm31,ymm24,ymm20
  afa32e:	c5 fc 28 84 24 c0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xc0]
  afa335:	00 00 
  afa337:	62 11 7c 28 c6 d1 dd 	vshufps ymm10,ymm0,ymm25,0xdd
  afa33e:	62 81 7c 28 c6 e1 88 	vshufps ymm20,ymm0,ymm25,0x88
  afa345:	62 01 74 20 58 cd    	vaddps ymm25,ymm17,ymm29
  afa34b:	62 a1 14 20 5c c9    	vsubps ymm17,ymm29,ymm17
  afa351:	c5 fc 28 44 24 60    	vmovaps ymm0,YMMWORD PTR [rsp+0x60]
  afa357:	62 61 7c 28 c6 e9 dd 	vshufps ymm29,ymm0,ymm1,0xdd
  afa35e:	62 e1 7c 28 c6 c1 88 	vshufps ymm16,ymm0,ymm1,0x88
  afa365:	c5 c4 58 c5          	vaddps ymm0,ymm7,ymm5
  afa369:	c5 c4 5c fd          	vsubps ymm7,ymm7,ymm5
  afa36d:	62 62 7d 28 18 05 25 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff57b025]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  afa374:	b0 57 ff 
  afa377:	62 91 4c 20 59 e8    	vmulps ymm5,ymm22,ymm24
  afa37d:	62 91 6c 28 59 d0    	vmulps ymm2,ymm2,ymm24
  afa383:	c5 d4 5c e2          	vsubps ymm4,ymm5,ymm2
  afa387:	c5 d4 58 ca          	vaddps ymm1,ymm5,ymm2
  afa38b:	c5 fc 28 94 24 a0 00 	vmovaps ymm2,YMMWORD PTR [rsp+0xa0]
  afa392:	00 00 
  afa394:	62 a1 6c 28 c6 f7 dd 	vshufps ymm22,ymm2,ymm23,0xdd
  afa39b:	62 b1 6c 28 c6 ef 88 	vshufps ymm5,ymm2,ymm23,0x88
  afa3a2:	62 b1 4c 28 58 d3    	vaddps ymm2,ymm6,ymm19
  afa3a8:	62 e1 64 20 5c fe    	vsubps ymm23,ymm19,ymm6
  afa3ae:	62 91 1c 20 59 f0    	vmulps ymm6,ymm28,ymm24
  afa3b4:	62 81 0c 20 59 d8    	vmulps ymm19,ymm30,ymm24
  afa3ba:	62 21 4c 28 58 e3    	vaddps ymm28,ymm6,ymm19
  afa3c0:	62 61 64 20 5c c6    	vsubps ymm24,ymm19,ymm6
  afa3c6:	c5 fc 28 b4 24 e0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xe0]
  afa3cd:	00 00 
  afa3cf:	62 a1 4c 28 c6 da dd 	vshufps ymm19,ymm6,ymm18,0xdd
  afa3d6:	62 a1 4c 28 c6 d2 88 	vshufps ymm18,ymm6,ymm18,0x88
  afa3dd:	62 91 14 28 58 f1    	vaddps ymm6,ymm13,ymm25
  afa3e3:	62 11 14 08 5c e9    	vsubps xmm13,xmm13,xmm25
  afa3e9:	62 43 4d 28 18 f5 01 	vinsertf32x4 ymm30,ymm6,xmm13,0x1
  afa3f0:	62 91 7c 28 58 f4    	vaddps ymm6,ymm0,ymm28
  afa3f6:	62 91 7c 08 5c c4    	vsubps xmm0,xmm0,xmm28
  afa3fc:	c4 e3 4d 18 c0 01    	vinsertf128 ymm0,ymm6,xmm0,0x1
  afa402:	c5 fc 28 b4 24 20 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x120]
  afa409:	00 00 
  afa40b:	c4 41 4c c6 eb dd    	vshufps ymm13,ymm6,ymm11,0xdd
  afa411:	62 41 4c 28 c6 cb 88 	vshufps ymm25,ymm6,ymm11,0x88
  afa418:	c4 41 04 58 d9       	vaddps ymm11,ymm15,ymm9
  afa41d:	c4 41 00 5c c9       	vsubps xmm9,xmm15,xmm9
  afa422:	c5 7c 28 bc 24 80 00 	vmovaps ymm15,YMMWORD PTR [rsp+0x80]
  afa429:	00 00 
  afa42b:	c5 84 c6 f3 dd       	vshufps ymm6,ymm15,ymm3,0xdd
  afa430:	c5 fc 29 74 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm6
  afa436:	c5 04 c6 fb 88       	vshufps ymm15,ymm15,ymm3,0x88
  afa43b:	c4 43 25 18 d9 01    	vinsertf128 ymm11,ymm11,xmm9,0x1
  afa441:	62 61 44 28 58 e1    	vaddps ymm28,ymm7,ymm1
  afa447:	c5 c0 5c c9          	vsubps xmm1,xmm7,xmm1
  afa44b:	62 11 14 20 c6 cd d8 	vshufps ymm9,ymm29,ymm29,0xd8
  afa452:	c4 c1 1c c6 f4 d8    	vshufps ymm6,ymm12,ymm12,0xd8
  afa458:	62 f3 1d 20 18 f9 01 	vinsertf32x4 ymm7,ymm28,xmm1,0x1
  afa45f:	62 d1 8d 20 14 cb    	vunpcklpd ymm1,ymm30,ymm11
  afa465:	c4 c1 0c c6 de d8    	vshufps ymm3,ymm14,ymm14,0xd8
  afa46b:	62 51 8d 20 15 db    	vunpckhpd ymm11,ymm30,ymm11
  afa471:	62 61 fd 28 14 f7    	vunpcklpd ymm30,ymm0,ymm7
  afa477:	c5 fd 15 c7          	vunpckhpd ymm0,ymm0,ymm7
  afa47b:	c4 41 2c c6 e2 d8    	vshufps ymm12,ymm10,ymm10,0xd8
  afa481:	c5 24 c6 f0 88       	vshufps ymm14,ymm11,ymm0,0x88
  afa486:	c5 a4 c6 c0 dd       	vshufps ymm0,ymm11,ymm0,0xdd
  afa48b:	62 d1 54 20 58 f8    	vaddps ymm7,ymm21,ymm8
  afa491:	62 11 2c 20 c6 d2 d8 	vshufps ymm10,ymm26,ymm26,0xd8
  afa498:	62 51 54 00 5c c0    	vsubps xmm8,xmm21,xmm8
  afa49e:	c5 6c 58 dc          	vaddps ymm11,ymm2,ymm4
  afa4a2:	c4 43 45 18 c0 01    	vinsertf128 ymm8,ymm7,xmm8,0x1
  afa4a8:	62 81 24 20 c6 eb d8 	vshufps ymm21,ymm27,ymm27,0xd8
  afa4af:	62 01 74 20 58 d7    	vaddps ymm26,ymm17,ymm31
  afa4b5:	c5 e8 5c d4          	vsubps xmm2,xmm2,xmm4
  afa4b9:	62 01 44 20 58 d8    	vaddps ymm27,ymm23,ymm24
  afa4bf:	62 b1 5c 20 c6 e4 d8 	vshufps ymm4,ymm20,ymm20,0xd8
  afa4c6:	c5 fc 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm4
  afa4cc:	c4 e3 25 18 d2 01    	vinsertf128 ymm2,ymm11,xmm2,0x1
  afa4d2:	62 91 74 28 c6 fe dd 	vshufps ymm7,ymm1,ymm30,0xdd
  afa4d9:	62 61 44 28 c6 e7 d8 	vshufps ymm28,ymm7,ymm7,0xd8
  afa4e0:	62 b1 7c 20 c6 e0 d8 	vshufps ymm4,ymm16,ymm16,0xd8
  afa4e7:	62 c1 0c 28 c6 e6 d8 	vshufps ymm20,ymm14,ymm14,0xd8
  afa4ee:	c5 7c c6 d8 d8       	vshufps ymm11,ymm0,ymm0,0xd8
  afa4f3:	62 b1 04 00 5c c1    	vsubps xmm0,xmm31,xmm17
  afa4f9:	62 a1 4c 20 c6 ce d8 	vshufps ymm17,ymm22,ymm22,0xd8
  afa500:	62 f3 2d 20 18 c0 01 	vinsertf32x4 ymm0,ymm26,xmm0,0x1
  afa507:	62 11 44 00 5c f0    	vsubps xmm14,xmm23,xmm24
  afa50d:	62 53 25 20 18 f6 01 	vinsertf32x4 ymm14,ymm27,xmm14,0x1
  afa514:	62 e1 54 28 c6 f5 d8 	vshufps ymm22,ymm5,ymm5,0xd8
  afa51b:	62 e1 bd 28 14 c0    	vunpcklpd ymm16,ymm8,ymm0
  afa521:	c5 3d 15 c0          	vunpckhpd ymm8,ymm8,ymm0
  afa525:	62 c1 ed 28 14 fe    	vunpcklpd ymm23,ymm2,ymm14
  afa52b:	62 b1 64 20 c6 eb d8 	vshufps ymm5,ymm19,ymm19,0xd8
  afa532:	c4 c1 6d 15 d6       	vunpckhpd ymm2,ymm2,ymm14
  afa537:	62 b1 7c 20 c6 c7 dd 	vshufps ymm0,ymm16,ymm23,0xdd
  afa53e:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  afa543:	62 21 6c 20 c6 da d8 	vshufps ymm27,ymm18,ymm18,0xd8
  afa54a:	c5 3c c6 f2 88       	vshufps ymm14,ymm8,ymm2,0x88
  afa54f:	62 41 0c 28 c6 ee d8 	vshufps ymm29,ymm14,ymm14,0xd8
  afa556:	c5 bc c6 d2 dd       	vshufps ymm2,ymm8,ymm2,0xdd
  afa55b:	62 41 14 28 c6 c5 d8 	vshufps ymm24,ymm13,ymm13,0xd8
  afa562:	c5 6c c6 f2 d8       	vshufps ymm14,ymm2,ymm2,0xd8
  afa567:	62 b1 7c 20 c6 d7 88 	vshufps ymm2,ymm16,ymm23,0x88
  afa56e:	62 e1 6c 28 c6 d2 d8 	vshufps ymm18,ymm2,ymm2,0xd8
  afa575:	62 81 34 20 c6 f9 d8 	vshufps ymm23,ymm25,ymm25,0xd8
  afa57c:	62 91 74 28 c6 ce 88 	vshufps ymm1,ymm1,ymm30,0x88
  afa583:	62 e1 74 28 c6 d9 d8 	vshufps ymm19,ymm1,ymm1,0xd8
  afa58a:	62 61 7c 28 10 51 02 	vmovups ymm26,YMMWORD PTR [rcx+0x40]
  afa591:	62 41 04 28 c6 f7 d8 	vshufps ymm30,ymm15,ymm15,0xd8
  afa598:	62 61 7c 28 10 49 03 	vmovups ymm25,YMMWORD PTR [rcx+0x60]
  afa59f:	c5 fc 10 89 80 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x180]
  afa5a6:	00 
  afa5a7:	c5 fc 10 91 a0 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x1a0]
  afa5ae:	00 
  afa5af:	62 71 44 20 59 f9    	vmulps ymm15,ymm23,ymm1
  afa5b5:	62 72 4d 20 bc fa    	vfnmadd231ps ymm15,ymm22,ymm2
  afa5bb:	62 e1 4c 20 59 f1    	vmulps ymm22,ymm22,ymm1
  afa5c1:	c5 fc 10 89 40 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x240]
  afa5c8:	00 
  afa5c9:	62 e2 45 20 b8 f2    	vfmadd231ps ymm22,ymm23,ymm2
  afa5cf:	c5 fc 10 91 60 02 00 	vmovups ymm2,YMMWORD PTR [rcx+0x260]
  afa5d6:	00 
  afa5d7:	62 e1 1c 20 59 f9    	vmulps ymm23,ymm28,ymm1
  afa5dd:	62 61 7c 28 59 f9    	vmulps ymm31,ymm0,ymm1
  afa5e3:	62 e2 7d 28 bc fa    	vfnmadd231ps ymm23,ymm0,ymm2
  afa5e9:	c5 fc 10 81 c0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xc0]
  afa5f0:	00 
  afa5f1:	62 62 1d 20 b8 fa    	vfmadd231ps ymm31,ymm28,ymm2
  afa5f7:	c5 fc 10 89 e0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xe0]
  afa5fe:	00 
  afa5ff:	62 61 64 28 59 e0    	vmulps ymm28,ymm3,ymm0
  afa605:	62 62 55 20 bc e1    	vfnmadd231ps ymm28,ymm21,ymm1
  afa60b:	62 f1 54 20 59 c0    	vmulps ymm0,ymm21,ymm0
  afa611:	c5 7c 10 81 80 02 00 	vmovups ymm8,YMMWORD PTR [rcx+0x280]
  afa618:	00 
  afa619:	c4 e2 65 b8 c1       	vfmadd231ps ymm0,ymm3,ymm1
  afa61e:	c5 fc 10 89 a0 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x2a0]
  afa625:	00 
  afa626:	62 d1 5c 20 59 d0    	vmulps ymm2,ymm20,ymm8
  afa62c:	62 c1 14 20 59 c0    	vmulps ymm16,ymm29,ymm8
  afa632:	62 f2 15 20 bc d1    	vfnmadd231ps ymm2,ymm29,ymm1
  afa638:	c5 fc 10 99 00 01 00 	vmovups ymm3,YMMWORD PTR [rcx+0x100]
  afa63f:	00 
  afa640:	62 e2 5d 20 b8 c1    	vfmadd231ps ymm16,ymm20,ymm1
  afa646:	c5 fc 10 89 20 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x120]
  afa64d:	00 
  afa64e:	62 71 0c 20 59 c3    	vmulps ymm8,ymm30,ymm3
  afa654:	62 72 25 20 bc c1    	vfnmadd231ps ymm8,ymm27,ymm1
  afa65a:	62 e1 24 20 59 e3    	vmulps ymm20,ymm27,ymm3
  afa660:	c5 fc 10 99 c0 01 00 	vmovups ymm3,YMMWORD PTR [rcx+0x1c0]
  afa667:	00 
  afa668:	62 e2 0d 20 b8 e1    	vfmadd231ps ymm20,ymm30,ymm1
  afa66e:	c5 fc 10 89 e0 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x1e0]
  afa675:	00 
  afa676:	62 e1 3c 20 59 eb    	vmulps ymm21,ymm24,ymm3
  afa67c:	62 f1 74 20 59 db    	vmulps ymm3,ymm17,ymm3
  afa682:	62 e2 75 20 bc e9    	vfnmadd231ps ymm21,ymm17,ymm1
  afa688:	c5 7c 10 a9 80 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0x80]
  afa68f:	00 
  afa690:	62 f2 3d 20 b8 d9    	vfmadd231ps ymm3,ymm24,ymm1
  afa696:	c5 fc 10 89 a0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xa0]
  afa69d:	00 
  afa69e:	62 81 34 28 59 ca    	vmulps ymm17,ymm9,ymm26
  afa6a4:	62 82 1d 28 bc c9    	vfnmadd231ps ymm17,ymm12,ymm25
  afa6aa:	62 11 1c 28 59 e2    	vmulps ymm12,ymm12,ymm26
  afa6b0:	62 61 7c 28 10 41 10 	vmovups ymm24,YMMWORD PTR [rcx+0x200]
  afa6b7:	62 12 35 28 b8 e1    	vfmadd231ps ymm12,ymm9,ymm25
  afa6bd:	c5 7c 10 89 20 02 00 	vmovups ymm9,YMMWORD PTR [rcx+0x220]
  afa6c4:	00 
  afa6c5:	62 01 64 20 59 c8    	vmulps ymm25,ymm19,ymm24
  afa6cb:	62 01 6c 20 59 c0    	vmulps ymm24,ymm18,ymm24
  afa6d1:	62 42 6d 20 bc c9    	vfnmadd231ps ymm25,ymm18,ymm9
  afa6d7:	62 e1 7c 28 10 51 0a 	vmovups ymm18,YMMWORD PTR [rcx+0x140]
  afa6de:	62 42 65 20 b8 c1    	vfmadd231ps ymm24,ymm19,ymm9
  afa6e4:	c5 7c 10 89 60 01 00 	vmovups ymm9,YMMWORD PTR [rcx+0x160]
  afa6eb:	00 
  afa6ec:	62 c1 4c 28 59 dd    	vmulps ymm19,ymm6,ymm13
  afa6f2:	62 e2 2d 28 bc d9    	vfnmadd231ps ymm19,ymm10,ymm1
  afa6f8:	c4 41 2c 59 ed       	vmulps ymm13,ymm10,ymm13
  afa6fd:	c5 7c 10 91 c0 02 00 	vmovups ymm10,YMMWORD PTR [rcx+0x2c0]
  afa704:	00 
  afa705:	62 63 7d 28 04 54 24 	vpermilps ymm26,YMMWORD PTR [rsp+0x60],0xd8
  afa70c:	03 d8 
  afa70e:	c4 62 4d b8 e9       	vfmadd231ps ymm13,ymm6,ymm1
  afa713:	c5 fc 10 89 e0 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x2e0]
  afa71a:	00 
  afa71b:	62 41 24 28 59 da    	vmulps ymm27,ymm11,ymm10
  afa721:	62 62 0d 28 bc d9    	vfnmadd231ps ymm27,ymm14,ymm1
  afa727:	c4 c1 0c 59 f2       	vmulps ymm6,ymm14,ymm10
  afa72c:	62 41 5c 28 58 ef    	vaddps ymm29,ymm4,ymm15
  afa732:	c4 e2 25 b8 f1       	vfmadd231ps ymm6,ymm11,ymm1
  afa737:	62 b1 1c 20 58 cf    	vaddps ymm1,ymm28,ymm23
  afa73d:	62 31 2c 20 59 da    	vmulps ymm11,ymm26,ymm18
  afa743:	c4 42 55 bc d9       	vfnmadd231ps ymm11,ymm5,ymm9
  afa748:	62 b1 54 28 59 ea    	vmulps ymm5,ymm5,ymm18
  afa74e:	62 e1 3c 28 58 d2    	vaddps ymm18,ymm8,ymm2
  afa754:	62 d2 2d 20 b8 e9    	vfmadd231ps ymm5,ymm26,ymm9
  afa75a:	62 21 54 20 58 d1    	vaddps ymm26,ymm21,ymm17
  afa760:	62 21 34 20 58 f3    	vaddps ymm30,ymm25,ymm19
  afa766:	c5 bc 5c d2          	vsubps ymm2,ymm8,ymm2
  afa76a:	c5 fc 29 94 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm2
  afa771:	00 00 
  afa773:	c5 1c 58 cb          	vaddps ymm9,ymm12,ymm3
  afa777:	c4 c1 64 5c fc       	vsubps ymm7,ymm3,ymm12
  afa77c:	62 51 24 20 58 d3    	vaddps ymm10,ymm27,ymm11
  afa782:	62 a1 34 20 5c db    	vsubps ymm19,ymm25,ymm19
  afa788:	62 61 4c 28 58 cd    	vaddps ymm25,ymm6,ymm5
  afa78e:	c5 4c 5c c5          	vsubps ymm8,ymm6,ymm5
  afa792:	62 91 7c 28 58 df    	vaddps ymm3,ymm0,ymm31
  afa798:	c4 41 5c 5c ff       	vsubps ymm15,ymm4,ymm15
  afa79d:	62 b1 5c 20 58 e8    	vaddps ymm5,ymm20,ymm16
  afa7a3:	62 01 7c 28 5c ff    	vsubps ymm31,ymm0,ymm31
  afa7a9:	62 31 5c 20 5c f0    	vsubps ymm14,ymm20,ymm16
  afa7af:	62 e1 14 20 58 e1    	vaddps ymm20,ymm29,ymm1
  afa7b5:	62 d1 3c 20 58 c5    	vaddps ymm0,ymm24,ymm13
  afa7bb:	62 a1 74 20 5c ed    	vsubps ymm21,ymm17,ymm21
  afa7c1:	62 41 3c 20 5c c5    	vsubps ymm24,ymm24,ymm13
  afa7c7:	62 91 6c 20 58 d2    	vaddps ymm2,ymm18,ymm26
  afa7cd:	c5 fc 29 94 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm2
  afa7d4:	00 00 
  afa7d6:	c5 fc 28 54 24 40    	vmovaps ymm2,YMMWORD PTR [rsp+0x40]
  afa7dc:	62 71 4c 20 58 ea    	vaddps ymm13,ymm22,ymm2
  afa7e2:	62 01 24 28 5c db    	vsubps ymm27,ymm11,ymm27
  afa7e8:	62 b1 6c 28 5c e6    	vsubps ymm4,ymm2,ymm22
  afa7ee:	62 51 0c 20 58 e2    	vaddps ymm12,ymm30,ymm10
  afa7f4:	62 c1 54 28 58 f1    	vaddps ymm22,ymm5,ymm9
  afa7fa:	62 81 44 20 5c fc    	vsubps ymm23,ymm23,ymm28
  afa800:	62 01 7c 28 58 e1    	vaddps ymm28,ymm0,ymm25
  afa806:	62 81 6c 20 5c ca    	vsubps ymm17,ymm18,ymm26
  afa80c:	c5 fc 28 b4 24 80 00 	vmovaps ymm6,YMMWORD PTR [rsp+0x80]
  afa813:	00 00 
  afa815:	c5 fc 28 d7          	vmovaps ymm2,ymm7
  afa819:	c5 4c 58 df          	vaddps ymm11,ymm6,ymm7
  afa81d:	62 51 0c 20 5c d2    	vsubps ymm10,ymm30,ymm10
  afa823:	62 a1 0c 28 58 d5    	vaddps ymm18,ymm14,ymm21
  afa829:	62 e1 14 20 5c c1    	vsubps ymm16,ymm29,ymm1
  afa82f:	62 91 3c 20 58 cb    	vaddps ymm1,ymm24,ymm27
  afa835:	c4 41 54 5c c9       	vsubps ymm9,ymm5,ymm9
  afa83a:	62 f1 6c 20 5c e9    	vsubps ymm5,ymm18,ymm1
  afa840:	c5 fc 29 ac 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm5
  afa847:	00 00 
  afa849:	62 61 6c 20 58 d1    	vaddps ymm26,ymm18,ymm1
  afa84f:	62 c1 64 20 58 d0    	vaddps ymm18,ymm19,ymm8
  afa855:	62 91 7c 28 5c c1    	vsubps ymm0,ymm0,ymm25
  afa85b:	62 b1 24 28 58 fa    	vaddps ymm7,ymm11,ymm18
  afa861:	62 a1 24 28 5c d2    	vsubps ymm18,ymm11,ymm18
  afa867:	62 41 64 28 58 cd    	vaddps ymm25,ymm3,ymm13
  afa86d:	62 61 14 28 5c eb    	vsubps ymm29,ymm13,ymm3
  afa873:	c5 b4 5c c8          	vsubps ymm1,ymm9,ymm0
  afa877:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  afa87d:	c5 b4 58 d8          	vaddps ymm3,ymm9,ymm0
  afa881:	62 11 04 28 58 cf    	vaddps ymm9,ymm15,ymm31
  afa887:	62 01 04 28 5c f7    	vsubps ymm30,ymm15,ymm31
  afa88d:	62 41 74 20 58 fa    	vaddps ymm31,ymm17,ymm10
  afa893:	62 d1 74 20 5c c2    	vsubps ymm0,ymm17,ymm10
  afa899:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  afa89f:	c5 4c 5c da          	vsubps ymm11,ymm6,ymm2
  afa8a3:	62 71 44 20 58 ec    	vaddps ymm13,ymm23,ymm4
  afa8a9:	62 d1 64 20 5c e8    	vsubps ymm5,ymm19,ymm8
  afa8af:	c5 fc 28 8c 24 c0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xc0]
  afa8b6:	00 00 
  afa8b8:	c5 1c 58 d1          	vaddps ymm10,ymm12,ymm1
  afa8bc:	62 b1 5c 28 5c e7    	vsubps ymm4,ymm4,ymm23
  afa8c2:	62 81 4c 20 58 dc    	vaddps ymm19,ymm22,ymm28
  afa8c8:	62 31 0c 28 5c f5    	vsubps ymm14,ymm14,ymm21
  afa8ce:	62 51 5c 20 58 fa    	vaddps ymm15,ymm20,ymm10
  afa8d4:	62 81 3c 20 5c eb    	vsubps ymm21,ymm24,ymm27
  afa8da:	c4 e2 7d 18 05 7d ab 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff57ab7d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  afa8e1:	57 ff 
  afa8e3:	c5 fc 28 f0          	vmovaps ymm6,ymm0
  afa8e7:	62 32 7d 28 ac d4    	vfnmadd213ps ymm10,ymm0,ymm20
  afa8ed:	62 a1 34 20 58 fb    	vaddps ymm23,ymm25,ymm19
  afa8f3:	c5 fc 28 d7          	vmovaps ymm2,ymm7
  afa8f7:	c4 c2 45 ac f1       	vfnmadd213ps ymm6,ymm7,ymm9
  afa8fc:	62 c1 7c 28 28 c9    	vmovaps ymm17,ymm9
  afa902:	62 81 4c 20 5c f4    	vsubps ymm22,ymm22,ymm28
  afa908:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  afa90c:	62 62 7d 28 18 25 be 	vbroadcastss ymm28,DWORD PTR [rip+0xffffffffff57a9be]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  afa913:	a9 57 ff 
  afa916:	62 71 1c 20 59 44 24 	vmulps ymm8,ymm28,YMMWORD PTR [rsp+0xa0]
  afa91d:	05 
  afa91e:	62 d2 2d 20 ac fd    	vfnmadd213ps ymm7,ymm26,ymm13
  afa924:	62 11 6c 20 59 cc    	vmulps ymm9,ymm18,ymm28
  afa92a:	62 82 7d 28 ac d9    	vfnmadd213ps ymm19,ymm0,ymm25
  afa930:	62 c1 4c 28 58 d0    	vaddps ymm18,ymm6,ymm8
  afa936:	c4 41 74 5c e4       	vsubps ymm12,ymm1,ymm12
  afa93b:	62 e1 7c 28 28 e0    	vmovaps ymm20,ymm0
  afa941:	c4 c1 4c 5c f0       	vsubps ymm6,ymm6,ymm8
  afa946:	62 41 44 28 5c c1    	vsubps ymm24,ymm7,ymm9
  afa94c:	62 a2 05 20 ac e0    	vfnmadd213ps ymm20,ymm31,ymm16
  afa952:	c5 34 58 cf          	vaddps ymm9,ymm9,ymm7
  afa956:	62 61 7c 28 28 c8    	vmovaps ymm25,ymm0
  afa95c:	62 02 65 28 ac cd    	vfnmadd213ps ymm25,ymm3,ymm29
  afa962:	62 91 7c 20 58 ff    	vaddps ymm7,ymm16,ymm31
  afa968:	62 e1 24 28 58 c5    	vaddps ymm16,ymm11,ymm5
  afa96e:	62 71 14 20 58 c3    	vaddps ymm8,ymm29,ymm3
  afa974:	62 21 0c 20 58 f8    	vaddps ymm31,ymm30,ymm16
  afa97a:	62 82 7d 28 ac c6    	vfnmadd213ps ymm16,ymm0,ymm30
  afa980:	62 21 0c 28 58 dd    	vaddps ymm27,ymm14,ymm21
  afa986:	62 21 0c 28 5c ed    	vsubps ymm29,ymm14,ymm21
  afa98c:	62 81 5c 28 58 eb    	vaddps ymm21,ymm4,ymm27
  afa992:	62 62 7d 28 ac dc    	vfnmadd213ps ymm27,ymm0,ymm4
  afa998:	62 91 4c 20 59 e4    	vmulps ymm4,ymm22,ymm28
  afa99e:	c5 a4 5c dd          	vsubps ymm3,ymm11,ymm5
  afa9a2:	62 e1 2c 28 58 f4    	vaddps ymm22,ymm10,ymm4
  afa9a8:	62 11 1c 28 59 e4    	vmulps ymm12,ymm12,ymm28
  afa9ae:	62 61 2c 28 5c f4    	vsubps ymm30,ymm10,ymm4
  afa9b4:	62 d1 64 20 5c e4    	vsubps ymm4,ymm19,ymm12
  afa9ba:	62 51 64 20 58 f4    	vaddps ymm14,ymm19,ymm12
  afa9c0:	62 71 74 20 58 d2    	vaddps ymm10,ymm17,ymm2
  afa9c6:	62 f1 1c 20 59 6c 24 	vmulps ymm5,ymm28,YMMWORD PTR [rsp+0x60]
  afa9cd:	03 
  afa9ce:	62 11 14 28 58 e2    	vaddps ymm12,ymm13,ymm26
  afa9d4:	62 f1 5c 20 5c cd    	vsubps ymm1,ymm20,ymm5
  afa9da:	62 71 1c 20 59 6c 24 	vmulps ymm13,ymm28,YMMWORD PTR [rsp+0x40]
  afa9e1:	02 
  afa9e2:	62 91 14 20 59 c4    	vmulps ymm0,ymm29,ymm28
  afa9e8:	62 71 5c 20 58 dd    	vaddps ymm11,ymm20,ymm5
  afa9ee:	62 c1 34 20 58 cd    	vaddps ymm17,ymm25,ymm13
  afa9f4:	62 51 34 20 5c ed    	vsubps ymm13,ymm25,ymm13
  afa9fa:	62 e1 7c 20 58 d8    	vaddps ymm19,ymm16,ymm0
  afaa00:	62 91 64 28 59 dc    	vmulps ymm3,ymm3,ymm28
  afaa06:	62 f1 7c 20 5c c0    	vsubps ymm0,ymm16,ymm0
  afaa0c:	62 e1 24 20 5c c3    	vsubps ymm16,ymm27,ymm3
  afaa12:	62 f1 24 20 58 eb    	vaddps ymm5,ymm27,ymm3
  afaa18:	62 b1 7c 28 28 df    	vmovaps ymm3,ymm23
  afaa1e:	62 e1 7c 28 28 25 78 	vmovaps ymm20,YMMWORD PTR [rip+0xffffffffff57ae78]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  afaa25:	ae 57 ff 
  afaa28:	62 d2 5d 20 7f df    	vpermt2ps ymm3,ymm20,ymm15
  afaa2e:	62 61 7c 28 28 0d a8 	vmovaps ymm25,YMMWORD PTR [rip+0xffffffffff57c7a8]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  afaa35:	c7 57 ff 
  afaa38:	62 c2 35 20 7f ff    	vpermt2ps ymm23,ymm25,ymm15
  afaa3e:	62 e1 7c 28 11 3c 16 	vmovups YMMWORD PTR [rsi+rdx*1],ymm23
  afaa45:	c5 fc 11 5c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm3
  afaa4b:	62 91 7c 28 28 d8    	vmovaps ymm3,ymm24
  afaa51:	62 b2 5d 20 7f da    	vpermt2ps ymm3,ymm20,ymm18
  afaa57:	62 22 35 20 7f c2    	vpermt2ps ymm24,ymm25,ymm18
  afaa5d:	62 61 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm24
  afaa64:	02 
  afaa65:	c5 fc 11 5c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm3
  afaa6b:	62 b1 7c 28 28 d9    	vmovaps ymm3,ymm17
  afaa71:	62 f2 5d 20 7f d9    	vpermt2ps ymm3,ymm20,ymm1
  afaa77:	62 e2 35 20 7f c9    	vpermt2ps ymm17,ymm25,ymm1
  afaa7d:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm17
  afaa84:	04 
  afaa85:	62 b1 7c 28 28 cd    	vmovaps ymm1,ymm21
  afaa8b:	62 92 5d 20 7f cf    	vpermt2ps ymm1,ymm20,ymm31
  afaa91:	62 82 35 20 7f ef    	vpermt2ps ymm21,ymm25,ymm31
  afaa97:	c5 fc 11 9c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm3
  afaa9e:	00 00 
  afaaa0:	62 e1 7c 28 11 6c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm21
  afaaa7:	06 
  afaaa8:	c5 fc 11 8c 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm1
  afaaaf:	00 00 
  afaab1:	c5 fc 28 cc          	vmovaps ymm1,ymm4
  afaab5:	62 b2 5d 20 7f ce    	vpermt2ps ymm1,ymm20,ymm22
  afaabb:	62 b2 35 20 7f e6    	vpermt2ps ymm4,ymm25,ymm22
  afaac1:	c5 fc 11 a4 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm4
  afaac8:	00 00 
  afaaca:	c5 fc 11 8c 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm1
  afaad1:	00 00 
  afaad3:	c5 7c 29 c9          	vmovaps ymm1,ymm9
  afaad7:	62 f2 5d 20 7f ce    	vpermt2ps ymm1,ymm20,ymm6
  afaadd:	62 72 35 20 7f ce    	vpermt2ps ymm9,ymm25,ymm6
  afaae3:	c5 7c 11 8c 16 40 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm9
  afaaea:	00 00 
  afaaec:	c5 fc 11 8c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm1
  afaaf3:	00 00 
  afaaf5:	c5 7c 29 c1          	vmovaps ymm1,ymm8
  afaaf9:	62 f2 5d 20 7f cf    	vpermt2ps ymm1,ymm20,ymm7
  afaaff:	62 72 35 20 7f c7    	vpermt2ps ymm8,ymm25,ymm7
  afab05:	c5 7c 11 84 16 80 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x180],ymm8
  afab0c:	00 00 
  afab0e:	62 b1 7c 28 28 d8    	vmovaps ymm3,ymm16
  afab14:	62 b2 5d 20 7f db    	vpermt2ps ymm3,ymm20,ymm19
  afab1a:	62 a2 35 20 7f c3    	vpermt2ps ymm16,ymm25,ymm19
  afab20:	c5 fc 11 8c 16 a0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a0],ymm1
  afab27:	00 00 
  afab29:	62 e1 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm16
  afab30:	0e 
  afab31:	c5 fc 11 9c 16 e0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1e0],ymm3
  afab38:	00 00 
  afab3a:	c5 7c 29 f1          	vmovaps ymm1,ymm14
  afab3e:	62 92 5d 20 7f ce    	vpermt2ps ymm1,ymm20,ymm30
  afab44:	62 12 35 20 7f f6    	vpermt2ps ymm14,ymm25,ymm30
  afab4a:	c5 7c 11 b4 16 00 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x200],ymm14
  afab51:	00 00 
  afab53:	c5 fc 11 8c 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm1
  afab5a:	00 00 
  afab5c:	c5 7c 29 e1          	vmovaps ymm1,ymm12
  afab60:	62 d2 5d 20 7f ca    	vpermt2ps ymm1,ymm20,ymm10
  afab66:	62 52 35 20 7f e2    	vpermt2ps ymm12,ymm25,ymm10
  afab6c:	c5 7c 11 a4 16 40 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x240],ymm12
  afab73:	00 00 
  afab75:	c5 fc 11 8c 16 60 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x260],ymm1
  afab7c:	00 00 
  afab7e:	c5 7c 29 e9          	vmovaps ymm1,ymm13
  afab82:	62 d2 5d 20 7f cb    	vpermt2ps ymm1,ymm20,ymm11
  afab88:	62 52 35 20 7f eb    	vpermt2ps ymm13,ymm25,ymm11
  afab8e:	c5 7c 11 ac 16 80 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x280],ymm13
  afab95:	00 00 
  afab97:	c5 fc 28 d5          	vmovaps ymm2,ymm5
  afab9b:	62 f2 5d 20 7f d0    	vpermt2ps ymm2,ymm20,ymm0
  afaba1:	62 f2 35 20 7f e8    	vpermt2ps ymm5,ymm25,ymm0
  afaba7:	c5 fc 11 8c 16 a0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2a0],ymm1
  afabae:	00 00 
  afabb0:	c5 fc 11 ac 16 c0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2c0],ymm5
  afabb7:	00 00 
  afabb9:	c5 fc 11 94 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm2
  afabc0:	00 00 
  afabc2:	48 81 c2 00 03 00 00 	add    rdx,0x300
  afabc9:	48 39 d0             	cmp    rax,rdx
  afabcc:	0f 85 1e f2 ff ff    	jne    af9df0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  afabd2:	48 89 ec             	mov    rsp,rbp
  afabd5:	5d                   	pop    rbp
  afabd6:	c5 f8 77             	vzeroupper
  afabd9:	c3                   	ret
