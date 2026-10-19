
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a3b540 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a3b540:	55                   	push   rbp
  a3b541:	48 89 e5             	mov    rbp,rsp
  a3b544:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a3b548:	48 81 ec c0 02 00 00 	sub    rsp,0x2c0
  a3b54f:	c6 84 24 40 02 00 00 	mov    BYTE PTR [rsp+0x240],0x0
  a3b556:	00 
  a3b557:	48 8d 84 24 40 02 00 	lea    rax,[rsp+0x240]
  a3b55e:	00 
  a3b55f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a3b564:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a3b569:	62 f1 7c 48 10 2f    	vmovups zmm5,ZMMWORD PTR [rdi]
  a3b56f:	c5 fc 10 47 40       	vmovups ymm0,YMMWORD PTR [rdi+0x40]
  a3b574:	62 e1 7c 48 28 15 02 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff656102]        # 91680 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1eb30>
  a3b57b:	61 65 ff 
  a3b57e:	62 f1 7c 48 28 e5    	vmovaps zmm4,zmm5
  a3b584:	62 f2 6d 40 7f e0    	vpermt2ps zmm4,zmm18,zmm0
  a3b58a:	62 f1 7c 48 28 15 2c 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff65612c]        # 916c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1eb70>
  a3b591:	61 65 ff 
  a3b594:	62 f2 6d 48 7f e8    	vpermt2ps zmm5,zmm2,zmm0
  a3b59a:	62 f1 7c 48 10 b7 60 	vmovups zmm6,ZMMWORD PTR [rdi+0x60]
  a3b5a1:	00 00 00 
  a3b5a4:	c5 fc 10 87 a0 00 00 	vmovups ymm0,YMMWORD PTR [rdi+0xa0]
  a3b5ab:	00 
  a3b5ac:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a3b5b2:	62 72 6d 40 7f c8    	vpermt2ps zmm9,zmm18,zmm0
  a3b5b8:	62 f2 6d 48 7f f0    	vpermt2ps zmm6,zmm2,zmm0
  a3b5be:	62 f1 7c 48 10 7f 03 	vmovups zmm7,ZMMWORD PTR [rdi+0xc0]
  a3b5c5:	c5 fc 10 87 00 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x100]
  a3b5cc:	00 
  a3b5cd:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a3b5d3:	62 72 6d 40 7f d0    	vpermt2ps zmm10,zmm18,zmm0
  a3b5d9:	62 f2 6d 48 7f f8    	vpermt2ps zmm7,zmm2,zmm0
  a3b5df:	62 71 7c 48 10 af 20 	vmovups zmm13,ZMMWORD PTR [rdi+0x120]
  a3b5e6:	01 00 00 
  a3b5e9:	c5 fc 10 87 60 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x160]
  a3b5f0:	00 
  a3b5f1:	62 51 7c 48 28 c5    	vmovaps zmm8,zmm13
  a3b5f7:	62 72 6d 40 7f c0    	vpermt2ps zmm8,zmm18,zmm0
  a3b5fd:	62 72 6d 48 7f e8    	vpermt2ps zmm13,zmm2,zmm0
  a3b603:	62 e1 7c 48 10 67 06 	vmovups zmm20,ZMMWORD PTR [rdi+0x180]
  a3b60a:	c5 fc 10 8f c0 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x1c0]
  a3b611:	00 
  a3b612:	62 b1 7c 48 28 c4    	vmovaps zmm0,zmm20
  a3b618:	62 f2 6d 40 7f c1    	vpermt2ps zmm0,zmm18,zmm1
  a3b61e:	62 e2 6d 48 7f e1    	vpermt2ps zmm20,zmm2,zmm1
  a3b624:	62 e1 7c 48 10 b7 e0 	vmovups zmm22,ZMMWORD PTR [rdi+0x1e0]
  a3b62b:	01 00 00 
  a3b62e:	c5 fc 10 9f 20 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x220]
  a3b635:	00 
  a3b636:	62 b1 7c 48 28 ce    	vmovaps zmm1,zmm22
  a3b63c:	62 f2 6d 40 7f cb    	vpermt2ps zmm1,zmm18,zmm3
  a3b642:	62 e2 6d 48 7f f3    	vpermt2ps zmm22,zmm2,zmm3
  a3b648:	62 61 7c 48 10 47 09 	vmovups zmm24,ZMMWORD PTR [rdi+0x240]
  a3b64f:	c5 fc 10 9f 80 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x280]
  a3b656:	00 
  a3b657:	62 81 7c 48 28 e8    	vmovaps zmm21,zmm24
  a3b65d:	62 e2 6d 40 7f eb    	vpermt2ps zmm21,zmm18,zmm3
  a3b663:	62 62 6d 48 7f c3    	vpermt2ps zmm24,zmm2,zmm3
  a3b669:	62 61 7c 48 10 8f a0 	vmovups zmm25,ZMMWORD PTR [rdi+0x2a0]
  a3b670:	02 00 00 
  a3b673:	c5 fc 10 9f e0 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x2e0]
  a3b67a:	00 
  a3b67b:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a3b681:	62 62 6d 40 7f d3    	vpermt2ps zmm26,zmm18,zmm3
  a3b687:	62 62 6d 48 7f cb    	vpermt2ps zmm25,zmm2,zmm3
  a3b68d:	62 61 7c 48 10 5f 0c 	vmovups zmm27,ZMMWORD PTR [rdi+0x300]
  a3b694:	c5 fc 10 9f 40 03 00 	vmovups ymm3,YMMWORD PTR [rdi+0x340]
  a3b69b:	00 
  a3b69c:	62 e2 25 40 77 d3    	vpermi2ps zmm18,zmm27,zmm3
  a3b6a2:	62 62 6d 48 7f db    	vpermt2ps zmm27,zmm2,zmm3
  a3b6a8:	62 a1 3c 48 58 dd    	vaddps zmm19,zmm8,zmm21
  a3b6ae:	62 31 5c 48 58 fb    	vaddps zmm15,zmm4,zmm19
  a3b6b4:	62 01 7c 48 58 e2    	vaddps zmm28,zmm0,zmm26
  a3b6ba:	62 91 34 48 58 d4    	vaddps zmm2,zmm9,zmm28
  a3b6c0:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a3b6c7:	01 
  a3b6c8:	62 21 74 48 58 ea    	vaddps zmm29,zmm1,zmm18
  a3b6ce:	62 11 2c 48 58 dd    	vaddps zmm11,zmm10,zmm29
  a3b6d4:	62 51 6c 48 58 e3    	vaddps zmm12,zmm2,zmm11
  a3b6da:	62 d1 04 48 58 d4    	vaddps zmm2,zmm15,zmm12
  a3b6e0:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm2
  a3b6e7:	06 
  a3b6e8:	62 81 14 48 58 f8    	vaddps zmm23,zmm13,zmm24
  a3b6ee:	62 a1 54 48 58 c7    	vaddps zmm16,zmm5,zmm23
  a3b6f4:	62 01 5c 40 58 f1    	vaddps zmm30,zmm20,zmm25
  a3b6fa:	62 81 4c 48 58 ce    	vaddps zmm17,zmm6,zmm30
  a3b700:	62 72 7d 48 18 35 56 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff639d56]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a3b707:	9d 63 ff 
  a3b70a:	62 01 4c 40 58 fb    	vaddps zmm31,zmm22,zmm27
  a3b710:	62 b2 0d 48 bc e3    	vfnmadd231ps zmm4,zmm14,zmm19
  a3b716:	62 81 44 48 58 df    	vaddps zmm19,zmm7,zmm31
  a3b71c:	62 01 14 48 5c c0    	vsubps zmm24,zmm13,zmm24
  a3b722:	62 31 74 40 58 eb    	vaddps zmm13,zmm17,zmm19
  a3b728:	62 12 0d 48 bc cc    	vfnmadd231ps zmm9,zmm14,zmm28
  a3b72e:	62 d1 7c 40 58 d5    	vaddps zmm2,zmm16,zmm13
  a3b734:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a3b73b:	03 
  a3b73c:	62 01 5c 40 5c c9    	vsubps zmm25,zmm20,zmm25
  a3b742:	62 f2 7d 48 18 15 88 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff639b88]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a3b749:	9b 63 ff 
  a3b74c:	62 61 3c 40 59 c2    	vmulps zmm24,zmm24,zmm2
  a3b752:	62 92 0d 48 bc f6    	vfnmadd231ps zmm6,zmm14,zmm30
  a3b758:	62 81 5c 48 58 e0    	vaddps zmm20,zmm4,zmm24
  a3b75e:	62 61 34 40 59 ca    	vmulps zmm25,zmm25,zmm2
  a3b764:	62 91 7c 48 5c c2    	vsubps zmm0,zmm0,zmm26
  a3b76a:	62 01 34 48 58 d1    	vaddps zmm26,zmm9,zmm25
  a3b770:	62 61 7c 48 59 e2    	vmulps zmm28,zmm0,zmm2
  a3b776:	62 12 0d 48 bc d5    	vfnmadd231ps zmm10,zmm14,zmm29
  a3b77c:	62 91 4c 48 5c c4    	vsubps zmm0,zmm6,zmm28
  a3b782:	62 01 4c 40 5c db    	vsubps zmm27,zmm22,zmm27
  a3b788:	62 62 7d 48 18 2d d6 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff639ed6]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a3b78f:	9e 63 ff 
  a3b792:	62 92 0d 48 bc ff    	vfnmadd231ps zmm7,zmm14,zmm31
  a3b798:	62 81 7c 48 59 f5    	vmulps zmm22,zmm0,zmm29
  a3b79e:	62 b1 74 48 5c ca    	vsubps zmm1,zmm1,zmm18
  a3b7a4:	62 e2 7d 48 18 15 2a 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff639d2a]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a3b7ab:	9d 63 ff 
  a3b7ae:	62 a2 2d 40 b8 f2    	vfmadd231ps zmm22,zmm26,zmm18
  a3b7b4:	62 61 24 40 59 da    	vmulps zmm27,zmm27,zmm2
  a3b7ba:	62 a1 7c 48 59 d2    	vmulps zmm18,zmm0,zmm18
  a3b7c0:	62 91 2c 48 58 c3    	vaddps zmm0,zmm10,zmm27
  a3b7c6:	62 f1 74 48 59 ca    	vmulps zmm1,zmm1,zmm2
  a3b7cc:	62 82 2d 40 bc d5    	vfnmadd231ps zmm18,zmm26,zmm29
  a3b7d2:	62 61 44 48 5c d1    	vsubps zmm26,zmm7,zmm1
  a3b7d8:	62 62 7d 48 18 2d 36 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff639b36]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a3b7df:	9b 63 ff 
  a3b7e2:	62 b2 0d 48 bc ef    	vfnmadd231ps zmm5,zmm14,zmm23
  a3b7e8:	62 e2 7d 48 18 3d ea 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff639cea]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a3b7ef:	9c 63 ff 
  a3b7f2:	62 a1 3c 48 5c ed    	vsubps zmm21,zmm8,zmm21
  a3b7f8:	62 01 2c 40 59 f5    	vmulps zmm30,zmm26,zmm29
  a3b7fe:	62 22 7d 48 b8 f7    	vfmadd231ps zmm30,zmm0,zmm23
  a3b804:	62 21 2c 40 59 d7    	vmulps zmm26,zmm26,zmm23
  a3b80a:	62 62 15 40 bc d0    	vfnmadd231ps zmm26,zmm29,zmm0
  a3b810:	62 91 4c 40 58 c6    	vaddps zmm0,zmm22,zmm30
  a3b816:	62 01 5c 48 5c c0    	vsubps zmm24,zmm4,zmm24
  a3b81c:	62 f1 5c 40 58 d8    	vaddps zmm3,zmm20,zmm0
  a3b822:	62 e1 54 40 59 ea    	vmulps zmm21,zmm21,zmm2
  a3b828:	62 11 34 48 5c c9    	vsubps zmm9,zmm9,zmm25
  a3b82e:	62 21 54 48 5c cd    	vsubps zmm25,zmm5,zmm21
  a3b834:	62 61 1c 40 58 e6    	vaddps zmm28,zmm28,zmm6
  a3b83a:	62 91 6c 40 58 f2    	vaddps zmm6,zmm18,zmm26
  a3b840:	62 11 2c 48 5c d3    	vsubps zmm10,zmm10,zmm27
  a3b846:	62 f1 34 40 58 e6    	vaddps zmm4,zmm25,zmm6
  a3b84c:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a3b853:	02 
  a3b854:	62 f1 74 48 58 cf    	vaddps zmm1,zmm1,zmm7
  a3b85a:	62 01 1c 40 59 dd    	vmulps zmm27,zmm28,zmm29
  a3b860:	62 22 35 48 b8 df    	vfmadd231ps zmm27,zmm9,zmm23
  a3b866:	62 a1 1c 40 59 ff    	vmulps zmm23,zmm28,zmm23
  a3b86c:	62 f2 7d 48 18 3d 7a 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff639c7a]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a3b873:	9c 63 ff 
  a3b876:	62 82 35 48 bc fd    	vfnmadd231ps zmm23,zmm9,zmm29
  a3b87c:	62 61 74 48 59 e7    	vmulps zmm28,zmm1,zmm7
  a3b882:	62 72 7d 48 18 0d 6c 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff639d6c]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a3b889:	9d 63 ff 
  a3b88c:	62 42 2d 48 bc e1    	vfnmadd231ps zmm28,zmm10,zmm9
  a3b892:	62 e1 54 40 58 ed    	vaddps zmm21,zmm21,zmm5
  a3b898:	62 01 24 40 58 ec    	vaddps zmm29,zmm27,zmm28
  a3b89e:	62 41 74 48 59 f9    	vmulps zmm31,zmm1,zmm9
  a3b8a4:	62 11 3c 40 58 cd    	vaddps zmm9,zmm24,zmm29
  a3b8aa:	62 62 2d 48 b8 ff    	vfmadd231ps zmm31,zmm10,zmm7
  a3b8b0:	62 11 44 40 5c d7    	vsubps zmm10,zmm23,zmm31
  a3b8b6:	62 d1 54 40 58 ca    	vaddps zmm1,zmm21,zmm10
  a3b8bc:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a3b8c3:	08 
  a3b8c4:	62 52 0d 48 ac e7    	vfnmadd213ps zmm12,zmm14,zmm15
  a3b8ca:	62 b1 74 40 5c cb    	vsubps zmm1,zmm17,zmm19
  a3b8d0:	62 71 74 48 59 fa    	vmulps zmm15,zmm1,zmm2
  a3b8d6:	62 d1 1c 48 58 ef    	vaddps zmm5,zmm12,zmm15
  a3b8dc:	62 32 0d 48 ac e8    	vfnmadd213ps zmm13,zmm14,zmm16
  a3b8e2:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a3b8e9:	01 
  a3b8ea:	62 d1 74 48 5c cb    	vsubps zmm1,zmm1,zmm11
  a3b8f0:	62 71 74 48 59 da    	vmulps zmm11,zmm1,zmm2
  a3b8f6:	62 d1 14 48 5c cb    	vsubps zmm1,zmm13,zmm11
  a3b8fc:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a3b903:	07 
  a3b904:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  a3b90a:	62 b2 0d 48 ac c4    	vfnmadd213ps zmm0,zmm14,zmm20
  a3b910:	62 91 6c 40 5c fa    	vsubps zmm7,zmm18,zmm26
  a3b916:	62 e1 44 48 59 d2    	vmulps zmm18,zmm7,zmm2
  a3b91c:	62 a1 7c 48 58 ca    	vaddps zmm17,zmm0,zmm18
  a3b922:	62 92 0d 48 ac f1    	vfnmadd213ps zmm6,zmm14,zmm25
  a3b928:	62 11 4c 40 5c f6    	vsubps zmm14,zmm22,zmm30
  a3b92e:	62 e1 0c 48 59 e2    	vmulps zmm20,zmm14,zmm2
  a3b934:	62 b1 4c 48 5c fc    	vsubps zmm7,zmm6,zmm20
  a3b93a:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm7
  a3b941:	01 
  a3b942:	62 02 75 48 ac e8    	vfnmadd213ps zmm29,zmm1,zmm24
  a3b948:	62 11 44 40 58 f7    	vaddps zmm14,zmm23,zmm31
  a3b94e:	62 e1 0c 48 59 f2    	vmulps zmm22,zmm14,zmm2
  a3b954:	62 31 14 40 58 f6    	vaddps zmm14,zmm29,zmm22
  a3b95a:	62 32 75 48 ac d5    	vfnmadd213ps zmm10,zmm1,zmm21
  a3b960:	62 81 24 40 5c c4    	vsubps zmm16,zmm27,zmm28
  a3b966:	62 e1 7c 40 59 ea    	vmulps zmm21,zmm16,zmm2
  a3b96c:	62 b1 2c 48 5c cd    	vsubps zmm1,zmm10,zmm21
  a3b972:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a3b979:	04 
  a3b97a:	62 c1 1c 48 5c c7    	vsubps zmm16,zmm12,zmm15
  a3b980:	62 51 24 48 58 e5    	vaddps zmm12,zmm11,zmm13
  a3b986:	62 a1 7c 48 5c da    	vsubps zmm19,zmm0,zmm18
  a3b98c:	62 b1 4c 48 58 c4    	vaddps zmm0,zmm6,zmm20
  a3b992:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a3b999:	05 
  a3b99a:	62 b1 14 40 5c c6    	vsubps zmm0,zmm29,zmm22
  a3b9a0:	62 21 2c 48 58 f5    	vaddps zmm30,zmm10,zmm21
  a3b9a6:	62 71 7c 48 28 3d d0 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff68b5d0]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3b9ad:	b5 68 ff 
  a3b9b0:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x180]
  a3b9b7:	06 
  a3b9b8:	62 c1 7c 48 28 d5    	vmovaps zmm18,zmm13
  a3b9be:	62 e2 05 48 7f d0    	vpermt2ps zmm18,zmm15,zmm0
  a3b9c4:	62 e1 7c 48 28 3d f2 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff68b5f2]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a3b9cb:	b5 68 ff 
  a3b9ce:	62 72 45 40 7f e8    	vpermt2ps zmm13,zmm23,zmm0
  a3b9d4:	62 01 3c 00 57 c0    	vxorps xmm24,xmm24,xmm24
  a3b9da:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a3b9e0:	62 e1 7c 48 28 e3    	vmovaps zmm20,zmm3
  a3b9e6:	62 82 05 48 7f e0    	vpermt2ps zmm20,zmm15,zmm24
  a3b9ec:	62 92 45 40 7f f8    	vpermt2ps zmm7,zmm23,zmm24
  a3b9f2:	62 c1 7c 48 28 e9    	vmovaps zmm21,zmm9
  a3b9f8:	62 82 05 48 7f e8    	vpermt2ps zmm21,zmm15,zmm24
  a3b9fe:	62 12 45 40 7f c8    	vpermt2ps zmm9,zmm23,zmm24
  a3ba04:	62 e1 7c 48 28 f5    	vmovaps zmm22,zmm5
  a3ba0a:	62 82 05 48 7f f0    	vpermt2ps zmm22,zmm15,zmm24
  a3ba10:	62 92 45 40 7f e8    	vpermt2ps zmm5,zmm23,zmm24
  a3ba16:	62 21 7c 48 28 c9    	vmovaps zmm25,zmm17
  a3ba1c:	62 02 05 48 7f c8    	vpermt2ps zmm25,zmm15,zmm24
  a3ba22:	62 82 45 40 7f c8    	vpermt2ps zmm17,zmm23,zmm24
  a3ba28:	62 41 7c 48 28 d6    	vmovaps zmm26,zmm14
  a3ba2e:	62 02 05 48 7f d0    	vpermt2ps zmm26,zmm15,zmm24
  a3ba34:	62 12 45 40 7f f0    	vpermt2ps zmm14,zmm23,zmm24
  a3ba3a:	62 21 7c 48 28 d8    	vmovaps zmm27,zmm16
  a3ba40:	62 02 05 48 7f d8    	vpermt2ps zmm27,zmm15,zmm24
  a3ba46:	62 82 45 40 7f c0    	vpermt2ps zmm16,zmm23,zmm24
  a3ba4c:	62 21 7c 48 28 e3    	vmovaps zmm28,zmm19
  a3ba52:	62 02 05 48 7f e0    	vpermt2ps zmm28,zmm15,zmm24
  a3ba58:	62 82 45 40 7f d8    	vpermt2ps zmm19,zmm23,zmm24
  a3ba5e:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0xc0]
  a3ba65:	03 
  a3ba66:	62 41 7c 48 28 e8    	vmovaps zmm29,zmm8
  a3ba6c:	62 02 05 48 7f ee    	vpermt2ps zmm29,zmm15,zmm30
  a3ba72:	62 12 45 40 7f c6    	vpermt2ps zmm8,zmm23,zmm30
  a3ba78:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x80]
  a3ba7f:	02 
  a3ba80:	62 61 7c 48 28 f4    	vmovaps zmm30,zmm4
  a3ba86:	62 02 05 48 7f f0    	vpermt2ps zmm30,zmm15,zmm24
  a3ba8c:	62 92 45 40 7f e0    	vpermt2ps zmm4,zmm23,zmm24
  a3ba92:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x200]
  a3ba99:	08 
  a3ba9a:	62 61 7c 48 28 fb    	vmovaps zmm31,zmm3
  a3baa0:	62 02 05 48 7f f8    	vpermt2ps zmm31,zmm15,zmm24
  a3baa6:	62 92 45 40 7f d8    	vpermt2ps zmm3,zmm23,zmm24
  a3baac:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x1c0]
  a3bab3:	07 
  a3bab4:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a3baba:	62 92 05 48 7f f0    	vpermt2ps zmm6,zmm15,zmm24
  a3bac0:	62 92 45 40 7f d0    	vpermt2ps zmm2,zmm23,zmm24
  a3bac6:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a3bacd:	01 
  a3bace:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a3bad4:	62 12 05 48 7f d0    	vpermt2ps zmm10,zmm15,zmm24
  a3bada:	62 92 45 40 7f c0    	vpermt2ps zmm0,zmm23,zmm24
  a3bae0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a3bae7:	01 
  a3bae8:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a3baef:	04 
  a3baf0:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a3baf6:	62 12 05 48 7f d8    	vpermt2ps zmm11,zmm15,zmm24
  a3bafc:	62 92 45 40 7f c0    	vpermt2ps zmm0,zmm23,zmm24
  a3bb02:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a3bb09:	04 
  a3bb0a:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a3bb10:	62 12 05 48 7f e0    	vpermt2ps zmm12,zmm15,zmm24
  a3bb16:	62 92 45 40 7f c0    	vpermt2ps zmm0,zmm23,zmm24
  a3bb1c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a3bb23:	06 
  a3bb24:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a3bb2b:	05 
  a3bb2c:	62 12 7d 48 77 f8    	vpermi2ps zmm15,zmm0,zmm24
  a3bb32:	62 92 45 40 7f c0    	vpermt2ps zmm0,zmm23,zmm24
  a3bb38:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a3bb3f:	05 
  a3bb40:	62 f1 7c 48 28 05 b6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68b3b6]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a3bb47:	b3 68 ff 
  a3bb4a:	62 a1 7c 48 28 fa    	vmovaps zmm23,zmm18
  a3bb50:	62 82 7d 48 7f f9    	vpermt2ps zmm23,zmm0,zmm25
  a3bb56:	62 f1 7c 48 28 0d e0 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff68b3e0]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a3bb5d:	b3 68 ff 
  a3bb60:	62 82 75 48 7f d1    	vpermt2ps zmm18,zmm1,zmm25
  a3bb66:	62 21 7c 48 28 c4    	vmovaps zmm24,zmm20
  a3bb6c:	62 02 7d 48 7f c2    	vpermt2ps zmm24,zmm0,zmm26
  a3bb72:	62 82 75 48 7f e2    	vpermt2ps zmm20,zmm1,zmm26
  a3bb78:	62 21 7c 48 28 cd    	vmovaps zmm25,zmm21
  a3bb7e:	62 02 7d 48 7f cb    	vpermt2ps zmm25,zmm0,zmm27
  a3bb84:	62 82 75 48 7f eb    	vpermt2ps zmm21,zmm1,zmm27
  a3bb8a:	62 21 7c 48 28 d6    	vmovaps zmm26,zmm22
  a3bb90:	62 02 7d 48 7f d4    	vpermt2ps zmm26,zmm0,zmm28
  a3bb96:	62 82 75 48 7f f4    	vpermt2ps zmm22,zmm1,zmm28
  a3bb9c:	62 32 7d 48 7f e9    	vpermt2ps zmm13,zmm0,zmm17
  a3bba2:	62 d2 7d 48 7f fe    	vpermt2ps zmm7,zmm0,zmm14
  a3bba8:	62 32 7d 48 7f c8    	vpermt2ps zmm9,zmm0,zmm16
  a3bbae:	62 b2 7d 48 7f eb    	vpermt2ps zmm5,zmm0,zmm19
  a3bbb4:	62 11 c5 40 14 f1    	vunpcklpd zmm14,zmm23,zmm25
  a3bbba:	62 81 c5 40 15 d9    	vunpckhpd zmm19,zmm23,zmm25
  a3bbc0:	62 81 bd 40 14 fa    	vunpcklpd zmm23,zmm24,zmm26
  a3bbc6:	62 01 bd 40 15 ca    	vunpckhpd zmm25,zmm24,zmm26
  a3bbcc:	62 a1 ed 40 14 cd    	vunpcklpd zmm17,zmm18,zmm21
  a3bbd2:	62 a1 ed 40 15 c5    	vunpckhpd zmm16,zmm18,zmm21
  a3bbd8:	62 21 dd 40 14 d6    	vunpcklpd zmm26,zmm20,zmm22
  a3bbde:	62 a1 dd 40 15 f6    	vunpckhpd zmm22,zmm20,zmm22
  a3bbe4:	62 c1 95 48 14 e1    	vunpcklpd zmm20,zmm13,zmm9
  a3bbea:	62 51 95 48 15 c9    	vunpckhpd zmm9,zmm13,zmm9
  a3bbf0:	62 61 c5 48 14 dd    	vunpcklpd zmm27,zmm7,zmm5
  a3bbf6:	62 61 c5 48 15 e5    	vunpckhpd zmm28,zmm7,zmm5
  a3bbfc:	62 e1 7c 48 28 15 fa 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff68b1fa]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3bc03:	b1 68 ff 
  a3bc06:	62 d1 7c 48 28 ee    	vmovaps zmm5,zmm14
  a3bc0c:	62 b2 6d 40 7f ef    	vpermt2ps zmm5,zmm18,zmm23
  a3bc12:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm5
  a3bc19:	02 
  a3bc1a:	62 61 7c 48 28 05 1c 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff68b21c]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a3bc21:	b2 68 ff 
  a3bc24:	62 32 3d 40 7f f7    	vpermt2ps zmm14,zmm24,zmm23
  a3bc2a:	62 b1 7c 48 28 fb    	vmovaps zmm7,zmm19
  a3bc30:	62 92 6d 40 7f f9    	vpermt2ps zmm7,zmm18,zmm25
  a3bc36:	62 82 3d 40 7f d9    	vpermt2ps zmm19,zmm24,zmm25
  a3bc3c:	62 a1 7c 48 28 e9    	vmovaps zmm21,zmm17
  a3bc42:	62 82 6d 40 7f ea    	vpermt2ps zmm21,zmm18,zmm26
  a3bc48:	62 82 3d 40 7f ca    	vpermt2ps zmm17,zmm24,zmm26
  a3bc4e:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm17
  a3bc55:	03 
  a3bc56:	62 a1 7c 48 28 f8    	vmovaps zmm23,zmm16
  a3bc5c:	62 a2 6d 40 7f fe    	vpermt2ps zmm23,zmm18,zmm22
  a3bc62:	62 a2 3d 40 7f c6    	vpermt2ps zmm16,zmm24,zmm22
  a3bc68:	62 a1 7c 48 28 cc    	vmovaps zmm17,zmm20
  a3bc6e:	62 82 6d 40 7f cb    	vpermt2ps zmm17,zmm18,zmm27
  a3bc74:	62 82 3d 40 7f e3    	vpermt2ps zmm20,zmm24,zmm27
  a3bc7a:	62 c1 7c 48 28 f1    	vmovaps zmm22,zmm9
  a3bc80:	62 82 6d 40 7f f4    	vpermt2ps zmm22,zmm18,zmm28
  a3bc86:	62 12 3d 40 7f cc    	vpermt2ps zmm9,zmm24,zmm28
  a3bc8c:	62 01 7c 48 28 cd    	vmovaps zmm25,zmm29
  a3bc92:	62 42 7d 48 7f ca    	vpermt2ps zmm25,zmm0,zmm10
  a3bc98:	62 42 75 48 7f ea    	vpermt2ps zmm29,zmm1,zmm10
  a3bc9e:	62 11 7c 48 28 d6    	vmovaps zmm10,zmm30
  a3bca4:	62 52 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm11
  a3bcaa:	62 42 75 48 7f f3    	vpermt2ps zmm30,zmm1,zmm11
  a3bcb0:	62 01 7c 48 28 d7    	vmovaps zmm26,zmm31
  a3bcb6:	62 42 7d 48 7f d4    	vpermt2ps zmm26,zmm0,zmm12
  a3bcbc:	62 42 75 48 7f fc    	vpermt2ps zmm31,zmm1,zmm12
  a3bcc2:	62 71 7c 48 28 e6    	vmovaps zmm12,zmm6
  a3bcc8:	62 d2 75 48 7f f7    	vpermt2ps zmm6,zmm1,zmm15
  a3bcce:	62 52 7d 48 7f e7    	vpermt2ps zmm12,zmm0,zmm15
  a3bcd4:	62 72 7d 48 7f 44 24 	vpermt2ps zmm8,zmm0,ZMMWORD PTR [rsp+0x40]
  a3bcdb:	01 
  a3bcdc:	62 f2 7d 48 7f 64 24 	vpermt2ps zmm4,zmm0,ZMMWORD PTR [rsp+0x100]
  a3bce3:	04 
  a3bce4:	62 f2 7d 48 7f 5c 24 	vpermt2ps zmm3,zmm0,ZMMWORD PTR [rsp+0x180]
  a3bceb:	06 
  a3bcec:	62 f2 7d 48 7f 54 24 	vpermt2ps zmm2,zmm0,ZMMWORD PTR [rsp+0x140]
  a3bcf3:	05 
  a3bcf4:	62 11 b5 40 14 da    	vunpcklpd zmm11,zmm25,zmm26
  a3bcfa:	62 01 b5 40 15 da    	vunpckhpd zmm27,zmm25,zmm26
  a3bd00:	62 d1 ad 48 14 cc    	vunpcklpd zmm1,zmm10,zmm12
  a3bd06:	62 51 ad 48 15 ec    	vunpckhpd zmm13,zmm10,zmm12
  a3bd0c:	62 11 95 40 14 d7    	vunpcklpd zmm10,zmm29,zmm31
  a3bd12:	62 11 95 40 15 e7    	vunpckhpd zmm12,zmm29,zmm31
  a3bd18:	62 71 8d 40 14 fe    	vunpcklpd zmm15,zmm30,zmm6
  a3bd1e:	62 f1 8d 40 15 f6    	vunpckhpd zmm6,zmm30,zmm6
  a3bd24:	62 61 bd 48 14 e3    	vunpcklpd zmm28,zmm8,zmm3
  a3bd2a:	62 f1 bd 48 15 eb    	vunpckhpd zmm5,zmm8,zmm3
  a3bd30:	62 61 dd 48 14 ca    	vunpcklpd zmm25,zmm4,zmm2
  a3bd36:	62 f1 dd 48 15 da    	vunpckhpd zmm3,zmm4,zmm2
  a3bd3c:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a3bd42:	62 f2 6d 40 7f c1    	vpermt2ps zmm0,zmm18,zmm1
  a3bd48:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a3bd4f:	01 
  a3bd50:	62 72 3d 40 7f d9    	vpermt2ps zmm11,zmm24,zmm1
  a3bd56:	62 91 7c 48 28 e3    	vmovaps zmm4,zmm27
  a3bd5c:	62 d2 6d 40 7f e5    	vpermt2ps zmm4,zmm18,zmm13
  a3bd62:	62 42 3d 40 7f dd    	vpermt2ps zmm27,zmm24,zmm13
  a3bd68:	62 41 7c 48 28 ea    	vmovaps zmm29,zmm10
  a3bd6e:	62 42 6d 40 7f ef    	vpermt2ps zmm29,zmm18,zmm15
  a3bd74:	62 52 3d 40 7f d7    	vpermt2ps zmm10,zmm24,zmm15
  a3bd7a:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a3bd80:	62 f2 6d 40 7f ce    	vpermt2ps zmm1,zmm18,zmm6
  a3bd86:	62 72 3d 40 7f e6    	vpermt2ps zmm12,zmm24,zmm6
  a3bd8c:	62 11 7c 48 28 ec    	vmovaps zmm13,zmm28
  a3bd92:	62 12 6d 40 7f e9    	vpermt2ps zmm13,zmm18,zmm25
  a3bd98:	62 02 3d 40 7f e1    	vpermt2ps zmm28,zmm24,zmm25
  a3bd9e:	62 e2 55 48 77 d3    	vpermi2ps zmm18,zmm5,zmm3
  a3bda4:	62 f2 3d 40 7f eb    	vpermt2ps zmm5,zmm24,zmm3
  a3bdaa:	62 61 7c 48 10 52 02 	vmovups zmm26,ZMMWORD PTR [rdx+0x80]
  a3bdb1:	62 61 7c 48 10 4a 03 	vmovups zmm25,ZMMWORD PTR [rdx+0xc0]
  a3bdb8:	62 71 7c 48 10 7a 04 	vmovups zmm15,ZMMWORD PTR [rdx+0x100]
  a3bdbf:	62 f1 7c 48 10 5a 0c 	vmovups zmm3,ZMMWORD PTR [rdx+0x300]
  a3bdc6:	62 61 7c 48 10 72 0d 	vmovups zmm30,ZMMWORD PTR [rdx+0x340]
  a3bdcd:	62 f1 44 40 59 f3    	vmulps zmm6,zmm23,zmm3
  a3bdd3:	62 92 75 48 bc f6    	vfnmadd231ps zmm6,zmm1,zmm30
  a3bdd9:	62 61 74 48 59 c3    	vmulps zmm24,zmm1,zmm3
  a3bddf:	62 f1 7c 48 10 4a 06 	vmovups zmm1,ZMMWORD PTR [rdx+0x180]
  a3bde6:	62 22 0d 40 b8 c7    	vfmadd231ps zmm24,zmm30,zmm23
  a3bdec:	62 f1 7c 48 10 5a 07 	vmovups zmm3,ZMMWORD PTR [rdx+0x1c0]
  a3bdf3:	62 e1 64 40 59 f9    	vmulps zmm23,zmm19,zmm1
  a3bdf9:	62 e2 25 40 bc fb    	vfnmadd231ps zmm23,zmm27,zmm3
  a3bdff:	62 f1 24 40 59 c9    	vmulps zmm1,zmm27,zmm1
  a3be05:	62 61 7c 48 10 5a 12 	vmovups zmm27,ZMMWORD PTR [rdx+0x480]
  a3be0c:	62 b2 65 48 b8 cb    	vfmadd231ps zmm1,zmm3,zmm19
  a3be12:	62 f1 7c 48 10 5a 13 	vmovups zmm3,ZMMWORD PTR [rdx+0x4c0]
  a3be19:	62 81 5c 40 59 db    	vmulps zmm19,zmm20,zmm27
  a3be1f:	62 e2 1d 40 bc db    	vfnmadd231ps zmm19,zmm28,zmm3
  a3be25:	62 01 1c 40 59 db    	vmulps zmm27,zmm28,zmm27
  a3be2b:	62 61 7c 48 10 72 08 	vmovups zmm30,ZMMWORD PTR [rdx+0x200]
  a3be32:	62 22 65 48 b8 dc    	vfmadd231ps zmm27,zmm3,zmm20
  a3be38:	62 f1 7c 48 10 5a 09 	vmovups zmm3,ZMMWORD PTR [rdx+0x240]
  a3be3f:	62 01 54 40 59 e6    	vmulps zmm28,zmm21,zmm30
  a3be45:	62 62 15 40 bc e3    	vfnmadd231ps zmm28,zmm29,zmm3
  a3be4b:	62 81 14 40 59 e6    	vmulps zmm20,zmm29,zmm30
  a3be51:	62 61 7c 48 10 6a 14 	vmovups zmm29,ZMMWORD PTR [rdx+0x500]
  a3be58:	62 a2 65 48 b8 e5    	vfmadd231ps zmm20,zmm3,zmm21
  a3be5e:	62 f1 7c 48 10 5a 15 	vmovups zmm3,ZMMWORD PTR [rdx+0x540]
  a3be65:	62 01 4c 40 59 f5    	vmulps zmm30,zmm22,zmm29
  a3be6b:	62 62 6d 40 bc f3    	vfnmadd231ps zmm30,zmm18,zmm3
  a3be71:	62 81 6c 40 59 d5    	vmulps zmm18,zmm18,zmm29
  a3be77:	62 61 7c 48 10 6a 0e 	vmovups zmm29,ZMMWORD PTR [rdx+0x380]
  a3be7e:	62 a2 65 48 b8 d6    	vfmadd231ps zmm18,zmm3,zmm22
  a3be84:	62 f1 7c 48 10 5a 0f 	vmovups zmm3,ZMMWORD PTR [rdx+0x3c0]
  a3be8b:	62 81 7c 40 59 ed    	vmulps zmm21,zmm16,zmm29
  a3be91:	62 e2 1d 48 bc eb    	vfnmadd231ps zmm21,zmm12,zmm3
  a3be97:	62 81 1c 48 59 f5    	vmulps zmm22,zmm12,zmm29
  a3be9d:	62 71 7c 48 10 62 05 	vmovups zmm12,ZMMWORD PTR [rdx+0x140]
  a3bea4:	62 a2 65 48 b8 f0    	vfmadd231ps zmm22,zmm3,zmm16
  a3beaa:	62 f1 7c 48 10 5a 0a 	vmovups zmm3,ZMMWORD PTR [rdx+0x280]
  a3beb1:	62 01 0c 48 59 ea    	vmulps zmm29,zmm14,zmm26
  a3beb7:	62 02 25 48 bc e9    	vfnmadd231ps zmm29,zmm11,zmm25
  a3bebd:	62 81 24 48 59 c2    	vmulps zmm16,zmm11,zmm26
  a3bec3:	62 71 7c 48 10 5a 10 	vmovups zmm11,ZMMWORD PTR [rdx+0x400]
  a3beca:	62 c2 35 40 b8 c6    	vfmadd231ps zmm16,zmm25,zmm14
  a3bed0:	62 71 7c 48 10 72 11 	vmovups zmm14,ZMMWORD PTR [rdx+0x440]
  a3bed7:	62 41 74 40 59 cb    	vmulps zmm25,zmm17,zmm11
  a3bedd:	62 42 15 48 bc ce    	vfnmadd231ps zmm25,zmm13,zmm14
  a3bee3:	62 51 14 48 59 eb    	vmulps zmm13,zmm13,zmm11
  a3bee9:	62 71 7c 48 10 5a 0b 	vmovups zmm11,ZMMWORD PTR [rdx+0x2c0]
  a3bef0:	62 32 0d 48 b8 e9    	vfmadd231ps zmm13,zmm14,zmm17
  a3bef6:	62 71 7c 48 10 72 16 	vmovups zmm14,ZMMWORD PTR [rdx+0x580]
  a3befd:	62 c1 44 48 59 cf    	vmulps zmm17,zmm7,zmm15
  a3bf03:	62 c2 5d 48 bc cc    	vfnmadd231ps zmm17,zmm4,zmm12
  a3bf09:	62 51 5c 48 59 ff    	vmulps zmm15,zmm4,zmm15
  a3bf0f:	62 f1 7c 48 10 62 17 	vmovups zmm4,ZMMWORD PTR [rdx+0x5c0]
  a3bf16:	62 72 1d 48 b8 ff    	vfmadd231ps zmm15,zmm12,zmm7
  a3bf1c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a3bf23:	02 
  a3bf24:	62 71 7c 48 58 e6    	vaddps zmm12,zmm0,zmm6
  a3bf2a:	62 51 34 48 59 c6    	vmulps zmm8,zmm9,zmm14
  a3bf30:	62 72 55 48 bc c4    	vfnmadd231ps zmm8,zmm5,zmm4
  a3bf36:	62 d1 54 48 59 ee    	vmulps zmm5,zmm5,zmm14
  a3bf3c:	62 21 44 40 58 d3    	vaddps zmm26,zmm23,zmm19
  a3bf42:	62 d2 5d 48 b8 e9    	vfmadd231ps zmm5,zmm4,zmm9
  a3bf48:	62 91 1c 48 58 d2    	vaddps zmm2,zmm12,zmm26
  a3bf4e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a3bf55:	05 
  a3bf56:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a3bf5d:	03 
  a3bf5e:	62 71 6c 48 59 cb    	vmulps zmm9,zmm2,zmm3
  a3bf64:	62 52 2d 48 bc cb    	vfnmadd231ps zmm9,zmm10,zmm11
  a3bf6a:	62 f1 2c 48 59 db    	vmulps zmm3,zmm10,zmm3
  a3bf70:	62 11 1c 40 58 d6    	vaddps zmm10,zmm28,zmm30
  a3bf76:	62 f2 25 48 b8 da    	vfmadd231ps zmm3,zmm11,zmm2
  a3bf7c:	62 91 54 40 58 fd    	vaddps zmm7,zmm21,zmm29
  a3bf82:	62 21 34 40 58 f9    	vaddps zmm31,zmm25,zmm17
  a3bf88:	62 11 1c 40 5c de    	vsubps zmm11,zmm28,zmm30
  a3bf8e:	62 21 4c 40 58 e0    	vaddps zmm28,zmm22,zmm16
  a3bf94:	62 31 4c 40 5c f0    	vsubps zmm14,zmm22,zmm16
  a3bf9a:	62 c1 3c 48 58 f1    	vaddps zmm22,zmm8,zmm9
  a3bfa0:	62 a1 34 40 5c c1    	vsubps zmm16,zmm25,zmm17
  a3bfa6:	62 e1 54 48 58 cb    	vaddps zmm17,zmm5,zmm3
  a3bfac:	62 61 54 48 5c cb    	vsubps zmm25,zmm5,zmm3
  a3bfb2:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x40]
  a3bfb9:	01 
  a3bfba:	62 61 3c 40 58 f4    	vaddps zmm30,zmm24,zmm4
  a3bfc0:	62 f1 7c 48 5c f6    	vsubps zmm6,zmm0,zmm6
  a3bfc6:	62 91 74 48 58 db    	vaddps zmm3,zmm1,zmm27
  a3bfcc:	62 91 74 48 5c cb    	vsubps zmm1,zmm1,zmm27
  a3bfd2:	62 b1 5c 40 58 ea    	vaddps zmm5,zmm20,zmm18
  a3bfd8:	62 a1 5c 40 5c d2    	vsubps zmm18,zmm20,zmm18
  a3bfde:	62 c1 14 48 58 e7    	vaddps zmm20,zmm13,zmm15
  a3bfe4:	62 b1 14 40 5c d5    	vsubps zmm2,zmm29,zmm21
  a3bfea:	62 e1 6c 40 58 ea    	vaddps zmm21,zmm18,zmm2
  a3bff0:	62 51 14 48 5c ef    	vsubps zmm13,zmm13,zmm15
  a3bff6:	62 51 34 48 5c f8    	vsubps zmm15,zmm9,zmm8
  a3bffc:	62 51 14 48 58 c7    	vaddps zmm8,zmm13,zmm15
  a3c002:	62 d1 54 40 5c c0    	vsubps zmm0,zmm21,zmm8
  a3c008:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a3c00f:	04 
  a3c010:	62 d1 54 40 58 c0    	vaddps zmm0,zmm21,zmm8
  a3c016:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a3c01d:	03 
  a3c01e:	62 51 24 48 58 c6    	vaddps zmm8,zmm11,zmm14
  a3c024:	62 01 5c 48 5c c0    	vsubps zmm24,zmm4,zmm24
  a3c02a:	62 11 7c 40 58 c9    	vaddps zmm9,zmm16,zmm25
  a3c030:	62 a1 64 40 5c df    	vsubps zmm19,zmm19,zmm23
  a3c036:	62 41 3c 48 58 d9    	vaddps zmm27,zmm8,zmm9
  a3c03c:	62 51 3c 48 5c c1    	vsubps zmm8,zmm8,zmm9
  a3c042:	62 71 2c 48 58 cf    	vaddps zmm9,zmm10,zmm7
  a3c048:	62 f1 2c 48 5c ff    	vsubps zmm7,zmm10,zmm7
  a3c04e:	62 31 04 40 58 d6    	vaddps zmm10,zmm31,zmm22
  a3c054:	62 a1 04 40 5c f6    	vsubps zmm22,zmm31,zmm22
  a3c05a:	62 91 64 48 58 c6    	vaddps zmm0,zmm3,zmm30
  a3c060:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a3c067:	01 
  a3c068:	62 01 1c 48 5c ea    	vsubps zmm29,zmm12,zmm26
  a3c06e:	62 11 54 48 58 e4    	vaddps zmm12,zmm5,zmm28
  a3c074:	62 91 54 48 5c ec    	vsubps zmm5,zmm5,zmm28
  a3c07a:	62 b1 5c 40 58 e1    	vaddps zmm4,zmm20,zmm17
  a3c080:	62 a1 5c 40 5c c9    	vsubps zmm17,zmm20,zmm17
  a3c086:	62 b1 54 48 5c c1    	vsubps zmm0,zmm5,zmm17
  a3c08c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a3c093:	02 
  a3c094:	62 21 54 48 58 d1    	vaddps zmm26,zmm5,zmm17
  a3c09a:	62 61 4c 48 58 f9    	vaddps zmm31,zmm6,zmm1
  a3c0a0:	62 61 0c 40 5c f3    	vsubps zmm30,zmm30,zmm3
  a3c0a6:	62 a1 44 48 58 ee    	vaddps zmm21,zmm7,zmm22
  a3c0ac:	62 b1 44 48 5c fe    	vsubps zmm7,zmm7,zmm22
  a3c0b2:	62 e2 7d 48 18 25 a4 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff6393a4]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a3c0b9:	93 63 ff 
  a3c0bc:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a3c0c2:	62 f1 4c 48 5c c1    	vsubps zmm0,zmm6,zmm1
  a3c0c8:	62 01 64 40 58 e0    	vaddps zmm28,zmm19,zmm24
  a3c0ce:	62 d1 24 48 5c de    	vsubps zmm3,zmm11,zmm14
  a3c0d4:	62 a1 7c 48 28 fc    	vmovaps zmm23,zmm20
  a3c0da:	62 01 7c 40 5c c9    	vsubps zmm25,zmm16,zmm25
  a3c0e0:	62 a1 7c 48 28 cc    	vmovaps zmm17,zmm20
  a3c0e6:	62 31 3c 40 5c db    	vsubps zmm11,zmm24,zmm19
  a3c0ec:	62 a1 7c 48 28 dc    	vmovaps zmm19,zmm20
  a3c0f2:	62 21 7c 48 28 c4    	vmovaps zmm24,zmm20
  a3c0f8:	62 f1 6c 40 5c d2    	vsubps zmm2,zmm18,zmm2
  a3c0fe:	62 81 64 48 58 e1    	vaddps zmm20,zmm3,zmm25
  a3c104:	62 51 14 48 5c ff    	vsubps zmm15,zmm13,zmm15
  a3c10a:	62 31 7c 48 58 f4    	vaddps zmm14,zmm0,zmm20
  a3c110:	62 e2 3d 40 ac e0    	vfnmadd213ps zmm20,zmm24,zmm0
  a3c116:	62 d1 6c 48 58 c7    	vaddps zmm0,zmm2,zmm15
  a3c11c:	62 91 7c 48 28 c8    	vmovaps zmm1,zmm24
  a3c122:	62 81 7c 48 28 c0    	vmovaps zmm16,zmm24
  a3c128:	62 42 7d 48 ac c3    	vfnmadd213ps zmm24,zmm0,zmm11
  a3c12e:	62 e1 24 48 58 d0    	vaddps zmm18,zmm11,zmm0
  a3c134:	62 71 1c 48 58 ec    	vaddps zmm13,zmm12,zmm4
  a3c13a:	62 71 1c 48 5c e4    	vsubps zmm12,zmm12,zmm4
  a3c140:	62 d1 34 48 58 f2    	vaddps zmm6,zmm9,zmm10
  a3c146:	62 51 34 48 5c d2    	vsubps zmm10,zmm9,zmm10
  a3c14c:	62 91 7c 48 28 eb    	vmovaps zmm5,zmm27
  a3c152:	62 82 25 40 ac f7    	vfnmadd213ps zmm22,zmm27,zmm31
  a3c158:	62 f2 7d 48 18 05 72 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff639172]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a3c15f:	91 63 ff 
  a3c162:	62 71 7c 48 59 4c 24 	vmulps zmm9,zmm0,ZMMWORD PTR [rsp+0x100]
  a3c169:	04 
  a3c16a:	62 41 4c 40 58 d9    	vaddps zmm27,zmm22,zmm9
  a3c170:	62 51 4c 40 5c d9    	vsubps zmm11,zmm22,zmm9
  a3c176:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0xc0]
  a3c17d:	03 
  a3c17e:	62 82 5d 48 ac fc    	vfnmadd213ps zmm23,zmm4,zmm28
  a3c184:	62 71 3c 48 59 c0    	vmulps zmm8,zmm8,zmm0
  a3c18a:	62 c1 44 40 5c f0    	vsubps zmm22,zmm23,zmm8
  a3c190:	62 c1 44 40 58 f8    	vaddps zmm23,zmm23,zmm8
  a3c196:	62 82 55 40 ac cd    	vfnmadd213ps zmm17,zmm21,zmm29
  a3c19c:	62 31 14 40 58 cd    	vaddps zmm9,zmm29,zmm21
  a3c1a2:	62 82 2d 40 ac de    	vfnmadd213ps zmm19,zmm26,zmm30
  a3c1a8:	62 81 0c 40 58 ea    	vaddps zmm21,zmm30,zmm26
  a3c1ae:	62 d1 6c 48 5c d7    	vsubps zmm2,zmm2,zmm15
  a3c1b4:	62 91 64 48 5c d9    	vsubps zmm3,zmm3,zmm25
  a3c1ba:	62 71 7c 48 59 7c 24 	vmulps zmm15,zmm0,ZMMWORD PTR [rsp+0x80]
  a3c1c1:	02 
  a3c1c2:	62 61 44 48 59 c8    	vmulps zmm25,zmm7,zmm0
  a3c1c8:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x140]
  a3c1cf:	05 
  a3c1d0:	62 92 4d 48 ac ce    	vfnmadd213ps zmm1,zmm6,zmm30
  a3c1d6:	62 f1 1c 48 59 f8    	vmulps zmm7,zmm12,zmm0
  a3c1dc:	62 71 2c 48 59 c0    	vmulps zmm8,zmm10,zmm0
  a3c1e2:	62 f1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm0
  a3c1e8:	62 71 64 48 59 d0    	vmulps zmm10,zmm3,zmm0
  a3c1ee:	62 61 74 48 58 d7    	vaddps zmm26,zmm1,zmm7
  a3c1f4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a3c1fb:	01 
  a3c1fc:	62 e2 15 48 ac c0    	vfnmadd213ps zmm16,zmm13,zmm0
  a3c202:	62 71 74 48 5c e7    	vsubps zmm12,zmm1,zmm7
  a3c208:	62 d1 7c 40 5c c8    	vsubps zmm1,zmm16,zmm8
  a3c20e:	62 d1 7c 40 58 d8    	vaddps zmm3,zmm16,zmm8
  a3c214:	62 71 04 40 58 c5    	vaddps zmm8,zmm31,zmm5
  a3c21a:	62 f1 1c 40 58 fc    	vaddps zmm7,zmm28,zmm4
  a3c220:	62 c1 74 40 5c c7    	vsubps zmm16,zmm17,zmm15
  a3c226:	62 41 74 40 58 e7    	vaddps zmm28,zmm17,zmm15
  a3c22c:	62 81 64 40 58 c9    	vaddps zmm17,zmm19,zmm25
  a3c232:	62 01 64 40 5c c9    	vsubps zmm25,zmm19,zmm25
  a3c238:	62 e1 5c 40 58 da    	vaddps zmm19,zmm20,zmm2
  a3c23e:	62 f1 5c 40 5c ea    	vsubps zmm5,zmm20,zmm2
  a3c244:	62 c1 3c 40 5c e2    	vsubps zmm20,zmm24,zmm10
  a3c24a:	62 51 3c 40 58 fa    	vaddps zmm15,zmm24,zmm10
  a3c250:	62 f1 0c 40 58 e6    	vaddps zmm4,zmm30,zmm6
  a3c256:	62 d1 7c 48 58 c5    	vaddps zmm0,zmm0,zmm13
  a3c25c:	62 f1 7c 48 28 15 9a 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff65549a]        # 91700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ebb0>
  a3c263:	54 65 ff 
  a3c266:	62 d3 7d 48 19 e2 02 	vextractf32x4 xmm10,zmm4,0x2
  a3c26d:	62 f2 6d 48 7f e0    	vpermt2ps zmm4,zmm2,zmm0
  a3c273:	62 f1 7c 48 11 26    	vmovups ZMMWORD PTR [rsi],zmm4
  a3c279:	62 f3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm0,0x2
  a3c280:	c5 a8 14 c0          	vunpcklps xmm0,xmm10,xmm0
  a3c284:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  a3c289:	62 63 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm27,0x2
  a3c290:	62 22 6d 48 7f de    	vpermt2ps zmm27,zmm2,zmm22
  a3c296:	62 61 7c 48 11 9e 48 	vmovups ZMMWORD PTR [rsi+0x48],zmm27
  a3c29d:	00 00 00 
  a3c2a0:	62 e3 7d 48 19 f4 02 	vextractf32x4 xmm4,zmm22,0x2
  a3c2a7:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  a3c2ab:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  a3c2b2:	00 
  a3c2b3:	62 e3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm16,0x2
  a3c2ba:	62 a2 6d 48 7f c1    	vpermt2ps zmm16,zmm2,zmm17
  a3c2c0:	62 e1 7c 48 11 86 90 	vmovups ZMMWORD PTR [rsi+0x90],zmm16
  a3c2c7:	00 00 00 
  a3c2ca:	62 e3 7d 48 19 cc 02 	vextractf32x4 xmm4,zmm17,0x2
  a3c2d1:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  a3c2d5:	c5 f8 13 86 d0 00 00 	vmovlps QWORD PTR [rsi+0xd0],xmm0
  a3c2dc:	00 
  a3c2dd:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a3c2e4:	62 32 6d 48 7f f2    	vpermt2ps zmm14,zmm2,zmm18
  a3c2ea:	62 71 7c 48 11 b6 d8 	vmovups ZMMWORD PTR [rsi+0xd8],zmm14
  a3c2f1:	00 00 00 
  a3c2f4:	62 e3 7d 48 19 d4 02 	vextractf32x4 xmm4,zmm18,0x2
  a3c2fb:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  a3c2ff:	c5 f8 13 86 18 01 00 	vmovlps QWORD PTR [rsi+0x118],xmm0
  a3c306:	00 
  a3c307:	62 63 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm26,0x2
  a3c30e:	62 62 6d 48 7f d1    	vpermt2ps zmm26,zmm2,zmm1
  a3c314:	62 61 7c 48 11 96 20 	vmovups ZMMWORD PTR [rsi+0x120],zmm26
  a3c31b:	01 00 00 
  a3c31e:	62 f3 7d 48 19 cc 02 	vextractf32x4 xmm4,zmm1,0x2
  a3c325:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  a3c329:	c5 f8 13 86 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm0
  a3c330:	00 
  a3c331:	62 73 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm11,0x2
  a3c338:	62 32 6d 48 7f df    	vpermt2ps zmm11,zmm2,zmm23
  a3c33e:	62 71 7c 48 11 9e 68 	vmovups ZMMWORD PTR [rsi+0x168],zmm11
  a3c345:	01 00 00 
  a3c348:	62 e3 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm23,0x2
  a3c34f:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a3c353:	c5 f8 13 86 a8 01 00 	vmovlps QWORD PTR [rsi+0x1a8],xmm0
  a3c35a:	00 
  a3c35b:	62 73 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm9,0x2
  a3c362:	62 32 6d 48 7f cd    	vpermt2ps zmm9,zmm2,zmm21
  a3c368:	62 71 7c 48 11 8e b0 	vmovups ZMMWORD PTR [rsi+0x1b0],zmm9
  a3c36f:	01 00 00 
  a3c372:	62 e3 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm21,0x2
  a3c379:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a3c37d:	c5 f8 13 86 f0 01 00 	vmovlps QWORD PTR [rsi+0x1f0],xmm0
  a3c384:	00 
  a3c385:	62 e3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm19,0x2
  a3c38c:	62 a2 6d 48 7f dc    	vpermt2ps zmm19,zmm2,zmm20
  a3c392:	62 e1 7c 48 11 9e f8 	vmovups ZMMWORD PTR [rsi+0x1f8],zmm19
  a3c399:	01 00 00 
  a3c39c:	62 e3 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm20,0x2
  a3c3a3:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a3c3a7:	c5 f8 13 86 38 02 00 	vmovlps QWORD PTR [rsi+0x238],xmm0
  a3c3ae:	00 
  a3c3af:	62 73 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm12,0x2
  a3c3b6:	62 72 6d 48 7f e3    	vpermt2ps zmm12,zmm2,zmm3
  a3c3bc:	62 71 7c 48 11 66 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm12
  a3c3c3:	62 f3 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm3,0x2
  a3c3ca:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a3c3ce:	c5 f8 13 86 80 02 00 	vmovlps QWORD PTR [rsi+0x280],xmm0
  a3c3d5:	00 
  a3c3d6:	62 73 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm8,0x2
  a3c3dd:	62 72 6d 48 7f c7    	vpermt2ps zmm8,zmm2,zmm7
  a3c3e3:	62 71 7c 48 11 86 88 	vmovups ZMMWORD PTR [rsi+0x288],zmm8
  a3c3ea:	02 00 00 
  a3c3ed:	62 f3 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm7,0x2
  a3c3f4:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a3c3f8:	c5 f8 13 86 c8 02 00 	vmovlps QWORD PTR [rsi+0x2c8],xmm0
  a3c3ff:	00 
  a3c400:	62 63 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm28,0x2
  a3c407:	62 02 6d 48 7f e1    	vpermt2ps zmm28,zmm2,zmm25
  a3c40d:	62 61 7c 48 11 a6 d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm28
  a3c414:	02 00 00 
  a3c417:	62 63 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm25,0x2
  a3c41e:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a3c422:	c5 f8 13 86 10 03 00 	vmovlps QWORD PTR [rsi+0x310],xmm0
  a3c429:	00 
  a3c42a:	62 d2 55 48 77 d7    	vpermi2ps zmm2,zmm5,zmm15
  a3c430:	62 f1 7c 48 11 96 18 	vmovups ZMMWORD PTR [rsi+0x318],zmm2
  a3c437:	03 00 00 
  a3c43a:	62 73 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm15,0x2
  a3c441:	62 f3 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm5,0x2
  a3c448:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a3c44c:	c5 f8 13 86 58 03 00 	vmovlps QWORD PTR [rsi+0x358],xmm0
  a3c453:	00 
  a3c454:	48 89 ec             	mov    rsp,rbp
  a3c457:	5d                   	pop    rbp
  a3c458:	c5 f8 77             	vzeroupper
  a3c45b:	c3                   	ret
