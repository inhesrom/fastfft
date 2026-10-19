
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a420c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a420c0:	48 81 ec c8 08 00 00 	sub    rsp,0x8c8
  a420c7:	62 f1 7c 48 28 0d 2f 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff64fe2f]        # 91f00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f3b0>
  a420ce:	fe 64 ff 
  a420d1:	62 f1 7c 48 10 37    	vmovups zmm6,ZMMWORD PTR [rdi]
  a420d7:	62 f1 7c 48 10 7f 01 	vmovups zmm7,ZMMWORD PTR [rdi+0x40]
  a420de:	62 71 7c 48 10 47 02 	vmovups zmm8,ZMMWORD PTR [rdi+0x80]
  a420e5:	62 f1 7c 48 10 57 03 	vmovups zmm2,ZMMWORD PTR [rdi+0xc0]
  a420ec:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a420f2:	62 72 75 48 7f df    	vpermt2ps zmm11,zmm1,zmm7
  a420f8:	62 41 7c 48 28 d8    	vmovaps zmm27,zmm8
  a420fe:	62 62 75 48 7f da    	vpermt2ps zmm27,zmm1,zmm2
  a42104:	62 71 7c 48 10 67 08 	vmovups zmm12,ZMMWORD PTR [rdi+0x200]
  a4210b:	62 71 7c 48 10 4f 09 	vmovups zmm9,ZMMWORD PTR [rdi+0x240]
  a42112:	62 d1 7c 48 28 dc    	vmovaps zmm3,zmm12
  a42118:	62 d2 75 48 7f d9    	vpermt2ps zmm3,zmm1,zmm9
  a4211e:	62 71 24 40 58 d3    	vaddps zmm10,zmm27,zmm3
  a42124:	62 d1 24 48 58 c2    	vaddps zmm0,zmm11,zmm10
  a4212a:	62 71 7c 48 10 7f 04 	vmovups zmm15,ZMMWORD PTR [rdi+0x100]
  a42131:	62 71 7c 48 10 77 05 	vmovups zmm14,ZMMWORD PTR [rdi+0x140]
  a42138:	62 51 7c 48 28 ef    	vmovaps zmm13,zmm15
  a4213e:	62 52 75 48 7f ee    	vpermt2ps zmm13,zmm1,zmm14
  a42144:	62 e1 7c 48 10 57 06 	vmovups zmm18,ZMMWORD PTR [rdi+0x180]
  a4214b:	62 e1 7c 48 10 47 07 	vmovups zmm16,ZMMWORD PTR [rdi+0x1c0]
  a42152:	62 b2 6d 40 77 c8    	vpermi2ps zmm1,zmm18,zmm16
  a42158:	62 e1 14 48 58 e1    	vaddps zmm20,zmm13,zmm1
  a4215e:	62 a1 7c 48 58 fc    	vaddps zmm23,zmm0,zmm20
  a42164:	62 f1 7c 48 28 05 12 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff684e12]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a4216b:	4e 68 ff 
  a4216e:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a42172:	62 b1 7c 48 28 ef    	vmovaps zmm5,zmm23
  a42178:	62 f2 7d 48 7f ec    	vpermt2ps zmm5,zmm0,zmm4
  a4217e:	62 61 7c 48 28 cd    	vmovaps zmm25,zmm5
  a42184:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm5
  a4218b:	01 
  a4218c:	62 e1 7c 48 28 2d aa 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff64fdaa]        # 91f40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f3f0>
  a42193:	fd 64 ff 
  a42196:	62 72 55 40 7f c2    	vpermt2ps zmm8,zmm21,zmm2
  a4219c:	62 52 55 40 7f e1    	vpermt2ps zmm12,zmm21,zmm9
  a421a2:	62 d1 3c 48 5c d4    	vsubps zmm2,zmm8,zmm12
  a421a8:	62 52 55 40 7f fe    	vpermt2ps zmm15,zmm21,zmm14
  a421ae:	62 a2 55 40 7f d0    	vpermt2ps zmm18,zmm21,zmm16
  a421b4:	62 31 04 48 5c ca    	vsubps zmm9,zmm15,zmm18
  a421ba:	62 e2 7d 48 18 05 94 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff633594]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a421c1:	35 63 ff 
  a421c4:	62 a1 34 48 59 f0    	vmulps zmm22,zmm9,zmm16
  a421ca:	62 e2 7d 48 18 0d cc 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff6331cc]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a421d1:	31 63 ff 
  a421d4:	62 a2 6d 48 b8 f1    	vfmadd231ps zmm22,zmm2,zmm17
  a421da:	62 e2 7d 48 18 1d 04 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff633504]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a421e1:	35 63 ff 
  a421e4:	62 21 7c 48 28 c3    	vmovaps zmm24,zmm19
  a421ea:	62 42 2d 48 a8 c3    	vfmadd213ps zmm24,zmm10,zmm11
  a421f0:	62 62 7d 48 18 15 4a 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff63344a]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a421f7:	34 63 ff 
  a421fa:	62 02 5d 40 bc c2    	vfnmadd231ps zmm24,zmm20,zmm26
  a42200:	62 01 4c 40 58 e8    	vaddps zmm29,zmm22,zmm24
  a42206:	62 91 7c 48 28 ed    	vmovaps zmm5,zmm29
  a4220c:	62 f2 7d 48 7f ec    	vpermt2ps zmm5,zmm0,zmm4
  a42212:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm5
  a42219:	11 
  a4221a:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm25
  a42221:	fe 
  a42222:	62 52 2d 40 bc da    	vfnmadd231ps zmm11,zmm26,zmm10
  a42228:	62 32 65 40 b8 dc    	vfmadd231ps zmm11,zmm19,zmm20
  a4222e:	62 a1 6c 48 59 e0    	vmulps zmm20,zmm2,zmm16
  a42234:	62 c2 75 40 bc e1    	vfnmadd231ps zmm20,zmm17,zmm9
  a4223a:	62 31 24 48 5c d4    	vsubps zmm10,zmm11,zmm20
  a42240:	62 41 7c 48 28 fa    	vmovaps zmm31,zmm10
  a42246:	62 62 7d 48 7f fc    	vpermt2ps zmm31,zmm0,zmm4
  a4224c:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a42250:	62 f2 7d 48 7f ed    	vpermt2ps zmm5,zmm0,zmm5
  a42256:	62 31 3c 40 5c f6    	vsubps zmm14,zmm24,zmm22
  a4225c:	62 c1 7c 48 28 f6    	vmovaps zmm22,zmm14
  a42262:	62 e2 7d 48 7f f4    	vpermt2ps zmm22,zmm0,zmm4
  a42268:	62 51 5c 40 58 db    	vaddps zmm11,zmm20,zmm11
  a4226e:	62 41 7c 48 28 e3    	vmovaps zmm28,zmm11
  a42274:	62 62 7d 48 7f e4    	vpermt2ps zmm28,zmm0,zmm4
  a4227a:	62 f2 55 40 7f f7    	vpermt2ps zmm6,zmm21,zmm7
  a42280:	62 d1 3c 48 58 fc    	vaddps zmm7,zmm8,zmm12
  a42286:	62 71 4c 48 58 c7    	vaddps zmm8,zmm6,zmm7
  a4228c:	62 31 04 48 58 fa    	vaddps zmm15,zmm15,zmm18
  a42292:	62 41 3c 48 58 cf    	vaddps zmm25,zmm8,zmm15
  a42298:	62 71 7c 48 28 05 1e 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff684d1e]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a4229f:	4d 68 ff 
  a422a2:	62 01 7c 48 28 f1    	vmovaps zmm30,zmm25
  a422a8:	62 62 3d 48 7f f4    	vpermt2ps zmm30,zmm8,zmm4
  a422ae:	62 a1 7c 48 28 d3    	vmovaps zmm18,zmm19
  a422b4:	62 e2 45 48 a8 d6    	vfmadd213ps zmm18,zmm7,zmm6
  a422ba:	62 82 05 48 bc d2    	vfnmadd231ps zmm18,zmm15,zmm26
  a422c0:	62 e1 24 40 5c e3    	vsubps zmm20,zmm27,zmm3
  a422c6:	62 f1 14 48 5c c9    	vsubps zmm1,zmm13,zmm1
  a422cc:	62 31 74 48 59 e8    	vmulps zmm13,zmm1,zmm16
  a422d2:	62 32 5d 40 b8 e9    	vfmadd231ps zmm13,zmm20,zmm17
  a422d8:	62 51 6c 40 5c cd    	vsubps zmm9,zmm18,zmm13
  a422de:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a422e4:	62 72 3d 48 7f e4    	vpermt2ps zmm12,zmm8,zmm4
  a422ea:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm30
  a422f1:	03 
  a422f2:	62 92 45 48 bc f2    	vfnmadd231ps zmm6,zmm7,zmm26
  a422f8:	62 b2 05 48 b8 f3    	vfmadd231ps zmm6,zmm15,zmm19
  a422fe:	62 b1 5c 40 59 f8    	vmulps zmm7,zmm20,zmm16
  a42304:	62 b2 75 48 bc f9    	vfnmadd231ps zmm7,zmm1,zmm17
  a4230a:	62 61 4c 48 58 df    	vaddps zmm27,zmm6,zmm7
  a42310:	62 11 7c 48 28 fb    	vmovaps zmm15,zmm27
  a42316:	62 72 3d 48 7f fc    	vpermt2ps zmm15,zmm8,zmm4
  a4231c:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a42320:	62 f2 3d 48 7f db    	vpermt2ps zmm3,zmm8,zmm3
  a42326:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm15
  a4232d:	02 
  a4232e:	62 c1 6c 40 58 d5    	vaddps zmm18,zmm18,zmm13
  a42334:	62 21 7c 48 28 c2    	vmovaps zmm24,zmm18
  a4233a:	62 62 3d 48 7f c4    	vpermt2ps zmm24,zmm8,zmm4
  a42340:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm24
  a42347:	12 
  a42348:	62 e1 4c 48 5c ef    	vsubps zmm21,zmm6,zmm7
  a4234e:	62 21 7c 48 28 d5    	vmovaps zmm26,zmm21
  a42354:	62 62 3d 48 7f d4    	vpermt2ps zmm26,zmm8,zmm4
  a4235a:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm26
  a42361:	10 
  a42362:	62 e2 3d 48 7f fc    	vpermt2ps zmm23,zmm8,zmm4
  a42368:	62 62 3d 48 7f ec    	vpermt2ps zmm29,zmm8,zmm4
  a4236e:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm23
  a42375:	0f 
  a42376:	62 72 3d 48 7f d4    	vpermt2ps zmm10,zmm8,zmm4
  a4237c:	62 71 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm10
  a42383:	62 72 3d 48 7f f4    	vpermt2ps zmm14,zmm8,zmm4
  a42389:	62 72 3d 48 7f dc    	vpermt2ps zmm11,zmm8,zmm4
  a4238f:	62 51 7c 48 28 c6    	vmovaps zmm8,zmm14
  a42395:	62 62 7d 48 7f cc    	vpermt2ps zmm25,zmm0,zmm4
  a4239b:	62 72 7d 48 7f cc    	vpermt2ps zmm9,zmm0,zmm4
  a423a1:	62 62 7d 48 7f dc    	vpermt2ps zmm27,zmm0,zmm4
  a423a7:	62 e2 7d 48 7f d4    	vpermt2ps zmm18,zmm0,zmm4
  a423ad:	62 e2 7d 48 7f ec    	vpermt2ps zmm21,zmm0,zmm4
  a423b3:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm11
  a423ba:	ff 
  a423bb:	62 f1 7c 48 28 15 7b 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff684b7b]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a423c2:	4b 68 ff 
  a423c5:	62 b1 7c 48 28 ff    	vmovaps zmm7,zmm23
  a423cb:	62 92 6d 48 7f fd    	vpermt2ps zmm7,zmm2,zmm29
  a423d1:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm7
  a423d8:	18 
  a423d9:	62 72 6d 48 7f d3    	vpermt2ps zmm10,zmm2,zmm3
  a423df:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm10
  a423e6:	19 
  a423e7:	62 72 6d 48 7f f3    	vpermt2ps zmm14,zmm2,zmm3
  a423ed:	62 72 6d 48 7f db    	vpermt2ps zmm11,zmm2,zmm3
  a423f3:	62 91 7c 48 28 ce    	vmovaps zmm1,zmm30
  a423f9:	62 d2 6d 48 7f cc    	vpermt2ps zmm1,zmm2,zmm12
  a423ff:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a42406:	04 
  a42407:	62 72 6d 48 7f fb    	vpermt2ps zmm15,zmm2,zmm3
  a4240d:	62 62 6d 48 7f c3    	vpermt2ps zmm24,zmm2,zmm3
  a42413:	62 62 6d 48 7f d3    	vpermt2ps zmm26,zmm2,zmm3
  a42419:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0x40]
  a42420:	01 
  a42421:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x440]
  a42428:	11 
  a42429:	62 22 6d 48 7f f0    	vpermt2ps zmm30,zmm2,zmm16
  a4242f:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm30
  a42436:	01 
  a42437:	62 81 7c 48 28 e7    	vmovaps zmm20,zmm31
  a4243d:	62 62 6d 48 7f fd    	vpermt2ps zmm31,zmm2,zmm5
  a42443:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm31
  a4244a:	20 
  a4244b:	62 a1 7c 48 28 de    	vmovaps zmm19,zmm22
  a42451:	62 e2 6d 48 7f f5    	vpermt2ps zmm22,zmm2,zmm5
  a42457:	62 31 7c 48 28 ee    	vmovaps zmm13,zmm22
  a4245d:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm22
  a42464:	1f 
  a42465:	62 81 7c 48 28 cc    	vmovaps zmm17,zmm28
  a4246b:	62 62 6d 48 7f e5    	vpermt2ps zmm28,zmm2,zmm5
  a42471:	62 81 7c 48 28 fc    	vmovaps zmm23,zmm28
  a42477:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm28
  a4247e:	1e 
  a4247f:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a42485:	62 d2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm9
  a4248b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a42492:	07 
  a42493:	62 91 7c 48 28 e3    	vmovaps zmm4,zmm27
  a42499:	62 f2 6d 48 7f e5    	vpermt2ps zmm4,zmm2,zmm5
  a4249f:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a424a5:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm4
  a424ac:	06 
  a424ad:	62 b1 7c 48 28 e2    	vmovaps zmm4,zmm18
  a424b3:	62 f2 6d 48 7f e5    	vpermt2ps zmm4,zmm2,zmm5
  a424b9:	62 61 7c 48 28 e4    	vmovaps zmm28,zmm4
  a424bf:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm4
  a424c6:	05 
  a424c7:	62 f2 55 40 77 d5    	vpermi2ps zmm2,zmm21,zmm5
  a424cd:	62 e1 7c 48 28 35 29 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff684929]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a424d4:	49 68 ff 
  a424d7:	62 f1 fd 48 15 e6    	vunpckhpd zmm4,zmm0,zmm6
  a424dd:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm4
  a424e4:	0e 
  a424e5:	62 f1 9d 40 15 c2    	vunpckhpd zmm0,zmm28,zmm2
  a424eb:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a424f2:	0d 
  a424f3:	62 f2 4d 40 7f e0    	vpermt2ps zmm4,zmm22,zmm0
  a424f9:	62 91 8d 40 15 f7    	vunpckhpd zmm6,zmm30,zmm31
  a424ff:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm6
  a42506:	0c 
  a42507:	62 b1 95 48 15 c7    	vunpckhpd zmm0,zmm13,zmm23
  a4250d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a42514:	0b 
  a42515:	62 f2 4d 40 7f f0    	vpermt2ps zmm6,zmm22,zmm0
  a4251b:	62 61 7c 48 10 72 0d 	vmovups zmm30,ZMMWORD PTR [rdx+0x340]
  a42522:	62 61 7c 48 10 7a 0c 	vmovups zmm31,ZMMWORD PTR [rdx+0x300]
  a42529:	62 91 4c 48 59 c7    	vmulps zmm0,zmm6,zmm31
  a4252f:	62 92 5d 48 b8 c6    	vfmadd231ps zmm0,zmm4,zmm30
  a42535:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm0
  a4253c:	14 
  a4253d:	62 91 5c 48 59 c7    	vmulps zmm0,zmm4,zmm31
  a42543:	62 f2 0d 40 bc c6    	vfnmadd231ps zmm0,zmm30,zmm6
  a42549:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm0
  a42550:	13 
  a42551:	62 41 f5 48 15 f7    	vunpckhpd zmm30,zmm1,zmm15
  a42557:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm30
  a4255e:	0a 
  a4255f:	62 91 bd 40 15 c2    	vunpckhpd zmm0,zmm24,zmm26
  a42565:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a4256c:	09 
  a4256d:	62 62 4d 40 7f f0    	vpermt2ps zmm30,zmm22,zmm0
  a42573:	62 51 c5 48 15 ea    	vunpckhpd zmm13,zmm7,zmm10
  a42579:	62 d1 8d 48 15 c3    	vunpckhpd zmm0,zmm14,zmm11
  a4257f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a42586:	08 
  a42587:	62 41 7c 48 28 fd    	vmovaps zmm31,zmm13
  a4258d:	62 62 4d 40 7f f8    	vpermt2ps zmm31,zmm22,zmm0
  a42593:	62 f1 7c 48 10 4a 1d 	vmovups zmm1,ZMMWORD PTR [rdx+0x740]
  a4259a:	62 f1 7c 48 10 42 1c 	vmovups zmm0,ZMMWORD PTR [rdx+0x700]
  a425a1:	62 f1 04 40 59 e0    	vmulps zmm4,zmm31,zmm0
  a425a7:	62 f2 0d 40 b8 e1    	vfmadd231ps zmm4,zmm30,zmm1
  a425ad:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm4
  a425b4:	22 
  a425b5:	62 f1 0c 40 59 c0    	vmulps zmm0,zmm30,zmm0
  a425bb:	62 92 75 48 bc c7    	vfnmadd231ps zmm0,zmm1,zmm31
  a425c1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm0
  a425c8:	21 
  a425c9:	62 f1 7c 48 28 05 2d 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68492d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a425d0:	49 68 ff 
  a425d3:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x80]
  a425da:	fe 
  a425db:	62 b2 7d 48 7f e0    	vpermt2ps zmm4,zmm0,zmm16
  a425e1:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0xc0]
  a425e8:	03 
  a425e9:	62 42 7d 48 7f f4    	vpermt2ps zmm30,zmm0,zmm12
  a425ef:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x3c0]
  a425f6:	0f 
  a425f7:	62 82 7d 48 7f c5    	vpermt2ps zmm16,zmm0,zmm29
  a425fd:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x80]
  a42604:	02 
  a42605:	62 f2 7d 48 7f fb    	vpermt2ps zmm7,zmm0,zmm3
  a4260b:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x480]
  a42612:	12 
  a42613:	62 72 7d 48 7f e3    	vpermt2ps zmm12,zmm0,zmm3
  a42619:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x400]
  a42620:	10 
  a42621:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a42627:	62 61 7c 48 10 2c 24 	vmovups zmm29,ZMMWORD PTR [rsp]
  a4262e:	62 62 7d 48 7f eb    	vpermt2ps zmm29,zmm0,zmm3
  a42634:	62 61 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm29
  a4263b:	62 41 7c 48 28 f8    	vmovaps zmm31,zmm8
  a42641:	62 62 7d 48 7f fb    	vpermt2ps zmm31,zmm0,zmm3
  a42647:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp-0x40]
  a4264e:	ff 
  a4264f:	62 62 7d 48 7f e3    	vpermt2ps zmm28,zmm0,zmm3
  a42655:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm28
  a4265c:	ff 
  a4265d:	62 42 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm9
  a42663:	62 e2 7d 48 7f e5    	vpermt2ps zmm20,zmm0,zmm5
  a42669:	62 e2 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm5
  a4266f:	62 e2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm5
  a42675:	62 62 7d 48 7f dd    	vpermt2ps zmm27,zmm0,zmm5
  a4267b:	62 e2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm5
  a42681:	62 e2 7d 48 7f ed    	vpermt2ps zmm21,zmm0,zmm5
  a42687:	62 a1 dd 48 15 fc    	vunpckhpd zmm23,zmm4,zmm20
  a4268d:	62 b1 e5 40 15 c9    	vunpckhpd zmm1,zmm19,zmm17
  a42693:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm1
  a4269a:	17 
  a4269b:	62 b1 7c 48 28 c7    	vmovaps zmm0,zmm23
  a426a1:	62 f2 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm1
  a426a7:	62 91 b5 40 15 f3    	vunpckhpd zmm6,zmm25,zmm27
  a426ad:	62 b1 ed 40 15 dd    	vunpckhpd zmm3,zmm18,zmm21
  a426b3:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm3
  a426ba:	16 
  a426bb:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a426c1:	62 f2 4d 40 7f cb    	vpermt2ps zmm1,zmm22,zmm3
  a426c7:	62 f1 7c 48 10 6a 04 	vmovups zmm5,ZMMWORD PTR [rdx+0x100]
  a426ce:	62 71 7c 48 10 4a 05 	vmovups zmm9,ZMMWORD PTR [rdx+0x140]
  a426d5:	62 f1 74 48 59 dd    	vmulps zmm3,zmm1,zmm5
  a426db:	62 d2 7d 48 bc d9    	vfnmadd231ps zmm3,zmm0,zmm9
  a426e1:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm3
  a426e8:	12 
  a426e9:	62 f1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm5
  a426ef:	62 f2 35 48 b8 c1    	vfmadd231ps zmm0,zmm9,zmm1
  a426f5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a426fc:	11 
  a426fd:	62 91 fd 40 15 dd    	vunpckhpd zmm3,zmm16,zmm29
  a42703:	62 91 85 40 15 cc    	vunpckhpd zmm1,zmm31,zmm28
  a42709:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm1
  a42710:	15 
  a42711:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a42717:	62 f2 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm1
  a4271d:	62 f1 8d 40 15 ef    	vunpckhpd zmm5,zmm30,zmm7
  a42723:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a42729:	62 01 7c 48 28 ee    	vmovaps zmm29,zmm30
  a4272f:	62 41 9d 48 15 f2    	vunpckhpd zmm30,zmm12,zmm10
  a42735:	62 d1 7c 48 28 fc    	vmovaps zmm7,zmm12
  a4273b:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a42741:	62 12 4d 40 7f ce    	vpermt2ps zmm9,zmm22,zmm30
  a42747:	62 71 7c 48 10 62 15 	vmovups zmm12,ZMMWORD PTR [rdx+0x540]
  a4274e:	62 f1 7c 48 10 4a 14 	vmovups zmm1,ZMMWORD PTR [rdx+0x500]
  a42755:	62 61 34 48 59 e1    	vmulps zmm28,zmm9,zmm1
  a4275b:	62 42 7d 48 bc e4    	vfnmadd231ps zmm28,zmm0,zmm12
  a42761:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm28
  a42768:	10 
  a42769:	62 f1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm1
  a4276f:	62 d2 1d 48 b8 c1    	vfmadd231ps zmm0,zmm12,zmm9
  a42775:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a4277c:	0f 
  a4277d:	62 b1 dd 48 14 c4    	vunpcklpd zmm0,zmm4,zmm20
  a42783:	62 31 e5 40 14 c9    	vunpcklpd zmm9,zmm19,zmm17
  a42789:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm9
  a42790:	1a 
  a42791:	62 91 b5 40 14 cb    	vunpcklpd zmm1,zmm25,zmm27
  a42797:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a4279e:	fe 
  a4279f:	62 b1 ed 40 14 e5    	vunpcklpd zmm4,zmm18,zmm21
  a427a5:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm4
  a427ac:	1c 
  a427ad:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm0
  a427b4:	1b 
  a427b5:	62 e1 7c 48 28 25 81 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff684681]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a427bc:	46 68 ff 
  a427bf:	62 d2 5d 40 7f c1    	vpermt2ps zmm0,zmm20,zmm9
  a427c5:	62 f2 5d 40 7f cc    	vpermt2ps zmm1,zmm20,zmm4
  a427cb:	62 71 7c 48 10 4a 02 	vmovups zmm9,ZMMWORD PTR [rdx+0x80]
  a427d2:	62 71 7c 48 10 62 03 	vmovups zmm12,ZMMWORD PTR [rdx+0xc0]
  a427d9:	62 d1 74 48 59 e1    	vmulps zmm4,zmm1,zmm9
  a427df:	62 d2 7d 48 bc e4    	vfnmadd231ps zmm4,zmm0,zmm12
  a427e5:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm4
  a427ec:	1d 
  a427ed:	62 d1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm9
  a427f3:	62 f2 1d 48 b8 c1    	vfmadd231ps zmm0,zmm12,zmm1
  a427f9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a42800:	03 
  a42801:	62 d1 95 40 14 c0    	vunpcklpd zmm0,zmm29,zmm8
  a42807:	62 41 c5 48 14 ea    	vunpcklpd zmm29,zmm7,zmm10
  a4280d:	62 f1 fd 40 14 0c 24 	vunpcklpd zmm1,zmm16,ZMMWORD PTR [rsp]
  a42814:	62 f1 85 40 14 64 24 	vunpcklpd zmm4,zmm31,ZMMWORD PTR [rsp-0x40]
  a4281b:	ff 
  a4281c:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a42822:	62 f2 5d 40 7f cc    	vpermt2ps zmm1,zmm20,zmm4
  a42828:	62 e1 7c 48 28 d8    	vmovaps zmm19,zmm0
  a4282e:	62 92 5d 40 7f c5    	vpermt2ps zmm0,zmm20,zmm29
  a42834:	62 f1 7c 48 10 7a 13 	vmovups zmm7,ZMMWORD PTR [rdx+0x4c0]
  a4283b:	62 71 7c 48 10 62 12 	vmovups zmm12,ZMMWORD PTR [rdx+0x480]
  a42842:	62 51 7c 48 59 c4    	vmulps zmm8,zmm0,zmm12
  a42848:	62 72 75 48 bc c7    	vfnmadd231ps zmm8,zmm1,zmm7
  a4284e:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm8
  a42855:	ff 
  a42856:	62 d1 74 48 59 cc    	vmulps zmm1,zmm1,zmm12
  a4285c:	62 f2 45 48 b8 c8    	vfmadd231ps zmm1,zmm7,zmm0
  a42862:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a42869:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x600]
  a42870:	18 
  a42871:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp+0x640]
  a42878:	19 
  a42879:	62 d1 8d 48 14 fb    	vunpcklpd zmm7,zmm14,zmm11
  a4287f:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a42886:	04 
  a42887:	62 d1 f5 48 14 cf    	vunpcklpd zmm1,zmm1,zmm15
  a4288d:	62 01 bd 40 14 d2    	vunpcklpd zmm26,zmm24,zmm26
  a42893:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a42899:	62 92 5d 40 7f ca    	vpermt2ps zmm1,zmm20,zmm26
  a4289f:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a428a5:	62 f2 5d 40 7f c7    	vpermt2ps zmm0,zmm20,zmm7
  a428ab:	62 71 7c 48 10 52 1b 	vmovups zmm10,ZMMWORD PTR [rdx+0x6c0]
  a428b2:	62 71 7c 48 10 5a 1a 	vmovups zmm11,ZMMWORD PTR [rdx+0x680]
  a428b9:	62 41 7c 48 59 fb    	vmulps zmm31,zmm0,zmm11
  a428bf:	62 42 75 48 b8 fa    	vfmadd231ps zmm31,zmm1,zmm10
  a428c5:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm31
  a428cc:	04 
  a428cd:	62 d1 74 48 59 cb    	vmulps zmm1,zmm1,zmm11
  a428d3:	62 f2 2d 48 bc c8    	vfnmadd231ps zmm1,zmm10,zmm0
  a428d9:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a428e0:	02 
  a428e1:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a428e8:	01 
  a428e9:	62 f1 fd 48 14 4c 24 	vunpcklpd zmm1,zmm0,ZMMWORD PTR [rsp+0x800]
  a428f0:	20 
  a428f1:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x7c0]
  a428f8:	1f 
  a428f9:	62 71 fd 48 14 74 24 	vunpcklpd zmm14,zmm0,ZMMWORD PTR [rsp+0x780]
  a42900:	1e 
  a42901:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a42908:	07 
  a42909:	62 71 fd 48 14 5c 24 	vunpcklpd zmm11,zmm0,ZMMWORD PTR [rsp+0x180]
  a42910:	06 
  a42911:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a42918:	05 
  a42919:	62 f1 fd 48 14 c2    	vunpcklpd zmm0,zmm0,zmm2
  a4291f:	62 c1 7c 48 28 c3    	vmovaps zmm16,zmm11
  a42925:	62 72 5d 40 7f d8    	vpermt2ps zmm11,zmm20,zmm0
  a4292b:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a42931:	62 d2 5d 40 7f ce    	vpermt2ps zmm1,zmm20,zmm14
  a42937:	62 f1 7c 48 10 52 0b 	vmovups zmm2,ZMMWORD PTR [rdx+0x2c0]
  a4293e:	62 71 7c 48 10 42 0a 	vmovups zmm8,ZMMWORD PTR [rdx+0x280]
  a42945:	62 c1 74 48 59 d0    	vmulps zmm18,zmm1,zmm8
  a4294b:	62 e2 25 48 b8 d2    	vfmadd231ps zmm18,zmm11,zmm2
  a42951:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm18
  a42958:	07 
  a42959:	62 51 24 48 59 c8    	vmulps zmm9,zmm11,zmm8
  a4295f:	62 72 6d 48 bc c9    	vfnmadd231ps zmm9,zmm2,zmm1
  a42965:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm9
  a4296c:	06 
  a4296d:	62 e2 5d 40 7f 7c 24 	vpermt2ps zmm23,zmm20,ZMMWORD PTR [rsp+0x5c0]
  a42974:	17 
  a42975:	62 f2 5d 40 7f 74 24 	vpermt2ps zmm6,zmm20,ZMMWORD PTR [rsp+0x580]
  a4297c:	16 
  a4297d:	62 f2 5d 40 7f 5c 24 	vpermt2ps zmm3,zmm20,ZMMWORD PTR [rsp+0x540]
  a42984:	15 
  a42985:	62 92 5d 40 7f ee    	vpermt2ps zmm5,zmm20,zmm30
  a4298b:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x380]
  a42992:	0e 
  a42993:	62 72 5d 40 7f 44 24 	vpermt2ps zmm8,zmm20,ZMMWORD PTR [rsp+0x340]
  a4299a:	0d 
  a4299b:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x300]
  a429a2:	0c 
  a429a3:	62 72 5d 40 7f 54 24 	vpermt2ps zmm10,zmm20,ZMMWORD PTR [rsp+0x2c0]
  a429aa:	0b 
  a429ab:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x280]
  a429b2:	0a 
  a429b3:	62 72 5d 40 7f 64 24 	vpermt2ps zmm12,zmm20,ZMMWORD PTR [rsp+0x240]
  a429ba:	09 
  a429bb:	62 72 5d 40 7f 6c 24 	vpermt2ps zmm13,zmm20,ZMMWORD PTR [rsp+0x200]
  a429c2:	08 
  a429c3:	62 f1 7c 48 10 4a 07 	vmovups zmm1,ZMMWORD PTR [rdx+0x1c0]
  a429ca:	62 f1 7c 48 10 52 06 	vmovups zmm2,ZMMWORD PTR [rdx+0x180]
  a429d1:	62 61 4c 48 59 da    	vmulps zmm27,zmm6,zmm2
  a429d7:	62 62 45 40 bc d9    	vfnmadd231ps zmm27,zmm23,zmm1
  a429dd:	62 61 44 40 59 ca    	vmulps zmm25,zmm23,zmm2
  a429e3:	62 62 75 48 b8 ce    	vfmadd231ps zmm25,zmm1,zmm6
  a429e9:	62 f1 7c 48 10 4a 17 	vmovups zmm1,ZMMWORD PTR [rdx+0x5c0]
  a429f0:	62 f1 7c 48 10 52 16 	vmovups zmm2,ZMMWORD PTR [rdx+0x580]
  a429f7:	62 61 54 48 59 f2    	vmulps zmm30,zmm5,zmm2
  a429fd:	62 62 65 48 bc f1    	vfnmadd231ps zmm30,zmm3,zmm1
  a42a03:	62 e1 64 48 59 ea    	vmulps zmm21,zmm3,zmm2
  a42a09:	62 e2 75 48 b8 ed    	vfmadd231ps zmm21,zmm1,zmm5
  a42a0f:	62 f1 7c 48 10 4a 1f 	vmovups zmm1,ZMMWORD PTR [rdx+0x7c0]
  a42a16:	62 f1 7c 48 10 5a 1e 	vmovups zmm3,ZMMWORD PTR [rdx+0x780]
  a42a1d:	62 71 14 48 59 db    	vmulps zmm11,zmm13,zmm3
  a42a23:	62 72 1d 48 b8 d9    	vfmadd231ps zmm11,zmm12,zmm1
  a42a29:	62 71 1c 48 59 e3    	vmulps zmm12,zmm12,zmm3
  a42a2f:	62 52 75 48 bc e5    	vfnmadd231ps zmm12,zmm1,zmm13
  a42a35:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a42a3c:	62 f1 7c 48 10 5a 0e 	vmovups zmm3,ZMMWORD PTR [rdx+0x380]
  a42a43:	62 f1 2c 48 59 eb    	vmulps zmm5,zmm10,zmm3
  a42a49:	62 f2 3d 48 b8 e9    	vfmadd231ps zmm5,zmm8,zmm1
  a42a4f:	62 71 3c 48 59 eb    	vmulps zmm13,zmm8,zmm3
  a42a55:	62 52 75 48 bc ea    	vfnmadd231ps zmm13,zmm1,zmm10
  a42a5b:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x6c0]
  a42a62:	1b 
  a42a63:	62 72 4d 40 7f 54 24 	vpermt2ps zmm10,zmm22,ZMMWORD PTR [rsp+0x680]
  a42a6a:	1a 
  a42a6b:	62 82 4d 40 7f dd    	vpermt2ps zmm19,zmm22,zmm29
  a42a71:	62 e2 4d 40 7f cc    	vpermt2ps zmm17,zmm22,zmm4
  a42a77:	62 62 4d 40 7f c7    	vpermt2ps zmm24,zmm22,zmm7
  a42a7d:	62 12 4d 40 7f fa    	vpermt2ps zmm15,zmm22,zmm26
  a42a83:	62 42 4d 40 7f e6    	vpermt2ps zmm28,zmm22,zmm14
  a42a89:	62 e2 4d 40 7f c0    	vpermt2ps zmm16,zmm22,zmm0
  a42a8f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a42a96:	fe 
  a42a97:	62 f2 4d 40 7f 44 24 	vpermt2ps zmm0,zmm22,ZMMWORD PTR [rsp+0x700]
  a42a9e:	1c 
  a42a9f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a42aa6:	fe 
  a42aa7:	62 f1 7c 48 10 42 11 	vmovups zmm0,ZMMWORD PTR [rdx+0x440]
  a42aae:	62 f1 7c 48 10 4a 10 	vmovups zmm1,ZMMWORD PTR [rdx+0x400]
  a42ab5:	62 71 74 40 59 f1    	vmulps zmm14,zmm17,zmm1
  a42abb:	62 72 65 40 b8 f0    	vfmadd231ps zmm14,zmm19,zmm0
  a42ac1:	62 e1 64 40 59 d9    	vmulps zmm19,zmm19,zmm1
  a42ac7:	62 a2 7d 48 bc d9    	vfnmadd231ps zmm19,zmm0,zmm17
  a42acd:	62 f1 7c 48 10 42 09 	vmovups zmm0,ZMMWORD PTR [rdx+0x240]
  a42ad4:	62 f1 7c 48 10 4a 08 	vmovups zmm1,ZMMWORD PTR [rdx+0x200]
  a42adb:	62 e1 7c 40 59 e1    	vmulps zmm20,zmm16,zmm1
  a42ae1:	62 e2 1d 40 bc e0    	vfnmadd231ps zmm20,zmm28,zmm0
  a42ae7:	62 f1 1c 40 59 f1    	vmulps zmm6,zmm28,zmm1
  a42aed:	62 b2 7d 48 b8 f0    	vfmadd231ps zmm6,zmm0,zmm16
  a42af3:	62 f1 7c 48 10 42 19 	vmovups zmm0,ZMMWORD PTR [rdx+0x640]
  a42afa:	62 f1 7c 48 10 4a 18 	vmovups zmm1,ZMMWORD PTR [rdx+0x600]
  a42b01:	62 f1 04 48 59 e1    	vmulps zmm4,zmm15,zmm1
  a42b07:	62 f2 3d 40 bc e0    	vfnmadd231ps zmm4,zmm24,zmm0
  a42b0d:	62 e1 3c 40 59 f9    	vmulps zmm23,zmm24,zmm1
  a42b13:	62 c2 7d 48 b8 ff    	vfmadd231ps zmm23,zmm0,zmm15
  a42b19:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x740]
  a42b20:	1d 
  a42b21:	62 e1 14 40 5c 74 24 	vsubps zmm22,zmm29,ZMMWORD PTR [rsp-0x40]
  a42b28:	ff 
  a42b29:	62 01 6c 40 5c c7    	vsubps zmm24,zmm18,zmm31
  a42b2f:	62 91 4c 40 5c d8    	vsubps zmm3,zmm22,zmm24
  a42b35:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a42b3c:	03 
  a42b3d:	62 61 7c 48 5c 14 24 	vsubps zmm26,zmm0,ZMMWORD PTR [rsp]
  a42b44:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a42b4b:	02 
  a42b4c:	62 41 7c 48 5c e1    	vsubps zmm28,zmm0,zmm9
  a42b52:	62 f2 7d 48 18 15 a4 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff632ba4]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a42b59:	2b 63 ff 
  a42b5c:	62 11 2c 40 5c cc    	vsubps zmm9,zmm26,zmm28
  a42b62:	62 f1 34 48 59 c2    	vmulps zmm0,zmm9,zmm2
  a42b68:	62 e2 7d 48 18 15 f2 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff632af2]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a42b6f:	2a 63 ff 
  a42b72:	62 b2 65 48 b8 c2    	vfmadd231ps zmm0,zmm3,zmm18
  a42b78:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a42b7f:	01 
  a42b80:	62 b1 34 48 59 c2    	vmulps zmm0,zmm9,zmm18
  a42b86:	62 f2 6d 48 bc c3    	vfnmadd231ps zmm0,zmm2,zmm3
  a42b8c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a42b93:	0e 
  a42b94:	62 91 24 40 5c de    	vsubps zmm3,zmm27,zmm30
  a42b9a:	62 51 54 48 5c cb    	vsubps zmm9,zmm5,zmm11
  a42ba0:	62 c1 64 48 5c c9    	vsubps zmm17,zmm3,zmm9
  a42ba6:	62 21 34 40 5c fd    	vsubps zmm31,zmm25,zmm21
  a42bac:	62 d1 1c 48 5c cd    	vsubps zmm1,zmm12,zmm13
  a42bb2:	62 f1 04 40 5c c1    	vsubps zmm0,zmm31,zmm1
  a42bb8:	62 b1 7c 48 59 fa    	vmulps zmm7,zmm0,zmm18
  a42bbe:	62 f2 75 40 b8 fa    	vfmadd231ps zmm7,zmm17,zmm2
  a42bc4:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm7
  a42bcb:	0d 
  a42bcc:	62 b1 74 40 59 fa    	vmulps zmm7,zmm17,zmm18
  a42bd2:	62 f2 6d 48 bc f8    	vfnmadd231ps zmm7,zmm2,zmm0
  a42bd8:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm7
  a42bdf:	0c 
  a42be0:	62 d1 64 48 58 c1    	vaddps zmm0,zmm3,zmm9
  a42be6:	62 f1 04 40 58 c9    	vaddps zmm1,zmm31,zmm1
  a42bec:	62 91 4c 40 58 d8    	vaddps zmm3,zmm22,zmm24
  a42bf2:	62 11 2c 40 58 cc    	vaddps zmm9,zmm26,zmm28
  a42bf8:	62 b1 34 48 59 fa    	vmulps zmm7,zmm9,zmm18
  a42bfe:	62 f2 65 48 b8 fa    	vfmadd231ps zmm7,zmm3,zmm2
  a42c04:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm7
  a42c0b:	0b 
  a42c0c:	62 f1 34 48 59 fa    	vmulps zmm7,zmm9,zmm2
  a42c12:	62 f2 6d 40 bc fb    	vfnmadd231ps zmm7,zmm18,zmm3
  a42c18:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm7
  a42c1f:	09 
  a42c20:	62 f1 74 48 59 da    	vmulps zmm3,zmm1,zmm2
  a42c26:	62 b2 7d 48 b8 da    	vfmadd231ps zmm3,zmm0,zmm18
  a42c2c:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm3
  a42c33:	0a 
  a42c34:	62 21 74 48 59 e2    	vmulps zmm28,zmm1,zmm18
  a42c3a:	62 62 7d 48 bc e2    	vfnmadd231ps zmm28,zmm0,zmm2
  a42c40:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x480]
  a42c47:	12 
  a42c48:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0x400]
  a42c4f:	10 
  a42c50:	62 91 7c 40 5c c0    	vsubps zmm0,zmm16,zmm24
  a42c56:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp+0x440]
  a42c5d:	11 
  a42c5e:	62 61 7c 48 10 7c 24 	vmovups zmm31,ZMMWORD PTR [rsp+0x3c0]
  a42c65:	0f 
  a42c66:	62 91 2c 40 5c cf    	vsubps zmm1,zmm26,zmm31
  a42c6c:	62 e1 7c 48 58 c9    	vaddps zmm17,zmm0,zmm1
  a42c72:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a42c78:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a42c7f:	08 
  a42c80:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x500]
  a42c87:	14 
  a42c88:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x880]
  a42c8f:	22 
  a42c90:	62 f1 7c 48 5c ca    	vsubps zmm1,zmm0,zmm2
  a42c96:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x4c0]
  a42c9d:	13 
  a42c9e:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x840]
  a42ca5:	21 
  a42ca6:	62 d1 3c 48 5c d9    	vsubps zmm3,zmm8,zmm9
  a42cac:	62 71 74 48 5c fb    	vsubps zmm15,zmm1,zmm3
  a42cb2:	62 f1 64 48 58 c9    	vaddps zmm1,zmm3,zmm1
  a42cb8:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a42cbf:	05 
  a42cc0:	62 d1 2c 48 5c fe    	vsubps zmm7,zmm10,zmm14
  a42cc6:	62 51 0c 48 58 f2    	vaddps zmm14,zmm14,zmm10
  a42ccc:	62 a1 4c 48 5c d7    	vsubps zmm18,zmm6,zmm23
  a42cd2:	62 31 4c 48 58 d7    	vaddps zmm10,zmm6,zmm23
  a42cd8:	62 c1 3c 48 58 f1    	vaddps zmm22,zmm8,zmm9
  a42cde:	62 01 7c 40 58 c0    	vaddps zmm24,zmm16,zmm24
  a42ce4:	62 b1 34 40 58 dd    	vaddps zmm3,zmm25,zmm21
  a42cea:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm3
  a42cf1:	13 
  a42cf2:	62 c1 54 48 58 c3    	vaddps zmm16,zmm5,zmm11
  a42cf8:	62 11 24 40 58 de    	vaddps zmm11,zmm27,zmm30
  a42cfe:	62 51 14 48 58 cc    	vaddps zmm9,zmm13,zmm12
  a42d04:	62 71 14 40 58 64 24 	vaddps zmm12,zmm29,ZMMWORD PTR [rsp-0x40]
  a42d0b:	ff 
  a42d0c:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x180]
  a42d13:	06 
  a42d14:	62 71 74 48 58 6c 24 	vaddps zmm13,zmm1,ZMMWORD PTR [rsp+0x80]
  a42d1b:	02 
  a42d1c:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a42d23:	62 e1 74 48 58 6c 24 	vaddps zmm21,zmm1,ZMMWORD PTR [rsp+0xc0]
  a42d2a:	03 
  a42d2b:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a42d32:	04 
  a42d33:	62 61 74 48 58 4c 24 	vaddps zmm25,zmm1,ZMMWORD PTR [rsp+0x1c0]
  a42d3a:	07 
  a42d3b:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a42d42:	fe 
  a42d43:	62 21 74 48 5c db    	vsubps zmm27,zmm1,zmm19
  a42d49:	62 a1 74 48 58 db    	vaddps zmm19,zmm1,zmm19
  a42d4f:	62 21 5c 48 5c ec    	vsubps zmm29,zmm4,zmm20
  a42d55:	62 71 5c 40 58 c4    	vaddps zmm8,zmm20,zmm4
  a42d5b:	62 81 2c 40 58 e7    	vaddps zmm20,zmm26,zmm31
  a42d61:	62 61 7c 48 58 f2    	vaddps zmm30,zmm0,zmm2
  a42d67:	62 d1 1c 48 5c cd    	vsubps zmm1,zmm12,zmm13
  a42d6d:	62 91 54 40 5c c1    	vsubps zmm0,zmm21,zmm25
  a42d73:	62 f1 74 48 58 f0    	vaddps zmm6,zmm1,zmm0
  a42d79:	62 f1 7c 48 5c e9    	vsubps zmm5,zmm0,zmm1
  a42d7f:	62 b1 64 48 5c c8    	vsubps zmm1,zmm3,zmm16
  a42d85:	62 d1 24 48 5c c1    	vsubps zmm0,zmm11,zmm9
  a42d8b:	62 f1 74 48 5c d8    	vsubps zmm3,zmm1,zmm0
  a42d91:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a42d97:	62 f2 7d 48 18 0d fb 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff6325fb]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a42d9e:	25 63 ff 
  a42da1:	62 71 04 48 59 f9    	vmulps zmm15,zmm15,zmm1
  a42da7:	62 e1 74 40 59 c9    	vmulps zmm17,zmm17,zmm1
  a42dad:	62 f1 74 48 59 54 24 	vmulps zmm2,zmm1,ZMMWORD PTR [rsp+0x200]
  a42db4:	08 
  a42db5:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp+0x140]
  a42dbc:	05 
  a42dbd:	62 61 64 48 59 f9    	vmulps zmm31,zmm3,zmm1
  a42dc3:	62 f1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm1
  a42dc9:	62 f1 54 48 59 e9    	vmulps zmm5,zmm5,zmm1
  a42dcf:	62 f1 5c 48 59 c9    	vmulps zmm1,zmm4,zmm1
  a42dd5:	62 91 44 48 5c e5    	vsubps zmm4,zmm7,zmm29
  a42ddb:	62 f1 14 40 58 ff    	vaddps zmm7,zmm29,zmm7
  a42de1:	62 61 6c 48 58 e8    	vaddps zmm29,zmm2,zmm0
  a42de7:	62 f1 6c 48 5c c0    	vsubps zmm0,zmm2,zmm0
  a42ded:	62 b1 24 40 5c d2    	vsubps zmm2,zmm27,zmm18
  a42df3:	62 a1 24 40 58 d2    	vaddps zmm18,zmm27,zmm18
  a42df9:	62 21 04 48 5c d9    	vsubps zmm27,zmm15,zmm17
  a42dff:	62 51 74 40 58 ff    	vaddps zmm15,zmm17,zmm15
  a42e05:	62 c1 0c 48 5c ca    	vsubps zmm17,zmm14,zmm10
  a42e0b:	62 c1 2c 48 58 fe    	vaddps zmm23,zmm10,zmm14
  a42e11:	62 11 5c 40 5c f6    	vsubps zmm14,zmm20,zmm30
  a42e17:	62 81 5c 40 58 e6    	vaddps zmm20,zmm20,zmm30
  a42e1d:	62 d1 24 48 58 d9    	vaddps zmm3,zmm11,zmm9
  a42e23:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a42e2a:	fe 
  a42e2b:	62 41 1c 48 58 d5    	vaddps zmm26,zmm12,zmm13
  a42e31:	62 51 64 40 5c e0    	vsubps zmm12,zmm19,zmm8
  a42e37:	62 51 64 40 58 d0    	vaddps zmm10,zmm19,zmm8
  a42e3d:	62 11 4c 40 5c e8    	vsubps zmm13,zmm22,zmm24
  a42e43:	62 a1 3c 40 58 de    	vaddps zmm19,zmm24,zmm22
  a42e49:	62 81 54 40 58 e9    	vaddps zmm21,zmm21,zmm25
  a42e4f:	62 e1 7c 40 58 44 24 	vaddps zmm16,zmm16,ZMMWORD PTR [rsp+0x4c0]
  a42e56:	13 
  a42e57:	62 81 5c 48 5c f3    	vsubps zmm22,zmm4,zmm27
  a42e5d:	62 f1 24 40 58 dc    	vaddps zmm3,zmm27,zmm4
  a42e63:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm3
  a42e6a:	03 
  a42e6b:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x380]
  a42e72:	0e 
  a42e73:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x300]
  a42e7a:	0c 
  a42e7b:	62 61 64 48 5c cc    	vsubps zmm25,zmm3,zmm4
  a42e81:	62 f1 64 48 58 dc    	vaddps zmm3,zmm3,zmm4
  a42e87:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm3
  a42e8e:	02 
  a42e8f:	62 01 6c 48 5c f5    	vsubps zmm30,zmm2,zmm29
  a42e95:	62 91 6c 48 58 d5    	vaddps zmm2,zmm2,zmm29
  a42e9b:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm2
  a42ea2:	14 
  a42ea3:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x40]
  a42eaa:	01 
  a42eab:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x340]
  a42eb2:	0d 
  a42eb3:	62 f1 6c 48 58 dc    	vaddps zmm3,zmm2,zmm4
  a42eb9:	62 61 6c 48 5c ec    	vsubps zmm29,zmm2,zmm4
  a42ebf:	62 d1 74 40 5c e5    	vsubps zmm4,zmm17,zmm13
  a42ec5:	62 21 14 48 58 d9    	vaddps zmm27,zmm13,zmm17
  a42ecb:	62 71 54 48 58 e9    	vaddps zmm13,zmm5,zmm1
  a42ed1:	62 61 54 48 5c c1    	vsubps zmm24,zmm5,zmm1
  a42ed7:	62 d1 1c 48 5c ee    	vsubps zmm5,zmm12,zmm14
  a42edd:	62 c1 1c 48 58 ce    	vaddps zmm17,zmm12,zmm14
  a42ee3:	62 71 04 40 5c f6    	vsubps zmm14,zmm31,zmm6
  a42ee9:	62 11 4c 48 58 e7    	vaddps zmm12,zmm6,zmm31
  a42eef:	62 f1 44 48 5c f0    	vsubps zmm6,zmm7,zmm0
  a42ef5:	62 71 7c 48 58 df    	vaddps zmm11,zmm0,zmm7
  a42efb:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x240]
  a42f02:	09 
  a42f03:	62 91 7c 48 5c fc    	vsubps zmm7,zmm0,zmm28
  a42f09:	62 11 7c 48 58 cc    	vaddps zmm9,zmm0,zmm28
  a42f0f:	62 41 6c 40 5c e7    	vsubps zmm28,zmm18,zmm15
  a42f15:	62 c1 6c 40 58 d7    	vaddps zmm18,zmm18,zmm15
  a42f1b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x2c0]
  a42f22:	0b 
  a42f23:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x280]
  a42f2a:	0a 
  a42f2b:	62 71 74 48 5c f8    	vsubps zmm15,zmm1,zmm0
  a42f31:	62 71 7c 48 58 c1    	vaddps zmm8,zmm0,zmm1
  a42f37:	62 b1 44 40 5c cc    	vsubps zmm1,zmm23,zmm20
  a42f3d:	62 a1 5c 40 58 e7    	vaddps zmm20,zmm20,zmm23
  a42f43:	62 a1 54 40 5c f8    	vsubps zmm23,zmm21,zmm16
  a42f49:	62 a1 54 40 58 c0    	vaddps zmm16,zmm21,zmm16
  a42f4f:	62 b1 2c 48 5c c3    	vsubps zmm0,zmm10,zmm19
  a42f55:	62 21 2c 48 58 fb    	vaddps zmm31,zmm10,zmm19
  a42f5b:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a42f62:	fe 
  a42f63:	62 81 6c 48 5c ea    	vsubps zmm21,zmm2,zmm26
  a42f69:	62 f1 2c 40 58 d2    	vaddps zmm2,zmm26,zmm2
  a42f6f:	62 e1 4c 40 58 db    	vaddps zmm19,zmm22,zmm3
  a42f75:	62 71 4c 40 5c d3    	vsubps zmm10,zmm22,zmm3
  a42f7b:	62 91 0c 40 5c d9    	vsubps zmm3,zmm30,zmm25
  a42f81:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a42f88:	fe 
  a42f89:	62 01 0c 40 58 d1    	vaddps zmm26,zmm30,zmm25
  a42f8f:	62 41 5c 48 5c ce    	vsubps zmm25,zmm4,zmm14
  a42f95:	62 41 5c 48 58 f6    	vaddps zmm30,zmm4,zmm14
  a42f9b:	62 d1 54 48 5c dd    	vsubps zmm3,zmm5,zmm13
  a42fa1:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a42fa8:	01 
  a42fa9:	62 c1 54 48 58 f5    	vaddps zmm22,zmm5,zmm13
  a42faf:	62 51 4c 48 5c f7    	vsubps zmm14,zmm6,zmm15
  a42fb5:	62 d1 4c 48 58 e7    	vaddps zmm4,zmm6,zmm15
  a42fbb:	62 f1 1c 40 5c df    	vsubps zmm3,zmm28,zmm7
  a42fc1:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a42fc8:	62 f1 1c 40 58 df    	vaddps zmm3,zmm28,zmm7
  a42fce:	62 21 74 48 5c e5    	vsubps zmm28,zmm1,zmm21
  a42fd4:	62 a1 74 48 58 ed    	vaddps zmm21,zmm1,zmm21
  a42fda:	62 b1 7c 48 5c cf    	vsubps zmm1,zmm0,zmm23
  a42fe0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a42fe7:	ff 
  a42fe8:	62 a1 7c 48 58 ff    	vaddps zmm23,zmm0,zmm23
  a42fee:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a42ff5:	03 
  a42ff6:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a42ffd:	02 
  a42ffe:	62 f1 7c 48 5c e9    	vsubps zmm5,zmm0,zmm1
  a43004:	62 71 7c 48 58 e9    	vaddps zmm13,zmm0,zmm1
  a4300a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x500]
  a43011:	14 
  a43012:	62 91 7c 48 5c f5    	vsubps zmm6,zmm0,zmm29
  a43018:	62 01 7c 48 58 ed    	vaddps zmm29,zmm0,zmm29
  a4301e:	62 91 24 40 5c f8    	vsubps zmm7,zmm27,zmm24
  a43024:	62 11 24 40 58 f8    	vaddps zmm15,zmm27,zmm24
  a4302a:	62 41 74 40 5c c4    	vsubps zmm24,zmm17,zmm12
  a43030:	62 51 74 40 58 e4    	vaddps zmm12,zmm17,zmm12
  a43036:	62 d1 24 48 5c c1    	vsubps zmm0,zmm11,zmm9
  a4303c:	62 d1 24 48 58 c9    	vaddps zmm1,zmm11,zmm9
  a43042:	62 51 6c 40 5c c8    	vsubps zmm9,zmm18,zmm8
  a43048:	62 51 6c 40 58 c0    	vaddps zmm8,zmm18,zmm8
  a4304e:	62 31 5c 40 5c d8    	vsubps zmm11,zmm20,zmm16
  a43054:	62 a1 5c 40 58 d0    	vaddps zmm18,zmm20,zmm16
  a4305a:	62 e1 04 40 5c c2    	vsubps zmm16,zmm31,zmm2
  a43060:	62 f1 04 40 58 d2    	vaddps zmm2,zmm31,zmm2
  a43066:	62 e1 7c 48 28 25 10 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff64ef10]        # 91f80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f430>
  a4306d:	ef 64 ff 
  a43070:	62 e2 5d 40 7f d2    	vpermt2ps zmm18,zmm20,zmm2
  a43076:	62 d2 5d 40 7f c8    	vpermt2ps zmm1,zmm20,zmm8
  a4307c:	62 52 5d 40 7f fc    	vpermt2ps zmm15,zmm20,zmm12
  a43082:	62 12 5d 40 7f ed    	vpermt2ps zmm13,zmm20,zmm29
  a43088:	62 a2 5d 40 7f ef    	vpermt2ps zmm21,zmm20,zmm23
  a4308e:	62 f2 5d 40 7f e3    	vpermt2ps zmm4,zmm20,zmm3
  a43094:	62 22 5d 40 7f f6    	vpermt2ps zmm30,zmm20,zmm22
  a4309a:	62 12 5d 40 7f d2    	vpermt2ps zmm10,zmm20,zmm26
  a430a0:	62 32 5d 40 7f d8    	vpermt2ps zmm11,zmm20,zmm16
  a430a6:	62 d2 5d 40 7f c1    	vpermt2ps zmm0,zmm20,zmm9
  a430ac:	62 92 5d 40 7f f8    	vpermt2ps zmm7,zmm20,zmm24
  a430b2:	62 f2 5d 40 7f ee    	vpermt2ps zmm5,zmm20,zmm6
  a430b8:	62 62 5d 40 7f 64 24 	vpermt2ps zmm28,zmm20,ZMMWORD PTR [rsp-0x40]
  a430bf:	ff 
  a430c0:	62 72 5d 40 7f 34 24 	vpermt2ps zmm14,zmm20,ZMMWORD PTR [rsp]
  a430c7:	62 62 5d 40 7f 4c 24 	vpermt2ps zmm25,zmm20,ZMMWORD PTR [rsp+0x40]
  a430ce:	01 
  a430cf:	62 e2 5d 40 7f 5c 24 	vpermt2ps zmm19,zmm20,ZMMWORD PTR [rsp-0x80]
  a430d6:	fe 
  a430d7:	62 e3 7d 48 19 d2 02 	vextractf32x4 xmm2,zmm18,0x2
  a430de:	c5 f8 13 56 20       	vmovlps QWORD PTR [rsi+0x20],xmm2
  a430e3:	62 e1 7c 28 11 16    	vmovups YMMWORD PTR [rsi],ymm18
  a430e9:	62 f3 7d 48 19 ca 02 	vextractf32x4 xmm2,zmm1,0x2
  a430f0:	c5 f8 13 56 48       	vmovlps QWORD PTR [rsi+0x48],xmm2
  a430f5:	c5 fc 11 4e 28       	vmovups YMMWORD PTR [rsi+0x28],ymm1
  a430fa:	62 73 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm15,0x2
  a43101:	c5 f8 13 4e 70       	vmovlps QWORD PTR [rsi+0x70],xmm1
  a43106:	c5 7c 11 7e 50       	vmovups YMMWORD PTR [rsi+0x50],ymm15
  a4310b:	62 73 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm13,0x2
  a43112:	c5 f8 13 8e 98 00 00 	vmovlps QWORD PTR [rsi+0x98],xmm1
  a43119:	00 
  a4311a:	c5 7c 11 6e 78       	vmovups YMMWORD PTR [rsi+0x78],ymm13
  a4311f:	62 e3 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm21,0x2
  a43126:	c5 f8 13 8e c0 00 00 	vmovlps QWORD PTR [rsi+0xc0],xmm1
  a4312d:	00 
  a4312e:	62 e1 7c 28 11 6e 05 	vmovups YMMWORD PTR [rsi+0xa0],ymm21
  a43135:	62 f3 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm4,0x2
  a4313c:	c5 f8 13 8e e8 00 00 	vmovlps QWORD PTR [rsi+0xe8],xmm1
  a43143:	00 
  a43144:	c5 fc 11 a6 c8 00 00 	vmovups YMMWORD PTR [rsi+0xc8],ymm4
  a4314b:	00 
  a4314c:	62 63 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm30,0x2
  a43153:	c5 f8 13 8e 10 01 00 	vmovlps QWORD PTR [rsi+0x110],xmm1
  a4315a:	00 
  a4315b:	62 61 7c 28 11 b6 f0 	vmovups YMMWORD PTR [rsi+0xf0],ymm30
  a43162:	00 00 00 
  a43165:	62 73 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm10,0x2
  a4316c:	c5 f8 13 8e 38 01 00 	vmovlps QWORD PTR [rsi+0x138],xmm1
  a43173:	00 
  a43174:	c5 7c 11 96 18 01 00 	vmovups YMMWORD PTR [rsi+0x118],ymm10
  a4317b:	00 
  a4317c:	62 73 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm11,0x2
  a43183:	c5 f8 13 8e 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm1
  a4318a:	00 
  a4318b:	c5 7c 11 9e 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm11
  a43192:	00 
  a43193:	62 f3 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm0,0x2
  a4319a:	c5 f8 13 8e 88 01 00 	vmovlps QWORD PTR [rsi+0x188],xmm1
  a431a1:	00 
  a431a2:	c5 fc 11 86 68 01 00 	vmovups YMMWORD PTR [rsi+0x168],ymm0
  a431a9:	00 
  a431aa:	62 f3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm7,0x2
  a431b1:	c5 f8 13 86 b0 01 00 	vmovlps QWORD PTR [rsi+0x1b0],xmm0
  a431b8:	00 
  a431b9:	c5 fc 11 be 90 01 00 	vmovups YMMWORD PTR [rsi+0x190],ymm7
  a431c0:	00 
  a431c1:	62 f3 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm5,0x2
  a431c8:	c5 f8 13 86 d8 01 00 	vmovlps QWORD PTR [rsi+0x1d8],xmm0
  a431cf:	00 
  a431d0:	c5 fc 11 ae b8 01 00 	vmovups YMMWORD PTR [rsi+0x1b8],ymm5
  a431d7:	00 
  a431d8:	62 63 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm28,0x2
  a431df:	c5 f8 13 86 00 02 00 	vmovlps QWORD PTR [rsi+0x200],xmm0
  a431e6:	00 
  a431e7:	62 61 7c 28 11 66 0f 	vmovups YMMWORD PTR [rsi+0x1e0],ymm28
  a431ee:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a431f5:	c5 f8 13 86 28 02 00 	vmovlps QWORD PTR [rsi+0x228],xmm0
  a431fc:	00 
  a431fd:	c5 7c 11 b6 08 02 00 	vmovups YMMWORD PTR [rsi+0x208],ymm14
  a43204:	00 
  a43205:	62 63 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm25,0x2
  a4320c:	c5 f8 13 86 50 02 00 	vmovlps QWORD PTR [rsi+0x250],xmm0
  a43213:	00 
  a43214:	62 61 7c 28 11 8e 30 	vmovups YMMWORD PTR [rsi+0x230],ymm25
  a4321b:	02 00 00 
  a4321e:	62 e3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm19,0x2
  a43225:	c5 f8 13 86 78 02 00 	vmovlps QWORD PTR [rsi+0x278],xmm0
  a4322c:	00 
  a4322d:	62 e1 7c 28 11 9e 58 	vmovups YMMWORD PTR [rsi+0x258],ymm19
  a43234:	02 00 00 
  a43237:	48 81 c4 c8 08 00 00 	add    rsp,0x8c8
  a4323e:	c5 f8 77             	vzeroupper
  a43241:	c3                   	ret
