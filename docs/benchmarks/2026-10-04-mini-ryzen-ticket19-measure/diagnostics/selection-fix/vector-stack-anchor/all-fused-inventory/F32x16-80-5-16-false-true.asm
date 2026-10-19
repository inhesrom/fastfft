
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a1c640 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a1c640:	48 81 ec 08 09 00 00 	sub    rsp,0x908
  a1c647:	62 f1 7c 48 28 05 2f 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6aa92f]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a1c64e:	a9 6a ff 
  a1c651:	62 f1 7c 48 28 0d 65 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6aa965]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a1c658:	a9 6a ff 
  a1c65b:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a1c65f:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a1c665:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm2
  a1c66c:	1f 
  a1c66d:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a1c671:	62 f2 75 48 7f c0    	vpermt2ps zmm0,zmm1,zmm0
  a1c677:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm0
  a1c67e:	1e 
  a1c67f:	48 c1 e2 07          	shl    rdx,0x7
  a1c683:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a1c687:	31 d2                	xor    edx,edx
  a1c689:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  a1c690:	62 f1 7c 48 10 14 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1]
  a1c697:	62 f1 7c 48 10 6c 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x40]
  a1c69e:	01 
  a1c69f:	62 f1 7c 48 10 74 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x80]
  a1c6a6:	02 
  a1c6a7:	62 f1 7c 48 10 44 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a1c6ae:	03 
  a1c6af:	62 71 7c 48 28 d2    	vmovaps zmm10,zmm2
  a1c6b5:	62 e1 7c 48 28 0d 81 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff673581]        # 8fc40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d0f0>
  a1c6bc:	35 67 ff 
  a1c6bf:	62 72 75 40 7f d5    	vpermt2ps zmm10,zmm17,zmm5
  a1c6c5:	62 f1 7c 48 28 de    	vmovaps zmm3,zmm6
  a1c6cb:	62 f2 75 40 7f d8    	vpermt2ps zmm3,zmm17,zmm0
  a1c6d1:	62 71 7c 48 10 44 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x200]
  a1c6d8:	08 
  a1c6d9:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x240]
  a1c6e0:	09 
  a1c6e1:	62 d1 7c 48 28 e0    	vmovaps zmm4,zmm8
  a1c6e7:	62 f2 75 40 7f e1    	vpermt2ps zmm4,zmm17,zmm1
  a1c6ed:	62 71 64 48 58 dc    	vaddps zmm11,zmm3,zmm4
  a1c6f3:	62 51 2c 48 58 e3    	vaddps zmm12,zmm10,zmm11
  a1c6f9:	62 71 7c 48 10 6c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x100]
  a1c700:	04 
  a1c701:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x140]
  a1c708:	05 
  a1c709:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a1c70f:	62 d2 75 40 7f fe    	vpermt2ps zmm7,zmm17,zmm14
  a1c715:	62 71 7c 48 10 7c 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x180]
  a1c71c:	06 
  a1c71d:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a1c724:	07 
  a1c725:	62 51 7c 48 28 cf    	vmovaps zmm9,zmm15
  a1c72b:	62 32 75 40 7f c8    	vpermt2ps zmm9,zmm17,zmm16
  a1c731:	62 c1 44 48 58 c9    	vaddps zmm17,zmm7,zmm9
  a1c737:	62 31 1c 48 58 e1    	vaddps zmm12,zmm12,zmm17
  a1c73d:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm12
  a1c744:	ff 
  a1c745:	62 e1 7c 48 28 25 31 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6aa831]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a1c74c:	a8 6a ff 
  a1c74f:	62 a1 54 00 57 ed    	vxorps xmm21,xmm21,xmm21
  a1c755:	62 32 5d 40 7f e5    	vpermt2ps zmm12,zmm20,zmm21
  a1c75b:	62 c1 7c 48 28 fc    	vmovaps zmm23,zmm12
  a1c761:	62 61 7c 48 28 15 15 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff673515]        # 8fc80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d130>
  a1c768:	35 67 ff 
  a1c76b:	62 f2 2d 40 7f f0    	vpermt2ps zmm6,zmm26,zmm0
  a1c771:	62 72 2d 40 7f c1    	vpermt2ps zmm8,zmm26,zmm1
  a1c777:	62 51 4c 48 5c e0    	vsubps zmm12,zmm6,zmm8
  a1c77d:	62 52 2d 40 7f ee    	vpermt2ps zmm13,zmm26,zmm14
  a1c783:	62 32 2d 40 7f f8    	vpermt2ps zmm15,zmm26,zmm16
  a1c789:	62 51 14 48 5c f7    	vsubps zmm14,zmm13,zmm15
  a1c78f:	62 f2 7d 48 18 05 bf 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff658fbf]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a1c796:	8f 65 ff 
  a1c799:	62 e1 0c 48 59 c0    	vmulps zmm16,zmm14,zmm0
  a1c79f:	62 f2 7d 48 18 0d f7 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff658bf7]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a1c7a6:	8b 65 ff 
  a1c7a9:	62 e2 1d 48 b8 c1    	vfmadd231ps zmm16,zmm12,zmm1
  a1c7af:	62 e2 7d 48 18 1d 2f 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff658f2f]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a1c7b6:	8f 65 ff 
  a1c7b9:	62 a1 7c 48 28 d3    	vmovaps zmm18,zmm19
  a1c7bf:	62 c2 25 48 a8 d2    	vfmadd213ps zmm18,zmm11,zmm10
  a1c7c5:	62 62 7d 48 18 0d 75 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff658e75]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a1c7cc:	8e 65 ff 
  a1c7cf:	62 82 75 40 bc d1    	vfnmadd231ps zmm18,zmm17,zmm25
  a1c7d5:	62 a1 7c 40 58 f2    	vaddps zmm22,zmm16,zmm18
  a1c7db:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm22
  a1c7e2:	fe 
  a1c7e3:	62 a2 5d 40 7f f5    	vpermt2ps zmm22,zmm20,zmm21
  a1c7e9:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm22
  a1c7f0:	0c 
  a1c7f1:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm23
  a1c7f8:	02 
  a1c7f9:	62 21 7c 48 28 df    	vmovaps zmm27,zmm23
  a1c7ff:	62 52 35 40 bc d3    	vfnmadd231ps zmm10,zmm25,zmm11
  a1c805:	62 32 65 40 b8 d1    	vfmadd231ps zmm10,zmm19,zmm17
  a1c80b:	62 71 1c 48 59 d8    	vmulps zmm11,zmm12,zmm0
  a1c811:	62 52 75 48 bc de    	vfnmadd231ps zmm11,zmm1,zmm14
  a1c817:	62 41 2c 48 5c fb    	vsubps zmm31,zmm10,zmm11
  a1c81d:	62 11 7c 48 28 e7    	vmovaps zmm12,zmm31
  a1c823:	62 32 5d 40 7f e5    	vpermt2ps zmm12,zmm20,zmm21
  a1c829:	62 71 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm12
  a1c830:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a1c836:	62 a1 6c 40 5c f8    	vsubps zmm23,zmm18,zmm16
  a1c83c:	62 31 7c 48 28 e7    	vmovaps zmm12,zmm23
  a1c842:	62 32 5d 40 7f e5    	vpermt2ps zmm12,zmm20,zmm21
  a1c848:	62 c1 7c 48 28 c4    	vmovaps zmm16,zmm12
  a1c84e:	62 c1 7c 48 28 d4    	vmovaps zmm18,zmm12
  a1c854:	62 41 24 48 58 c2    	vaddps zmm24,zmm11,zmm10
  a1c85a:	62 11 7c 48 28 d0    	vmovaps zmm10,zmm24
  a1c860:	62 32 5d 40 7f d5    	vpermt2ps zmm10,zmm20,zmm21
  a1c866:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm10
  a1c86d:	15 
  a1c86e:	62 41 7c 48 28 e2    	vmovaps zmm28,zmm10
  a1c874:	62 f2 2d 40 7f d5    	vpermt2ps zmm2,zmm26,zmm5
  a1c87a:	62 d1 4c 48 58 e8    	vaddps zmm5,zmm6,zmm8
  a1c880:	62 f1 6c 48 58 f5    	vaddps zmm6,zmm2,zmm5
  a1c886:	62 51 14 48 58 c7    	vaddps zmm8,zmm13,zmm15
  a1c88c:	62 41 4c 48 58 f0    	vaddps zmm30,zmm6,zmm8
  a1c892:	62 11 7c 48 28 e6    	vmovaps zmm12,zmm30
  a1c898:	62 b1 7c 48 28 f3    	vmovaps zmm6,zmm19
  a1c89e:	62 f2 55 48 a8 f2    	vfmadd213ps zmm6,zmm5,zmm2
  a1c8a4:	62 92 3d 48 bc f1    	vfnmadd231ps zmm6,zmm8,zmm25
  a1c8aa:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a1c8b0:	62 d1 44 48 5c e1    	vsubps zmm4,zmm7,zmm9
  a1c8b6:	62 71 5c 48 59 c8    	vmulps zmm9,zmm4,zmm0
  a1c8bc:	62 72 65 48 b8 c9    	vfmadd231ps zmm9,zmm3,zmm1
  a1c8c2:	62 41 4c 48 5c e9    	vsubps zmm29,zmm6,zmm9
  a1c8c8:	62 11 7c 48 28 fd    	vmovaps zmm15,zmm29
  a1c8ce:	62 f2 35 40 bc d5    	vfnmadd231ps zmm2,zmm25,zmm5
  a1c8d4:	62 d2 65 40 b8 d0    	vfmadd231ps zmm2,zmm19,zmm8
  a1c8da:	62 f1 64 48 59 d8    	vmulps zmm3,zmm3,zmm0
  a1c8e0:	62 f2 75 48 bc dc    	vfnmadd231ps zmm3,zmm1,zmm4
  a1c8e6:	62 71 6c 48 58 d3    	vaddps zmm10,zmm2,zmm3
  a1c8ec:	62 41 7c 48 28 d2    	vmovaps zmm26,zmm10
  a1c8f2:	62 51 4c 48 58 d9    	vaddps zmm11,zmm6,zmm9
  a1c8f8:	62 c1 7c 48 28 f3    	vmovaps zmm22,zmm11
  a1c8fe:	62 71 6c 48 5c eb    	vsubps zmm13,zmm2,zmm3
  a1c904:	62 c1 7c 48 28 cd    	vmovaps zmm17,zmm13
  a1c90a:	62 f1 7c 48 28 0d 2c 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6aa62c]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a1c911:	a6 6a ff 
  a1c914:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x300]
  a1c91b:	0c 
  a1c91c:	62 42 75 48 7f d9    	vpermt2ps zmm27,zmm1,zmm9
  a1c922:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm27
  a1c929:	0e 
  a1c92a:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x7c0]
  a1c931:	1f 
  a1c932:	62 72 75 48 7f f5    	vpermt2ps zmm14,zmm1,zmm5
  a1c938:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm14
  a1c93f:	10 
  a1c940:	62 e2 75 48 7f d5    	vpermt2ps zmm18,zmm1,zmm5
  a1c946:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm18
  a1c94d:	0d 
  a1c94e:	62 62 75 48 7f e5    	vpermt2ps zmm28,zmm1,zmm5
  a1c954:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm28
  a1c95b:	0f 
  a1c95c:	62 22 5d 40 7f f5    	vpermt2ps zmm30,zmm20,zmm21
  a1c962:	62 22 5d 40 7f ed    	vpermt2ps zmm29,zmm20,zmm21
  a1c968:	62 91 7c 48 28 c6    	vmovaps zmm0,zmm30
  a1c96e:	62 92 75 48 7f c5    	vpermt2ps zmm0,zmm1,zmm29
  a1c974:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm0
  a1c97b:	14 
  a1c97c:	62 32 5d 40 7f d5    	vpermt2ps zmm10,zmm20,zmm21
  a1c982:	62 d1 7c 48 28 d2    	vmovaps zmm2,zmm10
  a1c988:	62 f2 75 48 7f d5    	vpermt2ps zmm2,zmm1,zmm5
  a1c98e:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a1c994:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm2
  a1c99b:	13 
  a1c99c:	62 32 5d 40 7f dd    	vpermt2ps zmm11,zmm20,zmm21
  a1c9a2:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a1c9a8:	62 f2 75 48 7f d5    	vpermt2ps zmm2,zmm1,zmm5
  a1c9ae:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a1c9b4:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm2
  a1c9bb:	12 
  a1c9bc:	62 32 5d 40 7f ed    	vpermt2ps zmm13,zmm20,zmm21
  a1c9c2:	62 d1 7c 48 28 d5    	vmovaps zmm2,zmm13
  a1c9c8:	62 f2 75 48 7f d5    	vpermt2ps zmm2,zmm1,zmm5
  a1c9ce:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a1c9d4:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm2
  a1c9db:	11 
  a1c9dc:	62 f1 fd 48 15 d3    	vunpckhpd zmm2,zmm0,zmm3
  a1c9e2:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm2
  a1c9e9:	1d 
  a1c9ea:	62 f1 dd 48 15 c6    	vunpckhpd zmm0,zmm4,zmm6
  a1c9f0:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm0
  a1c9f7:	1c 
  a1c9f8:	62 e1 7c 48 28 1d fe 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff6aa3fe]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1c9ff:	a3 6a ff 
  a1ca02:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a1ca08:	62 d1 a5 40 15 de    	vunpckhpd zmm3,zmm27,zmm14
  a1ca0e:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm3
  a1ca15:	1b 
  a1ca16:	62 91 ed 40 15 c4    	vunpckhpd zmm0,zmm18,zmm28
  a1ca1c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a1ca23:	03 
  a1ca24:	62 f2 65 40 7f d8    	vpermt2ps zmm3,zmm19,zmm0
  a1ca2a:	62 f1 7c 48 10 61 0d 	vmovups zmm4,ZMMWORD PTR [rcx+0x340]
  a1ca31:	62 71 7c 48 10 41 0c 	vmovups zmm8,ZMMWORD PTR [rcx+0x300]
  a1ca38:	62 d1 64 48 59 c0    	vmulps zmm0,zmm3,zmm8
  a1ca3e:	62 f2 6d 48 b8 c4    	vfmadd231ps zmm0,zmm2,zmm4
  a1ca44:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a1ca4b:	01 
  a1ca4c:	62 d1 6c 48 59 c0    	vmulps zmm0,zmm2,zmm8
  a1ca52:	62 f2 5d 48 bc c3    	vfnmadd231ps zmm0,zmm4,zmm3
  a1ca58:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a1ca5f:	04 
  a1ca60:	62 f1 7c 48 28 05 56 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6aa556]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a1ca67:	a5 6a ff 
  a1ca6a:	62 32 7d 48 7f e5    	vpermt2ps zmm12,zmm0,zmm21
  a1ca70:	62 32 7d 48 7f fd    	vpermt2ps zmm15,zmm0,zmm21
  a1ca76:	62 22 7d 48 7f d5    	vpermt2ps zmm26,zmm0,zmm21
  a1ca7c:	62 a2 7d 48 7f f5    	vpermt2ps zmm22,zmm0,zmm21
  a1ca82:	62 a2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm21
  a1ca88:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a1ca8f:	ff 
  a1ca90:	62 b2 7d 48 7f d5    	vpermt2ps zmm2,zmm0,zmm21
  a1ca96:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x80]
  a1ca9d:	fe 
  a1ca9e:	62 b2 7d 48 7f dd    	vpermt2ps zmm3,zmm0,zmm21
  a1caa4:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a1caab:	fe 
  a1caac:	62 22 7d 48 7f fd    	vpermt2ps zmm31,zmm0,zmm21
  a1cab2:	62 a2 7d 48 7f fd    	vpermt2ps zmm23,zmm0,zmm21
  a1cab8:	62 22 7d 48 7f c5    	vpermt2ps zmm24,zmm0,zmm21
  a1cabe:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  a1cac4:	62 f2 75 48 7f d3    	vpermt2ps zmm2,zmm1,zmm3
  a1caca:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a1cad0:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a1cad7:	ff 
  a1cad8:	62 01 7c 48 28 cf    	vmovaps zmm25,zmm31
  a1cade:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x780]
  a1cae5:	1e 
  a1cae6:	62 62 75 48 7f f8    	vpermt2ps zmm31,zmm1,zmm0
  a1caec:	62 21 7c 48 28 df    	vmovaps zmm27,zmm23
  a1caf2:	62 e2 75 48 7f f8    	vpermt2ps zmm23,zmm1,zmm0
  a1caf8:	62 01 7c 48 28 e0    	vmovaps zmm28,zmm24
  a1cafe:	62 62 75 48 7f c0    	vpermt2ps zmm24,zmm1,zmm0
  a1cb04:	62 51 7c 48 28 c4    	vmovaps zmm8,zmm12
  a1cb0a:	62 52 75 48 7f e7    	vpermt2ps zmm12,zmm1,zmm15
  a1cb10:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm12
  a1cb17:	09 
  a1cb18:	62 81 7c 48 28 d2    	vmovaps zmm18,zmm26
  a1cb1e:	62 62 75 48 7f d0    	vpermt2ps zmm26,zmm1,zmm0
  a1cb24:	62 b1 7c 48 28 e6    	vmovaps zmm4,zmm22
  a1cb2a:	62 e2 75 48 7f f0    	vpermt2ps zmm22,zmm1,zmm0
  a1cb30:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a1cb36:	62 e2 75 48 7f c8    	vpermt2ps zmm17,zmm1,zmm0
  a1cb3c:	62 91 9d 48 15 d2    	vunpckhpd zmm2,zmm12,zmm26
  a1cb42:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm2
  a1cb49:	19 
  a1cb4a:	62 b1 cd 40 15 c9    	vunpckhpd zmm1,zmm22,zmm17
  a1cb50:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm1
  a1cb57:	18 
  a1cb58:	62 f2 65 40 7f d1    	vpermt2ps zmm2,zmm19,zmm1
  a1cb5e:	62 91 e5 48 15 df    	vunpckhpd zmm3,zmm3,zmm31
  a1cb64:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm3
  a1cb6b:	17 
  a1cb6c:	62 91 c5 40 15 c8    	vunpckhpd zmm1,zmm23,zmm24
  a1cb72:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm1
  a1cb79:	16 
  a1cb7a:	62 f2 65 40 7f d9    	vpermt2ps zmm3,zmm19,zmm1
  a1cb80:	62 e1 7c 48 10 61 1d 	vmovups zmm20,ZMMWORD PTR [rcx+0x740]
  a1cb87:	62 f1 7c 48 10 49 1c 	vmovups zmm1,ZMMWORD PTR [rcx+0x700]
  a1cb8e:	62 f1 64 48 59 f1    	vmulps zmm6,zmm3,zmm1
  a1cb94:	62 b2 6d 48 b8 f4    	vfmadd231ps zmm6,zmm2,zmm20
  a1cb9a:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm6
  a1cba1:	05 
  a1cba2:	62 f1 6c 48 59 c9    	vmulps zmm1,zmm2,zmm1
  a1cba8:	62 f2 5d 40 bc cb    	vfnmadd231ps zmm1,zmm20,zmm3
  a1cbae:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm1
  a1cbb5:	1a 
  a1cbb6:	62 f1 7c 48 28 15 40 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6aa340]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1cbbd:	a3 6a ff 
  a1cbc0:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x80]
  a1cbc7:	02 
  a1cbc8:	62 d2 6d 48 7f f1    	vpermt2ps zmm6,zmm2,zmm9
  a1cbce:	62 02 6d 48 7f f5    	vpermt2ps zmm30,zmm2,zmm29
  a1cbd4:	62 71 7c 48 10 24 24 	vmovups zmm12,ZMMWORD PTR [rsp]
  a1cbdb:	62 72 6d 48 7f e5    	vpermt2ps zmm12,zmm2,zmm5
  a1cbe1:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a1cbe7:	62 e2 6d 48 7f e5    	vpermt2ps zmm20,zmm2,zmm5
  a1cbed:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x540]
  a1cbf4:	15 
  a1cbf5:	62 e2 6d 48 7f c5    	vpermt2ps zmm16,zmm2,zmm5
  a1cbfb:	62 51 cd 48 15 cc    	vunpckhpd zmm9,zmm6,zmm12
  a1cc01:	62 b1 dd 40 15 c8    	vunpckhpd zmm1,zmm20,zmm16
  a1cc07:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a1cc0e:	08 
  a1cc0f:	62 b1 7c 48 28 fc    	vmovaps zmm7,zmm20
  a1cc15:	62 d1 7c 48 28 d9    	vmovaps zmm3,zmm9
  a1cc1b:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a1cc21:	62 f2 65 40 7f d9    	vpermt2ps zmm3,zmm19,zmm1
  a1cc27:	62 72 6d 48 7f d5    	vpermt2ps zmm10,zmm2,zmm5
  a1cc2d:	62 72 6d 48 7f dd    	vpermt2ps zmm11,zmm2,zmm5
  a1cc33:	62 72 6d 48 7f ed    	vpermt2ps zmm13,zmm2,zmm5
  a1cc39:	62 d1 8d 40 15 ea    	vunpckhpd zmm5,zmm30,zmm10
  a1cc3f:	62 c1 a5 48 15 dd    	vunpckhpd zmm19,zmm11,zmm13
  a1cc45:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm19
  a1cc4c:	21 
  a1cc4d:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a1cc53:	62 b2 5d 40 7f cb    	vpermt2ps zmm1,zmm20,zmm19
  a1cc59:	62 e1 7c 48 10 61 04 	vmovups zmm20,ZMMWORD PTR [rcx+0x100]
  a1cc60:	62 61 7c 48 10 69 05 	vmovups zmm29,ZMMWORD PTR [rcx+0x140]
  a1cc67:	62 a1 74 48 59 dc    	vmulps zmm19,zmm1,zmm20
  a1cc6d:	62 82 65 48 bc dd    	vfnmadd231ps zmm19,zmm3,zmm29
  a1cc73:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm19
  a1cc7a:	02 
  a1cc7b:	62 b1 64 48 59 dc    	vmulps zmm3,zmm3,zmm20
  a1cc81:	62 f2 15 40 b8 d9    	vfmadd231ps zmm3,zmm29,zmm1
  a1cc87:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a1cc8e:	62 52 6d 48 7f c7    	vpermt2ps zmm8,zmm2,zmm15
  a1cc94:	62 e2 6d 48 7f 6c 24 	vpermt2ps zmm21,zmm2,ZMMWORD PTR [rsp-0x80]
  a1cc9b:	fe 
  a1cc9c:	62 e2 6d 48 7f d0    	vpermt2ps zmm18,zmm2,zmm0
  a1cca2:	62 f2 6d 48 7f e0    	vpermt2ps zmm4,zmm2,zmm0
  a1cca8:	62 72 6d 48 7f f0    	vpermt2ps zmm14,zmm2,zmm0
  a1ccae:	62 62 6d 48 7f c8    	vpermt2ps zmm25,zmm2,zmm0
  a1ccb4:	62 62 6d 48 7f d8    	vpermt2ps zmm27,zmm2,zmm0
  a1ccba:	62 62 6d 48 7f e0    	vpermt2ps zmm28,zmm2,zmm0
  a1ccc0:	62 91 d5 40 15 d1    	vunpckhpd zmm2,zmm21,zmm25
  a1ccc6:	62 91 a5 40 15 cc    	vunpckhpd zmm1,zmm27,zmm28
  a1cccc:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm1
  a1ccd3:	07 
  a1ccd4:	62 71 7c 48 28 fa    	vmovaps zmm15,zmm2
  a1ccda:	62 f1 7c 48 28 05 1c 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6aa11c]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1cce1:	a1 6a ff 
  a1cce4:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a1ccea:	62 b1 bd 48 15 ca    	vunpckhpd zmm1,zmm8,zmm18
  a1ccf0:	62 d1 dd 48 15 de    	vunpckhpd zmm3,zmm4,zmm14
  a1ccf6:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm3
  a1ccfd:	06 
  a1ccfe:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a1cd04:	62 e2 7d 48 7f e3    	vpermt2ps zmm20,zmm0,zmm3
  a1cd0a:	62 61 7c 48 10 69 15 	vmovups zmm29,ZMMWORD PTR [rcx+0x540]
  a1cd11:	62 f1 7c 48 10 41 14 	vmovups zmm0,ZMMWORD PTR [rcx+0x500]
  a1cd18:	62 f1 5c 40 59 d8    	vmulps zmm3,zmm20,zmm0
  a1cd1e:	62 92 05 48 bc dd    	vfnmadd231ps zmm3,zmm15,zmm29
  a1cd24:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm3
  a1cd2b:	15 
  a1cd2c:	62 f1 04 48 59 c0    	vmulps zmm0,zmm15,zmm0
  a1cd32:	62 b2 15 40 b8 c4    	vfmadd231ps zmm0,zmm29,zmm20
  a1cd38:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a1cd3e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm0
  a1cd45:	20 
  a1cd46:	62 d1 cd 48 14 c4    	vunpcklpd zmm0,zmm6,zmm12
  a1cd4c:	62 b1 c5 48 14 f0    	vunpcklpd zmm6,zmm7,zmm16
  a1cd52:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm6
  a1cd59:	0a 
  a1cd5a:	62 c1 8d 40 14 da    	vunpcklpd zmm19,zmm30,zmm10
  a1cd60:	62 41 a5 48 14 f5    	vunpcklpd zmm30,zmm11,zmm13
  a1cd66:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a1cd6d:	0b 
  a1cd6e:	62 e1 7c 48 28 25 c8 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6aa0c8]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1cd75:	a0 6a ff 
  a1cd78:	62 f2 5d 40 7f c6    	vpermt2ps zmm0,zmm20,zmm6
  a1cd7e:	62 31 7c 48 28 d3    	vmovaps zmm10,zmm19
  a1cd84:	62 12 5d 40 7f d6    	vpermt2ps zmm10,zmm20,zmm30
  a1cd8a:	62 71 7c 48 10 59 02 	vmovups zmm11,ZMMWORD PTR [rcx+0x80]
  a1cd91:	62 71 7c 48 10 69 03 	vmovups zmm13,ZMMWORD PTR [rcx+0xc0]
  a1cd98:	62 d1 2c 48 59 db    	vmulps zmm3,zmm10,zmm11
  a1cd9e:	62 d2 7d 48 bc dd    	vfnmadd231ps zmm3,zmm0,zmm13
  a1cda4:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm3
  a1cdab:	0c 
  a1cdac:	62 d1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm11
  a1cdb2:	62 d2 15 48 b8 c2    	vfmadd231ps zmm0,zmm13,zmm10
  a1cdb8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm0
  a1cdbf:	23 
  a1cdc0:	62 b1 bd 48 14 c2    	vunpcklpd zmm0,zmm8,zmm18
  a1cdc6:	62 d1 dd 48 14 e6    	vunpcklpd zmm4,zmm4,zmm14
  a1cdcc:	62 11 d5 40 14 c1    	vunpcklpd zmm8,zmm21,zmm25
  a1cdd2:	62 11 a5 40 14 fc    	vunpcklpd zmm15,zmm27,zmm28
  a1cdd8:	62 51 7c 48 28 f0    	vmovaps zmm14,zmm8
  a1cdde:	62 52 5d 40 7f c7    	vpermt2ps zmm8,zmm20,zmm15
  a1cde4:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a1cdea:	62 f2 5d 40 7f c4    	vpermt2ps zmm0,zmm20,zmm4
  a1cdf0:	62 71 7c 48 10 51 13 	vmovups zmm10,ZMMWORD PTR [rcx+0x4c0]
  a1cdf7:	62 71 7c 48 10 59 12 	vmovups zmm11,ZMMWORD PTR [rcx+0x480]
  a1cdfe:	62 d1 7c 48 59 db    	vmulps zmm3,zmm0,zmm11
  a1ce04:	62 d2 3d 48 bc da    	vfnmadd231ps zmm3,zmm8,zmm10
  a1ce0a:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm3
  a1ce11:	22 
  a1ce12:	62 d1 3c 48 59 db    	vmulps zmm3,zmm8,zmm11
  a1ce18:	62 f2 2d 48 b8 d8    	vfmadd231ps zmm3,zmm10,zmm0
  a1ce1e:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a1ce25:	fe 
  a1ce26:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a1ce2d:	ff 
  a1ce2e:	62 91 fd 48 14 c7    	vunpcklpd zmm0,zmm0,zmm31
  a1ce34:	62 11 c5 40 14 d8    	vunpcklpd zmm11,zmm23,zmm24
  a1ce3a:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x240]
  a1ce41:	09 
  a1ce42:	62 11 e5 48 14 c2    	vunpcklpd zmm8,zmm3,zmm26
  a1ce48:	62 a1 cd 40 14 e9    	vunpcklpd zmm21,zmm22,zmm17
  a1ce4e:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a1ce54:	62 32 5d 40 7f c5    	vpermt2ps zmm8,zmm20,zmm21
  a1ce5a:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a1ce60:	62 d2 5d 40 7f c3    	vpermt2ps zmm0,zmm20,zmm11
  a1ce66:	62 f1 7c 48 10 71 1b 	vmovups zmm6,ZMMWORD PTR [rcx+0x6c0]
  a1ce6d:	62 71 7c 48 10 51 1a 	vmovups zmm10,ZMMWORD PTR [rcx+0x680]
  a1ce74:	62 d1 7c 48 59 da    	vmulps zmm3,zmm0,zmm10
  a1ce7a:	62 f2 3d 48 b8 de    	vfmadd231ps zmm3,zmm8,zmm6
  a1ce80:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a1ce87:	ff 
  a1ce88:	62 d1 3c 48 59 da    	vmulps zmm3,zmm8,zmm10
  a1ce8e:	62 f2 4d 48 bc d8    	vfnmadd231ps zmm3,zmm6,zmm0
  a1ce94:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm3
  a1ce9b:	09 
  a1ce9c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x380]
  a1cea3:	0e 
  a1cea4:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp+0x400]
  a1ceab:	10 
  a1ceac:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x340]
  a1ceb3:	0d 
  a1ceb4:	62 e1 e5 48 14 7c 24 	vunpcklpd zmm23,zmm3,ZMMWORD PTR [rsp+0x3c0]
  a1cebb:	0f 
  a1cebc:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x500]
  a1cec3:	14 
  a1cec4:	62 f1 e5 48 14 74 24 	vunpcklpd zmm6,zmm3,ZMMWORD PTR [rsp+0x4c0]
  a1cecb:	13 
  a1cecc:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x480]
  a1ced3:	12 
  a1ced4:	62 f1 e5 48 14 5c 24 	vunpcklpd zmm3,zmm3,ZMMWORD PTR [rsp+0x440]
  a1cedb:	11 
  a1cedc:	62 e1 7c 48 28 c6    	vmovaps zmm16,zmm6
  a1cee2:	62 f2 5d 40 7f f3    	vpermt2ps zmm6,zmm20,zmm3
  a1cee8:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a1ceee:	62 b2 5d 40 7f c7    	vpermt2ps zmm0,zmm20,zmm23
  a1cef4:	62 71 7c 48 10 41 0b 	vmovups zmm8,ZMMWORD PTR [rcx+0x2c0]
  a1cefb:	62 71 7c 48 10 51 0a 	vmovups zmm10,ZMMWORD PTR [rcx+0x280]
  a1cf02:	62 51 7c 48 59 ea    	vmulps zmm13,zmm0,zmm10
  a1cf08:	62 52 4d 48 b8 e8    	vfmadd231ps zmm13,zmm6,zmm8
  a1cf0e:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm13
  a1cf15:	13 
  a1cf16:	62 d1 4c 48 59 f2    	vmulps zmm6,zmm6,zmm10
  a1cf1c:	62 f2 3d 48 bc f0    	vfnmadd231ps zmm6,zmm8,zmm0
  a1cf22:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm6
  a1cf29:	14 
  a1cf2a:	62 72 5d 40 7f 4c 24 	vpermt2ps zmm9,zmm20,ZMMWORD PTR [rsp+0x200]
  a1cf31:	08 
  a1cf32:	62 f2 5d 40 7f 6c 24 	vpermt2ps zmm5,zmm20,ZMMWORD PTR [rsp+0x840]
  a1cf39:	21 
  a1cf3a:	62 f1 7c 48 10 41 07 	vmovups zmm0,ZMMWORD PTR [rcx+0x1c0]
  a1cf41:	62 f1 7c 48 10 71 06 	vmovups zmm6,ZMMWORD PTR [rcx+0x180]
  a1cf48:	62 71 54 48 59 c6    	vmulps zmm8,zmm5,zmm6
  a1cf4e:	62 72 35 48 bc c0    	vfnmadd231ps zmm8,zmm9,zmm0
  a1cf54:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm8
  a1cf5b:	12 
  a1cf5c:	62 61 34 48 59 e6    	vmulps zmm28,zmm9,zmm6
  a1cf62:	62 62 7d 48 b8 e5    	vfmadd231ps zmm28,zmm0,zmm5
  a1cf68:	62 f2 5d 40 7f 54 24 	vpermt2ps zmm2,zmm20,ZMMWORD PTR [rsp+0x1c0]
  a1cf6f:	07 
  a1cf70:	62 f2 5d 40 7f 4c 24 	vpermt2ps zmm1,zmm20,ZMMWORD PTR [rsp+0x180]
  a1cf77:	06 
  a1cf78:	62 f1 7c 48 10 41 17 	vmovups zmm0,ZMMWORD PTR [rcx+0x5c0]
  a1cf7f:	62 f1 7c 48 10 69 16 	vmovups zmm5,ZMMWORD PTR [rcx+0x580]
  a1cf86:	62 61 74 48 59 dd    	vmulps zmm27,zmm1,zmm5
  a1cf8c:	62 62 6d 48 bc d8    	vfnmadd231ps zmm27,zmm2,zmm0
  a1cf92:	62 61 6c 48 59 c5    	vmulps zmm24,zmm2,zmm5
  a1cf98:	62 62 7d 48 b8 c1    	vfmadd231ps zmm24,zmm0,zmm1
  a1cf9e:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x640]
  a1cfa5:	19 
  a1cfa6:	62 f2 5d 40 7f 54 24 	vpermt2ps zmm2,zmm20,ZMMWORD PTR [rsp+0x600]
  a1cfad:	18 
  a1cfae:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x5c0]
  a1cfb5:	17 
  a1cfb6:	62 f2 5d 40 7f 6c 24 	vpermt2ps zmm5,zmm20,ZMMWORD PTR [rsp+0x580]
  a1cfbd:	16 
  a1cfbe:	62 f1 7c 48 10 41 1f 	vmovups zmm0,ZMMWORD PTR [rcx+0x7c0]
  a1cfc5:	62 f1 7c 48 10 49 1e 	vmovups zmm1,ZMMWORD PTR [rcx+0x780]
  a1cfcc:	62 61 54 48 59 f9    	vmulps zmm31,zmm5,zmm1
  a1cfd2:	62 62 6d 48 b8 f8    	vfmadd231ps zmm31,zmm2,zmm0
  a1cfd8:	62 61 6c 48 59 d1    	vmulps zmm26,zmm2,zmm1
  a1cfde:	62 62 7d 48 bc d5    	vfnmadd231ps zmm26,zmm0,zmm5
  a1cfe4:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x740]
  a1cfeb:	1d 
  a1cfec:	62 f2 5d 40 7f 4c 24 	vpermt2ps zmm1,zmm20,ZMMWORD PTR [rsp+0x700]
  a1cff3:	1c 
  a1cff4:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x6c0]
  a1cffb:	1b 
  a1cffc:	62 f2 5d 40 7f 6c 24 	vpermt2ps zmm5,zmm20,ZMMWORD PTR [rsp+0xc0]
  a1d003:	03 
  a1d004:	62 f1 7c 48 10 41 0f 	vmovups zmm0,ZMMWORD PTR [rcx+0x3c0]
  a1d00b:	62 f1 7c 48 10 51 0e 	vmovups zmm2,ZMMWORD PTR [rcx+0x380]
  a1d012:	62 e1 54 48 59 d2    	vmulps zmm18,zmm5,zmm2
  a1d018:	62 e2 75 48 b8 d0    	vfmadd231ps zmm18,zmm1,zmm0
  a1d01e:	62 e1 74 48 59 e2    	vmulps zmm20,zmm1,zmm2
  a1d024:	62 e2 7d 48 bc e5    	vfnmadd231ps zmm20,zmm0,zmm5
  a1d02a:	62 f1 7c 48 28 0d cc 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6a9dcc]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1d031:	9d 6a ff 
  a1d034:	62 62 75 48 7f cc    	vpermt2ps zmm25,zmm1,zmm4
  a1d03a:	62 52 75 48 7f f7    	vpermt2ps zmm14,zmm1,zmm15
  a1d040:	62 f1 7c 48 10 41 11 	vmovups zmm0,ZMMWORD PTR [rcx+0x440]
  a1d047:	62 f1 7c 48 10 51 10 	vmovups zmm2,ZMMWORD PTR [rcx+0x400]
  a1d04e:	62 f1 0c 48 59 ea    	vmulps zmm5,zmm14,zmm2
  a1d054:	62 f2 35 40 b8 e8    	vfmadd231ps zmm5,zmm25,zmm0
  a1d05a:	62 61 34 40 59 ca    	vmulps zmm25,zmm25,zmm2
  a1d060:	62 42 7d 48 bc ce    	vfnmadd231ps zmm25,zmm0,zmm14
  a1d066:	62 a2 75 48 7f f7    	vpermt2ps zmm22,zmm1,zmm23
  a1d06c:	62 e2 75 48 7f c3    	vpermt2ps zmm16,zmm1,zmm3
  a1d072:	62 f1 7c 48 10 41 09 	vmovups zmm0,ZMMWORD PTR [rcx+0x240]
  a1d079:	62 f1 7c 48 10 51 08 	vmovups zmm2,ZMMWORD PTR [rcx+0x200]
  a1d080:	62 e1 7c 40 59 fa    	vmulps zmm23,zmm16,zmm2
  a1d086:	62 e2 4d 40 bc f8    	vfnmadd231ps zmm23,zmm22,zmm0
  a1d08c:	62 71 4c 40 59 f2    	vmulps zmm14,zmm22,zmm2
  a1d092:	62 32 7d 48 b8 f0    	vfmadd231ps zmm14,zmm0,zmm16
  a1d098:	62 52 75 48 7f e3    	vpermt2ps zmm12,zmm1,zmm11
  a1d09e:	62 b2 75 48 7f fd    	vpermt2ps zmm7,zmm1,zmm21
  a1d0a4:	62 f1 7c 48 10 51 19 	vmovups zmm2,ZMMWORD PTR [rcx+0x640]
  a1d0ab:	62 f1 7c 48 10 61 18 	vmovups zmm4,ZMMWORD PTR [rcx+0x600]
  a1d0b2:	62 71 44 48 59 cc    	vmulps zmm9,zmm7,zmm4
  a1d0b8:	62 72 1d 48 bc ca    	vfnmadd231ps zmm9,zmm12,zmm2
  a1d0be:	62 e1 1c 48 59 c4    	vmulps zmm16,zmm12,zmm4
  a1d0c4:	62 e2 6d 48 b8 c7    	vfmadd231ps zmm16,zmm2,zmm7
  a1d0ca:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x2c0]
  a1d0d1:	0b 
  a1d0d2:	62 f2 75 48 7f 5c 24 	vpermt2ps zmm3,zmm1,ZMMWORD PTR [rsp+0x280]
  a1d0d9:	0a 
  a1d0da:	62 82 75 48 7f de    	vpermt2ps zmm19,zmm1,zmm30
  a1d0e0:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm19
  a1d0e7:	06 
  a1d0e8:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x80]
  a1d0ef:	02 
  a1d0f0:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x540]
  a1d0f7:	15 
  a1d0f8:	62 d1 74 40 5c d4    	vsubps zmm2,zmm17,zmm12
  a1d0fe:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a1d105:	62 91 74 48 5c e5    	vsubps zmm4,zmm1,zmm29
  a1d10b:	62 f1 6c 48 58 cc    	vaddps zmm1,zmm2,zmm4
  a1d111:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a1d118:	03 
  a1d119:	62 f1 5c 48 5c ca    	vsubps zmm1,zmm4,zmm2
  a1d11f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm1
  a1d126:	16 
  a1d127:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a1d12e:	01 
  a1d12f:	62 f1 74 48 5c 54 24 	vsubps zmm2,zmm1,ZMMWORD PTR [rsp+0x140]
  a1d136:	05 
  a1d137:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x100]
  a1d13e:	04 
  a1d13f:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x680]
  a1d146:	1a 
  a1d147:	62 d1 14 40 5c e0    	vsubps zmm4,zmm29,zmm8
  a1d14d:	62 f1 6c 48 5c cc    	vsubps zmm1,zmm2,zmm4
  a1d153:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm1
  a1d15a:	19 
  a1d15b:	62 f1 5c 48 58 ca    	vaddps zmm1,zmm4,zmm2
  a1d161:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm1
  a1d168:	0d 
  a1d169:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0x300]
  a1d170:	0c 
  a1d171:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x880]
  a1d178:	22 
  a1d179:	62 d1 0c 40 5c cd    	vsubps zmm1,zmm30,zmm13
  a1d17f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm1
  a1d186:	18 
  a1d187:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp-0x40]
  a1d18e:	ff 
  a1d18f:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0x4c0]
  a1d196:	13 
  a1d197:	62 b1 54 40 5c d6    	vsubps zmm2,zmm21,zmm22
  a1d19d:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm2
  a1d1a4:	17 
  a1d1a5:	62 f1 74 48 5c d2    	vsubps zmm2,zmm1,zmm2
  a1d1ab:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x8c0]
  a1d1b2:	23 
  a1d1b3:	62 f1 04 48 5c 4c 24 	vsubps zmm1,zmm15,ZMMWORD PTR [rsp-0x80]
  a1d1ba:	fe 
  a1d1bb:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm1
  a1d1c2:	10 
  a1d1c3:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x240]
  a1d1ca:	09 
  a1d1cb:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x500]
  a1d1d2:	14 
  a1d1d3:	62 d1 24 48 5c e2    	vsubps zmm4,zmm11,zmm10
  a1d1d9:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm4
  a1d1e0:	0f 
  a1d1e1:	62 f1 74 48 5c e4    	vsubps zmm4,zmm1,zmm4
  a1d1e7:	62 f2 7d 48 18 3d 0f 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff65850f]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a1d1ee:	85 65 ff 
  a1d1f1:	62 f1 5c 48 59 cf    	vmulps zmm1,zmm4,zmm7
  a1d1f7:	62 f2 7d 48 18 35 63 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff658463]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a1d1fe:	84 65 ff 
  a1d201:	62 f2 6d 48 b8 ce    	vfmadd231ps zmm1,zmm2,zmm6
  a1d207:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm1
  a1d20e:	1d 
  a1d20f:	62 f1 5c 48 59 ce    	vmulps zmm1,zmm4,zmm6
  a1d215:	62 f2 45 48 bc ca    	vfnmadd231ps zmm1,zmm7,zmm2
  a1d21b:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a1d221:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm1
  a1d228:	1c 
  a1d229:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x480]
  a1d230:	12 
  a1d231:	62 91 74 48 5c c3    	vsubps zmm0,zmm1,zmm27
  a1d237:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a1d23e:	0b 
  a1d23f:	62 91 6c 40 5c d7    	vsubps zmm2,zmm18,zmm31
  a1d245:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm2
  a1d24c:	0a 
  a1d24d:	62 f1 7c 48 5c fa    	vsubps zmm7,zmm0,zmm2
  a1d253:	62 91 1c 40 5c d0    	vsubps zmm2,zmm28,zmm24
  a1d259:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm2
  a1d260:	08 
  a1d261:	62 b1 2c 40 5c c4    	vsubps zmm0,zmm26,zmm20
  a1d267:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a1d26e:	07 
  a1d26f:	62 e1 6c 48 5c d8    	vsubps zmm19,zmm2,zmm0
  a1d275:	62 f1 64 40 59 d6    	vmulps zmm2,zmm19,zmm6
  a1d27b:	62 f2 45 48 b8 d4    	vfmadd231ps zmm2,zmm7,zmm4
  a1d281:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm2
  a1d288:	1b 
  a1d289:	62 f1 44 48 59 fe    	vmulps zmm7,zmm7,zmm6
  a1d28f:	62 b2 5d 48 bc fb    	vfnmadd231ps zmm7,zmm4,zmm19
  a1d295:	62 f1 64 48 5c d5    	vsubps zmm2,zmm3,zmm5
  a1d29b:	62 f1 54 48 58 c3    	vaddps zmm0,zmm5,zmm3
  a1d2a1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a1d2a8:	11 
  a1d2a9:	62 a1 0c 48 5c d8    	vsubps zmm19,zmm14,zmm16
  a1d2af:	62 b1 0c 48 58 c0    	vaddps zmm0,zmm14,zmm16
  a1d2b5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a1d2bc:	0e 
  a1d2bd:	62 d1 14 40 58 c0    	vaddps zmm0,zmm29,zmm8
  a1d2c3:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a1d2ca:	04 
  a1d2cb:	62 d1 74 40 58 c4    	vaddps zmm0,zmm17,zmm12
  a1d2d1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm0
  a1d2d8:	1a 
  a1d2d9:	62 01 1c 40 58 e0    	vaddps zmm28,zmm28,zmm24
  a1d2df:	62 91 6c 40 58 c7    	vaddps zmm0,zmm18,zmm31
  a1d2e5:	62 81 74 48 58 cb    	vaddps zmm17,zmm1,zmm27
  a1d2eb:	62 01 5c 40 58 ea    	vaddps zmm29,zmm20,zmm26
  a1d2f1:	62 41 0c 40 58 c5    	vaddps zmm24,zmm30,zmm13
  a1d2f7:	62 41 2c 48 58 d3    	vaddps zmm26,zmm10,zmm11
  a1d2fd:	62 61 04 48 58 74 24 	vaddps zmm30,zmm15,ZMMWORD PTR [rsp-0x80]
  a1d304:	fe 
  a1d305:	62 31 54 40 58 c6    	vaddps zmm8,zmm21,zmm22
  a1d30b:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm8
  a1d312:	02 
  a1d313:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x180]
  a1d31a:	06 
  a1d31b:	62 81 74 48 5c e1    	vsubps zmm20,zmm1,zmm25
  a1d321:	62 01 74 48 58 c9    	vaddps zmm25,zmm1,zmm25
  a1d327:	62 31 34 48 5c ef    	vsubps zmm13,zmm9,zmm23
  a1d32d:	62 d1 44 40 58 e9    	vaddps zmm5,zmm23,zmm9
  a1d333:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x800]
  a1d33a:	20 
  a1d33b:	62 f1 74 48 58 24 24 	vaddps zmm4,zmm1,ZMMWORD PTR [rsp]
  a1d342:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a1d349:	05 
  a1d34a:	62 f1 74 48 58 5c 24 	vaddps zmm3,zmm1,ZMMWORD PTR [rsp+0x40]
  a1d351:	01 
  a1d352:	62 81 3c 40 5c fa    	vsubps zmm23,zmm24,zmm26
  a1d358:	62 41 0c 40 5c f8    	vsubps zmm31,zmm30,zmm8
  a1d35e:	62 91 44 40 58 cf    	vaddps zmm1,zmm23,zmm31
  a1d364:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a1d36b:	ff 
  a1d36c:	62 21 04 40 5c ff    	vsubps zmm31,zmm31,zmm23
  a1d372:	62 e1 1c 40 5c f8    	vsubps zmm23,zmm28,zmm0
  a1d378:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a1d37e:	62 91 74 40 5c c5    	vsubps zmm0,zmm17,zmm29
  a1d384:	62 f1 44 40 5c c8    	vsubps zmm1,zmm23,zmm0
  a1d38a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a1d391:	fe 
  a1d392:	62 a1 7c 48 58 ff    	vaddps zmm23,zmm0,zmm23
  a1d398:	62 51 6c 48 5c f5    	vsubps zmm14,zmm2,zmm13
  a1d39e:	62 f1 14 48 58 c2    	vaddps zmm0,zmm13,zmm2
  a1d3a4:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a1d3ab:	01 
  a1d3ac:	62 f2 7d 48 18 0d e6 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff657fe6]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a1d3b3:	7f 65 ff 
  a1d3b6:	62 71 74 48 59 6c 24 	vmulps zmm13,zmm1,ZMMWORD PTR [rsp+0x580]
  a1d3bd:	16 
  a1d3be:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp+0x340]
  a1d3c5:	0d 
  a1d3c6:	62 f1 14 48 58 d0    	vaddps zmm2,zmm13,zmm0
  a1d3cc:	62 e1 14 48 5c c0    	vsubps zmm16,zmm13,zmm0
  a1d3d2:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x280]
  a1d3d9:	0a 
  a1d3da:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x2c0]
  a1d3e1:	0b 
  a1d3e2:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x1c0]
  a1d3e9:	07 
  a1d3ea:	62 71 3c 48 58 54 24 	vaddps zmm10,zmm8,ZMMWORD PTR [rsp+0x200]
  a1d3f1:	08 
  a1d3f2:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x5c0]
  a1d3f9:	17 
  a1d3fa:	62 71 3c 48 58 64 24 	vaddps zmm12,zmm8,ZMMWORD PTR [rsp+0x600]
  a1d401:	18 
  a1d402:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x3c0]
  a1d409:	0f 
  a1d40a:	62 71 3c 48 58 7c 24 	vaddps zmm15,zmm8,ZMMWORD PTR [rsp+0x400]
  a1d411:	10 
  a1d412:	62 a1 5c 40 5c d3    	vsubps zmm18,zmm20,zmm19
  a1d418:	62 31 5c 40 58 c3    	vaddps zmm8,zmm20,zmm19
  a1d41e:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm8
  a1d425:	05 
  a1d426:	62 71 74 48 59 4c 24 	vmulps zmm9,zmm1,ZMMWORD PTR [rsp+0x640]
  a1d42d:	19 
  a1d42e:	62 e1 74 48 59 74 24 	vmulps zmm22,zmm1,ZMMWORD PTR [rsp+0xc0]
  a1d435:	03 
  a1d436:	62 21 34 48 5c de    	vsubps zmm27,zmm9,zmm22
  a1d43c:	62 51 4c 40 58 e9    	vaddps zmm13,zmm22,zmm9
  a1d442:	62 e1 04 48 59 f6    	vmulps zmm22,zmm15,zmm6
  a1d448:	62 72 7d 48 18 05 ae 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff6582ae]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a1d44f:	82 65 ff 
  a1d452:	62 c2 1d 48 b8 f0    	vfmadd231ps zmm22,zmm12,zmm8
  a1d458:	62 51 04 48 59 f8    	vmulps zmm15,zmm15,zmm8
  a1d45e:	62 52 4d 48 bc fc    	vfnmadd231ps zmm15,zmm6,zmm12
  a1d464:	62 51 2c 48 59 e0    	vmulps zmm12,zmm10,zmm8
  a1d46a:	62 72 7d 48 b8 e6    	vfmadd231ps zmm12,zmm0,zmm6
  a1d470:	62 71 2c 48 59 d6    	vmulps zmm10,zmm10,zmm6
  a1d476:	62 72 3d 48 bc d0    	vfnmadd231ps zmm10,zmm8,zmm0
  a1d47c:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x440]
  a1d483:	11 
  a1d484:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x380]
  a1d48b:	0e 
  a1d48c:	62 d1 4c 48 5c c0    	vsubps zmm0,zmm6,zmm8
  a1d492:	62 e1 3c 48 58 de    	vaddps zmm19,zmm8,zmm6
  a1d498:	62 e1 5c 48 5c eb    	vsubps zmm21,zmm4,zmm3
  a1d49e:	62 71 5c 48 58 c3    	vaddps zmm8,zmm4,zmm3
  a1d4a4:	62 91 74 40 58 dd    	vaddps zmm3,zmm17,zmm29
  a1d4aa:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm3
  a1d4b1:	03 
  a1d4b2:	62 81 3c 40 58 e2    	vaddps zmm20,zmm24,zmm26
  a1d4b8:	62 e1 34 40 5c cd    	vsubps zmm17,zmm25,zmm5
  a1d4be:	62 f1 34 40 58 ed    	vaddps zmm5,zmm25,zmm5
  a1d4c4:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x100]
  a1d4cb:	04 
  a1d4cc:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x680]
  a1d4d3:	1a 
  a1d4d4:	62 61 64 48 5c c4    	vsubps zmm24,zmm3,zmm4
  a1d4da:	62 61 5c 48 58 cb    	vaddps zmm25,zmm4,zmm3
  a1d4e0:	62 61 0c 40 58 54 24 	vaddps zmm26,zmm30,ZMMWORD PTR [rsp+0x80]
  a1d4e7:	02 
  a1d4e8:	62 41 1c 40 58 e3    	vaddps zmm28,zmm28,zmm11
  a1d4ee:	62 01 0c 48 5c eb    	vsubps zmm29,zmm14,zmm27
  a1d4f4:	62 d1 24 40 58 de    	vaddps zmm3,zmm27,zmm14
  a1d4fa:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a1d501:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x700]
  a1d508:	1c 
  a1d509:	62 71 64 48 5c f7    	vsubps zmm14,zmm3,zmm7
  a1d50f:	62 f1 64 48 58 df    	vaddps zmm3,zmm3,zmm7
  a1d515:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm3
  a1d51c:	04 
  a1d51d:	62 71 6c 40 5c da    	vsubps zmm11,zmm18,zmm2
  a1d523:	62 61 6c 40 58 da    	vaddps zmm27,zmm18,zmm2
  a1d529:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x740]
  a1d530:	1d 
  a1d531:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x6c0]
  a1d538:	1b 
  a1d539:	62 f1 6c 48 58 fb    	vaddps zmm7,zmm2,zmm3
  a1d53f:	62 e1 6c 48 5c d3    	vsubps zmm18,zmm2,zmm3
  a1d545:	62 11 7c 48 5c c8    	vsubps zmm9,zmm0,zmm24
  a1d54b:	62 61 3c 40 58 c0    	vaddps zmm24,zmm24,zmm0
  a1d551:	62 f1 04 40 59 c1    	vmulps zmm0,zmm31,zmm1
  a1d557:	62 e1 44 40 59 f9    	vmulps zmm23,zmm23,zmm1
  a1d55d:	62 21 7c 48 58 f7    	vaddps zmm30,zmm0,zmm23
  a1d563:	62 a1 7c 48 5c ff    	vsubps zmm23,zmm0,zmm23
  a1d569:	62 21 74 40 5c fd    	vsubps zmm31,zmm17,zmm21
  a1d56f:	62 a1 74 40 58 cd    	vaddps zmm17,zmm17,zmm21
  a1d575:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp-0x80]
  a1d57c:	fe 
  a1d57d:	62 e1 74 48 59 6c 24 	vmulps zmm21,zmm1,ZMMWORD PTR [rsp-0x40]
  a1d584:	ff 
  a1d585:	62 b1 7c 48 5c d5    	vsubps zmm2,zmm0,zmm21
  a1d58b:	62 e1 54 40 58 e8    	vaddps zmm21,zmm21,zmm0
  a1d591:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a1d598:	01 
  a1d599:	62 b1 7c 48 5c e0    	vsubps zmm4,zmm0,zmm16
  a1d59f:	62 e1 7c 40 58 c0    	vaddps zmm16,zmm16,zmm0
  a1d5a5:	62 d1 04 48 5c da    	vsubps zmm3,zmm15,zmm10
  a1d5ab:	62 51 04 48 58 fa    	vaddps zmm15,zmm15,zmm10
  a1d5b1:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a1d5b8:	05 
  a1d5b9:	62 51 7c 48 5c d5    	vsubps zmm10,zmm0,zmm13
  a1d5bf:	62 51 7c 48 58 ed    	vaddps zmm13,zmm0,zmm13
  a1d5c5:	62 b1 1c 48 5c ce    	vsubps zmm1,zmm12,zmm22
  a1d5cb:	62 c1 4c 40 58 f4    	vaddps zmm22,zmm22,zmm12
  a1d5d1:	62 51 64 40 5c e0    	vsubps zmm12,zmm19,zmm8
  a1d5d7:	62 a1 3c 48 58 db    	vaddps zmm19,zmm8,zmm19
  a1d5dd:	62 11 2c 40 5c c4    	vsubps zmm8,zmm26,zmm28
  a1d5e3:	62 91 2c 40 58 f4    	vaddps zmm6,zmm26,zmm28
  a1d5e9:	62 01 54 48 5c d1    	vsubps zmm26,zmm5,zmm25
  a1d5ef:	62 01 54 48 58 e1    	vaddps zmm28,zmm5,zmm25
  a1d5f5:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0xc0]
  a1d5fc:	03 
  a1d5fd:	62 b1 54 48 5c c4    	vsubps zmm0,zmm5,zmm20
  a1d603:	62 f1 5c 40 58 ed    	vaddps zmm5,zmm20,zmm5
  a1d609:	62 e1 14 40 58 e7    	vaddps zmm20,zmm29,zmm7
  a1d60f:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm20
  a1d616:	ff 
  a1d617:	62 e1 14 40 5c e7    	vsubps zmm20,zmm29,zmm7
  a1d61d:	62 41 24 48 5c ee    	vsubps zmm29,zmm11,zmm14
  a1d623:	62 41 24 48 58 ce    	vaddps zmm25,zmm11,zmm14
  a1d629:	62 f1 34 48 5c fa    	vsubps zmm7,zmm9,zmm2
  a1d62f:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm7
  a1d636:	fe 
  a1d637:	62 71 34 48 58 ca    	vaddps zmm9,zmm9,zmm2
  a1d63d:	62 91 04 40 5c fe    	vsubps zmm7,zmm31,zmm30
  a1d643:	62 11 04 40 58 f6    	vaddps zmm14,zmm31,zmm30
  a1d649:	62 f1 5c 48 5c d1    	vsubps zmm2,zmm4,zmm1
  a1d64f:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a1d656:	01 
  a1d657:	62 f1 5c 48 58 e1    	vaddps zmm4,zmm4,zmm1
  a1d65d:	62 61 2c 48 5c fb    	vsubps zmm31,zmm10,zmm3
  a1d663:	62 71 2c 48 58 d3    	vaddps zmm10,zmm10,zmm3
  a1d669:	62 61 1c 48 5c f0    	vsubps zmm30,zmm12,zmm0
  a1d66f:	62 71 1c 48 58 e0    	vaddps zmm12,zmm12,zmm0
  a1d675:	62 d1 2c 40 5c d8    	vsubps zmm3,zmm26,zmm8
  a1d67b:	62 41 2c 40 58 d0    	vaddps zmm26,zmm26,zmm8
  a1d681:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a1d688:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x100]
  a1d68f:	04 
  a1d690:	62 f1 7c 48 5c ca    	vsubps zmm1,zmm0,zmm2
  a1d696:	62 f1 7c 48 58 c2    	vaddps zmm0,zmm0,zmm2
  a1d69c:	62 31 24 40 5c c2    	vsubps zmm8,zmm27,zmm18
  a1d6a2:	62 a1 24 40 58 d2    	vaddps zmm18,zmm27,zmm18
  a1d6a8:	62 b1 3c 40 5c d7    	vsubps zmm2,zmm24,zmm23
  a1d6ae:	62 a1 3c 40 58 ff    	vaddps zmm23,zmm24,zmm23
  a1d6b4:	62 31 74 40 5c dd    	vsubps zmm11,zmm17,zmm21
  a1d6ba:	62 a1 74 40 58 cd    	vaddps zmm17,zmm17,zmm21
  a1d6c0:	62 c1 7c 40 5c ef    	vsubps zmm21,zmm16,zmm15
  a1d6c6:	62 c1 7c 40 58 c7    	vaddps zmm16,zmm16,zmm15
  a1d6cc:	62 31 14 48 5c fe    	vsubps zmm15,zmm13,zmm22
  a1d6d2:	62 31 14 48 58 ee    	vaddps zmm13,zmm13,zmm22
  a1d6d8:	62 e1 64 40 5c f6    	vsubps zmm22,zmm19,zmm6
  a1d6de:	62 f1 64 40 58 f6    	vaddps zmm6,zmm19,zmm6
  a1d6e4:	62 e1 1c 40 5c dd    	vsubps zmm19,zmm28,zmm5
  a1d6ea:	62 f1 1c 40 58 ed    	vaddps zmm5,zmm28,zmm5
  a1d6f0:	62 61 7c 48 28 05 c6 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff6725c6]        # 8fcc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d170>
  a1d6f7:	25 67 ff 
  a1d6fa:	62 f2 3d 40 7f ee    	vpermt2ps zmm5,zmm24,zmm6
  a1d700:	62 f3 7d 48 19 ee 02 	vextractf32x4 xmm6,zmm5,0x2
  a1d707:	c5 f8 13 74 16 20    	vmovlps QWORD PTR [rsi+rdx*1+0x20],xmm6
  a1d70d:	c5 fc 11 2c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm5
  a1d712:	62 32 3d 40 7f e8    	vpermt2ps zmm13,zmm24,zmm16
  a1d718:	62 73 7d 48 19 ed 02 	vextractf32x4 xmm5,zmm13,0x2
  a1d71f:	c5 f8 13 6c 16 48    	vmovlps QWORD PTR [rsi+rdx*1+0x48],xmm5
  a1d725:	c5 7c 11 6c 16 28    	vmovups YMMWORD PTR [rsi+rdx*1+0x28],ymm13
  a1d72b:	62 a2 3d 40 7f cf    	vpermt2ps zmm17,zmm24,zmm23
  a1d731:	62 e3 7d 48 19 cd 02 	vextractf32x4 xmm5,zmm17,0x2
  a1d738:	c5 f8 13 6c 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm5
  a1d73e:	62 e1 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x50],ymm17
  a1d745:	50 00 00 00 
  a1d749:	62 e2 3d 40 7f d0    	vpermt2ps zmm18,zmm24,zmm0
  a1d74f:	62 e3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm18,0x2
  a1d756:	c5 f8 13 84 16 98 00 	vmovlps QWORD PTR [rsi+rdx*1+0x98],xmm0
  a1d75d:	00 00 
  a1d75f:	62 e1 7c 28 11 94 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x78],ymm18
  a1d766:	78 00 00 00 
  a1d76a:	62 42 3d 40 7f d4    	vpermt2ps zmm26,zmm24,zmm12
  a1d770:	62 63 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm26,0x2
  a1d777:	c5 f8 13 84 16 c0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xc0],xmm0
  a1d77e:	00 00 
  a1d780:	62 61 7c 28 11 54 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm26
  a1d787:	05 
  a1d788:	62 72 3d 40 7f d4    	vpermt2ps zmm10,zmm24,zmm4
  a1d78e:	62 73 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm10,0x2
  a1d795:	c5 f8 13 84 16 e8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xe8],xmm0
  a1d79c:	00 00 
  a1d79e:	c5 7c 11 94 16 c8 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc8],ymm10
  a1d7a5:	00 00 
  a1d7a7:	62 52 3d 40 7f f1    	vpermt2ps zmm14,zmm24,zmm9
  a1d7ad:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a1d7b4:	c5 f8 13 84 16 10 01 	vmovlps QWORD PTR [rsi+rdx*1+0x110],xmm0
  a1d7bb:	00 00 
  a1d7bd:	c5 7c 11 b4 16 f0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm14
  a1d7c4:	00 00 
  a1d7c6:	62 22 3d 40 7f cc    	vpermt2ps zmm25,zmm24,zmm20
  a1d7cc:	62 63 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm25,0x2
  a1d7d3:	c5 f8 13 84 16 38 01 	vmovlps QWORD PTR [rsi+rdx*1+0x138],xmm0
  a1d7da:	00 00 
  a1d7dc:	62 61 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x118],ymm25
  a1d7e3:	18 01 00 00 
  a1d7e7:	62 a2 3d 40 7f de    	vpermt2ps zmm19,zmm24,zmm22
  a1d7ed:	62 e3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm19,0x2
  a1d7f4:	c5 f8 13 84 16 60 01 	vmovlps QWORD PTR [rsi+rdx*1+0x160],xmm0
  a1d7fb:	00 00 
  a1d7fd:	62 e1 7c 28 11 5c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm19
  a1d804:	0a 
  a1d805:	62 32 3d 40 7f fd    	vpermt2ps zmm15,zmm24,zmm21
  a1d80b:	62 73 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm15,0x2
  a1d812:	c5 f8 13 84 16 88 01 	vmovlps QWORD PTR [rsi+rdx*1+0x188],xmm0
  a1d819:	00 00 
  a1d81b:	c5 7c 11 bc 16 68 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x168],ymm15
  a1d822:	00 00 
  a1d824:	62 72 3d 40 7f da    	vpermt2ps zmm11,zmm24,zmm2
  a1d82a:	62 73 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm11,0x2
  a1d831:	c5 f8 13 84 16 b0 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1b0],xmm0
  a1d838:	00 00 
  a1d83a:	c5 7c 11 9c 16 90 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x190],ymm11
  a1d841:	00 00 
  a1d843:	62 72 3d 40 7f c1    	vpermt2ps zmm8,zmm24,zmm1
  a1d849:	62 73 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm8,0x2
  a1d850:	c5 f8 13 84 16 d8 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1d8],xmm0
  a1d857:	00 00 
  a1d859:	c5 7c 11 84 16 b8 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1b8],ymm8
  a1d860:	00 00 
  a1d862:	62 92 3d 40 7f de    	vpermt2ps zmm3,zmm24,zmm30
  a1d868:	62 f3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm3,0x2
  a1d86f:	c5 f8 13 84 16 00 02 	vmovlps QWORD PTR [rsi+rdx*1+0x200],xmm0
  a1d876:	00 00 
  a1d878:	c5 fc 11 9c 16 e0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1e0],ymm3
  a1d87f:	00 00 
  a1d881:	62 62 3d 40 7f 7c 24 	vpermt2ps zmm31,zmm24,ZMMWORD PTR [rsp+0x40]
  a1d888:	01 
  a1d889:	62 63 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm31,0x2
  a1d890:	c5 f8 13 84 16 28 02 	vmovlps QWORD PTR [rsi+rdx*1+0x228],xmm0
  a1d897:	00 00 
  a1d899:	62 61 7c 28 11 bc 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x208],ymm31
  a1d8a0:	08 02 00 00 
  a1d8a4:	62 f2 3d 40 7f 7c 24 	vpermt2ps zmm7,zmm24,ZMMWORD PTR [rsp-0x80]
  a1d8ab:	fe 
  a1d8ac:	62 f3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm7,0x2
  a1d8b3:	c5 f8 13 84 16 50 02 	vmovlps QWORD PTR [rsi+rdx*1+0x250],xmm0
  a1d8ba:	00 00 
  a1d8bc:	c5 fc 11 bc 16 30 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x230],ymm7
  a1d8c3:	00 00 
  a1d8c5:	62 62 3d 40 7f 6c 24 	vpermt2ps zmm29,zmm24,ZMMWORD PTR [rsp-0x40]
  a1d8cc:	ff 
  a1d8cd:	62 63 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm29,0x2
  a1d8d4:	c5 f8 13 84 16 78 02 	vmovlps QWORD PTR [rsi+rdx*1+0x278],xmm0
  a1d8db:	00 00 
  a1d8dd:	62 61 7c 28 11 ac 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x258],ymm29
  a1d8e4:	58 02 00 00 
  a1d8e8:	48 81 c2 80 02 00 00 	add    rdx,0x280
  a1d8ef:	48 39 d0             	cmp    rax,rdx
  a1d8f2:	0f 85 98 ed ff ff    	jne    a1c690 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x50>
  a1d8f8:	48 81 c4 08 09 00 00 	add    rsp,0x908
  a1d8ff:	c5 f8 77             	vzeroupper
  a1d902:	c3                   	ret
