
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a61a40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a61a40:	55                   	push   rbp
  a61a41:	48 89 e5             	mov    rbp,rsp
  a61a44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a61a48:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a61a4f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a61a54:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a61a59:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a61a5e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a61a63:	62 f1 7c 48 10 07    	vmovups zmm0,ZMMWORD PTR [rdi]
  a61a69:	c5 fb 10 4f 40       	vmovsd xmm1,QWORD PTR [rdi+0x40]
  a61a6e:	62 f1 7c 48 28 15 08 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff632108]        # 93b80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21030>
  a61a75:	21 63 ff 
  a61a78:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a61a7e:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a61a84:	62 f1 7c 48 28 25 32 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff632132]        # 93bc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21070>
  a61a8b:	21 63 ff 
  a61a8e:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a61a94:	62 f1 7c 48 10 8f 48 	vmovups zmm1,ZMMWORD PTR [rdi+0x48]
  a61a9b:	00 00 00 
  a61a9e:	c5 fb 10 af 88 00 00 	vmovsd xmm5,QWORD PTR [rdi+0x88]
  a61aa5:	00 
  a61aa6:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a61aac:	62 f2 6d 48 7f f5    	vpermt2ps zmm6,zmm2,zmm5
  a61ab2:	62 f2 5d 48 7f cd    	vpermt2ps zmm1,zmm4,zmm5
  a61ab8:	62 f1 7c 48 10 af 90 	vmovups zmm5,ZMMWORD PTR [rdi+0x90]
  a61abf:	00 00 00 
  a61ac2:	c5 fb 10 bf d0 00 00 	vmovsd xmm7,QWORD PTR [rdi+0xd0]
  a61ac9:	00 
  a61aca:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a61ad0:	62 72 6d 48 7f c7    	vpermt2ps zmm8,zmm2,zmm7
  a61ad6:	62 f2 5d 48 7f ef    	vpermt2ps zmm5,zmm4,zmm7
  a61adc:	62 f1 7c 48 10 bf d8 	vmovups zmm7,ZMMWORD PTR [rdi+0xd8]
  a61ae3:	00 00 00 
  a61ae6:	c5 7b 10 8f 18 01 00 	vmovsd xmm9,QWORD PTR [rdi+0x118]
  a61aed:	00 
  a61aee:	62 d2 45 48 77 d1    	vpermi2ps zmm2,zmm7,zmm9
  a61af4:	62 d2 5d 48 7f f9    	vpermt2ps zmm7,zmm4,zmm9
  a61afa:	62 51 64 48 58 c8    	vaddps zmm9,zmm3,zmm8
  a61b00:	62 71 4c 48 58 da    	vaddps zmm11,zmm6,zmm2
  a61b06:	62 51 34 48 58 eb    	vaddps zmm13,zmm9,zmm11
  a61b0c:	62 71 7c 48 58 e5    	vaddps zmm12,zmm0,zmm5
  a61b12:	62 71 74 48 58 f7    	vaddps zmm14,zmm1,zmm7
  a61b18:	62 d1 1c 48 58 e6    	vaddps zmm4,zmm12,zmm14
  a61b1e:	62 d1 64 48 5c d8    	vsubps zmm3,zmm3,zmm8
  a61b24:	62 f1 74 48 5c cf    	vsubps zmm1,zmm1,zmm7
  a61b2a:	62 f1 64 48 58 f9    	vaddps zmm7,zmm3,zmm1
  a61b30:	62 f1 7c 48 5c c5    	vsubps zmm0,zmm0,zmm5
  a61b36:	62 f1 6c 48 5c d6    	vsubps zmm2,zmm2,zmm6
  a61b3c:	62 71 6c 48 58 d0    	vaddps zmm10,zmm2,zmm0
  a61b42:	62 d1 34 48 5c eb    	vsubps zmm5,zmm9,zmm11
  a61b48:	62 51 1c 48 5c e6    	vsubps zmm12,zmm12,zmm14
  a61b4e:	62 f1 64 48 5c d9    	vsubps zmm3,zmm3,zmm1
  a61b54:	62 71 7c 48 5c da    	vsubps zmm11,zmm0,zmm2
  a61b5a:	62 f1 7c 48 28 0d 1c 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff66541c]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a61b61:	54 66 ff 
  a61b64:	c4 41 08 57 f6       	vxorps xmm14,xmm14,xmm14
  a61b69:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a61b6f:	62 d2 75 48 7f c6    	vpermt2ps zmm0,zmm1,zmm14
  a61b75:	62 e1 7c 48 28 15 41 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff665441]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a61b7c:	54 66 ff 
  a61b7f:	62 52 6d 40 7f ee    	vpermt2ps zmm13,zmm18,zmm14
  a61b85:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a61b8b:	62 d2 75 48 7f f6    	vpermt2ps zmm6,zmm1,zmm14
  a61b91:	62 d2 6d 40 7f fe    	vpermt2ps zmm7,zmm18,zmm14
  a61b97:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a61b9d:	62 52 75 48 7f c6    	vpermt2ps zmm8,zmm1,zmm14
  a61ba3:	62 d2 6d 40 7f ee    	vpermt2ps zmm5,zmm18,zmm14
  a61ba9:	62 e1 7c 48 28 e3    	vmovaps zmm20,zmm3
  a61baf:	62 c2 75 48 7f e6    	vpermt2ps zmm20,zmm1,zmm14
  a61bb5:	62 d2 6d 40 7f de    	vpermt2ps zmm3,zmm18,zmm14
  a61bbb:	62 a1 74 00 57 c9    	vxorps xmm17,xmm17,xmm17
  a61bc1:	62 a2 75 48 7f c9    	vpermt2ps zmm17,zmm1,zmm17
  a61bc7:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  a61bcc:	62 52 6d 40 7f ff    	vpermt2ps zmm15,zmm18,zmm15
  a61bd2:	62 e1 7c 48 28 05 24 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff665324]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a61bd9:	53 66 ff 
  a61bdc:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a61be2:	62 32 7d 40 7f c9    	vpermt2ps zmm9,zmm16,zmm17
  a61be8:	62 e1 7c 48 28 1d 4e 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff66534e]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a61bef:	53 66 ff 
  a61bf2:	62 b2 65 40 7f c1    	vpermt2ps zmm0,zmm19,zmm17
  a61bf8:	62 e1 7c 48 28 ee    	vmovaps zmm21,zmm6
  a61bfe:	62 a2 7d 40 7f e9    	vpermt2ps zmm21,zmm16,zmm17
  a61c04:	62 b2 65 40 7f f1    	vpermt2ps zmm6,zmm19,zmm17
  a61c0a:	62 c1 7c 48 28 f0    	vmovaps zmm22,zmm8
  a61c10:	62 a2 7d 40 7f f1    	vpermt2ps zmm22,zmm16,zmm17
  a61c16:	62 32 65 40 7f c1    	vpermt2ps zmm8,zmm19,zmm17
  a61c1c:	62 a1 7c 48 28 fc    	vmovaps zmm23,zmm20
  a61c22:	62 a2 7d 40 7f f9    	vpermt2ps zmm23,zmm16,zmm17
  a61c28:	62 a2 65 40 7f e1    	vpermt2ps zmm20,zmm19,zmm17
  a61c2e:	62 52 7d 40 7f ef    	vpermt2ps zmm13,zmm16,zmm15
  a61c34:	62 d2 7d 40 7f ff    	vpermt2ps zmm7,zmm16,zmm15
  a61c3a:	62 d2 7d 40 7f ef    	vpermt2ps zmm5,zmm16,zmm15
  a61c40:	62 f1 95 48 14 d5    	vunpcklpd zmm2,zmm13,zmm5
  a61c46:	62 d2 7d 40 7f df    	vpermt2ps zmm3,zmm16,zmm15
  a61c4c:	62 61 c5 48 14 c3    	vunpcklpd zmm24,zmm7,zmm3
  a61c52:	62 b1 b5 48 14 fe    	vunpcklpd zmm7,zmm9,zmm22
  a61c58:	62 31 b5 48 15 ce    	vunpckhpd zmm9,zmm9,zmm22
  a61c5e:	62 31 d5 40 14 ef    	vunpcklpd zmm13,zmm21,zmm23
  a61c64:	62 a1 d5 40 15 f7    	vunpckhpd zmm22,zmm21,zmm23
  a61c6a:	62 d1 fd 48 14 d8    	vunpcklpd zmm3,zmm0,zmm8
  a61c70:	62 d1 fd 48 15 e8    	vunpckhpd zmm5,zmm0,zmm8
  a61c76:	62 a1 cd 48 14 fc    	vunpcklpd zmm23,zmm6,zmm20
  a61c7c:	62 21 cd 48 15 cc    	vunpckhpd zmm25,zmm6,zmm20
  a61c82:	62 e1 7c 48 28 25 74 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff665174]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a61c89:	51 66 ff 
  a61c8c:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a61c92:	62 d2 5d 40 7f c5    	vpermt2ps zmm0,zmm20,zmm13
  a61c98:	62 e1 7c 48 28 2d 9e 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff66519e]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a61c9f:	51 66 ff 
  a61ca2:	62 d2 55 40 7f fd    	vpermt2ps zmm7,zmm21,zmm13
  a61ca8:	62 d1 7c 48 28 f1    	vmovaps zmm6,zmm9
  a61cae:	62 b2 5d 40 7f f6    	vpermt2ps zmm6,zmm20,zmm22
  a61cb4:	62 32 55 40 7f ce    	vpermt2ps zmm9,zmm21,zmm22
  a61cba:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a61cc0:	62 32 5d 40 7f c7    	vpermt2ps zmm8,zmm20,zmm23
  a61cc6:	62 b2 55 40 7f df    	vpermt2ps zmm3,zmm21,zmm23
  a61ccc:	62 71 7c 48 28 ed    	vmovaps zmm13,zmm5
  a61cd2:	62 12 5d 40 7f e9    	vpermt2ps zmm13,zmm20,zmm25
  a61cd8:	62 92 55 40 7f e9    	vpermt2ps zmm5,zmm21,zmm25
  a61cde:	62 92 5d 40 7f d0    	vpermt2ps zmm2,zmm20,zmm24
  a61ce4:	62 e1 7c 48 28 f4    	vmovaps zmm22,zmm4
  a61cea:	62 c2 75 48 7f f6    	vpermt2ps zmm22,zmm1,zmm14
  a61cf0:	62 d2 6d 40 7f e6    	vpermt2ps zmm4,zmm18,zmm14
  a61cf6:	62 c1 7c 48 28 fa    	vmovaps zmm23,zmm10
  a61cfc:	62 c2 75 48 7f fe    	vpermt2ps zmm23,zmm1,zmm14
  a61d02:	62 52 6d 40 7f d6    	vpermt2ps zmm10,zmm18,zmm14
  a61d08:	62 41 7c 48 28 c4    	vmovaps zmm24,zmm12
  a61d0e:	62 42 75 48 7f c6    	vpermt2ps zmm24,zmm1,zmm14
  a61d14:	62 52 6d 40 7f e6    	vpermt2ps zmm12,zmm18,zmm14
  a61d1a:	62 d2 25 48 77 ce    	vpermi2ps zmm1,zmm11,zmm14
  a61d20:	62 52 6d 40 7f de    	vpermt2ps zmm11,zmm18,zmm14
  a61d26:	62 21 7c 48 28 ce    	vmovaps zmm25,zmm22
  a61d2c:	62 22 7d 40 7f c9    	vpermt2ps zmm25,zmm16,zmm17
  a61d32:	62 a2 65 40 7f f1    	vpermt2ps zmm22,zmm19,zmm17
  a61d38:	62 21 7c 48 28 d7    	vmovaps zmm26,zmm23
  a61d3e:	62 22 7d 40 7f d1    	vpermt2ps zmm26,zmm16,zmm17
  a61d44:	62 a2 65 40 7f f9    	vpermt2ps zmm23,zmm19,zmm17
  a61d4a:	62 01 7c 48 28 d8    	vmovaps zmm27,zmm24
  a61d50:	62 22 7d 40 7f d9    	vpermt2ps zmm27,zmm16,zmm17
  a61d56:	62 22 65 40 7f c1    	vpermt2ps zmm24,zmm19,zmm17
  a61d5c:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a61d62:	62 22 7d 40 7f e1    	vpermt2ps zmm28,zmm16,zmm17
  a61d68:	62 b2 65 40 7f c9    	vpermt2ps zmm1,zmm19,zmm17
  a61d6e:	62 d2 7d 40 7f e7    	vpermt2ps zmm4,zmm16,zmm15
  a61d74:	62 52 7d 40 7f d7    	vpermt2ps zmm10,zmm16,zmm15
  a61d7a:	62 52 7d 40 7f e7    	vpermt2ps zmm12,zmm16,zmm15
  a61d80:	62 51 dd 48 14 f4    	vunpcklpd zmm14,zmm4,zmm12
  a61d86:	62 52 7d 40 7f df    	vpermt2ps zmm11,zmm16,zmm15
  a61d8c:	62 d1 ad 48 14 e3    	vunpcklpd zmm4,zmm10,zmm11
  a61d92:	62 81 b5 40 14 d3    	vunpcklpd zmm18,zmm25,zmm27
  a61d98:	62 11 b5 40 15 d3    	vunpckhpd zmm10,zmm25,zmm27
  a61d9e:	62 11 ad 40 14 dc    	vunpcklpd zmm11,zmm26,zmm28
  a61da4:	62 11 ad 40 15 e4    	vunpckhpd zmm12,zmm26,zmm28
  a61daa:	62 11 cd 40 14 f8    	vunpcklpd zmm15,zmm22,zmm24
  a61db0:	62 81 cd 40 15 d8    	vunpckhpd zmm19,zmm22,zmm24
  a61db6:	62 e1 c5 40 14 c9    	vunpcklpd zmm17,zmm23,zmm1
  a61dbc:	62 e1 c5 40 15 f9    	vunpckhpd zmm23,zmm23,zmm1
  a61dc2:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a61dc8:	62 d2 5d 40 7f cb    	vpermt2ps zmm1,zmm20,zmm11
  a61dce:	62 c2 55 40 7f d3    	vpermt2ps zmm18,zmm21,zmm11
  a61dd4:	62 c1 7c 48 28 c2    	vmovaps zmm16,zmm10
  a61dda:	62 c2 5d 40 7f c4    	vpermt2ps zmm16,zmm20,zmm12
  a61de0:	62 52 55 40 7f d4    	vpermt2ps zmm10,zmm21,zmm12
  a61de6:	62 c1 7c 48 28 f7    	vmovaps zmm22,zmm15
  a61dec:	62 a2 5d 40 7f f1    	vpermt2ps zmm22,zmm20,zmm17
  a61df2:	62 32 55 40 7f f9    	vpermt2ps zmm15,zmm21,zmm17
  a61df8:	62 31 7c 48 28 e3    	vmovaps zmm12,zmm19
  a61dfe:	62 32 5d 40 7f e7    	vpermt2ps zmm12,zmm20,zmm23
  a61e04:	62 a2 55 40 7f df    	vpermt2ps zmm19,zmm21,zmm23
  a61e0a:	62 72 5d 40 7f f4    	vpermt2ps zmm14,zmm20,zmm4
  a61e10:	62 61 7c 48 10 4a 02 	vmovups zmm25,ZMMWORD PTR [rdx+0x80]
  a61e17:	62 61 7c 48 10 42 03 	vmovups zmm24,ZMMWORD PTR [rdx+0xc0]
  a61e1e:	62 e1 7c 48 10 62 04 	vmovups zmm20,ZMMWORD PTR [rdx+0x100]
  a61e25:	62 e1 7c 48 10 6a 05 	vmovups zmm21,ZMMWORD PTR [rdx+0x140]
  a61e2c:	62 71 7c 48 10 5a 06 	vmovups zmm11,ZMMWORD PTR [rdx+0x180]
  a61e33:	62 e1 7c 48 10 4a 07 	vmovups zmm17,ZMMWORD PTR [rdx+0x1c0]
  a61e3a:	62 61 7c 48 10 52 08 	vmovups zmm26,ZMMWORD PTR [rdx+0x200]
  a61e41:	62 e1 7c 48 10 7a 09 	vmovups zmm23,ZMMWORD PTR [rdx+0x240]
  a61e48:	62 d1 34 48 59 e3    	vmulps zmm4,zmm9,zmm11
  a61e4e:	62 b2 2d 48 bc e1    	vfnmadd231ps zmm4,zmm10,zmm17
  a61e54:	62 51 2c 48 59 db    	vmulps zmm11,zmm10,zmm11
  a61e5a:	62 61 7c 48 10 5a 0c 	vmovups zmm27,ZMMWORD PTR [rdx+0x300]
  a61e61:	62 52 75 40 b8 d9    	vfmadd231ps zmm11,zmm17,zmm9
  a61e67:	62 71 7c 48 10 4a 0d 	vmovups zmm9,ZMMWORD PTR [rdx+0x340]
  a61e6e:	62 11 14 48 59 d3    	vmulps zmm10,zmm13,zmm27
  a61e74:	62 52 1d 48 bc d1    	vfnmadd231ps zmm10,zmm12,zmm9
  a61e7a:	62 11 1c 48 59 e3    	vmulps zmm12,zmm12,zmm27
  a61e80:	62 61 7c 48 10 5a 0a 	vmovups zmm27,ZMMWORD PTR [rdx+0x280]
  a61e87:	62 52 35 48 b8 e5    	vfmadd231ps zmm12,zmm9,zmm13
  a61e8d:	62 71 7c 48 10 4a 0b 	vmovups zmm9,ZMMWORD PTR [rdx+0x2c0]
  a61e94:	62 81 44 48 59 c9    	vmulps zmm17,zmm7,zmm25
  a61e9a:	62 82 6d 40 bc c8    	vfnmadd231ps zmm17,zmm18,zmm24
  a61ea0:	62 81 6c 40 59 d1    	vmulps zmm18,zmm18,zmm25
  a61ea6:	62 71 7c 48 10 6a 0e 	vmovups zmm13,ZMMWORD PTR [rdx+0x380]
  a61ead:	62 e2 3d 40 b8 d7    	vfmadd231ps zmm18,zmm24,zmm7
  a61eb3:	62 f1 7c 48 10 7a 0f 	vmovups zmm7,ZMMWORD PTR [rdx+0x3c0]
  a61eba:	62 01 3c 48 59 c2    	vmulps zmm24,zmm8,zmm26
  a61ec0:	62 22 4d 40 bc c7    	vfnmadd231ps zmm24,zmm22,zmm23
  a61ec6:	62 81 4c 40 59 f2    	vmulps zmm22,zmm22,zmm26
  a61ecc:	62 61 7c 48 10 4a 10 	vmovups zmm25,ZMMWORD PTR [rdx+0x400]
  a61ed3:	62 c2 45 40 b8 f0    	vfmadd231ps zmm22,zmm23,zmm8
  a61ed9:	62 71 7c 48 10 42 11 	vmovups zmm8,ZMMWORD PTR [rdx+0x440]
  a61ee0:	62 c1 54 48 59 fd    	vmulps zmm23,zmm5,zmm13
  a61ee6:	62 e2 65 40 bc ff    	vfnmadd231ps zmm23,zmm19,zmm7
  a61eec:	62 51 64 40 59 ed    	vmulps zmm13,zmm19,zmm13
  a61ef2:	62 21 3c 40 58 d7    	vaddps zmm26,zmm24,zmm23
  a61ef8:	62 72 45 48 b8 ed    	vfmadd231ps zmm13,zmm7,zmm5
  a61efe:	62 91 74 40 58 ea    	vaddps zmm5,zmm17,zmm26
  a61f04:	62 a1 4c 48 59 dc    	vmulps zmm19,zmm6,zmm20
  a61f0a:	62 a2 7d 40 bc dd    	vfnmadd231ps zmm19,zmm16,zmm21
  a61f10:	62 a1 7c 40 59 e4    	vmulps zmm20,zmm16,zmm20
  a61f16:	62 81 64 48 59 c3    	vmulps zmm16,zmm3,zmm27
  a61f1c:	62 c2 05 48 bc c1    	vfnmadd231ps zmm16,zmm15,zmm9
  a61f22:	62 e2 55 40 b8 e6    	vfmadd231ps zmm20,zmm21,zmm6
  a61f28:	62 81 6c 48 59 e9    	vmulps zmm21,zmm2,zmm25
  a61f2e:	62 c2 0d 48 bc e8    	vfnmadd231ps zmm21,zmm14,zmm8
  a61f34:	62 21 7c 40 58 e5    	vaddps zmm28,zmm16,zmm21
  a61f3a:	62 11 04 48 59 fb    	vmulps zmm15,zmm15,zmm27
  a61f40:	62 91 64 40 58 fc    	vaddps zmm7,zmm19,zmm28
  a61f46:	62 72 35 48 b8 fb    	vfmadd231ps zmm15,zmm9,zmm3
  a61f4c:	62 51 4c 40 58 cd    	vaddps zmm9,zmm22,zmm13
  a61f52:	62 d1 6c 40 58 f1    	vaddps zmm6,zmm18,zmm9
  a61f58:	62 11 0c 48 59 f1    	vmulps zmm14,zmm14,zmm25
  a61f5e:	62 72 3d 48 b8 f2    	vfmadd231ps zmm14,zmm8,zmm2
  a61f64:	62 f2 7d 48 18 15 f2 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff6134f2]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a61f6b:	34 61 ff 
  a61f6e:	62 41 04 48 58 ce    	vaddps zmm25,zmm15,zmm14
  a61f74:	62 f2 7d 48 18 1d 56 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff613356]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a61f7b:	33 61 ff 
  a61f7e:	62 82 6d 48 bc ca    	vfnmadd231ps zmm17,zmm2,zmm26
  a61f84:	62 11 5c 40 58 c1    	vaddps zmm8,zmm20,zmm25
  a61f8a:	62 51 4c 40 5c ed    	vsubps zmm13,zmm22,zmm13
  a61f90:	62 e1 14 48 59 f3    	vmulps zmm22,zmm13,zmm3
  a61f96:	62 21 74 40 58 d6    	vaddps zmm26,zmm17,zmm22
  a61f9c:	62 c2 6d 48 bc d1    	vfnmadd231ps zmm18,zmm2,zmm9
  a61fa2:	62 31 3c 40 5c cf    	vsubps zmm9,zmm24,zmm23
  a61fa8:	62 e1 34 48 59 fb    	vmulps zmm23,zmm9,zmm3
  a61fae:	62 31 6c 40 5c ef    	vsubps zmm13,zmm18,zmm23
  a61fb4:	62 62 7d 48 18 05 aa 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff6136aa]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a61fbb:	36 61 ff 
  a61fbe:	62 82 6d 48 bc dc    	vfnmadd231ps zmm19,zmm2,zmm28
  a61fc4:	62 11 14 48 59 c8    	vmulps zmm9,zmm13,zmm24
  a61fca:	62 51 04 48 5c f6    	vsubps zmm14,zmm15,zmm14
  a61fd0:	62 72 7d 48 18 3d fe 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff6134fe]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a61fd7:	34 61 ff 
  a61fda:	62 52 2d 40 b8 cf    	vfmadd231ps zmm9,zmm26,zmm15
  a61fe0:	62 61 0c 48 59 db    	vmulps zmm27,zmm14,zmm3
  a61fe6:	62 82 6d 48 bc e1    	vfnmadd231ps zmm20,zmm2,zmm25
  a61fec:	62 01 64 40 58 cb    	vaddps zmm25,zmm19,zmm27
  a61ff2:	62 31 7c 40 5c f5    	vsubps zmm14,zmm16,zmm21
  a61ff8:	62 e1 0c 48 59 eb    	vmulps zmm21,zmm14,zmm3
  a61ffe:	62 62 7d 48 18 25 10 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff613310]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a62005:	33 61 ff 
  a62008:	62 51 14 48 59 ef    	vmulps zmm13,zmm13,zmm15
  a6200e:	62 31 5c 40 5c f5    	vsubps zmm14,zmm20,zmm21
  a62014:	62 12 2d 40 bc e8    	vfnmadd231ps zmm13,zmm26,zmm24
  a6201a:	62 62 7d 48 18 05 b8 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff6134b8]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a62021:	34 61 ff 
  a62024:	62 81 0c 48 59 c4    	vmulps zmm16,zmm14,zmm28
  a6202a:	62 82 35 40 b8 c0    	vfmadd231ps zmm16,zmm25,zmm24
  a62030:	62 11 0c 48 59 f0    	vmulps zmm14,zmm14,zmm24
  a62036:	62 12 1d 40 bc f1    	vfnmadd231ps zmm14,zmm28,zmm25
  a6203c:	62 a1 74 40 5c f6    	vsubps zmm22,zmm17,zmm22
  a62042:	62 a1 6c 40 58 cf    	vaddps zmm17,zmm18,zmm23
  a62048:	62 c1 5c 48 58 fa    	vaddps zmm23,zmm4,zmm10
  a6204e:	62 01 64 40 5c cb    	vsubps zmm25,zmm19,zmm27
  a62054:	62 21 7c 48 58 d7    	vaddps zmm26,zmm0,zmm23
  a6205a:	62 a1 5c 40 58 d5    	vaddps zmm18,zmm20,zmm21
  a62060:	62 11 74 40 59 fc    	vmulps zmm15,zmm17,zmm28
  a62066:	62 12 4d 40 b8 f8    	vfmadd231ps zmm15,zmm22,zmm24
  a6206c:	62 81 74 40 59 c8    	vmulps zmm17,zmm17,zmm24
  a62072:	62 e2 7d 48 18 25 74 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff613474]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a62079:	34 61 ff 
  a6207c:	62 82 4d 40 bc cc    	vfnmadd231ps zmm17,zmm22,zmm28
  a62082:	62 a1 6c 40 59 dc    	vmulps zmm19,zmm18,zmm20
  a62088:	62 e2 7d 48 18 2d 66 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff613566]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a6208f:	35 61 ff 
  a62092:	62 a2 35 40 bc dd    	vfnmadd231ps zmm19,zmm25,zmm21
  a62098:	62 a1 6c 40 59 d5    	vmulps zmm18,zmm18,zmm21
  a6209e:	62 e1 54 48 58 ef    	vaddps zmm21,zmm5,zmm7
  a620a4:	62 a2 35 40 b8 d4    	vfmadd231ps zmm18,zmm25,zmm20
  a620aa:	62 c1 24 48 58 e4    	vaddps zmm20,zmm11,zmm12
  a620b0:	62 e1 5c 40 58 f1    	vaddps zmm22,zmm20,zmm1
  a620b6:	62 b2 6d 48 bc c7    	vfnmadd231ps zmm0,zmm2,zmm23
  a620bc:	62 c1 4c 48 58 f8    	vaddps zmm23,zmm6,zmm8
  a620c2:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a620c8:	62 71 24 48 59 db    	vmulps zmm11,zmm11,zmm3
  a620ce:	62 41 7c 48 58 c3    	vaddps zmm24,zmm0,zmm11
  a620d4:	62 b2 6d 48 bc cc    	vfnmadd231ps zmm1,zmm2,zmm20
  a620da:	62 21 34 48 58 c8    	vaddps zmm25,zmm9,zmm16
  a620e0:	62 d1 5c 48 5c e2    	vsubps zmm4,zmm4,zmm10
  a620e6:	62 f1 5c 48 59 e3    	vmulps zmm4,zmm4,zmm3
  a620ec:	62 e1 74 48 5c e4    	vsubps zmm20,zmm1,zmm4
  a620f2:	62 41 7c 48 5c db    	vsubps zmm27,zmm0,zmm11
  a620f8:	62 51 14 48 58 de    	vaddps zmm11,zmm13,zmm14
  a620fe:	62 61 5c 48 58 e1    	vaddps zmm28,zmm4,zmm1
  a62104:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a6210a:	62 b2 45 40 ac c6    	vfnmadd213ps zmm0,zmm23,zmm22
  a62110:	62 31 4c 20 58 e7    	vaddps ymm12,ymm22,ymm23
  a62116:	62 71 7c 48 28 d2    	vmovaps zmm10,zmm2
  a6211c:	62 12 55 40 ac d2    	vfnmadd213ps zmm10,zmm21,zmm26
  a62122:	62 b1 2c 00 58 cd    	vaddps xmm1,xmm26,xmm21
  a62128:	c5 fc 28 25 b0 50 61 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff6150b0]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a6212f:	ff 
  a62130:	62 d2 5d 28 7f cc    	vpermt2ps ymm1,ymm4,ymm12
  a62136:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a6213c:	62 32 25 48 ac e4    	vfnmadd213ps zmm12,zmm11,zmm20
  a62142:	62 c1 5c 20 58 eb    	vaddps ymm21,ymm20,ymm11
  a62148:	62 e1 7c 48 28 e2    	vmovaps zmm20,zmm2
  a6214e:	62 82 35 40 ac e0    	vfnmadd213ps zmm20,zmm25,zmm24
  a62154:	62 11 3c 00 58 d9    	vaddps xmm11,xmm24,xmm25
  a6215a:	62 a1 74 40 5c f2    	vsubps zmm22,zmm17,zmm18
  a62160:	62 32 5d 28 7f dd    	vpermt2ps ymm11,ymm4,ymm21
  a62166:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  a6216c:	62 92 4d 40 ac d4    	vfnmadd213ps zmm2,zmm22,zmm28
  a62172:	62 a1 1c 20 58 fe    	vaddps ymm23,ymm28,ymm22
  a62178:	62 a1 04 48 58 f3    	vaddps zmm22,zmm15,zmm19
  a6217e:	62 82 4d 40 ac eb    	vfnmadd213ps zmm21,zmm22,zmm27
  a62184:	62 a1 24 00 58 f6    	vaddps xmm22,xmm27,xmm22
  a6218a:	62 a2 5d 28 7f f7    	vpermt2ps ymm22,ymm4,ymm23
  a62190:	c5 d4 5c ef          	vsubps ymm5,ymm5,ymm7
  a62194:	c5 d4 59 eb          	vmulps ymm5,ymm5,ymm3
  a62198:	c5 fc 5c fd          	vsubps ymm7,ymm0,ymm5
  a6219c:	c4 c1 4c 5c f0       	vsubps ymm6,ymm6,ymm8
  a621a1:	c5 cc 59 f3          	vmulps ymm6,ymm6,ymm3
  a621a5:	c5 28 58 c6          	vaddps xmm8,xmm10,xmm6
  a621a9:	62 72 5d 28 7f c7    	vpermt2ps ymm8,ymm4,ymm7
  a621af:	62 b1 34 28 5c f8    	vsubps ymm7,ymm9,ymm16
  a621b5:	c5 c4 59 fb          	vmulps ymm7,ymm7,ymm3
  a621b9:	c5 1c 5c cf          	vsubps ymm9,ymm12,ymm7
  a621bd:	c4 41 14 5c ee       	vsubps ymm13,ymm13,ymm14
  a621c2:	c5 14 59 eb          	vmulps ymm13,ymm13,ymm3
  a621c6:	62 51 5c 00 58 f5    	vaddps xmm14,xmm20,xmm13
  a621cc:	62 52 5d 28 7f f1    	vpermt2ps ymm14,ymm4,ymm9
  a621d2:	62 31 04 28 5c cb    	vsubps ymm9,ymm15,ymm19
  a621d8:	c5 34 59 cb          	vmulps ymm9,ymm9,ymm3
  a621dc:	62 31 74 20 58 fa    	vaddps ymm15,ymm17,ymm18
  a621e2:	62 c1 6c 28 5c c1    	vsubps ymm16,ymm2,ymm9
  a621e8:	c5 84 59 db          	vmulps ymm3,ymm15,ymm3
  a621ec:	62 71 54 00 58 fb    	vaddps xmm15,xmm21,xmm3
  a621f2:	62 32 5d 28 7f f8    	vpermt2ps ymm15,ymm4,ymm16
  a621f8:	c5 fc 58 c5          	vaddps ymm0,ymm0,ymm5
  a621fc:	c5 a8 5c ee          	vsubps xmm5,xmm10,xmm6
  a62200:	62 f2 5d 28 7f e8    	vpermt2ps ymm5,ymm4,ymm0
  a62206:	c5 9c 58 c7          	vaddps ymm0,ymm12,ymm7
  a6220a:	62 d1 5c 00 5c f5    	vsubps xmm6,xmm20,xmm13
  a62210:	62 f2 5d 28 7f f0    	vpermt2ps ymm6,ymm4,ymm0
  a62216:	c5 b4 58 c2          	vaddps ymm0,ymm9,ymm2
  a6221a:	62 f1 54 00 5c d3    	vsubps xmm2,xmm21,xmm3
  a62220:	62 f2 5d 28 7f d0    	vpermt2ps ymm2,ymm4,ymm0
  a62226:	c5 fc 11 0e          	vmovups YMMWORD PTR [rsi],ymm1
  a6222a:	c5 7c 11 5e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm11
  a6222f:	62 e1 7c 28 11 76 02 	vmovups YMMWORD PTR [rsi+0x40],ymm22
  a62236:	c5 7c 11 46 60       	vmovups YMMWORD PTR [rsi+0x60],ymm8
  a6223b:	c5 7c 11 b6 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm14
  a62242:	00 
  a62243:	c5 7c 11 be a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm15
  a6224a:	00 
  a6224b:	c5 fc 11 ae c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm5
  a62252:	00 
  a62253:	c5 fc 11 b6 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm6
  a6225a:	00 
  a6225b:	c5 fc 11 96 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm2
  a62262:	00 
  a62263:	48 89 ec             	mov    rsp,rbp
  a62266:	5d                   	pop    rbp
  a62267:	c5 f8 77             	vzeroupper
  a6226a:	c3                   	ret
