
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006f7540 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6f7540:	55                   	push   rbp
  6f7541:	48 89 e5             	mov    rbp,rsp
  6f7544:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6f7548:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  6f754f:	48 6b c2 78          	imul   rax,rdx,0x78
  6f7553:	31 d2                	xor    edx,edx
  6f7555:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  6f755a:	4c 8d 4c 24 18       	lea    r9,[rsp+0x18]
  6f755f:	c4 e2 7d 18 25 38 de 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff97de38]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  6f7566:	97 ff 
  6f7568:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  6f756f:	00 
  6f7570:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  6f7575:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  6f757a:	c5 fb 10 7c 17 10    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x10]
  6f7580:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  6f7586:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  6f758a:	c4 63 45 0c c8 c0    	vblendps ymm9,ymm7,ymm0,0xc0
  6f7590:	c5 fb 10 7c 17 28    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x28]
  6f7596:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  6f759c:	c4 63 45 0c d8 c0    	vblendps ymm11,ymm7,ymm0,0xc0
  6f75a2:	c5 fb 10 7c 17 40    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x40]
  6f75a8:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  6f75ae:	c4 63 45 0c e0 c0    	vblendps ymm12,ymm7,ymm0,0xc0
  6f75b4:	c5 78 10 2c 17       	vmovups xmm13,XMMWORD PTR [rdi+rdx*1]
  6f75b9:	c5 78 10 74 17 18    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x18]
  6f75bf:	c5 78 10 44 17 30    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x30]
  6f75c5:	c5 f8 10 7c 17 48    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x48]
  6f75cb:	c5 7b 10 54 17 58    	vmovsd xmm10,QWORD PTR [rdi+rdx*1+0x58]
  6f75d1:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  6f75d7:	c4 63 2d 0c f8 c0    	vblendps ymm15,ymm10,ymm0,0xc0
  6f75dd:	c5 f8 10 74 17 60    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x60]
  6f75e3:	c5 7b 10 54 17 70    	vmovsd xmm10,QWORD PTR [rdi+rdx*1+0x70]
  6f75e9:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  6f75ef:	c4 e3 2d 0c e8 c0    	vblendps ymm5,ymm10,ymm0,0xc0
  6f75f5:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  6f75fb:	c4 41 10 c6 d1 dd    	vshufps xmm10,xmm13,xmm9,0xdd
  6f7601:	c4 63 7d 19 da 01    	vextractf128 xmm2,ymm11,0x1
  6f7607:	c5 88 c6 c2 dd       	vshufps xmm0,xmm14,xmm2,0xdd
  6f760c:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  6f7612:	c4 41 10 c6 d9 88    	vshufps xmm11,xmm13,xmm9,0x88
  6f7618:	c5 48 c6 ed dd       	vshufps xmm13,xmm6,xmm5,0xdd
  6f761d:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  6f7623:	c5 88 c6 d2 88       	vshufps xmm2,xmm14,xmm2,0x88
  6f7628:	c4 41 38 c6 f4 dd    	vshufps xmm14,xmm8,xmm12,0xdd
  6f762e:	c4 43 7d 19 ff 01    	vextractf128 xmm15,ymm15,0x1
  6f7634:	c5 c8 c6 ed 88       	vshufps xmm5,xmm6,xmm5,0x88
  6f7639:	c4 c1 40 c6 f7 dd    	vshufps xmm6,xmm7,xmm15,0xdd
  6f763f:	c4 c1 38 c6 dc 88    	vshufps xmm3,xmm8,xmm12,0x88
  6f7645:	c4 41 40 c6 ff 88    	vshufps xmm15,xmm7,xmm15,0x88
  6f764b:	c5 14 58 c0          	vaddps ymm8,ymm13,ymm0
  6f764f:	c5 ec 58 fd          	vaddps ymm7,ymm2,ymm5
  6f7653:	c5 ec 5c d5          	vsubps ymm2,ymm2,ymm5
  6f7657:	c5 04 58 e3          	vaddps ymm12,ymm15,ymm3
  6f765b:	c4 c1 64 5c df       	vsubps ymm3,ymm3,ymm15
  6f7660:	c4 c1 3c 58 ea       	vaddps ymm5,ymm8,ymm10
  6f7665:	c4 41 7c 5c fd       	vsubps ymm15,ymm0,ymm13
  6f766a:	c5 0c 58 ee          	vaddps ymm13,ymm14,ymm6
  6f766e:	c5 94 58 c5          	vaddps ymm0,ymm13,ymm5
  6f7672:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  6f7678:	c5 8c 5c ee          	vsubps ymm5,ymm14,ymm6
  6f767c:	c4 62 7d 18 0d 63 e0 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff97e063]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  6f7683:	97 ff 
  6f7685:	c4 41 7c 28 f1       	vmovaps ymm14,ymm9
  6f768a:	c4 42 3d a8 f2       	vfmadd213ps ymm14,ymm8,ymm10
  6f768f:	c4 e2 7d 18 0d ac df 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff97dfac]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  6f7696:	97 ff 
  6f7698:	c4 42 75 ac c2       	vfnmadd213ps ymm8,ymm1,ymm10
  6f769d:	c5 a4 58 f7          	vaddps ymm6,ymm11,ymm7
  6f76a1:	c5 1c 58 d6          	vaddps ymm10,ymm12,ymm6
  6f76a5:	c4 62 15 bc f1       	vfnmadd231ps ymm14,ymm13,ymm1
  6f76aa:	c4 42 35 b8 c5       	vfmadd231ps ymm8,ymm9,ymm13
  6f76af:	c4 e2 7d 18 05 a0 e0 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff97e0a0]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  6f76b6:	97 ff 
  6f76b8:	c5 e4 59 f0          	vmulps ymm6,ymm3,ymm0
  6f76bc:	c4 e2 6d b8 f4       	vfmadd231ps ymm6,ymm2,ymm4
  6f76c1:	c5 ec 59 d0          	vmulps ymm2,ymm2,ymm0
  6f76c5:	c4 e2 5d bc d3       	vfnmadd231ps ymm2,ymm4,ymm3
  6f76ca:	c4 41 7c 28 e9       	vmovaps ymm13,ymm9
  6f76cf:	c4 42 45 a8 eb       	vfmadd213ps ymm13,ymm7,ymm11
  6f76d4:	c4 62 1d bc e9       	vfnmadd231ps ymm13,ymm12,ymm1
  6f76d9:	c4 c2 75 ac fb       	vfnmadd213ps ymm7,ymm1,ymm11
  6f76de:	c5 d4 59 d8          	vmulps ymm3,ymm5,ymm0
  6f76e2:	c4 e2 05 b8 dc       	vfmadd231ps ymm3,ymm15,ymm4
  6f76e7:	c4 c2 35 b8 fc       	vfmadd231ps ymm7,ymm9,ymm12
  6f76ec:	c5 04 59 e0          	vmulps ymm12,ymm15,ymm0
  6f76f0:	c4 62 5d bc e5       	vfnmadd231ps ymm12,ymm4,ymm5
  6f76f5:	c5 88 5c ee          	vsubps xmm5,xmm14,xmm6
  6f76f9:	c5 fc 28 44 24 20    	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  6f76ff:	c4 e3 7d 18 ed 01    	vinsertf128 ymm5,ymm0,xmm5,0x1
  6f7705:	c5 88 58 f6          	vaddps xmm6,xmm14,xmm6
  6f7709:	c5 38 5c ca          	vsubps xmm9,xmm8,xmm2
  6f770d:	c5 b8 58 d2          	vaddps xmm2,xmm8,xmm2
  6f7711:	c5 54 14 de          	vunpcklps ymm11,ymm5,ymm6
  6f7715:	c4 41 6d 14 f1       	vunpcklpd ymm14,ymm2,ymm9
  6f771a:	c4 41 24 c6 c6 84    	vshufps ymm8,ymm11,ymm14,0x84
  6f7720:	c4 41 24 c6 de de    	vshufps ymm11,ymm11,ymm14,0xde
  6f7726:	c5 cd 15 ed          	vunpckhpd ymm5,ymm6,ymm5
  6f772a:	c4 c1 6c 15 d1       	vunpckhps ymm2,ymm2,ymm9
  6f772f:	c5 54 c6 ca 42       	vshufps ymm9,ymm5,ymm2,0x42
  6f7734:	c5 90 58 d3          	vaddps xmm2,xmm13,xmm3
  6f7738:	c4 e3 2d 18 d2 01    	vinsertf128 ymm2,ymm10,xmm2,0x1
  6f773e:	c5 90 5c db          	vsubps xmm3,xmm13,xmm3
  6f7742:	c5 98 58 ef          	vaddps xmm5,xmm12,xmm7
  6f7746:	c4 c1 40 5c f4       	vsubps xmm6,xmm7,xmm12
  6f774b:	c5 6c 14 d3          	vunpcklps ymm10,ymm2,ymm3
  6f774f:	c5 4d 14 e5          	vunpcklpd ymm12,ymm6,ymm5
  6f7753:	c4 c1 2c c6 fc 84    	vshufps ymm7,ymm10,ymm12,0x84
  6f7759:	c4 41 2c c6 d4 de    	vshufps ymm10,ymm10,ymm12,0xde
  6f775f:	c5 e5 15 d2          	vunpckhpd ymm2,ymm3,ymm2
  6f7763:	c5 cc 15 dd          	vunpckhps ymm3,ymm6,ymm5
  6f7767:	c5 ec c6 d3 42       	vshufps ymm2,ymm2,ymm3,0x42
  6f776c:	c5 fc 10 59 40       	vmovups ymm3,YMMWORD PTR [rcx+0x40]
  6f7771:	c5 fc 10 69 60       	vmovups ymm5,YMMWORD PTR [rcx+0x60]
  6f7776:	c5 a4 59 f3          	vmulps ymm6,ymm11,ymm3
  6f777a:	c4 e2 2d bc f5       	vfnmadd231ps ymm6,ymm10,ymm5
  6f777f:	c5 ac 59 db          	vmulps ymm3,ymm10,ymm3
  6f7783:	c5 7c 10 91 80 00 00 	vmovups ymm10,YMMWORD PTR [rcx+0x80]
  6f778a:	00 
  6f778b:	c4 e2 25 b8 dd       	vfmadd231ps ymm3,ymm11,ymm5
  6f7790:	c5 fc 10 a9 a0 00 00 	vmovups ymm5,YMMWORD PTR [rcx+0xa0]
  6f7797:	00 
  6f7798:	c4 41 2c 59 d9       	vmulps ymm11,ymm10,ymm9
  6f779d:	c4 62 6d bc dd       	vfnmadd231ps ymm11,ymm2,ymm5
  6f77a2:	c5 ac 59 d2          	vmulps ymm2,ymm10,ymm2
  6f77a6:	c5 24 58 d6          	vaddps ymm10,ymm11,ymm6
  6f77aa:	c4 e2 35 b8 d5       	vfmadd231ps ymm2,ymm9,ymm5
  6f77af:	c5 e4 58 ea          	vaddps ymm5,ymm3,ymm2
  6f77b3:	c4 e2 7d 18 05 a4 dc 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff97dca4]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6f77ba:	97 ff 
  6f77bc:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  6f77c0:	c4 42 2d ac c8       	vfnmadd213ps ymm9,ymm10,ymm8
  6f77c5:	c5 e4 5c d2          	vsubps ymm2,ymm3,ymm2
  6f77c9:	c4 e2 7d 18 0d 02 db 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff97db02]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6f77d0:	97 ff 
  6f77d2:	c5 ec 59 d1          	vmulps ymm2,ymm2,ymm1
  6f77d6:	c5 b4 58 da          	vaddps ymm3,ymm9,ymm2
  6f77da:	c4 c1 4c 5c f3       	vsubps ymm6,ymm6,ymm11
  6f77df:	c5 7c 28 d8          	vmovaps ymm11,ymm0
  6f77e3:	c4 62 55 ac df       	vfnmadd213ps ymm11,ymm5,ymm7
  6f77e8:	c5 cc 59 f1          	vmulps ymm6,ymm6,ymm1
  6f77ec:	c5 b4 5c d2          	vsubps ymm2,ymm9,ymm2
  6f77f0:	c5 24 5c ce          	vsubps ymm9,ymm11,ymm6
  6f77f4:	c5 a4 58 f6          	vaddps ymm6,ymm11,ymm6
  6f77f8:	c5 d4 58 ef          	vaddps ymm5,ymm5,ymm7
  6f77fc:	c4 c1 2c 58 f8       	vaddps ymm7,ymm10,ymm8
  6f7801:	c5 54 14 c7          	vunpcklps ymm8,ymm5,ymm7
  6f7805:	c5 50 14 d7          	vunpcklps xmm10,xmm5,xmm7
  6f7809:	c5 d0 15 ef          	vunpckhps xmm5,xmm5,xmm7
  6f780d:	c5 f8 11 6c 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm5
  6f7813:	c5 78 11 14 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm10
  6f7818:	c4 63 7d 19 c5 01    	vextractf128 xmm5,ymm8,0x1
  6f781e:	c5 f8 13 6c 16 20    	vmovlps QWORD PTR [rsi+rdx*1+0x20],xmm5
  6f7824:	c5 b4 14 eb          	vunpcklps ymm5,ymm9,ymm3
  6f7828:	c5 b0 14 fb          	vunpcklps xmm7,xmm9,xmm3
  6f782c:	c5 b0 15 db          	vunpckhps xmm3,xmm9,xmm3
  6f7830:	c5 f8 11 5c 16 38    	vmovups XMMWORD PTR [rsi+rdx*1+0x38],xmm3
  6f7836:	c5 f8 11 7c 16 28    	vmovups XMMWORD PTR [rsi+rdx*1+0x28],xmm7
  6f783c:	c4 e3 7d 19 eb 01    	vextractf128 xmm3,ymm5,0x1
  6f7842:	c5 f8 13 5c 16 48    	vmovlps QWORD PTR [rsi+rdx*1+0x48],xmm3
  6f7848:	c5 cc 14 da          	vunpcklps ymm3,ymm6,ymm2
  6f784c:	c5 c8 14 ea          	vunpcklps xmm5,xmm6,xmm2
  6f7850:	c5 c8 15 d2          	vunpckhps xmm2,xmm6,xmm2
  6f7854:	c5 f8 11 54 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm2
  6f785a:	c5 f8 11 6c 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm5
  6f7860:	c4 e3 7d 19 da 01    	vextractf128 xmm2,ymm3,0x1
  6f7866:	c5 f8 13 54 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm2
  6f786c:	48 83 c2 78          	add    rdx,0x78
  6f7870:	48 39 d0             	cmp    rax,rdx
  6f7873:	0f 85 f7 fc ff ff    	jne    6f7570 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  6f7879:	48 89 ec             	mov    rsp,rbp
  6f787c:	5d                   	pop    rbp
  6f787d:	c5 f8 77             	vzeroupper
  6f7880:	c3                   	ret
