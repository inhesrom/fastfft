
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a3e980 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a3e980:	55                   	push   rbp
  a3e981:	48 89 e5             	mov    rbp,rsp
  a3e984:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a3e988:	48 81 ec 80 09 00 00 	sub    rsp,0x980
  a3e98f:	62 f1 7c 48 28 05 e7 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6885e7]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3e996:	85 68 ff 
  a3e999:	62 f1 7c 48 28 0d 1d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff68861d]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a3e9a0:	86 68 ff 
  a3e9a3:	48 c1 e2 08          	shl    rdx,0x8
  a3e9a7:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a3e9ab:	31 d2                	xor    edx,edx
  a3e9ad:	4c 8d 84 24 00 09 00 	lea    r8,[rsp+0x900]
  a3e9b4:	00 
  a3e9b5:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a3e9ba:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a3e9be:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a3e9c4:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm2
  a3e9cb:	13 
  a3e9cc:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a3e9d0:	62 f2 75 48 7f c0    	vpermt2ps zmm0,zmm1,zmm0
  a3e9d6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a3e9dd:	12 
  a3e9de:	66 90                	xchg   ax,ax
  a3e9e0:	c6 84 24 00 09 00 00 	mov    BYTE PTR [rsp+0x900],0x0
  a3e9e7:	00 
  a3e9e8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a3e9ed:	62 f1 7c 48 10 0c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1]
  a3e9f4:	62 f1 7c 48 10 44 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x40]
  a3e9fb:	01 
  a3e9fc:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x80]
  a3ea03:	02 
  a3ea04:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a3ea0b:	03 
  a3ea0c:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a3ea12:	62 e1 7c 48 28 1d 64 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff653064]        # 91a80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ef30>
  a3ea19:	30 65 ff 
  a3ea1c:	62 72 65 40 7f e8    	vpermt2ps zmm13,zmm19,zmm0
  a3ea22:	62 f1 7c 48 10 74 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x100]
  a3ea29:	04 
  a3ea2a:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x140]
  a3ea31:	05 
  a3ea32:	62 f1 7c 48 28 de    	vmovaps zmm3,zmm6
  a3ea38:	62 d2 65 40 7f de    	vpermt2ps zmm3,zmm19,zmm14
  a3ea3e:	62 71 7c 48 10 4c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x200]
  a3ea45:	08 
  a3ea46:	62 71 7c 48 10 7c 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x240]
  a3ea4d:	09 
  a3ea4e:	62 d1 7c 48 28 e9    	vmovaps zmm5,zmm9
  a3ea54:	62 d2 65 40 7f ef    	vpermt2ps zmm5,zmm19,zmm15
  a3ea5a:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x180]
  a3ea61:	06 
  a3ea62:	62 71 7c 48 10 54 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a3ea69:	07 
  a3ea6a:	62 e1 7c 48 28 c2    	vmovaps zmm16,zmm2
  a3ea70:	62 c2 65 40 7f c2    	vpermt2ps zmm16,zmm19,zmm10
  a3ea76:	62 71 7c 48 10 5c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x280]
  a3ea7d:	0a 
  a3ea7e:	62 e1 7c 48 10 4c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  a3ea85:	0b 
  a3ea86:	62 d1 7c 48 28 fb    	vmovaps zmm7,zmm11
  a3ea8c:	62 e1 64 48 58 d5    	vaddps zmm18,zmm3,zmm5
  a3ea92:	62 b2 65 40 7f f9    	vpermt2ps zmm7,zmm19,zmm17
  a3ea98:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a3ea9e:	62 52 65 40 7f c4    	vpermt2ps zmm8,zmm19,zmm12
  a3eaa4:	62 a1 14 48 58 da    	vaddps zmm19,zmm13,zmm18
  a3eaaa:	62 c1 44 48 58 e0    	vaddps zmm20,zmm7,zmm8
  a3eab0:	62 21 7c 40 58 f4    	vaddps zmm30,zmm16,zmm20
  a3eab6:	62 61 7c 48 28 0d 00 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff653000]        # 91ac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ef70>
  a3eabd:	30 65 ff 
  a3eac0:	62 d2 35 40 7f f6    	vpermt2ps zmm6,zmm25,zmm14
  a3eac6:	62 62 7d 48 18 1d 90 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff636990]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a3eacd:	69 63 ff 
  a3ead0:	62 32 25 40 bc ea    	vfnmadd231ps zmm13,zmm27,zmm18
  a3ead6:	62 52 35 40 7f cf    	vpermt2ps zmm9,zmm25,zmm15
  a3eadc:	62 51 4c 48 5c f1    	vsubps zmm14,zmm6,zmm9
  a3eae2:	62 62 7d 48 18 25 e8 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff6367e8]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a3eae9:	67 63 ff 
  a3eaec:	62 11 0c 48 59 f4    	vmulps zmm14,zmm14,zmm28
  a3eaf2:	62 01 64 40 58 d6    	vaddps zmm26,zmm19,zmm30
  a3eaf8:	62 51 14 48 5c fe    	vsubps zmm15,zmm13,zmm14
  a3eafe:	62 a2 25 40 bc c4    	vfnmadd231ps zmm16,zmm27,zmm20
  a3eb04:	62 32 35 40 7f d9    	vpermt2ps zmm11,zmm25,zmm17
  a3eb0a:	62 81 7c 48 28 e2    	vmovaps zmm20,zmm26
  a3eb10:	62 d2 35 40 7f e4    	vpermt2ps zmm4,zmm25,zmm12
  a3eb16:	62 71 24 48 5c e4    	vsubps zmm12,zmm11,zmm4
  a3eb1c:	62 11 1c 48 59 e4    	vmulps zmm12,zmm12,zmm28
  a3eb22:	62 61 7c 48 28 05 54 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff688454]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3eb29:	84 68 ff 
  a3eb2c:	62 a1 6c 00 57 d2    	vxorps xmm18,xmm18,xmm18
  a3eb32:	62 a2 3d 40 7f e2    	vpermt2ps zmm20,zmm24,zmm18
  a3eb38:	62 c1 7c 40 5c cc    	vsubps zmm17,zmm16,zmm12
  a3eb3e:	62 a1 04 48 58 e9    	vaddps zmm21,zmm15,zmm17
  a3eb44:	62 51 0c 48 58 ed    	vaddps zmm13,zmm14,zmm13
  a3eb4a:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm20
  a3eb51:	03 
  a3eb52:	62 31 7c 48 28 f4    	vmovaps zmm14,zmm20
  a3eb58:	62 31 1c 48 58 e0    	vaddps zmm12,zmm12,zmm16
  a3eb5e:	62 c1 14 48 58 f4    	vaddps zmm22,zmm13,zmm12
  a3eb64:	62 a1 04 48 5c f9    	vsubps zmm23,zmm15,zmm17
  a3eb6a:	62 41 14 48 5c ec    	vsubps zmm29,zmm13,zmm12
  a3eb70:	62 01 64 40 5c fe    	vsubps zmm31,zmm19,zmm30
  a3eb76:	62 01 7c 48 28 f7    	vmovaps zmm30,zmm31
  a3eb7c:	62 22 3d 40 7f f2    	vpermt2ps zmm30,zmm24,zmm18
  a3eb82:	62 31 7c 48 28 e5    	vmovaps zmm12,zmm21
  a3eb88:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm30
  a3eb8f:	02 
  a3eb90:	62 f2 35 40 7f c8    	vpermt2ps zmm1,zmm25,zmm0
  a3eb96:	62 d1 4c 48 58 c1    	vaddps zmm0,zmm6,zmm9
  a3eb9c:	62 a1 7c 48 28 e6    	vmovaps zmm20,zmm22
  a3eba2:	62 71 74 48 58 c8    	vaddps zmm9,zmm1,zmm0
  a3eba8:	62 d2 35 40 7f d2    	vpermt2ps zmm2,zmm25,zmm10
  a3ebae:	62 f1 24 48 58 e4    	vaddps zmm4,zmm11,zmm4
  a3ebb4:	62 b1 7c 48 28 f7    	vmovaps zmm6,zmm23
  a3ebba:	62 71 6c 48 58 d4    	vaddps zmm10,zmm2,zmm4
  a3ebc0:	62 51 34 48 58 ea    	vaddps zmm13,zmm9,zmm10
  a3ebc6:	62 41 7c 48 28 cd    	vmovaps zmm25,zmm13
  a3ebcc:	62 11 7c 48 28 dd    	vmovaps zmm11,zmm29
  a3ebd2:	62 f2 25 40 bc c8    	vfnmadd231ps zmm1,zmm27,zmm0
  a3ebd8:	62 f1 64 48 5c c5    	vsubps zmm0,zmm3,zmm5
  a3ebde:	62 91 7c 48 59 c4    	vmulps zmm0,zmm0,zmm28
  a3ebe4:	62 32 3d 40 7f e2    	vpermt2ps zmm12,zmm24,zmm18
  a3ebea:	62 51 7c 48 28 fc    	vmovaps zmm15,zmm12
  a3ebf0:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm12
  a3ebf7:	0e 
  a3ebf8:	62 f1 74 48 58 d8    	vaddps zmm3,zmm1,zmm0
  a3ebfe:	62 f2 25 40 bc d4    	vfnmadd231ps zmm2,zmm27,zmm4
  a3ec04:	62 d1 44 48 5c e0    	vsubps zmm4,zmm7,zmm8
  a3ec0a:	62 a2 3d 40 7f e2    	vpermt2ps zmm20,zmm24,zmm18
  a3ec10:	62 91 5c 48 59 e4    	vmulps zmm4,zmm4,zmm28
  a3ec16:	62 f1 6c 48 58 fc    	vaddps zmm7,zmm2,zmm4
  a3ec1c:	62 71 64 48 58 c7    	vaddps zmm8,zmm3,zmm7
  a3ec22:	62 b2 3d 40 7f f2    	vpermt2ps zmm6,zmm24,zmm18
  a3ec28:	62 c1 7c 48 28 c0    	vmovaps zmm16,zmm8
  a3ec2e:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a3ec34:	62 f1 6c 48 5c cc    	vsubps zmm1,zmm2,zmm4
  a3ec3a:	62 32 3d 40 7f da    	vpermt2ps zmm11,zmm24,zmm18
  a3ec40:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a3ec46:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm11
  a3ec4d:	1b 
  a3ec4e:	62 61 7c 48 58 e1    	vaddps zmm28,zmm0,zmm1
  a3ec54:	62 91 7c 48 28 ec    	vmovaps zmm5,zmm28
  a3ec5a:	62 f1 64 48 5c df    	vsubps zmm3,zmm3,zmm7
  a3ec60:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm20
  a3ec67:	01 
  a3ec68:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a3ec6e:	62 f1 7c 48 5c c9    	vsubps zmm1,zmm0,zmm1
  a3ec74:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a3ec7a:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm6
  a3ec81:	07 
  a3ec82:	62 d1 34 48 5c c2    	vsubps zmm0,zmm9,zmm10
  a3ec88:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a3ec8e:	62 71 7c 48 28 0d a8 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6882a8]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a3ec95:	82 68 ff 
  a3ec98:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x4c0]
  a3ec9f:	13 
  a3eca0:	62 62 35 48 7f f7    	vpermt2ps zmm30,zmm9,zmm7
  a3eca6:	62 52 35 48 7f f7    	vpermt2ps zmm14,zmm9,zmm15
  a3ecac:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm14
  a3ecb3:	09 
  a3ecb4:	62 32 3d 40 7f ea    	vpermt2ps zmm13,zmm24,zmm18
  a3ecba:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm13
  a3ecc1:	0d 
  a3ecc2:	62 32 3d 40 7f c2    	vpermt2ps zmm8,zmm24,zmm18
  a3ecc8:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm8
  a3eccf:	1d 
  a3ecd0:	62 e2 35 48 7f e7    	vpermt2ps zmm20,zmm9,zmm7
  a3ecd6:	62 52 35 48 7f e8    	vpermt2ps zmm13,zmm9,zmm8
  a3ecdc:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm13
  a3ece3:	0a 
  a3ece4:	62 22 3d 40 7f e2    	vpermt2ps zmm28,zmm24,zmm18
  a3ecea:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm28
  a3ecf1:	06 
  a3ecf2:	62 f2 35 48 7f f4    	vpermt2ps zmm6,zmm9,zmm4
  a3ecf8:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a3ecfe:	62 32 3d 40 7f d2    	vpermt2ps zmm10,zmm24,zmm18
  a3ed04:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm10
  a3ed0b:	05 
  a3ed0c:	62 b2 3d 40 7f ca    	vpermt2ps zmm1,zmm24,zmm18
  a3ed12:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm1
  a3ed19:	18 
  a3ed1a:	62 62 35 48 7f e7    	vpermt2ps zmm28,zmm9,zmm7
  a3ed20:	62 b2 3d 40 7f c2    	vpermt2ps zmm0,zmm24,zmm18
  a3ed26:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a3ed2d:	04 
  a3ed2e:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a3ed34:	62 62 35 48 7f c7    	vpermt2ps zmm24,zmm9,zmm7
  a3ed3a:	62 72 35 48 7f d1    	vpermt2ps zmm10,zmm9,zmm1
  a3ed40:	62 91 95 48 15 c4    	vunpckhpd zmm0,zmm13,zmm28
  a3ed46:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm0
  a3ed4d:	22 
  a3ed4e:	62 91 ad 48 15 d8    	vunpckhpd zmm3,zmm10,zmm24
  a3ed54:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm3
  a3ed5b:	21 
  a3ed5c:	62 e1 7c 48 28 1d 9a 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff68809a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3ed63:	80 68 ff 
  a3ed66:	62 f2 65 40 7f c3    	vpermt2ps zmm0,zmm19,zmm3
  a3ed6c:	62 b1 8d 48 15 cc    	vunpckhpd zmm1,zmm14,zmm20
  a3ed72:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm1
  a3ed79:	20 
  a3ed7a:	62 91 cd 48 15 de    	vunpckhpd zmm3,zmm6,zmm30
  a3ed80:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm3
  a3ed87:	1f 
  a3ed88:	62 f2 65 40 7f cb    	vpermt2ps zmm1,zmm19,zmm3
  a3ed8e:	62 f1 7c 48 10 51 0d 	vmovups zmm2,ZMMWORD PTR [rcx+0x340]
  a3ed95:	62 f1 7c 48 10 61 0c 	vmovups zmm4,ZMMWORD PTR [rcx+0x300]
  a3ed9c:	62 f1 74 48 59 dc    	vmulps zmm3,zmm1,zmm4
  a3eda2:	62 f2 7d 48 b8 da    	vfmadd231ps zmm3,zmm0,zmm2
  a3eda8:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm3
  a3edaf:	11 
  a3edb0:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a3edb6:	62 f2 6d 48 bc c1    	vfnmadd231ps zmm0,zmm2,zmm1
  a3edbc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a3edc3:	0f 
  a3edc4:	62 f1 7c 48 28 05 f2 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6881f2]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a3edcb:	81 68 ff 
  a3edce:	62 22 7d 48 7f ca    	vpermt2ps zmm25,zmm0,zmm18
  a3edd4:	62 b1 7c 48 28 d0    	vmovaps zmm2,zmm16
  a3edda:	62 b2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm18
  a3ede0:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm2
  a3ede7:	0b 
  a3ede8:	62 b2 7d 48 7f ea    	vpermt2ps zmm5,zmm0,zmm18
  a3edee:	62 32 7d 48 7f da    	vpermt2ps zmm11,zmm0,zmm18
  a3edf4:	62 22 7d 48 7f d2    	vpermt2ps zmm26,zmm0,zmm18
  a3edfa:	62 32 7d 48 7f e2    	vpermt2ps zmm12,zmm0,zmm18
  a3ee00:	62 a2 7d 48 7f ea    	vpermt2ps zmm21,zmm0,zmm18
  a3ee06:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm21
  a3ee0d:	0c 
  a3ee0e:	62 a2 7d 48 7f f2    	vpermt2ps zmm22,zmm0,zmm18
  a3ee14:	62 a2 7d 48 7f fa    	vpermt2ps zmm23,zmm0,zmm18
  a3ee1a:	62 b1 7c 48 28 d9    	vmovaps zmm3,zmm17
  a3ee20:	62 b2 7d 48 7f da    	vpermt2ps zmm3,zmm0,zmm18
  a3ee26:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm3
  a3ee2d:	08 
  a3ee2e:	62 22 7d 48 7f ea    	vpermt2ps zmm29,zmm0,zmm18
  a3ee34:	62 22 7d 48 7f fa    	vpermt2ps zmm31,zmm0,zmm18
  a3ee3a:	62 81 7c 48 28 ca    	vmovaps zmm17,zmm26
  a3ee40:	62 22 35 48 7f d5    	vpermt2ps zmm26,zmm9,zmm21
  a3ee46:	62 a1 7c 48 28 c6    	vmovaps zmm16,zmm22
  a3ee4c:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x480]
  a3ee53:	12 
  a3ee54:	62 a2 35 48 7f f2    	vpermt2ps zmm22,zmm9,zmm18
  a3ee5a:	62 31 7c 48 28 ff    	vmovaps zmm15,zmm23
  a3ee60:	62 82 35 48 7f fd    	vpermt2ps zmm23,zmm9,zmm29
  a3ee66:	62 11 7c 48 28 f7    	vmovaps zmm14,zmm31
  a3ee6c:	62 22 35 48 7f fa    	vpermt2ps zmm31,zmm9,zmm18
  a3ee72:	62 01 7c 48 28 d9    	vmovaps zmm27,zmm25
  a3ee78:	62 62 35 48 7f ca    	vpermt2ps zmm25,zmm9,zmm2
  a3ee7e:	62 71 7c 48 28 ed    	vmovaps zmm13,zmm5
  a3ee84:	62 b2 35 48 7f ea    	vpermt2ps zmm5,zmm9,zmm18
  a3ee8a:	62 51 7c 48 28 c4    	vmovaps zmm8,zmm12
  a3ee90:	62 72 35 48 7f e3    	vpermt2ps zmm12,zmm9,zmm3
  a3ee96:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a3ee9c:	62 32 35 48 7f da    	vpermt2ps zmm11,zmm9,zmm18
  a3eea2:	62 e1 b5 40 15 ed    	vunpckhpd zmm21,zmm25,zmm5
  a3eea8:	62 d1 9d 48 15 d3    	vunpckhpd zmm2,zmm12,zmm11
  a3eeae:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm2
  a3eeb5:	1a 
  a3eeb6:	62 b1 7c 48 28 cd    	vmovaps zmm1,zmm21
  a3eebc:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a3eec2:	62 f2 65 40 7f ca    	vpermt2ps zmm1,zmm19,zmm2
  a3eec8:	62 a1 ad 40 15 de    	vunpckhpd zmm19,zmm26,zmm22
  a3eece:	62 91 c5 40 15 df    	vunpckhpd zmm3,zmm23,zmm31
  a3eed4:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm3
  a3eedb:	19 
  a3eedc:	62 b1 7c 48 28 d3    	vmovaps zmm2,zmm19
  a3eee2:	62 f2 7d 48 7f d3    	vpermt2ps zmm2,zmm0,zmm3
  a3eee8:	62 71 7c 48 10 49 1d 	vmovups zmm9,ZMMWORD PTR [rcx+0x740]
  a3eeef:	62 f1 7c 48 10 41 1c 	vmovups zmm0,ZMMWORD PTR [rcx+0x700]
  a3eef6:	62 f1 6c 48 59 d8    	vmulps zmm3,zmm2,zmm0
  a3eefc:	62 d2 75 48 b8 d9    	vfmadd231ps zmm3,zmm1,zmm9
  a3ef02:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm3
  a3ef09:	10 
  a3ef0a:	62 f1 74 48 59 c0    	vmulps zmm0,zmm1,zmm0
  a3ef10:	62 f2 35 48 bc c2    	vfnmadd231ps zmm0,zmm9,zmm2
  a3ef16:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm0
  a3ef1d:	23 
  a3ef1e:	62 b1 ad 40 14 ce    	vunpcklpd zmm1,zmm26,zmm22
  a3ef24:	62 91 c5 40 14 c7    	vunpcklpd zmm0,zmm23,zmm31
  a3ef2a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm0
  a3ef31:	16 
  a3ef32:	62 f1 b5 40 14 d5    	vunpcklpd zmm2,zmm25,zmm5
  a3ef38:	62 d1 9d 48 14 eb    	vunpcklpd zmm5,zmm12,zmm11
  a3ef3e:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm5
  a3ef45:	15 
  a3ef46:	62 61 7c 48 28 d1    	vmovaps zmm26,zmm1
  a3ef4c:	62 f1 7c 48 28 1d ea 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff687eea]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a3ef53:	7e 68 ff 
  a3ef56:	62 f2 65 48 7f c8    	vpermt2ps zmm1,zmm3,zmm0
  a3ef5c:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a3ef62:	62 f2 65 48 7f d5    	vpermt2ps zmm2,zmm3,zmm5
  a3ef68:	62 f1 7c 48 10 41 1b 	vmovups zmm0,ZMMWORD PTR [rcx+0x6c0]
  a3ef6f:	62 f1 7c 48 10 69 1a 	vmovups zmm5,ZMMWORD PTR [rcx+0x680]
  a3ef76:	62 71 74 48 59 dd    	vmulps zmm11,zmm1,zmm5
  a3ef7c:	62 72 6d 48 b8 d8    	vfmadd231ps zmm11,zmm2,zmm0
  a3ef82:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm11
  a3ef89:	1e 
  a3ef8a:	62 f1 6c 48 59 d5    	vmulps zmm2,zmm2,zmm5
  a3ef90:	62 f2 7d 48 bc d1    	vfnmadd231ps zmm2,zmm0,zmm1
  a3ef96:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm2
  a3ef9d:	1c 
  a3ef9e:	62 e1 7c 48 28 35 58 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff687f58]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a3efa5:	7f 68 ff 
  a3efa8:	62 62 4d 40 7f 5c 24 	vpermt2ps zmm27,zmm22,ZMMWORD PTR [rsp+0x2c0]
  a3efaf:	0b 
  a3efb0:	62 72 4d 40 7f 44 24 	vpermt2ps zmm8,zmm22,ZMMWORD PTR [rsp+0x200]
  a3efb7:	08 
  a3efb8:	62 e2 4d 40 7f 4c 24 	vpermt2ps zmm17,zmm22,ZMMWORD PTR [rsp+0x300]
  a3efbf:	0c 
  a3efc0:	62 12 4d 40 7f fd    	vpermt2ps zmm15,zmm22,zmm29
  a3efc6:	62 b2 4d 40 7f e2    	vpermt2ps zmm4,zmm22,zmm18
  a3efcc:	62 32 4d 40 7f ea    	vpermt2ps zmm13,zmm22,zmm18
  a3efd2:	62 a2 4d 40 7f c2    	vpermt2ps zmm16,zmm22,zmm18
  a3efd8:	62 32 4d 40 7f f2    	vpermt2ps zmm14,zmm22,zmm18
  a3efde:	62 b1 f5 40 14 c0    	vunpcklpd zmm0,zmm17,zmm16
  a3efe4:	62 d1 85 48 14 ce    	vunpcklpd zmm1,zmm15,zmm14
  a3efea:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a3eff1:	08 
  a3eff2:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a3eff8:	62 f2 65 48 7f c1    	vpermt2ps zmm0,zmm3,zmm1
  a3effe:	62 d1 a5 40 14 cd    	vunpcklpd zmm1,zmm27,zmm13
  a3f004:	62 f1 bd 48 14 d4    	vunpcklpd zmm2,zmm8,zmm4
  a3f00a:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm2
  a3f011:	17 
  a3f012:	62 e1 7c 48 28 d1    	vmovaps zmm18,zmm1
  a3f018:	62 f2 65 48 7f ca    	vpermt2ps zmm1,zmm3,zmm2
  a3f01e:	62 f1 7c 48 10 51 12 	vmovups zmm2,ZMMWORD PTR [rcx+0x480]
  a3f025:	62 71 74 48 59 da    	vmulps zmm11,zmm1,zmm2
  a3f02b:	62 f1 7c 48 59 ea    	vmulps zmm5,zmm0,zmm2
  a3f031:	62 f1 7c 48 10 51 13 	vmovups zmm2,ZMMWORD PTR [rcx+0x4c0]
  a3f038:	62 f2 6d 48 b8 e9    	vfmadd231ps zmm5,zmm2,zmm1
  a3f03e:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm5
  a3f045:	0c 
  a3f046:	62 72 7d 48 bc da    	vfnmadd231ps zmm11,zmm0,zmm2
  a3f04c:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm11
  a3f053:	0b 
  a3f054:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a3f05b:	09 
  a3f05c:	62 b1 fd 48 14 c4    	vunpcklpd zmm0,zmm0,zmm20
  a3f062:	62 91 cd 48 14 d6    	vunpcklpd zmm2,zmm6,zmm30
  a3f068:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm2
  a3f06f:	14 
  a3f070:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x280]
  a3f077:	0a 
  a3f078:	62 91 f5 48 14 cc    	vunpcklpd zmm1,zmm1,zmm28
  a3f07e:	62 91 ad 48 14 e8    	vunpcklpd zmm5,zmm10,zmm24
  a3f084:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm5
  a3f08b:	09 
  a3f08c:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a3f092:	62 f2 65 48 7f cd    	vpermt2ps zmm1,zmm3,zmm5
  a3f098:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a3f09e:	62 f2 65 48 7f c2    	vpermt2ps zmm0,zmm3,zmm2
  a3f0a4:	62 f1 7c 48 10 69 0b 	vmovups zmm5,ZMMWORD PTR [rcx+0x2c0]
  a3f0ab:	62 f1 7c 48 10 71 0a 	vmovups zmm6,ZMMWORD PTR [rcx+0x280]
  a3f0b2:	62 f1 7c 48 59 d6    	vmulps zmm2,zmm0,zmm6
  a3f0b8:	62 f2 75 48 b8 d5    	vfmadd231ps zmm2,zmm1,zmm5
  a3f0be:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm2
  a3f0c5:	0a 
  a3f0c6:	62 e1 74 48 59 fe    	vmulps zmm23,zmm1,zmm6
  a3f0cc:	62 e2 55 48 bc f8    	vfnmadd231ps zmm23,zmm5,zmm0
  a3f0d2:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0xc0]
  a3f0d9:	03 
  a3f0da:	62 f2 4d 40 7f 6c 24 	vpermt2ps zmm5,zmm22,ZMMWORD PTR [rsp+0x380]
  a3f0e1:	0e 
  a3f0e2:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm5
  a3f0e9:	03 
  a3f0ea:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x1c0]
  a3f0f1:	07 
  a3f0f2:	62 f2 4d 40 7f 54 24 	vpermt2ps zmm2,zmm22,ZMMWORD PTR [rsp+0x6c0]
  a3f0f9:	1b 
  a3f0fa:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm2
  a3f101:	07 
  a3f102:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x340]
  a3f109:	0d 
  a3f10a:	62 62 4d 40 7f 64 24 	vpermt2ps zmm28,zmm22,ZMMWORD PTR [rsp+0x740]
  a3f111:	1d 
  a3f112:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x140]
  a3f119:	05 
  a3f11a:	62 62 4d 40 7f 4c 24 	vpermt2ps zmm25,zmm22,ZMMWORD PTR [rsp+0x600]
  a3f121:	18 
  a3f122:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm25
  a3f129:	05 
  a3f12a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a3f131:	02 
  a3f132:	62 f2 4d 40 7f cf    	vpermt2ps zmm1,zmm22,zmm7
  a3f138:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a3f13f:	02 
  a3f140:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a3f147:	01 
  a3f148:	62 f2 4d 40 7f c7    	vpermt2ps zmm0,zmm22,zmm7
  a3f14e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a3f155:	01 
  a3f156:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x180]
  a3f15d:	06 
  a3f15e:	62 e2 4d 40 7f e7    	vpermt2ps zmm20,zmm22,zmm7
  a3f164:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm20
  a3f16b:	06 
  a3f16c:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x100]
  a3f173:	04 
  a3f174:	62 62 4d 40 7f c7    	vpermt2ps zmm24,zmm22,zmm7
  a3f17a:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm24
  a3f181:	04 
  a3f182:	62 f1 d5 48 14 c0    	vunpcklpd zmm0,zmm5,zmm0
  a3f188:	62 f1 ed 48 14 d1    	vunpcklpd zmm2,zmm2,zmm1
  a3f18e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm2
  a3f195:	0e 
  a3f196:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a3f19c:	62 f2 65 48 7f c2    	vpermt2ps zmm0,zmm3,zmm2
  a3f1a2:	62 a1 9d 40 14 e4    	vunpcklpd zmm20,zmm28,zmm20
  a3f1a8:	62 91 b5 40 14 d0    	vunpcklpd zmm2,zmm25,zmm24
  a3f1ae:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm2
  a3f1b5:	0d 
  a3f1b6:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  a3f1bc:	62 f2 65 48 7f ca    	vpermt2ps zmm1,zmm3,zmm2
  a3f1c2:	62 f1 7c 48 10 69 02 	vmovups zmm5,ZMMWORD PTR [rcx+0x80]
  a3f1c9:	62 61 7c 48 10 41 03 	vmovups zmm24,ZMMWORD PTR [rcx+0xc0]
  a3f1d0:	62 e1 74 48 59 f5    	vmulps zmm22,zmm1,zmm5
  a3f1d6:	62 82 7d 48 bc f0    	vfnmadd231ps zmm22,zmm0,zmm24
  a3f1dc:	62 61 7c 48 59 fd    	vmulps zmm31,zmm0,zmm5
  a3f1e2:	62 62 3d 40 b8 f9    	vfmadd231ps zmm31,zmm24,zmm1
  a3f1e8:	62 b1 f5 40 15 c0    	vunpckhpd zmm0,zmm17,zmm16
  a3f1ee:	62 41 85 48 15 f6    	vunpckhpd zmm30,zmm15,zmm14
  a3f1f4:	62 51 a5 40 15 ed    	vunpckhpd zmm13,zmm27,zmm13
  a3f1fa:	62 61 bd 48 15 cc    	vunpckhpd zmm25,zmm8,zmm4
  a3f200:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a3f206:	62 92 65 48 7f c6    	vpermt2ps zmm0,zmm3,zmm30
  a3f20c:	62 d1 7c 48 28 ed    	vmovaps zmm5,zmm13
  a3f212:	62 12 65 48 7f e9    	vpermt2ps zmm13,zmm3,zmm25
  a3f218:	62 f1 7c 48 10 61 17 	vmovups zmm4,ZMMWORD PTR [rcx+0x5c0]
  a3f21f:	62 71 7c 48 10 41 16 	vmovups zmm8,ZMMWORD PTR [rcx+0x580]
  a3f226:	62 d1 14 48 59 f0    	vmulps zmm6,zmm13,zmm8
  a3f22c:	62 f2 7d 48 bc f4    	vfnmadd231ps zmm6,zmm0,zmm4
  a3f232:	62 51 7c 48 59 c0    	vmulps zmm8,zmm0,zmm8
  a3f238:	62 52 5d 48 b8 c5    	vfmadd231ps zmm8,zmm4,zmm13
  a3f23e:	62 e2 65 48 7f 5c 24 	vpermt2ps zmm19,zmm3,ZMMWORD PTR [rsp+0x640]
  a3f245:	19 
  a3f246:	62 e2 65 48 7f 6c 24 	vpermt2ps zmm21,zmm3,ZMMWORD PTR [rsp+0x680]
  a3f24d:	1a 
  a3f24e:	62 f1 7c 48 10 41 1f 	vmovups zmm0,ZMMWORD PTR [rcx+0x7c0]
  a3f255:	62 f1 7c 48 10 61 1e 	vmovups zmm4,ZMMWORD PTR [rcx+0x780]
  a3f25c:	62 71 64 40 59 f4    	vmulps zmm14,zmm19,zmm4
  a3f262:	62 72 55 40 b8 f0    	vfmadd231ps zmm14,zmm21,zmm0
  a3f268:	62 71 54 40 59 ec    	vmulps zmm13,zmm21,zmm4
  a3f26e:	62 32 7d 48 bc eb    	vfnmadd231ps zmm13,zmm0,zmm19
  a3f274:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x880]
  a3f27b:	22 
  a3f27c:	62 f2 65 48 7f 4c 24 	vpermt2ps zmm1,zmm3,ZMMWORD PTR [rsp+0x840]
  a3f283:	21 
  a3f284:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x800]
  a3f28b:	20 
  a3f28c:	62 f2 65 48 7f 54 24 	vpermt2ps zmm2,zmm3,ZMMWORD PTR [rsp+0x7c0]
  a3f293:	1f 
  a3f294:	62 f1 7c 48 10 41 0f 	vmovups zmm0,ZMMWORD PTR [rcx+0x3c0]
  a3f29b:	62 f1 7c 48 10 61 0e 	vmovups zmm4,ZMMWORD PTR [rcx+0x380]
  a3f2a2:	62 e1 6c 48 59 c4    	vmulps zmm16,zmm2,zmm4
  a3f2a8:	62 e2 75 48 b8 c0    	vfmadd231ps zmm16,zmm1,zmm0
  a3f2ae:	62 71 74 48 59 fc    	vmulps zmm15,zmm1,zmm4
  a3f2b4:	62 72 7d 48 bc fa    	vfnmadd231ps zmm15,zmm0,zmm2
  a3f2ba:	62 e1 7c 48 28 2d 3c 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff687b3c]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3f2c1:	7b 68 ff 
  a3f2c4:	62 62 55 40 7f 54 24 	vpermt2ps zmm26,zmm21,ZMMWORD PTR [rsp+0x580]
  a3f2cb:	16 
  a3f2cc:	62 72 55 40 7f 4c 24 	vpermt2ps zmm9,zmm21,ZMMWORD PTR [rsp+0x540]
  a3f2d3:	15 
  a3f2d4:	62 e1 7c 48 10 49 19 	vmovups zmm17,ZMMWORD PTR [rcx+0x640]
  a3f2db:	62 f1 7c 48 10 41 18 	vmovups zmm0,ZMMWORD PTR [rcx+0x600]
  a3f2e2:	62 f1 34 48 59 e0    	vmulps zmm4,zmm9,zmm0
  a3f2e8:	62 b2 2d 40 bc e1    	vfnmadd231ps zmm4,zmm26,zmm17
  a3f2ee:	62 f1 2c 40 59 d0    	vmulps zmm2,zmm26,zmm0
  a3f2f4:	62 d2 75 40 b8 d1    	vfmadd231ps zmm2,zmm17,zmm9
  a3f2fa:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a3f301:	03 
  a3f302:	62 71 fd 48 15 4c 24 	vunpckhpd zmm9,zmm0,ZMMWORD PTR [rsp+0x40]
  a3f309:	01 
  a3f30a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a3f311:	07 
  a3f312:	62 e1 fd 48 15 4c 24 	vunpckhpd zmm17,zmm0,ZMMWORD PTR [rsp+0x80]
  a3f319:	02 
  a3f31a:	62 61 9d 40 15 54 24 	vunpckhpd zmm26,zmm28,ZMMWORD PTR [rsp+0x180]
  a3f321:	06 
  a3f322:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a3f329:	05 
  a3f32a:	62 61 fd 48 15 5c 24 	vunpckhpd zmm27,zmm0,ZMMWORD PTR [rsp+0x100]
  a3f331:	04 
  a3f332:	62 41 7c 48 28 c1    	vmovaps zmm24,zmm9
  a3f338:	62 32 65 48 7f c9    	vpermt2ps zmm9,zmm3,zmm17
  a3f33e:	62 91 7c 48 28 ca    	vmovaps zmm1,zmm26
  a3f344:	62 02 65 48 7f d3    	vpermt2ps zmm26,zmm3,zmm27
  a3f34a:	62 f1 7c 48 10 41 07 	vmovups zmm0,ZMMWORD PTR [rcx+0x1c0]
  a3f351:	62 e1 7c 48 10 59 06 	vmovups zmm19,ZMMWORD PTR [rcx+0x180]
  a3f358:	62 21 2c 40 59 e3    	vmulps zmm28,zmm26,zmm19
  a3f35e:	62 62 35 48 bc e0    	vfnmadd231ps zmm28,zmm9,zmm0
  a3f364:	62 a1 34 48 59 db    	vmulps zmm19,zmm9,zmm19
  a3f36a:	62 82 7d 48 b8 da    	vfmadd231ps zmm19,zmm0,zmm26
  a3f370:	62 b1 7c 48 28 dd    	vmovaps zmm3,zmm21
  a3f376:	62 72 55 40 7f 54 24 	vpermt2ps zmm10,zmm21,ZMMWORD PTR [rsp+0x500]
  a3f37d:	14 
  a3f37e:	62 72 55 40 7f 5c 24 	vpermt2ps zmm11,zmm21,ZMMWORD PTR [rsp+0x240]
  a3f385:	09 
  a3f386:	62 f1 7c 48 10 41 09 	vmovups zmm0,ZMMWORD PTR [rcx+0x240]
  a3f38d:	62 71 7c 48 10 49 08 	vmovups zmm9,ZMMWORD PTR [rcx+0x200]
  a3f394:	62 c1 24 48 59 e9    	vmulps zmm21,zmm11,zmm9
  a3f39a:	62 e2 2d 48 bc e8    	vfnmadd231ps zmm21,zmm10,zmm0
  a3f3a0:	62 51 2c 48 59 c9    	vmulps zmm9,zmm10,zmm9
  a3f3a6:	62 52 7d 48 b8 cb    	vfmadd231ps zmm9,zmm0,zmm11
  a3f3ac:	62 92 65 48 7f fe    	vpermt2ps zmm7,zmm3,zmm30
  a3f3b2:	62 92 65 48 7f e9    	vpermt2ps zmm5,zmm3,zmm25
  a3f3b8:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a3f3be:	62 f1 7c 48 10 41 14 	vmovups zmm0,ZMMWORD PTR [rcx+0x500]
  a3f3c5:	62 61 54 48 59 f0    	vmulps zmm30,zmm5,zmm0
  a3f3cb:	62 61 44 48 59 d0    	vmulps zmm26,zmm7,zmm0
  a3f3d1:	62 f1 7c 48 10 41 15 	vmovups zmm0,ZMMWORD PTR [rcx+0x540]
  a3f3d8:	62 62 7d 48 b8 d5    	vfmadd231ps zmm26,zmm0,zmm5
  a3f3de:	62 62 45 48 bc f0    	vfnmadd231ps zmm30,zmm7,zmm0
  a3f3e4:	62 22 65 48 7f c1    	vpermt2ps zmm24,zmm3,zmm17
  a3f3ea:	62 92 65 48 7f cb    	vpermt2ps zmm1,zmm3,zmm27
  a3f3f0:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a3f3f7:	62 f1 7c 48 10 59 05 	vmovups zmm3,ZMMWORD PTR [rcx+0x140]
  a3f3fe:	62 f1 74 48 59 f8    	vmulps zmm7,zmm1,zmm0
  a3f404:	62 f2 3d 40 bc fb    	vfnmadd231ps zmm7,zmm24,zmm3
  a3f40a:	62 61 3c 40 59 d8    	vmulps zmm27,zmm24,zmm0
  a3f410:	62 62 65 48 b8 d9    	vfmadd231ps zmm27,zmm3,zmm1
  a3f416:	62 e2 2d 48 7f 54 24 	vpermt2ps zmm18,zmm10,ZMMWORD PTR [rsp+0x5c0]
  a3f41d:	17 
  a3f41e:	62 62 2d 48 7f 6c 24 	vpermt2ps zmm29,zmm10,ZMMWORD PTR [rsp+0x200]
  a3f425:	08 
  a3f426:	62 f1 7c 48 10 41 11 	vmovups zmm0,ZMMWORD PTR [rcx+0x440]
  a3f42d:	62 f1 7c 48 10 49 10 	vmovups zmm1,ZMMWORD PTR [rcx+0x400]
  a3f434:	62 f1 14 40 59 d9    	vmulps zmm3,zmm29,zmm1
  a3f43a:	62 f2 6d 40 b8 d8    	vfmadd231ps zmm3,zmm18,zmm0
  a3f440:	62 71 6c 40 59 d9    	vmulps zmm11,zmm18,zmm1
  a3f446:	62 12 7d 48 bc dd    	vfnmadd231ps zmm11,zmm0,zmm29
  a3f44c:	62 72 2d 48 7f 64 24 	vpermt2ps zmm12,zmm10,ZMMWORD PTR [rsp+0x380]
  a3f453:	0e 
  a3f454:	62 e2 2d 48 7f 64 24 	vpermt2ps zmm20,zmm10,ZMMWORD PTR [rsp+0x340]
  a3f45b:	0d 
  a3f45c:	62 61 1c 48 5c c3    	vsubps zmm24,zmm12,zmm3
  a3f462:	62 51 64 48 58 d4    	vaddps zmm10,zmm3,zmm12
  a3f468:	62 61 34 48 5c ca    	vsubps zmm25,zmm9,zmm2
  a3f46e:	62 71 34 48 58 e2    	vaddps zmm12,zmm9,zmm2
  a3f474:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x3c0]
  a3f47b:	0f 
  a3f47c:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x8c0]
  a3f483:	23 
  a3f484:	62 f1 7c 48 5c d9    	vsubps zmm3,zmm0,zmm1
  a3f48a:	62 61 7c 48 58 e9    	vaddps zmm29,zmm0,zmm1
  a3f490:	62 51 7c 40 5c ce    	vsubps zmm9,zmm16,zmm14
  a3f496:	62 d1 7c 40 58 c6    	vaddps zmm0,zmm16,zmm14
  a3f49c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a3f4a3:	02 
  a3f4a4:	62 c1 64 40 5c c8    	vsubps zmm17,zmm19,zmm8
  a3f4aa:	62 d1 64 40 58 c0    	vaddps zmm0,zmm19,zmm8
  a3f4b0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a3f4b7:	01 
  a3f4b8:	62 c1 14 48 5c df    	vsubps zmm19,zmm13,zmm15
  a3f4be:	62 51 04 48 58 ed    	vaddps zmm13,zmm15,zmm13
  a3f4c4:	62 71 1c 40 5c c6    	vsubps zmm8,zmm28,zmm6
  a3f4ca:	62 e1 1c 40 58 c6    	vaddps zmm16,zmm28,zmm6
  a3f4d0:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x700]
  a3f4d7:	1c 
  a3f4d8:	62 21 7c 48 5c e7    	vsubps zmm28,zmm0,zmm23
  a3f4de:	62 71 44 40 58 f0    	vaddps zmm14,zmm23,zmm0
  a3f4e4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a3f4eb:	0b 
  a3f4ec:	62 e1 4c 40 5c f8    	vsubps zmm23,zmm22,zmm0
  a3f4f2:	62 e1 4c 40 58 d0    	vaddps zmm18,zmm22,zmm0
  a3f4f8:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x300]
  a3f4ff:	0c 
  a3f500:	62 f1 04 40 5c c1    	vsubps zmm0,zmm31,zmm1
  a3f506:	62 f1 04 40 58 c9    	vaddps zmm1,zmm31,zmm1
  a3f50c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm1
  a3f513:	0f 
  a3f514:	62 81 44 48 5c f6    	vsubps zmm22,zmm7,zmm30
  a3f51a:	62 11 44 48 58 fe    	vaddps zmm15,zmm7,zmm30
  a3f520:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x780]
  a3f527:	1e 
  a3f528:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x280]
  a3f52f:	0a 
  a3f530:	62 61 6c 48 5c f1    	vsubps zmm30,zmm2,zmm1
  a3f536:	62 f1 6c 48 58 f9    	vaddps zmm7,zmm2,zmm1
  a3f53c:	62 41 5c 40 5c fb    	vsubps zmm31,zmm20,zmm11
  a3f542:	62 d1 5c 40 58 eb    	vaddps zmm5,zmm20,zmm11
  a3f548:	62 b1 5c 48 5c f5    	vsubps zmm6,zmm4,zmm21
  a3f54e:	62 e1 54 40 58 e4    	vaddps zmm20,zmm21,zmm4
  a3f554:	62 11 24 40 5c da    	vsubps zmm11,zmm27,zmm26
  a3f55a:	62 91 24 40 58 ca    	vaddps zmm1,zmm27,zmm26
  a3f560:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x440]
  a3f567:	11 
  a3f568:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x400]
  a3f56f:	10 
  a3f570:	62 b1 6c 48 5c e5    	vsubps zmm4,zmm2,zmm21
  a3f576:	62 a1 6c 48 58 ed    	vaddps zmm21,zmm2,zmm21
  a3f57c:	62 f1 5c 48 5c d3    	vsubps zmm2,zmm4,zmm3
  a3f582:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a3f589:	05 
  a3f58a:	62 f1 64 48 58 d4    	vaddps zmm2,zmm3,zmm4
  a3f590:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm2
  a3f597:	11 
  a3f598:	62 f1 3c 40 5c d6    	vsubps zmm2,zmm24,zmm6
  a3f59e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm2
  a3f5a5:	07 
  a3f5a6:	62 91 4c 48 58 d0    	vaddps zmm2,zmm6,zmm24
  a3f5ac:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a3f5b3:	03 
  a3f5b4:	62 41 3c 48 5c c1    	vsubps zmm24,zmm8,zmm9
  a3f5ba:	62 51 3c 48 58 c1    	vaddps zmm8,zmm8,zmm9
  a3f5c0:	62 b1 74 40 5c d3    	vsubps zmm2,zmm17,zmm19
  a3f5c6:	62 b1 74 40 58 db    	vaddps zmm3,zmm17,zmm19
  a3f5cc:	62 91 44 40 5c f6    	vsubps zmm6,zmm23,zmm30
  a3f5d2:	62 81 44 40 58 fe    	vaddps zmm23,zmm23,zmm30
  a3f5d8:	62 01 7c 48 5c f4    	vsubps zmm30,zmm0,zmm28
  a3f5de:	62 01 7c 48 58 e4    	vaddps zmm28,zmm0,zmm28
  a3f5e4:	62 41 4c 40 58 d3    	vaddps zmm26,zmm22,zmm11
  a3f5ea:	62 31 24 48 5c de    	vsubps zmm11,zmm11,zmm22
  a3f5f0:	62 c1 2c 48 5c cc    	vsubps zmm17,zmm10,zmm12
  a3f5f6:	62 d1 1c 48 58 c2    	vaddps zmm0,zmm12,zmm10
  a3f5fc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a3f603:	10 
  a3f604:	62 81 04 40 5c d9    	vsubps zmm19,zmm31,zmm25
  a3f60a:	62 01 04 40 58 d9    	vaddps zmm27,zmm31,zmm25
  a3f610:	62 c1 7c 40 5c f5    	vsubps zmm22,zmm16,zmm13
  a3f616:	62 d1 7c 40 58 c5    	vaddps zmm0,zmm16,zmm13
  a3f61c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a3f623:	06 
  a3f624:	62 21 74 48 5c cd    	vsubps zmm25,zmm1,zmm21
  a3f62a:	62 31 74 48 58 ed    	vaddps zmm13,zmm1,zmm21
  a3f630:	62 d1 6c 40 5c ce    	vsubps zmm1,zmm18,zmm14
  a3f636:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x3c0]
  a3f63d:	0f 
  a3f63e:	62 71 1c 48 5c cf    	vsubps zmm9,zmm12,zmm7
  a3f644:	62 c1 74 48 58 e9    	vaddps zmm21,zmm1,zmm9
  a3f64a:	62 f1 34 48 5c e1    	vsubps zmm4,zmm9,zmm1
  a3f650:	62 d1 6c 40 58 c6    	vaddps zmm0,zmm18,zmm14
  a3f656:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a3f65d:	04 
  a3f65e:	62 a1 54 48 5c d4    	vsubps zmm18,zmm5,zmm20
  a3f664:	62 31 54 48 58 f4    	vaddps zmm14,zmm5,zmm20
  a3f66a:	62 c1 14 40 5c e7    	vsubps zmm20,zmm29,zmm15
  a3f670:	62 91 04 48 58 c5    	vaddps zmm0,zmm15,zmm29
  a3f676:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x80]
  a3f67d:	02 
  a3f67e:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x40]
  a3f685:	01 
  a3f686:	62 51 2c 48 5c f9    	vsubps zmm15,zmm10,zmm9
  a3f68c:	62 21 04 48 5c ee    	vsubps zmm29,zmm15,zmm22
  a3f692:	62 c1 4c 40 58 f7    	vaddps zmm22,zmm22,zmm15
  a3f698:	62 f2 7d 48 18 0d 5e 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff63605e]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a3f69f:	60 63 ff 
  a3f6a2:	62 e1 0c 40 59 c1    	vmulps zmm16,zmm30,zmm1
  a3f6a8:	62 f2 7d 48 18 2d b2 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff635fb2]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a3f6af:	5f 63 ff 
  a3f6b2:	62 e2 4d 48 b8 c5    	vfmadd231ps zmm16,zmm6,zmm5
  a3f6b8:	62 61 0c 40 59 f5    	vmulps zmm30,zmm30,zmm5
  a3f6be:	62 62 75 48 bc f6    	vfnmadd231ps zmm30,zmm1,zmm6
  a3f6c4:	62 f1 6c 48 59 f5    	vmulps zmm6,zmm2,zmm5
  a3f6ca:	62 f2 3d 40 b8 f1    	vfmadd231ps zmm6,zmm24,zmm1
  a3f6d0:	62 61 3c 40 59 c5    	vmulps zmm24,zmm24,zmm5
  a3f6d6:	62 62 75 48 bc c2    	vfnmadd231ps zmm24,zmm1,zmm2
  a3f6dc:	62 71 1c 40 59 fd    	vmulps zmm15,zmm28,zmm5
  a3f6e2:	62 72 45 40 b8 f9    	vfmadd231ps zmm15,zmm23,zmm1
  a3f6e8:	62 f1 1c 40 59 d1    	vmulps zmm2,zmm28,zmm1
  a3f6ee:	62 b2 55 48 bc d7    	vfnmadd231ps zmm2,zmm5,zmm23
  a3f6f4:	62 e1 64 48 59 f9    	vmulps zmm23,zmm3,zmm1
  a3f6fa:	62 e2 3d 48 b8 fd    	vfmadd231ps zmm23,zmm8,zmm5
  a3f700:	62 f1 64 48 59 dd    	vmulps zmm3,zmm3,zmm5
  a3f706:	62 d2 75 48 bc d8    	vfnmadd231ps zmm3,zmm1,zmm8
  a3f70c:	62 f2 7d 48 18 0d 86 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff635c86]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a3f713:	5c 63 ff 
  a3f716:	62 71 24 48 59 c1    	vmulps zmm8,zmm11,zmm1
  a3f71c:	62 71 74 48 59 5c 24 	vmulps zmm11,zmm1,ZMMWORD PTR [rsp+0x440]
  a3f723:	11 
  a3f724:	62 41 3c 48 58 e3    	vaddps zmm28,zmm8,zmm11
  a3f72a:	62 51 3c 48 5c c3    	vsubps zmm8,zmm8,zmm11
  a3f730:	62 71 74 48 59 5c 24 	vmulps zmm11,zmm1,ZMMWORD PTR [rsp+0x140]
  a3f737:	05 
  a3f738:	62 61 2c 40 59 d1    	vmulps zmm26,zmm26,zmm1
  a3f73e:	62 01 24 48 5c fa    	vsubps zmm31,zmm11,zmm26
  a3f744:	62 41 2c 40 58 d3    	vaddps zmm26,zmm26,zmm11
  a3f74a:	62 f1 1c 48 58 ff    	vaddps zmm7,zmm12,zmm7
  a3f750:	62 51 2c 48 58 e1    	vaddps zmm12,zmm10,zmm9
  a3f756:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x1c0]
  a3f75d:	07 
  a3f75e:	62 11 54 48 5c cf    	vsubps zmm9,zmm5,zmm31
  a3f764:	62 f1 04 40 58 ed    	vaddps zmm5,zmm31,zmm5
  a3f76a:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm5
  a3f771:	01 
  a3f772:	62 21 74 40 5c fc    	vsubps zmm31,zmm17,zmm20
  a3f778:	62 a1 5c 40 58 c9    	vaddps zmm17,zmm20,zmm17
  a3f77e:	62 f1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm1
  a3f784:	62 e1 4c 40 59 e1    	vmulps zmm20,zmm22,zmm1
  a3f78a:	62 a1 5c 48 58 f4    	vaddps zmm22,zmm4,zmm20
  a3f790:	62 a1 5c 48 5c e4    	vsubps zmm20,zmm4,zmm20
  a3f796:	62 11 64 40 5c d4    	vsubps zmm10,zmm19,zmm28
  a3f79c:	62 81 64 40 58 dc    	vaddps zmm19,zmm19,zmm28
  a3f7a2:	62 01 6c 40 5c e1    	vsubps zmm28,zmm18,zmm25
  a3f7a8:	62 81 6c 40 58 d1    	vaddps zmm18,zmm18,zmm25
  a3f7ae:	62 61 14 40 59 c9    	vmulps zmm25,zmm29,zmm1
  a3f7b4:	62 e1 54 40 59 e9    	vmulps zmm21,zmm21,zmm1
  a3f7ba:	62 21 34 40 5c ed    	vsubps zmm29,zmm25,zmm21
  a3f7c0:	62 81 54 40 58 e9    	vaddps zmm21,zmm21,zmm25
  a3f7c6:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a3f7cd:	03 
  a3f7ce:	62 41 74 48 5c c8    	vsubps zmm25,zmm1,zmm8
  a3f7d4:	62 71 3c 48 58 d9    	vaddps zmm11,zmm8,zmm1
  a3f7da:	62 11 24 40 5c c2    	vsubps zmm8,zmm27,zmm26
  a3f7e0:	62 01 24 40 58 d2    	vaddps zmm26,zmm27,zmm26
  a3f7e6:	62 91 0c 40 5c e0    	vsubps zmm4,zmm30,zmm24
  a3f7ec:	62 01 0c 40 58 c0    	vaddps zmm24,zmm30,zmm24
  a3f7f2:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x400]
  a3f7f9:	10 
  a3f7fa:	62 41 74 48 5c f5    	vsubps zmm30,zmm1,zmm13
  a3f800:	62 61 14 48 58 d9    	vaddps zmm27,zmm13,zmm1
  a3f806:	62 71 7c 40 58 ee    	vaddps zmm13,zmm16,zmm6
  a3f80c:	62 f1 7c 40 5c f6    	vsubps zmm6,zmm16,zmm6
  a3f812:	62 c1 44 48 5c c4    	vsubps zmm16,zmm7,zmm12
  a3f818:	62 d1 44 48 58 fc    	vaddps zmm7,zmm7,zmm12
  a3f81e:	62 71 6c 48 5c e3    	vsubps zmm12,zmm2,zmm3
  a3f824:	62 f1 6c 48 58 db    	vaddps zmm3,zmm2,zmm3
  a3f82a:	62 f1 0c 48 5c d0    	vsubps zmm2,zmm14,zmm0
  a3f830:	62 71 0c 48 58 f0    	vaddps zmm14,zmm14,zmm0
  a3f836:	62 d1 44 40 5c c7    	vsubps zmm0,zmm23,zmm15
  a3f83c:	62 31 04 48 58 ff    	vaddps zmm15,zmm15,zmm23
  a3f842:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x180]
  a3f849:	06 
  a3f84a:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x100]
  a3f851:	04 
  a3f852:	62 b1 54 48 5c cf    	vsubps zmm1,zmm5,zmm23
  a3f858:	62 f1 44 40 58 ed    	vaddps zmm5,zmm23,zmm5
  a3f85e:	62 c1 34 48 58 fd    	vaddps zmm23,zmm9,zmm13
  a3f864:	62 51 34 48 5c cd    	vsubps zmm9,zmm9,zmm13
  a3f86a:	62 11 04 40 5c ed    	vsubps zmm13,zmm31,zmm29
  a3f870:	62 01 04 40 58 ed    	vaddps zmm29,zmm31,zmm29
  a3f876:	62 61 2c 48 5c fc    	vsubps zmm31,zmm10,zmm4
  a3f87c:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm31
  a3f883:	03 
  a3f884:	62 61 2c 48 58 fc    	vaddps zmm31,zmm10,zmm4
  a3f88a:	62 b1 1c 40 5c e6    	vsubps zmm4,zmm28,zmm22
  a3f890:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a3f897:	02 
  a3f898:	62 a1 1c 40 58 f6    	vaddps zmm22,zmm28,zmm22
  a3f89e:	62 f1 34 40 5c e0    	vsubps zmm4,zmm25,zmm0
  a3f8a4:	62 61 34 40 58 c8    	vaddps zmm25,zmm25,zmm0
  a3f8aa:	62 61 0c 40 5c e1    	vsubps zmm28,zmm30,zmm1
  a3f8b0:	62 f1 0c 40 58 c9    	vaddps zmm1,zmm30,zmm1
  a3f8b6:	62 41 3c 48 5c f4    	vsubps zmm30,zmm8,zmm12
  a3f8bc:	62 d1 3c 48 58 c4    	vaddps zmm0,zmm8,zmm12
  a3f8c2:	62 31 6c 48 5c e0    	vsubps zmm12,zmm2,zmm16
  a3f8c8:	62 a1 6c 48 58 c0    	vaddps zmm16,zmm2,zmm16
  a3f8ce:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a3f8d5:	01 
  a3f8d6:	62 11 6c 48 5c c0    	vsubps zmm8,zmm2,zmm24
  a3f8dc:	62 01 6c 48 58 c0    	vaddps zmm24,zmm2,zmm24
  a3f8e2:	62 31 74 40 5c d4    	vsubps zmm10,zmm17,zmm20
  a3f8e8:	62 a1 74 40 58 cc    	vaddps zmm17,zmm17,zmm20
  a3f8ee:	62 f1 64 40 5c d6    	vsubps zmm2,zmm19,zmm6
  a3f8f4:	62 e1 64 40 58 de    	vaddps zmm19,zmm19,zmm6
  a3f8fa:	62 b1 6c 40 5c f5    	vsubps zmm6,zmm18,zmm21
  a3f900:	62 a1 6c 40 58 d5    	vaddps zmm18,zmm18,zmm21
  a3f906:	62 e1 24 48 5c e3    	vsubps zmm20,zmm11,zmm3
  a3f90c:	62 f1 24 48 58 db    	vaddps zmm3,zmm11,zmm3
  a3f912:	62 71 24 40 5c df    	vsubps zmm11,zmm27,zmm7
  a3f918:	62 f1 24 40 58 ff    	vaddps zmm7,zmm27,zmm7
  a3f91e:	62 c1 2c 40 5c ef    	vsubps zmm21,zmm26,zmm15
  a3f924:	62 51 2c 40 58 ff    	vaddps zmm15,zmm26,zmm15
  a3f92a:	62 61 0c 48 5c d5    	vsubps zmm26,zmm14,zmm5
  a3f930:	62 f1 0c 48 58 ed    	vaddps zmm5,zmm14,zmm5
  a3f936:	62 71 7c 48 28 35 c0 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6521c0]        # 91b00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1efb0>
  a3f93d:	21 65 ff 
  a3f940:	62 f2 0d 48 7f fd    	vpermt2ps zmm7,zmm14,zmm5
  a3f946:	62 f3 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm7,0x2
  a3f94d:	02 02 
  a3f94f:	c5 fc 11 3c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm7
  a3f954:	62 d2 0d 48 7f df    	vpermt2ps zmm3,zmm14,zmm15
  a3f95a:	62 f3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm3,0x2
  a3f961:	05 02 
  a3f963:	c5 fc 11 5c 16 30    	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm3
  a3f969:	62 a2 0d 48 7f ca    	vpermt2ps zmm17,zmm14,zmm18
  a3f96f:	62 22 0d 48 7f c3    	vpermt2ps zmm24,zmm14,zmm19
  a3f975:	62 e3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm17,0x2
  a3f97c:	08 02 
  a3f97e:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm17
  a3f985:	03 
  a3f986:	62 63 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm24,0x2
  a3f98d:	0b 02 
  a3f98f:	62 61 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm24
  a3f996:	90 00 00 00 
  a3f99a:	62 b2 0d 48 7f c8    	vpermt2ps zmm1,zmm14,zmm16
  a3f9a0:	62 f3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm1,0x2
  a3f9a7:	0e 02 
  a3f9a9:	c5 fc 11 8c 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm1
  a3f9b0:	00 00 
  a3f9b2:	62 62 0d 48 7f c8    	vpermt2ps zmm25,zmm14,zmm0
  a3f9b8:	62 63 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x110],zmm25,0x2
  a3f9bf:	11 02 
  a3f9c1:	62 61 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm25
  a3f9c8:	f0 00 00 00 
  a3f9cc:	62 22 0d 48 7f ee    	vpermt2ps zmm29,zmm14,zmm22
  a3f9d2:	62 12 0d 48 7f cf    	vpermt2ps zmm9,zmm14,zmm31
  a3f9d8:	62 63 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x140],zmm29,0x2
  a3f9df:	14 02 
  a3f9e1:	62 61 7c 28 11 6c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm29
  a3f9e8:	09 
  a3f9e9:	62 73 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x170],zmm9,0x2
  a3f9f0:	17 02 
  a3f9f2:	c5 7c 11 8c 16 50 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x150],ymm9
  a3f9f9:	00 00 
  a3f9fb:	62 12 0d 48 7f da    	vpermt2ps zmm11,zmm14,zmm26
  a3fa01:	62 73 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1a0],zmm11,0x2
  a3fa08:	1a 02 
  a3fa0a:	c5 7c 11 9c 16 80 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x180],ymm11
  a3fa11:	00 00 
  a3fa13:	62 a2 0d 48 7f e5    	vpermt2ps zmm20,zmm14,zmm21
  a3fa19:	62 e3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1d0],zmm20,0x2
  a3fa20:	1d 02 
  a3fa22:	62 e1 7c 28 11 a4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x1b0],ymm20
  a3fa29:	b0 01 00 00 
  a3fa2d:	62 72 0d 48 7f d6    	vpermt2ps zmm10,zmm14,zmm6
  a3fa33:	62 72 0d 48 7f c2    	vpermt2ps zmm8,zmm14,zmm2
  a3fa39:	62 73 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x200],zmm10,0x2
  a3fa40:	20 02 
  a3fa42:	c5 7c 11 94 16 e0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1e0],ymm10
  a3fa49:	00 00 
  a3fa4b:	62 73 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x230],zmm8,0x2
  a3fa52:	23 02 
  a3fa54:	c5 7c 11 84 16 10 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x210],ymm8
  a3fa5b:	00 00 
  a3fa5d:	62 42 0d 48 7f e4    	vpermt2ps zmm28,zmm14,zmm12
  a3fa63:	62 63 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x260],zmm28,0x2
  a3fa6a:	26 02 
  a3fa6c:	62 61 7c 28 11 64 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x240],ymm28
  a3fa73:	12 
  a3fa74:	62 92 0d 48 7f e6    	vpermt2ps zmm4,zmm14,zmm30
  a3fa7a:	62 f3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x290],zmm4,0x2
  a3fa81:	29 02 
  a3fa83:	c5 fc 11 a4 16 70 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x270],ymm4
  a3fa8a:	00 00 
  a3fa8c:	62 72 0d 48 7f 6c 24 	vpermt2ps zmm13,zmm14,ZMMWORD PTR [rsp+0x80]
  a3fa93:	02 
  a3fa94:	62 e2 0d 48 7f 7c 24 	vpermt2ps zmm23,zmm14,ZMMWORD PTR [rsp+0xc0]
  a3fa9b:	03 
  a3fa9c:	62 73 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x2c0],zmm13,0x2
  a3faa3:	2c 02 
  a3faa5:	c5 7c 11 ac 16 a0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2a0],ymm13
  a3faac:	00 00 
  a3faae:	62 e3 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x2f0],zmm23,0x2
  a3fab5:	2f 02 
  a3fab7:	62 e1 7c 28 11 bc 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x2d0],ymm23
  a3fabe:	d0 02 00 00 
  a3fac2:	48 81 c2 00 03 00 00 	add    rdx,0x300
  a3fac9:	48 39 d0             	cmp    rax,rdx
  a3facc:	0f 85 0e ef ff ff    	jne    a3e9e0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x60>
  a3fad2:	48 89 ec             	mov    rsp,rbp
  a3fad5:	5d                   	pop    rbp
  a3fad6:	c5 f8 77             	vzeroupper
  a3fad9:	c3                   	ret
