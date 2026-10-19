
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a1bc00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a1bc00:	55                   	push   rbp
  a1bc01:	48 89 e5             	mov    rbp,rsp
  a1bc04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a1bc08:	48 81 ec 40 01 00 00 	sub    rsp,0x140
  a1bc0f:	48 c1 e2 08          	shl    rdx,0x8
  a1bc13:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a1bc17:	31 d2                	xor    edx,edx
  a1bc19:	4c 8d 84 24 c0 00 00 	lea    r8,[rsp+0xc0]
  a1bc20:	00 
  a1bc21:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a1bc26:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a1bc2d:	00 00 00 
  a1bc30:	c6 84 24 c0 00 00 00 	mov    BYTE PTR [rsp+0xc0],0x0
  a1bc37:	00 
  a1bc38:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a1bc3d:	62 f1 7c 48 10 34 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1]
  a1bc44:	62 71 7c 48 10 7c 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x40]
  a1bc4b:	01 
  a1bc4c:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x80]
  a1bc53:	02 
  a1bc54:	62 71 7c 48 10 6c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a1bc5b:	03 
  a1bc5c:	62 71 7c 48 28 f6    	vmovaps zmm14,zmm6
  a1bc62:	62 a1 7c 00 57 c0    	vxorps xmm16,xmm16,xmm16
  a1bc68:	62 f1 7c 48 28 2d 8e 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff673d8e]        # 8fa00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ceb0>
  a1bc6f:	3d 67 ff 
  a1bc72:	62 b2 55 48 7f f0    	vpermt2ps zmm6,zmm5,zmm16
  a1bc78:	62 c1 7c 48 28 ff    	vmovaps zmm23,zmm15
  a1bc7e:	62 f1 7c 48 28 05 38 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff673d38]        # 8f9c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ce70>
  a1bc85:	3d 67 ff 
  a1bc88:	62 32 7d 48 7f f0    	vpermt2ps zmm14,zmm0,zmm16
  a1bc8e:	62 a2 7d 48 7f f8    	vpermt2ps zmm23,zmm0,zmm16
  a1bc94:	62 32 55 48 7f f8    	vpermt2ps zmm15,zmm5,zmm16
  a1bc9a:	62 a1 7c 48 28 ca    	vmovaps zmm17,zmm18
  a1bca0:	62 a2 7d 48 7f c8    	vpermt2ps zmm17,zmm0,zmm16
  a1bca6:	62 a2 55 48 7f d0    	vpermt2ps zmm18,zmm5,zmm16
  a1bcac:	62 c1 7c 48 28 ed    	vmovaps zmm21,zmm13
  a1bcb2:	62 32 55 48 7f e8    	vpermt2ps zmm13,zmm5,zmm16
  a1bcb8:	62 a2 7d 48 7f e8    	vpermt2ps zmm21,zmm0,zmm16
  a1bcbe:	62 61 7c 48 10 44 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x100]
  a1bcc5:	04 
  a1bcc6:	62 81 7c 48 28 f0    	vmovaps zmm22,zmm24
  a1bccc:	62 22 55 48 7f c0    	vpermt2ps zmm24,zmm5,zmm16
  a1bcd2:	62 a2 7d 48 7f f0    	vpermt2ps zmm22,zmm0,zmm16
  a1bcd8:	62 e1 7c 48 10 64 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x140]
  a1bcdf:	05 
  a1bce0:	62 21 7c 48 28 e4    	vmovaps zmm28,zmm20
  a1bce6:	62 a2 55 48 7f e0    	vpermt2ps zmm20,zmm5,zmm16
  a1bcec:	62 22 7d 48 7f e0    	vpermt2ps zmm28,zmm0,zmm16
  a1bcf2:	62 61 7c 48 10 6c 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x180]
  a1bcf9:	06 
  a1bcfa:	62 81 7c 48 28 dd    	vmovaps zmm19,zmm29
  a1bd00:	62 22 55 48 7f e8    	vpermt2ps zmm29,zmm5,zmm16
  a1bd06:	62 a2 7d 48 7f d8    	vpermt2ps zmm19,zmm0,zmm16
  a1bd0c:	62 61 7c 48 10 54 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a1bd13:	07 
  a1bd14:	62 01 7c 48 28 da    	vmovaps zmm27,zmm26
  a1bd1a:	62 22 55 48 7f d0    	vpermt2ps zmm26,zmm5,zmm16
  a1bd20:	62 22 7d 48 7f d8    	vpermt2ps zmm27,zmm0,zmm16
  a1bd26:	62 71 7c 48 10 54 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x200]
  a1bd2d:	08 
  a1bd2e:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  a1bd34:	62 32 55 48 7f d0    	vpermt2ps zmm10,zmm5,zmm16
  a1bd3a:	62 b2 7d 48 7f c8    	vpermt2ps zmm1,zmm0,zmm16
  a1bd40:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x240]
  a1bd47:	09 
  a1bd48:	62 61 7c 48 28 ca    	vmovaps zmm25,zmm2
  a1bd4e:	62 b2 55 48 7f d0    	vpermt2ps zmm2,zmm5,zmm16
  a1bd54:	62 22 7d 48 7f c8    	vpermt2ps zmm25,zmm0,zmm16
  a1bd5a:	62 f1 7c 48 10 5c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x280]
  a1bd61:	0a 
  a1bd62:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a1bd68:	62 b2 55 48 7f d8    	vpermt2ps zmm3,zmm5,zmm16
  a1bd6e:	62 b2 7d 48 7f e0    	vpermt2ps zmm4,zmm0,zmm16
  a1bd74:	62 71 7c 48 10 5c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  a1bd7b:	0b 
  a1bd7c:	62 51 7c 48 28 cb    	vmovaps zmm9,zmm11
  a1bd82:	62 32 55 48 7f d8    	vpermt2ps zmm11,zmm5,zmm16
  a1bd88:	62 32 7d 48 7f c8    	vpermt2ps zmm9,zmm0,zmm16
  a1bd8e:	62 01 4c 48 58 f5    	vaddps zmm30,zmm6,zmm29
  a1bd94:	62 61 14 48 58 fa    	vaddps zmm31,zmm13,zmm2
  a1bd9a:	62 71 3c 40 58 e3    	vaddps zmm12,zmm24,zmm3
  a1bda0:	62 51 2c 40 58 c7    	vaddps zmm8,zmm26,zmm15
  a1bda6:	62 b1 2c 48 58 ea    	vaddps zmm5,zmm10,zmm18
  a1bdac:	62 61 3c 40 5c c3    	vsubps zmm24,zmm24,zmm3
  a1bdb2:	62 b1 24 40 58 df    	vaddps zmm3,zmm27,zmm23
  a1bdb8:	62 a1 24 40 5c ff    	vsubps zmm23,zmm27,zmm23
  a1bdbe:	62 b1 24 48 58 fc    	vaddps zmm7,zmm11,zmm20
  a1bdc4:	62 21 2c 48 5c da    	vsubps zmm27,zmm10,zmm18
  a1bdca:	62 11 34 48 58 d4    	vaddps zmm10,zmm9,zmm28
  a1bdd0:	62 01 34 48 5c e4    	vsubps zmm28,zmm9,zmm28
  a1bdd6:	62 11 54 40 58 c9    	vaddps zmm9,zmm21,zmm25
  a1bddc:	62 91 4c 48 5c c5    	vsubps zmm0,zmm6,zmm29
  a1bde2:	62 81 54 40 5c e9    	vsubps zmm21,zmm21,zmm25
  a1bde8:	62 81 0c 40 58 d7    	vaddps zmm18,zmm30,zmm31
  a1bdee:	62 61 4c 40 58 cc    	vaddps zmm25,zmm22,zmm4
  a1bdf4:	62 f1 4c 40 5c e4    	vsubps zmm4,zmm22,zmm4
  a1bdfa:	62 81 04 48 5c f2    	vsubps zmm22,zmm15,zmm26
  a1be00:	62 d1 1c 48 58 f0    	vaddps zmm6,zmm12,zmm8
  a1be06:	62 21 74 48 58 d1    	vaddps zmm26,zmm1,zmm17
  a1be0c:	62 b1 74 48 5c c9    	vsubps zmm1,zmm1,zmm17
  a1be12:	62 51 5c 40 5c db    	vsubps zmm11,zmm20,zmm11
  a1be18:	62 e1 54 48 58 cf    	vaddps zmm17,zmm5,zmm7
  a1be1e:	62 a1 0c 48 58 e3    	vaddps zmm20,zmm14,zmm19
  a1be24:	62 31 0c 48 5c f3    	vsubps zmm14,zmm14,zmm19
  a1be2a:	62 d1 6c 48 5c d5    	vsubps zmm2,zmm2,zmm13
  a1be30:	62 c1 5c 40 58 d9    	vaddps zmm19,zmm20,zmm9
  a1be36:	62 61 34 40 58 eb    	vaddps zmm29,zmm25,zmm3
  a1be3c:	62 51 1c 48 5c c0    	vsubps zmm8,zmm12,zmm8
  a1be42:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a1be48:	62 d1 2c 40 58 fa    	vaddps zmm7,zmm26,zmm10
  a1be4e:	62 31 3c 40 58 e7    	vaddps zmm12,zmm24,zmm23
  a1be54:	62 01 0c 40 5c f7    	vsubps zmm30,zmm30,zmm31
  a1be5a:	62 71 4c 40 58 ec    	vaddps zmm13,zmm22,zmm4
  a1be60:	62 f1 34 40 5c db    	vsubps zmm3,zmm25,zmm3
  a1be66:	62 61 24 48 58 c9    	vaddps zmm25,zmm11,zmm1
  a1be6c:	62 41 2c 40 5c fa    	vsubps zmm31,zmm26,zmm10
  a1be72:	62 11 14 48 5c f9    	vsubps zmm15,zmm13,zmm25
  a1be78:	62 01 14 48 58 d1    	vaddps zmm26,zmm13,zmm25
  a1be7e:	62 11 24 40 58 d4    	vaddps zmm10,zmm27,zmm28
  a1be84:	62 51 5c 40 5c c9    	vsubps zmm9,zmm20,zmm9
  a1be8a:	62 41 1c 48 58 ca    	vaddps zmm25,zmm12,zmm10
  a1be90:	62 51 1c 48 5c e2    	vsubps zmm12,zmm12,zmm10
  a1be96:	62 e1 3c 48 58 e5    	vaddps zmm20,zmm8,zmm5
  a1be9c:	62 f1 3c 48 5c ed    	vsubps zmm5,zmm8,zmm5
  a1bea2:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm5
  a1bea9:	02 
  a1beaa:	62 91 64 48 5c ef    	vsubps zmm5,zmm3,zmm31
  a1beb0:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm5
  a1beb7:	01 
  a1beb8:	62 91 64 48 58 df    	vaddps zmm3,zmm3,zmm31
  a1bebe:	62 31 7c 48 58 ed    	vaddps zmm13,zmm0,zmm21
  a1bec4:	62 a1 7c 48 5c ed    	vsubps zmm21,zmm0,zmm21
  a1beca:	62 21 3c 40 5c ff    	vsubps zmm31,zmm24,zmm23
  a1bed0:	62 e1 7c 48 28 fe    	vmovaps zmm23,zmm6
  a1bed6:	62 b1 4c 48 58 f1    	vaddps zmm6,zmm6,zmm17
  a1bedc:	62 01 24 40 5c dc    	vsubps zmm27,zmm27,zmm28
  a1bee2:	62 41 6c 48 58 e6    	vaddps zmm28,zmm2,zmm14
  a1bee8:	62 f1 0c 48 5c ea    	vsubps zmm5,zmm14,zmm2
  a1beee:	62 71 6c 40 58 f6    	vaddps zmm14,zmm18,zmm6
  a1bef4:	62 b1 5c 48 5c d6    	vsubps zmm2,zmm4,zmm22
  a1befa:	62 f1 14 40 58 c7    	vaddps zmm0,zmm29,zmm7
  a1bf00:	62 d1 74 48 5c cb    	vsubps zmm1,zmm1,zmm11
  a1bf06:	62 71 64 40 58 d0    	vaddps zmm10,zmm19,zmm0
  a1bf0c:	62 72 7d 48 18 05 4a 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff65954a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a1bf13:	95 65 ff 
  a1bf16:	62 b2 3d 48 ac f2    	vfnmadd213ps zmm6,zmm8,zmm18
  a1bf1c:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a1bf22:	62 52 35 40 ac dd    	vfnmadd213ps zmm11,zmm25,zmm13
  a1bf28:	62 f2 7d 48 18 25 a2 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff6593a2]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a1bf2f:	93 65 ff 
  a1bf32:	62 71 04 48 59 fc    	vmulps zmm15,zmm15,zmm4
  a1bf38:	62 f1 14 40 5c ff    	vsubps zmm7,zmm29,zmm7
  a1bf3e:	62 c1 7c 48 28 d0    	vmovaps zmm18,zmm8
  a1bf44:	62 b2 3d 48 ac c3    	vfnmadd213ps zmm0,zmm8,zmm19
  a1bf4a:	62 41 04 48 58 c3    	vaddps zmm24,zmm15,zmm11
  a1bf50:	62 82 2d 40 ac d4    	vfnmadd213ps zmm18,zmm26,zmm28
  a1bf56:	62 71 1c 48 59 e4    	vmulps zmm12,zmm12,zmm4
  a1bf5c:	62 a1 44 40 5c f1    	vsubps zmm22,zmm23,zmm17
  a1bf62:	62 c1 6c 40 5c dc    	vsubps zmm19,zmm18,zmm12
  a1bf68:	62 51 24 48 5c ff    	vsubps zmm15,zmm11,zmm15
  a1bf6e:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a1bf74:	62 12 5d 40 ac de    	vfnmadd213ps zmm11,zmm20,zmm30
  a1bf7a:	62 51 6c 40 58 e4    	vaddps zmm12,zmm18,zmm12
  a1bf80:	62 c1 7c 48 28 d0    	vmovaps zmm18,zmm8
  a1bf86:	62 a1 0c 40 58 cc    	vaddps zmm17,zmm30,zmm20
  a1bf8c:	62 01 04 40 58 f3    	vaddps zmm30,zmm31,zmm27
  a1bf92:	62 c2 65 48 ac d1    	vfnmadd213ps zmm18,zmm3,zmm9
  a1bf98:	62 e1 34 48 58 fb    	vaddps zmm23,zmm9,zmm3
  a1bf9e:	62 01 54 40 58 ee    	vaddps zmm29,zmm21,zmm30
  a1bfa4:	62 22 3d 48 ac f5    	vfnmadd213ps zmm30,zmm8,zmm21
  a1bfaa:	62 f1 6c 48 58 d9    	vaddps zmm3,zmm2,zmm1
  a1bfb0:	62 f1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm1
  a1bfb6:	62 e1 54 48 58 eb    	vaddps zmm21,zmm5,zmm3
  a1bfbc:	62 f2 3d 48 ac dd    	vfnmadd213ps zmm3,zmm8,zmm5
  a1bfc2:	62 f1 44 48 59 d4    	vmulps zmm2,zmm7,zmm4
  a1bfc8:	62 01 04 40 5c fb    	vsubps zmm31,zmm31,zmm27
  a1bfce:	62 f1 4c 48 58 fa    	vaddps zmm7,zmm6,zmm2
  a1bfd4:	62 71 4c 40 59 c4    	vmulps zmm8,zmm22,zmm4
  a1bfda:	62 f1 4c 48 5c d2    	vsubps zmm2,zmm6,zmm2
  a1bfe0:	62 c1 7c 48 5c e0    	vsubps zmm20,zmm0,zmm8
  a1bfe6:	62 61 3c 48 58 d8    	vaddps zmm27,zmm8,zmm0
  a1bfec:	62 91 14 48 58 e9    	vaddps zmm5,zmm13,zmm25
  a1bff2:	62 f1 5c 48 59 44 24 	vmulps zmm0,zmm4,ZMMWORD PTR [rsp+0x40]
  a1bff9:	01 
  a1bffa:	62 01 1c 40 58 e2    	vaddps zmm28,zmm28,zmm26
  a1c000:	62 f1 24 48 5c f0    	vsubps zmm6,zmm11,zmm0
  a1c006:	62 71 5c 48 59 44 24 	vmulps zmm8,zmm4,ZMMWORD PTR [rsp+0x80]
  a1c00d:	02 
  a1c00e:	62 71 24 48 58 c8    	vaddps zmm9,zmm11,zmm0
  a1c014:	62 21 3c 48 58 ca    	vaddps zmm25,zmm8,zmm18
  a1c01a:	62 f1 74 48 59 cc    	vmulps zmm1,zmm1,zmm4
  a1c020:	62 d1 6c 40 5c c0    	vsubps zmm0,zmm18,zmm8
  a1c026:	62 11 74 48 58 c6    	vaddps zmm8,zmm1,zmm30
  a1c02c:	62 f1 04 40 59 e4    	vmulps zmm4,zmm31,zmm4
  a1c032:	62 f1 0c 40 5c c9    	vsubps zmm1,zmm30,zmm1
  a1c038:	62 61 64 48 5c d4    	vsubps zmm26,zmm3,zmm4
  a1c03e:	62 e1 64 48 58 f4    	vaddps zmm22,zmm3,zmm4
  a1c044:	62 71 7c 48 28 1d 32 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6aaf32]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a1c04b:	af 6a ff 
  a1c04e:	62 72 25 48 7f f2    	vpermt2ps zmm14,zmm11,zmm2
  a1c054:	62 62 25 48 7f c5    	vpermt2ps zmm24,zmm11,zmm5
  a1c05a:	62 d2 25 48 7f f1    	vpermt2ps zmm6,zmm11,zmm9
  a1c060:	62 62 25 48 7f e9    	vpermt2ps zmm29,zmm11,zmm1
  a1c066:	62 b2 25 48 7f f8    	vpermt2ps zmm7,zmm11,zmm16
  a1c06c:	62 32 25 48 7f f8    	vpermt2ps zmm15,zmm11,zmm16
  a1c072:	62 a2 25 48 7f c8    	vpermt2ps zmm17,zmm11,zmm16
  a1c078:	62 32 25 48 7f c0    	vpermt2ps zmm8,zmm11,zmm16
  a1c07e:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  a1c084:	62 61 7c 48 28 35 b2 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff6aaeb2]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a1c08b:	ae 6a ff 
  a1c08e:	62 72 0d 40 7f f7    	vpermt2ps zmm14,zmm30,zmm7
  a1c094:	62 91 7c 48 28 d0    	vmovaps zmm2,zmm24
  a1c09a:	62 71 7c 48 28 0d 5c 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6aae5c]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1c0a1:	ae 6a ff 
  a1c0a4:	62 f2 35 48 7f cf    	vpermt2ps zmm1,zmm9,zmm7
  a1c0aa:	62 d2 35 48 7f d7    	vpermt2ps zmm2,zmm9,zmm15
  a1c0b0:	62 42 0d 40 7f c7    	vpermt2ps zmm24,zmm30,zmm15
  a1c0b6:	62 f1 7c 48 28 de    	vmovaps zmm3,zmm6
  a1c0bc:	62 b2 35 48 7f d9    	vpermt2ps zmm3,zmm9,zmm17
  a1c0c2:	62 b2 0d 40 7f f1    	vpermt2ps zmm6,zmm30,zmm17
  a1c0c8:	62 91 7c 48 28 e5    	vmovaps zmm4,zmm29
  a1c0ce:	62 42 0d 40 7f e8    	vpermt2ps zmm29,zmm30,zmm8
  a1c0d4:	62 d2 35 48 7f e0    	vpermt2ps zmm4,zmm9,zmm8
  a1c0da:	62 e1 f5 48 14 d3    	vunpcklpd zmm18,zmm1,zmm3
  a1c0e0:	62 71 f5 48 15 fb    	vunpckhpd zmm15,zmm1,zmm3
  a1c0e6:	62 e1 8d 48 14 ce    	vunpcklpd zmm17,zmm14,zmm6
  a1c0ec:	62 71 ed 48 14 ec    	vunpcklpd zmm13,zmm2,zmm4
  a1c0f2:	62 71 8d 48 15 f6    	vunpckhpd zmm14,zmm14,zmm6
  a1c0f8:	62 91 bd 40 14 cd    	vunpcklpd zmm1,zmm24,zmm29
  a1c0fe:	62 91 bd 40 15 dd    	vunpckhpd zmm3,zmm24,zmm29
  a1c104:	62 61 ed 48 15 fc    	vunpckhpd zmm31,zmm2,zmm4
  a1c10a:	62 21 7c 48 28 c1    	vmovaps zmm24,zmm17
  a1c110:	62 12 25 48 7f d3    	vpermt2ps zmm10,zmm11,zmm27
  a1c116:	62 82 25 48 7f dc    	vpermt2ps zmm19,zmm11,zmm28
  a1c11c:	62 f1 7c 48 28 35 1a 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6aad1a]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1c123:	ad 6a ff 
  a1c126:	62 e2 4d 48 7f c9    	vpermt2ps zmm17,zmm6,zmm1
  a1c12c:	62 62 25 48 7f c8    	vpermt2ps zmm25,zmm11,zmm0
  a1c132:	62 a2 25 48 7f ee    	vpermt2ps zmm21,zmm11,zmm22
  a1c138:	62 a2 25 48 7f e0    	vpermt2ps zmm20,zmm11,zmm16
  a1c13e:	62 41 7c 48 28 de    	vmovaps zmm27,zmm14
  a1c144:	62 32 25 48 7f e0    	vpermt2ps zmm12,zmm11,zmm16
  a1c14a:	62 a2 25 48 7f f8    	vpermt2ps zmm23,zmm11,zmm16
  a1c150:	62 22 25 48 7f d0    	vpermt2ps zmm26,zmm11,zmm16
  a1c156:	62 72 4d 48 7f f3    	vpermt2ps zmm14,zmm6,zmm3
  a1c15c:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a1c162:	62 b2 35 48 7f c4    	vpermt2ps zmm0,zmm9,zmm20
  a1c168:	62 32 0d 40 7f d4    	vpermt2ps zmm10,zmm30,zmm20
  a1c16e:	62 a1 7c 48 28 e2    	vmovaps zmm20,zmm18
  a1c174:	62 b1 7c 48 28 d3    	vmovaps zmm2,zmm19
  a1c17a:	62 d2 35 48 7f d4    	vpermt2ps zmm2,zmm9,zmm12
  a1c180:	62 c2 0d 40 7f dc    	vpermt2ps zmm19,zmm30,zmm12
  a1c186:	62 c2 4d 48 7f d5    	vpermt2ps zmm18,zmm6,zmm13
  a1c18c:	62 91 7c 48 28 e1    	vmovaps zmm4,zmm25
  a1c192:	62 b2 35 48 7f e7    	vpermt2ps zmm4,zmm9,zmm23
  a1c198:	62 22 0d 40 7f cf    	vpermt2ps zmm25,zmm30,zmm23
  a1c19e:	62 c1 7c 48 28 f7    	vmovaps zmm22,zmm15
  a1c1a4:	62 b1 7c 48 28 ed    	vmovaps zmm5,zmm21
  a1c1aa:	62 92 35 48 7f ea    	vpermt2ps zmm5,zmm9,zmm26
  a1c1b0:	62 82 0d 40 7f ea    	vpermt2ps zmm21,zmm30,zmm26
  a1c1b6:	62 12 4d 48 7f ff    	vpermt2ps zmm15,zmm6,zmm31
  a1c1bc:	62 61 fd 48 14 f4    	vunpcklpd zmm30,zmm0,zmm4
  a1c1c2:	62 61 fd 48 15 e4    	vunpckhpd zmm28,zmm0,zmm4
  a1c1c8:	62 e1 ed 48 14 fd    	vunpcklpd zmm23,zmm2,zmm5
  a1c1ce:	62 71 7c 48 28 25 28 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6aac28]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1c1d5:	ac 6a ff 
  a1c1d8:	62 62 1d 48 7f c1    	vpermt2ps zmm24,zmm12,zmm1
  a1c1de:	62 61 ed 48 15 d5    	vunpckhpd zmm26,zmm2,zmm5
  a1c1e4:	62 01 ad 48 14 e9    	vunpcklpd zmm29,zmm10,zmm25
  a1c1ea:	62 01 ad 48 15 c9    	vunpckhpd zmm25,zmm10,zmm25
  a1c1f0:	62 62 1d 48 7f db    	vpermt2ps zmm27,zmm12,zmm3
  a1c1f6:	62 b1 e5 40 14 c5    	vunpcklpd zmm0,zmm19,zmm21
  a1c1fc:	62 b1 e5 40 15 cd    	vunpckhpd zmm1,zmm19,zmm21
  a1c202:	62 81 7c 48 28 c6    	vmovaps zmm16,zmm30
  a1c208:	62 22 4d 48 7f f7    	vpermt2ps zmm30,zmm6,zmm23
  a1c20e:	62 81 7c 48 28 dc    	vmovaps zmm19,zmm28
  a1c214:	62 02 4d 48 7f e2    	vpermt2ps zmm28,zmm6,zmm26
  a1c21a:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  a1c220:	62 f2 1d 48 7f d0    	vpermt2ps zmm2,zmm12,zmm0
  a1c226:	62 62 4d 48 7f e8    	vpermt2ps zmm29,zmm6,zmm0
  a1c22c:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a1c232:	62 f2 1d 48 7f c1    	vpermt2ps zmm0,zmm12,zmm1
  a1c238:	62 82 1d 48 7f f7    	vpermt2ps zmm22,zmm12,zmm31
  a1c23e:	62 62 4d 48 7f c9    	vpermt2ps zmm25,zmm6,zmm1
  a1c244:	62 f1 7c 48 10 49 08 	vmovups zmm1,ZMMWORD PTR [rcx+0x200]
  a1c24b:	62 f1 7c 48 10 59 09 	vmovups zmm3,ZMMWORD PTR [rcx+0x240]
  a1c252:	62 e1 3c 40 59 e9    	vmulps zmm21,zmm24,zmm1
  a1c258:	62 e2 6d 48 bc eb    	vfnmadd231ps zmm21,zmm2,zmm3
  a1c25e:	62 61 6c 48 59 f9    	vmulps zmm31,zmm2,zmm1
  a1c264:	62 f1 7c 48 10 49 0c 	vmovups zmm1,ZMMWORD PTR [rcx+0x300]
  a1c26b:	62 02 65 48 b8 f8    	vfmadd231ps zmm31,zmm3,zmm24
  a1c271:	62 f1 7c 48 10 51 0d 	vmovups zmm2,ZMMWORD PTR [rcx+0x340]
  a1c278:	62 61 24 40 59 c1    	vmulps zmm24,zmm27,zmm1
  a1c27e:	62 71 7c 48 59 d1    	vmulps zmm10,zmm0,zmm1
  a1c284:	62 62 7d 48 bc c2    	vfnmadd231ps zmm24,zmm0,zmm2
  a1c28a:	62 f1 7c 48 10 41 02 	vmovups zmm0,ZMMWORD PTR [rcx+0x80]
  a1c291:	62 12 6d 48 b8 d3    	vfmadd231ps zmm10,zmm2,zmm27
  a1c297:	62 f1 7c 48 10 49 03 	vmovups zmm1,ZMMWORD PTR [rcx+0xc0]
  a1c29e:	62 f1 6c 40 59 d0    	vmulps zmm2,zmm18,zmm0
  a1c2a4:	62 f2 0d 40 bc d1    	vfnmadd231ps zmm2,zmm30,zmm1
  a1c2aa:	62 f1 0c 40 59 c0    	vmulps zmm0,zmm30,zmm0
  a1c2b0:	62 f1 7c 48 10 59 0a 	vmovups zmm3,ZMMWORD PTR [rcx+0x280]
  a1c2b7:	62 b2 75 48 b8 c2    	vfmadd231ps zmm0,zmm1,zmm18
  a1c2bd:	62 f1 7c 48 10 49 0b 	vmovups zmm1,ZMMWORD PTR [rcx+0x2c0]
  a1c2c4:	62 f1 74 40 59 e3    	vmulps zmm4,zmm17,zmm3
  a1c2ca:	62 f1 14 40 59 db    	vmulps zmm3,zmm29,zmm3
  a1c2d0:	62 f2 15 40 bc e1    	vfnmadd231ps zmm4,zmm29,zmm1
  a1c2d6:	62 f1 7c 48 10 69 06 	vmovups zmm5,ZMMWORD PTR [rcx+0x180]
  a1c2dd:	62 b2 75 48 b8 d9    	vfmadd231ps zmm3,zmm1,zmm17
  a1c2e3:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a1c2ea:	62 f1 04 48 59 f5    	vmulps zmm6,zmm15,zmm5
  a1c2f0:	62 f2 1d 40 bc f1    	vfnmadd231ps zmm6,zmm28,zmm1
  a1c2f6:	62 f1 1c 40 59 ed    	vmulps zmm5,zmm28,zmm5
  a1c2fc:	62 f1 7c 48 10 79 0e 	vmovups zmm7,ZMMWORD PTR [rcx+0x380]
  a1c303:	62 d2 75 48 b8 ef    	vfmadd231ps zmm5,zmm1,zmm15
  a1c309:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a1c310:	62 71 0c 48 59 c7    	vmulps zmm8,zmm14,zmm7
  a1c316:	62 f1 34 40 59 ff    	vmulps zmm7,zmm25,zmm7
  a1c31c:	62 72 35 40 bc c1    	vfnmadd231ps zmm8,zmm25,zmm1
  a1c322:	62 d2 75 48 b8 fe    	vfmadd231ps zmm7,zmm1,zmm14
  a1c328:	62 f1 7c 48 10 49 04 	vmovups zmm1,ZMMWORD PTR [rcx+0x100]
  a1c32f:	62 71 7c 48 10 49 05 	vmovups zmm9,ZMMWORD PTR [rcx+0x140]
  a1c336:	62 82 1d 48 7f da    	vpermt2ps zmm19,zmm12,zmm26
  a1c33c:	62 71 4c 40 59 d9    	vmulps zmm11,zmm22,zmm1
  a1c342:	62 52 65 40 bc d9    	vfnmadd231ps zmm11,zmm19,zmm9
  a1c348:	62 f1 64 40 59 c9    	vmulps zmm1,zmm19,zmm1
  a1c34e:	62 b2 35 48 b8 ce    	vfmadd231ps zmm1,zmm9,zmm22
  a1c354:	62 c2 1d 48 7f e5    	vpermt2ps zmm20,zmm12,zmm13
  a1c35a:	62 a2 1d 48 7f c7    	vpermt2ps zmm16,zmm12,zmm23
  a1c360:	62 31 5c 40 58 cd    	vaddps zmm9,zmm20,zmm21
  a1c366:	62 31 5c 40 5c e5    	vsubps zmm12,zmm20,zmm21
  a1c36c:	62 71 6c 48 58 ec    	vaddps zmm13,zmm2,zmm4
  a1c372:	62 f1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm4
  a1c378:	62 f1 7c 48 58 e3    	vaddps zmm4,zmm0,zmm3
  a1c37e:	62 f1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm3
  a1c384:	62 f1 54 48 58 df    	vaddps zmm3,zmm5,zmm7
  a1c38a:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a1c390:	62 d1 4c 48 58 f8    	vaddps zmm7,zmm6,zmm8
  a1c396:	62 d1 4c 48 5c f0    	vsubps zmm6,zmm6,zmm8
  a1c39c:	62 31 04 40 58 c0    	vaddps zmm8,zmm31,zmm16
  a1c3a2:	62 11 7c 40 5c f7    	vsubps zmm14,zmm16,zmm31
  a1c3a8:	62 51 74 48 58 fa    	vaddps zmm15,zmm1,zmm10
  a1c3ae:	62 d1 74 48 5c ca    	vsubps zmm1,zmm1,zmm10
  a1c3b4:	62 11 24 48 58 d0    	vaddps zmm10,zmm11,zmm24
  a1c3ba:	62 51 3c 40 5c db    	vsubps zmm11,zmm24,zmm11
  a1c3c0:	62 e1 6c 48 58 c0    	vaddps zmm16,zmm2,zmm0
  a1c3c6:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a1c3cc:	62 f1 54 48 5c d6    	vsubps zmm2,zmm5,zmm6
  a1c3d2:	62 f1 4c 48 58 ed    	vaddps zmm5,zmm6,zmm5
  a1c3d8:	62 d1 34 48 58 f2    	vaddps zmm6,zmm9,zmm10
  a1c3de:	62 51 34 48 5c ca    	vsubps zmm9,zmm9,zmm10
  a1c3e4:	62 71 5c 48 58 d3    	vaddps zmm10,zmm4,zmm3
  a1c3ea:	62 f1 5c 48 5c db    	vsubps zmm3,zmm4,zmm3
  a1c3f0:	62 d1 04 48 58 e0    	vaddps zmm4,zmm15,zmm8
  a1c3f6:	62 51 3c 48 5c c7    	vsubps zmm8,zmm8,zmm15
  a1c3fc:	62 71 14 48 58 ff    	vaddps zmm15,zmm13,zmm7
  a1c402:	62 d1 44 48 5c fd    	vsubps zmm7,zmm7,zmm13
  a1c408:	62 71 1c 48 58 e9    	vaddps zmm13,zmm12,zmm1
  a1c40e:	62 e2 7d 48 18 0d 84 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff658f84]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a1c415:	8f 65 ff 
  a1c418:	62 a1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm17
  a1c41e:	62 b1 6c 48 59 d1    	vmulps zmm2,zmm2,zmm17
  a1c424:	62 f1 1c 48 5c c9    	vsubps zmm1,zmm12,zmm1
  a1c42a:	62 51 24 48 58 e6    	vaddps zmm12,zmm11,zmm14
  a1c430:	62 b1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm17
  a1c436:	62 b1 54 48 59 e9    	vmulps zmm5,zmm5,zmm17
  a1c43c:	62 51 0c 48 5c db    	vsubps zmm11,zmm14,zmm11
  a1c442:	62 71 7c 48 5c f5    	vsubps zmm14,zmm0,zmm5
  a1c448:	62 f1 7c 48 58 c5    	vaddps zmm0,zmm0,zmm5
  a1c44e:	62 f1 7c 40 58 ea    	vaddps zmm5,zmm16,zmm2
  a1c454:	62 b1 6c 48 5c d0    	vsubps zmm2,zmm2,zmm16
  a1c45a:	62 e1 14 48 58 c5    	vaddps zmm16,zmm13,zmm5
  a1c460:	62 f1 14 48 5c ed    	vsubps zmm5,zmm13,zmm5
  a1c466:	62 71 34 48 58 eb    	vaddps zmm13,zmm9,zmm3
  a1c46c:	62 f1 34 48 5c db    	vsubps zmm3,zmm9,zmm3
  a1c472:	62 51 1c 48 58 ce    	vaddps zmm9,zmm12,zmm14
  a1c478:	62 51 1c 48 5c e6    	vsubps zmm12,zmm12,zmm14
  a1c47e:	62 71 3c 48 58 f7    	vaddps zmm14,zmm8,zmm7
  a1c484:	62 f1 3c 48 5c ff    	vsubps zmm7,zmm8,zmm7
  a1c48a:	62 71 74 48 58 c0    	vaddps zmm8,zmm1,zmm0
  a1c490:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a1c496:	62 d1 5c 48 5c ca    	vsubps zmm1,zmm4,zmm10
  a1c49c:	62 d1 5c 48 58 e2    	vaddps zmm4,zmm4,zmm10
  a1c4a2:	62 71 24 48 58 d2    	vaddps zmm10,zmm11,zmm2
  a1c4a8:	62 f1 24 48 5c d2    	vsubps zmm2,zmm11,zmm2
  a1c4ae:	62 51 4c 48 5c df    	vsubps zmm11,zmm6,zmm15
  a1c4b4:	62 d1 4c 48 58 f7    	vaddps zmm6,zmm6,zmm15
  a1c4ba:	62 71 7c 48 28 fc    	vmovaps zmm15,zmm4
  a1c4c0:	62 e1 7c 28 28 0d 76 	vmovaps ymm17,YMMWORD PTR [rip+0xffffffffff65a776]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a1c4c7:	a7 65 ff 
  a1c4ca:	62 72 75 40 7f fe    	vpermt2ps zmm15,zmm17,zmm6
  a1c4d0:	62 e1 7c 48 28 15 66 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff673566]        # 8fa40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cef0>
  a1c4d7:	35 67 ff 
  a1c4da:	62 f2 6d 40 7f e6    	vpermt2ps zmm4,zmm18,zmm6
  a1c4e0:	62 f1 7c 48 11 24 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm4
  a1c4e7:	c5 7c 11 7c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm15
  a1c4ed:	62 d1 7c 48 28 e1    	vmovaps zmm4,zmm9
  a1c4f3:	62 b2 75 40 7f e0    	vpermt2ps zmm4,zmm17,zmm16
  a1c4f9:	62 32 6d 40 7f c8    	vpermt2ps zmm9,zmm18,zmm16
  a1c4ff:	62 71 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x60],zmm9
  a1c506:	60 00 00 00 
  a1c50a:	c5 fc 11 a4 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm4
  a1c511:	00 00 
  a1c513:	62 d1 7c 48 28 e6    	vmovaps zmm4,zmm14
  a1c519:	62 d2 75 40 7f e5    	vpermt2ps zmm4,zmm17,zmm13
  a1c51f:	62 52 6d 40 7f f5    	vpermt2ps zmm14,zmm18,zmm13
  a1c525:	62 71 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm14
  a1c52c:	03 
  a1c52d:	62 d1 7c 48 28 f2    	vmovaps zmm6,zmm10
  a1c533:	62 d2 75 40 7f f0    	vpermt2ps zmm6,zmm17,zmm8
  a1c539:	62 52 6d 40 7f d0    	vpermt2ps zmm10,zmm18,zmm8
  a1c53f:	c5 fc 11 a4 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm4
  a1c546:	00 00 
  a1c548:	62 71 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x120],zmm10
  a1c54f:	20 01 00 00 
  a1c553:	c5 fc 11 b4 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm6
  a1c55a:	00 00 
  a1c55c:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a1c562:	62 d2 75 40 7f e3    	vpermt2ps zmm4,zmm17,zmm11
  a1c568:	62 d2 6d 40 7f cb    	vpermt2ps zmm1,zmm18,zmm11
  a1c56e:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm1
  a1c575:	06 
  a1c576:	c5 fc 11 a4 16 c0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm4
  a1c57d:	00 00 
  a1c57f:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a1c585:	62 f2 75 40 7f cd    	vpermt2ps zmm1,zmm17,zmm5
  a1c58b:	62 72 6d 40 7f e5    	vpermt2ps zmm12,zmm18,zmm5
  a1c591:	62 71 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm12
  a1c598:	e0 01 00 00 
  a1c59c:	c5 fc 11 8c 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm1
  a1c5a3:	00 00 
  a1c5a5:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a1c5ab:	62 f2 75 40 7f cb    	vpermt2ps zmm1,zmm17,zmm3
  a1c5b1:	62 f2 6d 40 7f fb    	vpermt2ps zmm7,zmm18,zmm3
  a1c5b7:	62 f1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm7
  a1c5be:	09 
  a1c5bf:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a1c5c5:	62 f2 75 40 7f d8    	vpermt2ps zmm3,zmm17,zmm0
  a1c5cb:	62 f2 6d 40 7f d0    	vpermt2ps zmm2,zmm18,zmm0
  a1c5d1:	c5 fc 11 8c 16 80 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x280],ymm1
  a1c5d8:	00 00 
  a1c5da:	62 f1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2a0],zmm2
  a1c5e1:	a0 02 00 00 
  a1c5e5:	c5 fc 11 9c 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm3
  a1c5ec:	00 00 
  a1c5ee:	48 81 c2 00 03 00 00 	add    rdx,0x300
  a1c5f5:	48 39 d0             	cmp    rax,rdx
  a1c5f8:	0f 85 32 f6 ff ff    	jne    a1bc30 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a1c5fe:	48 89 ec             	mov    rsp,rbp
  a1c601:	5d                   	pop    rbp
  a1c602:	c5 f8 77             	vzeroupper
  a1c605:	c3                   	ret
