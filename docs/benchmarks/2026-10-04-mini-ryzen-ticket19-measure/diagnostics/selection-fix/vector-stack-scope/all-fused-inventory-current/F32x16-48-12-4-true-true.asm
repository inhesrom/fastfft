
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a1c640 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a1c640:	55                   	push   rbp
  a1c641:	48 89 e5             	mov    rbp,rsp
  a1c644:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a1c648:	48 81 ec 40 02 00 00 	sub    rsp,0x240
  a1c64f:	48 c1 e2 07          	shl    rdx,0x7
  a1c653:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a1c657:	31 d2                	xor    edx,edx
  a1c659:	4c 8d 84 24 c0 01 00 	lea    r8,[rsp+0x1c0]
  a1c660:	00 
  a1c661:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a1c666:	62 a1 44 00 57 ff    	vxorps xmm23,xmm23,xmm23
  a1c66c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  a1c670:	c6 84 24 c0 01 00 00 	mov    BYTE PTR [rsp+0x1c0],0x0
  a1c677:	00 
  a1c678:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a1c67d:	c5 7c 10 34 17       	vmovups ymm14,YMMWORD PTR [rdi+rdx*1]
  a1c682:	c5 7c 10 6c 17 20    	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x20]
  a1c688:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x40]
  a1c68f:	02 
  a1c690:	c5 7c 10 5c 17 60    	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x60]
  a1c696:	62 51 7c 48 28 e6    	vmovaps zmm12,zmm14
  a1c69c:	62 f1 7c 48 28 25 1a 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff67341a]        # 8fac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cf70>
  a1c6a3:	34 67 ff 
  a1c6a6:	62 32 5d 48 7f f7    	vpermt2ps zmm14,zmm4,zmm23
  a1c6ac:	62 c1 7c 48 28 cd    	vmovaps zmm17,zmm13
  a1c6b2:	62 f1 7c 48 28 05 c4 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6733c4]        # 8fa80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cf30>
  a1c6b9:	33 67 ff 
  a1c6bc:	62 32 7d 48 7f e7    	vpermt2ps zmm12,zmm0,zmm23
  a1c6c2:	62 a2 7d 48 7f cf    	vpermt2ps zmm17,zmm0,zmm23
  a1c6c8:	62 32 5d 48 7f ef    	vpermt2ps zmm13,zmm4,zmm23
  a1c6ce:	62 31 7c 48 28 f8    	vmovaps zmm15,zmm16
  a1c6d4:	62 32 7d 48 7f ff    	vpermt2ps zmm15,zmm0,zmm23
  a1c6da:	62 a2 5d 48 7f c7    	vpermt2ps zmm16,zmm4,zmm23
  a1c6e0:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a1c6e6:	62 32 5d 48 7f df    	vpermt2ps zmm11,zmm4,zmm23
  a1c6ec:	62 a2 7d 48 7f d7    	vpermt2ps zmm18,zmm0,zmm23
  a1c6f2:	62 e1 7c 28 10 74 17 	vmovups ymm22,YMMWORD PTR [rdi+rdx*1+0x80]
  a1c6f9:	04 
  a1c6fa:	62 a1 7c 48 28 e6    	vmovaps zmm20,zmm22
  a1c700:	62 a2 5d 48 7f f7    	vpermt2ps zmm22,zmm4,zmm23
  a1c706:	62 a2 7d 48 7f e7    	vpermt2ps zmm20,zmm0,zmm23
  a1c70c:	62 e1 7c 28 10 5c 17 	vmovups ymm19,YMMWORD PTR [rdi+rdx*1+0xa0]
  a1c713:	05 
  a1c714:	62 21 7c 48 28 fb    	vmovaps zmm31,zmm19
  a1c71a:	62 a2 5d 48 7f df    	vpermt2ps zmm19,zmm4,zmm23
  a1c720:	62 22 7d 48 7f ff    	vpermt2ps zmm31,zmm0,zmm23
  a1c726:	62 61 7c 28 10 54 17 	vmovups ymm26,YMMWORD PTR [rdi+rdx*1+0xc0]
  a1c72d:	06 
  a1c72e:	62 81 7c 48 28 ea    	vmovaps zmm21,zmm26
  a1c734:	62 22 5d 48 7f d7    	vpermt2ps zmm26,zmm4,zmm23
  a1c73a:	62 a2 7d 48 7f ef    	vpermt2ps zmm21,zmm0,zmm23
  a1c740:	62 61 7c 28 10 44 17 	vmovups ymm24,YMMWORD PTR [rdi+rdx*1+0xe0]
  a1c747:	07 
  a1c748:	62 01 7c 48 28 e0    	vmovaps zmm28,zmm24
  a1c74e:	62 22 5d 48 7f c7    	vpermt2ps zmm24,zmm4,zmm23
  a1c754:	62 22 7d 48 7f e7    	vpermt2ps zmm28,zmm0,zmm23
  a1c75a:	62 61 7c 28 10 74 17 	vmovups ymm30,YMMWORD PTR [rdi+rdx*1+0x100]
  a1c761:	08 
  a1c762:	62 01 7c 48 28 de    	vmovaps zmm27,zmm30
  a1c768:	62 22 5d 48 7f f7    	vpermt2ps zmm30,zmm4,zmm23
  a1c76e:	62 22 7d 48 7f df    	vpermt2ps zmm27,zmm0,zmm23
  a1c774:	c5 fc 10 94 17 20 01 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x120]
  a1c77b:	00 00 
  a1c77d:	62 61 7c 48 28 ca    	vmovaps zmm25,zmm2
  a1c783:	62 b2 5d 48 7f d7    	vpermt2ps zmm2,zmm4,zmm23
  a1c789:	62 22 7d 48 7f cf    	vpermt2ps zmm25,zmm0,zmm23
  a1c78f:	c5 fc 10 9c 17 40 01 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x140]
  a1c796:	00 00 
  a1c798:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a1c79e:	62 b2 5d 48 7f df    	vpermt2ps zmm3,zmm4,zmm23
  a1c7a4:	62 32 7d 48 7f cf    	vpermt2ps zmm9,zmm0,zmm23
  a1c7aa:	c5 fc 10 8c 17 60 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x160]
  a1c7b1:	00 00 
  a1c7b3:	62 71 7c 48 28 d1    	vmovaps zmm10,zmm1
  a1c7b9:	62 b2 5d 48 7f cf    	vpermt2ps zmm1,zmm4,zmm23
  a1c7bf:	62 32 7d 48 7f d7    	vpermt2ps zmm10,zmm0,zmm23
  a1c7c5:	62 91 0c 48 58 ea    	vaddps zmm5,zmm14,zmm26
  a1c7cb:	62 61 24 48 58 ea    	vaddps zmm29,zmm11,zmm2
  a1c7d1:	62 71 4c 40 58 c3    	vaddps zmm8,zmm22,zmm3
  a1c7d7:	62 d1 3c 40 58 fd    	vaddps zmm7,zmm24,zmm13
  a1c7dd:	62 b1 0c 40 58 e0    	vaddps zmm4,zmm30,zmm16
  a1c7e3:	62 e1 4c 40 5c f3    	vsubps zmm22,zmm22,zmm3
  a1c7e9:	62 b1 1c 40 58 d9    	vaddps zmm3,zmm28,zmm17
  a1c7ef:	62 a1 1c 40 5c c9    	vsubps zmm17,zmm28,zmm17
  a1c7f5:	62 b1 74 48 58 f3    	vaddps zmm6,zmm1,zmm19
  a1c7fb:	62 21 0c 40 5c e0    	vsubps zmm28,zmm30,zmm16
  a1c801:	62 91 2c 48 58 c7    	vaddps zmm0,zmm10,zmm31
  a1c807:	62 01 2c 48 5c f7    	vsubps zmm30,zmm10,zmm31
  a1c80d:	62 11 6c 40 58 d1    	vaddps zmm10,zmm18,zmm25
  a1c813:	62 01 0c 48 5c d2    	vsubps zmm26,zmm14,zmm26
  a1c819:	62 01 6c 40 5c f9    	vsubps zmm31,zmm18,zmm25
  a1c81f:	62 11 54 48 58 f5    	vaddps zmm14,zmm5,zmm29
  a1c825:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm14
  a1c82c:	05 
  a1c82d:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a1c833:	62 51 5c 40 58 f1    	vaddps zmm14,zmm20,zmm9
  a1c839:	62 51 5c 40 5c c9    	vsubps zmm9,zmm20,zmm9
  a1c83f:	62 81 14 48 5c e0    	vsubps zmm20,zmm13,zmm24
  a1c845:	62 f1 3c 48 58 ef    	vaddps zmm5,zmm8,zmm7
  a1c84b:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm5
  a1c852:	03 
  a1c853:	62 51 24 40 58 ef    	vaddps zmm13,zmm27,zmm15
  a1c859:	62 41 24 40 5c cf    	vsubps zmm25,zmm27,zmm15
  a1c85f:	62 71 64 40 5c f9    	vsubps zmm15,zmm19,zmm1
  a1c865:	62 f1 5c 48 58 ce    	vaddps zmm1,zmm4,zmm6
  a1c86b:	62 21 1c 48 58 c5    	vaddps zmm24,zmm12,zmm21
  a1c871:	62 31 1c 48 5c e5    	vsubps zmm12,zmm12,zmm21
  a1c877:	62 d1 6c 48 5c eb    	vsubps zmm5,zmm2,zmm11
  a1c87d:	62 41 3c 40 58 da    	vaddps zmm27,zmm24,zmm10
  a1c883:	62 e1 0c 48 58 db    	vaddps zmm19,zmm14,zmm3
  a1c889:	62 f1 3c 48 5c ff    	vsubps zmm7,zmm8,zmm7
  a1c88f:	62 f1 5c 48 5c e6    	vsubps zmm4,zmm4,zmm6
  a1c895:	62 e1 14 48 58 d0    	vaddps zmm18,zmm13,zmm0
  a1c89b:	62 31 4c 40 58 c1    	vaddps zmm8,zmm22,zmm17
  a1c8a1:	62 01 7c 40 5c ed    	vsubps zmm29,zmm16,zmm29
  a1c8a7:	62 51 5c 40 58 d9    	vaddps zmm11,zmm20,zmm9
  a1c8ad:	62 f1 0c 48 5c db    	vsubps zmm3,zmm14,zmm3
  a1c8b3:	62 81 04 48 58 e9    	vaddps zmm21,zmm15,zmm25
  a1c8b9:	62 71 14 48 5c e8    	vsubps zmm13,zmm13,zmm0
  a1c8bf:	62 31 24 48 5c f5    	vsubps zmm14,zmm11,zmm21
  a1c8c5:	62 b1 24 48 58 c5    	vaddps zmm0,zmm11,zmm21
  a1c8cb:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a1c8d2:	02 
  a1c8d3:	62 11 1c 40 58 de    	vaddps zmm11,zmm28,zmm30
  a1c8d9:	62 51 3c 40 5c d2    	vsubps zmm10,zmm24,zmm10
  a1c8df:	62 d1 3c 48 58 d3    	vaddps zmm2,zmm8,zmm11
  a1c8e5:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a1c8ec:	01 
  a1c8ed:	62 51 3c 48 5c c3    	vsubps zmm8,zmm8,zmm11
  a1c8f3:	62 f1 44 48 58 f4    	vaddps zmm6,zmm7,zmm4
  a1c8f9:	62 f1 44 48 5c c4    	vsubps zmm0,zmm7,zmm4
  a1c8ff:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a1c906:	06 
  a1c907:	62 d1 64 48 5c c5    	vsubps zmm0,zmm3,zmm13
  a1c90d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a1c914:	04 
  a1c915:	62 d1 64 48 58 dd    	vaddps zmm3,zmm3,zmm13
  a1c91b:	62 01 2c 40 58 c7    	vaddps zmm24,zmm26,zmm31
  a1c921:	62 01 2c 40 5c d7    	vsubps zmm26,zmm26,zmm31
  a1c927:	62 a1 4c 40 5c f1    	vsubps zmm22,zmm22,zmm17
  a1c92d:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0xc0]
  a1c934:	03 
  a1c935:	62 f1 24 48 58 c1    	vaddps zmm0,zmm11,zmm1
  a1c93b:	62 01 1c 40 5c e6    	vsubps zmm28,zmm28,zmm30
  a1c941:	62 41 54 48 58 f4    	vaddps zmm30,zmm5,zmm12
  a1c947:	62 f1 1c 48 5c fd    	vsubps zmm7,zmm12,zmm5
  a1c94d:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x140]
  a1c954:	05 
  a1c955:	62 71 5c 48 58 e8    	vaddps zmm13,zmm4,zmm0
  a1c95b:	62 31 34 48 5c cc    	vsubps zmm9,zmm9,zmm20
  a1c961:	62 b1 64 40 58 ea    	vaddps zmm5,zmm19,zmm18
  a1c967:	62 51 34 40 5c ff    	vsubps zmm15,zmm25,zmm15
  a1c96d:	62 e1 24 40 58 ed    	vaddps zmm21,zmm27,zmm5
  a1c973:	62 e2 7d 48 18 25 e3 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff658ae3]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a1c97a:	8a 65 ff 
  a1c97d:	62 f2 5d 40 ac c4    	vfnmadd213ps zmm0,zmm20,zmm4
  a1c983:	62 a1 7c 48 28 c4    	vmovaps zmm16,zmm20
  a1c989:	62 82 6d 48 ac c0    	vfnmadd213ps zmm16,zmm2,zmm24
  a1c98f:	62 62 7d 48 18 3d 3b 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff65893b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a1c996:	89 65 ff 
  a1c999:	62 11 0c 48 59 f7    	vmulps zmm14,zmm14,zmm31
  a1c99f:	62 b1 64 40 5c d2    	vsubps zmm2,zmm19,zmm18
  a1c9a5:	62 a1 7c 48 28 d4    	vmovaps zmm18,zmm20
  a1c9ab:	62 92 5d 40 ac eb    	vfnmadd213ps zmm5,zmm20,zmm27
  a1c9b1:	62 a1 0c 48 58 c8    	vaddps zmm17,zmm14,zmm16
  a1c9b7:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x80]
  a1c9be:	02 
  a1c9bf:	62 82 5d 48 ac d6    	vfnmadd213ps zmm18,zmm4,zmm30
  a1c9c5:	62 11 3c 48 59 c7    	vmulps zmm8,zmm8,zmm31
  a1c9cb:	62 e1 24 48 5c d9    	vsubps zmm19,zmm11,zmm1
  a1c9d1:	62 51 6c 40 5c e0    	vsubps zmm12,zmm18,zmm8
  a1c9d7:	62 41 7c 40 5c ce    	vsubps zmm25,zmm16,zmm14
  a1c9dd:	62 21 7c 48 28 dc    	vmovaps zmm27,zmm20
  a1c9e3:	62 02 4d 48 ac dd    	vfnmadd213ps zmm27,zmm6,zmm29
  a1c9e9:	62 51 6c 40 58 f0    	vaddps zmm14,zmm18,zmm8
  a1c9ef:	62 31 7c 48 28 c4    	vmovaps zmm8,zmm20
  a1c9f5:	62 71 14 40 58 de    	vaddps zmm11,zmm29,zmm6
  a1c9fb:	62 01 4c 40 58 ec    	vaddps zmm29,zmm22,zmm28
  a1ca01:	62 52 65 48 ac c2    	vfnmadd213ps zmm8,zmm3,zmm10
  a1ca07:	62 e1 2c 48 58 c3    	vaddps zmm16,zmm10,zmm3
  a1ca0d:	62 81 2c 40 58 d5    	vaddps zmm18,zmm26,zmm29
  a1ca13:	62 02 5d 40 ac ea    	vfnmadd213ps zmm29,zmm20,zmm26
  a1ca19:	62 d1 34 48 58 df    	vaddps zmm3,zmm9,zmm15
  a1ca1f:	62 d1 34 48 5c cf    	vsubps zmm1,zmm9,zmm15
  a1ca25:	62 71 44 48 58 fb    	vaddps zmm15,zmm7,zmm3
  a1ca2b:	62 f2 5d 40 ac df    	vfnmadd213ps zmm3,zmm20,zmm7
  a1ca31:	62 91 6c 48 59 d7    	vmulps zmm2,zmm2,zmm31
  a1ca37:	62 91 4c 40 5c f4    	vsubps zmm6,zmm22,zmm28
  a1ca3d:	62 71 7c 48 58 ca    	vaddps zmm9,zmm0,zmm2
  a1ca43:	62 11 64 40 59 d7    	vmulps zmm10,zmm19,zmm31
  a1ca49:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a1ca4f:	62 c1 54 48 5c e2    	vsubps zmm20,zmm5,zmm10
  a1ca55:	62 f1 2c 48 58 d5    	vaddps zmm2,zmm10,zmm5
  a1ca5b:	62 f1 3c 40 58 6c 24 	vaddps zmm5,zmm24,ZMMWORD PTR [rsp+0x40]
  a1ca62:	01 
  a1ca63:	62 f1 04 40 59 7c 24 	vmulps zmm7,zmm31,ZMMWORD PTR [rsp+0x100]
  a1ca6a:	04 
  a1ca6b:	62 71 0c 40 58 d4    	vaddps zmm10,zmm30,zmm4
  a1ca71:	62 e1 24 40 5c f7    	vsubps zmm22,zmm27,zmm7
  a1ca77:	62 f1 04 40 59 64 24 	vmulps zmm4,zmm31,ZMMWORD PTR [rsp+0x180]
  a1ca7e:	06 
  a1ca7f:	62 f1 24 40 58 ff    	vaddps zmm7,zmm27,zmm7
  a1ca85:	62 c1 5c 48 58 d8    	vaddps zmm19,zmm4,zmm8
  a1ca8b:	62 91 74 48 59 cf    	vmulps zmm1,zmm1,zmm31
  a1ca91:	62 f1 3c 48 5c e4    	vsubps zmm4,zmm8,zmm4
  a1ca97:	62 11 74 48 58 c5    	vaddps zmm8,zmm1,zmm29
  a1ca9d:	62 91 4c 48 59 f7    	vmulps zmm6,zmm6,zmm31
  a1caa3:	62 f1 14 40 5c c9    	vsubps zmm1,zmm29,zmm1
  a1caa9:	62 61 64 48 5c c6    	vsubps zmm24,zmm3,zmm6
  a1caaf:	62 f1 64 48 58 de    	vaddps zmm3,zmm3,zmm6
  a1cab5:	62 f1 7c 48 28 35 c1 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6aa4c1]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a1cabc:	a4 6a ff 
  a1cabf:	62 72 4d 48 7f e8    	vpermt2ps zmm13,zmm6,zmm0
  a1cac5:	62 e2 4d 48 7f cd    	vpermt2ps zmm17,zmm6,zmm5
  a1cacb:	62 e2 4d 48 7f f7    	vpermt2ps zmm22,zmm6,zmm7
  a1cad1:	62 e2 4d 48 7f d1    	vpermt2ps zmm18,zmm6,zmm1
  a1cad7:	62 32 4d 48 7f cf    	vpermt2ps zmm9,zmm6,zmm23
  a1cadd:	62 f1 7c 48 28 0d 19 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6aa419]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1cae4:	a4 6a ff 
  a1cae7:	62 52 75 48 7f e9    	vpermt2ps zmm13,zmm1,zmm9
  a1caed:	62 22 4d 48 7f cf    	vpermt2ps zmm25,zmm6,zmm23
  a1caf3:	62 82 75 48 7f c9    	vpermt2ps zmm17,zmm1,zmm25
  a1caf9:	62 32 4d 48 7f df    	vpermt2ps zmm11,zmm6,zmm23
  a1caff:	62 c2 75 48 7f f3    	vpermt2ps zmm22,zmm1,zmm11
  a1cb05:	62 32 4d 48 7f c7    	vpermt2ps zmm8,zmm6,zmm23
  a1cb0b:	62 c2 75 48 7f d0    	vpermt2ps zmm18,zmm1,zmm8
  a1cb11:	62 e2 4d 48 7f ea    	vpermt2ps zmm21,zmm6,zmm2
  a1cb17:	62 52 4d 48 7f e2    	vpermt2ps zmm12,zmm6,zmm10
  a1cb1d:	62 b1 95 48 14 c6    	vunpcklpd zmm0,zmm13,zmm22
  a1cb23:	62 a1 95 48 15 f6    	vunpckhpd zmm22,zmm13,zmm22
  a1cb29:	62 e2 4d 48 7f dc    	vpermt2ps zmm19,zmm6,zmm4
  a1cb2f:	62 31 f5 40 14 ea    	vunpcklpd zmm13,zmm17,zmm18
  a1cb35:	62 72 4d 48 7f fb    	vpermt2ps zmm15,zmm6,zmm3
  a1cb3b:	62 a1 f5 40 15 d2    	vunpckhpd zmm18,zmm17,zmm18
  a1cb41:	62 a2 4d 48 7f e7    	vpermt2ps zmm20,zmm6,zmm23
  a1cb47:	62 32 4d 48 7f f7    	vpermt2ps zmm14,zmm6,zmm23
  a1cb4d:	62 a2 4d 48 7f c7    	vpermt2ps zmm16,zmm6,zmm23
  a1cb53:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a1cb59:	62 22 4d 48 7f c7    	vpermt2ps zmm24,zmm6,zmm23
  a1cb5f:	62 a2 75 48 7f ec    	vpermt2ps zmm21,zmm1,zmm20
  a1cb65:	62 52 75 48 7f e6    	vpermt2ps zmm12,zmm1,zmm14
  a1cb6b:	62 71 7c 48 28 0d cb 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6aa2cb]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1cb72:	a2 6a ff 
  a1cb75:	62 d2 35 48 7f c5    	vpermt2ps zmm0,zmm9,zmm13
  a1cb7b:	62 a2 75 48 7f d8    	vpermt2ps zmm19,zmm1,zmm16
  a1cb81:	62 12 75 48 7f f8    	vpermt2ps zmm15,zmm1,zmm24
  a1cb87:	62 b1 d5 40 14 cb    	vunpcklpd zmm1,zmm21,zmm19
  a1cb8d:	62 b1 7c 48 28 d6    	vmovaps zmm2,zmm22
  a1cb93:	62 b1 d5 40 15 db    	vunpckhpd zmm3,zmm21,zmm19
  a1cb99:	62 d1 9d 48 14 e7    	vunpcklpd zmm4,zmm12,zmm15
  a1cb9f:	62 d1 9d 48 15 ef    	vunpckhpd zmm5,zmm12,zmm15
  a1cba5:	62 a2 35 48 7f f2    	vpermt2ps zmm22,zmm9,zmm18
  a1cbab:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a1cbb1:	62 f2 35 48 7f cc    	vpermt2ps zmm1,zmm9,zmm4
  a1cbb7:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a1cbbd:	62 71 7c 48 28 1d 39 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6aa239]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1cbc4:	a2 6a ff 
  a1cbc7:	62 f2 25 48 7f fd    	vpermt2ps zmm7,zmm11,zmm5
  a1cbcd:	62 f2 35 48 7f dd    	vpermt2ps zmm3,zmm9,zmm5
  a1cbd3:	62 f1 7c 48 10 69 02 	vmovups zmm5,ZMMWORD PTR [rcx+0x80]
  a1cbda:	62 71 7c 48 10 41 03 	vmovups zmm8,ZMMWORD PTR [rcx+0xc0]
  a1cbe1:	62 71 7c 48 59 cd    	vmulps zmm9,zmm0,zmm5
  a1cbe7:	62 52 75 48 bc c8    	vfnmadd231ps zmm9,zmm1,zmm8
  a1cbed:	62 f1 74 48 59 cd    	vmulps zmm1,zmm1,zmm5
  a1cbf3:	62 f1 7c 48 10 69 06 	vmovups zmm5,ZMMWORD PTR [rcx+0x180]
  a1cbfa:	62 f2 3d 48 b8 c8    	vfmadd231ps zmm1,zmm8,zmm0
  a1cc00:	62 f1 7c 48 10 41 07 	vmovups zmm0,ZMMWORD PTR [rcx+0x1c0]
  a1cc07:	62 71 4c 40 59 c5    	vmulps zmm8,zmm22,zmm5
  a1cc0d:	62 f1 64 48 59 ed    	vmulps zmm5,zmm3,zmm5
  a1cc13:	62 72 65 48 bc c0    	vfnmadd231ps zmm8,zmm3,zmm0
  a1cc19:	62 b2 7d 48 b8 ee    	vfmadd231ps zmm5,zmm0,zmm22
  a1cc1f:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a1cc26:	62 f1 7c 48 10 59 05 	vmovups zmm3,ZMMWORD PTR [rcx+0x140]
  a1cc2d:	62 b2 25 48 7f d2    	vpermt2ps zmm2,zmm11,zmm18
  a1cc33:	62 71 6c 48 59 d0    	vmulps zmm10,zmm2,zmm0
  a1cc39:	62 f1 44 48 59 c0    	vmulps zmm0,zmm7,zmm0
  a1cc3f:	62 f2 65 48 b8 c2    	vfmadd231ps zmm0,zmm3,zmm2
  a1cc45:	62 72 45 48 bc d3    	vfnmadd231ps zmm10,zmm7,zmm3
  a1cc4b:	62 c2 25 48 7f cd    	vpermt2ps zmm17,zmm11,zmm13
  a1cc51:	62 f2 25 48 7f f4    	vpermt2ps zmm6,zmm11,zmm4
  a1cc57:	62 d1 74 40 58 d2    	vaddps zmm2,zmm17,zmm10
  a1cc5d:	62 d1 74 40 5c da    	vsubps zmm3,zmm17,zmm10
  a1cc63:	62 f1 74 48 58 e5    	vaddps zmm4,zmm1,zmm5
  a1cc69:	62 f1 74 48 5c cd    	vsubps zmm1,zmm1,zmm5
  a1cc6f:	62 f1 7c 48 58 ee    	vaddps zmm5,zmm0,zmm6
  a1cc75:	62 f1 4c 48 5c c0    	vsubps zmm0,zmm6,zmm0
  a1cc7b:	62 d1 34 48 58 f0    	vaddps zmm6,zmm9,zmm8
  a1cc81:	62 d1 3c 48 5c f9    	vsubps zmm7,zmm8,zmm9
  a1cc87:	62 71 64 48 58 c1    	vaddps zmm8,zmm3,zmm1
  a1cc8d:	62 f1 64 48 5c c9    	vsubps zmm1,zmm3,zmm1
  a1cc93:	62 f1 7c 48 58 df    	vaddps zmm3,zmm0,zmm7
  a1cc99:	62 f1 7c 48 5c c7    	vsubps zmm0,zmm0,zmm7
  a1cc9f:	62 f1 54 48 5c fc    	vsubps zmm7,zmm5,zmm4
  a1cca5:	62 f1 54 48 58 e4    	vaddps zmm4,zmm5,zmm4
  a1ccab:	62 f1 6c 48 5c ee    	vsubps zmm5,zmm2,zmm6
  a1ccb1:	62 f1 6c 48 58 d6    	vaddps zmm2,zmm2,zmm6
  a1ccb7:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a1ccbd:	c5 7c 28 0d 7b 9f 65 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff659f7b]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a1ccc4:	ff 
  a1ccc5:	62 f2 35 48 7f f2    	vpermt2ps zmm6,zmm9,zmm2
  a1cccb:	62 71 7c 48 28 15 2b 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff672e2b]        # 8fb00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cfb0>
  a1ccd2:	2e 67 ff 
  a1ccd5:	62 f2 2d 48 7f e2    	vpermt2ps zmm4,zmm10,zmm2
  a1ccdb:	62 f1 7c 48 11 24 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm4
  a1cce2:	c5 fc 11 74 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm6
  a1cce8:	62 f1 7c 48 28 d3    	vmovaps zmm2,zmm3
  a1ccee:	62 d2 35 48 7f d0    	vpermt2ps zmm2,zmm9,zmm8
  a1ccf4:	62 d2 2d 48 7f d8    	vpermt2ps zmm3,zmm10,zmm8
  a1ccfa:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x60],zmm3
  a1cd01:	60 00 00 00 
  a1cd05:	c5 fc 11 94 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm2
  a1cd0c:	00 00 
  a1cd0e:	62 f1 7c 48 28 d7    	vmovaps zmm2,zmm7
  a1cd14:	62 f2 35 48 7f d5    	vpermt2ps zmm2,zmm9,zmm5
  a1cd1a:	62 f2 2d 48 7f fd    	vpermt2ps zmm7,zmm10,zmm5
  a1cd20:	62 f1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm7
  a1cd27:	03 
  a1cd28:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a1cd2e:	62 f2 35 48 7f d9    	vpermt2ps zmm3,zmm9,zmm1
  a1cd34:	62 f2 2d 48 7f c1    	vpermt2ps zmm0,zmm10,zmm1
  a1cd3a:	c5 fc 11 94 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm2
  a1cd41:	00 00 
  a1cd43:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x120],zmm0
  a1cd4a:	20 01 00 00 
  a1cd4e:	c5 fc 11 9c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm3
  a1cd55:	00 00 
  a1cd57:	48 81 c2 80 01 00 00 	add    rdx,0x180
  a1cd5e:	48 39 d0             	cmp    rax,rdx
  a1cd61:	0f 85 09 f9 ff ff    	jne    a1c670 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a1cd67:	48 89 ec             	mov    rsp,rbp
  a1cd6a:	5d                   	pop    rbp
  a1cd6b:	c5 f8 77             	vzeroupper
  a1cd6e:	c3                   	ret
