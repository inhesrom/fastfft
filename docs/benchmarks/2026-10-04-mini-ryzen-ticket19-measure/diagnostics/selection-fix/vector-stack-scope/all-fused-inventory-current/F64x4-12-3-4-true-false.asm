
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000818700 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  818700:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  818704:	c5 fd 10 4f 20       	vmovupd ymm1,YMMWORD PTR [rdi+0x20]
  818709:	c5 fd 10 57 40       	vmovupd ymm2,YMMWORD PTR [rdi+0x40]
  81870e:	c5 fd 10 5f 60       	vmovupd ymm3,YMMWORD PTR [rdi+0x60]
  818713:	c4 e3 7d 06 e1 20    	vperm2f128 ymm4,ymm0,ymm1,0x20
  818719:	c4 e3 7d 06 c1 31    	vperm2f128 ymm0,ymm0,ymm1,0x31
  81871f:	c5 dd 14 c8          	vunpcklpd ymm1,ymm4,ymm0
  818723:	c5 dd 15 c0          	vunpckhpd ymm0,ymm4,ymm0
  818727:	c4 e3 6d 06 e3 20    	vperm2f128 ymm4,ymm2,ymm3,0x20
  81872d:	c4 e3 6d 06 d3 31    	vperm2f128 ymm2,ymm2,ymm3,0x31
  818733:	c5 dd 14 da          	vunpcklpd ymm3,ymm4,ymm2
  818737:	c5 dd 15 d2          	vunpckhpd ymm2,ymm4,ymm2
  81873b:	c5 fd 10 a7 80 00 00 	vmovupd ymm4,YMMWORD PTR [rdi+0x80]
  818742:	00 
  818743:	c5 fd 10 af a0 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0xa0]
  81874a:	00 
  81874b:	c4 e3 5d 06 f5 20    	vperm2f128 ymm6,ymm4,ymm5,0x20
  818751:	c4 e3 5d 06 e5 31    	vperm2f128 ymm4,ymm4,ymm5,0x31
  818757:	c5 cd 14 ec          	vunpcklpd ymm5,ymm6,ymm4
  81875b:	c5 cd 15 e4          	vunpckhpd ymm4,ymm6,ymm4
  81875f:	c5 ed 58 f4          	vaddpd ymm6,ymm2,ymm4
  818763:	c5 cd 58 f8          	vaddpd ymm7,ymm6,ymm0
  818767:	c5 65 58 c5          	vaddpd ymm8,ymm3,ymm5
  81876b:	c5 3d 58 c9          	vaddpd ymm9,ymm8,ymm1
  81876f:	c4 62 7d 19 15 20 c3 	vbroadcastsd ymm10,QWORD PTR [rip+0xffffffffff85c320]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  818776:	85 ff 
  818778:	c4 e2 ad ac f0       	vfnmadd213pd ymm6,ymm10,ymm0
  81877d:	c5 e5 5c c5          	vsubpd ymm0,ymm3,ymm5
  818781:	c4 e2 7d 19 1d 96 c4 	vbroadcastsd ymm3,QWORD PTR [rip+0xffffffffff85c496]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  818788:	85 ff 
  81878a:	c5 fd 59 c3          	vmulpd ymm0,ymm0,ymm3
  81878e:	c5 cd 58 e8          	vaddpd ymm5,ymm6,ymm0
  818792:	c4 62 bd ac d1       	vfnmadd213pd ymm10,ymm8,ymm1
  818797:	c5 ed 5c cc          	vsubpd ymm1,ymm2,ymm4
  81879b:	c5 f5 59 cb          	vmulpd ymm1,ymm1,ymm3
  81879f:	c5 ad 5c d1          	vsubpd ymm2,ymm10,ymm1
  8187a3:	c5 cd 5c c0          	vsubpd ymm0,ymm6,ymm0
  8187a7:	c5 ad 58 f1          	vaddpd ymm6,ymm10,ymm1
  8187ab:	c4 e3 45 18 c8 01    	vinsertf128 ymm1,ymm7,xmm0,0x1
  8187b1:	c4 e3 45 06 f8 31    	vperm2f128 ymm7,ymm7,ymm0,0x31
  8187b7:	c5 f9 28 dd          	vmovapd xmm3,xmm5
  8187bb:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  8187c1:	c5 f5 14 c3          	vunpcklpd ymm0,ymm1,ymm3
  8187c5:	c5 f5 15 db          	vunpckhpd ymm3,ymm1,ymm3
  8187c9:	c5 c5 14 e5          	vunpcklpd ymm4,ymm7,ymm5
  8187cd:	c5 c5 15 cd          	vunpckhpd ymm1,ymm7,ymm5
  8187d1:	c4 e3 35 18 ee 01    	vinsertf128 ymm5,ymm9,xmm6,0x1
  8187d7:	c4 e3 35 06 f6 31    	vperm2f128 ymm6,ymm9,ymm6,0x31
  8187dd:	c5 f9 28 fa          	vmovapd xmm7,xmm2
  8187e1:	c4 c3 7d 19 d0 01    	vextractf128 xmm8,ymm2,0x1
  8187e7:	c5 d5 14 d7          	vunpcklpd ymm2,ymm5,ymm7
  8187eb:	c5 d5 15 ff          	vunpckhpd ymm7,ymm5,ymm7
  8187ef:	c4 c1 4d 15 e8       	vunpckhpd ymm5,ymm6,ymm8
  8187f4:	c4 c1 4d 14 f0       	vunpcklpd ymm6,ymm6,ymm8
  8187f9:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  818800:	00 
  818801:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  818808:	00 
  818809:	c5 3d 59 d4          	vmulpd ymm10,ymm8,ymm4
  81880d:	c4 42 cd bc d1       	vfnmadd231pd ymm10,ymm6,ymm9
  818812:	c5 bd 59 f6          	vmulpd ymm6,ymm8,ymm6
  818816:	c5 7d 10 42 40       	vmovupd ymm8,YMMWORD PTR [rdx+0x40]
  81881b:	c4 c2 dd b8 f1       	vfmadd231pd ymm6,ymm4,ymm9
  818820:	c5 fd 10 62 60       	vmovupd ymm4,YMMWORD PTR [rdx+0x60]
  818825:	c5 3d 59 cb          	vmulpd ymm9,ymm8,ymm3
  818829:	c4 62 c5 bc cc       	vfnmadd231pd ymm9,ymm7,ymm4
  81882e:	c5 bd 59 ff          	vmulpd ymm7,ymm8,ymm7
  818832:	c5 7d 10 82 c0 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0xc0]
  818839:	00 
  81883a:	c4 e2 e5 b8 fc       	vfmadd231pd ymm7,ymm3,ymm4
  81883f:	c5 fd 10 9a e0 00 00 	vmovupd ymm3,YMMWORD PTR [rdx+0xe0]
  818846:	00 
  818847:	c5 bd 59 e1          	vmulpd ymm4,ymm8,ymm1
  81884b:	c4 e2 d5 bc e3       	vfnmadd231pd ymm4,ymm5,ymm3
  818850:	c5 bd 59 ed          	vmulpd ymm5,ymm8,ymm5
  818854:	c4 e2 f5 b8 eb       	vfmadd231pd ymm5,ymm1,ymm3
  818859:	c5 ad 58 d8          	vaddpd ymm3,ymm10,ymm0
  81885d:	c5 35 58 c4          	vaddpd ymm8,ymm9,ymm4
  818861:	c4 c1 7d 5c c2       	vsubpd ymm0,ymm0,ymm10
  818866:	c5 45 58 d5          	vaddpd ymm10,ymm7,ymm5
  81886a:	c5 c5 5c cd          	vsubpd ymm1,ymm7,ymm5
  81886e:	c5 cd 58 ea          	vaddpd ymm5,ymm6,ymm2
  818872:	c5 ed 5c d6          	vsubpd ymm2,ymm2,ymm6
  818876:	c5 fd 58 f1          	vaddpd ymm6,ymm0,ymm1
  81887a:	c4 c1 5d 5c e1       	vsubpd ymm4,ymm4,ymm9
  81887f:	c5 ed 58 fc          	vaddpd ymm7,ymm2,ymm4
  818883:	c5 fd 5c c1          	vsubpd ymm0,ymm0,ymm1
  818887:	c4 41 65 5c c8       	vsubpd ymm9,ymm3,ymm8
  81888c:	c5 ed 5c cc          	vsubpd ymm1,ymm2,ymm4
  818890:	c4 c1 55 5c d2       	vsubpd ymm2,ymm5,ymm10
  818895:	c5 ad 58 e5          	vaddpd ymm4,ymm10,ymm5
  818899:	c5 bd 58 db          	vaddpd ymm3,ymm8,ymm3
  81889d:	c4 e3 fd 01 eb 60    	vpermpd ymm5,ymm3,0x60
  8188a3:	c4 63 fd 01 c4 d4    	vpermpd ymm8,ymm4,0xd4
  8188a9:	c4 e3 3d 0d ed 0a    	vblendpd ymm5,ymm8,ymm5,0xa
  8188af:	c5 fd 11 2e          	vmovupd YMMWORD PTR [rsi],ymm5
  8188b3:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  8188b9:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  8188bf:	c5 d9 14 db          	vunpcklpd xmm3,xmm4,xmm3
  8188c3:	c5 f9 11 5e 20       	vmovupd XMMWORD PTR [rsi+0x20],xmm3
  8188c8:	c4 e3 fd 01 de 60    	vpermpd ymm3,ymm6,0x60
  8188ce:	c4 e3 fd 01 e7 d4    	vpermpd ymm4,ymm7,0xd4
  8188d4:	c4 e3 5d 0d db 0a    	vblendpd ymm3,ymm4,ymm3,0xa
  8188da:	c5 fd 11 5e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm3
  8188df:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  8188e5:	c4 e3 7d 19 fc 01    	vextractf128 xmm4,ymm7,0x1
  8188eb:	c5 d9 14 db          	vunpcklpd xmm3,xmm4,xmm3
  8188ef:	c5 f9 11 5e 50       	vmovupd XMMWORD PTR [rsi+0x50],xmm3
  8188f4:	c4 c3 fd 01 d9 60    	vpermpd ymm3,ymm9,0x60
  8188fa:	c4 e3 fd 01 e2 d4    	vpermpd ymm4,ymm2,0xd4
  818900:	c4 e3 5d 0d db 0a    	vblendpd ymm3,ymm4,ymm3,0xa
  818906:	c5 fd 11 5e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm3
  81890b:	c4 63 7d 19 cb 01    	vextractf128 xmm3,ymm9,0x1
  818911:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  818917:	c5 e9 14 d3          	vunpcklpd xmm2,xmm2,xmm3
  81891b:	c5 f9 11 96 80 00 00 	vmovupd XMMWORD PTR [rsi+0x80],xmm2
  818922:	00 
  818923:	c4 e3 fd 01 d0 60    	vpermpd ymm2,ymm0,0x60
  818929:	c4 e3 fd 01 d9 d4    	vpermpd ymm3,ymm1,0xd4
  81892f:	c4 e3 65 0d d2 0a    	vblendpd ymm2,ymm3,ymm2,0xa
  818935:	c5 fd 11 96 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm2
  81893c:	00 
  81893d:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  818943:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  818949:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  81894d:	c5 f9 11 86 b0 00 00 	vmovupd XMMWORD PTR [rsi+0xb0],xmm0
  818954:	00 
  818955:	c5 f8 77             	vzeroupper
  818958:	c3                   	ret
