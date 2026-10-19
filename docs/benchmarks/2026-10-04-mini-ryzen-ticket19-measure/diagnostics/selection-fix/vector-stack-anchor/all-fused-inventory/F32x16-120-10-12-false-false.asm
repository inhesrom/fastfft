
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a08800 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a08800:	48 81 ec 08 01 00 00 	sub    rsp,0x108
  a08807:	62 f1 7c 48 10 17    	vmovups zmm2,ZMMWORD PTR [rdi]
  a0880d:	c5 fc 10 47 40       	vmovups ymm0,YMMWORD PTR [rdi+0x40]
  a08812:	62 f1 7c 48 28 25 24 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff686024]        # 8e840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bcf0>
  a08819:	60 68 ff 
  a0881c:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a08822:	62 72 5d 48 7f c0    	vpermt2ps zmm8,zmm4,zmm0
  a08828:	62 f1 7c 48 28 0d 4e 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff68604e]        # 8e880 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bd30>
  a0882f:	60 68 ff 
  a08832:	62 f2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm0
  a08838:	62 f1 7c 48 10 9f 60 	vmovups zmm3,ZMMWORD PTR [rdi+0x60]
  a0883f:	00 00 00 
  a08842:	c5 fc 10 87 a0 00 00 	vmovups ymm0,YMMWORD PTR [rdi+0xa0]
  a08849:	00 
  a0884a:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a08850:	62 72 5d 48 7f e0    	vpermt2ps zmm12,zmm4,zmm0
  a08856:	62 f2 75 48 7f d8    	vpermt2ps zmm3,zmm1,zmm0
  a0885c:	62 e1 7c 48 10 47 03 	vmovups zmm16,ZMMWORD PTR [rdi+0xc0]
  a08863:	c5 fc 10 87 00 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x100]
  a0886a:	00 
  a0886b:	62 b1 7c 48 28 f0    	vmovaps zmm6,zmm16
  a08871:	62 f2 5d 48 7f f0    	vpermt2ps zmm6,zmm4,zmm0
  a08877:	62 e2 75 48 7f c0    	vpermt2ps zmm16,zmm1,zmm0
  a0887d:	62 e1 7c 48 10 97 20 	vmovups zmm18,ZMMWORD PTR [rdi+0x120]
  a08884:	01 00 00 
  a08887:	c5 fc 10 87 60 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x160]
  a0888e:	00 
  a0888f:	62 31 7c 48 28 ca    	vmovaps zmm9,zmm18
  a08895:	62 72 5d 48 7f c8    	vpermt2ps zmm9,zmm4,zmm0
  a0889b:	62 e2 75 48 7f d0    	vpermt2ps zmm18,zmm1,zmm0
  a088a1:	62 e1 7c 48 10 77 06 	vmovups zmm22,ZMMWORD PTR [rdi+0x180]
  a088a8:	c5 fc 10 87 c0 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x1c0]
  a088af:	00 
  a088b0:	62 31 7c 48 28 d6    	vmovaps zmm10,zmm22
  a088b6:	62 72 5d 48 7f d0    	vpermt2ps zmm10,zmm4,zmm0
  a088bc:	62 e2 75 48 7f f0    	vpermt2ps zmm22,zmm1,zmm0
  a088c2:	62 f1 7c 48 10 af e0 	vmovups zmm5,ZMMWORD PTR [rdi+0x1e0]
  a088c9:	01 00 00 
  a088cc:	c5 fc 10 87 20 02 00 	vmovups ymm0,YMMWORD PTR [rdi+0x220]
  a088d3:	00 
  a088d4:	62 f1 7c 48 28 fd    	vmovaps zmm7,zmm5
  a088da:	62 f2 5d 48 7f f8    	vpermt2ps zmm7,zmm4,zmm0
  a088e0:	62 f2 75 48 7f e8    	vpermt2ps zmm5,zmm1,zmm0
  a088e6:	62 f1 7c 48 10 47 09 	vmovups zmm0,ZMMWORD PTR [rdi+0x240]
  a088ed:	c5 7c 10 af 80 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x280]
  a088f4:	00 
  a088f5:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a088fb:	62 52 5d 48 7f dd    	vpermt2ps zmm11,zmm4,zmm13
  a08901:	62 d2 75 48 7f c5    	vpermt2ps zmm0,zmm1,zmm13
  a08907:	62 61 7c 48 10 87 a0 	vmovups zmm24,ZMMWORD PTR [rdi+0x2a0]
  a0890e:	02 00 00 
  a08911:	c5 7c 10 b7 e0 02 00 	vmovups ymm14,YMMWORD PTR [rdi+0x2e0]
  a08918:	00 
  a08919:	62 11 7c 48 28 e8    	vmovaps zmm13,zmm24
  a0891f:	62 52 5d 48 7f ee    	vpermt2ps zmm13,zmm4,zmm14
  a08925:	62 42 75 48 7f c6    	vpermt2ps zmm24,zmm1,zmm14
  a0892b:	62 e1 7c 48 10 67 0c 	vmovups zmm20,ZMMWORD PTR [rdi+0x300]
  a08932:	c5 7c 10 b7 40 03 00 	vmovups ymm14,YMMWORD PTR [rdi+0x340]
  a08939:	00 
  a0893a:	62 a1 7c 48 28 cc    	vmovaps zmm17,zmm20
  a08940:	62 c2 5d 48 7f ce    	vpermt2ps zmm17,zmm4,zmm14
  a08946:	62 c2 75 48 7f e6    	vpermt2ps zmm20,zmm1,zmm14
  a0894c:	62 61 7c 48 10 8f 60 	vmovups zmm25,ZMMWORD PTR [rdi+0x360]
  a08953:	03 00 00 
  a08956:	c5 7c 10 b7 a0 03 00 	vmovups ymm14,YMMWORD PTR [rdi+0x3a0]
  a0895d:	00 
  a0895e:	62 d2 35 40 77 e6    	vpermi2ps zmm4,zmm25,zmm14
  a08964:	62 42 75 48 7f ce    	vpermt2ps zmm25,zmm1,zmm14
  a0896a:	62 21 4c 48 58 e9    	vaddps zmm29,zmm6,zmm17
  a08970:	62 91 3c 48 58 cd    	vaddps zmm1,zmm8,zmm29
  a08976:	62 c1 2c 48 58 db    	vaddps zmm19,zmm10,zmm11
  a0897c:	62 31 74 48 58 f3    	vaddps zmm14,zmm1,zmm19
  a08982:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm14
  a08989:	ff 
  a0898a:	62 41 14 48 58 f9    	vaddps zmm31,zmm13,zmm9
  a08990:	62 91 44 48 58 cf    	vaddps zmm1,zmm7,zmm31
  a08996:	62 c1 5c 48 58 ec    	vaddps zmm21,zmm4,zmm12
  a0899c:	62 b1 74 48 58 cd    	vaddps zmm1,zmm1,zmm21
  a089a2:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a089a9:	62 71 0c 48 58 f1    	vaddps zmm14,zmm14,zmm1
  a089af:	62 21 7c 40 58 f4    	vaddps zmm30,zmm16,zmm20
  a089b5:	62 11 6c 48 58 fe    	vaddps zmm15,zmm2,zmm30
  a089bb:	62 e1 4c 40 58 f8    	vaddps zmm23,zmm22,zmm0
  a089c1:	62 b1 04 48 58 cf    	vaddps zmm1,zmm15,zmm23
  a089c7:	62 21 3c 40 58 da    	vaddps zmm27,zmm24,zmm18
  a089cd:	62 01 54 48 58 e3    	vaddps zmm28,zmm5,zmm27
  a089d3:	62 a1 7c 40 5c e4    	vsubps zmm20,zmm16,zmm20
  a089d9:	62 61 34 40 58 d3    	vaddps zmm26,zmm25,zmm3
  a089df:	62 11 1c 40 58 fa    	vaddps zmm15,zmm28,zmm26
  a089e5:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm15
  a089ec:	fe 
  a089ed:	62 e1 4c 40 5c f0    	vsubps zmm22,zmm22,zmm0
  a089f3:	62 62 7d 48 18 25 eb 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff66cceb]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a089fa:	cc 66 ff 
  a089fd:	62 21 3c 40 5c c2    	vsubps zmm24,zmm24,zmm18
  a08a03:	62 81 7c 48 28 d4    	vmovaps zmm18,zmm28
  a08a09:	62 61 34 40 5c cb    	vsubps zmm25,zmm25,zmm3
  a08a0f:	62 f2 7d 48 18 05 2b 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff66cc2b]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a08a16:	cc 66 ff 
  a08a19:	62 c2 15 40 a8 d0    	vfmadd213ps zmm18,zmm29,zmm8
  a08a1f:	62 12 7d 48 bc c5    	vfnmadd231ps zmm8,zmm0,zmm29
  a08a25:	62 01 7c 48 28 ec    	vmovaps zmm29,zmm28
  a08a2b:	62 62 05 40 a8 ef    	vfmadd213ps zmm29,zmm31,zmm7
  a08a31:	62 92 7d 48 bc ff    	vfnmadd231ps zmm7,zmm0,zmm31
  a08a37:	62 01 7c 48 28 fc    	vmovaps zmm31,zmm28
  a08a3d:	62 62 0d 40 a8 fa    	vfmadd213ps zmm31,zmm30,zmm2
  a08a43:	62 92 7d 48 bc d6    	vfnmadd231ps zmm2,zmm0,zmm30
  a08a49:	62 01 7c 48 28 f4    	vmovaps zmm30,zmm28
  a08a4f:	62 62 25 40 a8 f5    	vfmadd213ps zmm30,zmm27,zmm5
  a08a55:	62 f2 25 40 bc e8    	vfnmadd231ps zmm5,zmm27,zmm0
  a08a5b:	62 c1 74 48 58 c7    	vaddps zmm16,zmm1,zmm15
  a08a61:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a08a67:	62 e2 65 40 bc d0    	vfnmadd231ps zmm18,zmm19,zmm0
  a08a6d:	62 62 55 40 bc e8    	vfnmadd231ps zmm29,zmm21,zmm0
  a08a73:	62 62 45 40 bc f8    	vfnmadd231ps zmm31,zmm23,zmm0
  a08a79:	62 62 2d 40 bc f0    	vfnmadd231ps zmm30,zmm26,zmm0
  a08a7f:	62 f2 7d 48 18 05 cf 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff66cccf]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a08a86:	cc 66 ff 
  a08a89:	62 32 1d 40 b8 c3    	vfmadd231ps zmm8,zmm28,zmm19
  a08a8f:	62 61 4c 40 59 d8    	vmulps zmm27,zmm22,zmm0
  a08a95:	62 b2 1d 40 b8 fd    	vfmadd231ps zmm7,zmm28,zmm21
  a08a9b:	62 e2 7d 48 18 1d fb 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff66c8fb]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a08aa2:	c8 66 ff 
  a08aa5:	62 22 5d 40 b8 db    	vfmadd231ps zmm27,zmm20,zmm19
  a08aab:	62 b2 1d 40 b8 d7    	vfmadd231ps zmm2,zmm28,zmm23
  a08ab1:	62 81 6c 40 58 eb    	vaddps zmm21,zmm18,zmm27
  a08ab7:	62 92 2d 40 b8 ec    	vfmadd231ps zmm5,zmm26,zmm28
  a08abd:	62 e1 34 40 59 f8    	vmulps zmm23,zmm25,zmm0
  a08ac3:	62 a2 3d 40 b8 fb    	vfmadd231ps zmm23,zmm24,zmm19
  a08ac9:	62 21 14 40 58 d7    	vaddps zmm26,zmm29,zmm23
  a08acf:	62 21 4c 48 5c e1    	vsubps zmm28,zmm6,zmm17
  a08ad5:	62 91 54 40 5c da    	vsubps zmm3,zmm21,zmm26
  a08adb:	62 51 2c 48 5c d3    	vsubps zmm10,zmm10,zmm11
  a08ae1:	62 71 2c 48 59 d8    	vmulps zmm11,zmm10,zmm0
  a08ae7:	62 32 1d 40 b8 db    	vfmadd231ps zmm11,zmm28,zmm19
  a08aed:	62 51 14 48 5c c9    	vsubps zmm9,zmm13,zmm9
  a08af3:	62 d1 04 40 5c f3    	vsubps zmm6,zmm31,zmm11
  a08af9:	62 d1 5c 48 5c e4    	vsubps zmm4,zmm4,zmm12
  a08aff:	62 71 5c 48 59 e8    	vmulps zmm13,zmm4,zmm0
  a08b05:	62 32 35 48 b8 eb    	vfmadd231ps zmm13,zmm9,zmm19
  a08b0b:	62 e1 5c 40 59 e0    	vmulps zmm20,zmm20,zmm0
  a08b11:	62 a2 65 40 bc e6    	vfnmadd231ps zmm20,zmm19,zmm22
  a08b17:	62 c1 0c 40 5c cd    	vsubps zmm17,zmm30,zmm13
  a08b1d:	62 e1 3c 40 59 f0    	vmulps zmm22,zmm24,zmm0
  a08b23:	62 82 65 40 bc f1    	vfnmadd231ps zmm22,zmm19,zmm25
  a08b29:	62 31 4c 48 5c e1    	vsubps zmm12,zmm6,zmm17
  a08b2f:	62 61 1c 40 59 c8    	vmulps zmm25,zmm28,zmm0
  a08b35:	62 42 65 40 bc ca    	vfnmadd231ps zmm25,zmm19,zmm10
  a08b3b:	62 31 3c 48 58 d4    	vaddps zmm10,zmm8,zmm20
  a08b41:	62 f1 34 48 59 c0    	vmulps zmm0,zmm9,zmm0
  a08b47:	62 21 44 48 58 e6    	vaddps zmm28,zmm7,zmm22
  a08b4d:	62 b2 5d 48 bc c3    	vfnmadd231ps zmm0,zmm4,zmm19
  a08b53:	62 01 2c 48 58 c4    	vaddps zmm24,zmm10,zmm28
  a08b59:	62 91 6c 48 5c c9    	vsubps zmm1,zmm2,zmm25
  a08b5f:	62 a1 3c 48 5c e4    	vsubps zmm20,zmm8,zmm20
  a08b65:	62 f1 54 48 5c e0    	vsubps zmm4,zmm5,zmm0
  a08b6b:	62 b1 44 48 5c fe    	vsubps zmm7,zmm7,zmm22
  a08b71:	62 71 74 48 58 cc    	vaddps zmm9,zmm1,zmm4
  a08b77:	62 f1 34 40 58 d2    	vaddps zmm2,zmm25,zmm2
  a08b7d:	62 e1 5c 40 5c f7    	vsubps zmm22,zmm20,zmm7
  a08b83:	62 f1 7c 48 58 ed    	vaddps zmm5,zmm0,zmm5
  a08b89:	62 e1 6c 48 5c dd    	vsubps zmm19,zmm2,zmm5
  a08b8f:	62 81 6c 40 5c d3    	vsubps zmm18,zmm18,zmm27
  a08b95:	62 a1 14 40 5c ff    	vsubps zmm23,zmm29,zmm23
  a08b9b:	62 b1 6c 40 58 c7    	vaddps zmm0,zmm18,zmm23
  a08ba1:	62 01 24 48 58 ef    	vaddps zmm29,zmm11,zmm31
  a08ba7:	62 01 14 48 58 f6    	vaddps zmm30,zmm13,zmm30
  a08bad:	62 11 14 40 58 ee    	vaddps zmm13,zmm29,zmm30
  a08bb3:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp-0x40]
  a08bba:	ff 
  a08bbb:	62 61 3c 48 5c 1c 24 	vsubps zmm27,zmm8,ZMMWORD PTR [rsp]
  a08bc2:	62 71 04 48 5c 44 24 	vsubps zmm8,zmm15,ZMMWORD PTR [rsp-0x80]
  a08bc9:	fe 
  a08bca:	62 01 54 40 58 ca    	vaddps zmm25,zmm21,zmm26
  a08bd0:	62 31 4c 48 58 f9    	vaddps zmm15,zmm6,zmm17
  a08bd6:	62 91 2c 48 5c f4    	vsubps zmm6,zmm10,zmm28
  a08bdc:	62 f1 74 48 5c cc    	vsubps zmm1,zmm1,zmm4
  a08be2:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a08be9:	fe 
  a08bea:	62 f1 5c 40 58 cf    	vaddps zmm1,zmm20,zmm7
  a08bf0:	62 71 6c 48 58 dd    	vaddps zmm11,zmm2,zmm5
  a08bf6:	62 b1 6c 40 5c d7    	vsubps zmm2,zmm18,zmm23
  a08bfc:	62 01 14 40 5c ee    	vsubps zmm29,zmm29,zmm30
  a08c02:	62 e1 7c 48 28 15 74 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6be374]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a08c09:	e3 6b ff 
  a08c0c:	62 d1 7c 48 28 fe    	vmovaps zmm7,zmm14
  a08c12:	62 f2 6d 40 7f f9    	vpermt2ps zmm7,zmm18,zmm1
  a08c18:	62 f1 7c 48 28 2d 9e 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6be39e]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a08c1f:	e3 6b ff 
  a08c22:	62 72 55 48 7f f1    	vpermt2ps zmm14,zmm5,zmm1
  a08c28:	62 e1 7c 48 28 cb    	vmovaps zmm17,zmm3
  a08c2e:	62 e2 6d 40 7f ca    	vpermt2ps zmm17,zmm18,zmm2
  a08c34:	62 f2 55 48 7f da    	vpermt2ps zmm3,zmm5,zmm2
  a08c3a:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  a08c3f:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a08c45:	62 d2 6d 40 7f e2    	vpermt2ps zmm4,zmm18,zmm10
  a08c4b:	62 42 55 48 7f c2    	vpermt2ps zmm24,zmm5,zmm10
  a08c51:	62 a1 7c 48 28 e6    	vmovaps zmm20,zmm22
  a08c57:	62 c2 6d 40 7f e2    	vpermt2ps zmm20,zmm18,zmm10
  a08c5d:	62 c2 55 48 7f f2    	vpermt2ps zmm22,zmm5,zmm10
  a08c63:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a08c69:	62 d2 6d 40 7f d2    	vpermt2ps zmm2,zmm18,zmm10
  a08c6f:	62 d2 55 48 7f c2    	vpermt2ps zmm0,zmm5,zmm10
  a08c75:	62 01 7c 48 28 d3    	vmovaps zmm26,zmm27
  a08c7b:	62 42 6d 40 7f d2    	vpermt2ps zmm26,zmm18,zmm10
  a08c81:	62 42 55 48 7f da    	vpermt2ps zmm27,zmm5,zmm10
  a08c87:	62 01 7c 48 28 e1    	vmovaps zmm28,zmm25
  a08c8d:	62 42 6d 40 7f e2    	vpermt2ps zmm28,zmm18,zmm10
  a08c93:	62 42 55 48 7f ca    	vpermt2ps zmm25,zmm5,zmm10
  a08c99:	62 61 7c 48 28 f6    	vmovaps zmm30,zmm6
  a08c9f:	62 42 6d 40 7f f2    	vpermt2ps zmm30,zmm18,zmm10
  a08ca5:	62 d2 55 48 7f f2    	vpermt2ps zmm6,zmm5,zmm10
  a08cab:	62 e1 7c 48 28 2d 4b 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6be24b]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a08cb2:	e2 6b ff 
  a08cb5:	62 61 7c 48 28 ff    	vmovaps zmm31,zmm7
  a08cbb:	62 62 55 40 7f fa    	vpermt2ps zmm31,zmm21,zmm2
  a08cc1:	62 e1 7c 48 28 3d 75 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6be275]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a08cc8:	e2 6b ff 
  a08ccb:	62 f2 45 40 7f fa    	vpermt2ps zmm7,zmm23,zmm2
  a08cd1:	62 b1 7c 48 28 c9    	vmovaps zmm1,zmm17
  a08cd7:	62 92 55 40 7f ca    	vpermt2ps zmm1,zmm21,zmm26
  a08cdd:	62 82 45 40 7f ca    	vpermt2ps zmm17,zmm23,zmm26
  a08ce3:	62 61 7c 48 28 d4    	vmovaps zmm26,zmm4
  a08ce9:	62 02 55 40 7f d4    	vpermt2ps zmm26,zmm21,zmm28
  a08cef:	62 92 45 40 7f e4    	vpermt2ps zmm4,zmm23,zmm28
  a08cf5:	62 21 7c 48 28 e4    	vmovaps zmm28,zmm20
  a08cfb:	62 02 55 40 7f e6    	vpermt2ps zmm28,zmm21,zmm30
  a08d01:	62 82 45 40 7f e6    	vpermt2ps zmm20,zmm23,zmm30
  a08d07:	62 72 55 40 7f f0    	vpermt2ps zmm14,zmm21,zmm0
  a08d0d:	62 92 55 40 7f db    	vpermt2ps zmm3,zmm21,zmm27
  a08d13:	62 02 55 40 7f c1    	vpermt2ps zmm24,zmm21,zmm25
  a08d19:	62 e2 55 40 7f f6    	vpermt2ps zmm22,zmm21,zmm6
  a08d1f:	62 91 85 40 14 c2    	vunpcklpd zmm0,zmm31,zmm26
  a08d25:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a08d2c:	62 91 85 40 15 f2    	vunpckhpd zmm6,zmm31,zmm26
  a08d32:	62 91 f5 48 14 c4    	vunpcklpd zmm0,zmm1,zmm28
  a08d38:	62 01 f5 48 15 e4    	vunpckhpd zmm28,zmm1,zmm28
  a08d3e:	62 f1 c5 48 14 cc    	vunpcklpd zmm1,zmm7,zmm4
  a08d44:	62 f1 c5 48 15 d4    	vunpckhpd zmm2,zmm7,zmm4
  a08d4a:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a08d51:	ff 
  a08d52:	62 21 f5 40 14 f4    	vunpcklpd zmm30,zmm17,zmm20
  a08d58:	62 21 f5 40 15 dc    	vunpckhpd zmm27,zmm17,zmm20
  a08d5e:	62 91 8d 48 14 f8    	vunpcklpd zmm7,zmm14,zmm24
  a08d64:	62 91 8d 48 15 d0    	vunpckhpd zmm2,zmm14,zmm24
  a08d6a:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a08d71:	01 
  a08d72:	62 a1 e5 48 14 e6    	vunpcklpd zmm20,zmm3,zmm22
  a08d78:	62 21 e5 48 15 d6    	vunpckhpd zmm26,zmm3,zmm22
  a08d7e:	62 21 7c 48 28 c0    	vmovaps zmm24,zmm16
  a08d84:	62 42 6d 40 7f c3    	vpermt2ps zmm24,zmm18,zmm11
  a08d8a:	62 c2 55 48 7f c3    	vpermt2ps zmm16,zmm5,zmm11
  a08d90:	62 41 7c 48 28 cc    	vmovaps zmm25,zmm12
  a08d96:	62 02 6d 40 7f cd    	vpermt2ps zmm25,zmm18,zmm29
  a08d9c:	62 12 55 48 7f e5    	vpermt2ps zmm12,zmm5,zmm29
  a08da2:	62 41 7c 48 28 f9    	vmovaps zmm31,zmm9
  a08da8:	62 42 6d 40 7f fa    	vpermt2ps zmm31,zmm18,zmm10
  a08dae:	62 52 55 48 7f ca    	vpermt2ps zmm9,zmm5,zmm10
  a08db4:	62 31 7c 48 28 db    	vmovaps zmm11,zmm19
  a08dba:	62 52 6d 40 7f da    	vpermt2ps zmm11,zmm18,zmm10
  a08dc0:	62 c2 55 48 7f da    	vpermt2ps zmm19,zmm5,zmm10
  a08dc6:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a08dcc:	62 d2 6d 40 7f da    	vpermt2ps zmm3,zmm18,zmm10
  a08dd2:	62 52 55 48 7f ea    	vpermt2ps zmm13,zmm5,zmm10
  a08dd8:	62 51 7c 48 28 f0    	vmovaps zmm14,zmm8
  a08dde:	62 52 6d 40 7f f2    	vpermt2ps zmm14,zmm18,zmm10
  a08de4:	62 52 55 48 7f c2    	vpermt2ps zmm8,zmm5,zmm10
  a08dea:	62 d1 7c 48 28 e7    	vmovaps zmm4,zmm15
  a08df0:	62 52 6d 40 7f fa    	vpermt2ps zmm15,zmm18,zmm10
  a08df6:	62 d2 55 48 7f e2    	vpermt2ps zmm4,zmm5,zmm10
  a08dfc:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a08e03:	fe 
  a08e04:	62 c2 6d 48 77 d2    	vpermi2ps zmm18,zmm2,zmm10
  a08e0a:	62 d2 55 48 7f d2    	vpermt2ps zmm2,zmm5,zmm10
  a08e10:	62 e1 7c 48 28 0d e6 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6bdfe6]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a08e17:	df 6b ff 
  a08e1a:	62 71 7c 48 10 14 24 	vmovups zmm10,ZMMWORD PTR [rsp]
  a08e21:	62 d1 7c 48 28 ea    	vmovaps zmm5,zmm10
  a08e27:	62 f2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm0
  a08e2d:	62 61 7c 48 28 2d 09 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff6be009]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a08e34:	e0 6b ff 
  a08e37:	62 72 15 40 7f d0    	vpermt2ps zmm10,zmm29,zmm0
  a08e3d:	62 71 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm10
  a08e44:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a08e4a:	62 12 75 40 7f d4    	vpermt2ps zmm10,zmm17,zmm28
  a08e50:	62 92 15 40 7f f4    	vpermt2ps zmm6,zmm29,zmm28
  a08e56:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a08e5c:	62 92 75 40 7f c6    	vpermt2ps zmm0,zmm17,zmm30
  a08e62:	62 92 15 40 7f ce    	vpermt2ps zmm1,zmm29,zmm30
  a08e68:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a08e6f:	fe 
  a08e70:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a08e77:	ff 
  a08e78:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a08e7e:	62 82 75 40 7f f3    	vpermt2ps zmm22,zmm17,zmm27
  a08e84:	62 92 15 40 7f cb    	vpermt2ps zmm1,zmm29,zmm27
  a08e8a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a08e91:	ff 
  a08e92:	62 61 7c 48 28 f7    	vmovaps zmm30,zmm7
  a08e98:	62 22 75 40 7f f4    	vpermt2ps zmm30,zmm17,zmm20
  a08e9e:	62 b2 15 40 7f fc    	vpermt2ps zmm7,zmm29,zmm20
  a08ea4:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a08eab:	01 
  a08eac:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a08eb2:	62 82 75 40 7f e2    	vpermt2ps zmm20,zmm17,zmm26
  a08eb8:	62 92 15 40 7f ca    	vpermt2ps zmm1,zmm29,zmm26
  a08ebe:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a08ec4:	62 62 55 40 7f d3    	vpermt2ps zmm26,zmm21,zmm3
  a08eca:	62 62 45 40 7f c3    	vpermt2ps zmm24,zmm23,zmm3
  a08ed0:	62 91 7c 48 28 d9    	vmovaps zmm3,zmm25
  a08ed6:	62 d2 55 40 7f de    	vpermt2ps zmm3,zmm21,zmm14
  a08edc:	62 42 45 40 7f ce    	vpermt2ps zmm25,zmm23,zmm14
  a08ee2:	62 01 7c 48 28 df    	vmovaps zmm27,zmm31
  a08ee8:	62 42 55 40 7f df    	vpermt2ps zmm27,zmm21,zmm15
  a08eee:	62 42 45 40 7f ff    	vpermt2ps zmm31,zmm23,zmm15
  a08ef4:	62 51 7c 48 28 fb    	vmovaps zmm15,zmm11
  a08efa:	62 32 45 40 7f da    	vpermt2ps zmm11,zmm23,zmm18
  a08f00:	62 32 55 40 7f fa    	vpermt2ps zmm15,zmm21,zmm18
  a08f06:	62 c2 55 40 7f c5    	vpermt2ps zmm16,zmm21,zmm13
  a08f0c:	62 52 55 40 7f e0    	vpermt2ps zmm12,zmm21,zmm8
  a08f12:	62 72 55 40 7f cc    	vpermt2ps zmm9,zmm21,zmm4
  a08f18:	62 e2 55 40 7f da    	vpermt2ps zmm19,zmm21,zmm2
  a08f1e:	62 11 ad 40 14 f3    	vunpcklpd zmm14,zmm26,zmm27
  a08f24:	62 01 ad 40 15 d3    	vunpckhpd zmm26,zmm26,zmm27
  a08f2a:	62 51 e5 48 14 c7    	vunpcklpd zmm8,zmm3,zmm15
  a08f30:	62 c1 e5 48 15 d7    	vunpckhpd zmm18,zmm3,zmm15
  a08f36:	62 11 bd 40 14 ef    	vunpcklpd zmm13,zmm24,zmm31
  a08f3c:	62 11 bd 40 15 ff    	vunpckhpd zmm15,zmm24,zmm31
  a08f42:	62 c1 b5 40 14 eb    	vunpcklpd zmm21,zmm25,zmm11
  a08f48:	62 51 b5 40 15 db    	vunpckhpd zmm11,zmm25,zmm11
  a08f4e:	62 41 fd 40 14 d9    	vunpcklpd zmm27,zmm16,zmm9
  a08f54:	62 51 fd 40 15 c9    	vunpckhpd zmm9,zmm16,zmm9
  a08f5a:	62 21 9d 48 14 c3    	vunpcklpd zmm24,zmm12,zmm19
  a08f60:	62 31 9d 48 15 e3    	vunpckhpd zmm12,zmm12,zmm19
  a08f66:	62 d1 7c 48 28 de    	vmovaps zmm3,zmm14
  a08f6c:	62 d2 75 40 7f d8    	vpermt2ps zmm3,zmm17,zmm8
  a08f72:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a08f79:	01 
  a08f7a:	62 52 15 40 7f f0    	vpermt2ps zmm14,zmm29,zmm8
  a08f80:	62 11 7c 48 28 c2    	vmovaps zmm8,zmm26
  a08f86:	62 32 75 40 7f c2    	vpermt2ps zmm8,zmm17,zmm18
  a08f8c:	62 22 15 40 7f d2    	vpermt2ps zmm26,zmm29,zmm18
  a08f92:	62 41 7c 48 28 e5    	vmovaps zmm28,zmm13
  a08f98:	62 22 75 40 7f e5    	vpermt2ps zmm28,zmm17,zmm21
  a08f9e:	62 32 15 40 7f ed    	vpermt2ps zmm13,zmm29,zmm21
  a08fa4:	62 c1 7c 48 28 ff    	vmovaps zmm23,zmm15
  a08faa:	62 c2 75 40 7f fb    	vpermt2ps zmm23,zmm17,zmm11
  a08fb0:	62 52 15 40 7f fb    	vpermt2ps zmm15,zmm29,zmm11
  a08fb6:	62 81 7c 48 28 c3    	vmovaps zmm16,zmm27
  a08fbc:	62 82 75 40 7f c0    	vpermt2ps zmm16,zmm17,zmm24
  a08fc2:	62 02 15 40 7f d8    	vpermt2ps zmm27,zmm29,zmm24
  a08fc8:	62 c2 35 48 77 cc    	vpermi2ps zmm17,zmm9,zmm12
  a08fce:	62 52 15 40 7f cc    	vpermt2ps zmm9,zmm29,zmm12
  a08fd4:	62 61 7c 48 10 4a 02 	vmovups zmm25,ZMMWORD PTR [rdx+0x80]
  a08fdb:	62 61 7c 48 10 42 03 	vmovups zmm24,ZMMWORD PTR [rdx+0xc0]
  a08fe2:	62 e1 7c 48 10 6a 04 	vmovups zmm21,ZMMWORD PTR [rdx+0x100]
  a08fe9:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a08ff0:	62 e1 7c 48 10 5a 06 	vmovups zmm19,ZMMWORD PTR [rdx+0x180]
  a08ff7:	62 71 7c 48 10 62 0c 	vmovups zmm12,ZMMWORD PTR [rdx+0x300]
  a08ffe:	62 61 7c 48 10 6a 0d 	vmovups zmm29,ZMMWORD PTR [rdx+0x340]
  a09005:	62 51 4c 40 59 dc    	vmulps zmm11,zmm22,zmm12
  a0900b:	62 12 45 40 bc dd    	vfnmadd231ps zmm11,zmm23,zmm29
  a09011:	62 c1 44 40 59 fc    	vmulps zmm23,zmm23,zmm12
  a09017:	62 71 7c 48 10 62 07 	vmovups zmm12,ZMMWORD PTR [rdx+0x1c0]
  a0901e:	62 a2 15 40 b8 fe    	vfmadd231ps zmm23,zmm29,zmm22
  a09024:	62 61 7c 48 10 6a 08 	vmovups zmm29,ZMMWORD PTR [rdx+0x200]
  a0902b:	62 a1 4c 48 59 f3    	vmulps zmm22,zmm6,zmm19
  a09031:	62 c2 2d 40 bc f4    	vfnmadd231ps zmm22,zmm26,zmm12
  a09037:	62 21 2c 40 59 d3    	vmulps zmm26,zmm26,zmm19
  a0903d:	62 e1 7c 48 10 5a 12 	vmovups zmm19,ZMMWORD PTR [rdx+0x480]
  a09044:	62 62 1d 48 b8 d6    	vfmadd231ps zmm26,zmm12,zmm6
  a0904a:	62 71 7c 48 10 62 13 	vmovups zmm12,ZMMWORD PTR [rdx+0x4c0]
  a09051:	62 b1 44 48 59 f3    	vmulps zmm6,zmm7,zmm19
  a09057:	62 d2 25 40 bc f4    	vfnmadd231ps zmm6,zmm27,zmm12
  a0905d:	62 21 24 40 59 db    	vmulps zmm27,zmm27,zmm19
  a09063:	62 e1 7c 48 10 5a 09 	vmovups zmm19,ZMMWORD PTR [rdx+0x240]
  a0906a:	62 62 1d 48 b8 df    	vfmadd231ps zmm27,zmm12,zmm7
  a09070:	62 61 7c 48 10 7a 0a 	vmovups zmm31,ZMMWORD PTR [rdx+0x280]
  a09077:	62 91 7c 48 59 fd    	vmulps zmm7,zmm0,zmm29
  a0907d:	62 b2 1d 40 bc fb    	vfnmadd231ps zmm7,zmm28,zmm19
  a09083:	62 01 1c 40 59 e5    	vmulps zmm28,zmm28,zmm29
  a09089:	62 71 7c 48 10 62 14 	vmovups zmm12,ZMMWORD PTR [rdx+0x500]
  a09090:	62 62 65 40 b8 e0    	vfmadd231ps zmm28,zmm19,zmm0
  a09096:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a0909d:	62 c1 5c 40 59 dc    	vmulps zmm19,zmm20,zmm12
  a090a3:	62 e2 75 40 bc d8    	vfnmadd231ps zmm19,zmm17,zmm0
  a090a9:	62 c1 74 40 59 cc    	vmulps zmm17,zmm17,zmm12
  a090af:	62 71 7c 48 10 62 0e 	vmovups zmm12,ZMMWORD PTR [rdx+0x380]
  a090b6:	62 a2 7d 48 b8 cc    	vfmadd231ps zmm17,zmm0,zmm20
  a090bc:	62 e1 7c 48 10 62 0f 	vmovups zmm20,ZMMWORD PTR [rdx+0x3c0]
  a090c3:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a090ca:	ff 
  a090cb:	62 d1 6c 48 59 c4    	vmulps zmm0,zmm2,zmm12
  a090d1:	62 b2 05 48 bc c4    	vfnmadd231ps zmm0,zmm15,zmm20
  a090d7:	62 51 04 48 59 fc    	vmulps zmm15,zmm15,zmm12
  a090dd:	62 61 7c 48 10 6a 0b 	vmovups zmm29,ZMMWORD PTR [rdx+0x2c0]
  a090e4:	62 72 5d 40 b8 fa    	vfmadd231ps zmm15,zmm20,zmm2
  a090ea:	62 f1 7c 48 10 62 10 	vmovups zmm4,ZMMWORD PTR [rdx+0x400]
  a090f1:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  a090f8:	62 81 6c 48 59 e1    	vmulps zmm20,zmm2,zmm25
  a090fe:	62 82 0d 48 bc e0    	vfnmadd231ps zmm20,zmm14,zmm24
  a09104:	62 11 0c 48 59 f1    	vmulps zmm14,zmm14,zmm25
  a0910a:	62 71 7c 48 10 62 11 	vmovups zmm12,ZMMWORD PTR [rdx+0x440]
  a09111:	62 72 3d 40 b8 f2    	vfmadd231ps zmm14,zmm24,zmm2
  a09117:	62 61 7c 48 10 42 16 	vmovups zmm24,ZMMWORD PTR [rdx+0x580]
  a0911e:	62 61 0c 40 59 cc    	vmulps zmm25,zmm30,zmm4
  a09124:	62 42 7d 40 bc cc    	vfnmadd231ps zmm25,zmm16,zmm12
  a0912a:	62 f1 7c 40 59 e4    	vmulps zmm4,zmm16,zmm4
  a09130:	62 e1 7c 48 10 42 17 	vmovups zmm16,ZMMWORD PTR [rdx+0x5c0]
  a09137:	62 92 1d 48 b8 e6    	vfmadd231ps zmm4,zmm12,zmm30
  a0913d:	62 51 54 48 58 e3    	vaddps zmm12,zmm5,zmm11
  a09143:	62 21 2c 48 59 f5    	vmulps zmm30,zmm10,zmm21
  a09149:	62 22 3d 48 bc f2    	vfnmadd231ps zmm30,zmm8,zmm18
  a0914f:	62 a1 3c 48 59 ed    	vmulps zmm21,zmm8,zmm21
  a09155:	62 71 4c 40 58 c6    	vaddps zmm8,zmm22,zmm6
  a0915b:	62 c2 6d 40 b8 ea    	vfmadd231ps zmm21,zmm18,zmm10
  a09161:	62 d1 1c 48 58 d0    	vaddps zmm2,zmm12,zmm8
  a09167:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a0916e:	62 11 74 48 59 d0    	vmulps zmm10,zmm1,zmm24
  a09174:	62 32 35 48 bc d0    	vfnmadd231ps zmm10,zmm9,zmm16
  a0917a:	62 11 34 48 59 c8    	vmulps zmm9,zmm9,zmm24
  a09180:	62 21 44 48 58 c3    	vaddps zmm24,zmm7,zmm19
  a09186:	62 72 7d 40 b8 c9    	vfmadd231ps zmm9,zmm16,zmm1
  a0918c:	62 b1 7c 48 58 dc    	vaddps zmm3,zmm0,zmm20
  a09192:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a09199:	fe 
  a0919a:	62 81 74 48 59 c7    	vmulps zmm16,zmm1,zmm31
  a091a0:	62 82 15 48 bc c5    	vfnmadd231ps zmm16,zmm13,zmm29
  a091a6:	62 81 14 48 59 d7    	vmulps zmm18,zmm13,zmm31
  a091ac:	62 f1 3c 40 58 d3    	vaddps zmm2,zmm24,zmm3
  a091b2:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a091b9:	ff 
  a091ba:	62 e2 15 40 b8 d1    	vfmadd231ps zmm18,zmm29,zmm1
  a091c0:	62 01 34 40 58 ee    	vaddps zmm29,zmm25,zmm30
  a091c6:	62 b1 2c 48 58 d0    	vaddps zmm2,zmm10,zmm16
  a091cc:	62 31 44 48 5c eb    	vsubps zmm13,zmm7,zmm19
  a091d2:	62 c1 04 48 58 de    	vaddps zmm19,zmm15,zmm14
  a091d8:	62 51 04 48 5c fe    	vsubps zmm15,zmm15,zmm14
  a091de:	62 61 14 40 58 fa    	vaddps zmm31,zmm29,zmm2
  a091e4:	62 01 34 40 5c ce    	vsubps zmm25,zmm25,zmm30
  a091ea:	62 31 34 48 58 f2    	vaddps zmm14,zmm9,zmm18
  a091f0:	62 a1 34 48 5c d2    	vsubps zmm18,zmm9,zmm18
  a091f6:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a091fd:	01 
  a091fe:	62 61 44 40 58 f1    	vaddps zmm30,zmm23,zmm1
  a09204:	62 d1 54 48 5c eb    	vsubps zmm5,zmm5,zmm11
  a0920a:	62 11 2c 40 58 db    	vaddps zmm11,zmm26,zmm27
  a09210:	62 01 2c 40 5c d3    	vsubps zmm26,zmm26,zmm27
  a09216:	62 21 1c 40 58 d9    	vaddps zmm27,zmm28,zmm17
  a0921c:	62 21 1c 40 5c e1    	vsubps zmm28,zmm28,zmm17
  a09222:	62 a1 5c 48 58 cd    	vaddps zmm17,zmm4,zmm21
  a09228:	62 71 5c 40 5c c8    	vsubps zmm9,zmm20,zmm0
  a0922e:	62 d1 1c 40 58 c1    	vaddps zmm0,zmm28,zmm9
  a09234:	62 b1 5c 48 5c fd    	vsubps zmm7,zmm4,zmm21
  a0923a:	62 51 7c 40 5c d2    	vsubps zmm10,zmm16,zmm10
  a09240:	62 d1 44 48 58 e2    	vaddps zmm4,zmm7,zmm10
  a09246:	62 e1 7c 48 5c c4    	vsubps zmm16,zmm0,zmm4
  a0924c:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm16
  a09253:	03 
  a09254:	62 f1 7c 48 58 c4    	vaddps zmm0,zmm0,zmm4
  a0925a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a09261:	02 
  a09262:	62 d1 14 48 58 c7    	vaddps zmm0,zmm13,zmm15
  a09268:	62 a1 74 48 5c e7    	vsubps zmm20,zmm1,zmm23
  a0926e:	62 a1 34 40 58 ea    	vaddps zmm21,zmm25,zmm18
  a09274:	62 b1 4c 48 5c ce    	vsubps zmm1,zmm6,zmm22
  a0927a:	62 a1 7c 48 58 fd    	vaddps zmm23,zmm0,zmm21
  a09280:	62 a1 7c 48 5c c5    	vsubps zmm16,zmm0,zmm21
  a09286:	62 91 24 48 58 c6    	vaddps zmm0,zmm11,zmm30
  a0928c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a09293:	fe 
  a09294:	62 f1 3c 40 5c db    	vsubps zmm3,zmm24,zmm3
  a0929a:	62 21 24 40 58 c3    	vaddps zmm24,zmm27,zmm19
  a092a0:	62 f1 14 40 5c d2    	vsubps zmm2,zmm29,zmm2
  a092a6:	62 41 74 40 58 ee    	vaddps zmm29,zmm17,zmm14
  a092ac:	62 51 1c 48 5c e0    	vsubps zmm12,zmm12,zmm8
  a092b2:	62 81 54 48 58 f2    	vaddps zmm22,zmm5,zmm26
  a092b8:	62 a1 24 40 5c db    	vsubps zmm19,zmm27,zmm19
  a092be:	62 f2 7d 48 18 35 98 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff66c198]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a092c5:	c1 66 ff 
  a092c8:	62 c1 74 40 5c ce    	vsubps zmm17,zmm17,zmm14
  a092ce:	62 b1 64 40 5c c1    	vsubps zmm0,zmm19,zmm17
  a092d4:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a092db:	01 
  a092dc:	62 a1 64 40 58 e9    	vaddps zmm21,zmm19,zmm17
  a092e2:	62 61 7c 48 28 de    	vmovaps zmm27,zmm6
  a092e8:	62 41 0c 40 5c f3    	vsubps zmm30,zmm30,zmm11
  a092ee:	62 f1 64 48 58 e2    	vaddps zmm4,zmm3,zmm2
  a092f4:	62 71 64 48 5c f2    	vsubps zmm14,zmm3,zmm2
  a092fa:	62 31 74 48 58 dc    	vaddps zmm11,zmm1,zmm20
  a09300:	62 91 54 48 5c da    	vsubps zmm3,zmm5,zmm26
  a09306:	62 61 7c 48 28 d6    	vmovaps zmm26,zmm6
  a0930c:	62 51 14 48 5c ff    	vsubps zmm15,zmm13,zmm15
  a09312:	62 e1 7c 48 28 ce    	vmovaps zmm17,zmm6
  a09318:	62 21 34 40 5c ca    	vsubps zmm25,zmm25,zmm18
  a0931e:	62 e1 7c 48 28 d6    	vmovaps zmm18,zmm6
  a09324:	62 f1 5c 40 5c c9    	vsubps zmm1,zmm20,zmm1
  a0932a:	62 81 04 48 58 e1    	vaddps zmm20,zmm15,zmm25
  a09330:	62 51 1c 40 5c c9    	vsubps zmm9,zmm28,zmm9
  a09336:	62 31 64 48 58 c4    	vaddps zmm8,zmm3,zmm20
  a0933c:	62 d1 44 48 5c fa    	vsubps zmm7,zmm7,zmm10
  a09342:	62 71 34 48 58 d7    	vaddps zmm10,zmm9,zmm7
  a09348:	62 e2 4d 48 ac e3    	vfnmadd213ps zmm20,zmm6,zmm3
  a0934e:	62 f1 7c 48 28 de    	vmovaps zmm3,zmm6
  a09354:	62 61 7c 48 28 e6    	vmovaps zmm28,zmm6
  a0935a:	62 f2 2d 48 ac f1    	vfnmadd213ps zmm6,zmm10,zmm1
  a09360:	62 c1 74 48 58 da    	vaddps zmm19,zmm1,zmm10
  a09366:	62 91 3c 40 58 ed    	vaddps zmm5,zmm24,zmm29
  a0936c:	62 01 3c 40 5c c5    	vsubps zmm24,zmm24,zmm29
  a09372:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a09379:	ff 
  a0937a:	62 01 7c 48 58 ef    	vaddps zmm29,zmm0,zmm31
  a09380:	62 01 7c 48 5c ff    	vsubps zmm31,zmm0,zmm31
  a09386:	62 22 45 40 ac de    	vfnmadd213ps zmm27,zmm23,zmm22
  a0938c:	62 f2 7d 48 18 05 3e 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff66bf3e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a09393:	bf 66 ff 
  a09396:	62 71 7c 48 59 54 24 	vmulps zmm10,zmm0,ZMMWORD PTR [rsp+0xc0]
  a0939d:	03 
  a0939e:	62 d1 24 40 58 ca    	vaddps zmm1,zmm27,zmm10
  a093a4:	62 51 24 40 5c ea    	vsubps zmm13,zmm27,zmm10
  a093aa:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x80]
  a093b1:	02 
  a093b2:	62 42 6d 48 ac d3    	vfnmadd213ps zmm26,zmm2,zmm11
  a093b8:	62 71 7c 40 59 d0    	vmulps zmm10,zmm16,zmm0
  a093be:	62 41 2c 40 5c da    	vsubps zmm27,zmm26,zmm10
  a093c4:	62 c1 2c 40 58 c2    	vaddps zmm16,zmm26,zmm10
  a093ca:	62 c2 5d 48 ac cc    	vfnmadd213ps zmm17,zmm4,zmm12
  a093d0:	62 71 1c 48 58 d4    	vaddps zmm10,zmm12,zmm4
  a093d6:	62 82 55 40 ac d6    	vfnmadd213ps zmm18,zmm21,zmm30
  a093dc:	62 31 0c 40 58 e5    	vaddps zmm12,zmm30,zmm21
  a093e2:	62 f1 34 48 5c e7    	vsubps zmm4,zmm9,zmm7
  a093e8:	62 91 04 48 5c f9    	vsubps zmm7,zmm15,zmm25
  a093ee:	62 e1 7c 48 59 6c 24 	vmulps zmm21,zmm0,ZMMWORD PTR [rsp+0x40]
  a093f5:	01 
  a093f6:	62 61 0c 48 59 c8    	vmulps zmm25,zmm14,zmm0
  a093fc:	62 61 7c 48 10 34 24 	vmovups zmm30,ZMMWORD PTR [rsp]
  a09403:	62 92 15 40 ac de    	vfnmadd213ps zmm3,zmm29,zmm30
  a09409:	62 71 3c 40 59 c8    	vmulps zmm9,zmm24,zmm0
  a0940f:	62 71 04 40 59 f8    	vmulps zmm15,zmm31,zmm0
  a09415:	62 61 5c 48 59 c0    	vmulps zmm24,zmm4,zmm0
  a0941b:	62 f1 44 48 59 c0    	vmulps zmm0,zmm7,zmm0
  a09421:	62 41 64 48 58 d1    	vaddps zmm26,zmm3,zmm9
  a09427:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp-0x80]
  a0942e:	fe 
  a0942f:	62 62 55 48 ac e7    	vfnmadd213ps zmm28,zmm5,zmm7
  a09435:	62 51 64 48 5c f1    	vsubps zmm14,zmm3,zmm9
  a0943b:	62 41 1c 40 5c ff    	vsubps zmm31,zmm28,zmm15
  a09441:	62 51 1c 40 58 ff    	vaddps zmm15,zmm28,zmm15
  a09447:	62 31 4c 40 58 cf    	vaddps zmm9,zmm22,zmm23
  a0944d:	62 e1 24 48 58 fa    	vaddps zmm23,zmm11,zmm2
  a09453:	62 a1 74 40 5c f5    	vsubps zmm22,zmm17,zmm21
  a09459:	62 b1 74 40 58 e5    	vaddps zmm4,zmm17,zmm21
  a0945f:	62 81 6c 40 58 c9    	vaddps zmm17,zmm18,zmm25
  a09465:	62 01 6c 40 5c c9    	vsubps zmm25,zmm18,zmm25
  a0946b:	62 81 5c 40 58 d0    	vaddps zmm18,zmm20,zmm24
  a09471:	62 11 5c 40 5c d8    	vsubps zmm11,zmm20,zmm24
  a09477:	62 e1 4c 48 5c e0    	vsubps zmm20,zmm6,zmm0
  a0947d:	62 f1 4c 48 58 d8    	vaddps zmm3,zmm6,zmm0
  a09483:	62 91 0c 40 58 f5    	vaddps zmm6,zmm30,zmm29
  a09489:	62 f1 44 48 58 d5    	vaddps zmm2,zmm7,zmm5
  a0948f:	62 f1 7c 48 28 05 27 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff685427]        # 8e8c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bd70>
  a09496:	54 68 ff 
  a09499:	62 b3 7d 48 19 f5 02 	vextractf32x4 xmm21,zmm6,0x2
  a094a0:	62 f2 7d 48 7f f2    	vpermt2ps zmm6,zmm0,zmm2
  a094a6:	62 f1 7c 48 11 36    	vmovups ZMMWORD PTR [rsi],zmm6
  a094ac:	62 f3 7d 48 19 d2 02 	vextractf32x4 xmm2,zmm2,0x2
  a094b3:	62 f1 54 00 14 d2    	vunpcklps xmm2,xmm21,xmm2
  a094b9:	c5 f8 11 56 40       	vmovups XMMWORD PTR [rsi+0x40],xmm2
  a094be:	62 f3 7d 48 19 ca 02 	vextractf32x4 xmm2,zmm1,0x2
  a094c5:	62 92 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm27
  a094cb:	62 f1 7c 48 11 8e 50 	vmovups ZMMWORD PTR [rsi+0x50],zmm1
  a094d2:	00 00 00 
  a094d5:	62 63 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm27,0x2
  a094dc:	c5 e8 14 c9          	vunpcklps xmm1,xmm2,xmm1
  a094e0:	c5 f8 11 8e 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm1
  a094e7:	00 
  a094e8:	62 e3 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm22,0x2
  a094ef:	62 a2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm17
  a094f5:	62 e1 7c 48 11 b6 a0 	vmovups ZMMWORD PTR [rsi+0xa0],zmm22
  a094fc:	00 00 00 
  a094ff:	62 e3 7d 48 19 ca 02 	vextractf32x4 xmm2,zmm17,0x2
  a09506:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a0950a:	c5 f8 11 8e e0 00 00 	vmovups XMMWORD PTR [rsi+0xe0],xmm1
  a09511:	00 
  a09512:	62 73 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm8,0x2
  a09519:	62 32 7d 48 7f c3    	vpermt2ps zmm8,zmm0,zmm19
  a0951f:	62 71 7c 48 11 86 f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm8
  a09526:	00 00 00 
  a09529:	62 e3 7d 48 19 da 02 	vextractf32x4 xmm2,zmm19,0x2
  a09530:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a09534:	c5 f8 11 8e 30 01 00 	vmovups XMMWORD PTR [rsi+0x130],xmm1
  a0953b:	00 
  a0953c:	62 63 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm26,0x2
  a09543:	62 02 7d 48 7f d7    	vpermt2ps zmm26,zmm0,zmm31
  a09549:	62 61 7c 48 11 56 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm26
  a09550:	62 63 7d 48 19 fa 02 	vextractf32x4 xmm2,zmm31,0x2
  a09557:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a0955b:	c5 f8 11 8e 80 01 00 	vmovups XMMWORD PTR [rsi+0x180],xmm1
  a09562:	00 
  a09563:	62 73 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm13,0x2
  a0956a:	62 32 7d 48 7f e8    	vpermt2ps zmm13,zmm0,zmm16
  a09570:	62 71 7c 48 11 ae 90 	vmovups ZMMWORD PTR [rsi+0x190],zmm13
  a09577:	01 00 00 
  a0957a:	62 e3 7d 48 19 c2 02 	vextractf32x4 xmm2,zmm16,0x2
  a09581:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a09585:	c5 f8 11 8e d0 01 00 	vmovups XMMWORD PTR [rsi+0x1d0],xmm1
  a0958c:	00 
  a0958d:	62 73 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm10,0x2
  a09594:	62 52 7d 48 7f d4    	vpermt2ps zmm10,zmm0,zmm12
  a0959a:	62 71 7c 48 11 96 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm10
  a095a1:	01 00 00 
  a095a4:	62 73 7d 48 19 e2 02 	vextractf32x4 xmm2,zmm12,0x2
  a095ab:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a095af:	c5 f8 11 8e 20 02 00 	vmovups XMMWORD PTR [rsi+0x220],xmm1
  a095b6:	00 
  a095b7:	62 e3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm18,0x2
  a095be:	62 a2 7d 48 7f d4    	vpermt2ps zmm18,zmm0,zmm20
  a095c4:	62 e1 7c 48 11 96 30 	vmovups ZMMWORD PTR [rsi+0x230],zmm18
  a095cb:	02 00 00 
  a095ce:	62 e3 7d 48 19 e2 02 	vextractf32x4 xmm2,zmm20,0x2
  a095d5:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a095d9:	c5 f8 11 8e 70 02 00 	vmovups XMMWORD PTR [rsi+0x270],xmm1
  a095e0:	00 
  a095e1:	62 73 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm14,0x2
  a095e8:	62 52 7d 48 7f f7    	vpermt2ps zmm14,zmm0,zmm15
  a095ee:	62 71 7c 48 11 76 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm14
  a095f5:	62 73 7d 48 19 fa 02 	vextractf32x4 xmm2,zmm15,0x2
  a095fc:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a09600:	c5 f8 11 8e c0 02 00 	vmovups XMMWORD PTR [rsi+0x2c0],xmm1
  a09607:	00 
  a09608:	62 73 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm9,0x2
  a0960f:	62 32 7d 48 7f cf    	vpermt2ps zmm9,zmm0,zmm23
  a09615:	62 71 7c 48 11 8e d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm9
  a0961c:	02 00 00 
  a0961f:	62 e3 7d 48 19 fa 02 	vextractf32x4 xmm2,zmm23,0x2
  a09626:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a0962a:	c5 f8 11 8e 10 03 00 	vmovups XMMWORD PTR [rsi+0x310],xmm1
  a09631:	00 
  a09632:	62 f3 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm4,0x2
  a09639:	62 92 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm25
  a0963f:	62 f1 7c 48 11 a6 20 	vmovups ZMMWORD PTR [rsi+0x320],zmm4
  a09646:	03 00 00 
  a09649:	62 63 7d 48 19 ca 02 	vextractf32x4 xmm2,zmm25,0x2
  a09650:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a09654:	c5 f8 11 8e 60 03 00 	vmovups XMMWORD PTR [rsi+0x360],xmm1
  a0965b:	00 
  a0965c:	62 f2 25 48 77 c3    	vpermi2ps zmm0,zmm11,zmm3
  a09662:	62 f1 7c 48 11 86 70 	vmovups ZMMWORD PTR [rsi+0x370],zmm0
  a09669:	03 00 00 
  a0966c:	62 f3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm3,0x2
  a09673:	62 73 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm11,0x2
  a0967a:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a0967e:	c5 f8 11 86 b0 03 00 	vmovups XMMWORD PTR [rsi+0x3b0],xmm0
  a09685:	00 
  a09686:	48 81 c4 08 01 00 00 	add    rsp,0x108
  a0968d:	c5 f8 77             	vzeroupper
  a09690:	c3                   	ret
