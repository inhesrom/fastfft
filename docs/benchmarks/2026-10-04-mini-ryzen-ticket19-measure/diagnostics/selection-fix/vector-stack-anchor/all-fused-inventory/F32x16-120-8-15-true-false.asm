
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a2b000 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a2b000:	48 81 ec 88 08 00 00 	sub    rsp,0x888
  a2b007:	62 61 7c 48 10 37    	vmovups zmm30,ZMMWORD PTR [rdi]
  a2b00d:	c5 f8 10 47 60       	vmovups xmm0,XMMWORD PTR [rdi+0x60]
  a2b012:	c4 e3 79 21 47 64 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x64],0x10
  a2b019:	c4 e2 79 18 4f 68    	vbroadcastss xmm1,DWORD PTR [rdi+0x68]
  a2b01f:	c5 fc 10 57 40       	vmovups ymm2,YMMWORD PTR [rdi+0x40]
  a2b024:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a2b02a:	c4 e3 79 21 47 6c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6c],0x30
  a2b031:	c5 fb 10 4f 70       	vmovsd xmm1,QWORD PTR [rdi+0x70]
  a2b036:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a2b03c:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a2b043:	b0 7f                	mov    al,0x7f
  a2b045:	c5 fb 92 c8          	kmovd  k1,eax
  a2b049:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a2b04f:	62 f1 fe 48 7f 44 24 	vmovdqu64 ZMMWORD PTR [rsp+0x40],zmm0
  a2b056:	01 
  a2b057:	62 f1 7c 48 28 1d 5f 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff66575f]        # 907c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dc70>
  a2b05e:	57 66 ff 
  a2b061:	62 91 7c 48 28 e6    	vmovaps zmm4,zmm30
  a2b067:	62 f2 65 48 7f e0    	vpermt2ps zmm4,zmm3,zmm0
  a2b06d:	62 71 7c 48 10 a7 e0 	vmovups zmm12,ZMMWORD PTR [rdi+0x1e0]
  a2b074:	01 00 00 
  a2b077:	c5 f8 10 8f 40 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x240]
  a2b07e:	00 
  a2b07f:	c5 fc 10 97 20 02 00 	vmovups ymm2,YMMWORD PTR [rdi+0x220]
  a2b086:	00 
  a2b087:	c4 e3 71 21 8f 44 02 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x244],0x10
  a2b08e:	00 00 10 
  a2b091:	c4 e2 79 18 af 48 02 	vbroadcastss xmm5,DWORD PTR [rdi+0x248]
  a2b098:	00 00 
  a2b09a:	c4 e3 51 0c c9 03    	vblendps xmm1,xmm5,xmm1,0x3
  a2b0a0:	c4 e3 71 21 8f 4c 02 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x24c],0x30
  a2b0a7:	00 00 30 
  a2b0aa:	c5 fb 10 af 50 02 00 	vmovsd xmm5,QWORD PTR [rdi+0x250]
  a2b0b1:	00 
  a2b0b2:	c4 e3 75 18 cd 01    	vinsertf128 ymm1,ymm1,xmm5,0x1
  a2b0b8:	62 f3 ed 48 1a c9 01 	vinsertf64x4 zmm1,zmm2,ymm1,0x1
  a2b0bf:	62 62 fd c9 88 f9    	vexpandpd zmm31{k1}{z},zmm1
  a2b0c5:	62 51 7c 48 28 d4    	vmovaps zmm10,zmm12
  a2b0cb:	62 12 65 48 7f d7    	vpermt2ps zmm10,zmm3,zmm31
  a2b0d1:	62 51 5c 48 58 ca    	vaddps zmm9,zmm4,zmm10
  a2b0d7:	62 71 7c 48 10 bf f0 	vmovups zmm15,ZMMWORD PTR [rdi+0xf0]
  a2b0de:	00 00 00 
  a2b0e1:	c5 f8 10 97 50 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x150]
  a2b0e8:	00 
  a2b0e9:	c4 e3 69 21 97 54 01 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x154],0x10
  a2b0f0:	00 00 10 
  a2b0f3:	c4 e2 79 18 b7 58 01 	vbroadcastss xmm6,DWORD PTR [rdi+0x158]
  a2b0fa:	00 00 
  a2b0fc:	c5 fc 10 bf 30 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x130]
  a2b103:	00 
  a2b104:	c4 e3 49 0c d2 03    	vblendps xmm2,xmm6,xmm2,0x3
  a2b10a:	c4 e3 69 21 97 5c 01 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x15c],0x30
  a2b111:	00 00 30 
  a2b114:	c5 fb 10 b7 60 01 00 	vmovsd xmm6,QWORD PTR [rdi+0x160]
  a2b11b:	00 
  a2b11c:	c4 e3 6d 18 d6 01    	vinsertf128 ymm2,ymm2,xmm6,0x1
  a2b122:	62 f3 c5 48 1a d2 01 	vinsertf64x4 zmm2,zmm7,ymm2,0x1
  a2b129:	62 72 fd c9 88 f2    	vexpandpd zmm14{k1}{z},zmm2
  a2b12f:	62 51 7c 48 28 df    	vmovaps zmm11,zmm15
  a2b135:	62 52 65 48 7f de    	vpermt2ps zmm11,zmm3,zmm14
  a2b13b:	62 f1 7c 48 10 97 d0 	vmovups zmm2,ZMMWORD PTR [rdi+0x2d0]
  a2b142:	02 00 00 
  a2b145:	c5 f8 10 b7 30 03 00 	vmovups xmm6,XMMWORD PTR [rdi+0x330]
  a2b14c:	00 
  a2b14d:	c4 e3 49 21 b7 34 03 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x334],0x10
  a2b154:	00 00 10 
  a2b157:	c4 e2 79 18 bf 38 03 	vbroadcastss xmm7,DWORD PTR [rdi+0x338]
  a2b15e:	00 00 
  a2b160:	c5 7c 10 87 10 03 00 	vmovups ymm8,YMMWORD PTR [rdi+0x310]
  a2b167:	00 
  a2b168:	c4 e3 41 0c f6 03    	vblendps xmm6,xmm7,xmm6,0x3
  a2b16e:	c4 e3 49 21 b7 3c 03 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x33c],0x30
  a2b175:	00 00 30 
  a2b178:	c5 fb 10 bf 40 03 00 	vmovsd xmm7,QWORD PTR [rdi+0x340]
  a2b17f:	00 
  a2b180:	c4 e3 4d 18 f7 01    	vinsertf128 ymm6,ymm6,xmm7,0x1
  a2b186:	62 f3 bd 48 1a f6 01 	vinsertf64x4 zmm6,zmm8,ymm6,0x1
  a2b18d:	62 e2 fd c9 88 c6    	vexpandpd zmm16{k1}{z},zmm6
  a2b193:	62 e1 7c 48 28 f2    	vmovaps zmm22,zmm2
  a2b199:	62 a2 65 48 7f f0    	vpermt2ps zmm22,zmm3,zmm16
  a2b19f:	62 a1 24 48 58 ee    	vaddps zmm21,zmm11,zmm22
  a2b1a5:	62 31 34 48 58 ed    	vaddps zmm13,zmm9,zmm21
  a2b1ab:	62 e1 7c 48 10 97 78 	vmovups zmm18,ZMMWORD PTR [rdi+0x78]
  a2b1b2:	00 00 00 
  a2b1b5:	c5 f8 10 b7 d8 00 00 	vmovups xmm6,XMMWORD PTR [rdi+0xd8]
  a2b1bc:	00 
  a2b1bd:	c4 e3 49 21 b7 dc 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0xdc],0x10
  a2b1c4:	00 00 10 
  a2b1c7:	c5 fc 10 bf b8 00 00 	vmovups ymm7,YMMWORD PTR [rdi+0xb8]
  a2b1ce:	00 
  a2b1cf:	c4 62 79 18 87 e0 00 	vbroadcastss xmm8,DWORD PTR [rdi+0xe0]
  a2b1d6:	00 00 
  a2b1d8:	c4 e3 39 0c f6 03    	vblendps xmm6,xmm8,xmm6,0x3
  a2b1de:	c4 e3 49 21 b7 e4 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0xe4],0x30
  a2b1e5:	00 00 30 
  a2b1e8:	c5 7b 10 87 e8 00 00 	vmovsd xmm8,QWORD PTR [rdi+0xe8]
  a2b1ef:	00 
  a2b1f0:	c4 c3 4d 18 f0 01    	vinsertf128 ymm6,ymm6,xmm8,0x1
  a2b1f6:	62 f3 c5 48 1a f6 01 	vinsertf64x4 zmm6,zmm7,ymm6,0x1
  a2b1fd:	62 62 fd c9 88 c6    	vexpandpd zmm24{k1}{z},zmm6
  a2b203:	62 b1 7c 48 28 fa    	vmovaps zmm7,zmm18
  a2b209:	62 92 65 48 7f f8    	vpermt2ps zmm7,zmm3,zmm24
  a2b20f:	62 e1 7c 48 10 9f 58 	vmovups zmm19,ZMMWORD PTR [rdi+0x258]
  a2b216:	02 00 00 
  a2b219:	c5 f8 10 b7 b8 02 00 	vmovups xmm6,XMMWORD PTR [rdi+0x2b8]
  a2b220:	00 
  a2b221:	c4 e3 49 21 b7 bc 02 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x2bc],0x10
  a2b228:	00 00 10 
  a2b22b:	c5 7c 10 87 98 02 00 	vmovups ymm8,YMMWORD PTR [rdi+0x298]
  a2b232:	00 
  a2b233:	c4 e2 79 18 87 c0 02 	vbroadcastss xmm0,DWORD PTR [rdi+0x2c0]
  a2b23a:	00 00 
  a2b23c:	c4 e3 79 0c c6 03    	vblendps xmm0,xmm0,xmm6,0x3
  a2b242:	c4 e3 79 21 87 c4 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c4],0x30
  a2b249:	00 00 30 
  a2b24c:	c5 fb 10 b7 c8 02 00 	vmovsd xmm6,QWORD PTR [rdi+0x2c8]
  a2b253:	00 
  a2b254:	c4 e3 7d 18 c6 01    	vinsertf128 ymm0,ymm0,xmm6,0x1
  a2b25a:	62 f3 bd 48 1a c0 01 	vinsertf64x4 zmm0,zmm8,ymm0,0x1
  a2b261:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a2b267:	62 a1 7c 48 28 fb    	vmovaps zmm23,zmm19
  a2b26d:	62 e2 65 48 7f f8    	vpermt2ps zmm23,zmm3,zmm0
  a2b273:	62 b1 44 48 58 cf    	vaddps zmm1,zmm7,zmm23
  a2b279:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm1
  a2b280:	07 
  a2b281:	62 e1 7c 48 10 a7 68 	vmovups zmm20,ZMMWORD PTR [rdi+0x168]
  a2b288:	01 00 00 
  a2b28b:	c5 78 10 87 c8 01 00 	vmovups xmm8,XMMWORD PTR [rdi+0x1c8]
  a2b292:	00 
  a2b293:	62 e1 7c 28 10 8f a8 	vmovups ymm17,YMMWORD PTR [rdi+0x1a8]
  a2b29a:	01 00 00 
  a2b29d:	c4 63 39 21 87 cc 01 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0x1cc],0x10
  a2b2a4:	00 00 10 
  a2b2a7:	c4 e2 79 18 af d0 01 	vbroadcastss xmm5,DWORD PTR [rdi+0x1d0]
  a2b2ae:	00 00 
  a2b2b0:	c4 c3 51 0c e8 03    	vblendps xmm5,xmm5,xmm8,0x3
  a2b2b6:	c4 e3 51 21 af d4 01 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x1d4],0x30
  a2b2bd:	00 00 30 
  a2b2c0:	c5 7b 10 87 d8 01 00 	vmovsd xmm8,QWORD PTR [rdi+0x1d8]
  a2b2c7:	00 
  a2b2c8:	c4 c3 55 18 e8 01    	vinsertf128 ymm5,ymm5,xmm8,0x1
  a2b2ce:	62 f3 f5 40 1a ed 01 	vinsertf64x4 zmm5,zmm17,ymm5,0x1
  a2b2d5:	62 f2 fd c9 88 ed    	vexpandpd zmm5{k1}{z},zmm5
  a2b2db:	62 21 7c 48 28 dc    	vmovaps zmm27,zmm20
  a2b2e1:	62 62 65 48 7f dd    	vpermt2ps zmm27,zmm3,zmm5
  a2b2e7:	62 61 7c 48 10 a7 48 	vmovups zmm28,ZMMWORD PTR [rdi+0x348]
  a2b2ee:	03 00 00 
  a2b2f1:	c5 78 10 87 a8 03 00 	vmovups xmm8,XMMWORD PTR [rdi+0x3a8]
  a2b2f8:	00 
  a2b2f9:	62 e1 7c 28 10 8f 88 	vmovups ymm17,YMMWORD PTR [rdi+0x388]
  a2b300:	03 00 00 
  a2b303:	c4 63 39 21 87 ac 03 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0x3ac],0x10
  a2b30a:	00 00 10 
  a2b30d:	c4 e2 79 18 b7 b0 03 	vbroadcastss xmm6,DWORD PTR [rdi+0x3b0]
  a2b314:	00 00 
  a2b316:	c4 c3 49 0c f0 03    	vblendps xmm6,xmm6,xmm8,0x3
  a2b31c:	c4 e3 49 21 b7 b4 03 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x3b4],0x30
  a2b323:	00 00 30 
  a2b326:	c5 7b 10 87 b8 03 00 	vmovsd xmm8,QWORD PTR [rdi+0x3b8]
  a2b32d:	00 
  a2b32e:	c4 c3 4d 18 f0 01    	vinsertf128 ymm6,ymm6,xmm8,0x1
  a2b334:	62 f3 f5 40 1a f6 01 	vinsertf64x4 zmm6,zmm17,ymm6,0x1
  a2b33b:	62 f2 fd c9 88 f6    	vexpandpd zmm6{k1}{z},zmm6
  a2b341:	62 f2 1d 40 77 de    	vpermi2ps zmm3,zmm28,zmm6
  a2b347:	62 e1 24 40 58 cb    	vaddps zmm17,zmm27,zmm3
  a2b34d:	62 21 74 48 58 c9    	vaddps zmm25,zmm1,zmm17
  a2b353:	62 01 14 48 58 e9    	vaddps zmm29,zmm13,zmm25
  a2b359:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm29
  a2b360:	04 
  a2b361:	62 71 7c 48 28 05 55 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff69bc55]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a2b368:	bc 69 ff 
  a2b36b:	62 91 14 48 5c c9    	vsubps zmm1,zmm13,zmm25
  a2b371:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a2b378:	ff 
  a2b379:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a2b37e:	62 31 34 48 5c cd    	vsubps zmm9,zmm9,zmm21
  a2b384:	62 61 7c 48 28 0d 72 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff665472]        # 90800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dcb0>
  a2b38b:	54 66 ff 
  a2b38e:	62 82 35 40 7f d0    	vpermt2ps zmm18,zmm25,zmm24
  a2b394:	62 e2 35 40 7f d8    	vpermt2ps zmm19,zmm25,zmm0
  a2b39a:	62 21 6c 40 58 c3    	vaddps zmm24,zmm18,zmm19
  a2b3a0:	62 e2 35 40 7f e5    	vpermt2ps zmm20,zmm25,zmm5
  a2b3a6:	62 62 35 40 7f e6    	vpermt2ps zmm28,zmm25,zmm6
  a2b3ac:	62 01 5c 40 58 d4    	vaddps zmm26,zmm20,zmm28
  a2b3b2:	62 91 3c 40 5c c2    	vsubps zmm0,zmm24,zmm26
  a2b3b8:	62 e1 34 48 58 e8    	vaddps zmm21,zmm9,zmm0
  a2b3be:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm21
  a2b3c5:	02 
  a2b3c6:	62 71 34 48 5c c8    	vsubps zmm9,zmm9,zmm0
  a2b3cc:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm9
  a2b3d3:	06 
  a2b3d4:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a2b3da:	62 d2 3d 48 7f c5    	vpermt2ps zmm0,zmm8,zmm13
  a2b3e0:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a2b3e7:	05 
  a2b3e8:	62 d1 5c 48 5c c2    	vsubps zmm0,zmm4,zmm10
  a2b3ee:	62 52 35 40 7f fe    	vpermt2ps zmm15,zmm25,zmm14
  a2b3f4:	62 b2 35 40 7f d0    	vpermt2ps zmm2,zmm25,zmm16
  a2b3fa:	62 f1 04 48 5c e2    	vsubps zmm4,zmm15,zmm2
  a2b400:	62 f1 7c 48 58 ec    	vaddps zmm5,zmm0,zmm4
  a2b406:	62 b1 44 48 5c f7    	vsubps zmm6,zmm7,zmm23
  a2b40c:	62 31 6c 40 5c d3    	vsubps zmm10,zmm18,zmm19
  a2b412:	62 72 7d 48 18 35 80 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff649f80]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a2b419:	9f 64 ff 
  a2b41c:	62 d1 4c 48 58 fa    	vaddps zmm7,zmm6,zmm10
  a2b422:	62 c1 44 48 59 de    	vmulps zmm19,zmm7,zmm14
  a2b428:	62 81 5c 40 5c c4    	vsubps zmm16,zmm20,zmm28
  a2b42e:	62 f1 24 40 5c db    	vsubps zmm3,zmm27,zmm3
  a2b434:	62 f1 7c 40 5c fb    	vsubps zmm7,zmm16,zmm3
  a2b43a:	62 c1 44 48 59 e6    	vmulps zmm20,zmm7,zmm14
  a2b440:	62 b1 64 40 58 fc    	vaddps zmm7,zmm19,zmm20
  a2b446:	62 e1 54 48 58 d7    	vaddps zmm18,zmm5,zmm7
  a2b44c:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm18
  a2b453:	09 
  a2b454:	62 f1 54 48 5c ff    	vsubps zmm7,zmm5,zmm7
  a2b45a:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm7
  a2b461:	08 
  a2b462:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a2b468:	62 42 3d 48 7f e5    	vpermt2ps zmm28,zmm8,zmm13
  a2b46e:	62 f1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm4
  a2b474:	62 c2 3d 48 7f ed    	vpermt2ps zmm21,zmm8,zmm13
  a2b47a:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm21
  a2b481:	fe 
  a2b482:	62 f1 2c 48 5c e6    	vsubps zmm4,zmm10,zmm6
  a2b488:	62 c1 7c 48 28 f9    	vmovaps zmm23,zmm9
  a2b48e:	62 c2 3d 48 7f fd    	vpermt2ps zmm23,zmm8,zmm13
  a2b494:	62 b1 64 48 58 d8    	vaddps zmm3,zmm3,zmm16
  a2b49a:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a2b4a0:	62 d2 3d 48 7f cd    	vpermt2ps zmm1,zmm8,zmm13
  a2b4a6:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a2b4ad:	03 
  a2b4ae:	62 d1 5c 48 59 e6    	vmulps zmm4,zmm4,zmm14
  a2b4b4:	62 d1 64 48 59 ee    	vmulps zmm5,zmm3,zmm14
  a2b4ba:	62 71 7c 48 28 cf    	vmovaps zmm9,zmm7
  a2b4c0:	62 52 3d 48 7f cd    	vpermt2ps zmm9,zmm8,zmm13
  a2b4c6:	62 62 35 40 7f 74 24 	vpermt2ps zmm30,zmm25,ZMMWORD PTR [rsp+0x40]
  a2b4cd:	01 
  a2b4ce:	62 f1 5c 48 58 dd    	vaddps zmm3,zmm4,zmm5
  a2b4d4:	62 12 35 40 7f e7    	vpermt2ps zmm12,zmm25,zmm31
  a2b4da:	62 f1 7c 48 58 f3    	vaddps zmm6,zmm0,zmm3
  a2b4e0:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a2b4e6:	62 61 7c 48 28 fe    	vmovaps zmm31,zmm6
  a2b4ec:	62 d2 3d 48 7f cd    	vpermt2ps zmm1,zmm8,zmm13
  a2b4f2:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a2b4f9:	62 e1 7c 48 5c c3    	vsubps zmm16,zmm0,zmm3
  a2b4ff:	62 d1 0c 40 58 dc    	vaddps zmm3,zmm30,zmm12
  a2b505:	62 f1 04 48 58 f2    	vaddps zmm6,zmm15,zmm2
  a2b50b:	62 f1 64 48 58 ce    	vaddps zmm1,zmm3,zmm6
  a2b511:	62 91 3c 40 58 d2    	vaddps zmm2,zmm24,zmm26
  a2b517:	62 f1 74 48 58 c2    	vaddps zmm0,zmm1,zmm2
  a2b51d:	62 71 74 48 5c f2    	vsubps zmm14,zmm1,zmm2
  a2b523:	62 a1 7c 48 28 e8    	vmovaps zmm21,zmm16
  a2b529:	62 c2 3d 48 7f ed    	vpermt2ps zmm21,zmm8,zmm13
  a2b52f:	62 71 74 40 5c 54 24 	vsubps zmm10,zmm17,ZMMWORD PTR [rsp+0x1c0]
  a2b536:	07 
  a2b537:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a2b53d:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a2b543:	62 42 3d 48 7f ed    	vpermt2ps zmm29,zmm8,zmm13
  a2b549:	62 f1 64 48 5c de    	vsubps zmm3,zmm3,zmm6
  a2b54f:	62 f1 2c 48 58 c3    	vaddps zmm0,zmm10,zmm3
  a2b555:	62 41 64 48 5c ca    	vsubps zmm25,zmm3,zmm10
  a2b55b:	62 d1 7c 48 28 de    	vmovaps zmm3,zmm14
  a2b561:	62 d2 3d 48 7f dd    	vpermt2ps zmm3,zmm8,zmm13
  a2b567:	62 d1 4c 40 5c f3    	vsubps zmm6,zmm22,zmm11
  a2b56d:	62 e1 7c 48 28 d0    	vmovaps zmm18,zmm0
  a2b573:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a2b579:	62 c2 3d 48 7f d5    	vpermt2ps zmm18,zmm8,zmm13
  a2b57f:	62 51 0c 40 5c d4    	vsubps zmm10,zmm30,zmm12
  a2b585:	62 51 4c 48 58 da    	vaddps zmm11,zmm6,zmm10
  a2b58b:	62 f1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm5
  a2b591:	62 61 24 48 58 f4    	vaddps zmm30,zmm11,zmm4
  a2b597:	62 f1 24 48 5c fc    	vsubps zmm7,zmm11,zmm4
  a2b59d:	62 01 7c 48 28 c1    	vmovaps zmm24,zmm25
  a2b5a3:	62 42 3d 48 7f c5    	vpermt2ps zmm24,zmm8,zmm13
  a2b5a9:	62 f1 2c 48 5c ee    	vsubps zmm5,zmm10,zmm6
  a2b5af:	62 91 7c 48 28 f6    	vmovaps zmm6,zmm30
  a2b5b5:	62 d2 3d 48 7f f5    	vpermt2ps zmm6,zmm8,zmm13
  a2b5bb:	62 31 5c 40 5c e3    	vsubps zmm12,zmm20,zmm19
  a2b5c1:	62 51 54 48 58 d4    	vaddps zmm10,zmm5,zmm12
  a2b5c7:	62 41 54 48 5c dc    	vsubps zmm27,zmm5,zmm12
  a2b5cd:	62 71 7c 48 28 df    	vmovaps zmm11,zmm7
  a2b5d3:	62 52 3d 48 7f dd    	vpermt2ps zmm11,zmm8,zmm13
  a2b5d9:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a2b5df:	62 52 3d 48 7f fd    	vpermt2ps zmm15,zmm8,zmm13
  a2b5e5:	62 52 25 40 77 c5    	vpermi2ps zmm8,zmm27,zmm13
  a2b5eb:	62 71 7c 48 28 25 8b 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff69b98b]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a2b5f2:	b9 69 ff 
  a2b5f5:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x100]
  a2b5fc:	04 
  a2b5fd:	62 d2 1d 48 7f d5    	vpermt2ps zmm2,zmm12,zmm13
  a2b603:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp-0x40]
  a2b60a:	ff 
  a2b60b:	62 c2 1d 48 7f cd    	vpermt2ps zmm17,zmm12,zmm13
  a2b611:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x80]
  a2b618:	02 
  a2b619:	62 d2 1d 48 7f ed    	vpermt2ps zmm5,zmm12,zmm13
  a2b61f:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x180]
  a2b626:	06 
  a2b627:	62 d2 1d 48 7f e5    	vpermt2ps zmm4,zmm12,zmm13
  a2b62d:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x240]
  a2b634:	09 
  a2b635:	62 d2 1d 48 7f cd    	vpermt2ps zmm1,zmm12,zmm13
  a2b63b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x200]
  a2b642:	08 
  a2b643:	62 d2 1d 48 7f c5    	vpermt2ps zmm0,zmm12,zmm13
  a2b649:	62 42 1d 48 7f fd    	vpermt2ps zmm31,zmm12,zmm13
  a2b64f:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm31
  a2b656:	01 
  a2b657:	62 c2 1d 48 7f c5    	vpermt2ps zmm16,zmm12,zmm13
  a2b65d:	62 42 1d 48 7f d5    	vpermt2ps zmm26,zmm12,zmm13
  a2b663:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm26
  a2b66a:	ff 
  a2b66b:	62 52 1d 48 7f f5    	vpermt2ps zmm14,zmm12,zmm13
  a2b671:	62 c2 1d 48 7f f5    	vpermt2ps zmm22,zmm12,zmm13
  a2b677:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm22
  a2b67e:	06 
  a2b67f:	62 42 1d 48 7f cd    	vpermt2ps zmm25,zmm12,zmm13
  a2b685:	62 42 1d 48 7f f5    	vpermt2ps zmm30,zmm12,zmm13
  a2b68b:	62 d2 1d 48 7f fd    	vpermt2ps zmm7,zmm12,zmm13
  a2b691:	62 52 1d 48 7f d5    	vpermt2ps zmm10,zmm12,zmm13
  a2b697:	62 42 1d 48 7f dd    	vpermt2ps zmm27,zmm12,zmm13
  a2b69d:	62 61 7c 48 28 3d 59 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff69b859]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a2b6a4:	b8 69 ff 
  a2b6a7:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x140]
  a2b6ae:	05 
  a2b6af:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a2b6b5:	62 12 05 40 7f ec    	vpermt2ps zmm13,zmm31,zmm28
  a2b6bb:	62 e1 7c 48 28 25 7b 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff69b87b]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a2b6c2:	b8 69 ff 
  a2b6c5:	62 12 5d 40 7f e4    	vpermt2ps zmm12,zmm20,zmm28
  a2b6cb:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm12
  a2b6d2:	05 
  a2b6d3:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp-0x80]
  a2b6da:	fe 
  a2b6db:	62 41 7c 48 28 d4    	vmovaps zmm26,zmm12
  a2b6e1:	62 22 05 40 7f d7    	vpermt2ps zmm26,zmm31,zmm23
  a2b6e7:	62 32 5d 40 7f e7    	vpermt2ps zmm12,zmm20,zmm23
  a2b6ed:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm12
  a2b6f4:	fe 
  a2b6f5:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0xc0]
  a2b6fc:	03 
  a2b6fd:	62 41 7c 48 28 e4    	vmovaps zmm28,zmm12
  a2b703:	62 42 05 40 7f e1    	vpermt2ps zmm28,zmm31,zmm9
  a2b709:	62 52 5d 40 7f e1    	vpermt2ps zmm12,zmm20,zmm9
  a2b70f:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm12
  a2b716:	03 
  a2b717:	62 71 7c 48 10 0c 24 	vmovups zmm9,ZMMWORD PTR [rsp]
  a2b71e:	62 c1 7c 48 28 d9    	vmovaps zmm19,zmm9
  a2b724:	62 a2 05 40 7f dd    	vpermt2ps zmm19,zmm31,zmm21
  a2b72a:	62 32 5d 40 7f cd    	vpermt2ps zmm9,zmm20,zmm21
  a2b730:	62 71 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm9
  a2b737:	62 81 7c 48 28 ed    	vmovaps zmm21,zmm29
  a2b73d:	62 e2 05 40 7f eb    	vpermt2ps zmm21,zmm31,zmm3
  a2b743:	62 62 5d 40 7f eb    	vpermt2ps zmm29,zmm20,zmm3
  a2b749:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm29
  a2b750:	0e 
  a2b751:	62 a1 7c 48 28 f2    	vmovaps zmm22,zmm18
  a2b757:	62 82 05 40 7f f0    	vpermt2ps zmm22,zmm31,zmm24
  a2b75d:	62 82 5d 40 7f d0    	vpermt2ps zmm18,zmm20,zmm24
  a2b763:	62 e1 7c 48 28 fe    	vmovaps zmm23,zmm6
  a2b769:	62 c2 05 40 7f fb    	vpermt2ps zmm23,zmm31,zmm11
  a2b76f:	62 d2 5d 40 7f f3    	vpermt2ps zmm6,zmm20,zmm11
  a2b775:	62 41 7c 48 28 c7    	vmovaps zmm24,zmm15
  a2b77b:	62 42 05 40 7f c0    	vpermt2ps zmm24,zmm31,zmm8
  a2b781:	62 52 5d 40 7f f8    	vpermt2ps zmm15,zmm20,zmm8
  a2b787:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a2b78d:	62 32 05 40 7f c1    	vpermt2ps zmm8,zmm31,zmm17
  a2b793:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a2b799:	62 b2 5d 40 7f d1    	vpermt2ps zmm2,zmm20,zmm17
  a2b79f:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  a2b7a6:	04 
  a2b7a7:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a2b7ad:	62 f2 05 40 7f ec    	vpermt2ps zmm5,zmm31,zmm4
  a2b7b3:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm5
  a2b7ba:	0d 
  a2b7bb:	62 f2 5d 40 7f d4    	vpermt2ps zmm2,zmm20,zmm4
  a2b7c1:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a2b7c8:	02 
  a2b7c9:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a2b7cf:	62 f2 05 40 7f c8    	vpermt2ps zmm1,zmm31,zmm0
  a2b7d5:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a2b7db:	62 f2 5d 40 7f d0    	vpermt2ps zmm2,zmm20,zmm0
  a2b7e1:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm2
  a2b7e8:	09 
  a2b7e9:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a2b7f0:	01 
  a2b7f1:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a2b7f7:	62 22 05 40 7f e8    	vpermt2ps zmm29,zmm31,zmm16
  a2b7fd:	62 b2 5d 40 7f c0    	vpermt2ps zmm0,zmm20,zmm16
  a2b803:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a2b80a:	01 
  a2b80b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a2b812:	ff 
  a2b813:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a2b819:	62 d2 05 40 7f de    	vpermt2ps zmm3,zmm31,zmm14
  a2b81f:	62 d2 5d 40 7f c6    	vpermt2ps zmm0,zmm20,zmm14
  a2b825:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a2b82c:	ff 
  a2b82d:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a2b834:	06 
  a2b835:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a2b83b:	62 12 05 40 7f c9    	vpermt2ps zmm9,zmm31,zmm25
  a2b841:	62 92 5d 40 7f c1    	vpermt2ps zmm0,zmm20,zmm25
  a2b847:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a2b84e:	06 
  a2b84f:	62 11 7c 48 28 e6    	vmovaps zmm12,zmm30
  a2b855:	62 72 05 40 7f e7    	vpermt2ps zmm12,zmm31,zmm7
  a2b85b:	62 62 5d 40 7f f7    	vpermt2ps zmm30,zmm20,zmm7
  a2b861:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm30
  a2b868:	12 
  a2b869:	62 02 2d 48 77 fb    	vpermi2ps zmm31,zmm10,zmm27
  a2b86f:	62 12 5d 40 7f d3    	vpermt2ps zmm10,zmm20,zmm27
  a2b875:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm10
  a2b87c:	11 
  a2b87d:	62 61 7c 48 28 35 79 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff69b579]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2b884:	b5 69 ff 
  a2b887:	62 91 95 48 14 c2    	vunpcklpd zmm0,zmm13,zmm26
  a2b88d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a2b894:	0c 
  a2b895:	62 b1 9d 40 14 cb    	vunpcklpd zmm1,zmm28,zmm19
  a2b89b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm1
  a2b8a2:	19 
  a2b8a3:	62 f2 0d 40 7f c1    	vpermt2ps zmm0,zmm30,zmm1
  a2b8a9:	62 b1 d5 40 14 ce    	vunpcklpd zmm1,zmm21,zmm22
  a2b8af:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  a2b8b6:	0b 
  a2b8b7:	62 91 c5 40 14 d0    	vunpcklpd zmm2,zmm23,zmm24
  a2b8bd:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm2
  a2b8c4:	18 
  a2b8c5:	62 f2 0d 40 7f ca    	vpermt2ps zmm1,zmm30,zmm2
  a2b8cb:	62 f1 7c 48 10 52 11 	vmovups zmm2,ZMMWORD PTR [rdx+0x440]
  a2b8d2:	62 f1 7c 48 10 62 10 	vmovups zmm4,ZMMWORD PTR [rdx+0x400]
  a2b8d9:	62 71 74 48 59 c4    	vmulps zmm8,zmm1,zmm4
  a2b8df:	62 72 7d 48 b8 c2    	vfmadd231ps zmm8,zmm0,zmm2
  a2b8e5:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm8
  a2b8ec:	20 
  a2b8ed:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a2b8f3:	62 f2 6d 48 bc c1    	vfnmadd231ps zmm0,zmm2,zmm1
  a2b8f9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a2b900:	08 
  a2b901:	62 f1 a5 48 15 c5    	vunpckhpd zmm0,zmm11,zmm5
  a2b907:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm0
  a2b90e:	14 
  a2b90f:	62 d1 7c 48 28 fb    	vmovaps zmm7,zmm11
  a2b915:	62 91 f5 40 15 cd    	vunpckhpd zmm1,zmm17,zmm29
  a2b91b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm1
  a2b922:	13 
  a2b923:	62 31 7c 48 28 d1    	vmovaps zmm10,zmm17
  a2b929:	62 f2 0d 40 7f c1    	vpermt2ps zmm0,zmm30,zmm1
  a2b92f:	62 41 e5 48 15 d9    	vunpckhpd zmm27,zmm3,zmm9
  a2b935:	62 91 9d 48 15 d7    	vunpckhpd zmm2,zmm12,zmm31
  a2b93b:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm2
  a2b942:	0a 
  a2b943:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a2b949:	62 f2 0d 40 7f ca    	vpermt2ps zmm1,zmm30,zmm2
  a2b94f:	62 71 7c 48 10 42 04 	vmovups zmm8,ZMMWORD PTR [rdx+0x100]
  a2b956:	62 71 7c 48 10 5a 05 	vmovups zmm11,ZMMWORD PTR [rdx+0x140]
  a2b95d:	62 41 74 48 59 c8    	vmulps zmm25,zmm1,zmm8
  a2b963:	62 42 7d 48 b8 cb    	vfmadd231ps zmm25,zmm0,zmm11
  a2b969:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm25
  a2b970:	1f 
  a2b971:	62 d1 7c 48 59 c0    	vmulps zmm0,zmm0,zmm8
  a2b977:	62 f2 25 48 bc c1    	vfnmadd231ps zmm0,zmm11,zmm1
  a2b97d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a2b984:	07 
  a2b985:	62 01 95 48 15 ca    	vunpckhpd zmm25,zmm13,zmm26
  a2b98b:	62 b1 9d 40 15 d3    	vunpckhpd zmm2,zmm28,zmm19
  a2b991:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm2
  a2b998:	16 
  a2b999:	62 b1 d5 40 15 ce    	vunpckhpd zmm1,zmm21,zmm22
  a2b99f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm1
  a2b9a6:	1c 
  a2b9a7:	62 11 c5 40 15 d8    	vunpckhpd zmm11,zmm23,zmm24
  a2b9ad:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm11
  a2b9b4:	1b 
  a2b9b5:	62 71 7c 48 28 05 81 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff69b481]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a2b9bc:	b4 69 ff 
  a2b9bf:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a2b9c5:	62 f2 3d 48 7f c2    	vpermt2ps zmm0,zmm8,zmm2
  a2b9cb:	62 d2 3d 48 7f cb    	vpermt2ps zmm1,zmm8,zmm11
  a2b9d1:	62 71 7c 48 10 5a 17 	vmovups zmm11,ZMMWORD PTR [rdx+0x5c0]
  a2b9d8:	62 71 7c 48 10 6a 16 	vmovups zmm13,ZMMWORD PTR [rdx+0x580]
  a2b9df:	62 c1 74 48 59 dd    	vmulps zmm19,zmm1,zmm13
  a2b9e5:	62 c2 7d 48 b8 db    	vfmadd231ps zmm19,zmm0,zmm11
  a2b9eb:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm19
  a2b9f2:	1e 
  a2b9f3:	62 d1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm13
  a2b9f9:	62 f2 25 48 bc c1    	vfnmadd231ps zmm0,zmm11,zmm1
  a2b9ff:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a2ba06:	10 
  a2ba07:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x140]
  a2ba0e:	05 
  a2ba0f:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x80]
  a2ba16:	fe 
  a2ba17:	62 f1 ed 48 15 c4    	vunpckhpd zmm0,zmm2,zmm4
  a2ba1d:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0xc0]
  a2ba24:	03 
  a2ba25:	62 e1 7c 48 10 04 24 	vmovups zmm16,ZMMWORD PTR [rsp]
  a2ba2c:	62 b1 d5 48 15 c8    	vunpckhpd zmm1,zmm5,zmm16
  a2ba32:	62 f2 0d 40 7f c1    	vpermt2ps zmm0,zmm30,zmm1
  a2ba38:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x380]
  a2ba3f:	0e 
  a2ba40:	62 b1 8d 48 15 ca    	vunpckhpd zmm1,zmm14,zmm18
  a2ba46:	62 51 cd 48 15 df    	vunpckhpd zmm11,zmm6,zmm15
  a2ba4c:	62 d2 0d 40 7f cb    	vpermt2ps zmm1,zmm30,zmm11
  a2ba52:	62 71 7c 48 10 5a 1d 	vmovups zmm11,ZMMWORD PTR [rdx+0x740]
  a2ba59:	62 71 7c 48 10 6a 1c 	vmovups zmm13,ZMMWORD PTR [rdx+0x700]
  a2ba60:	62 c1 74 48 59 dd    	vmulps zmm19,zmm1,zmm13
  a2ba66:	62 c2 7d 48 b8 db    	vfmadd231ps zmm19,zmm0,zmm11
  a2ba6c:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm19
  a2ba73:	1d 
  a2ba74:	62 d1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm13
  a2ba7a:	62 f2 25 48 bc c1    	vfnmadd231ps zmm0,zmm11,zmm1
  a2ba80:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a2ba87:	0f 
  a2ba88:	62 e1 ed 48 14 cc    	vunpcklpd zmm17,zmm2,zmm4
  a2ba8e:	62 b1 d5 48 14 c0    	vunpcklpd zmm0,zmm5,zmm16
  a2ba94:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a2ba9b:	fe 
  a2ba9c:	62 31 8d 48 14 da    	vunpcklpd zmm11,zmm14,zmm18
  a2baa2:	62 41 cd 48 14 e7    	vunpcklpd zmm28,zmm6,zmm15
  a2baa8:	62 b1 7c 48 28 f1    	vmovaps zmm6,zmm17
  a2baae:	62 f2 3d 48 7f f0    	vpermt2ps zmm6,zmm8,zmm0
  a2bab4:	62 51 7c 48 28 eb    	vmovaps zmm13,zmm11
  a2baba:	62 12 3d 48 7f ec    	vpermt2ps zmm13,zmm8,zmm28
  a2bac0:	62 71 7c 48 10 72 1b 	vmovups zmm14,ZMMWORD PTR [rdx+0x6c0]
  a2bac7:	62 71 7c 48 10 7a 1a 	vmovups zmm15,ZMMWORD PTR [rdx+0x680]
  a2bace:	62 c1 14 48 59 c7    	vmulps zmm16,zmm13,zmm15
  a2bad4:	62 c2 4d 48 b8 c6    	vfmadd231ps zmm16,zmm6,zmm14
  a2bada:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm16
  a2bae1:	0e 
  a2bae2:	62 d1 4c 48 59 f7    	vmulps zmm6,zmm6,zmm15
  a2bae8:	62 d2 0d 48 bc f5    	vfnmadd231ps zmm6,zmm14,zmm13
  a2baee:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm6
  a2baf5:	17 
  a2baf6:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x100]
  a2bafd:	04 
  a2bafe:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp+0x80]
  a2bb05:	02 
  a2bb06:	62 81 ed 40 15 ea    	vunpckhpd zmm21,zmm18,zmm26
  a2bb0c:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x240]
  a2bb13:	09 
  a2bb14:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x40]
  a2bb1b:	01 
  a2bb1c:	62 e1 cd 48 15 e5    	vunpckhpd zmm20,zmm6,zmm5
  a2bb22:	62 31 7c 48 28 ed    	vmovaps zmm13,zmm21
  a2bb28:	62 32 3d 48 7f ec    	vpermt2ps zmm13,zmm8,zmm20
  a2bb2e:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a2bb35:	ff 
  a2bb36:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a2bb3d:	06 
  a2bb3e:	62 71 dd 48 15 f0    	vunpckhpd zmm14,zmm4,zmm0
  a2bb44:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x480]
  a2bb4b:	12 
  a2bb4c:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x440]
  a2bb53:	11 
  a2bb54:	62 e1 ed 48 15 c1    	vunpckhpd zmm16,zmm2,zmm1
  a2bb5a:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a2bb60:	62 32 3d 48 7f f8    	vpermt2ps zmm15,zmm8,zmm16
  a2bb66:	62 e1 7c 48 10 5a 0f 	vmovups zmm19,ZMMWORD PTR [rdx+0x3c0]
  a2bb6d:	62 e1 7c 48 10 7a 0e 	vmovups zmm23,ZMMWORD PTR [rdx+0x380]
  a2bb74:	62 21 04 48 59 c7    	vmulps zmm24,zmm15,zmm23
  a2bb7a:	62 22 15 48 b8 c3    	vfmadd231ps zmm24,zmm13,zmm19
  a2bb80:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm24
  a2bb87:	1a 
  a2bb88:	62 31 14 48 59 ef    	vmulps zmm13,zmm13,zmm23
  a2bb8e:	62 52 65 40 bc ef    	vfnmadd231ps zmm13,zmm19,zmm15
  a2bb94:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm13
  a2bb9b:	05 
  a2bb9c:	62 71 c5 48 14 6c 24 	vunpcklpd zmm13,zmm7,ZMMWORD PTR [rsp+0x340]
  a2bba3:	0d 
  a2bba4:	62 01 ad 48 14 c5    	vunpcklpd zmm24,zmm10,zmm29
  a2bbaa:	62 51 e5 48 14 c9    	vunpcklpd zmm9,zmm3,zmm9
  a2bbb0:	62 01 9d 48 14 ef    	vunpcklpd zmm29,zmm12,zmm31
  a2bbb6:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a2bbbc:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a2bbc2:	62 92 3d 48 7f d8    	vpermt2ps zmm3,zmm8,zmm24
  a2bbc8:	62 d1 7c 48 28 f9    	vmovaps zmm7,zmm9
  a2bbce:	62 41 7c 48 28 f9    	vmovaps zmm31,zmm9
  a2bbd4:	62 92 3d 48 7f fd    	vpermt2ps zmm7,zmm8,zmm29
  a2bbda:	62 71 7c 48 10 4a 02 	vmovups zmm9,ZMMWORD PTR [rdx+0x80]
  a2bbe1:	62 71 7c 48 10 62 03 	vmovups zmm12,ZMMWORD PTR [rdx+0xc0]
  a2bbe8:	62 51 44 48 59 d1    	vmulps zmm10,zmm7,zmm9
  a2bbee:	62 52 65 48 b8 d4    	vfmadd231ps zmm10,zmm3,zmm12
  a2bbf4:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm10
  a2bbfb:	0d 
  a2bbfc:	62 d1 64 48 59 d9    	vmulps zmm3,zmm3,zmm9
  a2bc02:	62 f2 1d 48 bc df    	vfnmadd231ps zmm3,zmm12,zmm7
  a2bc08:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm3
  a2bc0f:	15 
  a2bc10:	62 91 ed 40 14 da    	vunpcklpd zmm3,zmm18,zmm26
  a2bc16:	62 71 cd 48 14 cd    	vunpcklpd zmm9,zmm6,zmm5
  a2bc1c:	62 71 dd 48 14 e8    	vunpcklpd zmm13,zmm4,zmm0
  a2bc22:	62 71 ed 48 14 d1    	vunpcklpd zmm10,zmm2,zmm1
  a2bc28:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a2bc2e:	62 d2 0d 40 7f d9    	vpermt2ps zmm3,zmm30,zmm9
  a2bc34:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a2bc3a:	62 52 0d 40 7f ea    	vpermt2ps zmm13,zmm30,zmm10
  a2bc40:	62 e1 7c 48 10 52 09 	vmovups zmm18,ZMMWORD PTR [rdx+0x240]
  a2bc47:	62 f1 7c 48 10 7a 08 	vmovups zmm7,ZMMWORD PTR [rdx+0x200]
  a2bc4e:	62 e1 14 48 59 ff    	vmulps zmm23,zmm13,zmm7
  a2bc54:	62 a2 65 48 b8 fa    	vfmadd231ps zmm23,zmm3,zmm18
  a2bc5a:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm23
  a2bc61:	ff 
  a2bc62:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a2bc68:	62 d2 6d 40 bc dd    	vfnmadd231ps zmm3,zmm18,zmm13
  a2bc6e:	62 e1 7c 48 28 f3    	vmovaps zmm22,zmm3
  a2bc74:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm3
  a2bc7b:	21 
  a2bc7c:	62 52 3d 48 7f e1    	vpermt2ps zmm12,zmm8,zmm9
  a2bc82:	62 52 3d 48 7f fa    	vpermt2ps zmm15,zmm8,zmm10
  a2bc88:	62 62 3d 48 7f 5c 24 	vpermt2ps zmm27,zmm8,ZMMWORD PTR [rsp+0x280]
  a2bc8f:	0a 
  a2bc90:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x500]
  a2bc97:	14 
  a2bc98:	62 f2 3d 48 7f 54 24 	vpermt2ps zmm2,zmm8,ZMMWORD PTR [rsp+0x4c0]
  a2bc9f:	13 
  a2bca0:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x2c0]
  a2bca7:	0b 
  a2bca8:	62 f2 3d 48 7f 44 24 	vpermt2ps zmm0,zmm8,ZMMWORD PTR [rsp+0x600]
  a2bcaf:	18 
  a2bcb0:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x300]
  a2bcb7:	0c 
  a2bcb8:	62 f2 3d 48 7f 7c 24 	vpermt2ps zmm7,zmm8,ZMMWORD PTR [rsp+0x640]
  a2bcbf:	19 
  a2bcc0:	62 32 0d 40 7f f0    	vpermt2ps zmm14,zmm30,zmm16
  a2bcc6:	62 a2 0d 40 7f ec    	vpermt2ps zmm21,zmm30,zmm20
  a2bccc:	62 71 7c 48 10 42 0d 	vmovups zmm8,ZMMWORD PTR [rdx+0x340]
  a2bcd3:	62 f1 7c 48 10 5a 0c 	vmovups zmm3,ZMMWORD PTR [rdx+0x300]
  a2bcda:	62 f1 54 40 59 f3    	vmulps zmm6,zmm21,zmm3
  a2bce0:	62 d2 0d 48 bc f0    	vfnmadd231ps zmm6,zmm14,zmm8
  a2bce6:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm6
  a2bced:	11 
  a2bcee:	62 f1 0c 48 59 cb    	vmulps zmm1,zmm14,zmm3
  a2bcf4:	62 b2 3d 48 b8 cd    	vfmadd231ps zmm1,zmm8,zmm21
  a2bcfa:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm1
  a2bd01:	0c 
  a2bd02:	62 71 7c 48 10 42 13 	vmovups zmm8,ZMMWORD PTR [rdx+0x4c0]
  a2bd09:	62 71 7c 48 10 4a 12 	vmovups zmm9,ZMMWORD PTR [rdx+0x480]
  a2bd10:	62 f1 7c 48 28 df    	vmovaps zmm3,zmm7
  a2bd16:	62 d1 44 48 59 c9    	vmulps zmm1,zmm7,zmm9
  a2bd1c:	62 d2 7d 48 bc c8    	vfnmadd231ps zmm1,zmm0,zmm8
  a2bd22:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a2bd28:	62 c1 7c 48 59 e9    	vmulps zmm21,zmm0,zmm9
  a2bd2e:	62 e2 3d 48 b8 eb    	vfmadd231ps zmm21,zmm8,zmm3
  a2bd34:	62 71 7c 48 10 42 07 	vmovups zmm8,ZMMWORD PTR [rdx+0x1c0]
  a2bd3b:	62 71 7c 48 10 4a 06 	vmovups zmm9,ZMMWORD PTR [rdx+0x180]
  a2bd42:	62 d1 6c 48 59 c1    	vmulps zmm0,zmm2,zmm9
  a2bd48:	62 d2 25 40 bc c0    	vfnmadd231ps zmm0,zmm27,zmm8
  a2bd4e:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a2bd54:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a2bd5b:	12 
  a2bd5c:	62 41 24 40 59 d1    	vmulps zmm26,zmm27,zmm9
  a2bd62:	62 62 3d 48 b8 d2    	vfmadd231ps zmm26,zmm8,zmm2
  a2bd68:	62 12 0d 40 7f dc    	vpermt2ps zmm11,zmm30,zmm28
  a2bd6e:	62 e2 0d 40 7f 4c 24 	vpermt2ps zmm17,zmm30,ZMMWORD PTR [rsp-0x80]
  a2bd75:	fe 
  a2bd76:	62 71 7c 48 10 42 19 	vmovups zmm8,ZMMWORD PTR [rdx+0x640]
  a2bd7d:	62 f1 7c 48 10 62 18 	vmovups zmm4,ZMMWORD PTR [rdx+0x600]
  a2bd84:	62 f1 74 40 59 c4    	vmulps zmm0,zmm17,zmm4
  a2bd8a:	62 d2 25 48 bc c0    	vfnmadd231ps zmm0,zmm11,zmm8
  a2bd90:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a2bd96:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a2bd9d:	0a 
  a2bd9e:	62 71 24 48 59 f4    	vmulps zmm14,zmm11,zmm4
  a2bda4:	62 32 3d 48 b8 f1    	vfmadd231ps zmm14,zmm8,zmm17
  a2bdaa:	62 f1 7c 48 10 42 0b 	vmovups zmm0,ZMMWORD PTR [rdx+0x2c0]
  a2bdb1:	62 f1 7c 48 10 4a 0a 	vmovups zmm1,ZMMWORD PTR [rdx+0x280]
  a2bdb8:	62 f1 04 48 59 d1    	vmulps zmm2,zmm15,zmm1
  a2bdbe:	62 f2 1d 48 b8 d0    	vfmadd231ps zmm2,zmm12,zmm0
  a2bdc4:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a2bdcb:	fe 
  a2bdcc:	62 f1 1c 48 59 c9    	vmulps zmm1,zmm12,zmm1
  a2bdd2:	62 d2 7d 48 bc cf    	vfnmadd231ps zmm1,zmm0,zmm15
  a2bdd8:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a2bddf:	09 
  a2bde0:	62 62 0d 40 7f 4c 24 	vpermt2ps zmm25,zmm30,ZMMWORD PTR [rsp+0x580]
  a2bde7:	16 
  a2bde8:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x700]
  a2bdef:	1c 
  a2bdf0:	62 f2 0d 40 7f 5c 24 	vpermt2ps zmm3,zmm30,ZMMWORD PTR [rsp+0x6c0]
  a2bdf7:	1b 
  a2bdf8:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a2bdff:	62 f1 7c 48 10 4a 14 	vmovups zmm1,ZMMWORD PTR [rdx+0x500]
  a2be06:	62 f1 64 48 59 d1    	vmulps zmm2,zmm3,zmm1
  a2be0c:	62 f2 35 40 b8 d0    	vfmadd231ps zmm2,zmm25,zmm0
  a2be12:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a2be19:	03 
  a2be1a:	62 f1 34 40 59 c9    	vmulps zmm1,zmm25,zmm1
  a2be20:	62 f2 7d 48 bc cb    	vfnmadd231ps zmm1,zmm0,zmm3
  a2be26:	62 e1 7c 48 28 d1    	vmovaps zmm18,zmm1
  a2be2c:	62 02 0d 40 7f fd    	vpermt2ps zmm31,zmm30,zmm29
  a2be32:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm31
  a2be39:	04 
  a2be3a:	62 82 0d 40 7f d8    	vpermt2ps zmm19,zmm30,zmm24
  a2be40:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm19
  a2be47:	01 
  a2be48:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x200]
  a2be4f:	08 
  a2be50:	62 f1 7c 48 5c 44 24 	vsubps zmm0,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a2be57:	07 
  a2be58:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x400]
  a2be5f:	10 
  a2be60:	62 71 74 48 5c 44 24 	vsubps zmm8,zmm1,ZMMWORD PTR [rsp+0x3c0]
  a2be67:	0f 
  a2be68:	62 72 7d 48 18 15 e6 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff6498e6]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a2be6f:	98 64 ff 
  a2be72:	62 d1 3c 48 59 ca    	vmulps zmm1,zmm8,zmm10
  a2be78:	62 f2 7d 48 18 2d 1e 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff64951e]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a2be7f:	95 64 ff 
  a2be82:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a2be88:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a2be8f:	62 d1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm10
  a2be95:	62 d2 55 48 bc c0    	vfnmadd231ps zmm0,zmm5,zmm8
  a2be9b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a2bea2:	0b 
  a2bea3:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x5c0]
  a2beaa:	17 
  a2beab:	62 f1 1c 48 5c 44 24 	vsubps zmm0,zmm12,ZMMWORD PTR [rsp+0x140]
  a2beb2:	05 
  a2beb3:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0x540]
  a2beba:	15 
  a2bebb:	62 31 3c 40 5c c6    	vsubps zmm8,zmm24,zmm22
  a2bec1:	62 d1 3c 48 59 ca    	vmulps zmm1,zmm8,zmm10
  a2bec7:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a2becd:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a2bed4:	02 
  a2bed5:	62 41 7c 48 59 fa    	vmulps zmm31,zmm0,zmm10
  a2bedb:	62 42 55 48 bc f8    	vfnmadd231ps zmm31,zmm5,zmm8
  a2bee1:	62 d1 14 48 5c c1    	vsubps zmm0,zmm13,zmm9
  a2bee7:	62 71 4c 48 5c c7    	vsubps zmm8,zmm6,zmm7
  a2beed:	62 61 7c 48 28 cf    	vmovaps zmm25,zmm7
  a2bef3:	62 d1 3c 48 59 d2    	vmulps zmm2,zmm8,zmm10
  a2bef9:	62 f2 7d 48 b8 d5    	vfmadd231ps zmm2,zmm0,zmm5
  a2beff:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm2
  a2bf06:	06 
  a2bf07:	62 41 7c 48 59 f2    	vmulps zmm30,zmm0,zmm10
  a2bf0d:	62 42 55 48 bc f0    	vfnmadd231ps zmm30,zmm5,zmm8
  a2bf13:	62 e1 7c 48 10 7c 24 	vmovups zmm23,ZMMWORD PTR [rsp+0x800]
  a2bf1a:	20 
  a2bf1b:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x7c0]
  a2bf22:	1f 
  a2bf23:	62 f1 44 40 5c c6    	vsubps zmm0,zmm23,zmm6
  a2bf29:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x780]
  a2bf30:	1e 
  a2bf31:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x740]
  a2bf38:	1d 
  a2bf39:	62 71 34 48 5c c7    	vsubps zmm8,zmm9,zmm7
  a2bf3f:	62 c1 3c 48 59 c2    	vmulps zmm16,zmm8,zmm10
  a2bf45:	62 e2 7d 48 b8 c5    	vfmadd231ps zmm16,zmm0,zmm5
  a2bf4b:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm16
  a2bf52:	1b 
  a2bf53:	62 41 7c 48 59 ea    	vmulps zmm29,zmm0,zmm10
  a2bf59:	62 42 55 48 bc e8    	vfnmadd231ps zmm29,zmm5,zmm8
  a2bf5f:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x380]
  a2bf66:	0e 
  a2bf67:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x680]
  a2bf6e:	1a 
  a2bf6f:	62 f1 74 40 5c c4    	vsubps zmm0,zmm17,zmm4
  a2bf75:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x340]
  a2bf7c:	0d 
  a2bf7d:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a2bf84:	ff 
  a2bf85:	62 71 64 48 5c c2    	vsubps zmm8,zmm3,zmm2
  a2bf8b:	62 51 3c 48 59 fa    	vmulps zmm15,zmm8,zmm10
  a2bf91:	62 72 7d 48 b8 fd    	vfmadd231ps zmm15,zmm0,zmm5
  a2bf97:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm15
  a2bf9e:	19 
  a2bf9f:	62 c1 7c 48 59 e2    	vmulps zmm20,zmm0,zmm10
  a2bfa5:	62 c2 55 48 bc e0    	vfnmadd231ps zmm20,zmm5,zmm8
  a2bfab:	62 d1 2c 40 5c c6    	vsubps zmm0,zmm26,zmm14
  a2bfb1:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x300]
  a2bfb8:	0c 
  a2bfb9:	62 31 74 48 5c c5    	vsubps zmm8,zmm1,zmm21
  a2bfbf:	62 51 3c 48 59 da    	vmulps zmm11,zmm8,zmm10
  a2bfc5:	62 72 7d 48 b8 dd    	vfmadd231ps zmm11,zmm0,zmm5
  a2bfcb:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm11
  a2bfd2:	1c 
  a2bfd3:	62 c1 7c 48 59 da    	vmulps zmm19,zmm0,zmm10
  a2bfd9:	62 e2 3d 48 bc dd    	vfnmadd231ps zmm19,zmm8,zmm5
  a2bfdf:	62 e1 34 48 58 f7    	vaddps zmm22,zmm9,zmm7
  a2bfe5:	62 71 44 40 58 de    	vaddps zmm11,zmm23,zmm6
  a2bfeb:	62 71 64 48 58 ea    	vaddps zmm13,zmm3,zmm2
  a2bff1:	62 61 74 40 58 e4    	vaddps zmm28,zmm17,zmm4
  a2bff7:	62 21 74 48 58 dd    	vaddps zmm27,zmm1,zmm21
  a2bffd:	62 c1 2c 40 58 fe    	vaddps zmm23,zmm26,zmm14
  a2c003:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x3c0]
  a2c00a:	0f 
  a2c00b:	62 61 7c 48 58 54 24 	vaddps zmm26,zmm0,ZMMWORD PTR [rsp+0x400]
  a2c012:	10 
  a2c013:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a2c01a:	07 
  a2c01b:	62 f1 7c 48 58 74 24 	vaddps zmm6,zmm0,ZMMWORD PTR [rsp+0x200]
  a2c022:	08 
  a2c023:	62 71 3c 40 58 54 24 	vaddps zmm10,zmm24,ZMMWORD PTR [rsp+0x840]
  a2c02a:	21 
  a2c02b:	62 71 1c 48 58 4c 24 	vaddps zmm9,zmm12,ZMMWORD PTR [rsp+0x140]
  a2c032:	05 
  a2c033:	62 f2 7d 48 18 0d ab 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff6496ab]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a2c03a:	96 64 ff 
  a2c03d:	62 61 7c 48 28 c1    	vmovaps zmm24,zmm1
  a2c043:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x240]
  a2c04a:	09 
  a2c04b:	62 62 4d 48 a8 c0    	vfmadd213ps zmm24,zmm6,zmm0
  a2c051:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm6
  a2c058:	1f 
  a2c059:	62 f2 7d 48 18 2d e1 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff6495e1]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a2c060:	95 64 ff 
  a2c063:	62 62 2d 40 bc c5    	vfnmadd231ps zmm24,zmm26,zmm5
  a2c069:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm26
  a2c070:	1e 
  a2c071:	62 e1 7c 48 28 e9    	vmovaps zmm21,zmm1
  a2c077:	62 b1 7c 48 28 fa    	vmovaps zmm7,zmm18
  a2c07d:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm18
  a2c084:	18 
  a2c085:	62 a2 35 48 a8 ea    	vfmadd213ps zmm21,zmm9,zmm18
  a2c08b:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm9
  a2c092:	1d 
  a2c093:	62 e2 2d 48 bc ed    	vfnmadd231ps zmm21,zmm10,zmm5
  a2c099:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm10
  a2c0a0:	0e 
  a2c0a1:	62 b1 3c 40 5c d8    	vsubps zmm3,zmm24,zmm16
  a2c0a7:	62 d1 54 40 5c e7    	vsubps zmm4,zmm21,zmm15
  a2c0ad:	62 f1 64 48 5c d4    	vsubps zmm2,zmm3,zmm4
  a2c0b3:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a2c0ba:	ff 
  a2c0bb:	62 f1 64 48 58 d4    	vaddps zmm2,zmm3,zmm4
  a2c0c1:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm2
  a2c0c8:	07 
  a2c0c9:	62 61 34 40 58 4c 24 	vaddps zmm25,zmm25,ZMMWORD PTR [rsp+0x440]
  a2c0d0:	11 
  a2c0d1:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x480]
  a2c0d8:	12 
  a2c0d9:	62 e1 6c 48 58 54 24 	vaddps zmm18,zmm2,ZMMWORD PTR [rsp+0x280]
  a2c0e0:	0a 
  a2c0e1:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a2c0e7:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp-0x80]
  a2c0ee:	fe 
  a2c0ef:	62 c2 25 48 a8 c8    	vfmadd213ps zmm17,zmm11,zmm8
  a2c0f5:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a2c0fb:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm11
  a2c102:	14 
  a2c103:	62 e2 4d 40 bc cd    	vfnmadd231ps zmm17,zmm22,zmm5
  a2c109:	62 31 7c 48 28 f6    	vmovaps zmm14,zmm22
  a2c10f:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm22
  a2c116:	13 
  a2c117:	62 e1 7c 48 28 c1    	vmovaps zmm16,zmm1
  a2c11d:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0xc0]
  a2c124:	03 
  a2c125:	62 a2 1d 40 a8 c6    	vfmadd213ps zmm16,zmm28,zmm22
  a2c12b:	62 e2 15 48 bc c5    	vfnmadd231ps zmm16,zmm13,zmm5
  a2c131:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a2c137:	62 f1 74 40 58 14 24 	vaddps zmm2,zmm17,ZMMWORD PTR [rsp]
  a2c13e:	62 f1 7c 40 58 5c 24 	vaddps zmm3,zmm16,ZMMWORD PTR [rsp+0x80]
  a2c145:	02 
  a2c146:	62 f1 6c 48 58 e3    	vaddps zmm4,zmm2,zmm3
  a2c14c:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm4
  a2c153:	10 
  a2c154:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a2c15a:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm2
  a2c161:	08 
  a2c162:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a2c168:	62 f2 4d 48 ac d0    	vfnmadd213ps zmm2,zmm6,zmm0
  a2c16e:	62 f2 2d 40 b8 d1    	vfmadd231ps zmm2,zmm26,zmm1
  a2c174:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a2c17a:	62 f2 35 48 ac f7    	vfnmadd213ps zmm6,zmm9,zmm7
  a2c180:	62 f2 2d 48 b8 f1    	vfmadd231ps zmm6,zmm10,zmm1
  a2c186:	62 91 6c 48 5c dd    	vsubps zmm3,zmm2,zmm29
  a2c18c:	62 b1 4c 48 5c e4    	vsubps zmm4,zmm6,zmm20
  a2c192:	62 f1 64 48 5c c4    	vsubps zmm0,zmm3,zmm4
  a2c198:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm0
  a2c19f:	20 
  a2c1a0:	62 f1 64 48 58 c4    	vaddps zmm0,zmm3,zmm4
  a2c1a6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a2c1ad:	0f 
  a2c1ae:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a2c1b4:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x100]
  a2c1bb:	04 
  a2c1bc:	62 f2 45 40 a8 e3    	vfmadd213ps zmm4,zmm23,zmm3
  a2c1c2:	62 11 7c 48 28 db    	vmovaps zmm11,zmm27
  a2c1c8:	62 f2 25 40 bc e5    	vfnmadd231ps zmm4,zmm27,zmm5
  a2c1ce:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a2c1d4:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a2c1db:	01 
  a2c1dc:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a2c1e2:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm18
  a2c1e9:	17 
  a2c1ea:	62 f2 6d 40 a8 f8    	vfmadd213ps zmm7,zmm18,zmm0
  a2c1f0:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm25
  a2c1f7:	16 
  a2c1f8:	62 f2 35 40 bc fd    	vfnmadd231ps zmm7,zmm25,zmm5
  a2c1fe:	62 71 7c 48 28 ed    	vmovaps zmm13,zmm5
  a2c204:	62 52 1d 48 ac e8    	vfnmadd213ps zmm13,zmm12,zmm8
  a2c20a:	62 72 0d 48 b8 e9    	vfmadd231ps zmm13,zmm14,zmm1
  a2c210:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a2c216:	62 a2 1d 40 ac d6    	vfnmadd213ps zmm18,zmm28,zmm22
  a2c21c:	62 e2 05 48 b8 d1    	vfmadd231ps zmm18,zmm15,zmm1
  a2c222:	62 51 7c 48 28 c7    	vmovaps zmm8,zmm15
  a2c228:	62 61 7c 48 28 dd    	vmovaps zmm27,zmm5
  a2c22e:	62 62 45 40 ac db    	vfnmadd213ps zmm27,zmm23,zmm3
  a2c234:	62 62 25 48 b8 d9    	vfmadd231ps zmm27,zmm11,zmm1
  a2c23a:	62 d1 7c 48 28 db    	vmovaps zmm3,zmm11
  a2c240:	62 f2 2d 48 ac e8    	vfnmadd213ps zmm5,zmm10,zmm0
  a2c246:	62 f2 35 40 b8 e9    	vfmadd231ps zmm5,zmm25,zmm1
  a2c24c:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x2c0]
  a2c253:	0b 
  a2c254:	62 d1 14 48 58 c9    	vaddps zmm1,zmm13,zmm9
  a2c25a:	62 91 6c 40 58 c7    	vaddps zmm0,zmm18,zmm31
  a2c260:	62 71 74 48 58 d0    	vaddps zmm10,zmm1,zmm0
  a2c266:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm10
  a2c26d:	0c 
  a2c26e:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a2c274:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm0
  a2c27b:	1a 
  a2c27c:	62 91 0c 40 58 c3    	vaddps zmm0,zmm30,zmm27
  a2c282:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm0
  a2c289:	15 
  a2c28a:	62 91 24 40 5c ce    	vsubps zmm1,zmm27,zmm30
  a2c290:	62 d1 14 48 5c c1    	vsubps zmm0,zmm13,zmm9
  a2c296:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a2c29d:	0a 
  a2c29e:	62 01 6c 40 5c ff    	vsubps zmm31,zmm18,zmm31
  a2c2a4:	62 31 54 48 5c cb    	vsubps zmm9,zmm5,zmm19
  a2c2aa:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm9
  a2c2b1:	0b 
  a2c2b2:	62 31 54 48 58 eb    	vaddps zmm13,zmm5,zmm19
  a2c2b8:	62 81 6c 48 58 f5    	vaddps zmm22,zmm2,zmm29
  a2c2be:	62 f2 7d 48 18 2d 98 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff649198]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a2c2c5:	91 64 ff 
  a2c2c8:	62 a1 4c 48 58 d4    	vaddps zmm18,zmm6,zmm20
  a2c2ce:	62 01 7c 48 58 d7    	vaddps zmm26,zmm0,zmm31
  a2c2d4:	62 91 74 48 58 c2    	vaddps zmm0,zmm1,zmm26
  a2c2da:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a2c2e1:	05 
  a2c2e2:	62 62 55 48 ac d1    	vfnmadd213ps zmm26,zmm5,zmm1
  a2c2e8:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a2c2ee:	62 71 7c 48 28 dd    	vmovaps zmm11,zmm5
  a2c2f4:	62 71 7c 48 28 f5    	vmovaps zmm14,zmm5
  a2c2fa:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a2c300:	62 b1 4c 40 58 c2    	vaddps zmm0,zmm22,zmm18
  a2c306:	62 71 7c 48 28 e5    	vmovaps zmm12,zmm5
  a2c30c:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a2c312:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a2c318:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a2c31e:	62 d2 7d 48 ac ed    	vfnmadd213ps zmm5,zmm0,zmm13
  a2c324:	62 f1 14 48 58 c0    	vaddps zmm0,zmm13,zmm0
  a2c32a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a2c331:	0d 
  a2c332:	62 f1 74 40 5c 04 24 	vsubps zmm0,zmm17,ZMMWORD PTR [rsp]
  a2c339:	62 71 7c 40 5c 4c 24 	vsubps zmm9,zmm16,ZMMWORD PTR [rsp+0x80]
  a2c340:	02 
  a2c341:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x180]
  a2c348:	06 
  a2c349:	62 71 74 40 58 ec    	vaddps zmm13,zmm17,zmm4
  a2c34f:	62 a1 5c 48 5c c9    	vsubps zmm17,zmm4,zmm17
  a2c355:	62 f1 3c 40 58 64 24 	vaddps zmm4,zmm24,ZMMWORD PTR [rsp+0x6c0]
  a2c35c:	1b 
  a2c35d:	62 71 54 40 58 7c 24 	vaddps zmm15,zmm21,ZMMWORD PTR [rsp+0x640]
  a2c364:	19 
  a2c365:	62 41 5c 48 5c df    	vsubps zmm27,zmm4,zmm15
  a2c36b:	62 c1 5c 48 58 df    	vaddps zmm19,zmm4,zmm15
  a2c371:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x700]
  a2c378:	1c 
  a2c379:	62 d1 44 48 5c e7    	vsubps zmm4,zmm7,zmm15
  a2c37f:	62 c1 44 48 58 c7    	vaddps zmm16,zmm7,zmm15
  a2c385:	62 41 7c 48 58 c1    	vaddps zmm24,zmm0,zmm9
  a2c38b:	62 41 7c 48 5c c9    	vsubps zmm25,zmm0,zmm9
  a2c391:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a2c398:	fe 
  a2c399:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x500]
  a2c3a0:	14 
  a2c3a1:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x4c0]
  a2c3a8:	13 
  a2c3a9:	62 f1 1c 40 58 7c 24 	vaddps zmm7,zmm28,ZMMWORD PTR [rsp+0xc0]
  a2c3b0:	03 
  a2c3b1:	62 d1 44 48 58 f8    	vaddps zmm7,zmm7,zmm8
  a2c3b7:	62 71 44 40 58 4c 24 	vaddps zmm9,zmm23,ZMMWORD PTR [rsp+0x100]
  a2c3be:	04 
  a2c3bf:	62 d1 64 48 58 d9    	vaddps zmm3,zmm3,zmm9
  a2c3c5:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a2c3cc:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x240]
  a2c3d3:	09 
  a2c3d4:	62 71 64 48 58 4c 24 	vaddps zmm9,zmm3,ZMMWORD PTR [rsp+0x7c0]
  a2c3db:	1f 
  a2c3dc:	62 71 34 48 58 4c 24 	vaddps zmm9,zmm9,ZMMWORD PTR [rsp+0x780]
  a2c3e3:	1e 
  a2c3e4:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x600]
  a2c3eb:	18 
  a2c3ec:	62 71 64 48 58 7c 24 	vaddps zmm15,zmm3,ZMMWORD PTR [rsp+0x740]
  a2c3f3:	1d 
  a2c3f4:	62 71 04 48 58 7c 24 	vaddps zmm15,zmm15,ZMMWORD PTR [rsp+0x380]
  a2c3fb:	0e 
  a2c3fc:	62 41 34 48 5c e7    	vsubps zmm28,zmm9,zmm15
  a2c402:	62 41 34 48 58 ef    	vaddps zmm29,zmm9,zmm15
  a2c408:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x40]
  a2c40f:	01 
  a2c410:	62 71 64 48 58 4c 24 	vaddps zmm9,zmm3,ZMMWORD PTR [rsp+0x5c0]
  a2c417:	17 
  a2c418:	62 e1 34 48 58 6c 24 	vaddps zmm21,zmm9,ZMMWORD PTR [rsp+0x580]
  a2c41f:	16 
  a2c420:	62 e1 7c 48 58 ff    	vaddps zmm23,zmm0,zmm7
  a2c426:	62 61 7c 48 5c f7    	vsubps zmm30,zmm0,zmm7
  a2c42c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x400]
  a2c433:	10 
  a2c434:	62 52 7d 48 ac d5    	vfnmadd213ps zmm10,zmm0,zmm13
  a2c43a:	62 f1 14 48 58 c0    	vaddps zmm0,zmm13,zmm0
  a2c440:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a2c447:	04 
  a2c448:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a2c44f:	07 
  a2c450:	62 72 7d 48 ac dc    	vfnmadd213ps zmm11,zmm0,zmm4
  a2c456:	62 f1 5c 48 58 c0    	vaddps zmm0,zmm4,zmm0
  a2c45c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a2c463:	03 
  a2c464:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x300]
  a2c46b:	0c 
  a2c46c:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x540]
  a2c473:	15 
  a2c474:	62 52 35 48 ac f0    	vfnmadd213ps zmm14,zmm9,zmm8
  a2c47a:	62 72 7d 48 18 2d 50 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff648e50]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a2c481:	8e 64 ff 
  a2c484:	62 f1 14 48 59 7c 24 	vmulps zmm7,zmm13,ZMMWORD PTR [rsp+0x800]
  a2c48b:	20 
  a2c48c:	62 71 0c 48 5c ff    	vsubps zmm15,zmm14,zmm7
  a2c492:	62 f1 0c 48 58 ff    	vaddps zmm7,zmm14,zmm7
  a2c498:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x3c0]
  a2c49f:	0f 
  a2c4a0:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x2c0]
  a2c4a7:	0b 
  a2c4a8:	62 f2 5d 48 ac cb    	vfnmadd213ps zmm1,zmm4,zmm3
  a2c4ae:	62 71 14 48 59 74 24 	vmulps zmm14,zmm13,ZMMWORD PTR [rsp+0x680]
  a2c4b5:	1a 
  a2c4b6:	62 d1 74 48 58 c6    	vaddps zmm0,zmm1,zmm14
  a2c4bc:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a2c4c3:	fe 
  a2c4c4:	62 d1 74 48 5c c6    	vsubps zmm0,zmm1,zmm14
  a2c4ca:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a2c4d1:	02 
  a2c4d2:	62 b1 4c 40 5c ca    	vsubps zmm1,zmm22,zmm18
  a2c4d8:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x280]
  a2c4df:	0a 
  a2c4e0:	62 11 7c 48 5c f7    	vsubps zmm14,zmm0,zmm31
  a2c4e6:	62 e1 14 48 59 54 24 	vmulps zmm18,zmm13,ZMMWORD PTR [rsp-0x40]
  a2c4ed:	ff 
  a2c4ee:	62 e1 14 48 59 74 24 	vmulps zmm22,zmm13,ZMMWORD PTR [rsp+0x200]
  a2c4f5:	08 
  a2c4f6:	62 41 24 40 59 dd    	vmulps zmm27,zmm27,zmm13
  a2c4fc:	62 41 34 40 59 cd    	vmulps zmm25,zmm25,zmm13
  a2c502:	62 41 1c 40 59 e5    	vmulps zmm28,zmm28,zmm13
  a2c508:	62 41 0c 40 59 f5    	vmulps zmm30,zmm30,zmm13
  a2c50e:	62 41 74 48 59 fd    	vmulps zmm31,zmm1,zmm13
  a2c514:	62 d1 0c 48 59 c5    	vmulps zmm0,zmm14,zmm13
  a2c51a:	62 32 3d 40 ac e1    	vfnmadd213ps zmm12,zmm24,zmm17
  a2c520:	62 81 74 40 58 c8    	vaddps zmm17,zmm17,zmm24
  a2c526:	62 a2 65 40 ac e0    	vfnmadd213ps zmm20,zmm19,zmm16
  a2c52c:	62 a1 7c 40 58 c3    	vaddps zmm16,zmm16,zmm19
  a2c532:	62 61 7c 48 10 04 24 	vmovups zmm24,ZMMWORD PTR [rsp]
  a2c539:	62 92 45 40 ac d0    	vfnmadd213ps zmm2,zmm23,zmm24
  a2c53f:	62 91 6c 48 5c cc    	vsubps zmm1,zmm2,zmm28
  a2c545:	62 11 6c 48 58 f4    	vaddps zmm14,zmm2,zmm28
  a2c54b:	62 b2 15 40 ac f5    	vfnmadd213ps zmm6,zmm29,zmm21
  a2c551:	62 91 4c 48 58 d6    	vaddps zmm2,zmm6,zmm30
  a2c557:	62 01 4c 48 5c e6    	vsubps zmm28,zmm6,zmm30
  a2c55d:	62 31 2c 48 58 ea    	vaddps zmm13,zmm10,zmm18
  a2c563:	62 b1 2c 48 5c f2    	vsubps zmm6,zmm10,zmm18
  a2c569:	62 a1 24 48 5c d6    	vsubps zmm18,zmm11,zmm22
  a2c56f:	62 21 24 48 58 f6    	vaddps zmm30,zmm11,zmm22
  a2c575:	62 c1 3c 48 58 d9    	vaddps zmm19,zmm8,zmm9
  a2c57b:	62 f1 64 48 58 dc    	vaddps zmm3,zmm3,zmm4
  a2c581:	62 81 2c 40 5c f7    	vsubps zmm22,zmm26,zmm31
  a2c587:	62 11 2c 40 58 d7    	vaddps zmm10,zmm26,zmm31
  a2c58d:	62 f1 54 48 58 e0    	vaddps zmm4,zmm5,zmm0
  a2c593:	62 f1 54 48 5c c0    	vsubps zmm0,zmm5,zmm0
  a2c599:	62 91 1c 48 58 eb    	vaddps zmm5,zmm12,zmm27
  a2c59f:	62 11 1c 48 5c db    	vsubps zmm11,zmm12,zmm27
  a2c5a5:	62 01 5c 40 5c d9    	vsubps zmm27,zmm20,zmm25
  a2c5ab:	62 11 5c 40 58 e1    	vaddps zmm12,zmm20,zmm25
  a2c5b1:	62 a1 3c 40 58 ff    	vaddps zmm23,zmm24,zmm23
  a2c5b7:	62 81 54 40 58 ed    	vaddps zmm21,zmm21,zmm29
  a2c5bd:	62 61 7c 48 28 0d 79 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff664279]        # 90840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dcf0>
  a2c5c4:	42 66 ff 
  a2c5c7:	62 a2 35 40 7f fd    	vpermt2ps zmm23,zmm25,zmm21
  a2c5cd:	62 52 35 40 7f dc    	vpermt2ps zmm11,zmm25,zmm12
  a2c5d3:	62 72 35 40 7f d0    	vpermt2ps zmm10,zmm25,zmm0
  a2c5d9:	62 e2 35 40 7f db    	vpermt2ps zmm19,zmm25,zmm3
  a2c5df:	62 92 35 40 7f f6    	vpermt2ps zmm6,zmm25,zmm30
  a2c5e5:	62 12 35 40 7f f4    	vpermt2ps zmm14,zmm25,zmm28
  a2c5eb:	62 a2 35 40 7f c8    	vpermt2ps zmm17,zmm25,zmm16
  a2c5f1:	62 e2 35 40 7f f4    	vpermt2ps zmm22,zmm25,zmm4
  a2c5f7:	62 f2 35 40 7f 7c 24 	vpermt2ps zmm7,zmm25,ZMMWORD PTR [rsp+0x80]
  a2c5fe:	02 
  a2c5ff:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x100]
  a2c606:	04 
  a2c607:	62 f2 35 40 7f 5c 24 	vpermt2ps zmm3,zmm25,ZMMWORD PTR [rsp+0xc0]
  a2c60e:	03 
  a2c60f:	62 f2 35 40 7f ca    	vpermt2ps zmm1,zmm25,zmm2
  a2c615:	62 92 35 40 7f eb    	vpermt2ps zmm5,zmm25,zmm27
  a2c61b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a2c622:	05 
  a2c623:	62 f2 35 40 7f 44 24 	vpermt2ps zmm0,zmm25,ZMMWORD PTR [rsp+0x340]
  a2c62a:	0d 
  a2c62b:	62 72 35 40 7f 7c 24 	vpermt2ps zmm15,zmm25,ZMMWORD PTR [rsp-0x80]
  a2c632:	fe 
  a2c633:	62 32 35 40 7f ea    	vpermt2ps zmm13,zmm25,zmm18
  a2c639:	62 e1 7c 48 11 3e    	vmovups ZMMWORD PTR [rsi],zmm23
  a2c63f:	62 71 7c 48 11 5e 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm11
  a2c646:	62 71 7c 48 11 56 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm10
  a2c64d:	62 e1 7c 48 11 5e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm19
  a2c654:	62 f1 7c 48 11 76 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm6
  a2c65b:	62 71 7c 48 11 76 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm14
  a2c662:	62 e1 7c 48 11 4e 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm17
  a2c669:	62 e1 7c 48 11 76 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm22
  a2c670:	62 f1 7c 48 11 7e 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm7
  a2c677:	62 f1 7c 48 11 5e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm3
  a2c67e:	62 f1 7c 48 11 4e 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm1
  a2c685:	62 f1 7c 48 11 6e 0b 	vmovups ZMMWORD PTR [rsi+0x2c0],zmm5
  a2c68c:	62 f1 7c 48 11 46 0c 	vmovups ZMMWORD PTR [rsi+0x300],zmm0
  a2c693:	62 71 7c 48 11 7e 0d 	vmovups ZMMWORD PTR [rsi+0x340],zmm15
  a2c69a:	62 71 7c 48 11 6e 0e 	vmovups ZMMWORD PTR [rsi+0x380],zmm13
  a2c6a1:	48 81 c4 88 08 00 00 	add    rsp,0x888
  a2c6a8:	c5 f8 77             	vzeroupper
  a2c6ab:	c3                   	ret
