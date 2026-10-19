
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c6500 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c6500:	48 c1 e2 04          	shl    rdx,0x4
  6c6504:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  6c6508:	31 d2                	xor    edx,edx
  6c650a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  6c6510:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  6c6515:	c5 f8 10 54 17 20    	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x20]
  6c651b:	c5 fc 10 5c 17 30    	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x30]
  6c6521:	c5 f8 10 64 17 50    	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x50]
  6c6527:	c5 fc 10 6c 17 60    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x60]
  6c652d:	c5 f8 10 b4 17 80 00 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x80]
  6c6534:	00 00 
  6c6536:	c5 fc c6 fa dd       	vshufps ymm7,ymm0,ymm2,0xdd
  6c653b:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  6c6541:	c5 64 c6 c4 dd       	vshufps ymm8,ymm3,ymm4,0xdd
  6c6546:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  6c654c:	c5 54 c6 ce dd       	vshufps ymm9,ymm5,ymm6,0xdd
  6c6551:	c4 43 fd 01 d1 d8    	vpermpd ymm10,ymm9,0xd8
  6c6557:	c5 fc c6 c2 88       	vshufps ymm0,ymm0,ymm2,0x88
  6c655c:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  6c6562:	c5 e4 c6 d4 88       	vshufps ymm2,ymm3,ymm4,0x88
  6c6567:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  6c656d:	c5 d4 c6 de 88       	vshufps ymm3,ymm5,ymm6,0x88
  6c6572:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  6c6578:	c4 c1 3c 58 e2       	vaddps ymm4,ymm8,ymm10
  6c657d:	c5 dc 58 f7          	vaddps ymm6,ymm4,ymm7
  6c6581:	c5 6c 58 db          	vaddps ymm11,ymm2,ymm3
  6c6585:	c5 24 58 c8          	vaddps ymm9,ymm11,ymm0
  6c6589:	c4 e2 7d 18 2d ce ee 	vbroadcastss ymm5,DWORD PTR [rip+0xffffffffff9aeece]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c6590:	9a ff 
  6c6592:	c4 e2 55 ac e7       	vfnmadd213ps ymm4,ymm5,ymm7
  6c6597:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  6c659b:	c4 e2 7d 18 0d 30 ed 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9aed30]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c65a2:	9a ff 
  6c65a4:	c5 ec 59 d1          	vmulps ymm2,ymm2,ymm1
  6c65a8:	c5 dc 58 da          	vaddps ymm3,ymm4,ymm2
  6c65ac:	c4 62 55 ac d8       	vfnmadd213ps ymm11,ymm5,ymm0
  6c65b1:	c4 c1 3c 5c c2       	vsubps ymm0,ymm8,ymm10
  6c65b6:	c5 fc 59 c1          	vmulps ymm0,ymm0,ymm1
  6c65ba:	c5 a4 5c e8          	vsubps ymm5,ymm11,ymm0
  6c65be:	c5 dc 5c d2          	vsubps ymm2,ymm4,ymm2
  6c65c2:	c5 24 58 d8          	vaddps ymm11,ymm11,ymm0
  6c65c6:	c5 f8 28 c6          	vmovaps xmm0,xmm6
  6c65ca:	c4 e3 7d 19 f4 01    	vextractf128 xmm4,ymm6,0x1
  6c65d0:	c5 f8 28 f3          	vmovaps xmm6,xmm3
  6c65d4:	c4 e3 7d 19 df 01    	vextractf128 xmm7,ymm3,0x1
  6c65da:	c5 78 28 c2          	vmovaps xmm8,xmm2
  6c65de:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  6c65e4:	c5 dd 14 d2          	vunpcklpd ymm2,ymm4,ymm2
  6c65e8:	c4 41 7d 15 e0       	vunpckhpd ymm12,ymm0,ymm8
  6c65ed:	c4 c1 7d 14 c0       	vunpcklpd ymm0,ymm0,ymm8
  6c65f2:	c5 fa 7e e3          	vmovq  xmm4,xmm3
  6c65f6:	c5 cd 73 de 08       	vpsrldq ymm6,ymm6,0x8
  6c65fb:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  6c65ff:	c4 63 45 0c e9 cc    	vblendps ymm13,ymm7,ymm1,0xcc
  6c6605:	c5 fc c6 dc 88       	vshufps ymm3,ymm0,ymm4,0x88
  6c660a:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6c660f:	c5 fc c6 c4 dd       	vshufps ymm0,ymm0,ymm4,0xdd
  6c6614:	c5 fc c6 e0 d8       	vshufps ymm4,ymm0,ymm0,0xd8
  6c6619:	c5 9c c6 c6 88       	vshufps ymm0,ymm12,ymm6,0x88
  6c661e:	c5 7c c6 d0 d8       	vshufps ymm10,ymm0,ymm0,0xd8
  6c6623:	c5 9c c6 c6 dd       	vshufps ymm0,ymm12,ymm6,0xdd
  6c6628:	c5 fc c6 f8 d8       	vshufps ymm7,ymm0,ymm0,0xd8
  6c662d:	c4 c1 6c c6 c5 88    	vshufps ymm0,ymm2,ymm13,0x88
  6c6633:	c5 7c c6 c0 d8       	vshufps ymm8,ymm0,ymm0,0xd8
  6c6638:	c4 c1 6c c6 c5 dd    	vshufps ymm0,ymm2,ymm13,0xdd
  6c663e:	c5 fc c6 f0 d8       	vshufps ymm6,ymm0,ymm0,0xd8
  6c6643:	c5 78 29 c8          	vmovaps xmm0,xmm9
  6c6647:	c4 63 7d 19 ca 01    	vextractf128 xmm2,ymm9,0x1
  6c664d:	c5 78 28 cd          	vmovaps xmm9,xmm5
  6c6651:	c4 c3 7d 19 ec 01    	vextractf128 xmm12,ymm5,0x1
  6c6657:	c4 41 78 28 eb       	vmovaps xmm13,xmm11
  6c665c:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  6c6662:	c4 41 6d 14 fb       	vunpcklpd ymm15,ymm2,ymm11
  6c6667:	c4 c1 7d 15 d5       	vunpckhpd ymm2,ymm0,ymm13
  6c666c:	c4 c1 7d 14 c5       	vunpcklpd ymm0,ymm0,ymm13
  6c6671:	c5 7a 7e dd          	vmovq  xmm11,xmm5
  6c6675:	c4 c1 35 73 d9 08    	vpsrldq ymm9,ymm9,0x8
  6c667b:	c4 63 1d 0c e1 cc    	vblendps ymm12,ymm12,ymm1,0xcc
  6c6681:	c4 c1 7c c6 eb 88    	vshufps ymm5,ymm0,ymm11,0x88
  6c6687:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  6c668c:	c4 c1 7c c6 c3 dd    	vshufps ymm0,ymm0,ymm11,0xdd
  6c6692:	c5 7c c6 d8 d8       	vshufps ymm11,ymm0,ymm0,0xd8
  6c6697:	c4 c1 6c c6 c1 88    	vshufps ymm0,ymm2,ymm9,0x88
  6c669d:	c5 7c c6 e8 d8       	vshufps ymm13,ymm0,ymm0,0xd8
  6c66a2:	c4 c1 6c c6 c1 dd    	vshufps ymm0,ymm2,ymm9,0xdd
  6c66a8:	c5 7c c6 f0 d8       	vshufps ymm14,ymm0,ymm0,0xd8
  6c66ad:	c4 c1 04 c6 c4 88    	vshufps ymm0,ymm15,ymm12,0x88
  6c66b3:	c5 fc c6 d0 d8       	vshufps ymm2,ymm0,ymm0,0xd8
  6c66b8:	c4 c1 04 c6 c4 dd    	vshufps ymm0,ymm15,ymm12,0xdd
  6c66be:	c5 7c c6 e0 d8       	vshufps ymm12,ymm0,ymm0,0xd8
  6c66c3:	c5 fc 10 81 80 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0x80]
  6c66ca:	00 
  6c66cb:	c5 fc 10 89 a0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xa0]
  6c66d2:	00 
  6c66d3:	c5 2c 59 c8          	vmulps ymm9,ymm10,ymm0
  6c66d7:	c4 62 15 bc c9       	vfnmadd231ps ymm9,ymm13,ymm1
  6c66dc:	c5 14 59 f8          	vmulps ymm15,ymm13,ymm0
  6c66e0:	c5 fc 10 81 00 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x100]
  6c66e7:	00 
  6c66e8:	c4 62 2d b8 f9       	vfmadd231ps ymm15,ymm10,ymm1
  6c66ed:	c5 fc 10 89 20 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x120]
  6c66f4:	00 
  6c66f5:	c5 3c 59 e8          	vmulps ymm13,ymm8,ymm0
  6c66f9:	c4 62 6d bc e9       	vfnmadd231ps ymm13,ymm2,ymm1
  6c66fe:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  6c6702:	c5 fc 10 91 c0 00 00 	vmovups ymm2,YMMWORD PTR [rcx+0xc0]
  6c6709:	00 
  6c670a:	c4 e2 3d b8 c1       	vfmadd231ps ymm0,ymm8,ymm1
  6c670f:	c5 fc 10 89 e0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xe0]
  6c6716:	00 
  6c6717:	c5 6c 59 c7          	vmulps ymm8,ymm2,ymm7
  6c671b:	c4 62 0d bc c1       	vfnmadd231ps ymm8,ymm14,ymm1
  6c6720:	c5 0c 59 d2          	vmulps ymm10,ymm14,ymm2
  6c6724:	c5 fc 10 91 40 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x140]
  6c672b:	00 
  6c672c:	c4 62 45 b8 d1       	vfmadd231ps ymm10,ymm7,ymm1
  6c6731:	c5 fc 10 89 60 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x160]
  6c6738:	00 
  6c6739:	c5 6c 59 f6          	vmulps ymm14,ymm2,ymm6
  6c673d:	c4 62 1d bc f1       	vfnmadd231ps ymm14,ymm12,ymm1
  6c6742:	c5 9c 59 fa          	vmulps ymm7,ymm12,ymm2
  6c6746:	c5 fc 10 51 40       	vmovups ymm2,YMMWORD PTR [rcx+0x40]
  6c674b:	c4 e2 4d b8 f9       	vfmadd231ps ymm7,ymm6,ymm1
  6c6750:	c5 fc 10 49 60       	vmovups ymm1,YMMWORD PTR [rcx+0x60]
  6c6755:	c5 6c 59 e4          	vmulps ymm12,ymm2,ymm4
  6c6759:	c4 62 25 bc e1       	vfnmadd231ps ymm12,ymm11,ymm1
  6c675e:	c5 a4 59 f2          	vmulps ymm6,ymm11,ymm2
  6c6762:	c4 c1 34 58 d5       	vaddps ymm2,ymm9,ymm13
  6c6767:	c4 e2 5d b8 f1       	vfmadd231ps ymm6,ymm4,ymm1
  6c676c:	c5 ec 58 cb          	vaddps ymm1,ymm2,ymm3
  6c6770:	c5 fc 11 4c 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm1
  6c6776:	c4 c1 0c 58 cc       	vaddps ymm1,ymm14,ymm12
  6c677b:	c4 e2 7d 18 25 dc ec 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff9aecdc]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c6782:	9a ff 
  6c6784:	c4 e2 5d ac d3       	vfnmadd213ps ymm2,ymm4,ymm3
  6c6789:	c5 84 58 d8          	vaddps ymm3,ymm15,ymm0
  6c678d:	c5 04 5c d8          	vsubps ymm11,ymm15,ymm0
  6c6791:	c5 bc 58 c1          	vaddps ymm0,ymm8,ymm1
  6c6795:	c5 fc 11 44 24 b8    	vmovups YMMWORD PTR [rsp-0x48],ymm0
  6c679b:	c4 62 5d bc c1       	vfnmadd231ps ymm8,ymm4,ymm1
  6c67a0:	c5 c4 58 ce          	vaddps ymm1,ymm7,ymm6
  6c67a4:	c5 44 5c fe          	vsubps ymm15,ymm7,ymm6
  6c67a8:	c5 e4 58 f5          	vaddps ymm6,ymm3,ymm5
  6c67ac:	c4 e2 5d ac dd       	vfnmadd213ps ymm3,ymm4,ymm5
  6c67b1:	c5 ac 58 f9          	vaddps ymm7,ymm10,ymm1
  6c67b5:	c4 e2 7d 18 05 16 eb 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9aeb16]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c67bc:	9a ff 
  6c67be:	c5 24 59 d8          	vmulps ymm11,ymm11,ymm0
  6c67c2:	c4 41 34 5c ed       	vsubps ymm13,ymm9,ymm13
  6c67c7:	c5 a4 58 ea          	vaddps ymm5,ymm11,ymm2
  6c67cb:	c5 04 59 f8          	vmulps ymm15,ymm15,ymm0
  6c67cf:	c4 62 5d bc d1       	vfnmadd231ps ymm10,ymm4,ymm1
  6c67d4:	c4 41 3c 58 cf       	vaddps ymm9,ymm8,ymm15
  6c67d9:	c5 94 59 c8          	vmulps ymm1,ymm13,ymm0
  6c67dd:	c4 41 0c 5c ec       	vsubps ymm13,ymm14,ymm12
  6c67e2:	c5 64 5c e1          	vsubps ymm12,ymm3,ymm1
  6c67e6:	c5 94 59 c0          	vmulps ymm0,ymm13,ymm0
  6c67ea:	c4 41 6c 5c db       	vsubps ymm11,ymm2,ymm11
  6c67ef:	c5 2c 5c f0          	vsubps ymm14,ymm10,ymm0
  6c67f3:	c4 41 3c 5c c7       	vsubps ymm8,ymm8,ymm15
  6c67f8:	c5 74 58 eb          	vaddps ymm13,ymm1,ymm3
  6c67fc:	c5 2c 58 d0          	vaddps ymm10,ymm10,ymm0
  6c6800:	c5 fc 10 5c 24 d8    	vmovups ymm3,YMMWORD PTR [rsp-0x28]
  6c6806:	c5 fc 10 64 24 b8    	vmovups ymm4,YMMWORD PTR [rsp-0x48]
  6c680c:	c5 e0 58 c4          	vaddps xmm0,xmm3,xmm4
  6c6810:	c5 c8 58 cf          	vaddps xmm1,xmm6,xmm7
  6c6814:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6c6818:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6c681c:	c5 f8 13 44 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm0
  6c6822:	c5 f8 11 14 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm2
  6c6827:	c4 c1 50 5c c1       	vsubps xmm0,xmm5,xmm9
  6c682c:	c4 c1 18 5c ce       	vsubps xmm1,xmm12,xmm14
  6c6831:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6c6835:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6c6839:	c5 f8 13 44 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm0
  6c683f:	c5 f8 11 54 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm2
  6c6845:	c4 c1 20 58 c0       	vaddps xmm0,xmm11,xmm8
  6c684a:	c4 c1 10 58 ca       	vaddps xmm1,xmm13,xmm10
  6c684f:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6c6853:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6c6857:	c5 f8 13 44 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm0
  6c685d:	c5 f8 11 54 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm2
  6c6863:	c5 e0 5c c4          	vsubps xmm0,xmm3,xmm4
  6c6867:	c5 c8 5c cf          	vsubps xmm1,xmm6,xmm7
  6c686b:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6c686f:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6c6873:	c5 f8 13 44 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm0
  6c6879:	c5 f8 11 54 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm2
  6c687f:	c5 b0 58 c5          	vaddps xmm0,xmm9,xmm5
  6c6883:	c4 c1 18 58 ce       	vaddps xmm1,xmm12,xmm14
  6c6888:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6c688c:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6c6890:	c5 f8 13 44 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm0
  6c6896:	c5 f8 11 54 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm2
  6c689c:	c4 c1 20 5c c0       	vsubps xmm0,xmm11,xmm8
  6c68a1:	c4 c1 10 5c ca       	vsubps xmm1,xmm13,xmm10
  6c68a6:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6c68aa:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6c68ae:	c5 f8 13 84 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm0
  6c68b5:	00 00 
  6c68b7:	c5 f8 11 54 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm2
  6c68bd:	48 81 c2 90 00 00 00 	add    rdx,0x90
  6c68c4:	48 39 d0             	cmp    rax,rdx
  6c68c7:	0f 85 43 fc ff ff    	jne    6c6510 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  6c68cd:	c5 f8 77             	vzeroupper
  6c68d0:	c3                   	ret
