
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a285c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a285c0:	55                   	push   rbp
  a285c1:	48 89 e5             	mov    rbp,rsp
  a285c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a285c8:	48 81 ec 80 0b 00 00 	sub    rsp,0xb80
  a285cf:	48 69 c2 90 06 00 00 	imul   rax,rdx,0x690
  a285d6:	31 d2                	xor    edx,edx
  a285d8:	4c 8d 84 24 00 0b 00 	lea    r8,[rsp+0xb00]
  a285df:	00 
  a285e0:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a285e5:	41 b2 7f             	mov    r10b,0x7f
  a285e8:	c4 c1 7b 92 ca       	kmovd  k1,r10d
  a285ed:	0f 1f 00             	nop    DWORD PTR [rax]
  a285f0:	c6 84 24 00 0b 00 00 	mov    BYTE PTR [rsp+0xb00],0x0
  a285f7:	00 
  a285f8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a285fd:	62 61 7c 48 10 34 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1]
  a28604:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm30
  a2860b:	09 
  a2860c:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x40]
  a28613:	02 
  a28614:	c5 f8 10 4c 17 60    	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x60]
  a2861a:	c4 e3 71 21 74 17 64 	vinsertps xmm6,xmm1,DWORD PTR [rdi+rdx*1+0x64],0x10
  a28621:	10 
  a28622:	c4 e2 79 18 7c 17 68 	vbroadcastss xmm7,DWORD PTR [rdi+rdx*1+0x68]
  a28629:	c5 fb 10 64 17 70    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x70]
  a2862f:	62 e1 7c 48 10 b4 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a28636:	f0 00 00 00 
  a2863a:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm22
  a28641:	02 
  a28642:	62 e1 7c 28 10 9c 17 	vmovups ymm19,YMMWORD PTR [rdi+rdx*1+0x130]
  a28649:	30 01 00 00 
  a2864d:	c5 f8 10 8c 17 50 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x150]
  a28654:	00 00 
  a28656:	c4 63 71 21 8c 17 54 	vinsertps xmm9,xmm1,DWORD PTR [rdi+rdx*1+0x154],0x10
  a2865d:	01 00 00 10 
  a28661:	c4 62 79 18 94 17 58 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0x158]
  a28668:	01 00 00 
  a2866b:	c5 fb 10 ac 17 60 01 	vmovsd xmm5,QWORD PTR [rdi+rdx*1+0x160]
  a28672:	00 00 
  a28674:	62 61 7c 48 10 ac 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x5a0]
  a2867b:	a0 05 00 00 
  a2867f:	c5 fc 10 9c 17 e0 05 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x5e0]
  a28686:	00 00 
  a28688:	c5 f8 10 8c 17 00 06 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x600]
  a2868f:	00 00 
  a28691:	c4 63 71 21 9c 17 04 	vinsertps xmm11,xmm1,DWORD PTR [rdi+rdx*1+0x604],0x10
  a28698:	06 00 00 10 
  a2869c:	c4 62 79 18 a4 17 08 	vbroadcastss xmm12,DWORD PTR [rdi+rdx*1+0x608]
  a286a3:	06 00 00 
  a286a6:	c5 7b 10 84 17 10 06 	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x610]
  a286ad:	00 00 
  a286af:	62 61 7c 48 10 bc 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a286b6:	e0 01 00 00 
  a286ba:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm31
  a286c1:	01 
  a286c2:	c5 fc 10 8c 17 20 02 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x220]
  a286c9:	00 00 
  a286cb:	c5 78 10 ac 17 40 02 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x240]
  a286d2:	00 00 
  a286d4:	c4 e3 41 0c f6 03    	vblendps xmm6,xmm7,xmm6,0x3
  a286da:	c4 e3 11 21 bc 17 44 	vinsertps xmm7,xmm13,DWORD PTR [rdi+rdx*1+0x244],0x10
  a286e1:	02 00 00 10 
  a286e5:	c4 63 49 21 6c 17 6c 	vinsertps xmm13,xmm6,DWORD PTR [rdi+rdx*1+0x6c],0x30
  a286ec:	30 
  a286ed:	c4 62 79 18 b4 17 48 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x248]
  a286f4:	02 00 00 
  a286f7:	c5 7b 10 bc 17 50 02 	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x250]
  a286fe:	00 00 
  a28700:	c4 c3 29 0c f1 03    	vblendps xmm6,xmm10,xmm9,0x3
  a28706:	62 61 7c 48 10 8c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x4b0]
  a2870d:	b0 04 00 00 
  a28711:	c4 63 49 21 94 17 5c 	vinsertps xmm10,xmm6,DWORD PTR [rdi+rdx*1+0x15c],0x30
  a28718:	01 00 00 30 
  a2871c:	c5 f8 10 b4 17 10 05 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x510]
  a28723:	00 00 
  a28725:	c4 63 49 21 8c 17 14 	vinsertps xmm9,xmm6,DWORD PTR [rdi+rdx*1+0x514],0x10
  a2872c:	05 00 00 10 
  a28730:	c4 c3 19 0c f3 03    	vblendps xmm6,xmm12,xmm11,0x3
  a28736:	c4 62 79 18 9c 17 18 	vbroadcastss xmm11,DWORD PTR [rdi+rdx*1+0x518]
  a2873d:	05 00 00 
  a28740:	c4 63 49 21 a4 17 0c 	vinsertps xmm12,xmm6,DWORD PTR [rdi+rdx*1+0x60c],0x30
  a28747:	06 00 00 30 
  a2874b:	c5 fc 10 b4 17 f0 04 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x4f0]
  a28752:	00 00 
  a28754:	62 e1 ff 08 10 84 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x520]
  a2875b:	20 05 00 00 
  a2875f:	c4 63 09 0c f7 03    	vblendps xmm14,xmm14,xmm7,0x3
  a28765:	62 f1 7c 48 10 94 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a2876c:	d0 02 00 00 
  a28770:	c5 fc 10 bc 17 10 03 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x310]
  a28777:	00 00 
  a28779:	c4 63 09 21 b4 17 4c 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x24c],0x30
  a28780:	02 00 00 30 
  a28784:	62 e1 7c 08 10 4c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0x330]
  a2878b:	33 
  a2878c:	62 f3 75 00 21 84 17 	vinsertps xmm0,xmm17,DWORD PTR [rdi+rdx*1+0x334],0x10
  a28793:	34 03 00 00 10 
  a28798:	c4 43 21 0c c9 03    	vblendps xmm9,xmm11,xmm9,0x3
  a2879e:	c4 62 79 18 9c 17 38 	vbroadcastss xmm11,DWORD PTR [rdi+rdx*1+0x338]
  a287a5:	03 00 00 
  a287a8:	62 e3 35 08 21 8c 17 	vinsertps xmm17,xmm9,DWORD PTR [rdi+rdx*1+0x51c],0x30
  a287af:	1c 05 00 00 30 
  a287b4:	c4 e3 21 0c c0 03    	vblendps xmm0,xmm11,xmm0,0x3
  a287ba:	c5 7b 10 9c 17 40 03 	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x340]
  a287c1:	00 00 
  a287c3:	c4 e3 79 21 84 17 3c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x33c],0x30
  a287ca:	03 00 00 30 
  a287ce:	62 e1 7c 48 28 e2    	vmovaps zmm20,zmm2
  a287d4:	62 61 7c 48 28 d2    	vmovaps zmm26,zmm2
  a287da:	62 e1 7c 48 10 6c 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x3c0]
  a287e1:	0f 
  a287e2:	c5 7c 10 8c 17 00 04 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x400]
  a287e9:	00 00 
  a287eb:	c4 e3 15 18 e4 01    	vinsertf128 ymm4,ymm13,xmm4,0x1
  a287f1:	c5 78 10 ac 17 20 04 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x420]
  a287f8:	00 00 
  a287fa:	c4 63 11 21 ac 17 24 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x424],0x10
  a28801:	04 00 00 10 
  a28805:	c4 e3 2d 18 ed 01    	vinsertf128 ymm5,ymm10,xmm5,0x1
  a2880b:	c4 62 79 18 94 17 28 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0x428]
  a28812:	04 00 00 
  a28815:	c4 43 29 0c d5 03    	vblendps xmm10,xmm10,xmm13,0x3
  a2881b:	c4 43 1d 18 c0 01    	vinsertf128 ymm8,ymm12,xmm8,0x1
  a28821:	c4 63 29 21 94 17 2c 	vinsertps xmm10,xmm10,DWORD PTR [rdi+rdx*1+0x42c],0x30
  a28828:	04 00 00 30 
  a2882c:	c5 7b 10 a4 17 30 04 	vmovsd xmm12,QWORD PTR [rdi+rdx*1+0x430]
  a28833:	00 00 
  a28835:	c4 43 0d 18 ef 01    	vinsertf128 ymm13,ymm14,xmm15,0x1
  a2883b:	c5 78 10 b4 17 a8 03 	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x3a8]
  a28842:	00 00 
  a28844:	c4 63 09 21 b4 17 ac 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x3ac],0x10
  a2884b:	03 00 00 10 
  a2884f:	62 33 75 20 18 f8 01 	vinsertf32x4 ymm15,ymm17,xmm16,0x1
  a28856:	62 a1 7c 48 28 c5    	vmovaps zmm16,zmm21
  a2885c:	c4 e2 79 18 94 17 b0 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x3b0]
  a28863:	03 00 00 
  a28866:	c4 c3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm11,0x1
  a2886c:	c4 c3 69 0c d6 03    	vblendps xmm2,xmm2,xmm14,0x3
  a28872:	c4 e3 69 21 94 17 b4 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x3b4],0x30
  a28879:	03 00 00 30 
  a2887d:	c4 43 2d 18 d4 01    	vinsertf128 ymm10,ymm10,xmm12,0x1
  a28883:	c5 7c 10 a4 17 88 03 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x388]
  a2888a:	00 00 
  a2888c:	c5 7b 10 9c 17 b8 03 	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x3b8]
  a28893:	00 00 
  a28895:	c4 c3 6d 18 d3 01    	vinsertf128 ymm2,ymm2,xmm11,0x1
  a2889b:	62 f3 ed 40 1a e4 01 	vinsertf64x4 zmm4,zmm18,ymm4,0x1
  a288a2:	c5 78 10 9c 17 98 04 	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x498]
  a288a9:	00 00 
  a288ab:	c4 63 21 21 9c 17 9c 	vinsertps xmm11,xmm11,DWORD PTR [rdi+rdx*1+0x49c],0x10
  a288b2:	04 00 00 10 
  a288b6:	62 f3 e5 40 1a ed 01 	vinsertf64x4 zmm5,zmm19,ymm5,0x1
  a288bd:	62 61 7c 48 10 84 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x438]
  a288c4:	38 04 00 00 
  a288c8:	c4 62 79 18 b4 17 a0 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x4a0]
  a288cf:	04 00 00 
  a288d2:	62 53 e5 48 1a c0 01 	vinsertf64x4 zmm8,zmm3,ymm8,0x1
  a288d9:	c4 c3 09 0c db 03    	vblendps xmm3,xmm14,xmm11,0x3
  a288df:	c4 e3 61 21 9c 17 a4 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x4a4],0x30
  a288e6:	04 00 00 30 
  a288ea:	62 d3 f5 48 1a cd 01 	vinsertf64x4 zmm1,zmm1,ymm13,0x1
  a288f1:	c5 7c 10 ac 17 78 04 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x478]
  a288f8:	00 00 
  a288fa:	c5 7b 10 9c 17 a8 04 	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x4a8]
  a28901:	00 00 
  a28903:	c4 43 65 18 f3 01    	vinsertf128 ymm14,ymm3,xmm11,0x1
  a28909:	62 d3 cd 48 1a f7 01 	vinsertf64x4 zmm6,zmm6,ymm15,0x1
  a28910:	62 11 7c 48 28 d8    	vmovaps zmm11,zmm24
  a28916:	62 e1 7c 48 10 94 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x258]
  a2891d:	58 02 00 00 
  a28921:	c5 7c 10 bc 17 98 02 	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0x298]
  a28928:	00 00 
  a2892a:	62 f3 c5 48 1a c0 01 	vinsertf64x4 zmm0,zmm7,ymm0,0x1
  a28931:	c5 f8 10 9c 17 b8 02 	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x2b8]
  a28938:	00 00 
  a2893a:	c4 e3 61 21 9c 17 bc 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x2bc],0x10
  a28941:	02 00 00 10 
  a28945:	62 53 b5 48 1a ca 01 	vinsertf64x4 zmm9,zmm9,ymm10,0x1
  a2894c:	c4 e2 79 18 bc 17 c0 	vbroadcastss xmm7,DWORD PTR [rdi+rdx*1+0x2c0]
  a28953:	02 00 00 
  a28956:	c4 e3 41 0c fb 03    	vblendps xmm7,xmm7,xmm3,0x3
  a2895c:	62 f3 9d 48 1a d2 01 	vinsertf64x4 zmm2,zmm12,ymm2,0x1
  a28963:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm2
  a2896a:	06 
  a2896b:	c4 e3 41 21 94 17 c4 	vinsertps xmm2,xmm7,DWORD PTR [rdi+rdx*1+0x2c4],0x30
  a28972:	02 00 00 30 
  a28976:	c5 fb 10 bc 17 c8 02 	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x2c8]
  a2897d:	00 00 
  a2897f:	62 53 95 48 1a ee 01 	vinsertf64x4 zmm13,zmm13,ymm14,0x1
  a28986:	c4 e3 6d 18 d7 01    	vinsertf128 ymm2,ymm2,xmm7,0x1
  a2898c:	62 f3 85 48 1a d2 01 	vinsertf64x4 zmm2,zmm15,ymm2,0x1
  a28993:	c5 fc 10 bc 17 68 05 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x568]
  a2899a:	00 00 
  a2899c:	62 f2 fd c9 88 dc    	vexpandpd zmm3{k1}{z},zmm4
  a289a2:	62 f1 fd 48 7f 5c 24 	vmovdqa64 ZMMWORD PTR [rsp+0x200],zmm3
  a289a9:	08 
  a289aa:	c5 f8 10 a4 17 88 05 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x588]
  a289b1:	00 00 
  a289b3:	c4 e3 59 21 a4 17 8c 	vinsertps xmm4,xmm4,DWORD PTR [rdi+rdx*1+0x58c],0x10
  a289ba:	05 00 00 10 
  a289be:	62 72 fd c9 88 e5    	vexpandpd zmm12{k1}{z},zmm5
  a289c4:	c4 e2 79 18 ac 17 90 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x590]
  a289cb:	05 00 00 
  a289ce:	c4 e3 51 0c ec 03    	vblendps xmm5,xmm5,xmm4,0x3
  a289d4:	62 d2 fd c9 88 e0    	vexpandpd zmm4{k1}{z},zmm8
  a289da:	c4 e3 51 21 ac 17 94 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x594],0x30
  a289e1:	05 00 00 30 
  a289e5:	c5 7b 10 84 17 98 05 	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x598]
  a289ec:	00 00 
  a289ee:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a289f4:	c4 c3 55 18 e8 01    	vinsertf128 ymm5,ymm5,xmm8,0x1
  a289fa:	62 f3 c5 48 1a ed 01 	vinsertf64x4 zmm5,zmm7,ymm5,0x1
  a28a01:	c5 7c 10 84 17 a8 01 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x1a8]
  a28a08:	00 00 
  a28a0a:	62 72 fd c9 88 d6    	vexpandpd zmm10{k1}{z},zmm6
  a28a10:	c5 f8 10 b4 17 c8 01 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x1c8]
  a28a17:	00 00 
  a28a19:	c4 e3 49 21 b4 17 cc 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0x1cc],0x10
  a28a20:	01 00 00 10 
  a28a24:	62 f2 fd c9 88 f8    	vexpandpd zmm7{k1}{z},zmm0
  a28a2a:	c4 e2 79 18 84 17 d0 	vbroadcastss xmm0,DWORD PTR [rdi+rdx*1+0x1d0]
  a28a31:	01 00 00 
  a28a34:	c4 e3 79 0c c6 03    	vblendps xmm0,xmm0,xmm6,0x3
  a28a3a:	62 d2 fd c9 88 f1    	vexpandpd zmm6{k1}{z},zmm9
  a28a40:	c4 63 79 21 8c 17 d4 	vinsertps xmm9,xmm0,DWORD PTR [rdi+rdx*1+0x1d4],0x30
  a28a47:	01 00 00 30 
  a28a4b:	c5 7b 10 b4 17 d8 01 	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x1d8]
  a28a52:	00 00 
  a28a54:	62 c2 fd c9 88 fd    	vexpandpd zmm23{k1}{z},zmm13
  a28a5a:	c5 78 10 ac 17 78 06 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x678]
  a28a61:	00 00 
  a28a63:	c4 63 11 21 ac 17 7c 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x67c],0x10
  a28a6a:	06 00 00 10 
  a28a6e:	62 e2 fd c9 88 da    	vexpandpd zmm19{k1}{z},zmm2
  a28a74:	c4 43 35 18 ce 01    	vinsertf128 ymm9,ymm9,xmm14,0x1
  a28a7a:	c4 62 79 18 b4 17 80 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x680]
  a28a81:	06 00 00 
  a28a84:	62 f1 7c 48 28 15 f2 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff667af2]        # 90580 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1da30>
  a28a8b:	7a 66 ff 
  a28a8e:	62 62 6d 48 7f f3    	vpermt2ps zmm30,zmm2,zmm3
  a28a94:	c4 43 09 0c ed 03    	vblendps xmm13,xmm14,xmm13,0x3
  a28a9a:	c4 63 11 21 ac 17 84 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x684],0x30
  a28aa1:	06 00 00 30 
  a28aa5:	62 a1 7c 48 28 ce    	vmovaps zmm17,zmm22
  a28aab:	62 c2 6d 48 7f cc    	vpermt2ps zmm17,zmm2,zmm12
  a28ab1:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm17
  a28ab8:	13 
  a28ab9:	62 53 bd 48 1a c1 01 	vinsertf64x4 zmm8,zmm8,ymm9,0x1
  a28ac0:	c5 7b 10 8c 17 88 06 	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0x688]
  a28ac7:	00 00 
  a28ac9:	c4 43 15 18 c9 01    	vinsertf128 ymm9,ymm13,xmm9,0x1
  a28acf:	62 81 7c 48 28 f5    	vmovaps zmm22,zmm29
  a28ad5:	62 e2 6d 48 7f f4    	vpermt2ps zmm22,zmm2,zmm4
  a28adb:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm22
  a28ae2:	14 
  a28ae3:	c5 78 10 ac 17 d8 00 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0xd8]
  a28aea:	00 00 
  a28aec:	c4 63 11 21 ac 17 dc 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0xdc],0x10
  a28af3:	00 00 00 10 
  a28af7:	62 62 6d 48 7f f9    	vpermt2ps zmm31,zmm2,zmm1
  a28afd:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm31
  a28b04:	12 
  a28b05:	c4 62 79 18 b4 17 e0 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0xe0]
  a28b0c:	00 00 00 
  a28b0f:	c4 43 09 0c ed 03    	vblendps xmm13,xmm14,xmm13,0x3
  a28b15:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a28b1b:	62 d2 6d 48 7f c2    	vpermt2ps zmm0,zmm2,zmm10
  a28b21:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a28b28:	0a 
  a28b29:	c5 7c 10 b4 17 58 06 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x658]
  a28b30:	00 00 
  a28b32:	c4 63 11 21 ac 17 e4 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0xe4],0x30
  a28b39:	00 00 00 30 
  a28b3d:	62 e2 6d 48 7f e7    	vpermt2ps zmm20,zmm2,zmm7
  a28b43:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm20
  a28b4a:	19 
  a28b4b:	62 53 8d 48 1a f9 01 	vinsertf64x4 zmm15,zmm14,ymm9,0x1
  a28b52:	c5 7b 10 8c 17 e8 00 	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0xe8]
  a28b59:	00 00 
  a28b5b:	c4 43 15 18 c9 01    	vinsertf128 ymm9,ymm13,xmm9,0x1
  a28b61:	62 e2 6d 48 7f c6    	vpermt2ps zmm16,zmm2,zmm6
  a28b67:	62 b1 7c 48 28 d8    	vmovaps zmm3,zmm16
  a28b6d:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm16
  a28b74:	10 
  a28b75:	c5 7c 10 ac 17 b8 00 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0xb8]
  a28b7c:	00 00 
  a28b7e:	62 53 95 48 1a e9 01 	vinsertf64x4 zmm13,zmm13,ymm9,0x1
  a28b85:	62 31 7c 48 28 ca    	vmovaps zmm9,zmm18
  a28b8b:	62 32 6d 48 7f df    	vpermt2ps zmm11,zmm2,zmm23
  a28b91:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm11
  a28b98:	05 
  a28b99:	62 71 7c 48 28 1d 1d 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff667a1d]        # 905c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1da70>
  a28ba0:	7a 66 ff 
  a28ba3:	62 11 7c 48 28 f2    	vmovaps zmm14,zmm26
  a28ba9:	62 72 25 48 7f f7    	vpermt2ps zmm14,zmm11,zmm7
  a28baf:	62 f1 7c 48 10 bc 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x528]
  a28bb6:	28 05 00 00 
  a28bba:	62 f2 fd c9 88 ed    	vexpandpd zmm5{k1}{z},zmm5
  a28bc0:	62 e2 25 48 7f ee    	vpermt2ps zmm21,zmm11,zmm6
  a28bc6:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm21
  a28bcd:	03 
  a28bce:	62 61 7c 48 28 df    	vmovaps zmm27,zmm7
  a28bd4:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x80]
  a28bdb:	02 
  a28bdc:	62 42 25 48 7f e4    	vpermt2ps zmm28,zmm11,zmm12
  a28be2:	62 61 7c 48 10 94 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x168]
  a28be9:	68 01 00 00 
  a28bed:	62 32 6d 48 7f cb    	vpermt2ps zmm9,zmm2,zmm19
  a28bf3:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm9
  a28bfa:	04 
  a28bfb:	62 d2 fd c9 88 f0    	vexpandpd zmm6{k1}{z},zmm8
  a28c01:	62 62 25 48 7f ec    	vpermt2ps zmm29,zmm11,zmm4
  a28c07:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm29
  a28c0e:	0f 
  a28c0f:	62 e1 7c 48 10 84 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x618]
  a28c16:	18 06 00 00 
  a28c1a:	62 62 6d 48 7f dd    	vpermt2ps zmm27,zmm2,zmm5
  a28c20:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm27
  a28c27:	0b 
  a28c28:	62 d2 fd c9 88 e7    	vexpandpd zmm4{k1}{z},zmm15
  a28c2e:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x40]
  a28c35:	01 
  a28c36:	62 72 25 48 7f c1    	vpermt2ps zmm8,zmm11,zmm1
  a28c3c:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm8
  a28c43:	01 
  a28c44:	62 b1 7c 48 28 c8    	vmovaps zmm1,zmm16
  a28c4a:	62 f2 6d 48 7f cc    	vpermt2ps zmm1,zmm2,zmm4
  a28c50:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a28c57:	0d 
  a28c58:	62 11 7c 48 28 c9    	vmovaps zmm9,zmm25
  a28c5e:	62 52 25 48 7f ca    	vpermt2ps zmm9,zmm11,zmm10
  a28c64:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm9
  a28c6b:	11 
  a28c6c:	62 71 7c 48 10 bc 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x78]
  a28c73:	78 00 00 00 
  a28c77:	62 d2 fd c9 88 cd    	vexpandpd zmm1{k1}{z},zmm13
  a28c7d:	62 e2 25 48 7f c4    	vpermt2ps zmm16,zmm11,zmm4
  a28c83:	62 41 7c 48 28 df    	vmovaps zmm27,zmm15
  a28c89:	62 62 6d 48 7f d9    	vpermt2ps zmm27,zmm2,zmm1
  a28c8f:	62 72 25 48 7f f9    	vpermt2ps zmm15,zmm11,zmm1
  a28c95:	62 b1 74 40 58 ce    	vaddps zmm1,zmm17,zmm22
  a28c9b:	62 22 25 48 7f c7    	vpermt2ps zmm24,zmm11,zmm23
  a28ca1:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm24
  a28ca8:	0c 
  a28ca9:	62 11 7c 48 28 ea    	vmovaps zmm13,zmm26
  a28caf:	62 a2 25 48 7f d3    	vpermt2ps zmm18,zmm11,zmm19
  a28cb5:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm18
  a28cbc:	07 
  a28cbd:	62 71 0c 40 58 d1    	vaddps zmm10,zmm30,zmm1
  a28cc3:	62 72 6d 48 7f ee    	vpermt2ps zmm13,zmm2,zmm6
  a28cc9:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm13
  a28cd0:	0e 
  a28cd1:	62 f2 25 48 7f fd    	vpermt2ps zmm7,zmm11,zmm5
  a28cd7:	62 f1 7c 48 28 ef    	vmovaps zmm5,zmm7
  a28cdd:	62 62 7d 48 18 0d 0d 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff64c90d]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a28ce4:	c9 64 ff 
  a28ce7:	62 81 7c 48 28 f1    	vmovaps zmm22,zmm25
  a28ced:	62 91 7c 48 28 e1    	vmovaps zmm4,zmm25
  a28cf3:	62 82 75 48 a8 f6    	vfmadd213ps zmm22,zmm1,zmm30
  a28cf9:	62 62 25 48 7f d6    	vpermt2ps zmm26,zmm11,zmm6
  a28cff:	62 62 7d 48 18 0d cf 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff64c8cf]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a28d06:	c8 64 ff 
  a28d09:	62 01 7c 48 28 c1    	vmovaps zmm24,zmm25
  a28d0f:	62 02 75 48 ac c6    	vfnmadd213ps zmm24,zmm1,zmm30
  a28d15:	62 e2 7d 48 18 3d ad 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff64c5ad]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a28d1c:	c5 64 ff 
  a28d1f:	62 62 45 40 bc f1    	vfnmadd231ps zmm30,zmm23,zmm1
  a28d25:	62 f1 04 40 58 c8    	vaddps zmm1,zmm31,zmm0
  a28d2b:	62 f1 2c 48 58 c1    	vaddps zmm0,zmm10,zmm1
  a28d31:	62 a2 75 48 bc f7    	vfnmadd231ps zmm22,zmm1,zmm23
  a28d37:	62 62 75 48 b8 c4    	vfmadd231ps zmm24,zmm1,zmm4
  a28d3d:	62 62 35 40 bc f1    	vfnmadd231ps zmm30,zmm25,zmm1
  a28d43:	62 f1 5c 40 58 cb    	vaddps zmm1,zmm20,zmm3
  a28d49:	62 e1 7c 48 58 e1    	vaddps zmm20,zmm0,zmm1
  a28d4f:	62 82 75 48 bc f1    	vfnmadd231ps zmm22,zmm1,zmm25
  a28d55:	62 22 75 48 bc c7    	vfnmadd231ps zmm24,zmm1,zmm23
  a28d5b:	62 62 5d 48 b8 f1    	vfmadd231ps zmm30,zmm4,zmm1
  a28d61:	62 91 1c 40 5c c5    	vsubps zmm0,zmm28,zmm29
  a28d67:	62 d1 3c 48 5c c9    	vsubps zmm1,zmm8,zmm9
  a28d6d:	62 e2 7d 48 18 0d 19 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff64c719]        # 75490 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2940>
  a28d74:	c7 64 ff 
  a28d77:	62 21 74 48 59 f9    	vmulps zmm31,zmm1,zmm17
  a28d7d:	62 e2 7d 48 18 15 d9 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff64c8d9]        # 75660 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b10>
  a28d84:	c8 64 ff 
  a28d87:	62 22 7d 48 b8 fa    	vfmadd231ps zmm31,zmm0,zmm18
  a28d8d:	62 72 7d 48 18 25 51 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff64c851]        # 755e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a98>
  a28d94:	c8 64 ff 
  a28d97:	62 d1 7c 48 59 fc    	vmulps zmm7,zmm0,zmm12
  a28d9d:	62 b2 75 48 bc fa    	vfnmadd231ps zmm7,zmm1,zmm18
  a28da3:	62 a1 7c 48 59 d9    	vmulps zmm19,zmm0,zmm17
  a28da9:	62 e2 1d 48 bc d9    	vfnmadd231ps zmm19,zmm12,zmm1
  a28daf:	62 b1 0c 48 5c c5    	vsubps zmm0,zmm14,zmm21
  a28db5:	62 41 7c 48 28 ee    	vmovaps zmm29,zmm14
  a28dbb:	62 42 7d 48 b8 fc    	vfmadd231ps zmm31,zmm0,zmm12
  a28dc1:	62 b2 7d 48 b8 f9    	vfmadd231ps zmm7,zmm0,zmm17
  a28dc7:	62 e2 6d 40 bc d8    	vfnmadd231ps zmm19,zmm18,zmm0
  a28dcd:	62 72 fd c9 88 74 24 	vexpandpd zmm14{k1}{z},ZMMWORD PTR [rsp+0x180]
  a28dd4:	30 
  a28dd5:	62 f1 7c 48 10 b4 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x348]
  a28ddc:	48 03 00 00 
  a28de0:	62 f1 7c 48 28 de    	vmovaps zmm3,zmm6
  a28de6:	62 d2 6d 48 7f de    	vpermt2ps zmm3,zmm2,zmm14
  a28dec:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a28df2:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a28df9:	04 
  a28dfa:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x140]
  a28e01:	05 
  a28e02:	62 f2 7d 48 a8 e3    	vfmadd213ps zmm4,zmm0,zmm3
  a28e08:	62 11 7c 48 28 d1    	vmovaps zmm10,zmm25
  a28e0e:	62 72 7d 48 ac d3    	vfnmadd213ps zmm10,zmm0,zmm3
  a28e14:	62 f1 64 48 58 d0    	vaddps zmm2,zmm3,zmm0
  a28e1a:	62 f2 45 40 bc d8    	vfnmadd231ps zmm3,zmm23,zmm0
  a28e20:	62 f1 14 48 58 44 24 	vaddps zmm0,zmm13,ZMMWORD PTR [rsp+0x2c0]
  a28e27:	0b 
  a28e28:	62 f1 6c 48 58 d0    	vaddps zmm2,zmm2,zmm0
  a28e2e:	62 b2 7d 48 bc e7    	vfnmadd231ps zmm4,zmm0,zmm23
  a28e34:	62 72 7d 48 b8 d1    	vfmadd231ps zmm10,zmm0,zmm1
  a28e3a:	62 f2 35 40 bc d8    	vfnmadd231ps zmm3,zmm25,zmm0
  a28e40:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x340]
  a28e47:	0d 
  a28e48:	62 91 14 48 58 c3    	vaddps zmm0,zmm13,zmm27
  a28e4e:	62 71 6c 48 58 c0    	vaddps zmm8,zmm2,zmm0
  a28e54:	62 92 7d 48 bc e1    	vfnmadd231ps zmm4,zmm0,zmm25
  a28e5a:	62 32 7d 48 bc d7    	vfnmadd231ps zmm10,zmm0,zmm23
  a28e60:	62 f2 75 48 b8 d8    	vfmadd231ps zmm3,zmm1,zmm0
  a28e66:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x300]
  a28e6d:	0c 
  a28e6e:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x1c0]
  a28e75:	07 
  a28e76:	62 91 34 48 5c c1    	vsubps zmm0,zmm9,zmm25
  a28e7c:	62 91 54 48 5c ca    	vsubps zmm1,zmm5,zmm26
  a28e82:	62 e1 7c 48 28 ed    	vmovaps zmm21,zmm5
  a28e88:	62 b1 74 48 59 e9    	vmulps zmm5,zmm1,zmm17
  a28e8e:	62 b2 7d 48 b8 ea    	vfmadd231ps zmm5,zmm0,zmm18
  a28e94:	62 d1 7c 48 59 d4    	vmulps zmm2,zmm0,zmm12
  a28e9a:	62 b2 75 48 bc d2    	vfnmadd231ps zmm2,zmm1,zmm18
  a28ea0:	62 b1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm17
  a28ea6:	62 f2 1d 48 bc c1    	vfnmadd231ps zmm0,zmm12,zmm1
  a28eac:	62 d1 7c 40 5c cf    	vsubps zmm1,zmm16,zmm15
  a28eb2:	62 d2 75 48 b8 ec    	vfmadd231ps zmm5,zmm1,zmm12
  a28eb8:	62 b2 75 48 b8 d1    	vfmadd231ps zmm2,zmm1,zmm17
  a28ebe:	62 f2 6d 40 bc c1    	vfnmadd231ps zmm0,zmm18,zmm1
  a28ec4:	62 d1 5c 40 58 c8    	vaddps zmm1,zmm20,zmm8
  a28eca:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a28ed1:	02 
  a28ed2:	62 d1 5c 40 5c c8    	vsubps zmm1,zmm20,zmm8
  a28ed8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a28edf:	06 
  a28ee0:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x240]
  a28ee7:	09 
  a28ee8:	62 72 25 48 7f 44 24 	vpermt2ps zmm8,zmm11,ZMMWORD PTR [rsp+0x200]
  a28eef:	08 
  a28ef0:	62 b1 0c 40 5c cb    	vsubps zmm1,zmm30,zmm19
  a28ef6:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm1
  a28efd:	1a 
  a28efe:	62 b1 0c 40 58 cb    	vaddps zmm1,zmm30,zmm19
  a28f04:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a28f0b:	09 
  a28f0c:	62 61 1c 40 58 64 24 	vaddps zmm28,zmm28,ZMMWORD PTR [rsp+0x3c0]
  a28f13:	0f 
  a28f14:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a28f1b:	01 
  a28f1c:	62 61 74 48 58 74 24 	vaddps zmm30,zmm1,ZMMWORD PTR [rsp+0x440]
  a28f23:	11 
  a28f24:	62 f1 64 48 5c c8    	vsubps zmm1,zmm3,zmm0
  a28f2a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm1
  a28f31:	0f 
  a28f32:	62 e1 64 48 58 d8    	vaddps zmm19,zmm3,zmm0
  a28f38:	62 61 14 40 58 6c 24 	vaddps zmm29,zmm29,ZMMWORD PTR [rsp+0xc0]
  a28f3f:	03 
  a28f40:	62 d2 25 48 7f f6    	vpermt2ps zmm6,zmm11,zmm14
  a28f46:	62 f1 3c 40 5c c7    	vsubps zmm0,zmm24,zmm7
  a28f4c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a28f53:	03 
  a28f54:	62 f1 3c 40 58 c7    	vaddps zmm0,zmm24,zmm7
  a28f5a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a28f61:	08 
  a28f62:	62 01 34 48 58 c1    	vaddps zmm24,zmm9,zmm25
  a28f68:	62 11 54 40 58 da    	vaddps zmm11,zmm21,zmm26
  a28f6e:	62 f1 2c 48 5c c2    	vsubps zmm0,zmm10,zmm2
  a28f74:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a28f7b:	07 
  a28f7c:	62 f1 2c 48 58 c2    	vaddps zmm0,zmm10,zmm2
  a28f82:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a28f89:	11 
  a28f8a:	62 c1 7c 40 58 c7    	vaddps zmm16,zmm16,zmm15
  a28f90:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x640]
  a28f97:	19 
  a28f98:	62 f1 7c 48 5c 5c 24 	vsubps zmm3,zmm0,ZMMWORD PTR [rsp+0x400]
  a28f9f:	10 
  a28fa0:	62 11 4c 40 58 cf    	vaddps zmm9,zmm22,zmm31
  a28fa6:	62 01 4c 40 5c cf    	vsubps zmm25,zmm22,zmm31
  a28fac:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x4c0]
  a28fb3:	13 
  a28fb4:	62 f1 7c 48 5c 4c 24 	vsubps zmm1,zmm0,ZMMWORD PTR [rsp+0x500]
  a28fbb:	14 
  a28fbc:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x480]
  a28fc3:	12 
  a28fc4:	62 f1 7c 48 5c 7c 24 	vsubps zmm7,zmm0,ZMMWORD PTR [rsp+0x280]
  a28fcb:	0a 
  a28fcc:	62 e1 5c 48 58 ed    	vaddps zmm21,zmm4,zmm5
  a28fd2:	62 71 5c 48 5c d5    	vsubps zmm10,zmm4,zmm5
  a28fd8:	62 91 3c 48 58 c4    	vaddps zmm0,zmm8,zmm28
  a28fde:	62 51 7c 48 28 f8    	vmovaps zmm15,zmm8
  a28fe4:	62 11 14 48 5c eb    	vsubps zmm13,zmm13,zmm27
  a28fea:	62 91 4c 48 58 d0    	vaddps zmm2,zmm6,zmm24
  a28ff0:	62 91 7c 48 58 e6    	vaddps zmm4,zmm0,zmm30
  a28ff6:	62 c1 6c 48 58 f3    	vaddps zmm22,zmm2,zmm11
  a28ffc:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a29003:	05 
  a29004:	62 f1 7c 48 5c 54 24 	vsubps zmm2,zmm0,ZMMWORD PTR [rsp+0x100]
  a2900b:	04 
  a2900c:	62 b1 44 48 59 c1    	vmulps zmm0,zmm7,zmm17
  a29012:	62 b2 75 48 b8 c2    	vfmadd231ps zmm0,zmm1,zmm18
  a29018:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x2c0]
  a2901f:	0b 
  a29020:	62 71 54 48 5c 74 24 	vsubps zmm14,zmm5,ZMMWORD PTR [rsp+0x380]
  a29027:	0e 
  a29028:	62 d1 74 48 59 ec    	vmulps zmm5,zmm1,zmm12
  a2902e:	62 b2 45 48 bc ea    	vfnmadd231ps zmm5,zmm7,zmm18
  a29034:	62 91 5c 48 58 e5    	vaddps zmm4,zmm4,zmm29
  a2903a:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm4
  a29041:	12 
  a29042:	62 b1 74 48 59 e1    	vmulps zmm4,zmm1,zmm17
  a29048:	62 f2 1d 48 bc e7    	vfnmadd231ps zmm4,zmm12,zmm7
  a2904e:	62 72 7d 48 18 05 9c 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff64c59c]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a29055:	c5 64 ff 
  a29058:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a2905e:	62 b1 4c 40 58 c8    	vaddps zmm1,zmm22,zmm16
  a29064:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm1
  a2906b:	10 
  a2906c:	62 c1 7c 48 28 f7    	vmovaps zmm22,zmm15
  a29072:	62 d2 1d 40 a8 ff    	vfmadd213ps zmm7,zmm28,zmm15
  a29078:	62 b2 0d 40 bc ff    	vfnmadd231ps zmm7,zmm30,zmm23
  a2907e:	62 d2 65 48 b8 c4    	vfmadd231ps zmm0,zmm3,zmm12
  a29084:	62 b2 65 48 b8 e9    	vfmadd231ps zmm5,zmm3,zmm17
  a2908a:	62 f2 6d 40 bc e3    	vfnmadd231ps zmm4,zmm18,zmm3
  a29090:	62 f2 7d 48 18 0d 3e 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff64c53e]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a29097:	c5 64 ff 
  a2909a:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a290a0:	62 32 1d 40 ac fe    	vfnmadd213ps zmm15,zmm28,zmm22
  a290a6:	62 f2 15 40 bc f9    	vfnmadd231ps zmm7,zmm29,zmm1
  a290ac:	62 82 45 40 bc f4    	vfnmadd231ps zmm22,zmm23,zmm28
  a290b2:	62 b1 0c 48 59 d9    	vmulps zmm3,zmm14,zmm17
  a290b8:	62 b2 6d 48 b8 da    	vfmadd231ps zmm3,zmm2,zmm18
  a290be:	62 d2 15 48 b8 dc    	vfmadd231ps zmm3,zmm13,zmm12
  a290c4:	62 52 0d 40 b8 f8    	vfmadd231ps zmm15,zmm30,zmm8
  a290ca:	62 82 75 48 bc f6    	vfnmadd231ps zmm22,zmm1,zmm30
  a290d0:	62 c1 6c 48 59 e4    	vmulps zmm20,zmm2,zmm12
  a290d6:	62 32 15 40 bc ff    	vfnmadd231ps zmm15,zmm29,zmm23
  a290dc:	62 a2 0d 48 bc e2    	vfnmadd231ps zmm20,zmm14,zmm18
  a290e2:	62 a2 15 48 b8 e1    	vfmadd231ps zmm20,zmm13,zmm17
  a290e8:	62 82 3d 48 b8 f5    	vfmadd231ps zmm22,zmm8,zmm29
  a290ee:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0x80]
  a290f5:	02 
  a290f6:	62 b1 6c 48 59 d1    	vmulps zmm2,zmm2,zmm17
  a290fc:	62 d2 1d 48 bc d6    	vfnmadd231ps zmm2,zmm12,zmm14
  a29102:	62 d2 6d 40 bc d5    	vfnmadd231ps zmm2,zmm18,zmm13
  a29108:	62 a1 34 48 58 cd    	vaddps zmm17,zmm9,zmm21
  a2910e:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm17
  a29115:	0e 
  a29116:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a2911c:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a29122:	62 72 3d 40 a8 ee    	vfmadd213ps zmm13,zmm24,zmm6
  a29128:	62 32 25 48 bc ef    	vfnmadd231ps zmm13,zmm11,zmm23
  a2912e:	62 31 34 48 5c c5    	vsubps zmm8,zmm9,zmm21
  a29134:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm8
  a2913b:	01 
  a2913c:	62 71 7c 48 28 f1    	vmovaps zmm14,zmm1
  a29142:	62 72 3d 40 ac f6    	vfnmadd213ps zmm14,zmm24,zmm6
  a29148:	62 92 45 40 bc f0    	vfnmadd231ps zmm6,zmm23,zmm24
  a2914e:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0xc0]
  a29155:	03 
  a29156:	62 61 7c 48 28 7c 24 	vmovaps zmm31,ZMMWORD PTR [rsp+0x1c0]
  a2915d:	07 
  a2915e:	62 11 1c 40 58 c7    	vaddps zmm8,zmm28,zmm31
  a29164:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm8
  a2916b:	05 
  a2916c:	62 72 7d 40 bc e9    	vfnmadd231ps zmm13,zmm16,zmm1
  a29172:	62 52 25 48 b8 f4    	vfmadd231ps zmm14,zmm11,zmm12
  a29178:	62 d2 75 48 bc f3    	vfnmadd231ps zmm6,zmm1,zmm11
  a2917e:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x680]
  a29185:	1a 
  a29186:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x3c0]
  a2918d:	0f 
  a2918e:	62 a1 34 48 58 d5    	vaddps zmm18,zmm9,zmm21
  a29194:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm18
  a2919b:	0d 
  a2919c:	62 32 7d 40 bc f7    	vfnmadd231ps zmm14,zmm16,zmm23
  a291a2:	62 b2 1d 48 b8 f0    	vfmadd231ps zmm6,zmm12,zmm16
  a291a8:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x240]
  a291af:	09 
  a291b0:	62 21 74 48 58 db    	vaddps zmm27,zmm1,zmm19
  a291b6:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm27
  a291bd:	0b 
  a291be:	62 b1 74 48 5c cb    	vsubps zmm1,zmm1,zmm19
  a291c4:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a291cb:	0a 
  a291cc:	62 31 5c 48 58 de    	vaddps zmm11,zmm4,zmm22
  a291d2:	62 f1 4c 40 5c e4    	vsubps zmm4,zmm22,zmm4
  a291d8:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x200]
  a291df:	08 
  a291e0:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x440]
  a291e7:	11 
  a291e8:	62 21 74 48 58 c0    	vaddps zmm24,zmm1,zmm16
  a291ee:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm24
  a291f5:	0c 
  a291f6:	62 a1 34 48 5c fd    	vsubps zmm23,zmm9,zmm21
  a291fc:	62 71 6c 48 58 e6    	vaddps zmm12,zmm2,zmm6
  a29202:	62 f1 4c 48 5c d2    	vsubps zmm2,zmm6,zmm2
  a29208:	62 c1 34 40 58 ea    	vaddps zmm21,zmm25,zmm10
  a2920e:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm21
  a29215:	04 
  a29216:	62 c1 34 40 5c f2    	vsubps zmm22,zmm25,zmm10
  a2921c:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm22
  a29223:	18 
  a29224:	62 d1 54 48 58 f7    	vaddps zmm6,zmm5,zmm15
  a2922a:	62 f1 04 48 5c ed    	vsubps zmm5,zmm15,zmm5
  a29230:	62 71 44 48 5c c8    	vsubps zmm9,zmm7,zmm0
  a29236:	62 21 74 48 5c f0    	vsubps zmm30,zmm1,zmm16
  a2923c:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm30
  a29243:	08 
  a29244:	62 51 5c 40 58 d6    	vaddps zmm10,zmm20,zmm14
  a2924a:	62 31 0c 48 5c f4    	vsubps zmm14,zmm14,zmm20
  a29250:	62 71 14 48 5c fb    	vsubps zmm15,zmm13,zmm3
  a29256:	62 81 1c 40 5c e7    	vsubps zmm20,zmm28,zmm31
  a2925c:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm20
  a29263:	16 
  a29264:	62 41 34 48 58 cf    	vaddps zmm25,zmm9,zmm15
  a2926a:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm25
  a29271:	15 
  a29272:	62 f1 7c 48 58 c7    	vaddps zmm0,zmm0,zmm7
  a29278:	62 c1 24 48 58 dc    	vaddps zmm19,zmm11,zmm12
  a2927e:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm19
  a29285:	1d 
  a29286:	62 f1 7c 48 28 3d 30 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff69dd30]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a2928d:	dd 69 ff 
  a29290:	62 22 45 48 7f d1    	vpermt2ps zmm26,zmm7,zmm17
  a29296:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm26
  a2929d:	03 
  a2929e:	62 d1 64 48 58 dd    	vaddps zmm3,zmm3,zmm13
  a292a4:	62 e1 5c 48 58 ca    	vaddps zmm17,zmm4,zmm2
  a292aa:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm17
  a292b1:	14 
  a292b2:	62 c1 34 48 5c c7    	vsubps zmm16,zmm9,zmm15
  a292b8:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm16
  a292bf:	13 
  a292c0:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a292c6:	62 71 5c 48 5c fa    	vsubps zmm15,zmm4,zmm2
  a292cc:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm15
  a292d3:	1b 
  a292d4:	62 51 54 48 58 ee    	vaddps zmm13,zmm5,zmm14
  a292da:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm13
  a292e1:	1c 
  a292e2:	62 41 24 48 5c fc    	vsubps zmm31,zmm11,zmm12
  a292e8:	62 32 45 48 7f ca    	vpermt2ps zmm9,zmm7,zmm18
  a292ee:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm9
  a292f5:	07 
  a292f6:	62 f1 7c 48 58 e3    	vaddps zmm4,zmm0,zmm3
  a292fc:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm4
  a29303:	09 
  a29304:	62 71 7c 48 5c c3    	vsubps zmm8,zmm0,zmm3
  a2930a:	62 41 54 48 5c e6    	vsubps zmm28,zmm5,zmm14
  a29310:	62 91 7c 48 28 c2    	vmovaps zmm0,zmm26
  a29316:	62 51 4c 48 58 f2    	vaddps zmm14,zmm6,zmm10
  a2931c:	62 d1 4c 48 5c d2    	vsubps zmm2,zmm6,zmm10
  a29322:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x480]
  a29329:	12 
  a2932a:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x400]
  a29331:	10 
  a29332:	62 61 74 48 58 d3    	vaddps zmm26,zmm1,zmm3
  a29338:	62 e1 7c 48 28 15 be 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff69dbbe]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a2933f:	db 69 ff 
  a29342:	62 d2 6d 40 7f c1    	vpermt2ps zmm0,zmm18,zmm9
  a29348:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a2934e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x9c0],zmm0
  a29355:	27 
  a29356:	62 f1 74 48 5c cb    	vsubps zmm1,zmm1,zmm3
  a2935c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm1
  a29363:	17 
  a29364:	62 02 45 48 7f d8    	vpermt2ps zmm27,zmm7,zmm24
  a2936a:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a29370:	62 01 3c 00 57 c0    	vxorps xmm24,xmm24,xmm24
  a29376:	62 92 45 48 7f c0    	vpermt2ps zmm0,zmm7,zmm24
  a2937c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm0
  a29383:	20 
  a29384:	62 91 7c 48 28 eb    	vmovaps zmm5,zmm27
  a2938a:	62 f2 6d 40 7f e8    	vpermt2ps zmm5,zmm18,zmm0
  a29390:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x980],zmm5
  a29397:	26 
  a29398:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x40]
  a2939f:	01 
  a293a0:	62 72 45 48 7f 4c 24 	vpermt2ps zmm9,zmm7,ZMMWORD PTR [rsp+0x280]
  a293a7:	0a 
  a293a8:	62 b1 7c 48 28 c7    	vmovaps zmm0,zmm23
  a293ae:	62 b2 45 48 7f c6    	vpermt2ps zmm0,zmm7,zmm22
  a293b4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm0
  a293bb:	1f 
  a293bc:	62 d1 7c 48 28 d9    	vmovaps zmm3,zmm9
  a293c2:	62 f2 6d 40 7f d8    	vpermt2ps zmm3,zmm18,zmm0
  a293c8:	62 e1 7c 48 28 f3    	vmovaps zmm22,zmm3
  a293ce:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm3
  a293d5:	25 
  a293d6:	62 81 7c 48 28 ee    	vmovaps zmm21,zmm30
  a293dc:	62 a2 45 48 7f ec    	vpermt2ps zmm21,zmm7,zmm20
  a293e2:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x180]
  a293e9:	06 
  a293ea:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a293f0:	62 92 45 48 7f c0    	vpermt2ps zmm0,zmm7,zmm24
  a293f6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm0
  a293fd:	1e 
  a293fe:	62 b1 7c 48 28 dd    	vmovaps zmm3,zmm21
  a29404:	62 f2 6d 40 7f d8    	vpermt2ps zmm3,zmm18,zmm0
  a2940a:	62 61 7c 48 28 eb    	vmovaps zmm29,zmm3
  a29410:	62 11 7c 48 28 da    	vmovaps zmm11,zmm26
  a29416:	62 12 45 48 7f d9    	vpermt2ps zmm11,zmm7,zmm25
  a2941c:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a29422:	62 41 7c 48 28 ce    	vmovaps zmm25,zmm14
  a29428:	62 b2 45 48 7f c3    	vpermt2ps zmm0,zmm7,zmm19
  a2942e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xac0],zmm0
  a29435:	2b 
  a29436:	62 41 7c 48 28 f3    	vmovaps zmm30,zmm11
  a2943c:	62 62 6d 40 7f f0    	vpermt2ps zmm30,zmm18,zmm0
  a29442:	62 a1 7c 48 28 e1    	vmovaps zmm20,zmm17
  a29448:	62 c2 45 48 7f e5    	vpermt2ps zmm20,zmm7,zmm13
  a2944e:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a29454:	62 92 45 48 7f c0    	vpermt2ps zmm0,zmm7,zmm24
  a2945a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xa80],zmm0
  a29461:	2a 
  a29462:	62 a1 7c 48 28 dc    	vmovaps zmm19,zmm20
  a29468:	62 e2 6d 40 7f d8    	vpermt2ps zmm19,zmm18,zmm0
  a2946e:	62 31 7c 48 28 d0    	vmovaps zmm10,zmm16
  a29474:	62 52 45 48 7f d7    	vpermt2ps zmm10,zmm7,zmm15
  a2947a:	62 91 7c 48 28 c7    	vmovaps zmm0,zmm31
  a29480:	62 d2 45 48 7f c0    	vpermt2ps zmm0,zmm7,zmm8
  a29486:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a2948c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xa40],zmm0
  a29493:	29 
  a29494:	62 51 7c 48 28 f2    	vmovaps zmm14,zmm10
  a2949a:	62 72 6d 40 7f f0    	vpermt2ps zmm14,zmm18,zmm0
  a294a0:	62 11 7c 48 28 c4    	vmovaps zmm8,zmm28
  a294a6:	62 81 7c 48 28 cc    	vmovaps zmm17,zmm28
  a294ac:	62 72 45 48 7f c2    	vpermt2ps zmm8,zmm7,zmm2
  a294b2:	62 92 45 48 7f c8    	vpermt2ps zmm1,zmm7,zmm24
  a294b8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xa00],zmm1
  a294bf:	28 
  a294c0:	62 d1 7c 48 28 e0    	vmovaps zmm4,zmm8
  a294c6:	62 f2 6d 40 7f e1    	vpermt2ps zmm4,zmm18,zmm1
  a294cc:	62 f1 cd 48 14 dd    	vunpcklpd zmm3,zmm6,zmm5
  a294d2:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm3
  a294d9:	12 
  a294da:	62 91 cd 40 14 ed    	vunpcklpd zmm5,zmm22,zmm29
  a294e0:	62 01 7c 48 28 e5    	vmovaps zmm28,zmm29
  a294e6:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm5
  a294ed:	1a 
  a294ee:	62 61 7c 48 28 2d 08 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff69d908]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a294f5:	d9 69 ff 
  a294f8:	62 f2 15 40 7f dd    	vpermt2ps zmm3,zmm29,zmm5
  a294fe:	62 b1 8d 40 14 eb    	vunpcklpd zmm5,zmm30,zmm19
  a29504:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm5
  a2950b:	11 
  a2950c:	62 f1 8d 48 14 c4    	vunpcklpd zmm0,zmm14,zmm4
  a29512:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a29519:	10 
  a2951a:	62 f2 15 40 7f e8    	vpermt2ps zmm5,zmm29,zmm0
  a29520:	62 f1 7c 48 10 79 10 	vmovups zmm7,ZMMWORD PTR [rcx+0x400]
  a29527:	62 f1 54 48 59 c7    	vmulps zmm0,zmm5,zmm7
  a2952d:	62 f1 64 48 59 cf    	vmulps zmm1,zmm3,zmm7
  a29533:	62 f1 7c 48 10 79 11 	vmovups zmm7,ZMMWORD PTR [rcx+0x440]
  a2953a:	62 f2 65 48 b8 c7    	vfmadd231ps zmm0,zmm3,zmm7
  a29540:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a29547:	0f 
  a29548:	62 f2 45 48 bc cd    	vfnmadd231ps zmm1,zmm7,zmm5
  a2954e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm1
  a29555:	19 
  a29556:	62 f1 7c 48 28 05 20 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff69da20]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a2955d:	da 69 ff 
  a29560:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x80]
  a29567:	02 
  a29568:	62 f2 7d 48 7f 5c 24 	vpermt2ps zmm3,zmm0,ZMMWORD PTR [rsp+0x380]
  a2956f:	0e 
  a29570:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a29577:	02 
  a29578:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x140]
  a2957f:	05 
  a29580:	62 f2 7d 48 7f 74 24 	vpermt2ps zmm6,zmm0,ZMMWORD PTR [rsp+0x340]
  a29587:	0d 
  a29588:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm6
  a2958f:	05 
  a29590:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x2c0]
  a29597:	0b 
  a29598:	62 e2 7d 48 7f 44 24 	vpermt2ps zmm16,zmm0,ZMMWORD PTR [rsp+0x300]
  a2959f:	0c 
  a295a0:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm16
  a295a7:	0b 
  a295a8:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x40]
  a295af:	01 
  a295b0:	62 e2 7d 48 7f 74 24 	vpermt2ps zmm22,zmm0,ZMMWORD PTR [rsp+0x280]
  a295b7:	0a 
  a295b8:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm22
  a295bf:	01 
  a295c0:	62 e2 7d 48 7f 7c 24 	vpermt2ps zmm23,zmm0,ZMMWORD PTR [rsp+0x600]
  a295c7:	18 
  a295c8:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm23
  a295cf:	24 
  a295d0:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x200]
  a295d7:	08 
  a295d8:	62 f2 7d 48 7f 4c 24 	vpermt2ps zmm1,zmm0,ZMMWORD PTR [rsp+0x580]
  a295df:	16 
  a295e0:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a295e7:	08 
  a295e8:	62 91 7c 48 28 ea    	vmovaps zmm5,zmm26
  a295ee:	62 f2 7d 48 7f 6c 24 	vpermt2ps zmm5,zmm0,ZMMWORD PTR [rsp+0x540]
  a295f5:	15 
  a295f6:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm5
  a295fd:	23 
  a295fe:	62 62 7d 48 7f 4c 24 	vpermt2ps zmm25,zmm0,ZMMWORD PTR [rsp+0x740]
  a29605:	1d 
  a29606:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm25
  a2960d:	22 
  a2960e:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x500]
  a29615:	14 
  a29616:	62 f2 7d 48 7f 7c 24 	vpermt2ps zmm7,zmm0,ZMMWORD PTR [rsp+0x700]
  a2961d:	1c 
  a2961e:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm7
  a29625:	14 
  a29626:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x4c0]
  a2962d:	13 
  a2962e:	62 72 7d 48 7f 7c 24 	vpermt2ps zmm15,zmm0,ZMMWORD PTR [rsp+0x6c0]
  a29635:	1b 
  a29636:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm15
  a2963d:	13 
  a2963e:	62 42 7d 48 7f fd    	vpermt2ps zmm31,zmm0,zmm13
  a29644:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm31
  a2964b:	21 
  a2964c:	62 e2 7d 48 7f ca    	vpermt2ps zmm17,zmm0,zmm2
  a29652:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x100]
  a29659:	04 
  a2965a:	62 92 7d 48 7f d0    	vpermt2ps zmm2,zmm0,zmm24
  a29660:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a29667:	04 
  a29668:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a2966e:	62 62 6d 40 7f d6    	vpermt2ps zmm26,zmm18,zmm6
  a29674:	62 b1 7c 48 28 f0    	vmovaps zmm6,zmm16
  a2967a:	62 f2 6d 40 7f f2    	vpermt2ps zmm6,zmm18,zmm2
  a29680:	62 21 7c 48 28 c6    	vmovaps zmm24,zmm22
  a29686:	62 22 6d 40 7f c7    	vpermt2ps zmm24,zmm18,zmm23
  a2968c:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a29690:	62 72 7d 48 7f e2    	vpermt2ps zmm12,zmm0,zmm2
  a29696:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm12
  a2969d:	06 
  a2969e:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a296a4:	62 c2 6d 40 7f f4    	vpermt2ps zmm22,zmm18,zmm12
  a296aa:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a296b0:	62 82 6d 40 7f c1    	vpermt2ps zmm16,zmm18,zmm25
  a296b6:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x240]
  a296bd:	09 
  a296be:	62 f2 7d 48 7f ca    	vpermt2ps zmm1,zmm0,zmm2
  a296c4:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a296cb:	09 
  a296cc:	62 a1 44 00 57 ff    	vxorps xmm23,xmm23,xmm23
  a296d2:	62 f1 7c 48 28 d7    	vmovaps zmm2,zmm7
  a296d8:	62 f2 6d 40 7f d1    	vpermt2ps zmm2,zmm18,zmm1
  a296de:	62 71 ad 40 15 ee    	vunpckhpd zmm13,zmm26,zmm6
  a296e4:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm13
  a296eb:	1d 
  a296ec:	62 b1 bd 40 15 ce    	vunpckhpd zmm1,zmm24,zmm22
  a296f2:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm1
  a296f9:	1c 
  a296fa:	62 01 7c 48 28 cd    	vmovaps zmm25,zmm29
  a29700:	62 72 15 40 7f e9    	vpermt2ps zmm13,zmm29,zmm1
  a29706:	62 51 7c 48 28 e7    	vmovaps zmm12,zmm15
  a2970c:	62 12 6d 40 7f e7    	vpermt2ps zmm12,zmm18,zmm31
  a29712:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x5c0]
  a29719:	17 
  a2971a:	62 b2 7d 48 7f ef    	vpermt2ps zmm5,zmm0,zmm23
  a29720:	62 b1 7c 48 28 f9    	vmovaps zmm7,zmm17
  a29726:	62 21 7c 48 28 f9    	vmovaps zmm31,zmm17
  a2972c:	62 f2 6d 40 7f fd    	vpermt2ps zmm7,zmm18,zmm5
  a29732:	62 61 fd 40 15 ea    	vunpckhpd zmm29,zmm16,zmm2
  a29738:	62 f1 9d 48 15 c7    	vunpckhpd zmm0,zmm12,zmm7
  a2973e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm0
  a29745:	1b 
  a29746:	62 91 7c 48 28 dd    	vmovaps zmm3,zmm29
  a2974c:	62 f2 35 40 7f d8    	vpermt2ps zmm3,zmm25,zmm0
  a29752:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a29759:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  a29760:	62 71 64 48 59 f8    	vmulps zmm15,zmm3,zmm0
  a29766:	62 72 15 48 b8 f9    	vfmadd231ps zmm15,zmm13,zmm1
  a2976c:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm15
  a29773:	0a 
  a29774:	62 f1 14 48 59 c0    	vmulps zmm0,zmm13,zmm0
  a2977a:	62 f2 75 48 bc c3    	vfnmadd231ps zmm0,zmm1,zmm3
  a29780:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a29787:	0e 
  a29788:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x9c0]
  a2978f:	27 
  a29790:	62 f1 fd 48 15 44 24 	vunpckhpd zmm0,zmm0,ZMMWORD PTR [rsp+0x980]
  a29797:	26 
  a29798:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm0
  a2979f:	18 
  a297a0:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x940]
  a297a7:	25 
  a297a8:	62 91 f5 48 15 cc    	vunpckhpd zmm1,zmm1,zmm28
  a297ae:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm1
  a297b5:	17 
  a297b6:	62 31 8d 40 15 eb    	vunpckhpd zmm13,zmm30,zmm19
  a297bc:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm13
  a297c3:	16 
  a297c4:	62 f1 8d 48 15 e4    	vunpckhpd zmm4,zmm14,zmm4
  a297ca:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm4
  a297d1:	15 
  a297d2:	62 71 7c 48 28 3d 64 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff69d664]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a297d9:	d6 69 ff 
  a297dc:	62 f2 05 48 7f c1    	vpermt2ps zmm0,zmm15,zmm1
  a297e2:	62 d1 7c 48 28 cd    	vmovaps zmm1,zmm13
  a297e8:	62 f2 05 48 7f cc    	vpermt2ps zmm1,zmm15,zmm4
  a297ee:	62 f1 7c 48 10 61 16 	vmovups zmm4,ZMMWORD PTR [rcx+0x580]
  a297f5:	62 f1 74 48 59 dc    	vmulps zmm3,zmm1,zmm4
  a297fb:	62 71 7c 48 59 ec    	vmulps zmm13,zmm0,zmm4
  a29801:	62 f1 7c 48 10 61 17 	vmovups zmm4,ZMMWORD PTR [rcx+0x5c0]
  a29808:	62 f2 7d 48 b8 dc    	vfmadd231ps zmm3,zmm0,zmm4
  a2980e:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm3
  a29815:	0d 
  a29816:	62 72 5d 48 bc e9    	vfnmadd231ps zmm13,zmm4,zmm1
  a2981c:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm13
  a29823:	0c 
  a29824:	62 71 7c 48 28 2d 12 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff69d712]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a2982b:	d7 69 ff 
  a2982e:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a29835:	03 
  a29836:	62 f2 15 48 7f 4c 24 	vpermt2ps zmm1,zmm13,ZMMWORD PTR [rsp+0x1c0]
  a2983d:	07 
  a2983e:	62 62 15 48 7f 5c 24 	vpermt2ps zmm27,zmm13,ZMMWORD PTR [rsp+0x800]
  a29845:	20 
  a29846:	62 72 15 48 7f 4c 24 	vpermt2ps zmm9,zmm13,ZMMWORD PTR [rsp+0x7c0]
  a2984d:	1f 
  a2984e:	62 e2 15 48 7f 6c 24 	vpermt2ps zmm21,zmm13,ZMMWORD PTR [rsp+0x780]
  a29855:	1e 
  a29856:	62 72 15 48 7f 5c 24 	vpermt2ps zmm11,zmm13,ZMMWORD PTR [rsp+0xac0]
  a2985d:	2b 
  a2985e:	62 e2 15 48 7f 64 24 	vpermt2ps zmm20,zmm13,ZMMWORD PTR [rsp+0xa80]
  a29865:	2a 
  a29866:	62 72 15 48 7f 54 24 	vpermt2ps zmm10,zmm13,ZMMWORD PTR [rsp+0xa40]
  a2986d:	29 
  a2986e:	62 72 15 48 7f 44 24 	vpermt2ps zmm8,zmm13,ZMMWORD PTR [rsp+0xa00]
  a29875:	28 
  a29876:	62 91 f5 48 15 c3    	vunpckhpd zmm0,zmm1,zmm27
  a2987c:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a29882:	62 b1 b5 48 15 cd    	vunpckhpd zmm1,zmm9,zmm21
  a29888:	62 f2 35 40 7f c1    	vpermt2ps zmm0,zmm25,zmm1
  a2988e:	62 b1 a5 48 15 cc    	vunpckhpd zmm1,zmm11,zmm20
  a29894:	62 d1 ad 48 15 e0    	vunpckhpd zmm4,zmm10,zmm8
  a2989a:	62 f2 35 40 7f cc    	vpermt2ps zmm1,zmm25,zmm4
  a298a0:	62 f1 7c 48 10 61 1c 	vmovups zmm4,ZMMWORD PTR [rcx+0x700]
  a298a7:	62 71 74 48 59 f4    	vmulps zmm14,zmm1,zmm4
  a298ad:	62 e1 7c 48 59 cc    	vmulps zmm17,zmm0,zmm4
  a298b3:	62 f1 7c 48 10 61 1d 	vmovups zmm4,ZMMWORD PTR [rcx+0x740]
  a298ba:	62 72 7d 48 b8 f4    	vfmadd231ps zmm14,zmm0,zmm4
  a298c0:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm14
  a298c7:	03 
  a298c8:	62 e2 5d 48 bc c9    	vfnmadd231ps zmm17,zmm4,zmm1
  a298ce:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm17
  a298d5:	07 
  a298d6:	62 11 e5 48 14 f3    	vunpcklpd zmm14,zmm3,zmm27
  a298dc:	62 b1 b5 48 14 cd    	vunpcklpd zmm1,zmm9,zmm21
  a298e2:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm1
  a298e9:	1f 
  a298ea:	62 b1 a5 48 14 e4    	vunpcklpd zmm4,zmm11,zmm20
  a298f0:	62 d1 ad 48 14 d8    	vunpcklpd zmm3,zmm10,zmm8
  a298f6:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm3
  a298fd:	1e 
  a298fe:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a29904:	62 f2 05 48 7f c1    	vpermt2ps zmm0,zmm15,zmm1
  a2990a:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a29910:	62 72 05 48 7f c3    	vpermt2ps zmm8,zmm15,zmm3
  a29916:	62 71 7c 48 10 49 1b 	vmovups zmm9,ZMMWORD PTR [rcx+0x6c0]
  a2991d:	62 71 7c 48 10 51 1a 	vmovups zmm10,ZMMWORD PTR [rcx+0x680]
  a29924:	62 d1 3c 48 59 ca    	vmulps zmm1,zmm8,zmm10
  a2992a:	62 d2 7d 48 b8 c9    	vfmadd231ps zmm1,zmm0,zmm9
  a29930:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm1
  a29937:	20 
  a29938:	62 41 7c 48 59 da    	vmulps zmm27,zmm0,zmm10
  a2993e:	62 42 35 48 bc d8    	vfnmadd231ps zmm27,zmm9,zmm8
  a29944:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a2994b:	02 
  a2994c:	62 f2 15 48 7f 44 24 	vpermt2ps zmm0,zmm13,ZMMWORD PTR [rsp+0x140]
  a29953:	05 
  a29954:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x2c0]
  a2995b:	0b 
  a2995c:	62 72 15 48 7f 4c 24 	vpermt2ps zmm9,zmm13,ZMMWORD PTR [rsp+0x100]
  a29963:	04 
  a29964:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x40]
  a2996b:	01 
  a2996c:	62 72 15 48 7f 44 24 	vpermt2ps zmm8,zmm13,ZMMWORD PTR [rsp+0x900]
  a29973:	24 
  a29974:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x200]
  a2997b:	08 
  a2997c:	62 f2 15 48 7f 4c 24 	vpermt2ps zmm1,zmm13,ZMMWORD PTR [rsp+0x180]
  a29983:	06 
  a29984:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x8c0]
  a2998b:	23 
  a2998c:	62 e2 15 48 7f 4c 24 	vpermt2ps zmm17,zmm13,ZMMWORD PTR [rsp+0x880]
  a29993:	22 
  a29994:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x500]
  a2999b:	14 
  a2999c:	62 e2 15 48 7f 5c 24 	vpermt2ps zmm19,zmm13,ZMMWORD PTR [rsp+0x240]
  a299a3:	09 
  a299a4:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x4c0]
  a299ab:	13 
  a299ac:	62 e2 15 48 7f 54 24 	vpermt2ps zmm18,zmm13,ZMMWORD PTR [rsp+0x840]
  a299b3:	21 
  a299b4:	62 81 7c 48 28 ef    	vmovaps zmm21,zmm31
  a299ba:	62 e2 15 48 7f ed    	vpermt2ps zmm21,zmm13,zmm5
  a299c0:	62 41 fd 48 15 e1    	vunpckhpd zmm28,zmm0,zmm9
  a299c6:	62 c1 7c 48 28 e1    	vmovaps zmm20,zmm9
  a299cc:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a299d2:	62 f1 bd 48 15 d9    	vunpckhpd zmm3,zmm8,zmm1
  a299d8:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a299de:	62 11 7c 48 28 cc    	vmovaps zmm9,zmm28
  a299e4:	62 72 05 48 7f cb    	vpermt2ps zmm9,zmm15,zmm3
  a299ea:	62 21 f5 40 15 f3    	vunpckhpd zmm30,zmm17,zmm19
  a299f0:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a299f6:	62 31 ed 40 15 c5    	vunpckhpd zmm8,zmm18,zmm21
  a299fc:	62 21 7c 48 28 fd    	vmovaps zmm31,zmm21
  a29a02:	62 11 7c 48 28 d6    	vmovaps zmm10,zmm30
  a29a08:	62 52 05 48 7f d0    	vpermt2ps zmm10,zmm15,zmm8
  a29a0e:	62 e1 7c 48 10 59 0e 	vmovups zmm19,ZMMWORD PTR [rcx+0x380]
  a29a15:	62 a1 2c 48 59 fb    	vmulps zmm23,zmm10,zmm19
  a29a1b:	62 a1 34 48 59 eb    	vmulps zmm21,zmm9,zmm19
  a29a21:	62 e1 7c 48 10 59 0f 	vmovups zmm19,ZMMWORD PTR [rcx+0x3c0]
  a29a28:	62 a2 35 48 b8 fb    	vfmadd231ps zmm23,zmm9,zmm19
  a29a2e:	62 c2 65 40 bc ea    	vfnmadd231ps zmm21,zmm19,zmm10
  a29a34:	62 f1 ad 40 14 f6    	vunpcklpd zmm6,zmm26,zmm6
  a29a3a:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm6
  a29a41:	02 
  a29a42:	62 b1 bd 40 14 ee    	vunpcklpd zmm5,zmm24,zmm22
  a29a48:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm5
  a29a4f:	05 
  a29a50:	62 e1 fd 40 14 da    	vunpcklpd zmm19,zmm16,zmm2
  a29a56:	62 e1 9d 48 14 f7    	vunpcklpd zmm22,zmm12,zmm7
  a29a5c:	62 f1 7c 48 28 d6    	vmovaps zmm2,zmm6
  a29a62:	62 f2 05 48 7f d5    	vpermt2ps zmm2,zmm15,zmm5
  a29a68:	62 b1 7c 48 28 eb    	vmovaps zmm5,zmm19
  a29a6e:	62 b2 05 48 7f ee    	vpermt2ps zmm5,zmm15,zmm22
  a29a74:	62 f1 7c 48 10 79 02 	vmovups zmm7,ZMMWORD PTR [rcx+0x80]
  a29a7b:	62 71 7c 48 10 49 03 	vmovups zmm9,ZMMWORD PTR [rcx+0xc0]
  a29a82:	62 61 54 48 59 c7    	vmulps zmm24,zmm5,zmm7
  a29a88:	62 42 6d 48 b8 c1    	vfmadd231ps zmm24,zmm2,zmm9
  a29a8e:	62 f1 6c 48 59 ff    	vmulps zmm7,zmm2,zmm7
  a29a94:	62 f2 35 48 bc fd    	vfnmadd231ps zmm7,zmm9,zmm5
  a29a9a:	62 31 a5 48 14 d4    	vunpcklpd zmm10,zmm11,zmm20
  a29aa0:	62 f1 95 48 14 d1    	vunpcklpd zmm2,zmm13,zmm1
  a29aa6:	62 71 f5 40 14 e0    	vunpcklpd zmm12,zmm17,zmm0
  a29aac:	62 91 ed 40 14 ef    	vunpcklpd zmm5,zmm18,zmm31
  a29ab2:	62 c1 7c 48 28 c2    	vmovaps zmm16,zmm10
  a29ab8:	62 91 7c 48 28 c9    	vmovaps zmm1,zmm25
  a29abe:	62 72 35 40 7f d2    	vpermt2ps zmm10,zmm25,zmm2
  a29ac4:	62 c1 7c 48 28 cc    	vmovaps zmm17,zmm12
  a29aca:	62 72 35 40 7f e5    	vpermt2ps zmm12,zmm25,zmm5
  a29ad0:	62 f1 7c 48 10 71 08 	vmovups zmm6,ZMMWORD PTR [rcx+0x200]
  a29ad7:	62 71 1c 48 59 ce    	vmulps zmm9,zmm12,zmm6
  a29add:	62 f1 2c 48 59 f6    	vmulps zmm6,zmm10,zmm6
  a29ae3:	62 e1 7c 48 10 61 09 	vmovups zmm20,ZMMWORD PTR [rcx+0x240]
  a29aea:	62 32 2d 48 b8 cc    	vfmadd231ps zmm9,zmm10,zmm20
  a29af0:	62 d2 5d 40 bc f4    	vfnmadd231ps zmm6,zmm20,zmm12
  a29af6:	62 42 35 40 7f f0    	vpermt2ps zmm30,zmm25,zmm8
  a29afc:	62 62 35 40 7f e3    	vpermt2ps zmm28,zmm25,zmm3
  a29b02:	62 f1 7c 48 10 41 0c 	vmovups zmm0,ZMMWORD PTR [rcx+0x300]
  a29b09:	62 71 1c 40 59 e0    	vmulps zmm12,zmm28,zmm0
  a29b0f:	62 e1 0c 40 59 e0    	vmulps zmm20,zmm30,zmm0
  a29b15:	62 f1 7c 48 10 41 0d 	vmovups zmm0,ZMMWORD PTR [rcx+0x340]
  a29b1c:	62 72 0d 40 bc e0    	vfnmadd231ps zmm12,zmm30,zmm0
  a29b22:	62 82 7d 48 b8 e4    	vfmadd231ps zmm20,zmm0,zmm28
  a29b28:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x440]
  a29b2f:	11 
  a29b30:	62 72 05 48 7f 44 24 	vpermt2ps zmm8,zmm15,ZMMWORD PTR [rsp+0x400]
  a29b37:	10 
  a29b38:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x480]
  a29b3f:	12 
  a29b40:	62 f2 05 48 7f 5c 24 	vpermt2ps zmm3,zmm15,ZMMWORD PTR [rsp+0x680]
  a29b47:	1a 
  a29b48:	62 f1 7c 48 10 41 12 	vmovups zmm0,ZMMWORD PTR [rcx+0x480]
  a29b4f:	62 61 64 48 59 f0    	vmulps zmm30,zmm3,zmm0
  a29b55:	62 61 3c 48 59 c8    	vmulps zmm25,zmm8,zmm0
  a29b5b:	62 f1 7c 48 10 41 13 	vmovups zmm0,ZMMWORD PTR [rcx+0x4c0]
  a29b62:	62 62 3d 48 bc f0    	vfnmadd231ps zmm30,zmm8,zmm0
  a29b68:	62 62 7d 48 b8 cb    	vfmadd231ps zmm25,zmm0,zmm3
  a29b6e:	62 62 05 48 7f 6c 24 	vpermt2ps zmm29,zmm15,ZMMWORD PTR [rsp+0x6c0]
  a29b75:	1b 
  a29b76:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x740]
  a29b7d:	1d 
  a29b7e:	62 f2 05 48 7f 5c 24 	vpermt2ps zmm3,zmm15,ZMMWORD PTR [rsp+0x700]
  a29b85:	1c 
  a29b86:	62 71 7c 48 10 41 06 	vmovups zmm8,ZMMWORD PTR [rcx+0x180]
  a29b8d:	62 d1 64 48 59 c0    	vmulps zmm0,zmm3,zmm8
  a29b93:	62 41 14 40 59 e0    	vmulps zmm28,zmm29,zmm8
  a29b99:	62 71 7c 48 10 41 07 	vmovups zmm8,ZMMWORD PTR [rcx+0x1c0]
  a29ba0:	62 d2 15 40 bc c0    	vfnmadd231ps zmm0,zmm29,zmm8
  a29ba6:	62 62 3d 48 b8 e3    	vfmadd231ps zmm28,zmm8,zmm3
  a29bac:	62 71 7c 48 28 d1    	vmovaps zmm10,zmm1
  a29bb2:	62 f2 75 48 7f 64 24 	vpermt2ps zmm4,zmm1,ZMMWORD PTR [rsp+0x780]
  a29bb9:	1e 
  a29bba:	62 72 75 48 7f 74 24 	vpermt2ps zmm14,zmm1,ZMMWORD PTR [rsp+0x7c0]
  a29bc1:	1f 
  a29bc2:	62 71 7c 48 10 41 18 	vmovups zmm8,ZMMWORD PTR [rcx+0x600]
  a29bc9:	62 41 0c 48 59 f8    	vmulps zmm31,zmm14,zmm8
  a29bcf:	62 41 5c 48 59 d0    	vmulps zmm26,zmm4,zmm8
  a29bd5:	62 71 7c 48 10 41 19 	vmovups zmm8,ZMMWORD PTR [rcx+0x640]
  a29bdc:	62 42 5d 48 bc f8    	vfnmadd231ps zmm31,zmm4,zmm8
  a29be2:	62 42 3d 48 b8 d6    	vfmadd231ps zmm26,zmm8,zmm14
  a29be8:	62 e2 05 48 7f c2    	vpermt2ps zmm16,zmm15,zmm2
  a29bee:	62 e2 05 48 7f cd    	vpermt2ps zmm17,zmm15,zmm5
  a29bf4:	62 f1 7c 48 10 49 0a 	vmovups zmm1,ZMMWORD PTR [rcx+0x280]
  a29bfb:	62 71 74 40 59 d9    	vmulps zmm11,zmm17,zmm1
  a29c01:	62 f1 7c 40 59 d1    	vmulps zmm2,zmm16,zmm1
  a29c07:	62 f1 7c 48 10 49 0b 	vmovups zmm1,ZMMWORD PTR [rcx+0x2c0]
  a29c0e:	62 72 7d 40 b8 d9    	vfmadd231ps zmm11,zmm16,zmm1
  a29c14:	62 b2 75 48 bc d1    	vfnmadd231ps zmm2,zmm1,zmm17
  a29c1a:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a29c21:	04 
  a29c22:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x600]
  a29c29:	18 
  a29c2a:	62 f2 2d 48 7f 5c 24 	vpermt2ps zmm3,zmm10,ZMMWORD PTR [rsp+0x5c0]
  a29c31:	17 
  a29c32:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x580]
  a29c39:	16 
  a29c3a:	62 f2 2d 48 7f 54 24 	vpermt2ps zmm2,zmm10,ZMMWORD PTR [rsp+0x540]
  a29c41:	15 
  a29c42:	62 d1 7c 48 28 e2    	vmovaps zmm4,zmm10
  a29c48:	62 f1 7c 48 10 49 14 	vmovups zmm1,ZMMWORD PTR [rcx+0x500]
  a29c4f:	62 71 6c 48 59 f9    	vmulps zmm15,zmm2,zmm1
  a29c55:	62 f1 64 48 59 e9    	vmulps zmm5,zmm3,zmm1
  a29c5b:	62 f1 7c 48 10 49 15 	vmovups zmm1,ZMMWORD PTR [rcx+0x540]
  a29c62:	62 72 65 48 b8 f9    	vfmadd231ps zmm15,zmm3,zmm1
  a29c68:	62 f2 75 48 bc ea    	vfnmadd231ps zmm5,zmm1,zmm2
  a29c6e:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm5
  a29c75:	0b 
  a29c76:	62 a2 2d 48 7f de    	vpermt2ps zmm19,zmm10,zmm22
  a29c7c:	62 f1 44 48 5c d6    	vsubps zmm2,zmm7,zmm6
  a29c82:	62 f1 44 48 58 ce    	vaddps zmm1,zmm7,zmm6
  a29c88:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a29c8f:	09 
  a29c90:	62 b1 24 40 5c dd    	vsubps zmm3,zmm27,zmm21
  a29c96:	62 b1 24 40 58 cd    	vaddps zmm1,zmm27,zmm21
  a29c9c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a29ca3:	08 
  a29ca4:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x800]
  a29cab:	20 
  a29cac:	62 b1 74 48 58 ef    	vaddps zmm5,zmm1,zmm23
  a29cb2:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm5
  a29cb9:	01 
  a29cba:	62 b1 74 48 5c ef    	vsubps zmm5,zmm1,zmm23
  a29cc0:	62 d1 3c 40 58 c9    	vaddps zmm1,zmm24,zmm9
  a29cc6:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a29ccd:	06 
  a29cce:	62 c1 3c 40 5c d1    	vsubps zmm18,zmm24,zmm9
  a29cd4:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x300]
  a29cdb:	0c 
  a29cdc:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x1c0]
  a29ce3:	07 
  a29ce4:	62 e1 74 48 5c ee    	vsubps zmm21,zmm1,zmm6
  a29cea:	62 f1 74 48 58 ce    	vaddps zmm1,zmm1,zmm6
  a29cf0:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm1
  a29cf7:	13 
  a29cf8:	62 01 1c 48 5c de    	vsubps zmm27,zmm12,zmm30
  a29cfe:	62 81 1c 48 58 f6    	vaddps zmm22,zmm12,zmm30
  a29d04:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x640]
  a29d0b:	19 
  a29d0c:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x380]
  a29d13:	0e 
  a29d14:	62 61 74 48 5c ee    	vsubps zmm29,zmm1,zmm6
  a29d1a:	62 f1 74 48 58 ce    	vaddps zmm1,zmm1,zmm6
  a29d20:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm1
  a29d27:	12 
  a29d28:	62 01 7c 48 5c f7    	vsubps zmm30,zmm0,zmm31
  a29d2e:	62 81 7c 48 58 c7    	vaddps zmm16,zmm0,zmm31
  a29d34:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x3c0]
  a29d3b:	0f 
  a29d3c:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x280]
  a29d43:	0a 
  a29d44:	62 71 7c 48 58 f1    	vaddps zmm14,zmm0,zmm1
  a29d4a:	62 61 7c 48 5c c1    	vsubps zmm24,zmm0,zmm1
  a29d50:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x340]
  a29d57:	0d 
  a29d58:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a29d5f:	03 
  a29d60:	62 71 7c 48 58 e1    	vaddps zmm12,zmm0,zmm1
  a29d66:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x80]
  a29d6d:	02 
  a29d6e:	62 72 5d 48 7f 54 24 	vpermt2ps zmm10,zmm4,ZMMWORD PTR [rsp+0x140]
  a29d75:	05 
  a29d76:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm10
  a29d7d:	02 
  a29d7e:	62 11 5c 40 58 c9    	vaddps zmm9,zmm20,zmm25
  a29d84:	62 f1 7c 48 5c c9    	vsubps zmm1,zmm0,zmm1
  a29d8a:	62 81 1c 40 58 fa    	vaddps zmm23,zmm28,zmm26
  a29d90:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm23
  a29d97:	18 
  a29d98:	62 01 1c 40 5c d2    	vsubps zmm26,zmm28,zmm26
  a29d9e:	62 91 5c 40 5c e1    	vsubps zmm4,zmm20,zmm25
  a29da4:	62 f2 7d 48 18 35 aa 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff64b9aa]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a29dab:	b9 64 ff 
  a29dae:	62 e1 54 40 59 e6    	vmulps zmm20,zmm21,zmm6
  a29db4:	62 e1 6c 48 59 ce    	vmulps zmm17,zmm2,zmm6
  a29dba:	62 f2 7d 48 18 3d dc 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff64b5dc]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a29dc1:	b5 64 ff 
  a29dc4:	62 e2 65 48 b8 cf    	vfmadd231ps zmm17,zmm3,zmm7
  a29dca:	62 61 64 48 59 ce    	vmulps zmm25,zmm3,zmm6
  a29dd0:	62 62 45 48 bc ca    	vfnmadd231ps zmm25,zmm7,zmm2
  a29dd6:	62 61 24 40 59 e6    	vmulps zmm28,zmm27,zmm6
  a29ddc:	62 62 0d 40 b8 e7    	vfmadd231ps zmm28,zmm30,zmm7
  a29de2:	62 f1 0c 40 59 d6    	vmulps zmm2,zmm30,zmm6
  a29de8:	62 e2 15 40 b8 e7    	vfmadd231ps zmm20,zmm29,zmm7
  a29dee:	62 92 45 48 bc d3    	vfnmadd231ps zmm2,zmm7,zmm27
  a29df4:	62 61 74 48 59 de    	vmulps zmm27,zmm1,zmm6
  a29dfa:	62 61 14 40 59 ee    	vmulps zmm29,zmm29,zmm6
  a29e00:	62 22 45 48 bc ed    	vfnmadd231ps zmm29,zmm7,zmm21
  a29e06:	62 71 6c 40 59 ee    	vmulps zmm13,zmm18,zmm6
  a29e0c:	62 72 55 48 b8 ef    	vfmadd231ps zmm13,zmm5,zmm7
  a29e12:	62 61 54 48 59 f6    	vmulps zmm30,zmm5,zmm6
  a29e18:	62 62 3d 40 b8 df    	vfmadd231ps zmm27,zmm24,zmm7
  a29e1e:	62 22 45 48 bc f2    	vfnmadd231ps zmm30,zmm7,zmm18
  a29e24:	62 61 5c 48 59 fe    	vmulps zmm31,zmm4,zmm6
  a29e2a:	62 f1 3c 40 59 c6    	vmulps zmm0,zmm24,zmm6
  a29e30:	62 f2 45 48 bc c1    	vfnmadd231ps zmm0,zmm7,zmm1
  a29e36:	62 72 7d 48 18 05 04 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff64b804]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a29e3d:	b8 64 ff 
  a29e40:	62 d1 7c 48 28 c8    	vmovaps zmm1,zmm8
  a29e46:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm19
  a29e4d:	15 
  a29e4e:	62 b2 45 40 ac cb    	vfnmadd213ps zmm1,zmm23,zmm19
  a29e54:	62 e2 7d 48 18 15 8a 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff64b88a]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a29e5b:	b8 64 ff 
  a29e5e:	62 c1 7c 48 28 f9    	vmovaps zmm23,zmm9
  a29e64:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm9
  a29e6b:	16 
  a29e6c:	62 b2 35 48 b8 ca    	vfmadd231ps zmm1,zmm9,zmm18
  a29e72:	62 62 2d 40 b8 ff    	vfmadd231ps zmm31,zmm26,zmm7
  a29e78:	62 f1 2c 40 59 de    	vmulps zmm3,zmm26,zmm6
  a29e7e:	62 f2 45 48 bc dc    	vfnmadd231ps zmm3,zmm7,zmm4
  a29e84:	62 f1 6c 48 58 e1    	vaddps zmm4,zmm2,zmm1
  a29e8a:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm4
  a29e91:	14 
  a29e92:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a29e98:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a29e9f:	0a 
  a29ea0:	62 d1 7c 48 28 c8    	vmovaps zmm1,zmm8
  a29ea6:	62 d1 7c 48 28 ee    	vmovaps zmm5,zmm14
  a29eac:	62 d2 0d 48 ac cb    	vfnmadd213ps zmm1,zmm14,zmm11
  a29eb2:	62 b2 1d 48 b8 ca    	vfmadd231ps zmm1,zmm12,zmm18
  a29eb8:	62 91 74 48 58 d5    	vaddps zmm2,zmm1,zmm29
  a29ebe:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a29ec5:	03 
  a29ec6:	62 91 74 48 5c cd    	vsubps zmm1,zmm1,zmm29
  a29ecc:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm1
  a29ed3:	1a 
  a29ed4:	62 d1 7c 48 28 c8    	vmovaps zmm1,zmm8
  a29eda:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm15
  a29ee1:	17 
  a29ee2:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x40]
  a29ee9:	01 
  a29eea:	62 d2 45 48 ac cf    	vfnmadd213ps zmm1,zmm7,zmm15
  a29ef0:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x180]
  a29ef7:	06 
  a29ef8:	62 b2 55 40 b8 ca    	vfmadd231ps zmm1,zmm21,zmm18
  a29efe:	62 01 74 48 58 e9    	vaddps zmm29,zmm1,zmm25
  a29f04:	62 91 74 48 5c c9    	vsubps zmm1,zmm1,zmm25
  a29f0a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm1
  a29f11:	10 
  a29f12:	62 d1 7c 48 28 c8    	vmovaps zmm1,zmm8
  a29f18:	62 b1 7c 48 28 f0    	vmovaps zmm6,zmm16
  a29f1e:	62 d2 7d 40 ac ca    	vfnmadd213ps zmm1,zmm16,zmm10
  a29f24:	62 31 7c 48 28 ce    	vmovaps zmm9,zmm22
  a29f2a:	62 b2 4d 40 b8 ca    	vfmadd231ps zmm1,zmm22,zmm18
  a29f30:	62 f1 74 48 5c d3    	vsubps zmm2,zmm1,zmm3
  a29f36:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a29f3d:	05 
  a29f3e:	62 f1 74 48 58 cb    	vaddps zmm1,zmm1,zmm3
  a29f44:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm1
  a29f4b:	11 
  a29f4c:	62 d1 7c 48 28 c8    	vmovaps zmm1,zmm8
  a29f52:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x100]
  a29f59:	04 
  a29f5a:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x480]
  a29f61:	12 
  a29f62:	62 92 35 40 ac c8    	vfnmadd213ps zmm1,zmm25,zmm24
  a29f68:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x4c0]
  a29f6f:	13 
  a29f70:	62 b2 5d 48 b8 ca    	vfmadd231ps zmm1,zmm4,zmm18
  a29f76:	62 e1 74 48 5c f0    	vsubps zmm22,zmm1,zmm0
  a29f7c:	62 f1 74 48 58 c0    	vaddps zmm0,zmm1,zmm0
  a29f82:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm0
  a29f89:	19 
  a29f8a:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a29f90:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x2c0]
  a29f97:	0b 
  a29f98:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x200]
  a29f9f:	08 
  a29fa0:	62 f2 7d 40 ac c3    	vfnmadd213ps zmm0,zmm16,zmm3
  a29fa6:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x240]
  a29fad:	09 
  a29fae:	62 b2 0d 48 b8 c2    	vfmadd231ps zmm0,zmm14,zmm18
  a29fb4:	62 11 7c 48 5c d6    	vsubps zmm10,zmm0,zmm30
  a29fba:	62 91 7c 48 58 c6    	vaddps zmm0,zmm0,zmm30
  a29fc0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a29fc7:	0e 
  a29fc8:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a29fce:	62 d2 45 48 a8 c7    	vfmadd213ps zmm0,zmm7,zmm15
  a29fd4:	62 d2 55 40 bc c0    	vfnmadd231ps zmm0,zmm21,zmm8
  a29fda:	62 21 7c 48 58 d1    	vaddps zmm26,zmm0,zmm17
  a29fe0:	62 a1 7c 48 5c e9    	vsubps zmm21,zmm0,zmm17
  a29fe6:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a29fec:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x600]
  a29ff3:	18 
  a29ff4:	62 b2 45 48 a8 c3    	vfmadd213ps zmm0,zmm7,zmm19
  a29ffa:	62 d2 45 40 bc c0    	vfnmadd231ps zmm0,zmm23,zmm8
  a2a000:	62 61 1c 40 58 f0    	vaddps zmm30,zmm28,zmm0
  a2a006:	62 91 7c 48 5c c4    	vsubps zmm0,zmm0,zmm28
  a2a00c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a2a013:	0d 
  a2a014:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a2a01a:	62 d2 55 48 a8 c3    	vfmadd213ps zmm0,zmm5,zmm11
  a2a020:	62 71 7c 48 28 fd    	vmovaps zmm15,zmm5
  a2a026:	62 d2 1d 48 bc c0    	vfnmadd231ps zmm0,zmm12,zmm8
  a2a02c:	62 b1 7c 48 58 cc    	vaddps zmm1,zmm0,zmm20
  a2a032:	62 a1 7c 48 5c cc    	vsubps zmm17,zmm0,zmm20
  a2a038:	62 a1 7c 48 28 e2    	vmovaps zmm20,zmm18
  a2a03e:	62 82 35 40 a8 e0    	vfmadd213ps zmm20,zmm25,zmm24
  a2a044:	62 c2 5d 48 bc e0    	vfnmadd231ps zmm20,zmm4,zmm8
  a2a04a:	62 61 7c 48 28 e4    	vmovaps zmm28,zmm4
  a2a050:	62 91 5c 40 5c c3    	vsubps zmm0,zmm20,zmm27
  a2a056:	62 91 5c 40 58 e3    	vaddps zmm4,zmm20,zmm27
  a2a05c:	62 a1 7c 48 28 e2    	vmovaps zmm20,zmm18
  a2a062:	62 e2 7d 40 a8 e3    	vfmadd213ps zmm20,zmm16,zmm3
  a2a068:	62 a1 7c 48 28 f8    	vmovaps zmm23,zmm16
  a2a06e:	62 e1 7c 48 28 c3    	vmovaps zmm16,zmm3
  a2a074:	62 c2 0d 48 bc e0    	vfnmadd231ps zmm20,zmm14,zmm8
  a2a07a:	62 c1 7c 48 28 de    	vmovaps zmm19,zmm14
  a2a080:	62 41 5c 40 5c dd    	vsubps zmm27,zmm20,zmm13
  a2a086:	62 d1 5c 40 58 d5    	vaddps zmm2,zmm20,zmm13
  a2a08c:	62 91 7c 48 5c db    	vsubps zmm3,zmm0,zmm27
  a2a092:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm3
  a2a099:	0f 
  a2a09a:	62 11 7c 48 58 f3    	vaddps zmm14,zmm0,zmm27
  a2a0a0:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a2a0a6:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x80]
  a2a0ad:	02 
  a2a0ae:	62 f2 4d 48 a8 c3    	vfmadd213ps zmm0,zmm6,zmm3
  a2a0b4:	62 d2 35 48 bc c0    	vfnmadd231ps zmm0,zmm9,zmm8
  a2a0ba:	62 c1 7c 48 28 d1    	vmovaps zmm18,zmm9
  a2a0c0:	62 91 7c 48 5c ef    	vsubps zmm5,zmm0,zmm31
  a2a0c6:	62 01 7c 48 58 df    	vaddps zmm27,zmm0,zmm31
  a2a0cc:	62 d1 24 48 58 c7    	vaddps zmm0,zmm11,zmm15
  a2a0d2:	62 81 74 48 58 e2    	vaddps zmm20,zmm1,zmm26
  a2a0d8:	62 91 74 48 5c ca    	vsubps zmm1,zmm1,zmm26
  a2a0de:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a2a0e5:	0c 
  a2a0e6:	62 d1 7c 48 58 c4    	vaddps zmm0,zmm0,zmm12
  a2a0ec:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x5c0]
  a2a0f3:	17 
  a2a0f4:	62 71 74 48 58 6c 24 	vaddps zmm13,zmm1,ZMMWORD PTR [rsp+0x40]
  a2a0fb:	01 
  a2a0fc:	62 d1 4c 40 5c ca    	vsubps zmm1,zmm22,zmm10
  a2a102:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a2a109:	07 
  a2a10a:	62 41 4c 40 58 d2    	vaddps zmm26,zmm22,zmm10
  a2a110:	62 71 14 48 58 4c 24 	vaddps zmm9,zmm13,ZMMWORD PTR [rsp+0x180]
  a2a117:	06 
  a2a118:	62 71 44 48 58 7c 24 	vaddps zmm15,zmm7,ZMMWORD PTR [rsp+0x540]
  a2a11f:	15 
  a2a120:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a2a127:	03 
  a2a128:	62 11 74 48 58 ed    	vaddps zmm13,zmm1,zmm29
  a2a12e:	62 91 74 48 5c cd    	vsubps zmm1,zmm1,zmm29
  a2a134:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a2a13b:	03 
  a2a13c:	62 71 04 48 58 7c 24 	vaddps zmm15,zmm15,ZMMWORD PTR [rsp+0x580]
  a2a143:	16 
  a2a144:	62 11 3c 40 58 d9    	vaddps zmm11,zmm24,zmm25
  a2a14a:	62 f1 5c 48 5c ca    	vsubps zmm1,zmm4,zmm2
  a2a150:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a2a157:	06 
  a2a158:	62 71 5c 48 58 e2    	vaddps zmm12,zmm4,zmm2
  a2a15e:	62 91 24 48 58 d4    	vaddps zmm2,zmm11,zmm28
  a2a164:	62 b1 7c 40 58 e7    	vaddps zmm4,zmm16,zmm23
  a2a16a:	62 b1 5c 48 58 e3    	vaddps zmm4,zmm4,zmm19
  a2a170:	62 e1 6c 48 5c c4    	vsubps zmm16,zmm2,zmm4
  a2a176:	62 61 6c 48 58 fc    	vaddps zmm31,zmm2,zmm4
  a2a17c:	62 f1 64 48 58 d6    	vaddps zmm2,zmm3,zmm6
  a2a182:	62 31 74 40 58 dd    	vaddps zmm11,zmm17,zmm21
  a2a188:	62 b1 74 40 5c cd    	vsubps zmm1,zmm17,zmm21
  a2a18e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a2a195:	04 
  a2a196:	62 72 7d 48 18 15 c0 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff64b2c0]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a2a19d:	b2 64 ff 
  a2a1a0:	62 d1 7c 48 28 f2    	vmovaps zmm6,zmm10
  a2a1a6:	62 21 6c 48 58 ea    	vaddps zmm29,zmm2,zmm18
  a2a1ac:	62 d1 7c 48 58 f9    	vaddps zmm7,zmm0,zmm9
  a2a1b2:	62 92 5d 40 ac f6    	vfnmadd213ps zmm6,zmm20,zmm30
  a2a1b8:	62 51 7c 48 5c c9    	vsubps zmm9,zmm0,zmm9
  a2a1be:	62 d1 7c 48 28 d2    	vmovaps zmm2,zmm10
  a2a1c4:	62 f2 0d 48 ac d5    	vfnmadd213ps zmm2,zmm14,zmm5
  a2a1ca:	62 b1 0c 40 58 c4    	vaddps zmm0,zmm30,zmm20
  a2a1d0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a2a1d7:	01 
  a2a1d8:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x680]
  a2a1df:	1a 
  a2a1e0:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x400]
  a2a1e7:	10 
  a2a1e8:	62 b1 64 48 58 c1    	vaddps zmm0,zmm3,zmm17
  a2a1ee:	62 c1 54 48 58 e6    	vaddps zmm20,zmm5,zmm14
  a2a1f4:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x280]
  a2a1fb:	0a 
  a2a1fc:	62 f1 5c 48 58 c8    	vaddps zmm1,zmm4,zmm0
  a2a202:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a2a209:	02 
  a2a20a:	62 f2 2d 48 ac c4    	vfnmadd213ps zmm0,zmm10,zmm4
  a2a210:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x640]
  a2a217:	19 
  a2a218:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x380]
  a2a21f:	0e 
  a2a220:	62 f1 74 48 58 ec    	vaddps zmm5,zmm1,zmm4
  a2a226:	62 71 74 48 5c f4    	vsubps zmm14,zmm1,zmm4
  a2a22c:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x440]
  a2a233:	11 
  a2a234:	62 e1 74 48 58 fd    	vaddps zmm23,zmm1,zmm5
  a2a23a:	62 f2 2d 48 ac e9    	vfnmadd213ps zmm5,zmm10,zmm1
  a2a240:	62 51 7c 48 28 c2    	vmovaps zmm8,zmm10
  a2a246:	62 21 64 48 5c f1    	vsubps zmm30,zmm3,zmm17
  a2a24c:	62 41 7c 48 28 c2    	vmovaps zmm24,zmm10
  a2a252:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x500]
  a2a259:	14 
  a2a25a:	62 32 15 48 ac c1    	vfnmadd213ps zmm8,zmm13,zmm17
  a2a260:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x340]
  a2a267:	0d 
  a2a268:	62 62 25 48 ac c1    	vfnmadd213ps zmm24,zmm11,zmm1
  a2a26e:	62 51 74 48 58 db    	vaddps zmm11,zmm1,zmm11
  a2a274:	62 d1 7c 48 28 da    	vmovaps zmm3,zmm10
  a2a27a:	62 f2 7d 48 18 0d 50 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff64b050]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a2a281:	b0 64 ff 
  a2a284:	62 e1 74 48 59 54 24 	vmulps zmm18,zmm1,ZMMWORD PTR [rsp+0x1c0]
  a2a28b:	07 
  a2a28c:	62 92 1d 48 ac db    	vfnmadd213ps zmm3,zmm12,zmm27
  a2a292:	62 51 24 40 58 e4    	vaddps zmm12,zmm27,zmm12
  a2a298:	62 21 3c 48 5c e2    	vsubps zmm28,zmm8,zmm18
  a2a29e:	62 21 3c 48 58 da    	vaddps zmm27,zmm8,zmm18
  a2a2a4:	62 c1 7c 48 28 d2    	vmovaps zmm18,zmm10
  a2a2aa:	62 c2 45 48 ac d7    	vfnmadd213ps zmm18,zmm7,zmm15
  a2a2b0:	62 e1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm1
  a2a2b6:	62 a1 6c 40 5c f0    	vsubps zmm22,zmm18,zmm16
  a2a2bc:	62 a1 6c 40 58 c0    	vaddps zmm16,zmm18,zmm16
  a2a2c2:	62 c1 7c 48 28 d2    	vmovaps zmm18,zmm10
  a2a2c8:	62 82 05 40 ac d5    	vfnmadd213ps zmm18,zmm31,zmm29
  a2a2ce:	62 e1 34 48 59 e9    	vmulps zmm21,zmm9,zmm1
  a2a2d4:	62 31 6c 40 58 cd    	vaddps zmm9,zmm18,zmm21
  a2a2da:	62 a1 6c 40 5c ed    	vsubps zmm21,zmm18,zmm21
  a2a2e0:	62 d1 74 40 58 e5    	vaddps zmm4,zmm17,zmm13
  a2a2e6:	62 51 7c 48 28 ea    	vmovaps zmm13,zmm10
  a2a2ec:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x140]
  a2a2f3:	05 
  a2a2f4:	62 52 2d 40 ac ea    	vfnmadd213ps zmm13,zmm26,zmm10
  a2a2fa:	62 e1 74 48 59 54 24 	vmulps zmm18,zmm1,ZMMWORD PTR [rsp+0xc0]
  a2a301:	03 
  a2a302:	62 31 14 48 58 c2    	vaddps zmm8,zmm13,zmm18
  a2a308:	62 31 14 48 5c ea    	vsubps zmm13,zmm13,zmm18
  a2a30e:	62 81 2c 48 58 ca    	vaddps zmm17,zmm10,zmm26
  a2a314:	62 e1 74 48 59 54 24 	vmulps zmm18,zmm1,ZMMWORD PTR [rsp+0x3c0]
  a2a31b:	0f 
  a2a31c:	62 21 4c 48 58 ca    	vaddps zmm25,zmm6,zmm18
  a2a322:	62 a1 4c 48 5c da    	vsubps zmm19,zmm6,zmm18
  a2a328:	62 71 74 48 59 54 24 	vmulps zmm10,zmm1,ZMMWORD PTR [rsp+0x300]
  a2a32f:	0c 
  a2a330:	62 61 04 48 58 d7    	vaddps zmm26,zmm15,zmm7
  a2a336:	62 d1 6c 48 5c fa    	vsubps zmm7,zmm2,zmm10
  a2a33c:	62 51 6c 48 58 d2    	vaddps zmm10,zmm2,zmm10
  a2a342:	62 01 14 40 58 ff    	vaddps zmm31,zmm29,zmm31
  a2a348:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a2a34e:	62 f1 7c 48 28 35 a8 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6662a8]        # 90600 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dab0>
  a2a355:	62 66 ff 
  a2a358:	62 92 4d 48 7f d2    	vpermt2ps zmm2,zmm6,zmm26
  a2a35e:	62 71 0c 48 59 f1    	vmulps zmm14,zmm14,zmm1
  a2a364:	62 f1 7c 48 11 14 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm2
  a2a36b:	62 d1 7c 48 5c d6    	vsubps zmm2,zmm0,zmm14
  a2a371:	62 61 0c 40 59 e9    	vmulps zmm29,zmm30,zmm1
  a2a377:	62 d1 7c 48 58 c6    	vaddps zmm0,zmm0,zmm14
  a2a37d:	62 11 04 40 14 f2    	vunpcklps zmm14,zmm31,zmm26
  a2a383:	62 73 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x60],zmm14,0x3
  a2a38a:	06 03 
  a2a38c:	62 81 54 48 58 d5    	vaddps zmm18,zmm5,zmm29
  a2a392:	62 91 54 48 5c ed    	vsubps zmm5,zmm5,zmm29
  a2a398:	62 61 74 48 59 6c 24 	vmulps zmm29,zmm1,ZMMWORD PTR [rsp+0x180]
  a2a39f:	06 
  a2a3a0:	62 61 7c 28 28 35 96 	vmovaps ymm30,YMMWORD PTR [rip+0xffffffffff64c896]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a2a3a7:	c8 64 ff 
  a2a3aa:	62 02 0d 40 7f fa    	vpermt2ps zmm31,zmm30,zmm26
  a2a3b0:	62 11 3c 40 58 f5    	vaddps zmm14,zmm24,zmm29
  a2a3b6:	62 01 3c 40 5c c5    	vsubps zmm24,zmm24,zmm29
  a2a3bc:	62 61 74 48 59 54 24 	vmulps zmm26,zmm1,ZMMWORD PTR [rsp+0x100]
  a2a3c3:	04 
  a2a3c4:	62 61 7c 28 11 7c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm31
  a2a3cb:	02 
  a2a3cc:	62 11 64 48 5c fa    	vsubps zmm15,zmm3,zmm26
  a2a3d2:	62 91 64 48 58 ca    	vaddps zmm1,zmm3,zmm26
  a2a3d8:	62 61 7c 48 28 d1    	vmovaps zmm26,zmm1
  a2a3de:	62 02 4d 48 7f d0    	vpermt2ps zmm26,zmm6,zmm24
  a2a3e4:	62 61 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x70],zmm26
  a2a3eb:	70 00 00 00 
  a2a3ef:	62 01 74 48 14 d0    	vunpcklps zmm26,zmm1,zmm24
  a2a3f5:	62 63 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xd0],zmm26,0x3
  a2a3fc:	0d 03 
  a2a3fe:	62 92 0d 40 7f c8    	vpermt2ps zmm1,zmm30,zmm24
  a2a404:	c5 fc 11 8c 16 b0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xb0],ymm1
  a2a40b:	00 00 
  a2a40d:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a2a413:	62 f2 4d 48 7f c8    	vpermt2ps zmm1,zmm6,zmm0
  a2a419:	62 f1 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xe0],zmm1
  a2a420:	e0 00 00 00 
  a2a424:	62 f1 54 48 14 c8    	vunpcklps zmm1,zmm5,zmm0
  a2a42a:	62 f3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x140],zmm1,0x3
  a2a431:	14 03 
  a2a433:	62 f2 0d 40 7f e8    	vpermt2ps zmm5,zmm30,zmm0
  a2a439:	c5 fc 11 ac 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm5
  a2a440:	00 00 
  a2a442:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a2a448:	62 f2 4d 48 7f c4    	vpermt2ps zmm0,zmm6,zmm4
  a2a44e:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x150],zmm0
  a2a455:	50 01 00 00 
  a2a459:	62 f1 74 40 14 c4    	vunpcklps zmm0,zmm17,zmm4
  a2a45f:	62 e2 0d 40 7f cc    	vpermt2ps zmm17,zmm30,zmm4
  a2a465:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1b0],zmm0,0x3
  a2a46c:	1b 03 
  a2a46e:	62 e1 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x190],ymm17
  a2a475:	90 01 00 00 
  a2a479:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a2a47f:	62 b2 4d 48 7f c3    	vpermt2ps zmm0,zmm6,zmm19
  a2a485:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm0
  a2a48c:	07 
  a2a48d:	62 b1 2c 48 14 c3    	vunpcklps zmm0,zmm10,zmm19
  a2a493:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x220],zmm0,0x3
  a2a49a:	22 03 
  a2a49c:	62 32 0d 40 7f d3    	vpermt2ps zmm10,zmm30,zmm19
  a2a4a2:	c5 7c 11 94 16 00 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x200],ymm10
  a2a4a9:	00 00 
  a2a4ab:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a2a4b1:	62 b2 4d 48 7f c0    	vpermt2ps zmm0,zmm6,zmm16
  a2a4b7:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x230],zmm0
  a2a4be:	30 02 00 00 
  a2a4c2:	62 b1 54 40 14 c0    	vunpcklps zmm0,zmm21,zmm16
  a2a4c8:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x290],zmm0,0x3
  a2a4cf:	29 03 
  a2a4d1:	62 a2 0d 40 7f e8    	vpermt2ps zmm21,zmm30,zmm16
  a2a4d7:	62 e1 7c 28 11 ac 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x270],ymm21
  a2a4de:	70 02 00 00 
  a2a4e2:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a2a4e8:	62 d2 4d 48 7f c3    	vpermt2ps zmm0,zmm6,zmm11
  a2a4ee:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2a0],zmm0
  a2a4f5:	a0 02 00 00 
  a2a4f9:	62 d1 1c 48 14 c3    	vunpcklps zmm0,zmm12,zmm11
  a2a4ff:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x300],zmm0,0x3
  a2a506:	30 03 
  a2a508:	62 52 0d 40 7f e3    	vpermt2ps zmm12,zmm30,zmm11
  a2a50e:	c5 7c 11 a4 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm12
  a2a515:	00 00 
  a2a517:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a2a51d:	62 f2 4d 48 7f c2    	vpermt2ps zmm0,zmm6,zmm2
  a2a523:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x310],zmm0
  a2a52a:	10 03 00 00 
  a2a52e:	62 f1 6c 40 14 c2    	vunpcklps zmm0,zmm18,zmm2
  a2a534:	62 e2 0d 40 7f d2    	vpermt2ps zmm18,zmm30,zmm2
  a2a53a:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x370],zmm0,0x3
  a2a541:	37 03 
  a2a543:	62 e1 7c 28 11 94 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x350],ymm18
  a2a54a:	50 03 00 00 
  a2a54e:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a2a554:	62 92 4d 48 7f c3    	vpermt2ps zmm0,zmm6,zmm27
  a2a55a:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x380],zmm0
  a2a561:	0e 
  a2a562:	62 91 14 48 14 c3    	vunpcklps zmm0,zmm13,zmm27
  a2a568:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x3e0],zmm0,0x3
  a2a56f:	3e 03 
  a2a571:	62 12 0d 40 7f eb    	vpermt2ps zmm13,zmm30,zmm27
  a2a577:	c5 7c 11 ac 16 c0 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x3c0],ymm13
  a2a57e:	00 00 
  a2a580:	62 b1 7c 48 28 c4    	vmovaps zmm0,zmm20
  a2a586:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a2a58d:	01 
  a2a58e:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a2a594:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3f0],zmm0
  a2a59b:	f0 03 00 00 
  a2a59f:	62 f1 5c 40 14 c1    	vunpcklps zmm0,zmm20,zmm1
  a2a5a5:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x450],zmm0,0x3
  a2a5ac:	45 03 
  a2a5ae:	62 e2 0d 40 7f e1    	vpermt2ps zmm20,zmm30,zmm1
  a2a5b4:	62 e1 7c 28 11 a4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x430],ymm20
  a2a5bb:	30 04 00 00 
  a2a5bf:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a2a5c5:	62 b2 4d 48 7f c6    	vpermt2ps zmm0,zmm6,zmm22
  a2a5cb:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x460],zmm0
  a2a5d2:	60 04 00 00 
  a2a5d6:	62 b1 34 48 14 c6    	vunpcklps zmm0,zmm9,zmm22
  a2a5dc:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x4c0],zmm0,0x3
  a2a5e3:	4c 03 
  a2a5e5:	62 32 0d 40 7f ce    	vpermt2ps zmm9,zmm30,zmm22
  a2a5eb:	c5 7c 11 8c 16 a0 04 	vmovups YMMWORD PTR [rsi+rdx*1+0x4a0],ymm9
  a2a5f2:	00 00 
  a2a5f4:	62 d1 7c 48 28 c7    	vmovaps zmm0,zmm15
  a2a5fa:	62 d2 4d 48 7f c6    	vpermt2ps zmm0,zmm6,zmm14
  a2a600:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4d0],zmm0
  a2a607:	d0 04 00 00 
  a2a60b:	62 d1 04 48 14 c6    	vunpcklps zmm0,zmm15,zmm14
  a2a611:	62 52 0d 40 7f fe    	vpermt2ps zmm15,zmm30,zmm14
  a2a617:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x530],zmm0,0x3
  a2a61e:	53 03 
  a2a620:	c5 7c 11 bc 16 10 05 	vmovups YMMWORD PTR [rsi+rdx*1+0x510],ymm15
  a2a627:	00 00 
  a2a629:	62 b1 7c 48 28 c7    	vmovaps zmm0,zmm23
  a2a62f:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a2a636:	02 
  a2a637:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a2a63d:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x540],zmm0
  a2a644:	15 
  a2a645:	62 f1 44 40 14 c1    	vunpcklps zmm0,zmm23,zmm1
  a2a64b:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x5a0],zmm0,0x3
  a2a652:	5a 03 
  a2a654:	62 e2 0d 40 7f f9    	vpermt2ps zmm23,zmm30,zmm1
  a2a65a:	62 e1 7c 28 11 7c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x580],ymm23
  a2a661:	2c 
  a2a662:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a2a668:	62 92 4d 48 7f c4    	vpermt2ps zmm0,zmm6,zmm28
  a2a66e:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x5b0],zmm0
  a2a675:	b0 05 00 00 
  a2a679:	62 91 3c 48 14 c4    	vunpcklps zmm0,zmm8,zmm28
  a2a67f:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x610],zmm0,0x3
  a2a686:	61 03 
  a2a688:	62 12 0d 40 7f c4    	vpermt2ps zmm8,zmm30,zmm28
  a2a68e:	c5 7c 11 84 16 f0 05 	vmovups YMMWORD PTR [rsi+rdx*1+0x5f0],ymm8
  a2a695:	00 00 
  a2a697:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a2a69d:	62 92 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm25
  a2a6a3:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x620],zmm0
  a2a6aa:	20 06 00 00 
  a2a6ae:	62 91 44 48 14 c1    	vunpcklps zmm0,zmm7,zmm25
  a2a6b4:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x680],zmm0,0x3
  a2a6bb:	68 03 
  a2a6bd:	62 92 0d 40 7f f9    	vpermt2ps zmm7,zmm30,zmm25
  a2a6c3:	c5 fc 11 bc 16 60 06 	vmovups YMMWORD PTR [rsi+rdx*1+0x660],ymm7
  a2a6ca:	00 00 
  a2a6cc:	48 81 c2 90 06 00 00 	add    rdx,0x690
  a2a6d3:	48 39 d0             	cmp    rax,rdx
  a2a6d6:	0f 85 14 df ff ff    	jne    a285f0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a2a6dc:	48 89 ec             	mov    rsp,rbp
  a2a6df:	5d                   	pop    rbp
  a2a6e0:	c5 f8 77             	vzeroupper
  a2a6e3:	c3                   	ret
