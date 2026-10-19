
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006f0400 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6f0400:	55                   	push   rbp
  6f0401:	48 89 e5             	mov    rbp,rsp
  6f0404:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6f0408:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  6f040f:	48 c1 e2 04          	shl    rdx,0x4
  6f0413:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  6f0417:	31 d2                	xor    edx,edx
  6f0419:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  6f041e:	4c 8d 4c 24 18       	lea    r9,[rsp+0x18]
  6f0423:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  6f042a:	84 00 00 00 00 00 
  6f0430:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  6f0435:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  6f043a:	c5 fb 10 5c 17 10    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x10]
  6f0440:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6f0446:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  6f044a:	c4 e3 65 0c e0 c0    	vblendps ymm4,ymm3,ymm0,0xc0
  6f0450:	c5 fb 10 5c 17 28    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x28]
  6f0456:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6f045c:	c4 e3 65 0c f8 c0    	vblendps ymm7,ymm3,ymm0,0xc0
  6f0462:	c5 fb 10 5c 17 40    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x40]
  6f0468:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6f046e:	c4 e3 65 0c e8 c0    	vblendps ymm5,ymm3,ymm0,0xc0
  6f0474:	c5 78 10 0c 17       	vmovups xmm9,XMMWORD PTR [rdi+rdx*1]
  6f0479:	c5 f8 10 5c 17 18    	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x18]
  6f047f:	c5 78 10 44 17 30    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x30]
  6f0485:	c5 78 10 5c 17 48    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x48]
  6f048b:	c5 fb 10 74 17 58    	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x58]
  6f0491:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  6f0497:	c4 63 4d 0c e8 c0    	vblendps ymm13,ymm6,ymm0,0xc0
  6f049d:	c5 78 10 54 17 60    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x60]
  6f04a3:	c5 fb 10 74 17 70    	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x70]
  6f04a9:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  6f04af:	c4 e3 4d 0c f0 c0    	vblendps ymm6,ymm6,ymm0,0xc0
  6f04b5:	c5 78 10 64 17 78    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x78]
  6f04bb:	c5 7b 10 b4 17 88 00 	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x88]
  6f04c2:	00 00 
  6f04c4:	c4 43 7d 18 f6 01    	vinsertf128 ymm14,ymm0,xmm14,0x1
  6f04ca:	c4 63 0d 0c f8 c0    	vblendps ymm15,ymm14,ymm0,0xc0
  6f04d0:	c4 c3 7d 19 e6 01    	vextractf128 xmm14,ymm4,0x1
  6f04d6:	c4 c1 30 c6 e6 88    	vshufps xmm4,xmm9,xmm14,0x88
  6f04dc:	c4 e3 7d 19 e8 01    	vextractf128 xmm0,ymm5,0x1
  6f04e2:	c5 b8 c6 e8 88       	vshufps xmm5,xmm8,xmm0,0x88
  6f04e7:	c4 e3 7d 19 f2 01    	vextractf128 xmm2,ymm6,0x1
  6f04ed:	c5 a8 c6 f2 88       	vshufps xmm6,xmm10,xmm2,0x88
  6f04f2:	c4 43 7d 19 ed 01    	vextractf128 xmm13,ymm13,0x1
  6f04f8:	c4 41 30 c6 ce dd    	vshufps xmm9,xmm9,xmm14,0xdd
  6f04fe:	c4 41 20 c6 f5 88    	vshufps xmm14,xmm11,xmm13,0x88
  6f0504:	c4 43 7d 19 ff 01    	vextractf128 xmm15,ymm15,0x1
  6f050a:	c5 b8 c6 c0 dd       	vshufps xmm0,xmm8,xmm0,0xdd
  6f050f:	c4 41 18 c6 c7 88    	vshufps xmm8,xmm12,xmm15,0x88
  6f0515:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  6f051b:	c5 a8 c6 d2 dd       	vshufps xmm2,xmm10,xmm2,0xdd
  6f0520:	c5 60 c6 d7 88       	vshufps xmm10,xmm3,xmm7,0x88
  6f0525:	c4 41 20 c6 ed dd    	vshufps xmm13,xmm11,xmm13,0xdd
  6f052b:	c4 c1 18 c6 cf dd    	vshufps xmm1,xmm12,xmm15,0xdd
  6f0531:	c5 e0 c6 ff dd       	vshufps xmm7,xmm3,xmm7,0xdd
  6f0536:	c5 54 58 e6          	vaddps ymm12,ymm5,ymm6
  6f053a:	c5 9c 58 dc          	vaddps ymm3,ymm12,ymm4
  6f053e:	c4 41 3c 58 da       	vaddps ymm11,ymm8,ymm10
  6f0543:	c4 62 7d 18 3d 14 4f 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff984f14]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6f054a:	98 ff 
  6f054c:	c4 62 05 ac e4       	vfnmadd213ps ymm12,ymm15,ymm4
  6f0551:	c5 7c 29 fc          	vmovaps ymm4,ymm15
  6f0555:	c5 7c 58 fa          	vaddps ymm15,ymm0,ymm2
  6f0559:	c5 fc 5c d2          	vsubps ymm2,ymm0,ymm2
  6f055d:	c4 c1 24 58 c6       	vaddps ymm0,ymm11,ymm14
  6f0562:	c4 42 5d ac de       	vfnmadd213ps ymm11,ymm4,ymm14
  6f0567:	c5 74 58 f7          	vaddps ymm14,ymm1,ymm7
  6f056b:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  6f056f:	c4 c1 04 58 f9       	vaddps ymm7,ymm15,ymm9
  6f0574:	c5 fc 29 7c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm7
  6f057a:	c4 42 5d ac f9       	vfnmadd213ps ymm15,ymm4,ymm9
  6f057f:	c5 d4 5c f6          	vsubps ymm6,ymm5,ymm6
  6f0583:	c4 c1 0c 58 ed       	vaddps ymm5,ymm14,ymm13
  6f0588:	c4 42 5d ac f5       	vfnmadd213ps ymm14,ymm4,ymm13
  6f058d:	c4 e2 7d 18 25 3e 4d 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff984d3e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6f0594:	98 ff 
  6f0596:	c5 ec 59 d4          	vmulps ymm2,ymm2,ymm4
  6f059a:	c4 c1 3c 5c fa       	vsubps ymm7,ymm8,ymm10
  6f059f:	c5 1c 58 d2          	vaddps ymm10,ymm12,ymm2
  6f05a3:	c5 f4 59 cc          	vmulps ymm1,ymm1,ymm4
  6f05a7:	c5 9c 5c d2          	vsubps ymm2,ymm12,ymm2
  6f05ab:	c5 24 58 e1          	vaddps ymm12,ymm11,ymm1
  6f05af:	c5 cc 59 f4          	vmulps ymm6,ymm6,ymm4
  6f05b3:	c5 a4 5c c9          	vsubps ymm1,ymm11,ymm1
  6f05b7:	c5 04 5c de          	vsubps ymm11,ymm15,ymm6
  6f05bb:	c5 c4 59 fc          	vmulps ymm7,ymm7,ymm4
  6f05bf:	c5 04 58 c6          	vaddps ymm8,ymm15,ymm6
  6f05c3:	c5 0c 5c ef          	vsubps ymm13,ymm14,ymm7
  6f05c7:	c5 0c 58 cf          	vaddps ymm9,ymm14,ymm7
  6f05cb:	c4 c1 2c 5c f4       	vsubps ymm6,ymm10,ymm12
  6f05d0:	c4 c1 28 58 fc       	vaddps xmm7,xmm10,xmm12
  6f05d5:	c5 64 58 d0          	vaddps ymm10,ymm3,ymm0
  6f05d9:	c4 63 2d 18 d7 01    	vinsertf128 ymm10,ymm10,xmm7,0x1
  6f05df:	c5 e8 5c f9          	vsubps xmm7,xmm2,xmm1
  6f05e3:	c4 e3 4d 18 f7 01    	vinsertf128 ymm6,ymm6,xmm7,0x1
  6f05e9:	c5 e8 58 c9          	vaddps xmm1,xmm2,xmm1
  6f05ed:	c5 e0 5c c0          	vsubps xmm0,xmm3,xmm0
  6f05f1:	c5 ac 14 d6          	vunpcklps ymm2,ymm10,ymm6
  6f05f5:	c5 f4 14 f8          	vunpcklps ymm7,ymm1,ymm0
  6f05f9:	c5 ed 14 df          	vunpcklpd ymm3,ymm2,ymm7
  6f05fd:	c5 ed 15 ff          	vunpckhpd ymm7,ymm2,ymm7
  6f0601:	c5 ac 15 d6          	vunpckhps ymm2,ymm10,ymm6
  6f0605:	c5 f4 15 c0          	vunpckhps ymm0,ymm1,ymm0
  6f0609:	c5 ed 14 f0          	vunpcklpd ymm6,ymm2,ymm0
  6f060d:	c4 c1 24 5c c5       	vsubps ymm0,ymm11,ymm13
  6f0612:	c4 c1 20 58 cd       	vaddps xmm1,xmm11,xmm13
  6f0617:	c5 fc 28 64 24 20    	vmovaps ymm4,YMMWORD PTR [rsp+0x20]
  6f061d:	c5 dc 58 d5          	vaddps ymm2,ymm4,ymm5
  6f0621:	c4 e3 6d 18 c9 01    	vinsertf128 ymm1,ymm2,xmm1,0x1
  6f0627:	c4 c1 38 5c d1       	vsubps xmm2,xmm8,xmm9
  6f062c:	c4 e3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm2,0x1
  6f0632:	c4 c1 38 58 d1       	vaddps xmm2,xmm8,xmm9
  6f0637:	c5 d8 5c ed          	vsubps xmm5,xmm4,xmm5
  6f063b:	c5 74 14 c0          	vunpcklps ymm8,ymm1,ymm0
  6f063f:	c5 6c 14 cd          	vunpcklps ymm9,ymm2,ymm5
  6f0643:	c4 c1 3d 14 e1       	vunpcklpd ymm4,ymm8,ymm9
  6f0648:	c4 41 3d 15 c1       	vunpckhpd ymm8,ymm8,ymm9
  6f064d:	c5 f4 15 c0          	vunpckhps ymm0,ymm1,ymm0
  6f0651:	c5 ec 15 cd          	vunpckhps ymm1,ymm2,ymm5
  6f0655:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  6f0659:	c5 fc 10 49 40       	vmovups ymm1,YMMWORD PTR [rcx+0x40]
  6f065e:	c5 fc 10 51 60       	vmovups ymm2,YMMWORD PTR [rcx+0x60]
  6f0663:	c5 f4 59 ef          	vmulps ymm5,ymm1,ymm7
  6f0667:	c4 e2 3d bc ea       	vfnmadd231ps ymm5,ymm8,ymm2
  6f066c:	c5 bc 59 c9          	vmulps ymm1,ymm8,ymm1
  6f0670:	c5 7c 10 81 80 00 00 	vmovups ymm8,YMMWORD PTR [rcx+0x80]
  6f0677:	00 
  6f0678:	c4 e2 45 b8 ca       	vfmadd231ps ymm1,ymm7,ymm2
  6f067d:	c5 fc 10 91 a0 00 00 	vmovups ymm2,YMMWORD PTR [rcx+0xa0]
  6f0684:	00 
  6f0685:	c5 bc 59 fe          	vmulps ymm7,ymm8,ymm6
  6f0689:	c4 e2 7d bc fa       	vfnmadd231ps ymm7,ymm0,ymm2
  6f068e:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  6f0692:	c5 54 58 c7          	vaddps ymm8,ymm5,ymm7
  6f0696:	c4 e2 4d b8 c2       	vfmadd231ps ymm0,ymm6,ymm2
  6f069b:	c5 f4 58 d0          	vaddps ymm2,ymm1,ymm0
  6f069f:	c4 62 7d 18 0d b8 4d 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff984db8]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6f06a6:	98 ff 
  6f06a8:	c5 7c 29 ce          	vmovaps ymm6,ymm9
  6f06ac:	c4 e2 3d ac f3       	vfnmadd213ps ymm6,ymm8,ymm3
  6f06b1:	c5 f4 5c c0          	vsubps ymm0,ymm1,ymm0
  6f06b5:	c4 62 7d 18 15 16 4c 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff984c16]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6f06bc:	98 ff 
  6f06be:	c5 ac 59 c0          	vmulps ymm0,ymm10,ymm0
  6f06c2:	c5 cc 58 c8          	vaddps ymm1,ymm6,ymm0
  6f06c6:	c5 d4 5c ef          	vsubps ymm5,ymm5,ymm7
  6f06ca:	c5 7c 29 cf          	vmovaps ymm7,ymm9
  6f06ce:	c4 e2 6d ac fc       	vfnmadd213ps ymm7,ymm2,ymm4
  6f06d3:	c5 ac 59 ed          	vmulps ymm5,ymm10,ymm5
  6f06d7:	c5 cc 5c c0          	vsubps ymm0,ymm6,ymm0
  6f06db:	c5 c4 5c f5          	vsubps ymm6,ymm7,ymm5
  6f06df:	c5 c4 58 ed          	vaddps ymm5,ymm7,ymm5
  6f06e3:	c5 bc 58 db          	vaddps ymm3,ymm8,ymm3
  6f06e7:	c5 ec 58 d4          	vaddps ymm2,ymm2,ymm4
  6f06eb:	c5 e4 14 e2          	vunpcklps ymm4,ymm3,ymm2
  6f06ef:	c5 e0 14 fa          	vunpcklps xmm7,xmm3,xmm2
  6f06f3:	c5 e0 15 d2          	vunpckhps xmm2,xmm3,xmm2
  6f06f7:	c5 f8 11 54 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm2
  6f06fd:	c5 f8 11 3c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm7
  6f0702:	c4 e3 7d 19 64 16 20 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x20],ymm4,0x1
  6f0709:	01 
  6f070a:	c5 f4 14 d6          	vunpcklps ymm2,ymm1,ymm6
  6f070e:	c5 f0 14 de          	vunpcklps xmm3,xmm1,xmm6
  6f0712:	c5 f0 15 ce          	vunpckhps xmm1,xmm1,xmm6
  6f0716:	c5 f8 11 4c 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm1
  6f071c:	c5 f8 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm3
  6f0722:	c4 e3 7d 19 54 16 50 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x50],ymm2,0x1
  6f0729:	01 
  6f072a:	c5 fc 14 cd          	vunpcklps ymm1,ymm0,ymm5
  6f072e:	c5 f8 14 d5          	vunpcklps xmm2,xmm0,xmm5
  6f0732:	c5 f8 15 c5          	vunpckhps xmm0,xmm0,xmm5
  6f0736:	c5 f8 11 44 16 70    	vmovups XMMWORD PTR [rsi+rdx*1+0x70],xmm0
  6f073c:	c5 f8 11 54 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm2
  6f0742:	c4 e3 7d 19 8c 16 80 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x80],ymm1,0x1
  6f0749:	00 00 00 01 
  6f074d:	48 81 c2 90 00 00 00 	add    rdx,0x90
  6f0754:	48 39 d0             	cmp    rax,rdx
  6f0757:	0f 85 d3 fc ff ff    	jne    6f0430 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  6f075d:	48 89 ec             	mov    rsp,rbp
  6f0760:	5d                   	pop    rbp
  6f0761:	c5 f8 77             	vzeroupper
  6f0764:	c3                   	ret
