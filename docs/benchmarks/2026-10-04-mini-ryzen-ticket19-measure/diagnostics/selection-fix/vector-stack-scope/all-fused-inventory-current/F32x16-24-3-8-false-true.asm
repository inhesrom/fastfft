
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a01980 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a01980:	55                   	push   rbp
  a01981:	48 89 e5             	mov    rbp,rsp
  a01984:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a01988:	48 81 ec 80 01 00 00 	sub    rsp,0x180
  a0198f:	62 f1 7c 48 28 05 e7 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6c55e7]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a01996:	55 6c ff 
  a01999:	62 f1 7c 48 28 0d 5d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6c555d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a019a0:	55 6c ff 
  a019a3:	62 f1 7c 48 28 15 93 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6c5593]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a019aa:	55 6c ff 
  a019ad:	48 c1 e2 06          	shl    rdx,0x6
  a019b1:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a019b5:	31 d2                	xor    edx,edx
  a019b7:	4c 8d 84 24 00 01 00 	lea    r8,[rsp+0x100]
  a019be:	00 
  a019bf:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a019c4:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a019c8:	62 f2 7d 48 7f db    	vpermt2ps zmm3,zmm0,zmm3
  a019ce:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a019d4:	62 f2 75 48 7f c3    	vpermt2ps zmm0,zmm1,zmm3
  a019da:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a019e1:	03 
  a019e2:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a019e9:	01 
  a019ea:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a019f0:	62 f2 6d 48 7f c3    	vpermt2ps zmm0,zmm2,zmm3
  a019f6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a019fd:	02 
  a019fe:	c5 7c 28 15 ba 68 67 	vmovaps ymm10,YMMWORD PTR [rip+0xffffffffff6768ba]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a01a05:	ff 
  a01a06:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a01a0d:	00 00 00 
  a01a10:	c6 84 24 00 01 00 00 	mov    BYTE PTR [rsp+0x100],0x0
  a01a17:	00 
  a01a18:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a01a1d:	62 f1 7c 48 10 2c 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1]
  a01a24:	62 f1 7c 48 10 7c 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x40]
  a01a2b:	01 
  a01a2c:	62 71 7c 48 10 44 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x80]
  a01a33:	02 
  a01a34:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a01a3a:	62 f1 7c 48 28 0d 7c 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff68c47c]        # 8dec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b370>
  a01a41:	c4 68 ff 
  a01a44:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a01a48:	62 f2 75 48 7f ec    	vpermt2ps zmm5,zmm1,zmm4
  a01a4e:	62 f1 7c 48 28 05 28 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68c428]        # 8de80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b330>
  a01a55:	c4 68 ff 
  a01a58:	62 72 7d 48 7f cc    	vpermt2ps zmm9,zmm0,zmm4
  a01a5e:	62 71 7c 48 28 ff    	vmovaps zmm15,zmm7
  a01a64:	62 f2 75 48 7f fc    	vpermt2ps zmm7,zmm1,zmm4
  a01a6a:	62 c1 7c 48 28 c0    	vmovaps zmm16,zmm8
  a01a70:	62 72 7d 48 7f fc    	vpermt2ps zmm15,zmm0,zmm4
  a01a76:	62 e2 7d 48 7f c4    	vpermt2ps zmm16,zmm0,zmm4
  a01a7c:	62 72 75 48 7f c4    	vpermt2ps zmm8,zmm1,zmm4
  a01a82:	62 a1 04 48 58 c8    	vaddps zmm17,zmm15,zmm16
  a01a88:	62 a1 34 48 58 f1    	vaddps zmm22,zmm9,zmm17
  a01a8e:	62 c1 44 48 58 d0    	vaddps zmm18,zmm7,zmm8
  a01a94:	62 a1 54 48 58 e2    	vaddps zmm20,zmm5,zmm18
  a01a9a:	62 d1 44 48 5c f8    	vsubps zmm7,zmm7,zmm8
  a01aa0:	62 f2 7d 48 18 05 b6 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6739b6]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a01aa7:	39 67 ff 
  a01aaa:	62 32 7d 48 bc c9    	vfnmadd231ps zmm9,zmm0,zmm17
  a01ab0:	62 f2 7d 48 18 0d 1a 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff67381a]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a01ab7:	38 67 ff 
  a01aba:	62 f1 44 48 59 f9    	vmulps zmm7,zmm7,zmm1
  a01ac0:	62 b2 7d 48 bc ea    	vfnmadd231ps zmm5,zmm0,zmm18
  a01ac6:	62 31 04 48 5c c0    	vsubps zmm8,zmm15,zmm16
  a01acc:	62 71 34 48 58 ff    	vaddps zmm15,zmm9,zmm7
  a01ad2:	62 71 3c 48 59 c1    	vmulps zmm8,zmm8,zmm1
  a01ad8:	62 c1 54 48 5c e8    	vsubps zmm21,zmm5,zmm8
  a01ade:	62 f1 34 48 5c ff    	vsubps zmm7,zmm9,zmm7
  a01ae4:	62 61 3c 48 58 c5    	vaddps zmm24,zmm8,zmm5
  a01aea:	62 f1 7c 48 28 05 8c 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6c548c]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a01af1:	54 6c ff 
  a01af4:	62 e2 7d 48 7f f4    	vpermt2ps zmm22,zmm0,zmm4
  a01afa:	62 72 7d 48 7f fc    	vpermt2ps zmm15,zmm0,zmm4
  a01b00:	62 b1 7c 48 28 ee    	vmovaps zmm5,zmm22
  a01b06:	62 f2 7d 48 7f fc    	vpermt2ps zmm7,zmm0,zmm4
  a01b0c:	62 f1 7c 48 28 0d ea 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6c53ea]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a01b13:	53 6c ff 
  a01b16:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x40]
  a01b1d:	01 
  a01b1e:	62 f2 75 48 7f ee    	vpermt2ps zmm5,zmm1,zmm6
  a01b24:	62 f1 7c 48 28 15 12 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6c5412]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a01b2b:	54 6c ff 
  a01b2e:	62 e2 6d 48 7f f6    	vpermt2ps zmm22,zmm2,zmm6
  a01b34:	62 51 7c 48 28 c7    	vmovaps zmm8,zmm15
  a01b3a:	62 72 75 48 7f c6    	vpermt2ps zmm8,zmm1,zmm6
  a01b40:	62 72 6d 48 7f fe    	vpermt2ps zmm15,zmm2,zmm6
  a01b46:	62 71 7c 48 28 cf    	vmovaps zmm9,zmm7
  a01b4c:	62 f2 6d 48 7f fe    	vpermt2ps zmm7,zmm2,zmm6
  a01b52:	62 72 75 48 7f ce    	vpermt2ps zmm9,zmm1,zmm6
  a01b58:	62 c1 d5 48 14 d9    	vunpcklpd zmm19,zmm5,zmm9
  a01b5e:	62 c1 d5 48 15 c1    	vunpckhpd zmm16,zmm5,zmm9
  a01b64:	62 e1 cd 40 14 d7    	vunpcklpd zmm18,zmm22,zmm7
  a01b6a:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0xc0]
  a01b71:	03 
  a01b72:	62 f1 bd 48 14 eb    	vunpcklpd zmm5,zmm8,zmm3
  a01b78:	62 e1 cd 40 15 cf    	vunpckhpd zmm17,zmm22,zmm7
  a01b7e:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x80]
  a01b85:	02 
  a01b86:	62 51 85 48 14 cc    	vunpcklpd zmm9,zmm15,zmm12
  a01b8c:	62 41 85 48 15 ec    	vunpckhpd zmm29,zmm15,zmm12
  a01b92:	62 f1 bd 48 15 fb    	vunpckhpd zmm7,zmm8,zmm3
  a01b98:	62 21 7c 48 28 d2    	vmovaps zmm26,zmm18
  a01b9e:	62 71 7c 48 28 1d 98 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6c5298]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a01ba5:	52 6c ff 
  a01ba8:	62 c2 25 48 7f d1    	vpermt2ps zmm18,zmm11,zmm9
  a01bae:	62 a1 7c 48 28 f1    	vmovaps zmm22,zmm17
  a01bb4:	62 82 25 48 7f cd    	vpermt2ps zmm17,zmm11,zmm29
  a01bba:	62 e2 7d 48 7f e4    	vpermt2ps zmm20,zmm0,zmm4
  a01bc0:	62 e2 7d 48 7f ec    	vpermt2ps zmm21,zmm0,zmm4
  a01bc6:	62 62 7d 48 7f c4    	vpermt2ps zmm24,zmm0,zmm4
  a01bcc:	62 31 7c 48 28 fb    	vmovaps zmm15,zmm19
  a01bd2:	62 31 7c 48 28 c4    	vmovaps zmm8,zmm20
  a01bd8:	62 72 75 48 7f c6    	vpermt2ps zmm8,zmm1,zmm6
  a01bde:	62 e2 6d 48 7f e6    	vpermt2ps zmm20,zmm2,zmm6
  a01be4:	62 e2 25 48 7f dd    	vpermt2ps zmm19,zmm11,zmm5
  a01bea:	62 21 7c 48 28 dd    	vmovaps zmm27,zmm21
  a01bf0:	62 62 75 48 7f de    	vpermt2ps zmm27,zmm1,zmm6
  a01bf6:	62 e2 6d 48 7f ee    	vpermt2ps zmm21,zmm2,zmm6
  a01bfc:	62 21 7c 48 28 c8    	vmovaps zmm25,zmm16
  a01c02:	62 81 7c 48 28 f8    	vmovaps zmm23,zmm24
  a01c08:	62 e2 75 48 7f fe    	vpermt2ps zmm23,zmm1,zmm6
  a01c0e:	62 62 6d 48 7f c6    	vpermt2ps zmm24,zmm2,zmm6
  a01c14:	62 e2 25 48 7f c7    	vpermt2ps zmm16,zmm11,zmm7
  a01c1a:	62 21 bd 48 14 e7    	vunpcklpd zmm28,zmm8,zmm23
  a01c20:	62 a1 bd 48 15 ff    	vunpckhpd zmm23,zmm8,zmm23
  a01c26:	62 71 a5 40 14 c3    	vunpcklpd zmm8,zmm27,zmm3
  a01c2c:	62 f1 7c 48 28 25 ca 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6c51ca]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a01c33:	51 6c ff 
  a01c36:	62 42 5d 48 7f d1    	vpermt2ps zmm26,zmm4,zmm9
  a01c3c:	62 61 a5 40 15 f3    	vunpckhpd zmm30,zmm27,zmm3
  a01c42:	62 11 dd 40 14 e8    	vunpcklpd zmm13,zmm20,zmm24
  a01c48:	62 91 dd 40 15 c0    	vunpckhpd zmm0,zmm20,zmm24
  a01c4e:	62 82 5d 48 7f f5    	vpermt2ps zmm22,zmm4,zmm29
  a01c54:	62 51 d5 40 14 cc    	vunpcklpd zmm9,zmm21,zmm12
  a01c5a:	62 c1 d5 40 15 e4    	vunpckhpd zmm20,zmm21,zmm12
  a01c60:	62 81 7c 48 28 ec    	vmovaps zmm21,zmm28
  a01c66:	62 42 25 48 7f e0    	vpermt2ps zmm28,zmm11,zmm8
  a01c6c:	62 21 7c 48 28 ef    	vmovaps zmm29,zmm23
  a01c72:	62 41 7c 48 28 dd    	vmovaps zmm27,zmm13
  a01c78:	62 52 25 48 7f e9    	vpermt2ps zmm13,zmm11,zmm9
  a01c7e:	62 42 5d 48 7f d9    	vpermt2ps zmm27,zmm4,zmm9
  a01c84:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a01c8a:	62 22 5d 48 7f c4    	vpermt2ps zmm24,zmm4,zmm20
  a01c90:	62 b2 25 48 7f c4    	vpermt2ps zmm0,zmm11,zmm20
  a01c96:	62 72 5d 48 7f fd    	vpermt2ps zmm15,zmm4,zmm5
  a01c9c:	62 f1 7c 48 10 49 02 	vmovups zmm1,ZMMWORD PTR [rcx+0x80]
  a01ca3:	62 f1 7c 48 10 51 03 	vmovups zmm2,ZMMWORD PTR [rcx+0xc0]
  a01caa:	62 71 7c 48 10 49 04 	vmovups zmm9,ZMMWORD PTR [rcx+0x100]
  a01cb1:	62 62 5d 48 7f cf    	vpermt2ps zmm25,zmm4,zmm7
  a01cb7:	62 f1 7c 48 10 69 05 	vmovups zmm5,ZMMWORD PTR [rcx+0x140]
  a01cbe:	62 61 7c 48 10 79 06 	vmovups zmm31,ZMMWORD PTR [rcx+0x180]
  a01cc5:	62 f1 7c 48 10 79 08 	vmovups zmm7,ZMMWORD PTR [rcx+0x200]
  a01ccc:	62 c2 5d 48 7f e8    	vpermt2ps zmm21,zmm4,zmm8
  a01cd2:	62 71 7c 48 10 41 09 	vmovups zmm8,ZMMWORD PTR [rcx+0x240]
  a01cd9:	62 e1 2c 40 59 e7    	vmulps zmm20,zmm26,zmm7
  a01cdf:	62 f1 24 40 59 df    	vmulps zmm3,zmm27,zmm7
  a01ce5:	62 c2 25 40 bc e0    	vfnmadd231ps zmm20,zmm27,zmm8
  a01ceb:	62 61 7c 48 10 59 0c 	vmovups zmm27,ZMMWORD PTR [rcx+0x300]
  a01cf2:	62 92 3d 48 b8 da    	vfmadd231ps zmm3,zmm8,zmm26
  a01cf8:	62 71 7c 48 10 41 0d 	vmovups zmm8,ZMMWORD PTR [rcx+0x340]
  a01cff:	62 91 4c 40 59 fb    	vmulps zmm7,zmm22,zmm27
  a01d05:	62 d2 3d 40 bc f8    	vfnmadd231ps zmm7,zmm24,zmm8
  a01d0b:	62 01 3c 40 59 d3    	vmulps zmm26,zmm24,zmm27
  a01d11:	62 61 7c 48 10 41 07 	vmovups zmm24,ZMMWORD PTR [rcx+0x1c0]
  a01d18:	62 82 25 48 7f fe    	vpermt2ps zmm23,zmm11,zmm30
  a01d1e:	62 22 3d 48 b8 d6    	vfmadd231ps zmm26,zmm8,zmm22
  a01d24:	62 71 7c 48 10 41 0a 	vmovups zmm8,ZMMWORD PTR [rcx+0x280]
  a01d2b:	62 61 7c 48 10 59 0e 	vmovups zmm27,ZMMWORD PTR [rcx+0x380]
  a01d32:	62 02 5d 48 7f ee    	vpermt2ps zmm29,zmm4,zmm30
  a01d38:	62 61 64 40 59 f1    	vmulps zmm30,zmm19,zmm1
  a01d3e:	62 62 1d 40 bc f2    	vfnmadd231ps zmm30,zmm28,zmm2
  a01d44:	62 f1 1c 40 59 c9    	vmulps zmm1,zmm28,zmm1
  a01d4a:	62 f1 7c 48 10 61 0b 	vmovups zmm4,ZMMWORD PTR [rcx+0x2c0]
  a01d51:	62 b2 6d 48 b8 cb    	vfmadd231ps zmm1,zmm2,zmm19
  a01d57:	62 f1 7c 48 10 51 0f 	vmovups zmm2,ZMMWORD PTR [rcx+0x3c0]
  a01d5e:	62 51 34 40 59 f1    	vmulps zmm14,zmm25,zmm9
  a01d64:	62 72 15 40 bc f5    	vfnmadd231ps zmm14,zmm29,zmm5
  a01d6a:	62 41 14 40 59 e1    	vmulps zmm28,zmm29,zmm9
  a01d70:	62 51 6c 40 59 c8    	vmulps zmm9,zmm18,zmm8
  a01d76:	62 72 15 48 bc cc    	vfnmadd231ps zmm9,zmm13,zmm4
  a01d7c:	62 02 55 48 b8 e1    	vfmadd231ps zmm28,zmm5,zmm25
  a01d82:	62 91 7c 40 59 ef    	vmulps zmm5,zmm16,zmm31
  a01d88:	62 92 45 40 bc e8    	vfnmadd231ps zmm5,zmm23,zmm24
  a01d8e:	62 51 14 48 59 c0    	vmulps zmm8,zmm13,zmm8
  a01d94:	62 c1 0c 40 58 f1    	vaddps zmm22,zmm30,zmm9
  a01d9a:	62 11 74 40 59 eb    	vmulps zmm13,zmm17,zmm27
  a01da0:	62 72 7d 48 bc ea    	vfnmadd231ps zmm13,zmm0,zmm2
  a01da6:	62 32 5d 48 b8 c2    	vfmadd231ps zmm8,zmm4,zmm18
  a01dac:	62 41 54 48 58 cd    	vaddps zmm25,zmm5,zmm13
  a01db2:	62 91 44 40 59 e7    	vmulps zmm4,zmm23,zmm31
  a01db8:	62 b2 3d 40 b8 e0    	vfmadd231ps zmm4,zmm24,zmm16
  a01dbe:	62 91 7c 48 59 c3    	vmulps zmm0,zmm0,zmm27
  a01dc4:	62 21 64 48 58 c5    	vaddps zmm24,zmm3,zmm21
  a01dca:	62 b2 6d 48 b8 c1    	vfmadd231ps zmm0,zmm2,zmm17
  a01dd0:	62 d1 0c 40 5c d1    	vsubps zmm2,zmm30,zmm9
  a01dd6:	62 51 74 48 5c d8    	vsubps zmm11,zmm1,zmm8
  a01ddc:	62 01 1c 40 58 ea    	vaddps zmm29,zmm28,zmm26
  a01de2:	62 51 6c 48 58 cb    	vaddps zmm9,zmm2,zmm11
  a01de8:	62 71 5c 48 5c e0    	vsubps zmm12,zmm4,zmm0
  a01dee:	62 d1 54 48 5c ed    	vsubps zmm5,zmm5,zmm13
  a01df4:	62 71 1c 48 5c ed    	vsubps zmm13,zmm12,zmm5
  a01dfa:	62 e1 54 40 5c d3    	vsubps zmm18,zmm21,zmm3
  a01e00:	62 c1 44 48 5c de    	vsubps zmm19,zmm7,zmm14
  a01e06:	62 61 5c 28 58 f8    	vaddps ymm31,ymm4,ymm0
  a01e0c:	62 f2 7d 48 18 35 86 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff673586]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a01e13:	35 67 ff 
  a01e16:	62 e1 34 48 59 fe    	vmulps zmm23,zmm9,zmm6
  a01e1c:	c5 3c 58 c9          	vaddps ymm9,ymm8,ymm1
  a01e20:	62 81 34 28 58 c7    	vaddps ymm16,ymm9,ymm31
  a01e26:	62 81 14 20 58 c8    	vaddps ymm17,ymm29,ymm24
  a01e2c:	62 61 14 48 59 f6    	vmulps zmm30,zmm13,zmm6
  a01e32:	62 81 4c 00 58 e9    	vaddps xmm21,xmm22,xmm25
  a01e38:	c5 88 58 c7          	vaddps xmm0,xmm14,xmm7
  a01e3c:	62 b1 04 08 58 cc    	vaddps xmm1,xmm15,xmm20
  a01e42:	62 b1 74 20 58 d8    	vaddps ymm3,ymm17,ymm16
  a01e48:	62 61 74 08 58 d8    	vaddps xmm27,xmm1,xmm0
  a01e4e:	c5 9c 58 e5          	vaddps ymm4,ymm12,ymm5
  a01e52:	62 b1 24 00 58 ed    	vaddps xmm5,xmm27,xmm21
  a01e58:	62 f2 2d 28 7f eb    	vpermt2ps ymm5,ymm10,ymm3
  a01e5e:	c4 e3 7d 19 eb 01    	vextractf128 xmm3,ymm5,0x1
  a01e64:	c5 dc 59 e6          	vmulps ymm4,ymm4,ymm6
  a01e68:	c5 a4 5c d2          	vsubps ymm2,ymm11,ymm2
  a01e6c:	c5 f8 11 2c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm5
  a01e71:	c5 ec 59 d6          	vmulps ymm2,ymm2,ymm6
  a01e75:	c5 ec 5c fc          	vsubps ymm7,ymm2,ymm4
  a01e79:	62 b1 64 20 58 ea    	vaddps ymm5,ymm19,ymm18
  a01e7f:	c5 f8 13 5c 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm3
  a01e85:	62 11 44 00 58 c6    	vaddps xmm8,xmm23,xmm30
  a01e8b:	62 91 1c 00 5c da    	vsubps xmm3,xmm28,xmm26
  a01e91:	62 31 04 08 5c dc    	vsubps xmm11,xmm15,xmm20
  a01e97:	c5 54 58 e7          	vaddps ymm12,ymm5,ymm7
  a01e9b:	c5 20 58 eb          	vaddps xmm13,xmm11,xmm3
  a01e9f:	62 31 34 20 5c f6    	vsubps ymm14,ymm25,ymm22
  a01ea5:	c4 41 10 58 f8       	vaddps xmm15,xmm13,xmm8
  a01eaa:	62 52 2d 28 7f fc    	vpermt2ps ymm15,ymm10,ymm12
  a01eb0:	62 11 3c 20 5c e5    	vsubps ymm12,ymm24,ymm29
  a01eb6:	c5 78 11 7c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm15
  a01ebc:	c4 43 7d 19 ff 01    	vextractf128 xmm15,ymm15,0x1
  a01ec2:	c5 78 13 7c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm15
  a01ec8:	62 11 34 08 5c cf    	vsubps xmm9,xmm9,xmm31
  a01ece:	c4 41 1c 58 fe       	vaddps ymm15,ymm12,ymm14
  a01ed3:	c5 f0 5c c0          	vsubps xmm0,xmm1,xmm0
  a01ed7:	c5 b0 58 c8          	vaddps xmm1,xmm9,xmm0
  a01edb:	62 d2 2d 28 7f cf    	vpermt2ps ymm1,ymm10,ymm15
  a01ee1:	c4 c3 7d 19 cf 01    	vextractf128 xmm15,ymm1,0x1
  a01ee7:	c5 78 13 7c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm15
  a01eed:	c5 f8 11 4c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm1
  a01ef3:	62 b1 0c 20 5c cf    	vsubps ymm1,ymm30,ymm23
  a01ef9:	62 31 6c 20 5c fb    	vsubps ymm15,ymm18,ymm19
  a01eff:	c5 e8 58 d4          	vaddps xmm2,xmm2,xmm4
  a01f03:	c5 84 58 e1          	vaddps ymm4,ymm15,ymm1
  a01f07:	c5 a0 5c db          	vsubps xmm3,xmm11,xmm3
  a01f0b:	c5 60 58 da          	vaddps xmm11,xmm3,xmm2
  a01f0f:	62 72 2d 28 7f dc    	vpermt2ps ymm11,ymm10,ymm4
  a01f15:	c4 63 7d 19 dc 01    	vextractf128 xmm4,ymm11,0x1
  a01f1b:	c5 f8 13 64 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm4
  a01f21:	62 b1 74 20 5c e0    	vsubps ymm4,ymm17,ymm16
  a01f27:	62 a1 24 00 5c c5    	vsubps xmm16,xmm27,xmm21
  a01f2d:	c5 78 11 5c 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm11
  a01f33:	62 e2 2d 28 7f c4    	vpermt2ps ymm16,ymm10,ymm4
  a01f39:	62 e3 7d 28 19 c4 01 	vextractf32x4 xmm4,ymm16,0x1
  a01f40:	c5 f8 13 64 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm4
  a01f46:	62 e1 7c 08 11 44 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm16
  a01f4d:	06 
  a01f4e:	c5 d4 5c e7          	vsubps ymm4,ymm5,ymm7
  a01f52:	c4 c1 10 5c e8       	vsubps xmm5,xmm13,xmm8
  a01f57:	62 f2 2d 28 7f ec    	vpermt2ps ymm5,ymm10,ymm4
  a01f5d:	c4 e3 7d 19 ec 01    	vextractf128 xmm4,ymm5,0x1
  a01f63:	c5 f8 13 a4 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm4
  a01f6a:	00 00 
  a01f6c:	c4 c1 1c 5c e6       	vsubps ymm4,ymm12,ymm14
  a01f71:	c4 c1 78 5c c1       	vsubps xmm0,xmm0,xmm9
  a01f76:	c5 f8 11 6c 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm5
  a01f7c:	62 f2 2d 28 7f c4    	vpermt2ps ymm0,ymm10,ymm4
  a01f82:	c4 e3 7d 19 c4 01    	vextractf128 xmm4,ymm0,0x1
  a01f88:	c5 f8 13 a4 16 a0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xa0],xmm4
  a01f8f:	00 00 
  a01f91:	c5 f8 11 84 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm0
  a01f98:	00 00 
  a01f9a:	c5 84 5c c1          	vsubps ymm0,ymm15,ymm1
  a01f9e:	c5 e0 5c ca          	vsubps xmm1,xmm3,xmm2
  a01fa2:	62 f2 2d 28 7f c8    	vpermt2ps ymm1,ymm10,ymm0
  a01fa8:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  a01fae:	c5 f8 13 84 16 b8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xb8],xmm0
  a01fb5:	00 00 
  a01fb7:	c5 f8 11 8c 16 a8 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa8],xmm1
  a01fbe:	00 00 
  a01fc0:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  a01fc7:	48 39 d0             	cmp    rax,rdx
  a01fca:	0f 85 40 fa ff ff    	jne    a01a10 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x90>
  a01fd0:	48 89 ec             	mov    rsp,rbp
  a01fd3:	5d                   	pop    rbp
  a01fd4:	c5 f8 77             	vzeroupper
  a01fd7:	c3                   	ret
