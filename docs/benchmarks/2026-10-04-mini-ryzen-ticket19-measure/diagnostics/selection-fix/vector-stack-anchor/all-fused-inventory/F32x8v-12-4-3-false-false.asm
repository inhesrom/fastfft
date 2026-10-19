
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000af2880 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  af2880:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  af2885:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  af288b:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  af288f:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  af2895:	c5 f8 10 17          	vmovups xmm2,XMMWORD PTR [rdi]
  af2899:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  af289e:	c5 f8 10 67 30       	vmovups xmm4,XMMWORD PTR [rdi+0x30]
  af28a3:	c5 f8 10 6f 48       	vmovups xmm5,XMMWORD PTR [rdi+0x48]
  af28a8:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  af28ae:	c5 e8 c6 f0 dd       	vshufps xmm6,xmm2,xmm0,0xdd
  af28b3:	c5 fb 10 7f 40       	vmovsd xmm7,QWORD PTR [rdi+0x40]
  af28b8:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  af28be:	c4 e3 45 0c f9 c0    	vblendps ymm7,ymm7,ymm1,0xc0
  af28c4:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  af28ca:	c5 58 c6 c7 dd       	vshufps xmm8,xmm4,xmm7,0xdd
  af28cf:	c4 41 4c 5c c8       	vsubps ymm9,ymm6,ymm8
  af28d4:	c5 7b 10 57 58       	vmovsd xmm10,QWORD PTR [rdi+0x58]
  af28d9:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  af28df:	c4 63 2d 0c d1 c0    	vblendps ymm10,ymm10,ymm1,0xc0
  af28e5:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  af28eb:	c4 41 50 c6 da 88    	vshufps xmm11,xmm5,xmm10,0x88
  af28f1:	c5 7b 10 67 28       	vmovsd xmm12,QWORD PTR [rdi+0x28]
  af28f6:	c4 43 7d 18 e4 01    	vinsertf128 ymm12,ymm0,xmm12,0x1
  af28fc:	c4 e3 1d 0c c9 c0    	vblendps ymm1,ymm12,ymm1,0xc0
  af2902:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  af2908:	c5 60 c6 e1 88       	vshufps xmm12,xmm3,xmm1,0x88
  af290d:	c4 41 24 5c ec       	vsubps ymm13,ymm11,ymm12
  af2912:	c5 e8 c6 c0 88       	vshufps xmm0,xmm2,xmm0,0x88
  af2917:	c5 d8 c6 d7 88       	vshufps xmm2,xmm4,xmm7,0x88
  af291c:	c5 fc 5c e2          	vsubps ymm4,ymm0,ymm2
  af2920:	c5 e0 c6 c9 dd       	vshufps xmm1,xmm3,xmm1,0xdd
  af2925:	c4 c1 50 c6 da dd    	vshufps xmm3,xmm5,xmm10,0xdd
  af292b:	c5 f4 5c eb          	vsubps ymm5,ymm1,ymm3
  af292f:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  af2933:	c5 f4 58 cb          	vaddps ymm1,ymm1,ymm3
  af2937:	c5 fc 58 c2          	vaddps ymm0,ymm0,ymm2
  af293b:	c4 c1 1c 58 d3       	vaddps ymm2,ymm12,ymm11
  af2940:	c5 f8 58 da          	vaddps xmm3,xmm0,xmm2
  af2944:	c5 d8 58 fd          	vaddps xmm7,xmm4,xmm5
  af2948:	c5 f8 5c c2          	vsubps xmm0,xmm0,xmm2
  af294c:	c5 d8 5c d5          	vsubps xmm2,xmm4,xmm5
  af2950:	c5 e5 15 e0          	vunpckhpd ymm4,ymm3,ymm0
  af2954:	c5 e5 14 c0          	vunpcklpd ymm0,ymm3,ymm0
  af2958:	c5 c5 15 da          	vunpckhpd ymm3,ymm7,ymm2
  af295c:	c5 dc c6 db 88       	vshufps ymm3,ymm4,ymm3,0x88
  af2961:	c5 c5 14 d2          	vunpcklpd ymm2,ymm7,ymm2
  af2965:	c5 fc c6 e2 88       	vshufps ymm4,ymm0,ymm2,0x88
  af296a:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  af296f:	c5 fc c6 c2 dd       	vshufps ymm0,ymm0,ymm2,0xdd
  af2974:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  af2979:	c5 e4 c6 d3 d8       	vshufps ymm2,ymm3,ymm3,0xd8
  af297e:	c5 c8 58 d9          	vaddps xmm3,xmm6,xmm1
  af2982:	c4 c1 10 58 e9       	vaddps xmm5,xmm13,xmm9
  af2987:	c5 c8 5c c9          	vsubps xmm1,xmm6,xmm1
  af298b:	c4 c1 30 5c f5       	vsubps xmm6,xmm9,xmm13
  af2990:	c5 e5 15 f9          	vunpckhpd ymm7,ymm3,ymm1
  af2994:	c5 e5 14 c9          	vunpcklpd ymm1,ymm3,ymm1
  af2998:	c5 d5 15 de          	vunpckhpd ymm3,ymm5,ymm6
  af299c:	c5 c4 c6 db 88       	vshufps ymm3,ymm7,ymm3,0x88
  af29a1:	c5 d5 14 ee          	vunpcklpd ymm5,ymm5,ymm6
  af29a5:	c5 f4 c6 f5 88       	vshufps ymm6,ymm1,ymm5,0x88
  af29aa:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  af29af:	c5 f4 c6 cd dd       	vshufps ymm1,ymm1,ymm5,0xdd
  af29b4:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  af29b9:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  af29be:	c5 fc 10 6a 40       	vmovups ymm5,YMMWORD PTR [rdx+0x40]
  af29c3:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  af29c8:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  af29cf:	00 
  af29d0:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  af29d7:	00 
  af29d8:	c5 7c 59 d5          	vmulps ymm10,ymm0,ymm5
  af29dc:	c4 62 75 bc d7       	vfnmadd231ps ymm10,ymm1,ymm7
  af29e1:	c5 3c 59 da          	vmulps ymm11,ymm8,ymm2
  af29e5:	c4 42 65 bc d9       	vfnmadd231ps ymm11,ymm3,ymm9
  af29ea:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  af29ef:	c5 f4 59 cd          	vmulps ymm1,ymm1,ymm5
  af29f3:	c4 e2 7d b8 cf       	vfmadd231ps ymm1,ymm0,ymm7
  af29f8:	c5 bc 59 c3          	vmulps ymm0,ymm8,ymm3
  af29fc:	c4 c2 6d b8 c1       	vfmadd231ps ymm0,ymm2,ymm9
  af2a01:	c5 f4 58 d0          	vaddps ymm2,ymm1,ymm0
  af2a05:	c4 e2 7d 18 1d 52 2a 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff582a52]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  af2a0c:	58 ff 
  af2a0e:	c5 fc 28 eb          	vmovaps ymm5,ymm3
  af2a12:	c4 e2 1d ac ec       	vfnmadd213ps ymm5,ymm12,ymm4
  af2a17:	c5 f4 5c c0          	vsubps ymm0,ymm1,ymm0
  af2a1b:	c4 e2 7d 18 0d b0 28 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5828b0]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  af2a22:	58 ff 
  af2a24:	c5 fc 59 c1          	vmulps ymm0,ymm0,ymm1
  af2a28:	c4 e2 6d ac de       	vfnmadd213ps ymm3,ymm2,ymm6
  af2a2d:	c4 c1 2c 5c fb       	vsubps ymm7,ymm10,ymm11
  af2a32:	c5 c4 59 c9          	vmulps ymm1,ymm7,ymm1
  af2a36:	c5 e4 5c f9          	vsubps ymm7,ymm3,ymm1
  af2a3a:	c5 e4 58 c9          	vaddps ymm1,ymm3,ymm1
  af2a3e:	c5 cc 58 d2          	vaddps ymm2,ymm6,ymm2
  af2a42:	c5 98 58 dc          	vaddps xmm3,xmm12,xmm4
  af2a46:	c5 fc 28 25 92 47 58 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff584792]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  af2a4d:	ff 
  af2a4e:	62 f2 5d 28 7f da    	vpermt2ps ymm3,ymm4,ymm2
  af2a54:	c5 fc 11 1e          	vmovups YMMWORD PTR [rsi],ymm3
  af2a58:	c5 d0 58 d0          	vaddps xmm2,xmm5,xmm0
  af2a5c:	62 f2 5d 28 7f d7    	vpermt2ps ymm2,ymm4,ymm7
  af2a62:	c5 fc 11 56 20       	vmovups YMMWORD PTR [rsi+0x20],ymm2
  af2a67:	c5 d0 5c c0          	vsubps xmm0,xmm5,xmm0
  af2a6b:	62 f2 5d 28 7f c1    	vpermt2ps ymm0,ymm4,ymm1
  af2a71:	c5 fc 11 46 40       	vmovups YMMWORD PTR [rsi+0x40],ymm0
  af2a76:	c5 f8 77             	vzeroupper
  af2a79:	c3                   	ret
