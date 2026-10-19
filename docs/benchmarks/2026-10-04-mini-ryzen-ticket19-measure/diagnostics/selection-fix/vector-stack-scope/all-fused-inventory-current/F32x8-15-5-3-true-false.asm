
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000070c280 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  70c280:	55                   	push   rbp
  70c281:	48 89 e5             	mov    rbp,rsp
  70c284:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  70c288:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  70c28f:	c6 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],0x0
  70c296:	00 
  70c297:	48 8d 84 24 80 00 00 	lea    rax,[rsp+0x80]
  70c29e:	00 
  70c29f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  70c2a4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  70c2a9:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  70c2ae:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  70c2b4:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  70c2b8:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  70c2be:	c5 fb 10 57 28       	vmovsd xmm2,QWORD PTR [rdi+0x28]
  70c2c3:	c4 e3 7d 18 d2 01    	vinsertf128 ymm2,ymm0,xmm2,0x1
  70c2c9:	c4 e3 6d 0c d1 c0    	vblendps ymm2,ymm2,ymm1,0xc0
  70c2cf:	c5 fb 10 5f 40       	vmovsd xmm3,QWORD PTR [rdi+0x40]
  70c2d4:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  70c2da:	c4 e3 65 0c e1 c0    	vblendps ymm4,ymm3,ymm1,0xc0
  70c2e0:	c5 78 10 1f          	vmovups xmm11,XMMWORD PTR [rdi]
  70c2e4:	c5 f8 10 7f 18       	vmovups xmm7,XMMWORD PTR [rdi+0x18]
  70c2e9:	c5 78 10 4f 30       	vmovups xmm9,XMMWORD PTR [rdi+0x30]
  70c2ee:	c5 78 10 67 48       	vmovups xmm12,XMMWORD PTR [rdi+0x48]
  70c2f3:	c5 fb 10 5f 58       	vmovsd xmm3,QWORD PTR [rdi+0x58]
  70c2f8:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  70c2fe:	c4 e3 65 0c e9 c0    	vblendps ymm5,ymm3,ymm1,0xc0
  70c304:	c5 78 10 47 60       	vmovups xmm8,XMMWORD PTR [rdi+0x60]
  70c309:	c5 fb 10 5f 70       	vmovsd xmm3,QWORD PTR [rdi+0x70]
  70c30e:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  70c314:	c4 e3 65 0c c9 c0    	vblendps ymm1,ymm3,ymm1,0xc0
  70c31a:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  70c320:	c5 20 c6 d0 dd       	vshufps xmm10,xmm11,xmm0,0xdd
  70c325:	c4 c3 7d 19 d5 01    	vextractf128 xmm13,ymm2,0x1
  70c32b:	c4 c1 40 c6 d5 dd    	vshufps xmm2,xmm7,xmm13,0xdd
  70c331:	c5 fc 29 54 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm2
  70c337:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  70c33d:	c5 b8 c6 d9 dd       	vshufps xmm3,xmm8,xmm1,0xdd
  70c342:	c5 fc 29 5c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm3
  70c348:	c4 c3 7d 19 e6 01    	vextractf128 xmm14,ymm4,0x1
  70c34e:	c4 c1 30 c6 e6 dd    	vshufps xmm4,xmm9,xmm14,0xdd
  70c354:	c4 c3 7d 19 ef 01    	vextractf128 xmm15,ymm5,0x1
  70c35a:	c4 c1 18 c6 ef dd    	vshufps xmm5,xmm12,xmm15,0xdd
  70c360:	c5 20 c6 d8 88       	vshufps xmm11,xmm11,xmm0,0x88
  70c365:	c4 c1 40 c6 fd 88    	vshufps xmm7,xmm7,xmm13,0x88
  70c36b:	c5 38 c6 c1 88       	vshufps xmm8,xmm8,xmm1,0x88
  70c370:	c4 41 30 c6 ce 88    	vshufps xmm9,xmm9,xmm14,0x88
  70c376:	c4 41 18 c6 e7 88    	vshufps xmm12,xmm12,xmm15,0x88
  70c37c:	c5 ec 58 db          	vaddps ymm3,ymm2,ymm3
  70c380:	c5 2c 58 eb          	vaddps ymm13,ymm10,ymm3
  70c384:	c5 5c 58 f5          	vaddps ymm14,ymm4,ymm5
  70c388:	c4 62 7d 18 3d 57 93 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff969357]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  70c38f:	96 ff 
  70c391:	c5 7c 29 fe          	vmovaps ymm6,ymm15
  70c395:	c4 c2 65 a8 f2       	vfmadd213ps ymm6,ymm3,ymm10
  70c39a:	c4 e2 7d 18 15 a1 92 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff9692a1]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  70c3a1:	96 ff 
  70c3a3:	c4 c2 6d ac da       	vfnmadd213ps ymm3,ymm2,ymm10
  70c3a8:	c5 bc 58 c7          	vaddps ymm0,ymm8,ymm7
  70c3ac:	c4 e2 0d bc f2       	vfnmadd231ps ymm6,ymm14,ymm2
  70c3b1:	c4 41 7c 28 d7       	vmovaps ymm10,ymm15
  70c3b6:	c4 42 7d a8 d3       	vfmadd213ps ymm10,ymm0,ymm11
  70c3bb:	c4 c1 34 58 cc       	vaddps ymm1,ymm9,ymm12
  70c3c0:	c4 62 75 bc d2       	vfnmadd231ps ymm10,ymm1,ymm2
  70c3c5:	c4 c2 7d ac d3       	vfnmadd213ps ymm2,ymm0,ymm11
  70c3ca:	c5 a4 58 c0          	vaddps ymm0,ymm11,ymm0
  70c3ce:	c4 41 14 58 ee       	vaddps ymm13,ymm13,ymm14
  70c3d3:	c4 c2 05 b8 de       	vfmadd231ps ymm3,ymm15,ymm14
  70c3d8:	c4 c2 75 b8 d7       	vfmadd231ps ymm2,ymm1,ymm15
  70c3dd:	c5 7c 58 d9          	vaddps ymm11,ymm0,ymm1
  70c3e1:	c4 c1 44 5c c0       	vsubps ymm0,ymm7,ymm8
  70c3e6:	c4 c1 34 5c cc       	vsubps ymm1,ymm9,ymm12
  70c3eb:	c4 e2 7d 18 3d 64 93 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff969364]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  70c3f2:	96 ff 
  70c3f4:	c5 7c 28 44 24 40    	vmovaps ymm8,YMMWORD PTR [rsp+0x40]
  70c3fa:	c5 3c 5c 44 24 60    	vsubps ymm8,ymm8,YMMWORD PTR [rsp+0x60]
  70c400:	c4 62 7d 18 0d 97 8f 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff968f97]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  70c407:	96 ff 
  70c409:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  70c40d:	c5 f4 59 ef          	vmulps ymm5,ymm1,ymm7
  70c411:	c4 c2 7d b8 e9       	vfmadd231ps ymm5,ymm0,ymm9
  70c416:	c5 fc 59 c7          	vmulps ymm0,ymm0,ymm7
  70c41a:	c4 e2 35 bc c1       	vfnmadd231ps ymm0,ymm9,ymm1
  70c41f:	c5 5c 59 e7          	vmulps ymm12,ymm4,ymm7
  70c423:	c4 42 3d b8 e1       	vfmadd231ps ymm12,ymm8,ymm9
  70c428:	c5 bc 59 ff          	vmulps ymm7,ymm8,ymm7
  70c42c:	c4 c2 5d bc f9       	vfnmadd231ps ymm7,ymm4,ymm9
  70c431:	c5 c8 5c cd          	vsubps xmm1,xmm6,xmm5
  70c435:	c4 e3 15 18 c9 01    	vinsertf128 ymm1,ymm13,xmm1,0x1
  70c43b:	c5 c8 58 ed          	vaddps xmm5,xmm6,xmm5
  70c43f:	c5 e0 5c f0          	vsubps xmm6,xmm3,xmm0
  70c443:	c5 e0 58 c0          	vaddps xmm0,xmm3,xmm0
  70c447:	c5 f4 14 dd          	vunpcklps ymm3,ymm1,ymm5
  70c44b:	c5 7d 14 c6          	vunpcklpd ymm8,ymm0,ymm6
  70c44f:	c4 c1 64 c6 e0 84    	vshufps ymm4,ymm3,ymm8,0x84
  70c455:	c4 c1 64 c6 d8 de    	vshufps ymm3,ymm3,ymm8,0xde
  70c45b:	c5 d5 15 c9          	vunpckhpd ymm1,ymm5,ymm1
  70c45f:	c5 fc 15 c6          	vunpckhps ymm0,ymm0,ymm6
  70c463:	c5 f4 c6 c8 42       	vshufps ymm1,ymm1,ymm0,0x42
  70c468:	c4 c1 18 58 c2       	vaddps xmm0,xmm12,xmm10
  70c46d:	c4 e3 25 18 e8 01    	vinsertf128 ymm5,ymm11,xmm0,0x1
  70c473:	c4 c1 28 5c f4       	vsubps xmm6,xmm10,xmm12
  70c478:	c5 40 58 c2          	vaddps xmm8,xmm7,xmm2
  70c47c:	c5 e8 5c d7          	vsubps xmm2,xmm2,xmm7
  70c480:	c5 d4 14 fe          	vunpcklps ymm7,ymm5,ymm6
  70c484:	c4 41 6d 14 c8       	vunpcklpd ymm9,ymm2,ymm8
  70c489:	c4 c1 44 c6 c1 84    	vshufps ymm0,ymm7,ymm9,0x84
  70c48f:	c4 c1 44 c6 f9 de    	vshufps ymm7,ymm7,ymm9,0xde
  70c495:	c5 cd 15 ed          	vunpckhpd ymm5,ymm6,ymm5
  70c499:	c4 c1 6c 15 d0       	vunpckhps ymm2,ymm2,ymm8
  70c49e:	c5 d4 c6 d2 42       	vshufps ymm2,ymm5,ymm2,0x42
  70c4a3:	c5 fc 10 6a 40       	vmovups ymm5,YMMWORD PTR [rdx+0x40]
  70c4a8:	c5 fc 10 72 60       	vmovups ymm6,YMMWORD PTR [rdx+0x60]
  70c4ad:	c5 54 59 c3          	vmulps ymm8,ymm5,ymm3
  70c4b1:	c4 62 45 bc c6       	vfnmadd231ps ymm8,ymm7,ymm6
  70c4b6:	c5 d4 59 ef          	vmulps ymm5,ymm5,ymm7
  70c4ba:	c5 fc 10 ba 80 00 00 	vmovups ymm7,YMMWORD PTR [rdx+0x80]
  70c4c1:	00 
  70c4c2:	c4 e2 65 b8 ee       	vfmadd231ps ymm5,ymm3,ymm6
  70c4c7:	c5 fc 10 9a a0 00 00 	vmovups ymm3,YMMWORD PTR [rdx+0xa0]
  70c4ce:	00 
  70c4cf:	c5 c4 59 f1          	vmulps ymm6,ymm7,ymm1
  70c4d3:	c4 e2 6d bc f3       	vfnmadd231ps ymm6,ymm2,ymm3
  70c4d8:	c5 c4 59 d2          	vmulps ymm2,ymm7,ymm2
  70c4dc:	c5 bc 58 fe          	vaddps ymm7,ymm8,ymm6
  70c4e0:	c4 e2 75 b8 d3       	vfmadd231ps ymm2,ymm1,ymm3
  70c4e5:	c5 d4 58 ca          	vaddps ymm1,ymm5,ymm2
  70c4e9:	c4 e2 7d 18 1d 6e 8f 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff968f6e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  70c4f0:	96 ff 
  70c4f2:	c5 d4 5c d2          	vsubps ymm2,ymm5,ymm2
  70c4f6:	c5 fc 28 eb          	vmovaps ymm5,ymm3
  70c4fa:	c4 e2 45 ac ec       	vfnmadd213ps ymm5,ymm7,ymm4
  70c4ff:	c5 bc 5c f6          	vsubps ymm6,ymm8,ymm6
  70c503:	c4 62 7d 18 05 c8 8d 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff968dc8]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  70c50a:	96 ff 
  70c50c:	c5 bc 59 d2          	vmulps ymm2,ymm8,ymm2
  70c510:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  70c514:	c5 54 58 c2          	vaddps ymm8,ymm5,ymm2
  70c518:	c4 e2 75 ac d8       	vfnmadd213ps ymm3,ymm1,ymm0
  70c51d:	c5 d4 5c d2          	vsubps ymm2,ymm5,ymm2
  70c521:	c5 e4 5c ee          	vsubps ymm5,ymm3,ymm6
  70c525:	c5 e4 58 de          	vaddps ymm3,ymm3,ymm6
  70c529:	c5 f4 58 c0          	vaddps ymm0,ymm1,ymm0
  70c52d:	c5 c4 58 cc          	vaddps ymm1,ymm7,ymm4
  70c531:	c5 fc 14 e1          	vunpcklps ymm4,ymm0,ymm1
  70c535:	c5 f8 14 f1          	vunpcklps xmm6,xmm0,xmm1
  70c539:	c5 f8 15 c1          	vunpckhps xmm0,xmm0,xmm1
  70c53d:	c5 f8 11 46 10       	vmovups XMMWORD PTR [rsi+0x10],xmm0
  70c542:	c5 f8 11 36          	vmovups XMMWORD PTR [rsi],xmm6
  70c546:	c4 e3 7d 19 e0 01    	vextractf128 xmm0,ymm4,0x1
  70c54c:	c5 f8 13 46 20       	vmovlps QWORD PTR [rsi+0x20],xmm0
  70c551:	c4 c1 54 14 c0       	vunpcklps ymm0,ymm5,ymm8
  70c556:	c4 c1 50 14 c8       	vunpcklps xmm1,xmm5,xmm8
  70c55b:	c4 c1 50 15 e0       	vunpckhps xmm4,xmm5,xmm8
  70c560:	c5 f8 11 66 38       	vmovups XMMWORD PTR [rsi+0x38],xmm4
  70c565:	c5 f8 11 4e 28       	vmovups XMMWORD PTR [rsi+0x28],xmm1
  70c56a:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  70c570:	c5 f8 13 46 48       	vmovlps QWORD PTR [rsi+0x48],xmm0
  70c575:	c5 e4 14 c2          	vunpcklps ymm0,ymm3,ymm2
  70c579:	c5 e0 14 ca          	vunpcklps xmm1,xmm3,xmm2
  70c57d:	c5 e0 15 d2          	vunpckhps xmm2,xmm3,xmm2
  70c581:	c5 f8 11 56 60       	vmovups XMMWORD PTR [rsi+0x60],xmm2
  70c586:	c5 f8 11 4e 50       	vmovups XMMWORD PTR [rsi+0x50],xmm1
  70c58b:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  70c591:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  70c596:	48 89 ec             	mov    rsp,rbp
  70c599:	5d                   	pop    rbp
  70c59a:	c5 f8 77             	vzeroupper
  70c59d:	c3                   	ret
