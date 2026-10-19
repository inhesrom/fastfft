
target/ticket19/selection-fix/vector-stack-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000bbb740 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  bbb740:	55                   	push   rbp
  bbb741:	48 89 e5             	mov    rbp,rsp
  bbb744:	41 56                	push   r14
  bbb746:	53                   	push   rbx
  bbb747:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  bbb74b:	48 81 ec c0 0f 00 00 	sub    rsp,0xfc0
  bbb752:	48 c7 04 24 00 00 00 	mov    QWORD PTR [rsp],0x0
  bbb759:	00 
  bbb75a:	48 81 ec 80 0b 00 00 	sub    rsp,0xb80
  bbb761:	48 8d 84 24 c0 04 00 	lea    rax,[rsp+0x4c0]
  bbb768:	00 
  bbb769:	48 8d 8c 24 c0 02 00 	lea    rcx,[rsp+0x2c0]
  bbb770:	00 
  bbb771:	c6 84 24 c0 0a 00 00 	mov    BYTE PTR [rsp+0xac0],0x0
  bbb778:	00 
  bbb779:	4c 8d 84 24 c0 0a 00 	lea    r8,[rsp+0xac0]
  bbb780:	00 
  bbb781:	4c 89 84 24 00 0b 00 	mov    QWORD PTR [rsp+0xb00],r8
  bbb788:	00 
  bbb789:	4c 8d 84 24 00 0b 00 	lea    r8,[rsp+0xb00]
  bbb790:	00 
  bbb791:	4c 8d 84 24 60 0e 00 	lea    r8,[rsp+0xe60]
  bbb798:	00 
  bbb799:	48 81 c7 50 0c 00 00 	add    rdi,0xc50
  bbb7a0:	45 31 c9             	xor    r9d,r9d
  bbb7a3:	eb 24                	jmp    bbb7c9 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x89>
  bbb7a5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  bbb7ac:	00 00 00 00 
  bbb7b0:	49 83 c1 04          	add    r9,0x4
  bbb7b4:	49 81 c0 80 03 00 00 	add    r8,0x380
  bbb7bb:	48 83 c7 40          	add    rdi,0x40
  bbb7bf:	49 83 f9 10          	cmp    r9,0x10
  bbb7c3:	0f 84 24 0e 00 00    	je     bbc5ed <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xead>
  bbb7c9:	49 83 f9 0c          	cmp    r9,0xc
  bbb7cd:	0f 83 2d 02 00 00    	jae    bbba00 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x2c0>
  bbb7d3:	c5 fd 10 87 b0 f3 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0xc50]
  bbb7da:	ff 
  bbb7db:	c5 fd 10 8f d0 f3 ff 	vmovupd ymm1,YMMWORD PTR [rdi-0xc30]
  bbb7e2:	ff 
  bbb7e3:	c5 fd 10 97 a0 f4 ff 	vmovupd ymm2,YMMWORD PTR [rdi-0xb60]
  bbb7ea:	ff 
  bbb7eb:	c5 fd 10 9f c0 f4 ff 	vmovupd ymm3,YMMWORD PTR [rdi-0xb40]
  bbb7f2:	ff 
  bbb7f3:	c4 e3 7d 06 e1 31    	vperm2f128 ymm4,ymm0,ymm1,0x31
  bbb7f9:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbb7ff:	c5 fd 14 cc          	vunpcklpd ymm1,ymm0,ymm4
  bbb803:	c5 fd 29 4c 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm1
  bbb809:	c5 7d 15 dc          	vunpckhpd ymm11,ymm0,ymm4
  bbb80d:	c4 e3 6d 06 c3 31    	vperm2f128 ymm0,ymm2,ymm3,0x31
  bbb813:	c4 e3 6d 06 cb 20    	vperm2f128 ymm1,ymm2,ymm3,0x20
  bbb819:	62 61 f5 28 14 d0    	vunpcklpd ymm26,ymm1,ymm0
  bbb81f:	c5 f5 15 c0          	vunpckhpd ymm0,ymm1,ymm0
  bbb823:	c5 fd 29 84 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm0
  bbb82a:	00 00 
  bbb82c:	c5 fd 10 87 90 f5 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0xa70]
  bbb833:	ff 
  bbb834:	c5 fd 10 8f b0 f5 ff 	vmovupd ymm1,YMMWORD PTR [rdi-0xa50]
  bbb83b:	ff 
  bbb83c:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bbb842:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbb848:	c5 7d 14 d2          	vunpcklpd ymm10,ymm0,ymm2
  bbb84c:	62 e1 fd 28 15 c2    	vunpckhpd ymm16,ymm0,ymm2
  bbb852:	c5 fd 10 87 80 f6 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x980]
  bbb859:	ff 
  bbb85a:	c5 fd 10 8f a0 f6 ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x960]
  bbb861:	ff 
  bbb862:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bbb868:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbb86e:	62 61 fd 28 14 f2    	vunpcklpd ymm30,ymm0,ymm2
  bbb874:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  bbb878:	c5 fd 29 84 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm0
  bbb87f:	00 00 
  bbb881:	c5 fd 10 87 70 f7 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x890]
  bbb888:	ff 
  bbb889:	c5 fd 10 8f 90 f7 ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x870]
  bbb890:	ff 
  bbb891:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bbb897:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbb89d:	c5 fd 14 ea          	vunpcklpd ymm5,ymm0,ymm2
  bbb8a1:	62 e1 fd 28 15 ea    	vunpckhpd ymm21,ymm0,ymm2
  bbb8a7:	c5 fd 10 87 60 f8 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x7a0]
  bbb8ae:	ff 
  bbb8af:	c5 fd 10 8f 80 f8 ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x780]
  bbb8b6:	ff 
  bbb8b7:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bbb8bd:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbb8c3:	62 e1 fd 28 14 e2    	vunpcklpd ymm20,ymm0,ymm2
  bbb8c9:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  bbb8cd:	c5 fd 29 44 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  bbb8d3:	c5 fd 10 87 50 f9 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x6b0]
  bbb8da:	ff 
  bbb8db:	c5 fd 10 8f 70 f9 ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x690]
  bbb8e2:	ff 
  bbb8e3:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bbb8e9:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbb8ef:	62 e1 fd 28 14 da    	vunpcklpd ymm19,ymm0,ymm2
  bbb8f5:	62 61 fd 28 15 c2    	vunpckhpd ymm24,ymm0,ymm2
  bbb8fb:	c5 fd 10 87 40 fa ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x5c0]
  bbb902:	ff 
  bbb903:	c5 fd 10 8f 60 fa ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x5a0]
  bbb90a:	ff 
  bbb90b:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bbb911:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbb917:	c5 fd 14 ca          	vunpcklpd ymm1,ymm0,ymm2
  bbb91b:	c5 fd 29 0c 24       	vmovapd YMMWORD PTR [rsp],ymm1
  bbb920:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  bbb924:	c5 fd 29 44 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm0
  bbb92a:	c5 fd 10 87 30 fb ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x4d0]
  bbb931:	ff 
  bbb932:	c5 fd 10 8f 50 fb ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x4b0]
  bbb939:	ff 
  bbb93a:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bbb940:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbb946:	c5 7d 14 c2          	vunpcklpd ymm8,ymm0,ymm2
  bbb94a:	c5 7d 15 f2          	vunpckhpd ymm14,ymm0,ymm2
  bbb94e:	c5 fd 10 87 20 fc ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x3e0]
  bbb955:	ff 
  bbb956:	c5 fd 10 8f 40 fc ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x3c0]
  bbb95d:	ff 
  bbb95e:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bbb964:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbb96a:	c5 7d 14 ca          	vunpcklpd ymm9,ymm0,ymm2
  bbb96e:	62 e1 fd 28 15 fa    	vunpckhpd ymm23,ymm0,ymm2
  bbb974:	c5 fd 10 87 10 fd ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x2f0]
  bbb97b:	ff 
  bbb97c:	c5 fd 10 8f 30 fd ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x2d0]
  bbb983:	ff 
  bbb984:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bbb98a:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbb990:	c5 fd 14 fa          	vunpcklpd ymm7,ymm0,ymm2
  bbb994:	c5 7d 15 ea          	vunpckhpd ymm13,ymm0,ymm2
  bbb998:	c5 fd 10 87 00 fe ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x200]
  bbb99f:	ff 
  bbb9a0:	c5 fd 10 8f 20 fe ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x1e0]
  bbb9a7:	ff 
  bbb9a8:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bbb9ae:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbb9b4:	c5 fd 14 f2          	vunpcklpd ymm6,ymm0,ymm2
  bbb9b8:	62 e1 fd 28 15 ca    	vunpckhpd ymm17,ymm0,ymm2
  bbb9be:	c5 fd 10 87 f0 fe ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x110]
  bbb9c5:	ff 
  bbb9c6:	c5 fd 10 8f 10 ff ff 	vmovupd ymm1,YMMWORD PTR [rdi-0xf0]
  bbb9cd:	ff 
  bbb9ce:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bbb9d4:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbb9da:	c5 fd 14 ca          	vunpcklpd ymm1,ymm0,ymm2
  bbb9de:	c5 7d 15 fa          	vunpckhpd ymm15,ymm0,ymm2
  bbb9e2:	c5 fd 10 47 e0       	vmovupd ymm0,YMMWORD PTR [rdi-0x20]
  bbb9e7:	c5 fd 10 17          	vmovupd ymm2,YMMWORD PTR [rdi]
  bbb9eb:	c4 e3 7d 06 da 31    	vperm2f128 ymm3,ymm0,ymm2,0x31
  bbb9f1:	c4 e3 7d 06 d2 20    	vperm2f128 ymm2,ymm0,ymm2,0x20
  bbb9f7:	e9 41 02 00 00       	jmp    bbbc3d <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x4fd>
  bbb9fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  bbba00:	c5 fd 10 87 b0 f3 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0xc50]
  bbba07:	ff 
  bbba08:	c5 f9 10 8f d0 f3 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xc30]
  bbba0f:	ff 
  bbba10:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbba16:	c5 f9 10 8f c0 f3 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xc40]
  bbba1d:	ff 
  bbba1e:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  bbba22:	c5 fd 29 54 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm2
  bbba28:	c5 7d 15 d9          	vunpckhpd ymm11,ymm0,ymm1
  bbba2c:	c5 fd 10 87 a0 f4 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0xb60]
  bbba33:	ff 
  bbba34:	c5 f9 10 8f c0 f4 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xb40]
  bbba3b:	ff 
  bbba3c:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbba42:	c5 f9 10 8f b0 f4 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xb50]
  bbba49:	ff 
  bbba4a:	62 61 fd 28 14 d1    	vunpcklpd ymm26,ymm0,ymm1
  bbba50:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  bbba54:	c5 fd 29 84 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm0
  bbba5b:	00 00 
  bbba5d:	c5 fd 10 87 90 f5 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0xa70]
  bbba64:	ff 
  bbba65:	c5 f9 10 8f b0 f5 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xa50]
  bbba6c:	ff 
  bbba6d:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbba73:	c5 f9 10 8f a0 f5 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xa60]
  bbba7a:	ff 
  bbba7b:	c5 7d 14 d1          	vunpcklpd ymm10,ymm0,ymm1
  bbba7f:	62 e1 fd 28 15 c1    	vunpckhpd ymm16,ymm0,ymm1
  bbba85:	c5 fd 10 87 80 f6 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x980]
  bbba8c:	ff 
  bbba8d:	c5 f9 10 8f a0 f6 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x960]
  bbba94:	ff 
  bbba95:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbba9b:	c5 f9 10 8f 90 f6 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x970]
  bbbaa2:	ff 
  bbbaa3:	62 61 fd 28 14 f1    	vunpcklpd ymm30,ymm0,ymm1
  bbbaa9:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  bbbaad:	c5 fd 29 84 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm0
  bbbab4:	00 00 
  bbbab6:	c5 fd 10 87 70 f7 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x890]
  bbbabd:	ff 
  bbbabe:	c5 f9 10 8f 90 f7 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x870]
  bbbac5:	ff 
  bbbac6:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbbacc:	c5 f9 10 8f 80 f7 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x880]
  bbbad3:	ff 
  bbbad4:	c5 fd 14 e9          	vunpcklpd ymm5,ymm0,ymm1
  bbbad8:	62 e1 fd 28 15 e9    	vunpckhpd ymm21,ymm0,ymm1
  bbbade:	c5 fd 10 87 60 f8 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x7a0]
  bbbae5:	ff 
  bbbae6:	c5 f9 10 8f 80 f8 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x780]
  bbbaed:	ff 
  bbbaee:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbbaf4:	c5 f9 10 8f 70 f8 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x790]
  bbbafb:	ff 
  bbbafc:	62 e1 fd 28 14 e1    	vunpcklpd ymm20,ymm0,ymm1
  bbbb02:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  bbbb06:	c5 fd 29 44 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  bbbb0c:	c5 fd 10 87 50 f9 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x6b0]
  bbbb13:	ff 
  bbbb14:	c5 f9 10 8f 70 f9 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x690]
  bbbb1b:	ff 
  bbbb1c:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbbb22:	c5 f9 10 8f 60 f9 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x6a0]
  bbbb29:	ff 
  bbbb2a:	62 e1 fd 28 14 d9    	vunpcklpd ymm19,ymm0,ymm1
  bbbb30:	62 61 fd 28 15 c1    	vunpckhpd ymm24,ymm0,ymm1
  bbbb36:	c5 fd 10 87 40 fa ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x5c0]
  bbbb3d:	ff 
  bbbb3e:	c5 f9 10 8f 60 fa ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x5a0]
  bbbb45:	ff 
  bbbb46:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbbb4c:	c5 f9 10 8f 50 fa ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x5b0]
  bbbb53:	ff 
  bbbb54:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  bbbb58:	c5 fd 29 14 24       	vmovapd YMMWORD PTR [rsp],ymm2
  bbbb5d:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  bbbb61:	c5 fd 29 44 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm0
  bbbb67:	c5 fd 10 87 30 fb ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x4d0]
  bbbb6e:	ff 
  bbbb6f:	c5 f9 10 8f 50 fb ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x4b0]
  bbbb76:	ff 
  bbbb77:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbbb7d:	c5 f9 10 8f 40 fb ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x4c0]
  bbbb84:	ff 
  bbbb85:	c5 7d 14 c1          	vunpcklpd ymm8,ymm0,ymm1
  bbbb89:	c5 7d 15 f1          	vunpckhpd ymm14,ymm0,ymm1
  bbbb8d:	c5 fd 10 87 20 fc ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x3e0]
  bbbb94:	ff 
  bbbb95:	c5 f9 10 8f 40 fc ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x3c0]
  bbbb9c:	ff 
  bbbb9d:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbbba3:	c5 f9 10 8f 30 fc ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x3d0]
  bbbbaa:	ff 
  bbbbab:	c5 7d 14 c9          	vunpcklpd ymm9,ymm0,ymm1
  bbbbaf:	62 e1 fd 28 15 f9    	vunpckhpd ymm23,ymm0,ymm1
  bbbbb5:	c5 fd 10 87 10 fd ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x2f0]
  bbbbbc:	ff 
  bbbbbd:	c5 f9 10 8f 30 fd ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x2d0]
  bbbbc4:	ff 
  bbbbc5:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbbbcb:	c5 f9 10 8f 20 fd ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x2e0]
  bbbbd2:	ff 
  bbbbd3:	c5 fd 14 f9          	vunpcklpd ymm7,ymm0,ymm1
  bbbbd7:	c5 7d 15 e9          	vunpckhpd ymm13,ymm0,ymm1
  bbbbdb:	c5 fd 10 87 00 fe ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x200]
  bbbbe2:	ff 
  bbbbe3:	c5 f9 10 8f 20 fe ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x1e0]
  bbbbea:	ff 
  bbbbeb:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbbbf1:	c5 f9 10 8f 10 fe ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x1f0]
  bbbbf8:	ff 
  bbbbf9:	c5 fd 14 f1          	vunpcklpd ymm6,ymm0,ymm1
  bbbbfd:	62 e1 fd 28 15 c9    	vunpckhpd ymm17,ymm0,ymm1
  bbbc03:	c5 fd 10 87 f0 fe ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x110]
  bbbc0a:	ff 
  bbbc0b:	c5 f9 10 8f 10 ff ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xf0]
  bbbc12:	ff 
  bbbc13:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bbbc19:	c5 f9 10 97 00 ff ff 	vmovupd xmm2,XMMWORD PTR [rdi-0x100]
  bbbc20:	ff 
  bbbc21:	c5 fd 14 ca          	vunpcklpd ymm1,ymm0,ymm2
  bbbc25:	c5 7d 15 fa          	vunpckhpd ymm15,ymm0,ymm2
  bbbc29:	c5 fd 10 47 e0       	vmovupd ymm0,YMMWORD PTR [rdi-0x20]
  bbbc2e:	c5 f9 10 17          	vmovupd xmm2,XMMWORD PTR [rdi]
  bbbc32:	c4 e3 7d 06 d2 20    	vperm2f128 ymm2,ymm0,ymm2,0x20
  bbbc38:	c5 f9 10 5f f0       	vmovupd xmm3,XMMWORD PTR [rdi-0x10]
  bbbc3d:	c5 ed 14 c3          	vunpcklpd ymm0,ymm2,ymm3
  bbbc41:	c5 ed 15 e3          	vunpckhpd ymm4,ymm2,ymm3
  bbbc45:	62 41 fd 20 58 ff    	vaddpd ymm31,ymm16,ymm15
  bbbc4b:	62 91 a5 28 58 df    	vaddpd ymm3,ymm11,ymm31
  bbbc51:	62 d1 d5 20 58 d5    	vaddpd ymm2,ymm21,ymm13
  bbbc57:	62 61 e5 28 58 da    	vaddpd ymm27,ymm3,ymm2
  bbbc5d:	62 d1 e5 20 58 d8    	vaddpd ymm3,ymm19,ymm8
  bbbc63:	c5 fd 29 9c 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm3
  bbbc6a:	00 00 
  bbbc6c:	62 c1 e5 20 5c d0    	vsubpd ymm18,ymm19,ymm8
  bbbc72:	c5 2d 58 e1          	vaddpd ymm12,ymm10,ymm1
  bbbc76:	62 61 ad 28 5c e9    	vsubpd ymm29,ymm10,ymm1
  bbbc7c:	62 61 d5 28 58 cf    	vaddpd ymm25,ymm5,ymm7
  bbbc82:	c5 55 5c d7          	vsubpd ymm10,ymm5,ymm7
  bbbc86:	62 91 fd 28 58 da    	vaddpd ymm3,ymm0,ymm26
  bbbc8c:	c5 fd 29 9c 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm3
  bbbc93:	00 00 
  bbbc95:	62 01 fd 28 5c e2    	vsubpd ymm28,ymm0,ymm26
  bbbc9b:	62 b1 b5 28 58 ec    	vaddpd ymm5,ymm9,ymm20
  bbbca1:	62 b1 b5 28 5c dc    	vsubpd ymm3,ymm9,ymm20
  bbbca7:	62 91 cd 28 58 c6    	vaddpd ymm0,ymm6,ymm30
  bbbcad:	c5 fd 29 84 24 20 02 	vmovapd YMMWORD PTR [rsp+0x220],ymm0
  bbbcb4:	00 00 
  bbbcb6:	62 01 cd 28 5c d6    	vsubpd ymm26,ymm6,ymm30
  bbbcbc:	62 d1 bd 20 58 f6    	vaddpd ymm6,ymm24,ymm14
  bbbcc2:	62 e1 a5 20 58 de    	vaddpd ymm19,ymm27,ymm6
  bbbcc8:	62 d1 bd 20 5c c6    	vsubpd ymm0,ymm24,ymm14
  bbbcce:	c5 fd 29 84 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm0
  bbbcd5:	00 00 
  bbbcd7:	62 61 fd 28 28 44 24 	vmovapd ymm24,YMMWORD PTR [rsp+0x40]
  bbbcde:	02 
  bbbcdf:	62 91 c5 20 58 c8    	vaddpd ymm1,ymm23,ymm24
  bbbce5:	62 d1 fd 20 5c c7    	vsubpd ymm0,ymm16,ymm15
  bbbceb:	c5 fd 29 84 24 c0 01 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm0
  bbbcf2:	00 00 
  bbbcf4:	c5 fd 28 44 24 20    	vmovapd ymm0,YMMWORD PTR [rsp+0x20]
  bbbcfa:	c5 7d 58 c1          	vaddpd ymm8,ymm0,ymm1
  bbbcfe:	62 d1 d5 20 5c fd    	vsubpd ymm7,ymm21,ymm13
  bbbd04:	c5 fd 29 bc 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm7
  bbbd0b:	00 00 
  bbbd0d:	c5 7d 28 bc 24 20 01 	vmovapd ymm15,YMMWORD PTR [rsp+0x120]
  bbbd14:	00 00 
  bbbd16:	c5 05 58 f4          	vaddpd ymm14,ymm15,ymm4
  bbbd1a:	c4 c1 5d 5c e7       	vsubpd ymm4,ymm4,ymm15
  bbbd1f:	c5 fd 29 a4 24 00 02 	vmovapd YMMWORD PTR [rsp+0x200],ymm4
  bbbd26:	00 00 
  bbbd28:	c5 7d 28 bc 24 00 01 	vmovapd ymm15,YMMWORD PTR [rsp+0x100]
  bbbd2f:	00 00 
  bbbd31:	62 51 f5 20 58 ef    	vaddpd ymm13,ymm17,ymm15
  bbbd37:	c4 c1 3d 58 e5       	vaddpd ymm4,ymm8,ymm13
  bbbd3c:	c5 8d 58 e4          	vaddpd ymm4,ymm14,ymm4
  bbbd40:	62 91 c5 20 5c f8    	vsubpd ymm7,ymm23,ymm24
  bbbd46:	c5 fd 29 7c 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm7
  bbbd4c:	c4 62 7d 19 05 4b 94 	vbroadcastsd ymm8,QWORD PTR [rip+0xffffffffff4b944b]        # 751a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2650>
  bbbd53:	4b ff 
  bbbd55:	62 41 fd 28 28 c0    	vmovapd ymm24,ymm8
  bbbd5b:	62 42 85 20 a8 c3    	vfmadd213pd ymm24,ymm31,ymm11
  bbbd61:	62 d1 f5 20 5c ff    	vsubpd ymm7,ymm17,ymm15
  bbbd67:	c5 fd 29 bc 24 e0 01 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm7
  bbbd6e:	00 00 
  bbbd70:	62 62 fd 28 19 35 fe 	vbroadcastsd ymm30,QWORD PTR [rip+0xffffffffff4b90fe]        # 74e78 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2328>
  bbbd77:	90 4b ff 
  bbbd7a:	62 11 fd 28 28 fe    	vmovapd ymm15,ymm30
  bbbd80:	62 52 85 20 ac fb    	vfnmadd213pd ymm15,ymm31,ymm11
  bbbd86:	62 e2 fd 28 19 0d 50 	vbroadcastsd ymm17,QWORD PTR [rip+0xffffffffff4b9050]        # 74de0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2290>
  bbbd8d:	90 4b ff 
  bbbd90:	62 42 f5 20 ac fb    	vfnmadd213pd ymm31,ymm17,ymm11
  bbbd96:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x120],ymm19
  bbbd9d:	09 
  bbbd9e:	c5 fd 29 a4 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm4
  bbbda5:	00 00 
  bbbda7:	62 f1 e5 20 58 e4    	vaddpd ymm4,ymm19,ymm4
  bbbdad:	c5 fd 29 a4 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm4
  bbbdb4:	00 00 
  bbbdb6:	62 02 ed 28 bc c6    	vfnmadd231pd ymm24,ymm2,ymm30
  bbbdbc:	62 22 cd 28 bc c1    	vfnmadd231pd ymm24,ymm6,ymm17
  bbbdc2:	62 32 ed 28 bc f9    	vfnmadd231pd ymm15,ymm2,ymm17
  bbbdc8:	62 62 bd 28 b8 fa    	vfmadd231pd ymm31,ymm8,ymm2
  bbbdce:	62 e2 fd 28 19 05 00 	vbroadcastsd ymm16,QWORD PTR [rip+0xffffffffff4b8e00]        # 74bd8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2088>
  bbbdd5:	8e 4b ff 
  bbbdd8:	62 a1 ad 28 59 e0    	vmulpd ymm20,ymm10,ymm16
  bbbdde:	c4 62 7d 19 1d e9 90 	vbroadcastsd ymm11,QWORD PTR [rip+0xffffffffff4b90e9]        # 74ed0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2380>
  bbbde5:	4b ff 
  bbbde7:	62 c2 95 20 b8 e3    	vfmadd231pd ymm20,ymm29,ymm11
  bbbded:	62 e2 fd 28 19 1d 51 	vbroadcastsd ymm19,QWORD PTR [rip+0xffffffffff4b8951]        # 74748 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bf8>
  bbbdf4:	89 4b ff 
  bbbdf7:	62 a2 ed 20 b8 e3    	vfmadd231pd ymm20,ymm18,ymm19
  bbbdfd:	c4 42 cd b8 f8       	vfmadd231pd ymm15,ymm6,ymm8
  bbbe02:	62 62 8d 20 bc fe    	vfnmadd231pd ymm31,ymm30,ymm6
  bbbe08:	62 a1 95 20 59 f8    	vmulpd ymm23,ymm29,ymm16
  bbbe0e:	62 a2 ad 28 bc fb    	vfnmadd231pd ymm23,ymm10,ymm19
  bbbe14:	62 b1 95 20 59 e3    	vmulpd ymm4,ymm29,ymm19
  bbbe1a:	c4 c2 a5 bc e2       	vfnmadd231pd ymm4,ymm11,ymm10
  bbbe1f:	c4 41 7d 28 c8       	vmovapd ymm9,ymm8
  bbbe24:	c4 62 f5 a8 c8       	vfmadd213pd ymm9,ymm1,ymm0
  bbbe29:	62 c2 ed 20 bc fb    	vfnmadd231pd ymm23,ymm18,ymm11
  bbbe2f:	62 b2 fd 20 b8 e2    	vfmadd231pd ymm4,ymm16,ymm18
  bbbe35:	62 91 fd 28 28 fe    	vmovapd ymm7,ymm30
  bbbe3b:	c4 e2 f5 ac f8       	vfnmadd213pd ymm7,ymm1,ymm0
  bbbe40:	62 f2 f5 20 ac c8    	vfnmadd213pd ymm1,ymm17,ymm0
  bbbe46:	c5 fd 28 74 24 60    	vmovapd ymm6,YMMWORD PTR [rsp+0x60]
  bbbe4c:	c5 9d 58 d6          	vaddpd ymm2,ymm12,ymm6
  bbbe50:	62 91 ed 28 58 d1    	vaddpd ymm2,ymm2,ymm25
  bbbe56:	62 e1 fd 28 28 74 24 	vmovapd ymm22,YMMWORD PTR [rsp+0xe0]
  bbbe5d:	07 
  bbbe5e:	62 b1 ed 28 58 c6    	vaddpd ymm0,ymm2,ymm22
  bbbe64:	c5 fd 29 84 24 a0 02 	vmovapd YMMWORD PTR [rsp+0x2a0],ymm0
  bbbe6b:	00 00 
  bbbe6d:	62 12 95 28 bc ce    	vfnmadd231pd ymm9,ymm13,ymm30
  bbbe73:	62 32 8d 28 bc c9    	vfnmadd231pd ymm9,ymm14,ymm17
  bbbe79:	62 b2 95 28 bc f9    	vfnmadd231pd ymm7,ymm13,ymm17
  bbbe7f:	c4 c2 bd b8 cd       	vfmadd231pd ymm1,ymm8,ymm13
  bbbe84:	62 21 ad 20 59 d8    	vmulpd ymm27,ymm26,ymm16
  bbbe8a:	62 42 e5 28 b8 db    	vfmadd231pd ymm27,ymm3,ymm11
  bbbe90:	62 22 9d 20 b8 db    	vfmadd231pd ymm27,ymm28,ymm19
  bbbe96:	c4 c2 8d b8 f8       	vfmadd231pd ymm7,ymm14,ymm8
  bbbe9b:	62 d2 8d 20 bc ce    	vfnmadd231pd ymm1,ymm30,ymm14
  bbbea1:	62 21 e5 28 59 e8    	vmulpd ymm29,ymm3,ymm16
  bbbea7:	62 22 ad 20 bc eb    	vfnmadd231pd ymm29,ymm26,ymm19
  bbbead:	62 a1 e5 28 59 eb    	vmulpd ymm21,ymm3,ymm19
  bbbeb3:	62 82 a5 28 bc ea    	vfnmadd231pd ymm21,ymm11,ymm26
  bbbeb9:	c4 41 7d 28 e8       	vmovapd ymm13,ymm8
  bbbebe:	c4 62 9d a8 ee       	vfmadd213pd ymm13,ymm12,ymm6
  bbbec3:	62 42 9d 20 bc eb    	vfnmadd231pd ymm29,ymm28,ymm11
  bbbec9:	62 82 fd 20 b8 ec    	vfmadd231pd ymm21,ymm16,ymm28
  bbbecf:	62 81 fd 28 28 d6    	vmovapd ymm18,ymm30
  bbbed5:	62 e2 9d 28 ac d6    	vfnmadd213pd ymm18,ymm12,ymm6
  bbbedb:	62 72 f5 20 ac e6    	vfnmadd213pd ymm12,ymm17,ymm6
  bbbee1:	c5 fd 28 1c 24       	vmovapd ymm3,YMMWORD PTR [rsp]
  bbbee6:	c5 e5 58 c5          	vaddpd ymm0,ymm3,ymm5
  bbbeea:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x220]
  bbbef1:	11 
  bbbef2:	62 91 fd 28 58 c2    	vaddpd ymm0,ymm0,ymm26
  bbbef8:	c5 7d 28 94 24 40 02 	vmovapd ymm10,YMMWORD PTR [rsp+0x240]
  bbbeff:	00 00 
  bbbf01:	c5 ad 58 c0          	vaddpd ymm0,ymm10,ymm0
  bbbf05:	c5 fd 29 44 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm0
  bbbf0b:	62 12 b5 20 bc ee    	vfnmadd231pd ymm13,ymm25,ymm30
  bbbf11:	62 b1 fd 28 28 d6    	vmovapd ymm2,ymm22
  bbbf17:	62 32 cd 20 bc e9    	vfnmadd231pd ymm13,ymm22,ymm17
  bbbf1d:	62 a2 b5 20 bc d1    	vfnmadd231pd ymm18,ymm25,ymm17
  bbbf23:	62 12 bd 28 b8 e1    	vfmadd231pd ymm12,ymm8,ymm25
  bbbf29:	62 61 fd 28 28 4c 24 	vmovapd ymm25,YMMWORD PTR [rsp+0xa0]
  bbbf30:	05 
  bbbf31:	62 31 b5 20 59 f0    	vmulpd ymm14,ymm25,ymm16
  bbbf37:	62 e1 fd 28 28 74 24 	vmovapd ymm22,YMMWORD PTR [rsp+0x1c0]
  bbbf3e:	0e 
  bbbf3f:	62 52 cd 20 b8 f3    	vfmadd231pd ymm14,ymm22,ymm11
  bbbf45:	c5 fd 28 84 24 c0 00 	vmovapd ymm0,YMMWORD PTR [rsp+0xc0]
  bbbf4c:	00 00 
  bbbf4e:	62 32 fd 28 b8 f3    	vfmadd231pd ymm14,ymm0,ymm19
  bbbf54:	62 c2 ed 28 b8 d0    	vfmadd231pd ymm18,ymm2,ymm8
  bbbf5a:	62 72 8d 20 bc e2    	vfnmadd231pd ymm12,ymm30,ymm2
  bbbf60:	62 b1 cd 20 59 f0    	vmulpd ymm6,ymm22,ymm16
  bbbf66:	62 b2 b5 20 bc f3    	vfnmadd231pd ymm6,ymm25,ymm19
  bbbf6c:	62 b1 cd 20 59 d3    	vmulpd ymm2,ymm22,ymm19
  bbbf72:	62 92 a5 28 bc d1    	vfnmadd231pd ymm2,ymm11,ymm25
  bbbf78:	62 41 fd 28 28 e0    	vmovapd ymm28,ymm8
  bbbf7e:	62 62 d5 28 a8 e3    	vfmadd213pd ymm28,ymm5,ymm3
  bbbf84:	62 02 ad 20 bc e6    	vfnmadd231pd ymm28,ymm26,ymm30
  bbbf8a:	62 81 fd 28 28 f2    	vmovapd ymm22,ymm26
  bbbf90:	62 22 ad 28 bc e1    	vfnmadd231pd ymm28,ymm10,ymm17
  bbbf96:	c4 c2 fd bc f3       	vfnmadd231pd ymm6,ymm0,ymm11
  bbbf9b:	62 f2 fd 20 b8 d0    	vfmadd231pd ymm2,ymm16,ymm0
  bbbfa1:	62 91 fd 28 28 c6    	vmovapd ymm0,ymm30
  bbbfa7:	c4 e2 d5 ac c3       	vfnmadd213pd ymm0,ymm5,ymm3
  bbbfac:	62 f2 f5 20 ac eb    	vfnmadd213pd ymm5,ymm17,ymm3
  bbbfb2:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x1e0]
  bbbfb9:	0f 
  bbbfba:	62 b1 ad 20 59 d8    	vmulpd ymm3,ymm26,ymm16
  bbbfc0:	62 61 fd 28 28 4c 24 	vmovapd ymm25,YMMWORD PTR [rsp+0x40]
  bbbfc7:	02 
  bbbfc8:	62 d2 b5 20 b8 db    	vfmadd231pd ymm3,ymm25,ymm11
  bbbfce:	62 61 fd 28 28 74 24 	vmovapd ymm30,YMMWORD PTR [rsp+0x200]
  bbbfd5:	10 
  bbbfd6:	62 b2 8d 20 b8 db    	vfmadd231pd ymm3,ymm30,ymm19
  bbbfdc:	62 b2 cd 20 bc c1    	vfnmadd231pd ymm0,ymm22,ymm17
  bbbfe2:	62 b2 bd 28 b8 ee    	vfmadd231pd ymm5,ymm8,ymm22
  bbbfe8:	62 c1 fd 28 28 c9    	vmovapd ymm17,ymm9
  bbbfee:	c5 7d 29 3c 24       	vmovapd YMMWORD PTR [rsp],ymm15
  bbbff3:	62 e1 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x20],ymm23
  bbbffa:	01 
  bbbffb:	62 31 85 28 58 ff    	vaddpd ymm15,ymm15,ymm23
  bbc001:	62 e1 fd 28 28 fc    	vmovapd ymm23,ymm4
  bbc007:	c4 c2 ad b8 c0       	vfmadd231pd ymm0,ymm10,ymm8
  bbc00c:	62 f2 ad 38 bc 2d 62 	vfnmadd231pd ymm5,ymm10,QWORD BCST [rip+0xffffffffff4b8e62]        # 74e78 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2328>
  bbc013:	8e 4b ff 
  bbc016:	62 a1 b5 20 59 f0    	vmulpd ymm22,ymm25,ymm16
  bbc01c:	62 a2 ad 20 bc f3    	vfnmadd231pd ymm22,ymm26,ymm19
  bbc022:	62 31 b5 20 59 cb    	vmulpd ymm9,ymm25,ymm19
  bbc028:	62 81 fd 28 28 d8    	vmovapd ymm19,ymm24
  bbc02e:	62 12 a5 28 bc ca    	vfnmadd231pd ymm9,ymm11,ymm26
  bbc034:	62 61 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0xe0],ymm29
  bbc03b:	07 
  bbc03c:	c5 fd 29 bc 24 c0 01 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm7
  bbc043:	00 00 
  bbc045:	62 11 c5 28 58 c5    	vaddpd ymm8,ymm7,ymm29
  bbc04b:	62 c2 8d 20 bc f3    	vfnmadd231pd ymm22,ymm30,ymm11
  bbc051:	62 11 fd 28 28 df    	vmovapd ymm11,ymm31
  bbc057:	62 12 fd 20 b8 ce    	vfmadd231pd ymm9,ymm16,ymm30
  bbc05d:	62 e1 fd 28 28 c5    	vmovapd ymm16,ymm5
  bbc063:	c5 7d 29 e4          	vmovapd ymm4,ymm12
  bbc067:	c5 7d 29 84 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm8
  bbc06e:	00 00 
  bbc070:	c5 7d 29 bc 24 20 02 	vmovapd YMMWORD PTR [rsp+0x220],ymm15
  bbc077:	00 00 
  bbc079:	c4 c1 05 58 e8       	vaddpd ymm5,ymm15,ymm8
  bbc07e:	c5 fd 28 bc 24 80 00 	vmovapd ymm7,YMMWORD PTR [rsp+0x80]
  bbc085:	00 00 
  bbc087:	62 63 45 28 18 cd 01 	vinsertf32x4 ymm25,ymm7,xmm5,0x1
  bbc08e:	c4 63 45 06 fd 31    	vperm2f128 ymm15,ymm7,ymm5,0x31
  bbc094:	62 e1 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x40],ymm20
  bbc09b:	02 
  bbc09c:	62 b1 bd 20 58 ec    	vaddpd ymm5,ymm24,ymm20
  bbc0a2:	62 e1 fd 28 28 64 24 	vmovapd ymm20,YMMWORD PTR [rsp+0x2a0]
  bbc0a9:	15 
  bbc0aa:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x80],ymm17
  bbc0b1:	04 
  bbc0b2:	62 11 f5 20 58 c3    	vaddpd ymm8,ymm17,ymm27
  bbc0b8:	c5 fd 29 ac 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm5
  bbc0bf:	00 00 
  bbc0c1:	c5 7d 29 84 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm8
  bbc0c8:	00 00 
  bbc0ca:	c4 41 55 5c d0       	vsubpd ymm10,ymm5,ymm8
  bbc0cf:	62 b1 85 20 58 ef    	vaddpd ymm5,ymm31,ymm23
  bbc0d5:	62 21 fd 28 28 ed    	vmovapd ymm29,ymm21
  bbc0db:	62 31 f5 28 58 c5    	vaddpd ymm8,ymm1,ymm21
  bbc0e1:	c5 fd 29 ac 24 00 02 	vmovapd YMMWORD PTR [rsp+0x200],ymm5
  bbc0e8:	00 00 
  bbc0ea:	c5 7d 29 84 24 e0 01 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm8
  bbc0f1:	00 00 
  bbc0f3:	c4 41 55 5c e0       	vsubpd ymm12,ymm5,ymm8
  bbc0f8:	62 43 2d 28 18 d4 01 	vinsertf32x4 ymm26,ymm10,xmm12,0x1
  bbc0ff:	62 c3 ad 28 23 ec 03 	vshuff64x2 ymm21,ymm10,ymm12,0x3
  bbc106:	62 71 dd 20 58 64 24 	vaddpd ymm12,ymm20,YMMWORD PTR [rsp+0x60]
  bbc10d:	03 
  bbc10e:	62 f1 ed 20 5c ee    	vsubpd ymm5,ymm18,ymm6
  bbc114:	62 b1 fd 28 5c fe    	vsubpd ymm7,ymm0,ymm22
  bbc11a:	c5 fd 29 ac 24 a0 01 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm5
  bbc121:	00 00 
  bbc123:	c5 fd 29 bc 24 80 01 	vmovapd YMMWORD PTR [rsp+0x180],ymm7
  bbc12a:	00 00 
  bbc12c:	62 61 d5 28 58 c7    	vaddpd ymm24,ymm5,ymm7
  bbc132:	62 03 1d 28 18 f0 01 	vinsertf32x4 ymm30,ymm12,xmm24,0x1
  bbc139:	62 13 9d 28 23 e0 03 	vshuff64x2 ymm12,ymm12,ymm24,0x3
  bbc140:	c4 c1 15 5c ee       	vsubpd ymm5,ymm13,ymm14
  bbc145:	62 f1 9d 20 5c fb    	vsubpd ymm7,ymm28,ymm3
  bbc14b:	c5 fd 29 ac 24 40 01 	vmovapd YMMWORD PTR [rsp+0x140],ymm5
  bbc152:	00 00 
  bbc154:	c5 fd 29 bc 24 60 02 	vmovapd YMMWORD PTR [rsp+0x260],ymm7
  bbc15b:	00 00 
  bbc15d:	62 61 d5 28 5c c7    	vsubpd ymm24,ymm5,ymm7
  bbc163:	c5 dd 5c ea          	vsubpd ymm5,ymm4,ymm2
  bbc167:	62 d1 fd 20 5c f9    	vsubpd ymm7,ymm16,ymm9
  bbc16d:	c5 fd 29 ac 24 60 01 	vmovapd YMMWORD PTR [rsp+0x160],ymm5
  bbc174:	00 00 
  bbc176:	c5 fd 29 bc 24 80 02 	vmovapd YMMWORD PTR [rsp+0x280],ymm7
  bbc17d:	00 00 
  bbc17f:	62 61 d5 28 5c ff    	vsubpd ymm31,ymm5,ymm7
  bbc185:	c5 7d 29 ff          	vmovapd ymm7,ymm15
  bbc189:	62 93 3d 20 18 ef 01 	vinsertf32x4 ymm5,ymm24,xmm31,0x1
  bbc190:	62 03 bd 20 23 c7 03 	vshuff64x2 ymm24,ymm24,ymm31,0x3
  bbc197:	62 01 b5 20 14 fa    	vunpcklpd ymm31,ymm25,ymm26
  bbc19d:	62 e1 8d 20 14 cd    	vunpcklpd ymm17,ymm30,ymm5
  bbc1a3:	62 11 fd 28 28 c7    	vmovapd ymm8,ymm31
  bbc1a9:	c5 7d 28 3d af a9 4b 	vmovapd ymm15,YMMWORD PTR [rip+0xffffffffff4ba9af]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  bbc1b0:	ff 
  bbc1b1:	62 32 85 28 7f c1    	vpermt2pd ymm8,ymm15,ymm17
  bbc1b7:	c5 7d 28 15 81 b4 4b 	vmovapd ymm10,YMMWORD PTR [rip+0xffffffffff4bb481]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  bbc1be:	ff 
  bbc1bf:	62 22 ad 28 7f f9    	vpermt2pd ymm31,ymm10,ymm17
  bbc1c5:	c4 41 7d 29 80 a0 fc 	vmovapd YMMWORD PTR [r8-0x360],ymm8
  bbc1cc:	ff ff 
  bbc1ce:	62 41 fd 28 29 78 e6 	vmovapd YMMWORD PTR [r8-0x340],ymm31
  bbc1d5:	62 f1 8d 20 15 ed    	vunpckhpd ymm5,ymm30,ymm5
  bbc1db:	62 11 b5 20 15 c2    	vunpckhpd ymm8,ymm25,ymm26
  bbc1e1:	62 41 fd 28 28 d2    	vmovapd ymm26,ymm10
  bbc1e7:	62 41 fd 28 28 cf    	vmovapd ymm25,ymm15
  bbc1ed:	62 c1 fd 28 28 c8    	vmovapd ymm17,ymm8
  bbc1f3:	62 e2 85 28 7f cd    	vpermt2pd ymm17,ymm15,ymm5
  bbc1f9:	62 72 ad 28 7f c5    	vpermt2pd ymm8,ymm10,ymm5
  bbc1ff:	62 c1 fd 28 29 48 ec 	vmovapd YMMWORD PTR [r8-0x280],ymm17
  bbc206:	c4 41 7d 29 80 a0 fd 	vmovapd YMMWORD PTR [r8-0x260],ymm8
  bbc20d:	ff ff 
  bbc20f:	62 b1 c5 28 14 ed    	vunpcklpd ymm5,ymm7,ymm21
  bbc215:	62 11 9d 28 14 c0    	vunpcklpd ymm8,ymm12,ymm24
  bbc21b:	62 e1 fd 28 28 cd    	vmovapd ymm17,ymm5
  bbc221:	62 c2 85 28 7f c8    	vpermt2pd ymm17,ymm15,ymm8
  bbc227:	62 d2 ad 28 7f e8    	vpermt2pd ymm5,ymm10,ymm8
  bbc22d:	62 c1 fd 28 29 48 f3 	vmovapd YMMWORD PTR [r8-0x1a0],ymm17
  bbc234:	c4 c1 7d 29 a8 80 fe 	vmovapd YMMWORD PTR [r8-0x180],ymm5
  bbc23b:	ff ff 
  bbc23d:	49 83 f9 0c          	cmp    r9,0xc
  bbc241:	74 2f                	je     bbc272 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xb32>
  bbc243:	62 91 9d 28 15 e8    	vunpckhpd ymm5,ymm12,ymm24
  bbc249:	62 31 c5 28 15 c5    	vunpckhpd ymm8,ymm7,ymm21
  bbc24f:	c4 41 7d 28 d0       	vmovapd ymm10,ymm8
  bbc254:	62 72 b5 20 7f d5    	vpermt2pd ymm10,ymm25,ymm5
  bbc25a:	62 72 ad 20 7f c5    	vpermt2pd ymm8,ymm26,ymm5
  bbc260:	c4 41 7d 29 90 40 ff 	vmovapd YMMWORD PTR [r8-0xc0],ymm10
  bbc267:	ff ff 
  bbc269:	c4 41 7d 29 80 60 ff 	vmovapd YMMWORD PTR [r8-0xa0],ymm8
  bbc270:	ff ff 
  bbc272:	62 21 a5 28 5c f7    	vsubpd ymm30,ymm11,ymm23
  bbc278:	62 81 f5 28 5c fd    	vsubpd ymm23,ymm1,ymm29
  bbc27e:	62 b1 8d 20 58 ef    	vaddpd ymm5,ymm30,ymm23
  bbc284:	c5 ed 58 cc          	vaddpd ymm1,ymm2,ymm4
  bbc288:	62 31 b5 28 58 c8    	vaddpd ymm9,ymm9,ymm16
  bbc28e:	c5 35 58 d1          	vaddpd ymm10,ymm9,ymm1
  bbc292:	c5 7d 28 04 24       	vmovapd ymm8,YMMWORD PTR [rsp]
  bbc297:	c5 3d 5c 5c 24 20    	vsubpd ymm11,ymm8,YMMWORD PTR [rsp+0x20]
  bbc29d:	c5 fd 28 94 24 c0 01 	vmovapd ymm2,YMMWORD PTR [rsp+0x1c0]
  bbc2a4:	00 00 
  bbc2a6:	c5 6d 5c bc 24 e0 00 	vsubpd ymm15,ymm2,YMMWORD PTR [rsp+0xe0]
  bbc2ad:	00 00 
  bbc2af:	c4 41 25 5c e7       	vsubpd ymm12,ymm11,ymm15
  bbc2b4:	62 a1 cd 28 58 c2    	vaddpd ymm16,ymm6,ymm18
  bbc2ba:	62 f1 cd 20 58 f0    	vaddpd ymm6,ymm22,ymm0
  bbc2c0:	62 f1 fd 20 5c fe    	vsubpd ymm7,ymm16,ymm6
  bbc2c6:	62 71 e5 20 5c 44 24 	vsubpd ymm8,ymm19,YMMWORD PTR [rsp+0x40]
  bbc2cd:	02 
  bbc2ce:	c5 fd 28 84 24 80 00 	vmovapd ymm0,YMMWORD PTR [rsp+0x80]
  bbc2d5:	00 00 
  bbc2d7:	62 91 fd 28 5c d3    	vsubpd ymm2,ymm0,ymm27
  bbc2dd:	c5 bd 58 c2          	vaddpd ymm0,ymm8,ymm2
  bbc2e1:	c4 c1 0d 58 e5       	vaddpd ymm4,ymm14,ymm13
  bbc2e6:	62 11 e5 28 58 ec    	vaddpd ymm13,ymm3,ymm28
  bbc2ec:	c5 15 58 f4          	vaddpd ymm14,ymm13,ymm4
  bbc2f0:	c5 fd 28 9c 24 20 01 	vmovapd ymm3,YMMWORD PTR [rsp+0x120]
  bbc2f7:	00 00 
  bbc2f9:	c5 e5 5c 9c 24 00 01 	vsubpd ymm3,ymm3,YMMWORD PTR [rsp+0x100]
  bbc300:	00 00 
  bbc302:	62 e1 dd 20 5c 4c 24 	vsubpd ymm17,ymm20,YMMWORD PTR [rsp+0x60]
  bbc309:	03 
  bbc30a:	62 e3 55 28 18 d0 01 	vinsertf32x4 ymm18,ymm5,xmm0,0x1
  bbc311:	c4 e3 55 06 c0 31    	vperm2f128 ymm0,ymm5,ymm0,0x31
  bbc317:	62 e3 1d 28 18 db 01 	vinsertf32x4 ymm19,ymm12,xmm3,0x1
  bbc31e:	c4 e3 1d 06 db 31    	vperm2f128 ymm3,ymm12,ymm3,0x31
  bbc324:	62 31 ed 20 14 e3    	vunpcklpd ymm12,ymm18,ymm19
  bbc32a:	62 e1 fd 28 14 eb    	vunpcklpd ymm21,ymm0,ymm3
  bbc330:	62 c3 2d 28 18 f6 01 	vinsertf32x4 ymm22,ymm10,xmm14,0x1
  bbc337:	c4 c3 2d 06 ee 31    	vperm2f128 ymm5,ymm10,ymm14,0x31
  bbc33d:	62 33 45 28 18 d1 01 	vinsertf32x4 ymm10,ymm7,xmm17,0x1
  bbc344:	62 b3 c5 28 23 f9 03 	vshuff64x2 ymm7,ymm7,ymm17,0x3
  bbc34b:	62 51 cd 20 14 f2    	vunpcklpd ymm14,ymm22,ymm10
  bbc351:	62 e1 d5 28 14 cf    	vunpcklpd ymm17,ymm5,ymm7
  bbc357:	62 41 fd 28 28 c4    	vmovapd ymm24,ymm12
  bbc35d:	62 42 b5 20 7f c6    	vpermt2pd ymm24,ymm25,ymm14
  bbc363:	62 52 ad 20 7f e6    	vpermt2pd ymm12,ymm26,ymm14
  bbc369:	62 41 fd 28 29 40 e7 	vmovapd YMMWORD PTR [r8-0x320],ymm24
  bbc370:	c4 41 7d 29 a0 00 fd 	vmovapd YMMWORD PTR [r8-0x300],ymm12
  bbc377:	ff ff 
  bbc379:	62 51 cd 20 15 d2    	vunpckhpd ymm10,ymm22,ymm10
  bbc37f:	62 31 ed 20 15 e3    	vunpckhpd ymm12,ymm18,ymm19
  bbc385:	c4 41 7d 28 f4       	vmovapd ymm14,ymm12
  bbc38a:	62 52 b5 20 7f f2    	vpermt2pd ymm14,ymm25,ymm10
  bbc390:	62 52 ad 20 7f e2    	vpermt2pd ymm12,ymm26,ymm10
  bbc396:	c4 41 7d 29 b0 c0 fd 	vmovapd YMMWORD PTR [r8-0x240],ymm14
  bbc39d:	ff ff 
  bbc39f:	c4 41 7d 29 a0 e0 fd 	vmovapd YMMWORD PTR [r8-0x220],ymm12
  bbc3a6:	ff ff 
  bbc3a8:	62 31 fd 28 28 d5    	vmovapd ymm10,ymm21
  bbc3ae:	62 32 b5 20 7f d1    	vpermt2pd ymm10,ymm25,ymm17
  bbc3b4:	62 a2 ad 20 7f e9    	vpermt2pd ymm21,ymm26,ymm17
  bbc3ba:	c4 41 7d 29 90 a0 fe 	vmovapd YMMWORD PTR [r8-0x160],ymm10
  bbc3c1:	ff ff 
  bbc3c3:	62 c1 fd 28 29 68 f6 	vmovapd YMMWORD PTR [r8-0x140],ymm21
  bbc3ca:	49 83 f9 0c          	cmp    r9,0xc
  bbc3ce:	74 24                	je     bbc3f4 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xcb4>
  bbc3d0:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  bbc3d4:	c5 fd 15 c3          	vunpckhpd ymm0,ymm0,ymm3
  bbc3d8:	c5 fd 28 d8          	vmovapd ymm3,ymm0
  bbc3dc:	62 f2 b5 20 7f dd    	vpermt2pd ymm3,ymm25,ymm5
  bbc3e2:	62 f2 ad 20 7f c5    	vpermt2pd ymm0,ymm26,ymm5
  bbc3e8:	c4 c1 7d 29 58 80    	vmovapd YMMWORD PTR [r8-0x80],ymm3
  bbc3ee:	c4 c1 7d 29 40 a0    	vmovapd YMMWORD PTR [r8-0x60],ymm0
  bbc3f4:	c5 fd 28 84 24 a0 00 	vmovapd ymm0,YMMWORD PTR [rsp+0xa0]
  bbc3fb:	00 00 
  bbc3fd:	c5 fd 58 84 24 c0 00 	vaddpd ymm0,ymm0,YMMWORD PTR [rsp+0xc0]
  bbc404:	00 00 
  bbc406:	c5 fd 28 9c 24 60 02 	vmovapd ymm3,YMMWORD PTR [rsp+0x260]
  bbc40d:	00 00 
  bbc40f:	c5 e5 58 9c 24 40 01 	vaddpd ymm3,ymm3,YMMWORD PTR [rsp+0x140]
  bbc416:	00 00 
  bbc418:	c5 fd 28 ac 24 20 02 	vmovapd ymm5,YMMWORD PTR [rsp+0x220]
  bbc41f:	00 00 
  bbc421:	c5 d5 5c ac 24 40 02 	vsubpd ymm5,ymm5,YMMWORD PTR [rsp+0x240]
  bbc428:	00 00 
  bbc42a:	c5 fd 28 bc 24 a0 01 	vmovapd ymm7,YMMWORD PTR [rsp+0x1a0]
  bbc431:	00 00 
  bbc433:	c5 c5 5c bc 24 80 01 	vsubpd ymm7,ymm7,YMMWORD PTR [rsp+0x180]
  bbc43a:	00 00 
  bbc43c:	c5 7d 28 94 24 e0 01 	vmovapd ymm10,YMMWORD PTR [rsp+0x1e0]
  bbc443:	00 00 
  bbc445:	c5 2d 58 94 24 00 02 	vaddpd ymm10,ymm10,YMMWORD PTR [rsp+0x200]
  bbc44c:	00 00 
  bbc44e:	c5 7d 28 a4 24 80 02 	vmovapd ymm12,YMMWORD PTR [rsp+0x280]
  bbc455:	00 00 
  bbc457:	c5 1d 58 a4 24 60 01 	vaddpd ymm12,ymm12,YMMWORD PTR [rsp+0x160]
  bbc45e:	00 00 
  bbc460:	62 31 8d 20 5c f7    	vsubpd ymm14,ymm30,ymm23
  bbc466:	c4 41 75 5c c9       	vsubpd ymm9,ymm1,ymm9
  bbc46b:	62 c3 7d 28 18 ca 01 	vinsertf32x4 ymm17,ymm0,xmm10,0x1
  bbc472:	c4 c3 7d 06 c2 31    	vperm2f128 ymm0,ymm0,ymm10,0x31
  bbc478:	c4 43 55 18 d6 01    	vinsertf128 ymm10,ymm5,xmm14,0x1
  bbc47e:	c4 c3 55 06 ce 31    	vperm2f128 ymm1,ymm5,ymm14,0x31
  bbc484:	62 51 f5 20 14 f2    	vunpcklpd ymm14,ymm17,ymm10
  bbc48a:	62 e1 fd 28 14 d1    	vunpcklpd ymm18,ymm0,ymm1
  bbc490:	62 c3 65 28 18 dc 01 	vinsertf32x4 ymm19,ymm3,xmm12,0x1
  bbc497:	c4 c3 65 06 dc 31    	vperm2f128 ymm3,ymm3,ymm12,0x31
  bbc49d:	c4 43 45 18 e1 01    	vinsertf128 ymm12,ymm7,xmm9,0x1
  bbc4a3:	c4 c3 45 06 e9 31    	vperm2f128 ymm5,ymm7,ymm9,0x31
  bbc4a9:	62 d1 e5 20 14 fc    	vunpcklpd ymm7,ymm19,ymm12
  bbc4af:	c5 65 14 cd          	vunpcklpd ymm9,ymm3,ymm5
  bbc4b3:	62 c1 fd 28 28 e6    	vmovapd ymm20,ymm14
  bbc4b9:	62 e2 b5 20 7f e7    	vpermt2pd ymm20,ymm25,ymm7
  bbc4bf:	62 72 ad 20 7f f7    	vpermt2pd ymm14,ymm26,ymm7
  bbc4c5:	62 c1 fd 28 29 60 e9 	vmovapd YMMWORD PTR [r8-0x2e0],ymm20
  bbc4cc:	c4 41 7d 29 b0 40 fd 	vmovapd YMMWORD PTR [r8-0x2c0],ymm14
  bbc4d3:	ff ff 
  bbc4d5:	62 d1 e5 20 15 fc    	vunpckhpd ymm7,ymm19,ymm12
  bbc4db:	62 51 f5 20 15 d2    	vunpckhpd ymm10,ymm17,ymm10
  bbc4e1:	c4 41 7d 28 e2       	vmovapd ymm12,ymm10
  bbc4e6:	62 72 b5 20 7f e7    	vpermt2pd ymm12,ymm25,ymm7
  bbc4ec:	62 72 ad 20 7f d7    	vpermt2pd ymm10,ymm26,ymm7
  bbc4f2:	c4 41 7d 29 a0 00 fe 	vmovapd YMMWORD PTR [r8-0x200],ymm12
  bbc4f9:	ff ff 
  bbc4fb:	c4 41 7d 29 90 20 fe 	vmovapd YMMWORD PTR [r8-0x1e0],ymm10
  bbc502:	ff ff 
  bbc504:	62 b1 fd 28 28 fa    	vmovapd ymm7,ymm18
  bbc50a:	62 d2 b5 20 7f f9    	vpermt2pd ymm7,ymm25,ymm9
  bbc510:	62 c2 ad 20 7f d1    	vpermt2pd ymm18,ymm26,ymm9
  bbc516:	c4 c1 7d 29 b8 e0 fe 	vmovapd YMMWORD PTR [r8-0x120],ymm7
  bbc51d:	ff ff 
  bbc51f:	62 c1 fd 28 29 50 f8 	vmovapd YMMWORD PTR [r8-0x100],ymm18
  bbc526:	49 83 f9 0c          	cmp    r9,0xc
  bbc52a:	74 24                	je     bbc550 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xe10>
  bbc52c:	c5 e5 15 dd          	vunpckhpd ymm3,ymm3,ymm5
  bbc530:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  bbc534:	c5 fd 28 c8          	vmovapd ymm1,ymm0
  bbc538:	62 f2 b5 20 7f cb    	vpermt2pd ymm1,ymm25,ymm3
  bbc53e:	62 f2 ad 20 7f c3    	vpermt2pd ymm0,ymm26,ymm3
  bbc544:	c4 c1 7d 29 48 c0    	vmovapd YMMWORD PTR [r8-0x40],ymm1
  bbc54a:	c4 c1 7d 29 40 e0    	vmovapd YMMWORD PTR [r8-0x20],ymm0
  bbc550:	c4 c1 25 58 c7       	vaddpd ymm0,ymm11,ymm15
  bbc555:	62 f1 fd 20 58 ce    	vaddpd ymm1,ymm16,ymm6
  bbc55b:	c5 bd 5c d2          	vsubpd ymm2,ymm8,ymm2
  bbc55f:	c4 c1 5d 5c dd       	vsubpd ymm3,ymm4,ymm13
  bbc564:	c5 f9 14 e1          	vunpcklpd xmm4,xmm0,xmm1
  bbc568:	c5 e9 14 eb          	vunpcklpd xmm5,xmm2,xmm3
  bbc56c:	c4 c1 79 29 a8 70 fd 	vmovapd XMMWORD PTR [r8-0x290],xmm5
  bbc573:	ff ff 
  bbc575:	c4 c1 79 29 a0 60 fd 	vmovapd XMMWORD PTR [r8-0x2a0],xmm4
  bbc57c:	ff ff 
  bbc57e:	c5 f9 15 e1          	vunpckhpd xmm4,xmm0,xmm1
  bbc582:	c5 e9 15 eb          	vunpckhpd xmm5,xmm2,xmm3
  bbc586:	c4 c1 79 29 a8 50 fe 	vmovapd XMMWORD PTR [r8-0x1b0],xmm5
  bbc58d:	ff ff 
  bbc58f:	c4 c1 79 29 a0 40 fe 	vmovapd XMMWORD PTR [r8-0x1c0],xmm4
  bbc596:	ff ff 
  bbc598:	c5 fd 28 e1          	vmovapd ymm4,ymm1
  bbc59c:	c5 fd 28 2d bc 94 4b 	vmovapd ymm5,YMMWORD PTR [rip+0xffffffffff4b94bc]        # 75a60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2f10>
  bbc5a3:	ff 
  bbc5a4:	62 f2 d5 28 7f e3    	vpermt2pd ymm4,ymm5,ymm3
  bbc5aa:	c4 e3 7d 06 ea 31    	vperm2f128 ymm5,ymm0,ymm2,0x31
  bbc5b0:	c4 e3 55 0d e4 0a    	vblendpd ymm4,ymm5,ymm4,0xa
  bbc5b6:	c4 c1 7d 29 a0 20 ff 	vmovapd YMMWORD PTR [r8-0xe0],ymm4
  bbc5bd:	ff ff 
  bbc5bf:	49 83 f9 0c          	cmp    r9,0xc
  bbc5c3:	0f 84 e7 f1 ff ff    	je     bbb7b0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x70>
  bbc5c9:	c5 fd 28 25 6f ae 4b 	vmovapd ymm4,YMMWORD PTR [rip+0xffffffffff4bae6f]        # 77440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x48f0>
  bbc5d0:	ff 
  bbc5d1:	62 f2 dd 28 7f d0    	vpermt2pd ymm2,ymm4,ymm0
  bbc5d7:	c4 e3 75 06 c3 31    	vperm2f128 ymm0,ymm1,ymm3,0x31
  bbc5dd:	c4 e3 6d 0d c0 0a    	vblendpd ymm0,ymm2,ymm0,0xa
  bbc5e3:	c4 c1 7d 29 00       	vmovapd YMMWORD PTR [r8],ymm0
  bbc5e8:	e9 c3 f1 ff ff       	jmp    bbb7b0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x70>
  bbc5ed:	48 8d bc 24 00 0c 00 	lea    rdi,[rsp+0xc00]
  bbc5f4:	00 
  bbc5f5:	48 83 c2 60          	add    rdx,0x60
  bbc5f9:	41 b8 04 00 00 00    	mov    r8d,0x4
  bbc5ff:	45 31 db             	xor    r11d,r11d
  bbc602:	c5 fd 28 25 d6 c0 4b 	vmovapd ymm4,YMMWORD PTR [rip+0xffffffffff4bc0d6]        # 786e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5b90>
  bbc609:	ff 
  bbc60a:	c5 fd 28 2d ee b6 4b 	vmovapd ymm5,YMMWORD PTR [rip+0xffffffffff4bb6ee]        # 77d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x51b0>
  bbc611:	ff 
  bbc612:	e9 f6 01 00 00       	jmp    bbc80d <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x10cd>
  bbc617:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  bbc61e:	00 00 
  bbc620:	62 e1 fd 28 28 fc    	vmovapd ymm23,ymm4
  bbc626:	c5 fd 28 15 12 b0 4b 	vmovapd ymm2,YMMWORD PTR [rip+0xffffffffff4bb012]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  bbc62d:	ff 
  bbc62e:	c5 7d 28 8c 24 40 02 	vmovapd ymm9,YMMWORD PTR [rsp+0x240]
  bbc635:	00 00 
  bbc637:	62 72 ed 28 7f 4c 24 	vpermt2pd ymm9,ymm2,YMMWORD PTR [rsp+0x120]
  bbc63e:	09 
  bbc63f:	c4 21 7d 11 14 0e    	vmovupd YMMWORD PTR [rsi+r9*1],ymm10
  bbc645:	c4 21 7d 11 4c 0e 20 	vmovupd YMMWORD PTR [rsi+r9*1+0x20],ymm9
  bbc64c:	62 e2 ed 28 7f 54 24 	vpermt2pd ymm18,ymm2,YMMWORD PTR [rsp+0x260]
  bbc653:	13 
  bbc654:	62 21 fd 28 11 64 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xe0],ymm28
  bbc65b:	07 
  bbc65c:	62 a1 fd 28 11 54 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x100],ymm18
  bbc663:	08 
  bbc664:	c5 fd 28 a4 24 c0 01 	vmovapd ymm4,YMMWORD PTR [rsp+0x1c0]
  bbc66b:	00 00 
  bbc66d:	62 f2 ed 28 7f 64 24 	vpermt2pd ymm4,ymm2,YMMWORD PTR [rsp+0x100]
  bbc674:	08 
  bbc675:	62 21 fd 28 11 44 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x1c0],ymm24
  bbc67c:	0e 
  bbc67d:	c4 a1 7d 11 a4 0e e0 	vmovupd YMMWORD PTR [rsi+r9*1+0x1e0],ymm4
  bbc684:	01 00 00 
  bbc687:	c5 fd 28 a4 24 80 00 	vmovapd ymm4,YMMWORD PTR [rsp+0x80]
  bbc68e:	00 00 
  bbc690:	62 f2 ed 28 7f e5    	vpermt2pd ymm4,ymm2,ymm5
  bbc696:	c4 a1 7d 11 bc 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x2a0],ymm7
  bbc69d:	02 00 00 
  bbc6a0:	c4 a1 7d 11 a4 0e c0 	vmovupd YMMWORD PTR [rsi+r9*1+0x2c0],ymm4
  bbc6a7:	02 00 00 
  bbc6aa:	62 e2 ed 28 7f 74 24 	vpermt2pd ymm22,ymm2,YMMWORD PTR [rsp+0x280]
  bbc6b1:	14 
  bbc6b2:	62 21 fd 28 11 6c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x380],ymm29
  bbc6b9:	1c 
  bbc6ba:	62 a1 fd 28 11 74 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x3a0],ymm22
  bbc6c1:	1d 
  bbc6c2:	c5 fd 28 a4 24 80 01 	vmovapd ymm4,YMMWORD PTR [rsp+0x180]
  bbc6c9:	00 00 
  bbc6cb:	62 f2 ed 28 7f 64 24 	vpermt2pd ymm4,ymm2,YMMWORD PTR [rsp+0x1a0]
  bbc6d2:	0d 
  bbc6d3:	c4 21 7d 11 84 0e 60 	vmovupd YMMWORD PTR [rsi+r9*1+0x460],ymm8
  bbc6da:	04 00 00 
  bbc6dd:	c4 a1 7d 11 a4 0e 80 	vmovupd YMMWORD PTR [rsi+r9*1+0x480],ymm4
  bbc6e4:	04 00 00 
  bbc6e7:	c5 fd 28 24 24       	vmovapd ymm4,YMMWORD PTR [rsp]
  bbc6ec:	62 f2 ed 28 7f 64 24 	vpermt2pd ymm4,ymm2,YMMWORD PTR [rsp+0x60]
  bbc6f3:	03 
  bbc6f4:	c4 21 7d 11 a4 0e 40 	vmovupd YMMWORD PTR [rsi+r9*1+0x540],ymm12
  bbc6fb:	05 00 00 
  bbc6fe:	c4 a1 7d 11 a4 0e 60 	vmovupd YMMWORD PTR [rsi+r9*1+0x560],ymm4
  bbc705:	05 00 00 
  bbc708:	62 22 ed 28 7f d5    	vpermt2pd ymm26,ymm2,ymm21
  bbc70e:	c4 21 7d 11 b4 0e 20 	vmovupd YMMWORD PTR [rsi+r9*1+0x620],ymm14
  bbc715:	06 00 00 
  bbc718:	62 21 fd 28 11 54 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x640],ymm26
  bbc71f:	32 
  bbc720:	62 e2 ed 28 7f 7c 24 	vpermt2pd ymm23,ymm2,YMMWORD PTR [rsp+0x160]
  bbc727:	0b 
  bbc728:	c4 a1 7d 11 9c 0e 00 	vmovupd YMMWORD PTR [rsi+r9*1+0x700],ymm3
  bbc72f:	07 00 00 
  bbc732:	62 a1 fd 28 11 7c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x720],ymm23
  bbc739:	39 
  bbc73a:	c5 fd 28 4c 24 20    	vmovapd ymm1,YMMWORD PTR [rsp+0x20]
  bbc740:	62 d2 ed 28 7f cd    	vpermt2pd ymm1,ymm2,ymm13
  bbc746:	c4 21 7d 11 bc 0e e0 	vmovupd YMMWORD PTR [rsi+r9*1+0x7e0],ymm15
  bbc74d:	07 00 00 
  bbc750:	c4 a1 7d 11 8c 0e 00 	vmovupd YMMWORD PTR [rsi+r9*1+0x800],ymm1
  bbc757:	08 00 00 
  bbc75a:	c5 fd 28 8c 24 e0 00 	vmovapd ymm1,YMMWORD PTR [rsp+0xe0]
  bbc761:	00 00 
  bbc763:	62 f2 ed 28 7f 4c 24 	vpermt2pd ymm1,ymm2,YMMWORD PTR [rsp+0x140]
  bbc76a:	0a 
  bbc76b:	62 a1 fd 28 11 4c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x8c0],ymm17
  bbc772:	46 
  bbc773:	c4 a1 7d 11 8c 0e e0 	vmovupd YMMWORD PTR [rsi+r9*1+0x8e0],ymm1
  bbc77a:	08 00 00 
  bbc77d:	c5 fd 28 8c 24 a0 00 	vmovapd ymm1,YMMWORD PTR [rsp+0xa0]
  bbc784:	00 00 
  bbc786:	62 f2 ed 28 7f 4c 24 	vpermt2pd ymm1,ymm2,YMMWORD PTR [rsp+0xc0]
  bbc78d:	06 
  bbc78e:	c4 a1 7d 11 b4 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x9a0],ymm6
  bbc795:	09 00 00 
  bbc798:	c4 a1 7d 11 8c 0e c0 	vmovupd YMMWORD PTR [rsi+r9*1+0x9c0],ymm1
  bbc79f:	09 00 00 
  bbc7a2:	62 72 ed 28 7f d8    	vpermt2pd ymm11,ymm2,ymm0
  bbc7a8:	62 a1 fd 28 11 64 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xa80],ymm20
  bbc7af:	54 
  bbc7b0:	c4 21 7d 11 9c 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0xaa0],ymm11
  bbc7b7:	0a 00 00 
  bbc7ba:	62 22 ed 28 7f c8    	vpermt2pd ymm25,ymm2,ymm16
  bbc7c0:	62 21 fd 28 11 7c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xb60],ymm31
  bbc7c7:	5b 
  bbc7c8:	62 21 fd 28 11 4c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xb80],ymm25
  bbc7cf:	5c 
  bbc7d0:	62 82 ed 28 7f db    	vpermt2pd ymm19,ymm2,ymm27
  bbc7d6:	62 21 fd 28 11 74 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xc40],ymm30
  bbc7dd:	62 
  bbc7de:	62 a1 fd 28 11 5c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xc60],ymm19
  bbc7e5:	63 
  bbc7e6:	48 83 c7 40          	add    rdi,0x40
  bbc7ea:	48 81 c2 c0 03 00 00 	add    rdx,0x3c0
  bbc7f1:	4d 89 d3             	mov    r11,r10
  bbc7f4:	49 ff c8             	dec    r8
  bbc7f7:	c5 fd 28 25 e1 be 4b 	vmovapd ymm4,YMMWORD PTR [rip+0xffffffffff4bbee1]        # 786e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5b90>
  bbc7fe:	ff 
  bbc7ff:	c5 fd 28 2d f9 b4 4b 	vmovapd ymm5,YMMWORD PTR [rip+0xffffffffff4bb4f9]        # 77d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x51b0>
  bbc806:	ff 
  bbc807:	0f 84 53 0e 00 00    	je     bbd660 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1f20>
  bbc80d:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  bbc811:	62 f1 fd 48 11 84 24 	vmovupd ZMMWORD PTR [rsp+0x460],zmm0
  bbc818:	60 04 00 00 
  bbc81c:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x440],zmm0
  bbc823:	11 
  bbc824:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x400],zmm0
  bbc82b:	10 
  bbc82c:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x3c0],zmm0
  bbc833:	0f 
  bbc834:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x380],zmm0
  bbc83b:	0e 
  bbc83c:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x340],zmm0
  bbc843:	0d 
  bbc844:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x300],zmm0
  bbc84b:	0c 
  bbc84c:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x2c0],zmm0
  bbc853:	0b 
  bbc854:	62 f1 fd 48 11 84 24 	vmovupd ZMMWORD PTR [rsp+0x660],zmm0
  bbc85b:	60 06 00 00 
  bbc85f:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x640],zmm0
  bbc866:	19 
  bbc867:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x600],zmm0
  bbc86e:	18 
  bbc86f:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x5c0],zmm0
  bbc876:	17 
  bbc877:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x580],zmm0
  bbc87e:	16 
  bbc87f:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x540],zmm0
  bbc886:	15 
  bbc887:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x500],zmm0
  bbc88e:	14 
  bbc88f:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x4c0],zmm0
  bbc896:	13 
  bbc897:	62 f1 fd 48 11 84 24 	vmovupd ZMMWORD PTR [rsp+0x860],zmm0
  bbc89e:	60 08 00 00 
  bbc8a2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x840],zmm0
  bbc8a9:	21 
  bbc8aa:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x800],zmm0
  bbc8b1:	20 
  bbc8b2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x7c0],zmm0
  bbc8b9:	1f 
  bbc8ba:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x780],zmm0
  bbc8c1:	1e 
  bbc8c2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x740],zmm0
  bbc8c9:	1d 
  bbc8ca:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x700],zmm0
  bbc8d1:	1c 
  bbc8d2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x6c0],zmm0
  bbc8d9:	1b 
  bbc8da:	62 f1 fd 48 11 84 24 	vmovupd ZMMWORD PTR [rsp+0xa60],zmm0
  bbc8e1:	60 0a 00 00 
  bbc8e5:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0xa40],zmm0
  bbc8ec:	29 
  bbc8ed:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0xa00],zmm0
  bbc8f4:	28 
  bbc8f5:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x9c0],zmm0
  bbc8fc:	27 
  bbc8fd:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x980],zmm0
  bbc904:	26 
  bbc905:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x940],zmm0
  bbc90c:	25 
  bbc90d:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x900],zmm0
  bbc914:	24 
  bbc915:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x8c0],zmm0
  bbc91c:	23 
  bbc91d:	4d 89 d9             	mov    r9,r11
  bbc920:	49 c1 e1 04          	shl    r9,0x4
  bbc924:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  bbc928:	49 83 fb 0a          	cmp    r11,0xa
  bbc92c:	77 0a                	ja     bbc938 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x11f8>
  bbc92e:	c4 a1 7d 28 84 0c 20 	vmovapd ymm0,YMMWORD PTR [rsp+r9*1+0xb20]
  bbc935:	0b 00 00 
  bbc938:	4d 8d 53 04          	lea    r10,[r11+0x4]
  bbc93c:	c4 a1 7d 28 b4 0c 00 	vmovapd ymm6,YMMWORD PTR [rsp+r9*1+0xb00]
  bbc943:	0b 00 00 
  bbc946:	48 89 fb             	mov    rbx,rdi
  bbc949:	45 31 f6             	xor    r14d,r14d
  bbc94c:	eb 60                	jmp    bbc9ae <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x126e>
  bbc94e:	66 90                	xchg   ax,ax
  bbc950:	c5 fd 28 53 e0       	vmovapd ymm2,YMMWORD PTR [rbx-0x20]
  bbc955:	c5 fd 28 da          	vmovapd ymm3,ymm2
  bbc959:	62 f2 dd 28 7f d9    	vpermt2pd ymm3,ymm4,ymm1
  bbc95f:	62 f2 d5 28 7f d1    	vpermt2pd ymm2,ymm5,ymm1
  bbc965:	c4 a1 7d 29 9c 34 e0 	vmovapd YMMWORD PTR [rsp+r14*1+0x2e0],ymm3
  bbc96c:	02 00 00 
  bbc96f:	c4 a1 7d 29 94 34 e0 	vmovapd YMMWORD PTR [rsp+r14*1+0x4e0],ymm2
  bbc976:	04 00 00 
  bbc979:	c4 a1 7c 10 4c 72 e0 	vmovups ymm1,YMMWORD PTR [rdx+r14*2-0x20]
  bbc980:	c4 a1 7c 29 8c 34 e0 	vmovaps YMMWORD PTR [rsp+r14*1+0x6e0],ymm1
  bbc987:	06 00 00 
  bbc98a:	c4 a1 7d 10 0c 72    	vmovupd ymm1,YMMWORD PTR [rdx+r14*2]
  bbc990:	c4 a1 7d 29 8c 34 e0 	vmovapd YMMWORD PTR [rsp+r14*1+0x8e0],ymm1
  bbc997:	08 00 00 
  bbc99a:	49 83 c6 20          	add    r14,0x20
  bbc99e:	48 81 c3 e0 00 00 00 	add    rbx,0xe0
  bbc9a5:	49 81 fe c0 01 00 00 	cmp    r14,0x1c0
  bbc9ac:	74 12                	je     bbc9c0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1280>
  bbc9ae:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  bbc9b2:	49 83 fb 0a          	cmp    r11,0xa
  bbc9b6:	77 98                	ja     bbc950 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1210>
  bbc9b8:	c5 fd 28 0b          	vmovapd ymm1,YMMWORD PTR [rbx]
  bbc9bc:	eb 92                	jmp    bbc950 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1210>
  bbc9be:	66 90                	xchg   ax,ax
  bbc9c0:	c5 fd 28 ce          	vmovapd ymm1,ymm6
  bbc9c4:	62 f2 dd 28 7f c8    	vpermt2pd ymm1,ymm4,ymm0
  bbc9ca:	c5 fd 29 0c 24       	vmovapd YMMWORD PTR [rsp],ymm1
  bbc9cf:	62 f2 d5 28 7f f0    	vpermt2pd ymm6,ymm5,ymm0
  bbc9d5:	c5 fd 29 74 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm6
  bbc9db:	c5 7d 28 bc 24 e0 06 	vmovapd ymm15,YMMWORD PTR [rsp+0x6e0]
  bbc9e2:	00 00 
  bbc9e4:	62 e1 fd 28 28 4c 24 	vmovapd ymm17,YMMWORD PTR [rsp+0x700]
  bbc9eb:	38 
  bbc9ec:	c5 fd 28 ac 24 20 07 	vmovapd ymm5,YMMWORD PTR [rsp+0x720]
  bbc9f3:	00 00 
  bbc9f5:	c5 7d 28 a4 24 40 07 	vmovapd ymm12,YMMWORD PTR [rsp+0x740]
  bbc9fc:	00 00 
  bbc9fe:	62 e1 fd 28 28 64 24 	vmovapd ymm20,YMMWORD PTR [rsp+0x2e0]
  bbca05:	17 
  bbca06:	62 61 fd 28 28 44 24 	vmovapd ymm24,YMMWORD PTR [rsp+0x300]
  bbca0d:	18 
  bbca0e:	c5 fd 28 b4 24 20 03 	vmovapd ymm6,YMMWORD PTR [rsp+0x320]
  bbca15:	00 00 
  bbca17:	62 61 fd 28 28 64 24 	vmovapd ymm28,YMMWORD PTR [rsp+0x900]
  bbca1e:	48 
  bbca1f:	c5 fd 28 9c 24 20 09 	vmovapd ymm3,YMMWORD PTR [rsp+0x920]
  bbca26:	00 00 
  bbca28:	62 61 fd 28 28 7c 24 	vmovapd ymm31,YMMWORD PTR [rsp+0x500]
  bbca2f:	28 
  bbca30:	c5 fd 28 bc 24 20 05 	vmovapd ymm7,YMMWORD PTR [rsp+0x520]
  bbca37:	00 00 
  bbca39:	62 61 fd 28 28 74 24 	vmovapd ymm30,YMMWORD PTR [rsp+0x7a0]
  bbca40:	3d 
  bbca41:	c5 fd 28 a4 24 a0 03 	vmovapd ymm4,YMMWORD PTR [rsp+0x3a0]
  bbca48:	00 00 
  bbca4a:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x860]
  bbca51:	43 
  bbca52:	c5 7d 28 9c 24 60 04 	vmovapd ymm11,YMMWORD PTR [rsp+0x460]
  bbca59:	00 00 
  bbca5b:	62 e1 fd 28 28 44 24 	vmovapd ymm16,YMMWORD PTR [rsp+0x800]
  bbca62:	40 
  bbca63:	62 61 fd 28 28 5c 24 	vmovapd ymm27,YMMWORD PTR [rsp+0x400]
  bbca6a:	20 
  bbca6b:	c5 fd 28 8c 24 80 08 	vmovapd ymm1,YMMWORD PTR [rsp+0x880]
  bbca72:	00 00 
  bbca74:	62 61 fd 28 28 6c 24 	vmovapd ymm29,YMMWORD PTR [rsp+0x480]
  bbca7b:	24 
  bbca7c:	c5 fd 28 84 24 c0 07 	vmovapd ymm0,YMMWORD PTR [rsp+0x7c0]
  bbca83:	00 00 
  bbca85:	c5 7d 28 84 24 c0 03 	vmovapd ymm8,YMMWORD PTR [rsp+0x3c0]
  bbca8c:	00 00 
  bbca8e:	c5 7d 28 ac 24 60 07 	vmovapd ymm13,YMMWORD PTR [rsp+0x760]
  bbca95:	00 00 
  bbca97:	c5 fd 28 94 24 60 03 	vmovapd ymm2,YMMWORD PTR [rsp+0x360]
  bbca9e:	00 00 
  bbcaa0:	62 e1 fd 28 28 54 24 	vmovapd ymm18,YMMWORD PTR [rsp+0x7e0]
  bbcaa7:	3f 
  bbcaa8:	c5 7d 28 b4 24 e0 03 	vmovapd ymm14,YMMWORD PTR [rsp+0x3e0]
  bbcaaf:	00 00 
  bbcab1:	62 61 fd 28 28 4c 24 	vmovapd ymm25,YMMWORD PTR [rsp+0x780]
  bbcab8:	3c 
  bbcab9:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x380]
  bbcac0:	1c 
  bbcac1:	c5 7d 28 8c 24 40 08 	vmovapd ymm9,YMMWORD PTR [rsp+0x840]
  bbcac8:	00 00 
  bbcaca:	62 e1 fd 28 28 7c 24 	vmovapd ymm23,YMMWORD PTR [rsp+0x440]
  bbcad1:	22 
  bbcad2:	c5 4d 59 d5          	vmulpd ymm10,ymm6,ymm5
  bbcad6:	c4 62 c5 bc d3       	vfnmadd231pd ymm10,ymm7,ymm3
  bbcadb:	c5 7d 29 94 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm10
  bbcae2:	00 00 
  bbcae4:	c5 45 59 d5          	vmulpd ymm10,ymm7,ymm5
  bbcae8:	c5 fd 28 ac 24 40 0a 	vmovapd ymm5,YMMWORD PTR [rsp+0xa40]
  bbcaef:	00 00 
  bbcaf1:	c4 62 cd b8 d3       	vfmadd231pd ymm10,ymm6,ymm3
  bbcaf6:	c5 fd 28 9c 24 40 06 	vmovapd ymm3,YMMWORD PTR [rsp+0x640]
  bbcafd:	00 00 
  bbcaff:	62 c1 c5 20 59 f1    	vmulpd ymm22,ymm23,ymm9
  bbcb05:	62 e2 e5 28 bc f5    	vfnmadd231pd ymm22,ymm3,ymm5
  bbcb0b:	c5 35 59 cb          	vmulpd ymm9,ymm9,ymm3
  bbcb0f:	c5 fd 28 9c 24 80 09 	vmovapd ymm3,YMMWORD PTR [rsp+0x980]
  bbcb16:	00 00 
  bbcb18:	62 72 c5 20 b8 cd    	vfmadd231pd ymm9,ymm23,ymm5
  bbcb1e:	c5 fd 28 ac 24 80 05 	vmovapd ymm5,YMMWORD PTR [rsp+0x580]
  bbcb25:	00 00 
  bbcb27:	62 81 e5 20 59 f9    	vmulpd ymm23,ymm19,ymm25
  bbcb2d:	62 e2 d5 28 bc fb    	vfnmadd231pd ymm23,ymm5,ymm3
  bbcb33:	62 91 d5 28 59 f1    	vmulpd ymm6,ymm5,ymm25
  bbcb39:	c5 fd 28 ac 24 e0 09 	vmovapd ymm5,YMMWORD PTR [rsp+0x9e0]
  bbcb40:	00 00 
  bbcb42:	62 f2 e5 20 b8 f3    	vfmadd231pd ymm6,ymm19,ymm3
  bbcb48:	c5 fd 28 9c 24 e0 05 	vmovapd ymm3,YMMWORD PTR [rsp+0x5e0]
  bbcb4f:	00 00 
  bbcb51:	62 21 8d 28 59 ca    	vmulpd ymm25,ymm14,ymm18
  bbcb57:	62 62 e5 28 bc cd    	vfnmadd231pd ymm25,ymm3,ymm5
  bbcb5d:	62 b1 e5 28 59 fa    	vmulpd ymm7,ymm3,ymm18
  bbcb63:	c5 fd 28 9c 24 60 09 	vmovapd ymm3,YMMWORD PTR [rsp+0x960]
  bbcb6a:	00 00 
  bbcb6c:	c4 e2 8d b8 fd       	vfmadd231pd ymm7,ymm14,ymm5
  bbcb71:	c5 fd 28 ac 24 60 05 	vmovapd ymm5,YMMWORD PTR [rsp+0x560]
  bbcb78:	00 00 
  bbcb7a:	c5 15 59 f2          	vmulpd ymm14,ymm13,ymm2
  bbcb7e:	c4 62 d5 bc f3       	vfnmadd231pd ymm14,ymm5,ymm3
  bbcb83:	62 c1 d5 28 59 ed    	vmulpd ymm21,ymm5,ymm13
  bbcb89:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x9c0]
  bbcb90:	4e 
  bbcb91:	62 e2 ed 28 b8 eb    	vfmadd231pd ymm21,ymm2,ymm3
  bbcb97:	c5 fd 28 94 24 c0 05 	vmovapd ymm2,YMMWORD PTR [rsp+0x5c0]
  bbcb9e:	00 00 
  bbcba0:	c5 3d 59 e8          	vmulpd ymm13,ymm8,ymm0
  bbcba4:	62 32 ed 28 bc eb    	vfnmadd231pd ymm13,ymm2,ymm19
  bbcbaa:	62 e1 ed 28 59 d0    	vmulpd ymm18,ymm2,ymm0
  bbcbb0:	c5 fd 28 94 24 20 08 	vmovapd ymm2,YMMWORD PTR [rsp+0x820]
  bbcbb7:	00 00 
  bbcbb9:	62 a2 bd 28 b8 d3    	vfmadd231pd ymm18,ymm8,ymm19
  bbcbbf:	c5 fd 28 9c 24 20 04 	vmovapd ymm3,YMMWORD PTR [rsp+0x420]
  bbcbc6:	00 00 
  bbcbc8:	62 b1 bd 20 59 c1    	vmulpd ymm0,ymm24,ymm17
  bbcbce:	62 92 85 20 bc c4    	vfnmadd231pd ymm0,ymm31,ymm28
  bbcbd4:	62 21 85 20 59 f9    	vmulpd ymm31,ymm31,ymm17
  bbcbda:	62 e1 fd 28 28 4c 24 	vmovapd ymm17,YMMWORD PTR [rsp+0xa20]
  bbcbe1:	51 
  bbcbe2:	62 02 bd 20 b8 fc    	vfmadd231pd ymm31,ymm24,ymm28
  bbcbe8:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x620]
  bbcbef:	31 
  bbcbf0:	c5 65 59 c2          	vmulpd ymm8,ymm3,ymm2
  bbcbf4:	62 32 e5 20 bc c1    	vfnmadd231pd ymm8,ymm19,ymm17
  bbcbfa:	62 61 e5 20 59 c2    	vmulpd ymm24,ymm19,ymm2
  bbcc00:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0xa80]
  bbcc07:	54 
  bbcc08:	62 22 e5 28 b8 c1    	vfmadd231pd ymm24,ymm3,ymm17
  bbcc0e:	c5 fd 28 9c 24 80 06 	vmovapd ymm3,YMMWORD PTR [rsp+0x680]
  bbcc15:	00 00 
  bbcc17:	62 f1 95 20 59 d1    	vmulpd ymm2,ymm29,ymm1
  bbcc1d:	62 b2 e5 28 bc d3    	vfnmadd231pd ymm2,ymm3,ymm19
  bbcc23:	62 61 e5 28 59 e1    	vmulpd ymm28,ymm3,ymm1
  bbcc29:	c5 fd 28 8c 24 00 0a 	vmovapd ymm1,YMMWORD PTR [rsp+0xa00]
  bbcc30:	00 00 
  bbcc32:	62 22 95 20 b8 e3    	vfmadd231pd ymm28,ymm29,ymm19
  bbcc38:	c5 fd 28 9c 24 00 06 	vmovapd ymm3,YMMWORD PTR [rsp+0x600]
  bbcc3f:	00 00 
  bbcc41:	62 a1 a5 20 59 c8    	vmulpd ymm17,ymm27,ymm16
  bbcc47:	62 e2 e5 28 bc c9    	vfnmadd231pd ymm17,ymm3,ymm1
  bbcc4d:	62 a1 e5 28 59 c0    	vmulpd ymm16,ymm3,ymm16
  bbcc53:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0xa60]
  bbcc5a:	53 
  bbcc5b:	62 e2 a5 20 b8 c1    	vfmadd231pd ymm16,ymm27,ymm1
  bbcc61:	c5 fd 28 8c 24 60 06 	vmovapd ymm1,YMMWORD PTR [rsp+0x660]
  bbcc68:	00 00 
  bbcc6a:	62 91 a5 28 59 da    	vmulpd ymm3,ymm11,ymm26
  bbcc70:	62 b2 f5 28 bc db    	vfnmadd231pd ymm3,ymm1,ymm19
  bbcc76:	62 01 f5 28 59 ea    	vmulpd ymm29,ymm1,ymm26
  bbcc7c:	c5 fd 28 8c 24 a0 09 	vmovapd ymm1,YMMWORD PTR [rsp+0x9a0]
  bbcc83:	00 00 
  bbcc85:	62 22 a5 28 b8 eb    	vfmadd231pd ymm29,ymm11,ymm19
  bbcc8b:	c5 7d 28 9c 24 a0 05 	vmovapd ymm11,YMMWORD PTR [rsp+0x5a0]
  bbcc92:	00 00 
  bbcc94:	62 01 dd 28 59 d6    	vmulpd ymm26,ymm4,ymm30
  bbcc9a:	62 62 a5 28 bc d1    	vfnmadd231pd ymm26,ymm11,ymm1
  bbcca0:	62 01 a5 28 59 f6    	vmulpd ymm30,ymm11,ymm30
  bbcca6:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x8e0]
  bbccad:	47 
  bbccae:	62 62 dd 28 b8 f1    	vfmadd231pd ymm30,ymm4,ymm1
  bbccb4:	c5 fd 28 8c 24 e0 04 	vmovapd ymm1,YMMWORD PTR [rsp+0x4e0]
  bbccbb:	00 00 
  bbccbd:	62 51 dd 20 59 df    	vmulpd ymm11,ymm20,ymm15
  bbccc3:	62 32 f5 28 bc db    	vfnmadd231pd ymm11,ymm1,ymm19
  bbccc9:	c5 05 59 f9          	vmulpd ymm15,ymm15,ymm1
  bbcccd:	c5 fd 28 8c 24 40 03 	vmovapd ymm1,YMMWORD PTR [rsp+0x340]
  bbccd4:	00 00 
  bbccd6:	62 32 dd 20 b8 fb    	vfmadd231pd ymm15,ymm20,ymm19
  bbccdc:	c5 fd 28 a4 24 40 09 	vmovapd ymm4,YMMWORD PTR [rsp+0x940]
  bbcce3:	00 00 
  bbcce5:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x540]
  bbccec:	2a 
  bbcced:	62 41 f5 28 59 dc    	vmulpd ymm27,ymm1,ymm12
  bbccf3:	62 62 e5 20 bc dc    	vfnmadd231pd ymm27,ymm19,ymm4
  bbccf9:	62 c1 e5 20 59 e4    	vmulpd ymm20,ymm19,ymm12
  bbccff:	62 e2 f5 28 b8 e4    	vfmadd231pd ymm20,ymm1,ymm4
  bbcd05:	c5 95 58 e0          	vaddpd ymm4,ymm13,ymm0
  bbcd09:	62 81 ed 20 58 df    	vaddpd ymm19,ymm18,ymm31
  bbcd0f:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x280],ymm19
  bbcd16:	14 
  bbcd17:	62 91 ed 20 5c cf    	vsubpd ymm1,ymm18,ymm31
  bbcd1d:	c5 fd 29 8c 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm1
  bbcd24:	00 00 
  bbcd26:	62 91 bd 20 58 ec    	vaddpd ymm5,ymm24,ymm28
  bbcd2c:	c5 fd 29 ac 24 40 01 	vmovapd YMMWORD PTR [rsp+0x140],ymm5
  bbcd33:	00 00 
  bbcd35:	62 91 bd 20 5c cc    	vsubpd ymm1,ymm24,ymm28
  bbcd3b:	c5 fd 29 8c 24 60 02 	vmovapd YMMWORD PTR [rsp+0x260],ymm1
  bbcd42:	00 00 
  bbcd44:	62 81 95 20 58 d6    	vaddpd ymm18,ymm29,ymm30
  bbcd4a:	62 e1 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x160],ymm18
  bbcd51:	0b 
  bbcd52:	62 91 95 20 5c ce    	vsubpd ymm1,ymm29,ymm30
  bbcd58:	c5 fd 29 8c 24 a0 02 	vmovapd YMMWORD PTR [rsp+0x2a0],ymm1
  bbcd5f:	00 00 
  bbcd61:	62 21 85 28 58 fc    	vaddpd ymm31,ymm15,ymm20
  bbcd67:	62 31 85 28 5c fc    	vsubpd ymm15,ymm15,ymm20
  bbcd6d:	c4 41 2d 58 e1       	vaddpd ymm12,ymm10,ymm9
  bbcd72:	c5 7d 29 64 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm12
  bbcd78:	c4 c1 2d 5c c9       	vsubpd ymm1,ymm10,ymm9
  bbcd7d:	c5 fd 29 8c 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm1
  bbcd84:	00 00 
  bbcd86:	c5 4d 58 cf          	vaddpd ymm9,ymm6,ymm7
  bbcd8a:	c5 7d 29 8c 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm9
  bbcd91:	00 00 
  bbcd93:	c5 cd 5c cf          	vsubpd ymm1,ymm6,ymm7
  bbcd97:	c5 fd 29 8c 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm1
  bbcd9e:	00 00 
  bbcda0:	62 61 bd 28 58 c2    	vaddpd ymm24,ymm8,ymm2
  bbcda6:	c5 15 5c d0          	vsubpd ymm10,ymm13,ymm0
  bbcdaa:	62 01 e5 28 58 ea    	vaddpd ymm29,ymm3,ymm26
  bbcdb0:	c5 bd 5c c2          	vsubpd ymm0,ymm8,ymm2
  bbcdb4:	c5 fd 29 84 24 80 01 	vmovapd YMMWORD PTR [rsp+0x180],ymm0
  bbcdbb:	00 00 
  bbcdbd:	62 01 a5 28 58 e3    	vaddpd ymm28,ymm11,ymm27
  bbcdc3:	62 91 e5 28 5c d2    	vsubpd ymm2,ymm3,ymm26
  bbcdc9:	c5 fd 29 94 24 a0 01 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm2
  bbcdd0:	00 00 
  bbcdd2:	62 e2 fd 28 19 25 7c 	vbroadcastsd ymm20,QWORD PTR [rip+0xffffffffff4b7c7c]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  bbcdd9:	7c 4b ff 
  bbcddc:	62 31 fd 28 28 ec    	vmovapd ymm13,ymm20
  bbcde2:	62 32 e5 20 a8 ed    	vfmadd213pd ymm13,ymm19,ymm21
  bbcde8:	c4 62 7d 19 05 27 82 	vbroadcastsd ymm8,QWORD PTR [rip+0xffffffffff4b8227]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  bbcdef:	4b ff 
  bbcdf1:	c4 42 d5 bc e8       	vfnmadd231pd ymm13,ymm5,ymm8
  bbcdf6:	62 91 a5 28 5c db    	vsubpd ymm3,ymm11,ymm27
  bbcdfc:	c4 62 7d 19 0d c3 79 	vbroadcastsd ymm9,QWORD PTR [rip+0xffffffffff4b79c3]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  bbce03:	4b ff 
  bbce05:	c5 b5 59 c0          	vmulpd ymm0,ymm9,ymm0
  bbce09:	c4 62 7d 19 25 be 7d 	vbroadcastsd ymm12,QWORD PTR [rip+0xffffffffff4b7dbe]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  bbce10:	4b ff 
  bbce12:	c4 c2 ad b8 c4       	vfmadd231pd ymm0,ymm10,ymm12
  bbce17:	c5 fd 29 84 24 20 02 	vmovapd YMMWORD PTR [rsp+0x220],ymm0
  bbce1e:	00 00 
  bbce20:	62 21 fd 28 28 dc    	vmovapd ymm27,ymm20
  bbce26:	62 22 ed 20 a8 d8    	vfmadd213pd ymm27,ymm18,ymm16
  bbce2c:	62 42 85 20 bc d8    	vfnmadd231pd ymm27,ymm31,ymm8
  bbce32:	c5 b5 59 cb          	vmulpd ymm1,ymm9,ymm3
  bbce36:	c4 c2 ed b8 cc       	vfmadd231pd ymm1,ymm2,ymm12
  bbce3b:	c5 fd 29 8c 24 e0 01 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm1
  bbce42:	00 00 
  bbce44:	c5 95 5c e8          	vsubpd ymm5,ymm13,ymm0
  bbce48:	62 f1 a5 20 5c f1    	vsubpd ymm6,ymm27,ymm1
  bbce4e:	c5 d5 5c c6          	vsubpd ymm0,ymm5,ymm6
  bbce52:	c5 fd 29 44 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  bbce58:	c5 d5 58 c6          	vaddpd ymm0,ymm5,ymm6
  bbce5c:	c5 fd 29 84 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm0
  bbce63:	00 00 
  bbce65:	c5 fd 28 84 24 20 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x120]
  bbce6c:	00 00 
  bbce6e:	62 21 fd 28 58 f6    	vaddpd ymm30,ymm0,ymm22
  bbce74:	62 a1 fd 28 5c d6    	vsubpd ymm18,ymm0,ymm22
  bbce7a:	62 81 c5 20 58 f1    	vaddpd ymm22,ymm23,ymm25
  bbce80:	62 81 c5 20 5c f9    	vsubpd ymm23,ymm23,ymm25
  bbce86:	62 b1 fd 28 28 f4    	vmovapd ymm6,ymm20
  bbce8c:	c4 c2 dd a8 f6       	vfmadd213pd ymm6,ymm4,ymm14
  bbce91:	62 d2 bd 20 bc f0    	vfnmadd231pd ymm6,ymm24,ymm8
  bbce97:	c5 fd 28 8c 24 60 02 	vmovapd ymm1,YMMWORD PTR [rsp+0x260]
  bbce9e:	00 00 
  bbcea0:	62 41 f5 28 59 d1    	vmulpd ymm26,ymm1,ymm9
  bbcea6:	c5 fd 28 ac 24 80 00 	vmovapd ymm5,YMMWORD PTR [rsp+0x80]
  bbcead:	00 00 
  bbceaf:	62 42 d5 28 b8 d4    	vfmadd231pd ymm26,ymm5,ymm12
  bbceb5:	62 b1 fd 28 28 fc    	vmovapd ymm7,ymm20
  bbcebb:	62 b2 95 20 a8 f9    	vfmadd213pd ymm7,ymm29,ymm17
  bbcec1:	62 d2 9d 20 bc f8    	vfnmadd231pd ymm7,ymm28,ymm8
  bbcec7:	62 c1 85 28 59 d9    	vmulpd ymm19,ymm15,ymm9
  bbcecd:	c5 fd 28 94 24 a0 02 	vmovapd ymm2,YMMWORD PTR [rsp+0x2a0]
  bbced4:	00 00 
  bbced6:	62 c2 ed 28 b8 dc    	vfmadd231pd ymm19,ymm2,ymm12
  bbcedc:	62 11 cd 28 58 da    	vaddpd ymm11,ymm6,ymm26
  bbcee2:	62 21 c5 28 58 cb    	vaddpd ymm25,ymm7,ymm19
  bbcee8:	62 91 a5 28 58 c1    	vaddpd ymm0,ymm11,ymm25
  bbceee:	c5 fd 29 84 24 00 02 	vmovapd YMMWORD PTR [rsp+0x200],ymm0
  bbcef5:	00 00 
  bbcef7:	62 91 a5 28 5c c1    	vsubpd ymm0,ymm11,ymm25
  bbcefd:	c5 fd 29 84 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm0
  bbcf04:	00 00 
  bbcf06:	c5 0d 58 dc          	vaddpd ymm11,ymm14,ymm4
  bbcf0a:	c4 62 bd bc f4       	vfnmadd231pd ymm14,ymm8,ymm4
  bbcf0f:	62 91 a5 28 58 c0    	vaddpd ymm0,ymm11,ymm24
  bbcf15:	c5 fd 29 84 24 c0 01 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm0
  bbcf1c:	00 00 
  bbcf1e:	62 12 dd 20 b8 f0    	vfmadd231pd ymm14,ymm20,ymm24
  bbcf24:	c5 35 59 dd          	vmulpd ymm11,ymm9,ymm5
  bbcf28:	c4 62 9d bc d9       	vfnmadd231pd ymm11,ymm12,ymm1
  bbcf2d:	62 91 f5 20 58 cd    	vaddpd ymm1,ymm17,ymm29
  bbcf33:	62 82 bd 28 bc cd    	vfnmadd231pd ymm17,ymm8,ymm29
  bbcf39:	62 91 f5 28 58 c4    	vaddpd ymm0,ymm1,ymm28
  bbcf3f:	c5 fd 29 84 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm0
  bbcf46:	00 00 
  bbcf48:	62 82 dd 20 b8 cc    	vfmadd231pd ymm17,ymm20,ymm28
  bbcf4e:	62 41 ed 28 59 c1    	vmulpd ymm24,ymm2,ymm9
  bbcf54:	62 42 9d 28 bc c7    	vfnmadd231pd ymm24,ymm12,ymm15
  bbcf5a:	62 b1 fd 28 28 e4    	vmovapd ymm4,ymm20
  bbcf60:	c5 fd 28 04 24       	vmovapd ymm0,YMMWORD PTR [rsp]
  bbcf65:	62 f2 8d 20 a8 e0    	vfmadd213pd ymm4,ymm30,ymm0
  bbcf6b:	62 91 fd 28 58 ce    	vaddpd ymm1,ymm0,ymm30
  bbcf71:	62 92 bd 28 bc c6    	vfnmadd231pd ymm0,ymm8,ymm30
  bbcf77:	62 b1 f5 28 58 ce    	vaddpd ymm1,ymm1,ymm22
  bbcf7d:	c5 fd 29 0c 24       	vmovapd YMMWORD PTR [rsp],ymm1
  bbcf82:	62 d2 cd 20 bc e0    	vfnmadd231pd ymm4,ymm22,ymm8
  bbcf88:	62 b2 dd 20 b8 c6    	vfmadd231pd ymm0,ymm20,ymm22
  bbcf8e:	62 61 fd 28 28 e8    	vmovapd ymm29,ymm0
  bbcf94:	c5 fd 28 8c 24 a0 00 	vmovapd ymm1,YMMWORD PTR [rsp+0xa0]
  bbcf9b:	00 00 
  bbcf9d:	62 41 f5 28 59 e1    	vmulpd ymm28,ymm1,ymm9
  bbcfa3:	c5 fd 28 84 24 c0 00 	vmovapd ymm0,YMMWORD PTR [rsp+0xc0]
  bbcfaa:	00 00 
  bbcfac:	62 42 fd 28 b8 e4    	vfmadd231pd ymm28,ymm0,ymm12
  bbcfb2:	c5 b5 59 e8          	vmulpd ymm5,ymm9,ymm0
  bbcfb6:	c4 e2 9d bc e9       	vfnmadd231pd ymm5,ymm12,ymm1
  bbcfbb:	c5 fd 28 84 24 80 02 	vmovapd ymm0,YMMWORD PTR [rsp+0x280]
  bbcfc2:	00 00 
  bbcfc4:	62 e1 d5 20 58 f0    	vaddpd ymm22,ymm21,ymm0
  bbcfca:	62 e2 bd 28 bc e8    	vfnmadd231pd ymm21,ymm8,ymm0
  bbcfd0:	c5 fd 28 84 24 40 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x140]
  bbcfd7:	00 00 
  bbcfd9:	62 61 cd 20 58 c8    	vaddpd ymm25,ymm22,ymm0
  bbcfdf:	62 e2 dd 20 b8 e8    	vfmadd231pd ymm21,ymm20,ymm0
  bbcfe5:	62 c1 ad 28 59 f1    	vmulpd ymm22,ymm10,ymm9
  bbcfeb:	62 e2 9d 28 bc 74 24 	vfnmadd231pd ymm22,ymm12,YMMWORD PTR [rsp+0x180]
  bbcff2:	0c 
  bbcff3:	c5 fd 28 84 24 60 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x160]
  bbcffa:	00 00 
  bbcffc:	62 71 fd 20 58 d0    	vaddpd ymm10,ymm16,ymm0
  bbd002:	62 e2 bd 28 bc c0    	vfnmadd231pd ymm16,ymm8,ymm0
  bbd008:	62 11 ad 28 58 d7    	vaddpd ymm10,ymm10,ymm31
  bbd00e:	62 82 dd 20 b8 c7    	vfmadd231pd ymm16,ymm20,ymm31
  bbd014:	62 61 b5 28 59 7c 24 	vmulpd ymm31,ymm9,YMMWORD PTR [rsp+0x1a0]
  bbd01b:	0d 
  bbd01c:	62 62 9d 28 bc fb    	vfnmadd231pd ymm31,ymm12,ymm3
  bbd022:	62 b1 d5 20 5c d6    	vsubpd ymm2,ymm21,ymm22
  bbd028:	62 91 fd 20 5c df    	vsubpd ymm3,ymm16,ymm31
  bbd02e:	c5 ed 5c c3          	vsubpd ymm0,ymm2,ymm3
  bbd032:	c5 fd 29 84 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm0
  bbd039:	00 00 
  bbd03b:	c5 ed 58 c3          	vaddpd ymm0,ymm2,ymm3
  bbd03f:	c5 fd 29 84 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm0
  bbd046:	00 00 
  bbd048:	62 b1 fd 28 28 c4    	vmovapd ymm0,ymm20
  bbd04e:	c5 fd 28 4c 24 60    	vmovapd ymm1,YMMWORD PTR [rsp+0x60]
  bbd054:	c5 fd 28 5c 24 20    	vmovapd ymm3,YMMWORD PTR [rsp+0x20]
  bbd05a:	c4 e2 e5 a8 c1       	vfmadd213pd ymm0,ymm3,ymm1
  bbd05f:	c5 e5 58 d1          	vaddpd ymm2,ymm3,ymm1
  bbd063:	c4 e2 bd bc cb       	vfnmadd231pd ymm1,ymm8,ymm3
  bbd068:	c5 fd 28 9c 24 e0 00 	vmovapd ymm3,YMMWORD PTR [rsp+0xe0]
  bbd06f:	00 00 
  bbd071:	c5 e5 58 d2          	vaddpd ymm2,ymm3,ymm2
  bbd075:	c4 c2 e5 bc c0       	vfnmadd231pd ymm0,ymm3,ymm8
  bbd07a:	62 f2 dd 20 b8 cb    	vfmadd231pd ymm1,ymm20,ymm3
  bbd080:	c5 7d 28 c1          	vmovapd ymm8,ymm1
  bbd084:	62 d1 c5 20 59 c9    	vmulpd ymm1,ymm23,ymm9
  bbd08a:	62 d2 ed 20 b8 cc    	vfmadd231pd ymm1,ymm18,ymm12
  bbd090:	62 c1 ed 20 59 d1    	vmulpd ymm18,ymm18,ymm9
  bbd096:	62 a2 9d 28 bc d7    	vfnmadd231pd ymm18,ymm12,ymm23
  bbd09c:	62 c1 8d 28 58 fb    	vaddpd ymm23,ymm14,ymm11
  bbd0a2:	62 01 f5 20 58 f0    	vaddpd ymm30,ymm17,ymm24
  bbd0a8:	62 91 c5 20 58 de    	vaddpd ymm3,ymm23,ymm30
  bbd0ae:	c5 fd 29 9c 24 80 01 	vmovapd YMMWORD PTR [rsp+0x180],ymm3
  bbd0b5:	00 00 
  bbd0b7:	62 91 c5 20 5c de    	vsubpd ymm3,ymm23,ymm30
  bbd0bd:	c5 fd 29 9c 24 a0 01 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm3
  bbd0c4:	00 00 
  bbd0c6:	62 f1 95 20 58 dd    	vaddpd ymm3,ymm29,ymm5
  bbd0cc:	c5 fd 29 9c 24 60 01 	vmovapd YMMWORD PTR [rsp+0x160],ymm3
  bbd0d3:	00 00 
  bbd0d5:	62 e1 95 20 5c fd    	vsubpd ymm23,ymm29,ymm5
  bbd0db:	62 41 8d 28 5c eb    	vsubpd ymm29,ymm14,ymm11
  bbd0e1:	62 11 f5 20 5c d8    	vsubpd ymm11,ymm17,ymm24
  bbd0e7:	62 b1 bd 28 5c ea    	vsubpd ymm5,ymm8,ymm18
  bbd0ed:	c5 fd 29 ac 24 40 01 	vmovapd YMMWORD PTR [rsp+0x140],ymm5
  bbd0f4:	00 00 
  bbd0f6:	62 c1 ed 20 58 c8    	vaddpd ymm17,ymm18,ymm8
  bbd0fc:	62 a1 d5 20 58 ee    	vaddpd ymm21,ymm21,ymm22
  bbd102:	62 11 fd 20 58 f7    	vaddpd ymm14,ymm16,ymm31
  bbd108:	62 91 cd 28 5c f2    	vsubpd ymm6,ymm6,ymm26
  bbd10e:	62 b1 c5 28 5c fb    	vsubpd ymm7,ymm7,ymm19
  bbd114:	62 11 dd 28 58 cc    	vaddpd ymm9,ymm4,ymm28
  bbd11a:	62 11 dd 28 5c fc    	vsubpd ymm15,ymm4,ymm28
  bbd120:	62 e1 95 28 58 54 24 	vaddpd ymm18,ymm13,YMMWORD PTR [rsp+0x220]
  bbd127:	11 
  bbd128:	c5 fd 28 9c 24 c0 01 	vmovapd ymm3,YMMWORD PTR [rsp+0x1c0]
  bbd12f:	00 00 
  bbd131:	c5 fd 28 a4 24 80 00 	vmovapd ymm4,YMMWORD PTR [rsp+0x80]
  bbd138:	00 00 
  bbd13a:	c5 65 58 c4          	vaddpd ymm8,ymm3,ymm4
  bbd13e:	62 71 a5 20 58 64 24 	vaddpd ymm12,ymm27,YMMWORD PTR [rsp+0x1e0]
  bbd145:	0f 
  bbd146:	62 51 ed 20 5c ec    	vsubpd ymm13,ymm18,ymm12
  bbd14c:	c5 7d 29 6c 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm13
  bbd152:	62 51 ed 20 58 e4    	vaddpd ymm12,ymm18,ymm12
  bbd158:	62 e1 fd 28 5c d1    	vsubpd ymm18,ymm0,ymm1
  bbd15e:	c5 f5 58 c0          	vaddpd ymm0,ymm1,ymm0
  bbd162:	62 e1 cd 28 58 e7    	vaddpd ymm20,ymm6,ymm7
  bbd168:	c5 cd 5c cf          	vsubpd ymm1,ymm6,ymm7
  bbd16c:	c5 fd 29 8c 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm1
  bbd173:	00 00 
  bbd175:	c5 fd 28 0c 24       	vmovapd ymm1,YMMWORD PTR [rsp]
  bbd17a:	c5 bd 58 f1          	vaddpd ymm6,ymm8,ymm1
  bbd17e:	c5 fd 29 b4 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm6
  bbd185:	00 00 
  bbd187:	c4 62 7d 19 2d 08 79 	vbroadcastsd ymm13,QWORD PTR [rip+0xffffffffff4b7908]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  bbd18e:	4b ff 
  bbd190:	c4 62 95 ac c1       	vfnmadd213pd ymm8,ymm13,ymm1
  bbd195:	62 d1 b5 20 58 fa    	vaddpd ymm7,ymm25,ymm10
  bbd19b:	62 41 b5 20 5c da    	vsubpd ymm27,ymm25,ymm10
  bbd1a1:	c5 6d 58 d7          	vaddpd ymm10,ymm2,ymm7
  bbd1a5:	c4 e2 95 ac fa       	vfnmadd213pd ymm7,ymm13,ymm2
  bbd1aa:	c5 7d 29 ea          	vmovapd ymm2,ymm13
  bbd1ae:	c5 fd 28 8c 24 00 02 	vmovapd ymm1,YMMWORD PTR [rsp+0x200]
  bbd1b5:	00 00 
  bbd1b7:	c4 c2 f5 ac d1       	vfnmadd213pd ymm2,ymm1,ymm9
  bbd1bc:	c5 e5 5c f4          	vsubpd ymm6,ymm3,ymm4
  bbd1c0:	62 c1 fd 28 28 f5    	vmovapd ymm22,ymm13
  bbd1c6:	62 61 fd 28 28 44 24 	vmovapd ymm24,YMMWORD PTR [rsp+0x100]
  bbd1cd:	08 
  bbd1ce:	62 a2 bd 20 ac f2    	vfnmadd213pd ymm22,ymm24,ymm18
  bbd1d4:	c5 b5 58 c9          	vaddpd ymm1,ymm9,ymm1
  bbd1d8:	c5 fd 29 4c 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm1
  bbd1de:	c4 41 7d 28 cd       	vmovapd ymm9,ymm13
  bbd1e3:	62 61 fd 28 28 74 24 	vmovapd ymm30,YMMWORD PTR [rsp+0x180]
  bbd1ea:	0c 
  bbd1eb:	c5 fd 28 9c 24 60 01 	vmovapd ymm3,YMMWORD PTR [rsp+0x160]
  bbd1f2:	00 00 
  bbd1f4:	62 72 8d 20 ac cb    	vfnmadd213pd ymm9,ymm30,ymm3
  bbd1fa:	62 62 fd 28 19 3d 1c 	vbroadcastsd ymm31,QWORD PTR [rip+0xffffffffff4b7a1c]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  bbd201:	7a 4b ff 
  bbd204:	62 e1 85 20 59 5c 24 	vmulpd ymm19,ymm31,YMMWORD PTR [rsp+0xa0]
  bbd20b:	05 
  bbd20c:	62 91 ed 20 58 c8    	vaddpd ymm1,ymm18,ymm24
  bbd212:	c5 fd 29 0c 24       	vmovapd YMMWORD PTR [rsp],ymm1
  bbd217:	62 b1 b5 28 5c cb    	vsubpd ymm1,ymm9,ymm19
  bbd21d:	c5 fd 29 8c 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm1
  bbd224:	00 00 
  bbd226:	62 b1 b5 28 58 cb    	vaddpd ymm1,ymm9,ymm19
  bbd22c:	c5 fd 29 8c 24 20 02 	vmovapd YMMWORD PTR [rsp+0x220],ymm1
  bbd233:	00 00 
  bbd235:	c4 41 7d 28 cd       	vmovapd ymm9,ymm13
  bbd23a:	c5 fd 28 8c 24 c0 00 	vmovapd ymm1,YMMWORD PTR [rsp+0xc0]
  bbd241:	00 00 
  bbd243:	c4 62 f5 ac cd       	vfnmadd213pd ymm9,ymm1,ymm5
  bbd248:	62 e1 85 20 59 54 24 	vmulpd ymm18,ymm31,YMMWORD PTR [rsp+0x1a0]
  bbd24f:	0d 
  bbd250:	62 21 b5 28 58 d2    	vaddpd ymm26,ymm9,ymm18
  bbd256:	62 b1 b5 28 5c e2    	vsubpd ymm4,ymm9,ymm18
  bbd25c:	c5 fd 29 a4 24 00 02 	vmovapd YMMWORD PTR [rsp+0x200],ymm4
  bbd263:	00 00 
  bbd265:	62 91 fd 28 28 e5    	vmovapd ymm4,ymm29
  bbd26b:	62 41 95 20 58 c3    	vaddpd ymm24,ymm29,ymm11
  bbd271:	62 91 c5 20 58 e8    	vaddpd ymm5,ymm23,ymm24
  bbd277:	62 22 95 28 ac c7    	vfnmadd213pd ymm24,ymm13,ymm23
  bbd27d:	62 41 d5 20 58 ce    	vaddpd ymm25,ymm21,ymm14
  bbd283:	62 51 d5 20 5c f6    	vsubpd ymm14,ymm21,ymm14
  bbd289:	62 01 f5 20 58 e9    	vaddpd ymm29,ymm17,ymm25
  bbd28f:	62 22 95 28 ac c9    	vfnmadd213pd ymm25,ymm13,ymm17
  bbd295:	c4 c1 5d 5c e3       	vsubpd ymm4,ymm4,ymm11
  bbd29a:	62 41 fd 28 28 e5    	vmovapd ymm28,ymm13
  bbd2a0:	62 42 dd 20 ac e7    	vfnmadd213pd ymm28,ymm20,ymm15
  bbd2a6:	62 31 85 28 58 cc    	vaddpd ymm9,ymm15,ymm20
  bbd2ac:	c5 7d 29 8c 24 e0 01 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm9
  bbd2b3:	00 00 
  bbd2b5:	62 c1 fd 28 28 e5    	vmovapd ymm20,ymm13
  bbd2bb:	62 e2 9d 28 ac e0    	vfnmadd213pd ymm20,ymm12,ymm0
  bbd2c1:	c5 1d 58 f8          	vaddpd ymm15,ymm12,ymm0
  bbd2c5:	62 91 a5 20 59 c7    	vmulpd ymm0,ymm27,ymm31
  bbd2cb:	62 e1 bd 28 5c f8    	vsubpd ymm23,ymm8,ymm0
  bbd2d1:	62 e1 bd 28 58 c0    	vaddpd ymm16,ymm8,ymm0
  bbd2d7:	62 91 cd 28 59 c7    	vmulpd ymm0,ymm6,ymm31
  bbd2dd:	c5 45 58 e8          	vaddpd ymm13,ymm7,ymm0
  bbd2e1:	62 e1 c5 28 5c c8    	vsubpd ymm17,ymm7,ymm0
  bbd2e7:	62 f1 85 20 59 44 24 	vmulpd ymm0,ymm31,YMMWORD PTR [rsp+0x40]
  bbd2ee:	02 
  bbd2ef:	62 e1 ed 28 58 d8    	vaddpd ymm19,ymm2,ymm0
  bbd2f5:	c5 6d 5c c8          	vsubpd ymm9,ymm2,ymm0
  bbd2f9:	62 f1 85 20 59 44 24 	vmulpd ymm0,ymm31,YMMWORD PTR [rsp+0x240]
  bbd300:	12 
  bbd301:	62 e1 cd 20 5c d0    	vsubpd ymm18,ymm22,ymm0
  bbd307:	62 61 cd 20 58 d8    	vaddpd ymm27,ymm22,ymm0
  bbd30d:	62 f1 85 20 59 7c 24 	vmulpd ymm7,ymm31,YMMWORD PTR [rsp+0x20]
  bbd314:	01 
  bbd315:	62 91 e5 28 58 d6    	vaddpd ymm2,ymm3,ymm30
  bbd31b:	c5 fd 29 54 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm2
  bbd321:	62 e1 9d 20 58 ef    	vaddpd ymm21,ymm28,ymm7
  bbd327:	62 f1 85 20 59 5c 24 	vmulpd ymm3,ymm31,YMMWORD PTR [rsp+0xe0]
  bbd32e:	07 
  bbd32f:	62 91 8d 28 59 f7    	vmulpd ymm6,ymm14,ymm31
  bbd335:	c5 75 58 9c 24 40 01 	vaddpd ymm11,ymm1,YMMWORD PTR [rsp+0x140]
  bbd33c:	00 00 
  bbd33e:	62 f1 bd 20 5c ce    	vsubpd ymm1,ymm24,ymm6
  bbd344:	62 11 dd 28 59 c7    	vmulpd ymm8,ymm4,ymm31
  bbd34a:	62 61 bd 20 58 fe    	vaddpd ymm31,ymm24,ymm6
  bbd350:	62 d1 b5 20 58 e0    	vaddpd ymm4,ymm25,ymm8
  bbd356:	62 41 b5 20 5c f0    	vsubpd ymm30,ymm25,ymm8
  bbd35c:	62 e1 dd 20 5c f3    	vsubpd ymm22,ymm20,ymm3
  bbd362:	62 61 9d 20 5c cf    	vsubpd ymm25,ymm28,ymm7
  bbd368:	62 e1 dd 20 58 e3    	vaddpd ymm20,ymm20,ymm3
  bbd36e:	c5 fd 28 9c 24 20 01 	vmovapd ymm3,YMMWORD PTR [rsp+0x120]
  bbd375:	00 00 
  bbd377:	c5 fd 29 19          	vmovapd YMMWORD PTR [rcx],ymm3
  bbd37b:	c5 7d 29 10          	vmovapd YMMWORD PTR [rax],ymm10
  bbd37f:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x2e0],ymm19
  bbd386:	17 
  bbd387:	62 e1 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x4e0],ymm18
  bbd38e:	27 
  bbd38f:	c5 7d 28 84 24 00 01 	vmovapd ymm8,YMMWORD PTR [rsp+0x100]
  bbd396:	00 00 
  bbd398:	c5 7d 29 84 24 00 03 	vmovapd YMMWORD PTR [rsp+0x300],ymm8
  bbd39f:	00 00 
  bbd3a1:	62 01 fd 28 28 c2    	vmovapd ymm24,ymm26
  bbd3a7:	62 61 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x500],ymm26
  bbd3ae:	28 
  bbd3af:	c5 fd 29 ac 24 20 03 	vmovapd YMMWORD PTR [rsp+0x320],ymm5
  bbd3b6:	00 00 
  bbd3b8:	62 61 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x520],ymm29
  bbd3bf:	29 
  bbd3c0:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x340],ymm21
  bbd3c7:	1a 
  bbd3c8:	62 e1 fd 28 29 74 24 	vmovapd YMMWORD PTR [rsp+0x540],ymm22
  bbd3cf:	2a 
  bbd3d0:	62 e1 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x360],ymm23
  bbd3d7:	1b 
  bbd3d8:	c5 7d 29 ac 24 60 05 	vmovapd YMMWORD PTR [rsp+0x560],ymm13
  bbd3df:	00 00 
  bbd3e1:	c5 fd 28 74 24 60    	vmovapd ymm6,YMMWORD PTR [rsp+0x60]
  bbd3e7:	c5 fd 29 b4 24 80 03 	vmovapd YMMWORD PTR [rsp+0x380],ymm6
  bbd3ee:	00 00 
  bbd3f0:	c5 7d 28 24 24       	vmovapd ymm12,YMMWORD PTR [rsp]
  bbd3f5:	c5 7d 29 a4 24 80 05 	vmovapd YMMWORD PTR [rsp+0x580],ymm12
  bbd3fc:	00 00 
  bbd3fe:	c5 7d 28 b4 24 20 02 	vmovapd ymm14,YMMWORD PTR [rsp+0x220]
  bbd405:	00 00 
  bbd407:	c5 7d 29 b4 24 a0 03 	vmovapd YMMWORD PTR [rsp+0x3a0],ymm14
  bbd40e:	00 00 
  bbd410:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x200]
  bbd417:	10 
  bbd418:	62 61 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x5a0],ymm26
  bbd41f:	2d 
  bbd420:	c5 fd 29 8c 24 c0 03 	vmovapd YMMWORD PTR [rsp+0x3c0],ymm1
  bbd427:	00 00 
  bbd429:	c5 fd 29 a4 24 c0 05 	vmovapd YMMWORD PTR [rsp+0x5c0],ymm4
  bbd430:	00 00 
  bbd432:	c5 fd 28 84 24 e0 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x1e0]
  bbd439:	00 00 
  bbd43b:	c5 fd 29 84 24 e0 03 	vmovapd YMMWORD PTR [rsp+0x3e0],ymm0
  bbd442:	00 00 
  bbd444:	c5 7d 29 bc 24 e0 05 	vmovapd YMMWORD PTR [rsp+0x5e0],ymm15
  bbd44b:	00 00 
  bbd44d:	62 e1 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x400],ymm16
  bbd454:	20 
  bbd455:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x600],ymm17
  bbd45c:	30 
  bbd45d:	c5 7d 29 8c 24 20 04 	vmovapd YMMWORD PTR [rsp+0x420],ymm9
  bbd464:	00 00 
  bbd466:	62 61 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x620],ymm27
  bbd46d:	31 
  bbd46e:	c5 fd 29 94 24 40 04 	vmovapd YMMWORD PTR [rsp+0x440],ymm2
  bbd475:	00 00 
  bbd477:	c5 7d 29 9c 24 40 06 	vmovapd YMMWORD PTR [rsp+0x640],ymm11
  bbd47e:	00 00 
  bbd480:	62 61 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x460],ymm31
  bbd487:	23 
  bbd488:	62 61 fd 28 29 74 24 	vmovapd YMMWORD PTR [rsp+0x660],ymm30
  bbd48f:	33 
  bbd490:	62 61 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x480],ymm25
  bbd497:	24 
  bbd498:	62 e1 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x680],ymm20
  bbd49f:	34 
  bbd4a0:	c5 7d 29 94 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm10
  bbd4a7:	00 00 
  bbd4a9:	c5 fd 28 15 af 96 4b 	vmovapd ymm2,YMMWORD PTR [rip+0xffffffffff4b96af]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  bbd4b0:	ff 
  bbd4b1:	62 72 ed 28 7f d3    	vpermt2pd ymm10,ymm2,ymm3
  bbd4b7:	62 21 fd 28 28 e2    	vmovapd ymm28,ymm18
  bbd4bd:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x260],ymm19
  bbd4c4:	13 
  bbd4c5:	62 22 ed 28 7f e3    	vpermt2pd ymm28,ymm2,ymm19
  bbd4cb:	62 61 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm24
  bbd4d2:	0e 
  bbd4d3:	62 42 ed 28 7f c0    	vpermt2pd ymm24,ymm2,ymm8
  bbd4d9:	62 61 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x80],ymm29
  bbd4e0:	04 
  bbd4e1:	62 91 fd 28 28 fd    	vmovapd ymm7,ymm29
  bbd4e7:	62 f2 ed 28 7f fd    	vpermt2pd ymm7,ymm2,ymm5
  bbd4ed:	62 21 fd 28 28 ee    	vmovapd ymm29,ymm22
  bbd4f3:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x280],ymm21
  bbd4fa:	14 
  bbd4fb:	62 22 ed 28 7f ed    	vpermt2pd ymm29,ymm2,ymm21
  bbd501:	c5 7d 29 ac 24 80 01 	vmovapd YMMWORD PTR [rsp+0x180],ymm13
  bbd508:	00 00 
  bbd50a:	c4 41 7d 28 c5       	vmovapd ymm8,ymm13
  bbd50f:	62 e1 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm23
  bbd516:	0d 
  bbd517:	62 32 ed 28 7f c7    	vpermt2pd ymm8,ymm2,ymm23
  bbd51d:	62 72 ed 28 7f e6    	vpermt2pd ymm12,ymm2,ymm6
  bbd523:	62 c1 fd 28 28 ee    	vmovapd ymm21,ymm14
  bbd529:	62 11 fd 28 28 f2    	vmovapd ymm14,ymm26
  bbd52f:	62 32 ed 28 7f f5    	vpermt2pd ymm14,ymm2,ymm21
  bbd535:	c5 fd 28 dc          	vmovapd ymm3,ymm4
  bbd539:	c5 fd 29 8c 24 60 01 	vmovapd YMMWORD PTR [rsp+0x160],ymm1
  bbd540:	00 00 
  bbd542:	62 f2 ed 28 7f d9    	vpermt2pd ymm3,ymm2,ymm1
  bbd548:	c5 7d 29 7c 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm15
  bbd54e:	c5 7d 28 e8          	vmovapd ymm13,ymm0
  bbd552:	62 72 ed 28 7f f8    	vpermt2pd ymm15,ymm2,ymm0
  bbd558:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0xe0],ymm17
  bbd55f:	07 
  bbd560:	62 e1 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x140],ymm16
  bbd567:	0a 
  bbd568:	62 a2 ed 28 7f c8    	vpermt2pd ymm17,ymm2,ymm16
  bbd56e:	62 61 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0xa0],ymm27
  bbd575:	05 
  bbd576:	62 91 fd 28 28 f3    	vmovapd ymm6,ymm27
  bbd57c:	62 01 fd 28 28 d9    	vmovapd ymm27,ymm25
  bbd582:	62 01 fd 28 28 ce    	vmovapd ymm25,ymm30
  bbd588:	62 a1 fd 28 28 dc    	vmovapd ymm19,ymm20
  bbd58e:	c5 7d 29 8c 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm9
  bbd595:	00 00 
  bbd597:	62 d2 ed 28 7f f1    	vpermt2pd ymm6,ymm2,ymm9
  bbd59d:	62 81 fd 28 28 c7    	vmovapd ymm16,ymm31
  bbd5a3:	c5 fd 28 44 24 40    	vmovapd ymm0,YMMWORD PTR [rsp+0x40]
  bbd5a9:	62 c1 fd 28 28 e3    	vmovapd ymm20,ymm11
  bbd5af:	62 e2 ed 28 7f e0    	vpermt2pd ymm20,ymm2,ymm0
  bbd5b5:	62 01 fd 28 28 fe    	vmovapd ymm31,ymm30
  bbd5bb:	62 22 ed 28 7f f8    	vpermt2pd ymm31,ymm2,ymm16
  bbd5c1:	62 21 fd 28 28 f3    	vmovapd ymm30,ymm19
  bbd5c7:	62 02 ed 28 7f f3    	vpermt2pd ymm30,ymm2,ymm27
  bbd5cd:	49 83 fb 0b          	cmp    r11,0xb
  bbd5d1:	0f 82 49 f0 ff ff    	jb     bbc620 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xee0>
  bbd5d7:	c4 21 7d 11 14 0e    	vmovupd YMMWORD PTR [rsi+r9*1],ymm10
  bbd5dd:	62 21 fd 28 11 64 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xe0],ymm28
  bbd5e4:	07 
  bbd5e5:	62 21 fd 28 11 44 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x1c0],ymm24
  bbd5ec:	0e 
  bbd5ed:	c4 a1 7d 11 bc 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x2a0],ymm7
  bbd5f4:	02 00 00 
  bbd5f7:	62 21 fd 28 11 6c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x380],ymm29
  bbd5fe:	1c 
  bbd5ff:	c4 21 7d 11 84 0e 60 	vmovupd YMMWORD PTR [rsi+r9*1+0x460],ymm8
  bbd606:	04 00 00 
  bbd609:	c4 21 7d 11 a4 0e 40 	vmovupd YMMWORD PTR [rsi+r9*1+0x540],ymm12
  bbd610:	05 00 00 
  bbd613:	c4 21 7d 11 b4 0e 20 	vmovupd YMMWORD PTR [rsi+r9*1+0x620],ymm14
  bbd61a:	06 00 00 
  bbd61d:	c4 a1 7d 11 9c 0e 00 	vmovupd YMMWORD PTR [rsi+r9*1+0x700],ymm3
  bbd624:	07 00 00 
  bbd627:	c4 21 7d 11 bc 0e e0 	vmovupd YMMWORD PTR [rsi+r9*1+0x7e0],ymm15
  bbd62e:	07 00 00 
  bbd631:	62 a1 fd 28 11 4c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x8c0],ymm17
  bbd638:	46 
  bbd639:	c4 a1 7d 11 b4 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x9a0],ymm6
  bbd640:	09 00 00 
  bbd643:	62 a1 fd 28 11 64 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xa80],ymm20
  bbd64a:	54 
  bbd64b:	62 21 fd 28 11 7c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xb60],ymm31
  bbd652:	5b 
  bbd653:	62 21 fd 28 11 74 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xc40],ymm30
  bbd65a:	62 
  bbd65b:	e9 86 f1 ff ff       	jmp    bbc7e6 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x10a6>
  bbd660:	48 8d 65 f0          	lea    rsp,[rbp-0x10]
  bbd664:	5b                   	pop    rbx
  bbd665:	41 5e                	pop    r14
  bbd667:	5d                   	pop    rbp
  bbd668:	c5 f8 77             	vzeroupper
  bbd66b:	c3                   	ret
