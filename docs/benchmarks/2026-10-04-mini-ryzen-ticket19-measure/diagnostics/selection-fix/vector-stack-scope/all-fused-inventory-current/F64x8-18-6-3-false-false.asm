
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000909300 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  909300:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  909305:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  90930c:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  909310:	c5 fd 10 57 30       	vmovupd ymm2,YMMWORD PTR [rdi+0x30]
  909315:	c5 fd 10 77 60       	vmovupd ymm6,YMMWORD PTR [rdi+0x60]
  90931a:	c5 7d 10 87 90 00 00 	vmovupd ymm8,YMMWORD PTR [rdi+0x90]
  909321:	00 
  909322:	62 f3 75 48 18 d8 02 	vinsertf32x4 zmm3,zmm1,xmm0,0x2
  909329:	62 f1 fd 48 28 2d 4d 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff77574d]        # 7ea80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xbf30>
  909330:	57 77 ff 
  909333:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  909337:	62 f1 fd 48 28 e3    	vmovapd zmm4,zmm3
  90933d:	62 f2 d5 48 7f e0    	vpermt2pd zmm4,zmm5,zmm0
  909343:	62 f1 fd 48 28 0d 73 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff775773]        # 7eac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xbf70>
  90934a:	57 77 ff 
  90934d:	62 f2 f5 48 7f d8    	vpermt2pd zmm3,zmm1,zmm0
  909353:	c5 fb 12 7f 58       	vmovddup xmm7,QWORD PTR [rdi+0x58]
  909358:	c4 e3 41 0d 7f 50 01 	vblendpd xmm7,xmm7,XMMWORD PTR [rdi+0x50],0x1
  90935f:	62 73 6d 48 18 cf 02 	vinsertf32x4 zmm9,zmm2,xmm7,0x2
  909366:	62 d1 fd 48 28 f9    	vmovapd zmm7,zmm9
  90936c:	62 f2 d5 48 7f f8    	vpermt2pd zmm7,zmm5,zmm0
  909372:	62 72 f5 48 7f c8    	vpermt2pd zmm9,zmm1,zmm0
  909378:	c5 fb 12 97 88 00 00 	vmovddup xmm2,QWORD PTR [rdi+0x88]
  90937f:	00 
  909380:	c4 e3 69 0d 97 80 00 	vblendpd xmm2,xmm2,XMMWORD PTR [rdi+0x80],0x1
  909387:	00 00 01 
  90938a:	62 73 4d 48 18 d2 02 	vinsertf32x4 zmm10,zmm6,xmm2,0x2
  909391:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  909397:	62 72 d5 48 7f d8    	vpermt2pd zmm11,zmm5,zmm0
  90939d:	62 72 f5 48 7f d0    	vpermt2pd zmm10,zmm1,zmm0
  9093a3:	c5 fb 12 97 b8 00 00 	vmovddup xmm2,QWORD PTR [rdi+0xb8]
  9093aa:	00 
  9093ab:	c4 e3 69 0d 97 b0 00 	vblendpd xmm2,xmm2,XMMWORD PTR [rdi+0xb0],0x1
  9093b2:	00 00 01 
  9093b5:	62 73 3d 48 18 c2 02 	vinsertf32x4 zmm8,zmm8,xmm2,0x2
  9093bc:	62 51 fd 48 28 e0    	vmovapd zmm12,zmm8
  9093c2:	62 72 d5 48 7f e0    	vpermt2pd zmm12,zmm5,zmm0
  9093c8:	62 72 f5 48 7f c0    	vpermt2pd zmm8,zmm1,zmm0
  9093ce:	c5 fb 12 97 e8 00 00 	vmovddup xmm2,QWORD PTR [rdi+0xe8]
  9093d5:	00 
  9093d6:	c4 e3 69 0d 97 e0 00 	vblendpd xmm2,xmm2,XMMWORD PTR [rdi+0xe0],0x1
  9093dd:	00 00 01 
  9093e0:	c5 fd 10 b7 c0 00 00 	vmovupd ymm6,YMMWORD PTR [rdi+0xc0]
  9093e7:	00 
  9093e8:	62 73 4d 48 18 ea 02 	vinsertf32x4 zmm13,zmm6,xmm2,0x2
  9093ef:	62 51 fd 48 28 f5    	vmovapd zmm14,zmm13
  9093f5:	62 72 d5 48 7f f0    	vpermt2pd zmm14,zmm5,zmm0
  9093fb:	62 72 f5 48 7f e8    	vpermt2pd zmm13,zmm1,zmm0
  909401:	c5 fd 10 97 f0 00 00 	vmovupd ymm2,YMMWORD PTR [rdi+0xf0]
  909408:	00 
  909409:	c5 fb 12 b7 18 01 00 	vmovddup xmm6,QWORD PTR [rdi+0x118]
  909410:	00 
  909411:	c4 e3 49 0d b7 10 01 	vblendpd xmm6,xmm6,XMMWORD PTR [rdi+0x110],0x1
  909418:	00 00 01 
  90941b:	62 73 6d 48 18 fe 02 	vinsertf32x4 zmm15,zmm2,xmm6,0x2
  909422:	62 f2 85 48 77 e8    	vpermi2pd zmm5,zmm15,zmm0
  909428:	62 72 f5 48 7f f8    	vpermt2pd zmm15,zmm1,zmm0
  90942e:	62 d1 a5 48 58 d6    	vaddpd zmm2,zmm11,zmm14
  909434:	62 e1 dd 48 58 c2    	vaddpd zmm16,zmm4,zmm2
  90943a:	62 e1 d5 48 58 cf    	vaddpd zmm17,zmm5,zmm7
  909440:	62 a1 9d 48 58 d1    	vaddpd zmm18,zmm12,zmm17
  909446:	62 a1 fd 40 58 da    	vaddpd zmm19,zmm16,zmm18
  90944c:	62 c1 ad 48 58 e5    	vaddpd zmm20,zmm10,zmm13
  909452:	62 a1 e5 48 58 ec    	vaddpd zmm21,zmm3,zmm20
  909458:	62 c1 85 48 58 f1    	vaddpd zmm22,zmm15,zmm9
  90945e:	62 a1 bd 48 58 fe    	vaddpd zmm23,zmm8,zmm22
  909464:	62 f2 fd 48 19 0d 2a 	vbroadcastsd zmm1,QWORD PTR [rip+0xffffffffff76b62a]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  90946b:	b6 76 ff 
  90946e:	62 b1 d5 40 58 f7    	vaddpd zmm6,zmm21,zmm23
  909474:	62 f2 f5 48 bc e2    	vfnmadd231pd zmm4,zmm1,zmm2
  90947a:	62 f2 fd 48 19 15 9c 	vbroadcastsd zmm2,QWORD PTR [rip+0xffffffffff76b79c]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  909481:	b7 76 ff 
  909484:	62 51 ad 48 5c d5    	vsubpd zmm10,zmm10,zmm13
  90948a:	62 71 ad 48 59 d2    	vmulpd zmm10,zmm10,zmm2
  909490:	62 51 dd 48 58 ea    	vaddpd zmm13,zmm4,zmm10
  909496:	62 32 f5 48 bc e1    	vfnmadd231pd zmm12,zmm1,zmm17
  90949c:	62 51 85 48 5c c9    	vsubpd zmm9,zmm15,zmm9
  9094a2:	62 71 b5 48 59 ca    	vmulpd zmm9,zmm9,zmm2
  9094a8:	62 51 9d 48 58 f9    	vaddpd zmm15,zmm12,zmm9
  9094ae:	62 c1 95 48 5c cf    	vsubpd zmm17,zmm13,zmm15
  9094b4:	62 b2 f5 48 bc dc    	vfnmadd231pd zmm3,zmm1,zmm20
  9094ba:	62 51 a5 48 5c de    	vsubpd zmm11,zmm11,zmm14
  9094c0:	62 71 a5 48 59 da    	vmulpd zmm11,zmm11,zmm2
  9094c6:	62 51 e5 48 5c f3    	vsubpd zmm14,zmm3,zmm11
  9094cc:	62 32 f5 48 bc c6    	vfnmadd231pd zmm8,zmm1,zmm22
  9094d2:	62 f1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm7
  9094d8:	62 f1 d5 48 59 ea    	vmulpd zmm5,zmm5,zmm2
  9094de:	62 f1 bd 48 5c fd    	vsubpd zmm7,zmm8,zmm5
  9094e4:	62 e1 8d 48 5c e7    	vsubpd zmm20,zmm14,zmm7
  9094ea:	62 d1 dd 48 5c e2    	vsubpd zmm4,zmm4,zmm10
  9094f0:	62 51 9d 48 5c c9    	vsubpd zmm9,zmm12,zmm9
  9094f6:	62 51 dd 48 58 d1    	vaddpd zmm10,zmm4,zmm9
  9094fc:	62 f1 a5 48 58 db    	vaddpd zmm3,zmm11,zmm3
  909502:	62 d1 d5 48 58 e8    	vaddpd zmm5,zmm5,zmm8
  909508:	62 71 e5 48 58 c5    	vaddpd zmm8,zmm3,zmm5
  90950e:	62 31 fd 40 5c da    	vsubpd zmm11,zmm16,zmm18
  909514:	62 31 d5 40 5c e7    	vsubpd zmm12,zmm21,zmm23
  90951a:	62 51 95 48 58 ef    	vaddpd zmm13,zmm13,zmm15
  909520:	62 f1 8d 48 58 ff    	vaddpd zmm7,zmm14,zmm7
  909526:	62 d1 dd 48 5c e1    	vsubpd zmm4,zmm4,zmm9
  90952c:	62 f1 e5 48 5c dd    	vsubpd zmm3,zmm3,zmm5
  909532:	62 f1 fd 48 10 2d 2c 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff7bd82c]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  909539:	d8 7b ff 
  90953c:	62 c2 d5 48 7f dd    	vpermt2pd zmm19,zmm5,zmm13
  909542:	62 e2 d5 48 7f cc    	vpermt2pd zmm17,zmm5,zmm4
  909548:	62 72 d5 48 7f d0    	vpermt2pd zmm10,zmm5,zmm0
  90954e:	62 72 d5 48 7f d8    	vpermt2pd zmm11,zmm5,zmm0
  909554:	62 f1 fd 48 10 25 8a 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff7bd78a]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  90955b:	d7 7b ff 
  90955e:	62 31 fd 48 28 cb    	vmovapd zmm9,zmm19
  909564:	62 52 dd 48 7f ca    	vpermt2pd zmm9,zmm4,zmm10
  90956a:	62 71 fd 48 10 2d b4 	vmovupd zmm13,ZMMWORD PTR [rip+0xffffffffff7bd7b4]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  909571:	d7 7b ff 
  909574:	62 c2 95 48 7f da    	vpermt2pd zmm19,zmm13,zmm10
  90957a:	62 31 fd 48 28 d1    	vmovapd zmm10,zmm17
  909580:	62 52 dd 48 7f d3    	vpermt2pd zmm10,zmm4,zmm11
  909586:	62 c2 95 48 7f cb    	vpermt2pd zmm17,zmm13,zmm11
  90958c:	62 31 e5 40 14 d9    	vunpcklpd zmm11,zmm19,zmm17
  909592:	62 51 b5 48 14 f2    	vunpcklpd zmm14,zmm9,zmm10
  909598:	62 51 b5 48 15 ca    	vunpckhpd zmm9,zmm9,zmm10
  90959e:	62 f2 d5 48 7f f7    	vpermt2pd zmm6,zmm5,zmm7
  9095a4:	62 e2 d5 48 7f e3    	vpermt2pd zmm20,zmm5,zmm3
  9095aa:	62 72 d5 48 7f c0    	vpermt2pd zmm8,zmm5,zmm0
  9095b0:	62 72 d5 48 7f e0    	vpermt2pd zmm12,zmm5,zmm0
  9095b6:	62 f1 fd 48 28 c6    	vmovapd zmm0,zmm6
  9095bc:	62 d2 dd 48 7f c0    	vpermt2pd zmm0,zmm4,zmm8
  9095c2:	62 d2 95 48 7f f0    	vpermt2pd zmm6,zmm13,zmm8
  9095c8:	62 d2 dd 40 77 e4    	vpermi2pd zmm4,zmm20,zmm12
  9095ce:	62 c2 95 48 7f e4    	vpermt2pd zmm20,zmm13,zmm12
  9095d4:	62 b1 cd 48 14 dc    	vunpcklpd zmm3,zmm6,zmm20
  9095da:	62 f1 fd 48 14 ec    	vunpcklpd zmm5,zmm0,zmm4
  9095e0:	62 f1 fd 48 15 c4    	vunpckhpd zmm0,zmm0,zmm4
  9095e6:	62 f1 fd 48 10 62 02 	vmovupd zmm4,ZMMWORD PTR [rdx+0x80]
  9095ed:	62 f1 fd 48 10 72 03 	vmovupd zmm6,ZMMWORD PTR [rdx+0xc0]
  9095f4:	62 f1 fd 48 10 7a 04 	vmovupd zmm7,ZMMWORD PTR [rdx+0x100]
  9095fb:	62 71 fd 48 10 42 05 	vmovupd zmm8,ZMMWORD PTR [rdx+0x140]
  909602:	62 71 b5 48 59 d4    	vmulpd zmm10,zmm9,zmm4
  909608:	62 72 fd 48 bc d6    	vfnmadd231pd zmm10,zmm0,zmm6
  90960e:	62 71 a5 48 59 e7    	vmulpd zmm12,zmm11,zmm7
  909614:	62 52 e5 48 bc e0    	vfnmadd231pd zmm12,zmm3,zmm8
  90961a:	62 51 ad 48 58 ec    	vaddpd zmm13,zmm10,zmm12
  909620:	62 f1 fd 48 59 c4    	vmulpd zmm0,zmm0,zmm4
  909626:	62 f2 b5 48 b8 c6    	vfmadd231pd zmm0,zmm9,zmm6
  90962c:	62 f1 e5 48 59 df    	vmulpd zmm3,zmm3,zmm7
  909632:	62 d2 a5 48 b8 d8    	vfmadd231pd zmm3,zmm11,zmm8
  909638:	62 f1 fd 48 58 e3    	vaddpd zmm4,zmm0,zmm3
  90963e:	62 f1 fd 48 28 f1    	vmovapd zmm6,zmm1
  909644:	62 d2 95 48 ac f6    	vfnmadd213pd zmm6,zmm13,zmm14
  90964a:	62 f1 fd 48 5c c3    	vsubpd zmm0,zmm0,zmm3
  909650:	62 f1 fd 48 59 c2    	vmulpd zmm0,zmm0,zmm2
  909656:	62 f1 cd 48 58 d8    	vaddpd zmm3,zmm6,zmm0
  90965c:	62 f2 dd 48 ac cd    	vfnmadd213pd zmm1,zmm4,zmm5
  909662:	62 d1 ad 48 5c fc    	vsubpd zmm7,zmm10,zmm12
  909668:	62 f1 c5 48 59 d2    	vmulpd zmm2,zmm7,zmm2
  90966e:	62 f1 f5 48 5c fa    	vsubpd zmm7,zmm1,zmm2
  909674:	c5 7d 28 05 84 d6 76 	vmovapd ymm8,YMMWORD PTR [rip+0xffffffffff76d684]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  90967b:	ff 
  90967c:	62 71 fd 48 28 cb    	vmovapd zmm9,zmm3
  909682:	62 72 bd 48 7f cf    	vpermt2pd zmm9,zmm8,zmm7
  909688:	62 f1 cd 48 5c c0    	vsubpd zmm0,zmm6,zmm0
  90968e:	62 f1 f5 48 58 ca    	vaddpd zmm1,zmm1,zmm2
  909694:	62 f1 fd 48 28 d0    	vmovapd zmm2,zmm0
  90969a:	62 f2 bd 48 7f d1    	vpermt2pd zmm2,zmm8,zmm1
  9096a0:	62 d1 8d 48 58 f5    	vaddpd zmm6,zmm14,zmm13
  9096a6:	62 f1 d5 48 58 e4    	vaddpd zmm4,zmm5,zmm4
  9096ac:	62 72 cd 48 77 c4    	vpermi2pd zmm8,zmm6,zmm4
  9096b2:	62 f1 fd 48 28 2d 44 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff775444]        # 7eb00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xbfb0>
  9096b9:	54 77 ff 
  9096bc:	62 f2 d5 48 7f f4    	vpermt2pd zmm6,zmm5,zmm4
  9096c2:	62 f1 fd 48 11 36    	vmovupd ZMMWORD PTR [rsi],zmm6
  9096c8:	c5 7d 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm8
  9096cd:	62 f2 d5 48 7f df    	vpermt2pd zmm3,zmm5,zmm7
  9096d3:	62 f1 fd 48 11 9e 60 	vmovupd ZMMWORD PTR [rsi+0x60],zmm3
  9096da:	00 00 00 
  9096dd:	c5 7d 11 8e a0 00 00 	vmovupd YMMWORD PTR [rsi+0xa0],ymm9
  9096e4:	00 
  9096e5:	62 f2 d5 48 7f c1    	vpermt2pd zmm0,zmm5,zmm1
  9096eb:	62 f1 fd 48 11 46 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm0
  9096f2:	c5 fd 11 96 00 01 00 	vmovupd YMMWORD PTR [rsi+0x100],ymm2
  9096f9:	00 
  9096fa:	c5 f8 77             	vzeroupper
  9096fd:	c3                   	ret
