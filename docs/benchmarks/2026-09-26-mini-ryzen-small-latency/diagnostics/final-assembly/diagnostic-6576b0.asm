
target/small-latency/final-source/executable-1:     file format elf64-x86-64


Disassembly of section .text:

00000000006576b0 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run>:
  6576b0:	48 85 d2             	test   %rdx,%rdx
  6576b3:	0f 84 a5 04 00 00    	je     657b5e <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run+0x4ae>
  6576b9:	50                   	push   %rax
  6576ba:	31 c0                	xor    %eax,%eax
  6576bc:	0f 1f 40 00          	nopl   0x0(%rax)
  6576c0:	c5 fc 10 04 07       	vmovups (%rdi,%rax,1),%ymm0
  6576c5:	c5 fc 10 4c 07 20    	vmovups 0x20(%rdi,%rax,1),%ymm1
  6576cb:	c5 fc 10 54 07 40    	vmovups 0x40(%rdi,%rax,1),%ymm2
  6576d1:	c5 fc 10 5c 07 60    	vmovups 0x60(%rdi,%rax,1),%ymm3
  6576d7:	c5 fc 10 a4 07 80 00 	vmovups 0x80(%rdi,%rax,1),%ymm4
  6576de:	00 00 
  6576e0:	c5 fc 10 ac 07 a0 00 	vmovups 0xa0(%rdi,%rax,1),%ymm5
  6576e7:	00 00 
  6576e9:	c5 fc 10 b4 07 c0 00 	vmovups 0xc0(%rdi,%rax,1),%ymm6
  6576f0:	00 00 
  6576f2:	c5 fc 10 bc 07 e0 00 	vmovups 0xe0(%rdi,%rax,1),%ymm7
  6576f9:	00 00 
  6576fb:	c5 7c c6 c1 88       	vshufps $0x88,%ymm1,%ymm0,%ymm8
  657700:	c4 43 fd 01 c0 d8    	vpermpd $0xd8,%ymm8,%ymm8
  657706:	c5 5c c6 cd 88       	vshufps $0x88,%ymm5,%ymm4,%ymm9
  65770b:	c4 43 fd 01 c9 d8    	vpermpd $0xd8,%ymm9,%ymm9
  657711:	c4 41 3c 58 d1       	vaddps %ymm9,%ymm8,%ymm10
  657716:	c4 41 3c 5c c1       	vsubps %ymm9,%ymm8,%ymm8
  65771b:	c5 6c c6 cb 88       	vshufps $0x88,%ymm3,%ymm2,%ymm9
  657720:	c4 43 fd 01 c9 d8    	vpermpd $0xd8,%ymm9,%ymm9
  657726:	c5 4c c6 df 88       	vshufps $0x88,%ymm7,%ymm6,%ymm11
  65772b:	c4 43 fd 01 db d8    	vpermpd $0xd8,%ymm11,%ymm11
  657731:	c4 41 34 58 e3       	vaddps %ymm11,%ymm9,%ymm12
  657736:	c4 41 34 5c cb       	vsubps %ymm11,%ymm9,%ymm9
  65773b:	c5 fc c6 c1 dd       	vshufps $0xdd,%ymm1,%ymm0,%ymm0
  657740:	c4 e3 fd 01 c0 d8    	vpermpd $0xd8,%ymm0,%ymm0
  657746:	c5 dc c6 cd dd       	vshufps $0xdd,%ymm5,%ymm4,%ymm1
  65774b:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  657751:	c5 fc 58 e1          	vaddps %ymm1,%ymm0,%ymm4
  657755:	c5 fc 5c c1          	vsubps %ymm1,%ymm0,%ymm0
  657759:	c5 ec c6 cb dd       	vshufps $0xdd,%ymm3,%ymm2,%ymm1
  65775e:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  657764:	c5 cc c6 d7 dd       	vshufps $0xdd,%ymm7,%ymm6,%ymm2
  657769:	c4 e3 fd 01 d2 d8    	vpermpd $0xd8,%ymm2,%ymm2
  65776f:	c5 f4 58 da          	vaddps %ymm2,%ymm1,%ymm3
  657773:	c5 f4 5c ca          	vsubps %ymm2,%ymm1,%ymm1
  657777:	c4 c1 2c 58 d4       	vaddps %ymm12,%ymm10,%ymm2
  65777c:	c5 bc 58 e9          	vaddps %ymm1,%ymm8,%ymm5
  657780:	c4 c1 2c 5c f4       	vsubps %ymm12,%ymm10,%ymm6
  657785:	c5 bc 5c c9          	vsubps %ymm1,%ymm8,%ymm1
  657789:	c5 5c 58 c3          	vaddps %ymm3,%ymm4,%ymm8
  65778d:	c4 41 7c 5c d1       	vsubps %ymm9,%ymm0,%ymm10
  657792:	c5 dc 5c e3          	vsubps %ymm3,%ymm4,%ymm4
  657796:	c5 34 58 d8          	vaddps %ymm0,%ymm9,%ymm11
  65779a:	c5 ec 14 dd          	vunpcklps %ymm5,%ymm2,%ymm3
  65779e:	c5 ec 15 d5          	vunpckhps %ymm5,%ymm2,%ymm2
  6577a2:	c5 cc 14 f9          	vunpcklps %ymm1,%ymm6,%ymm7
  6577a6:	c5 cc 15 c9          	vunpckhps %ymm1,%ymm6,%ymm1
  6577aa:	c5 e5 14 f7          	vunpcklpd %ymm7,%ymm3,%ymm6
  6577ae:	c5 ed 14 e9          	vunpcklpd %ymm1,%ymm2,%ymm5
  6577b2:	c5 65 15 e7          	vunpckhpd %ymm7,%ymm3,%ymm12
  6577b6:	c5 ed 15 d9          	vunpckhpd %ymm1,%ymm2,%ymm3
  6577ba:	c4 c3 7d 19 f1 01    	vextractf128 $0x1,%ymm6,%xmm9
  6577c0:	c4 63 7d 19 e7 01    	vextractf128 $0x1,%ymm12,%xmm7
  6577c6:	c4 e3 7d 19 6c 24 80 	vextractf128 $0x1,%ymm5,-0x80(%rsp)
  6577cd:	01 
  6577ce:	c4 c1 3c 14 ca       	vunpcklps %ymm10,%ymm8,%ymm1
  6577d3:	c4 c1 3c 15 d2       	vunpckhps %ymm10,%ymm8,%ymm2
  6577d8:	c4 41 5c 14 c3       	vunpcklps %ymm11,%ymm4,%ymm8
  6577dd:	c4 41 5c 15 d3       	vunpckhps %ymm11,%ymm4,%ymm10
  6577e2:	c4 c1 75 14 c0       	vunpcklpd %ymm8,%ymm1,%ymm0
  6577e7:	c5 fc 11 44 24 e0    	vmovups %ymm0,-0x20(%rsp)
  6577ed:	c4 41 6d 14 fa       	vunpcklpd %ymm10,%ymm2,%ymm15
  6577f2:	c4 c1 75 15 c8       	vunpckhpd %ymm8,%ymm1,%ymm1
  6577f7:	c4 41 6d 15 c2       	vunpckhpd %ymm10,%ymm2,%ymm8
  6577fc:	c4 c3 7d 19 c6 01    	vextractf128 $0x1,%ymm0,%xmm14
  657802:	c4 e3 7d 19 c8 01    	vextractf128 $0x1,%ymm1,%xmm0
  657808:	c4 43 7d 19 fd 01    	vextractf128 $0x1,%ymm15,%xmm13
  65780e:	c5 f8 28 15 ca a0 a0 	vmovaps -0x5f5f36(%rip),%xmm2        # 618e0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1410>
  657815:	ff 
  657816:	c5 70 59 d2          	vmulps %xmm2,%xmm1,%xmm10
  65781a:	c5 f8 28 25 ce 95 a0 	vmovaps -0x5f6a32(%rip),%xmm4        # 60df0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x920>
  657821:	ff 
  657822:	c4 62 19 b8 d4       	vfmadd231ps %xmm4,%xmm12,%xmm10
  657827:	c5 78 29 54 24 90    	vmovaps %xmm10,-0x70(%rsp)
  65782d:	c5 f0 59 cc          	vmulps %xmm4,%xmm1,%xmm1
  657831:	c4 e2 19 bc ca       	vfnmadd231ps %xmm2,%xmm12,%xmm1
  657836:	c5 f8 29 4c 24 a0    	vmovaps %xmm1,-0x60(%rsp)
  65783c:	c5 f8 28 0d 6c 8f a0 	vmovaps -0x5f7094(%rip),%xmm1        # 607b0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x2e0>
  657843:	ff 
  657844:	c5 00 59 d9          	vmulps %xmm1,%xmm15,%xmm11
  657848:	c5 f8 28 15 20 a0 a0 	vmovaps -0x5f5fe0(%rip),%xmm2        # 61870 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x13a0>
  65784f:	ff 
  657850:	c4 62 51 b8 da       	vfmadd231ps %xmm2,%xmm5,%xmm11
  657855:	c5 00 59 d2          	vmulps %xmm2,%xmm15,%xmm10
  657859:	c4 62 51 bc d1       	vfnmadd231ps %xmm1,%xmm5,%xmm10
  65785e:	c5 f8 28 0d 8a a0 a0 	vmovaps -0x5f5f76(%rip),%xmm1        # 618f0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1420>
  657865:	ff 
  657866:	c5 b8 59 c9          	vmulps %xmm1,%xmm8,%xmm1
  65786a:	c5 f8 28 15 ee 91 a0 	vmovaps -0x5f6e12(%rip),%xmm2        # 60a60 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x590>
  657871:	ff 
  657872:	c4 e2 61 b8 ca       	vfmadd231ps %xmm2,%xmm3,%xmm1
  657877:	c5 f8 29 4c 24 d0    	vmovaps %xmm1,-0x30(%rsp)
  65787d:	c5 f8 28 25 1b 9f a0 	vmovaps -0x5f60e5(%rip),%xmm4        # 617a0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x12d0>
  657884:	ff 
  657885:	c5 08 59 fc          	vmulps %xmm4,%xmm14,%xmm15
  657889:	c5 f8 28 2d 2f a7 a0 	vmovaps -0x5f58d1(%rip),%xmm5        # 61fc0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1af0>
  657890:	ff 
  657891:	c4 62 31 b8 fd       	vfmadd231ps %xmm5,%xmm9,%xmm15
  657896:	c5 08 59 f5          	vmulps %xmm5,%xmm14,%xmm14
  65789a:	c4 42 59 bc f1       	vfnmadd231ps %xmm9,%xmm4,%xmm14
  65789f:	c5 f8 28 25 f9 af a0 	vmovaps -0x5f5007(%rip),%xmm4        # 628a0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x23d0>
  6578a6:	ff 
  6578a7:	c5 78 59 e4          	vmulps %xmm4,%xmm0,%xmm12
  6578ab:	c5 f8 28 2d 9d a5 a0 	vmovaps -0x5f5a63(%rip),%xmm5        # 61e50 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1980>
  6578b2:	ff 
  6578b3:	c4 62 41 b8 e5       	vfmadd231ps %xmm5,%xmm7,%xmm12
  6578b8:	c5 78 59 cd          	vmulps %xmm5,%xmm0,%xmm9
  6578bc:	c4 62 59 bc cf       	vfnmadd231ps %xmm7,%xmm4,%xmm9
  6578c1:	c5 f8 28 25 37 95 a0 	vmovaps -0x5f6ac9(%rip),%xmm4        # 60e00 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x930>
  6578c8:	ff 
  6578c9:	c5 90 59 c4          	vmulps %xmm4,%xmm13,%xmm0
  6578cd:	c5 f8 28 2d bb 8c a0 	vmovaps -0x5f7345(%rip),%xmm5        # 60590 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0xc0>
  6578d4:	ff 
  6578d5:	c5 f8 28 4c 24 80    	vmovaps -0x80(%rsp),%xmm1
  6578db:	c4 e2 71 b8 c5       	vfmadd231ps %xmm5,%xmm1,%xmm0
  6578e0:	c5 90 59 fd          	vmulps %xmm5,%xmm13,%xmm7
  6578e4:	c4 e2 59 bc f9       	vfnmadd231ps %xmm1,%xmm4,%xmm7
  6578e9:	c5 38 59 ea          	vmulps %xmm2,%xmm8,%xmm13
  6578ed:	c4 62 61 bc 2d fa 9f 	vfnmadd231ps -0x5f6006(%rip),%xmm3,%xmm13        # 618f0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1420>
  6578f4:	a0 ff 
  6578f6:	c4 e3 7d 19 db 01    	vextractf128 $0x1,%ymm3,%xmm3
  6578fc:	c4 43 7d 19 c0 01    	vextractf128 $0x1,%ymm8,%xmm8
  657902:	c5 f8 28 15 46 b1 a0 	vmovaps -0x5f4eba(%rip),%xmm2        # 62a50 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x2580>
  657909:	ff 
  65790a:	c5 b8 59 ca          	vmulps %xmm2,%xmm8,%xmm1
  65790e:	c5 f8 28 25 fa b4 a0 	vmovaps -0x5f4b06(%rip),%xmm4        # 62e10 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x2940>
  657915:	ff 
  657916:	c4 e2 61 b8 cc       	vfmadd231ps %xmm4,%xmm3,%xmm1
  65791b:	c5 38 59 c4          	vmulps %xmm4,%xmm8,%xmm8
  65791f:	c4 62 69 bc c3       	vfnmadd231ps %xmm3,%xmm2,%xmm8
  657924:	c5 80 58 de          	vaddps %xmm6,%xmm15,%xmm3
  657928:	c4 c1 48 5c e7       	vsubps %xmm15,%xmm6,%xmm4
  65792d:	c5 a0 58 d0          	vaddps %xmm0,%xmm11,%xmm2
  657931:	c5 a0 5c f0          	vsubps %xmm0,%xmm11,%xmm6
  657935:	c5 fc 10 44 24 e0    	vmovups -0x20(%rsp),%ymm0
  65793b:	c5 08 58 d8          	vaddps %xmm0,%xmm14,%xmm11
  65793f:	c4 c1 78 5c ee       	vsubps %xmm14,%xmm0,%xmm5
  657944:	c5 a8 58 c7          	vaddps %xmm7,%xmm10,%xmm0
  657948:	c5 28 5c d7          	vsubps %xmm7,%xmm10,%xmm10
  65794c:	c5 60 58 fa          	vaddps %xmm2,%xmm3,%xmm15
  657950:	c5 e0 5c d2          	vsubps %xmm2,%xmm3,%xmm2
  657954:	c5 f8 29 54 24 c0    	vmovaps %xmm2,-0x40(%rsp)
  65795a:	c5 a8 58 fc          	vaddps %xmm4,%xmm10,%xmm7
  65795e:	c4 c1 58 5c d2       	vsubps %xmm10,%xmm4,%xmm2
  657963:	c5 f8 29 54 24 e0    	vmovaps %xmm2,-0x20(%rsp)
  657969:	c5 a0 58 d0          	vaddps %xmm0,%xmm11,%xmm2
  65796d:	c5 a0 5c c0          	vsubps %xmm0,%xmm11,%xmm0
  657971:	c5 f8 29 44 24 b0    	vmovaps %xmm0,-0x50(%rsp)
  657977:	c5 50 5c d6          	vsubps %xmm6,%xmm5,%xmm10
  65797b:	c5 d0 58 c6          	vaddps %xmm6,%xmm5,%xmm0
  65797f:	c5 f8 29 44 24 80    	vmovaps %xmm0,-0x80(%rsp)
  657985:	c5 f8 28 5c 24 90    	vmovaps -0x70(%rsp),%xmm3
  65798b:	c5 98 58 c3          	vaddps %xmm3,%xmm12,%xmm0
  65798f:	c4 c1 60 5c e4       	vsubps %xmm12,%xmm3,%xmm4
  657994:	c5 f8 28 5c 24 d0    	vmovaps -0x30(%rsp),%xmm3
  65799a:	c5 e0 58 e9          	vaddps %xmm1,%xmm3,%xmm5
  65799e:	c5 e0 5c c9          	vsubps %xmm1,%xmm3,%xmm1
  6579a2:	c5 f8 28 5c 24 a0    	vmovaps -0x60(%rsp),%xmm3
  6579a8:	c5 b0 58 f3          	vaddps %xmm3,%xmm9,%xmm6
  6579ac:	c4 41 60 5c c9       	vsubps %xmm9,%xmm3,%xmm9
  6579b1:	c4 41 10 58 d8       	vaddps %xmm8,%xmm13,%xmm11
  6579b6:	c4 41 10 5c c0       	vsubps %xmm8,%xmm13,%xmm8
  6579bb:	c5 78 58 e5          	vaddps %xmm5,%xmm0,%xmm12
  6579bf:	c5 f8 5c c5          	vsubps %xmm5,%xmm0,%xmm0
  6579c3:	c5 b8 58 ec          	vaddps %xmm4,%xmm8,%xmm5
  6579c7:	c4 c1 58 5c e0       	vsubps %xmm8,%xmm4,%xmm4
  6579cc:	c5 20 58 c6          	vaddps %xmm6,%xmm11,%xmm8
  6579d0:	c4 c1 48 5c f3       	vsubps %xmm11,%xmm6,%xmm6
  6579d5:	c5 30 5c d9          	vsubps %xmm1,%xmm9,%xmm11
  6579d9:	c5 b0 58 c9          	vaddps %xmm1,%xmm9,%xmm1
  6579dd:	c5 20 58 cd          	vaddps %xmm5,%xmm11,%xmm9
  6579e1:	c5 20 5c dd          	vsubps %xmm5,%xmm11,%xmm11
  6579e5:	c5 70 5c ec          	vsubps %xmm4,%xmm1,%xmm13
  6579e9:	c5 58 58 f1          	vaddps %xmm1,%xmm4,%xmm14
  6579ed:	c4 c1 00 58 cc       	vaddps %xmm12,%xmm15,%xmm1
  6579f2:	c4 c1 00 5c dc       	vsubps %xmm12,%xmm15,%xmm3
  6579f7:	c5 f8 29 5c 24 a0    	vmovaps %xmm3,-0x60(%rsp)
  6579fd:	c5 38 58 fa          	vaddps %xmm2,%xmm8,%xmm15
  657a01:	c4 41 68 5c e0       	vsubps %xmm8,%xmm2,%xmm12
  657a06:	c4 e2 79 18 2d 8d c4 	vbroadcastss -0x5f3b73(%rip),%xmm5        # 63e9c <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x39cc>
  657a0d:	a0 ff 
  657a0f:	c5 b0 59 d5          	vmulps %xmm5,%xmm9,%xmm2
  657a13:	c5 40 58 c2          	vaddps %xmm2,%xmm7,%xmm8
  657a17:	c5 c0 5c d2          	vsubps %xmm2,%xmm7,%xmm2
  657a1b:	c5 f8 29 54 24 90    	vmovaps %xmm2,-0x70(%rsp)
  657a21:	c5 a0 59 e5          	vmulps %xmm5,%xmm11,%xmm4
  657a25:	c5 28 58 cc          	vaddps %xmm4,%xmm10,%xmm9
  657a29:	c5 a8 5c fc          	vsubps %xmm4,%xmm10,%xmm7
  657a2d:	c5 f8 28 54 24 c0    	vmovaps -0x40(%rsp),%xmm2
  657a33:	c5 68 58 d6          	vaddps %xmm6,%xmm2,%xmm10
  657a37:	c5 e8 5c e6          	vsubps %xmm6,%xmm2,%xmm4
  657a3b:	c4 e2 79 18 1d 14 c6 	vbroadcastss -0x5f39ec(%rip),%xmm3        # 64058 <anon.56f030c740cfe29bdd556092304e388a.11.llvm.10694227977887390340+0x74>
  657a42:	a0 ff 
  657a44:	c5 f8 57 c3          	vxorps %xmm3,%xmm0,%xmm0
  657a48:	c5 f8 28 54 24 b0    	vmovaps -0x50(%rsp),%xmm2
  657a4e:	c5 68 58 d8          	vaddps %xmm0,%xmm2,%xmm11
  657a52:	c5 e8 5c f0          	vsubps %xmm0,%xmm2,%xmm6
  657a56:	c5 90 59 c5          	vmulps %xmm5,%xmm13,%xmm0
  657a5a:	c5 f8 28 54 24 e0    	vmovaps -0x20(%rsp),%xmm2
  657a60:	c5 68 58 e8          	vaddps %xmm0,%xmm2,%xmm13
  657a64:	c5 e8 5c d0          	vsubps %xmm0,%xmm2,%xmm2
  657a68:	c5 88 57 db          	vxorps %xmm3,%xmm14,%xmm3
  657a6c:	c5 e0 59 dd          	vmulps %xmm5,%xmm3,%xmm3
  657a70:	c5 f8 28 44 24 80    	vmovaps -0x80(%rsp),%xmm0
  657a76:	c5 78 58 f3          	vaddps %xmm3,%xmm0,%xmm14
  657a7a:	c5 f8 5c db          	vsubps %xmm3,%xmm0,%xmm3
  657a7e:	c4 c1 70 14 c7       	vunpcklps %xmm15,%xmm1,%xmm0
  657a83:	c4 c1 70 15 cf       	vunpckhps %xmm15,%xmm1,%xmm1
  657a88:	c5 f8 11 04 06       	vmovups %xmm0,(%rsi,%rax,1)
  657a8d:	c5 f8 11 4c 06 10    	vmovups %xmm1,0x10(%rsi,%rax,1)
  657a93:	c4 c1 38 14 c1       	vunpcklps %xmm9,%xmm8,%xmm0
  657a98:	c4 c1 38 15 c9       	vunpckhps %xmm9,%xmm8,%xmm1
  657a9d:	c5 f8 11 44 06 20    	vmovups %xmm0,0x20(%rsi,%rax,1)
  657aa3:	c5 f8 11 4c 06 30    	vmovups %xmm1,0x30(%rsi,%rax,1)
  657aa9:	c4 c1 28 14 c3       	vunpcklps %xmm11,%xmm10,%xmm0
  657aae:	c4 c1 28 15 cb       	vunpckhps %xmm11,%xmm10,%xmm1
  657ab3:	c5 f8 11 44 06 40    	vmovups %xmm0,0x40(%rsi,%rax,1)
  657ab9:	c5 f8 11 4c 06 50    	vmovups %xmm1,0x50(%rsi,%rax,1)
  657abf:	c4 c1 10 14 c6       	vunpcklps %xmm14,%xmm13,%xmm0
  657ac4:	c4 c1 10 15 ce       	vunpckhps %xmm14,%xmm13,%xmm1
  657ac9:	c5 f8 11 44 06 60    	vmovups %xmm0,0x60(%rsi,%rax,1)
  657acf:	c5 f8 11 4c 06 70    	vmovups %xmm1,0x70(%rsi,%rax,1)
  657ad5:	c5 f8 28 4c 24 a0    	vmovaps -0x60(%rsp),%xmm1
  657adb:	c4 c1 70 14 c4       	vunpcklps %xmm12,%xmm1,%xmm0
  657ae0:	c4 c1 70 15 cc       	vunpckhps %xmm12,%xmm1,%xmm1
  657ae5:	c5 f8 11 84 06 80 00 	vmovups %xmm0,0x80(%rsi,%rax,1)
  657aec:	00 00 
  657aee:	c5 f8 11 8c 06 90 00 	vmovups %xmm1,0x90(%rsi,%rax,1)
  657af5:	00 00 
  657af7:	c5 f8 28 4c 24 90    	vmovaps -0x70(%rsp),%xmm1
  657afd:	c5 f0 14 c7          	vunpcklps %xmm7,%xmm1,%xmm0
  657b01:	c5 f0 15 cf          	vunpckhps %xmm7,%xmm1,%xmm1
  657b05:	c5 f8 11 84 06 a0 00 	vmovups %xmm0,0xa0(%rsi,%rax,1)
  657b0c:	00 00 
  657b0e:	c5 f8 11 8c 06 b0 00 	vmovups %xmm1,0xb0(%rsi,%rax,1)
  657b15:	00 00 
  657b17:	c5 d8 14 c6          	vunpcklps %xmm6,%xmm4,%xmm0
  657b1b:	c5 d8 15 ce          	vunpckhps %xmm6,%xmm4,%xmm1
  657b1f:	c5 f8 11 84 06 c0 00 	vmovups %xmm0,0xc0(%rsi,%rax,1)
  657b26:	00 00 
  657b28:	c5 f8 11 8c 06 d0 00 	vmovups %xmm1,0xd0(%rsi,%rax,1)
  657b2f:	00 00 
  657b31:	c5 e8 14 c3          	vunpcklps %xmm3,%xmm2,%xmm0
  657b35:	c5 e8 15 cb          	vunpckhps %xmm3,%xmm2,%xmm1
  657b39:	c5 f8 11 84 06 e0 00 	vmovups %xmm0,0xe0(%rsi,%rax,1)
  657b40:	00 00 
  657b42:	c5 f8 11 8c 06 f0 00 	vmovups %xmm1,0xf0(%rsi,%rax,1)
  657b49:	00 00 
  657b4b:	48 05 00 01 00 00    	add    $0x100,%rax
  657b51:	48 ff ca             	dec    %rdx
  657b54:	0f 85 66 fb ff ff    	jne    6576c0 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run+0x10>
  657b5a:	48 83 c4 08          	add    $0x8,%rsp
  657b5e:	c5 f8 77             	vzeroupper
  657b61:	c3                   	ret
  657b62:	cc                   	int3
  657b63:	cc                   	int3
  657b64:	cc                   	int3
  657b65:	cc                   	int3
  657b66:	cc                   	int3
  657b67:	cc                   	int3
  657b68:	cc                   	int3
  657b69:	cc                   	int3
  657b6a:	cc                   	int3
  657b6b:	cc                   	int3
  657b6c:	cc                   	int3
  657b6d:	cc                   	int3
  657b6e:	cc                   	int3
  657b6f:	cc                   	int3
