
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a48600 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a48600:	55                   	push   rbp
  a48601:	48 89 e5             	mov    rbp,rsp
  a48604:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a48608:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a4860f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a48614:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a48619:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a4861e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a48623:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a48627:	c5 7c 10 6f 20       	vmovups ymm13,YMMWORD PTR [rdi+0x20]
  a4862c:	c5 7c 10 4f 40       	vmovups ymm9,YMMWORD PTR [rdi+0x40]
  a48631:	c5 fc 10 5f 60       	vmovups ymm3,YMMWORD PTR [rdi+0x60]
  a48636:	62 e1 7c 48 28 0d 80 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff649e80]        # 924c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f970>
  a4863d:	9e 64 ff 
  a48640:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a48644:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a4864a:	62 f2 75 40 7f d0    	vpermt2ps zmm2,zmm17,zmm0
  a48650:	62 f1 7c 48 28 25 a6 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff649ea6]        # 92500 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f9b0>
  a48657:	9e 64 ff 
  a4865a:	62 f2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm0
  a48660:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a48666:	62 e2 75 40 7f c0    	vpermt2ps zmm16,zmm17,zmm0
  a4866c:	62 72 5d 48 7f e8    	vpermt2ps zmm13,zmm4,zmm0
  a48672:	62 51 7c 48 28 f9    	vmovaps zmm15,zmm9
  a48678:	62 72 75 40 7f f8    	vpermt2ps zmm15,zmm17,zmm0
  a4867e:	62 72 5d 48 7f c8    	vpermt2ps zmm9,zmm4,zmm0
  a48684:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a4868a:	62 f2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm0
  a48690:	62 f2 5d 48 7f d8    	vpermt2ps zmm3,zmm4,zmm0
  a48696:	62 e1 7c 28 10 5f 04 	vmovups ymm19,YMMWORD PTR [rdi+0x80]
  a4869d:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a486a3:	62 e2 75 40 7f e0    	vpermt2ps zmm20,zmm17,zmm0
  a486a9:	62 e2 5d 48 7f d8    	vpermt2ps zmm19,zmm4,zmm0
  a486af:	62 e1 7c 28 10 57 05 	vmovups ymm18,YMMWORD PTR [rdi+0xa0]
  a486b6:	62 a1 7c 48 28 ea    	vmovaps zmm21,zmm18
  a486bc:	62 e2 75 40 7f e8    	vpermt2ps zmm21,zmm17,zmm0
  a486c2:	62 e2 5d 48 7f d0    	vpermt2ps zmm18,zmm4,zmm0
  a486c8:	c5 7c 10 a7 c0 00 00 	vmovups ymm12,YMMWORD PTR [rdi+0xc0]
  a486cf:	00 
  a486d0:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a486d6:	62 72 75 40 7f f0    	vpermt2ps zmm14,zmm17,zmm0
  a486dc:	62 72 5d 48 7f e0    	vpermt2ps zmm12,zmm4,zmm0
  a486e2:	62 e1 7c 28 10 77 07 	vmovups ymm22,YMMWORD PTR [rdi+0xe0]
  a486e9:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  a486ef:	62 e2 75 40 7f f8    	vpermt2ps zmm23,zmm17,zmm0
  a486f5:	62 e2 5d 48 7f f0    	vpermt2ps zmm22,zmm4,zmm0
  a486fb:	62 61 7c 28 10 47 08 	vmovups ymm24,YMMWORD PTR [rdi+0x100]
  a48702:	62 e2 3d 40 77 c8    	vpermi2ps zmm17,zmm24,zmm0
  a48708:	62 62 5d 48 7f c0    	vpermt2ps zmm24,zmm4,zmm0
  a4870e:	62 31 64 40 58 de    	vaddps zmm11,zmm19,zmm22
  a48714:	62 d1 14 48 58 f3    	vaddps zmm6,zmm13,zmm11
  a4871a:	62 01 6c 40 58 c8    	vaddps zmm25,zmm18,zmm24
  a48720:	62 91 34 48 58 f9    	vaddps zmm7,zmm9,zmm25
  a48726:	62 21 5c 40 58 d7    	vaddps zmm26,zmm20,zmm23
  a4872c:	62 11 7c 40 58 c2    	vaddps zmm8,zmm16,zmm26
  a48732:	62 21 54 40 58 d9    	vaddps zmm27,zmm21,zmm17
  a48738:	62 11 04 48 58 d3    	vaddps zmm10,zmm15,zmm27
  a4873e:	62 f2 7d 48 18 25 18 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff62cd18]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a48745:	cd 62 ff 
  a48748:	62 52 5d 48 bc eb    	vfnmadd231ps zmm13,zmm4,zmm11
  a4874e:	62 72 7d 48 18 1d 7c 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff62cb7c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a48755:	cb 62 ff 
  a48758:	62 a1 5c 40 5c e7    	vsubps zmm20,zmm20,zmm23
  a4875e:	62 c1 5c 40 59 fb    	vmulps zmm23,zmm20,zmm11
  a48764:	62 a1 14 48 58 e7    	vaddps zmm20,zmm13,zmm23
  a4876a:	62 82 5d 48 bc c2    	vfnmadd231ps zmm16,zmm4,zmm26
  a48770:	62 a1 64 40 5c de    	vsubps zmm19,zmm19,zmm22
  a48776:	62 c1 64 40 59 f3    	vmulps zmm22,zmm19,zmm11
  a4877c:	62 a1 7c 40 5c de    	vsubps zmm19,zmm16,zmm22
  a48782:	62 62 7d 48 18 15 dc 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff62cedc]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a48789:	ce 62 ff 
  a4878c:	62 12 5d 48 bc c9    	vfnmadd231ps zmm9,zmm4,zmm25
  a48792:	62 62 7d 48 18 0d 3c 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff62cd3c]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a48799:	cd 62 ff 
  a4879c:	62 a1 54 40 5c e9    	vsubps zmm21,zmm21,zmm17
  a487a2:	62 81 64 40 59 ca    	vmulps zmm17,zmm19,zmm26
  a487a8:	62 82 5d 40 b8 c9    	vfmadd231ps zmm17,zmm20,zmm25
  a487ae:	62 c1 54 40 59 eb    	vmulps zmm21,zmm21,zmm11
  a487b4:	62 12 5d 48 bc fb    	vfnmadd231ps zmm15,zmm4,zmm27
  a487ba:	62 21 34 48 58 dd    	vaddps zmm27,zmm9,zmm21
  a487c0:	62 81 6c 40 5c d0    	vsubps zmm18,zmm18,zmm24
  a487c6:	62 41 6c 40 59 c3    	vmulps zmm24,zmm18,zmm11
  a487cc:	62 01 04 48 5c e0    	vsubps zmm28,zmm15,zmm24
  a487d2:	62 81 64 40 59 d1    	vmulps zmm18,zmm19,zmm25
  a487d8:	62 62 7d 48 18 0d 36 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff62cb36]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a487df:	cb 62 ff 
  a487e2:	62 82 5d 40 bc d2    	vfnmadd231ps zmm18,zmm20,zmm26
  a487e8:	62 81 1c 40 59 d9    	vmulps zmm19,zmm28,zmm25
  a487ee:	62 62 7d 48 18 15 e4 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff62cce4]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a487f5:	cc 62 ff 
  a487f8:	62 82 25 40 b8 da    	vfmadd231ps zmm19,zmm27,zmm26
  a487fe:	62 81 1c 40 59 e2    	vmulps zmm20,zmm28,zmm26
  a48804:	62 82 35 40 bc e3    	vfnmadd231ps zmm20,zmm25,zmm27
  a4880a:	62 a1 14 48 5c ff    	vsubps zmm23,zmm13,zmm23
  a48810:	62 41 64 48 58 dc    	vaddps zmm27,zmm3,zmm12
  a48816:	62 a1 4c 40 58 c0    	vaddps zmm16,zmm22,zmm16
  a4881c:	62 81 74 48 58 f3    	vaddps zmm22,zmm1,zmm27
  a48822:	62 a1 34 48 5c ed    	vsubps zmm21,zmm9,zmm21
  a48828:	62 71 4c 48 58 ef    	vaddps zmm13,zmm6,zmm7
  a4882e:	62 51 3c 40 58 cf    	vaddps zmm9,zmm24,zmm15
  a48834:	62 11 7c 40 59 f9    	vmulps zmm15,zmm16,zmm25
  a4883a:	62 12 45 40 b8 fa    	vfmadd231ps zmm15,zmm23,zmm26
  a48840:	62 81 7c 40 59 c2    	vmulps zmm16,zmm16,zmm26
  a48846:	62 62 7d 48 18 05 a0 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff62cca0]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a4884d:	cc 62 ff 
  a48850:	62 82 45 40 bc c1    	vfnmadd231ps zmm16,zmm23,zmm25
  a48856:	62 81 34 48 59 f8    	vmulps zmm23,zmm9,zmm24
  a4885c:	62 62 7d 48 18 0d 92 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff62cd92]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a48863:	cd 62 ff 
  a48866:	62 82 55 40 bc f9    	vfnmadd231ps zmm23,zmm21,zmm25
  a4886c:	62 01 34 48 59 c9    	vmulps zmm25,zmm9,zmm25
  a48872:	62 51 4c 40 58 cd    	vaddps zmm9,zmm22,zmm13
  a48878:	62 02 55 40 b8 c8    	vfmadd231ps zmm25,zmm21,zmm24
  a4887e:	62 c1 54 48 58 ee    	vaddps zmm21,zmm5,zmm14
  a48884:	62 21 6c 48 58 c5    	vaddps zmm24,zmm2,zmm21
  a4888a:	62 92 5d 48 bc cb    	vfnmadd231ps zmm1,zmm4,zmm27
  a48890:	62 41 3c 48 58 d2    	vaddps zmm26,zmm8,zmm10
  a48896:	62 51 54 48 5c f6    	vsubps zmm14,zmm5,zmm14
  a4889c:	62 91 3c 40 58 ea    	vaddps zmm5,zmm24,zmm26
  a488a2:	62 51 0c 48 59 f3    	vmulps zmm14,zmm14,zmm11
  a488a8:	62 b2 5d 48 bc d5    	vfnmadd231ps zmm2,zmm4,zmm21
  a488ae:	62 c1 74 48 58 ee    	vaddps zmm21,zmm1,zmm14
  a488b4:	62 d1 64 48 5c dc    	vsubps zmm3,zmm3,zmm12
  a488ba:	62 21 74 40 58 db    	vaddps zmm27,zmm17,zmm19
  a488c0:	62 d1 64 48 59 db    	vmulps zmm3,zmm3,zmm11
  a488c6:	62 51 74 48 5c f6    	vsubps zmm14,zmm1,zmm14
  a488cc:	62 71 6c 48 5c e3    	vsubps zmm12,zmm2,zmm3
  a488d2:	62 f1 64 48 58 da    	vaddps zmm3,zmm3,zmm2
  a488d8:	62 91 54 40 58 d3    	vaddps zmm2,zmm21,zmm27
  a488de:	62 32 5d 48 ac ee    	vfnmadd213ps zmm13,zmm4,zmm22
  a488e4:	62 a1 6c 40 58 f4    	vaddps zmm22,zmm18,zmm20
  a488ea:	62 02 5d 48 ac d0    	vfnmadd213ps zmm26,zmm4,zmm24
  a488f0:	62 b1 1c 48 58 ce    	vaddps zmm1,zmm12,zmm22
  a488f6:	62 22 5d 48 ac dd    	vfnmadd213ps zmm27,zmm4,zmm21
  a488fc:	62 a1 04 48 58 ef    	vaddps zmm21,zmm15,zmm23
  a48902:	62 c2 5d 48 ac f4    	vfnmadd213ps zmm22,zmm4,zmm12
  a48908:	62 31 0c 48 58 e5    	vaddps zmm12,zmm14,zmm21
  a4890e:	62 c2 5d 48 ac ee    	vfnmadd213ps zmm21,zmm4,zmm14
  a48914:	62 11 7c 40 5c f1    	vsubps zmm14,zmm16,zmm25
  a4891a:	62 f2 0d 48 ac e3    	vfnmadd213ps zmm4,zmm14,zmm3
  a48920:	62 d1 64 48 58 de    	vaddps zmm3,zmm3,zmm14
  a48926:	62 51 3c 48 5c c2    	vsubps zmm8,zmm8,zmm10
  a4892c:	62 f1 4c 48 5c f7    	vsubps zmm6,zmm6,zmm7
  a48932:	62 b1 6c 40 5c fc    	vsubps zmm7,zmm18,zmm20
  a48938:	62 31 74 40 5c d3    	vsubps zmm10,zmm17,zmm19
  a4893e:	62 11 7c 40 58 f1    	vaddps zmm14,zmm16,zmm25
  a48944:	62 31 04 48 5c ff    	vsubps zmm15,zmm15,zmm23
  a4894a:	62 51 3c 48 59 c3    	vmulps zmm8,zmm8,zmm11
  a48950:	62 c1 4c 48 59 c3    	vmulps zmm16,zmm6,zmm11
  a48956:	62 c1 44 48 59 cb    	vmulps zmm17,zmm7,zmm11
  a4895c:	62 c1 2c 48 59 d3    	vmulps zmm18,zmm10,zmm11
  a48962:	62 51 0c 48 59 f3    	vmulps zmm14,zmm14,zmm11
  a48968:	62 c1 04 48 59 db    	vmulps zmm19,zmm15,zmm11
  a4896e:	62 51 14 48 58 d0    	vaddps zmm10,zmm13,zmm8
  a48974:	62 51 14 48 5c e8    	vsubps zmm13,zmm13,zmm8
  a4897a:	62 b1 2c 40 5c f0    	vsubps zmm6,zmm26,zmm16
  a48980:	62 91 7c 40 58 fa    	vaddps zmm7,zmm16,zmm26
  a48986:	62 a1 24 40 58 c1    	vaddps zmm16,zmm27,zmm17
  a4898c:	62 31 24 40 5c f9    	vsubps zmm15,zmm27,zmm17
  a48992:	62 31 4c 40 5c da    	vsubps zmm11,zmm22,zmm18
  a48998:	62 31 4c 40 58 c2    	vaddps zmm8,zmm22,zmm18
  a4899e:	62 c1 54 40 58 ce    	vaddps zmm17,zmm21,zmm14
  a489a4:	62 c1 54 40 5c d6    	vsubps zmm18,zmm21,zmm14
  a489aa:	62 31 5c 48 5c f3    	vsubps zmm14,zmm4,zmm19
  a489b0:	62 b1 5c 48 58 e3    	vaddps zmm4,zmm4,zmm19
  a489b6:	62 e1 7c 48 28 1d c0 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff67e5c0]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a489bd:	e5 67 ff 
  a489c0:	62 32 65 40 7f ca    	vpermt2ps zmm9,zmm19,zmm18
  a489c6:	62 f2 65 40 7f ec    	vpermt2ps zmm5,zmm19,zmm4
  a489cc:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a489d2:	62 72 65 40 7f e0    	vpermt2ps zmm12,zmm19,zmm0
  a489d8:	62 72 65 40 7f d0    	vpermt2ps zmm10,zmm19,zmm0
  a489de:	62 e2 65 40 7f c0    	vpermt2ps zmm16,zmm19,zmm0
  a489e4:	62 e2 65 40 7f c8    	vpermt2ps zmm17,zmm19,zmm0
  a489ea:	62 72 65 40 7f e8    	vpermt2ps zmm13,zmm19,zmm0
  a489f0:	62 72 65 40 7f f8    	vpermt2ps zmm15,zmm19,zmm0
  a489f6:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a489fc:	62 f2 65 40 7f d8    	vpermt2ps zmm3,zmm19,zmm0
  a48a02:	62 f2 65 40 7f f0    	vpermt2ps zmm6,zmm19,zmm0
  a48a08:	62 72 65 40 7f d8    	vpermt2ps zmm11,zmm19,zmm0
  a48a0e:	62 72 65 40 7f f0    	vpermt2ps zmm14,zmm19,zmm0
  a48a14:	62 f2 65 40 7f f8    	vpermt2ps zmm7,zmm19,zmm0
  a48a1a:	62 72 65 40 7f c0    	vpermt2ps zmm8,zmm19,zmm0
  a48a20:	62 f1 7c 48 28 25 d6 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff67e4d6]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a48a27:	e4 67 ff 
  a48a2a:	62 32 5d 48 7f c8    	vpermt2ps zmm9,zmm4,zmm16
  a48a30:	62 b2 5d 48 7f d1    	vpermt2ps zmm2,zmm4,zmm17
  a48a36:	62 52 5d 48 7f e5    	vpermt2ps zmm12,zmm4,zmm13
  a48a3c:	62 52 5d 48 7f d7    	vpermt2ps zmm10,zmm4,zmm15
  a48a42:	62 51 b5 48 14 ec    	vunpcklpd zmm13,zmm9,zmm12
  a48a48:	62 d1 b5 48 15 c4    	vunpckhpd zmm0,zmm9,zmm12
  a48a4e:	62 51 ed 48 14 ca    	vunpcklpd zmm9,zmm2,zmm10
  a48a54:	62 d1 ed 48 15 d2    	vunpckhpd zmm2,zmm2,zmm10
  a48a5a:	62 d2 5d 48 7f eb    	vpermt2ps zmm5,zmm4,zmm11
  a48a60:	62 d2 5d 48 7f ce    	vpermt2ps zmm1,zmm4,zmm14
  a48a66:	62 f2 5d 48 7f df    	vpermt2ps zmm3,zmm4,zmm7
  a48a6c:	62 f1 7c 48 28 3d 8a 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff67e38a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a48a73:	e3 67 ff 
  a48a76:	62 d2 5d 48 7f f0    	vpermt2ps zmm6,zmm4,zmm8
  a48a7c:	62 d1 7c 48 28 e5    	vmovaps zmm4,zmm13
  a48a82:	62 d2 45 48 7f e1    	vpermt2ps zmm4,zmm7,zmm9
  a48a88:	62 71 7c 48 28 05 ae 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff67e3ae]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a48a8f:	e3 67 ff 
  a48a92:	62 52 3d 48 7f e9    	vpermt2ps zmm13,zmm8,zmm9
  a48a98:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a48a9e:	62 72 45 48 7f ca    	vpermt2ps zmm9,zmm7,zmm2
  a48aa4:	62 f2 3d 48 7f c2    	vpermt2ps zmm0,zmm8,zmm2
  a48aaa:	62 f1 d5 48 14 d3    	vunpcklpd zmm2,zmm5,zmm3
  a48ab0:	62 f1 d5 48 15 db    	vunpckhpd zmm3,zmm5,zmm3
  a48ab6:	62 f1 f5 48 14 ee    	vunpcklpd zmm5,zmm1,zmm6
  a48abc:	62 f1 f5 48 15 ce    	vunpckhpd zmm1,zmm1,zmm6
  a48ac2:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a48ac8:	62 f2 45 48 7f f5    	vpermt2ps zmm6,zmm7,zmm5
  a48ace:	62 f2 3d 48 7f d5    	vpermt2ps zmm2,zmm8,zmm5
  a48ad4:	62 f2 65 48 77 f9    	vpermi2ps zmm7,zmm3,zmm1
  a48ada:	62 f2 3d 48 7f d9    	vpermt2ps zmm3,zmm8,zmm1
  a48ae0:	62 f1 7c 48 10 4a 04 	vmovups zmm1,ZMMWORD PTR [rdx+0x100]
  a48ae7:	62 f1 7c 48 10 6a 05 	vmovups zmm5,ZMMWORD PTR [rdx+0x140]
  a48aee:	62 71 34 48 59 c1    	vmulps zmm8,zmm9,zmm1
  a48af4:	62 72 45 48 bc c5    	vfnmadd231ps zmm8,zmm7,zmm5
  a48afa:	62 f1 44 48 59 c9    	vmulps zmm1,zmm7,zmm1
  a48b00:	62 f1 7c 48 10 7a 02 	vmovups zmm7,ZMMWORD PTR [rdx+0x80]
  a48b07:	62 d2 55 48 b8 c9    	vfmadd231ps zmm1,zmm5,zmm9
  a48b0d:	62 f1 7c 48 10 6a 03 	vmovups zmm5,ZMMWORD PTR [rdx+0xc0]
  a48b14:	62 71 14 48 59 cf    	vmulps zmm9,zmm13,zmm7
  a48b1a:	62 72 6d 48 bc cd    	vfnmadd231ps zmm9,zmm2,zmm5
  a48b20:	62 f1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm7
  a48b26:	62 f1 7c 48 10 7a 06 	vmovups zmm7,ZMMWORD PTR [rdx+0x180]
  a48b2d:	62 d2 55 48 b8 d5    	vfmadd231ps zmm2,zmm5,zmm13
  a48b33:	62 f1 7c 48 10 6a 07 	vmovups zmm5,ZMMWORD PTR [rdx+0x1c0]
  a48b3a:	62 71 7c 48 59 d7    	vmulps zmm10,zmm0,zmm7
  a48b40:	62 72 65 48 bc d5    	vfnmadd231ps zmm10,zmm3,zmm5
  a48b46:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a48b4c:	62 f2 55 48 b8 d8    	vfmadd231ps zmm3,zmm5,zmm0
  a48b52:	62 d1 5c 48 58 c0    	vaddps zmm0,zmm4,zmm8
  a48b58:	62 d1 34 48 58 ea    	vaddps zmm5,zmm9,zmm10
  a48b5e:	62 d1 5c 48 5c e0    	vsubps zmm4,zmm4,zmm8
  a48b64:	62 f1 6c 48 58 fb    	vaddps zmm7,zmm2,zmm3
  a48b6a:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a48b70:	62 f1 74 48 58 de    	vaddps zmm3,zmm1,zmm6
  a48b76:	62 f1 4c 48 5c c9    	vsubps zmm1,zmm6,zmm1
  a48b7c:	62 f1 5c 48 58 f2    	vaddps zmm6,zmm4,zmm2
  a48b82:	62 51 2c 48 5c c1    	vsubps zmm8,zmm10,zmm9
  a48b88:	62 51 74 48 58 c8    	vaddps zmm9,zmm1,zmm8
  a48b8e:	62 f1 5c 48 5c d2    	vsubps zmm2,zmm4,zmm2
  a48b94:	62 f1 7c 48 5c e5    	vsubps zmm4,zmm0,zmm5
  a48b9a:	62 d1 74 48 5c c8    	vsubps zmm1,zmm1,zmm8
  a48ba0:	62 71 64 48 5c c7    	vsubps zmm8,zmm3,zmm7
  a48ba6:	62 f1 64 48 58 df    	vaddps zmm3,zmm3,zmm7
  a48bac:	62 f1 7c 48 58 c5    	vaddps zmm0,zmm0,zmm5
  a48bb2:	62 f1 7c 48 28 2d 84 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff649984]        # 92540 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f9f0>
  a48bb9:	99 64 ff 
  a48bbc:	62 f3 7d 48 19 df 02 	vextractf32x4 xmm7,zmm3,0x2
  a48bc3:	62 f2 55 48 7f d8    	vpermt2ps zmm3,zmm5,zmm0
  a48bc9:	62 f1 7c 48 11 1e    	vmovups ZMMWORD PTR [rsi],zmm3
  a48bcf:	62 f3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm0,0x2
  a48bd6:	c5 c0 14 c0          	vunpcklps xmm0,xmm7,xmm0
  a48bda:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  a48bdf:	62 73 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm9,0x2
  a48be6:	62 72 55 48 7f ce    	vpermt2ps zmm9,zmm5,zmm6
  a48bec:	62 71 7c 48 11 8e 48 	vmovups ZMMWORD PTR [rsi+0x48],zmm9
  a48bf3:	00 00 00 
  a48bf6:	62 f3 7d 48 19 f3 02 	vextractf32x4 xmm3,zmm6,0x2
  a48bfd:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  a48c01:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  a48c08:	00 
  a48c09:	62 73 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm8,0x2
  a48c10:	62 72 55 48 7f c4    	vpermt2ps zmm8,zmm5,zmm4
  a48c16:	62 71 7c 48 11 86 90 	vmovups ZMMWORD PTR [rsi+0x90],zmm8
  a48c1d:	00 00 00 
  a48c20:	62 f3 7d 48 19 e3 02 	vextractf32x4 xmm3,zmm4,0x2
  a48c27:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  a48c2b:	c5 f8 13 86 d0 00 00 	vmovlps QWORD PTR [rsi+0xd0],xmm0
  a48c32:	00 
  a48c33:	62 f2 75 48 77 ea    	vpermi2ps zmm5,zmm1,zmm2
  a48c39:	62 f1 7c 48 11 ae d8 	vmovups ZMMWORD PTR [rsi+0xd8],zmm5
  a48c40:	00 00 00 
  a48c43:	62 f3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm2,0x2
  a48c4a:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a48c51:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a48c55:	c5 f8 13 86 18 01 00 	vmovlps QWORD PTR [rsi+0x118],xmm0
  a48c5c:	00 
  a48c5d:	48 89 ec             	mov    rsp,rbp
  a48c60:	5d                   	pop    rbp
  a48c61:	c5 f8 77             	vzeroupper
  a48c64:	c3                   	ret
