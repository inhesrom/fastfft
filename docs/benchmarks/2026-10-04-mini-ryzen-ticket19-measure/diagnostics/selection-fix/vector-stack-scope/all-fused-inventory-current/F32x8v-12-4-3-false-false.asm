
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000af4640 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  af4640:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  af4645:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  af464b:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  af464f:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  af4655:	c5 f8 10 17          	vmovups xmm2,XMMWORD PTR [rdi]
  af4659:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  af465e:	c5 f8 10 67 30       	vmovups xmm4,XMMWORD PTR [rdi+0x30]
  af4663:	c5 f8 10 6f 48       	vmovups xmm5,XMMWORD PTR [rdi+0x48]
  af4668:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  af466e:	c5 e8 c6 f0 dd       	vshufps xmm6,xmm2,xmm0,0xdd
  af4673:	c5 fb 10 7f 40       	vmovsd xmm7,QWORD PTR [rdi+0x40]
  af4678:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  af467e:	c4 e3 45 0c f9 c0    	vblendps ymm7,ymm7,ymm1,0xc0
  af4684:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  af468a:	c5 58 c6 c7 dd       	vshufps xmm8,xmm4,xmm7,0xdd
  af468f:	c4 41 4c 5c c8       	vsubps ymm9,ymm6,ymm8
  af4694:	c5 7b 10 57 58       	vmovsd xmm10,QWORD PTR [rdi+0x58]
  af4699:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  af469f:	c4 63 2d 0c d1 c0    	vblendps ymm10,ymm10,ymm1,0xc0
  af46a5:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  af46ab:	c4 41 50 c6 da 88    	vshufps xmm11,xmm5,xmm10,0x88
  af46b1:	c5 7b 10 67 28       	vmovsd xmm12,QWORD PTR [rdi+0x28]
  af46b6:	c4 43 7d 18 e4 01    	vinsertf128 ymm12,ymm0,xmm12,0x1
  af46bc:	c4 e3 1d 0c c9 c0    	vblendps ymm1,ymm12,ymm1,0xc0
  af46c2:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  af46c8:	c5 60 c6 e1 88       	vshufps xmm12,xmm3,xmm1,0x88
  af46cd:	c4 41 24 5c ec       	vsubps ymm13,ymm11,ymm12
  af46d2:	c5 e8 c6 c0 88       	vshufps xmm0,xmm2,xmm0,0x88
  af46d7:	c5 d8 c6 d7 88       	vshufps xmm2,xmm4,xmm7,0x88
  af46dc:	c5 fc 5c e2          	vsubps ymm4,ymm0,ymm2
  af46e0:	c5 e0 c6 c9 dd       	vshufps xmm1,xmm3,xmm1,0xdd
  af46e5:	c4 c1 50 c6 da dd    	vshufps xmm3,xmm5,xmm10,0xdd
  af46eb:	c5 f4 5c eb          	vsubps ymm5,ymm1,ymm3
  af46ef:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  af46f3:	c5 f4 58 cb          	vaddps ymm1,ymm1,ymm3
  af46f7:	c5 fc 58 c2          	vaddps ymm0,ymm0,ymm2
  af46fb:	c4 c1 1c 58 d3       	vaddps ymm2,ymm12,ymm11
  af4700:	c5 f8 58 da          	vaddps xmm3,xmm0,xmm2
  af4704:	c5 d8 58 fd          	vaddps xmm7,xmm4,xmm5
  af4708:	c5 f8 5c c2          	vsubps xmm0,xmm0,xmm2
  af470c:	c5 d8 5c d5          	vsubps xmm2,xmm4,xmm5
  af4710:	c5 e5 15 e0          	vunpckhpd ymm4,ymm3,ymm0
  af4714:	c5 e5 14 c0          	vunpcklpd ymm0,ymm3,ymm0
  af4718:	c5 c5 15 da          	vunpckhpd ymm3,ymm7,ymm2
  af471c:	c5 dc c6 db 88       	vshufps ymm3,ymm4,ymm3,0x88
  af4721:	c5 c5 14 d2          	vunpcklpd ymm2,ymm7,ymm2
  af4725:	c5 fc c6 e2 88       	vshufps ymm4,ymm0,ymm2,0x88
  af472a:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  af472f:	c5 fc c6 c2 dd       	vshufps ymm0,ymm0,ymm2,0xdd
  af4734:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  af4739:	c5 e4 c6 d3 d8       	vshufps ymm2,ymm3,ymm3,0xd8
  af473e:	c5 c8 58 d9          	vaddps xmm3,xmm6,xmm1
  af4742:	c4 c1 10 58 e9       	vaddps xmm5,xmm13,xmm9
  af4747:	c5 c8 5c c9          	vsubps xmm1,xmm6,xmm1
  af474b:	c4 c1 30 5c f5       	vsubps xmm6,xmm9,xmm13
  af4750:	c5 e5 15 f9          	vunpckhpd ymm7,ymm3,ymm1
  af4754:	c5 e5 14 c9          	vunpcklpd ymm1,ymm3,ymm1
  af4758:	c5 d5 15 de          	vunpckhpd ymm3,ymm5,ymm6
  af475c:	c5 c4 c6 db 88       	vshufps ymm3,ymm7,ymm3,0x88
  af4761:	c5 d5 14 ee          	vunpcklpd ymm5,ymm5,ymm6
  af4765:	c5 f4 c6 f5 88       	vshufps ymm6,ymm1,ymm5,0x88
  af476a:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  af476f:	c5 f4 c6 cd dd       	vshufps ymm1,ymm1,ymm5,0xdd
  af4774:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  af4779:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  af477e:	c5 fc 10 6a 40       	vmovups ymm5,YMMWORD PTR [rdx+0x40]
  af4783:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  af4788:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  af478f:	00 
  af4790:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  af4797:	00 
  af4798:	c5 7c 59 d5          	vmulps ymm10,ymm0,ymm5
  af479c:	c4 62 75 bc d7       	vfnmadd231ps ymm10,ymm1,ymm7
  af47a1:	c5 3c 59 da          	vmulps ymm11,ymm8,ymm2
  af47a5:	c4 42 65 bc d9       	vfnmadd231ps ymm11,ymm3,ymm9
  af47aa:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  af47af:	c5 f4 59 cd          	vmulps ymm1,ymm1,ymm5
  af47b3:	c4 e2 7d b8 cf       	vfmadd231ps ymm1,ymm0,ymm7
  af47b8:	c5 bc 59 c3          	vmulps ymm0,ymm8,ymm3
  af47bc:	c4 c2 6d b8 c1       	vfmadd231ps ymm0,ymm2,ymm9
  af47c1:	c5 f4 58 d0          	vaddps ymm2,ymm1,ymm0
  af47c5:	c4 e2 7d 18 1d 92 0c 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff580c92]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  af47cc:	58 ff 
  af47ce:	c5 fc 28 eb          	vmovaps ymm5,ymm3
  af47d2:	c4 e2 1d ac ec       	vfnmadd213ps ymm5,ymm12,ymm4
  af47d7:	c5 f4 5c c0          	vsubps ymm0,ymm1,ymm0
  af47db:	c4 e2 7d 18 0d f0 0a 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff580af0]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  af47e2:	58 ff 
  af47e4:	c5 fc 59 c1          	vmulps ymm0,ymm0,ymm1
  af47e8:	c4 e2 6d ac de       	vfnmadd213ps ymm3,ymm2,ymm6
  af47ed:	c4 c1 2c 5c fb       	vsubps ymm7,ymm10,ymm11
  af47f2:	c5 c4 59 c9          	vmulps ymm1,ymm7,ymm1
  af47f6:	c5 e4 5c f9          	vsubps ymm7,ymm3,ymm1
  af47fa:	c5 e4 58 c9          	vaddps ymm1,ymm3,ymm1
  af47fe:	c5 cc 58 d2          	vaddps ymm2,ymm6,ymm2
  af4802:	c5 98 58 dc          	vaddps xmm3,xmm12,xmm4
  af4806:	c5 fc 28 25 d2 29 58 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff5829d2]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  af480d:	ff 
  af480e:	62 f2 5d 28 7f da    	vpermt2ps ymm3,ymm4,ymm2
  af4814:	c5 fc 11 1e          	vmovups YMMWORD PTR [rsi],ymm3
  af4818:	c5 d0 58 d0          	vaddps xmm2,xmm5,xmm0
  af481c:	62 f2 5d 28 7f d7    	vpermt2ps ymm2,ymm4,ymm7
  af4822:	c5 fc 11 56 20       	vmovups YMMWORD PTR [rsi+0x20],ymm2
  af4827:	c5 d0 5c c0          	vsubps xmm0,xmm5,xmm0
  af482b:	62 f2 5d 28 7f c1    	vpermt2ps ymm0,ymm4,ymm1
  af4831:	c5 fc 11 46 40       	vmovups YMMWORD PTR [rsi+0x40],ymm0
  af4836:	c5 f8 77             	vzeroupper
  af4839:	c3                   	ret
