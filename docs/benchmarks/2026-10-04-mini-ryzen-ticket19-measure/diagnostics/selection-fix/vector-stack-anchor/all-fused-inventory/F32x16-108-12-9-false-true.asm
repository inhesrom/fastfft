
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a096c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a096c0:	48 81 ec c8 00 00 00 	sub    rsp,0xc8
  a096c7:	48 69 c2 60 03 00 00 	imul   rax,rdx,0x360
  a096ce:	31 d2                	xor    edx,edx
  a096d0:	62 71 7c 48 10 1c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1]
  a096d7:	c5 fb 10 5c 17 40    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x40]
  a096dd:	62 51 7c 48 28 fb    	vmovaps zmm15,zmm11
  a096e3:	62 f1 7c 48 28 05 13 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff685213]        # 8e900 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bdb0>
  a096ea:	52 68 ff 
  a096ed:	62 72 7d 48 7f fb    	vpermt2ps zmm15,zmm0,zmm3
  a096f3:	62 f1 7c 48 28 0d 43 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff685243]        # 8e940 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bdf0>
  a096fa:	52 68 ff 
  a096fd:	62 72 75 48 7f db    	vpermt2ps zmm11,zmm1,zmm3
  a09703:	62 71 7c 48 10 ac 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x48]
  a0970a:	48 00 00 00 
  a0970e:	c5 fb 10 9c 17 88 00 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x88]
  a09715:	00 00 
  a09717:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a0971d:	62 72 7d 48 7f e3    	vpermt2ps zmm12,zmm0,zmm3
  a09723:	62 72 75 48 7f eb    	vpermt2ps zmm13,zmm1,zmm3
  a09729:	62 e1 7c 48 10 8c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x90]
  a09730:	90 00 00 00 
  a09734:	c5 fb 10 9c 17 d0 00 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0xd0]
  a0973b:	00 00 
  a0973d:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a09743:	62 72 7d 48 7f f3    	vpermt2ps zmm14,zmm0,zmm3
  a09749:	62 e2 75 48 7f cb    	vpermt2ps zmm17,zmm1,zmm3
  a0974f:	62 f1 7c 48 10 9c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0xd8]
  a09756:	d8 00 00 00 
  a0975a:	c5 fb 10 ac 17 18 01 	vmovsd xmm5,QWORD PTR [rdi+rdx*1+0x118]
  a09761:	00 00 
  a09763:	62 e1 7c 48 28 db    	vmovaps zmm19,zmm3
  a09769:	62 e2 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm5
  a0976f:	62 f2 75 48 7f dd    	vpermt2ps zmm3,zmm1,zmm5
  a09775:	62 f1 7c 48 10 ac 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x120]
  a0977c:	20 01 00 00 
  a09780:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x160]
  a09787:	2c 
  a09788:	62 e1 7c 48 28 fd    	vmovaps zmm23,zmm5
  a0978e:	62 a2 7d 48 7f f8    	vpermt2ps zmm23,zmm0,zmm16
  a09794:	62 b2 75 48 7f e8    	vpermt2ps zmm5,zmm1,zmm16
  a0979a:	62 e1 7c 48 10 b4 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0x168]
  a097a1:	68 01 00 00 
  a097a5:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x1a8]
  a097ac:	35 
  a097ad:	62 a1 7c 48 28 e6    	vmovaps zmm20,zmm22
  a097b3:	62 a2 7d 48 7f e0    	vpermt2ps zmm20,zmm0,zmm16
  a097b9:	62 a2 75 48 7f f0    	vpermt2ps zmm22,zmm1,zmm16
  a097bf:	62 e1 7c 48 10 ac 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x1b0]
  a097c6:	b0 01 00 00 
  a097ca:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x1f0]
  a097d1:	3e 
  a097d2:	62 21 7c 48 28 cd    	vmovaps zmm25,zmm21
  a097d8:	62 22 7d 48 7f c8    	vpermt2ps zmm25,zmm0,zmm16
  a097de:	62 a2 75 48 7f e8    	vpermt2ps zmm21,zmm1,zmm16
  a097e4:	62 e1 7c 48 10 84 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x1f8]
  a097eb:	f8 01 00 00 
  a097ef:	62 e1 ff 08 10 54 17 	vmovsd xmm18,QWORD PTR [rdi+rdx*1+0x238]
  a097f6:	47 
  a097f7:	62 21 7c 48 28 c0    	vmovaps zmm24,zmm16
  a097fd:	62 22 7d 48 7f c2    	vpermt2ps zmm24,zmm0,zmm18
  a09803:	62 a2 75 48 7f c2    	vpermt2ps zmm16,zmm1,zmm18
  a09809:	62 61 7c 48 10 54 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x240]
  a09810:	09 
  a09811:	62 e1 ff 08 10 54 17 	vmovsd xmm18,QWORD PTR [rdi+rdx*1+0x280]
  a09818:	50 
  a09819:	62 01 7c 48 28 f2    	vmovaps zmm30,zmm26
  a0981f:	62 22 7d 48 7f f2    	vpermt2ps zmm30,zmm0,zmm18
  a09825:	62 22 75 48 7f d2    	vpermt2ps zmm26,zmm1,zmm18
  a0982b:	62 e1 7c 48 10 94 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x288]
  a09832:	88 02 00 00 
  a09836:	62 61 ff 08 10 64 17 	vmovsd xmm28,QWORD PTR [rdi+rdx*1+0x2c8]
  a0983d:	59 
  a0983e:	62 21 7c 48 28 da    	vmovaps zmm27,zmm18
  a09844:	62 02 7d 48 7f dc    	vpermt2ps zmm27,zmm0,zmm28
  a0984a:	62 82 75 48 7f d4    	vpermt2ps zmm18,zmm1,zmm28
  a09850:	62 f1 7c 48 10 a4 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a09857:	d0 02 00 00 
  a0985b:	62 61 ff 08 10 64 17 	vmovsd xmm28,QWORD PTR [rdi+rdx*1+0x310]
  a09862:	62 
  a09863:	62 61 7c 48 28 fc    	vmovaps zmm31,zmm4
  a09869:	62 02 7d 48 7f fc    	vpermt2ps zmm31,zmm0,zmm28
  a0986f:	62 92 75 48 7f e4    	vpermt2ps zmm4,zmm1,zmm28
  a09875:	62 f1 7c 48 10 b4 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x318]
  a0987c:	18 03 00 00 
  a09880:	62 61 ff 08 10 64 17 	vmovsd xmm28,QWORD PTR [rdi+rdx*1+0x358]
  a09887:	6b 
  a09888:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a0988e:	62 12 7d 48 7f cc    	vpermt2ps zmm9,zmm0,zmm28
  a09894:	62 92 75 48 7f f4    	vpermt2ps zmm6,zmm1,zmm28
  a0989a:	62 01 04 48 58 e1    	vaddps zmm28,zmm15,zmm25
  a098a0:	62 01 64 40 58 eb    	vaddps zmm29,zmm19,zmm27
  a098a6:	62 91 44 40 58 c7    	vaddps zmm0,zmm23,zmm31
  a098ac:	62 d1 3c 40 58 fc    	vaddps zmm7,zmm24,zmm12
  a098b2:	62 d1 0c 40 58 d6    	vaddps zmm2,zmm30,zmm14
  a098b8:	62 81 44 40 5c ff    	vsubps zmm23,zmm23,zmm31
  a098be:	62 41 7c 40 58 fd    	vaddps zmm31,zmm16,zmm13
  a098c4:	62 51 7c 40 5c ed    	vsubps zmm13,zmm16,zmm13
  a098ca:	62 a1 34 48 58 c4    	vaddps zmm16,zmm9,zmm20
  a098d0:	62 51 0c 40 5c f6    	vsubps zmm14,zmm30,zmm14
  a098d6:	62 21 4c 48 58 f6    	vaddps zmm30,zmm6,zmm22
  a098dc:	62 b1 4c 48 5c f6    	vsubps zmm6,zmm6,zmm22
  a098e2:	62 a1 24 48 58 f5    	vaddps zmm22,zmm11,zmm21
  a098e8:	62 11 04 48 5c f9    	vsubps zmm15,zmm15,zmm25
  a098ee:	62 21 64 48 58 ca    	vaddps zmm25,zmm3,zmm18
  a098f4:	62 b1 64 48 5c da    	vsubps zmm3,zmm3,zmm18
  a098fa:	62 e1 54 48 58 d4    	vaddps zmm18,zmm5,zmm4
  a09900:	62 f1 54 48 5c e4    	vsubps zmm4,zmm5,zmm4
  a09906:	62 b1 2c 40 58 e9    	vaddps zmm5,zmm26,zmm17
  a0990c:	62 01 1c 48 5c c0    	vsubps zmm24,zmm12,zmm24
  a09912:	62 71 3c 40 58 e4    	vaddps zmm12,zmm24,zmm4
  a09918:	62 a1 2c 40 5c c9    	vsubps zmm17,zmm26,zmm17
  a0991e:	62 51 5c 40 5c c9    	vsubps zmm9,zmm20,zmm9
  a09924:	62 a1 34 48 58 e1    	vaddps zmm20,zmm9,zmm17
  a0992a:	62 21 1c 48 5c d4    	vsubps zmm26,zmm12,zmm20
  a09930:	62 31 1c 48 58 e4    	vaddps zmm12,zmm12,zmm20
  a09936:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm12
  a0993d:	01 
  a0993e:	62 51 44 40 58 d5    	vaddps zmm10,zmm23,zmm13
  a09944:	62 a1 24 48 5c ed    	vsubps zmm21,zmm11,zmm21
  a0994a:	62 71 0c 48 58 de    	vaddps zmm11,zmm14,zmm6
  a09950:	62 a1 24 40 5c db    	vsubps zmm19,zmm27,zmm19
  a09956:	62 d1 2c 48 58 cb    	vaddps zmm1,zmm10,zmm11
  a0995c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a09963:	fe 
  a09964:	62 c1 2c 48 5c e3    	vsubps zmm20,zmm10,zmm11
  a0996a:	62 61 7c 48 58 df    	vaddps zmm27,zmm0,zmm7
  a09970:	62 f1 7c 48 5c c7    	vsubps zmm0,zmm0,zmm7
  a09976:	62 31 6c 48 58 d0    	vaddps zmm10,zmm2,zmm16
  a0997c:	62 b1 6c 48 5c d0    	vsubps zmm2,zmm2,zmm16
  a09982:	62 11 1c 40 58 c5    	vaddps zmm8,zmm28,zmm29
  a09988:	62 01 1c 40 5c e5    	vsubps zmm28,zmm28,zmm29
  a0998e:	62 01 6c 40 58 ef    	vaddps zmm29,zmm18,zmm31
  a09994:	62 11 6c 40 5c df    	vsubps zmm11,zmm18,zmm31
  a0999a:	62 01 54 48 58 fe    	vaddps zmm31,zmm5,zmm30
  a099a0:	62 91 54 48 5c ee    	vsubps zmm5,zmm5,zmm30
  a099a6:	62 f1 24 48 5c fd    	vsubps zmm7,zmm11,zmm5
  a099ac:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm7
  a099b3:	ff 
  a099b4:	62 f1 24 48 58 fd    	vaddps zmm7,zmm11,zmm5
  a099ba:	62 91 4c 40 58 e9    	vaddps zmm5,zmm22,zmm25
  a099c0:	62 11 4c 40 5c d9    	vsubps zmm11,zmm22,zmm25
  a099c6:	62 61 7c 48 58 ca    	vaddps zmm25,zmm0,zmm2
  a099cc:	62 61 7c 48 5c f2    	vsubps zmm30,zmm0,zmm2
  a099d2:	62 e1 04 48 58 d3    	vaddps zmm18,zmm15,zmm3
  a099d8:	62 e1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm18
  a099df:	62 f1 04 48 5c db    	vsubps zmm3,zmm15,zmm3
  a099e5:	62 51 24 40 58 fa    	vaddps zmm15,zmm27,zmm10
  a099eb:	62 51 44 40 5c ed    	vsubps zmm13,zmm23,zmm13
  a099f1:	62 c1 3c 48 58 c7    	vaddps zmm16,zmm8,zmm15
  a099f7:	62 f1 0c 48 5c f6    	vsubps zmm6,zmm14,zmm6
  a099fd:	62 b1 64 40 58 d5    	vaddps zmm2,zmm19,zmm21
  a09a03:	62 31 54 40 5c f3    	vsubps zmm14,zmm21,zmm19
  a09a09:	62 81 14 40 58 ef    	vaddps zmm21,zmm29,zmm31
  a09a0f:	62 91 5c 48 5c c0    	vsubps zmm0,zmm4,zmm24
  a09a15:	62 b1 54 48 58 e5    	vaddps zmm4,zmm5,zmm21
  a09a1b:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm4
  a09a22:	02 
  a09a23:	62 51 74 40 5c c9    	vsubps zmm9,zmm17,zmm9
  a09a29:	62 e2 7d 48 18 35 2d 	vbroadcastss zmm22,DWORD PTR [rip+0xffffffffff66ba2d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a09a30:	ba 66 ff 
  a09a33:	62 a1 7c 48 28 ce    	vmovaps zmm17,zmm22
  a09a39:	62 a2 75 48 ac ca    	vfnmadd213ps zmm17,zmm1,zmm18
  a09a3f:	62 f2 7d 48 18 25 8b 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff66b88b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a09a46:	b8 66 ff 
  a09a49:	62 e1 2c 40 59 dc    	vmulps zmm19,zmm26,zmm4
  a09a4f:	62 52 4d 40 ac f8    	vfnmadd213ps zmm15,zmm22,zmm8
  a09a55:	62 a1 64 40 58 d1    	vaddps zmm18,zmm19,zmm17
  a09a5b:	62 01 14 40 5c d7    	vsubps zmm26,zmm29,zmm31
  a09a61:	62 21 7c 48 28 c6    	vmovaps zmm24,zmm22
  a09a67:	62 62 1d 48 ac c2    	vfnmadd213ps zmm24,zmm12,zmm2
  a09a6d:	62 e1 5c 40 59 e4    	vmulps zmm20,zmm20,zmm4
  a09a73:	62 e2 4d 40 ac ed    	vfnmadd213ps zmm21,zmm22,zmm5
  a09a79:	62 a1 3c 40 5c fc    	vsubps zmm23,zmm24,zmm20
  a09a7f:	62 d1 24 40 5c ca    	vsubps zmm1,zmm27,zmm10
  a09a85:	62 b1 7c 48 28 ee    	vmovaps zmm5,zmm22
  a09a8b:	62 21 7c 48 28 de    	vmovaps zmm27,zmm22
  a09a91:	62 92 35 40 ac ec    	vfnmadd213ps zmm5,zmm25,zmm28
  a09a97:	62 71 5c 48 59 44 24 	vmulps zmm8,zmm4,ZMMWORD PTR [rsp-0x40]
  a09a9e:	ff 
  a09a9f:	62 a1 74 40 5c f3    	vsubps zmm22,zmm17,zmm19
  a09aa5:	62 c1 54 48 5c d8    	vsubps zmm19,zmm5,zmm8
  a09aab:	62 a1 3c 40 58 cc    	vaddps zmm17,zmm24,zmm20
  a09ab1:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm17
  a09ab8:	ff 
  a09ab9:	62 81 7c 48 28 cb    	vmovaps zmm17,zmm27
  a09abf:	62 81 7c 48 28 e3    	vmovaps zmm20,zmm27
  a09ac5:	62 c2 45 48 ac e3    	vfnmadd213ps zmm20,zmm7,zmm11
  a09acb:	62 71 0c 40 59 e4    	vmulps zmm12,zmm30,zmm4
  a09ad1:	62 01 1c 40 58 c9    	vaddps zmm25,zmm28,zmm25
  a09ad7:	62 61 14 48 58 e6    	vaddps zmm28,zmm13,zmm6
  a09add:	62 61 24 48 58 df    	vaddps zmm27,zmm11,zmm7
  a09ae3:	62 01 64 48 58 c4    	vaddps zmm24,zmm3,zmm28
  a09ae9:	62 62 75 40 ac e3    	vfnmadd213ps zmm28,zmm17,zmm3
  a09aef:	62 51 7c 48 58 d9    	vaddps zmm11,zmm0,zmm9
  a09af5:	62 d1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm9
  a09afb:	62 41 0c 48 58 eb    	vaddps zmm29,zmm14,zmm11
  a09b01:	62 52 75 40 ac de    	vfnmadd213ps zmm11,zmm17,zmm14
  a09b07:	62 21 1c 48 58 fc    	vaddps zmm31,zmm12,zmm20
  a09b0d:	62 f1 2c 40 59 dc    	vmulps zmm3,zmm26,zmm4
  a09b13:	62 f1 14 48 5c f6    	vsubps zmm6,zmm13,zmm6
  a09b19:	62 61 04 48 58 f3    	vaddps zmm30,zmm15,zmm3
  a09b1f:	62 f1 74 48 59 cc    	vmulps zmm1,zmm1,zmm4
  a09b25:	62 71 04 48 5c cb    	vsubps zmm9,zmm15,zmm3
  a09b2b:	62 e1 54 40 5c c9    	vsubps zmm17,zmm21,zmm1
  a09b31:	62 71 7c 48 59 ec    	vmulps zmm13,zmm0,zmm4
  a09b37:	62 b1 74 48 58 dd    	vaddps zmm3,zmm1,zmm21
  a09b3d:	62 01 14 48 58 d4    	vaddps zmm26,zmm13,zmm28
  a09b43:	62 f1 4c 48 59 f4    	vmulps zmm6,zmm6,zmm4
  a09b49:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a09b50:	fe 
  a09b51:	62 71 7c 48 58 14 24 	vaddps zmm10,zmm0,ZMMWORD PTR [rsp]
  a09b58:	62 71 24 48 5c f6    	vsubps zmm14,zmm11,zmm6
  a09b5e:	62 f1 6c 48 58 44 24 	vaddps zmm0,zmm2,ZMMWORD PTR [rsp+0x40]
  a09b65:	01 
  a09b66:	62 d1 54 48 58 d0    	vaddps zmm2,zmm5,zmm8
  a09b6c:	62 c1 5c 40 5c e4    	vsubps zmm20,zmm20,zmm12
  a09b72:	62 d1 1c 40 5c ed    	vsubps zmm5,zmm28,zmm13
  a09b78:	62 f1 24 48 58 ce    	vaddps zmm1,zmm11,zmm6
  a09b7e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a09b85:	fe 
  a09b86:	62 31 7c 48 28 d8    	vmovaps zmm11,zmm16
  a09b8c:	62 e1 7c 48 28 2d ea 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6bd3ea]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a09b93:	d3 6b ff 
  a09b96:	62 52 55 40 7f d9    	vpermt2ps zmm11,zmm21,zmm9
  a09b9c:	62 61 7c 48 28 25 1a 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff6bd41a]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a09ba3:	d4 6b ff 
  a09ba6:	62 c2 1d 40 7f c1    	vpermt2ps zmm16,zmm28,zmm9
  a09bac:	62 31 7c 48 28 fa    	vmovaps zmm15,zmm18
  a09bb2:	62 52 55 40 7f fa    	vpermt2ps zmm15,zmm21,zmm10
  a09bb8:	62 c2 1d 40 7f d2    	vpermt2ps zmm18,zmm28,zmm10
  a09bbe:	62 b1 7c 48 28 f3    	vmovaps zmm6,zmm19
  a09bc4:	62 f2 55 40 7f f2    	vpermt2ps zmm6,zmm21,zmm2
  a09bca:	62 e2 1d 40 7f da    	vpermt2ps zmm19,zmm28,zmm2
  a09bd0:	62 91 7c 48 28 d0    	vmovaps zmm2,zmm24
  a09bd6:	62 f2 55 40 7f d5    	vpermt2ps zmm2,zmm21,zmm5
  a09bdc:	62 62 1d 40 7f c5    	vpermt2ps zmm24,zmm28,zmm5
  a09be2:	62 91 7c 48 28 ee    	vmovaps zmm5,zmm30
  a09be8:	c5 c0 57 ff          	vxorps xmm7,xmm7,xmm7
  a09bec:	62 f2 55 40 7f ef    	vpermt2ps zmm5,zmm21,zmm7
  a09bf2:	62 31 7c 48 28 c6    	vmovaps zmm8,zmm22
  a09bf8:	62 72 55 40 7f c7    	vpermt2ps zmm8,zmm21,zmm7
  a09bfe:	62 11 7c 48 28 c9    	vmovaps zmm9,zmm25
  a09c04:	62 72 55 40 7f cf    	vpermt2ps zmm9,zmm21,zmm7
  a09c0a:	62 11 7c 48 28 d2    	vmovaps zmm10,zmm26
  a09c10:	62 72 55 40 7f d7    	vpermt2ps zmm10,zmm21,zmm7
  a09c16:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a09c1c:	62 f1 7c 48 28 0d da 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6bd2da]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a09c23:	d2 6b ff 
  a09c26:	62 72 75 48 7f e5    	vpermt2ps zmm12,zmm1,zmm5
  a09c2c:	62 71 7c 48 28 2d 0a 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6bd30a]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a09c33:	d3 6b ff 
  a09c36:	62 72 15 48 7f dd    	vpermt2ps zmm11,zmm13,zmm5
  a09c3c:	62 d1 7c 48 28 ef    	vmovaps zmm5,zmm15
  a09c42:	62 d2 75 48 7f e8    	vpermt2ps zmm5,zmm1,zmm8
  a09c48:	62 52 15 48 7f f8    	vpermt2ps zmm15,zmm13,zmm8
  a09c4e:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a09c54:	62 52 75 48 7f c1    	vpermt2ps zmm8,zmm1,zmm9
  a09c5a:	62 d2 15 48 7f f1    	vpermt2ps zmm6,zmm13,zmm9
  a09c60:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a09c66:	62 52 75 48 7f ca    	vpermt2ps zmm9,zmm1,zmm10
  a09c6c:	62 d2 15 48 7f d2    	vpermt2ps zmm2,zmm13,zmm10
  a09c72:	62 62 1d 40 7f f7    	vpermt2ps zmm30,zmm28,zmm7
  a09c78:	62 82 75 48 7f c6    	vpermt2ps zmm16,zmm1,zmm30
  a09c7e:	62 e2 1d 40 7f f7    	vpermt2ps zmm22,zmm28,zmm7
  a09c84:	62 a2 75 48 7f d6    	vpermt2ps zmm18,zmm1,zmm22
  a09c8a:	62 62 1d 40 7f cf    	vpermt2ps zmm25,zmm28,zmm7
  a09c90:	62 62 1d 40 7f d7    	vpermt2ps zmm26,zmm28,zmm7
  a09c96:	62 82 75 48 7f d9    	vpermt2ps zmm19,zmm1,zmm25
  a09c9c:	62 b1 fd 40 14 e3    	vunpcklpd zmm4,zmm16,zmm19
  a09ca2:	62 02 75 48 7f c2    	vpermt2ps zmm24,zmm1,zmm26
  a09ca8:	62 11 ed 40 14 d0    	vunpcklpd zmm10,zmm18,zmm24
  a09cae:	62 41 9d 48 14 d0    	vunpcklpd zmm26,zmm12,zmm8
  a09cb4:	62 41 9d 48 15 c0    	vunpckhpd zmm24,zmm12,zmm8
  a09cba:	62 51 d5 48 14 c1    	vunpcklpd zmm8,zmm5,zmm9
  a09cc0:	62 d1 d5 48 15 e9    	vunpckhpd zmm5,zmm5,zmm9
  a09cc6:	62 e1 a5 48 14 f6    	vunpcklpd zmm22,zmm11,zmm6
  a09ccc:	62 e1 a5 48 15 d6    	vunpckhpd zmm18,zmm11,zmm6
  a09cd2:	62 f1 85 48 14 f2    	vunpcklpd zmm6,zmm15,zmm2
  a09cd8:	62 f1 85 48 15 d2    	vunpckhpd zmm2,zmm15,zmm2
  a09cde:	62 81 7c 48 28 da    	vmovaps zmm19,zmm26
  a09ce4:	62 71 7c 48 28 25 12 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6bd112]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a09ceb:	d1 6b ff 
  a09cee:	62 c2 1d 48 7f d8    	vpermt2ps zmm19,zmm12,zmm8
  a09cf4:	62 71 7c 48 28 3d 42 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6bd142]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a09cfb:	d1 6b ff 
  a09cfe:	62 42 05 48 7f d0    	vpermt2ps zmm26,zmm15,zmm8
  a09d04:	62 11 7c 48 28 d8    	vmovaps zmm11,zmm24
  a09d0a:	62 72 1d 48 7f dd    	vpermt2ps zmm11,zmm12,zmm5
  a09d10:	62 62 05 48 7f c5    	vpermt2ps zmm24,zmm15,zmm5
  a09d16:	62 21 7c 48 28 f6    	vmovaps zmm30,zmm22
  a09d1c:	62 62 1d 48 7f f6    	vpermt2ps zmm30,zmm12,zmm6
  a09d22:	62 e2 05 48 7f f6    	vpermt2ps zmm22,zmm15,zmm6
  a09d28:	62 21 7c 48 28 ca    	vmovaps zmm25,zmm18
  a09d2e:	62 62 1d 48 7f ca    	vpermt2ps zmm25,zmm12,zmm2
  a09d34:	62 e2 05 48 7f d2    	vpermt2ps zmm18,zmm15,zmm2
  a09d3a:	62 d2 1d 48 7f e2    	vpermt2ps zmm4,zmm12,zmm10
  a09d40:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a09d47:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x80]
  a09d4e:	02 
  a09d4f:	62 e1 7c 48 28 c4    	vmovaps zmm16,zmm4
  a09d55:	62 e2 55 40 7f c3    	vpermt2ps zmm16,zmm21,zmm3
  a09d5b:	62 f2 1d 40 7f e3    	vpermt2ps zmm4,zmm28,zmm3
  a09d61:	62 b1 7c 48 28 df    	vmovaps zmm3,zmm23
  a09d67:	62 f2 55 40 7f d8    	vpermt2ps zmm3,zmm21,zmm0
  a09d6d:	62 e2 1d 40 7f f8    	vpermt2ps zmm23,zmm28,zmm0
  a09d73:	62 91 7c 48 28 c7    	vmovaps zmm0,zmm31
  a09d79:	62 b2 55 40 7f c4    	vpermt2ps zmm0,zmm21,zmm20
  a09d7f:	62 22 1d 40 7f fc    	vpermt2ps zmm31,zmm28,zmm20
  a09d85:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  a09d8b:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp-0x80]
  a09d92:	fe 
  a09d93:	62 f2 55 40 7f d5    	vpermt2ps zmm2,zmm21,zmm5
  a09d99:	62 62 1d 40 7f ed    	vpermt2ps zmm29,zmm28,zmm5
  a09d9f:	62 b1 7c 48 28 e9    	vmovaps zmm5,zmm17
  a09da5:	62 f2 55 40 7f ef    	vpermt2ps zmm5,zmm21,zmm7
  a09dab:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp-0x40]
  a09db2:	ff 
  a09db3:	62 b1 7c 48 28 f4    	vmovaps zmm6,zmm20
  a09db9:	62 f2 55 40 7f f7    	vpermt2ps zmm6,zmm21,zmm7
  a09dbf:	62 11 7c 48 28 c3    	vmovaps zmm8,zmm27
  a09dc5:	62 72 55 40 7f c7    	vpermt2ps zmm8,zmm21,zmm7
  a09dcb:	62 51 7c 48 28 ce    	vmovaps zmm9,zmm14
  a09dd1:	62 72 55 40 7f cf    	vpermt2ps zmm9,zmm21,zmm7
  a09dd7:	62 31 7c 48 28 d0    	vmovaps zmm10,zmm16
  a09ddd:	62 72 75 48 7f d5    	vpermt2ps zmm10,zmm1,zmm5
  a09de3:	62 e2 15 48 7f c5    	vpermt2ps zmm16,zmm13,zmm5
  a09de9:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a09def:	62 f2 75 48 7f ee    	vpermt2ps zmm5,zmm1,zmm6
  a09df5:	62 f2 15 48 7f de    	vpermt2ps zmm3,zmm13,zmm6
  a09dfb:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a09e01:	62 d2 75 48 7f f0    	vpermt2ps zmm6,zmm1,zmm8
  a09e07:	62 d2 15 48 7f c0    	vpermt2ps zmm0,zmm13,zmm8
  a09e0d:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a09e13:	62 52 75 48 7f c1    	vpermt2ps zmm8,zmm1,zmm9
  a09e19:	62 d2 15 48 7f d1    	vpermt2ps zmm2,zmm13,zmm9
  a09e1f:	62 e2 1d 40 7f cf    	vpermt2ps zmm17,zmm28,zmm7
  a09e25:	62 b2 75 48 7f e1    	vpermt2ps zmm4,zmm1,zmm17
  a09e2b:	62 31 7c 48 28 cc    	vmovaps zmm9,zmm20
  a09e31:	62 72 1d 40 7f cf    	vpermt2ps zmm9,zmm28,zmm7
  a09e37:	62 c2 75 48 7f f9    	vpermt2ps zmm23,zmm1,zmm9
  a09e3d:	62 62 1d 40 7f df    	vpermt2ps zmm27,zmm28,zmm7
  a09e43:	62 72 1d 40 7f f7    	vpermt2ps zmm14,zmm28,zmm7
  a09e49:	62 02 75 48 7f fb    	vpermt2ps zmm31,zmm1,zmm27
  a09e4f:	62 81 dd 48 14 cf    	vunpcklpd zmm17,zmm4,zmm31
  a09e55:	62 42 75 48 7f ee    	vpermt2ps zmm29,zmm1,zmm14
  a09e5b:	62 91 c5 40 14 cd    	vunpcklpd zmm1,zmm23,zmm29
  a09e61:	62 71 ad 48 14 ee    	vunpcklpd zmm13,zmm10,zmm6
  a09e67:	62 e1 ad 48 15 fe    	vunpckhpd zmm23,zmm10,zmm6
  a09e6d:	62 d1 d5 48 14 e0    	vunpcklpd zmm4,zmm5,zmm8
  a09e73:	62 d1 d5 48 15 f0    	vunpckhpd zmm6,zmm5,zmm8
  a09e79:	62 61 fd 40 14 d8    	vunpcklpd zmm27,zmm16,zmm0
  a09e7f:	62 f1 fd 40 15 e8    	vunpckhpd zmm5,zmm16,zmm0
  a09e85:	62 f1 e5 48 14 c2    	vunpcklpd zmm0,zmm3,zmm2
  a09e8b:	62 f1 e5 48 15 d2    	vunpckhpd zmm2,zmm3,zmm2
  a09e91:	62 c1 7c 48 28 ed    	vmovaps zmm21,zmm13
  a09e97:	62 e2 1d 48 7f ec    	vpermt2ps zmm21,zmm12,zmm4
  a09e9d:	62 72 05 48 7f ec    	vpermt2ps zmm13,zmm15,zmm4
  a09ea3:	62 b1 7c 48 28 df    	vmovaps zmm3,zmm23
  a09ea9:	62 f2 1d 48 7f de    	vpermt2ps zmm3,zmm12,zmm6
  a09eaf:	62 e2 05 48 7f fe    	vpermt2ps zmm23,zmm15,zmm6
  a09eb5:	62 11 7c 48 28 f3    	vmovaps zmm14,zmm27
  a09ebb:	62 72 1d 48 7f f0    	vpermt2ps zmm14,zmm12,zmm0
  a09ec1:	62 62 05 48 7f d8    	vpermt2ps zmm27,zmm15,zmm0
  a09ec7:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a09ecd:	62 f2 1d 48 7f c2    	vpermt2ps zmm0,zmm12,zmm2
  a09ed3:	62 f2 05 48 7f ea    	vpermt2ps zmm5,zmm15,zmm2
  a09ed9:	62 e2 1d 48 7f c9    	vpermt2ps zmm17,zmm12,zmm1
  a09edf:	62 f1 7c 48 10 49 02 	vmovups zmm1,ZMMWORD PTR [rcx+0x80]
  a09ee6:	62 71 7c 48 10 79 03 	vmovups zmm15,ZMMWORD PTR [rcx+0xc0]
  a09eed:	62 f1 7c 48 10 51 06 	vmovups zmm2,ZMMWORD PTR [rcx+0x180]
  a09ef4:	62 f1 7c 48 10 61 07 	vmovups zmm4,ZMMWORD PTR [rcx+0x1c0]
  a09efb:	62 71 3c 40 59 e2    	vmulps zmm12,zmm24,zmm2
  a09f01:	62 72 45 40 bc e4    	vfnmadd231ps zmm12,zmm23,zmm4
  a09f07:	62 e1 44 40 59 c2    	vmulps zmm16,zmm23,zmm2
  a09f0d:	62 f1 7c 48 10 51 0c 	vmovups zmm2,ZMMWORD PTR [rcx+0x300]
  a09f14:	62 82 5d 48 b8 c0    	vfmadd231ps zmm16,zmm4,zmm24
  a09f1a:	62 f1 7c 48 10 61 0d 	vmovups zmm4,ZMMWORD PTR [rcx+0x340]
  a09f21:	62 61 34 40 59 e2    	vmulps zmm28,zmm25,zmm2
  a09f27:	62 62 7d 48 bc e4    	vfnmadd231ps zmm28,zmm0,zmm4
  a09f2d:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a09f33:	62 f1 7c 48 10 51 04 	vmovups zmm2,ZMMWORD PTR [rcx+0x100]
  a09f3a:	62 92 5d 48 b8 c1    	vfmadd231ps zmm0,zmm4,zmm25
  a09f40:	62 f1 7c 48 10 61 05 	vmovups zmm4,ZMMWORD PTR [rcx+0x140]
  a09f47:	62 e1 2c 40 59 f9    	vmulps zmm23,zmm26,zmm1
  a09f4d:	62 c2 15 48 bc ff    	vfnmadd231ps zmm23,zmm13,zmm15
  a09f53:	62 61 14 48 59 c1    	vmulps zmm24,zmm13,zmm1
  a09f59:	62 f1 7c 48 10 49 08 	vmovups zmm1,ZMMWORD PTR [rcx+0x200]
  a09f60:	62 02 05 48 b8 c2    	vfmadd231ps zmm24,zmm15,zmm26
  a09f66:	62 f1 7c 48 10 71 09 	vmovups zmm6,ZMMWORD PTR [rcx+0x240]
  a09f6d:	62 f1 0c 40 59 f9    	vmulps zmm7,zmm30,zmm1
  a09f73:	62 f2 0d 48 bc fe    	vfnmadd231ps zmm7,zmm14,zmm6
  a09f79:	62 f1 0c 48 59 c9    	vmulps zmm1,zmm14,zmm1
  a09f7f:	62 71 7c 48 10 41 0e 	vmovups zmm8,ZMMWORD PTR [rcx+0x380]
  a09f86:	62 92 4d 48 b8 ce    	vfmadd231ps zmm1,zmm6,zmm30
  a09f8c:	62 f1 7c 48 10 71 0f 	vmovups zmm6,ZMMWORD PTR [rcx+0x3c0]
  a09f93:	62 51 6c 40 59 c8    	vmulps zmm9,zmm18,zmm8
  a09f99:	62 72 55 48 bc ce    	vfnmadd231ps zmm9,zmm5,zmm6
  a09f9f:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a09fa5:	62 71 7c 48 10 41 0a 	vmovups zmm8,ZMMWORD PTR [rcx+0x280]
  a09fac:	62 b2 4d 48 b8 ea    	vfmadd231ps zmm5,zmm6,zmm18
  a09fb2:	62 f1 7c 48 10 71 0b 	vmovups zmm6,ZMMWORD PTR [rcx+0x2c0]
  a09fb9:	62 71 24 48 59 ea    	vmulps zmm13,zmm11,zmm2
  a09fbf:	62 72 65 48 bc ec    	vfnmadd231ps zmm13,zmm3,zmm4
  a09fc5:	62 71 64 48 59 f2    	vmulps zmm14,zmm3,zmm2
  a09fcb:	62 f1 7c 48 10 51 10 	vmovups zmm2,ZMMWORD PTR [rcx+0x400]
  a09fd2:	62 52 5d 48 b8 f3    	vfmadd231ps zmm14,zmm4,zmm11
  a09fd8:	62 f1 7c 48 10 59 11 	vmovups zmm3,ZMMWORD PTR [rcx+0x440]
  a09fdf:	62 d1 4c 40 59 e0    	vmulps zmm4,zmm22,zmm8
  a09fe5:	62 f2 25 40 bc e6    	vfnmadd231ps zmm4,zmm27,zmm6
  a09feb:	62 51 24 40 59 c0    	vmulps zmm8,zmm27,zmm8
  a09ff1:	62 11 1c 48 58 d4    	vaddps zmm10,zmm12,zmm28
  a09ff7:	62 32 4d 48 b8 c6    	vfmadd231ps zmm8,zmm6,zmm22
  a09ffd:	62 c1 64 40 58 f2    	vaddps zmm22,zmm19,zmm10
  a0a003:	62 71 7c 48 10 3c 24 	vmovups zmm15,ZMMWORD PTR [rsp]
  a0a00a:	62 f1 04 48 59 f2    	vmulps zmm6,zmm15,zmm2
  a0a010:	62 f2 75 40 bc f3    	vfnmadd231ps zmm6,zmm17,zmm3
  a0a016:	62 f1 74 40 59 d2    	vmulps zmm2,zmm17,zmm2
  a0a01c:	62 51 44 48 58 d9    	vaddps zmm11,zmm7,zmm9
  a0a022:	62 d2 65 48 b8 d7    	vfmadd231ps zmm2,zmm3,zmm15
  a0a028:	62 51 44 40 58 fb    	vaddps zmm15,zmm23,zmm11
  a0a02e:	62 f1 5c 48 58 de    	vaddps zmm3,zmm4,zmm6
  a0a034:	62 62 7d 48 18 35 22 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff66b422]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0a03b:	b4 66 ff 
  a0a03e:	62 c2 0d 40 bc da    	vfnmadd231ps zmm19,zmm30,zmm10
  a0a044:	62 71 7c 40 58 d0    	vaddps zmm10,zmm16,zmm0
  a0a04a:	62 f1 7c 40 5c c0    	vsubps zmm0,zmm16,zmm0
  a0a050:	62 e1 14 48 58 cb    	vaddps zmm17,zmm13,zmm3
  a0a056:	62 c2 0d 40 bc fb    	vfnmadd231ps zmm23,zmm30,zmm11
  a0a05c:	62 71 74 48 58 dd    	vaddps zmm11,zmm1,zmm5
  a0a062:	62 f1 74 48 5c cd    	vsubps zmm1,zmm1,zmm5
  a0a068:	62 c1 3c 40 58 e3    	vaddps zmm20,zmm24,zmm11
  a0a06e:	62 42 0d 40 bc c3    	vfnmadd231ps zmm24,zmm30,zmm11
  a0a074:	62 31 2c 48 58 dd    	vaddps zmm11,zmm10,zmm21
  a0a07a:	62 d1 44 48 5c e9    	vsubps zmm5,zmm7,zmm9
  a0a080:	62 f1 3c 48 58 fa    	vaddps zmm7,zmm8,zmm2
  a0a086:	62 72 0d 40 bc eb    	vfnmadd231ps zmm13,zmm30,zmm3
  a0a08c:	62 61 0c 48 58 d7    	vaddps zmm26,zmm14,zmm7
  a0a092:	62 62 7d 48 18 2d 38 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff66b238]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0a099:	b2 66 ff 
  a0a09c:	62 91 7c 48 59 c5    	vmulps zmm0,zmm0,zmm29
  a0a0a2:	62 91 74 48 59 cd    	vmulps zmm1,zmm1,zmm29
  a0a0a8:	62 f1 3c 48 5c d2    	vsubps zmm2,zmm8,zmm2
  a0a0ae:	62 f1 44 40 58 d9    	vaddps zmm3,zmm23,zmm1
  a0a0b4:	62 91 54 48 59 ed    	vmulps zmm5,zmm5,zmm29
  a0a0ba:	62 72 0d 40 bc f7    	vfnmadd231ps zmm14,zmm30,zmm7
  a0a0c0:	62 f1 3c 40 5c fd    	vsubps zmm7,zmm24,zmm5
  a0a0c6:	62 f1 5c 48 5c e6    	vsubps zmm4,zmm4,zmm6
  a0a0cc:	62 e2 7d 48 18 05 92 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff66b592]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a0a0d3:	b5 66 ff 
  a0a0d6:	62 21 44 48 59 c8    	vmulps zmm25,zmm7,zmm16
  a0a0dc:	62 e2 7d 48 18 15 f2 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff66b3f2]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a0a0e3:	b3 66 ff 
  a0a0e6:	62 22 65 48 b8 ca    	vfmadd231ps zmm25,zmm3,zmm18
  a0a0ec:	62 91 6c 48 59 d5    	vmulps zmm2,zmm2,zmm29
  a0a0f2:	62 c2 0d 40 bc ea    	vfnmadd231ps zmm21,zmm30,zmm10
  a0a0f8:	62 f1 14 48 58 f2    	vaddps zmm6,zmm13,zmm2
  a0a0fe:	62 91 5c 48 59 e5    	vmulps zmm4,zmm4,zmm29
  a0a104:	62 11 1c 48 5c c4    	vsubps zmm8,zmm12,zmm28
  a0a10a:	62 71 0c 48 5c cc    	vsubps zmm9,zmm14,zmm4
  a0a110:	62 b1 44 48 59 fa    	vmulps zmm7,zmm7,zmm18
  a0a116:	62 f2 7d 40 bc fb    	vfnmadd231ps zmm7,zmm16,zmm3
  a0a11c:	62 72 7d 48 18 25 f2 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff66b1f2]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a0a123:	b1 66 ff 
  a0a126:	62 c1 34 48 59 c4    	vmulps zmm16,zmm9,zmm12
  a0a12c:	62 62 7d 48 18 1d a6 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff66b3a6]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a0a133:	b3 66 ff 
  a0a136:	62 82 4d 48 b8 c3    	vfmadd231ps zmm16,zmm6,zmm27
  a0a13c:	62 11 34 48 59 cb    	vmulps zmm9,zmm9,zmm27
  a0a142:	62 72 1d 48 bc ce    	vfnmadd231ps zmm9,zmm12,zmm6
  a0a148:	62 f1 64 40 58 f0    	vaddps zmm6,zmm19,zmm0
  a0a14e:	62 f1 64 40 5c c0    	vsubps zmm0,zmm19,zmm0
  a0a154:	62 f1 44 40 5c c9    	vsubps zmm1,zmm23,zmm1
  a0a15a:	62 71 3c 40 58 d5    	vaddps zmm10,zmm24,zmm5
  a0a160:	62 b1 04 48 58 d9    	vaddps zmm3,zmm15,zmm17
  a0a166:	62 f1 14 48 5c d2    	vsubps zmm2,zmm13,zmm2
  a0a16c:	62 91 5c 40 58 ea    	vaddps zmm5,zmm20,zmm26
  a0a172:	62 11 3c 48 59 c5    	vmulps zmm8,zmm8,zmm29
  a0a178:	62 f1 0c 48 58 e4    	vaddps zmm4,zmm14,zmm4
  a0a17e:	62 51 54 40 5c e8    	vsubps zmm13,zmm21,zmm8
  a0a184:	62 31 3c 48 58 c5    	vaddps zmm8,zmm8,zmm21
  a0a18a:	62 c1 2c 48 59 d4    	vmulps zmm18,zmm10,zmm12
  a0a190:	62 82 75 48 b8 d3    	vfmadd231ps zmm18,zmm1,zmm27
  a0a196:	62 11 2c 48 59 d3    	vmulps zmm10,zmm10,zmm27
  a0a19c:	62 72 1d 48 bc d1    	vfnmadd231ps zmm10,zmm12,zmm1
  a0a1a2:	62 72 7d 48 18 25 44 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff66b344]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a0a1a9:	b3 66 ff 
  a0a1ac:	62 d1 5c 48 59 cc    	vmulps zmm1,zmm4,zmm12
  a0a1b2:	62 72 7d 48 18 35 3c 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff66b43c]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a0a1b9:	b4 66 ff 
  a0a1bc:	62 d2 6d 48 bc ce    	vfnmadd231ps zmm1,zmm2,zmm14
  a0a1c2:	62 d1 5c 48 59 e6    	vmulps zmm4,zmm4,zmm14
  a0a1c8:	62 f2 1d 48 b8 e2    	vfmadd231ps zmm4,zmm12,zmm2
  a0a1ce:	62 b1 34 40 58 d0    	vaddps zmm2,zmm25,zmm16
  a0a1d4:	62 81 5c 40 5c da    	vsubps zmm19,zmm20,zmm26
  a0a1da:	62 71 4c 48 58 e2    	vaddps zmm12,zmm6,zmm2
  a0a1e0:	62 31 04 48 5c f9    	vsubps zmm15,zmm15,zmm17
  a0a1e6:	62 c1 44 48 58 e1    	vaddps zmm20,zmm7,zmm9
  a0a1ec:	62 f2 0d 40 ac d6    	vfnmadd213ps zmm2,zmm30,zmm6
  a0a1f2:	62 a1 14 48 58 cc    	vaddps zmm17,zmm13,zmm20
  a0a1f8:	62 d1 44 48 5c f1    	vsubps zmm6,zmm7,zmm9
  a0a1fe:	62 f1 6c 40 58 f9    	vaddps zmm7,zmm18,zmm1
  a0a204:	62 c2 0d 40 ac e5    	vfnmadd213ps zmm20,zmm30,zmm13
  a0a20a:	62 71 7c 48 58 f7    	vaddps zmm14,zmm0,zmm7
  a0a210:	62 31 34 40 5c c8    	vsubps zmm9,zmm25,zmm16
  a0a216:	62 e1 2c 48 5c ec    	vsubps zmm21,zmm10,zmm4
  a0a21c:	62 f2 0d 40 ac f8    	vfnmadd213ps zmm7,zmm30,zmm0
  a0a222:	62 b1 3c 48 58 c5    	vaddps zmm0,zmm8,zmm21
  a0a228:	62 f1 2c 48 58 e4    	vaddps zmm4,zmm10,zmm4
  a0a22e:	62 11 7c 48 28 d6    	vmovaps zmm10,zmm30
  a0a234:	62 32 65 48 ac d6    	vfnmadd213ps zmm10,zmm3,zmm22
  a0a23a:	62 11 64 40 59 ed    	vmulps zmm13,zmm19,zmm29
  a0a240:	62 c2 0d 40 ac e8    	vfnmadd213ps zmm21,zmm30,zmm8
  a0a246:	62 51 2c 48 58 c5    	vaddps zmm8,zmm10,zmm13
  a0a24c:	62 f1 6c 40 5c c9    	vsubps zmm1,zmm18,zmm1
  a0a252:	62 81 7c 48 28 c6    	vmovaps zmm16,zmm30
  a0a258:	62 c2 55 48 ac c3    	vfnmadd213ps zmm16,zmm5,zmm11
  a0a25e:	62 11 04 48 59 fd    	vmulps zmm15,zmm15,zmm29
  a0a264:	62 51 2c 48 5c ed    	vsubps zmm13,zmm10,zmm13
  a0a26a:	62 51 7c 40 5c d7    	vsubps zmm10,zmm16,zmm15
  a0a270:	62 91 4c 48 59 f5    	vmulps zmm6,zmm6,zmm29
  a0a276:	62 c1 7c 40 58 d7    	vaddps zmm18,zmm16,zmm15
  a0a27c:	62 e1 6c 48 58 de    	vaddps zmm19,zmm2,zmm6
  a0a282:	62 11 34 48 59 cd    	vmulps zmm9,zmm9,zmm29
  a0a288:	62 71 6c 48 5c fe    	vsubps zmm15,zmm2,zmm6
  a0a28e:	62 d1 5c 40 5c d1    	vsubps zmm2,zmm20,zmm9
  a0a294:	62 91 5c 48 59 e5    	vmulps zmm4,zmm4,zmm29
  a0a29a:	62 d1 5c 40 58 f1    	vaddps zmm6,zmm20,zmm9
  a0a2a0:	62 71 44 48 58 cc    	vaddps zmm9,zmm7,zmm4
  a0a2a6:	62 91 74 48 59 cd    	vmulps zmm1,zmm1,zmm29
  a0a2ac:	62 e1 44 48 5c c4    	vsubps zmm16,zmm7,zmm4
  a0a2b2:	62 f1 54 40 5c e1    	vsubps zmm4,zmm21,zmm1
  a0a2b8:	62 f1 54 40 58 c9    	vaddps zmm1,zmm21,zmm1
  a0a2be:	62 f1 4c 40 58 db    	vaddps zmm3,zmm22,zmm3
  a0a2c4:	62 f1 24 48 58 ed    	vaddps zmm5,zmm11,zmm5
  a0a2ca:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a0a2d0:	c5 7c 28 1d 68 c9 66 	vmovaps ymm11,YMMWORD PTR [rip+0xffffffffff66c968]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a0a2d7:	ff 
  a0a2d8:	62 f2 25 48 7f fd    	vpermt2ps zmm7,zmm11,zmm5
  a0a2de:	62 e1 7c 48 28 25 98 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff684698]        # 8e980 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1be30>
  a0a2e5:	46 68 ff 
  a0a2e8:	62 f2 5d 40 7f dd    	vpermt2ps zmm3,zmm20,zmm5
  a0a2ee:	62 f1 7c 48 11 1c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm3
  a0a2f5:	c5 fc 11 7c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm7
  a0a2fb:	62 d1 7c 48 28 dc    	vmovaps zmm3,zmm12
  a0a301:	62 b2 25 48 7f d9    	vpermt2ps zmm3,zmm11,zmm17
  a0a307:	62 32 5d 40 7f e1    	vpermt2ps zmm12,zmm20,zmm17
  a0a30d:	62 71 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x60],zmm12
  a0a314:	60 00 00 00 
  a0a318:	c5 fc 11 9c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm3
  a0a31f:	00 00 
  a0a321:	62 d1 7c 48 28 de    	vmovaps zmm3,zmm14
  a0a327:	62 f2 25 48 7f d8    	vpermt2ps zmm3,zmm11,zmm0
  a0a32d:	62 72 5d 40 7f f0    	vpermt2ps zmm14,zmm20,zmm0
  a0a333:	62 71 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm14
  a0a33a:	03 
  a0a33b:	c5 fc 11 9c 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm3
  a0a342:	00 00 
  a0a344:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a0a34a:	62 d2 25 48 7f c2    	vpermt2ps zmm0,zmm11,zmm10
  a0a350:	62 52 5d 40 7f c2    	vpermt2ps zmm8,zmm20,zmm10
  a0a356:	62 71 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x120],zmm8
  a0a35d:	20 01 00 00 
  a0a361:	c5 fc 11 84 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm0
  a0a368:	00 00 
  a0a36a:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a0a370:	62 f2 25 48 7f c2    	vpermt2ps zmm0,zmm11,zmm2
  a0a376:	62 e2 5d 40 7f da    	vpermt2ps zmm19,zmm20,zmm2
  a0a37c:	62 e1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm19
  a0a383:	06 
  a0a384:	c5 fc 11 84 16 c0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm0
  a0a38b:	00 00 
  a0a38d:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a0a393:	62 f2 25 48 7f c4    	vpermt2ps zmm0,zmm11,zmm4
  a0a399:	62 72 5d 40 7f cc    	vpermt2ps zmm9,zmm20,zmm4
  a0a39f:	62 71 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm9
  a0a3a6:	e0 01 00 00 
  a0a3aa:	c5 fc 11 84 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm0
  a0a3b1:	00 00 
  a0a3b3:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a0a3b9:	62 b2 25 48 7f c2    	vpermt2ps zmm0,zmm11,zmm18
  a0a3bf:	62 32 5d 40 7f ea    	vpermt2ps zmm13,zmm20,zmm18
  a0a3c5:	62 71 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm13
  a0a3cc:	09 
  a0a3cd:	c5 fc 11 84 16 80 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x280],ymm0
  a0a3d4:	00 00 
  a0a3d6:	62 d1 7c 48 28 c7    	vmovaps zmm0,zmm15
  a0a3dc:	62 f2 25 48 7f c6    	vpermt2ps zmm0,zmm11,zmm6
  a0a3e2:	62 72 5d 40 7f fe    	vpermt2ps zmm15,zmm20,zmm6
  a0a3e8:	62 71 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2a0],zmm15
  a0a3ef:	a0 02 00 00 
  a0a3f3:	c5 fc 11 84 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm0
  a0a3fa:	00 00 
  a0a3fc:	62 b1 7c 48 28 c0    	vmovaps zmm0,zmm16
  a0a402:	62 f2 25 48 7f c1    	vpermt2ps zmm0,zmm11,zmm1
  a0a408:	62 e2 5d 40 7f c1    	vpermt2ps zmm16,zmm20,zmm1
  a0a40e:	62 e1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x300],zmm16
  a0a415:	0c 
  a0a416:	c5 fc 11 84 16 40 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x340],ymm0
  a0a41d:	00 00 
  a0a41f:	48 81 c2 60 03 00 00 	add    rdx,0x360
  a0a426:	48 39 d0             	cmp    rax,rdx
  a0a429:	0f 85 a1 f2 ff ff    	jne    a096d0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  a0a42f:	48 81 c4 c8 00 00 00 	add    rsp,0xc8
  a0a436:	c5 f8 77             	vzeroupper
  a0a439:	c3                   	ret
