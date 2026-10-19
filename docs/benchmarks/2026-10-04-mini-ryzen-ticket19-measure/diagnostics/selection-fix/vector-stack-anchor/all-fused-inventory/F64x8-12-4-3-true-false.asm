
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000922280 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  922280:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  922285:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  92228c:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  922290:	c5 fd 10 57 30       	vmovupd ymm2,YMMWORD PTR [rdi+0x30]
  922295:	c5 fd 10 5f 60       	vmovupd ymm3,YMMWORD PTR [rdi+0x60]
  92229a:	c5 fd 10 a7 90 00 00 	vmovupd ymm4,YMMWORD PTR [rdi+0x90]
  9222a1:	00 
  9222a2:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  9222a9:	62 f1 fd 48 28 2d 0d 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff75e90d]        # 80bc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe070>
  9222b0:	e9 75 ff 
  9222b3:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  9222b7:	62 f1 fd 48 28 f1    	vmovapd zmm6,zmm1
  9222bd:	62 f2 d5 48 7f f0    	vpermt2pd zmm6,zmm5,zmm0
  9222c3:	62 f1 fd 48 28 3d 33 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff75e933]        # 80c00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe0b0>
  9222ca:	e9 75 ff 
  9222cd:	c5 7b 12 47 58       	vmovddup xmm8,QWORD PTR [rdi+0x58]
  9222d2:	62 f2 c5 48 7f c8    	vpermt2pd zmm1,zmm7,zmm0
  9222d8:	c4 63 39 0d 47 50 01 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+0x50],0x1
  9222df:	62 d3 6d 48 18 d0 02 	vinsertf32x4 zmm2,zmm2,xmm8,0x2
  9222e6:	62 71 fd 48 28 c2    	vmovapd zmm8,zmm2
  9222ec:	62 72 d5 48 7f c0    	vpermt2pd zmm8,zmm5,zmm0
  9222f2:	c5 7b 12 8f 88 00 00 	vmovddup xmm9,QWORD PTR [rdi+0x88]
  9222f9:	00 
  9222fa:	62 f2 c5 48 7f d0    	vpermt2pd zmm2,zmm7,zmm0
  922300:	c4 63 31 0d 8f 80 00 	vblendpd xmm9,xmm9,XMMWORD PTR [rdi+0x80],0x1
  922307:	00 00 01 
  92230a:	62 d3 65 48 18 d9 02 	vinsertf32x4 zmm3,zmm3,xmm9,0x2
  922311:	62 71 fd 48 28 cb    	vmovapd zmm9,zmm3
  922317:	62 72 d5 48 7f c8    	vpermt2pd zmm9,zmm5,zmm0
  92231d:	c5 7b 12 97 b8 00 00 	vmovddup xmm10,QWORD PTR [rdi+0xb8]
  922324:	00 
  922325:	62 f2 c5 48 7f d8    	vpermt2pd zmm3,zmm7,zmm0
  92232b:	c4 63 29 0d 97 b0 00 	vblendpd xmm10,xmm10,XMMWORD PTR [rdi+0xb0],0x1
  922332:	00 00 01 
  922335:	62 d3 5d 48 18 e2 02 	vinsertf32x4 zmm4,zmm4,xmm10,0x2
  92233c:	62 f2 dd 48 77 e8    	vpermi2pd zmm5,zmm4,zmm0
  922342:	62 f2 c5 48 7f e0    	vpermt2pd zmm4,zmm7,zmm0
  922348:	62 f1 f5 48 58 fb    	vaddpd zmm7,zmm1,zmm3
  92234e:	62 71 ed 48 58 d4    	vaddpd zmm10,zmm2,zmm4
  922354:	62 51 c5 48 58 da    	vaddpd zmm11,zmm7,zmm10
  92235a:	62 51 cd 48 58 e1    	vaddpd zmm12,zmm6,zmm9
  922360:	62 71 bd 48 58 ed    	vaddpd zmm13,zmm8,zmm5
  922366:	62 51 9d 48 58 f5    	vaddpd zmm14,zmm12,zmm13
  92236c:	62 f1 f5 48 5c cb    	vsubpd zmm1,zmm1,zmm3
  922372:	62 f1 bd 48 5c dd    	vsubpd zmm3,zmm8,zmm5
  922378:	62 f1 f5 48 58 eb    	vaddpd zmm5,zmm1,zmm3
  92237e:	62 d1 cd 48 5c f1    	vsubpd zmm6,zmm6,zmm9
  922384:	62 f1 dd 48 5c d2    	vsubpd zmm2,zmm4,zmm2
  92238a:	62 f1 ed 48 58 e6    	vaddpd zmm4,zmm2,zmm6
  922390:	62 d1 c5 48 5c fa    	vsubpd zmm7,zmm7,zmm10
  922396:	62 51 9d 48 5c c5    	vsubpd zmm8,zmm12,zmm13
  92239c:	62 f1 f5 48 5c cb    	vsubpd zmm1,zmm1,zmm3
  9223a2:	62 f1 cd 48 5c d2    	vsubpd zmm2,zmm6,zmm2
  9223a8:	62 f1 fd 48 10 1d b6 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff7a49b6]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  9223af:	49 7a ff 
  9223b2:	62 72 e5 48 7f d8    	vpermt2pd zmm11,zmm3,zmm0
  9223b8:	62 f2 e5 48 7f e8    	vpermt2pd zmm5,zmm3,zmm0
  9223be:	62 f2 e5 48 7f f8    	vpermt2pd zmm7,zmm3,zmm0
  9223c4:	62 f2 e5 48 7f c8    	vpermt2pd zmm1,zmm3,zmm0
  9223ca:	62 f1 fd 48 10 35 14 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff7a4914]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  9223d1:	49 7a ff 
  9223d4:	62 51 fd 48 28 cb    	vmovapd zmm9,zmm11
  9223da:	62 72 cd 48 7f cf    	vpermt2pd zmm9,zmm6,zmm7
  9223e0:	62 71 fd 48 10 15 3e 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff7a493e]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  9223e7:	49 7a ff 
  9223ea:	62 72 ad 48 7f df    	vpermt2pd zmm11,zmm10,zmm7
  9223f0:	62 f1 fd 48 28 fd    	vmovapd zmm7,zmm5
  9223f6:	62 f2 cd 48 7f f9    	vpermt2pd zmm7,zmm6,zmm1
  9223fc:	62 f2 ad 48 7f e9    	vpermt2pd zmm5,zmm10,zmm1
  922402:	62 f1 a5 48 14 cd    	vunpcklpd zmm1,zmm11,zmm5
  922408:	62 f1 b5 48 14 ef    	vunpcklpd zmm5,zmm9,zmm7
  92240e:	62 f1 b5 48 15 ff    	vunpckhpd zmm7,zmm9,zmm7
  922414:	62 72 e5 48 7f f0    	vpermt2pd zmm14,zmm3,zmm0
  92241a:	62 f2 e5 48 7f e0    	vpermt2pd zmm4,zmm3,zmm0
  922420:	62 72 e5 48 7f c0    	vpermt2pd zmm8,zmm3,zmm0
  922426:	62 f2 e5 48 7f d0    	vpermt2pd zmm2,zmm3,zmm0
  92242c:	62 d1 fd 48 28 c6    	vmovapd zmm0,zmm14
  922432:	62 d2 cd 48 7f c0    	vpermt2pd zmm0,zmm6,zmm8
  922438:	62 52 ad 48 7f f0    	vpermt2pd zmm14,zmm10,zmm8
  92243e:	62 f2 dd 48 77 f2    	vpermi2pd zmm6,zmm4,zmm2
  922444:	62 f2 ad 48 7f e2    	vpermt2pd zmm4,zmm10,zmm2
  92244a:	62 f1 8d 48 14 d4    	vunpcklpd zmm2,zmm14,zmm4
  922450:	62 f1 fd 48 14 de    	vunpcklpd zmm3,zmm0,zmm6
  922456:	62 f1 fd 48 15 c6    	vunpckhpd zmm0,zmm0,zmm6
  92245c:	62 f1 fd 48 10 62 02 	vmovupd zmm4,ZMMWORD PTR [rdx+0x80]
  922463:	62 f1 fd 48 10 72 03 	vmovupd zmm6,ZMMWORD PTR [rdx+0xc0]
  92246a:	62 71 fd 48 10 42 04 	vmovupd zmm8,ZMMWORD PTR [rdx+0x100]
  922471:	62 71 fd 48 10 4a 05 	vmovupd zmm9,ZMMWORD PTR [rdx+0x140]
  922478:	62 71 c5 48 59 d4    	vmulpd zmm10,zmm7,zmm4
  92247e:	62 72 fd 48 bc d6    	vfnmadd231pd zmm10,zmm0,zmm6
  922484:	62 51 f5 48 59 d8    	vmulpd zmm11,zmm1,zmm8
  92248a:	62 52 ed 48 bc d9    	vfnmadd231pd zmm11,zmm2,zmm9
  922490:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  922496:	62 f1 fd 48 59 c4    	vmulpd zmm0,zmm0,zmm4
  92249c:	62 f2 c5 48 b8 c6    	vfmadd231pd zmm0,zmm7,zmm6
  9224a2:	62 d1 ed 48 59 d0    	vmulpd zmm2,zmm2,zmm8
  9224a8:	62 d2 f5 48 b8 d1    	vfmadd231pd zmm2,zmm1,zmm9
  9224ae:	62 f1 fd 48 58 ca    	vaddpd zmm1,zmm0,zmm2
  9224b4:	62 f2 fd 48 19 25 da 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff7525da]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  9224bb:	25 75 ff 
  9224be:	62 f1 fd 48 28 f4    	vmovapd zmm6,zmm4
  9224c4:	62 f2 9d 48 ac f5    	vfnmadd213pd zmm6,zmm12,zmm5
  9224ca:	62 f1 fd 48 5c c2    	vsubpd zmm0,zmm0,zmm2
  9224d0:	62 f2 fd 48 19 15 46 	vbroadcastsd zmm2,QWORD PTR [rip+0xffffffffff752746]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  9224d7:	27 75 ff 
  9224da:	62 f1 fd 48 59 c2    	vmulpd zmm0,zmm0,zmm2
  9224e0:	62 f1 cd 48 58 f8    	vaddpd zmm7,zmm6,zmm0
  9224e6:	62 f2 f5 48 ac e3    	vfnmadd213pd zmm4,zmm1,zmm3
  9224ec:	62 51 ad 48 5c c3    	vsubpd zmm8,zmm10,zmm11
  9224f2:	62 f1 bd 48 59 d2    	vmulpd zmm2,zmm8,zmm2
  9224f8:	62 71 dd 48 5c c2    	vsubpd zmm8,zmm4,zmm2
  9224fe:	62 f1 cd 48 5c c0    	vsubpd zmm0,zmm6,zmm0
  922504:	62 f1 dd 48 58 d2    	vaddpd zmm2,zmm4,zmm2
  92250a:	62 f1 e5 48 58 c9    	vaddpd zmm1,zmm3,zmm1
  922510:	62 d1 d5 48 58 dc    	vaddpd zmm3,zmm5,zmm12
  922516:	62 f1 fd 48 28 25 20 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff75e720]        # 80c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe0f0>
  92251d:	e7 75 ff 
  922520:	62 f2 dd 48 7f cb    	vpermt2pd zmm1,zmm4,zmm3
  922526:	62 f1 fd 48 11 0e    	vmovupd ZMMWORD PTR [rsi],zmm1
  92252c:	62 72 dd 48 7f c7    	vpermt2pd zmm8,zmm4,zmm7
  922532:	62 71 fd 48 11 46 01 	vmovupd ZMMWORD PTR [rsi+0x40],zmm8
  922539:	62 f2 dd 48 7f d0    	vpermt2pd zmm2,zmm4,zmm0
  92253f:	62 f1 fd 48 11 56 02 	vmovupd ZMMWORD PTR [rsi+0x80],zmm2
  922546:	c5 f8 77             	vzeroupper
  922549:	c3                   	ret
