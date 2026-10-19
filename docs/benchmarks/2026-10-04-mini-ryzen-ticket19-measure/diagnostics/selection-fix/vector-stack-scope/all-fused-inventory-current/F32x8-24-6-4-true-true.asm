
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000070d480 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  70d480:	55                   	push   rbp
  70d481:	48 89 e5             	mov    rbp,rsp
  70d484:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  70d488:	48 81 ec 40 01 00 00 	sub    rsp,0x140
  70d48f:	48 c1 e2 06          	shl    rdx,0x6
  70d493:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  70d497:	31 d2                	xor    edx,edx
  70d499:	4c 8d 84 24 c0 00 00 	lea    r8,[rsp+0xc0]
  70d4a0:	00 
  70d4a1:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  70d4a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  70d4ad:	00 00 00 
  70d4b0:	c6 84 24 c0 00 00 00 	mov    BYTE PTR [rsp+0xc0],0x0
  70d4b7:	00 
  70d4b8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  70d4bd:	c5 f8 10 3c 17       	vmovups xmm7,XMMWORD PTR [rdi+rdx*1]
  70d4c2:	c5 78 10 44 17 10    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x10]
  70d4c8:	c5 f8 10 6c 17 20    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x20]
  70d4ce:	c5 f8 10 74 17 30    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x30]
  70d4d4:	c4 c1 40 c6 c0 dd    	vshufps xmm0,xmm7,xmm8,0xdd
  70d4da:	c5 fc 29 84 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm0
  70d4e1:	00 00 
  70d4e3:	c5 78 10 5c 17 50    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x50]
  70d4e9:	c5 78 10 64 17 40    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x40]
  70d4ef:	c4 c1 18 c6 c3 dd    	vshufps xmm0,xmm12,xmm11,0xdd
  70d4f5:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  70d4fb:	c5 78 10 ac 17 90 00 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x90]
  70d502:	00 00 
  70d504:	c5 78 10 b4 17 80 00 	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x80]
  70d50b:	00 00 
  70d50d:	c4 c1 08 c6 e5 dd    	vshufps xmm4,xmm14,xmm13,0xdd
  70d513:	c5 fc 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm4
  70d519:	c5 78 10 7c 17 70    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x70]
  70d51f:	c5 f8 10 54 17 60    	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x60]
  70d525:	c4 41 68 c6 cf dd    	vshufps xmm9,xmm2,xmm15,0xdd
  70d52b:	c5 f8 10 8c 17 b0 00 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0xb0]
  70d532:	00 00 
  70d534:	c4 41 40 c6 d0 88    	vshufps xmm10,xmm7,xmm8,0x88
  70d53a:	c5 f8 10 84 17 a0 00 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0xa0]
  70d541:	00 00 
  70d543:	c4 c1 18 c6 db 88    	vshufps xmm3,xmm12,xmm11,0x88
  70d549:	c5 f8 c6 f9 dd       	vshufps xmm7,xmm0,xmm1,0xdd
  70d54e:	c4 41 08 c6 ed 88    	vshufps xmm13,xmm14,xmm13,0x88
  70d554:	c5 50 c6 c6 dd       	vshufps xmm8,xmm5,xmm6,0xdd
  70d559:	c4 41 68 c6 ff 88    	vshufps xmm15,xmm2,xmm15,0x88
  70d55f:	c5 f8 c6 c1 88       	vshufps xmm0,xmm0,xmm1,0x88
  70d564:	c5 d0 c6 ce 88       	vshufps xmm1,xmm5,xmm6,0x88
  70d569:	c5 fc 28 74 24 60    	vmovaps ymm6,YMMWORD PTR [rsp+0x60]
  70d56f:	c5 4c 58 e4          	vaddps ymm12,ymm6,ymm4
  70d573:	c5 fc 28 ac 24 80 00 	vmovaps ymm5,YMMWORD PTR [rsp+0x80]
  70d57a:	00 00 
  70d57c:	c5 9c 58 d5          	vaddps ymm2,ymm12,ymm5
  70d580:	c5 fc 29 94 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm2
  70d587:	00 00 
  70d589:	c5 3c 58 df          	vaddps ymm11,ymm8,ymm7
  70d58d:	c4 e2 7d 18 15 ca 7e 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff967eca]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  70d594:	96 ff 
  70d596:	c4 62 6d ac e5       	vfnmadd213ps ymm12,ymm2,ymm5
  70d59b:	c5 14 58 f3          	vaddps ymm14,ymm13,ymm3
  70d59f:	c4 c1 64 5c ed       	vsubps ymm5,ymm3,ymm13
  70d5a4:	c4 41 24 58 e9       	vaddps ymm13,ymm11,ymm9
  70d5a9:	c4 42 6d ac d9       	vfnmadd213ps ymm11,ymm2,ymm9
  70d5ae:	c5 7c 58 c9          	vaddps ymm9,ymm0,ymm1
  70d5b2:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  70d5b6:	c4 c1 0c 58 da       	vaddps ymm3,ymm14,ymm10
  70d5bb:	c4 42 6d ac f2       	vfnmadd213ps ymm14,ymm2,ymm10
  70d5c0:	c5 cc 5c 4c 24 40    	vsubps ymm1,ymm6,YMMWORD PTR [rsp+0x40]
  70d5c6:	c4 c1 34 58 e7       	vaddps ymm4,ymm9,ymm15
  70d5cb:	c4 42 6d ac cf       	vfnmadd213ps ymm9,ymm2,ymm15
  70d5d0:	c4 e2 7d 18 15 fb 7c 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff967cfb]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  70d5d7:	96 ff 
  70d5d9:	c5 d4 59 ea          	vmulps ymm5,ymm5,ymm2
  70d5dd:	c4 c1 44 5c f8       	vsubps ymm7,ymm7,ymm8
  70d5e2:	c5 1c 58 d5          	vaddps ymm10,ymm12,ymm5
  70d5e6:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  70d5ea:	c5 9c 5c ed          	vsubps ymm5,ymm12,ymm5
  70d5ee:	c5 24 58 e0          	vaddps ymm12,ymm11,ymm0
  70d5f2:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  70d5f6:	c5 a4 5c c0          	vsubps ymm0,ymm11,ymm0
  70d5fa:	c5 0c 5c d9          	vsubps ymm11,ymm14,ymm1
  70d5fe:	c5 c4 59 fa          	vmulps ymm7,ymm7,ymm2
  70d602:	c5 0c 58 c1          	vaddps ymm8,ymm14,ymm1
  70d606:	c5 b4 5c cf          	vsubps ymm1,ymm9,ymm7
  70d60a:	c5 34 58 cf          	vaddps ymm9,ymm9,ymm7
  70d60e:	c4 c1 2c 5c fc       	vsubps ymm7,ymm10,ymm12
  70d613:	c4 41 28 58 d4       	vaddps xmm10,xmm10,xmm12
  70d618:	c5 fc 28 94 24 a0 00 	vmovaps ymm2,YMMWORD PTR [rsp+0xa0]
  70d61f:	00 00 
  70d621:	c5 14 58 e2          	vaddps ymm12,ymm13,ymm2
  70d625:	c4 43 1d 18 d2 01    	vinsertf128 ymm10,ymm12,xmm10,0x1
  70d62b:	c5 50 5c e0          	vsubps xmm12,xmm5,xmm0
  70d62f:	c4 c3 45 18 fc 01    	vinsertf128 ymm7,ymm7,xmm12,0x1
  70d635:	c5 d0 58 c0          	vaddps xmm0,xmm5,xmm0
  70d639:	c4 c1 68 5c ed       	vsubps xmm5,xmm2,xmm13
  70d63e:	c5 ac 14 f7          	vunpcklps ymm6,ymm10,ymm7
  70d642:	c5 7c 14 e5          	vunpcklps ymm12,ymm0,ymm5
  70d646:	c4 c1 4d 14 d4       	vunpcklpd ymm2,ymm6,ymm12
  70d64b:	c4 c1 4d 15 f4       	vunpckhpd ymm6,ymm6,ymm12
  70d650:	c5 2c 15 d7          	vunpckhps ymm10,ymm10,ymm7
  70d654:	c5 fc 15 c5          	vunpckhps ymm0,ymm0,ymm5
  70d658:	c5 ad 14 f8          	vunpcklpd ymm7,ymm10,ymm0
  70d65c:	c5 ad 15 e8          	vunpckhpd ymm5,ymm10,ymm0
  70d660:	c5 a4 5c c1          	vsubps ymm0,ymm11,ymm1
  70d664:	c5 a0 58 c9          	vaddps xmm1,xmm11,xmm1
  70d668:	c5 64 58 d4          	vaddps ymm10,ymm3,ymm4
  70d66c:	c4 e3 2d 18 c9 01    	vinsertf128 ymm1,ymm10,xmm1,0x1
  70d672:	c4 41 38 5c d1       	vsubps xmm10,xmm8,xmm9
  70d677:	c4 c3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm10,0x1
  70d67d:	c4 41 38 58 c1       	vaddps xmm8,xmm8,xmm9
  70d682:	c5 e0 5c e4          	vsubps xmm4,xmm3,xmm4
  70d686:	c5 74 14 c8          	vunpcklps ymm9,ymm1,ymm0
  70d68a:	c5 3c 14 d4          	vunpcklps ymm10,ymm8,ymm4
  70d68e:	c4 c1 35 14 da       	vunpcklpd ymm3,ymm9,ymm10
  70d693:	c4 41 35 15 ca       	vunpckhpd ymm9,ymm9,ymm10
  70d698:	c5 f4 15 c0          	vunpckhps ymm0,ymm1,ymm0
  70d69c:	c5 bc 15 cc          	vunpckhps ymm1,ymm8,ymm4
  70d6a0:	c5 7d 14 c1          	vunpcklpd ymm8,ymm0,ymm1
  70d6a4:	c5 fd 15 e1          	vunpckhpd ymm4,ymm0,ymm1
  70d6a8:	c5 fc 10 81 80 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0x80]
  70d6af:	00 
  70d6b0:	c5 fc 10 89 a0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xa0]
  70d6b7:	00 
  70d6b8:	c5 7c 59 d7          	vmulps ymm10,ymm0,ymm7
  70d6bc:	c4 62 3d bc d1       	vfnmadd231ps ymm10,ymm8,ymm1
  70d6c1:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  70d6c5:	c5 7c 10 41 40       	vmovups ymm8,YMMWORD PTR [rcx+0x40]
  70d6ca:	c4 e2 45 b8 c1       	vfmadd231ps ymm0,ymm7,ymm1
  70d6cf:	c5 fc 10 49 60       	vmovups ymm1,YMMWORD PTR [rcx+0x60]
  70d6d4:	c5 bc 59 fe          	vmulps ymm7,ymm8,ymm6
  70d6d8:	c4 e2 35 bc f9       	vfnmadd231ps ymm7,ymm9,ymm1
  70d6dd:	c4 41 3c 59 c1       	vmulps ymm8,ymm8,ymm9
  70d6e2:	c5 7c 10 89 c0 00 00 	vmovups ymm9,YMMWORD PTR [rcx+0xc0]
  70d6e9:	00 
  70d6ea:	c4 62 4d b8 c1       	vfmadd231ps ymm8,ymm6,ymm1
  70d6ef:	c5 fc 10 89 e0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xe0]
  70d6f6:	00 
  70d6f7:	c5 b4 59 f5          	vmulps ymm6,ymm9,ymm5
  70d6fb:	c4 e2 5d bc f1       	vfnmadd231ps ymm6,ymm4,ymm1
  70d700:	c5 b4 59 e4          	vmulps ymm4,ymm9,ymm4
  70d704:	c4 e2 55 b8 e1       	vfmadd231ps ymm4,ymm5,ymm1
  70d709:	c5 ac 58 ca          	vaddps ymm1,ymm10,ymm2
  70d70d:	c5 c4 58 ee          	vaddps ymm5,ymm7,ymm6
  70d711:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  70d716:	c5 3c 58 cc          	vaddps ymm9,ymm8,ymm4
  70d71a:	c5 bc 5c e4          	vsubps ymm4,ymm8,ymm4
  70d71e:	c5 7c 58 c3          	vaddps ymm8,ymm0,ymm3
  70d722:	c5 e4 5c c0          	vsubps ymm0,ymm3,ymm0
  70d726:	c5 ec 58 dc          	vaddps ymm3,ymm2,ymm4
  70d72a:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  70d72e:	c5 fc 58 fe          	vaddps ymm7,ymm0,ymm6
  70d732:	c5 ec 5c d4          	vsubps ymm2,ymm2,ymm4
  70d736:	c5 f4 5c e5          	vsubps ymm4,ymm1,ymm5
  70d73a:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  70d73e:	c4 c1 3c 5c f1       	vsubps ymm6,ymm8,ymm9
  70d743:	c4 41 3c 58 c1       	vaddps ymm8,ymm8,ymm9
  70d748:	c5 f4 58 cd          	vaddps ymm1,ymm1,ymm5
  70d74c:	c5 bc 14 e9          	vunpcklps ymm5,ymm8,ymm1
  70d750:	c5 38 14 c9          	vunpcklps xmm9,xmm8,xmm1
  70d754:	c5 b8 15 c9          	vunpckhps xmm1,xmm8,xmm1
  70d758:	c5 f8 11 4c 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm1
  70d75e:	c5 78 11 0c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm9
  70d763:	c4 e3 7d 19 6c 16 20 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x20],ymm5,0x1
  70d76a:	01 
  70d76b:	c5 c4 14 cb          	vunpcklps ymm1,ymm7,ymm3
  70d76f:	c5 c0 15 eb          	vunpckhps xmm5,xmm7,xmm3
  70d773:	c5 c0 14 db          	vunpcklps xmm3,xmm7,xmm3
  70d777:	c5 f8 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm3
  70d77d:	c5 f8 11 6c 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm5
  70d783:	c4 e3 7d 19 4c 16 50 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x50],ymm1,0x1
  70d78a:	01 
  70d78b:	c5 cc 14 cc          	vunpcklps ymm1,ymm6,ymm4
  70d78f:	c5 c8 15 dc          	vunpckhps xmm3,xmm6,xmm4
  70d793:	c5 c8 14 e4          	vunpcklps xmm4,xmm6,xmm4
  70d797:	c5 f8 11 64 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm4
  70d79d:	c5 f8 11 5c 16 70    	vmovups XMMWORD PTR [rsi+rdx*1+0x70],xmm3
  70d7a3:	c4 e3 7d 19 8c 16 80 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x80],ymm1,0x1
  70d7aa:	00 00 00 01 
  70d7ae:	c5 fc 14 ca          	vunpcklps ymm1,ymm0,ymm2
  70d7b2:	c5 f8 15 da          	vunpckhps xmm3,xmm0,xmm2
  70d7b6:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  70d7ba:	c5 f8 11 84 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm0
  70d7c1:	00 00 
  70d7c3:	c5 f8 11 9c 16 a0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa0],xmm3
  70d7ca:	00 00 
  70d7cc:	c4 e3 7d 19 8c 16 b0 	vextractf128 XMMWORD PTR [rsi+rdx*1+0xb0],ymm1,0x1
  70d7d3:	00 00 00 01 
  70d7d7:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  70d7de:	48 39 d0             	cmp    rax,rdx
  70d7e1:	0f 85 c9 fc ff ff    	jne    70d4b0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  70d7e7:	48 89 ec             	mov    rsp,rbp
  70d7ea:	5d                   	pop    rbp
  70d7eb:	c5 f8 77             	vzeroupper
  70d7ee:	c3                   	ret
