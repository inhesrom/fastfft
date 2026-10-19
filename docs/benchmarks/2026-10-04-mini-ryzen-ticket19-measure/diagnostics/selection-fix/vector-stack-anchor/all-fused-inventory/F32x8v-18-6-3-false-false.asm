
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ae3680 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ae3680:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  ae3685:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ae368b:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  ae368f:	c4 e3 7d 0c c4 c0    	vblendps ymm0,ymm0,ymm4,0xc0
  ae3695:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  ae369b:	c5 f8 10 2f          	vmovups xmm5,XMMWORD PTR [rdi]
  ae369f:	c5 f8 10 77 18       	vmovups xmm6,XMMWORD PTR [rdi+0x18]
  ae36a4:	c5 f8 10 57 30       	vmovups xmm2,XMMWORD PTR [rdi+0x30]
  ae36a9:	62 e1 7c 08 10 b7 48 	vmovups xmm22,XMMWORD PTR [rdi+0x48]
  ae36b0:	00 00 00 
  ae36b3:	c5 e8 c6 f9 88       	vshufps xmm7,xmm2,xmm1,0x88
  ae36b8:	c5 78 10 47 60       	vmovups xmm8,XMMWORD PTR [rdi+0x60]
  ae36bd:	c5 fb 10 47 70       	vmovsd xmm0,QWORD PTR [rdi+0x70]
  ae36c2:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ae36c8:	c4 e3 7d 0c c4 c0    	vblendps ymm0,ymm0,ymm4,0xc0
  ae36ce:	c4 c3 7d 19 c1 01    	vextractf128 xmm9,ymm0,0x1
  ae36d4:	c4 41 38 c6 d1 88    	vshufps xmm10,xmm8,xmm9,0x88
  ae36da:	c4 41 44 5c da       	vsubps ymm11,ymm7,ymm10
  ae36df:	62 e2 7d 28 18 15 eb 	vbroadcastss ymm18,DWORD PTR [rip+0xffffffffff591beb]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ae36e6:	1b 59 ff 
  ae36e9:	62 31 24 28 59 da    	vmulps ymm11,ymm11,ymm18
  ae36ef:	c5 68 c6 e1 dd       	vshufps xmm12,xmm2,xmm1,0xdd
  ae36f4:	c4 41 38 c6 c1 dd    	vshufps xmm8,xmm8,xmm9,0xdd
  ae36fa:	c4 41 1c 58 c8       	vaddps ymm9,ymm12,ymm8
  ae36ff:	c5 fb 10 4f 10       	vmovsd xmm1,QWORD PTR [rdi+0x10]
  ae3704:	c4 e3 7d 18 c9 01    	vinsertf128 ymm1,ymm0,xmm1,0x1
  ae370a:	c4 e3 75 0c cc c0    	vblendps ymm1,ymm1,ymm4,0xc0
  ae3710:	c4 c3 7d 19 cd 01    	vextractf128 xmm13,ymm1,0x1
  ae3716:	c4 e2 7d 18 0d 41 1d 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff591d41]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ae371d:	59 ff 
  ae371f:	c4 41 50 c6 f5 dd    	vshufps xmm14,xmm5,xmm13,0xdd
  ae3725:	c5 7c 28 f9          	vmovaps ymm15,ymm1
  ae3729:	c4 42 35 ac fe       	vfnmadd213ps ymm15,ymm9,ymm14
  ae372e:	62 c1 24 28 58 e7    	vaddps ymm20,ymm11,ymm15
  ae3734:	62 e1 7c 08 10 87 78 	vmovups xmm16,XMMWORD PTR [rdi+0x78]
  ae373b:	00 00 00 
  ae373e:	62 e1 ff 08 10 4f 11 	vmovsd xmm17,QWORD PTR [rdi+0x88]
  ae3745:	62 b3 7d 28 18 c1 01 	vinsertf32x4 ymm0,ymm0,xmm17,0x1
  ae374c:	c4 e3 7d 0c c4 c0    	vblendps ymm0,ymm0,ymm4,0xc0
  ae3752:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ae3758:	62 e1 7c 00 c6 c8 88 	vshufps xmm17,xmm16,xmm0,0x88
  ae375f:	62 e1 ff 08 10 5f 05 	vmovsd xmm19,QWORD PTR [rdi+0x28]
  ae3766:	62 b3 7d 28 18 d3 01 	vinsertf32x4 ymm2,ymm0,xmm19,0x1
  ae376d:	c4 e3 6d 0c d4 c0    	vblendps ymm2,ymm2,ymm4,0xc0
  ae3773:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  ae3779:	62 e1 4c 08 c6 da 88 	vshufps xmm19,xmm6,xmm2,0x88
  ae3780:	62 a1 74 20 5c eb    	vsubps ymm21,ymm17,ymm19
  ae3786:	62 a1 54 20 59 ea    	vmulps ymm21,ymm21,ymm18
  ae378c:	62 f1 7c 00 c6 c0 dd 	vshufps xmm0,xmm16,xmm0,0xdd
  ae3793:	c5 c8 c6 d2 dd       	vshufps xmm2,xmm6,xmm2,0xdd
  ae3798:	c5 fc 58 f2          	vaddps ymm6,ymm0,ymm2
  ae379c:	62 e1 ff 08 10 47 0b 	vmovsd xmm16,QWORD PTR [rdi+0x58]
  ae37a3:	62 b3 7d 28 18 d8 01 	vinsertf32x4 ymm3,ymm0,xmm16,0x1
  ae37aa:	c4 e3 65 0c dc c0    	vblendps ymm3,ymm3,ymm4,0xc0
  ae37b0:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  ae37b6:	62 f1 4c 00 c6 e3 dd 	vshufps xmm4,xmm22,xmm3,0xdd
  ae37bd:	62 e1 7c 28 28 c1    	vmovaps ymm16,ymm1
  ae37c3:	62 e2 4d 28 ac c4    	vfnmadd213ps ymm16,ymm6,ymm4
  ae37c9:	62 a1 54 20 58 f8    	vaddps ymm23,ymm21,ymm16
  ae37cf:	c5 ac 58 ff          	vaddps ymm7,ymm10,ymm7
  ae37d3:	c4 c1 50 c6 ed 88    	vshufps xmm5,xmm5,xmm13,0x88
  ae37d9:	c5 7c 28 d1          	vmovaps ymm10,ymm1
  ae37dd:	c4 62 45 ac d5       	vfnmadd213ps ymm10,ymm7,ymm5
  ae37e2:	c4 41 1c 5c c0       	vsubps ymm8,ymm12,ymm8
  ae37e7:	62 31 3c 28 59 c2    	vmulps ymm8,ymm8,ymm18
  ae37ed:	c4 41 2c 5c e0       	vsubps ymm12,ymm10,ymm8
  ae37f2:	62 31 74 20 58 eb    	vaddps ymm13,ymm17,ymm19
  ae37f8:	62 f1 4c 00 c6 db 88 	vshufps xmm3,xmm22,xmm3,0x88
  ae37ff:	62 e1 7c 28 28 c9    	vmovaps ymm17,ymm1
  ae3805:	62 e2 15 28 ac cb    	vfnmadd213ps ymm17,ymm13,ymm3
  ae380b:	c5 fc 5c c2          	vsubps ymm0,ymm0,ymm2
  ae380f:	62 b1 7c 28 59 c2    	vmulps ymm0,ymm0,ymm18
  ae3815:	62 f1 74 20 5c d0    	vsubps ymm2,ymm17,ymm0
  ae381b:	c4 41 04 5c db       	vsubps ymm11,ymm15,ymm11
  ae3820:	62 31 7c 20 5c fd    	vsubps ymm15,ymm16,ymm21
  ae3826:	c4 41 2c 58 c0       	vaddps ymm8,ymm10,ymm8
  ae382b:	62 f1 74 20 58 c0    	vaddps ymm0,ymm17,ymm0
  ae3831:	c4 41 0c 58 c9       	vaddps ymm9,ymm14,ymm9
  ae3836:	c5 dc 58 e6          	vaddps ymm4,ymm4,ymm6
  ae383a:	c5 d4 58 ef          	vaddps ymm5,ymm5,ymm7
  ae383e:	c5 94 58 db          	vaddps ymm3,ymm13,ymm3
  ae3842:	c4 c1 24 5c f7       	vsubps ymm6,ymm11,ymm15
  ae3847:	c5 bc 5c f8          	vsubps ymm7,ymm8,ymm0
  ae384b:	c5 34 58 d4          	vaddps ymm10,ymm9,ymm4
  ae384f:	c5 54 58 eb          	vaddps ymm13,ymm5,ymm3
  ae3853:	c5 b8 58 c0          	vaddps xmm0,xmm8,xmm0
  ae3857:	c4 e3 15 18 c0 01    	vinsertf128 ymm0,ymm13,xmm0,0x1
  ae385d:	c5 18 5c c2          	vsubps xmm8,xmm12,xmm2
  ae3861:	c4 c3 45 18 f8 01    	vinsertf128 ymm7,ymm7,xmm8,0x1
  ae3867:	c5 98 58 d2          	vaddps xmm2,xmm12,xmm2
  ae386b:	c5 7d 14 c2          	vunpcklpd ymm8,ymm0,ymm2
  ae386f:	c5 d0 5c db          	vsubps xmm3,xmm5,xmm3
  ae3873:	c5 c5 14 eb          	vunpcklpd ymm5,ymm7,ymm3
  ae3877:	c5 3c c6 e5 88       	vshufps ymm12,ymm8,ymm5,0x88
  ae387c:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  ae3882:	c5 bc c6 ed dd       	vshufps ymm5,ymm8,ymm5,0xdd
  ae3887:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ae388c:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  ae3890:	c5 c5 15 d3          	vunpckhpd ymm2,ymm7,ymm3
  ae3894:	c5 fc c6 c2 88       	vshufps ymm0,ymm0,ymm2,0x88
  ae3899:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  ae389e:	c4 c1 20 58 d7       	vaddps xmm2,xmm11,xmm15
  ae38a3:	c4 e3 2d 18 d2 01    	vinsertf128 ymm2,ymm10,xmm2,0x1
  ae38a9:	62 b1 5c 00 5c df    	vsubps xmm3,xmm20,xmm23
  ae38af:	c4 e3 4d 18 db 01    	vinsertf128 ymm3,ymm6,xmm3,0x1
  ae38b5:	62 b1 5c 00 58 f7    	vaddps xmm6,xmm20,xmm23
  ae38bb:	c5 ed 14 fe          	vunpcklpd ymm7,ymm2,ymm6
  ae38bf:	c5 b0 5c e4          	vsubps xmm4,xmm9,xmm4
  ae38c3:	c5 65 14 c4          	vunpcklpd ymm8,ymm3,ymm4
  ae38c7:	c4 41 44 c6 c8 88    	vshufps ymm9,ymm7,ymm8,0x88
  ae38cd:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  ae38d3:	c4 c1 44 c6 f8 dd    	vshufps ymm7,ymm7,ymm8,0xdd
  ae38d9:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  ae38de:	c5 ed 15 d6          	vunpckhpd ymm2,ymm2,ymm6
  ae38e2:	c5 e5 15 dc          	vunpckhpd ymm3,ymm3,ymm4
  ae38e6:	c5 ec c6 d3 88       	vshufps ymm2,ymm2,ymm3,0x88
  ae38eb:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  ae38f0:	c5 fc 10 5a 40       	vmovups ymm3,YMMWORD PTR [rdx+0x40]
  ae38f5:	c5 fc 10 62 60       	vmovups ymm4,YMMWORD PTR [rdx+0x60]
  ae38fa:	c5 fc 10 b2 80 00 00 	vmovups ymm6,YMMWORD PTR [rdx+0x80]
  ae3901:	00 
  ae3902:	c5 7c 10 82 a0 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0xa0]
  ae3909:	00 
  ae390a:	c5 54 59 d3          	vmulps ymm10,ymm5,ymm3
  ae390e:	c4 62 45 bc d4       	vfnmadd231ps ymm10,ymm7,ymm4
  ae3913:	c5 7c 59 de          	vmulps ymm11,ymm0,ymm6
  ae3917:	c4 42 6d bc d8       	vfnmadd231ps ymm11,ymm2,ymm8
  ae391c:	c4 41 2c 58 eb       	vaddps ymm13,ymm10,ymm11
  ae3921:	c5 c4 59 db          	vmulps ymm3,ymm7,ymm3
  ae3925:	c4 e2 55 b8 dc       	vfmadd231ps ymm3,ymm5,ymm4
  ae392a:	c5 ec 59 d6          	vmulps ymm2,ymm2,ymm6
  ae392e:	c4 c2 7d b8 d0       	vfmadd231ps ymm2,ymm0,ymm8
  ae3933:	c5 e4 58 c2          	vaddps ymm0,ymm3,ymm2
  ae3937:	c5 fc 28 e1          	vmovaps ymm4,ymm1
  ae393b:	c4 c2 15 ac e4       	vfnmadd213ps ymm4,ymm13,ymm12
  ae3940:	c5 e4 5c d2          	vsubps ymm2,ymm3,ymm2
  ae3944:	62 b1 6c 28 59 d2    	vmulps ymm2,ymm2,ymm18
  ae394a:	c5 dc 58 da          	vaddps ymm3,ymm4,ymm2
  ae394e:	c4 c2 7d ac c9       	vfnmadd213ps ymm1,ymm0,ymm9
  ae3953:	c4 c1 2c 5c eb       	vsubps ymm5,ymm10,ymm11
  ae3958:	62 b1 54 28 59 ea    	vmulps ymm5,ymm5,ymm18
  ae395e:	c5 f4 5c f5          	vsubps ymm6,ymm1,ymm5
  ae3962:	c5 dc 5c d2          	vsubps ymm2,ymm4,ymm2
  ae3966:	c5 f4 58 cd          	vaddps ymm1,ymm1,ymm5
  ae396a:	c4 c1 1c 58 e5       	vaddps ymm4,ymm12,ymm13
  ae396f:	c5 b4 58 c0          	vaddps ymm0,ymm9,ymm0
  ae3973:	c5 fc 28 2d 65 38 59 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff593865]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  ae397a:	ff 
  ae397b:	c4 e3 7d 19 e7 01    	vextractf128 xmm7,ymm4,0x1
  ae3981:	62 f2 55 28 7f e0    	vpermt2ps ymm4,ymm5,ymm0
  ae3987:	c5 fc 11 26          	vmovups YMMWORD PTR [rsi],ymm4
  ae398b:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ae3991:	c5 c0 14 c0          	vunpcklps xmm0,xmm7,xmm0
  ae3995:	c5 f8 11 46 20       	vmovups XMMWORD PTR [rsi+0x20],xmm0
  ae399a:	c4 e3 7d 19 d8 01    	vextractf128 xmm0,ymm3,0x1
  ae39a0:	62 f2 55 28 7f de    	vpermt2ps ymm3,ymm5,ymm6
  ae39a6:	c5 fc 11 5e 30       	vmovups YMMWORD PTR [rsi+0x30],ymm3
  ae39ab:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  ae39b1:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  ae39b5:	c5 f8 11 46 50       	vmovups XMMWORD PTR [rsi+0x50],xmm0
  ae39ba:	62 f2 6d 28 77 e9    	vpermi2ps ymm5,ymm2,ymm1
  ae39c0:	c5 fc 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm5
  ae39c5:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  ae39cb:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  ae39d1:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  ae39d5:	c5 f8 11 86 80 00 00 	vmovups XMMWORD PTR [rsi+0x80],xmm0
  ae39dc:	00 
  ae39dd:	c5 f8 77             	vzeroupper
  ae39e0:	c3                   	ret
