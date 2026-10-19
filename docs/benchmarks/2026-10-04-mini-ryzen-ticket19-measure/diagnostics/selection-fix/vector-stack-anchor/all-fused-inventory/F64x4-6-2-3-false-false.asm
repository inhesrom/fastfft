
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008252c0 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  8252c0:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  8252c4:	c4 e3 7d 18 47 20 01 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rdi+0x20],0x1
  8252cb:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  8252d0:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  8252d4:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  8252d8:	c5 fd 10 4f 30       	vmovupd ymm1,YMMWORD PTR [rdi+0x30]
  8252dd:	c4 e3 75 18 4f 50 01 	vinsertf128 ymm1,ymm1,XMMWORD PTR [rdi+0x50],0x1
  8252e4:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  8252e9:	c5 f5 14 e3          	vunpcklpd ymm4,ymm1,ymm3
  8252ed:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  8252f1:	c5 ed 58 dc          	vaddpd ymm3,ymm2,ymm4
  8252f5:	c5 fd 58 e9          	vaddpd ymm5,ymm0,ymm1
  8252f9:	c5 ed 5c d4          	vsubpd ymm2,ymm2,ymm4
  8252fd:	c5 fd 5c c9          	vsubpd ymm1,ymm0,ymm1
  825301:	c5 f9 28 e3          	vmovapd xmm4,xmm3
  825305:	c4 e3 7d 19 d8 01    	vextractf128 xmm0,ymm3,0x1
  82530b:	c5 f9 28 da          	vmovapd xmm3,xmm2
  82530f:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  825315:	c5 fd 14 d2          	vunpcklpd ymm2,ymm0,ymm2
  825319:	c5 dd 14 c3          	vunpcklpd ymm0,ymm4,ymm3
  82531d:	c5 dd 15 db          	vunpckhpd ymm3,ymm4,ymm3
  825321:	c5 f9 28 e5          	vmovapd xmm4,xmm5
  825325:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  82532b:	c5 f9 28 f1          	vmovapd xmm6,xmm1
  82532f:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  825335:	c5 d5 14 e9          	vunpcklpd ymm5,ymm5,ymm1
  825339:	c5 dd 14 ce          	vunpcklpd ymm1,ymm4,ymm6
  82533d:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  825341:	c5 fd 10 72 40       	vmovupd ymm6,YMMWORD PTR [rdx+0x40]
  825346:	c5 fd 10 7a 60       	vmovupd ymm7,YMMWORD PTR [rdx+0x60]
  82534b:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  825352:	00 
  825353:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  82535a:	00 
  82535b:	c5 65 59 d6          	vmulpd ymm10,ymm3,ymm6
  82535f:	c4 62 dd bc d7       	vfnmadd231pd ymm10,ymm4,ymm7
  825364:	c5 3d 59 da          	vmulpd ymm11,ymm8,ymm2
  825368:	c4 42 d5 bc d9       	vfnmadd231pd ymm11,ymm5,ymm9
  82536d:	c4 41 2d 58 e3       	vaddpd ymm12,ymm10,ymm11
  825372:	c5 dd 59 e6          	vmulpd ymm4,ymm4,ymm6
  825376:	c4 e2 e5 b8 e7       	vfmadd231pd ymm4,ymm3,ymm7
  82537b:	c5 bd 59 dd          	vmulpd ymm3,ymm8,ymm5
  82537f:	c4 c2 ed b8 d9       	vfmadd231pd ymm3,ymm2,ymm9
  825384:	c4 e2 7d 19 15 0b f7 	vbroadcastsd ymm2,QWORD PTR [rip+0xffffffffff84f70b]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  82538b:	84 ff 
  82538d:	c5 dd 58 eb          	vaddpd ymm5,ymm4,ymm3
  825391:	c5 fd 28 f2          	vmovapd ymm6,ymm2
  825395:	c4 e2 9d ac f0       	vfnmadd213pd ymm6,ymm12,ymm0
  82539a:	c5 dd 5c db          	vsubpd ymm3,ymm4,ymm3
  82539e:	c4 e2 7d 19 25 79 f8 	vbroadcastsd ymm4,QWORD PTR [rip+0xffffffffff84f879]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8253a5:	84 ff 
  8253a7:	c5 e5 59 dc          	vmulpd ymm3,ymm3,ymm4
  8253ab:	c5 cd 58 fb          	vaddpd ymm7,ymm6,ymm3
  8253af:	c4 e2 d5 ac d1       	vfnmadd213pd ymm2,ymm5,ymm1
  8253b4:	c4 41 2d 5c c3       	vsubpd ymm8,ymm10,ymm11
  8253b9:	c5 bd 59 e4          	vmulpd ymm4,ymm8,ymm4
  8253bd:	c5 6d 5c c4          	vsubpd ymm8,ymm2,ymm4
  8253c1:	c5 cd 5c db          	vsubpd ymm3,ymm6,ymm3
  8253c5:	c5 ed 58 d4          	vaddpd ymm2,ymm2,ymm4
  8253c9:	c5 9d 58 c0          	vaddpd ymm0,ymm12,ymm0
  8253cd:	c5 f5 58 cd          	vaddpd ymm1,ymm1,ymm5
  8253d1:	c4 e3 fd 01 c9 60    	vpermpd ymm1,ymm1,0x60
  8253d7:	c4 e3 fd 01 c0 d4    	vpermpd ymm0,ymm0,0xd4
  8253dd:	c4 e3 7d 0d c1 0a    	vblendpd ymm0,ymm0,ymm1,0xa
  8253e3:	c5 fd 11 06          	vmovupd YMMWORD PTR [rsi],ymm0
  8253e7:	c4 c3 fd 01 c0 60    	vpermpd ymm0,ymm8,0x60
  8253ed:	c4 e3 fd 01 cf d4    	vpermpd ymm1,ymm7,0xd4
  8253f3:	c4 e3 75 0d c0 0a    	vblendpd ymm0,ymm1,ymm0,0xa
  8253f9:	c5 fd 11 46 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm0
  8253fe:	c4 e3 fd 01 c2 60    	vpermpd ymm0,ymm2,0x60
  825404:	c4 e3 fd 01 cb d4    	vpermpd ymm1,ymm3,0xd4
  82540a:	c4 e3 75 0d c0 0a    	vblendpd ymm0,ymm1,ymm0,0xa
  825410:	c5 fd 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm0
  825415:	c5 f8 77             	vzeroupper
  825418:	c3                   	ret
