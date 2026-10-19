
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a5f7c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a5f7c0:	62 f1 7c 48 28 05 b6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6677b6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5f7c7:	77 66 ff 
  a5f7ca:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a5f7ce:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a5f7d2:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a5f7d8:	62 f1 7c 48 28 1d 1e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff66771e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5f7df:	77 66 ff 
  a5f7e2:	62 f1 7c 48 28 25 54 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff667754]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a5f7e9:	77 66 ff 
  a5f7ec:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a5f7f2:	62 f2 65 48 7f ea    	vpermt2ps zmm5,zmm3,zmm2
  a5f7f8:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a5f7fe:	62 f2 5d 48 7f f2    	vpermt2ps zmm6,zmm4,zmm2
  a5f804:	62 f1 7c 48 28 3d f2 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6675f2]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5f80b:	75 66 ff 
  a5f80e:	62 71 7c 48 28 05 28 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff667628]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5f815:	76 66 ff 
  a5f818:	48 6b c2 78          	imul   rax,rdx,0x78
  a5f81c:	31 d2                	xor    edx,edx
  a5f81e:	62 71 7c 48 28 0d 58 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff634258]        # 93a80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20f30>
  a5f825:	42 63 ff 
  a5f828:	62 72 7d 48 18 15 2e 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff615c2e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a5f82f:	5c 61 ff 
  a5f832:	62 72 7d 48 18 1d 98 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff615a98]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a5f839:	5a 61 ff 
  a5f83c:	62 72 7d 48 18 25 a2 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff615ea2]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a5f843:	5e 61 ff 
  a5f846:	62 72 7d 48 18 2d f4 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff615df4]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a5f84d:	5d 61 ff 
  a5f850:	62 72 7d 48 18 35 fe 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff615efe]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a5f857:	5e 61 ff 
  a5f85a:	62 71 7c 48 28 3d 5c 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff63425c]        # 93ac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20f70>
  a5f861:	42 63 ff 
  a5f864:	62 e2 7d 48 18 05 32 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff615b32]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a5f86b:	5b 61 ff 
  a5f86e:	62 e1 7c 28 28 0d 48 	vmovaps ymm17,YMMWORD PTR [rip+0xffffffffff618a48]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a5f875:	8a 61 ff 
  a5f878:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  a5f87f:	00 
  a5f880:	62 e1 ff 08 10 54 17 	vmovsd xmm18,QWORD PTR [rdi+rdx*1+0x20]
  a5f887:	04 
  a5f888:	62 e1 7c 28 10 1c 17 	vmovups ymm19,YMMWORD PTR [rdi+rdx*1]
  a5f88f:	62 e1 7c 28 10 a4 17 	vmovups ymm20,YMMWORD PTR [rdi+rdx*1+0x28]
  a5f896:	28 00 00 00 
  a5f89a:	62 e1 7c 28 10 ac 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1+0x50]
  a5f8a1:	50 00 00 00 
  a5f8a5:	62 a3 e5 40 1a d2 01 	vinsertf64x4 zmm18,zmm19,ymm18,0x1
  a5f8ac:	62 a1 7c 48 28 f2    	vmovaps zmm22,zmm18
  a5f8b2:	62 e2 35 48 7f f1    	vpermt2ps zmm22,zmm9,zmm1
  a5f8b8:	62 e2 05 48 7f d1    	vpermt2ps zmm18,zmm15,zmm1
  a5f8be:	62 e1 ff 08 10 5c 17 	vmovsd xmm19,QWORD PTR [rdi+rdx*1+0x48]
  a5f8c5:	09 
  a5f8c6:	62 a3 dd 40 1a e3 01 	vinsertf64x4 zmm20,zmm20,ymm19,0x1
  a5f8cd:	62 a1 7c 48 28 fc    	vmovaps zmm23,zmm20
  a5f8d3:	62 e2 35 48 7f f9    	vpermt2ps zmm23,zmm9,zmm1
  a5f8d9:	62 e2 05 48 7f e1    	vpermt2ps zmm20,zmm15,zmm1
  a5f8df:	62 e1 ff 08 10 5c 17 	vmovsd xmm19,QWORD PTR [rdi+rdx*1+0x70]
  a5f8e6:	0e 
  a5f8e7:	62 a3 d5 40 1a eb 01 	vinsertf64x4 zmm21,zmm21,ymm19,0x1
  a5f8ee:	62 21 7c 48 28 c5    	vmovaps zmm24,zmm21
  a5f8f4:	62 62 35 48 7f c1    	vpermt2ps zmm24,zmm9,zmm1
  a5f8fa:	62 e2 05 48 7f e9    	vpermt2ps zmm21,zmm15,zmm1
  a5f900:	62 01 44 40 58 c8    	vaddps zmm25,zmm23,zmm24
  a5f906:	62 01 4c 40 58 d1    	vaddps zmm26,zmm22,zmm25
  a5f90c:	62 21 5c 40 58 dd    	vaddps zmm27,zmm20,zmm21
  a5f912:	62 81 6c 40 58 db    	vaddps zmm19,zmm18,zmm27
  a5f918:	62 82 2d 48 bc f1    	vfnmadd231ps zmm22,zmm10,zmm25
  a5f91e:	62 a1 5c 40 5c e5    	vsubps zmm20,zmm20,zmm21
  a5f924:	62 c1 5c 40 59 e3    	vmulps zmm20,zmm20,zmm11
  a5f92a:	62 21 4c 40 58 cc    	vaddps zmm25,zmm22,zmm20
  a5f930:	62 82 2d 48 bc d3    	vfnmadd231ps zmm18,zmm10,zmm27
  a5f936:	62 81 44 40 5c e8    	vsubps zmm21,zmm23,zmm24
  a5f93c:	62 c1 54 40 59 eb    	vmulps zmm21,zmm21,zmm11
  a5f942:	62 21 6c 40 5c c5    	vsubps zmm24,zmm18,zmm21
  a5f948:	62 a1 4c 40 5c e4    	vsubps zmm20,zmm22,zmm20
  a5f94e:	62 21 54 40 58 da    	vaddps zmm27,zmm21,zmm18
  a5f954:	62 62 7d 48 7f d1    	vpermt2ps zmm26,zmm0,zmm1
  a5f95a:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a5f960:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a5f966:	62 81 7c 48 28 d2    	vmovaps zmm18,zmm26
  a5f96c:	62 e2 65 48 7f d2    	vpermt2ps zmm18,zmm3,zmm2
  a5f972:	62 62 5d 48 7f d2    	vpermt2ps zmm26,zmm4,zmm2
  a5f978:	62 81 7c 48 28 f1    	vmovaps zmm22,zmm25
  a5f97e:	62 e2 65 48 7f f2    	vpermt2ps zmm22,zmm3,zmm2
  a5f984:	62 62 5d 48 7f ca    	vpermt2ps zmm25,zmm4,zmm2
  a5f98a:	62 21 7c 48 28 e4    	vmovaps zmm28,zmm20
  a5f990:	62 62 65 48 7f e2    	vpermt2ps zmm28,zmm3,zmm2
  a5f996:	62 e2 5d 48 7f e2    	vpermt2ps zmm20,zmm4,zmm2
  a5f99c:	62 a1 ad 40 14 ec    	vunpcklpd zmm21,zmm26,zmm20
  a5f9a2:	62 81 ed 40 14 fc    	vunpcklpd zmm23,zmm18,zmm28
  a5f9a8:	62 81 ed 40 15 e4    	vunpckhpd zmm20,zmm18,zmm28
  a5f9ae:	62 61 cd 40 14 d5    	vunpcklpd zmm26,zmm22,zmm5
  a5f9b4:	62 61 cd 40 15 e5    	vunpckhpd zmm28,zmm22,zmm5
  a5f9ba:	62 61 b5 40 14 ce    	vunpcklpd zmm25,zmm25,zmm6
  a5f9c0:	62 a1 7c 48 28 d7    	vmovaps zmm18,zmm23
  a5f9c6:	62 82 45 48 7f d2    	vpermt2ps zmm18,zmm7,zmm26
  a5f9cc:	62 82 3d 48 7f fa    	vpermt2ps zmm23,zmm8,zmm26
  a5f9d2:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a5f9d8:	62 82 45 48 7f f4    	vpermt2ps zmm22,zmm7,zmm28
  a5f9de:	62 82 3d 48 7f e4    	vpermt2ps zmm20,zmm8,zmm28
  a5f9e4:	62 82 45 48 7f e9    	vpermt2ps zmm21,zmm7,zmm25
  a5f9ea:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a5f9f0:	62 62 7d 48 7f c1    	vpermt2ps zmm24,zmm0,zmm1
  a5f9f6:	62 62 7d 48 7f d9    	vpermt2ps zmm27,zmm0,zmm1
  a5f9fc:	62 21 7c 48 28 cb    	vmovaps zmm25,zmm19
  a5fa02:	62 62 65 48 7f ca    	vpermt2ps zmm25,zmm3,zmm2
  a5fa08:	62 e2 5d 48 7f da    	vpermt2ps zmm19,zmm4,zmm2
  a5fa0e:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a5fa14:	62 62 65 48 7f d2    	vpermt2ps zmm26,zmm3,zmm2
  a5fa1a:	62 62 5d 48 7f c2    	vpermt2ps zmm24,zmm4,zmm2
  a5fa20:	62 01 7c 48 28 e3    	vmovaps zmm28,zmm27
  a5fa26:	62 62 65 48 7f e2    	vpermt2ps zmm28,zmm3,zmm2
  a5fa2c:	62 62 5d 48 7f da    	vpermt2ps zmm27,zmm4,zmm2
  a5fa32:	62 01 e5 40 14 db    	vunpcklpd zmm27,zmm19,zmm27
  a5fa38:	62 01 b5 40 14 ec    	vunpcklpd zmm29,zmm25,zmm28
  a5fa3e:	62 01 b5 40 15 cc    	vunpckhpd zmm25,zmm25,zmm28
  a5fa44:	62 61 ad 40 14 e5    	vunpcklpd zmm28,zmm26,zmm5
  a5fa4a:	62 61 ad 40 15 d5    	vunpckhpd zmm26,zmm26,zmm5
  a5fa50:	62 61 bd 40 14 c6    	vunpcklpd zmm24,zmm24,zmm6
  a5fa56:	62 81 7c 48 28 dd    	vmovaps zmm19,zmm29
  a5fa5c:	62 82 45 48 7f dc    	vpermt2ps zmm19,zmm7,zmm28
  a5fa62:	62 02 3d 48 7f ec    	vpermt2ps zmm29,zmm8,zmm28
  a5fa68:	62 01 7c 48 28 e1    	vmovaps zmm28,zmm25
  a5fa6e:	62 02 45 48 7f e2    	vpermt2ps zmm28,zmm7,zmm26
  a5fa74:	62 02 3d 48 7f ca    	vpermt2ps zmm25,zmm8,zmm26
  a5fa7a:	62 02 45 48 7f d8    	vpermt2ps zmm27,zmm7,zmm24
  a5fa80:	62 61 7c 48 10 41 02 	vmovups zmm24,ZMMWORD PTR [rcx+0x80]
  a5fa87:	62 61 7c 48 10 51 03 	vmovups zmm26,ZMMWORD PTR [rcx+0xc0]
  a5fa8e:	62 01 44 40 59 f0    	vmulps zmm30,zmm23,zmm24
  a5fa94:	62 02 15 40 bc f2    	vfnmadd231ps zmm30,zmm29,zmm26
  a5fa9a:	62 01 14 40 59 c0    	vmulps zmm24,zmm29,zmm24
  a5faa0:	62 61 7c 48 10 69 08 	vmovups zmm29,ZMMWORD PTR [rcx+0x200]
  a5faa7:	62 22 2d 40 b8 c7    	vfmadd231ps zmm24,zmm26,zmm23
  a5faad:	62 e1 7c 48 10 79 09 	vmovups zmm23,ZMMWORD PTR [rcx+0x240]
  a5fab4:	62 01 54 40 59 d5    	vmulps zmm26,zmm21,zmm29
  a5faba:	62 22 25 40 bc d7    	vfnmadd231ps zmm26,zmm27,zmm23
  a5fac0:	62 01 24 40 59 dd    	vmulps zmm27,zmm27,zmm29
  a5fac6:	62 61 7c 48 10 69 04 	vmovups zmm29,ZMMWORD PTR [rcx+0x100]
  a5facd:	62 22 45 40 b8 dd    	vfmadd231ps zmm27,zmm23,zmm21
  a5fad3:	62 e1 7c 48 10 69 05 	vmovups zmm21,ZMMWORD PTR [rcx+0x140]
  a5fada:	62 81 4c 40 59 fd    	vmulps zmm23,zmm22,zmm29
  a5fae0:	62 a2 1d 40 bc fd    	vfnmadd231ps zmm23,zmm28,zmm21
  a5fae6:	62 01 1c 40 59 e5    	vmulps zmm28,zmm28,zmm29
  a5faec:	62 61 7c 48 10 69 06 	vmovups zmm29,ZMMWORD PTR [rcx+0x180]
  a5faf3:	62 22 55 40 b8 e6    	vfmadd231ps zmm28,zmm21,zmm22
  a5faf9:	62 e1 7c 48 10 69 07 	vmovups zmm21,ZMMWORD PTR [rcx+0x1c0]
  a5fb00:	62 81 5c 40 59 f5    	vmulps zmm22,zmm20,zmm29
  a5fb06:	62 a2 35 40 bc f5    	vfnmadd231ps zmm22,zmm25,zmm21
  a5fb0c:	62 01 34 40 59 cd    	vmulps zmm25,zmm25,zmm29
  a5fb12:	62 22 55 40 b8 cc    	vfmadd231ps zmm25,zmm21,zmm20
  a5fb18:	62 01 0c 40 58 ea    	vaddps zmm29,zmm30,zmm26
  a5fb1e:	62 01 3c 40 58 fb    	vaddps zmm31,zmm24,zmm27
  a5fb24:	62 01 3c 40 5c c3    	vsubps zmm24,zmm24,zmm27
  a5fb2a:	62 01 1c 40 58 d9    	vaddps zmm27,zmm28,zmm25
  a5fb30:	62 01 1c 40 5c c9    	vsubps zmm25,zmm28,zmm25
  a5fb36:	62 21 44 40 58 e6    	vaddps zmm28,zmm23,zmm22
  a5fb3c:	62 01 0c 40 5c d2    	vsubps zmm26,zmm30,zmm26
  a5fb42:	62 c1 34 40 59 e6    	vmulps zmm20,zmm25,zmm14
  a5fb48:	62 a2 3d 40 b8 e0    	vfmadd231ps zmm20,zmm24,zmm16
  a5fb4e:	62 21 44 40 5c f6    	vsubps zmm30,zmm23,zmm22
  a5fb54:	62 c1 7c 48 28 ec    	vmovaps zmm21,zmm12
  a5fb5a:	62 a2 05 40 a8 eb    	vfmadd213ps zmm21,zmm31,zmm19
  a5fb60:	62 c1 3c 40 59 fe    	vmulps zmm23,zmm24,zmm14
  a5fb66:	62 82 7d 40 bc f9    	vfnmadd231ps zmm23,zmm16,zmm25
  a5fb6c:	62 c1 0c 40 59 f6    	vmulps zmm22,zmm30,zmm14
  a5fb72:	62 a2 2d 40 b8 f0    	vfmadd231ps zmm22,zmm26,zmm16
  a5fb78:	62 41 2c 40 59 c6    	vmulps zmm24,zmm26,zmm14
  a5fb7e:	62 02 7d 40 bc c6    	vfnmadd231ps zmm24,zmm16,zmm30
  a5fb84:	62 41 7c 48 28 cd    	vmovaps zmm25,zmm13
  a5fb8a:	62 22 05 40 ac cb    	vfnmadd213ps zmm25,zmm31,zmm19
  a5fb90:	62 a1 04 20 58 db    	vaddps ymm19,ymm31,ymm19
  a5fb96:	62 41 7c 48 28 d4    	vmovaps zmm26,zmm12
  a5fb9c:	62 22 15 40 a8 d2    	vfmadd213ps zmm26,zmm29,zmm18
  a5fba2:	62 c2 25 40 bc ed    	vfnmadd231ps zmm21,zmm27,zmm13
  a5fba8:	62 42 25 40 b8 cc    	vfmadd231ps zmm25,zmm27,zmm12
  a5fbae:	62 81 64 20 58 db    	vaddps ymm19,ymm19,ymm27
  a5fbb4:	62 41 7c 48 28 dd    	vmovaps zmm27,zmm13
  a5fbba:	62 22 15 40 ac da    	vfnmadd213ps zmm27,zmm29,zmm18
  a5fbc0:	62 81 6c 00 58 d5    	vaddps xmm18,xmm18,xmm29
  a5fbc6:	62 42 1d 40 bc d5    	vfnmadd231ps zmm26,zmm28,zmm13
  a5fbcc:	62 42 1d 40 b8 dc    	vfmadd231ps zmm27,zmm28,zmm12
  a5fbd2:	62 81 6c 00 58 d4    	vaddps xmm18,xmm18,xmm28
  a5fbd8:	62 a2 75 20 7f d3    	vpermt2ps ymm18,ymm17,ymm19
  a5fbde:	62 e1 7c 08 11 14 16 	vmovups XMMWORD PTR [rsi+rdx*1],xmm18
  a5fbe5:	62 a3 7d 28 19 d2 01 	vextractf32x4 xmm18,ymm18,0x1
  a5fbec:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm18
  a5fbf3:	02 
  a5fbf4:	62 a1 54 20 5c d6    	vsubps ymm18,ymm21,ymm22
  a5fbfa:	62 a1 2c 00 58 dc    	vaddps xmm19,xmm26,xmm20
  a5fc00:	62 a2 75 20 7f da    	vpermt2ps ymm19,ymm17,ymm18
  a5fc06:	62 e1 7c 08 11 9c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm19
  a5fc0d:	18 00 00 00 
  a5fc11:	62 a3 7d 28 19 da 01 	vextractf32x4 xmm18,ymm19,0x1
  a5fc18:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm18
  a5fc1f:	05 
  a5fc20:	62 81 34 20 5c d0    	vsubps ymm18,ymm25,ymm24
  a5fc26:	62 a1 24 00 58 df    	vaddps xmm19,xmm27,xmm23
  a5fc2c:	62 a2 75 20 7f da    	vpermt2ps ymm19,ymm17,ymm18
  a5fc32:	62 e1 7c 08 11 5c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm19
  a5fc39:	03 
  a5fc3a:	62 a3 7d 28 19 da 01 	vextractf32x4 xmm18,ymm19,0x1
  a5fc41:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm18
  a5fc48:	08 
  a5fc49:	62 81 34 20 58 d0    	vaddps ymm18,ymm25,ymm24
  a5fc4f:	62 a1 24 00 5c df    	vsubps xmm19,xmm27,xmm23
  a5fc55:	62 a2 75 20 7f da    	vpermt2ps ymm19,ymm17,ymm18
  a5fc5b:	62 e1 7c 08 11 9c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm19
  a5fc62:	48 00 00 00 
  a5fc66:	62 a3 7d 28 19 da 01 	vextractf32x4 xmm18,ymm19,0x1
  a5fc6d:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm18
  a5fc74:	0b 
  a5fc75:	62 a1 54 20 58 d6    	vaddps ymm18,ymm21,ymm22
  a5fc7b:	62 a1 2c 00 5c dc    	vsubps xmm19,xmm26,xmm20
  a5fc81:	62 a2 75 20 7f da    	vpermt2ps ymm19,ymm17,ymm18
  a5fc87:	62 e1 7c 08 11 5c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm19
  a5fc8e:	06 
  a5fc8f:	62 a3 7d 28 19 da 01 	vextractf32x4 xmm18,ymm19,0x1
  a5fc96:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm18
  a5fc9d:	0e 
  a5fc9e:	48 83 c2 78          	add    rdx,0x78
  a5fca2:	48 39 d0             	cmp    rax,rdx
  a5fca5:	0f 85 d5 fb ff ff    	jne    a5f880 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0xc0>
  a5fcab:	c5 f8 77             	vzeroupper
  a5fcae:	c3                   	ret
