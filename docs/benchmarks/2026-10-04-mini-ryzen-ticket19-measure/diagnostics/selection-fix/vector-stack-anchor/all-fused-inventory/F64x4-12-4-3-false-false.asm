
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008b2800 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  8b2800:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  8b2804:	c4 e3 7d 18 47 20 01 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rdi+0x20],0x1
  8b280b:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  8b2810:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  8b2814:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  8b2818:	c5 fd 10 4f 30       	vmovupd ymm1,YMMWORD PTR [rdi+0x30]
  8b281d:	c4 e3 75 18 4f 50 01 	vinsertf128 ymm1,ymm1,XMMWORD PTR [rdi+0x50],0x1
  8b2824:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  8b2829:	c5 f5 14 e3          	vunpcklpd ymm4,ymm1,ymm3
  8b282d:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  8b2831:	c5 fd 10 5f 60       	vmovupd ymm3,YMMWORD PTR [rdi+0x60]
  8b2836:	c4 e3 65 18 9f 80 00 	vinsertf128 ymm3,ymm3,XMMWORD PTR [rdi+0x80],0x1
  8b283d:	00 00 01 
  8b2840:	c5 f9 10 6f 70       	vmovupd xmm5,XMMWORD PTR [rdi+0x70]
  8b2845:	c5 e5 14 f5          	vunpcklpd ymm6,ymm3,ymm5
  8b2849:	c5 e5 15 dd          	vunpckhpd ymm3,ymm3,ymm5
  8b284d:	c5 fd 10 af 90 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0x90]
  8b2854:	00 
  8b2855:	c4 e3 55 18 af b0 00 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+0xb0],0x1
  8b285c:	00 00 01 
  8b285f:	c5 f9 10 bf a0 00 00 	vmovupd xmm7,XMMWORD PTR [rdi+0xa0]
  8b2866:	00 
  8b2867:	c5 55 14 c7          	vunpcklpd ymm8,ymm5,ymm7
  8b286b:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  8b286f:	c5 ed 58 fe          	vaddpd ymm7,ymm2,ymm6
  8b2873:	c5 3d 58 cc          	vaddpd ymm9,ymm8,ymm4
  8b2877:	c5 35 58 d7          	vaddpd ymm10,ymm9,ymm7
  8b287b:	c5 7d 58 db          	vaddpd ymm11,ymm0,ymm3
  8b287f:	c5 75 58 e5          	vaddpd ymm12,ymm1,ymm5
  8b2883:	c4 41 25 58 ec       	vaddpd ymm13,ymm11,ymm12
  8b2888:	c5 ed 5c d6          	vsubpd ymm2,ymm2,ymm6
  8b288c:	c5 f5 5c cd          	vsubpd ymm1,ymm1,ymm5
  8b2890:	c5 ed 58 e9          	vaddpd ymm5,ymm2,ymm1
  8b2894:	c5 fd 5c c3          	vsubpd ymm0,ymm0,ymm3
  8b2898:	c5 bd 5c dc          	vsubpd ymm3,ymm8,ymm4
  8b289c:	c5 e5 58 e0          	vaddpd ymm4,ymm3,ymm0
  8b28a0:	c4 c1 45 5c f1       	vsubpd ymm6,ymm7,ymm9
  8b28a5:	c4 c1 25 5c fc       	vsubpd ymm7,ymm11,ymm12
  8b28aa:	c5 ed 5c c9          	vsubpd ymm1,ymm2,ymm1
  8b28ae:	c5 fd 5c d3          	vsubpd ymm2,ymm0,ymm3
  8b28b2:	c4 e3 2d 18 de 01    	vinsertf128 ymm3,ymm10,xmm6,0x1
  8b28b8:	c4 e3 2d 06 c6 31    	vperm2f128 ymm0,ymm10,ymm6,0x31
  8b28be:	c4 e3 55 18 f1 01    	vinsertf128 ymm6,ymm5,xmm1,0x1
  8b28c4:	c4 e3 55 06 c9 31    	vperm2f128 ymm1,ymm5,ymm1,0x31
  8b28ca:	c5 fd 14 e9          	vunpcklpd ymm5,ymm0,ymm1
  8b28ce:	c5 e5 14 c6          	vunpcklpd ymm0,ymm3,ymm6
  8b28d2:	c5 e5 15 de          	vunpckhpd ymm3,ymm3,ymm6
  8b28d6:	c4 e3 15 18 f7 01    	vinsertf128 ymm6,ymm13,xmm7,0x1
  8b28dc:	c4 e3 15 06 cf 31    	vperm2f128 ymm1,ymm13,ymm7,0x31
  8b28e2:	c4 e3 5d 18 fa 01    	vinsertf128 ymm7,ymm4,xmm2,0x1
  8b28e8:	c4 e3 5d 06 d2 31    	vperm2f128 ymm2,ymm4,ymm2,0x31
  8b28ee:	c5 f5 14 d2          	vunpcklpd ymm2,ymm1,ymm2
  8b28f2:	c5 cd 14 cf          	vunpcklpd ymm1,ymm6,ymm7
  8b28f6:	c5 cd 15 e7          	vunpckhpd ymm4,ymm6,ymm7
  8b28fa:	c5 fd 10 72 40       	vmovupd ymm6,YMMWORD PTR [rdx+0x40]
  8b28ff:	c5 fd 10 7a 60       	vmovupd ymm7,YMMWORD PTR [rdx+0x60]
  8b2904:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  8b290b:	00 
  8b290c:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  8b2913:	00 
  8b2914:	c5 5d 59 d6          	vmulpd ymm10,ymm4,ymm6
  8b2918:	c4 62 e5 b8 d7       	vfmadd231pd ymm10,ymm3,ymm7
  8b291d:	c5 3d 59 da          	vmulpd ymm11,ymm8,ymm2
  8b2921:	c4 42 d5 b8 d9       	vfmadd231pd ymm11,ymm5,ymm9
  8b2926:	c4 41 2d 58 e3       	vaddpd ymm12,ymm10,ymm11
  8b292b:	c4 62 7d 19 2d 64 21 	vbroadcastsd ymm13,QWORD PTR [rip+0xffffffffff7c2164]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8b2932:	7c ff 
  8b2934:	c4 41 7d 28 f5       	vmovapd ymm14,ymm13
  8b2939:	c4 62 9d ac f1       	vfnmadd213pd ymm14,ymm12,ymm1
  8b293e:	c5 e5 59 de          	vmulpd ymm3,ymm3,ymm6
  8b2942:	c4 e2 dd bc df       	vfnmadd231pd ymm3,ymm4,ymm7
  8b2947:	c5 bd 59 e5          	vmulpd ymm4,ymm8,ymm5
  8b294b:	c4 c2 ed bc e1       	vfnmadd231pd ymm4,ymm2,ymm9
  8b2950:	c4 e2 7d 19 15 c7 22 	vbroadcastsd ymm2,QWORD PTR [rip+0xffffffffff7c22c7]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8b2957:	7c ff 
  8b2959:	c5 e5 5c ec          	vsubpd ymm5,ymm3,ymm4
  8b295d:	c5 d5 59 ea          	vmulpd ymm5,ymm5,ymm2
  8b2961:	c5 8d 58 f5          	vaddpd ymm6,ymm14,ymm5
  8b2965:	c5 e5 58 dc          	vaddpd ymm3,ymm3,ymm4
  8b2969:	c4 62 e5 ac e8       	vfnmadd213pd ymm13,ymm3,ymm0
  8b296e:	c4 c1 2d 5c e3       	vsubpd ymm4,ymm10,ymm11
  8b2973:	c5 dd 59 d2          	vmulpd ymm2,ymm4,ymm2
  8b2977:	c5 95 5c e2          	vsubpd ymm4,ymm13,ymm2
  8b297b:	c5 8d 5c ed          	vsubpd ymm5,ymm14,ymm5
  8b297f:	c5 95 58 d2          	vaddpd ymm2,ymm13,ymm2
  8b2983:	c5 9d 58 c9          	vaddpd ymm1,ymm12,ymm1
  8b2987:	c5 fd 58 c3          	vaddpd ymm0,ymm0,ymm3
  8b298b:	c4 e3 fd 01 d9 e6    	vpermpd ymm3,ymm1,0xe6
  8b2991:	c4 e3 fd 01 f8 e6    	vpermpd ymm7,ymm0,0xe6
  8b2997:	c5 c5 c6 db 0c       	vshufpd ymm3,ymm7,ymm3,0xc
  8b299c:	c4 e3 fd 01 c9 60    	vpermpd ymm1,ymm1,0x60
  8b29a2:	c4 e3 fd 01 c0 d4    	vpermpd ymm0,ymm0,0xd4
  8b29a8:	c4 e3 7d 0d c1 0a    	vblendpd ymm0,ymm0,ymm1,0xa
  8b29ae:	c5 fd 11 06          	vmovupd YMMWORD PTR [rsi],ymm0
  8b29b2:	c5 fd 11 5e 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm3
  8b29b7:	c4 e3 fd 01 c5 e6    	vpermpd ymm0,ymm5,0xe6
  8b29bd:	c4 e3 fd 01 ca e6    	vpermpd ymm1,ymm2,0xe6
  8b29c3:	c5 f5 c6 c0 0c       	vshufpd ymm0,ymm1,ymm0,0xc
  8b29c8:	c4 e3 fd 01 cd 60    	vpermpd ymm1,ymm5,0x60
  8b29ce:	c4 e3 fd 01 d2 d4    	vpermpd ymm2,ymm2,0xd4
  8b29d4:	c4 e3 6d 0d c9 0a    	vblendpd ymm1,ymm2,ymm1,0xa
  8b29da:	c5 fd 11 4e 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm1
  8b29df:	c5 fd 11 46 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm0
  8b29e4:	c4 e3 fd 01 c6 e6    	vpermpd ymm0,ymm6,0xe6
  8b29ea:	c4 e3 fd 01 cc e6    	vpermpd ymm1,ymm4,0xe6
  8b29f0:	c5 f5 c6 c0 0c       	vshufpd ymm0,ymm1,ymm0,0xc
  8b29f5:	c4 e3 fd 01 ce 60    	vpermpd ymm1,ymm6,0x60
  8b29fb:	c4 e3 fd 01 d4 d4    	vpermpd ymm2,ymm4,0xd4
  8b2a01:	c4 e3 6d 0d c9 0a    	vblendpd ymm1,ymm2,ymm1,0xa
  8b2a07:	c5 fd 11 8e 80 00 00 	vmovupd YMMWORD PTR [rsi+0x80],ymm1
  8b2a0e:	00 
  8b2a0f:	c5 fd 11 86 a0 00 00 	vmovupd YMMWORD PTR [rsi+0xa0],ymm0
  8b2a16:	00 
  8b2a17:	c5 f8 77             	vzeroupper
  8b2a1a:	c3                   	ret
