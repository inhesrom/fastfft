
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000aad0c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  aad0c0:	48 c1 e2 05          	shl    rdx,0x5
  aad0c4:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  aad0c8:	31 d2                	xor    edx,edx
  aad0ca:	c4 e2 7d 18 05 8d 83 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5c838d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  aad0d1:	5c ff 
  aad0d3:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  aad0d7:	c4 e2 7d 18 15 f4 81 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff5c81f4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  aad0de:	5c ff 
  aad0e0:	c5 fc 28 1d f8 a0 5c 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff5ca0f8]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  aad0e7:	ff 
  aad0e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  aad0ef:	00 
  aad0f0:	c5 fb 10 64 17 10    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x10]
  aad0f6:	c4 e3 7d 18 e4 01    	vinsertf128 ymm4,ymm0,xmm4,0x1
  aad0fc:	c4 e3 5d 0c e1 c0    	vblendps ymm4,ymm4,ymm1,0xc0
  aad102:	c5 f8 10 2c 17       	vmovups xmm5,XMMWORD PTR [rdi+rdx*1]
  aad107:	c5 f8 10 74 17 18    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x18]
  aad10d:	c5 f8 10 7c 17 30    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x30]
  aad113:	c5 78 10 44 17 48    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x48]
  aad119:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  aad11f:	c5 50 c6 cc dd       	vshufps xmm9,xmm5,xmm4,0xdd
  aad124:	c5 7b 10 54 17 40    	vmovsd xmm10,QWORD PTR [rdi+rdx*1+0x40]
  aad12a:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  aad130:	c4 63 2d 0c d1 c0    	vblendps ymm10,ymm10,ymm1,0xc0
  aad136:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  aad13c:	c4 41 40 c6 da dd    	vshufps xmm11,xmm7,xmm10,0xdd
  aad142:	c4 41 34 5c e3       	vsubps ymm12,ymm9,ymm11
  aad147:	c5 7b 10 6c 17 58    	vmovsd xmm13,QWORD PTR [rdi+rdx*1+0x58]
  aad14d:	c4 43 7d 18 ed 01    	vinsertf128 ymm13,ymm0,xmm13,0x1
  aad153:	c4 63 15 0c e9 c0    	vblendps ymm13,ymm13,ymm1,0xc0
  aad159:	c4 43 7d 19 ed 01    	vextractf128 xmm13,ymm13,0x1
  aad15f:	c4 41 38 c6 f5 88    	vshufps xmm14,xmm8,xmm13,0x88
  aad165:	c5 7b 10 7c 17 28    	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x28]
  aad16b:	c4 43 7d 18 ff 01    	vinsertf128 ymm15,ymm0,xmm15,0x1
  aad171:	c4 63 05 0c f9 c0    	vblendps ymm15,ymm15,ymm1,0xc0
  aad177:	c4 43 7d 19 ff 01    	vextractf128 xmm15,ymm15,0x1
  aad17d:	62 c1 4c 08 c6 c7 88 	vshufps xmm16,xmm6,xmm15,0x88
  aad184:	62 a1 0c 28 5c c8    	vsubps ymm17,ymm14,ymm16
  aad18a:	c5 d0 c6 e4 88       	vshufps xmm4,xmm5,xmm4,0x88
  aad18f:	c4 c1 40 c6 ea 88    	vshufps xmm5,xmm7,xmm10,0x88
  aad195:	c5 dc 5c fd          	vsubps ymm7,ymm4,ymm5
  aad199:	c4 c1 48 c6 f7 dd    	vshufps xmm6,xmm6,xmm15,0xdd
  aad19f:	c4 41 38 c6 c5 dd    	vshufps xmm8,xmm8,xmm13,0xdd
  aad1a5:	c4 41 4c 5c d0       	vsubps ymm10,ymm6,ymm8
  aad1aa:	c4 41 34 58 cb       	vaddps ymm9,ymm9,ymm11
  aad1af:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  aad1b3:	c5 dc 58 e5          	vaddps ymm4,ymm4,ymm5
  aad1b7:	62 d1 7c 20 58 ee    	vaddps ymm5,ymm16,ymm14
  aad1bd:	c5 58 58 c5          	vaddps xmm8,xmm4,xmm5
  aad1c1:	c5 28 58 df          	vaddps xmm11,xmm10,xmm7
  aad1c5:	c5 d8 5c e5          	vsubps xmm4,xmm4,xmm5
  aad1c9:	c4 c1 40 5c ea       	vsubps xmm5,xmm7,xmm10
  aad1ce:	c5 bd 15 fc          	vunpckhpd ymm7,ymm8,ymm4
  aad1d2:	c5 bd 14 e4          	vunpcklpd ymm4,ymm8,ymm4
  aad1d6:	c5 25 15 c5          	vunpckhpd ymm8,ymm11,ymm5
  aad1da:	c4 c1 44 c6 f8 88    	vshufps ymm7,ymm7,ymm8,0x88
  aad1e0:	c5 a5 14 ed          	vunpcklpd ymm5,ymm11,ymm5
  aad1e4:	c5 5c c6 c5 88       	vshufps ymm8,ymm4,ymm5,0x88
  aad1e9:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  aad1ef:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  aad1f4:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  aad1f9:	c5 c4 c6 ef d8       	vshufps ymm5,ymm7,ymm7,0xd8
  aad1fe:	c5 b0 58 fe          	vaddps xmm7,xmm9,xmm6
  aad202:	62 51 74 00 58 d4    	vaddps xmm10,xmm17,xmm12
  aad208:	c5 b0 5c f6          	vsubps xmm6,xmm9,xmm6
  aad20c:	62 31 1c 08 5c c9    	vsubps xmm9,xmm12,xmm17
  aad212:	c5 45 15 de          	vunpckhpd ymm11,ymm7,ymm6
  aad216:	c5 c5 14 f6          	vunpcklpd ymm6,ymm7,ymm6
  aad21a:	c4 c1 2d 15 f9       	vunpckhpd ymm7,ymm10,ymm9
  aad21f:	c5 a4 c6 ff 88       	vshufps ymm7,ymm11,ymm7,0x88
  aad224:	c4 41 2d 14 c9       	vunpcklpd ymm9,ymm10,ymm9
  aad229:	c4 41 4c c6 d1 88    	vshufps ymm10,ymm6,ymm9,0x88
  aad22f:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  aad235:	c4 c1 4c c6 f1 dd    	vshufps ymm6,ymm6,ymm9,0xdd
  aad23b:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  aad240:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  aad245:	c5 7c 10 49 40       	vmovups ymm9,YMMWORD PTR [rcx+0x40]
  aad24a:	c5 7c 10 59 60       	vmovups ymm11,YMMWORD PTR [rcx+0x60]
  aad24f:	c5 7c 10 a1 80 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0x80]
  aad256:	00 
  aad257:	c5 7c 10 a9 a0 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0xa0]
  aad25e:	00 
  aad25f:	c5 34 59 f4          	vmulps ymm14,ymm9,ymm4
  aad263:	c4 42 4d bc f3       	vfnmadd231ps ymm14,ymm6,ymm11
  aad268:	c5 1c 59 fd          	vmulps ymm15,ymm12,ymm5
  aad26c:	c4 42 45 bc fd       	vfnmadd231ps ymm15,ymm7,ymm13
  aad271:	62 c1 0c 28 58 c7    	vaddps ymm16,ymm14,ymm15
  aad277:	c5 b4 59 f6          	vmulps ymm6,ymm9,ymm6
  aad27b:	c4 c2 5d b8 f3       	vfmadd231ps ymm6,ymm4,ymm11
  aad280:	c5 9c 59 e7          	vmulps ymm4,ymm12,ymm7
  aad284:	c4 c2 55 b8 e5       	vfmadd231ps ymm4,ymm5,ymm13
  aad289:	c5 cc 58 ec          	vaddps ymm5,ymm6,ymm4
  aad28d:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  aad291:	62 d2 7d 20 ac f8    	vfnmadd213ps ymm7,ymm16,ymm8
  aad297:	c5 cc 5c e4          	vsubps ymm4,ymm6,ymm4
  aad29b:	c5 dc 59 e2          	vmulps ymm4,ymm4,ymm2
  aad29f:	c5 fc 28 f0          	vmovaps ymm6,ymm0
  aad2a3:	c4 c2 55 ac f2       	vfnmadd213ps ymm6,ymm5,ymm10
  aad2a8:	c4 41 0c 5c cf       	vsubps ymm9,ymm14,ymm15
  aad2ad:	c5 34 59 ca          	vmulps ymm9,ymm9,ymm2
  aad2b1:	c4 41 4c 5c d9       	vsubps ymm11,ymm6,ymm9
  aad2b6:	c5 b4 58 f6          	vaddps ymm6,ymm9,ymm6
  aad2ba:	c5 ac 58 ed          	vaddps ymm5,ymm10,ymm5
  aad2be:	62 31 3c 08 58 c0    	vaddps xmm8,xmm8,xmm16
  aad2c4:	62 72 65 28 7f c5    	vpermt2ps ymm8,ymm3,ymm5
  aad2ca:	c5 7c 11 04 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm8
  aad2cf:	c5 c0 58 ec          	vaddps xmm5,xmm7,xmm4
  aad2d3:	62 d2 65 28 7f eb    	vpermt2ps ymm5,ymm3,ymm11
  aad2d9:	c5 fc 11 6c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm5
  aad2df:	c5 c0 5c e4          	vsubps xmm4,xmm7,xmm4
  aad2e3:	62 f2 65 28 7f e6    	vpermt2ps ymm4,ymm3,ymm6
  aad2e9:	c5 fc 11 64 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm4
  aad2ef:	48 83 c2 60          	add    rdx,0x60
  aad2f3:	48 39 d0             	cmp    rax,rdx
  aad2f6:	0f 85 f4 fd ff ff    	jne    aad0f0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  aad2fc:	c5 f8 77             	vzeroupper
  aad2ff:	c3                   	ret
