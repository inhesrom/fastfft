
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a45000 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a45000:	62 f1 7c 48 28 05 76 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff681f76]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a45007:	1f 68 ff 
  a4500a:	62 f1 7c 48 28 0d ac 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff681fac]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a45011:	1f 68 ff 
  a45014:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a45018:	62 f2 7d 48 7f db    	vpermt2ps zmm3,zmm0,zmm3
  a4501e:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a45022:	62 f2 75 48 7f e4    	vpermt2ps zmm4,zmm1,zmm4
  a45028:	48 c1 e2 05          	shl    rdx,0x5
  a4502c:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a45030:	31 d2                	xor    edx,edx
  a45032:	62 72 7d 48 18 15 98 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff630298]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a45039:	02 63 ff 
  a4503c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  a45040:	62 71 7c 48 10 0c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1]
  a45047:	c5 7b 10 64 17 40    	vmovsd xmm12,QWORD PTR [rdi+rdx*1+0x40]
  a4504d:	62 51 7c 48 28 e9    	vmovaps zmm13,zmm9
  a45053:	62 f1 7c 48 28 05 a3 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff64d1a3]        # 92200 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f6b0>
  a4505a:	d1 64 ff 
  a4505d:	62 52 7d 48 7f ec    	vpermt2ps zmm13,zmm0,zmm12
  a45063:	62 f1 7c 48 28 0d d3 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff64d1d3]        # 92240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f6f0>
  a4506a:	d1 64 ff 
  a4506d:	62 52 75 48 7f cc    	vpermt2ps zmm9,zmm1,zmm12
  a45073:	62 71 7c 48 10 a4 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x48]
  a4507a:	48 00 00 00 
  a4507e:	c5 7b 10 b4 17 88 00 	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x88]
  a45085:	00 00 
  a45087:	62 51 7c 48 28 fc    	vmovaps zmm15,zmm12
  a4508d:	62 52 7d 48 7f fe    	vpermt2ps zmm15,zmm0,zmm14
  a45093:	62 52 75 48 7f e6    	vpermt2ps zmm12,zmm1,zmm14
  a45099:	62 71 7c 48 10 b4 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x90]
  a450a0:	90 00 00 00 
  a450a4:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0xd0]
  a450ab:	1a 
  a450ac:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a450b2:	62 a2 7d 48 7f c8    	vpermt2ps zmm17,zmm0,zmm16
  a450b8:	62 32 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm16
  a450be:	62 e1 7c 48 10 84 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0xd8]
  a450c5:	d8 00 00 00 
  a450c9:	62 e1 ff 08 10 54 17 	vmovsd xmm18,QWORD PTR [rdi+rdx*1+0x118]
  a450d0:	23 
  a450d1:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a450d7:	62 a2 7d 48 7f e2    	vpermt2ps zmm20,zmm0,zmm18
  a450dd:	62 a2 75 48 7f c2    	vpermt2ps zmm16,zmm1,zmm18
  a450e3:	62 c1 34 48 58 d6    	vaddps zmm18,zmm9,zmm14
  a450e9:	62 a1 1c 48 58 f0    	vaddps zmm22,zmm12,zmm16
  a450ef:	62 a1 6c 40 58 fe    	vaddps zmm23,zmm18,zmm22
  a450f5:	62 21 14 48 58 c1    	vaddps zmm24,zmm13,zmm17
  a450fb:	62 21 04 48 58 cc    	vaddps zmm25,zmm15,zmm20
  a45101:	62 81 3c 40 58 e9    	vaddps zmm21,zmm24,zmm25
  a45107:	62 51 34 48 5c ce    	vsubps zmm9,zmm9,zmm14
  a4510d:	62 31 04 48 5c f4    	vsubps zmm14,zmm15,zmm20
  a45113:	62 51 34 48 58 fe    	vaddps zmm15,zmm9,zmm14
  a45119:	62 31 14 48 5c e9    	vsubps zmm13,zmm13,zmm17
  a4511f:	62 c1 7c 40 5c c4    	vsubps zmm16,zmm16,zmm12
  a45125:	62 51 7c 40 58 e5    	vaddps zmm12,zmm16,zmm13
  a4512b:	62 a1 6c 40 5c ce    	vsubps zmm17,zmm18,zmm22
  a45131:	62 01 3c 40 5c f9    	vsubps zmm31,zmm24,zmm25
  a45137:	62 51 34 48 5c ce    	vsubps zmm9,zmm9,zmm14
  a4513d:	62 21 14 48 5c e0    	vsubps zmm28,zmm13,zmm16
  a45143:	62 31 7c 48 28 ef    	vmovaps zmm13,zmm23
  a45149:	62 f1 7c 48 28 05 2d 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff681e2d]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a45150:	1e 68 ff 
  a45153:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a45157:	62 72 7d 48 7f ea    	vpermt2ps zmm13,zmm0,zmm2
  a4515d:	62 f1 7c 48 28 0d 59 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff681e59]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a45164:	1e 68 ff 
  a45167:	62 e2 75 48 7f fa    	vpermt2ps zmm23,zmm1,zmm2
  a4516d:	62 51 7c 48 28 f7    	vmovaps zmm14,zmm15
  a45173:	62 72 7d 48 7f f2    	vpermt2ps zmm14,zmm0,zmm2
  a45179:	62 72 75 48 7f fa    	vpermt2ps zmm15,zmm1,zmm2
  a4517f:	62 a1 7c 48 28 c1    	vmovaps zmm16,zmm17
  a45185:	62 e2 7d 48 7f c2    	vpermt2ps zmm16,zmm0,zmm2
  a4518b:	62 e2 75 48 7f ca    	vpermt2ps zmm17,zmm1,zmm2
  a45191:	62 c1 7c 48 28 d1    	vmovaps zmm18,zmm9
  a45197:	62 e2 7d 48 7f d2    	vpermt2ps zmm18,zmm0,zmm2
  a4519d:	62 72 75 48 7f ca    	vpermt2ps zmm9,zmm1,zmm2
  a451a3:	62 c1 7c 48 28 e5    	vmovaps zmm20,zmm13
  a451a9:	62 f1 7c 48 28 2d 4d 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff681d4d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a451b0:	1d 68 ff 
  a451b3:	62 e2 55 48 7f e3    	vpermt2ps zmm20,zmm5,zmm3
  a451b9:	62 f1 7c 48 28 35 7d 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff681d7d]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a451c0:	1d 68 ff 
  a451c3:	62 72 4d 48 7f eb    	vpermt2ps zmm13,zmm6,zmm3
  a451c9:	62 41 7c 48 28 c6    	vmovaps zmm24,zmm14
  a451cf:	62 62 55 48 7f c3    	vpermt2ps zmm24,zmm5,zmm3
  a451d5:	62 72 4d 48 7f f3    	vpermt2ps zmm14,zmm6,zmm3
  a451db:	62 21 7c 48 28 c8    	vmovaps zmm25,zmm16
  a451e1:	62 62 55 48 7f cb    	vpermt2ps zmm25,zmm5,zmm3
  a451e7:	62 e2 4d 48 7f c3    	vpermt2ps zmm16,zmm6,zmm3
  a451ed:	62 21 7c 48 28 da    	vmovaps zmm27,zmm18
  a451f3:	62 62 55 48 7f db    	vpermt2ps zmm27,zmm5,zmm3
  a451f9:	62 e2 4d 48 7f d3    	vpermt2ps zmm18,zmm6,zmm3
  a451ff:	62 e2 55 48 7f fc    	vpermt2ps zmm23,zmm5,zmm4
  a45205:	62 72 55 48 7f fc    	vpermt2ps zmm15,zmm5,zmm4
  a4520b:	62 e2 55 48 7f cc    	vpermt2ps zmm17,zmm5,zmm4
  a45211:	62 a1 c5 40 14 f1    	vunpcklpd zmm22,zmm23,zmm17
  a45217:	62 72 55 48 7f cc    	vpermt2ps zmm9,zmm5,zmm4
  a4521d:	62 51 85 48 14 c9    	vunpcklpd zmm9,zmm15,zmm9
  a45223:	62 01 dd 40 14 d1    	vunpcklpd zmm26,zmm20,zmm25
  a45229:	62 01 dd 40 15 e9    	vunpckhpd zmm29,zmm20,zmm25
  a4522f:	62 11 bd 40 14 fb    	vunpcklpd zmm15,zmm24,zmm27
  a45235:	62 81 bd 40 15 cb    	vunpckhpd zmm17,zmm24,zmm27
  a4523b:	62 a1 95 48 14 f8    	vunpcklpd zmm23,zmm13,zmm16
  a45241:	62 21 95 48 15 c8    	vunpckhpd zmm25,zmm13,zmm16
  a45247:	62 31 8d 48 14 ea    	vunpcklpd zmm13,zmm14,zmm18
  a4524d:	62 31 8d 48 15 f2    	vunpckhpd zmm14,zmm14,zmm18
  a45253:	62 81 7c 48 28 e2    	vmovaps zmm20,zmm26
  a45259:	62 f1 7c 48 28 3d 9d 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff681b9d]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a45260:	1b 68 ff 
  a45263:	62 c2 45 48 7f e7    	vpermt2ps zmm20,zmm7,zmm15
  a45269:	62 71 7c 48 28 05 cd 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff681bcd]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a45270:	1b 68 ff 
  a45273:	62 42 3d 48 7f d7    	vpermt2ps zmm26,zmm8,zmm15
  a45279:	62 01 7c 48 28 c5    	vmovaps zmm24,zmm29
  a4527f:	62 22 45 48 7f c1    	vpermt2ps zmm24,zmm7,zmm17
  a45285:	62 22 3d 48 7f e9    	vpermt2ps zmm29,zmm8,zmm17
  a4528b:	62 21 7c 48 28 df    	vmovaps zmm27,zmm23
  a45291:	62 42 45 48 7f dd    	vpermt2ps zmm27,zmm7,zmm13
  a45297:	62 c2 3d 48 7f fd    	vpermt2ps zmm23,zmm8,zmm13
  a4529d:	62 01 7c 48 28 f1    	vmovaps zmm30,zmm25
  a452a3:	62 42 45 48 7f f6    	vpermt2ps zmm30,zmm7,zmm14
  a452a9:	62 42 3d 48 7f ce    	vpermt2ps zmm25,zmm8,zmm14
  a452af:	62 c2 45 48 7f f1    	vpermt2ps zmm22,zmm7,zmm9
  a452b5:	62 31 7c 48 28 cd    	vmovaps zmm9,zmm21
  a452bb:	62 72 7d 48 7f ca    	vpermt2ps zmm9,zmm0,zmm2
  a452c1:	62 e2 75 48 7f ea    	vpermt2ps zmm21,zmm1,zmm2
  a452c7:	62 51 7c 48 28 fc    	vmovaps zmm15,zmm12
  a452cd:	62 72 7d 48 7f fa    	vpermt2ps zmm15,zmm0,zmm2
  a452d3:	62 72 75 48 7f e2    	vpermt2ps zmm12,zmm1,zmm2
  a452d9:	62 81 7c 48 28 c7    	vmovaps zmm16,zmm31
  a452df:	62 e2 7d 48 7f c2    	vpermt2ps zmm16,zmm0,zmm2
  a452e5:	62 62 75 48 7f fa    	vpermt2ps zmm31,zmm1,zmm2
  a452eb:	62 81 7c 48 28 cc    	vmovaps zmm17,zmm28
  a452f1:	62 e2 7d 48 7f ca    	vpermt2ps zmm17,zmm0,zmm2
  a452f7:	62 62 75 48 7f e2    	vpermt2ps zmm28,zmm1,zmm2
  a452fd:	62 51 7c 48 28 e9    	vmovaps zmm13,zmm9
  a45303:	62 72 55 48 7f eb    	vpermt2ps zmm13,zmm5,zmm3
  a45309:	62 72 4d 48 7f cb    	vpermt2ps zmm9,zmm6,zmm3
  a4530f:	62 51 7c 48 28 f7    	vmovaps zmm14,zmm15
  a45315:	62 72 55 48 7f f3    	vpermt2ps zmm14,zmm5,zmm3
  a4531b:	62 72 4d 48 7f fb    	vpermt2ps zmm15,zmm6,zmm3
  a45321:	62 a1 7c 48 28 d0    	vmovaps zmm18,zmm16
  a45327:	62 e2 55 48 7f d3    	vpermt2ps zmm18,zmm5,zmm3
  a4532d:	62 e2 4d 48 7f c3    	vpermt2ps zmm16,zmm6,zmm3
  a45333:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a45339:	62 f2 55 48 7f c3    	vpermt2ps zmm0,zmm5,zmm3
  a4533f:	62 e2 4d 48 7f cb    	vpermt2ps zmm17,zmm6,zmm3
  a45345:	62 e2 55 48 7f ec    	vpermt2ps zmm21,zmm5,zmm4
  a4534b:	62 72 55 48 7f e4    	vpermt2ps zmm12,zmm5,zmm4
  a45351:	62 62 55 48 7f fc    	vpermt2ps zmm31,zmm5,zmm4
  a45357:	62 01 d5 40 14 ff    	vunpcklpd zmm31,zmm21,zmm31
  a4535d:	62 62 55 48 7f e4    	vpermt2ps zmm28,zmm5,zmm4
  a45363:	62 01 9d 48 14 e4    	vunpcklpd zmm28,zmm12,zmm28
  a45369:	62 a1 95 48 14 ea    	vunpcklpd zmm21,zmm13,zmm18
  a4536f:	62 31 95 48 15 ea    	vunpckhpd zmm13,zmm13,zmm18
  a45375:	62 71 8d 48 14 e0    	vunpcklpd zmm12,zmm14,zmm0
  a4537b:	62 f1 8d 48 15 c0    	vunpckhpd zmm0,zmm14,zmm0
  a45381:	62 31 b5 48 14 f0    	vunpcklpd zmm14,zmm9,zmm16
  a45387:	62 a1 b5 48 15 d0    	vunpckhpd zmm18,zmm9,zmm16
  a4538d:	62 b1 85 48 14 c9    	vunpcklpd zmm1,zmm15,zmm17
  a45393:	62 31 85 48 15 f9    	vunpckhpd zmm15,zmm15,zmm17
  a45399:	62 31 7c 48 28 cd    	vmovaps zmm9,zmm21
  a4539f:	62 52 45 48 7f cc    	vpermt2ps zmm9,zmm7,zmm12
  a453a5:	62 c2 3d 48 7f ec    	vpermt2ps zmm21,zmm8,zmm12
  a453ab:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a453b1:	62 e2 45 48 7f c0    	vpermt2ps zmm16,zmm7,zmm0
  a453b7:	62 72 3d 48 7f e8    	vpermt2ps zmm13,zmm8,zmm0
  a453bd:	62 51 7c 48 28 e6    	vmovaps zmm12,zmm14
  a453c3:	62 72 45 48 7f e1    	vpermt2ps zmm12,zmm7,zmm1
  a453c9:	62 72 3d 48 7f f1    	vpermt2ps zmm14,zmm8,zmm1
  a453cf:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a453d5:	62 d2 45 48 7f c7    	vpermt2ps zmm0,zmm7,zmm15
  a453db:	62 c2 3d 48 7f d7    	vpermt2ps zmm18,zmm8,zmm15
  a453e1:	62 02 45 48 7f fc    	vpermt2ps zmm31,zmm7,zmm28
  a453e7:	62 f1 7c 48 10 49 02 	vmovups zmm1,ZMMWORD PTR [rcx+0x80]
  a453ee:	62 71 7c 48 10 79 03 	vmovups zmm15,ZMMWORD PTR [rcx+0xc0]
  a453f5:	62 e1 7c 48 10 49 06 	vmovups zmm17,ZMMWORD PTR [rcx+0x180]
  a453fc:	62 f1 7c 48 10 71 07 	vmovups zmm6,ZMMWORD PTR [rcx+0x1c0]
  a45403:	62 21 14 40 59 e1    	vmulps zmm28,zmm29,zmm17
  a45409:	62 62 15 48 bc e6    	vfnmadd231ps zmm28,zmm13,zmm6
  a4540f:	62 a1 14 48 59 c9    	vmulps zmm17,zmm13,zmm17
  a45415:	62 71 7c 48 10 41 0c 	vmovups zmm8,ZMMWORD PTR [rcx+0x300]
  a4541c:	62 82 4d 48 b8 cd    	vfmadd231ps zmm17,zmm6,zmm29
  a45422:	62 f1 7c 48 10 71 0d 	vmovups zmm6,ZMMWORD PTR [rcx+0x340]
  a45429:	62 51 0c 40 59 e8    	vmulps zmm13,zmm30,zmm8
  a4542f:	62 72 7d 48 bc ee    	vfnmadd231ps zmm13,zmm0,zmm6
  a45435:	62 d1 7c 48 59 c0    	vmulps zmm0,zmm0,zmm8
  a4543b:	62 71 7c 48 10 41 04 	vmovups zmm8,ZMMWORD PTR [rcx+0x100]
  a45442:	62 92 4d 48 b8 c6    	vfmadd231ps zmm0,zmm6,zmm30
  a45448:	62 f1 7c 48 10 71 05 	vmovups zmm6,ZMMWORD PTR [rcx+0x140]
  a4544f:	62 61 2c 40 59 e9    	vmulps zmm29,zmm26,zmm1
  a45455:	62 42 55 40 bc ef    	vfnmadd231ps zmm29,zmm21,zmm15
  a4545b:	62 61 54 40 59 f1    	vmulps zmm30,zmm21,zmm1
  a45461:	62 f1 7c 48 10 49 08 	vmovups zmm1,ZMMWORD PTR [rcx+0x200]
  a45468:	62 02 05 48 b8 f2    	vfmadd231ps zmm30,zmm15,zmm26
  a4546e:	62 71 7c 48 10 79 09 	vmovups zmm15,ZMMWORD PTR [rcx+0x240]
  a45475:	62 e1 24 40 59 e9    	vmulps zmm21,zmm27,zmm1
  a4547b:	62 c2 1d 48 bc ef    	vfnmadd231ps zmm21,zmm12,zmm15
  a45481:	62 f1 1c 48 59 c9    	vmulps zmm1,zmm12,zmm1
  a45487:	62 71 7c 48 10 61 0e 	vmovups zmm12,ZMMWORD PTR [rcx+0x380]
  a4548e:	62 92 05 48 b8 cb    	vfmadd231ps zmm1,zmm15,zmm27
  a45494:	62 71 7c 48 10 79 0f 	vmovups zmm15,ZMMWORD PTR [rcx+0x3c0]
  a4549b:	62 41 34 40 59 d4    	vmulps zmm26,zmm25,zmm12
  a454a1:	62 42 6d 40 bc d7    	vfnmadd231ps zmm26,zmm18,zmm15
  a454a7:	62 51 6c 40 59 e4    	vmulps zmm12,zmm18,zmm12
  a454ad:	62 61 7c 48 10 59 0a 	vmovups zmm27,ZMMWORD PTR [rcx+0x280]
  a454b4:	62 12 05 48 b8 e1    	vfmadd231ps zmm12,zmm15,zmm25
  a454ba:	62 71 7c 48 10 79 0b 	vmovups zmm15,ZMMWORD PTR [rcx+0x2c0]
  a454c1:	62 c1 3c 40 59 d0    	vmulps zmm18,zmm24,zmm8
  a454c7:	62 e2 7d 40 bc d6    	vfnmadd231ps zmm18,zmm16,zmm6
  a454cd:	62 c1 7c 40 59 c0    	vmulps zmm16,zmm16,zmm8
  a454d3:	62 71 7c 48 10 41 10 	vmovups zmm8,ZMMWORD PTR [rcx+0x400]
  a454da:	62 82 4d 48 b8 c0    	vfmadd231ps zmm16,zmm6,zmm24
  a454e0:	62 f1 7c 48 10 71 11 	vmovups zmm6,ZMMWORD PTR [rcx+0x440]
  a454e7:	62 01 44 40 59 cb    	vmulps zmm25,zmm23,zmm27
  a454ed:	62 42 0d 48 bc cf    	vfnmadd231ps zmm25,zmm14,zmm15
  a454f3:	62 11 0c 48 59 f3    	vmulps zmm14,zmm14,zmm27
  a454f9:	62 41 1c 40 58 c5    	vaddps zmm24,zmm28,zmm13
  a454ff:	62 32 05 48 b8 f7    	vfmadd231ps zmm14,zmm15,zmm23
  a45505:	62 01 5c 40 58 d8    	vaddps zmm27,zmm20,zmm24
  a4550b:	62 51 4c 40 59 f8    	vmulps zmm15,zmm22,zmm8
  a45511:	62 72 05 40 bc fe    	vfnmadd231ps zmm15,zmm31,zmm6
  a45517:	62 51 04 40 59 c0    	vmulps zmm8,zmm31,zmm8
  a4551d:	62 01 54 40 58 fa    	vaddps zmm31,zmm21,zmm26
  a45523:	62 32 4d 48 b8 c6    	vfmadd231ps zmm8,zmm6,zmm22
  a45529:	62 81 14 40 58 f7    	vaddps zmm22,zmm29,zmm31
  a4552f:	62 d1 34 40 58 f7    	vaddps zmm6,zmm25,zmm15
  a45535:	62 f2 7d 48 18 15 21 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff62ff21]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a4553c:	ff 62 ff 
  a4553f:	62 82 6d 48 bc e0    	vfnmadd231ps zmm20,zmm2,zmm24
  a45545:	62 e1 74 40 58 d8    	vaddps zmm19,zmm17,zmm0
  a4554b:	62 f1 74 40 5c c0    	vsubps zmm0,zmm17,zmm0
  a45551:	62 e1 6c 40 58 fe    	vaddps zmm23,zmm18,zmm6
  a45557:	62 02 6d 48 bc ef    	vfnmadd231ps zmm29,zmm2,zmm31
  a4555d:	62 c1 74 48 58 cc    	vaddps zmm17,zmm1,zmm12
  a45563:	62 d1 74 48 5c cc    	vsubps zmm1,zmm1,zmm12
  a45569:	62 21 0c 40 58 c1    	vaddps zmm24,zmm30,zmm17
  a4556f:	62 22 6d 48 bc f1    	vfnmadd231ps zmm30,zmm2,zmm17
  a45575:	62 41 64 40 58 f9    	vaddps zmm31,zmm19,zmm9
  a4557b:	62 11 54 40 5c e2    	vsubps zmm12,zmm21,zmm26
  a45581:	62 c1 0c 48 58 c8    	vaddps zmm17,zmm14,zmm8
  a45587:	62 e2 6d 48 bc d6    	vfnmadd231ps zmm18,zmm2,zmm6
  a4558d:	62 21 7c 40 58 d1    	vaddps zmm26,zmm16,zmm17
  a45593:	62 d1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm10
  a45599:	62 d1 74 48 59 ca    	vmulps zmm1,zmm1,zmm10
  a4559f:	62 d1 0c 48 5c f0    	vsubps zmm6,zmm14,zmm8
  a455a5:	62 71 14 40 58 c1    	vaddps zmm8,zmm29,zmm1
  a455ab:	62 51 1c 48 59 f2    	vmulps zmm14,zmm12,zmm10
  a455b1:	62 a2 6d 48 bc c1    	vfnmadd231ps zmm16,zmm2,zmm17
  a455b7:	62 51 0c 40 5c e6    	vsubps zmm12,zmm30,zmm14
  a455bd:	62 51 34 40 5c ff    	vsubps zmm15,zmm25,zmm15
  a455c3:	62 f2 7d 48 18 3d 9b 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff63009b]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a455ca:	00 63 ff 
  a455cd:	62 61 1c 48 59 cf    	vmulps zmm25,zmm12,zmm7
  a455d3:	62 72 7d 48 18 1d fb 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff62fefb]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a455da:	fe 62 ff 
  a455dd:	62 42 3d 48 b8 cb    	vfmadd231ps zmm25,zmm8,zmm11
  a455e3:	62 d1 4c 48 59 f2    	vmulps zmm6,zmm6,zmm10
  a455e9:	62 32 6d 48 bc cb    	vfnmadd231ps zmm9,zmm2,zmm19
  a455ef:	62 e1 6c 40 58 ce    	vaddps zmm17,zmm18,zmm6
  a455f5:	62 c1 04 48 59 da    	vmulps zmm19,zmm15,zmm10
  a455fb:	62 c1 1c 40 5c ed    	vsubps zmm21,zmm28,zmm13
  a45601:	62 31 7c 40 5c eb    	vsubps zmm13,zmm16,zmm19
  a45607:	62 51 1c 48 59 e3    	vmulps zmm12,zmm12,zmm11
  a4560d:	62 52 45 48 bc e0    	vfnmadd231ps zmm12,zmm7,zmm8
  a45613:	62 72 7d 48 18 1d fb 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff62fcfb]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a4561a:	fc 62 ff 
  a4561d:	62 41 14 48 59 e3    	vmulps zmm28,zmm13,zmm11
  a45623:	62 f2 7d 48 18 2d af 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff62feaf]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a4562a:	fe 62 ff 
  a4562d:	62 62 75 40 b8 e5    	vfmadd231ps zmm28,zmm17,zmm5
  a45633:	62 71 14 48 59 ed    	vmulps zmm13,zmm13,zmm5
  a45639:	62 32 25 48 bc e9    	vfnmadd231ps zmm13,zmm11,zmm17
  a4563f:	62 71 5c 40 58 c0    	vaddps zmm8,zmm20,zmm0
  a45645:	62 71 5c 40 5c f8    	vsubps zmm15,zmm20,zmm0
  a4564b:	62 f1 14 40 5c c1    	vsubps zmm0,zmm29,zmm1
  a45651:	62 d1 0c 40 58 ce    	vaddps zmm1,zmm30,zmm14
  a45657:	62 31 4c 40 58 f7    	vaddps zmm14,zmm22,zmm23
  a4565d:	62 f1 6c 40 5c f6    	vsubps zmm6,zmm18,zmm6
  a45663:	62 81 3c 40 58 ca    	vaddps zmm17,zmm24,zmm26
  a45669:	62 c1 54 40 59 d2    	vmulps zmm18,zmm21,zmm10
  a4566f:	62 a1 7c 40 58 c3    	vaddps zmm16,zmm16,zmm19
  a45675:	62 a1 34 48 5c da    	vsubps zmm19,zmm9,zmm18
  a4567b:	62 d1 6c 40 58 f9    	vaddps zmm7,zmm18,zmm9
  a45681:	62 c1 74 48 59 e3    	vmulps zmm20,zmm1,zmm11
  a45687:	62 e2 7d 48 b8 e5    	vfmadd231ps zmm20,zmm0,zmm5
  a4568d:	62 61 74 48 59 f5    	vmulps zmm30,zmm1,zmm5
  a45693:	62 62 25 48 bc f0    	vfnmadd231ps zmm30,zmm11,zmm0
  a45699:	62 f2 7d 48 18 05 4d 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff62fe4d]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a456a0:	fe 62 ff 
  a456a3:	62 61 7c 40 59 e8    	vmulps zmm29,zmm16,zmm0
  a456a9:	62 f2 7d 48 18 0d 45 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff62ff45]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a456b0:	ff 62 ff 
  a456b3:	62 62 4d 48 bc e9    	vfnmadd231ps zmm29,zmm6,zmm1
  a456b9:	62 e1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm1
  a456bf:	62 e2 7d 48 b8 c6    	vfmadd231ps zmm16,zmm0,zmm6
  a456c5:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  a456cb:	62 82 0d 48 ac eb    	vfnmadd213ps zmm21,zmm14,zmm27
  a456d1:	62 d1 24 20 58 c6    	vaddps ymm0,ymm27,ymm14
  a456d7:	62 e1 7c 48 28 d2    	vmovaps zmm18,zmm2
  a456dd:	62 82 75 40 ac d7    	vfnmadd213ps zmm18,zmm17,zmm31
  a456e3:	62 b1 04 00 58 c9    	vaddps xmm1,xmm31,xmm17
  a456e9:	62 91 34 40 58 f4    	vaddps zmm6,zmm25,zmm28
  a456ef:	c5 fc 28 2d e9 1a 63 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff631ae9]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a456f6:	ff 
  a456f7:	62 f2 55 28 7f c8    	vpermt2ps ymm1,ymm5,ymm0
  a456fd:	62 d1 1c 48 58 c5    	vaddps zmm0,zmm12,zmm13
  a45703:	c5 fc 11 0c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm1
  a45708:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a4570e:	62 52 4d 48 ac c8    	vfnmadd213ps zmm9,zmm6,zmm8
  a45714:	c5 bc 58 ce          	vaddps ymm1,ymm8,ymm6
  a45718:	62 61 7c 48 28 da    	vmovaps zmm27,zmm2
  a4571e:	62 22 7d 48 ac db    	vfnmadd213ps zmm27,zmm0,zmm19
  a45724:	62 f1 64 00 58 c0    	vaddps xmm0,xmm19,xmm0
  a4572a:	62 91 5c 40 58 f5    	vaddps zmm6,zmm20,zmm29
  a45730:	62 f2 55 28 7f c1    	vpermt2ps ymm0,ymm5,ymm1
  a45736:	62 b1 0c 40 5c c8    	vsubps zmm1,zmm30,zmm16
  a4573c:	c5 fc 11 44 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm0
  a45742:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a45748:	62 52 4d 48 ac f7    	vfnmadd213ps zmm14,zmm6,zmm15
  a4574e:	c5 84 58 c6          	vaddps ymm0,ymm15,ymm6
  a45752:	62 f2 75 48 ac d7    	vfnmadd213ps zmm2,zmm1,zmm7
  a45758:	c5 c0 58 c9          	vaddps xmm1,xmm7,xmm1
  a4575c:	62 f2 55 28 7f c8    	vpermt2ps ymm1,ymm5,ymm0
  a45762:	c5 fc 11 4c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm1
  a45768:	62 91 3c 20 5c c2    	vsubps ymm0,ymm24,ymm26
  a4576e:	c5 ac 59 c0          	vmulps ymm0,ymm10,ymm0
  a45772:	62 f1 54 20 58 c8    	vaddps ymm1,ymm21,ymm0
  a45778:	62 b1 4c 20 5c f7    	vsubps ymm6,ymm22,ymm23
  a4577e:	c5 ac 59 f6          	vmulps ymm6,ymm10,ymm6
  a45782:	62 f1 6c 00 5c fe    	vsubps xmm7,xmm18,xmm6
  a45788:	62 f2 55 28 7f f9    	vpermt2ps ymm7,ymm5,ymm1
  a4578e:	c5 fc 11 7c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm7
  a45794:	c4 c1 1c 5c cd       	vsubps ymm1,ymm12,ymm13
  a45799:	c5 ac 59 c9          	vmulps ymm1,ymm10,ymm1
  a4579d:	c5 b4 58 f9          	vaddps ymm7,ymm9,ymm1
  a457a1:	62 11 34 20 5c c4    	vsubps ymm8,ymm25,ymm28
  a457a7:	c4 41 3c 59 c2       	vmulps ymm8,ymm8,ymm10
  a457ac:	62 51 24 00 5c e0    	vsubps xmm12,xmm27,xmm8
  a457b2:	62 72 55 28 7f e7    	vpermt2ps ymm12,ymm5,ymm7
  a457b8:	c5 7c 11 a4 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm12
  a457bf:	00 00 
  a457c1:	62 b1 0c 20 58 f8    	vaddps ymm7,ymm30,ymm16
  a457c7:	c5 ac 59 ff          	vmulps ymm7,ymm10,ymm7
  a457cb:	c5 0c 58 e7          	vaddps ymm12,ymm14,ymm7
  a457cf:	62 11 5c 20 5c ed    	vsubps ymm13,ymm20,ymm29
  a457d5:	c4 41 14 59 ea       	vmulps ymm13,ymm13,ymm10
  a457da:	62 c1 6c 08 5c c5    	vsubps xmm16,xmm2,xmm13
  a457e0:	62 c2 55 28 7f c4    	vpermt2ps ymm16,ymm5,ymm12
  a457e6:	62 e1 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm16
  a457ed:	05 
  a457ee:	62 f1 54 20 5c c0    	vsubps ymm0,ymm21,ymm0
  a457f4:	62 f1 6c 00 58 f6    	vaddps xmm6,xmm18,xmm6
  a457fa:	62 f2 55 28 7f f0    	vpermt2ps ymm6,ymm5,ymm0
  a45800:	c5 fc 11 b4 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm6
  a45807:	00 00 
  a45809:	c5 b4 5c c1          	vsubps ymm0,ymm9,ymm1
  a4580d:	62 d1 24 00 58 c8    	vaddps xmm1,xmm27,xmm8
  a45813:	62 f2 55 28 7f c8    	vpermt2ps ymm1,ymm5,ymm0
  a45819:	c5 fc 11 8c 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm1
  a45820:	00 00 
  a45822:	c5 8c 5c c7          	vsubps ymm0,ymm14,ymm7
  a45826:	c5 90 58 ca          	vaddps xmm1,xmm13,xmm2
  a4582a:	62 f2 55 28 7f c8    	vpermt2ps ymm1,ymm5,ymm0
  a45830:	c5 fc 11 8c 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm1
  a45837:	00 00 
  a45839:	48 81 c2 20 01 00 00 	add    rdx,0x120
  a45840:	48 39 d0             	cmp    rax,rdx
  a45843:	0f 85 f7 f7 ff ff    	jne    a45040 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x40>
  a45849:	c5 f8 77             	vzeroupper
  a4584c:	c3                   	ret
