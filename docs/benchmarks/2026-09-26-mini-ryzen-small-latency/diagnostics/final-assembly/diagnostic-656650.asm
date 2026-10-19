
target/small-latency/final-source/executable-1:     file format elf64-x86-64


Disassembly of section .text:

0000000000656650 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::one>:
  656650:	c5 fc 10 07          	vmovups (%rdi),%ymm0
  656654:	c5 fc 10 4f 20       	vmovups 0x20(%rdi),%ymm1
  656659:	c5 fc 10 57 40       	vmovups 0x40(%rdi),%ymm2
  65665e:	c5 fc 10 5f 60       	vmovups 0x60(%rdi),%ymm3
  656663:	c5 fc 10 a7 80 00 00 	vmovups 0x80(%rdi),%ymm4
  65666a:	00 
  65666b:	c5 fc 10 af a0 00 00 	vmovups 0xa0(%rdi),%ymm5
  656672:	00 
  656673:	c5 fc 10 b7 c0 00 00 	vmovups 0xc0(%rdi),%ymm6
  65667a:	00 
  65667b:	c5 fc 10 bf e0 00 00 	vmovups 0xe0(%rdi),%ymm7
  656682:	00 
  656683:	c5 7c c6 c1 dd       	vshufps $0xdd,%ymm1,%ymm0,%ymm8
  656688:	c4 43 fd 01 c0 d8    	vpermpd $0xd8,%ymm8,%ymm8
  65668e:	c5 5c c6 cd dd       	vshufps $0xdd,%ymm5,%ymm4,%ymm9
  656693:	c4 43 fd 01 c9 d8    	vpermpd $0xd8,%ymm9,%ymm9
  656699:	c4 41 3c 58 d1       	vaddps %ymm9,%ymm8,%ymm10
  65669e:	c4 41 3c 5c c1       	vsubps %ymm9,%ymm8,%ymm8
  6566a3:	c5 6c c6 cb dd       	vshufps $0xdd,%ymm3,%ymm2,%ymm9
  6566a8:	c4 43 fd 01 c9 d8    	vpermpd $0xd8,%ymm9,%ymm9
  6566ae:	c5 4c c6 df dd       	vshufps $0xdd,%ymm7,%ymm6,%ymm11
  6566b3:	c4 43 fd 01 db d8    	vpermpd $0xd8,%ymm11,%ymm11
  6566b9:	c4 41 34 58 e3       	vaddps %ymm11,%ymm9,%ymm12
  6566be:	c4 41 34 5c cb       	vsubps %ymm11,%ymm9,%ymm9
  6566c3:	c5 fc c6 c1 88       	vshufps $0x88,%ymm1,%ymm0,%ymm0
  6566c8:	c4 e3 fd 01 c0 d8    	vpermpd $0xd8,%ymm0,%ymm0
  6566ce:	c5 dc c6 cd 88       	vshufps $0x88,%ymm5,%ymm4,%ymm1
  6566d3:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  6566d9:	c5 fc 58 e1          	vaddps %ymm1,%ymm0,%ymm4
  6566dd:	c5 fc 5c c1          	vsubps %ymm1,%ymm0,%ymm0
  6566e1:	c5 ec c6 cb 88       	vshufps $0x88,%ymm3,%ymm2,%ymm1
  6566e6:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  6566ec:	c5 cc c6 d7 88       	vshufps $0x88,%ymm7,%ymm6,%ymm2
  6566f1:	c4 e3 fd 01 d2 d8    	vpermpd $0xd8,%ymm2,%ymm2
  6566f7:	c5 f4 58 da          	vaddps %ymm2,%ymm1,%ymm3
  6566fb:	c5 f4 5c ca          	vsubps %ymm2,%ymm1,%ymm1
  6566ff:	c4 c1 2c 58 d4       	vaddps %ymm12,%ymm10,%ymm2
  656704:	c5 bc 58 e9          	vaddps %ymm1,%ymm8,%ymm5
  656708:	c4 c1 2c 5c f4       	vsubps %ymm12,%ymm10,%ymm6
  65670d:	c5 bc 5c c9          	vsubps %ymm1,%ymm8,%ymm1
  656711:	c5 dc 58 fb          	vaddps %ymm3,%ymm4,%ymm7
  656715:	c4 41 7c 5c c1       	vsubps %ymm9,%ymm0,%ymm8
  65671a:	c5 dc 5c db          	vsubps %ymm3,%ymm4,%ymm3
  65671e:	c5 34 58 d8          	vaddps %ymm0,%ymm9,%ymm11
  656722:	c5 ec 14 e5          	vunpcklps %ymm5,%ymm2,%ymm4
  656726:	c5 ec 15 d5          	vunpckhps %ymm5,%ymm2,%ymm2
  65672a:	c5 cc 14 e9          	vunpcklps %ymm1,%ymm6,%ymm5
  65672e:	c5 cc 15 c9          	vunpckhps %ymm1,%ymm6,%ymm1
  656732:	c5 dd 14 c5          	vunpcklpd %ymm5,%ymm4,%ymm0
  656736:	c5 fc 11 44 24 d8    	vmovups %ymm0,-0x28(%rsp)
  65673c:	c5 ed 14 f1          	vunpcklpd %ymm1,%ymm2,%ymm6
  656740:	c5 5d 15 cd          	vunpckhpd %ymm5,%ymm4,%ymm9
  656744:	c5 ed 15 e1          	vunpckhpd %ymm1,%ymm2,%ymm4
  656748:	c4 c3 7d 19 c2 01    	vextractf128 $0x1,%ymm0,%xmm10
  65674e:	c4 c1 44 14 c8       	vunpcklps %ymm8,%ymm7,%ymm1
  656753:	c4 c1 44 15 d0       	vunpckhps %ymm8,%ymm7,%ymm2
  656758:	c4 c1 64 14 eb       	vunpcklps %ymm11,%ymm3,%ymm5
  65675d:	c4 c1 64 15 fb       	vunpckhps %ymm11,%ymm3,%ymm7
  656762:	c5 f5 14 c5          	vunpcklpd %ymm5,%ymm1,%ymm0
  656766:	c5 fc 11 44 24 a8    	vmovups %ymm0,-0x58(%rsp)
  65676c:	c5 6d 14 df          	vunpcklpd %ymm7,%ymm2,%ymm11
  656770:	c5 75 15 f5          	vunpckhpd %ymm5,%ymm1,%ymm14
  656774:	c5 ed 15 ef          	vunpckhpd %ymm7,%ymm2,%ymm5
  656778:	c4 c3 7d 19 c5 01    	vextractf128 $0x1,%ymm0,%xmm13
  65677e:	c5 f8 28 3d 5a b1 a0 	vmovaps -0x5f4ea6(%rip),%xmm7        # 618e0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1410>
  656785:	ff 
  656786:	c5 88 59 c7          	vmulps %xmm7,%xmm14,%xmm0
  65678a:	c5 f8 28 15 5e a6 a0 	vmovaps -0x5f59a2(%rip),%xmm2        # 60df0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x920>
  656791:	ff 
  656792:	c4 e2 31 b8 c2       	vfmadd231ps %xmm2,%xmm9,%xmm0
  656797:	c5 f8 29 44 24 c8    	vmovaps %xmm0,-0x38(%rsp)
  65679d:	c5 88 59 c2          	vmulps %xmm2,%xmm14,%xmm0
  6567a1:	c4 e2 31 bc c7       	vfnmadd231ps %xmm7,%xmm9,%xmm0
  6567a6:	c5 f8 29 44 24 88    	vmovaps %xmm0,-0x78(%rsp)
  6567ac:	c5 78 28 25 fc 9f a0 	vmovaps -0x5f6004(%rip),%xmm12        # 607b0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x2e0>
  6567b3:	ff 
  6567b4:	c4 c1 20 59 fc       	vmulps %xmm12,%xmm11,%xmm7
  6567b9:	c5 78 28 05 af b0 a0 	vmovaps -0x5f4f51(%rip),%xmm8        # 61870 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x13a0>
  6567c0:	ff 
  6567c1:	c4 c2 49 b8 f8       	vfmadd231ps %xmm8,%xmm6,%xmm7
  6567c6:	c4 c1 20 59 c0       	vmulps %xmm8,%xmm11,%xmm0
  6567cb:	c4 c2 49 bc c4       	vfnmadd231ps %xmm12,%xmm6,%xmm0
  6567d0:	c5 f8 29 44 24 98    	vmovaps %xmm0,-0x68(%rsp)
  6567d6:	c5 78 28 3d c2 af a0 	vmovaps -0x5f503e(%rip),%xmm15        # 617a0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x12d0>
  6567dd:	ff 
  6567de:	c4 41 10 59 e7       	vmulps %xmm15,%xmm13,%xmm12
  6567e3:	c5 f8 28 05 d5 b7 a0 	vmovaps -0x5f482b(%rip),%xmm0        # 61fc0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1af0>
  6567ea:	ff 
  6567eb:	c4 62 29 b8 e0       	vfmadd231ps %xmm0,%xmm10,%xmm12
  6567f0:	c5 10 59 e8          	vmulps %xmm0,%xmm13,%xmm13
  6567f4:	c4 63 7d 19 c8 01    	vextractf128 $0x1,%ymm9,%xmm0
  6567fa:	c4 43 7d 19 f6 01    	vextractf128 $0x1,%ymm14,%xmm14
  656800:	c4 42 29 bc ef       	vfnmadd231ps %xmm15,%xmm10,%xmm13
  656805:	c5 78 28 3d 93 c0 a0 	vmovaps -0x5f3f6d(%rip),%xmm15        # 628a0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x23d0>
  65680c:	ff 
  65680d:	c4 41 08 59 cf       	vmulps %xmm15,%xmm14,%xmm9
  656812:	c5 78 28 15 36 b6 a0 	vmovaps -0x5f49ca(%rip),%xmm10        # 61e50 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1980>
  656819:	ff 
  65681a:	c4 42 79 b8 ca       	vfmadd231ps %xmm10,%xmm0,%xmm9
  65681f:	c4 41 08 59 d2       	vmulps %xmm10,%xmm14,%xmm10
  656824:	c4 e3 7d 19 f6 01    	vextractf128 $0x1,%ymm6,%xmm6
  65682a:	c4 43 7d 19 db 01    	vextractf128 $0x1,%ymm11,%xmm11
  656830:	c4 42 79 bc d7       	vfnmadd231ps %xmm15,%xmm0,%xmm10
  656835:	c5 78 28 35 c3 a5 a0 	vmovaps -0x5f5a3d(%rip),%xmm14        # 60e00 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x930>
  65683c:	ff 
  65683d:	c4 c1 20 59 c6       	vmulps %xmm14,%xmm11,%xmm0
  656842:	c5 78 28 3d 46 9d a0 	vmovaps -0x5f62ba(%rip),%xmm15        # 60590 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0xc0>
  656849:	ff 
  65684a:	c4 c2 49 b8 c7       	vfmadd231ps %xmm15,%xmm6,%xmm0
  65684f:	c4 41 20 59 df       	vmulps %xmm15,%xmm11,%xmm11
  656854:	c4 42 49 bc de       	vfnmadd231ps %xmm14,%xmm6,%xmm11
  656859:	c5 f8 28 35 8f b0 a0 	vmovaps -0x5f4f71(%rip),%xmm6        # 618f0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1420>
  656860:	ff 
  656861:	c5 50 59 fe          	vmulps %xmm6,%xmm5,%xmm15
  656865:	c5 78 28 35 f3 a1 a0 	vmovaps -0x5f5e0d(%rip),%xmm14        # 60a60 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x590>
  65686c:	ff 
  65686d:	c4 42 59 b8 fe       	vfmadd231ps %xmm14,%xmm4,%xmm15
  656872:	c5 08 59 f5          	vmulps %xmm5,%xmm14,%xmm14
  656876:	c4 62 59 bc f6       	vfnmadd231ps %xmm6,%xmm4,%xmm14
  65687b:	c4 e3 7d 19 e4 01    	vextractf128 $0x1,%ymm4,%xmm4
  656881:	c4 e3 7d 19 ed 01    	vextractf128 $0x1,%ymm5,%xmm5
  656887:	c5 f8 28 35 c1 c1 a0 	vmovaps -0x5f3e3f(%rip),%xmm6        # 62a50 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x2580>
  65688e:	ff 
  65688f:	c5 d0 59 ce          	vmulps %xmm6,%xmm5,%xmm1
  656893:	c5 f8 28 15 75 c5 a0 	vmovaps -0x5f3a8b(%rip),%xmm2        # 62e10 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x2940>
  65689a:	ff 
  65689b:	c4 e2 59 b8 ca       	vfmadd231ps %xmm2,%xmm4,%xmm1
  6568a0:	c5 d0 59 d2          	vmulps %xmm2,%xmm5,%xmm2
  6568a4:	c4 e2 59 bc d6       	vfnmadd231ps %xmm6,%xmm4,%xmm2
  6568a9:	c5 fc 10 5c 24 d8    	vmovups -0x28(%rsp),%ymm3
  6568af:	c5 98 58 e3          	vaddps %xmm3,%xmm12,%xmm4
  6568b3:	c4 c1 60 5c ec       	vsubps %xmm12,%xmm3,%xmm5
  6568b8:	c5 c0 58 f0          	vaddps %xmm0,%xmm7,%xmm6
  6568bc:	c5 40 5c c0          	vsubps %xmm0,%xmm7,%xmm8
  6568c0:	c5 fc 10 44 24 a8    	vmovups -0x58(%rsp),%ymm0
  6568c6:	c5 90 58 d8          	vaddps %xmm0,%xmm13,%xmm3
  6568ca:	c4 c1 78 5c fd       	vsubps %xmm13,%xmm0,%xmm7
  6568cf:	c5 78 28 64 24 98    	vmovaps -0x68(%rsp),%xmm12
  6568d5:	c4 c1 18 58 c3       	vaddps %xmm11,%xmm12,%xmm0
  6568da:	c4 41 18 5c db       	vsubps %xmm11,%xmm12,%xmm11
  6568df:	c5 58 58 e6          	vaddps %xmm6,%xmm4,%xmm12
  6568e3:	c5 58 5c ee          	vsubps %xmm6,%xmm4,%xmm13
  6568e7:	c5 a0 58 f5          	vaddps %xmm5,%xmm11,%xmm6
  6568eb:	c4 c1 50 5c e3       	vsubps %xmm11,%xmm5,%xmm4
  6568f0:	c5 f8 29 64 24 d8    	vmovaps %xmm4,-0x28(%rsp)
  6568f6:	c5 60 58 d8          	vaddps %xmm0,%xmm3,%xmm11
  6568fa:	c5 e0 5c e8          	vsubps %xmm0,%xmm3,%xmm5
  6568fe:	c4 c1 40 5c c0       	vsubps %xmm8,%xmm7,%xmm0
  656903:	c5 b8 58 df          	vaddps %xmm7,%xmm8,%xmm3
  656907:	c5 f8 29 5c 24 a8    	vmovaps %xmm3,-0x58(%rsp)
  65690d:	c5 f8 28 64 24 c8    	vmovaps -0x38(%rsp),%xmm4
  656913:	c5 b0 58 dc          	vaddps %xmm4,%xmm9,%xmm3
  656917:	c4 c1 58 5c f9       	vsubps %xmm9,%xmm4,%xmm7
  65691c:	c5 00 58 c1          	vaddps %xmm1,%xmm15,%xmm8
  656920:	c5 80 5c c9          	vsubps %xmm1,%xmm15,%xmm1
  656924:	c5 f8 28 64 24 88    	vmovaps -0x78(%rsp),%xmm4
  65692a:	c5 28 58 cc          	vaddps %xmm4,%xmm10,%xmm9
  65692e:	c4 41 58 5c d2       	vsubps %xmm10,%xmm4,%xmm10
  656933:	c5 08 58 fa          	vaddps %xmm2,%xmm14,%xmm15
  656937:	c5 88 5c d2          	vsubps %xmm2,%xmm14,%xmm2
  65693b:	c5 38 58 f3          	vaddps %xmm3,%xmm8,%xmm14
  65693f:	c4 c1 60 5c d8       	vsubps %xmm8,%xmm3,%xmm3
  656944:	c5 40 58 c2          	vaddps %xmm2,%xmm7,%xmm8
  656948:	c5 c0 5c d2          	vsubps %xmm2,%xmm7,%xmm2
  65694c:	c4 c1 30 58 ff       	vaddps %xmm15,%xmm9,%xmm7
  656951:	c4 41 30 5c cf       	vsubps %xmm15,%xmm9,%xmm9
  656956:	c5 28 5c f9          	vsubps %xmm1,%xmm10,%xmm15
  65695a:	c5 a8 58 c9          	vaddps %xmm1,%xmm10,%xmm1
  65695e:	c4 41 38 58 d7       	vaddps %xmm15,%xmm8,%xmm10
  656963:	c4 41 00 5c c0       	vsubps %xmm8,%xmm15,%xmm8
  656968:	c5 70 5c fa          	vsubps %xmm2,%xmm1,%xmm15
  65696c:	c5 e8 58 c9          	vaddps %xmm1,%xmm2,%xmm1
  656970:	c4 e2 79 18 15 df d6 	vbroadcastss -0x5f2921(%rip),%xmm2        # 64058 <anon.56f030c740cfe29bdd556092304e388a.11.llvm.10694227977887390340+0x74>
  656977:	a0 ff 
  656979:	c5 e0 57 da          	vxorps %xmm2,%xmm3,%xmm3
  65697d:	c5 f0 57 ca          	vxorps %xmm2,%xmm1,%xmm1
  656981:	c4 e2 79 18 15 12 d5 	vbroadcastss -0x5f2aee(%rip),%xmm2        # 63e9c <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x39cc>
  656988:	a0 ff 
  65698a:	c5 28 59 d2          	vmulps %xmm2,%xmm10,%xmm10
  65698e:	c5 38 59 c2          	vmulps %xmm2,%xmm8,%xmm8
  656992:	c5 00 59 fa          	vmulps %xmm2,%xmm15,%xmm15
  656996:	c5 f0 59 ca          	vmulps %xmm2,%xmm1,%xmm1
  65699a:	c4 c1 18 58 d6       	vaddps %xmm14,%xmm12,%xmm2
  65699f:	c4 41 18 5c e6       	vsubps %xmm14,%xmm12,%xmm12
  6569a4:	c5 20 58 f7          	vaddps %xmm7,%xmm11,%xmm14
  6569a8:	c5 a0 5c ff          	vsubps %xmm7,%xmm11,%xmm7
  6569ac:	c5 28 58 de          	vaddps %xmm6,%xmm10,%xmm11
  6569b0:	c4 c1 48 5c e2       	vsubps %xmm10,%xmm6,%xmm4
  6569b5:	c5 f8 29 64 24 88    	vmovaps %xmm4,-0x78(%rsp)
  6569bb:	c5 38 58 d0          	vaddps %xmm0,%xmm8,%xmm10
  6569bf:	c4 c1 78 5c e0       	vsubps %xmm8,%xmm0,%xmm4
  6569c4:	c4 41 10 58 c1       	vaddps %xmm9,%xmm13,%xmm8
  6569c9:	c4 41 10 5c c9       	vsubps %xmm9,%xmm13,%xmm9
  6569ce:	c5 50 58 eb          	vaddps %xmm3,%xmm5,%xmm13
  6569d2:	c5 d0 5c db          	vsubps %xmm3,%xmm5,%xmm3
  6569d6:	c5 f8 28 44 24 d8    	vmovaps -0x28(%rsp),%xmm0
  6569dc:	c5 80 58 e8          	vaddps %xmm0,%xmm15,%xmm5
  6569e0:	c4 41 78 5c ff       	vsubps %xmm15,%xmm0,%xmm15
  6569e5:	c5 f8 28 74 24 a8    	vmovaps -0x58(%rsp),%xmm6
  6569eb:	c5 c8 58 c1          	vaddps %xmm1,%xmm6,%xmm0
  6569ef:	c5 c8 5c f1          	vsubps %xmm1,%xmm6,%xmm6
  6569f3:	c5 88 14 ca          	vunpcklps %xmm2,%xmm14,%xmm1
  6569f7:	c5 88 15 d2          	vunpckhps %xmm2,%xmm14,%xmm2
  6569fb:	c5 f8 11 0e          	vmovups %xmm1,(%rsi)
  6569ff:	c5 f8 11 56 10       	vmovups %xmm2,0x10(%rsi)
  656a04:	c4 c1 28 14 cb       	vunpcklps %xmm11,%xmm10,%xmm1
  656a09:	c4 c1 28 15 d3       	vunpckhps %xmm11,%xmm10,%xmm2
  656a0e:	c5 f8 11 4e 20       	vmovups %xmm1,0x20(%rsi)
  656a13:	c5 f8 11 56 30       	vmovups %xmm2,0x30(%rsi)
  656a18:	c4 c1 10 14 c8       	vunpcklps %xmm8,%xmm13,%xmm1
  656a1d:	c4 c1 10 15 d0       	vunpckhps %xmm8,%xmm13,%xmm2
  656a22:	c5 f8 11 4e 40       	vmovups %xmm1,0x40(%rsi)
  656a27:	c5 f8 11 56 50       	vmovups %xmm2,0x50(%rsi)
  656a2c:	c5 f8 14 cd          	vunpcklps %xmm5,%xmm0,%xmm1
  656a30:	c5 f8 15 c5          	vunpckhps %xmm5,%xmm0,%xmm0
  656a34:	c5 f8 11 4e 60       	vmovups %xmm1,0x60(%rsi)
  656a39:	c5 f8 11 46 70       	vmovups %xmm0,0x70(%rsi)
  656a3e:	c4 c1 40 14 c4       	vunpcklps %xmm12,%xmm7,%xmm0
  656a43:	c4 c1 40 15 cc       	vunpckhps %xmm12,%xmm7,%xmm1
  656a48:	c5 f8 11 86 80 00 00 	vmovups %xmm0,0x80(%rsi)
  656a4f:	00 
  656a50:	c5 f8 11 8e 90 00 00 	vmovups %xmm1,0x90(%rsi)
  656a57:	00 
  656a58:	c5 f8 28 4c 24 88    	vmovaps -0x78(%rsp),%xmm1
  656a5e:	c5 d8 14 c1          	vunpcklps %xmm1,%xmm4,%xmm0
  656a62:	c5 d8 15 c9          	vunpckhps %xmm1,%xmm4,%xmm1
  656a66:	c5 f8 11 86 a0 00 00 	vmovups %xmm0,0xa0(%rsi)
  656a6d:	00 
  656a6e:	c5 f8 11 8e b0 00 00 	vmovups %xmm1,0xb0(%rsi)
  656a75:	00 
  656a76:	c4 c1 60 14 c1       	vunpcklps %xmm9,%xmm3,%xmm0
  656a7b:	c4 c1 60 15 c9       	vunpckhps %xmm9,%xmm3,%xmm1
  656a80:	c5 f8 11 86 c0 00 00 	vmovups %xmm0,0xc0(%rsi)
  656a87:	00 
  656a88:	c5 f8 11 8e d0 00 00 	vmovups %xmm1,0xd0(%rsi)
  656a8f:	00 
  656a90:	c4 c1 48 14 c7       	vunpcklps %xmm15,%xmm6,%xmm0
  656a95:	c4 c1 48 15 cf       	vunpckhps %xmm15,%xmm6,%xmm1
  656a9a:	c5 f8 11 86 e0 00 00 	vmovups %xmm0,0xe0(%rsi)
  656aa1:	00 
  656aa2:	c5 f8 11 8e f0 00 00 	vmovups %xmm1,0xf0(%rsi)
  656aa9:	00 
  656aaa:	c5 f8 77             	vzeroupper
  656aad:	c3                   	ret
  656aae:	cc                   	int3
  656aaf:	cc                   	int3
