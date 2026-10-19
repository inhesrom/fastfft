
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a48180 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a48180:	c5 fb 10 47 20       	vmovsd xmm0,QWORD PTR [rdi+0x20]
  a48185:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a48189:	c5 fc 10 57 28       	vmovups ymm2,YMMWORD PTR [rdi+0x28]
  a4818e:	c5 fc 10 5f 50       	vmovups ymm3,YMMWORD PTR [rdi+0x50]
  a48193:	62 f3 f5 48 1a c8 01 	vinsertf64x4 zmm1,zmm1,ymm0,0x1
  a4819a:	62 f1 7c 48 28 25 9c 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff64a29c]        # 92440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f8f0>
  a481a1:	a2 64 ff 
  a481a4:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a481a8:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a481ae:	62 f2 5d 48 7f f0    	vpermt2ps zmm6,zmm4,zmm0
  a481b4:	62 f1 7c 48 28 2d c2 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff64a2c2]        # 92480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f930>
  a481bb:	a2 64 ff 
  a481be:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a481c4:	c5 fb 10 7f 48       	vmovsd xmm7,QWORD PTR [rdi+0x48]
  a481c9:	62 f3 ed 48 1a ff 01 	vinsertf64x4 zmm7,zmm2,ymm7,0x1
  a481d0:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a481d6:	62 72 5d 48 7f c0    	vpermt2ps zmm8,zmm4,zmm0
  a481dc:	62 f2 55 48 7f f8    	vpermt2ps zmm7,zmm5,zmm0
  a481e2:	c5 fb 10 57 70       	vmovsd xmm2,QWORD PTR [rdi+0x70]
  a481e7:	62 f3 e5 48 1a da 01 	vinsertf64x4 zmm3,zmm3,ymm2,0x1
  a481ee:	62 f2 65 48 77 e0    	vpermi2ps zmm4,zmm3,zmm0
  a481f4:	62 f2 55 48 7f d8    	vpermt2ps zmm3,zmm5,zmm0
  a481fa:	62 f1 3c 48 58 ec    	vaddps zmm5,zmm8,zmm4
  a48200:	62 71 4c 48 58 cd    	vaddps zmm9,zmm6,zmm5
  a48206:	62 71 44 48 58 d3    	vaddps zmm10,zmm7,zmm3
  a4820c:	62 d1 74 48 58 d2    	vaddps zmm2,zmm1,zmm10
  a48212:	62 72 7d 48 18 1d 44 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff62d244]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a48219:	d2 62 ff 
  a4821c:	62 f2 25 48 bc f5    	vfnmadd231ps zmm6,zmm11,zmm5
  a48222:	62 f1 44 48 5c db    	vsubps zmm3,zmm7,zmm3
  a48228:	62 f2 7d 48 18 3d a2 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff62d0a2]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a4822f:	d0 62 ff 
  a48232:	62 71 64 48 59 e7    	vmulps zmm12,zmm3,zmm7
  a48238:	62 d1 4c 48 58 ec    	vaddps zmm5,zmm6,zmm12
  a4823e:	62 d2 2d 48 bc cb    	vfnmadd231ps zmm1,zmm10,zmm11
  a48244:	62 f1 3c 48 5c dc    	vsubps zmm3,zmm8,zmm4
  a4824a:	62 f1 64 48 59 e7    	vmulps zmm4,zmm3,zmm7
  a48250:	62 f1 74 48 5c dc    	vsubps zmm3,zmm1,zmm4
  a48256:	62 d1 4c 48 5c fc    	vsubps zmm7,zmm6,zmm12
  a4825c:	62 f1 5c 48 58 e1    	vaddps zmm4,zmm4,zmm1
  a48262:	62 71 7c 48 28 05 14 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff67ed14]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a48269:	ed 67 ff 
  a4826c:	62 72 3d 48 7f c8    	vpermt2ps zmm9,zmm8,zmm0
  a48272:	62 f2 3d 48 7f e8    	vpermt2ps zmm5,zmm8,zmm0
  a48278:	62 f2 3d 48 7f f8    	vpermt2ps zmm7,zmm8,zmm0
  a4827e:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  a48283:	62 52 3d 48 7f d2    	vpermt2ps zmm10,zmm8,zmm10
  a48289:	62 f1 7c 48 28 35 6d 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff67ec6d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a48290:	ec 67 ff 
  a48293:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a48299:	62 52 4d 48 7f da    	vpermt2ps zmm11,zmm6,zmm10
  a4829f:	62 71 7c 48 28 25 97 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff67ec97]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a482a6:	ec 67 ff 
  a482a9:	62 52 1d 48 7f ca    	vpermt2ps zmm9,zmm12,zmm10
  a482af:	62 71 7c 48 28 ed    	vmovaps zmm13,zmm5
  a482b5:	62 52 4d 48 7f ea    	vpermt2ps zmm13,zmm6,zmm10
  a482bb:	62 d2 1d 48 7f ea    	vpermt2ps zmm5,zmm12,zmm10
  a482c1:	62 71 7c 48 28 f7    	vmovaps zmm14,zmm7
  a482c7:	62 52 4d 48 7f f2    	vpermt2ps zmm14,zmm6,zmm10
  a482cd:	62 d2 1d 48 7f fa    	vpermt2ps zmm7,zmm12,zmm10
  a482d3:	62 f1 b5 48 14 cf    	vunpcklpd zmm1,zmm9,zmm7
  a482d9:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a482df:	62 d2 4d 48 7f fa    	vpermt2ps zmm7,zmm6,zmm10
  a482e5:	62 f2 3d 48 7f d0    	vpermt2ps zmm2,zmm8,zmm0
  a482eb:	62 f2 3d 48 7f d8    	vpermt2ps zmm3,zmm8,zmm0
  a482f1:	62 f2 3d 48 7f e0    	vpermt2ps zmm4,zmm8,zmm0
  a482f7:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a482fd:	62 52 4d 48 7f c2    	vpermt2ps zmm8,zmm6,zmm10
  a48303:	62 d2 1d 48 7f d2    	vpermt2ps zmm2,zmm12,zmm10
  a48309:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a4830f:	62 52 4d 48 7f ca    	vpermt2ps zmm9,zmm6,zmm10
  a48315:	62 d2 1d 48 7f da    	vpermt2ps zmm3,zmm12,zmm10
  a4831b:	62 d2 5d 48 77 f2    	vpermi2ps zmm6,zmm4,zmm10
  a48321:	62 d2 1d 48 7f e2    	vpermt2ps zmm4,zmm12,zmm10
  a48327:	62 52 1d 48 7f d2    	vpermt2ps zmm10,zmm12,zmm10
  a4832d:	62 51 a5 48 14 e6    	vunpcklpd zmm12,zmm11,zmm14
  a48333:	62 51 a5 48 15 de    	vunpckhpd zmm11,zmm11,zmm14
  a48339:	62 71 95 48 14 f7    	vunpcklpd zmm14,zmm13,zmm7
  a4833f:	62 71 95 48 15 ef    	vunpckhpd zmm13,zmm13,zmm7
  a48345:	62 d1 d5 48 14 ea    	vunpcklpd zmm5,zmm5,zmm10
  a4834b:	62 71 7c 48 28 3d ab 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff67eaab]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a48352:	ea 67 ff 
  a48355:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a4835b:	62 d2 05 48 7f c6    	vpermt2ps zmm0,zmm15,zmm14
  a48361:	62 e1 7c 48 28 05 d5 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff67ead5]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a48368:	ea 67 ff 
  a4836b:	62 52 7d 40 7f e6    	vpermt2ps zmm12,zmm16,zmm14
  a48371:	62 51 7c 48 28 f3    	vmovaps zmm14,zmm11
  a48377:	62 52 05 48 7f f5    	vpermt2ps zmm14,zmm15,zmm13
  a4837d:	62 52 7d 40 7f dd    	vpermt2ps zmm11,zmm16,zmm13
  a48383:	62 f2 05 48 7f cd    	vpermt2ps zmm1,zmm15,zmm5
  a48389:	62 f1 ed 48 14 e4    	vunpcklpd zmm4,zmm2,zmm4
  a4838f:	62 f1 bd 48 14 ee    	vunpcklpd zmm5,zmm8,zmm6
  a48395:	62 f1 bd 48 15 f6    	vunpckhpd zmm6,zmm8,zmm6
  a4839b:	62 71 b5 48 14 c7    	vunpcklpd zmm8,zmm9,zmm7
  a483a1:	62 f1 b5 48 15 ff    	vunpckhpd zmm7,zmm9,zmm7
  a483a7:	62 d1 e5 48 14 da    	vunpcklpd zmm3,zmm3,zmm10
  a483ad:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a483b3:	62 d2 05 48 7f d0    	vpermt2ps zmm2,zmm15,zmm8
  a483b9:	62 d2 7d 40 7f e8    	vpermt2ps zmm5,zmm16,zmm8
  a483bf:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a483c5:	62 72 05 48 7f c7    	vpermt2ps zmm8,zmm15,zmm7
  a483cb:	62 f2 7d 40 7f f7    	vpermt2ps zmm6,zmm16,zmm7
  a483d1:	62 f2 05 48 7f e3    	vpermt2ps zmm4,zmm15,zmm3
  a483d7:	62 f1 7c 48 10 5a 02 	vmovups zmm3,ZMMWORD PTR [rdx+0x80]
  a483de:	62 71 7c 48 10 4a 03 	vmovups zmm9,ZMMWORD PTR [rdx+0xc0]
  a483e5:	62 71 7c 48 10 52 04 	vmovups zmm10,ZMMWORD PTR [rdx+0x100]
  a483ec:	62 71 7c 48 10 6a 05 	vmovups zmm13,ZMMWORD PTR [rdx+0x140]
  a483f3:	62 71 7c 48 10 7a 06 	vmovups zmm15,ZMMWORD PTR [rdx+0x180]
  a483fa:	62 e1 7c 48 10 42 07 	vmovups zmm16,ZMMWORD PTR [rdx+0x1c0]
  a48401:	62 e1 7c 48 10 4a 08 	vmovups zmm17,ZMMWORD PTR [rdx+0x200]
  a48408:	62 e1 7c 48 10 52 09 	vmovups zmm18,ZMMWORD PTR [rdx+0x240]
  a4840f:	62 e1 1c 48 59 db    	vmulps zmm19,zmm12,zmm3
  a48415:	62 c2 55 48 bc d9    	vfnmadd231ps zmm19,zmm5,zmm9
  a4841b:	62 a1 74 48 59 e1    	vmulps zmm20,zmm1,zmm17
  a48421:	62 a2 5d 48 bc e2    	vfnmadd231ps zmm20,zmm4,zmm18
  a48427:	62 b1 64 40 58 fc    	vaddps zmm7,zmm19,zmm20
  a4842d:	62 c1 0c 48 59 ea    	vmulps zmm21,zmm14,zmm10
  a48433:	62 c2 3d 48 bc ed    	vfnmadd231ps zmm21,zmm8,zmm13
  a48439:	62 c1 24 48 59 f7    	vmulps zmm22,zmm11,zmm15
  a4843f:	62 a2 4d 48 bc f0    	vfnmadd231ps zmm22,zmm6,zmm16
  a48445:	62 a1 54 40 58 fe    	vaddps zmm23,zmm21,zmm22
  a4844b:	62 f1 54 48 59 db    	vmulps zmm3,zmm5,zmm3
  a48451:	62 d2 35 48 b8 dc    	vfmadd231ps zmm3,zmm9,zmm12
  a48457:	62 b1 5c 48 59 e9    	vmulps zmm5,zmm4,zmm17
  a4845d:	62 f2 6d 40 b8 e9    	vfmadd231ps zmm5,zmm18,zmm1
  a48463:	62 71 64 48 58 cd    	vaddps zmm9,zmm3,zmm5
  a48469:	62 51 3c 48 59 c2    	vmulps zmm8,zmm8,zmm10
  a4846f:	62 52 15 48 b8 c6    	vfmadd231ps zmm8,zmm13,zmm14
  a48475:	62 d1 4c 48 59 f7    	vmulps zmm6,zmm6,zmm15
  a4847b:	62 d2 7d 40 b8 f3    	vfmadd231ps zmm6,zmm16,zmm11
  a48481:	62 71 3c 48 58 d6    	vaddps zmm10,zmm8,zmm6
  a48487:	62 72 7d 48 18 1d 57 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff62d257]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a4848e:	d2 62 ff 
  a48491:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a48497:	62 f2 45 48 a8 c8    	vfmadd213ps zmm1,zmm7,zmm0
  a4849d:	62 f2 7d 48 18 25 9d 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff62d19d]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a484a4:	d1 62 ff 
  a484a7:	62 f2 45 40 bc cc    	vfnmadd231ps zmm1,zmm23,zmm4
  a484ad:	62 71 64 48 5c e5    	vsubps zmm12,zmm3,zmm5
  a484b3:	62 71 3c 48 5c c6    	vsubps zmm8,zmm8,zmm6
  a484b9:	62 72 7d 48 18 2d 95 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff62d295]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a484c0:	d2 62 ff 
  a484c3:	62 d1 3c 48 59 dd    	vmulps zmm3,zmm8,zmm13
  a484c9:	62 72 7d 48 18 35 cd 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff62cecd]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a484d0:	ce 62 ff 
  a484d3:	62 d2 1d 48 b8 de    	vfmadd231ps zmm3,zmm12,zmm14
  a484d9:	62 d1 7c 48 28 eb    	vmovaps zmm5,zmm11
  a484df:	62 f2 35 48 a8 ea    	vfmadd213ps zmm5,zmm9,zmm2
  a484e5:	62 f2 2d 48 bc ec    	vfnmadd231ps zmm5,zmm10,zmm4
  a484eb:	62 31 64 40 5c fc    	vsubps zmm15,zmm19,zmm20
  a484f1:	62 a1 54 40 5c c6    	vsubps zmm16,zmm21,zmm22
  a484f7:	62 d1 7c 40 59 f5    	vmulps zmm6,zmm16,zmm13
  a484fd:	62 d2 05 48 b8 f6    	vfmadd231ps zmm6,zmm15,zmm14
  a48503:	62 e1 7c 48 28 cc    	vmovaps zmm17,zmm4
  a48509:	62 e2 45 48 ac c8    	vfnmadd213ps zmm17,zmm7,zmm0
  a4850f:	62 c2 45 40 b8 cb    	vfmadd231ps zmm17,zmm23,zmm11
  a48515:	62 51 1c 48 59 e5    	vmulps zmm12,zmm12,zmm13
  a4851b:	62 52 0d 48 bc e0    	vfnmadd231ps zmm12,zmm14,zmm8
  a48521:	62 f2 35 48 ac e2    	vfnmadd213ps zmm4,zmm9,zmm2
  a48527:	62 d2 2d 48 b8 e3    	vfmadd231ps zmm4,zmm10,zmm11
  a4852d:	62 51 04 48 59 c5    	vmulps zmm8,zmm15,zmm13
  a48533:	62 52 7d 40 bc c6    	vfnmadd231ps zmm8,zmm16,zmm14
  a48539:	c5 b4 58 d2          	vaddps ymm2,ymm9,ymm2
  a4853d:	c5 ac 58 d2          	vaddps ymm2,ymm10,ymm2
  a48541:	c5 f8 58 c7          	vaddps xmm0,xmm0,xmm7
  a48545:	62 b1 7c 08 58 c7    	vaddps xmm0,xmm0,xmm23
  a4854b:	c5 fc 28 3d 6d fd 62 	vmovaps ymm7,YMMWORD PTR [rip+0xffffffffff62fd6d]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a48552:	ff 
  a48553:	62 f2 45 28 7f c2    	vpermt2ps ymm0,ymm7,ymm2
  a48559:	c5 f8 11 06          	vmovups XMMWORD PTR [rsi],xmm0
  a4855d:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  a48563:	c5 f8 13 46 10       	vmovlps QWORD PTR [rsi+0x10],xmm0
  a48568:	c5 d4 5c c6          	vsubps ymm0,ymm5,ymm6
  a4856c:	c5 f0 58 d3          	vaddps xmm2,xmm1,xmm3
  a48570:	62 f2 45 28 7f d0    	vpermt2ps ymm2,ymm7,ymm0
  a48576:	c5 f8 11 56 18       	vmovups XMMWORD PTR [rsi+0x18],xmm2
  a4857b:	c4 e3 7d 19 d0 01    	vextractf128 xmm0,ymm2,0x1
  a48581:	c5 f8 13 46 28       	vmovlps QWORD PTR [rsi+0x28],xmm0
  a48586:	c4 c1 5c 5c c0       	vsubps ymm0,ymm4,ymm8
  a4858b:	62 d1 74 00 58 d4    	vaddps xmm2,xmm17,xmm12
  a48591:	62 f2 45 28 7f d0    	vpermt2ps ymm2,ymm7,ymm0
  a48597:	c5 f8 11 56 30       	vmovups XMMWORD PTR [rsi+0x30],xmm2
  a4859c:	c4 e3 7d 19 d0 01    	vextractf128 xmm0,ymm2,0x1
  a485a2:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  a485a7:	c5 bc 58 c4          	vaddps ymm0,ymm8,ymm4
  a485ab:	62 d1 74 00 5c d4    	vsubps xmm2,xmm17,xmm12
  a485b1:	62 f2 45 28 7f d0    	vpermt2ps ymm2,ymm7,ymm0
  a485b7:	c5 f8 11 56 48       	vmovups XMMWORD PTR [rsi+0x48],xmm2
  a485bc:	c4 e3 7d 19 d0 01    	vextractf128 xmm0,ymm2,0x1
  a485c2:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  a485c7:	c5 d4 58 c6          	vaddps ymm0,ymm5,ymm6
  a485cb:	c5 f0 5c cb          	vsubps xmm1,xmm1,xmm3
  a485cf:	62 f2 45 28 7f c8    	vpermt2ps ymm1,ymm7,ymm0
  a485d5:	c5 f8 11 4e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm1
  a485da:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  a485e0:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  a485e5:	c5 f8 77             	vzeroupper
  a485e8:	c3                   	ret
