
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c72c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c72c0:	48 c1 e2 04          	shl    rdx,0x4
  6c72c4:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  6c72c8:	31 d2                	xor    edx,edx
  6c72ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  6c72d0:	c5 fb 10 5c 17 10    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x10]
  6c72d6:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6c72dc:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  6c72e0:	c4 e3 65 0c e0 c0    	vblendps ymm4,ymm3,ymm0,0xc0
  6c72e6:	c5 fb 10 5c 17 28    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x28]
  6c72ec:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6c72f2:	c4 e3 65 0c f8 c0    	vblendps ymm7,ymm3,ymm0,0xc0
  6c72f8:	c5 fb 10 5c 17 40    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x40]
  6c72fe:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6c7304:	c4 e3 65 0c e8 c0    	vblendps ymm5,ymm3,ymm0,0xc0
  6c730a:	c5 78 10 0c 17       	vmovups xmm9,XMMWORD PTR [rdi+rdx*1]
  6c730f:	c5 f8 10 5c 17 18    	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x18]
  6c7315:	c5 78 10 44 17 30    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x30]
  6c731b:	c5 78 10 5c 17 48    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x48]
  6c7321:	c5 fb 10 74 17 58    	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x58]
  6c7327:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  6c732d:	c4 63 4d 0c e8 c0    	vblendps ymm13,ymm6,ymm0,0xc0
  6c7333:	c5 78 10 54 17 60    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x60]
  6c7339:	c5 fb 10 74 17 70    	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x70]
  6c733f:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  6c7345:	c4 e3 4d 0c f0 c0    	vblendps ymm6,ymm6,ymm0,0xc0
  6c734b:	c5 78 10 64 17 78    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x78]
  6c7351:	c5 7b 10 b4 17 88 00 	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x88]
  6c7358:	00 00 
  6c735a:	c4 43 7d 18 f6 01    	vinsertf128 ymm14,ymm0,xmm14,0x1
  6c7360:	c4 63 0d 0c f8 c0    	vblendps ymm15,ymm14,ymm0,0xc0
  6c7366:	c4 c3 7d 19 e6 01    	vextractf128 xmm14,ymm4,0x1
  6c736c:	c4 c1 30 c6 e6 dd    	vshufps xmm4,xmm9,xmm14,0xdd
  6c7372:	c4 e3 7d 19 e8 01    	vextractf128 xmm0,ymm5,0x1
  6c7378:	c5 b8 c6 e8 dd       	vshufps xmm5,xmm8,xmm0,0xdd
  6c737d:	c4 e3 7d 19 f2 01    	vextractf128 xmm2,ymm6,0x1
  6c7383:	c5 a8 c6 f2 dd       	vshufps xmm6,xmm10,xmm2,0xdd
  6c7388:	c4 43 7d 19 ed 01    	vextractf128 xmm13,ymm13,0x1
  6c738e:	c4 41 30 c6 ce 88    	vshufps xmm9,xmm9,xmm14,0x88
  6c7394:	c4 41 20 c6 f5 dd    	vshufps xmm14,xmm11,xmm13,0xdd
  6c739a:	c4 43 7d 19 ff 01    	vextractf128 xmm15,ymm15,0x1
  6c73a0:	c5 b8 c6 c0 88       	vshufps xmm0,xmm8,xmm0,0x88
  6c73a5:	c4 41 18 c6 c7 dd    	vshufps xmm8,xmm12,xmm15,0xdd
  6c73ab:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  6c73b1:	c5 a8 c6 d2 88       	vshufps xmm2,xmm10,xmm2,0x88
  6c73b6:	c5 60 c6 d7 dd       	vshufps xmm10,xmm3,xmm7,0xdd
  6c73bb:	c4 41 20 c6 ed 88    	vshufps xmm13,xmm11,xmm13,0x88
  6c73c1:	c4 c1 18 c6 cf 88    	vshufps xmm1,xmm12,xmm15,0x88
  6c73c7:	c5 e0 c6 ff 88       	vshufps xmm7,xmm3,xmm7,0x88
  6c73cc:	c5 54 58 e6          	vaddps ymm12,ymm5,ymm6
  6c73d0:	c5 9c 58 dc          	vaddps ymm3,ymm12,ymm4
  6c73d4:	c4 41 3c 58 da       	vaddps ymm11,ymm8,ymm10
  6c73d9:	c4 62 7d 18 3d 7e e0 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff9ae07e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c73e0:	9a ff 
  6c73e2:	c4 62 05 ac e4       	vfnmadd213ps ymm12,ymm15,ymm4
  6c73e7:	c5 7c 29 fc          	vmovaps ymm4,ymm15
  6c73eb:	c5 7c 58 fa          	vaddps ymm15,ymm0,ymm2
  6c73ef:	c5 fc 5c d2          	vsubps ymm2,ymm0,ymm2
  6c73f3:	c4 c1 24 58 c6       	vaddps ymm0,ymm11,ymm14
  6c73f8:	c4 42 5d ac de       	vfnmadd213ps ymm11,ymm4,ymm14
  6c73fd:	c5 74 58 f7          	vaddps ymm14,ymm1,ymm7
  6c7401:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  6c7405:	c4 c1 04 58 f9       	vaddps ymm7,ymm15,ymm9
  6c740a:	c5 fc 11 7c 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm7
  6c7410:	c4 42 5d ac f9       	vfnmadd213ps ymm15,ymm4,ymm9
  6c7415:	c5 d4 5c f6          	vsubps ymm6,ymm5,ymm6
  6c7419:	c4 c1 0c 58 ed       	vaddps ymm5,ymm14,ymm13
  6c741e:	c4 42 5d ac f5       	vfnmadd213ps ymm14,ymm4,ymm13
  6c7423:	c4 e2 7d 18 25 a8 de 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff9adea8]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c742a:	9a ff 
  6c742c:	c5 ec 59 d4          	vmulps ymm2,ymm2,ymm4
  6c7430:	c4 c1 3c 5c fa       	vsubps ymm7,ymm8,ymm10
  6c7435:	c5 1c 58 d2          	vaddps ymm10,ymm12,ymm2
  6c7439:	c5 f4 59 cc          	vmulps ymm1,ymm1,ymm4
  6c743d:	c5 9c 5c d2          	vsubps ymm2,ymm12,ymm2
  6c7441:	c5 24 58 e1          	vaddps ymm12,ymm11,ymm1
  6c7445:	c5 cc 59 f4          	vmulps ymm6,ymm6,ymm4
  6c7449:	c5 a4 5c c9          	vsubps ymm1,ymm11,ymm1
  6c744d:	c5 04 5c de          	vsubps ymm11,ymm15,ymm6
  6c7451:	c5 c4 59 fc          	vmulps ymm7,ymm7,ymm4
  6c7455:	c5 04 58 c6          	vaddps ymm8,ymm15,ymm6
  6c7459:	c5 0c 5c ef          	vsubps ymm13,ymm14,ymm7
  6c745d:	c5 0c 58 cf          	vaddps ymm9,ymm14,ymm7
  6c7461:	c4 c1 2c 5c f4       	vsubps ymm6,ymm10,ymm12
  6c7466:	c4 c1 28 58 fc       	vaddps xmm7,xmm10,xmm12
  6c746b:	c5 64 58 d0          	vaddps ymm10,ymm3,ymm0
  6c746f:	c4 63 2d 18 d7 01    	vinsertf128 ymm10,ymm10,xmm7,0x1
  6c7475:	c5 e8 5c f9          	vsubps xmm7,xmm2,xmm1
  6c7479:	c4 e3 4d 18 f7 01    	vinsertf128 ymm6,ymm6,xmm7,0x1
  6c747f:	c5 e8 58 c9          	vaddps xmm1,xmm2,xmm1
  6c7483:	c5 e0 5c c0          	vsubps xmm0,xmm3,xmm0
  6c7487:	c5 ac 14 d6          	vunpcklps ymm2,ymm10,ymm6
  6c748b:	c5 f4 14 f8          	vunpcklps ymm7,ymm1,ymm0
  6c748f:	c5 ed 14 df          	vunpcklpd ymm3,ymm2,ymm7
  6c7493:	c5 ed 15 ff          	vunpckhpd ymm7,ymm2,ymm7
  6c7497:	c5 ac 15 d6          	vunpckhps ymm2,ymm10,ymm6
  6c749b:	c5 f4 15 c0          	vunpckhps ymm0,ymm1,ymm0
  6c749f:	c5 ed 14 f0          	vunpcklpd ymm6,ymm2,ymm0
  6c74a3:	c4 c1 24 5c c5       	vsubps ymm0,ymm11,ymm13
  6c74a8:	c4 c1 20 58 cd       	vaddps xmm1,xmm11,xmm13
  6c74ad:	c5 fc 10 64 24 d8    	vmovups ymm4,YMMWORD PTR [rsp-0x28]
  6c74b3:	c5 dc 58 d5          	vaddps ymm2,ymm4,ymm5
  6c74b7:	c4 e3 6d 18 c9 01    	vinsertf128 ymm1,ymm2,xmm1,0x1
  6c74bd:	c4 c1 38 5c d1       	vsubps xmm2,xmm8,xmm9
  6c74c2:	c4 e3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm2,0x1
  6c74c8:	c4 c1 38 58 d1       	vaddps xmm2,xmm8,xmm9
  6c74cd:	c5 d8 5c ed          	vsubps xmm5,xmm4,xmm5
  6c74d1:	c5 74 14 c0          	vunpcklps ymm8,ymm1,ymm0
  6c74d5:	c5 6c 14 cd          	vunpcklps ymm9,ymm2,ymm5
  6c74d9:	c4 c1 3d 14 e1       	vunpcklpd ymm4,ymm8,ymm9
  6c74de:	c4 41 3d 15 c1       	vunpckhpd ymm8,ymm8,ymm9
  6c74e3:	c5 f4 15 c0          	vunpckhps ymm0,ymm1,ymm0
  6c74e7:	c5 ec 15 cd          	vunpckhps ymm1,ymm2,ymm5
  6c74eb:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  6c74ef:	c5 fc 10 49 40       	vmovups ymm1,YMMWORD PTR [rcx+0x40]
  6c74f4:	c5 fc 10 51 60       	vmovups ymm2,YMMWORD PTR [rcx+0x60]
  6c74f9:	c5 f4 59 ef          	vmulps ymm5,ymm1,ymm7
  6c74fd:	c4 e2 3d bc ea       	vfnmadd231ps ymm5,ymm8,ymm2
  6c7502:	c5 bc 59 c9          	vmulps ymm1,ymm8,ymm1
  6c7506:	c5 7c 10 81 80 00 00 	vmovups ymm8,YMMWORD PTR [rcx+0x80]
  6c750d:	00 
  6c750e:	c4 e2 45 b8 ca       	vfmadd231ps ymm1,ymm7,ymm2
  6c7513:	c5 fc 10 91 a0 00 00 	vmovups ymm2,YMMWORD PTR [rcx+0xa0]
  6c751a:	00 
  6c751b:	c5 bc 59 fe          	vmulps ymm7,ymm8,ymm6
  6c751f:	c4 e2 7d bc fa       	vfnmadd231ps ymm7,ymm0,ymm2
  6c7524:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  6c7528:	c5 54 58 c7          	vaddps ymm8,ymm5,ymm7
  6c752c:	c4 e2 4d b8 c2       	vfmadd231ps ymm0,ymm6,ymm2
  6c7531:	c5 f4 58 d0          	vaddps ymm2,ymm1,ymm0
  6c7535:	c4 62 7d 18 0d 22 df 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff9adf22]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c753c:	9a ff 
  6c753e:	c5 7c 29 ce          	vmovaps ymm6,ymm9
  6c7542:	c4 e2 3d ac f3       	vfnmadd213ps ymm6,ymm8,ymm3
  6c7547:	c5 f4 5c c0          	vsubps ymm0,ymm1,ymm0
  6c754b:	c4 62 7d 18 15 80 dd 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff9add80]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c7552:	9a ff 
  6c7554:	c5 ac 59 c0          	vmulps ymm0,ymm10,ymm0
  6c7558:	c5 cc 58 c8          	vaddps ymm1,ymm6,ymm0
  6c755c:	c5 d4 5c ef          	vsubps ymm5,ymm5,ymm7
  6c7560:	c5 7c 29 cf          	vmovaps ymm7,ymm9
  6c7564:	c4 e2 6d ac fc       	vfnmadd213ps ymm7,ymm2,ymm4
  6c7569:	c5 ac 59 ed          	vmulps ymm5,ymm10,ymm5
  6c756d:	c5 cc 5c c0          	vsubps ymm0,ymm6,ymm0
  6c7571:	c5 c4 5c f5          	vsubps ymm6,ymm7,ymm5
  6c7575:	c5 c4 58 ed          	vaddps ymm5,ymm7,ymm5
  6c7579:	c5 ec 58 d4          	vaddps ymm2,ymm2,ymm4
  6c757d:	c5 bc 58 db          	vaddps ymm3,ymm8,ymm3
  6c7581:	c5 ec 14 e3          	vunpcklps ymm4,ymm2,ymm3
  6c7585:	c5 e8 14 fb          	vunpcklps xmm7,xmm2,xmm3
  6c7589:	c5 e8 15 d3          	vunpckhps xmm2,xmm2,xmm3
  6c758d:	c5 f8 11 54 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm2
  6c7593:	c5 f8 11 3c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm7
  6c7598:	c4 e3 7d 19 64 16 20 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x20],ymm4,0x1
  6c759f:	01 
  6c75a0:	c5 cc 14 d1          	vunpcklps ymm2,ymm6,ymm1
  6c75a4:	c5 c8 14 d9          	vunpcklps xmm3,xmm6,xmm1
  6c75a8:	c5 c8 15 c9          	vunpckhps xmm1,xmm6,xmm1
  6c75ac:	c5 f8 11 4c 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm1
  6c75b2:	c5 f8 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm3
  6c75b8:	c4 e3 7d 19 54 16 50 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x50],ymm2,0x1
  6c75bf:	01 
  6c75c0:	c5 d4 14 c8          	vunpcklps ymm1,ymm5,ymm0
  6c75c4:	c5 d0 14 d0          	vunpcklps xmm2,xmm5,xmm0
  6c75c8:	c5 d0 15 c0          	vunpckhps xmm0,xmm5,xmm0
  6c75cc:	c5 f8 11 44 16 70    	vmovups XMMWORD PTR [rsi+rdx*1+0x70],xmm0
  6c75d2:	c5 f8 11 54 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm2
  6c75d8:	c4 e3 7d 19 8c 16 80 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x80],ymm1,0x1
  6c75df:	00 00 00 01 
  6c75e3:	48 81 c2 90 00 00 00 	add    rdx,0x90
  6c75ea:	48 39 d0             	cmp    rax,rdx
  6c75ed:	0f 85 dd fc ff ff    	jne    6c72d0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  6c75f3:	c5 f8 77             	vzeroupper
  6c75f6:	c3                   	ret
