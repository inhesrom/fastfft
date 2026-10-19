
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ac7e40 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ac7e40:	48 c1 e2 04          	shl    rdx,0x4
  ac7e44:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  ac7e48:	31 d2                	xor    edx,edx
  ac7e4a:	c4 e2 7d 18 05 81 d4 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5ad481]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ac7e51:	5a ff 
  ac7e53:	c4 e2 7d 18 0d 04 d6 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5ad604]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ac7e5a:	5a ff 
  ac7e5c:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  ac7e60:	c5 fc 28 1d 58 04 5b 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff5b0458]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  ac7e67:	ff 
  ac7e68:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  ac7e6f:	00 
  ac7e70:	c5 fc 10 64 17 30    	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x30]
  ac7e76:	c5 f8 10 6c 17 50    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x50]
  ac7e7c:	c5 dc c6 f5 88       	vshufps ymm6,ymm4,ymm5,0x88
  ac7e81:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  ac7e87:	c5 fc 10 7c 17 60    	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x60]
  ac7e8d:	c5 78 10 84 17 80 00 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x80]
  ac7e94:	00 00 
  ac7e96:	c4 41 44 c6 c8 88    	vshufps ymm9,ymm7,ymm8,0x88
  ac7e9c:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  ac7ea2:	c4 41 4c 5c d1       	vsubps ymm10,ymm6,ymm9
  ac7ea7:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  ac7eab:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  ac7eb0:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  ac7eb6:	c4 c1 44 c6 e8 dd    	vshufps ymm5,ymm7,ymm8,0xdd
  ac7ebc:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  ac7ec2:	c5 dc 58 fd          	vaddps ymm7,ymm4,ymm5
  ac7ec6:	c5 7c 10 04 17       	vmovups ymm8,YMMWORD PTR [rdi+rdx*1]
  ac7ecb:	c5 78 10 5c 17 20    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x20]
  ac7ed1:	c4 41 3c c6 e3 dd    	vshufps ymm12,ymm8,ymm11,0xdd
  ac7ed7:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  ac7edd:	c5 7c 28 e9          	vmovaps ymm13,ymm1
  ac7ee1:	c4 42 45 ac ec       	vfnmadd213ps ymm13,ymm7,ymm12
  ac7ee6:	c4 41 2c 58 f5       	vaddps ymm14,ymm10,ymm13
  ac7eeb:	c5 b4 58 f6          	vaddps ymm6,ymm9,ymm6
  ac7eef:	c4 41 3c c6 c3 88    	vshufps ymm8,ymm8,ymm11,0x88
  ac7ef5:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  ac7efb:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  ac7eff:	c4 42 4d ac c8       	vfnmadd213ps ymm9,ymm6,ymm8
  ac7f04:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  ac7f08:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  ac7f0c:	c5 b4 5c ec          	vsubps ymm5,ymm9,ymm4
  ac7f10:	c4 41 14 5c da       	vsubps ymm11,ymm13,ymm10
  ac7f15:	c5 b4 58 e4          	vaddps ymm4,ymm9,ymm4
  ac7f19:	c5 1c 58 e7          	vaddps ymm12,ymm12,ymm7
  ac7f1d:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  ac7f21:	c5 f8 28 fe          	vmovaps xmm7,xmm6
  ac7f25:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  ac7f2b:	c5 78 28 c4          	vmovaps xmm8,xmm4
  ac7f2f:	c4 c3 7d 19 e1 01    	vextractf128 xmm9,ymm4,0x1
  ac7f35:	c5 78 28 d5          	vmovaps xmm10,xmm5
  ac7f39:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  ac7f3f:	c5 cd 14 f5          	vunpcklpd ymm6,ymm6,ymm5
  ac7f43:	c4 41 45 15 ea       	vunpckhpd ymm13,ymm7,ymm10
  ac7f48:	c4 c1 45 14 ea       	vunpcklpd ymm5,ymm7,ymm10
  ac7f4d:	c5 fa 7e fc          	vmovq  xmm7,xmm4
  ac7f51:	c4 c1 3d 73 d8 08    	vpsrldq ymm8,ymm8,0x8
  ac7f57:	c4 63 35 0c fa cc    	vblendps ymm15,ymm9,ymm2,0xcc
  ac7f5d:	c5 d4 c6 e7 88       	vshufps ymm4,ymm5,ymm7,0x88
  ac7f62:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ac7f67:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  ac7f6c:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ac7f71:	c4 c1 14 c6 f8 88    	vshufps ymm7,ymm13,ymm8,0x88
  ac7f77:	c5 44 c6 d7 d8       	vshufps ymm10,ymm7,ymm7,0xd8
  ac7f7c:	c4 c1 14 c6 f8 dd    	vshufps ymm7,ymm13,ymm8,0xdd
  ac7f82:	c5 44 c6 c7 d8       	vshufps ymm8,ymm7,ymm7,0xd8
  ac7f87:	c4 c1 4c c6 ff 88    	vshufps ymm7,ymm6,ymm15,0x88
  ac7f8d:	c5 44 c6 cf d8       	vshufps ymm9,ymm7,ymm7,0xd8
  ac7f92:	c4 c1 4c c6 f7 dd    	vshufps ymm6,ymm6,ymm15,0xdd
  ac7f98:	c5 cc c6 fe d8       	vshufps ymm7,ymm6,ymm6,0xd8
  ac7f9d:	c5 78 29 e6          	vmovaps xmm6,xmm12
  ac7fa1:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  ac7fa7:	c4 41 78 28 eb       	vmovaps xmm13,xmm11
  ac7fac:	c4 43 7d 19 df 01    	vextractf128 xmm15,ymm11,0x1
  ac7fb2:	62 c1 7c 08 28 c6    	vmovaps xmm16,xmm14
  ac7fb8:	c4 43 7d 19 f6 01    	vextractf128 xmm14,ymm14,0x1
  ac7fbe:	c4 41 1d 14 f6       	vunpcklpd ymm14,ymm12,ymm14
  ac7fc3:	62 a1 cd 28 15 c8    	vunpckhpd ymm17,ymm6,ymm16
  ac7fc9:	62 31 cd 28 14 e0    	vunpcklpd ymm12,ymm6,ymm16
  ac7fcf:	c4 41 7a 7e db       	vmovq  xmm11,xmm11
  ac7fd4:	c4 c1 15 73 dd 08    	vpsrldq ymm13,ymm13,0x8
  ac7fda:	c4 63 05 0c fa cc    	vblendps ymm15,ymm15,ymm2,0xcc
  ac7fe0:	c4 c1 1c c6 f3 88    	vshufps ymm6,ymm12,ymm11,0x88
  ac7fe6:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ac7feb:	c4 41 1c c6 db dd    	vshufps ymm11,ymm12,ymm11,0xdd
  ac7ff1:	c4 41 24 c6 e3 d8    	vshufps ymm12,ymm11,ymm11,0xd8
  ac7ff7:	62 51 74 20 c6 dd 88 	vshufps ymm11,ymm17,ymm13,0x88
  ac7ffe:	62 c1 24 28 c6 c3 d8 	vshufps ymm16,ymm11,ymm11,0xd8
  ac8005:	62 51 74 20 c6 dd dd 	vshufps ymm11,ymm17,ymm13,0xdd
  ac800c:	c4 41 24 c6 eb d8    	vshufps ymm13,ymm11,ymm11,0xd8
  ac8012:	c4 41 0c c6 df 88    	vshufps ymm11,ymm14,ymm15,0x88
  ac8018:	62 c1 24 28 c6 cb d8 	vshufps ymm17,ymm11,ymm11,0xd8
  ac801f:	c4 41 0c c6 df dd    	vshufps ymm11,ymm14,ymm15,0xdd
  ac8025:	c4 41 24 c6 f3 d8    	vshufps ymm14,ymm11,ymm11,0xd8
  ac802b:	c5 7c 10 b9 80 00 00 	vmovups ymm15,YMMWORD PTR [rcx+0x80]
  ac8032:	00 
  ac8033:	62 e1 7c 28 10 51 05 	vmovups ymm18,YMMWORD PTR [rcx+0xa0]
  ac803a:	c4 41 2c 59 df       	vmulps ymm11,ymm10,ymm15
  ac803f:	62 32 7d 20 bc da    	vfnmadd231ps ymm11,ymm16,ymm18
  ac8045:	62 51 7c 20 59 ff    	vmulps ymm15,ymm16,ymm15
  ac804b:	62 e1 7c 28 10 41 08 	vmovups ymm16,YMMWORD PTR [rcx+0x100]
  ac8052:	62 32 2d 28 b8 fa    	vfmadd231ps ymm15,ymm10,ymm18
  ac8058:	c5 7c 10 91 20 01 00 	vmovups ymm10,YMMWORD PTR [rcx+0x120]
  ac805f:	00 
  ac8060:	62 a1 34 28 59 d0    	vmulps ymm18,ymm9,ymm16
  ac8066:	62 c2 75 20 bc d2    	vfnmadd231ps ymm18,ymm17,ymm10
  ac806c:	62 a1 74 20 59 c0    	vmulps ymm16,ymm17,ymm16
  ac8072:	62 e1 7c 28 10 49 06 	vmovups ymm17,YMMWORD PTR [rcx+0xc0]
  ac8079:	62 c2 35 28 b8 c2    	vfmadd231ps ymm16,ymm9,ymm10
  ac807f:	c5 7c 10 89 e0 00 00 	vmovups ymm9,YMMWORD PTR [rcx+0xe0]
  ac8086:	00 
  ac8087:	62 31 3c 28 59 d1    	vmulps ymm10,ymm8,ymm17
  ac808d:	c4 42 15 bc d1       	vfnmadd231ps ymm10,ymm13,ymm9
  ac8092:	62 31 14 28 59 e9    	vmulps ymm13,ymm13,ymm17
  ac8098:	62 e1 7c 28 10 49 0a 	vmovups ymm17,YMMWORD PTR [rcx+0x140]
  ac809f:	c4 42 3d b8 e9       	vfmadd231ps ymm13,ymm8,ymm9
  ac80a4:	c5 7c 10 81 60 01 00 	vmovups ymm8,YMMWORD PTR [rcx+0x160]
  ac80ab:	00 
  ac80ac:	62 31 44 28 59 c9    	vmulps ymm9,ymm7,ymm17
  ac80b2:	c4 42 0d bc c8       	vfnmadd231ps ymm9,ymm14,ymm8
  ac80b7:	62 31 0c 28 59 f1    	vmulps ymm14,ymm14,ymm17
  ac80bd:	62 e1 7c 28 10 49 02 	vmovups ymm17,YMMWORD PTR [rcx+0x40]
  ac80c4:	c4 42 45 b8 f0       	vfmadd231ps ymm14,ymm7,ymm8
  ac80c9:	c5 fc 10 79 60       	vmovups ymm7,YMMWORD PTR [rcx+0x60]
  ac80ce:	62 31 54 28 59 c1    	vmulps ymm8,ymm5,ymm17
  ac80d4:	c4 62 1d bc c7       	vfnmadd231ps ymm8,ymm12,ymm7
  ac80d9:	62 31 1c 28 59 e1    	vmulps ymm12,ymm12,ymm17
  ac80df:	62 a1 24 28 58 ca    	vaddps ymm17,ymm11,ymm18
  ac80e5:	c4 62 55 b8 e7       	vfmadd231ps ymm12,ymm5,ymm7
  ac80ea:	62 b1 5c 28 58 e9    	vaddps ymm5,ymm4,ymm17
  ac80f0:	c4 c1 34 58 f8       	vaddps ymm7,ymm9,ymm8
  ac80f5:	62 e2 75 28 ac cc    	vfnmadd213ps ymm17,ymm1,ymm4
  ac80fb:	62 a1 04 28 58 d8    	vaddps ymm19,ymm15,ymm16
  ac8101:	62 31 04 28 5c f8    	vsubps ymm15,ymm15,ymm16
  ac8107:	c5 ac 58 e7          	vaddps ymm4,ymm10,ymm7
  ac810b:	c4 62 75 bc d7       	vfnmadd231ps ymm10,ymm1,ymm7
  ac8110:	c4 c1 0c 58 fc       	vaddps ymm7,ymm14,ymm12
  ac8115:	c4 41 0c 5c e4       	vsubps ymm12,ymm14,ymm12
  ac811a:	62 71 64 20 58 f6    	vaddps ymm14,ymm19,ymm6
  ac8120:	62 e2 75 28 ac de    	vfnmadd213ps ymm19,ymm1,ymm6
  ac8126:	62 b1 24 28 5c f2    	vsubps ymm6,ymm11,ymm18
  ac812c:	c5 14 58 df          	vaddps ymm11,ymm13,ymm7
  ac8130:	c4 62 75 bc ef       	vfnmadd231ps ymm13,ymm1,ymm7
  ac8135:	c5 84 59 f8          	vmulps ymm7,ymm15,ymm0
  ac8139:	c4 41 34 5c c0       	vsubps ymm8,ymm9,ymm8
  ac813e:	62 71 74 20 58 cf    	vaddps ymm9,ymm17,ymm7
  ac8144:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  ac8148:	62 f1 74 20 5c ff    	vsubps ymm7,ymm17,ymm7
  ac814e:	c4 41 2c 58 fc       	vaddps ymm15,ymm10,ymm12
  ac8153:	c5 cc 59 f0          	vmulps ymm6,ymm6,ymm0
  ac8157:	c4 41 2c 5c d4       	vsubps ymm10,ymm10,ymm12
  ac815c:	62 71 64 20 5c e6    	vsubps ymm12,ymm19,ymm6
  ac8162:	c5 3c 59 c0          	vmulps ymm8,ymm8,ymm0
  ac8166:	62 b1 4c 28 58 f3    	vaddps ymm6,ymm6,ymm19
  ac816c:	62 c1 14 28 5c c0    	vsubps ymm16,ymm13,ymm8
  ac8172:	c4 41 14 58 c0       	vaddps ymm8,ymm13,ymm8
  ac8177:	62 31 1c 28 5c e8    	vsubps ymm13,ymm12,ymm16
  ac817d:	62 31 1c 28 58 e0    	vaddps ymm12,ymm12,ymm16
  ac8183:	62 c1 4c 28 58 c0    	vaddps ymm16,ymm6,ymm8
  ac8189:	c4 c1 4c 5c f0       	vsubps ymm6,ymm6,ymm8
  ac818e:	c4 41 0c 5c c3       	vsubps ymm8,ymm14,ymm11
  ac8193:	c4 41 0c 58 db       	vaddps ymm11,ymm14,ymm11
  ac8198:	c5 50 58 f4          	vaddps xmm14,xmm5,xmm4
  ac819c:	62 52 65 28 7f f3    	vpermt2ps ymm14,ymm3,ymm11
  ac81a2:	c4 43 7d 19 f3 01    	vextractf128 xmm11,ymm14,0x1
  ac81a8:	c5 78 13 5c 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm11
  ac81ae:	c5 78 11 34 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm14
  ac81b3:	c4 41 30 5c df       	vsubps xmm11,xmm9,xmm15
  ac81b8:	62 52 65 28 7f dd    	vpermt2ps ymm11,ymm3,ymm13
  ac81be:	c4 43 7d 19 dd 01    	vextractf128 xmm13,ymm11,0x1
  ac81c4:	c5 78 13 6c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm13
  ac81ca:	c5 78 11 5c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm11
  ac81d0:	c5 28 58 df          	vaddps xmm11,xmm10,xmm7
  ac81d4:	62 32 65 28 7f d8    	vpermt2ps ymm11,ymm3,ymm16
  ac81da:	c4 43 7d 19 dd 01    	vextractf128 xmm13,ymm11,0x1
  ac81e0:	c5 78 13 6c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm13
  ac81e6:	c5 78 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm11
  ac81ec:	c5 d0 5c e4          	vsubps xmm4,xmm5,xmm4
  ac81f0:	62 d2 65 28 7f e0    	vpermt2ps ymm4,ymm3,ymm8
  ac81f6:	c4 e3 7d 19 e5 01    	vextractf128 xmm5,ymm4,0x1
  ac81fc:	c5 f8 13 6c 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm5
  ac8202:	c5 f8 11 64 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm4
  ac8208:	c4 c1 30 58 e7       	vaddps xmm4,xmm9,xmm15
  ac820d:	62 d2 65 28 7f e4    	vpermt2ps ymm4,ymm3,ymm12
  ac8213:	c4 e3 7d 19 e5 01    	vextractf128 xmm5,ymm4,0x1
  ac8219:	c5 f8 13 6c 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm5
  ac821f:	c5 f8 11 64 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm4
  ac8225:	c4 c1 40 5c e2       	vsubps xmm4,xmm7,xmm10
  ac822a:	62 f2 65 28 7f e6    	vpermt2ps ymm4,ymm3,ymm6
  ac8230:	c4 e3 7d 19 e5 01    	vextractf128 xmm5,ymm4,0x1
  ac8236:	c5 f8 13 ac 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm5
  ac823d:	00 00 
  ac823f:	c5 f8 11 64 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm4
  ac8245:	48 81 c2 90 00 00 00 	add    rdx,0x90
  ac824c:	48 39 d0             	cmp    rax,rdx
  ac824f:	0f 85 1b fc ff ff    	jne    ac7e70 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  ac8255:	c5 f8 77             	vzeroupper
  ac8258:	c3                   	ret
