
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000826340 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  826340:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  826344:	c4 e3 7d 18 47 20 01 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rdi+0x20],0x1
  82634b:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  826350:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  826354:	c5 fd 15 d9          	vunpckhpd ymm3,ymm0,ymm1
  826358:	c5 fd 10 47 30       	vmovupd ymm0,YMMWORD PTR [rdi+0x30]
  82635d:	c4 e3 7d 18 47 50 01 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rdi+0x50],0x1
  826364:	c5 f9 10 4f 40       	vmovupd xmm1,XMMWORD PTR [rdi+0x40]
  826369:	c5 fd 14 e1          	vunpcklpd ymm4,ymm0,ymm1
  82636d:	c5 fd 15 c9          	vunpckhpd ymm1,ymm0,ymm1
  826371:	c5 fd 10 47 60       	vmovupd ymm0,YMMWORD PTR [rdi+0x60]
  826376:	c4 e3 7d 18 87 80 00 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rdi+0x80],0x1
  82637d:	00 00 01 
  826380:	c5 f9 10 6f 70       	vmovupd xmm5,XMMWORD PTR [rdi+0x70]
  826385:	c5 fd 14 f5          	vunpcklpd ymm6,ymm0,ymm5
  826389:	c5 fd 15 ed          	vunpckhpd ymm5,ymm0,ymm5
  82638d:	c5 dd 58 fe          	vaddpd ymm7,ymm4,ymm6
  826391:	c5 45 58 c2          	vaddpd ymm8,ymm7,ymm2
  826395:	c5 75 58 cd          	vaddpd ymm9,ymm1,ymm5
  826399:	c5 35 58 d3          	vaddpd ymm10,ymm9,ymm3
  82639d:	c4 e2 7d 19 05 f2 e6 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff84e6f2]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8263a4:	84 ff 
  8263a6:	c4 e2 fd ac fa       	vfnmadd213pd ymm7,ymm0,ymm2
  8263ab:	c5 f5 5c d5          	vsubpd ymm2,ymm1,ymm5
  8263af:	c4 e2 7d 19 0d 68 e8 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff84e868]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8263b6:	84 ff 
  8263b8:	c5 ed 59 d1          	vmulpd ymm2,ymm2,ymm1
  8263bc:	c5 c5 58 ea          	vaddpd ymm5,ymm7,ymm2
  8263c0:	c4 62 fd ac cb       	vfnmadd213pd ymm9,ymm0,ymm3
  8263c5:	c5 dd 5c de          	vsubpd ymm3,ymm4,ymm6
  8263c9:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  8263cd:	c5 b5 5c e3          	vsubpd ymm4,ymm9,ymm3
  8263d1:	c5 c5 5c d2          	vsubpd ymm2,ymm7,ymm2
  8263d5:	c5 b5 58 db          	vaddpd ymm3,ymm9,ymm3
  8263d9:	c4 e3 3d 18 f2 01    	vinsertf128 ymm6,ymm8,xmm2,0x1
  8263df:	c4 e3 3d 06 d2 31    	vperm2f128 ymm2,ymm8,ymm2,0x31
  8263e5:	c5 f9 28 fd          	vmovapd xmm7,xmm5
  8263e9:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  8263ef:	c5 ed 14 ed          	vunpcklpd ymm5,ymm2,ymm5
  8263f3:	c5 cd 14 d7          	vunpcklpd ymm2,ymm6,ymm7
  8263f7:	c5 cd 15 f7          	vunpckhpd ymm6,ymm6,ymm7
  8263fb:	c4 e3 2d 18 fb 01    	vinsertf128 ymm7,ymm10,xmm3,0x1
  826401:	c4 e3 2d 06 db 31    	vperm2f128 ymm3,ymm10,ymm3,0x31
  826407:	c5 79 28 c4          	vmovapd xmm8,xmm4
  82640b:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  826411:	c5 e5 14 e4          	vunpcklpd ymm4,ymm3,ymm4
  826415:	c4 c1 45 14 d8       	vunpcklpd ymm3,ymm7,ymm8
  82641a:	c4 c1 45 15 f8       	vunpckhpd ymm7,ymm7,ymm8
  82641f:	c5 7d 10 42 40       	vmovupd ymm8,YMMWORD PTR [rdx+0x40]
  826424:	c5 7d 10 4a 60       	vmovupd ymm9,YMMWORD PTR [rdx+0x60]
  826429:	c5 7d 10 92 80 00 00 	vmovupd ymm10,YMMWORD PTR [rdx+0x80]
  826430:	00 
  826431:	c5 7d 10 9a a0 00 00 	vmovupd ymm11,YMMWORD PTR [rdx+0xa0]
  826438:	00 
  826439:	c5 3d 59 e6          	vmulpd ymm12,ymm8,ymm6
  82643d:	c4 42 c5 bc e1       	vfnmadd231pd ymm12,ymm7,ymm9
  826442:	c5 2d 59 ed          	vmulpd ymm13,ymm10,ymm5
  826446:	c4 42 dd bc eb       	vfnmadd231pd ymm13,ymm4,ymm11
  82644b:	c4 41 1d 58 f5       	vaddpd ymm14,ymm12,ymm13
  826450:	c5 bd 59 ff          	vmulpd ymm7,ymm8,ymm7
  826454:	c4 c2 cd b8 f9       	vfmadd231pd ymm7,ymm6,ymm9
  826459:	c5 ad 59 e4          	vmulpd ymm4,ymm10,ymm4
  82645d:	c4 c2 d5 b8 e3       	vfmadd231pd ymm4,ymm5,ymm11
  826462:	c5 c5 58 ec          	vaddpd ymm5,ymm7,ymm4
  826466:	c5 fd 28 f0          	vmovapd ymm6,ymm0
  82646a:	c4 e2 8d ac f2       	vfnmadd213pd ymm6,ymm14,ymm2
  82646f:	c5 c5 5c e4          	vsubpd ymm4,ymm7,ymm4
  826473:	c5 dd 59 e1          	vmulpd ymm4,ymm4,ymm1
  826477:	c5 cd 58 fc          	vaddpd ymm7,ymm6,ymm4
  82647b:	c4 e2 d5 ac c3       	vfnmadd213pd ymm0,ymm5,ymm3
  826480:	c4 41 1d 5c c5       	vsubpd ymm8,ymm12,ymm13
  826485:	c5 bd 59 c9          	vmulpd ymm1,ymm8,ymm1
  826489:	c5 7d 5c c1          	vsubpd ymm8,ymm0,ymm1
  82648d:	c5 cd 5c e4          	vsubpd ymm4,ymm6,ymm4
  826491:	c5 fd 58 c1          	vaddpd ymm0,ymm0,ymm1
  826495:	c5 8d 58 ca          	vaddpd ymm1,ymm14,ymm2
  826499:	c5 e5 58 d5          	vaddpd ymm2,ymm3,ymm5
  82649d:	c4 e3 fd 01 da 60    	vpermpd ymm3,ymm2,0x60
  8264a3:	c4 e3 fd 01 e9 d4    	vpermpd ymm5,ymm1,0xd4
  8264a9:	c4 e3 55 0d db 0a    	vblendpd ymm3,ymm5,ymm3,0xa
  8264af:	c5 fd 11 1e          	vmovupd YMMWORD PTR [rsi],ymm3
  8264b3:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  8264b9:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  8264bf:	c5 f1 14 ca          	vunpcklpd xmm1,xmm1,xmm2
  8264c3:	c5 f9 11 4e 20       	vmovupd XMMWORD PTR [rsi+0x20],xmm1
  8264c8:	c4 c3 fd 01 c8 60    	vpermpd ymm1,ymm8,0x60
  8264ce:	c4 e3 fd 01 d7 d4    	vpermpd ymm2,ymm7,0xd4
  8264d4:	c4 e3 6d 0d c9 0a    	vblendpd ymm1,ymm2,ymm1,0xa
  8264da:	c5 fd 11 4e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm1
  8264df:	c4 63 7d 19 c1 01    	vextractf128 xmm1,ymm8,0x1
  8264e5:	c4 e3 7d 19 fa 01    	vextractf128 xmm2,ymm7,0x1
  8264eb:	c5 e9 14 c9          	vunpcklpd xmm1,xmm2,xmm1
  8264ef:	c5 f9 11 4e 50       	vmovupd XMMWORD PTR [rsi+0x50],xmm1
  8264f4:	c4 e3 fd 01 c8 60    	vpermpd ymm1,ymm0,0x60
  8264fa:	c4 e3 fd 01 d4 d4    	vpermpd ymm2,ymm4,0xd4
  826500:	c4 e3 6d 0d c9 0a    	vblendpd ymm1,ymm2,ymm1,0xa
  826506:	c5 fd 11 4e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm1
  82650b:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  826511:	c4 e3 7d 19 e1 01    	vextractf128 xmm1,ymm4,0x1
  826517:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  82651b:	c5 f9 11 86 80 00 00 	vmovupd XMMWORD PTR [rsi+0x80],xmm0
  826522:	00 
  826523:	c5 f8 77             	vzeroupper
  826526:	c3                   	ret
