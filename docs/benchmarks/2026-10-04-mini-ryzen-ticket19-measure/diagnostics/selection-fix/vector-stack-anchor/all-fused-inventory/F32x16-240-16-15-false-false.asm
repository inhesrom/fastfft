
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a5a200 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a5a200:	48 81 ec 48 08 00 00 	sub    rsp,0x848
  a5a207:	62 f1 7c 48 10 1f    	vmovups zmm3,ZMMWORD PTR [rdi]
  a5a20d:	c5 f8 10 47 60       	vmovups xmm0,XMMWORD PTR [rdi+0x60]
  a5a212:	c4 e3 79 21 47 64 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x64],0x10
  a5a219:	c4 e2 79 18 4f 68    	vbroadcastss xmm1,DWORD PTR [rdi+0x68]
  a5a21f:	c5 fc 10 57 40       	vmovups ymm2,YMMWORD PTR [rdi+0x40]
  a5a224:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5a22a:	c4 e3 79 21 47 6c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6c],0x30
  a5a231:	c5 fb 10 4f 70       	vmovsd xmm1,QWORD PTR [rdi+0x70]
  a5a236:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a5a23c:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a5a243:	b0 7f                	mov    al,0x7f
  a5a245:	c5 fb 92 c8          	kmovd  k1,eax
  a5a249:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5a24f:	62 f1 7c 48 28 2d a7 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6391a7]        # 93400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x208b0>
  a5a256:	91 63 ff 
  a5a259:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a5a25f:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a5a265:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a5a26c:	01 
  a5a26d:	62 e1 7c 48 28 1d c9 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff6391c9]        # 93440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x208f0>
  a5a274:	91 63 ff 
  a5a277:	62 f2 65 40 7f d8    	vpermt2ps zmm3,zmm19,zmm0
  a5a27d:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm3
  a5a284:	02 
  a5a285:	c5 f8 10 87 d8 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xd8]
  a5a28c:	00 
  a5a28d:	c4 e3 79 21 87 dc 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xdc],0x10
  a5a294:	00 00 10 
  a5a297:	c4 e2 79 18 8f e0 00 	vbroadcastss xmm1,DWORD PTR [rdi+0xe0]
  a5a29e:	00 00 
  a5a2a0:	62 f1 7c 48 10 97 78 	vmovups zmm2,ZMMWORD PTR [rdi+0x78]
  a5a2a7:	00 00 00 
  a5a2aa:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5a2b0:	c4 e3 79 21 87 e4 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xe4],0x30
  a5a2b7:	00 00 30 
  a5a2ba:	c5 fc 10 8f b8 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xb8]
  a5a2c1:	00 
  a5a2c2:	c5 fb 10 9f e8 00 00 	vmovsd xmm3,QWORD PTR [rdi+0xe8]
  a5a2c9:	00 
  a5a2ca:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5a2d0:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5a2d7:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5a2dd:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a5a2e3:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a5a2e9:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a5a2ef:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm1
  a5a2f6:	0d 
  a5a2f7:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a5a2fd:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a5a303:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm2
  a5a30a:	13 
  a5a30b:	62 f1 7c 48 10 97 f0 	vmovups zmm2,ZMMWORD PTR [rdi+0xf0]
  a5a312:	00 00 00 
  a5a315:	c5 f8 10 87 50 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x150]
  a5a31c:	00 
  a5a31d:	c4 e3 79 21 87 54 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x154],0x10
  a5a324:	00 00 10 
  a5a327:	c5 fc 10 8f 30 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x130]
  a5a32e:	00 
  a5a32f:	c4 e2 79 18 9f 58 01 	vbroadcastss xmm3,DWORD PTR [rdi+0x158]
  a5a336:	00 00 
  a5a338:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a5a33e:	c4 e3 79 21 87 5c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x15c],0x30
  a5a345:	00 00 30 
  a5a348:	c5 fb 10 9f 60 01 00 	vmovsd xmm3,QWORD PTR [rdi+0x160]
  a5a34f:	00 
  a5a350:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5a356:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5a35d:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5a363:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a5a369:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a5a36f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a5a376:	04 
  a5a377:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a5a37d:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a5a384:	62 f1 7c 48 10 97 68 	vmovups zmm2,ZMMWORD PTR [rdi+0x168]
  a5a38b:	01 00 00 
  a5a38e:	c5 f8 10 87 c8 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x1c8]
  a5a395:	00 
  a5a396:	c5 fc 10 8f a8 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x1a8]
  a5a39d:	00 
  a5a39e:	c4 e3 79 21 87 cc 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1cc],0x10
  a5a3a5:	00 00 10 
  a5a3a8:	c4 e2 79 18 9f d0 01 	vbroadcastss xmm3,DWORD PTR [rdi+0x1d0]
  a5a3af:	00 00 
  a5a3b1:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a5a3b7:	c4 e3 79 21 87 d4 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1d4],0x30
  a5a3be:	00 00 30 
  a5a3c1:	c5 fb 10 9f d8 01 00 	vmovsd xmm3,QWORD PTR [rdi+0x1d8]
  a5a3c8:	00 
  a5a3c9:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5a3cf:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5a3d6:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5a3dc:	62 71 7c 48 28 fa    	vmovaps zmm15,zmm2
  a5a3e2:	62 72 55 48 7f f8    	vpermt2ps zmm15,zmm5,zmm0
  a5a3e8:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a5a3ee:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm2
  a5a3f5:	07 
  a5a3f6:	62 f1 7c 48 10 97 e0 	vmovups zmm2,ZMMWORD PTR [rdi+0x1e0]
  a5a3fd:	01 00 00 
  a5a400:	c5 f8 10 87 40 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x240]
  a5a407:	00 
  a5a408:	c4 e3 79 21 87 44 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x244],0x10
  a5a40f:	00 00 10 
  a5a412:	c4 e2 79 18 8f 48 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x248]
  a5a419:	00 00 
  a5a41b:	c5 fc 10 9f 20 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x220]
  a5a422:	00 
  a5a423:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5a429:	c4 e3 79 21 87 4c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24c],0x30
  a5a430:	00 00 30 
  a5a433:	c5 fb 10 8f 50 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x250]
  a5a43a:	00 
  a5a43b:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a5a441:	62 f3 e5 48 1a c0 01 	vinsertf64x4 zmm0,zmm3,ymm0,0x1
  a5a448:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5a44e:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a5a454:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a5a45a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a5a461:	ff 
  a5a462:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a5a468:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a5a46f:	fe 
  a5a470:	c5 f8 10 87 b8 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x2b8]
  a5a477:	00 
  a5a478:	c4 e3 79 21 87 bc 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2bc],0x10
  a5a47f:	00 00 10 
  a5a482:	c4 e2 79 18 8f c0 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x2c0]
  a5a489:	00 00 
  a5a48b:	62 f1 7c 48 10 97 58 	vmovups zmm2,ZMMWORD PTR [rdi+0x258]
  a5a492:	02 00 00 
  a5a495:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5a49b:	c4 e3 79 21 87 c4 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c4],0x30
  a5a4a2:	00 00 30 
  a5a4a5:	c5 fc 10 8f 98 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x298]
  a5a4ac:	00 
  a5a4ad:	c5 fb 10 9f c8 02 00 	vmovsd xmm3,QWORD PTR [rdi+0x2c8]
  a5a4b4:	00 
  a5a4b5:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5a4bb:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5a4c2:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5a4c8:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a5a4ce:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a5a4d4:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a5a4da:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm1
  a5a4e1:	0c 
  a5a4e2:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a5a4e8:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a5a4ee:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm2
  a5a4f5:	14 
  a5a4f6:	62 f1 7c 48 10 97 d0 	vmovups zmm2,ZMMWORD PTR [rdi+0x2d0]
  a5a4fd:	02 00 00 
  a5a500:	c5 f8 10 87 30 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x330]
  a5a507:	00 
  a5a508:	c4 e3 79 21 87 34 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x334],0x10
  a5a50f:	00 00 10 
  a5a512:	c5 fc 10 8f 10 03 00 	vmovups ymm1,YMMWORD PTR [rdi+0x310]
  a5a519:	00 
  a5a51a:	c4 e2 79 18 9f 38 03 	vbroadcastss xmm3,DWORD PTR [rdi+0x338]
  a5a521:	00 00 
  a5a523:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a5a529:	c4 e3 79 21 87 3c 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x33c],0x30
  a5a530:	00 00 30 
  a5a533:	c5 fb 10 9f 40 03 00 	vmovsd xmm3,QWORD PTR [rdi+0x340]
  a5a53a:	00 
  a5a53b:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5a541:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5a548:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5a54e:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a5a554:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a5a55a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a5a561:	03 
  a5a562:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a5a568:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm2
  a5a56f:	08 
  a5a570:	62 e1 7c 48 10 8f 48 	vmovups zmm17,ZMMWORD PTR [rdi+0x348]
  a5a577:	03 00 00 
  a5a57a:	c5 f8 10 87 a8 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x3a8]
  a5a581:	00 
  a5a582:	c5 fc 10 8f 88 03 00 	vmovups ymm1,YMMWORD PTR [rdi+0x388]
  a5a589:	00 
  a5a58a:	c4 e3 79 21 87 ac 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x3ac],0x10
  a5a591:	00 00 10 
  a5a594:	c4 e2 79 18 9f b0 03 	vbroadcastss xmm3,DWORD PTR [rdi+0x3b0]
  a5a59b:	00 00 
  a5a59d:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a5a5a3:	c4 e3 79 21 87 b4 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x3b4],0x30
  a5a5aa:	00 00 30 
  a5a5ad:	c5 fb 10 9f b8 03 00 	vmovsd xmm3,QWORD PTR [rdi+0x3b8]
  a5a5b4:	00 
  a5a5b5:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5a5bb:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5a5c2:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5a5c8:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a5a5ce:	62 72 55 48 7f f0    	vpermt2ps zmm14,zmm5,zmm0
  a5a5d4:	62 e2 65 40 7f c8    	vpermt2ps zmm17,zmm19,zmm0
  a5a5da:	62 e1 7c 48 10 47 0f 	vmovups zmm16,ZMMWORD PTR [rdi+0x3c0]
  a5a5e1:	c5 f8 10 87 20 04 00 	vmovups xmm0,XMMWORD PTR [rdi+0x420]
  a5a5e8:	00 
  a5a5e9:	c4 e3 79 21 87 24 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x424],0x10
  a5a5f0:	00 00 10 
  a5a5f3:	c4 e2 79 18 8f 28 04 	vbroadcastss xmm1,DWORD PTR [rdi+0x428]
  a5a5fa:	00 00 
  a5a5fc:	c5 fc 10 9f 00 04 00 	vmovups ymm3,YMMWORD PTR [rdi+0x400]
  a5a603:	00 
  a5a604:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5a60a:	c4 e3 79 21 87 2c 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x42c],0x30
  a5a611:	00 00 30 
  a5a614:	c5 fb 10 8f 30 04 00 	vmovsd xmm1,QWORD PTR [rdi+0x430]
  a5a61b:	00 
  a5a61c:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a5a622:	62 f3 e5 48 1a c0 01 	vinsertf64x4 zmm0,zmm3,ymm0,0x1
  a5a629:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5a62f:	62 b1 7c 48 28 c8    	vmovaps zmm1,zmm16
  a5a635:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a5a63b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a5a642:	06 
  a5a643:	62 e2 65 40 7f c0    	vpermt2ps zmm16,zmm19,zmm0
  a5a649:	c5 f8 10 87 98 04 00 	vmovups xmm0,XMMWORD PTR [rdi+0x498]
  a5a650:	00 
  a5a651:	c4 e3 79 21 87 9c 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x49c],0x10
  a5a658:	00 00 10 
  a5a65b:	c4 e2 79 18 8f a0 04 	vbroadcastss xmm1,DWORD PTR [rdi+0x4a0]
  a5a662:	00 00 
  a5a664:	62 e1 7c 48 10 a7 38 	vmovups zmm20,ZMMWORD PTR [rdi+0x438]
  a5a66b:	04 00 00 
  a5a66e:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5a674:	c4 e3 79 21 87 a4 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x4a4],0x30
  a5a67b:	00 00 30 
  a5a67e:	c5 fc 10 8f 78 04 00 	vmovups ymm1,YMMWORD PTR [rdi+0x478]
  a5a685:	00 
  a5a686:	c5 fb 10 9f a8 04 00 	vmovsd xmm3,QWORD PTR [rdi+0x4a8]
  a5a68d:	00 
  a5a68e:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5a694:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5a69b:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5a6a1:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a5a6a7:	62 e2 55 48 7f f0    	vpermt2ps zmm22,zmm5,zmm0
  a5a6ad:	62 e2 65 40 7f e0    	vpermt2ps zmm20,zmm19,zmm0
  a5a6b3:	62 e1 7c 48 10 af b0 	vmovups zmm21,ZMMWORD PTR [rdi+0x4b0]
  a5a6ba:	04 00 00 
  a5a6bd:	c5 f8 10 87 10 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x510]
  a5a6c4:	00 
  a5a6c5:	c4 e3 79 21 87 14 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x514],0x10
  a5a6cc:	00 00 10 
  a5a6cf:	c5 fc 10 8f f0 04 00 	vmovups ymm1,YMMWORD PTR [rdi+0x4f0]
  a5a6d6:	00 
  a5a6d7:	c4 e2 79 18 9f 18 05 	vbroadcastss xmm3,DWORD PTR [rdi+0x518]
  a5a6de:	00 00 
  a5a6e0:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a5a6e6:	c4 e3 79 21 87 1c 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x51c],0x30
  a5a6ed:	00 00 30 
  a5a6f0:	c5 fb 10 9f 20 05 00 	vmovsd xmm3,QWORD PTR [rdi+0x520]
  a5a6f7:	00 
  a5a6f8:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5a6fe:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5a705:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5a70b:	62 a1 7c 48 28 fd    	vmovaps zmm23,zmm21
  a5a711:	62 e2 55 48 7f f8    	vpermt2ps zmm23,zmm5,zmm0
  a5a717:	62 e2 65 40 7f e8    	vpermt2ps zmm21,zmm19,zmm0
  a5a71d:	62 61 7c 48 10 87 28 	vmovups zmm24,ZMMWORD PTR [rdi+0x528]
  a5a724:	05 00 00 
  a5a727:	c5 f8 10 87 88 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x588]
  a5a72e:	00 
  a5a72f:	c5 fc 10 8f 68 05 00 	vmovups ymm1,YMMWORD PTR [rdi+0x568]
  a5a736:	00 
  a5a737:	c4 e3 79 21 87 8c 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x58c],0x10
  a5a73e:	00 00 10 
  a5a741:	c4 e2 79 18 9f 90 05 	vbroadcastss xmm3,DWORD PTR [rdi+0x590]
  a5a748:	00 00 
  a5a74a:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a5a750:	c4 e3 79 21 87 94 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x594],0x30
  a5a757:	00 00 30 
  a5a75a:	c5 fb 10 9f 98 05 00 	vmovsd xmm3,QWORD PTR [rdi+0x598]
  a5a761:	00 
  a5a762:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5a768:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5a76f:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5a775:	62 01 7c 48 28 d8    	vmovaps zmm27,zmm24
  a5a77b:	62 62 55 48 7f d8    	vpermt2ps zmm27,zmm5,zmm0
  a5a781:	62 62 65 40 7f c0    	vpermt2ps zmm24,zmm19,zmm0
  a5a787:	62 61 7c 48 10 8f a0 	vmovups zmm25,ZMMWORD PTR [rdi+0x5a0]
  a5a78e:	05 00 00 
  a5a791:	c5 f8 10 87 00 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x600]
  a5a798:	00 
  a5a799:	c4 e3 79 21 87 04 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x604],0x10
  a5a7a0:	00 00 10 
  a5a7a3:	c4 e2 79 18 8f 08 06 	vbroadcastss xmm1,DWORD PTR [rdi+0x608]
  a5a7aa:	00 00 
  a5a7ac:	c5 fc 10 9f e0 05 00 	vmovups ymm3,YMMWORD PTR [rdi+0x5e0]
  a5a7b3:	00 
  a5a7b4:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5a7ba:	c4 e3 79 21 87 0c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x60c],0x30
  a5a7c1:	00 00 30 
  a5a7c4:	c5 fb 10 8f 10 06 00 	vmovsd xmm1,QWORD PTR [rdi+0x610]
  a5a7cb:	00 
  a5a7cc:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a5a7d2:	62 f3 e5 48 1a c0 01 	vinsertf64x4 zmm0,zmm3,ymm0,0x1
  a5a7d9:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5a7df:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a5a7e5:	62 62 55 48 7f d0    	vpermt2ps zmm26,zmm5,zmm0
  a5a7eb:	62 62 65 40 7f c8    	vpermt2ps zmm25,zmm19,zmm0
  a5a7f1:	c5 f8 10 87 78 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x678]
  a5a7f8:	00 
  a5a7f9:	c4 e3 79 21 87 7c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x67c],0x10
  a5a800:	00 00 10 
  a5a803:	c4 e2 79 18 8f 80 06 	vbroadcastss xmm1,DWORD PTR [rdi+0x680]
  a5a80a:	00 00 
  a5a80c:	62 61 7c 48 10 a7 18 	vmovups zmm28,ZMMWORD PTR [rdi+0x618]
  a5a813:	06 00 00 
  a5a816:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5a81c:	c4 e3 79 21 87 84 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x684],0x30
  a5a823:	00 00 30 
  a5a826:	c5 fc 10 8f 58 06 00 	vmovups ymm1,YMMWORD PTR [rdi+0x658]
  a5a82d:	00 
  a5a82e:	c5 fb 10 9f 88 06 00 	vmovsd xmm3,QWORD PTR [rdi+0x688]
  a5a835:	00 
  a5a836:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5a83c:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5a843:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5a849:	62 01 7c 48 28 ec    	vmovaps zmm29,zmm28
  a5a84f:	62 62 55 48 7f e8    	vpermt2ps zmm29,zmm5,zmm0
  a5a855:	c5 f8 10 8f f0 06 00 	vmovups xmm1,XMMWORD PTR [rdi+0x6f0]
  a5a85c:	00 
  a5a85d:	c4 e3 71 21 8f f4 06 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x6f4],0x10
  a5a864:	00 00 10 
  a5a867:	c4 e2 79 18 9f f8 06 	vbroadcastss xmm3,DWORD PTR [rdi+0x6f8]
  a5a86e:	00 00 
  a5a870:	62 62 65 40 7f e0    	vpermt2ps zmm28,zmm19,zmm0
  a5a876:	c4 e3 61 0c c1 03    	vblendps xmm0,xmm3,xmm1,0x3
  a5a87c:	c4 e3 79 21 87 fc 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6fc],0x30
  a5a883:	00 00 30 
  a5a886:	c5 f8 10 8f 68 07 00 	vmovups xmm1,XMMWORD PTR [rdi+0x768]
  a5a88d:	00 
  a5a88e:	c4 e3 71 21 8f 6c 07 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x76c],0x10
  a5a895:	00 00 10 
  a5a898:	c5 fb 10 9f 00 07 00 	vmovsd xmm3,QWORD PTR [rdi+0x700]
  a5a89f:	00 
  a5a8a0:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5a8a6:	c5 fc 10 9f d0 06 00 	vmovups ymm3,YMMWORD PTR [rdi+0x6d0]
  a5a8ad:	00 
  a5a8ae:	c4 e2 79 18 a7 70 07 	vbroadcastss xmm4,DWORD PTR [rdi+0x770]
  a5a8b5:	00 00 
  a5a8b7:	62 f3 e5 48 1a c0 01 	vinsertf64x4 zmm0,zmm3,ymm0,0x1
  a5a8be:	c4 e3 59 0c c9 03    	vblendps xmm1,xmm4,xmm1,0x3
  a5a8c4:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5a8ca:	62 61 7c 48 10 bf 90 	vmovups zmm31,ZMMWORD PTR [rdi+0x690]
  a5a8d1:	06 00 00 
  a5a8d4:	62 01 7c 48 28 f7    	vmovaps zmm30,zmm31
  a5a8da:	62 62 55 48 7f f0    	vpermt2ps zmm30,zmm5,zmm0
  a5a8e0:	c4 e3 71 21 8f 74 07 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x774],0x30
  a5a8e7:	00 00 30 
  a5a8ea:	62 62 65 40 7f f8    	vpermt2ps zmm31,zmm19,zmm0
  a5a8f0:	c5 fb 10 87 78 07 00 	vmovsd xmm0,QWORD PTR [rdi+0x778]
  a5a8f7:	00 
  a5a8f8:	c4 e3 75 18 c0 01    	vinsertf128 ymm0,ymm1,xmm0,0x1
  a5a8fe:	c5 fc 10 8f 48 07 00 	vmovups ymm1,YMMWORD PTR [rdi+0x748]
  a5a905:	00 
  a5a906:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5a90d:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5a913:	62 71 7c 48 10 97 08 	vmovups zmm10,ZMMWORD PTR [rdi+0x708]
  a5a91a:	07 00 00 
  a5a91d:	62 f2 2d 48 77 e8    	vpermi2ps zmm5,zmm10,zmm0
  a5a923:	62 72 65 40 7f d0    	vpermt2ps zmm10,zmm19,zmm0
  a5a929:	62 a1 44 48 5c de    	vsubps zmm19,zmm7,zmm22
  a5a92f:	62 11 3c 48 5c ec    	vsubps zmm13,zmm8,zmm28
  a5a935:	62 d1 64 40 58 fd    	vaddps zmm7,zmm19,zmm13
  a5a93b:	62 31 4c 48 5c e4    	vsubps zmm12,zmm6,zmm20
  a5a941:	62 51 14 40 5c d9    	vsubps zmm11,zmm29,zmm9
  a5a947:	62 72 7d 48 18 05 13 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff61ad13]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a5a94e:	ad 61 ff 
  a5a951:	62 51 24 48 58 cc    	vaddps zmm9,zmm11,zmm12
  a5a957:	62 d1 34 48 59 c0    	vmulps zmm0,zmm9,zmm8
  a5a95d:	62 f2 7d 48 18 35 99 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff61ad99]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a5a964:	ad 61 ff 
  a5a967:	62 f2 45 48 b8 c6    	vfmadd231ps zmm0,zmm7,zmm6
  a5a96d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a5a974:	0b 
  a5a975:	62 f1 34 48 59 c6    	vmulps zmm0,zmm9,zmm6
  a5a97b:	62 f2 3d 48 bc c7    	vfnmadd231ps zmm0,zmm8,zmm7
  a5a981:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a5a988:	0a 
  a5a989:	62 91 04 48 5c e3    	vsubps zmm4,zmm15,zmm27
  a5a98f:	62 d1 74 40 5c da    	vsubps zmm3,zmm17,zmm10
  a5a995:	62 f1 5c 48 58 c3    	vaddps zmm0,zmm4,zmm3
  a5a99b:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x1c0]
  a5a9a2:	07 
  a5a9a3:	62 91 34 48 5c d0    	vsubps zmm2,zmm9,zmm24
  a5a9a9:	62 d1 54 48 5c ce    	vsubps zmm1,zmm5,zmm14
  a5a9af:	62 f1 74 48 58 fa    	vaddps zmm7,zmm1,zmm2
  a5a9b5:	62 e1 44 48 59 d6    	vmulps zmm18,zmm7,zmm6
  a5a9bb:	62 c2 7d 48 b8 d0    	vfmadd231ps zmm18,zmm0,zmm8
  a5a9c1:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm18
  a5a9c8:	05 
  a5a9c9:	62 d1 44 48 59 f8    	vmulps zmm7,zmm7,zmm8
  a5a9cf:	62 f2 4d 48 bc f8    	vfnmadd231ps zmm7,zmm6,zmm0
  a5a9d5:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm7
  a5a9dc:	09 
  a5a9dd:	62 d1 64 40 5c c5    	vsubps zmm0,zmm19,zmm13
  a5a9e3:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a5a9e9:	62 f1 5c 48 5c e3    	vsubps zmm4,zmm4,zmm3
  a5a9ef:	62 71 6c 48 5c e1    	vsubps zmm12,zmm2,zmm1
  a5a9f5:	62 f1 24 48 59 ce    	vmulps zmm1,zmm11,zmm6
  a5a9fb:	62 d2 7d 48 b8 c8    	vfmadd231ps zmm1,zmm0,zmm8
  a5aa01:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a5aa08:	0f 
  a5aa09:	62 d1 24 48 59 c8    	vmulps zmm1,zmm11,zmm8
  a5aa0f:	62 f2 4d 48 bc c8    	vfnmadd231ps zmm1,zmm6,zmm0
  a5aa15:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm1
  a5aa1c:	15 
  a5aa1d:	62 d1 1c 48 59 c0    	vmulps zmm0,zmm12,zmm8
  a5aa23:	62 f2 5d 48 b8 c6    	vfmadd231ps zmm0,zmm4,zmm6
  a5aa29:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a5aa30:	0e 
  a5aa31:	62 c1 5c 48 59 d8    	vmulps zmm19,zmm4,zmm8
  a5aa37:	62 e2 1d 48 bc de    	vfnmadd231ps zmm19,zmm12,zmm6
  a5aa3d:	62 f1 4c 40 58 64 24 	vaddps zmm4,zmm22,ZMMWORD PTR [rsp+0x340]
  a5aa44:	0d 
  a5aa45:	62 f1 14 40 58 74 24 	vaddps zmm6,zmm29,ZMMWORD PTR [rsp+0x300]
  a5aa4c:	0c 
  a5aa4d:	62 11 04 48 58 c3    	vaddps zmm8,zmm15,zmm27
  a5aa53:	62 f1 0c 48 58 ed    	vaddps zmm5,zmm14,zmm5
  a5aa59:	62 71 5c 40 58 5c 24 	vaddps zmm11,zmm20,ZMMWORD PTR [rsp+0x4c0]
  a5aa60:	13 
  a5aa61:	62 71 1c 40 58 64 24 	vaddps zmm12,zmm28,ZMMWORD PTR [rsp+0x500]
  a5aa68:	14 
  a5aa69:	62 11 34 48 58 e8    	vaddps zmm13,zmm9,zmm24
  a5aa6f:	62 51 74 40 58 d2    	vaddps zmm10,zmm17,zmm10
  a5aa75:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a5aa7c:	01 
  a5aa7d:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x180]
  a5aa84:	06 
  a5aa85:	62 71 7c 48 58 f1    	vaddps zmm14,zmm0,zmm1
  a5aa8b:	62 e1 7c 48 5c c9    	vsubps zmm17,zmm0,zmm1
  a5aa91:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a5aa98:	fe 
  a5aa99:	62 81 7c 48 58 e1    	vaddps zmm20,zmm0,zmm25
  a5aa9f:	62 81 7c 48 5c f1    	vsubps zmm22,zmm0,zmm25
  a5aaa5:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a5aaac:	04 
  a5aaad:	62 21 7c 48 58 c7    	vaddps zmm24,zmm0,zmm23
  a5aab3:	62 a1 7c 48 5c ff    	vsubps zmm23,zmm0,zmm23
  a5aab9:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a5aac0:	62 21 7c 48 58 cd    	vaddps zmm25,zmm0,zmm21
  a5aac6:	62 a1 7c 48 5c ed    	vsubps zmm21,zmm0,zmm21
  a5aacc:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x200]
  a5aad3:	08 
  a5aad4:	62 01 7c 48 58 df    	vaddps zmm27,zmm0,zmm31
  a5aada:	62 81 7c 48 5c d7    	vsubps zmm18,zmm0,zmm31
  a5aae0:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a5aae7:	03 
  a5aae8:	62 01 7c 48 58 e6    	vaddps zmm28,zmm0,zmm30
  a5aaee:	62 01 7c 48 5c ee    	vsubps zmm29,zmm0,zmm30
  a5aaf4:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a5aafb:	02 
  a5aafc:	62 21 7c 48 58 f0    	vaddps zmm30,zmm0,zmm16
  a5ab02:	62 a1 7c 48 5c c0    	vsubps zmm16,zmm0,zmm16
  a5ab08:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a5ab0f:	ff 
  a5ab10:	62 01 7c 48 58 fa    	vaddps zmm31,zmm0,zmm26
  a5ab16:	62 61 2c 40 5c d0    	vsubps zmm26,zmm26,zmm0
  a5ab1c:	62 b1 44 40 58 c5    	vaddps zmm0,zmm23,zmm21
  a5ab22:	62 a1 54 40 5c ef    	vsubps zmm21,zmm21,zmm23
  a5ab28:	62 81 6c 40 5c fd    	vsubps zmm23,zmm18,zmm29
  a5ab2e:	62 a1 14 40 58 d2    	vaddps zmm18,zmm29,zmm18
  a5ab34:	62 01 0c 48 58 ef    	vaddps zmm29,zmm14,zmm31
  a5ab3a:	62 11 0c 48 5c f7    	vsubps zmm14,zmm14,zmm31
  a5ab40:	62 01 34 40 58 fb    	vaddps zmm31,zmm25,zmm27
  a5ab46:	62 01 34 40 5c cb    	vsubps zmm25,zmm25,zmm27
  a5ab4c:	62 61 5c 48 58 de    	vaddps zmm27,zmm4,zmm6
  a5ab52:	62 f1 5c 48 5c e6    	vsubps zmm4,zmm4,zmm6
  a5ab58:	62 d1 24 48 58 f4    	vaddps zmm6,zmm11,zmm12
  a5ab5e:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a5ab64:	62 51 14 48 58 e2    	vaddps zmm12,zmm13,zmm10
  a5ab6a:	62 51 14 48 5c d2    	vsubps zmm10,zmm13,zmm10
  a5ab70:	62 71 3c 48 58 ed    	vaddps zmm13,zmm8,zmm5
  a5ab76:	62 f1 3c 48 5c ed    	vsubps zmm5,zmm8,zmm5
  a5ab7c:	62 31 0c 40 58 c4    	vaddps zmm8,zmm30,zmm20
  a5ab82:	62 a1 0c 40 5c e4    	vsubps zmm20,zmm30,zmm20
  a5ab88:	62 01 3c 40 58 f4    	vaddps zmm30,zmm24,zmm28
  a5ab8e:	62 01 1c 40 5c c0    	vsubps zmm24,zmm28,zmm24
  a5ab94:	62 41 5c 48 58 e3    	vaddps zmm28,zmm4,zmm11
  a5ab9a:	62 f1 24 48 5c e4    	vsubps zmm4,zmm11,zmm4
  a5aba0:	62 71 2c 48 5c dd    	vsubps zmm11,zmm10,zmm5
  a5aba6:	62 d1 54 48 58 ea    	vaddps zmm5,zmm5,zmm10
  a5abac:	62 72 7d 48 18 15 e6 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff61a7e6]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a5abb3:	a7 61 ff 
  a5abb6:	62 d1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm10
  a5abbc:	62 c1 44 40 59 fa    	vmulps zmm23,zmm23,zmm10
  a5abc2:	62 c1 54 40 59 ea    	vmulps zmm21,zmm21,zmm10
  a5abc8:	62 c1 6c 40 59 d2    	vmulps zmm18,zmm18,zmm10
  a5abce:	62 41 1c 40 59 e2    	vmulps zmm28,zmm28,zmm10
  a5abd4:	62 51 24 48 59 da    	vmulps zmm11,zmm11,zmm10
  a5abda:	62 d1 5c 48 59 e2    	vmulps zmm4,zmm4,zmm10
  a5abe0:	62 d1 54 48 59 ea    	vmulps zmm5,zmm5,zmm10
  a5abe6:	62 31 74 40 58 d6    	vaddps zmm10,zmm17,zmm22
  a5abec:	62 a1 74 40 5c ce    	vsubps zmm17,zmm17,zmm22
  a5abf2:	62 a1 54 40 5c f2    	vsubps zmm22,zmm21,zmm18
  a5abf8:	62 a1 54 40 58 d2    	vaddps zmm18,zmm21,zmm18
  a5abfe:	62 a1 2c 40 58 e8    	vaddps zmm21,zmm26,zmm16
  a5ac04:	62 81 7c 40 5c c2    	vsubps zmm16,zmm16,zmm26
  a5ac0a:	62 21 7c 48 58 d7    	vaddps zmm26,zmm0,zmm23
  a5ac10:	62 f1 44 40 5c f8    	vsubps zmm7,zmm23,zmm0
  a5ac16:	62 81 14 40 58 fe    	vaddps zmm23,zmm29,zmm30
  a5ac1c:	62 91 14 40 5c c6    	vsubps zmm0,zmm29,zmm30
  a5ac22:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a5ac29:	62 41 4c 48 58 f4    	vaddps zmm30,zmm6,zmm12
  a5ac2f:	62 d1 4c 48 5c c4    	vsubps zmm0,zmm6,zmm12
  a5ac35:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a5ac3c:	ff 
  a5ac3d:	62 91 3c 48 58 f7    	vaddps zmm6,zmm8,zmm31
  a5ac43:	62 91 3c 48 5c c7    	vsubps zmm0,zmm8,zmm31
  a5ac49:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a5ac50:	fe 
  a5ac51:	62 51 24 40 58 c5    	vaddps zmm8,zmm27,zmm13
  a5ac57:	62 01 14 48 5c fb    	vsubps zmm31,zmm13,zmm27
  a5ac5d:	62 11 2c 48 58 e2    	vaddps zmm12,zmm10,zmm26
  a5ac63:	62 01 2c 48 5c ea    	vsubps zmm29,zmm10,zmm26
  a5ac69:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x280]
  a5ac70:	0a 
  a5ac71:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x240]
  a5ac78:	09 
  a5ac79:	62 61 7c 48 58 d1    	vaddps zmm26,zmm0,zmm1
  a5ac7f:	62 71 7c 48 5c f9    	vsubps zmm15,zmm0,zmm1
  a5ac85:	62 21 54 40 58 de    	vaddps zmm27,zmm21,zmm22
  a5ac8b:	62 31 54 40 5c ee    	vsubps zmm13,zmm21,zmm22
  a5ac91:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x2c0]
  a5ac98:	0b 
  a5ac99:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a5aca0:	05 
  a5aca1:	62 e1 7c 48 58 e9    	vaddps zmm21,zmm0,zmm1
  a5aca7:	62 71 74 48 5c d0    	vsubps zmm10,zmm1,zmm0
  a5acad:	62 91 0c 48 58 d9    	vaddps zmm3,zmm14,zmm25
  a5acb3:	62 11 0c 48 5c f1    	vsubps zmm14,zmm14,zmm25
  a5acb9:	62 61 5c 48 5c cd    	vsubps zmm25,zmm4,zmm5
  a5acbf:	62 71 5c 48 58 cd    	vaddps zmm9,zmm4,zmm5
  a5acc5:	62 b1 3c 40 58 d4    	vaddps zmm2,zmm24,zmm20
  a5accb:	62 81 5c 40 5c e0    	vsubps zmm20,zmm20,zmm24
  a5acd1:	62 41 1c 40 58 c3    	vaddps zmm24,zmm28,zmm11
  a5acd7:	62 11 24 48 5c dc    	vsubps zmm11,zmm11,zmm28
  a5acdd:	62 21 74 40 58 e2    	vaddps zmm28,zmm17,zmm18
  a5ace3:	62 a1 74 40 5c d2    	vsubps zmm18,zmm17,zmm18
  a5ace9:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x540]
  a5acf0:	15 
  a5acf1:	62 b1 7c 48 58 cb    	vaddps zmm1,zmm0,zmm19
  a5acf7:	62 a1 7c 48 5c db    	vsubps zmm19,zmm0,zmm19
  a5acfd:	62 f1 7c 40 58 c7    	vaddps zmm0,zmm16,zmm7
  a5ad03:	62 e1 7c 40 5c c7    	vsubps zmm16,zmm16,zmm7
  a5ad09:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x3c0]
  a5ad10:	0f 
  a5ad11:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x380]
  a5ad18:	0e 
  a5ad19:	62 f1 5c 48 5c fd    	vsubps zmm7,zmm4,zmm5
  a5ad1f:	62 f1 5c 48 58 e5    	vaddps zmm4,zmm4,zmm5
  a5ad25:	62 c1 44 40 58 c8    	vaddps zmm17,zmm23,zmm8
  a5ad2b:	62 d1 44 40 5c e8    	vsubps zmm5,zmm23,zmm8
  a5ad31:	62 11 4c 48 58 c6    	vaddps zmm8,zmm6,zmm30
  a5ad37:	62 91 4c 48 5c f6    	vsubps zmm6,zmm6,zmm30
  a5ad3d:	62 a1 1c 48 58 fd    	vaddps zmm23,zmm12,zmm21
  a5ad43:	62 21 1c 48 5c f5    	vsubps zmm30,zmm12,zmm21
  a5ad49:	62 11 24 40 58 e2    	vaddps zmm12,zmm27,zmm26
  a5ad4f:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm12
  a5ad56:	01 
  a5ad57:	62 11 24 40 5c e2    	vsubps zmm12,zmm27,zmm26
  a5ad5d:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm12
  a5ad64:	05 
  a5ad65:	62 81 64 48 58 f0    	vaddps zmm22,zmm3,zmm24
  a5ad6b:	62 91 64 48 5c d8    	vsubps zmm3,zmm3,zmm24
  a5ad71:	62 11 6c 48 58 e1    	vaddps zmm12,zmm2,zmm25
  a5ad77:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm12
  a5ad7e:	04 
  a5ad7f:	62 91 6c 48 5c d1    	vsubps zmm2,zmm2,zmm25
  a5ad85:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm2
  a5ad8c:	06 
  a5ad8d:	62 61 1c 40 58 cf    	vaddps zmm25,zmm28,zmm7
  a5ad93:	62 f1 1c 40 5c d7    	vsubps zmm2,zmm28,zmm7
  a5ad99:	62 f1 7c 48 58 f9    	vaddps zmm7,zmm0,zmm1
  a5ad9f:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm7
  a5ada6:	02 
  a5ada7:	62 f1 7c 48 5c f9    	vsubps zmm7,zmm0,zmm1
  a5adad:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a5adb4:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a5adbb:	ff 
  a5adbc:	62 61 7c 48 58 c1    	vaddps zmm24,zmm0,zmm1
  a5adc2:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a5adc8:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp-0x80]
  a5adcf:	fe 
  a5add0:	62 d1 04 40 58 cc    	vaddps zmm1,zmm31,zmm12
  a5add6:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a5addd:	08 
  a5adde:	62 91 1c 48 5c cf    	vsubps zmm1,zmm12,zmm31
  a5ade4:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  a5adeb:	0b 
  a5adec:	62 c1 14 40 58 ef    	vaddps zmm21,zmm29,zmm15
  a5adf2:	62 d1 14 40 5c cf    	vsubps zmm1,zmm29,zmm15
  a5adf8:	62 51 14 48 58 e2    	vaddps zmm12,zmm13,zmm10
  a5adfe:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm12
  a5ae05:	07 
  a5ae06:	62 51 14 48 5c fa    	vsubps zmm15,zmm13,zmm10
  a5ae0c:	62 51 0c 48 58 e1    	vaddps zmm12,zmm14,zmm9
  a5ae12:	62 41 0c 48 5c f9    	vsubps zmm31,zmm14,zmm9
  a5ae18:	62 51 5c 40 58 cb    	vaddps zmm9,zmm20,zmm11
  a5ae1e:	62 71 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm9
  a5ae25:	62 51 5c 40 5c cb    	vsubps zmm9,zmm20,zmm11
  a5ae2b:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm9
  a5ae32:	0a 
  a5ae33:	62 21 6c 40 58 db    	vaddps zmm27,zmm18,zmm19
  a5ae39:	62 31 6c 40 5c db    	vsubps zmm11,zmm18,zmm19
  a5ae3f:	62 e1 7c 40 5c dc    	vsubps zmm19,zmm16,zmm4
  a5ae45:	62 61 7c 40 58 e4    	vaddps zmm28,zmm16,zmm4
  a5ae4b:	62 71 7c 48 28 35 2b 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff66c12b]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5ae52:	c1 66 ff 
  a5ae55:	62 b1 7c 48 28 e1    	vmovaps zmm4,zmm17
  a5ae5b:	62 f2 0d 48 7f e5    	vpermt2ps zmm4,zmm14,zmm5
  a5ae61:	62 61 7c 48 28 2d 55 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff66c155]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a5ae68:	c1 66 ff 
  a5ae6b:	62 e2 15 40 7f cd    	vpermt2ps zmm17,zmm29,zmm5
  a5ae71:	62 31 7c 48 28 ef    	vmovaps zmm13,zmm23
  a5ae77:	62 12 0d 48 7f ee    	vpermt2ps zmm13,zmm14,zmm30
  a5ae7d:	62 82 15 40 7f fe    	vpermt2ps zmm23,zmm29,zmm30
  a5ae83:	62 a1 7c 48 28 c6    	vmovaps zmm16,zmm22
  a5ae89:	62 e2 0d 48 7f c3    	vpermt2ps zmm16,zmm14,zmm3
  a5ae8f:	62 e2 15 40 7f f3    	vpermt2ps zmm22,zmm29,zmm3
  a5ae95:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm22
  a5ae9c:	fe 
  a5ae9d:	62 01 7c 48 28 f1    	vmovaps zmm30,zmm25
  a5aea3:	62 62 0d 48 7f f2    	vpermt2ps zmm30,zmm14,zmm2
  a5aea9:	62 62 15 40 7f ca    	vpermt2ps zmm25,zmm29,zmm2
  a5aeaf:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm25
  a5aeb6:	03 
  a5aeb7:	62 91 7c 48 28 d8    	vmovaps zmm3,zmm24
  a5aebd:	62 f2 0d 48 7f d8    	vpermt2ps zmm3,zmm14,zmm0
  a5aec3:	62 62 15 40 7f c0    	vpermt2ps zmm24,zmm29,zmm0
  a5aec9:	62 a1 7c 48 28 d5    	vmovaps zmm18,zmm21
  a5aecf:	62 e2 0d 48 7f d1    	vpermt2ps zmm18,zmm14,zmm1
  a5aed5:	62 e2 15 40 7f e9    	vpermt2ps zmm21,zmm29,zmm1
  a5aedb:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a5aee1:	62 92 0d 48 7f cf    	vpermt2ps zmm1,zmm14,zmm31
  a5aee7:	62 12 15 40 7f e7    	vpermt2ps zmm12,zmm29,zmm31
  a5aeed:	62 81 7c 48 28 e3    	vmovaps zmm20,zmm27
  a5aef3:	62 c2 0d 48 7f e3    	vpermt2ps zmm20,zmm14,zmm11
  a5aef9:	62 42 15 40 7f db    	vpermt2ps zmm27,zmm29,zmm11
  a5aeff:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a5af05:	62 72 0d 48 7f c6    	vpermt2ps zmm8,zmm14,zmm6
  a5af0b:	62 f2 15 40 7f c6    	vpermt2ps zmm0,zmm29,zmm6
  a5af11:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a5af18:	ff 
  a5af19:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a5af20:	01 
  a5af21:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a5af27:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x140]
  a5af2e:	05 
  a5af2f:	62 62 0d 48 7f d2    	vpermt2ps zmm26,zmm14,zmm2
  a5af35:	62 f2 15 40 7f c2    	vpermt2ps zmm0,zmm29,zmm2
  a5af3b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a5af42:	01 
  a5af43:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x100]
  a5af4a:	04 
  a5af4b:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a5af51:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a5af58:	06 
  a5af59:	62 72 0d 48 7f d8    	vpermt2ps zmm11,zmm14,zmm0
  a5af5f:	62 72 15 40 7f d0    	vpermt2ps zmm10,zmm29,zmm0
  a5af65:	62 d1 7c 48 28 d2    	vmovaps zmm2,zmm10
  a5af6b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a5af72:	02 
  a5af73:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a5af79:	62 62 0d 48 7f cf    	vpermt2ps zmm25,zmm14,zmm7
  a5af7f:	62 f2 15 40 7f c7    	vpermt2ps zmm0,zmm29,zmm7
  a5af85:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a5af8c:	02 
  a5af8d:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x200]
  a5af94:	08 
  a5af95:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a5af9b:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x2c0]
  a5afa2:	0b 
  a5afa3:	62 f2 0d 48 7f c6    	vpermt2ps zmm0,zmm14,zmm6
  a5afa9:	62 f2 15 40 7f fe    	vpermt2ps zmm7,zmm29,zmm6
  a5afaf:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x1c0]
  a5afb6:	07 
  a5afb7:	62 b1 7c 48 28 ee    	vmovaps zmm5,zmm22
  a5afbd:	62 d2 0d 48 7f ef    	vpermt2ps zmm5,zmm14,zmm15
  a5afc3:	62 c2 15 40 7f f7    	vpermt2ps zmm22,zmm29,zmm15
  a5afc9:	62 71 7c 48 10 0c 24 	vmovups zmm9,ZMMWORD PTR [rsp]
  a5afd0:	62 41 7c 48 28 f9    	vmovaps zmm31,zmm9
  a5afd6:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x280]
  a5afdd:	0a 
  a5afde:	62 62 0d 48 7f fe    	vpermt2ps zmm31,zmm14,zmm6
  a5afe4:	62 72 15 40 7f ce    	vpermt2ps zmm9,zmm29,zmm6
  a5afea:	62 71 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm9
  a5aff1:	62 12 65 40 77 f4    	vpermi2ps zmm14,zmm19,zmm28
  a5aff7:	62 82 15 40 7f dc    	vpermt2ps zmm19,zmm29,zmm28
  a5affd:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm19
  a5b004:	06 
  a5b005:	62 61 7c 48 28 25 f1 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff66bef1]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5b00c:	be 66 ff 
  a5b00f:	62 71 7c 48 28 cc    	vmovaps zmm9,zmm4
  a5b015:	62 72 1d 40 7f cb    	vpermt2ps zmm9,zmm28,zmm3
  a5b01b:	62 e1 7c 48 28 1d 1b 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff66bf1b]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a5b022:	bf 66 ff 
  a5b025:	62 f2 65 40 7f e3    	vpermt2ps zmm4,zmm19,zmm3
  a5b02b:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm4
  a5b032:	08 
  a5b033:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a5b039:	62 b2 1d 40 7f da    	vpermt2ps zmm3,zmm28,zmm18
  a5b03f:	62 32 65 40 7f ea    	vpermt2ps zmm13,zmm19,zmm18
  a5b045:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm13
  a5b04c:	07 
  a5b04d:	62 b1 7c 48 28 f0    	vmovaps zmm6,zmm16
  a5b053:	62 31 7c 48 28 f8    	vmovaps zmm15,zmm16
  a5b059:	62 72 1d 40 7f f9    	vpermt2ps zmm15,zmm28,zmm1
  a5b05f:	62 f2 65 40 7f f1    	vpermt2ps zmm6,zmm19,zmm1
  a5b065:	62 11 7c 48 28 d6    	vmovaps zmm10,zmm30
  a5b06b:	62 81 7c 48 28 c6    	vmovaps zmm16,zmm30
  a5b071:	62 a2 1d 40 7f c4    	vpermt2ps zmm16,zmm28,zmm20
  a5b077:	62 32 65 40 7f d4    	vpermt2ps zmm10,zmm19,zmm20
  a5b07d:	62 a1 7c 48 28 e1    	vmovaps zmm20,zmm17
  a5b083:	62 82 1d 40 7f e0    	vpermt2ps zmm20,zmm28,zmm24
  a5b089:	62 82 65 40 7f c8    	vpermt2ps zmm17,zmm19,zmm24
  a5b08f:	62 21 7c 48 28 c1    	vmovaps zmm24,zmm17
  a5b095:	62 a1 7c 48 28 cf    	vmovaps zmm17,zmm23
  a5b09b:	62 a2 1d 40 7f fd    	vpermt2ps zmm23,zmm28,zmm21
  a5b0a1:	62 a2 65 40 7f cd    	vpermt2ps zmm17,zmm19,zmm21
  a5b0a7:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a5b0ae:	fe 
  a5b0af:	62 e1 7c 48 28 e9    	vmovaps zmm21,zmm1
  a5b0b5:	62 c2 1d 40 7f ec    	vpermt2ps zmm21,zmm28,zmm12
  a5b0bb:	62 d2 65 40 7f cc    	vpermt2ps zmm1,zmm19,zmm12
  a5b0c1:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0xc0]
  a5b0c8:	03 
  a5b0c9:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a5b0cf:	62 12 1d 40 7f e3    	vpermt2ps zmm12,zmm28,zmm27
  a5b0d5:	62 12 65 40 7f eb    	vpermt2ps zmm13,zmm19,zmm27
  a5b0db:	62 41 7c 48 28 f0    	vmovaps zmm30,zmm8
  a5b0e1:	62 62 1d 40 7f f0    	vpermt2ps zmm30,zmm28,zmm0
  a5b0e7:	62 72 65 40 7f c0    	vpermt2ps zmm8,zmm19,zmm0
  a5b0ed:	62 81 7c 48 28 d2    	vmovaps zmm18,zmm26
  a5b0f3:	62 e2 1d 40 7f d5    	vpermt2ps zmm18,zmm28,zmm5
  a5b0f9:	62 62 65 40 7f d5    	vpermt2ps zmm26,zmm19,zmm5
  a5b0ff:	62 41 7c 48 28 db    	vmovaps zmm27,zmm11
  a5b105:	62 02 1d 40 7f df    	vpermt2ps zmm27,zmm28,zmm31
  a5b10b:	62 12 65 40 7f df    	vpermt2ps zmm11,zmm19,zmm31
  a5b111:	62 91 7c 48 28 e1    	vmovaps zmm4,zmm25
  a5b117:	62 d2 1d 40 7f e6    	vpermt2ps zmm4,zmm28,zmm14
  a5b11d:	62 42 65 40 7f ce    	vpermt2ps zmm25,zmm19,zmm14
  a5b123:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a5b12a:	ff 
  a5b12b:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a5b131:	62 62 1d 40 7f ef    	vpermt2ps zmm29,zmm28,zmm7
  a5b137:	62 f2 65 40 7f c7    	vpermt2ps zmm0,zmm19,zmm7
  a5b13d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a5b144:	ff 
  a5b145:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a5b14c:	01 
  a5b14d:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a5b153:	62 b2 1d 40 7f fe    	vpermt2ps zmm7,zmm28,zmm22
  a5b159:	62 b2 65 40 7f c6    	vpermt2ps zmm0,zmm19,zmm22
  a5b15f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a5b166:	01 
  a5b167:	62 61 7c 48 28 fa    	vmovaps zmm31,zmm2
  a5b16d:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a5b174:	62 62 1d 40 7f f8    	vpermt2ps zmm31,zmm28,zmm0
  a5b17a:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a5b180:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  a5b187:	04 
  a5b188:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a5b18f:	02 
  a5b190:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x180]
  a5b197:	06 
  a5b198:	62 62 7d 48 77 e2    	vpermi2ps zmm28,zmm0,zmm2
  a5b19e:	62 f2 65 40 7f c2    	vpermt2ps zmm0,zmm19,zmm2
  a5b1a4:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a5b1ab:	02 
  a5b1ac:	62 d1 b5 48 14 c7    	vunpcklpd zmm0,zmm9,zmm15
  a5b1b2:	62 d1 b5 48 15 ef    	vunpckhpd zmm5,zmm9,zmm15
  a5b1b8:	62 31 e5 48 14 f0    	vunpcklpd zmm14,zmm3,zmm16
  a5b1be:	62 31 e5 48 15 c8    	vunpckhpd zmm9,zmm3,zmm16
  a5b1c4:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x200]
  a5b1cb:	08 
  a5b1cc:	62 f1 ed 48 14 de    	vunpcklpd zmm3,zmm2,zmm6
  a5b1d2:	62 71 ed 48 15 fe    	vunpckhpd zmm15,zmm2,zmm6
  a5b1d8:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x1c0]
  a5b1df:	07 
  a5b1e0:	62 d1 ed 48 14 f2    	vunpcklpd zmm6,zmm2,zmm10
  a5b1e6:	62 c1 ed 48 15 f2    	vunpckhpd zmm22,zmm2,zmm10
  a5b1ec:	62 31 dd 40 14 d5    	vunpcklpd zmm10,zmm20,zmm21
  a5b1f2:	62 a1 dd 40 15 dd    	vunpckhpd zmm19,zmm20,zmm21
  a5b1f8:	62 c1 c5 40 14 ec    	vunpcklpd zmm21,zmm23,zmm12
  a5b1fe:	62 51 c5 40 15 e4    	vunpckhpd zmm12,zmm23,zmm12
  a5b204:	62 e1 bd 40 14 f9    	vunpcklpd zmm23,zmm24,zmm1
  a5b20a:	62 f1 bd 40 15 c9    	vunpckhpd zmm1,zmm24,zmm1
  a5b210:	62 d1 f5 40 14 d5    	vunpcklpd zmm2,zmm17,zmm13
  a5b216:	62 c1 f5 40 15 c5    	vunpckhpd zmm16,zmm17,zmm13
  a5b21c:	62 61 7c 48 28 05 da 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff66bbda]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5b223:	bb 66 ff 
  a5b226:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a5b22c:	62 d2 3d 40 7f c6    	vpermt2ps zmm0,zmm24,zmm14
  a5b232:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a5b239:	62 f1 7c 48 28 05 fd 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff66bbfd]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5b240:	bb 66 ff 
  a5b243:	62 52 7d 48 7f ee    	vpermt2ps zmm13,zmm0,zmm14
  a5b249:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm13
  a5b250:	09 
  a5b251:	62 71 7c 48 28 f5    	vmovaps zmm14,zmm5
  a5b257:	62 52 3d 40 7f f1    	vpermt2ps zmm14,zmm24,zmm9
  a5b25d:	62 d2 7d 48 7f e9    	vpermt2ps zmm5,zmm0,zmm9
  a5b263:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm5
  a5b26a:	06 
  a5b26b:	62 71 7c 48 28 eb    	vmovaps zmm13,zmm3
  a5b271:	62 72 3d 40 7f ee    	vpermt2ps zmm13,zmm24,zmm6
  a5b277:	62 f2 7d 48 7f de    	vpermt2ps zmm3,zmm0,zmm6
  a5b27d:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm3
  a5b284:	03 
  a5b285:	62 d1 7c 48 28 df    	vmovaps zmm3,zmm15
  a5b28b:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a5b291:	62 a2 3d 40 7f ce    	vpermt2ps zmm17,zmm24,zmm22
  a5b297:	62 31 7c 48 28 f9    	vmovaps zmm15,zmm17
  a5b29d:	62 b2 7d 48 7f de    	vpermt2ps zmm3,zmm0,zmm22
  a5b2a3:	62 e1 7c 48 28 cb    	vmovaps zmm17,zmm3
  a5b2a9:	62 c1 7c 48 28 e2    	vmovaps zmm20,zmm10
  a5b2af:	62 a2 3d 40 7f e5    	vpermt2ps zmm20,zmm24,zmm21
  a5b2b5:	62 32 7d 48 7f d5    	vpermt2ps zmm10,zmm0,zmm21
  a5b2bb:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm10
  a5b2c2:	05 
  a5b2c3:	62 b1 7c 48 28 db    	vmovaps zmm3,zmm19
  a5b2c9:	62 d2 3d 40 7f dc    	vpermt2ps zmm3,zmm24,zmm12
  a5b2cf:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a5b2d6:	fe 
  a5b2d7:	62 c2 7d 48 7f dc    	vpermt2ps zmm19,zmm0,zmm12
  a5b2dd:	62 b1 7c 48 28 df    	vmovaps zmm3,zmm23
  a5b2e3:	62 f2 3d 40 7f da    	vpermt2ps zmm3,zmm24,zmm2
  a5b2e9:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm3
  a5b2f0:	0b 
  a5b2f1:	62 e2 7d 48 7f fa    	vpermt2ps zmm23,zmm0,zmm2
  a5b2f7:	62 b2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm16
  a5b2fd:	62 71 7c 48 28 d1    	vmovaps zmm10,zmm1
  a5b303:	62 91 8d 40 14 db    	vunpcklpd zmm3,zmm30,zmm27
  a5b309:	62 01 8d 40 15 db    	vunpckhpd zmm27,zmm30,zmm27
  a5b30f:	62 f1 ed 40 14 cc    	vunpcklpd zmm1,zmm18,zmm4
  a5b315:	62 f1 ed 40 15 e4    	vunpckhpd zmm4,zmm18,zmm4
  a5b31b:	62 c1 bd 48 14 d3    	vunpcklpd zmm18,zmm8,zmm11
  a5b321:	62 d1 bd 48 15 f3    	vunpckhpd zmm6,zmm8,zmm11
  a5b327:	62 11 ad 40 14 c1    	vunpcklpd zmm8,zmm26,zmm25
  a5b32d:	62 81 ad 40 15 e9    	vunpckhpd zmm21,zmm26,zmm25
  a5b333:	62 01 95 40 14 f7    	vunpcklpd zmm30,zmm29,zmm31
  a5b339:	62 11 95 40 15 df    	vunpckhpd zmm11,zmm29,zmm31
  a5b33f:	62 81 c5 48 14 f4    	vunpcklpd zmm22,zmm7,zmm28
  a5b345:	62 91 c5 48 15 fc    	vunpckhpd zmm7,zmm7,zmm28
  a5b34b:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp-0x40]
  a5b352:	ff 
  a5b353:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x100]
  a5b35a:	04 
  a5b35b:	62 d1 d5 48 14 d1    	vunpcklpd zmm2,zmm5,zmm9
  a5b361:	62 51 d5 48 15 c9    	vunpckhpd zmm9,zmm5,zmm9
  a5b367:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x40]
  a5b36e:	01 
  a5b36f:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x80]
  a5b376:	02 
  a5b377:	62 41 d5 48 14 cc    	vunpcklpd zmm25,zmm5,zmm12
  a5b37d:	62 41 d5 48 15 e4    	vunpckhpd zmm28,zmm5,zmm12
  a5b383:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a5b389:	62 72 3d 40 7f e1    	vpermt2ps zmm12,zmm24,zmm1
  a5b38f:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm12
  a5b396:	02 
  a5b397:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a5b39d:	62 11 7c 48 28 e3    	vmovaps zmm12,zmm27
  a5b3a3:	62 72 3d 40 7f e4    	vpermt2ps zmm12,zmm24,zmm4
  a5b3a9:	62 62 7d 48 7f dc    	vpermt2ps zmm27,zmm0,zmm4
  a5b3af:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a5b3b5:	62 d2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm8
  a5b3bb:	62 c2 7d 48 7f d0    	vpermt2ps zmm18,zmm0,zmm8
  a5b3c1:	62 f1 7c 48 28 e6    	vmovaps zmm4,zmm6
  a5b3c7:	62 b2 3d 40 7f e5    	vpermt2ps zmm4,zmm24,zmm21
  a5b3cd:	62 b2 7d 48 7f f5    	vpermt2ps zmm6,zmm0,zmm21
  a5b3d3:	62 11 7c 48 28 c6    	vmovaps zmm8,zmm30
  a5b3d9:	62 32 3d 40 7f c6    	vpermt2ps zmm8,zmm24,zmm22
  a5b3df:	62 22 7d 48 7f f6    	vpermt2ps zmm30,zmm0,zmm22
  a5b3e5:	62 c1 7c 48 28 f3    	vmovaps zmm22,zmm11
  a5b3eb:	62 e2 3d 40 7f f7    	vpermt2ps zmm22,zmm24,zmm7
  a5b3f1:	62 72 7d 48 7f df    	vpermt2ps zmm11,zmm0,zmm7
  a5b3f7:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  a5b3fd:	62 92 7d 48 7f d1    	vpermt2ps zmm2,zmm0,zmm25
  a5b403:	62 82 3d 40 7f e9    	vpermt2ps zmm21,zmm24,zmm25
  a5b409:	62 12 3d 40 7f cc    	vpermt2ps zmm9,zmm24,zmm28
  a5b40f:	62 f1 7c 48 10 42 11 	vmovups zmm0,ZMMWORD PTR [rdx+0x440]
  a5b416:	62 f1 7c 48 10 7a 10 	vmovups zmm7,ZMMWORD PTR [rdx+0x400]
  a5b41d:	62 f1 3c 48 59 ef    	vmulps zmm5,zmm8,zmm7
  a5b423:	62 f2 5d 40 b8 e8    	vfmadd231ps zmm5,zmm20,zmm0
  a5b429:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm5
  a5b430:	08 
  a5b431:	62 61 5c 40 59 d7    	vmulps zmm26,zmm20,zmm7
  a5b437:	62 42 7d 48 bc d0    	vfnmadd231ps zmm26,zmm0,zmm8
  a5b43d:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm26
  a5b444:	0d 
  a5b445:	62 f1 7c 48 10 42 04 	vmovups zmm0,ZMMWORD PTR [rdx+0x100]
  a5b44c:	62 f1 7c 48 10 7a 05 	vmovups zmm7,ZMMWORD PTR [rdx+0x140]
  a5b453:	62 f1 1c 48 59 e8    	vmulps zmm5,zmm12,zmm0
  a5b459:	62 f2 0d 48 b8 ef    	vfmadd231ps zmm5,zmm14,zmm7
  a5b45f:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm5
  a5b466:	07 
  a5b467:	62 f1 0c 48 59 c0    	vmulps zmm0,zmm14,zmm0
  a5b46d:	62 d2 45 48 bc c4    	vfnmadd231ps zmm0,zmm7,zmm12
  a5b473:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a5b479:	62 f1 7c 48 10 42 17 	vmovups zmm0,ZMMWORD PTR [rdx+0x5c0]
  a5b480:	62 f1 7c 48 10 7a 16 	vmovups zmm7,ZMMWORD PTR [rdx+0x580]
  a5b487:	62 61 24 48 59 c7    	vmulps zmm24,zmm11,zmm7
  a5b48d:	62 62 65 40 b8 c0    	vfmadd231ps zmm24,zmm19,zmm0
  a5b493:	62 f1 64 40 59 ef    	vmulps zmm5,zmm19,zmm7
  a5b499:	62 d2 7d 48 bc eb    	vfnmadd231ps zmm5,zmm0,zmm11
  a5b49f:	62 61 7c 48 28 cd    	vmovaps zmm25,zmm5
  a5b4a5:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm5
  a5b4ac:	12 
  a5b4ad:	62 f1 7c 48 10 42 1d 	vmovups zmm0,ZMMWORD PTR [rdx+0x740]
  a5b4b4:	62 f1 7c 48 10 7a 1c 	vmovups zmm7,ZMMWORD PTR [rdx+0x700]
  a5b4bb:	62 f1 34 48 59 ef    	vmulps zmm5,zmm9,zmm7
  a5b4c1:	62 f2 2d 48 b8 e8    	vfmadd231ps zmm5,zmm10,zmm0
  a5b4c7:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm5
  a5b4ce:	0e 
  a5b4cf:	62 f1 2c 48 59 ef    	vmulps zmm5,zmm10,zmm7
  a5b4d5:	62 d2 7d 48 bc e9    	vfnmadd231ps zmm5,zmm0,zmm9
  a5b4db:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a5b4e1:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm5
  a5b4e8:	0c 
  a5b4e9:	62 f1 7c 48 10 42 1b 	vmovups zmm0,ZMMWORD PTR [rdx+0x6c0]
  a5b4f0:	62 f1 7c 48 10 7a 1a 	vmovups zmm7,ZMMWORD PTR [rdx+0x680]
  a5b4f7:	62 f1 6c 48 59 ef    	vmulps zmm5,zmm2,zmm7
  a5b4fd:	62 f2 45 40 b8 e8    	vfmadd231ps zmm5,zmm23,zmm0
  a5b503:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm5
  a5b50a:	0a 
  a5b50b:	62 71 44 40 59 df    	vmulps zmm11,zmm23,zmm7
  a5b511:	62 72 7d 48 bc da    	vfnmadd231ps zmm11,zmm0,zmm2
  a5b517:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm11
  a5b51e:	10 
  a5b51f:	62 f1 7c 48 10 42 0f 	vmovups zmm0,ZMMWORD PTR [rdx+0x3c0]
  a5b526:	62 f1 7c 48 10 52 0e 	vmovups zmm2,ZMMWORD PTR [rdx+0x380]
  a5b52d:	62 e1 4c 48 59 fa    	vmulps zmm23,zmm6,zmm2
  a5b533:	62 e2 75 40 b8 f8    	vfmadd231ps zmm23,zmm17,zmm0
  a5b539:	62 f1 74 40 59 d2    	vmulps zmm2,zmm17,zmm2
  a5b53f:	62 f2 7d 48 bc d6    	vfnmadd231ps zmm2,zmm0,zmm6
  a5b545:	62 71 7c 48 28 d2    	vmovaps zmm10,zmm2
  a5b54b:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm2
  a5b552:	11 
  a5b553:	62 f1 7c 48 10 42 02 	vmovups zmm0,ZMMWORD PTR [rdx+0x80]
  a5b55a:	62 f1 7c 48 10 52 03 	vmovups zmm2,ZMMWORD PTR [rdx+0xc0]
  a5b561:	62 f1 64 48 59 f0    	vmulps zmm6,zmm3,zmm0
  a5b567:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x240]
  a5b56e:	09 
  a5b56f:	62 f2 55 48 b8 f2    	vfmadd231ps zmm6,zmm5,zmm2
  a5b575:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm6
  a5b57c:	0f 
  a5b57d:	62 f1 54 48 59 c0    	vmulps zmm0,zmm5,zmm0
  a5b583:	62 f2 6d 48 bc c3    	vfnmadd231ps zmm0,zmm2,zmm3
  a5b589:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a5b58f:	62 f1 7c 48 10 42 09 	vmovups zmm0,ZMMWORD PTR [rdx+0x240]
  a5b596:	62 f1 7c 48 10 52 08 	vmovups zmm2,ZMMWORD PTR [rdx+0x200]
  a5b59d:	62 71 74 48 59 e2    	vmulps zmm12,zmm1,zmm2
  a5b5a3:	62 72 15 48 b8 e0    	vfmadd231ps zmm12,zmm13,zmm0
  a5b5a9:	62 61 14 48 59 ea    	vmulps zmm29,zmm13,zmm2
  a5b5af:	62 62 7d 48 bc e9    	vfnmadd231ps zmm29,zmm0,zmm1
  a5b5b5:	62 f1 7c 48 10 42 0d 	vmovups zmm0,ZMMWORD PTR [rdx+0x340]
  a5b5bc:	62 f1 7c 48 10 4a 0c 	vmovups zmm1,ZMMWORD PTR [rdx+0x300]
  a5b5c3:	62 71 04 48 59 e9    	vmulps zmm13,zmm15,zmm1
  a5b5c9:	62 72 5d 48 bc e8    	vfnmadd231ps zmm13,zmm4,zmm0
  a5b5cf:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm13
  a5b5d6:	09 
  a5b5d7:	62 e1 5c 48 59 e1    	vmulps zmm20,zmm4,zmm1
  a5b5dd:	62 c2 7d 48 b8 e7    	vfmadd231ps zmm20,zmm0,zmm15
  a5b5e3:	62 f1 7c 48 10 42 13 	vmovups zmm0,ZMMWORD PTR [rdx+0x4c0]
  a5b5ea:	62 f1 7c 48 10 4a 12 	vmovups zmm1,ZMMWORD PTR [rdx+0x480]
  a5b5f1:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x140]
  a5b5f8:	05 
  a5b5f9:	62 e1 6c 48 59 d9    	vmulps zmm19,zmm2,zmm1
  a5b5ff:	62 e2 0d 40 bc d8    	vfnmadd231ps zmm19,zmm30,zmm0
  a5b605:	62 71 0c 40 59 c9    	vmulps zmm9,zmm30,zmm1
  a5b60b:	62 72 7d 48 b8 ca    	vfmadd231ps zmm9,zmm0,zmm2
  a5b611:	62 f1 7c 48 10 42 07 	vmovups zmm0,ZMMWORD PTR [rdx+0x1c0]
  a5b618:	62 f1 7c 48 10 4a 06 	vmovups zmm1,ZMMWORD PTR [rdx+0x180]
  a5b61f:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x180]
  a5b626:	06 
  a5b627:	62 61 6c 48 59 f1    	vmulps zmm30,zmm2,zmm1
  a5b62d:	62 62 25 40 bc f0    	vfnmadd231ps zmm30,zmm27,zmm0
  a5b633:	62 71 24 40 59 c1    	vmulps zmm8,zmm27,zmm1
  a5b639:	62 72 7d 48 b8 c2    	vfmadd231ps zmm8,zmm0,zmm2
  a5b63f:	62 f1 7c 48 10 42 19 	vmovups zmm0,ZMMWORD PTR [rdx+0x640]
  a5b646:	62 f1 7c 48 10 4a 18 	vmovups zmm1,ZMMWORD PTR [rdx+0x600]
  a5b64d:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x2c0]
  a5b654:	0b 
  a5b655:	62 61 64 48 59 d9    	vmulps zmm27,zmm3,zmm1
  a5b65b:	62 62 55 40 bc d8    	vfnmadd231ps zmm27,zmm21,zmm0
  a5b661:	62 f1 54 40 59 f1    	vmulps zmm6,zmm21,zmm1
  a5b667:	62 f2 7d 48 b8 f3    	vfmadd231ps zmm6,zmm0,zmm3
  a5b66d:	62 f1 7c 48 10 42 0b 	vmovups zmm0,ZMMWORD PTR [rdx+0x2c0]
  a5b674:	62 f1 7c 48 10 5a 0a 	vmovups zmm3,ZMMWORD PTR [rdx+0x280]
  a5b67b:	62 f1 6c 40 59 cb    	vmulps zmm1,zmm18,zmm3
  a5b681:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0xc0]
  a5b688:	03 
  a5b689:	62 f2 45 48 b8 c8    	vfmadd231ps zmm1,zmm7,zmm0
  a5b68f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a5b696:	01 
  a5b697:	62 f1 44 48 59 cb    	vmulps zmm1,zmm7,zmm3
  a5b69d:	62 b2 7d 48 bc ca    	vfnmadd231ps zmm1,zmm0,zmm18
  a5b6a3:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a5b6aa:	ff 
  a5b6ab:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a5b6b2:	62 f1 7c 48 10 5a 14 	vmovups zmm3,ZMMWORD PTR [rdx+0x500]
  a5b6b9:	62 f1 4c 40 59 cb    	vmulps zmm1,zmm22,zmm3
  a5b6bf:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp-0x80]
  a5b6c6:	fe 
  a5b6c7:	62 f2 45 48 b8 c8    	vfmadd231ps zmm1,zmm7,zmm0
  a5b6cd:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a5b6d4:	04 
  a5b6d5:	62 f1 44 48 59 cb    	vmulps zmm1,zmm7,zmm3
  a5b6db:	62 b2 7d 48 bc ce    	vfnmadd231ps zmm1,zmm0,zmm22
  a5b6e1:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a5b6e8:	03 
  a5b6e9:	62 d1 2c 40 5c c6    	vsubps zmm0,zmm26,zmm14
  a5b6ef:	62 c1 7c 48 28 ee    	vmovaps zmm21,zmm14
  a5b6f5:	62 b1 34 40 5c f8    	vsubps zmm7,zmm25,zmm16
  a5b6fb:	62 f2 7d 48 18 1d 53 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff61a053]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a5b702:	a0 61 ff 
  a5b705:	62 f1 44 48 59 cb    	vmulps zmm1,zmm7,zmm3
  a5b70b:	62 f2 7d 48 18 2d 8b 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff619c8b]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a5b712:	9c 61 ff 
  a5b715:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a5b71b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a5b722:	fe 
  a5b723:	62 f1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm3
  a5b729:	62 f2 55 48 bc c7    	vfnmadd231ps zmm0,zmm5,zmm7
  a5b72f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a5b736:	05 
  a5b737:	62 d1 24 48 5c c2    	vsubps zmm0,zmm11,zmm10
  a5b73d:	62 91 74 40 5c fd    	vsubps zmm7,zmm17,zmm29
  a5b743:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a5b749:	62 71 44 48 59 fb    	vmulps zmm15,zmm7,zmm3
  a5b74f:	62 72 7d 48 b8 fd    	vfmadd231ps zmm15,zmm0,zmm5
  a5b755:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm15
  a5b75c:	1f 
  a5b75d:	62 61 7c 48 59 fb    	vmulps zmm31,zmm0,zmm3
  a5b763:	62 62 55 48 bc ff    	vfnmadd231ps zmm31,zmm5,zmm7
  a5b769:	62 91 0c 40 5c c3    	vsubps zmm0,zmm30,zmm27
  a5b76f:	62 b1 14 48 5c fb    	vsubps zmm7,zmm13,zmm19
  a5b775:	62 f1 44 48 59 cb    	vmulps zmm1,zmm7,zmm3
  a5b77b:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a5b781:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a5b788:	06 
  a5b789:	62 61 7c 48 59 d3    	vmulps zmm26,zmm0,zmm3
  a5b78f:	62 62 55 48 bc d7    	vfnmadd231ps zmm26,zmm5,zmm7
  a5b795:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x200]
  a5b79c:	08 
  a5b79d:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x1c0]
  a5b7a4:	07 
  a5b7a5:	62 f1 74 40 5c fa    	vsubps zmm7,zmm17,zmm2
  a5b7ab:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp+0x380]
  a5b7b2:	0e 
  a5b7b3:	62 11 3c 40 5c ec    	vsubps zmm13,zmm24,zmm28
  a5b7b9:	62 f1 14 48 59 e3    	vmulps zmm4,zmm13,zmm3
  a5b7bf:	62 f2 45 48 b8 e5    	vfmadd231ps zmm4,zmm7,zmm5
  a5b7c5:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm4
  a5b7cc:	14 
  a5b7cd:	62 61 44 48 59 cb    	vmulps zmm25,zmm7,zmm3
  a5b7d3:	62 42 55 48 bc cd    	vfnmadd231ps zmm25,zmm5,zmm13
  a5b7d9:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x280]
  a5b7e0:	0a 
  a5b7e1:	62 b1 74 48 5c ff    	vsubps zmm7,zmm1,zmm23
  a5b7e7:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x3c0]
  a5b7ee:	0f 
  a5b7ef:	62 51 7c 48 5c ec    	vsubps zmm13,zmm0,zmm12
  a5b7f5:	62 71 14 48 59 db    	vmulps zmm11,zmm13,zmm3
  a5b7fb:	62 72 45 48 b8 dd    	vfmadd231ps zmm11,zmm7,zmm5
  a5b801:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm11
  a5b808:	13 
  a5b809:	62 e1 44 48 59 f3    	vmulps zmm22,zmm7,zmm3
  a5b80f:	62 c2 55 48 bc f5    	vfnmadd231ps zmm22,zmm5,zmm13
  a5b815:	62 f1 3c 48 5c fe    	vsubps zmm7,zmm8,zmm6
  a5b81b:	62 51 5c 40 5c f1    	vsubps zmm14,zmm20,zmm9
  a5b821:	62 71 0c 48 59 d3    	vmulps zmm10,zmm14,zmm3
  a5b827:	62 72 45 48 b8 d5    	vfmadd231ps zmm10,zmm7,zmm5
  a5b82d:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm10
  a5b834:	15 
  a5b835:	62 71 44 48 59 eb    	vmulps zmm13,zmm7,zmm3
  a5b83b:	62 72 0d 48 bc ed    	vfnmadd231ps zmm13,zmm14,zmm5
  a5b841:	62 11 3c 40 58 d4    	vaddps zmm10,zmm24,zmm28
  a5b847:	62 e1 74 40 58 ca    	vaddps zmm17,zmm17,zmm2
  a5b84d:	62 51 7c 48 58 f4    	vaddps zmm14,zmm0,zmm12
  a5b853:	62 21 74 48 58 e7    	vaddps zmm28,zmm1,zmm23
  a5b859:	62 41 5c 40 58 c1    	vaddps zmm24,zmm20,zmm9
  a5b85f:	62 e1 3c 48 58 c6    	vaddps zmm16,zmm8,zmm6
  a5b865:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x480]
  a5b86c:	12 
  a5b86d:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x300]
  a5b874:	0c 
  a5b875:	62 71 54 40 58 4c 24 	vaddps zmm9,zmm21,ZMMWORD PTR [rsp+0x340]
  a5b87c:	0d 
  a5b87d:	62 11 6c 40 58 c5    	vaddps zmm8,zmm18,zmm29
  a5b883:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x400]
  a5b88a:	10 
  a5b88b:	62 f1 74 48 58 7c 24 	vaddps zmm7,zmm1,ZMMWORD PTR [rsp+0x440]
  a5b892:	11 
  a5b893:	62 f2 7d 48 18 0d 4b 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff619e4b]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a5b89a:	9e 61 ff 
  a5b89d:	62 e1 7c 48 28 e9    	vmovaps zmm21,zmm1
  a5b8a3:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp-0x40]
  a5b8aa:	ff 
  a5b8ab:	62 e2 35 48 a8 ed    	vfmadd213ps zmm21,zmm9,zmm5
  a5b8b1:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm9
  a5b8b8:	0d 
  a5b8b9:	62 f2 7d 48 18 15 81 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff619d81]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a5b8c0:	9d 61 ff 
  a5b8c3:	62 e2 7d 48 bc ea    	vfnmadd231ps zmm21,zmm0,zmm2
  a5b8c9:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a5b8cf:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a5b8d6:	0c 
  a5b8d7:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a5b8dd:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a5b8e4:	03 
  a5b8e5:	62 e2 45 48 a8 e0    	vfmadd213ps zmm20,zmm7,zmm0
  a5b8eb:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm7
  a5b8f2:	12 
  a5b8f3:	62 e2 3d 48 bc e2    	vfnmadd231ps zmm20,zmm8,zmm2
  a5b8f9:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm8
  a5b900:	20 
  a5b901:	62 f1 54 40 5c dc    	vsubps zmm3,zmm21,zmm4
  a5b907:	62 d1 5c 40 5c e3    	vsubps zmm4,zmm20,zmm11
  a5b90d:	62 f1 64 48 5c f4    	vsubps zmm6,zmm3,zmm4
  a5b913:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm6
  a5b91a:	07 
  a5b91b:	62 f1 64 48 58 dc    	vaddps zmm3,zmm3,zmm4
  a5b921:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm3
  a5b928:	0a 
  a5b929:	62 e1 64 40 58 7c 24 	vaddps zmm23,zmm19,ZMMWORD PTR [rsp+0x240]
  a5b930:	09 
  a5b931:	62 01 0c 40 58 db    	vaddps zmm27,zmm30,zmm27
  a5b937:	62 e1 7c 48 28 d1    	vmovaps zmm18,zmm1
  a5b93d:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x40]
  a5b944:	01 
  a5b945:	62 a2 75 40 a8 d3    	vfmadd213ps zmm18,zmm17,zmm19
  a5b94b:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm17
  a5b952:	1a 
  a5b953:	62 e2 2d 48 bc d2    	vfnmadd231ps zmm18,zmm10,zmm2
  a5b959:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm10
  a5b960:	19 
  a5b961:	62 61 7c 48 28 f1    	vmovaps zmm30,zmm1
  a5b967:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x100]
  a5b96e:	04 
  a5b96f:	62 42 1d 40 a8 f4    	vfmadd213ps zmm30,zmm28,zmm12
  a5b975:	62 62 0d 48 bc f2    	vfnmadd231ps zmm30,zmm14,zmm2
  a5b97b:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm14
  a5b982:	17 
  a5b983:	62 f1 6c 40 58 5c 24 	vaddps zmm3,zmm18,ZMMWORD PTR [rsp-0x80]
  a5b98a:	fe 
  a5b98b:	62 d1 0c 40 58 e7    	vaddps zmm4,zmm30,zmm15
  a5b991:	62 f1 64 48 58 f4    	vaddps zmm6,zmm3,zmm4
  a5b997:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm6
  a5b99e:	09 
  a5b99f:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a5b9a5:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm3
  a5b9ac:	0b 
  a5b9ad:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a5b9b3:	62 f2 35 48 ac e5    	vfnmadd213ps zmm4,zmm9,zmm5
  a5b9b9:	62 f2 15 40 b8 e1    	vfmadd231ps zmm4,zmm29,zmm1
  a5b9bf:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a5b9c5:	62 f2 45 48 ac e8    	vfnmadd213ps zmm5,zmm7,zmm0
  a5b9cb:	62 f2 3d 48 b8 e9    	vfmadd231ps zmm5,zmm8,zmm1
  a5b9d1:	62 91 5c 48 5c d9    	vsubps zmm3,zmm4,zmm25
  a5b9d7:	62 31 54 48 5c c6    	vsubps zmm8,zmm5,zmm22
  a5b9dd:	62 d1 64 48 5c c0    	vsubps zmm0,zmm3,zmm8
  a5b9e3:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a5b9ea:	0e 
  a5b9eb:	62 d1 64 48 58 c0    	vaddps zmm0,zmm3,zmm8
  a5b9f1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a5b9f8:	0f 
  a5b9f9:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a5b9ff:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x80]
  a5ba06:	02 
  a5ba07:	62 21 7c 48 28 e8    	vmovaps zmm29,zmm16
  a5ba0d:	62 d2 7d 40 a8 f7    	vfmadd213ps zmm6,zmm16,zmm15
  a5ba13:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm24
  a5ba1a:	16 
  a5ba1b:	62 f2 3d 40 bc f2    	vfnmadd231ps zmm6,zmm24,zmm2
  a5ba21:	62 e1 7c 48 28 c1    	vmovaps zmm16,zmm1
  a5ba27:	62 f1 7c 48 10 1c 24 	vmovups zmm3,ZMMWORD PTR [rsp]
  a5ba2e:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm27
  a5ba35:	1e 
  a5ba36:	62 e2 25 40 a8 c3    	vfmadd213ps zmm16,zmm27,zmm3
  a5ba3c:	62 b1 7c 48 28 ff    	vmovaps zmm7,zmm23
  a5ba42:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm23
  a5ba49:	1c 
  a5ba4a:	62 e2 45 40 bc c2    	vfnmadd231ps zmm16,zmm23,zmm2
  a5ba50:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a5ba56:	62 32 75 40 ac c3    	vfnmadd213ps zmm8,zmm17,zmm19
  a5ba5c:	62 72 2d 48 b8 c1    	vfmadd231ps zmm8,zmm10,zmm1
  a5ba62:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a5ba68:	62 52 1d 40 ac cc    	vfnmadd213ps zmm9,zmm28,zmm12
  a5ba6e:	62 72 0d 48 b8 c9    	vfmadd231ps zmm9,zmm14,zmm1
  a5ba74:	62 e1 7c 48 28 da    	vmovaps zmm19,zmm2
  a5ba7a:	62 c2 15 40 ac df    	vfnmadd213ps zmm19,zmm29,zmm15
  a5ba80:	62 81 7c 48 28 fd    	vmovaps zmm23,zmm29
  a5ba86:	62 e2 3d 40 b8 d9    	vfmadd231ps zmm19,zmm24,zmm1
  a5ba8c:	62 f2 25 40 ac d3    	vfnmadd213ps zmm2,zmm27,zmm3
  a5ba92:	62 f2 45 48 b8 d1    	vfmadd231ps zmm2,zmm7,zmm1
  a5ba98:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a5ba9f:	05 
  a5baa0:	62 f1 3c 48 58 c8    	vaddps zmm1,zmm8,zmm0
  a5baa6:	62 01 34 48 58 df    	vaddps zmm27,zmm9,zmm31
  a5baac:	62 91 74 48 58 db    	vaddps zmm3,zmm1,zmm27
  a5bab2:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm3
  a5bab9:	10 
  a5baba:	62 91 74 48 5c cb    	vsubps zmm1,zmm1,zmm27
  a5bac0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm1
  a5bac7:	11 
  a5bac8:	62 b1 2c 40 58 cb    	vaddps zmm1,zmm26,zmm19
  a5bace:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm1
  a5bad5:	1d 
  a5bad6:	62 91 64 40 5c ca    	vsubps zmm1,zmm19,zmm26
  a5badc:	62 f1 3c 48 5c d8    	vsubps zmm3,zmm8,zmm0
  a5bae2:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm3
  a5bae9:	18 
  a5baea:	62 01 34 48 5c df    	vsubps zmm27,zmm9,zmm31
  a5baf0:	62 d1 6c 48 5c c5    	vsubps zmm0,zmm2,zmm13
  a5baf6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm0
  a5bafd:	1b 
  a5bafe:	62 d1 6c 48 58 fd    	vaddps zmm7,zmm2,zmm13
  a5bb04:	62 91 5c 48 58 d1    	vaddps zmm2,zmm4,zmm25
  a5bb0a:	62 a1 54 48 58 de    	vaddps zmm19,zmm5,zmm22
  a5bb10:	62 f2 7d 48 18 05 46 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff619946]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a5bb17:	99 61 ff 
  a5bb1a:	62 01 64 48 58 eb    	vaddps zmm29,zmm3,zmm27
  a5bb20:	62 91 74 48 58 dd    	vaddps zmm3,zmm1,zmm29
  a5bb26:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm3
  a5bb2d:	08 
  a5bb2e:	62 62 7d 48 ac e9    	vfnmadd213ps zmm29,zmm0,zmm1
  a5bb34:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a5bb3a:	62 71 7c 48 28 f8    	vmovaps zmm15,zmm0
  a5bb40:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a5bb46:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a5bb4c:	62 21 6c 48 58 c3    	vaddps zmm24,zmm2,zmm19
  a5bb52:	62 61 7c 48 28 f8    	vmovaps zmm31,zmm0
  a5bb58:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a5bb5e:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a5bb64:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a5bb6a:	62 f2 3d 40 ac c7    	vfnmadd213ps zmm0,zmm24,zmm7
  a5bb70:	62 91 44 48 58 d8    	vaddps zmm3,zmm7,zmm24
  a5bb76:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm3
  a5bb7d:	05 
  a5bb7e:	62 71 6c 40 5c 54 24 	vsubps zmm10,zmm18,ZMMWORD PTR [rsp-0x80]
  a5bb85:	fe 
  a5bb86:	62 f1 0c 40 5c 7c 24 	vsubps zmm7,zmm30,ZMMWORD PTR [rsp+0x7c0]
  a5bb8d:	1f 
  a5bb8e:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x180]
  a5bb95:	06 
  a5bb96:	62 61 64 48 58 f6    	vaddps zmm30,zmm3,zmm6
  a5bb9c:	62 61 4c 48 5c d3    	vsubps zmm26,zmm6,zmm3
  a5bba2:	62 71 54 40 58 64 24 	vaddps zmm12,zmm21,ZMMWORD PTR [rsp+0x500]
  a5bba9:	14 
  a5bbaa:	62 71 5c 40 58 5c 24 	vaddps zmm11,zmm20,ZMMWORD PTR [rsp+0x4c0]
  a5bbb1:	13 
  a5bbb2:	62 d1 1c 48 5c db    	vsubps zmm3,zmm12,zmm11
  a5bbb8:	62 c1 1c 48 58 e3    	vaddps zmm20,zmm12,zmm11
  a5bbbe:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x540]
  a5bbc5:	15 
  a5bbc6:	62 71 7c 40 5c e4    	vsubps zmm12,zmm16,zmm4
  a5bbcc:	62 e1 7c 40 58 ec    	vaddps zmm21,zmm16,zmm4
  a5bbd2:	62 71 2c 48 58 df    	vaddps zmm11,zmm10,zmm7
  a5bbd8:	62 e1 2c 48 5c d7    	vsubps zmm18,zmm10,zmm7
  a5bbde:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x40]
  a5bbe5:	01 
  a5bbe6:	62 71 5c 48 58 54 24 	vaddps zmm10,zmm4,ZMMWORD PTR [rsp+0x680]
  a5bbed:	1a 
  a5bbee:	62 71 2c 48 58 54 24 	vaddps zmm10,zmm10,ZMMWORD PTR [rsp+0x640]
  a5bbf5:	19 
  a5bbf6:	62 71 1c 40 58 74 24 	vaddps zmm14,zmm28,ZMMWORD PTR [rsp+0x100]
  a5bbfd:	04 
  a5bbfe:	62 71 0c 48 58 74 24 	vaddps zmm14,zmm14,ZMMWORD PTR [rsp+0x5c0]
  a5bc05:	17 
  a5bc06:	62 e1 44 40 58 74 24 	vaddps zmm22,zmm23,ZMMWORD PTR [rsp+0x80]
  a5bc0d:	02 
  a5bc0e:	62 e1 4c 40 58 44 24 	vaddps zmm16,zmm22,ZMMWORD PTR [rsp+0x580]
  a5bc15:	16 
  a5bc16:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a5bc1d:	ff 
  a5bc1e:	62 61 5c 48 58 64 24 	vaddps zmm28,zmm4,ZMMWORD PTR [rsp+0x340]
  a5bc25:	0d 
  a5bc26:	62 61 1c 40 58 64 24 	vaddps zmm28,zmm28,ZMMWORD PTR [rsp+0x300]
  a5bc2d:	0c 
  a5bc2e:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0xc0]
  a5bc35:	03 
  a5bc36:	62 e1 5c 48 58 7c 24 	vaddps zmm23,zmm4,ZMMWORD PTR [rsp+0x480]
  a5bc3d:	12 
  a5bc3e:	62 e1 44 40 58 7c 24 	vaddps zmm23,zmm23,ZMMWORD PTR [rsp+0x800]
  a5bc45:	20 
  a5bc46:	62 b1 1c 40 5c ff    	vsubps zmm7,zmm28,zmm23
  a5bc4c:	62 a1 1c 40 58 ff    	vaddps zmm23,zmm28,zmm23
  a5bc52:	62 f1 7c 48 10 24 24 	vmovups zmm4,ZMMWORD PTR [rsp]
  a5bc59:	62 61 5c 48 58 44 24 	vaddps zmm24,zmm4,ZMMWORD PTR [rsp+0x780]
  a5bc60:	1e 
  a5bc61:	62 e1 3c 40 58 74 24 	vaddps zmm22,zmm24,ZMMWORD PTR [rsp+0x700]
  a5bc68:	1c 
  a5bc69:	62 41 2c 48 58 e6    	vaddps zmm28,zmm10,zmm14
  a5bc6f:	62 51 2c 48 5c d6    	vsubps zmm10,zmm10,zmm14
  a5bc75:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x240]
  a5bc7c:	09 
  a5bc7d:	62 12 5d 48 ac ce    	vfnmadd213ps zmm9,zmm4,zmm30
  a5bc83:	62 f1 0c 40 58 e4    	vaddps zmm4,zmm30,zmm4
  a5bc89:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a5bc90:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x280]
  a5bc97:	0a 
  a5bc98:	62 52 5d 48 ac fc    	vfnmadd213ps zmm15,zmm4,zmm12
  a5bc9e:	62 f1 1c 48 58 e4    	vaddps zmm4,zmm12,zmm4
  a5bca4:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm4
  a5bcab:	04 
  a5bcac:	62 72 7d 48 18 25 1e 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff61961e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a5bcb3:	96 61 ff 
  a5bcb6:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x400]
  a5bcbd:	10 
  a5bcbe:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x740]
  a5bcc5:	1d 
  a5bcc6:	62 72 3d 48 ac ee    	vfnmadd213ps zmm13,zmm8,zmm6
  a5bccc:	62 71 1c 48 59 74 24 	vmulps zmm14,zmm12,ZMMWORD PTR [rsp+0x380]
  a5bcd3:	0e 
  a5bcd4:	62 d1 14 48 5c e6    	vsubps zmm4,zmm13,zmm14
  a5bcda:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm4
  a5bce1:	02 
  a5bce2:	62 d1 14 48 58 e6    	vaddps zmm4,zmm13,zmm14
  a5bce8:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm4
  a5bcef:	fe 
  a5bcf0:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x3c0]
  a5bcf7:	0f 
  a5bcf8:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x6c0]
  a5bcff:	1b 
  a5bd00:	62 d2 5d 48 ac ce    	vfnmadd213ps zmm1,zmm4,zmm14
  a5bd06:	62 71 1c 48 59 6c 24 	vmulps zmm13,zmm12,ZMMWORD PTR [rsp+0x440]
  a5bd0d:	11 
  a5bd0e:	62 41 74 48 58 c5    	vaddps zmm24,zmm1,zmm13
  a5bd14:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm24
  a5bd1b:	01 
  a5bd1c:	62 41 74 48 5c f5    	vsubps zmm30,zmm1,zmm13
  a5bd22:	62 b1 6c 48 5c cb    	vsubps zmm1,zmm2,zmm19
  a5bd28:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x600]
  a5bd2f:	18 
  a5bd30:	62 11 6c 48 5c eb    	vsubps zmm13,zmm2,zmm27
  a5bd36:	62 e1 1c 48 59 5c 24 	vmulps zmm19,zmm12,ZMMWORD PTR [rsp+0x1c0]
  a5bd3d:	07 
  a5bd3e:	62 61 1c 48 59 5c 24 	vmulps zmm27,zmm12,ZMMWORD PTR [rsp+0x2c0]
  a5bd45:	0b 
  a5bd46:	62 d1 64 48 59 dc    	vmulps zmm3,zmm3,zmm12
  a5bd4c:	62 c1 6c 40 59 d4    	vmulps zmm18,zmm18,zmm12
  a5bd52:	62 d1 44 48 59 fc    	vmulps zmm7,zmm7,zmm12
  a5bd58:	62 51 2c 48 59 d4    	vmulps zmm10,zmm10,zmm12
  a5bd5e:	62 d1 74 48 59 cc    	vmulps zmm1,zmm1,zmm12
  a5bd64:	62 d1 14 48 59 d4    	vmulps zmm2,zmm13,zmm12
  a5bd6a:	62 02 25 48 ac fa    	vfnmadd213ps zmm31,zmm11,zmm26
  a5bd70:	62 41 2c 40 58 d3    	vaddps zmm26,zmm26,zmm11
  a5bd76:	62 a2 5d 40 ac cd    	vfnmadd213ps zmm17,zmm20,zmm21
  a5bd7c:	62 a1 54 40 58 ec    	vaddps zmm21,zmm21,zmm20
  a5bd82:	62 22 1d 40 ac c8    	vfnmadd213ps zmm25,zmm28,zmm16
  a5bd88:	62 71 34 40 5c df    	vsubps zmm11,zmm25,zmm7
  a5bd8e:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm11
  a5bd95:	03 
  a5bd96:	62 71 34 40 58 df    	vaddps zmm11,zmm25,zmm7
  a5bd9c:	62 b2 45 40 ac ee    	vfnmadd213ps zmm5,zmm23,zmm22
  a5bda2:	62 41 54 48 58 ca    	vaddps zmm25,zmm5,zmm10
  a5bda8:	62 51 54 48 5c ea    	vsubps zmm13,zmm5,zmm10
  a5bdae:	62 b1 34 48 58 eb    	vaddps zmm5,zmm9,zmm19
  a5bdb4:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm5
  a5bdbb:	ff 
  a5bdbc:	62 31 34 48 5c d3    	vsubps zmm10,zmm9,zmm19
  a5bdc2:	62 01 04 48 5c c3    	vsubps zmm24,zmm15,zmm27
  a5bdc8:	62 01 04 48 58 db    	vaddps zmm27,zmm15,zmm27
  a5bdce:	62 51 4c 48 58 c0    	vaddps zmm8,zmm6,zmm8
  a5bdd4:	62 e1 0c 48 58 e4    	vaddps zmm20,zmm14,zmm4
  a5bdda:	62 f1 14 40 5c e1    	vsubps zmm4,zmm29,zmm1
  a5bde0:	62 f1 14 40 58 f9    	vaddps zmm7,zmm29,zmm1
  a5bde6:	62 71 7c 48 58 e2    	vaddps zmm12,zmm0,zmm2
  a5bdec:	62 f1 7c 48 5c ca    	vsubps zmm1,zmm0,zmm2
  a5bdf2:	62 61 04 40 58 eb    	vaddps zmm29,zmm31,zmm3
  a5bdf8:	62 f1 04 40 5c eb    	vsubps zmm5,zmm31,zmm3
  a5bdfe:	62 b1 74 40 5c da    	vsubps zmm3,zmm17,zmm18
  a5be04:	62 a1 74 40 58 d2    	vaddps zmm18,zmm17,zmm18
  a5be0a:	62 11 7c 40 58 cc    	vaddps zmm9,zmm16,zmm28
  a5be10:	62 a1 4c 40 58 df    	vaddps zmm19,zmm22,zmm23
  a5be16:	62 f1 7c 48 28 05 60 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff637660]        # 93480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20930>
  a5be1d:	76 63 ff 
  a5be20:	62 b1 7c 48 28 d3    	vmovaps zmm2,zmm19
  a5be26:	62 d2 7d 48 7f d1    	vpermt2ps zmm2,zmm0,zmm9
  a5be2c:	62 e1 7c 48 28 35 8a 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff63768a]        # 934c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20970>
  a5be33:	76 63 ff 
  a5be36:	62 c2 4d 40 7f d9    	vpermt2ps zmm19,zmm22,zmm9
  a5be3c:	62 a1 7c 48 28 fa    	vmovaps zmm23,zmm18
  a5be42:	62 e2 7d 48 7f fd    	vpermt2ps zmm23,zmm0,zmm5
  a5be48:	62 e2 4d 40 7f d5    	vpermt2ps zmm18,zmm22,zmm5
  a5be4e:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a5be54:	62 f2 7d 48 7f ef    	vpermt2ps zmm5,zmm0,zmm7
  a5be5a:	62 f2 4d 40 7f cf    	vpermt2ps zmm1,zmm22,zmm7
  a5be60:	62 b1 7c 48 28 fc    	vmovaps zmm7,zmm20
  a5be66:	62 d2 7d 48 7f f8    	vpermt2ps zmm7,zmm0,zmm8
  a5be6c:	62 c2 4d 40 7f e0    	vpermt2ps zmm20,zmm22,zmm8
  a5be72:	62 11 7c 48 28 c3    	vmovaps zmm8,zmm27
  a5be78:	62 52 7d 48 7f c2    	vpermt2ps zmm8,zmm0,zmm10
  a5be7e:	62 42 4d 40 7f da    	vpermt2ps zmm27,zmm22,zmm10
  a5be84:	62 51 7c 48 28 d5    	vmovaps zmm10,zmm13
  a5be8a:	62 52 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm11
  a5be90:	62 52 4d 40 7f eb    	vpermt2ps zmm13,zmm22,zmm11
  a5be96:	62 31 7c 48 28 cd    	vmovaps zmm9,zmm21
  a5be9c:	62 12 7d 48 7f ca    	vpermt2ps zmm9,zmm0,zmm26
  a5bea2:	62 82 4d 40 7f ea    	vpermt2ps zmm21,zmm22,zmm26
  a5bea8:	62 d1 7c 48 28 f4    	vmovaps zmm6,zmm12
  a5beae:	62 f2 7d 48 7f f4    	vpermt2ps zmm6,zmm0,zmm4
  a5beb4:	62 72 4d 40 7f e4    	vpermt2ps zmm12,zmm22,zmm4
  a5beba:	62 91 7c 48 28 e6    	vmovaps zmm4,zmm30
  a5bec0:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp-0x80]
  a5bec7:	fe 
  a5bec8:	62 d2 7d 48 7f e3    	vpermt2ps zmm4,zmm0,zmm11
  a5bece:	62 42 4d 40 7f f3    	vpermt2ps zmm30,zmm22,zmm11
  a5bed4:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x100]
  a5bedb:	04 
  a5bedc:	62 51 7c 48 28 f3    	vmovaps zmm14,zmm11
  a5bee2:	62 71 7c 48 10 3c 24 	vmovups zmm15,ZMMWORD PTR [rsp]
  a5bee9:	62 52 7d 48 7f f7    	vpermt2ps zmm14,zmm0,zmm15
  a5beef:	62 52 4d 40 7f df    	vpermt2ps zmm11,zmm22,zmm15
  a5bef5:	62 41 7c 48 28 fb    	vmovaps zmm31,zmm11
  a5befb:	62 11 7c 48 28 f9    	vmovaps zmm15,zmm25
  a5bf01:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0xc0]
  a5bf08:	03 
  a5bf09:	62 52 7d 48 7f fb    	vpermt2ps zmm15,zmm0,zmm11
  a5bf0f:	62 42 4d 40 7f cb    	vpermt2ps zmm25,zmm22,zmm11
  a5bf15:	62 e1 7c 48 28 c3    	vmovaps zmm16,zmm3
  a5bf1b:	62 82 7d 48 7f c5    	vpermt2ps zmm16,zmm0,zmm29
  a5bf21:	62 92 4d 40 7f dd    	vpermt2ps zmm3,zmm22,zmm29
  a5bf27:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp+0x140]
  a5bf2e:	05 
  a5bf2f:	62 81 7c 48 28 cc    	vmovaps zmm17,zmm28
  a5bf35:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp+0x200]
  a5bf3c:	08 
  a5bf3d:	62 82 7d 48 7f ca    	vpermt2ps zmm17,zmm0,zmm26
  a5bf43:	62 02 4d 40 7f e2    	vpermt2ps zmm28,zmm22,zmm26
  a5bf49:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x40]
  a5bf50:	01 
  a5bf51:	62 41 7c 48 28 d3    	vmovaps zmm26,zmm11
  a5bf57:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x80]
  a5bf5e:	02 
  a5bf5f:	62 02 7d 48 7f d5    	vpermt2ps zmm26,zmm0,zmm29
  a5bf65:	62 12 4d 40 7f dd    	vpermt2ps zmm11,zmm22,zmm29
  a5bf6b:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp-0x40]
  a5bf72:	ff 
  a5bf73:	62 92 3d 40 77 c5    	vpermi2ps zmm0,zmm24,zmm29
  a5bf79:	62 02 4d 40 7f c5    	vpermt2ps zmm24,zmm22,zmm29
  a5bf7f:	62 e1 7c 48 11 1e    	vmovups ZMMWORD PTR [rsi],zmm19
  a5bf85:	62 f1 7c 48 11 56 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm2
  a5bf8c:	62 e1 7c 48 11 56 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm18
  a5bf93:	62 e1 7c 48 11 7e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm23
  a5bf9a:	62 f1 7c 48 11 4e 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm1
  a5bfa1:	62 f1 7c 48 11 6e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm5
  a5bfa8:	62 e1 7c 48 11 66 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm20
  a5bfaf:	62 f1 7c 48 11 7e 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm7
  a5bfb6:	62 61 7c 48 11 5e 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm27
  a5bfbd:	62 71 7c 48 11 46 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm8
  a5bfc4:	62 71 7c 48 11 6e 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm13
  a5bfcb:	62 71 7c 48 11 56 0b 	vmovups ZMMWORD PTR [rsi+0x2c0],zmm10
  a5bfd2:	62 e1 7c 48 11 6e 0c 	vmovups ZMMWORD PTR [rsi+0x300],zmm21
  a5bfd9:	62 71 7c 48 11 4e 0d 	vmovups ZMMWORD PTR [rsi+0x340],zmm9
  a5bfe0:	62 71 7c 48 11 66 0e 	vmovups ZMMWORD PTR [rsi+0x380],zmm12
  a5bfe7:	62 f1 7c 48 11 76 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm6
  a5bfee:	62 61 7c 48 11 76 10 	vmovups ZMMWORD PTR [rsi+0x400],zmm30
  a5bff5:	62 f1 7c 48 11 66 11 	vmovups ZMMWORD PTR [rsi+0x440],zmm4
  a5bffc:	62 61 7c 48 11 7e 12 	vmovups ZMMWORD PTR [rsi+0x480],zmm31
  a5c003:	62 71 7c 48 11 76 13 	vmovups ZMMWORD PTR [rsi+0x4c0],zmm14
  a5c00a:	62 61 7c 48 11 4e 14 	vmovups ZMMWORD PTR [rsi+0x500],zmm25
  a5c011:	62 71 7c 48 11 7e 15 	vmovups ZMMWORD PTR [rsi+0x540],zmm15
  a5c018:	62 f1 7c 48 11 5e 16 	vmovups ZMMWORD PTR [rsi+0x580],zmm3
  a5c01f:	62 e1 7c 48 11 46 17 	vmovups ZMMWORD PTR [rsi+0x5c0],zmm16
  a5c026:	62 61 7c 48 11 66 18 	vmovups ZMMWORD PTR [rsi+0x600],zmm28
  a5c02d:	62 e1 7c 48 11 4e 19 	vmovups ZMMWORD PTR [rsi+0x640],zmm17
  a5c034:	62 71 7c 48 11 5e 1a 	vmovups ZMMWORD PTR [rsi+0x680],zmm11
  a5c03b:	62 61 7c 48 11 56 1b 	vmovups ZMMWORD PTR [rsi+0x6c0],zmm26
  a5c042:	62 61 7c 48 11 46 1c 	vmovups ZMMWORD PTR [rsi+0x700],zmm24
  a5c049:	62 f1 7c 48 11 46 1d 	vmovups ZMMWORD PTR [rsi+0x740],zmm0
  a5c050:	48 81 c4 48 08 00 00 	add    rsp,0x848
  a5c057:	c5 f8 77             	vzeroupper
  a5c05a:	c3                   	ret
