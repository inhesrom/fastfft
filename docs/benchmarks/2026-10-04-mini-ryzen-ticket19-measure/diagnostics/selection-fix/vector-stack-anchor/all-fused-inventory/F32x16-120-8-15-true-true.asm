
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a6e080 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a6e080:	48 81 ec 88 09 00 00 	sub    rsp,0x988
  a6e087:	48 69 c2 c0 03 00 00 	imul   rax,rdx,0x3c0
  a6e08e:	31 d2                	xor    edx,edx
  a6e090:	41 b0 7f             	mov    r8b,0x7f
  a6e093:	c4 c1 7b 92 c8       	kmovd  k1,r8d
  a6e098:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  a6e09f:	00 
  a6e0a0:	62 61 7c 48 10 1c 17 	vmovups zmm27,ZMMWORD PTR [rdi+rdx*1]
  a6e0a7:	c5 f8 10 4c 17 60    	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x60]
  a6e0ad:	c4 e3 71 21 4c 17 64 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x64],0x10
  a6e0b4:	10 
  a6e0b5:	c4 e2 79 18 54 17 68 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x68]
  a6e0bc:	c5 fc 10 5c 17 40    	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x40]
  a6e0c2:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a6e0c8:	c4 e3 71 21 4c 17 6c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x6c],0x30
  a6e0cf:	30 
  a6e0d0:	c5 fb 10 54 17 70    	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0x70]
  a6e0d6:	c4 e3 75 18 ca 01    	vinsertf128 ymm1,ymm1,xmm2,0x1
  a6e0dc:	62 f3 e5 48 1a c9 01 	vinsertf64x4 zmm1,zmm3,ymm1,0x1
  a6e0e3:	62 f2 fd c9 88 c1    	vexpandpd zmm0{k1}{z},zmm1
  a6e0e9:	62 f1 fe 48 7f 44 24 	vmovdqu64 ZMMWORD PTR [rsp-0x80],zmm0
  a6e0f0:	fe 
  a6e0f1:	62 91 7c 48 28 fb    	vmovaps zmm7,zmm27
  a6e0f7:	62 61 7c 48 28 05 3f 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff62673f]        # 94840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21cf0>
  a6e0fe:	67 62 ff 
  a6e101:	62 f2 3d 40 7f f8    	vpermt2ps zmm7,zmm24,zmm0
  a6e107:	62 f1 7c 48 10 8c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a6e10e:	e0 01 00 00 
  a6e112:	c5 f8 10 9c 17 40 02 	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x240]
  a6e119:	00 00 
  a6e11b:	c4 e3 61 21 9c 17 44 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x244],0x10
  a6e122:	02 00 00 10 
  a6e126:	c4 e2 79 18 a4 17 48 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x248]
  a6e12d:	02 00 00 
  a6e130:	c5 fc 10 ac 17 20 02 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x220]
  a6e137:	00 00 
  a6e139:	c4 e3 59 0c db 03    	vblendps xmm3,xmm4,xmm3,0x3
  a6e13f:	c4 e3 61 21 9c 17 4c 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x24c],0x30
  a6e146:	02 00 00 30 
  a6e14a:	c5 fb 10 a4 17 50 02 	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x250]
  a6e151:	00 00 
  a6e153:	c4 e3 65 18 dc 01    	vinsertf128 ymm3,ymm3,xmm4,0x1
  a6e159:	62 f3 d5 48 1a db 01 	vinsertf64x4 zmm3,zmm5,ymm3,0x1
  a6e160:	62 62 fd c9 88 fb    	vexpandpd zmm31{k1}{z},zmm3
  a6e166:	62 71 7c 48 28 d1    	vmovaps zmm10,zmm1
  a6e16c:	62 12 3d 40 7f d7    	vpermt2ps zmm10,zmm24,zmm31
  a6e172:	62 51 44 48 58 e2    	vaddps zmm12,zmm7,zmm10
  a6e178:	c5 f8 10 a4 17 50 01 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x150]
  a6e17f:	00 00 
  a6e181:	c4 e3 59 21 a4 17 54 	vinsertps xmm4,xmm4,DWORD PTR [rdi+rdx*1+0x154],0x10
  a6e188:	01 00 00 10 
  a6e18c:	c4 e2 79 18 b4 17 58 	vbroadcastss xmm6,DWORD PTR [rdi+rdx*1+0x158]
  a6e193:	01 00 00 
  a6e196:	62 f1 7c 48 10 ac 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a6e19d:	f0 00 00 00 
  a6e1a1:	c4 e3 49 0c e4 03    	vblendps xmm4,xmm6,xmm4,0x3
  a6e1a7:	c4 e3 59 21 a4 17 5c 	vinsertps xmm4,xmm4,DWORD PTR [rdi+rdx*1+0x15c],0x30
  a6e1ae:	01 00 00 30 
  a6e1b2:	c5 fc 10 b4 17 30 01 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x130]
  a6e1b9:	00 00 
  a6e1bb:	c5 7b 10 84 17 60 01 	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x160]
  a6e1c2:	00 00 
  a6e1c4:	c4 c3 5d 18 e0 01    	vinsertf128 ymm4,ymm4,xmm8,0x1
  a6e1ca:	62 f3 cd 48 1a e4 01 	vinsertf64x4 zmm4,zmm6,ymm4,0x1
  a6e1d1:	62 72 fd c9 88 dc    	vexpandpd zmm11{k1}{z},zmm4
  a6e1d7:	62 61 7c 48 28 f5    	vmovaps zmm30,zmm5
  a6e1dd:	62 42 3d 40 7f f3    	vpermt2ps zmm30,zmm24,zmm11
  a6e1e3:	c5 f8 10 b4 17 30 03 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x330]
  a6e1ea:	00 00 
  a6e1ec:	c4 e3 49 21 b4 17 34 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0x334],0x10
  a6e1f3:	03 00 00 10 
  a6e1f7:	c4 62 79 18 84 17 38 	vbroadcastss xmm8,DWORD PTR [rdi+rdx*1+0x338]
  a6e1fe:	03 00 00 
  a6e201:	62 71 7c 48 10 8c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a6e208:	d0 02 00 00 
  a6e20c:	c4 e3 39 0c f6 03    	vblendps xmm6,xmm8,xmm6,0x3
  a6e212:	c4 e3 49 21 b4 17 3c 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0x33c],0x30
  a6e219:	03 00 00 30 
  a6e21d:	c5 7c 10 84 17 10 03 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x310]
  a6e224:	00 00 
  a6e226:	c5 7b 10 ac 17 40 03 	vmovsd xmm13,QWORD PTR [rdi+rdx*1+0x340]
  a6e22d:	00 00 
  a6e22f:	c4 c3 4d 18 f5 01    	vinsertf128 ymm6,ymm6,xmm13,0x1
  a6e235:	62 f3 bd 48 1a f6 01 	vinsertf64x4 zmm6,zmm8,ymm6,0x1
  a6e23c:	62 72 fd c9 88 ee    	vexpandpd zmm13{k1}{z},zmm6
  a6e242:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a6e248:	62 d2 3d 40 7f c5    	vpermt2ps zmm0,zmm24,zmm13
  a6e24e:	62 e1 0c 40 58 e0    	vaddps zmm20,zmm30,zmm0
  a6e254:	62 a1 1c 48 58 ec    	vaddps zmm21,zmm12,zmm20
  a6e25a:	62 71 7c 48 10 b4 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x78]
  a6e261:	78 00 00 00 
  a6e265:	c5 7c 10 84 17 b8 00 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0xb8]
  a6e26c:	00 00 
  a6e26e:	c5 78 10 bc 17 d8 00 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0xd8]
  a6e275:	00 00 
  a6e277:	c4 63 01 21 bc 17 dc 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0xdc],0x10
  a6e27e:	00 00 00 10 
  a6e282:	c4 e2 79 18 94 17 e0 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0xe0]
  a6e289:	00 00 00 
  a6e28c:	c4 c3 69 0c d7 03    	vblendps xmm2,xmm2,xmm15,0x3
  a6e292:	c4 e3 69 21 94 17 e4 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0xe4],0x30
  a6e299:	00 00 00 30 
  a6e29d:	c5 7b 10 bc 17 e8 00 	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0xe8]
  a6e2a4:	00 00 
  a6e2a6:	c4 c3 6d 18 d7 01    	vinsertf128 ymm2,ymm2,xmm15,0x1
  a6e2ac:	62 f3 bd 48 1a d2 01 	vinsertf64x4 zmm2,zmm8,ymm2,0x1
  a6e2b3:	62 e2 fd c9 88 fa    	vexpandpd zmm23{k1}{z},zmm2
  a6e2b9:	62 c1 7c 48 28 c6    	vmovaps zmm16,zmm14
  a6e2bf:	62 a2 3d 40 7f c7    	vpermt2ps zmm16,zmm24,zmm23
  a6e2c5:	62 e1 7c 48 10 8c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x258]
  a6e2cc:	58 02 00 00 
  a6e2d0:	c5 fc 10 94 17 98 02 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x298]
  a6e2d7:	00 00 
  a6e2d9:	c5 78 10 84 17 b8 02 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x2b8]
  a6e2e0:	00 00 
  a6e2e2:	c4 63 39 21 84 17 bc 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0x2bc],0x10
  a6e2e9:	02 00 00 10 
  a6e2ed:	c4 62 79 18 bc 17 c0 	vbroadcastss xmm15,DWORD PTR [rdi+rdx*1+0x2c0]
  a6e2f4:	02 00 00 
  a6e2f7:	c4 43 01 0c c0 03    	vblendps xmm8,xmm15,xmm8,0x3
  a6e2fd:	c4 63 39 21 84 17 c4 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0x2c4],0x30
  a6e304:	02 00 00 30 
  a6e308:	c5 7b 10 bc 17 c8 02 	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x2c8]
  a6e30f:	00 00 
  a6e311:	c4 43 3d 18 c7 01    	vinsertf128 ymm8,ymm8,xmm15,0x1
  a6e317:	62 d3 ed 48 1a d0 01 	vinsertf64x4 zmm2,zmm2,ymm8,0x1
  a6e31e:	62 f2 fd c9 88 d2    	vexpandpd zmm2{k1}{z},zmm2
  a6e324:	62 a1 7c 48 28 d9    	vmovaps zmm19,zmm17
  a6e32a:	62 e2 3d 40 7f da    	vpermt2ps zmm19,zmm24,zmm2
  a6e330:	62 21 7c 40 58 d3    	vaddps zmm26,zmm16,zmm19
  a6e336:	62 e1 7c 48 10 94 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x168]
  a6e33d:	68 01 00 00 
  a6e341:	c5 78 10 bc 17 c8 01 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x1c8]
  a6e348:	00 00 
  a6e34a:	c4 63 01 21 bc 17 cc 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0x1cc],0x10
  a6e351:	01 00 00 10 
  a6e355:	c4 e2 79 18 9c 17 d0 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x1d0]
  a6e35c:	01 00 00 
  a6e35f:	62 e1 7c 28 10 b4 17 	vmovups ymm22,YMMWORD PTR [rdi+rdx*1+0x1a8]
  a6e366:	a8 01 00 00 
  a6e36a:	c4 c3 61 0c df 03    	vblendps xmm3,xmm3,xmm15,0x3
  a6e370:	c4 e3 61 21 9c 17 d4 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x1d4],0x30
  a6e377:	01 00 00 30 
  a6e37b:	c5 7b 10 bc 17 d8 01 	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x1d8]
  a6e382:	00 00 
  a6e384:	c4 c3 65 18 df 01    	vinsertf128 ymm3,ymm3,xmm15,0x1
  a6e38a:	62 f3 cd 40 1a db 01 	vinsertf64x4 zmm3,zmm22,ymm3,0x1
  a6e391:	62 f2 fd c9 88 db    	vexpandpd zmm3{k1}{z},zmm3
  a6e397:	62 a1 7c 48 28 f2    	vmovaps zmm22,zmm18
  a6e39d:	62 e2 3d 40 7f f3    	vpermt2ps zmm22,zmm24,zmm3
  a6e3a3:	62 61 7c 48 10 8c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x348]
  a6e3aa:	48 03 00 00 
  a6e3ae:	c5 78 10 bc 17 a8 03 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x3a8]
  a6e3b5:	00 00 
  a6e3b7:	c4 63 01 21 bc 17 ac 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0x3ac],0x10
  a6e3be:	03 00 00 10 
  a6e3c2:	c4 62 79 18 84 17 b0 	vbroadcastss xmm8,DWORD PTR [rdi+rdx*1+0x3b0]
  a6e3c9:	03 00 00 
  a6e3cc:	62 61 7c 28 10 a4 17 	vmovups ymm28,YMMWORD PTR [rdi+rdx*1+0x388]
  a6e3d3:	88 03 00 00 
  a6e3d7:	c4 43 39 0c c7 03    	vblendps xmm8,xmm8,xmm15,0x3
  a6e3dd:	c4 63 39 21 84 17 b4 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0x3b4],0x30
  a6e3e4:	03 00 00 30 
  a6e3e8:	c5 7b 10 bc 17 b8 03 	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x3b8]
  a6e3ef:	00 00 
  a6e3f1:	c4 43 3d 18 c7 01    	vinsertf128 ymm8,ymm8,xmm15,0x1
  a6e3f7:	62 53 9d 40 1a c0 01 	vinsertf64x4 zmm8,zmm28,ymm8,0x1
  a6e3fe:	62 52 fd c9 88 c0    	vexpandpd zmm8{k1}{z},zmm8
  a6e404:	62 01 7c 48 28 e9    	vmovaps zmm29,zmm25
  a6e40a:	62 42 3d 40 7f e8    	vpermt2ps zmm29,zmm24,zmm8
  a6e410:	62 11 4c 40 58 fd    	vaddps zmm15,zmm22,zmm29
  a6e416:	62 41 2c 40 58 e7    	vaddps zmm28,zmm26,zmm15
  a6e41c:	62 01 54 40 58 c4    	vaddps zmm24,zmm21,zmm28
  a6e422:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm24
  a6e429:	06 
  a6e42a:	62 f1 7c 48 28 25 8c 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff658b8c]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a6e431:	8b 65 ff 
  a6e434:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a6e438:	62 62 5d 48 7f c6    	vpermt2ps zmm24,zmm4,zmm6
  a6e43e:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm24
  a6e445:	10 
  a6e446:	62 81 54 40 5c ec    	vsubps zmm21,zmm21,zmm28
  a6e44c:	62 e1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm21
  a6e453:	62 e2 5d 48 7f ee    	vpermt2ps zmm21,zmm4,zmm6
  a6e459:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm21
  a6e460:	07 
  a6e461:	62 a1 1c 48 5c e4    	vsubps zmm20,zmm12,zmm20
  a6e467:	62 11 7c 48 28 e0    	vmovaps zmm12,zmm24
  a6e46d:	62 61 7c 48 28 05 89 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff658a89]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a6e474:	8a 65 ff 
  a6e477:	62 32 3d 40 7f e5    	vpermt2ps zmm12,zmm24,zmm21
  a6e47d:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm12
  a6e484:	0a 
  a6e485:	62 61 7c 48 28 25 f1 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff6263f1]        # 94880 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21d30>
  a6e48c:	63 62 ff 
  a6e48f:	62 32 1d 40 7f f7    	vpermt2ps zmm14,zmm28,zmm23
  a6e495:	62 e2 1d 40 7f ca    	vpermt2ps zmm17,zmm28,zmm2
  a6e49b:	62 31 0c 48 58 e1    	vaddps zmm12,zmm14,zmm17
  a6e4a1:	62 e2 1d 40 7f d3    	vpermt2ps zmm18,zmm28,zmm3
  a6e4a7:	62 42 1d 40 7f c8    	vpermt2ps zmm25,zmm28,zmm8
  a6e4ad:	62 81 6c 40 58 e9    	vaddps zmm21,zmm18,zmm25
  a6e4b3:	62 b1 1c 48 5c d5    	vsubps zmm2,zmm12,zmm21
  a6e4b9:	62 f1 5c 40 58 da    	vaddps zmm3,zmm20,zmm2
  a6e4bf:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm3
  a6e4c6:	0c 
  a6e4c7:	62 71 5c 40 5c c2    	vsubps zmm8,zmm20,zmm2
  a6e4cd:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm8
  a6e4d4:	ff 
  a6e4d5:	62 f1 7c 48 28 d3    	vmovaps zmm2,zmm3
  a6e4db:	62 f2 5d 48 7f d6    	vpermt2ps zmm2,zmm4,zmm6
  a6e4e1:	62 e1 7c 48 28 e2    	vmovaps zmm20,zmm2
  a6e4e7:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm2
  a6e4ee:	0f 
  a6e4ef:	62 d1 44 48 5c d2    	vsubps zmm2,zmm7,zmm10
  a6e4f5:	62 d1 7c 48 28 d8    	vmovaps zmm3,zmm8
  a6e4fb:	62 f2 5d 48 7f de    	vpermt2ps zmm3,zmm4,zmm6
  a6e501:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a6e507:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm3
  a6e50e:	0e 
  a6e50f:	62 d2 1d 40 7f eb    	vpermt2ps zmm5,zmm28,zmm11
  a6e515:	62 52 1d 40 7f cd    	vpermt2ps zmm9,zmm28,zmm13
  a6e51b:	62 d1 54 48 5c d9    	vsubps zmm3,zmm5,zmm9
  a6e521:	62 71 6c 48 58 c3    	vaddps zmm8,zmm2,zmm3
  a6e527:	62 31 7c 40 5c db    	vsubps zmm11,zmm16,zmm19
  a6e52d:	62 31 0c 48 5c e9    	vsubps zmm13,zmm14,zmm17
  a6e533:	62 d1 24 48 58 fd    	vaddps zmm7,zmm11,zmm13
  a6e539:	62 72 7d 48 18 35 59 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff606e59]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a6e540:	6e 60 ff 
  a6e543:	62 d1 44 48 59 fe    	vmulps zmm7,zmm7,zmm14
  a6e549:	62 81 6c 40 5c c1    	vsubps zmm16,zmm18,zmm25
  a6e54f:	62 81 4c 40 5c cd    	vsubps zmm17,zmm22,zmm29
  a6e555:	62 31 7c 40 5c d1    	vsubps zmm10,zmm16,zmm17
  a6e55b:	62 51 2c 48 59 d6    	vmulps zmm10,zmm10,zmm14
  a6e561:	62 c1 44 48 58 d2    	vaddps zmm18,zmm7,zmm10
  a6e567:	62 21 3c 48 58 ca    	vaddps zmm25,zmm8,zmm18
  a6e56d:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm25
  a6e574:	04 
  a6e575:	62 a1 3c 48 5c f2    	vsubps zmm22,zmm8,zmm18
  a6e57b:	62 a1 7c 48 28 dc    	vmovaps zmm19,zmm20
  a6e581:	62 a2 3d 40 7f df    	vpermt2ps zmm19,zmm24,zmm23
  a6e587:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm19
  a6e58e:	09 
  a6e58f:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a6e595:	62 91 7c 48 28 d9    	vmovaps zmm3,zmm25
  a6e59b:	62 f2 5d 48 7f de    	vpermt2ps zmm3,zmm4,zmm6
  a6e5a1:	62 e1 7c 48 28 d3    	vmovaps zmm18,zmm3
  a6e5a7:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm3
  a6e5ae:	05 
  a6e5af:	62 d1 14 48 5c db    	vsubps zmm3,zmm13,zmm11
  a6e5b5:	62 d1 64 48 59 de    	vmulps zmm3,zmm3,zmm14
  a6e5bb:	62 31 74 40 58 c0    	vaddps zmm8,zmm17,zmm16
  a6e5c1:	62 51 3c 48 59 de    	vmulps zmm11,zmm8,zmm14
  a6e5c7:	62 51 64 48 58 c3    	vaddps zmm8,zmm3,zmm11
  a6e5cd:	62 c1 6c 48 58 c0    	vaddps zmm16,zmm2,zmm8
  a6e5d3:	62 41 6c 48 5c e8    	vsubps zmm29,zmm2,zmm8
  a6e5d9:	62 b1 7c 48 28 d6    	vmovaps zmm2,zmm22
  a6e5df:	62 f2 5d 48 7f d6    	vpermt2ps zmm2,zmm4,zmm6
  a6e5e5:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm2
  a6e5ec:	0d 
  a6e5ed:	62 62 1d 40 7f 5c 24 	vpermt2ps zmm27,zmm28,ZMMWORD PTR [rsp-0x80]
  a6e5f4:	fe 
  a6e5f5:	62 e2 3d 40 7f d2    	vpermt2ps zmm18,zmm24,zmm2
  a6e5fb:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm18
  a6e602:	02 
  a6e603:	62 92 1d 40 7f cf    	vpermt2ps zmm1,zmm28,zmm31
  a6e609:	62 f1 24 40 58 d1    	vaddps zmm2,zmm27,zmm1
  a6e60f:	62 d1 54 48 58 e9    	vaddps zmm5,zmm5,zmm9
  a6e615:	62 71 6c 48 58 c5    	vaddps zmm8,zmm2,zmm5
  a6e61b:	62 31 1c 48 58 cd    	vaddps zmm9,zmm12,zmm21
  a6e621:	62 41 3c 48 58 f9    	vaddps zmm31,zmm8,zmm9
  a6e627:	62 51 3c 48 5c e1    	vsubps zmm12,zmm8,zmm9
  a6e62d:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm12
  a6e634:	fe 
  a6e635:	62 31 7c 48 28 c0    	vmovaps zmm8,zmm16
  a6e63b:	62 72 5d 48 7f c6    	vpermt2ps zmm8,zmm4,zmm6
  a6e641:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a6e647:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm8
  a6e64e:	23 
  a6e64f:	62 11 04 48 5c ca    	vsubps zmm9,zmm15,zmm26
  a6e655:	62 11 7c 48 28 c5    	vmovaps zmm8,zmm29
  a6e65b:	62 72 5d 48 7f c6    	vpermt2ps zmm8,zmm4,zmm6
  a6e661:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm8
  a6e668:	19 
  a6e669:	62 f1 6c 48 5c d5    	vsubps zmm2,zmm2,zmm5
  a6e66f:	62 71 34 48 58 f2    	vaddps zmm14,zmm9,zmm2
  a6e675:	62 51 6c 48 5c c9    	vsubps zmm9,zmm2,zmm9
  a6e67b:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm9
  a6e682:	01 
  a6e683:	62 d1 7c 48 28 d5    	vmovaps zmm2,zmm13
  a6e689:	62 d2 3d 40 7f d0    	vpermt2ps zmm2,zmm24,zmm8
  a6e68f:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a6e695:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm2
  a6e69c:	22 
  a6e69d:	62 91 7c 48 5c d6    	vsubps zmm2,zmm0,zmm30
  a6e6a3:	62 01 7c 48 28 d7    	vmovaps zmm26,zmm31
  a6e6a9:	62 62 5d 48 7f d6    	vpermt2ps zmm26,zmm4,zmm6
  a6e6af:	62 f1 24 40 5c c1    	vsubps zmm0,zmm27,zmm1
  a6e6b5:	62 f1 6c 48 58 c8    	vaddps zmm1,zmm2,zmm0
  a6e6bb:	62 d1 64 48 5c db    	vsubps zmm3,zmm3,zmm11
  a6e6c1:	62 61 74 48 58 f3    	vaddps zmm30,zmm1,zmm3
  a6e6c7:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm30
  a6e6ce:	0b 
  a6e6cf:	62 71 74 48 5c db    	vsubps zmm11,zmm1,zmm3
  a6e6d5:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm11
  a6e6dc:	08 
  a6e6dd:	62 d1 7c 48 28 dc    	vmovaps zmm3,zmm12
  a6e6e3:	62 f2 5d 48 7f de    	vpermt2ps zmm3,zmm4,zmm6
  a6e6e9:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm3
  a6e6f0:	16 
  a6e6f1:	62 f1 7c 48 5c ca    	vsubps zmm1,zmm0,zmm2
  a6e6f7:	62 91 7c 48 28 c2    	vmovaps zmm0,zmm26
  a6e6fd:	62 f2 3d 40 7f c3    	vpermt2ps zmm0,zmm24,zmm3
  a6e703:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a6e709:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm0
  a6e710:	21 
  a6e711:	62 f1 2c 48 5c d7    	vsubps zmm2,zmm10,zmm7
  a6e717:	62 71 74 48 58 fa    	vaddps zmm15,zmm1,zmm2
  a6e71d:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm15
  a6e724:	03 
  a6e725:	62 71 74 48 5c d2    	vsubps zmm10,zmm1,zmm2
  a6e72b:	62 41 7c 48 28 de    	vmovaps zmm27,zmm14
  a6e731:	62 62 5d 48 7f de    	vpermt2ps zmm27,zmm4,zmm6
  a6e737:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a6e73d:	62 f2 5d 48 7f c6    	vpermt2ps zmm0,zmm4,zmm6
  a6e743:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm0
  a6e74a:	15 
  a6e74b:	62 81 7c 48 28 e3    	vmovaps zmm20,zmm27
  a6e751:	62 e2 3d 40 7f e0    	vpermt2ps zmm20,zmm24,zmm0
  a6e757:	62 62 5d 48 7f f6    	vpermt2ps zmm30,zmm4,zmm6
  a6e75d:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a6e763:	62 f2 5d 48 7f c6    	vpermt2ps zmm0,zmm4,zmm6
  a6e769:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x940],zmm0
  a6e770:	25 
  a6e771:	62 11 7c 48 28 ee    	vmovaps zmm13,zmm30
  a6e777:	62 72 3d 40 7f e8    	vpermt2ps zmm13,zmm24,zmm0
  a6e77d:	62 72 5d 48 7f fe    	vpermt2ps zmm15,zmm4,zmm6
  a6e783:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a6e789:	62 f2 5d 48 7f c6    	vpermt2ps zmm0,zmm4,zmm6
  a6e78f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x900],zmm0
  a6e796:	24 
  a6e797:	62 d1 7c 48 28 d7    	vmovaps zmm2,zmm15
  a6e79d:	62 f2 3d 40 7f d0    	vpermt2ps zmm2,zmm24,zmm0
  a6e7a3:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x280]
  a6e7aa:	0a 
  a6e7ab:	62 b1 dd 48 14 db    	vunpcklpd zmm3,zmm4,zmm19
  a6e7b1:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm3
  a6e7b8:	12 
  a6e7b9:	62 f1 ed 40 14 cd    	vunpcklpd zmm1,zmm18,zmm5
  a6e7bf:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm1
  a6e7c6:	11 
  a6e7c7:	62 f1 7c 48 28 3d 2f 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff65862f]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a6e7ce:	86 65 ff 
  a6e7d1:	62 f2 45 48 7f d9    	vpermt2ps zmm3,zmm7,zmm1
  a6e7d7:	62 b1 bd 48 14 ec    	vunpcklpd zmm5,zmm8,zmm20
  a6e7dd:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm5
  a6e7e4:	1c 
  a6e7e5:	62 f1 95 48 14 c2    	vunpcklpd zmm0,zmm13,zmm2
  a6e7eb:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm0
  a6e7f2:	1b 
  a6e7f3:	62 f2 45 48 7f e8    	vpermt2ps zmm5,zmm7,zmm0
  a6e7f9:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a6e7ff:	62 f1 7c 48 10 79 11 	vmovups zmm7,ZMMWORD PTR [rcx+0x440]
  a6e806:	62 71 7c 48 10 49 10 	vmovups zmm9,ZMMWORD PTR [rcx+0x400]
  a6e80d:	62 d1 54 48 59 c1    	vmulps zmm0,zmm5,zmm9
  a6e813:	62 f2 65 48 b8 c7    	vfmadd231ps zmm0,zmm3,zmm7
  a6e819:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm0
  a6e820:	1d 
  a6e821:	62 d1 64 48 59 c1    	vmulps zmm0,zmm3,zmm9
  a6e827:	62 f2 45 48 bc c5    	vfnmadd231ps zmm0,zmm7,zmm5
  a6e82d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm0
  a6e834:	1a 
  a6e835:	62 f1 7c 48 28 05 41 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff658741]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a6e83c:	87 65 ff 
  a6e83f:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x180]
  a6e846:	06 
  a6e847:	62 f2 7d 48 7f ce    	vpermt2ps zmm1,zmm0,zmm6
  a6e84d:	62 f1 7c 48 10 1c 24 	vmovups zmm3,ZMMWORD PTR [rsp]
  a6e854:	62 f2 7d 48 7f de    	vpermt2ps zmm3,zmm0,zmm6
  a6e85a:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a6e861:	62 e1 7c 48 28 e9    	vmovaps zmm21,zmm1
  a6e867:	62 61 7c 48 28 c9    	vmovaps zmm25,zmm1
  a6e86d:	62 e2 3d 40 7f eb    	vpermt2ps zmm21,zmm24,zmm3
  a6e873:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp+0x300]
  a6e87a:	0c 
  a6e87b:	62 62 7d 48 7f e6    	vpermt2ps zmm28,zmm0,zmm6
  a6e881:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x40]
  a6e888:	ff 
  a6e889:	62 f2 7d 48 7f de    	vpermt2ps zmm3,zmm0,zmm6
  a6e88f:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a6e896:	ff 
  a6e897:	62 81 7c 48 28 d4    	vmovaps zmm18,zmm28
  a6e89d:	62 e2 3d 40 7f d3    	vpermt2ps zmm18,zmm24,zmm3
  a6e8a3:	62 e1 7c 48 10 7c 24 	vmovups zmm23,ZMMWORD PTR [rsp+0x100]
  a6e8aa:	04 
  a6e8ab:	62 e2 7d 48 7f fe    	vpermt2ps zmm23,zmm0,zmm6
  a6e8b1:	62 e2 7d 48 7f f6    	vpermt2ps zmm22,zmm0,zmm6
  a6e8b7:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm22
  a6e8be:	20 
  a6e8bf:	62 31 7c 48 28 e7    	vmovaps zmm12,zmm23
  a6e8c5:	62 32 3d 40 7f e6    	vpermt2ps zmm12,zmm24,zmm22
  a6e8cb:	62 a1 7c 48 28 d8    	vmovaps zmm19,zmm16
  a6e8d1:	62 e2 7d 48 7f de    	vpermt2ps zmm19,zmm0,zmm6
  a6e8d7:	62 62 7d 48 7f ee    	vpermt2ps zmm29,zmm0,zmm6
  a6e8dd:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm29
  a6e8e4:	1f 
  a6e8e5:	62 b1 7c 48 28 fb    	vmovaps zmm7,zmm19
  a6e8eb:	62 92 3d 40 7f fd    	vpermt2ps zmm7,zmm24,zmm29
  a6e8f1:	62 21 d5 40 15 ea    	vunpckhpd zmm29,zmm21,zmm18
  a6e8f7:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm29
  a6e8fe:	18 
  a6e8ff:	62 f1 9d 48 15 cf    	vunpckhpd zmm1,zmm12,zmm7
  a6e905:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm1
  a6e90c:	17 
  a6e90d:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a6e913:	62 62 3d 48 7f e9    	vpermt2ps zmm29,zmm8,zmm1
  a6e919:	62 62 7d 48 7f fe    	vpermt2ps zmm31,zmm0,zmm6
  a6e91f:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a6e926:	fe 
  a6e927:	62 f2 7d 48 7f ce    	vpermt2ps zmm1,zmm0,zmm6
  a6e92d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a6e934:	fe 
  a6e935:	62 91 7c 48 28 ef    	vmovaps zmm5,zmm31
  a6e93b:	62 f2 3d 40 7f e9    	vpermt2ps zmm5,zmm24,zmm1
  a6e941:	62 72 7d 48 7f f6    	vpermt2ps zmm14,zmm0,zmm6
  a6e947:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a6e94e:	01 
  a6e94f:	62 f2 7d 48 7f ce    	vpermt2ps zmm1,zmm0,zmm6
  a6e955:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a6e95c:	01 
  a6e95d:	62 c1 7c 48 28 f6    	vmovaps zmm22,zmm14
  a6e963:	62 e2 3d 40 7f f1    	vpermt2ps zmm22,zmm24,zmm1
  a6e969:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x2c0]
  a6e970:	0b 
  a6e971:	62 72 7d 48 7f de    	vpermt2ps zmm11,zmm0,zmm6
  a6e977:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x200]
  a6e97e:	08 
  a6e97f:	62 f2 7d 48 7f ce    	vpermt2ps zmm1,zmm0,zmm6
  a6e985:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a6e98c:	08 
  a6e98d:	62 c1 7c 48 28 c3    	vmovaps zmm16,zmm11
  a6e993:	62 e2 3d 40 7f c1    	vpermt2ps zmm16,zmm24,zmm1
  a6e999:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0xc0]
  a6e9a0:	03 
  a6e9a1:	62 72 7d 48 7f c6    	vpermt2ps zmm8,zmm0,zmm6
  a6e9a7:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  a6e9ad:	62 f2 7d 48 7f ce    	vpermt2ps zmm1,zmm0,zmm6
  a6e9b3:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm1
  a6e9ba:	1e 
  a6e9bb:	62 51 7c 48 28 d0    	vmovaps zmm10,zmm8
  a6e9c1:	62 72 3d 40 7f d1    	vpermt2ps zmm10,zmm24,zmm1
  a6e9c7:	62 b1 d5 48 15 de    	vunpckhpd zmm3,zmm5,zmm22
  a6e9cd:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm3
  a6e9d4:	14 
  a6e9d5:	62 d1 fd 40 15 c2    	vunpckhpd zmm0,zmm16,zmm10
  a6e9db:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm0
  a6e9e2:	13 
  a6e9e3:	62 f2 35 48 7f d8    	vpermt2ps zmm3,zmm9,zmm0
  a6e9e9:	62 41 7c 48 28 c1    	vmovaps zmm24,zmm9
  a6e9ef:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a6e9f6:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  a6e9fd:	62 f1 64 48 59 f0    	vmulps zmm6,zmm3,zmm0
  a6ea03:	62 f2 15 40 b8 f1    	vfmadd231ps zmm6,zmm29,zmm1
  a6ea09:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm6
  a6ea10:	06 
  a6ea11:	62 f1 14 40 59 c0    	vmulps zmm0,zmm29,zmm0
  a6ea17:	62 f2 75 48 bc c3    	vfnmadd231ps zmm0,zmm1,zmm3
  a6ea1d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a6ea24:	0c 
  a6ea25:	62 f1 dd 48 15 44 24 	vunpckhpd zmm0,zmm4,ZMMWORD PTR [rsp+0x240]
  a6ea2c:	09 
  a6ea2d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a6ea34:	03 
  a6ea35:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a6ea3c:	02 
  a6ea3d:	62 f1 f5 48 15 4c 24 	vunpckhpd zmm1,zmm1,ZMMWORD PTR [rsp+0x880]
  a6ea44:	22 
  a6ea45:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm1
  a6ea4c:	0a 
  a6ea4d:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x840]
  a6ea54:	21 
  a6ea55:	62 b1 e5 48 15 dc    	vunpckhpd zmm3,zmm3,zmm20
  a6ea5b:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm3
  a6ea62:	09 
  a6ea63:	62 f1 95 48 15 d2    	vunpckhpd zmm2,zmm13,zmm2
  a6ea69:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a6ea70:	02 
  a6ea71:	62 71 7c 48 28 0d c5 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6583c5]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a6ea78:	83 65 ff 
  a6ea7b:	62 f2 35 48 7f c1    	vpermt2ps zmm0,zmm9,zmm1
  a6ea81:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a6ea87:	62 f2 35 48 7f ca    	vpermt2ps zmm1,zmm9,zmm2
  a6ea8d:	62 f1 7c 48 10 51 17 	vmovups zmm2,ZMMWORD PTR [rcx+0x5c0]
  a6ea94:	62 f1 7c 48 10 59 16 	vmovups zmm3,ZMMWORD PTR [rcx+0x580]
  a6ea9b:	62 f1 74 48 59 e3    	vmulps zmm4,zmm1,zmm3
  a6eaa1:	62 f2 7d 48 b8 e2    	vfmadd231ps zmm4,zmm0,zmm2
  a6eaa7:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm4
  a6eaae:	04 
  a6eaaf:	62 f1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm3
  a6eab5:	62 f2 6d 48 bc c1    	vfnmadd231ps zmm0,zmm2,zmm1
  a6eabb:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a6eac2:	0b 
  a6eac3:	62 f1 7c 48 28 25 73 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff658473]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a6eaca:	84 65 ff 
  a6eacd:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x400]
  a6ead4:	10 
  a6ead5:	62 f2 5d 48 7f 4c 24 	vpermt2ps zmm1,zmm4,ZMMWORD PTR [rsp+0x1c0]
  a6eadc:	07 
  a6eadd:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x3c0]
  a6eae4:	0f 
  a6eae5:	62 f2 5d 48 7f 54 24 	vpermt2ps zmm2,zmm4,ZMMWORD PTR [rsp+0x380]
  a6eaec:	0e 
  a6eaed:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x140]
  a6eaf4:	05 
  a6eaf5:	62 f2 5d 48 7f 5c 24 	vpermt2ps zmm3,zmm4,ZMMWORD PTR [rsp+0x340]
  a6eafc:	0d 
  a6eafd:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x8c0]
  a6eb04:	23 
  a6eb05:	62 e2 5d 48 7f 4c 24 	vpermt2ps zmm17,zmm4,ZMMWORD PTR [rsp+0x640]
  a6eb0c:	19 
  a6eb0d:	62 f1 f5 48 15 c2    	vunpckhpd zmm0,zmm1,zmm2
  a6eb13:	62 71 7c 48 28 ea    	vmovaps zmm13,zmm2
  a6eb19:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a6eb1f:	62 b1 e5 48 15 c9    	vunpckhpd zmm1,zmm3,zmm17
  a6eb25:	62 e1 7c 48 28 e3    	vmovaps zmm20,zmm3
  a6eb2b:	62 f2 3d 40 7f c1    	vpermt2ps zmm0,zmm24,zmm1
  a6eb31:	62 62 5d 48 7f 54 24 	vpermt2ps zmm26,zmm4,ZMMWORD PTR [rsp+0x580]
  a6eb38:	16 
  a6eb39:	62 62 5d 48 7f 5c 24 	vpermt2ps zmm27,zmm4,ZMMWORD PTR [rsp+0x540]
  a6eb40:	15 
  a6eb41:	62 62 5d 48 7f 74 24 	vpermt2ps zmm30,zmm4,ZMMWORD PTR [rsp+0x940]
  a6eb48:	25 
  a6eb49:	62 72 5d 48 7f 7c 24 	vpermt2ps zmm15,zmm4,ZMMWORD PTR [rsp+0x900]
  a6eb50:	24 
  a6eb51:	62 91 ad 40 15 cb    	vunpckhpd zmm1,zmm26,zmm27
  a6eb57:	62 d1 8d 40 15 d7    	vunpckhpd zmm2,zmm30,zmm15
  a6eb5d:	62 f2 3d 40 7f ca    	vpermt2ps zmm1,zmm24,zmm2
  a6eb63:	62 f1 7c 48 10 51 1d 	vmovups zmm2,ZMMWORD PTR [rcx+0x740]
  a6eb6a:	62 f1 7c 48 10 59 1c 	vmovups zmm3,ZMMWORD PTR [rcx+0x700]
  a6eb71:	62 61 74 48 59 eb    	vmulps zmm29,zmm1,zmm3
  a6eb77:	62 62 7d 48 b8 ea    	vfmadd231ps zmm29,zmm0,zmm2
  a6eb7d:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm29
  a6eb84:	10 
  a6eb85:	62 f1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm3
  a6eb8b:	62 f2 6d 48 bc c1    	vfnmadd231ps zmm0,zmm2,zmm1
  a6eb91:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a6eb98:	07 
  a6eb99:	62 d1 cd 48 14 d5    	vunpcklpd zmm2,zmm6,zmm13
  a6eb9f:	62 b1 dd 40 14 c9    	vunpcklpd zmm1,zmm20,zmm17
  a6eba5:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm1
  a6ebac:	0d 
  a6ebad:	62 91 ad 40 14 f3    	vunpcklpd zmm6,zmm26,zmm27
  a6ebb3:	62 41 8d 40 14 df    	vunpcklpd zmm27,zmm30,zmm15
  a6ebb9:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a6ebbf:	62 f2 35 48 7f c1    	vpermt2ps zmm0,zmm9,zmm1
  a6ebc5:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a6ebcb:	62 92 35 48 7f cb    	vpermt2ps zmm1,zmm9,zmm27
  a6ebd1:	62 f1 7c 48 10 59 1b 	vmovups zmm3,ZMMWORD PTR [rcx+0x6c0]
  a6ebd8:	62 71 7c 48 10 69 1a 	vmovups zmm13,ZMMWORD PTR [rcx+0x680]
  a6ebdf:	62 51 74 48 59 fd    	vmulps zmm15,zmm1,zmm13
  a6ebe5:	62 72 7d 48 b8 fb    	vfmadd231ps zmm15,zmm0,zmm3
  a6ebeb:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm15
  a6ebf2:	0f 
  a6ebf3:	62 d1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm13
  a6ebf9:	62 f2 65 48 bc c1    	vfnmadd231ps zmm0,zmm3,zmm1
  a6ebff:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a6ec06:	05 
  a6ec07:	62 62 5d 48 7f 0c 24 	vpermt2ps zmm25,zmm4,ZMMWORD PTR [rsp]
  a6ec0e:	62 62 5d 48 7f 64 24 	vpermt2ps zmm28,zmm4,ZMMWORD PTR [rsp-0x40]
  a6ec15:	ff 
  a6ec16:	62 e2 5d 48 7f 7c 24 	vpermt2ps zmm23,zmm4,ZMMWORD PTR [rsp+0x800]
  a6ec1d:	20 
  a6ec1e:	62 e2 5d 48 7f 5c 24 	vpermt2ps zmm19,zmm4,ZMMWORD PTR [rsp+0x7c0]
  a6ec25:	1f 
  a6ec26:	62 62 5d 48 7f 7c 24 	vpermt2ps zmm31,zmm4,ZMMWORD PTR [rsp-0x80]
  a6ec2d:	fe 
  a6ec2e:	62 72 5d 48 7f 74 24 	vpermt2ps zmm14,zmm4,ZMMWORD PTR [rsp+0x40]
  a6ec35:	01 
  a6ec36:	62 72 5d 48 7f 5c 24 	vpermt2ps zmm11,zmm4,ZMMWORD PTR [rsp+0x200]
  a6ec3d:	08 
  a6ec3e:	62 72 5d 48 7f 44 24 	vpermt2ps zmm8,zmm4,ZMMWORD PTR [rsp+0x780]
  a6ec45:	1e 
  a6ec46:	62 01 b5 40 15 f4    	vunpckhpd zmm30,zmm25,zmm28
  a6ec4c:	62 81 7c 48 28 c9    	vmovaps zmm17,zmm25
  a6ec52:	62 31 c5 40 15 eb    	vunpckhpd zmm13,zmm23,zmm19
  a6ec58:	62 91 7c 48 28 c6    	vmovaps zmm0,zmm30
  a6ec5e:	62 d2 35 48 7f c5    	vpermt2ps zmm0,zmm9,zmm13
  a6ec64:	62 d1 85 40 15 ce    	vunpckhpd zmm1,zmm31,zmm14
  a6ec6a:	62 41 a5 48 15 d0    	vunpckhpd zmm26,zmm11,zmm8
  a6ec70:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a6ec76:	62 92 35 48 7f da    	vpermt2ps zmm3,zmm9,zmm26
  a6ec7c:	62 71 7c 48 10 79 0f 	vmovups zmm15,ZMMWORD PTR [rcx+0x3c0]
  a6ec83:	62 61 7c 48 10 41 0e 	vmovups zmm24,ZMMWORD PTR [rcx+0x380]
  a6ec8a:	62 01 64 48 59 c8    	vmulps zmm25,zmm3,zmm24
  a6ec90:	62 42 7d 48 b8 cf    	vfmadd231ps zmm25,zmm0,zmm15
  a6ec96:	62 81 7c 48 59 e0    	vmulps zmm20,zmm0,zmm24
  a6ec9c:	62 e2 05 48 bc e3    	vfnmadd231ps zmm20,zmm15,zmm3
  a6eca2:	62 b1 d5 40 14 c2    	vunpcklpd zmm0,zmm21,zmm18
  a6eca8:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a6ecaf:	62 f1 9d 48 14 e7    	vunpcklpd zmm4,zmm12,zmm7
  a6ecb5:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm4
  a6ecbc:	0e 
  a6ecbd:	62 b1 d5 48 14 de    	vunpcklpd zmm3,zmm5,zmm22
  a6ecc3:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a6ecca:	ff 
  a6eccb:	62 c1 fd 40 14 c2    	vunpcklpd zmm16,zmm16,zmm10
  a6ecd1:	62 f2 35 48 7f c4    	vpermt2ps zmm0,zmm9,zmm4
  a6ecd7:	62 b2 35 48 7f d8    	vpermt2ps zmm3,zmm9,zmm16
  a6ecdd:	62 f1 7c 48 10 69 02 	vmovups zmm5,ZMMWORD PTR [rcx+0x80]
  a6ece4:	62 f1 7c 48 10 79 03 	vmovups zmm7,ZMMWORD PTR [rcx+0xc0]
  a6eceb:	62 e1 64 48 59 d5    	vmulps zmm18,zmm3,zmm5
  a6ecf1:	62 e2 7d 48 b8 d7    	vfmadd231ps zmm18,zmm0,zmm7
  a6ecf7:	62 71 7c 48 59 fd    	vmulps zmm15,zmm0,zmm5
  a6ecfd:	62 72 45 48 bc fb    	vfnmadd231ps zmm15,zmm7,zmm3
  a6ed03:	62 91 f5 40 14 c4    	vunpcklpd zmm0,zmm17,zmm28
  a6ed09:	62 21 c5 40 14 eb    	vunpcklpd zmm29,zmm23,zmm19
  a6ed0f:	62 d1 85 40 14 de    	vunpcklpd zmm3,zmm31,zmm14
  a6ed15:	62 c1 a5 48 14 d8    	vunpcklpd zmm19,zmm11,zmm8
  a6ed1b:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a6ed21:	62 71 7c 48 28 1d d5 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6580d5]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a6ed28:	80 65 ff 
  a6ed2b:	62 92 25 48 7f c5    	vpermt2ps zmm0,zmm11,zmm29
  a6ed31:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a6ed37:	62 b2 25 48 7f db    	vpermt2ps zmm3,zmm11,zmm19
  a6ed3d:	62 f1 7c 48 10 61 09 	vmovups zmm4,ZMMWORD PTR [rcx+0x240]
  a6ed44:	62 71 7c 48 10 41 08 	vmovups zmm8,ZMMWORD PTR [rcx+0x200]
  a6ed4b:	62 c1 64 48 59 f0    	vmulps zmm22,zmm3,zmm8
  a6ed51:	62 e2 7d 48 b8 f4    	vfmadd231ps zmm22,zmm0,zmm4
  a6ed57:	62 c1 7c 48 59 f8    	vmulps zmm23,zmm0,zmm8
  a6ed5d:	62 e2 5d 48 bc fb    	vfnmadd231ps zmm23,zmm4,zmm3
  a6ed63:	62 92 25 48 7f ca    	vpermt2ps zmm1,zmm11,zmm26
  a6ed69:	62 42 25 48 7f f5    	vpermt2ps zmm30,zmm11,zmm13
  a6ed6f:	62 f1 7c 48 10 41 0d 	vmovups zmm0,ZMMWORD PTR [rcx+0x340]
  a6ed76:	62 f1 7c 48 10 59 0c 	vmovups zmm3,ZMMWORD PTR [rcx+0x300]
  a6ed7d:	62 e1 0c 40 59 cb    	vmulps zmm17,zmm30,zmm3
  a6ed83:	62 e2 75 48 bc c8    	vfnmadd231ps zmm17,zmm1,zmm0
  a6ed89:	62 71 74 48 59 f3    	vmulps zmm14,zmm1,zmm3
  a6ed8f:	62 12 7d 48 b8 f6    	vfmadd231ps zmm14,zmm0,zmm30
  a6ed95:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x700]
  a6ed9c:	1c 
  a6ed9d:	62 f2 35 48 7f 64 24 	vpermt2ps zmm4,zmm9,ZMMWORD PTR [rsp+0x6c0]
  a6eda4:	1b 
  a6eda5:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x480]
  a6edac:	12 
  a6edad:	62 f2 35 48 7f 5c 24 	vpermt2ps zmm3,zmm9,ZMMWORD PTR [rsp+0x440]
  a6edb4:	11 
  a6edb5:	62 f1 7c 48 10 41 13 	vmovups zmm0,ZMMWORD PTR [rcx+0x4c0]
  a6edbc:	62 f1 7c 48 10 49 12 	vmovups zmm1,ZMMWORD PTR [rcx+0x480]
  a6edc3:	62 61 64 48 59 f1    	vmulps zmm30,zmm3,zmm1
  a6edc9:	62 62 5d 48 bc f0    	vfnmadd231ps zmm30,zmm4,zmm0
  a6edcf:	62 61 5c 48 59 e1    	vmulps zmm28,zmm4,zmm1
  a6edd5:	62 62 7d 48 b8 e3    	vfmadd231ps zmm28,zmm0,zmm3
  a6eddb:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x500]
  a6ede2:	14 
  a6ede3:	62 72 35 48 7f 44 24 	vpermt2ps zmm8,zmm9,ZMMWORD PTR [rsp+0x4c0]
  a6edea:	13 
  a6edeb:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x600]
  a6edf2:	18 
  a6edf3:	62 f2 35 48 7f 64 24 	vpermt2ps zmm4,zmm9,ZMMWORD PTR [rsp+0x5c0]
  a6edfa:	17 
  a6edfb:	62 f1 7c 48 10 41 07 	vmovups zmm0,ZMMWORD PTR [rcx+0x1c0]
  a6ee02:	62 f1 7c 48 10 59 06 	vmovups zmm3,ZMMWORD PTR [rcx+0x180]
  a6ee09:	62 71 5c 48 59 d3    	vmulps zmm10,zmm4,zmm3
  a6ee0f:	62 72 3d 48 bc d0    	vfnmadd231ps zmm10,zmm8,zmm0
  a6ee15:	62 71 3c 48 59 eb    	vmulps zmm13,zmm8,zmm3
  a6ee1b:	62 72 7d 48 b8 ec    	vfmadd231ps zmm13,zmm0,zmm4
  a6ee21:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a6ee27:	62 92 25 48 7f f3    	vpermt2ps zmm6,zmm11,zmm27
  a6ee2d:	62 f2 25 48 7f 54 24 	vpermt2ps zmm2,zmm11,ZMMWORD PTR [rsp+0x340]
  a6ee34:	0d 
  a6ee35:	62 71 7c 48 10 59 19 	vmovups zmm11,ZMMWORD PTR [rcx+0x640]
  a6ee3c:	62 f1 7c 48 10 41 18 	vmovups zmm0,ZMMWORD PTR [rcx+0x600]
  a6ee43:	62 f1 6c 48 59 d8    	vmulps zmm3,zmm2,zmm0
  a6ee49:	62 d2 4d 48 bc db    	vfnmadd231ps zmm3,zmm6,zmm11
  a6ee4f:	62 71 4c 48 59 c0    	vmulps zmm8,zmm6,zmm0
  a6ee55:	62 72 25 48 b8 c2    	vfmadd231ps zmm8,zmm11,zmm2
  a6ee5b:	62 12 35 48 7f e5    	vpermt2ps zmm12,zmm9,zmm29
  a6ee61:	62 b2 35 48 7f eb    	vpermt2ps zmm5,zmm9,zmm19
  a6ee67:	62 f1 7c 48 10 51 0b 	vmovups zmm2,ZMMWORD PTR [rcx+0x2c0]
  a6ee6e:	62 f1 7c 48 10 71 0a 	vmovups zmm6,ZMMWORD PTR [rcx+0x280]
  a6ee75:	62 71 54 48 59 ce    	vmulps zmm9,zmm5,zmm6
  a6ee7b:	62 72 1d 48 b8 ca    	vfmadd231ps zmm9,zmm12,zmm2
  a6ee81:	62 41 7c 48 28 f9    	vmovaps zmm31,zmm9
  a6ee87:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm9
  a6ee8e:	18 
  a6ee8f:	62 f1 1c 48 59 f6    	vmulps zmm6,zmm12,zmm6
  a6ee95:	62 f2 6d 48 bc f5    	vfnmadd231ps zmm6,zmm2,zmm5
  a6ee9b:	62 e1 7c 48 28 de    	vmovaps zmm19,zmm6
  a6eea1:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm6
  a6eea8:	12 
  a6eea9:	62 f1 7c 48 28 d4    	vmovaps zmm2,zmm4
  a6eeaf:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0xc0]
  a6eeb6:	03 
  a6eeb7:	62 f2 6d 48 7f 64 24 	vpermt2ps zmm4,zmm2,ZMMWORD PTR [rsp+0x280]
  a6eebe:	0a 
  a6eebf:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x240]
  a6eec6:	09 
  a6eec7:	62 f2 6d 48 7f 74 24 	vpermt2ps zmm6,zmm2,ZMMWORD PTR [rsp+0x80]
  a6eece:	02 
  a6eecf:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a6eed5:	62 f1 7c 48 10 51 15 	vmovups zmm2,ZMMWORD PTR [rcx+0x540]
  a6eedc:	62 f1 7c 48 10 69 14 	vmovups zmm5,ZMMWORD PTR [rcx+0x500]
  a6eee3:	62 f1 4c 48 59 c5    	vmulps zmm0,zmm6,zmm5
  a6eee9:	62 f2 5d 48 b8 c2    	vfmadd231ps zmm0,zmm4,zmm2
  a6eeef:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a6eef6:	11 
  a6eef7:	62 f1 5c 48 59 c5    	vmulps zmm0,zmm4,zmm5
  a6eefd:	62 f2 6d 48 bc c6    	vfnmadd231ps zmm0,zmm2,zmm6
  a6ef03:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a6ef09:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a6ef10:	fe 
  a6ef11:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a6ef18:	ff 
  a6ef19:	62 b2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm16
  a6ef1f:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a6ef26:	ff 
  a6ef27:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x2c0]
  a6ef2e:	0b 
  a6ef2f:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x1c0]
  a6ef36:	07 
  a6ef37:	62 f1 6c 48 5c c4    	vsubps zmm0,zmm2,zmm4
  a6ef3d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a6ef44:	02 
  a6ef45:	62 e1 6c 48 58 c4    	vaddps zmm16,zmm2,zmm4
  a6ef4b:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm16
  a6ef52:	01 
  a6ef53:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x680]
  a6ef5a:	1a 
  a6ef5b:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x300]
  a6ef62:	0c 
  a6ef63:	62 61 5c 48 5c dd    	vsubps zmm27,zmm4,zmm5
  a6ef69:	62 e1 5c 48 58 ed    	vaddps zmm21,zmm4,zmm5
  a6ef6f:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm21
  a6ef76:	08 
  a6ef77:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x740]
  a6ef7e:	1d 
  a6ef7f:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x180]
  a6ef86:	06 
  a6ef87:	62 71 5c 48 58 e5    	vaddps zmm12,zmm4,zmm5
  a6ef8d:	62 f1 5c 48 5c cd    	vsubps zmm1,zmm4,zmm5
  a6ef93:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a6ef9a:	03 
  a6ef9b:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x100]
  a6efa2:	04 
  a6efa3:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x400]
  a6efaa:	10 
  a6efab:	62 71 5c 48 58 cd    	vaddps zmm9,zmm4,zmm5
  a6efb1:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm9
  a6efb8:	19 
  a6efb9:	62 f1 5c 48 5c fd    	vsubps zmm7,zmm4,zmm5
  a6efbf:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm7
  a6efc6:	04 
  a6efc7:	62 21 04 48 5c d7    	vsubps zmm26,zmm15,zmm23
  a6efcd:	62 b1 04 48 58 ef    	vaddps zmm5,zmm15,zmm23
  a6efd3:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm5
  a6efda:	0c 
  a6efdb:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a6efe2:	05 
  a6efe3:	62 21 7c 48 5c c4    	vsubps zmm24,zmm0,zmm20
  a6efe9:	62 31 7c 48 58 fc    	vaddps zmm15,zmm0,zmm20
  a6efef:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x3c0]
  a6eff6:	0f 
  a6eff7:	62 91 5c 48 58 f1    	vaddps zmm6,zmm4,zmm25
  a6effd:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm6
  a6f004:	09 
  a6f005:	62 91 5c 48 5c c1    	vsubps zmm0,zmm4,zmm25
  a6f00b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a6f012:	05 
  a6f013:	62 b1 6c 40 58 d6    	vaddps zmm2,zmm18,zmm22
  a6f019:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm2
  a6f020:	0a 
  a6f021:	62 a1 6c 40 5c d6    	vsubps zmm18,zmm18,zmm22
  a6f027:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm18
  a6f02e:	06 
  a6f02f:	62 62 7d 48 18 0d af 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff6066af]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a6f036:	66 60 ff 
  a6f039:	62 81 7c 48 28 e1    	vmovaps zmm20,zmm25
  a6f03f:	62 a2 55 40 a8 e3    	vfmadd213ps zmm20,zmm21,zmm19
  a6f045:	62 e2 7d 48 18 35 f5 	vbroadcastss zmm22,DWORD PTR [rip+0xffffffffff6065f5]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a6f04c:	65 60 ff 
  a6f04f:	62 a2 7d 40 bc e6    	vfnmadd231ps zmm20,zmm16,zmm22
  a6f055:	62 f2 7d 48 18 25 f9 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff6066f9]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a6f05c:	66 60 ff 
  a6f05f:	62 71 44 48 59 dc    	vmulps zmm11,zmm7,zmm4
  a6f065:	62 e2 7d 48 18 1d 31 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff606331]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a6f06c:	63 60 ff 
  a6f06f:	62 32 75 48 b8 db    	vfmadd231ps zmm11,zmm1,zmm19
  a6f075:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm11
  a6f07c:	07 
  a6f07d:	62 81 7c 48 28 e9    	vmovaps zmm21,zmm25
  a6f083:	62 82 05 48 a8 ed    	vfmadd213ps zmm21,zmm15,zmm29
  a6f089:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm15
  a6f090:	0b 
  a6f091:	62 a2 55 48 bc ee    	vfnmadd231ps zmm21,zmm5,zmm22
  a6f097:	62 e1 6c 40 59 fc    	vmulps zmm23,zmm18,zmm4
  a6f09d:	62 a2 7d 48 b8 fb    	vfmadd231ps zmm23,zmm0,zmm19
  a6f0a3:	62 c1 5c 40 5c c3    	vsubps zmm16,zmm20,zmm11
  a6f0a9:	62 a1 54 40 5c d7    	vsubps zmm18,zmm21,zmm23
  a6f0af:	62 b1 7c 40 5c ea    	vsubps zmm5,zmm16,zmm18
  a6f0b5:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm5
  a6f0bc:	1d 
  a6f0bd:	62 b1 7c 40 58 ea    	vaddps zmm5,zmm16,zmm18
  a6f0c3:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm5
  a6f0ca:	1b 
  a6f0cb:	62 91 74 40 5c ee    	vsubps zmm5,zmm17,zmm30
  a6f0d1:	62 91 74 40 58 fe    	vaddps zmm7,zmm17,zmm30
  a6f0d7:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm7
  a6f0de:	1a 
  a6f0df:	62 e1 2c 48 5c d3    	vsubps zmm18,zmm10,zmm3
  a6f0e5:	62 f1 2c 48 58 cb    	vaddps zmm1,zmm10,zmm3
  a6f0eb:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a6f0f2:	0f 
  a6f0f3:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a6f0fa:	62 f1 7c 48 28 05 fc 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff657cfc]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a6f101:	7c 65 ff 
  a6f104:	62 f2 7d 48 7f 4c 24 	vpermt2ps zmm1,zmm0,ZMMWORD PTR [rsp+0x380]
  a6f10b:	0e 
  a6f10c:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a6f113:	62 d1 14 48 58 c8    	vaddps zmm1,zmm13,zmm8
  a6f119:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm1
  a6f120:	0e 
  a6f121:	62 41 14 48 5c e8    	vsubps zmm29,zmm13,zmm8
  a6f127:	62 91 0c 48 58 cc    	vaddps zmm1,zmm14,zmm28
  a6f12d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm1
  a6f134:	0d 
  a6f135:	62 81 0c 48 5c cc    	vsubps zmm17,zmm14,zmm28
  a6f13b:	62 01 7c 48 28 e1    	vmovaps zmm28,zmm25
  a6f141:	62 02 1d 48 a8 e7    	vfmadd213ps zmm28,zmm12,zmm31
  a6f147:	62 d1 7c 48 28 dc    	vmovaps zmm3,zmm12
  a6f14d:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm12
  a6f154:	13 
  a6f155:	62 22 35 48 bc e6    	vfnmadd231ps zmm28,zmm9,zmm22
  a6f15b:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x80]
  a6f162:	02 
  a6f163:	62 61 44 48 59 f4    	vmulps zmm30,zmm7,zmm4
  a6f169:	62 22 25 40 b8 f3    	vfmadd231ps zmm30,zmm27,zmm19
  a6f16f:	62 01 7c 48 28 f9    	vmovaps zmm31,zmm25
  a6f175:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x440]
  a6f17c:	11 
  a6f17d:	62 42 4d 48 a8 fa    	vfmadd213ps zmm31,zmm6,zmm10
  a6f183:	62 22 6d 48 bc fe    	vfnmadd231ps zmm31,zmm2,zmm22
  a6f189:	62 71 2c 40 59 e4    	vmulps zmm12,zmm26,zmm4
  a6f18f:	62 32 3d 40 b8 e3    	vfmadd231ps zmm12,zmm24,zmm19
  a6f195:	62 91 1c 40 58 ce    	vaddps zmm1,zmm28,zmm30
  a6f19b:	62 d1 04 40 58 c4    	vaddps zmm0,zmm31,zmm12
  a6f1a1:	62 f1 74 48 58 d0    	vaddps zmm2,zmm1,zmm0
  a6f1a7:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm2
  a6f1ae:	10 
  a6f1af:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a6f1b5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm0
  a6f1bc:	1c 
  a6f1bd:	62 71 24 40 59 c4    	vmulps zmm8,zmm27,zmm4
  a6f1c3:	62 72 65 40 bc c7    	vfnmadd231ps zmm8,zmm19,zmm7
  a6f1c9:	62 f1 3c 40 59 fc    	vmulps zmm7,zmm24,zmm4
  a6f1cf:	62 92 65 40 bc fa    	vfnmadd231ps zmm7,zmm19,zmm26
  a6f1d5:	62 71 54 48 59 dc    	vmulps zmm11,zmm5,zmm4
  a6f1db:	62 32 6d 40 b8 db    	vfmadd231ps zmm11,zmm18,zmm19
  a6f1e1:	62 e1 6c 40 59 c4    	vmulps zmm16,zmm18,zmm4
  a6f1e7:	62 e2 65 40 bc c5    	vfnmadd231ps zmm16,zmm19,zmm5
  a6f1ed:	62 71 5c 48 59 4c 24 	vmulps zmm9,zmm4,ZMMWORD PTR [rsp+0xc0]
  a6f1f4:	03 
  a6f1f5:	62 72 65 40 bc 4c 24 	vfnmadd231ps zmm9,zmm19,ZMMWORD PTR [rsp+0x100]
  a6f1fc:	04 
  a6f1fd:	62 71 5c 48 59 6c 24 	vmulps zmm13,zmm4,ZMMWORD PTR [rsp+0x140]
  a6f204:	05 
  a6f205:	62 72 65 40 bc 6c 24 	vfnmadd231ps zmm13,zmm19,ZMMWORD PTR [rsp+0x180]
  a6f20c:	06 
  a6f20d:	62 21 7c 48 28 c6    	vmovaps zmm24,zmm22
  a6f213:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x480]
  a6f21a:	12 
  a6f21b:	62 62 7d 48 9c 44 24 	vfnmadd132ps zmm24,zmm0,ZMMWORD PTR [rsp+0x200]
  a6f222:	08 
  a6f223:	62 62 35 40 b8 44 24 	vfmadd231ps zmm24,zmm25,ZMMWORD PTR [rsp+0x40]
  a6f22a:	01 
  a6f22b:	62 b1 7c 48 28 ce    	vmovaps zmm1,zmm22
  a6f231:	62 f2 05 48 ac 4c 24 	vfnmadd213ps zmm1,zmm15,ZMMWORD PTR [rsp-0x80]
  a6f238:	fe 
  a6f239:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp+0x300]
  a6f240:	0c 
  a6f241:	62 92 2d 40 b8 c9    	vfmadd231ps zmm1,zmm26,zmm25
  a6f247:	62 d1 3c 40 5c e9    	vsubps zmm5,zmm24,zmm9
  a6f24d:	62 d1 74 48 5c f5    	vsubps zmm6,zmm1,zmm13
  a6f253:	62 f1 54 48 5c c6    	vsubps zmm0,zmm5,zmm6
  a6f259:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a6f260:	05 
  a6f261:	62 f1 54 48 58 c6    	vaddps zmm0,zmm5,zmm6
  a6f267:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a6f26e:	06 
  a6f26f:	62 71 74 40 59 f4    	vmulps zmm14,zmm17,zmm4
  a6f275:	62 32 15 40 b8 f3    	vfmadd231ps zmm14,zmm29,zmm19
  a6f27b:	62 f1 14 40 59 f4    	vmulps zmm6,zmm29,zmm4
  a6f281:	62 b2 65 40 bc f1    	vfnmadd231ps zmm6,zmm19,zmm17
  a6f287:	62 a1 7c 48 28 de    	vmovaps zmm19,zmm22
  a6f28d:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x600]
  a6f294:	18 
  a6f295:	62 a2 65 48 ac da    	vfnmadd213ps zmm19,zmm3,zmm18
  a6f29b:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x640]
  a6f2a2:	19 
  a6f2a3:	62 82 15 40 b8 d9    	vfmadd231ps zmm19,zmm29,zmm25
  a6f2a9:	62 b1 7c 48 28 c6    	vmovaps zmm0,zmm22
  a6f2af:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x240]
  a6f2b6:	09 
  a6f2b7:	62 d2 75 40 ac c2    	vfnmadd213ps zmm0,zmm17,zmm10
  a6f2bd:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x280]
  a6f2c4:	0a 
  a6f2c5:	62 92 05 48 b8 c1    	vfmadd231ps zmm0,zmm15,zmm25
  a6f2cb:	62 d1 64 40 58 e8    	vaddps zmm5,zmm19,zmm8
  a6f2d1:	62 71 7c 48 58 d7    	vaddps zmm10,zmm0,zmm7
  a6f2d7:	62 d1 54 48 58 d2    	vaddps zmm2,zmm5,zmm10
  a6f2dd:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a6f2e4:	02 
  a6f2e5:	62 d1 54 48 5c d2    	vsubps zmm2,zmm5,zmm10
  a6f2eb:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a6f2f2:	03 
  a6f2f3:	62 31 7c 48 28 d6    	vmovaps zmm10,zmm22
  a6f2f9:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a6f300:	ff 
  a6f301:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x380]
  a6f308:	0e 
  a6f309:	62 72 6d 48 ac d4    	vfnmadd213ps zmm10,zmm2,zmm4
  a6f30f:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x340]
  a6f316:	0d 
  a6f317:	62 12 65 48 b8 d1    	vfmadd231ps zmm10,zmm3,zmm25
  a6f31d:	62 d1 7c 40 58 ea    	vaddps zmm5,zmm16,zmm10
  a6f323:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm5
  a6f32a:	15 
  a6f32b:	62 31 2c 48 5c d0    	vsubps zmm10,zmm10,zmm16
  a6f331:	62 d1 64 40 5c e8    	vsubps zmm5,zmm19,zmm8
  a6f337:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm5
  a6f33e:	17 
  a6f33f:	62 f1 7c 48 5c c7    	vsubps zmm0,zmm0,zmm7
  a6f345:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm0
  a6f34c:	16 
  a6f34d:	62 b1 7c 48 28 c6    	vmovaps zmm0,zmm22
  a6f353:	62 71 7c 48 10 04 24 	vmovups zmm8,ZMMWORD PTR [rsp]
  a6f35a:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x3c0]
  a6f361:	0f 
  a6f362:	62 d2 55 48 ac c0    	vfnmadd213ps zmm0,zmm5,zmm8
  a6f368:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x680]
  a6f36f:	1a 
  a6f370:	62 92 7d 40 b8 c1    	vfmadd231ps zmm0,zmm16,zmm25
  a6f376:	62 f1 7c 48 5c fe    	vsubps zmm7,zmm0,zmm6
  a6f37c:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm7
  a6f383:	14 
  a6f384:	62 61 7c 48 58 de    	vaddps zmm27,zmm0,zmm6
  a6f38a:	62 41 3c 40 58 c1    	vaddps zmm24,zmm24,zmm9
  a6f390:	62 c1 74 48 58 dd    	vaddps zmm19,zmm1,zmm13
  a6f396:	62 91 1c 40 5c ce    	vsubps zmm1,zmm28,zmm30
  a6f39c:	62 51 04 40 5c cc    	vsubps zmm9,zmm31,zmm12
  a6f3a2:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a6f3a8:	62 f2 6d 48 a8 c4    	vfmadd213ps zmm0,zmm2,zmm4
  a6f3ae:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a6f3b4:	62 61 7c 48 28 f4    	vmovaps zmm30,zmm4
  a6f3ba:	62 b2 65 48 bc c6    	vfnmadd231ps zmm0,zmm3,zmm22
  a6f3c0:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a6f3c6:	62 61 24 48 58 f8    	vaddps zmm31,zmm11,zmm0
  a6f3cc:	62 41 7c 48 5c e3    	vsubps zmm28,zmm0,zmm11
  a6f3d2:	62 f1 5c 40 58 64 24 	vaddps zmm4,zmm20,ZMMWORD PTR [rsp+0x1c0]
  a6f3d9:	07 
  a6f3da:	62 31 54 40 58 e7    	vaddps zmm12,zmm21,zmm23
  a6f3e0:	62 d1 5c 48 5c c4    	vsubps zmm0,zmm4,zmm12
  a6f3e6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a6f3ed:	07 
  a6f3ee:	62 c1 5c 48 58 e4    	vaddps zmm20,zmm4,zmm12
  a6f3f4:	62 42 55 48 a8 c8    	vfmadd213ps zmm25,zmm5,zmm8
  a6f3fa:	62 22 7d 40 bc ce    	vfnmadd231ps zmm25,zmm16,zmm22
  a6f400:	62 31 7c 48 28 e0    	vmovaps zmm12,zmm16
  a6f406:	62 51 34 40 5c ee    	vsubps zmm13,zmm25,zmm14
  a6f40c:	62 c1 34 40 58 ee    	vaddps zmm21,zmm25,zmm14
  a6f412:	62 c1 74 48 58 f9    	vaddps zmm23,zmm1,zmm9
  a6f418:	62 d1 74 48 5c c9    	vsubps zmm1,zmm1,zmm9
  a6f41e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a6f425:	04 
  a6f426:	62 f1 6c 40 58 54 24 	vaddps zmm2,zmm18,ZMMWORD PTR [rsp+0x4c0]
  a6f42d:	13 
  a6f42e:	62 91 6c 48 58 d5    	vaddps zmm2,zmm2,zmm29
  a6f434:	62 f1 74 40 58 5c 24 	vaddps zmm3,zmm17,ZMMWORD PTR [rsp+0x440]
  a6f43b:	11 
  a6f43c:	62 d1 64 48 58 df    	vaddps zmm3,zmm3,zmm15
  a6f442:	62 91 44 48 58 e6    	vaddps zmm4,zmm7,zmm30
  a6f448:	62 71 4c 48 58 dc    	vaddps zmm11,zmm6,zmm4
  a6f44e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x480]
  a6f455:	12 
  a6f456:	62 f1 74 48 58 64 24 	vaddps zmm4,zmm1,ZMMWORD PTR [rsp+0x200]
  a6f45d:	08 
  a6f45e:	62 f1 5c 48 58 64 24 	vaddps zmm4,zmm4,ZMMWORD PTR [rsp+0x40]
  a6f465:	01 
  a6f466:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x2c0]
  a6f46d:	0b 
  a6f46e:	62 71 74 48 58 74 24 	vaddps zmm14,zmm1,ZMMWORD PTR [rsp-0x80]
  a6f475:	fe 
  a6f476:	62 11 0c 48 58 f2    	vaddps zmm14,zmm14,zmm26
  a6f47c:	62 c1 5c 48 5c f6    	vsubps zmm22,zmm4,zmm14
  a6f482:	62 c1 5c 48 58 c6    	vaddps zmm16,zmm4,zmm14
  a6f488:	62 f1 3c 48 58 e5    	vaddps zmm4,zmm8,zmm5
  a6f48e:	62 f2 7d 48 18 05 c8 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff605fc8]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a6f495:	5f 60 ff 
  a6f498:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a6f49e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x400]
  a6f4a5:	10 
  a6f4a6:	62 02 75 48 ac d7    	vfnmadd213ps zmm26,zmm1,zmm31
  a6f4ac:	62 c1 5c 48 58 cc    	vaddps zmm17,zmm4,zmm12
  a6f4b2:	62 e1 6c 48 58 d3    	vaddps zmm18,zmm2,zmm3
  a6f4b8:	62 61 6c 48 5c eb    	vsubps zmm29,zmm2,zmm3
  a6f4be:	62 61 7c 48 28 f0    	vmovaps zmm30,zmm0
  a6f4c4:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x6c0]
  a6f4cb:	1b 
  a6f4cc:	62 42 3d 48 ac f5    	vfnmadd213ps zmm30,zmm8,zmm13
  a6f4d2:	62 71 04 40 58 e1    	vaddps zmm12,zmm31,zmm1
  a6f4d8:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a6f4de:	62 61 7c 48 10 4c 24 	vmovups zmm25,ZMMWORD PTR [rsp+0x80]
  a6f4e5:	02 
  a6f4e6:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x540]
  a6f4ed:	15 
  a6f4ee:	62 f2 35 40 ac df    	vfnmadd213ps zmm3,zmm25,zmm7
  a6f4f4:	62 f2 7d 48 18 15 d6 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff605dd6]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a6f4fb:	5d 60 ff 
  a6f4fe:	62 71 6c 48 59 74 24 	vmulps zmm14,zmm2,ZMMWORD PTR [rsp+0x140]
  a6f505:	05 
  a6f506:	62 d1 14 48 58 c8    	vaddps zmm1,zmm13,zmm8
  a6f50c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a6f513:	ff 
  a6f514:	62 51 64 48 5c fe    	vsubps zmm15,zmm3,zmm14
  a6f51a:	62 51 64 48 58 ee    	vaddps zmm13,zmm3,zmm14
  a6f520:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a6f526:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x180]
  a6f52d:	06 
  a6f52e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x500]
  a6f535:	14 
  a6f536:	62 f2 5d 48 ac d9    	vfnmadd213ps zmm3,zmm4,zmm1
  a6f53c:	62 f1 6c 48 59 6c 24 	vmulps zmm5,zmm2,ZMMWORD PTR [rsp+0xc0]
  a6f543:	03 
  a6f544:	62 f1 64 48 58 f5    	vaddps zmm6,zmm3,zmm5
  a6f54a:	62 f1 7c 48 11 34 24 	vmovups ZMMWORD PTR [rsp],zmm6
  a6f551:	62 f1 64 48 5c dd    	vsubps zmm3,zmm3,zmm5
  a6f557:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a6f55e:	01 
  a6f55f:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x5c0]
  a6f566:	17 
  a6f567:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x580]
  a6f56e:	16 
  a6f56f:	62 61 64 48 58 fe    	vaddps zmm31,zmm3,zmm6
  a6f575:	62 91 2c 48 58 ef    	vaddps zmm5,zmm10,zmm31
  a6f57b:	62 42 7d 48 ac fa    	vfnmadd213ps zmm31,zmm0,zmm10
  a6f581:	62 31 3c 40 58 d3    	vaddps zmm10,zmm24,zmm19
  a6f587:	62 31 3c 40 5c c3    	vsubps zmm8,zmm24,zmm19
  a6f58d:	62 51 24 40 58 ca    	vaddps zmm9,zmm27,zmm10
  a6f593:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm9
  a6f59a:	fe 
  a6f59b:	62 12 7d 48 ac d3    	vfnmadd213ps zmm10,zmm0,zmm27
  a6f5a1:	62 f1 64 48 5c de    	vsubps zmm3,zmm3,zmm6
  a6f5a7:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a6f5ad:	62 12 45 40 ac cc    	vfnmadd213ps zmm9,zmm23,zmm28
  a6f5b3:	62 a1 1c 40 58 ff    	vaddps zmm23,zmm28,zmm23
  a6f5b9:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a6f5bf:	62 22 5d 40 ac c5    	vfnmadd213ps zmm24,zmm20,zmm21
  a6f5c5:	62 a1 54 40 58 e4    	vaddps zmm20,zmm21,zmm20
  a6f5cb:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a6f5d1:	62 d2 6d 40 ac f3    	vfnmadd213ps zmm6,zmm18,zmm11
  a6f5d7:	62 e1 4c 40 59 ea    	vmulps zmm21,zmm22,zmm2
  a6f5dd:	62 a1 4c 48 5c f5    	vsubps zmm22,zmm6,zmm21
  a6f5e3:	62 a1 4c 48 58 ed    	vaddps zmm21,zmm6,zmm21
  a6f5e9:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a6f5ef:	62 b2 7d 40 ac f1    	vfnmadd213ps zmm6,zmm16,zmm17
  a6f5f5:	62 61 14 40 59 e2    	vmulps zmm28,zmm29,zmm2
  a6f5fb:	62 01 4c 48 58 ec    	vaddps zmm29,zmm6,zmm28
  a6f601:	62 01 4c 48 5c e4    	vsubps zmm28,zmm6,zmm28
  a6f607:	62 f1 6c 48 59 44 24 	vmulps zmm0,zmm2,ZMMWORD PTR [rsp+0x740]
  a6f60e:	1d 
  a6f60f:	62 f1 2c 40 58 f0    	vaddps zmm6,zmm26,zmm0
  a6f615:	62 f1 2c 40 5c c0    	vsubps zmm0,zmm26,zmm0
  a6f61b:	62 61 6c 48 59 54 24 	vmulps zmm26,zmm2,ZMMWORD PTR [rsp+0x700]
  a6f622:	1c 
  a6f623:	62 11 0c 40 5c f2    	vsubps zmm14,zmm30,zmm26
  a6f629:	62 01 0c 40 58 d2    	vaddps zmm26,zmm30,zmm26
  a6f62f:	62 01 44 48 58 c9    	vaddps zmm25,zmm7,zmm25
  a6f635:	62 e1 74 48 58 dc    	vaddps zmm19,zmm1,zmm4
  a6f63b:	62 f1 3c 48 59 ca    	vmulps zmm1,zmm8,zmm2
  a6f641:	62 61 04 40 5c d9    	vsubps zmm27,zmm31,zmm1
  a6f647:	62 f1 04 40 58 c9    	vaddps zmm1,zmm31,zmm1
  a6f64d:	62 f1 64 48 59 fa    	vmulps zmm7,zmm3,zmm2
  a6f653:	62 61 2c 48 58 f7    	vaddps zmm30,zmm10,zmm7
  a6f659:	62 f1 2c 48 5c ff    	vsubps zmm7,zmm10,zmm7
  a6f65f:	62 71 6c 48 59 54 24 	vmulps zmm10,zmm2,ZMMWORD PTR [rsp+0x1c0]
  a6f666:	07 
  a6f667:	62 41 34 48 58 fa    	vaddps zmm31,zmm9,zmm10
  a6f66d:	62 51 34 48 5c ca    	vsubps zmm9,zmm9,zmm10
  a6f673:	62 71 6c 48 59 54 24 	vmulps zmm10,zmm2,ZMMWORD PTR [rsp+0x100]
  a6f67a:	04 
  a6f67b:	62 d1 3c 40 5c da    	vsubps zmm3,zmm24,zmm10
  a6f681:	62 51 3c 40 58 d2    	vaddps zmm10,zmm24,zmm10
  a6f687:	62 31 24 48 58 da    	vaddps zmm11,zmm11,zmm18
  a6f68d:	62 a1 74 40 58 c0    	vaddps zmm16,zmm17,zmm16
  a6f693:	62 f1 7c 48 28 15 23 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff625223]        # 948c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21d70>
  a6f69a:	52 62 ff 
  a6f69d:	62 32 6d 48 7f d8    	vpermt2ps zmm11,zmm2,zmm16
  a6f6a3:	62 71 7c 48 11 1c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm11
  a6f6aa:	62 52 6d 48 7f ca    	vpermt2ps zmm9,zmm2,zmm10
  a6f6b0:	62 71 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm9
  a6f6b7:	01 
  a6f6b8:	62 f2 6d 48 7f cf    	vpermt2ps zmm1,zmm2,zmm7
  a6f6be:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm1
  a6f6c5:	02 
  a6f6c6:	62 22 6d 48 7f cb    	vpermt2ps zmm25,zmm2,zmm19
  a6f6cc:	62 61 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm25
  a6f6d3:	03 
  a6f6d4:	62 92 6d 48 7f c2    	vpermt2ps zmm0,zmm2,zmm26
  a6f6da:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm0
  a6f6e1:	04 
  a6f6e2:	62 82 6d 48 7f ec    	vpermt2ps zmm21,zmm2,zmm28
  a6f6e8:	62 e1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm21
  a6f6ef:	05 
  a6f6f0:	62 a2 6d 48 7f fc    	vpermt2ps zmm23,zmm2,zmm20
  a6f6f6:	62 e1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm23
  a6f6fd:	06 
  a6f6fe:	62 02 6d 48 7f de    	vpermt2ps zmm27,zmm2,zmm30
  a6f704:	62 61 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm27
  a6f70b:	07 
  a6f70c:	62 72 6d 48 7f 6c 24 	vpermt2ps zmm13,zmm2,ZMMWORD PTR [rsp+0x40]
  a6f713:	01 
  a6f714:	62 71 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm13
  a6f71b:	08 
  a6f71c:	62 72 6d 48 7f 64 24 	vpermt2ps zmm12,zmm2,ZMMWORD PTR [rsp-0x40]
  a6f723:	ff 
  a6f724:	62 71 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm12
  a6f72b:	09 
  a6f72c:	62 82 6d 48 7f f5    	vpermt2ps zmm22,zmm2,zmm29
  a6f732:	62 e1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm22
  a6f739:	0a 
  a6f73a:	62 62 6d 48 7f fb    	vpermt2ps zmm31,zmm2,zmm3
  a6f740:	62 61 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm31
  a6f747:	0b 
  a6f748:	62 f2 6d 48 7f 6c 24 	vpermt2ps zmm5,zmm2,ZMMWORD PTR [rsp-0x80]
  a6f74f:	fe 
  a6f750:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x300],zmm5
  a6f757:	0c 
  a6f758:	62 72 6d 48 7f 3c 24 	vpermt2ps zmm15,zmm2,ZMMWORD PTR [rsp]
  a6f75f:	62 71 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x340],zmm15
  a6f766:	0d 
  a6f767:	62 d2 6d 48 7f f6    	vpermt2ps zmm6,zmm2,zmm14
  a6f76d:	62 f1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x380],zmm6
  a6f774:	0e 
  a6f775:	48 81 c2 c0 03 00 00 	add    rdx,0x3c0
  a6f77c:	48 39 d0             	cmp    rax,rdx
  a6f77f:	0f 85 1b e9 ff ff    	jne    a6e0a0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a6f785:	48 81 c4 88 09 00 00 	add    rsp,0x988
  a6f78c:	c5 f8 77             	vzeroupper
  a6f78f:	c3                   	ret
