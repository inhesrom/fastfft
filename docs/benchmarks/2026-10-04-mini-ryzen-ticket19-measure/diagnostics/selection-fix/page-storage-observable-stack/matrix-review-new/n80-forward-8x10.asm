
target/ticket19/selection-fix/page-storage-observable-stack/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b20000 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b20000:	55                   	push   rbp
  b20001:	48 89 e5             	mov    rbp,rsp
  b20004:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  b20008:	48 81 ec c0 08 00 00 	sub    rsp,0x8c0
  b2000f:	48 8d 84 24 80 00 00 	lea    rax,[rsp+0x80]
  b20016:	00 
  b20017:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  b2001c:	48 8d 44 24 18       	lea    rax,[rsp+0x18]
  b20021:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  b20025:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  b2002a:	c5 fc 10 57 50       	vmovups ymm2,YMMWORD PTR [rdi+0x50]
  b2002f:	c5 fc 10 5f 70       	vmovups ymm3,YMMWORD PTR [rdi+0x70]
  b20034:	c5 fc c6 e1 88       	vshufps ymm4,ymm0,ymm1,0x88
  b20039:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b2003f:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b20044:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b2004a:	c5 ec c6 cb 88       	vshufps ymm1,ymm2,ymm3,0x88
  b2004f:	c4 e3 fd 01 e9 d8    	vpermpd ymm5,ymm1,0xd8
  b20055:	c5 ec c6 cb dd       	vshufps ymm1,ymm2,ymm3,0xdd
  b2005a:	c4 e3 fd 01 d9 d8    	vpermpd ymm3,ymm1,0xd8
  b20060:	c5 fc 10 8f a0 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xa0]
  b20067:	00 
  b20068:	c5 fc 10 b7 c0 00 00 	vmovups ymm6,YMMWORD PTR [rdi+0xc0]
  b2006f:	00 
  b20070:	c5 f4 c6 d6 88       	vshufps ymm2,ymm1,ymm6,0x88
  b20075:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  b2007b:	c5 f4 c6 ce dd       	vshufps ymm1,ymm1,ymm6,0xdd
  b20080:	c4 e3 fd 01 f1 d8    	vpermpd ymm6,ymm1,0xd8
  b20086:	c5 fc 10 8f f0 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xf0]
  b2008d:	00 
  b2008e:	c5 fc 10 bf 10 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x110]
  b20095:	00 
  b20096:	c5 74 c6 c7 88       	vshufps ymm8,ymm1,ymm7,0x88
  b2009b:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b200a1:	c5 f4 c6 cf dd       	vshufps ymm1,ymm1,ymm7,0xdd
  b200a6:	c4 e3 fd 01 f9 d8    	vpermpd ymm7,ymm1,0xd8
  b200ac:	c5 fc 10 8f 40 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x140]
  b200b3:	00 
  b200b4:	c5 7c 10 8f 60 01 00 	vmovups ymm9,YMMWORD PTR [rdi+0x160]
  b200bb:	00 
  b200bc:	c4 41 74 c6 d1 88    	vshufps ymm10,ymm1,ymm9,0x88
  b200c2:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  b200c8:	c4 c1 74 c6 c9 dd    	vshufps ymm1,ymm1,ymm9,0xdd
  b200ce:	c4 63 fd 01 c9 d8    	vpermpd ymm9,ymm1,0xd8
  b200d4:	c5 fc 10 8f 90 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x190]
  b200db:	00 
  b200dc:	c5 7c 10 9f b0 01 00 	vmovups ymm11,YMMWORD PTR [rdi+0x1b0]
  b200e3:	00 
  b200e4:	c4 41 74 c6 e3 88    	vshufps ymm12,ymm1,ymm11,0x88
  b200ea:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b200f0:	c4 c1 74 c6 cb dd    	vshufps ymm1,ymm1,ymm11,0xdd
  b200f6:	c4 63 fd 01 d9 d8    	vpermpd ymm11,ymm1,0xd8
  b200fc:	c5 fc 10 8f e0 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x1e0]
  b20103:	00 
  b20104:	c5 7c 10 af 00 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x200]
  b2010b:	00 
  b2010c:	c4 41 74 c6 f5 88    	vshufps ymm14,ymm1,ymm13,0x88
  b20112:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  b20118:	c4 c1 74 c6 cd dd    	vshufps ymm1,ymm1,ymm13,0xdd
  b2011e:	c4 63 fd 01 e9 d8    	vpermpd ymm13,ymm1,0xd8
  b20124:	c5 fc 10 8f 30 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x230]
  b2012b:	00 
  b2012c:	c5 7c 10 bf 50 02 00 	vmovups ymm15,YMMWORD PTR [rdi+0x250]
  b20133:	00 
  b20134:	62 c1 74 28 c6 c7 88 	vshufps ymm16,ymm1,ymm15,0x88
  b2013b:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b20142:	c4 c1 74 c6 cf dd    	vshufps ymm1,ymm1,ymm15,0xdd
  b20148:	c4 63 fd 01 f9 d8    	vpermpd ymm15,ymm1,0xd8
  b2014e:	62 c1 5c 28 58 ca    	vaddps ymm17,ymm4,ymm10
  b20154:	62 c1 6c 28 58 d6    	vaddps ymm18,ymm2,ymm14
  b2015a:	62 a1 74 20 58 da    	vaddps ymm19,ymm17,ymm18
  b20160:	62 c1 54 28 58 e4    	vaddps ymm20,ymm5,ymm12
  b20166:	62 a1 3c 28 58 e8    	vaddps ymm21,ymm8,ymm16
  b2016c:	62 a1 5c 20 58 f5    	vaddps ymm22,ymm20,ymm21
  b20172:	62 a1 64 20 58 fe    	vaddps ymm23,ymm19,ymm22
  b20178:	62 41 7c 28 58 c1    	vaddps ymm24,ymm0,ymm9
  b2017e:	62 41 4c 28 58 cd    	vaddps ymm25,ymm6,ymm13
  b20184:	62 01 3c 20 58 d1    	vaddps ymm26,ymm24,ymm25
  b2018a:	62 41 64 28 58 db    	vaddps ymm27,ymm3,ymm11
  b20190:	62 41 44 28 58 e7    	vaddps ymm28,ymm7,ymm15
  b20196:	62 01 24 20 58 ec    	vaddps ymm29,ymm27,ymm28
  b2019c:	c4 c1 5c 5c e2       	vsubps ymm4,ymm4,ymm10
  b201a1:	62 91 2c 20 58 cd    	vaddps ymm1,ymm26,ymm29
  b201a7:	c4 41 4c 5c d5       	vsubps ymm10,ymm6,ymm13
  b201ac:	c5 2c 58 ec          	vaddps ymm13,ymm10,ymm4
  b201b0:	c4 c1 54 5c ec       	vsubps ymm5,ymm5,ymm12
  b201b5:	c4 c1 64 5c db       	vsubps ymm3,ymm3,ymm11
  b201ba:	c4 e2 7d 18 35 99 50 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff555099]        # 7525c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  b201c1:	55 ff 
  b201c3:	c5 54 58 db          	vaddps ymm11,ymm5,ymm3
  b201c7:	c5 24 59 de          	vmulps ymm11,ymm11,ymm6
  b201cb:	c4 c1 44 5c ff       	vsubps ymm7,ymm7,ymm15
  b201d0:	62 31 3c 28 5c c0    	vsubps ymm8,ymm8,ymm16
  b201d6:	c4 41 44 5c e0       	vsubps ymm12,ymm7,ymm8
  b201db:	c5 1c 59 e6          	vmulps ymm12,ymm12,ymm6
  b201df:	c4 41 24 58 fc       	vaddps ymm15,ymm11,ymm12
  b201e4:	c4 c1 7c 5c c1       	vsubps ymm0,ymm0,ymm9
  b201e9:	c4 41 14 58 cf       	vaddps ymm9,ymm13,ymm15
  b201ee:	c5 8c 5c d2          	vsubps ymm2,ymm14,ymm2
  b201f2:	c5 6c 58 f0          	vaddps ymm14,ymm2,ymm0
  b201f6:	c5 e4 5c dd          	vsubps ymm3,ymm3,ymm5
  b201fa:	c5 e4 59 de          	vmulps ymm3,ymm3,ymm6
  b201fe:	c5 bc 58 ef          	vaddps ymm5,ymm8,ymm7
  b20202:	c5 d4 59 ee          	vmulps ymm5,ymm5,ymm6
  b20206:	c5 e4 5c fd          	vsubps ymm7,ymm3,ymm5
  b2020a:	62 61 0c 28 58 f7    	vaddps ymm30,ymm14,ymm7
  b20210:	62 31 74 20 5c c2    	vsubps ymm8,ymm17,ymm18
  b20216:	62 81 24 20 5c c4    	vsubps ymm16,ymm27,ymm28
  b2021c:	62 a1 3c 28 58 c8    	vaddps ymm17,ymm8,ymm16
  b20222:	62 81 3c 20 5c d1    	vsubps ymm18,ymm24,ymm25
  b20228:	62 a1 54 20 5c e4    	vsubps ymm20,ymm21,ymm20
  b2022e:	62 a1 5c 20 58 ea    	vaddps ymm21,ymm20,ymm18
  b20234:	c4 c1 5c 5c e2       	vsubps ymm4,ymm4,ymm10
  b20239:	c5 e4 58 dd          	vaddps ymm3,ymm3,ymm5
  b2023d:	c5 dc 58 eb          	vaddps ymm5,ymm4,ymm3
  b20241:	c5 fc 5c c2          	vsubps ymm0,ymm0,ymm2
  b20245:	c4 c1 1c 5c d3       	vsubps ymm2,ymm12,ymm11
  b2024a:	62 61 7c 28 58 c2    	vaddps ymm24,ymm0,ymm2
  b20250:	62 31 64 20 5c d6    	vsubps ymm10,ymm19,ymm22
  b20256:	62 81 2c 20 5c dd    	vsubps ymm19,ymm26,ymm29
  b2025c:	c4 41 14 5c df       	vsubps ymm11,ymm13,ymm15
  b20261:	c5 8c 5c ff          	vsubps ymm7,ymm14,ymm7
  b20265:	62 31 3c 28 5c e0    	vsubps ymm12,ymm8,ymm16
  b2026b:	62 a1 6c 20 5c d4    	vsubps ymm18,ymm18,ymm20
  b20271:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  b20275:	62 e1 7c 28 5c e2    	vsubps ymm20,ymm0,ymm2
  b2027b:	62 53 45 20 18 c2 01 	vinsertf32x4 ymm8,ymm23,xmm10,0x1
  b20282:	62 d3 c5 20 23 c2 03 	vshuff64x2 ymm0,ymm23,ymm10,0x3
  b20289:	c4 43 35 18 fb 01    	vinsertf128 ymm15,ymm9,xmm11,0x1
  b2028f:	c4 c3 35 06 d3 31    	vperm2f128 ymm2,ymm9,ymm11,0x31
  b20295:	62 c3 75 20 18 c4 01 	vinsertf32x4 ymm16,ymm17,xmm12,0x1
  b2029c:	62 d3 f5 20 23 e4 03 	vshuff64x2 ymm4,ymm17,ymm12,0x3
  b202a3:	62 e3 55 28 18 cb 01 	vinsertf32x4 ymm17,ymm5,xmm3,0x1
  b202aa:	c4 e3 55 06 db 31    	vperm2f128 ymm3,ymm5,ymm3,0x31
  b202b0:	62 b1 bd 28 14 e8    	vunpcklpd ymm5,ymm8,ymm16
  b202b6:	62 31 85 28 14 c9    	vunpcklpd ymm9,ymm15,ymm17
  b202bc:	c5 7d 14 dc          	vunpcklpd ymm11,ymm0,ymm4
  b202c0:	62 e1 fd 28 15 f4    	vunpckhpd ymm22,ymm0,ymm4
  b202c6:	c5 ed 14 c3          	vunpcklpd ymm0,ymm2,ymm3
  b202ca:	c5 ed 15 d3          	vunpckhpd ymm2,ymm2,ymm3
  b202ce:	62 c1 54 28 c6 f9 dd 	vshufps ymm23,ymm5,ymm9,0xdd
  b202d5:	c5 24 c6 f0 88       	vshufps ymm14,ymm11,ymm0,0x88
  b202da:	c4 41 0c c6 d6 d8    	vshufps ymm10,ymm14,ymm14,0xd8
  b202e0:	c5 24 c6 e8 dd       	vshufps ymm13,ymm11,ymm0,0xdd
  b202e5:	c4 c1 14 c6 c5 d8    	vshufps ymm0,ymm13,ymm13,0xd8
  b202eb:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  b202f1:	62 71 4c 20 c6 e2 88 	vshufps ymm12,ymm22,ymm2,0x88
  b202f8:	c4 c1 1c c6 e4 d8    	vshufps ymm4,ymm12,ymm12,0xd8
  b202fe:	62 71 4c 20 c6 da dd 	vshufps ymm11,ymm22,ymm2,0xdd
  b20305:	c4 c1 24 c6 d3 d8    	vshufps ymm2,ymm11,ymm11,0xd8
  b2030b:	62 a3 75 28 18 f3 01 	vinsertf32x4 ymm22,ymm1,xmm19,0x1
  b20312:	62 b3 f5 28 23 cb 03 	vshuff64x2 ymm1,ymm1,ymm19,0x3
  b20319:	62 e3 0d 20 18 df 01 	vinsertf32x4 ymm19,ymm30,xmm7,0x1
  b20320:	62 f3 8d 20 23 df 03 	vshuff64x2 ymm3,ymm30,ymm7,0x3
  b20327:	62 23 55 20 18 ca 01 	vinsertf32x4 ymm25,ymm21,xmm18,0x1
  b2032e:	62 b3 d5 20 23 fa 03 	vshuff64x2 ymm7,ymm21,ymm18,0x3
  b20335:	62 a3 3d 20 18 d4 01 	vinsertf32x4 ymm18,ymm24,xmm20,0x1
  b2033c:	62 a3 bd 20 23 e4 03 	vshuff64x2 ymm20,ymm24,ymm20,0x3
  b20343:	62 81 cd 20 14 e9    	vunpcklpd ymm21,ymm22,ymm25
  b20349:	62 21 e5 20 14 c2    	vunpcklpd ymm24,ymm19,ymm18
  b2034f:	62 61 f5 28 14 d7    	vunpcklpd ymm26,ymm1,ymm7
  b20355:	c5 f5 15 ff          	vunpckhpd ymm7,ymm1,ymm7
  b20359:	62 b1 e5 28 14 cc    	vunpcklpd ymm1,ymm3,ymm20
  b2035f:	62 b1 e5 28 15 dc    	vunpckhpd ymm3,ymm3,ymm20
  b20365:	62 81 54 20 c6 e0 dd 	vshufps ymm20,ymm21,ymm24,0xdd
  b2036c:	62 61 2c 20 c6 d9 88 	vshufps ymm27,ymm26,ymm1,0x88
  b20373:	62 61 2c 20 c6 d1 dd 	vshufps ymm26,ymm26,ymm1,0xdd
  b2037a:	62 91 2c 20 c6 c2 d8 	vshufps ymm0,ymm26,ymm26,0xd8
  b20381:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  b20387:	62 61 44 28 c6 e3 88 	vshufps ymm28,ymm7,ymm3,0x88
  b2038e:	62 61 44 28 c6 eb dd 	vshufps ymm29,ymm7,ymm3,0xdd
  b20395:	62 91 54 20 c6 d8 88 	vshufps ymm3,ymm21,ymm24,0x88
  b2039c:	62 c1 54 28 c6 e9 88 	vshufps ymm21,ymm5,ymm9,0x88
  b203a3:	c5 fc 28 3d 75 69 55 	vmovaps ymm7,YMMWORD PTR [rip+0xffffffffff556975]        # 76d20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4300>
  b203aa:	ff 
  b203ab:	62 21 7c 28 28 c5    	vmovaps ymm24,ymm21
  b203b1:	62 62 45 28 7f c3    	vpermt2ps ymm24,ymm7,ymm3
  b203b7:	c5 7c 28 0d 21 74 55 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff557421]        # 777e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4dc0>
  b203be:	ff 
  b203bf:	62 e2 35 28 7f eb    	vpermt2ps ymm21,ymm9,ymm3
  b203c5:	62 91 1c 20 c6 ec d8 	vshufps ymm5,ymm28,ymm28,0xd8
  b203cc:	62 e1 7c 28 29 6c 24 	vmovaps YMMWORD PTR [rsp+0x80],ymm21
  b203d3:	04 
  b203d4:	62 91 14 20 c6 dd d8 	vshufps ymm3,ymm29,ymm29,0xd8
  b203db:	62 61 7c 28 29 44 24 	vmovaps YMMWORD PTR [rsp+0xa0],ymm24
  b203e2:	05 
  b203e3:	62 a1 7c 28 28 ef    	vmovaps ymm21,ymm23
  b203e9:	62 a2 45 28 7f ec    	vpermt2ps ymm21,ymm7,ymm20
  b203ef:	62 a2 35 28 7f fc    	vpermt2ps ymm23,ymm9,ymm20
  b203f5:	62 e1 7c 28 29 7c 24 	vmovaps YMMWORD PTR [rsp+0xc0],ymm23
  b203fc:	06 
  b203fd:	62 e1 7c 28 29 6c 24 	vmovaps YMMWORD PTR [rsp+0xe0],ymm21
  b20404:	07 
  b20405:	62 81 cd 20 15 e1    	vunpckhpd ymm20,ymm22,ymm25
  b2040b:	62 a1 e5 20 15 d2    	vunpckhpd ymm18,ymm19,ymm18
  b20411:	62 a1 5c 20 c6 da dd 	vshufps ymm19,ymm20,ymm18,0xdd
  b20418:	62 a1 5c 20 c6 d2 88 	vshufps ymm18,ymm20,ymm18,0x88
  b2041f:	62 31 bd 28 15 c0    	vunpckhpd ymm8,ymm8,ymm16
  b20425:	62 31 85 28 15 f9    	vunpckhpd ymm15,ymm15,ymm17
  b2042b:	62 c1 3c 28 c6 c7 dd 	vshufps ymm16,ymm8,ymm15,0xdd
  b20432:	c4 41 3c c6 c7 88    	vshufps ymm8,ymm8,ymm15,0x88
  b20438:	c4 41 7c 28 f8       	vmovaps ymm15,ymm8
  b2043d:	62 32 45 28 7f fa    	vpermt2ps ymm15,ymm7,ymm18
  b20443:	62 32 35 28 7f c2    	vpermt2ps ymm8,ymm9,ymm18
  b20449:	c5 7c 29 84 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm8
  b20450:	00 00 
  b20452:	c5 7c 29 bc 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm15
  b20459:	00 00 
  b2045b:	62 31 7c 28 28 c0    	vmovaps ymm8,ymm16
  b20461:	62 32 45 28 7f c3    	vpermt2ps ymm8,ymm7,ymm19
  b20467:	62 a2 35 28 7f c3    	vpermt2ps ymm16,ymm9,ymm19
  b2046d:	62 e1 7c 28 29 44 24 	vmovaps YMMWORD PTR [rsp+0x140],ymm16
  b20474:	0a 
  b20475:	c5 7c 29 84 24 60 01 	vmovaps YMMWORD PTR [rsp+0x160],ymm8
  b2047c:	00 00 
  b2047e:	c5 7c 28 05 3a 84 55 	vmovaps ymm8,YMMWORD PTR [rip+0xffffffffff55843a]        # 788c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5ea0>
  b20485:	ff 
  b20486:	62 12 3d 28 16 c3    	vpermps ymm8,ymm8,ymm27
  b2048c:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  b20492:	c4 42 7d 35 d2       	vpmovzxdq ymm10,xmm10
  b20497:	c4 43 2d 02 f8 aa    	vpblendd ymm15,ymm10,ymm8,0xaa
  b2049d:	62 12 35 28 7f f3    	vpermt2ps ymm14,ymm9,ymm27
  b204a3:	c5 7c 29 b4 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm14
  b204aa:	00 00 
  b204ac:	c5 7d 7f bc 24 a0 01 	vmovdqa YMMWORD PTR [rsp+0x1a0],ymm15
  b204b3:	00 00 
  b204b5:	c4 41 7c 28 f5       	vmovaps ymm14,ymm13
  b204ba:	62 12 45 28 7f f2    	vpermt2ps ymm14,ymm7,ymm26
  b204c0:	62 12 35 28 7f ea    	vpermt2ps ymm13,ymm9,ymm26
  b204c6:	c5 7c 29 ac 24 c0 01 	vmovaps YMMWORD PTR [rsp+0x1c0],ymm13
  b204cd:	00 00 
  b204cf:	c5 7c 29 b4 24 e0 01 	vmovaps YMMWORD PTR [rsp+0x1e0],ymm14
  b204d6:	00 00 
  b204d8:	c4 41 7c 28 ec       	vmovaps ymm13,ymm12
  b204dd:	62 12 45 28 7f ec    	vpermt2ps ymm13,ymm7,ymm28
  b204e3:	62 12 35 28 7f e4    	vpermt2ps ymm12,ymm9,ymm28
  b204e9:	c5 7c 29 a4 24 00 02 	vmovaps YMMWORD PTR [rsp+0x200],ymm12
  b204f0:	00 00 
  b204f2:	c5 7c 29 ac 24 20 02 	vmovaps YMMWORD PTR [rsp+0x220],ymm13
  b204f9:	00 00 
  b204fb:	c4 41 7c 28 e3       	vmovaps ymm12,ymm11
  b20500:	62 12 45 28 7f e5    	vpermt2ps ymm12,ymm7,ymm29
  b20506:	62 12 35 28 7f dd    	vpermt2ps ymm11,ymm9,ymm29
  b2050c:	c5 7c 29 9c 24 40 02 	vmovaps YMMWORD PTR [rsp+0x240],ymm11
  b20513:	00 00 
  b20515:	c5 7c 29 a4 24 60 02 	vmovaps YMMWORD PTR [rsp+0x260],ymm12
  b2051c:	00 00 
  b2051e:	c5 78 10 5f 40       	vmovups xmm11,XMMWORD PTR [rdi+0x40]
  b20523:	c5 78 10 a7 90 00 00 	vmovups xmm12,XMMWORD PTR [rdi+0x90]
  b2052a:	00 
  b2052b:	c5 78 10 af e0 00 00 	vmovups xmm13,XMMWORD PTR [rdi+0xe0]
  b20532:	00 
  b20533:	c5 78 10 b7 30 01 00 	vmovups xmm14,XMMWORD PTR [rdi+0x130]
  b2053a:	00 
  b2053b:	c4 43 21 21 fb 9c    	vinsertps xmm15,xmm11,xmm11,0x9c
  b20541:	62 a1 7c 00 57 c0    	vxorps xmm16,xmm16,xmm16
  b20547:	62 31 24 08 c6 d8 dd 	vshufps xmm11,xmm11,xmm16,0xdd
  b2054e:	62 c3 1d 08 21 cc 9c 	vinsertps xmm17,xmm12,xmm12,0x9c
  b20555:	62 31 1c 08 c6 e0 dd 	vshufps xmm12,xmm12,xmm16,0xdd
  b2055c:	62 c3 15 08 21 d5 9c 	vinsertps xmm18,xmm13,xmm13,0x9c
  b20563:	62 31 14 08 c6 e8 dd 	vshufps xmm13,xmm13,xmm16,0xdd
  b2056a:	62 c3 0d 08 21 de 9c 	vinsertps xmm19,xmm14,xmm14,0x9c
  b20571:	62 31 0c 08 c6 f0 dd 	vshufps xmm14,xmm14,xmm16,0xdd
  b20578:	62 e1 7c 08 10 67 18 	vmovups xmm20,XMMWORD PTR [rdi+0x180]
  b2057f:	62 a3 5d 00 21 ec 9c 	vinsertps xmm21,xmm20,xmm20,0x9c
  b20586:	62 a1 5c 00 c6 e0 dd 	vshufps xmm20,xmm20,xmm16,0xdd
  b2058d:	62 e1 7c 08 10 77 1d 	vmovups xmm22,XMMWORD PTR [rdi+0x1d0]
  b20594:	62 a3 4d 00 21 fe 9c 	vinsertps xmm23,xmm22,xmm22,0x9c
  b2059b:	62 a1 4c 00 c6 f0 dd 	vshufps xmm22,xmm22,xmm16,0xdd
  b205a2:	62 61 7c 08 10 47 22 	vmovups xmm24,XMMWORD PTR [rdi+0x220]
  b205a9:	62 03 3d 00 21 c8 9c 	vinsertps xmm25,xmm24,xmm24,0x9c
  b205b0:	62 21 3c 00 c6 c0 dd 	vshufps xmm24,xmm24,xmm16,0xdd
  b205b7:	62 61 7c 08 10 57 27 	vmovups xmm26,XMMWORD PTR [rdi+0x270]
  b205be:	62 03 2d 00 21 da 9c 	vinsertps xmm27,xmm26,xmm26,0x9c
  b205c5:	62 a1 2c 00 c6 c0 dd 	vshufps xmm16,xmm26,xmm16,0xdd
  b205cc:	62 21 04 28 58 d5    	vaddps ymm26,ymm15,ymm21
  b205d2:	62 01 6c 20 58 e1    	vaddps ymm28,ymm18,ymm25
  b205d8:	62 31 04 28 5c fd    	vsubps ymm15,ymm15,ymm21
  b205de:	62 81 14 28 58 e8    	vaddps ymm21,ymm13,ymm24
  b205e4:	62 11 14 28 5c e8    	vsubps ymm13,ymm13,ymm24
  b205ea:	62 21 74 20 58 c7    	vaddps ymm24,ymm17,ymm23
  b205f0:	62 a1 74 20 5c cf    	vsubps ymm17,ymm17,ymm23
  b205f6:	62 a1 1c 28 58 fe    	vaddps ymm23,ymm12,ymm22
  b205fc:	62 31 1c 28 5c e6    	vsubps ymm12,ymm12,ymm22
  b20602:	62 a1 0c 28 58 f0    	vaddps ymm22,ymm14,ymm16
  b20608:	62 31 0c 28 5c f0    	vsubps ymm14,ymm14,ymm16
  b2060e:	62 81 64 20 58 c3    	vaddps ymm16,ymm19,ymm27
  b20614:	62 81 64 20 5c db    	vsubps ymm19,ymm19,ymm27
  b2061a:	62 21 24 28 58 dc    	vaddps ymm27,ymm11,ymm20
  b20620:	62 31 24 28 5c dc    	vsubps ymm11,ymm11,ymm20
  b20626:	62 81 2c 20 58 e4    	vaddps ymm20,ymm26,ymm28
  b2062c:	62 a1 34 20 5c d2    	vsubps ymm18,ymm25,ymm18
  b20632:	62 41 74 20 58 cc    	vaddps ymm25,ymm17,ymm12
  b20638:	62 31 1c 28 5c e1    	vsubps ymm12,ymm12,ymm17
  b2063e:	62 a1 0c 28 5c cb    	vsubps ymm17,ymm14,ymm19
  b20644:	62 51 64 20 58 f6    	vaddps ymm14,ymm19,ymm14
  b2064a:	62 a1 3c 20 58 d8    	vaddps ymm19,ymm24,ymm16
  b20650:	62 61 34 20 59 ce    	vmulps ymm25,ymm25,ymm6
  b20656:	62 e1 74 20 59 ce    	vmulps ymm17,ymm17,ymm6
  b2065c:	c5 1c 59 e6          	vmulps ymm12,ymm12,ymm6
  b20660:	c5 8c 59 f6          	vmulps ymm6,ymm14,ymm6
  b20664:	62 31 5c 20 58 f3    	vaddps ymm14,ymm20,ymm19
  b2066a:	62 01 2c 20 5c d4    	vsubps ymm26,ymm26,ymm28
  b20670:	62 21 44 20 58 e6    	vaddps ymm28,ymm23,ymm22
  b20676:	62 a1 44 20 5c f6    	vsubps ymm22,ymm23,ymm22
  b2067c:	62 a1 24 20 58 fd    	vaddps ymm23,ymm27,ymm21
  b20682:	62 a1 24 20 5c ed    	vsubps ymm21,ymm27,ymm21
  b20688:	62 01 44 20 58 dc    	vaddps ymm27,ymm23,ymm28
  b2068e:	62 81 7c 20 5c c0    	vsubps ymm16,ymm16,ymm24
  b20694:	62 41 04 28 58 c5    	vaddps ymm24,ymm15,ymm13
  b2069a:	c4 41 04 5c ed       	vsubps ymm13,ymm15,ymm13
  b2069f:	c5 1c 5c fe          	vsubps ymm15,ymm12,ymm6
  b206a3:	c5 9c 58 f6          	vaddps ymm6,ymm12,ymm6
  b206a7:	62 51 6c 20 58 e3    	vaddps ymm12,ymm18,ymm11
  b206ad:	62 a1 24 28 5c d2    	vsubps ymm18,ymm11,ymm18
  b206b3:	62 31 34 20 58 d9    	vaddps ymm11,ymm25,ymm17
  b206b9:	62 81 74 20 5c c9    	vsubps ymm17,ymm17,ymm25
  b206bf:	62 41 3c 20 58 cb    	vaddps ymm25,ymm24,ymm11
  b206c5:	62 a1 5c 00 5c db    	vsubps xmm19,xmm20,xmm19
  b206cb:	62 c1 1c 28 58 e7    	vaddps ymm20,ymm12,ymm15
  b206d1:	62 33 0d 28 18 f3 01 	vinsertf32x4 ymm14,ymm14,xmm19,0x1
  b206d8:	62 a1 2c 20 58 de    	vaddps ymm19,ymm26,ymm22
  b206de:	62 51 3c 00 5c db    	vsubps xmm11,xmm24,xmm11
  b206e4:	62 21 7c 20 58 c5    	vaddps ymm24,ymm16,ymm21
  b206ea:	62 53 35 20 18 db 01 	vinsertf32x4 ymm11,ymm25,xmm11,0x1
  b206f1:	62 61 14 28 58 ce    	vaddps ymm25,ymm13,ymm6
  b206f7:	62 a1 2c 00 5c f6    	vsubps xmm22,xmm26,xmm22
  b206fd:	62 21 6c 20 58 d1    	vaddps ymm26,ymm18,ymm17
  b20703:	62 a3 65 20 18 de 01 	vinsertf32x4 ymm19,ymm19,xmm22,0x1
  b2070a:	62 31 8d 28 14 f3    	vunpcklpd ymm14,ymm14,ymm19
  b20710:	c5 90 5c f6          	vsubps xmm6,xmm13,xmm6
  b20714:	62 f3 35 20 18 f6 01 	vinsertf32x4 ymm6,ymm25,xmm6,0x1
  b2071b:	c5 a5 14 f6          	vunpcklpd ymm6,ymm11,ymm6
  b2071f:	c5 0c c6 ee dd       	vshufps ymm13,ymm14,ymm6,0xdd
  b20724:	c4 41 14 c6 dd d8    	vshufps ymm11,ymm13,ymm13,0xd8
  b2072a:	62 81 44 00 5c dc    	vsubps xmm19,xmm23,xmm28
  b20730:	62 a3 25 20 18 db 01 	vinsertf32x4 ymm19,ymm27,xmm19,0x1
  b20737:	c4 41 18 5c e7       	vsubps xmm12,xmm12,xmm15
  b2073c:	62 53 5d 20 18 e4 01 	vinsertf32x4 ymm12,ymm20,xmm12,0x1
  b20743:	62 31 54 00 5c f8    	vsubps xmm15,xmm21,xmm16
  b20749:	62 53 3d 20 18 ff 01 	vinsertf32x4 ymm15,ymm24,xmm15,0x1
  b20750:	62 51 e5 20 14 ff    	vunpcklpd ymm15,ymm19,ymm15
  b20756:	62 a1 6c 00 5c c1    	vsubps xmm16,xmm18,xmm17
  b2075c:	62 a3 2d 20 18 c0 01 	vinsertf32x4 ymm16,ymm26,xmm16,0x1
  b20763:	62 a1 9d 28 14 c0    	vunpcklpd ymm16,ymm12,ymm16
  b20769:	62 a1 04 28 c6 c8 dd 	vshufps ymm17,ymm15,ymm16,0xdd
  b20770:	62 31 74 20 c6 e1 d8 	vshufps ymm12,ymm17,ymm17,0xd8
  b20777:	62 31 04 28 c6 f8 88 	vshufps ymm15,ymm15,ymm16,0x88
  b2077e:	62 41 04 28 c6 c7 d8 	vshufps ymm24,ymm15,ymm15,0xd8
  b20785:	c5 8c c6 f6 88       	vshufps ymm6,ymm14,ymm6,0x88
  b2078a:	62 e1 4c 28 c6 fe d8 	vshufps ymm23,ymm6,ymm6,0xd8
  b20791:	c5 7c 28 f6          	vmovaps ymm14,ymm6
  b20795:	62 52 45 28 7f f7    	vpermt2ps ymm14,ymm7,ymm15
  b2079b:	62 d2 35 28 7f f7    	vpermt2ps ymm6,ymm9,ymm15
  b207a1:	c5 fc 29 b4 24 80 02 	vmovaps YMMWORD PTR [rsp+0x280],ymm6
  b207a8:	00 00 
  b207aa:	c5 7c 29 b4 24 a0 02 	vmovaps YMMWORD PTR [rsp+0x2a0],ymm14
  b207b1:	00 00 
  b207b3:	62 b2 15 28 77 f9    	vpermi2ps ymm7,ymm13,ymm17
  b207b9:	62 32 35 28 7f e9    	vpermt2ps ymm13,ymm9,ymm17
  b207bf:	c5 7c 29 ac 24 c0 02 	vmovaps YMMWORD PTR [rsp+0x2c0],ymm13
  b207c6:	00 00 
  b207c8:	c5 fc 29 bc 24 e0 02 	vmovaps YMMWORD PTR [rsp+0x2e0],ymm7
  b207cf:	00 00 
  b207d1:	c5 fc 28 bc 24 80 00 	vmovaps ymm7,YMMWORD PTR [rsp+0x80]
  b207d8:	00 00 
  b207da:	c5 7c 28 8c 24 a0 00 	vmovaps ymm9,YMMWORD PTR [rsp+0xa0]
  b207e1:	00 00 
  b207e3:	c5 7c 28 b4 24 c0 00 	vmovaps ymm14,YMMWORD PTR [rsp+0xc0]
  b207ea:	00 00 
  b207ec:	c5 7c 28 bc 24 e0 00 	vmovaps ymm15,YMMWORD PTR [rsp+0xe0]
  b207f3:	00 00 
  b207f5:	c4 c1 44 c6 f1 88    	vshufps ymm6,ymm7,ymm9,0x88
  b207fb:	c4 e3 fd 01 c6 d8    	vpermpd ymm0,ymm6,0xd8
  b20801:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  b20807:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  b2080d:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  b20813:	c4 41 0c c6 cf 88    	vshufps ymm9,ymm14,ymm15,0x88
  b20819:	c4 43 fd 01 e9 d8    	vpermpd ymm13,ymm9,0xd8
  b2081f:	c4 41 0c c6 cf dd    	vshufps ymm9,ymm14,ymm15,0xdd
  b20825:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  b2082b:	c5 7c 28 b4 24 00 01 	vmovaps ymm14,YMMWORD PTR [rsp+0x100]
  b20832:	00 00 
  b20834:	c5 7c 28 bc 24 20 01 	vmovaps ymm15,YMMWORD PTR [rsp+0x120]
  b2083b:	00 00 
  b2083d:	62 c1 0c 28 c6 c7 88 	vshufps ymm16,ymm14,ymm15,0x88
  b20844:	62 23 fd 28 01 e0 d8 	vpermpd ymm28,ymm16,0xd8
  b2084b:	c4 41 0c c6 f7 dd    	vshufps ymm14,ymm14,ymm15,0xdd
  b20851:	62 c3 fd 28 01 e6 d8 	vpermpd ymm20,ymm14,0xd8
  b20858:	c5 7c 10 7a 40       	vmovups ymm15,YMMWORD PTR [rdx+0x40]
  b2085d:	c5 7c 10 72 60       	vmovups ymm14,YMMWORD PTR [rdx+0x60]
  b20862:	62 61 7c 28 10 6a 04 	vmovups ymm29,YMMWORD PTR [rdx+0x80]
  b20869:	62 61 7c 28 10 72 05 	vmovups ymm30,YMMWORD PTR [rdx+0xa0]
  b20870:	62 e1 7c 28 28 44 24 	vmovaps ymm16,YMMWORD PTR [rsp+0x140]
  b20877:	0a 
  b20878:	62 e1 7c 28 28 4c 24 	vmovaps ymm17,YMMWORD PTR [rsp+0x160]
  b2087f:	0b 
  b20880:	62 a1 7c 20 c6 d1 88 	vshufps ymm18,ymm16,ymm17,0x88
  b20887:	62 a3 fd 28 01 ea d8 	vpermpd ymm21,ymm18,0xd8
  b2088e:	62 a1 7c 20 c6 c1 dd 	vshufps ymm16,ymm16,ymm17,0xdd
  b20895:	62 a3 fd 28 01 d8 d8 	vpermpd ymm19,ymm16,0xd8
  b2089c:	62 61 7c 28 10 4a 06 	vmovups ymm25,YMMWORD PTR [rdx+0xc0]
  b208a3:	62 e1 7c 28 10 72 07 	vmovups ymm22,YMMWORD PTR [rdx+0xe0]
  b208aa:	62 e1 7c 28 28 44 24 	vmovaps ymm16,YMMWORD PTR [rsp+0x180]
  b208b1:	0c 
  b208b2:	62 51 7c 20 c6 d2 88 	vshufps ymm10,ymm16,ymm10,0x88
  b208b9:	62 c3 fd 28 01 ca d8 	vpermpd ymm17,ymm10,0xd8
  b208c0:	62 51 7c 20 c6 c0 dd 	vshufps ymm8,ymm16,ymm8,0xdd
  b208c7:	c4 43 fd 01 d0 d8    	vpermpd ymm10,ymm8,0xd8
  b208cd:	62 e1 7c 28 10 42 08 	vmovups ymm16,YMMWORD PTR [rdx+0x100]
  b208d4:	62 e1 7c 28 10 52 09 	vmovups ymm18,YMMWORD PTR [rdx+0x120]
  b208db:	62 31 74 20 59 c0    	vmulps ymm8,ymm17,ymm16
  b208e1:	62 32 2d 28 bc c2    	vfnmadd231ps ymm8,ymm10,ymm18
  b208e7:	62 31 2c 28 59 d0    	vmulps ymm10,ymm10,ymm16
  b208ed:	62 e1 7c 28 10 42 0c 	vmovups ymm16,YMMWORD PTR [rdx+0x180]
  b208f4:	62 32 75 20 b8 d2    	vfmadd231ps ymm10,ymm17,ymm18
  b208fa:	62 e1 7c 28 10 52 0d 	vmovups ymm18,YMMWORD PTR [rdx+0x1a0]
  b20901:	62 a1 5c 28 59 c8    	vmulps ymm17,ymm4,ymm16
  b20907:	62 a2 55 28 bc ca    	vfnmadd231ps ymm17,ymm5,ymm18
  b2090d:	62 a1 54 28 59 c0    	vmulps ymm16,ymm5,ymm16
  b20913:	62 61 7c 28 10 52 0a 	vmovups ymm26,YMMWORD PTR [rdx+0x140]
  b2091a:	62 a2 5d 28 b8 c2    	vfmadd231ps ymm16,ymm4,ymm18
  b20920:	62 61 7c 28 10 5a 0b 	vmovups ymm27,YMMWORD PTR [rdx+0x160]
  b20927:	62 81 1c 20 59 d5    	vmulps ymm18,ymm28,ymm29
  b2092d:	62 82 5d 20 bc d6    	vfnmadd231ps ymm18,ymm20,ymm30
  b20933:	62 81 5c 20 59 e5    	vmulps ymm20,ymm20,ymm29
  b20939:	c5 fc 10 a2 00 02 00 	vmovups ymm4,YMMWORD PTR [rdx+0x200]
  b20940:	00 
  b20941:	62 82 1d 20 b8 e6    	vfmadd231ps ymm20,ymm28,ymm30
  b20947:	c5 fc 10 aa 20 02 00 	vmovups ymm5,YMMWORD PTR [rdx+0x220]
  b2094e:	00 
  b2094f:	62 61 44 20 59 e4    	vmulps ymm28,ymm23,ymm4
  b20955:	62 62 3d 20 bc e5    	vfnmadd231ps ymm28,ymm24,ymm5
  b2095b:	62 61 3c 20 59 c4    	vmulps ymm24,ymm24,ymm4
  b20961:	c5 fc 10 a2 c0 01 00 	vmovups ymm4,YMMWORD PTR [rdx+0x1c0]
  b20968:	00 
  b20969:	62 62 45 20 b8 c5    	vfmadd231ps ymm24,ymm23,ymm5
  b2096f:	c5 fc 10 aa e0 01 00 	vmovups ymm5,YMMWORD PTR [rdx+0x1e0]
  b20976:	00 
  b20977:	62 e1 64 28 59 fc    	vmulps ymm23,ymm3,ymm4
  b2097d:	62 e2 6d 28 b8 fd    	vfmadd231ps ymm23,ymm2,ymm5
  b20983:	62 61 6c 28 59 fc    	vmulps ymm31,ymm2,ymm4
  b20989:	62 01 6c 20 5c ec    	vsubps ymm29,ymm18,ymm28
  b2098f:	62 62 65 28 bc fd    	vfnmadd231ps ymm31,ymm3,ymm5
  b20995:	c4 e2 7d 18 2d 7a 4c 	vbroadcastss ymm5,DWORD PTR [rip+0xffffffffff554c7a]        # 75618 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bf8>
  b2099c:	55 ff 
  b2099e:	62 01 64 20 59 f1    	vmulps ymm30,ymm19,ymm25
  b209a4:	62 22 55 20 b8 f6    	vfmadd231ps ymm30,ymm21,ymm22
  b209aa:	62 01 54 20 59 c9    	vmulps ymm25,ymm21,ymm25
  b209b0:	c5 fc 10 92 60 02 00 	vmovups ymm2,YMMWORD PTR [rdx+0x260]
  b209b7:	00 
  b209b8:	62 22 65 20 bc ce    	vfnmadd231ps ymm25,ymm19,ymm22
  b209be:	c5 fc 10 9a 40 02 00 	vmovups ymm3,YMMWORD PTR [rdx+0x240]
  b209c5:	00 
  b209c6:	62 e1 1c 28 59 f3    	vmulps ymm22,ymm12,ymm3
  b209cc:	62 e2 25 28 b8 f2    	vfmadd231ps ymm22,ymm11,ymm2
  b209d2:	c5 a4 59 c3          	vmulps ymm0,ymm11,ymm3
  b209d6:	62 a1 3c 28 5c e9    	vsubps ymm21,ymm8,ymm17
  b209dc:	c4 e2 1d bc c2       	vfnmadd231ps ymm0,ymm12,ymm2
  b209e1:	62 f1 54 20 59 e5    	vmulps ymm4,ymm21,ymm5
  b209e7:	c4 c1 34 59 cf       	vmulps ymm1,ymm9,ymm15
  b209ec:	c4 c2 15 b8 ce       	vfmadd231ps ymm1,ymm13,ymm14
  b209f1:	c4 41 14 59 ef       	vmulps ymm13,ymm13,ymm15
  b209f6:	c4 62 7d 18 1d 61 48 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff554861]        # 75260 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2840>
  b209fd:	55 ff 
  b209ff:	62 d2 15 20 b8 e3    	vfmadd231ps ymm4,ymm29,ymm11
  b20a05:	c4 42 35 bc ee       	vfnmadd231ps ymm13,ymm9,ymm14
  b20a0a:	62 b1 2c 28 58 f0    	vaddps ymm6,ymm10,ymm16
  b20a10:	c5 7c 28 64 24 40    	vmovaps ymm12,YMMWORD PTR [rsp+0x40]
  b20a16:	62 91 1c 28 59 da    	vmulps ymm3,ymm12,ymm26
  b20a1c:	c5 fc 28 54 24 60    	vmovaps ymm2,YMMWORD PTR [rsp+0x60]
  b20a22:	62 92 6d 28 b8 db    	vfmadd231ps ymm3,ymm2,ymm27
  b20a28:	62 01 6c 28 59 d2    	vmulps ymm26,ymm2,ymm26
  b20a2e:	62 11 5c 20 58 c8    	vaddps ymm9,ymm20,ymm24
  b20a34:	62 02 1d 28 bc d3    	vfnmadd231ps ymm26,ymm12,ymm27
  b20a3a:	62 e2 7d 28 18 1d 64 	vbroadcastss ymm19,DWORD PTR [rip+0xffffffffff554b64]        # 755a8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b88>
  b20a41:	4b 55 ff 
  b20a44:	62 31 7c 28 28 fb    	vmovaps ymm15,ymm19
  b20a4a:	c4 62 35 a8 ff       	vfmadd213ps ymm15,ymm9,ymm7
  b20a4f:	62 21 3c 28 58 d9    	vaddps ymm27,ymm8,ymm17
  b20a55:	62 e2 7d 28 18 0d a5 	vbroadcastss ymm17,DWORD PTR [rip+0xffffffffff554aa5]        # 75504 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2ae4>
  b20a5c:	4a 55 ff 
  b20a5f:	62 32 4d 28 bc f9    	vfnmadd231ps ymm15,ymm6,ymm17
  b20a65:	62 11 6c 20 58 c4    	vaddps ymm8,ymm18,ymm28
  b20a6b:	62 71 4c 20 58 e1    	vaddps ymm12,ymm22,ymm1
  b20a71:	62 01 5c 20 5c c0    	vsubps ymm24,ymm20,ymm24
  b20a77:	62 11 44 20 58 f6    	vaddps ymm14,ymm23,ymm30
  b20a7d:	62 21 2c 28 5c e0    	vsubps ymm28,ymm10,ymm16
  b20a83:	c4 c1 7c 5c d5       	vsubps ymm2,ymm0,ymm13
  b20a88:	c5 14 58 d0          	vaddps ymm10,ymm13,ymm0
  b20a8c:	62 91 04 20 5c c1    	vsubps ymm0,ymm31,ymm25
  b20a92:	62 11 04 20 58 e9    	vaddps ymm13,ymm31,ymm25
  b20a98:	62 a1 7c 28 28 c3    	vmovaps ymm16,ymm19
  b20a9e:	62 e2 0d 28 a8 c3    	vfmadd213ps ymm16,ymm14,ymm3
  b20aa4:	62 a2 1d 28 bc c1    	vfnmadd231ps ymm16,ymm12,ymm17
  b20aaa:	62 81 44 20 5c fe    	vsubps ymm23,ymm23,ymm30
  b20ab0:	62 e1 6c 28 59 d5    	vmulps ymm18,ymm2,ymm5
  b20ab6:	62 c2 7d 28 b8 d3    	vfmadd231ps ymm18,ymm0,ymm11
  b20abc:	62 f1 4c 20 5c c9    	vsubps ymm1,ymm22,ymm1
  b20ac2:	62 a1 7c 28 28 e3    	vmovaps ymm20,ymm19
  b20ac8:	62 61 7c 28 28 74 24 	vmovaps ymm30,YMMWORD PTR [rsp+0x20]
  b20acf:	01 
  b20ad0:	62 82 3d 28 a8 e6    	vfmadd213ps ymm20,ymm8,ymm30
  b20ad6:	62 a2 25 20 bc e1    	vfnmadd231ps ymm20,ymm27,ymm17
  b20adc:	62 e1 14 20 59 f5    	vmulps ymm22,ymm29,ymm5
  b20ae2:	62 a2 25 28 bc f5    	vfnmadd231ps ymm22,ymm11,ymm21
  b20ae8:	62 e1 1c 20 59 ed    	vmulps ymm21,ymm28,ymm5
  b20aee:	62 c2 3d 20 b8 eb    	vfmadd231ps ymm21,ymm24,ymm11
  b20af4:	c5 fc 59 c5          	vmulps ymm0,ymm0,ymm5
  b20af8:	c4 e2 25 bc c2       	vfnmadd231ps ymm0,ymm11,ymm2
  b20afd:	62 b1 7c 28 28 d3    	vmovaps ymm2,ymm19
  b20b03:	62 92 15 28 a8 d2    	vfmadd213ps ymm2,ymm13,ymm26
  b20b09:	62 b2 2d 28 bc d1    	vfnmadd231ps ymm2,ymm10,ymm17
  b20b0f:	62 61 3c 20 59 c5    	vmulps ymm24,ymm24,ymm5
  b20b15:	62 02 25 28 bc c4    	vfnmadd231ps ymm24,ymm11,ymm28
  b20b1b:	62 61 74 28 59 cd    	vmulps ymm25,ymm1,ymm5
  b20b21:	62 42 45 20 b8 cb    	vfmadd231ps ymm25,ymm23,ymm11
  b20b27:	62 f1 44 20 59 ed    	vmulps ymm5,ymm23,ymm5
  b20b2d:	62 a1 7c 28 28 f9    	vmovaps ymm23,ymm17
  b20b33:	62 e2 35 28 ac ff    	vfnmadd213ps ymm23,ymm9,ymm7
  b20b39:	62 a2 4d 28 b8 fb    	vfmadd231ps ymm23,ymm6,ymm19
  b20b3f:	c4 c2 75 bc eb       	vfnmadd231ps ymm5,ymm1,ymm11
  b20b44:	62 b1 7c 28 28 c9    	vmovaps ymm1,ymm17
  b20b4a:	c4 e2 0d ac cb       	vfnmadd213ps ymm1,ymm14,ymm3
  b20b4f:	62 b2 1d 28 b8 cb    	vfmadd231ps ymm1,ymm12,ymm19
  b20b55:	62 31 7c 28 28 d9    	vmovaps ymm11,ymm17
  b20b5b:	62 12 3d 28 ac de    	vfnmadd213ps ymm11,ymm8,ymm30
  b20b61:	62 32 25 20 b8 db    	vfmadd231ps ymm11,ymm27,ymm19
  b20b67:	62 82 15 28 ac ca    	vfnmadd213ps ymm17,ymm13,ymm26
  b20b6d:	62 a2 2d 28 b8 cb    	vfmadd231ps ymm17,ymm10,ymm19
  b20b73:	62 a1 4c 20 58 df    	vaddps ymm19,ymm22,ymm23
  b20b79:	62 a1 44 20 5c f6    	vsubps ymm22,ymm23,ymm22
  b20b7f:	62 e1 74 28 58 f8    	vaddps ymm23,ymm1,ymm0
  b20b85:	62 61 74 28 5c e0    	vsubps ymm28,ymm1,ymm0
  b20b8b:	62 01 24 28 5c e8    	vsubps ymm29,ymm11,ymm24
  b20b91:	62 11 24 28 58 d8    	vaddps ymm11,ymm11,ymm24
  b20b97:	62 61 74 20 5c c5    	vsubps ymm24,ymm17,ymm5
  b20b9d:	62 e1 74 20 58 cd    	vaddps ymm17,ymm17,ymm5
  b20ba3:	c5 84 58 cc          	vaddps ymm1,ymm15,ymm4
  b20ba7:	c5 04 5c fc          	vsubps ymm15,ymm15,ymm4
  b20bab:	62 b1 7c 20 58 ea    	vaddps ymm5,ymm16,ymm18
  b20bb1:	62 a1 7c 20 5c c2    	vsubps ymm16,ymm16,ymm18
  b20bb7:	62 a1 5c 20 5c d5    	vsubps ymm18,ymm20,ymm21
  b20bbd:	62 a1 5c 20 58 e5    	vaddps ymm20,ymm20,ymm21
  b20bc3:	62 81 6c 28 5c e9    	vsubps ymm21,ymm2,ymm25
  b20bc9:	62 01 6c 28 58 c9    	vaddps ymm25,ymm2,ymm25
  b20bcf:	c5 b4 58 c7          	vaddps ymm0,ymm9,ymm7
  b20bd3:	c5 cc 58 f0          	vaddps ymm6,ymm6,ymm0
  b20bd7:	c5 8c 58 c3          	vaddps ymm0,ymm14,ymm3
  b20bdb:	c5 1c 58 e0          	vaddps ymm12,ymm12,ymm0
  b20bdf:	62 d1 0c 20 58 c0    	vaddps ymm0,ymm30,ymm8
  b20be5:	62 11 7c 28 58 f3    	vaddps ymm14,ymm0,ymm27
  b20beb:	c5 f4 5c e5          	vsubps ymm4,ymm1,ymm5
  b20bef:	62 d1 2c 20 58 d5    	vaddps ymm2,ymm26,ymm13
  b20bf5:	62 b1 6c 20 5c c5    	vsubps ymm0,ymm18,ymm21
  b20bfb:	c5 2c 58 ea          	vaddps ymm13,ymm10,ymm2
  b20bff:	62 31 64 20 58 cf    	vaddps ymm9,ymm19,ymm23
  b20c05:	62 61 74 28 58 d5    	vaddps ymm26,ymm1,ymm5
  b20c0b:	62 91 14 20 58 c8    	vaddps ymm1,ymm29,ymm24
  b20c11:	62 b1 6c 20 58 dd    	vaddps ymm3,ymm18,ymm21
  b20c17:	62 81 4c 20 5c d4    	vsubps ymm18,ymm22,ymm28
  b20c1d:	62 a1 64 20 5c df    	vsubps ymm19,ymm19,ymm23
  b20c23:	62 b1 24 28 5c d1    	vsubps ymm2,ymm11,ymm17
  b20c29:	62 91 14 20 5c f8    	vsubps ymm7,ymm29,ymm24
  b20c2f:	62 a1 04 28 58 e8    	vaddps ymm21,ymm15,ymm16
  b20c35:	62 81 4c 20 58 f4    	vaddps ymm22,ymm22,ymm28
  b20c3b:	62 91 5c 20 58 e9    	vaddps ymm5,ymm20,ymm25
  b20c41:	62 31 24 28 58 d1    	vaddps ymm10,ymm11,ymm17
  b20c47:	62 c1 4c 28 5c cc    	vsubps ymm17,ymm6,ymm12
  b20c4d:	62 31 04 28 5c f8    	vsubps ymm15,ymm15,ymm16
  b20c53:	c4 41 0c 5c c5       	vsubps ymm8,ymm14,ymm13
  b20c58:	62 11 5c 20 5c d9    	vsubps ymm11,ymm20,ymm25
  b20c5e:	c5 1c 58 e6          	vaddps ymm12,ymm12,ymm6
  b20c62:	c4 41 0c 58 ed       	vaddps ymm13,ymm14,ymm13
  b20c67:	c5 fc 28 35 f1 4a 55 	vmovaps ymm6,YMMWORD PTR [rip+0xffffffffff554af1]        # 75760 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d40>
  b20c6e:	ff 
  b20c6f:	c4 41 7c 28 f5       	vmovaps ymm14,ymm13
  b20c74:	62 52 4d 28 7f f4    	vpermt2ps ymm14,ymm6,ymm12
  b20c7a:	62 e1 7c 28 28 05 1c 	vmovaps ymm16,YMMWORD PTR [rip+0xffffffffff55641c]        # 770a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4680>
  b20c81:	64 55 ff 
  b20c84:	62 52 7d 20 7f ec    	vpermt2ps ymm13,ymm16,ymm12
  b20c8a:	c4 41 7c 28 e3       	vmovaps ymm12,ymm11
  b20c8f:	62 52 4d 28 7f e7    	vpermt2ps ymm12,ymm6,ymm15
  b20c95:	62 52 7d 20 7f df    	vpermt2ps ymm11,ymm16,ymm15
  b20c9b:	c4 41 7c 28 fa       	vmovaps ymm15,ymm10
  b20ca0:	62 32 4d 28 7f fe    	vpermt2ps ymm15,ymm6,ymm22
  b20ca6:	62 32 7d 20 7f d6    	vpermt2ps ymm10,ymm16,ymm22
  b20cac:	62 e1 7c 28 28 e7    	vmovaps ymm20,ymm7
  b20cb2:	62 a2 4d 28 7f e3    	vpermt2ps ymm20,ymm6,ymm19
  b20cb8:	62 b2 7d 20 7f fb    	vpermt2ps ymm7,ymm16,ymm19
  b20cbe:	62 e1 7c 28 28 db    	vmovaps ymm19,ymm3
  b20cc4:	62 82 4d 28 7f da    	vpermt2ps ymm19,ymm6,ymm26
  b20cca:	62 92 7d 20 7f da    	vpermt2ps ymm3,ymm16,ymm26
  b20cd0:	62 c1 7c 28 28 f0    	vmovaps ymm22,ymm8
  b20cd6:	62 a2 4d 28 7f f1    	vpermt2ps ymm22,ymm6,ymm17
  b20cdc:	62 32 7d 20 7f c1    	vpermt2ps ymm8,ymm16,ymm17
  b20ce2:	62 e1 7c 28 28 cd    	vmovaps ymm17,ymm5
  b20ce8:	62 a2 4d 28 7f cd    	vpermt2ps ymm17,ymm6,ymm21
  b20cee:	62 b2 7d 20 7f ed    	vpermt2ps ymm5,ymm16,ymm21
  b20cf4:	62 e1 7c 28 28 ea    	vmovaps ymm21,ymm2
  b20cfa:	62 a2 4d 28 7f ea    	vpermt2ps ymm21,ymm6,ymm18
  b20d00:	62 b2 7d 20 7f d2    	vpermt2ps ymm2,ymm16,ymm18
  b20d06:	62 e1 7c 28 28 d1    	vmovaps ymm18,ymm1
  b20d0c:	62 c2 4d 28 7f d1    	vpermt2ps ymm18,ymm6,ymm9
  b20d12:	62 d2 7d 20 7f c9    	vpermt2ps ymm1,ymm16,ymm9
  b20d18:	62 f2 7d 28 77 f4    	vpermi2ps ymm6,ymm0,ymm4
  b20d1e:	62 f2 7d 20 7f c4    	vpermt2ps ymm0,ymm16,ymm4
  b20d24:	c5 7c 11 2e          	vmovups YMMWORD PTR [rsi],ymm13
  b20d28:	c5 7c 11 76 20       	vmovups YMMWORD PTR [rsi+0x20],ymm14
  b20d2d:	c5 7c 11 5e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm11
  b20d32:	c5 7c 11 66 60       	vmovups YMMWORD PTR [rsi+0x60],ymm12
  b20d37:	c5 7c 11 96 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm10
  b20d3e:	00 
  b20d3f:	c5 7c 11 be a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm15
  b20d46:	00 
  b20d47:	c5 fc 11 be c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm7
  b20d4e:	00 
  b20d4f:	62 e1 7c 28 11 66 07 	vmovups YMMWORD PTR [rsi+0xe0],ymm20
  b20d56:	c5 fc 11 9e 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm3
  b20d5d:	00 
  b20d5e:	62 e1 7c 28 11 5e 09 	vmovups YMMWORD PTR [rsi+0x120],ymm19
  b20d65:	c5 7c 11 86 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm8
  b20d6c:	00 
  b20d6d:	62 e1 7c 28 11 76 0b 	vmovups YMMWORD PTR [rsi+0x160],ymm22
  b20d74:	c5 fc 11 ae 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm5
  b20d7b:	00 
  b20d7c:	62 e1 7c 28 11 4e 0d 	vmovups YMMWORD PTR [rsi+0x1a0],ymm17
  b20d83:	c5 fc 11 96 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm2
  b20d8a:	00 
  b20d8b:	62 e1 7c 28 11 6e 0f 	vmovups YMMWORD PTR [rsi+0x1e0],ymm21
  b20d92:	c5 fc 11 8e 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm1
  b20d99:	00 
  b20d9a:	62 e1 7c 28 11 56 11 	vmovups YMMWORD PTR [rsi+0x220],ymm18
  b20da1:	c5 fc 11 86 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm0
  b20da8:	00 
  b20da9:	c5 fc 11 b6 60 02 00 	vmovups YMMWORD PTR [rsi+0x260],ymm6
  b20db0:	00 
  b20db1:	48 89 ec             	mov    rsp,rbp
  b20db4:	5d                   	pop    rbp
  b20db5:	c5 f8 77             	vzeroupper
  b20db8:	c3                   	ret
  b20db9:	cc                   	int3
  b20dba:	cc                   	int3
  b20dbb:	cc                   	int3
  b20dbc:	cc                   	int3
  b20dbd:	cc                   	int3
  b20dbe:	cc                   	int3
  b20dbf:	cc                   	int3
