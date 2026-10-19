
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000915f40 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  915f40:	62 f1 fd 48 10 05 1e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7b0e1e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  915f47:	0e 7b ff 
  915f4a:	62 f1 fd 48 10 0d 94 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7b0d94]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  915f51:	0d 7b ff 
  915f54:	62 f1 fd 48 10 15 ca 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff7b0dca]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  915f5b:	0d 7b ff 
  915f5e:	48 c1 e2 07          	shl    rdx,0x7
  915f62:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  915f66:	31 d2                	xor    edx,edx
  915f68:	62 f1 fd 48 28 1d 4e 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff76994e]        # 7f8c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xcd70>
  915f6f:	99 76 ff 
  915f72:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  915f76:	62 f1 fd 48 28 2d 80 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff769980]        # 7f900 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xcdb0>
  915f7d:	99 76 ff 
  915f80:	62 f2 fd 48 19 35 16 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff75ef16]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  915f87:	ef 75 ff 
  915f8a:	62 e2 fd 48 19 2d 04 	vbroadcastsd zmm21,QWORD PTR [rip+0xffffffffff75eb04]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  915f91:	eb 75 ff 
  915f94:	62 e2 fd 48 19 25 82 	vbroadcastsd zmm20,QWORD PTR [rip+0xffffffffff75ec82]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  915f9b:	ec 75 ff 
  915f9e:	62 61 fd 48 28 05 98 	vmovapd zmm24,ZMMWORD PTR [rip+0xffffffffff769998]        # 7f940 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xcdf0>
  915fa5:	99 76 ff 
  915fa8:	62 61 fd 48 28 0d ce 	vmovapd zmm25,ZMMWORD PTR [rip+0xffffffffff7699ce]        # 7f980 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xce30>
  915faf:	99 76 ff 
  915fb2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  915fb9:	1f 84 00 00 00 00 00 
  915fc0:	c5 7b 12 5c 17 28    	vmovddup xmm11,QWORD PTR [rdi+rdx*1+0x28]
  915fc6:	c4 63 21 0d 5c 17 20 	vblendpd xmm11,xmm11,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  915fcd:	01 
  915fce:	c5 7d 10 24 17       	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1]
  915fd3:	c5 7d 10 74 17 30    	vmovupd ymm14,YMMWORD PTR [rdi+rdx*1+0x30]
  915fd9:	62 e1 fd 28 10 44 17 	vmovupd ymm16,YMMWORD PTR [rdi+rdx*1+0x60]
  915fe0:	03 
  915fe1:	62 e1 fd 28 10 94 17 	vmovupd ymm18,YMMWORD PTR [rdi+rdx*1+0x90]
  915fe8:	90 00 00 00 
  915fec:	62 53 1d 48 18 db 02 	vinsertf32x4 zmm11,zmm12,xmm11,0x2
  915ff3:	62 51 fd 48 28 eb    	vmovapd zmm13,zmm11
  915ff9:	62 72 e5 48 7f ec    	vpermt2pd zmm13,zmm3,zmm4
  915fff:	c5 7b 12 64 17 58    	vmovddup xmm12,QWORD PTR [rdi+rdx*1+0x58]
  916005:	c4 63 19 0d 64 17 50 	vblendpd xmm12,xmm12,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  91600c:	01 
  91600d:	62 72 d5 48 7f dc    	vpermt2pd zmm11,zmm5,zmm4
  916013:	62 53 0d 48 18 f4 02 	vinsertf32x4 zmm14,zmm14,xmm12,0x2
  91601a:	62 51 fd 48 28 fe    	vmovapd zmm15,zmm14
  916020:	62 72 e5 48 7f fc    	vpermt2pd zmm15,zmm3,zmm4
  916026:	c5 7b 12 a4 17 88 00 	vmovddup xmm12,QWORD PTR [rdi+rdx*1+0x88]
  91602d:	00 00 
  91602f:	c4 63 19 0d a4 17 80 	vblendpd xmm12,xmm12,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  916036:	00 00 00 01 
  91603a:	62 72 d5 48 7f f4    	vpermt2pd zmm14,zmm5,zmm4
  916040:	62 c3 7d 40 18 cc 02 	vinsertf32x4 zmm17,zmm16,xmm12,0x2
  916047:	62 31 fd 48 28 e1    	vmovapd zmm12,zmm17
  91604d:	62 72 e5 48 7f e4    	vpermt2pd zmm12,zmm3,zmm4
  916053:	c5 7b 12 84 17 b8 00 	vmovddup xmm8,QWORD PTR [rdi+rdx*1+0xb8]
  91605a:	00 00 
  91605c:	c4 63 39 0d 84 17 b0 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+rdx*1+0xb0],0x1
  916063:	00 00 00 01 
  916067:	62 e2 d5 48 7f cc    	vpermt2pd zmm17,zmm5,zmm4
  91606d:	62 c3 6d 40 18 d0 02 	vinsertf32x4 zmm18,zmm18,xmm8,0x2
  916074:	62 a1 fd 48 28 c2    	vmovapd zmm16,zmm18
  91607a:	62 e2 e5 48 7f c4    	vpermt2pd zmm16,zmm3,zmm4
  916080:	62 e2 d5 48 7f d4    	vpermt2pd zmm18,zmm5,zmm4
  916086:	c5 7d 10 84 17 c0 00 	vmovupd ymm8,YMMWORD PTR [rdi+rdx*1+0xc0]
  91608d:	00 00 
  91608f:	c5 fb 12 bc 17 e8 00 	vmovddup xmm7,QWORD PTR [rdi+rdx*1+0xe8]
  916096:	00 00 
  916098:	c4 e3 41 0d bc 17 e0 	vblendpd xmm7,xmm7,XMMWORD PTR [rdi+rdx*1+0xe0],0x1
  91609f:	00 00 00 01 
  9160a3:	62 e3 3d 48 18 df 02 	vinsertf32x4 zmm19,zmm8,xmm7,0x2
  9160aa:	62 b1 fd 48 28 fb    	vmovapd zmm7,zmm19
  9160b0:	62 f2 e5 48 7f fc    	vpermt2pd zmm7,zmm3,zmm4
  9160b6:	62 e2 d5 48 7f dc    	vpermt2pd zmm19,zmm5,zmm4
  9160bc:	c5 7b 12 84 17 18 01 	vmovddup xmm8,QWORD PTR [rdi+rdx*1+0x118]
  9160c3:	00 00 
  9160c5:	62 e1 fd 28 10 b4 17 	vmovupd ymm22,YMMWORD PTR [rdi+rdx*1+0xf0]
  9160cc:	f0 00 00 00 
  9160d0:	c4 63 39 0d 84 17 10 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+rdx*1+0x110],0x1
  9160d7:	01 00 00 01 
  9160db:	62 53 4d 40 18 c0 02 	vinsertf32x4 zmm8,zmm22,xmm8,0x2
  9160e2:	62 c1 fd 48 28 f0    	vmovapd zmm22,zmm8
  9160e8:	62 e2 e5 48 7f f4    	vpermt2pd zmm22,zmm3,zmm4
  9160ee:	62 72 d5 48 7f c4    	vpermt2pd zmm8,zmm5,zmm4
  9160f4:	62 e1 fd 28 10 7c 17 	vmovupd ymm23,YMMWORD PTR [rdi+rdx*1+0x120]
  9160fb:	09 
  9160fc:	c5 7b 12 8c 17 48 01 	vmovddup xmm9,QWORD PTR [rdi+rdx*1+0x148]
  916103:	00 00 
  916105:	c4 63 31 0d 8c 17 40 	vblendpd xmm9,xmm9,XMMWORD PTR [rdi+rdx*1+0x140],0x1
  91610c:	01 00 00 01 
  916110:	62 53 45 40 18 c9 02 	vinsertf32x4 zmm9,zmm23,xmm9,0x2
  916117:	62 c1 fd 48 28 f9    	vmovapd zmm23,zmm9
  91611d:	62 e2 e5 48 7f fc    	vpermt2pd zmm23,zmm3,zmm4
  916123:	62 72 d5 48 7f cc    	vpermt2pd zmm9,zmm5,zmm4
  916129:	c5 7b 12 94 17 78 01 	vmovddup xmm10,QWORD PTR [rdi+rdx*1+0x178]
  916130:	00 00 
  916132:	c4 63 29 0d 94 17 70 	vblendpd xmm10,xmm10,XMMWORD PTR [rdi+rdx*1+0x170],0x1
  916139:	01 00 00 01 
  91613d:	62 61 fd 28 10 94 17 	vmovupd ymm26,YMMWORD PTR [rdi+rdx*1+0x150]
  916144:	50 01 00 00 
  916148:	62 53 2d 40 18 d2 02 	vinsertf32x4 zmm10,zmm26,xmm10,0x2
  91614f:	62 41 fd 48 28 d2    	vmovapd zmm26,zmm10
  916155:	62 62 e5 48 7f d4    	vpermt2pd zmm26,zmm3,zmm4
  91615b:	62 72 d5 48 7f d4    	vpermt2pd zmm10,zmm5,zmm4
  916161:	62 61 95 48 58 df    	vaddpd zmm27,zmm13,zmm7
  916167:	62 f1 95 48 5c ff    	vsubpd zmm7,zmm13,zmm7
  91616d:	62 51 f5 40 58 e9    	vaddpd zmm13,zmm17,zmm9
  916173:	62 51 f5 40 5c c9    	vsubpd zmm9,zmm17,zmm9
  916179:	62 a1 85 48 58 ce    	vaddpd zmm17,zmm15,zmm22
  91617f:	62 31 85 48 5c fe    	vsubpd zmm15,zmm15,zmm22
  916185:	62 c1 8d 48 58 f0    	vaddpd zmm22,zmm14,zmm8
  91618b:	62 51 8d 48 5c c0    	vsubpd zmm8,zmm14,zmm8
  916191:	62 51 ed 40 58 f2    	vaddpd zmm14,zmm18,zmm10
  916197:	62 51 ed 40 5c d2    	vsubpd zmm10,zmm18,zmm10
  91619d:	62 81 fd 40 58 d2    	vaddpd zmm18,zmm16,zmm26
  9161a3:	62 81 fd 40 5c c2    	vsubpd zmm16,zmm16,zmm26
  9161a9:	62 21 a5 48 58 d3    	vaddpd zmm26,zmm11,zmm19
  9161af:	62 31 a5 48 5c db    	vsubpd zmm11,zmm11,zmm19
  9161b5:	62 a1 9d 48 58 df    	vaddpd zmm19,zmm12,zmm23
  9161bb:	62 51 c5 40 5c e4    	vsubpd zmm12,zmm23,zmm12
  9161c1:	62 c1 85 48 58 f8    	vaddpd zmm23,zmm15,zmm8
  9161c7:	62 51 bd 48 5c c7    	vsubpd zmm8,zmm8,zmm15
  9161cd:	62 31 ad 48 5c f8    	vsubpd zmm15,zmm10,zmm16
  9161d3:	62 51 fd 40 58 d2    	vaddpd zmm10,zmm16,zmm10
  9161d9:	62 a1 a5 40 58 c3    	vaddpd zmm16,zmm27,zmm19
  9161df:	62 a1 a5 40 5c db    	vsubpd zmm19,zmm27,zmm19
  9161e5:	62 41 cd 40 58 de    	vaddpd zmm27,zmm22,zmm14
  9161eb:	62 51 cd 40 5c f6    	vsubpd zmm14,zmm22,zmm14
  9161f1:	62 c1 ad 40 58 f5    	vaddpd zmm22,zmm26,zmm13
  9161f7:	62 51 ad 40 5c ed    	vsubpd zmm13,zmm26,zmm13
  9161fd:	62 21 f5 40 58 d2    	vaddpd zmm26,zmm17,zmm18
  916203:	62 a1 ed 40 5c c9    	vsubpd zmm17,zmm18,zmm17
  916209:	62 c1 c5 48 58 d1    	vaddpd zmm18,zmm7,zmm9
  91620f:	62 e1 c5 40 59 fe    	vmulpd zmm23,zmm23,zmm6
  916215:	62 71 85 48 59 fe    	vmulpd zmm15,zmm15,zmm6
  91621b:	62 71 bd 48 59 c6    	vmulpd zmm8,zmm8,zmm6
  916221:	62 71 ad 48 59 d6    	vmulpd zmm10,zmm10,zmm6
  916227:	62 d1 c5 48 5c f9    	vsubpd zmm7,zmm7,zmm9
  91622d:	62 51 bd 48 5c ca    	vsubpd zmm9,zmm8,zmm10
  916233:	62 51 bd 48 58 c2    	vaddpd zmm8,zmm8,zmm10
  916239:	62 51 9d 48 58 d3    	vaddpd zmm10,zmm12,zmm11
  91623f:	62 51 a5 48 5c dc    	vsubpd zmm11,zmm11,zmm12
  916245:	62 51 c5 40 58 e7    	vaddpd zmm12,zmm23,zmm15
  91624b:	62 31 85 48 5c ff    	vsubpd zmm15,zmm15,zmm23
  916251:	62 81 fd 40 58 fa    	vaddpd zmm23,zmm16,zmm26
  916257:	62 81 fd 40 5c c2    	vsubpd zmm16,zmm16,zmm26
  91625d:	62 01 cd 40 58 d3    	vaddpd zmm26,zmm22,zmm27
  916263:	62 81 cd 40 5c f3    	vsubpd zmm22,zmm22,zmm27
  916269:	62 41 ed 40 58 dc    	vaddpd zmm27,zmm18,zmm12
  91626f:	62 51 ed 40 5c e4    	vsubpd zmm12,zmm18,zmm12
  916275:	62 c1 ad 48 58 d1    	vaddpd zmm18,zmm10,zmm9
  91627b:	62 51 ad 48 5c c9    	vsubpd zmm9,zmm10,zmm9
  916281:	62 51 e5 40 58 d6    	vaddpd zmm10,zmm19,zmm14
  916287:	62 51 e5 40 5c f6    	vsubpd zmm14,zmm19,zmm14
  91628d:	62 c1 f5 40 58 dd    	vaddpd zmm19,zmm17,zmm13
  916293:	62 31 95 48 5c e9    	vsubpd zmm13,zmm13,zmm17
  916299:	62 c1 c5 48 58 c8    	vaddpd zmm17,zmm7,zmm8
  91629f:	62 d1 c5 48 5c f8    	vsubpd zmm7,zmm7,zmm8
  9162a5:	62 51 a5 48 58 c7    	vaddpd zmm8,zmm11,zmm15
  9162ab:	62 51 a5 48 5c df    	vsubpd zmm11,zmm11,zmm15
  9162b1:	62 a2 fd 48 7f f8    	vpermt2pd zmm23,zmm0,zmm16
  9162b7:	62 42 fd 48 7f dc    	vpermt2pd zmm27,zmm0,zmm12
  9162bd:	62 52 fd 48 7f d6    	vpermt2pd zmm10,zmm0,zmm14
  9162c3:	62 e2 fd 48 7f cf    	vpermt2pd zmm17,zmm0,zmm7
  9162c9:	62 b1 fd 48 28 ff    	vmovapd zmm7,zmm23
  9162cf:	62 d2 f5 48 7f fa    	vpermt2pd zmm7,zmm1,zmm10
  9162d5:	62 c2 ed 48 7f fa    	vpermt2pd zmm23,zmm2,zmm10
  9162db:	62 11 fd 48 28 d3    	vmovapd zmm10,zmm27
  9162e1:	62 32 f5 48 7f d1    	vpermt2pd zmm10,zmm1,zmm17
  9162e7:	62 22 ed 48 7f d9    	vpermt2pd zmm27,zmm2,zmm17
  9162ed:	62 11 c5 40 14 e3    	vunpcklpd zmm12,zmm23,zmm27
  9162f3:	62 51 c5 48 14 f2    	vunpcklpd zmm14,zmm7,zmm10
  9162f9:	62 d1 c5 48 15 fa    	vunpckhpd zmm7,zmm7,zmm10
  9162ff:	62 22 fd 48 7f d6    	vpermt2pd zmm26,zmm0,zmm22
  916305:	62 c2 fd 48 7f d1    	vpermt2pd zmm18,zmm0,zmm9
  91630b:	62 c2 fd 48 7f dd    	vpermt2pd zmm19,zmm0,zmm13
  916311:	62 52 fd 48 7f c3    	vpermt2pd zmm8,zmm0,zmm11
  916317:	62 11 fd 48 28 ca    	vmovapd zmm9,zmm26
  91631d:	62 32 f5 48 7f cb    	vpermt2pd zmm9,zmm1,zmm19
  916323:	62 22 ed 48 7f d3    	vpermt2pd zmm26,zmm2,zmm19
  916329:	62 31 fd 48 28 d2    	vmovapd zmm10,zmm18
  91632f:	62 52 f5 48 7f d0    	vpermt2pd zmm10,zmm1,zmm8
  916335:	62 c2 ed 48 7f d0    	vpermt2pd zmm18,zmm2,zmm8
  91633b:	62 31 ad 40 14 c2    	vunpcklpd zmm8,zmm26,zmm18
  916341:	62 51 b5 48 14 da    	vunpcklpd zmm11,zmm9,zmm10
  916347:	62 51 b5 48 15 ca    	vunpckhpd zmm9,zmm9,zmm10
  91634d:	62 71 fd 48 10 51 02 	vmovupd zmm10,ZMMWORD PTR [rcx+0x80]
  916354:	62 71 fd 48 10 69 03 	vmovupd zmm13,ZMMWORD PTR [rcx+0xc0]
  91635b:	62 51 b5 48 59 fa    	vmulpd zmm15,zmm9,zmm10
  916361:	62 52 c5 48 b8 fd    	vfmadd231pd zmm15,zmm7,zmm13
  916367:	62 d1 c5 48 59 fa    	vmulpd zmm7,zmm7,zmm10
  91636d:	62 71 fd 48 10 51 04 	vmovupd zmm10,ZMMWORD PTR [rcx+0x100]
  916374:	62 d2 b5 48 bc fd    	vfnmadd231pd zmm7,zmm9,zmm13
  91637a:	62 71 fd 48 10 49 05 	vmovupd zmm9,ZMMWORD PTR [rcx+0x140]
  916381:	62 51 bd 48 59 ea    	vmulpd zmm13,zmm8,zmm10
  916387:	62 52 9d 48 b8 e9    	vfmadd231pd zmm13,zmm12,zmm9
  91638d:	62 51 9d 48 59 d2    	vmulpd zmm10,zmm12,zmm10
  916393:	62 51 85 48 58 e5    	vaddpd zmm12,zmm15,zmm13
  916399:	62 52 bd 48 bc d1    	vfnmadd231pd zmm10,zmm8,zmm9
  91639f:	62 31 fd 48 28 c5    	vmovapd zmm8,zmm21
  9163a5:	62 52 9d 48 ac c3    	vfnmadd213pd zmm8,zmm12,zmm11
  9163ab:	62 51 c5 48 5c ca    	vsubpd zmm9,zmm7,zmm10
  9163b1:	62 31 b5 48 59 cc    	vmulpd zmm9,zmm9,zmm20
  9163b7:	62 d1 c5 48 58 fa    	vaddpd zmm7,zmm7,zmm10
  9163bd:	62 51 bd 48 58 d1    	vaddpd zmm10,zmm8,zmm9
  9163c3:	62 51 85 48 5c ed    	vsubpd zmm13,zmm15,zmm13
  9163c9:	62 31 fd 48 28 fd    	vmovapd zmm15,zmm21
  9163cf:	62 52 c5 48 ac fe    	vfnmadd213pd zmm15,zmm7,zmm14
  9163d5:	62 31 95 48 59 ec    	vmulpd zmm13,zmm13,zmm20
  9163db:	62 51 bd 48 5c c1    	vsubpd zmm8,zmm8,zmm9
  9163e1:	62 51 85 48 5c cd    	vsubpd zmm9,zmm15,zmm13
  9163e7:	62 51 85 48 58 ed    	vaddpd zmm13,zmm15,zmm13
  9163ed:	62 51 a5 48 58 dc    	vaddpd zmm11,zmm11,zmm12
  9163f3:	62 f1 8d 48 58 ff    	vaddpd zmm7,zmm14,zmm7
  9163f9:	62 71 fd 48 28 e7    	vmovapd zmm12,zmm7
  9163ff:	62 52 bd 40 7f e3    	vpermt2pd zmm12,zmm24,zmm11
  916405:	62 d2 b5 40 7f fb    	vpermt2pd zmm7,zmm25,zmm11
  91640b:	62 f1 fd 48 11 3c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm7
  916412:	62 71 fd 48 11 64 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x40],zmm12
  916419:	01 
  91641a:	62 d1 fd 48 28 fd    	vmovapd zmm7,zmm13
  916420:	62 d2 bd 40 7f f8    	vpermt2pd zmm7,zmm24,zmm8
  916426:	62 52 b5 40 7f e8    	vpermt2pd zmm13,zmm25,zmm8
  91642c:	62 71 fd 48 11 6c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x80],zmm13
  916433:	02 
  916434:	62 f1 fd 48 11 7c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm7
  91643b:	03 
  91643c:	62 d1 fd 48 28 f9    	vmovapd zmm7,zmm9
  916442:	62 d2 bd 40 7f fa    	vpermt2pd zmm7,zmm24,zmm10
  916448:	62 52 b5 40 7f ca    	vpermt2pd zmm9,zmm25,zmm10
  91644e:	62 71 fd 48 11 4c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x100],zmm9
  916455:	04 
  916456:	62 f1 fd 48 11 7c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x140],zmm7
  91645d:	05 
  91645e:	48 81 c2 80 01 00 00 	add    rdx,0x180
  916465:	48 39 d0             	cmp    rax,rdx
  916468:	0f 85 52 fb ff ff    	jne    915fc0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  91646e:	c5 f8 77             	vzeroupper
  916471:	c3                   	ret
