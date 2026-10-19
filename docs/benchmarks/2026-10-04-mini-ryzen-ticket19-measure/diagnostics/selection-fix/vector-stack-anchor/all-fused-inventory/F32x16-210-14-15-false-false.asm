
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a4a4c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a4a4c0:	48 81 ec 48 08 00 00 	sub    rsp,0x848
  a4a4c7:	c5 f8 10 47 60       	vmovups xmm0,XMMWORD PTR [rdi+0x60]
  a4a4cc:	c4 e3 79 21 47 64 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x64],0x10
  a4a4d3:	c4 e2 79 18 4f 68    	vbroadcastss xmm1,DWORD PTR [rdi+0x68]
  a4a4d9:	62 f1 7c 48 10 1f    	vmovups zmm3,ZMMWORD PTR [rdi]
  a4a4df:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4a4e5:	c4 e3 79 21 47 6c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6c],0x30
  a4a4ec:	c5 fc 10 4f 40       	vmovups ymm1,YMMWORD PTR [rdi+0x40]
  a4a4f1:	c5 fb 10 57 70       	vmovsd xmm2,QWORD PTR [rdi+0x70]
  a4a4f6:	c4 e3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm2,0x1
  a4a4fc:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4a503:	b0 7f                	mov    al,0x7f
  a4a505:	c5 fb 92 c8          	kmovd  k1,eax
  a4a509:	62 e2 fd c9 88 c8    	vexpandpd zmm17{k1}{z},zmm0
  a4a50f:	62 71 7c 48 28 15 67 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff648267]        # 92780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fc30>
  a4a516:	82 64 ff 
  a4a519:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a4a51f:	62 e1 7c 48 28 e3    	vmovaps zmm20,zmm3
  a4a525:	62 b2 2d 48 7f c1    	vpermt2ps zmm0,zmm10,zmm17
  a4a52b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a4a532:	ff 
  a4a533:	62 f1 7c 48 10 9f f0 	vmovups zmm3,ZMMWORD PTR [rdi+0xf0]
  a4a53a:	00 00 00 
  a4a53d:	c5 f8 10 87 50 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x150]
  a4a544:	00 
  a4a545:	c4 e3 79 21 87 54 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x154],0x10
  a4a54c:	00 00 10 
  a4a54f:	c4 e2 79 18 8f 58 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x158]
  a4a556:	00 00 
  a4a558:	c5 fc 10 97 30 01 00 	vmovups ymm2,YMMWORD PTR [rdi+0x130]
  a4a55f:	00 
  a4a560:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4a566:	c4 e3 79 21 87 5c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x15c],0x30
  a4a56d:	00 00 30 
  a4a570:	c5 fb 10 8f 60 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x160]
  a4a577:	00 
  a4a578:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a4a57e:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a4a585:	62 e2 fd c9 88 d8    	vexpandpd zmm19{k1}{z},zmm0
  a4a58b:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a4a591:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a4a597:	62 b2 2d 48 7f c3    	vpermt2ps zmm0,zmm10,zmm19
  a4a59d:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a4a5a4:	62 f1 7c 48 10 9f a0 	vmovups zmm3,ZMMWORD PTR [rdi+0x5a0]
  a4a5ab:	05 00 00 
  a4a5ae:	c5 f8 10 87 00 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x600]
  a4a5b5:	00 
  a4a5b6:	c4 e3 79 21 87 04 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x604],0x10
  a4a5bd:	00 00 10 
  a4a5c0:	c4 e2 79 18 8f 08 06 	vbroadcastss xmm1,DWORD PTR [rdi+0x608]
  a4a5c7:	00 00 
  a4a5c9:	c5 fc 10 97 e0 05 00 	vmovups ymm2,YMMWORD PTR [rdi+0x5e0]
  a4a5d0:	00 
  a4a5d1:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4a5d7:	c4 e3 79 21 87 0c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x60c],0x30
  a4a5de:	00 00 30 
  a4a5e1:	c5 fb 10 8f 10 06 00 	vmovsd xmm1,QWORD PTR [rdi+0x610]
  a4a5e8:	00 
  a4a5e9:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a4a5ef:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a4a5f6:	62 72 fd c9 88 d8    	vexpandpd zmm11{k1}{z},zmm0
  a4a5fc:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a4a602:	62 71 7c 48 28 eb    	vmovaps zmm13,zmm3
  a4a608:	62 d2 2d 48 7f c3    	vpermt2ps zmm0,zmm10,zmm11
  a4a60e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a4a615:	06 
  a4a616:	62 f1 7c 48 10 9f e0 	vmovups zmm3,ZMMWORD PTR [rdi+0x1e0]
  a4a61d:	01 00 00 
  a4a620:	c5 f8 10 87 40 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x240]
  a4a627:	00 
  a4a628:	c4 e3 79 21 87 44 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x244],0x10
  a4a62f:	00 00 10 
  a4a632:	c4 e2 79 18 8f 48 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x248]
  a4a639:	00 00 
  a4a63b:	c5 fc 10 97 20 02 00 	vmovups ymm2,YMMWORD PTR [rdi+0x220]
  a4a642:	00 
  a4a643:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4a649:	c4 e3 79 21 87 4c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24c],0x30
  a4a650:	00 00 30 
  a4a653:	c5 fb 10 8f 50 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x250]
  a4a65a:	00 
  a4a65b:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a4a661:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a4a668:	62 72 fd c9 88 c8    	vexpandpd zmm9{k1}{z},zmm0
  a4a66e:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a4a674:	62 71 7c 48 28 f3    	vmovaps zmm14,zmm3
  a4a67a:	62 d2 2d 48 7f c1    	vpermt2ps zmm0,zmm10,zmm9
  a4a680:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a4a687:	02 
  a4a688:	62 f1 7c 48 10 9f b0 	vmovups zmm3,ZMMWORD PTR [rdi+0x4b0]
  a4a68f:	04 00 00 
  a4a692:	c5 f8 10 87 10 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x510]
  a4a699:	00 
  a4a69a:	c4 e3 79 21 87 14 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x514],0x10
  a4a6a1:	00 00 10 
  a4a6a4:	c4 e2 79 18 8f 18 05 	vbroadcastss xmm1,DWORD PTR [rdi+0x518]
  a4a6ab:	00 00 
  a4a6ad:	c5 fc 10 97 f0 04 00 	vmovups ymm2,YMMWORD PTR [rdi+0x4f0]
  a4a6b4:	00 
  a4a6b5:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4a6bb:	c4 e3 79 21 87 1c 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x51c],0x30
  a4a6c2:	00 00 30 
  a4a6c5:	c5 fb 10 8f 20 05 00 	vmovsd xmm1,QWORD PTR [rdi+0x520]
  a4a6cc:	00 
  a4a6cd:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a4a6d3:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a4a6da:	62 e2 fd c9 88 e8    	vexpandpd zmm21{k1}{z},zmm0
  a4a6e0:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a4a6e6:	62 e1 7c 48 28 c3    	vmovaps zmm16,zmm3
  a4a6ec:	62 b2 2d 48 7f c5    	vpermt2ps zmm0,zmm10,zmm21
  a4a6f2:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a4a6f9:	fe 
  a4a6fa:	62 f1 7c 48 10 9f d0 	vmovups zmm3,ZMMWORD PTR [rdi+0x2d0]
  a4a701:	02 00 00 
  a4a704:	c5 f8 10 87 30 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x330]
  a4a70b:	00 
  a4a70c:	c4 e3 79 21 87 34 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x334],0x10
  a4a713:	00 00 10 
  a4a716:	c4 e2 79 18 8f 38 03 	vbroadcastss xmm1,DWORD PTR [rdi+0x338]
  a4a71d:	00 00 
  a4a71f:	c5 fc 10 97 10 03 00 	vmovups ymm2,YMMWORD PTR [rdi+0x310]
  a4a726:	00 
  a4a727:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4a72d:	c4 e3 79 21 87 3c 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x33c],0x30
  a4a734:	00 00 30 
  a4a737:	c5 fb 10 8f 40 03 00 	vmovsd xmm1,QWORD PTR [rdi+0x340]
  a4a73e:	00 
  a4a73f:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a4a745:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a4a74c:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4a752:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a4a758:	62 e1 7c 48 28 f3    	vmovaps zmm22,zmm3
  a4a75e:	62 f2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm0
  a4a764:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a4a76b:	03 
  a4a76c:	62 f1 7c 48 10 67 0f 	vmovups zmm4,ZMMWORD PTR [rdi+0x3c0]
  a4a773:	c5 f8 10 8f 20 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x420]
  a4a77a:	00 
  a4a77b:	c4 e3 71 21 8f 24 04 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x424],0x10
  a4a782:	00 00 10 
  a4a785:	c4 e2 79 18 97 28 04 	vbroadcastss xmm2,DWORD PTR [rdi+0x428]
  a4a78c:	00 00 
  a4a78e:	c5 fc 10 9f 00 04 00 	vmovups ymm3,YMMWORD PTR [rdi+0x400]
  a4a795:	00 
  a4a796:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a4a79c:	c4 e3 71 21 8f 2c 04 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x42c],0x30
  a4a7a3:	00 00 30 
  a4a7a6:	c5 fb 10 97 30 04 00 	vmovsd xmm2,QWORD PTR [rdi+0x430]
  a4a7ad:	00 
  a4a7ae:	c4 e3 75 18 ca 01    	vinsertf128 ymm1,ymm1,xmm2,0x1
  a4a7b4:	62 f3 e5 48 1a c9 01 	vinsertf64x4 zmm1,zmm3,ymm1,0x1
  a4a7bb:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a4a7c1:	62 f1 7c 48 28 d4    	vmovaps zmm2,zmm4
  a4a7c7:	62 e1 7c 48 28 d4    	vmovaps zmm18,zmm4
  a4a7cd:	62 f2 2d 48 7f d1    	vpermt2ps zmm2,zmm10,zmm1
  a4a7d3:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm2
  a4a7da:	05 
  a4a7db:	62 f1 7c 48 10 af 48 	vmovups zmm5,ZMMWORD PTR [rdi+0x348]
  a4a7e2:	03 00 00 
  a4a7e5:	c5 f8 10 97 a8 03 00 	vmovups xmm2,XMMWORD PTR [rdi+0x3a8]
  a4a7ec:	00 
  a4a7ed:	c4 e3 69 21 97 ac 03 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x3ac],0x10
  a4a7f4:	00 00 10 
  a4a7f7:	c4 e2 79 18 9f b0 03 	vbroadcastss xmm3,DWORD PTR [rdi+0x3b0]
  a4a7fe:	00 00 
  a4a800:	c5 fc 10 a7 88 03 00 	vmovups ymm4,YMMWORD PTR [rdi+0x388]
  a4a807:	00 
  a4a808:	c4 e3 61 0c d2 03    	vblendps xmm2,xmm3,xmm2,0x3
  a4a80e:	c4 e3 69 21 97 b4 03 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x3b4],0x30
  a4a815:	00 00 30 
  a4a818:	c5 fb 10 9f b8 03 00 	vmovsd xmm3,QWORD PTR [rdi+0x3b8]
  a4a81f:	00 
  a4a820:	c4 e3 6d 18 d3 01    	vinsertf128 ymm2,ymm2,xmm3,0x1
  a4a826:	62 f3 dd 48 1a d2 01 	vinsertf64x4 zmm2,zmm4,ymm2,0x1
  a4a82d:	62 62 fd c9 88 ca    	vexpandpd zmm25{k1}{z},zmm2
  a4a833:	62 71 7c 48 28 fd    	vmovaps zmm15,zmm5
  a4a839:	62 61 7c 48 28 c5    	vmovaps zmm24,zmm5
  a4a83f:	62 12 2d 48 7f f9    	vpermt2ps zmm15,zmm10,zmm25
  a4a845:	c5 f8 10 97 98 04 00 	vmovups xmm2,XMMWORD PTR [rdi+0x498]
  a4a84c:	00 
  a4a84d:	c5 fc 10 9f 78 04 00 	vmovups ymm3,YMMWORD PTR [rdi+0x478]
  a4a854:	00 
  a4a855:	c4 e3 69 21 97 9c 04 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x49c],0x10
  a4a85c:	00 00 10 
  a4a85f:	c4 e2 79 18 a7 a0 04 	vbroadcastss xmm4,DWORD PTR [rdi+0x4a0]
  a4a866:	00 00 
  a4a868:	c4 e3 59 0c d2 03    	vblendps xmm2,xmm4,xmm2,0x3
  a4a86e:	c4 e3 69 21 97 a4 04 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x4a4],0x30
  a4a875:	00 00 30 
  a4a878:	c5 fb 10 a7 a8 04 00 	vmovsd xmm4,QWORD PTR [rdi+0x4a8]
  a4a87f:	00 
  a4a880:	c4 e3 6d 18 d4 01    	vinsertf128 ymm2,ymm2,xmm4,0x1
  a4a886:	62 f3 e5 48 1a da 01 	vinsertf64x4 zmm3,zmm3,ymm2,0x1
  a4a88d:	c5 f8 10 97 b8 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x2b8]
  a4a894:	00 
  a4a895:	c5 fc 10 a7 98 02 00 	vmovups ymm4,YMMWORD PTR [rdi+0x298]
  a4a89c:	00 
  a4a89d:	c4 e3 69 21 97 bc 02 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x2bc],0x10
  a4a8a4:	00 00 10 
  a4a8a7:	c4 e2 79 18 af c0 02 	vbroadcastss xmm5,DWORD PTR [rdi+0x2c0]
  a4a8ae:	00 00 
  a4a8b0:	c4 e3 51 0c d2 03    	vblendps xmm2,xmm5,xmm2,0x3
  a4a8b6:	c4 e3 69 21 97 c4 02 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x2c4],0x30
  a4a8bd:	00 00 30 
  a4a8c0:	c5 fb 10 af c8 02 00 	vmovsd xmm5,QWORD PTR [rdi+0x2c8]
  a4a8c7:	00 
  a4a8c8:	c4 e3 6d 18 d5 01    	vinsertf128 ymm2,ymm2,xmm5,0x1
  a4a8ce:	62 f3 dd 48 1a ea 01 	vinsertf64x4 zmm5,zmm4,ymm2,0x1
  a4a8d5:	c5 f8 10 97 88 05 00 	vmovups xmm2,XMMWORD PTR [rdi+0x588]
  a4a8dc:	00 
  a4a8dd:	c5 fc 10 a7 68 05 00 	vmovups ymm4,YMMWORD PTR [rdi+0x568]
  a4a8e4:	00 
  a4a8e5:	c4 e3 69 21 97 8c 05 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x58c],0x10
  a4a8ec:	00 00 10 
  a4a8ef:	c4 e2 79 18 b7 90 05 	vbroadcastss xmm6,DWORD PTR [rdi+0x590]
  a4a8f6:	00 00 
  a4a8f8:	c4 e3 49 0c d2 03    	vblendps xmm2,xmm6,xmm2,0x3
  a4a8fe:	c4 e3 69 21 97 94 05 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x594],0x30
  a4a905:	00 00 30 
  a4a908:	c5 fb 10 b7 98 05 00 	vmovsd xmm6,QWORD PTR [rdi+0x598]
  a4a90f:	00 
  a4a910:	c4 e3 6d 18 d6 01    	vinsertf128 ymm2,ymm2,xmm6,0x1
  a4a916:	62 f3 dd 48 1a d2 01 	vinsertf64x4 zmm2,zmm4,ymm2,0x1
  a4a91d:	c5 f8 10 a7 c8 01 00 	vmovups xmm4,XMMWORD PTR [rdi+0x1c8]
  a4a924:	00 
  a4a925:	c5 fc 10 b7 a8 01 00 	vmovups ymm6,YMMWORD PTR [rdi+0x1a8]
  a4a92c:	00 
  a4a92d:	c4 e3 59 21 a7 cc 01 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x1cc],0x10
  a4a934:	00 00 10 
  a4a937:	c4 e2 79 18 bf d0 01 	vbroadcastss xmm7,DWORD PTR [rdi+0x1d0]
  a4a93e:	00 00 
  a4a940:	c4 e3 41 0c e4 03    	vblendps xmm4,xmm7,xmm4,0x3
  a4a946:	c4 e3 59 21 a7 d4 01 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x1d4],0x30
  a4a94d:	00 00 30 
  a4a950:	c5 fb 10 bf d8 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x1d8]
  a4a957:	00 
  a4a958:	c4 e3 5d 18 e7 01    	vinsertf128 ymm4,ymm4,xmm7,0x1
  a4a95e:	62 f3 cd 48 1a e4 01 	vinsertf64x4 zmm4,zmm6,ymm4,0x1
  a4a965:	c5 f8 10 b7 78 06 00 	vmovups xmm6,XMMWORD PTR [rdi+0x678]
  a4a96c:	00 
  a4a96d:	c5 fc 10 bf 58 06 00 	vmovups ymm7,YMMWORD PTR [rdi+0x658]
  a4a974:	00 
  a4a975:	c4 e3 49 21 b7 7c 06 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x67c],0x10
  a4a97c:	00 00 10 
  a4a97f:	c4 62 79 18 87 80 06 	vbroadcastss xmm8,DWORD PTR [rdi+0x680]
  a4a986:	00 00 
  a4a988:	c4 e3 39 0c f6 03    	vblendps xmm6,xmm8,xmm6,0x3
  a4a98e:	c4 e3 49 21 b7 84 06 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x684],0x30
  a4a995:	00 00 30 
  a4a998:	c5 7b 10 87 88 06 00 	vmovsd xmm8,QWORD PTR [rdi+0x688]
  a4a99f:	00 
  a4a9a0:	c4 c3 4d 18 f0 01    	vinsertf128 ymm6,ymm6,xmm8,0x1
  a4a9a6:	c5 78 10 87 d8 00 00 	vmovups xmm8,XMMWORD PTR [rdi+0xd8]
  a4a9ad:	00 
  a4a9ae:	c4 63 39 21 87 dc 00 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0xdc],0x10
  a4a9b5:	00 00 10 
  a4a9b8:	62 f3 c5 48 1a fe 01 	vinsertf64x4 zmm7,zmm7,ymm6,0x1
  a4a9bf:	c4 e2 79 18 b7 e0 00 	vbroadcastss xmm6,DWORD PTR [rdi+0xe0]
  a4a9c6:	00 00 
  a4a9c8:	c4 c3 49 0c f0 03    	vblendps xmm6,xmm6,xmm8,0x3
  a4a9ce:	c4 e3 49 21 b7 e4 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0xe4],0x30
  a4a9d5:	00 00 30 
  a4a9d8:	c5 7b 10 87 e8 00 00 	vmovsd xmm8,QWORD PTR [rdi+0xe8]
  a4a9df:	00 
  a4a9e0:	c4 c3 4d 18 f0 01    	vinsertf128 ymm6,ymm6,xmm8,0x1
  a4a9e6:	c5 7c 10 87 b8 00 00 	vmovups ymm8,YMMWORD PTR [rdi+0xb8]
  a4a9ed:	00 
  a4a9ee:	62 f3 bd 48 1a f6 01 	vinsertf64x4 zmm6,zmm8,ymm6,0x1
  a4a9f5:	62 61 7c 48 28 35 c1 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff647dc1]        # 927c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fc70>
  a4a9fc:	7d 64 ff 
  a4a9ff:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  a4aa05:	62 e2 0d 40 7f f8    	vpermt2ps zmm23,zmm30,zmm0
  a4aa0b:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm23
  a4aa12:	0b 
  a4aa13:	62 e1 7c 48 10 b7 38 	vmovups zmm22,ZMMWORD PTR [rdi+0x438]
  a4aa1a:	04 00 00 
  a4aa1d:	62 f2 fd c9 88 c3    	vexpandpd zmm0{k1}{z},zmm3
  a4aa23:	62 e2 0d 40 7f d1    	vpermt2ps zmm18,zmm30,zmm1
  a4aa29:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm18
  a4aa30:	0c 
  a4aa31:	62 b1 7c 48 28 ce    	vmovaps zmm1,zmm22
  a4aa37:	62 f2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm0
  a4aa3d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a4aa44:	04 
  a4aa45:	62 32 0d 40 7f e3    	vpermt2ps zmm12,zmm30,zmm19
  a4aa4b:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm12
  a4aa52:	08 
  a4aa53:	62 f1 7c 48 10 9f 58 	vmovups zmm3,ZMMWORD PTR [rdi+0x258]
  a4aa5a:	02 00 00 
  a4aa5d:	62 f2 fd c9 88 cd    	vexpandpd zmm1{k1}{z},zmm5
  a4aa63:	62 52 0d 40 7f eb    	vpermt2ps zmm13,zmm30,zmm11
  a4aa69:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm13
  a4aa70:	01 
  a4aa71:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a4aa77:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a4aa7d:	62 62 2d 48 7f d1    	vpermt2ps zmm26,zmm10,zmm1
  a4aa83:	62 52 0d 40 7f f1    	vpermt2ps zmm14,zmm30,zmm9
  a4aa89:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm14
  a4aa90:	0e 
  a4aa91:	62 71 7c 48 10 8f 18 	vmovups zmm9,ZMMWORD PTR [rdi+0x618]
  a4aa98:	06 00 00 
  a4aa9b:	62 f2 fd c9 88 df    	vexpandpd zmm3{k1}{z},zmm7
  a4aaa1:	62 a2 0d 40 7f c5    	vpermt2ps zmm16,zmm30,zmm21
  a4aaa7:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm16
  a4aaae:	0f 
  a4aaaf:	62 41 7c 48 28 d9    	vmovaps zmm27,zmm9
  a4aab5:	62 62 2d 48 7f db    	vpermt2ps zmm27,zmm10,zmm3
  a4aabb:	62 72 0d 40 7f cb    	vpermt2ps zmm9,zmm30,zmm3
  a4aac1:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm9
  a4aac8:	09 
  a4aac9:	62 f1 7c 48 10 9f 28 	vmovups zmm3,ZMMWORD PTR [rdi+0x528]
  a4aad0:	05 00 00 
  a4aad3:	62 f2 fd c9 88 d2    	vexpandpd zmm2{k1}{z},zmm2
  a4aad9:	62 61 7c 48 28 e3    	vmovaps zmm28,zmm3
  a4aadf:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a4aae5:	62 62 2d 48 7f e2    	vpermt2ps zmm28,zmm10,zmm2
  a4aaeb:	62 f2 fd c9 88 dc    	vexpandpd zmm3{k1}{z},zmm4
  a4aaf1:	62 f1 7c 48 10 a7 68 	vmovups zmm4,ZMMWORD PTR [rdi+0x168]
  a4aaf8:	01 00 00 
  a4aafb:	62 61 7c 48 28 ec    	vmovaps zmm29,zmm4
  a4ab01:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  a4ab07:	62 62 2d 48 7f eb    	vpermt2ps zmm29,zmm10,zmm3
  a4ab0d:	62 f2 fd c9 88 e6    	vexpandpd zmm4{k1}{z},zmm6
  a4ab13:	62 f1 7c 48 10 b7 78 	vmovups zmm6,ZMMWORD PTR [rdi+0x78]
  a4ab1a:	00 00 00 
  a4ab1d:	62 72 4d 48 77 d4    	vpermi2ps zmm10,zmm6,zmm4
  a4ab23:	62 f2 0d 40 7f f4    	vpermt2ps zmm6,zmm30,zmm4
  a4ab29:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm6
  a4ab30:	18 
  a4ab31:	62 e2 0d 40 7f f0    	vpermt2ps zmm22,zmm30,zmm0
  a4ab37:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm22
  a4ab3e:	1b 
  a4ab3f:	62 f2 0d 40 7f e9    	vpermt2ps zmm5,zmm30,zmm1
  a4ab45:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm5
  a4ab4c:	0a 
  a4ab4d:	62 f2 0d 40 7f fa    	vpermt2ps zmm7,zmm30,zmm2
  a4ab53:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm7
  a4ab5a:	1a 
  a4ab5b:	62 72 0d 40 7f db    	vpermt2ps zmm11,zmm30,zmm3
  a4ab61:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm11
  a4ab68:	07 
  a4ab69:	62 d1 1c 48 5c d5    	vsubps zmm2,zmm12,zmm13
  a4ab6f:	62 a2 0d 40 7f e1    	vpermt2ps zmm20,zmm30,zmm17
  a4ab75:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm20
  a4ab7c:	10 
  a4ab7d:	62 b1 0c 48 5c d8    	vsubps zmm3,zmm14,zmm16
  a4ab83:	62 02 0d 40 7f c1    	vpermt2ps zmm24,zmm30,zmm25
  a4ab89:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm24
  a4ab90:	11 
  a4ab91:	62 72 7d 48 18 05 f5 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff62a8f5]        # 75490 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2940>
  a4ab98:	a8 62 ff 
  a4ab9b:	62 41 64 48 59 c8    	vmulps zmm25,zmm3,zmm8
  a4aba1:	62 e2 7d 48 18 1d b5 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff62aab5]        # 75660 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b10>
  a4aba8:	aa 62 ff 
  a4abab:	62 22 6d 48 b8 cb    	vfmadd231ps zmm25,zmm2,zmm19
  a4abb1:	62 f2 7d 48 18 25 2d 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff62aa2d]        # 755e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a98>
  a4abb8:	aa 62 ff 
  a4abbb:	62 61 6c 48 59 fc    	vmulps zmm31,zmm2,zmm4
  a4abc1:	62 22 65 48 bc fb    	vfnmadd231ps zmm31,zmm3,zmm19
  a4abc7:	62 51 6c 48 59 e8    	vmulps zmm13,zmm2,zmm8
  a4abcd:	62 72 5d 48 bc eb    	vfnmadd231ps zmm13,zmm4,zmm3
  a4abd3:	62 b1 44 40 5c d2    	vsubps zmm2,zmm23,zmm18
  a4abd9:	62 62 6d 48 b8 cc    	vfmadd231ps zmm25,zmm2,zmm4
  a4abdf:	62 42 6d 48 b8 f8    	vfmadd231ps zmm31,zmm2,zmm8
  a4abe5:	62 72 65 40 bc ea    	vfnmadd231ps zmm13,zmm19,zmm2
  a4abeb:	62 f1 4c 40 5c d5    	vsubps zmm2,zmm22,zmm5
  a4abf1:	62 d1 44 48 5c db    	vsubps zmm3,zmm7,zmm11
  a4abf7:	62 c1 64 48 59 c0    	vmulps zmm16,zmm3,zmm8
  a4abfd:	62 a2 6d 48 b8 c3    	vfmadd231ps zmm16,zmm2,zmm19
  a4ac03:	62 71 6c 48 59 e4    	vmulps zmm12,zmm2,zmm4
  a4ac09:	62 32 65 48 bc e3    	vfnmadd231ps zmm12,zmm3,zmm19
  a4ac0f:	62 51 6c 48 59 d8    	vmulps zmm11,zmm2,zmm8
  a4ac15:	62 72 5d 48 bc db    	vfnmadd231ps zmm11,zmm4,zmm3
  a4ac1b:	62 f1 34 48 5c d6    	vsubps zmm2,zmm9,zmm6
  a4ac21:	62 e2 6d 48 b8 c4    	vfmadd231ps zmm16,zmm2,zmm4
  a4ac27:	62 52 6d 48 b8 e0    	vfmadd231ps zmm12,zmm2,zmm8
  a4ac2d:	62 72 65 40 bc da    	vfnmadd231ps zmm11,zmm19,zmm2
  a4ac33:	62 e1 7c 48 10 3c 24 	vmovups zmm23,ZMMWORD PTR [rsp]
  a4ac3a:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0x180]
  a4ac41:	06 
  a4ac42:	62 b1 44 40 5c d4    	vsubps zmm2,zmm23,zmm20
  a4ac48:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0x80]
  a4ac4f:	02 
  a4ac50:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp-0x80]
  a4ac57:	fe 
  a4ac58:	62 b1 3c 40 5c da    	vsubps zmm3,zmm24,zmm18
  a4ac5e:	62 c1 64 48 59 f0    	vmulps zmm22,zmm3,zmm8
  a4ac64:	62 a2 6d 48 b8 f3    	vfmadd231ps zmm22,zmm2,zmm19
  a4ac6a:	62 61 6c 48 59 f4    	vmulps zmm30,zmm2,zmm4
  a4ac70:	62 22 65 48 bc f3    	vfnmadd231ps zmm30,zmm3,zmm19
  a4ac76:	62 c1 6c 48 59 c8    	vmulps zmm17,zmm2,zmm8
  a4ac7c:	62 e2 5d 48 bc cb    	vfnmadd231ps zmm17,zmm4,zmm3
  a4ac82:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0xc0]
  a4ac89:	03 
  a4ac8a:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x140]
  a4ac91:	05 
  a4ac92:	62 f1 44 48 5c dd    	vsubps zmm3,zmm7,zmm5
  a4ac98:	62 e2 65 48 b8 f4    	vfmadd231ps zmm22,zmm3,zmm4
  a4ac9e:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x100]
  a4aca5:	04 
  a4aca6:	62 91 4c 48 5c d2    	vsubps zmm2,zmm6,zmm26
  a4acac:	62 91 1c 40 5c c5    	vsubps zmm0,zmm28,zmm29
  a4acb2:	62 c1 7c 48 59 e8    	vmulps zmm21,zmm0,zmm8
  a4acb8:	62 a2 6d 48 b8 eb    	vfmadd231ps zmm21,zmm2,zmm19
  a4acbe:	62 d1 24 40 5c ca    	vsubps zmm1,zmm27,zmm10
  a4acc4:	62 e2 75 48 b8 ec    	vfmadd231ps zmm21,zmm1,zmm4
  a4acca:	62 71 6c 48 59 f4    	vmulps zmm14,zmm2,zmm4
  a4acd0:	62 51 6c 48 59 c8    	vmulps zmm9,zmm2,zmm8
  a4acd6:	62 72 7d 48 bc cc    	vfnmadd231ps zmm9,zmm0,zmm4
  a4acdc:	62 32 7d 48 bc f3    	vfnmadd231ps zmm14,zmm0,zmm19
  a4ace2:	62 42 65 48 b8 f0    	vfmadd231ps zmm30,zmm3,zmm8
  a4ace8:	62 52 75 48 b8 f0    	vfmadd231ps zmm14,zmm1,zmm8
  a4acee:	62 e2 65 40 bc cb    	vfnmadd231ps zmm17,zmm19,zmm3
  a4acf4:	62 32 75 48 bc cb    	vfnmadd231ps zmm9,zmm1,zmm19
  a4acfa:	62 b1 44 40 58 dc    	vaddps zmm3,zmm23,zmm20
  a4ad00:	62 b1 3c 40 58 e2    	vaddps zmm4,zmm24,zmm18
  a4ad06:	62 f1 44 48 58 ed    	vaddps zmm5,zmm7,zmm5
  a4ad0c:	62 81 4c 48 58 da    	vaddps zmm19,zmm6,zmm26
  a4ad12:	62 01 1c 40 58 d5    	vaddps zmm26,zmm28,zmm29
  a4ad18:	62 41 24 40 58 da    	vaddps zmm27,zmm27,zmm10
  a4ad1e:	62 f2 7d 48 18 15 cc 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff62a8cc]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a4ad25:	a8 62 ff 
  a4ad28:	62 61 7c 48 28 e2    	vmovaps zmm28,zmm2
  a4ad2e:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp-0x40]
  a4ad35:	ff 
  a4ad36:	62 62 65 48 a8 e6    	vfmadd213ps zmm28,zmm3,zmm6
  a4ad3c:	62 72 7d 48 18 15 92 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff62a892]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a4ad43:	a8 62 ff 
  a4ad46:	62 41 7c 48 28 ea    	vmovaps zmm29,zmm10
  a4ad4c:	62 62 65 48 ac ee    	vfnmadd213ps zmm29,zmm3,zmm6
  a4ad52:	62 f1 4c 48 58 c3    	vaddps zmm0,zmm6,zmm3
  a4ad58:	62 f2 7d 48 18 0d 6a 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff62a56a]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a4ad5f:	a5 62 ff 
  a4ad62:	62 f2 75 48 bc f3    	vfnmadd231ps zmm6,zmm1,zmm3
  a4ad68:	62 f1 7c 48 58 c4    	vaddps zmm0,zmm0,zmm4
  a4ad6e:	62 62 5d 48 bc e1    	vfnmadd231ps zmm28,zmm4,zmm1
  a4ad74:	62 62 5d 48 b8 ea    	vfmadd231ps zmm29,zmm4,zmm2
  a4ad7a:	62 f2 2d 48 bc f4    	vfnmadd231ps zmm6,zmm10,zmm4
  a4ad80:	62 f1 7c 48 58 fd    	vaddps zmm7,zmm0,zmm5
  a4ad86:	62 42 55 48 bc e2    	vfnmadd231ps zmm28,zmm5,zmm10
  a4ad8c:	62 62 55 48 bc e9    	vfnmadd231ps zmm29,zmm5,zmm1
  a4ad92:	62 f2 6d 48 b8 f5    	vfmadd231ps zmm6,zmm2,zmm5
  a4ad98:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a4ad9e:	62 d2 65 40 a8 df    	vfmadd213ps zmm3,zmm19,zmm15
  a4ada4:	62 d1 7c 48 28 e2    	vmovaps zmm4,zmm10
  a4adaa:	62 d2 65 40 ac e7    	vfnmadd213ps zmm4,zmm19,zmm15
  a4adb0:	62 b1 04 48 58 eb    	vaddps zmm5,zmm15,zmm19
  a4adb6:	62 32 75 48 bc fb    	vfnmadd231ps zmm15,zmm1,zmm19
  a4adbc:	62 91 54 48 58 ea    	vaddps zmm5,zmm5,zmm26
  a4adc2:	62 f2 2d 40 bc d9    	vfnmadd231ps zmm3,zmm26,zmm1
  a4adc8:	62 f2 2d 40 b8 e2    	vfmadd231ps zmm4,zmm26,zmm2
  a4adce:	62 12 2d 48 bc fa    	vfnmadd231ps zmm15,zmm10,zmm26
  a4add4:	62 91 54 48 58 eb    	vaddps zmm5,zmm5,zmm27
  a4adda:	62 d2 25 40 bc da    	vfnmadd231ps zmm3,zmm27,zmm10
  a4ade0:	62 f2 25 40 bc e1    	vfnmadd231ps zmm4,zmm27,zmm1
  a4ade6:	62 12 6d 48 b8 fb    	vfmadd231ps zmm15,zmm2,zmm27
  a4adec:	62 41 4c 48 5c dd    	vsubps zmm27,zmm6,zmm13
  a4adf2:	62 51 4c 48 58 ed    	vaddps zmm13,zmm6,zmm13
  a4adf8:	62 c1 04 48 5c d3    	vsubps zmm18,zmm15,zmm11
  a4adfe:	62 51 04 48 58 c3    	vaddps zmm8,zmm15,zmm11
  a4ae04:	62 11 14 40 5c ff    	vsubps zmm15,zmm29,zmm31
  a4ae0a:	62 01 14 40 58 ef    	vaddps zmm29,zmm29,zmm31
  a4ae10:	62 d1 5c 48 5c c4    	vsubps zmm0,zmm4,zmm12
  a4ae16:	62 51 5c 48 58 e4    	vaddps zmm12,zmm4,zmm12
  a4ae1c:	62 91 1c 40 58 e1    	vaddps zmm4,zmm28,zmm25
  a4ae22:	62 01 1c 40 5c c9    	vsubps zmm25,zmm28,zmm25
  a4ae28:	62 21 64 48 58 d0    	vaddps zmm26,zmm3,zmm16
  a4ae2e:	62 b1 64 48 5c d8    	vsubps zmm3,zmm3,zmm16
  a4ae34:	62 81 5c 48 58 da    	vaddps zmm19,zmm4,zmm26
  a4ae3a:	62 91 5c 48 5c e2    	vsubps zmm4,zmm4,zmm26
  a4ae40:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm4
  a4ae47:	03 
  a4ae48:	62 d1 14 48 58 e0    	vaddps zmm4,zmm13,zmm8
  a4ae4e:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a4ae55:	62 d1 14 48 5c e0    	vsubps zmm4,zmm13,zmm8
  a4ae5b:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm4
  a4ae62:	19 
  a4ae63:	62 21 24 40 58 fa    	vaddps zmm31,zmm27,zmm18
  a4ae69:	62 b1 24 40 5c e2    	vsubps zmm4,zmm27,zmm18
  a4ae6f:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm4
  a4ae76:	02 
  a4ae77:	62 f1 34 40 58 e3    	vaddps zmm4,zmm25,zmm3
  a4ae7d:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm4
  a4ae84:	04 
  a4ae85:	62 f1 34 40 5c db    	vsubps zmm3,zmm25,zmm3
  a4ae8b:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm3
  a4ae92:	0d 
  a4ae93:	62 41 14 40 58 cc    	vaddps zmm25,zmm29,zmm12
  a4ae99:	62 d1 14 40 5c dc    	vsubps zmm3,zmm29,zmm12
  a4ae9f:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a4aea6:	ff 
  a4aea7:	62 71 04 48 58 d8    	vaddps zmm11,zmm15,zmm0
  a4aead:	62 f1 04 48 5c c0    	vsubps zmm0,zmm15,zmm0
  a4aeb3:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a4aeba:	fe 
  a4aebb:	62 61 44 48 58 c5    	vaddps zmm24,zmm7,zmm5
  a4aec1:	62 f1 44 48 5c c5    	vsubps zmm0,zmm7,zmm5
  a4aec7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a4aece:	12 
  a4aecf:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x200]
  a4aed6:	08 
  a4aed7:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x40]
  a4aede:	01 
  a4aedf:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x380]
  a4aee6:	0e 
  a4aee7:	62 f1 64 48 58 5c 24 	vaddps zmm3,zmm3,ZMMWORD PTR [rsp+0x3c0]
  a4aeee:	0f 
  a4aeef:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x2c0]
  a4aef6:	0b 
  a4aef7:	62 f1 5c 48 58 6c 24 	vaddps zmm5,zmm4,ZMMWORD PTR [rsp+0x300]
  a4aefe:	0c 
  a4aeff:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x6c0]
  a4af06:	1b 
  a4af07:	62 f1 5c 48 58 7c 24 	vaddps zmm7,zmm4,ZMMWORD PTR [rsp+0x280]
  a4af0e:	0a 
  a4af0f:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x680]
  a4af16:	1a 
  a4af17:	62 71 5c 48 58 44 24 	vaddps zmm8,zmm4,ZMMWORD PTR [rsp+0x1c0]
  a4af1e:	07 
  a4af1f:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x240]
  a4af26:	09 
  a4af27:	62 71 5c 48 58 64 24 	vaddps zmm12,zmm4,ZMMWORD PTR [rsp+0x600]
  a4af2e:	18 
  a4af2f:	62 71 7c 48 28 ea    	vmovaps zmm13,zmm2
  a4af35:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x400]
  a4af3c:	10 
  a4af3d:	62 32 7d 48 a8 ea    	vfmadd213ps zmm13,zmm0,zmm18
  a4af43:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a4af49:	62 32 7d 48 ac fa    	vfnmadd213ps zmm15,zmm0,zmm18
  a4af4f:	62 e1 6c 40 58 c0    	vaddps zmm16,zmm18,zmm0
  a4af55:	62 e2 75 48 bc d0    	vfnmadd231ps zmm18,zmm1,zmm0
  a4af5b:	62 f1 7c 40 58 c3    	vaddps zmm0,zmm16,zmm3
  a4af61:	62 72 65 48 bc e9    	vfnmadd231ps zmm13,zmm3,zmm1
  a4af67:	62 72 65 48 b8 fa    	vfmadd231ps zmm15,zmm3,zmm2
  a4af6d:	62 e2 2d 48 bc d3    	vfnmadd231ps zmm18,zmm10,zmm3
  a4af73:	62 a1 7c 48 28 e2    	vmovaps zmm20,zmm18
  a4af79:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a4af7f:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x440]
  a4af86:	11 
  a4af87:	62 f2 45 48 a8 dc    	vfmadd213ps zmm3,zmm7,zmm4
  a4af8d:	62 c1 7c 48 28 c2    	vmovaps zmm16,zmm10
  a4af93:	62 e2 45 48 ac c4    	vfnmadd213ps zmm16,zmm7,zmm4
  a4af99:	62 e1 5c 48 58 d7    	vaddps zmm18,zmm4,zmm7
  a4af9f:	62 f2 45 48 bc e1    	vfnmadd231ps zmm4,zmm7,zmm1
  a4afa5:	62 52 55 48 bc ea    	vfnmadd231ps zmm13,zmm5,zmm10
  a4afab:	62 f2 3d 48 bc d9    	vfnmadd231ps zmm3,zmm8,zmm1
  a4afb1:	62 d2 1d 48 bc da    	vfnmadd231ps zmm3,zmm12,zmm10
  a4afb7:	62 d2 3d 48 bc e2    	vfnmadd231ps zmm4,zmm8,zmm10
  a4afbd:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a4afc3:	62 d1 6c 40 58 f8    	vaddps zmm7,zmm18,zmm8
  a4afc9:	62 e2 3d 48 b8 c2    	vfmadd231ps zmm16,zmm8,zmm2
  a4afcf:	62 72 55 48 bc f9    	vfnmadd231ps zmm15,zmm5,zmm1
  a4afd5:	62 e2 1d 48 bc c1    	vfnmadd231ps zmm16,zmm12,zmm1
  a4afdb:	62 f1 7c 48 28 0d db 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff67bfdb]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a4afe2:	bf 67 ff 
  a4afe5:	62 e1 7c 48 58 fd    	vaddps zmm23,zmm0,zmm5
  a4afeb:	62 e2 6d 48 b8 e5    	vfmadd231ps zmm20,zmm2,zmm5
  a4aff1:	62 91 7c 48 28 c0    	vmovaps zmm0,zmm24
  a4aff7:	62 b2 75 48 7f c3    	vpermt2ps zmm0,zmm1,zmm19
  a4affd:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a4b004:	06 
  a4b005:	62 f2 1d 48 b8 f2    	vfmadd231ps zmm6,zmm12,zmm2
  a4b00b:	62 41 7c 48 28 d3    	vmovaps zmm26,zmm11
  a4b011:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a4b017:	62 02 75 48 7f d7    	vpermt2ps zmm26,zmm1,zmm31
  a4b01d:	62 d1 44 48 58 ec    	vaddps zmm5,zmm7,zmm12
  a4b023:	62 b1 74 40 58 c4    	vaddps zmm0,zmm17,zmm20
  a4b029:	62 b1 5c 40 5c d1    	vsubps zmm2,zmm20,zmm17
  a4b02f:	62 f1 34 48 58 fe    	vaddps zmm7,zmm9,zmm6
  a4b035:	62 d1 4c 48 5c f1    	vsubps zmm6,zmm6,zmm9
  a4b03b:	62 51 0c 40 58 df    	vaddps zmm11,zmm30,zmm15
  a4b041:	62 11 04 48 5c e6    	vsubps zmm12,zmm15,zmm30
  a4b047:	62 31 0c 48 58 f8    	vaddps zmm15,zmm14,zmm16
  a4b04d:	62 51 7c 40 5c ce    	vsubps zmm9,zmm16,zmm14
  a4b053:	62 31 14 48 5c d6    	vsubps zmm10,zmm13,zmm22
  a4b059:	62 51 4c 40 58 ed    	vaddps zmm13,zmm22,zmm13
  a4b05f:	62 a1 64 48 5c c5    	vsubps zmm16,zmm3,zmm21
  a4b065:	62 71 54 40 58 f3    	vaddps zmm14,zmm21,zmm3
  a4b06b:	62 31 2c 48 58 c0    	vaddps zmm8,zmm10,zmm16
  a4b071:	62 b1 2c 48 5c d8    	vsubps zmm3,zmm10,zmm16
  a4b077:	62 e1 6c 48 58 f6    	vaddps zmm22,zmm2,zmm6
  a4b07d:	62 e1 6c 48 5c e6    	vsubps zmm20,zmm2,zmm6
  a4b083:	62 f1 7c 48 58 d7    	vaddps zmm2,zmm0,zmm7
  a4b089:	62 61 7c 48 5c ef    	vsubps zmm29,zmm0,zmm7
  a4b08f:	62 41 14 48 58 de    	vaddps zmm27,zmm13,zmm14
  a4b095:	62 d1 14 48 5c c6    	vsubps zmm0,zmm13,zmm14
  a4b09b:	62 51 1c 48 58 d1    	vaddps zmm10,zmm12,zmm9
  a4b0a1:	62 51 1c 48 5c c9    	vsubps zmm9,zmm12,zmm9
  a4b0a7:	62 c1 24 48 58 c7    	vaddps zmm16,zmm11,zmm15
  a4b0ad:	62 51 24 48 5c df    	vsubps zmm11,zmm11,zmm15
  a4b0b3:	62 61 44 40 58 e5    	vaddps zmm28,zmm23,zmm5
  a4b0b9:	62 e1 44 40 5c cd    	vsubps zmm17,zmm23,zmm5
  a4b0bf:	62 71 7c 48 28 2d b7 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff67beb7]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a4b0c6:	be 67 ff 
  a4b0c9:	62 22 15 48 7f c3    	vpermt2ps zmm24,zmm13,zmm19
  a4b0cf:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm24
  a4b0d6:	05 
  a4b0d7:	62 f1 7c 48 10 2c 24 	vmovups zmm5,ZMMWORD PTR [rsp]
  a4b0de:	62 61 7c 48 28 c5    	vmovaps zmm24,zmm5
  a4b0e4:	62 02 75 48 7f c1    	vpermt2ps zmm24,zmm1,zmm25
  a4b0ea:	62 92 15 48 7f e7    	vpermt2ps zmm4,zmm13,zmm31
  a4b0f0:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm4
  a4b0f7:	08 
  a4b0f8:	62 a1 64 00 57 db    	vxorps xmm19,xmm19,xmm19
  a4b0fe:	62 92 15 48 7f e9    	vpermt2ps zmm5,zmm13,zmm25
  a4b104:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  a4b10b:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0xc0]
  a4b112:	03 
  a4b113:	62 61 7c 48 28 fd    	vmovaps zmm31,zmm5
  a4b119:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x640]
  a4b120:	19 
  a4b121:	62 62 75 48 7f fc    	vpermt2ps zmm31,zmm1,zmm4
  a4b127:	62 f2 15 48 7f ec    	vpermt2ps zmm5,zmm13,zmm4
  a4b12d:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm5
  a4b134:	03 
  a4b135:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x80]
  a4b13c:	02 
  a4b13d:	62 e1 7c 48 28 ed    	vmovaps zmm21,zmm5
  a4b143:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x340]
  a4b14a:	0d 
  a4b14b:	62 e2 75 48 7f ec    	vpermt2ps zmm21,zmm1,zmm4
  a4b151:	62 f2 15 48 7f ec    	vpermt2ps zmm5,zmm13,zmm4
  a4b157:	62 61 7c 48 28 f5    	vmovaps zmm30,zmm5
  a4b15d:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp-0x40]
  a4b164:	ff 
  a4b165:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a4b16b:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x80]
  a4b172:	fe 
  a4b173:	62 e2 75 48 7f d4    	vpermt2ps zmm18,zmm1,zmm4
  a4b179:	62 f2 15 48 7f ec    	vpermt2ps zmm5,zmm13,zmm4
  a4b17f:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm5
  a4b186:	ff 
  a4b187:	62 11 7c 48 28 f4    	vmovaps zmm14,zmm28
  a4b18d:	62 52 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm8
  a4b193:	62 42 15 48 7f e0    	vpermt2ps zmm28,zmm13,zmm8
  a4b199:	62 b1 7c 48 28 f0    	vmovaps zmm6,zmm16
  a4b19f:	62 f2 75 48 7f f2    	vpermt2ps zmm6,zmm1,zmm2
  a4b1a5:	62 e2 15 48 7f c2    	vpermt2ps zmm16,zmm13,zmm2
  a4b1ab:	62 31 7c 48 28 fe    	vmovaps zmm15,zmm22
  a4b1b1:	62 52 75 48 7f fa    	vpermt2ps zmm15,zmm1,zmm10
  a4b1b7:	62 c2 15 48 7f f2    	vpermt2ps zmm22,zmm13,zmm10
  a4b1bd:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm22
  a4b1c4:	02 
  a4b1c5:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a4b1cb:	62 b2 75 48 7f fc    	vpermt2ps zmm7,zmm1,zmm20
  a4b1d1:	62 b2 15 48 7f dc    	vpermt2ps zmm3,zmm13,zmm20
  a4b1d7:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a4b1de:	fe 
  a4b1df:	62 11 7c 48 28 c5    	vmovaps zmm8,zmm29
  a4b1e5:	62 72 75 48 7f c0    	vpermt2ps zmm8,zmm1,zmm0
  a4b1eb:	62 62 15 48 7f e8    	vpermt2ps zmm29,zmm13,zmm0
  a4b1f1:	62 c1 7c 48 28 f9    	vmovaps zmm23,zmm9
  a4b1f7:	62 c2 75 48 7f fb    	vpermt2ps zmm23,zmm1,zmm11
  a4b1fd:	62 52 15 48 7f cb    	vpermt2ps zmm9,zmm13,zmm11
  a4b203:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm9
  a4b20a:	01 
  a4b20b:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x100]
  a4b212:	04 
  a4b213:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a4b219:	62 32 75 48 7f cb    	vpermt2ps zmm9,zmm1,zmm19
  a4b21f:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x480]
  a4b226:	12 
  a4b227:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a4b22d:	62 32 75 48 7f d3    	vpermt2ps zmm10,zmm1,zmm19
  a4b233:	62 11 7c 48 28 db    	vmovaps zmm11,zmm27
  a4b239:	62 32 75 48 7f db    	vpermt2ps zmm11,zmm1,zmm19
  a4b23f:	62 b2 75 40 77 cb    	vpermi2ps zmm1,zmm17,zmm19
  a4b245:	62 b2 15 48 7f d3    	vpermt2ps zmm2,zmm13,zmm19
  a4b24b:	62 b2 15 48 7f db    	vpermt2ps zmm3,zmm13,zmm19
  a4b251:	62 22 15 48 7f db    	vpermt2ps zmm27,zmm13,zmm19
  a4b257:	62 a2 15 48 7f cb    	vpermt2ps zmm17,zmm13,zmm19
  a4b25d:	62 61 7c 48 28 0d 99 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff67bc99]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a4b264:	bc 67 ff 
  a4b267:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x180]
  a4b26e:	06 
  a4b26f:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a4b275:	62 92 35 40 7f ea    	vpermt2ps zmm5,zmm25,zmm26
  a4b27b:	62 f1 7c 48 28 05 bb 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff67bcbb]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a4b282:	bc 67 ff 
  a4b285:	62 92 7d 48 7f e2    	vpermt2ps zmm4,zmm0,zmm26
  a4b28b:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm4
  a4b292:	06 
  a4b293:	62 11 7c 48 28 e0    	vmovaps zmm12,zmm24
  a4b299:	62 52 35 40 7f e1    	vpermt2ps zmm12,zmm25,zmm9
  a4b29f:	62 42 7d 48 7f c1    	vpermt2ps zmm24,zmm0,zmm9
  a4b2a5:	62 81 7c 48 28 df    	vmovaps zmm19,zmm31
  a4b2ab:	62 a2 35 40 7f dd    	vpermt2ps zmm19,zmm25,zmm21
  a4b2b1:	62 22 7d 48 7f fd    	vpermt2ps zmm31,zmm0,zmm21
  a4b2b7:	62 a1 7c 48 28 e2    	vmovaps zmm20,zmm18
  a4b2bd:	62 c2 35 40 7f e2    	vpermt2ps zmm20,zmm25,zmm10
  a4b2c3:	62 c2 7d 48 7f d2    	vpermt2ps zmm18,zmm0,zmm10
  a4b2c9:	62 c1 7c 48 28 ee    	vmovaps zmm21,zmm14
  a4b2cf:	62 e2 35 40 7f ee    	vpermt2ps zmm21,zmm25,zmm6
  a4b2d5:	62 72 7d 48 7f f6    	vpermt2ps zmm14,zmm0,zmm6
  a4b2db:	62 c1 7c 48 28 f7    	vmovaps zmm22,zmm15
  a4b2e1:	62 c2 35 40 7f f3    	vpermt2ps zmm22,zmm25,zmm11
  a4b2e7:	62 52 7d 48 7f fb    	vpermt2ps zmm15,zmm0,zmm11
  a4b2ed:	62 61 7c 48 28 d7    	vmovaps zmm26,zmm7
  a4b2f3:	62 42 35 40 7f d0    	vpermt2ps zmm26,zmm25,zmm8
  a4b2f9:	62 d2 7d 48 7f f8    	vpermt2ps zmm7,zmm0,zmm8
  a4b2ff:	62 31 7c 48 28 c7    	vmovaps zmm8,zmm23
  a4b305:	62 72 35 40 7f c1    	vpermt2ps zmm8,zmm25,zmm1
  a4b30b:	62 e2 7d 48 7f f9    	vpermt2ps zmm23,zmm0,zmm1
  a4b311:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a4b318:	05 
  a4b319:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a4b31f:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x200]
  a4b326:	08 
  a4b327:	62 72 35 40 7f ce    	vpermt2ps zmm9,zmm25,zmm6
  a4b32d:	62 f2 7d 48 7f ce    	vpermt2ps zmm1,zmm0,zmm6
  a4b333:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a4b33a:	05 
  a4b33b:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a4b342:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a4b348:	62 f2 35 40 7f f2    	vpermt2ps zmm6,zmm25,zmm2
  a4b34e:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a4b354:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm6
  a4b35b:	07 
  a4b35c:	62 f2 7d 48 7f ca    	vpermt2ps zmm1,zmm0,zmm2
  a4b362:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a4b369:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a4b370:	03 
  a4b371:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a4b377:	62 92 35 40 7f e6    	vpermt2ps zmm4,zmm25,zmm30
  a4b37d:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm4
  a4b384:	13 
  a4b385:	62 92 7d 48 7f ce    	vpermt2ps zmm1,zmm0,zmm30
  a4b38b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a4b392:	03 
  a4b393:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a4b39a:	ff 
  a4b39b:	62 61 7c 48 28 f1    	vmovaps zmm30,zmm1
  a4b3a1:	62 62 35 40 7f f3    	vpermt2ps zmm30,zmm25,zmm3
  a4b3a7:	62 f2 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm3
  a4b3ad:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a4b3b4:	ff 
  a4b3b5:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a4b3bb:	62 22 35 40 7f e0    	vpermt2ps zmm28,zmm25,zmm16
  a4b3c1:	62 b2 7d 48 7f c8    	vpermt2ps zmm1,zmm0,zmm16
  a4b3c7:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a4b3ce:	09 
  a4b3cf:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a4b3d6:	02 
  a4b3d7:	62 71 7c 48 28 d1    	vmovaps zmm10,zmm1
  a4b3dd:	62 12 35 40 7f d3    	vpermt2ps zmm10,zmm25,zmm27
  a4b3e3:	62 92 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm27
  a4b3e9:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a4b3f0:	02 
  a4b3f1:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a4b3f8:	fe 
  a4b3f9:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a4b3ff:	62 12 35 40 7f ed    	vpermt2ps zmm13,zmm25,zmm29
  a4b405:	62 92 7d 48 7f cd    	vpermt2ps zmm1,zmm0,zmm29
  a4b40b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a4b412:	fe 
  a4b413:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a4b41a:	01 
  a4b41b:	62 22 75 48 77 c9    	vpermi2ps zmm25,zmm1,zmm17
  a4b421:	62 b2 7d 48 7f c9    	vpermt2ps zmm1,zmm0,zmm17
  a4b427:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a4b42e:	01 
  a4b42f:	62 f1 7c 48 28 35 c7 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff67b9c7]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a4b436:	b9 67 ff 
  a4b439:	62 d1 d5 48 14 c4    	vunpcklpd zmm0,zmm5,zmm12
  a4b43f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm0
  a4b446:	1b 
  a4b447:	62 b1 e5 40 14 cc    	vunpcklpd zmm1,zmm19,zmm20
  a4b44d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm1
  a4b454:	1a 
  a4b455:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a4b45b:	62 21 d5 40 14 ee    	vunpcklpd zmm29,zmm21,zmm22
  a4b461:	62 d1 ad 40 14 d0    	vunpcklpd zmm2,zmm26,zmm8
  a4b467:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm2
  a4b46e:	19 
  a4b46f:	62 91 7c 48 28 cd    	vmovaps zmm1,zmm29
  a4b475:	62 f2 4d 48 7f ca    	vpermt2ps zmm1,zmm6,zmm2
  a4b47b:	62 e1 7c 48 10 42 11 	vmovups zmm16,ZMMWORD PTR [rdx+0x440]
  a4b482:	62 e1 7c 48 10 4a 10 	vmovups zmm17,ZMMWORD PTR [rdx+0x400]
  a4b489:	62 b1 74 48 59 d1    	vmulps zmm2,zmm1,zmm17
  a4b48f:	62 b2 7d 48 b8 d0    	vfmadd231ps zmm2,zmm0,zmm16
  a4b495:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm2
  a4b49c:	12 
  a4b49d:	62 b1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm17
  a4b4a3:	62 f2 7d 40 bc c1    	vfnmadd231ps zmm0,zmm16,zmm1
  a4b4a9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a4b4b0:	08 
  a4b4b1:	62 d1 b5 48 15 c3    	vunpckhpd zmm0,zmm9,zmm11
  a4b4b7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm0
  a4b4be:	17 
  a4b4bf:	62 91 dd 48 15 ce    	vunpckhpd zmm1,zmm4,zmm30
  a4b4c5:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm1
  a4b4cc:	16 
  a4b4cd:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a4b4d3:	62 d1 9d 40 15 ca    	vunpckhpd zmm1,zmm28,zmm10
  a4b4d9:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm1
  a4b4e0:	15 
  a4b4e1:	62 91 95 48 15 d1    	vunpckhpd zmm2,zmm13,zmm25
  a4b4e7:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm2
  a4b4ee:	14 
  a4b4ef:	62 f2 4d 48 7f ca    	vpermt2ps zmm1,zmm6,zmm2
  a4b4f5:	62 f1 7c 48 10 52 04 	vmovups zmm2,ZMMWORD PTR [rdx+0x100]
  a4b4fc:	62 f1 7c 48 10 5a 05 	vmovups zmm3,ZMMWORD PTR [rdx+0x140]
  a4b503:	62 61 74 48 59 da    	vmulps zmm27,zmm1,zmm2
  a4b509:	62 62 7d 48 b8 db    	vfmadd231ps zmm27,zmm0,zmm3
  a4b50f:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm27
  a4b516:	11 
  a4b517:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a4b51d:	62 f2 65 48 bc c1    	vfnmadd231ps zmm0,zmm3,zmm1
  a4b523:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a4b52a:	04 
  a4b52b:	62 d1 d5 48 15 cc    	vunpckhpd zmm1,zmm5,zmm12
  a4b531:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm1
  a4b538:	1c 
  a4b539:	62 b1 e5 40 15 d4    	vunpckhpd zmm2,zmm19,zmm20
  a4b53f:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm2
  a4b546:	0b 
  a4b547:	62 a1 d5 40 15 f6    	vunpckhpd zmm22,zmm21,zmm22
  a4b54d:	62 d1 ad 40 15 c0    	vunpckhpd zmm0,zmm26,zmm8
  a4b553:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm0
  a4b55a:	1d 
  a4b55b:	62 71 7c 48 28 1d db 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff67b8db]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a4b562:	b8 67 ff 
  a4b565:	62 f2 25 48 7f ca    	vpermt2ps zmm1,zmm11,zmm2
  a4b56b:	62 b1 7c 48 28 d6    	vmovaps zmm2,zmm22
  a4b571:	62 f2 25 48 7f d0    	vpermt2ps zmm2,zmm11,zmm0
  a4b577:	62 f1 7c 48 10 5a 17 	vmovups zmm3,ZMMWORD PTR [rdx+0x5c0]
  a4b57e:	62 f1 7c 48 10 62 16 	vmovups zmm4,ZMMWORD PTR [rdx+0x580]
  a4b585:	62 71 6c 48 59 c4    	vmulps zmm8,zmm2,zmm4
  a4b58b:	62 72 75 48 b8 c3    	vfmadd231ps zmm8,zmm1,zmm3
  a4b591:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm8
  a4b598:	10 
  a4b599:	62 f1 74 48 59 cc    	vmulps zmm1,zmm1,zmm4
  a4b59f:	62 f2 65 48 bc ca    	vfnmadd231ps zmm1,zmm3,zmm2
  a4b5a5:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm1
  a4b5ac:	0d 
  a4b5ad:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a4b5b4:	06 
  a4b5b5:	62 91 fd 48 15 c8    	vunpckhpd zmm1,zmm0,zmm24
  a4b5bb:	62 b1 85 40 15 d2    	vunpckhpd zmm2,zmm31,zmm18
  a4b5c1:	62 f2 4d 48 7f ca    	vpermt2ps zmm1,zmm6,zmm2
  a4b5c7:	62 d1 8d 48 15 d7    	vunpckhpd zmm2,zmm14,zmm15
  a4b5cd:	62 b1 c5 48 15 df    	vunpckhpd zmm3,zmm7,zmm23
  a4b5d3:	62 f2 4d 48 7f d3    	vpermt2ps zmm2,zmm6,zmm3
  a4b5d9:	62 f1 7c 48 10 5a 1d 	vmovups zmm3,ZMMWORD PTR [rdx+0x740]
  a4b5e0:	62 f1 7c 48 10 62 1c 	vmovups zmm4,ZMMWORD PTR [rdx+0x700]
  a4b5e7:	62 71 6c 48 59 c4    	vmulps zmm8,zmm2,zmm4
  a4b5ed:	62 72 75 48 b8 c3    	vfmadd231ps zmm8,zmm1,zmm3
  a4b5f3:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm8
  a4b5fa:	0f 
  a4b5fb:	62 f1 74 48 59 cc    	vmulps zmm1,zmm1,zmm4
  a4b601:	62 f2 65 48 bc ca    	vfnmadd231ps zmm1,zmm3,zmm2
  a4b607:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm1
  a4b60e:	0c 
  a4b60f:	62 81 fd 48 14 c0    	vunpcklpd zmm16,zmm0,zmm24
  a4b615:	62 21 85 40 14 da    	vunpcklpd zmm27,zmm31,zmm18
  a4b61b:	62 51 8d 48 14 e7    	vunpcklpd zmm12,zmm14,zmm15
  a4b621:	62 21 c5 48 14 d7    	vunpcklpd zmm26,zmm7,zmm23
  a4b627:	62 b1 7c 48 28 d8    	vmovaps zmm3,zmm16
  a4b62d:	62 92 25 48 7f db    	vpermt2ps zmm3,zmm11,zmm27
  a4b633:	62 d1 7c 48 28 e4    	vmovaps zmm4,zmm12
  a4b639:	62 92 25 48 7f e2    	vpermt2ps zmm4,zmm11,zmm26
  a4b63f:	62 f1 7c 48 10 6a 1b 	vmovups zmm5,ZMMWORD PTR [rdx+0x6c0]
  a4b646:	62 f1 7c 48 10 7a 1a 	vmovups zmm7,ZMMWORD PTR [rdx+0x680]
  a4b64d:	62 71 5c 48 59 c7    	vmulps zmm8,zmm4,zmm7
  a4b653:	62 72 65 48 b8 c5    	vfmadd231ps zmm8,zmm3,zmm5
  a4b659:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm8
  a4b660:	0e 
  a4b661:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a4b667:	62 f2 55 48 bc dc    	vfnmadd231ps zmm3,zmm5,zmm4
  a4b66d:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm3
  a4b674:	18 
  a4b675:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x140]
  a4b67c:	05 
  a4b67d:	62 e1 7c 48 10 1c 24 	vmovups zmm19,ZMMWORD PTR [rsp]
  a4b684:	62 21 ed 40 15 fb    	vunpckhpd zmm31,zmm18,zmm19
  a4b68a:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0xc0]
  a4b691:	03 
  a4b692:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp-0x40]
  a4b699:	ff 
  a4b69a:	62 a1 dd 40 15 fd    	vunpckhpd zmm23,zmm20,zmm21
  a4b6a0:	62 91 7c 48 28 e7    	vmovaps zmm4,zmm31
  a4b6a6:	62 b2 25 48 7f e7    	vpermt2ps zmm4,zmm11,zmm23
  a4b6ac:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x240]
  a4b6b3:	09 
  a4b6b4:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a4b6bb:	02 
  a4b6bc:	62 71 e5 48 15 c0    	vunpckhpd zmm8,zmm3,zmm0
  a4b6c2:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a4b6c9:	fe 
  a4b6ca:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a4b6d1:	01 
  a4b6d2:	62 e1 ed 48 15 c9    	vunpckhpd zmm17,zmm2,zmm1
  a4b6d8:	62 d1 7c 48 28 e8    	vmovaps zmm5,zmm8
  a4b6de:	62 b2 25 48 7f e9    	vpermt2ps zmm5,zmm11,zmm17
  a4b6e4:	62 f1 7c 48 10 7a 0f 	vmovups zmm7,ZMMWORD PTR [rdx+0x3c0]
  a4b6eb:	62 71 7c 48 10 72 0e 	vmovups zmm14,ZMMWORD PTR [rdx+0x380]
  a4b6f2:	62 51 54 48 59 fe    	vmulps zmm15,zmm5,zmm14
  a4b6f8:	62 72 5d 48 b8 ff    	vfmadd231ps zmm15,zmm4,zmm7
  a4b6fe:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm15
  a4b705:	0a 
  a4b706:	62 d1 5c 48 59 e6    	vmulps zmm4,zmm4,zmm14
  a4b70c:	62 f2 45 48 bc e5    	vfnmadd231ps zmm4,zmm7,zmm5
  a4b712:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm4
  a4b719:	06 
  a4b71a:	62 f1 b5 48 14 7c 24 	vunpcklpd zmm7,zmm9,ZMMWORD PTR [rsp+0x1c0]
  a4b721:	07 
  a4b722:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x4c0]
  a4b729:	13 
  a4b72a:	62 11 dd 48 14 f6    	vunpcklpd zmm14,zmm4,zmm30
  a4b730:	62 51 9d 40 14 d2    	vunpcklpd zmm10,zmm28,zmm10
  a4b736:	62 91 95 48 14 e9    	vunpcklpd zmm5,zmm13,zmm25
  a4b73c:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a4b742:	62 61 7c 48 28 c7    	vmovaps zmm24,zmm7
  a4b748:	62 d2 25 48 7f e6    	vpermt2ps zmm4,zmm11,zmm14
  a4b74e:	62 d1 7c 48 28 f2    	vmovaps zmm6,zmm10
  a4b754:	62 41 7c 48 28 e2    	vmovaps zmm28,zmm10
  a4b75a:	62 f2 25 48 7f f5    	vpermt2ps zmm6,zmm11,zmm5
  a4b760:	62 f1 7c 48 10 7a 02 	vmovups zmm7,ZMMWORD PTR [rdx+0x80]
  a4b767:	62 71 7c 48 10 4a 03 	vmovups zmm9,ZMMWORD PTR [rdx+0xc0]
  a4b76e:	62 71 4c 48 59 d7    	vmulps zmm10,zmm6,zmm7
  a4b774:	62 52 5d 48 b8 d1    	vfmadd231ps zmm10,zmm4,zmm9
  a4b77a:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm10
  a4b781:	07 
  a4b782:	62 71 5c 48 59 d7    	vmulps zmm10,zmm4,zmm7
  a4b788:	62 72 35 48 bc d6    	vfnmadd231ps zmm10,zmm9,zmm6
  a4b78e:	62 b1 ed 40 14 e3    	vunpcklpd zmm4,zmm18,zmm19
  a4b794:	62 b1 dd 40 14 f5    	vunpcklpd zmm6,zmm20,zmm21
  a4b79a:	62 71 e5 48 14 e8    	vunpcklpd zmm13,zmm3,zmm0
  a4b7a0:	62 71 ed 48 14 f9    	vunpcklpd zmm15,zmm2,zmm1
  a4b7a6:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a4b7ac:	62 f1 7c 48 28 05 4a 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff67b64a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a4b7b3:	b6 67 ff 
  a4b7b6:	62 f2 7d 48 7f e6    	vpermt2ps zmm4,zmm0,zmm6
  a4b7bc:	62 51 7c 48 28 cd    	vmovaps zmm9,zmm13
  a4b7c2:	62 52 7d 48 7f ef    	vpermt2ps zmm13,zmm0,zmm15
  a4b7c8:	62 e1 7c 48 10 52 09 	vmovups zmm18,ZMMWORD PTR [rdx+0x240]
  a4b7cf:	62 e1 7c 48 10 62 08 	vmovups zmm20,ZMMWORD PTR [rdx+0x200]
  a4b7d6:	62 a1 14 48 59 dc    	vmulps zmm19,zmm13,zmm20
  a4b7dc:	62 a2 5d 48 b8 da    	vfmadd231ps zmm19,zmm4,zmm18
  a4b7e2:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm19
  a4b7e9:	09 
  a4b7ea:	62 b1 5c 48 59 e4    	vmulps zmm4,zmm4,zmm20
  a4b7f0:	62 d2 6d 40 bc e5    	vfnmadd231ps zmm4,zmm18,zmm13
  a4b7f6:	62 e1 7c 48 28 e4    	vmovaps zmm20,zmm4
  a4b7fc:	62 f2 25 48 7f fe    	vpermt2ps zmm7,zmm11,zmm6
  a4b802:	62 52 25 48 7f cf    	vpermt2ps zmm9,zmm11,zmm15
  a4b808:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x540]
  a4b80f:	15 
  a4b810:	62 72 25 48 7f 6c 24 	vpermt2ps zmm13,zmm11,ZMMWORD PTR [rsp+0x500]
  a4b817:	14 
  a4b818:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x5c0]
  a4b81f:	17 
  a4b820:	62 f2 25 48 7f 54 24 	vpermt2ps zmm2,zmm11,ZMMWORD PTR [rsp+0x580]
  a4b827:	16 
  a4b828:	62 62 25 48 7f 6c 24 	vpermt2ps zmm29,zmm11,ZMMWORD PTR [rsp+0x640]
  a4b82f:	19 
  a4b830:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x6c0]
  a4b837:	1b 
  a4b838:	62 f2 25 48 7f 64 24 	vpermt2ps zmm4,zmm11,ZMMWORD PTR [rsp+0x680]
  a4b83f:	1a 
  a4b840:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a4b846:	62 32 7d 48 7f c1    	vpermt2ps zmm8,zmm0,zmm17
  a4b84c:	62 22 7d 48 7f ff    	vpermt2ps zmm31,zmm0,zmm23
  a4b852:	62 f1 7c 48 10 42 0d 	vmovups zmm0,ZMMWORD PTR [rdx+0x340]
  a4b859:	62 f1 7c 48 10 5a 0c 	vmovups zmm3,ZMMWORD PTR [rdx+0x300]
  a4b860:	62 f1 04 40 59 f3    	vmulps zmm6,zmm31,zmm3
  a4b866:	62 f2 3d 48 bc f0    	vfnmadd231ps zmm6,zmm8,zmm0
  a4b86c:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm6
  a4b873:	13 
  a4b874:	62 f1 3c 48 59 cb    	vmulps zmm1,zmm8,zmm3
  a4b87a:	62 92 7d 48 b8 cf    	vfmadd231ps zmm1,zmm0,zmm31
  a4b880:	62 e1 7c 48 28 d9    	vmovaps zmm19,zmm1
  a4b886:	62 f1 7c 48 10 42 13 	vmovups zmm0,ZMMWORD PTR [rdx+0x4c0]
  a4b88d:	62 f1 7c 48 10 5a 12 	vmovups zmm3,ZMMWORD PTR [rdx+0x480]
  a4b894:	62 71 5c 48 59 c3    	vmulps zmm8,zmm4,zmm3
  a4b89a:	62 72 15 40 bc c0    	vfnmadd231ps zmm8,zmm29,zmm0
  a4b8a0:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm8
  a4b8a7:	16 
  a4b8a8:	62 e1 14 40 59 fb    	vmulps zmm23,zmm29,zmm3
  a4b8ae:	62 e2 7d 48 b8 fc    	vfmadd231ps zmm23,zmm0,zmm4
  a4b8b4:	62 f1 7c 48 10 42 07 	vmovups zmm0,ZMMWORD PTR [rdx+0x1c0]
  a4b8bb:	62 f1 7c 48 10 5a 06 	vmovups zmm3,ZMMWORD PTR [rdx+0x180]
  a4b8c2:	62 f1 6c 48 59 e3    	vmulps zmm4,zmm2,zmm3
  a4b8c8:	62 f2 15 48 bc e0    	vfnmadd231ps zmm4,zmm13,zmm0
  a4b8ce:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm4
  a4b8d5:	14 
  a4b8d6:	62 61 14 48 59 cb    	vmulps zmm25,zmm13,zmm3
  a4b8dc:	62 62 7d 48 b8 ca    	vfmadd231ps zmm25,zmm0,zmm2
  a4b8e2:	62 12 25 48 7f e2    	vpermt2ps zmm12,zmm11,zmm26
  a4b8e8:	62 82 25 48 7f c3    	vpermt2ps zmm16,zmm11,zmm27
  a4b8ee:	62 f1 7c 48 10 42 19 	vmovups zmm0,ZMMWORD PTR [rdx+0x640]
  a4b8f5:	62 f1 7c 48 10 5a 18 	vmovups zmm3,ZMMWORD PTR [rdx+0x600]
  a4b8fc:	62 f1 7c 40 59 cb    	vmulps zmm1,zmm16,zmm3
  a4b902:	62 f2 1d 48 bc c8    	vfnmadd231ps zmm1,zmm12,zmm0
  a4b908:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a4b90e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm1
  a4b915:	15 
  a4b916:	62 e1 1c 48 59 eb    	vmulps zmm21,zmm12,zmm3
  a4b91c:	62 a2 7d 48 b8 e8    	vfmadd231ps zmm21,zmm0,zmm16
  a4b922:	62 f1 7c 48 10 42 0b 	vmovups zmm0,ZMMWORD PTR [rdx+0x2c0]
  a4b929:	62 f1 7c 48 10 52 0a 	vmovups zmm2,ZMMWORD PTR [rdx+0x280]
  a4b930:	62 f1 34 48 59 ca    	vmulps zmm1,zmm9,zmm2
  a4b936:	62 f2 45 48 b8 c8    	vfmadd231ps zmm1,zmm7,zmm0
  a4b93c:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a4b943:	62 f1 44 48 59 ca    	vmulps zmm1,zmm7,zmm2
  a4b949:	62 d2 7d 48 bc c9    	vfnmadd231ps zmm1,zmm0,zmm9
  a4b94f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a4b956:	02 
  a4b957:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x700]
  a4b95e:	1c 
  a4b95f:	62 f2 25 48 7f 5c 24 	vpermt2ps zmm3,zmm11,ZMMWORD PTR [rsp+0x2c0]
  a4b966:	0b 
  a4b967:	62 e2 25 48 7f 74 24 	vpermt2ps zmm22,zmm11,ZMMWORD PTR [rsp+0x740]
  a4b96e:	1d 
  a4b96f:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a4b976:	62 f1 7c 48 10 52 14 	vmovups zmm2,ZMMWORD PTR [rdx+0x500]
  a4b97d:	62 f1 4c 40 59 ca    	vmulps zmm1,zmm22,zmm2
  a4b983:	62 f2 65 48 b8 c8    	vfmadd231ps zmm1,zmm3,zmm0
  a4b989:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a4b990:	03 
  a4b991:	62 f1 64 48 59 ca    	vmulps zmm1,zmm3,zmm2
  a4b997:	62 b2 7d 48 bc ce    	vfnmadd231ps zmm1,zmm0,zmm22
  a4b99d:	62 61 7c 48 28 d1    	vmovaps zmm26,zmm1
  a4b9a3:	62 62 25 48 7f e5    	vpermt2ps zmm28,zmm11,zmm5
  a4b9a9:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm28
  a4b9b0:	ff 
  a4b9b1:	62 42 25 48 7f c6    	vpermt2ps zmm24,zmm11,zmm14
  a4b9b7:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm24
  a4b9be:	fe 
  a4b9bf:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x200]
  a4b9c6:	08 
  a4b9c7:	62 f1 7c 48 5c 44 24 	vsubps zmm0,zmm0,ZMMWORD PTR [rsp+0x100]
  a4b9ce:	04 
  a4b9cf:	62 f2 7d 48 18 15 7f 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff629d7f]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a4b9d6:	9d 62 ff 
  a4b9d9:	62 61 7c 48 10 7c 24 	vmovups zmm31,ZMMWORD PTR [rsp+0x340]
  a4b9e0:	0d 
  a4b9e1:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x300]
  a4b9e8:	0c 
  a4b9e9:	62 b1 04 40 5c d9    	vsubps zmm3,zmm31,zmm17
  a4b9ef:	62 f1 64 48 59 ca    	vmulps zmm1,zmm3,zmm2
  a4b9f5:	62 f2 7d 48 18 2d a1 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff6299a1]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a4b9fc:	99 62 ff 
  a4b9ff:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a4ba05:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a4ba0c:	05 
  a4ba0d:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a4ba13:	62 f2 55 48 bc c3    	vfnmadd231ps zmm0,zmm5,zmm3
  a4ba19:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm0
  a4ba20:	17 
  a4ba21:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x600]
  a4ba28:	18 
  a4ba29:	62 f1 0c 48 5c 44 24 	vsubps zmm0,zmm14,ZMMWORD PTR [rsp+0x180]
  a4ba30:	06 
  a4ba31:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a4ba37:	62 b1 2c 48 5c dc    	vsubps zmm3,zmm10,zmm20
  a4ba3d:	62 f1 64 48 59 ca    	vmulps zmm1,zmm3,zmm2
  a4ba43:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a4ba49:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a4ba50:	01 
  a4ba51:	62 61 7c 48 59 ea    	vmulps zmm29,zmm0,zmm2
  a4ba57:	62 62 55 48 bc eb    	vfnmadd231ps zmm29,zmm5,zmm3
  a4ba5d:	62 d1 5c 48 5c c5    	vsubps zmm0,zmm4,zmm13
  a4ba63:	62 d1 4c 48 5c d8    	vsubps zmm3,zmm6,zmm8
  a4ba69:	62 f1 64 48 59 ca    	vmulps zmm1,zmm3,zmm2
  a4ba6f:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a4ba75:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  a4ba7c:	0b 
  a4ba7d:	62 61 7c 48 59 e2    	vmulps zmm28,zmm0,zmm2
  a4ba83:	62 62 55 48 bc e3    	vfnmadd231ps zmm28,zmm5,zmm3
  a4ba89:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x480]
  a4ba90:	12 
  a4ba91:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x440]
  a4ba98:	11 
  a4ba99:	62 b1 24 48 5c c6    	vsubps zmm0,zmm11,zmm22
  a4ba9f:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x400]
  a4baa6:	10 
  a4baa7:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x3c0]
  a4baae:	0f 
  a4baaf:	62 d1 5c 48 5c d9    	vsubps zmm3,zmm4,zmm9
  a4bab5:	62 61 64 48 59 f2    	vmulps zmm30,zmm3,zmm2
  a4babb:	62 62 7d 48 b8 f5    	vfmadd231ps zmm30,zmm0,zmm5
  a4bac1:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm30
  a4bac8:	1a 
  a4bac9:	62 61 7c 48 59 da    	vmulps zmm27,zmm0,zmm2
  a4bacf:	62 62 55 48 bc db    	vfnmadd231ps zmm27,zmm5,zmm3
  a4bad5:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x380]
  a4badc:	0e 
  a4badd:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x280]
  a4bae4:	0a 
  a4bae5:	62 f1 3c 48 5c c6    	vsubps zmm0,zmm8,zmm6
  a4baeb:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x1c0]
  a4baf2:	07 
  a4baf3:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x240]
  a4bafa:	09 
  a4bafb:	62 f1 2c 48 5c d9    	vsubps zmm3,zmm10,zmm1
  a4bb01:	62 f1 64 48 59 fa    	vmulps zmm7,zmm3,zmm2
  a4bb07:	62 f2 7d 48 b8 fd    	vfmadd231ps zmm7,zmm0,zmm5
  a4bb0d:	62 e1 7c 48 28 c7    	vmovaps zmm16,zmm7
  a4bb13:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm7
  a4bb1a:	19 
  a4bb1b:	62 e1 7c 48 59 d2    	vmulps zmm18,zmm0,zmm2
  a4bb21:	62 e2 55 48 bc d3    	vfnmadd231ps zmm18,zmm5,zmm3
  a4bb27:	62 b1 34 40 5c dd    	vsubps zmm3,zmm25,zmm21
  a4bb2d:	62 b1 64 40 5c ff    	vsubps zmm7,zmm19,zmm23
  a4bb33:	62 71 44 48 59 ea    	vmulps zmm13,zmm7,zmm2
  a4bb39:	62 72 65 48 b8 ed    	vfmadd231ps zmm13,zmm3,zmm5
  a4bb3f:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm13
  a4bb46:	1b 
  a4bb47:	62 71 64 48 59 fa    	vmulps zmm15,zmm3,zmm2
  a4bb4d:	62 72 45 48 bc fd    	vfnmadd231ps zmm15,zmm7,zmm5
  a4bb53:	62 51 5c 48 58 e9    	vaddps zmm13,zmm4,zmm9
  a4bb59:	62 31 24 48 58 ce    	vaddps zmm9,zmm11,zmm22
  a4bb5f:	62 71 2c 48 58 d9    	vaddps zmm11,zmm10,zmm1
  a4bb65:	62 e1 3c 48 58 f6    	vaddps zmm22,zmm8,zmm6
  a4bb6b:	62 b1 64 40 58 c7    	vaddps zmm0,zmm19,zmm23
  a4bb71:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm0
  a4bb78:	1e 
  a4bb79:	62 21 34 40 58 c5    	vaddps zmm24,zmm25,zmm21
  a4bb7f:	62 b1 04 40 58 f9    	vaddps zmm7,zmm31,zmm17
  a4bb85:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a4bb8c:	04 
  a4bb8d:	62 61 74 48 58 4c 24 	vaddps zmm25,zmm1,ZMMWORD PTR [rsp+0x200]
  a4bb94:	08 
  a4bb95:	62 21 1c 48 58 fc    	vaddps zmm31,zmm12,zmm20
  a4bb9b:	62 72 7d 48 18 05 43 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff629b43]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a4bba2:	9b 62 ff 
  a4bba5:	62 71 0c 48 58 54 24 	vaddps zmm10,zmm14,ZMMWORD PTR [rsp+0x180]
  a4bbac:	06 
  a4bbad:	62 f2 7d 48 18 0d 8d 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff629a8d]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a4bbb4:	9a 62 ff 
  a4bbb7:	62 c1 7c 48 28 f8    	vmovaps zmm23,zmm8
  a4bbbd:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x80]
  a4bbc4:	02 
  a4bbc5:	62 e2 35 40 a8 fa    	vfmadd213ps zmm23,zmm25,zmm2
  a4bbcb:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm25
  a4bbd2:	0d 
  a4bbd3:	62 e2 45 48 bc f9    	vfnmadd231ps zmm23,zmm7,zmm1
  a4bbd9:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm7
  a4bbe0:	0c 
  a4bbe1:	62 c1 7c 48 28 e0    	vmovaps zmm20,zmm8
  a4bbe7:	62 91 7c 48 28 f2    	vmovaps zmm6,zmm26
  a4bbed:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm26
  a4bbf4:	1d 
  a4bbf5:	62 82 2d 48 a8 e2    	vfmadd213ps zmm20,zmm10,zmm26
  a4bbfb:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm10
  a4bc02:	0a 
  a4bc03:	62 e2 05 40 bc e1    	vfnmadd231ps zmm20,zmm31,zmm1
  a4bc09:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm31
  a4bc10:	07 
  a4bc11:	62 91 44 40 5c de    	vsubps zmm3,zmm23,zmm30
  a4bc17:	62 b1 5c 40 5c e8    	vsubps zmm5,zmm20,zmm16
  a4bc1d:	62 f1 64 48 5c c5    	vsubps zmm0,zmm3,zmm5
  a4bc23:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a4bc2a:	04 
  a4bc2b:	62 f1 64 48 58 c5    	vaddps zmm0,zmm3,zmm5
  a4bc31:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a4bc38:	11 
  a4bc39:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x4c0]
  a4bc40:	13 
  a4bc41:	62 61 7c 48 58 54 24 	vaddps zmm26,zmm0,ZMMWORD PTR [rsp+0x580]
  a4bc48:	16 
  a4bc49:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x500]
  a4bc50:	14 
  a4bc51:	62 61 7c 48 58 74 24 	vaddps zmm30,zmm0,ZMMWORD PTR [rsp+0x540]
  a4bc58:	15 
  a4bc59:	62 c1 7c 48 28 d8    	vmovaps zmm19,zmm8
  a4bc5f:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a4bc66:	62 e2 35 48 a8 d8    	vfmadd213ps zmm19,zmm9,zmm0
  a4bc6c:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a4bc72:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm9
  a4bc79:	1c 
  a4bc7a:	62 e2 15 48 bc d9    	vfnmadd231ps zmm19,zmm13,zmm1
  a4bc80:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm13
  a4bc87:	20 
  a4bc88:	62 c1 7c 48 28 c8    	vmovaps zmm17,zmm8
  a4bc8e:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0xc0]
  a4bc95:	03 
  a4bc96:	62 a2 4d 40 a8 cd    	vfmadd213ps zmm17,zmm22,zmm21
  a4bc9c:	62 e2 25 48 bc c9    	vfnmadd231ps zmm17,zmm11,zmm1
  a4bca2:	62 51 7c 48 28 f3    	vmovaps zmm14,zmm11
  a4bca8:	62 f1 64 40 58 5c 24 	vaddps zmm3,zmm19,ZMMWORD PTR [rsp+0x140]
  a4bcaf:	05 
  a4bcb0:	62 f1 74 40 58 64 24 	vaddps zmm4,zmm17,ZMMWORD PTR [rsp+0x40]
  a4bcb7:	01 
  a4bcb8:	62 f1 64 48 58 ec    	vaddps zmm5,zmm3,zmm4
  a4bcbe:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm5
  a4bcc5:	10 
  a4bcc6:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a4bccc:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm3
  a4bcd3:	12 
  a4bcd4:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a4bcda:	62 f2 35 40 ac ea    	vfnmadd213ps zmm5,zmm25,zmm2
  a4bce0:	62 d2 45 48 b8 e8    	vfmadd231ps zmm5,zmm7,zmm8
  a4bce6:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a4bcec:	62 72 2d 48 ac ce    	vfnmadd213ps zmm9,zmm10,zmm6
  a4bcf2:	62 52 05 40 b8 c8    	vfmadd231ps zmm9,zmm31,zmm8
  a4bcf8:	62 91 54 48 5c db    	vsubps zmm3,zmm5,zmm27
  a4bcfe:	62 b1 34 48 5c e2    	vsubps zmm4,zmm9,zmm18
  a4bd04:	62 f1 64 48 5c d4    	vsubps zmm2,zmm3,zmm4
  a4bd0a:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm2
  a4bd11:	0e 
  a4bd12:	62 f1 64 48 58 d4    	vaddps zmm2,zmm3,zmm4
  a4bd18:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm2
  a4bd1f:	0f 
  a4bd20:	62 c1 7c 48 28 c0    	vmovaps zmm16,zmm8
  a4bd26:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a4bd2d:	ff 
  a4bd2e:	62 01 7c 48 28 c8    	vmovaps zmm25,zmm24
  a4bd34:	62 e2 3d 40 a8 c4    	vfmadd213ps zmm16,zmm24,zmm4
  a4bd3a:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x780]
  a4bd41:	1e 
  a4bd42:	62 e2 25 48 bc c1    	vfnmadd231ps zmm16,zmm11,zmm1
  a4bd48:	62 41 7c 48 28 c0    	vmovaps zmm24,zmm8
  a4bd4e:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x80]
  a4bd55:	fe 
  a4bd56:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm30
  a4bd5d:	14 
  a4bd5e:	62 62 0d 40 a8 c3    	vfmadd213ps zmm24,zmm30,zmm3
  a4bd64:	62 91 7c 48 28 f2    	vmovaps zmm6,zmm26
  a4bd6a:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm26
  a4bd71:	16 
  a4bd72:	62 62 2d 40 bc c1    	vfnmadd231ps zmm24,zmm26,zmm1
  a4bd78:	62 61 7c 48 28 f9    	vmovaps zmm31,zmm1
  a4bd7e:	62 62 1d 48 ac f8    	vfnmadd213ps zmm31,zmm12,zmm0
  a4bd84:	62 42 15 48 b8 f8    	vfmadd231ps zmm31,zmm13,zmm8
  a4bd8a:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a4bd90:	62 b2 4d 40 ac d5    	vfnmadd213ps zmm2,zmm22,zmm21
  a4bd96:	62 21 7c 48 28 d6    	vmovaps zmm26,zmm22
  a4bd9c:	62 d2 0d 48 b8 d0    	vfmadd231ps zmm2,zmm14,zmm8
  a4bda2:	62 51 7c 48 28 e6    	vmovaps zmm12,zmm14
  a4bda8:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a4bdae:	62 f2 35 40 ac c4    	vfnmadd213ps zmm0,zmm25,zmm4
  a4bdb4:	62 d2 25 48 b8 c0    	vfmadd231ps zmm0,zmm11,zmm8
  a4bdba:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a4bdc0:	62 f2 0d 40 ac cb    	vfnmadd213ps zmm1,zmm30,zmm3
  a4bdc6:	62 d2 4d 48 b8 c8    	vfmadd231ps zmm1,zmm6,zmm8
  a4bdcc:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x5c0]
  a4bdd3:	17 
  a4bdd4:	62 71 04 40 58 c6    	vaddps zmm8,zmm31,zmm6
  a4bdda:	62 91 6c 48 58 dd    	vaddps zmm3,zmm2,zmm29
  a4bde0:	62 f1 3c 48 58 fb    	vaddps zmm7,zmm8,zmm3
  a4bde6:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm7
  a4bded:	09 
  a4bdee:	62 f1 3c 48 5c db    	vsubps zmm3,zmm8,zmm3
  a4bdf4:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm3
  a4bdfb:	18 
  a4bdfc:	62 f1 1c 40 58 d8    	vaddps zmm3,zmm28,zmm0
  a4be02:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm3
  a4be09:	15 
  a4be0a:	62 91 7c 48 5c dc    	vsubps zmm3,zmm0,zmm28
  a4be10:	62 f1 04 40 5c f6    	vsubps zmm6,zmm31,zmm6
  a4be16:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm6
  a4be1d:	1f 
  a4be1e:	62 91 6c 48 5c d5    	vsubps zmm2,zmm2,zmm29
  a4be24:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm2
  a4be2b:	13 
  a4be2c:	62 d1 74 48 5c c7    	vsubps zmm0,zmm1,zmm15
  a4be32:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm0
  a4be39:	17 
  a4be3a:	62 d1 74 48 58 ff    	vaddps zmm7,zmm1,zmm15
  a4be40:	62 01 54 48 58 eb    	vaddps zmm29,zmm5,zmm27
  a4be46:	62 21 34 48 58 f2    	vaddps zmm30,zmm9,zmm18
  a4be4c:	62 f2 7d 48 18 05 0a 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff62960a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a4be53:	96 62 ff 
  a4be56:	62 61 4c 48 58 da    	vaddps zmm27,zmm6,zmm2
  a4be5c:	62 91 64 48 58 cb    	vaddps zmm1,zmm3,zmm27
  a4be62:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a4be69:	06 
  a4be6a:	62 62 7d 48 ac db    	vfnmadd213ps zmm27,zmm0,zmm3
  a4be70:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a4be76:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a4be7c:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a4be82:	62 71 7c 48 28 f8    	vmovaps zmm15,zmm0
  a4be88:	62 81 14 40 58 d6    	vaddps zmm18,zmm29,zmm30
  a4be8e:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a4be94:	62 61 7c 48 28 f8    	vmovaps zmm31,zmm0
  a4be9a:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a4bea0:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a4bea6:	62 f2 6d 40 ac c7    	vfnmadd213ps zmm0,zmm18,zmm7
  a4beac:	62 b1 44 48 58 ca    	vaddps zmm1,zmm7,zmm18
  a4beb2:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a4beb9:	08 
  a4beba:	62 71 64 40 5c 54 24 	vsubps zmm10,zmm19,ZMMWORD PTR [rsp+0x140]
  a4bec1:	05 
  a4bec2:	62 f1 74 40 5c 7c 24 	vsubps zmm7,zmm17,ZMMWORD PTR [rsp+0x40]
  a4bec9:	01 
  a4beca:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x2c0]
  a4bed1:	0b 
  a4bed2:	62 a1 74 48 58 d0    	vaddps zmm18,zmm1,zmm16
  a4bed8:	62 e1 7c 40 5c f1    	vsubps zmm22,zmm16,zmm1
  a4bede:	62 71 44 40 58 74 24 	vaddps zmm14,zmm23,ZMMWORD PTR [rsp+0x680]
  a4bee5:	1a 
  a4bee6:	62 71 5c 40 58 6c 24 	vaddps zmm13,zmm20,ZMMWORD PTR [rsp+0x640]
  a4beed:	19 
  a4beee:	62 d1 0c 48 5c cd    	vsubps zmm1,zmm14,zmm13
  a4bef4:	62 c1 0c 48 58 ed    	vaddps zmm21,zmm14,zmm13
  a4befa:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x6c0]
  a4bf01:	1b 
  a4bf02:	62 71 3c 40 5c f5    	vsubps zmm14,zmm24,zmm5
  a4bf08:	62 71 3c 40 58 ed    	vaddps zmm13,zmm24,zmm5
  a4bf0e:	62 e1 2c 48 58 df    	vaddps zmm19,zmm10,zmm7
  a4bf14:	62 e1 2c 48 5c cf    	vsubps zmm17,zmm10,zmm7
  a4bf1a:	62 f1 7c 48 10 2c 24 	vmovups zmm5,ZMMWORD PTR [rsp]
  a4bf21:	62 71 54 48 58 54 24 	vaddps zmm10,zmm5,ZMMWORD PTR [rsp+0x700]
  a4bf28:	1c 
  a4bf29:	62 71 2c 48 58 54 24 	vaddps zmm10,zmm10,ZMMWORD PTR [rsp+0x800]
  a4bf30:	20 
  a4bf31:	62 e1 2c 40 58 7c 24 	vaddps zmm23,zmm26,ZMMWORD PTR [rsp+0xc0]
  a4bf38:	03 
  a4bf39:	62 c1 44 40 58 fc    	vaddps zmm23,zmm23,zmm12
  a4bf3f:	62 61 34 40 58 44 24 	vaddps zmm24,zmm25,ZMMWORD PTR [rsp-0x40]
  a4bf46:	ff 
  a4bf47:	62 91 5c 48 58 e0    	vaddps zmm4,zmm4,zmm24
  a4bf4d:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm4
  a4bf54:	01 
  a4bf55:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x80]
  a4bf5c:	02 
  a4bf5d:	62 61 5c 48 58 44 24 	vaddps zmm24,zmm4,ZMMWORD PTR [rsp+0x340]
  a4bf64:	0d 
  a4bf65:	62 61 3c 40 58 44 24 	vaddps zmm24,zmm24,ZMMWORD PTR [rsp+0x300]
  a4bf6c:	0c 
  a4bf6d:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x740]
  a4bf74:	1d 
  a4bf75:	62 61 5c 48 58 4c 24 	vaddps zmm25,zmm4,ZMMWORD PTR [rsp+0x280]
  a4bf7c:	0a 
  a4bf7d:	62 61 34 40 58 4c 24 	vaddps zmm25,zmm25,ZMMWORD PTR [rsp+0x1c0]
  a4bf84:	07 
  a4bf85:	62 01 3c 40 5c d1    	vsubps zmm26,zmm24,zmm25
  a4bf8b:	62 81 3c 40 58 c1    	vaddps zmm16,zmm24,zmm25
  a4bf91:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x500]
  a4bf98:	14 
  a4bf99:	62 e1 5c 48 58 64 24 	vaddps zmm20,zmm4,ZMMWORD PTR [rsp-0x80]
  a4bfa0:	fe 
  a4bfa1:	62 61 5c 40 58 64 24 	vaddps zmm28,zmm20,ZMMWORD PTR [rsp+0x580]
  a4bfa8:	16 
  a4bfa9:	62 21 2c 48 58 cf    	vaddps zmm25,zmm10,zmm23
  a4bfaf:	62 a1 2c 48 5c e7    	vsubps zmm20,zmm10,zmm23
  a4bfb5:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x400]
  a4bfbc:	10 
  a4bfbd:	62 32 5d 48 ac c2    	vfnmadd213ps zmm8,zmm4,zmm18
  a4bfc3:	62 f1 6c 40 58 e4    	vaddps zmm4,zmm18,zmm4
  a4bfc9:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm4
  a4bfd0:	fe 
  a4bfd1:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x440]
  a4bfd8:	11 
  a4bfd9:	62 52 5d 48 ac ce    	vfnmadd213ps zmm9,zmm4,zmm14
  a4bfdf:	62 f1 0c 48 58 e4    	vaddps zmm4,zmm14,zmm4
  a4bfe5:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a4bfec:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x240]
  a4bff3:	09 
  a4bff4:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x540]
  a4bffb:	15 
  a4bffc:	62 f2 1d 48 ac df    	vfnmadd213ps zmm3,zmm12,zmm7
  a4c002:	62 72 7d 48 18 35 c8 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff6292c8]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a4c009:	92 62 ff 
  a4c00c:	62 e1 0c 48 59 54 24 	vmulps zmm18,zmm14,ZMMWORD PTR [rsp+0x380]
  a4c013:	0e 
  a4c014:	62 b1 64 48 5c e2    	vsubps zmm4,zmm3,zmm18
  a4c01a:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm4
  a4c021:	03 
  a4c022:	62 a1 64 48 58 fa    	vaddps zmm23,zmm3,zmm18
  a4c028:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x3c0]
  a4c02f:	0f 
  a4c030:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x5c0]
  a4c037:	17 
  a4c038:	62 72 55 48 ac fc    	vfnmadd213ps zmm15,zmm5,zmm4
  a4c03e:	62 f1 0c 48 59 5c 24 	vmulps zmm3,zmm14,ZMMWORD PTR [rsp+0x600]
  a4c045:	18 
  a4c046:	62 71 04 48 58 d3    	vaddps zmm10,zmm15,zmm3
  a4c04c:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm10
  a4c053:	05 
  a4c054:	62 f1 04 48 5c db    	vsubps zmm3,zmm15,zmm3
  a4c05a:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a4c061:	ff 
  a4c062:	62 91 14 40 5c de    	vsubps zmm3,zmm29,zmm30
  a4c068:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x7c0]
  a4c06f:	1f 
  a4c070:	62 e1 2c 48 5c 54 24 	vsubps zmm18,zmm10,ZMMWORD PTR [rsp+0x4c0]
  a4c077:	13 
  a4c078:	62 61 0c 48 59 44 24 	vmulps zmm24,zmm14,ZMMWORD PTR [rsp+0x100]
  a4c07f:	04 
  a4c080:	62 61 0c 48 59 6c 24 	vmulps zmm29,zmm14,ZMMWORD PTR [rsp+0x480]
  a4c087:	12 
  a4c088:	62 51 74 48 59 d6    	vmulps zmm10,zmm1,zmm14
  a4c08e:	62 c1 74 40 59 ce    	vmulps zmm17,zmm17,zmm14
  a4c094:	62 41 2c 40 59 f6    	vmulps zmm30,zmm26,zmm14
  a4c09a:	62 d1 5c 40 59 ce    	vmulps zmm1,zmm20,zmm14
  a4c0a0:	62 c1 64 48 59 e6    	vmulps zmm20,zmm3,zmm14
  a4c0a6:	62 c1 6c 40 59 d6    	vmulps zmm18,zmm18,zmm14
  a4c0ac:	62 32 65 40 ac de    	vfnmadd213ps zmm11,zmm19,zmm22
  a4c0b2:	62 31 4c 40 58 f3    	vaddps zmm14,zmm22,zmm19
  a4c0b8:	62 42 55 40 ac fd    	vfnmadd213ps zmm31,zmm21,zmm13
  a4c0be:	62 a1 14 48 58 f5    	vaddps zmm22,zmm13,zmm21
  a4c0c4:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0x40]
  a4c0cb:	01 
  a4c0cc:	62 b2 35 40 ac d5    	vfnmadd213ps zmm2,zmm25,zmm21
  a4c0d2:	62 01 6c 48 5c d6    	vsubps zmm26,zmm2,zmm30
  a4c0d8:	62 91 6c 48 58 d6    	vaddps zmm2,zmm2,zmm30
  a4c0de:	62 92 7d 40 ac f4    	vfnmadd213ps zmm6,zmm16,zmm28
  a4c0e4:	62 61 4c 48 58 f1    	vaddps zmm30,zmm6,zmm1
  a4c0ea:	62 e1 4c 48 5c d9    	vsubps zmm19,zmm6,zmm1
  a4c0f0:	62 91 3c 48 58 c8    	vaddps zmm1,zmm8,zmm24
  a4c0f6:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a4c0fd:	02 
  a4c0fe:	62 91 3c 48 5c c8    	vsubps zmm1,zmm8,zmm24
  a4c104:	62 01 34 48 5c c5    	vsubps zmm24,zmm9,zmm29
  a4c10a:	62 11 34 48 58 ed    	vaddps zmm13,zmm9,zmm29
  a4c110:	62 51 44 48 58 e4    	vaddps zmm12,zmm7,zmm12
  a4c116:	62 f1 5c 48 58 f5    	vaddps zmm6,zmm4,zmm5
  a4c11c:	62 b1 24 40 5c dc    	vsubps zmm3,zmm27,zmm20
  a4c122:	62 a1 24 40 58 e4    	vaddps zmm20,zmm27,zmm20
  a4c128:	62 31 7c 48 58 ca    	vaddps zmm9,zmm0,zmm18
  a4c12e:	62 b1 7c 48 5c ea    	vsubps zmm5,zmm0,zmm18
  a4c134:	62 41 24 48 58 ea    	vaddps zmm29,zmm11,zmm10
  a4c13a:	62 51 24 48 5c d2    	vsubps zmm10,zmm11,zmm10
  a4c140:	62 31 04 40 5c f9    	vsubps zmm15,zmm31,zmm17
  a4c146:	62 a1 04 40 58 c9    	vaddps zmm17,zmm31,zmm17
  a4c14c:	62 91 54 40 58 f9    	vaddps zmm7,zmm21,zmm25
  a4c152:	62 b1 1c 40 58 e0    	vaddps zmm4,zmm28,zmm16
  a4c158:	62 71 7c 48 28 05 9e 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff64669e]        # 92800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fcb0>
  a4c15f:	66 64 ff 
  a4c162:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a4c168:	62 f2 3d 48 7f c7    	vpermt2ps zmm0,zmm8,zmm7
  a4c16e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a4c175:	01 
  a4c176:	62 f1 5c 48 14 c7    	vunpcklps zmm0,zmm4,zmm7
  a4c17c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a4c183:	04 
  a4c184:	62 e1 7c 28 28 2d b2 	vmovaps ymm21,YMMWORD PTR [rip+0xffffffffff62aab2]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a4c18b:	aa 62 ff 
  a4c18e:	62 f2 55 40 7f e7    	vpermt2ps zmm4,zmm21,zmm7
  a4c194:	62 21 7c 48 28 f9    	vmovaps zmm31,zmm17
  a4c19a:	62 42 3d 48 7f fa    	vpermt2ps zmm31,zmm8,zmm10
  a4c1a0:	62 d1 74 40 14 c2    	vunpcklps zmm0,zmm17,zmm10
  a4c1a6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a4c1ad:	12 
  a4c1ae:	62 c2 55 40 7f ca    	vpermt2ps zmm17,zmm21,zmm10
  a4c1b4:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a4c1ba:	62 a2 3d 48 7f c4    	vpermt2ps zmm16,zmm8,zmm20
  a4c1c0:	62 b1 54 48 14 c4    	vunpcklps zmm0,zmm5,zmm20
  a4c1c6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a4c1cd:	11 
  a4c1ce:	62 b2 55 40 7f ec    	vpermt2ps zmm5,zmm21,zmm20
  a4c1d4:	62 61 7c 48 28 e6    	vmovaps zmm28,zmm6
  a4c1da:	62 42 3d 48 7f e4    	vpermt2ps zmm28,zmm8,zmm12
  a4c1e0:	62 d1 4c 48 14 c4    	vunpcklps zmm0,zmm6,zmm12
  a4c1e6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a4c1ed:	10 
  a4c1ee:	62 d2 55 40 7f f4    	vpermt2ps zmm6,zmm21,zmm12
  a4c1f4:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a4c1fa:	62 f2 3d 48 7f f9    	vpermt2ps zmm7,zmm8,zmm1
  a4c200:	62 f1 14 48 14 c1    	vunpcklps zmm0,zmm13,zmm1
  a4c206:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a4c20d:	0f 
  a4c20e:	62 72 55 40 7f e9    	vpermt2ps zmm13,zmm21,zmm1
  a4c214:	62 31 7c 48 28 d3    	vmovaps zmm10,zmm19
  a4c21a:	62 72 3d 48 7f d2    	vpermt2ps zmm10,zmm8,zmm2
  a4c220:	62 f1 64 40 14 c2    	vunpcklps zmm0,zmm19,zmm2
  a4c226:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a4c22d:	0e 
  a4c22e:	62 e2 55 40 7f da    	vpermt2ps zmm19,zmm21,zmm2
  a4c234:	62 a1 7c 48 28 e6    	vmovaps zmm20,zmm22
  a4c23a:	62 c2 3d 48 7f e6    	vpermt2ps zmm20,zmm8,zmm14
  a4c240:	62 d1 4c 40 14 c6    	vunpcklps zmm0,zmm22,zmm14
  a4c246:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a4c24d:	0d 
  a4c24e:	62 c2 55 40 7f f6    	vpermt2ps zmm22,zmm21,zmm14
  a4c254:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a4c25a:	62 72 3d 48 7f e3    	vpermt2ps zmm12,zmm8,zmm3
  a4c260:	62 f1 34 48 14 c3    	vunpcklps zmm0,zmm9,zmm3
  a4c266:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a4c26d:	0c 
  a4c26e:	62 72 55 40 7f cb    	vpermt2ps zmm9,zmm21,zmm3
  a4c274:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a4c27b:	ff 
  a4c27c:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a4c282:	62 32 3d 48 7f df    	vpermt2ps zmm11,zmm8,zmm23
  a4c288:	62 b1 7c 48 14 cf    	vunpcklps zmm1,zmm0,zmm23
  a4c28e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  a4c295:	0b 
  a4c296:	62 b2 55 40 7f c7    	vpermt2ps zmm0,zmm21,zmm23
  a4c29c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a4c2a3:	ff 
  a4c2a4:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  a4c2ab:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a4c2b1:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a4c2b8:	fe 
  a4c2b9:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a4c2bf:	62 f1 6c 48 14 d8    	vunpcklps zmm3,zmm2,zmm0
  a4c2c5:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm3
  a4c2cc:	0a 
  a4c2cd:	62 f2 55 40 7f d0    	vpermt2ps zmm2,zmm21,zmm0
  a4c2d3:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a4c2da:	62 01 7c 48 28 de    	vmovaps zmm27,zmm30
  a4c2e0:	62 02 3d 48 7f da    	vpermt2ps zmm27,zmm8,zmm26
  a4c2e6:	62 91 0c 40 14 c2    	vunpcklps zmm0,zmm30,zmm26
  a4c2ec:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a4c2f3:	fe 
  a4c2f4:	62 02 55 40 7f f2    	vpermt2ps zmm30,zmm21,zmm26
  a4c2fa:	62 d1 7c 48 28 d7    	vmovaps zmm2,zmm15
  a4c300:	62 92 3d 48 7f d5    	vpermt2ps zmm2,zmm8,zmm29
  a4c306:	62 91 04 48 14 c5    	vunpcklps zmm0,zmm15,zmm29
  a4c30c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a4c313:	07 
  a4c314:	62 12 55 40 7f fd    	vpermt2ps zmm15,zmm21,zmm29
  a4c31a:	62 61 7c 48 10 4c 24 	vmovups zmm25,ZMMWORD PTR [rsp+0x200]
  a4c321:	08 
  a4c322:	62 11 7c 48 28 f1    	vmovaps zmm14,zmm25
  a4c328:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x180]
  a4c32f:	06 
  a4c330:	62 72 3d 48 7f f3    	vpermt2ps zmm14,zmm8,zmm3
  a4c336:	62 61 34 40 14 d3    	vunpcklps zmm26,zmm25,zmm3
  a4c33c:	62 62 55 40 7f cb    	vpermt2ps zmm25,zmm21,zmm3
  a4c342:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x140]
  a4c349:	05 
  a4c34a:	62 61 7c 48 28 eb    	vmovaps zmm29,zmm3
  a4c350:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0xc0]
  a4c357:	03 
  a4c358:	62 22 3d 48 7f ea    	vpermt2ps zmm29,zmm8,zmm18
  a4c35e:	62 a1 64 48 14 fa    	vunpcklps zmm23,zmm3,zmm18
  a4c364:	62 b2 55 40 7f da    	vpermt2ps zmm3,zmm21,zmm18
  a4c36a:	62 e1 7c 48 28 d3    	vmovaps zmm18,zmm3
  a4c370:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a4c377:	02 
  a4c378:	62 72 3d 40 77 c0    	vpermi2ps zmm8,zmm24,zmm0
  a4c37e:	62 f1 3c 40 14 d8    	vunpcklps zmm3,zmm24,zmm0
  a4c384:	62 62 55 40 7f c0    	vpermt2ps zmm24,zmm21,zmm0
  a4c38a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a4c391:	01 
  a4c392:	62 f1 7c 48 11 06    	vmovups ZMMWORD PTR [rsi],zmm0
  a4c398:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a4c39f:	04 
  a4c3a0:	62 f3 7d 48 19 46 06 	vextractf32x4 XMMWORD PTR [rsi+0x60],zmm0,0x3
  a4c3a7:	03 
  a4c3a8:	c5 fc 11 66 40       	vmovups YMMWORD PTR [rsi+0x40],ymm4
  a4c3ad:	62 61 7c 48 11 be 70 	vmovups ZMMWORD PTR [rsi+0x70],zmm31
  a4c3b4:	00 00 00 
  a4c3b7:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x480]
  a4c3be:	12 
  a4c3bf:	62 f3 7d 48 19 46 0d 	vextractf32x4 XMMWORD PTR [rsi+0xd0],zmm0,0x3
  a4c3c6:	03 
  a4c3c7:	62 e1 7c 28 11 8e b0 	vmovups YMMWORD PTR [rsi+0xb0],ymm17
  a4c3ce:	00 00 00 
  a4c3d1:	62 e1 7c 48 11 86 e0 	vmovups ZMMWORD PTR [rsi+0xe0],zmm16
  a4c3d8:	00 00 00 
  a4c3db:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x440]
  a4c3e2:	11 
  a4c3e3:	62 f3 7d 48 19 46 14 	vextractf32x4 XMMWORD PTR [rsi+0x140],zmm0,0x3
  a4c3ea:	03 
  a4c3eb:	c5 fc 11 ae 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm5
  a4c3f2:	00 
  a4c3f3:	62 61 7c 48 11 a6 50 	vmovups ZMMWORD PTR [rsi+0x150],zmm28
  a4c3fa:	01 00 00 
  a4c3fd:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x400]
  a4c404:	10 
  a4c405:	62 f3 7d 48 19 46 1b 	vextractf32x4 XMMWORD PTR [rsi+0x1b0],zmm0,0x3
  a4c40c:	03 
  a4c40d:	c5 fc 11 b6 90 01 00 	vmovups YMMWORD PTR [rsi+0x190],ymm6
  a4c414:	00 
  a4c415:	62 f1 7c 48 11 7e 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm7
  a4c41c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x3c0]
  a4c423:	0f 
  a4c424:	62 f3 7d 48 19 46 22 	vextractf32x4 XMMWORD PTR [rsi+0x220],zmm0,0x3
  a4c42b:	03 
  a4c42c:	c5 7c 11 ae 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm13
  a4c433:	00 
  a4c434:	62 71 7c 48 11 96 30 	vmovups ZMMWORD PTR [rsi+0x230],zmm10
  a4c43b:	02 00 00 
  a4c43e:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x380]
  a4c445:	0e 
  a4c446:	62 f3 7d 48 19 46 29 	vextractf32x4 XMMWORD PTR [rsi+0x290],zmm0,0x3
  a4c44d:	03 
  a4c44e:	62 e1 7c 28 11 9e 70 	vmovups YMMWORD PTR [rsi+0x270],ymm19
  a4c455:	02 00 00 
  a4c458:	62 e1 7c 48 11 a6 a0 	vmovups ZMMWORD PTR [rsi+0x2a0],zmm20
  a4c45f:	02 00 00 
  a4c462:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x340]
  a4c469:	0d 
  a4c46a:	62 f3 7d 48 19 46 30 	vextractf32x4 XMMWORD PTR [rsi+0x300],zmm0,0x3
  a4c471:	03 
  a4c472:	62 e1 7c 28 11 76 17 	vmovups YMMWORD PTR [rsi+0x2e0],ymm22
  a4c479:	62 71 7c 48 11 a6 10 	vmovups ZMMWORD PTR [rsi+0x310],zmm12
  a4c480:	03 00 00 
  a4c483:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x300]
  a4c48a:	0c 
  a4c48b:	62 f3 7d 48 19 46 37 	vextractf32x4 XMMWORD PTR [rsi+0x370],zmm0,0x3
  a4c492:	03 
  a4c493:	c5 7c 11 8e 50 03 00 	vmovups YMMWORD PTR [rsi+0x350],ymm9
  a4c49a:	00 
  a4c49b:	62 71 7c 48 11 5e 0e 	vmovups ZMMWORD PTR [rsi+0x380],zmm11
  a4c4a2:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x2c0]
  a4c4a9:	0b 
  a4c4aa:	62 f3 7d 48 19 46 3e 	vextractf32x4 XMMWORD PTR [rsi+0x3e0],zmm0,0x3
  a4c4b1:	03 
  a4c4b2:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a4c4b9:	ff 
  a4c4ba:	c5 fc 11 86 c0 03 00 	vmovups YMMWORD PTR [rsi+0x3c0],ymm0
  a4c4c1:	00 
  a4c4c2:	62 f1 7c 48 11 8e f0 	vmovups ZMMWORD PTR [rsi+0x3f0],zmm1
  a4c4c9:	03 00 00 
  a4c4cc:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x280]
  a4c4d3:	0a 
  a4c4d4:	62 f3 7d 48 19 46 45 	vextractf32x4 XMMWORD PTR [rsi+0x450],zmm0,0x3
  a4c4db:	03 
  a4c4dc:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a4c4e3:	c5 fc 11 86 30 04 00 	vmovups YMMWORD PTR [rsi+0x430],ymm0
  a4c4ea:	00 
  a4c4eb:	62 61 7c 48 11 9e 60 	vmovups ZMMWORD PTR [rsi+0x460],zmm27
  a4c4f2:	04 00 00 
  a4c4f5:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a4c4fc:	fe 
  a4c4fd:	62 f3 7d 48 19 46 4c 	vextractf32x4 XMMWORD PTR [rsi+0x4c0],zmm0,0x3
  a4c504:	03 
  a4c505:	62 61 7c 28 11 76 25 	vmovups YMMWORD PTR [rsi+0x4a0],ymm30
  a4c50c:	62 f1 7c 48 11 96 d0 	vmovups ZMMWORD PTR [rsi+0x4d0],zmm2
  a4c513:	04 00 00 
  a4c516:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a4c51d:	07 
  a4c51e:	62 f3 7d 48 19 46 53 	vextractf32x4 XMMWORD PTR [rsi+0x530],zmm0,0x3
  a4c525:	03 
  a4c526:	c5 7c 11 be 10 05 00 	vmovups YMMWORD PTR [rsi+0x510],ymm15
  a4c52d:	00 
  a4c52e:	62 71 7c 48 11 76 15 	vmovups ZMMWORD PTR [rsi+0x540],zmm14
  a4c535:	62 63 7d 48 19 56 5a 	vextractf32x4 XMMWORD PTR [rsi+0x5a0],zmm26,0x3
  a4c53c:	03 
  a4c53d:	62 61 7c 28 11 4e 2c 	vmovups YMMWORD PTR [rsi+0x580],ymm25
  a4c544:	62 61 7c 48 11 ae b0 	vmovups ZMMWORD PTR [rsi+0x5b0],zmm29
  a4c54b:	05 00 00 
  a4c54e:	62 e3 7d 48 19 7e 61 	vextractf32x4 XMMWORD PTR [rsi+0x610],zmm23,0x3
  a4c555:	03 
  a4c556:	62 e1 7c 28 11 96 f0 	vmovups YMMWORD PTR [rsi+0x5f0],ymm18
  a4c55d:	05 00 00 
  a4c560:	62 71 7c 48 11 86 20 	vmovups ZMMWORD PTR [rsi+0x620],zmm8
  a4c567:	06 00 00 
  a4c56a:	62 f3 7d 48 19 5e 68 	vextractf32x4 XMMWORD PTR [rsi+0x680],zmm3,0x3
  a4c571:	03 
  a4c572:	62 61 7c 28 11 46 33 	vmovups YMMWORD PTR [rsi+0x660],ymm24
  a4c579:	48 81 c4 48 08 00 00 	add    rsp,0x848
  a4c580:	c5 f8 77             	vzeroupper
  a4c583:	c3                   	ret
