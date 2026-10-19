
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000070b3c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  70b3c0:	55                   	push   rbp
  70b3c1:	48 89 e5             	mov    rbp,rsp
  70b3c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  70b3c8:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  70b3cf:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  70b3d4:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  70b3d9:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  70b3de:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  70b3e3:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  70b3e8:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  70b3ee:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  70b3f2:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  70b3f8:	c5 fb 10 57 28       	vmovsd xmm2,QWORD PTR [rdi+0x28]
  70b3fd:	c4 e3 7d 18 d2 01    	vinsertf128 ymm2,ymm0,xmm2,0x1
  70b403:	c4 e3 6d 0c d1 c0    	vblendps ymm2,ymm2,ymm1,0xc0
  70b409:	c5 fb 10 5f 40       	vmovsd xmm3,QWORD PTR [rdi+0x40]
  70b40e:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  70b414:	c4 e3 65 0c d9 c0    	vblendps ymm3,ymm3,ymm1,0xc0
  70b41a:	c5 f8 10 27          	vmovups xmm4,XMMWORD PTR [rdi]
  70b41e:	c5 f8 10 6f 18       	vmovups xmm5,XMMWORD PTR [rdi+0x18]
  70b423:	c5 f8 10 77 30       	vmovups xmm6,XMMWORD PTR [rdi+0x30]
  70b428:	c5 f8 10 7f 48       	vmovups xmm7,XMMWORD PTR [rdi+0x48]
  70b42d:	c5 7b 10 47 58       	vmovsd xmm8,QWORD PTR [rdi+0x58]
  70b432:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  70b438:	c4 e3 3d 0c c9 c0    	vblendps ymm1,ymm8,ymm1,0xc0
  70b43e:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  70b444:	c5 58 c6 c0 88       	vshufps xmm8,xmm4,xmm0,0x88
  70b449:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  70b44f:	c5 48 c6 cb 88       	vshufps xmm9,xmm6,xmm3,0x88
  70b454:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  70b45a:	c5 50 c6 d2 88       	vshufps xmm10,xmm5,xmm2,0x88
  70b45f:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  70b465:	c5 40 c6 d9 88       	vshufps xmm11,xmm7,xmm1,0x88
  70b46a:	c5 d8 c6 c0 dd       	vshufps xmm0,xmm4,xmm0,0xdd
  70b46f:	c5 c8 c6 f3 dd       	vshufps xmm6,xmm6,xmm3,0xdd
  70b474:	c5 d0 c6 d2 dd       	vshufps xmm2,xmm5,xmm2,0xdd
  70b479:	c5 c0 c6 c9 dd       	vshufps xmm1,xmm7,xmm1,0xdd
  70b47e:	c4 c1 3c 58 f9       	vaddps ymm7,ymm8,ymm9
  70b483:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  70b488:	c5 fc 58 de          	vaddps ymm3,ymm0,ymm6
  70b48c:	c5 ec 58 e1          	vaddps ymm4,ymm2,ymm1
  70b490:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  70b495:	c5 ec 5c c9          	vsubps ymm1,ymm2,ymm1
  70b499:	c5 fc 5c ee          	vsubps ymm5,ymm0,ymm6
  70b49d:	c4 c1 24 5c f2       	vsubps ymm6,ymm11,ymm10
  70b4a2:	c5 98 58 c7          	vaddps xmm0,xmm12,xmm7
  70b4a6:	c5 b8 58 d1          	vaddps xmm2,xmm8,xmm1
  70b4aa:	c4 c1 40 5c fc       	vsubps xmm7,xmm7,xmm12
  70b4af:	c5 b8 5c c9          	vsubps xmm1,xmm8,xmm1
  70b4b3:	c5 7d 15 c7          	vunpckhpd ymm8,ymm0,ymm7
  70b4b7:	c5 fd 14 ff          	vunpcklpd ymm7,ymm0,ymm7
  70b4bb:	c5 ed 15 c1          	vunpckhpd ymm0,ymm2,ymm1
  70b4bf:	c5 3c c6 c0 88       	vshufps ymm8,ymm8,ymm0,0x88
  70b4c4:	c5 ed 14 c9          	vunpcklpd ymm1,ymm2,ymm1
  70b4c8:	c5 c4 c6 c1 88       	vshufps ymm0,ymm7,ymm1,0x88
  70b4cd:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  70b4d2:	c5 c4 c6 c9 dd       	vshufps ymm1,ymm7,ymm1,0xdd
  70b4d7:	c5 f4 c6 d1 d8       	vshufps ymm2,ymm1,ymm1,0xd8
  70b4dc:	c4 c1 3c c6 c8 d8    	vshufps ymm1,ymm8,ymm8,0xd8
  70b4e2:	c5 e0 58 fc          	vaddps xmm7,xmm3,xmm4
  70b4e6:	c5 48 58 c5          	vaddps xmm8,xmm6,xmm5
  70b4ea:	c5 e0 5c dc          	vsubps xmm3,xmm3,xmm4
  70b4ee:	c5 d0 5c e6          	vsubps xmm4,xmm5,xmm6
  70b4f2:	c5 c5 15 eb          	vunpckhpd ymm5,ymm7,ymm3
  70b4f6:	c5 c5 14 f3          	vunpcklpd ymm6,ymm7,ymm3
  70b4fa:	c5 bd 15 dc          	vunpckhpd ymm3,ymm8,ymm4
  70b4fe:	c5 d4 c6 eb 88       	vshufps ymm5,ymm5,ymm3,0x88
  70b503:	c5 bd 14 e4          	vunpcklpd ymm4,ymm8,ymm4
  70b507:	c5 cc c6 dc 88       	vshufps ymm3,ymm6,ymm4,0x88
  70b50c:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  70b511:	c5 cc c6 e4 dd       	vshufps ymm4,ymm6,ymm4,0xdd
  70b516:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  70b51b:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  70b520:	c5 fc 10 72 40       	vmovups ymm6,YMMWORD PTR [rdx+0x40]
  70b525:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  70b52a:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  70b531:	00 
  70b532:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  70b539:	00 
  70b53a:	c5 4c 59 d2          	vmulps ymm10,ymm6,ymm2
  70b53e:	c4 62 5d bc d7       	vfnmadd231ps ymm10,ymm4,ymm7
  70b543:	c5 3c 59 d9          	vmulps ymm11,ymm8,ymm1
  70b547:	c4 42 55 bc d9       	vfnmadd231ps ymm11,ymm5,ymm9
  70b54c:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  70b551:	c5 cc 59 e4          	vmulps ymm4,ymm6,ymm4
  70b555:	c4 e2 6d b8 e7       	vfmadd231ps ymm4,ymm2,ymm7
  70b55a:	c5 bc 59 d5          	vmulps ymm2,ymm8,ymm5
  70b55e:	c4 c2 75 b8 d1       	vfmadd231ps ymm2,ymm1,ymm9
  70b563:	c4 e2 7d 18 0d f4 9e 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff969ef4]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  70b56a:	96 ff 
  70b56c:	c5 dc 58 ea          	vaddps ymm5,ymm4,ymm2
  70b570:	c5 fc 28 f1          	vmovaps ymm6,ymm1
  70b574:	c4 e2 1d ac f0       	vfnmadd213ps ymm6,ymm12,ymm0
  70b579:	c5 dc 5c d2          	vsubps ymm2,ymm4,ymm2
  70b57d:	c4 e2 7d 18 25 4e 9d 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff969d4e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  70b584:	96 ff 
  70b586:	c5 ec 59 d4          	vmulps ymm2,ymm2,ymm4
  70b58a:	c4 e2 55 ac cb       	vfnmadd213ps ymm1,ymm5,ymm3
  70b58f:	c4 c1 2c 5c fb       	vsubps ymm7,ymm10,ymm11
  70b594:	c5 c4 59 e4          	vmulps ymm4,ymm7,ymm4
  70b598:	c5 d0 58 db          	vaddps xmm3,xmm5,xmm3
  70b59c:	c5 98 58 c0          	vaddps xmm0,xmm12,xmm0
  70b5a0:	c5 f8 14 eb          	vunpcklps xmm5,xmm0,xmm3
  70b5a4:	c5 f8 15 c3          	vunpckhps xmm0,xmm0,xmm3
  70b5a8:	c5 f8 11 46 10       	vmovups XMMWORD PTR [rsi+0x10],xmm0
  70b5ad:	c5 f8 11 2e          	vmovups XMMWORD PTR [rsi],xmm5
  70b5b1:	c5 f0 5c c4          	vsubps xmm0,xmm1,xmm4
  70b5b5:	c5 c8 58 da          	vaddps xmm3,xmm6,xmm2
  70b5b9:	c5 e0 14 e8          	vunpcklps xmm5,xmm3,xmm0
  70b5bd:	c5 e0 15 c0          	vunpckhps xmm0,xmm3,xmm0
  70b5c1:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  70b5c6:	c5 f8 11 6e 20       	vmovups XMMWORD PTR [rsi+0x20],xmm5
  70b5cb:	c5 f0 58 c4          	vaddps xmm0,xmm1,xmm4
  70b5cf:	c5 c8 5c ca          	vsubps xmm1,xmm6,xmm2
  70b5d3:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  70b5d7:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  70b5db:	c5 f8 11 46 50       	vmovups XMMWORD PTR [rsi+0x50],xmm0
  70b5e0:	c5 f8 11 56 40       	vmovups XMMWORD PTR [rsi+0x40],xmm2
  70b5e5:	48 89 ec             	mov    rsp,rbp
  70b5e8:	5d                   	pop    rbp
  70b5e9:	c5 f8 77             	vzeroupper
  70b5ec:	c3                   	ret
