
target/small-latency/final-source/executable-1:     file format elf64-x86-64


Disassembly of section .text:

0000000000657200 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run>:
  657200:	48 85 d2             	test   %rdx,%rdx
  657203:	0f 84 a1 04 00 00    	je     6576aa <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run+0x4aa>
  657209:	50                   	push   %rax
  65720a:	31 c0                	xor    %eax,%eax
  65720c:	0f 1f 40 00          	nopl   0x0(%rax)
  657210:	c5 fc 10 04 07       	vmovups (%rdi,%rax,1),%ymm0
  657215:	c5 fc 10 4c 07 20    	vmovups 0x20(%rdi,%rax,1),%ymm1
  65721b:	c5 fc 10 54 07 40    	vmovups 0x40(%rdi,%rax,1),%ymm2
  657221:	c5 fc 10 5c 07 60    	vmovups 0x60(%rdi,%rax,1),%ymm3
  657227:	c5 fc 10 a4 07 80 00 	vmovups 0x80(%rdi,%rax,1),%ymm4
  65722e:	00 00 
  657230:	c5 fc 10 ac 07 a0 00 	vmovups 0xa0(%rdi,%rax,1),%ymm5
  657237:	00 00 
  657239:	c5 fc 10 b4 07 c0 00 	vmovups 0xc0(%rdi,%rax,1),%ymm6
  657240:	00 00 
  657242:	c5 fc 10 bc 07 e0 00 	vmovups 0xe0(%rdi,%rax,1),%ymm7
  657249:	00 00 
  65724b:	c5 7c c6 c1 dd       	vshufps $0xdd,%ymm1,%ymm0,%ymm8
  657250:	c4 43 fd 01 c0 d8    	vpermpd $0xd8,%ymm8,%ymm8
  657256:	c5 5c c6 cd dd       	vshufps $0xdd,%ymm5,%ymm4,%ymm9
  65725b:	c4 43 fd 01 c9 d8    	vpermpd $0xd8,%ymm9,%ymm9
  657261:	c4 41 3c 58 d1       	vaddps %ymm9,%ymm8,%ymm10
  657266:	c4 41 3c 5c c1       	vsubps %ymm9,%ymm8,%ymm8
  65726b:	c5 6c c6 cb dd       	vshufps $0xdd,%ymm3,%ymm2,%ymm9
  657270:	c4 43 fd 01 c9 d8    	vpermpd $0xd8,%ymm9,%ymm9
  657276:	c5 4c c6 df dd       	vshufps $0xdd,%ymm7,%ymm6,%ymm11
  65727b:	c4 43 fd 01 db d8    	vpermpd $0xd8,%ymm11,%ymm11
  657281:	c4 41 34 58 e3       	vaddps %ymm11,%ymm9,%ymm12
  657286:	c4 41 34 5c cb       	vsubps %ymm11,%ymm9,%ymm9
  65728b:	c5 fc c6 c1 88       	vshufps $0x88,%ymm1,%ymm0,%ymm0
  657290:	c4 e3 fd 01 c0 d8    	vpermpd $0xd8,%ymm0,%ymm0
  657296:	c5 dc c6 cd 88       	vshufps $0x88,%ymm5,%ymm4,%ymm1
  65729b:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  6572a1:	c5 fc 58 e1          	vaddps %ymm1,%ymm0,%ymm4
  6572a5:	c5 fc 5c c1          	vsubps %ymm1,%ymm0,%ymm0
  6572a9:	c5 ec c6 cb 88       	vshufps $0x88,%ymm3,%ymm2,%ymm1
  6572ae:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  6572b4:	c5 cc c6 d7 88       	vshufps $0x88,%ymm7,%ymm6,%ymm2
  6572b9:	c4 e3 fd 01 d2 d8    	vpermpd $0xd8,%ymm2,%ymm2
  6572bf:	c5 f4 58 da          	vaddps %ymm2,%ymm1,%ymm3
  6572c3:	c5 f4 5c ca          	vsubps %ymm2,%ymm1,%ymm1
  6572c7:	c4 c1 2c 58 d4       	vaddps %ymm12,%ymm10,%ymm2
  6572cc:	c5 bc 58 e9          	vaddps %ymm1,%ymm8,%ymm5
  6572d0:	c4 c1 2c 5c f4       	vsubps %ymm12,%ymm10,%ymm6
  6572d5:	c5 bc 5c c9          	vsubps %ymm1,%ymm8,%ymm1
  6572d9:	c5 5c 58 c3          	vaddps %ymm3,%ymm4,%ymm8
  6572dd:	c4 41 7c 5c d1       	vsubps %ymm9,%ymm0,%ymm10
  6572e2:	c5 dc 5c e3          	vsubps %ymm3,%ymm4,%ymm4
  6572e6:	c5 34 58 d8          	vaddps %ymm0,%ymm9,%ymm11
  6572ea:	c5 ec 14 dd          	vunpcklps %ymm5,%ymm2,%ymm3
  6572ee:	c5 ec 15 d5          	vunpckhps %ymm5,%ymm2,%ymm2
  6572f2:	c5 cc 14 f9          	vunpcklps %ymm1,%ymm6,%ymm7
  6572f6:	c5 cc 15 c9          	vunpckhps %ymm1,%ymm6,%ymm1
  6572fa:	c5 e5 14 f7          	vunpcklpd %ymm7,%ymm3,%ymm6
  6572fe:	c5 ed 14 e9          	vunpcklpd %ymm1,%ymm2,%ymm5
  657302:	c5 65 15 e7          	vunpckhpd %ymm7,%ymm3,%ymm12
  657306:	c5 ed 15 d9          	vunpckhpd %ymm1,%ymm2,%ymm3
  65730a:	c4 c3 7d 19 f1 01    	vextractf128 $0x1,%ymm6,%xmm9
  657310:	c4 63 7d 19 e7 01    	vextractf128 $0x1,%ymm12,%xmm7
  657316:	c4 e3 7d 19 6c 24 80 	vextractf128 $0x1,%ymm5,-0x80(%rsp)
  65731d:	01 
  65731e:	c4 c1 3c 14 ca       	vunpcklps %ymm10,%ymm8,%ymm1
  657323:	c4 c1 3c 15 d2       	vunpckhps %ymm10,%ymm8,%ymm2
  657328:	c4 41 5c 14 c3       	vunpcklps %ymm11,%ymm4,%ymm8
  65732d:	c4 41 5c 15 d3       	vunpckhps %ymm11,%ymm4,%ymm10
  657332:	c4 c1 75 14 c0       	vunpcklpd %ymm8,%ymm1,%ymm0
  657337:	c5 fc 11 44 24 e0    	vmovups %ymm0,-0x20(%rsp)
  65733d:	c4 41 6d 14 fa       	vunpcklpd %ymm10,%ymm2,%ymm15
  657342:	c4 c1 75 15 c8       	vunpckhpd %ymm8,%ymm1,%ymm1
  657347:	c4 41 6d 15 c2       	vunpckhpd %ymm10,%ymm2,%ymm8
  65734c:	c4 c3 7d 19 c6 01    	vextractf128 $0x1,%ymm0,%xmm14
  657352:	c4 e3 7d 19 c8 01    	vextractf128 $0x1,%ymm1,%xmm0
  657358:	c4 43 7d 19 fd 01    	vextractf128 $0x1,%ymm15,%xmm13
  65735e:	c5 f8 28 15 7a a5 a0 	vmovaps -0x5f5a86(%rip),%xmm2        # 618e0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1410>
  657365:	ff 
  657366:	c5 70 59 d2          	vmulps %xmm2,%xmm1,%xmm10
  65736a:	c5 f8 28 25 7e 9a a0 	vmovaps -0x5f6582(%rip),%xmm4        # 60df0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x920>
  657371:	ff 
  657372:	c4 62 19 b8 d4       	vfmadd231ps %xmm4,%xmm12,%xmm10
  657377:	c5 78 29 54 24 90    	vmovaps %xmm10,-0x70(%rsp)
  65737d:	c5 f0 59 cc          	vmulps %xmm4,%xmm1,%xmm1
  657381:	c4 e2 19 bc ca       	vfnmadd231ps %xmm2,%xmm12,%xmm1
  657386:	c5 f8 29 4c 24 a0    	vmovaps %xmm1,-0x60(%rsp)
  65738c:	c5 f8 28 0d 1c 94 a0 	vmovaps -0x5f6be4(%rip),%xmm1        # 607b0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x2e0>
  657393:	ff 
  657394:	c5 00 59 d9          	vmulps %xmm1,%xmm15,%xmm11
  657398:	c5 f8 28 15 d0 a4 a0 	vmovaps -0x5f5b30(%rip),%xmm2        # 61870 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x13a0>
  65739f:	ff 
  6573a0:	c4 62 51 b8 da       	vfmadd231ps %xmm2,%xmm5,%xmm11
  6573a5:	c5 00 59 d2          	vmulps %xmm2,%xmm15,%xmm10
  6573a9:	c4 62 51 bc d1       	vfnmadd231ps %xmm1,%xmm5,%xmm10
  6573ae:	c5 f8 28 0d 3a a5 a0 	vmovaps -0x5f5ac6(%rip),%xmm1        # 618f0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1420>
  6573b5:	ff 
  6573b6:	c5 b8 59 c9          	vmulps %xmm1,%xmm8,%xmm1
  6573ba:	c5 f8 28 15 9e 96 a0 	vmovaps -0x5f6962(%rip),%xmm2        # 60a60 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x590>
  6573c1:	ff 
  6573c2:	c4 e2 61 b8 ca       	vfmadd231ps %xmm2,%xmm3,%xmm1
  6573c7:	c5 f8 29 4c 24 d0    	vmovaps %xmm1,-0x30(%rsp)
  6573cd:	c5 f8 28 25 cb a3 a0 	vmovaps -0x5f5c35(%rip),%xmm4        # 617a0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x12d0>
  6573d4:	ff 
  6573d5:	c5 08 59 fc          	vmulps %xmm4,%xmm14,%xmm15
  6573d9:	c5 f8 28 2d df ab a0 	vmovaps -0x5f5421(%rip),%xmm5        # 61fc0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1af0>
  6573e0:	ff 
  6573e1:	c4 62 31 b8 fd       	vfmadd231ps %xmm5,%xmm9,%xmm15
  6573e6:	c5 08 59 f5          	vmulps %xmm5,%xmm14,%xmm14
  6573ea:	c4 42 59 bc f1       	vfnmadd231ps %xmm9,%xmm4,%xmm14
  6573ef:	c5 f8 28 25 a9 b4 a0 	vmovaps -0x5f4b57(%rip),%xmm4        # 628a0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x23d0>
  6573f6:	ff 
  6573f7:	c5 78 59 e4          	vmulps %xmm4,%xmm0,%xmm12
  6573fb:	c5 f8 28 2d 4d aa a0 	vmovaps -0x5f55b3(%rip),%xmm5        # 61e50 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1980>
  657402:	ff 
  657403:	c4 62 41 b8 e5       	vfmadd231ps %xmm5,%xmm7,%xmm12
  657408:	c5 78 59 cd          	vmulps %xmm5,%xmm0,%xmm9
  65740c:	c4 62 59 bc cf       	vfnmadd231ps %xmm7,%xmm4,%xmm9
  657411:	c5 f8 28 25 e7 99 a0 	vmovaps -0x5f6619(%rip),%xmm4        # 60e00 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x930>
  657418:	ff 
  657419:	c5 90 59 c4          	vmulps %xmm4,%xmm13,%xmm0
  65741d:	c5 f8 28 2d 6b 91 a0 	vmovaps -0x5f6e95(%rip),%xmm5        # 60590 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0xc0>
  657424:	ff 
  657425:	c5 f8 28 4c 24 80    	vmovaps -0x80(%rsp),%xmm1
  65742b:	c4 e2 71 b8 c5       	vfmadd231ps %xmm5,%xmm1,%xmm0
  657430:	c5 90 59 fd          	vmulps %xmm5,%xmm13,%xmm7
  657434:	c4 e2 59 bc f9       	vfnmadd231ps %xmm1,%xmm4,%xmm7
  657439:	c5 38 59 ea          	vmulps %xmm2,%xmm8,%xmm13
  65743d:	c4 62 61 bc 2d aa a4 	vfnmadd231ps -0x5f5b56(%rip),%xmm3,%xmm13        # 618f0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1420>
  657444:	a0 ff 
  657446:	c4 e3 7d 19 db 01    	vextractf128 $0x1,%ymm3,%xmm3
  65744c:	c4 43 7d 19 c0 01    	vextractf128 $0x1,%ymm8,%xmm8
  657452:	c5 f8 28 15 f6 b5 a0 	vmovaps -0x5f4a0a(%rip),%xmm2        # 62a50 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x2580>
  657459:	ff 
  65745a:	c5 b8 59 ca          	vmulps %xmm2,%xmm8,%xmm1
  65745e:	c5 f8 28 25 aa b9 a0 	vmovaps -0x5f4656(%rip),%xmm4        # 62e10 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x2940>
  657465:	ff 
  657466:	c4 e2 61 b8 cc       	vfmadd231ps %xmm4,%xmm3,%xmm1
  65746b:	c5 38 59 c4          	vmulps %xmm4,%xmm8,%xmm8
  65746f:	c4 62 69 bc c3       	vfnmadd231ps %xmm3,%xmm2,%xmm8
  657474:	c5 80 58 de          	vaddps %xmm6,%xmm15,%xmm3
  657478:	c4 c1 48 5c e7       	vsubps %xmm15,%xmm6,%xmm4
  65747d:	c5 a0 58 d0          	vaddps %xmm0,%xmm11,%xmm2
  657481:	c5 a0 5c f0          	vsubps %xmm0,%xmm11,%xmm6
  657485:	c5 fc 10 44 24 e0    	vmovups -0x20(%rsp),%ymm0
  65748b:	c5 08 58 d8          	vaddps %xmm0,%xmm14,%xmm11
  65748f:	c4 c1 78 5c ee       	vsubps %xmm14,%xmm0,%xmm5
  657494:	c5 a8 58 c7          	vaddps %xmm7,%xmm10,%xmm0
  657498:	c5 28 5c d7          	vsubps %xmm7,%xmm10,%xmm10
  65749c:	c5 60 58 fa          	vaddps %xmm2,%xmm3,%xmm15
  6574a0:	c5 e0 5c d2          	vsubps %xmm2,%xmm3,%xmm2
  6574a4:	c5 f8 29 54 24 c0    	vmovaps %xmm2,-0x40(%rsp)
  6574aa:	c5 a8 58 fc          	vaddps %xmm4,%xmm10,%xmm7
  6574ae:	c4 c1 58 5c d2       	vsubps %xmm10,%xmm4,%xmm2
  6574b3:	c5 f8 29 54 24 e0    	vmovaps %xmm2,-0x20(%rsp)
  6574b9:	c5 a0 58 d0          	vaddps %xmm0,%xmm11,%xmm2
  6574bd:	c5 a0 5c c0          	vsubps %xmm0,%xmm11,%xmm0
  6574c1:	c5 f8 29 44 24 b0    	vmovaps %xmm0,-0x50(%rsp)
  6574c7:	c5 50 5c d6          	vsubps %xmm6,%xmm5,%xmm10
  6574cb:	c5 d0 58 c6          	vaddps %xmm6,%xmm5,%xmm0
  6574cf:	c5 f8 29 44 24 80    	vmovaps %xmm0,-0x80(%rsp)
  6574d5:	c5 f8 28 5c 24 90    	vmovaps -0x70(%rsp),%xmm3
  6574db:	c5 98 58 c3          	vaddps %xmm3,%xmm12,%xmm0
  6574df:	c4 c1 60 5c e4       	vsubps %xmm12,%xmm3,%xmm4
  6574e4:	c5 f8 28 5c 24 d0    	vmovaps -0x30(%rsp),%xmm3
  6574ea:	c5 e0 58 e9          	vaddps %xmm1,%xmm3,%xmm5
  6574ee:	c5 e0 5c c9          	vsubps %xmm1,%xmm3,%xmm1
  6574f2:	c5 f8 28 5c 24 a0    	vmovaps -0x60(%rsp),%xmm3
  6574f8:	c5 b0 58 f3          	vaddps %xmm3,%xmm9,%xmm6
  6574fc:	c4 41 60 5c c9       	vsubps %xmm9,%xmm3,%xmm9
  657501:	c4 41 10 58 d8       	vaddps %xmm8,%xmm13,%xmm11
  657506:	c4 41 10 5c c0       	vsubps %xmm8,%xmm13,%xmm8
  65750b:	c5 78 58 e5          	vaddps %xmm5,%xmm0,%xmm12
  65750f:	c5 f8 5c c5          	vsubps %xmm5,%xmm0,%xmm0
  657513:	c5 b8 58 ec          	vaddps %xmm4,%xmm8,%xmm5
  657517:	c4 c1 58 5c e0       	vsubps %xmm8,%xmm4,%xmm4
  65751c:	c5 20 58 c6          	vaddps %xmm6,%xmm11,%xmm8
  657520:	c4 c1 48 5c f3       	vsubps %xmm11,%xmm6,%xmm6
  657525:	c5 30 5c d9          	vsubps %xmm1,%xmm9,%xmm11
  657529:	c5 b0 58 c9          	vaddps %xmm1,%xmm9,%xmm1
  65752d:	c5 20 58 cd          	vaddps %xmm5,%xmm11,%xmm9
  657531:	c5 20 5c dd          	vsubps %xmm5,%xmm11,%xmm11
  657535:	c5 70 5c ec          	vsubps %xmm4,%xmm1,%xmm13
  657539:	c5 58 58 f1          	vaddps %xmm1,%xmm4,%xmm14
  65753d:	c4 c1 00 58 cc       	vaddps %xmm12,%xmm15,%xmm1
  657542:	c4 c1 00 5c dc       	vsubps %xmm12,%xmm15,%xmm3
  657547:	c5 f8 29 5c 24 a0    	vmovaps %xmm3,-0x60(%rsp)
  65754d:	c5 38 58 fa          	vaddps %xmm2,%xmm8,%xmm15
  657551:	c4 41 68 5c e0       	vsubps %xmm8,%xmm2,%xmm12
  657556:	c4 e2 79 18 2d 3d c9 	vbroadcastss -0x5f36c3(%rip),%xmm5        # 63e9c <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x39cc>
  65755d:	a0 ff 
  65755f:	c5 b0 59 d5          	vmulps %xmm5,%xmm9,%xmm2
  657563:	c5 40 58 c2          	vaddps %xmm2,%xmm7,%xmm8
  657567:	c5 c0 5c d2          	vsubps %xmm2,%xmm7,%xmm2
  65756b:	c5 f8 29 54 24 90    	vmovaps %xmm2,-0x70(%rsp)
  657571:	c5 a0 59 e5          	vmulps %xmm5,%xmm11,%xmm4
  657575:	c5 28 58 cc          	vaddps %xmm4,%xmm10,%xmm9
  657579:	c5 a8 5c fc          	vsubps %xmm4,%xmm10,%xmm7
  65757d:	c5 f8 28 54 24 c0    	vmovaps -0x40(%rsp),%xmm2
  657583:	c5 68 58 d6          	vaddps %xmm6,%xmm2,%xmm10
  657587:	c5 e8 5c e6          	vsubps %xmm6,%xmm2,%xmm4
  65758b:	c4 e2 79 18 1d c4 ca 	vbroadcastss -0x5f353c(%rip),%xmm3        # 64058 <anon.56f030c740cfe29bdd556092304e388a.11.llvm.10694227977887390340+0x74>
  657592:	a0 ff 
  657594:	c5 f8 57 c3          	vxorps %xmm3,%xmm0,%xmm0
  657598:	c5 f8 28 54 24 b0    	vmovaps -0x50(%rsp),%xmm2
  65759e:	c5 68 58 d8          	vaddps %xmm0,%xmm2,%xmm11
  6575a2:	c5 e8 5c f0          	vsubps %xmm0,%xmm2,%xmm6
  6575a6:	c5 90 59 c5          	vmulps %xmm5,%xmm13,%xmm0
  6575aa:	c5 f8 28 54 24 e0    	vmovaps -0x20(%rsp),%xmm2
  6575b0:	c5 68 58 e8          	vaddps %xmm0,%xmm2,%xmm13
  6575b4:	c5 e8 5c d0          	vsubps %xmm0,%xmm2,%xmm2
  6575b8:	c5 88 57 db          	vxorps %xmm3,%xmm14,%xmm3
  6575bc:	c5 e0 59 dd          	vmulps %xmm5,%xmm3,%xmm3
  6575c0:	c5 f8 28 44 24 80    	vmovaps -0x80(%rsp),%xmm0
  6575c6:	c5 78 58 f3          	vaddps %xmm3,%xmm0,%xmm14
  6575ca:	c5 f8 5c db          	vsubps %xmm3,%xmm0,%xmm3
  6575ce:	c5 80 14 c1          	vunpcklps %xmm1,%xmm15,%xmm0
  6575d2:	c5 80 15 c9          	vunpckhps %xmm1,%xmm15,%xmm1
  6575d6:	c5 f8 11 04 06       	vmovups %xmm0,(%rsi,%rax,1)
  6575db:	c5 f8 11 4c 06 10    	vmovups %xmm1,0x10(%rsi,%rax,1)
  6575e1:	c4 c1 30 14 c0       	vunpcklps %xmm8,%xmm9,%xmm0
  6575e6:	c4 c1 30 15 c8       	vunpckhps %xmm8,%xmm9,%xmm1
  6575eb:	c5 f8 11 44 06 20    	vmovups %xmm0,0x20(%rsi,%rax,1)
  6575f1:	c5 f8 11 4c 06 30    	vmovups %xmm1,0x30(%rsi,%rax,1)
  6575f7:	c4 c1 20 14 c2       	vunpcklps %xmm10,%xmm11,%xmm0
  6575fc:	c4 c1 20 15 ca       	vunpckhps %xmm10,%xmm11,%xmm1
  657601:	c5 f8 11 44 06 40    	vmovups %xmm0,0x40(%rsi,%rax,1)
  657607:	c5 f8 11 4c 06 50    	vmovups %xmm1,0x50(%rsi,%rax,1)
  65760d:	c4 c1 08 14 c5       	vunpcklps %xmm13,%xmm14,%xmm0
  657612:	c4 c1 08 15 cd       	vunpckhps %xmm13,%xmm14,%xmm1
  657617:	c5 f8 11 44 06 60    	vmovups %xmm0,0x60(%rsi,%rax,1)
  65761d:	c5 f8 11 4c 06 70    	vmovups %xmm1,0x70(%rsi,%rax,1)
  657623:	c5 f8 28 4c 24 a0    	vmovaps -0x60(%rsp),%xmm1
  657629:	c5 98 14 c1          	vunpcklps %xmm1,%xmm12,%xmm0
  65762d:	c5 98 15 c9          	vunpckhps %xmm1,%xmm12,%xmm1
  657631:	c5 f8 11 84 06 80 00 	vmovups %xmm0,0x80(%rsi,%rax,1)
  657638:	00 00 
  65763a:	c5 f8 11 8c 06 90 00 	vmovups %xmm1,0x90(%rsi,%rax,1)
  657641:	00 00 
  657643:	c5 f8 28 4c 24 90    	vmovaps -0x70(%rsp),%xmm1
  657649:	c5 c0 14 c1          	vunpcklps %xmm1,%xmm7,%xmm0
  65764d:	c5 c0 15 c9          	vunpckhps %xmm1,%xmm7,%xmm1
  657651:	c5 f8 11 84 06 a0 00 	vmovups %xmm0,0xa0(%rsi,%rax,1)
  657658:	00 00 
  65765a:	c5 f8 11 8c 06 b0 00 	vmovups %xmm1,0xb0(%rsi,%rax,1)
  657661:	00 00 
  657663:	c5 c8 14 c4          	vunpcklps %xmm4,%xmm6,%xmm0
  657667:	c5 c8 15 cc          	vunpckhps %xmm4,%xmm6,%xmm1
  65766b:	c5 f8 11 84 06 c0 00 	vmovups %xmm0,0xc0(%rsi,%rax,1)
  657672:	00 00 
  657674:	c5 f8 11 8c 06 d0 00 	vmovups %xmm1,0xd0(%rsi,%rax,1)
  65767b:	00 00 
  65767d:	c5 e0 14 c2          	vunpcklps %xmm2,%xmm3,%xmm0
  657681:	c5 e0 15 ca          	vunpckhps %xmm2,%xmm3,%xmm1
  657685:	c5 f8 11 84 06 e0 00 	vmovups %xmm0,0xe0(%rsi,%rax,1)
  65768c:	00 00 
  65768e:	c5 f8 11 8c 06 f0 00 	vmovups %xmm1,0xf0(%rsi,%rax,1)
  657695:	00 00 
  657697:	48 05 00 01 00 00    	add    $0x100,%rax
  65769d:	48 ff ca             	dec    %rdx
  6576a0:	0f 85 6a fb ff ff    	jne    657210 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run+0x10>
  6576a6:	48 83 c4 08          	add    $0x8,%rsp
  6576aa:	c5 f8 77             	vzeroupper
  6576ad:	c3                   	ret
  6576ae:	cc                   	int3
  6576af:	cc                   	int3
