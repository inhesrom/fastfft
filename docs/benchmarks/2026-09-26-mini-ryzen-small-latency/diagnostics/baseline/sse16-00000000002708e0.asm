00000000002708e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::small::SmallVector>::one>:
  2708e0:	0f 10 37             	movups (%rdi),%xmm6
  2708e3:	0f 10 4f 10          	movups 0x10(%rdi),%xmm1
  2708e7:	0f 10 47 20          	movups 0x20(%rdi),%xmm0
  2708eb:	0f 10 67 30          	movups 0x30(%rdi),%xmm4
  2708ef:	0f 28 d6             	movaps %xmm6,%xmm2
  2708f2:	0f c6 d1 88          	shufps $0x88,%xmm1,%xmm2
  2708f6:	0f c6 f1 dd          	shufps $0xdd,%xmm1,%xmm6
  2708fa:	0f 28 d8             	movaps %xmm0,%xmm3
  2708fd:	0f c6 dc 88          	shufps $0x88,%xmm4,%xmm3
  270901:	0f c6 c4 dd          	shufps $0xdd,%xmm4,%xmm0
  270905:	44 0f 10 4f 40       	movups 0x40(%rdi),%xmm9
  27090a:	0f 10 4f 50          	movups 0x50(%rdi),%xmm1
  27090e:	45 0f 28 d1          	movaps %xmm9,%xmm10
  270912:	44 0f c6 d1 88       	shufps $0x88,%xmm1,%xmm10
  270917:	44 0f c6 c9 dd       	shufps $0xdd,%xmm1,%xmm9
  27091c:	44 0f 10 5f 60       	movups 0x60(%rdi),%xmm11
  270921:	0f 10 4f 70          	movups 0x70(%rdi),%xmm1
  270925:	41 0f 28 eb          	movaps %xmm11,%xmm5
  270929:	0f c6 e9 88          	shufps $0x88,%xmm1,%xmm5
  27092d:	44 0f c6 d9 dd       	shufps $0xdd,%xmm1,%xmm11
  270932:	0f 28 ca             	movaps %xmm2,%xmm1
  270935:	41 0f 58 ca          	addps  %xmm10,%xmm1
  270939:	44 0f 28 e3          	movaps %xmm3,%xmm12
  27093d:	44 0f 58 e5          	addps  %xmm5,%xmm12
  270941:	0f 28 f9             	movaps %xmm1,%xmm7
  270944:	41 0f 58 fc          	addps  %xmm12,%xmm7
  270948:	0f 28 e6             	movaps %xmm6,%xmm4
  27094b:	41 0f 58 e1          	addps  %xmm9,%xmm4
  27094f:	44 0f 28 e8          	movaps %xmm0,%xmm13
  270953:	45 0f 58 eb          	addps  %xmm11,%xmm13
  270957:	44 0f 28 c4          	movaps %xmm4,%xmm8
  27095b:	45 0f 58 c5          	addps  %xmm13,%xmm8
  27095f:	41 0f 5c d2          	subps  %xmm10,%xmm2
  270963:	41 0f 5c c3          	subps  %xmm11,%xmm0
  270967:	44 0f 28 d2          	movaps %xmm2,%xmm10
  27096b:	44 0f 58 d0          	addps  %xmm0,%xmm10
  27096f:	41 0f 5c f1          	subps  %xmm9,%xmm6
  270973:	0f 5c eb             	subps  %xmm3,%xmm5
  270976:	44 0f 28 ce          	movaps %xmm6,%xmm9
  27097a:	44 0f 58 cd          	addps  %xmm5,%xmm9
  27097e:	41 0f 5c cc          	subps  %xmm12,%xmm1
  270982:	41 0f 5c e5          	subps  %xmm13,%xmm4
  270986:	0f 5c d0             	subps  %xmm0,%xmm2
  270989:	0f 5c f5             	subps  %xmm5,%xmm6
  27098c:	0f 28 ef             	movaps %xmm7,%xmm5
  27098f:	41 0f 14 ea          	unpcklps %xmm10,%xmm5
  270993:	0f 28 d9             	movaps %xmm1,%xmm3
  270996:	0f 14 da             	unpcklps %xmm2,%xmm3
  270999:	0f 28 c5             	movaps %xmm5,%xmm0
  27099c:	0f 16 c3             	movlhps %xmm3,%xmm0
  27099f:	0f 12 dd             	movhlps %xmm5,%xmm3
  2709a2:	41 0f 15 fa          	unpckhps %xmm10,%xmm7
  2709a6:	0f 15 ca             	unpckhps %xmm2,%xmm1
  2709a9:	0f 28 ef             	movaps %xmm7,%xmm5
  2709ac:	0f 16 e9             	movlhps %xmm1,%xmm5
  2709af:	0f 12 cf             	movhlps %xmm7,%xmm1
  2709b2:	45 0f 28 d0          	movaps %xmm8,%xmm10
  2709b6:	45 0f 14 d1          	unpcklps %xmm9,%xmm10
  2709ba:	0f 28 fc             	movaps %xmm4,%xmm7
  2709bd:	0f 14 fe             	unpcklps %xmm6,%xmm7
  2709c0:	41 0f 28 d2          	movaps %xmm10,%xmm2
  2709c4:	0f 16 d7             	movlhps %xmm7,%xmm2
  2709c7:	41 0f 12 fa          	movhlps %xmm10,%xmm7
  2709cb:	45 0f 15 c1          	unpckhps %xmm9,%xmm8
  2709cf:	0f 15 e6             	unpckhps %xmm6,%xmm4
  2709d2:	41 0f 28 f0          	movaps %xmm8,%xmm6
  2709d6:	0f 16 f4             	movlhps %xmm4,%xmm6
  2709d9:	41 0f 12 e0          	movhlps %xmm8,%xmm4
  2709dd:	44 0f 10 5a 20       	movups 0x20(%rdx),%xmm11
  2709e2:	44 0f 10 4a 30       	movups 0x30(%rdx),%xmm9
  2709e7:	44 0f 10 72 40       	movups 0x40(%rdx),%xmm14
  2709ec:	44 0f 10 62 50       	movups 0x50(%rdx),%xmm12
  2709f1:	44 0f 10 42 60       	movups 0x60(%rdx),%xmm8
  2709f6:	44 0f 10 52 70       	movups 0x70(%rdx),%xmm10
  2709fb:	45 0f 28 ec          	movaps %xmm12,%xmm13
  2709ff:	44 0f 59 ee          	mulps  %xmm6,%xmm13
  270a03:	41 0f 59 f6          	mulps  %xmm14,%xmm6
  270a07:	44 0f 59 f5          	mulps  %xmm5,%xmm14
  270a0b:	45 0f 5c f5          	subps  %xmm13,%xmm14
  270a0f:	45 0f 28 f9          	movaps %xmm9,%xmm15
  270a13:	44 0f 59 ff          	mulps  %xmm7,%xmm15
  270a17:	41 0f 59 fb          	mulps  %xmm11,%xmm7
  270a1b:	45 0f 28 eb          	movaps %xmm11,%xmm13
  270a1f:	44 0f 59 eb          	mulps  %xmm3,%xmm13
  270a23:	45 0f 5c ef          	subps  %xmm15,%xmm13
  270a27:	45 0f 28 d8          	movaps %xmm8,%xmm11
  270a2b:	44 0f 59 d9          	mulps  %xmm1,%xmm11
  270a2f:	44 0f 59 c4          	mulps  %xmm4,%xmm8
  270a33:	41 0f 59 e2          	mulps  %xmm10,%xmm4
  270a37:	44 0f 5c dc          	subps  %xmm4,%xmm11
  270a3b:	41 0f 59 ec          	mulps  %xmm12,%xmm5
  270a3f:	0f 58 ee             	addps  %xmm6,%xmm5
  270a42:	41 0f 59 d9          	mulps  %xmm9,%xmm3
  270a46:	0f 58 df             	addps  %xmm7,%xmm3
  270a49:	41 0f 59 ca          	mulps  %xmm10,%xmm1
  270a4d:	41 0f 58 c8          	addps  %xmm8,%xmm1
  270a51:	0f 28 e0             	movaps %xmm0,%xmm4
  270a54:	41 0f 58 e6          	addps  %xmm14,%xmm4
  270a58:	41 0f 5c c6          	subps  %xmm14,%xmm0
  270a5c:	0f 28 f3             	movaps %xmm3,%xmm6
  270a5f:	0f 58 f1             	addps  %xmm1,%xmm6
  270a62:	0f 5c d9             	subps  %xmm1,%xmm3
  270a65:	0f 28 ca             	movaps %xmm2,%xmm1
  270a68:	0f 58 cd             	addps  %xmm5,%xmm1
  270a6b:	0f 5c d5             	subps  %xmm5,%xmm2
  270a6e:	41 0f 28 ed          	movaps %xmm13,%xmm5
  270a72:	41 0f 58 eb          	addps  %xmm11,%xmm5
  270a76:	45 0f 5c dd          	subps  %xmm13,%xmm11
  270a7a:	0f 28 fc             	movaps %xmm4,%xmm7
  270a7d:	0f 58 fd             	addps  %xmm5,%xmm7
  270a80:	0f 5c e5             	subps  %xmm5,%xmm4
  270a83:	0f 28 e9             	movaps %xmm1,%xmm5
  270a86:	0f 58 ee             	addps  %xmm6,%xmm5
  270a89:	0f 5c ce             	subps  %xmm6,%xmm1
  270a8c:	0f 28 f0             	movaps %xmm0,%xmm6
  270a8f:	0f 58 f3             	addps  %xmm3,%xmm6
  270a92:	0f 5c c3             	subps  %xmm3,%xmm0
  270a95:	0f 28 da             	movaps %xmm2,%xmm3
  270a98:	41 0f 58 db          	addps  %xmm11,%xmm3
  270a9c:	41 0f 5c d3          	subps  %xmm11,%xmm2
  270aa0:	44 0f 28 c7          	movaps %xmm7,%xmm8
  270aa4:	44 0f 14 c5          	unpcklps %xmm5,%xmm8
  270aa8:	0f 15 fd             	unpckhps %xmm5,%xmm7
  270aab:	44 0f 11 06          	movups %xmm8,(%rsi)
  270aaf:	0f 11 7e 10          	movups %xmm7,0x10(%rsi)
  270ab3:	0f 28 ee             	movaps %xmm6,%xmm5
  270ab6:	0f 14 eb             	unpcklps %xmm3,%xmm5
  270ab9:	0f 15 f3             	unpckhps %xmm3,%xmm6
  270abc:	0f 11 6e 20          	movups %xmm5,0x20(%rsi)
  270ac0:	0f 11 76 30          	movups %xmm6,0x30(%rsi)
  270ac4:	0f 28 dc             	movaps %xmm4,%xmm3
  270ac7:	0f 14 d9             	unpcklps %xmm1,%xmm3
  270aca:	0f 15 e1             	unpckhps %xmm1,%xmm4
  270acd:	0f 11 5e 40          	movups %xmm3,0x40(%rsi)
  270ad1:	0f 11 66 50          	movups %xmm4,0x50(%rsi)
  270ad5:	0f 28 c8             	movaps %xmm0,%xmm1
  270ad8:	0f 14 ca             	unpcklps %xmm2,%xmm1
  270adb:	0f 15 c2             	unpckhps %xmm2,%xmm0
  270ade:	0f 11 4e 60          	movups %xmm1,0x60(%rsi)
  270ae2:	0f 11 46 70          	movups %xmm0,0x70(%rsi)
  270ae6:	c3                   	ret
  270ae7:	cc                   	int3
  270ae8:	cc                   	int3
  270ae9:	cc                   	int3
  270aea:	cc                   	int3
  270aeb:	cc                   	int3
  270aec:	cc                   	int3
  270aed:	cc                   	int3
  270aee:	cc                   	int3
  270aef:	cc                   	int3

