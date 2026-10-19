
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a12080 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a12080:	55                   	push   rbp
  a12081:	48 89 e5             	mov    rbp,rsp
  a12084:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a12088:	48 81 ec c0 0a 00 00 	sub    rsp,0xac0
  a1208f:	48 c1 e2 08          	shl    rdx,0x8
  a12093:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a12097:	31 d2                	xor    edx,edx
  a12099:	4c 8d 84 24 40 0a 00 	lea    r8,[rsp+0xa40]
  a120a0:	00 
  a120a1:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a120a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a120ad:	00 00 00 
  a120b0:	c6 84 24 40 0a 00 00 	mov    BYTE PTR [rsp+0xa40],0x0
  a120b7:	00 
  a120b8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a120bd:	62 71 7c 48 10 14 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1]
  a120c4:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x40]
  a120cb:	01 
  a120cc:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a120d3:	05 
  a120d4:	62 71 7c 48 10 44 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x80]
  a120db:	02 
  a120dc:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a120e3:	03 
  a120e4:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a120ea:	62 f1 7c 48 28 05 4c 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff67cf4c]        # 8f040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c4f0>
  a120f1:	cf 67 ff 
  a120f4:	62 72 7d 48 7f d9    	vpermt2ps zmm11,zmm0,zmm1
  a120fa:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x100]
  a12101:	04 
  a12102:	62 61 7c 48 10 5c 17 	vmovups zmm27,ZMMWORD PTR [rdi+rdx*1+0x140]
  a12109:	05 
  a1210a:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a12110:	62 92 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm27
  a12116:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a1211d:	02 
  a1211e:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x400]
  a12125:	10 
  a12126:	62 61 7c 48 10 64 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x440]
  a1212d:	11 
  a1212e:	62 d1 7c 48 28 d4    	vmovaps zmm2,zmm12
  a12134:	62 92 7d 48 7f d4    	vpermt2ps zmm2,zmm0,zmm28
  a1213a:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a12140:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a12147:	04 
  a12148:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x200]
  a1214f:	08 
  a12150:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x240]
  a12157:	09 
  a12158:	62 d1 7c 48 28 ee    	vmovaps zmm5,zmm14
  a1215e:	62 b2 7d 48 7f eb    	vpermt2ps zmm5,zmm0,zmm19
  a12164:	62 71 7c 48 10 7c 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x300]
  a1216b:	0c 
  a1216c:	62 61 7c 48 10 54 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x340]
  a12173:	0d 
  a12174:	62 d1 7c 48 28 ff    	vmovaps zmm7,zmm15
  a1217a:	62 92 7d 48 7f fa    	vpermt2ps zmm7,zmm0,zmm26
  a12180:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x280]
  a12187:	0a 
  a12188:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  a1218f:	0b 
  a12190:	62 e1 7c 48 28 f2    	vmovaps zmm22,zmm2
  a12196:	62 a2 7d 48 7f f0    	vpermt2ps zmm22,zmm0,zmm16
  a1219c:	62 e1 7c 48 10 4c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x380]
  a121a3:	0e 
  a121a4:	62 61 7c 48 10 6c 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x3c0]
  a121ab:	0f 
  a121ac:	62 b1 7c 48 28 f1    	vmovaps zmm6,zmm17
  a121b2:	62 92 7d 48 7f f5    	vpermt2ps zmm6,zmm0,zmm29
  a121b8:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm6
  a121bf:	06 
  a121c0:	62 e1 7c 48 10 64 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x180]
  a121c7:	06 
  a121c8:	62 61 7c 48 10 74 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a121cf:	07 
  a121d0:	62 31 7c 48 28 cc    	vmovaps zmm9,zmm20
  a121d6:	62 e1 74 48 58 fb    	vaddps zmm23,zmm1,zmm3
  a121dc:	62 12 7d 48 7f ce    	vpermt2ps zmm9,zmm0,zmm30
  a121e2:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm9
  a121e9:	08 
  a121ea:	62 e1 7c 48 10 6c 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x480]
  a121f1:	12 
  a121f2:	62 61 7c 48 10 7c 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x4c0]
  a121f9:	13 
  a121fa:	62 61 54 48 58 cf    	vaddps zmm25,zmm5,zmm7
  a12200:	62 31 7c 48 28 ed    	vmovaps zmm13,zmm21
  a12206:	62 12 7d 48 7f ef    	vpermt2ps zmm13,zmm0,zmm31
  a1220c:	62 f1 7c 48 28 1d 6a 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff67ce6a]        # 8f080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c530>
  a12213:	ce 67 ff 
  a12216:	62 32 65 48 7f f3    	vpermt2ps zmm14,zmm3,zmm19
  a1221c:	62 41 4c 48 58 c1    	vaddps zmm24,zmm6,zmm9
  a12222:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a12228:	62 32 7d 48 7f ca    	vpermt2ps zmm9,zmm0,zmm18
  a1222e:	62 12 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm26
  a12234:	62 41 14 48 58 d1    	vaddps zmm26,zmm13,zmm9
  a1223a:	62 92 65 48 7f e3    	vpermt2ps zmm4,zmm3,zmm27
  a12240:	62 41 0c 48 5c df    	vsubps zmm27,zmm14,zmm15
  a12246:	62 12 65 48 7f e4    	vpermt2ps zmm12,zmm3,zmm28
  a1224c:	62 21 24 48 58 e7    	vaddps zmm28,zmm11,zmm23
  a12252:	62 82 65 48 7f ef    	vpermt2ps zmm21,zmm3,zmm31
  a12258:	62 41 5c 48 5c fc    	vsubps zmm31,zmm4,zmm12
  a1225e:	62 32 65 48 7f c2    	vpermt2ps zmm8,zmm3,zmm18
  a12264:	62 81 4c 40 58 d0    	vaddps zmm18,zmm22,zmm24
  a1226a:	62 82 65 48 7f cd    	vpermt2ps zmm17,zmm3,zmm29
  a12270:	62 f2 7d 48 18 0d de 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff6634de]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a12277:	34 66 ff 
  a1227a:	62 61 04 40 59 e9    	vmulps zmm29,zmm31,zmm1
  a12280:	62 82 65 48 7f e6    	vpermt2ps zmm20,zmm3,zmm30
  a12286:	62 f2 7d 48 18 35 10 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff663110]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a1228d:	31 66 ff 
  a12290:	62 62 25 40 bc ee    	vfnmadd231ps zmm29,zmm27,zmm6
  a12296:	62 f2 7d 48 18 05 a4 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6633a4]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a1229d:	33 66 ff 
  a122a0:	62 61 7c 48 28 f0    	vmovaps zmm30,zmm0
  a122a6:	62 42 45 40 ac f3    	vfnmadd213ps zmm30,zmm23,zmm11
  a122ac:	62 61 24 40 59 d9    	vmulps zmm27,zmm27,zmm1
  a122b2:	62 01 1c 40 58 e1    	vaddps zmm28,zmm28,zmm25
  a122b8:	62 02 4d 48 b8 df    	vfmadd231ps zmm27,zmm6,zmm31
  a122be:	62 41 54 40 5c f8    	vsubps zmm31,zmm21,zmm8
  a122c4:	62 e2 7d 48 18 1d 1a 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff66341a]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a122cb:	34 66 ff 
  a122ce:	62 32 65 40 b8 df    	vfmadd231ps zmm11,zmm19,zmm23
  a122d4:	62 22 35 40 b8 f3    	vfmadd231ps zmm30,zmm25,zmm19
  a122da:	62 a1 74 40 5c fc    	vsubps zmm23,zmm17,zmm20
  a122e0:	62 12 7d 48 bc d9    	vfnmadd231ps zmm11,zmm0,zmm25
  a122e6:	62 61 44 40 59 c9    	vmulps zmm25,zmm23,zmm1
  a122ec:	62 62 05 40 bc ce    	vfnmadd231ps zmm25,zmm31,zmm6
  a122f2:	62 61 04 40 59 f9    	vmulps zmm31,zmm31,zmm1
  a122f8:	62 22 4d 48 b8 ff    	vfmadd231ps zmm31,zmm6,zmm23
  a122fe:	62 e1 7c 48 28 f8    	vmovaps zmm23,zmm0
  a12304:	62 91 6c 40 58 ca    	vaddps zmm1,zmm18,zmm26
  a1230a:	62 a2 3d 40 ac fe    	vfnmadd213ps zmm23,zmm24,zmm22
  a12310:	62 a2 2d 40 b8 fb    	vfmadd231ps zmm23,zmm26,zmm19
  a12316:	62 82 65 40 b8 f0    	vfmadd231ps zmm22,zmm19,zmm24
  a1231c:	62 e1 1c 40 58 d1    	vaddps zmm18,zmm28,zmm1
  a12322:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm18
  a12329:	0f 
  a1232a:	62 82 7d 48 bc f2    	vfnmadd231ps zmm22,zmm0,zmm26
  a12330:	62 01 14 40 58 c6    	vaddps zmm24,zmm29,zmm30
  a12336:	62 01 0c 40 5c d5    	vsubps zmm26,zmm30,zmm29
  a1233c:	62 21 34 40 58 ef    	vaddps zmm29,zmm25,zmm23
  a12342:	62 01 44 40 5c c9    	vsubps zmm25,zmm23,zmm25
  a12348:	62 c1 24 40 58 fb    	vaddps zmm23,zmm27,zmm11
  a1234e:	62 11 24 48 5c db    	vsubps zmm11,zmm11,zmm27
  a12354:	62 21 04 40 58 de    	vaddps zmm27,zmm31,zmm22
  a1235a:	62 81 4c 40 5c f7    	vsubps zmm22,zmm22,zmm31
  a12360:	62 b1 24 48 58 f6    	vaddps zmm6,zmm11,zmm22
  a12366:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm6
  a1236d:	01 
  a1236e:	62 21 24 48 5c f6    	vsubps zmm30,zmm11,zmm22
  a12374:	62 11 44 40 58 db    	vaddps zmm11,zmm23,zmm27
  a1237a:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm11
  a12381:	0e 
  a12382:	62 91 44 40 5c c3    	vsubps zmm0,zmm23,zmm27
  a12388:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a1238f:	0a 
  a12390:	62 21 7c 48 28 da    	vmovaps zmm27,zmm18
  a12396:	62 f1 1c 40 5c c1    	vsubps zmm0,zmm28,zmm1
  a1239c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a123a3:	03 
  a123a4:	62 91 3c 40 58 cd    	vaddps zmm1,zmm24,zmm29
  a123aa:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a123b1:	0d 
  a123b2:	62 72 65 48 7f 54 24 	vpermt2ps zmm10,zmm3,ZMMWORD PTR [rsp+0x140]
  a123b9:	05 
  a123ba:	62 c1 5c 48 58 f4    	vaddps zmm22,zmm4,zmm12
  a123c0:	62 01 2c 40 58 f9    	vaddps zmm31,zmm26,zmm25
  a123c6:	62 e1 7c 48 28 15 b0 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6b4bb0]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a123cd:	4b 6b ff 
  a123d0:	c4 41 18 57 e4       	vxorps xmm12,xmm12,xmm12
  a123d5:	62 d2 6d 40 7f c4    	vpermt2ps zmm0,zmm18,zmm12
  a123db:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a123e2:	0b 
  a123e3:	62 51 0c 48 58 ff    	vaddps zmm15,zmm14,zmm15
  a123e9:	62 b1 2c 48 58 c6    	vaddps zmm0,zmm10,zmm22
  a123ef:	62 01 3c 40 5c ed    	vsubps zmm29,zmm24,zmm29
  a123f5:	62 41 7c 48 58 c7    	vaddps zmm24,zmm0,zmm15
  a123fb:	62 b2 65 48 7f d0    	vpermt2ps zmm2,zmm3,zmm16
  a12401:	62 a1 74 40 58 c4    	vaddps zmm16,zmm17,zmm20
  a12407:	62 01 2c 40 5c d1    	vsubps zmm26,zmm26,zmm25
  a1240d:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm26
  a12414:	09 
  a12415:	62 b1 6c 48 58 c0    	vaddps zmm0,zmm2,zmm16
  a1241b:	62 d1 54 40 58 e0    	vaddps zmm4,zmm21,zmm8
  a12421:	62 e1 7c 48 58 e4    	vaddps zmm20,zmm0,zmm4
  a12427:	62 62 6d 40 7f d9    	vpermt2ps zmm27,zmm18,zmm1
  a1242d:	62 b1 3c 40 58 c4    	vaddps zmm0,zmm24,zmm20
  a12433:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a1243a:	07 
  a1243b:	62 72 7d 48 18 05 ff 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff6631ff]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a12442:	31 66 ff 
  a12445:	62 c1 7c 48 28 c8    	vmovaps zmm17,zmm8
  a1244b:	62 c2 4d 40 ac ca    	vfnmadd213ps zmm17,zmm22,zmm10
  a12451:	62 c1 7c 48 28 eb    	vmovaps zmm21,zmm11
  a12457:	62 a2 05 48 b8 cb    	vfmadd231ps zmm17,zmm15,zmm19
  a1245d:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a12463:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a1246a:	02 
  a1246b:	62 f1 7c 48 5c 5c 24 	vsubps zmm3,zmm0,ZMMWORD PTR [rsp+0x100]
  a12472:	04 
  a12473:	62 f2 7d 48 18 05 db 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6632db]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a1247a:	32 66 ff 
  a1247d:	62 f1 64 48 59 f8    	vmulps zmm7,zmm3,zmm0
  a12483:	62 f2 7d 48 18 0d 13 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff662f13]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a1248a:	2f 66 ff 
  a1248d:	62 f2 55 48 bc f9    	vfnmadd231ps zmm7,zmm5,zmm1
  a12493:	62 51 14 48 5c c9    	vsubps zmm9,zmm13,zmm9
  a12499:	62 61 7c 48 28 ce    	vmovaps zmm25,zmm6
  a1249f:	62 71 74 40 5c f7    	vsubps zmm14,zmm17,zmm7
  a124a5:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x180]
  a124ac:	06 
  a124ad:	62 f1 4c 48 5c 74 24 	vsubps zmm6,zmm6,ZMMWORD PTR [rsp+0x200]
  a124b4:	08 
  a124b5:	62 32 65 40 b8 d6    	vfmadd231ps zmm10,zmm19,zmm22
  a124bb:	62 81 7c 48 28 f6    	vmovaps zmm22,zmm30
  a124c1:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a124c7:	62 72 7d 40 ac c2    	vfnmadd213ps zmm8,zmm16,zmm2
  a124cd:	62 52 25 48 bc d7    	vfnmadd231ps zmm10,zmm11,zmm15
  a124d3:	62 01 7c 48 28 e5    	vmovaps zmm28,zmm29
  a124d9:	62 32 5d 48 b8 c3    	vfmadd231ps zmm8,zmm4,zmm19
  a124df:	62 71 54 48 59 e8    	vmulps zmm13,zmm5,zmm0
  a124e5:	62 72 75 48 b8 eb    	vfmadd231ps zmm13,zmm1,zmm3
  a124eb:	62 11 7c 48 28 fa    	vmovaps zmm15,zmm26
  a124f1:	62 b2 65 40 b8 d0    	vfmadd231ps zmm2,zmm19,zmm16
  a124f7:	62 f1 4c 48 59 d8    	vmulps zmm3,zmm6,zmm0
  a124fd:	62 f2 35 48 bc d9    	vfnmadd231ps zmm3,zmm9,zmm1
  a12503:	62 c2 6d 40 7f ec    	vpermt2ps zmm21,zmm18,zmm12
  a12509:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm21
  a12510:	22 
  a12511:	62 f2 25 48 bc d4    	vfnmadd231ps zmm2,zmm11,zmm4
  a12517:	62 f1 34 48 59 e0    	vmulps zmm4,zmm9,zmm0
  a1251d:	62 f2 75 48 b8 e6    	vfmadd231ps zmm4,zmm1,zmm6
  a12523:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm27
  a1252a:	05 
  a1252b:	62 f1 3c 48 5c f3    	vsubps zmm6,zmm8,zmm3
  a12531:	62 f1 74 40 58 ff    	vaddps zmm7,zmm17,zmm7
  a12537:	62 f1 0c 48 58 ee    	vaddps zmm5,zmm14,zmm6
  a1253d:	62 01 7c 48 28 d7    	vmovaps zmm26,zmm31
  a12543:	62 42 6d 40 7f d4    	vpermt2ps zmm26,zmm18,zmm12
  a12549:	62 f1 3c 48 58 db    	vaddps zmm3,zmm8,zmm3
  a1254f:	62 51 2c 48 5c c5    	vsubps zmm8,zmm10,zmm13
  a12555:	62 d1 2c 48 58 cd    	vaddps zmm1,zmm10,zmm13
  a1255b:	62 42 6d 40 7f cc    	vpermt2ps zmm25,zmm18,zmm12
  a12561:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm25
  a12568:	21 
  a12569:	62 71 6c 48 5c cc    	vsubps zmm9,zmm2,zmm4
  a1256f:	62 f1 6c 48 58 d4    	vaddps zmm2,zmm2,zmm4
  a12575:	62 e1 74 48 58 c2    	vaddps zmm16,zmm1,zmm2
  a1257b:	62 e2 6d 40 7f 74 24 	vpermt2ps zmm22,zmm18,ZMMWORD PTR [rsp+0x280]
  a12582:	0a 
  a12583:	62 71 74 48 5c ea    	vsubps zmm13,zmm1,zmm2
  a12589:	62 d1 3c 48 58 c9    	vaddps zmm1,zmm8,zmm9
  a1258f:	62 d1 3c 48 5c e1    	vsubps zmm4,zmm8,zmm9
  a12595:	62 42 6d 40 7f e4    	vpermt2ps zmm28,zmm18,zmm12
  a1259b:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x1c0]
  a125a2:	07 
  a125a3:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a125a9:	62 b1 3c 40 5c d4    	vsubps zmm2,zmm24,zmm20
  a125af:	62 e1 7c 48 28 f9    	vmovaps zmm23,zmm1
  a125b5:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a125bb:	62 52 6d 40 7f fc    	vpermt2ps zmm15,zmm18,zmm12
  a125c1:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm15
  a125c8:	20 
  a125c9:	62 f1 0c 48 5c f6    	vsubps zmm6,zmm14,zmm6
  a125cf:	62 f1 44 48 58 c3    	vaddps zmm0,zmm7,zmm3
  a125d5:	62 71 44 48 5c f3    	vsubps zmm14,zmm7,zmm3
  a125db:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm26
  a125e2:	04 
  a125e3:	62 f1 7c 48 28 0d 53 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6b4953]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a125ea:	49 6b ff 
  a125ed:	62 11 7c 48 28 c3    	vmovaps zmm8,zmm27
  a125f3:	62 32 75 48 7f c5    	vpermt2ps zmm8,zmm1,zmm21
  a125f9:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm8
  a12600:	16 
  a12601:	62 c1 7c 48 28 e2    	vmovaps zmm20,zmm10
  a12607:	62 e2 6d 40 7f e5    	vpermt2ps zmm20,zmm18,zmm5
  a1260d:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm20
  a12614:	07 
  a12615:	62 d1 7c 48 28 f9    	vmovaps zmm7,zmm9
  a1261b:	62 d2 6d 40 7f fc    	vpermt2ps zmm7,zmm18,zmm12
  a12621:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm7
  a12628:	1f 
  a12629:	62 81 7c 48 28 ca    	vmovaps zmm17,zmm26
  a1262f:	62 82 75 48 7f c9    	vpermt2ps zmm17,zmm1,zmm25
  a12635:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm17
  a1263c:	0c 
  a1263d:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a12643:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a12649:	62 42 6d 40 7f dc    	vpermt2ps zmm27,zmm18,zmm12
  a1264f:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm27
  a12656:	1e 
  a12657:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm22
  a1265e:	02 
  a1265f:	62 e2 75 48 7f 74 24 	vpermt2ps zmm22,zmm1,ZMMWORD PTR [rsp+0x2c0]
  a12666:	0b 
  a12667:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm22
  a1266e:	14 
  a1266f:	62 b1 7c 48 28 c0    	vmovaps zmm0,zmm16
  a12675:	62 21 7c 48 28 c0    	vmovaps zmm24,zmm16
  a1267b:	62 d2 6d 40 7f c4    	vpermt2ps zmm0,zmm18,zmm12
  a12681:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a12687:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm0
  a1268e:	1d 
  a1268f:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm28
  a12696:	08 
  a12697:	62 42 75 48 7f e7    	vpermt2ps zmm28,zmm1,zmm15
  a1269d:	62 81 7c 48 28 c4    	vmovaps zmm16,zmm28
  a126a3:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm28
  a126aa:	15 
  a126ab:	62 41 7c 48 28 cd    	vmovaps zmm25,zmm13
  a126b1:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a126b7:	62 62 6d 40 7f cc    	vpermt2ps zmm25,zmm18,zmm4
  a126bd:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm25
  a126c4:	1c 
  a126c5:	62 21 7c 48 28 d4    	vmovaps zmm26,zmm20
  a126cb:	62 62 75 48 7f d7    	vpermt2ps zmm26,zmm1,zmm7
  a126d1:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a126d7:	62 e1 7c 48 28 da    	vmovaps zmm19,zmm2
  a126dd:	62 d2 6d 40 7f c4    	vpermt2ps zmm0,zmm18,zmm12
  a126e3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm0
  a126ea:	1b 
  a126eb:	62 42 75 48 7f da    	vpermt2ps zmm27,zmm1,zmm10
  a126f1:	62 61 7c 48 28 e6    	vmovaps zmm28,zmm6
  a126f7:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a126fd:	62 42 6d 40 7f e4    	vpermt2ps zmm28,zmm18,zmm12
  a12703:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm28
  a1270a:	06 
  a1270b:	62 62 75 48 7f c8    	vpermt2ps zmm25,zmm1,zmm0
  a12711:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a12717:	62 52 6d 40 7f f4    	vpermt2ps zmm14,zmm18,zmm12
  a1271d:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm14
  a12724:	1a 
  a12725:	62 42 75 48 7f e6    	vpermt2ps zmm28,zmm1,zmm14
  a1272b:	62 91 ad 40 15 c3    	vunpckhpd zmm0,zmm26,zmm27
  a12731:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x980],zmm0
  a12738:	26 
  a12739:	62 11 b5 40 15 ec    	vunpckhpd zmm13,zmm25,zmm28
  a1273f:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm13
  a12746:	25 
  a12747:	62 e1 7c 48 28 2d af 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6b46af]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1274e:	46 6b ff 
  a12751:	62 d2 55 40 7f c5    	vpermt2ps zmm0,zmm21,zmm13
  a12757:	62 b1 bd 48 15 f1    	vunpckhpd zmm6,zmm8,zmm17
  a1275d:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm6
  a12764:	24 
  a12765:	62 31 cd 40 15 c0    	vunpckhpd zmm8,zmm22,zmm16
  a1276b:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm8
  a12772:	23 
  a12773:	62 d2 55 40 7f f0    	vpermt2ps zmm6,zmm21,zmm8
  a12779:	62 71 7c 48 10 41 0d 	vmovups zmm8,ZMMWORD PTR [rcx+0x340]
  a12780:	62 71 7c 48 10 69 0c 	vmovups zmm13,ZMMWORD PTR [rcx+0x300]
  a12787:	62 51 4c 48 59 f5    	vmulps zmm14,zmm6,zmm13
  a1278d:	62 52 7d 48 b8 f0    	vfmadd231ps zmm14,zmm0,zmm8
  a12793:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xa00],zmm14
  a1279a:	28 
  a1279b:	62 d1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm13
  a127a1:	62 f2 3d 48 bc c6    	vfnmadd231ps zmm0,zmm8,zmm6
  a127a7:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x9c0],zmm0
  a127ae:	27 
  a127af:	62 f1 7c 48 28 05 07 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6b4807]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a127b6:	48 6b ff 
  a127b9:	62 72 7d 48 7f dd    	vpermt2ps zmm11,zmm0,zmm5
  a127bf:	62 f2 7d 48 7f dc    	vpermt2ps zmm3,zmm0,zmm4
  a127c5:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x3c0]
  a127cc:	0f 
  a127cd:	62 f2 7d 48 7f 54 24 	vpermt2ps zmm2,zmm0,ZMMWORD PTR [rsp+0x340]
  a127d4:	0d 
  a127d5:	62 62 7d 48 7f 74 24 	vpermt2ps zmm30,zmm0,ZMMWORD PTR [rsp+0x280]
  a127dc:	0a 
  a127dd:	62 31 7c 48 28 d7    	vmovaps zmm10,zmm23
  a127e3:	62 52 7d 48 7f d4    	vpermt2ps zmm10,zmm0,zmm12
  a127e9:	62 52 7d 48 7f cc    	vpermt2ps zmm9,zmm0,zmm12
  a127ef:	62 42 7d 48 7f c4    	vpermt2ps zmm24,zmm0,zmm12
  a127f5:	62 c2 7d 48 7f dc    	vpermt2ps zmm19,zmm0,zmm12
  a127fb:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x380]
  a12802:	0e 
  a12803:	62 d2 7d 48 7f ec    	vpermt2ps zmm5,zmm0,zmm12
  a12809:	62 d2 7d 48 7f fc    	vpermt2ps zmm7,zmm0,zmm12
  a1280f:	62 42 7d 48 7f fc    	vpermt2ps zmm31,zmm0,zmm12
  a12815:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x40]
  a1281c:	01 
  a1281d:	62 d2 7d 48 7f e4    	vpermt2ps zmm4,zmm0,zmm12
  a12823:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm4
  a1282a:	01 
  a1282b:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0xc0]
  a12832:	03 
  a12833:	62 d2 7d 48 7f f4    	vpermt2ps zmm6,zmm0,zmm12
  a12839:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm6
  a12840:	03 
  a12841:	62 52 7d 48 7f fc    	vpermt2ps zmm15,zmm0,zmm12
  a12847:	62 42 7d 48 7f ec    	vpermt2ps zmm29,zmm0,zmm12
  a1284d:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x240]
  a12854:	09 
  a12855:	62 52 7d 48 7f c4    	vpermt2ps zmm8,zmm0,zmm12
  a1285b:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm8
  a12862:	09 
  a12863:	62 e1 7c 48 28 fa    	vmovaps zmm23,zmm2
  a12869:	62 f2 75 48 7f d5    	vpermt2ps zmm2,zmm1,zmm5
  a1286f:	62 71 7c 48 28 e5    	vmovaps zmm12,zmm5
  a12875:	62 81 7c 48 28 d7    	vmovaps zmm18,zmm31
  a1287b:	62 62 75 48 7f fc    	vpermt2ps zmm31,zmm1,zmm4
  a12881:	62 81 7c 48 28 ce    	vmovaps zmm17,zmm30
  a12887:	62 62 75 48 7f f6    	vpermt2ps zmm30,zmm1,zmm6
  a1288d:	62 11 7c 48 28 f5    	vmovaps zmm14,zmm29
  a12893:	62 42 75 48 7f e8    	vpermt2ps zmm29,zmm1,zmm8
  a12899:	62 51 7c 48 28 eb    	vmovaps zmm13,zmm11
  a1289f:	62 52 75 48 7f da    	vpermt2ps zmm11,zmm1,zmm10
  a128a5:	62 d1 7c 48 28 f1    	vmovaps zmm6,zmm9
  a128ab:	62 12 75 48 7f c8    	vpermt2ps zmm9,zmm1,zmm24
  a128b1:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a128b7:	62 b2 75 48 7f db    	vpermt2ps zmm3,zmm1,zmm19
  a128bd:	62 f1 7c 48 28 ef    	vmovaps zmm5,zmm7
  a128c3:	62 d2 75 48 7f ff    	vpermt2ps zmm7,zmm1,zmm15
  a128c9:	62 c1 a5 48 15 f1    	vunpckhpd zmm22,zmm11,zmm9
  a128cf:	62 f1 e5 48 15 cf    	vunpckhpd zmm1,zmm3,zmm7
  a128d5:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm1
  a128dc:	18 
  a128dd:	62 a1 7c 48 28 e6    	vmovaps zmm20,zmm22
  a128e3:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a128e9:	62 e2 55 40 7f e1    	vpermt2ps zmm20,zmm21,zmm1
  a128ef:	62 81 ed 48 15 ef    	vunpckhpd zmm21,zmm2,zmm31
  a128f5:	62 91 8d 40 15 cd    	vunpckhpd zmm1,zmm30,zmm29
  a128fb:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm1
  a12902:	17 
  a12903:	62 a1 7c 48 28 c5    	vmovaps zmm16,zmm21
  a12909:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a1290f:	62 f1 7c 48 10 49 1d 	vmovups zmm1,ZMMWORD PTR [rcx+0x740]
  a12916:	62 f1 7c 48 10 41 1c 	vmovups zmm0,ZMMWORD PTR [rcx+0x700]
  a1291d:	62 f1 7c 40 59 e0    	vmulps zmm4,zmm16,zmm0
  a12923:	62 f2 5d 40 b8 e1    	vfmadd231ps zmm4,zmm20,zmm1
  a12929:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm4
  a12930:	0a 
  a12931:	62 f1 5c 40 59 c0    	vmulps zmm0,zmm20,zmm0
  a12937:	62 b2 75 48 bc c0    	vfnmadd231ps zmm0,zmm1,zmm16
  a1293d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a12944:	0f 
  a12945:	62 01 ed 48 14 ff    	vunpcklpd zmm31,zmm2,zmm31
  a1294b:	62 91 8d 40 14 c5    	vunpcklpd zmm0,zmm30,zmm29
  a12951:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a12958:	11 
  a12959:	62 d1 a5 48 14 d1    	vunpcklpd zmm2,zmm11,zmm9
  a1295f:	62 f1 e5 48 14 cf    	vunpcklpd zmm1,zmm3,zmm7
  a12965:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm1
  a1296c:	10 
  a1296d:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm31
  a12974:	19 
  a12975:	62 f1 7c 48 28 25 c1 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6b44c1]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1297c:	44 6b ff 
  a1297f:	62 62 5d 48 7f f8    	vpermt2ps zmm31,zmm4,zmm0
  a12985:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a1298b:	62 f2 5d 48 7f d1    	vpermt2ps zmm2,zmm4,zmm1
  a12991:	62 f1 7c 48 10 41 1b 	vmovups zmm0,ZMMWORD PTR [rcx+0x6c0]
  a12998:	62 f1 7c 48 10 49 1a 	vmovups zmm1,ZMMWORD PTR [rcx+0x680]
  a1299f:	62 f1 04 40 59 d9    	vmulps zmm3,zmm31,zmm1
  a129a5:	62 f2 6d 48 b8 d8    	vfmadd231ps zmm3,zmm2,zmm0
  a129ab:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm3
  a129b2:	0e 
  a129b3:	62 f1 6c 48 59 c9    	vmulps zmm1,zmm2,zmm1
  a129b9:	62 92 7d 48 bc cf    	vfnmadd231ps zmm1,zmm0,zmm31
  a129bf:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a129c6:	0d 
  a129c7:	62 71 7c 48 28 1d 2f 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6b452f]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a129ce:	45 6b ff 
  a129d1:	62 52 25 48 7f ea    	vpermt2ps zmm13,zmm11,zmm10
  a129d7:	62 92 25 48 7f f0    	vpermt2ps zmm6,zmm11,zmm24
  a129dd:	62 32 25 48 7f c3    	vpermt2ps zmm8,zmm11,zmm19
  a129e3:	62 c2 25 48 7f fc    	vpermt2ps zmm23,zmm11,zmm12
  a129e9:	62 e2 25 48 7f 54 24 	vpermt2ps zmm18,zmm11,ZMMWORD PTR [rsp+0x40]
  a129f0:	01 
  a129f1:	62 d2 25 48 7f ef    	vpermt2ps zmm5,zmm11,zmm15
  a129f7:	62 e2 25 48 7f 4c 24 	vpermt2ps zmm17,zmm11,ZMMWORD PTR [rsp+0xc0]
  a129fe:	03 
  a129ff:	62 72 25 48 7f 74 24 	vpermt2ps zmm14,zmm11,ZMMWORD PTR [rsp+0x240]
  a12a06:	09 
  a12a07:	62 b1 c5 40 14 c2    	vunpcklpd zmm0,zmm23,zmm18
  a12a0d:	62 d1 f5 40 14 ce    	vunpcklpd zmm1,zmm17,zmm14
  a12a13:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm1
  a12a1a:	13 
  a12a1b:	62 71 7c 48 28 f8    	vmovaps zmm15,zmm0
  a12a21:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a12a27:	62 f1 95 48 14 ce    	vunpcklpd zmm1,zmm13,zmm6
  a12a2d:	62 f1 bd 48 14 d5    	vunpcklpd zmm2,zmm8,zmm5
  a12a33:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm2
  a12a3a:	12 
  a12a3b:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  a12a41:	62 f2 5d 48 7f ca    	vpermt2ps zmm1,zmm4,zmm2
  a12a47:	62 f1 7c 48 10 51 12 	vmovups zmm2,ZMMWORD PTR [rcx+0x480]
  a12a4e:	62 71 74 48 59 ca    	vmulps zmm9,zmm1,zmm2
  a12a54:	62 f1 7c 48 59 da    	vmulps zmm3,zmm0,zmm2
  a12a5a:	62 f1 7c 48 10 51 13 	vmovups zmm2,ZMMWORD PTR [rcx+0x4c0]
  a12a61:	62 f2 6d 48 b8 d9    	vfmadd231ps zmm3,zmm2,zmm1
  a12a67:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm3
  a12a6e:	03 
  a12a6f:	62 72 7d 48 bc ca    	vfnmadd231ps zmm9,zmm0,zmm2
  a12a75:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm9
  a12a7c:	01 
  a12a7d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x580]
  a12a84:	16 
  a12a85:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp+0x300]
  a12a8c:	0c 
  a12a8d:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x500]
  a12a94:	14 
  a12a95:	62 f1 f5 48 14 4c 24 	vunpcklpd zmm1,zmm1,ZMMWORD PTR [rsp+0x540]
  a12a9c:	15 
  a12a9d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a12aa4:	0c 
  a12aa5:	62 91 ad 40 14 d3    	vunpcklpd zmm2,zmm26,zmm27
  a12aab:	62 81 b5 40 14 e4    	vunpcklpd zmm20,zmm25,zmm28
  a12ab1:	62 61 7c 48 28 ea    	vmovaps zmm29,zmm2
  a12ab7:	62 b2 5d 48 7f d4    	vpermt2ps zmm2,zmm4,zmm20
  a12abd:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a12ac3:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a12ac9:	62 f1 7c 48 10 59 0b 	vmovups zmm3,ZMMWORD PTR [rcx+0x2c0]
  a12ad0:	62 71 7c 48 10 49 0a 	vmovups zmm9,ZMMWORD PTR [rcx+0x280]
  a12ad7:	62 d1 7c 48 59 c9    	vmulps zmm1,zmm0,zmm9
  a12add:	62 f2 6d 48 b8 cb    	vfmadd231ps zmm1,zmm2,zmm3
  a12ae3:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a12aea:	09 
  a12aeb:	62 41 6c 48 59 e1    	vmulps zmm28,zmm2,zmm9
  a12af1:	62 62 65 48 bc e0    	vfnmadd231ps zmm28,zmm3,zmm0
  a12af7:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x140]
  a12afe:	05 
  a12aff:	62 e2 25 48 7f 5c 24 	vpermt2ps zmm19,zmm11,ZMMWORD PTR [rsp+0x880]
  a12b06:	22 
  a12b07:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm19
  a12b0e:	05 
  a12b0f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a12b16:	04 
  a12b17:	62 f2 25 48 7f 44 24 	vpermt2ps zmm0,zmm11,ZMMWORD PTR [rsp+0x840]
  a12b1e:	21 
  a12b1f:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a12b26:	04 
  a12b27:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x80]
  a12b2e:	02 
  a12b2f:	62 f2 25 48 7f 5c 24 	vpermt2ps zmm3,zmm11,ZMMWORD PTR [rsp+0x2c0]
  a12b36:	0b 
  a12b37:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a12b3e:	02 
  a12b3f:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a12b46:	07 
  a12b47:	62 f2 25 48 7f 4c 24 	vpermt2ps zmm1,zmm11,ZMMWORD PTR [rsp+0x7c0]
  a12b4e:	1f 
  a12b4f:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x780]
  a12b56:	1e 
  a12b57:	62 62 25 48 7f 74 24 	vpermt2ps zmm30,zmm11,ZMMWORD PTR [rsp+0x740]
  a12b5e:	1d 
  a12b5f:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x200]
  a12b66:	08 
  a12b67:	62 72 25 48 7f 4c 24 	vpermt2ps zmm9,zmm11,ZMMWORD PTR [rsp+0x800]
  a12b6e:	20 
  a12b6f:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm9
  a12b76:	08 
  a12b77:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x700]
  a12b7e:	1c 
  a12b7f:	62 62 25 48 7f 5c 24 	vpermt2ps zmm27,zmm11,ZMMWORD PTR [rsp+0x6c0]
  a12b86:	1b 
  a12b87:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x180]
  a12b8e:	06 
  a12b8f:	62 62 25 48 7f 44 24 	vpermt2ps zmm24,zmm11,ZMMWORD PTR [rsp+0x680]
  a12b96:	1a 
  a12b97:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm24
  a12b9e:	06 
  a12b9f:	62 f1 e5 40 14 c0    	vunpcklpd zmm0,zmm19,zmm0
  a12ba5:	62 51 e5 48 14 d9    	vunpcklpd zmm11,zmm3,zmm9
  a12bab:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm11
  a12bb2:	07 
  a12bb3:	62 e1 7c 48 28 d8    	vmovaps zmm19,zmm0
  a12bb9:	62 d2 5d 48 7f c3    	vpermt2ps zmm0,zmm4,zmm11
  a12bbf:	62 11 f5 48 14 de    	vunpcklpd zmm11,zmm1,zmm30
  a12bc5:	62 91 a5 40 14 d8    	vunpcklpd zmm3,zmm27,zmm24
  a12bcb:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm3
  a12bd2:	0b 
  a12bd3:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a12bd9:	62 f2 5d 48 7f d3    	vpermt2ps zmm2,zmm4,zmm3
  a12bdf:	62 f1 7c 48 10 59 02 	vmovups zmm3,ZMMWORD PTR [rcx+0x80]
  a12be6:	62 e1 7c 48 10 41 03 	vmovups zmm16,ZMMWORD PTR [rcx+0xc0]
  a12bed:	62 61 6c 48 59 c3    	vmulps zmm24,zmm2,zmm3
  a12bf3:	62 22 7d 48 bc c0    	vfnmadd231ps zmm24,zmm0,zmm16
  a12bf9:	62 61 7c 48 59 cb    	vmulps zmm25,zmm0,zmm3
  a12bff:	62 62 7d 40 b8 ca    	vfmadd231ps zmm25,zmm16,zmm2
  a12c05:	62 b1 c5 40 15 da    	vunpckhpd zmm3,zmm23,zmm18
  a12c0b:	62 41 f5 40 15 d6    	vunpckhpd zmm26,zmm17,zmm14
  a12c11:	62 f1 95 48 15 f6    	vunpckhpd zmm6,zmm13,zmm6
  a12c17:	62 71 bd 48 15 f5    	vunpckhpd zmm14,zmm8,zmm5
  a12c1d:	62 71 7c 48 28 eb    	vmovaps zmm13,zmm3
  a12c23:	62 92 5d 48 7f da    	vpermt2ps zmm3,zmm4,zmm26
  a12c29:	62 f1 7c 48 28 d6    	vmovaps zmm2,zmm6
  a12c2f:	62 d2 5d 48 7f f6    	vpermt2ps zmm6,zmm4,zmm14
  a12c35:	62 71 7c 48 10 41 17 	vmovups zmm8,ZMMWORD PTR [rcx+0x5c0]
  a12c3c:	62 f1 7c 48 10 69 16 	vmovups zmm5,ZMMWORD PTR [rcx+0x580]
  a12c43:	62 71 4c 48 59 cd    	vmulps zmm9,zmm6,zmm5
  a12c49:	62 52 65 48 bc c8    	vfnmadd231ps zmm9,zmm3,zmm8
  a12c4f:	62 f1 64 48 59 ed    	vmulps zmm5,zmm3,zmm5
  a12c55:	62 f2 3d 48 b8 ee    	vfmadd231ps zmm5,zmm8,zmm6
  a12c5b:	62 e2 5d 48 7f 6c 24 	vpermt2ps zmm21,zmm4,ZMMWORD PTR [rsp+0x5c0]
  a12c62:	17 
  a12c63:	62 e2 5d 48 7f 74 24 	vpermt2ps zmm22,zmm4,ZMMWORD PTR [rsp+0x600]
  a12c6a:	18 
  a12c6b:	62 f1 7c 48 10 59 1f 	vmovups zmm3,ZMMWORD PTR [rcx+0x7c0]
  a12c72:	62 f1 7c 48 10 71 1e 	vmovups zmm6,ZMMWORD PTR [rcx+0x780]
  a12c79:	62 e1 54 40 59 fe    	vmulps zmm23,zmm21,zmm6
  a12c7f:	62 e2 4d 40 b8 fb    	vfmadd231ps zmm23,zmm22,zmm3
  a12c85:	62 71 4c 40 59 c6    	vmulps zmm8,zmm22,zmm6
  a12c8b:	62 32 65 48 bc c5    	vfnmadd231ps zmm8,zmm3,zmm21
  a12c91:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x980]
  a12c98:	26 
  a12c99:	62 f2 5d 48 7f 44 24 	vpermt2ps zmm0,zmm4,ZMMWORD PTR [rsp+0x940]
  a12ca0:	25 
  a12ca1:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x900]
  a12ca8:	24 
  a12ca9:	62 e2 5d 48 7f 4c 24 	vpermt2ps zmm17,zmm4,ZMMWORD PTR [rsp+0x8c0]
  a12cb0:	23 
  a12cb1:	62 f1 7c 48 10 59 0f 	vmovups zmm3,ZMMWORD PTR [rcx+0x3c0]
  a12cb8:	62 f1 7c 48 10 71 0e 	vmovups zmm6,ZMMWORD PTR [rcx+0x380]
  a12cbf:	62 e1 74 40 59 c6    	vmulps zmm16,zmm17,zmm6
  a12cc5:	62 e2 7d 48 b8 c3    	vfmadd231ps zmm16,zmm0,zmm3
  a12ccb:	62 f1 7c 48 59 f6    	vmulps zmm6,zmm0,zmm6
  a12cd1:	62 b2 65 48 bc f1    	vfnmadd231ps zmm6,zmm3,zmm17
  a12cd7:	62 f1 7c 48 28 05 1f 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6b411f]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a12cde:	41 6b ff 
  a12ce1:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x640]
  a12ce8:	19 
  a12ce9:	62 e2 7d 48 7f 6c 24 	vpermt2ps zmm21,zmm0,ZMMWORD PTR [rsp+0x440]
  a12cf0:	11 
  a12cf1:	62 f2 7d 48 7f 7c 24 	vpermt2ps zmm7,zmm0,ZMMWORD PTR [rsp+0x400]
  a12cf8:	10 
  a12cf9:	62 e1 7c 48 10 49 19 	vmovups zmm17,ZMMWORD PTR [rcx+0x640]
  a12d00:	62 e1 7c 48 10 51 18 	vmovups zmm18,ZMMWORD PTR [rcx+0x600]
  a12d07:	62 b1 44 48 59 da    	vmulps zmm3,zmm7,zmm18
  a12d0d:	62 b2 55 40 bc d9    	vfnmadd231ps zmm3,zmm21,zmm17
  a12d13:	62 21 54 40 59 fa    	vmulps zmm31,zmm21,zmm18
  a12d19:	62 62 75 40 b8 ff    	vfmadd231ps zmm31,zmm17,zmm7
  a12d1f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a12d26:	05 
  a12d27:	62 f1 fd 48 15 7c 24 	vunpckhpd zmm7,zmm0,ZMMWORD PTR [rsp+0x100]
  a12d2e:	04 
  a12d2f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a12d36:	02 
  a12d37:	62 e1 fd 48 15 4c 24 	vunpckhpd zmm17,zmm0,ZMMWORD PTR [rsp+0x200]
  a12d3e:	08 
  a12d3f:	62 81 f5 48 15 d6    	vunpckhpd zmm18,zmm1,zmm30
  a12d45:	62 e1 a5 40 15 74 24 	vunpckhpd zmm22,zmm27,ZMMWORD PTR [rsp+0x180]
  a12d4c:	06 
  a12d4d:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a12d53:	62 b2 5d 48 7f f9    	vpermt2ps zmm7,zmm4,zmm17
  a12d59:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a12d5f:	62 a2 5d 48 7f d6    	vpermt2ps zmm18,zmm4,zmm22
  a12d65:	62 e1 7c 48 10 69 07 	vmovups zmm21,ZMMWORD PTR [rcx+0x1c0]
  a12d6c:	62 61 7c 48 10 71 06 	vmovups zmm30,ZMMWORD PTR [rcx+0x180]
  a12d73:	62 01 6c 40 59 de    	vmulps zmm27,zmm18,zmm30
  a12d79:	62 22 45 48 bc dd    	vfnmadd231ps zmm27,zmm7,zmm21
  a12d7f:	62 01 44 48 59 f6    	vmulps zmm30,zmm7,zmm30
  a12d85:	62 22 55 40 b8 f2    	vfmadd231ps zmm30,zmm21,zmm18
  a12d8b:	62 f1 7c 48 28 25 6b 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6b406b]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a12d92:	40 6b ff 
  a12d95:	62 72 5d 48 7f 54 24 	vpermt2ps zmm10,zmm4,ZMMWORD PTR [rsp+0x300]
  a12d9c:	0c 
  a12d9d:	62 22 5d 48 7f ec    	vpermt2ps zmm29,zmm4,zmm20
  a12da3:	62 f1 7c 48 10 79 09 	vmovups zmm7,ZMMWORD PTR [rcx+0x240]
  a12daa:	62 e1 7c 48 10 51 08 	vmovups zmm18,ZMMWORD PTR [rcx+0x200]
  a12db1:	62 a1 14 40 59 e2    	vmulps zmm20,zmm29,zmm18
  a12db7:	62 e2 2d 48 bc e7    	vfnmadd231ps zmm20,zmm10,zmm7
  a12dbd:	62 a1 2c 48 59 d2    	vmulps zmm18,zmm10,zmm18
  a12dc3:	62 82 45 48 b8 d5    	vfmadd231ps zmm18,zmm7,zmm29
  a12dc9:	62 12 5d 48 7f ea    	vpermt2ps zmm13,zmm4,zmm26
  a12dcf:	62 d2 5d 48 7f d6    	vpermt2ps zmm2,zmm4,zmm14
  a12dd5:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a12ddb:	62 f1 7c 48 10 79 14 	vmovups zmm7,ZMMWORD PTR [rcx+0x500]
  a12de2:	62 61 6c 48 59 ef    	vmulps zmm29,zmm2,zmm7
  a12de8:	62 e1 14 48 59 ef    	vmulps zmm21,zmm13,zmm7
  a12dee:	62 f1 7c 48 10 79 15 	vmovups zmm7,ZMMWORD PTR [rcx+0x540]
  a12df5:	62 e2 45 48 b8 ea    	vfmadd231ps zmm21,zmm7,zmm2
  a12dfb:	62 62 15 48 bc ef    	vfnmadd231ps zmm29,zmm13,zmm7
  a12e01:	62 b2 5d 48 7f c9    	vpermt2ps zmm1,zmm4,zmm17
  a12e07:	62 b2 5d 48 7f c6    	vpermt2ps zmm0,zmm4,zmm22
  a12e0d:	62 f1 7c 48 10 51 04 	vmovups zmm2,ZMMWORD PTR [rcx+0x100]
  a12e14:	62 f1 7c 48 10 61 05 	vmovups zmm4,ZMMWORD PTR [rcx+0x140]
  a12e1b:	62 e1 7c 48 59 ca    	vmulps zmm17,zmm0,zmm2
  a12e21:	62 e2 75 48 bc cc    	vfnmadd231ps zmm17,zmm1,zmm4
  a12e27:	62 61 74 48 59 d2    	vmulps zmm26,zmm1,zmm2
  a12e2d:	62 62 5d 48 b8 d0    	vfmadd231ps zmm26,zmm4,zmm0
  a12e33:	62 72 2d 48 7f 64 24 	vpermt2ps zmm12,zmm10,ZMMWORD PTR [rsp+0x480]
  a12e3a:	12 
  a12e3b:	62 72 2d 48 7f 7c 24 	vpermt2ps zmm15,zmm10,ZMMWORD PTR [rsp+0x4c0]
  a12e42:	13 
  a12e43:	62 f1 7c 48 10 41 11 	vmovups zmm0,ZMMWORD PTR [rcx+0x440]
  a12e4a:	62 f1 7c 48 10 49 10 	vmovups zmm1,ZMMWORD PTR [rcx+0x400]
  a12e51:	62 f1 04 48 59 d1    	vmulps zmm2,zmm15,zmm1
  a12e57:	62 f2 1d 48 b8 d0    	vfmadd231ps zmm2,zmm12,zmm0
  a12e5d:	62 f1 1c 48 59 e1    	vmulps zmm4,zmm12,zmm1
  a12e63:	62 d2 7d 48 bc e7    	vfnmadd231ps zmm4,zmm0,zmm15
  a12e69:	62 e2 2d 48 7f 5c 24 	vpermt2ps zmm19,zmm10,ZMMWORD PTR [rsp+0x1c0]
  a12e70:	07 
  a12e71:	62 72 2d 48 7f 5c 24 	vpermt2ps zmm11,zmm10,ZMMWORD PTR [rsp+0x2c0]
  a12e78:	0b 
  a12e79:	62 e1 64 40 5c f2    	vsubps zmm22,zmm19,zmm2
  a12e7f:	62 31 6c 48 58 eb    	vaddps zmm13,zmm2,zmm19
  a12e85:	62 11 6c 40 5c d7    	vsubps zmm10,zmm18,zmm31
  a12e8b:	62 11 6c 40 58 f7    	vaddps zmm14,zmm18,zmm31
  a12e91:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x9c0]
  a12e98:	27 
  a12e99:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x3c0]
  a12ea0:	0f 
  a12ea1:	62 61 7c 48 5c f9    	vsubps zmm31,zmm0,zmm1
  a12ea7:	62 f1 7c 48 58 f9    	vaddps zmm7,zmm0,zmm1
  a12ead:	62 b1 7c 40 5c c7    	vsubps zmm0,zmm16,zmm23
  a12eb3:	62 b1 7c 40 58 cf    	vaddps zmm1,zmm16,zmm23
  a12eb9:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a12ec0:	04 
  a12ec1:	62 e1 0c 40 5c fd    	vsubps zmm23,zmm30,zmm5
  a12ec7:	62 f1 0c 40 58 cd    	vaddps zmm1,zmm30,zmm5
  a12ecd:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a12ed4:	02 
  a12ed5:	62 f1 3c 48 5c ce    	vsubps zmm1,zmm8,zmm6
  a12edb:	62 d1 4c 48 58 f0    	vaddps zmm6,zmm6,zmm8
  a12ee1:	62 51 24 40 5c c1    	vsubps zmm8,zmm27,zmm9
  a12ee7:	62 c1 24 40 58 c1    	vaddps zmm16,zmm27,zmm9
  a12eed:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x340]
  a12ef4:	0d 
  a12ef5:	62 11 6c 48 5c cc    	vsubps zmm9,zmm2,zmm28
  a12efb:	62 71 1c 40 58 fa    	vaddps zmm15,zmm28,zmm2
  a12f01:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a12f08:	01 
  a12f09:	62 61 3c 40 5c da    	vsubps zmm27,zmm24,zmm2
  a12f0f:	62 e1 3c 40 58 d2    	vaddps zmm18,zmm24,zmm2
  a12f15:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a12f1c:	03 
  a12f1d:	62 61 34 40 5c e2    	vsubps zmm28,zmm25,zmm2
  a12f23:	62 61 34 40 58 f2    	vaddps zmm30,zmm25,zmm2
  a12f29:	62 01 74 40 5c cd    	vsubps zmm25,zmm17,zmm29
  a12f2f:	62 11 74 40 58 e5    	vaddps zmm12,zmm17,zmm29
  a12f35:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x380]
  a12f3c:	0e 
  a12f3d:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x240]
  a12f44:	09 
  a12f45:	62 e1 54 48 5c ca    	vsubps zmm17,zmm5,zmm2
  a12f4b:	62 61 54 48 58 c2    	vaddps zmm24,zmm5,zmm2
  a12f51:	62 61 24 48 5c ec    	vsubps zmm29,zmm11,zmm4
  a12f57:	62 e1 24 48 58 dc    	vaddps zmm19,zmm11,zmm4
  a12f5d:	62 b1 64 48 5c e4    	vsubps zmm4,zmm3,zmm20
  a12f63:	62 e1 5c 40 58 e3    	vaddps zmm20,zmm20,zmm3
  a12f69:	62 31 2c 40 5c dd    	vsubps zmm11,zmm26,zmm21
  a12f6f:	62 b1 2c 40 58 dd    	vaddps zmm3,zmm26,zmm21
  a12f75:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xa00]
  a12f7c:	28 
  a12f7d:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x280]
  a12f84:	0a 
  a12f85:	62 b1 6c 48 5c ed    	vsubps zmm5,zmm2,zmm21
  a12f8b:	62 a1 6c 48 58 ed    	vaddps zmm21,zmm2,zmm21
  a12f91:	62 91 54 48 5c d7    	vsubps zmm2,zmm5,zmm31
  a12f97:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a12f9e:	01 
  a12f9f:	62 61 04 40 58 fd    	vaddps zmm31,zmm31,zmm5
  a12fa5:	62 f1 4c 40 5c d4    	vsubps zmm2,zmm22,zmm4
  a12fab:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a12fb2:	03 
  a12fb3:	62 b1 5c 48 58 d6    	vaddps zmm2,zmm4,zmm22
  a12fb9:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a12fc0:	05 
  a12fc1:	62 f1 3c 48 5c d0    	vsubps zmm2,zmm8,zmm0
  a12fc7:	62 f1 3c 48 58 c0    	vaddps zmm0,zmm8,zmm0
  a12fcd:	62 71 44 40 5c c1    	vsubps zmm8,zmm23,zmm1
  a12fd3:	62 f1 44 40 58 c9    	vaddps zmm1,zmm23,zmm1
  a12fd9:	62 a1 24 40 5c f9    	vsubps zmm23,zmm27,zmm17
  a12fdf:	62 21 24 40 58 d9    	vaddps zmm27,zmm27,zmm17
  a12fe5:	62 c1 1c 40 5c c9    	vsubps zmm17,zmm28,zmm9
  a12feb:	62 41 1c 40 58 e1    	vaddps zmm28,zmm28,zmm9
  a12ff1:	62 41 34 40 58 d3    	vaddps zmm26,zmm25,zmm11
  a12ff7:	62 11 24 48 5c d9    	vsubps zmm11,zmm11,zmm25
  a12ffd:	62 41 14 48 5c ce    	vsubps zmm25,zmm13,zmm14
  a13003:	62 d1 0c 48 58 e5    	vaddps zmm4,zmm14,zmm13
  a13009:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm4
  a13010:	06 
  a13011:	62 d1 14 40 5c ea    	vsubps zmm5,zmm29,zmm10
  a13017:	62 51 14 40 58 ea    	vaddps zmm13,zmm29,zmm10
  a1301d:	62 61 7c 40 5c ee    	vsubps zmm29,zmm16,zmm6
  a13023:	62 f1 7c 40 58 e6    	vaddps zmm4,zmm16,zmm6
  a13029:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm4
  a13030:	08 
  a13031:	62 31 64 48 5c d5    	vsubps zmm10,zmm3,zmm21
  a13037:	62 31 64 48 58 f5    	vaddps zmm14,zmm3,zmm21
  a1303d:	62 d1 6c 40 5c df    	vsubps zmm3,zmm18,zmm15
  a13043:	62 81 0c 40 5c c0    	vsubps zmm16,zmm30,zmm24
  a13049:	62 81 7c 48 28 f6    	vmovaps zmm22,zmm30
  a1304f:	62 a1 64 48 58 e8    	vaddps zmm21,zmm3,zmm16
  a13055:	62 f1 7c 40 5c f3    	vsubps zmm6,zmm16,zmm3
  a1305b:	62 d1 6c 40 58 df    	vaddps zmm3,zmm18,zmm15
  a13061:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm3
  a13068:	07 
  a13069:	62 a1 64 40 5c d4    	vsubps zmm18,zmm19,zmm20
  a1306f:	62 21 64 40 58 f4    	vaddps zmm30,zmm19,zmm20
  a13075:	62 c1 44 48 5c dc    	vsubps zmm19,zmm7,zmm12
  a1307b:	62 71 1c 48 58 cf    	vaddps zmm9,zmm12,zmm7
  a13081:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x100]
  a13088:	04 
  a13089:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x80]
  a13090:	02 
  a13091:	62 71 04 48 5c e7    	vsubps zmm12,zmm15,zmm7
  a13097:	62 81 1c 48 5c e5    	vsubps zmm20,zmm12,zmm29
  a1309d:	62 41 14 40 58 ec    	vaddps zmm29,zmm29,zmm12
  a130a3:	62 f2 7d 48 18 1d 53 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff662653]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a130aa:	26 66 ff 
  a130ad:	62 e1 74 40 59 c3    	vmulps zmm16,zmm17,zmm3
  a130b3:	62 f2 7d 48 18 25 a7 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff6625a7]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a130ba:	25 66 ff 
  a130bd:	62 e2 45 40 b8 c4    	vfmadd231ps zmm16,zmm23,zmm4
  a130c3:	62 e1 74 40 59 cc    	vmulps zmm17,zmm17,zmm4
  a130c9:	62 a2 65 48 bc cf    	vfnmadd231ps zmm17,zmm3,zmm23
  a130cf:	62 e1 3c 48 59 fc    	vmulps zmm23,zmm8,zmm4
  a130d5:	62 e2 6d 48 b8 fb    	vfmadd231ps zmm23,zmm2,zmm3
  a130db:	62 f1 6c 48 59 d4    	vmulps zmm2,zmm2,zmm4
  a130e1:	62 d2 65 48 bc d0    	vfnmadd231ps zmm2,zmm3,zmm8
  a130e7:	62 71 1c 40 59 e4    	vmulps zmm12,zmm28,zmm4
  a130ed:	62 72 25 40 b8 e3    	vfmadd231ps zmm12,zmm27,zmm3
  a130f3:	62 71 1c 40 59 c3    	vmulps zmm8,zmm28,zmm3
  a130f9:	62 12 5d 48 bc c3    	vfnmadd231ps zmm8,zmm4,zmm27
  a130ff:	62 61 74 48 59 db    	vmulps zmm27,zmm1,zmm3
  a13105:	62 62 7d 48 b8 dc    	vfmadd231ps zmm27,zmm0,zmm4
  a1310b:	62 f1 74 48 59 cc    	vmulps zmm1,zmm1,zmm4
  a13111:	62 f2 65 48 bc c8    	vfnmadd231ps zmm1,zmm3,zmm0
  a13117:	62 f2 7d 48 18 1d 7b 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff66227b]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a1311e:	22 66 ff 
  a13121:	62 f1 24 48 59 c3    	vmulps zmm0,zmm11,zmm3
  a13127:	62 71 04 40 59 db    	vmulps zmm11,zmm31,zmm3
  a1312d:	62 41 7c 48 58 e3    	vaddps zmm28,zmm0,zmm11
  a13133:	62 d1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm11
  a13139:	62 71 64 48 59 5c 24 	vmulps zmm11,zmm3,ZMMWORD PTR [rsp+0x40]
  a13140:	01 
  a13141:	62 61 2c 40 59 d3    	vmulps zmm26,zmm26,zmm3
  a13147:	62 01 24 48 5c fa    	vsubps zmm31,zmm11,zmm26
  a1314d:	62 41 2c 40 58 d3    	vaddps zmm26,zmm26,zmm11
  a13153:	62 01 4c 40 58 c0    	vaddps zmm24,zmm22,zmm24
  a13159:	62 f1 04 48 58 e7    	vaddps zmm4,zmm15,zmm7
  a1315f:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0xc0]
  a13166:	03 
  a13167:	62 81 44 48 5c f7    	vsubps zmm22,zmm7,zmm31
  a1316d:	62 f1 04 40 58 ff    	vaddps zmm7,zmm31,zmm7
  a13173:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm7
  a1317a:	03 
  a1317b:	62 21 34 40 5c fb    	vsubps zmm31,zmm25,zmm19
  a13181:	62 01 64 40 58 c9    	vaddps zmm25,zmm19,zmm25
  a13187:	62 f1 4c 48 59 f3    	vmulps zmm6,zmm6,zmm3
  a1318d:	62 e1 14 40 59 db    	vmulps zmm19,zmm29,zmm3
  a13193:	62 21 4c 48 58 eb    	vaddps zmm29,zmm6,zmm19
  a13199:	62 31 4c 48 5c db    	vsubps zmm11,zmm6,zmm19
  a1319f:	62 81 54 48 5c dc    	vsubps zmm19,zmm5,zmm28
  a131a5:	62 91 54 48 58 ec    	vaddps zmm5,zmm5,zmm28
  a131ab:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm5
  a131b2:	02 
  a131b3:	62 41 6c 40 5c e2    	vsubps zmm28,zmm18,zmm10
  a131b9:	62 51 6c 40 58 fa    	vaddps zmm15,zmm18,zmm10
  a131bf:	62 e1 5c 40 59 d3    	vmulps zmm18,zmm20,zmm3
  a131c5:	62 e1 54 40 59 e3    	vmulps zmm20,zmm21,zmm3
  a131cb:	62 a1 6c 40 5c ec    	vsubps zmm21,zmm18,zmm20
  a131d1:	62 a1 5c 40 58 e2    	vaddps zmm20,zmm20,zmm18
  a131d7:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x140]
  a131de:	05 
  a131df:	62 e1 64 48 5c d0    	vsubps zmm18,zmm3,zmm0
  a131e5:	62 f1 7c 48 58 c3    	vaddps zmm0,zmm0,zmm3
  a131eb:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a131f2:	01 
  a131f3:	62 91 14 48 5c fa    	vsubps zmm7,zmm13,zmm26
  a131f9:	62 01 14 48 58 d2    	vaddps zmm26,zmm13,zmm26
  a131ff:	62 f1 74 40 5c da    	vsubps zmm3,zmm17,zmm2
  a13205:	62 e1 74 40 58 ca    	vaddps zmm17,zmm17,zmm2
  a1320b:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a13212:	06 
  a13213:	62 d1 7c 48 5c d6    	vsubps zmm2,zmm0,zmm14
  a13219:	62 71 0c 48 58 f0    	vaddps zmm14,zmm14,zmm0
  a1321f:	62 31 7c 40 58 ef    	vaddps zmm13,zmm16,zmm23
  a13225:	62 a1 7c 40 5c ff    	vsubps zmm23,zmm16,zmm23
  a1322b:	62 e1 3c 40 5c c4    	vsubps zmm16,zmm24,zmm4
  a13231:	62 f1 3c 40 58 ec    	vaddps zmm5,zmm24,zmm4
  a13237:	62 61 3c 48 5c c1    	vsubps zmm24,zmm8,zmm1
  a1323d:	62 f1 3c 48 58 f1    	vaddps zmm6,zmm8,zmm1
  a13243:	62 51 0c 40 5c c1    	vsubps zmm8,zmm30,zmm9
  a13249:	62 51 0c 40 58 c9    	vaddps zmm9,zmm30,zmm9
  a1324f:	62 d1 24 40 5c cc    	vsubps zmm1,zmm27,zmm12
  a13255:	62 11 1c 48 58 d3    	vaddps zmm10,zmm12,zmm27
  a1325b:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x200]
  a13262:	08 
  a13263:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x1c0]
  a1326a:	07 
  a1326b:	62 d1 5c 48 5c c4    	vsubps zmm0,zmm4,zmm12
  a13271:	62 f1 1c 48 58 e4    	vaddps zmm4,zmm12,zmm4
  a13277:	62 21 04 40 5c dd    	vsubps zmm27,zmm31,zmm21
  a1327d:	62 21 04 40 58 f5    	vaddps zmm30,zmm31,zmm21
  a13283:	62 11 1c 40 5c e5    	vsubps zmm12,zmm28,zmm29
  a13289:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm12
  a13290:	05 
  a13291:	62 01 1c 40 58 e5    	vaddps zmm28,zmm28,zmm29
  a13297:	62 41 4c 40 58 fd    	vaddps zmm31,zmm22,zmm13
  a1329d:	62 51 4c 40 5c e5    	vsubps zmm12,zmm22,zmm13
  a132a3:	62 61 6c 48 5c e8    	vsubps zmm29,zmm2,zmm0
  a132a9:	62 e1 6c 48 58 f0    	vaddps zmm22,zmm2,zmm0
  a132af:	62 f1 64 40 5c c3    	vsubps zmm0,zmm19,zmm3
  a132b5:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a132bc:	04 
  a132bd:	62 71 64 40 58 eb    	vaddps zmm13,zmm19,zmm3
  a132c3:	62 a1 3c 48 5c e8    	vsubps zmm21,zmm8,zmm16
  a132c9:	62 b1 3c 48 58 c0    	vaddps zmm0,zmm8,zmm16
  a132cf:	62 f1 6c 40 5c d1    	vsubps zmm2,zmm18,zmm1
  a132d5:	62 e1 6c 40 58 d1    	vaddps zmm18,zmm18,zmm1
  a132db:	62 51 34 40 5c c3    	vsubps zmm8,zmm25,zmm11
  a132e1:	62 51 34 40 58 db    	vaddps zmm11,zmm25,zmm11
  a132e7:	62 01 44 48 5c c8    	vsubps zmm25,zmm7,zmm24
  a132ed:	62 01 44 48 58 c0    	vaddps zmm24,zmm7,zmm24
  a132f3:	62 b1 04 48 5c fc    	vsubps zmm7,zmm15,zmm20
  a132f9:	62 31 04 48 58 fc    	vaddps zmm15,zmm15,zmm20
  a132ff:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a13306:	03 
  a13307:	62 b1 74 48 5c d9    	vsubps zmm3,zmm1,zmm17
  a1330d:	62 a1 74 48 58 e1    	vaddps zmm20,zmm1,zmm17
  a13313:	62 e1 0c 48 5c c5    	vsubps zmm16,zmm14,zmm5
  a13319:	62 f1 0c 48 58 ed    	vaddps zmm5,zmm14,zmm5
  a1331f:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x80]
  a13326:	02 
  a13327:	62 b1 0c 48 5c cf    	vsubps zmm1,zmm14,zmm23
  a1332d:	62 31 0c 48 58 f7    	vaddps zmm14,zmm14,zmm23
  a13333:	62 e1 34 48 5c dc    	vsubps zmm19,zmm9,zmm4
  a13339:	62 f1 34 48 58 e4    	vaddps zmm4,zmm9,zmm4
  a1333f:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x40]
  a13346:	01 
  a13347:	62 e1 34 48 5c ce    	vsubps zmm17,zmm9,zmm6
  a1334d:	62 f1 34 48 58 f6    	vaddps zmm6,zmm9,zmm6
  a13353:	62 d3 7d 48 19 e9 02 	vextractf32x4 xmm9,zmm5,0x2
  a1335a:	62 e1 7c 48 28 3d 5c 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff67bd5c]        # 8f0c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c570>
  a13361:	bd 67 ff 
  a13364:	62 f2 45 40 7f ec    	vpermt2ps zmm5,zmm23,zmm4
  a1336a:	62 f1 7c 48 11 2c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm5
  a13371:	62 f3 7d 48 19 e4 02 	vextractf32x4 xmm4,zmm4,0x2
  a13378:	c5 b0 14 e4          	vunpcklps xmm4,xmm9,xmm4
  a1337c:	c5 f8 11 64 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm4
  a13382:	62 d1 2c 40 5c e2    	vsubps zmm4,zmm26,zmm10
  a13388:	62 d1 2c 40 58 ea    	vaddps zmm5,zmm26,zmm10
  a1338e:	62 d3 7d 48 19 f1 02 	vextractf32x4 xmm9,zmm6,0x2
  a13395:	62 f2 45 40 7f f5    	vpermt2ps zmm6,zmm23,zmm5
  a1339b:	62 f1 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x50],zmm6
  a133a2:	50 00 00 00 
  a133a6:	62 f3 7d 48 19 ed 02 	vextractf32x4 xmm5,zmm5,0x2
  a133ad:	c5 b0 14 ed          	vunpcklps xmm5,xmm9,xmm5
  a133b1:	c5 f8 11 ac 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm5
  a133b8:	00 00 
  a133ba:	62 73 7d 48 19 dd 02 	vextractf32x4 xmm5,zmm11,0x2
  a133c1:	62 52 45 40 7f df    	vpermt2ps zmm11,zmm23,zmm15
  a133c7:	62 71 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xa0],zmm11
  a133ce:	a0 00 00 00 
  a133d2:	62 73 7d 48 19 fe 02 	vextractf32x4 xmm6,zmm15,0x2
  a133d9:	c5 d0 14 ee          	vunpcklps xmm5,xmm5,xmm6
  a133dd:	c5 f8 11 ac 16 e0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xe0],xmm5
  a133e4:	00 00 
  a133e6:	62 e3 7d 48 19 e5 02 	vextractf32x4 xmm5,zmm20,0x2
  a133ed:	62 c2 45 40 7f e6    	vpermt2ps zmm20,zmm23,zmm14
  a133f3:	62 e1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm20
  a133fa:	f0 00 00 00 
  a133fe:	62 73 7d 48 19 f6 02 	vextractf32x4 xmm6,zmm14,0x2
  a13405:	c5 d0 14 ee          	vunpcklps xmm5,xmm5,xmm6
  a13409:	c5 f8 11 ac 16 30 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x130],xmm5
  a13410:	00 00 
  a13412:	62 e3 7d 48 19 f5 02 	vextractf32x4 xmm5,zmm22,0x2
  a13419:	62 e2 45 40 7f f0    	vpermt2ps zmm22,zmm23,zmm0
  a1341f:	62 e1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm22
  a13426:	05 
  a13427:	62 f3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm0,0x2
  a1342e:	c5 d0 14 c0          	vunpcklps xmm0,xmm5,xmm0
  a13432:	c5 f8 11 84 16 80 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x180],xmm0
  a13439:	00 00 
  a1343b:	62 e3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm18,0x2
  a13442:	62 82 45 40 7f d0    	vpermt2ps zmm18,zmm23,zmm24
  a13448:	62 e1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x190],zmm18
  a1344f:	90 01 00 00 
  a13453:	62 63 7d 48 19 c5 02 	vextractf32x4 xmm5,zmm24,0x2
  a1345a:	c5 f8 14 c5          	vunpcklps xmm0,xmm0,xmm5
  a1345e:	c5 f8 11 84 16 d0 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x1d0],xmm0
  a13465:	00 00 
  a13467:	62 63 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm30,0x2
  a1346e:	62 02 45 40 7f f4    	vpermt2ps zmm30,zmm23,zmm28
  a13474:	62 61 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm30
  a1347b:	e0 01 00 00 
  a1347f:	62 63 7d 48 19 e5 02 	vextractf32x4 xmm5,zmm28,0x2
  a13486:	c5 f8 14 c5          	vunpcklps xmm0,xmm0,xmm5
  a1348a:	c5 f8 11 84 16 20 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x220],xmm0
  a13491:	00 00 
  a13493:	62 73 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm12,0x2
  a1349a:	62 52 45 40 7f e5    	vpermt2ps zmm12,zmm23,zmm13
  a134a0:	62 71 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x230],zmm12
  a134a7:	30 02 00 00 
  a134ab:	62 73 7d 48 19 ed 02 	vextractf32x4 xmm5,zmm13,0x2
  a134b2:	c5 f8 14 c5          	vunpcklps xmm0,xmm0,xmm5
  a134b6:	c5 f8 11 84 16 70 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x270],xmm0
  a134bd:	00 00 
  a134bf:	62 e3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm16,0x2
  a134c6:	62 a2 45 40 7f c3    	vpermt2ps zmm16,zmm23,zmm19
  a134cc:	62 e1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm16
  a134d3:	0a 
  a134d4:	62 e3 7d 48 19 dd 02 	vextractf32x4 xmm5,zmm19,0x2
  a134db:	c5 f8 14 c5          	vunpcklps xmm0,xmm0,xmm5
  a134df:	c5 f8 11 84 16 c0 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x2c0],xmm0
  a134e6:	00 00 
  a134e8:	62 e3 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm17,0x2
  a134ef:	62 e2 45 40 7f cc    	vpermt2ps zmm17,zmm23,zmm4
  a134f5:	62 e1 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm17
  a134fc:	d0 02 00 00 
  a13500:	62 f3 7d 48 19 e4 02 	vextractf32x4 xmm4,zmm4,0x2
  a13507:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  a1350b:	c5 f8 11 84 16 10 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x310],xmm0
  a13512:	00 00 
  a13514:	62 73 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm8,0x2
  a1351b:	62 72 45 40 7f c7    	vpermt2ps zmm8,zmm23,zmm7
  a13521:	62 71 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x320],zmm8
  a13528:	20 03 00 00 
  a1352c:	62 f3 7d 48 19 fc 02 	vextractf32x4 xmm4,zmm7,0x2
  a13533:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  a13537:	c5 f8 11 84 16 60 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x360],xmm0
  a1353e:	00 00 
  a13540:	62 f3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm3,0x2
  a13547:	62 f2 45 40 7f d9    	vpermt2ps zmm3,zmm23,zmm1
  a1354d:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x370],zmm3
  a13554:	70 03 00 00 
  a13558:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a1355f:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a13563:	c5 f8 11 84 16 b0 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x3b0],xmm0
  a1356a:	00 00 
  a1356c:	62 63 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm29,0x2
  a13573:	62 22 45 40 7f ed    	vpermt2ps zmm29,zmm23,zmm21
  a13579:	62 61 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3c0],zmm29
  a13580:	0f 
  a13581:	62 e3 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm21,0x2
  a13588:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1358c:	c5 f8 11 84 16 00 04 	vmovups XMMWORD PTR [rsi+rdx*1+0x400],xmm0
  a13593:	00 00 
  a13595:	62 f3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm2,0x2
  a1359c:	62 92 45 40 7f d1    	vpermt2ps zmm2,zmm23,zmm25
  a135a2:	62 f1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x410],zmm2
  a135a9:	10 04 00 00 
  a135ad:	62 63 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm25,0x2
  a135b4:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a135b8:	c5 f8 11 84 16 50 04 	vmovups XMMWORD PTR [rsi+rdx*1+0x450],xmm0
  a135bf:	00 00 
  a135c1:	62 63 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm27,0x2
  a135c8:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x140]
  a135cf:	05 
  a135d0:	62 62 45 40 7f d9    	vpermt2ps zmm27,zmm23,zmm1
  a135d6:	62 61 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x460],zmm27
  a135dd:	60 04 00 00 
  a135e1:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a135e8:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a135ec:	c5 f8 11 84 16 a0 04 	vmovups XMMWORD PTR [rsi+rdx*1+0x4a0],xmm0
  a135f3:	00 00 
  a135f5:	62 63 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm31,0x2
  a135fc:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a13603:	04 
  a13604:	62 62 45 40 7f f9    	vpermt2ps zmm31,zmm23,zmm1
  a1360a:	62 61 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4b0],zmm31
  a13611:	b0 04 00 00 
  a13615:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a1361c:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a13620:	c5 f8 11 84 16 f0 04 	vmovups XMMWORD PTR [rsi+rdx*1+0x4f0],xmm0
  a13627:	00 00 
  a13629:	48 81 c2 00 05 00 00 	add    rdx,0x500
  a13630:	48 39 d0             	cmp    rax,rdx
  a13633:	0f 85 77 ea ff ff    	jne    a120b0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a13639:	48 89 ec             	mov    rsp,rbp
  a1363c:	5d                   	pop    rbp
  a1363d:	c5 f8 77             	vzeroupper
  a13640:	c3                   	ret
