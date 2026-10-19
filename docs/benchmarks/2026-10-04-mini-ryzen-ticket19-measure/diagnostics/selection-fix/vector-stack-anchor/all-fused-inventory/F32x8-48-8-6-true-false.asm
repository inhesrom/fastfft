
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000709380 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  709380:	48 81 ec 88 00 00 00 	sub    rsp,0x88
  709387:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  70938b:	c5 f8 10 57 20       	vmovups xmm2,XMMWORD PTR [rdi+0x20]
  709390:	c5 fc 10 5f 30       	vmovups ymm3,YMMWORD PTR [rdi+0x30]
  709395:	c5 f8 10 77 50       	vmovups xmm6,XMMWORD PTR [rdi+0x50]
  70939a:	c5 fc 10 4f 60       	vmovups ymm1,YMMWORD PTR [rdi+0x60]
  70939f:	c5 78 10 97 80 00 00 	vmovups xmm10,XMMWORD PTR [rdi+0x80]
  7093a6:	00 
  7093a7:	c5 fc 10 af 90 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0x90]
  7093ae:	00 
  7093af:	c5 f8 10 bf b0 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0xb0]
  7093b6:	00 
  7093b7:	c5 fc 10 a7 c0 00 00 	vmovups ymm4,YMMWORD PTR [rdi+0xc0]
  7093be:	00 
  7093bf:	c5 78 10 af e0 00 00 	vmovups xmm13,XMMWORD PTR [rdi+0xe0]
  7093c6:	00 
  7093c7:	c5 7c 10 8f f0 00 00 	vmovups ymm9,YMMWORD PTR [rdi+0xf0]
  7093ce:	00 
  7093cf:	c5 78 10 9f 10 01 00 	vmovups xmm11,XMMWORD PTR [rdi+0x110]
  7093d6:	00 
  7093d7:	c5 7c 10 b7 20 01 00 	vmovups ymm14,YMMWORD PTR [rdi+0x120]
  7093de:	00 
  7093df:	c5 78 10 bf 40 01 00 	vmovups xmm15,XMMWORD PTR [rdi+0x140]
  7093e6:	00 
  7093e7:	c5 7c 10 87 50 01 00 	vmovups ymm8,YMMWORD PTR [rdi+0x150]
  7093ee:	00 
  7093ef:	c5 7c c6 e2 dd       	vshufps ymm12,ymm0,ymm2,0xdd
  7093f4:	c5 fc c6 c2 88       	vshufps ymm0,ymm0,ymm2,0x88
  7093f9:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  7093ff:	c4 c1 5c c6 c5 dd    	vshufps ymm0,ymm4,ymm13,0xdd
  709405:	c4 c1 5c c6 d5 88    	vshufps ymm2,ymm4,ymm13,0x88
  70940b:	c5 fc 11 54 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm2
  709411:	c4 c1 74 c6 d2 dd    	vshufps ymm2,ymm1,ymm10,0xdd
  709417:	c5 fc 11 54 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm2
  70941d:	c4 c1 74 c6 e2 88    	vshufps ymm4,ymm1,ymm10,0x88
  709423:	c4 c1 0c c6 cf dd    	vshufps ymm1,ymm14,ymm15,0xdd
  709429:	c5 fc 11 4c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm1
  70942f:	c4 c1 0c c6 cf 88    	vshufps ymm1,ymm14,ymm15,0x88
  709435:	c5 64 c6 fe dd       	vshufps ymm15,ymm3,ymm6,0xdd
  70943a:	c5 64 c6 ee 88       	vshufps ymm13,ymm3,ymm6,0x88
  70943f:	c4 c1 34 c6 db dd    	vshufps ymm3,ymm9,ymm11,0xdd
  709445:	c4 41 34 c6 db 88    	vshufps ymm11,ymm9,ymm11,0x88
  70944b:	c5 d4 c6 f7 dd       	vshufps ymm6,ymm5,ymm7,0xdd
  709450:	c5 54 c6 f7 88       	vshufps ymm14,ymm5,ymm7,0x88
  709455:	c5 f8 10 97 70 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x170]
  70945c:	00 
  70945d:	c5 3c c6 d2 dd       	vshufps ymm10,ymm8,ymm2,0xdd
  709462:	c5 bc c6 d2 88       	vshufps ymm2,ymm8,ymm2,0x88
  709467:	c4 c3 fd 01 ec d8    	vpermpd ymm5,ymm12,0xd8
  70946d:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  709473:	c5 54 58 c8          	vaddps ymm9,ymm5,ymm0
  709477:	c5 d4 5c c0          	vsubps ymm0,ymm5,ymm0
  70947b:	c5 fc 11 44 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm0
  709481:	c4 e3 fd 01 c4 d8    	vpermpd ymm0,ymm4,0xd8
  709487:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  70948d:	c5 fc 58 f9          	vaddps ymm7,ymm0,ymm1
  709491:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  709495:	c5 fc 11 44 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm0
  70949b:	c4 c3 fd 01 c7 d8    	vpermpd ymm0,ymm15,0xd8
  7094a1:	c4 e3 fd 01 cb d8    	vpermpd ymm1,ymm3,0xd8
  7094a7:	c5 fc 58 d9          	vaddps ymm3,ymm0,ymm1
  7094ab:	c5 fc 11 5c 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm3
  7094b1:	c5 fc 5c c9          	vsubps ymm1,ymm0,ymm1
  7094b5:	c4 c3 fd 01 c5 d8    	vpermpd ymm0,ymm13,0xd8
  7094bb:	c4 c3 fd 01 db d8    	vpermpd ymm3,ymm11,0xd8
  7094c1:	c5 7c 58 db          	vaddps ymm11,ymm0,ymm3
  7094c5:	c5 fc 5c db          	vsubps ymm3,ymm0,ymm3
  7094c9:	c4 c3 fd 01 c6 d8    	vpermpd ymm0,ymm14,0xd8
  7094cf:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  7094d5:	c5 7c 58 e2          	vaddps ymm12,ymm0,ymm2
  7094d9:	c5 fc 5c e2          	vsubps ymm4,ymm0,ymm2
  7094dd:	c4 e3 fd 01 d6 d8    	vpermpd ymm2,ymm6,0xd8
  7094e3:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  7094e9:	c5 2c 58 c2          	vaddps ymm8,ymm10,ymm2
  7094ed:	c4 41 6c 5c d2       	vsubps ymm10,ymm2,ymm10
  7094f2:	c4 e3 fd 01 54 24 80 	vpermpd ymm2,YMMWORD PTR [rsp-0x80],0xd8
  7094f9:	d8 
  7094fa:	c4 63 fd 01 6c 24 e0 	vpermpd ymm13,YMMWORD PTR [rsp-0x20],0xd8
  709501:	d8 
  709502:	c5 94 58 f2          	vaddps ymm6,ymm13,ymm2
  709506:	c4 c1 6c 5c c5       	vsubps ymm0,ymm2,ymm13
  70950b:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  709511:	c4 63 fd 01 6c 24 c0 	vpermpd ymm13,YMMWORD PTR [rsp-0x40],0xd8
  709518:	d8 
  709519:	c4 63 fd 01 7c 24 a0 	vpermpd ymm15,YMMWORD PTR [rsp-0x60],0xd8
  709520:	d8 
  709521:	c4 c1 14 58 c7       	vaddps ymm0,ymm13,ymm15
  709526:	c4 41 04 5c ed       	vsubps ymm13,ymm15,ymm13
  70952b:	c5 74 58 fb          	vaddps ymm15,ymm1,ymm3
  70952f:	c5 e4 5c c9          	vsubps ymm1,ymm3,ymm1
  709533:	c4 c1 5c 5c da       	vsubps ymm3,ymm4,ymm10
  709538:	c5 ac 58 e4          	vaddps ymm4,ymm10,ymm4
  70953c:	c4 62 7d 18 15 57 be 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff96be57]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  709543:	96 ff 
  709545:	c4 41 04 59 fa       	vmulps ymm15,ymm15,ymm10
  70954a:	c5 ac 59 eb          	vmulps ymm5,ymm10,ymm3
  70954e:	c5 ac 59 d1          	vmulps ymm2,ymm10,ymm1
  709552:	c5 ac 59 e4          	vmulps ymm4,ymm10,ymm4
  709556:	c5 34 58 f0          	vaddps ymm14,ymm9,ymm0
  70955a:	c5 b4 5c c0          	vsubps ymm0,ymm9,ymm0
  70955e:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  709564:	c4 41 24 58 cc       	vaddps ymm9,ymm11,ymm12
  709569:	c4 c1 24 5c c4       	vsubps ymm0,ymm11,ymm12
  70956e:	c5 fc 11 44 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm0
  709574:	c5 4c 58 e7          	vaddps ymm12,ymm6,ymm7
  709578:	c5 cc 5c c7          	vsubps ymm0,ymm6,ymm7
  70957c:	c5 fc 11 04 24       	vmovups YMMWORD PTR [rsp],ymm0
  709581:	c5 fc 10 44 24 20    	vmovups ymm0,YMMWORD PTR [rsp+0x20]
  709587:	c5 bc 58 f8          	vaddps ymm7,ymm8,ymm0
  70958b:	c5 3c 5c d8          	vsubps ymm11,ymm8,ymm0
  70958f:	c5 fc 10 44 24 60    	vmovups ymm0,YMMWORD PTR [rsp+0x60]
  709595:	c5 fc 10 4c 24 40    	vmovups ymm1,YMMWORD PTR [rsp+0x40]
  70959b:	c5 fc 58 f1          	vaddps ymm6,ymm0,ymm1
  70959f:	c5 7c 5c d1          	vsubps ymm10,ymm0,ymm1
  7095a3:	c5 ec 5c cc          	vsubps ymm1,ymm2,ymm4
  7095a7:	c5 6c 58 c4          	vaddps ymm8,ymm2,ymm4
  7095ab:	c5 fc 10 44 24 80    	vmovups ymm0,YMMWORD PTR [rsp-0x80]
  7095b1:	c5 94 58 e0          	vaddps ymm4,ymm13,ymm0
  7095b5:	c4 41 7c 5c ed       	vsubps ymm13,ymm0,ymm13
  7095ba:	c5 84 58 c5          	vaddps ymm0,ymm15,ymm5
  7095be:	c4 c1 54 5c ef       	vsubps ymm5,ymm5,ymm15
  7095c3:	c5 8c 58 df          	vaddps ymm3,ymm14,ymm7
  7095c7:	c5 0c 5c ff          	vsubps ymm15,ymm14,ymm7
  7095cb:	c4 c1 1c 58 d1       	vaddps ymm2,ymm12,ymm9
  7095d0:	c5 fc 11 54 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm2
  7095d6:	c4 c1 1c 5c d1       	vsubps ymm2,ymm12,ymm9
  7095db:	c5 fc 11 54 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm2
  7095e1:	c5 cc 58 f8          	vaddps ymm7,ymm6,ymm0
  7095e5:	c5 cc 5c d0          	vsubps ymm2,ymm6,ymm0
  7095e9:	c5 dc 58 f1          	vaddps ymm6,ymm4,ymm1
  7095ed:	c5 5c 5c c9          	vsubps ymm9,ymm4,ymm1
  7095f1:	c5 fc 10 44 24 c0    	vmovups ymm0,YMMWORD PTR [rsp-0x40]
  7095f7:	c5 fc 10 4c 24 e0    	vmovups ymm1,YMMWORD PTR [rsp-0x20]
  7095fd:	c5 fc 58 e1          	vaddps ymm4,ymm0,ymm1
  709601:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  709605:	c5 7c 10 24 24       	vmovups ymm12,YMMWORD PTR [rsp]
  70960a:	c4 c1 24 58 cc       	vaddps ymm1,ymm11,ymm12
  70960f:	c4 41 1c 5c e3       	vsubps ymm12,ymm12,ymm11
  709614:	c4 41 2c 58 d8       	vaddps ymm11,ymm10,ymm8
  709619:	c4 41 2c 5c d0       	vsubps ymm10,ymm10,ymm8
  70961e:	c5 14 58 c5          	vaddps ymm8,ymm13,ymm5
  709622:	c5 14 5c ed          	vsubps ymm13,ymm13,ymm5
  709626:	c4 c3 65 18 ef 01    	vinsertf128 ymm5,ymm3,xmm15,0x1
  70962c:	c4 c3 65 06 df 31    	vperm2f128 ymm3,ymm3,ymm15,0x31
  709632:	c4 63 45 18 f2 01    	vinsertf128 ymm14,ymm7,xmm2,0x1
  709638:	c4 e3 45 06 d2 31    	vperm2f128 ymm2,ymm7,ymm2,0x31
  70963e:	c4 e3 5d 18 f8 01    	vinsertf128 ymm7,ymm4,xmm0,0x1
  709644:	c4 e3 5d 06 c0 31    	vperm2f128 ymm0,ymm4,ymm0,0x31
  70964a:	c5 e5 14 d8          	vunpcklpd ymm3,ymm3,ymm0
  70964e:	c4 c3 25 18 c2 01    	vinsertf128 ymm0,ymm11,xmm10,0x1
  709654:	c4 c3 25 06 e2 31    	vperm2f128 ymm4,ymm11,ymm10,0x31
  70965a:	c5 ed 14 e4          	vunpcklpd ymm4,ymm2,ymm4
  70965e:	c5 55 15 d7          	vunpckhpd ymm10,ymm5,ymm7
  709662:	c5 d5 14 d7          	vunpcklpd ymm2,ymm5,ymm7
  709666:	c5 8d 15 e8          	vunpckhpd ymm5,ymm14,ymm0
  70966a:	c5 8d 14 c0          	vunpcklpd ymm0,ymm14,ymm0
  70966e:	c5 ec c6 f8 88       	vshufps ymm7,ymm2,ymm0,0x88
  709673:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  709678:	c5 fc 11 7c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm7
  70967e:	c5 ec c6 c0 dd       	vshufps ymm0,ymm2,ymm0,0xdd
  709683:	c5 7c c6 f0 d8       	vshufps ymm14,ymm0,ymm0,0xd8
  709688:	c5 ac c6 c5 88       	vshufps ymm0,ymm10,ymm5,0x88
  70968d:	c5 fc c6 d0 d8       	vshufps ymm2,ymm0,ymm0,0xd8
  709692:	c5 ac c6 c5 dd       	vshufps ymm0,ymm10,ymm5,0xdd
  709697:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  70969c:	c5 e4 c6 ec 88       	vshufps ymm5,ymm3,ymm4,0x88
  7096a1:	c5 54 c6 dd d8       	vshufps ymm11,ymm5,ymm5,0xd8
  7096a6:	c5 e4 c6 dc dd       	vshufps ymm3,ymm3,ymm4,0xdd
  7096ab:	c5 e4 c6 eb d8       	vshufps ymm5,ymm3,ymm3,0xd8
  7096b0:	c5 fc 10 64 24 a0    	vmovups ymm4,YMMWORD PTR [rsp-0x60]
  7096b6:	c5 fc 10 7c 24 80    	vmovups ymm7,YMMWORD PTR [rsp-0x80]
  7096bc:	c4 e3 5d 18 df 01    	vinsertf128 ymm3,ymm4,xmm7,0x1
  7096c2:	c4 e3 5d 06 e7 31    	vperm2f128 ymm4,ymm4,ymm7,0x31
  7096c8:	c4 c3 4d 18 f9 01    	vinsertf128 ymm7,ymm6,xmm9,0x1
  7096ce:	c4 c3 4d 06 f1 31    	vperm2f128 ymm6,ymm6,ymm9,0x31
  7096d4:	c4 43 75 18 cc 01    	vinsertf128 ymm9,ymm1,xmm12,0x1
  7096da:	c4 c3 75 06 cc 31    	vperm2f128 ymm1,ymm1,ymm12,0x31
  7096e0:	c5 5d 14 d1          	vunpcklpd ymm10,ymm4,ymm1
  7096e4:	c4 c3 3d 18 cd 01    	vinsertf128 ymm1,ymm8,xmm13,0x1
  7096ea:	c4 c3 3d 06 e5 31    	vperm2f128 ymm4,ymm8,ymm13,0x31
  7096f0:	c5 cd 14 f4          	vunpcklpd ymm6,ymm6,ymm4
  7096f4:	c4 c1 65 15 e1       	vunpckhpd ymm4,ymm3,ymm9
  7096f9:	c4 c1 65 14 d9       	vunpcklpd ymm3,ymm3,ymm9
  7096fe:	c5 45 15 c9          	vunpckhpd ymm9,ymm7,ymm1
  709702:	c5 c5 14 f9          	vunpcklpd ymm7,ymm7,ymm1
  709706:	c5 e4 c6 cf 88       	vshufps ymm1,ymm3,ymm7,0x88
  70970b:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  709710:	c5 fc 11 4c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm1
  709716:	c5 e4 c6 df dd       	vshufps ymm3,ymm3,ymm7,0xdd
  70971b:	c5 64 c6 c3 d8       	vshufps ymm8,ymm3,ymm3,0xd8
  709720:	c4 c1 5c c6 d9 88    	vshufps ymm3,ymm4,ymm9,0x88
  709726:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  70972b:	c4 c1 5c c6 e1 dd    	vshufps ymm4,ymm4,ymm9,0xdd
  709731:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  709736:	c5 ac c6 fe 88       	vshufps ymm7,ymm10,ymm6,0x88
  70973b:	c5 44 c6 cf d8       	vshufps ymm9,ymm7,ymm7,0xd8
  709740:	c5 ac c6 f6 dd       	vshufps ymm6,ymm10,ymm6,0xdd
  709745:	c5 4c c6 ee d8       	vshufps ymm13,ymm6,ymm6,0xd8
  70974a:	c5 7c 10 62 40       	vmovups ymm12,YMMWORD PTR [rdx+0x40]
  70974f:	c5 fc 10 ba 80 00 00 	vmovups ymm7,YMMWORD PTR [rdx+0x80]
  709756:	00 
  709757:	c5 7c 10 92 a0 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0xa0]
  70975e:	00 
  70975f:	c5 c4 59 f2          	vmulps ymm6,ymm7,ymm2
  709763:	c4 c2 65 bc f2       	vfnmadd231ps ymm6,ymm3,ymm10
  709768:	c5 c4 59 fb          	vmulps ymm7,ymm7,ymm3
  70976c:	c5 fc 10 9a 20 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x120]
  709773:	00 
  709774:	c4 c2 6d b8 fa       	vfmadd231ps ymm7,ymm2,ymm10
  709779:	c5 fc 10 92 00 01 00 	vmovups ymm2,YMMWORD PTR [rdx+0x100]
  709780:	00 
  709781:	c5 24 59 d2          	vmulps ymm10,ymm11,ymm2
  709785:	c4 62 35 bc d3       	vfnmadd231ps ymm10,ymm9,ymm3
  70978a:	c5 34 59 ca          	vmulps ymm9,ymm9,ymm2
  70978e:	c4 62 25 b8 cb       	vfmadd231ps ymm9,ymm11,ymm3
  709793:	c5 fc 10 92 60 01 00 	vmovups ymm2,YMMWORD PTR [rdx+0x160]
  70979a:	00 
  70979b:	c5 fc 10 9a 40 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x140]
  7097a2:	00 
  7097a3:	c5 14 59 db          	vmulps ymm11,ymm13,ymm3
  7097a7:	c4 62 55 b8 da       	vfmadd231ps ymm11,ymm5,ymm2
  7097ac:	c5 e4 59 ed          	vmulps ymm5,ymm3,ymm5
  7097b0:	c5 fc 10 5a 60       	vmovups ymm3,YMMWORD PTR [rdx+0x60]
  7097b5:	c4 e2 15 bc ea       	vfnmadd231ps ymm5,ymm13,ymm2
  7097ba:	c4 41 4c 5c fa       	vsubps ymm15,ymm6,ymm10
  7097bf:	c4 41 1c 59 e8       	vmulps ymm13,ymm12,ymm8
  7097c4:	c4 62 0d b8 eb       	vfmadd231ps ymm13,ymm14,ymm3
  7097c9:	c4 41 1c 59 e6       	vmulps ymm12,ymm12,ymm14
  7097ce:	c5 7c 10 b2 e0 00 00 	vmovups ymm14,YMMWORD PTR [rdx+0xe0]
  7097d5:	00 
  7097d6:	c4 62 3d bc e3       	vfnmadd231ps ymm12,ymm8,ymm3
  7097db:	c5 fc 10 92 c0 00 00 	vmovups ymm2,YMMWORD PTR [rdx+0xc0]
  7097e2:	00 
  7097e3:	c5 ec 59 dc          	vmulps ymm3,ymm2,ymm4
  7097e7:	c4 c2 7d b8 de       	vfmadd231ps ymm3,ymm0,ymm14
  7097ec:	c5 ec 59 d0          	vmulps ymm2,ymm2,ymm0
  7097f0:	c4 e2 7d 18 05 db ba 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff96badb]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  7097f7:	96 ff 
  7097f9:	c5 04 59 c0          	vmulps ymm8,ymm15,ymm0
  7097fd:	c4 c2 5d bc d6       	vfnmadd231ps ymm2,ymm4,ymm14
  709802:	c5 34 58 f7          	vaddps ymm14,ymm9,ymm7
  709806:	c4 62 7d 18 3d 51 bc 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff96bc51]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  70980d:	96 ff 
  70980f:	c5 ac 58 e6          	vaddps ymm4,ymm10,ymm6
  709813:	c5 7c 29 fe          	vmovaps ymm6,ymm15
  709817:	c4 e2 0d ac f1       	vfnmadd213ps ymm6,ymm14,ymm1
  70981c:	c4 c1 44 5c f9       	vsubps ymm7,ymm7,ymm9
  709821:	c4 41 54 5c cc       	vsubps ymm9,ymm5,ymm12
  709826:	c5 9c 58 ed          	vaddps ymm5,ymm12,ymm5
  70982a:	c4 41 24 58 d5       	vaddps ymm10,ymm11,ymm13
  70982f:	c4 41 24 5c dd       	vsubps ymm11,ymm11,ymm13
  709834:	c5 3c 58 e6          	vaddps ymm12,ymm8,ymm6
  709838:	c5 34 59 c8          	vmulps ymm9,ymm9,ymm0
  70983c:	c5 c4 59 f8          	vmulps ymm7,ymm7,ymm0
  709840:	c5 a4 59 c8          	vmulps ymm1,ymm11,ymm0
  709844:	c4 41 7c 28 df       	vmovaps ymm11,ymm15
  709849:	c4 62 2d ac db       	vfnmadd213ps ymm11,ymm10,ymm3
  70984e:	c4 c1 4c 5c f0       	vsubps ymm6,ymm6,ymm8
  709853:	c4 41 24 58 c1       	vaddps ymm8,ymm11,ymm9
  709858:	c4 41 24 5c c9       	vsubps ymm9,ymm11,ymm9
  70985d:	c4 41 7c 28 df       	vmovaps ymm11,ymm15
  709862:	c5 fc 10 44 24 c0    	vmovups ymm0,YMMWORD PTR [rsp-0x40]
  709868:	c4 62 5d ac d8       	vfnmadd213ps ymm11,ymm4,ymm0
  70986d:	c5 24 5c ef          	vsubps ymm13,ymm11,ymm7
  709871:	c5 a4 58 ff          	vaddps ymm7,ymm11,ymm7
  709875:	c4 62 55 ac fa       	vfnmadd213ps ymm15,ymm5,ymm2
  70987a:	c5 04 5c d9          	vsubps ymm11,ymm15,ymm1
  70987e:	c5 04 58 f9          	vaddps ymm15,ymm15,ymm1
  709882:	c5 0c 58 74 24 a0    	vaddps ymm14,ymm14,YMMWORD PTR [rsp-0x60]
  709888:	c5 ac 58 db          	vaddps ymm3,ymm10,ymm3
  70988c:	c5 dc 58 e0          	vaddps ymm4,ymm4,ymm0
  709890:	c5 ec 58 ed          	vaddps ymm5,ymm2,ymm5
  709894:	c4 c1 1c 5c c0       	vsubps ymm0,ymm12,ymm8
  709899:	c4 41 1c 58 c0       	vaddps ymm8,ymm12,ymm8
  70989e:	c4 c1 14 5c cb       	vsubps ymm1,ymm13,ymm11
  7098a3:	c4 41 14 58 d3       	vaddps ymm10,ymm13,ymm11
  7098a8:	c5 b4 58 d6          	vaddps ymm2,ymm9,ymm6
  7098ac:	c4 c1 4c 5c f1       	vsubps ymm6,ymm6,ymm9
  7098b1:	c5 04 58 cf          	vaddps ymm9,ymm15,ymm7
  7098b5:	c4 c1 44 5c ff       	vsubps ymm7,ymm7,ymm15
  7098ba:	c5 0c 5c db          	vsubps ymm11,ymm14,ymm3
  7098be:	c5 8c 58 db          	vaddps ymm3,ymm14,ymm3
  7098c2:	c5 5c 5c e5          	vsubps ymm12,ymm4,ymm5
  7098c6:	c5 dc 58 e5          	vaddps ymm4,ymm4,ymm5
  7098ca:	c5 e4 15 ec          	vunpckhps ymm5,ymm3,ymm4
  7098ce:	c5 e4 14 dc          	vunpcklps ymm3,ymm3,ymm4
  7098d2:	c4 e3 65 06 e5 31    	vperm2f128 ymm4,ymm3,ymm5,0x31
  7098d8:	c4 e3 65 06 dd 20    	vperm2f128 ymm3,ymm3,ymm5,0x20
  7098de:	c5 fc 11 1e          	vmovups YMMWORD PTR [rsi],ymm3
  7098e2:	c5 fc 11 66 20       	vmovups YMMWORD PTR [rsi+0x20],ymm4
  7098e7:	c5 cc 15 df          	vunpckhps ymm3,ymm6,ymm7
  7098eb:	c5 cc 14 e7          	vunpcklps ymm4,ymm6,ymm7
  7098ef:	c4 e3 5d 06 eb 31    	vperm2f128 ymm5,ymm4,ymm3,0x31
  7098f5:	c4 e3 5d 06 db 20    	vperm2f128 ymm3,ymm4,ymm3,0x20
  7098fb:	c5 fc 11 5e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm3
  709900:	c5 fc 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm5
  709905:	c4 c1 3c 15 da       	vunpckhps ymm3,ymm8,ymm10
  70990a:	c4 c1 3c 14 e2       	vunpcklps ymm4,ymm8,ymm10
  70990f:	c4 e3 5d 06 eb 31    	vperm2f128 ymm5,ymm4,ymm3,0x31
  709915:	c4 e3 5d 06 db 20    	vperm2f128 ymm3,ymm4,ymm3,0x20
  70991b:	c5 fc 11 9e 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm3
  709922:	00 
  709923:	c5 fc 11 ae a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm5
  70992a:	00 
  70992b:	c4 c1 24 15 dc       	vunpckhps ymm3,ymm11,ymm12
  709930:	c4 c1 24 14 e4       	vunpcklps ymm4,ymm11,ymm12
  709935:	c4 e3 5d 06 eb 31    	vperm2f128 ymm5,ymm4,ymm3,0x31
  70993b:	c4 e3 5d 06 db 20    	vperm2f128 ymm3,ymm4,ymm3,0x20
  709941:	c5 fc 11 9e c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm3
  709948:	00 
  709949:	c5 fc 11 ae e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm5
  709950:	00 
  709951:	c4 c1 6c 15 d9       	vunpckhps ymm3,ymm2,ymm9
  709956:	c4 c1 6c 14 d1       	vunpcklps ymm2,ymm2,ymm9
  70995b:	c4 e3 6d 06 e3 31    	vperm2f128 ymm4,ymm2,ymm3,0x31
  709961:	c4 e3 6d 06 d3 20    	vperm2f128 ymm2,ymm2,ymm3,0x20
  709967:	c5 fc 11 96 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm2
  70996e:	00 
  70996f:	c5 fc 11 a6 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm4
  709976:	00 
  709977:	c5 fc 15 d1          	vunpckhps ymm2,ymm0,ymm1
  70997b:	c5 fc 14 c1          	vunpcklps ymm0,ymm0,ymm1
  70997f:	c4 e3 7d 06 ca 31    	vperm2f128 ymm1,ymm0,ymm2,0x31
  709985:	c4 e3 7d 06 c2 20    	vperm2f128 ymm0,ymm0,ymm2,0x20
  70998b:	c5 fc 11 86 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm0
  709992:	00 
  709993:	c5 fc 11 8e 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm1
  70999a:	00 
  70999b:	48 81 c4 88 00 00 00 	add    rsp,0x88
  7099a2:	c5 f8 77             	vzeroupper
  7099a5:	c3                   	ret
