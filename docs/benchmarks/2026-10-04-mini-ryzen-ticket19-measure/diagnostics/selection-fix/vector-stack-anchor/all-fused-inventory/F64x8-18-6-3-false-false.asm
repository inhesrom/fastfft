
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000908080 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  908080:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  908085:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  90808c:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  908090:	c5 fd 10 57 30       	vmovupd ymm2,YMMWORD PTR [rdi+0x30]
  908095:	c5 fd 10 77 60       	vmovupd ymm6,YMMWORD PTR [rdi+0x60]
  90809a:	c5 7d 10 87 90 00 00 	vmovupd ymm8,YMMWORD PTR [rdi+0x90]
  9080a1:	00 
  9080a2:	62 f3 75 48 18 d8 02 	vinsertf32x4 zmm3,zmm1,xmm0,0x2
  9080a9:	62 f1 fd 48 28 2d cd 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff7769cd]        # 7ea80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xbf30>
  9080b0:	69 77 ff 
  9080b3:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  9080b7:	62 f1 fd 48 28 e3    	vmovapd zmm4,zmm3
  9080bd:	62 f2 d5 48 7f e0    	vpermt2pd zmm4,zmm5,zmm0
  9080c3:	62 f1 fd 48 28 0d f3 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff7769f3]        # 7eac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xbf70>
  9080ca:	69 77 ff 
  9080cd:	62 f2 f5 48 7f d8    	vpermt2pd zmm3,zmm1,zmm0
  9080d3:	c5 fb 12 7f 58       	vmovddup xmm7,QWORD PTR [rdi+0x58]
  9080d8:	c4 e3 41 0d 7f 50 01 	vblendpd xmm7,xmm7,XMMWORD PTR [rdi+0x50],0x1
  9080df:	62 73 6d 48 18 cf 02 	vinsertf32x4 zmm9,zmm2,xmm7,0x2
  9080e6:	62 d1 fd 48 28 f9    	vmovapd zmm7,zmm9
  9080ec:	62 f2 d5 48 7f f8    	vpermt2pd zmm7,zmm5,zmm0
  9080f2:	62 72 f5 48 7f c8    	vpermt2pd zmm9,zmm1,zmm0
  9080f8:	c5 fb 12 97 88 00 00 	vmovddup xmm2,QWORD PTR [rdi+0x88]
  9080ff:	00 
  908100:	c4 e3 69 0d 97 80 00 	vblendpd xmm2,xmm2,XMMWORD PTR [rdi+0x80],0x1
  908107:	00 00 01 
  90810a:	62 73 4d 48 18 d2 02 	vinsertf32x4 zmm10,zmm6,xmm2,0x2
  908111:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  908117:	62 72 d5 48 7f d8    	vpermt2pd zmm11,zmm5,zmm0
  90811d:	62 72 f5 48 7f d0    	vpermt2pd zmm10,zmm1,zmm0
  908123:	c5 fb 12 97 b8 00 00 	vmovddup xmm2,QWORD PTR [rdi+0xb8]
  90812a:	00 
  90812b:	c4 e3 69 0d 97 b0 00 	vblendpd xmm2,xmm2,XMMWORD PTR [rdi+0xb0],0x1
  908132:	00 00 01 
  908135:	62 73 3d 48 18 c2 02 	vinsertf32x4 zmm8,zmm8,xmm2,0x2
  90813c:	62 51 fd 48 28 e0    	vmovapd zmm12,zmm8
  908142:	62 72 d5 48 7f e0    	vpermt2pd zmm12,zmm5,zmm0
  908148:	62 72 f5 48 7f c0    	vpermt2pd zmm8,zmm1,zmm0
  90814e:	c5 fb 12 97 e8 00 00 	vmovddup xmm2,QWORD PTR [rdi+0xe8]
  908155:	00 
  908156:	c4 e3 69 0d 97 e0 00 	vblendpd xmm2,xmm2,XMMWORD PTR [rdi+0xe0],0x1
  90815d:	00 00 01 
  908160:	c5 fd 10 b7 c0 00 00 	vmovupd ymm6,YMMWORD PTR [rdi+0xc0]
  908167:	00 
  908168:	62 73 4d 48 18 ea 02 	vinsertf32x4 zmm13,zmm6,xmm2,0x2
  90816f:	62 51 fd 48 28 f5    	vmovapd zmm14,zmm13
  908175:	62 72 d5 48 7f f0    	vpermt2pd zmm14,zmm5,zmm0
  90817b:	62 72 f5 48 7f e8    	vpermt2pd zmm13,zmm1,zmm0
  908181:	c5 fd 10 97 f0 00 00 	vmovupd ymm2,YMMWORD PTR [rdi+0xf0]
  908188:	00 
  908189:	c5 fb 12 b7 18 01 00 	vmovddup xmm6,QWORD PTR [rdi+0x118]
  908190:	00 
  908191:	c4 e3 49 0d b7 10 01 	vblendpd xmm6,xmm6,XMMWORD PTR [rdi+0x110],0x1
  908198:	00 00 01 
  90819b:	62 73 6d 48 18 fe 02 	vinsertf32x4 zmm15,zmm2,xmm6,0x2
  9081a2:	62 f2 85 48 77 e8    	vpermi2pd zmm5,zmm15,zmm0
  9081a8:	62 72 f5 48 7f f8    	vpermt2pd zmm15,zmm1,zmm0
  9081ae:	62 d1 a5 48 58 d6    	vaddpd zmm2,zmm11,zmm14
  9081b4:	62 e1 dd 48 58 c2    	vaddpd zmm16,zmm4,zmm2
  9081ba:	62 e1 d5 48 58 cf    	vaddpd zmm17,zmm5,zmm7
  9081c0:	62 a1 9d 48 58 d1    	vaddpd zmm18,zmm12,zmm17
  9081c6:	62 a1 fd 40 58 da    	vaddpd zmm19,zmm16,zmm18
  9081cc:	62 c1 ad 48 58 e5    	vaddpd zmm20,zmm10,zmm13
  9081d2:	62 a1 e5 48 58 ec    	vaddpd zmm21,zmm3,zmm20
  9081d8:	62 c1 85 48 58 f1    	vaddpd zmm22,zmm15,zmm9
  9081de:	62 a1 bd 48 58 fe    	vaddpd zmm23,zmm8,zmm22
  9081e4:	62 f2 fd 48 19 0d aa 	vbroadcastsd zmm1,QWORD PTR [rip+0xffffffffff76c8aa]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  9081eb:	c8 76 ff 
  9081ee:	62 b1 d5 40 58 f7    	vaddpd zmm6,zmm21,zmm23
  9081f4:	62 f2 f5 48 bc e2    	vfnmadd231pd zmm4,zmm1,zmm2
  9081fa:	62 f2 fd 48 19 15 1c 	vbroadcastsd zmm2,QWORD PTR [rip+0xffffffffff76ca1c]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  908201:	ca 76 ff 
  908204:	62 51 ad 48 5c d5    	vsubpd zmm10,zmm10,zmm13
  90820a:	62 71 ad 48 59 d2    	vmulpd zmm10,zmm10,zmm2
  908210:	62 51 dd 48 58 ea    	vaddpd zmm13,zmm4,zmm10
  908216:	62 32 f5 48 bc e1    	vfnmadd231pd zmm12,zmm1,zmm17
  90821c:	62 51 85 48 5c c9    	vsubpd zmm9,zmm15,zmm9
  908222:	62 71 b5 48 59 ca    	vmulpd zmm9,zmm9,zmm2
  908228:	62 51 9d 48 58 f9    	vaddpd zmm15,zmm12,zmm9
  90822e:	62 c1 95 48 5c cf    	vsubpd zmm17,zmm13,zmm15
  908234:	62 b2 f5 48 bc dc    	vfnmadd231pd zmm3,zmm1,zmm20
  90823a:	62 51 a5 48 5c de    	vsubpd zmm11,zmm11,zmm14
  908240:	62 71 a5 48 59 da    	vmulpd zmm11,zmm11,zmm2
  908246:	62 51 e5 48 5c f3    	vsubpd zmm14,zmm3,zmm11
  90824c:	62 32 f5 48 bc c6    	vfnmadd231pd zmm8,zmm1,zmm22
  908252:	62 f1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm7
  908258:	62 f1 d5 48 59 ea    	vmulpd zmm5,zmm5,zmm2
  90825e:	62 f1 bd 48 5c fd    	vsubpd zmm7,zmm8,zmm5
  908264:	62 e1 8d 48 5c e7    	vsubpd zmm20,zmm14,zmm7
  90826a:	62 d1 dd 48 5c e2    	vsubpd zmm4,zmm4,zmm10
  908270:	62 51 9d 48 5c c9    	vsubpd zmm9,zmm12,zmm9
  908276:	62 51 dd 48 58 d1    	vaddpd zmm10,zmm4,zmm9
  90827c:	62 f1 a5 48 58 db    	vaddpd zmm3,zmm11,zmm3
  908282:	62 d1 d5 48 58 e8    	vaddpd zmm5,zmm5,zmm8
  908288:	62 71 e5 48 58 c5    	vaddpd zmm8,zmm3,zmm5
  90828e:	62 31 fd 40 5c da    	vsubpd zmm11,zmm16,zmm18
  908294:	62 31 d5 40 5c e7    	vsubpd zmm12,zmm21,zmm23
  90829a:	62 51 95 48 58 ef    	vaddpd zmm13,zmm13,zmm15
  9082a0:	62 f1 8d 48 58 ff    	vaddpd zmm7,zmm14,zmm7
  9082a6:	62 d1 dd 48 5c e1    	vsubpd zmm4,zmm4,zmm9
  9082ac:	62 f1 e5 48 5c dd    	vsubpd zmm3,zmm3,zmm5
  9082b2:	62 f1 fd 48 10 2d ac 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff7beaac]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  9082b9:	ea 7b ff 
  9082bc:	62 c2 d5 48 7f dd    	vpermt2pd zmm19,zmm5,zmm13
  9082c2:	62 e2 d5 48 7f cc    	vpermt2pd zmm17,zmm5,zmm4
  9082c8:	62 72 d5 48 7f d0    	vpermt2pd zmm10,zmm5,zmm0
  9082ce:	62 72 d5 48 7f d8    	vpermt2pd zmm11,zmm5,zmm0
  9082d4:	62 f1 fd 48 10 25 0a 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff7bea0a]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  9082db:	ea 7b ff 
  9082de:	62 31 fd 48 28 cb    	vmovapd zmm9,zmm19
  9082e4:	62 52 dd 48 7f ca    	vpermt2pd zmm9,zmm4,zmm10
  9082ea:	62 71 fd 48 10 2d 34 	vmovupd zmm13,ZMMWORD PTR [rip+0xffffffffff7bea34]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  9082f1:	ea 7b ff 
  9082f4:	62 c2 95 48 7f da    	vpermt2pd zmm19,zmm13,zmm10
  9082fa:	62 31 fd 48 28 d1    	vmovapd zmm10,zmm17
  908300:	62 52 dd 48 7f d3    	vpermt2pd zmm10,zmm4,zmm11
  908306:	62 c2 95 48 7f cb    	vpermt2pd zmm17,zmm13,zmm11
  90830c:	62 31 e5 40 14 d9    	vunpcklpd zmm11,zmm19,zmm17
  908312:	62 51 b5 48 14 f2    	vunpcklpd zmm14,zmm9,zmm10
  908318:	62 51 b5 48 15 ca    	vunpckhpd zmm9,zmm9,zmm10
  90831e:	62 f2 d5 48 7f f7    	vpermt2pd zmm6,zmm5,zmm7
  908324:	62 e2 d5 48 7f e3    	vpermt2pd zmm20,zmm5,zmm3
  90832a:	62 72 d5 48 7f c0    	vpermt2pd zmm8,zmm5,zmm0
  908330:	62 72 d5 48 7f e0    	vpermt2pd zmm12,zmm5,zmm0
  908336:	62 f1 fd 48 28 c6    	vmovapd zmm0,zmm6
  90833c:	62 d2 dd 48 7f c0    	vpermt2pd zmm0,zmm4,zmm8
  908342:	62 d2 95 48 7f f0    	vpermt2pd zmm6,zmm13,zmm8
  908348:	62 d2 dd 40 77 e4    	vpermi2pd zmm4,zmm20,zmm12
  90834e:	62 c2 95 48 7f e4    	vpermt2pd zmm20,zmm13,zmm12
  908354:	62 b1 cd 48 14 dc    	vunpcklpd zmm3,zmm6,zmm20
  90835a:	62 f1 fd 48 14 ec    	vunpcklpd zmm5,zmm0,zmm4
  908360:	62 f1 fd 48 15 c4    	vunpckhpd zmm0,zmm0,zmm4
  908366:	62 f1 fd 48 10 62 02 	vmovupd zmm4,ZMMWORD PTR [rdx+0x80]
  90836d:	62 f1 fd 48 10 72 03 	vmovupd zmm6,ZMMWORD PTR [rdx+0xc0]
  908374:	62 f1 fd 48 10 7a 04 	vmovupd zmm7,ZMMWORD PTR [rdx+0x100]
  90837b:	62 71 fd 48 10 42 05 	vmovupd zmm8,ZMMWORD PTR [rdx+0x140]
  908382:	62 71 b5 48 59 d4    	vmulpd zmm10,zmm9,zmm4
  908388:	62 72 fd 48 bc d6    	vfnmadd231pd zmm10,zmm0,zmm6
  90838e:	62 71 a5 48 59 e7    	vmulpd zmm12,zmm11,zmm7
  908394:	62 52 e5 48 bc e0    	vfnmadd231pd zmm12,zmm3,zmm8
  90839a:	62 51 ad 48 58 ec    	vaddpd zmm13,zmm10,zmm12
  9083a0:	62 f1 fd 48 59 c4    	vmulpd zmm0,zmm0,zmm4
  9083a6:	62 f2 b5 48 b8 c6    	vfmadd231pd zmm0,zmm9,zmm6
  9083ac:	62 f1 e5 48 59 df    	vmulpd zmm3,zmm3,zmm7
  9083b2:	62 d2 a5 48 b8 d8    	vfmadd231pd zmm3,zmm11,zmm8
  9083b8:	62 f1 fd 48 58 e3    	vaddpd zmm4,zmm0,zmm3
  9083be:	62 f1 fd 48 28 f1    	vmovapd zmm6,zmm1
  9083c4:	62 d2 95 48 ac f6    	vfnmadd213pd zmm6,zmm13,zmm14
  9083ca:	62 f1 fd 48 5c c3    	vsubpd zmm0,zmm0,zmm3
  9083d0:	62 f1 fd 48 59 c2    	vmulpd zmm0,zmm0,zmm2
  9083d6:	62 f1 cd 48 58 d8    	vaddpd zmm3,zmm6,zmm0
  9083dc:	62 f2 dd 48 ac cd    	vfnmadd213pd zmm1,zmm4,zmm5
  9083e2:	62 d1 ad 48 5c fc    	vsubpd zmm7,zmm10,zmm12
  9083e8:	62 f1 c5 48 59 d2    	vmulpd zmm2,zmm7,zmm2
  9083ee:	62 f1 f5 48 5c fa    	vsubpd zmm7,zmm1,zmm2
  9083f4:	c5 7d 28 05 04 e9 76 	vmovapd ymm8,YMMWORD PTR [rip+0xffffffffff76e904]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  9083fb:	ff 
  9083fc:	62 71 fd 48 28 cb    	vmovapd zmm9,zmm3
  908402:	62 72 bd 48 7f cf    	vpermt2pd zmm9,zmm8,zmm7
  908408:	62 f1 cd 48 5c c0    	vsubpd zmm0,zmm6,zmm0
  90840e:	62 f1 f5 48 58 ca    	vaddpd zmm1,zmm1,zmm2
  908414:	62 f1 fd 48 28 d0    	vmovapd zmm2,zmm0
  90841a:	62 f2 bd 48 7f d1    	vpermt2pd zmm2,zmm8,zmm1
  908420:	62 d1 8d 48 58 f5    	vaddpd zmm6,zmm14,zmm13
  908426:	62 f1 d5 48 58 e4    	vaddpd zmm4,zmm5,zmm4
  90842c:	62 72 cd 48 77 c4    	vpermi2pd zmm8,zmm6,zmm4
  908432:	62 f1 fd 48 28 2d c4 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff7766c4]        # 7eb00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xbfb0>
  908439:	66 77 ff 
  90843c:	62 f2 d5 48 7f f4    	vpermt2pd zmm6,zmm5,zmm4
  908442:	62 f1 fd 48 11 36    	vmovupd ZMMWORD PTR [rsi],zmm6
  908448:	c5 7d 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm8
  90844d:	62 f2 d5 48 7f df    	vpermt2pd zmm3,zmm5,zmm7
  908453:	62 f1 fd 48 11 9e 60 	vmovupd ZMMWORD PTR [rsi+0x60],zmm3
  90845a:	00 00 00 
  90845d:	c5 7d 11 8e a0 00 00 	vmovupd YMMWORD PTR [rsi+0xa0],ymm9
  908464:	00 
  908465:	62 f2 d5 48 7f c1    	vpermt2pd zmm0,zmm5,zmm1
  90846b:	62 f1 fd 48 11 46 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm0
  908472:	c5 fd 11 96 00 01 00 	vmovupd YMMWORD PTR [rsi+0x100],ymm2
  908479:	00 
  90847a:	c5 f8 77             	vzeroupper
  90847d:	c3                   	ret
