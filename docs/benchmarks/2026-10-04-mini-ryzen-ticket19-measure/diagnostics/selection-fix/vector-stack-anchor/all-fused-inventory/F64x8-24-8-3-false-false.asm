
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000972100 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  972100:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  972105:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  97210c:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  972110:	c5 fd 10 67 30       	vmovupd ymm4,YMMWORD PTR [rdi+0x30]
  972115:	c5 fd 10 7f 60       	vmovupd ymm7,YMMWORD PTR [rdi+0x60]
  97211a:	c5 7d 10 8f 90 00 00 	vmovupd ymm9,YMMWORD PTR [rdi+0x90]
  972121:	00 
  972122:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  972129:	62 f1 fd 48 28 0d 8d 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff714f8d]        # 870c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14570>
  972130:	4f 71 ff 
  972133:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  972137:	62 e1 fd 48 28 d0    	vmovapd zmm18,zmm0
  97213d:	62 e2 f5 48 7f d2    	vpermt2pd zmm18,zmm1,zmm2
  972143:	62 71 fd 48 28 1d b3 	vmovapd zmm11,ZMMWORD PTR [rip+0xffffffffff714fb3]        # 87100 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x145b0>
  97214a:	4f 71 ff 
  97214d:	62 f2 a5 48 7f c2    	vpermt2pd zmm0,zmm11,zmm2
  972153:	c5 fb 12 6f 58       	vmovddup xmm5,QWORD PTR [rdi+0x58]
  972158:	c4 e3 51 0d 6f 50 01 	vblendpd xmm5,xmm5,XMMWORD PTR [rdi+0x50],0x1
  97215f:	62 f3 5d 48 18 ed 02 	vinsertf32x4 zmm5,zmm4,xmm5,0x2
  972166:	62 f1 fd 48 28 f5    	vmovapd zmm6,zmm5
  97216c:	62 f2 f5 48 7f f2    	vpermt2pd zmm6,zmm1,zmm2
  972172:	62 f2 a5 48 7f ea    	vpermt2pd zmm5,zmm11,zmm2
  972178:	c5 fb 12 a7 88 00 00 	vmovddup xmm4,QWORD PTR [rdi+0x88]
  97217f:	00 
  972180:	c4 e3 59 0d a7 80 00 	vblendpd xmm4,xmm4,XMMWORD PTR [rdi+0x80],0x1
  972187:	00 00 01 
  97218a:	62 73 45 48 18 c4 02 	vinsertf32x4 zmm8,zmm7,xmm4,0x2
  972191:	62 d1 fd 48 28 e0    	vmovapd zmm4,zmm8
  972197:	62 f2 f5 48 7f e2    	vpermt2pd zmm4,zmm1,zmm2
  97219d:	62 72 a5 48 7f c2    	vpermt2pd zmm8,zmm11,zmm2
  9721a3:	c5 fb 12 bf b8 00 00 	vmovddup xmm7,QWORD PTR [rdi+0xb8]
  9721aa:	00 
  9721ab:	c4 e3 41 0d bf b0 00 	vblendpd xmm7,xmm7,XMMWORD PTR [rdi+0xb0],0x1
  9721b2:	00 00 01 
  9721b5:	62 73 35 48 18 d7 02 	vinsertf32x4 zmm10,zmm9,xmm7,0x2
  9721bc:	62 51 fd 48 28 ca    	vmovapd zmm9,zmm10
  9721c2:	62 72 f5 48 7f ca    	vpermt2pd zmm9,zmm1,zmm2
  9721c8:	62 72 a5 48 7f d2    	vpermt2pd zmm10,zmm11,zmm2
  9721ce:	c5 fb 12 bf e8 00 00 	vmovddup xmm7,QWORD PTR [rdi+0xe8]
  9721d5:	00 
  9721d6:	c4 e3 41 0d bf e0 00 	vblendpd xmm7,xmm7,XMMWORD PTR [rdi+0xe0],0x1
  9721dd:	00 00 01 
  9721e0:	c5 7d 10 a7 c0 00 00 	vmovupd ymm12,YMMWORD PTR [rdi+0xc0]
  9721e7:	00 
  9721e8:	62 73 1d 48 18 e7 02 	vinsertf32x4 zmm12,zmm12,xmm7,0x2
  9721ef:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  9721f5:	62 72 f5 48 7f ea    	vpermt2pd zmm13,zmm1,zmm2
  9721fb:	62 72 a5 48 7f e2    	vpermt2pd zmm12,zmm11,zmm2
  972201:	c5 fd 10 bf f0 00 00 	vmovupd ymm7,YMMWORD PTR [rdi+0xf0]
  972208:	00 
  972209:	c5 7b 12 b7 18 01 00 	vmovddup xmm14,QWORD PTR [rdi+0x118]
  972210:	00 
  972211:	c4 63 09 0d b7 10 01 	vblendpd xmm14,xmm14,XMMWORD PTR [rdi+0x110],0x1
  972218:	00 00 01 
  97221b:	62 53 45 48 18 f6 02 	vinsertf32x4 zmm14,zmm7,xmm14,0x2
  972222:	62 51 fd 48 28 fe    	vmovapd zmm15,zmm14
  972228:	62 72 f5 48 7f fa    	vpermt2pd zmm15,zmm1,zmm2
  97222e:	62 72 a5 48 7f f2    	vpermt2pd zmm14,zmm11,zmm2
  972234:	c5 fb 12 bf 48 01 00 	vmovddup xmm7,QWORD PTR [rdi+0x148]
  97223b:	00 
  97223c:	62 e1 fd 28 10 47 09 	vmovupd ymm16,YMMWORD PTR [rdi+0x120]
  972243:	c4 e3 41 0d bf 40 01 	vblendpd xmm7,xmm7,XMMWORD PTR [rdi+0x140],0x1
  97224a:	00 00 01 
  97224d:	62 e3 7d 40 18 c7 02 	vinsertf32x4 zmm16,zmm16,xmm7,0x2
  972254:	62 a1 fd 48 28 c8    	vmovapd zmm17,zmm16
  97225a:	62 e2 f5 48 7f ca    	vpermt2pd zmm17,zmm1,zmm2
  972260:	62 e2 a5 48 7f c2    	vpermt2pd zmm16,zmm11,zmm2
  972266:	c5 fd 10 bf 50 01 00 	vmovupd ymm7,YMMWORD PTR [rdi+0x150]
  97226d:	00 
  97226e:	c5 fb 12 9f 78 01 00 	vmovddup xmm3,QWORD PTR [rdi+0x178]
  972275:	00 
  972276:	c4 e3 61 0d 9f 70 01 	vblendpd xmm3,xmm3,XMMWORD PTR [rdi+0x170],0x1
  97227d:	00 00 01 
  972280:	62 f3 45 48 18 db 02 	vinsertf32x4 zmm3,zmm7,xmm3,0x2
  972287:	62 f2 e5 48 77 ca    	vpermi2pd zmm1,zmm3,zmm2
  97228d:	62 f2 a5 48 7f da    	vpermt2pd zmm3,zmm11,zmm2
  972293:	62 51 ed 40 58 dd    	vaddpd zmm11,zmm18,zmm13
  972299:	62 a1 dd 48 58 d9    	vaddpd zmm19,zmm4,zmm17
  97229f:	62 a1 a5 48 58 e3    	vaddpd zmm20,zmm11,zmm19
  9722a5:	62 c1 cd 48 58 ef    	vaddpd zmm21,zmm6,zmm15
  9722ab:	62 e1 b5 48 58 f1    	vaddpd zmm22,zmm9,zmm1
  9722b1:	62 a1 d5 40 58 fe    	vaddpd zmm23,zmm21,zmm22
  9722b7:	62 b1 dd 40 58 ff    	vaddpd zmm7,zmm20,zmm23
  9722bd:	62 41 fd 48 58 c4    	vaddpd zmm24,zmm0,zmm12
  9722c3:	62 21 bd 48 58 c8    	vaddpd zmm25,zmm8,zmm16
  9722c9:	62 01 bd 40 58 d1    	vaddpd zmm26,zmm24,zmm25
  9722cf:	62 41 d5 48 58 de    	vaddpd zmm27,zmm5,zmm14
  9722d5:	62 61 ad 48 58 e3    	vaddpd zmm28,zmm10,zmm3
  9722db:	62 01 a5 40 58 ec    	vaddpd zmm29,zmm27,zmm28
  9722e1:	62 91 ad 40 58 d5    	vaddpd zmm2,zmm26,zmm29
  9722e7:	62 51 ed 40 5c ed    	vsubpd zmm13,zmm18,zmm13
  9722ed:	62 31 bd 48 5c c0    	vsubpd zmm8,zmm8,zmm16
  9722f3:	62 c1 95 48 58 c0    	vaddpd zmm16,zmm13,zmm8
  9722f9:	62 d1 cd 48 5c f7    	vsubpd zmm6,zmm6,zmm15
  9722ff:	62 d1 d5 48 5c ee    	vsubpd zmm5,zmm5,zmm14
  972305:	62 72 fd 48 19 35 91 	vbroadcastsd zmm14,QWORD PTR [rip+0xffffffffff702b91]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  97230c:	2b 70 ff 
  97230f:	62 71 cd 48 58 fd    	vaddpd zmm15,zmm6,zmm5
  972315:	62 51 85 48 59 fe    	vmulpd zmm15,zmm15,zmm14
  97231b:	62 f1 ad 48 5c db    	vsubpd zmm3,zmm10,zmm3
  972321:	62 f1 b5 48 5c c9    	vsubpd zmm1,zmm9,zmm1
  972327:	62 71 e5 48 5c c9    	vsubpd zmm9,zmm3,zmm1
  97232d:	62 51 b5 48 59 ce    	vmulpd zmm9,zmm9,zmm14
  972333:	62 51 85 48 58 d1    	vaddpd zmm10,zmm15,zmm9
  972339:	62 c1 fd 40 58 d2    	vaddpd zmm18,zmm16,zmm10
  97233f:	62 d1 fd 48 5c c4    	vsubpd zmm0,zmm0,zmm12
  972345:	62 f1 f5 40 5c e4    	vsubpd zmm4,zmm17,zmm4
  97234b:	62 71 dd 48 58 e0    	vaddpd zmm12,zmm4,zmm0
  972351:	62 f1 d5 48 5c ee    	vsubpd zmm5,zmm5,zmm6
  972357:	62 d1 d5 48 59 ee    	vmulpd zmm5,zmm5,zmm14
  97235d:	62 f1 f5 48 58 cb    	vaddpd zmm1,zmm1,zmm3
  972363:	62 d1 f5 48 59 ce    	vmulpd zmm1,zmm1,zmm14
  972369:	62 f1 d5 48 5c d9    	vsubpd zmm3,zmm5,zmm1
  97236f:	62 f1 9d 48 58 f3    	vaddpd zmm6,zmm12,zmm3
  972375:	62 31 a5 48 5c db    	vsubpd zmm11,zmm11,zmm19
  97237b:	62 11 a5 40 5c f4    	vsubpd zmm14,zmm27,zmm28
  972381:	62 c1 a5 48 58 ce    	vaddpd zmm17,zmm11,zmm14
  972387:	62 81 bd 40 5c d9    	vsubpd zmm19,zmm24,zmm25
  97238d:	62 a1 cd 40 5c ed    	vsubpd zmm21,zmm22,zmm21
  972393:	62 a1 d5 40 58 f3    	vaddpd zmm22,zmm21,zmm19
  972399:	62 51 95 48 5c c0    	vsubpd zmm8,zmm13,zmm8
  97239f:	62 f1 d5 48 58 c9    	vaddpd zmm1,zmm5,zmm1
  9723a5:	62 f1 bd 48 58 e9    	vaddpd zmm5,zmm8,zmm1
  9723ab:	62 f1 fd 48 5c c4    	vsubpd zmm0,zmm0,zmm4
  9723b1:	62 d1 b5 48 5c e7    	vsubpd zmm4,zmm9,zmm15
  9723b7:	62 71 fd 48 58 cc    	vaddpd zmm9,zmm0,zmm4
  9723bd:	62 31 dd 40 5c ef    	vsubpd zmm13,zmm20,zmm23
  9723c3:	62 11 ad 40 5c fd    	vsubpd zmm15,zmm26,zmm29
  9723c9:	62 51 fd 40 5c d2    	vsubpd zmm10,zmm16,zmm10
  9723cf:	62 f1 9d 48 5c db    	vsubpd zmm3,zmm12,zmm3
  9723d5:	62 51 a5 48 5c de    	vsubpd zmm11,zmm11,zmm14
  9723db:	62 31 e5 40 5c e5    	vsubpd zmm12,zmm19,zmm21
  9723e1:	62 f1 bd 48 5c c9    	vsubpd zmm1,zmm8,zmm1
  9723e7:	62 f1 fd 48 5c c4    	vsubpd zmm0,zmm0,zmm4
  9723ed:	62 f1 fd 48 10 25 71 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff754971]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  9723f4:	49 75 ff 
  9723f7:	62 d2 dd 48 7f fd    	vpermt2pd zmm7,zmm4,zmm13
  9723fd:	62 c2 dd 48 7f d2    	vpermt2pd zmm18,zmm4,zmm10
  972403:	62 c2 dd 48 7f cb    	vpermt2pd zmm17,zmm4,zmm11
  972409:	62 f2 dd 48 7f e9    	vpermt2pd zmm5,zmm4,zmm1
  97240f:	62 f1 fd 48 10 0d cf 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7548cf]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  972416:	48 75 ff 
  972419:	62 71 fd 48 28 c7    	vmovapd zmm8,zmm7
  97241f:	62 32 f5 48 7f c1    	vpermt2pd zmm8,zmm1,zmm17
  972425:	62 71 fd 48 10 15 f9 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff7548f9]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  97242c:	48 75 ff 
  97242f:	62 b2 ad 48 7f f9    	vpermt2pd zmm7,zmm10,zmm17
  972435:	62 31 fd 48 28 da    	vmovapd zmm11,zmm18
  97243b:	62 72 f5 48 7f dd    	vpermt2pd zmm11,zmm1,zmm5
  972441:	62 e2 ad 48 7f d5    	vpermt2pd zmm18,zmm10,zmm5
  972447:	62 b1 c5 48 14 ea    	vunpcklpd zmm5,zmm7,zmm18
  97244d:	62 d1 bd 48 14 fb    	vunpcklpd zmm7,zmm8,zmm11
  972453:	62 51 bd 48 15 c3    	vunpckhpd zmm8,zmm8,zmm11
  972459:	62 d2 dd 48 7f d7    	vpermt2pd zmm2,zmm4,zmm15
  97245f:	62 f2 dd 48 7f f3    	vpermt2pd zmm6,zmm4,zmm3
  972465:	62 c2 dd 48 7f f4    	vpermt2pd zmm22,zmm4,zmm12
  97246b:	62 72 dd 48 7f c8    	vpermt2pd zmm9,zmm4,zmm0
  972471:	62 f1 fd 48 28 c2    	vmovapd zmm0,zmm2
  972477:	62 b2 f5 48 7f c6    	vpermt2pd zmm0,zmm1,zmm22
  97247d:	62 b2 ad 48 7f d6    	vpermt2pd zmm2,zmm10,zmm22
  972483:	62 d2 cd 48 77 c9    	vpermi2pd zmm1,zmm6,zmm9
  972489:	62 d2 ad 48 7f f1    	vpermt2pd zmm6,zmm10,zmm9
  97248f:	62 f1 ed 48 14 d6    	vunpcklpd zmm2,zmm2,zmm6
  972495:	62 f1 fd 48 14 d9    	vunpcklpd zmm3,zmm0,zmm1
  97249b:	62 f1 fd 48 15 c1    	vunpckhpd zmm0,zmm0,zmm1
  9724a1:	62 f1 fd 48 10 4a 02 	vmovupd zmm1,ZMMWORD PTR [rdx+0x80]
  9724a8:	62 f1 fd 48 10 62 03 	vmovupd zmm4,ZMMWORD PTR [rdx+0xc0]
  9724af:	62 f1 fd 48 10 72 04 	vmovupd zmm6,ZMMWORD PTR [rdx+0x100]
  9724b6:	62 71 fd 48 10 4a 05 	vmovupd zmm9,ZMMWORD PTR [rdx+0x140]
  9724bd:	62 71 fd 48 59 d1    	vmulpd zmm10,zmm0,zmm1
  9724c3:	62 72 bd 48 b8 d4    	vfmadd231pd zmm10,zmm8,zmm4
  9724c9:	62 71 ed 48 59 de    	vmulpd zmm11,zmm2,zmm6
  9724cf:	62 52 d5 48 b8 d9    	vfmadd231pd zmm11,zmm5,zmm9
  9724d5:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  9724db:	62 72 fd 48 19 2d b3 	vbroadcastsd zmm13,QWORD PTR [rip+0xffffffffff7025b3]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  9724e2:	25 70 ff 
  9724e5:	62 51 fd 48 28 f5    	vmovapd zmm14,zmm13
  9724eb:	62 72 9d 48 ac f3    	vfnmadd213pd zmm14,zmm12,zmm3
  9724f1:	62 f1 bd 48 59 c9    	vmulpd zmm1,zmm8,zmm1
  9724f7:	62 f2 fd 48 bc cc    	vfnmadd231pd zmm1,zmm0,zmm4
  9724fd:	62 f1 d5 48 59 c6    	vmulpd zmm0,zmm5,zmm6
  972503:	62 d2 ed 48 bc c1    	vfnmadd231pd zmm0,zmm2,zmm9
  972509:	62 f2 fd 48 19 15 0d 	vbroadcastsd zmm2,QWORD PTR [rip+0xffffffffff70270d]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  972510:	27 70 ff 
  972513:	62 f1 f5 48 5c e0    	vsubpd zmm4,zmm1,zmm0
  972519:	62 f1 dd 48 59 e2    	vmulpd zmm4,zmm4,zmm2
  97251f:	62 f1 8d 48 58 ec    	vaddpd zmm5,zmm14,zmm4
  972525:	62 f1 f5 48 58 c0    	vaddpd zmm0,zmm1,zmm0
  97252b:	62 72 fd 48 ac ef    	vfnmadd213pd zmm13,zmm0,zmm7
  972531:	62 d1 ad 48 5c cb    	vsubpd zmm1,zmm10,zmm11
  972537:	62 f1 f5 48 59 ca    	vmulpd zmm1,zmm1,zmm2
  97253d:	62 f1 95 48 5c d1    	vsubpd zmm2,zmm13,zmm1
  972543:	62 f1 8d 48 5c e4    	vsubpd zmm4,zmm14,zmm4
  972549:	62 f1 95 48 58 c9    	vaddpd zmm1,zmm13,zmm1
  97254f:	62 d1 e5 48 58 dc    	vaddpd zmm3,zmm3,zmm12
  972555:	62 f1 c5 48 58 c0    	vaddpd zmm0,zmm7,zmm0
  97255b:	62 f1 fd 48 28 35 db 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff714bdb]        # 87140 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x145f0>
  972562:	4b 71 ff 
  972565:	62 f1 fd 48 28 f8    	vmovapd zmm7,zmm0
  97256b:	62 f2 cd 48 7f fb    	vpermt2pd zmm7,zmm6,zmm3
  972571:	62 71 fd 48 28 05 05 	vmovapd zmm8,ZMMWORD PTR [rip+0xffffffffff714c05]        # 87180 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14630>
  972578:	4c 71 ff 
  97257b:	62 f2 bd 48 7f c3    	vpermt2pd zmm0,zmm8,zmm3
  972581:	62 f1 fd 48 11 06    	vmovupd ZMMWORD PTR [rsi],zmm0
  972587:	62 f1 fd 48 11 7e 01 	vmovupd ZMMWORD PTR [rsi+0x40],zmm7
  97258e:	62 f1 fd 48 28 c1    	vmovapd zmm0,zmm1
  972594:	62 f2 cd 48 7f c4    	vpermt2pd zmm0,zmm6,zmm4
  97259a:	62 f2 bd 48 7f cc    	vpermt2pd zmm1,zmm8,zmm4
  9725a0:	62 f1 fd 48 11 4e 02 	vmovupd ZMMWORD PTR [rsi+0x80],zmm1
  9725a7:	62 f1 fd 48 11 46 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm0
  9725ae:	62 f2 ed 48 77 f5    	vpermi2pd zmm6,zmm2,zmm5
  9725b4:	62 f2 bd 48 7f d5    	vpermt2pd zmm2,zmm8,zmm5
  9725ba:	62 f1 fd 48 11 56 04 	vmovupd ZMMWORD PTR [rsi+0x100],zmm2
  9725c1:	62 f1 fd 48 11 76 05 	vmovupd ZMMWORD PTR [rsi+0x140],zmm6
  9725c8:	c5 f8 77             	vzeroupper
  9725cb:	c3                   	ret
