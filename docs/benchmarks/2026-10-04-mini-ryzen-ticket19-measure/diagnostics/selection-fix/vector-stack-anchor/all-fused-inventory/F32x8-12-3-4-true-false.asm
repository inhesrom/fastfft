
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000735800 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  735800:	c5 f8 10 1f          	vmovups xmm3,XMMWORD PTR [rdi]
  735804:	c5 f8 10 67 10       	vmovups xmm4,XMMWORD PTR [rdi+0x10]
  735809:	c5 f8 10 6f 20       	vmovups xmm5,XMMWORD PTR [rdi+0x20]
  73580e:	c5 f8 10 7f 30       	vmovups xmm7,XMMWORD PTR [rdi+0x30]
  735813:	c5 e0 c6 c4 dd       	vshufps xmm0,xmm3,xmm4,0xdd
  735818:	c5 d0 c6 cf dd       	vshufps xmm1,xmm5,xmm7,0xdd
  73581d:	c5 78 10 47 50       	vmovups xmm8,XMMWORD PTR [rdi+0x50]
  735822:	c5 78 10 4f 40       	vmovups xmm9,XMMWORD PTR [rdi+0x40]
  735827:	c4 c1 30 c6 d0 dd    	vshufps xmm2,xmm9,xmm8,0xdd
  73582d:	c5 e0 c6 f4 88       	vshufps xmm6,xmm3,xmm4,0x88
  735832:	c5 d0 c6 df 88       	vshufps xmm3,xmm5,xmm7,0x88
  735837:	c4 c1 30 c6 e8 88    	vshufps xmm5,xmm9,xmm8,0x88
  73583d:	c5 f4 58 e2          	vaddps ymm4,ymm1,ymm2
  735841:	c4 e2 7d 18 3d 16 fc 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff93fc16]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  735848:	93 ff 
  73584a:	c5 64 58 c5          	vaddps ymm8,ymm3,ymm5
  73584e:	c5 38 58 ce          	vaddps xmm9,xmm8,xmm6
  735852:	c4 e2 3d bc f7       	vfnmadd231ps ymm6,ymm8,ymm7
  735857:	c4 e2 5d ac f8       	vfnmadd213ps ymm7,ymm4,ymm0
  73585c:	c4 62 7d 18 05 6f fa 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff93fa6f]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  735863:	93 ff 
  735865:	c5 e4 5c dd          	vsubps ymm3,ymm3,ymm5
  735869:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  73586d:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  735871:	c5 bc 59 e9          	vmulps ymm5,ymm8,ymm1
  735875:	c5 d8 58 c0          	vaddps xmm0,xmm4,xmm0
  735879:	c5 c0 58 cb          	vaddps xmm1,xmm7,xmm3
  73587d:	c5 c0 5c d3          	vsubps xmm2,xmm7,xmm3
  735881:	c5 fd 15 da          	vunpckhpd ymm3,ymm0,ymm2
  735885:	c5 fd 14 d2          	vunpcklpd ymm2,ymm0,ymm2
  735889:	c5 c0 57 ff          	vxorps xmm7,xmm7,xmm7
  73588d:	c4 e3 75 0c e7 cc    	vblendps ymm4,ymm1,ymm7,0xcc
  735893:	c5 f5 73 d9 08       	vpsrldq ymm1,ymm1,0x8
  735898:	c5 ec c6 c4 88       	vshufps ymm0,ymm2,ymm4,0x88
  73589d:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  7358a2:	c5 ec c6 d4 dd       	vshufps ymm2,ymm2,ymm4,0xdd
  7358a7:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  7358ac:	c5 e4 c6 e1 88       	vshufps ymm4,ymm3,ymm1,0x88
  7358b1:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  7358b6:	c5 e4 c6 c9 dd       	vshufps ymm1,ymm3,ymm1,0xdd
  7358bb:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  7358c0:	c5 c8 5c dd          	vsubps xmm3,xmm6,xmm5
  7358c4:	c5 d0 58 ee          	vaddps xmm5,xmm5,xmm6
  7358c8:	c5 b5 15 f5          	vunpckhpd ymm6,ymm9,ymm5
  7358cc:	c5 b5 14 ed          	vunpcklpd ymm5,ymm9,ymm5
  7358d0:	c4 e3 65 0c ff cc    	vblendps ymm7,ymm3,ymm7,0xcc
  7358d6:	c5 bd 73 db 08       	vpsrldq ymm8,ymm3,0x8
  7358db:	c5 d4 c6 df 88       	vshufps ymm3,ymm5,ymm7,0x88
  7358e0:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  7358e5:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  7358ea:	c5 d4 c6 fd d8       	vshufps ymm7,ymm5,ymm5,0xd8
  7358ef:	c4 c1 4c c6 e8 88    	vshufps ymm5,ymm6,ymm8,0x88
  7358f5:	c5 54 c6 cd d8       	vshufps ymm9,ymm5,ymm5,0xd8
  7358fa:	c4 c1 4c c6 e8 dd    	vshufps ymm5,ymm6,ymm8,0xdd
  735900:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  735905:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  73590c:	00 
  73590d:	c5 7c 10 92 a0 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0xa0]
  735914:	00 
  735915:	c5 bc 59 f4          	vmulps ymm6,ymm8,ymm4
  735919:	c4 c2 35 bc f2       	vfnmadd231ps ymm6,ymm9,ymm10
  73591e:	c4 41 3c 59 c1       	vmulps ymm8,ymm8,ymm9
  735923:	c5 7c 10 4a 40       	vmovups ymm9,YMMWORD PTR [rdx+0x40]
  735928:	c4 42 5d b8 c2       	vfmadd231ps ymm8,ymm4,ymm10
  73592d:	c5 fc 10 62 60       	vmovups ymm4,YMMWORD PTR [rdx+0x60]
  735932:	c5 34 59 d2          	vmulps ymm10,ymm9,ymm2
  735936:	c4 62 45 bc d4       	vfnmadd231ps ymm10,ymm7,ymm4
  73593b:	c5 b4 59 ff          	vmulps ymm7,ymm9,ymm7
  73593f:	c5 7c 10 8a c0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xc0]
  735946:	00 
  735947:	c4 e2 6d b8 fc       	vfmadd231ps ymm7,ymm2,ymm4
  73594c:	c5 fc 10 92 e0 00 00 	vmovups ymm2,YMMWORD PTR [rdx+0xe0]
  735953:	00 
  735954:	c5 b4 59 e1          	vmulps ymm4,ymm9,ymm1
  735958:	c4 e2 55 bc e2       	vfnmadd231ps ymm4,ymm5,ymm2
  73595d:	c5 b4 59 ed          	vmulps ymm5,ymm9,ymm5
  735961:	c5 4c 58 c8          	vaddps ymm9,ymm6,ymm0
  735965:	c4 e2 75 b8 ea       	vfmadd231ps ymm5,ymm1,ymm2
  73596a:	c5 ac 58 cc          	vaddps ymm1,ymm10,ymm4
  73596e:	c5 bc 58 d3          	vaddps ymm2,ymm8,ymm3
  735972:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  735976:	c5 c4 58 f5          	vaddps ymm6,ymm7,ymm5
  73597a:	c5 c4 5c ed          	vsubps ymm5,ymm7,ymm5
  73597e:	c4 c1 64 5c d8       	vsubps ymm3,ymm3,ymm8
  735983:	c4 c1 5c 5c e2       	vsubps ymm4,ymm4,ymm10
  735988:	c5 b0 58 f9          	vaddps xmm7,xmm9,xmm1
  73598c:	c5 68 58 c6          	vaddps xmm8,xmm2,xmm6
  735990:	c5 38 14 d7          	vunpcklps xmm10,xmm8,xmm7
  735994:	c5 b8 15 ff          	vunpckhps xmm7,xmm8,xmm7
  735998:	c5 f8 13 7e 10       	vmovlps QWORD PTR [rsi+0x10],xmm7
  73599d:	c5 78 11 16          	vmovups XMMWORD PTR [rsi],xmm10
  7359a1:	c5 f8 58 fd          	vaddps xmm7,xmm0,xmm5
  7359a5:	c5 60 58 c4          	vaddps xmm8,xmm3,xmm4
  7359a9:	c5 38 15 d7          	vunpckhps xmm10,xmm8,xmm7
  7359ad:	c5 b8 14 ff          	vunpcklps xmm7,xmm8,xmm7
  7359b1:	c5 f8 11 7e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm7
  7359b6:	c5 78 13 56 28       	vmovlps QWORD PTR [rsi+0x28],xmm10
  7359bb:	c5 b0 5c c9          	vsubps xmm1,xmm9,xmm1
  7359bf:	c5 e8 5c d6          	vsubps xmm2,xmm2,xmm6
  7359c3:	c5 e8 15 f1          	vunpckhps xmm6,xmm2,xmm1
  7359c7:	c5 e8 14 c9          	vunpcklps xmm1,xmm2,xmm1
  7359cb:	c5 f8 11 4e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm1
  7359d0:	c5 f8 13 76 40       	vmovlps QWORD PTR [rsi+0x40],xmm6
  7359d5:	c5 f8 5c c5          	vsubps xmm0,xmm0,xmm5
  7359d9:	c5 e0 5c cc          	vsubps xmm1,xmm3,xmm4
  7359dd:	c5 f0 15 d0          	vunpckhps xmm2,xmm1,xmm0
  7359e1:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  7359e5:	c5 f8 11 46 48       	vmovups XMMWORD PTR [rsi+0x48],xmm0
  7359ea:	c5 f8 13 56 58       	vmovlps QWORD PTR [rsi+0x58],xmm2
  7359ef:	c5 f8 77             	vzeroupper
  7359f2:	c3                   	ret
