
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a27300 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a27300:	48 81 ec 08 0a 00 00 	sub    rsp,0xa08
  a27307:	48 69 c2 90 06 00 00 	imul   rax,rdx,0x690
  a2730e:	31 d2                	xor    edx,edx
  a27310:	41 b0 7f             	mov    r8b,0x7f
  a27313:	c4 c1 7b 92 c8       	kmovd  k1,r8d
  a27318:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  a2731f:	00 
  a27320:	62 e1 7c 48 10 3c 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1]
  a27327:	c5 fc 10 44 17 40    	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x40]
  a2732d:	c5 f8 10 4c 17 60    	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x60]
  a27333:	c4 e3 71 21 4c 17 64 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x64],0x10
  a2733a:	10 
  a2733b:	c4 e2 79 18 54 17 68 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x68]
  a27342:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a27348:	c4 e3 71 21 4c 17 6c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x6c],0x30
  a2734f:	30 
  a27350:	c5 fb 10 54 17 70    	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0x70]
  a27356:	c4 e3 75 18 ca 01    	vinsertf128 ymm1,ymm1,xmm2,0x1
  a2735c:	62 f3 fd 48 1a c1 01 	vinsertf64x4 zmm0,zmm0,ymm1,0x1
  a27363:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a27369:	62 f1 fe 48 7f 44 24 	vmovdqu64 ZMMWORD PTR [rsp+0x700],zmm0
  a27370:	1c 
  a27371:	62 a1 7c 48 28 d7    	vmovaps zmm18,zmm23
  a27377:	62 f1 7c 48 28 2d ff 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6691ff]        # 90580 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1da30>
  a2737e:	91 66 ff 
  a27381:	62 e2 55 48 7f d0    	vpermt2ps zmm18,zmm5,zmm0
  a27387:	62 f1 7c 48 10 9c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a2738e:	f0 00 00 00 
  a27392:	c5 fc 10 84 17 30 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x130]
  a27399:	00 00 
  a2739b:	c5 f8 10 8c 17 50 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x150]
  a273a2:	00 00 
  a273a4:	c4 e3 71 21 8c 17 54 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x154],0x10
  a273ab:	01 00 00 10 
  a273af:	c4 e2 79 18 94 17 58 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x158]
  a273b6:	01 00 00 
  a273b9:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a273bf:	c4 e3 71 21 8c 17 5c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x15c],0x30
  a273c6:	01 00 00 30 
  a273ca:	c5 fb 10 94 17 60 01 	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0x160]
  a273d1:	00 00 
  a273d3:	c4 e3 75 18 ca 01    	vinsertf128 ymm1,ymm1,xmm2,0x1
  a273d9:	62 f3 fd 48 1a c1 01 	vinsertf64x4 zmm0,zmm0,ymm1,0x1
  a273e0:	62 62 fd c9 88 e8    	vexpandpd zmm29{k1}{z},zmm0
  a273e6:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a273ec:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a273f2:	62 92 55 48 7f c5    	vpermt2ps zmm0,zmm5,zmm29
  a273f8:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a273fe:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm0
  a27405:	1a 
  a27406:	62 f1 7c 48 10 a4 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x5a0]
  a2740d:	a0 05 00 00 
  a27411:	c5 fc 10 84 17 e0 05 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x5e0]
  a27418:	00 00 
  a2741a:	c5 f8 10 8c 17 00 06 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x600]
  a27421:	00 00 
  a27423:	c4 e3 71 21 8c 17 04 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x604],0x10
  a2742a:	06 00 00 10 
  a2742e:	c4 e2 79 18 94 17 08 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x608]
  a27435:	06 00 00 
  a27438:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a2743e:	c4 e3 71 21 8c 17 0c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x60c],0x30
  a27445:	06 00 00 30 
  a27449:	c5 fb 10 94 17 10 06 	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0x610]
  a27450:	00 00 
  a27452:	c4 e3 75 18 ca 01    	vinsertf128 ymm1,ymm1,xmm2,0x1
  a27458:	62 f3 fd 48 1a c1 01 	vinsertf64x4 zmm0,zmm0,ymm1,0x1
  a2745f:	62 62 fd c9 88 f8    	vexpandpd zmm31{k1}{z},zmm0
  a27465:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a2746b:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a27471:	62 92 55 48 7f c7    	vpermt2ps zmm0,zmm5,zmm31
  a27477:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm0
  a2747e:	1b 
  a2747f:	62 71 64 48 58 c0    	vaddps zmm8,zmm3,zmm0
  a27485:	62 d1 6c 40 58 c0    	vaddps zmm0,zmm18,zmm8
  a2748b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a27492:	ff 
  a27493:	c5 f8 10 84 17 40 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x240]
  a2749a:	00 00 
  a2749c:	c4 e3 79 21 84 17 44 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x244],0x10
  a274a3:	02 00 00 10 
  a274a7:	c4 e2 79 18 8c 17 48 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x248]
  a274ae:	02 00 00 
  a274b1:	62 f1 7c 48 10 94 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a274b8:	e0 01 00 00 
  a274bc:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a274c2:	c4 e3 79 21 84 17 4c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x24c],0x30
  a274c9:	02 00 00 30 
  a274cd:	c5 fc 10 8c 17 20 02 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x220]
  a274d4:	00 00 
  a274d6:	c5 fb 10 9c 17 50 02 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x250]
  a274dd:	00 00 
  a274df:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a274e5:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a274ec:	62 62 fd c9 88 c8    	vexpandpd zmm25{k1}{z},zmm0
  a274f2:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a274f8:	62 61 7c 48 28 da    	vmovaps zmm27,zmm2
  a274fe:	62 92 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm25
  a27504:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a2750b:	02 
  a2750c:	c5 f8 10 84 17 10 05 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x510]
  a27513:	00 00 
  a27515:	c4 e3 79 21 84 17 14 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x514],0x10
  a2751c:	05 00 00 10 
  a27520:	c4 e2 79 18 8c 17 18 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x518]
  a27527:	05 00 00 
  a2752a:	62 f1 7c 48 10 94 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x4b0]
  a27531:	b0 04 00 00 
  a27535:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a2753b:	c4 e3 79 21 84 17 1c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x51c],0x30
  a27542:	05 00 00 30 
  a27546:	c5 fc 10 8c 17 f0 04 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x4f0]
  a2754d:	00 00 
  a2754f:	c5 fb 10 9c 17 20 05 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x520]
  a27556:	00 00 
  a27558:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a2755e:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a27565:	62 e2 fd c9 88 e8    	vexpandpd zmm21{k1}{z},zmm0
  a2756b:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a27571:	62 e1 7c 48 28 ca    	vmovaps zmm17,zmm2
  a27577:	62 b2 55 48 7f c5    	vpermt2ps zmm0,zmm5,zmm21
  a2757d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a27584:	06 
  a27585:	c5 f8 10 84 17 30 03 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x330]
  a2758c:	00 00 
  a2758e:	c4 e3 79 21 84 17 34 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x334],0x10
  a27595:	03 00 00 10 
  a27599:	c4 e2 79 18 8c 17 38 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x338]
  a275a0:	03 00 00 
  a275a3:	62 f1 7c 48 10 a4 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a275aa:	d0 02 00 00 
  a275ae:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a275b4:	c4 e3 79 21 84 17 3c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x33c],0x30
  a275bb:	03 00 00 30 
  a275bf:	c5 fc 10 8c 17 10 03 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x310]
  a275c6:	00 00 
  a275c8:	c5 fb 10 9c 17 40 03 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x340]
  a275cf:	00 00 
  a275d1:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a275d7:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a275de:	62 72 fd c9 88 e8    	vexpandpd zmm13{k1}{z},zmm0
  a275e4:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a275ea:	62 d2 55 48 7f c5    	vpermt2ps zmm0,zmm5,zmm13
  a275f0:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a275f7:	05 
  a275f8:	c5 f8 10 84 17 20 04 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x420]
  a275ff:	00 00 
  a27601:	c4 e3 79 21 84 17 24 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x424],0x10
  a27608:	04 00 00 10 
  a2760c:	c4 e2 79 18 8c 17 28 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x428]
  a27613:	04 00 00 
  a27616:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x3c0]
  a2761d:	0f 
  a2761e:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a27624:	c4 e3 79 21 84 17 2c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x42c],0x30
  a2762b:	04 00 00 30 
  a2762f:	c5 fc 10 8c 17 00 04 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x400]
  a27636:	00 00 
  a27638:	c5 fb 10 9c 17 30 04 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x430]
  a2763f:	00 00 
  a27641:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a27647:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a2764e:	62 e2 fd c9 88 c0    	vexpandpd zmm16{k1}{z},zmm0
  a27654:	62 71 7c 48 28 da    	vmovaps zmm11,zmm2
  a2765a:	62 e1 7c 48 28 f2    	vmovaps zmm22,zmm2
  a27660:	62 32 55 48 7f d8    	vpermt2ps zmm11,zmm5,zmm16
  a27666:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm11
  a2766d:	10 
  a2766e:	c5 f8 10 84 17 a8 03 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x3a8]
  a27675:	00 00 
  a27677:	c4 e3 79 21 84 17 ac 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x3ac],0x10
  a2767e:	03 00 00 10 
  a27682:	c4 e2 79 18 8c 17 b0 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x3b0]
  a27689:	03 00 00 
  a2768c:	c5 fc 10 9c 17 88 03 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x388]
  a27693:	00 00 
  a27695:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a2769b:	c4 e3 79 21 84 17 b4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x3b4],0x30
  a276a2:	03 00 00 30 
  a276a6:	c5 fb 10 8c 17 b8 03 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x3b8]
  a276ad:	00 00 
  a276af:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a276b5:	62 f3 e5 48 1a c0 01 	vinsertf64x4 zmm0,zmm3,ymm0,0x1
  a276bc:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a276c3:	fe 
  a276c4:	c5 f8 10 84 17 98 04 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x498]
  a276cb:	00 00 
  a276cd:	c4 e3 79 21 84 17 9c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x49c],0x10
  a276d4:	04 00 00 10 
  a276d8:	c4 e2 79 18 8c 17 a0 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x4a0]
  a276df:	04 00 00 
  a276e2:	62 61 7c 48 10 84 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x438]
  a276e9:	38 04 00 00 
  a276ed:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a276f3:	c4 e3 79 21 84 17 a4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x4a4],0x30
  a276fa:	04 00 00 30 
  a276fe:	c5 fc 10 8c 17 78 04 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x478]
  a27705:	00 00 
  a27707:	62 e1 ff 08 10 a4 17 	vmovsd xmm20,QWORD PTR [rdi+rdx*1+0x4a8]
  a2770e:	a8 04 00 00 
  a27712:	62 b3 7d 28 18 c4 01 	vinsertf32x4 ymm0,ymm0,xmm20,0x1
  a27719:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a27720:	62 62 fd c9 88 e0    	vexpandpd zmm28{k1}{z},zmm0
  a27726:	c5 f8 10 84 17 b8 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x2b8]
  a2772d:	00 00 
  a2772f:	c4 e3 79 21 84 17 bc 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x2bc],0x10
  a27736:	02 00 00 10 
  a2773a:	c5 fc 10 8c 17 98 02 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x298]
  a27741:	00 00 
  a27743:	c4 e2 79 18 94 17 c0 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x2c0]
  a2774a:	02 00 00 
  a2774d:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a27753:	c4 e3 79 21 84 17 c4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x2c4],0x30
  a2775a:	02 00 00 30 
  a2775e:	c5 fb 10 94 17 c8 02 	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0x2c8]
  a27765:	00 00 
  a27767:	c4 e3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm2,0x1
  a2776d:	62 63 f5 48 1a d0 01 	vinsertf64x4 zmm26,zmm1,ymm0,0x1
  a27774:	c5 f8 10 84 17 88 05 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x588]
  a2777b:	00 00 
  a2777d:	c4 e3 79 21 84 17 8c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x58c],0x10
  a27784:	05 00 00 10 
  a27788:	c5 fc 10 8c 17 68 05 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x568]
  a2778f:	00 00 
  a27791:	c4 e2 79 18 94 17 90 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x590]
  a27798:	05 00 00 
  a2779b:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a277a1:	c4 e3 79 21 84 17 94 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x594],0x30
  a277a8:	05 00 00 30 
  a277ac:	c5 fb 10 94 17 98 05 	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0x598]
  a277b3:	00 00 
  a277b5:	62 e1 7c 08 10 a4 17 	vmovups xmm20,XMMWORD PTR [rdi+rdx*1+0x1c8]
  a277bc:	c8 01 00 00 
  a277c0:	62 73 5d 00 21 4c 17 	vinsertps xmm9,xmm20,DWORD PTR [rdi+rdx*1+0x1cc],0x10
  a277c7:	73 10 
  a277c9:	c4 62 79 18 bc 17 d0 	vbroadcastss xmm15,DWORD PTR [rdi+rdx*1+0x1d0]
  a277d0:	01 00 00 
  a277d3:	c4 e3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm2,0x1
  a277d9:	c4 c3 01 0c d1 03    	vblendps xmm2,xmm15,xmm9,0x3
  a277df:	c4 e3 69 21 94 17 d4 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x1d4],0x30
  a277e6:	01 00 00 30 
  a277ea:	62 f3 f5 48 1a d8 01 	vinsertf64x4 zmm3,zmm1,ymm0,0x1
  a277f1:	c5 fb 10 8c 17 d8 01 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x1d8]
  a277f8:	00 00 
  a277fa:	c4 e3 6d 18 c9 01    	vinsertf128 ymm1,ymm2,xmm1,0x1
  a27800:	c5 f8 10 94 17 78 06 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x678]
  a27807:	00 00 
  a27809:	c4 e3 69 21 94 17 7c 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x67c],0x10
  a27810:	06 00 00 10 
  a27814:	c4 62 79 18 8c 17 80 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0x680]
  a2781b:	06 00 00 
  a2781e:	c5 7c 10 bc 17 a8 01 	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0x1a8]
  a27825:	00 00 
  a27827:	c4 e3 31 0c d2 03    	vblendps xmm2,xmm9,xmm2,0x3
  a2782d:	c4 e3 69 21 94 17 84 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x684],0x30
  a27834:	06 00 00 30 
  a27838:	62 63 85 48 1a f1 01 	vinsertf64x4 zmm30,zmm15,ymm1,0x1
  a2783f:	c5 fb 10 8c 17 88 06 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x688]
  a27846:	00 00 
  a27848:	c4 e3 6d 18 c9 01    	vinsertf128 ymm1,ymm2,xmm1,0x1
  a2784e:	c5 f8 10 94 17 d8 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0xd8]
  a27855:	00 00 
  a27857:	c4 e3 69 21 94 17 dc 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0xdc],0x10
  a2785e:	00 00 00 10 
  a27862:	c4 62 79 18 8c 17 e0 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0xe0]
  a27869:	00 00 00 
  a2786c:	c4 e3 31 0c d2 03    	vblendps xmm2,xmm9,xmm2,0x3
  a27872:	c5 7c 10 8c 17 58 06 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x658]
  a27879:	00 00 
  a2787b:	c4 e3 69 21 94 17 e4 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0xe4],0x30
  a27882:	00 00 00 30 
  a27886:	62 f3 b5 48 1a c9 01 	vinsertf64x4 zmm1,zmm9,ymm1,0x1
  a2788d:	c5 7b 10 8c 17 e8 00 	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0xe8]
  a27894:	00 00 
  a27896:	c4 c3 6d 18 d1 01    	vinsertf128 ymm2,ymm2,xmm9,0x1
  a2789c:	c5 7c 10 8c 17 b8 00 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0xb8]
  a278a3:	00 00 
  a278a5:	62 f3 b5 48 1a d2 01 	vinsertf64x4 zmm2,zmm9,ymm2,0x1
  a278ac:	62 91 7c 48 28 c0    	vmovaps zmm0,zmm24
  a278b2:	62 92 55 48 7f c4    	vpermt2ps zmm0,zmm5,zmm28
  a278b8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a278bf:	01 
  a278c0:	62 71 7c 48 28 25 f6 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff668cf6]        # 905c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1da70>
  a278c7:	8c 66 ff 
  a278ca:	62 d2 1d 48 7f e5    	vpermt2ps zmm4,zmm12,zmm13
  a278d0:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm4
  a278d7:	08 
  a278d8:	62 e1 7c 48 10 a4 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x258]
  a278df:	58 02 00 00 
  a278e3:	62 92 fd c9 88 c2    	vexpandpd zmm0{k1}{z},zmm26
  a278e9:	62 31 7c 48 28 ee    	vmovaps zmm13,zmm22
  a278ef:	62 32 1d 48 7f e8    	vpermt2ps zmm13,zmm12,zmm16
  a278f5:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm13
  a278fc:	07 
  a278fd:	62 b1 7c 48 28 f4    	vmovaps zmm6,zmm20
  a27903:	62 f2 55 48 7f f0    	vpermt2ps zmm6,zmm5,zmm0
  a27909:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm6
  a27910:	0f 
  a27911:	62 92 1d 48 7f fd    	vpermt2ps zmm7,zmm12,zmm29
  a27917:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm7
  a2791e:	09 
  a2791f:	62 e1 7c 48 10 84 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x528]
  a27926:	28 05 00 00 
  a2792a:	62 f2 fd c9 88 db    	vexpandpd zmm3{k1}{z},zmm3
  a27930:	62 12 1d 48 7f d7    	vpermt2ps zmm10,zmm12,zmm31
  a27936:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm10
  a2793d:	0a 
  a2793e:	62 61 7c 48 10 94 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x618]
  a27945:	18 06 00 00 
  a27949:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a2794f:	62 11 7c 48 28 cb    	vmovaps zmm9,zmm27
  a27955:	62 12 1d 48 7f c9    	vpermt2ps zmm9,zmm12,zmm25
  a2795b:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm9
  a27962:	0d 
  a27963:	62 11 7c 48 28 f2    	vmovaps zmm14,zmm26
  a27969:	62 72 55 48 7f f1    	vpermt2ps zmm14,zmm5,zmm1
  a2796f:	62 71 7c 48 11 34 24 	vmovups ZMMWORD PTR [rsp],zmm14
  a27976:	62 a2 1d 48 7f cd    	vpermt2ps zmm17,zmm12,zmm21
  a2797c:	62 61 7c 48 10 8c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x78]
  a27983:	78 00 00 00 
  a27987:	62 f2 fd c9 88 d2    	vexpandpd zmm2{k1}{z},zmm2
  a2798d:	62 62 1d 48 7f d1    	vpermt2ps zmm26,zmm12,zmm1
  a27993:	62 11 7c 48 28 f9    	vmovaps zmm15,zmm25
  a27999:	62 72 55 48 7f fa    	vpermt2ps zmm15,zmm5,zmm2
  a2799f:	62 62 1d 48 7f ca    	vpermt2ps zmm25,zmm12,zmm2
  a279a5:	62 31 7c 48 28 f0    	vmovaps zmm14,zmm16
  a279ab:	62 72 55 48 7f f3    	vpermt2ps zmm14,zmm5,zmm3
  a279b1:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm14
  a279b8:	0c 
  a279b9:	62 02 1d 48 7f c4    	vpermt2ps zmm24,zmm12,zmm28
  a279bf:	62 61 7c 48 10 ac 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x168]
  a279c6:	68 01 00 00 
  a279ca:	62 92 fd c9 88 ce    	vexpandpd zmm1{k1}{z},zmm30
  a279d0:	62 e2 1d 48 7f e0    	vpermt2ps zmm20,zmm12,zmm0
  a279d6:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a279dc:	62 f2 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm1
  a279e2:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a279e8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a279ef:	0e 
  a279f0:	62 e2 1d 48 7f c3    	vpermt2ps zmm16,zmm12,zmm3
  a279f6:	62 f2 7d 48 18 15 f4 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff64dbf4]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a279fd:	db 64 ff 
  a27a00:	62 61 7c 48 28 f2    	vmovaps zmm30,zmm2
  a27a06:	62 22 3d 48 a8 f2    	vfmadd213ps zmm30,zmm8,zmm18
  a27a0c:	62 62 1d 48 7f e9    	vpermt2ps zmm29,zmm12,zmm1
  a27a12:	62 62 7d 48 18 1d bc 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff64dbbc]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a27a19:	db 64 ff 
  a27a1c:	62 01 7c 48 28 fb    	vmovaps zmm31,zmm27
  a27a22:	62 22 3d 48 ac fa    	vfnmadd213ps zmm31,zmm8,zmm18
  a27a28:	62 e2 7d 48 18 35 9a 	vbroadcastss zmm22,DWORD PTR [rip+0xffffffffff64d89a]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a27a2f:	d8 64 ff 
  a27a32:	62 c2 4d 40 bc d0    	vfnmadd231ps zmm18,zmm22,zmm8
  a27a38:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a27a3f:	06 
  a27a40:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x80]
  a27a47:	02 
  a27a48:	62 f1 7c 48 58 4c 24 	vaddps zmm1,zmm0,ZMMWORD PTR [rsp-0x40]
  a27a4f:	ff 
  a27a50:	62 22 7d 48 bc f6    	vfnmadd231ps zmm30,zmm0,zmm22
  a27a56:	62 62 7d 48 b8 fa    	vfmadd231ps zmm31,zmm0,zmm2
  a27a5c:	62 e2 25 40 bc d0    	vfnmadd231ps zmm18,zmm27,zmm0
  a27a62:	62 f1 24 48 58 44 24 	vaddps zmm0,zmm11,ZMMWORD PTR [rsp+0x140]
  a27a69:	05 
  a27a6a:	62 61 74 48 58 e0    	vaddps zmm28,zmm1,zmm0
  a27a70:	62 02 7d 48 bc f3    	vfnmadd231ps zmm30,zmm0,zmm27
  a27a76:	62 22 7d 48 bc fe    	vfnmadd231ps zmm31,zmm0,zmm22
  a27a7c:	62 e2 6d 48 b8 d0    	vfmadd231ps zmm18,zmm2,zmm0
  a27a82:	62 d1 44 48 5c ca    	vsubps zmm1,zmm7,zmm10
  a27a88:	62 b1 34 48 5c d9    	vsubps zmm3,zmm9,zmm17
  a27a8e:	62 31 7c 48 28 d1    	vmovaps zmm10,zmm17
  a27a94:	62 e2 7d 48 18 2d f2 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff64d9f2]        # 75490 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2940>
  a27a9b:	d9 64 ff 
  a27a9e:	62 31 64 48 59 cd    	vmulps zmm9,zmm3,zmm21
  a27aa4:	62 e2 7d 48 18 1d b2 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff64dbb2]        # 75660 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b10>
  a27aab:	db 64 ff 
  a27aae:	62 32 75 48 b8 cb    	vfmadd231ps zmm9,zmm1,zmm19
  a27ab4:	62 e2 7d 48 18 0d 2a 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff64db2a]        # 755e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a98>
  a27abb:	db 64 ff 
  a27abe:	62 31 74 48 59 c1    	vmulps zmm8,zmm1,zmm17
  a27ac4:	62 32 65 48 bc c3    	vfnmadd231ps zmm8,zmm3,zmm19
  a27aca:	62 b1 74 48 59 fd    	vmulps zmm7,zmm1,zmm21
  a27ad0:	62 f2 75 40 bc fb    	vfnmadd231ps zmm7,zmm17,zmm3
  a27ad6:	62 d1 5c 48 5c cd    	vsubps zmm1,zmm4,zmm13
  a27adc:	62 32 75 48 b8 c9    	vfmadd231ps zmm9,zmm1,zmm17
  a27ae2:	62 32 75 48 b8 c5    	vfmadd231ps zmm8,zmm1,zmm21
  a27ae8:	62 f2 65 40 bc f9    	vfnmadd231ps zmm7,zmm19,zmm1
  a27aee:	62 72 fd c9 88 6c 24 	vexpandpd zmm13{k1}{z},ZMMWORD PTR [rsp-0x80]
  a27af5:	f0 
  a27af6:	62 71 7c 48 10 9c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x348]
  a27afd:	48 03 00 00 
  a27b01:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a27b07:	62 f1 7c 48 28 05 6f 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff668a6f]        # 90580 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1da30>
  a27b0e:	8a 66 ff 
  a27b11:	62 d2 7d 48 7f e5    	vpermt2ps zmm4,zmm0,zmm13
  a27b17:	62 f1 4c 48 58 5c 24 	vaddps zmm3,zmm6,ZMMWORD PTR [rsp+0x40]
  a27b1e:	01 
  a27b1f:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a27b25:	62 f2 65 48 a8 f4    	vfmadd213ps zmm6,zmm3,zmm4
  a27b2b:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a27b31:	62 f2 65 48 ac cc    	vfnmadd213ps zmm1,zmm3,zmm4
  a27b37:	62 f1 5c 48 58 c3    	vaddps zmm0,zmm4,zmm3
  a27b3d:	62 f2 4d 40 bc e3    	vfnmadd231ps zmm4,zmm22,zmm3
  a27b43:	62 f1 0c 48 58 dd    	vaddps zmm3,zmm14,zmm5
  a27b49:	62 f1 7c 48 58 c3    	vaddps zmm0,zmm0,zmm3
  a27b4f:	62 b2 65 48 bc f6    	vfnmadd231ps zmm6,zmm3,zmm22
  a27b55:	62 f2 65 48 b8 ca    	vfmadd231ps zmm1,zmm3,zmm2
  a27b5b:	62 f2 25 40 bc e3    	vfnmadd231ps zmm4,zmm27,zmm3
  a27b61:	62 f1 04 48 58 1c 24 	vaddps zmm3,zmm15,ZMMWORD PTR [rsp]
  a27b68:	62 71 7c 48 58 f3    	vaddps zmm14,zmm0,zmm3
  a27b6e:	62 92 65 48 bc f3    	vfnmadd231ps zmm6,zmm3,zmm27
  a27b74:	62 b2 65 48 bc ce    	vfnmadd231ps zmm1,zmm3,zmm22
  a27b7a:	62 f2 6d 48 b8 e3    	vfmadd231ps zmm4,zmm2,zmm3
  a27b80:	62 b1 3c 40 5c dc    	vsubps zmm3,zmm24,zmm20
  a27b86:	62 91 7c 40 5c d5    	vsubps zmm2,zmm16,zmm29
  a27b8c:	62 b1 6c 48 59 ed    	vmulps zmm5,zmm2,zmm21
  a27b92:	62 b2 65 48 b8 eb    	vfmadd231ps zmm5,zmm3,zmm19
  a27b98:	62 b1 64 48 59 c1    	vmulps zmm0,zmm3,zmm17
  a27b9e:	62 b2 6d 48 bc c3    	vfnmadd231ps zmm0,zmm2,zmm19
  a27ba4:	62 b1 64 48 59 dd    	vmulps zmm3,zmm3,zmm21
  a27baa:	62 f2 75 40 bc da    	vfnmadd231ps zmm3,zmm17,zmm2
  a27bb0:	62 91 2c 40 5c d1    	vsubps zmm2,zmm26,zmm25
  a27bb6:	62 b2 6d 48 b8 e9    	vfmadd231ps zmm5,zmm2,zmm17
  a27bbc:	62 b2 6d 48 b8 c5    	vfmadd231ps zmm0,zmm2,zmm21
  a27bc2:	62 f2 65 40 bc da    	vfnmadd231ps zmm3,zmm19,zmm2
  a27bc8:	62 f1 6c 40 5c d7    	vsubps zmm2,zmm18,zmm7
  a27bce:	62 f1 6c 40 58 ff    	vaddps zmm7,zmm18,zmm7
  a27bd4:	62 e1 5c 48 5c d3    	vsubps zmm18,zmm4,zmm3
  a27bda:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a27be0:	62 d1 04 40 5c e0    	vsubps zmm4,zmm31,zmm8
  a27be6:	62 51 04 40 58 c0    	vaddps zmm8,zmm31,zmm8
  a27bec:	62 61 74 48 5c f8    	vsubps zmm31,zmm1,zmm0
  a27bf2:	62 f1 74 48 58 c0    	vaddps zmm0,zmm1,zmm0
  a27bf8:	62 d1 0c 40 58 c9    	vaddps zmm1,zmm30,zmm9
  a27bfe:	62 51 0c 40 5c c9    	vsubps zmm9,zmm30,zmm9
  a27c04:	62 61 4c 48 58 f5    	vaddps zmm30,zmm6,zmm5
  a27c0a:	62 f1 4c 48 5c ed    	vsubps zmm5,zmm6,zmm5
  a27c10:	62 01 74 48 58 de    	vaddps zmm27,zmm1,zmm30
  a27c16:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm27
  a27c1d:	19 
  a27c1e:	62 91 74 48 5c ce    	vsubps zmm1,zmm1,zmm30
  a27c24:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a27c2b:	04 
  a27c2c:	62 f1 44 48 58 cb    	vaddps zmm1,zmm7,zmm3
  a27c32:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a27c39:	fe 
  a27c3a:	62 f1 44 48 5c cb    	vsubps zmm1,zmm7,zmm3
  a27c40:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm1
  a27c47:	17 
  a27c48:	62 21 6c 48 58 f2    	vaddps zmm30,zmm2,zmm18
  a27c4e:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm30
  a27c55:	18 
  a27c56:	62 b1 6c 48 5c ca    	vsubps zmm1,zmm2,zmm18
  a27c5c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm1
  a27c63:	13 
  a27c64:	62 f1 34 48 58 cd    	vaddps zmm1,zmm9,zmm5
  a27c6a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a27c71:	03 
  a27c72:	62 f1 34 48 5c cd    	vsubps zmm1,zmm9,zmm5
  a27c78:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  a27c7f:	0b 
  a27c80:	62 f1 3c 48 58 c8    	vaddps zmm1,zmm8,zmm0
  a27c86:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm1
  a27c8d:	11 
  a27c8e:	62 f1 3c 48 5c c0    	vsubps zmm0,zmm8,zmm0
  a27c94:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a27c9b:	12 
  a27c9c:	62 91 5c 48 58 df    	vaddps zmm3,zmm4,zmm31
  a27ca2:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm3
  a27ca9:	14 
  a27caa:	62 91 5c 48 5c c7    	vsubps zmm0,zmm4,zmm31
  a27cb0:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm0
  a27cb7:	16 
  a27cb8:	62 d1 1c 40 58 fe    	vaddps zmm7,zmm28,zmm14
  a27cbe:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm7
  a27cc5:	15 
  a27cc6:	62 d1 1c 40 5c c6    	vsubps zmm0,zmm28,zmm14
  a27ccc:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a27cd3:	ff 
  a27cd4:	62 e2 1d 48 7f 7c 24 	vpermt2ps zmm23,zmm12,ZMMWORD PTR [rsp+0x700]
  a27cdb:	1c 
  a27cdc:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x240]
  a27ce3:	09 
  a27ce4:	62 71 7c 48 58 74 24 	vaddps zmm14,zmm0,ZMMWORD PTR [rsp+0x280]
  a27ceb:	0a 
  a27cec:	62 f1 2c 48 58 4c 24 	vaddps zmm1,zmm10,ZMMWORD PTR [rsp+0x340]
  a27cf3:	0d 
  a27cf4:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a27cfb:	07 
  a27cfc:	62 f1 7c 48 58 74 24 	vaddps zmm6,zmm0,ZMMWORD PTR [rsp+0x200]
  a27d03:	08 
  a27d04:	62 52 1d 48 7f dd    	vpermt2ps zmm11,zmm12,zmm13
  a27d0a:	62 b1 3c 40 58 ec    	vaddps zmm5,zmm24,zmm20
  a27d10:	62 91 7c 40 58 d5    	vaddps zmm2,zmm16,zmm29
  a27d16:	62 91 2c 40 58 e1    	vaddps zmm4,zmm26,zmm25
  a27d1c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a27d23:	05 
  a27d24:	62 71 7c 48 5c 4c 24 	vsubps zmm9,zmm0,ZMMWORD PTR [rsp+0x400]
  a27d2b:	10 
  a27d2c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x680]
  a27d33:	1a 
  a27d34:	62 71 7c 48 5c 54 24 	vsubps zmm10,zmm0,ZMMWORD PTR [rsp+0x6c0]
  a27d3b:	1b 
  a27d3c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a27d43:	02 
  a27d44:	62 71 7c 48 5c 6c 24 	vsubps zmm13,zmm0,ZMMWORD PTR [rsp+0x180]
  a27d4b:	06 
  a27d4c:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a27d52:	62 e1 7c 48 28 25 64 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff69f264]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a27d59:	f2 69 ff 
  a27d5c:	62 92 5d 40 7f c3    	vpermt2ps zmm0,zmm20,zmm27
  a27d62:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a27d68:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a27d6f:	0d 
  a27d70:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a27d77:	62 51 7c 48 5c c7    	vsubps zmm8,zmm0,zmm15
  a27d7d:	62 d1 44 40 58 c6    	vaddps zmm0,zmm23,zmm14
  a27d83:	62 f1 7c 48 58 c1    	vaddps zmm0,zmm0,zmm1
  a27d89:	62 61 7c 48 58 d6    	vaddps zmm26,zmm0,zmm6
  a27d8f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a27d96:	01 
  a27d97:	62 71 7c 48 5c 64 24 	vsubps zmm12,zmm0,ZMMWORD PTR [rsp+0x3c0]
  a27d9e:	0f 
  a27d9f:	62 b1 14 48 59 c5    	vmulps zmm0,zmm13,zmm21
  a27da5:	62 b2 2d 48 b8 c3    	vfmadd231ps zmm0,zmm10,zmm19
  a27dab:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x300]
  a27db2:	0c 
  a27db3:	62 71 44 48 5c 7c 24 	vsubps zmm15,zmm7,ZMMWORD PTR [rsp+0x380]
  a27dba:	0e 
  a27dbb:	62 b1 2c 48 59 f9    	vmulps zmm7,zmm10,zmm17
  a27dc1:	62 b2 15 48 bc fb    	vfnmadd231ps zmm7,zmm13,zmm19
  a27dc7:	62 a1 2c 48 59 c5    	vmulps zmm16,zmm10,zmm21
  a27dcd:	62 c2 75 40 bc c5    	vfnmadd231ps zmm16,zmm17,zmm13
  a27dd3:	62 62 7d 48 18 1d 17 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff64d817]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a27dda:	d8 64 ff 
  a27ddd:	62 11 7c 48 28 d3    	vmovaps zmm10,zmm27
  a27de3:	62 32 0d 48 a8 d7    	vfmadd213ps zmm10,zmm14,zmm23
  a27de9:	62 b2 35 48 b8 c1    	vfmadd231ps zmm0,zmm9,zmm17
  a27def:	62 b2 35 48 b8 fd    	vfmadd231ps zmm7,zmm9,zmm21
  a27df5:	62 c2 65 40 bc c1    	vfnmadd231ps zmm16,zmm19,zmm9
  a27dfb:	62 62 7d 48 18 05 d3 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff64d7d3]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a27e02:	d7 64 ff 
  a27e05:	62 11 7c 48 28 c8    	vmovaps zmm9,zmm24
  a27e0b:	62 32 0d 48 ac cf    	vfnmadd213ps zmm9,zmm14,zmm23
  a27e11:	62 c2 4d 40 bc fe    	vfnmadd231ps zmm23,zmm22,zmm14
  a27e17:	62 71 24 48 58 ed    	vaddps zmm13,zmm11,zmm5
  a27e1d:	62 32 75 48 bc d6    	vfnmadd231ps zmm10,zmm1,zmm22
  a27e23:	62 12 4d 48 bc d0    	vfnmadd231ps zmm10,zmm6,zmm24
  a27e29:	62 12 75 48 b8 cb    	vfmadd231ps zmm9,zmm1,zmm27
  a27e2f:	62 e2 3d 40 bc f9    	vfnmadd231ps zmm23,zmm24,zmm1
  a27e35:	62 b1 04 48 59 cd    	vmulps zmm1,zmm15,zmm21
  a27e3b:	62 b2 1d 48 b8 cb    	vfmadd231ps zmm1,zmm12,zmm19
  a27e41:	62 32 4d 48 bc ce    	vfnmadd231ps zmm9,zmm6,zmm22
  a27e47:	62 e2 25 40 b8 fe    	vfmadd231ps zmm23,zmm27,zmm6
  a27e4d:	62 b1 1c 48 59 f1    	vmulps zmm6,zmm12,zmm17
  a27e53:	62 b2 05 48 bc f3    	vfnmadd231ps zmm6,zmm15,zmm19
  a27e59:	62 31 1c 48 59 e5    	vmulps zmm12,zmm12,zmm21
  a27e5f:	62 52 75 40 bc e7    	vfnmadd231ps zmm12,zmm17,zmm15
  a27e65:	62 11 7c 48 28 f3    	vmovaps zmm14,zmm27
  a27e6b:	62 52 55 48 a8 f3    	vfmadd213ps zmm14,zmm5,zmm11
  a27e71:	62 b2 3d 48 b8 c9    	vfmadd231ps zmm1,zmm8,zmm17
  a27e77:	62 b2 3d 48 b8 f5    	vfmadd231ps zmm6,zmm8,zmm21
  a27e7d:	62 52 65 40 bc e0    	vfnmadd231ps zmm12,zmm19,zmm8
  a27e83:	62 11 7c 48 28 c0    	vmovaps zmm8,zmm24
  a27e89:	62 52 55 48 ac c3    	vfnmadd213ps zmm8,zmm5,zmm11
  a27e8f:	62 72 4d 40 bc dd    	vfnmadd231ps zmm11,zmm22,zmm5
  a27e95:	62 92 5d 40 7f de    	vpermt2ps zmm3,zmm20,zmm30
  a27e9b:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm3
  a27ea2:	0c 
  a27ea3:	62 f1 14 48 58 ea    	vaddps zmm5,zmm13,zmm2
  a27ea9:	62 32 6d 48 bc f6    	vfnmadd231ps zmm14,zmm2,zmm22
  a27eaf:	62 12 6d 48 b8 c3    	vfmadd231ps zmm8,zmm2,zmm27
  a27eb5:	62 72 3d 40 bc da    	vfnmadd231ps zmm11,zmm24,zmm2
  a27ebb:	62 e1 7c 48 28 15 3b 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff69f03b]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a27ec2:	f0 69 ff 
  a27ec5:	62 62 6d 40 7f cb    	vpermt2ps zmm25,zmm18,zmm3
  a27ecb:	62 61 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm25
  a27ed2:	62 e1 54 48 58 dc    	vaddps zmm19,zmm5,zmm4
  a27ed8:	62 12 5d 48 bc f0    	vfnmadd231ps zmm14,zmm4,zmm24
  a27ede:	62 32 5d 48 bc c6    	vfnmadd231ps zmm8,zmm4,zmm22
  a27ee4:	62 72 25 40 b8 dc    	vfmadd231ps zmm11,zmm27,zmm4
  a27eea:	62 b1 7c 40 58 d7    	vaddps zmm2,zmm16,zmm23
  a27ef0:	62 b1 44 40 5c e0    	vsubps zmm4,zmm23,zmm16
  a27ef6:	62 51 1c 48 58 eb    	vaddps zmm13,zmm12,zmm11
  a27efc:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a27f02:	62 51 44 48 58 e1    	vaddps zmm12,zmm7,zmm9
  a27f08:	62 f1 34 48 5c ff    	vsubps zmm7,zmm9,zmm7
  a27f0e:	62 51 4c 48 58 c8    	vaddps zmm9,zmm6,zmm8
  a27f14:	62 f1 3c 48 5c f6    	vsubps zmm6,zmm8,zmm6
  a27f1a:	62 71 2c 48 5c c0    	vsubps zmm8,zmm10,zmm0
  a27f20:	62 d1 7c 48 58 c2    	vaddps zmm0,zmm0,zmm10
  a27f26:	62 71 0c 48 5c d1    	vsubps zmm10,zmm14,zmm1
  a27f2c:	62 51 74 48 58 f6    	vaddps zmm14,zmm1,zmm14
  a27f32:	62 c1 3c 48 58 fa    	vaddps zmm23,zmm8,zmm10
  a27f38:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm23
  a27f3f:	07 
  a27f40:	62 c1 3c 48 5c ea    	vsubps zmm21,zmm8,zmm10
  a27f46:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm21
  a27f4d:	01 
  a27f4e:	62 51 5c 48 58 d3    	vaddps zmm10,zmm4,zmm11
  a27f54:	62 d1 5c 48 5c eb    	vsubps zmm5,zmm4,zmm11
  a27f5a:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x900],zmm5
  a27f61:	24 
  a27f62:	62 51 6c 48 58 dd    	vaddps zmm11,zmm2,zmm13
  a27f68:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm11
  a27f6f:	1f 
  a27f70:	62 51 6c 48 5c ed    	vsubps zmm13,zmm2,zmm13
  a27f76:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm13
  a27f7d:	05 
  a27f7e:	62 d1 7c 48 58 e6    	vaddps zmm4,zmm0,zmm14
  a27f84:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm4
  a27f8b:	02 
  a27f8c:	62 d1 7c 48 5c de    	vsubps zmm3,zmm0,zmm14
  a27f92:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm3
  a27f99:	23 
  a27f9a:	62 71 44 48 58 fe    	vaddps zmm15,zmm7,zmm6
  a27fa0:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm15
  a27fa7:	1d 
  a27fa8:	62 61 44 48 5c e6    	vsubps zmm28,zmm7,zmm6
  a27fae:	62 d1 1c 48 58 c9    	vaddps zmm1,zmm12,zmm9
  a27fb4:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a27fbb:	06 
  a27fbc:	62 d1 1c 48 5c f1    	vsubps zmm6,zmm12,zmm9
  a27fc2:	62 a1 2c 40 58 f3    	vaddps zmm22,zmm26,zmm19
  a27fc8:	62 31 2c 40 5c c3    	vsubps zmm8,zmm26,zmm19
  a27fce:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm8
  a27fd5:	0a 
  a27fd6:	62 61 7c 48 10 4c 24 	vmovups zmm25,ZMMWORD PTR [rsp-0x80]
  a27fdd:	fe 
  a27fde:	62 62 5d 40 7f 4c 24 	vpermt2ps zmm25,zmm20,ZMMWORD PTR [rsp+0x440]
  a27fe5:	11 
  a27fe6:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a27fed:	03 
  a27fee:	c4 41 30 57 c9       	vxorps xmm9,xmm9,xmm9
  a27ff3:	62 d2 5d 40 7f c1    	vpermt2ps zmm0,zmm20,zmm9
  a27ff9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a28000:	09 
  a28001:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a28007:	62 f2 6d 40 7f d0    	vpermt2ps zmm2,zmm18,zmm0
  a2800d:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm2
  a28014:	22 
  a28015:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0x100]
  a2801c:	04 
  a2801d:	62 61 7c 48 10 5c 24 	vmovups zmm27,ZMMWORD PTR [rsp+0x5c0]
  a28024:	17 
  a28025:	62 02 5d 40 7f c3    	vpermt2ps zmm24,zmm20,zmm27
  a2802b:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x4c0]
  a28032:	13 
  a28033:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a28039:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x2c0]
  a28040:	0b 
  a28041:	62 b2 5d 40 7f c0    	vpermt2ps zmm0,zmm20,zmm16
  a28047:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a2804e:	08 
  a2804f:	62 11 7c 48 28 e0    	vmovaps zmm12,zmm24
  a28055:	62 72 6d 40 7f e0    	vpermt2ps zmm12,zmm18,zmm0
  a2805b:	62 c1 7c 48 28 cc    	vmovaps zmm17,zmm12
  a28061:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm12
  a28068:	21 
  a28069:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x480]
  a28070:	12 
  a28071:	62 41 7c 48 28 d6    	vmovaps zmm26,zmm14
  a28077:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x580]
  a2807e:	16 
  a2807f:	62 42 5d 40 7f d4    	vpermt2ps zmm26,zmm20,zmm12
  a28085:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a2808c:	ff 
  a2808d:	62 d2 5d 40 7f c1    	vpermt2ps zmm0,zmm20,zmm9
  a28093:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm0
  a2809a:	1e 
  a2809b:	62 01 7c 48 28 fa    	vmovaps zmm31,zmm26
  a280a1:	62 62 6d 40 7f f8    	vpermt2ps zmm31,zmm18,zmm0
  a280a7:	62 a1 7c 48 28 de    	vmovaps zmm19,zmm22
  a280ad:	62 a2 5d 40 7f df    	vpermt2ps zmm19,zmm20,zmm23
  a280b3:	62 d2 5d 40 7f cb    	vpermt2ps zmm1,zmm20,zmm11
  a280b9:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x9c0],zmm1
  a280c0:	27 
  a280c1:	62 21 7c 48 28 f3    	vmovaps zmm30,zmm19
  a280c7:	62 62 6d 40 7f f1    	vpermt2ps zmm30,zmm18,zmm1
  a280cd:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a280d3:	62 52 5d 40 7f df    	vpermt2ps zmm11,zmm20,zmm15
  a280d9:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a280df:	62 d2 5d 40 7f c1    	vpermt2ps zmm0,zmm20,zmm9
  a280e5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x980],zmm0
  a280ec:	26 
  a280ed:	62 41 7c 48 28 eb    	vmovaps zmm29,zmm11
  a280f3:	62 62 6d 40 7f e8    	vpermt2ps zmm29,zmm18,zmm0
  a280f9:	62 31 7c 48 28 fd    	vmovaps zmm15,zmm21
  a280ff:	62 72 5d 40 7f fd    	vpermt2ps zmm15,zmm20,zmm5
  a28105:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a2810b:	62 f2 5d 40 7f c3    	vpermt2ps zmm0,zmm20,zmm3
  a28111:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x940],zmm0
  a28118:	25 
  a28119:	62 c1 7c 48 28 ff    	vmovaps zmm23,zmm15
  a2811f:	62 e2 6d 40 7f f8    	vpermt2ps zmm23,zmm18,zmm0
  a28125:	62 81 7c 48 28 ec    	vmovaps zmm21,zmm28
  a2812b:	62 e2 5d 40 7f ee    	vpermt2ps zmm21,zmm20,zmm6
  a28131:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a28137:	62 d1 7c 48 28 f0    	vmovaps zmm6,zmm8
  a2813d:	62 d2 5d 40 7f f1    	vpermt2ps zmm6,zmm20,zmm9
  a28143:	62 31 7c 48 28 c5    	vmovaps zmm8,zmm21
  a28149:	62 72 6d 40 7f c6    	vpermt2ps zmm8,zmm18,zmm6
  a2814f:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a28156:	62 f1 fd 48 14 e2    	vunpcklpd zmm4,zmm0,zmm2
  a2815c:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm4
  a28163:	1b 
  a28164:	62 91 f5 40 14 ef    	vunpcklpd zmm5,zmm17,zmm31
  a2816a:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm5
  a28171:	1a 
  a28172:	62 e1 7c 48 28 0d 84 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff69ec84]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a28179:	ec 69 ff 
  a2817c:	62 f2 75 40 7f e5    	vpermt2ps zmm4,zmm17,zmm5
  a28182:	62 91 8d 40 14 ed    	vunpcklpd zmm5,zmm30,zmm29
  a28188:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm5
  a2818f:	10 
  a28190:	62 d1 c5 40 14 c0    	vunpcklpd zmm0,zmm23,zmm8
  a28196:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a2819d:	0f 
  a2819e:	62 f2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm0
  a281a4:	62 71 7c 48 10 49 11 	vmovups zmm9,ZMMWORD PTR [rcx+0x440]
  a281ab:	62 71 7c 48 10 69 10 	vmovups zmm13,ZMMWORD PTR [rcx+0x400]
  a281b2:	62 d1 54 48 59 c5    	vmulps zmm0,zmm5,zmm13
  a281b8:	62 d2 5d 48 b8 c1    	vfmadd231ps zmm0,zmm4,zmm9
  a281be:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm0
  a281c5:	1c 
  a281c6:	62 d1 5c 48 59 c5    	vmulps zmm0,zmm4,zmm13
  a281cc:	62 f2 35 48 bc c5    	vfnmadd231ps zmm0,zmm9,zmm5
  a281d2:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a281d9:	0e 
  a281da:	62 f1 7c 48 28 05 9c 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff69ed9c]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a281e1:	ed 69 ff 
  a281e4:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x540]
  a281eb:	15 
  a281ec:	62 f2 7d 48 7f 54 24 	vpermt2ps zmm2,zmm0,ZMMWORD PTR [rsp+0x640]
  a281f3:	19 
  a281f4:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm2
  a281fb:	15 
  a281fc:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x500]
  a28203:	14 
  a28204:	62 f2 7d 48 7f 6c 24 	vpermt2ps zmm5,zmm0,ZMMWORD PTR [rsp+0x600]
  a2820b:	18 
  a2820c:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm5
  a28213:	14 
  a28214:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x80]
  a2821b:	fe 
  a2821c:	62 f2 7d 48 7f 5c 24 	vpermt2ps zmm3,zmm0,ZMMWORD PTR [rsp+0x440]
  a28223:	11 
  a28224:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a2822b:	fe 
  a2822c:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x100]
  a28233:	04 
  a28234:	62 92 7d 48 7f e3    	vpermt2ps zmm4,zmm0,zmm27
  a2823a:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm4
  a28241:	04 
  a28242:	62 b2 7d 48 7f f8    	vpermt2ps zmm7,zmm0,zmm16
  a28248:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm7
  a2824f:	13 
  a28250:	62 51 7c 48 28 ce    	vmovaps zmm9,zmm14
  a28256:	62 52 7d 48 7f cc    	vpermt2ps zmm9,zmm0,zmm12
  a2825c:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm9
  a28263:	12 
  a28264:	62 e2 7d 48 7f 74 24 	vpermt2ps zmm22,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a2826b:	07 
  a2826c:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x180]
  a28273:	06 
  a28274:	62 72 7d 48 7f 6c 24 	vpermt2ps zmm13,zmm0,ZMMWORD PTR [rsp+0x7c0]
  a2827b:	1f 
  a2827c:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm13
  a28283:	06 
  a28284:	62 c1 7c 48 28 c2    	vmovaps zmm16,zmm10
  a2828a:	62 e2 7d 48 7f 44 24 	vpermt2ps zmm16,zmm0,ZMMWORD PTR [rsp+0x740]
  a28291:	1d 
  a28292:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm16
  a28299:	20 
  a2829a:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0x40]
  a282a1:	01 
  a282a2:	62 e2 7d 48 7f 64 24 	vpermt2ps zmm20,zmm0,ZMMWORD PTR [rsp+0x900]
  a282a9:	24 
  a282aa:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm20
  a282b1:	01 
  a282b2:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x140]
  a282b9:	05 
  a282ba:	62 72 7d 48 7f 74 24 	vpermt2ps zmm14,zmm0,ZMMWORD PTR [rsp+0x8c0]
  a282c1:	23 
  a282c2:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm14
  a282c9:	05 
  a282ca:	62 62 7d 48 7f e1    	vpermt2ps zmm28,zmm0,zmm1
  a282d0:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a282d6:	62 72 6d 40 7f e5    	vpermt2ps zmm12,zmm18,zmm5
  a282dc:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0xc0]
  a282e3:	03 
  a282e4:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a282e8:	62 f2 7d 48 7f d1    	vpermt2ps zmm2,zmm0,zmm1
  a282ee:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a282f5:	03 
  a282f6:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a282fc:	62 72 6d 40 7f d2    	vpermt2ps zmm10,zmm18,zmm2
  a28302:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a28308:	62 f2 6d 40 7f ef    	vpermt2ps zmm5,zmm18,zmm7
  a2830e:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a28315:	ff 
  a28316:	62 f2 7d 48 7f d1    	vpermt2ps zmm2,zmm0,zmm1
  a2831c:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a28323:	ff 
  a28324:	62 d1 7c 48 28 d9    	vmovaps zmm3,zmm9
  a2832a:	62 f2 6d 40 7f da    	vpermt2ps zmm3,zmm18,zmm2
  a28330:	62 d1 9d 48 15 e2    	vunpckhpd zmm4,zmm12,zmm10
  a28336:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm4
  a2833d:	07 
  a2833e:	62 f1 d5 48 15 fb    	vunpckhpd zmm7,zmm5,zmm3
  a28344:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm7
  a2834b:	1f 
  a2834c:	62 f2 75 40 7f e7    	vpermt2ps zmm4,zmm17,zmm7
  a28352:	62 31 7c 48 28 ce    	vmovaps zmm9,zmm22
  a28358:	62 52 6d 40 7f cd    	vpermt2ps zmm9,zmm18,zmm13
  a2835e:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x80]
  a28365:	02 
  a28366:	62 f2 7d 48 7f f9    	vpermt2ps zmm7,zmm0,zmm1
  a2836c:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm7
  a28373:	02 
  a28374:	62 b1 7c 48 28 d0    	vmovaps zmm2,zmm16
  a2837a:	62 f2 6d 40 7f d7    	vpermt2ps zmm2,zmm18,zmm7
  a28380:	62 c2 6d 40 7f e6    	vpermt2ps zmm20,zmm18,zmm14
  a28386:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x280]
  a2838d:	0a 
  a2838e:	62 f2 7d 48 7f f9    	vpermt2ps zmm7,zmm0,zmm1
  a28394:	62 11 7c 48 28 f4    	vmovaps zmm14,zmm28
  a2839a:	62 72 6d 40 7f f7    	vpermt2ps zmm14,zmm18,zmm7
  a283a0:	62 e1 7c 48 28 d7    	vmovaps zmm18,zmm7
  a283a6:	62 61 b5 48 15 da    	vunpckhpd zmm27,zmm9,zmm2
  a283ac:	62 d1 dd 40 15 c6    	vunpckhpd zmm0,zmm20,zmm14
  a283b2:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm0
  a283b9:	1d 
  a283ba:	62 11 7c 48 28 eb    	vmovaps zmm13,zmm27
  a283c0:	62 72 75 40 7f e8    	vpermt2ps zmm13,zmm17,zmm0
  a283c6:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a283cd:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  a283d4:	62 f1 14 48 59 f8    	vmulps zmm7,zmm13,zmm0
  a283da:	62 f2 5d 48 b8 f9    	vfmadd231ps zmm7,zmm4,zmm1
  a283e0:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm7
  a283e7:	11 
  a283e8:	62 f1 5c 48 59 c0    	vmulps zmm0,zmm4,zmm0
  a283ee:	62 d2 75 48 bc c5    	vfnmadd231ps zmm0,zmm1,zmm13
  a283f4:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm0
  a283fb:	19 
  a283fc:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a28403:	62 f1 fd 48 15 44 24 	vunpckhpd zmm0,zmm0,ZMMWORD PTR [rsp+0x880]
  a2840a:	22 
  a2840b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm0
  a28412:	17 
  a28413:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x840]
  a2841a:	21 
  a2841b:	62 91 f5 48 15 cf    	vunpckhpd zmm1,zmm1,zmm31
  a28421:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  a28428:	0b 
  a28429:	62 91 8d 40 15 e5    	vunpckhpd zmm4,zmm30,zmm29
  a2842f:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm4
  a28436:	16 
  a28437:	62 d1 c5 40 15 f8    	vunpckhpd zmm7,zmm23,zmm8
  a2843d:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm7
  a28444:	0a 
  a28445:	62 e1 7c 48 28 05 f1 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff69e9f1]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a2844c:	e9 69 ff 
  a2844f:	62 f2 7d 40 7f c1    	vpermt2ps zmm0,zmm16,zmm1
  a28455:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a2845b:	62 f2 7d 40 7f cf    	vpermt2ps zmm1,zmm16,zmm7
  a28461:	62 f1 7c 48 10 61 17 	vmovups zmm4,ZMMWORD PTR [rcx+0x5c0]
  a28468:	62 71 7c 48 10 41 16 	vmovups zmm8,ZMMWORD PTR [rcx+0x580]
  a2846f:	62 d1 74 48 59 f8    	vmulps zmm7,zmm1,zmm8
  a28475:	62 f2 7d 48 b8 fc    	vfmadd231ps zmm7,zmm0,zmm4
  a2847b:	62 f1 7c 48 11 3c 24 	vmovups ZMMWORD PTR [rsp],zmm7
  a28482:	62 d1 7c 48 59 c0    	vmulps zmm0,zmm0,zmm8
  a28488:	62 f2 5d 48 bc c1    	vfnmadd231ps zmm0,zmm4,zmm1
  a2848e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm0
  a28495:	18 
  a28496:	62 e1 7c 48 28 3d a0 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff69eaa0]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a2849d:	ea 69 ff 
  a284a0:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x340]
  a284a7:	0d 
  a284a8:	62 f2 45 40 7f 4c 24 	vpermt2ps zmm1,zmm23,ZMMWORD PTR [rsp+0x300]
  a284af:	0c 
  a284b0:	62 62 45 40 7f 4c 24 	vpermt2ps zmm25,zmm23,ZMMWORD PTR [rsp+0x240]
  a284b7:	09 
  a284b8:	62 62 45 40 7f 44 24 	vpermt2ps zmm24,zmm23,ZMMWORD PTR [rsp+0x200]
  a284bf:	08 
  a284c0:	62 62 45 40 7f 54 24 	vpermt2ps zmm26,zmm23,ZMMWORD PTR [rsp+0x780]
  a284c7:	1e 
  a284c8:	62 91 f5 48 15 c1    	vunpckhpd zmm0,zmm1,zmm25
  a284ce:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a284d4:	62 91 bd 40 15 ca    	vunpckhpd zmm1,zmm24,zmm26
  a284da:	62 f2 75 40 7f c1    	vpermt2ps zmm0,zmm17,zmm1
  a284e0:	62 e2 45 40 7f 5c 24 	vpermt2ps zmm19,zmm23,ZMMWORD PTR [rsp+0x9c0]
  a284e7:	27 
  a284e8:	62 72 45 40 7f 5c 24 	vpermt2ps zmm11,zmm23,ZMMWORD PTR [rsp+0x980]
  a284ef:	26 
  a284f0:	62 72 45 40 7f 7c 24 	vpermt2ps zmm15,zmm23,ZMMWORD PTR [rsp+0x940]
  a284f7:	25 
  a284f8:	62 e2 45 40 7f ee    	vpermt2ps zmm21,zmm23,zmm6
  a284fe:	62 d1 e5 40 15 cb    	vunpckhpd zmm1,zmm19,zmm11
  a28504:	62 b1 85 48 15 e5    	vunpckhpd zmm4,zmm15,zmm21
  a2850a:	62 f2 75 40 7f cc    	vpermt2ps zmm1,zmm17,zmm4
  a28510:	62 f1 7c 48 10 61 1d 	vmovups zmm4,ZMMWORD PTR [rcx+0x740]
  a28517:	62 71 7c 48 10 41 1c 	vmovups zmm8,ZMMWORD PTR [rcx+0x700]
  a2851e:	62 d1 74 48 59 f0    	vmulps zmm6,zmm1,zmm8
  a28524:	62 f2 7d 48 b8 f4    	vfmadd231ps zmm6,zmm0,zmm4
  a2852a:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm6
  a28531:	0d 
  a28532:	62 d1 7c 48 59 c0    	vmulps zmm0,zmm0,zmm8
  a28538:	62 f2 5d 48 bc c1    	vfnmadd231ps zmm0,zmm4,zmm1
  a2853e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a28545:	0c 
  a28546:	62 11 c5 48 14 e9    	vunpcklpd zmm13,zmm7,zmm25
  a2854c:	62 91 bd 40 14 ca    	vunpcklpd zmm1,zmm24,zmm26
  a28552:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a28559:	08 
  a2855a:	62 d1 e5 40 14 fb    	vunpcklpd zmm7,zmm19,zmm11
  a28560:	62 b1 85 48 14 e5    	vunpcklpd zmm4,zmm15,zmm21
  a28566:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm4
  a2856d:	1e 
  a2856e:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a28574:	62 f2 7d 40 7f c1    	vpermt2ps zmm0,zmm16,zmm1
  a2857a:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a28580:	62 f2 7d 40 7f cc    	vpermt2ps zmm1,zmm16,zmm4
  a28586:	62 71 7c 48 10 59 1b 	vmovups zmm11,ZMMWORD PTR [rcx+0x6c0]
  a2858d:	62 71 7c 48 10 79 1a 	vmovups zmm15,ZMMWORD PTR [rcx+0x680]
  a28594:	62 d1 74 48 59 e7    	vmulps zmm4,zmm1,zmm15
  a2859a:	62 d2 7d 48 b8 e3    	vfmadd231ps zmm4,zmm0,zmm11
  a285a0:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm4
  a285a7:	09 
  a285a8:	62 41 7c 48 59 f7    	vmulps zmm30,zmm0,zmm15
  a285ae:	62 62 25 48 bc f1    	vfnmadd231ps zmm30,zmm11,zmm1
  a285b4:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x540]
  a285bb:	15 
  a285bc:	62 f2 45 40 7f 64 24 	vpermt2ps zmm4,zmm23,ZMMWORD PTR [rsp+0x500]
  a285c3:	14 
  a285c4:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp-0x80]
  a285cb:	fe 
  a285cc:	62 72 45 40 7f 5c 24 	vpermt2ps zmm11,zmm23,ZMMWORD PTR [rsp+0xc0]
  a285d3:	03 
  a285d4:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a285db:	04 
  a285dc:	62 f2 45 40 7f 4c 24 	vpermt2ps zmm1,zmm23,ZMMWORD PTR [rsp+0x4c0]
  a285e3:	13 
  a285e4:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x480]
  a285eb:	12 
  a285ec:	62 72 45 40 7f 7c 24 	vpermt2ps zmm15,zmm23,ZMMWORD PTR [rsp-0x40]
  a285f3:	ff 
  a285f4:	62 e2 45 40 7f 74 24 	vpermt2ps zmm22,zmm23,ZMMWORD PTR [rsp+0x180]
  a285fb:	06 
  a285fc:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x800]
  a28603:	20 
  a28604:	62 e2 45 40 7f 4c 24 	vpermt2ps zmm17,zmm23,ZMMWORD PTR [rsp+0x80]
  a2860b:	02 
  a2860c:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x40]
  a28613:	01 
  a28614:	62 e2 45 40 7f 5c 24 	vpermt2ps zmm19,zmm23,ZMMWORD PTR [rsp+0x140]
  a2861b:	05 
  a2861c:	62 22 45 40 7f e2    	vpermt2ps zmm28,zmm23,zmm18
  a28622:	62 d1 dd 48 15 c3    	vunpckhpd zmm0,zmm4,zmm11
  a28628:	62 d1 f5 48 15 f7    	vunpckhpd zmm6,zmm1,zmm15
  a2862e:	62 c1 7c 48 28 ef    	vmovaps zmm21,zmm15
  a28634:	62 61 7c 48 28 e9    	vmovaps zmm29,zmm1
  a2863a:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a28640:	62 f2 7d 40 7f ce    	vpermt2ps zmm1,zmm16,zmm6
  a28646:	62 21 cd 40 15 f9    	vunpckhpd zmm31,zmm22,zmm17
  a2864c:	62 01 e5 40 15 d4    	vunpckhpd zmm26,zmm19,zmm28
  a28652:	62 11 7c 48 28 ff    	vmovaps zmm15,zmm31
  a28658:	62 12 7d 40 7f fa    	vpermt2ps zmm15,zmm16,zmm26
  a2865e:	62 61 7c 48 10 41 0f 	vmovups zmm24,ZMMWORD PTR [rcx+0x3c0]
  a28665:	62 e1 7c 48 10 79 0e 	vmovups zmm23,ZMMWORD PTR [rcx+0x380]
  a2866c:	62 a1 04 48 59 d7    	vmulps zmm18,zmm15,zmm23
  a28672:	62 82 75 48 b8 d0    	vfmadd231ps zmm18,zmm1,zmm24
  a28678:	62 a1 74 48 59 ff    	vmulps zmm23,zmm1,zmm23
  a2867e:	62 c2 3d 40 bc ff    	vfnmadd231ps zmm23,zmm24,zmm15
  a28684:	62 d1 9d 48 14 ca    	vunpcklpd zmm1,zmm12,zmm10
  a2868a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a28691:	ff 
  a28692:	62 f1 d5 48 14 db    	vunpcklpd zmm3,zmm5,zmm3
  a28698:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a2869f:	01 
  a286a0:	62 f1 b5 48 14 d2    	vunpcklpd zmm2,zmm9,zmm2
  a286a6:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a286ad:	fe 
  a286ae:	62 41 dd 40 14 c6    	vunpcklpd zmm24,zmm20,zmm14
  a286b4:	62 f2 7d 40 7f cb    	vpermt2ps zmm1,zmm16,zmm3
  a286ba:	62 92 7d 40 7f d0    	vpermt2ps zmm2,zmm16,zmm24
  a286c0:	62 f1 7c 48 10 59 02 	vmovups zmm3,ZMMWORD PTR [rcx+0x80]
  a286c7:	62 f1 7c 48 10 69 03 	vmovups zmm5,ZMMWORD PTR [rcx+0xc0]
  a286ce:	62 61 6c 48 59 cb    	vmulps zmm25,zmm2,zmm3
  a286d4:	62 62 75 48 b8 cd    	vfmadd231ps zmm25,zmm1,zmm5
  a286da:	62 71 74 48 59 f3    	vmulps zmm14,zmm1,zmm3
  a286e0:	62 72 55 48 bc f2    	vfnmadd231ps zmm14,zmm5,zmm2
  a286e6:	62 d1 dd 48 14 cb    	vunpcklpd zmm1,zmm4,zmm11
  a286ec:	62 b1 95 40 14 ed    	vunpcklpd zmm5,zmm29,zmm21
  a286f2:	62 b1 cd 40 14 d9    	vunpcklpd zmm3,zmm22,zmm17
  a286f8:	62 91 e5 40 14 e4    	vunpcklpd zmm4,zmm19,zmm28
  a286fe:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a28704:	62 71 7c 48 28 15 f2 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff69e6f2]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2870b:	e6 69 ff 
  a2870e:	62 f2 2d 48 7f cd    	vpermt2ps zmm1,zmm10,zmm5
  a28714:	62 71 7c 48 28 fb    	vmovaps zmm15,zmm3
  a2871a:	62 f2 2d 48 7f dc    	vpermt2ps zmm3,zmm10,zmm4
  a28720:	62 71 7c 48 10 49 09 	vmovups zmm9,ZMMWORD PTR [rcx+0x240]
  a28727:	62 71 7c 48 10 61 08 	vmovups zmm12,ZMMWORD PTR [rcx+0x200]
  a2872e:	62 c1 64 48 59 ec    	vmulps zmm21,zmm3,zmm12
  a28734:	62 c2 75 48 b8 e9    	vfmadd231ps zmm21,zmm1,zmm9
  a2873a:	62 c1 74 48 59 cc    	vmulps zmm17,zmm1,zmm12
  a28740:	62 e2 35 48 bc cb    	vfnmadd231ps zmm17,zmm9,zmm3
  a28746:	62 02 2d 48 7f fa    	vpermt2ps zmm31,zmm10,zmm26
  a2874c:	62 f2 2d 48 7f c6    	vpermt2ps zmm0,zmm10,zmm6
  a28752:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  a28759:	62 f1 7c 48 10 59 0c 	vmovups zmm3,ZMMWORD PTR [rcx+0x300]
  a28760:	62 61 7c 48 59 d3    	vmulps zmm26,zmm0,zmm3
  a28766:	62 62 05 40 bc d1    	vfnmadd231ps zmm26,zmm31,zmm1
  a2876c:	62 61 04 40 59 fb    	vmulps zmm31,zmm31,zmm3
  a28772:	62 62 75 48 b8 f8    	vfmadd231ps zmm31,zmm1,zmm0
  a28778:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x400]
  a2877f:	10 
  a28780:	62 72 7d 40 7f 4c 24 	vpermt2ps zmm9,zmm16,ZMMWORD PTR [rsp+0x3c0]
  a28787:	0f 
  a28788:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x6c0]
  a2878f:	1b 
  a28790:	62 f2 7d 40 7f 5c 24 	vpermt2ps zmm3,zmm16,ZMMWORD PTR [rsp+0x680]
  a28797:	1a 
  a28798:	62 f1 7c 48 10 41 13 	vmovups zmm0,ZMMWORD PTR [rcx+0x4c0]
  a2879f:	62 f1 7c 48 10 49 12 	vmovups zmm1,ZMMWORD PTR [rcx+0x480]
  a287a6:	62 61 64 48 59 e9    	vmulps zmm29,zmm3,zmm1
  a287ac:	62 62 35 48 bc e8    	vfnmadd231ps zmm29,zmm9,zmm0
  a287b2:	62 71 34 48 59 d9    	vmulps zmm11,zmm9,zmm1
  a287b8:	62 72 7d 48 b8 db    	vfmadd231ps zmm11,zmm0,zmm3
  a287be:	62 62 7d 40 7f 5c 24 	vpermt2ps zmm27,zmm16,ZMMWORD PTR [rsp+0x740]
  a287c5:	1d 
  a287c6:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x1c0]
  a287cd:	07 
  a287ce:	62 f2 7d 40 7f 74 24 	vpermt2ps zmm6,zmm16,ZMMWORD PTR [rsp+0x7c0]
  a287d5:	1f 
  a287d6:	62 f1 7c 48 10 41 07 	vmovups zmm0,ZMMWORD PTR [rcx+0x1c0]
  a287dd:	62 f1 7c 48 10 49 06 	vmovups zmm1,ZMMWORD PTR [rcx+0x180]
  a287e4:	62 e1 4c 48 59 f1    	vmulps zmm22,zmm6,zmm1
  a287ea:	62 e2 25 40 bc f0    	vfnmadd231ps zmm22,zmm27,zmm0
  a287f0:	62 71 24 40 59 c1    	vmulps zmm8,zmm27,zmm1
  a287f6:	62 72 7d 48 b8 c6    	vfmadd231ps zmm8,zmm0,zmm6
  a287fc:	62 d1 7c 48 28 f2    	vmovaps zmm6,zmm10
  a28802:	62 f2 2d 48 7f 7c 24 	vpermt2ps zmm7,zmm10,ZMMWORD PTR [rsp+0x780]
  a28809:	1e 
  a2880a:	62 72 2d 48 7f 6c 24 	vpermt2ps zmm13,zmm10,ZMMWORD PTR [rsp+0x200]
  a28811:	08 
  a28812:	62 71 7c 48 10 51 19 	vmovups zmm10,ZMMWORD PTR [rcx+0x640]
  a28819:	62 f1 7c 48 10 41 18 	vmovups zmm0,ZMMWORD PTR [rcx+0x600]
  a28820:	62 e1 14 48 59 e0    	vmulps zmm20,zmm13,zmm0
  a28826:	62 c2 45 48 bc e2    	vfnmadd231ps zmm20,zmm7,zmm10
  a2882c:	62 f1 44 48 59 d8    	vmulps zmm3,zmm7,zmm0
  a28832:	62 d2 2d 48 b8 dd    	vfmadd231ps zmm3,zmm10,zmm13
  a28838:	62 f2 7d 40 7f d5    	vpermt2ps zmm2,zmm16,zmm5
  a2883e:	62 72 7d 40 7f fc    	vpermt2ps zmm15,zmm16,zmm4
  a28844:	62 f1 7c 48 10 61 0b 	vmovups zmm4,ZMMWORD PTR [rcx+0x2c0]
  a2884b:	62 f1 7c 48 10 69 0a 	vmovups zmm5,ZMMWORD PTR [rcx+0x280]
  a28852:	62 f1 04 48 59 c5    	vmulps zmm0,zmm15,zmm5
  a28858:	62 f2 6d 48 b8 c4    	vfmadd231ps zmm0,zmm2,zmm4
  a2885e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a28865:	12 
  a28866:	62 f1 6c 48 59 d5    	vmulps zmm2,zmm2,zmm5
  a2886c:	62 d2 5d 48 bc d7    	vfnmadd231ps zmm2,zmm4,zmm15
  a28872:	62 61 7c 48 28 da    	vmovaps zmm27,zmm2
  a28878:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm2
  a2887f:	14 
  a28880:	62 f1 7c 48 28 d6    	vmovaps zmm2,zmm6
  a28886:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x5c0]
  a2888d:	17 
  a2888e:	62 f2 4d 48 7f 6c 24 	vpermt2ps zmm5,zmm6,ZMMWORD PTR [rsp+0x2c0]
  a28895:	0b 
  a28896:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x580]
  a2889d:	16 
  a2889e:	62 f2 6d 48 7f 74 24 	vpermt2ps zmm6,zmm2,ZMMWORD PTR [rsp+0x280]
  a288a5:	0a 
  a288a6:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a288ac:	62 f1 7c 48 10 51 15 	vmovups zmm2,ZMMWORD PTR [rcx+0x540]
  a288b3:	62 f1 7c 48 10 61 14 	vmovups zmm4,ZMMWORD PTR [rcx+0x500]
  a288ba:	62 71 4c 48 59 d4    	vmulps zmm10,zmm6,zmm4
  a288c0:	62 72 55 48 b8 d2    	vfmadd231ps zmm10,zmm5,zmm2
  a288c6:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm10
  a288cd:	17 
  a288ce:	62 f1 54 48 59 cc    	vmulps zmm1,zmm5,zmm4
  a288d4:	62 f2 6d 48 bc ce    	vfnmadd231ps zmm1,zmm2,zmm6
  a288da:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a288e0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a288e7:	04 
  a288e8:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a288ef:	fe 
  a288f0:	62 92 7d 48 7f d0    	vpermt2ps zmm2,zmm0,zmm24
  a288f6:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a288fd:	fe 
  a288fe:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x600]
  a28905:	18 
  a28906:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x300]
  a2890d:	0c 
  a2890e:	62 61 6c 48 5c c4    	vsubps zmm24,zmm2,zmm4
  a28914:	62 f1 6c 48 58 f4    	vaddps zmm6,zmm2,zmm4
  a2891a:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm6
  a28921:	15 
  a28922:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x380]
  a28929:	0e 
  a2892a:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x640]
  a28931:	19 
  a28932:	62 71 6c 48 5c fd    	vsubps zmm15,zmm2,zmm5
  a28938:	62 71 6c 48 58 cd    	vaddps zmm9,zmm2,zmm5
  a2893e:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm9
  a28945:	03 
  a28946:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x700]
  a2894d:	1c 
  a2894e:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x440]
  a28955:	11 
  a28956:	62 f1 6c 48 58 c5    	vaddps zmm0,zmm2,zmm5
  a2895c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a28963:	02 
  a28964:	62 71 6c 48 5c e5    	vsubps zmm12,zmm2,zmm5
  a2896a:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm12
  a28971:	0b 
  a28972:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  a28979:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x340]
  a28980:	0d 
  a28981:	62 f1 6c 48 58 e5    	vaddps zmm4,zmm2,zmm5
  a28987:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm4
  a2898e:	0c 
  a2898f:	62 f1 6c 48 5c fd    	vsubps zmm7,zmm2,zmm5
  a28995:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm7
  a2899c:	0f 
  a2899d:	62 a1 0c 48 5c d9    	vsubps zmm19,zmm14,zmm17
  a289a3:	62 a1 0c 48 58 c1    	vaddps zmm16,zmm14,zmm17
  a289a9:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm16
  a289b0:	13 
  a289b1:	62 b1 0c 40 5c ef    	vsubps zmm5,zmm30,zmm23
  a289b7:	62 21 0c 40 58 f7    	vaddps zmm30,zmm30,zmm23
  a289bd:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x240]
  a289c4:	09 
  a289c5:	62 a1 6c 48 58 ca    	vaddps zmm17,zmm2,zmm18
  a289cb:	62 a1 6c 48 5c d2    	vsubps zmm18,zmm2,zmm18
  a289d1:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm18
  a289d8:	0e 
  a289d9:	62 b1 34 40 58 cd    	vaddps zmm1,zmm25,zmm21
  a289df:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm1
  a289e6:	18 
  a289e7:	62 b1 34 40 5c c5    	vsubps zmm0,zmm25,zmm21
  a289ed:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a289f4:	10 
  a289f5:	62 62 7d 48 18 0d e9 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff64cce9]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a289fc:	cc 64 ff 
  a289ff:	62 81 7c 48 28 e9    	vmovaps zmm21,zmm25
  a28a05:	62 82 35 48 a8 eb    	vfmadd213ps zmm21,zmm9,zmm27
  a28a0b:	62 62 7d 48 18 1d 2f 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff64cc2f]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a28a12:	cc 64 ff 
  a28a15:	62 82 4d 48 bc eb    	vfnmadd231ps zmm21,zmm6,zmm27
  a28a1b:	62 f2 7d 48 18 15 33 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff64cd33]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a28a22:	cd 64 ff 
  a28a25:	62 f1 44 48 59 f2    	vmulps zmm6,zmm7,zmm2
  a28a2b:	62 72 7d 48 18 0d 6b 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff64c96b]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a28a32:	c9 64 ff 
  a28a35:	62 d2 1d 48 b8 f1    	vfmadd231ps zmm6,zmm12,zmm9
  a28a3b:	62 f1 7c 48 11 34 24 	vmovups ZMMWORD PTR [rsp],zmm6
  a28a42:	62 81 7c 48 28 f9    	vmovaps zmm23,zmm25
  a28a48:	62 82 0d 40 a8 fc    	vfmadd213ps zmm23,zmm30,zmm28
  a28a4e:	62 11 7c 48 28 e6    	vmovaps zmm12,zmm30
  a28a54:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm30
  a28a5b:	0d 
  a28a5c:	62 82 7d 40 bc fb    	vfnmadd231ps zmm23,zmm16,zmm27
  a28a62:	62 61 7c 48 59 e2    	vmulps zmm28,zmm0,zmm2
  a28a68:	62 42 6d 40 b8 e1    	vfmadd231ps zmm28,zmm18,zmm9
  a28a6e:	62 f1 54 40 5c f6    	vsubps zmm6,zmm21,zmm6
  a28a74:	62 81 44 40 5c d4    	vsubps zmm18,zmm23,zmm28
  a28a7a:	62 b1 4c 48 5c fa    	vsubps zmm7,zmm6,zmm18
  a28a80:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm7
  a28a87:	06 
  a28a88:	62 b1 4c 48 58 f2    	vaddps zmm6,zmm6,zmm18
  a28a8e:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm6
  a28a95:	05 
  a28a96:	62 91 2c 40 5c fd    	vsubps zmm7,zmm26,zmm29
  a28a9c:	62 91 2c 40 58 f5    	vaddps zmm6,zmm26,zmm29
  a28aa2:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm6
  a28aa9:	1c 
  a28aaa:	62 21 4c 40 5c d4    	vsubps zmm26,zmm22,zmm20
  a28ab0:	62 b1 4c 40 58 f4    	vaddps zmm6,zmm22,zmm20
  a28ab6:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm6
  a28abd:	1b 
  a28abe:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp-0x40]
  a28ac5:	ff 
  a28ac6:	62 f1 7c 48 28 05 30 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff69e330]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a28acd:	e3 69 ff 
  a28ad0:	62 f2 7d 48 7f 74 24 	vpermt2ps zmm6,zmm0,ZMMWORD PTR [rsp+0x40]
  a28ad7:	01 
  a28ad8:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm6
  a28adf:	ff 
  a28ae0:	62 f1 3c 48 58 f3    	vaddps zmm6,zmm8,zmm3
  a28ae6:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm6
  a28aed:	1a 
  a28aee:	62 e1 3c 48 5c c3    	vsubps zmm16,zmm8,zmm3
  a28af4:	62 d1 04 40 58 db    	vaddps zmm3,zmm31,zmm11
  a28afa:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm3
  a28b01:	19 
  a28b02:	62 d1 04 40 5c db    	vsubps zmm3,zmm31,zmm11
  a28b08:	62 01 7c 48 28 e9    	vmovaps zmm29,zmm25
  a28b0e:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0x480]
  a28b15:	12 
  a28b16:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x80]
  a28b1d:	02 
  a28b1e:	62 22 0d 48 a8 ec    	vfmadd213ps zmm29,zmm14,zmm20
  a28b24:	62 02 5d 48 bc eb    	vfnmadd231ps zmm29,zmm4,zmm27
  a28b2a:	62 61 3c 40 59 f2    	vmulps zmm30,zmm24,zmm2
  a28b30:	62 42 05 48 b8 f1    	vfmadd231ps zmm30,zmm15,zmm9
  a28b36:	62 01 7c 48 28 f9    	vmovaps zmm31,zmm25
  a28b3c:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm17
  a28b43:	07 
  a28b44:	62 42 75 40 a8 fa    	vfmadd213ps zmm31,zmm17,zmm10
  a28b4a:	62 02 75 48 bc fb    	vfnmadd231ps zmm31,zmm1,zmm27
  a28b50:	62 e1 64 40 59 f2    	vmulps zmm22,zmm19,zmm2
  a28b56:	62 c2 55 48 b8 f1    	vfmadd231ps zmm22,zmm5,zmm9
  a28b5c:	62 91 14 40 58 c6    	vaddps zmm0,zmm29,zmm30
  a28b62:	62 b1 04 40 58 f6    	vaddps zmm6,zmm31,zmm22
  a28b68:	62 f1 7c 48 58 ce    	vaddps zmm1,zmm0,zmm6
  a28b6e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm1
  a28b75:	11 
  a28b76:	62 f1 7c 48 5c c6    	vsubps zmm0,zmm0,zmm6
  a28b7c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a28b83:	01 
  a28b84:	62 71 04 48 59 d2    	vmulps zmm10,zmm15,zmm2
  a28b8a:	62 12 35 48 bc d0    	vfnmadd231ps zmm10,zmm9,zmm24
  a28b90:	62 f1 54 48 59 e2    	vmulps zmm4,zmm5,zmm2
  a28b96:	62 b2 35 48 bc e3    	vfnmadd231ps zmm4,zmm9,zmm19
  a28b9c:	62 71 44 48 59 ea    	vmulps zmm13,zmm7,zmm2
  a28ba2:	62 52 2d 40 b8 e9    	vfmadd231ps zmm13,zmm26,zmm9
  a28ba8:	62 e1 2c 40 59 d2    	vmulps zmm18,zmm26,zmm2
  a28bae:	62 e2 35 48 bc d7    	vfnmadd231ps zmm18,zmm9,zmm7
  a28bb4:	62 f1 6c 48 59 7c 24 	vmulps zmm7,zmm2,ZMMWORD PTR [rsp+0x2c0]
  a28bbb:	0b 
  a28bbc:	62 f2 35 48 bc 7c 24 	vfnmadd231ps zmm7,zmm9,ZMMWORD PTR [rsp+0x3c0]
  a28bc3:	0f 
  a28bc4:	62 71 6c 48 59 44 24 	vmulps zmm8,zmm2,ZMMWORD PTR [rsp+0x380]
  a28bcb:	0e 
  a28bcc:	62 72 35 48 bc 44 24 	vfnmadd231ps zmm8,zmm9,ZMMWORD PTR [rsp+0x400]
  a28bd3:	10 
  a28bd4:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a28bda:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x500]
  a28be1:	14 
  a28be2:	62 f2 7d 48 9c 4c 24 	vfnmadd132ps zmm1,zmm0,ZMMWORD PTR [rsp+0xc0]
  a28be9:	03 
  a28bea:	62 f2 35 40 b8 4c 24 	vfmadd231ps zmm1,zmm25,ZMMWORD PTR [rsp+0x540]
  a28bf1:	15 
  a28bf2:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a28bf8:	62 f2 1d 48 ac 44 24 	vfnmadd213ps zmm0,zmm12,ZMMWORD PTR [rsp+0x100]
  a28bff:	04 
  a28c00:	62 f2 35 40 b8 44 24 	vfmadd231ps zmm0,zmm25,ZMMWORD PTR [rsp+0x4c0]
  a28c07:	13 
  a28c08:	62 71 74 48 5c e7    	vsubps zmm12,zmm1,zmm7
  a28c0e:	62 c1 7c 48 5c d8    	vsubps zmm19,zmm0,zmm8
  a28c14:	62 b1 1c 48 5c eb    	vsubps zmm5,zmm12,zmm19
  a28c1a:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm5
  a28c21:	0f 
  a28c22:	62 b1 1c 48 58 eb    	vaddps zmm5,zmm12,zmm19
  a28c28:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm5
  a28c2f:	10 
  a28c30:	62 f1 64 48 59 f2    	vmulps zmm6,zmm3,zmm2
  a28c36:	62 d2 7d 40 b8 f1    	vfmadd231ps zmm6,zmm16,zmm9
  a28c3c:	62 f1 7c 40 59 d2    	vmulps zmm2,zmm16,zmm2
  a28c42:	62 f2 35 48 bc d3    	vfnmadd231ps zmm2,zmm9,zmm3
  a28c48:	62 11 7c 48 28 db    	vmovaps zmm11,zmm27
  a28c4e:	62 32 0d 48 ac dc    	vfnmadd213ps zmm11,zmm14,zmm20
  a28c54:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0x300]
  a28c5b:	0c 
  a28c5c:	62 12 3d 40 b8 d9    	vfmadd231ps zmm11,zmm24,zmm25
  a28c62:	62 81 7c 48 28 c3    	vmovaps zmm16,zmm27
  a28c68:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0x5c0]
  a28c6f:	17 
  a28c70:	62 a2 75 40 ac c4    	vfnmadd213ps zmm16,zmm17,zmm20
  a28c76:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x600]
  a28c7d:	18 
  a28c7e:	62 82 0d 48 b8 c1    	vfmadd231ps zmm16,zmm14,zmm25
  a28c84:	62 51 24 48 58 e2    	vaddps zmm12,zmm11,zmm10
  a28c8a:	62 e1 7c 40 58 dc    	vaddps zmm19,zmm16,zmm4
  a28c90:	62 b1 1c 48 58 db    	vaddps zmm3,zmm12,zmm19
  a28c96:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm3
  a28c9d:	0b 
  a28c9e:	62 a1 1c 48 5c cb    	vsubps zmm17,zmm12,zmm19
  a28ca4:	62 11 7c 48 28 e3    	vmovaps zmm12,zmm27
  a28caa:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp-0x80]
  a28cb1:	fe 
  a28cb2:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x680]
  a28cb9:	1a 
  a28cba:	62 52 65 48 ac e1    	vfnmadd213ps zmm12,zmm3,zmm9
  a28cc0:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x640]
  a28cc7:	19 
  a28cc8:	62 12 55 48 b8 e1    	vfmadd231ps zmm12,zmm5,zmm25
  a28cce:	62 51 6c 40 58 fc    	vaddps zmm15,zmm18,zmm12
  a28cd4:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm15
  a28cdb:	09 
  a28cdc:	62 21 1c 48 5c d2    	vsubps zmm26,zmm12,zmm18
  a28ce2:	62 51 24 48 5c d2    	vsubps zmm10,zmm11,zmm10
  a28ce8:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm10
  a28cef:	16 
  a28cf0:	62 f1 7c 40 5c e4    	vsubps zmm4,zmm16,zmm4
  a28cf6:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm4
  a28cfd:	0a 
  a28cfe:	62 91 7c 48 28 e3    	vmovaps zmm4,zmm27
  a28d04:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp-0x40]
  a28d0b:	ff 
  a28d0c:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x6c0]
  a28d13:	1b 
  a28d14:	62 b2 05 48 ac e0    	vfnmadd213ps zmm4,zmm15,zmm16
  a28d1a:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x700]
  a28d21:	1c 
  a28d22:	62 92 2d 48 b8 e1    	vfmadd231ps zmm4,zmm10,zmm25
  a28d28:	62 71 5c 48 5c da    	vsubps zmm11,zmm4,zmm2
  a28d2e:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm11
  a28d35:	08 
  a28d36:	62 e1 5c 48 58 da    	vaddps zmm19,zmm4,zmm2
  a28d3c:	62 e1 74 48 58 d7    	vaddps zmm18,zmm1,zmm7
  a28d42:	62 51 7c 48 58 d8    	vaddps zmm11,zmm0,zmm8
  a28d48:	62 91 14 40 5c c6    	vsubps zmm0,zmm29,zmm30
  a28d4e:	62 b1 04 40 5c d6    	vsubps zmm2,zmm31,zmm22
  a28d54:	62 91 7c 48 28 c9    	vmovaps zmm1,zmm25
  a28d5a:	62 d2 65 48 a8 c9    	vfmadd213ps zmm1,zmm3,zmm9
  a28d60:	62 61 7c 48 28 eb    	vmovaps zmm29,zmm3
  a28d66:	62 d1 7c 48 28 e1    	vmovaps zmm4,zmm9
  a28d6c:	62 92 55 48 bc cb    	vfnmadd231ps zmm1,zmm5,zmm27
  a28d72:	62 f1 14 48 58 f9    	vaddps zmm7,zmm13,zmm1
  a28d78:	62 51 74 48 5c e5    	vsubps zmm12,zmm1,zmm13
  a28d7e:	62 71 54 40 58 04 24 	vaddps zmm8,zmm21,ZMMWORD PTR [rsp]
  a28d85:	62 11 44 40 58 cc    	vaddps zmm9,zmm23,zmm28
  a28d8b:	62 d1 3c 48 5c c9    	vsubps zmm1,zmm8,zmm9
  a28d91:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a28d98:	62 51 3c 48 58 c1    	vaddps zmm8,zmm8,zmm9
  a28d9e:	62 22 05 48 a8 c8    	vfmadd213ps zmm25,zmm15,zmm16
  a28da4:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  a28daa:	62 02 2d 48 bc cb    	vfnmadd231ps zmm25,zmm10,zmm27
  a28db0:	62 71 34 40 5c d6    	vsubps zmm10,zmm25,zmm6
  a28db6:	62 61 34 40 58 f6    	vaddps zmm30,zmm25,zmm6
  a28dbc:	62 f1 7c 48 58 da    	vaddps zmm3,zmm0,zmm2
  a28dc2:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a28dc8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a28dcf:	0e 
  a28dd0:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x480]
  a28dd7:	12 
  a28dd8:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x80]
  a28ddf:	02 
  a28de0:	62 91 7c 48 58 c0    	vaddps zmm0,zmm0,zmm24
  a28de6:	62 f1 5c 40 58 54 24 	vaddps zmm2,zmm20,ZMMWORD PTR [rsp+0x1c0]
  a28ded:	07 
  a28dee:	62 d1 6c 48 58 d6    	vaddps zmm2,zmm2,zmm14
  a28df4:	62 71 14 40 58 cc    	vaddps zmm9,zmm29,zmm4
  a28dfa:	62 c1 54 48 58 e1    	vaddps zmm20,zmm5,zmm9
  a28e00:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x500]
  a28e07:	14 
  a28e08:	62 71 5c 48 58 4c 24 	vaddps zmm9,zmm4,ZMMWORD PTR [rsp+0xc0]
  a28e0f:	03 
  a28e10:	62 71 34 48 58 4c 24 	vaddps zmm9,zmm9,ZMMWORD PTR [rsp+0x540]
  a28e17:	15 
  a28e18:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x340]
  a28e1f:	0d 
  a28e20:	62 71 5c 48 58 6c 24 	vaddps zmm13,zmm4,ZMMWORD PTR [rsp+0x100]
  a28e27:	04 
  a28e28:	62 71 14 48 58 6c 24 	vaddps zmm13,zmm13,ZMMWORD PTR [rsp+0x4c0]
  a28e2f:	13 
  a28e30:	62 c1 34 48 5c fd    	vsubps zmm23,zmm9,zmm13
  a28e36:	62 41 34 48 58 c5    	vaddps zmm24,zmm9,zmm13
  a28e3c:	62 51 7c 40 58 cf    	vaddps zmm9,zmm16,zmm15
  a28e42:	62 e2 7d 48 18 2d 14 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff64c614]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a28e49:	c6 64 ff 
  a28e4c:	62 31 7c 48 28 ed    	vmovaps zmm13,zmm21
  a28e52:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x440]
  a28e59:	11 
  a28e5a:	62 72 5d 48 ac ef    	vfnmadd213ps zmm13,zmm4,zmm7
  a28e60:	62 61 34 48 58 c9    	vaddps zmm25,zmm9,zmm1
  a28e66:	62 61 7c 48 58 ea    	vaddps zmm29,zmm0,zmm2
  a28e6c:	62 71 7c 48 5c ca    	vsubps zmm9,zmm0,zmm2
  a28e72:	62 21 7c 48 28 fd    	vmovaps zmm31,zmm21
  a28e78:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a28e7f:	05 
  a28e80:	62 42 75 48 ac fa    	vfnmadd213ps zmm31,zmm1,zmm10
  a28e86:	62 f1 44 48 58 c4    	vaddps zmm0,zmm7,zmm4
  a28e8c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a28e93:	03 
  a28e94:	62 b1 7c 48 28 d5    	vmovaps zmm2,zmm21
  a28e9a:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x2c0]
  a28ea1:	0b 
  a28ea2:	62 61 7c 48 10 5c 24 	vmovups zmm27,ZMMWORD PTR [rsp+0x240]
  a28ea9:	09 
  a28eaa:	62 92 4d 40 ac d3    	vfnmadd213ps zmm2,zmm22,zmm27
  a28eb0:	62 f2 7d 48 18 25 1a 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff64c41a]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a28eb7:	c4 64 ff 
  a28eba:	62 71 5c 48 59 74 24 	vmulps zmm14,zmm4,ZMMWORD PTR [rsp+0x3c0]
  a28ec1:	0f 
  a28ec2:	62 f1 2c 48 58 f9    	vaddps zmm7,zmm10,zmm1
  a28ec8:	62 d1 6c 48 5c c6    	vsubps zmm0,zmm2,zmm14
  a28ece:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a28ed5:	ff 
  a28ed6:	62 d1 6c 48 58 c6    	vaddps zmm0,zmm2,zmm14
  a28edc:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a28ee3:	04 
  a28ee4:	62 31 7c 48 28 d5    	vmovaps zmm10,zmm21
  a28eea:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp+0x400]
  a28ef1:	10 
  a28ef2:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x200]
  a28ef9:	08 
  a28efa:	62 72 1d 40 ac d2    	vfnmadd213ps zmm10,zmm28,zmm2
  a28f00:	62 71 74 40 59 f4    	vmulps zmm14,zmm17,zmm4
  a28f06:	62 c1 2c 48 58 ce    	vaddps zmm17,zmm10,zmm14
  a28f0c:	62 51 2c 48 5c d6    	vsubps zmm10,zmm10,zmm14
  a28f12:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x580]
  a28f19:	16 
  a28f1a:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x280]
  a28f21:	0a 
  a28f22:	62 f1 54 48 58 c6    	vaddps zmm0,zmm5,zmm6
  a28f28:	62 f1 2c 40 58 c8    	vaddps zmm1,zmm26,zmm0
  a28f2e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a28f35:	fe 
  a28f36:	62 92 55 40 ac c2    	vfnmadd213ps zmm0,zmm21,zmm26
  a28f3c:	62 51 6c 40 58 f3    	vaddps zmm14,zmm18,zmm11
  a28f42:	62 51 6c 40 5c db    	vsubps zmm11,zmm18,zmm11
  a28f48:	62 c1 64 40 58 c6    	vaddps zmm16,zmm19,zmm14
  a28f4e:	62 32 55 40 ac f3    	vfnmadd213ps zmm14,zmm21,zmm19
  a28f54:	62 f1 54 48 5c f6    	vsubps zmm6,zmm5,zmm6
  a28f5a:	62 b1 7c 48 28 cd    	vmovaps zmm1,zmm21
  a28f60:	62 d2 65 48 ac cc    	vfnmadd213ps zmm1,zmm3,zmm12
  a28f66:	62 e1 1c 48 58 db    	vaddps zmm19,zmm12,zmm3
  a28f6c:	62 b1 7c 48 28 dd    	vmovaps zmm3,zmm21
  a28f72:	62 92 3d 48 ac de    	vfnmadd213ps zmm3,zmm8,zmm30
  a28f78:	62 51 0c 40 58 f8    	vaddps zmm15,zmm30,zmm8
  a28f7e:	62 b1 7c 48 28 ed    	vmovaps zmm5,zmm21
  a28f84:	62 b2 15 40 ac ec    	vfnmadd213ps zmm5,zmm29,zmm20
  a28f8a:	62 71 44 40 59 c4    	vmulps zmm8,zmm23,zmm4
  a28f90:	62 41 54 48 5c f0    	vsubps zmm30,zmm5,zmm8
  a28f96:	62 c1 54 48 58 d0    	vaddps zmm18,zmm5,zmm8
  a28f9c:	62 b1 7c 48 28 ed    	vmovaps zmm5,zmm21
  a28fa2:	62 92 3d 40 ac e9    	vfnmadd213ps zmm5,zmm24,zmm25
  a28fa8:	62 71 34 48 59 c4    	vmulps zmm8,zmm9,zmm4
  a28fae:	62 51 54 48 58 e0    	vaddps zmm12,zmm5,zmm8
  a28fb4:	62 51 54 48 5c c0    	vsubps zmm8,zmm5,zmm8
  a28fba:	62 f1 5c 48 59 6c 24 	vmulps zmm5,zmm4,ZMMWORD PTR [rsp+0x180]
  a28fc1:	06 
  a28fc2:	62 e1 14 48 58 ed    	vaddps zmm21,zmm13,zmm5
  a28fc8:	62 71 14 48 5c cd    	vsubps zmm9,zmm13,zmm5
  a28fce:	62 71 5c 48 59 6c 24 	vmulps zmm13,zmm4,ZMMWORD PTR [rsp+0x40]
  a28fd5:	01 
  a28fd6:	62 d1 04 40 5c ed    	vsubps zmm5,zmm31,zmm13
  a28fdc:	62 41 04 40 58 fd    	vaddps zmm31,zmm31,zmm13
  a28fe2:	62 21 24 40 58 de    	vaddps zmm27,zmm27,zmm22
  a28fe8:	62 01 6c 48 58 d4    	vaddps zmm26,zmm2,zmm28
  a28fee:	62 71 24 48 59 ec    	vmulps zmm13,zmm11,zmm4
  a28ff4:	62 51 7c 48 5c dd    	vsubps zmm11,zmm0,zmm13
  a28ffa:	62 41 7c 48 58 e5    	vaddps zmm28,zmm0,zmm13
  a29000:	62 f1 4c 48 59 c4    	vmulps zmm0,zmm6,zmm4
  a29006:	62 f1 0c 48 58 f0    	vaddps zmm6,zmm14,zmm0
  a2900c:	62 71 0c 48 5c f0    	vsubps zmm14,zmm14,zmm0
  a29012:	62 71 5c 48 59 2c 24 	vmulps zmm13,zmm4,ZMMWORD PTR [rsp]
  a29019:	62 d1 74 48 58 d5    	vaddps zmm2,zmm1,zmm13
  a2901f:	62 d1 74 48 5c cd    	vsubps zmm1,zmm1,zmm13
  a29025:	62 f1 5c 48 59 44 24 	vmulps zmm0,zmm4,ZMMWORD PTR [rsp+0x380]
  a2902c:	0e 
  a2902d:	62 71 64 48 5c e8    	vsubps zmm13,zmm3,zmm0
  a29033:	62 f1 64 48 58 c0    	vaddps zmm0,zmm3,zmm0
  a29039:	62 91 5c 40 58 dd    	vaddps zmm3,zmm20,zmm29
  a2903f:	62 81 34 40 58 e0    	vaddps zmm20,zmm25,zmm24
  a29045:	62 21 7c 48 28 c4    	vmovaps zmm24,zmm20
  a2904b:	62 f1 7c 48 28 25 ab 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6675ab]        # 90600 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dab0>
  a29052:	75 66 ff 
  a29055:	62 62 5d 48 7f c3    	vpermt2ps zmm24,zmm4,zmm3
  a2905b:	62 61 7c 48 11 04 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm24
  a29062:	62 61 5c 40 14 c3    	vunpcklps zmm24,zmm20,zmm3
  a29068:	62 63 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x60],zmm24,0x3
  a2906f:	06 03 
  a29071:	62 e1 7c 28 28 35 c5 	vmovaps ymm22,YMMWORD PTR [rip+0xffffffffff64dbc5]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a29078:	db 64 ff 
  a2907b:	62 e2 4d 40 7f e3    	vpermt2ps zmm20,zmm22,zmm3
  a29081:	62 e1 7c 28 11 64 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm20
  a29088:	02 
  a29089:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a2908f:	62 f2 5d 48 7f d9    	vpermt2ps zmm3,zmm4,zmm1
  a29095:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x70],zmm3
  a2909c:	70 00 00 00 
  a290a0:	62 f1 7c 48 14 d9    	vunpcklps zmm3,zmm0,zmm1
  a290a6:	62 f3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xd0],zmm3,0x3
  a290ad:	0d 03 
  a290af:	62 f2 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm1
  a290b5:	c5 fc 11 84 16 b0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xb0],ymm0
  a290bc:	00 00 
  a290be:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a290c4:	62 92 5d 48 7f c4    	vpermt2ps zmm0,zmm4,zmm28
  a290ca:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xe0],zmm0
  a290d1:	e0 00 00 00 
  a290d5:	62 91 0c 48 14 c4    	vunpcklps zmm0,zmm14,zmm28
  a290db:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x140],zmm0,0x3
  a290e2:	14 03 
  a290e4:	62 12 4d 40 7f f4    	vpermt2ps zmm14,zmm22,zmm28
  a290ea:	c5 7c 11 b4 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm14
  a290f1:	00 00 
  a290f3:	62 91 7c 48 28 c2    	vmovaps zmm0,zmm26
  a290f9:	62 92 5d 48 7f c3    	vpermt2ps zmm0,zmm4,zmm27
  a290ff:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x150],zmm0
  a29106:	50 01 00 00 
  a2910a:	62 91 2c 40 14 c3    	vunpcklps zmm0,zmm26,zmm27
  a29110:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1b0],zmm0,0x3
  a29117:	1b 03 
  a29119:	62 02 4d 40 7f d3    	vpermt2ps zmm26,zmm22,zmm27
  a2911f:	62 61 7c 28 11 94 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x190],ymm26
  a29126:	90 01 00 00 
  a2912a:	62 91 7c 48 28 c7    	vmovaps zmm0,zmm31
  a29130:	62 d2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm9
  a29136:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm0
  a2913d:	07 
  a2913e:	62 d1 04 40 14 c1    	vunpcklps zmm0,zmm31,zmm9
  a29144:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x220],zmm0,0x3
  a2914b:	22 03 
  a2914d:	62 42 4d 40 7f f9    	vpermt2ps zmm31,zmm22,zmm9
  a29153:	62 61 7c 28 11 7c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x200],ymm31
  a2915a:	10 
  a2915b:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a29161:	62 b2 5d 48 7f c2    	vpermt2ps zmm0,zmm4,zmm18
  a29167:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x230],zmm0
  a2916e:	30 02 00 00 
  a29172:	62 b1 3c 48 14 c2    	vunpcklps zmm0,zmm8,zmm18
  a29178:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x290],zmm0,0x3
  a2917f:	29 03 
  a29181:	62 32 4d 40 7f c2    	vpermt2ps zmm8,zmm22,zmm18
  a29187:	c5 7c 11 84 16 70 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x270],ymm8
  a2918e:	00 00 
  a29190:	62 d1 7c 48 28 c7    	vmovaps zmm0,zmm15
  a29196:	62 b2 5d 48 7f c3    	vpermt2ps zmm0,zmm4,zmm19
  a2919c:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2a0],zmm0
  a291a3:	a0 02 00 00 
  a291a7:	62 b1 04 48 14 c3    	vunpcklps zmm0,zmm15,zmm19
  a291ad:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x300],zmm0,0x3
  a291b4:	30 03 
  a291b6:	62 32 4d 40 7f fb    	vpermt2ps zmm15,zmm22,zmm19
  a291bc:	c5 7c 11 bc 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm15
  a291c3:	00 00 
  a291c5:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a291cb:	62 d2 5d 48 7f c3    	vpermt2ps zmm0,zmm4,zmm11
  a291d1:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x310],zmm0
  a291d8:	10 03 00 00 
  a291dc:	62 d1 4c 48 14 c3    	vunpcklps zmm0,zmm6,zmm11
  a291e2:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x370],zmm0,0x3
  a291e9:	37 03 
  a291eb:	62 d2 4d 40 7f f3    	vpermt2ps zmm6,zmm22,zmm11
  a291f1:	c5 fc 11 b4 16 50 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x350],ymm6
  a291f8:	00 00 
  a291fa:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a29200:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a29207:	04 
  a29208:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a2920e:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x380],zmm0
  a29215:	0e 
  a29216:	62 f1 2c 48 14 c1    	vunpcklps zmm0,zmm10,zmm1
  a2921c:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x3e0],zmm0,0x3
  a29223:	3e 03 
  a29225:	62 72 4d 40 7f d1    	vpermt2ps zmm10,zmm22,zmm1
  a2922b:	c5 7c 11 94 16 c0 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x3c0],ymm10
  a29232:	00 00 
  a29234:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a2923a:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a29241:	03 
  a29242:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a29248:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3f0],zmm0
  a2924f:	f0 03 00 00 
  a29253:	62 f1 44 48 14 c1    	vunpcklps zmm0,zmm7,zmm1
  a29259:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x450],zmm0,0x3
  a29260:	45 03 
  a29262:	62 f2 4d 40 7f f9    	vpermt2ps zmm7,zmm22,zmm1
  a29268:	c5 fc 11 bc 16 30 04 	vmovups YMMWORD PTR [rsi+rdx*1+0x430],ymm7
  a2926f:	00 00 
  a29271:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a29277:	62 92 5d 48 7f c6    	vpermt2ps zmm0,zmm4,zmm30
  a2927d:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x460],zmm0
  a29284:	60 04 00 00 
  a29288:	62 91 1c 48 14 c6    	vunpcklps zmm0,zmm12,zmm30
  a2928e:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x4c0],zmm0,0x3
  a29295:	4c 03 
  a29297:	62 12 4d 40 7f e6    	vpermt2ps zmm12,zmm22,zmm30
  a2929d:	c5 7c 11 a4 16 a0 04 	vmovups YMMWORD PTR [rsi+rdx*1+0x4a0],ymm12
  a292a4:	00 00 
  a292a6:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a292ac:	62 f2 5d 48 7f c2    	vpermt2ps zmm0,zmm4,zmm2
  a292b2:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4d0],zmm0
  a292b9:	d0 04 00 00 
  a292bd:	62 f1 14 48 14 c2    	vunpcklps zmm0,zmm13,zmm2
  a292c3:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x530],zmm0,0x3
  a292ca:	53 03 
  a292cc:	62 72 4d 40 7f ea    	vpermt2ps zmm13,zmm22,zmm2
  a292d2:	c5 7c 11 ac 16 10 05 	vmovups YMMWORD PTR [rsi+rdx*1+0x510],ymm13
  a292d9:	00 00 
  a292db:	62 b1 7c 48 28 c0    	vmovaps zmm0,zmm16
  a292e1:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a292e8:	fe 
  a292e9:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a292ef:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x540],zmm0
  a292f6:	15 
  a292f7:	62 f1 7c 40 14 c1    	vunpcklps zmm0,zmm16,zmm1
  a292fd:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x5a0],zmm0,0x3
  a29304:	5a 03 
  a29306:	62 e2 4d 40 7f c1    	vpermt2ps zmm16,zmm22,zmm1
  a2930c:	62 e1 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x580],ymm16
  a29313:	2c 
  a29314:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a2931a:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a29321:	ff 
  a29322:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a29328:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x5b0],zmm0
  a2932f:	b0 05 00 00 
  a29333:	62 f1 74 40 14 c1    	vunpcklps zmm0,zmm17,zmm1
  a29339:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x610],zmm0,0x3
  a29340:	61 03 
  a29342:	62 e2 4d 40 7f c9    	vpermt2ps zmm17,zmm22,zmm1
  a29348:	62 e1 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x5f0],ymm17
  a2934f:	f0 05 00 00 
  a29353:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a29359:	62 b2 5d 48 7f c5    	vpermt2ps zmm0,zmm4,zmm21
  a2935f:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x620],zmm0
  a29366:	20 06 00 00 
  a2936a:	62 b1 54 48 14 c5    	vunpcklps zmm0,zmm5,zmm21
  a29370:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x680],zmm0,0x3
  a29377:	68 03 
  a29379:	62 b2 4d 40 7f ed    	vpermt2ps zmm5,zmm22,zmm21
  a2937f:	c5 fc 11 ac 16 60 06 	vmovups YMMWORD PTR [rsi+rdx*1+0x660],ymm5
  a29386:	00 00 
  a29388:	48 81 c2 90 06 00 00 	add    rdx,0x690
  a2938f:	48 39 d0             	cmp    rax,rdx
  a29392:	0f 85 88 df ff ff    	jne    a27320 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a29398:	48 81 c4 08 0a 00 00 	add    rsp,0xa08
  a2939f:	c5 f8 77             	vzeroupper
  a293a2:	c3                   	ret
