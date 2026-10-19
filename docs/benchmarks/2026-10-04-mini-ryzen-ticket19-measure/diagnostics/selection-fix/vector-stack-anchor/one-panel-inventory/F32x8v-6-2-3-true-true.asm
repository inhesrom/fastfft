
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ad5440 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ad5440:	48 c1 e2 04          	shl    rdx,0x4
  ad5444:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  ad5448:	31 d2                	xor    edx,edx
  ad544a:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  ad544e:	c4 e2 7d 18 0d 09 00 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5a0009]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ad5455:	5a ff 
  ad5457:	c4 e2 79 18 15 74 fe 	vbroadcastss xmm2,DWORD PTR [rip+0xffffffffff59fe74]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ad545e:	59 ff 
  ad5460:	c5 fb 10 5c 17 10    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x10]
  ad5466:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  ad546c:	c4 e3 65 0c d8 c0    	vblendps ymm3,ymm3,ymm0,0xc0
  ad5472:	c5 f8 10 24 17       	vmovups xmm4,XMMWORD PTR [rdi+rdx*1]
  ad5477:	c5 f8 10 6c 17 18    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x18]
  ad547d:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  ad5483:	c5 d8 c6 f3 88       	vshufps xmm6,xmm4,xmm3,0x88
  ad5488:	c5 fb 10 7c 17 28    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x28]
  ad548e:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  ad5494:	c4 e3 45 0c f8 c0    	vblendps ymm7,ymm7,ymm0,0xc0
  ad549a:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  ad54a0:	c5 50 c6 c7 88       	vshufps xmm8,xmm5,xmm7,0x88
  ad54a5:	c5 d8 c6 db dd       	vshufps xmm3,xmm4,xmm3,0xdd
  ad54aa:	c5 d0 c6 e7 dd       	vshufps xmm4,xmm5,xmm7,0xdd
  ad54af:	c5 e0 58 ec          	vaddps xmm5,xmm3,xmm4
  ad54b3:	c5 e0 5c dc          	vsubps xmm3,xmm3,xmm4
  ad54b7:	c4 e3 55 0c e0 cc    	vblendps ymm4,ymm5,ymm0,0xcc
  ad54bd:	c5 d5 73 dd 08       	vpsrldq ymm5,ymm5,0x8
  ad54c2:	c4 e3 65 0c f8 cc    	vblendps ymm7,ymm3,ymm0,0xcc
  ad54c8:	c5 e5 73 db 08       	vpsrldq ymm3,ymm3,0x8
  ad54cd:	c5 d4 c6 db 88       	vshufps ymm3,ymm5,ymm3,0x88
  ad54d2:	c5 dc c6 ef 88       	vshufps ymm5,ymm4,ymm7,0x88
  ad54d7:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ad54dc:	c5 dc c6 e7 dd       	vshufps ymm4,ymm4,ymm7,0xdd
  ad54e1:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ad54e6:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  ad54eb:	c5 b8 58 fe          	vaddps xmm7,xmm8,xmm6
  ad54ef:	c4 c1 48 5c f0       	vsubps xmm6,xmm6,xmm8
  ad54f4:	c4 63 45 0c c0 cc    	vblendps ymm8,ymm7,ymm0,0xcc
  ad54fa:	c5 c5 73 df 08       	vpsrldq ymm7,ymm7,0x8
  ad54ff:	c4 63 4d 0c c8 cc    	vblendps ymm9,ymm6,ymm0,0xcc
  ad5505:	c5 cd 73 de 08       	vpsrldq ymm6,ymm6,0x8
  ad550a:	c5 c4 c6 f6 88       	vshufps ymm6,ymm7,ymm6,0x88
  ad550f:	c4 c1 3c c6 f9 88    	vshufps ymm7,ymm8,ymm9,0x88
  ad5515:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  ad551a:	c4 41 3c c6 c1 dd    	vshufps ymm8,ymm8,ymm9,0xdd
  ad5520:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  ad5526:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ad552b:	c5 7c 10 49 40       	vmovups ymm9,YMMWORD PTR [rcx+0x40]
  ad5530:	c5 7c 10 51 60       	vmovups ymm10,YMMWORD PTR [rcx+0x60]
  ad5535:	c5 7c 10 99 80 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0x80]
  ad553c:	00 
  ad553d:	c5 7c 10 a1 a0 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0xa0]
  ad5544:	00 
  ad5545:	c5 34 59 ec          	vmulps ymm13,ymm9,ymm4
  ad5549:	c4 42 3d bc ea       	vfnmadd231ps ymm13,ymm8,ymm10
  ad554e:	c5 24 59 f3          	vmulps ymm14,ymm11,ymm3
  ad5552:	c4 42 4d bc f4       	vfnmadd231ps ymm14,ymm6,ymm12
  ad5557:	c4 41 14 58 fe       	vaddps ymm15,ymm13,ymm14
  ad555c:	c4 41 3c 59 c1       	vmulps ymm8,ymm8,ymm9
  ad5561:	c4 42 5d b8 c2       	vfmadd231ps ymm8,ymm4,ymm10
  ad5566:	c5 a4 59 e6          	vmulps ymm4,ymm11,ymm6
  ad556a:	c4 c2 65 b8 e4       	vfmadd231ps ymm4,ymm3,ymm12
  ad556f:	c5 bc 58 dc          	vaddps ymm3,ymm8,ymm4
  ad5573:	c5 fc 28 f1          	vmovaps ymm6,ymm1
  ad5577:	c4 e2 05 ac f5       	vfnmadd213ps ymm6,ymm15,ymm5
  ad557c:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  ad5580:	c4 62 65 ac cf       	vfnmadd213ps ymm9,ymm3,ymm7
  ad5585:	c5 80 58 ed          	vaddps xmm5,xmm15,xmm5
  ad5589:	c5 c0 58 db          	vaddps xmm3,xmm7,xmm3
  ad558d:	c5 e0 14 dd          	vunpcklps xmm3,xmm3,xmm5
  ad5591:	c5 f8 11 1c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm3
  ad5596:	c5 b8 5c dc          	vsubps xmm3,xmm8,xmm4
  ad559a:	c5 e0 59 da          	vmulps xmm3,xmm3,xmm2
  ad559e:	c5 c8 58 e3          	vaddps xmm4,xmm6,xmm3
  ad55a2:	c4 c1 10 5c ee       	vsubps xmm5,xmm13,xmm14
  ad55a7:	c5 d0 59 ea          	vmulps xmm5,xmm5,xmm2
  ad55ab:	c5 b0 5c fd          	vsubps xmm7,xmm9,xmm5
  ad55af:	c5 c0 14 e4          	vunpcklps xmm4,xmm7,xmm4
  ad55b3:	c5 f8 11 64 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm4
  ad55b9:	c5 c8 5c db          	vsubps xmm3,xmm6,xmm3
  ad55bd:	c5 b0 58 e5          	vaddps xmm4,xmm9,xmm5
  ad55c1:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  ad55c5:	c5 f8 11 5c 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm3
  ad55cb:	48 83 c2 30          	add    rdx,0x30
  ad55cf:	48 39 d0             	cmp    rax,rdx
  ad55d2:	0f 85 88 fe ff ff    	jne    ad5460 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x20>
  ad55d8:	c5 f8 77             	vzeroupper
  ad55db:	c3                   	ret
