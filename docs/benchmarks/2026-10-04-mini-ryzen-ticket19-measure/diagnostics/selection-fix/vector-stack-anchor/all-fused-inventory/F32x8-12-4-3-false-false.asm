
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000070a6c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  70a6c0:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  70a6c5:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  70a6cb:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  70a6cf:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  70a6d5:	c5 fb 10 57 28       	vmovsd xmm2,QWORD PTR [rdi+0x28]
  70a6da:	c4 e3 7d 18 d2 01    	vinsertf128 ymm2,ymm0,xmm2,0x1
  70a6e0:	c4 e3 6d 0c d1 c0    	vblendps ymm2,ymm2,ymm1,0xc0
  70a6e6:	c5 fb 10 5f 40       	vmovsd xmm3,QWORD PTR [rdi+0x40]
  70a6eb:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  70a6f1:	c4 e3 65 0c d9 c0    	vblendps ymm3,ymm3,ymm1,0xc0
  70a6f7:	c5 f8 10 27          	vmovups xmm4,XMMWORD PTR [rdi]
  70a6fb:	c5 f8 10 6f 18       	vmovups xmm5,XMMWORD PTR [rdi+0x18]
  70a700:	c5 f8 10 77 30       	vmovups xmm6,XMMWORD PTR [rdi+0x30]
  70a705:	c5 f8 10 7f 48       	vmovups xmm7,XMMWORD PTR [rdi+0x48]
  70a70a:	c5 7b 10 47 58       	vmovsd xmm8,QWORD PTR [rdi+0x58]
  70a70f:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  70a715:	c4 e3 3d 0c c9 c0    	vblendps ymm1,ymm8,ymm1,0xc0
  70a71b:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  70a721:	c5 58 c6 c0 88       	vshufps xmm8,xmm4,xmm0,0x88
  70a726:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  70a72c:	c5 48 c6 cb 88       	vshufps xmm9,xmm6,xmm3,0x88
  70a731:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  70a737:	c5 50 c6 d2 88       	vshufps xmm10,xmm5,xmm2,0x88
  70a73c:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  70a742:	c5 40 c6 d9 88       	vshufps xmm11,xmm7,xmm1,0x88
  70a747:	c5 d8 c6 c0 dd       	vshufps xmm0,xmm4,xmm0,0xdd
  70a74c:	c5 c8 c6 f3 dd       	vshufps xmm6,xmm6,xmm3,0xdd
  70a751:	c5 d0 c6 d2 dd       	vshufps xmm2,xmm5,xmm2,0xdd
  70a756:	c5 c0 c6 c9 dd       	vshufps xmm1,xmm7,xmm1,0xdd
  70a75b:	c4 c1 3c 58 f9       	vaddps ymm7,ymm8,ymm9
  70a760:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  70a765:	c5 fc 58 de          	vaddps ymm3,ymm0,ymm6
  70a769:	c5 ec 58 e1          	vaddps ymm4,ymm2,ymm1
  70a76d:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  70a772:	c5 ec 5c c9          	vsubps ymm1,ymm2,ymm1
  70a776:	c5 fc 5c ee          	vsubps ymm5,ymm0,ymm6
  70a77a:	c4 c1 24 5c f2       	vsubps ymm6,ymm11,ymm10
  70a77f:	c5 98 58 c7          	vaddps xmm0,xmm12,xmm7
  70a783:	c5 b8 58 d1          	vaddps xmm2,xmm8,xmm1
  70a787:	c4 c1 40 5c fc       	vsubps xmm7,xmm7,xmm12
  70a78c:	c5 b8 5c c9          	vsubps xmm1,xmm8,xmm1
  70a790:	c5 7d 15 c7          	vunpckhpd ymm8,ymm0,ymm7
  70a794:	c5 fd 14 ff          	vunpcklpd ymm7,ymm0,ymm7
  70a798:	c5 ed 15 c1          	vunpckhpd ymm0,ymm2,ymm1
  70a79c:	c5 3c c6 c0 88       	vshufps ymm8,ymm8,ymm0,0x88
  70a7a1:	c5 ed 14 c9          	vunpcklpd ymm1,ymm2,ymm1
  70a7a5:	c5 c4 c6 c1 88       	vshufps ymm0,ymm7,ymm1,0x88
  70a7aa:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  70a7af:	c5 c4 c6 c9 dd       	vshufps ymm1,ymm7,ymm1,0xdd
  70a7b4:	c5 f4 c6 d1 d8       	vshufps ymm2,ymm1,ymm1,0xd8
  70a7b9:	c4 c1 3c c6 c8 d8    	vshufps ymm1,ymm8,ymm8,0xd8
  70a7bf:	c5 e0 58 fc          	vaddps xmm7,xmm3,xmm4
  70a7c3:	c5 48 58 c5          	vaddps xmm8,xmm6,xmm5
  70a7c7:	c5 e0 5c dc          	vsubps xmm3,xmm3,xmm4
  70a7cb:	c5 d0 5c e6          	vsubps xmm4,xmm5,xmm6
  70a7cf:	c5 c5 15 eb          	vunpckhpd ymm5,ymm7,ymm3
  70a7d3:	c5 c5 14 f3          	vunpcklpd ymm6,ymm7,ymm3
  70a7d7:	c5 bd 15 dc          	vunpckhpd ymm3,ymm8,ymm4
  70a7db:	c5 d4 c6 eb 88       	vshufps ymm5,ymm5,ymm3,0x88
  70a7e0:	c5 bd 14 e4          	vunpcklpd ymm4,ymm8,ymm4
  70a7e4:	c5 cc c6 dc 88       	vshufps ymm3,ymm6,ymm4,0x88
  70a7e9:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  70a7ee:	c5 cc c6 e4 dd       	vshufps ymm4,ymm6,ymm4,0xdd
  70a7f3:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  70a7f8:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  70a7fd:	c5 fc 10 72 40       	vmovups ymm6,YMMWORD PTR [rdx+0x40]
  70a802:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  70a807:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  70a80e:	00 
  70a80f:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  70a816:	00 
  70a817:	c5 4c 59 d2          	vmulps ymm10,ymm6,ymm2
  70a81b:	c4 62 5d bc d7       	vfnmadd231ps ymm10,ymm4,ymm7
  70a820:	c5 3c 59 d9          	vmulps ymm11,ymm8,ymm1
  70a824:	c4 42 55 bc d9       	vfnmadd231ps ymm11,ymm5,ymm9
  70a829:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  70a82e:	c5 cc 59 e4          	vmulps ymm4,ymm6,ymm4
  70a832:	c4 e2 6d b8 e7       	vfmadd231ps ymm4,ymm2,ymm7
  70a837:	c5 bc 59 d5          	vmulps ymm2,ymm8,ymm5
  70a83b:	c4 c2 75 b8 d1       	vfmadd231ps ymm2,ymm1,ymm9
  70a840:	c4 e2 7d 18 0d 17 ac 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff96ac17]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  70a847:	96 ff 
  70a849:	c5 dc 58 ea          	vaddps ymm5,ymm4,ymm2
  70a84d:	c5 fc 28 f1          	vmovaps ymm6,ymm1
  70a851:	c4 e2 1d ac f0       	vfnmadd213ps ymm6,ymm12,ymm0
  70a856:	c5 dc 5c d2          	vsubps ymm2,ymm4,ymm2
  70a85a:	c4 e2 7d 18 25 71 aa 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff96aa71]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  70a861:	96 ff 
  70a863:	c5 ec 59 d4          	vmulps ymm2,ymm2,ymm4
  70a867:	c4 e2 55 ac cb       	vfnmadd213ps ymm1,ymm5,ymm3
  70a86c:	c4 c1 2c 5c fb       	vsubps ymm7,ymm10,ymm11
  70a871:	c5 c4 59 e4          	vmulps ymm4,ymm7,ymm4
  70a875:	c5 d0 58 db          	vaddps xmm3,xmm5,xmm3
  70a879:	c5 98 58 c0          	vaddps xmm0,xmm12,xmm0
  70a87d:	c5 f8 14 eb          	vunpcklps xmm5,xmm0,xmm3
  70a881:	c5 f8 15 c3          	vunpckhps xmm0,xmm0,xmm3
  70a885:	c5 f8 11 46 10       	vmovups XMMWORD PTR [rsi+0x10],xmm0
  70a88a:	c5 f8 11 2e          	vmovups XMMWORD PTR [rsi],xmm5
  70a88e:	c5 f0 5c c4          	vsubps xmm0,xmm1,xmm4
  70a892:	c5 c8 58 da          	vaddps xmm3,xmm6,xmm2
  70a896:	c5 e0 14 e8          	vunpcklps xmm5,xmm3,xmm0
  70a89a:	c5 e0 15 c0          	vunpckhps xmm0,xmm3,xmm0
  70a89e:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  70a8a3:	c5 f8 11 6e 20       	vmovups XMMWORD PTR [rsi+0x20],xmm5
  70a8a8:	c5 f0 58 c4          	vaddps xmm0,xmm1,xmm4
  70a8ac:	c5 c8 5c ca          	vsubps xmm1,xmm6,xmm2
  70a8b0:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  70a8b4:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  70a8b8:	c5 f8 11 46 50       	vmovups XMMWORD PTR [rsi+0x50],xmm0
  70a8bd:	c5 f8 11 56 40       	vmovups XMMWORD PTR [rsi+0x40],xmm2
  70a8c2:	c5 f8 77             	vzeroupper
  70a8c5:	c3                   	ret
