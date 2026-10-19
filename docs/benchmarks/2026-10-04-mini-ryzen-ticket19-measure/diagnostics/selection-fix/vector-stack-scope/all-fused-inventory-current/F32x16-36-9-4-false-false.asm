
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a1b580 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a1b580:	55                   	push   rbp
  a1b581:	48 89 e5             	mov    rbp,rsp
  a1b584:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a1b588:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a1b58f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a1b594:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a1b599:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a1b59e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a1b5a3:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a1b5a7:	c5 7c 10 67 20       	vmovups ymm12,YMMWORD PTR [rdi+0x20]
  a1b5ac:	c5 7c 10 4f 40       	vmovups ymm9,YMMWORD PTR [rdi+0x40]
  a1b5b1:	c5 fc 10 67 60       	vmovups ymm4,YMMWORD PTR [rdi+0x60]
  a1b5b6:	62 e1 7c 48 28 15 40 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff674340]        # 8f900 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cdb0>
  a1b5bd:	43 67 ff 
  a1b5c0:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a1b5c4:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a1b5ca:	62 f2 6d 40 7f d0    	vpermt2ps zmm2,zmm18,zmm0
  a1b5d0:	62 f1 7c 48 28 1d 66 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff674366]        # 8f940 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cdf0>
  a1b5d7:	43 67 ff 
  a1b5da:	62 f2 65 48 7f c8    	vpermt2ps zmm1,zmm3,zmm0
  a1b5e0:	62 c1 7c 48 28 c4    	vmovaps zmm16,zmm12
  a1b5e6:	62 e2 6d 40 7f c0    	vpermt2ps zmm16,zmm18,zmm0
  a1b5ec:	62 72 65 48 7f e0    	vpermt2ps zmm12,zmm3,zmm0
  a1b5f2:	62 51 7c 48 28 f9    	vmovaps zmm15,zmm9
  a1b5f8:	62 72 6d 40 7f f8    	vpermt2ps zmm15,zmm18,zmm0
  a1b5fe:	62 72 65 48 7f c8    	vpermt2ps zmm9,zmm3,zmm0
  a1b604:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a1b60a:	62 f2 6d 40 7f f8    	vpermt2ps zmm7,zmm18,zmm0
  a1b610:	62 f2 65 48 7f e0    	vpermt2ps zmm4,zmm3,zmm0
  a1b616:	62 e1 7c 28 10 67 04 	vmovups ymm20,YMMWORD PTR [rdi+0x80]
  a1b61d:	62 a1 7c 48 28 ec    	vmovaps zmm21,zmm20
  a1b623:	62 e2 6d 40 7f e8    	vpermt2ps zmm21,zmm18,zmm0
  a1b629:	62 e2 65 48 7f e0    	vpermt2ps zmm20,zmm3,zmm0
  a1b62f:	62 e1 7c 28 10 4f 05 	vmovups ymm17,YMMWORD PTR [rdi+0xa0]
  a1b636:	62 a1 7c 48 28 d9    	vmovaps zmm19,zmm17
  a1b63c:	62 e2 6d 40 7f d8    	vpermt2ps zmm19,zmm18,zmm0
  a1b642:	62 e2 65 48 7f c8    	vpermt2ps zmm17,zmm3,zmm0
  a1b648:	c5 7c 10 b7 c0 00 00 	vmovups ymm14,YMMWORD PTR [rdi+0xc0]
  a1b64f:	00 
  a1b650:	62 51 7c 48 28 ee    	vmovaps zmm13,zmm14
  a1b656:	62 72 6d 40 7f e8    	vpermt2ps zmm13,zmm18,zmm0
  a1b65c:	62 72 65 48 7f f0    	vpermt2ps zmm14,zmm3,zmm0
  a1b662:	62 e1 7c 28 10 77 07 	vmovups ymm22,YMMWORD PTR [rdi+0xe0]
  a1b669:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  a1b66f:	62 e2 6d 40 7f f8    	vpermt2ps zmm23,zmm18,zmm0
  a1b675:	62 e2 65 48 7f f0    	vpermt2ps zmm22,zmm3,zmm0
  a1b67b:	62 61 7c 28 10 47 08 	vmovups ymm24,YMMWORD PTR [rdi+0x100]
  a1b682:	62 e2 3d 40 77 d0    	vpermi2ps zmm18,zmm24,zmm0
  a1b688:	62 62 65 48 7f c0    	vpermt2ps zmm24,zmm3,zmm0
  a1b68e:	62 31 54 40 58 df    	vaddps zmm11,zmm21,zmm23
  a1b694:	62 d1 7c 40 58 eb    	vaddps zmm5,zmm16,zmm11
  a1b69a:	62 21 64 40 58 ca    	vaddps zmm25,zmm19,zmm18
  a1b6a0:	62 91 04 48 58 f1    	vaddps zmm6,zmm15,zmm25
  a1b6a6:	62 21 5c 40 58 d6    	vaddps zmm26,zmm20,zmm22
  a1b6ac:	62 11 1c 48 58 c2    	vaddps zmm8,zmm12,zmm26
  a1b6b2:	62 01 74 40 58 d8    	vaddps zmm27,zmm17,zmm24
  a1b6b8:	62 11 34 48 58 d3    	vaddps zmm10,zmm9,zmm27
  a1b6be:	62 f2 7d 48 18 1d 98 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff659d98]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a1b6c5:	9d 65 ff 
  a1b6c8:	62 c2 65 48 bc c3    	vfnmadd231ps zmm16,zmm3,zmm11
  a1b6ce:	62 72 7d 48 18 1d fc 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff659bfc]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a1b6d5:	9b 65 ff 
  a1b6d8:	62 a1 5c 40 5c e6    	vsubps zmm20,zmm20,zmm22
  a1b6de:	62 c1 5c 40 59 f3    	vmulps zmm22,zmm20,zmm11
  a1b6e4:	62 a1 7c 40 58 e6    	vaddps zmm20,zmm16,zmm22
  a1b6ea:	62 12 65 48 bc e2    	vfnmadd231ps zmm12,zmm3,zmm26
  a1b6f0:	62 a1 54 40 5c ef    	vsubps zmm21,zmm21,zmm23
  a1b6f6:	62 c1 54 40 59 eb    	vmulps zmm21,zmm21,zmm11
  a1b6fc:	62 a1 1c 48 5c fd    	vsubps zmm23,zmm12,zmm21
  a1b702:	62 62 7d 48 18 15 5c 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff659f5c]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a1b709:	9f 65 ff 
  a1b70c:	62 12 65 48 bc f9    	vfnmadd231ps zmm15,zmm3,zmm25
  a1b712:	62 62 7d 48 18 0d bc 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff659dbc]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a1b719:	9d 65 ff 
  a1b71c:	62 01 74 40 5c c0    	vsubps zmm24,zmm17,zmm24
  a1b722:	62 81 44 40 59 ca    	vmulps zmm17,zmm23,zmm26
  a1b728:	62 82 5d 40 b8 c9    	vfmadd231ps zmm17,zmm20,zmm25
  a1b72e:	62 41 3c 40 59 c3    	vmulps zmm24,zmm24,zmm11
  a1b734:	62 12 65 48 bc cb    	vfnmadd231ps zmm9,zmm3,zmm27
  a1b73a:	62 01 04 48 58 d8    	vaddps zmm27,zmm15,zmm24
  a1b740:	62 a1 64 40 5c d2    	vsubps zmm18,zmm19,zmm18
  a1b746:	62 41 6c 40 59 e3    	vmulps zmm28,zmm18,zmm11
  a1b74c:	62 01 34 48 5c ec    	vsubps zmm29,zmm9,zmm28
  a1b752:	62 81 44 40 59 d1    	vmulps zmm18,zmm23,zmm25
  a1b758:	62 e2 7d 48 18 3d b6 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff659bb6]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a1b75f:	9b 65 ff 
  a1b762:	62 82 5d 40 bc d2    	vfnmadd231ps zmm18,zmm20,zmm26
  a1b768:	62 a1 14 40 59 df    	vmulps zmm19,zmm29,zmm23
  a1b76e:	62 62 7d 48 18 0d 64 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff659d64]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a1b775:	9d 65 ff 
  a1b778:	62 82 25 40 b8 d9    	vfmadd231ps zmm19,zmm27,zmm25
  a1b77e:	62 81 14 40 59 e1    	vmulps zmm20,zmm29,zmm25
  a1b784:	62 82 45 40 bc e3    	vfnmadd231ps zmm20,zmm23,zmm27
  a1b78a:	62 a1 7c 40 5c f6    	vsubps zmm22,zmm16,zmm22
  a1b790:	62 41 44 48 58 d5    	vaddps zmm26,zmm7,zmm13
  a1b796:	62 51 54 40 58 e4    	vaddps zmm12,zmm21,zmm12
  a1b79c:	62 01 6c 48 58 da    	vaddps zmm27,zmm2,zmm26
  a1b7a2:	62 01 04 48 5c c0    	vsubps zmm24,zmm15,zmm24
  a1b7a8:	62 71 54 48 58 fe    	vaddps zmm15,zmm5,zmm6
  a1b7ae:	62 51 1c 40 58 c9    	vaddps zmm9,zmm28,zmm9
  a1b7b4:	62 a1 1c 48 59 c7    	vmulps zmm16,zmm12,zmm23
  a1b7ba:	62 82 4d 40 b8 c1    	vfmadd231ps zmm16,zmm22,zmm25
  a1b7c0:	62 81 1c 48 59 e9    	vmulps zmm21,zmm12,zmm25
  a1b7c6:	62 72 7d 48 18 25 20 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff659d20]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a1b7cd:	9d 65 ff 
  a1b7d0:	62 a2 4d 40 bc ef    	vfnmadd231ps zmm21,zmm22,zmm23
  a1b7d6:	62 c1 34 48 59 f4    	vmulps zmm22,zmm9,zmm12
  a1b7dc:	62 e2 7d 48 18 3d 12 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff659e12]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a1b7e3:	9e 65 ff 
  a1b7e6:	62 a2 3d 40 bc f7    	vfnmadd231ps zmm22,zmm24,zmm23
  a1b7ec:	62 a1 34 48 59 ff    	vmulps zmm23,zmm9,zmm23
  a1b7f2:	62 51 24 40 58 cf    	vaddps zmm9,zmm27,zmm15
  a1b7f8:	62 c2 3d 40 b8 fc    	vfmadd231ps zmm23,zmm24,zmm12
  a1b7fe:	62 51 5c 48 58 e6    	vaddps zmm12,zmm4,zmm14
  a1b804:	62 41 74 48 58 c4    	vaddps zmm24,zmm1,zmm12
  a1b80a:	62 92 65 48 bc d2    	vfnmadd231ps zmm2,zmm3,zmm26
  a1b810:	62 41 3c 48 58 ca    	vaddps zmm25,zmm8,zmm10
  a1b816:	62 51 5c 48 5c f6    	vsubps zmm14,zmm4,zmm14
  a1b81c:	62 91 3c 40 58 e1    	vaddps zmm4,zmm24,zmm25
  a1b822:	62 51 0c 48 59 f3    	vmulps zmm14,zmm14,zmm11
  a1b828:	62 d2 65 48 bc cc    	vfnmadd231ps zmm1,zmm3,zmm12
  a1b82e:	62 51 6c 48 58 e6    	vaddps zmm12,zmm2,zmm14
  a1b834:	62 d1 44 48 5c fd    	vsubps zmm7,zmm7,zmm13
  a1b83a:	62 21 74 40 58 d3    	vaddps zmm26,zmm17,zmm19
  a1b840:	62 d1 44 48 59 fb    	vmulps zmm7,zmm7,zmm11
  a1b846:	62 51 6c 48 5c ee    	vsubps zmm13,zmm2,zmm14
  a1b84c:	62 71 74 48 5c f7    	vsubps zmm14,zmm1,zmm7
  a1b852:	62 f1 44 48 58 f9    	vaddps zmm7,zmm7,zmm1
  a1b858:	62 91 1c 48 58 d2    	vaddps zmm2,zmm12,zmm26
  a1b85e:	62 12 65 48 ac fb    	vfnmadd213ps zmm15,zmm3,zmm27
  a1b864:	62 21 6c 40 58 dc    	vaddps zmm27,zmm18,zmm20
  a1b86a:	62 02 65 48 ac c8    	vfnmadd213ps zmm25,zmm3,zmm24
  a1b870:	62 91 0c 48 58 cb    	vaddps zmm1,zmm14,zmm27
  a1b876:	62 42 65 48 ac d4    	vfnmadd213ps zmm26,zmm3,zmm12
  a1b87c:	62 21 7c 40 58 c6    	vaddps zmm24,zmm16,zmm22
  a1b882:	62 42 65 48 ac de    	vfnmadd213ps zmm27,zmm3,zmm14
  a1b888:	62 11 14 48 58 e0    	vaddps zmm12,zmm13,zmm24
  a1b88e:	62 42 65 48 ac c5    	vfnmadd213ps zmm24,zmm3,zmm13
  a1b894:	62 31 54 40 5c ef    	vsubps zmm13,zmm21,zmm23
  a1b89a:	62 f2 15 48 ac df    	vfnmadd213ps zmm3,zmm13,zmm7
  a1b8a0:	62 d1 44 48 58 fd    	vaddps zmm7,zmm7,zmm13
  a1b8a6:	62 51 3c 48 5c c2    	vsubps zmm8,zmm8,zmm10
  a1b8ac:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a1b8b2:	62 b1 6c 40 5c f4    	vsubps zmm6,zmm18,zmm20
  a1b8b8:	62 31 74 40 5c d3    	vsubps zmm10,zmm17,zmm19
  a1b8be:	62 31 54 40 58 ef    	vaddps zmm13,zmm21,zmm23
  a1b8c4:	62 31 7c 40 5c f6    	vsubps zmm14,zmm16,zmm22
  a1b8ca:	62 51 3c 48 59 c3    	vmulps zmm8,zmm8,zmm11
  a1b8d0:	62 c1 54 48 59 c3    	vmulps zmm16,zmm5,zmm11
  a1b8d6:	62 c1 4c 48 59 cb    	vmulps zmm17,zmm6,zmm11
  a1b8dc:	62 c1 2c 48 59 d3    	vmulps zmm18,zmm10,zmm11
  a1b8e2:	62 c1 14 48 59 db    	vmulps zmm19,zmm13,zmm11
  a1b8e8:	62 c1 0c 48 59 e3    	vmulps zmm20,zmm14,zmm11
  a1b8ee:	62 51 04 48 58 d0    	vaddps zmm10,zmm15,zmm8
  a1b8f4:	62 51 04 48 5c e8    	vsubps zmm13,zmm15,zmm8
  a1b8fa:	62 b1 34 40 5c e8    	vsubps zmm5,zmm25,zmm16
  a1b900:	62 91 7c 40 58 f1    	vaddps zmm6,zmm16,zmm25
  a1b906:	62 a1 2c 40 58 c1    	vaddps zmm16,zmm26,zmm17
  a1b90c:	62 31 2c 40 5c f9    	vsubps zmm15,zmm26,zmm17
  a1b912:	62 31 24 40 5c da    	vsubps zmm11,zmm27,zmm18
  a1b918:	62 31 24 40 58 c2    	vaddps zmm8,zmm27,zmm18
  a1b91e:	62 a1 3c 40 58 cb    	vaddps zmm17,zmm24,zmm19
  a1b924:	62 a1 3c 40 5c d3    	vsubps zmm18,zmm24,zmm19
  a1b92a:	62 31 64 48 5c f4    	vsubps zmm14,zmm3,zmm20
  a1b930:	62 b1 64 48 58 dc    	vaddps zmm3,zmm3,zmm20
  a1b936:	62 e1 7c 48 28 1d 40 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff6ab640]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a1b93d:	b6 6a ff 
  a1b940:	62 32 65 40 7f ca    	vpermt2ps zmm9,zmm19,zmm18
  a1b946:	62 f2 65 40 7f e3    	vpermt2ps zmm4,zmm19,zmm3
  a1b94c:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a1b952:	62 72 65 40 7f e0    	vpermt2ps zmm12,zmm19,zmm0
  a1b958:	62 72 65 40 7f d0    	vpermt2ps zmm10,zmm19,zmm0
  a1b95e:	62 e2 65 40 7f c0    	vpermt2ps zmm16,zmm19,zmm0
  a1b964:	62 e2 65 40 7f c8    	vpermt2ps zmm17,zmm19,zmm0
  a1b96a:	62 72 65 40 7f e8    	vpermt2ps zmm13,zmm19,zmm0
  a1b970:	62 72 65 40 7f f8    	vpermt2ps zmm15,zmm19,zmm0
  a1b976:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a1b97c:	62 f2 65 40 7f f8    	vpermt2ps zmm7,zmm19,zmm0
  a1b982:	62 f2 65 40 7f e8    	vpermt2ps zmm5,zmm19,zmm0
  a1b988:	62 72 65 40 7f d8    	vpermt2ps zmm11,zmm19,zmm0
  a1b98e:	62 72 65 40 7f f0    	vpermt2ps zmm14,zmm19,zmm0
  a1b994:	62 f2 65 40 7f f0    	vpermt2ps zmm6,zmm19,zmm0
  a1b99a:	62 72 65 40 7f c0    	vpermt2ps zmm8,zmm19,zmm0
  a1b9a0:	62 f1 7c 48 28 1d 56 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6ab556]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1b9a7:	b5 6a ff 
  a1b9aa:	62 32 65 48 7f c8    	vpermt2ps zmm9,zmm3,zmm16
  a1b9b0:	62 b2 65 48 7f d1    	vpermt2ps zmm2,zmm3,zmm17
  a1b9b6:	62 52 65 48 7f e5    	vpermt2ps zmm12,zmm3,zmm13
  a1b9bc:	62 52 65 48 7f d7    	vpermt2ps zmm10,zmm3,zmm15
  a1b9c2:	62 51 b5 48 14 ec    	vunpcklpd zmm13,zmm9,zmm12
  a1b9c8:	62 d1 b5 48 15 c4    	vunpckhpd zmm0,zmm9,zmm12
  a1b9ce:	62 51 ed 48 14 ca    	vunpcklpd zmm9,zmm2,zmm10
  a1b9d4:	62 d1 ed 48 15 d2    	vunpckhpd zmm2,zmm2,zmm10
  a1b9da:	62 d2 65 48 7f e3    	vpermt2ps zmm4,zmm3,zmm11
  a1b9e0:	62 d2 65 48 7f ce    	vpermt2ps zmm1,zmm3,zmm14
  a1b9e6:	62 f2 65 48 7f fe    	vpermt2ps zmm7,zmm3,zmm6
  a1b9ec:	62 f1 7c 48 28 35 0a 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6ab40a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1b9f3:	b4 6a ff 
  a1b9f6:	62 d2 65 48 7f e8    	vpermt2ps zmm5,zmm3,zmm8
  a1b9fc:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a1ba02:	62 d2 4d 48 7f d9    	vpermt2ps zmm3,zmm6,zmm9
  a1ba08:	62 71 7c 48 28 05 2e 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6ab42e]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1ba0f:	b4 6a ff 
  a1ba12:	62 52 3d 48 7f e9    	vpermt2ps zmm13,zmm8,zmm9
  a1ba18:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a1ba1e:	62 72 4d 48 7f ca    	vpermt2ps zmm9,zmm6,zmm2
  a1ba24:	62 f2 3d 48 7f c2    	vpermt2ps zmm0,zmm8,zmm2
  a1ba2a:	62 f1 dd 48 14 d7    	vunpcklpd zmm2,zmm4,zmm7
  a1ba30:	62 f1 dd 48 15 e7    	vunpckhpd zmm4,zmm4,zmm7
  a1ba36:	62 f1 f5 48 14 fd    	vunpcklpd zmm7,zmm1,zmm5
  a1ba3c:	62 f1 f5 48 15 cd    	vunpckhpd zmm1,zmm1,zmm5
  a1ba42:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a1ba48:	62 f2 4d 48 7f ef    	vpermt2ps zmm5,zmm6,zmm7
  a1ba4e:	62 f2 3d 48 7f d7    	vpermt2ps zmm2,zmm8,zmm7
  a1ba54:	62 f2 5d 48 77 f1    	vpermi2ps zmm6,zmm4,zmm1
  a1ba5a:	62 f2 3d 48 7f e1    	vpermt2ps zmm4,zmm8,zmm1
  a1ba60:	62 f1 7c 48 10 4a 04 	vmovups zmm1,ZMMWORD PTR [rdx+0x100]
  a1ba67:	62 f1 7c 48 10 7a 05 	vmovups zmm7,ZMMWORD PTR [rdx+0x140]
  a1ba6e:	62 71 34 48 59 c1    	vmulps zmm8,zmm9,zmm1
  a1ba74:	62 72 4d 48 bc c7    	vfnmadd231ps zmm8,zmm6,zmm7
  a1ba7a:	62 f1 4c 48 59 c9    	vmulps zmm1,zmm6,zmm1
  a1ba80:	62 f1 7c 48 10 72 02 	vmovups zmm6,ZMMWORD PTR [rdx+0x80]
  a1ba87:	62 d2 45 48 b8 c9    	vfmadd231ps zmm1,zmm7,zmm9
  a1ba8d:	62 f1 7c 48 10 7a 03 	vmovups zmm7,ZMMWORD PTR [rdx+0xc0]
  a1ba94:	62 71 14 48 59 ce    	vmulps zmm9,zmm13,zmm6
  a1ba9a:	62 72 6d 48 bc cf    	vfnmadd231ps zmm9,zmm2,zmm7
  a1baa0:	62 f1 6c 48 59 d6    	vmulps zmm2,zmm2,zmm6
  a1baa6:	62 f1 7c 48 10 72 06 	vmovups zmm6,ZMMWORD PTR [rdx+0x180]
  a1baad:	62 d2 45 48 b8 d5    	vfmadd231ps zmm2,zmm7,zmm13
  a1bab3:	62 f1 7c 48 10 7a 07 	vmovups zmm7,ZMMWORD PTR [rdx+0x1c0]
  a1baba:	62 71 7c 48 59 d6    	vmulps zmm10,zmm0,zmm6
  a1bac0:	62 72 5d 48 bc d7    	vfnmadd231ps zmm10,zmm4,zmm7
  a1bac6:	62 f1 5c 48 59 e6    	vmulps zmm4,zmm4,zmm6
  a1bacc:	62 f2 45 48 b8 e0    	vfmadd231ps zmm4,zmm7,zmm0
  a1bad2:	62 d1 64 48 58 c0    	vaddps zmm0,zmm3,zmm8
  a1bad8:	62 d1 34 48 58 f2    	vaddps zmm6,zmm9,zmm10
  a1bade:	62 d1 64 48 5c d8    	vsubps zmm3,zmm3,zmm8
  a1bae4:	62 f1 6c 48 58 fc    	vaddps zmm7,zmm2,zmm4
  a1baea:	62 f1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm4
  a1baf0:	62 f1 74 48 58 e5    	vaddps zmm4,zmm1,zmm5
  a1baf6:	62 f1 54 48 5c c9    	vsubps zmm1,zmm5,zmm1
  a1bafc:	62 f1 64 48 58 ea    	vaddps zmm5,zmm3,zmm2
  a1bb02:	62 51 2c 48 5c c1    	vsubps zmm8,zmm10,zmm9
  a1bb08:	62 51 74 48 58 c8    	vaddps zmm9,zmm1,zmm8
  a1bb0e:	62 f1 64 48 5c d2    	vsubps zmm2,zmm3,zmm2
  a1bb14:	62 f1 7c 48 5c de    	vsubps zmm3,zmm0,zmm6
  a1bb1a:	62 d1 74 48 5c c8    	vsubps zmm1,zmm1,zmm8
  a1bb20:	62 71 5c 48 5c c7    	vsubps zmm8,zmm4,zmm7
  a1bb26:	62 f1 7c 48 58 c6    	vaddps zmm0,zmm0,zmm6
  a1bb2c:	62 f1 5c 48 58 e7    	vaddps zmm4,zmm4,zmm7
  a1bb32:	62 f1 7c 48 28 35 44 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff673e44]        # 8f980 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ce30>
  a1bb39:	3e 67 ff 
  a1bb3c:	62 f3 7d 48 19 c7 02 	vextractf32x4 xmm7,zmm0,0x2
  a1bb43:	62 f2 4d 48 7f c4    	vpermt2ps zmm0,zmm6,zmm4
  a1bb49:	62 f1 7c 48 11 06    	vmovups ZMMWORD PTR [rsi],zmm0
  a1bb4f:	62 f3 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm4,0x2
  a1bb56:	c5 c0 14 c0          	vunpcklps xmm0,xmm7,xmm0
  a1bb5a:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  a1bb5f:	62 f3 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm5,0x2
  a1bb66:	62 d2 4d 48 7f e9    	vpermt2ps zmm5,zmm6,zmm9
  a1bb6c:	62 f1 7c 48 11 ae 48 	vmovups ZMMWORD PTR [rsi+0x48],zmm5
  a1bb73:	00 00 00 
  a1bb76:	62 73 7d 48 19 cc 02 	vextractf32x4 xmm4,zmm9,0x2
  a1bb7d:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  a1bb81:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  a1bb88:	00 
  a1bb89:	62 f3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm3,0x2
  a1bb90:	62 d2 4d 48 7f d8    	vpermt2ps zmm3,zmm6,zmm8
  a1bb96:	62 f1 7c 48 11 9e 90 	vmovups ZMMWORD PTR [rsi+0x90],zmm3
  a1bb9d:	00 00 00 
  a1bba0:	62 73 7d 48 19 c3 02 	vextractf32x4 xmm3,zmm8,0x2
  a1bba7:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  a1bbab:	c5 f8 13 86 d0 00 00 	vmovlps QWORD PTR [rsi+0xd0],xmm0
  a1bbb2:	00 
  a1bbb3:	62 f2 6d 48 77 f1    	vpermi2ps zmm6,zmm2,zmm1
  a1bbb9:	62 f1 7c 48 11 b6 d8 	vmovups ZMMWORD PTR [rsi+0xd8],zmm6
  a1bbc0:	00 00 00 
  a1bbc3:	62 f3 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm1,0x2
  a1bbca:	62 f3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm2,0x2
  a1bbd1:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a1bbd5:	c5 f8 13 86 18 01 00 	vmovlps QWORD PTR [rsi+0x118],xmm0
  a1bbdc:	00 
  a1bbdd:	48 89 ec             	mov    rsp,rbp
  a1bbe0:	5d                   	pop    rbp
  a1bbe1:	c5 f8 77             	vzeroupper
  a1bbe4:	c3                   	ret
