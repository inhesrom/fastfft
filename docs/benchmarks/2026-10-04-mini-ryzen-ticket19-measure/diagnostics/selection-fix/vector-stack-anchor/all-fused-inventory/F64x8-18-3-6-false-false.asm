
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009595c0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  9595c0:	62 f1 fd 48 10 1f    	vmovupd zmm3,ZMMWORD PTR [rdi]
  9595c6:	c5 fd 10 47 40       	vmovupd ymm0,YMMWORD PTR [rdi+0x40]
  9595cb:	62 f1 fd 48 28 2d ab 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff72baab]        # 85080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x12530>
  9595d2:	ba 72 ff 
  9595d5:	62 f1 fd 48 28 f3    	vmovapd zmm6,zmm3
  9595db:	62 f2 d5 48 7f f0    	vpermt2pd zmm6,zmm5,zmm0
  9595e1:	62 f1 fd 48 28 0d d5 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff72bad5]        # 850c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x12570>
  9595e8:	ba 72 ff 
  9595eb:	62 f2 f5 48 7f d8    	vpermt2pd zmm3,zmm1,zmm0
  9595f1:	62 f1 fd 48 10 bf 60 	vmovupd zmm7,ZMMWORD PTR [rdi+0x60]
  9595f8:	00 00 00 
  9595fb:	c5 fd 10 87 a0 00 00 	vmovupd ymm0,YMMWORD PTR [rdi+0xa0]
  959602:	00 
  959603:	62 71 fd 48 28 cf    	vmovapd zmm9,zmm7
  959609:	62 72 d5 48 7f c8    	vpermt2pd zmm9,zmm5,zmm0
  95960f:	62 f2 f5 48 7f f8    	vpermt2pd zmm7,zmm1,zmm0
  959615:	62 71 fd 48 10 47 03 	vmovupd zmm8,ZMMWORD PTR [rdi+0xc0]
  95961c:	c5 fd 10 87 00 01 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x100]
  959623:	00 
  959624:	62 f2 bd 48 77 e8    	vpermi2pd zmm5,zmm8,zmm0
  95962a:	62 72 f5 48 7f c0    	vpermt2pd zmm8,zmm1,zmm0
  959630:	62 f1 b5 48 58 c5    	vaddpd zmm0,zmm9,zmm5
  959636:	62 f1 cd 48 58 e0    	vaddpd zmm4,zmm6,zmm0
  95963c:	62 51 c5 48 58 d0    	vaddpd zmm10,zmm7,zmm8
  959642:	62 f2 fd 48 19 0d 4c 	vbroadcastsd zmm1,QWORD PTR [rip+0xffffffffff71b44c]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  959649:	b4 71 ff 
  95964c:	62 d1 e5 48 58 d2    	vaddpd zmm2,zmm3,zmm10
  959652:	62 f2 f5 48 bc f0    	vfnmadd231pd zmm6,zmm1,zmm0
  959658:	62 f2 fd 48 19 05 be 	vbroadcastsd zmm0,QWORD PTR [rip+0xffffffffff71b5be]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  95965f:	b5 71 ff 
  959662:	62 d1 c5 48 5c f8    	vsubpd zmm7,zmm7,zmm8
  959668:	62 f1 c5 48 59 f8    	vmulpd zmm7,zmm7,zmm0
  95966e:	62 71 cd 48 58 c7    	vaddpd zmm8,zmm6,zmm7
  959674:	62 d2 f5 48 bc da    	vfnmadd231pd zmm3,zmm1,zmm10
  95967a:	62 f1 b5 48 5c ed    	vsubpd zmm5,zmm9,zmm5
  959680:	62 71 d5 48 59 c8    	vmulpd zmm9,zmm5,zmm0
  959686:	62 d1 e5 48 5c e9    	vsubpd zmm5,zmm3,zmm9
  95968c:	62 f1 cd 48 5c f7    	vsubpd zmm6,zmm6,zmm7
  959692:	62 f1 b5 48 58 fb    	vaddpd zmm7,zmm9,zmm3
  959698:	62 71 fd 48 10 15 c6 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff76d6c6]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  95969f:	d6 76 ff 
  9596a2:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  9596a6:	62 71 fd 48 28 cc    	vmovapd zmm9,zmm4
  9596ac:	62 72 ad 48 7f cb    	vpermt2pd zmm9,zmm10,zmm3
  9596b2:	62 71 fd 48 10 1d ec 	vmovupd zmm11,ZMMWORD PTR [rip+0xffffffffff76d6ec]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  9596b9:	d6 76 ff 
  9596bc:	62 f2 a5 48 7f e3    	vpermt2pd zmm4,zmm11,zmm3
  9596c2:	62 51 fd 48 28 e0    	vmovapd zmm12,zmm8
  9596c8:	62 72 ad 48 7f e3    	vpermt2pd zmm12,zmm10,zmm3
  9596ce:	62 72 a5 48 7f c3    	vpermt2pd zmm8,zmm11,zmm3
  9596d4:	62 71 fd 48 28 ee    	vmovapd zmm13,zmm6
  9596da:	62 72 ad 48 7f eb    	vpermt2pd zmm13,zmm10,zmm3
  9596e0:	62 f2 a5 48 7f f3    	vpermt2pd zmm6,zmm11,zmm3
  9596e6:	c4 41 09 57 f6       	vxorpd xmm14,xmm14,xmm14
  9596eb:	62 52 ad 48 7f f6    	vpermt2pd zmm14,zmm10,zmm14
  9596f1:	c4 41 01 57 ff       	vxorpd xmm15,xmm15,xmm15
  9596f6:	62 52 a5 48 7f ff    	vpermt2pd zmm15,zmm11,zmm15
  9596fc:	62 e1 fd 48 10 05 e2 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff76d5e2]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  959703:	d5 76 ff 
  959706:	62 e1 fd 48 28 ca    	vmovapd zmm17,zmm2
  95970c:	62 e2 ad 48 7f cb    	vpermt2pd zmm17,zmm10,zmm3
  959712:	62 f2 a5 48 7f d3    	vpermt2pd zmm2,zmm11,zmm3
  959718:	62 e1 fd 48 28 d5    	vmovapd zmm18,zmm5
  95971e:	62 e2 ad 48 7f d3    	vpermt2pd zmm18,zmm10,zmm3
  959724:	62 f2 a5 48 7f eb    	vpermt2pd zmm5,zmm11,zmm3
  95972a:	62 72 c5 48 77 d3    	vpermi2pd zmm10,zmm7,zmm3
  959730:	62 f2 a5 48 7f fb    	vpermt2pd zmm7,zmm11,zmm3
  959736:	62 51 fd 48 28 d9    	vmovapd zmm11,zmm9
  95973c:	62 52 fd 40 7f dd    	vpermt2pd zmm11,zmm16,zmm13
  959742:	62 e1 fd 48 10 1d dc 	vmovupd zmm19,ZMMWORD PTR [rip+0xffffffffff76d5dc]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  959749:	d5 76 ff 
  95974c:	62 52 e5 40 7f cd    	vpermt2pd zmm9,zmm19,zmm13
  959752:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  959758:	62 52 fd 40 7f ee    	vpermt2pd zmm13,zmm16,zmm14
  95975e:	62 52 e5 40 7f e6    	vpermt2pd zmm12,zmm19,zmm14
  959764:	62 f2 fd 40 7f e6    	vpermt2pd zmm4,zmm16,zmm6
  95976a:	62 52 fd 40 7f c7    	vpermt2pd zmm8,zmm16,zmm15
  959770:	62 d1 a5 48 14 dd    	vunpcklpd zmm3,zmm11,zmm13
  959776:	62 d1 a5 48 15 f5    	vunpckhpd zmm6,zmm11,zmm13
  95977c:	62 51 b5 48 14 dc    	vunpcklpd zmm11,zmm9,zmm12
  959782:	62 51 b5 48 15 cc    	vunpckhpd zmm9,zmm9,zmm12
  959788:	62 51 dd 48 14 e0    	vunpcklpd zmm12,zmm4,zmm8
  95978e:	62 51 dd 48 15 c0    	vunpckhpd zmm8,zmm4,zmm8
  959794:	62 31 fd 48 28 e9    	vmovapd zmm13,zmm17
  95979a:	62 52 fd 40 7f ea    	vpermt2pd zmm13,zmm16,zmm10
  9597a0:	62 c2 e5 40 7f ca    	vpermt2pd zmm17,zmm19,zmm10
  9597a6:	62 31 fd 48 28 d2    	vmovapd zmm10,zmm18
  9597ac:	62 52 fd 40 7f d6    	vpermt2pd zmm10,zmm16,zmm14
  9597b2:	62 c2 e5 40 7f d6    	vpermt2pd zmm18,zmm19,zmm14
  9597b8:	62 f2 fd 40 7f d7    	vpermt2pd zmm2,zmm16,zmm7
  9597be:	62 d2 fd 40 7f ef    	vpermt2pd zmm5,zmm16,zmm15
  9597c4:	62 d1 95 48 14 e2    	vunpcklpd zmm4,zmm13,zmm10
  9597ca:	62 d1 95 48 15 fa    	vunpckhpd zmm7,zmm13,zmm10
  9597d0:	62 31 f5 40 14 d2    	vunpcklpd zmm10,zmm17,zmm18
  9597d6:	62 31 f5 40 15 ea    	vunpckhpd zmm13,zmm17,zmm18
  9597dc:	62 71 ed 48 14 f5    	vunpcklpd zmm14,zmm2,zmm5
  9597e2:	62 f1 ed 48 15 ed    	vunpckhpd zmm5,zmm2,zmm5
  9597e8:	62 71 fd 48 10 7a 02 	vmovupd zmm15,ZMMWORD PTR [rdx+0x80]
  9597ef:	62 e1 fd 48 10 42 03 	vmovupd zmm16,ZMMWORD PTR [rdx+0xc0]
  9597f6:	62 e1 fd 48 10 4a 04 	vmovupd zmm17,ZMMWORD PTR [rdx+0x100]
  9597fd:	62 e1 fd 48 10 52 05 	vmovupd zmm18,ZMMWORD PTR [rdx+0x140]
  959804:	62 b1 a5 48 59 d1    	vmulpd zmm2,zmm11,zmm17
  95980a:	62 b2 ad 48 bc d2    	vfnmadd231pd zmm2,zmm10,zmm18
  959810:	62 31 ad 48 59 d1    	vmulpd zmm10,zmm10,zmm17
  959816:	62 e1 fd 48 10 4a 08 	vmovupd zmm17,ZMMWORD PTR [rdx+0x200]
  95981d:	62 32 a5 48 b8 d2    	vfmadd231pd zmm10,zmm11,zmm18
  959823:	62 71 fd 48 10 5a 09 	vmovupd zmm11,ZMMWORD PTR [rdx+0x240]
  95982a:	62 a1 9d 48 59 d1    	vmulpd zmm18,zmm12,zmm17
  959830:	62 c2 8d 48 bc d3    	vfnmadd231pd zmm18,zmm14,zmm11
  959836:	62 31 8d 48 59 f1    	vmulpd zmm14,zmm14,zmm17
  95983c:	62 e1 fd 48 10 4a 06 	vmovupd zmm17,ZMMWORD PTR [rdx+0x180]
  959843:	62 52 9d 48 b8 f3    	vfmadd231pd zmm14,zmm12,zmm11
  959849:	62 71 fd 48 10 5a 07 	vmovupd zmm11,ZMMWORD PTR [rdx+0x1c0]
  959850:	62 31 b5 48 59 e1    	vmulpd zmm12,zmm9,zmm17
  959856:	62 52 95 48 bc e3    	vfnmadd231pd zmm12,zmm13,zmm11
  95985c:	62 31 95 48 59 e9    	vmulpd zmm13,zmm13,zmm17
  959862:	62 e1 fd 48 10 4a 0a 	vmovupd zmm17,ZMMWORD PTR [rdx+0x280]
  959869:	62 52 b5 48 b8 eb    	vfmadd231pd zmm13,zmm9,zmm11
  95986f:	62 71 fd 48 10 4a 0b 	vmovupd zmm9,ZMMWORD PTR [rdx+0x2c0]
  959876:	62 31 bd 48 59 d9    	vmulpd zmm11,zmm8,zmm17
  95987c:	62 52 d5 48 bc d9    	vfnmadd231pd zmm11,zmm5,zmm9
  959882:	62 b1 d5 48 59 e9    	vmulpd zmm5,zmm5,zmm17
  959888:	62 a1 ed 48 58 ca    	vaddpd zmm17,zmm2,zmm18
  95988e:	62 d2 bd 48 b8 e9    	vfmadd231pd zmm5,zmm8,zmm9
  959894:	62 31 e5 48 58 c1    	vaddpd zmm8,zmm3,zmm17
  95989a:	62 51 cd 48 59 cf    	vmulpd zmm9,zmm6,zmm15
  9598a0:	62 32 c5 48 bc c8    	vfnmadd231pd zmm9,zmm7,zmm16
  9598a6:	62 d1 c5 48 59 ff    	vmulpd zmm7,zmm7,zmm15
  9598ac:	62 51 a5 48 58 f9    	vaddpd zmm15,zmm11,zmm9
  9598b2:	62 b2 cd 48 b8 f8    	vfmadd231pd zmm7,zmm6,zmm16
  9598b8:	62 d1 9d 48 58 f7    	vaddpd zmm6,zmm12,zmm15
  9598be:	62 c1 ad 48 58 c6    	vaddpd zmm16,zmm10,zmm14
  9598c4:	62 e2 f5 48 ac cb    	vfnmadd213pd zmm17,zmm1,zmm3
  9598ca:	62 f1 fd 40 58 dc    	vaddpd zmm3,zmm16,zmm4
  9598d0:	62 52 f5 48 bc e7    	vfnmadd231pd zmm12,zmm1,zmm15
  9598d6:	62 71 d5 48 58 ff    	vaddpd zmm15,zmm5,zmm7
  9598dc:	62 e2 f5 48 ac c4    	vfnmadd213pd zmm16,zmm1,zmm4
  9598e2:	62 d1 95 48 58 e7    	vaddpd zmm4,zmm13,zmm15
  9598e8:	62 72 85 48 bc e9    	vfnmadd231pd zmm13,zmm15,zmm1
  9598ee:	62 d1 ad 48 5c ce    	vsubpd zmm1,zmm10,zmm14
  9598f4:	62 f1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm7
  9598fa:	62 b1 ed 48 5c d2    	vsubpd zmm2,zmm2,zmm18
  959900:	62 d1 a5 48 5c f9    	vsubpd zmm7,zmm11,zmm9
  959906:	62 f1 f5 48 59 c8    	vmulpd zmm1,zmm1,zmm0
  95990c:	62 f1 d5 48 59 e8    	vmulpd zmm5,zmm5,zmm0
  959912:	62 f1 ed 48 59 d0    	vmulpd zmm2,zmm2,zmm0
  959918:	62 f1 c5 48 59 c0    	vmulpd zmm0,zmm7,zmm0
  95991e:	62 f1 f5 40 58 f9    	vaddpd zmm7,zmm17,zmm1
  959924:	62 f1 f5 40 5c c9    	vsubpd zmm1,zmm17,zmm1
  95992a:	62 71 9d 48 58 cd    	vaddpd zmm9,zmm12,zmm5
  959930:	62 f1 9d 48 5c ed    	vsubpd zmm5,zmm12,zmm5
  959936:	62 71 fd 40 5c d2    	vsubpd zmm10,zmm16,zmm2
  95993c:	62 b1 ed 48 58 d0    	vaddpd zmm2,zmm2,zmm16
  959942:	62 71 95 48 5c d8    	vsubpd zmm11,zmm13,zmm0
  959948:	62 f1 95 48 58 c0    	vaddpd zmm0,zmm13,zmm0
  95994e:	62 51 c5 48 5c e1    	vsubpd zmm12,zmm7,zmm9
  959954:	62 d1 c5 48 58 f9    	vaddpd zmm7,zmm7,zmm9
  95995a:	62 51 ad 48 5c cb    	vsubpd zmm9,zmm10,zmm11
  959960:	62 51 ad 48 58 d3    	vaddpd zmm10,zmm10,zmm11
  959966:	62 71 f5 48 58 dd    	vaddpd zmm11,zmm1,zmm5
  95996c:	62 f1 f5 48 5c cd    	vsubpd zmm1,zmm1,zmm5
  959972:	62 f1 ed 48 58 e8    	vaddpd zmm5,zmm2,zmm0
  959978:	62 f1 ed 48 5c c0    	vsubpd zmm0,zmm2,zmm0
  95997e:	62 f1 bd 48 5c d6    	vsubpd zmm2,zmm8,zmm6
  959984:	62 f1 bd 48 58 f6    	vaddpd zmm6,zmm8,zmm6
  95998a:	62 71 e5 48 5c c4    	vsubpd zmm8,zmm3,zmm4
  959990:	62 f1 e5 48 58 dc    	vaddpd zmm3,zmm3,zmm4
  959996:	62 f1 fd 48 28 25 60 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff72b760]        # 85100 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x125b0>
  95999d:	b7 72 ff 
  9599a0:	62 f2 dd 48 7f f3    	vpermt2pd zmm6,zmm4,zmm3
  9599a6:	62 52 dd 48 7f e1    	vpermt2pd zmm12,zmm4,zmm9
  9599ac:	62 72 dd 48 7f dd    	vpermt2pd zmm11,zmm4,zmm5
  9599b2:	62 d2 dd 48 7f d0    	vpermt2pd zmm2,zmm4,zmm8
  9599b8:	62 d2 dd 48 7f fa    	vpermt2pd zmm7,zmm4,zmm10
  9599be:	62 f2 dd 48 7f c8    	vpermt2pd zmm1,zmm4,zmm0
  9599c4:	62 f3 7d 48 19 76 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm6,0x2
  9599cb:	02 
  9599cc:	c5 fd 11 36          	vmovupd YMMWORD PTR [rsi],ymm6
  9599d0:	62 73 7d 48 19 66 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm12,0x2
  9599d7:	02 
  9599d8:	c5 7d 11 66 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm12
  9599dd:	62 73 7d 48 19 5e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm11,0x2
  9599e4:	02 
  9599e5:	c5 7d 11 5e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm11
  9599ea:	62 f3 7d 48 19 56 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm2,0x2
  9599f1:	02 
  9599f2:	c5 fd 11 96 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm2
  9599f9:	00 
  9599fa:	62 f3 7d 48 19 7e 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm7,0x2
  959a01:	02 
  959a02:	c5 fd 11 be c0 00 00 	vmovupd YMMWORD PTR [rsi+0xc0],ymm7
  959a09:	00 
  959a0a:	62 f3 7d 48 19 4e 11 	vextractf32x4 XMMWORD PTR [rsi+0x110],zmm1,0x2
  959a11:	02 
  959a12:	c5 fd 11 8e f0 00 00 	vmovupd YMMWORD PTR [rsi+0xf0],ymm1
  959a19:	00 
  959a1a:	c5 f8 77             	vzeroupper
  959a1d:	c3                   	ret
