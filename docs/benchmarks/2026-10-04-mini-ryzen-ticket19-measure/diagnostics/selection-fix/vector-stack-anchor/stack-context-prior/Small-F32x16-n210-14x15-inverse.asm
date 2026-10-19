
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a141c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a141c0:	48 81 ec c8 08 00 00 	sub    rsp,0x8c8
  a141c7:	c5 f8 10 47 60       	vmovups xmm0,XMMWORD PTR [rdi+0x60]
  a141cc:	c4 e3 79 21 47 64 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x64],0x10
  a141d3:	c4 e2 79 18 4f 68    	vbroadcastss xmm1,DWORD PTR [rdi+0x68]
  a141d9:	62 f1 7c 48 10 1f    	vmovups zmm3,ZMMWORD PTR [rdi]
  a141df:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a141e5:	c4 e3 79 21 47 6c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6c],0x30
  a141ec:	c5 fc 10 4f 40       	vmovups ymm1,YMMWORD PTR [rdi+0x40]
  a141f1:	c5 fb 10 57 70       	vmovsd xmm2,QWORD PTR [rdi+0x70]
  a141f6:	c4 e3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm2,0x1
  a141fc:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a14203:	b0 7f                	mov    al,0x7f
  a14205:	c5 fb 92 c8          	kmovd  k1,eax
  a14209:	62 e2 fd c9 88 c8    	vexpandpd zmm17{k1}{z},zmm0
  a1420f:	62 71 7c 48 28 2d 27 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff67b227]        # 8f440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c8f0>
  a14216:	b2 67 ff 
  a14219:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a1421f:	62 e1 7c 48 28 d3    	vmovaps zmm18,zmm3
  a14225:	62 b2 15 48 7f c1    	vpermt2ps zmm0,zmm13,zmm17
  a1422b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a14232:	fe 
  a14233:	62 f1 7c 48 10 9f f0 	vmovups zmm3,ZMMWORD PTR [rdi+0xf0]
  a1423a:	00 00 00 
  a1423d:	c5 f8 10 87 50 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x150]
  a14244:	00 
  a14245:	c4 e3 79 21 87 54 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x154],0x10
  a1424c:	00 00 10 
  a1424f:	c4 e2 79 18 8f 58 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x158]
  a14256:	00 00 
  a14258:	c5 fc 10 97 30 01 00 	vmovups ymm2,YMMWORD PTR [rdi+0x130]
  a1425f:	00 
  a14260:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a14266:	c4 e3 79 21 87 5c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x15c],0x30
  a1426d:	00 00 30 
  a14270:	c5 fb 10 8f 60 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x160]
  a14277:	00 
  a14278:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a1427e:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a14285:	62 e2 fd c9 88 d8    	vexpandpd zmm19{k1}{z},zmm0
  a1428b:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a14291:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a14297:	62 b2 15 48 7f c3    	vpermt2ps zmm0,zmm13,zmm19
  a1429d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a142a4:	ff 
  a142a5:	62 f1 7c 48 10 9f a0 	vmovups zmm3,ZMMWORD PTR [rdi+0x5a0]
  a142ac:	05 00 00 
  a142af:	c5 f8 10 87 00 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x600]
  a142b6:	00 
  a142b7:	c4 e3 79 21 87 04 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x604],0x10
  a142be:	00 00 10 
  a142c1:	c4 e2 79 18 8f 08 06 	vbroadcastss xmm1,DWORD PTR [rdi+0x608]
  a142c8:	00 00 
  a142ca:	c5 fc 10 97 e0 05 00 	vmovups ymm2,YMMWORD PTR [rdi+0x5e0]
  a142d1:	00 
  a142d2:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a142d8:	c4 e3 79 21 87 0c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x60c],0x30
  a142df:	00 00 30 
  a142e2:	c5 fb 10 8f 10 06 00 	vmovsd xmm1,QWORD PTR [rdi+0x610]
  a142e9:	00 
  a142ea:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a142f0:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a142f7:	62 e2 fd c9 88 e0    	vexpandpd zmm20{k1}{z},zmm0
  a142fd:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a14303:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a14309:	62 b2 15 48 7f c4    	vpermt2ps zmm0,zmm13,zmm20
  a1430f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a14316:	02 
  a14317:	62 f1 7c 48 10 9f e0 	vmovups zmm3,ZMMWORD PTR [rdi+0x1e0]
  a1431e:	01 00 00 
  a14321:	c5 f8 10 87 40 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x240]
  a14328:	00 
  a14329:	c4 e3 79 21 87 44 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x244],0x10
  a14330:	00 00 10 
  a14333:	c4 e2 79 18 8f 48 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x248]
  a1433a:	00 00 
  a1433c:	c5 fc 10 97 20 02 00 	vmovups ymm2,YMMWORD PTR [rdi+0x220]
  a14343:	00 
  a14344:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a1434a:	c4 e3 79 21 87 4c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24c],0x30
  a14351:	00 00 30 
  a14354:	c5 fb 10 8f 50 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x250]
  a1435b:	00 
  a1435c:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a14362:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a14369:	62 e2 fd c9 88 e8    	vexpandpd zmm21{k1}{z},zmm0
  a1436f:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a14375:	62 71 7c 48 28 db    	vmovaps zmm11,zmm3
  a1437b:	62 b2 15 48 7f c5    	vpermt2ps zmm0,zmm13,zmm21
  a14381:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a14388:	01 
  a14389:	62 f1 7c 48 10 9f b0 	vmovups zmm3,ZMMWORD PTR [rdi+0x4b0]
  a14390:	04 00 00 
  a14393:	c5 f8 10 87 10 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x510]
  a1439a:	00 
  a1439b:	c4 e3 79 21 87 14 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x514],0x10
  a143a2:	00 00 10 
  a143a5:	c4 e2 79 18 8f 18 05 	vbroadcastss xmm1,DWORD PTR [rdi+0x518]
  a143ac:	00 00 
  a143ae:	c5 fc 10 97 f0 04 00 	vmovups ymm2,YMMWORD PTR [rdi+0x4f0]
  a143b5:	00 
  a143b6:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a143bc:	c4 e3 79 21 87 1c 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x51c],0x30
  a143c3:	00 00 30 
  a143c6:	c5 fb 10 8f 20 05 00 	vmovsd xmm1,QWORD PTR [rdi+0x520]
  a143cd:	00 
  a143ce:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a143d4:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a143db:	62 72 fd c9 88 f8    	vexpandpd zmm15{k1}{z},zmm0
  a143e1:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a143e7:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a143ed:	62 d2 15 48 7f c7    	vpermt2ps zmm0,zmm13,zmm15
  a143f3:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a143fa:	62 f1 7c 48 10 9f d0 	vmovups zmm3,ZMMWORD PTR [rdi+0x2d0]
  a14401:	02 00 00 
  a14404:	c5 f8 10 87 30 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x330]
  a1440b:	00 
  a1440c:	c4 e3 79 21 87 34 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x334],0x10
  a14413:	00 00 10 
  a14416:	c4 e2 79 18 8f 38 03 	vbroadcastss xmm1,DWORD PTR [rdi+0x338]
  a1441d:	00 00 
  a1441f:	c5 fc 10 97 10 03 00 	vmovups ymm2,YMMWORD PTR [rdi+0x310]
  a14426:	00 
  a14427:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a1442d:	c4 e3 79 21 87 3c 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x33c],0x30
  a14434:	00 00 30 
  a14437:	c5 fb 10 8f 40 03 00 	vmovsd xmm1,QWORD PTR [rdi+0x340]
  a1443e:	00 
  a1443f:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a14445:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a1444c:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a14452:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a14458:	62 e1 7c 48 28 c3    	vmovaps zmm16,zmm3
  a1445e:	62 f2 15 48 7f c8    	vpermt2ps zmm1,zmm13,zmm0
  a14464:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a1446a:	62 61 7c 48 10 4f 0f 	vmovups zmm25,ZMMWORD PTR [rdi+0x3c0]
  a14471:	c5 f8 10 8f 20 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x420]
  a14478:	00 
  a14479:	c4 e3 71 21 8f 24 04 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x424],0x10
  a14480:	00 00 10 
  a14483:	c4 e2 79 18 97 28 04 	vbroadcastss xmm2,DWORD PTR [rdi+0x428]
  a1448a:	00 00 
  a1448c:	c5 fc 10 9f 00 04 00 	vmovups ymm3,YMMWORD PTR [rdi+0x400]
  a14493:	00 
  a14494:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a1449a:	c4 e3 71 21 8f 2c 04 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x42c],0x30
  a144a1:	00 00 30 
  a144a4:	c5 fb 10 97 30 04 00 	vmovsd xmm2,QWORD PTR [rdi+0x430]
  a144ab:	00 
  a144ac:	c4 e3 75 18 ca 01    	vinsertf128 ymm1,ymm1,xmm2,0x1
  a144b2:	62 f3 e5 48 1a c9 01 	vinsertf64x4 zmm1,zmm3,ymm1,0x1
  a144b9:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a144bf:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a144c5:	62 f2 15 48 7f d1    	vpermt2ps zmm2,zmm13,zmm1
  a144cb:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  a144d2:	04 
  a144d3:	62 e1 7c 48 10 bf 48 	vmovups zmm23,ZMMWORD PTR [rdi+0x348]
  a144da:	03 00 00 
  a144dd:	c5 f8 10 97 a8 03 00 	vmovups xmm2,XMMWORD PTR [rdi+0x3a8]
  a144e4:	00 
  a144e5:	c4 e3 69 21 97 ac 03 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x3ac],0x10
  a144ec:	00 00 10 
  a144ef:	c4 e2 79 18 9f b0 03 	vbroadcastss xmm3,DWORD PTR [rdi+0x3b0]
  a144f6:	00 00 
  a144f8:	c5 fc 10 a7 88 03 00 	vmovups ymm4,YMMWORD PTR [rdi+0x388]
  a144ff:	00 
  a14500:	c4 e3 61 0c d2 03    	vblendps xmm2,xmm3,xmm2,0x3
  a14506:	c4 e3 69 21 97 b4 03 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x3b4],0x30
  a1450d:	00 00 30 
  a14510:	c5 fb 10 9f b8 03 00 	vmovsd xmm3,QWORD PTR [rdi+0x3b8]
  a14517:	00 
  a14518:	c4 e3 6d 18 d3 01    	vinsertf128 ymm2,ymm2,xmm3,0x1
  a1451e:	62 f3 dd 48 1a d2 01 	vinsertf64x4 zmm2,zmm4,ymm2,0x1
  a14525:	62 62 fd c9 88 fa    	vexpandpd zmm31{k1}{z},zmm2
  a1452b:	62 31 7c 48 28 f7    	vmovaps zmm14,zmm23
  a14531:	62 12 15 48 7f f7    	vpermt2ps zmm14,zmm13,zmm31
  a14537:	c5 f8 10 97 98 04 00 	vmovups xmm2,XMMWORD PTR [rdi+0x498]
  a1453e:	00 
  a1453f:	c5 fc 10 9f 78 04 00 	vmovups ymm3,YMMWORD PTR [rdi+0x478]
  a14546:	00 
  a14547:	c4 e3 69 21 97 9c 04 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x49c],0x10
  a1454e:	00 00 10 
  a14551:	c4 e2 79 18 a7 a0 04 	vbroadcastss xmm4,DWORD PTR [rdi+0x4a0]
  a14558:	00 00 
  a1455a:	c4 e3 59 0c d2 03    	vblendps xmm2,xmm4,xmm2,0x3
  a14560:	c4 e3 69 21 97 a4 04 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x4a4],0x30
  a14567:	00 00 30 
  a1456a:	c5 fb 10 a7 a8 04 00 	vmovsd xmm4,QWORD PTR [rdi+0x4a8]
  a14571:	00 
  a14572:	c4 e3 6d 18 d4 01    	vinsertf128 ymm2,ymm2,xmm4,0x1
  a14578:	62 f3 e5 48 1a da 01 	vinsertf64x4 zmm3,zmm3,ymm2,0x1
  a1457f:	c5 f8 10 97 b8 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x2b8]
  a14586:	00 
  a14587:	c5 fc 10 a7 98 02 00 	vmovups ymm4,YMMWORD PTR [rdi+0x298]
  a1458e:	00 
  a1458f:	c4 e3 69 21 97 bc 02 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x2bc],0x10
  a14596:	00 00 10 
  a14599:	c4 e2 79 18 af c0 02 	vbroadcastss xmm5,DWORD PTR [rdi+0x2c0]
  a145a0:	00 00 
  a145a2:	c4 e3 51 0c d2 03    	vblendps xmm2,xmm5,xmm2,0x3
  a145a8:	c4 e3 69 21 97 c4 02 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x2c4],0x30
  a145af:	00 00 30 
  a145b2:	c5 fb 10 af c8 02 00 	vmovsd xmm5,QWORD PTR [rdi+0x2c8]
  a145b9:	00 
  a145ba:	c4 e3 6d 18 d5 01    	vinsertf128 ymm2,ymm2,xmm5,0x1
  a145c0:	62 f3 dd 48 1a ea 01 	vinsertf64x4 zmm5,zmm4,ymm2,0x1
  a145c7:	c5 f8 10 97 88 05 00 	vmovups xmm2,XMMWORD PTR [rdi+0x588]
  a145ce:	00 
  a145cf:	c5 fc 10 a7 68 05 00 	vmovups ymm4,YMMWORD PTR [rdi+0x568]
  a145d6:	00 
  a145d7:	c4 e3 69 21 97 8c 05 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x58c],0x10
  a145de:	00 00 10 
  a145e1:	c4 e2 79 18 b7 90 05 	vbroadcastss xmm6,DWORD PTR [rdi+0x590]
  a145e8:	00 00 
  a145ea:	c4 e3 49 0c d2 03    	vblendps xmm2,xmm6,xmm2,0x3
  a145f0:	c4 e3 69 21 97 94 05 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x594],0x30
  a145f7:	00 00 30 
  a145fa:	c5 fb 10 b7 98 05 00 	vmovsd xmm6,QWORD PTR [rdi+0x598]
  a14601:	00 
  a14602:	c4 e3 6d 18 d6 01    	vinsertf128 ymm2,ymm2,xmm6,0x1
  a14608:	62 f3 dd 48 1a d2 01 	vinsertf64x4 zmm2,zmm4,ymm2,0x1
  a1460f:	c5 f8 10 a7 c8 01 00 	vmovups xmm4,XMMWORD PTR [rdi+0x1c8]
  a14616:	00 
  a14617:	c5 fc 10 b7 a8 01 00 	vmovups ymm6,YMMWORD PTR [rdi+0x1a8]
  a1461e:	00 
  a1461f:	c4 e3 59 21 a7 cc 01 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x1cc],0x10
  a14626:	00 00 10 
  a14629:	c4 e2 79 18 bf d0 01 	vbroadcastss xmm7,DWORD PTR [rdi+0x1d0]
  a14630:	00 00 
  a14632:	c4 e3 41 0c e4 03    	vblendps xmm4,xmm7,xmm4,0x3
  a14638:	c4 e3 59 21 a7 d4 01 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x1d4],0x30
  a1463f:	00 00 30 
  a14642:	c5 fb 10 bf d8 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x1d8]
  a14649:	00 
  a1464a:	c4 e3 5d 18 e7 01    	vinsertf128 ymm4,ymm4,xmm7,0x1
  a14650:	62 f3 cd 48 1a e4 01 	vinsertf64x4 zmm4,zmm6,ymm4,0x1
  a14657:	c5 f8 10 b7 78 06 00 	vmovups xmm6,XMMWORD PTR [rdi+0x678]
  a1465e:	00 
  a1465f:	c5 fc 10 bf 58 06 00 	vmovups ymm7,YMMWORD PTR [rdi+0x658]
  a14666:	00 
  a14667:	c4 e3 49 21 b7 7c 06 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x67c],0x10
  a1466e:	00 00 10 
  a14671:	c4 62 79 18 87 80 06 	vbroadcastss xmm8,DWORD PTR [rdi+0x680]
  a14678:	00 00 
  a1467a:	c4 e3 39 0c f6 03    	vblendps xmm6,xmm8,xmm6,0x3
  a14680:	c4 e3 49 21 b7 84 06 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x684],0x30
  a14687:	00 00 30 
  a1468a:	c5 7b 10 87 88 06 00 	vmovsd xmm8,QWORD PTR [rdi+0x688]
  a14691:	00 
  a14692:	c4 c3 4d 18 f0 01    	vinsertf128 ymm6,ymm6,xmm8,0x1
  a14698:	c5 78 10 87 d8 00 00 	vmovups xmm8,XMMWORD PTR [rdi+0xd8]
  a1469f:	00 
  a146a0:	c4 63 39 21 87 dc 00 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0xdc],0x10
  a146a7:	00 00 10 
  a146aa:	62 f3 c5 48 1a fe 01 	vinsertf64x4 zmm7,zmm7,ymm6,0x1
  a146b1:	c4 e2 79 18 b7 e0 00 	vbroadcastss xmm6,DWORD PTR [rdi+0xe0]
  a146b8:	00 00 
  a146ba:	c4 c3 49 0c f0 03    	vblendps xmm6,xmm6,xmm8,0x3
  a146c0:	c4 e3 49 21 b7 e4 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0xe4],0x30
  a146c7:	00 00 30 
  a146ca:	c5 7b 10 87 e8 00 00 	vmovsd xmm8,QWORD PTR [rdi+0xe8]
  a146d1:	00 
  a146d2:	c4 c3 4d 18 f0 01    	vinsertf128 ymm6,ymm6,xmm8,0x1
  a146d8:	c5 7c 10 87 b8 00 00 	vmovups ymm8,YMMWORD PTR [rdi+0xb8]
  a146df:	00 
  a146e0:	62 f3 bd 48 1a f6 01 	vinsertf64x4 zmm6,zmm8,ymm6,0x1
  a146e7:	62 61 7c 48 28 35 8f 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff67ad8f]        # 8f480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c930>
  a146ee:	ad 67 ff 
  a146f1:	62 31 7c 48 28 c0    	vmovaps zmm8,zmm16
  a146f7:	62 72 0d 40 7f c0    	vpermt2ps zmm8,zmm30,zmm0
  a146fd:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm8
  a14704:	0e 
  a14705:	62 e1 7c 48 10 87 38 	vmovups zmm16,ZMMWORD PTR [rdi+0x438]
  a1470c:	04 00 00 
  a1470f:	62 f2 fd c9 88 c3    	vexpandpd zmm0{k1}{z},zmm3
  a14715:	62 62 0d 40 7f c9    	vpermt2ps zmm25,zmm30,zmm1
  a1471b:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm25
  a14722:	0f 
  a14723:	62 21 7c 48 28 c0    	vmovaps zmm24,zmm16
  a14729:	62 62 15 48 7f c0    	vpermt2ps zmm24,zmm13,zmm0
  a1472f:	62 32 0d 40 7f cb    	vpermt2ps zmm9,zmm30,zmm19
  a14735:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm9
  a1473c:	13 
  a1473d:	62 f1 7c 48 10 9f 58 	vmovups zmm3,ZMMWORD PTR [rdi+0x258]
  a14744:	02 00 00 
  a14747:	62 f2 fd c9 88 cd    	vexpandpd zmm1{k1}{z},zmm5
  a1474d:	62 32 0d 40 7f d4    	vpermt2ps zmm10,zmm30,zmm20
  a14753:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm10
  a1475a:	08 
  a1475b:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a14761:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a14767:	62 62 15 48 7f d1    	vpermt2ps zmm26,zmm13,zmm1
  a1476d:	62 32 0d 40 7f dd    	vpermt2ps zmm11,zmm30,zmm21
  a14773:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm11
  a1477a:	10 
  a1477b:	62 e1 7c 48 10 9f 18 	vmovups zmm19,ZMMWORD PTR [rdi+0x618]
  a14782:	06 00 00 
  a14785:	62 f2 fd c9 88 df    	vexpandpd zmm3{k1}{z},zmm7
  a1478b:	62 52 0d 40 7f e7    	vpermt2ps zmm12,zmm30,zmm15
  a14791:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm12
  a14798:	07 
  a14799:	62 21 7c 48 28 db    	vmovaps zmm27,zmm19
  a1479f:	62 62 15 48 7f db    	vpermt2ps zmm27,zmm13,zmm3
  a147a5:	62 e2 0d 40 7f db    	vpermt2ps zmm19,zmm30,zmm3
  a147ab:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a147b1:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm19
  a147b8:	09 
  a147b9:	62 f1 7c 48 10 9f 28 	vmovups zmm3,ZMMWORD PTR [rdi+0x528]
  a147c0:	05 00 00 
  a147c3:	62 f2 fd c9 88 d2    	vexpandpd zmm2{k1}{z},zmm2
  a147c9:	62 61 7c 48 28 e3    	vmovaps zmm28,zmm3
  a147cf:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a147d5:	62 62 15 48 7f e2    	vpermt2ps zmm28,zmm13,zmm2
  a147db:	62 f2 fd c9 88 dc    	vexpandpd zmm3{k1}{z},zmm4
  a147e1:	62 f1 7c 48 10 a7 68 	vmovups zmm4,ZMMWORD PTR [rdi+0x168]
  a147e8:	01 00 00 
  a147eb:	62 61 7c 48 28 ec    	vmovaps zmm29,zmm4
  a147f1:	62 71 7c 48 28 fc    	vmovaps zmm15,zmm4
  a147f7:	62 62 15 48 7f eb    	vpermt2ps zmm29,zmm13,zmm3
  a147fd:	62 f2 fd c9 88 e6    	vexpandpd zmm4{k1}{z},zmm6
  a14803:	62 f1 7c 48 10 b7 78 	vmovups zmm6,ZMMWORD PTR [rdi+0x78]
  a1480a:	00 00 00 
  a1480d:	62 72 4d 48 77 ec    	vpermi2ps zmm13,zmm6,zmm4
  a14813:	62 f2 0d 40 7f f4    	vpermt2ps zmm6,zmm30,zmm4
  a14819:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm6
  a14820:	17 
  a14821:	62 e2 0d 40 7f c0    	vpermt2ps zmm16,zmm30,zmm0
  a14827:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm16
  a1482e:	0c 
  a1482f:	62 f2 0d 40 7f e9    	vpermt2ps zmm5,zmm30,zmm1
  a14835:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm5
  a1483c:	05 
  a1483d:	62 f2 0d 40 7f fa    	vpermt2ps zmm7,zmm30,zmm2
  a14843:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a14849:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm7
  a14850:	0b 
  a14851:	62 72 0d 40 7f fb    	vpermt2ps zmm15,zmm30,zmm3
  a14857:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm15
  a1485e:	0d 
  a1485f:	62 d1 34 48 5c d2    	vsubps zmm2,zmm9,zmm10
  a14865:	62 a2 0d 40 7f d1    	vpermt2ps zmm18,zmm30,zmm17
  a1486b:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm18
  a14872:	11 
  a14873:	62 d1 24 48 5c dc    	vsubps zmm3,zmm11,zmm12
  a14879:	62 82 0d 40 7f ff    	vpermt2ps zmm23,zmm30,zmm31
  a1487f:	62 e2 7d 48 18 1d 07 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff660c07]        # 75490 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2940>
  a14886:	0c 66 ff 
  a14889:	62 a1 64 48 59 cb    	vmulps zmm17,zmm3,zmm19
  a1488f:	62 f2 7d 48 18 3d c7 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff660dc7]        # 75660 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b10>
  a14896:	0d 66 ff 
  a14899:	62 e2 6d 48 b8 cf    	vfmadd231ps zmm17,zmm2,zmm7
  a1489f:	62 f2 7d 48 18 25 3f 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff660d3f]        # 755e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a98>
  a148a6:	0d 66 ff 
  a148a9:	62 61 6c 48 59 fc    	vmulps zmm31,zmm2,zmm4
  a148af:	62 62 65 48 bc ff    	vfnmadd231ps zmm31,zmm3,zmm7
  a148b5:	62 31 6c 48 59 db    	vmulps zmm11,zmm2,zmm19
  a148bb:	62 72 5d 48 bc db    	vfnmadd231ps zmm11,zmm4,zmm3
  a148c1:	62 91 3c 48 5c d1    	vsubps zmm2,zmm8,zmm25
  a148c7:	62 e2 6d 48 b8 cc    	vfmadd231ps zmm17,zmm2,zmm4
  a148cd:	62 22 6d 48 b8 fb    	vfmadd231ps zmm31,zmm2,zmm19
  a148d3:	62 72 45 48 bc da    	vfnmadd231ps zmm11,zmm7,zmm2
  a148d9:	62 f1 7c 40 5c d5    	vsubps zmm2,zmm16,zmm5
  a148df:	62 d1 7c 48 5c df    	vsubps zmm3,zmm0,zmm15
  a148e5:	62 31 64 48 59 fb    	vmulps zmm15,zmm3,zmm19
  a148eb:	62 72 6d 48 b8 ff    	vfmadd231ps zmm15,zmm2,zmm7
  a148f1:	62 71 6c 48 59 cc    	vmulps zmm9,zmm2,zmm4
  a148f7:	62 72 65 48 bc cf    	vfnmadd231ps zmm9,zmm3,zmm7
  a148fd:	62 31 6c 48 59 c3    	vmulps zmm8,zmm2,zmm19
  a14903:	62 72 5d 48 bc c3    	vfnmadd231ps zmm8,zmm4,zmm3
  a14909:	62 f1 5c 40 5c d6    	vsubps zmm2,zmm20,zmm6
  a1490f:	62 72 6d 48 b8 fc    	vfmadd231ps zmm15,zmm2,zmm4
  a14915:	62 32 6d 48 b8 cb    	vfmadd231ps zmm9,zmm2,zmm19
  a1491b:	62 72 45 48 bc c2    	vfnmadd231ps zmm8,zmm7,zmm2
  a14921:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp-0x40]
  a14928:	ff 
  a14929:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x80]
  a14930:	02 
  a14931:	62 b1 5c 40 5c d2    	vsubps zmm2,zmm20,zmm18
  a14937:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0x40]
  a1493e:	01 
  a1493f:	62 e1 7c 48 10 04 24 	vmovups zmm16,ZMMWORD PTR [rsp]
  a14946:	62 b1 54 40 5c d8    	vsubps zmm3,zmm21,zmm16
  a1494c:	62 21 64 48 59 cb    	vmulps zmm25,zmm3,zmm19
  a14952:	62 62 6d 48 b8 cf    	vfmadd231ps zmm25,zmm2,zmm7
  a14958:	62 61 6c 48 59 f4    	vmulps zmm30,zmm2,zmm4
  a1495e:	62 62 65 48 bc f7    	vfnmadd231ps zmm30,zmm3,zmm7
  a14964:	62 31 6c 48 59 e3    	vmulps zmm12,zmm2,zmm19
  a1496a:	62 72 5d 48 bc e3    	vfnmadd231ps zmm12,zmm4,zmm3
  a14970:	62 b1 7c 48 28 f6    	vmovaps zmm6,zmm22
  a14976:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x100]
  a1497d:	04 
  a1497e:	62 f1 4c 40 5c dd    	vsubps zmm3,zmm22,zmm5
  a14984:	62 62 65 48 b8 cc    	vfmadd231ps zmm25,zmm3,zmm4
  a1498a:	62 91 3c 40 5c d2    	vsubps zmm2,zmm24,zmm26
  a14990:	62 91 1c 40 5c c5    	vsubps zmm0,zmm28,zmm29
  a14996:	62 a1 7c 48 59 f3    	vmulps zmm22,zmm0,zmm19
  a1499c:	62 e2 6d 48 b8 f7    	vfmadd231ps zmm22,zmm2,zmm7
  a149a2:	62 d1 24 40 5c cd    	vsubps zmm1,zmm27,zmm13
  a149a8:	62 e2 75 48 b8 f4    	vfmadd231ps zmm22,zmm1,zmm4
  a149ae:	62 71 6c 48 59 d4    	vmulps zmm10,zmm2,zmm4
  a149b4:	62 b1 6c 48 59 d3    	vmulps zmm2,zmm2,zmm19
  a149ba:	62 f2 7d 48 bc d4    	vfnmadd231ps zmm2,zmm0,zmm4
  a149c0:	62 72 7d 48 bc d7    	vfnmadd231ps zmm10,zmm0,zmm7
  a149c6:	62 22 65 48 b8 f3    	vfmadd231ps zmm30,zmm3,zmm19
  a149cc:	62 32 75 48 b8 d3    	vfmadd231ps zmm10,zmm1,zmm19
  a149d2:	62 72 45 48 bc e3    	vfnmadd231ps zmm12,zmm7,zmm3
  a149d8:	62 f2 75 48 bc d7    	vfnmadd231ps zmm2,zmm1,zmm7
  a149de:	62 b1 5c 40 58 da    	vaddps zmm3,zmm20,zmm18
  a149e4:	62 b1 54 40 58 e0    	vaddps zmm4,zmm21,zmm16
  a149ea:	62 f1 4c 48 58 ed    	vaddps zmm5,zmm6,zmm5
  a149f0:	62 81 3c 40 58 da    	vaddps zmm19,zmm24,zmm26
  a149f6:	62 01 1c 40 58 d5    	vaddps zmm26,zmm28,zmm29
  a149fc:	62 51 24 40 58 ed    	vaddps zmm13,zmm27,zmm13
  a14a02:	62 f2 7d 48 18 05 e8 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff660be8]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a14a09:	0b 66 ff 
  a14a0c:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a14a12:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp-0x80]
  a14a19:	fe 
  a14a1a:	62 62 65 48 a8 de    	vfmadd213ps zmm27,zmm3,zmm6
  a14a20:	62 62 7d 48 18 05 ae 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff660bae]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a14a27:	0b 66 ff 
  a14a2a:	62 01 7c 48 28 e0    	vmovaps zmm28,zmm24
  a14a30:	62 62 65 48 ac e6    	vfnmadd213ps zmm28,zmm3,zmm6
  a14a36:	62 61 4c 48 58 eb    	vaddps zmm29,zmm6,zmm3
  a14a3c:	62 f2 7d 48 18 0d 86 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff660886]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a14a43:	08 66 ff 
  a14a46:	62 f2 75 48 bc f3    	vfnmadd231ps zmm6,zmm1,zmm3
  a14a4c:	62 f1 14 40 58 dc    	vaddps zmm3,zmm29,zmm4
  a14a52:	62 62 5d 48 bc d9    	vfnmadd231ps zmm27,zmm4,zmm1
  a14a58:	62 62 5d 48 b8 e0    	vfmadd231ps zmm28,zmm4,zmm0
  a14a5e:	62 f2 3d 40 bc f4    	vfnmadd231ps zmm6,zmm24,zmm4
  a14a64:	62 f1 64 48 58 e5    	vaddps zmm4,zmm3,zmm5
  a14a6a:	62 02 55 48 bc d8    	vfnmadd231ps zmm27,zmm5,zmm24
  a14a70:	62 62 55 48 bc e1    	vfnmadd231ps zmm28,zmm5,zmm1
  a14a76:	62 f2 7d 48 b8 f5    	vfmadd231ps zmm6,zmm0,zmm5
  a14a7c:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a14a82:	62 d2 65 40 a8 de    	vfmadd213ps zmm3,zmm19,zmm14
  a14a88:	62 91 7c 48 28 e8    	vmovaps zmm5,zmm24
  a14a8e:	62 d2 65 40 ac ee    	vfnmadd213ps zmm5,zmm19,zmm14
  a14a94:	62 21 0c 48 58 eb    	vaddps zmm29,zmm14,zmm19
  a14a9a:	62 32 75 48 bc f3    	vfnmadd231ps zmm14,zmm1,zmm19
  a14aa0:	62 81 14 40 58 da    	vaddps zmm19,zmm29,zmm26
  a14aa6:	62 f2 2d 40 bc d9    	vfnmadd231ps zmm3,zmm26,zmm1
  a14aac:	62 f2 2d 40 b8 e8    	vfmadd231ps zmm5,zmm26,zmm0
  a14ab2:	62 12 3d 40 bc f2    	vfnmadd231ps zmm14,zmm24,zmm26
  a14ab8:	62 c1 64 40 58 dd    	vaddps zmm19,zmm19,zmm13
  a14abe:	62 92 15 48 bc d8    	vfnmadd231ps zmm3,zmm13,zmm24
  a14ac4:	62 f2 15 48 bc e9    	vfnmadd231ps zmm5,zmm13,zmm1
  a14aca:	62 52 7d 48 b8 f5    	vfmadd231ps zmm14,zmm0,zmm13
  a14ad0:	62 51 4c 48 5c eb    	vsubps zmm13,zmm6,zmm11
  a14ad6:	62 51 4c 48 58 db    	vaddps zmm11,zmm6,zmm11
  a14adc:	62 c1 0c 48 5c c0    	vsubps zmm16,zmm14,zmm8
  a14ae2:	62 d1 0c 48 58 f8    	vaddps zmm7,zmm14,zmm8
  a14ae8:	62 11 1c 40 5c f7    	vsubps zmm14,zmm28,zmm31
  a14aee:	62 01 1c 40 58 e7    	vaddps zmm28,zmm28,zmm31
  a14af4:	62 41 54 48 5c f9    	vsubps zmm31,zmm5,zmm9
  a14afa:	62 51 54 48 58 c9    	vaddps zmm9,zmm5,zmm9
  a14b00:	62 b1 24 40 58 e9    	vaddps zmm5,zmm27,zmm17
  a14b06:	62 a1 24 40 5c c9    	vsubps zmm17,zmm27,zmm17
  a14b0c:	62 41 64 48 58 df    	vaddps zmm27,zmm3,zmm15
  a14b12:	62 d1 64 48 5c df    	vsubps zmm3,zmm3,zmm15
  a14b18:	62 01 54 48 58 d3    	vaddps zmm26,zmm5,zmm27
  a14b1e:	62 91 54 48 5c eb    	vsubps zmm5,zmm5,zmm27
  a14b24:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm5
  a14b2b:	02 
  a14b2c:	62 f1 24 48 58 ef    	vaddps zmm5,zmm11,zmm7
  a14b32:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm5
  a14b39:	ff 
  a14b3a:	62 f1 24 48 5c ef    	vsubps zmm5,zmm11,zmm7
  a14b40:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm5
  a14b47:	0a 
  a14b48:	62 b1 14 48 58 e8    	vaddps zmm5,zmm13,zmm16
  a14b4e:	62 b1 14 48 5c f0    	vsubps zmm6,zmm13,zmm16
  a14b54:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm6
  a14b5b:	01 
  a14b5c:	62 f1 74 40 58 f3    	vaddps zmm6,zmm17,zmm3
  a14b62:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm6
  a14b69:	03 
  a14b6a:	62 f1 74 40 5c db    	vsubps zmm3,zmm17,zmm3
  a14b70:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm3
  a14b77:	06 
  a14b78:	62 d1 1c 40 58 d9    	vaddps zmm3,zmm28,zmm9
  a14b7e:	62 d1 1c 40 5c f1    	vsubps zmm6,zmm28,zmm9
  a14b84:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm6
  a14b8b:	fe 
  a14b8c:	62 91 0c 48 58 f7    	vaddps zmm6,zmm14,zmm31
  a14b92:	62 91 0c 48 5c ff    	vsubps zmm7,zmm14,zmm31
  a14b98:	62 f1 7c 48 11 3c 24 	vmovups ZMMWORD PTR [rsp],zmm7
  a14b9f:	62 31 5c 48 58 c3    	vaddps zmm8,zmm4,zmm19
  a14ba5:	62 b1 5c 48 5c e3    	vsubps zmm4,zmm4,zmm19
  a14bab:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm4
  a14bb2:	12 
  a14bb3:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x4c0]
  a14bba:	13 
  a14bbb:	62 f1 5c 48 58 64 24 	vaddps zmm4,zmm4,ZMMWORD PTR [rsp+0x200]
  a14bc2:	08 
  a14bc3:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x400]
  a14bca:	10 
  a14bcb:	62 f1 44 48 58 7c 24 	vaddps zmm7,zmm7,ZMMWORD PTR [rsp+0x1c0]
  a14bd2:	07 
  a14bd3:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x380]
  a14bda:	0e 
  a14bdb:	62 71 34 48 58 5c 24 	vaddps zmm11,zmm9,ZMMWORD PTR [rsp+0x3c0]
  a14be2:	0f 
  a14be3:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x300]
  a14bea:	0c 
  a14beb:	62 71 34 48 58 6c 24 	vaddps zmm13,zmm9,ZMMWORD PTR [rsp+0x140]
  a14bf2:	05 
  a14bf3:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x2c0]
  a14bfa:	0b 
  a14bfb:	62 71 34 48 58 74 24 	vaddps zmm14,zmm9,ZMMWORD PTR [rsp+0x340]
  a14c02:	0d 
  a14c03:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x240]
  a14c0a:	09 
  a14c0b:	62 e1 34 48 58 44 24 	vaddps zmm16,zmm9,ZMMWORD PTR [rsp+0x5c0]
  a14c12:	17 
  a14c13:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a14c19:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x440]
  a14c20:	11 
  a14c21:	62 c2 5d 48 a8 c9    	vfmadd213ps zmm17,zmm4,zmm9
  a14c27:	62 81 7c 48 28 d8    	vmovaps zmm19,zmm24
  a14c2d:	62 c2 5d 48 ac d9    	vfnmadd213ps zmm19,zmm4,zmm9
  a14c33:	62 e1 34 48 58 e4    	vaddps zmm20,zmm9,zmm4
  a14c39:	62 72 75 48 bc cc    	vfnmadd231ps zmm9,zmm1,zmm4
  a14c3f:	62 f1 5c 40 58 e7    	vaddps zmm4,zmm20,zmm7
  a14c45:	62 e2 45 48 bc c9    	vfnmadd231ps zmm17,zmm7,zmm1
  a14c4b:	62 e2 45 48 b8 d8    	vfmadd231ps zmm19,zmm7,zmm0
  a14c51:	62 72 3d 40 bc cf    	vfnmadd231ps zmm9,zmm24,zmm7
  a14c57:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a14c5d:	62 b2 15 48 a8 ff    	vfmadd213ps zmm7,zmm13,zmm23
  a14c63:	62 81 7c 48 28 e0    	vmovaps zmm20,zmm24
  a14c69:	62 a2 15 48 ac e7    	vfnmadd213ps zmm20,zmm13,zmm23
  a14c6f:	62 c1 44 40 58 ed    	vaddps zmm21,zmm23,zmm13
  a14c75:	62 e2 15 48 bc f9    	vfnmadd231ps zmm23,zmm13,zmm1
  a14c7b:	62 82 25 48 bc c8    	vfnmadd231ps zmm17,zmm11,zmm24
  a14c81:	62 f2 0d 48 bc f9    	vfnmadd231ps zmm7,zmm14,zmm1
  a14c87:	62 92 7d 40 bc f8    	vfnmadd231ps zmm7,zmm16,zmm24
  a14c8d:	62 82 0d 48 bc f8    	vfnmadd231ps zmm23,zmm14,zmm24
  a14c93:	62 51 54 40 58 ee    	vaddps zmm13,zmm21,zmm14
  a14c99:	62 e2 0d 48 b8 e0    	vfmadd231ps zmm20,zmm14,zmm0
  a14c9f:	62 e2 25 48 bc d9    	vfnmadd231ps zmm19,zmm11,zmm1
  a14ca5:	62 e2 7d 40 bc e1    	vfnmadd231ps zmm20,zmm16,zmm1
  a14cab:	62 f1 7c 48 28 0d 0b 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6b230b]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a14cb2:	23 6b ff 
  a14cb5:	62 51 5c 48 58 f3    	vaddps zmm14,zmm4,zmm11
  a14cbb:	62 52 7d 48 b8 cb    	vfmadd231ps zmm9,zmm0,zmm11
  a14cc1:	62 c1 7c 48 28 e8    	vmovaps zmm21,zmm8
  a14cc7:	62 41 7c 48 28 d8    	vmovaps zmm27,zmm8
  a14ccd:	62 82 75 48 7f ea    	vpermt2ps zmm21,zmm1,zmm26
  a14cd3:	62 e2 7d 40 b8 f8    	vfmadd231ps zmm23,zmm16,zmm0
  a14cd9:	62 61 7c 48 28 ee    	vmovaps zmm29,zmm6
  a14cdf:	62 61 7c 48 28 c6    	vmovaps zmm24,zmm6
  a14ce5:	62 62 75 48 7f ed    	vpermt2ps zmm29,zmm1,zmm5
  a14ceb:	62 a1 14 48 58 c0    	vaddps zmm16,zmm13,zmm16
  a14cf1:	62 d1 1c 48 58 c1    	vaddps zmm0,zmm12,zmm9
  a14cf7:	62 d1 34 48 5c e4    	vsubps zmm4,zmm9,zmm12
  a14cfd:	62 31 6c 48 58 c7    	vaddps zmm8,zmm2,zmm23
  a14d03:	62 f1 44 40 5c d2    	vsubps zmm2,zmm23,zmm2
  a14d09:	62 31 0c 40 58 db    	vaddps zmm11,zmm30,zmm19
  a14d0f:	62 11 64 40 5c fe    	vsubps zmm15,zmm19,zmm30
  a14d15:	62 a1 2c 48 58 dc    	vaddps zmm19,zmm10,zmm20
  a14d1b:	62 d1 5c 40 5c f2    	vsubps zmm6,zmm20,zmm10
  a14d21:	62 11 74 40 5c e9    	vsubps zmm13,zmm17,zmm25
  a14d27:	62 a1 34 40 58 c9    	vaddps zmm17,zmm25,zmm17
  a14d2d:	62 a1 44 48 5c d6    	vsubps zmm18,zmm7,zmm22
  a14d33:	62 f1 4c 40 58 ff    	vaddps zmm7,zmm22,zmm7
  a14d39:	62 a1 14 48 58 fa    	vaddps zmm23,zmm13,zmm18
  a14d3f:	62 21 14 48 5c f2    	vsubps zmm30,zmm13,zmm18
  a14d45:	62 e1 5c 48 58 f2    	vaddps zmm22,zmm4,zmm2
  a14d4b:	62 71 5c 48 5c e2    	vsubps zmm12,zmm4,zmm2
  a14d51:	62 d1 7c 48 58 e0    	vaddps zmm4,zmm0,zmm8
  a14d57:	62 41 7c 48 5c e0    	vsubps zmm28,zmm0,zmm8
  a14d5d:	62 71 74 40 58 ef    	vaddps zmm13,zmm17,zmm7
  a14d63:	62 71 74 40 5c c7    	vsubps zmm8,zmm17,zmm7
  a14d69:	62 61 04 48 58 ce    	vaddps zmm25,zmm15,zmm6
  a14d6f:	62 61 04 48 5c fe    	vsubps zmm31,zmm15,zmm6
  a14d75:	62 a1 24 48 58 d3    	vaddps zmm18,zmm11,zmm19
  a14d7b:	62 31 24 48 5c db    	vsubps zmm11,zmm11,zmm19
  a14d81:	62 a1 0c 48 58 c8    	vaddps zmm17,zmm14,zmm16
  a14d87:	62 a1 0c 48 5c c0    	vsubps zmm16,zmm14,zmm16
  a14d8d:	62 71 7c 48 28 3d e9 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6b21e9]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a14d94:	21 6b ff 
  a14d97:	62 02 05 48 7f da    	vpermt2ps zmm27,zmm15,zmm26
  a14d9d:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm27
  a14da4:	04 
  a14da5:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a14dac:	ff 
  a14dad:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a14db3:	62 72 75 48 7f cb    	vpermt2ps zmm9,zmm1,zmm3
  a14db9:	62 62 05 48 7f c5    	vpermt2ps zmm24,zmm15,zmm5
  a14dbf:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm24
  a14dc6:	08 
  a14dc7:	62 a1 64 00 57 db    	vxorps xmm19,xmm19,xmm19
  a14dcd:	62 f2 05 48 7f c3    	vpermt2ps zmm0,zmm15,zmm3
  a14dd3:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a14dda:	ff 
  a14ddb:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x80]
  a14de2:	02 
  a14de3:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a14de9:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x280]
  a14df0:	0a 
  a14df1:	62 f2 75 48 7f f0    	vpermt2ps zmm6,zmm1,zmm0
  a14df7:	62 f2 05 48 7f d0    	vpermt2ps zmm2,zmm15,zmm0
  a14dfd:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a14e04:	02 
  a14e05:	62 61 7c 48 10 5c 24 	vmovups zmm27,ZMMWORD PTR [rsp+0x40]
  a14e0c:	01 
  a14e0d:	62 81 7c 48 28 e3    	vmovaps zmm20,zmm27
  a14e13:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a14e1a:	06 
  a14e1b:	62 e2 75 48 7f e0    	vpermt2ps zmm20,zmm1,zmm0
  a14e21:	62 62 05 48 7f d8    	vpermt2ps zmm27,zmm15,zmm0
  a14e27:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a14e2e:	fe 
  a14e2f:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a14e35:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a14e3c:	62 f2 75 48 7f e8    	vpermt2ps zmm5,zmm1,zmm0
  a14e42:	62 f2 05 48 7f d0    	vpermt2ps zmm2,zmm15,zmm0
  a14e48:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a14e4f:	fe 
  a14e50:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a14e56:	62 32 75 48 7f f7    	vpermt2ps zmm14,zmm1,zmm23
  a14e5c:	62 a2 05 48 7f cf    	vpermt2ps zmm17,zmm15,zmm23
  a14e62:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a14e68:	62 72 75 48 7f d4    	vpermt2ps zmm10,zmm1,zmm4
  a14e6e:	62 e2 05 48 7f d4    	vpermt2ps zmm18,zmm15,zmm4
  a14e74:	62 b1 7c 48 28 c6    	vmovaps zmm0,zmm22
  a14e7a:	62 82 75 48 7f f1    	vpermt2ps zmm22,zmm1,zmm25
  a14e80:	62 92 05 48 7f c1    	vpermt2ps zmm0,zmm15,zmm25
  a14e86:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a14e8d:	01 
  a14e8e:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a14e94:	62 d2 75 48 7f dc    	vpermt2ps zmm3,zmm1,zmm12
  a14e9a:	62 42 05 48 7f f4    	vpermt2ps zmm30,zmm15,zmm12
  a14ea0:	62 61 7c 48 11 34 24 	vmovups ZMMWORD PTR [rsp],zmm30
  a14ea7:	62 11 7c 48 28 e4    	vmovaps zmm12,zmm28
  a14ead:	62 52 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm8
  a14eb3:	62 42 05 48 7f e0    	vpermt2ps zmm28,zmm15,zmm8
  a14eb9:	62 01 7c 48 28 c7    	vmovaps zmm24,zmm31
  a14ebf:	62 42 75 48 7f c3    	vpermt2ps zmm24,zmm1,zmm11
  a14ec5:	62 42 05 48 7f fb    	vpermt2ps zmm31,zmm15,zmm11
  a14ecb:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a14ed2:	03 
  a14ed3:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a14ed9:	62 b2 75 48 7f e3    	vpermt2ps zmm4,zmm1,zmm19
  a14edf:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x480]
  a14ee6:	12 
  a14ee7:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a14eed:	62 32 75 48 7f c3    	vpermt2ps zmm8,zmm1,zmm19
  a14ef3:	62 41 7c 48 28 f5    	vmovaps zmm30,zmm13
  a14ef9:	62 22 75 48 7f f3    	vpermt2ps zmm30,zmm1,zmm19
  a14eff:	62 b2 7d 40 77 cb    	vpermi2ps zmm1,zmm16,zmm19
  a14f05:	62 b2 05 48 7f c3    	vpermt2ps zmm0,zmm15,zmm19
  a14f0b:	62 b2 05 48 7f d3    	vpermt2ps zmm2,zmm15,zmm19
  a14f11:	62 32 05 48 7f eb    	vpermt2ps zmm13,zmm15,zmm19
  a14f17:	62 a2 05 48 7f c3    	vpermt2ps zmm16,zmm15,zmm19
  a14f1d:	62 61 7c 48 28 0d d9 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff6b1fd9]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a14f24:	1f 6b ff 
  a14f27:	62 a1 7c 48 28 fd    	vmovaps zmm23,zmm21
  a14f2d:	62 82 35 40 7f fd    	vpermt2ps zmm23,zmm25,zmm29
  a14f33:	62 71 7c 48 28 1d 03 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6b2003]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a14f3a:	20 6b ff 
  a14f3d:	62 82 25 48 7f ed    	vpermt2ps zmm21,zmm11,zmm29
  a14f43:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm21
  a14f4a:	06 
  a14f4b:	62 d1 7c 48 28 f9    	vmovaps zmm7,zmm9
  a14f51:	62 f2 35 40 7f fc    	vpermt2ps zmm7,zmm25,zmm4
  a14f57:	62 72 25 48 7f cc    	vpermt2ps zmm9,zmm11,zmm4
  a14f5d:	62 e1 7c 48 28 de    	vmovaps zmm19,zmm6
  a14f63:	62 a2 35 40 7f dc    	vpermt2ps zmm19,zmm25,zmm20
  a14f69:	62 b2 25 48 7f f4    	vpermt2ps zmm6,zmm11,zmm20
  a14f6f:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a14f75:	62 c2 35 40 7f e0    	vpermt2ps zmm20,zmm25,zmm8
  a14f7b:	62 d2 25 48 7f e8    	vpermt2ps zmm5,zmm11,zmm8
  a14f81:	62 c1 7c 48 28 ee    	vmovaps zmm21,zmm14
  a14f87:	62 c2 35 40 7f ea    	vpermt2ps zmm21,zmm25,zmm10
  a14f8d:	62 52 25 48 7f f2    	vpermt2ps zmm14,zmm11,zmm10
  a14f93:	62 21 7c 48 28 d6    	vmovaps zmm26,zmm22
  a14f99:	62 02 35 40 7f d6    	vpermt2ps zmm26,zmm25,zmm30
  a14f9f:	62 82 25 48 7f f6    	vpermt2ps zmm22,zmm11,zmm30
  a14fa5:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a14fab:	62 d2 35 40 7f e4    	vpermt2ps zmm4,zmm25,zmm12
  a14fb1:	62 d2 25 48 7f dc    	vpermt2ps zmm3,zmm11,zmm12
  a14fb7:	62 11 7c 48 28 c0    	vmovaps zmm8,zmm24
  a14fbd:	62 72 35 40 7f c1    	vpermt2ps zmm8,zmm25,zmm1
  a14fc3:	62 62 25 48 7f c1    	vpermt2ps zmm24,zmm11,zmm1
  a14fc9:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a14fd0:	04 
  a14fd1:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  a14fd7:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x200]
  a14fde:	08 
  a14fdf:	62 52 35 40 7f e2    	vpermt2ps zmm12,zmm25,zmm10
  a14fe5:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm12
  a14fec:	03 
  a14fed:	62 d2 25 48 7f ca    	vpermt2ps zmm1,zmm11,zmm10
  a14ff3:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a14ffa:	04 
  a14ffb:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a15002:	ff 
  a15003:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a15009:	62 72 35 40 7f f8    	vpermt2ps zmm15,zmm25,zmm0
  a1500f:	62 f2 25 48 7f c8    	vpermt2ps zmm1,zmm11,zmm0
  a15015:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a1501c:	ff 
  a1501d:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a15024:	02 
  a15025:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a1502b:	62 12 35 40 7f e3    	vpermt2ps zmm12,zmm25,zmm27
  a15031:	62 92 25 48 7f c3    	vpermt2ps zmm0,zmm11,zmm27
  a15037:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a1503e:	02 
  a1503f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a15046:	fe 
  a15047:	62 61 7c 48 28 f0    	vmovaps zmm30,zmm0
  a1504d:	62 62 35 40 7f f2    	vpermt2ps zmm30,zmm25,zmm2
  a15053:	62 f2 25 48 7f c2    	vpermt2ps zmm0,zmm11,zmm2
  a15059:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a15060:	fe 
  a15061:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a15067:	62 a2 35 40 7f ca    	vpermt2ps zmm17,zmm25,zmm18
  a1506d:	62 b2 25 48 7f c2    	vpermt2ps zmm0,zmm11,zmm18
  a15073:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a1507a:	09 
  a1507b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a15082:	01 
  a15083:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a15089:	62 52 35 40 7f d5    	vpermt2ps zmm10,zmm25,zmm13
  a1508f:	62 d2 25 48 7f c5    	vpermt2ps zmm0,zmm11,zmm13
  a15095:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a1509c:	01 
  a1509d:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a150a4:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a150aa:	62 12 35 40 7f ec    	vpermt2ps zmm13,zmm25,zmm28
  a150b0:	62 92 25 48 7f c4    	vpermt2ps zmm0,zmm11,zmm28
  a150b6:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a150bd:	62 22 05 40 77 c8    	vpermi2ps zmm25,zmm31,zmm16
  a150c3:	62 22 25 48 7f f8    	vpermt2ps zmm31,zmm11,zmm16
  a150c9:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm31
  a150d0:	14 
  a150d1:	62 61 7c 48 28 2d 25 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff6b1d25]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a150d8:	1d 6b ff 
  a150db:	62 f1 c5 40 14 c7    	vunpcklpd zmm0,zmm23,zmm7
  a150e1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a150e8:	0a 
  a150e9:	62 b1 e5 40 14 cc    	vunpcklpd zmm1,zmm19,zmm20
  a150ef:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm1
  a150f6:	17 
  a150f7:	62 f2 15 40 7f c1    	vpermt2ps zmm0,zmm29,zmm1
  a150fd:	62 91 d5 40 14 ca    	vunpcklpd zmm1,zmm21,zmm26
  a15103:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm1
  a1510a:	1b 
  a1510b:	62 d1 dd 48 14 d0    	vunpcklpd zmm2,zmm4,zmm8
  a15111:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm2
  a15118:	1f 
  a15119:	62 f2 15 40 7f ca    	vpermt2ps zmm1,zmm29,zmm2
  a1511f:	62 71 7c 48 10 5a 11 	vmovups zmm11,ZMMWORD PTR [rdx+0x440]
  a15126:	62 e1 7c 48 10 42 10 	vmovups zmm16,ZMMWORD PTR [rdx+0x400]
  a1512d:	62 b1 74 48 59 d0    	vmulps zmm2,zmm1,zmm16
  a15133:	62 d2 7d 48 b8 d3    	vfmadd231ps zmm2,zmm0,zmm11
  a15139:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm2
  a15140:	12 
  a15141:	62 b1 7c 48 59 c0    	vmulps zmm0,zmm0,zmm16
  a15147:	62 f2 25 48 bc c1    	vfnmadd231ps zmm0,zmm11,zmm1
  a1514d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a15154:	08 
  a15155:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a1515c:	03 
  a1515d:	62 41 fd 48 15 ff    	vunpckhpd zmm31,zmm0,zmm15
  a15163:	62 91 9d 48 15 ce    	vunpckhpd zmm1,zmm12,zmm30
  a15169:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm1
  a15170:	16 
  a15171:	62 91 7c 48 28 c7    	vmovaps zmm0,zmm31
  a15177:	62 f2 15 40 7f c1    	vpermt2ps zmm0,zmm29,zmm1
  a1517d:	62 41 f5 40 15 e2    	vunpckhpd zmm28,zmm17,zmm10
  a15183:	62 91 95 48 15 d1    	vunpckhpd zmm2,zmm13,zmm25
  a15189:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm2
  a15190:	15 
  a15191:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a15197:	62 f2 15 40 7f ca    	vpermt2ps zmm1,zmm29,zmm2
  a1519d:	62 e1 7c 48 10 42 04 	vmovups zmm16,ZMMWORD PTR [rdx+0x100]
  a151a4:	62 f1 7c 48 10 52 05 	vmovups zmm2,ZMMWORD PTR [rdx+0x140]
  a151ab:	62 21 74 48 59 d8    	vmulps zmm27,zmm1,zmm16
  a151b1:	62 62 7d 48 b8 da    	vfmadd231ps zmm27,zmm0,zmm2
  a151b7:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm27
  a151be:	11 
  a151bf:	62 b1 7c 48 59 c0    	vmulps zmm0,zmm0,zmm16
  a151c5:	62 f2 6d 48 bc c1    	vfnmadd231ps zmm0,zmm2,zmm1
  a151cb:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm0
  a151d2:	13 
  a151d3:	62 e1 c5 40 15 ff    	vunpckhpd zmm23,zmm23,zmm7
  a151d9:	62 b1 e5 40 15 d4    	vunpckhpd zmm2,zmm19,zmm20
  a151df:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm2
  a151e6:	05 
  a151e7:	62 81 d5 40 15 ea    	vunpckhpd zmm21,zmm21,zmm26
  a151ed:	62 d1 dd 48 15 e0    	vunpckhpd zmm4,zmm4,zmm8
  a151f3:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm4
  a151fa:	0d 
  a151fb:	62 71 7c 48 28 1d 3b 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6b1c3b]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a15202:	1c 6b ff 
  a15205:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a1520b:	62 f2 25 48 7f ca    	vpermt2ps zmm1,zmm11,zmm2
  a15211:	62 b1 7c 48 28 d5    	vmovaps zmm2,zmm21
  a15217:	62 f2 25 48 7f d4    	vpermt2ps zmm2,zmm11,zmm4
  a1521d:	62 f1 7c 48 10 62 17 	vmovups zmm4,ZMMWORD PTR [rdx+0x5c0]
  a15224:	62 f1 7c 48 10 7a 16 	vmovups zmm7,ZMMWORD PTR [rdx+0x580]
  a1522b:	62 71 6c 48 59 c7    	vmulps zmm8,zmm2,zmm7
  a15231:	62 72 75 48 b8 c4    	vfmadd231ps zmm8,zmm1,zmm4
  a15237:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm8
  a1523e:	07 
  a1523f:	62 f1 74 48 59 cf    	vmulps zmm1,zmm1,zmm7
  a15245:	62 f2 5d 48 bc ca    	vfnmadd231ps zmm1,zmm4,zmm2
  a1524b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a15252:	0f 
  a15253:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a1525a:	06 
  a1525b:	62 d1 fd 48 15 c9    	vunpckhpd zmm1,zmm0,zmm9
  a15261:	62 f1 cd 48 15 d5    	vunpckhpd zmm2,zmm6,zmm5
  a15267:	62 f2 15 40 7f ca    	vpermt2ps zmm1,zmm29,zmm2
  a1526d:	62 b1 8d 48 15 d6    	vunpckhpd zmm2,zmm14,zmm22
  a15273:	62 91 e5 48 15 e0    	vunpckhpd zmm4,zmm3,zmm24
  a15279:	62 f2 15 40 7f d4    	vpermt2ps zmm2,zmm29,zmm4
  a1527f:	62 f1 7c 48 10 62 1d 	vmovups zmm4,ZMMWORD PTR [rdx+0x740]
  a15286:	62 f1 7c 48 10 7a 1c 	vmovups zmm7,ZMMWORD PTR [rdx+0x700]
  a1528d:	62 71 6c 48 59 c7    	vmulps zmm8,zmm2,zmm7
  a15293:	62 72 75 48 b8 c4    	vfmadd231ps zmm8,zmm1,zmm4
  a15299:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm8
  a152a0:	10 
  a152a1:	62 f1 74 48 59 cf    	vmulps zmm1,zmm1,zmm7
  a152a7:	62 f2 5d 48 bc ca    	vfnmadd231ps zmm1,zmm4,zmm2
  a152ad:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm1
  a152b4:	0e 
  a152b5:	62 c1 fd 48 14 d1    	vunpcklpd zmm18,zmm0,zmm9
  a152bb:	62 f1 cd 48 14 c5    	vunpcklpd zmm0,zmm6,zmm5
  a152c1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm0
  a152c8:	1a 
  a152c9:	62 a1 8d 48 14 c6    	vunpcklpd zmm16,zmm14,zmm22
  a152cf:	62 91 e5 48 14 c8    	vunpcklpd zmm1,zmm3,zmm24
  a152d5:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm1
  a152dc:	19 
  a152dd:	62 b1 7c 48 28 da    	vmovaps zmm3,zmm18
  a152e3:	62 f2 25 48 7f d8    	vpermt2ps zmm3,zmm11,zmm0
  a152e9:	62 b1 7c 48 28 e0    	vmovaps zmm4,zmm16
  a152ef:	62 f2 25 48 7f e1    	vpermt2ps zmm4,zmm11,zmm1
  a152f5:	62 f1 7c 48 10 6a 1b 	vmovups zmm5,ZMMWORD PTR [rdx+0x6c0]
  a152fc:	62 f1 7c 48 10 72 1a 	vmovups zmm6,ZMMWORD PTR [rdx+0x680]
  a15303:	62 f1 5c 48 59 fe    	vmulps zmm7,zmm4,zmm6
  a15309:	62 f2 65 48 b8 fd    	vfmadd231ps zmm7,zmm3,zmm5
  a1530f:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm7
  a15316:	06 
  a15317:	62 f1 64 48 59 de    	vmulps zmm3,zmm3,zmm6
  a1531d:	62 f2 55 48 bc dc    	vfnmadd231ps zmm3,zmm5,zmm4
  a15323:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm3
  a1532a:	1d 
  a1532b:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x100]
  a15332:	04 
  a15333:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp-0x40]
  a1533a:	ff 
  a1533b:	62 31 e5 40 15 f4    	vunpckhpd zmm14,zmm19,zmm20
  a15341:	62 61 7c 48 10 5c 24 	vmovups zmm27,ZMMWORD PTR [rsp+0x80]
  a15348:	02 
  a15349:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp-0x80]
  a15350:	fe 
  a15351:	62 81 a5 40 15 f0    	vunpckhpd zmm22,zmm27,zmm24
  a15357:	62 d1 7c 48 28 e6    	vmovaps zmm4,zmm14
  a1535d:	62 b2 25 48 7f e6    	vpermt2ps zmm4,zmm11,zmm22
  a15363:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp+0x240]
  a1536a:	09 
  a1536b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a15372:	01 
  a15373:	62 f1 ad 40 15 d8    	vunpckhpd zmm3,zmm26,zmm0
  a15379:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  a15380:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x500]
  a15387:	14 
  a15388:	62 f1 ed 48 15 f1    	vunpckhpd zmm6,zmm2,zmm1
  a1538e:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a15394:	62 f2 25 48 7f ee    	vpermt2ps zmm5,zmm11,zmm6
  a1539a:	62 f1 7c 48 10 7a 0f 	vmovups zmm7,ZMMWORD PTR [rdx+0x3c0]
  a153a1:	62 71 7c 48 10 42 0e 	vmovups zmm8,ZMMWORD PTR [rdx+0x380]
  a153a8:	62 51 54 48 59 c8    	vmulps zmm9,zmm5,zmm8
  a153ae:	62 72 5d 48 b8 cf    	vfmadd231ps zmm9,zmm4,zmm7
  a153b4:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm9
  a153bb:	0c 
  a153bc:	62 d1 5c 48 59 e0    	vmulps zmm4,zmm4,zmm8
  a153c2:	62 f2 45 48 bc e5    	vfnmadd231ps zmm4,zmm7,zmm5
  a153c8:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm4
  a153cf:	1e 
  a153d0:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0xc0]
  a153d7:	03 
  a153d8:	62 d1 dd 48 14 ef    	vunpcklpd zmm5,zmm4,zmm15
  a153de:	62 11 9d 48 14 e6    	vunpcklpd zmm12,zmm12,zmm30
  a153e4:	62 51 f5 40 14 ca    	vunpcklpd zmm9,zmm17,zmm10
  a153ea:	62 91 95 48 14 f9    	vunpcklpd zmm7,zmm13,zmm25
  a153f0:	62 f1 7c 48 28 e5    	vmovaps zmm4,zmm5
  a153f6:	62 d2 25 48 7f e4    	vpermt2ps zmm4,zmm11,zmm12
  a153fc:	62 41 7c 48 28 cc    	vmovaps zmm25,zmm12
  a15402:	62 51 7c 48 28 c1    	vmovaps zmm8,zmm9
  a15408:	62 41 7c 48 28 f1    	vmovaps zmm30,zmm9
  a1540e:	62 72 25 48 7f c7    	vpermt2ps zmm8,zmm11,zmm7
  a15414:	62 71 7c 48 10 4a 02 	vmovups zmm9,ZMMWORD PTR [rdx+0x80]
  a1541b:	62 71 7c 48 10 52 03 	vmovups zmm10,ZMMWORD PTR [rdx+0xc0]
  a15422:	62 51 3c 48 59 e1    	vmulps zmm12,zmm8,zmm9
  a15428:	62 52 5d 48 b8 e2    	vfmadd231ps zmm12,zmm4,zmm10
  a1542e:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm12
  a15435:	0b 
  a15436:	62 d1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm9
  a1543c:	62 d2 2d 48 bc e0    	vfnmadd231ps zmm4,zmm10,zmm8
  a15442:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm4
  a15449:	1c 
  a1544a:	62 b1 e5 40 14 e4    	vunpcklpd zmm4,zmm19,zmm20
  a15450:	62 11 a5 40 14 c8    	vunpcklpd zmm9,zmm27,zmm24
  a15456:	62 71 ad 40 14 e0    	vunpcklpd zmm12,zmm26,zmm0
  a1545c:	62 71 ed 48 14 e9    	vunpcklpd zmm13,zmm2,zmm1
  a15462:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a15468:	62 d2 15 40 7f e1    	vpermt2ps zmm4,zmm29,zmm9
  a1546e:	62 51 7c 48 28 d4    	vmovaps zmm10,zmm12
  a15474:	62 52 15 40 7f e5    	vpermt2ps zmm12,zmm29,zmm13
  a1547a:	62 71 7c 48 10 7a 09 	vmovups zmm15,ZMMWORD PTR [rdx+0x240]
  a15481:	62 e1 7c 48 10 4a 08 	vmovups zmm17,ZMMWORD PTR [rdx+0x200]
  a15488:	62 a1 1c 48 59 d9    	vmulps zmm19,zmm12,zmm17
  a1548e:	62 c2 5d 48 b8 df    	vfmadd231ps zmm19,zmm4,zmm15
  a15494:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm19
  a1549b:	09 
  a1549c:	62 b1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm17
  a154a2:	62 d2 05 48 bc e4    	vfnmadd231ps zmm4,zmm15,zmm12
  a154a8:	62 71 7c 48 28 e4    	vmovaps zmm12,zmm4
  a154ae:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm4
  a154b5:	20 
  a154b6:	62 52 25 48 7f c1    	vpermt2ps zmm8,zmm11,zmm9
  a154bc:	62 52 25 48 7f d5    	vpermt2ps zmm10,zmm11,zmm13
  a154c2:	62 62 25 48 7f 64 24 	vpermt2ps zmm28,zmm11,ZMMWORD PTR [rsp+0x540]
  a154c9:	15 
  a154ca:	62 62 25 48 7f 7c 24 	vpermt2ps zmm31,zmm11,ZMMWORD PTR [rsp+0x580]
  a154d1:	16 
  a154d2:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x6c0]
  a154d9:	1b 
  a154da:	62 f2 25 48 7f 4c 24 	vpermt2ps zmm1,zmm11,ZMMWORD PTR [rsp+0x7c0]
  a154e1:	1f 
  a154e2:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x280]
  a154e9:	0a 
  a154ea:	62 72 25 48 7f 4c 24 	vpermt2ps zmm9,zmm11,ZMMWORD PTR [rsp+0x5c0]
  a154f1:	17 
  a154f2:	62 f2 15 40 7f de    	vpermt2ps zmm3,zmm29,zmm6
  a154f8:	62 32 15 40 7f f6    	vpermt2ps zmm14,zmm29,zmm22
  a154fe:	62 f1 7c 48 10 42 0d 	vmovups zmm0,ZMMWORD PTR [rdx+0x340]
  a15505:	62 f1 7c 48 10 62 0c 	vmovups zmm4,ZMMWORD PTR [rdx+0x300]
  a1550c:	62 f1 0c 48 59 f4    	vmulps zmm6,zmm14,zmm4
  a15512:	62 f2 65 48 bc f0    	vfnmadd231ps zmm6,zmm3,zmm0
  a15518:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a1551e:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm6
  a15525:	18 
  a15526:	62 f1 64 48 59 d4    	vmulps zmm2,zmm3,zmm4
  a1552c:	62 d2 7d 48 b8 d6    	vfmadd231ps zmm2,zmm0,zmm14
  a15532:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm2
  a15539:	0a 
  a1553a:	62 f1 7c 48 10 42 13 	vmovups zmm0,ZMMWORD PTR [rdx+0x4c0]
  a15541:	62 f1 7c 48 10 5a 12 	vmovups zmm3,ZMMWORD PTR [rdx+0x480]
  a15548:	62 d1 7c 48 28 e1    	vmovaps zmm4,zmm9
  a1554e:	62 f1 34 48 59 f3    	vmulps zmm6,zmm9,zmm3
  a15554:	62 f2 75 48 bc f0    	vfnmadd231ps zmm6,zmm1,zmm0
  a1555a:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a15560:	62 e1 74 48 59 f3    	vmulps zmm22,zmm1,zmm3
  a15566:	62 e2 7d 48 b8 f4    	vfmadd231ps zmm22,zmm0,zmm4
  a1556c:	62 f1 7c 48 10 42 07 	vmovups zmm0,ZMMWORD PTR [rdx+0x1c0]
  a15573:	62 f1 7c 48 10 5a 06 	vmovups zmm3,ZMMWORD PTR [rdx+0x180]
  a1557a:	62 f1 04 40 59 e3    	vmulps zmm4,zmm31,zmm3
  a15580:	62 f2 1d 40 bc e0    	vfnmadd231ps zmm4,zmm28,zmm0
  a15586:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm4
  a1558d:	14 
  a1558e:	62 e1 1c 40 59 e3    	vmulps zmm20,zmm28,zmm3
  a15594:	62 82 7d 48 b8 e7    	vfmadd231ps zmm20,zmm0,zmm31
  a1559a:	62 e2 15 40 7f 44 24 	vpermt2ps zmm16,zmm29,ZMMWORD PTR [rsp+0x640]
  a155a1:	19 
  a155a2:	62 e2 15 40 7f 54 24 	vpermt2ps zmm18,zmm29,ZMMWORD PTR [rsp+0x680]
  a155a9:	1a 
  a155aa:	62 f1 7c 48 10 42 19 	vmovups zmm0,ZMMWORD PTR [rdx+0x640]
  a155b1:	62 f1 7c 48 10 72 18 	vmovups zmm6,ZMMWORD PTR [rdx+0x600]
  a155b8:	62 f1 6c 40 59 ce    	vmulps zmm1,zmm18,zmm6
  a155be:	62 f2 7d 40 bc c8    	vfnmadd231ps zmm1,zmm16,zmm0
  a155c4:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a155ca:	62 e1 7c 40 59 de    	vmulps zmm19,zmm16,zmm6
  a155d0:	62 a2 7d 48 b8 da    	vfmadd231ps zmm19,zmm0,zmm18
  a155d6:	62 f1 7c 48 10 42 0b 	vmovups zmm0,ZMMWORD PTR [rdx+0x2c0]
  a155dd:	62 f1 7c 48 10 52 0a 	vmovups zmm2,ZMMWORD PTR [rdx+0x280]
  a155e4:	62 f1 2c 48 59 ca    	vmulps zmm1,zmm10,zmm2
  a155ea:	62 f2 3d 48 b8 c8    	vfmadd231ps zmm1,zmm8,zmm0
  a155f0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a155f7:	fe 
  a155f8:	62 f1 3c 48 59 ca    	vmulps zmm1,zmm8,zmm2
  a155fe:	62 d2 7d 48 bc ca    	vfnmadd231ps zmm1,zmm0,zmm10
  a15604:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a1560b:	03 
  a1560c:	62 e2 15 40 7f 7c 24 	vpermt2ps zmm23,zmm29,ZMMWORD PTR [rsp+0x140]
  a15613:	05 
  a15614:	62 e2 15 40 7f 6c 24 	vpermt2ps zmm21,zmm29,ZMMWORD PTR [rsp+0x340]
  a1561b:	0d 
  a1561c:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a15623:	62 f1 7c 48 10 52 14 	vmovups zmm2,ZMMWORD PTR [rdx+0x500]
  a1562a:	62 f1 54 40 59 ca    	vmulps zmm1,zmm21,zmm2
  a15630:	62 f2 45 40 b8 c8    	vfmadd231ps zmm1,zmm23,zmm0
  a15636:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a1563d:	04 
  a1563e:	62 f1 44 40 59 ca    	vmulps zmm1,zmm23,zmm2
  a15644:	62 b2 7d 48 bc cd    	vfnmadd231ps zmm1,zmm0,zmm21
  a1564a:	62 61 7c 48 28 c1    	vmovaps zmm24,zmm1
  a15650:	62 62 15 40 7f f7    	vpermt2ps zmm30,zmm29,zmm7
  a15656:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm30
  a1565d:	02 
  a1565e:	62 92 15 40 7f e9    	vpermt2ps zmm5,zmm29,zmm25
  a15664:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  a1566b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x200]
  a15672:	08 
  a15673:	62 f1 7c 48 5c 44 24 	vsubps zmm0,zmm0,ZMMWORD PTR [rsp+0x4c0]
  a1567a:	13 
  a1567b:	62 f2 7d 48 18 15 d3 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff6600d3]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a15682:	00 66 ff 
  a15685:	62 61 7c 48 10 5c 24 	vmovups zmm27,ZMMWORD PTR [rsp+0x3c0]
  a1568c:	0f 
  a1568d:	62 61 7c 48 10 7c 24 	vmovups zmm31,ZMMWORD PTR [rsp+0x380]
  a15694:	0e 
  a15695:	62 91 24 40 5c ff    	vsubps zmm7,zmm27,zmm31
  a1569b:	62 f1 44 48 59 ca    	vmulps zmm1,zmm7,zmm2
  a156a1:	62 f2 7d 48 18 2d f5 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff65fcf5]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a156a8:	fc 65 ff 
  a156ab:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a156b1:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a156b8:	ff 
  a156b9:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a156bf:	62 f2 55 48 bc c7    	vfnmadd231ps zmm0,zmm5,zmm7
  a156c5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm0
  a156cc:	16 
  a156cd:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x740]
  a156d4:	1d 
  a156d5:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x780]
  a156dc:	1e 
  a156dd:	62 d1 7c 40 5c c5    	vsubps zmm0,zmm16,zmm13
  a156e3:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0x700]
  a156ea:	1c 
  a156eb:	62 d1 54 40 5c fc    	vsubps zmm7,zmm21,zmm12
  a156f1:	62 f1 44 48 59 ca    	vmulps zmm1,zmm7,zmm2
  a156f7:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a156fd:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a15704:	01 
  a15705:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a1570b:	62 f2 55 48 bc c7    	vfnmadd231ps zmm0,zmm5,zmm7
  a15711:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm0
  a15718:	15 
  a15719:	62 f1 5c 48 5c c3    	vsubps zmm0,zmm4,zmm3
  a1571f:	62 61 7c 48 28 eb    	vmovaps zmm29,zmm3
  a15725:	62 d1 24 48 5c f9    	vsubps zmm7,zmm11,zmm9
  a1572b:	62 41 7c 48 28 c9    	vmovaps zmm25,zmm9
  a15731:	62 f1 44 48 59 ca    	vmulps zmm1,zmm7,zmm2
  a15737:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a1573d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a15744:	05 
  a15745:	62 61 7c 48 59 e2    	vmulps zmm28,zmm0,zmm2
  a1574b:	62 62 55 48 bc e7    	vfnmadd231ps zmm28,zmm5,zmm7
  a15751:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x480]
  a15758:	12 
  a15759:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x440]
  a15760:	11 
  a15761:	62 b1 2c 48 5c fa    	vsubps zmm7,zmm10,zmm18
  a15767:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0x1c0]
  a1576e:	07 
  a1576f:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x400]
  a15776:	10 
  a15777:	62 51 0c 40 5c c1    	vsubps zmm8,zmm30,zmm9
  a1577d:	62 71 3c 48 59 fa    	vmulps zmm15,zmm8,zmm2
  a15783:	62 72 45 48 b8 fd    	vfmadd231ps zmm15,zmm7,zmm5
  a15789:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm15
  a15790:	17 
  a15791:	62 61 44 48 59 d2    	vmulps zmm26,zmm7,zmm2
  a15797:	62 42 55 48 bc d0    	vfnmadd231ps zmm26,zmm5,zmm8
  a1579d:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x180]
  a157a4:	06 
  a157a5:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x300]
  a157ac:	0c 
  a157ad:	62 f1 4c 48 5c fc    	vsubps zmm7,zmm6,zmm4
  a157b3:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x2c0]
  a157ba:	0b 
  a157bb:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x240]
  a157c2:	09 
  a157c3:	62 71 64 48 5c c1    	vsubps zmm8,zmm3,zmm1
  a157c9:	62 f1 3c 48 59 c2    	vmulps zmm0,zmm8,zmm2
  a157cf:	62 f2 45 48 b8 c5    	vfmadd231ps zmm0,zmm7,zmm5
  a157d5:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a157db:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm0
  a157e2:	1f 
  a157e3:	62 e1 44 48 59 fa    	vmulps zmm23,zmm7,zmm2
  a157e9:	62 c2 55 48 bc f8    	vfnmadd231ps zmm23,zmm5,zmm8
  a157ef:	62 b1 5c 40 5c fb    	vsubps zmm7,zmm20,zmm19
  a157f5:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x280]
  a157fc:	0a 
  a157fd:	62 31 7c 48 5c c6    	vsubps zmm8,zmm0,zmm22
  a15803:	62 71 3c 48 59 e2    	vmulps zmm12,zmm8,zmm2
  a15809:	62 72 45 48 b8 e5    	vfmadd231ps zmm12,zmm7,zmm5
  a1580f:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm12
  a15816:	0d 
  a15817:	62 71 44 48 59 f2    	vmulps zmm14,zmm7,zmm2
  a1581d:	62 72 3d 48 bc f5    	vfnmadd231ps zmm14,zmm8,zmm5
  a15823:	62 51 0c 40 58 c9    	vaddps zmm9,zmm30,zmm9
  a15829:	62 a1 2c 48 58 d2    	vaddps zmm18,zmm10,zmm18
  a1582f:	62 71 64 48 58 d1    	vaddps zmm10,zmm3,zmm1
  a15835:	62 71 4c 48 58 dc    	vaddps zmm11,zmm6,zmm4
  a1583b:	62 21 7c 48 58 f6    	vaddps zmm30,zmm0,zmm22
  a15841:	62 31 5c 40 58 e3    	vaddps zmm12,zmm20,zmm19
  a15847:	62 81 24 40 58 f7    	vaddps zmm22,zmm27,zmm31
  a1584d:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x4c0]
  a15854:	13 
  a15855:	62 61 7c 48 58 5c 24 	vaddps zmm27,zmm0,ZMMWORD PTR [rsp+0x200]
  a1585c:	08 
  a1585d:	62 61 54 40 58 7c 24 	vaddps zmm31,zmm21,ZMMWORD PTR [rsp+0x800]
  a15864:	20 
  a15865:	62 f2 7d 48 18 15 79 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff65fe79]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a1586c:	fe 65 ff 
  a1586f:	62 51 7c 40 58 c5    	vaddps zmm8,zmm16,zmm13
  a15875:	62 f2 7d 48 18 0d c5 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff65fdc5]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a1587c:	fd 65 ff 
  a1587f:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  a15885:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a1588c:	03 
  a1588d:	62 e2 25 40 a8 e8    	vfmadd213ps zmm21,zmm27,zmm0
  a15893:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm27
  a1589a:	0e 
  a1589b:	62 e2 4d 40 bc e9    	vfnmadd231ps zmm21,zmm22,zmm1
  a158a1:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm22
  a158a8:	0c 
  a158a9:	62 e1 7c 48 28 da    	vmovaps zmm19,zmm2
  a158af:	62 11 7c 48 28 e8    	vmovaps zmm13,zmm24
  a158b5:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm24
  a158bc:	1b 
  a158bd:	62 82 3d 48 a8 d8    	vfmadd213ps zmm19,zmm8,zmm24
  a158c3:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm8
  a158ca:	0b 
  a158cb:	62 e2 05 40 bc d9    	vfnmadd231ps zmm19,zmm31,zmm1
  a158d1:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm31
  a158d8:	0a 
  a158d9:	62 d1 54 40 5c ef    	vsubps zmm5,zmm21,zmm15
  a158df:	62 b1 64 40 5c f9    	vsubps zmm7,zmm19,zmm17
  a158e5:	62 f1 54 48 5c df    	vsubps zmm3,zmm5,zmm7
  a158eb:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm3
  a158f2:	12 
  a158f3:	62 f1 54 48 58 df    	vaddps zmm3,zmm5,zmm7
  a158f9:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm3
  a15900:	07 
  a15901:	62 61 34 40 58 4c 24 	vaddps zmm25,zmm25,ZMMWORD PTR [rsp+0x600]
  a15908:	18 
  a15909:	62 61 14 40 58 44 24 	vaddps zmm24,zmm29,ZMMWORD PTR [rsp+0x500]
  a15910:	14 
  a15911:	62 e1 7c 48 28 ca    	vmovaps zmm17,zmm2
  a15917:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp-0x80]
  a1591e:	fe 
  a1591f:	62 a2 6d 40 a8 cc    	vfmadd213ps zmm17,zmm18,zmm20
  a15925:	62 b1 7c 48 28 fa    	vmovaps zmm7,zmm18
  a1592b:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm18
  a15932:	1a 
  a15933:	62 e2 35 48 bc c9    	vfnmadd231ps zmm17,zmm9,zmm1
  a15939:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm9
  a15940:	19 
  a15941:	62 e1 7c 48 28 c2    	vmovaps zmm16,zmm2
  a15947:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x100]
  a1594e:	04 
  a1594f:	62 a2 25 48 a8 c2    	vfmadd213ps zmm16,zmm11,zmm18
  a15955:	62 e2 2d 48 bc c1    	vfnmadd231ps zmm16,zmm10,zmm1
  a1595b:	62 41 7c 48 28 ea    	vmovaps zmm29,zmm10
  a15961:	62 f1 74 40 58 5c 24 	vaddps zmm3,zmm17,ZMMWORD PTR [rsp-0x40]
  a15968:	ff 
  a15969:	62 f1 7c 40 58 64 24 	vaddps zmm4,zmm16,ZMMWORD PTR [rsp+0x40]
  a15970:	01 
  a15971:	62 f1 64 48 58 ec    	vaddps zmm5,zmm3,zmm4
  a15977:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm5
  a1597e:	10 
  a1597f:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a15985:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm3
  a1598c:	11 
  a1598d:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a15993:	62 f2 25 40 ac e8    	vfnmadd213ps zmm5,zmm27,zmm0
  a15999:	62 f2 4d 40 b8 ea    	vfmadd231ps zmm5,zmm22,zmm2
  a1599f:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a159a5:	62 d2 3d 48 ac f5    	vfnmadd213ps zmm6,zmm8,zmm13
  a159ab:	62 f2 05 40 b8 f2    	vfmadd231ps zmm6,zmm31,zmm2
  a159b1:	62 91 54 48 5c da    	vsubps zmm3,zmm5,zmm26
  a159b7:	62 b1 4c 48 5c e7    	vsubps zmm4,zmm6,zmm23
  a159bd:	62 f1 64 48 5c c4    	vsubps zmm0,zmm3,zmm4
  a159c3:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a159ca:	0f 
  a159cb:	62 f1 64 48 58 c4    	vaddps zmm0,zmm3,zmm4
  a159d1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a159d8:	06 
  a159d9:	62 e1 7c 48 28 f2    	vmovaps zmm22,zmm2
  a159df:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x80]
  a159e6:	02 
  a159e7:	62 51 7c 48 28 c4    	vmovaps zmm8,zmm12
  a159ed:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm12
  a159f4:	22 
  a159f5:	62 e2 1d 48 a8 f4    	vfmadd213ps zmm22,zmm12,zmm4
  a159fb:	62 11 7c 48 28 d6    	vmovaps zmm10,zmm30
  a15a01:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm30
  a15a08:	21 
  a15a09:	62 e2 0d 40 bc f1    	vfnmadd231ps zmm22,zmm30,zmm1
  a15a0f:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a15a15:	62 f1 7c 48 10 1c 24 	vmovups zmm3,ZMMWORD PTR [rsp]
  a15a1c:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm24
  a15a23:	1d 
  a15a24:	62 72 3d 40 a8 e3    	vfmadd213ps zmm12,zmm24,zmm3
  a15a2a:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm25
  a15a31:	1c 
  a15a32:	62 72 35 40 bc e1    	vfnmadd231ps zmm12,zmm25,zmm1
  a15a38:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a15a3e:	62 32 45 48 ac ec    	vfnmadd213ps zmm13,zmm7,zmm20
  a15a44:	62 72 35 48 b8 ea    	vfmadd231ps zmm13,zmm9,zmm2
  a15a4a:	62 61 7c 48 28 d9    	vmovaps zmm27,zmm1
  a15a50:	62 22 25 48 ac da    	vfnmadd213ps zmm27,zmm11,zmm18
  a15a56:	62 41 7c 48 28 f3    	vmovaps zmm30,zmm11
  a15a5c:	62 62 15 40 b8 da    	vfmadd231ps zmm27,zmm29,zmm2
  a15a62:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a15a68:	62 f2 3d 48 ac c4    	vfnmadd213ps zmm0,zmm8,zmm4
  a15a6e:	62 f2 2d 48 b8 c2    	vfmadd231ps zmm0,zmm10,zmm2
  a15a74:	62 f2 3d 40 ac cb    	vfnmadd213ps zmm1,zmm24,zmm3
  a15a7a:	62 f2 35 40 b8 ca    	vfmadd231ps zmm1,zmm25,zmm2
  a15a80:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x580]
  a15a87:	16 
  a15a88:	62 f1 14 48 58 dc    	vaddps zmm3,zmm13,zmm4
  a15a8e:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x540]
  a15a95:	15 
  a15a96:	62 f1 24 40 58 d7    	vaddps zmm2,zmm27,zmm7
  a15a9c:	62 71 64 48 58 c2    	vaddps zmm8,zmm3,zmm2
  a15aa2:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm8
  a15aa9:	1e 
  a15aaa:	62 f1 64 48 5c d2    	vsubps zmm2,zmm3,zmm2
  a15ab0:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm2
  a15ab7:	09 
  a15ab8:	62 61 1c 40 58 c8    	vaddps zmm25,zmm28,zmm0
  a15abe:	62 91 7c 48 5c d4    	vsubps zmm2,zmm0,zmm28
  a15ac4:	62 f1 14 48 5c e4    	vsubps zmm4,zmm13,zmm4
  a15aca:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm4
  a15ad1:	14 
  a15ad2:	62 f1 24 40 5c ff    	vsubps zmm7,zmm27,zmm7
  a15ad8:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm7
  a15adf:	15 
  a15ae0:	62 d1 74 48 5c c6    	vsubps zmm0,zmm1,zmm14
  a15ae6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm0
  a15aed:	16 
  a15aee:	62 51 74 48 58 ee    	vaddps zmm13,zmm1,zmm14
  a15af4:	62 91 54 48 58 ea    	vaddps zmm5,zmm5,zmm26
  a15afa:	62 b1 4c 48 58 df    	vaddps zmm3,zmm6,zmm23
  a15b00:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm3
  a15b07:	18 
  a15b08:	62 f2 7d 48 18 05 4e 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff65f94e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a15b0f:	f9 65 ff 
  a15b12:	62 61 5c 48 58 ff    	vaddps zmm31,zmm4,zmm7
  a15b18:	62 91 6c 48 58 cf    	vaddps zmm1,zmm2,zmm31
  a15b1e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a15b25:	08 
  a15b26:	62 62 7d 48 ac fa    	vfnmadd213ps zmm31,zmm0,zmm2
  a15b2c:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a15b32:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a15b38:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a15b3e:	62 71 7c 48 28 f8    	vmovaps zmm15,zmm0
  a15b44:	62 f1 54 48 58 cb    	vaddps zmm1,zmm5,zmm3
  a15b4a:	62 f1 7c 48 28 dd    	vmovaps zmm3,zmm5
  a15b50:	62 e1 7c 48 28 e0    	vmovaps zmm20,zmm0
  a15b56:	62 e1 7c 48 28 d0    	vmovaps zmm18,zmm0
  a15b5c:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a15b62:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a15b68:	62 d2 75 48 ac c5    	vfnmadd213ps zmm0,zmm1,zmm13
  a15b6e:	62 f1 14 48 58 c9    	vaddps zmm1,zmm13,zmm1
  a15b74:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm1
  a15b7b:	13 
  a15b7c:	62 f1 74 40 5c 4c 24 	vsubps zmm1,zmm17,ZMMWORD PTR [rsp-0x40]
  a15b83:	ff 
  a15b84:	62 71 7c 40 5c 44 24 	vsubps zmm8,zmm16,ZMMWORD PTR [rsp+0x40]
  a15b8b:	01 
  a15b8c:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x140]
  a15b93:	05 
  a15b94:	62 31 6c 48 58 ce    	vaddps zmm9,zmm2,zmm22
  a15b9a:	62 e1 4c 40 5c ca    	vsubps zmm17,zmm22,zmm2
  a15ba0:	62 71 54 40 58 5c 24 	vaddps zmm11,zmm21,ZMMWORD PTR [rsp+0x5c0]
  a15ba7:	17 
  a15ba8:	62 71 64 40 58 6c 24 	vaddps zmm13,zmm19,ZMMWORD PTR [rsp+0x7c0]
  a15baf:	1f 
  a15bb0:	62 41 24 48 5c c5    	vsubps zmm24,zmm11,zmm13
  a15bb6:	62 51 24 48 58 dd    	vaddps zmm11,zmm11,zmm13
  a15bbc:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x340]
  a15bc3:	0d 
  a15bc4:	62 71 1c 48 5c ea    	vsubps zmm13,zmm12,zmm2
  a15bca:	62 71 1c 48 58 e2    	vaddps zmm12,zmm12,zmm2
  a15bd0:	62 41 74 48 58 d0    	vaddps zmm26,zmm1,zmm8
  a15bd6:	62 c1 74 48 5c f0    	vsubps zmm22,zmm1,zmm8
  a15bdc:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a15be3:	fe 
  a15be4:	62 71 74 48 58 44 24 	vaddps zmm8,zmm1,ZMMWORD PTR [rsp+0x680]
  a15beb:	1a 
  a15bec:	62 71 3c 48 58 44 24 	vaddps zmm8,zmm8,ZMMWORD PTR [rsp+0x640]
  a15bf3:	19 
  a15bf4:	62 e1 0c 40 58 44 24 	vaddps zmm16,zmm30,ZMMWORD PTR [rsp+0x100]
  a15bfb:	04 
  a15bfc:	62 81 7c 40 58 c5    	vaddps zmm16,zmm16,zmm29
  a15c02:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a15c09:	02 
  a15c0a:	62 e1 74 48 58 5c 24 	vaddps zmm19,zmm1,ZMMWORD PTR [rsp+0x880]
  a15c11:	22 
  a15c12:	62 f1 64 40 58 4c 24 	vaddps zmm1,zmm19,ZMMWORD PTR [rsp+0x840]
  a15c19:	21 
  a15c1a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a15c21:	05 
  a15c22:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a15c29:	03 
  a15c2a:	62 e1 74 48 58 5c 24 	vaddps zmm19,zmm1,ZMMWORD PTR [rsp+0x380]
  a15c31:	0e 
  a15c32:	62 e1 64 40 58 5c 24 	vaddps zmm19,zmm19,ZMMWORD PTR [rsp+0x300]
  a15c39:	0c 
  a15c3a:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x6c0]
  a15c41:	1b 
  a15c42:	62 e1 74 48 58 7c 24 	vaddps zmm23,zmm1,ZMMWORD PTR [rsp+0x2c0]
  a15c49:	0b 
  a15c4a:	62 e1 44 40 58 7c 24 	vaddps zmm23,zmm23,ZMMWORD PTR [rsp+0x280]
  a15c51:	0a 
  a15c52:	62 21 64 40 5c e7    	vsubps zmm28,zmm19,zmm23
  a15c58:	62 21 64 40 58 f7    	vaddps zmm30,zmm19,zmm23
  a15c5e:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a15c65:	62 e1 74 48 58 5c 24 	vaddps zmm19,zmm1,ZMMWORD PTR [rsp+0x740]
  a15c6c:	1d 
  a15c6d:	62 e1 64 40 58 7c 24 	vaddps zmm23,zmm19,ZMMWORD PTR [rsp+0x700]
  a15c74:	1c 
  a15c75:	62 a1 3c 48 58 d8    	vaddps zmm19,zmm8,zmm16
  a15c7b:	62 21 3c 48 5c e8    	vsubps zmm29,zmm8,zmm16
  a15c81:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x400]
  a15c88:	10 
  a15c89:	62 52 75 48 ac d1    	vfnmadd213ps zmm10,zmm1,zmm9
  a15c8f:	62 f1 34 48 58 c9    	vaddps zmm1,zmm9,zmm1
  a15c95:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a15c9c:	ff 
  a15c9d:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x1c0]
  a15ca4:	07 
  a15ca5:	62 d2 75 48 ac fd    	vfnmadd213ps zmm7,zmm1,zmm13
  a15cab:	62 f1 14 48 58 c9    	vaddps zmm1,zmm13,zmm1
  a15cb1:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a15cb8:	03 
  a15cb9:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x780]
  a15cc0:	1e 
  a15cc1:	62 12 4d 48 ac f1    	vfnmadd213ps zmm14,zmm6,zmm25
  a15cc7:	62 72 7d 48 18 0d 03 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff65f603]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a15cce:	f6 65 ff 
  a15cd1:	62 71 34 48 59 6c 24 	vmulps zmm13,zmm9,ZMMWORD PTR [rsp+0x3c0]
  a15cd8:	0f 
  a15cd9:	62 d1 0c 48 5c cd    	vsubps zmm1,zmm14,zmm13
  a15cdf:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a15ce6:	02 
  a15ce7:	62 d1 0c 48 58 cd    	vaddps zmm1,zmm14,zmm13
  a15ced:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a15cf4:	fe 
  a15cf5:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x180]
  a15cfc:	06 
  a15cfd:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x580]
  a15d04:	16 
  a15d05:	62 72 7d 40 ac fd    	vfnmadd213ps zmm15,zmm16,zmm5
  a15d0b:	62 71 34 48 59 6c 24 	vmulps zmm13,zmm9,ZMMWORD PTR [rsp+0x240]
  a15d12:	09 
  a15d13:	62 d1 04 48 58 cd    	vaddps zmm1,zmm15,zmm13
  a15d19:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a15d20:	04 
  a15d21:	62 d1 04 48 5c cd    	vsubps zmm1,zmm15,zmm13
  a15d27:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm1
  a15d2e:	07 
  a15d2f:	62 71 64 48 5c 6c 24 	vsubps zmm13,zmm3,ZMMWORD PTR [rsp+0x600]
  a15d36:	18 
  a15d37:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x500]
  a15d3e:	14 
  a15d3f:	62 71 74 48 5c 74 24 	vsubps zmm14,zmm1,ZMMWORD PTR [rsp+0x540]
  a15d46:	15 
  a15d47:	62 71 34 48 59 7c 24 	vmulps zmm15,zmm9,ZMMWORD PTR [rsp+0x480]
  a15d4e:	12 
  a15d4f:	62 e1 34 48 59 6c 24 	vmulps zmm21,zmm9,ZMMWORD PTR [rsp+0x440]
  a15d56:	11 
  a15d57:	62 d1 3c 40 59 d9    	vmulps zmm3,zmm24,zmm9
  a15d5d:	62 51 4c 40 59 c1    	vmulps zmm8,zmm22,zmm9
  a15d63:	62 c1 1c 40 59 f1    	vmulps zmm22,zmm28,zmm9
  a15d69:	62 41 14 40 59 c1    	vmulps zmm24,zmm29,zmm9
  a15d6f:	62 d1 14 48 59 c9    	vmulps zmm1,zmm13,zmm9
  a15d75:	62 d1 0c 48 59 d1    	vmulps zmm2,zmm14,zmm9
  a15d7b:	62 a2 2d 40 ac e1    	vfnmadd213ps zmm20,zmm26,zmm17
  a15d81:	62 11 74 40 58 ea    	vaddps zmm13,zmm17,zmm26
  a15d87:	62 c2 25 48 ac d4    	vfnmadd213ps zmm18,zmm11,zmm12
  a15d8d:	62 51 1c 48 58 db    	vaddps zmm11,zmm12,zmm11
  a15d93:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x140]
  a15d9a:	05 
  a15d9b:	62 42 65 40 ac dc    	vfnmadd213ps zmm27,zmm19,zmm12
  a15da1:	62 21 24 40 5c d6    	vsubps zmm26,zmm27,zmm22
  a15da7:	62 21 24 40 58 ee    	vaddps zmm29,zmm27,zmm22
  a15dad:	62 b2 0d 40 ac e7    	vfnmadd213ps zmm4,zmm30,zmm23
  a15db3:	62 01 5c 48 58 e0    	vaddps zmm28,zmm4,zmm24
  a15db9:	62 11 5c 48 5c c8    	vsubps zmm9,zmm4,zmm24
  a15dbf:	62 41 2c 48 58 c7    	vaddps zmm24,zmm10,zmm15
  a15dc5:	62 41 2c 48 5c df    	vsubps zmm27,zmm10,zmm15
  a15dcb:	62 b1 44 48 5c e5    	vsubps zmm4,zmm7,zmm21
  a15dd1:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm4
  a15dd8:	01 
  a15dd9:	62 31 44 48 58 d5    	vaddps zmm10,zmm7,zmm21
  a15ddf:	62 71 34 40 58 f6    	vaddps zmm14,zmm25,zmm6
  a15de5:	62 b1 54 48 58 e0    	vaddps zmm4,zmm5,zmm16
  a15deb:	62 f1 04 40 5c f1    	vsubps zmm6,zmm31,zmm1
  a15df1:	62 71 04 40 58 f9    	vaddps zmm15,zmm31,zmm1
  a15df7:	62 e1 7c 48 58 ea    	vaddps zmm21,zmm0,zmm2
  a15dfd:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a15e03:	62 e1 5c 40 58 f3    	vaddps zmm22,zmm20,zmm3
  a15e09:	62 e1 5c 40 5c cb    	vsubps zmm17,zmm20,zmm3
  a15e0f:	62 41 6c 40 5c f8    	vsubps zmm31,zmm18,zmm8
  a15e15:	62 d1 6c 40 58 c8    	vaddps zmm1,zmm18,zmm8
  a15e1b:	62 b1 1c 48 58 d3    	vaddps zmm2,zmm12,zmm19
  a15e21:	62 91 44 40 58 de    	vaddps zmm3,zmm23,zmm30
  a15e27:	62 f1 7c 48 28 3d 8f 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff67968f]        # 8f4c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c970>
  a15e2e:	96 67 ff 
  a15e31:	62 e1 7c 48 28 fa    	vmovaps zmm23,zmm2
  a15e37:	62 e2 45 48 7f fb    	vpermt2ps zmm23,zmm7,zmm3
  a15e3d:	62 f1 6c 48 14 eb    	vunpcklps zmm5,zmm2,zmm3
  a15e43:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  a15e4a:	c5 7c 28 05 ee 0d 66 	vmovaps ymm8,YMMWORD PTR [rip+0xffffffffff660dee]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a15e51:	ff 
  a15e52:	62 f2 3d 48 7f d3    	vpermt2ps zmm2,zmm8,zmm3
  a15e58:	62 a1 7c 48 28 d9    	vmovaps zmm19,zmm17
  a15e5e:	62 e2 45 48 7f d9    	vpermt2ps zmm19,zmm7,zmm1
  a15e64:	62 f1 74 40 14 d9    	vunpcklps zmm3,zmm17,zmm1
  a15e6a:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm3
  a15e71:	12 
  a15e72:	62 e2 3d 48 7f c9    	vpermt2ps zmm17,zmm8,zmm1
  a15e78:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a15e7e:	62 e2 45 48 7f c0    	vpermt2ps zmm16,zmm7,zmm0
  a15e84:	62 f1 04 48 14 c8    	vunpcklps zmm1,zmm15,zmm0
  a15e8a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm1
  a15e91:	11 
  a15e92:	62 72 3d 48 7f f8    	vpermt2ps zmm15,zmm8,zmm0
  a15e98:	62 c1 7c 48 28 d6    	vmovaps zmm18,zmm14
  a15e9e:	62 e2 45 48 7f d4    	vpermt2ps zmm18,zmm7,zmm4
  a15ea4:	62 f1 0c 48 14 c4    	vunpcklps zmm0,zmm14,zmm4
  a15eaa:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a15eb1:	10 
  a15eb2:	62 72 3d 48 7f f4    	vpermt2ps zmm14,zmm8,zmm4
  a15eb8:	62 11 7c 48 28 e3    	vmovaps zmm12,zmm27
  a15ebe:	62 52 45 48 7f e2    	vpermt2ps zmm12,zmm7,zmm10
  a15ec4:	62 d1 24 40 14 c2    	vunpcklps zmm0,zmm27,zmm10
  a15eca:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a15ed1:	06 
  a15ed2:	62 42 3d 48 7f da    	vpermt2ps zmm27,zmm8,zmm10
  a15ed8:	62 11 7c 48 28 d5    	vmovaps zmm10,zmm29
  a15ede:	62 52 45 48 7f d1    	vpermt2ps zmm10,zmm7,zmm9
  a15ee4:	62 d1 14 40 14 c1    	vunpcklps zmm0,zmm29,zmm9
  a15eea:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a15ef1:	0f 
  a15ef2:	62 42 3d 48 7f e9    	vpermt2ps zmm29,zmm8,zmm9
  a15ef8:	62 41 7c 48 28 f5    	vmovaps zmm30,zmm13
  a15efe:	62 42 45 48 7f f3    	vpermt2ps zmm30,zmm7,zmm11
  a15f04:	62 d1 14 48 14 c3    	vunpcklps zmm0,zmm13,zmm11
  a15f0a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a15f11:	0e 
  a15f12:	62 52 3d 48 7f eb    	vpermt2ps zmm13,zmm8,zmm11
  a15f18:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a15f1e:	62 32 45 48 7f dd    	vpermt2ps zmm11,zmm7,zmm21
  a15f24:	62 b1 4c 48 14 c5    	vunpcklps zmm0,zmm6,zmm21
  a15f2a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a15f31:	05 
  a15f32:	62 b2 3d 48 7f f5    	vpermt2ps zmm6,zmm8,zmm21
  a15f38:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a15f3f:	fe 
  a15f40:	62 e1 7c 48 28 e9    	vmovaps zmm21,zmm1
  a15f46:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a15f4d:	07 
  a15f4e:	62 e2 45 48 7f e8    	vpermt2ps zmm21,zmm7,zmm0
  a15f54:	62 f1 74 48 14 d8    	vunpcklps zmm3,zmm1,zmm0
  a15f5a:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm3
  a15f61:	0d 
  a15f62:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a15f68:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a15f6f:	fe 
  a15f70:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a15f77:	ff 
  a15f78:	62 61 7c 48 28 c9    	vmovaps zmm25,zmm1
  a15f7e:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a15f85:	03 
  a15f86:	62 62 45 48 7f c8    	vpermt2ps zmm25,zmm7,zmm0
  a15f8c:	62 f1 74 48 14 d8    	vunpcklps zmm3,zmm1,zmm0
  a15f92:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm3
  a15f99:	07 
  a15f9a:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a15fa0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a15fa7:	ff 
  a15fa8:	62 81 7c 48 28 e2    	vmovaps zmm20,zmm26
  a15fae:	62 82 45 48 7f e4    	vpermt2ps zmm20,zmm7,zmm28
  a15fb4:	62 91 2c 40 14 c4    	vunpcklps zmm0,zmm26,zmm28
  a15fba:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a15fc1:	03 
  a15fc2:	62 02 3d 48 7f d4    	vpermt2ps zmm26,zmm8,zmm28
  a15fc8:	62 b1 7c 48 28 de    	vmovaps zmm3,zmm22
  a15fce:	62 92 45 48 7f df    	vpermt2ps zmm3,zmm7,zmm31
  a15fd4:	62 91 4c 40 14 c7    	vunpcklps zmm0,zmm22,zmm31
  a15fda:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a15fe1:	0c 
  a15fe2:	62 82 3d 48 7f f7    	vpermt2ps zmm22,zmm8,zmm31
  a15fe8:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp+0x200]
  a15fef:	08 
  a15ff0:	62 91 7c 48 28 ec    	vmovaps zmm5,zmm28
  a15ff6:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x4c0]
  a15ffd:	13 
  a15ffe:	62 f2 45 48 7f ec    	vpermt2ps zmm5,zmm7,zmm4
  a16004:	62 f1 1c 40 14 c4    	vunpcklps zmm0,zmm28,zmm4
  a1600a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a16011:	0b 
  a16012:	62 62 3d 48 7f e4    	vpermt2ps zmm28,zmm8,zmm4
  a16018:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a1601f:	02 
  a16020:	62 61 7c 48 28 f9    	vmovaps zmm31,zmm1
  a16026:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x100]
  a1602d:	04 
  a1602e:	62 62 45 48 7f fc    	vpermt2ps zmm31,zmm7,zmm4
  a16034:	62 71 74 48 14 cc    	vunpcklps zmm9,zmm1,zmm4
  a1603a:	62 f2 3d 48 7f cc    	vpermt2ps zmm1,zmm8,zmm4
  a16040:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a16046:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a1604d:	01 
  a1604e:	62 f2 3d 40 77 f8    	vpermi2ps zmm7,zmm24,zmm0
  a16054:	62 f1 3c 40 14 c8    	vunpcklps zmm1,zmm24,zmm0
  a1605a:	62 62 3d 48 7f c0    	vpermt2ps zmm24,zmm8,zmm0
  a16060:	62 e1 7c 48 11 3e    	vmovups ZMMWORD PTR [rsi],zmm23
  a16066:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a1606d:	62 f3 7d 48 19 46 06 	vextractf32x4 XMMWORD PTR [rsi+0x60],zmm0,0x3
  a16074:	03 
  a16075:	c5 fc 11 56 40       	vmovups YMMWORD PTR [rsi+0x40],ymm2
  a1607a:	62 e1 7c 48 11 9e 70 	vmovups ZMMWORD PTR [rsi+0x70],zmm19
  a16081:	00 00 00 
  a16084:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x480]
  a1608b:	12 
  a1608c:	62 f3 7d 48 19 46 0d 	vextractf32x4 XMMWORD PTR [rsi+0xd0],zmm0,0x3
  a16093:	03 
  a16094:	62 e1 7c 28 11 8e b0 	vmovups YMMWORD PTR [rsi+0xb0],ymm17
  a1609b:	00 00 00 
  a1609e:	62 e1 7c 48 11 86 e0 	vmovups ZMMWORD PTR [rsi+0xe0],zmm16
  a160a5:	00 00 00 
  a160a8:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x440]
  a160af:	11 
  a160b0:	62 f3 7d 48 19 46 14 	vextractf32x4 XMMWORD PTR [rsi+0x140],zmm0,0x3
  a160b7:	03 
  a160b8:	c5 7c 11 be 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm15
  a160bf:	00 
  a160c0:	62 e1 7c 48 11 96 50 	vmovups ZMMWORD PTR [rsi+0x150],zmm18
  a160c7:	01 00 00 
  a160ca:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x400]
  a160d1:	10 
  a160d2:	62 f3 7d 48 19 46 1b 	vextractf32x4 XMMWORD PTR [rsi+0x1b0],zmm0,0x3
  a160d9:	03 
  a160da:	c5 7c 11 b6 90 01 00 	vmovups YMMWORD PTR [rsi+0x190],ymm14
  a160e1:	00 
  a160e2:	62 71 7c 48 11 66 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm12
  a160e9:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a160f0:	06 
  a160f1:	62 f3 7d 48 19 46 22 	vextractf32x4 XMMWORD PTR [rsi+0x220],zmm0,0x3
  a160f8:	03 
  a160f9:	62 61 7c 28 11 5e 10 	vmovups YMMWORD PTR [rsi+0x200],ymm27
  a16100:	62 71 7c 48 11 96 30 	vmovups ZMMWORD PTR [rsi+0x230],zmm10
  a16107:	02 00 00 
  a1610a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x3c0]
  a16111:	0f 
  a16112:	62 f3 7d 48 19 46 29 	vextractf32x4 XMMWORD PTR [rsi+0x290],zmm0,0x3
  a16119:	03 
  a1611a:	62 61 7c 28 11 ae 70 	vmovups YMMWORD PTR [rsi+0x270],ymm29
  a16121:	02 00 00 
  a16124:	62 61 7c 48 11 b6 a0 	vmovups ZMMWORD PTR [rsi+0x2a0],zmm30
  a1612b:	02 00 00 
  a1612e:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x380]
  a16135:	0e 
  a16136:	62 f3 7d 48 19 46 30 	vextractf32x4 XMMWORD PTR [rsi+0x300],zmm0,0x3
  a1613d:	03 
  a1613e:	c5 7c 11 ae e0 02 00 	vmovups YMMWORD PTR [rsi+0x2e0],ymm13
  a16145:	00 
  a16146:	62 71 7c 48 11 9e 10 	vmovups ZMMWORD PTR [rsi+0x310],zmm11
  a1614d:	03 00 00 
  a16150:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a16157:	05 
  a16158:	62 f3 7d 48 19 46 37 	vextractf32x4 XMMWORD PTR [rsi+0x370],zmm0,0x3
  a1615f:	03 
  a16160:	c5 fc 11 b6 50 03 00 	vmovups YMMWORD PTR [rsi+0x350],ymm6
  a16167:	00 
  a16168:	62 e1 7c 48 11 6e 0e 	vmovups ZMMWORD PTR [rsi+0x380],zmm21
  a1616f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x340]
  a16176:	0d 
  a16177:	62 f3 7d 48 19 46 3e 	vextractf32x4 XMMWORD PTR [rsi+0x3e0],zmm0,0x3
  a1617e:	03 
  a1617f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a16186:	fe 
  a16187:	c5 fc 11 86 c0 03 00 	vmovups YMMWORD PTR [rsi+0x3c0],ymm0
  a1618e:	00 
  a1618f:	62 61 7c 48 11 8e f0 	vmovups ZMMWORD PTR [rsi+0x3f0],zmm25
  a16196:	03 00 00 
  a16199:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a161a0:	07 
  a161a1:	62 f3 7d 48 19 46 45 	vextractf32x4 XMMWORD PTR [rsi+0x450],zmm0,0x3
  a161a8:	03 
  a161a9:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a161b0:	ff 
  a161b1:	c5 fc 11 86 30 04 00 	vmovups YMMWORD PTR [rsi+0x430],ymm0
  a161b8:	00 
  a161b9:	62 e1 7c 48 11 a6 60 	vmovups ZMMWORD PTR [rsi+0x460],zmm20
  a161c0:	04 00 00 
  a161c3:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a161ca:	03 
  a161cb:	62 f3 7d 48 19 46 4c 	vextractf32x4 XMMWORD PTR [rsi+0x4c0],zmm0,0x3
  a161d2:	03 
  a161d3:	62 61 7c 28 11 56 25 	vmovups YMMWORD PTR [rsi+0x4a0],ymm26
  a161da:	62 f1 7c 48 11 9e d0 	vmovups ZMMWORD PTR [rsi+0x4d0],zmm3
  a161e1:	04 00 00 
  a161e4:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x300]
  a161eb:	0c 
  a161ec:	62 f3 7d 48 19 46 53 	vextractf32x4 XMMWORD PTR [rsi+0x530],zmm0,0x3
  a161f3:	03 
  a161f4:	62 e1 7c 28 11 b6 10 	vmovups YMMWORD PTR [rsi+0x510],ymm22
  a161fb:	05 00 00 
  a161fe:	62 f1 7c 48 11 6e 15 	vmovups ZMMWORD PTR [rsi+0x540],zmm5
  a16205:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x2c0]
  a1620c:	0b 
  a1620d:	62 f3 7d 48 19 46 5a 	vextractf32x4 XMMWORD PTR [rsi+0x5a0],zmm0,0x3
  a16214:	03 
  a16215:	62 61 7c 28 11 66 2c 	vmovups YMMWORD PTR [rsi+0x580],ymm28
  a1621c:	62 61 7c 48 11 be b0 	vmovups ZMMWORD PTR [rsi+0x5b0],zmm31
  a16223:	05 00 00 
  a16226:	62 73 7d 48 19 4e 61 	vextractf32x4 XMMWORD PTR [rsi+0x610],zmm9,0x3
  a1622d:	03 
  a1622e:	c5 fc 11 a6 f0 05 00 	vmovups YMMWORD PTR [rsi+0x5f0],ymm4
  a16235:	00 
  a16236:	62 f1 7c 48 11 be 20 	vmovups ZMMWORD PTR [rsi+0x620],zmm7
  a1623d:	06 00 00 
  a16240:	62 f3 7d 48 19 4e 68 	vextractf32x4 XMMWORD PTR [rsi+0x680],zmm1,0x3
  a16247:	03 
  a16248:	62 61 7c 28 11 46 33 	vmovups YMMWORD PTR [rsi+0x660],ymm24
  a1624f:	48 81 c4 c8 08 00 00 	add    rsp,0x8c8
  a16256:	c5 f8 77             	vzeroupper
  a16259:	c3                   	ret
