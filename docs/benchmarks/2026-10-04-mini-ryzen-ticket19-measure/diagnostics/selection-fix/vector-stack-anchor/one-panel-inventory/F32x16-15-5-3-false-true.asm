
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a12240 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a12240:	62 f1 7c 48 28 05 36 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6b4d36]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a12247:	4d 6b ff 
  a1224a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a1224e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a12252:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a12258:	62 f1 7c 48 28 1d 9e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6b4c9e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1225f:	4c 6b ff 
  a12262:	62 f1 7c 48 28 25 94 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6b4b94]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a12269:	4b 6b ff 
  a1226c:	62 f1 7c 48 28 2d ca 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6b4bca]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a12273:	4b 6b ff 
  a12276:	48 6b c2 78          	imul   rax,rdx,0x78
  a1227a:	31 d2                	xor    edx,edx
  a1227c:	62 f1 7c 48 28 35 7a 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff67ce7a]        # 8f100 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c5b0>
  a12283:	ce 67 ff 
  a12286:	62 f2 7d 48 18 3d 58 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff663458]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a1228d:	34 66 ff 
  a12290:	62 72 7d 48 18 05 aa 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff6633aa]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a12297:	33 66 ff 
  a1229a:	62 72 7d 48 18 0d b4 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff6634b4]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a122a1:	34 66 ff 
  a122a4:	62 72 7d 48 18 15 f2 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff6630f2]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a122ab:	30 66 ff 
  a122ae:	62 72 7d 48 18 1d a8 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff6631a8]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a122b5:	31 66 ff 
  a122b8:	62 71 7c 48 28 25 7e 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff67ce7e]        # 8f140 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c5f0>
  a122bf:	ce 67 ff 
  a122c2:	62 72 7d 48 18 2d 08 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff663008]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a122c9:	30 66 ff 
  a122cc:	62 71 7c 48 28 35 aa 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff67ceaa]        # 8f180 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c630>
  a122d3:	ce 67 ff 
  a122d6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a122dd:	00 00 00 
  a122e0:	c5 7b 10 7c 17 10    	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x10]
  a122e6:	62 e1 7c 08 10 04 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1]
  a122ed:	62 e1 7c 08 10 8c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0x18]
  a122f4:	18 00 00 00 
  a122f8:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x30]
  a122ff:	03 
  a12300:	62 e1 7c 08 10 9c 17 	vmovups xmm19,XMMWORD PTR [rdi+rdx*1+0x48]
  a12307:	48 00 00 00 
  a1230b:	62 53 7d 40 18 ff 01 	vinsertf32x4 zmm15,zmm16,xmm15,0x1
  a12312:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a12318:	62 e2 4d 48 7f c1    	vpermt2ps zmm16,zmm6,zmm1
  a1231e:	62 72 1d 48 7f f9    	vpermt2ps zmm15,zmm12,zmm1
  a12324:	62 e1 ff 08 10 64 17 	vmovsd xmm20,QWORD PTR [rdi+rdx*1+0x28]
  a1232b:	05 
  a1232c:	62 a3 75 40 18 cc 01 	vinsertf32x4 zmm17,zmm17,xmm20,0x1
  a12333:	62 a1 7c 48 28 e1    	vmovaps zmm20,zmm17
  a12339:	62 e2 4d 48 7f e1    	vpermt2ps zmm20,zmm6,zmm1
  a1233f:	62 e2 1d 48 7f c9    	vpermt2ps zmm17,zmm12,zmm1
  a12345:	62 e1 ff 08 10 6c 17 	vmovsd xmm21,QWORD PTR [rdi+rdx*1+0x40]
  a1234c:	08 
  a1234d:	62 a3 6d 40 18 d5 01 	vinsertf32x4 zmm18,zmm18,xmm21,0x1
  a12354:	62 a1 7c 48 28 ea    	vmovaps zmm21,zmm18
  a1235a:	62 e2 4d 48 7f e9    	vpermt2ps zmm21,zmm6,zmm1
  a12360:	62 e2 1d 48 7f d1    	vpermt2ps zmm18,zmm12,zmm1
  a12366:	62 e1 ff 08 10 74 17 	vmovsd xmm22,QWORD PTR [rdi+rdx*1+0x58]
  a1236d:	0b 
  a1236e:	62 a3 65 40 18 de 01 	vinsertf32x4 zmm19,zmm19,xmm22,0x1
  a12375:	62 a1 7c 48 28 f3    	vmovaps zmm22,zmm19
  a1237b:	62 e2 4d 48 7f f1    	vpermt2ps zmm22,zmm6,zmm1
  a12381:	62 e2 1d 48 7f d9    	vpermt2ps zmm19,zmm12,zmm1
  a12387:	62 e1 ff 08 10 7c 17 	vmovsd xmm23,QWORD PTR [rdi+rdx*1+0x70]
  a1238e:	0e 
  a1238f:	62 61 7c 08 10 44 17 	vmovups xmm24,XMMWORD PTR [rdi+rdx*1+0x60]
  a12396:	06 
  a12397:	62 a3 3d 40 18 ff 01 	vinsertf32x4 zmm23,zmm24,xmm23,0x1
  a1239e:	62 21 7c 48 28 c7    	vmovaps zmm24,zmm23
  a123a4:	62 62 4d 48 7f c1    	vpermt2ps zmm24,zmm6,zmm1
  a123aa:	62 e2 1d 48 7f f9    	vpermt2ps zmm23,zmm12,zmm1
  a123b0:	62 01 5c 40 58 c8    	vaddps zmm25,zmm20,zmm24
  a123b6:	62 21 74 40 58 d7    	vaddps zmm26,zmm17,zmm23
  a123bc:	62 a1 74 40 5c cf    	vsubps zmm17,zmm17,zmm23
  a123c2:	62 a1 6c 40 58 fb    	vaddps zmm23,zmm18,zmm19
  a123c8:	62 a1 6c 40 5c d3    	vsubps zmm18,zmm18,zmm19
  a123ce:	62 81 7c 40 58 d9    	vaddps zmm19,zmm16,zmm25
  a123d4:	62 81 5c 40 5c e0    	vsubps zmm20,zmm20,zmm24
  a123da:	62 21 54 40 58 c6    	vaddps zmm24,zmm21,zmm22
  a123e0:	62 81 64 40 58 d8    	vaddps zmm19,zmm19,zmm24
  a123e6:	62 a1 54 40 5c ee    	vsubps zmm21,zmm21,zmm22
  a123ec:	62 e1 7c 48 28 f7    	vmovaps zmm22,zmm7
  a123f2:	62 a2 35 40 a8 f0    	vfmadd213ps zmm22,zmm25,zmm16
  a123f8:	62 82 3d 48 bc c1    	vfnmadd231ps zmm16,zmm8,zmm25
  a123fe:	62 01 04 48 58 ca    	vaddps zmm25,zmm15,zmm26
  a12404:	62 c2 3d 40 bc f0    	vfnmadd231ps zmm22,zmm24,zmm8
  a1240a:	62 82 45 48 b8 c0    	vfmadd231ps zmm16,zmm7,zmm24
  a12410:	62 41 6c 40 59 c1    	vmulps zmm24,zmm18,zmm9
  a12416:	62 42 75 40 b8 c2    	vfmadd231ps zmm24,zmm17,zmm10
  a1241c:	62 41 74 40 59 d9    	vmulps zmm27,zmm17,zmm9
  a12422:	62 22 2d 48 bc da    	vfnmadd231ps zmm27,zmm10,zmm18
  a12428:	62 e1 7c 48 28 d7    	vmovaps zmm18,zmm7
  a1242e:	62 c2 2d 40 a8 d7    	vfmadd213ps zmm18,zmm26,zmm15
  a12434:	62 12 3d 48 bc fa    	vfnmadd231ps zmm15,zmm8,zmm26
  a1243a:	62 a1 34 40 58 cf    	vaddps zmm17,zmm25,zmm23
  a12440:	62 c2 45 40 bc d0    	vfnmadd231ps zmm18,zmm23,zmm8
  a12446:	62 32 45 48 b8 ff    	vfmadd231ps zmm15,zmm7,zmm23
  a1244c:	62 c1 54 40 59 f9    	vmulps zmm23,zmm21,zmm9
  a12452:	62 c2 5d 40 b8 fa    	vfmadd231ps zmm23,zmm20,zmm10
  a12458:	62 c1 5c 40 59 e1    	vmulps zmm20,zmm20,zmm9
  a1245e:	62 a2 2d 48 bc e5    	vfnmadd231ps zmm20,zmm10,zmm21
  a12464:	62 81 7c 40 58 eb    	vaddps zmm21,zmm16,zmm27
  a1246a:	62 81 7c 40 5c c3    	vsubps zmm16,zmm16,zmm27
  a12470:	62 21 04 48 5c cc    	vsubps zmm25,zmm15,zmm20
  a12476:	62 c1 5c 40 58 e7    	vaddps zmm20,zmm20,zmm15
  a1247c:	62 11 4c 40 58 f8    	vaddps zmm15,zmm22,zmm24
  a12482:	62 81 4c 40 5c f0    	vsubps zmm22,zmm22,zmm24
  a12488:	62 21 6c 40 5c c7    	vsubps zmm24,zmm18,zmm23
  a1248e:	62 a1 44 40 58 d2    	vaddps zmm18,zmm23,zmm18
  a12494:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a1249a:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a124a0:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a124a6:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a124ac:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a124b2:	62 a2 65 48 7f de    	vpermt2ps zmm19,zmm3,zmm22
  a124b8:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a124be:	62 e2 65 48 7f ea    	vpermt2ps zmm21,zmm3,zmm2
  a124c4:	62 e2 65 48 7f c2    	vpermt2ps zmm16,zmm3,zmm2
  a124ca:	62 a1 e5 40 14 f5    	vunpcklpd zmm22,zmm19,zmm21
  a124d0:	62 a1 e5 40 15 dd    	vunpckhpd zmm19,zmm19,zmm21
  a124d6:	62 a1 85 48 14 e8    	vunpcklpd zmm21,zmm15,zmm16
  a124dc:	62 a1 85 48 15 c0    	vunpckhpd zmm16,zmm15,zmm16
  a124e2:	62 31 7c 48 28 fe    	vmovaps zmm15,zmm22
  a124e8:	62 32 5d 48 7f fd    	vpermt2ps zmm15,zmm4,zmm21
  a124ee:	62 a2 55 48 7f f5    	vpermt2ps zmm22,zmm5,zmm21
  a124f4:	62 a2 5d 48 7f d8    	vpermt2ps zmm19,zmm4,zmm16
  a124fa:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a12500:	62 62 7d 48 7f c1    	vpermt2ps zmm24,zmm0,zmm1
  a12506:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a1250c:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a12512:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a12518:	62 a2 65 48 7f ca    	vpermt2ps zmm17,zmm3,zmm18
  a1251e:	62 62 65 48 7f c2    	vpermt2ps zmm24,zmm3,zmm2
  a12524:	62 62 65 48 7f ca    	vpermt2ps zmm25,zmm3,zmm2
  a1252a:	62 e2 65 48 7f e2    	vpermt2ps zmm20,zmm3,zmm2
  a12530:	62 81 f5 40 14 c1    	vunpcklpd zmm16,zmm17,zmm25
  a12536:	62 81 f5 40 15 c9    	vunpckhpd zmm17,zmm17,zmm25
  a1253c:	62 a1 bd 40 14 d4    	vunpcklpd zmm18,zmm24,zmm20
  a12542:	62 a1 bd 40 15 e4    	vunpckhpd zmm20,zmm24,zmm20
  a12548:	62 a1 7c 48 28 e8    	vmovaps zmm21,zmm16
  a1254e:	62 a2 5d 48 7f ea    	vpermt2ps zmm21,zmm4,zmm18
  a12554:	62 a2 55 48 7f c2    	vpermt2ps zmm16,zmm5,zmm18
  a1255a:	62 a2 5d 48 7f cc    	vpermt2ps zmm17,zmm4,zmm20
  a12560:	62 e1 7c 48 10 51 02 	vmovups zmm18,ZMMWORD PTR [rcx+0x80]
  a12567:	62 e1 7c 48 10 61 03 	vmovups zmm20,ZMMWORD PTR [rcx+0xc0]
  a1256e:	62 a1 4c 40 59 fa    	vmulps zmm23,zmm22,zmm18
  a12574:	62 a2 7d 40 bc fc    	vfnmadd231ps zmm23,zmm16,zmm20
  a1257a:	62 a1 7c 40 59 c2    	vmulps zmm16,zmm16,zmm18
  a12580:	62 e1 7c 48 10 51 04 	vmovups zmm18,ZMMWORD PTR [rcx+0x100]
  a12587:	62 a2 5d 40 b8 c6    	vfmadd231ps zmm16,zmm20,zmm22
  a1258d:	62 e1 7c 48 10 61 05 	vmovups zmm20,ZMMWORD PTR [rcx+0x140]
  a12594:	62 a1 64 40 59 f2    	vmulps zmm22,zmm19,zmm18
  a1259a:	62 a2 75 40 bc f4    	vfnmadd231ps zmm22,zmm17,zmm20
  a125a0:	62 a1 74 40 59 ca    	vmulps zmm17,zmm17,zmm18
  a125a6:	62 a1 44 40 58 d6    	vaddps zmm18,zmm23,zmm22
  a125ac:	62 a2 5d 40 b8 cb    	vfmadd231ps zmm17,zmm20,zmm19
  a125b2:	62 a1 7c 40 58 d9    	vaddps zmm19,zmm16,zmm17
  a125b8:	62 c1 7c 48 28 e3    	vmovaps zmm20,zmm11
  a125be:	62 c2 6d 40 ac e7    	vfnmadd213ps zmm20,zmm18,zmm15
  a125c4:	62 a1 7c 40 5c c1    	vsubps zmm16,zmm16,zmm17
  a125ca:	62 c1 7c 40 59 c5    	vmulps zmm16,zmm16,zmm13
  a125d0:	62 a1 5c 40 58 c8    	vaddps zmm17,zmm20,zmm16
  a125d6:	62 a1 44 40 5c f6    	vsubps zmm22,zmm23,zmm22
  a125dc:	62 c1 7c 48 28 fb    	vmovaps zmm23,zmm11
  a125e2:	62 a2 65 40 ac fd    	vfnmadd213ps zmm23,zmm19,zmm21
  a125e8:	62 c1 4c 40 59 f5    	vmulps zmm22,zmm22,zmm13
  a125ee:	62 a1 5c 40 5c c0    	vsubps zmm16,zmm20,zmm16
  a125f4:	62 a1 44 40 5c e6    	vsubps zmm20,zmm23,zmm22
  a125fa:	62 a1 44 40 58 f6    	vaddps zmm22,zmm23,zmm22
  a12600:	62 31 04 48 58 fa    	vaddps zmm15,zmm15,zmm18
  a12606:	62 a1 54 40 58 d3    	vaddps zmm18,zmm21,zmm19
  a1260c:	62 32 0d 48 7f fa    	vpermt2ps zmm15,zmm14,zmm18
  a12612:	c5 7c 11 3c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm15
  a12617:	62 53 7d 48 19 ff 02 	vextractf32x4 xmm15,zmm15,0x2
  a1261e:	c5 78 13 7c 16 20    	vmovlps QWORD PTR [rsi+rdx*1+0x20],xmm15
  a12624:	62 a2 0d 48 7f cc    	vpermt2ps zmm17,zmm14,zmm20
  a1262a:	62 e1 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x28],ymm17
  a12631:	28 00 00 00 
  a12635:	62 c3 7d 48 19 cf 02 	vextractf32x4 xmm15,zmm17,0x2
  a1263c:	c5 78 13 7c 16 48    	vmovlps QWORD PTR [rsi+rdx*1+0x48],xmm15
  a12642:	62 a2 0d 48 7f c6    	vpermt2ps zmm16,zmm14,zmm22
  a12648:	62 e1 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x50],ymm16
  a1264f:	50 00 00 00 
  a12653:	62 c3 7d 48 19 c7 02 	vextractf32x4 xmm15,zmm16,0x2
  a1265a:	c5 78 13 7c 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm15
  a12660:	48 83 c2 78          	add    rdx,0x78
  a12664:	48 39 d0             	cmp    rax,rdx
  a12667:	0f 85 73 fc ff ff    	jne    a122e0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0xa0>
  a1266d:	c5 f8 77             	vzeroupper
  a12670:	c3                   	ret
