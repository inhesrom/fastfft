
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000834200 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  834200:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  834204:	c5 fd 10 4f 20       	vmovupd ymm1,YMMWORD PTR [rdi+0x20]
  834209:	c5 fd 10 57 40       	vmovupd ymm2,YMMWORD PTR [rdi+0x40]
  83420e:	c5 fd 10 5f 60       	vmovupd ymm3,YMMWORD PTR [rdi+0x60]
  834213:	c4 e3 7d 06 e1 20    	vperm2f128 ymm4,ymm0,ymm1,0x20
  834219:	c4 e3 7d 06 c1 31    	vperm2f128 ymm0,ymm0,ymm1,0x31
  83421f:	c5 dd 14 c8          	vunpcklpd ymm1,ymm4,ymm0
  834223:	c5 dd 15 c0          	vunpckhpd ymm0,ymm4,ymm0
  834227:	c4 e3 6d 06 e3 20    	vperm2f128 ymm4,ymm2,ymm3,0x20
  83422d:	c4 e3 6d 06 d3 31    	vperm2f128 ymm2,ymm2,ymm3,0x31
  834233:	c5 dd 14 da          	vunpcklpd ymm3,ymm4,ymm2
  834237:	c5 dd 15 d2          	vunpckhpd ymm2,ymm4,ymm2
  83423b:	c5 fd 10 a7 80 00 00 	vmovupd ymm4,YMMWORD PTR [rdi+0x80]
  834242:	00 
  834243:	c5 fd 10 af a0 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0xa0]
  83424a:	00 
  83424b:	c4 e3 5d 06 f5 20    	vperm2f128 ymm6,ymm4,ymm5,0x20
  834251:	c4 e3 5d 06 e5 31    	vperm2f128 ymm4,ymm4,ymm5,0x31
  834257:	c5 cd 14 ec          	vunpcklpd ymm5,ymm6,ymm4
  83425b:	c5 cd 15 e4          	vunpckhpd ymm4,ymm6,ymm4
  83425f:	c5 e5 58 f5          	vaddpd ymm6,ymm3,ymm5
  834263:	c5 cd 58 f9          	vaddpd ymm7,ymm6,ymm1
  834267:	c5 6d 58 c4          	vaddpd ymm8,ymm2,ymm4
  83426b:	c5 3d 58 c8          	vaddpd ymm9,ymm8,ymm0
  83426f:	c4 62 7d 19 15 20 08 	vbroadcastsd ymm10,QWORD PTR [rip+0xffffffffff840820]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  834276:	84 ff 
  834278:	c4 e2 ad ac f1       	vfnmadd213pd ymm6,ymm10,ymm1
  83427d:	c5 ed 5c cc          	vsubpd ymm1,ymm2,ymm4
  834281:	c4 e2 7d 19 15 96 09 	vbroadcastsd ymm2,QWORD PTR [rip+0xffffffffff840996]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  834288:	84 ff 
  83428a:	c5 f5 59 ca          	vmulpd ymm1,ymm1,ymm2
  83428e:	c5 cd 58 e1          	vaddpd ymm4,ymm6,ymm1
  834292:	c4 62 bd ac d0       	vfnmadd213pd ymm10,ymm8,ymm0
  834297:	c5 e5 5c c5          	vsubpd ymm0,ymm3,ymm5
  83429b:	c5 fd 59 c2          	vmulpd ymm0,ymm0,ymm2
  83429f:	c5 ad 5c d0          	vsubpd ymm2,ymm10,ymm0
  8342a3:	c5 cd 5c c9          	vsubpd ymm1,ymm6,ymm1
  8342a7:	c5 ad 58 e8          	vaddpd ymm5,ymm10,ymm0
  8342ab:	c4 e3 45 18 d9 01    	vinsertf128 ymm3,ymm7,xmm1,0x1
  8342b1:	c4 e3 45 06 c9 31    	vperm2f128 ymm1,ymm7,ymm1,0x31
  8342b7:	c5 f9 28 f4          	vmovapd xmm6,xmm4
  8342bb:	c4 e3 7d 19 e7 01    	vextractf128 xmm7,ymm4,0x1
  8342c1:	c5 e5 14 c6          	vunpcklpd ymm0,ymm3,ymm6
  8342c5:	c5 e5 15 de          	vunpckhpd ymm3,ymm3,ymm6
  8342c9:	c5 f5 14 e7          	vunpcklpd ymm4,ymm1,ymm7
  8342cd:	c5 f5 15 cf          	vunpckhpd ymm1,ymm1,ymm7
  8342d1:	c4 e3 35 18 f5 01    	vinsertf128 ymm6,ymm9,xmm5,0x1
  8342d7:	c4 e3 35 06 fd 31    	vperm2f128 ymm7,ymm9,ymm5,0x31
  8342dd:	c5 f9 28 ea          	vmovapd xmm5,xmm2
  8342e1:	c4 c3 7d 19 d0 01    	vextractf128 xmm8,ymm2,0x1
  8342e7:	c5 cd 14 d5          	vunpcklpd ymm2,ymm6,ymm5
  8342eb:	c5 cd 15 f5          	vunpckhpd ymm6,ymm6,ymm5
  8342ef:	c4 c1 45 15 e8       	vunpckhpd ymm5,ymm7,ymm8
  8342f4:	c4 c1 45 14 f8       	vunpcklpd ymm7,ymm7,ymm8
  8342f9:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  834300:	00 
  834301:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  834308:	00 
  834309:	c5 3d 59 d4          	vmulpd ymm10,ymm8,ymm4
  83430d:	c4 42 c5 bc d1       	vfnmadd231pd ymm10,ymm7,ymm9
  834312:	c5 bd 59 ff          	vmulpd ymm7,ymm8,ymm7
  834316:	c5 7d 10 42 40       	vmovupd ymm8,YMMWORD PTR [rdx+0x40]
  83431b:	c4 c2 dd b8 f9       	vfmadd231pd ymm7,ymm4,ymm9
  834320:	c5 fd 10 62 60       	vmovupd ymm4,YMMWORD PTR [rdx+0x60]
  834325:	c5 3d 59 cb          	vmulpd ymm9,ymm8,ymm3
  834329:	c4 62 cd bc cc       	vfnmadd231pd ymm9,ymm6,ymm4
  83432e:	c5 bd 59 f6          	vmulpd ymm6,ymm8,ymm6
  834332:	c5 7d 10 82 c0 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0xc0]
  834339:	00 
  83433a:	c4 e2 e5 b8 f4       	vfmadd231pd ymm6,ymm3,ymm4
  83433f:	c5 fd 10 9a e0 00 00 	vmovupd ymm3,YMMWORD PTR [rdx+0xe0]
  834346:	00 
  834347:	c5 bd 59 e1          	vmulpd ymm4,ymm8,ymm1
  83434b:	c4 e2 d5 bc e3       	vfnmadd231pd ymm4,ymm5,ymm3
  834350:	c5 bd 59 ed          	vmulpd ymm5,ymm8,ymm5
  834354:	c4 e2 f5 b8 eb       	vfmadd231pd ymm5,ymm1,ymm3
  834359:	c5 ad 58 c8          	vaddpd ymm1,ymm10,ymm0
  83435d:	c5 b5 58 dc          	vaddpd ymm3,ymm9,ymm4
  834361:	c4 c1 7d 5c c2       	vsubpd ymm0,ymm0,ymm10
  834366:	c5 4d 58 c5          	vaddpd ymm8,ymm6,ymm5
  83436a:	c5 cd 5c ed          	vsubpd ymm5,ymm6,ymm5
  83436e:	c5 c5 58 f2          	vaddpd ymm6,ymm7,ymm2
  834372:	c5 ed 5c d7          	vsubpd ymm2,ymm2,ymm7
  834376:	c5 fd 58 fd          	vaddpd ymm7,ymm0,ymm5
  83437a:	c4 c1 5d 5c e1       	vsubpd ymm4,ymm4,ymm9
  83437f:	c5 6d 58 cc          	vaddpd ymm9,ymm2,ymm4
  834383:	c5 fd 5c c5          	vsubpd ymm0,ymm0,ymm5
  834387:	c5 f5 5c eb          	vsubpd ymm5,ymm1,ymm3
  83438b:	c5 ed 5c d4          	vsubpd ymm2,ymm2,ymm4
  83438f:	c4 c1 4d 5c e0       	vsubpd ymm4,ymm6,ymm8
  834394:	c5 f5 58 cb          	vaddpd ymm1,ymm1,ymm3
  834398:	c5 bd 58 de          	vaddpd ymm3,ymm8,ymm6
  83439c:	c4 e3 fd 01 f3 60    	vpermpd ymm6,ymm3,0x60
  8343a2:	c4 63 fd 01 c1 d4    	vpermpd ymm8,ymm1,0xd4
  8343a8:	c4 e3 3d 0d f6 0a    	vblendpd ymm6,ymm8,ymm6,0xa
  8343ae:	c5 fd 11 36          	vmovupd YMMWORD PTR [rsi],ymm6
  8343b2:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  8343b8:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  8343be:	c5 f1 14 cb          	vunpcklpd xmm1,xmm1,xmm3
  8343c2:	c5 f9 11 4e 20       	vmovupd XMMWORD PTR [rsi+0x20],xmm1
  8343c7:	c4 c3 fd 01 c9 60    	vpermpd ymm1,ymm9,0x60
  8343cd:	c4 e3 fd 01 df d4    	vpermpd ymm3,ymm7,0xd4
  8343d3:	c4 e3 65 0d c9 0a    	vblendpd ymm1,ymm3,ymm1,0xa
  8343d9:	c5 fd 11 4e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm1
  8343de:	c4 63 7d 19 c9 01    	vextractf128 xmm1,ymm9,0x1
  8343e4:	c4 e3 7d 19 fb 01    	vextractf128 xmm3,ymm7,0x1
  8343ea:	c5 e1 14 c9          	vunpcklpd xmm1,xmm3,xmm1
  8343ee:	c5 f9 11 4e 50       	vmovupd XMMWORD PTR [rsi+0x50],xmm1
  8343f3:	c4 e3 fd 01 cc 60    	vpermpd ymm1,ymm4,0x60
  8343f9:	c4 e3 fd 01 dd d4    	vpermpd ymm3,ymm5,0xd4
  8343ff:	c4 e3 65 0d c9 0a    	vblendpd ymm1,ymm3,ymm1,0xa
  834405:	c5 fd 11 4e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm1
  83440a:	c4 e3 7d 19 e1 01    	vextractf128 xmm1,ymm4,0x1
  834410:	c4 e3 7d 19 eb 01    	vextractf128 xmm3,ymm5,0x1
  834416:	c5 e1 14 c9          	vunpcklpd xmm1,xmm3,xmm1
  83441a:	c5 f9 11 8e 80 00 00 	vmovupd XMMWORD PTR [rsi+0x80],xmm1
  834421:	00 
  834422:	c4 e3 fd 01 ca 60    	vpermpd ymm1,ymm2,0x60
  834428:	c4 e3 fd 01 d8 d4    	vpermpd ymm3,ymm0,0xd4
  83442e:	c4 e3 65 0d c9 0a    	vblendpd ymm1,ymm3,ymm1,0xa
  834434:	c5 fd 11 8e 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm1
  83443b:	00 
  83443c:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  834442:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  834448:	c5 f9 14 c1          	vunpcklpd xmm0,xmm0,xmm1
  83444c:	c5 f9 11 86 b0 00 00 	vmovupd XMMWORD PTR [rsi+0xb0],xmm0
  834453:	00 
  834454:	c5 f8 77             	vzeroupper
  834457:	c3                   	ret
