0000000000270410 <<fastfft::isa::x86::F32x4 as fastfft::engine::small::SmallVector>::one>:
  270410:	0f 10 17             	movups (%rdi),%xmm2
  270413:	0f 10 47 10          	movups 0x10(%rdi),%xmm0
  270417:	0f 10 5f 20          	movups 0x20(%rdi),%xmm3
  27041b:	0f 10 4f 30          	movups 0x30(%rdi),%xmm1
  27041f:	0f 28 f2             	movaps %xmm2,%xmm6
  270422:	0f c6 f0 88          	shufps $0x88,%xmm0,%xmm6
  270426:	0f c6 d0 dd          	shufps $0xdd,%xmm0,%xmm2
  27042a:	0f 28 c3             	movaps %xmm3,%xmm0
  27042d:	0f c6 c1 88          	shufps $0x88,%xmm1,%xmm0
  270431:	0f c6 d9 dd          	shufps $0xdd,%xmm1,%xmm3
  270435:	44 0f 10 4f 40       	movups 0x40(%rdi),%xmm9
  27043a:	0f 10 4f 50          	movups 0x50(%rdi),%xmm1
  27043e:	45 0f 28 d1          	movaps %xmm9,%xmm10
  270442:	44 0f c6 d1 88       	shufps $0x88,%xmm1,%xmm10
  270447:	44 0f c6 c9 dd       	shufps $0xdd,%xmm1,%xmm9
  27044c:	0f 10 6f 60          	movups 0x60(%rdi),%xmm5
  270450:	0f 10 4f 70          	movups 0x70(%rdi),%xmm1
  270454:	44 0f 28 dd          	movaps %xmm5,%xmm11
  270458:	44 0f c6 d9 88       	shufps $0x88,%xmm1,%xmm11
  27045d:	0f c6 e9 dd          	shufps $0xdd,%xmm1,%xmm5
  270461:	0f 28 ca             	movaps %xmm2,%xmm1
  270464:	41 0f 58 c9          	addps  %xmm9,%xmm1
  270468:	44 0f 28 e3          	movaps %xmm3,%xmm12
  27046c:	44 0f 58 e5          	addps  %xmm5,%xmm12
  270470:	0f 28 f9             	movaps %xmm1,%xmm7
  270473:	41 0f 58 fc          	addps  %xmm12,%xmm7
  270477:	0f 28 e6             	movaps %xmm6,%xmm4
  27047a:	41 0f 58 e2          	addps  %xmm10,%xmm4
  27047e:	44 0f 28 e8          	movaps %xmm0,%xmm13
  270482:	45 0f 58 eb          	addps  %xmm11,%xmm13
  270486:	44 0f 28 c4          	movaps %xmm4,%xmm8
  27048a:	45 0f 58 c5          	addps  %xmm13,%xmm8
  27048e:	41 0f 5c d1          	subps  %xmm9,%xmm2
  270492:	41 0f 5c c3          	subps  %xmm11,%xmm0
  270496:	44 0f 28 da          	movaps %xmm2,%xmm11
  27049a:	44 0f 58 d8          	addps  %xmm0,%xmm11
  27049e:	41 0f 5c f2          	subps  %xmm10,%xmm6
  2704a2:	0f 5c eb             	subps  %xmm3,%xmm5
  2704a5:	44 0f 28 ce          	movaps %xmm6,%xmm9
  2704a9:	44 0f 58 cd          	addps  %xmm5,%xmm9
  2704ad:	41 0f 5c cc          	subps  %xmm12,%xmm1
  2704b1:	41 0f 5c e5          	subps  %xmm13,%xmm4
  2704b5:	0f 5c d0             	subps  %xmm0,%xmm2
  2704b8:	0f 5c f5             	subps  %xmm5,%xmm6
  2704bb:	0f 28 ef             	movaps %xmm7,%xmm5
  2704be:	41 0f 14 eb          	unpcklps %xmm11,%xmm5
  2704c2:	0f 28 d9             	movaps %xmm1,%xmm3
  2704c5:	0f 14 da             	unpcklps %xmm2,%xmm3
  2704c8:	0f 28 c5             	movaps %xmm5,%xmm0
  2704cb:	0f 16 c3             	movlhps %xmm3,%xmm0
  2704ce:	0f 12 dd             	movhlps %xmm5,%xmm3
  2704d1:	41 0f 15 fb          	unpckhps %xmm11,%xmm7
  2704d5:	0f 15 ca             	unpckhps %xmm2,%xmm1
  2704d8:	0f 28 ef             	movaps %xmm7,%xmm5
  2704db:	0f 16 e9             	movlhps %xmm1,%xmm5
  2704de:	0f 12 cf             	movhlps %xmm7,%xmm1
  2704e1:	45 0f 28 d0          	movaps %xmm8,%xmm10
  2704e5:	45 0f 14 d1          	unpcklps %xmm9,%xmm10
  2704e9:	0f 28 fc             	movaps %xmm4,%xmm7
  2704ec:	0f 14 fe             	unpcklps %xmm6,%xmm7
  2704ef:	41 0f 28 d2          	movaps %xmm10,%xmm2
  2704f3:	0f 16 d7             	movlhps %xmm7,%xmm2
  2704f6:	41 0f 12 fa          	movhlps %xmm10,%xmm7
  2704fa:	45 0f 15 c1          	unpckhps %xmm9,%xmm8
  2704fe:	0f 15 e6             	unpckhps %xmm6,%xmm4
  270501:	41 0f 28 f0          	movaps %xmm8,%xmm6
  270505:	0f 16 f4             	movlhps %xmm4,%xmm6
  270508:	41 0f 12 e0          	movhlps %xmm8,%xmm4
  27050c:	44 0f 10 5a 20       	movups 0x20(%rdx),%xmm11
  270511:	44 0f 10 4a 30       	movups 0x30(%rdx),%xmm9
  270516:	44 0f 10 72 40       	movups 0x40(%rdx),%xmm14
  27051b:	44 0f 10 62 50       	movups 0x50(%rdx),%xmm12
  270520:	44 0f 10 42 60       	movups 0x60(%rdx),%xmm8
  270525:	44 0f 10 52 70       	movups 0x70(%rdx),%xmm10
  27052a:	45 0f 28 ec          	movaps %xmm12,%xmm13
  27052e:	44 0f 59 ee          	mulps  %xmm6,%xmm13
  270532:	41 0f 59 f6          	mulps  %xmm14,%xmm6
  270536:	44 0f 59 f5          	mulps  %xmm5,%xmm14
  27053a:	45 0f 5c f5          	subps  %xmm13,%xmm14
  27053e:	45 0f 28 f9          	movaps %xmm9,%xmm15
  270542:	44 0f 59 ff          	mulps  %xmm7,%xmm15
  270546:	41 0f 59 fb          	mulps  %xmm11,%xmm7
  27054a:	45 0f 28 eb          	movaps %xmm11,%xmm13
  27054e:	44 0f 59 eb          	mulps  %xmm3,%xmm13
  270552:	45 0f 5c ef          	subps  %xmm15,%xmm13
  270556:	45 0f 28 d8          	movaps %xmm8,%xmm11
  27055a:	44 0f 59 d9          	mulps  %xmm1,%xmm11
  27055e:	44 0f 59 c4          	mulps  %xmm4,%xmm8
  270562:	41 0f 59 e2          	mulps  %xmm10,%xmm4
  270566:	44 0f 5c dc          	subps  %xmm4,%xmm11
  27056a:	41 0f 59 ec          	mulps  %xmm12,%xmm5
  27056e:	0f 58 ee             	addps  %xmm6,%xmm5
  270571:	41 0f 59 d9          	mulps  %xmm9,%xmm3
  270575:	0f 58 df             	addps  %xmm7,%xmm3
  270578:	41 0f 59 ca          	mulps  %xmm10,%xmm1
  27057c:	41 0f 58 c8          	addps  %xmm8,%xmm1
  270580:	0f 28 e0             	movaps %xmm0,%xmm4
  270583:	41 0f 58 e6          	addps  %xmm14,%xmm4
  270587:	41 0f 5c c6          	subps  %xmm14,%xmm0
  27058b:	0f 28 f3             	movaps %xmm3,%xmm6
  27058e:	0f 58 f1             	addps  %xmm1,%xmm6
  270591:	0f 5c d9             	subps  %xmm1,%xmm3
  270594:	0f 28 ca             	movaps %xmm2,%xmm1
  270597:	0f 58 cd             	addps  %xmm5,%xmm1
  27059a:	0f 5c d5             	subps  %xmm5,%xmm2
  27059d:	41 0f 28 ed          	movaps %xmm13,%xmm5
  2705a1:	41 0f 58 eb          	addps  %xmm11,%xmm5
  2705a5:	45 0f 5c dd          	subps  %xmm13,%xmm11
  2705a9:	0f 28 fc             	movaps %xmm4,%xmm7
  2705ac:	0f 58 fd             	addps  %xmm5,%xmm7
  2705af:	0f 5c e5             	subps  %xmm5,%xmm4
  2705b2:	0f 28 e9             	movaps %xmm1,%xmm5
  2705b5:	0f 58 ee             	addps  %xmm6,%xmm5
  2705b8:	0f 5c ce             	subps  %xmm6,%xmm1
  2705bb:	0f 28 f0             	movaps %xmm0,%xmm6
  2705be:	0f 58 f3             	addps  %xmm3,%xmm6
  2705c1:	0f 5c c3             	subps  %xmm3,%xmm0
  2705c4:	0f 28 da             	movaps %xmm2,%xmm3
  2705c7:	41 0f 58 db          	addps  %xmm11,%xmm3
  2705cb:	41 0f 5c d3          	subps  %xmm11,%xmm2
  2705cf:	44 0f 28 c5          	movaps %xmm5,%xmm8
  2705d3:	44 0f 14 c7          	unpcklps %xmm7,%xmm8
  2705d7:	0f 15 ef             	unpckhps %xmm7,%xmm5
  2705da:	44 0f 11 06          	movups %xmm8,(%rsi)
  2705de:	0f 11 6e 10          	movups %xmm5,0x10(%rsi)
  2705e2:	0f 28 eb             	movaps %xmm3,%xmm5
  2705e5:	0f 14 ee             	unpcklps %xmm6,%xmm5
  2705e8:	0f 15 de             	unpckhps %xmm6,%xmm3
  2705eb:	0f 11 6e 20          	movups %xmm5,0x20(%rsi)
  2705ef:	0f 11 5e 30          	movups %xmm3,0x30(%rsi)
  2705f3:	0f 28 d9             	movaps %xmm1,%xmm3
  2705f6:	0f 14 dc             	unpcklps %xmm4,%xmm3
  2705f9:	0f 15 cc             	unpckhps %xmm4,%xmm1
  2705fc:	0f 11 5e 40          	movups %xmm3,0x40(%rsi)
  270600:	0f 11 4e 50          	movups %xmm1,0x50(%rsi)
  270604:	0f 28 ca             	movaps %xmm2,%xmm1
  270607:	0f 14 c8             	unpcklps %xmm0,%xmm1
  27060a:	0f 15 d0             	unpckhps %xmm0,%xmm2
  27060d:	0f 11 4e 60          	movups %xmm1,0x60(%rsi)
  270611:	0f 11 56 70          	movups %xmm2,0x70(%rsi)
  270615:	c3                   	ret
  270616:	cc                   	int3
  270617:	cc                   	int3
  270618:	cc                   	int3
  270619:	cc                   	int3
  27061a:	cc                   	int3
  27061b:	cc                   	int3
  27061c:	cc                   	int3
  27061d:	cc                   	int3
  27061e:	cc                   	int3
  27061f:	cc                   	int3

