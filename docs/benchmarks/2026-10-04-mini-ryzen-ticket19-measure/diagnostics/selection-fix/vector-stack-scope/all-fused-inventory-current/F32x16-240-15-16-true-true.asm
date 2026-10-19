
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a34240 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a34240:	55                   	push   rbp
  a34241:	48 89 e5             	mov    rbp,rsp
  a34244:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a34248:	48 81 ec 80 0b 00 00 	sub    rsp,0xb80
  a3424f:	48 69 c2 80 07 00 00 	imul   rax,rdx,0x780
  a34256:	31 d2                	xor    edx,edx
  a34258:	4c 8d 84 24 00 0b 00 	lea    r8,[rsp+0xb00]
  a3425f:	00 
  a34260:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a34265:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  a3426c:	00 00 00 00 
  a34270:	c6 84 24 00 0b 00 00 	mov    BYTE PTR [rsp+0xb00],0x0
  a34277:	00 
  a34278:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a3427d:	62 f1 7c 48 10 04 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1]
  a34284:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a3428b:	02 
  a3428c:	62 f1 7c 48 10 5c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x80]
  a34293:	02 
  a34294:	62 61 7c 48 10 4c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a3429b:	03 
  a3429c:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x180]
  a342a3:	06 
  a342a4:	62 71 7c 48 10 5c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a342ab:	07 
  a342ac:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a342b2:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a342b8:	62 f1 7c 48 10 7c 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x600]
  a342bf:	18 
  a342c0:	62 71 7c 48 10 6c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x640]
  a342c7:	19 
  a342c8:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a342ce:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x300]
  a342d5:	0c 
  a342d6:	62 71 7c 48 10 4c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x340]
  a342dd:	0d 
  a342de:	62 f1 7c 48 10 6c 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x480]
  a342e5:	12 
  a342e6:	62 f1 7c 48 28 d4    	vmovaps zmm2,zmm4
  a342ec:	62 e1 7c 48 28 cc    	vmovaps zmm17,zmm4
  a342f2:	62 71 7c 48 10 7c 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x4c0]
  a342f9:	13 
  a342fa:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a34300:	62 61 7c 48 28 fd    	vmovaps zmm31,zmm5
  a34306:	62 f1 7c 48 10 6c 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x280]
  a3430d:	0a 
  a3430e:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm5
  a34315:	01 
  a34316:	62 f1 7c 48 28 35 20 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff65cc20]        # 90f40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e3f0>
  a3431d:	cc 65 ff 
  a34320:	62 d2 4d 48 7f c3    	vpermt2ps zmm0,zmm6,zmm11
  a34326:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a3432d:	07 
  a3432e:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  a34335:	0b 
  a34336:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x400]
  a3433d:	10 
  a3433e:	62 d2 4d 48 7f cd    	vpermt2ps zmm1,zmm6,zmm13
  a34344:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a3434b:	06 
  a3434c:	62 f1 7c 48 10 44 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x440]
  a34353:	11 
  a34354:	62 b1 7c 48 28 e2    	vmovaps zmm4,zmm18
  a3435a:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x100]
  a34361:	04 
  a34362:	62 d2 4d 48 7f d1    	vpermt2ps zmm2,zmm6,zmm9
  a34368:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm2
  a3436f:	0c 
  a34370:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x140]
  a34377:	05 
  a34378:	62 31 7c 48 28 e3    	vmovaps zmm12,zmm19
  a3437e:	62 61 7c 48 10 44 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x580]
  a34385:	16 
  a34386:	62 f2 4d 48 7f e0    	vpermt2ps zmm4,zmm6,zmm0
  a3438c:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x5c0]
  a34393:	17 
  a34394:	62 81 7c 48 28 e0    	vmovaps zmm20,zmm24
  a3439a:	62 61 7c 48 10 54 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x700]
  a343a1:	1c 
  a343a2:	62 72 4d 48 7f e1    	vpermt2ps zmm12,zmm6,zmm1
  a343a8:	62 61 7c 48 10 64 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x740]
  a343af:	1d 
  a343b0:	62 81 7c 48 28 fa    	vmovaps zmm23,zmm26
  a343b6:	62 e1 7c 48 10 74 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0x680]
  a343bd:	1a 
  a343be:	62 e2 4d 48 7f e2    	vpermt2ps zmm20,zmm6,zmm2
  a343c4:	62 61 7c 48 10 74 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1+0x6c0]
  a343cb:	1b 
  a343cc:	62 71 7c 48 28 35 aa 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff65cbaa]        # 90f80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e430>
  a343d3:	cb 65 ff 
  a343d6:	62 62 0d 48 7f c2    	vpermt2ps zmm24,zmm14,zmm2
  a343dc:	62 21 7c 48 28 de    	vmovaps zmm27,zmm22
  a343e2:	62 82 4d 48 7f fc    	vpermt2ps zmm23,zmm6,zmm28
  a343e8:	62 02 0d 48 7f d4    	vpermt2ps zmm26,zmm14,zmm28
  a343ee:	62 61 7c 48 10 6c 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x380]
  a343f5:	0e 
  a343f6:	62 e2 0d 48 7f d0    	vpermt2ps zmm18,zmm14,zmm0
  a343fc:	62 02 4d 48 7f de    	vpermt2ps zmm27,zmm6,zmm30
  a34402:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x3c0]
  a34409:	0f 
  a3440a:	62 e2 0d 48 7f d9    	vpermt2ps zmm19,zmm14,zmm1
  a34410:	62 01 7c 48 28 e5    	vmovaps zmm28,zmm29
  a34416:	62 62 4d 48 7f e2    	vpermt2ps zmm28,zmm6,zmm2
  a3441c:	62 82 0d 48 7f f6    	vpermt2ps zmm22,zmm14,zmm30
  a34422:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a34428:	62 92 0d 48 7f d9    	vpermt2ps zmm3,zmm14,zmm25
  a3442e:	62 92 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm25
  a34434:	62 61 7c 48 10 4c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x200]
  a3443b:	08 
  a3443c:	62 62 0d 48 7f ea    	vpermt2ps zmm29,zmm14,zmm2
  a34442:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x240]
  a34449:	09 
  a3444a:	62 52 4d 48 7f d7    	vpermt2ps zmm10,zmm6,zmm15
  a34450:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm10
  a34457:	05 
  a34458:	62 c2 0d 48 7f c9    	vpermt2ps zmm17,zmm14,zmm9
  a3445e:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm17
  a34465:	04 
  a34466:	62 01 7c 48 28 f1    	vmovaps zmm30,zmm25
  a3446c:	62 62 0d 48 7f c9    	vpermt2ps zmm25,zmm14,zmm1
  a34472:	62 62 4d 48 7f f1    	vpermt2ps zmm30,zmm6,zmm1
  a34478:	62 71 7c 48 10 4c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x500]
  a3447f:	14 
  a34480:	62 42 0d 48 7f ff    	vpermt2ps zmm31,zmm14,zmm15
  a34486:	62 11 7c 48 28 ff    	vmovaps zmm15,zmm31
  a3448c:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm31
  a34493:	1d 
  a34494:	62 61 7c 48 10 7c 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x540]
  a3449b:	15 
  a3449c:	62 b2 4d 48 7f e8    	vpermt2ps zmm5,zmm6,zmm16
  a344a2:	62 52 0d 48 7f c3    	vpermt2ps zmm8,zmm14,zmm11
  a344a8:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm8
  a344af:	0b 
  a344b0:	62 91 3c 40 5c d2    	vsubps zmm2,zmm24,zmm26
  a344b6:	62 d2 0d 48 7f fd    	vpermt2ps zmm7,zmm14,zmm13
  a344bc:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a344c2:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm7
  a344c9:	1c 
  a344ca:	62 d1 5c 48 58 cc    	vaddps zmm1,zmm4,zmm12
  a344d0:	62 91 3c 40 58 fa    	vaddps zmm7,zmm24,zmm26
  a344d6:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm7
  a344dd:	03 
  a344de:	62 21 6c 40 5c c3    	vsubps zmm24,zmm18,zmm19
  a344e4:	62 b1 6c 40 58 fb    	vaddps zmm7,zmm18,zmm19
  a344ea:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm7
  a344f1:	0e 
  a344f2:	62 a1 5c 40 58 d7    	vaddps zmm18,zmm20,zmm23
  a344f8:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x40]
  a344ff:	01 
  a34500:	62 b2 0d 48 7f f8    	vpermt2ps zmm7,zmm14,zmm16
  a34506:	62 51 7c 48 28 c6    	vmovaps zmm8,zmm14
  a3450c:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm7
  a34513:	01 
  a34514:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a3451a:	62 12 4d 48 7f df    	vpermt2ps zmm11,zmm6,zmm31
  a34520:	62 a1 5c 40 5c cf    	vsubps zmm17,zmm20,zmm23
  a34526:	62 81 64 48 5c c1    	vsubps zmm16,zmm3,zmm25
  a3452c:	62 91 64 48 58 d9    	vaddps zmm3,zmm3,zmm25
  a34532:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm3
  a34539:	0d 
  a3453a:	62 91 24 40 58 dc    	vaddps zmm3,zmm27,zmm28
  a34540:	62 51 5c 48 5c f4    	vsubps zmm14,zmm4,zmm12
  a34546:	62 01 4c 40 5c cd    	vsubps zmm25,zmm22,zmm29
  a3454c:	62 91 4c 40 58 e5    	vaddps zmm4,zmm22,zmm29
  a34552:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm4
  a34559:	0f 
  a3455a:	62 12 3d 48 7f cf    	vpermt2ps zmm9,zmm8,zmm31
  a34560:	62 61 54 48 58 d1    	vaddps zmm26,zmm5,zmm1
  a34566:	62 01 7c 48 58 ee    	vaddps zmm29,zmm0,zmm30
  a3456c:	62 91 7c 48 5c fe    	vsubps zmm7,zmm0,zmm30
  a34572:	62 81 24 40 5c fc    	vsubps zmm23,zmm27,zmm28
  a34578:	62 61 24 48 58 f3    	vaddps zmm30,zmm11,zmm3
  a3457e:	62 f2 7d 48 18 05 bc 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6410bc]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a34585:	10 64 ff 
  a34588:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a3458e:	62 72 75 48 ac e5    	vfnmadd213ps zmm12,zmm1,zmm5
  a34594:	62 e2 7d 48 18 25 4a 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff64114a]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a3459b:	11 64 ff 
  a3459e:	62 f2 5d 40 b8 e9    	vfmadd231ps zmm5,zmm20,zmm1
  a345a4:	62 a1 2c 40 58 f2    	vaddps zmm22,zmm26,zmm18
  a345aa:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm22
  a345b1:	0a 
  a345b2:	62 e2 7d 48 18 2d 9c 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff64119c]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a345b9:	11 64 ff 
  a345bc:	62 21 3c 40 59 d5    	vmulps zmm26,zmm24,zmm21
  a345c2:	62 e2 7d 48 18 1d d4 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff640dd4]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a345c9:	0d 64 ff 
  a345cc:	62 22 6d 48 bc d3    	vfnmadd231ps zmm26,zmm2,zmm19
  a345d2:	62 21 6c 48 59 dd    	vmulps zmm27,zmm2,zmm21
  a345d8:	62 02 65 40 b8 d8    	vfmadd231ps zmm27,zmm19,zmm24
  a345de:	62 b1 34 40 59 d5    	vmulps zmm2,zmm25,zmm21
  a345e4:	62 b2 7d 40 bc d3    	vfnmadd231ps zmm2,zmm16,zmm19
  a345ea:	62 21 7c 40 59 e5    	vmulps zmm28,zmm16,zmm21
  a345f0:	62 81 0c 40 58 c5    	vaddps zmm16,zmm30,zmm29
  a345f6:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm16
  a345fd:	09 
  a345fe:	62 02 65 40 b8 e1    	vfmadd231ps zmm28,zmm19,zmm25
  a34604:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a3460a:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a34610:	62 42 65 48 ac c3    	vfnmadd213ps zmm24,zmm3,zmm11
  a34616:	62 32 6d 40 b8 e4    	vfmadd231ps zmm12,zmm18,zmm20
  a3461c:	62 22 15 40 b8 c4    	vfmadd231ps zmm24,zmm29,zmm20
  a34622:	62 72 5d 40 b8 db    	vfmadd231ps zmm11,zmm20,zmm3
  a34628:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a3462f:	04 
  a34630:	62 d1 7c 48 5c cf    	vsubps zmm1,zmm0,zmm15
  a34636:	62 b2 5d 48 bc ea    	vfnmadd231ps zmm5,zmm4,zmm18
  a3463c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a34643:	0b 
  a34644:	62 d1 7c 48 5c da    	vsubps zmm3,zmm0,zmm10
  a3464a:	62 12 5d 48 bc dd    	vfnmadd231ps zmm11,zmm4,zmm29
  a34650:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a34656:	62 21 64 48 59 cd    	vmulps zmm25,zmm3,zmm21
  a3465c:	62 22 75 48 bc cb    	vfnmadd231ps zmm25,zmm1,zmm19
  a34662:	62 21 74 48 59 ed    	vmulps zmm29,zmm1,zmm21
  a34668:	62 62 65 40 b8 eb    	vfmadd231ps zmm29,zmm19,zmm3
  a3466e:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x40]
  a34675:	01 
  a34676:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x80]
  a3467d:	02 
  a3467e:	62 22 4d 48 7f f2    	vpermt2ps zmm30,zmm6,zmm18
  a34684:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a3468b:	06 
  a3468c:	62 f1 7c 48 58 4c 24 	vaddps zmm1,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a34693:	07 
  a34694:	62 61 7c 48 28 fc    	vmovaps zmm31,zmm4
  a3469a:	62 02 75 48 ac fe    	vfnmadd213ps zmm31,zmm1,zmm30
  a346a0:	62 f1 0c 40 58 d9    	vaddps zmm3,zmm30,zmm1
  a346a6:	62 62 5d 40 b8 f1    	vfmadd231ps zmm30,zmm20,zmm1
  a346ac:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a346b3:	05 
  a346b4:	62 f1 7c 48 58 4c 24 	vaddps zmm1,zmm0,ZMMWORD PTR [rsp+0x300]
  a346bb:	0c 
  a346bc:	62 f1 64 48 58 e1    	vaddps zmm4,zmm3,zmm1
  a346c2:	62 22 75 48 b8 fc    	vfmadd231ps zmm31,zmm1,zmm20
  a346c8:	62 62 3d 48 bc f1    	vfnmadd231ps zmm30,zmm8,zmm1
  a346ce:	62 b1 0c 48 59 f5    	vmulps zmm6,zmm14,zmm21
  a346d4:	62 b2 75 40 bc f3    	vfnmadd231ps zmm6,zmm17,zmm19
  a346da:	62 b1 74 40 59 dd    	vmulps zmm3,zmm17,zmm21
  a346e0:	62 d2 65 40 b8 de    	vfmadd231ps zmm3,zmm19,zmm14
  a346e6:	62 b1 44 40 59 c5    	vmulps zmm0,zmm23,zmm21
  a346ec:	62 b2 45 48 bc c3    	vfnmadd231ps zmm0,zmm7,zmm19
  a346f2:	62 b1 44 48 59 cd    	vmulps zmm1,zmm7,zmm21
  a346f8:	62 b2 65 40 b8 cf    	vfmadd231ps zmm1,zmm19,zmm23
  a346fe:	62 91 34 40 58 ff    	vaddps zmm7,zmm25,zmm31
  a34704:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm7
  a3470b:	08 
  a3470c:	62 11 04 40 5c f9    	vsubps zmm15,zmm31,zmm25
  a34712:	62 41 2c 40 58 cc    	vaddps zmm25,zmm26,zmm12
  a34718:	62 81 1c 48 5c fa    	vsubps zmm23,zmm12,zmm26
  a3471e:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm23
  a34725:	19 
  a34726:	62 01 6c 48 58 d0    	vaddps zmm26,zmm2,zmm24
  a3472c:	62 71 3c 40 5c ea    	vsubps zmm13,zmm24,zmm2
  a34732:	62 b1 4c 40 58 f8    	vaddps zmm7,zmm22,zmm16
  a34738:	62 f1 5c 48 58 d7    	vaddps zmm2,zmm4,zmm7
  a3473e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm2
  a34745:	10 
  a34746:	62 e2 7d 48 18 35 10 	vbroadcastss zmm22,DWORD PTR [rip+0xffffffffff640d10]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a3474d:	0d 64 ff 
  a34750:	62 f2 4d 40 ac fc    	vfnmadd213ps zmm7,zmm22,zmm4
  a34756:	62 d1 7c 48 28 d0    	vmovaps zmm2,zmm8
  a3475c:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x40]
  a34763:	01 
  a34764:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x380]
  a3476b:	0e 
  a3476c:	62 d2 7d 40 ac d2    	vfnmadd213ps zmm2,zmm16,zmm10
  a34772:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0xc0]
  a34779:	03 
  a3477a:	62 b2 1d 48 b8 d4    	vfmadd231ps zmm2,zmm12,zmm20
  a34780:	62 61 6c 48 5c fe    	vsubps zmm31,zmm2,zmm6
  a34786:	62 f1 6c 48 58 d6    	vaddps zmm2,zmm2,zmm6
  a3478c:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm2
  a34793:	1b 
  a34794:	62 b1 7c 48 28 e4    	vmovaps zmm4,zmm20
  a3479a:	62 d2 7d 40 a8 e2    	vfmadd213ps zmm4,zmm16,zmm10
  a347a0:	62 b1 2c 48 58 f0    	vaddps zmm6,zmm10,zmm16
  a347a6:	62 d1 7c 48 28 d0    	vmovaps zmm2,zmm8
  a347ac:	62 51 7c 48 28 d0    	vmovaps zmm10,zmm8
  a347b2:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x3c0]
  a347b9:	0f 
  a347ba:	62 52 75 40 ac d1    	vfnmadd213ps zmm10,zmm17,zmm9
  a347c0:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x340]
  a347c7:	0d 
  a347c8:	62 32 7d 40 b8 d4    	vfmadd231ps zmm10,zmm16,zmm20
  a347ce:	62 71 2c 48 5c f0    	vsubps zmm14,zmm10,zmm0
  a347d4:	62 61 2c 48 58 c0    	vaddps zmm24,zmm10,zmm0
  a347da:	62 d2 1d 48 bc e0    	vfnmadd231ps zmm4,zmm12,zmm8
  a347e0:	62 51 4c 48 58 c4    	vaddps zmm8,zmm6,zmm12
  a347e6:	62 b1 7c 48 28 c4    	vmovaps zmm0,zmm20
  a347ec:	62 d2 75 40 a8 c1    	vfmadd213ps zmm0,zmm17,zmm9
  a347f2:	62 31 34 48 58 c9    	vaddps zmm9,zmm9,zmm17
  a347f8:	62 f2 7d 40 bc c2    	vfnmadd231ps zmm0,zmm16,zmm2
  a347fe:	62 a1 34 48 58 c8    	vaddps zmm17,zmm9,zmm16
  a34804:	62 81 14 40 58 c6    	vaddps zmm16,zmm29,zmm30
  a3480a:	62 11 0c 40 5c d5    	vsubps zmm10,zmm30,zmm29
  a34810:	62 71 24 40 58 cd    	vaddps zmm9,zmm27,zmm5
  a34816:	62 91 54 48 5c f3    	vsubps zmm6,zmm5,zmm27
  a3481c:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm6
  a34823:	1a 
  a34824:	62 41 1c 40 58 f3    	vaddps zmm30,zmm28,zmm11
  a3482a:	62 91 24 48 5c d4    	vsubps zmm2,zmm11,zmm28
  a34830:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm2
  a34837:	0f 
  a34838:	62 61 5c 48 5c db    	vsubps zmm27,zmm4,zmm3
  a3483e:	62 61 5c 48 58 e3    	vaddps zmm28,zmm4,zmm3
  a34844:	62 f1 7c 48 5c d9    	vsubps zmm3,zmm0,zmm1
  a3484a:	62 f1 7c 48 58 c9    	vaddps zmm1,zmm0,zmm1
  a34850:	62 b1 3c 48 5c c1    	vsubps zmm0,zmm8,zmm17
  a34856:	62 72 7d 48 18 25 74 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff640a74]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a3485d:	0a 64 ff 
  a34860:	62 d1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm12
  a34866:	62 f1 44 48 5c e0    	vsubps zmm4,zmm7,zmm0
  a3486c:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm4
  a34873:	0d 
  a34874:	62 f1 7c 48 58 c7    	vaddps zmm0,zmm0,zmm7
  a3487a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a34881:	03 
  a34882:	62 51 44 40 58 dd    	vaddps zmm11,zmm23,zmm13
  a34888:	62 d1 04 48 58 c3    	vaddps zmm0,zmm15,zmm11
  a3488e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a34895:	0e 
  a34896:	62 52 4d 40 ac df    	vfnmadd213ps zmm11,zmm22,zmm15
  a3489c:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x80]
  a348a3:	02 
  a348a4:	62 f1 7c 48 28 05 d2 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff65c6d2]        # 90f80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e430>
  a348ab:	c6 65 ff 
  a348ae:	62 22 7d 48 7f ea    	vpermt2ps zmm29,zmm0,zmm18
  a348b4:	62 e1 4c 48 58 d2    	vaddps zmm18,zmm6,zmm2
  a348ba:	62 b1 2c 48 58 c2    	vaddps zmm0,zmm10,zmm18
  a348c0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a348c7:	01 
  a348c8:	62 c2 4d 40 ac d2    	vfnmadd213ps zmm18,zmm22,zmm10
  a348ce:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a348d5:	0b 
  a348d6:	62 f1 7c 48 58 64 24 	vaddps zmm4,zmm0,ZMMWORD PTR [rsp+0x700]
  a348dd:	1c 
  a348de:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x740]
  a348e5:	1d 
  a348e6:	62 f1 7c 48 58 7c 24 	vaddps zmm7,zmm0,ZMMWORD PTR [rsp+0x100]
  a348ed:	04 
  a348ee:	62 b1 3c 48 58 f1    	vaddps zmm6,zmm8,zmm17
  a348f4:	62 d1 04 40 5c c6    	vsubps zmm0,zmm31,zmm14
  a348fa:	62 41 04 40 58 fe    	vaddps zmm31,zmm31,zmm14
  a34900:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x300]
  a34907:	0c 
  a34908:	62 71 6c 48 5c 54 24 	vsubps zmm10,zmm2,ZMMWORD PTR [rsp+0x140]
  a3490f:	05 
  a34910:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x1c0]
  a34917:	07 
  a34918:	62 71 6c 48 5c 74 24 	vsubps zmm14,zmm2,ZMMWORD PTR [rsp+0x180]
  a3491f:	06 
  a34920:	62 11 34 40 58 fa    	vaddps zmm15,zmm25,zmm26
  a34926:	62 91 34 40 5c d2    	vsubps zmm2,zmm25,zmm26
  a3492c:	62 81 34 48 58 ce    	vaddps zmm17,zmm9,zmm30
  a34932:	62 11 34 48 5c ce    	vsubps zmm9,zmm9,zmm30
  a34938:	62 61 24 40 5c d3    	vsubps zmm26,zmm27,zmm3
  a3493e:	62 61 24 40 58 cb    	vaddps zmm25,zmm27,zmm3
  a34944:	62 f2 7d 48 18 2d f6 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff640cf6]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a3494b:	0c 64 ff 
  a3494e:	62 f1 7c 48 28 dd    	vmovaps zmm3,zmm5
  a34954:	62 92 5d 48 ac dd    	vfnmadd213ps zmm3,zmm4,zmm29
  a3495a:	62 61 14 40 58 dc    	vaddps zmm27,zmm29,zmm4
  a34960:	62 62 5d 40 b8 ec    	vfmadd231ps zmm29,zmm20,zmm4
  a34966:	62 b1 7c 48 28 e6    	vmovaps zmm4,zmm22
  a3496c:	62 b2 75 40 ac e0    	vfnmadd213ps zmm4,zmm17,zmm16
  a34972:	62 a1 7c 40 58 f9    	vaddps zmm23,zmm16,zmm17
  a34978:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm23
  a3497f:	12 
  a34980:	62 e1 24 40 58 cf    	vaddps zmm17,zmm27,zmm7
  a34986:	62 b2 45 48 b8 dc    	vfmadd231ps zmm3,zmm7,zmm20
  a3498c:	62 62 55 48 bc ef    	vfnmadd231ps zmm29,zmm5,zmm7
  a34992:	62 b1 0c 48 59 fd    	vmulps zmm7,zmm14,zmm21
  a34998:	62 b2 2d 48 bc fb    	vfnmadd231ps zmm7,zmm10,zmm19
  a3499e:	62 a1 2c 48 59 e5    	vmulps zmm20,zmm10,zmm21
  a349a4:	62 c2 65 40 b8 e6    	vfmadd231ps zmm20,zmm19,zmm14
  a349aa:	62 71 64 48 5c d7    	vsubps zmm10,zmm3,zmm7
  a349b0:	62 f1 64 48 58 df    	vaddps zmm3,zmm3,zmm7
  a349b6:	62 21 7c 48 28 de    	vmovaps zmm27,zmm22
  a349bc:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x200]
  a349c3:	08 
  a349c4:	62 62 05 48 ac dd    	vfnmadd213ps zmm27,zmm15,zmm5
  a349ca:	62 c1 54 48 58 df    	vaddps zmm19,zmm5,zmm15
  a349d0:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x6c0]
  a349d7:	1b 
  a349d8:	62 11 54 48 5c f8    	vsubps zmm15,zmm5,zmm24
  a349de:	62 11 54 48 58 f0    	vaddps zmm14,zmm5,zmm24
  a349e4:	62 d1 64 48 58 ee    	vaddps zmm5,zmm3,zmm14
  a349ea:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm5
  a349f1:	22 
  a349f2:	62 72 4d 40 ac f3    	vfnmadd213ps zmm14,zmm22,zmm3
  a349f8:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x640]
  a349ff:	19 
  a34a00:	62 51 64 48 5c c5    	vsubps zmm8,zmm3,zmm13
  a34a06:	62 61 74 40 58 f6    	vaddps zmm30,zmm17,zmm6
  a34a0c:	62 b2 4d 40 ac f1    	vfnmadd213ps zmm6,zmm22,zmm17
  a34a12:	62 d1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm12
  a34a18:	62 d1 2c 40 59 dc    	vmulps zmm3,zmm26,zmm12
  a34a1e:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x280]
  a34a25:	0a 
  a34a26:	62 71 54 48 5c 6c 24 	vsubps zmm13,zmm5,ZMMWORD PTR [rsp+0x240]
  a34a2d:	09 
  a34a2e:	62 f1 5c 48 5c fb    	vsubps zmm7,zmm4,zmm3
  a34a34:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm7
  a34a3b:	09 
  a34a3c:	62 e1 5c 48 58 eb    	vaddps zmm21,zmm4,zmm3
  a34a42:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm21
  a34a49:	16 
  a34a4a:	62 b1 14 40 5c dc    	vsubps zmm3,zmm29,zmm20
  a34a50:	62 b1 14 40 58 e4    	vaddps zmm4,zmm29,zmm20
  a34a56:	62 61 24 40 58 c0    	vaddps zmm24,zmm27,zmm0
  a34a5c:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm24
  a34a63:	17 
  a34a64:	62 e1 24 40 5c e0    	vsubps zmm20,zmm27,zmm0
  a34a6a:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm20
  a34a71:	15 
  a34a72:	62 f1 1c 40 5c c1    	vsubps zmm0,zmm28,zmm1
  a34a78:	62 d1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm12
  a34a7e:	62 e1 6c 40 5c c0    	vsubps zmm16,zmm18,zmm0
  a34a84:	62 f1 6c 40 58 e8    	vaddps zmm5,zmm18,zmm0
  a34a8a:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm5
  a34a91:	11 
  a34a92:	62 d1 04 48 59 c4    	vmulps zmm0,zmm15,zmm12
  a34a98:	62 c1 34 48 59 cc    	vmulps zmm17,zmm9,zmm12
  a34a9e:	62 f1 1c 40 58 c9    	vaddps zmm1,zmm28,zmm1
  a34aa4:	62 71 24 48 58 f8    	vaddps zmm15,zmm11,zmm0
  a34aaa:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x680]
  a34ab1:	1a 
  a34ab2:	62 71 34 48 5c 4c 24 	vsubps zmm9,zmm9,ZMMWORD PTR [rsp+0x3c0]
  a34ab9:	0f 
  a34aba:	62 a1 7c 48 28 d6    	vmovaps zmm18,zmm22
  a34ac0:	62 e2 35 40 ac d3    	vfnmadd213ps zmm18,zmm25,zmm3
  a34ac6:	62 71 24 48 5c d8    	vsubps zmm11,zmm11,zmm0
  a34acc:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm11
  a34ad3:	08 
  a34ad4:	62 f1 5c 48 58 c1    	vaddps zmm0,zmm4,zmm1
  a34ada:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a34ae1:	04 
  a34ae2:	62 f2 4d 40 ac cc    	vfnmadd213ps zmm1,zmm22,zmm4
  a34ae8:	62 21 74 40 58 da    	vaddps zmm27,zmm17,zmm18
  a34aee:	62 b1 6c 40 5c c1    	vsubps zmm0,zmm18,zmm17
  a34af4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm0
  a34afb:	1f 
  a34afc:	62 c2 05 40 ac f2    	vfnmadd213ps zmm22,zmm31,zmm10
  a34b02:	62 d1 14 48 59 e4    	vmulps zmm4,zmm13,zmm12
  a34b08:	62 d1 6c 48 59 d4    	vmulps zmm2,zmm2,zmm12
  a34b0e:	62 91 64 48 58 d9    	vaddps zmm3,zmm3,zmm25
  a34b14:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm3
  a34b1b:	21 
  a34b1c:	62 e1 4c 48 58 cc    	vaddps zmm17,zmm6,zmm4
  a34b22:	62 61 4c 48 5c cc    	vsubps zmm25,zmm6,zmm4
  a34b28:	62 61 4c 40 5c ea    	vsubps zmm29,zmm22,zmm2
  a34b2e:	62 f1 4c 40 58 c2    	vaddps zmm0,zmm22,zmm2
  a34b34:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm0
  a34b3b:	20 
  a34b3c:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x400]
  a34b43:	10 
  a34b44:	62 d1 3c 48 59 d4    	vmulps zmm2,zmm8,zmm12
  a34b4a:	62 d1 34 48 59 e4    	vmulps zmm4,zmm9,zmm12
  a34b50:	62 91 2c 48 58 f7    	vaddps zmm6,zmm10,zmm31
  a34b56:	62 71 5c 48 58 c1    	vaddps zmm8,zmm4,zmm1
  a34b5c:	62 f1 74 48 5c c4    	vsubps zmm0,zmm1,zmm4
  a34b62:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm0
  a34b69:	1e 
  a34b6a:	62 f1 7c 48 28 0d 0c 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff69240c]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a34b71:	24 69 ff 
  a34b74:	62 12 75 48 7f e8    	vpermt2ps zmm13,zmm1,zmm24
  a34b7a:	62 71 0c 48 5c ca    	vsubps zmm9,zmm14,zmm2
  a34b80:	62 f1 0c 48 58 c2    	vaddps zmm0,zmm14,zmm2
  a34b86:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a34b8d:	0a 
  a34b8e:	62 f2 75 48 7f 7c 24 	vpermt2ps zmm7,zmm1,ZMMWORD PTR [rsp+0x380]
  a34b95:	0e 
  a34b96:	62 e1 7c 48 28 d7    	vmovaps zmm18,zmm7
  a34b9c:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm7
  a34ba3:	18 
  a34ba4:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a34bab:	01 
  a34bac:	62 b2 75 48 7f d5    	vpermt2ps zmm2,zmm1,zmm21
  a34bb2:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a34bb8:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xac0],zmm2
  a34bbf:	2b 
  a34bc0:	62 41 7c 48 28 ff    	vmovaps zmm31,zmm15
  a34bc6:	62 62 75 48 7f 7c 24 	vpermt2ps zmm31,zmm1,ZMMWORD PTR [rsp+0x340]
  a34bcd:	0d 
  a34bce:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a34bd5:	03 
  a34bd6:	62 b2 75 48 7f d4    	vpermt2ps zmm2,zmm1,zmm20
  a34bdc:	62 61 7c 48 28 e2    	vmovaps zmm28,zmm2
  a34be2:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xa80],zmm2
  a34be9:	2a 
  a34bea:	62 21 7c 48 28 c0    	vmovaps zmm24,zmm16
  a34bf0:	62 22 75 48 7f c7    	vpermt2ps zmm24,zmm1,zmm23
  a34bf6:	62 a1 7c 48 28 eb    	vmovaps zmm21,zmm19
  a34bfc:	62 e2 75 48 7f ed    	vpermt2ps zmm21,zmm1,zmm5
  a34c02:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a34c08:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a34c0c:	62 f2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm0
  a34c12:	62 e1 7c 48 28 f2    	vmovaps zmm22,zmm2
  a34c18:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xa40],zmm2
  a34c1f:	29 
  a34c20:	62 11 7c 48 28 de    	vmovaps zmm11,zmm30
  a34c26:	62 11 7c 48 28 d6    	vmovaps zmm10,zmm30
  a34c2c:	62 12 75 48 7f dd    	vpermt2ps zmm11,zmm1,zmm29
  a34c32:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xa00],zmm11
  a34c39:	28 
  a34c3a:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a34c40:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm13
  a34c47:	02 
  a34c48:	62 71 7c 48 28 25 ee 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6922ee]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a34c4f:	22 69 ff 
  a34c52:	62 b2 1d 48 7f da    	vpermt2ps zmm3,zmm12,zmm18
  a34c58:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm3
  a34c5f:	13 
  a34c60:	62 01 7c 48 28 d3    	vmovaps zmm26,zmm27
  a34c66:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x880]
  a34c6d:	22 
  a34c6e:	62 22 75 48 7f df    	vpermt2ps zmm27,zmm1,zmm23
  a34c74:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x9c0],zmm27
  a34c7b:	27 
  a34c7c:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm31
  a34c83:	07 
  a34c84:	62 62 1d 48 7f ff    	vpermt2ps zmm31,zmm12,zmm7
  a34c8a:	62 d1 7c 48 28 d1    	vmovaps zmm2,zmm9
  a34c90:	62 41 7c 48 28 f1    	vmovaps zmm30,zmm9
  a34c96:	62 b2 75 48 7f d1    	vpermt2ps zmm2,zmm1,zmm17
  a34c9c:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a34ca2:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a34ca9:	05 
  a34caa:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm24
  a34cb1:	06 
  a34cb2:	62 02 1d 48 7f c4    	vpermt2ps zmm24,zmm12,zmm28
  a34cb8:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x100]
  a34cbf:	04 
  a34cc0:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a34cc6:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x7c0]
  a34ccd:	1f 
  a34cce:	62 d2 75 48 7f d5    	vpermt2ps zmm2,zmm1,zmm13
  a34cd4:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a34cda:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a34ce1:	04 
  a34ce2:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm21
  a34ce9:	0c 
  a34cea:	62 a2 1d 48 7f ee    	vpermt2ps zmm21,zmm12,zmm22
  a34cf0:	62 d1 7c 48 28 d0    	vmovaps zmm2,zmm8
  a34cf6:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x840]
  a34cfd:	21 
  a34cfe:	62 32 75 48 7f c6    	vpermt2ps zmm8,zmm1,zmm22
  a34d04:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a34d0a:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x980],zmm8
  a34d11:	26 
  a34d12:	62 12 1d 48 7f db    	vpermt2ps zmm11,zmm12,zmm27
  a34d18:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm11
  a34d1f:	14 
  a34d20:	62 01 7c 48 28 e1    	vmovaps zmm28,zmm25
  a34d26:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x800]
  a34d2d:	20 
  a34d2e:	62 62 75 48 7f cc    	vpermt2ps zmm25,zmm1,zmm4
  a34d34:	62 11 7c 48 28 c1    	vmovaps zmm8,zmm25
  a34d3a:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm25
  a34d41:	25 
  a34d42:	62 d2 1d 48 7f e9    	vpermt2ps zmm5,zmm12,zmm9
  a34d48:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a34d4e:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm5
  a34d55:	24 
  a34d56:	62 61 7c 48 28 ce    	vmovaps zmm25,zmm6
  a34d5c:	62 61 7c 48 28 de    	vmovaps zmm27,zmm6
  a34d62:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x780]
  a34d69:	1e 
  a34d6a:	62 62 75 48 7f c8    	vpermt2ps zmm25,zmm1,zmm0
  a34d70:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm25
  a34d77:	0b 
  a34d78:	62 d2 1d 48 7f f8    	vpermt2ps zmm7,zmm12,zmm8
  a34d7e:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm7
  a34d85:	23 
  a34d86:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x280]
  a34d8d:	0a 
  a34d8e:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a34d94:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a34d98:	62 f2 75 48 7f ee    	vpermt2ps zmm5,zmm1,zmm6
  a34d9e:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm5
  a34da5:	0a 
  a34da6:	62 62 1d 48 7f cd    	vpermt2ps zmm25,zmm12,zmm5
  a34dac:	62 d1 a5 48 15 f1    	vunpckhpd zmm6,zmm11,zmm9
  a34db2:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm6
  a34db9:	1b 
  a34dba:	62 11 c5 48 15 c1    	vunpckhpd zmm8,zmm7,zmm25
  a34dc0:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm8
  a34dc7:	0f 
  a34dc8:	62 e1 7c 48 28 15 2e 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff69202e]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a34dcf:	20 69 ff 
  a34dd2:	62 d2 6d 40 7f f0    	vpermt2ps zmm6,zmm18,zmm8
  a34dd8:	62 11 e5 48 15 c7    	vunpckhpd zmm8,zmm3,zmm31
  a34dde:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm8
  a34de5:	1a 
  a34de6:	62 31 bd 40 15 cd    	vunpckhpd zmm9,zmm24,zmm21
  a34dec:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm9
  a34df3:	19 
  a34df4:	62 52 6d 40 7f c1    	vpermt2ps zmm8,zmm18,zmm9
  a34dfa:	62 71 7c 48 10 49 0d 	vmovups zmm9,ZMMWORD PTR [rcx+0x340]
  a34e01:	62 71 7c 48 10 59 0c 	vmovups zmm11,ZMMWORD PTR [rcx+0x300]
  a34e08:	62 d1 3c 48 59 cb    	vmulps zmm1,zmm8,zmm11
  a34e0e:	62 d2 4d 48 b8 c9    	vfmadd231ps zmm1,zmm6,zmm9
  a34e14:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm1
  a34e1b:	1d 
  a34e1c:	62 d1 4c 48 59 cb    	vmulps zmm1,zmm6,zmm11
  a34e22:	62 d2 35 48 bc c8    	vfnmadd231ps zmm1,zmm9,zmm8
  a34e28:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm1
  a34e2f:	1c 
  a34e30:	62 f1 7c 48 28 0d 86 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff692186]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a34e37:	21 69 ff 
  a34e3a:	62 12 75 48 7f d5    	vpermt2ps zmm10,zmm1,zmm29
  a34e40:	62 d1 7c 48 28 fe    	vmovaps zmm7,zmm14
  a34e46:	62 d2 75 48 7f fd    	vpermt2ps zmm7,zmm1,zmm13
  a34e4c:	62 62 75 48 7f e4    	vpermt2ps zmm28,zmm1,zmm4
  a34e52:	62 62 75 48 7f d8    	vpermt2ps zmm27,zmm1,zmm0
  a34e58:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x400]
  a34e5f:	10 
  a34e60:	62 f2 75 48 7f 5c 24 	vpermt2ps zmm3,zmm1,ZMMWORD PTR [rsp+0x5c0]
  a34e67:	17 
  a34e68:	62 91 7c 48 28 e2    	vmovaps zmm4,zmm26
  a34e6e:	62 b2 75 48 7f e7    	vpermt2ps zmm4,zmm1,zmm23
  a34e74:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x240]
  a34e7b:	09 
  a34e7c:	62 f2 75 48 7f 6c 24 	vpermt2ps zmm5,zmm1,ZMMWORD PTR [rsp+0x380]
  a34e83:	0e 
  a34e84:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm5
  a34e8b:	09 
  a34e8c:	62 72 75 48 7f 7c 24 	vpermt2ps zmm15,zmm1,ZMMWORD PTR [rsp+0x340]
  a34e93:	0d 
  a34e94:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a34e9b:	01 
  a34e9c:	62 f2 75 48 7f 44 24 	vpermt2ps zmm0,zmm1,ZMMWORD PTR [rsp+0x580]
  a34ea3:	16 
  a34ea4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a34eab:	01 
  a34eac:	62 22 75 48 7f f1    	vpermt2ps zmm30,zmm1,zmm17
  a34eb2:	62 e2 75 48 7f 44 24 	vpermt2ps zmm16,zmm1,ZMMWORD PTR [rsp+0x480]
  a34eb9:	12 
  a34eba:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0xc0]
  a34ec1:	03 
  a34ec2:	62 72 75 48 7f 44 24 	vpermt2ps zmm8,zmm1,ZMMWORD PTR [rsp+0x540]
  a34ec9:	15 
  a34eca:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm8
  a34ed1:	03 
  a34ed2:	62 e2 75 48 7f 5c 24 	vpermt2ps zmm19,zmm1,ZMMWORD PTR [rsp+0x440]
  a34ed9:	11 
  a34eda:	62 b2 75 48 7f d6    	vpermt2ps zmm2,zmm1,zmm22
  a34ee0:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a34ee4:	62 e2 75 48 7f e6    	vpermt2ps zmm20,zmm1,zmm6
  a34eea:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x200]
  a34ef1:	08 
  a34ef2:	62 72 75 48 7f ee    	vpermt2ps zmm13,zmm1,zmm6
  a34ef8:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm13
  a34eff:	08 
  a34f00:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a34f06:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a34f0c:	62 f2 1d 48 7f cd    	vpermt2ps zmm1,zmm12,zmm5
  a34f12:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a34f18:	62 51 7c 48 28 f7    	vmovaps zmm14,zmm15
  a34f1e:	62 72 1d 48 7f f8    	vpermt2ps zmm15,zmm12,zmm0
  a34f24:	62 31 7c 48 28 d8    	vmovaps zmm11,zmm16
  a34f2a:	62 c2 1d 48 7f c0    	vpermt2ps zmm16,zmm12,zmm8
  a34f30:	62 31 7c 48 28 cb    	vmovaps zmm9,zmm19
  a34f36:	62 c2 1d 48 7f dd    	vpermt2ps zmm19,zmm12,zmm13
  a34f3c:	62 d1 7c 48 28 f2    	vmovaps zmm6,zmm10
  a34f42:	62 72 1d 48 7f d4    	vpermt2ps zmm10,zmm12,zmm4
  a34f48:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a34f4e:	62 91 7c 48 28 ee    	vmovaps zmm5,zmm30
  a34f54:	62 62 1d 48 7f f7    	vpermt2ps zmm30,zmm12,zmm7
  a34f5a:	62 e1 7c 48 28 cf    	vmovaps zmm17,zmm7
  a34f60:	62 61 7c 48 28 ea    	vmovaps zmm29,zmm2
  a34f66:	62 92 1d 48 7f d4    	vpermt2ps zmm2,zmm12,zmm28
  a34f6c:	62 91 7c 48 28 e3    	vmovaps zmm4,zmm27
  a34f72:	62 22 1d 48 7f dc    	vpermt2ps zmm27,zmm12,zmm20
  a34f78:	62 81 ad 48 15 f6    	vunpckhpd zmm22,zmm10,zmm30
  a34f7e:	62 91 ed 48 15 cb    	vunpckhpd zmm1,zmm2,zmm27
  a34f84:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm1
  a34f8b:	16 
  a34f8c:	62 31 7c 48 28 ee    	vmovaps zmm13,zmm22
  a34f92:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a34f98:	62 72 6d 40 7f e9    	vpermt2ps zmm13,zmm18,zmm1
  a34f9e:	62 c1 e5 48 15 d7    	vunpckhpd zmm18,zmm3,zmm15
  a34fa4:	62 b1 fd 40 15 cb    	vunpckhpd zmm1,zmm16,zmm19
  a34faa:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm1
  a34fb1:	15 
  a34fb2:	62 31 7c 48 28 e2    	vmovaps zmm12,zmm18
  a34fb8:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a34fbe:	62 f1 7c 48 10 49 1d 	vmovups zmm1,ZMMWORD PTR [rcx+0x740]
  a34fc5:	62 f1 7c 48 10 41 1c 	vmovups zmm0,ZMMWORD PTR [rcx+0x700]
  a34fcc:	62 e1 1c 48 59 f8    	vmulps zmm23,zmm12,zmm0
  a34fd2:	62 e2 15 48 b8 f9    	vfmadd231ps zmm23,zmm13,zmm1
  a34fd8:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm23
  a34fdf:	10 
  a34fe0:	62 f1 14 48 59 c0    	vmulps zmm0,zmm13,zmm0
  a34fe6:	62 d2 75 48 bc c4    	vfnmadd231ps zmm0,zmm1,zmm12
  a34fec:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a34ff3:	0e 
  a34ff4:	62 51 e5 48 14 ff    	vunpcklpd zmm15,zmm3,zmm15
  a34ffa:	62 b1 fd 40 14 c3    	vunpcklpd zmm0,zmm16,zmm19
  a35000:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a35007:	11 
  a35008:	62 91 ad 48 14 fe    	vunpcklpd zmm7,zmm10,zmm30
  a3500e:	62 81 ed 48 14 db    	vunpcklpd zmm19,zmm2,zmm27
  a35014:	62 41 7c 48 28 df    	vmovaps zmm27,zmm15
  a3501a:	62 f1 7c 48 28 1d 1c 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff691e1c]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a35021:	1e 69 ff 
  a35024:	62 72 65 48 7f f8    	vpermt2ps zmm15,zmm3,zmm0
  a3502a:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a35030:	62 b2 65 48 7f fb    	vpermt2ps zmm7,zmm3,zmm19
  a35036:	62 f1 7c 48 10 41 1b 	vmovups zmm0,ZMMWORD PTR [rcx+0x6c0]
  a3503d:	62 f1 7c 48 10 49 1a 	vmovups zmm1,ZMMWORD PTR [rcx+0x680]
  a35044:	62 f1 04 48 59 d1    	vmulps zmm2,zmm15,zmm1
  a3504a:	62 f2 45 48 b8 d0    	vfmadd231ps zmm2,zmm7,zmm0
  a35050:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm2
  a35057:	0d 
  a35058:	62 f1 44 48 59 c9    	vmulps zmm1,zmm7,zmm1
  a3505e:	62 d2 7d 48 bc cf    	vfnmadd231ps zmm1,zmm0,zmm15
  a35064:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm1
  a3506b:	17 
  a3506c:	62 71 7c 48 28 2d 8a 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff691e8a]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a35073:	1e 69 ff 
  a35076:	62 d2 15 48 7f f0    	vpermt2ps zmm6,zmm13,zmm8
  a3507c:	62 b2 15 48 7f e9    	vpermt2ps zmm5,zmm13,zmm17
  a35082:	62 b2 15 48 7f e4    	vpermt2ps zmm4,zmm13,zmm20
  a35088:	62 62 15 48 7f 54 24 	vpermt2ps zmm26,zmm13,ZMMWORD PTR [rsp+0x240]
  a3508f:	09 
  a35090:	62 72 15 48 7f 74 24 	vpermt2ps zmm14,zmm13,ZMMWORD PTR [rsp+0x40]
  a35097:	01 
  a35098:	62 02 15 48 7f ec    	vpermt2ps zmm29,zmm13,zmm28
  a3509e:	62 72 15 48 7f 5c 24 	vpermt2ps zmm11,zmm13,ZMMWORD PTR [rsp+0xc0]
  a350a5:	03 
  a350a6:	62 72 15 48 7f 4c 24 	vpermt2ps zmm9,zmm13,ZMMWORD PTR [rsp+0x200]
  a350ad:	08 
  a350ae:	62 d1 ad 40 14 c6    	vunpcklpd zmm0,zmm26,zmm14
  a350b4:	62 d1 a5 48 14 c9    	vunpcklpd zmm1,zmm11,zmm9
  a350ba:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a350c1:	08 
  a350c2:	62 e1 7c 48 28 f8    	vmovaps zmm23,zmm0
  a350c8:	62 f2 65 48 7f c1    	vpermt2ps zmm0,zmm3,zmm1
  a350ce:	62 f1 cd 48 14 cd    	vunpcklpd zmm1,zmm6,zmm5
  a350d4:	62 f1 95 40 14 d4    	vunpcklpd zmm2,zmm29,zmm4
  a350da:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm2
  a350e1:	12 
  a350e2:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a350e8:	62 f2 65 48 7f ca    	vpermt2ps zmm1,zmm3,zmm2
  a350ee:	62 f1 7c 48 10 51 12 	vmovups zmm2,ZMMWORD PTR [rcx+0x480]
  a350f5:	62 71 74 48 59 c2    	vmulps zmm8,zmm1,zmm2
  a350fb:	62 f1 7c 48 59 fa    	vmulps zmm7,zmm0,zmm2
  a35101:	62 f1 7c 48 10 51 13 	vmovups zmm2,ZMMWORD PTR [rcx+0x4c0]
  a35108:	62 f2 6d 48 b8 f9    	vfmadd231ps zmm7,zmm2,zmm1
  a3510e:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm7
  a35115:	01 
  a35116:	62 72 7d 48 bc c2    	vfnmadd231ps zmm8,zmm0,zmm2
  a3511c:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm8
  a35123:	03 
  a35124:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x4c0]
  a3512b:	13 
  a3512c:	62 91 fd 48 14 c7    	vunpcklpd zmm0,zmm0,zmm31
  a35132:	62 b1 bd 40 14 fd    	vunpcklpd zmm7,zmm24,zmm21
  a35138:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm7
  a3513f:	13 
  a35140:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x500]
  a35147:	14 
  a35148:	62 f1 f5 48 14 54 24 	vunpcklpd zmm2,zmm1,ZMMWORD PTR [rsp+0x900]
  a3514f:	24 
  a35150:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x8c0]
  a35157:	23 
  a35158:	62 91 f5 48 14 c9    	vunpcklpd zmm1,zmm1,zmm25
  a3515e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm1
  a35165:	14 
  a35166:	62 61 7c 48 28 c2    	vmovaps zmm24,zmm2
  a3516c:	62 f2 65 48 7f d1    	vpermt2ps zmm2,zmm3,zmm1
  a35172:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a35178:	62 f2 65 48 7f c7    	vpermt2ps zmm0,zmm3,zmm7
  a3517e:	62 f1 7c 48 10 79 0b 	vmovups zmm7,ZMMWORD PTR [rcx+0x2c0]
  a35185:	62 71 7c 48 10 61 0a 	vmovups zmm12,ZMMWORD PTR [rcx+0x280]
  a3518c:	62 d1 7c 48 59 cc    	vmulps zmm1,zmm0,zmm12
  a35192:	62 f2 6d 48 b8 cf    	vfmadd231ps zmm1,zmm2,zmm7
  a35198:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a3519f:	09 
  a351a0:	62 41 6c 48 59 f4    	vmulps zmm30,zmm2,zmm12
  a351a6:	62 62 45 48 bc f0    	vfnmadd231ps zmm30,zmm7,zmm0
  a351ac:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x80]
  a351b3:	02 
  a351b4:	62 72 15 48 7f 7c 24 	vpermt2ps zmm15,zmm13,ZMMWORD PTR [rsp+0x600]
  a351bb:	18 
  a351bc:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm15
  a351c3:	02 
  a351c4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a351cb:	07 
  a351cc:	62 f2 15 48 7f 44 24 	vpermt2ps zmm0,zmm13,ZMMWORD PTR [rsp+0xac0]
  a351d3:	2b 
  a351d4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a351db:	07 
  a351dc:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x300]
  a351e3:	0c 
  a351e4:	62 f2 15 48 7f 54 24 	vpermt2ps zmm2,zmm13,ZMMWORD PTR [rsp+0xa40]
  a351eb:	29 
  a351ec:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm2
  a351f3:	0c 
  a351f4:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xa00]
  a351fb:	28 
  a351fc:	62 f2 15 48 7f 4c 24 	vpermt2ps zmm1,zmm13,ZMMWORD PTR [rsp+0x9c0]
  a35203:	27 
  a35204:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x140]
  a3520b:	05 
  a3520c:	62 f2 15 48 7f 7c 24 	vpermt2ps zmm7,zmm13,ZMMWORD PTR [rsp+0x100]
  a35213:	04 
  a35214:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm7
  a3521b:	05 
  a3521c:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x180]
  a35223:	06 
  a35224:	62 72 15 48 7f 64 24 	vpermt2ps zmm12,zmm13,ZMMWORD PTR [rsp+0xa80]
  a3522b:	2a 
  a3522c:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm12
  a35233:	06 
  a35234:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x980]
  a3523b:	26 
  a3523c:	62 62 15 48 7f 4c 24 	vpermt2ps zmm25,zmm13,ZMMWORD PTR [rsp+0x940]
  a35243:	25 
  a35244:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x2c0]
  a3524b:	0b 
  a3524c:	62 e2 15 48 7f 6c 24 	vpermt2ps zmm21,zmm13,ZMMWORD PTR [rsp+0x280]
  a35253:	0a 
  a35254:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm21
  a3525b:	0b 
  a3525c:	62 f1 85 48 14 c0    	vunpcklpd zmm0,zmm15,zmm0
  a35262:	62 f1 9d 48 14 d2    	vunpcklpd zmm2,zmm12,zmm2
  a35268:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a3526f:	04 
  a35270:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a35276:	62 f2 65 48 7f c2    	vpermt2ps zmm0,zmm3,zmm2
  a3527c:	62 e1 f5 48 14 e7    	vunpcklpd zmm20,zmm1,zmm7
  a35282:	62 b1 b5 40 14 fd    	vunpcklpd zmm7,zmm25,zmm21
  a35288:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm7
  a3528f:	0a 
  a35290:	62 b1 7c 48 28 d4    	vmovaps zmm2,zmm20
  a35296:	62 f2 65 48 7f d7    	vpermt2ps zmm2,zmm3,zmm7
  a3529c:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a352a3:	62 71 7c 48 10 69 03 	vmovups zmm13,ZMMWORD PTR [rcx+0xc0]
  a352aa:	62 c1 6c 48 59 c4    	vmulps zmm16,zmm2,zmm12
  a352b0:	62 c2 7d 48 bc c5    	vfnmadd231ps zmm16,zmm0,zmm13
  a352b6:	62 41 7c 48 59 fc    	vmulps zmm31,zmm0,zmm12
  a352bc:	62 62 15 48 b8 fa    	vfmadd231ps zmm31,zmm13,zmm2
  a352c2:	62 d1 ad 40 15 d6    	vunpckhpd zmm2,zmm26,zmm14
  a352c8:	62 d1 a5 48 15 c1    	vunpckhpd zmm0,zmm11,zmm9
  a352ce:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm0
  a352d5:	18 
  a352d6:	62 f1 cd 48 15 f5    	vunpckhpd zmm6,zmm6,zmm5
  a352dc:	62 e1 95 40 15 ec    	vunpckhpd zmm21,zmm29,zmm4
  a352e2:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a352e8:	62 f2 65 48 7f d0    	vpermt2ps zmm2,zmm3,zmm0
  a352ee:	62 f1 7c 48 28 e6    	vmovaps zmm4,zmm6
  a352f4:	62 b2 65 48 7f f5    	vpermt2ps zmm6,zmm3,zmm21
  a352fa:	62 71 7c 48 10 49 17 	vmovups zmm9,ZMMWORD PTR [rcx+0x5c0]
  a35301:	62 f1 7c 48 10 69 16 	vmovups zmm5,ZMMWORD PTR [rcx+0x580]
  a35308:	62 71 4c 48 59 fd    	vmulps zmm15,zmm6,zmm5
  a3530e:	62 52 6d 48 bc f9    	vfnmadd231ps zmm15,zmm2,zmm9
  a35314:	62 f1 6c 48 59 ed    	vmulps zmm5,zmm2,zmm5
  a3531a:	62 f2 35 48 b8 ee    	vfmadd231ps zmm5,zmm9,zmm6
  a35320:	62 e2 65 48 7f 54 24 	vpermt2ps zmm18,zmm3,ZMMWORD PTR [rsp+0x540]
  a35327:	15 
  a35328:	62 e2 65 48 7f 74 24 	vpermt2ps zmm22,zmm3,ZMMWORD PTR [rsp+0x580]
  a3532f:	16 
  a35330:	62 f1 7c 48 10 51 1f 	vmovups zmm2,ZMMWORD PTR [rcx+0x7c0]
  a35337:	62 f1 7c 48 10 71 1e 	vmovups zmm6,ZMMWORD PTR [rcx+0x780]
  a3533e:	62 61 6c 40 59 d6    	vmulps zmm26,zmm18,zmm6
  a35344:	62 62 4d 40 b8 d2    	vfmadd231ps zmm26,zmm22,zmm2
  a3534a:	62 71 4c 40 59 ce    	vmulps zmm9,zmm22,zmm6
  a35350:	62 32 6d 48 bc ca    	vfnmadd231ps zmm9,zmm2,zmm18
  a35356:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x6c0]
  a3535d:	1b 
  a3535e:	62 f2 65 48 7f 44 24 	vpermt2ps zmm0,zmm3,ZMMWORD PTR [rsp+0x3c0]
  a35365:	0f 
  a35366:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x680]
  a3536d:	1a 
  a3536e:	62 72 65 48 7f 5c 24 	vpermt2ps zmm11,zmm3,ZMMWORD PTR [rsp+0x640]
  a35375:	19 
  a35376:	62 f1 7c 48 10 51 0f 	vmovups zmm2,ZMMWORD PTR [rcx+0x3c0]
  a3537d:	62 f1 7c 48 10 71 0e 	vmovups zmm6,ZMMWORD PTR [rcx+0x380]
  a35384:	62 71 24 48 59 e6    	vmulps zmm12,zmm11,zmm6
  a3538a:	62 72 7d 48 b8 e2    	vfmadd231ps zmm12,zmm0,zmm2
  a35390:	62 f1 7c 48 59 f6    	vmulps zmm6,zmm0,zmm6
  a35396:	62 d2 6d 48 bc f3    	vfnmadd231ps zmm6,zmm2,zmm11
  a3539c:	62 f1 7c 48 28 15 5a 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff691a5a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a353a3:	1a 69 ff 
  a353a6:	62 62 6d 48 7f 5c 24 	vpermt2ps zmm27,zmm2,ZMMWORD PTR [rsp+0x440]
  a353ad:	11 
  a353ae:	62 32 6d 48 7f d3    	vpermt2ps zmm10,zmm2,zmm19
  a353b4:	62 71 7c 48 10 71 19 	vmovups zmm14,ZMMWORD PTR [rcx+0x640]
  a353bb:	62 71 7c 48 10 69 18 	vmovups zmm13,ZMMWORD PTR [rcx+0x600]
  a353c2:	62 51 2c 48 59 dd    	vmulps zmm11,zmm10,zmm13
  a353c8:	62 52 25 40 bc de    	vfnmadd231ps zmm11,zmm27,zmm14
  a353ce:	62 51 24 40 59 ed    	vmulps zmm13,zmm27,zmm13
  a353d4:	62 52 0d 48 b8 ea    	vfmadd231ps zmm13,zmm14,zmm10
  a353da:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a353e1:	02 
  a353e2:	62 71 fd 48 15 54 24 	vunpckhpd zmm10,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a353e9:	07 
  a353ea:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a353f1:	06 
  a353f2:	62 71 fd 48 15 74 24 	vunpckhpd zmm14,zmm0,ZMMWORD PTR [rsp+0x300]
  a353f9:	0c 
  a353fa:	62 e1 f5 48 15 5c 24 	vunpckhpd zmm19,zmm1,ZMMWORD PTR [rsp+0x140]
  a35401:	05 
  a35402:	62 61 b5 40 15 6c 24 	vunpckhpd zmm29,zmm25,ZMMWORD PTR [rsp+0x2c0]
  a35409:	0b 
  a3540a:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  a35410:	62 52 65 48 7f d6    	vpermt2ps zmm10,zmm3,zmm14
  a35416:	62 a1 7c 48 28 d3    	vmovaps zmm18,zmm19
  a3541c:	62 82 65 48 7f dd    	vpermt2ps zmm19,zmm3,zmm29
  a35422:	62 61 7c 48 10 59 07 	vmovups zmm27,ZMMWORD PTR [rcx+0x1c0]
  a35429:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  a35430:	62 61 64 40 59 c8    	vmulps zmm25,zmm19,zmm0
  a35436:	62 02 2d 48 bc cb    	vfnmadd231ps zmm25,zmm10,zmm27
  a3543c:	62 71 2c 48 59 d0    	vmulps zmm10,zmm10,zmm0
  a35442:	62 32 25 40 b8 d3    	vfmadd231ps zmm10,zmm27,zmm19
  a35448:	62 72 6d 48 7f 44 24 	vpermt2ps zmm8,zmm2,ZMMWORD PTR [rsp+0x4c0]
  a3544f:	13 
  a35450:	62 62 6d 48 7f 44 24 	vpermt2ps zmm24,zmm2,ZMMWORD PTR [rsp+0x500]
  a35457:	14 
  a35458:	62 f1 7c 48 10 41 09 	vmovups zmm0,ZMMWORD PTR [rcx+0x240]
  a3545f:	62 e1 7c 48 10 71 08 	vmovups zmm22,ZMMWORD PTR [rcx+0x200]
  a35466:	62 a1 3c 40 59 de    	vmulps zmm19,zmm24,zmm22
  a3546c:	62 e2 3d 48 bc d8    	vfnmadd231ps zmm19,zmm8,zmm0
  a35472:	62 31 3c 48 59 c6    	vmulps zmm8,zmm8,zmm22
  a35478:	62 12 7d 48 b8 c0    	vfmadd231ps zmm8,zmm0,zmm24
  a3547e:	62 f2 6d 48 7f 7c 24 	vpermt2ps zmm7,zmm2,ZMMWORD PTR [rsp+0x600]
  a35485:	18 
  a35486:	62 b2 6d 48 7f e5    	vpermt2ps zmm4,zmm2,zmm21
  a3548c:	62 f1 7c 48 10 41 14 	vmovups zmm0,ZMMWORD PTR [rcx+0x500]
  a35493:	62 61 5c 48 59 d8    	vmulps zmm27,zmm4,zmm0
  a35499:	62 e1 44 48 59 e8    	vmulps zmm21,zmm7,zmm0
  a3549f:	62 f1 7c 48 10 41 15 	vmovups zmm0,ZMMWORD PTR [rcx+0x540]
  a354a6:	62 e2 7d 48 b8 ec    	vfmadd231ps zmm21,zmm0,zmm4
  a354ac:	62 62 45 48 bc d8    	vfnmadd231ps zmm27,zmm7,zmm0
  a354b2:	62 d2 6d 48 7f ce    	vpermt2ps zmm1,zmm2,zmm14
  a354b8:	62 82 6d 48 7f d5    	vpermt2ps zmm18,zmm2,zmm29
  a354be:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a354c5:	62 f1 7c 48 10 59 05 	vmovups zmm3,ZMMWORD PTR [rcx+0x140]
  a354cc:	62 f1 6c 40 59 e0    	vmulps zmm4,zmm18,zmm0
  a354d2:	62 f2 75 48 bc e3    	vfnmadd231ps zmm4,zmm1,zmm3
  a354d8:	62 61 74 48 59 c0    	vmulps zmm24,zmm1,zmm0
  a354de:	62 22 65 48 b8 c2    	vfmadd231ps zmm24,zmm3,zmm18
  a354e4:	62 62 6d 48 7f 64 24 	vpermt2ps zmm28,zmm2,ZMMWORD PTR [rsp+0x480]
  a354eb:	12 
  a354ec:	62 e2 6d 48 7f 7c 24 	vpermt2ps zmm23,zmm2,ZMMWORD PTR [rsp+0x200]
  a354f3:	08 
  a354f4:	62 f1 7c 48 10 41 11 	vmovups zmm0,ZMMWORD PTR [rcx+0x440]
  a354fb:	62 f1 7c 48 10 49 10 	vmovups zmm1,ZMMWORD PTR [rcx+0x400]
  a35502:	62 f1 44 40 59 d9    	vmulps zmm3,zmm23,zmm1
  a35508:	62 f2 1d 40 b8 d8    	vfmadd231ps zmm3,zmm28,zmm0
  a3550e:	62 61 1c 40 59 e9    	vmulps zmm29,zmm28,zmm1
  a35514:	62 22 7d 48 bc ef    	vfnmadd231ps zmm29,zmm0,zmm23
  a3551a:	62 e2 6d 48 7f 4c 24 	vpermt2ps zmm17,zmm2,ZMMWORD PTR [rsp+0x100]
  a35521:	04 
  a35522:	62 e2 6d 48 7f 64 24 	vpermt2ps zmm20,zmm2,ZMMWORD PTR [rsp+0x280]
  a35529:	0a 
  a3552a:	62 e1 74 40 5c f3    	vsubps zmm22,zmm17,zmm3
  a35530:	62 a1 64 48 58 f9    	vaddps zmm23,zmm3,zmm17
  a35536:	62 41 3c 48 5c e5    	vsubps zmm28,zmm8,zmm13
  a3553c:	62 51 3c 48 58 ed    	vaddps zmm13,zmm8,zmm13
  a35542:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x700]
  a35549:	1c 
  a3554a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x380]
  a35551:	0e 
  a35552:	62 71 7c 48 5c c1    	vsubps zmm8,zmm0,zmm1
  a35558:	62 f1 7c 48 58 c1    	vaddps zmm0,zmm0,zmm1
  a3555e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a35565:	02 
  a35566:	62 91 1c 48 5c ca    	vsubps zmm1,zmm12,zmm26
  a3556c:	62 91 1c 48 58 c2    	vaddps zmm0,zmm12,zmm26
  a35572:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a35579:	07 
  a3557a:	62 71 2c 48 5c e5    	vsubps zmm12,zmm10,zmm5
  a35580:	62 f1 2c 48 58 c5    	vaddps zmm0,zmm10,zmm5
  a35586:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a3558d:	06 
  a3558e:	62 71 34 48 5c d6    	vsubps zmm10,zmm9,zmm6
  a35594:	62 41 4c 48 58 d1    	vaddps zmm26,zmm6,zmm9
  a3559a:	62 51 34 40 5c cf    	vsubps zmm9,zmm25,zmm15
  a355a0:	62 c1 34 40 58 cf    	vaddps zmm17,zmm25,zmm15
  a355a6:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x5c0]
  a355ad:	17 
  a355ae:	62 01 7c 48 5c ce    	vsubps zmm25,zmm0,zmm30
  a355b4:	62 71 0c 40 58 f0    	vaddps zmm14,zmm30,zmm0
  a355ba:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a355c1:	03 
  a355c2:	62 61 7c 40 5c f0    	vsubps zmm30,zmm16,zmm0
  a355c8:	62 e1 7c 40 58 d0    	vaddps zmm18,zmm16,zmm0
  a355ce:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a355d5:	01 
  a355d6:	62 f1 04 40 5c f8    	vsubps zmm7,zmm31,zmm0
  a355dc:	62 f1 04 40 58 c0    	vaddps zmm0,zmm31,zmm0
  a355e2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a355e9:	08 
  a355ea:	62 91 5c 48 5c eb    	vsubps zmm5,zmm4,zmm27
  a355f0:	62 81 5c 48 58 c3    	vaddps zmm16,zmm4,zmm27
  a355f6:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x340]
  a355fd:	0d 
  a355fe:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x240]
  a35605:	09 
  a35606:	62 61 6c 48 5c d8    	vsubps zmm27,zmm2,zmm0
  a3560c:	62 f1 6c 48 58 f0    	vaddps zmm6,zmm2,zmm0
  a35612:	62 91 5c 40 5c d5    	vsubps zmm2,zmm20,zmm29
  a35618:	62 81 5c 40 58 e5    	vaddps zmm20,zmm20,zmm29
  a3561e:	62 31 24 48 5c fb    	vsubps zmm15,zmm11,zmm19
  a35624:	62 c1 64 40 58 db    	vaddps zmm19,zmm19,zmm11
  a3562a:	62 b1 3c 40 5c c5    	vsubps zmm0,zmm24,zmm21
  a35630:	62 31 3c 40 58 dd    	vaddps zmm11,zmm24,zmm21
  a35636:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x740]
  a3563d:	1d 
  a3563e:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x400]
  a35645:	10 
  a35646:	62 b1 5c 48 5c dd    	vsubps zmm3,zmm4,zmm21
  a3564c:	62 a1 5c 48 58 ed    	vaddps zmm21,zmm4,zmm21
  a35652:	62 41 64 48 5c e8    	vsubps zmm29,zmm3,zmm8
  a35658:	62 f1 3c 48 58 db    	vaddps zmm3,zmm8,zmm3
  a3565e:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm3
  a35665:	05 
  a35666:	62 41 4c 40 5c ff    	vsubps zmm31,zmm22,zmm15
  a3566c:	62 b1 04 48 58 de    	vaddps zmm3,zmm15,zmm22
  a35672:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a35679:	01 
  a3567a:	62 f1 34 48 5c d9    	vsubps zmm3,zmm9,zmm1
  a35680:	62 f1 34 48 58 c9    	vaddps zmm1,zmm9,zmm1
  a35686:	62 51 1c 48 5c ca    	vsubps zmm9,zmm12,zmm10
  a3568c:	62 51 1c 48 58 e2    	vaddps zmm12,zmm12,zmm10
  a35692:	62 11 0c 40 5c d3    	vsubps zmm10,zmm30,zmm27
  a35698:	62 01 0c 40 58 db    	vaddps zmm27,zmm30,zmm27
  a3569e:	62 01 44 48 5c f1    	vsubps zmm30,zmm7,zmm25
  a356a4:	62 91 44 48 58 f9    	vaddps zmm7,zmm7,zmm25
  a356aa:	62 61 54 48 58 c8    	vaddps zmm25,zmm5,zmm0
  a356b0:	62 61 7c 48 5c c5    	vsubps zmm24,zmm0,zmm5
  a356b6:	62 51 44 40 5c fd    	vsubps zmm15,zmm23,zmm13
  a356bc:	62 b1 14 48 58 c7    	vaddps zmm0,zmm13,zmm23
  a356c2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a356c9:	04 
  a356ca:	62 81 6c 48 5c f4    	vsubps zmm22,zmm2,zmm28
  a356d0:	62 91 6c 48 58 c4    	vaddps zmm0,zmm2,zmm28
  a356d6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a356dd:	0a 
  a356de:	62 81 74 40 5c fa    	vsubps zmm23,zmm17,zmm26
  a356e4:	62 91 74 40 58 c2    	vaddps zmm0,zmm17,zmm26
  a356ea:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a356f1:	03 
  a356f2:	62 21 24 48 5c e5    	vsubps zmm28,zmm11,zmm21
  a356f8:	62 31 24 48 58 ed    	vaddps zmm13,zmm11,zmm21
  a356fe:	62 d1 6c 40 5c d6    	vsubps zmm2,zmm18,zmm14
  a35704:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0x200]
  a3570b:	08 
  a3570c:	62 71 2c 40 5c c6    	vsubps zmm8,zmm26,zmm6
  a35712:	62 d1 6c 48 58 c0    	vaddps zmm0,zmm2,zmm8
  a35718:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a3571f:	09 
  a35720:	62 e1 3c 48 5c ea    	vsubps zmm21,zmm8,zmm2
  a35726:	62 d1 6c 40 58 c6    	vaddps zmm0,zmm18,zmm14
  a3572c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm0
  a35733:	0c 
  a35734:	62 b1 5c 40 5c c3    	vsubps zmm0,zmm20,zmm19
  a3573a:	62 b1 5c 40 58 d3    	vaddps zmm2,zmm20,zmm19
  a35740:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm2
  a35747:	0b 
  a35748:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x80]
  a3574f:	02 
  a35750:	62 a1 6c 48 5c d0    	vsubps zmm18,zmm2,zmm16
  a35756:	62 f1 7c 40 58 d2    	vaddps zmm2,zmm16,zmm2
  a3575c:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a35763:	02 
  a35764:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x1c0]
  a3576b:	07 
  a3576c:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x180]
  a35773:	06 
  a35774:	62 c1 24 48 5c c0    	vsubps zmm16,zmm11,zmm8
  a3577a:	62 b1 7c 40 5c ef    	vsubps zmm5,zmm16,zmm23
  a35780:	62 a1 44 40 58 f8    	vaddps zmm23,zmm23,zmm16
  a35786:	62 f2 7d 48 18 15 70 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff63ff70]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a3578d:	ff 63 ff 
  a35790:	62 e1 0c 40 59 e2    	vmulps zmm20,zmm30,zmm2
  a35796:	62 f2 7d 48 18 25 c4 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff63fec4]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a3579d:	fe 63 ff 
  a357a0:	62 e2 2d 48 b8 e4    	vfmadd231ps zmm20,zmm10,zmm4
  a357a6:	62 61 0c 40 59 f4    	vmulps zmm30,zmm30,zmm4
  a357ac:	62 42 6d 48 bc f2    	vfnmadd231ps zmm30,zmm2,zmm10
  a357b2:	62 71 34 48 59 d4    	vmulps zmm10,zmm9,zmm4
  a357b8:	62 72 65 48 b8 d2    	vfmadd231ps zmm10,zmm3,zmm2
  a357be:	62 f1 64 48 59 dc    	vmulps zmm3,zmm3,zmm4
  a357c4:	62 d2 6d 48 bc d9    	vfnmadd231ps zmm3,zmm2,zmm9
  a357ca:	62 e1 44 48 59 cc    	vmulps zmm17,zmm7,zmm4
  a357d0:	62 e2 25 40 b8 ca    	vfmadd231ps zmm17,zmm27,zmm2
  a357d6:	62 f1 44 48 59 fa    	vmulps zmm7,zmm7,zmm2
  a357dc:	62 92 5d 48 bc fb    	vfnmadd231ps zmm7,zmm4,zmm27
  a357e2:	62 71 1c 48 59 ca    	vmulps zmm9,zmm12,zmm2
  a357e8:	62 72 75 48 b8 cc    	vfmadd231ps zmm9,zmm1,zmm4
  a357ee:	62 71 1c 48 59 e4    	vmulps zmm12,zmm12,zmm4
  a357f4:	62 72 6d 48 bc e1    	vfnmadd231ps zmm12,zmm2,zmm1
  a357fa:	62 f2 7d 48 18 25 98 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff63fb98]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a35801:	fb 63 ff 
  a35804:	62 f1 3c 40 59 cc    	vmulps zmm1,zmm24,zmm4
  a3580a:	62 e1 5c 48 59 44 24 	vmulps zmm16,zmm4,ZMMWORD PTR [rsp+0x140]
  a35811:	05 
  a35812:	62 21 74 48 58 c0    	vaddps zmm24,zmm1,zmm16
  a35818:	62 b1 74 48 5c d0    	vsubps zmm2,zmm1,zmm16
  a3581e:	62 e1 14 40 59 c4    	vmulps zmm16,zmm29,zmm4
  a35824:	62 61 34 40 59 cc    	vmulps zmm25,zmm25,zmm4
  a3582a:	62 01 7c 40 5c d9    	vsubps zmm27,zmm16,zmm25
  a35830:	62 21 34 40 58 c8    	vaddps zmm25,zmm25,zmm16
  a35836:	62 f1 2c 40 58 ce    	vaddps zmm1,zmm26,zmm6
  a3583c:	62 c1 24 48 58 c0    	vaddps zmm16,zmm11,zmm8
  a35842:	62 81 04 40 5c db    	vsubps zmm19,zmm31,zmm27
  a35848:	62 91 24 40 58 f7    	vaddps zmm6,zmm27,zmm31
  a3584e:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm6
  a35855:	07 
  a35856:	62 21 04 48 5c fa    	vsubps zmm31,zmm15,zmm18
  a3585c:	62 41 6c 40 58 df    	vaddps zmm27,zmm18,zmm15
  a35862:	62 71 54 40 59 fc    	vmulps zmm15,zmm21,zmm4
  a35868:	62 e1 44 40 59 d4    	vmulps zmm18,zmm23,zmm4
  a3586e:	62 a1 04 48 58 ea    	vaddps zmm21,zmm15,zmm18
  a35874:	62 a1 04 48 5c d2    	vsubps zmm18,zmm15,zmm18
  a3587a:	62 81 4c 40 5c f8    	vsubps zmm23,zmm22,zmm24
  a35880:	62 01 4c 40 58 e8    	vaddps zmm29,zmm22,zmm24
  a35886:	62 81 7c 48 5c f4    	vsubps zmm22,zmm0,zmm28
  a3588c:	62 01 7c 48 58 e4    	vaddps zmm28,zmm0,zmm28
  a35892:	62 f1 54 48 59 c4    	vmulps zmm0,zmm5,zmm4
  a35898:	62 71 5c 48 59 7c 24 	vmulps zmm15,zmm4,ZMMWORD PTR [rsp+0x240]
  a3589f:	09 
  a358a0:	62 41 7c 48 5c d7    	vsubps zmm26,zmm0,zmm15
  a358a6:	62 71 04 48 58 f0    	vaddps zmm14,zmm15,zmm0
  a358ac:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a358b3:	01 
  a358b4:	62 71 7c 48 5c c2    	vsubps zmm8,zmm0,zmm2
  a358ba:	62 f1 6c 48 58 c0    	vaddps zmm0,zmm2,zmm0
  a358c0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a358c7:	05 
  a358c8:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a358cf:	0a 
  a358d0:	62 11 7c 48 5c d9    	vsubps zmm11,zmm0,zmm25
  a358d6:	62 91 7c 48 58 c1    	vaddps zmm0,zmm0,zmm25
  a358dc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a358e3:	06 
  a358e4:	62 61 0c 40 5c cb    	vsubps zmm25,zmm30,zmm3
  a358ea:	62 61 0c 40 58 f3    	vaddps zmm30,zmm30,zmm3
  a358f0:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a358f7:	04 
  a358f8:	62 d1 7c 48 5c dd    	vsubps zmm3,zmm0,zmm13
  a358fe:	62 71 14 48 58 e8    	vaddps zmm13,zmm13,zmm0
  a35904:	62 d1 5c 40 58 c2    	vaddps zmm0,zmm20,zmm10
  a3590a:	62 51 5c 40 5c d2    	vsubps zmm10,zmm20,zmm10
  a35910:	62 a1 74 48 5c e0    	vsubps zmm20,zmm1,zmm16
  a35916:	62 a1 74 48 58 c0    	vaddps zmm16,zmm1,zmm16
  a3591c:	62 d1 44 48 5c e4    	vsubps zmm4,zmm7,zmm12
  a35922:	62 d1 44 48 58 fc    	vaddps zmm7,zmm7,zmm12
  a35928:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x2c0]
  a3592f:	0b 
  a35930:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x80]
  a35937:	02 
  a35938:	62 f1 74 48 5c d5    	vsubps zmm2,zmm1,zmm5
  a3593e:	62 f1 74 48 58 f5    	vaddps zmm6,zmm1,zmm5
  a35944:	62 b1 34 48 5c c9    	vsubps zmm1,zmm9,zmm17
  a3594a:	62 c1 74 40 58 c9    	vaddps zmm17,zmm17,zmm9
  a35950:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0xc0]
  a35957:	03 
  a35958:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x300]
  a3595f:	0c 
  a35960:	62 51 54 48 5c cc    	vsubps zmm9,zmm5,zmm12
  a35966:	62 f1 1c 48 58 ed    	vaddps zmm5,zmm12,zmm5
  a3596c:	62 11 04 40 5c e2    	vsubps zmm12,zmm31,zmm26
  a35972:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm12
  a35979:	03 
  a3597a:	62 11 04 40 58 fa    	vaddps zmm15,zmm31,zmm26
  a35980:	62 31 4c 40 5c e5    	vsubps zmm12,zmm22,zmm21
  a35986:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm12
  a3598d:	02 
  a3598e:	62 21 4c 40 58 c5    	vaddps zmm24,zmm22,zmm21
  a35994:	62 61 64 40 58 f8    	vaddps zmm31,zmm19,zmm0
  a3599a:	62 71 64 40 5c e0    	vsubps zmm12,zmm19,zmm0
  a359a0:	62 41 64 48 5c d1    	vsubps zmm26,zmm3,zmm9
  a359a6:	62 c1 64 48 58 e9    	vaddps zmm21,zmm3,zmm9
  a359ac:	62 91 44 40 5c c1    	vsubps zmm0,zmm23,zmm25
  a359b2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a359b9:	01 
  a359ba:	62 91 44 40 58 d9    	vaddps zmm3,zmm23,zmm25
  a359c0:	62 b1 6c 48 5c c4    	vsubps zmm0,zmm2,zmm20
  a359c6:	62 a1 6c 48 58 fc    	vaddps zmm23,zmm2,zmm20
  a359cc:	62 61 3c 48 5c c9    	vsubps zmm25,zmm8,zmm1
  a359d2:	62 e1 3c 48 58 e1    	vaddps zmm20,zmm8,zmm1
  a359d8:	62 31 24 40 5c ca    	vsubps zmm9,zmm27,zmm18
  a359de:	62 21 24 40 58 da    	vaddps zmm27,zmm27,zmm18
  a359e4:	62 f1 24 48 5c cc    	vsubps zmm1,zmm11,zmm4
  a359ea:	62 e1 24 48 58 f4    	vaddps zmm22,zmm11,zmm4
  a359f0:	62 d1 1c 40 5c e6    	vsubps zmm4,zmm28,zmm14
  a359f6:	62 51 1c 40 58 de    	vaddps zmm11,zmm28,zmm14
  a359fc:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x1c0]
  a35a03:	07 
  a35a04:	62 11 6c 48 5c c6    	vsubps zmm8,zmm2,zmm30
  a35a0a:	62 01 6c 48 58 e6    	vaddps zmm28,zmm2,zmm30
  a35a10:	62 31 14 48 5c f0    	vsubps zmm14,zmm13,zmm16
  a35a16:	62 31 14 48 58 e8    	vaddps zmm13,zmm13,zmm16
  a35a1c:	62 d1 14 40 5c d2    	vsubps zmm2,zmm29,zmm10
  a35a22:	62 51 14 40 58 d2    	vaddps zmm10,zmm29,zmm10
  a35a28:	62 e1 4c 48 5c d5    	vsubps zmm18,zmm6,zmm5
  a35a2e:	62 f1 4c 48 58 ed    	vaddps zmm5,zmm6,zmm5
  a35a34:	62 d1 7c 48 28 f5    	vmovaps zmm6,zmm13
  a35a3a:	62 61 7c 48 28 2d 7c 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff65b57c]        # 90fc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e470>
  a35a41:	b5 65 ff 
  a35a44:	62 f2 15 40 7f f5    	vpermt2ps zmm6,zmm29,zmm5
  a35a4a:	62 f1 7c 48 11 34 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm6
  a35a51:	62 f1 14 48 14 f5    	vunpcklps zmm6,zmm13,zmm5
  a35a57:	62 f3 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x60],zmm6,0x3
  a35a5e:	06 03 
  a35a60:	62 f1 14 48 15 f5    	vunpckhps zmm6,zmm13,zmm5
  a35a66:	62 f3 7d 48 19 f6 03 	vextractf32x4 xmm6,zmm6,0x3
  a35a6d:	c5 f8 13 74 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm6
  a35a73:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x140]
  a35a7a:	05 
  a35a7b:	62 e1 4c 48 5c c7    	vsubps zmm16,zmm6,zmm7
  a35a81:	62 f1 4c 48 58 f7    	vaddps zmm6,zmm6,zmm7
  a35a87:	62 61 7c 28 28 35 6f 	vmovaps ymm30,YMMWORD PTR [rip+0xffffffffff65b56f]        # 91000 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e4b0>
  a35a8e:	b5 65 ff 
  a35a91:	62 72 0d 40 7f ed    	vpermt2ps zmm13,zmm30,zmm5
  a35a97:	c5 7c 11 6c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm13
  a35a9d:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x180]
  a35aa4:	06 
  a35aa5:	62 a1 54 48 5c d9    	vsubps zmm19,zmm5,zmm17
  a35aab:	62 b1 54 48 58 e9    	vaddps zmm5,zmm5,zmm17
  a35ab1:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a35ab7:	62 f2 15 40 7f fd    	vpermt2ps zmm7,zmm29,zmm5
  a35abd:	62 f1 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x78],zmm7
  a35ac4:	78 00 00 00 
  a35ac8:	62 f1 4c 48 14 fd    	vunpcklps zmm7,zmm6,zmm5
  a35ace:	62 f3 7d 48 19 bc 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xd8],zmm7,0x3
  a35ad5:	d8 00 00 00 03 
  a35ada:	62 f1 4c 48 15 fd    	vunpckhps zmm7,zmm6,zmm5
  a35ae0:	62 f3 7d 48 19 ff 03 	vextractf32x4 xmm7,zmm7,0x3
  a35ae7:	c5 f8 13 bc 16 e8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xe8],xmm7
  a35aee:	00 00 
  a35af0:	62 f2 0d 40 7f f5    	vpermt2ps zmm6,zmm30,zmm5
  a35af6:	c5 fc 11 b4 16 b8 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xb8],ymm6
  a35afd:	00 00 
  a35aff:	62 91 7c 48 28 eb    	vmovaps zmm5,zmm27
  a35b05:	62 d2 15 40 7f eb    	vpermt2ps zmm5,zmm29,zmm11
  a35b0b:	62 f1 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm5
  a35b12:	f0 00 00 00 
  a35b16:	62 d1 24 40 14 eb    	vunpcklps zmm5,zmm27,zmm11
  a35b1c:	62 f3 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x150],zmm5,0x3
  a35b23:	15 03 
  a35b25:	62 d1 24 40 15 eb    	vunpckhps zmm5,zmm27,zmm11
  a35b2b:	62 f3 7d 48 19 ed 03 	vextractf32x4 xmm5,zmm5,0x3
  a35b32:	c5 f8 13 ac 16 60 01 	vmovlps QWORD PTR [rsi+rdx*1+0x160],xmm5
  a35b39:	00 00 
  a35b3b:	62 42 0d 40 7f db    	vpermt2ps zmm27,zmm30,zmm11
  a35b41:	62 61 7c 28 11 9c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x130],ymm27
  a35b48:	30 01 00 00 
  a35b4c:	62 91 7c 48 28 ec    	vmovaps zmm5,zmm28
  a35b52:	62 d2 15 40 7f ea    	vpermt2ps zmm5,zmm29,zmm10
  a35b58:	62 f1 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x168],zmm5
  a35b5f:	68 01 00 00 
  a35b63:	62 d1 1c 40 14 ea    	vunpcklps zmm5,zmm28,zmm10
  a35b69:	62 f3 7d 48 19 ac 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1c8],zmm5,0x3
  a35b70:	c8 01 00 00 03 
  a35b75:	62 d1 1c 40 15 ea    	vunpckhps zmm5,zmm28,zmm10
  a35b7b:	62 f3 7d 48 19 ed 03 	vextractf32x4 xmm5,zmm5,0x3
  a35b82:	c5 f8 13 ac 16 d8 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1d8],xmm5
  a35b89:	00 00 
  a35b8b:	62 42 0d 40 7f e2    	vpermt2ps zmm28,zmm30,zmm10
  a35b91:	62 61 7c 28 11 a4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a8],ymm28
  a35b98:	a8 01 00 00 
  a35b9c:	62 b1 7c 48 28 ed    	vmovaps zmm5,zmm21
  a35ba2:	62 b2 15 40 7f ef    	vpermt2ps zmm5,zmm29,zmm23
  a35ba8:	62 f1 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm5
  a35baf:	e0 01 00 00 
  a35bb3:	62 b1 54 40 14 ef    	vunpcklps zmm5,zmm21,zmm23
  a35bb9:	62 f3 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x240],zmm5,0x3
  a35bc0:	24 03 
  a35bc2:	62 b1 54 40 15 ef    	vunpckhps zmm5,zmm21,zmm23
  a35bc8:	62 f3 7d 48 19 ed 03 	vextractf32x4 xmm5,zmm5,0x3
  a35bcf:	c5 f8 13 ac 16 50 02 	vmovlps QWORD PTR [rsi+rdx*1+0x250],xmm5
  a35bd6:	00 00 
  a35bd8:	62 a2 0d 40 7f ef    	vpermt2ps zmm21,zmm30,zmm23
  a35bde:	62 e1 7c 28 11 6c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm21
  a35be5:	11 
  a35be6:	62 b1 7c 48 28 ec    	vmovaps zmm5,zmm20
  a35bec:	62 b2 15 40 7f ee    	vpermt2ps zmm5,zmm29,zmm22
  a35bf2:	62 f1 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x258],zmm5
  a35bf9:	58 02 00 00 
  a35bfd:	62 b1 5c 40 14 ee    	vunpcklps zmm5,zmm20,zmm22
  a35c03:	62 f3 7d 48 19 ac 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x2b8],zmm5,0x3
  a35c0a:	b8 02 00 00 03 
  a35c0f:	62 b1 5c 40 15 ee    	vunpckhps zmm5,zmm20,zmm22
  a35c15:	62 f3 7d 48 19 ed 03 	vextractf32x4 xmm5,zmm5,0x3
  a35c1c:	c5 f8 13 ac 16 c8 02 	vmovlps QWORD PTR [rsi+rdx*1+0x2c8],xmm5
  a35c23:	00 00 
  a35c25:	62 a2 0d 40 7f e6    	vpermt2ps zmm20,zmm30,zmm22
  a35c2b:	62 e1 7c 28 11 a4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x298],ymm20
  a35c32:	98 02 00 00 
  a35c36:	62 d1 7c 48 28 ef    	vmovaps zmm5,zmm15
  a35c3c:	62 92 15 40 7f e8    	vpermt2ps zmm5,zmm29,zmm24
  a35c42:	62 f1 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm5
  a35c49:	d0 02 00 00 
  a35c4d:	62 91 04 48 14 e8    	vunpcklps zmm5,zmm15,zmm24
  a35c53:	62 f3 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x330],zmm5,0x3
  a35c5a:	33 03 
  a35c5c:	62 91 04 48 15 e8    	vunpckhps zmm5,zmm15,zmm24
  a35c62:	62 f3 7d 48 19 ed 03 	vextractf32x4 xmm5,zmm5,0x3
  a35c69:	c5 f8 13 ac 16 40 03 	vmovlps QWORD PTR [rsi+rdx*1+0x340],xmm5
  a35c70:	00 00 
  a35c72:	62 12 0d 40 7f f8    	vpermt2ps zmm15,zmm30,zmm24
  a35c78:	c5 7c 11 bc 16 10 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x310],ymm15
  a35c7f:	00 00 
  a35c81:	62 d1 7c 48 28 ec    	vmovaps zmm5,zmm12
  a35c87:	62 f2 15 40 7f eb    	vpermt2ps zmm5,zmm29,zmm3
  a35c8d:	62 f1 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x348],zmm5
  a35c94:	48 03 00 00 
  a35c98:	62 f1 1c 48 14 eb    	vunpcklps zmm5,zmm12,zmm3
  a35c9e:	62 f3 7d 48 19 ac 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x3a8],zmm5,0x3
  a35ca5:	a8 03 00 00 03 
  a35caa:	62 f1 1c 48 15 eb    	vunpckhps zmm5,zmm12,zmm3
  a35cb0:	62 f3 7d 48 19 ed 03 	vextractf32x4 xmm5,zmm5,0x3
  a35cb7:	c5 f8 13 ac 16 b8 03 	vmovlps QWORD PTR [rsi+rdx*1+0x3b8],xmm5
  a35cbe:	00 00 
  a35cc0:	62 72 0d 40 7f e3    	vpermt2ps zmm12,zmm30,zmm3
  a35cc6:	c5 7c 11 a4 16 88 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x388],ymm12
  a35ccd:	00 00 
  a35ccf:	62 d1 7c 48 28 de    	vmovaps zmm3,zmm14
  a35cd5:	62 b2 15 40 7f da    	vpermt2ps zmm3,zmm29,zmm18
  a35cdb:	62 f1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3c0],zmm3
  a35ce2:	0f 
  a35ce3:	62 b1 0c 48 14 da    	vunpcklps zmm3,zmm14,zmm18
  a35ce9:	62 f3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x420],zmm3,0x3
  a35cf0:	42 03 
  a35cf2:	62 b1 0c 48 15 da    	vunpckhps zmm3,zmm14,zmm18
  a35cf8:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a35cff:	c5 f8 13 9c 16 30 04 	vmovlps QWORD PTR [rsi+rdx*1+0x430],xmm3
  a35d06:	00 00 
  a35d08:	62 32 0d 40 7f f2    	vpermt2ps zmm14,zmm30,zmm18
  a35d0e:	c5 7c 11 b4 16 00 04 	vmovups YMMWORD PTR [rsi+rdx*1+0x400],ymm14
  a35d15:	00 00 
  a35d17:	62 b1 7c 48 28 d8    	vmovaps zmm3,zmm16
  a35d1d:	62 b2 15 40 7f db    	vpermt2ps zmm3,zmm29,zmm19
  a35d23:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x438],zmm3
  a35d2a:	38 04 00 00 
  a35d2e:	62 b1 7c 40 14 db    	vunpcklps zmm3,zmm16,zmm19
  a35d34:	62 f3 7d 48 19 9c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x498],zmm3,0x3
  a35d3b:	98 04 00 00 03 
  a35d40:	62 b1 7c 40 15 db    	vunpckhps zmm3,zmm16,zmm19
  a35d46:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a35d4d:	c5 f8 13 9c 16 a8 04 	vmovlps QWORD PTR [rsi+rdx*1+0x4a8],xmm3
  a35d54:	00 00 
  a35d56:	62 a2 0d 40 7f c3    	vpermt2ps zmm16,zmm30,zmm19
  a35d5c:	62 e1 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x478],ymm16
  a35d63:	78 04 00 00 
  a35d67:	62 d1 7c 48 28 d9    	vmovaps zmm3,zmm9
  a35d6d:	62 f2 15 40 7f dc    	vpermt2ps zmm3,zmm29,zmm4
  a35d73:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4b0],zmm3
  a35d7a:	b0 04 00 00 
  a35d7e:	62 f1 34 48 14 dc    	vunpcklps zmm3,zmm9,zmm4
  a35d84:	62 f3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x510],zmm3,0x3
  a35d8b:	51 03 
  a35d8d:	62 f1 34 48 15 dc    	vunpckhps zmm3,zmm9,zmm4
  a35d93:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a35d9a:	c5 f8 13 9c 16 20 05 	vmovlps QWORD PTR [rsi+rdx*1+0x520],xmm3
  a35da1:	00 00 
  a35da3:	62 72 0d 40 7f cc    	vpermt2ps zmm9,zmm30,zmm4
  a35da9:	c5 7c 11 8c 16 f0 04 	vmovups YMMWORD PTR [rsi+rdx*1+0x4f0],ymm9
  a35db0:	00 00 
  a35db2:	62 d1 7c 48 28 d8    	vmovaps zmm3,zmm8
  a35db8:	62 f2 15 40 7f da    	vpermt2ps zmm3,zmm29,zmm2
  a35dbe:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x528],zmm3
  a35dc5:	28 05 00 00 
  a35dc9:	62 f1 3c 48 14 da    	vunpcklps zmm3,zmm8,zmm2
  a35dcf:	62 f3 7d 48 19 9c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x588],zmm3,0x3
  a35dd6:	88 05 00 00 03 
  a35ddb:	62 f1 3c 48 15 da    	vunpckhps zmm3,zmm8,zmm2
  a35de1:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a35de8:	c5 f8 13 9c 16 98 05 	vmovlps QWORD PTR [rsi+rdx*1+0x598],xmm3
  a35def:	00 00 
  a35df1:	62 72 0d 40 7f c2    	vpermt2ps zmm8,zmm30,zmm2
  a35df7:	c5 7c 11 84 16 68 05 	vmovups YMMWORD PTR [rsi+rdx*1+0x568],ymm8
  a35dfe:	00 00 
  a35e00:	62 91 7c 48 28 d2    	vmovaps zmm2,zmm26
  a35e06:	62 f2 15 40 7f d0    	vpermt2ps zmm2,zmm29,zmm0
  a35e0c:	62 f1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x5a0],zmm2
  a35e13:	a0 05 00 00 
  a35e17:	62 f1 2c 40 14 d0    	vunpcklps zmm2,zmm26,zmm0
  a35e1d:	62 f3 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x600],zmm2,0x3
  a35e24:	60 03 
  a35e26:	62 f1 2c 40 15 d0    	vunpckhps zmm2,zmm26,zmm0
  a35e2c:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a35e33:	c5 f8 13 94 16 10 06 	vmovlps QWORD PTR [rsi+rdx*1+0x610],xmm2
  a35e3a:	00 00 
  a35e3c:	62 62 0d 40 7f d0    	vpermt2ps zmm26,zmm30,zmm0
  a35e42:	62 61 7c 28 11 54 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x5e0],ymm26
  a35e49:	2f 
  a35e4a:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a35e50:	62 f2 15 40 7f c1    	vpermt2ps zmm0,zmm29,zmm1
  a35e56:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x618],zmm0
  a35e5d:	18 06 00 00 
  a35e61:	62 f1 34 40 14 c1    	vunpcklps zmm0,zmm25,zmm1
  a35e67:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x678],zmm0,0x3
  a35e6e:	78 06 00 00 03 
  a35e73:	62 f1 34 40 15 c1    	vunpckhps zmm0,zmm25,zmm1
  a35e79:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a35e80:	c5 f8 13 84 16 88 06 	vmovlps QWORD PTR [rsi+rdx*1+0x688],xmm0
  a35e87:	00 00 
  a35e89:	62 62 0d 40 7f c9    	vpermt2ps zmm25,zmm30,zmm1
  a35e8f:	62 61 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x658],ymm25
  a35e96:	58 06 00 00 
  a35e9a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a35ea1:	03 
  a35ea2:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a35ea8:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x80]
  a35eaf:	02 
  a35eb0:	62 f2 15 40 7f c2    	vpermt2ps zmm0,zmm29,zmm2
  a35eb6:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x690],zmm0
  a35ebd:	90 06 00 00 
  a35ec1:	62 f1 74 48 14 c2    	vunpcklps zmm0,zmm1,zmm2
  a35ec7:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x6f0],zmm0,0x3
  a35ece:	6f 03 
  a35ed0:	62 f1 74 48 15 c2    	vunpckhps zmm0,zmm1,zmm2
  a35ed6:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a35edd:	c5 f8 13 84 16 00 07 	vmovlps QWORD PTR [rsi+rdx*1+0x700],xmm0
  a35ee4:	00 00 
  a35ee6:	62 f2 0d 40 7f ca    	vpermt2ps zmm1,zmm30,zmm2
  a35eec:	c5 fc 11 8c 16 d0 06 	vmovups YMMWORD PTR [rsi+rdx*1+0x6d0],ymm1
  a35ef3:	00 00 
  a35ef5:	62 91 7c 48 28 c7    	vmovaps zmm0,zmm31
  a35efb:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a35f02:	01 
  a35f03:	62 f2 15 40 7f c1    	vpermt2ps zmm0,zmm29,zmm1
  a35f09:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x708],zmm0
  a35f10:	08 07 00 00 
  a35f14:	62 f1 04 40 14 c1    	vunpcklps zmm0,zmm31,zmm1
  a35f1a:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x768],zmm0,0x3
  a35f21:	68 07 00 00 03 
  a35f26:	62 f1 04 40 15 c1    	vunpckhps zmm0,zmm31,zmm1
  a35f2c:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a35f33:	c5 f8 13 84 16 78 07 	vmovlps QWORD PTR [rsi+rdx*1+0x778],xmm0
  a35f3a:	00 00 
  a35f3c:	62 62 0d 40 7f f9    	vpermt2ps zmm31,zmm30,zmm1
  a35f42:	62 61 7c 28 11 bc 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x748],ymm31
  a35f49:	48 07 00 00 
  a35f4d:	48 81 c2 80 07 00 00 	add    rdx,0x780
  a35f54:	48 39 d0             	cmp    rax,rdx
  a35f57:	0f 85 13 e3 ff ff    	jne    a34270 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a35f5d:	48 89 ec             	mov    rsp,rbp
  a35f60:	5d                   	pop    rbp
  a35f61:	c5 f8 77             	vzeroupper
  a35f64:	c3                   	ret
