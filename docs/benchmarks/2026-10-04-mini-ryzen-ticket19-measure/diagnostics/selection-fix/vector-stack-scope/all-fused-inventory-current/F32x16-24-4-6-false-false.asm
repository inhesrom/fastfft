
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a32540 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a32540:	55                   	push   rbp
  a32541:	48 89 e5             	mov    rbp,rsp
  a32544:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a32548:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a3254f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a32554:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a32559:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a3255e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a32563:	c5 f8 10 47 20       	vmovups xmm0,XMMWORD PTR [rdi+0x20]
  a32568:	c4 e3 79 21 47 24 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24],0x10
  a3256f:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a32573:	c4 e2 79 18 57 28    	vbroadcastss xmm2,DWORD PTR [rdi+0x28]
  a32579:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a3257f:	c4 e3 79 21 47 2c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c],0x30
  a32586:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a3258d:	62 f1 7c 48 28 15 69 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff65e769]        # 90d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e1b0>
  a32594:	e7 65 ff 
  a32597:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a3259b:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a325a1:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a325a7:	62 f1 7c 48 28 25 8f 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff65e78f]        # 90d40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e1f0>
  a325ae:	e7 65 ff 
  a325b1:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a325b7:	c5 f8 10 6f 50       	vmovups xmm5,XMMWORD PTR [rdi+0x50]
  a325bc:	c4 e3 51 21 6f 54 10 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x54],0x10
  a325c3:	c5 fc 10 77 30       	vmovups ymm6,YMMWORD PTR [rdi+0x30]
  a325c8:	c4 e2 79 18 7f 58    	vbroadcastss xmm7,DWORD PTR [rdi+0x58]
  a325ce:	c4 e3 41 0c ed 03    	vblendps xmm5,xmm7,xmm5,0x3
  a325d4:	c4 e3 51 21 6f 5c 30 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x5c],0x30
  a325db:	62 f3 4d 48 18 ed 02 	vinsertf32x4 zmm5,zmm6,xmm5,0x2
  a325e2:	62 f1 7c 48 28 fd    	vmovaps zmm7,zmm5
  a325e8:	62 f2 6d 48 7f f9    	vpermt2ps zmm7,zmm2,zmm1
  a325ee:	62 f2 5d 48 7f e9    	vpermt2ps zmm5,zmm4,zmm1
  a325f4:	c5 f8 10 b7 80 00 00 	vmovups xmm6,XMMWORD PTR [rdi+0x80]
  a325fb:	00 
  a325fc:	c5 7c 10 47 60       	vmovups ymm8,YMMWORD PTR [rdi+0x60]
  a32601:	c4 e3 49 21 b7 84 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x84],0x10
  a32608:	00 00 10 
  a3260b:	c4 62 79 18 8f 88 00 	vbroadcastss xmm9,DWORD PTR [rdi+0x88]
  a32612:	00 00 
  a32614:	c4 e3 31 0c f6 03    	vblendps xmm6,xmm9,xmm6,0x3
  a3261a:	c4 e3 49 21 b7 8c 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x8c],0x30
  a32621:	00 00 30 
  a32624:	62 73 3d 48 18 c6 02 	vinsertf32x4 zmm8,zmm8,xmm6,0x2
  a3262b:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a32631:	62 72 6d 48 7f c9    	vpermt2ps zmm9,zmm2,zmm1
  a32637:	62 72 5d 48 7f c1    	vpermt2ps zmm8,zmm4,zmm1
  a3263d:	c5 f8 10 b7 b0 00 00 	vmovups xmm6,XMMWORD PTR [rdi+0xb0]
  a32644:	00 
  a32645:	c4 e3 49 21 b7 b4 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0xb4],0x10
  a3264c:	00 00 10 
  a3264f:	c4 62 79 18 97 b8 00 	vbroadcastss xmm10,DWORD PTR [rdi+0xb8]
  a32656:	00 00 
  a32658:	c5 7c 10 9f 90 00 00 	vmovups ymm11,YMMWORD PTR [rdi+0x90]
  a3265f:	00 
  a32660:	c4 e3 29 0c f6 03    	vblendps xmm6,xmm10,xmm6,0x3
  a32666:	c4 e3 49 21 b7 bc 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0xbc],0x30
  a3266d:	00 00 30 
  a32670:	62 73 25 48 18 d6 02 	vinsertf32x4 zmm10,zmm11,xmm6,0x2
  a32677:	62 f2 2d 48 77 d1    	vpermi2ps zmm2,zmm10,zmm1
  a3267d:	62 72 5d 48 7f d1    	vpermt2ps zmm10,zmm4,zmm1
  a32683:	62 d1 64 48 58 e1    	vaddps zmm4,zmm3,zmm9
  a32689:	62 71 44 48 58 da    	vaddps zmm11,zmm7,zmm2
  a3268f:	62 51 5c 48 58 eb    	vaddps zmm13,zmm4,zmm11
  a32695:	62 51 7c 48 58 e0    	vaddps zmm12,zmm0,zmm8
  a3269b:	62 51 54 48 58 f2    	vaddps zmm14,zmm5,zmm10
  a326a1:	62 d1 1c 48 58 f6    	vaddps zmm6,zmm12,zmm14
  a326a7:	62 d1 64 48 5c d9    	vsubps zmm3,zmm3,zmm9
  a326ad:	62 d1 54 48 5c ea    	vsubps zmm5,zmm5,zmm10
  a326b3:	62 71 64 48 58 cd    	vaddps zmm9,zmm3,zmm5
  a326b9:	62 d1 7c 48 5c c0    	vsubps zmm0,zmm0,zmm8
  a326bf:	62 f1 6c 48 5c d7    	vsubps zmm2,zmm2,zmm7
  a326c5:	62 71 6c 48 58 c0    	vaddps zmm8,zmm2,zmm0
  a326cb:	62 d1 5c 48 5c e3    	vsubps zmm4,zmm4,zmm11
  a326d1:	62 51 1c 48 5c de    	vsubps zmm11,zmm12,zmm14
  a326d7:	62 f1 64 48 5c dd    	vsubps zmm3,zmm3,zmm5
  a326dd:	62 71 7c 48 5c d2    	vsubps zmm10,zmm0,zmm2
  a326e3:	62 71 7c 48 28 35 93 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff694893]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a326ea:	48 69 ff 
  a326ed:	62 72 0d 48 7f e9    	vpermt2ps zmm13,zmm14,zmm1
  a326f3:	62 72 0d 48 7f c9    	vpermt2ps zmm9,zmm14,zmm1
  a326f9:	62 f2 0d 48 7f e1    	vpermt2ps zmm4,zmm14,zmm1
  a326ff:	62 f2 0d 48 7f d9    	vpermt2ps zmm3,zmm14,zmm1
  a32705:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  a3270a:	62 52 0d 48 7f ff    	vpermt2ps zmm15,zmm14,zmm15
  a32710:	62 71 7c 48 28 25 e6 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6947e6]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a32717:	47 69 ff 
  a3271a:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a32720:	62 d2 1d 48 7f c7    	vpermt2ps zmm0,zmm12,zmm15
  a32726:	62 e1 7c 48 28 05 10 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff694810]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a3272d:	48 69 ff 
  a32730:	62 52 7d 40 7f ef    	vpermt2ps zmm13,zmm16,zmm15
  a32736:	62 d1 7c 48 28 e9    	vmovaps zmm5,zmm9
  a3273c:	62 d2 1d 48 7f ef    	vpermt2ps zmm5,zmm12,zmm15
  a32742:	62 52 7d 40 7f cf    	vpermt2ps zmm9,zmm16,zmm15
  a32748:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a3274e:	62 d2 1d 48 7f ff    	vpermt2ps zmm7,zmm12,zmm15
  a32754:	62 d2 7d 40 7f e7    	vpermt2ps zmm4,zmm16,zmm15
  a3275a:	62 f1 95 48 14 d4    	vunpcklpd zmm2,zmm13,zmm4
  a32760:	62 71 7c 48 28 eb    	vmovaps zmm13,zmm3
  a32766:	62 52 1d 48 7f ef    	vpermt2ps zmm13,zmm12,zmm15
  a3276c:	62 d2 7d 40 7f df    	vpermt2ps zmm3,zmm16,zmm15
  a32772:	62 e1 b5 48 14 cb    	vunpcklpd zmm17,zmm9,zmm3
  a32778:	62 f1 fd 48 14 df    	vunpcklpd zmm3,zmm0,zmm7
  a3277e:	62 f1 fd 48 15 e7    	vunpckhpd zmm4,zmm0,zmm7
  a32784:	62 d1 d5 48 14 fd    	vunpcklpd zmm7,zmm5,zmm13
  a3278a:	62 51 d5 48 15 cd    	vunpckhpd zmm9,zmm5,zmm13
  a32790:	62 f1 7c 48 28 2d 66 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff694666]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a32797:	46 69 ff 
  a3279a:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a327a0:	62 f2 55 48 7f c7    	vpermt2ps zmm0,zmm5,zmm7
  a327a6:	62 71 7c 48 28 2d 90 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff694690]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a327ad:	46 69 ff 
  a327b0:	62 f2 15 48 7f df    	vpermt2ps zmm3,zmm13,zmm7
  a327b6:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a327bc:	62 d2 55 48 7f f9    	vpermt2ps zmm7,zmm5,zmm9
  a327c2:	62 d2 15 48 7f e1    	vpermt2ps zmm4,zmm13,zmm9
  a327c8:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a327ce:	62 32 55 48 7f c9    	vpermt2ps zmm9,zmm5,zmm17
  a327d4:	62 b2 15 48 7f d1    	vpermt2ps zmm2,zmm13,zmm17
  a327da:	62 f2 0d 48 7f f1    	vpermt2ps zmm6,zmm14,zmm1
  a327e0:	62 72 0d 48 7f c1    	vpermt2ps zmm8,zmm14,zmm1
  a327e6:	62 72 0d 48 7f d9    	vpermt2ps zmm11,zmm14,zmm1
  a327ec:	62 72 0d 48 7f d1    	vpermt2ps zmm10,zmm14,zmm1
  a327f2:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a327f8:	62 d2 1d 48 7f cf    	vpermt2ps zmm1,zmm12,zmm15
  a327fe:	62 d2 7d 40 7f f7    	vpermt2ps zmm6,zmm16,zmm15
  a32804:	62 51 7c 48 28 f0    	vmovaps zmm14,zmm8
  a3280a:	62 52 1d 48 7f f7    	vpermt2ps zmm14,zmm12,zmm15
  a32810:	62 52 7d 40 7f c7    	vpermt2ps zmm8,zmm16,zmm15
  a32816:	62 c1 7c 48 28 cb    	vmovaps zmm17,zmm11
  a3281c:	62 c2 1d 48 7f cf    	vpermt2ps zmm17,zmm12,zmm15
  a32822:	62 52 7d 40 7f df    	vpermt2ps zmm11,zmm16,zmm15
  a32828:	62 51 cd 48 14 db    	vunpcklpd zmm11,zmm6,zmm11
  a3282e:	62 52 2d 48 77 e7    	vpermi2ps zmm12,zmm10,zmm15
  a32834:	62 52 7d 40 7f d7    	vpermt2ps zmm10,zmm16,zmm15
  a3283a:	62 51 bd 48 14 c2    	vunpcklpd zmm8,zmm8,zmm10
  a32840:	62 31 f5 48 14 f9    	vunpcklpd zmm15,zmm1,zmm17
  a32846:	62 a1 f5 48 15 c1    	vunpckhpd zmm16,zmm1,zmm17
  a3284c:	62 d1 8d 48 14 cc    	vunpcklpd zmm1,zmm14,zmm12
  a32852:	62 51 8d 48 15 d4    	vunpckhpd zmm10,zmm14,zmm12
  a32858:	62 d1 7c 48 28 f7    	vmovaps zmm6,zmm15
  a3285e:	62 f2 55 48 7f f1    	vpermt2ps zmm6,zmm5,zmm1
  a32864:	62 72 15 48 7f f9    	vpermt2ps zmm15,zmm13,zmm1
  a3286a:	62 31 7c 48 28 e0    	vmovaps zmm12,zmm16
  a32870:	62 52 55 48 7f e2    	vpermt2ps zmm12,zmm5,zmm10
  a32876:	62 c2 15 48 7f c2    	vpermt2ps zmm16,zmm13,zmm10
  a3287c:	62 d2 25 48 77 e8    	vpermi2ps zmm5,zmm11,zmm8
  a32882:	62 52 15 48 7f d8    	vpermt2ps zmm11,zmm13,zmm8
  a32888:	62 71 7c 48 10 6a 02 	vmovups zmm13,ZMMWORD PTR [rdx+0x80]
  a3288f:	62 71 7c 48 10 72 03 	vmovups zmm14,ZMMWORD PTR [rdx+0xc0]
  a32896:	62 71 7c 48 10 52 04 	vmovups zmm10,ZMMWORD PTR [rdx+0x100]
  a3289d:	62 e1 7c 48 10 4a 05 	vmovups zmm17,ZMMWORD PTR [rdx+0x140]
  a328a4:	62 e1 7c 48 10 52 06 	vmovups zmm18,ZMMWORD PTR [rdx+0x180]
  a328ab:	62 e1 7c 48 10 5a 07 	vmovups zmm19,ZMMWORD PTR [rdx+0x1c0]
  a328b2:	62 e1 7c 48 10 62 08 	vmovups zmm20,ZMMWORD PTR [rdx+0x200]
  a328b9:	62 e1 7c 48 10 6a 09 	vmovups zmm21,ZMMWORD PTR [rdx+0x240]
  a328c0:	62 e1 7c 48 10 72 0a 	vmovups zmm22,ZMMWORD PTR [rdx+0x280]
  a328c7:	62 e1 7c 48 10 7a 0b 	vmovups zmm23,ZMMWORD PTR [rdx+0x2c0]
  a328ce:	62 d1 44 48 59 ca    	vmulps zmm1,zmm7,zmm10
  a328d4:	62 b2 1d 48 bc c9    	vfnmadd231ps zmm1,zmm12,zmm17
  a328da:	62 31 34 48 59 c4    	vmulps zmm8,zmm9,zmm20
  a328e0:	62 32 55 48 bc c5    	vfnmadd231ps zmm8,zmm5,zmm21
  a328e6:	62 41 74 48 58 c0    	vaddps zmm24,zmm1,zmm8
  a328ec:	62 21 5c 48 59 ca    	vmulps zmm25,zmm4,zmm18
  a328f2:	62 22 7d 40 bc cb    	vfnmadd231ps zmm25,zmm16,zmm19
  a328f8:	62 21 6c 48 59 d6    	vmulps zmm26,zmm2,zmm22
  a328fe:	62 22 25 48 bc d7    	vfnmadd231ps zmm26,zmm11,zmm23
  a32904:	62 41 64 48 59 dd    	vmulps zmm27,zmm3,zmm13
  a3290a:	62 42 05 48 bc de    	vfnmadd231ps zmm27,zmm15,zmm14
  a32910:	62 01 2c 40 58 e3    	vaddps zmm28,zmm26,zmm27
  a32916:	62 51 1c 48 59 d2    	vmulps zmm10,zmm12,zmm10
  a3291c:	62 72 75 40 b8 d7    	vfmadd231ps zmm10,zmm17,zmm7
  a32922:	62 b1 54 48 59 ec    	vmulps zmm5,zmm5,zmm20
  a32928:	62 d2 55 40 b8 e9    	vfmadd231ps zmm5,zmm21,zmm9
  a3292e:	62 f1 2c 48 58 fd    	vaddps zmm7,zmm10,zmm5
  a32934:	62 31 7c 40 59 ca    	vmulps zmm9,zmm16,zmm18
  a3293a:	62 72 65 40 b8 cc    	vfmadd231ps zmm9,zmm19,zmm4
  a32940:	62 b1 24 48 59 e6    	vmulps zmm4,zmm11,zmm22
  a32946:	62 f2 45 40 b8 e2    	vfmadd231ps zmm4,zmm23,zmm2
  a3294c:	62 51 04 48 59 dd    	vmulps zmm11,zmm15,zmm13
  a32952:	62 72 0d 48 b8 db    	vfmadd231ps zmm11,zmm14,zmm3
  a32958:	62 d1 5c 48 58 db    	vaddps zmm3,zmm4,zmm11
  a3295e:	62 72 7d 48 18 25 f8 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff642af8]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a32965:	2a 64 ff 
  a32968:	62 d1 7c 48 28 d4    	vmovaps zmm2,zmm12
  a3296e:	62 f2 3d 40 ac d0    	vfnmadd213ps zmm2,zmm24,zmm0
  a32974:	62 72 7d 48 18 2d 56 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff642956]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a3297b:	29 64 ff 
  a3297e:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a32984:	62 12 1d 40 ac f1    	vfnmadd213ps zmm14,zmm28,zmm25
  a3298a:	62 51 7c 48 28 fc    	vmovaps zmm15,zmm12
  a32990:	62 72 45 48 ac fe    	vfnmadd213ps zmm15,zmm7,zmm6
  a32996:	62 52 65 48 ac e1    	vfnmadd213ps zmm12,zmm3,zmm9
  a3299c:	c5 b4 58 db          	vaddps ymm3,ymm9,ymm3
  a329a0:	c5 c4 58 f6          	vaddps ymm6,ymm7,ymm6
  a329a4:	c5 cc 58 fb          	vaddps ymm7,ymm6,ymm3
  a329a8:	62 11 34 20 58 cc    	vaddps ymm9,ymm25,ymm28
  a329ae:	62 81 7c 28 58 c0    	vaddps ymm16,ymm0,ymm24
  a329b4:	62 c1 7c 00 58 c9    	vaddps xmm17,xmm16,xmm9
  a329ba:	c5 fc 28 05 1e 48 64 	vmovaps ymm0,YMMWORD PTR [rip+0xffffffffff64481e]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a329c1:	ff 
  a329c2:	62 e2 7d 28 7f cf    	vpermt2ps ymm17,ymm0,ymm7
  a329c8:	62 e1 7c 28 11 0e    	vmovups YMMWORD PTR [rsi],ymm17
  a329ce:	62 91 2c 20 5c fb    	vsubps ymm7,ymm26,ymm27
  a329d4:	c5 94 59 ff          	vmulps ymm7,ymm13,ymm7
  a329d8:	62 e1 1c 28 5c cf    	vsubps ymm17,ymm12,ymm7
  a329de:	c4 c1 74 5c c8       	vsubps ymm1,ymm1,ymm8
  a329e3:	c5 94 59 c9          	vmulps ymm1,ymm13,ymm1
  a329e7:	c5 04 5c c1          	vsubps ymm8,ymm15,ymm1
  a329eb:	62 a1 3c 28 5c d1    	vsubps ymm18,ymm8,ymm17
  a329f1:	c4 c1 5c 5c e3       	vsubps ymm4,ymm4,ymm11
  a329f6:	c5 94 59 e4          	vmulps ymm4,ymm13,ymm4
  a329fa:	c5 0c 58 dc          	vaddps ymm11,ymm14,ymm4
  a329fe:	c5 ac 5c ed          	vsubps ymm5,ymm10,ymm5
  a32a02:	c5 94 59 ed          	vmulps ymm5,ymm13,ymm5
  a32a06:	c5 6c 58 d5          	vaddps ymm10,ymm2,ymm5
  a32a0a:	c4 41 28 5c eb       	vsubps xmm13,xmm10,xmm11
  a32a0f:	62 32 7d 28 7f ea    	vpermt2ps ymm13,ymm0,ymm18
  a32a15:	c5 7c 11 6e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm13
  a32a1a:	c5 9c 58 ff          	vaddps ymm7,ymm12,ymm7
  a32a1e:	c5 84 58 c9          	vaddps ymm1,ymm15,ymm1
  a32a22:	c5 74 58 e7          	vaddps ymm12,ymm1,ymm7
  a32a26:	c5 8c 5c e4          	vsubps ymm4,ymm14,ymm4
  a32a2a:	c5 ec 5c d5          	vsubps ymm2,ymm2,ymm5
  a32a2e:	c5 e8 58 ec          	vaddps xmm5,xmm2,xmm4
  a32a32:	62 d2 7d 28 7f ec    	vpermt2ps ymm5,ymm0,ymm12
  a32a38:	c5 fc 11 6e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm5
  a32a3d:	c5 cc 5c db          	vsubps ymm3,ymm6,ymm3
  a32a41:	62 d1 7c 00 5c e9    	vsubps xmm5,xmm16,xmm9
  a32a47:	62 f2 7d 28 7f eb    	vpermt2ps ymm5,ymm0,ymm3
  a32a4d:	c5 fc 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm5
  a32a52:	62 b1 3c 28 58 d9    	vaddps ymm3,ymm8,ymm17
  a32a58:	c4 c1 28 58 eb       	vaddps xmm5,xmm10,xmm11
  a32a5d:	62 f2 7d 28 7f eb    	vpermt2ps ymm5,ymm0,ymm3
  a32a63:	c5 fc 11 ae 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm5
  a32a6a:	00 
  a32a6b:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  a32a6f:	c5 e8 5c d4          	vsubps xmm2,xmm2,xmm4
  a32a73:	62 f2 7d 28 7f d1    	vpermt2ps ymm2,ymm0,ymm1
  a32a79:	c5 fc 11 96 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm2
  a32a80:	00 
  a32a81:	48 89 ec             	mov    rsp,rbp
  a32a84:	5d                   	pop    rbp
  a32a85:	c5 f8 77             	vzeroupper
  a32a88:	c3                   	ret
