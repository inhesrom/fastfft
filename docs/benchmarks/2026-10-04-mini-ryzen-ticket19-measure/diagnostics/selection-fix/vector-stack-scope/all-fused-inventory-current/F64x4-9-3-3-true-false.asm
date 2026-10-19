
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000081f500 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  81f500:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  81f504:	c4 e3 7d 18 47 20 01 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rdi+0x20],0x1
  81f50b:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  81f510:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  81f514:	c5 fd 15 c9          	vunpckhpd ymm1,ymm0,ymm1
  81f518:	c5 fd 10 47 30       	vmovupd ymm0,YMMWORD PTR [rdi+0x30]
  81f51d:	c4 e3 7d 18 47 50 01 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rdi+0x50],0x1
  81f524:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  81f529:	c5 fd 14 e3          	vunpcklpd ymm4,ymm0,ymm3
  81f52d:	c5 fd 15 db          	vunpckhpd ymm3,ymm0,ymm3
  81f531:	c5 fd 10 47 60       	vmovupd ymm0,YMMWORD PTR [rdi+0x60]
  81f536:	c4 e3 7d 18 87 80 00 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rdi+0x80],0x1
  81f53d:	00 00 01 
  81f540:	c5 f9 10 6f 70       	vmovupd xmm5,XMMWORD PTR [rdi+0x70]
  81f545:	c5 fd 14 f5          	vunpcklpd ymm6,ymm0,ymm5
  81f549:	c5 fd 15 ed          	vunpckhpd ymm5,ymm0,ymm5
  81f54d:	c5 e5 58 fd          	vaddpd ymm7,ymm3,ymm5
  81f551:	c5 45 58 c1          	vaddpd ymm8,ymm7,ymm1
  81f555:	c5 5d 58 ce          	vaddpd ymm9,ymm4,ymm6
  81f559:	c5 35 58 d2          	vaddpd ymm10,ymm9,ymm2
  81f55d:	c4 e2 7d 19 05 32 55 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff855532]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  81f564:	85 ff 
  81f566:	c4 e2 fd ac f9       	vfnmadd213pd ymm7,ymm0,ymm1
  81f56b:	c5 dd 5c e6          	vsubpd ymm4,ymm4,ymm6
  81f56f:	c4 e2 7d 19 0d a8 56 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff8556a8]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  81f576:	85 ff 
  81f578:	c5 dd 59 e1          	vmulpd ymm4,ymm4,ymm1
  81f57c:	c5 c5 58 f4          	vaddpd ymm6,ymm7,ymm4
  81f580:	c4 62 fd ac ca       	vfnmadd213pd ymm9,ymm0,ymm2
  81f585:	c5 e5 5c d5          	vsubpd ymm2,ymm3,ymm5
  81f589:	c5 ed 59 d1          	vmulpd ymm2,ymm2,ymm1
  81f58d:	c5 b5 5c da          	vsubpd ymm3,ymm9,ymm2
  81f591:	c5 c5 5c e4          	vsubpd ymm4,ymm7,ymm4
  81f595:	c5 b5 58 ea          	vaddpd ymm5,ymm9,ymm2
  81f599:	c4 e3 3d 18 fc 01    	vinsertf128 ymm7,ymm8,xmm4,0x1
  81f59f:	c4 e3 3d 06 d4 31    	vperm2f128 ymm2,ymm8,ymm4,0x31
  81f5a5:	c5 f9 28 e6          	vmovapd xmm4,xmm6
  81f5a9:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  81f5af:	c5 ed 14 f6          	vunpcklpd ymm6,ymm2,ymm6
  81f5b3:	c5 c5 14 d4          	vunpcklpd ymm2,ymm7,ymm4
  81f5b7:	c5 c5 15 e4          	vunpckhpd ymm4,ymm7,ymm4
  81f5bb:	c4 e3 2d 18 fd 01    	vinsertf128 ymm7,ymm10,xmm5,0x1
  81f5c1:	c4 e3 2d 06 ed 31    	vperm2f128 ymm5,ymm10,ymm5,0x31
  81f5c7:	c5 79 28 c3          	vmovapd xmm8,xmm3
  81f5cb:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  81f5d1:	c5 d5 14 db          	vunpcklpd ymm3,ymm5,ymm3
  81f5d5:	c4 c1 45 14 e8       	vunpcklpd ymm5,ymm7,ymm8
  81f5da:	c4 c1 45 15 f8       	vunpckhpd ymm7,ymm7,ymm8
  81f5df:	c5 7d 10 42 40       	vmovupd ymm8,YMMWORD PTR [rdx+0x40]
  81f5e4:	c5 7d 10 4a 60       	vmovupd ymm9,YMMWORD PTR [rdx+0x60]
  81f5e9:	c5 7d 10 92 80 00 00 	vmovupd ymm10,YMMWORD PTR [rdx+0x80]
  81f5f0:	00 
  81f5f1:	c5 7d 10 9a a0 00 00 	vmovupd ymm11,YMMWORD PTR [rdx+0xa0]
  81f5f8:	00 
  81f5f9:	c5 3d 59 e4          	vmulpd ymm12,ymm8,ymm4
  81f5fd:	c4 42 c5 bc e1       	vfnmadd231pd ymm12,ymm7,ymm9
  81f602:	c5 2d 59 ee          	vmulpd ymm13,ymm10,ymm6
  81f606:	c4 42 e5 bc eb       	vfnmadd231pd ymm13,ymm3,ymm11
  81f60b:	c4 41 1d 58 f5       	vaddpd ymm14,ymm12,ymm13
  81f610:	c5 bd 59 ff          	vmulpd ymm7,ymm8,ymm7
  81f614:	c4 c2 dd b8 f9       	vfmadd231pd ymm7,ymm4,ymm9
  81f619:	c5 ad 59 db          	vmulpd ymm3,ymm10,ymm3
  81f61d:	c4 c2 cd b8 db       	vfmadd231pd ymm3,ymm6,ymm11
  81f622:	c5 c5 58 e3          	vaddpd ymm4,ymm7,ymm3
  81f626:	c5 fd 28 f0          	vmovapd ymm6,ymm0
  81f62a:	c4 e2 8d ac f2       	vfnmadd213pd ymm6,ymm14,ymm2
  81f62f:	c5 c5 5c db          	vsubpd ymm3,ymm7,ymm3
  81f633:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  81f637:	c5 cd 58 fb          	vaddpd ymm7,ymm6,ymm3
  81f63b:	c4 e2 dd ac c5       	vfnmadd213pd ymm0,ymm4,ymm5
  81f640:	c4 41 1d 5c c5       	vsubpd ymm8,ymm12,ymm13
  81f645:	c5 bd 59 c9          	vmulpd ymm1,ymm8,ymm1
  81f649:	c5 7d 5c c1          	vsubpd ymm8,ymm0,ymm1
  81f64d:	c5 cd 5c db          	vsubpd ymm3,ymm6,ymm3
  81f651:	c5 fd 58 c1          	vaddpd ymm0,ymm0,ymm1
  81f655:	c5 d5 58 cc          	vaddpd ymm1,ymm5,ymm4
  81f659:	c5 8d 58 d2          	vaddpd ymm2,ymm14,ymm2
  81f65d:	c4 e3 fd 01 e2 60    	vpermpd ymm4,ymm2,0x60
  81f663:	c4 e3 fd 01 e9 d4    	vpermpd ymm5,ymm1,0xd4
  81f669:	c4 e3 55 0d e4 0a    	vblendpd ymm4,ymm5,ymm4,0xa
  81f66f:	c5 fd 11 26          	vmovupd YMMWORD PTR [rsi],ymm4
  81f673:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  81f679:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  81f67f:	c5 f1 14 ca          	vunpcklpd xmm1,xmm1,xmm2
  81f683:	c5 f9 11 4e 20       	vmovupd XMMWORD PTR [rsi+0x20],xmm1
  81f688:	c4 e3 fd 01 cf 60    	vpermpd ymm1,ymm7,0x60
  81f68e:	c4 c3 fd 01 d0 d4    	vpermpd ymm2,ymm8,0xd4
  81f694:	c4 e3 6d 0d c9 0a    	vblendpd ymm1,ymm2,ymm1,0xa
  81f69a:	c5 fd 11 4e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm1
  81f69f:	c4 e3 7d 19 f9 01    	vextractf128 xmm1,ymm7,0x1
  81f6a5:	c4 63 7d 19 c2 01    	vextractf128 xmm2,ymm8,0x1
  81f6ab:	c5 e9 14 c9          	vunpcklpd xmm1,xmm2,xmm1
  81f6af:	c5 f9 11 4e 50       	vmovupd XMMWORD PTR [rsi+0x50],xmm1
  81f6b4:	c4 e3 fd 01 cb 60    	vpermpd ymm1,ymm3,0x60
  81f6ba:	c4 e3 fd 01 d0 d4    	vpermpd ymm2,ymm0,0xd4
  81f6c0:	c4 e3 6d 0d c9 0a    	vblendpd ymm1,ymm2,ymm1,0xa
  81f6c6:	c5 fd 11 4e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm1
  81f6cb:	c4 e3 7d 19 d9 01    	vextractf128 xmm1,ymm3,0x1
  81f6d1:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  81f6d7:	c5 f9 14 c1          	vunpcklpd xmm0,xmm0,xmm1
  81f6db:	c5 f9 11 86 80 00 00 	vmovupd XMMWORD PTR [rsi+0x80],xmm0
  81f6e2:	00 
  81f6e3:	c5 f8 77             	vzeroupper
  81f6e6:	c3                   	ret
