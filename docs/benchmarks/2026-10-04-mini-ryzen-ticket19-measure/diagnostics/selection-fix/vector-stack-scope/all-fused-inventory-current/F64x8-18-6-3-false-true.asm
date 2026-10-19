
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000923080 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  923080:	62 f1 fd 48 10 05 de 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7a3cde]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  923087:	3c 7a ff 
  92308a:	62 f1 fd 48 10 0d 54 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7a3c54]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  923091:	3c 7a ff 
  923094:	62 f1 fd 48 10 15 8a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff7a3c8a]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  92309b:	3c 7a ff 
  92309e:	48 c1 e2 05          	shl    rdx,0x5
  9230a2:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  9230a6:	31 d2                	xor    edx,edx
  9230a8:	62 f1 fd 48 28 1d 4e 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff75da4e]        # 80b00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xdfb0>
  9230af:	da 75 ff 
  9230b2:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  9230b6:	62 f1 fd 48 28 2d 80 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff75da80]        # 80b40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xdff0>
  9230bd:	da 75 ff 
  9230c0:	62 f2 fd 48 19 35 ce 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff7519ce]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  9230c7:	19 75 ff 
  9230ca:	62 f2 fd 48 19 3d 4c 	vbroadcastsd zmm7,QWORD PTR [rip+0xffffffffff751b4c]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  9230d1:	1b 75 ff 
  9230d4:	62 e1 fd 28 28 1d 22 	vmovapd ymm19,YMMWORD PTR [rip+0xffffffffff753c22]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  9230db:	3c 75 ff 
  9230de:	62 71 fd 48 28 0d 98 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff75da98]        # 80b80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe030>
  9230e5:	da 75 ff 
  9230e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  9230ef:	00 
  9230f0:	c5 7b 12 54 17 28    	vmovddup xmm10,QWORD PTR [rdi+rdx*1+0x28]
  9230f6:	c4 63 29 0d 54 17 20 	vblendpd xmm10,xmm10,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  9230fd:	01 
  9230fe:	c5 7d 10 1c 17       	vmovupd ymm11,YMMWORD PTR [rdi+rdx*1]
  923103:	c5 7d 10 64 17 30    	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0x30]
  923109:	c5 7d 10 74 17 60    	vmovupd ymm14,YMMWORD PTR [rdi+rdx*1+0x60]
  92310f:	c5 7d 10 bc 17 90 00 	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0x90]
  923116:	00 00 
  923118:	62 53 25 48 18 d2 02 	vinsertf32x4 zmm10,zmm11,xmm10,0x2
  92311f:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  923125:	62 72 e5 48 7f dc    	vpermt2pd zmm11,zmm3,zmm4
  92312b:	c5 7b 12 6c 17 58    	vmovddup xmm13,QWORD PTR [rdi+rdx*1+0x58]
  923131:	62 72 d5 48 7f d4    	vpermt2pd zmm10,zmm5,zmm4
  923137:	c4 63 11 0d 6c 17 50 	vblendpd xmm13,xmm13,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  92313e:	01 
  92313f:	62 c3 1d 48 18 c5 02 	vinsertf32x4 zmm16,zmm12,xmm13,0x2
  923146:	62 31 fd 48 28 e8    	vmovapd zmm13,zmm16
  92314c:	62 72 e5 48 7f ec    	vpermt2pd zmm13,zmm3,zmm4
  923152:	c5 7b 12 a4 17 88 00 	vmovddup xmm12,QWORD PTR [rdi+rdx*1+0x88]
  923159:	00 00 
  92315b:	62 e2 d5 48 7f c4    	vpermt2pd zmm16,zmm5,zmm4
  923161:	c4 63 19 0d a4 17 80 	vblendpd xmm12,xmm12,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  923168:	00 00 00 01 
  92316c:	62 53 0d 48 18 f4 02 	vinsertf32x4 zmm14,zmm14,xmm12,0x2
  923173:	62 c1 fd 48 28 ce    	vmovapd zmm17,zmm14
  923179:	62 e2 e5 48 7f cc    	vpermt2pd zmm17,zmm3,zmm4
  92317f:	c5 7b 12 a4 17 b8 00 	vmovddup xmm12,QWORD PTR [rdi+rdx*1+0xb8]
  923186:	00 00 
  923188:	62 72 d5 48 7f f4    	vpermt2pd zmm14,zmm5,zmm4
  92318e:	c4 63 19 0d a4 17 b0 	vblendpd xmm12,xmm12,XMMWORD PTR [rdi+rdx*1+0xb0],0x1
  923195:	00 00 00 01 
  923199:	62 53 05 48 18 fc 02 	vinsertf32x4 zmm15,zmm15,xmm12,0x2
  9231a0:	62 c1 fd 48 28 d7    	vmovapd zmm18,zmm15
  9231a6:	62 e2 e5 48 7f d4    	vpermt2pd zmm18,zmm3,zmm4
  9231ac:	62 72 d5 48 7f fc    	vpermt2pd zmm15,zmm5,zmm4
  9231b2:	c5 7d 10 a4 17 c0 00 	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0xc0]
  9231b9:	00 00 
  9231bb:	c5 7b 12 84 17 e8 00 	vmovddup xmm8,QWORD PTR [rdi+rdx*1+0xe8]
  9231c2:	00 00 
  9231c4:	c4 63 39 0d 84 17 e0 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+rdx*1+0xe0],0x1
  9231cb:	00 00 00 01 
  9231cf:	62 53 1d 48 18 c0 02 	vinsertf32x4 zmm8,zmm12,xmm8,0x2
  9231d6:	62 c1 fd 48 28 e0    	vmovapd zmm20,zmm8
  9231dc:	62 e2 e5 48 7f e4    	vpermt2pd zmm20,zmm3,zmm4
  9231e2:	62 72 d5 48 7f c4    	vpermt2pd zmm8,zmm5,zmm4
  9231e8:	c5 7b 12 a4 17 18 01 	vmovddup xmm12,QWORD PTR [rdi+rdx*1+0x118]
  9231ef:	00 00 
  9231f1:	c4 63 19 0d a4 17 10 	vblendpd xmm12,xmm12,XMMWORD PTR [rdi+rdx*1+0x110],0x1
  9231f8:	01 00 00 01 
  9231fc:	62 e1 fd 28 10 ac 17 	vmovupd ymm21,YMMWORD PTR [rdi+rdx*1+0xf0]
  923203:	f0 00 00 00 
  923207:	62 c3 55 40 18 ec 02 	vinsertf32x4 zmm21,zmm21,xmm12,0x2
  92320e:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  923214:	62 e2 e5 48 7f f4    	vpermt2pd zmm22,zmm3,zmm4
  92321a:	62 e2 d5 48 7f ec    	vpermt2pd zmm21,zmm5,zmm4
  923220:	62 a1 f5 40 58 fc    	vaddpd zmm23,zmm17,zmm20
  923226:	62 21 a5 48 58 c7    	vaddpd zmm24,zmm11,zmm23
  92322c:	62 41 cd 40 58 cd    	vaddpd zmm25,zmm22,zmm13
  923232:	62 01 ed 40 58 d1    	vaddpd zmm26,zmm18,zmm25
  923238:	62 01 bd 40 58 da    	vaddpd zmm27,zmm24,zmm26
  92323e:	62 41 8d 48 58 e0    	vaddpd zmm28,zmm14,zmm8
  923244:	62 01 ad 48 58 ec    	vaddpd zmm29,zmm10,zmm28
  92324a:	62 21 d5 40 58 f0    	vaddpd zmm30,zmm21,zmm16
  923250:	62 01 85 48 58 fe    	vaddpd zmm31,zmm15,zmm30
  923256:	62 11 95 40 58 e7    	vaddpd zmm12,zmm29,zmm31
  92325c:	62 32 cd 48 bc df    	vfnmadd231pd zmm11,zmm6,zmm23
  923262:	62 51 8d 48 5c c0    	vsubpd zmm8,zmm14,zmm8
  923268:	62 71 bd 48 59 c7    	vmulpd zmm8,zmm8,zmm7
  92326e:	62 51 a5 48 58 f0    	vaddpd zmm14,zmm11,zmm8
  923274:	62 82 cd 48 bc d1    	vfnmadd231pd zmm18,zmm6,zmm25
  92327a:	62 a1 d5 40 5c c0    	vsubpd zmm16,zmm21,zmm16
  923280:	62 e1 fd 40 59 c7    	vmulpd zmm16,zmm16,zmm7
  923286:	62 a1 ed 40 58 e8    	vaddpd zmm21,zmm18,zmm16
  92328c:	62 a1 8d 48 5c fd    	vsubpd zmm23,zmm14,zmm21
  923292:	62 12 cd 48 bc d4    	vfnmadd231pd zmm10,zmm6,zmm28
  923298:	62 a1 f5 40 5c cc    	vsubpd zmm17,zmm17,zmm20
  92329e:	62 e1 f5 40 59 cf    	vmulpd zmm17,zmm17,zmm7
  9232a4:	62 a1 ad 48 5c e1    	vsubpd zmm20,zmm10,zmm17
  9232aa:	62 12 cd 48 bc fe    	vfnmadd231pd zmm15,zmm6,zmm30
  9232b0:	62 51 cd 40 5c ed    	vsubpd zmm13,zmm22,zmm13
  9232b6:	62 71 95 48 59 ef    	vmulpd zmm13,zmm13,zmm7
  9232bc:	62 c1 85 48 5c f5    	vsubpd zmm22,zmm15,zmm13
  9232c2:	62 21 dd 40 5c ce    	vsubpd zmm25,zmm20,zmm22
  9232c8:	62 51 a5 48 5c c0    	vsubpd zmm8,zmm11,zmm8
  9232ce:	62 31 ed 40 5c d8    	vsubpd zmm11,zmm18,zmm16
  9232d4:	62 c1 bd 48 58 c3    	vaddpd zmm16,zmm8,zmm11
  9232da:	62 51 f5 40 58 d2    	vaddpd zmm10,zmm17,zmm10
  9232e0:	62 51 95 48 58 ef    	vaddpd zmm13,zmm13,zmm15
  9232e6:	62 51 ad 48 58 fd    	vaddpd zmm15,zmm10,zmm13
  9232ec:	62 81 bd 40 5c ca    	vsubpd zmm17,zmm24,zmm26
  9232f2:	62 81 95 40 5c d7    	vsubpd zmm18,zmm29,zmm31
  9232f8:	62 31 8d 48 58 f5    	vaddpd zmm14,zmm14,zmm21
  9232fe:	62 a1 dd 40 58 e6    	vaddpd zmm20,zmm20,zmm22
  923304:	62 51 bd 48 5c c3    	vsubpd zmm8,zmm8,zmm11
  92330a:	62 51 ad 48 5c d5    	vsubpd zmm10,zmm10,zmm13
  923310:	62 42 fd 48 7f de    	vpermt2pd zmm27,zmm0,zmm14
  923316:	62 c2 fd 48 7f f8    	vpermt2pd zmm23,zmm0,zmm8
  92331c:	62 e2 fd 48 7f c4    	vpermt2pd zmm16,zmm0,zmm4
  923322:	62 e2 fd 48 7f cc    	vpermt2pd zmm17,zmm0,zmm4
  923328:	62 11 fd 48 28 c3    	vmovapd zmm8,zmm27
  92332e:	62 32 f5 48 7f c0    	vpermt2pd zmm8,zmm1,zmm16
  923334:	62 22 ed 48 7f d8    	vpermt2pd zmm27,zmm2,zmm16
  92333a:	62 31 fd 48 28 df    	vmovapd zmm11,zmm23
  923340:	62 32 f5 48 7f d9    	vpermt2pd zmm11,zmm1,zmm17
  923346:	62 a2 ed 48 7f f9    	vpermt2pd zmm23,zmm2,zmm17
  92334c:	62 31 a5 40 14 ef    	vunpcklpd zmm13,zmm27,zmm23
  923352:	62 51 bd 48 14 f3    	vunpcklpd zmm14,zmm8,zmm11
  923358:	62 51 bd 48 15 c3    	vunpckhpd zmm8,zmm8,zmm11
  92335e:	62 32 fd 48 7f e4    	vpermt2pd zmm12,zmm0,zmm20
  923364:	62 42 fd 48 7f ca    	vpermt2pd zmm25,zmm0,zmm10
  92336a:	62 72 fd 48 7f fc    	vpermt2pd zmm15,zmm0,zmm4
  923370:	62 e2 fd 48 7f d4    	vpermt2pd zmm18,zmm0,zmm4
  923376:	62 51 fd 48 28 d4    	vmovapd zmm10,zmm12
  92337c:	62 52 f5 48 7f d7    	vpermt2pd zmm10,zmm1,zmm15
  923382:	62 52 ed 48 7f e7    	vpermt2pd zmm12,zmm2,zmm15
  923388:	62 11 fd 48 28 d9    	vmovapd zmm11,zmm25
  92338e:	62 32 f5 48 7f da    	vpermt2pd zmm11,zmm1,zmm18
  923394:	62 22 ed 48 7f ca    	vpermt2pd zmm25,zmm2,zmm18
  92339a:	62 11 9d 48 14 e1    	vunpcklpd zmm12,zmm12,zmm25
  9233a0:	62 51 ad 48 14 fb    	vunpcklpd zmm15,zmm10,zmm11
  9233a6:	62 51 ad 48 15 d3    	vunpckhpd zmm10,zmm10,zmm11
  9233ac:	62 71 fd 48 10 59 02 	vmovupd zmm11,ZMMWORD PTR [rcx+0x80]
  9233b3:	62 e1 fd 48 10 41 03 	vmovupd zmm16,ZMMWORD PTR [rcx+0xc0]
  9233ba:	62 e1 fd 48 10 49 04 	vmovupd zmm17,ZMMWORD PTR [rcx+0x100]
  9233c1:	62 e1 fd 48 10 51 05 	vmovupd zmm18,ZMMWORD PTR [rcx+0x140]
  9233c8:	62 c1 bd 48 59 e3    	vmulpd zmm20,zmm8,zmm11
  9233ce:	62 a2 ad 48 bc e0    	vfnmadd231pd zmm20,zmm10,zmm16
  9233d4:	62 a1 95 48 59 e9    	vmulpd zmm21,zmm13,zmm17
  9233da:	62 a2 9d 48 bc ea    	vfnmadd231pd zmm21,zmm12,zmm18
  9233e0:	62 a1 dd 40 58 f5    	vaddpd zmm22,zmm20,zmm21
  9233e6:	62 51 ad 48 59 d3    	vmulpd zmm10,zmm10,zmm11
  9233ec:	62 32 bd 48 b8 d0    	vfmadd231pd zmm10,zmm8,zmm16
  9233f2:	62 31 9d 48 59 c1    	vmulpd zmm8,zmm12,zmm17
  9233f8:	62 32 95 48 b8 c2    	vfmadd231pd zmm8,zmm13,zmm18
  9233fe:	62 51 ad 48 58 d8    	vaddpd zmm11,zmm10,zmm8
  923404:	62 71 fd 48 28 e6    	vmovapd zmm12,zmm6
  92340a:	62 52 cd 40 ac e6    	vfnmadd213pd zmm12,zmm22,zmm14
  923410:	62 51 ad 48 5c c0    	vsubpd zmm8,zmm10,zmm8
  923416:	62 71 bd 48 59 c7    	vmulpd zmm8,zmm8,zmm7
  92341c:	62 51 9d 48 58 d0    	vaddpd zmm10,zmm12,zmm8
  923422:	62 71 fd 48 28 ee    	vmovapd zmm13,zmm6
  923428:	62 52 a5 48 ac ef    	vfnmadd213pd zmm13,zmm11,zmm15
  92342e:	62 a1 dd 40 5c c5    	vsubpd zmm16,zmm20,zmm21
  923434:	62 e1 fd 40 59 c7    	vmulpd zmm16,zmm16,zmm7
  92343a:	62 a1 95 48 5c c8    	vsubpd zmm17,zmm13,zmm16
  923440:	62 c1 fd 48 28 d2    	vmovapd zmm18,zmm10
  923446:	62 a2 e5 40 7f d1    	vpermt2pd zmm18,zmm19,zmm17
  92344c:	62 51 9d 48 5c c0    	vsubpd zmm8,zmm12,zmm8
  923452:	62 31 95 48 58 e0    	vaddpd zmm12,zmm13,zmm16
  923458:	62 51 fd 48 28 e8    	vmovapd zmm13,zmm8
  92345e:	62 52 e5 40 7f ec    	vpermt2pd zmm13,zmm19,zmm12
  923464:	62 31 8d 48 58 f6    	vaddpd zmm14,zmm14,zmm22
  92346a:	62 51 85 48 58 db    	vaddpd zmm11,zmm15,zmm11
  923470:	62 51 fd 48 28 fe    	vmovapd zmm15,zmm14
  923476:	62 52 e5 40 7f fb    	vpermt2pd zmm15,zmm19,zmm11
  92347c:	62 52 b5 48 7f f3    	vpermt2pd zmm14,zmm9,zmm11
  923482:	62 71 fd 48 11 34 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm14
  923489:	c5 7d 11 7c 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm15
  92348f:	62 32 b5 48 7f d1    	vpermt2pd zmm10,zmm9,zmm17
  923495:	62 71 fd 48 11 94 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x60],zmm10
  92349c:	60 00 00 00 
  9234a0:	62 e1 fd 28 11 54 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm18
  9234a7:	05 
  9234a8:	62 52 b5 48 7f c4    	vpermt2pd zmm8,zmm9,zmm12
  9234ae:	62 71 fd 48 11 44 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm8
  9234b5:	03 
  9234b6:	c5 7d 11 ac 16 00 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x100],ymm13
  9234bd:	00 00 
  9234bf:	48 81 c2 20 01 00 00 	add    rdx,0x120
  9234c6:	48 39 d0             	cmp    rax,rdx
  9234c9:	0f 85 21 fc ff ff    	jne    9230f0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  9234cf:	c5 f8 77             	vzeroupper
  9234d2:	c3                   	ret
