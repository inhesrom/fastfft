
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b7d1c0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b7d1c0:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b7d1c4:	c5 f9 10 4f 20       	vmovupd xmm1,XMMWORD PTR [rdi+0x20]
  b7d1c9:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7d1cf:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  b7d1d4:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  b7d1d8:	c5 fd 15 c9          	vunpckhpd ymm1,ymm0,ymm1
  b7d1dc:	c5 fd 10 47 30       	vmovupd ymm0,YMMWORD PTR [rdi+0x30]
  b7d1e1:	c5 f9 10 5f 50       	vmovupd xmm3,XMMWORD PTR [rdi+0x50]
  b7d1e6:	c4 e3 7d 06 c3 20    	vperm2f128 ymm0,ymm0,ymm3,0x20
  b7d1ec:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  b7d1f1:	c5 fd 14 e3          	vunpcklpd ymm4,ymm0,ymm3
  b7d1f5:	c5 fd 15 db          	vunpckhpd ymm3,ymm0,ymm3
  b7d1f9:	c5 fd 10 47 60       	vmovupd ymm0,YMMWORD PTR [rdi+0x60]
  b7d1fe:	c5 f9 10 af 80 00 00 	vmovupd xmm5,XMMWORD PTR [rdi+0x80]
  b7d205:	00 
  b7d206:	c4 e3 7d 06 c5 20    	vperm2f128 ymm0,ymm0,ymm5,0x20
  b7d20c:	c5 f9 10 6f 70       	vmovupd xmm5,XMMWORD PTR [rdi+0x70]
  b7d211:	c5 fd 14 f5          	vunpcklpd ymm6,ymm0,ymm5
  b7d215:	c5 fd 15 ed          	vunpckhpd ymm5,ymm0,ymm5
  b7d219:	c5 dd 58 fe          	vaddpd ymm7,ymm4,ymm6
  b7d21d:	c5 6d 58 c7          	vaddpd ymm8,ymm2,ymm7
  b7d221:	c5 65 58 cd          	vaddpd ymm9,ymm3,ymm5
  b7d225:	c5 35 58 d1          	vaddpd ymm10,ymm9,ymm1
  b7d229:	c4 e2 7d 19 05 66 78 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4f7866]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b7d230:	4f ff 
  b7d232:	c4 e2 fd ac fa       	vfnmadd213pd ymm7,ymm0,ymm2
  b7d237:	c5 e5 5c d5          	vsubpd ymm2,ymm3,ymm5
  b7d23b:	c4 e2 7d 19 1d dc 79 	vbroadcastsd ymm3,QWORD PTR [rip+0xffffffffff4f79dc]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b7d242:	4f ff 
  b7d244:	c5 ed 59 d3          	vmulpd ymm2,ymm2,ymm3
  b7d248:	c5 c5 58 ea          	vaddpd ymm5,ymm7,ymm2
  b7d24c:	c4 62 fd ac c9       	vfnmadd213pd ymm9,ymm0,ymm1
  b7d251:	c5 dd 5c ce          	vsubpd ymm1,ymm4,ymm6
  b7d255:	c5 f5 59 cb          	vmulpd ymm1,ymm1,ymm3
  b7d259:	c5 b5 5c e1          	vsubpd ymm4,ymm9,ymm1
  b7d25d:	c5 c5 5c d2          	vsubpd ymm2,ymm7,ymm2
  b7d261:	c5 b5 58 c9          	vaddpd ymm1,ymm9,ymm1
  b7d265:	c4 e3 3d 18 f2 01    	vinsertf128 ymm6,ymm8,xmm2,0x1
  b7d26b:	c4 e3 3d 06 d2 31    	vperm2f128 ymm2,ymm8,ymm2,0x31
  b7d271:	c5 f9 28 fd          	vmovapd xmm7,xmm5
  b7d275:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b7d27b:	c5 ed 14 d5          	vunpcklpd ymm2,ymm2,ymm5
  b7d27f:	c5 cd 14 ef          	vunpcklpd ymm5,ymm6,ymm7
  b7d283:	c5 cd 15 f7          	vunpckhpd ymm6,ymm6,ymm7
  b7d287:	c4 e3 2d 18 f9 01    	vinsertf128 ymm7,ymm10,xmm1,0x1
  b7d28d:	c4 e3 2d 06 c9 31    	vperm2f128 ymm1,ymm10,ymm1,0x31
  b7d293:	c5 79 28 c4          	vmovapd xmm8,xmm4
  b7d297:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  b7d29d:	c5 f5 14 cc          	vunpcklpd ymm1,ymm1,ymm4
  b7d2a1:	c4 c1 45 14 e0       	vunpcklpd ymm4,ymm7,ymm8
  b7d2a6:	c4 c1 45 15 f8       	vunpckhpd ymm7,ymm7,ymm8
  b7d2ab:	c5 7d 10 42 40       	vmovupd ymm8,YMMWORD PTR [rdx+0x40]
  b7d2b0:	c5 7d 10 4a 60       	vmovupd ymm9,YMMWORD PTR [rdx+0x60]
  b7d2b5:	c5 7d 10 92 80 00 00 	vmovupd ymm10,YMMWORD PTR [rdx+0x80]
  b7d2bc:	00 
  b7d2bd:	c5 7d 10 9a a0 00 00 	vmovupd ymm11,YMMWORD PTR [rdx+0xa0]
  b7d2c4:	00 
  b7d2c5:	c5 3d 59 e6          	vmulpd ymm12,ymm8,ymm6
  b7d2c9:	c4 42 c5 bc e1       	vfnmadd231pd ymm12,ymm7,ymm9
  b7d2ce:	c5 2d 59 ea          	vmulpd ymm13,ymm10,ymm2
  b7d2d2:	c4 42 f5 bc eb       	vfnmadd231pd ymm13,ymm1,ymm11
  b7d2d7:	c4 41 1d 58 f5       	vaddpd ymm14,ymm12,ymm13
  b7d2dc:	c5 bd 59 ff          	vmulpd ymm7,ymm8,ymm7
  b7d2e0:	c4 c2 cd b8 f9       	vfmadd231pd ymm7,ymm6,ymm9
  b7d2e5:	c5 ad 59 c9          	vmulpd ymm1,ymm10,ymm1
  b7d2e9:	c4 c2 ed b8 cb       	vfmadd231pd ymm1,ymm2,ymm11
  b7d2ee:	c5 c5 58 d1          	vaddpd ymm2,ymm7,ymm1
  b7d2f2:	c5 fd 28 f0          	vmovapd ymm6,ymm0
  b7d2f6:	c4 e2 8d ac f5       	vfnmadd213pd ymm6,ymm14,ymm5
  b7d2fb:	c5 c5 5c c9          	vsubpd ymm1,ymm7,ymm1
  b7d2ff:	c5 f5 59 cb          	vmulpd ymm1,ymm1,ymm3
  b7d303:	c5 cd 58 f9          	vaddpd ymm7,ymm6,ymm1
  b7d307:	c4 e2 ed ac c4       	vfnmadd213pd ymm0,ymm2,ymm4
  b7d30c:	c4 41 1d 5c c5       	vsubpd ymm8,ymm12,ymm13
  b7d311:	c5 bd 59 db          	vmulpd ymm3,ymm8,ymm3
  b7d315:	c5 7d 5c c3          	vsubpd ymm8,ymm0,ymm3
  b7d319:	c5 cd 5c c9          	vsubpd ymm1,ymm6,ymm1
  b7d31d:	c5 fd 58 c3          	vaddpd ymm0,ymm0,ymm3
  b7d321:	c5 8d 58 dd          	vaddpd ymm3,ymm14,ymm5
  b7d325:	c5 dd 58 d2          	vaddpd ymm2,ymm4,ymm2
  b7d329:	c5 fd 28 25 2f 98 4f 	vmovapd ymm4,YMMWORD PTR [rip+0xffffffffff4f982f]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b7d330:	ff 
  b7d331:	c4 e3 7d 19 dd 01    	vextractf128 xmm5,ymm3,0x1
  b7d337:	62 f2 dd 28 7f da    	vpermt2pd ymm3,ymm4,ymm2
  b7d33d:	c5 fd 11 1e          	vmovupd YMMWORD PTR [rsi],ymm3
  b7d341:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  b7d347:	c5 d1 14 d2          	vunpcklpd xmm2,xmm5,xmm2
  b7d34b:	c5 f9 11 56 20       	vmovupd XMMWORD PTR [rsi+0x20],xmm2
  b7d350:	c4 e3 7d 19 fa 01    	vextractf128 xmm2,ymm7,0x1
  b7d356:	62 d2 dd 28 7f f8    	vpermt2pd ymm7,ymm4,ymm8
  b7d35c:	c5 fd 11 7e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm7
  b7d361:	c4 63 7d 19 c3 01    	vextractf128 xmm3,ymm8,0x1
  b7d367:	c5 e9 14 d3          	vunpcklpd xmm2,xmm2,xmm3
  b7d36b:	c5 f9 11 56 50       	vmovupd XMMWORD PTR [rsi+0x50],xmm2
  b7d370:	62 f2 f5 28 77 e0    	vpermi2pd ymm4,ymm1,ymm0
  b7d376:	c5 fd 11 66 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm4
  b7d37b:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7d381:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7d387:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7d38b:	c5 f9 11 86 80 00 00 	vmovupd XMMWORD PTR [rsi+0x80],xmm0
  b7d392:	00 
  b7d393:	c5 f8 77             	vzeroupper
  b7d396:	c3                   	ret
