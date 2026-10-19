
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a05100 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a05100:	55                   	push   rbp
  a05101:	48 89 e5             	mov    rbp,rsp
  a05104:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a05108:	48 81 ec 80 02 00 00 	sub    rsp,0x280
  a0510f:	c6 84 24 00 02 00 00 	mov    BYTE PTR [rsp+0x200],0x0
  a05116:	00 
  a05117:	48 8d 84 24 00 02 00 	lea    rax,[rsp+0x200]
  a0511e:	00 
  a0511f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a05124:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a05129:	62 f1 7c 48 10 0f    	vmovups zmm1,ZMMWORD PTR [rdi]
  a0512f:	c5 fc 10 47 40       	vmovups ymm0,YMMWORD PTR [rdi+0x40]
  a05134:	62 f1 7c 48 28 15 c2 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6892c2]        # 8e400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b8b0>
  a0513b:	92 68 ff 
  a0513e:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a05144:	62 f2 6d 48 7f d8    	vpermt2ps zmm3,zmm2,zmm0
  a0514a:	62 f1 7c 48 28 25 ec 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6892ec]        # 8e440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b8f0>
  a05151:	92 68 ff 
  a05154:	62 f2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm0
  a0515a:	62 f1 7c 48 10 af 60 	vmovups zmm5,ZMMWORD PTR [rdi+0x60]
  a05161:	00 00 00 
  a05164:	c5 fc 10 87 a0 00 00 	vmovups ymm0,YMMWORD PTR [rdi+0xa0]
  a0516b:	00 
  a0516c:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a05172:	62 f2 6d 48 7f f0    	vpermt2ps zmm6,zmm2,zmm0
  a05178:	62 f2 5d 48 7f e8    	vpermt2ps zmm5,zmm4,zmm0
  a0517e:	62 71 7c 48 10 47 03 	vmovups zmm8,ZMMWORD PTR [rdi+0xc0]
  a05185:	c5 fc 10 87 00 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x100]
  a0518c:	00 
  a0518d:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a05193:	62 72 6d 48 7f c8    	vpermt2ps zmm9,zmm2,zmm0
  a05199:	62 72 5d 48 7f c0    	vpermt2ps zmm8,zmm4,zmm0
  a0519f:	62 71 7c 48 10 97 20 	vmovups zmm10,ZMMWORD PTR [rdi+0x120]
  a051a6:	01 00 00 
  a051a9:	c5 fc 10 87 60 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x160]
  a051b0:	00 
  a051b1:	62 f2 2d 48 77 d0    	vpermi2ps zmm2,zmm10,zmm0
  a051b7:	62 72 5d 48 7f d0    	vpermt2ps zmm10,zmm4,zmm0
  a051bd:	62 51 64 48 58 d9    	vaddps zmm11,zmm3,zmm9
  a051c3:	62 71 4c 48 58 e2    	vaddps zmm12,zmm6,zmm2
  a051c9:	62 d1 24 48 58 c4    	vaddps zmm0,zmm11,zmm12
  a051cf:	62 51 74 48 58 e8    	vaddps zmm13,zmm1,zmm8
  a051d5:	62 51 54 48 58 f2    	vaddps zmm14,zmm5,zmm10
  a051db:	62 d1 14 48 58 fe    	vaddps zmm7,zmm13,zmm14
  a051e1:	62 d1 64 48 5c d9    	vsubps zmm3,zmm3,zmm9
  a051e7:	62 d1 54 48 5c ea    	vsubps zmm5,zmm5,zmm10
  a051ed:	62 f1 64 48 58 e5    	vaddps zmm4,zmm3,zmm5
  a051f3:	62 d1 74 48 5c c8    	vsubps zmm1,zmm1,zmm8
  a051f9:	62 f1 6c 48 5c d6    	vsubps zmm2,zmm2,zmm6
  a051ff:	62 e1 6c 48 58 c9    	vaddps zmm17,zmm2,zmm1
  a05205:	62 d1 24 48 5c f4    	vsubps zmm6,zmm11,zmm12
  a0520b:	62 51 14 48 5c f6    	vsubps zmm14,zmm13,zmm14
  a05211:	62 71 64 48 5c c5    	vsubps zmm8,zmm3,zmm5
  a05217:	62 e1 74 48 5c d2    	vsubps zmm18,zmm1,zmm2
  a0521d:	62 e1 7c 48 28 25 59 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6c1d59]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a05224:	1d 6c ff 
  a05227:	62 a1 64 00 57 db    	vxorps xmm19,xmm19,xmm19
  a0522d:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a05233:	62 b2 5d 40 7f d3    	vpermt2ps zmm2,zmm20,zmm19
  a05239:	62 e1 7c 48 28 35 7d 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6c1d7d]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a05240:	1d 6c ff 
  a05243:	62 b2 4d 40 7f c3    	vpermt2ps zmm0,zmm22,zmm19
  a05249:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a0524f:	62 32 5d 40 7f d3    	vpermt2ps zmm10,zmm20,zmm19
  a05255:	62 b2 4d 40 7f e3    	vpermt2ps zmm4,zmm22,zmm19
  a0525b:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  a05261:	62 b2 5d 40 7f eb    	vpermt2ps zmm5,zmm20,zmm19
  a05267:	62 b2 4d 40 7f f3    	vpermt2ps zmm6,zmm22,zmm19
  a0526d:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a05273:	62 32 5d 40 7f db    	vpermt2ps zmm11,zmm20,zmm19
  a05279:	62 32 4d 40 7f c3    	vpermt2ps zmm8,zmm22,zmm19
  a0527f:	62 a1 54 00 57 ed    	vxorps xmm21,xmm21,xmm21
  a05285:	62 a2 5d 40 7f ed    	vpermt2ps zmm21,zmm20,zmm21
  a0528b:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a05290:	62 52 4d 40 7f ed    	vpermt2ps zmm13,zmm22,zmm13
  a05296:	62 e1 7c 48 28 05 60 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6c1c60]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0529d:	1c 6c ff 
  a052a0:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a052a6:	62 b2 7d 40 7f cd    	vpermt2ps zmm1,zmm16,zmm21
  a052ac:	62 61 7c 48 28 05 8a 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff6c1c8a]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a052b3:	1c 6c ff 
  a052b6:	62 b2 3d 40 7f d5    	vpermt2ps zmm2,zmm24,zmm21
  a052bc:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a052c2:	62 32 7d 40 7f e5    	vpermt2ps zmm12,zmm16,zmm21
  a052c8:	62 32 3d 40 7f d5    	vpermt2ps zmm10,zmm24,zmm21
  a052ce:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a052d4:	62 32 7d 40 7f cd    	vpermt2ps zmm9,zmm16,zmm21
  a052da:	62 b2 3d 40 7f ed    	vpermt2ps zmm5,zmm24,zmm21
  a052e0:	62 51 7c 48 28 fb    	vmovaps zmm15,zmm11
  a052e6:	62 32 7d 40 7f fd    	vpermt2ps zmm15,zmm16,zmm21
  a052ec:	62 32 3d 40 7f dd    	vpermt2ps zmm11,zmm24,zmm21
  a052f2:	62 d2 7d 40 7f c5    	vpermt2ps zmm0,zmm16,zmm13
  a052f8:	62 d2 7d 40 7f e5    	vpermt2ps zmm4,zmm16,zmm13
  a052fe:	62 d2 7d 40 7f f5    	vpermt2ps zmm6,zmm16,zmm13
  a05304:	62 52 7d 40 7f c5    	vpermt2ps zmm8,zmm16,zmm13
  a0530a:	62 d1 f5 48 14 d9    	vunpcklpd zmm3,zmm1,zmm9
  a05310:	62 51 f5 48 15 c9    	vunpckhpd zmm9,zmm1,zmm9
  a05316:	62 41 9d 48 14 cf    	vunpcklpd zmm25,zmm12,zmm15
  a0531c:	62 51 9d 48 15 e7    	vunpckhpd zmm12,zmm12,zmm15
  a05322:	62 f1 ed 48 14 cd    	vunpcklpd zmm1,zmm2,zmm5
  a05328:	62 f1 ed 48 15 ed    	vunpckhpd zmm5,zmm2,zmm5
  a0532e:	62 51 ad 48 14 fb    	vunpcklpd zmm15,zmm10,zmm11
  a05334:	62 41 ad 48 15 d3    	vunpckhpd zmm26,zmm10,zmm11
  a0533a:	62 71 fd 48 14 d6    	vunpcklpd zmm10,zmm0,zmm6
  a05340:	62 f1 fd 48 15 d6    	vunpckhpd zmm2,zmm0,zmm6
  a05346:	62 41 dd 48 14 d8    	vunpcklpd zmm27,zmm4,zmm8
  a0534c:	62 41 dd 48 15 e0    	vunpckhpd zmm28,zmm4,zmm8
  a05352:	62 71 7c 48 28 05 a4 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6c1aa4]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a05359:	1a 6c ff 
  a0535c:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a05362:	62 92 3d 48 7f c1    	vpermt2ps zmm0,zmm8,zmm25
  a05368:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a0536f:	03 
  a05370:	62 e1 7c 48 28 3d c6 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6c1ac6]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a05377:	1a 6c ff 
  a0537a:	62 92 45 40 7f d9    	vpermt2ps zmm3,zmm23,zmm25
  a05380:	62 d1 7c 48 28 e1    	vmovaps zmm4,zmm9
  a05386:	62 d2 3d 48 7f e4    	vpermt2ps zmm4,zmm8,zmm12
  a0538c:	62 52 45 40 7f cc    	vpermt2ps zmm9,zmm23,zmm12
  a05392:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a05398:	62 52 3d 48 7f df    	vpermt2ps zmm11,zmm8,zmm15
  a0539e:	62 d2 45 40 7f cf    	vpermt2ps zmm1,zmm23,zmm15
  a053a4:	62 71 7c 48 28 fd    	vmovaps zmm15,zmm5
  a053aa:	62 12 3d 48 7f fa    	vpermt2ps zmm15,zmm8,zmm26
  a053b0:	62 92 45 40 7f ea    	vpermt2ps zmm5,zmm23,zmm26
  a053b6:	62 d1 7c 48 28 f2    	vmovaps zmm6,zmm10
  a053bc:	62 92 3d 48 7f f3    	vpermt2ps zmm6,zmm8,zmm27
  a053c2:	62 12 45 40 7f d3    	vpermt2ps zmm10,zmm23,zmm27
  a053c8:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a053ce:	62 12 3d 48 7f e4    	vpermt2ps zmm12,zmm8,zmm28
  a053d4:	62 92 45 40 7f d4    	vpermt2ps zmm2,zmm23,zmm28
  a053da:	62 61 7c 48 28 cf    	vmovaps zmm25,zmm7
  a053e0:	62 22 5d 40 7f cb    	vpermt2ps zmm25,zmm20,zmm19
  a053e6:	62 b2 4d 40 7f fb    	vpermt2ps zmm7,zmm22,zmm19
  a053ec:	62 21 7c 48 28 d9    	vmovaps zmm27,zmm17
  a053f2:	62 22 5d 40 7f db    	vpermt2ps zmm27,zmm20,zmm19
  a053f8:	62 a2 4d 40 7f cb    	vpermt2ps zmm17,zmm22,zmm19
  a053fe:	62 41 7c 48 28 e6    	vmovaps zmm28,zmm14
  a05404:	62 22 5d 40 7f e3    	vpermt2ps zmm28,zmm20,zmm19
  a0540a:	62 32 4d 40 7f f3    	vpermt2ps zmm14,zmm22,zmm19
  a05410:	62 a2 6d 40 77 e3    	vpermi2ps zmm20,zmm18,zmm19
  a05416:	62 a2 4d 40 7f d3    	vpermt2ps zmm18,zmm22,zmm19
  a0541c:	62 81 7c 48 28 d9    	vmovaps zmm19,zmm25
  a05422:	62 a2 7d 40 7f dd    	vpermt2ps zmm19,zmm16,zmm21
  a05428:	62 22 3d 40 7f cd    	vpermt2ps zmm25,zmm24,zmm21
  a0542e:	62 81 7c 48 28 f3    	vmovaps zmm22,zmm27
  a05434:	62 a2 7d 40 7f f5    	vpermt2ps zmm22,zmm16,zmm21
  a0543a:	62 22 3d 40 7f dd    	vpermt2ps zmm27,zmm24,zmm21
  a05440:	62 01 7c 48 28 d4    	vmovaps zmm26,zmm28
  a05446:	62 22 7d 40 7f d5    	vpermt2ps zmm26,zmm16,zmm21
  a0544c:	62 22 3d 40 7f e5    	vpermt2ps zmm28,zmm24,zmm21
  a05452:	62 21 7c 48 28 ec    	vmovaps zmm29,zmm20
  a05458:	62 22 7d 40 7f ed    	vpermt2ps zmm29,zmm16,zmm21
  a0545e:	62 a2 3d 40 7f e5    	vpermt2ps zmm20,zmm24,zmm21
  a05464:	62 d2 7d 40 7f fd    	vpermt2ps zmm7,zmm16,zmm13
  a0546a:	62 c2 7d 40 7f cd    	vpermt2ps zmm17,zmm16,zmm13
  a05470:	62 52 7d 40 7f f5    	vpermt2ps zmm14,zmm16,zmm13
  a05476:	62 c2 7d 40 7f d5    	vpermt2ps zmm18,zmm16,zmm13
  a0547c:	62 81 e5 40 14 c2    	vunpcklpd zmm16,zmm19,zmm26
  a05482:	62 01 e5 40 15 d2    	vunpckhpd zmm26,zmm19,zmm26
  a05488:	62 81 cd 40 14 ed    	vunpcklpd zmm21,zmm22,zmm29
  a0548e:	62 81 cd 40 15 f5    	vunpckhpd zmm22,zmm22,zmm29
  a05494:	62 11 b5 40 14 ec    	vunpcklpd zmm13,zmm25,zmm28
  a0549a:	62 81 b5 40 15 dc    	vunpckhpd zmm19,zmm25,zmm28
  a054a0:	62 21 a5 40 14 c4    	vunpcklpd zmm24,zmm27,zmm20
  a054a6:	62 a1 a5 40 15 e4    	vunpckhpd zmm20,zmm27,zmm20
  a054ac:	62 41 c5 48 14 de    	vunpcklpd zmm27,zmm7,zmm14
  a054b2:	62 51 c5 48 15 f6    	vunpckhpd zmm14,zmm7,zmm14
  a054b8:	62 21 f5 40 14 ca    	vunpcklpd zmm25,zmm17,zmm18
  a054be:	62 a1 f5 40 15 d2    	vunpckhpd zmm18,zmm17,zmm18
  a054c4:	62 b1 7c 48 28 c0    	vmovaps zmm0,zmm16
  a054ca:	62 b2 3d 48 7f c5    	vpermt2ps zmm0,zmm8,zmm21
  a054d0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a054d7:	02 
  a054d8:	62 a2 45 40 7f c5    	vpermt2ps zmm16,zmm23,zmm21
  a054de:	62 81 7c 48 28 ca    	vmovaps zmm17,zmm26
  a054e4:	62 a2 3d 48 7f ce    	vpermt2ps zmm17,zmm8,zmm22
  a054ea:	62 22 45 40 7f d6    	vpermt2ps zmm26,zmm23,zmm22
  a054f0:	62 41 7c 48 28 e5    	vmovaps zmm28,zmm13
  a054f6:	62 02 3d 48 7f e0    	vpermt2ps zmm28,zmm8,zmm24
  a054fc:	62 12 45 40 7f e8    	vpermt2ps zmm13,zmm23,zmm24
  a05502:	62 21 7c 48 28 eb    	vmovaps zmm29,zmm19
  a05508:	62 22 3d 48 7f ec    	vpermt2ps zmm29,zmm8,zmm20
  a0550e:	62 a2 45 40 7f dc    	vpermt2ps zmm19,zmm23,zmm20
  a05514:	62 81 7c 48 28 e3    	vmovaps zmm20,zmm27
  a0551a:	62 82 3d 48 7f e1    	vpermt2ps zmm20,zmm8,zmm25
  a05520:	62 02 45 40 7f d9    	vpermt2ps zmm27,zmm23,zmm25
  a05526:	62 32 0d 48 77 c2    	vpermi2ps zmm8,zmm14,zmm18
  a0552c:	62 32 45 40 7f f2    	vpermt2ps zmm14,zmm23,zmm18
  a05532:	62 61 7c 48 10 4a 02 	vmovups zmm25,ZMMWORD PTR [rdx+0x80]
  a05539:	62 61 7c 48 10 42 03 	vmovups zmm24,ZMMWORD PTR [rdx+0xc0]
  a05540:	62 e1 7c 48 10 72 04 	vmovups zmm22,ZMMWORD PTR [rdx+0x100]
  a05547:	62 e1 7c 48 10 6a 05 	vmovups zmm21,ZMMWORD PTR [rdx+0x140]
  a0554e:	62 61 7c 48 10 72 06 	vmovups zmm30,ZMMWORD PTR [rdx+0x180]
  a05555:	62 e1 7c 48 10 7a 0c 	vmovups zmm23,ZMMWORD PTR [rdx+0x300]
  a0555c:	62 61 7c 48 10 7a 0d 	vmovups zmm31,ZMMWORD PTR [rdx+0x340]
  a05563:	62 a1 04 48 59 d7    	vmulps zmm18,zmm15,zmm23
  a05569:	62 82 15 40 bc d7    	vfnmadd231ps zmm18,zmm29,zmm31
  a0556f:	62 a1 14 40 59 ff    	vmulps zmm23,zmm29,zmm23
  a05575:	62 61 7c 48 10 6a 07 	vmovups zmm29,ZMMWORD PTR [rdx+0x1c0]
  a0557c:	62 c2 05 40 b8 ff    	vfmadd231ps zmm23,zmm31,zmm15
  a05582:	62 61 7c 48 10 7a 08 	vmovups zmm31,ZMMWORD PTR [rdx+0x200]
  a05589:	62 11 34 48 59 fe    	vmulps zmm15,zmm9,zmm30
  a0558f:	62 12 2d 40 bc fd    	vfnmadd231ps zmm15,zmm26,zmm29
  a05595:	62 01 2c 40 59 d6    	vmulps zmm26,zmm26,zmm30
  a0559b:	62 61 7c 48 10 72 12 	vmovups zmm30,ZMMWORD PTR [rdx+0x480]
  a055a2:	62 42 15 40 b8 d1    	vfmadd231ps zmm26,zmm29,zmm9
  a055a8:	62 61 7c 48 10 6a 13 	vmovups zmm29,ZMMWORD PTR [rdx+0x4c0]
  a055af:	62 11 2c 48 59 ce    	vmulps zmm9,zmm10,zmm30
  a055b5:	62 12 25 40 bc cd    	vfnmadd231ps zmm9,zmm27,zmm29
  a055bb:	62 01 24 40 59 de    	vmulps zmm27,zmm27,zmm30
  a055c1:	62 61 7c 48 10 72 09 	vmovups zmm30,ZMMWORD PTR [rdx+0x240]
  a055c8:	62 42 15 40 b8 da    	vfmadd231ps zmm27,zmm29,zmm10
  a055ce:	62 f1 7c 48 10 42 0a 	vmovups zmm0,ZMMWORD PTR [rdx+0x280]
  a055d5:	62 01 24 48 59 ef    	vmulps zmm29,zmm11,zmm31
  a055db:	62 02 1d 40 bc ee    	vfnmadd231ps zmm29,zmm28,zmm30
  a055e1:	62 11 1c 40 59 d7    	vmulps zmm10,zmm28,zmm31
  a055e7:	62 61 7c 48 10 62 14 	vmovups zmm28,ZMMWORD PTR [rdx+0x500]
  a055ee:	62 52 0d 40 b8 d3    	vfmadd231ps zmm10,zmm30,zmm11
  a055f4:	62 61 7c 48 10 72 15 	vmovups zmm30,ZMMWORD PTR [rdx+0x540]
  a055fb:	62 01 1c 48 59 fc    	vmulps zmm31,zmm12,zmm28
  a05601:	62 02 3d 48 bc fe    	vfnmadd231ps zmm31,zmm8,zmm30
  a05607:	62 11 3c 48 59 dc    	vmulps zmm11,zmm8,zmm28
  a0560d:	62 71 7c 48 10 42 0e 	vmovups zmm8,ZMMWORD PTR [rdx+0x380]
  a05614:	62 52 0d 40 b8 dc    	vfmadd231ps zmm11,zmm30,zmm12
  a0561a:	62 61 7c 48 10 62 0f 	vmovups zmm28,ZMMWORD PTR [rdx+0x3c0]
  a05621:	62 51 54 48 59 e0    	vmulps zmm12,zmm5,zmm8
  a05627:	62 12 65 40 bc e4    	vfnmadd231ps zmm12,zmm19,zmm28
  a0562d:	62 51 64 40 59 c0    	vmulps zmm8,zmm19,zmm8
  a05633:	62 e1 7c 48 10 5a 0b 	vmovups zmm19,ZMMWORD PTR [rdx+0x2c0]
  a0563a:	62 72 1d 40 b8 c5    	vfmadd231ps zmm8,zmm28,zmm5
  a05640:	62 f1 7c 48 10 6a 10 	vmovups zmm5,ZMMWORD PTR [rdx+0x400]
  a05647:	62 01 64 48 59 e1    	vmulps zmm28,zmm3,zmm25
  a0564d:	62 02 7d 40 bc e0    	vfnmadd231ps zmm28,zmm16,zmm24
  a05653:	62 01 7c 40 59 c9    	vmulps zmm25,zmm16,zmm25
  a05659:	62 e1 7c 48 10 42 11 	vmovups zmm16,ZMMWORD PTR [rdx+0x440]
  a05660:	62 62 3d 40 b8 cb    	vfmadd231ps zmm25,zmm24,zmm3
  a05666:	62 f1 7c 48 10 5a 16 	vmovups zmm3,ZMMWORD PTR [rdx+0x580]
  a0566d:	62 61 4c 48 59 c5    	vmulps zmm24,zmm6,zmm5
  a05673:	62 22 5d 40 bc c0    	vfnmadd231ps zmm24,zmm20,zmm16
  a05679:	62 e1 5c 40 59 e5    	vmulps zmm20,zmm20,zmm5
  a0567f:	62 61 7c 48 10 72 17 	vmovups zmm30,ZMMWORD PTR [rdx+0x5c0]
  a05686:	62 e2 7d 40 b8 e6    	vfmadd231ps zmm20,zmm16,zmm6
  a0568c:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0xc0]
  a05693:	03 
  a05694:	62 b1 44 48 58 ea    	vaddps zmm5,zmm7,zmm18
  a0569a:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm5
  a056a1:	01 
  a056a2:	62 a1 5c 48 59 c6    	vmulps zmm16,zmm4,zmm22
  a056a8:	62 a2 75 40 bc c5    	vfnmadd231ps zmm16,zmm17,zmm21
  a056ae:	62 a1 74 40 59 f6    	vmulps zmm22,zmm17,zmm22
  a056b4:	62 d1 04 48 58 f1    	vaddps zmm6,zmm15,zmm9
  a056ba:	62 e2 55 40 b8 f4    	vfmadd231ps zmm22,zmm21,zmm4
  a056c0:	62 f1 54 48 58 e6    	vaddps zmm4,zmm5,zmm6
  a056c6:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm4
  a056cd:	04 
  a056ce:	62 e1 6c 48 59 eb    	vmulps zmm21,zmm2,zmm3
  a056d4:	62 82 0d 48 bc ee    	vfnmadd231ps zmm21,zmm14,zmm30
  a056da:	62 71 0c 48 59 f3    	vmulps zmm14,zmm14,zmm3
  a056e0:	62 91 14 40 58 e7    	vaddps zmm4,zmm29,zmm31
  a056e6:	62 72 0d 40 b8 f2    	vfmadd231ps zmm14,zmm30,zmm2
  a056ec:	62 91 1c 48 58 dc    	vaddps zmm3,zmm12,zmm28
  a056f2:	62 61 74 48 59 f0    	vmulps zmm30,zmm1,zmm0
  a056f8:	62 22 15 48 bc f3    	vfnmadd231ps zmm30,zmm13,zmm19
  a056fe:	62 71 14 48 59 e8    	vmulps zmm13,zmm13,zmm0
  a05704:	62 f1 5c 48 58 c3    	vaddps zmm0,zmm4,zmm3
  a0570a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a05711:	06 
  a05712:	62 72 65 40 b8 e9    	vfmadd231ps zmm13,zmm19,zmm1
  a05718:	62 b1 3c 40 58 d0    	vaddps zmm2,zmm24,zmm16
  a0571e:	62 81 54 40 58 de    	vaddps zmm19,zmm21,zmm30
  a05724:	62 81 14 40 5c cf    	vsubps zmm17,zmm29,zmm31
  a0572a:	62 01 3c 48 58 f9    	vaddps zmm31,zmm8,zmm25
  a05730:	62 91 3c 48 5c e9    	vsubps zmm5,zmm8,zmm25
  a05736:	62 b1 6c 48 58 cb    	vaddps zmm1,zmm2,zmm19
  a0573c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a05743:	07 
  a05744:	62 a1 3c 40 5c c0    	vsubps zmm16,zmm24,zmm16
  a0574a:	62 41 0c 48 58 cd    	vaddps zmm25,zmm14,zmm13
  a05750:	62 41 0c 48 5c c5    	vsubps zmm24,zmm14,zmm13
  a05756:	62 71 7c 48 58 c1    	vaddps zmm8,zmm0,zmm1
  a0575c:	62 31 44 48 5c ea    	vsubps zmm13,zmm7,zmm18
  a05762:	62 81 2c 40 58 d3    	vaddps zmm18,zmm26,zmm27
  a05768:	62 01 2c 40 5c db    	vsubps zmm27,zmm26,zmm27
  a0576e:	62 41 2c 48 58 d3    	vaddps zmm26,zmm10,zmm11
  a05774:	62 41 2c 48 5c eb    	vsubps zmm29,zmm10,zmm11
  a0577a:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x80]
  a05781:	02 
  a05782:	62 71 44 40 58 df    	vaddps zmm11,zmm23,zmm7
  a05788:	62 51 1c 40 5c e4    	vsubps zmm12,zmm28,zmm12
  a0578e:	62 21 5c 40 58 e6    	vaddps zmm28,zmm20,zmm22
  a05794:	62 a1 5c 40 5c e6    	vsubps zmm20,zmm20,zmm22
  a0579a:	62 c1 6c 40 58 f3    	vaddps zmm22,zmm18,zmm11
  a057a0:	62 b1 0c 40 5c cd    	vsubps zmm1,zmm30,zmm21
  a057a6:	62 91 2c 40 58 c7    	vaddps zmm0,zmm26,zmm31
  a057ac:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a057b3:	05 
  a057b4:	62 21 44 48 5c f7    	vsubps zmm30,zmm7,zmm23
  a057ba:	62 11 1c 40 58 f1    	vaddps zmm14,zmm28,zmm25
  a057c0:	62 51 34 48 5c ff    	vsubps zmm15,zmm9,zmm15
  a057c6:	62 c1 7c 48 58 fe    	vaddps zmm23,zmm0,zmm14
  a057cc:	62 f1 5c 48 5c fb    	vsubps zmm7,zmm4,zmm3
  a057d2:	62 f1 74 40 58 e5    	vaddps zmm4,zmm17,zmm5
  a057d8:	62 a1 6c 48 5c db    	vsubps zmm19,zmm2,zmm19
  a057de:	62 91 7c 40 58 d8    	vaddps zmm3,zmm16,zmm24
  a057e4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a057eb:	01 
  a057ec:	62 71 7c 48 5c d6    	vsubps zmm10,zmm0,zmm6
  a057f2:	62 f1 5c 48 58 f3    	vaddps zmm6,zmm4,zmm3
  a057f8:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm6
  a057ff:	02 
  a05800:	62 01 2c 40 5c d7    	vsubps zmm26,zmm26,zmm31
  a05806:	62 91 14 48 58 d3    	vaddps zmm2,zmm13,zmm27
  a0580c:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a05813:	03 
  a05814:	62 01 1c 40 5c c9    	vsubps zmm25,zmm28,zmm25
  a0581a:	62 f2 7d 48 18 05 3c 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff66fc3c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a05821:	fc 66 ff 
  a05824:	62 31 24 48 5c ca    	vsubps zmm9,zmm11,zmm18
  a0582a:	62 e1 7c 48 28 e8    	vmovaps zmm21,zmm0
  a05830:	62 e2 4d 48 ac ea    	vfnmadd213ps zmm21,zmm6,zmm2
  a05836:	62 01 14 48 5c db    	vsubps zmm27,zmm13,zmm27
  a0583c:	62 41 14 40 58 e4    	vaddps zmm28,zmm29,zmm12
  a05842:	62 71 74 40 5c ed    	vsubps zmm13,zmm17,zmm5
  a05848:	62 f1 5c 40 58 d1    	vaddps zmm2,zmm20,zmm1
  a0584e:	62 81 7c 40 5c c0    	vsubps zmm16,zmm16,zmm24
  a05854:	62 91 04 48 58 f6    	vaddps zmm6,zmm15,zmm30
  a0585a:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm6
  a05861:	01 
  a05862:	62 41 0c 40 5c f7    	vsubps zmm30,zmm30,zmm15
  a05868:	62 72 7d 48 18 1d 62 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff66fa62]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0586f:	fa 66 ff 
  a05872:	62 d1 14 40 5c ec    	vsubps zmm5,zmm29,zmm12
  a05878:	62 e1 1c 40 58 ca    	vaddps zmm17,zmm28,zmm2
  a0587e:	62 e1 5c 40 5c d1    	vsubps zmm18,zmm20,zmm1
  a05884:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a0588a:	62 32 45 40 ac e6    	vfnmadd213ps zmm12,zmm23,zmm22
  a05890:	62 b1 4c 20 58 cf    	vaddps ymm1,ymm22,ymm23
  a05896:	62 e1 7c 48 28 e0    	vmovaps zmm20,zmm0
  a0589c:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x100]
  a058a3:	04 
  a058a4:	62 c2 3d 48 ac e7    	vfnmadd213ps zmm20,zmm8,zmm15
  a058aa:	c4 41 00 58 f8       	vaddps xmm15,xmm15,xmm8
  a058af:	c5 7c 28 05 29 19 67 	vmovaps ymm8,YMMWORD PTR [rip+0xffffffffff671929]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a058b6:	ff 
  a058b7:	62 72 3d 28 7f f9    	vpermt2ps ymm15,ymm8,ymm1
  a058bd:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a058c3:	62 62 75 40 ac ee    	vfnmadd213ps zmm29,zmm17,zmm6
  a058c9:	c5 dc 5c cb          	vsubps ymm1,ymm4,ymm3
  a058cd:	62 41 74 28 59 fb    	vmulps ymm31,ymm1,ymm11
  a058d3:	62 91 14 20 5c df    	vsubps ymm3,ymm29,ymm31
  a058d9:	62 f1 1c 00 5c ca    	vsubps xmm1,xmm28,xmm2
  a058df:	c5 a0 59 c9          	vmulps xmm1,xmm11,xmm1
  a058e3:	62 f1 54 00 58 f1    	vaddps xmm6,xmm21,xmm1
  a058e9:	62 f2 3d 28 7f f3    	vpermt2ps ymm6,ymm8,ymm3
  a058ef:	62 b1 44 48 58 e3    	vaddps zmm4,zmm7,zmm19
  a058f5:	62 b1 44 28 5c db    	vsubps ymm3,ymm7,ymm19
  a058fb:	62 91 2c 40 58 f9    	vaddps zmm7,zmm26,zmm25
  a05901:	62 81 2c 00 5c d9    	vsubps xmm19,xmm26,xmm25
  a05907:	62 e1 7c 48 28 f8    	vmovaps zmm23,zmm0
  a0590d:	62 d1 7c 48 28 d2    	vmovaps zmm2,zmm10
  a05913:	62 c2 5d 48 ac fa    	vfnmadd213ps zmm23,zmm4,zmm10
  a05919:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a0591f:	62 42 45 48 ac c1    	vfnmadd213ps zmm24,zmm7,zmm9
  a05925:	62 41 64 28 59 cb    	vmulps ymm25,ymm3,ymm11
  a0592b:	62 41 64 00 59 d3    	vmulps xmm26,xmm19,xmm11
  a05931:	62 91 3c 20 58 d9    	vaddps ymm3,ymm24,ymm25
  a05937:	62 81 44 00 5c f2    	vsubps xmm22,xmm23,xmm26
  a0593d:	62 e2 3d 28 7f f3    	vpermt2ps ymm22,ymm8,ymm3
  a05943:	62 b1 54 48 58 da    	vaddps zmm3,zmm5,zmm18
  a05949:	62 61 7c 48 28 e0    	vmovaps zmm28,zmm0
  a0594f:	62 92 65 48 ac c6    	vfnmadd213ps zmm0,zmm3,zmm30
  a05955:	62 f1 0c 20 58 db    	vaddps ymm3,ymm30,ymm3
  a0595b:	62 a1 14 48 58 d8    	vaddps zmm19,zmm13,zmm16
  a05961:	62 02 65 40 ac e3    	vfnmadd213ps zmm28,zmm19,zmm27
  a05967:	62 21 24 00 58 db    	vaddps xmm27,xmm27,xmm19
  a0596d:	62 62 3d 28 7f db    	vpermt2ps ymm27,ymm8,ymm3
  a05973:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x180]
  a0597a:	06 
  a0597b:	c5 e4 5c 9c 24 c0 01 	vsubps ymm3,ymm3,YMMWORD PTR [rsp+0x1c0]
  a05982:	00 00 
  a05984:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x140]
  a0598b:	05 
  a0598c:	c4 41 28 5c d6       	vsubps xmm10,xmm10,xmm14
  a05991:	c5 24 59 f3          	vmulps ymm14,ymm11,ymm3
  a05995:	c4 41 28 59 d3       	vmulps xmm10,xmm10,xmm11
  a0599a:	62 c1 1c 28 5c de    	vsubps ymm19,ymm12,ymm14
  a059a0:	62 d1 5c 00 58 da    	vaddps xmm3,xmm20,xmm10
  a059a6:	62 b2 3d 28 7f db    	vpermt2ps ymm3,ymm8,ymm19
  a059ac:	62 81 14 20 58 df    	vaddps ymm19,ymm29,ymm31
  a059b2:	62 f1 54 00 5c c9    	vsubps xmm1,xmm21,xmm1
  a059b8:	62 b2 3d 28 7f cb    	vpermt2ps ymm1,ymm8,ymm19
  a059be:	c5 b4 58 ff          	vaddps ymm7,ymm9,ymm7
  a059c2:	c5 e8 58 d4          	vaddps xmm2,xmm2,xmm4
  a059c6:	62 f2 3d 28 7f d7    	vpermt2ps ymm2,ymm8,ymm7
  a059cc:	62 b1 14 28 5c f8    	vsubps ymm7,ymm13,ymm16
  a059d2:	c5 a4 59 ff          	vmulps ymm7,ymm11,ymm7
  a059d6:	62 31 54 08 5c ca    	vsubps xmm9,xmm5,xmm18
  a059dc:	c5 7c 5c ef          	vsubps ymm13,ymm0,ymm7
  a059e0:	c4 41 30 59 cb       	vmulps xmm9,xmm9,xmm11
  a059e5:	62 51 1c 00 58 d9    	vaddps xmm11,xmm28,xmm9
  a059eb:	62 52 3d 28 7f dd    	vpermt2ps ymm11,ymm8,ymm13
  a059f1:	c4 41 1c 58 e6       	vaddps ymm12,ymm12,ymm14
  a059f6:	62 51 5c 00 5c d2    	vsubps xmm10,xmm20,xmm10
  a059fc:	62 52 3d 28 7f d4    	vpermt2ps ymm10,ymm8,ymm12
  a05a02:	62 f1 74 20 58 6c 24 	vaddps ymm5,ymm17,YMMWORD PTR [rsp+0x40]
  a05a09:	02 
  a05a0a:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x80]
  a05a11:	02 
  a05a12:	c5 18 58 a4 24 c0 00 	vaddps xmm12,xmm12,XMMWORD PTR [rsp+0xc0]
  a05a19:	00 00 
  a05a1b:	62 72 3d 28 7f e5    	vpermt2ps ymm12,ymm8,ymm5
  a05a21:	62 91 3c 20 5c e9    	vsubps ymm5,ymm24,ymm25
  a05a27:	62 11 44 00 58 ea    	vaddps xmm13,xmm23,xmm26
  a05a2d:	62 72 3d 28 7f ed    	vpermt2ps ymm13,ymm8,ymm5
  a05a33:	c5 fc 58 c7          	vaddps ymm0,ymm0,ymm7
  a05a37:	62 d1 1c 00 5c e9    	vsubps xmm5,xmm28,xmm9
  a05a3d:	62 f2 3d 28 7f e8    	vpermt2ps ymm5,ymm8,ymm0
  a05a43:	c5 7c 11 3e          	vmovups YMMWORD PTR [rsi],ymm15
  a05a47:	c5 fc 11 76 20       	vmovups YMMWORD PTR [rsi+0x20],ymm6
  a05a4c:	62 e1 7c 28 11 76 02 	vmovups YMMWORD PTR [rsi+0x40],ymm22
  a05a53:	62 61 7c 28 11 5e 03 	vmovups YMMWORD PTR [rsi+0x60],ymm27
  a05a5a:	c5 fc 11 9e 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm3
  a05a61:	00 
  a05a62:	c5 fc 11 8e a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm1
  a05a69:	00 
  a05a6a:	c5 fc 11 96 c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm2
  a05a71:	00 
  a05a72:	c5 7c 11 9e e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm11
  a05a79:	00 
  a05a7a:	c5 7c 11 96 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm10
  a05a81:	00 
  a05a82:	c5 7c 11 a6 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm12
  a05a89:	00 
  a05a8a:	c5 7c 11 ae 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm13
  a05a91:	00 
  a05a92:	c5 fc 11 ae 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm5
  a05a99:	00 
  a05a9a:	48 89 ec             	mov    rsp,rbp
  a05a9d:	5d                   	pop    rbp
  a05a9e:	c5 f8 77             	vzeroupper
  a05aa1:	c3                   	ret
