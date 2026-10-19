
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a50a40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a50a40:	55                   	push   rbp
  a50a41:	48 89 e5             	mov    rbp,rsp
  a50a44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a50a48:	48 81 ec 00 03 00 00 	sub    rsp,0x300
  a50a4f:	48 c1 e2 08          	shl    rdx,0x8
  a50a53:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a50a57:	31 d2                	xor    edx,edx
  a50a59:	4c 8d 84 24 80 02 00 	lea    r8,[rsp+0x280]
  a50a60:	00 
  a50a61:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a50a66:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a50a6d:	00 00 00 
  a50a70:	c6 84 24 80 02 00 00 	mov    BYTE PTR [rsp+0x280],0x0
  a50a77:	00 
  a50a78:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a50a7d:	62 f1 7c 48 10 1c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1]
  a50a84:	c5 fc 10 7c 17 40    	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x40]
  a50a8a:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a50a90:	62 f1 7c 48 10 8c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x60]
  a50a97:	60 00 00 00 
  a50a9b:	c5 7c 10 84 17 a0 00 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0xa0]
  a50aa2:	00 00 
  a50aa4:	62 71 7c 48 28 15 92 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff641f92]        # 92a40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fef0>
  a50aab:	1f 64 ff 
  a50aae:	62 f2 2d 48 7f df    	vpermt2ps zmm3,zmm10,zmm7
  a50ab4:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a50aba:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a50ac1:	03 
  a50ac2:	c5 7c 10 8c 17 00 01 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x100]
  a50ac9:	00 00 
  a50acb:	62 d2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm8
  a50ad1:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  a50ad7:	62 d2 2d 48 7f e1    	vpermt2ps zmm4,zmm10,zmm9
  a50add:	62 f1 7c 48 10 b4 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x120]
  a50ae4:	20 01 00 00 
  a50ae8:	62 f1 7c 48 28 15 0e 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff641f0e]        # 92a00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1feb0>
  a50aef:	1f 64 ff 
  a50af2:	62 f2 6d 48 7f c7    	vpermt2ps zmm0,zmm2,zmm7
  a50af8:	c5 fc 10 bc 17 60 01 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x160]
  a50aff:	00 00 
  a50b01:	62 71 7c 48 28 e6    	vmovaps zmm12,zmm6
  a50b07:	62 f2 2d 48 7f f7    	vpermt2ps zmm6,zmm10,zmm7
  a50b0d:	62 d2 6d 48 7f e8    	vpermt2ps zmm5,zmm2,zmm8
  a50b13:	62 71 7c 48 10 44 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x180]
  a50b1a:	06 
  a50b1b:	c5 7c 10 ac 17 c0 01 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x1c0]
  a50b22:	00 00 
  a50b24:	62 51 7c 48 28 f0    	vmovaps zmm14,zmm8
  a50b2a:	62 52 6d 48 7f d9    	vpermt2ps zmm11,zmm2,zmm9
  a50b30:	62 52 2d 48 7f c5    	vpermt2ps zmm8,zmm10,zmm13
  a50b36:	62 71 7c 48 10 8c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a50b3d:	e0 01 00 00 
  a50b41:	c5 7c 10 bc 17 20 02 	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0x220]
  a50b48:	00 00 
  a50b4a:	62 72 6d 48 7f e7    	vpermt2ps zmm12,zmm2,zmm7
  a50b50:	62 d1 7c 48 28 f9    	vmovaps zmm7,zmm9
  a50b56:	62 52 2d 48 7f cf    	vpermt2ps zmm9,zmm10,zmm15
  a50b5c:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x240]
  a50b63:	09 
  a50b64:	62 52 6d 48 7f f5    	vpermt2ps zmm14,zmm2,zmm13
  a50b6a:	c5 7c 10 ac 17 80 02 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x280]
  a50b71:	00 00 
  a50b73:	62 a1 7c 48 28 c8    	vmovaps zmm17,zmm16
  a50b79:	62 c2 2d 48 7f c5    	vpermt2ps zmm16,zmm10,zmm13
  a50b7f:	62 d2 6d 48 7f ff    	vpermt2ps zmm7,zmm2,zmm15
  a50b85:	62 71 7c 48 10 bc 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x2a0]
  a50b8c:	a0 02 00 00 
  a50b90:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x2e0]
  a50b97:	17 
  a50b98:	62 c1 7c 48 28 df    	vmovaps zmm19,zmm15
  a50b9e:	62 c2 6d 48 7f cd    	vpermt2ps zmm17,zmm2,zmm13
  a50ba4:	62 a2 6d 48 7f da    	vpermt2ps zmm19,zmm2,zmm18
  a50baa:	62 32 2d 48 7f fa    	vpermt2ps zmm15,zmm10,zmm18
  a50bb0:	62 51 64 48 58 e8    	vaddps zmm13,zmm3,zmm8
  a50bb6:	62 a1 5c 48 58 d0    	vaddps zmm18,zmm4,zmm16
  a50bbc:	62 a1 14 48 58 ea    	vaddps zmm21,zmm13,zmm18
  a50bc2:	62 c1 74 48 58 f1    	vaddps zmm22,zmm1,zmm9
  a50bc8:	62 c1 4c 48 58 ff    	vaddps zmm23,zmm6,zmm15
  a50bce:	62 21 4c 40 58 cf    	vaddps zmm25,zmm22,zmm23
  a50bd4:	62 41 7c 48 58 c6    	vaddps zmm24,zmm0,zmm14
  a50bda:	62 21 24 48 58 d1    	vaddps zmm26,zmm11,zmm17
  a50be0:	62 61 54 48 58 df    	vaddps zmm27,zmm5,zmm7
  a50be6:	62 01 3c 40 58 e2    	vaddps zmm28,zmm24,zmm26
  a50bec:	62 21 1c 48 58 eb    	vaddps zmm29,zmm12,zmm19
  a50bf2:	62 01 24 40 58 f5    	vaddps zmm30,zmm27,zmm29
  a50bf8:	62 51 64 48 5c c0    	vsubps zmm8,zmm3,zmm8
  a50bfe:	62 11 54 40 58 d1    	vaddps zmm10,zmm21,zmm25
  a50c04:	62 31 24 48 5c d9    	vsubps zmm11,zmm11,zmm17
  a50c0a:	62 c1 3c 48 58 cb    	vaddps zmm17,zmm8,zmm11
  a50c10:	62 d1 74 48 5c c9    	vsubps zmm1,zmm1,zmm9
  a50c16:	62 81 1c 40 58 e6    	vaddps zmm20,zmm28,zmm30
  a50c1c:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a50c22:	62 f1 74 48 58 fd    	vaddps zmm7,zmm1,zmm5
  a50c28:	62 31 1c 48 5c cb    	vsubps zmm9,zmm12,zmm19
  a50c2e:	62 f2 7d 48 18 15 64 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff624764]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a50c35:	47 62 ff 
  a50c38:	62 e1 44 48 59 da    	vmulps zmm19,zmm7,zmm2
  a50c3e:	62 d1 4c 48 5c f7    	vsubps zmm6,zmm6,zmm15
  a50c44:	62 f1 34 48 5c fe    	vsubps zmm7,zmm9,zmm6
  a50c4a:	62 d1 7c 48 5c c6    	vsubps zmm0,zmm0,zmm14
  a50c50:	62 71 44 48 59 f2    	vmulps zmm14,zmm7,zmm2
  a50c56:	62 f1 7c 40 5c e4    	vsubps zmm4,zmm16,zmm4
  a50c5c:	62 71 5c 48 58 f8    	vaddps zmm15,zmm4,zmm0
  a50c62:	62 f1 54 48 5c c9    	vsubps zmm1,zmm5,zmm1
  a50c68:	62 c1 64 40 58 c6    	vaddps zmm16,zmm19,zmm14
  a50c6e:	62 f1 74 48 59 ca    	vmulps zmm1,zmm1,zmm2
  a50c74:	62 d1 4c 48 58 e9    	vaddps zmm5,zmm6,zmm9
  a50c7a:	62 f1 54 48 59 f2    	vmulps zmm6,zmm5,zmm2
  a50c80:	62 71 74 48 5c ce    	vsubps zmm9,zmm1,zmm6
  a50c86:	62 31 14 48 5c ea    	vsubps zmm13,zmm13,zmm18
  a50c8c:	62 81 24 40 5c d5    	vsubps zmm18,zmm27,zmm29
  a50c92:	62 b1 14 48 58 fa    	vaddps zmm7,zmm13,zmm18
  a50c98:	62 b1 74 40 58 e8    	vaddps zmm5,zmm17,zmm16
  a50c9e:	62 01 3c 40 5c da    	vsubps zmm27,zmm24,zmm26
  a50ca4:	62 a1 44 40 5c f6    	vsubps zmm22,zmm23,zmm22
  a50caa:	62 01 4c 40 58 c3    	vaddps zmm24,zmm22,zmm27
  a50cb0:	62 41 04 48 58 f9    	vaddps zmm31,zmm15,zmm9
  a50cb6:	62 41 3c 48 5c eb    	vsubps zmm29,zmm8,zmm11
  a50cbc:	62 f1 74 48 58 ce    	vaddps zmm1,zmm1,zmm6
  a50cc2:	62 f1 7c 48 5c e4    	vsubps zmm4,zmm0,zmm4
  a50cc8:	62 71 14 40 58 e1    	vaddps zmm12,zmm29,zmm1
  a50cce:	62 b1 0c 48 5c f3    	vsubps zmm6,zmm14,zmm19
  a50cd4:	62 91 54 40 5c c1    	vsubps zmm0,zmm21,zmm25
  a50cda:	62 01 1c 40 5c ce    	vsubps zmm25,zmm28,zmm30
  a50ce0:	62 61 5c 48 58 d6    	vaddps zmm26,zmm4,zmm6
  a50ce6:	62 31 74 40 5c d8    	vsubps zmm11,zmm17,zmm16
  a50cec:	62 31 14 48 5c c2    	vsubps zmm8,zmm13,zmm18
  a50cf2:	62 21 24 40 5c e6    	vsubps zmm28,zmm27,zmm22
  a50cf8:	62 41 04 48 5c f1    	vsubps zmm30,zmm15,zmm9
  a50cfe:	62 71 14 40 5c e9    	vsubps zmm13,zmm29,zmm1
  a50d04:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  a50d0a:	62 e1 7c 48 28 2d 6c 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff67626c]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a50d11:	62 67 ff 
  a50d14:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a50d18:	62 f2 55 40 7f cb    	vpermt2ps zmm1,zmm21,zmm3
  a50d1e:	62 61 5c 48 5c ee    	vsubps zmm29,zmm4,zmm6
  a50d24:	62 e1 7c 48 28 05 92 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff676292]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a50d2b:	62 67 ff 
  a50d2e:	62 72 7d 40 7f d3    	vpermt2ps zmm10,zmm16,zmm3
  a50d34:	62 f1 7c 48 28 e5    	vmovaps zmm4,zmm5
  a50d3a:	62 71 7c 48 28 f7    	vmovaps zmm14,zmm7
  a50d40:	62 f2 7d 40 7f eb    	vpermt2ps zmm5,zmm16,zmm3
  a50d46:	62 72 55 40 7f f3    	vpermt2ps zmm14,zmm21,zmm3
  a50d4c:	62 f2 7d 40 7f fb    	vpermt2ps zmm7,zmm16,zmm3
  a50d52:	62 51 7c 48 28 cc    	vmovaps zmm9,zmm12
  a50d58:	62 72 7d 40 7f e3    	vpermt2ps zmm12,zmm16,zmm3
  a50d5e:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a50d64:	62 f2 55 40 7f f3    	vpermt2ps zmm6,zmm21,zmm3
  a50d6a:	62 f2 7d 40 7f c3    	vpermt2ps zmm0,zmm16,zmm3
  a50d70:	62 f2 55 40 7f e3    	vpermt2ps zmm4,zmm21,zmm3
  a50d76:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a50d7c:	62 72 7d 40 7f db    	vpermt2ps zmm11,zmm16,zmm3
  a50d82:	62 51 7c 48 28 f8    	vmovaps zmm15,zmm8
  a50d88:	62 72 55 40 7f cb    	vpermt2ps zmm9,zmm21,zmm3
  a50d8e:	62 72 55 40 7f fb    	vpermt2ps zmm15,zmm21,zmm3
  a50d94:	62 72 7d 40 7f c3    	vpermt2ps zmm8,zmm16,zmm3
  a50d9a:	62 c1 7c 48 28 f5    	vmovaps zmm22,zmm13
  a50da0:	62 e2 55 40 7f d3    	vpermt2ps zmm18,zmm21,zmm3
  a50da6:	62 72 7d 40 7f eb    	vpermt2ps zmm13,zmm16,zmm3
  a50dac:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a50db2:	62 f1 7c 48 28 15 44 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff676144]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a50db9:	61 67 ff 
  a50dbc:	62 e2 6d 48 7f ce    	vpermt2ps zmm17,zmm2,zmm6
  a50dc2:	62 e2 55 40 7f f3    	vpermt2ps zmm22,zmm21,zmm3
  a50dc8:	62 61 7c 48 28 1d 6e 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff67616e]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a50dcf:	61 67 ff 
  a50dd2:	62 f2 25 40 7f ce    	vpermt2ps zmm1,zmm27,zmm6
  a50dd8:	62 c1 7c 48 28 de    	vmovaps zmm19,zmm14
  a50dde:	62 c2 6d 48 7f df    	vpermt2ps zmm19,zmm2,zmm15
  a50de4:	62 e1 7c 48 28 fc    	vmovaps zmm23,zmm4
  a50dea:	62 52 25 40 7f f7    	vpermt2ps zmm14,zmm27,zmm15
  a50df0:	62 72 6d 48 7f d0    	vpermt2ps zmm10,zmm2,zmm0
  a50df6:	62 d2 6d 48 7f eb    	vpermt2ps zmm5,zmm2,zmm11
  a50dfc:	62 b2 25 40 7f e2    	vpermt2ps zmm4,zmm27,zmm18
  a50e02:	62 d2 6d 48 7f f8    	vpermt2ps zmm7,zmm2,zmm8
  a50e08:	62 52 6d 48 7f e5    	vpermt2ps zmm12,zmm2,zmm13
  a50e0e:	62 31 f5 40 14 c3    	vunpcklpd zmm8,zmm17,zmm19
  a50e14:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm8
  a50e1b:	07 
  a50e1c:	62 d1 7c 48 28 f1    	vmovaps zmm6,zmm9
  a50e22:	62 b1 f5 40 15 c3    	vunpckhpd zmm0,zmm17,zmm19
  a50e28:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a50e2f:	04 
  a50e30:	62 d1 f5 48 14 c6    	vunpcklpd zmm0,zmm1,zmm14
  a50e36:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a50e3d:	01 
  a50e3e:	62 d1 f5 48 15 c6    	vunpckhpd zmm0,zmm1,zmm14
  a50e44:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a50e4b:	05 
  a50e4c:	62 32 25 40 7f ce    	vpermt2ps zmm9,zmm27,zmm22
  a50e52:	62 f1 ad 48 14 cf    	vunpcklpd zmm1,zmm10,zmm7
  a50e58:	62 f1 ad 48 15 c7    	vunpckhpd zmm0,zmm10,zmm7
  a50e5e:	62 51 d5 48 14 f4    	vunpcklpd zmm14,zmm5,zmm12
  a50e64:	62 a2 6d 48 7f fa    	vpermt2ps zmm23,zmm2,zmm18
  a50e6a:	62 c1 d5 48 15 d4    	vunpckhpd zmm18,zmm5,zmm12
  a50e70:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm8
  a50e77:	02 
  a50e78:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  a50e7e:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a50e84:	62 b2 6d 48 7f f6    	vpermt2ps zmm6,zmm2,zmm22
  a50e8a:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a50e90:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a50e96:	62 31 7c 48 28 c4    	vmovaps zmm8,zmm20
  a50e9c:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  a50ea2:	62 f2 55 40 7f cb    	vpermt2ps zmm1,zmm21,zmm3
  a50ea8:	62 51 dd 48 14 f9    	vunpcklpd zmm15,zmm4,zmm9
  a50eae:	62 72 7d 40 7f c3    	vpermt2ps zmm8,zmm16,zmm3
  a50eb4:	62 91 7c 48 28 ef    	vmovaps zmm5,zmm31
  a50eba:	62 f2 55 40 7f eb    	vpermt2ps zmm5,zmm21,zmm3
  a50ec0:	62 c1 dd 48 15 c9    	vunpckhpd zmm17,zmm4,zmm9
  a50ec6:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a50ecc:	62 f2 55 40 7f e3    	vpermt2ps zmm4,zmm21,zmm3
  a50ed2:	62 91 7c 48 28 fa    	vmovaps zmm7,zmm26
  a50ed8:	62 e1 7c 48 28 1d 1e 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff675f1e]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a50edf:	5f 67 ff 
  a50ee2:	62 52 65 40 7f de    	vpermt2ps zmm11,zmm19,zmm14
  a50ee8:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm11
  a50eef:	03 
  a50ef0:	62 f2 55 40 7f fb    	vpermt2ps zmm7,zmm21,zmm3
  a50ef6:	62 11 7c 48 28 e9    	vmovaps zmm13,zmm25
  a50efc:	62 11 7c 48 28 c9    	vmovaps zmm9,zmm25
  a50f02:	62 72 55 40 7f cb    	vpermt2ps zmm9,zmm21,zmm3
  a50f08:	62 f1 7c 48 28 05 2e 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff675f2e]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a50f0f:	5f 67 ff 
  a50f12:	62 52 7d 48 7f e6    	vpermt2ps zmm12,zmm0,zmm14
  a50f18:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm12
  a50f1f:	06 
  a50f20:	62 72 7d 40 7f eb    	vpermt2ps zmm13,zmm16,zmm3
  a50f26:	62 11 7c 48 28 f6    	vmovaps zmm14,zmm30
  a50f2c:	62 72 55 40 7f f3    	vpermt2ps zmm14,zmm21,zmm3
  a50f32:	62 a2 65 40 7f f2    	vpermt2ps zmm22,zmm19,zmm18
  a50f38:	62 01 7c 48 28 cc    	vmovaps zmm25,zmm28
  a50f3e:	62 62 55 40 7f cb    	vpermt2ps zmm25,zmm21,zmm3
  a50f44:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a50f4a:	62 32 7d 48 7f d2    	vpermt2ps zmm10,zmm0,zmm18
  a50f50:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm10
  a50f57:	09 
  a50f58:	62 c2 6d 48 7f e1    	vpermt2ps zmm20,zmm2,zmm9
  a50f5e:	62 d2 25 40 7f c9    	vpermt2ps zmm1,zmm27,zmm9
  a50f64:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a50f6a:	62 52 6d 48 7f d6    	vpermt2ps zmm10,zmm2,zmm14
  a50f70:	62 d2 25 40 7f ee    	vpermt2ps zmm5,zmm27,zmm14
  a50f76:	62 71 7c 48 28 cc    	vmovaps zmm9,zmm4
  a50f7c:	62 12 6d 48 7f c9    	vpermt2ps zmm9,zmm2,zmm25
  a50f82:	62 71 c5 40 14 e6    	vunpcklpd zmm12,zmm23,zmm6
  a50f88:	62 92 25 40 7f e1    	vpermt2ps zmm4,zmm27,zmm25
  a50f8e:	62 11 7c 48 28 f5    	vmovaps zmm14,zmm29
  a50f94:	62 72 55 40 7f f3    	vpermt2ps zmm14,zmm21,zmm3
  a50f9a:	62 71 c5 40 15 de    	vunpckhpd zmm11,zmm23,zmm6
  a50fa0:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm11
  a50fa7:	08 
  a50fa8:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a50fae:	62 d2 6d 48 7f f6    	vpermt2ps zmm6,zmm2,zmm14
  a50fb4:	62 d2 25 40 7f fe    	vpermt2ps zmm7,zmm27,zmm14
  a50fba:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x100]
  a50fc1:	04 
  a50fc2:	62 21 7c 48 28 cf    	vmovaps zmm25,zmm23
  a50fc8:	62 52 6d 48 7f c5    	vpermt2ps zmm8,zmm2,zmm13
  a50fce:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x40]
  a50fd5:	01 
  a50fd6:	62 31 7c 48 28 f5    	vmovaps zmm14,zmm21
  a50fdc:	62 62 7d 40 7f fb    	vpermt2ps zmm31,zmm16,zmm3
  a50fe2:	62 62 7d 40 7f f3    	vpermt2ps zmm30,zmm16,zmm3
  a50fe8:	62 02 6d 48 7f fe    	vpermt2ps zmm31,zmm2,zmm30
  a50fee:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x140]
  a50ff5:	05 
  a50ff6:	62 81 7c 48 28 d3    	vmovaps zmm18,zmm27
  a50ffc:	62 62 7d 40 7f c3    	vpermt2ps zmm24,zmm16,zmm3
  a51002:	62 52 65 40 7f f7    	vpermt2ps zmm14,zmm19,zmm15
  a51008:	62 62 7d 40 7f d3    	vpermt2ps zmm26,zmm16,zmm3
  a5100e:	62 62 7d 40 7f e3    	vpermt2ps zmm28,zmm16,zmm3
  a51014:	62 62 7d 40 7f eb    	vpermt2ps zmm29,zmm16,zmm3
  a5101a:	62 c2 7d 48 7f ef    	vpermt2ps zmm21,zmm0,zmm15
  a51020:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm21
  a51027:	01 
  a51028:	62 02 6d 48 7f c4    	vpermt2ps zmm24,zmm2,zmm28
  a5102e:	62 02 6d 48 7f d5    	vpermt2ps zmm26,zmm2,zmm29
  a51034:	62 41 dd 40 14 f1    	vunpcklpd zmm30,zmm20,zmm9
  a5103a:	62 a2 65 40 7f d1    	vpermt2ps zmm18,zmm19,zmm17
  a51040:	62 41 dd 40 15 e1    	vunpckhpd zmm28,zmm20,zmm9
  a51046:	62 71 f5 48 14 cc    	vunpcklpd zmm9,zmm1,zmm4
  a5104c:	62 e1 f5 48 15 c4    	vunpckhpd zmm16,zmm1,zmm4
  a51052:	62 22 7d 48 7f d9    	vpermt2ps zmm27,zmm0,zmm17
  a51058:	62 81 7c 48 28 cb    	vmovaps zmm17,zmm27
  a5105e:	62 f1 d5 48 14 e7    	vunpcklpd zmm4,zmm5,zmm7
  a51064:	62 f1 d5 48 15 ef    	vunpckhpd zmm5,zmm5,zmm7
  a5106a:	62 91 bd 48 14 f8    	vunpcklpd zmm7,zmm8,zmm24
  a51070:	62 61 ad 48 14 ee    	vunpcklpd zmm29,zmm10,zmm6
  a51076:	62 81 bd 48 15 e0    	vunpckhpd zmm20,zmm8,zmm24
  a5107c:	62 91 85 40 14 d2    	vunpcklpd zmm2,zmm31,zmm26
  a51082:	62 11 85 40 15 c2    	vunpckhpd zmm8,zmm31,zmm26
  a51088:	62 61 ad 48 15 d6    	vunpckhpd zmm26,zmm10,zmm6
  a5108e:	62 11 7c 48 28 ee    	vmovaps zmm13,zmm30
  a51094:	62 91 7c 48 28 dc    	vmovaps zmm3,zmm28
  a5109a:	62 41 7c 48 28 d9    	vmovaps zmm27,zmm9
  a510a0:	62 61 7c 48 28 7c 24 	vmovaps zmm31,ZMMWORD PTR [rsp+0x80]
  a510a7:	02 
  a510a8:	62 42 65 40 7f fc    	vpermt2ps zmm31,zmm19,zmm12
  a510ae:	62 62 65 40 7f dc    	vpermt2ps zmm27,zmm19,zmm4
  a510b4:	62 72 7d 48 7f cc    	vpermt2ps zmm9,zmm0,zmm4
  a510ba:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm9
  a510c1:	02 
  a510c2:	62 b1 7c 48 28 f0    	vmovaps zmm6,zmm16
  a510c8:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x1c0]
  a510cf:	07 
  a510d0:	62 52 7d 48 7f fc    	vpermt2ps zmm15,zmm0,zmm12
  a510d6:	62 f2 65 40 7f f5    	vpermt2ps zmm6,zmm19,zmm5
  a510dc:	62 e2 7d 48 7f c5    	vpermt2ps zmm16,zmm0,zmm5
  a510e2:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a510e8:	62 c2 7d 48 7f fb    	vpermt2ps zmm23,zmm0,zmm11
  a510ee:	62 31 7c 48 28 df    	vmovaps zmm11,zmm23
  a510f4:	62 f2 65 40 7f e2    	vpermt2ps zmm4,zmm19,zmm2
  a510fa:	62 f2 7d 48 7f fa    	vpermt2ps zmm7,zmm0,zmm2
  a51100:	62 21 7c 48 28 c4    	vmovaps zmm24,zmm20
  a51106:	62 02 7d 48 7f f5    	vpermt2ps zmm30,zmm0,zmm29
  a5110c:	62 42 65 40 7f c0    	vpermt2ps zmm24,zmm19,zmm8
  a51112:	62 31 7c 48 28 e3    	vmovaps zmm12,zmm19
  a51118:	62 c2 7d 48 7f e0    	vpermt2ps zmm20,zmm0,zmm8
  a5111e:	62 f1 7c 48 10 49 12 	vmovups zmm1,ZMMWORD PTR [rcx+0x480]
  a51125:	62 02 7d 48 7f e2    	vpermt2ps zmm28,zmm0,zmm26
  a5112b:	62 f1 7c 48 10 51 13 	vmovups zmm2,ZMMWORD PTR [rcx+0x4c0]
  a51132:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a51139:	06 
  a5113a:	62 e1 7c 48 59 f9    	vmulps zmm23,zmm0,zmm1
  a51140:	62 71 44 48 59 c9    	vmulps zmm9,zmm7,zmm1
  a51146:	62 e2 45 48 bc fa    	vfnmadd231ps zmm23,zmm7,zmm2
  a5114c:	62 f1 7c 48 10 49 0c 	vmovups zmm1,ZMMWORD PTR [rcx+0x300]
  a51153:	62 72 6d 48 b8 c8    	vfmadd231ps zmm9,zmm2,zmm0
  a51159:	62 f1 7c 48 10 51 0d 	vmovups zmm2,ZMMWORD PTR [rcx+0x340]
  a51160:	62 f1 6c 40 59 f9    	vmulps zmm7,zmm18,zmm1
  a51166:	62 f2 4d 48 bc fa    	vfnmadd231ps zmm7,zmm6,zmm2
  a5116c:	62 e1 4c 48 59 e9    	vmulps zmm21,zmm6,zmm1
  a51172:	62 f1 7c 48 10 71 14 	vmovups zmm6,ZMMWORD PTR [rcx+0x500]
  a51179:	62 a2 6d 48 b8 ea    	vfmadd231ps zmm21,zmm2,zmm18
  a5117f:	62 f1 7c 48 10 51 15 	vmovups zmm2,ZMMWORD PTR [rcx+0x540]
  a51186:	62 f1 4c 40 59 ce    	vmulps zmm1,zmm22,zmm6
  a5118c:	62 f1 3c 40 59 f6    	vmulps zmm6,zmm24,zmm6
  a51192:	62 f2 3d 40 bc ca    	vfnmadd231ps zmm1,zmm24,zmm2
  a51198:	62 71 7c 48 10 41 08 	vmovups zmm8,ZMMWORD PTR [rcx+0x200]
  a5119f:	62 b2 6d 48 b8 f6    	vfmadd231ps zmm6,zmm2,zmm22
  a511a5:	62 f1 7c 48 10 51 09 	vmovups zmm2,ZMMWORD PTR [rcx+0x240]
  a511ac:	62 c1 0c 48 59 f0    	vmulps zmm22,zmm14,zmm8
  a511b2:	62 e2 25 40 bc f2    	vfnmadd231ps zmm22,zmm27,zmm2
  a511b8:	62 c1 24 40 59 d0    	vmulps zmm18,zmm27,zmm8
  a511be:	62 71 7c 48 10 41 0e 	vmovups zmm8,ZMMWORD PTR [rcx+0x380]
  a511c5:	62 c2 6d 48 b8 d6    	vfmadd231ps zmm18,zmm2,zmm14
  a511cb:	62 f1 7c 48 10 51 0f 	vmovups zmm2,ZMMWORD PTR [rcx+0x3c0]
  a511d2:	62 51 74 40 59 f0    	vmulps zmm14,zmm17,zmm8
  a511d8:	62 51 7c 40 59 c0    	vmulps zmm8,zmm16,zmm8
  a511de:	62 72 7d 40 bc f2    	vfnmadd231ps zmm14,zmm16,zmm2
  a511e4:	62 71 7c 48 10 51 06 	vmovups zmm10,ZMMWORD PTR [rcx+0x180]
  a511eb:	62 32 6d 48 b8 c1    	vfmadd231ps zmm8,zmm2,zmm17
  a511f1:	62 f1 7c 48 10 51 07 	vmovups zmm2,ZMMWORD PTR [rcx+0x1c0]
  a511f8:	62 c1 7c 48 28 c3    	vmovaps zmm16,zmm11
  a511fe:	62 d1 24 48 59 ea    	vmulps zmm5,zmm11,zmm10
  a51204:	62 f2 1d 40 bc ea    	vfnmadd231ps zmm5,zmm28,zmm2
  a5120a:	62 51 1c 40 59 d2    	vmulps zmm10,zmm28,zmm10
  a51210:	62 71 7c 48 10 59 02 	vmovups zmm11,ZMMWORD PTR [rcx+0x80]
  a51217:	62 32 6d 48 b8 d0    	vfmadd231ps zmm10,zmm2,zmm16
  a5121d:	62 f1 7c 48 10 51 03 	vmovups zmm2,ZMMWORD PTR [rcx+0xc0]
  a51224:	62 c1 04 48 59 cb    	vmulps zmm17,zmm15,zmm11
  a5122a:	62 51 0c 40 59 db    	vmulps zmm11,zmm30,zmm11
  a51230:	62 e2 0d 40 bc ca    	vfnmadd231ps zmm17,zmm30,zmm2
  a51236:	62 52 6d 48 b8 df    	vfmadd231ps zmm11,zmm2,zmm15
  a5123c:	62 f1 7c 48 10 51 10 	vmovups zmm2,ZMMWORD PTR [rcx+0x400]
  a51243:	62 e1 7c 48 10 41 11 	vmovups zmm16,ZMMWORD PTR [rcx+0x440]
  a5124a:	62 62 65 40 7f 4c 24 	vpermt2ps zmm25,zmm19,ZMMWORD PTR [rsp+0x200]
  a51251:	08 
  a51252:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0xc0]
  a51259:	03 
  a5125a:	62 61 04 48 59 c2    	vmulps zmm24,zmm15,zmm2
  a51260:	62 22 5d 48 bc c0    	vfnmadd231ps zmm24,zmm4,zmm16
  a51266:	62 f1 5c 48 59 d2    	vmulps zmm2,zmm4,zmm2
  a5126c:	62 f1 7c 48 10 61 04 	vmovups zmm4,ZMMWORD PTR [rcx+0x100]
  a51273:	62 d2 7d 40 b8 d7    	vfmadd231ps zmm2,zmm16,zmm15
  a51279:	62 e1 7c 48 10 41 05 	vmovups zmm16,ZMMWORD PTR [rcx+0x140]
  a51280:	62 e1 7c 48 10 59 0a 	vmovups zmm19,ZMMWORD PTR [rcx+0x280]
  a51287:	62 92 1d 48 7f da    	vpermt2ps zmm3,zmm12,zmm26
  a5128d:	62 61 34 40 59 d4    	vmulps zmm26,zmm25,zmm4
  a51293:	62 22 65 48 bc d0    	vfnmadd231ps zmm26,zmm3,zmm16
  a51299:	62 f1 64 48 59 e4    	vmulps zmm4,zmm3,zmm4
  a5129f:	62 f1 7c 48 10 59 0b 	vmovups zmm3,ZMMWORD PTR [rcx+0x2c0]
  a512a6:	62 92 7d 40 b8 e1    	vfmadd231ps zmm4,zmm16,zmm25
  a512ac:	62 e1 7c 48 10 41 16 	vmovups zmm16,ZMMWORD PTR [rcx+0x580]
  a512b3:	62 61 7c 48 10 49 17 	vmovups zmm25,ZMMWORD PTR [rcx+0x5c0]
  a512ba:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a512c0:	62 92 1d 48 7f c5    	vpermt2ps zmm0,zmm12,zmm29
  a512c6:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x240]
  a512cd:	09 
  a512ce:	62 21 14 48 59 d8    	vmulps zmm27,zmm13,zmm16
  a512d4:	62 02 5d 40 bc d9    	vfnmadd231ps zmm27,zmm20,zmm25
  a512da:	62 31 5c 40 59 e0    	vmulps zmm12,zmm20,zmm16
  a512e0:	62 01 7c 48 28 e7    	vmovaps zmm28,zmm31
  a512e6:	62 e1 04 40 58 c7    	vaddps zmm16,zmm31,zmm7
  a512ec:	62 52 35 40 b8 e5    	vfmadd231ps zmm12,zmm25,zmm13
  a512f2:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x40]
  a512f9:	01 
  a512fa:	62 21 14 48 59 cb    	vmulps zmm25,zmm13,zmm19
  a51300:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x80]
  a51307:	02 
  a51308:	62 62 05 48 bc cb    	vfnmadd231ps zmm25,zmm15,zmm3
  a5130e:	62 21 54 48 58 ef    	vaddps zmm29,zmm5,zmm23
  a51314:	62 31 04 48 59 fb    	vmulps zmm15,zmm15,zmm19
  a5131a:	62 e1 4c 40 58 d9    	vaddps zmm19,zmm22,zmm1
  a51320:	62 52 65 48 b8 fd    	vfmadd231ps zmm15,zmm3,zmm13
  a51326:	62 31 0c 48 58 e9    	vaddps zmm13,zmm14,zmm17
  a5132c:	62 01 3c 40 58 f2    	vaddps zmm30,zmm24,zmm26
  a51332:	62 f1 4c 40 5c d9    	vsubps zmm3,zmm22,zmm1
  a51338:	62 d1 3c 48 58 cb    	vaddps zmm1,zmm8,zmm11
  a5133e:	62 51 3c 48 5c db    	vsubps zmm11,zmm8,zmm11
  a51344:	62 c1 1c 48 58 f7    	vaddps zmm22,zmm12,zmm15
  a5134a:	62 51 1c 48 5c e7    	vsubps zmm12,zmm12,zmm15
  a51350:	62 01 24 40 58 f9    	vaddps zmm31,zmm27,zmm25
  a51356:	62 11 3c 40 5c fa    	vsubps zmm15,zmm24,zmm26
  a5135c:	62 41 2c 48 58 c1    	vaddps zmm24,zmm10,zmm9
  a51362:	62 61 1c 40 5c d7    	vsubps zmm26,zmm28,zmm7
  a51368:	62 51 2c 48 5c d1    	vsubps zmm10,zmm10,zmm9
  a5136e:	62 91 7c 40 58 fd    	vaddps zmm7,zmm16,zmm29
  a51374:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm7
  a5137b:	01 
  a5137c:	62 f1 6c 40 58 fe    	vaddps zmm7,zmm18,zmm6
  a51382:	62 e1 6c 40 5c d6    	vsubps zmm18,zmm18,zmm6
  a51388:	62 51 74 40 5c f6    	vsubps zmm14,zmm17,zmm14
  a5138e:	62 51 64 40 58 cd    	vaddps zmm9,zmm19,zmm13
  a51394:	62 f1 6c 48 58 f4    	vaddps zmm6,zmm2,zmm4
  a5139a:	62 f1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm4
  a513a0:	62 81 34 40 5c cb    	vsubps zmm17,zmm25,zmm27
  a513a6:	62 11 0c 40 58 c7    	vaddps zmm8,zmm30,zmm31
  a513ac:	62 61 54 40 58 c8    	vaddps zmm25,zmm21,zmm0
  a513b2:	62 a1 7c 48 5c e5    	vsubps zmm20,zmm0,zmm21
  a513b8:	62 e1 44 40 5c ed    	vsubps zmm21,zmm23,zmm5
  a513be:	62 e1 44 48 58 f9    	vaddps zmm23,zmm7,zmm1
  a513c4:	62 d1 64 48 58 e3    	vaddps zmm4,zmm3,zmm11
  a513ca:	62 51 64 40 5c ed    	vsubps zmm13,zmm19,zmm13
  a513d0:	62 d1 6c 40 58 c6    	vaddps zmm0,zmm18,zmm14
  a513d6:	62 81 0c 40 5c df    	vsubps zmm19,zmm30,zmm31
  a513dc:	62 21 6c 48 58 d9    	vaddps zmm27,zmm2,zmm17
  a513e2:	62 81 7c 40 5c c5    	vsubps zmm16,zmm16,zmm29
  a513e8:	62 01 7c 48 5c e3    	vsubps zmm28,zmm0,zmm27
  a513ee:	62 91 7c 48 58 c3    	vaddps zmm0,zmm0,zmm27
  a513f4:	62 41 04 48 58 dc    	vaddps zmm27,zmm15,zmm12
  a513fa:	62 61 44 48 5c e9    	vsubps zmm29,zmm7,zmm1
  a51400:	62 91 5c 48 58 fb    	vaddps zmm7,zmm4,zmm27
  a51406:	62 01 5c 48 5c db    	vsubps zmm27,zmm4,zmm27
  a5140c:	62 21 4c 48 58 f6    	vaddps zmm30,zmm6,zmm22
  a51412:	62 b1 4c 48 5c e6    	vsubps zmm4,zmm6,zmm22
  a51418:	62 f1 14 40 5c cc    	vsubps zmm1,zmm29,zmm4
  a5141e:	62 e1 14 40 58 f4    	vaddps zmm22,zmm29,zmm4
  a51424:	62 91 3c 40 58 e1    	vaddps zmm4,zmm24,zmm25
  a5142a:	62 01 34 40 5c c0    	vsubps zmm24,zmm25,zmm24
  a51430:	62 21 14 48 58 cb    	vaddps zmm25,zmm13,zmm19
  a51436:	62 b1 14 48 5c f3    	vsubps zmm6,zmm13,zmm19
  a5143c:	62 c1 2c 40 58 da    	vaddps zmm19,zmm26,zmm10
  a51442:	62 51 2c 40 5c d2    	vsubps zmm10,zmm26,zmm10
  a51448:	62 41 64 48 5c d3    	vsubps zmm26,zmm3,zmm11
  a5144e:	62 d1 7c 48 28 d9    	vmovaps zmm3,zmm9
  a51454:	62 51 34 48 58 c8    	vaddps zmm9,zmm9,zmm8
  a5145a:	62 51 04 48 5c fc    	vsubps zmm15,zmm15,zmm12
  a51460:	62 21 54 40 58 ec    	vaddps zmm29,zmm21,zmm20
  a51466:	62 a1 5c 40 5c e5    	vsubps zmm20,zmm20,zmm21
  a5146c:	62 81 44 40 58 ee    	vaddps zmm21,zmm23,zmm30
  a51472:	62 51 6c 40 5c f6    	vsubps zmm14,zmm18,zmm14
  a51478:	62 62 7d 48 18 3d de 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff623fde]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a5147f:	3f 62 ff 
  a51482:	62 11 7c 48 28 e7    	vmovaps zmm12,zmm31
  a51488:	62 32 45 48 ac e3    	vfnmadd213ps zmm12,zmm7,zmm19
  a5148e:	62 f2 7d 48 18 2d 3c 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff623e3c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a51495:	3e 62 ff 
  a51498:	62 71 1c 40 59 ed    	vmulps zmm13,zmm28,zmm5
  a5149e:	62 b1 6c 48 5c d1    	vsubps zmm2,zmm2,zmm17
  a514a4:	62 81 7c 48 28 cf    	vmovaps zmm17,zmm31
  a514aa:	62 81 44 40 5c d6    	vsubps zmm18,zmm23,zmm30
  a514b0:	62 51 1c 48 58 dd    	vaddps zmm11,zmm12,zmm13
  a514b6:	62 82 7d 48 ac cd    	vfnmadd213ps zmm17,zmm0,zmm29
  a514bc:	62 e1 24 40 59 fd    	vmulps zmm23,zmm27,zmm5
  a514c2:	62 41 64 48 5c d8    	vsubps zmm27,zmm3,zmm8
  a514c8:	62 21 74 40 5c e7    	vsubps zmm28,zmm17,zmm23
  a514ce:	62 d1 1c 48 5c dd    	vsubps zmm3,zmm12,zmm13
  a514d4:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm3
  a514db:	03 
  a514dc:	62 01 7c 48 28 f7    	vmovaps zmm30,zmm31
  a514e2:	62 22 35 40 ac f0    	vfnmadd213ps zmm30,zmm25,zmm16
  a514e8:	62 31 74 40 58 e7    	vaddps zmm12,zmm17,zmm23
  a514ee:	62 81 7c 48 28 cf    	vmovaps zmm17,zmm31
  a514f4:	62 11 7c 40 58 c1    	vaddps zmm8,zmm16,zmm25
  a514fa:	62 c1 2c 40 58 c7    	vaddps zmm16,zmm26,zmm15
  a51500:	62 82 4d 40 ac c8    	vfnmadd213ps zmm17,zmm22,zmm24
  a51506:	62 31 3c 40 58 ee    	vaddps zmm13,zmm24,zmm22
  a5150c:	62 a1 2c 48 58 f0    	vaddps zmm22,zmm10,zmm16
  a51512:	62 c2 05 40 ac c2    	vfnmadd213ps zmm16,zmm31,zmm10
  a51518:	62 71 0c 48 58 d2    	vaddps zmm10,zmm14,zmm2
  a5151e:	62 f1 0c 48 5c d2    	vsubps zmm2,zmm14,zmm2
  a51524:	62 51 5c 40 58 f2    	vaddps zmm14,zmm20,zmm10
  a5152a:	62 32 05 40 ac d4    	vfnmadd213ps zmm10,zmm31,zmm20
  a51530:	62 81 7c 48 28 e7    	vmovaps zmm20,zmm31
  a51536:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x40]
  a5153d:	01 
  a5153e:	62 e2 35 48 ac e3    	vfnmadd213ps zmm20,zmm9,zmm3
  a51544:	62 e1 6c 40 59 d5    	vmulps zmm18,zmm18,zmm5
  a5154a:	62 51 2c 40 5c ff    	vsubps zmm15,zmm26,zmm15
  a51550:	62 a1 5c 40 58 fa    	vaddps zmm23,zmm20,zmm18
  a51556:	62 a1 5c 40 5c d2    	vsubps zmm18,zmm20,zmm18
  a5155c:	62 f1 64 40 58 ff    	vaddps zmm7,zmm19,zmm7
  a51562:	62 81 7c 48 28 df    	vmovaps zmm19,zmm31
  a51568:	62 e2 55 40 ac dc    	vfnmadd213ps zmm19,zmm21,zmm4
  a5156e:	62 e1 24 40 59 e5    	vmulps zmm20,zmm27,zmm5
  a51574:	62 f1 14 40 58 c0    	vaddps zmm0,zmm29,zmm0
  a5157a:	62 21 64 40 5c c4    	vsubps zmm24,zmm19,zmm20
  a51580:	62 a1 64 40 58 dc    	vaddps zmm19,zmm19,zmm20
  a51586:	62 f1 74 48 59 cd    	vmulps zmm1,zmm1,zmm5
  a5158c:	62 b1 5c 48 58 e5    	vaddps zmm4,zmm4,zmm21
  a51592:	62 e1 0c 40 5c e1    	vsubps zmm20,zmm30,zmm1
  a51598:	62 f1 0c 40 58 c9    	vaddps zmm1,zmm30,zmm1
  a5159e:	62 f1 4c 48 59 f5    	vmulps zmm6,zmm6,zmm5
  a515a4:	62 d1 64 48 58 d9    	vaddps zmm3,zmm3,zmm9
  a515aa:	62 71 74 40 58 ce    	vaddps zmm9,zmm17,zmm6
  a515b0:	62 f1 74 40 5c f6    	vsubps zmm6,zmm17,zmm6
  a515b6:	62 f1 6c 48 59 d5    	vmulps zmm2,zmm2,zmm5
  a515bc:	62 e1 7c 48 28 0d ba 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6414ba]        # 92a80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ff30>
  a515c3:	14 64 ff 
  a515c6:	62 f2 75 40 7f e3    	vpermt2ps zmm4,zmm17,zmm3
  a515cc:	62 f1 7c 40 58 da    	vaddps zmm3,zmm16,zmm2
  a515d2:	62 f1 7c 40 5c d2    	vsubps zmm2,zmm16,zmm2
  a515d8:	62 71 04 48 59 fd    	vmulps zmm15,zmm15,zmm5
  a515de:	62 f1 7c 48 11 24 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm4
  a515e5:	62 d1 2c 48 5c e7    	vsubps zmm4,zmm10,zmm15
  a515eb:	62 51 2c 48 58 d7    	vaddps zmm10,zmm10,zmm15
  a515f1:	62 42 75 40 7f e3    	vpermt2ps zmm28,zmm17,zmm11
  a515f7:	62 61 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm28
  a515fe:	01 
  a515ff:	62 32 75 40 7f cc    	vpermt2ps zmm9,zmm17,zmm20
  a51605:	62 71 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm9
  a5160c:	02 
  a5160d:	62 32 75 40 7f f6    	vpermt2ps zmm14,zmm17,zmm22
  a51613:	62 71 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm14
  a5161a:	03 
  a5161b:	62 22 75 40 7f c7    	vpermt2ps zmm24,zmm17,zmm23
  a51621:	62 61 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm24
  a51628:	04 
  a51629:	62 72 75 40 7f 64 24 	vpermt2ps zmm12,zmm17,ZMMWORD PTR [rsp+0xc0]
  a51630:	03 
  a51631:	62 71 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm12
  a51638:	05 
  a51639:	62 52 75 40 7f e8    	vpermt2ps zmm13,zmm17,zmm8
  a5163f:	62 71 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm13
  a51646:	06 
  a51647:	62 f2 75 40 7f e3    	vpermt2ps zmm4,zmm17,zmm3
  a5164d:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm4
  a51654:	07 
  a51655:	62 a2 75 40 7f da    	vpermt2ps zmm19,zmm17,zmm18
  a5165b:	62 e1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm19
  a51662:	08 
  a51663:	62 f2 75 40 7f c7    	vpermt2ps zmm0,zmm17,zmm7
  a51669:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm0
  a51670:	09 
  a51671:	62 f2 75 40 7f f1    	vpermt2ps zmm6,zmm17,zmm1
  a51677:	62 f1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm6
  a5167e:	0a 
  a5167f:	62 72 75 40 7f d2    	vpermt2ps zmm10,zmm17,zmm2
  a51685:	62 71 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm10
  a5168c:	0b 
  a5168d:	48 81 c2 00 03 00 00 	add    rdx,0x300
  a51694:	48 39 d0             	cmp    rax,rdx
  a51697:	0f 85 d3 f3 ff ff    	jne    a50a70 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a5169d:	48 89 ec             	mov    rsp,rbp
  a516a0:	5d                   	pop    rbp
  a516a1:	c5 f8 77             	vzeroupper
  a516a4:	c3                   	ret
