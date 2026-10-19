
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a45880 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a45880:	48 81 ec 08 02 00 00 	sub    rsp,0x208
  a45887:	62 f1 7c 48 28 05 ef 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6816ef]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a4588e:	16 68 ff 
  a45891:	62 f1 7c 48 28 0d 25 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff681725]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a45898:	17 68 ff 
  a4589b:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a4589f:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a458a5:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  a458ac:	04 
  a458ad:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a458b1:	62 f2 75 48 7f c0    	vpermt2ps zmm0,zmm1,zmm0
  a458b7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a458be:	03 
  a458bf:	48 c1 e2 07          	shl    rdx,0x7
  a458c3:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a458c7:	31 d2                	xor    edx,edx
  a458c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  a458d0:	62 f1 7c 48 10 04 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1]
  a458d7:	c5 fc 10 4c 17 40    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x40]
  a458dd:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a458e3:	62 f1 7c 48 28 1d 93 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff64c993]        # 92280 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f730>
  a458ea:	c9 64 ff 
  a458ed:	62 f2 65 48 7f d1    	vpermt2ps zmm2,zmm3,zmm1
  a458f3:	62 71 7c 48 28 15 c3 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff64c9c3]        # 922c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f770>
  a458fa:	c9 64 ff 
  a458fd:	62 f2 2d 48 7f c1    	vpermt2ps zmm0,zmm10,zmm1
  a45903:	62 f1 7c 48 10 8c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x60]
  a4590a:	60 00 00 00 
  a4590e:	c5 fc 10 a4 17 a0 00 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0xa0]
  a45915:	00 00 
  a45917:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a4591d:	62 f2 65 48 7f ec    	vpermt2ps zmm5,zmm3,zmm4
  a45923:	62 f2 2d 48 7f cc    	vpermt2ps zmm1,zmm10,zmm4
  a45929:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a45930:	03 
  a45931:	c5 fc 10 b4 17 00 01 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x100]
  a45938:	00 00 
  a4593a:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a45940:	62 f2 65 48 7f fe    	vpermt2ps zmm7,zmm3,zmm6
  a45946:	62 f2 2d 48 7f e6    	vpermt2ps zmm4,zmm10,zmm6
  a4594c:	62 f1 7c 48 10 b4 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x120]
  a45953:	20 01 00 00 
  a45957:	c5 7c 10 84 17 60 01 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x160]
  a4595e:	00 00 
  a45960:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a45966:	62 52 65 48 7f c8    	vpermt2ps zmm9,zmm3,zmm8
  a4596c:	62 d2 2d 48 7f f0    	vpermt2ps zmm6,zmm10,zmm8
  a45972:	62 71 7c 48 58 c4    	vaddps zmm8,zmm0,zmm4
  a45978:	62 71 74 48 58 d6    	vaddps zmm10,zmm1,zmm6
  a4597e:	62 51 3c 48 58 da    	vaddps zmm11,zmm8,zmm10
  a45984:	62 71 6c 48 58 e7    	vaddps zmm12,zmm2,zmm7
  a4598a:	62 51 54 48 58 e9    	vaddps zmm13,zmm5,zmm9
  a45990:	62 c1 1c 48 58 ed    	vaddps zmm21,zmm12,zmm13
  a45996:	62 f1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm4
  a4599c:	62 d1 54 48 5c e1    	vsubps zmm4,zmm5,zmm9
  a459a2:	62 f1 7c 48 58 ec    	vaddps zmm5,zmm0,zmm4
  a459a8:	62 f1 6c 48 5c d7    	vsubps zmm2,zmm2,zmm7
  a459ae:	62 f1 4c 48 5c c9    	vsubps zmm1,zmm6,zmm1
  a459b4:	62 61 74 48 58 f2    	vaddps zmm30,zmm1,zmm2
  a459ba:	62 d1 3c 48 5c f2    	vsubps zmm6,zmm8,zmm10
  a459c0:	62 41 1c 48 5c dd    	vsubps zmm27,zmm12,zmm13
  a459c6:	62 f1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm4
  a459cc:	62 61 6c 48 5c f9    	vsubps zmm31,zmm2,zmm1
  a459d2:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a459d8:	62 e1 7c 48 28 05 9e 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff68159e]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a459df:	15 68 ff 
  a459e2:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  a459e7:	62 d2 7d 40 7f cf    	vpermt2ps zmm1,zmm16,zmm15
  a459ed:	62 71 7c 48 28 35 c9 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6815c9]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a459f4:	15 68 ff 
  a459f7:	62 52 0d 48 7f df    	vpermt2ps zmm11,zmm14,zmm15
  a459fd:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a45a03:	62 d2 7d 40 7f d7    	vpermt2ps zmm2,zmm16,zmm15
  a45a09:	62 d2 0d 48 7f ef    	vpermt2ps zmm5,zmm14,zmm15
  a45a0f:	62 f1 7c 48 28 e6    	vmovaps zmm4,zmm6
  a45a15:	62 d2 7d 40 7f e7    	vpermt2ps zmm4,zmm16,zmm15
  a45a1b:	62 d2 0d 48 7f f7    	vpermt2ps zmm6,zmm14,zmm15
  a45a21:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a45a27:	62 d2 7d 40 7f ff    	vpermt2ps zmm7,zmm16,zmm15
  a45a2d:	62 d2 0d 48 7f c7    	vpermt2ps zmm0,zmm14,zmm15
  a45a33:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a45a39:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp+0x100]
  a45a40:	04 
  a45a41:	62 f1 7c 48 28 1d b5 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6814b5]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a45a48:	14 68 ff 
  a45a4b:	62 12 65 48 7f c2    	vpermt2ps zmm8,zmm3,zmm26
  a45a51:	62 71 7c 48 28 2d e5 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6814e5]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a45a58:	14 68 ff 
  a45a5b:	62 92 15 48 7f ca    	vpermt2ps zmm1,zmm13,zmm26
  a45a61:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a45a67:	62 12 65 48 7f ca    	vpermt2ps zmm9,zmm3,zmm26
  a45a6d:	62 92 15 48 7f d2    	vpermt2ps zmm2,zmm13,zmm26
  a45a73:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a45a79:	62 12 65 48 7f d2    	vpermt2ps zmm10,zmm3,zmm26
  a45a7f:	62 92 15 48 7f e2    	vpermt2ps zmm4,zmm13,zmm26
  a45a85:	62 71 7c 48 28 e7    	vmovaps zmm12,zmm7
  a45a8b:	62 12 65 48 7f e2    	vpermt2ps zmm12,zmm3,zmm26
  a45a91:	62 92 15 48 7f fa    	vpermt2ps zmm7,zmm13,zmm26
  a45a97:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0xc0]
  a45a9e:	03 
  a45a9f:	62 12 65 48 7f dd    	vpermt2ps zmm11,zmm3,zmm29
  a45aa5:	62 92 65 48 7f ed    	vpermt2ps zmm5,zmm3,zmm29
  a45aab:	62 92 65 48 7f f5    	vpermt2ps zmm6,zmm3,zmm29
  a45ab1:	62 92 65 48 7f c5    	vpermt2ps zmm0,zmm3,zmm29
  a45ab7:	62 c1 bd 48 14 ca    	vunpcklpd zmm17,zmm8,zmm10
  a45abd:	62 c1 bd 48 15 f2    	vunpckhpd zmm22,zmm8,zmm10
  a45ac3:	62 51 b5 48 14 c4    	vunpcklpd zmm8,zmm9,zmm12
  a45ac9:	62 51 b5 48 15 cc    	vunpckhpd zmm9,zmm9,zmm12
  a45acf:	62 71 f5 48 14 d4    	vunpcklpd zmm10,zmm1,zmm4
  a45ad5:	62 e1 f5 48 15 dc    	vunpckhpd zmm19,zmm1,zmm4
  a45adb:	62 f1 ed 48 14 cf    	vunpcklpd zmm1,zmm2,zmm7
  a45ae1:	62 f1 ed 48 15 d7    	vunpckhpd zmm2,zmm2,zmm7
  a45ae7:	62 e1 a5 48 14 fe    	vunpcklpd zmm23,zmm11,zmm6
  a45aed:	62 f1 a5 48 15 f6    	vunpckhpd zmm6,zmm11,zmm6
  a45af3:	62 f1 d5 48 14 e0    	vunpcklpd zmm4,zmm5,zmm0
  a45af9:	62 f1 d5 48 15 c0    	vunpckhpd zmm0,zmm5,zmm0
  a45aff:	62 b1 7c 48 28 e9    	vmovaps zmm5,zmm17
  a45b05:	62 71 7c 48 28 25 f1 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6812f1]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a45b0c:	12 68 ff 
  a45b0f:	62 d2 1d 48 7f e8    	vpermt2ps zmm5,zmm12,zmm8
  a45b15:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm5
  a45b1c:	01 
  a45b1d:	62 71 7c 48 28 1d 19 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff681319]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a45b24:	13 68 ff 
  a45b27:	62 c2 25 48 7f c8    	vpermt2ps zmm17,zmm11,zmm8
  a45b2d:	62 b1 7c 48 28 ee    	vmovaps zmm5,zmm22
  a45b33:	62 d2 1d 48 7f e9    	vpermt2ps zmm5,zmm12,zmm9
  a45b39:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  a45b40:	62 c2 25 48 7f f1    	vpermt2ps zmm22,zmm11,zmm9
  a45b46:	62 41 7c 48 28 c2    	vmovaps zmm24,zmm10
  a45b4c:	62 62 1d 48 7f c1    	vpermt2ps zmm24,zmm12,zmm1
  a45b52:	62 72 25 48 7f d1    	vpermt2ps zmm10,zmm11,zmm1
  a45b58:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm10
  a45b5f:	02 
  a45b60:	62 21 7c 48 28 e3    	vmovaps zmm28,zmm19
  a45b66:	62 62 1d 48 7f e2    	vpermt2ps zmm28,zmm12,zmm2
  a45b6c:	62 e2 25 48 7f da    	vpermt2ps zmm19,zmm11,zmm2
  a45b72:	62 a1 7c 48 28 e7    	vmovaps zmm20,zmm23
  a45b78:	62 e2 1d 48 7f e4    	vpermt2ps zmm20,zmm12,zmm4
  a45b7e:	62 e2 25 48 7f fc    	vpermt2ps zmm23,zmm11,zmm4
  a45b84:	62 61 7c 48 28 ce    	vmovaps zmm25,zmm6
  a45b8a:	62 62 1d 48 7f c8    	vpermt2ps zmm25,zmm12,zmm0
  a45b90:	62 f2 25 48 7f f0    	vpermt2ps zmm6,zmm11,zmm0
  a45b96:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm6
  a45b9d:	fe 
  a45b9e:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a45ba4:	62 d2 7d 40 7f c7    	vpermt2ps zmm0,zmm16,zmm15
  a45baa:	62 c2 0d 48 7f ef    	vpermt2ps zmm21,zmm14,zmm15
  a45bb0:	62 91 7c 48 28 ce    	vmovaps zmm1,zmm30
  a45bb6:	62 d2 7d 40 7f cf    	vpermt2ps zmm1,zmm16,zmm15
  a45bbc:	62 42 0d 48 7f f7    	vpermt2ps zmm30,zmm14,zmm15
  a45bc2:	62 91 7c 48 28 d3    	vmovaps zmm2,zmm27
  a45bc8:	62 d2 7d 40 7f d7    	vpermt2ps zmm2,zmm16,zmm15
  a45bce:	62 42 0d 48 7f df    	vpermt2ps zmm27,zmm14,zmm15
  a45bd4:	62 91 7c 48 28 e7    	vmovaps zmm4,zmm31
  a45bda:	62 d2 7d 40 7f e7    	vpermt2ps zmm4,zmm16,zmm15
  a45be0:	62 42 0d 48 7f ff    	vpermt2ps zmm31,zmm14,zmm15
  a45be6:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a45bec:	62 92 65 48 7f ea    	vpermt2ps zmm5,zmm3,zmm26
  a45bf2:	62 92 15 48 7f c2    	vpermt2ps zmm0,zmm13,zmm26
  a45bf8:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a45bfe:	62 92 65 48 7f f2    	vpermt2ps zmm6,zmm3,zmm26
  a45c04:	62 92 15 48 7f ca    	vpermt2ps zmm1,zmm13,zmm26
  a45c0a:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a45c10:	62 92 65 48 7f fa    	vpermt2ps zmm7,zmm3,zmm26
  a45c16:	62 92 15 48 7f d2    	vpermt2ps zmm2,zmm13,zmm26
  a45c1c:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a45c22:	62 12 65 48 7f c2    	vpermt2ps zmm8,zmm3,zmm26
  a45c28:	62 92 15 48 7f e2    	vpermt2ps zmm4,zmm13,zmm26
  a45c2e:	62 82 65 48 7f ed    	vpermt2ps zmm21,zmm3,zmm29
  a45c34:	62 02 65 48 7f f5    	vpermt2ps zmm30,zmm3,zmm29
  a45c3a:	62 02 65 48 7f dd    	vpermt2ps zmm27,zmm3,zmm29
  a45c40:	62 02 65 48 7f fd    	vpermt2ps zmm31,zmm3,zmm29
  a45c46:	62 61 d5 48 14 ef    	vunpcklpd zmm29,zmm5,zmm7
  a45c4c:	62 f1 d5 48 15 ff    	vunpckhpd zmm7,zmm5,zmm7
  a45c52:	62 d1 cd 48 14 e8    	vunpcklpd zmm5,zmm6,zmm8
  a45c58:	62 d1 cd 48 15 f0    	vunpckhpd zmm6,zmm6,zmm8
  a45c5e:	62 71 fd 48 14 fa    	vunpcklpd zmm15,zmm0,zmm2
  a45c64:	62 71 fd 48 15 ca    	vunpckhpd zmm9,zmm0,zmm2
  a45c6a:	62 f1 f5 48 14 c4    	vunpcklpd zmm0,zmm1,zmm4
  a45c70:	62 f1 f5 48 15 cc    	vunpckhpd zmm1,zmm1,zmm4
  a45c76:	62 81 d5 40 14 c3    	vunpcklpd zmm16,zmm21,zmm27
  a45c7c:	62 91 d5 40 15 d3    	vunpckhpd zmm2,zmm21,zmm27
  a45c82:	62 91 8d 40 14 e7    	vunpcklpd zmm4,zmm30,zmm31
  a45c88:	62 11 8d 40 15 d7    	vunpckhpd zmm10,zmm30,zmm31
  a45c8e:	62 11 7c 48 28 c5    	vmovaps zmm8,zmm29
  a45c94:	62 72 1d 48 7f c5    	vpermt2ps zmm8,zmm12,zmm5
  a45c9a:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm8
  a45ca1:	ff 
  a45ca2:	62 62 25 48 7f ed    	vpermt2ps zmm29,zmm11,zmm5
  a45ca8:	62 61 7c 48 28 f7    	vmovaps zmm30,zmm7
  a45cae:	62 62 1d 48 7f f6    	vpermt2ps zmm30,zmm12,zmm6
  a45cb4:	62 f2 25 48 7f fe    	vpermt2ps zmm7,zmm11,zmm6
  a45cba:	62 41 7c 48 28 d7    	vmovaps zmm26,zmm15
  a45cc0:	62 62 1d 48 7f d0    	vpermt2ps zmm26,zmm12,zmm0
  a45cc6:	62 72 25 48 7f f8    	vpermt2ps zmm15,zmm11,zmm0
  a45ccc:	62 d1 7c 48 28 e9    	vmovaps zmm5,zmm9
  a45cd2:	62 f2 1d 48 7f e9    	vpermt2ps zmm5,zmm12,zmm1
  a45cd8:	62 72 25 48 7f c9    	vpermt2ps zmm9,zmm11,zmm1
  a45cde:	62 31 7c 48 28 c0    	vmovaps zmm8,zmm16
  a45ce4:	62 72 1d 48 7f c4    	vpermt2ps zmm8,zmm12,zmm4
  a45cea:	62 e2 25 48 7f c4    	vpermt2ps zmm16,zmm11,zmm4
  a45cf0:	62 61 7c 48 28 da    	vmovaps zmm27,zmm2
  a45cf6:	62 42 1d 48 7f da    	vpermt2ps zmm27,zmm12,zmm10
  a45cfc:	62 d2 25 48 7f d2    	vpermt2ps zmm2,zmm11,zmm10
  a45d02:	62 71 7c 48 10 51 02 	vmovups zmm10,ZMMWORD PTR [rcx+0x80]
  a45d09:	62 71 7c 48 10 69 03 	vmovups zmm13,ZMMWORD PTR [rcx+0xc0]
  a45d10:	62 f1 7c 48 10 49 04 	vmovups zmm1,ZMMWORD PTR [rcx+0x100]
  a45d17:	62 e1 7c 48 10 69 05 	vmovups zmm21,ZMMWORD PTR [rcx+0x140]
  a45d1e:	62 f1 7c 48 10 61 0c 	vmovups zmm4,ZMMWORD PTR [rcx+0x300]
  a45d25:	62 f1 7c 48 10 41 0d 	vmovups zmm0,ZMMWORD PTR [rcx+0x340]
  a45d2c:	62 e1 1c 40 59 d4    	vmulps zmm18,zmm28,zmm4
  a45d32:	62 e2 55 48 bc d0    	vfnmadd231ps zmm18,zmm5,zmm0
  a45d38:	62 61 54 48 59 fc    	vmulps zmm31,zmm5,zmm4
  a45d3e:	62 f1 7c 48 10 61 06 	vmovups zmm4,ZMMWORD PTR [rcx+0x180]
  a45d45:	62 02 7d 48 b8 fc    	vfmadd231ps zmm31,zmm0,zmm28
  a45d4b:	62 f1 7c 48 10 41 07 	vmovups zmm0,ZMMWORD PTR [rcx+0x1c0]
  a45d52:	62 61 4c 40 59 e4    	vmulps zmm28,zmm22,zmm4
  a45d58:	62 62 45 48 bc e0    	vfnmadd231ps zmm28,zmm7,zmm0
  a45d5e:	62 f1 44 48 59 fc    	vmulps zmm7,zmm7,zmm4
  a45d64:	62 f1 7c 48 10 61 12 	vmovups zmm4,ZMMWORD PTR [rcx+0x480]
  a45d6b:	62 b2 7d 48 b8 fe    	vfmadd231ps zmm7,zmm0,zmm22
  a45d71:	62 f1 7c 48 10 41 13 	vmovups zmm0,ZMMWORD PTR [rcx+0x4c0]
  a45d78:	62 71 44 40 59 f4    	vmulps zmm14,zmm23,zmm4
  a45d7e:	62 72 7d 40 bc f0    	vfnmadd231ps zmm14,zmm16,zmm0
  a45d84:	62 71 7c 40 59 dc    	vmulps zmm11,zmm16,zmm4
  a45d8a:	62 e1 7c 48 10 71 08 	vmovups zmm22,ZMMWORD PTR [rcx+0x200]
  a45d91:	62 32 7d 48 b8 df    	vfmadd231ps zmm11,zmm0,zmm23
  a45d97:	62 f1 7c 48 10 41 09 	vmovups zmm0,ZMMWORD PTR [rcx+0x240]
  a45d9e:	62 b1 3c 40 59 e6    	vmulps zmm4,zmm24,zmm22
  a45da4:	62 f2 2d 40 bc e0    	vfnmadd231ps zmm4,zmm26,zmm0
  a45daa:	62 a1 2c 40 59 f6    	vmulps zmm22,zmm26,zmm22
  a45db0:	62 e1 7c 48 10 79 14 	vmovups zmm23,ZMMWORD PTR [rcx+0x500]
  a45db7:	62 82 7d 48 b8 f0    	vfmadd231ps zmm22,zmm0,zmm24
  a45dbd:	62 f1 7c 48 10 41 15 	vmovups zmm0,ZMMWORD PTR [rcx+0x540]
  a45dc4:	62 21 34 40 59 d7    	vmulps zmm26,zmm25,zmm23
  a45dca:	62 62 25 40 bc d0    	vfnmadd231ps zmm26,zmm27,zmm0
  a45dd0:	62 a1 24 40 59 ff    	vmulps zmm23,zmm27,zmm23
  a45dd6:	62 61 7c 48 10 59 0e 	vmovups zmm27,ZMMWORD PTR [rcx+0x380]
  a45ddd:	62 82 7d 48 b8 f9    	vfmadd231ps zmm23,zmm0,zmm25
  a45de3:	62 f1 7c 48 10 41 0f 	vmovups zmm0,ZMMWORD PTR [rcx+0x3c0]
  a45dea:	62 01 64 40 59 c3    	vmulps zmm24,zmm19,zmm27
  a45df0:	62 62 35 48 bc c0    	vfnmadd231ps zmm24,zmm9,zmm0
  a45df6:	62 11 34 48 59 cb    	vmulps zmm9,zmm9,zmm27
  a45dfc:	62 61 7c 48 10 49 0a 	vmovups zmm25,ZMMWORD PTR [rcx+0x280]
  a45e03:	62 32 7d 48 b8 cb    	vfmadd231ps zmm9,zmm0,zmm19
  a45e09:	62 f1 7c 48 10 71 0b 	vmovups zmm6,ZMMWORD PTR [rcx+0x2c0]
  a45e10:	62 c1 74 40 59 da    	vmulps zmm19,zmm17,zmm10
  a45e16:	62 c2 15 40 bc dd    	vfnmadd231ps zmm19,zmm29,zmm13
  a45e1c:	62 51 14 40 59 d2    	vmulps zmm10,zmm29,zmm10
  a45e22:	62 61 7c 48 10 59 10 	vmovups zmm27,ZMMWORD PTR [rcx+0x400]
  a45e29:	62 32 15 48 b8 d1    	vfmadd231ps zmm10,zmm13,zmm17
  a45e2f:	62 71 7c 48 10 69 11 	vmovups zmm13,ZMMWORD PTR [rcx+0x440]
  a45e36:	62 81 5c 40 59 cb    	vmulps zmm17,zmm20,zmm27
  a45e3c:	62 c2 3d 48 bc cd    	vfnmadd231ps zmm17,zmm8,zmm13
  a45e42:	62 01 3c 48 59 db    	vmulps zmm27,zmm8,zmm27
  a45e48:	62 71 7c 48 10 41 16 	vmovups zmm8,ZMMWORD PTR [rcx+0x580]
  a45e4f:	62 22 15 48 b8 dc    	vfmadd231ps zmm27,zmm13,zmm20
  a45e55:	62 71 7c 48 10 69 17 	vmovups zmm13,ZMMWORD PTR [rcx+0x5c0]
  a45e5c:	62 71 7c 48 10 24 24 	vmovups zmm12,ZMMWORD PTR [rsp]
  a45e63:	62 e1 1c 48 59 e1    	vmulps zmm20,zmm12,zmm1
  a45e69:	62 a2 0d 40 bc e5    	vfnmadd231ps zmm20,zmm30,zmm21
  a45e6f:	62 f1 0c 40 59 c9    	vmulps zmm1,zmm30,zmm1
  a45e75:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x40]
  a45e7c:	01 
  a45e7d:	62 b1 64 48 58 ea    	vaddps zmm5,zmm3,zmm18
  a45e83:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm5
  a45e8a:	05 
  a45e8b:	62 d2 55 40 b8 cc    	vfmadd231ps zmm1,zmm21,zmm12
  a45e91:	62 41 1c 40 58 ee    	vaddps zmm29,zmm28,zmm14
  a45e97:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a45e9e:	fe 
  a45e9f:	62 41 7c 48 59 f0    	vmulps zmm30,zmm0,zmm8
  a45ea5:	62 42 6d 48 bc f5    	vfnmadd231ps zmm30,zmm2,zmm13
  a45eab:	62 d1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm8
  a45eb1:	62 91 54 48 58 ed    	vaddps zmm5,zmm5,zmm29
  a45eb7:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm5
  a45ebe:	06 
  a45ebf:	62 f2 15 48 b8 d0    	vfmadd231ps zmm2,zmm13,zmm0
  a45ec5:	62 11 5c 48 58 ea    	vaddps zmm13,zmm4,zmm26
  a45ecb:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x80]
  a45ed2:	02 
  a45ed3:	62 81 3c 48 59 c1    	vmulps zmm16,zmm8,zmm25
  a45ed9:	62 e2 05 48 bc c6    	vfnmadd231ps zmm16,zmm15,zmm6
  a45edf:	62 11 04 48 59 e1    	vmulps zmm12,zmm15,zmm25
  a45ee5:	62 21 3c 40 58 cb    	vaddps zmm25,zmm24,zmm19
  a45eeb:	62 52 4d 48 b8 e0    	vfmadd231ps zmm12,zmm6,zmm8
  a45ef1:	62 91 14 48 58 c1    	vaddps zmm0,zmm13,zmm25
  a45ef7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a45efe:	07 
  a45eff:	62 b1 74 40 58 ec    	vaddps zmm5,zmm17,zmm20
  a45f05:	62 11 5c 48 5c c2    	vsubps zmm8,zmm4,zmm26
  a45f0b:	62 41 34 48 58 d2    	vaddps zmm26,zmm9,zmm10
  a45f11:	62 51 34 48 5c ca    	vsubps zmm9,zmm9,zmm10
  a45f17:	62 31 0c 40 58 d0    	vaddps zmm10,zmm30,zmm16
  a45f1d:	62 a1 74 40 5c cc    	vsubps zmm17,zmm17,zmm20
  a45f23:	62 c1 6c 48 58 e4    	vaddps zmm20,zmm2,zmm12
  a45f29:	62 d1 6c 48 5c f4    	vsubps zmm6,zmm2,zmm12
  a45f2f:	62 d1 54 48 58 d2    	vaddps zmm2,zmm5,zmm10
  a45f35:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a45f3c:	fe 
  a45f3d:	62 b1 64 48 5c e2    	vsubps zmm4,zmm3,zmm18
  a45f43:	62 c1 44 48 58 d3    	vaddps zmm18,zmm7,zmm11
  a45f49:	62 51 44 48 5c db    	vsubps zmm11,zmm7,zmm11
  a45f4f:	62 31 4c 40 58 ff    	vaddps zmm15,zmm22,zmm23
  a45f55:	62 a1 4c 40 5c ff    	vsubps zmm23,zmm22,zmm23
  a45f5b:	62 e1 7c 48 58 ea    	vaddps zmm21,zmm0,zmm2
  a45f61:	62 01 64 40 5c c0    	vsubps zmm24,zmm19,zmm24
  a45f67:	62 e1 24 40 58 d9    	vaddps zmm19,zmm27,zmm1
  a45f6d:	62 61 24 40 5c d9    	vsubps zmm27,zmm27,zmm1
  a45f73:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a45f7a:	ff 
  a45f7b:	62 f1 04 40 58 c8    	vaddps zmm1,zmm31,zmm0
  a45f81:	62 91 7c 40 5c d6    	vsubps zmm2,zmm16,zmm30
  a45f87:	62 71 6c 40 58 e1    	vaddps zmm12,zmm18,zmm1
  a45f8d:	62 91 7c 48 5c c7    	vsubps zmm0,zmm0,zmm31
  a45f93:	62 91 04 48 58 da    	vaddps zmm3,zmm15,zmm26
  a45f99:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a45fa0:	ff 
  a45fa1:	62 91 0c 48 5c fc    	vsubps zmm7,zmm14,zmm28
  a45fa7:	62 21 64 40 58 fc    	vaddps zmm31,zmm19,zmm20
  a45fad:	62 11 14 48 5c f1    	vsubps zmm14,zmm13,zmm25
  a45fb3:	62 01 64 48 58 cf    	vaddps zmm25,zmm3,zmm31
  a45fb9:	62 c1 54 48 5c c2    	vsubps zmm16,zmm5,zmm10
  a45fbf:	62 51 3c 48 58 e9    	vaddps zmm13,zmm8,zmm9
  a45fc5:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x140]
  a45fcc:	05 
  a45fcd:	62 81 64 48 5c f5    	vsubps zmm22,zmm3,zmm29
  a45fd3:	62 61 74 40 58 e6    	vaddps zmm28,zmm17,zmm6
  a45fd9:	62 01 04 48 5c ea    	vsubps zmm29,zmm15,zmm26
  a45fdf:	62 91 14 48 58 dc    	vaddps zmm3,zmm13,zmm28
  a45fe5:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a45fec:	01 
  a45fed:	62 21 64 40 5c f4    	vsubps zmm30,zmm19,zmm20
  a45ff3:	62 d1 5c 48 58 eb    	vaddps zmm5,zmm4,zmm11
  a45ff9:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm5
  a46000:	02 
  a46001:	62 31 74 48 5c fa    	vsubps zmm15,zmm1,zmm18
  a46007:	62 72 7d 48 18 15 4f 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff62f44f]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a4600e:	f4 62 ff 
  a46011:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  a46017:	62 f2 65 48 ac cd    	vfnmadd213ps zmm1,zmm3,zmm5
  a4601d:	62 41 5c 48 5c d3    	vsubps zmm26,zmm4,zmm11
  a46023:	62 91 44 40 58 e0    	vaddps zmm4,zmm23,zmm24
  a46029:	62 c1 3c 48 5c e1    	vsubps zmm20,zmm8,zmm9
  a4602f:	62 71 24 40 58 c2    	vaddps zmm8,zmm27,zmm2
  a46035:	62 e1 74 40 5c ce    	vsubps zmm17,zmm17,zmm6
  a4603b:	62 f1 44 48 58 e8    	vaddps zmm5,zmm7,zmm0
  a46041:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  a46048:	62 71 7c 48 5c cf    	vsubps zmm9,zmm0,zmm7
  a4604e:	62 c1 5c 48 58 d8    	vaddps zmm19,zmm4,zmm8
  a46054:	62 81 44 40 5c f8    	vsubps zmm23,zmm23,zmm24
  a4605a:	62 d1 7c 48 28 da    	vmovaps zmm3,zmm10
  a46060:	62 f2 65 40 ac dd    	vfnmadd213ps zmm3,zmm19,zmm5
  a46066:	62 f1 24 40 5c c2    	vsubps zmm0,zmm27,zmm2
  a4606c:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a46072:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x180]
  a46079:	06 
  a4607a:	62 72 55 40 ac da    	vfnmadd213ps zmm11,zmm21,zmm2
  a46080:	62 b1 6c 28 58 d5    	vaddps ymm2,ymm2,ymm21
  a46086:	62 41 7c 48 28 c2    	vmovaps zmm24,zmm10
  a4608c:	62 42 35 40 ac c4    	vfnmadd213ps zmm24,zmm25,zmm12
  a46092:	62 91 1c 08 58 e9    	vaddps xmm5,xmm12,xmm25
  a46098:	62 21 0c 48 58 c8    	vaddps zmm25,zmm14,zmm16
  a4609e:	c5 fc 28 35 3a 11 63 	vmovaps ymm6,YMMWORD PTR [rip+0xffffffffff63113a]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a460a5:	ff 
  a460a6:	62 f2 4d 28 7f ea    	vpermt2ps ymm5,ymm6,ymm2
  a460ac:	62 c1 7c 48 28 ea    	vmovaps zmm21,zmm10
  a460b2:	62 a2 35 40 ac ee    	vfnmadd213ps zmm21,zmm25,zmm22
  a460b8:	c5 fc 11 2c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm5
  a460bd:	62 01 14 40 58 de    	vaddps zmm27,zmm29,zmm30
  a460c3:	c4 c1 5c 5c d0       	vsubps ymm2,ymm4,ymm8
  a460c8:	c4 62 7d 18 05 03 f2 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff62f203]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a460cf:	62 ff 
  a460d1:	c5 bc 59 e2          	vmulps ymm4,ymm8,ymm2
  a460d5:	c5 f4 58 d4          	vaddps ymm2,ymm1,ymm4
  a460d9:	62 91 14 28 5c ec    	vsubps ymm5,ymm13,ymm28
  a460df:	c5 3c 59 ed          	vmulps ymm13,ymm8,ymm5
  a460e3:	c4 c1 60 5c ed       	vsubps xmm5,xmm3,xmm13
  a460e8:	62 f2 4d 28 7f ea    	vpermt2ps ymm5,ymm6,ymm2
  a460ee:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a460f4:	62 d2 25 40 ac ff    	vfnmadd213ps zmm7,zmm27,zmm15
  a460fa:	c5 fc 11 6c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm5
  a46100:	62 b1 5c 40 58 d1    	vaddps zmm2,zmm20,zmm17
  a46106:	62 91 14 20 5c ee    	vsubps ymm5,ymm29,ymm30
  a4610c:	62 41 54 28 59 e0    	vmulps ymm28,ymm5,ymm8
  a46112:	62 11 54 20 5c e4    	vsubps ymm12,ymm21,ymm28
  a46118:	62 b1 0c 28 5c e8    	vsubps ymm5,ymm14,ymm16
  a4611e:	c5 bc 59 ed          	vmulps ymm5,ymm8,ymm5
  a46122:	62 e1 44 08 58 c5    	vaddps xmm16,xmm7,xmm5
  a46128:	62 c2 4d 28 7f c4    	vpermt2ps ymm16,ymm6,ymm12
  a4612e:	62 e1 44 40 58 d0    	vaddps zmm18,zmm23,zmm0
  a46134:	62 e1 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm16
  a4613b:	02 
  a4613c:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a46142:	62 12 6d 48 ac e2    	vfnmadd213ps zmm12,zmm2,zmm26
  a46148:	62 f1 2c 20 58 d2    	vaddps ymm2,ymm26,ymm2
  a4614e:	62 41 7c 48 28 d2    	vmovaps zmm26,zmm10
  a46154:	62 42 6d 40 ac d1    	vfnmadd213ps zmm26,zmm18,zmm9
  a4615a:	62 31 34 08 58 ca    	vaddps xmm9,xmm9,xmm18
  a46160:	62 72 4d 28 7f ca    	vpermt2ps ymm9,ymm6,ymm2
  a46166:	c5 7c 11 4c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm9
  a4616c:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a46173:	ff 
  a46174:	62 91 6c 28 5c d7    	vsubps ymm2,ymm2,ymm31
  a4617a:	c5 bc 59 d2          	vmulps ymm2,ymm8,ymm2
  a4617e:	c5 24 58 ca          	vaddps ymm9,ymm11,ymm2
  a46182:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x1c0]
  a46189:	07 
  a4618a:	62 e1 2c 28 5c 44 24 	vsubps ymm16,ymm10,YMMWORD PTR [rsp-0x80]
  a46191:	fc 
  a46192:	62 c1 7c 20 59 c0    	vmulps ymm16,ymm16,ymm8
  a46198:	62 a1 3c 00 5c d0    	vsubps xmm18,xmm24,xmm16
  a4619e:	62 c2 4d 28 7f d1    	vpermt2ps ymm18,ymm6,ymm9
  a461a4:	62 e1 7c 28 11 54 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm18
  a461ab:	04 
  a461ac:	c5 f4 5c e4          	vsubps ymm4,ymm1,ymm4
  a461b0:	c5 90 58 db          	vaddps xmm3,xmm13,xmm3
  a461b4:	62 f2 4d 28 7f dc    	vpermt2ps ymm3,ymm6,ymm4
  a461ba:	c5 fc 11 9c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm3
  a461c1:	00 00 
  a461c3:	62 91 4c 20 58 d9    	vaddps ymm3,ymm22,ymm25
  a461c9:	62 91 04 08 58 cb    	vaddps xmm1,xmm15,xmm27
  a461cf:	62 f2 4d 28 7f cb    	vpermt2ps ymm1,ymm6,ymm3
  a461d5:	c5 fc 11 8c 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm1
  a461dc:	00 00 
  a461de:	62 f1 44 20 5c c0    	vsubps ymm0,ymm23,ymm0
  a461e4:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  a461e8:	c5 9c 58 c8          	vaddps ymm1,ymm12,ymm0
  a461ec:	62 b1 5c 20 5c d9    	vsubps ymm3,ymm20,ymm17
  a461f2:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  a461f6:	62 f1 2c 00 5c e3    	vsubps xmm4,xmm26,xmm3
  a461fc:	62 f2 4d 28 7f e1    	vpermt2ps ymm4,ymm6,ymm1
  a46202:	c5 fc 11 a4 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm4
  a46209:	00 00 
  a4620b:	c5 a4 5c ca          	vsubps ymm1,ymm11,ymm2
  a4620f:	62 b1 3c 00 58 d0    	vaddps xmm2,xmm24,xmm16
  a46215:	62 f2 4d 28 7f d1    	vpermt2ps ymm2,ymm6,ymm1
  a4621b:	c5 fc 11 94 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm2
  a46222:	00 00 
  a46224:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a4622b:	01 
  a4622c:	c5 f4 58 8c 24 80 00 	vaddps ymm1,ymm1,YMMWORD PTR [rsp+0x80]
  a46233:	00 00 
  a46235:	62 f1 64 00 58 14 24 	vaddps xmm2,xmm19,XMMWORD PTR [rsp]
  a4623c:	62 f2 4d 28 7f d1    	vpermt2ps ymm2,ymm6,ymm1
  a46242:	c5 fc 11 94 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm2
  a46249:	00 00 
  a4624b:	62 91 54 20 58 cc    	vaddps ymm1,ymm21,ymm28
  a46251:	c5 c0 5c d5          	vsubps xmm2,xmm7,xmm5
  a46255:	62 f2 4d 28 7f d1    	vpermt2ps ymm2,ymm6,ymm1
  a4625b:	c5 fc 11 94 16 40 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm2
  a46262:	00 00 
  a46264:	c5 9c 5c c0          	vsubps ymm0,ymm12,ymm0
  a46268:	62 f1 2c 00 58 cb    	vaddps xmm1,xmm26,xmm3
  a4626e:	62 f2 4d 28 7f c8    	vpermt2ps ymm1,ymm6,ymm0
  a46274:	c5 fc 11 8c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm1
  a4627b:	00 00 
  a4627d:	48 81 c2 80 01 00 00 	add    rdx,0x180
  a46284:	48 39 d0             	cmp    rax,rdx
  a46287:	0f 85 43 f6 ff ff    	jne    a458d0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x50>
  a4628d:	48 81 c4 08 02 00 00 	add    rsp,0x208
  a46294:	c5 f8 77             	vzeroupper
  a46297:	c3                   	ret
