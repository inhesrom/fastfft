
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a312c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a312c0:	c5 f8 10 47 20       	vmovups xmm0,XMMWORD PTR [rdi+0x20]
  a312c5:	c4 e3 79 21 47 24 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24],0x10
  a312cc:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a312d0:	c4 e2 79 18 57 28    	vbroadcastss xmm2,DWORD PTR [rdi+0x28]
  a312d6:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a312dc:	c4 e3 79 21 47 2c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c],0x30
  a312e3:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a312ea:	62 f1 7c 48 28 15 0c 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff65fa0c]        # 90d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e1b0>
  a312f1:	fa 65 ff 
  a312f4:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a312f8:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a312fe:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a31304:	62 f1 7c 48 28 25 32 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff65fa32]        # 90d40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e1f0>
  a3130b:	fa 65 ff 
  a3130e:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a31314:	c5 f8 10 6f 50       	vmovups xmm5,XMMWORD PTR [rdi+0x50]
  a31319:	c4 e3 51 21 6f 54 10 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x54],0x10
  a31320:	c5 fc 10 77 30       	vmovups ymm6,YMMWORD PTR [rdi+0x30]
  a31325:	c4 e2 79 18 7f 58    	vbroadcastss xmm7,DWORD PTR [rdi+0x58]
  a3132b:	c4 e3 41 0c ed 03    	vblendps xmm5,xmm7,xmm5,0x3
  a31331:	c4 e3 51 21 6f 5c 30 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x5c],0x30
  a31338:	62 f3 4d 48 18 ed 02 	vinsertf32x4 zmm5,zmm6,xmm5,0x2
  a3133f:	62 f1 7c 48 28 fd    	vmovaps zmm7,zmm5
  a31345:	62 f2 6d 48 7f f9    	vpermt2ps zmm7,zmm2,zmm1
  a3134b:	62 f2 5d 48 7f e9    	vpermt2ps zmm5,zmm4,zmm1
  a31351:	c5 f8 10 b7 80 00 00 	vmovups xmm6,XMMWORD PTR [rdi+0x80]
  a31358:	00 
  a31359:	c5 7c 10 47 60       	vmovups ymm8,YMMWORD PTR [rdi+0x60]
  a3135e:	c4 e3 49 21 b7 84 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x84],0x10
  a31365:	00 00 10 
  a31368:	c4 62 79 18 8f 88 00 	vbroadcastss xmm9,DWORD PTR [rdi+0x88]
  a3136f:	00 00 
  a31371:	c4 e3 31 0c f6 03    	vblendps xmm6,xmm9,xmm6,0x3
  a31377:	c4 e3 49 21 b7 8c 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x8c],0x30
  a3137e:	00 00 30 
  a31381:	62 73 3d 48 18 c6 02 	vinsertf32x4 zmm8,zmm8,xmm6,0x2
  a31388:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a3138e:	62 72 6d 48 7f c9    	vpermt2ps zmm9,zmm2,zmm1
  a31394:	62 72 5d 48 7f c1    	vpermt2ps zmm8,zmm4,zmm1
  a3139a:	c5 f8 10 b7 b0 00 00 	vmovups xmm6,XMMWORD PTR [rdi+0xb0]
  a313a1:	00 
  a313a2:	c4 e3 49 21 b7 b4 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0xb4],0x10
  a313a9:	00 00 10 
  a313ac:	c4 62 79 18 97 b8 00 	vbroadcastss xmm10,DWORD PTR [rdi+0xb8]
  a313b3:	00 00 
  a313b5:	c5 7c 10 9f 90 00 00 	vmovups ymm11,YMMWORD PTR [rdi+0x90]
  a313bc:	00 
  a313bd:	c4 e3 29 0c f6 03    	vblendps xmm6,xmm10,xmm6,0x3
  a313c3:	c4 e3 49 21 b7 bc 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0xbc],0x30
  a313ca:	00 00 30 
  a313cd:	62 73 25 48 18 d6 02 	vinsertf32x4 zmm10,zmm11,xmm6,0x2
  a313d4:	62 f2 2d 48 77 d1    	vpermi2ps zmm2,zmm10,zmm1
  a313da:	62 72 5d 48 7f d1    	vpermt2ps zmm10,zmm4,zmm1
  a313e0:	62 d1 64 48 58 e1    	vaddps zmm4,zmm3,zmm9
  a313e6:	62 71 44 48 58 da    	vaddps zmm11,zmm7,zmm2
  a313ec:	62 51 5c 48 58 eb    	vaddps zmm13,zmm4,zmm11
  a313f2:	62 51 7c 48 58 e0    	vaddps zmm12,zmm0,zmm8
  a313f8:	62 51 54 48 58 f2    	vaddps zmm14,zmm5,zmm10
  a313fe:	62 d1 1c 48 58 f6    	vaddps zmm6,zmm12,zmm14
  a31404:	62 d1 64 48 5c d9    	vsubps zmm3,zmm3,zmm9
  a3140a:	62 d1 54 48 5c ea    	vsubps zmm5,zmm5,zmm10
  a31410:	62 71 64 48 58 cd    	vaddps zmm9,zmm3,zmm5
  a31416:	62 d1 7c 48 5c c0    	vsubps zmm0,zmm0,zmm8
  a3141c:	62 f1 6c 48 5c d7    	vsubps zmm2,zmm2,zmm7
  a31422:	62 71 6c 48 58 c0    	vaddps zmm8,zmm2,zmm0
  a31428:	62 d1 5c 48 5c e3    	vsubps zmm4,zmm4,zmm11
  a3142e:	62 51 1c 48 5c de    	vsubps zmm11,zmm12,zmm14
  a31434:	62 f1 64 48 5c dd    	vsubps zmm3,zmm3,zmm5
  a3143a:	62 71 7c 48 5c d2    	vsubps zmm10,zmm0,zmm2
  a31440:	62 71 7c 48 28 35 36 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff695b36]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a31447:	5b 69 ff 
  a3144a:	62 72 0d 48 7f e9    	vpermt2ps zmm13,zmm14,zmm1
  a31450:	62 72 0d 48 7f c9    	vpermt2ps zmm9,zmm14,zmm1
  a31456:	62 f2 0d 48 7f e1    	vpermt2ps zmm4,zmm14,zmm1
  a3145c:	62 f2 0d 48 7f d9    	vpermt2ps zmm3,zmm14,zmm1
  a31462:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  a31467:	62 52 0d 48 7f ff    	vpermt2ps zmm15,zmm14,zmm15
  a3146d:	62 71 7c 48 28 25 89 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff695a89]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a31474:	5a 69 ff 
  a31477:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a3147d:	62 d2 1d 48 7f c7    	vpermt2ps zmm0,zmm12,zmm15
  a31483:	62 e1 7c 48 28 05 b3 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff695ab3]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a3148a:	5a 69 ff 
  a3148d:	62 52 7d 40 7f ef    	vpermt2ps zmm13,zmm16,zmm15
  a31493:	62 d1 7c 48 28 e9    	vmovaps zmm5,zmm9
  a31499:	62 d2 1d 48 7f ef    	vpermt2ps zmm5,zmm12,zmm15
  a3149f:	62 52 7d 40 7f cf    	vpermt2ps zmm9,zmm16,zmm15
  a314a5:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a314ab:	62 d2 1d 48 7f ff    	vpermt2ps zmm7,zmm12,zmm15
  a314b1:	62 d2 7d 40 7f e7    	vpermt2ps zmm4,zmm16,zmm15
  a314b7:	62 f1 95 48 14 d4    	vunpcklpd zmm2,zmm13,zmm4
  a314bd:	62 71 7c 48 28 eb    	vmovaps zmm13,zmm3
  a314c3:	62 52 1d 48 7f ef    	vpermt2ps zmm13,zmm12,zmm15
  a314c9:	62 d2 7d 40 7f df    	vpermt2ps zmm3,zmm16,zmm15
  a314cf:	62 e1 b5 48 14 cb    	vunpcklpd zmm17,zmm9,zmm3
  a314d5:	62 f1 fd 48 14 df    	vunpcklpd zmm3,zmm0,zmm7
  a314db:	62 f1 fd 48 15 e7    	vunpckhpd zmm4,zmm0,zmm7
  a314e1:	62 d1 d5 48 14 fd    	vunpcklpd zmm7,zmm5,zmm13
  a314e7:	62 51 d5 48 15 cd    	vunpckhpd zmm9,zmm5,zmm13
  a314ed:	62 f1 7c 48 28 2d 09 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff695909]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a314f4:	59 69 ff 
  a314f7:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a314fd:	62 f2 55 48 7f c7    	vpermt2ps zmm0,zmm5,zmm7
  a31503:	62 71 7c 48 28 2d 33 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff695933]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a3150a:	59 69 ff 
  a3150d:	62 f2 15 48 7f df    	vpermt2ps zmm3,zmm13,zmm7
  a31513:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a31519:	62 d2 55 48 7f f9    	vpermt2ps zmm7,zmm5,zmm9
  a3151f:	62 d2 15 48 7f e1    	vpermt2ps zmm4,zmm13,zmm9
  a31525:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a3152b:	62 32 55 48 7f c9    	vpermt2ps zmm9,zmm5,zmm17
  a31531:	62 b2 15 48 7f d1    	vpermt2ps zmm2,zmm13,zmm17
  a31537:	62 f2 0d 48 7f f1    	vpermt2ps zmm6,zmm14,zmm1
  a3153d:	62 72 0d 48 7f c1    	vpermt2ps zmm8,zmm14,zmm1
  a31543:	62 72 0d 48 7f d9    	vpermt2ps zmm11,zmm14,zmm1
  a31549:	62 72 0d 48 7f d1    	vpermt2ps zmm10,zmm14,zmm1
  a3154f:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a31555:	62 d2 1d 48 7f cf    	vpermt2ps zmm1,zmm12,zmm15
  a3155b:	62 d2 7d 40 7f f7    	vpermt2ps zmm6,zmm16,zmm15
  a31561:	62 51 7c 48 28 f0    	vmovaps zmm14,zmm8
  a31567:	62 52 1d 48 7f f7    	vpermt2ps zmm14,zmm12,zmm15
  a3156d:	62 52 7d 40 7f c7    	vpermt2ps zmm8,zmm16,zmm15
  a31573:	62 c1 7c 48 28 cb    	vmovaps zmm17,zmm11
  a31579:	62 c2 1d 48 7f cf    	vpermt2ps zmm17,zmm12,zmm15
  a3157f:	62 52 7d 40 7f df    	vpermt2ps zmm11,zmm16,zmm15
  a31585:	62 51 cd 48 14 db    	vunpcklpd zmm11,zmm6,zmm11
  a3158b:	62 52 2d 48 77 e7    	vpermi2ps zmm12,zmm10,zmm15
  a31591:	62 52 7d 40 7f d7    	vpermt2ps zmm10,zmm16,zmm15
  a31597:	62 51 bd 48 14 c2    	vunpcklpd zmm8,zmm8,zmm10
  a3159d:	62 31 f5 48 14 f9    	vunpcklpd zmm15,zmm1,zmm17
  a315a3:	62 a1 f5 48 15 c1    	vunpckhpd zmm16,zmm1,zmm17
  a315a9:	62 d1 8d 48 14 cc    	vunpcklpd zmm1,zmm14,zmm12
  a315af:	62 51 8d 48 15 d4    	vunpckhpd zmm10,zmm14,zmm12
  a315b5:	62 d1 7c 48 28 f7    	vmovaps zmm6,zmm15
  a315bb:	62 f2 55 48 7f f1    	vpermt2ps zmm6,zmm5,zmm1
  a315c1:	62 72 15 48 7f f9    	vpermt2ps zmm15,zmm13,zmm1
  a315c7:	62 31 7c 48 28 e0    	vmovaps zmm12,zmm16
  a315cd:	62 52 55 48 7f e2    	vpermt2ps zmm12,zmm5,zmm10
  a315d3:	62 c2 15 48 7f c2    	vpermt2ps zmm16,zmm13,zmm10
  a315d9:	62 d2 25 48 77 e8    	vpermi2ps zmm5,zmm11,zmm8
  a315df:	62 52 15 48 7f d8    	vpermt2ps zmm11,zmm13,zmm8
  a315e5:	62 71 7c 48 10 6a 02 	vmovups zmm13,ZMMWORD PTR [rdx+0x80]
  a315ec:	62 71 7c 48 10 72 03 	vmovups zmm14,ZMMWORD PTR [rdx+0xc0]
  a315f3:	62 71 7c 48 10 52 04 	vmovups zmm10,ZMMWORD PTR [rdx+0x100]
  a315fa:	62 e1 7c 48 10 4a 05 	vmovups zmm17,ZMMWORD PTR [rdx+0x140]
  a31601:	62 e1 7c 48 10 52 06 	vmovups zmm18,ZMMWORD PTR [rdx+0x180]
  a31608:	62 e1 7c 48 10 5a 07 	vmovups zmm19,ZMMWORD PTR [rdx+0x1c0]
  a3160f:	62 e1 7c 48 10 62 08 	vmovups zmm20,ZMMWORD PTR [rdx+0x200]
  a31616:	62 e1 7c 48 10 6a 09 	vmovups zmm21,ZMMWORD PTR [rdx+0x240]
  a3161d:	62 e1 7c 48 10 72 0a 	vmovups zmm22,ZMMWORD PTR [rdx+0x280]
  a31624:	62 e1 7c 48 10 7a 0b 	vmovups zmm23,ZMMWORD PTR [rdx+0x2c0]
  a3162b:	62 d1 44 48 59 ca    	vmulps zmm1,zmm7,zmm10
  a31631:	62 b2 1d 48 bc c9    	vfnmadd231ps zmm1,zmm12,zmm17
  a31637:	62 31 34 48 59 c4    	vmulps zmm8,zmm9,zmm20
  a3163d:	62 32 55 48 bc c5    	vfnmadd231ps zmm8,zmm5,zmm21
  a31643:	62 41 74 48 58 c0    	vaddps zmm24,zmm1,zmm8
  a31649:	62 21 5c 48 59 ca    	vmulps zmm25,zmm4,zmm18
  a3164f:	62 22 7d 40 bc cb    	vfnmadd231ps zmm25,zmm16,zmm19
  a31655:	62 21 6c 48 59 d6    	vmulps zmm26,zmm2,zmm22
  a3165b:	62 22 25 48 bc d7    	vfnmadd231ps zmm26,zmm11,zmm23
  a31661:	62 41 64 48 59 dd    	vmulps zmm27,zmm3,zmm13
  a31667:	62 42 05 48 bc de    	vfnmadd231ps zmm27,zmm15,zmm14
  a3166d:	62 01 2c 40 58 e3    	vaddps zmm28,zmm26,zmm27
  a31673:	62 51 1c 48 59 d2    	vmulps zmm10,zmm12,zmm10
  a31679:	62 72 75 40 b8 d7    	vfmadd231ps zmm10,zmm17,zmm7
  a3167f:	62 b1 54 48 59 ec    	vmulps zmm5,zmm5,zmm20
  a31685:	62 d2 55 40 b8 e9    	vfmadd231ps zmm5,zmm21,zmm9
  a3168b:	62 f1 2c 48 58 fd    	vaddps zmm7,zmm10,zmm5
  a31691:	62 31 7c 40 59 ca    	vmulps zmm9,zmm16,zmm18
  a31697:	62 72 65 40 b8 cc    	vfmadd231ps zmm9,zmm19,zmm4
  a3169d:	62 b1 24 48 59 e6    	vmulps zmm4,zmm11,zmm22
  a316a3:	62 f2 45 40 b8 e2    	vfmadd231ps zmm4,zmm23,zmm2
  a316a9:	62 51 04 48 59 dd    	vmulps zmm11,zmm15,zmm13
  a316af:	62 72 0d 48 b8 db    	vfmadd231ps zmm11,zmm14,zmm3
  a316b5:	62 d1 5c 48 58 db    	vaddps zmm3,zmm4,zmm11
  a316bb:	62 72 7d 48 18 25 9b 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff643d9b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a316c2:	3d 64 ff 
  a316c5:	62 d1 7c 48 28 d4    	vmovaps zmm2,zmm12
  a316cb:	62 f2 3d 40 ac d0    	vfnmadd213ps zmm2,zmm24,zmm0
  a316d1:	62 72 7d 48 18 2d f9 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff643bf9]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a316d8:	3b 64 ff 
  a316db:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a316e1:	62 12 1d 40 ac f1    	vfnmadd213ps zmm14,zmm28,zmm25
  a316e7:	62 51 7c 48 28 fc    	vmovaps zmm15,zmm12
  a316ed:	62 72 45 48 ac fe    	vfnmadd213ps zmm15,zmm7,zmm6
  a316f3:	62 52 65 48 ac e1    	vfnmadd213ps zmm12,zmm3,zmm9
  a316f9:	c5 b4 58 db          	vaddps ymm3,ymm9,ymm3
  a316fd:	c5 c4 58 f6          	vaddps ymm6,ymm7,ymm6
  a31701:	c5 cc 58 fb          	vaddps ymm7,ymm6,ymm3
  a31705:	62 11 34 20 58 cc    	vaddps ymm9,ymm25,ymm28
  a3170b:	62 81 7c 28 58 c0    	vaddps ymm16,ymm0,ymm24
  a31711:	62 c1 7c 00 58 c9    	vaddps xmm17,xmm16,xmm9
  a31717:	c5 fc 28 05 c1 5a 64 	vmovaps ymm0,YMMWORD PTR [rip+0xffffffffff645ac1]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a3171e:	ff 
  a3171f:	62 e2 7d 28 7f cf    	vpermt2ps ymm17,ymm0,ymm7
  a31725:	62 e1 7c 28 11 0e    	vmovups YMMWORD PTR [rsi],ymm17
  a3172b:	62 91 2c 20 5c fb    	vsubps ymm7,ymm26,ymm27
  a31731:	c5 94 59 ff          	vmulps ymm7,ymm13,ymm7
  a31735:	62 e1 1c 28 5c cf    	vsubps ymm17,ymm12,ymm7
  a3173b:	c4 c1 74 5c c8       	vsubps ymm1,ymm1,ymm8
  a31740:	c5 94 59 c9          	vmulps ymm1,ymm13,ymm1
  a31744:	c5 04 5c c1          	vsubps ymm8,ymm15,ymm1
  a31748:	62 a1 3c 28 5c d1    	vsubps ymm18,ymm8,ymm17
  a3174e:	c4 c1 5c 5c e3       	vsubps ymm4,ymm4,ymm11
  a31753:	c5 94 59 e4          	vmulps ymm4,ymm13,ymm4
  a31757:	c5 0c 58 dc          	vaddps ymm11,ymm14,ymm4
  a3175b:	c5 ac 5c ed          	vsubps ymm5,ymm10,ymm5
  a3175f:	c5 94 59 ed          	vmulps ymm5,ymm13,ymm5
  a31763:	c5 6c 58 d5          	vaddps ymm10,ymm2,ymm5
  a31767:	c4 41 28 5c eb       	vsubps xmm13,xmm10,xmm11
  a3176c:	62 32 7d 28 7f ea    	vpermt2ps ymm13,ymm0,ymm18
  a31772:	c5 7c 11 6e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm13
  a31777:	c5 9c 58 ff          	vaddps ymm7,ymm12,ymm7
  a3177b:	c5 84 58 c9          	vaddps ymm1,ymm15,ymm1
  a3177f:	c5 74 58 e7          	vaddps ymm12,ymm1,ymm7
  a31783:	c5 8c 5c e4          	vsubps ymm4,ymm14,ymm4
  a31787:	c5 ec 5c d5          	vsubps ymm2,ymm2,ymm5
  a3178b:	c5 e8 58 ec          	vaddps xmm5,xmm2,xmm4
  a3178f:	62 d2 7d 28 7f ec    	vpermt2ps ymm5,ymm0,ymm12
  a31795:	c5 fc 11 6e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm5
  a3179a:	c5 cc 5c db          	vsubps ymm3,ymm6,ymm3
  a3179e:	62 d1 7c 00 5c e9    	vsubps xmm5,xmm16,xmm9
  a317a4:	62 f2 7d 28 7f eb    	vpermt2ps ymm5,ymm0,ymm3
  a317aa:	c5 fc 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm5
  a317af:	62 b1 3c 28 58 d9    	vaddps ymm3,ymm8,ymm17
  a317b5:	c4 c1 28 58 eb       	vaddps xmm5,xmm10,xmm11
  a317ba:	62 f2 7d 28 7f eb    	vpermt2ps ymm5,ymm0,ymm3
  a317c0:	c5 fc 11 ae 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm5
  a317c7:	00 
  a317c8:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  a317cc:	c5 e8 5c d4          	vsubps xmm2,xmm2,xmm4
  a317d0:	62 f2 7d 28 7f d1    	vpermt2ps ymm2,ymm0,ymm1
  a317d6:	c5 fc 11 96 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm2
  a317dd:	00 
  a317de:	c5 f8 77             	vzeroupper
  a317e1:	c3                   	ret
