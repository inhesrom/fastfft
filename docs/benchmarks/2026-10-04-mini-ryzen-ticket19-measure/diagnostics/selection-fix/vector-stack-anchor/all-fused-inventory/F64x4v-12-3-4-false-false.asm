
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b97000 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b97000:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b97004:	c5 fd 10 4f 20       	vmovupd ymm1,YMMWORD PTR [rdi+0x20]
  b97009:	c5 fd 10 57 40       	vmovupd ymm2,YMMWORD PTR [rdi+0x40]
  b9700e:	c5 fd 10 5f 60       	vmovupd ymm3,YMMWORD PTR [rdi+0x60]
  b97013:	c4 e3 7d 06 e1 31    	vperm2f128 ymm4,ymm0,ymm1,0x31
  b97019:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b9701f:	c5 fd 14 cc          	vunpcklpd ymm1,ymm0,ymm4
  b97023:	c5 fd 15 c4          	vunpckhpd ymm0,ymm0,ymm4
  b97027:	c4 e3 6d 06 e3 31    	vperm2f128 ymm4,ymm2,ymm3,0x31
  b9702d:	c4 e3 6d 06 d3 20    	vperm2f128 ymm2,ymm2,ymm3,0x20
  b97033:	c5 ed 14 dc          	vunpcklpd ymm3,ymm2,ymm4
  b97037:	c5 ed 15 d4          	vunpckhpd ymm2,ymm2,ymm4
  b9703b:	c5 fd 10 a7 80 00 00 	vmovupd ymm4,YMMWORD PTR [rdi+0x80]
  b97042:	00 
  b97043:	c5 fd 10 af a0 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0xa0]
  b9704a:	00 
  b9704b:	c4 e3 5d 06 f5 31    	vperm2f128 ymm6,ymm4,ymm5,0x31
  b97051:	c4 e3 5d 06 e5 20    	vperm2f128 ymm4,ymm4,ymm5,0x20
  b97057:	c5 dd 14 ee          	vunpcklpd ymm5,ymm4,ymm6
  b9705b:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  b9705f:	c5 e5 58 f5          	vaddpd ymm6,ymm3,ymm5
  b97063:	c5 f5 58 fe          	vaddpd ymm7,ymm1,ymm6
  b97067:	c5 6d 58 c4          	vaddpd ymm8,ymm2,ymm4
  b9706b:	c4 62 7d 19 0d 24 da 	vbroadcastsd ymm9,QWORD PTR [rip+0xffffffffff4dda24]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b97072:	4d ff 
  b97074:	c5 3d 58 d0          	vaddpd ymm10,ymm8,ymm0
  b97078:	c4 e2 b5 ac f1       	vfnmadd213pd ymm6,ymm9,ymm1
  b9707d:	c4 e2 7d 19 0d 9a db 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff4ddb9a]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b97084:	4d ff 
  b97086:	c5 ed 5c d4          	vsubpd ymm2,ymm2,ymm4
  b9708a:	c5 ed 59 d1          	vmulpd ymm2,ymm2,ymm1
  b9708e:	c5 cd 58 e2          	vaddpd ymm4,ymm6,ymm2
  b97092:	c4 62 bd ac c8       	vfnmadd213pd ymm9,ymm8,ymm0
  b97097:	c5 e5 5c c5          	vsubpd ymm0,ymm3,ymm5
  b9709b:	c5 fd 59 c1          	vmulpd ymm0,ymm0,ymm1
  b9709f:	c5 b5 5c c8          	vsubpd ymm1,ymm9,ymm0
  b970a3:	c5 cd 5c d2          	vsubpd ymm2,ymm6,ymm2
  b970a7:	c5 b5 58 c0          	vaddpd ymm0,ymm9,ymm0
  b970ab:	c4 e3 45 18 da 01    	vinsertf128 ymm3,ymm7,xmm2,0x1
  b970b1:	c4 e3 45 06 d2 31    	vperm2f128 ymm2,ymm7,ymm2,0x31
  b970b7:	c5 f9 28 ec          	vmovapd xmm5,xmm4
  b970bb:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  b970c1:	c5 e5 14 f5          	vunpcklpd ymm6,ymm3,ymm5
  b970c5:	c5 e5 15 dd          	vunpckhpd ymm3,ymm3,ymm5
  b970c9:	c5 ed 14 ec          	vunpcklpd ymm5,ymm2,ymm4
  b970cd:	c5 ed 15 d4          	vunpckhpd ymm2,ymm2,ymm4
  b970d1:	c4 e3 2d 18 e0 01    	vinsertf128 ymm4,ymm10,xmm0,0x1
  b970d7:	c4 e3 2d 06 c0 31    	vperm2f128 ymm0,ymm10,ymm0,0x31
  b970dd:	c5 f9 28 f9          	vmovapd xmm7,xmm1
  b970e1:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b970e7:	c5 5d 14 c7          	vunpcklpd ymm8,ymm4,ymm7
  b970eb:	c5 dd 15 e7          	vunpckhpd ymm4,ymm4,ymm7
  b970ef:	c5 fd 15 f9          	vunpckhpd ymm7,ymm0,ymm1
  b970f3:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b970f7:	c5 fd 10 4a 40       	vmovupd ymm1,YMMWORD PTR [rdx+0x40]
  b970fc:	c5 7d 10 4a 60       	vmovupd ymm9,YMMWORD PTR [rdx+0x60]
  b97101:	c5 7d 10 92 80 00 00 	vmovupd ymm10,YMMWORD PTR [rdx+0x80]
  b97108:	00 
  b97109:	c5 7d 10 9a a0 00 00 	vmovupd ymm11,YMMWORD PTR [rdx+0xa0]
  b97110:	00 
  b97111:	c5 7d 10 a2 c0 00 00 	vmovupd ymm12,YMMWORD PTR [rdx+0xc0]
  b97118:	00 
  b97119:	c5 7d 10 aa e0 00 00 	vmovupd ymm13,YMMWORD PTR [rdx+0xe0]
  b97120:	00 
  b97121:	c5 2d 59 f5          	vmulpd ymm14,ymm10,ymm5
  b97125:	c4 42 fd bc f3       	vfnmadd231pd ymm14,ymm0,ymm11
  b9712a:	c5 0d 58 fe          	vaddpd ymm15,ymm14,ymm6
  b9712e:	62 e1 e5 28 59 c1    	vmulpd ymm16,ymm3,ymm1
  b97134:	62 c2 dd 28 bc c1    	vfnmadd231pd ymm16,ymm4,ymm9
  b9713a:	62 c1 ed 28 59 cc    	vmulpd ymm17,ymm2,ymm12
  b97140:	62 c2 c5 28 bc cd    	vfnmadd231pd ymm17,ymm7,ymm13
  b97146:	62 a1 fd 20 58 d1    	vaddpd ymm18,ymm16,ymm17
  b9714c:	c5 ad 59 c0          	vmulpd ymm0,ymm10,ymm0
  b97150:	c4 c2 d5 b8 c3       	vfmadd231pd ymm0,ymm5,ymm11
  b97155:	c5 bd 58 e8          	vaddpd ymm5,ymm8,ymm0
  b97159:	c5 dd 59 c9          	vmulpd ymm1,ymm4,ymm1
  b9715d:	c4 c2 e5 b8 c9       	vfmadd231pd ymm1,ymm3,ymm9
  b97162:	c5 9d 59 df          	vmulpd ymm3,ymm12,ymm7
  b97166:	c4 c2 ed b8 dd       	vfmadd231pd ymm3,ymm2,ymm13
  b9716b:	c5 f5 58 d3          	vaddpd ymm2,ymm1,ymm3
  b9716f:	c4 c1 4d 5c e6       	vsubpd ymm4,ymm6,ymm14
  b97174:	c5 f5 5c cb          	vsubpd ymm1,ymm1,ymm3
  b97178:	c5 dd 58 d9          	vaddpd ymm3,ymm4,ymm1
  b9717c:	c5 bd 5c c0          	vsubpd ymm0,ymm8,ymm0
  b97180:	62 b1 f5 20 5c f0    	vsubpd ymm6,ymm17,ymm16
  b97186:	c5 fd 58 fe          	vaddpd ymm7,ymm0,ymm6
  b9718a:	62 31 85 28 5c c2    	vsubpd ymm8,ymm15,ymm18
  b97190:	c5 55 5c ca          	vsubpd ymm9,ymm5,ymm2
  b97194:	c5 dd 5c c9          	vsubpd ymm1,ymm4,ymm1
  b97198:	c5 fd 5c c6          	vsubpd ymm0,ymm0,ymm6
  b9719c:	62 b1 85 28 58 e2    	vaddpd ymm4,ymm15,ymm18
  b971a2:	c5 d5 58 d2          	vaddpd ymm2,ymm5,ymm2
  b971a6:	c5 fd 28 2d b2 f9 4d 	vmovapd ymm5,YMMWORD PTR [rip+0xffffffffff4df9b2]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b971ad:	ff 
  b971ae:	c4 e3 7d 19 e6 01    	vextractf128 xmm6,ymm4,0x1
  b971b4:	62 f2 d5 28 7f e2    	vpermt2pd ymm4,ymm5,ymm2
  b971ba:	c5 fd 11 26          	vmovupd YMMWORD PTR [rsi],ymm4
  b971be:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  b971c4:	c5 c9 14 d2          	vunpcklpd xmm2,xmm6,xmm2
  b971c8:	c5 f9 11 56 20       	vmovupd XMMWORD PTR [rsi+0x20],xmm2
  b971cd:	c4 e3 7d 19 da 01    	vextractf128 xmm2,ymm3,0x1
  b971d3:	62 f2 d5 28 7f df    	vpermt2pd ymm3,ymm5,ymm7
  b971d9:	c5 fd 11 5e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm3
  b971de:	c4 e3 7d 19 fb 01    	vextractf128 xmm3,ymm7,0x1
  b971e4:	c5 e9 14 d3          	vunpcklpd xmm2,xmm2,xmm3
  b971e8:	c5 f9 11 56 50       	vmovupd XMMWORD PTR [rsi+0x50],xmm2
  b971ed:	c4 63 7d 19 c2 01    	vextractf128 xmm2,ymm8,0x1
  b971f3:	62 52 d5 28 7f c1    	vpermt2pd ymm8,ymm5,ymm9
  b971f9:	c5 7d 11 46 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm8
  b971fe:	c4 63 7d 19 cb 01    	vextractf128 xmm3,ymm9,0x1
  b97204:	c5 e9 14 d3          	vunpcklpd xmm2,xmm2,xmm3
  b97208:	c5 f9 11 96 80 00 00 	vmovupd XMMWORD PTR [rsi+0x80],xmm2
  b9720f:	00 
  b97210:	62 f2 f5 28 77 e8    	vpermi2pd ymm5,ymm1,ymm0
  b97216:	c5 fd 11 ae 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm5
  b9721d:	00 
  b9721e:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b97224:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b9722a:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b9722e:	c5 f9 11 86 b0 00 00 	vmovupd XMMWORD PTR [rsi+0xb0],xmm0
  b97235:	00 
  b97236:	c5 f8 77             	vzeroupper
  b97239:	c3                   	ret
