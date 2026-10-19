
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a47540 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a47540:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a47545:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a47549:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  a4754e:	c5 f8 10 67 30       	vmovups xmm4,XMMWORD PTR [rdi+0x30]
  a47553:	62 f3 75 48 18 e8 01 	vinsertf32x4 zmm5,zmm1,xmm0,0x1
  a4755a:	62 f1 7c 48 28 35 9c 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff64ad9c]        # 92300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f7b0>
  a47561:	ad 64 ff 
  a47564:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a47568:	62 f1 7c 48 28 fd    	vmovaps zmm7,zmm5
  a4756e:	62 f2 4d 48 7f fa    	vpermt2ps zmm7,zmm6,zmm2
  a47574:	62 f1 7c 48 28 05 c2 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff64adc2]        # 92340 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f7f0>
  a4757b:	ad 64 ff 
  a4757e:	62 f2 7d 48 7f ea    	vpermt2ps zmm5,zmm0,zmm2
  a47584:	c5 fb 10 4f 28       	vmovsd xmm1,QWORD PTR [rdi+0x28]
  a47589:	62 f3 65 48 18 c9 01 	vinsertf32x4 zmm1,zmm3,xmm1,0x1
  a47590:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a47596:	62 72 4d 48 7f c2    	vpermt2ps zmm8,zmm6,zmm2
  a4759c:	62 f2 7d 48 7f ca    	vpermt2ps zmm1,zmm0,zmm2
  a475a2:	c5 fb 10 5f 40       	vmovsd xmm3,QWORD PTR [rdi+0x40]
  a475a7:	62 f3 5d 48 18 e3 01 	vinsertf32x4 zmm4,zmm4,xmm3,0x1
  a475ae:	62 f2 5d 48 77 f2    	vpermi2ps zmm6,zmm4,zmm2
  a475b4:	62 f2 7d 48 7f e2    	vpermt2ps zmm4,zmm0,zmm2
  a475ba:	62 71 3c 48 58 ce    	vaddps zmm9,zmm8,zmm6
  a475c0:	62 51 44 48 58 d1    	vaddps zmm10,zmm7,zmm9
  a475c6:	62 71 74 48 58 dc    	vaddps zmm11,zmm1,zmm4
  a475cc:	62 d1 54 48 58 db    	vaddps zmm3,zmm5,zmm11
  a475d2:	62 f2 7d 48 18 05 84 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff62de84]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a475d9:	de 62 ff 
  a475dc:	62 d2 7d 48 bc f9    	vfnmadd231ps zmm7,zmm0,zmm9
  a475e2:	62 f1 74 48 5c e4    	vsubps zmm4,zmm1,zmm4
  a475e8:	62 f2 7d 48 18 0d e2 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff62dce2]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a475ef:	dc 62 ff 
  a475f2:	62 f1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm1
  a475f8:	62 71 44 48 58 cc    	vaddps zmm9,zmm7,zmm4
  a475fe:	62 d2 7d 48 bc eb    	vfnmadd231ps zmm5,zmm0,zmm11
  a47604:	62 f1 3c 48 5c f6    	vsubps zmm6,zmm8,zmm6
  a4760a:	62 f1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm1
  a47610:	62 71 54 48 5c c6    	vsubps zmm8,zmm5,zmm6
  a47616:	62 f1 44 48 5c e4    	vsubps zmm4,zmm7,zmm4
  a4761c:	62 f1 4c 48 58 ed    	vaddps zmm5,zmm6,zmm5
  a47622:	62 f1 7c 48 28 35 54 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff67f954]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a47629:	f9 67 ff 
  a4762c:	62 72 4d 48 7f d2    	vpermt2ps zmm10,zmm6,zmm2
  a47632:	62 72 4d 48 7f ca    	vpermt2ps zmm9,zmm6,zmm2
  a47638:	62 f2 4d 48 7f e2    	vpermt2ps zmm4,zmm6,zmm2
  a4763e:	c5 c0 57 ff          	vxorps xmm7,xmm7,xmm7
  a47642:	62 f2 4d 48 7f ff    	vpermt2ps zmm7,zmm6,zmm7
  a47648:	62 71 7c 48 28 1d ae 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff67f8ae]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a4764f:	f8 67 ff 
  a47652:	62 72 25 48 7f d7    	vpermt2ps zmm10,zmm11,zmm7
  a47658:	62 72 25 48 7f cf    	vpermt2ps zmm9,zmm11,zmm7
  a4765e:	62 f2 25 48 7f e7    	vpermt2ps zmm4,zmm11,zmm7
  a47664:	62 f2 4d 48 7f da    	vpermt2ps zmm3,zmm6,zmm2
  a4766a:	62 72 4d 48 7f c2    	vpermt2ps zmm8,zmm6,zmm2
  a47670:	62 f2 4d 48 7f ea    	vpermt2ps zmm5,zmm6,zmm2
  a47676:	62 f2 25 48 7f df    	vpermt2ps zmm3,zmm11,zmm7
  a4767c:	62 72 25 48 7f c7    	vpermt2ps zmm8,zmm11,zmm7
  a47682:	62 f2 25 48 7f ef    	vpermt2ps zmm5,zmm11,zmm7
  a47688:	62 f2 25 48 7f ff    	vpermt2ps zmm7,zmm11,zmm7
  a4768e:	62 f1 ad 48 14 d4    	vunpcklpd zmm2,zmm10,zmm4
  a47694:	62 f1 ad 48 15 e4    	vunpckhpd zmm4,zmm10,zmm4
  a4769a:	62 f1 b5 48 14 f7    	vunpcklpd zmm6,zmm9,zmm7
  a476a0:	62 71 b5 48 15 cf    	vunpckhpd zmm9,zmm9,zmm7
  a476a6:	62 71 7c 48 28 15 50 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff67f750]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a476ad:	f7 67 ff 
  a476b0:	62 71 7c 48 28 da    	vmovaps zmm11,zmm2
  a476b6:	62 72 2d 48 7f de    	vpermt2ps zmm11,zmm10,zmm6
  a476bc:	62 71 7c 48 28 25 7a 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff67f77a]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a476c3:	f7 67 ff 
  a476c6:	62 f2 1d 48 7f d6    	vpermt2ps zmm2,zmm12,zmm6
  a476cc:	62 d2 2d 48 7f e1    	vpermt2ps zmm4,zmm10,zmm9
  a476d2:	62 f1 e5 48 14 f5    	vunpcklpd zmm6,zmm3,zmm5
  a476d8:	62 f1 e5 48 15 dd    	vunpckhpd zmm3,zmm3,zmm5
  a476de:	62 f1 bd 48 14 ef    	vunpcklpd zmm5,zmm8,zmm7
  a476e4:	62 f1 bd 48 15 ff    	vunpckhpd zmm7,zmm8,zmm7
  a476ea:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a476f0:	62 72 2d 48 7f c5    	vpermt2ps zmm8,zmm10,zmm5
  a476f6:	62 f2 1d 48 7f f5    	vpermt2ps zmm6,zmm12,zmm5
  a476fc:	62 f2 2d 48 7f df    	vpermt2ps zmm3,zmm10,zmm7
  a47702:	62 f1 7c 48 10 6a 02 	vmovups zmm5,ZMMWORD PTR [rdx+0x80]
  a47709:	62 f1 7c 48 10 7a 03 	vmovups zmm7,ZMMWORD PTR [rdx+0xc0]
  a47710:	62 71 7c 48 10 4a 04 	vmovups zmm9,ZMMWORD PTR [rdx+0x100]
  a47717:	62 71 7c 48 10 52 05 	vmovups zmm10,ZMMWORD PTR [rdx+0x140]
  a4771e:	62 71 6c 48 59 e5    	vmulps zmm12,zmm2,zmm5
  a47724:	62 72 4d 48 bc e7    	vfnmadd231ps zmm12,zmm6,zmm7
  a4772a:	62 51 5c 48 59 e9    	vmulps zmm13,zmm4,zmm9
  a47730:	62 52 65 48 bc ea    	vfnmadd231ps zmm13,zmm3,zmm10
  a47736:	62 51 1c 48 58 f5    	vaddps zmm14,zmm12,zmm13
  a4773c:	62 f1 4c 48 59 ed    	vmulps zmm5,zmm6,zmm5
  a47742:	62 f2 45 48 b8 ea    	vfmadd231ps zmm5,zmm7,zmm2
  a47748:	62 d1 64 48 59 d1    	vmulps zmm2,zmm3,zmm9
  a4774e:	62 f2 2d 48 b8 d4    	vfmadd231ps zmm2,zmm10,zmm4
  a47754:	62 f1 54 48 58 da    	vaddps zmm3,zmm5,zmm2
  a4775a:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a47760:	62 d2 0d 48 ac e3    	vfnmadd213ps zmm4,zmm14,zmm11
  a47766:	62 d2 65 48 ac c0    	vfnmadd213ps zmm0,zmm3,zmm8
  a4776c:	c5 bc 58 db          	vaddps ymm3,ymm8,ymm3
  a47770:	c4 c1 20 58 f6       	vaddps xmm6,xmm11,xmm14
  a47775:	c5 fc 28 3d 43 0b 63 	vmovaps ymm7,YMMWORD PTR [rip+0xffffffffff630b43]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a4777c:	ff 
  a4777d:	62 f2 45 28 7f f3    	vpermt2ps ymm6,ymm7,ymm3
  a47783:	c5 f8 11 36          	vmovups XMMWORD PTR [rsi],xmm6
  a47787:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  a4778d:	c5 f8 13 5e 10       	vmovlps QWORD PTR [rsi+0x10],xmm3
  a47792:	c4 c1 1c 5c dd       	vsubps ymm3,ymm12,ymm13
  a47797:	c5 e4 59 d9          	vmulps ymm3,ymm3,ymm1
  a4779b:	c5 fc 5c f3          	vsubps ymm6,ymm0,ymm3
  a4779f:	c5 d0 5c d2          	vsubps xmm2,xmm5,xmm2
  a477a3:	c5 e8 59 c9          	vmulps xmm1,xmm2,xmm1
  a477a7:	c5 d8 58 d1          	vaddps xmm2,xmm4,xmm1
  a477ab:	62 f2 45 28 7f d6    	vpermt2ps ymm2,ymm7,ymm6
  a477b1:	c5 f8 11 56 18       	vmovups XMMWORD PTR [rsi+0x18],xmm2
  a477b6:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  a477bc:	c5 f8 13 56 28       	vmovlps QWORD PTR [rsi+0x28],xmm2
  a477c1:	c5 fc 58 c3          	vaddps ymm0,ymm0,ymm3
  a477c5:	c5 d8 5c c9          	vsubps xmm1,xmm4,xmm1
  a477c9:	62 f2 45 28 7f c8    	vpermt2ps ymm1,ymm7,ymm0
  a477cf:	c5 f8 11 4e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm1
  a477d4:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  a477da:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  a477df:	c5 f8 77             	vzeroupper
  a477e2:	c3                   	ret
