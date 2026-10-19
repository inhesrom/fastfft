
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008b6940 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  8b6940:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  8b6944:	c4 e3 7d 18 47 20 01 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rdi+0x20],0x1
  8b694b:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  8b6950:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  8b6954:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  8b6958:	c5 fd 10 4f 30       	vmovupd ymm1,YMMWORD PTR [rdi+0x30]
  8b695d:	c4 e3 75 18 4f 50 01 	vinsertf128 ymm1,ymm1,XMMWORD PTR [rdi+0x50],0x1
  8b6964:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  8b6969:	c5 f5 14 e3          	vunpcklpd ymm4,ymm1,ymm3
  8b696d:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  8b6971:	c5 fd 10 5f 60       	vmovupd ymm3,YMMWORD PTR [rdi+0x60]
  8b6976:	c4 e3 65 18 9f 80 00 	vinsertf128 ymm3,ymm3,XMMWORD PTR [rdi+0x80],0x1
  8b697d:	00 00 01 
  8b6980:	c5 f9 10 6f 70       	vmovupd xmm5,XMMWORD PTR [rdi+0x70]
  8b6985:	c5 e5 14 f5          	vunpcklpd ymm6,ymm3,ymm5
  8b6989:	c5 e5 15 dd          	vunpckhpd ymm3,ymm3,ymm5
  8b698d:	c5 fd 10 af 90 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0x90]
  8b6994:	00 
  8b6995:	c4 e3 55 18 af b0 00 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+0xb0],0x1
  8b699c:	00 00 01 
  8b699f:	c5 f9 10 bf a0 00 00 	vmovupd xmm7,XMMWORD PTR [rdi+0xa0]
  8b69a6:	00 
  8b69a7:	c5 55 14 c7          	vunpcklpd ymm8,ymm5,ymm7
  8b69ab:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  8b69af:	c5 fd 58 fb          	vaddpd ymm7,ymm0,ymm3
  8b69b3:	c5 75 58 cd          	vaddpd ymm9,ymm1,ymm5
  8b69b7:	c5 35 58 d7          	vaddpd ymm10,ymm9,ymm7
  8b69bb:	c5 6d 58 de          	vaddpd ymm11,ymm2,ymm6
  8b69bf:	c5 3d 58 e4          	vaddpd ymm12,ymm8,ymm4
  8b69c3:	c4 41 25 58 ec       	vaddpd ymm13,ymm11,ymm12
  8b69c8:	c5 fd 5c c3          	vsubpd ymm0,ymm0,ymm3
  8b69cc:	c4 c1 5d 5c d8       	vsubpd ymm3,ymm4,ymm8
  8b69d1:	c5 fd 58 e3          	vaddpd ymm4,ymm0,ymm3
  8b69d5:	c5 ed 5c d6          	vsubpd ymm2,ymm2,ymm6
  8b69d9:	c5 d5 5c c9          	vsubpd ymm1,ymm5,ymm1
  8b69dd:	c5 f5 58 ea          	vaddpd ymm5,ymm1,ymm2
  8b69e1:	c4 c1 45 5c f1       	vsubpd ymm6,ymm7,ymm9
  8b69e6:	c4 c1 25 5c fc       	vsubpd ymm7,ymm11,ymm12
  8b69eb:	c5 fd 5c c3          	vsubpd ymm0,ymm0,ymm3
  8b69ef:	c5 ed 5c c9          	vsubpd ymm1,ymm2,ymm1
  8b69f3:	c4 e3 2d 18 d6 01    	vinsertf128 ymm2,ymm10,xmm6,0x1
  8b69f9:	c4 e3 2d 06 de 31    	vperm2f128 ymm3,ymm10,ymm6,0x31
  8b69ff:	c4 e3 5d 18 f0 01    	vinsertf128 ymm6,ymm4,xmm0,0x1
  8b6a05:	c4 e3 5d 06 c0 31    	vperm2f128 ymm0,ymm4,ymm0,0x31
  8b6a0b:	c5 e5 14 d8          	vunpcklpd ymm3,ymm3,ymm0
  8b6a0f:	c5 ed 14 c6          	vunpcklpd ymm0,ymm2,ymm6
  8b6a13:	c5 ed 15 d6          	vunpckhpd ymm2,ymm2,ymm6
  8b6a17:	c4 e3 15 18 e7 01    	vinsertf128 ymm4,ymm13,xmm7,0x1
  8b6a1d:	c4 e3 15 06 f7 31    	vperm2f128 ymm6,ymm13,ymm7,0x31
  8b6a23:	c4 e3 55 18 f9 01    	vinsertf128 ymm7,ymm5,xmm1,0x1
  8b6a29:	c4 e3 55 06 c9 31    	vperm2f128 ymm1,ymm5,ymm1,0x31
  8b6a2f:	c5 cd 14 e9          	vunpcklpd ymm5,ymm6,ymm1
  8b6a33:	c5 dd 14 cf          	vunpcklpd ymm1,ymm4,ymm7
  8b6a37:	c5 dd 15 e7          	vunpckhpd ymm4,ymm4,ymm7
  8b6a3b:	c5 fd 10 72 40       	vmovupd ymm6,YMMWORD PTR [rdx+0x40]
  8b6a40:	c5 fd 10 7a 60       	vmovupd ymm7,YMMWORD PTR [rdx+0x60]
  8b6a45:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  8b6a4c:	00 
  8b6a4d:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  8b6a54:	00 
  8b6a55:	c5 5d 59 d6          	vmulpd ymm10,ymm4,ymm6
  8b6a59:	c4 62 ed b8 d7       	vfmadd231pd ymm10,ymm2,ymm7
  8b6a5e:	c5 3d 59 dd          	vmulpd ymm11,ymm8,ymm5
  8b6a62:	c4 42 e5 b8 d9       	vfmadd231pd ymm11,ymm3,ymm9
  8b6a67:	c4 41 2d 58 e3       	vaddpd ymm12,ymm10,ymm11
  8b6a6c:	c4 62 7d 19 2d 23 e0 	vbroadcastsd ymm13,QWORD PTR [rip+0xffffffffff7be023]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8b6a73:	7b ff 
  8b6a75:	c4 41 7d 28 f5       	vmovapd ymm14,ymm13
  8b6a7a:	c4 62 9d ac f1       	vfnmadd213pd ymm14,ymm12,ymm1
  8b6a7f:	c5 ed 59 d6          	vmulpd ymm2,ymm2,ymm6
  8b6a83:	c4 e2 dd bc d7       	vfnmadd231pd ymm2,ymm4,ymm7
  8b6a88:	c5 bd 59 db          	vmulpd ymm3,ymm8,ymm3
  8b6a8c:	c4 c2 d5 bc d9       	vfnmadd231pd ymm3,ymm5,ymm9
  8b6a91:	c4 e2 7d 19 25 86 e1 	vbroadcastsd ymm4,QWORD PTR [rip+0xffffffffff7be186]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8b6a98:	7b ff 
  8b6a9a:	c5 ed 5c eb          	vsubpd ymm5,ymm2,ymm3
  8b6a9e:	c5 d5 59 ec          	vmulpd ymm5,ymm5,ymm4
  8b6aa2:	c5 8d 58 f5          	vaddpd ymm6,ymm14,ymm5
  8b6aa6:	c5 ed 58 d3          	vaddpd ymm2,ymm2,ymm3
  8b6aaa:	c4 62 ed ac e8       	vfnmadd213pd ymm13,ymm2,ymm0
  8b6aaf:	c4 c1 2d 5c db       	vsubpd ymm3,ymm10,ymm11
  8b6ab4:	c5 e5 59 dc          	vmulpd ymm3,ymm3,ymm4
  8b6ab8:	c5 95 5c e3          	vsubpd ymm4,ymm13,ymm3
  8b6abc:	c5 8d 5c ed          	vsubpd ymm5,ymm14,ymm5
  8b6ac0:	c5 95 58 db          	vaddpd ymm3,ymm13,ymm3
  8b6ac4:	c5 9d 58 c9          	vaddpd ymm1,ymm12,ymm1
  8b6ac8:	c5 fd 58 c2          	vaddpd ymm0,ymm0,ymm2
  8b6acc:	c4 e3 fd 01 d0 e6    	vpermpd ymm2,ymm0,0xe6
  8b6ad2:	c4 e3 fd 01 f9 e6    	vpermpd ymm7,ymm1,0xe6
  8b6ad8:	c5 c5 c6 d2 0c       	vshufpd ymm2,ymm7,ymm2,0xc
  8b6add:	c4 e3 fd 01 c0 60    	vpermpd ymm0,ymm0,0x60
  8b6ae3:	c4 e3 fd 01 c9 d4    	vpermpd ymm1,ymm1,0xd4
  8b6ae9:	c4 e3 75 0d c0 0a    	vblendpd ymm0,ymm1,ymm0,0xa
  8b6aef:	c5 fd 11 06          	vmovupd YMMWORD PTR [rsi],ymm0
  8b6af3:	c5 fd 11 56 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm2
  8b6af8:	c4 e3 fd 01 c3 e6    	vpermpd ymm0,ymm3,0xe6
  8b6afe:	c4 e3 fd 01 cd e6    	vpermpd ymm1,ymm5,0xe6
  8b6b04:	c5 f5 c6 c0 0c       	vshufpd ymm0,ymm1,ymm0,0xc
  8b6b09:	c4 e3 fd 01 cb 60    	vpermpd ymm1,ymm3,0x60
  8b6b0f:	c4 e3 fd 01 d5 d4    	vpermpd ymm2,ymm5,0xd4
  8b6b15:	c4 e3 6d 0d c9 0a    	vblendpd ymm1,ymm2,ymm1,0xa
  8b6b1b:	c5 fd 11 4e 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm1
  8b6b20:	c5 fd 11 46 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm0
  8b6b25:	c4 e3 fd 01 c4 e6    	vpermpd ymm0,ymm4,0xe6
  8b6b2b:	c4 e3 fd 01 ce e6    	vpermpd ymm1,ymm6,0xe6
  8b6b31:	c5 f5 c6 c0 0c       	vshufpd ymm0,ymm1,ymm0,0xc
  8b6b36:	c4 e3 fd 01 cc 60    	vpermpd ymm1,ymm4,0x60
  8b6b3c:	c4 e3 fd 01 d6 d4    	vpermpd ymm2,ymm6,0xd4
  8b6b42:	c4 e3 6d 0d c9 0a    	vblendpd ymm1,ymm2,ymm1,0xa
  8b6b48:	c5 fd 11 8e 80 00 00 	vmovupd YMMWORD PTR [rsi+0x80],ymm1
  8b6b4f:	00 
  8b6b50:	c5 fd 11 86 a0 00 00 	vmovupd YMMWORD PTR [rsi+0xa0],ymm0
  8b6b57:	00 
  8b6b58:	c5 f8 77             	vzeroupper
  8b6b5b:	c3                   	ret
