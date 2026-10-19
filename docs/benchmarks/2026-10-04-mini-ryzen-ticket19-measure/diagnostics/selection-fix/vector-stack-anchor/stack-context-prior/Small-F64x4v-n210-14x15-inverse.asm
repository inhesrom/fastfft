
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000bb7540 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  bb7540:	55                   	push   rbp
  bb7541:	48 89 e5             	mov    rbp,rsp
  bb7544:	41 56                	push   r14
  bb7546:	53                   	push   rbx
  bb7547:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  bb754b:	48 81 ec c0 0f 00 00 	sub    rsp,0xfc0
  bb7552:	48 c7 04 24 00 00 00 	mov    QWORD PTR [rsp],0x0
  bb7559:	00 
  bb755a:	48 81 ec 80 0b 00 00 	sub    rsp,0xb80
  bb7561:	48 8d 84 24 c0 04 00 	lea    rax,[rsp+0x4c0]
  bb7568:	00 
  bb7569:	48 8d 8c 24 c0 02 00 	lea    rcx,[rsp+0x2c0]
  bb7570:	00 
  bb7571:	c6 84 24 c0 0a 00 00 	mov    BYTE PTR [rsp+0xac0],0x0
  bb7578:	00 
  bb7579:	4c 8d 84 24 c0 0a 00 	lea    r8,[rsp+0xac0]
  bb7580:	00 
  bb7581:	4c 89 84 24 00 0b 00 	mov    QWORD PTR [rsp+0xb00],r8
  bb7588:	00 
  bb7589:	4c 8d 84 24 00 0b 00 	lea    r8,[rsp+0xb00]
  bb7590:	00 
  bb7591:	4c 8d 84 24 60 0e 00 	lea    r8,[rsp+0xe60]
  bb7598:	00 
  bb7599:	48 81 c7 50 0c 00 00 	add    rdi,0xc50
  bb75a0:	45 31 c9             	xor    r9d,r9d
  bb75a3:	eb 24                	jmp    bb75c9 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x89>
  bb75a5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  bb75ac:	00 00 00 00 
  bb75b0:	49 83 c1 04          	add    r9,0x4
  bb75b4:	49 81 c0 80 03 00 00 	add    r8,0x380
  bb75bb:	48 83 c7 40          	add    rdi,0x40
  bb75bf:	49 83 f9 10          	cmp    r9,0x10
  bb75c3:	0f 84 24 0e 00 00    	je     bb83ed <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xead>
  bb75c9:	49 83 f9 0c          	cmp    r9,0xc
  bb75cd:	0f 83 2d 02 00 00    	jae    bb7800 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x2c0>
  bb75d3:	c5 fd 10 87 b0 f3 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0xc50]
  bb75da:	ff 
  bb75db:	c5 fd 10 8f d0 f3 ff 	vmovupd ymm1,YMMWORD PTR [rdi-0xc30]
  bb75e2:	ff 
  bb75e3:	c5 fd 10 97 a0 f4 ff 	vmovupd ymm2,YMMWORD PTR [rdi-0xb60]
  bb75ea:	ff 
  bb75eb:	c5 fd 10 9f c0 f4 ff 	vmovupd ymm3,YMMWORD PTR [rdi-0xb40]
  bb75f2:	ff 
  bb75f3:	c4 e3 7d 06 e1 31    	vperm2f128 ymm4,ymm0,ymm1,0x31
  bb75f9:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb75ff:	c5 fd 14 cc          	vunpcklpd ymm1,ymm0,ymm4
  bb7603:	c5 fd 29 4c 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm1
  bb7609:	c5 7d 15 dc          	vunpckhpd ymm11,ymm0,ymm4
  bb760d:	c4 e3 6d 06 c3 31    	vperm2f128 ymm0,ymm2,ymm3,0x31
  bb7613:	c4 e3 6d 06 cb 20    	vperm2f128 ymm1,ymm2,ymm3,0x20
  bb7619:	62 61 f5 28 14 d0    	vunpcklpd ymm26,ymm1,ymm0
  bb761f:	c5 f5 15 c0          	vunpckhpd ymm0,ymm1,ymm0
  bb7623:	c5 fd 29 84 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm0
  bb762a:	00 00 
  bb762c:	c5 fd 10 87 90 f5 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0xa70]
  bb7633:	ff 
  bb7634:	c5 fd 10 8f b0 f5 ff 	vmovupd ymm1,YMMWORD PTR [rdi-0xa50]
  bb763b:	ff 
  bb763c:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb7642:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb7648:	c5 7d 14 d2          	vunpcklpd ymm10,ymm0,ymm2
  bb764c:	62 e1 fd 28 15 c2    	vunpckhpd ymm16,ymm0,ymm2
  bb7652:	c5 fd 10 87 80 f6 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x980]
  bb7659:	ff 
  bb765a:	c5 fd 10 8f a0 f6 ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x960]
  bb7661:	ff 
  bb7662:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb7668:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb766e:	62 61 fd 28 14 f2    	vunpcklpd ymm30,ymm0,ymm2
  bb7674:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  bb7678:	c5 fd 29 84 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm0
  bb767f:	00 00 
  bb7681:	c5 fd 10 87 70 f7 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x890]
  bb7688:	ff 
  bb7689:	c5 fd 10 8f 90 f7 ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x870]
  bb7690:	ff 
  bb7691:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb7697:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb769d:	c5 fd 14 ea          	vunpcklpd ymm5,ymm0,ymm2
  bb76a1:	62 e1 fd 28 15 ea    	vunpckhpd ymm21,ymm0,ymm2
  bb76a7:	c5 fd 10 87 60 f8 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x7a0]
  bb76ae:	ff 
  bb76af:	c5 fd 10 8f 80 f8 ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x780]
  bb76b6:	ff 
  bb76b7:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb76bd:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb76c3:	62 e1 fd 28 14 e2    	vunpcklpd ymm20,ymm0,ymm2
  bb76c9:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  bb76cd:	c5 fd 29 44 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  bb76d3:	c5 fd 10 87 50 f9 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x6b0]
  bb76da:	ff 
  bb76db:	c5 fd 10 8f 70 f9 ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x690]
  bb76e2:	ff 
  bb76e3:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb76e9:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb76ef:	62 e1 fd 28 14 da    	vunpcklpd ymm19,ymm0,ymm2
  bb76f5:	62 61 fd 28 15 c2    	vunpckhpd ymm24,ymm0,ymm2
  bb76fb:	c5 fd 10 87 40 fa ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x5c0]
  bb7702:	ff 
  bb7703:	c5 fd 10 8f 60 fa ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x5a0]
  bb770a:	ff 
  bb770b:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb7711:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb7717:	c5 fd 14 ca          	vunpcklpd ymm1,ymm0,ymm2
  bb771b:	c5 fd 29 0c 24       	vmovapd YMMWORD PTR [rsp],ymm1
  bb7720:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  bb7724:	c5 fd 29 44 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm0
  bb772a:	c5 fd 10 87 30 fb ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x4d0]
  bb7731:	ff 
  bb7732:	c5 fd 10 8f 50 fb ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x4b0]
  bb7739:	ff 
  bb773a:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb7740:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb7746:	c5 7d 14 c2          	vunpcklpd ymm8,ymm0,ymm2
  bb774a:	c5 7d 15 f2          	vunpckhpd ymm14,ymm0,ymm2
  bb774e:	c5 fd 10 87 20 fc ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x3e0]
  bb7755:	ff 
  bb7756:	c5 fd 10 8f 40 fc ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x3c0]
  bb775d:	ff 
  bb775e:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb7764:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb776a:	c5 7d 14 ca          	vunpcklpd ymm9,ymm0,ymm2
  bb776e:	62 e1 fd 28 15 fa    	vunpckhpd ymm23,ymm0,ymm2
  bb7774:	c5 fd 10 87 10 fd ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x2f0]
  bb777b:	ff 
  bb777c:	c5 fd 10 8f 30 fd ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x2d0]
  bb7783:	ff 
  bb7784:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb778a:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb7790:	c5 fd 14 fa          	vunpcklpd ymm7,ymm0,ymm2
  bb7794:	c5 7d 15 ea          	vunpckhpd ymm13,ymm0,ymm2
  bb7798:	c5 fd 10 87 00 fe ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x200]
  bb779f:	ff 
  bb77a0:	c5 fd 10 8f 20 fe ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x1e0]
  bb77a7:	ff 
  bb77a8:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb77ae:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb77b4:	c5 fd 14 f2          	vunpcklpd ymm6,ymm0,ymm2
  bb77b8:	62 e1 fd 28 15 ca    	vunpckhpd ymm17,ymm0,ymm2
  bb77be:	c5 fd 10 87 f0 fe ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x110]
  bb77c5:	ff 
  bb77c6:	c5 fd 10 8f 10 ff ff 	vmovupd ymm1,YMMWORD PTR [rdi-0xf0]
  bb77cd:	ff 
  bb77ce:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb77d4:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb77da:	c5 fd 14 ca          	vunpcklpd ymm1,ymm0,ymm2
  bb77de:	c5 7d 15 fa          	vunpckhpd ymm15,ymm0,ymm2
  bb77e2:	c5 fd 10 47 e0       	vmovupd ymm0,YMMWORD PTR [rdi-0x20]
  bb77e7:	c5 fd 10 17          	vmovupd ymm2,YMMWORD PTR [rdi]
  bb77eb:	c4 e3 7d 06 da 31    	vperm2f128 ymm3,ymm0,ymm2,0x31
  bb77f1:	c4 e3 7d 06 d2 20    	vperm2f128 ymm2,ymm0,ymm2,0x20
  bb77f7:	e9 41 02 00 00       	jmp    bb7a3d <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x4fd>
  bb77fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  bb7800:	c5 fd 10 87 b0 f3 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0xc50]
  bb7807:	ff 
  bb7808:	c5 f9 10 8f d0 f3 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xc30]
  bb780f:	ff 
  bb7810:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb7816:	c5 f9 10 8f c0 f3 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xc40]
  bb781d:	ff 
  bb781e:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  bb7822:	c5 fd 29 54 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm2
  bb7828:	c5 7d 15 d9          	vunpckhpd ymm11,ymm0,ymm1
  bb782c:	c5 fd 10 87 a0 f4 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0xb60]
  bb7833:	ff 
  bb7834:	c5 f9 10 8f c0 f4 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xb40]
  bb783b:	ff 
  bb783c:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb7842:	c5 f9 10 8f b0 f4 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xb50]
  bb7849:	ff 
  bb784a:	62 61 fd 28 14 d1    	vunpcklpd ymm26,ymm0,ymm1
  bb7850:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  bb7854:	c5 fd 29 84 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm0
  bb785b:	00 00 
  bb785d:	c5 fd 10 87 90 f5 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0xa70]
  bb7864:	ff 
  bb7865:	c5 f9 10 8f b0 f5 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xa50]
  bb786c:	ff 
  bb786d:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb7873:	c5 f9 10 8f a0 f5 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xa60]
  bb787a:	ff 
  bb787b:	c5 7d 14 d1          	vunpcklpd ymm10,ymm0,ymm1
  bb787f:	62 e1 fd 28 15 c1    	vunpckhpd ymm16,ymm0,ymm1
  bb7885:	c5 fd 10 87 80 f6 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x980]
  bb788c:	ff 
  bb788d:	c5 f9 10 8f a0 f6 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x960]
  bb7894:	ff 
  bb7895:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb789b:	c5 f9 10 8f 90 f6 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x970]
  bb78a2:	ff 
  bb78a3:	62 61 fd 28 14 f1    	vunpcklpd ymm30,ymm0,ymm1
  bb78a9:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  bb78ad:	c5 fd 29 84 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm0
  bb78b4:	00 00 
  bb78b6:	c5 fd 10 87 70 f7 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x890]
  bb78bd:	ff 
  bb78be:	c5 f9 10 8f 90 f7 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x870]
  bb78c5:	ff 
  bb78c6:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb78cc:	c5 f9 10 8f 80 f7 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x880]
  bb78d3:	ff 
  bb78d4:	c5 fd 14 e9          	vunpcklpd ymm5,ymm0,ymm1
  bb78d8:	62 e1 fd 28 15 e9    	vunpckhpd ymm21,ymm0,ymm1
  bb78de:	c5 fd 10 87 60 f8 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x7a0]
  bb78e5:	ff 
  bb78e6:	c5 f9 10 8f 80 f8 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x780]
  bb78ed:	ff 
  bb78ee:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb78f4:	c5 f9 10 8f 70 f8 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x790]
  bb78fb:	ff 
  bb78fc:	62 e1 fd 28 14 e1    	vunpcklpd ymm20,ymm0,ymm1
  bb7902:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  bb7906:	c5 fd 29 44 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  bb790c:	c5 fd 10 87 50 f9 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x6b0]
  bb7913:	ff 
  bb7914:	c5 f9 10 8f 70 f9 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x690]
  bb791b:	ff 
  bb791c:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb7922:	c5 f9 10 8f 60 f9 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x6a0]
  bb7929:	ff 
  bb792a:	62 e1 fd 28 14 d9    	vunpcklpd ymm19,ymm0,ymm1
  bb7930:	62 61 fd 28 15 c1    	vunpckhpd ymm24,ymm0,ymm1
  bb7936:	c5 fd 10 87 40 fa ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x5c0]
  bb793d:	ff 
  bb793e:	c5 f9 10 8f 60 fa ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x5a0]
  bb7945:	ff 
  bb7946:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb794c:	c5 f9 10 8f 50 fa ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x5b0]
  bb7953:	ff 
  bb7954:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  bb7958:	c5 fd 29 14 24       	vmovapd YMMWORD PTR [rsp],ymm2
  bb795d:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  bb7961:	c5 fd 29 44 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm0
  bb7967:	c5 fd 10 87 30 fb ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x4d0]
  bb796e:	ff 
  bb796f:	c5 f9 10 8f 50 fb ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x4b0]
  bb7976:	ff 
  bb7977:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb797d:	c5 f9 10 8f 40 fb ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x4c0]
  bb7984:	ff 
  bb7985:	c5 7d 14 c1          	vunpcklpd ymm8,ymm0,ymm1
  bb7989:	c5 7d 15 f1          	vunpckhpd ymm14,ymm0,ymm1
  bb798d:	c5 fd 10 87 20 fc ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x3e0]
  bb7994:	ff 
  bb7995:	c5 f9 10 8f 40 fc ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x3c0]
  bb799c:	ff 
  bb799d:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb79a3:	c5 f9 10 8f 30 fc ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x3d0]
  bb79aa:	ff 
  bb79ab:	c5 7d 14 c9          	vunpcklpd ymm9,ymm0,ymm1
  bb79af:	62 e1 fd 28 15 f9    	vunpckhpd ymm23,ymm0,ymm1
  bb79b5:	c5 fd 10 87 10 fd ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x2f0]
  bb79bc:	ff 
  bb79bd:	c5 f9 10 8f 30 fd ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x2d0]
  bb79c4:	ff 
  bb79c5:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb79cb:	c5 f9 10 8f 20 fd ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x2e0]
  bb79d2:	ff 
  bb79d3:	c5 fd 14 f9          	vunpcklpd ymm7,ymm0,ymm1
  bb79d7:	c5 7d 15 e9          	vunpckhpd ymm13,ymm0,ymm1
  bb79db:	c5 fd 10 87 00 fe ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x200]
  bb79e2:	ff 
  bb79e3:	c5 f9 10 8f 20 fe ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x1e0]
  bb79ea:	ff 
  bb79eb:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb79f1:	c5 f9 10 8f 10 fe ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x1f0]
  bb79f8:	ff 
  bb79f9:	c5 fd 14 f1          	vunpcklpd ymm6,ymm0,ymm1
  bb79fd:	62 e1 fd 28 15 c9    	vunpckhpd ymm17,ymm0,ymm1
  bb7a03:	c5 fd 10 87 f0 fe ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x110]
  bb7a0a:	ff 
  bb7a0b:	c5 f9 10 8f 10 ff ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xf0]
  bb7a12:	ff 
  bb7a13:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb7a19:	c5 f9 10 97 00 ff ff 	vmovupd xmm2,XMMWORD PTR [rdi-0x100]
  bb7a20:	ff 
  bb7a21:	c5 fd 14 ca          	vunpcklpd ymm1,ymm0,ymm2
  bb7a25:	c5 7d 15 fa          	vunpckhpd ymm15,ymm0,ymm2
  bb7a29:	c5 fd 10 47 e0       	vmovupd ymm0,YMMWORD PTR [rdi-0x20]
  bb7a2e:	c5 f9 10 17          	vmovupd xmm2,XMMWORD PTR [rdi]
  bb7a32:	c4 e3 7d 06 d2 20    	vperm2f128 ymm2,ymm0,ymm2,0x20
  bb7a38:	c5 f9 10 5f f0       	vmovupd xmm3,XMMWORD PTR [rdi-0x10]
  bb7a3d:	c5 ed 14 c3          	vunpcklpd ymm0,ymm2,ymm3
  bb7a41:	c5 ed 15 e3          	vunpckhpd ymm4,ymm2,ymm3
  bb7a45:	62 41 fd 20 58 ff    	vaddpd ymm31,ymm16,ymm15
  bb7a4b:	62 91 a5 28 58 df    	vaddpd ymm3,ymm11,ymm31
  bb7a51:	62 d1 d5 20 58 d5    	vaddpd ymm2,ymm21,ymm13
  bb7a57:	62 61 e5 28 58 da    	vaddpd ymm27,ymm3,ymm2
  bb7a5d:	62 d1 e5 20 58 d8    	vaddpd ymm3,ymm19,ymm8
  bb7a63:	c5 fd 29 9c 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm3
  bb7a6a:	00 00 
  bb7a6c:	62 c1 e5 20 5c d0    	vsubpd ymm18,ymm19,ymm8
  bb7a72:	c5 2d 58 e1          	vaddpd ymm12,ymm10,ymm1
  bb7a76:	62 61 ad 28 5c e9    	vsubpd ymm29,ymm10,ymm1
  bb7a7c:	62 61 d5 28 58 cf    	vaddpd ymm25,ymm5,ymm7
  bb7a82:	c5 55 5c d7          	vsubpd ymm10,ymm5,ymm7
  bb7a86:	62 91 fd 28 58 da    	vaddpd ymm3,ymm0,ymm26
  bb7a8c:	c5 fd 29 9c 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm3
  bb7a93:	00 00 
  bb7a95:	62 01 fd 28 5c e2    	vsubpd ymm28,ymm0,ymm26
  bb7a9b:	62 b1 b5 28 58 ec    	vaddpd ymm5,ymm9,ymm20
  bb7aa1:	62 b1 b5 28 5c dc    	vsubpd ymm3,ymm9,ymm20
  bb7aa7:	62 91 cd 28 58 c6    	vaddpd ymm0,ymm6,ymm30
  bb7aad:	c5 fd 29 84 24 20 02 	vmovapd YMMWORD PTR [rsp+0x220],ymm0
  bb7ab4:	00 00 
  bb7ab6:	62 01 cd 28 5c d6    	vsubpd ymm26,ymm6,ymm30
  bb7abc:	62 d1 bd 20 58 f6    	vaddpd ymm6,ymm24,ymm14
  bb7ac2:	62 e1 a5 20 58 de    	vaddpd ymm19,ymm27,ymm6
  bb7ac8:	62 d1 bd 20 5c c6    	vsubpd ymm0,ymm24,ymm14
  bb7ace:	c5 fd 29 84 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm0
  bb7ad5:	00 00 
  bb7ad7:	62 61 fd 28 28 44 24 	vmovapd ymm24,YMMWORD PTR [rsp+0x40]
  bb7ade:	02 
  bb7adf:	62 91 c5 20 58 c8    	vaddpd ymm1,ymm23,ymm24
  bb7ae5:	62 d1 fd 20 5c c7    	vsubpd ymm0,ymm16,ymm15
  bb7aeb:	c5 fd 29 84 24 c0 01 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm0
  bb7af2:	00 00 
  bb7af4:	c5 fd 28 44 24 20    	vmovapd ymm0,YMMWORD PTR [rsp+0x20]
  bb7afa:	c5 7d 58 c1          	vaddpd ymm8,ymm0,ymm1
  bb7afe:	62 d1 d5 20 5c fd    	vsubpd ymm7,ymm21,ymm13
  bb7b04:	c5 fd 29 bc 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm7
  bb7b0b:	00 00 
  bb7b0d:	c5 7d 28 bc 24 20 01 	vmovapd ymm15,YMMWORD PTR [rsp+0x120]
  bb7b14:	00 00 
  bb7b16:	c5 05 58 f4          	vaddpd ymm14,ymm15,ymm4
  bb7b1a:	c4 c1 5d 5c e7       	vsubpd ymm4,ymm4,ymm15
  bb7b1f:	c5 fd 29 a4 24 00 02 	vmovapd YMMWORD PTR [rsp+0x200],ymm4
  bb7b26:	00 00 
  bb7b28:	c5 7d 28 bc 24 00 01 	vmovapd ymm15,YMMWORD PTR [rsp+0x100]
  bb7b2f:	00 00 
  bb7b31:	62 51 f5 20 58 ef    	vaddpd ymm13,ymm17,ymm15
  bb7b37:	c4 c1 3d 58 e5       	vaddpd ymm4,ymm8,ymm13
  bb7b3c:	c5 8d 58 e4          	vaddpd ymm4,ymm14,ymm4
  bb7b40:	62 91 c5 20 5c f8    	vsubpd ymm7,ymm23,ymm24
  bb7b46:	c5 fd 29 7c 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm7
  bb7b4c:	c4 62 7d 19 05 4b d6 	vbroadcastsd ymm8,QWORD PTR [rip+0xffffffffff4bd64b]        # 751a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2650>
  bb7b53:	4b ff 
  bb7b55:	62 41 fd 28 28 c0    	vmovapd ymm24,ymm8
  bb7b5b:	62 42 85 20 a8 c3    	vfmadd213pd ymm24,ymm31,ymm11
  bb7b61:	62 d1 f5 20 5c ff    	vsubpd ymm7,ymm17,ymm15
  bb7b67:	c5 fd 29 bc 24 e0 01 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm7
  bb7b6e:	00 00 
  bb7b70:	62 62 fd 28 19 35 fe 	vbroadcastsd ymm30,QWORD PTR [rip+0xffffffffff4bd2fe]        # 74e78 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2328>
  bb7b77:	d2 4b ff 
  bb7b7a:	62 11 fd 28 28 fe    	vmovapd ymm15,ymm30
  bb7b80:	62 52 85 20 ac fb    	vfnmadd213pd ymm15,ymm31,ymm11
  bb7b86:	62 e2 fd 28 19 0d 50 	vbroadcastsd ymm17,QWORD PTR [rip+0xffffffffff4bd250]        # 74de0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2290>
  bb7b8d:	d2 4b ff 
  bb7b90:	62 42 f5 20 ac fb    	vfnmadd213pd ymm31,ymm17,ymm11
  bb7b96:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x120],ymm19
  bb7b9d:	09 
  bb7b9e:	c5 fd 29 a4 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm4
  bb7ba5:	00 00 
  bb7ba7:	62 f1 e5 20 58 e4    	vaddpd ymm4,ymm19,ymm4
  bb7bad:	c5 fd 29 a4 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm4
  bb7bb4:	00 00 
  bb7bb6:	62 02 ed 28 bc c6    	vfnmadd231pd ymm24,ymm2,ymm30
  bb7bbc:	62 22 cd 28 bc c1    	vfnmadd231pd ymm24,ymm6,ymm17
  bb7bc2:	62 32 ed 28 bc f9    	vfnmadd231pd ymm15,ymm2,ymm17
  bb7bc8:	62 62 bd 28 b8 fa    	vfmadd231pd ymm31,ymm8,ymm2
  bb7bce:	62 e2 fd 28 19 05 00 	vbroadcastsd ymm16,QWORD PTR [rip+0xffffffffff4bd000]        # 74bd8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2088>
  bb7bd5:	d0 4b ff 
  bb7bd8:	62 a1 ad 28 59 e0    	vmulpd ymm20,ymm10,ymm16
  bb7bde:	c4 62 7d 19 1d e9 d2 	vbroadcastsd ymm11,QWORD PTR [rip+0xffffffffff4bd2e9]        # 74ed0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2380>
  bb7be5:	4b ff 
  bb7be7:	62 c2 95 20 b8 e3    	vfmadd231pd ymm20,ymm29,ymm11
  bb7bed:	62 e2 fd 28 19 1d 51 	vbroadcastsd ymm19,QWORD PTR [rip+0xffffffffff4bcb51]        # 74748 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bf8>
  bb7bf4:	cb 4b ff 
  bb7bf7:	62 a2 ed 20 b8 e3    	vfmadd231pd ymm20,ymm18,ymm19
  bb7bfd:	c4 42 cd b8 f8       	vfmadd231pd ymm15,ymm6,ymm8
  bb7c02:	62 62 8d 20 bc fe    	vfnmadd231pd ymm31,ymm30,ymm6
  bb7c08:	62 a1 95 20 59 f8    	vmulpd ymm23,ymm29,ymm16
  bb7c0e:	62 a2 ad 28 bc fb    	vfnmadd231pd ymm23,ymm10,ymm19
  bb7c14:	62 b1 95 20 59 e3    	vmulpd ymm4,ymm29,ymm19
  bb7c1a:	c4 c2 a5 bc e2       	vfnmadd231pd ymm4,ymm11,ymm10
  bb7c1f:	c4 41 7d 28 c8       	vmovapd ymm9,ymm8
  bb7c24:	c4 62 f5 a8 c8       	vfmadd213pd ymm9,ymm1,ymm0
  bb7c29:	62 c2 ed 20 bc fb    	vfnmadd231pd ymm23,ymm18,ymm11
  bb7c2f:	62 b2 fd 20 b8 e2    	vfmadd231pd ymm4,ymm16,ymm18
  bb7c35:	62 91 fd 28 28 fe    	vmovapd ymm7,ymm30
  bb7c3b:	c4 e2 f5 ac f8       	vfnmadd213pd ymm7,ymm1,ymm0
  bb7c40:	62 f2 f5 20 ac c8    	vfnmadd213pd ymm1,ymm17,ymm0
  bb7c46:	c5 fd 28 74 24 60    	vmovapd ymm6,YMMWORD PTR [rsp+0x60]
  bb7c4c:	c5 9d 58 d6          	vaddpd ymm2,ymm12,ymm6
  bb7c50:	62 91 ed 28 58 d1    	vaddpd ymm2,ymm2,ymm25
  bb7c56:	62 e1 fd 28 28 74 24 	vmovapd ymm22,YMMWORD PTR [rsp+0xe0]
  bb7c5d:	07 
  bb7c5e:	62 b1 ed 28 58 c6    	vaddpd ymm0,ymm2,ymm22
  bb7c64:	c5 fd 29 84 24 a0 02 	vmovapd YMMWORD PTR [rsp+0x2a0],ymm0
  bb7c6b:	00 00 
  bb7c6d:	62 12 95 28 bc ce    	vfnmadd231pd ymm9,ymm13,ymm30
  bb7c73:	62 32 8d 28 bc c9    	vfnmadd231pd ymm9,ymm14,ymm17
  bb7c79:	62 b2 95 28 bc f9    	vfnmadd231pd ymm7,ymm13,ymm17
  bb7c7f:	c4 c2 bd b8 cd       	vfmadd231pd ymm1,ymm8,ymm13
  bb7c84:	62 21 ad 20 59 d8    	vmulpd ymm27,ymm26,ymm16
  bb7c8a:	62 42 e5 28 b8 db    	vfmadd231pd ymm27,ymm3,ymm11
  bb7c90:	62 22 9d 20 b8 db    	vfmadd231pd ymm27,ymm28,ymm19
  bb7c96:	c4 c2 8d b8 f8       	vfmadd231pd ymm7,ymm14,ymm8
  bb7c9b:	62 d2 8d 20 bc ce    	vfnmadd231pd ymm1,ymm30,ymm14
  bb7ca1:	62 21 e5 28 59 e8    	vmulpd ymm29,ymm3,ymm16
  bb7ca7:	62 22 ad 20 bc eb    	vfnmadd231pd ymm29,ymm26,ymm19
  bb7cad:	62 a1 e5 28 59 eb    	vmulpd ymm21,ymm3,ymm19
  bb7cb3:	62 82 a5 28 bc ea    	vfnmadd231pd ymm21,ymm11,ymm26
  bb7cb9:	c4 41 7d 28 e8       	vmovapd ymm13,ymm8
  bb7cbe:	c4 62 9d a8 ee       	vfmadd213pd ymm13,ymm12,ymm6
  bb7cc3:	62 42 9d 20 bc eb    	vfnmadd231pd ymm29,ymm28,ymm11
  bb7cc9:	62 82 fd 20 b8 ec    	vfmadd231pd ymm21,ymm16,ymm28
  bb7ccf:	62 81 fd 28 28 d6    	vmovapd ymm18,ymm30
  bb7cd5:	62 e2 9d 28 ac d6    	vfnmadd213pd ymm18,ymm12,ymm6
  bb7cdb:	62 72 f5 20 ac e6    	vfnmadd213pd ymm12,ymm17,ymm6
  bb7ce1:	c5 fd 28 1c 24       	vmovapd ymm3,YMMWORD PTR [rsp]
  bb7ce6:	c5 e5 58 c5          	vaddpd ymm0,ymm3,ymm5
  bb7cea:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x220]
  bb7cf1:	11 
  bb7cf2:	62 91 fd 28 58 c2    	vaddpd ymm0,ymm0,ymm26
  bb7cf8:	c5 7d 28 94 24 40 02 	vmovapd ymm10,YMMWORD PTR [rsp+0x240]
  bb7cff:	00 00 
  bb7d01:	c5 ad 58 c0          	vaddpd ymm0,ymm10,ymm0
  bb7d05:	c5 fd 29 44 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm0
  bb7d0b:	62 12 b5 20 bc ee    	vfnmadd231pd ymm13,ymm25,ymm30
  bb7d11:	62 b1 fd 28 28 d6    	vmovapd ymm2,ymm22
  bb7d17:	62 32 cd 20 bc e9    	vfnmadd231pd ymm13,ymm22,ymm17
  bb7d1d:	62 a2 b5 20 bc d1    	vfnmadd231pd ymm18,ymm25,ymm17
  bb7d23:	62 12 bd 28 b8 e1    	vfmadd231pd ymm12,ymm8,ymm25
  bb7d29:	62 61 fd 28 28 4c 24 	vmovapd ymm25,YMMWORD PTR [rsp+0xa0]
  bb7d30:	05 
  bb7d31:	62 31 b5 20 59 f0    	vmulpd ymm14,ymm25,ymm16
  bb7d37:	62 e1 fd 28 28 74 24 	vmovapd ymm22,YMMWORD PTR [rsp+0x1c0]
  bb7d3e:	0e 
  bb7d3f:	62 52 cd 20 b8 f3    	vfmadd231pd ymm14,ymm22,ymm11
  bb7d45:	c5 fd 28 84 24 c0 00 	vmovapd ymm0,YMMWORD PTR [rsp+0xc0]
  bb7d4c:	00 00 
  bb7d4e:	62 32 fd 28 b8 f3    	vfmadd231pd ymm14,ymm0,ymm19
  bb7d54:	62 c2 ed 28 b8 d0    	vfmadd231pd ymm18,ymm2,ymm8
  bb7d5a:	62 72 8d 20 bc e2    	vfnmadd231pd ymm12,ymm30,ymm2
  bb7d60:	62 b1 cd 20 59 f0    	vmulpd ymm6,ymm22,ymm16
  bb7d66:	62 b2 b5 20 bc f3    	vfnmadd231pd ymm6,ymm25,ymm19
  bb7d6c:	62 b1 cd 20 59 d3    	vmulpd ymm2,ymm22,ymm19
  bb7d72:	62 92 a5 28 bc d1    	vfnmadd231pd ymm2,ymm11,ymm25
  bb7d78:	62 41 fd 28 28 e0    	vmovapd ymm28,ymm8
  bb7d7e:	62 62 d5 28 a8 e3    	vfmadd213pd ymm28,ymm5,ymm3
  bb7d84:	62 02 ad 20 bc e6    	vfnmadd231pd ymm28,ymm26,ymm30
  bb7d8a:	62 81 fd 28 28 f2    	vmovapd ymm22,ymm26
  bb7d90:	62 22 ad 28 bc e1    	vfnmadd231pd ymm28,ymm10,ymm17
  bb7d96:	c4 c2 fd bc f3       	vfnmadd231pd ymm6,ymm0,ymm11
  bb7d9b:	62 f2 fd 20 b8 d0    	vfmadd231pd ymm2,ymm16,ymm0
  bb7da1:	62 91 fd 28 28 c6    	vmovapd ymm0,ymm30
  bb7da7:	c4 e2 d5 ac c3       	vfnmadd213pd ymm0,ymm5,ymm3
  bb7dac:	62 f2 f5 20 ac eb    	vfnmadd213pd ymm5,ymm17,ymm3
  bb7db2:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x1e0]
  bb7db9:	0f 
  bb7dba:	62 b1 ad 20 59 d8    	vmulpd ymm3,ymm26,ymm16
  bb7dc0:	62 61 fd 28 28 4c 24 	vmovapd ymm25,YMMWORD PTR [rsp+0x40]
  bb7dc7:	02 
  bb7dc8:	62 d2 b5 20 b8 db    	vfmadd231pd ymm3,ymm25,ymm11
  bb7dce:	62 61 fd 28 28 74 24 	vmovapd ymm30,YMMWORD PTR [rsp+0x200]
  bb7dd5:	10 
  bb7dd6:	62 b2 8d 20 b8 db    	vfmadd231pd ymm3,ymm30,ymm19
  bb7ddc:	62 b2 cd 20 bc c1    	vfnmadd231pd ymm0,ymm22,ymm17
  bb7de2:	62 b2 bd 28 b8 ee    	vfmadd231pd ymm5,ymm8,ymm22
  bb7de8:	62 c1 fd 28 28 c9    	vmovapd ymm17,ymm9
  bb7dee:	c5 7d 29 3c 24       	vmovapd YMMWORD PTR [rsp],ymm15
  bb7df3:	62 e1 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x20],ymm23
  bb7dfa:	01 
  bb7dfb:	62 31 85 28 58 ff    	vaddpd ymm15,ymm15,ymm23
  bb7e01:	62 e1 fd 28 28 fc    	vmovapd ymm23,ymm4
  bb7e07:	c4 c2 ad b8 c0       	vfmadd231pd ymm0,ymm10,ymm8
  bb7e0c:	62 f2 ad 38 bc 2d 62 	vfnmadd231pd ymm5,ymm10,QWORD BCST [rip+0xffffffffff4bd062]        # 74e78 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2328>
  bb7e13:	d0 4b ff 
  bb7e16:	62 a1 b5 20 59 f0    	vmulpd ymm22,ymm25,ymm16
  bb7e1c:	62 a2 ad 20 bc f3    	vfnmadd231pd ymm22,ymm26,ymm19
  bb7e22:	62 31 b5 20 59 cb    	vmulpd ymm9,ymm25,ymm19
  bb7e28:	62 81 fd 28 28 d8    	vmovapd ymm19,ymm24
  bb7e2e:	62 12 a5 28 bc ca    	vfnmadd231pd ymm9,ymm11,ymm26
  bb7e34:	62 61 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0xe0],ymm29
  bb7e3b:	07 
  bb7e3c:	c5 fd 29 bc 24 c0 01 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm7
  bb7e43:	00 00 
  bb7e45:	62 11 c5 28 58 c5    	vaddpd ymm8,ymm7,ymm29
  bb7e4b:	62 c2 8d 20 bc f3    	vfnmadd231pd ymm22,ymm30,ymm11
  bb7e51:	62 11 fd 28 28 df    	vmovapd ymm11,ymm31
  bb7e57:	62 12 fd 20 b8 ce    	vfmadd231pd ymm9,ymm16,ymm30
  bb7e5d:	62 e1 fd 28 28 c5    	vmovapd ymm16,ymm5
  bb7e63:	c5 7d 29 e4          	vmovapd ymm4,ymm12
  bb7e67:	c5 7d 29 84 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm8
  bb7e6e:	00 00 
  bb7e70:	c5 7d 29 bc 24 20 02 	vmovapd YMMWORD PTR [rsp+0x220],ymm15
  bb7e77:	00 00 
  bb7e79:	c4 c1 05 58 e8       	vaddpd ymm5,ymm15,ymm8
  bb7e7e:	c5 fd 28 bc 24 80 00 	vmovapd ymm7,YMMWORD PTR [rsp+0x80]
  bb7e85:	00 00 
  bb7e87:	62 63 45 28 18 cd 01 	vinsertf32x4 ymm25,ymm7,xmm5,0x1
  bb7e8e:	c4 63 45 06 fd 31    	vperm2f128 ymm15,ymm7,ymm5,0x31
  bb7e94:	62 e1 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x40],ymm20
  bb7e9b:	02 
  bb7e9c:	62 b1 bd 20 58 ec    	vaddpd ymm5,ymm24,ymm20
  bb7ea2:	62 e1 fd 28 28 64 24 	vmovapd ymm20,YMMWORD PTR [rsp+0x2a0]
  bb7ea9:	15 
  bb7eaa:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x80],ymm17
  bb7eb1:	04 
  bb7eb2:	62 11 f5 20 58 c3    	vaddpd ymm8,ymm17,ymm27
  bb7eb8:	c5 fd 29 ac 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm5
  bb7ebf:	00 00 
  bb7ec1:	c5 7d 29 84 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm8
  bb7ec8:	00 00 
  bb7eca:	c4 41 55 5c d0       	vsubpd ymm10,ymm5,ymm8
  bb7ecf:	62 b1 85 20 58 ef    	vaddpd ymm5,ymm31,ymm23
  bb7ed5:	62 21 fd 28 28 ed    	vmovapd ymm29,ymm21
  bb7edb:	62 31 f5 28 58 c5    	vaddpd ymm8,ymm1,ymm21
  bb7ee1:	c5 fd 29 ac 24 00 02 	vmovapd YMMWORD PTR [rsp+0x200],ymm5
  bb7ee8:	00 00 
  bb7eea:	c5 7d 29 84 24 e0 01 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm8
  bb7ef1:	00 00 
  bb7ef3:	c4 41 55 5c e0       	vsubpd ymm12,ymm5,ymm8
  bb7ef8:	62 43 2d 28 18 d4 01 	vinsertf32x4 ymm26,ymm10,xmm12,0x1
  bb7eff:	62 c3 ad 28 23 ec 03 	vshuff64x2 ymm21,ymm10,ymm12,0x3
  bb7f06:	62 71 dd 20 58 64 24 	vaddpd ymm12,ymm20,YMMWORD PTR [rsp+0x60]
  bb7f0d:	03 
  bb7f0e:	62 f1 ed 20 5c ee    	vsubpd ymm5,ymm18,ymm6
  bb7f14:	62 b1 fd 28 5c fe    	vsubpd ymm7,ymm0,ymm22
  bb7f1a:	c5 fd 29 ac 24 a0 01 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm5
  bb7f21:	00 00 
  bb7f23:	c5 fd 29 bc 24 80 01 	vmovapd YMMWORD PTR [rsp+0x180],ymm7
  bb7f2a:	00 00 
  bb7f2c:	62 61 d5 28 58 c7    	vaddpd ymm24,ymm5,ymm7
  bb7f32:	62 03 1d 28 18 f0 01 	vinsertf32x4 ymm30,ymm12,xmm24,0x1
  bb7f39:	62 13 9d 28 23 e0 03 	vshuff64x2 ymm12,ymm12,ymm24,0x3
  bb7f40:	c4 c1 15 5c ee       	vsubpd ymm5,ymm13,ymm14
  bb7f45:	62 f1 9d 20 5c fb    	vsubpd ymm7,ymm28,ymm3
  bb7f4b:	c5 fd 29 ac 24 40 01 	vmovapd YMMWORD PTR [rsp+0x140],ymm5
  bb7f52:	00 00 
  bb7f54:	c5 fd 29 bc 24 60 02 	vmovapd YMMWORD PTR [rsp+0x260],ymm7
  bb7f5b:	00 00 
  bb7f5d:	62 61 d5 28 5c c7    	vsubpd ymm24,ymm5,ymm7
  bb7f63:	c5 dd 5c ea          	vsubpd ymm5,ymm4,ymm2
  bb7f67:	62 d1 fd 20 5c f9    	vsubpd ymm7,ymm16,ymm9
  bb7f6d:	c5 fd 29 ac 24 60 01 	vmovapd YMMWORD PTR [rsp+0x160],ymm5
  bb7f74:	00 00 
  bb7f76:	c5 fd 29 bc 24 80 02 	vmovapd YMMWORD PTR [rsp+0x280],ymm7
  bb7f7d:	00 00 
  bb7f7f:	62 61 d5 28 5c ff    	vsubpd ymm31,ymm5,ymm7
  bb7f85:	c5 7d 29 ff          	vmovapd ymm7,ymm15
  bb7f89:	62 93 3d 20 18 ef 01 	vinsertf32x4 ymm5,ymm24,xmm31,0x1
  bb7f90:	62 03 bd 20 23 c7 03 	vshuff64x2 ymm24,ymm24,ymm31,0x3
  bb7f97:	62 01 b5 20 14 fa    	vunpcklpd ymm31,ymm25,ymm26
  bb7f9d:	62 e1 8d 20 14 cd    	vunpcklpd ymm17,ymm30,ymm5
  bb7fa3:	62 11 fd 28 28 c7    	vmovapd ymm8,ymm31
  bb7fa9:	c5 7d 28 3d af eb 4b 	vmovapd ymm15,YMMWORD PTR [rip+0xffffffffff4bebaf]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  bb7fb0:	ff 
  bb7fb1:	62 32 85 28 7f c1    	vpermt2pd ymm8,ymm15,ymm17
  bb7fb7:	c5 7d 28 15 81 f6 4b 	vmovapd ymm10,YMMWORD PTR [rip+0xffffffffff4bf681]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  bb7fbe:	ff 
  bb7fbf:	62 22 ad 28 7f f9    	vpermt2pd ymm31,ymm10,ymm17
  bb7fc5:	c4 41 7d 29 80 a0 fc 	vmovapd YMMWORD PTR [r8-0x360],ymm8
  bb7fcc:	ff ff 
  bb7fce:	62 41 fd 28 29 78 e6 	vmovapd YMMWORD PTR [r8-0x340],ymm31
  bb7fd5:	62 f1 8d 20 15 ed    	vunpckhpd ymm5,ymm30,ymm5
  bb7fdb:	62 11 b5 20 15 c2    	vunpckhpd ymm8,ymm25,ymm26
  bb7fe1:	62 41 fd 28 28 d2    	vmovapd ymm26,ymm10
  bb7fe7:	62 41 fd 28 28 cf    	vmovapd ymm25,ymm15
  bb7fed:	62 c1 fd 28 28 c8    	vmovapd ymm17,ymm8
  bb7ff3:	62 e2 85 28 7f cd    	vpermt2pd ymm17,ymm15,ymm5
  bb7ff9:	62 72 ad 28 7f c5    	vpermt2pd ymm8,ymm10,ymm5
  bb7fff:	62 c1 fd 28 29 48 ec 	vmovapd YMMWORD PTR [r8-0x280],ymm17
  bb8006:	c4 41 7d 29 80 a0 fd 	vmovapd YMMWORD PTR [r8-0x260],ymm8
  bb800d:	ff ff 
  bb800f:	62 b1 c5 28 14 ed    	vunpcklpd ymm5,ymm7,ymm21
  bb8015:	62 11 9d 28 14 c0    	vunpcklpd ymm8,ymm12,ymm24
  bb801b:	62 e1 fd 28 28 cd    	vmovapd ymm17,ymm5
  bb8021:	62 c2 85 28 7f c8    	vpermt2pd ymm17,ymm15,ymm8
  bb8027:	62 d2 ad 28 7f e8    	vpermt2pd ymm5,ymm10,ymm8
  bb802d:	62 c1 fd 28 29 48 f3 	vmovapd YMMWORD PTR [r8-0x1a0],ymm17
  bb8034:	c4 c1 7d 29 a8 80 fe 	vmovapd YMMWORD PTR [r8-0x180],ymm5
  bb803b:	ff ff 
  bb803d:	49 83 f9 0c          	cmp    r9,0xc
  bb8041:	74 2f                	je     bb8072 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xb32>
  bb8043:	62 91 9d 28 15 e8    	vunpckhpd ymm5,ymm12,ymm24
  bb8049:	62 31 c5 28 15 c5    	vunpckhpd ymm8,ymm7,ymm21
  bb804f:	c4 41 7d 28 d0       	vmovapd ymm10,ymm8
  bb8054:	62 72 b5 20 7f d5    	vpermt2pd ymm10,ymm25,ymm5
  bb805a:	62 72 ad 20 7f c5    	vpermt2pd ymm8,ymm26,ymm5
  bb8060:	c4 41 7d 29 90 40 ff 	vmovapd YMMWORD PTR [r8-0xc0],ymm10
  bb8067:	ff ff 
  bb8069:	c4 41 7d 29 80 60 ff 	vmovapd YMMWORD PTR [r8-0xa0],ymm8
  bb8070:	ff ff 
  bb8072:	62 21 a5 28 5c f7    	vsubpd ymm30,ymm11,ymm23
  bb8078:	62 81 f5 28 5c fd    	vsubpd ymm23,ymm1,ymm29
  bb807e:	62 b1 8d 20 58 ef    	vaddpd ymm5,ymm30,ymm23
  bb8084:	c5 ed 58 cc          	vaddpd ymm1,ymm2,ymm4
  bb8088:	62 31 b5 28 58 c8    	vaddpd ymm9,ymm9,ymm16
  bb808e:	c5 35 58 d1          	vaddpd ymm10,ymm9,ymm1
  bb8092:	c5 7d 28 04 24       	vmovapd ymm8,YMMWORD PTR [rsp]
  bb8097:	c5 3d 5c 5c 24 20    	vsubpd ymm11,ymm8,YMMWORD PTR [rsp+0x20]
  bb809d:	c5 fd 28 94 24 c0 01 	vmovapd ymm2,YMMWORD PTR [rsp+0x1c0]
  bb80a4:	00 00 
  bb80a6:	c5 6d 5c bc 24 e0 00 	vsubpd ymm15,ymm2,YMMWORD PTR [rsp+0xe0]
  bb80ad:	00 00 
  bb80af:	c4 41 25 5c e7       	vsubpd ymm12,ymm11,ymm15
  bb80b4:	62 a1 cd 28 58 c2    	vaddpd ymm16,ymm6,ymm18
  bb80ba:	62 f1 cd 20 58 f0    	vaddpd ymm6,ymm22,ymm0
  bb80c0:	62 f1 fd 20 5c fe    	vsubpd ymm7,ymm16,ymm6
  bb80c6:	62 71 e5 20 5c 44 24 	vsubpd ymm8,ymm19,YMMWORD PTR [rsp+0x40]
  bb80cd:	02 
  bb80ce:	c5 fd 28 84 24 80 00 	vmovapd ymm0,YMMWORD PTR [rsp+0x80]
  bb80d5:	00 00 
  bb80d7:	62 91 fd 28 5c d3    	vsubpd ymm2,ymm0,ymm27
  bb80dd:	c5 bd 58 c2          	vaddpd ymm0,ymm8,ymm2
  bb80e1:	c4 c1 0d 58 e5       	vaddpd ymm4,ymm14,ymm13
  bb80e6:	62 11 e5 28 58 ec    	vaddpd ymm13,ymm3,ymm28
  bb80ec:	c5 15 58 f4          	vaddpd ymm14,ymm13,ymm4
  bb80f0:	c5 fd 28 9c 24 20 01 	vmovapd ymm3,YMMWORD PTR [rsp+0x120]
  bb80f7:	00 00 
  bb80f9:	c5 e5 5c 9c 24 00 01 	vsubpd ymm3,ymm3,YMMWORD PTR [rsp+0x100]
  bb8100:	00 00 
  bb8102:	62 e1 dd 20 5c 4c 24 	vsubpd ymm17,ymm20,YMMWORD PTR [rsp+0x60]
  bb8109:	03 
  bb810a:	62 e3 55 28 18 d0 01 	vinsertf32x4 ymm18,ymm5,xmm0,0x1
  bb8111:	c4 e3 55 06 c0 31    	vperm2f128 ymm0,ymm5,ymm0,0x31
  bb8117:	62 e3 1d 28 18 db 01 	vinsertf32x4 ymm19,ymm12,xmm3,0x1
  bb811e:	c4 e3 1d 06 db 31    	vperm2f128 ymm3,ymm12,ymm3,0x31
  bb8124:	62 31 ed 20 14 e3    	vunpcklpd ymm12,ymm18,ymm19
  bb812a:	62 e1 fd 28 14 eb    	vunpcklpd ymm21,ymm0,ymm3
  bb8130:	62 c3 2d 28 18 f6 01 	vinsertf32x4 ymm22,ymm10,xmm14,0x1
  bb8137:	c4 c3 2d 06 ee 31    	vperm2f128 ymm5,ymm10,ymm14,0x31
  bb813d:	62 33 45 28 18 d1 01 	vinsertf32x4 ymm10,ymm7,xmm17,0x1
  bb8144:	62 b3 c5 28 23 f9 03 	vshuff64x2 ymm7,ymm7,ymm17,0x3
  bb814b:	62 51 cd 20 14 f2    	vunpcklpd ymm14,ymm22,ymm10
  bb8151:	62 e1 d5 28 14 cf    	vunpcklpd ymm17,ymm5,ymm7
  bb8157:	62 41 fd 28 28 c4    	vmovapd ymm24,ymm12
  bb815d:	62 42 b5 20 7f c6    	vpermt2pd ymm24,ymm25,ymm14
  bb8163:	62 52 ad 20 7f e6    	vpermt2pd ymm12,ymm26,ymm14
  bb8169:	62 41 fd 28 29 40 e7 	vmovapd YMMWORD PTR [r8-0x320],ymm24
  bb8170:	c4 41 7d 29 a0 00 fd 	vmovapd YMMWORD PTR [r8-0x300],ymm12
  bb8177:	ff ff 
  bb8179:	62 51 cd 20 15 d2    	vunpckhpd ymm10,ymm22,ymm10
  bb817f:	62 31 ed 20 15 e3    	vunpckhpd ymm12,ymm18,ymm19
  bb8185:	c4 41 7d 28 f4       	vmovapd ymm14,ymm12
  bb818a:	62 52 b5 20 7f f2    	vpermt2pd ymm14,ymm25,ymm10
  bb8190:	62 52 ad 20 7f e2    	vpermt2pd ymm12,ymm26,ymm10
  bb8196:	c4 41 7d 29 b0 c0 fd 	vmovapd YMMWORD PTR [r8-0x240],ymm14
  bb819d:	ff ff 
  bb819f:	c4 41 7d 29 a0 e0 fd 	vmovapd YMMWORD PTR [r8-0x220],ymm12
  bb81a6:	ff ff 
  bb81a8:	62 31 fd 28 28 d5    	vmovapd ymm10,ymm21
  bb81ae:	62 32 b5 20 7f d1    	vpermt2pd ymm10,ymm25,ymm17
  bb81b4:	62 a2 ad 20 7f e9    	vpermt2pd ymm21,ymm26,ymm17
  bb81ba:	c4 41 7d 29 90 a0 fe 	vmovapd YMMWORD PTR [r8-0x160],ymm10
  bb81c1:	ff ff 
  bb81c3:	62 c1 fd 28 29 68 f6 	vmovapd YMMWORD PTR [r8-0x140],ymm21
  bb81ca:	49 83 f9 0c          	cmp    r9,0xc
  bb81ce:	74 24                	je     bb81f4 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xcb4>
  bb81d0:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  bb81d4:	c5 fd 15 c3          	vunpckhpd ymm0,ymm0,ymm3
  bb81d8:	c5 fd 28 d8          	vmovapd ymm3,ymm0
  bb81dc:	62 f2 b5 20 7f dd    	vpermt2pd ymm3,ymm25,ymm5
  bb81e2:	62 f2 ad 20 7f c5    	vpermt2pd ymm0,ymm26,ymm5
  bb81e8:	c4 c1 7d 29 58 80    	vmovapd YMMWORD PTR [r8-0x80],ymm3
  bb81ee:	c4 c1 7d 29 40 a0    	vmovapd YMMWORD PTR [r8-0x60],ymm0
  bb81f4:	c5 fd 28 84 24 a0 00 	vmovapd ymm0,YMMWORD PTR [rsp+0xa0]
  bb81fb:	00 00 
  bb81fd:	c5 fd 58 84 24 c0 00 	vaddpd ymm0,ymm0,YMMWORD PTR [rsp+0xc0]
  bb8204:	00 00 
  bb8206:	c5 fd 28 9c 24 60 02 	vmovapd ymm3,YMMWORD PTR [rsp+0x260]
  bb820d:	00 00 
  bb820f:	c5 e5 58 9c 24 40 01 	vaddpd ymm3,ymm3,YMMWORD PTR [rsp+0x140]
  bb8216:	00 00 
  bb8218:	c5 fd 28 ac 24 20 02 	vmovapd ymm5,YMMWORD PTR [rsp+0x220]
  bb821f:	00 00 
  bb8221:	c5 d5 5c ac 24 40 02 	vsubpd ymm5,ymm5,YMMWORD PTR [rsp+0x240]
  bb8228:	00 00 
  bb822a:	c5 fd 28 bc 24 a0 01 	vmovapd ymm7,YMMWORD PTR [rsp+0x1a0]
  bb8231:	00 00 
  bb8233:	c5 c5 5c bc 24 80 01 	vsubpd ymm7,ymm7,YMMWORD PTR [rsp+0x180]
  bb823a:	00 00 
  bb823c:	c5 7d 28 94 24 e0 01 	vmovapd ymm10,YMMWORD PTR [rsp+0x1e0]
  bb8243:	00 00 
  bb8245:	c5 2d 58 94 24 00 02 	vaddpd ymm10,ymm10,YMMWORD PTR [rsp+0x200]
  bb824c:	00 00 
  bb824e:	c5 7d 28 a4 24 80 02 	vmovapd ymm12,YMMWORD PTR [rsp+0x280]
  bb8255:	00 00 
  bb8257:	c5 1d 58 a4 24 60 01 	vaddpd ymm12,ymm12,YMMWORD PTR [rsp+0x160]
  bb825e:	00 00 
  bb8260:	62 31 8d 20 5c f7    	vsubpd ymm14,ymm30,ymm23
  bb8266:	c4 41 75 5c c9       	vsubpd ymm9,ymm1,ymm9
  bb826b:	62 c3 7d 28 18 ca 01 	vinsertf32x4 ymm17,ymm0,xmm10,0x1
  bb8272:	c4 c3 7d 06 c2 31    	vperm2f128 ymm0,ymm0,ymm10,0x31
  bb8278:	c4 43 55 18 d6 01    	vinsertf128 ymm10,ymm5,xmm14,0x1
  bb827e:	c4 c3 55 06 ce 31    	vperm2f128 ymm1,ymm5,ymm14,0x31
  bb8284:	62 51 f5 20 14 f2    	vunpcklpd ymm14,ymm17,ymm10
  bb828a:	62 e1 fd 28 14 d1    	vunpcklpd ymm18,ymm0,ymm1
  bb8290:	62 c3 65 28 18 dc 01 	vinsertf32x4 ymm19,ymm3,xmm12,0x1
  bb8297:	c4 c3 65 06 dc 31    	vperm2f128 ymm3,ymm3,ymm12,0x31
  bb829d:	c4 43 45 18 e1 01    	vinsertf128 ymm12,ymm7,xmm9,0x1
  bb82a3:	c4 c3 45 06 e9 31    	vperm2f128 ymm5,ymm7,ymm9,0x31
  bb82a9:	62 d1 e5 20 14 fc    	vunpcklpd ymm7,ymm19,ymm12
  bb82af:	c5 65 14 cd          	vunpcklpd ymm9,ymm3,ymm5
  bb82b3:	62 c1 fd 28 28 e6    	vmovapd ymm20,ymm14
  bb82b9:	62 e2 b5 20 7f e7    	vpermt2pd ymm20,ymm25,ymm7
  bb82bf:	62 72 ad 20 7f f7    	vpermt2pd ymm14,ymm26,ymm7
  bb82c5:	62 c1 fd 28 29 60 e9 	vmovapd YMMWORD PTR [r8-0x2e0],ymm20
  bb82cc:	c4 41 7d 29 b0 40 fd 	vmovapd YMMWORD PTR [r8-0x2c0],ymm14
  bb82d3:	ff ff 
  bb82d5:	62 d1 e5 20 15 fc    	vunpckhpd ymm7,ymm19,ymm12
  bb82db:	62 51 f5 20 15 d2    	vunpckhpd ymm10,ymm17,ymm10
  bb82e1:	c4 41 7d 28 e2       	vmovapd ymm12,ymm10
  bb82e6:	62 72 b5 20 7f e7    	vpermt2pd ymm12,ymm25,ymm7
  bb82ec:	62 72 ad 20 7f d7    	vpermt2pd ymm10,ymm26,ymm7
  bb82f2:	c4 41 7d 29 a0 00 fe 	vmovapd YMMWORD PTR [r8-0x200],ymm12
  bb82f9:	ff ff 
  bb82fb:	c4 41 7d 29 90 20 fe 	vmovapd YMMWORD PTR [r8-0x1e0],ymm10
  bb8302:	ff ff 
  bb8304:	62 b1 fd 28 28 fa    	vmovapd ymm7,ymm18
  bb830a:	62 d2 b5 20 7f f9    	vpermt2pd ymm7,ymm25,ymm9
  bb8310:	62 c2 ad 20 7f d1    	vpermt2pd ymm18,ymm26,ymm9
  bb8316:	c4 c1 7d 29 b8 e0 fe 	vmovapd YMMWORD PTR [r8-0x120],ymm7
  bb831d:	ff ff 
  bb831f:	62 c1 fd 28 29 50 f8 	vmovapd YMMWORD PTR [r8-0x100],ymm18
  bb8326:	49 83 f9 0c          	cmp    r9,0xc
  bb832a:	74 24                	je     bb8350 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xe10>
  bb832c:	c5 e5 15 dd          	vunpckhpd ymm3,ymm3,ymm5
  bb8330:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  bb8334:	c5 fd 28 c8          	vmovapd ymm1,ymm0
  bb8338:	62 f2 b5 20 7f cb    	vpermt2pd ymm1,ymm25,ymm3
  bb833e:	62 f2 ad 20 7f c3    	vpermt2pd ymm0,ymm26,ymm3
  bb8344:	c4 c1 7d 29 48 c0    	vmovapd YMMWORD PTR [r8-0x40],ymm1
  bb834a:	c4 c1 7d 29 40 e0    	vmovapd YMMWORD PTR [r8-0x20],ymm0
  bb8350:	c4 c1 25 58 c7       	vaddpd ymm0,ymm11,ymm15
  bb8355:	62 f1 fd 20 58 ce    	vaddpd ymm1,ymm16,ymm6
  bb835b:	c5 bd 5c d2          	vsubpd ymm2,ymm8,ymm2
  bb835f:	c4 c1 5d 5c dd       	vsubpd ymm3,ymm4,ymm13
  bb8364:	c5 f9 14 e1          	vunpcklpd xmm4,xmm0,xmm1
  bb8368:	c5 e9 14 eb          	vunpcklpd xmm5,xmm2,xmm3
  bb836c:	c4 c1 79 29 a8 70 fd 	vmovapd XMMWORD PTR [r8-0x290],xmm5
  bb8373:	ff ff 
  bb8375:	c4 c1 79 29 a0 60 fd 	vmovapd XMMWORD PTR [r8-0x2a0],xmm4
  bb837c:	ff ff 
  bb837e:	c5 f9 15 e1          	vunpckhpd xmm4,xmm0,xmm1
  bb8382:	c5 e9 15 eb          	vunpckhpd xmm5,xmm2,xmm3
  bb8386:	c4 c1 79 29 a8 50 fe 	vmovapd XMMWORD PTR [r8-0x1b0],xmm5
  bb838d:	ff ff 
  bb838f:	c4 c1 79 29 a0 40 fe 	vmovapd XMMWORD PTR [r8-0x1c0],xmm4
  bb8396:	ff ff 
  bb8398:	c5 fd 28 e1          	vmovapd ymm4,ymm1
  bb839c:	c5 fd 28 2d bc d6 4b 	vmovapd ymm5,YMMWORD PTR [rip+0xffffffffff4bd6bc]        # 75a60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2f10>
  bb83a3:	ff 
  bb83a4:	62 f2 d5 28 7f e3    	vpermt2pd ymm4,ymm5,ymm3
  bb83aa:	c4 e3 7d 06 ea 31    	vperm2f128 ymm5,ymm0,ymm2,0x31
  bb83b0:	c4 e3 55 0d e4 0a    	vblendpd ymm4,ymm5,ymm4,0xa
  bb83b6:	c4 c1 7d 29 a0 20 ff 	vmovapd YMMWORD PTR [r8-0xe0],ymm4
  bb83bd:	ff ff 
  bb83bf:	49 83 f9 0c          	cmp    r9,0xc
  bb83c3:	0f 84 e7 f1 ff ff    	je     bb75b0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x70>
  bb83c9:	c5 fd 28 25 6f f0 4b 	vmovapd ymm4,YMMWORD PTR [rip+0xffffffffff4bf06f]        # 77440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x48f0>
  bb83d0:	ff 
  bb83d1:	62 f2 dd 28 7f d0    	vpermt2pd ymm2,ymm4,ymm0
  bb83d7:	c4 e3 75 06 c3 31    	vperm2f128 ymm0,ymm1,ymm3,0x31
  bb83dd:	c4 e3 6d 0d c0 0a    	vblendpd ymm0,ymm2,ymm0,0xa
  bb83e3:	c4 c1 7d 29 00       	vmovapd YMMWORD PTR [r8],ymm0
  bb83e8:	e9 c3 f1 ff ff       	jmp    bb75b0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x70>
  bb83ed:	48 8d bc 24 00 0c 00 	lea    rdi,[rsp+0xc00]
  bb83f4:	00 
  bb83f5:	48 83 c2 60          	add    rdx,0x60
  bb83f9:	41 b8 04 00 00 00    	mov    r8d,0x4
  bb83ff:	45 31 db             	xor    r11d,r11d
  bb8402:	c5 fd 28 25 d6 02 4c 	vmovapd ymm4,YMMWORD PTR [rip+0xffffffffff4c02d6]        # 786e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5b90>
  bb8409:	ff 
  bb840a:	c5 fd 28 2d ee f8 4b 	vmovapd ymm5,YMMWORD PTR [rip+0xffffffffff4bf8ee]        # 77d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x51b0>
  bb8411:	ff 
  bb8412:	e9 f6 01 00 00       	jmp    bb860d <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x10cd>
  bb8417:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  bb841e:	00 00 
  bb8420:	62 e1 fd 28 28 fc    	vmovapd ymm23,ymm4
  bb8426:	c5 fd 28 15 12 f2 4b 	vmovapd ymm2,YMMWORD PTR [rip+0xffffffffff4bf212]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  bb842d:	ff 
  bb842e:	c5 7d 28 8c 24 40 02 	vmovapd ymm9,YMMWORD PTR [rsp+0x240]
  bb8435:	00 00 
  bb8437:	62 72 ed 28 7f 4c 24 	vpermt2pd ymm9,ymm2,YMMWORD PTR [rsp+0x120]
  bb843e:	09 
  bb843f:	c4 21 7d 11 14 0e    	vmovupd YMMWORD PTR [rsi+r9*1],ymm10
  bb8445:	c4 21 7d 11 4c 0e 20 	vmovupd YMMWORD PTR [rsi+r9*1+0x20],ymm9
  bb844c:	62 e2 ed 28 7f 54 24 	vpermt2pd ymm18,ymm2,YMMWORD PTR [rsp+0x260]
  bb8453:	13 
  bb8454:	62 21 fd 28 11 64 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xe0],ymm28
  bb845b:	07 
  bb845c:	62 a1 fd 28 11 54 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x100],ymm18
  bb8463:	08 
  bb8464:	c5 fd 28 a4 24 c0 01 	vmovapd ymm4,YMMWORD PTR [rsp+0x1c0]
  bb846b:	00 00 
  bb846d:	62 f2 ed 28 7f 64 24 	vpermt2pd ymm4,ymm2,YMMWORD PTR [rsp+0x100]
  bb8474:	08 
  bb8475:	62 21 fd 28 11 44 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x1c0],ymm24
  bb847c:	0e 
  bb847d:	c4 a1 7d 11 a4 0e e0 	vmovupd YMMWORD PTR [rsi+r9*1+0x1e0],ymm4
  bb8484:	01 00 00 
  bb8487:	c5 fd 28 a4 24 80 00 	vmovapd ymm4,YMMWORD PTR [rsp+0x80]
  bb848e:	00 00 
  bb8490:	62 f2 ed 28 7f e5    	vpermt2pd ymm4,ymm2,ymm5
  bb8496:	c4 a1 7d 11 bc 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x2a0],ymm7
  bb849d:	02 00 00 
  bb84a0:	c4 a1 7d 11 a4 0e c0 	vmovupd YMMWORD PTR [rsi+r9*1+0x2c0],ymm4
  bb84a7:	02 00 00 
  bb84aa:	62 e2 ed 28 7f 74 24 	vpermt2pd ymm22,ymm2,YMMWORD PTR [rsp+0x280]
  bb84b1:	14 
  bb84b2:	62 21 fd 28 11 6c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x380],ymm29
  bb84b9:	1c 
  bb84ba:	62 a1 fd 28 11 74 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x3a0],ymm22
  bb84c1:	1d 
  bb84c2:	c5 fd 28 a4 24 80 01 	vmovapd ymm4,YMMWORD PTR [rsp+0x180]
  bb84c9:	00 00 
  bb84cb:	62 f2 ed 28 7f 64 24 	vpermt2pd ymm4,ymm2,YMMWORD PTR [rsp+0x1a0]
  bb84d2:	0d 
  bb84d3:	c4 21 7d 11 84 0e 60 	vmovupd YMMWORD PTR [rsi+r9*1+0x460],ymm8
  bb84da:	04 00 00 
  bb84dd:	c4 a1 7d 11 a4 0e 80 	vmovupd YMMWORD PTR [rsi+r9*1+0x480],ymm4
  bb84e4:	04 00 00 
  bb84e7:	c5 fd 28 24 24       	vmovapd ymm4,YMMWORD PTR [rsp]
  bb84ec:	62 f2 ed 28 7f 64 24 	vpermt2pd ymm4,ymm2,YMMWORD PTR [rsp+0x60]
  bb84f3:	03 
  bb84f4:	c4 21 7d 11 a4 0e 40 	vmovupd YMMWORD PTR [rsi+r9*1+0x540],ymm12
  bb84fb:	05 00 00 
  bb84fe:	c4 a1 7d 11 a4 0e 60 	vmovupd YMMWORD PTR [rsi+r9*1+0x560],ymm4
  bb8505:	05 00 00 
  bb8508:	62 22 ed 28 7f d5    	vpermt2pd ymm26,ymm2,ymm21
  bb850e:	c4 21 7d 11 b4 0e 20 	vmovupd YMMWORD PTR [rsi+r9*1+0x620],ymm14
  bb8515:	06 00 00 
  bb8518:	62 21 fd 28 11 54 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x640],ymm26
  bb851f:	32 
  bb8520:	62 e2 ed 28 7f 7c 24 	vpermt2pd ymm23,ymm2,YMMWORD PTR [rsp+0x160]
  bb8527:	0b 
  bb8528:	c4 a1 7d 11 9c 0e 00 	vmovupd YMMWORD PTR [rsi+r9*1+0x700],ymm3
  bb852f:	07 00 00 
  bb8532:	62 a1 fd 28 11 7c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x720],ymm23
  bb8539:	39 
  bb853a:	c5 fd 28 4c 24 20    	vmovapd ymm1,YMMWORD PTR [rsp+0x20]
  bb8540:	62 d2 ed 28 7f cd    	vpermt2pd ymm1,ymm2,ymm13
  bb8546:	c4 21 7d 11 bc 0e e0 	vmovupd YMMWORD PTR [rsi+r9*1+0x7e0],ymm15
  bb854d:	07 00 00 
  bb8550:	c4 a1 7d 11 8c 0e 00 	vmovupd YMMWORD PTR [rsi+r9*1+0x800],ymm1
  bb8557:	08 00 00 
  bb855a:	c5 fd 28 8c 24 e0 00 	vmovapd ymm1,YMMWORD PTR [rsp+0xe0]
  bb8561:	00 00 
  bb8563:	62 f2 ed 28 7f 4c 24 	vpermt2pd ymm1,ymm2,YMMWORD PTR [rsp+0x140]
  bb856a:	0a 
  bb856b:	62 a1 fd 28 11 4c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x8c0],ymm17
  bb8572:	46 
  bb8573:	c4 a1 7d 11 8c 0e e0 	vmovupd YMMWORD PTR [rsi+r9*1+0x8e0],ymm1
  bb857a:	08 00 00 
  bb857d:	c5 fd 28 8c 24 a0 00 	vmovapd ymm1,YMMWORD PTR [rsp+0xa0]
  bb8584:	00 00 
  bb8586:	62 f2 ed 28 7f 4c 24 	vpermt2pd ymm1,ymm2,YMMWORD PTR [rsp+0xc0]
  bb858d:	06 
  bb858e:	c4 a1 7d 11 b4 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x9a0],ymm6
  bb8595:	09 00 00 
  bb8598:	c4 a1 7d 11 8c 0e c0 	vmovupd YMMWORD PTR [rsi+r9*1+0x9c0],ymm1
  bb859f:	09 00 00 
  bb85a2:	62 72 ed 28 7f d8    	vpermt2pd ymm11,ymm2,ymm0
  bb85a8:	62 a1 fd 28 11 64 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xa80],ymm20
  bb85af:	54 
  bb85b0:	c4 21 7d 11 9c 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0xaa0],ymm11
  bb85b7:	0a 00 00 
  bb85ba:	62 22 ed 28 7f c8    	vpermt2pd ymm25,ymm2,ymm16
  bb85c0:	62 21 fd 28 11 7c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xb60],ymm31
  bb85c7:	5b 
  bb85c8:	62 21 fd 28 11 4c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xb80],ymm25
  bb85cf:	5c 
  bb85d0:	62 82 ed 28 7f db    	vpermt2pd ymm19,ymm2,ymm27
  bb85d6:	62 21 fd 28 11 74 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xc40],ymm30
  bb85dd:	62 
  bb85de:	62 a1 fd 28 11 5c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xc60],ymm19
  bb85e5:	63 
  bb85e6:	48 83 c7 40          	add    rdi,0x40
  bb85ea:	48 81 c2 c0 03 00 00 	add    rdx,0x3c0
  bb85f1:	4d 89 d3             	mov    r11,r10
  bb85f4:	49 ff c8             	dec    r8
  bb85f7:	c5 fd 28 25 e1 00 4c 	vmovapd ymm4,YMMWORD PTR [rip+0xffffffffff4c00e1]        # 786e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5b90>
  bb85fe:	ff 
  bb85ff:	c5 fd 28 2d f9 f6 4b 	vmovapd ymm5,YMMWORD PTR [rip+0xffffffffff4bf6f9]        # 77d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x51b0>
  bb8606:	ff 
  bb8607:	0f 84 53 0e 00 00    	je     bb9460 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1f20>
  bb860d:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  bb8611:	62 f1 fd 48 11 84 24 	vmovupd ZMMWORD PTR [rsp+0x460],zmm0
  bb8618:	60 04 00 00 
  bb861c:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x440],zmm0
  bb8623:	11 
  bb8624:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x400],zmm0
  bb862b:	10 
  bb862c:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x3c0],zmm0
  bb8633:	0f 
  bb8634:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x380],zmm0
  bb863b:	0e 
  bb863c:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x340],zmm0
  bb8643:	0d 
  bb8644:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x300],zmm0
  bb864b:	0c 
  bb864c:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x2c0],zmm0
  bb8653:	0b 
  bb8654:	62 f1 fd 48 11 84 24 	vmovupd ZMMWORD PTR [rsp+0x660],zmm0
  bb865b:	60 06 00 00 
  bb865f:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x640],zmm0
  bb8666:	19 
  bb8667:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x600],zmm0
  bb866e:	18 
  bb866f:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x5c0],zmm0
  bb8676:	17 
  bb8677:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x580],zmm0
  bb867e:	16 
  bb867f:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x540],zmm0
  bb8686:	15 
  bb8687:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x500],zmm0
  bb868e:	14 
  bb868f:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x4c0],zmm0
  bb8696:	13 
  bb8697:	62 f1 fd 48 11 84 24 	vmovupd ZMMWORD PTR [rsp+0x860],zmm0
  bb869e:	60 08 00 00 
  bb86a2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x840],zmm0
  bb86a9:	21 
  bb86aa:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x800],zmm0
  bb86b1:	20 
  bb86b2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x7c0],zmm0
  bb86b9:	1f 
  bb86ba:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x780],zmm0
  bb86c1:	1e 
  bb86c2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x740],zmm0
  bb86c9:	1d 
  bb86ca:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x700],zmm0
  bb86d1:	1c 
  bb86d2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x6c0],zmm0
  bb86d9:	1b 
  bb86da:	62 f1 fd 48 11 84 24 	vmovupd ZMMWORD PTR [rsp+0xa60],zmm0
  bb86e1:	60 0a 00 00 
  bb86e5:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0xa40],zmm0
  bb86ec:	29 
  bb86ed:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0xa00],zmm0
  bb86f4:	28 
  bb86f5:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x9c0],zmm0
  bb86fc:	27 
  bb86fd:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x980],zmm0
  bb8704:	26 
  bb8705:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x940],zmm0
  bb870c:	25 
  bb870d:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x900],zmm0
  bb8714:	24 
  bb8715:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x8c0],zmm0
  bb871c:	23 
  bb871d:	4d 89 d9             	mov    r9,r11
  bb8720:	49 c1 e1 04          	shl    r9,0x4
  bb8724:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  bb8728:	49 83 fb 0a          	cmp    r11,0xa
  bb872c:	77 0a                	ja     bb8738 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x11f8>
  bb872e:	c4 a1 7d 28 84 0c 20 	vmovapd ymm0,YMMWORD PTR [rsp+r9*1+0xb20]
  bb8735:	0b 00 00 
  bb8738:	4d 8d 53 04          	lea    r10,[r11+0x4]
  bb873c:	c4 a1 7d 28 b4 0c 00 	vmovapd ymm6,YMMWORD PTR [rsp+r9*1+0xb00]
  bb8743:	0b 00 00 
  bb8746:	48 89 fb             	mov    rbx,rdi
  bb8749:	45 31 f6             	xor    r14d,r14d
  bb874c:	eb 60                	jmp    bb87ae <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x126e>
  bb874e:	66 90                	xchg   ax,ax
  bb8750:	c5 fd 28 53 e0       	vmovapd ymm2,YMMWORD PTR [rbx-0x20]
  bb8755:	c5 fd 28 da          	vmovapd ymm3,ymm2
  bb8759:	62 f2 dd 28 7f d9    	vpermt2pd ymm3,ymm4,ymm1
  bb875f:	62 f2 d5 28 7f d1    	vpermt2pd ymm2,ymm5,ymm1
  bb8765:	c4 a1 7d 29 9c 34 e0 	vmovapd YMMWORD PTR [rsp+r14*1+0x2e0],ymm3
  bb876c:	02 00 00 
  bb876f:	c4 a1 7d 29 94 34 e0 	vmovapd YMMWORD PTR [rsp+r14*1+0x4e0],ymm2
  bb8776:	04 00 00 
  bb8779:	c4 a1 7c 10 4c 72 e0 	vmovups ymm1,YMMWORD PTR [rdx+r14*2-0x20]
  bb8780:	c4 a1 7c 29 8c 34 e0 	vmovaps YMMWORD PTR [rsp+r14*1+0x6e0],ymm1
  bb8787:	06 00 00 
  bb878a:	c4 a1 7d 10 0c 72    	vmovupd ymm1,YMMWORD PTR [rdx+r14*2]
  bb8790:	c4 a1 7d 29 8c 34 e0 	vmovapd YMMWORD PTR [rsp+r14*1+0x8e0],ymm1
  bb8797:	08 00 00 
  bb879a:	49 83 c6 20          	add    r14,0x20
  bb879e:	48 81 c3 e0 00 00 00 	add    rbx,0xe0
  bb87a5:	49 81 fe c0 01 00 00 	cmp    r14,0x1c0
  bb87ac:	74 12                	je     bb87c0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1280>
  bb87ae:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  bb87b2:	49 83 fb 0a          	cmp    r11,0xa
  bb87b6:	77 98                	ja     bb8750 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1210>
  bb87b8:	c5 fd 28 0b          	vmovapd ymm1,YMMWORD PTR [rbx]
  bb87bc:	eb 92                	jmp    bb8750 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1210>
  bb87be:	66 90                	xchg   ax,ax
  bb87c0:	c5 fd 28 ce          	vmovapd ymm1,ymm6
  bb87c4:	62 f2 dd 28 7f c8    	vpermt2pd ymm1,ymm4,ymm0
  bb87ca:	c5 fd 29 0c 24       	vmovapd YMMWORD PTR [rsp],ymm1
  bb87cf:	62 f2 d5 28 7f f0    	vpermt2pd ymm6,ymm5,ymm0
  bb87d5:	c5 fd 29 74 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm6
  bb87db:	c5 7d 28 bc 24 e0 06 	vmovapd ymm15,YMMWORD PTR [rsp+0x6e0]
  bb87e2:	00 00 
  bb87e4:	62 e1 fd 28 28 4c 24 	vmovapd ymm17,YMMWORD PTR [rsp+0x700]
  bb87eb:	38 
  bb87ec:	c5 fd 28 ac 24 20 07 	vmovapd ymm5,YMMWORD PTR [rsp+0x720]
  bb87f3:	00 00 
  bb87f5:	c5 7d 28 a4 24 40 07 	vmovapd ymm12,YMMWORD PTR [rsp+0x740]
  bb87fc:	00 00 
  bb87fe:	62 e1 fd 28 28 64 24 	vmovapd ymm20,YMMWORD PTR [rsp+0x2e0]
  bb8805:	17 
  bb8806:	62 61 fd 28 28 44 24 	vmovapd ymm24,YMMWORD PTR [rsp+0x300]
  bb880d:	18 
  bb880e:	c5 fd 28 b4 24 20 03 	vmovapd ymm6,YMMWORD PTR [rsp+0x320]
  bb8815:	00 00 
  bb8817:	62 61 fd 28 28 64 24 	vmovapd ymm28,YMMWORD PTR [rsp+0x900]
  bb881e:	48 
  bb881f:	c5 fd 28 9c 24 20 09 	vmovapd ymm3,YMMWORD PTR [rsp+0x920]
  bb8826:	00 00 
  bb8828:	62 61 fd 28 28 7c 24 	vmovapd ymm31,YMMWORD PTR [rsp+0x500]
  bb882f:	28 
  bb8830:	c5 fd 28 bc 24 20 05 	vmovapd ymm7,YMMWORD PTR [rsp+0x520]
  bb8837:	00 00 
  bb8839:	62 61 fd 28 28 74 24 	vmovapd ymm30,YMMWORD PTR [rsp+0x7a0]
  bb8840:	3d 
  bb8841:	c5 fd 28 a4 24 a0 03 	vmovapd ymm4,YMMWORD PTR [rsp+0x3a0]
  bb8848:	00 00 
  bb884a:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x860]
  bb8851:	43 
  bb8852:	c5 7d 28 9c 24 60 04 	vmovapd ymm11,YMMWORD PTR [rsp+0x460]
  bb8859:	00 00 
  bb885b:	62 e1 fd 28 28 44 24 	vmovapd ymm16,YMMWORD PTR [rsp+0x800]
  bb8862:	40 
  bb8863:	62 61 fd 28 28 5c 24 	vmovapd ymm27,YMMWORD PTR [rsp+0x400]
  bb886a:	20 
  bb886b:	c5 fd 28 8c 24 80 08 	vmovapd ymm1,YMMWORD PTR [rsp+0x880]
  bb8872:	00 00 
  bb8874:	62 61 fd 28 28 6c 24 	vmovapd ymm29,YMMWORD PTR [rsp+0x480]
  bb887b:	24 
  bb887c:	c5 fd 28 84 24 c0 07 	vmovapd ymm0,YMMWORD PTR [rsp+0x7c0]
  bb8883:	00 00 
  bb8885:	c5 7d 28 84 24 c0 03 	vmovapd ymm8,YMMWORD PTR [rsp+0x3c0]
  bb888c:	00 00 
  bb888e:	c5 7d 28 ac 24 60 07 	vmovapd ymm13,YMMWORD PTR [rsp+0x760]
  bb8895:	00 00 
  bb8897:	c5 fd 28 94 24 60 03 	vmovapd ymm2,YMMWORD PTR [rsp+0x360]
  bb889e:	00 00 
  bb88a0:	62 e1 fd 28 28 54 24 	vmovapd ymm18,YMMWORD PTR [rsp+0x7e0]
  bb88a7:	3f 
  bb88a8:	c5 7d 28 b4 24 e0 03 	vmovapd ymm14,YMMWORD PTR [rsp+0x3e0]
  bb88af:	00 00 
  bb88b1:	62 61 fd 28 28 4c 24 	vmovapd ymm25,YMMWORD PTR [rsp+0x780]
  bb88b8:	3c 
  bb88b9:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x380]
  bb88c0:	1c 
  bb88c1:	c5 7d 28 8c 24 40 08 	vmovapd ymm9,YMMWORD PTR [rsp+0x840]
  bb88c8:	00 00 
  bb88ca:	62 e1 fd 28 28 7c 24 	vmovapd ymm23,YMMWORD PTR [rsp+0x440]
  bb88d1:	22 
  bb88d2:	c5 4d 59 d5          	vmulpd ymm10,ymm6,ymm5
  bb88d6:	c4 62 c5 bc d3       	vfnmadd231pd ymm10,ymm7,ymm3
  bb88db:	c5 7d 29 94 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm10
  bb88e2:	00 00 
  bb88e4:	c5 45 59 d5          	vmulpd ymm10,ymm7,ymm5
  bb88e8:	c5 fd 28 ac 24 40 0a 	vmovapd ymm5,YMMWORD PTR [rsp+0xa40]
  bb88ef:	00 00 
  bb88f1:	c4 62 cd b8 d3       	vfmadd231pd ymm10,ymm6,ymm3
  bb88f6:	c5 fd 28 9c 24 40 06 	vmovapd ymm3,YMMWORD PTR [rsp+0x640]
  bb88fd:	00 00 
  bb88ff:	62 c1 c5 20 59 f1    	vmulpd ymm22,ymm23,ymm9
  bb8905:	62 e2 e5 28 bc f5    	vfnmadd231pd ymm22,ymm3,ymm5
  bb890b:	c5 35 59 cb          	vmulpd ymm9,ymm9,ymm3
  bb890f:	c5 fd 28 9c 24 80 09 	vmovapd ymm3,YMMWORD PTR [rsp+0x980]
  bb8916:	00 00 
  bb8918:	62 72 c5 20 b8 cd    	vfmadd231pd ymm9,ymm23,ymm5
  bb891e:	c5 fd 28 ac 24 80 05 	vmovapd ymm5,YMMWORD PTR [rsp+0x580]
  bb8925:	00 00 
  bb8927:	62 81 e5 20 59 f9    	vmulpd ymm23,ymm19,ymm25
  bb892d:	62 e2 d5 28 bc fb    	vfnmadd231pd ymm23,ymm5,ymm3
  bb8933:	62 91 d5 28 59 f1    	vmulpd ymm6,ymm5,ymm25
  bb8939:	c5 fd 28 ac 24 e0 09 	vmovapd ymm5,YMMWORD PTR [rsp+0x9e0]
  bb8940:	00 00 
  bb8942:	62 f2 e5 20 b8 f3    	vfmadd231pd ymm6,ymm19,ymm3
  bb8948:	c5 fd 28 9c 24 e0 05 	vmovapd ymm3,YMMWORD PTR [rsp+0x5e0]
  bb894f:	00 00 
  bb8951:	62 21 8d 28 59 ca    	vmulpd ymm25,ymm14,ymm18
  bb8957:	62 62 e5 28 bc cd    	vfnmadd231pd ymm25,ymm3,ymm5
  bb895d:	62 b1 e5 28 59 fa    	vmulpd ymm7,ymm3,ymm18
  bb8963:	c5 fd 28 9c 24 60 09 	vmovapd ymm3,YMMWORD PTR [rsp+0x960]
  bb896a:	00 00 
  bb896c:	c4 e2 8d b8 fd       	vfmadd231pd ymm7,ymm14,ymm5
  bb8971:	c5 fd 28 ac 24 60 05 	vmovapd ymm5,YMMWORD PTR [rsp+0x560]
  bb8978:	00 00 
  bb897a:	c5 15 59 f2          	vmulpd ymm14,ymm13,ymm2
  bb897e:	c4 62 d5 bc f3       	vfnmadd231pd ymm14,ymm5,ymm3
  bb8983:	62 c1 d5 28 59 ed    	vmulpd ymm21,ymm5,ymm13
  bb8989:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x9c0]
  bb8990:	4e 
  bb8991:	62 e2 ed 28 b8 eb    	vfmadd231pd ymm21,ymm2,ymm3
  bb8997:	c5 fd 28 94 24 c0 05 	vmovapd ymm2,YMMWORD PTR [rsp+0x5c0]
  bb899e:	00 00 
  bb89a0:	c5 3d 59 e8          	vmulpd ymm13,ymm8,ymm0
  bb89a4:	62 32 ed 28 bc eb    	vfnmadd231pd ymm13,ymm2,ymm19
  bb89aa:	62 e1 ed 28 59 d0    	vmulpd ymm18,ymm2,ymm0
  bb89b0:	c5 fd 28 94 24 20 08 	vmovapd ymm2,YMMWORD PTR [rsp+0x820]
  bb89b7:	00 00 
  bb89b9:	62 a2 bd 28 b8 d3    	vfmadd231pd ymm18,ymm8,ymm19
  bb89bf:	c5 fd 28 9c 24 20 04 	vmovapd ymm3,YMMWORD PTR [rsp+0x420]
  bb89c6:	00 00 
  bb89c8:	62 b1 bd 20 59 c1    	vmulpd ymm0,ymm24,ymm17
  bb89ce:	62 92 85 20 bc c4    	vfnmadd231pd ymm0,ymm31,ymm28
  bb89d4:	62 21 85 20 59 f9    	vmulpd ymm31,ymm31,ymm17
  bb89da:	62 e1 fd 28 28 4c 24 	vmovapd ymm17,YMMWORD PTR [rsp+0xa20]
  bb89e1:	51 
  bb89e2:	62 02 bd 20 b8 fc    	vfmadd231pd ymm31,ymm24,ymm28
  bb89e8:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x620]
  bb89ef:	31 
  bb89f0:	c5 65 59 c2          	vmulpd ymm8,ymm3,ymm2
  bb89f4:	62 32 e5 20 bc c1    	vfnmadd231pd ymm8,ymm19,ymm17
  bb89fa:	62 61 e5 20 59 c2    	vmulpd ymm24,ymm19,ymm2
  bb8a00:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0xa80]
  bb8a07:	54 
  bb8a08:	62 22 e5 28 b8 c1    	vfmadd231pd ymm24,ymm3,ymm17
  bb8a0e:	c5 fd 28 9c 24 80 06 	vmovapd ymm3,YMMWORD PTR [rsp+0x680]
  bb8a15:	00 00 
  bb8a17:	62 f1 95 20 59 d1    	vmulpd ymm2,ymm29,ymm1
  bb8a1d:	62 b2 e5 28 bc d3    	vfnmadd231pd ymm2,ymm3,ymm19
  bb8a23:	62 61 e5 28 59 e1    	vmulpd ymm28,ymm3,ymm1
  bb8a29:	c5 fd 28 8c 24 00 0a 	vmovapd ymm1,YMMWORD PTR [rsp+0xa00]
  bb8a30:	00 00 
  bb8a32:	62 22 95 20 b8 e3    	vfmadd231pd ymm28,ymm29,ymm19
  bb8a38:	c5 fd 28 9c 24 00 06 	vmovapd ymm3,YMMWORD PTR [rsp+0x600]
  bb8a3f:	00 00 
  bb8a41:	62 a1 a5 20 59 c8    	vmulpd ymm17,ymm27,ymm16
  bb8a47:	62 e2 e5 28 bc c9    	vfnmadd231pd ymm17,ymm3,ymm1
  bb8a4d:	62 a1 e5 28 59 c0    	vmulpd ymm16,ymm3,ymm16
  bb8a53:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0xa60]
  bb8a5a:	53 
  bb8a5b:	62 e2 a5 20 b8 c1    	vfmadd231pd ymm16,ymm27,ymm1
  bb8a61:	c5 fd 28 8c 24 60 06 	vmovapd ymm1,YMMWORD PTR [rsp+0x660]
  bb8a68:	00 00 
  bb8a6a:	62 91 a5 28 59 da    	vmulpd ymm3,ymm11,ymm26
  bb8a70:	62 b2 f5 28 bc db    	vfnmadd231pd ymm3,ymm1,ymm19
  bb8a76:	62 01 f5 28 59 ea    	vmulpd ymm29,ymm1,ymm26
  bb8a7c:	c5 fd 28 8c 24 a0 09 	vmovapd ymm1,YMMWORD PTR [rsp+0x9a0]
  bb8a83:	00 00 
  bb8a85:	62 22 a5 28 b8 eb    	vfmadd231pd ymm29,ymm11,ymm19
  bb8a8b:	c5 7d 28 9c 24 a0 05 	vmovapd ymm11,YMMWORD PTR [rsp+0x5a0]
  bb8a92:	00 00 
  bb8a94:	62 01 dd 28 59 d6    	vmulpd ymm26,ymm4,ymm30
  bb8a9a:	62 62 a5 28 bc d1    	vfnmadd231pd ymm26,ymm11,ymm1
  bb8aa0:	62 01 a5 28 59 f6    	vmulpd ymm30,ymm11,ymm30
  bb8aa6:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x8e0]
  bb8aad:	47 
  bb8aae:	62 62 dd 28 b8 f1    	vfmadd231pd ymm30,ymm4,ymm1
  bb8ab4:	c5 fd 28 8c 24 e0 04 	vmovapd ymm1,YMMWORD PTR [rsp+0x4e0]
  bb8abb:	00 00 
  bb8abd:	62 51 dd 20 59 df    	vmulpd ymm11,ymm20,ymm15
  bb8ac3:	62 32 f5 28 bc db    	vfnmadd231pd ymm11,ymm1,ymm19
  bb8ac9:	c5 05 59 f9          	vmulpd ymm15,ymm15,ymm1
  bb8acd:	c5 fd 28 8c 24 40 03 	vmovapd ymm1,YMMWORD PTR [rsp+0x340]
  bb8ad4:	00 00 
  bb8ad6:	62 32 dd 20 b8 fb    	vfmadd231pd ymm15,ymm20,ymm19
  bb8adc:	c5 fd 28 a4 24 40 09 	vmovapd ymm4,YMMWORD PTR [rsp+0x940]
  bb8ae3:	00 00 
  bb8ae5:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x540]
  bb8aec:	2a 
  bb8aed:	62 41 f5 28 59 dc    	vmulpd ymm27,ymm1,ymm12
  bb8af3:	62 62 e5 20 bc dc    	vfnmadd231pd ymm27,ymm19,ymm4
  bb8af9:	62 c1 e5 20 59 e4    	vmulpd ymm20,ymm19,ymm12
  bb8aff:	62 e2 f5 28 b8 e4    	vfmadd231pd ymm20,ymm1,ymm4
  bb8b05:	c5 95 58 e0          	vaddpd ymm4,ymm13,ymm0
  bb8b09:	62 81 ed 20 58 df    	vaddpd ymm19,ymm18,ymm31
  bb8b0f:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x280],ymm19
  bb8b16:	14 
  bb8b17:	62 91 ed 20 5c cf    	vsubpd ymm1,ymm18,ymm31
  bb8b1d:	c5 fd 29 8c 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm1
  bb8b24:	00 00 
  bb8b26:	62 91 bd 20 58 ec    	vaddpd ymm5,ymm24,ymm28
  bb8b2c:	c5 fd 29 ac 24 40 01 	vmovapd YMMWORD PTR [rsp+0x140],ymm5
  bb8b33:	00 00 
  bb8b35:	62 91 bd 20 5c cc    	vsubpd ymm1,ymm24,ymm28
  bb8b3b:	c5 fd 29 8c 24 60 02 	vmovapd YMMWORD PTR [rsp+0x260],ymm1
  bb8b42:	00 00 
  bb8b44:	62 81 95 20 58 d6    	vaddpd ymm18,ymm29,ymm30
  bb8b4a:	62 e1 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x160],ymm18
  bb8b51:	0b 
  bb8b52:	62 91 95 20 5c ce    	vsubpd ymm1,ymm29,ymm30
  bb8b58:	c5 fd 29 8c 24 a0 02 	vmovapd YMMWORD PTR [rsp+0x2a0],ymm1
  bb8b5f:	00 00 
  bb8b61:	62 21 85 28 58 fc    	vaddpd ymm31,ymm15,ymm20
  bb8b67:	62 31 85 28 5c fc    	vsubpd ymm15,ymm15,ymm20
  bb8b6d:	c4 41 2d 58 e1       	vaddpd ymm12,ymm10,ymm9
  bb8b72:	c5 7d 29 64 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm12
  bb8b78:	c4 c1 2d 5c c9       	vsubpd ymm1,ymm10,ymm9
  bb8b7d:	c5 fd 29 8c 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm1
  bb8b84:	00 00 
  bb8b86:	c5 4d 58 cf          	vaddpd ymm9,ymm6,ymm7
  bb8b8a:	c5 7d 29 8c 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm9
  bb8b91:	00 00 
  bb8b93:	c5 cd 5c cf          	vsubpd ymm1,ymm6,ymm7
  bb8b97:	c5 fd 29 8c 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm1
  bb8b9e:	00 00 
  bb8ba0:	62 61 bd 28 58 c2    	vaddpd ymm24,ymm8,ymm2
  bb8ba6:	c5 15 5c d0          	vsubpd ymm10,ymm13,ymm0
  bb8baa:	62 01 e5 28 58 ea    	vaddpd ymm29,ymm3,ymm26
  bb8bb0:	c5 bd 5c c2          	vsubpd ymm0,ymm8,ymm2
  bb8bb4:	c5 fd 29 84 24 80 01 	vmovapd YMMWORD PTR [rsp+0x180],ymm0
  bb8bbb:	00 00 
  bb8bbd:	62 01 a5 28 58 e3    	vaddpd ymm28,ymm11,ymm27
  bb8bc3:	62 91 e5 28 5c d2    	vsubpd ymm2,ymm3,ymm26
  bb8bc9:	c5 fd 29 94 24 a0 01 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm2
  bb8bd0:	00 00 
  bb8bd2:	62 e2 fd 28 19 25 7c 	vbroadcastsd ymm20,QWORD PTR [rip+0xffffffffff4bbe7c]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  bb8bd9:	be 4b ff 
  bb8bdc:	62 31 fd 28 28 ec    	vmovapd ymm13,ymm20
  bb8be2:	62 32 e5 20 a8 ed    	vfmadd213pd ymm13,ymm19,ymm21
  bb8be8:	c4 62 7d 19 05 27 c4 	vbroadcastsd ymm8,QWORD PTR [rip+0xffffffffff4bc427]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  bb8bef:	4b ff 
  bb8bf1:	c4 42 d5 bc e8       	vfnmadd231pd ymm13,ymm5,ymm8
  bb8bf6:	62 91 a5 28 5c db    	vsubpd ymm3,ymm11,ymm27
  bb8bfc:	c4 62 7d 19 0d c3 bb 	vbroadcastsd ymm9,QWORD PTR [rip+0xffffffffff4bbbc3]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  bb8c03:	4b ff 
  bb8c05:	c5 b5 59 c0          	vmulpd ymm0,ymm9,ymm0
  bb8c09:	c4 62 7d 19 25 be bf 	vbroadcastsd ymm12,QWORD PTR [rip+0xffffffffff4bbfbe]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  bb8c10:	4b ff 
  bb8c12:	c4 c2 ad b8 c4       	vfmadd231pd ymm0,ymm10,ymm12
  bb8c17:	c5 fd 29 84 24 20 02 	vmovapd YMMWORD PTR [rsp+0x220],ymm0
  bb8c1e:	00 00 
  bb8c20:	62 21 fd 28 28 dc    	vmovapd ymm27,ymm20
  bb8c26:	62 22 ed 20 a8 d8    	vfmadd213pd ymm27,ymm18,ymm16
  bb8c2c:	62 42 85 20 bc d8    	vfnmadd231pd ymm27,ymm31,ymm8
  bb8c32:	c5 b5 59 cb          	vmulpd ymm1,ymm9,ymm3
  bb8c36:	c4 c2 ed b8 cc       	vfmadd231pd ymm1,ymm2,ymm12
  bb8c3b:	c5 fd 29 8c 24 e0 01 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm1
  bb8c42:	00 00 
  bb8c44:	c5 95 5c e8          	vsubpd ymm5,ymm13,ymm0
  bb8c48:	62 f1 a5 20 5c f1    	vsubpd ymm6,ymm27,ymm1
  bb8c4e:	c5 d5 5c c6          	vsubpd ymm0,ymm5,ymm6
  bb8c52:	c5 fd 29 44 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  bb8c58:	c5 d5 58 c6          	vaddpd ymm0,ymm5,ymm6
  bb8c5c:	c5 fd 29 84 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm0
  bb8c63:	00 00 
  bb8c65:	c5 fd 28 84 24 20 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x120]
  bb8c6c:	00 00 
  bb8c6e:	62 21 fd 28 58 f6    	vaddpd ymm30,ymm0,ymm22
  bb8c74:	62 a1 fd 28 5c d6    	vsubpd ymm18,ymm0,ymm22
  bb8c7a:	62 81 c5 20 58 f1    	vaddpd ymm22,ymm23,ymm25
  bb8c80:	62 81 c5 20 5c f9    	vsubpd ymm23,ymm23,ymm25
  bb8c86:	62 b1 fd 28 28 f4    	vmovapd ymm6,ymm20
  bb8c8c:	c4 c2 dd a8 f6       	vfmadd213pd ymm6,ymm4,ymm14
  bb8c91:	62 d2 bd 20 bc f0    	vfnmadd231pd ymm6,ymm24,ymm8
  bb8c97:	c5 fd 28 8c 24 60 02 	vmovapd ymm1,YMMWORD PTR [rsp+0x260]
  bb8c9e:	00 00 
  bb8ca0:	62 41 f5 28 59 d1    	vmulpd ymm26,ymm1,ymm9
  bb8ca6:	c5 fd 28 ac 24 80 00 	vmovapd ymm5,YMMWORD PTR [rsp+0x80]
  bb8cad:	00 00 
  bb8caf:	62 42 d5 28 b8 d4    	vfmadd231pd ymm26,ymm5,ymm12
  bb8cb5:	62 b1 fd 28 28 fc    	vmovapd ymm7,ymm20
  bb8cbb:	62 b2 95 20 a8 f9    	vfmadd213pd ymm7,ymm29,ymm17
  bb8cc1:	62 d2 9d 20 bc f8    	vfnmadd231pd ymm7,ymm28,ymm8
  bb8cc7:	62 c1 85 28 59 d9    	vmulpd ymm19,ymm15,ymm9
  bb8ccd:	c5 fd 28 94 24 a0 02 	vmovapd ymm2,YMMWORD PTR [rsp+0x2a0]
  bb8cd4:	00 00 
  bb8cd6:	62 c2 ed 28 b8 dc    	vfmadd231pd ymm19,ymm2,ymm12
  bb8cdc:	62 11 cd 28 58 da    	vaddpd ymm11,ymm6,ymm26
  bb8ce2:	62 21 c5 28 58 cb    	vaddpd ymm25,ymm7,ymm19
  bb8ce8:	62 91 a5 28 58 c1    	vaddpd ymm0,ymm11,ymm25
  bb8cee:	c5 fd 29 84 24 00 02 	vmovapd YMMWORD PTR [rsp+0x200],ymm0
  bb8cf5:	00 00 
  bb8cf7:	62 91 a5 28 5c c1    	vsubpd ymm0,ymm11,ymm25
  bb8cfd:	c5 fd 29 84 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm0
  bb8d04:	00 00 
  bb8d06:	c5 0d 58 dc          	vaddpd ymm11,ymm14,ymm4
  bb8d0a:	c4 62 bd bc f4       	vfnmadd231pd ymm14,ymm8,ymm4
  bb8d0f:	62 91 a5 28 58 c0    	vaddpd ymm0,ymm11,ymm24
  bb8d15:	c5 fd 29 84 24 c0 01 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm0
  bb8d1c:	00 00 
  bb8d1e:	62 12 dd 20 b8 f0    	vfmadd231pd ymm14,ymm20,ymm24
  bb8d24:	c5 35 59 dd          	vmulpd ymm11,ymm9,ymm5
  bb8d28:	c4 62 9d bc d9       	vfnmadd231pd ymm11,ymm12,ymm1
  bb8d2d:	62 91 f5 20 58 cd    	vaddpd ymm1,ymm17,ymm29
  bb8d33:	62 82 bd 28 bc cd    	vfnmadd231pd ymm17,ymm8,ymm29
  bb8d39:	62 91 f5 28 58 c4    	vaddpd ymm0,ymm1,ymm28
  bb8d3f:	c5 fd 29 84 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm0
  bb8d46:	00 00 
  bb8d48:	62 82 dd 20 b8 cc    	vfmadd231pd ymm17,ymm20,ymm28
  bb8d4e:	62 41 ed 28 59 c1    	vmulpd ymm24,ymm2,ymm9
  bb8d54:	62 42 9d 28 bc c7    	vfnmadd231pd ymm24,ymm12,ymm15
  bb8d5a:	62 b1 fd 28 28 e4    	vmovapd ymm4,ymm20
  bb8d60:	c5 fd 28 04 24       	vmovapd ymm0,YMMWORD PTR [rsp]
  bb8d65:	62 f2 8d 20 a8 e0    	vfmadd213pd ymm4,ymm30,ymm0
  bb8d6b:	62 91 fd 28 58 ce    	vaddpd ymm1,ymm0,ymm30
  bb8d71:	62 92 bd 28 bc c6    	vfnmadd231pd ymm0,ymm8,ymm30
  bb8d77:	62 b1 f5 28 58 ce    	vaddpd ymm1,ymm1,ymm22
  bb8d7d:	c5 fd 29 0c 24       	vmovapd YMMWORD PTR [rsp],ymm1
  bb8d82:	62 d2 cd 20 bc e0    	vfnmadd231pd ymm4,ymm22,ymm8
  bb8d88:	62 b2 dd 20 b8 c6    	vfmadd231pd ymm0,ymm20,ymm22
  bb8d8e:	62 61 fd 28 28 e8    	vmovapd ymm29,ymm0
  bb8d94:	c5 fd 28 8c 24 a0 00 	vmovapd ymm1,YMMWORD PTR [rsp+0xa0]
  bb8d9b:	00 00 
  bb8d9d:	62 41 f5 28 59 e1    	vmulpd ymm28,ymm1,ymm9
  bb8da3:	c5 fd 28 84 24 c0 00 	vmovapd ymm0,YMMWORD PTR [rsp+0xc0]
  bb8daa:	00 00 
  bb8dac:	62 42 fd 28 b8 e4    	vfmadd231pd ymm28,ymm0,ymm12
  bb8db2:	c5 b5 59 e8          	vmulpd ymm5,ymm9,ymm0
  bb8db6:	c4 e2 9d bc e9       	vfnmadd231pd ymm5,ymm12,ymm1
  bb8dbb:	c5 fd 28 84 24 80 02 	vmovapd ymm0,YMMWORD PTR [rsp+0x280]
  bb8dc2:	00 00 
  bb8dc4:	62 e1 d5 20 58 f0    	vaddpd ymm22,ymm21,ymm0
  bb8dca:	62 e2 bd 28 bc e8    	vfnmadd231pd ymm21,ymm8,ymm0
  bb8dd0:	c5 fd 28 84 24 40 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x140]
  bb8dd7:	00 00 
  bb8dd9:	62 61 cd 20 58 c8    	vaddpd ymm25,ymm22,ymm0
  bb8ddf:	62 e2 dd 20 b8 e8    	vfmadd231pd ymm21,ymm20,ymm0
  bb8de5:	62 c1 ad 28 59 f1    	vmulpd ymm22,ymm10,ymm9
  bb8deb:	62 e2 9d 28 bc 74 24 	vfnmadd231pd ymm22,ymm12,YMMWORD PTR [rsp+0x180]
  bb8df2:	0c 
  bb8df3:	c5 fd 28 84 24 60 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x160]
  bb8dfa:	00 00 
  bb8dfc:	62 71 fd 20 58 d0    	vaddpd ymm10,ymm16,ymm0
  bb8e02:	62 e2 bd 28 bc c0    	vfnmadd231pd ymm16,ymm8,ymm0
  bb8e08:	62 11 ad 28 58 d7    	vaddpd ymm10,ymm10,ymm31
  bb8e0e:	62 82 dd 20 b8 c7    	vfmadd231pd ymm16,ymm20,ymm31
  bb8e14:	62 61 b5 28 59 7c 24 	vmulpd ymm31,ymm9,YMMWORD PTR [rsp+0x1a0]
  bb8e1b:	0d 
  bb8e1c:	62 62 9d 28 bc fb    	vfnmadd231pd ymm31,ymm12,ymm3
  bb8e22:	62 b1 d5 20 5c d6    	vsubpd ymm2,ymm21,ymm22
  bb8e28:	62 91 fd 20 5c df    	vsubpd ymm3,ymm16,ymm31
  bb8e2e:	c5 ed 5c c3          	vsubpd ymm0,ymm2,ymm3
  bb8e32:	c5 fd 29 84 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm0
  bb8e39:	00 00 
  bb8e3b:	c5 ed 58 c3          	vaddpd ymm0,ymm2,ymm3
  bb8e3f:	c5 fd 29 84 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm0
  bb8e46:	00 00 
  bb8e48:	62 b1 fd 28 28 c4    	vmovapd ymm0,ymm20
  bb8e4e:	c5 fd 28 4c 24 60    	vmovapd ymm1,YMMWORD PTR [rsp+0x60]
  bb8e54:	c5 fd 28 5c 24 20    	vmovapd ymm3,YMMWORD PTR [rsp+0x20]
  bb8e5a:	c4 e2 e5 a8 c1       	vfmadd213pd ymm0,ymm3,ymm1
  bb8e5f:	c5 e5 58 d1          	vaddpd ymm2,ymm3,ymm1
  bb8e63:	c4 e2 bd bc cb       	vfnmadd231pd ymm1,ymm8,ymm3
  bb8e68:	c5 fd 28 9c 24 e0 00 	vmovapd ymm3,YMMWORD PTR [rsp+0xe0]
  bb8e6f:	00 00 
  bb8e71:	c5 e5 58 d2          	vaddpd ymm2,ymm3,ymm2
  bb8e75:	c4 c2 e5 bc c0       	vfnmadd231pd ymm0,ymm3,ymm8
  bb8e7a:	62 f2 dd 20 b8 cb    	vfmadd231pd ymm1,ymm20,ymm3
  bb8e80:	c5 7d 28 c1          	vmovapd ymm8,ymm1
  bb8e84:	62 d1 c5 20 59 c9    	vmulpd ymm1,ymm23,ymm9
  bb8e8a:	62 d2 ed 20 b8 cc    	vfmadd231pd ymm1,ymm18,ymm12
  bb8e90:	62 c1 ed 20 59 d1    	vmulpd ymm18,ymm18,ymm9
  bb8e96:	62 a2 9d 28 bc d7    	vfnmadd231pd ymm18,ymm12,ymm23
  bb8e9c:	62 c1 8d 28 58 fb    	vaddpd ymm23,ymm14,ymm11
  bb8ea2:	62 01 f5 20 58 f0    	vaddpd ymm30,ymm17,ymm24
  bb8ea8:	62 91 c5 20 58 de    	vaddpd ymm3,ymm23,ymm30
  bb8eae:	c5 fd 29 9c 24 80 01 	vmovapd YMMWORD PTR [rsp+0x180],ymm3
  bb8eb5:	00 00 
  bb8eb7:	62 91 c5 20 5c de    	vsubpd ymm3,ymm23,ymm30
  bb8ebd:	c5 fd 29 9c 24 a0 01 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm3
  bb8ec4:	00 00 
  bb8ec6:	62 f1 95 20 58 dd    	vaddpd ymm3,ymm29,ymm5
  bb8ecc:	c5 fd 29 9c 24 60 01 	vmovapd YMMWORD PTR [rsp+0x160],ymm3
  bb8ed3:	00 00 
  bb8ed5:	62 e1 95 20 5c fd    	vsubpd ymm23,ymm29,ymm5
  bb8edb:	62 41 8d 28 5c eb    	vsubpd ymm29,ymm14,ymm11
  bb8ee1:	62 11 f5 20 5c d8    	vsubpd ymm11,ymm17,ymm24
  bb8ee7:	62 b1 bd 28 5c ea    	vsubpd ymm5,ymm8,ymm18
  bb8eed:	c5 fd 29 ac 24 40 01 	vmovapd YMMWORD PTR [rsp+0x140],ymm5
  bb8ef4:	00 00 
  bb8ef6:	62 c1 ed 20 58 c8    	vaddpd ymm17,ymm18,ymm8
  bb8efc:	62 a1 d5 20 58 ee    	vaddpd ymm21,ymm21,ymm22
  bb8f02:	62 11 fd 20 58 f7    	vaddpd ymm14,ymm16,ymm31
  bb8f08:	62 91 cd 28 5c f2    	vsubpd ymm6,ymm6,ymm26
  bb8f0e:	62 b1 c5 28 5c fb    	vsubpd ymm7,ymm7,ymm19
  bb8f14:	62 11 dd 28 58 cc    	vaddpd ymm9,ymm4,ymm28
  bb8f1a:	62 11 dd 28 5c fc    	vsubpd ymm15,ymm4,ymm28
  bb8f20:	62 e1 95 28 58 54 24 	vaddpd ymm18,ymm13,YMMWORD PTR [rsp+0x220]
  bb8f27:	11 
  bb8f28:	c5 fd 28 9c 24 c0 01 	vmovapd ymm3,YMMWORD PTR [rsp+0x1c0]
  bb8f2f:	00 00 
  bb8f31:	c5 fd 28 a4 24 80 00 	vmovapd ymm4,YMMWORD PTR [rsp+0x80]
  bb8f38:	00 00 
  bb8f3a:	c5 65 58 c4          	vaddpd ymm8,ymm3,ymm4
  bb8f3e:	62 71 a5 20 58 64 24 	vaddpd ymm12,ymm27,YMMWORD PTR [rsp+0x1e0]
  bb8f45:	0f 
  bb8f46:	62 51 ed 20 5c ec    	vsubpd ymm13,ymm18,ymm12
  bb8f4c:	c5 7d 29 6c 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm13
  bb8f52:	62 51 ed 20 58 e4    	vaddpd ymm12,ymm18,ymm12
  bb8f58:	62 e1 fd 28 5c d1    	vsubpd ymm18,ymm0,ymm1
  bb8f5e:	c5 f5 58 c0          	vaddpd ymm0,ymm1,ymm0
  bb8f62:	62 e1 cd 28 58 e7    	vaddpd ymm20,ymm6,ymm7
  bb8f68:	c5 cd 5c cf          	vsubpd ymm1,ymm6,ymm7
  bb8f6c:	c5 fd 29 8c 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm1
  bb8f73:	00 00 
  bb8f75:	c5 fd 28 0c 24       	vmovapd ymm1,YMMWORD PTR [rsp]
  bb8f7a:	c5 bd 58 f1          	vaddpd ymm6,ymm8,ymm1
  bb8f7e:	c5 fd 29 b4 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm6
  bb8f85:	00 00 
  bb8f87:	c4 62 7d 19 2d 08 bb 	vbroadcastsd ymm13,QWORD PTR [rip+0xffffffffff4bbb08]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  bb8f8e:	4b ff 
  bb8f90:	c4 62 95 ac c1       	vfnmadd213pd ymm8,ymm13,ymm1
  bb8f95:	62 d1 b5 20 58 fa    	vaddpd ymm7,ymm25,ymm10
  bb8f9b:	62 41 b5 20 5c da    	vsubpd ymm27,ymm25,ymm10
  bb8fa1:	c5 6d 58 d7          	vaddpd ymm10,ymm2,ymm7
  bb8fa5:	c4 e2 95 ac fa       	vfnmadd213pd ymm7,ymm13,ymm2
  bb8faa:	c5 7d 29 ea          	vmovapd ymm2,ymm13
  bb8fae:	c5 fd 28 8c 24 00 02 	vmovapd ymm1,YMMWORD PTR [rsp+0x200]
  bb8fb5:	00 00 
  bb8fb7:	c4 c2 f5 ac d1       	vfnmadd213pd ymm2,ymm1,ymm9
  bb8fbc:	c5 e5 5c f4          	vsubpd ymm6,ymm3,ymm4
  bb8fc0:	62 c1 fd 28 28 f5    	vmovapd ymm22,ymm13
  bb8fc6:	62 61 fd 28 28 44 24 	vmovapd ymm24,YMMWORD PTR [rsp+0x100]
  bb8fcd:	08 
  bb8fce:	62 a2 bd 20 ac f2    	vfnmadd213pd ymm22,ymm24,ymm18
  bb8fd4:	c5 b5 58 c9          	vaddpd ymm1,ymm9,ymm1
  bb8fd8:	c5 fd 29 4c 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm1
  bb8fde:	c4 41 7d 28 cd       	vmovapd ymm9,ymm13
  bb8fe3:	62 61 fd 28 28 74 24 	vmovapd ymm30,YMMWORD PTR [rsp+0x180]
  bb8fea:	0c 
  bb8feb:	c5 fd 28 9c 24 60 01 	vmovapd ymm3,YMMWORD PTR [rsp+0x160]
  bb8ff2:	00 00 
  bb8ff4:	62 72 8d 20 ac cb    	vfnmadd213pd ymm9,ymm30,ymm3
  bb8ffa:	62 62 fd 28 19 3d 1c 	vbroadcastsd ymm31,QWORD PTR [rip+0xffffffffff4bbc1c]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  bb9001:	bc 4b ff 
  bb9004:	62 e1 85 20 59 5c 24 	vmulpd ymm19,ymm31,YMMWORD PTR [rsp+0xa0]
  bb900b:	05 
  bb900c:	62 91 ed 20 58 c8    	vaddpd ymm1,ymm18,ymm24
  bb9012:	c5 fd 29 0c 24       	vmovapd YMMWORD PTR [rsp],ymm1
  bb9017:	62 b1 b5 28 5c cb    	vsubpd ymm1,ymm9,ymm19
  bb901d:	c5 fd 29 8c 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm1
  bb9024:	00 00 
  bb9026:	62 b1 b5 28 58 cb    	vaddpd ymm1,ymm9,ymm19
  bb902c:	c5 fd 29 8c 24 20 02 	vmovapd YMMWORD PTR [rsp+0x220],ymm1
  bb9033:	00 00 
  bb9035:	c4 41 7d 28 cd       	vmovapd ymm9,ymm13
  bb903a:	c5 fd 28 8c 24 c0 00 	vmovapd ymm1,YMMWORD PTR [rsp+0xc0]
  bb9041:	00 00 
  bb9043:	c4 62 f5 ac cd       	vfnmadd213pd ymm9,ymm1,ymm5
  bb9048:	62 e1 85 20 59 54 24 	vmulpd ymm18,ymm31,YMMWORD PTR [rsp+0x1a0]
  bb904f:	0d 
  bb9050:	62 21 b5 28 58 d2    	vaddpd ymm26,ymm9,ymm18
  bb9056:	62 b1 b5 28 5c e2    	vsubpd ymm4,ymm9,ymm18
  bb905c:	c5 fd 29 a4 24 00 02 	vmovapd YMMWORD PTR [rsp+0x200],ymm4
  bb9063:	00 00 
  bb9065:	62 91 fd 28 28 e5    	vmovapd ymm4,ymm29
  bb906b:	62 41 95 20 58 c3    	vaddpd ymm24,ymm29,ymm11
  bb9071:	62 91 c5 20 58 e8    	vaddpd ymm5,ymm23,ymm24
  bb9077:	62 22 95 28 ac c7    	vfnmadd213pd ymm24,ymm13,ymm23
  bb907d:	62 41 d5 20 58 ce    	vaddpd ymm25,ymm21,ymm14
  bb9083:	62 51 d5 20 5c f6    	vsubpd ymm14,ymm21,ymm14
  bb9089:	62 01 f5 20 58 e9    	vaddpd ymm29,ymm17,ymm25
  bb908f:	62 22 95 28 ac c9    	vfnmadd213pd ymm25,ymm13,ymm17
  bb9095:	c4 c1 5d 5c e3       	vsubpd ymm4,ymm4,ymm11
  bb909a:	62 41 fd 28 28 e5    	vmovapd ymm28,ymm13
  bb90a0:	62 42 dd 20 ac e7    	vfnmadd213pd ymm28,ymm20,ymm15
  bb90a6:	62 31 85 28 58 cc    	vaddpd ymm9,ymm15,ymm20
  bb90ac:	c5 7d 29 8c 24 e0 01 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm9
  bb90b3:	00 00 
  bb90b5:	62 c1 fd 28 28 e5    	vmovapd ymm20,ymm13
  bb90bb:	62 e2 9d 28 ac e0    	vfnmadd213pd ymm20,ymm12,ymm0
  bb90c1:	c5 1d 58 f8          	vaddpd ymm15,ymm12,ymm0
  bb90c5:	62 91 a5 20 59 c7    	vmulpd ymm0,ymm27,ymm31
  bb90cb:	62 e1 bd 28 5c f8    	vsubpd ymm23,ymm8,ymm0
  bb90d1:	62 e1 bd 28 58 c0    	vaddpd ymm16,ymm8,ymm0
  bb90d7:	62 91 cd 28 59 c7    	vmulpd ymm0,ymm6,ymm31
  bb90dd:	c5 45 58 e8          	vaddpd ymm13,ymm7,ymm0
  bb90e1:	62 e1 c5 28 5c c8    	vsubpd ymm17,ymm7,ymm0
  bb90e7:	62 f1 85 20 59 44 24 	vmulpd ymm0,ymm31,YMMWORD PTR [rsp+0x40]
  bb90ee:	02 
  bb90ef:	62 e1 ed 28 58 d8    	vaddpd ymm19,ymm2,ymm0
  bb90f5:	c5 6d 5c c8          	vsubpd ymm9,ymm2,ymm0
  bb90f9:	62 f1 85 20 59 44 24 	vmulpd ymm0,ymm31,YMMWORD PTR [rsp+0x240]
  bb9100:	12 
  bb9101:	62 e1 cd 20 5c d0    	vsubpd ymm18,ymm22,ymm0
  bb9107:	62 61 cd 20 58 d8    	vaddpd ymm27,ymm22,ymm0
  bb910d:	62 f1 85 20 59 7c 24 	vmulpd ymm7,ymm31,YMMWORD PTR [rsp+0x20]
  bb9114:	01 
  bb9115:	62 91 e5 28 58 d6    	vaddpd ymm2,ymm3,ymm30
  bb911b:	c5 fd 29 54 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm2
  bb9121:	62 e1 9d 20 58 ef    	vaddpd ymm21,ymm28,ymm7
  bb9127:	62 f1 85 20 59 5c 24 	vmulpd ymm3,ymm31,YMMWORD PTR [rsp+0xe0]
  bb912e:	07 
  bb912f:	62 91 8d 28 59 f7    	vmulpd ymm6,ymm14,ymm31
  bb9135:	c5 75 58 9c 24 40 01 	vaddpd ymm11,ymm1,YMMWORD PTR [rsp+0x140]
  bb913c:	00 00 
  bb913e:	62 f1 bd 20 5c ce    	vsubpd ymm1,ymm24,ymm6
  bb9144:	62 11 dd 28 59 c7    	vmulpd ymm8,ymm4,ymm31
  bb914a:	62 61 bd 20 58 fe    	vaddpd ymm31,ymm24,ymm6
  bb9150:	62 d1 b5 20 58 e0    	vaddpd ymm4,ymm25,ymm8
  bb9156:	62 41 b5 20 5c f0    	vsubpd ymm30,ymm25,ymm8
  bb915c:	62 e1 dd 20 5c f3    	vsubpd ymm22,ymm20,ymm3
  bb9162:	62 61 9d 20 5c cf    	vsubpd ymm25,ymm28,ymm7
  bb9168:	62 e1 dd 20 58 e3    	vaddpd ymm20,ymm20,ymm3
  bb916e:	c5 fd 28 9c 24 20 01 	vmovapd ymm3,YMMWORD PTR [rsp+0x120]
  bb9175:	00 00 
  bb9177:	c5 fd 29 19          	vmovapd YMMWORD PTR [rcx],ymm3
  bb917b:	c5 7d 29 10          	vmovapd YMMWORD PTR [rax],ymm10
  bb917f:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x2e0],ymm19
  bb9186:	17 
  bb9187:	62 e1 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x4e0],ymm18
  bb918e:	27 
  bb918f:	c5 7d 28 84 24 00 01 	vmovapd ymm8,YMMWORD PTR [rsp+0x100]
  bb9196:	00 00 
  bb9198:	c5 7d 29 84 24 00 03 	vmovapd YMMWORD PTR [rsp+0x300],ymm8
  bb919f:	00 00 
  bb91a1:	62 01 fd 28 28 c2    	vmovapd ymm24,ymm26
  bb91a7:	62 61 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x500],ymm26
  bb91ae:	28 
  bb91af:	c5 fd 29 ac 24 20 03 	vmovapd YMMWORD PTR [rsp+0x320],ymm5
  bb91b6:	00 00 
  bb91b8:	62 61 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x520],ymm29
  bb91bf:	29 
  bb91c0:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x340],ymm21
  bb91c7:	1a 
  bb91c8:	62 e1 fd 28 29 74 24 	vmovapd YMMWORD PTR [rsp+0x540],ymm22
  bb91cf:	2a 
  bb91d0:	62 e1 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x360],ymm23
  bb91d7:	1b 
  bb91d8:	c5 7d 29 ac 24 60 05 	vmovapd YMMWORD PTR [rsp+0x560],ymm13
  bb91df:	00 00 
  bb91e1:	c5 fd 28 74 24 60    	vmovapd ymm6,YMMWORD PTR [rsp+0x60]
  bb91e7:	c5 fd 29 b4 24 80 03 	vmovapd YMMWORD PTR [rsp+0x380],ymm6
  bb91ee:	00 00 
  bb91f0:	c5 7d 28 24 24       	vmovapd ymm12,YMMWORD PTR [rsp]
  bb91f5:	c5 7d 29 a4 24 80 05 	vmovapd YMMWORD PTR [rsp+0x580],ymm12
  bb91fc:	00 00 
  bb91fe:	c5 7d 28 b4 24 20 02 	vmovapd ymm14,YMMWORD PTR [rsp+0x220]
  bb9205:	00 00 
  bb9207:	c5 7d 29 b4 24 a0 03 	vmovapd YMMWORD PTR [rsp+0x3a0],ymm14
  bb920e:	00 00 
  bb9210:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x200]
  bb9217:	10 
  bb9218:	62 61 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x5a0],ymm26
  bb921f:	2d 
  bb9220:	c5 fd 29 8c 24 c0 03 	vmovapd YMMWORD PTR [rsp+0x3c0],ymm1
  bb9227:	00 00 
  bb9229:	c5 fd 29 a4 24 c0 05 	vmovapd YMMWORD PTR [rsp+0x5c0],ymm4
  bb9230:	00 00 
  bb9232:	c5 fd 28 84 24 e0 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x1e0]
  bb9239:	00 00 
  bb923b:	c5 fd 29 84 24 e0 03 	vmovapd YMMWORD PTR [rsp+0x3e0],ymm0
  bb9242:	00 00 
  bb9244:	c5 7d 29 bc 24 e0 05 	vmovapd YMMWORD PTR [rsp+0x5e0],ymm15
  bb924b:	00 00 
  bb924d:	62 e1 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x400],ymm16
  bb9254:	20 
  bb9255:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x600],ymm17
  bb925c:	30 
  bb925d:	c5 7d 29 8c 24 20 04 	vmovapd YMMWORD PTR [rsp+0x420],ymm9
  bb9264:	00 00 
  bb9266:	62 61 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x620],ymm27
  bb926d:	31 
  bb926e:	c5 fd 29 94 24 40 04 	vmovapd YMMWORD PTR [rsp+0x440],ymm2
  bb9275:	00 00 
  bb9277:	c5 7d 29 9c 24 40 06 	vmovapd YMMWORD PTR [rsp+0x640],ymm11
  bb927e:	00 00 
  bb9280:	62 61 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x460],ymm31
  bb9287:	23 
  bb9288:	62 61 fd 28 29 74 24 	vmovapd YMMWORD PTR [rsp+0x660],ymm30
  bb928f:	33 
  bb9290:	62 61 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x480],ymm25
  bb9297:	24 
  bb9298:	62 e1 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x680],ymm20
  bb929f:	34 
  bb92a0:	c5 7d 29 94 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm10
  bb92a7:	00 00 
  bb92a9:	c5 fd 28 15 af d8 4b 	vmovapd ymm2,YMMWORD PTR [rip+0xffffffffff4bd8af]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  bb92b0:	ff 
  bb92b1:	62 72 ed 28 7f d3    	vpermt2pd ymm10,ymm2,ymm3
  bb92b7:	62 21 fd 28 28 e2    	vmovapd ymm28,ymm18
  bb92bd:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x260],ymm19
  bb92c4:	13 
  bb92c5:	62 22 ed 28 7f e3    	vpermt2pd ymm28,ymm2,ymm19
  bb92cb:	62 61 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm24
  bb92d2:	0e 
  bb92d3:	62 42 ed 28 7f c0    	vpermt2pd ymm24,ymm2,ymm8
  bb92d9:	62 61 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x80],ymm29
  bb92e0:	04 
  bb92e1:	62 91 fd 28 28 fd    	vmovapd ymm7,ymm29
  bb92e7:	62 f2 ed 28 7f fd    	vpermt2pd ymm7,ymm2,ymm5
  bb92ed:	62 21 fd 28 28 ee    	vmovapd ymm29,ymm22
  bb92f3:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x280],ymm21
  bb92fa:	14 
  bb92fb:	62 22 ed 28 7f ed    	vpermt2pd ymm29,ymm2,ymm21
  bb9301:	c5 7d 29 ac 24 80 01 	vmovapd YMMWORD PTR [rsp+0x180],ymm13
  bb9308:	00 00 
  bb930a:	c4 41 7d 28 c5       	vmovapd ymm8,ymm13
  bb930f:	62 e1 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm23
  bb9316:	0d 
  bb9317:	62 32 ed 28 7f c7    	vpermt2pd ymm8,ymm2,ymm23
  bb931d:	62 72 ed 28 7f e6    	vpermt2pd ymm12,ymm2,ymm6
  bb9323:	62 c1 fd 28 28 ee    	vmovapd ymm21,ymm14
  bb9329:	62 11 fd 28 28 f2    	vmovapd ymm14,ymm26
  bb932f:	62 32 ed 28 7f f5    	vpermt2pd ymm14,ymm2,ymm21
  bb9335:	c5 fd 28 dc          	vmovapd ymm3,ymm4
  bb9339:	c5 fd 29 8c 24 60 01 	vmovapd YMMWORD PTR [rsp+0x160],ymm1
  bb9340:	00 00 
  bb9342:	62 f2 ed 28 7f d9    	vpermt2pd ymm3,ymm2,ymm1
  bb9348:	c5 7d 29 7c 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm15
  bb934e:	c5 7d 28 e8          	vmovapd ymm13,ymm0
  bb9352:	62 72 ed 28 7f f8    	vpermt2pd ymm15,ymm2,ymm0
  bb9358:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0xe0],ymm17
  bb935f:	07 
  bb9360:	62 e1 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x140],ymm16
  bb9367:	0a 
  bb9368:	62 a2 ed 28 7f c8    	vpermt2pd ymm17,ymm2,ymm16
  bb936e:	62 61 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0xa0],ymm27
  bb9375:	05 
  bb9376:	62 91 fd 28 28 f3    	vmovapd ymm6,ymm27
  bb937c:	62 01 fd 28 28 d9    	vmovapd ymm27,ymm25
  bb9382:	62 01 fd 28 28 ce    	vmovapd ymm25,ymm30
  bb9388:	62 a1 fd 28 28 dc    	vmovapd ymm19,ymm20
  bb938e:	c5 7d 29 8c 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm9
  bb9395:	00 00 
  bb9397:	62 d2 ed 28 7f f1    	vpermt2pd ymm6,ymm2,ymm9
  bb939d:	62 81 fd 28 28 c7    	vmovapd ymm16,ymm31
  bb93a3:	c5 fd 28 44 24 40    	vmovapd ymm0,YMMWORD PTR [rsp+0x40]
  bb93a9:	62 c1 fd 28 28 e3    	vmovapd ymm20,ymm11
  bb93af:	62 e2 ed 28 7f e0    	vpermt2pd ymm20,ymm2,ymm0
  bb93b5:	62 01 fd 28 28 fe    	vmovapd ymm31,ymm30
  bb93bb:	62 22 ed 28 7f f8    	vpermt2pd ymm31,ymm2,ymm16
  bb93c1:	62 21 fd 28 28 f3    	vmovapd ymm30,ymm19
  bb93c7:	62 02 ed 28 7f f3    	vpermt2pd ymm30,ymm2,ymm27
  bb93cd:	49 83 fb 0b          	cmp    r11,0xb
  bb93d1:	0f 82 49 f0 ff ff    	jb     bb8420 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xee0>
  bb93d7:	c4 21 7d 11 14 0e    	vmovupd YMMWORD PTR [rsi+r9*1],ymm10
  bb93dd:	62 21 fd 28 11 64 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xe0],ymm28
  bb93e4:	07 
  bb93e5:	62 21 fd 28 11 44 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x1c0],ymm24
  bb93ec:	0e 
  bb93ed:	c4 a1 7d 11 bc 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x2a0],ymm7
  bb93f4:	02 00 00 
  bb93f7:	62 21 fd 28 11 6c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x380],ymm29
  bb93fe:	1c 
  bb93ff:	c4 21 7d 11 84 0e 60 	vmovupd YMMWORD PTR [rsi+r9*1+0x460],ymm8
  bb9406:	04 00 00 
  bb9409:	c4 21 7d 11 a4 0e 40 	vmovupd YMMWORD PTR [rsi+r9*1+0x540],ymm12
  bb9410:	05 00 00 
  bb9413:	c4 21 7d 11 b4 0e 20 	vmovupd YMMWORD PTR [rsi+r9*1+0x620],ymm14
  bb941a:	06 00 00 
  bb941d:	c4 a1 7d 11 9c 0e 00 	vmovupd YMMWORD PTR [rsi+r9*1+0x700],ymm3
  bb9424:	07 00 00 
  bb9427:	c4 21 7d 11 bc 0e e0 	vmovupd YMMWORD PTR [rsi+r9*1+0x7e0],ymm15
  bb942e:	07 00 00 
  bb9431:	62 a1 fd 28 11 4c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x8c0],ymm17
  bb9438:	46 
  bb9439:	c4 a1 7d 11 b4 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x9a0],ymm6
  bb9440:	09 00 00 
  bb9443:	62 a1 fd 28 11 64 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xa80],ymm20
  bb944a:	54 
  bb944b:	62 21 fd 28 11 7c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xb60],ymm31
  bb9452:	5b 
  bb9453:	62 21 fd 28 11 74 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xc40],ymm30
  bb945a:	62 
  bb945b:	e9 86 f1 ff ff       	jmp    bb85e6 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x10a6>
  bb9460:	48 8d 65 f0          	lea    rsp,[rbp-0x10]
  bb9464:	5b                   	pop    rbx
  bb9465:	41 5e                	pop    r14
  bb9467:	5d                   	pop    rbp
  bb9468:	c5 f8 77             	vzeroupper
  bb946b:	c3                   	ret
