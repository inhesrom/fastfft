
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c7080 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c7080:	48 c1 e2 05          	shl    rdx,0x5
  6c7084:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6c7088:	c4 e2 7d 18 05 cf e3 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9ae3cf]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c708f:	9a ff 
  6c7091:	31 d2                	xor    edx,edx
  6c7093:	c4 e2 7d 18 0d 38 e2 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9ae238]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c709a:	9a ff 
  6c709c:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  6c70a0:	c5 f8 10 34 17       	vmovups xmm6,XMMWORD PTR [rdi+rdx*1]
  6c70a5:	c5 f8 10 7c 17 10    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x10]
  6c70ab:	c5 78 10 44 17 20    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x20]
  6c70b1:	c5 78 10 4c 17 30    	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x30]
  6c70b7:	c5 c8 c6 df dd       	vshufps xmm3,xmm6,xmm7,0xdd
  6c70bc:	c4 c1 38 c6 e1 dd    	vshufps xmm4,xmm8,xmm9,0xdd
  6c70c2:	c5 78 10 54 17 50    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x50]
  6c70c8:	c5 78 10 5c 17 40    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x40]
  6c70ce:	c4 c1 20 c6 ea dd    	vshufps xmm5,xmm11,xmm10,0xdd
  6c70d4:	c5 c8 c6 f7 88       	vshufps xmm6,xmm6,xmm7,0x88
  6c70d9:	c4 41 38 c6 c9 88    	vshufps xmm9,xmm8,xmm9,0x88
  6c70df:	c4 41 20 c6 da 88    	vshufps xmm11,xmm11,xmm10,0x88
  6c70e5:	c5 dc 58 fd          	vaddps ymm7,ymm4,ymm5
  6c70e9:	c4 41 34 58 d3       	vaddps ymm10,ymm9,ymm11
  6c70ee:	c5 7c 28 c0          	vmovaps ymm8,ymm0
  6c70f2:	c4 62 45 ac c3       	vfnmadd213ps ymm8,ymm7,ymm3
  6c70f7:	c4 41 34 5c cb       	vsubps ymm9,ymm9,ymm11
  6c70fc:	c5 34 59 c9          	vmulps ymm9,ymm9,ymm1
  6c7100:	c5 28 58 de          	vaddps xmm11,xmm10,xmm6
  6c7104:	c4 e2 2d bc f0       	vfnmadd231ps ymm6,ymm10,ymm0
  6c7109:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  6c710d:	c5 5c 59 d1          	vmulps ymm10,ymm4,ymm1
  6c7111:	c5 c0 58 db          	vaddps xmm3,xmm7,xmm3
  6c7115:	c4 c1 38 58 e1       	vaddps xmm4,xmm8,xmm9
  6c711a:	c4 c1 38 5c e9       	vsubps xmm5,xmm8,xmm9
  6c711f:	c5 65 15 c5          	vunpckhpd ymm8,ymm3,ymm5
  6c7123:	c5 e5 14 ed          	vunpcklpd ymm5,ymm3,ymm5
  6c7127:	c4 e3 5d 0c fa cc    	vblendps ymm7,ymm4,ymm2,0xcc
  6c712d:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  6c7132:	c5 d4 c6 df 88       	vshufps ymm3,ymm5,ymm7,0x88
  6c7137:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6c713c:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  6c7141:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  6c7146:	c5 bc c6 fc 88       	vshufps ymm7,ymm8,ymm4,0x88
  6c714b:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  6c7150:	c5 bc c6 e4 dd       	vshufps ymm4,ymm8,ymm4,0xdd
  6c7155:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  6c715a:	c4 41 48 5c c2       	vsubps xmm8,xmm6,xmm10
  6c715f:	c5 a8 58 f6          	vaddps xmm6,xmm10,xmm6
  6c7163:	c5 25 15 ce          	vunpckhpd ymm9,ymm11,ymm6
  6c7167:	c5 25 14 d6          	vunpcklpd ymm10,ymm11,ymm6
  6c716b:	c4 63 3d 0c da cc    	vblendps ymm11,ymm8,ymm2,0xcc
  6c7171:	c4 c1 3d 73 d8 08    	vpsrldq ymm8,ymm8,0x8
  6c7177:	c4 c1 2c c6 f3 88    	vshufps ymm6,ymm10,ymm11,0x88
  6c717d:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  6c7182:	c4 41 2c c6 d3 dd    	vshufps ymm10,ymm10,ymm11,0xdd
  6c7188:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  6c718e:	c4 41 34 c6 d8 88    	vshufps ymm11,ymm9,ymm8,0x88
  6c7194:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  6c719a:	c4 41 34 c6 c0 dd    	vshufps ymm8,ymm9,ymm8,0xdd
  6c71a0:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  6c71a6:	c5 7c 10 a1 80 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0x80]
  6c71ad:	00 
  6c71ae:	c5 7c 10 a9 a0 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0xa0]
  6c71b5:	00 
  6c71b6:	c5 1c 59 cf          	vmulps ymm9,ymm12,ymm7
  6c71ba:	c4 42 25 bc cd       	vfnmadd231ps ymm9,ymm11,ymm13
  6c71bf:	c4 41 1c 59 db       	vmulps ymm11,ymm12,ymm11
  6c71c4:	c5 7c 10 61 40       	vmovups ymm12,YMMWORD PTR [rcx+0x40]
  6c71c9:	c4 42 45 b8 dd       	vfmadd231ps ymm11,ymm7,ymm13
  6c71ce:	c5 fc 10 79 60       	vmovups ymm7,YMMWORD PTR [rcx+0x60]
  6c71d3:	c5 1c 59 ed          	vmulps ymm13,ymm12,ymm5
  6c71d7:	c4 62 2d bc ef       	vfnmadd231ps ymm13,ymm10,ymm7
  6c71dc:	c4 41 1c 59 d2       	vmulps ymm10,ymm12,ymm10
  6c71e1:	c5 7c 10 a1 c0 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0xc0]
  6c71e8:	00 
  6c71e9:	c4 62 55 b8 d7       	vfmadd231ps ymm10,ymm5,ymm7
  6c71ee:	c5 fc 10 a9 e0 00 00 	vmovups ymm5,YMMWORD PTR [rcx+0xe0]
  6c71f5:	00 
  6c71f6:	c5 9c 59 fc          	vmulps ymm7,ymm12,ymm4
  6c71fa:	c4 e2 3d bc fd       	vfnmadd231ps ymm7,ymm8,ymm5
  6c71ff:	c4 41 1c 59 c0       	vmulps ymm8,ymm12,ymm8
  6c7204:	c5 34 58 e3          	vaddps ymm12,ymm9,ymm3
  6c7208:	c4 62 5d b8 c5       	vfmadd231ps ymm8,ymm4,ymm5
  6c720d:	c5 94 58 e7          	vaddps ymm4,ymm13,ymm7
  6c7211:	c5 a4 58 ee          	vaddps ymm5,ymm11,ymm6
  6c7215:	c4 c1 64 5c d9       	vsubps ymm3,ymm3,ymm9
  6c721a:	c4 41 2c 58 c8       	vaddps ymm9,ymm10,ymm8
  6c721f:	c4 41 2c 5c c0       	vsubps ymm8,ymm10,ymm8
  6c7224:	c4 c1 4c 5c f3       	vsubps ymm6,ymm6,ymm11
  6c7229:	c4 c1 44 5c fd       	vsubps ymm7,ymm7,ymm13
  6c722e:	c5 18 58 d4          	vaddps xmm10,xmm12,xmm4
  6c7232:	c5 30 58 dd          	vaddps xmm11,xmm9,xmm5
  6c7236:	c4 41 20 14 ea       	vunpcklps xmm13,xmm11,xmm10
  6c723b:	c4 41 20 15 d2       	vunpckhps xmm10,xmm11,xmm10
  6c7240:	c5 78 13 54 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm10
  6c7246:	c5 78 11 2c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm13
  6c724b:	c5 38 58 d3          	vaddps xmm10,xmm8,xmm3
  6c724f:	c5 48 58 df          	vaddps xmm11,xmm6,xmm7
  6c7253:	c4 41 20 15 ea       	vunpckhps xmm13,xmm11,xmm10
  6c7258:	c4 41 20 14 d2       	vunpcklps xmm10,xmm11,xmm10
  6c725d:	c5 78 11 54 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm10
  6c7263:	c5 78 13 6c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm13
  6c7269:	c5 98 5c e4          	vsubps xmm4,xmm12,xmm4
  6c726d:	c4 c1 50 5c e9       	vsubps xmm5,xmm5,xmm9
  6c7272:	c5 50 15 cc          	vunpckhps xmm9,xmm5,xmm4
  6c7276:	c5 d0 14 e4          	vunpcklps xmm4,xmm5,xmm4
  6c727a:	c5 f8 11 64 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm4
  6c7280:	c5 78 13 4c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm9
  6c7286:	c4 c1 60 5c d8       	vsubps xmm3,xmm3,xmm8
  6c728b:	c5 c8 5c e7          	vsubps xmm4,xmm6,xmm7
  6c728f:	c5 d8 15 eb          	vunpckhps xmm5,xmm4,xmm3
  6c7293:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  6c7297:	c5 f8 11 5c 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm3
  6c729d:	c5 f8 13 6c 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm5
  6c72a3:	48 83 c2 60          	add    rdx,0x60
  6c72a7:	48 39 d0             	cmp    rax,rdx
  6c72aa:	0f 85 f0 fd ff ff    	jne    6c70a0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  6c72b0:	c5 f8 77             	vzeroupper
  6c72b3:	c3                   	ret
