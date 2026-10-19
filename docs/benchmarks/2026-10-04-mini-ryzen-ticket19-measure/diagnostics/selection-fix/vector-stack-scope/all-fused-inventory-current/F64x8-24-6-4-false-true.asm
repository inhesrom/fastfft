
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000094f500 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  94f500:	62 f1 fd 48 10 05 5e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff77785e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  94f507:	78 77 ff 
  94f50a:	62 f1 fd 48 10 0d d4 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7777d4]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  94f511:	77 77 ff 
  94f514:	62 f1 fd 48 10 15 0a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff77780a]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  94f51b:	78 77 ff 
  94f51e:	48 c1 e2 07          	shl    rdx,0x7
  94f522:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  94f526:	31 d2                	xor    edx,edx
  94f528:	62 f1 fd 48 28 1d 0e 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff73500e]        # 84540 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x119f0>
  94f52f:	50 73 ff 
  94f532:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  94f536:	62 f1 fd 48 28 2d 40 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff735040]        # 84580 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x11a30>
  94f53d:	50 73 ff 
  94f540:	62 f2 fd 48 19 35 4e 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff72554e]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  94f547:	55 72 ff 
  94f54a:	62 f2 fd 48 19 3d cc 	vbroadcastsd zmm7,QWORD PTR [rip+0xffffffffff7256cc]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  94f551:	56 72 ff 
  94f554:	c5 7d 28 05 a4 77 72 	vmovapd ymm8,YMMWORD PTR [rip+0xffffffffff7277a4]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  94f55b:	ff 
  94f55c:	62 71 fd 48 28 0d 5a 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff73505a]        # 845c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x11a70>
  94f563:	50 73 ff 
  94f566:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  94f56d:	00 00 00 
  94f570:	62 71 fd 48 10 1c 17 	vmovupd zmm11,ZMMWORD PTR [rdi+rdx*1]
  94f577:	62 71 fd 48 10 64 17 	vmovupd zmm12,ZMMWORD PTR [rdi+rdx*1+0x40]
  94f57e:	01 
  94f57f:	62 71 fd 48 10 6c 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1+0x80]
  94f586:	02 
  94f587:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0xc0]
  94f58e:	03 
  94f58f:	62 51 fd 48 28 fb    	vmovapd zmm15,zmm11
  94f595:	62 72 e5 48 7f fc    	vpermt2pd zmm15,zmm3,zmm4
  94f59b:	62 72 d5 48 7f dc    	vpermt2pd zmm11,zmm5,zmm4
  94f5a1:	62 c1 fd 48 28 c4    	vmovapd zmm16,zmm12
  94f5a7:	62 e2 e5 48 7f c4    	vpermt2pd zmm16,zmm3,zmm4
  94f5ad:	62 72 d5 48 7f e4    	vpermt2pd zmm12,zmm5,zmm4
  94f5b3:	62 c1 fd 48 28 cd    	vmovapd zmm17,zmm13
  94f5b9:	62 e2 e5 48 7f cc    	vpermt2pd zmm17,zmm3,zmm4
  94f5bf:	62 72 d5 48 7f ec    	vpermt2pd zmm13,zmm5,zmm4
  94f5c5:	62 c1 fd 48 28 d6    	vmovapd zmm18,zmm14
  94f5cb:	62 e2 e5 48 7f d4    	vpermt2pd zmm18,zmm3,zmm4
  94f5d1:	62 72 d5 48 7f f4    	vpermt2pd zmm14,zmm5,zmm4
  94f5d7:	62 e1 fd 48 10 5c 17 	vmovupd zmm19,ZMMWORD PTR [rdi+rdx*1+0x100]
  94f5de:	04 
  94f5df:	62 a1 fd 48 28 e3    	vmovapd zmm20,zmm19
  94f5e5:	62 e2 e5 48 7f e4    	vpermt2pd zmm20,zmm3,zmm4
  94f5eb:	62 e2 d5 48 7f dc    	vpermt2pd zmm19,zmm5,zmm4
  94f5f1:	62 e1 fd 48 10 6c 17 	vmovupd zmm21,ZMMWORD PTR [rdi+rdx*1+0x140]
  94f5f8:	05 
  94f5f9:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  94f5ff:	62 e2 e5 48 7f f4    	vpermt2pd zmm22,zmm3,zmm4
  94f605:	62 e2 d5 48 7f ec    	vpermt2pd zmm21,zmm5,zmm4
  94f60b:	62 a1 f5 40 58 fc    	vaddpd zmm23,zmm17,zmm20
  94f611:	62 21 85 48 58 c7    	vaddpd zmm24,zmm15,zmm23
  94f617:	62 21 cd 40 58 c8    	vaddpd zmm25,zmm22,zmm16
  94f61d:	62 01 ed 40 58 d1    	vaddpd zmm26,zmm18,zmm25
  94f623:	62 01 bd 40 58 da    	vaddpd zmm27,zmm24,zmm26
  94f629:	62 21 95 48 58 e3    	vaddpd zmm28,zmm13,zmm19
  94f62f:	62 01 a5 48 58 ec    	vaddpd zmm29,zmm11,zmm28
  94f635:	62 41 d5 40 58 f4    	vaddpd zmm30,zmm21,zmm12
  94f63b:	62 01 8d 48 58 fe    	vaddpd zmm31,zmm14,zmm30
  94f641:	62 11 95 40 58 d7    	vaddpd zmm10,zmm29,zmm31
  94f647:	62 32 cd 48 bc ff    	vfnmadd231pd zmm15,zmm6,zmm23
  94f64d:	62 31 95 48 5c eb    	vsubpd zmm13,zmm13,zmm19
  94f653:	62 71 95 48 59 ef    	vmulpd zmm13,zmm13,zmm7
  94f659:	62 c1 85 48 58 dd    	vaddpd zmm19,zmm15,zmm13
  94f65f:	62 82 cd 48 bc d1    	vfnmadd231pd zmm18,zmm6,zmm25
  94f665:	62 51 d5 40 5c e4    	vsubpd zmm12,zmm21,zmm12
  94f66b:	62 71 9d 48 59 e7    	vmulpd zmm12,zmm12,zmm7
  94f671:	62 c1 ed 40 58 ec    	vaddpd zmm21,zmm18,zmm12
  94f677:	62 a1 e5 40 5c fd    	vsubpd zmm23,zmm19,zmm21
  94f67d:	62 12 cd 48 bc dc    	vfnmadd231pd zmm11,zmm6,zmm28
  94f683:	62 a1 f5 40 5c cc    	vsubpd zmm17,zmm17,zmm20
  94f689:	62 e1 f5 40 59 cf    	vmulpd zmm17,zmm17,zmm7
  94f68f:	62 a1 a5 48 5c e1    	vsubpd zmm20,zmm11,zmm17
  94f695:	62 12 cd 48 bc f6    	vfnmadd231pd zmm14,zmm6,zmm30
  94f69b:	62 a1 cd 40 5c c0    	vsubpd zmm16,zmm22,zmm16
  94f6a1:	62 e1 fd 40 59 c7    	vmulpd zmm16,zmm16,zmm7
  94f6a7:	62 a1 8d 48 5c f0    	vsubpd zmm22,zmm14,zmm16
  94f6ad:	62 21 dd 40 5c ce    	vsubpd zmm25,zmm20,zmm22
  94f6b3:	62 51 85 48 5c ed    	vsubpd zmm13,zmm15,zmm13
  94f6b9:	62 51 ed 40 5c e4    	vsubpd zmm12,zmm18,zmm12
  94f6bf:	62 51 95 48 58 fc    	vaddpd zmm15,zmm13,zmm12
  94f6c5:	62 51 f5 40 58 db    	vaddpd zmm11,zmm17,zmm11
  94f6cb:	62 51 fd 40 58 f6    	vaddpd zmm14,zmm16,zmm14
  94f6d1:	62 c1 a5 48 58 c6    	vaddpd zmm16,zmm11,zmm14
  94f6d7:	62 81 bd 40 5c ca    	vsubpd zmm17,zmm24,zmm26
  94f6dd:	62 81 95 40 5c d7    	vsubpd zmm18,zmm29,zmm31
  94f6e3:	62 a1 e5 40 58 dd    	vaddpd zmm19,zmm19,zmm21
  94f6e9:	62 a1 dd 40 58 e6    	vaddpd zmm20,zmm20,zmm22
  94f6ef:	62 51 95 48 5c e4    	vsubpd zmm12,zmm13,zmm12
  94f6f5:	62 51 a5 48 5c de    	vsubpd zmm11,zmm11,zmm14
  94f6fb:	62 22 fd 48 7f db    	vpermt2pd zmm27,zmm0,zmm19
  94f701:	62 c2 fd 48 7f fc    	vpermt2pd zmm23,zmm0,zmm12
  94f707:	62 72 fd 48 7f fc    	vpermt2pd zmm15,zmm0,zmm4
  94f70d:	62 e2 fd 48 7f cc    	vpermt2pd zmm17,zmm0,zmm4
  94f713:	62 11 fd 48 28 e3    	vmovapd zmm12,zmm27
  94f719:	62 52 f5 48 7f e7    	vpermt2pd zmm12,zmm1,zmm15
  94f71f:	62 42 ed 48 7f df    	vpermt2pd zmm27,zmm2,zmm15
  94f725:	62 31 fd 48 28 ef    	vmovapd zmm13,zmm23
  94f72b:	62 32 f5 48 7f e9    	vpermt2pd zmm13,zmm1,zmm17
  94f731:	62 a2 ed 48 7f f9    	vpermt2pd zmm23,zmm2,zmm17
  94f737:	62 51 9d 48 14 f5    	vunpcklpd zmm14,zmm12,zmm13
  94f73d:	62 51 9d 48 15 e5    	vunpckhpd zmm12,zmm12,zmm13
  94f743:	62 31 a5 40 14 ef    	vunpcklpd zmm13,zmm27,zmm23
  94f749:	62 31 a5 40 15 ff    	vunpckhpd zmm15,zmm27,zmm23
  94f74f:	62 32 fd 48 7f d4    	vpermt2pd zmm10,zmm0,zmm20
  94f755:	62 42 fd 48 7f cb    	vpermt2pd zmm25,zmm0,zmm11
  94f75b:	62 e2 fd 48 7f c4    	vpermt2pd zmm16,zmm0,zmm4
  94f761:	62 e2 fd 48 7f d4    	vpermt2pd zmm18,zmm0,zmm4
  94f767:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  94f76d:	62 32 f5 48 7f d8    	vpermt2pd zmm11,zmm1,zmm16
  94f773:	62 32 ed 48 7f d0    	vpermt2pd zmm10,zmm2,zmm16
  94f779:	62 81 fd 48 28 c1    	vmovapd zmm16,zmm25
  94f77f:	62 a2 f5 48 7f c2    	vpermt2pd zmm16,zmm1,zmm18
  94f785:	62 22 ed 48 7f ca    	vpermt2pd zmm25,zmm2,zmm18
  94f78b:	62 a1 a5 48 14 c8    	vunpcklpd zmm17,zmm11,zmm16
  94f791:	62 31 a5 48 15 d8    	vunpckhpd zmm11,zmm11,zmm16
  94f797:	62 81 ad 48 14 c1    	vunpcklpd zmm16,zmm10,zmm25
  94f79d:	62 11 ad 48 15 d1    	vunpckhpd zmm10,zmm10,zmm25
  94f7a3:	62 e1 fd 48 10 51 02 	vmovupd zmm18,ZMMWORD PTR [rcx+0x80]
  94f7aa:	62 e1 fd 48 10 59 03 	vmovupd zmm19,ZMMWORD PTR [rcx+0xc0]
  94f7b1:	62 e1 fd 48 10 61 04 	vmovupd zmm20,ZMMWORD PTR [rcx+0x100]
  94f7b8:	62 e1 fd 48 10 69 05 	vmovupd zmm21,ZMMWORD PTR [rcx+0x140]
  94f7bf:	62 e1 fd 48 10 71 06 	vmovupd zmm22,ZMMWORD PTR [rcx+0x180]
  94f7c6:	62 e1 fd 48 10 79 07 	vmovupd zmm23,ZMMWORD PTR [rcx+0x1c0]
  94f7cd:	62 21 95 48 59 c4    	vmulpd zmm24,zmm13,zmm20
  94f7d3:	62 22 fd 40 bc c5    	vfnmadd231pd zmm24,zmm16,zmm21
  94f7d9:	62 01 8d 48 58 c8    	vaddpd zmm25,zmm14,zmm24
  94f7df:	62 21 9d 48 59 d2    	vmulpd zmm26,zmm12,zmm18
  94f7e5:	62 22 a5 48 bc d3    	vfnmadd231pd zmm26,zmm11,zmm19
  94f7eb:	62 21 85 48 59 de    	vmulpd zmm27,zmm15,zmm22
  94f7f1:	62 22 ad 48 bc df    	vfnmadd231pd zmm27,zmm10,zmm23
  94f7f7:	62 01 ad 40 58 e3    	vaddpd zmm28,zmm26,zmm27
  94f7fd:	62 a1 fd 40 59 c4    	vmulpd zmm16,zmm16,zmm20
  94f803:	62 a2 95 48 b8 c5    	vfmadd231pd zmm16,zmm13,zmm21
  94f809:	62 31 fd 40 58 e9    	vaddpd zmm13,zmm16,zmm17
  94f80f:	62 31 a5 48 59 da    	vmulpd zmm11,zmm11,zmm18
  94f815:	62 32 9d 48 b8 db    	vfmadd231pd zmm11,zmm12,zmm19
  94f81b:	62 31 ad 48 59 d6    	vmulpd zmm10,zmm10,zmm22
  94f821:	62 32 85 48 b8 d7    	vfmadd231pd zmm10,zmm15,zmm23
  94f827:	62 51 a5 48 58 e2    	vaddpd zmm12,zmm11,zmm10
  94f82d:	62 11 8d 48 5c f0    	vsubpd zmm14,zmm14,zmm24
  94f833:	62 51 a5 48 5c d2    	vsubpd zmm10,zmm11,zmm10
  94f839:	62 51 8d 48 58 da    	vaddpd zmm11,zmm14,zmm10
  94f83f:	62 31 f5 40 5c f8    	vsubpd zmm15,zmm17,zmm16
  94f845:	62 81 a5 40 5c c2    	vsubpd zmm16,zmm27,zmm26
  94f84b:	62 a1 85 48 58 c8    	vaddpd zmm17,zmm15,zmm16
  94f851:	62 c1 fd 48 28 d3    	vmovapd zmm18,zmm11
  94f857:	62 a2 bd 48 7f d1    	vpermt2pd zmm18,zmm8,zmm17
  94f85d:	62 81 b5 40 5c dc    	vsubpd zmm19,zmm25,zmm28
  94f863:	62 c1 95 48 5c e4    	vsubpd zmm20,zmm13,zmm12
  94f869:	62 a1 fd 48 28 eb    	vmovapd zmm21,zmm19
  94f86f:	62 a2 bd 48 7f ec    	vpermt2pd zmm21,zmm8,zmm20
  94f875:	62 51 8d 48 5c d2    	vsubpd zmm10,zmm14,zmm10
  94f87b:	62 31 85 48 5c f0    	vsubpd zmm14,zmm15,zmm16
  94f881:	62 51 fd 48 28 fa    	vmovapd zmm15,zmm10
  94f887:	62 52 bd 48 7f fe    	vpermt2pd zmm15,zmm8,zmm14
  94f88d:	62 81 b5 40 58 c4    	vaddpd zmm16,zmm25,zmm28
  94f893:	62 51 95 48 58 e4    	vaddpd zmm12,zmm13,zmm12
  94f899:	62 31 fd 48 28 e8    	vmovapd zmm13,zmm16
  94f89f:	62 52 bd 48 7f ec    	vpermt2pd zmm13,zmm8,zmm12
  94f8a5:	62 c2 b5 48 7f c4    	vpermt2pd zmm16,zmm9,zmm12
  94f8ab:	62 e1 fd 48 11 04 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm16
  94f8b2:	c5 7d 11 6c 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm13
  94f8b8:	62 32 b5 48 7f d9    	vpermt2pd zmm11,zmm9,zmm17
  94f8be:	62 71 fd 48 11 9c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x60],zmm11
  94f8c5:	60 00 00 00 
  94f8c9:	62 e1 fd 28 11 54 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm18
  94f8d0:	05 
  94f8d1:	62 a2 b5 48 7f dc    	vpermt2pd zmm19,zmm9,zmm20
  94f8d7:	62 e1 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm19
  94f8de:	03 
  94f8df:	62 e1 fd 28 11 6c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x100],ymm21
  94f8e6:	08 
  94f8e7:	62 52 b5 48 7f d6    	vpermt2pd zmm10,zmm9,zmm14
  94f8ed:	62 71 fd 48 11 94 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x120],zmm10
  94f8f4:	20 01 00 00 
  94f8f8:	c5 7d 11 bc 16 60 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x160],ymm15
  94f8ff:	00 00 
  94f901:	48 81 c2 80 01 00 00 	add    rdx,0x180
  94f908:	48 39 d0             	cmp    rax,rdx
  94f90b:	0f 85 5f fc ff ff    	jne    94f570 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  94f911:	c5 f8 77             	vzeroupper
  94f914:	c3                   	ret
