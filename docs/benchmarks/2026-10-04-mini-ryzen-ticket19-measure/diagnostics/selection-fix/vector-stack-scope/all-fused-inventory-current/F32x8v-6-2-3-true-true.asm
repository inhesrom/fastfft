
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ad7200 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ad7200:	48 c1 e2 04          	shl    rdx,0x4
  ad7204:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  ad7208:	31 d2                	xor    edx,edx
  ad720a:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  ad720e:	c4 e2 7d 18 0d 49 e2 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff59e249]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ad7215:	59 ff 
  ad7217:	c4 e2 79 18 15 b4 e0 	vbroadcastss xmm2,DWORD PTR [rip+0xffffffffff59e0b4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ad721e:	59 ff 
  ad7220:	c5 fb 10 5c 17 10    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x10]
  ad7226:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  ad722c:	c4 e3 65 0c d8 c0    	vblendps ymm3,ymm3,ymm0,0xc0
  ad7232:	c5 f8 10 24 17       	vmovups xmm4,XMMWORD PTR [rdi+rdx*1]
  ad7237:	c5 f8 10 6c 17 18    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x18]
  ad723d:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  ad7243:	c5 d8 c6 f3 88       	vshufps xmm6,xmm4,xmm3,0x88
  ad7248:	c5 fb 10 7c 17 28    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x28]
  ad724e:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  ad7254:	c4 e3 45 0c f8 c0    	vblendps ymm7,ymm7,ymm0,0xc0
  ad725a:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  ad7260:	c5 50 c6 c7 88       	vshufps xmm8,xmm5,xmm7,0x88
  ad7265:	c5 d8 c6 db dd       	vshufps xmm3,xmm4,xmm3,0xdd
  ad726a:	c5 d0 c6 e7 dd       	vshufps xmm4,xmm5,xmm7,0xdd
  ad726f:	c5 e0 58 ec          	vaddps xmm5,xmm3,xmm4
  ad7273:	c5 e0 5c dc          	vsubps xmm3,xmm3,xmm4
  ad7277:	c4 e3 55 0c e0 cc    	vblendps ymm4,ymm5,ymm0,0xcc
  ad727d:	c5 d5 73 dd 08       	vpsrldq ymm5,ymm5,0x8
  ad7282:	c4 e3 65 0c f8 cc    	vblendps ymm7,ymm3,ymm0,0xcc
  ad7288:	c5 e5 73 db 08       	vpsrldq ymm3,ymm3,0x8
  ad728d:	c5 d4 c6 db 88       	vshufps ymm3,ymm5,ymm3,0x88
  ad7292:	c5 dc c6 ef 88       	vshufps ymm5,ymm4,ymm7,0x88
  ad7297:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ad729c:	c5 dc c6 e7 dd       	vshufps ymm4,ymm4,ymm7,0xdd
  ad72a1:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ad72a6:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  ad72ab:	c5 b8 58 fe          	vaddps xmm7,xmm8,xmm6
  ad72af:	c4 c1 48 5c f0       	vsubps xmm6,xmm6,xmm8
  ad72b4:	c4 63 45 0c c0 cc    	vblendps ymm8,ymm7,ymm0,0xcc
  ad72ba:	c5 c5 73 df 08       	vpsrldq ymm7,ymm7,0x8
  ad72bf:	c4 63 4d 0c c8 cc    	vblendps ymm9,ymm6,ymm0,0xcc
  ad72c5:	c5 cd 73 de 08       	vpsrldq ymm6,ymm6,0x8
  ad72ca:	c5 c4 c6 f6 88       	vshufps ymm6,ymm7,ymm6,0x88
  ad72cf:	c4 c1 3c c6 f9 88    	vshufps ymm7,ymm8,ymm9,0x88
  ad72d5:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  ad72da:	c4 41 3c c6 c1 dd    	vshufps ymm8,ymm8,ymm9,0xdd
  ad72e0:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  ad72e6:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ad72eb:	c5 7c 10 49 40       	vmovups ymm9,YMMWORD PTR [rcx+0x40]
  ad72f0:	c5 7c 10 51 60       	vmovups ymm10,YMMWORD PTR [rcx+0x60]
  ad72f5:	c5 7c 10 99 80 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0x80]
  ad72fc:	00 
  ad72fd:	c5 7c 10 a1 a0 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0xa0]
  ad7304:	00 
  ad7305:	c5 34 59 ec          	vmulps ymm13,ymm9,ymm4
  ad7309:	c4 42 3d bc ea       	vfnmadd231ps ymm13,ymm8,ymm10
  ad730e:	c5 24 59 f3          	vmulps ymm14,ymm11,ymm3
  ad7312:	c4 42 4d bc f4       	vfnmadd231ps ymm14,ymm6,ymm12
  ad7317:	c4 41 14 58 fe       	vaddps ymm15,ymm13,ymm14
  ad731c:	c4 41 3c 59 c1       	vmulps ymm8,ymm8,ymm9
  ad7321:	c4 42 5d b8 c2       	vfmadd231ps ymm8,ymm4,ymm10
  ad7326:	c5 a4 59 e6          	vmulps ymm4,ymm11,ymm6
  ad732a:	c4 c2 65 b8 e4       	vfmadd231ps ymm4,ymm3,ymm12
  ad732f:	c5 bc 58 dc          	vaddps ymm3,ymm8,ymm4
  ad7333:	c5 fc 28 f1          	vmovaps ymm6,ymm1
  ad7337:	c4 e2 05 ac f5       	vfnmadd213ps ymm6,ymm15,ymm5
  ad733c:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  ad7340:	c4 62 65 ac cf       	vfnmadd213ps ymm9,ymm3,ymm7
  ad7345:	c5 80 58 ed          	vaddps xmm5,xmm15,xmm5
  ad7349:	c5 c0 58 db          	vaddps xmm3,xmm7,xmm3
  ad734d:	c5 e0 14 dd          	vunpcklps xmm3,xmm3,xmm5
  ad7351:	c5 f8 11 1c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm3
  ad7356:	c5 b8 5c dc          	vsubps xmm3,xmm8,xmm4
  ad735a:	c5 e0 59 da          	vmulps xmm3,xmm3,xmm2
  ad735e:	c5 c8 58 e3          	vaddps xmm4,xmm6,xmm3
  ad7362:	c4 c1 10 5c ee       	vsubps xmm5,xmm13,xmm14
  ad7367:	c5 d0 59 ea          	vmulps xmm5,xmm5,xmm2
  ad736b:	c5 b0 5c fd          	vsubps xmm7,xmm9,xmm5
  ad736f:	c5 c0 14 e4          	vunpcklps xmm4,xmm7,xmm4
  ad7373:	c5 f8 11 64 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm4
  ad7379:	c5 c8 5c db          	vsubps xmm3,xmm6,xmm3
  ad737d:	c5 b0 58 e5          	vaddps xmm4,xmm9,xmm5
  ad7381:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  ad7385:	c5 f8 11 5c 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm3
  ad738b:	48 83 c2 30          	add    rdx,0x30
  ad738f:	48 39 d0             	cmp    rax,rdx
  ad7392:	0f 85 88 fe ff ff    	jne    ad7220 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x20>
  ad7398:	c5 f8 77             	vzeroupper
  ad739b:	c3                   	ret
