
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a71400 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a71400:	55                   	push   rbp
  a71401:	48 89 e5             	mov    rbp,rsp
  a71404:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a71408:	48 81 ec c0 03 00 00 	sub    rsp,0x3c0
  a7140f:	48 69 c2 60 03 00 00 	imul   rax,rdx,0x360
  a71416:	31 d2                	xor    edx,edx
  a71418:	4c 8d 84 24 40 03 00 	lea    r8,[rsp+0x340]
  a7141f:	00 
  a71420:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a71425:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  a7142c:	00 00 00 00 
  a71430:	c6 84 24 40 03 00 00 	mov    BYTE PTR [rsp+0x340],0x0
  a71437:	00 
  a71438:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a7143d:	62 f1 7c 48 10 1c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1]
  a71444:	c5 fc 10 44 17 40    	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x40]
  a7144a:	62 e1 7c 48 28 d3    	vmovaps zmm18,zmm3
  a71450:	62 e1 7c 48 28 0d e6 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6234e6]        # 94940 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21df0>
  a71457:	34 62 ff 
  a7145a:	62 f2 75 40 7f d8    	vpermt2ps zmm3,zmm17,zmm0
  a71460:	62 f1 7c 48 10 b4 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x60]
  a71467:	60 00 00 00 
  a7146b:	c5 fc 10 8c 17 a0 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xa0]
  a71472:	00 00 
  a71474:	62 71 7c 48 28 e6    	vmovaps zmm12,zmm6
  a7147a:	62 f2 75 40 7f f1    	vpermt2ps zmm6,zmm17,zmm1
  a71480:	62 f1 7c 48 10 7c 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a71487:	03 
  a71488:	c5 fc 10 94 17 00 01 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x100]
  a7148f:	00 00 
  a71491:	62 71 7c 48 28 f7    	vmovaps zmm14,zmm7
  a71497:	62 f2 75 40 7f fa    	vpermt2ps zmm7,zmm17,zmm2
  a7149d:	62 71 7c 48 10 bc 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x120]
  a714a4:	20 01 00 00 
  a714a8:	c5 fc 10 a4 17 60 01 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x160]
  a714af:	00 00 
  a714b1:	62 e1 7c 48 28 05 45 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff623445]        # 94900 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21db0>
  a714b8:	34 62 ff 
  a714bb:	62 e2 7d 40 7f d0    	vpermt2ps zmm18,zmm16,zmm0
  a714c1:	62 41 7c 48 28 ff    	vmovaps zmm31,zmm15
  a714c7:	62 72 75 40 7f fc    	vpermt2ps zmm15,zmm17,zmm4
  a714cd:	62 f1 7c 48 10 6c 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x180]
  a714d4:	06 
  a714d5:	62 72 7d 40 7f e1    	vpermt2ps zmm12,zmm16,zmm1
  a714db:	c5 fc 10 84 17 c0 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x1c0]
  a714e2:	00 00 
  a714e4:	62 e1 7c 48 28 ed    	vmovaps zmm21,zmm5
  a714ea:	62 f2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm0
  a714f0:	62 72 7d 40 7f f2    	vpermt2ps zmm14,zmm16,zmm2
  a714f6:	62 71 7c 48 10 8c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a714fd:	e0 01 00 00 
  a71501:	c5 fc 10 8c 17 20 02 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x220]
  a71508:	00 00 
  a7150a:	62 51 7c 48 28 c1    	vmovaps zmm8,zmm9
  a71510:	62 62 7d 40 7f fc    	vpermt2ps zmm31,zmm16,zmm4
  a71516:	62 72 75 40 7f c9    	vpermt2ps zmm9,zmm17,zmm1
  a7151c:	62 e1 7c 48 10 64 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x240]
  a71523:	09 
  a71524:	c5 fc 10 94 17 80 02 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x280]
  a7152b:	00 00 
  a7152d:	62 e2 7d 40 7f e8    	vpermt2ps zmm21,zmm16,zmm0
  a71533:	62 31 7c 48 28 ec    	vmovaps zmm13,zmm20
  a71539:	62 e2 75 40 7f e2    	vpermt2ps zmm20,zmm17,zmm2
  a7153f:	62 e1 7c 48 10 b4 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0x2a0]
  a71546:	a0 02 00 00 
  a7154a:	62 72 7d 40 7f c1    	vpermt2ps zmm8,zmm16,zmm1
  a71550:	c5 fc 10 84 17 e0 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x2e0]
  a71557:	00 00 
  a71559:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  a7155f:	62 e2 75 40 7f f0    	vpermt2ps zmm22,zmm17,zmm0
  a71565:	62 72 7d 40 7f ea    	vpermt2ps zmm13,zmm16,zmm2
  a7156b:	62 61 7c 48 10 44 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x300]
  a71572:	0c 
  a71573:	c5 fc 10 8c 17 40 03 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x340]
  a7157a:	00 00 
  a7157c:	62 01 7c 48 28 c8    	vmovaps zmm25,zmm24
  a71582:	62 e2 7d 40 7f f8    	vpermt2ps zmm23,zmm16,zmm0
  a71588:	62 62 7d 40 7f c9    	vpermt2ps zmm25,zmm16,zmm1
  a7158e:	62 62 75 40 7f c1    	vpermt2ps zmm24,zmm17,zmm1
  a71594:	62 b1 04 48 58 e4    	vaddps zmm4,zmm15,zmm20
  a7159a:	62 f1 64 48 58 d4    	vaddps zmm2,zmm3,zmm4
  a715a0:	62 21 54 48 58 d6    	vaddps zmm26,zmm5,zmm22
  a715a6:	62 91 4c 48 58 c2    	vaddps zmm0,zmm6,zmm26
  a715ac:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a715b3:	01 
  a715b4:	62 01 34 48 58 d8    	vaddps zmm27,zmm9,zmm24
  a715ba:	62 91 44 48 58 cb    	vaddps zmm1,zmm7,zmm27
  a715c0:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a715c7:	03 
  a715c8:	62 41 04 40 58 e5    	vaddps zmm28,zmm31,zmm13
  a715ce:	62 11 6c 40 58 dc    	vaddps zmm11,zmm18,zmm28
  a715d4:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm11
  a715db:	04 
  a715dc:	62 21 54 40 58 ef    	vaddps zmm29,zmm21,zmm23
  a715e2:	62 11 1c 48 58 d5    	vaddps zmm10,zmm12,zmm29
  a715e8:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm10
  a715ef:	05 
  a715f0:	62 01 3c 48 58 f1    	vaddps zmm30,zmm8,zmm25
  a715f6:	62 81 0c 48 58 de    	vaddps zmm19,zmm14,zmm30
  a715fc:	62 e2 7d 48 18 0d 5a 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff603e5a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a71603:	3e 60 ff 
  a71606:	62 f2 75 40 bc dc    	vfnmadd231ps zmm3,zmm17,zmm4
  a7160c:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a71612:	62 41 04 40 5c fd    	vsubps zmm31,zmm31,zmm13
  a71618:	62 31 2c 48 58 eb    	vaddps zmm13,zmm10,zmm19
  a7161e:	62 92 75 40 bc f2    	vfnmadd231ps zmm6,zmm17,zmm26
  a71624:	62 71 6c 48 58 d4    	vaddps zmm10,zmm2,zmm4
  a7162a:	62 f2 7d 48 18 0d a0 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff603ca0]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a71631:	3c 60 ff 
  a71634:	62 61 04 40 59 d1    	vmulps zmm26,zmm31,zmm1
  a7163a:	62 a1 54 40 5c ef    	vsubps zmm21,zmm21,zmm23
  a71640:	62 e1 54 40 59 f9    	vmulps zmm23,zmm21,zmm1
  a71646:	62 81 64 48 58 ea    	vaddps zmm21,zmm3,zmm26
  a7164c:	62 12 75 40 bc e5    	vfnmadd231ps zmm12,zmm17,zmm29
  a71652:	62 b1 54 48 5c ee    	vsubps zmm5,zmm5,zmm22
  a71658:	62 61 54 48 59 e9    	vmulps zmm29,zmm5,zmm1
  a7165e:	62 21 4c 48 58 ff    	vaddps zmm31,zmm6,zmm23
  a71664:	62 81 1c 48 5c c5    	vsubps zmm16,zmm12,zmm29
  a7166a:	62 92 75 40 bc fb    	vfnmadd231ps zmm7,zmm17,zmm27
  a71670:	62 11 3c 48 5c c1    	vsubps zmm8,zmm8,zmm25
  a71676:	62 d1 24 48 58 c5    	vaddps zmm0,zmm11,zmm13
  a7167c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a71683:	02 
  a71684:	62 71 3c 48 59 c1    	vmulps zmm8,zmm8,zmm1
  a7168a:	62 41 44 48 58 c8    	vaddps zmm25,zmm7,zmm8
  a71690:	62 12 75 40 bc f6    	vfnmadd231ps zmm14,zmm17,zmm30
  a71696:	62 f2 7d 48 18 2d c8 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff603fc8]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a7169d:	3f 60 ff 
  a716a0:	62 e1 7c 40 59 f5    	vmulps zmm22,zmm16,zmm5
  a716a6:	62 11 34 48 5c c8    	vsubps zmm9,zmm9,zmm24
  a716ac:	62 71 34 48 59 c9    	vmulps zmm9,zmm9,zmm1
  a716b2:	62 41 0c 48 5c c1    	vsubps zmm24,zmm14,zmm9
  a716b8:	62 62 7d 48 18 1d 16 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff603e16]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a716bf:	3e 60 ff 
  a716c2:	62 82 05 40 b8 f3    	vfmadd231ps zmm22,zmm31,zmm27
  a716c8:	62 82 75 40 bc d4    	vfnmadd231ps zmm18,zmm17,zmm28
  a716ce:	62 62 7d 48 18 35 40 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff603c40]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a716d5:	3c 60 ff 
  a716d8:	62 01 3c 40 59 e6    	vmulps zmm28,zmm24,zmm30
  a716de:	62 31 04 48 5c fc    	vsubps zmm15,zmm15,zmm20
  a716e4:	62 f2 7d 48 18 05 ee 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff603dee]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a716eb:	3d 60 ff 
  a716ee:	62 62 35 40 b8 e0    	vfmadd231ps zmm28,zmm25,zmm0
  a716f4:	62 71 04 48 59 f9    	vmulps zmm15,zmm15,zmm1
  a716fa:	62 c1 6c 40 5c e7    	vsubps zmm20,zmm18,zmm15
  a71700:	62 81 7c 40 59 c3    	vmulps zmm16,zmm16,zmm27
  a71706:	62 82 55 48 bc c7    	vfnmadd231ps zmm16,zmm5,zmm31
  a7170c:	62 61 3c 40 59 c0    	vmulps zmm24,zmm24,zmm0
  a71712:	62 91 64 48 5c da    	vsubps zmm3,zmm3,zmm26
  a71718:	62 b1 4c 48 5c f7    	vsubps zmm6,zmm6,zmm23
  a7171e:	62 02 0d 40 bc c1    	vfnmadd231ps zmm24,zmm30,zmm25
  a71724:	62 51 14 40 58 e4    	vaddps zmm12,zmm29,zmm12
  a7172a:	62 01 1c 48 59 ce    	vmulps zmm25,zmm12,zmm30
  a71730:	62 62 4d 48 b8 c8    	vfmadd231ps zmm25,zmm6,zmm0
  a71736:	62 01 4c 40 58 d4    	vaddps zmm26,zmm22,zmm28
  a7173c:	62 d1 44 48 5c f8    	vsubps zmm7,zmm7,zmm8
  a71742:	62 51 34 48 58 c6    	vaddps zmm8,zmm9,zmm14
  a71748:	62 f2 7d 48 18 2d 9e 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff603d9e]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a7174f:	3d 60 ff 
  a71752:	62 71 3c 48 59 cd    	vmulps zmm9,zmm8,zmm5
  a71758:	62 11 7c 40 58 f0    	vaddps zmm14,zmm16,zmm24
  a7175e:	62 e2 7d 48 18 3d 90 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff603e90]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a71765:	3e 60 ff 
  a71768:	62 32 45 48 bc cf    	vfnmadd231ps zmm9,zmm7,zmm23
  a7176e:	62 31 04 48 58 da    	vaddps zmm11,zmm15,zmm18
  a71774:	62 71 1c 48 59 f8    	vmulps zmm15,zmm12,zmm0
  a7177a:	62 41 34 40 58 e9    	vaddps zmm29,zmm25,zmm9
  a71780:	62 72 0d 40 bc fe    	vfnmadd231ps zmm15,zmm30,zmm6
  a71786:	62 b1 3c 48 59 f7    	vmulps zmm6,zmm8,zmm23
  a7178c:	62 f2 55 48 b8 f7    	vfmadd231ps zmm6,zmm5,zmm7
  a71792:	62 11 54 40 58 e2    	vaddps zmm12,zmm21,zmm26
  a71798:	62 61 04 48 5c f6    	vsubps zmm30,zmm15,zmm6
  a7179e:	62 a1 7c 48 28 f9    	vmovaps zmm23,zmm17
  a717a4:	62 f2 75 40 ac e2    	vfnmadd213ps zmm4,zmm17,zmm2
  a717aa:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a717b1:	05 
  a717b2:	62 b1 7c 48 5c d3    	vsubps zmm2,zmm0,zmm19
  a717b8:	62 d1 5c 40 58 c6    	vaddps zmm0,zmm20,zmm14
  a717be:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a717c5:	06 
  a717c6:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a717cc:	62 e1 6c 48 59 d9    	vmulps zmm19,zmm2,zmm1
  a717d2:	62 a1 5c 48 58 cb    	vaddps zmm17,zmm4,zmm19
  a717d8:	62 72 45 40 ac 6c 24 	vfnmadd213ps zmm13,zmm23,ZMMWORD PTR [rsp+0x100]
  a717df:	04 
  a717e0:	62 91 64 48 58 fd    	vaddps zmm7,zmm3,zmm29
  a717e6:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a717ed:	01 
  a717ee:	62 f1 7c 48 5c 44 24 	vsubps zmm0,zmm0,ZMMWORD PTR [rsp+0xc0]
  a717f5:	03 
  a717f6:	62 f1 7c 48 59 c9    	vmulps zmm1,zmm0,zmm1
  a717fc:	62 f1 14 48 5c c1    	vsubps zmm0,zmm13,zmm1
  a71802:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a71809:	05 
  a7180a:	62 01 24 48 58 fe    	vaddps zmm31,zmm11,zmm30
  a71810:	62 22 45 40 ac d5    	vfnmadd213ps zmm26,zmm23,zmm21
  a71816:	62 91 7c 40 5c c0    	vsubps zmm0,zmm16,zmm24
  a7181c:	62 c1 7c 48 59 c0    	vmulps zmm16,zmm0,zmm8
  a71822:	62 b1 2c 40 58 e8    	vaddps zmm5,zmm26,zmm16
  a71828:	62 32 45 40 ac f4    	vfnmadd213ps zmm14,zmm23,zmm20
  a7182e:	62 91 4c 40 5c d4    	vsubps zmm2,zmm22,zmm28
  a71834:	62 c1 6c 48 59 d0    	vmulps zmm18,zmm2,zmm8
  a7183a:	62 b1 0c 48 5c c2    	vsubps zmm0,zmm14,zmm18
  a71840:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a71847:	04 
  a71848:	62 62 45 40 ac eb    	vfnmadd213ps zmm29,zmm23,zmm3
  a7184e:	62 f1 04 48 58 d6    	vaddps zmm2,zmm15,zmm6
  a71854:	62 d1 6c 48 59 d8    	vmulps zmm3,zmm2,zmm8
  a7185a:	62 f1 14 40 58 d3    	vaddps zmm2,zmm29,zmm3
  a71860:	62 42 45 40 ac f3    	vfnmadd213ps zmm30,zmm23,zmm11
  a71866:	62 d1 34 40 5c f1    	vsubps zmm6,zmm25,zmm9
  a7186c:	62 51 4c 48 59 c8    	vmulps zmm9,zmm6,zmm8
  a71872:	62 41 0c 40 5c e1    	vsubps zmm28,zmm30,zmm9
  a71878:	62 a1 5c 48 5c e3    	vsubps zmm20,zmm4,zmm19
  a7187e:	62 d1 74 48 58 c5    	vaddps zmm0,zmm1,zmm13
  a71884:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a7188b:	07 
  a7188c:	62 a1 2c 40 5c e8    	vsubps zmm21,zmm26,zmm16
  a71892:	62 b1 0c 48 58 c2    	vaddps zmm0,zmm14,zmm18
  a71898:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a7189f:	0a 
  a718a0:	62 e1 14 40 5c c3    	vsubps zmm16,zmm29,zmm3
  a718a6:	62 c1 7c 48 28 fa    	vmovaps zmm23,zmm10
  a718ac:	62 d1 7c 48 28 f4    	vmovaps zmm6,zmm12
  a718b2:	62 d1 0c 40 58 d9    	vaddps zmm3,zmm30,zmm9
  a718b8:	62 61 7c 48 28 15 be 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff6556be]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a718bf:	56 65 ff 
  a718c2:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a718c6:	62 f2 2d 40 7f f1    	vpermt2ps zmm6,zmm26,zmm1
  a718cc:	62 61 7c 48 28 2d ea 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff6556ea]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a718d3:	56 65 ff 
  a718d6:	62 72 15 40 7f e1    	vpermt2ps zmm12,zmm29,zmm1
  a718dc:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a718e2:	62 a2 2d 40 7f f8    	vpermt2ps zmm23,zmm26,zmm16
  a718e8:	62 72 2d 40 7f e9    	vpermt2ps zmm13,zmm26,zmm1
  a718ee:	62 f2 15 40 7f f9    	vpermt2ps zmm7,zmm29,zmm1
  a718f4:	62 b1 7c 48 28 e1    	vmovaps zmm4,zmm17
  a718fa:	62 32 15 40 7f d0    	vpermt2ps zmm10,zmm29,zmm16
  a71900:	62 f2 2d 40 7f e1    	vpermt2ps zmm4,zmm26,zmm1
  a71906:	62 e2 15 40 7f c9    	vpermt2ps zmm17,zmm29,zmm1
  a7190c:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a71912:	62 f2 15 40 7f e9    	vpermt2ps zmm5,zmm29,zmm1
  a71918:	62 e1 7c 48 28 f2    	vmovaps zmm22,zmm2
  a7191e:	62 f2 15 40 7f d1    	vpermt2ps zmm2,zmm29,zmm1
  a71924:	62 a1 7c 48 28 dc    	vmovaps zmm19,zmm20
  a7192a:	62 e2 2d 40 7f c1    	vpermt2ps zmm16,zmm26,zmm1
  a71930:	62 e2 2d 40 7f d9    	vpermt2ps zmm19,zmm26,zmm1
  a71936:	62 e2 15 40 7f e1    	vpermt2ps zmm20,zmm29,zmm1
  a7193c:	62 21 7c 48 28 c5    	vmovaps zmm24,zmm21
  a71942:	62 e2 2d 40 7f f1    	vpermt2ps zmm22,zmm26,zmm1
  a71948:	62 62 2d 40 7f c1    	vpermt2ps zmm24,zmm26,zmm1
  a7194e:	62 e2 15 40 7f e9    	vpermt2ps zmm21,zmm29,zmm1
  a71954:	62 31 7c 48 28 cf    	vmovaps zmm9,zmm23
  a7195a:	62 61 7c 48 28 1d 9c 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff65559c]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a71961:	55 65 ff 
  a71964:	62 32 25 40 7f c8    	vpermt2ps zmm9,zmm27,zmm16
  a7196a:	62 71 7c 48 28 3d cc 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6555cc]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a71971:	55 65 ff 
  a71974:	62 a2 05 48 7f f8    	vpermt2ps zmm23,zmm15,zmm16
  a7197a:	62 e1 7c 48 28 d6    	vmovaps zmm18,zmm6
  a71980:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a71986:	62 a2 25 40 7f d6    	vpermt2ps zmm18,zmm27,zmm22
  a7198c:	62 a2 25 40 7f c3    	vpermt2ps zmm16,zmm27,zmm19
  a71992:	62 32 05 48 7f eb    	vpermt2ps zmm13,zmm15,zmm19
  a71998:	62 e1 7c 48 28 dc    	vmovaps zmm19,zmm4
  a7199e:	62 b2 05 48 7f f6    	vpermt2ps zmm6,zmm15,zmm22
  a719a4:	62 82 25 40 7f d8    	vpermt2ps zmm19,zmm27,zmm24
  a719aa:	62 72 25 40 7f d5    	vpermt2ps zmm10,zmm27,zmm5
  a719b0:	62 72 25 40 7f e2    	vpermt2ps zmm12,zmm27,zmm2
  a719b6:	62 92 05 48 7f e0    	vpermt2ps zmm4,zmm15,zmm24
  a719bc:	62 b2 25 40 7f fc    	vpermt2ps zmm7,zmm27,zmm20
  a719c2:	62 a2 25 40 7f cd    	vpermt2ps zmm17,zmm27,zmm21
  a719c8:	62 f1 ad 48 14 c7    	vunpcklpd zmm0,zmm10,zmm7
  a719ce:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a719d5:	01 
  a719d6:	62 f1 ad 48 15 c7    	vunpckhpd zmm0,zmm10,zmm7
  a719dc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a719e3:	03 
  a719e4:	62 b1 9d 48 14 c1    	vunpcklpd zmm0,zmm12,zmm17
  a719ea:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a719f1:	08 
  a719f2:	62 b1 9d 48 15 c1    	vunpckhpd zmm0,zmm12,zmm17
  a719f8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a719ff:	09 
  a71a00:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x80]
  a71a07:	02 
  a71a08:	62 d1 7c 48 28 ee    	vmovaps zmm5,zmm14
  a71a0e:	62 a1 b5 48 14 f0    	vunpcklpd zmm22,zmm9,zmm16
  a71a14:	62 f2 2d 40 7f eb    	vpermt2ps zmm5,zmm26,zmm3
  a71a1a:	62 72 15 40 7f f3    	vpermt2ps zmm14,zmm29,zmm3
  a71a20:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x180]
  a71a27:	06 
  a71a28:	62 b1 7c 48 28 dc    	vmovaps zmm3,zmm20
  a71a2e:	62 b1 b5 48 15 c0    	vunpckhpd zmm0,zmm9,zmm16
  a71a34:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a71a3b:	02 
  a71a3c:	62 f2 2d 40 7f d9    	vpermt2ps zmm3,zmm26,zmm1
  a71a42:	62 81 7c 48 28 cf    	vmovaps zmm17,zmm31
  a71a48:	62 e2 2d 40 7f c9    	vpermt2ps zmm17,zmm26,zmm1
  a71a4e:	62 31 ed 40 14 e3    	vunpcklpd zmm12,zmm18,zmm19
  a71a54:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x140]
  a71a5b:	05 
  a71a5c:	62 11 7c 48 28 c1    	vmovaps zmm8,zmm25
  a71a62:	62 72 2d 40 7f c1    	vpermt2ps zmm8,zmm26,zmm1
  a71a68:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x100]
  a71a6f:	04 
  a71a70:	62 e1 7c 48 28 c7    	vmovaps zmm16,zmm7
  a71a76:	62 31 ed 40 15 cb    	vunpckhpd zmm9,zmm18,zmm19
  a71a7c:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm9
  a71a83:	0b 
  a71a84:	62 e2 2d 40 7f c1    	vpermt2ps zmm16,zmm26,zmm1
  a71a8a:	62 f2 15 40 7f f9    	vpermt2ps zmm7,zmm29,zmm1
  a71a90:	62 81 7c 48 28 d4    	vmovaps zmm18,zmm28
  a71a96:	62 41 c5 40 14 c5    	vunpcklpd zmm24,zmm23,zmm13
  a71a9c:	62 e2 2d 40 7f d1    	vpermt2ps zmm18,zmm26,zmm1
  a71aa2:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x1c0]
  a71aa9:	07 
  a71aaa:	62 c1 7c 48 28 da    	vmovaps zmm19,zmm10
  a71ab0:	62 e2 2d 40 7f d9    	vpermt2ps zmm19,zmm26,zmm1
  a71ab6:	62 41 c5 40 15 f5    	vunpckhpd zmm30,zmm23,zmm13
  a71abc:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x280]
  a71ac3:	0a 
  a71ac4:	62 51 7c 48 28 eb    	vmovaps zmm13,zmm11
  a71aca:	62 72 2d 40 7f e9    	vpermt2ps zmm13,zmm26,zmm1
  a71ad0:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a71ad6:	62 e1 cd 48 14 ec    	vunpcklpd zmm21,zmm6,zmm4
  a71adc:	62 b2 25 40 7f d0    	vpermt2ps zmm2,zmm27,zmm16
  a71ae2:	62 b2 05 48 7f e8    	vpermt2ps zmm5,zmm15,zmm16
  a71ae8:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a71aee:	62 e1 cd 48 15 c4    	vunpckhpd zmm16,zmm6,zmm4
  a71af4:	62 a2 25 40 7f fa    	vpermt2ps zmm23,zmm27,zmm18
  a71afa:	62 b2 05 48 7f da    	vpermt2ps zmm3,zmm15,zmm18
  a71b00:	62 b1 7c 48 28 e1    	vmovaps zmm4,zmm17
  a71b06:	62 b1 7c 48 28 f6    	vmovaps zmm6,zmm22
  a71b0c:	62 b2 25 40 7f e3    	vpermt2ps zmm4,zmm27,zmm19
  a71b12:	62 a2 05 48 7f cb    	vpermt2ps zmm17,zmm15,zmm19
  a71b18:	62 41 7c 48 28 d0    	vmovaps zmm26,zmm8
  a71b1e:	62 f1 7c 48 28 05 18 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff655318]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a71b25:	53 65 ff 
  a71b28:	62 d2 7d 48 7f f4    	vpermt2ps zmm6,zmm0,zmm12
  a71b2e:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm6
  a71b35:	0c 
  a71b36:	62 42 25 40 7f d5    	vpermt2ps zmm26,zmm27,zmm13
  a71b3c:	62 52 05 48 7f c5    	vpermt2ps zmm8,zmm15,zmm13
  a71b42:	62 72 25 40 7f f7    	vpermt2ps zmm14,zmm27,zmm7
  a71b48:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x80]
  a71b4f:	02 
  a71b50:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm18
  a71b57:	04 
  a71b58:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x40]
  a71b5f:	01 
  a71b60:	62 71 7c 48 28 fe    	vmovaps zmm15,zmm6
  a71b66:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x200]
  a71b6d:	08 
  a71b6e:	62 f2 7d 48 7f f7    	vpermt2ps zmm6,zmm0,zmm7
  a71b74:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm6
  a71b7b:	01 
  a71b7c:	62 e2 15 40 7f e1    	vpermt2ps zmm20,zmm29,zmm1
  a71b82:	62 c2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm9
  a71b88:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm18
  a71b8f:	02 
  a71b90:	62 62 15 40 7f f9    	vpermt2ps zmm31,zmm29,zmm1
  a71b96:	62 62 15 40 7f e1    	vpermt2ps zmm28,zmm29,zmm1
  a71b9c:	62 82 25 40 7f e4    	vpermt2ps zmm20,zmm27,zmm28
  a71ba2:	62 b1 7c 48 28 f4    	vmovaps zmm6,zmm20
  a71ba8:	62 81 7c 48 28 e0    	vmovaps zmm20,zmm24
  a71bae:	62 62 15 40 7f c9    	vpermt2ps zmm25,zmm29,zmm1
  a71bb4:	62 72 15 40 7f d1    	vpermt2ps zmm10,zmm29,zmm1
  a71bba:	62 72 15 40 7f d9    	vpermt2ps zmm11,zmm29,zmm1
  a71bc0:	62 22 7d 48 7f c5    	vpermt2ps zmm24,zmm0,zmm21
  a71bc6:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm24
  a71bcd:	05 
  a71bce:	62 42 25 40 7f fa    	vpermt2ps zmm31,zmm27,zmm10
  a71bd4:	62 42 25 40 7f cb    	vpermt2ps zmm25,zmm27,zmm11
  a71bda:	62 11 7c 48 28 c9    	vmovaps zmm9,zmm25
  a71be0:	62 e1 ed 48 14 dc    	vunpcklpd zmm19,zmm2,zmm4
  a71be6:	62 01 7c 48 28 ee    	vmovaps zmm29,zmm30
  a71bec:	62 71 ed 48 15 ec    	vunpckhpd zmm13,zmm2,zmm4
  a71bf2:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a71bf9:	03 
  a71bfa:	62 e1 7c 48 28 d1    	vmovaps zmm18,zmm1
  a71c00:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x240]
  a71c07:	09 
  a71c08:	62 f2 7d 48 7f ca    	vpermt2ps zmm1,zmm0,zmm2
  a71c0e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a71c15:	03 
  a71c16:	62 61 7c 48 28 0d e0 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff6551e0]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a71c1d:	51 65 ff 
  a71c20:	62 72 35 40 7f ff    	vpermt2ps zmm15,zmm25,zmm7
  a71c26:	62 01 c5 40 14 e2    	vunpcklpd zmm28,zmm23,zmm26
  a71c2c:	62 91 c5 40 15 fa    	vunpckhpd zmm7,zmm23,zmm26
  a71c32:	62 b1 d5 48 14 e1    	vunpcklpd zmm4,zmm5,zmm17
  a71c38:	62 22 7d 48 7f f0    	vpermt2ps zmm30,zmm0,zmm16
  a71c3e:	62 11 7c 48 28 de    	vmovaps zmm11,zmm30
  a71c44:	62 a1 d5 48 15 c9    	vunpckhpd zmm17,zmm5,zmm17
  a71c4a:	62 d1 e5 48 14 c8    	vunpcklpd zmm1,zmm3,zmm8
  a71c50:	62 51 e5 48 15 c0    	vunpckhpd zmm8,zmm3,zmm8
  a71c56:	62 e2 35 40 7f d2    	vpermt2ps zmm18,zmm25,zmm2
  a71c5c:	62 01 8d 48 14 df    	vunpcklpd zmm27,zmm14,zmm31
  a71c62:	62 91 8d 48 15 d7    	vunpckhpd zmm2,zmm14,zmm31
  a71c68:	62 51 cd 48 14 f1    	vunpcklpd zmm14,zmm6,zmm9
  a71c6e:	62 c2 35 40 7f f4    	vpermt2ps zmm22,zmm25,zmm12
  a71c74:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm22
  a71c7b:	06 
  a71c7c:	62 51 cd 48 15 c9    	vunpckhpd zmm9,zmm6,zmm9
  a71c82:	62 21 7c 48 28 d3    	vmovaps zmm26,zmm19
  a71c88:	62 82 7d 48 7f dc    	vpermt2ps zmm19,zmm0,zmm28
  a71c8e:	62 a2 35 40 7f e5    	vpermt2ps zmm20,zmm25,zmm21
  a71c94:	62 d1 7c 48 28 ed    	vmovaps zmm5,zmm13
  a71c9a:	62 72 7d 48 7f ef    	vpermt2ps zmm13,zmm0,zmm7
  a71ca0:	62 71 7c 48 28 e7    	vmovaps zmm12,zmm7
  a71ca6:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a71cac:	62 22 35 40 7f e8    	vpermt2ps zmm29,zmm25,zmm16
  a71cb2:	62 f2 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm1
  a71cb8:	62 b1 7c 48 28 f1    	vmovaps zmm6,zmm17
  a71cbe:	62 01 7c 48 28 fb    	vmovaps zmm31,zmm27
  a71cc4:	62 c2 7d 48 7f c8    	vpermt2ps zmm17,zmm0,zmm8
  a71cca:	62 42 35 40 7f fe    	vpermt2ps zmm31,zmm25,zmm14
  a71cd0:	62 42 7d 48 7f de    	vpermt2ps zmm27,zmm0,zmm14
  a71cd6:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a71cdc:	62 f2 35 40 7f f9    	vpermt2ps zmm7,zmm25,zmm1
  a71ce2:	62 52 35 40 7f f1    	vpermt2ps zmm14,zmm25,zmm9
  a71ce8:	62 d2 7d 48 7f d1    	vpermt2ps zmm2,zmm0,zmm9
  a71cee:	62 f1 7c 48 10 49 12 	vmovups zmm1,ZMMWORD PTR [rcx+0x480]
  a71cf5:	62 d2 35 40 7f f0    	vpermt2ps zmm6,zmm25,zmm8
  a71cfb:	62 71 7c 48 10 41 13 	vmovups zmm8,ZMMWORD PTR [rcx+0x4c0]
  a71d02:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x40]
  a71d09:	01 
  a71d0a:	62 e1 64 48 59 f9    	vmulps zmm23,zmm3,zmm1
  a71d10:	62 f1 24 40 59 c9    	vmulps zmm1,zmm27,zmm1
  a71d16:	62 c2 25 40 bc f8    	vfnmadd231ps zmm23,zmm27,zmm8
  a71d1c:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  a71d23:	62 f2 3d 48 b8 cb    	vfmadd231ps zmm1,zmm8,zmm3
  a71d29:	62 71 7c 48 10 41 07 	vmovups zmm8,ZMMWORD PTR [rcx+0x1c0]
  a71d30:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x80]
  a71d37:	02 
  a71d38:	62 61 64 48 59 c0    	vmulps zmm24,zmm3,zmm0
  a71d3e:	62 42 15 48 bc c0    	vfnmadd231ps zmm24,zmm13,zmm8
  a71d44:	62 71 14 48 59 e8    	vmulps zmm13,zmm13,zmm0
  a71d4a:	62 f1 7c 48 10 41 14 	vmovups zmm0,ZMMWORD PTR [rcx+0x500]
  a71d51:	62 72 3d 48 b8 eb    	vfmadd231ps zmm13,zmm8,zmm3
  a71d57:	62 71 7c 48 10 41 15 	vmovups zmm8,ZMMWORD PTR [rcx+0x540]
  a71d5e:	62 71 6c 40 59 c8    	vmulps zmm9,zmm18,zmm0
  a71d64:	62 61 0c 48 59 f0    	vmulps zmm30,zmm14,zmm0
  a71d6a:	62 52 0d 48 bc c8    	vfnmadd231ps zmm9,zmm14,zmm8
  a71d70:	62 f1 7c 48 10 41 0c 	vmovups zmm0,ZMMWORD PTR [rcx+0x300]
  a71d77:	62 22 3d 48 b8 f2    	vfmadd231ps zmm30,zmm8,zmm18
  a71d7d:	62 71 7c 48 10 41 0d 	vmovups zmm8,ZMMWORD PTR [rcx+0x340]
  a71d84:	62 71 14 40 59 f0    	vmulps zmm14,zmm29,zmm0
  a71d8a:	62 52 4d 48 bc f0    	vfnmadd231ps zmm14,zmm6,zmm8
  a71d90:	62 f1 4c 48 59 c0    	vmulps zmm0,zmm6,zmm0
  a71d96:	62 e1 7c 48 10 51 0e 	vmovups zmm18,ZMMWORD PTR [rcx+0x380]
  a71d9d:	62 92 3d 48 b8 c5    	vfmadd231ps zmm0,zmm8,zmm29
  a71da3:	62 71 7c 48 10 41 0f 	vmovups zmm8,ZMMWORD PTR [rcx+0x3c0]
  a71daa:	62 b1 24 48 59 f2    	vmulps zmm6,zmm11,zmm18
  a71db0:	62 a1 74 40 59 d2    	vmulps zmm18,zmm17,zmm18
  a71db6:	62 d2 75 40 bc f0    	vfnmadd231ps zmm6,zmm17,zmm8
  a71dbc:	62 e1 7c 48 10 49 08 	vmovups zmm17,ZMMWORD PTR [rcx+0x200]
  a71dc3:	62 c2 3d 48 b8 d3    	vfmadd231ps zmm18,zmm8,zmm11
  a71dc9:	62 f1 7c 48 10 59 09 	vmovups zmm3,ZMMWORD PTR [rcx+0x240]
  a71dd0:	62 a1 5c 40 59 e9    	vmulps zmm21,zmm20,zmm17
  a71dd6:	62 e2 45 48 bc eb    	vfnmadd231ps zmm21,zmm7,zmm3
  a71ddc:	62 31 44 48 59 c1    	vmulps zmm8,zmm7,zmm17
  a71de2:	62 71 7c 48 10 51 02 	vmovups zmm10,ZMMWORD PTR [rcx+0x80]
  a71de9:	62 32 65 48 b8 c4    	vfmadd231ps zmm8,zmm3,zmm20
  a71def:	62 f1 7c 48 10 59 03 	vmovups zmm3,ZMMWORD PTR [rcx+0xc0]
  a71df6:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x300]
  a71dfd:	0c 
  a71dfe:	62 c1 44 48 59 ca    	vmulps zmm17,zmm7,zmm10
  a71e04:	62 51 64 40 59 d2    	vmulps zmm10,zmm19,zmm10
  a71e0a:	62 e2 65 40 bc cb    	vfnmadd231ps zmm17,zmm19,zmm3
  a71e10:	62 72 65 48 b8 d7    	vfmadd231ps zmm10,zmm3,zmm7
  a71e16:	62 f1 7c 48 10 59 10 	vmovups zmm3,ZMMWORD PTR [rcx+0x400]
  a71e1d:	62 e1 7c 48 10 59 11 	vmovups zmm19,ZMMWORD PTR [rcx+0x440]
  a71e24:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x100]
  a71e2b:	04 
  a71e2c:	62 72 35 40 7f 5c 24 	vpermt2ps zmm11,zmm25,ZMMWORD PTR [rsp+0x2c0]
  a71e33:	0b 
  a71e34:	62 e1 04 48 59 e3    	vmulps zmm20,zmm15,zmm3
  a71e3a:	62 a2 05 40 bc e3    	vfnmadd231ps zmm20,zmm31,zmm19
  a71e40:	62 e1 04 40 59 f3    	vmulps zmm22,zmm31,zmm3
  a71e46:	62 f1 7c 48 10 59 04 	vmovups zmm3,ZMMWORD PTR [rcx+0x100]
  a71e4d:	62 c2 65 40 b8 f7    	vfmadd231ps zmm22,zmm19,zmm15
  a71e53:	62 f1 7c 48 10 79 05 	vmovups zmm7,ZMMWORD PTR [rcx+0x140]
  a71e5a:	62 e1 7c 48 10 59 0a 	vmovups zmm19,ZMMWORD PTR [rcx+0x280]
  a71e61:	62 d2 35 40 7f ec    	vpermt2ps zmm5,zmm25,zmm12
  a71e67:	62 71 24 48 59 fb    	vmulps zmm15,zmm11,zmm3
  a71e6d:	62 72 55 48 bc ff    	vfnmadd231ps zmm15,zmm5,zmm7
  a71e73:	62 f1 54 48 59 eb    	vmulps zmm5,zmm5,zmm3
  a71e79:	62 f1 7c 48 10 59 0b 	vmovups zmm3,ZMMWORD PTR [rcx+0x2c0]
  a71e80:	62 d2 45 48 b8 eb    	vfmadd231ps zmm5,zmm7,zmm11
  a71e86:	62 f1 7c 48 10 79 16 	vmovups zmm7,ZMMWORD PTR [rcx+0x580]
  a71e8d:	62 61 7c 48 10 59 17 	vmovups zmm27,ZMMWORD PTR [rcx+0x5c0]
  a71e94:	62 02 35 40 7f d4    	vpermt2ps zmm26,zmm25,zmm28
  a71e9a:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0xc0]
  a71ea1:	03 
  a71ea2:	62 71 1c 48 59 df    	vmulps zmm11,zmm12,zmm7
  a71ea8:	62 12 6d 48 bc db    	vfnmadd231ps zmm11,zmm2,zmm27
  a71eae:	62 f1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm7
  a71eb4:	62 21 3c 40 58 e7    	vaddps zmm28,zmm24,zmm23
  a71eba:	62 d2 25 40 b8 d4    	vfmadd231ps zmm2,zmm27,zmm12
  a71ec0:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x140]
  a71ec7:	05 
  a71ec8:	62 21 44 48 59 cb    	vmulps zmm25,zmm7,zmm19
  a71ece:	62 62 5d 48 bc cb    	vfnmadd231ps zmm25,zmm4,zmm3
  a71ed4:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x180]
  a71edb:	06 
  a71edc:	62 41 7c 40 58 de    	vaddps zmm27,zmm16,zmm14
  a71ee2:	62 b1 5c 48 59 e3    	vmulps zmm4,zmm4,zmm19
  a71ee8:	62 a1 4c 48 58 d9    	vaddps zmm19,zmm6,zmm17
  a71eee:	62 f2 65 48 b8 e7    	vfmadd231ps zmm4,zmm3,zmm7
  a71ef4:	62 41 54 40 58 e9    	vaddps zmm29,zmm21,zmm9
  a71efa:	62 41 6c 40 58 fa    	vaddps zmm31,zmm18,zmm10
  a71f00:	62 d1 6c 40 5c fa    	vsubps zmm7,zmm18,zmm10
  a71f06:	62 c1 5c 40 58 d7    	vaddps zmm18,zmm20,zmm15
  a71f0c:	62 51 54 40 5c c9    	vsubps zmm9,zmm21,zmm9
  a71f12:	62 e1 6c 48 58 ec    	vaddps zmm21,zmm2,zmm4
  a71f18:	62 71 6c 48 5c d4    	vsubps zmm10,zmm2,zmm4
  a71f1e:	62 91 24 48 58 d9    	vaddps zmm3,zmm11,zmm25
  a71f24:	62 51 5c 40 5c e7    	vsubps zmm12,zmm20,zmm15
  a71f2a:	62 e1 14 48 58 e1    	vaddps zmm20,zmm13,zmm1
  a71f30:	62 d1 7c 40 5c e6    	vsubps zmm4,zmm16,zmm14
  a71f36:	62 f1 14 48 5c c9    	vsubps zmm1,zmm13,zmm1
  a71f3c:	62 91 24 40 58 d4    	vaddps zmm2,zmm27,zmm28
  a71f42:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a71f49:	03 
  a71f4a:	62 91 3c 48 58 d6    	vaddps zmm2,zmm8,zmm30
  a71f50:	62 11 3c 48 5c c6    	vsubps zmm8,zmm8,zmm30
  a71f56:	62 71 74 40 5c ee    	vsubps zmm13,zmm17,zmm6
  a71f5c:	62 21 14 40 58 f3    	vaddps zmm30,zmm29,zmm19
  a71f62:	62 f1 4c 40 58 f5    	vaddps zmm6,zmm22,zmm5
  a71f68:	62 71 4c 40 5c f5    	vsubps zmm14,zmm22,zmm5
  a71f6e:	62 51 34 40 5c fb    	vsubps zmm15,zmm25,zmm11
  a71f74:	62 f1 6c 40 58 eb    	vaddps zmm5,zmm18,zmm3
  a71f7a:	62 11 7c 48 58 da    	vaddps zmm11,zmm0,zmm26
  a71f80:	62 e1 2c 40 5c f0    	vsubps zmm22,zmm26,zmm0
  a71f86:	62 81 44 40 5c f8    	vsubps zmm23,zmm23,zmm24
  a71f8c:	62 d1 5c 40 58 c3    	vaddps zmm0,zmm20,zmm11
  a71f92:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a71f99:	02 
  a71f9a:	62 01 6c 48 58 c7    	vaddps zmm24,zmm2,zmm31
  a71fa0:	62 a1 14 40 5c db    	vsubps zmm19,zmm29,zmm19
  a71fa6:	62 21 4c 48 58 cd    	vaddps zmm25,zmm6,zmm21
  a71fac:	62 e1 6c 40 5c d3    	vsubps zmm18,zmm18,zmm3
  a71fb2:	62 61 34 48 58 d7    	vaddps zmm26,zmm9,zmm7
  a71fb8:	62 01 24 40 5c dc    	vsubps zmm27,zmm27,zmm28
  a71fbe:	62 e1 5c 48 58 c9    	vaddps zmm17,zmm4,zmm1
  a71fc4:	62 91 6c 48 5c d7    	vsubps zmm2,zmm2,zmm31
  a71fca:	62 41 3c 48 58 e5    	vaddps zmm28,zmm8,zmm13
  a71fd0:	62 a1 4c 48 5c ed    	vsubps zmm21,zmm6,zmm21
  a71fd6:	62 a1 24 48 5c e4    	vsubps zmm20,zmm11,zmm20
  a71fdc:	62 f1 0c 40 58 c5    	vaddps zmm0,zmm30,zmm5
  a71fe2:	62 d1 0c 48 58 f7    	vaddps zmm6,zmm14,zmm15
  a71fe8:	62 f1 5c 48 5c c9    	vsubps zmm1,zmm4,zmm1
  a71fee:	62 f1 1c 40 5c e6    	vsubps zmm4,zmm28,zmm6
  a71ff4:	62 e1 1c 40 58 c6    	vaddps zmm16,zmm28,zmm6
  a71ffa:	62 51 1c 48 58 da    	vaddps zmm11,zmm12,zmm10
  a72000:	62 61 34 48 5c e7    	vsubps zmm28,zmm9,zmm7
  a72006:	62 d1 2c 40 58 fb    	vaddps zmm7,zmm26,zmm11
  a7200c:	62 41 2c 40 5c d3    	vsubps zmm26,zmm26,zmm11
  a72012:	62 11 3c 40 58 d9    	vaddps zmm11,zmm24,zmm25
  a72018:	62 d1 1c 48 5c f2    	vsubps zmm6,zmm12,zmm10
  a7201e:	62 31 6c 48 5c cd    	vsubps zmm9,zmm2,zmm21
  a72024:	62 31 6c 48 58 e5    	vaddps zmm12,zmm2,zmm21
  a7202a:	62 a1 44 40 58 ee    	vaddps zmm21,zmm23,zmm22
  a72030:	62 a1 4c 40 5c f7    	vsubps zmm22,zmm22,zmm23
  a72036:	62 b1 64 40 58 d2    	vaddps zmm2,zmm19,zmm18
  a7203c:	62 a1 64 40 5c d2    	vsubps zmm18,zmm19,zmm18
  a72042:	62 72 7d 48 18 15 14 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff603414]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a72049:	34 60 ff 
  a7204c:	62 c1 7c 48 28 da    	vmovaps zmm19,zmm10
  a72052:	62 a2 45 48 ac d9    	vfnmadd213ps zmm19,zmm7,zmm17
  a72058:	62 51 3c 48 5c c5    	vsubps zmm8,zmm8,zmm13
  a7205e:	62 f2 7d 48 18 1d 6c 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff60326c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a72065:	32 60 ff 
  a72068:	62 f1 5c 48 59 e3    	vmulps zmm4,zmm4,zmm3
  a7206e:	62 51 7c 48 28 ea    	vmovaps zmm13,zmm10
  a72074:	62 32 7d 40 ac ed    	vfnmadd213ps zmm13,zmm16,zmm21
  a7207a:	62 51 0c 48 5c f7    	vsubps zmm14,zmm14,zmm15
  a72080:	62 e1 2c 40 59 fb    	vmulps zmm23,zmm26,zmm3
  a72086:	62 41 7c 48 28 d2    	vmovaps zmm26,zmm10
  a7208c:	62 01 3c 40 5c c1    	vsubps zmm24,zmm24,zmm25
  a72092:	62 41 7c 48 28 ca    	vmovaps zmm25,zmm10
  a72098:	62 02 6d 48 ac d3    	vfnmadd213ps zmm26,zmm2,zmm27
  a7209e:	62 22 1d 48 ac cc    	vfnmadd213ps zmm25,zmm12,zmm20
  a720a4:	62 61 0c 40 5c ed    	vsubps zmm29,zmm30,zmm5
  a720aa:	62 61 1c 40 58 f6    	vaddps zmm30,zmm28,zmm6
  a720b0:	62 f1 24 40 58 d2    	vaddps zmm2,zmm27,zmm2
  a720b6:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a720bd:	01 
  a720be:	62 11 74 48 58 fe    	vaddps zmm15,zmm1,zmm30
  a720c4:	62 d1 5c 40 58 ec    	vaddps zmm5,zmm20,zmm12
  a720ca:	62 62 2d 48 ac f1    	vfnmadd213ps zmm30,zmm10,zmm1
  a720d0:	62 e1 64 40 58 e4    	vaddps zmm20,zmm19,zmm4
  a720d6:	62 41 3c 48 58 de    	vaddps zmm27,zmm8,zmm14
  a720dc:	62 d1 3c 48 5c ce    	vsubps zmm1,zmm8,zmm14
  a720e2:	62 01 4c 40 58 fb    	vaddps zmm31,zmm22,zmm27
  a720e8:	62 71 64 40 5c c4    	vsubps zmm8,zmm19,zmm4
  a720ee:	62 d1 7c 48 28 e2    	vmovaps zmm4,zmm10
  a720f4:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a720fb:	03 
  a720fc:	62 f2 7d 48 ac e2    	vfnmadd213ps zmm4,zmm0,zmm2
  a72102:	62 22 2d 48 ac de    	vfnmadd213ps zmm27,zmm10,zmm22
  a72108:	62 a1 14 48 5c df    	vsubps zmm19,zmm13,zmm23
  a7210e:	62 71 3c 40 59 e3    	vmulps zmm12,zmm24,zmm3
  a72114:	62 e1 1c 40 5c f6    	vsubps zmm22,zmm28,zmm6
  a7211a:	62 41 5c 48 58 c4    	vaddps zmm24,zmm4,zmm12
  a72120:	62 a1 14 48 58 ff    	vaddps zmm23,zmm13,zmm23
  a72126:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x80]
  a7212d:	02 
  a7212e:	62 12 25 48 ac d4    	vfnmadd213ps zmm10,zmm11,zmm28
  a72134:	62 71 14 40 59 f3    	vmulps zmm14,zmm29,zmm3
  a7213a:	62 51 5c 48 5c ec    	vsubps zmm13,zmm4,zmm12
  a72140:	62 d1 2c 48 5c e6    	vsubps zmm4,zmm10,zmm14
  a72146:	62 51 2c 48 58 f6    	vaddps zmm14,zmm10,zmm14
  a7214c:	62 f1 74 40 58 ff    	vaddps zmm7,zmm17,zmm7
  a72152:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a72158:	62 f1 34 48 59 db    	vmulps zmm3,zmm9,zmm3
  a7215e:	62 31 54 40 58 e0    	vaddps zmm12,zmm21,zmm16
  a72164:	62 e1 2c 40 5c eb    	vsubps zmm21,zmm26,zmm3
  a7216a:	62 51 6c 40 59 ca    	vmulps zmm9,zmm18,zmm10
  a72170:	62 f1 2c 40 58 f3    	vaddps zmm6,zmm26,zmm3
  a72176:	62 d1 34 40 58 d9    	vaddps zmm3,zmm25,zmm9
  a7217c:	62 d1 74 48 59 ca    	vmulps zmm1,zmm1,zmm10
  a72182:	62 41 7c 48 28 d2    	vmovaps zmm26,zmm10
  a72188:	62 51 34 40 5c d1    	vsubps zmm10,zmm25,zmm9
  a7218e:	62 e1 0c 40 58 d1    	vaddps zmm18,zmm30,zmm1
  a72194:	62 11 4c 40 59 ca    	vmulps zmm9,zmm22,zmm26
  a7219a:	62 f1 0c 40 5c c9    	vsubps zmm1,zmm30,zmm1
  a721a0:	62 c1 24 40 5c f1    	vsubps zmm22,zmm27,zmm9
  a721a6:	62 51 24 40 58 c9    	vaddps zmm9,zmm27,zmm9
  a721ac:	62 51 1c 40 58 db    	vaddps zmm11,zmm28,zmm11
  a721b2:	62 f1 6c 48 58 c0    	vaddps zmm0,zmm2,zmm0
  a721b8:	62 33 7d 48 19 d8 02 	vextractf32x4 xmm16,zmm11,0x2
  a721bf:	62 e1 7c 48 28 0d b7 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6227b7]        # 94980 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21e30>
  a721c6:	27 62 ff 
  a721c9:	62 72 75 40 7f d8    	vpermt2ps zmm11,zmm17,zmm0
  a721cf:	62 71 7c 48 11 1c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm11
  a721d6:	62 f3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm0,0x2
  a721dd:	62 f1 7c 00 14 c0    	vunpcklps xmm0,xmm16,xmm0
  a721e3:	c5 f8 13 44 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm0
  a721e9:	62 e3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm19,0x2
  a721f0:	62 a2 75 40 7f dc    	vpermt2ps zmm19,zmm17,zmm20
  a721f6:	62 e1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x48],zmm19
  a721fd:	48 00 00 00 
  a72201:	62 c3 7d 48 19 e3 02 	vextractf32x4 xmm11,zmm20,0x2
  a72208:	c4 c1 78 14 c3       	vunpcklps xmm0,xmm0,xmm11
  a7220d:	c5 f8 13 84 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm0
  a72214:	00 00 
  a72216:	62 f3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm3,0x2
  a7221d:	62 b2 75 40 7f dd    	vpermt2ps zmm3,zmm17,zmm21
  a72223:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x90],zmm3
  a7222a:	90 00 00 00 
  a7222e:	62 e3 7d 48 19 eb 02 	vextractf32x4 xmm3,zmm21,0x2
  a72235:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  a72239:	c5 f8 13 84 16 d0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xd0],xmm0
  a72240:	00 00 
  a72242:	62 63 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm31,0x2
  a72249:	62 42 75 40 7f ff    	vpermt2ps zmm31,zmm17,zmm15
  a7224f:	62 61 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xd8],zmm31
  a72256:	d8 00 00 00 
  a7225a:	62 73 7d 48 19 fb 02 	vextractf32x4 xmm3,zmm15,0x2
  a72261:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  a72265:	c5 f8 13 84 16 18 01 	vmovlps QWORD PTR [rsi+rdx*1+0x118],xmm0
  a7226c:	00 00 
  a7226e:	62 f3 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm4,0x2
  a72275:	62 92 75 40 7f e0    	vpermt2ps zmm4,zmm17,zmm24
  a7227b:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x120],zmm4
  a72282:	20 01 00 00 
  a72286:	62 63 7d 48 19 c3 02 	vextractf32x4 xmm3,zmm24,0x2
  a7228d:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  a72291:	c5 f8 13 84 16 60 01 	vmovlps QWORD PTR [rsi+rdx*1+0x160],xmm0
  a72298:	00 00 
  a7229a:	62 e3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm23,0x2
  a722a1:	62 c2 75 40 7f f8    	vpermt2ps zmm23,zmm17,zmm8
  a722a7:	62 e1 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x168],zmm23
  a722ae:	68 01 00 00 
  a722b2:	62 73 7d 48 19 c3 02 	vextractf32x4 xmm3,zmm8,0x2
  a722b9:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  a722bd:	c5 f8 13 84 16 a8 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1a8],xmm0
  a722c4:	00 00 
  a722c6:	62 f3 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm5,0x2
  a722cd:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a722d4:	01 
  a722d5:	62 f2 75 40 7f ea    	vpermt2ps zmm5,zmm17,zmm2
  a722db:	62 f1 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1b0],zmm5
  a722e2:	b0 01 00 00 
  a722e6:	62 f3 7d 48 19 d2 02 	vextractf32x4 xmm2,zmm2,0x2
  a722ed:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a722f1:	c5 f8 13 84 16 f0 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1f0],xmm0
  a722f8:	00 00 
  a722fa:	62 e3 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm22,0x2
  a72301:	62 a2 75 40 7f f2    	vpermt2ps zmm22,zmm17,zmm18
  a72307:	62 e1 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1f8],zmm22
  a7230e:	f8 01 00 00 
  a72312:	62 e3 7d 48 19 d2 02 	vextractf32x4 xmm2,zmm18,0x2
  a72319:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a7231d:	c5 f8 13 84 16 38 02 	vmovlps QWORD PTR [rsi+rdx*1+0x238],xmm0
  a72324:	00 00 
  a72326:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a7232d:	62 52 75 40 7f f5    	vpermt2ps zmm14,zmm17,zmm13
  a72333:	62 71 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm14
  a7233a:	09 
  a7233b:	62 73 7d 48 19 ea 02 	vextractf32x4 xmm2,zmm13,0x2
  a72342:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a72346:	c5 f8 13 84 16 80 02 	vmovlps QWORD PTR [rsi+rdx*1+0x280],xmm0
  a7234d:	00 00 
  a7234f:	62 73 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm12,0x2
  a72356:	62 72 75 40 7f e7    	vpermt2ps zmm12,zmm17,zmm7
  a7235c:	62 71 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x288],zmm12
  a72363:	88 02 00 00 
  a72367:	62 f3 7d 48 19 fa 02 	vextractf32x4 xmm2,zmm7,0x2
  a7236e:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a72372:	c5 f8 13 84 16 c8 02 	vmovlps QWORD PTR [rsi+rdx*1+0x2c8],xmm0
  a72379:	00 00 
  a7237b:	62 73 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm10,0x2
  a72382:	62 72 75 40 7f d6    	vpermt2ps zmm10,zmm17,zmm6
  a72388:	62 71 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm10
  a7238f:	d0 02 00 00 
  a72393:	62 f3 7d 48 19 f2 02 	vextractf32x4 xmm2,zmm6,0x2
  a7239a:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a7239e:	c5 f8 13 84 16 10 03 	vmovlps QWORD PTR [rsi+rdx*1+0x310],xmm0
  a723a5:	00 00 
  a723a7:	62 73 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm9,0x2
  a723ae:	62 72 75 40 7f c9    	vpermt2ps zmm9,zmm17,zmm1
  a723b4:	62 71 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x318],zmm9
  a723bb:	18 03 00 00 
  a723bf:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a723c6:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a723ca:	c5 f8 13 84 16 58 03 	vmovlps QWORD PTR [rsi+rdx*1+0x358],xmm0
  a723d1:	00 00 
  a723d3:	48 81 c2 60 03 00 00 	add    rdx,0x360
  a723da:	48 39 d0             	cmp    rax,rdx
  a723dd:	0f 85 4d f0 ff ff    	jne    a71430 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a723e3:	48 89 ec             	mov    rsp,rbp
  a723e6:	5d                   	pop    rbp
  a723e7:	c5 f8 77             	vzeroupper
  a723ea:	c3                   	ret
