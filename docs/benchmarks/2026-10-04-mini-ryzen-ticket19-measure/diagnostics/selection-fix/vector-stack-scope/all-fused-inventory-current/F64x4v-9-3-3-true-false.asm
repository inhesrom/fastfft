
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ba1180 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  ba1180:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  ba1184:	c5 f9 10 4f 20       	vmovupd xmm1,XMMWORD PTR [rdi+0x20]
  ba1189:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  ba118f:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  ba1194:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  ba1198:	c5 fd 15 c9          	vunpckhpd ymm1,ymm0,ymm1
  ba119c:	c5 fd 10 47 30       	vmovupd ymm0,YMMWORD PTR [rdi+0x30]
  ba11a1:	c5 f9 10 5f 50       	vmovupd xmm3,XMMWORD PTR [rdi+0x50]
  ba11a6:	c4 e3 7d 06 c3 20    	vperm2f128 ymm0,ymm0,ymm3,0x20
  ba11ac:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  ba11b1:	c5 fd 14 e3          	vunpcklpd ymm4,ymm0,ymm3
  ba11b5:	c5 fd 15 db          	vunpckhpd ymm3,ymm0,ymm3
  ba11b9:	c5 fd 10 47 60       	vmovupd ymm0,YMMWORD PTR [rdi+0x60]
  ba11be:	c5 f9 10 af 80 00 00 	vmovupd xmm5,XMMWORD PTR [rdi+0x80]
  ba11c5:	00 
  ba11c6:	c4 e3 7d 06 c5 20    	vperm2f128 ymm0,ymm0,ymm5,0x20
  ba11cc:	c5 f9 10 6f 70       	vmovupd xmm5,XMMWORD PTR [rdi+0x70]
  ba11d1:	c5 fd 14 f5          	vunpcklpd ymm6,ymm0,ymm5
  ba11d5:	c5 fd 15 ed          	vunpckhpd ymm5,ymm0,ymm5
  ba11d9:	c5 e5 58 fd          	vaddpd ymm7,ymm3,ymm5
  ba11dd:	c5 75 58 c7          	vaddpd ymm8,ymm1,ymm7
  ba11e1:	c5 5d 58 ce          	vaddpd ymm9,ymm4,ymm6
  ba11e5:	c5 35 58 d2          	vaddpd ymm10,ymm9,ymm2
  ba11e9:	c4 e2 7d 19 05 a6 38 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4d38a6]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  ba11f0:	4d ff 
  ba11f2:	c4 e2 fd ac f9       	vfnmadd213pd ymm7,ymm0,ymm1
  ba11f7:	c5 dd 5c ce          	vsubpd ymm1,ymm4,ymm6
  ba11fb:	c4 e2 7d 19 25 1c 3a 	vbroadcastsd ymm4,QWORD PTR [rip+0xffffffffff4d3a1c]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  ba1202:	4d ff 
  ba1204:	c5 f5 59 cc          	vmulpd ymm1,ymm1,ymm4
  ba1208:	c5 c5 58 f1          	vaddpd ymm6,ymm7,ymm1
  ba120c:	c4 62 fd ac ca       	vfnmadd213pd ymm9,ymm0,ymm2
  ba1211:	c5 e5 5c d5          	vsubpd ymm2,ymm3,ymm5
  ba1215:	c5 ed 59 d4          	vmulpd ymm2,ymm2,ymm4
  ba1219:	c5 b5 5c da          	vsubpd ymm3,ymm9,ymm2
  ba121d:	c5 c5 5c c9          	vsubpd ymm1,ymm7,ymm1
  ba1221:	c5 b5 58 d2          	vaddpd ymm2,ymm9,ymm2
  ba1225:	c4 e3 3d 18 e9 01    	vinsertf128 ymm5,ymm8,xmm1,0x1
  ba122b:	c4 e3 3d 06 c9 31    	vperm2f128 ymm1,ymm8,ymm1,0x31
  ba1231:	c5 f9 28 fe          	vmovapd xmm7,xmm6
  ba1235:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  ba123b:	c5 f5 14 ce          	vunpcklpd ymm1,ymm1,ymm6
  ba123f:	c5 d5 14 f7          	vunpcklpd ymm6,ymm5,ymm7
  ba1243:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  ba1247:	c4 e3 2d 18 fa 01    	vinsertf128 ymm7,ymm10,xmm2,0x1
  ba124d:	c4 e3 2d 06 d2 31    	vperm2f128 ymm2,ymm10,ymm2,0x31
  ba1253:	c5 79 28 c3          	vmovapd xmm8,xmm3
  ba1257:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  ba125d:	c5 ed 14 d3          	vunpcklpd ymm2,ymm2,ymm3
  ba1261:	c4 c1 45 14 d8       	vunpcklpd ymm3,ymm7,ymm8
  ba1266:	c4 c1 45 15 f8       	vunpckhpd ymm7,ymm7,ymm8
  ba126b:	c5 7d 10 42 40       	vmovupd ymm8,YMMWORD PTR [rdx+0x40]
  ba1270:	c5 7d 10 4a 60       	vmovupd ymm9,YMMWORD PTR [rdx+0x60]
  ba1275:	c5 7d 10 92 80 00 00 	vmovupd ymm10,YMMWORD PTR [rdx+0x80]
  ba127c:	00 
  ba127d:	c5 7d 10 9a a0 00 00 	vmovupd ymm11,YMMWORD PTR [rdx+0xa0]
  ba1284:	00 
  ba1285:	c5 3d 59 e5          	vmulpd ymm12,ymm8,ymm5
  ba1289:	c4 42 c5 bc e1       	vfnmadd231pd ymm12,ymm7,ymm9
  ba128e:	c5 2d 59 e9          	vmulpd ymm13,ymm10,ymm1
  ba1292:	c4 42 ed bc eb       	vfnmadd231pd ymm13,ymm2,ymm11
  ba1297:	c4 41 1d 58 f5       	vaddpd ymm14,ymm12,ymm13
  ba129c:	c5 bd 59 ff          	vmulpd ymm7,ymm8,ymm7
  ba12a0:	c4 c2 d5 b8 f9       	vfmadd231pd ymm7,ymm5,ymm9
  ba12a5:	c5 ad 59 d2          	vmulpd ymm2,ymm10,ymm2
  ba12a9:	c4 c2 f5 b8 d3       	vfmadd231pd ymm2,ymm1,ymm11
  ba12ae:	c5 c5 58 ca          	vaddpd ymm1,ymm7,ymm2
  ba12b2:	c5 fd 28 e8          	vmovapd ymm5,ymm0
  ba12b6:	c4 e2 8d ac ee       	vfnmadd213pd ymm5,ymm14,ymm6
  ba12bb:	c5 c5 5c d2          	vsubpd ymm2,ymm7,ymm2
  ba12bf:	c5 ed 59 d4          	vmulpd ymm2,ymm2,ymm4
  ba12c3:	c5 d5 58 fa          	vaddpd ymm7,ymm5,ymm2
  ba12c7:	c4 e2 f5 ac c3       	vfnmadd213pd ymm0,ymm1,ymm3
  ba12cc:	c4 41 1d 5c c5       	vsubpd ymm8,ymm12,ymm13
  ba12d1:	c5 bd 59 e4          	vmulpd ymm4,ymm8,ymm4
  ba12d5:	c5 7d 5c c4          	vsubpd ymm8,ymm0,ymm4
  ba12d9:	c5 d5 5c d2          	vsubpd ymm2,ymm5,ymm2
  ba12dd:	c5 fd 58 c4          	vaddpd ymm0,ymm0,ymm4
  ba12e1:	c5 e5 58 c9          	vaddpd ymm1,ymm3,ymm1
  ba12e5:	c5 8d 58 de          	vaddpd ymm3,ymm14,ymm6
  ba12e9:	c5 fd 28 25 6f 58 4d 	vmovapd ymm4,YMMWORD PTR [rip+0xffffffffff4d586f]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  ba12f0:	ff 
  ba12f1:	c4 e3 7d 19 cd 01    	vextractf128 xmm5,ymm1,0x1
  ba12f7:	62 f2 dd 28 7f cb    	vpermt2pd ymm1,ymm4,ymm3
  ba12fd:	c5 fd 11 0e          	vmovupd YMMWORD PTR [rsi],ymm1
  ba1301:	c4 e3 7d 19 d9 01    	vextractf128 xmm1,ymm3,0x1
  ba1307:	c5 d1 14 c9          	vunpcklpd xmm1,xmm5,xmm1
  ba130b:	c5 f9 11 4e 20       	vmovupd XMMWORD PTR [rsi+0x20],xmm1
  ba1310:	c4 63 7d 19 c1 01    	vextractf128 xmm1,ymm8,0x1
  ba1316:	62 72 dd 28 7f c7    	vpermt2pd ymm8,ymm4,ymm7
  ba131c:	c5 7d 11 46 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm8
  ba1321:	c4 e3 7d 19 fb 01    	vextractf128 xmm3,ymm7,0x1
  ba1327:	c5 f1 14 cb          	vunpcklpd xmm1,xmm1,xmm3
  ba132b:	c5 f9 11 4e 50       	vmovupd XMMWORD PTR [rsi+0x50],xmm1
  ba1330:	62 f2 fd 28 77 e2    	vpermi2pd ymm4,ymm0,ymm2
  ba1336:	c5 fd 11 66 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm4
  ba133b:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  ba1341:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ba1347:	c5 f9 14 c1          	vunpcklpd xmm0,xmm0,xmm1
  ba134b:	c5 f9 11 86 80 00 00 	vmovupd XMMWORD PTR [rsi+0x80],xmm0
  ba1352:	00 
  ba1353:	c5 f8 77             	vzeroupper
  ba1356:	c3                   	ret
