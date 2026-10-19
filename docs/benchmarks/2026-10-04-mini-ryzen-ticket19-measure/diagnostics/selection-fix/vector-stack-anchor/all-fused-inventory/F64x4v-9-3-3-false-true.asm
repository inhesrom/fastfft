
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b6f580 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b6f580:	48 c1 e2 04          	shl    rdx,0x4
  b6f584:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  b6f588:	c4 e2 7d 19 05 07 55 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff505507]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b6f58f:	50 ff 
  b6f591:	31 d2                	xor    edx,edx
  b6f593:	c4 e2 7d 19 0d 84 56 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff505684]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b6f59a:	50 ff 
  b6f59c:	c5 fd 28 15 bc 75 50 	vmovapd ymm2,YMMWORD PTR [rip+0xffffffffff5075bc]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b6f5a3:	ff 
  b6f5a4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b6f5ab:	00 00 00 00 00 
  b6f5b0:	c5 fd 10 1c 17       	vmovupd ymm3,YMMWORD PTR [rdi+rdx*1]
  b6f5b5:	c5 f9 10 64 17 20    	vmovupd xmm4,XMMWORD PTR [rdi+rdx*1+0x20]
  b6f5bb:	c4 e3 65 06 dc 20    	vperm2f128 ymm3,ymm3,ymm4,0x20
  b6f5c1:	c5 f9 10 64 17 10    	vmovupd xmm4,XMMWORD PTR [rdi+rdx*1+0x10]
  b6f5c7:	c5 e5 14 ec          	vunpcklpd ymm5,ymm3,ymm4
  b6f5cb:	c5 e5 15 dc          	vunpckhpd ymm3,ymm3,ymm4
  b6f5cf:	c5 fd 10 64 17 30    	vmovupd ymm4,YMMWORD PTR [rdi+rdx*1+0x30]
  b6f5d5:	c5 f9 10 74 17 50    	vmovupd xmm6,XMMWORD PTR [rdi+rdx*1+0x50]
  b6f5db:	c4 e3 5d 06 e6 20    	vperm2f128 ymm4,ymm4,ymm6,0x20
  b6f5e1:	c5 f9 10 74 17 40    	vmovupd xmm6,XMMWORD PTR [rdi+rdx*1+0x40]
  b6f5e7:	c5 dd 14 fe          	vunpcklpd ymm7,ymm4,ymm6
  b6f5eb:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  b6f5ef:	c5 fd 10 74 17 60    	vmovupd ymm6,YMMWORD PTR [rdi+rdx*1+0x60]
  b6f5f5:	c5 79 10 84 17 80 00 	vmovupd xmm8,XMMWORD PTR [rdi+rdx*1+0x80]
  b6f5fc:	00 00 
  b6f5fe:	c4 c3 4d 06 f0 20    	vperm2f128 ymm6,ymm6,ymm8,0x20
  b6f604:	c5 79 10 44 17 70    	vmovupd xmm8,XMMWORD PTR [rdi+rdx*1+0x70]
  b6f60a:	c4 41 4d 14 c8       	vunpcklpd ymm9,ymm6,ymm8
  b6f60f:	c4 c1 4d 15 f0       	vunpckhpd ymm6,ymm6,ymm8
  b6f614:	c5 35 58 c7          	vaddpd ymm8,ymm9,ymm7
  b6f618:	c5 3d 58 d5          	vaddpd ymm10,ymm8,ymm5
  b6f61c:	c5 5d 58 de          	vaddpd ymm11,ymm4,ymm6
  b6f620:	c5 25 58 e3          	vaddpd ymm12,ymm11,ymm3
  b6f624:	c4 62 fd ac c5       	vfnmadd213pd ymm8,ymm0,ymm5
  b6f629:	c5 dd 5c e6          	vsubpd ymm4,ymm4,ymm6
  b6f62d:	c5 dd 59 e1          	vmulpd ymm4,ymm4,ymm1
  b6f631:	c5 bd 58 ec          	vaddpd ymm5,ymm8,ymm4
  b6f635:	c4 62 fd ac db       	vfnmadd213pd ymm11,ymm0,ymm3
  b6f63a:	c4 c1 45 5c d9       	vsubpd ymm3,ymm7,ymm9
  b6f63f:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  b6f643:	c5 a5 5c f3          	vsubpd ymm6,ymm11,ymm3
  b6f647:	c5 bd 5c e4          	vsubpd ymm4,ymm8,ymm4
  b6f64b:	c5 a5 58 db          	vaddpd ymm3,ymm11,ymm3
  b6f64f:	c4 e3 2d 18 fc 01    	vinsertf128 ymm7,ymm10,xmm4,0x1
  b6f655:	c4 e3 2d 06 e4 31    	vperm2f128 ymm4,ymm10,ymm4,0x31
  b6f65b:	c5 79 28 c5          	vmovapd xmm8,xmm5
  b6f65f:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b6f665:	c5 dd 14 e5          	vunpcklpd ymm4,ymm4,ymm5
  b6f669:	c4 c1 45 14 e8       	vunpcklpd ymm5,ymm7,ymm8
  b6f66e:	c4 c1 45 15 f8       	vunpckhpd ymm7,ymm7,ymm8
  b6f673:	c4 63 1d 18 c3 01    	vinsertf128 ymm8,ymm12,xmm3,0x1
  b6f679:	c4 e3 1d 06 db 31    	vperm2f128 ymm3,ymm12,ymm3,0x31
  b6f67f:	c5 79 28 ce          	vmovapd xmm9,xmm6
  b6f683:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  b6f689:	c5 e5 14 de          	vunpcklpd ymm3,ymm3,ymm6
  b6f68d:	c4 c1 3d 14 f1       	vunpcklpd ymm6,ymm8,ymm9
  b6f692:	c4 41 3d 15 c1       	vunpckhpd ymm8,ymm8,ymm9
  b6f697:	c5 7d 10 49 40       	vmovupd ymm9,YMMWORD PTR [rcx+0x40]
  b6f69c:	c5 7d 10 51 60       	vmovupd ymm10,YMMWORD PTR [rcx+0x60]
  b6f6a1:	c5 7d 10 99 80 00 00 	vmovupd ymm11,YMMWORD PTR [rcx+0x80]
  b6f6a8:	00 
  b6f6a9:	c5 7d 10 a1 a0 00 00 	vmovupd ymm12,YMMWORD PTR [rcx+0xa0]
  b6f6b0:	00 
  b6f6b1:	c5 35 59 ef          	vmulpd ymm13,ymm9,ymm7
  b6f6b5:	c4 42 bd bc ea       	vfnmadd231pd ymm13,ymm8,ymm10
  b6f6ba:	c5 25 59 f4          	vmulpd ymm14,ymm11,ymm4
  b6f6be:	c4 42 e5 bc f4       	vfnmadd231pd ymm14,ymm3,ymm12
  b6f6c3:	c4 41 15 58 fe       	vaddpd ymm15,ymm13,ymm14
  b6f6c8:	c4 41 3d 59 c1       	vmulpd ymm8,ymm8,ymm9
  b6f6cd:	c4 42 c5 b8 c2       	vfmadd231pd ymm8,ymm7,ymm10
  b6f6d2:	c5 a5 59 db          	vmulpd ymm3,ymm11,ymm3
  b6f6d6:	c4 c2 dd b8 dc       	vfmadd231pd ymm3,ymm4,ymm12
  b6f6db:	c5 bd 58 e3          	vaddpd ymm4,ymm8,ymm3
  b6f6df:	c5 fd 28 f8          	vmovapd ymm7,ymm0
  b6f6e3:	c4 e2 85 ac fd       	vfnmadd213pd ymm7,ymm15,ymm5
  b6f6e8:	c5 bd 5c db          	vsubpd ymm3,ymm8,ymm3
  b6f6ec:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  b6f6f0:	c5 45 58 c3          	vaddpd ymm8,ymm7,ymm3
  b6f6f4:	c5 7d 28 c8          	vmovapd ymm9,ymm0
  b6f6f8:	c4 62 dd ac ce       	vfnmadd213pd ymm9,ymm4,ymm6
  b6f6fd:	c4 41 15 5c d6       	vsubpd ymm10,ymm13,ymm14
  b6f702:	c5 2d 59 d1          	vmulpd ymm10,ymm10,ymm1
  b6f706:	c4 41 35 5c da       	vsubpd ymm11,ymm9,ymm10
  b6f70b:	c5 c5 5c db          	vsubpd ymm3,ymm7,ymm3
  b6f70f:	c4 c1 35 58 fa       	vaddpd ymm7,ymm9,ymm10
  b6f714:	c5 85 58 ed          	vaddpd ymm5,ymm15,ymm5
  b6f718:	c5 cd 58 e4          	vaddpd ymm4,ymm6,ymm4
  b6f71c:	c4 e3 7d 19 ee 01    	vextractf128 xmm6,ymm5,0x1
  b6f722:	62 f2 ed 28 7f ec    	vpermt2pd ymm5,ymm2,ymm4
  b6f728:	c5 fd 11 2c 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm5
  b6f72d:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  b6f733:	c5 c9 14 e4          	vunpcklpd xmm4,xmm6,xmm4
  b6f737:	c5 f9 11 64 16 20    	vmovupd XMMWORD PTR [rsi+rdx*1+0x20],xmm4
  b6f73d:	c4 63 7d 19 c4 01    	vextractf128 xmm4,ymm8,0x1
  b6f743:	62 52 ed 28 7f c3    	vpermt2pd ymm8,ymm2,ymm11
  b6f749:	c5 7d 11 44 16 30    	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm8
  b6f74f:	c4 63 7d 19 dd 01    	vextractf128 xmm5,ymm11,0x1
  b6f755:	c5 d9 14 e5          	vunpcklpd xmm4,xmm4,xmm5
  b6f759:	c5 f9 11 64 16 50    	vmovupd XMMWORD PTR [rsi+rdx*1+0x50],xmm4
  b6f75f:	c4 e3 7d 19 dc 01    	vextractf128 xmm4,ymm3,0x1
  b6f765:	62 f2 ed 28 7f df    	vpermt2pd ymm3,ymm2,ymm7
  b6f76b:	c5 fd 11 5c 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm3
  b6f771:	c4 e3 7d 19 fb 01    	vextractf128 xmm3,ymm7,0x1
  b6f777:	c5 d9 14 db          	vunpcklpd xmm3,xmm4,xmm3
  b6f77b:	c5 f9 11 9c 16 80 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0x80],xmm3
  b6f782:	00 00 
  b6f784:	48 81 c2 90 00 00 00 	add    rdx,0x90
  b6f78b:	48 39 d0             	cmp    rax,rdx
  b6f78e:	0f 85 1c fe ff ff    	jne    b6f5b0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b6f794:	c5 f8 77             	vzeroupper
  b6f797:	c3                   	ret
