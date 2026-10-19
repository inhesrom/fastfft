
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a3d640 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a3d640:	48 81 ec 48 09 00 00 	sub    rsp,0x948
  a3d647:	62 f1 7c 48 28 05 2f 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68992f]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3d64e:	99 68 ff 
  a3d651:	62 f1 7c 48 28 0d 65 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff689965]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a3d658:	99 68 ff 
  a3d65b:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a3d65f:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a3d665:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm2
  a3d66c:	21 
  a3d66d:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a3d671:	62 f2 75 48 7f c0    	vpermt2ps zmm0,zmm1,zmm0
  a3d677:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm0
  a3d67e:	20 
  a3d67f:	48 c1 e2 08          	shl    rdx,0x8
  a3d683:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a3d687:	31 d2                	xor    edx,edx
  a3d689:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  a3d690:	62 f1 7c 48 10 04 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1]
  a3d697:	62 f1 7c 48 10 74 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x40]
  a3d69e:	01 
  a3d69f:	62 f1 7c 48 10 5c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x80]
  a3d6a6:	02 
  a3d6a7:	62 f1 7c 48 10 6c 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a3d6ae:	03 
  a3d6af:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a3d6b5:	62 e1 7c 48 28 25 c1 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6543c1]        # 91a80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ef30>
  a3d6bc:	43 65 ff 
  a3d6bf:	62 72 5d 40 7f ee    	vpermt2ps zmm13,zmm20,zmm6
  a3d6c5:	62 71 7c 48 10 44 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x100]
  a3d6cc:	04 
  a3d6cd:	62 71 7c 48 10 4c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x140]
  a3d6d4:	05 
  a3d6d5:	62 d1 7c 48 28 d0    	vmovaps zmm2,zmm8
  a3d6db:	62 d2 5d 40 7f d1    	vpermt2ps zmm2,zmm20,zmm9
  a3d6e1:	62 71 7c 48 10 5c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x200]
  a3d6e8:	08 
  a3d6e9:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x240]
  a3d6f0:	09 
  a3d6f1:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a3d6f7:	62 d2 5d 40 7f e6    	vpermt2ps zmm4,zmm20,zmm14
  a3d6fd:	62 71 6c 48 58 fc    	vaddps zmm15,zmm2,zmm4
  a3d703:	62 c1 14 48 58 c7    	vaddps zmm16,zmm13,zmm15
  a3d709:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x180]
  a3d710:	06 
  a3d711:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a3d718:	07 
  a3d719:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a3d71f:	62 c2 5d 40 7f cc    	vpermt2ps zmm17,zmm20,zmm12
  a3d725:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x280]
  a3d72c:	0a 
  a3d72d:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  a3d734:	0b 
  a3d735:	62 b1 7c 48 28 fb    	vmovaps zmm7,zmm19
  a3d73b:	62 b2 5d 40 7f fa    	vpermt2ps zmm7,zmm20,zmm18
  a3d741:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a3d747:	62 72 5d 40 7f d5    	vpermt2ps zmm10,zmm20,zmm5
  a3d74d:	62 c1 44 48 58 e2    	vaddps zmm20,zmm7,zmm10
  a3d753:	62 a1 74 40 58 f4    	vaddps zmm22,zmm17,zmm20
  a3d759:	62 a1 7c 40 58 ee    	vaddps zmm21,zmm16,zmm22
  a3d75f:	62 e1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm21
  a3d766:	62 e1 7c 48 28 3d 10 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff689810]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3d76d:	98 68 ff 
  a3d770:	62 01 3c 00 57 c0    	vxorps xmm24,xmm24,xmm24
  a3d776:	62 82 45 40 7f e8    	vpermt2ps zmm21,zmm23,zmm24
  a3d77c:	62 21 7c 48 28 dd    	vmovaps zmm27,zmm21
  a3d782:	62 62 7d 48 18 0d d4 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff637cd4]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a3d789:	7c 63 ff 
  a3d78c:	62 52 35 40 bc ef    	vfnmadd231ps zmm13,zmm25,zmm15
  a3d792:	62 61 7c 48 28 15 24 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff654324]        # 91ac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ef70>
  a3d799:	43 65 ff 
  a3d79c:	62 52 2d 40 7f c1    	vpermt2ps zmm8,zmm26,zmm9
  a3d7a2:	62 52 2d 40 7f de    	vpermt2ps zmm11,zmm26,zmm14
  a3d7a8:	62 51 3c 48 5c cb    	vsubps zmm9,zmm8,zmm11
  a3d7ae:	62 72 7d 48 18 3d 1c 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff637b1c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a3d7b5:	7b 63 ff 
  a3d7b8:	62 51 34 48 59 f7    	vmulps zmm14,zmm9,zmm15
  a3d7be:	62 c1 14 48 5c ee    	vsubps zmm21,zmm13,zmm14
  a3d7c4:	62 a2 35 40 bc cc    	vfnmadd231ps zmm17,zmm25,zmm20
  a3d7ca:	62 a2 2d 40 7f da    	vpermt2ps zmm19,zmm26,zmm18
  a3d7d0:	62 f2 2d 40 7f dd    	vpermt2ps zmm3,zmm26,zmm5
  a3d7d6:	62 f1 64 40 5c eb    	vsubps zmm5,zmm19,zmm3
  a3d7dc:	62 d1 54 48 59 ef    	vmulps zmm5,zmm5,zmm15
  a3d7e2:	62 e1 74 40 5c d5    	vsubps zmm18,zmm17,zmm5
  a3d7e8:	62 31 54 40 58 ca    	vaddps zmm9,zmm21,zmm18
  a3d7ee:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm9
  a3d7f5:	fe 
  a3d7f6:	62 12 45 40 7f c8    	vpermt2ps zmm9,zmm23,zmm24
  a3d7fc:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm9
  a3d803:	05 
  a3d804:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm27
  a3d80b:	07 
  a3d80c:	62 81 7c 48 28 e3    	vmovaps zmm20,zmm27
  a3d812:	62 51 0c 48 58 ed    	vaddps zmm13,zmm14,zmm13
  a3d818:	62 b1 54 48 58 e9    	vaddps zmm5,zmm5,zmm17
  a3d81e:	62 e1 14 48 58 cd    	vaddps zmm17,zmm13,zmm5
  a3d824:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a3d82a:	62 12 45 40 7f f0    	vpermt2ps zmm14,zmm23,zmm24
  a3d830:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm14
  a3d837:	ff 
  a3d838:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm14
  a3d83f:	03 
  a3d840:	62 21 54 40 5c fa    	vsubps zmm31,zmm21,zmm18
  a3d846:	62 11 7c 48 28 f7    	vmovaps zmm14,zmm31
  a3d84c:	62 12 45 40 7f f0    	vpermt2ps zmm14,zmm23,zmm24
  a3d852:	62 f1 14 48 5c ed    	vsubps zmm5,zmm13,zmm5
  a3d858:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm5
  a3d85f:	01 
  a3d860:	62 92 45 40 7f e8    	vpermt2ps zmm5,zmm23,zmm24
  a3d866:	62 61 7c 48 28 dd    	vmovaps zmm27,zmm5
  a3d86c:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm14
  a3d873:	14 
  a3d874:	62 a1 7c 40 5c f6    	vsubps zmm22,zmm16,zmm22
  a3d87a:	62 b1 7c 48 28 ee    	vmovaps zmm5,zmm22
  a3d880:	62 92 45 40 7f e8    	vpermt2ps zmm5,zmm23,zmm24
  a3d886:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm5
  a3d88d:	02 
  a3d88e:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm5
  a3d895:	06 
  a3d896:	62 f2 2d 40 7f c6    	vpermt2ps zmm0,zmm26,zmm6
  a3d89c:	62 d1 3c 48 58 f3    	vaddps zmm6,zmm8,zmm11
  a3d8a2:	62 e1 7c 48 58 c6    	vaddps zmm16,zmm0,zmm6
  a3d8a8:	62 d2 2d 40 7f cc    	vpermt2ps zmm1,zmm26,zmm12
  a3d8ae:	62 f1 64 40 58 db    	vaddps zmm3,zmm19,zmm3
  a3d8b4:	62 71 74 48 58 e3    	vaddps zmm12,zmm1,zmm3
  a3d8ba:	62 41 7c 40 58 e4    	vaddps zmm28,zmm16,zmm12
  a3d8c0:	62 11 7c 48 28 c4    	vmovaps zmm8,zmm28
  a3d8c6:	62 f2 35 40 bc c6    	vfnmadd231ps zmm0,zmm25,zmm6
  a3d8cc:	62 f1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm4
  a3d8d2:	62 d1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm15
  a3d8d8:	62 f1 7c 48 58 e2    	vaddps zmm4,zmm0,zmm2
  a3d8de:	62 f2 35 40 bc cb    	vfnmadd231ps zmm1,zmm25,zmm3
  a3d8e4:	62 d1 44 48 5c da    	vsubps zmm3,zmm7,zmm10
  a3d8ea:	62 d1 64 48 59 df    	vmulps zmm3,zmm3,zmm15
  a3d8f0:	62 f1 74 48 58 f3    	vaddps zmm6,zmm1,zmm3
  a3d8f6:	62 71 5c 48 58 ee    	vaddps zmm13,zmm4,zmm6
  a3d8fc:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a3d902:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a3d908:	62 f1 74 48 5c cb    	vsubps zmm1,zmm1,zmm3
  a3d90e:	62 61 7c 48 58 e9    	vaddps zmm29,zmm0,zmm1
  a3d914:	62 01 7c 48 28 d5    	vmovaps zmm26,zmm29
  a3d91a:	62 61 5c 48 5c f6    	vsubps zmm30,zmm4,zmm6
  a3d920:	62 81 7c 48 28 ee    	vmovaps zmm21,zmm30
  a3d926:	62 f1 7c 48 5c f1    	vsubps zmm6,zmm0,zmm1
  a3d92c:	62 e1 7c 48 28 de    	vmovaps zmm19,zmm6
  a3d932:	62 51 7c 40 5c d4    	vsubps zmm10,zmm16,zmm12
  a3d938:	62 c1 7c 48 28 d2    	vmovaps zmm18,zmm10
  a3d93e:	62 f1 7c 48 28 15 f8 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6895f8]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a3d945:	95 68 ff 
  a3d948:	62 c2 6d 48 7f e1    	vpermt2ps zmm20,zmm2,zmm9
  a3d94e:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm20
  a3d955:	11 
  a3d956:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x840]
  a3d95d:	21 
  a3d95e:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x40]
  a3d965:	ff 
  a3d966:	62 f2 6d 48 7f dd    	vpermt2ps zmm3,zmm2,zmm5
  a3d96c:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a3d973:	ff 
  a3d974:	62 d1 7c 48 28 e6    	vmovaps zmm4,zmm14
  a3d97a:	62 92 6d 48 7f e3    	vpermt2ps zmm4,zmm2,zmm27
  a3d980:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm4
  a3d987:	10 
  a3d988:	62 11 7c 48 28 f3    	vmovaps zmm14,zmm27
  a3d98e:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x80]
  a3d995:	02 
  a3d996:	62 f2 6d 48 7f fd    	vpermt2ps zmm7,zmm2,zmm5
  a3d99c:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm7
  a3d9a3:	02 
  a3d9a4:	62 02 45 40 7f e0    	vpermt2ps zmm28,zmm23,zmm24
  a3d9aa:	62 12 45 40 7f e8    	vpermt2ps zmm13,zmm23,zmm24
  a3d9b0:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a3d9b6:	62 d2 6d 48 7f c5    	vpermt2ps zmm0,zmm2,zmm13
  a3d9bc:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm0
  a3d9c3:	16 
  a3d9c4:	62 02 45 40 7f e8    	vpermt2ps zmm29,zmm23,zmm24
  a3d9ca:	62 91 7c 48 28 cd    	vmovaps zmm1,zmm29
  a3d9d0:	62 f2 6d 48 7f cd    	vpermt2ps zmm1,zmm2,zmm5
  a3d9d6:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a3d9dc:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm1
  a3d9e3:	15 
  a3d9e4:	62 02 45 40 7f f0    	vpermt2ps zmm30,zmm23,zmm24
  a3d9ea:	62 92 45 40 7f f0    	vpermt2ps zmm6,zmm23,zmm24
  a3d9f0:	62 91 7c 48 28 ce    	vmovaps zmm1,zmm30
  a3d9f6:	62 f2 6d 48 7f ce    	vpermt2ps zmm1,zmm2,zmm6
  a3d9fc:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a3da02:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm1
  a3da09:	13 
  a3da0a:	62 12 45 40 7f d0    	vpermt2ps zmm10,zmm23,zmm24
  a3da10:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  a3da16:	62 f2 6d 48 7f cd    	vpermt2ps zmm1,zmm2,zmm5
  a3da1c:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  a3da22:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm1
  a3da29:	12 
  a3da2a:	62 d1 fd 48 15 c9    	vunpckhpd zmm1,zmm0,zmm9
  a3da30:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm1
  a3da37:	1e 
  a3da38:	62 51 a5 48 15 cc    	vunpckhpd zmm9,zmm11,zmm12
  a3da3e:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm9
  a3da45:	1d 
  a3da46:	62 61 7c 48 28 1d b0 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff6893b0]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3da4d:	93 68 ff 
  a3da50:	62 d2 25 40 7f c9    	vpermt2ps zmm1,zmm27,zmm9
  a3da56:	62 f1 dd 40 15 db    	vunpckhpd zmm3,zmm20,zmm3
  a3da5c:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm3
  a3da63:	1c 
  a3da64:	62 71 dd 48 15 df    	vunpckhpd zmm11,zmm4,zmm7
  a3da6a:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm11
  a3da71:	1b 
  a3da72:	62 d2 25 40 7f db    	vpermt2ps zmm3,zmm27,zmm11
  a3da78:	62 f1 7c 48 10 61 0d 	vmovups zmm4,ZMMWORD PTR [rcx+0x340]
  a3da7f:	62 f1 7c 48 10 79 0c 	vmovups zmm7,ZMMWORD PTR [rcx+0x300]
  a3da86:	62 f1 64 48 59 c7    	vmulps zmm0,zmm3,zmm7
  a3da8c:	62 f2 75 48 b8 c4    	vfmadd231ps zmm0,zmm1,zmm4
  a3da92:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a3da99:	09 
  a3da9a:	62 f1 74 48 59 c7    	vmulps zmm0,zmm1,zmm7
  a3daa0:	62 f2 5d 48 bc c3    	vfnmadd231ps zmm0,zmm4,zmm3
  a3daa6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm0
  a3daad:	1f 
  a3daae:	62 f1 7c 48 28 05 08 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff689508]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a3dab5:	95 68 ff 
  a3dab8:	62 12 7d 48 7f c0    	vpermt2ps zmm8,zmm0,zmm24
  a3dabe:	62 12 7d 48 7f f8    	vpermt2ps zmm15,zmm0,zmm24
  a3dac4:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm15
  a3dacb:	04 
  a3dacc:	62 02 7d 48 7f d0    	vpermt2ps zmm26,zmm0,zmm24
  a3dad2:	62 82 7d 48 7f e8    	vpermt2ps zmm21,zmm0,zmm24
  a3dad8:	62 31 7c 48 28 e3    	vmovaps zmm12,zmm19
  a3dade:	62 12 7d 48 7f e0    	vpermt2ps zmm12,zmm0,zmm24
  a3dae4:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm12
  a3daeb:	0f 
  a3daec:	62 82 7d 48 7f d0    	vpermt2ps zmm18,zmm0,zmm24
  a3daf2:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a3daf9:	62 92 7d 48 7f c8    	vpermt2ps zmm1,zmm0,zmm24
  a3daff:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x80]
  a3db06:	fe 
  a3db07:	62 92 7d 48 7f d8    	vpermt2ps zmm3,zmm0,zmm24
  a3db0d:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a3db14:	fe 
  a3db15:	62 82 7d 48 7f c8    	vpermt2ps zmm17,zmm0,zmm24
  a3db1b:	62 02 7d 48 7f f8    	vpermt2ps zmm31,zmm0,zmm24
  a3db21:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x40]
  a3db28:	01 
  a3db29:	62 92 7d 48 7f e0    	vpermt2ps zmm4,zmm0,zmm24
  a3db2f:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm4
  a3db36:	01 
  a3db37:	62 82 7d 48 7f f0    	vpermt2ps zmm22,zmm0,zmm24
  a3db3d:	62 e1 7c 48 28 d9    	vmovaps zmm19,zmm1
  a3db43:	62 f2 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm3
  a3db49:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a3db4f:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a3db56:	62 a1 7c 48 28 f9    	vmovaps zmm23,zmm17
  a3db5c:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x800]
  a3db63:	20 
  a3db64:	62 e2 6d 48 7f cb    	vpermt2ps zmm17,zmm2,zmm3
  a3db6a:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm17
  a3db71:	0b 
  a3db72:	62 01 7c 48 28 c7    	vmovaps zmm24,zmm31
  a3db78:	62 62 6d 48 7f fc    	vpermt2ps zmm31,zmm2,zmm4
  a3db7e:	62 21 7c 48 28 ce    	vmovaps zmm25,zmm22
  a3db84:	62 e2 6d 48 7f f3    	vpermt2ps zmm22,zmm2,zmm3
  a3db8a:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a3db90:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a3db96:	62 d2 6d 48 7f c7    	vpermt2ps zmm0,zmm2,zmm15
  a3db9c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a3dba3:	0e 
  a3dba4:	62 91 7c 48 28 e2    	vmovaps zmm4,zmm26
  a3dbaa:	62 62 6d 48 7f d3    	vpermt2ps zmm26,zmm2,zmm3
  a3dbb0:	62 a1 7c 48 28 c5    	vmovaps zmm16,zmm21
  a3dbb6:	62 c2 6d 48 7f ec    	vpermt2ps zmm21,zmm2,zmm12
  a3dbbc:	62 31 7c 48 28 c2    	vmovaps zmm8,zmm18
  a3dbc2:	62 e2 6d 48 7f d3    	vpermt2ps zmm18,zmm2,zmm3
  a3dbc8:	62 91 fd 48 15 ca    	vunpckhpd zmm1,zmm0,zmm26
  a3dbce:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm1
  a3dbd5:	19 
  a3dbd6:	62 b1 d5 40 15 c2    	vunpckhpd zmm0,zmm21,zmm18
  a3dbdc:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm0
  a3dbe3:	18 
  a3dbe4:	62 f2 25 40 7f c8    	vpermt2ps zmm1,zmm27,zmm0
  a3dbea:	62 a1 b5 48 15 e1    	vunpckhpd zmm20,zmm9,zmm17
  a3dbf0:	62 b1 85 40 15 c6    	vunpckhpd zmm0,zmm31,zmm22
  a3dbf6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm0
  a3dbfd:	17 
  a3dbfe:	62 31 7c 48 28 e4    	vmovaps zmm12,zmm20
  a3dc04:	62 72 25 40 7f e0    	vpermt2ps zmm12,zmm27,zmm0
  a3dc0a:	62 f1 7c 48 10 51 1d 	vmovups zmm2,ZMMWORD PTR [rcx+0x740]
  a3dc11:	62 f1 7c 48 10 41 1c 	vmovups zmm0,ZMMWORD PTR [rcx+0x700]
  a3dc18:	62 71 1c 48 59 c8    	vmulps zmm9,zmm12,zmm0
  a3dc1e:	62 72 75 48 b8 ca    	vfmadd231ps zmm9,zmm1,zmm2
  a3dc24:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm9
  a3dc2b:	08 
  a3dc2c:	62 f1 74 48 59 c0    	vmulps zmm0,zmm1,zmm0
  a3dc32:	62 d2 6d 48 bc c4    	vfnmadd231ps zmm0,zmm2,zmm12
  a3dc38:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm0
  a3dc3f:	1a 
  a3dc40:	62 71 7c 48 28 25 b6 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6892b6]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a3dc47:	92 68 ff 
  a3dc4a:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x1c0]
  a3dc51:	07 
  a3dc52:	62 72 1d 48 7f 5c 24 	vpermt2ps zmm11,zmm12,ZMMWORD PTR [rsp+0x140]
  a3dc59:	05 
  a3dc5a:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x500]
  a3dc61:	14 
  a3dc62:	62 d2 1d 48 7f d6    	vpermt2ps zmm2,zmm12,zmm14
  a3dc68:	62 42 1d 48 7f e5    	vpermt2ps zmm28,zmm12,zmm13
  a3dc6e:	62 62 1d 48 7f f6    	vpermt2ps zmm30,zmm12,zmm6
  a3dc74:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0xc0]
  a3dc7b:	03 
  a3dc7c:	62 72 1d 48 7f fd    	vpermt2ps zmm15,zmm12,zmm5
  a3dc82:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x180]
  a3dc89:	06 
  a3dc8a:	62 e2 1d 48 7f cd    	vpermt2ps zmm17,zmm12,zmm5
  a3dc90:	62 51 a5 48 15 cf    	vunpckhpd zmm9,zmm11,zmm15
  a3dc96:	62 b1 ed 48 15 c9    	vunpckhpd zmm1,zmm2,zmm17
  a3dc9c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm1
  a3dca3:	0c 
  a3dca4:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a3dcaa:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a3dcb0:	62 f2 25 40 7f c1    	vpermt2ps zmm0,zmm27,zmm1
  a3dcb6:	62 62 1d 48 7f ed    	vpermt2ps zmm29,zmm12,zmm5
  a3dcbc:	62 72 1d 48 7f d5    	vpermt2ps zmm10,zmm12,zmm5
  a3dcc2:	62 91 9d 40 15 cd    	vunpckhpd zmm1,zmm28,zmm29
  a3dcc8:	62 d1 8d 40 15 ea    	vunpckhpd zmm5,zmm30,zmm10
  a3dcce:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm5
  a3dcd5:	22 
  a3dcd6:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a3dcdc:	62 f2 25 40 7f d5    	vpermt2ps zmm2,zmm27,zmm5
  a3dce2:	62 f1 7c 48 10 69 04 	vmovups zmm5,ZMMWORD PTR [rcx+0x100]
  a3dce9:	62 f1 7c 48 10 71 05 	vmovups zmm6,ZMMWORD PTR [rcx+0x140]
  a3dcf0:	62 71 6c 48 59 ed    	vmulps zmm13,zmm2,zmm5
  a3dcf6:	62 72 7d 48 bc ee    	vfnmadd231ps zmm13,zmm0,zmm6
  a3dcfc:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm13
  a3dd03:	07 
  a3dd04:	62 f1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm5
  a3dd0a:	62 f2 4d 48 b8 c2    	vfmadd231ps zmm0,zmm6,zmm2
  a3dd10:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a3dd17:	03 
  a3dd18:	62 f2 1d 48 7f 7c 24 	vpermt2ps zmm7,zmm12,ZMMWORD PTR [rsp+0x100]
  a3dd1f:	04 
  a3dd20:	62 e2 1d 48 7f 44 24 	vpermt2ps zmm16,zmm12,ZMMWORD PTR [rsp+0x3c0]
  a3dd27:	0f 
  a3dd28:	62 e2 1d 48 7f 5c 24 	vpermt2ps zmm19,zmm12,ZMMWORD PTR [rsp-0x80]
  a3dd2f:	fe 
  a3dd30:	62 62 1d 48 7f 44 24 	vpermt2ps zmm24,zmm12,ZMMWORD PTR [rsp+0x40]
  a3dd37:	01 
  a3dd38:	62 f2 1d 48 7f e3    	vpermt2ps zmm4,zmm12,zmm3
  a3dd3e:	62 72 1d 48 7f c3    	vpermt2ps zmm8,zmm12,zmm3
  a3dd44:	62 e2 1d 48 7f fb    	vpermt2ps zmm23,zmm12,zmm3
  a3dd4a:	62 62 1d 48 7f cb    	vpermt2ps zmm25,zmm12,zmm3
  a3dd50:	62 b1 e5 40 15 ef    	vunpckhpd zmm5,zmm19,zmm23
  a3dd56:	62 91 bd 40 15 c1    	vunpckhpd zmm0,zmm24,zmm25
  a3dd5c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a3dd63:	0d 
  a3dd64:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a3dd6a:	62 f2 25 40 7f d0    	vpermt2ps zmm2,zmm27,zmm0
  a3dd70:	62 f1 c5 48 15 c4    	vunpckhpd zmm0,zmm7,zmm4
  a3dd76:	62 d1 fd 40 15 f0    	vunpckhpd zmm6,zmm16,zmm8
  a3dd7c:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm6
  a3dd83:	0a 
  a3dd84:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a3dd8a:	62 72 25 40 7f e6    	vpermt2ps zmm12,zmm27,zmm6
  a3dd90:	62 71 7c 48 10 69 15 	vmovups zmm13,ZMMWORD PTR [rcx+0x540]
  a3dd97:	62 61 7c 48 10 59 14 	vmovups zmm27,ZMMWORD PTR [rcx+0x500]
  a3dd9e:	62 91 1c 48 59 db    	vmulps zmm3,zmm12,zmm27
  a3dda4:	62 d2 6d 48 bc dd    	vfnmadd231ps zmm3,zmm2,zmm13
  a3ddaa:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm3
  a3ddb1:	06 
  a3ddb2:	62 91 6c 48 59 d3    	vmulps zmm2,zmm2,zmm27
  a3ddb8:	62 d2 15 48 b8 d4    	vfmadd231ps zmm2,zmm13,zmm12
  a3ddbe:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a3ddc5:	01 
  a3ddc6:	62 d1 a5 48 14 d7    	vunpcklpd zmm2,zmm11,zmm15
  a3ddcc:	62 b1 8d 48 14 f1    	vunpcklpd zmm6,zmm14,zmm17
  a3ddd2:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm6
  a3ddd9:	05 
  a3ddda:	62 91 9d 40 14 dd    	vunpcklpd zmm3,zmm28,zmm29
  a3dde0:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a3dde7:	fe 
  a3dde8:	62 51 8d 40 14 da    	vunpcklpd zmm11,zmm30,zmm10
  a3ddee:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm11
  a3ddf5:	04 
  a3ddf6:	62 61 7c 48 28 da    	vmovaps zmm27,zmm2
  a3ddfc:	62 61 7c 48 28 35 3a 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff68903a]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a3de03:	90 68 ff 
  a3de06:	62 f2 0d 40 7f d6    	vpermt2ps zmm2,zmm30,zmm6
  a3de0c:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a3de12:	62 52 0d 40 7f d3    	vpermt2ps zmm10,zmm30,zmm11
  a3de18:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a3de1f:	62 71 7c 48 10 69 03 	vmovups zmm13,ZMMWORD PTR [rcx+0xc0]
  a3de26:	62 d1 2c 48 59 dc    	vmulps zmm3,zmm10,zmm12
  a3de2c:	62 d2 6d 48 bc dd    	vfnmadd231ps zmm3,zmm2,zmm13
  a3de32:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm3
  a3de39:	14 
  a3de3a:	62 d1 6c 48 59 d4    	vmulps zmm2,zmm2,zmm12
  a3de40:	62 d2 15 48 b8 d2    	vfmadd231ps zmm2,zmm13,zmm10
  a3de46:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm2
  a3de4d:	0f 
  a3de4e:	62 f1 c5 48 14 d4    	vunpcklpd zmm2,zmm7,zmm4
  a3de54:	62 51 fd 40 14 d0    	vunpcklpd zmm10,zmm16,zmm8
  a3de5a:	62 b1 e5 40 14 df    	vunpcklpd zmm3,zmm19,zmm23
  a3de60:	62 01 bd 40 14 c1    	vunpcklpd zmm24,zmm24,zmm25
  a3de66:	62 e1 7c 48 28 c3    	vmovaps zmm16,zmm3
  a3de6c:	62 92 0d 40 7f d8    	vpermt2ps zmm3,zmm30,zmm24
  a3de72:	62 e1 7c 48 28 fa    	vmovaps zmm23,zmm2
  a3de78:	62 d2 0d 40 7f d2    	vpermt2ps zmm2,zmm30,zmm10
  a3de7e:	62 f1 7c 48 10 61 13 	vmovups zmm4,ZMMWORD PTR [rcx+0x4c0]
  a3de85:	62 f1 7c 48 10 79 12 	vmovups zmm7,ZMMWORD PTR [rcx+0x480]
  a3de8c:	62 f1 6c 48 59 f7    	vmulps zmm6,zmm2,zmm7
  a3de92:	62 f2 65 48 bc f4    	vfnmadd231ps zmm6,zmm3,zmm4
  a3de98:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm6
  a3de9f:	23 
  a3dea0:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a3dea6:	62 f2 5d 48 b8 da    	vfmadd231ps zmm3,zmm4,zmm2
  a3deac:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x900],zmm3
  a3deb3:	24 
  a3deb4:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  a3debb:	62 f1 ed 48 14 54 24 	vunpcklpd zmm2,zmm2,ZMMWORD PTR [rsp+0x2c0]
  a3dec2:	0b 
  a3dec3:	62 31 85 40 14 e6    	vunpcklpd zmm12,zmm31,zmm22
  a3dec9:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x380]
  a3ded0:	0e 
  a3ded1:	62 91 e5 48 14 da    	vunpcklpd zmm3,zmm3,zmm26
  a3ded7:	62 31 d5 40 14 f2    	vunpcklpd zmm14,zmm21,zmm18
  a3dedd:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a3dee3:	62 d2 0d 40 7f de    	vpermt2ps zmm3,zmm30,zmm14
  a3dee9:	62 71 7c 48 28 da    	vmovaps zmm11,zmm2
  a3deef:	62 d2 0d 40 7f d4    	vpermt2ps zmm2,zmm30,zmm12
  a3def5:	62 f1 7c 48 10 61 1b 	vmovups zmm4,ZMMWORD PTR [rcx+0x6c0]
  a3defc:	62 f1 7c 48 10 79 1a 	vmovups zmm7,ZMMWORD PTR [rcx+0x680]
  a3df03:	62 71 6c 48 59 c7    	vmulps zmm8,zmm2,zmm7
  a3df09:	62 72 65 48 b8 c4    	vfmadd231ps zmm8,zmm3,zmm4
  a3df0f:	62 41 7c 48 28 e8    	vmovaps zmm29,zmm8
  a3df15:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a3df1b:	62 f2 5d 48 bc da    	vfnmadd231ps zmm3,zmm4,zmm2
  a3df21:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a3df28:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x440]
  a3df2f:	11 
  a3df30:	62 f1 ed 48 14 54 24 	vunpcklpd zmm2,zmm2,ZMMWORD PTR [rsp-0x40]
  a3df37:	ff 
  a3df38:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x400]
  a3df3f:	10 
  a3df40:	62 61 e5 48 14 4c 24 	vunpcklpd zmm25,zmm3,ZMMWORD PTR [rsp+0x80]
  a3df47:	02 
  a3df48:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x580]
  a3df4f:	16 
  a3df50:	62 f1 e5 48 14 64 24 	vunpcklpd zmm4,zmm3,ZMMWORD PTR [rsp+0x540]
  a3df57:	15 
  a3df58:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x4c0]
  a3df5f:	13 
  a3df60:	62 f1 e5 48 14 5c 24 	vunpcklpd zmm3,zmm3,ZMMWORD PTR [rsp+0x480]
  a3df67:	12 
  a3df68:	62 71 7c 48 28 ec    	vmovaps zmm13,zmm4
  a3df6e:	62 f2 0d 40 7f e3    	vpermt2ps zmm4,zmm30,zmm3
  a3df74:	62 e1 7c 48 28 ca    	vmovaps zmm17,zmm2
  a3df7a:	62 92 0d 40 7f d1    	vpermt2ps zmm2,zmm30,zmm25
  a3df80:	62 f1 7c 48 10 79 0b 	vmovups zmm7,ZMMWORD PTR [rcx+0x2c0]
  a3df87:	62 71 7c 48 10 41 0a 	vmovups zmm8,ZMMWORD PTR [rcx+0x280]
  a3df8e:	62 51 6c 48 59 f8    	vmulps zmm15,zmm2,zmm8
  a3df94:	62 72 5d 48 b8 ff    	vfmadd231ps zmm15,zmm4,zmm7
  a3df9a:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm15
  a3dfa1:	02 
  a3dfa2:	62 d1 5c 48 59 e0    	vmulps zmm4,zmm4,zmm8
  a3dfa8:	62 f2 45 48 bc e2    	vfnmadd231ps zmm4,zmm7,zmm2
  a3dfae:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a3dfb5:	ff 
  a3dfb6:	62 72 0d 40 7f 4c 24 	vpermt2ps zmm9,zmm30,ZMMWORD PTR [rsp+0x300]
  a3dfbd:	0c 
  a3dfbe:	62 f2 0d 40 7f 4c 24 	vpermt2ps zmm1,zmm30,ZMMWORD PTR [rsp+0x880]
  a3dfc5:	22 
  a3dfc6:	62 f1 7c 48 10 51 07 	vmovups zmm2,ZMMWORD PTR [rcx+0x1c0]
  a3dfcd:	62 f1 7c 48 10 61 06 	vmovups zmm4,ZMMWORD PTR [rcx+0x180]
  a3dfd4:	62 f1 74 48 59 fc    	vmulps zmm7,zmm1,zmm4
  a3dfda:	62 f2 35 48 bc fa    	vfnmadd231ps zmm7,zmm9,zmm2
  a3dfe0:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm7
  a3dfe7:	16 
  a3dfe8:	62 f1 34 48 59 e4    	vmulps zmm4,zmm9,zmm4
  a3dfee:	62 f2 6d 48 b8 e1    	vfmadd231ps zmm4,zmm2,zmm1
  a3dff4:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm4
  a3dffb:	0e 
  a3dffc:	62 f2 0d 40 7f 6c 24 	vpermt2ps zmm5,zmm30,ZMMWORD PTR [rsp+0x340]
  a3e003:	0d 
  a3e004:	62 f2 0d 40 7f 44 24 	vpermt2ps zmm0,zmm30,ZMMWORD PTR [rsp+0x280]
  a3e00b:	0a 
  a3e00c:	62 f1 7c 48 10 49 17 	vmovups zmm1,ZMMWORD PTR [rcx+0x5c0]
  a3e013:	62 f1 7c 48 10 51 16 	vmovups zmm2,ZMMWORD PTR [rcx+0x580]
  a3e01a:	62 f1 7c 48 59 fa    	vmulps zmm7,zmm0,zmm2
  a3e020:	62 f2 55 48 bc f9    	vfnmadd231ps zmm7,zmm5,zmm1
  a3e026:	62 f1 54 48 59 d2    	vmulps zmm2,zmm5,zmm2
  a3e02c:	62 f2 75 48 b8 d0    	vfmadd231ps zmm2,zmm1,zmm0
  a3e032:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm2
  a3e039:	0d 
  a3e03a:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x640]
  a3e041:	19 
  a3e042:	62 f2 0d 40 7f 54 24 	vpermt2ps zmm2,zmm30,ZMMWORD PTR [rsp+0x600]
  a3e049:	18 
  a3e04a:	62 e2 0d 40 7f 64 24 	vpermt2ps zmm20,zmm30,ZMMWORD PTR [rsp+0x5c0]
  a3e051:	17 
  a3e052:	62 f1 7c 48 10 41 1f 	vmovups zmm0,ZMMWORD PTR [rcx+0x7c0]
  a3e059:	62 f1 7c 48 10 49 1e 	vmovups zmm1,ZMMWORD PTR [rcx+0x780]
  a3e060:	62 61 5c 40 59 f9    	vmulps zmm31,zmm20,zmm1
  a3e066:	62 62 6d 48 b8 f8    	vfmadd231ps zmm31,zmm2,zmm0
  a3e06c:	62 f1 6c 48 59 c9    	vmulps zmm1,zmm2,zmm1
  a3e072:	62 b2 7d 48 bc cc    	vfnmadd231ps zmm1,zmm0,zmm20
  a3e078:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm1
  a3e07f:	0c 
  a3e080:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x780]
  a3e087:	1e 
  a3e088:	62 f2 0d 40 7f 4c 24 	vpermt2ps zmm1,zmm30,ZMMWORD PTR [rsp+0x740]
  a3e08f:	1d 
  a3e090:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x700]
  a3e097:	1c 
  a3e098:	62 f2 0d 40 7f 54 24 	vpermt2ps zmm2,zmm30,ZMMWORD PTR [rsp+0x6c0]
  a3e09f:	1b 
  a3e0a0:	62 f1 7c 48 10 41 0f 	vmovups zmm0,ZMMWORD PTR [rcx+0x3c0]
  a3e0a7:	62 f1 7c 48 10 61 0e 	vmovups zmm4,ZMMWORD PTR [rcx+0x380]
  a3e0ae:	62 61 6c 48 59 d4    	vmulps zmm26,zmm2,zmm4
  a3e0b4:	62 62 75 48 b8 d0    	vfmadd231ps zmm26,zmm1,zmm0
  a3e0ba:	62 61 74 48 59 e4    	vmulps zmm28,zmm1,zmm4
  a3e0c0:	62 62 7d 48 bc e2    	vfnmadd231ps zmm28,zmm0,zmm2
  a3e0c6:	62 f1 7c 48 28 2d 30 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff688d30]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3e0cd:	8d 68 ff 
  a3e0d0:	62 c2 55 48 7f fa    	vpermt2ps zmm23,zmm5,zmm10
  a3e0d6:	62 82 55 48 7f c0    	vpermt2ps zmm16,zmm5,zmm24
  a3e0dc:	62 f1 7c 48 10 41 11 	vmovups zmm0,ZMMWORD PTR [rcx+0x440]
  a3e0e3:	62 f1 7c 48 10 61 10 	vmovups zmm4,ZMMWORD PTR [rcx+0x400]
  a3e0ea:	62 61 7c 40 59 c4    	vmulps zmm24,zmm16,zmm4
  a3e0f0:	62 62 45 40 b8 c0    	vfmadd231ps zmm24,zmm23,zmm0
  a3e0f6:	62 e1 44 40 59 fc    	vmulps zmm23,zmm23,zmm4
  a3e0fc:	62 a2 7d 48 bc f8    	vfnmadd231ps zmm23,zmm0,zmm16
  a3e102:	62 82 55 48 7f c9    	vpermt2ps zmm17,zmm5,zmm25
  a3e108:	62 72 55 48 7f eb    	vpermt2ps zmm13,zmm5,zmm3
  a3e10e:	62 f1 7c 48 10 41 09 	vmovups zmm0,ZMMWORD PTR [rcx+0x240]
  a3e115:	62 f1 7c 48 10 59 08 	vmovups zmm3,ZMMWORD PTR [rcx+0x200]
  a3e11c:	62 61 14 48 59 cb    	vmulps zmm25,zmm13,zmm3
  a3e122:	62 62 75 40 bc c8    	vfnmadd231ps zmm25,zmm17,zmm0
  a3e128:	62 e1 74 40 59 c3    	vmulps zmm16,zmm17,zmm3
  a3e12e:	62 c2 7d 48 b8 c5    	vfmadd231ps zmm16,zmm0,zmm13
  a3e134:	62 52 55 48 7f dc    	vpermt2ps zmm11,zmm5,zmm12
  a3e13a:	62 d2 55 48 7f f6    	vpermt2ps zmm6,zmm5,zmm14
  a3e140:	62 f1 7c 48 10 59 19 	vmovups zmm3,ZMMWORD PTR [rcx+0x640]
  a3e147:	62 f1 7c 48 10 61 18 	vmovups zmm4,ZMMWORD PTR [rcx+0x600]
  a3e14e:	62 71 4c 48 59 d4    	vmulps zmm10,zmm6,zmm4
  a3e154:	62 72 25 48 bc d3    	vfnmadd231ps zmm10,zmm11,zmm3
  a3e15a:	62 e1 24 48 59 e4    	vmulps zmm20,zmm11,zmm4
  a3e160:	62 e2 65 48 b8 e6    	vfmadd231ps zmm20,zmm3,zmm6
  a3e166:	62 62 55 48 7f 5c 24 	vpermt2ps zmm27,zmm5,ZMMWORD PTR [rsp+0x140]
  a3e16d:	05 
  a3e16e:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a3e175:	fe 
  a3e176:	62 f2 55 48 7f 44 24 	vpermt2ps zmm0,zmm5,ZMMWORD PTR [rsp+0x100]
  a3e17d:	04 
  a3e17e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a3e185:	fe 
  a3e186:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0x1c0]
  a3e18d:	07 
  a3e18e:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x180]
  a3e195:	06 
  a3e196:	62 d1 54 40 5c df    	vsubps zmm3,zmm21,zmm15
  a3e19c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a3e1a3:	03 
  a3e1a4:	62 f1 7c 48 5c 64 24 	vsubps zmm4,zmm0,ZMMWORD PTR [rsp+0x40]
  a3e1ab:	01 
  a3e1ac:	62 f1 64 48 58 c4    	vaddps zmm0,zmm3,zmm4
  a3e1b2:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm0
  a3e1b9:	1b 
  a3e1ba:	62 f1 5c 48 5c c3    	vsubps zmm0,zmm4,zmm3
  a3e1c0:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm0
  a3e1c7:	15 
  a3e1c8:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x240]
  a3e1cf:	09 
  a3e1d0:	62 f1 7c 48 5c 5c 24 	vsubps zmm3,zmm0,ZMMWORD PTR [rsp+0x200]
  a3e1d7:	08 
  a3e1d8:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x7c0]
  a3e1df:	1f 
  a3e1e0:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x680]
  a3e1e7:	1a 
  a3e1e8:	62 d1 1c 48 5c e3    	vsubps zmm4,zmm12,zmm11
  a3e1ee:	62 f1 64 48 5c ec    	vsubps zmm5,zmm3,zmm4
  a3e1f4:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm5
  a3e1fb:	19 
  a3e1fc:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a3e202:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm3
  a3e209:	10 
  a3e20a:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x500]
  a3e211:	14 
  a3e212:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x8c0]
  a3e219:	23 
  a3e21a:	62 b1 64 40 5c d9    	vsubps zmm3,zmm19,zmm17
  a3e220:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm3
  a3e227:	18 
  a3e228:	62 01 7c 48 28 f5    	vmovaps zmm30,zmm29
  a3e22e:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x80]
  a3e235:	02 
  a3e236:	62 91 14 40 5c e6    	vsubps zmm4,zmm29,zmm30
  a3e23c:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm4
  a3e243:	17 
  a3e244:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a3e24a:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x3c0]
  a3e251:	0f 
  a3e252:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x900]
  a3e259:	24 
  a3e25a:	62 b1 4c 40 5c e2    	vsubps zmm4,zmm22,zmm18
  a3e260:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm4
  a3e267:	12 
  a3e268:	62 71 7c 48 10 34 24 	vmovups zmm14,ZMMWORD PTR [rsp]
  a3e26f:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp-0x40]
  a3e276:	ff 
  a3e277:	62 d1 0c 48 5c ed    	vsubps zmm5,zmm14,zmm13
  a3e27d:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm5
  a3e284:	11 
  a3e285:	62 f1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm5
  a3e28b:	62 f2 7d 48 18 05 6b 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff63746b]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a3e292:	74 63 ff 
  a3e295:	62 f1 5c 48 59 e8    	vmulps zmm5,zmm4,zmm0
  a3e29b:	62 72 7d 48 18 0d bf 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff6373bf]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a3e2a2:	73 63 ff 
  a3e2a5:	62 d2 65 48 b8 e9    	vfmadd231ps zmm5,zmm3,zmm9
  a3e2ab:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm5
  a3e2b2:	1e 
  a3e2b3:	62 d1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm9
  a3e2b9:	62 f2 7d 48 bc e3    	vfnmadd231ps zmm4,zmm0,zmm3
  a3e2bf:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm4
  a3e2c6:	1d 
  a3e2c7:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x580]
  a3e2ce:	16 
  a3e2cf:	62 f1 3c 48 5c c7    	vsubps zmm0,zmm8,zmm7
  a3e2d5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a3e2dc:	05 
  a3e2dd:	62 91 2c 40 5c cf    	vsubps zmm1,zmm26,zmm31
  a3e2e3:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a3e2ea:	04 
  a3e2eb:	62 f1 7c 48 5c e9    	vsubps zmm5,zmm0,zmm1
  a3e2f1:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x380]
  a3e2f8:	0e 
  a3e2f9:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x340]
  a3e300:	0d 
  a3e301:	62 f1 6c 48 5c e1    	vsubps zmm4,zmm2,zmm1
  a3e307:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm4
  a3e30e:	0b 
  a3e30f:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x300]
  a3e316:	0c 
  a3e317:	62 91 64 48 5c c4    	vsubps zmm0,zmm3,zmm28
  a3e31d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a3e324:	0a 
  a3e325:	62 f1 5c 48 5c f0    	vsubps zmm6,zmm4,zmm0
  a3e32b:	62 d1 4c 48 59 e1    	vmulps zmm4,zmm6,zmm9
  a3e331:	62 f2 7d 48 18 05 c5 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6373c5]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a3e338:	73 63 ff 
  a3e33b:	62 f2 55 48 b8 e0    	vfmadd231ps zmm4,zmm5,zmm0
  a3e341:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm4
  a3e348:	1c 
  a3e349:	62 d1 54 48 59 e1    	vmulps zmm4,zmm5,zmm9
  a3e34f:	62 f2 7d 48 bc e6    	vfnmadd231ps zmm4,zmm0,zmm6
  a3e355:	62 91 7c 48 28 eb    	vmovaps zmm5,zmm27
  a3e35b:	62 01 24 40 5c d8    	vsubps zmm27,zmm27,zmm24
  a3e361:	62 f1 3c 40 58 ed    	vaddps zmm5,zmm24,zmm5
  a3e367:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm5
  a3e36e:	13 
  a3e36f:	62 b1 7c 40 5c f4    	vsubps zmm6,zmm16,zmm20
  a3e375:	62 21 7c 40 58 c4    	vaddps zmm24,zmm16,zmm20
  a3e37b:	62 d1 1c 48 58 c3    	vaddps zmm0,zmm12,zmm11
  a3e381:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm0
  a3e388:	1f 
  a3e389:	62 d1 54 40 58 c7    	vaddps zmm0,zmm21,zmm15
  a3e38f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm0
  a3e396:	1a 
  a3e397:	62 71 6c 48 58 d9    	vaddps zmm11,zmm2,zmm1
  a3e39d:	62 11 2c 40 58 ff    	vaddps zmm15,zmm26,zmm31
  a3e3a3:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm15
  a3e3aa:	06 
  a3e3ab:	62 e1 3c 48 58 e7    	vaddps zmm20,zmm8,zmm7
  a3e3b1:	62 e1 1c 40 58 eb    	vaddps zmm21,zmm28,zmm3
  a3e3b7:	62 a1 64 40 58 c1    	vaddps zmm16,zmm19,zmm17
  a3e3bd:	62 c1 14 48 58 ce    	vaddps zmm17,zmm13,zmm14
  a3e3c3:	62 b1 4c 40 58 da    	vaddps zmm3,zmm22,zmm18
  a3e3c9:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm3
  a3e3d0:	07 
  a3e3d1:	62 01 14 40 58 f6    	vaddps zmm30,zmm29,zmm30
  a3e3d7:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a3e3de:	fe 
  a3e3df:	62 b1 7c 48 5c ef    	vsubps zmm5,zmm0,zmm23
  a3e3e5:	62 31 7c 48 58 e7    	vaddps zmm12,zmm0,zmm23
  a3e3eb:	62 91 2c 48 5c c1    	vsubps zmm0,zmm10,zmm25
  a3e3f1:	62 41 34 40 58 fa    	vaddps zmm31,zmm25,zmm10
  a3e3f7:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a3e3fe:	01 
  a3e3ff:	62 f1 74 48 58 4c 24 	vaddps zmm1,zmm1,ZMMWORD PTR [rsp+0xc0]
  a3e406:	03 
  a3e407:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x200]
  a3e40e:	08 
  a3e40f:	62 61 6c 48 58 4c 24 	vaddps zmm25,zmm2,ZMMWORD PTR [rsp+0x240]
  a3e416:	09 
  a3e417:	62 b1 7c 40 5c d1    	vsubps zmm2,zmm16,zmm17
  a3e41d:	62 81 64 48 5c fe    	vsubps zmm23,zmm3,zmm30
  a3e423:	62 b1 6c 48 58 df    	vaddps zmm3,zmm2,zmm23
  a3e429:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a3e430:	62 f1 44 40 5c d2    	vsubps zmm2,zmm23,zmm2
  a3e436:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a3e43d:	fe 
  a3e43e:	62 d1 24 48 5c d7    	vsubps zmm2,zmm11,zmm15
  a3e444:	62 c1 7c 48 28 db    	vmovaps zmm19,zmm11
  a3e44a:	62 a1 5c 40 5c fd    	vsubps zmm23,zmm20,zmm21
  a3e450:	62 b1 6c 48 5c df    	vsubps zmm3,zmm2,zmm23
  a3e456:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a3e45d:	ff 
  a3e45e:	62 e1 44 40 58 fa    	vaddps zmm23,zmm23,zmm2
  a3e464:	62 71 24 40 5c c0    	vsubps zmm8,zmm27,zmm0
  a3e46a:	62 91 7c 48 58 c3    	vaddps zmm0,zmm0,zmm27
  a3e470:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a3e477:	02 
  a3e478:	62 f2 7d 48 18 3d 1a 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff636f1a]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a3e47f:	6f 63 ff 
  a3e482:	62 f1 44 48 59 44 24 	vmulps zmm0,zmm7,ZMMWORD PTR [rsp+0x540]
  a3e489:	15 
  a3e48a:	62 f1 44 48 59 5c 24 	vmulps zmm3,zmm7,ZMMWORD PTR [rsp+0x400]
  a3e491:	10 
  a3e492:	62 f1 7c 48 58 d3    	vaddps zmm2,zmm0,zmm3
  a3e498:	62 f1 7c 48 5c db    	vsubps zmm3,zmm0,zmm3
  a3e49e:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a3e4a5:	04 
  a3e4a6:	62 71 7c 48 58 6c 24 	vaddps zmm13,zmm0,ZMMWORD PTR [rsp+0x140]
  a3e4ad:	05 
  a3e4ae:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x280]
  a3e4b5:	0a 
  a3e4b6:	62 71 7c 48 58 54 24 	vaddps zmm10,zmm0,ZMMWORD PTR [rsp+0x2c0]
  a3e4bd:	0b 
  a3e4be:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x5c0]
  a3e4c5:	17 
  a3e4c6:	62 71 7c 48 58 5c 24 	vaddps zmm11,zmm0,ZMMWORD PTR [rsp+0x600]
  a3e4cd:	18 
  a3e4ce:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x440]
  a3e4d5:	11 
  a3e4d6:	62 71 7c 48 58 74 24 	vaddps zmm14,zmm0,ZMMWORD PTR [rsp+0x480]
  a3e4dd:	12 
  a3e4de:	62 e1 54 48 5c f6    	vsubps zmm22,zmm5,zmm6
  a3e4e4:	62 f1 54 48 58 c6    	vaddps zmm0,zmm5,zmm6
  a3e4ea:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a3e4f1:	01 
  a3e4f2:	62 f1 44 48 59 6c 24 	vmulps zmm5,zmm7,ZMMWORD PTR [rsp+0x640]
  a3e4f9:	19 
  a3e4fa:	62 f1 44 48 59 74 24 	vmulps zmm6,zmm7,ZMMWORD PTR [rsp+0x6c0]
  a3e501:	1b 
  a3e502:	62 61 54 48 5c e6    	vsubps zmm28,zmm5,zmm6
  a3e508:	62 f1 4c 48 58 ed    	vaddps zmm5,zmm6,zmm5
  a3e50e:	62 d1 0c 48 59 f1    	vmulps zmm6,zmm14,zmm9
  a3e514:	62 f2 7d 48 18 05 e2 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6371e2]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a3e51b:	71 63 ff 
  a3e51e:	62 f2 25 48 b8 f0    	vfmadd231ps zmm6,zmm11,zmm0
  a3e524:	62 71 0c 48 59 f0    	vmulps zmm14,zmm14,zmm0
  a3e52a:	62 52 35 48 bc f3    	vfnmadd231ps zmm14,zmm9,zmm11
  a3e530:	62 71 2c 48 59 d8    	vmulps zmm11,zmm10,zmm0
  a3e536:	62 52 15 48 b8 d9    	vfmadd231ps zmm11,zmm13,zmm9
  a3e53c:	62 51 2c 48 59 d1    	vmulps zmm10,zmm10,zmm9
  a3e542:	62 52 7d 48 bc d5    	vfnmadd231ps zmm10,zmm0,zmm13
  a3e548:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x4c0]
  a3e54f:	13 
  a3e550:	62 11 7c 48 5c e8    	vsubps zmm13,zmm0,zmm24
  a3e556:	62 61 3c 40 58 c0    	vaddps zmm24,zmm24,zmm0
  a3e55c:	62 01 74 48 5c e9    	vsubps zmm29,zmm1,zmm25
  a3e562:	62 11 74 48 58 f9    	vaddps zmm15,zmm1,zmm25
  a3e568:	62 b1 5c 40 58 c5    	vaddps zmm0,zmm20,zmm21
  a3e56e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a3e575:	03 
  a3e576:	62 a1 7c 40 58 d1    	vaddps zmm18,zmm16,zmm17
  a3e57c:	62 81 1c 48 5c ef    	vsubps zmm21,zmm12,zmm31
  a3e582:	62 91 1c 48 58 c7    	vaddps zmm0,zmm12,zmm31
  a3e588:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x7c0]
  a3e58f:	1f 
  a3e590:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x680]
  a3e597:	1a 
  a3e598:	62 41 74 48 5c d1    	vsubps zmm26,zmm1,zmm9
  a3e59e:	62 e1 34 48 58 e1    	vaddps zmm20,zmm9,zmm1
  a3e5a4:	62 71 0c 40 58 64 24 	vaddps zmm12,zmm30,ZMMWORD PTR [rsp+0x1c0]
  a3e5ab:	07 
  a3e5ac:	62 e1 64 40 58 44 24 	vaddps zmm16,zmm19,ZMMWORD PTR [rsp+0x180]
  a3e5b3:	06 
  a3e5b4:	62 01 3c 48 5c dc    	vsubps zmm27,zmm8,zmm28
  a3e5ba:	62 d1 1c 40 58 c8    	vaddps zmm1,zmm28,zmm8
  a3e5c0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a3e5c7:	09 
  a3e5c8:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x740]
  a3e5cf:	1d 
  a3e5d0:	62 e1 74 48 5c dc    	vsubps zmm19,zmm1,zmm4
  a3e5d6:	62 f1 74 48 58 cc    	vaddps zmm1,zmm1,zmm4
  a3e5dc:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a3e5e3:	08 
  a3e5e4:	62 e1 4c 40 5c ca    	vsubps zmm17,zmm22,zmm2
  a3e5ea:	62 61 4c 40 58 e2    	vaddps zmm28,zmm22,zmm2
  a3e5f0:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x780]
  a3e5f7:	1e 
  a3e5f8:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x700]
  a3e5ff:	1c 
  a3e600:	62 61 74 48 58 ca    	vaddps zmm25,zmm1,zmm2
  a3e606:	62 e1 74 48 5c f2    	vsubps zmm22,zmm1,zmm2
  a3e60c:	62 11 14 48 5c c2    	vsubps zmm8,zmm13,zmm26
  a3e612:	62 51 2c 40 58 ed    	vaddps zmm13,zmm26,zmm13
  a3e618:	62 61 44 48 59 54 24 	vmulps zmm26,zmm7,ZMMWORD PTR [rsp-0x80]
  a3e61f:	fe 
  a3e620:	62 e1 44 40 59 ff    	vmulps zmm23,zmm23,zmm7
  a3e626:	62 21 2c 40 58 f7    	vaddps zmm30,zmm26,zmm23
  a3e62c:	62 a1 2c 40 5c ff    	vsubps zmm23,zmm26,zmm23
  a3e632:	62 01 54 40 5c d5    	vsubps zmm26,zmm21,zmm29
  a3e638:	62 81 54 40 58 ed    	vaddps zmm21,zmm21,zmm29
  a3e63e:	62 61 44 48 59 6c 24 	vmulps zmm29,zmm7,ZMMWORD PTR [rsp-0x40]
  a3e645:	ff 
  a3e646:	62 61 44 48 59 3c 24 	vmulps zmm31,zmm7,ZMMWORD PTR [rsp]
  a3e64d:	62 91 14 40 5c d7    	vsubps zmm2,zmm29,zmm31
  a3e653:	62 01 04 40 58 ed    	vaddps zmm29,zmm31,zmm29
  a3e659:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a3e660:	02 
  a3e661:	62 61 74 48 5c fb    	vsubps zmm31,zmm1,zmm3
  a3e667:	62 71 64 48 58 c9    	vaddps zmm9,zmm3,zmm1
  a3e66d:	62 d1 0c 48 5c da    	vsubps zmm3,zmm14,zmm10
  a3e673:	62 51 0c 48 58 f2    	vaddps zmm14,zmm14,zmm10
  a3e679:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a3e680:	01 
  a3e681:	62 71 74 48 5c d5    	vsubps zmm10,zmm1,zmm5
  a3e687:	62 f1 74 48 58 fd    	vaddps zmm7,zmm1,zmm5
  a3e68d:	62 f1 24 48 5c ce    	vsubps zmm1,zmm11,zmm6
  a3e693:	62 d1 4c 48 58 eb    	vaddps zmm5,zmm6,zmm11
  a3e699:	62 51 3c 40 5c df    	vsubps zmm11,zmm24,zmm15
  a3e69f:	62 01 04 48 58 c0    	vaddps zmm24,zmm15,zmm24
  a3e6a5:	62 31 1c 48 5c f8    	vsubps zmm15,zmm12,zmm16
  a3e6ab:	62 31 1c 48 58 e0    	vaddps zmm12,zmm12,zmm16
  a3e6b1:	62 b1 7c 48 5c f4    	vsubps zmm6,zmm0,zmm20
  a3e6b7:	62 b1 7c 48 58 e4    	vaddps zmm4,zmm0,zmm20
  a3e6bd:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0xc0]
  a3e6c4:	03 
  a3e6c5:	62 b1 7c 40 5c c2    	vsubps zmm0,zmm16,zmm18
  a3e6cb:	62 a1 6c 40 58 e0    	vaddps zmm20,zmm18,zmm16
  a3e6d1:	62 81 24 40 58 c1    	vaddps zmm16,zmm27,zmm25
  a3e6d7:	62 81 24 40 5c d1    	vsubps zmm18,zmm27,zmm25
  a3e6dd:	62 21 74 40 5c cb    	vsubps zmm25,zmm17,zmm19
  a3e6e3:	62 61 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm25
  a3e6ea:	62 21 74 40 58 db    	vaddps zmm27,zmm17,zmm19
  a3e6f0:	62 e1 3c 48 5c da    	vsubps zmm19,zmm8,zmm2
  a3e6f6:	62 e1 3c 48 58 ca    	vaddps zmm17,zmm8,zmm2
  a3e6fc:	62 91 2c 40 5c d6    	vsubps zmm2,zmm26,zmm30
  a3e702:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a3e709:	ff 
  a3e70a:	62 01 2c 40 58 ce    	vaddps zmm25,zmm26,zmm30
  a3e710:	62 61 04 40 5c d1    	vsubps zmm26,zmm31,zmm1
  a3e716:	62 61 04 40 58 f9    	vaddps zmm31,zmm31,zmm1
  a3e71c:	62 61 2c 48 5c f3    	vsubps zmm30,zmm10,zmm3
  a3e722:	62 f1 2c 48 58 db    	vaddps zmm3,zmm10,zmm3
  a3e728:	62 f1 24 48 5c d0    	vsubps zmm2,zmm11,zmm0
  a3e72e:	62 71 24 48 58 d0    	vaddps zmm10,zmm11,zmm0
  a3e734:	62 d1 4c 48 5c c7    	vsubps zmm0,zmm6,zmm15
  a3e73a:	62 d1 4c 48 58 f7    	vaddps zmm6,zmm6,zmm15
  a3e740:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x240]
  a3e747:	09 
  a3e748:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x200]
  a3e74f:	08 
  a3e750:	62 51 74 48 5c c3    	vsubps zmm8,zmm1,zmm11
  a3e756:	62 51 74 48 58 fb    	vaddps zmm15,zmm1,zmm11
  a3e75c:	62 b1 1c 40 5c ce    	vsubps zmm1,zmm28,zmm22
  a3e762:	62 a1 1c 40 58 f6    	vaddps zmm22,zmm28,zmm22
  a3e768:	62 31 14 48 5c df    	vsubps zmm11,zmm13,zmm23
  a3e76e:	62 31 14 48 58 ef    	vaddps zmm13,zmm13,zmm23
  a3e774:	62 81 54 40 5c fd    	vsubps zmm23,zmm21,zmm29
  a3e77a:	62 81 54 40 58 ed    	vaddps zmm21,zmm21,zmm29
  a3e780:	62 41 34 48 5c e6    	vsubps zmm28,zmm9,zmm14
  a3e786:	62 51 34 48 58 ce    	vaddps zmm9,zmm9,zmm14
  a3e78c:	62 71 44 48 5c f5    	vsubps zmm14,zmm7,zmm5
  a3e792:	62 f1 44 48 58 ed    	vaddps zmm5,zmm7,zmm5
  a3e798:	62 d1 3c 40 5c fc    	vsubps zmm7,zmm24,zmm12
  a3e79e:	62 51 3c 40 58 e4    	vaddps zmm12,zmm24,zmm12
  a3e7a4:	62 21 5c 48 5c c4    	vsubps zmm24,zmm4,zmm20
  a3e7aa:	62 b1 5c 48 58 e4    	vaddps zmm4,zmm4,zmm20
  a3e7b0:	62 e1 7c 48 28 25 46 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff653346]        # 91b00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1efb0>
  a3e7b7:	33 65 ff 
  a3e7ba:	62 72 5d 40 7f e4    	vpermt2ps zmm12,zmm20,zmm4
  a3e7c0:	62 73 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm12,0x2
  a3e7c7:	02 02 
  a3e7c9:	c5 7c 11 24 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm12
  a3e7ce:	62 72 5d 40 7f cd    	vpermt2ps zmm9,zmm20,zmm5
  a3e7d4:	62 73 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm9,0x2
  a3e7db:	05 02 
  a3e7dd:	c5 7c 11 4c 16 30    	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm9
  a3e7e3:	62 32 5d 40 7f ed    	vpermt2ps zmm13,zmm20,zmm21
  a3e7e9:	62 73 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm13,0x2
  a3e7f0:	08 02 
  a3e7f2:	c5 7c 11 6c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm13
  a3e7f8:	62 32 5d 40 7f fe    	vpermt2ps zmm15,zmm20,zmm22
  a3e7fe:	62 73 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm15,0x2
  a3e805:	0b 02 
  a3e807:	c5 7c 11 bc 16 90 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm15
  a3e80e:	00 00 
  a3e810:	62 72 5d 40 7f d6    	vpermt2ps zmm10,zmm20,zmm6
  a3e816:	62 73 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm10,0x2
  a3e81d:	0e 02 
  a3e81f:	c5 7c 11 94 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm10
  a3e826:	00 00 
  a3e828:	62 62 5d 40 7f fb    	vpermt2ps zmm31,zmm20,zmm3
  a3e82e:	62 63 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x110],zmm31,0x2
  a3e835:	11 02 
  a3e837:	62 61 7c 28 11 bc 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm31
  a3e83e:	f0 00 00 00 
  a3e842:	62 82 5d 40 7f c9    	vpermt2ps zmm17,zmm20,zmm25
  a3e848:	62 e3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x140],zmm17,0x2
  a3e84f:	14 02 
  a3e851:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm17
  a3e858:	09 
  a3e859:	62 82 5d 40 7f d3    	vpermt2ps zmm18,zmm20,zmm27
  a3e85f:	62 e3 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x170],zmm18,0x2
  a3e866:	17 02 
  a3e868:	62 e1 7c 28 11 94 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x150],ymm18
  a3e86f:	50 01 00 00 
  a3e873:	62 92 5d 40 7f f8    	vpermt2ps zmm7,zmm20,zmm24
  a3e879:	62 f3 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1a0],zmm7,0x2
  a3e880:	1a 02 
  a3e882:	c5 fc 11 bc 16 80 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x180],ymm7
  a3e889:	00 00 
  a3e88b:	62 42 5d 40 7f e6    	vpermt2ps zmm28,zmm20,zmm14
  a3e891:	62 63 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1d0],zmm28,0x2
  a3e898:	1d 02 
  a3e89a:	62 61 7c 28 11 a4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x1b0],ymm28
  a3e8a1:	b0 01 00 00 
  a3e8a5:	62 32 5d 40 7f df    	vpermt2ps zmm11,zmm20,zmm23
  a3e8ab:	62 73 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x200],zmm11,0x2
  a3e8b2:	20 02 
  a3e8b4:	c5 7c 11 9c 16 e0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1e0],ymm11
  a3e8bb:	00 00 
  a3e8bd:	62 72 5d 40 7f c1    	vpermt2ps zmm8,zmm20,zmm1
  a3e8c3:	62 73 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x230],zmm8,0x2
  a3e8ca:	23 02 
  a3e8cc:	c5 7c 11 84 16 10 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x210],ymm8
  a3e8d3:	00 00 
  a3e8d5:	62 f2 5d 40 7f d0    	vpermt2ps zmm2,zmm20,zmm0
  a3e8db:	62 f3 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x260],zmm2,0x2
  a3e8e2:	26 02 
  a3e8e4:	c5 fc 11 94 16 40 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x240],ymm2
  a3e8eb:	00 00 
  a3e8ed:	62 02 5d 40 7f d6    	vpermt2ps zmm26,zmm20,zmm30
  a3e8f3:	62 63 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x290],zmm26,0x2
  a3e8fa:	29 02 
  a3e8fc:	62 61 7c 28 11 94 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x270],ymm26
  a3e903:	70 02 00 00 
  a3e907:	62 e2 5d 40 7f 5c 24 	vpermt2ps zmm19,zmm20,ZMMWORD PTR [rsp-0x40]
  a3e90e:	ff 
  a3e90f:	62 e3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x2c0],zmm19,0x2
  a3e916:	2c 02 
  a3e918:	62 e1 7c 28 11 5c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x2a0],ymm19
  a3e91f:	15 
  a3e920:	62 e2 5d 40 7f 04 24 	vpermt2ps zmm16,zmm20,ZMMWORD PTR [rsp]
  a3e927:	62 e3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x2f0],zmm16,0x2
  a3e92e:	2f 02 
  a3e930:	62 e1 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x2d0],ymm16
  a3e937:	d0 02 00 00 
  a3e93b:	48 81 c2 00 03 00 00 	add    rdx,0x300
  a3e942:	48 39 d0             	cmp    rax,rdx
  a3e945:	0f 85 45 ed ff ff    	jne    a3d690 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x50>
  a3e94b:	48 81 c4 48 09 00 00 	add    rsp,0x948
  a3e952:	c5 f8 77             	vzeroupper
  a3e955:	c3                   	ret
