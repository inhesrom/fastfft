
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008f11c0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  8f11c0:	62 f1 fd 48 10 05 9e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7d5b9e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  8f11c7:	5b 7d ff 
  8f11ca:	62 f1 fd 48 10 0d 14 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7d5b14]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  8f11d1:	5b 7d ff 
  8f11d4:	62 f1 fd 48 10 15 4a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff7d5b4a]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  8f11db:	5b 7d ff 
  8f11de:	48 c1 e2 07          	shl    rdx,0x7
  8f11e2:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  8f11e6:	31 d2                	xor    edx,edx
  8f11e8:	62 f1 fd 48 28 1d 8e 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff78bd8e]        # 7cf80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa430>
  8f11ef:	bd 78 ff 
  8f11f2:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  8f11f6:	62 f1 fd 48 28 2d c0 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff78bdc0]        # 7cfc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa470>
  8f11fd:	bd 78 ff 
  8f1200:	62 f2 fd 48 19 35 8e 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff78388e]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8f1207:	38 78 ff 
  8f120a:	62 f2 fd 48 19 3d 0c 	vbroadcastsd zmm7,QWORD PTR [rip+0xffffffffff783a0c]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8f1211:	3a 78 ff 
  8f1214:	c5 7d 28 05 e4 5a 78 	vmovapd ymm8,YMMWORD PTR [rip+0xffffffffff785ae4]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  8f121b:	ff 
  8f121c:	62 71 fd 48 28 0d da 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff78bdda]        # 7d000 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa4b0>
  8f1223:	bd 78 ff 
  8f1226:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  8f122d:	00 00 00 
  8f1230:	62 71 fd 48 10 1c 17 	vmovupd zmm11,ZMMWORD PTR [rdi+rdx*1]
  8f1237:	62 71 fd 48 10 64 17 	vmovupd zmm12,ZMMWORD PTR [rdi+rdx*1+0x40]
  8f123e:	01 
  8f123f:	62 71 fd 48 10 6c 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1+0x80]
  8f1246:	02 
  8f1247:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0xc0]
  8f124e:	03 
  8f124f:	62 51 fd 48 28 fb    	vmovapd zmm15,zmm11
  8f1255:	62 72 e5 48 7f fc    	vpermt2pd zmm15,zmm3,zmm4
  8f125b:	62 72 d5 48 7f dc    	vpermt2pd zmm11,zmm5,zmm4
  8f1261:	62 c1 fd 48 28 c4    	vmovapd zmm16,zmm12
  8f1267:	62 e2 e5 48 7f c4    	vpermt2pd zmm16,zmm3,zmm4
  8f126d:	62 72 d5 48 7f e4    	vpermt2pd zmm12,zmm5,zmm4
  8f1273:	62 c1 fd 48 28 cd    	vmovapd zmm17,zmm13
  8f1279:	62 e2 e5 48 7f cc    	vpermt2pd zmm17,zmm3,zmm4
  8f127f:	62 72 d5 48 7f ec    	vpermt2pd zmm13,zmm5,zmm4
  8f1285:	62 c1 fd 48 28 d6    	vmovapd zmm18,zmm14
  8f128b:	62 e2 e5 48 7f d4    	vpermt2pd zmm18,zmm3,zmm4
  8f1291:	62 72 d5 48 7f f4    	vpermt2pd zmm14,zmm5,zmm4
  8f1297:	62 e1 fd 48 10 5c 17 	vmovupd zmm19,ZMMWORD PTR [rdi+rdx*1+0x100]
  8f129e:	04 
  8f129f:	62 a1 fd 48 28 e3    	vmovapd zmm20,zmm19
  8f12a5:	62 e2 e5 48 7f e4    	vpermt2pd zmm20,zmm3,zmm4
  8f12ab:	62 e2 d5 48 7f dc    	vpermt2pd zmm19,zmm5,zmm4
  8f12b1:	62 e1 fd 48 10 6c 17 	vmovupd zmm21,ZMMWORD PTR [rdi+rdx*1+0x140]
  8f12b8:	05 
  8f12b9:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  8f12bf:	62 e2 e5 48 7f f4    	vpermt2pd zmm22,zmm3,zmm4
  8f12c5:	62 e2 d5 48 7f ec    	vpermt2pd zmm21,zmm5,zmm4
  8f12cb:	62 a1 95 48 58 fb    	vaddpd zmm23,zmm13,zmm19
  8f12d1:	62 21 a5 48 58 c7    	vaddpd zmm24,zmm11,zmm23
  8f12d7:	62 41 d5 40 58 cc    	vaddpd zmm25,zmm21,zmm12
  8f12dd:	62 01 8d 48 58 d1    	vaddpd zmm26,zmm14,zmm25
  8f12e3:	62 01 bd 40 58 da    	vaddpd zmm27,zmm24,zmm26
  8f12e9:	62 21 f5 40 58 e4    	vaddpd zmm28,zmm17,zmm20
  8f12ef:	62 01 85 48 58 ec    	vaddpd zmm29,zmm15,zmm28
  8f12f5:	62 21 cd 40 58 f0    	vaddpd zmm30,zmm22,zmm16
  8f12fb:	62 01 ed 40 58 fe    	vaddpd zmm31,zmm18,zmm30
  8f1301:	62 11 95 40 58 d7    	vaddpd zmm10,zmm29,zmm31
  8f1307:	62 32 cd 48 bc df    	vfnmadd231pd zmm11,zmm6,zmm23
  8f130d:	62 a1 f5 40 5c cc    	vsubpd zmm17,zmm17,zmm20
  8f1313:	62 e1 f5 40 59 cf    	vmulpd zmm17,zmm17,zmm7
  8f1319:	62 a1 a5 48 58 e1    	vaddpd zmm20,zmm11,zmm17
  8f131f:	62 12 cd 48 bc f1    	vfnmadd231pd zmm14,zmm6,zmm25
  8f1325:	62 a1 cd 40 5c c0    	vsubpd zmm16,zmm22,zmm16
  8f132b:	62 e1 fd 40 59 c7    	vmulpd zmm16,zmm16,zmm7
  8f1331:	62 a1 8d 48 58 f0    	vaddpd zmm22,zmm14,zmm16
  8f1337:	62 a1 dd 40 5c fe    	vsubpd zmm23,zmm20,zmm22
  8f133d:	62 12 cd 48 bc fc    	vfnmadd231pd zmm15,zmm6,zmm28
  8f1343:	62 31 95 48 5c eb    	vsubpd zmm13,zmm13,zmm19
  8f1349:	62 71 95 48 59 ef    	vmulpd zmm13,zmm13,zmm7
  8f134f:	62 c1 85 48 5c dd    	vsubpd zmm19,zmm15,zmm13
  8f1355:	62 82 cd 48 bc d6    	vfnmadd231pd zmm18,zmm6,zmm30
  8f135b:	62 51 d5 40 5c e4    	vsubpd zmm12,zmm21,zmm12
  8f1361:	62 71 9d 48 59 e7    	vmulpd zmm12,zmm12,zmm7
  8f1367:	62 c1 ed 40 5c ec    	vsubpd zmm21,zmm18,zmm12
  8f136d:	62 21 e5 40 5c cd    	vsubpd zmm25,zmm19,zmm21
  8f1373:	62 31 a5 48 5c d9    	vsubpd zmm11,zmm11,zmm17
  8f1379:	62 31 8d 48 5c f0    	vsubpd zmm14,zmm14,zmm16
  8f137f:	62 c1 a5 48 58 c6    	vaddpd zmm16,zmm11,zmm14
  8f1385:	62 51 95 48 58 ef    	vaddpd zmm13,zmm13,zmm15
  8f138b:	62 31 9d 48 58 e2    	vaddpd zmm12,zmm12,zmm18
  8f1391:	62 51 95 48 58 fc    	vaddpd zmm15,zmm13,zmm12
  8f1397:	62 81 bd 40 5c ca    	vsubpd zmm17,zmm24,zmm26
  8f139d:	62 81 95 40 5c d7    	vsubpd zmm18,zmm29,zmm31
  8f13a3:	62 a1 dd 40 58 e6    	vaddpd zmm20,zmm20,zmm22
  8f13a9:	62 a1 e5 40 58 dd    	vaddpd zmm19,zmm19,zmm21
  8f13af:	62 51 a5 48 5c de    	vsubpd zmm11,zmm11,zmm14
  8f13b5:	62 51 95 48 5c e4    	vsubpd zmm12,zmm13,zmm12
  8f13bb:	62 22 fd 48 7f dc    	vpermt2pd zmm27,zmm0,zmm20
  8f13c1:	62 c2 fd 48 7f fb    	vpermt2pd zmm23,zmm0,zmm11
  8f13c7:	62 e2 fd 48 7f c4    	vpermt2pd zmm16,zmm0,zmm4
  8f13cd:	62 e2 fd 48 7f cc    	vpermt2pd zmm17,zmm0,zmm4
  8f13d3:	62 11 fd 48 28 db    	vmovapd zmm11,zmm27
  8f13d9:	62 32 f5 48 7f d8    	vpermt2pd zmm11,zmm1,zmm16
  8f13df:	62 22 ed 48 7f d8    	vpermt2pd zmm27,zmm2,zmm16
  8f13e5:	62 31 fd 48 28 ef    	vmovapd zmm13,zmm23
  8f13eb:	62 32 f5 48 7f e9    	vpermt2pd zmm13,zmm1,zmm17
  8f13f1:	62 a2 ed 48 7f f9    	vpermt2pd zmm23,zmm2,zmm17
  8f13f7:	62 51 a5 48 14 f5    	vunpcklpd zmm14,zmm11,zmm13
  8f13fd:	62 51 a5 48 15 dd    	vunpckhpd zmm11,zmm11,zmm13
  8f1403:	62 31 a5 40 14 ef    	vunpcklpd zmm13,zmm27,zmm23
  8f1409:	62 a1 a5 40 15 c7    	vunpckhpd zmm16,zmm27,zmm23
  8f140f:	62 32 fd 48 7f d3    	vpermt2pd zmm10,zmm0,zmm19
  8f1415:	62 42 fd 48 7f cc    	vpermt2pd zmm25,zmm0,zmm12
  8f141b:	62 72 fd 48 7f fc    	vpermt2pd zmm15,zmm0,zmm4
  8f1421:	62 e2 fd 48 7f d4    	vpermt2pd zmm18,zmm0,zmm4
  8f1427:	62 51 fd 48 28 e2    	vmovapd zmm12,zmm10
  8f142d:	62 52 f5 48 7f e7    	vpermt2pd zmm12,zmm1,zmm15
  8f1433:	62 52 ed 48 7f d7    	vpermt2pd zmm10,zmm2,zmm15
  8f1439:	62 11 fd 48 28 f9    	vmovapd zmm15,zmm25
  8f143f:	62 32 f5 48 7f fa    	vpermt2pd zmm15,zmm1,zmm18
  8f1445:	62 22 ed 48 7f ca    	vpermt2pd zmm25,zmm2,zmm18
  8f144b:	62 c1 9d 48 14 cf    	vunpcklpd zmm17,zmm12,zmm15
  8f1451:	62 51 9d 48 15 e7    	vunpckhpd zmm12,zmm12,zmm15
  8f1457:	62 11 ad 48 14 f9    	vunpcklpd zmm15,zmm10,zmm25
  8f145d:	62 11 ad 48 15 d1    	vunpckhpd zmm10,zmm10,zmm25
  8f1463:	62 e1 fd 48 10 51 02 	vmovupd zmm18,ZMMWORD PTR [rcx+0x80]
  8f146a:	62 e1 fd 48 10 59 03 	vmovupd zmm19,ZMMWORD PTR [rcx+0xc0]
  8f1471:	62 e1 fd 48 10 61 04 	vmovupd zmm20,ZMMWORD PTR [rcx+0x100]
  8f1478:	62 e1 fd 48 10 69 05 	vmovupd zmm21,ZMMWORD PTR [rcx+0x140]
  8f147f:	62 e1 fd 48 10 71 06 	vmovupd zmm22,ZMMWORD PTR [rcx+0x180]
  8f1486:	62 e1 fd 48 10 79 07 	vmovupd zmm23,ZMMWORD PTR [rcx+0x1c0]
  8f148d:	62 21 95 48 59 c4    	vmulpd zmm24,zmm13,zmm20
  8f1493:	62 22 85 48 bc c5    	vfnmadd231pd zmm24,zmm15,zmm21
  8f1499:	62 01 8d 48 58 c8    	vaddpd zmm25,zmm14,zmm24
  8f149f:	62 21 a5 48 59 d2    	vmulpd zmm26,zmm11,zmm18
  8f14a5:	62 22 9d 48 bc d3    	vfnmadd231pd zmm26,zmm12,zmm19
  8f14ab:	62 21 fd 40 59 de    	vmulpd zmm27,zmm16,zmm22
  8f14b1:	62 22 ad 48 bc df    	vfnmadd231pd zmm27,zmm10,zmm23
  8f14b7:	62 01 ad 40 58 e3    	vaddpd zmm28,zmm26,zmm27
  8f14bd:	62 31 85 48 59 fc    	vmulpd zmm15,zmm15,zmm20
  8f14c3:	62 32 95 48 b8 fd    	vfmadd231pd zmm15,zmm13,zmm21
  8f14c9:	62 31 85 48 58 e9    	vaddpd zmm13,zmm15,zmm17
  8f14cf:	62 31 9d 48 59 e2    	vmulpd zmm12,zmm12,zmm18
  8f14d5:	62 32 a5 48 b8 e3    	vfmadd231pd zmm12,zmm11,zmm19
  8f14db:	62 31 ad 48 59 d6    	vmulpd zmm10,zmm10,zmm22
  8f14e1:	62 32 fd 40 b8 d7    	vfmadd231pd zmm10,zmm16,zmm23
  8f14e7:	62 51 9d 48 58 da    	vaddpd zmm11,zmm12,zmm10
  8f14ed:	62 11 8d 48 5c f0    	vsubpd zmm14,zmm14,zmm24
  8f14f3:	62 51 9d 48 5c d2    	vsubpd zmm10,zmm12,zmm10
  8f14f9:	62 51 8d 48 58 e2    	vaddpd zmm12,zmm14,zmm10
  8f14ff:	62 51 f5 40 5c ff    	vsubpd zmm15,zmm17,zmm15
  8f1505:	62 81 a5 40 5c c2    	vsubpd zmm16,zmm27,zmm26
  8f150b:	62 a1 85 48 58 c8    	vaddpd zmm17,zmm15,zmm16
  8f1511:	62 a1 fd 48 28 d1    	vmovapd zmm18,zmm17
  8f1517:	62 c2 bd 48 7f d4    	vpermt2pd zmm18,zmm8,zmm12
  8f151d:	62 81 b5 40 5c dc    	vsubpd zmm19,zmm25,zmm28
  8f1523:	62 c1 95 48 5c e3    	vsubpd zmm20,zmm13,zmm11
  8f1529:	62 a1 fd 48 28 ec    	vmovapd zmm21,zmm20
  8f152f:	62 a2 bd 48 7f eb    	vpermt2pd zmm21,zmm8,zmm19
  8f1535:	62 51 8d 48 5c d2    	vsubpd zmm10,zmm14,zmm10
  8f153b:	62 31 85 48 5c f0    	vsubpd zmm14,zmm15,zmm16
  8f1541:	62 51 fd 48 28 fe    	vmovapd zmm15,zmm14
  8f1547:	62 52 bd 48 7f fa    	vpermt2pd zmm15,zmm8,zmm10
  8f154d:	62 51 95 48 58 db    	vaddpd zmm11,zmm13,zmm11
  8f1553:	62 11 b5 40 58 ec    	vaddpd zmm13,zmm25,zmm28
  8f1559:	62 c1 fd 48 28 c3    	vmovapd zmm16,zmm11
  8f155f:	62 c2 bd 48 7f c5    	vpermt2pd zmm16,zmm8,zmm13
  8f1565:	62 52 b5 48 7f dd    	vpermt2pd zmm11,zmm9,zmm13
  8f156b:	62 71 fd 48 11 1c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm11
  8f1572:	62 e1 fd 28 11 44 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm16
  8f1579:	02 
  8f157a:	62 c2 b5 48 7f cc    	vpermt2pd zmm17,zmm9,zmm12
  8f1580:	62 e1 fd 48 11 8c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x60],zmm17
  8f1587:	60 00 00 00 
  8f158b:	62 e1 fd 28 11 54 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm18
  8f1592:	05 
  8f1593:	62 a2 b5 48 7f e3    	vpermt2pd zmm20,zmm9,zmm19
  8f1599:	62 e1 fd 48 11 64 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm20
  8f15a0:	03 
  8f15a1:	62 e1 fd 28 11 6c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x100],ymm21
  8f15a8:	08 
  8f15a9:	62 52 b5 48 7f f2    	vpermt2pd zmm14,zmm9,zmm10
  8f15af:	62 71 fd 48 11 b4 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x120],zmm14
  8f15b6:	20 01 00 00 
  8f15ba:	c5 7d 11 bc 16 60 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x160],ymm15
  8f15c1:	00 00 
  8f15c3:	48 81 c2 80 01 00 00 	add    rdx,0x180
  8f15ca:	48 39 d0             	cmp    rax,rdx
  8f15cd:	0f 85 5d fc ff ff    	jne    8f1230 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  8f15d3:	c5 f8 77             	vzeroupper
  8f15d6:	c3                   	ret
