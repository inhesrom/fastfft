
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008b56c0 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  8b56c0:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  8b56c4:	c4 e3 7d 18 47 20 01 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rdi+0x20],0x1
  8b56cb:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  8b56d0:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  8b56d4:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  8b56d8:	c5 fd 10 4f 30       	vmovupd ymm1,YMMWORD PTR [rdi+0x30]
  8b56dd:	c4 e3 75 18 4f 50 01 	vinsertf128 ymm1,ymm1,XMMWORD PTR [rdi+0x50],0x1
  8b56e4:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  8b56e9:	c5 f5 14 e3          	vunpcklpd ymm4,ymm1,ymm3
  8b56ed:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  8b56f1:	c5 fd 10 5f 60       	vmovupd ymm3,YMMWORD PTR [rdi+0x60]
  8b56f6:	c4 e3 65 18 9f 80 00 	vinsertf128 ymm3,ymm3,XMMWORD PTR [rdi+0x80],0x1
  8b56fd:	00 00 01 
  8b5700:	c5 f9 10 6f 70       	vmovupd xmm5,XMMWORD PTR [rdi+0x70]
  8b5705:	c5 e5 14 f5          	vunpcklpd ymm6,ymm3,ymm5
  8b5709:	c5 e5 15 dd          	vunpckhpd ymm3,ymm3,ymm5
  8b570d:	c5 fd 10 af 90 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0x90]
  8b5714:	00 
  8b5715:	c4 e3 55 18 af b0 00 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+0xb0],0x1
  8b571c:	00 00 01 
  8b571f:	c5 f9 10 bf a0 00 00 	vmovupd xmm7,XMMWORD PTR [rdi+0xa0]
  8b5726:	00 
  8b5727:	c5 55 14 c7          	vunpcklpd ymm8,ymm5,ymm7
  8b572b:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  8b572f:	c5 fd 58 fb          	vaddpd ymm7,ymm0,ymm3
  8b5733:	c5 75 58 cd          	vaddpd ymm9,ymm1,ymm5
  8b5737:	c5 35 58 d7          	vaddpd ymm10,ymm9,ymm7
  8b573b:	c5 6d 58 de          	vaddpd ymm11,ymm2,ymm6
  8b573f:	c5 3d 58 e4          	vaddpd ymm12,ymm8,ymm4
  8b5743:	c4 41 25 58 ec       	vaddpd ymm13,ymm11,ymm12
  8b5748:	c5 fd 5c c3          	vsubpd ymm0,ymm0,ymm3
  8b574c:	c4 c1 5d 5c d8       	vsubpd ymm3,ymm4,ymm8
  8b5751:	c5 fd 58 e3          	vaddpd ymm4,ymm0,ymm3
  8b5755:	c5 ed 5c d6          	vsubpd ymm2,ymm2,ymm6
  8b5759:	c5 d5 5c c9          	vsubpd ymm1,ymm5,ymm1
  8b575d:	c5 f5 58 ea          	vaddpd ymm5,ymm1,ymm2
  8b5761:	c4 c1 45 5c f1       	vsubpd ymm6,ymm7,ymm9
  8b5766:	c4 c1 25 5c fc       	vsubpd ymm7,ymm11,ymm12
  8b576b:	c5 fd 5c c3          	vsubpd ymm0,ymm0,ymm3
  8b576f:	c5 ed 5c c9          	vsubpd ymm1,ymm2,ymm1
  8b5773:	c4 e3 2d 18 d6 01    	vinsertf128 ymm2,ymm10,xmm6,0x1
  8b5779:	c4 e3 2d 06 de 31    	vperm2f128 ymm3,ymm10,ymm6,0x31
  8b577f:	c4 e3 5d 18 f0 01    	vinsertf128 ymm6,ymm4,xmm0,0x1
  8b5785:	c4 e3 5d 06 c0 31    	vperm2f128 ymm0,ymm4,ymm0,0x31
  8b578b:	c5 e5 14 d8          	vunpcklpd ymm3,ymm3,ymm0
  8b578f:	c5 ed 14 c6          	vunpcklpd ymm0,ymm2,ymm6
  8b5793:	c5 ed 15 d6          	vunpckhpd ymm2,ymm2,ymm6
  8b5797:	c4 e3 15 18 e7 01    	vinsertf128 ymm4,ymm13,xmm7,0x1
  8b579d:	c4 e3 15 06 f7 31    	vperm2f128 ymm6,ymm13,ymm7,0x31
  8b57a3:	c4 e3 55 18 f9 01    	vinsertf128 ymm7,ymm5,xmm1,0x1
  8b57a9:	c4 e3 55 06 c9 31    	vperm2f128 ymm1,ymm5,ymm1,0x31
  8b57af:	c5 cd 14 e9          	vunpcklpd ymm5,ymm6,ymm1
  8b57b3:	c5 dd 14 cf          	vunpcklpd ymm1,ymm4,ymm7
  8b57b7:	c5 dd 15 e7          	vunpckhpd ymm4,ymm4,ymm7
  8b57bb:	c5 fd 10 72 40       	vmovupd ymm6,YMMWORD PTR [rdx+0x40]
  8b57c0:	c5 fd 10 7a 60       	vmovupd ymm7,YMMWORD PTR [rdx+0x60]
  8b57c5:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  8b57cc:	00 
  8b57cd:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  8b57d4:	00 
  8b57d5:	c5 5d 59 d6          	vmulpd ymm10,ymm4,ymm6
  8b57d9:	c4 62 ed b8 d7       	vfmadd231pd ymm10,ymm2,ymm7
  8b57de:	c5 3d 59 dd          	vmulpd ymm11,ymm8,ymm5
  8b57e2:	c4 42 e5 b8 d9       	vfmadd231pd ymm11,ymm3,ymm9
  8b57e7:	c4 41 2d 58 e3       	vaddpd ymm12,ymm10,ymm11
  8b57ec:	c4 62 7d 19 2d a3 f2 	vbroadcastsd ymm13,QWORD PTR [rip+0xffffffffff7bf2a3]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8b57f3:	7b ff 
  8b57f5:	c4 41 7d 28 f5       	vmovapd ymm14,ymm13
  8b57fa:	c4 62 9d ac f1       	vfnmadd213pd ymm14,ymm12,ymm1
  8b57ff:	c5 ed 59 d6          	vmulpd ymm2,ymm2,ymm6
  8b5803:	c4 e2 dd bc d7       	vfnmadd231pd ymm2,ymm4,ymm7
  8b5808:	c5 bd 59 db          	vmulpd ymm3,ymm8,ymm3
  8b580c:	c4 c2 d5 bc d9       	vfnmadd231pd ymm3,ymm5,ymm9
  8b5811:	c4 e2 7d 19 25 06 f4 	vbroadcastsd ymm4,QWORD PTR [rip+0xffffffffff7bf406]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8b5818:	7b ff 
  8b581a:	c5 ed 5c eb          	vsubpd ymm5,ymm2,ymm3
  8b581e:	c5 d5 59 ec          	vmulpd ymm5,ymm5,ymm4
  8b5822:	c5 8d 58 f5          	vaddpd ymm6,ymm14,ymm5
  8b5826:	c5 ed 58 d3          	vaddpd ymm2,ymm2,ymm3
  8b582a:	c4 62 ed ac e8       	vfnmadd213pd ymm13,ymm2,ymm0
  8b582f:	c4 c1 2d 5c db       	vsubpd ymm3,ymm10,ymm11
  8b5834:	c5 e5 59 dc          	vmulpd ymm3,ymm3,ymm4
  8b5838:	c5 95 5c e3          	vsubpd ymm4,ymm13,ymm3
  8b583c:	c5 8d 5c ed          	vsubpd ymm5,ymm14,ymm5
  8b5840:	c5 95 58 db          	vaddpd ymm3,ymm13,ymm3
  8b5844:	c5 9d 58 c9          	vaddpd ymm1,ymm12,ymm1
  8b5848:	c5 fd 58 c2          	vaddpd ymm0,ymm0,ymm2
  8b584c:	c4 e3 fd 01 d0 e6    	vpermpd ymm2,ymm0,0xe6
  8b5852:	c4 e3 fd 01 f9 e6    	vpermpd ymm7,ymm1,0xe6
  8b5858:	c5 c5 c6 d2 0c       	vshufpd ymm2,ymm7,ymm2,0xc
  8b585d:	c4 e3 fd 01 c0 60    	vpermpd ymm0,ymm0,0x60
  8b5863:	c4 e3 fd 01 c9 d4    	vpermpd ymm1,ymm1,0xd4
  8b5869:	c4 e3 75 0d c0 0a    	vblendpd ymm0,ymm1,ymm0,0xa
  8b586f:	c5 fd 11 06          	vmovupd YMMWORD PTR [rsi],ymm0
  8b5873:	c5 fd 11 56 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm2
  8b5878:	c4 e3 fd 01 c3 e6    	vpermpd ymm0,ymm3,0xe6
  8b587e:	c4 e3 fd 01 cd e6    	vpermpd ymm1,ymm5,0xe6
  8b5884:	c5 f5 c6 c0 0c       	vshufpd ymm0,ymm1,ymm0,0xc
  8b5889:	c4 e3 fd 01 cb 60    	vpermpd ymm1,ymm3,0x60
  8b588f:	c4 e3 fd 01 d5 d4    	vpermpd ymm2,ymm5,0xd4
  8b5895:	c4 e3 6d 0d c9 0a    	vblendpd ymm1,ymm2,ymm1,0xa
  8b589b:	c5 fd 11 4e 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm1
  8b58a0:	c5 fd 11 46 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm0
  8b58a5:	c4 e3 fd 01 c4 e6    	vpermpd ymm0,ymm4,0xe6
  8b58ab:	c4 e3 fd 01 ce e6    	vpermpd ymm1,ymm6,0xe6
  8b58b1:	c5 f5 c6 c0 0c       	vshufpd ymm0,ymm1,ymm0,0xc
  8b58b6:	c4 e3 fd 01 cc 60    	vpermpd ymm1,ymm4,0x60
  8b58bc:	c4 e3 fd 01 d6 d4    	vpermpd ymm2,ymm6,0xd4
  8b58c2:	c4 e3 6d 0d c9 0a    	vblendpd ymm1,ymm2,ymm1,0xa
  8b58c8:	c5 fd 11 8e 80 00 00 	vmovupd YMMWORD PTR [rsi+0x80],ymm1
  8b58cf:	00 
  8b58d0:	c5 fd 11 86 a0 00 00 	vmovupd YMMWORD PTR [rsi+0xa0],ymm0
  8b58d7:	00 
  8b58d8:	c5 f8 77             	vzeroupper
  8b58db:	c3                   	ret
