
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000923500 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  923500:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  923505:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  92350c:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  923510:	c5 fd 10 57 30       	vmovupd ymm2,YMMWORD PTR [rdi+0x30]
  923515:	c5 fd 10 5f 60       	vmovupd ymm3,YMMWORD PTR [rdi+0x60]
  92351a:	c5 fd 10 a7 90 00 00 	vmovupd ymm4,YMMWORD PTR [rdi+0x90]
  923521:	00 
  923522:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  923529:	62 f1 fd 48 28 2d 8d 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff75d68d]        # 80bc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe070>
  923530:	d6 75 ff 
  923533:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  923537:	62 f1 fd 48 28 f1    	vmovapd zmm6,zmm1
  92353d:	62 f2 d5 48 7f f0    	vpermt2pd zmm6,zmm5,zmm0
  923543:	62 f1 fd 48 28 3d b3 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff75d6b3]        # 80c00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe0b0>
  92354a:	d6 75 ff 
  92354d:	c5 7b 12 47 58       	vmovddup xmm8,QWORD PTR [rdi+0x58]
  923552:	62 f2 c5 48 7f c8    	vpermt2pd zmm1,zmm7,zmm0
  923558:	c4 63 39 0d 47 50 01 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+0x50],0x1
  92355f:	62 d3 6d 48 18 d0 02 	vinsertf32x4 zmm2,zmm2,xmm8,0x2
  923566:	62 71 fd 48 28 c2    	vmovapd zmm8,zmm2
  92356c:	62 72 d5 48 7f c0    	vpermt2pd zmm8,zmm5,zmm0
  923572:	c5 7b 12 8f 88 00 00 	vmovddup xmm9,QWORD PTR [rdi+0x88]
  923579:	00 
  92357a:	62 f2 c5 48 7f d0    	vpermt2pd zmm2,zmm7,zmm0
  923580:	c4 63 31 0d 8f 80 00 	vblendpd xmm9,xmm9,XMMWORD PTR [rdi+0x80],0x1
  923587:	00 00 01 
  92358a:	62 d3 65 48 18 d9 02 	vinsertf32x4 zmm3,zmm3,xmm9,0x2
  923591:	62 71 fd 48 28 cb    	vmovapd zmm9,zmm3
  923597:	62 72 d5 48 7f c8    	vpermt2pd zmm9,zmm5,zmm0
  92359d:	c5 7b 12 97 b8 00 00 	vmovddup xmm10,QWORD PTR [rdi+0xb8]
  9235a4:	00 
  9235a5:	62 f2 c5 48 7f d8    	vpermt2pd zmm3,zmm7,zmm0
  9235ab:	c4 63 29 0d 97 b0 00 	vblendpd xmm10,xmm10,XMMWORD PTR [rdi+0xb0],0x1
  9235b2:	00 00 01 
  9235b5:	62 d3 5d 48 18 e2 02 	vinsertf32x4 zmm4,zmm4,xmm10,0x2
  9235bc:	62 f2 dd 48 77 e8    	vpermi2pd zmm5,zmm4,zmm0
  9235c2:	62 f2 c5 48 7f e0    	vpermt2pd zmm4,zmm7,zmm0
  9235c8:	62 f1 f5 48 58 fb    	vaddpd zmm7,zmm1,zmm3
  9235ce:	62 71 ed 48 58 d4    	vaddpd zmm10,zmm2,zmm4
  9235d4:	62 51 c5 48 58 da    	vaddpd zmm11,zmm7,zmm10
  9235da:	62 51 cd 48 58 e1    	vaddpd zmm12,zmm6,zmm9
  9235e0:	62 71 bd 48 58 ed    	vaddpd zmm13,zmm8,zmm5
  9235e6:	62 51 9d 48 58 f5    	vaddpd zmm14,zmm12,zmm13
  9235ec:	62 f1 f5 48 5c cb    	vsubpd zmm1,zmm1,zmm3
  9235f2:	62 f1 bd 48 5c dd    	vsubpd zmm3,zmm8,zmm5
  9235f8:	62 f1 f5 48 58 eb    	vaddpd zmm5,zmm1,zmm3
  9235fe:	62 d1 cd 48 5c f1    	vsubpd zmm6,zmm6,zmm9
  923604:	62 f1 dd 48 5c d2    	vsubpd zmm2,zmm4,zmm2
  92360a:	62 f1 ed 48 58 e6    	vaddpd zmm4,zmm2,zmm6
  923610:	62 d1 c5 48 5c fa    	vsubpd zmm7,zmm7,zmm10
  923616:	62 51 9d 48 5c c5    	vsubpd zmm8,zmm12,zmm13
  92361c:	62 f1 f5 48 5c cb    	vsubpd zmm1,zmm1,zmm3
  923622:	62 f1 cd 48 5c d2    	vsubpd zmm2,zmm6,zmm2
  923628:	62 f1 fd 48 10 1d 36 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff7a3736]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  92362f:	37 7a ff 
  923632:	62 72 e5 48 7f d8    	vpermt2pd zmm11,zmm3,zmm0
  923638:	62 f2 e5 48 7f e8    	vpermt2pd zmm5,zmm3,zmm0
  92363e:	62 f2 e5 48 7f f8    	vpermt2pd zmm7,zmm3,zmm0
  923644:	62 f2 e5 48 7f c8    	vpermt2pd zmm1,zmm3,zmm0
  92364a:	62 f1 fd 48 10 35 94 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff7a3694]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  923651:	36 7a ff 
  923654:	62 51 fd 48 28 cb    	vmovapd zmm9,zmm11
  92365a:	62 72 cd 48 7f cf    	vpermt2pd zmm9,zmm6,zmm7
  923660:	62 71 fd 48 10 15 be 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff7a36be]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  923667:	36 7a ff 
  92366a:	62 72 ad 48 7f df    	vpermt2pd zmm11,zmm10,zmm7
  923670:	62 f1 fd 48 28 fd    	vmovapd zmm7,zmm5
  923676:	62 f2 cd 48 7f f9    	vpermt2pd zmm7,zmm6,zmm1
  92367c:	62 f2 ad 48 7f e9    	vpermt2pd zmm5,zmm10,zmm1
  923682:	62 f1 a5 48 14 cd    	vunpcklpd zmm1,zmm11,zmm5
  923688:	62 f1 b5 48 14 ef    	vunpcklpd zmm5,zmm9,zmm7
  92368e:	62 f1 b5 48 15 ff    	vunpckhpd zmm7,zmm9,zmm7
  923694:	62 72 e5 48 7f f0    	vpermt2pd zmm14,zmm3,zmm0
  92369a:	62 f2 e5 48 7f e0    	vpermt2pd zmm4,zmm3,zmm0
  9236a0:	62 72 e5 48 7f c0    	vpermt2pd zmm8,zmm3,zmm0
  9236a6:	62 f2 e5 48 7f d0    	vpermt2pd zmm2,zmm3,zmm0
  9236ac:	62 d1 fd 48 28 c6    	vmovapd zmm0,zmm14
  9236b2:	62 d2 cd 48 7f c0    	vpermt2pd zmm0,zmm6,zmm8
  9236b8:	62 52 ad 48 7f f0    	vpermt2pd zmm14,zmm10,zmm8
  9236be:	62 f2 dd 48 77 f2    	vpermi2pd zmm6,zmm4,zmm2
  9236c4:	62 f2 ad 48 7f e2    	vpermt2pd zmm4,zmm10,zmm2
  9236ca:	62 f1 8d 48 14 d4    	vunpcklpd zmm2,zmm14,zmm4
  9236d0:	62 f1 fd 48 14 de    	vunpcklpd zmm3,zmm0,zmm6
  9236d6:	62 f1 fd 48 15 c6    	vunpckhpd zmm0,zmm0,zmm6
  9236dc:	62 f1 fd 48 10 62 02 	vmovupd zmm4,ZMMWORD PTR [rdx+0x80]
  9236e3:	62 f1 fd 48 10 72 03 	vmovupd zmm6,ZMMWORD PTR [rdx+0xc0]
  9236ea:	62 71 fd 48 10 42 04 	vmovupd zmm8,ZMMWORD PTR [rdx+0x100]
  9236f1:	62 71 fd 48 10 4a 05 	vmovupd zmm9,ZMMWORD PTR [rdx+0x140]
  9236f8:	62 71 c5 48 59 d4    	vmulpd zmm10,zmm7,zmm4
  9236fe:	62 72 fd 48 bc d6    	vfnmadd231pd zmm10,zmm0,zmm6
  923704:	62 51 f5 48 59 d8    	vmulpd zmm11,zmm1,zmm8
  92370a:	62 52 ed 48 bc d9    	vfnmadd231pd zmm11,zmm2,zmm9
  923710:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  923716:	62 f1 fd 48 59 c4    	vmulpd zmm0,zmm0,zmm4
  92371c:	62 f2 c5 48 b8 c6    	vfmadd231pd zmm0,zmm7,zmm6
  923722:	62 d1 ed 48 59 d0    	vmulpd zmm2,zmm2,zmm8
  923728:	62 d2 f5 48 b8 d1    	vfmadd231pd zmm2,zmm1,zmm9
  92372e:	62 f1 fd 48 58 ca    	vaddpd zmm1,zmm0,zmm2
  923734:	62 f2 fd 48 19 25 5a 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff75135a]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  92373b:	13 75 ff 
  92373e:	62 f1 fd 48 28 f4    	vmovapd zmm6,zmm4
  923744:	62 f2 9d 48 ac f5    	vfnmadd213pd zmm6,zmm12,zmm5
  92374a:	62 f1 fd 48 5c c2    	vsubpd zmm0,zmm0,zmm2
  923750:	62 f2 fd 48 19 15 c6 	vbroadcastsd zmm2,QWORD PTR [rip+0xffffffffff7514c6]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  923757:	14 75 ff 
  92375a:	62 f1 fd 48 59 c2    	vmulpd zmm0,zmm0,zmm2
  923760:	62 f1 cd 48 58 f8    	vaddpd zmm7,zmm6,zmm0
  923766:	62 f2 f5 48 ac e3    	vfnmadd213pd zmm4,zmm1,zmm3
  92376c:	62 51 ad 48 5c c3    	vsubpd zmm8,zmm10,zmm11
  923772:	62 f1 bd 48 59 d2    	vmulpd zmm2,zmm8,zmm2
  923778:	62 71 dd 48 5c c2    	vsubpd zmm8,zmm4,zmm2
  92377e:	62 f1 cd 48 5c c0    	vsubpd zmm0,zmm6,zmm0
  923784:	62 f1 dd 48 58 d2    	vaddpd zmm2,zmm4,zmm2
  92378a:	62 f1 e5 48 58 c9    	vaddpd zmm1,zmm3,zmm1
  923790:	62 d1 d5 48 58 dc    	vaddpd zmm3,zmm5,zmm12
  923796:	62 f1 fd 48 28 25 a0 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff75d4a0]        # 80c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe0f0>
  92379d:	d4 75 ff 
  9237a0:	62 f2 dd 48 7f cb    	vpermt2pd zmm1,zmm4,zmm3
  9237a6:	62 f1 fd 48 11 0e    	vmovupd ZMMWORD PTR [rsi],zmm1
  9237ac:	62 72 dd 48 7f c7    	vpermt2pd zmm8,zmm4,zmm7
  9237b2:	62 71 fd 48 11 46 01 	vmovupd ZMMWORD PTR [rsi+0x40],zmm8
  9237b9:	62 f2 dd 48 7f d0    	vpermt2pd zmm2,zmm4,zmm0
  9237bf:	62 f1 fd 48 11 56 02 	vmovupd ZMMWORD PTR [rsi+0x80],zmm2
  9237c6:	c5 f8 77             	vzeroupper
  9237c9:	c3                   	ret
