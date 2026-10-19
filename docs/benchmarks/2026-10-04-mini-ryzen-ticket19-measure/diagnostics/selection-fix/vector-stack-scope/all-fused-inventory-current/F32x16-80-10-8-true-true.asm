
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a2ec40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a2ec40:	55                   	push   rbp
  a2ec41:	48 89 e5             	mov    rbp,rsp
  a2ec44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a2ec48:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a2ec4f:	62 f1 7c 48 28 05 27 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff698327]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a2ec56:	83 69 ff 
  a2ec59:	48 c1 e2 07          	shl    rdx,0x7
  a2ec5d:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a2ec61:	31 d2                	xor    edx,edx
  a2ec63:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a2ec68:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a2ec6d:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a2ec71:	62 71 7c 48 28 1d c5 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff661dc5]        # 90a40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1def0>
  a2ec78:	1d 66 ff 
  a2ec7b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  a2ec80:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a2ec85:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a2ec8a:	62 71 7c 48 10 3c 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1]
  a2ec91:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x40]
  a2ec98:	01 
  a2ec99:	62 e1 7c 48 10 64 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x80]
  a2eca0:	02 
  a2eca1:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a2eca8:	03 
  a2eca9:	62 51 7c 48 28 f7    	vmovaps zmm14,zmm15
  a2ecaf:	62 72 25 48 7f fe    	vpermt2ps zmm15,zmm11,zmm6
  a2ecb5:	62 21 7c 48 28 ca    	vmovaps zmm25,zmm18
  a2ecbb:	62 e2 25 48 7f d6    	vpermt2ps zmm18,zmm11,zmm6
  a2ecc1:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a2ecc7:	62 e2 25 48 7f e6    	vpermt2ps zmm20,zmm11,zmm6
  a2eccd:	62 a1 7c 48 28 fb    	vmovaps zmm23,zmm19
  a2ecd3:	62 f1 7c 48 28 2d 23 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff661d23]        # 90a00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1deb0>
  a2ecda:	1d 66 ff 
  a2ecdd:	62 62 55 48 7f ce    	vpermt2ps zmm25,zmm5,zmm6
  a2ece3:	62 e2 25 48 7f de    	vpermt2ps zmm19,zmm11,zmm6
  a2ece9:	62 61 7c 48 10 54 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x100]
  a2ecf0:	04 
  a2ecf1:	62 91 7c 48 28 d2    	vmovaps zmm2,zmm26
  a2ecf7:	62 e2 55 48 7f f6    	vpermt2ps zmm22,zmm5,zmm6
  a2ecfd:	62 62 25 48 7f d6    	vpermt2ps zmm26,zmm11,zmm6
  a2ed03:	62 e1 7c 48 10 4c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x140]
  a2ed0a:	05 
  a2ed0b:	62 a1 7c 48 28 c1    	vmovaps zmm16,zmm17
  a2ed11:	62 e2 55 48 7f fe    	vpermt2ps zmm23,zmm5,zmm6
  a2ed17:	62 e2 25 48 7f ce    	vpermt2ps zmm17,zmm11,zmm6
  a2ed1d:	62 61 7c 48 10 64 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x180]
  a2ed24:	06 
  a2ed25:	62 01 7c 48 28 f4    	vmovaps zmm30,zmm28
  a2ed2b:	62 f2 55 48 7f d6    	vpermt2ps zmm2,zmm5,zmm6
  a2ed31:	62 62 25 48 7f e6    	vpermt2ps zmm28,zmm11,zmm6
  a2ed37:	62 f1 7c 48 10 5c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a2ed3e:	07 
  a2ed3f:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a2ed45:	62 62 55 48 7f f6    	vpermt2ps zmm30,zmm5,zmm6
  a2ed4b:	62 f2 25 48 7f de    	vpermt2ps zmm3,zmm11,zmm6
  a2ed51:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x200]
  a2ed58:	08 
  a2ed59:	62 61 7c 48 28 c4    	vmovaps zmm24,zmm4
  a2ed5f:	62 72 55 48 7f e6    	vpermt2ps zmm12,zmm5,zmm6
  a2ed65:	62 f2 25 48 7f e6    	vpermt2ps zmm4,zmm11,zmm6
  a2ed6b:	62 71 7c 48 10 44 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x240]
  a2ed72:	09 
  a2ed73:	62 d1 7c 48 28 c8    	vmovaps zmm1,zmm8
  a2ed79:	62 62 55 48 7f c6    	vpermt2ps zmm24,zmm5,zmm6
  a2ed7f:	62 f2 55 48 7f ce    	vpermt2ps zmm1,zmm5,zmm6
  a2ed85:	62 72 25 48 7f c6    	vpermt2ps zmm8,zmm11,zmm6
  a2ed8b:	62 61 5c 40 58 fc    	vaddps zmm31,zmm20,zmm4
  a2ed91:	62 01 2c 40 58 dc    	vaddps zmm27,zmm26,zmm28
  a2ed97:	62 81 4c 40 58 e8    	vaddps zmm21,zmm22,zmm24
  a2ed9d:	62 01 4c 40 5c e8    	vsubps zmm29,zmm22,zmm24
  a2eda3:	62 01 6c 48 58 c6    	vaddps zmm24,zmm2,zmm30
  a2eda9:	62 01 6c 48 5c f6    	vsubps zmm30,zmm2,zmm30
  a2edaf:	62 a1 1c 48 58 f7    	vaddps zmm22,zmm12,zmm23
  a2edb5:	62 31 1c 48 5c cf    	vsubps zmm9,zmm12,zmm23
  a2edbb:	62 81 74 48 58 f9    	vaddps zmm23,zmm1,zmm25
  a2edc1:	62 11 74 48 5c d1    	vsubps zmm10,zmm1,zmm25
  a2edc7:	62 31 64 48 58 e3    	vaddps zmm12,zmm3,zmm19
  a2edcd:	62 f1 5c 40 5c d4    	vsubps zmm2,zmm20,zmm4
  a2edd3:	62 01 2c 40 5c d4    	vsubps zmm26,zmm26,zmm28
  a2edd9:	62 91 04 48 58 e7    	vaddps zmm4,zmm15,zmm31
  a2eddf:	62 21 3c 48 58 e2    	vaddps zmm28,zmm8,zmm18
  a2ede5:	62 a1 64 48 5c e3    	vsubps zmm20,zmm3,zmm19
  a2edeb:	62 f2 7d 48 18 3d f3 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff6468f3]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a2edf2:	68 64 ff 
  a2edf5:	62 e1 7c 48 28 df    	vmovaps zmm19,zmm7
  a2edfb:	62 c2 05 40 a8 df    	vfmadd213ps zmm19,zmm31,zmm15
  a2ee01:	62 b1 3c 48 5c ca    	vsubps zmm1,zmm8,zmm18
  a2ee07:	62 e1 7c 48 28 d7    	vmovaps zmm18,zmm7
  a2ee0d:	62 72 7d 48 18 2d 2d 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff64682d]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a2ee14:	68 64 ff 
  a2ee17:	62 12 15 48 bc ff    	vfnmadd231ps zmm15,zmm13,zmm31
  a2ee1d:	62 d1 74 40 58 dc    	vaddps zmm3,zmm17,zmm12
  a2ee23:	62 a2 1d 48 a8 d1    	vfmadd213ps zmm18,zmm12,zmm17
  a2ee29:	62 c2 15 48 bc cc    	vfnmadd231ps zmm17,zmm13,zmm12
  a2ee2f:	62 72 55 48 7f f6    	vpermt2ps zmm14,zmm5,zmm6
  a2ee35:	62 e2 55 48 7f c6    	vpermt2ps zmm16,zmm5,zmm6
  a2ee3b:	62 11 5c 48 58 e3    	vaddps zmm12,zmm4,zmm27
  a2ee41:	62 01 64 48 58 cc    	vaddps zmm25,zmm3,zmm28
  a2ee47:	62 c2 25 40 bc dd    	vfnmadd231ps zmm19,zmm27,zmm13
  a2ee4d:	62 12 45 48 b8 fb    	vfmadd231ps zmm15,zmm7,zmm27
  a2ee53:	62 62 7d 48 18 3d fb 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff6468fb]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a2ee5a:	68 64 ff 
  a2ee5d:	62 91 0c 40 59 df    	vmulps zmm3,zmm30,zmm31
  a2ee63:	62 c2 1d 40 bc d5    	vfnmadd231ps zmm18,zmm28,zmm13
  a2ee69:	62 82 45 48 b8 cc    	vfmadd231ps zmm17,zmm7,zmm28
  a2ee6f:	62 f2 7d 48 18 2d 27 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff646527]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a2ee76:	65 64 ff 
  a2ee79:	62 f2 15 40 b8 dd    	vfmadd231ps zmm3,zmm29,zmm5
  a2ee7f:	62 91 2c 48 59 e7    	vmulps zmm4,zmm10,zmm31
  a2ee85:	62 f2 35 48 b8 e5    	vfmadd231ps zmm4,zmm9,zmm5
  a2ee8b:	62 11 14 40 59 c7    	vmulps zmm8,zmm29,zmm31
  a2ee91:	62 12 55 48 bc c6    	vfnmadd231ps zmm8,zmm5,zmm30
  a2ee97:	62 61 7c 48 28 df    	vmovaps zmm27,zmm7
  a2ee9d:	62 11 34 48 59 cf    	vmulps zmm9,zmm9,zmm31
  a2eea3:	62 52 55 48 bc ca    	vfnmadd231ps zmm9,zmm5,zmm10
  a2eea9:	62 31 0c 48 58 d5    	vaddps zmm10,zmm14,zmm21
  a2eeaf:	62 42 55 40 a8 de    	vfmadd213ps zmm27,zmm21,zmm14
  a2eeb5:	62 32 15 48 bc f5    	vfnmadd231ps zmm14,zmm13,zmm21
  a2eebb:	62 a1 7c 40 58 ee    	vaddps zmm21,zmm16,zmm22
  a2eec1:	62 11 2c 48 58 d0    	vaddps zmm10,zmm10,zmm24
  a2eec7:	62 42 3d 40 bc dd    	vfnmadd231ps zmm27,zmm24,zmm13
  a2eecd:	62 12 45 48 b8 f0    	vfmadd231ps zmm14,zmm7,zmm24
  a2eed3:	62 01 2c 40 59 e7    	vmulps zmm28,zmm26,zmm31
  a2eed9:	62 62 6d 48 b8 e5    	vfmadd231ps zmm28,zmm2,zmm5
  a2eedf:	62 91 6c 48 59 d7    	vmulps zmm2,zmm2,zmm31
  a2eee5:	62 92 55 48 bc d2    	vfnmadd231ps zmm2,zmm5,zmm26
  a2eeeb:	62 61 7c 48 28 d7    	vmovaps zmm26,zmm7
  a2eef1:	62 a1 54 40 58 ef    	vaddps zmm21,zmm21,zmm23
  a2eef7:	62 22 4d 40 a8 d0    	vfmadd213ps zmm26,zmm22,zmm16
  a2eefd:	62 a2 15 48 bc c6    	vfnmadd231ps zmm16,zmm13,zmm22
  a2ef03:	62 81 74 48 59 f7    	vmulps zmm22,zmm1,zmm31
  a2ef09:	62 42 45 40 bc d5    	vfnmadd231ps zmm26,zmm23,zmm13
  a2ef0f:	62 e2 5d 40 b8 f5    	vfmadd231ps zmm22,zmm20,zmm5
  a2ef15:	62 a2 45 48 b8 c7    	vfmadd231ps zmm16,zmm7,zmm23
  a2ef1b:	62 81 5c 40 59 e7    	vmulps zmm20,zmm20,zmm31
  a2ef21:	62 01 1c 48 58 c1    	vaddps zmm24,zmm12,zmm25
  a2ef27:	62 e2 55 48 bc e1    	vfnmadd231ps zmm20,zmm5,zmm1
  a2ef2d:	62 d1 04 48 58 c8    	vaddps zmm1,zmm15,zmm8
  a2ef33:	62 51 04 48 5c c0    	vsubps zmm8,zmm15,zmm8
  a2ef39:	62 51 74 40 58 f9    	vaddps zmm15,zmm17,zmm9
  a2ef3f:	62 51 74 40 5c c9    	vsubps zmm9,zmm17,zmm9
  a2ef45:	62 e1 0c 48 5c ca    	vsubps zmm17,zmm14,zmm2
  a2ef4b:	62 d1 6c 48 58 d6    	vaddps zmm2,zmm2,zmm14
  a2ef51:	62 31 7c 40 5c f4    	vsubps zmm14,zmm16,zmm20
  a2ef57:	62 a1 5c 40 58 c0    	vaddps zmm16,zmm20,zmm16
  a2ef5d:	62 e1 64 40 58 fb    	vaddps zmm23,zmm19,zmm3
  a2ef63:	62 f1 64 40 5c db    	vsubps zmm3,zmm19,zmm3
  a2ef69:	62 e1 6c 40 58 dc    	vaddps zmm19,zmm18,zmm4
  a2ef6f:	62 f1 6c 40 5c e4    	vsubps zmm4,zmm18,zmm4
  a2ef75:	62 81 24 40 5c d4    	vsubps zmm18,zmm27,zmm28
  a2ef7b:	62 01 1c 40 58 e3    	vaddps zmm28,zmm28,zmm27
  a2ef81:	62 21 2c 40 5c ee    	vsubps zmm29,zmm26,zmm22
  a2ef87:	62 01 4c 40 58 f2    	vaddps zmm30,zmm22,zmm26
  a2ef8d:	62 a1 2c 48 58 e5    	vaddps zmm20,zmm10,zmm21
  a2ef93:	62 11 1c 48 5c e1    	vsubps zmm12,zmm12,zmm25
  a2ef99:	62 21 44 40 5c fb    	vsubps zmm31,zmm23,zmm19
  a2ef9f:	62 21 2c 48 5c dd    	vsubps zmm27,zmm10,zmm21
  a2efa5:	62 81 6c 40 5c f5    	vsubps zmm22,zmm18,zmm29
  a2efab:	62 31 44 40 58 d3    	vaddps zmm10,zmm23,zmm19
  a2efb1:	62 51 74 48 58 ef    	vaddps zmm13,zmm1,zmm15
  a2efb7:	62 81 6c 40 58 ed    	vaddps zmm21,zmm18,zmm29
  a2efbd:	62 41 74 40 58 ce    	vaddps zmm25,zmm17,zmm14
  a2efc3:	62 51 74 48 5c ff    	vsubps zmm15,zmm1,zmm15
  a2efc9:	62 41 3c 48 5c e9    	vsubps zmm29,zmm8,zmm9
  a2efcf:	62 c1 74 40 5c fe    	vsubps zmm23,zmm17,zmm14
  a2efd5:	62 21 6c 48 5c d0    	vsubps zmm26,zmm2,zmm16
  a2efdb:	62 51 3c 48 58 c1    	vaddps zmm8,zmm8,zmm9
  a2efe1:	62 71 64 48 58 cc    	vaddps zmm9,zmm3,zmm4
  a2efe7:	62 b1 6c 48 58 c8    	vaddps zmm1,zmm2,zmm16
  a2efed:	62 81 1c 40 58 de    	vaddps zmm19,zmm28,zmm30
  a2eff3:	62 f1 64 48 5c d4    	vsubps zmm2,zmm3,zmm4
  a2eff9:	62 91 1c 40 5c de    	vsubps zmm3,zmm28,zmm30
  a2efff:	62 42 7d 48 7f c0    	vpermt2ps zmm24,zmm0,zmm8
  a2f005:	62 62 7d 48 7f fa    	vpermt2ps zmm31,zmm0,zmm2
  a2f00b:	62 72 7d 48 7f ee    	vpermt2ps zmm13,zmm0,zmm6
  a2f011:	62 62 7d 48 7f ee    	vpermt2ps zmm29,zmm0,zmm6
  a2f017:	62 72 7d 48 7f ce    	vpermt2ps zmm9,zmm0,zmm6
  a2f01d:	62 72 7d 48 7f e6    	vpermt2ps zmm12,zmm0,zmm6
  a2f023:	62 72 7d 48 7f d6    	vpermt2ps zmm10,zmm0,zmm6
  a2f029:	62 72 7d 48 7f fe    	vpermt2ps zmm15,zmm0,zmm6
  a2f02f:	62 91 7c 48 28 d0    	vmovaps zmm2,zmm24
  a2f035:	62 f1 7c 48 28 3d 01 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff697f01]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a2f03c:	7f 69 ff 
  a2f03f:	62 42 45 48 7f c1    	vpermt2ps zmm24,zmm7,zmm9
  a2f045:	62 91 7c 48 28 e7    	vmovaps zmm4,zmm31
  a2f04b:	62 61 7c 48 28 35 ab 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff697eab]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a2f052:	7e 69 ff 
  a2f055:	62 d2 0d 40 7f d1    	vpermt2ps zmm2,zmm30,zmm9
  a2f05b:	62 d2 0d 40 7f e4    	vpermt2ps zmm4,zmm30,zmm12
  a2f061:	62 42 45 48 7f fc    	vpermt2ps zmm31,zmm7,zmm12
  a2f067:	62 51 7c 48 28 c5    	vmovaps zmm8,zmm13
  a2f06d:	62 52 0d 40 7f c2    	vpermt2ps zmm8,zmm30,zmm10
  a2f073:	62 52 45 48 7f ea    	vpermt2ps zmm13,zmm7,zmm10
  a2f079:	62 11 7c 48 28 cd    	vmovaps zmm9,zmm29
  a2f07f:	62 42 45 48 7f ef    	vpermt2ps zmm29,zmm7,zmm15
  a2f085:	62 52 0d 40 7f cf    	vpermt2ps zmm9,zmm30,zmm15
  a2f08b:	62 c1 ed 48 14 d0    	vunpcklpd zmm18,zmm2,zmm8
  a2f091:	62 c1 ed 48 15 c0    	vunpckhpd zmm16,zmm2,zmm8
  a2f097:	62 c1 bd 40 14 cd    	vunpcklpd zmm17,zmm24,zmm13
  a2f09d:	62 51 dd 48 14 f1    	vunpcklpd zmm14,zmm4,zmm9
  a2f0a3:	62 51 bd 40 15 fd    	vunpckhpd zmm15,zmm24,zmm13
  a2f0a9:	62 91 85 40 14 d5    	vunpcklpd zmm2,zmm31,zmm29
  a2f0af:	62 11 85 40 15 c5    	vunpckhpd zmm8,zmm31,zmm29
  a2f0b5:	62 51 dd 48 15 e1    	vunpckhpd zmm12,zmm4,zmm9
  a2f0bb:	62 21 7c 48 28 c1    	vmovaps zmm24,zmm17
  a2f0c1:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a2f0c7:	62 e2 7d 48 7f f3    	vpermt2ps zmm22,zmm0,zmm3
  a2f0cd:	62 71 7c 48 28 15 69 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff697d69]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a2f0d4:	7d 69 ff 
  a2f0d7:	62 e2 2d 48 7f ca    	vpermt2ps zmm17,zmm10,zmm2
  a2f0dd:	62 62 7d 48 7f ce    	vpermt2ps zmm25,zmm0,zmm6
  a2f0e3:	62 62 7d 48 7f d6    	vpermt2ps zmm26,zmm0,zmm6
  a2f0e9:	62 e2 7d 48 7f de    	vpermt2ps zmm19,zmm0,zmm6
  a2f0ef:	62 41 7c 48 28 e7    	vmovaps zmm28,zmm15
  a2f0f5:	62 62 7d 48 7f de    	vpermt2ps zmm27,zmm0,zmm6
  a2f0fb:	62 e2 7d 48 7f ee    	vpermt2ps zmm21,zmm0,zmm6
  a2f101:	62 e2 7d 48 7f fe    	vpermt2ps zmm23,zmm0,zmm6
  a2f107:	62 52 2d 48 7f f8    	vpermt2ps zmm15,zmm10,zmm8
  a2f10d:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  a2f113:	62 b2 0d 40 7f cb    	vpermt2ps zmm1,zmm30,zmm19
  a2f119:	62 a2 45 48 7f e3    	vpermt2ps zmm20,zmm7,zmm19
  a2f11f:	62 a1 7c 48 28 da    	vmovaps zmm19,zmm18
  a2f125:	62 b1 7c 48 28 de    	vmovaps zmm3,zmm22
  a2f12b:	62 92 0d 40 7f db    	vpermt2ps zmm3,zmm30,zmm27
  a2f131:	62 82 45 48 7f f3    	vpermt2ps zmm22,zmm7,zmm27
  a2f137:	62 c2 2d 48 7f d6    	vpermt2ps zmm18,zmm10,zmm14
  a2f13d:	62 91 7c 48 28 e1    	vmovaps zmm4,zmm25
  a2f143:	62 b2 0d 40 7f e5    	vpermt2ps zmm4,zmm30,zmm21
  a2f149:	62 22 45 48 7f cd    	vpermt2ps zmm25,zmm7,zmm21
  a2f14f:	62 a1 7c 48 28 e8    	vmovaps zmm21,zmm16
  a2f155:	62 11 7c 48 28 ca    	vmovaps zmm9,zmm26
  a2f15b:	62 32 0d 40 7f cf    	vpermt2ps zmm9,zmm30,zmm23
  a2f161:	62 22 45 48 7f d7    	vpermt2ps zmm26,zmm7,zmm23
  a2f167:	62 c2 2d 48 7f c4    	vpermt2ps zmm16,zmm10,zmm12
  a2f16d:	62 61 f5 48 14 fc    	vunpcklpd zmm31,zmm1,zmm4
  a2f173:	62 61 f5 48 15 ec    	vunpckhpd zmm29,zmm1,zmm4
  a2f179:	62 c1 e5 48 14 f9    	vunpcklpd zmm23,zmm3,zmm9
  a2f17f:	62 f1 7c 48 28 3d 77 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff697c77]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2f186:	7c 69 ff 
  a2f189:	62 62 45 48 7f c2    	vpermt2ps zmm24,zmm7,zmm2
  a2f18f:	62 41 e5 48 15 d9    	vunpckhpd zmm27,zmm3,zmm9
  a2f195:	62 01 dd 40 14 f1    	vunpcklpd zmm30,zmm20,zmm25
  a2f19b:	62 01 dd 40 15 c9    	vunpckhpd zmm25,zmm20,zmm25
  a2f1a1:	62 42 45 48 7f e0    	vpermt2ps zmm28,zmm7,zmm8
  a2f1a7:	62 91 cd 40 14 ca    	vunpcklpd zmm1,zmm22,zmm26
  a2f1ad:	62 91 cd 40 15 d2    	vunpckhpd zmm2,zmm22,zmm26
  a2f1b3:	62 81 7c 48 28 e7    	vmovaps zmm20,zmm31
  a2f1b9:	62 22 2d 48 7f ff    	vpermt2ps zmm31,zmm10,zmm23
  a2f1bf:	62 81 7c 48 28 f5    	vmovaps zmm22,zmm29
  a2f1c5:	62 02 2d 48 7f eb    	vpermt2ps zmm29,zmm10,zmm27
  a2f1cb:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a2f1d1:	62 f2 45 48 7f d9    	vpermt2ps zmm3,zmm7,zmm1
  a2f1d7:	62 62 2d 48 7f f1    	vpermt2ps zmm30,zmm10,zmm1
  a2f1dd:	62 91 7c 48 28 e1    	vmovaps zmm4,zmm25
  a2f1e3:	62 f2 45 48 7f e2    	vpermt2ps zmm4,zmm7,zmm2
  a2f1e9:	62 c2 45 48 7f ec    	vpermt2ps zmm21,zmm7,zmm12
  a2f1ef:	62 62 2d 48 7f ca    	vpermt2ps zmm25,zmm10,zmm2
  a2f1f5:	62 f1 7c 48 10 49 08 	vmovups zmm1,ZMMWORD PTR [rcx+0x200]
  a2f1fc:	62 f1 7c 48 10 51 09 	vmovups zmm2,ZMMWORD PTR [rcx+0x240]
  a2f203:	62 61 3c 40 59 d1    	vmulps zmm26,zmm24,zmm1
  a2f209:	62 62 65 48 bc d2    	vfnmadd231ps zmm26,zmm3,zmm2
  a2f20f:	62 71 64 48 59 e1    	vmulps zmm12,zmm3,zmm1
  a2f215:	62 f1 7c 48 10 49 0c 	vmovups zmm1,ZMMWORD PTR [rcx+0x300]
  a2f21c:	62 12 6d 48 b8 e0    	vfmadd231ps zmm12,zmm2,zmm24
  a2f222:	62 f1 7c 48 10 51 0d 	vmovups zmm2,ZMMWORD PTR [rcx+0x340]
  a2f229:	62 61 1c 40 59 c1    	vmulps zmm24,zmm28,zmm1
  a2f22f:	62 f1 5c 48 59 c9    	vmulps zmm1,zmm4,zmm1
  a2f235:	62 62 5d 48 bc c2    	vfnmadd231ps zmm24,zmm4,zmm2
  a2f23b:	62 f1 7c 48 10 59 02 	vmovups zmm3,ZMMWORD PTR [rcx+0x80]
  a2f242:	62 92 6d 48 b8 cc    	vfmadd231ps zmm1,zmm2,zmm28
  a2f248:	62 f1 7c 48 10 51 03 	vmovups zmm2,ZMMWORD PTR [rcx+0xc0]
  a2f24f:	62 f1 6c 40 59 e3    	vmulps zmm4,zmm18,zmm3
  a2f255:	62 f2 05 40 bc e2    	vfnmadd231ps zmm4,zmm31,zmm2
  a2f25b:	62 f1 04 40 59 db    	vmulps zmm3,zmm31,zmm3
  a2f261:	62 71 7c 48 10 41 0a 	vmovups zmm8,ZMMWORD PTR [rcx+0x280]
  a2f268:	62 b2 6d 48 b8 da    	vfmadd231ps zmm3,zmm2,zmm18
  a2f26e:	62 f1 7c 48 10 51 0b 	vmovups zmm2,ZMMWORD PTR [rcx+0x2c0]
  a2f275:	62 51 74 40 59 c8    	vmulps zmm9,zmm17,zmm8
  a2f27b:	62 51 0c 40 59 c0    	vmulps zmm8,zmm30,zmm8
  a2f281:	62 72 0d 40 bc ca    	vfnmadd231ps zmm9,zmm30,zmm2
  a2f287:	62 71 7c 48 10 51 06 	vmovups zmm10,ZMMWORD PTR [rcx+0x180]
  a2f28e:	62 32 6d 48 b8 c1    	vfmadd231ps zmm8,zmm2,zmm17
  a2f294:	62 f1 7c 48 10 51 07 	vmovups zmm2,ZMMWORD PTR [rcx+0x1c0]
  a2f29b:	62 51 7c 40 59 ea    	vmulps zmm13,zmm16,zmm10
  a2f2a1:	62 72 15 40 bc ea    	vfnmadd231ps zmm13,zmm29,zmm2
  a2f2a7:	62 51 14 40 59 d2    	vmulps zmm10,zmm29,zmm10
  a2f2ad:	62 e1 7c 48 10 49 0e 	vmovups zmm17,ZMMWORD PTR [rcx+0x380]
  a2f2b4:	62 32 6d 48 b8 d0    	vfmadd231ps zmm10,zmm2,zmm16
  a2f2ba:	62 f1 7c 48 10 51 0f 	vmovups zmm2,ZMMWORD PTR [rcx+0x3c0]
  a2f2c1:	62 a1 04 48 59 c1    	vmulps zmm16,zmm15,zmm17
  a2f2c7:	62 a1 34 40 59 c9    	vmulps zmm17,zmm25,zmm17
  a2f2cd:	62 e2 35 40 bc c2    	vfnmadd231ps zmm16,zmm25,zmm2
  a2f2d3:	62 c2 6d 48 b8 cf    	vfmadd231ps zmm17,zmm2,zmm15
  a2f2d9:	62 f1 7c 48 10 51 04 	vmovups zmm2,ZMMWORD PTR [rcx+0x100]
  a2f2e0:	62 71 7c 48 10 79 05 	vmovups zmm15,ZMMWORD PTR [rcx+0x140]
  a2f2e7:	62 82 45 48 7f f3    	vpermt2ps zmm22,zmm7,zmm27
  a2f2ed:	62 e1 54 40 59 d2    	vmulps zmm18,zmm21,zmm2
  a2f2f3:	62 c2 4d 40 bc d7    	vfnmadd231ps zmm18,zmm22,zmm15
  a2f2f9:	62 f1 4c 40 59 d2    	vmulps zmm2,zmm22,zmm2
  a2f2ff:	62 b2 05 48 b8 d5    	vfmadd231ps zmm2,zmm15,zmm21
  a2f305:	62 c2 45 48 7f de    	vpermt2ps zmm19,zmm7,zmm14
  a2f30b:	62 a2 45 48 7f e7    	vpermt2ps zmm20,zmm7,zmm23
  a2f311:	62 11 64 40 58 f2    	vaddps zmm14,zmm19,zmm26
  a2f317:	62 11 64 40 5c fa    	vsubps zmm15,zmm19,zmm26
  a2f31d:	62 c1 5c 48 58 d9    	vaddps zmm19,zmm4,zmm9
  a2f323:	62 d1 5c 48 5c e1    	vsubps zmm4,zmm4,zmm9
  a2f329:	62 51 64 48 58 c8    	vaddps zmm9,zmm3,zmm8
  a2f32f:	62 d1 64 48 5c d8    	vsubps zmm3,zmm3,zmm8
  a2f335:	62 31 2c 48 58 c1    	vaddps zmm8,zmm10,zmm17
  a2f33b:	62 31 2c 48 5c d1    	vsubps zmm10,zmm10,zmm17
  a2f341:	62 a1 14 48 58 c8    	vaddps zmm17,zmm13,zmm16
  a2f347:	62 31 14 48 5c e8    	vsubps zmm13,zmm13,zmm16
  a2f34d:	62 a1 1c 48 58 c4    	vaddps zmm16,zmm12,zmm20
  a2f353:	62 51 5c 40 5c e4    	vsubps zmm12,zmm20,zmm12
  a2f359:	62 e1 6c 48 58 e1    	vaddps zmm20,zmm2,zmm1
  a2f35f:	62 f1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm1
  a2f365:	62 91 6c 40 58 d0    	vaddps zmm2,zmm18,zmm24
  a2f36b:	62 a1 3c 40 5c d2    	vsubps zmm18,zmm24,zmm18
  a2f371:	62 e1 5c 48 58 eb    	vaddps zmm21,zmm4,zmm3
  a2f377:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a2f37d:	62 d1 2c 48 5c e5    	vsubps zmm4,zmm10,zmm13
  a2f383:	62 51 14 48 58 d2    	vaddps zmm10,zmm13,zmm10
  a2f389:	62 71 0c 48 58 ea    	vaddps zmm13,zmm14,zmm2
  a2f38f:	62 f1 0c 48 5c d2    	vsubps zmm2,zmm14,zmm2
  a2f395:	62 51 34 48 58 f0    	vaddps zmm14,zmm9,zmm8
  a2f39b:	62 51 34 48 5c c0    	vsubps zmm8,zmm9,zmm8
  a2f3a1:	62 31 5c 40 58 c8    	vaddps zmm9,zmm20,zmm16
  a2f3a7:	62 a1 7c 40 5c c4    	vsubps zmm16,zmm16,zmm20
  a2f3ad:	62 a1 64 40 58 e1    	vaddps zmm20,zmm19,zmm17
  a2f3b3:	62 a1 74 40 5c cb    	vsubps zmm17,zmm17,zmm19
  a2f3b9:	62 e1 04 48 58 d9    	vaddps zmm19,zmm15,zmm1
  a2f3bf:	62 f2 7d 48 18 2d d3 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff645fd3]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a2f3c6:	5f 64 ff 
  a2f3c9:	62 e1 54 40 59 ed    	vmulps zmm21,zmm21,zmm5
  a2f3cf:	62 f1 5c 48 59 e5    	vmulps zmm4,zmm4,zmm5
  a2f3d5:	62 71 04 48 5c f9    	vsubps zmm15,zmm15,zmm1
  a2f3db:	62 c1 6c 40 58 f4    	vaddps zmm22,zmm18,zmm12
  a2f3e1:	62 f1 64 48 59 cd    	vmulps zmm1,zmm3,zmm5
  a2f3e7:	62 f1 2c 48 59 dd    	vmulps zmm3,zmm10,zmm5
  a2f3ed:	62 31 1c 48 5c d2    	vsubps zmm10,zmm12,zmm18
  a2f3f3:	62 71 74 48 5c e3    	vsubps zmm12,zmm1,zmm3
  a2f3f9:	62 f1 74 48 58 db    	vaddps zmm3,zmm1,zmm3
  a2f3ff:	62 c1 6c 48 58 d0    	vaddps zmm18,zmm2,zmm8
  a2f405:	62 d1 6c 48 5c c8    	vsubps zmm1,zmm2,zmm8
  a2f40b:	62 f1 54 40 58 d4    	vaddps zmm2,zmm21,zmm4
  a2f411:	62 b1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm21
  a2f417:	62 31 7c 40 58 c1    	vaddps zmm8,zmm16,zmm17
  a2f41d:	62 a1 7c 40 5c c1    	vsubps zmm16,zmm16,zmm17
  a2f423:	62 e1 64 40 58 ca    	vaddps zmm17,zmm19,zmm2
  a2f429:	62 f1 64 40 5c d2    	vsubps zmm2,zmm19,zmm2
  a2f42f:	62 c1 34 48 5c de    	vsubps zmm19,zmm9,zmm14
  a2f435:	62 51 34 48 58 ce    	vaddps zmm9,zmm9,zmm14
  a2f43b:	62 51 4c 40 58 f4    	vaddps zmm14,zmm22,zmm12
  a2f441:	62 51 4c 40 5c e4    	vsubps zmm12,zmm22,zmm12
  a2f447:	62 a1 14 48 5c ec    	vsubps zmm21,zmm13,zmm20
  a2f44d:	62 31 14 48 58 ec    	vaddps zmm13,zmm13,zmm20
  a2f453:	62 e1 04 48 58 e3    	vaddps zmm20,zmm15,zmm3
  a2f459:	62 f1 04 48 5c db    	vsubps zmm3,zmm15,zmm3
  a2f45f:	62 53 7d 48 19 cf 02 	vextractf32x4 xmm15,zmm9,0x2
  a2f466:	62 f1 7c 48 28 2d 10 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff661610]        # 90a80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1df30>
  a2f46d:	16 66 ff 
  a2f470:	62 52 55 48 7f cd    	vpermt2ps zmm9,zmm5,zmm13
  a2f476:	62 71 7c 48 11 0c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm9
  a2f47d:	62 53 7d 48 19 e9 02 	vextractf32x4 xmm9,zmm13,0x2
  a2f484:	c4 41 00 14 c9       	vunpcklps xmm9,xmm15,xmm9
  a2f489:	c5 78 11 4c 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm9
  a2f48f:	62 71 2c 48 58 cc    	vaddps zmm9,zmm10,zmm4
  a2f495:	62 f1 2c 48 5c e4    	vsubps zmm4,zmm10,zmm4
  a2f49b:	62 53 7d 48 19 f2 02 	vextractf32x4 xmm10,zmm14,0x2
  a2f4a2:	62 32 55 48 7f f1    	vpermt2ps zmm14,zmm5,zmm17
  a2f4a8:	62 71 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x50],zmm14
  a2f4af:	50 00 00 00 
  a2f4b3:	62 c3 7d 48 19 cd 02 	vextractf32x4 xmm13,zmm17,0x2
  a2f4ba:	c4 41 28 14 d5       	vunpcklps xmm10,xmm10,xmm13
  a2f4bf:	c5 78 11 94 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm10
  a2f4c6:	00 00 
  a2f4c8:	62 53 7d 48 19 c2 02 	vextractf32x4 xmm10,zmm8,0x2
  a2f4cf:	62 32 55 48 7f c2    	vpermt2ps zmm8,zmm5,zmm18
  a2f4d5:	62 71 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xa0],zmm8
  a2f4dc:	a0 00 00 00 
  a2f4e0:	62 c3 7d 48 19 d0 02 	vextractf32x4 xmm8,zmm18,0x2
  a2f4e7:	c4 41 28 14 c0       	vunpcklps xmm8,xmm10,xmm8
  a2f4ec:	c5 78 11 84 16 e0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xe0],xmm8
  a2f4f3:	00 00 
  a2f4f5:	62 53 7d 48 19 c8 02 	vextractf32x4 xmm8,zmm9,0x2
  a2f4fc:	62 32 55 48 7f cc    	vpermt2ps zmm9,zmm5,zmm20
  a2f502:	62 71 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm9
  a2f509:	f0 00 00 00 
  a2f50d:	62 c3 7d 48 19 e1 02 	vextractf32x4 xmm9,zmm20,0x2
  a2f514:	c4 41 38 14 c1       	vunpcklps xmm8,xmm8,xmm9
  a2f519:	c5 78 11 84 16 30 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x130],xmm8
  a2f520:	00 00 
  a2f522:	62 c3 7d 48 19 d8 02 	vextractf32x4 xmm8,zmm19,0x2
  a2f529:	62 a2 55 48 7f dd    	vpermt2ps zmm19,zmm5,zmm21
  a2f52f:	62 e1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm19
  a2f536:	05 
  a2f537:	62 c3 7d 48 19 e9 02 	vextractf32x4 xmm9,zmm21,0x2
  a2f53e:	c4 41 38 14 c1       	vunpcklps xmm8,xmm8,xmm9
  a2f543:	c5 78 11 84 16 80 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x180],xmm8
  a2f54a:	00 00 
  a2f54c:	62 53 7d 48 19 e0 02 	vextractf32x4 xmm8,zmm12,0x2
  a2f553:	62 72 55 48 7f e2    	vpermt2ps zmm12,zmm5,zmm2
  a2f559:	62 71 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x190],zmm12
  a2f560:	90 01 00 00 
  a2f564:	62 f3 7d 48 19 d2 02 	vextractf32x4 xmm2,zmm2,0x2
  a2f56b:	c5 b8 14 d2          	vunpcklps xmm2,xmm8,xmm2
  a2f56f:	c5 f8 11 94 16 d0 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x1d0],xmm2
  a2f576:	00 00 
  a2f578:	62 e3 7d 48 19 c2 02 	vextractf32x4 xmm2,zmm16,0x2
  a2f57f:	62 e2 55 48 7f c1    	vpermt2ps zmm16,zmm5,zmm1
  a2f585:	62 e1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm16
  a2f58c:	e0 01 00 00 
  a2f590:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a2f597:	c5 e8 14 c9          	vunpcklps xmm1,xmm2,xmm1
  a2f59b:	c5 f8 11 8c 16 20 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x220],xmm1
  a2f5a2:	00 00 
  a2f5a4:	62 f3 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm4,0x2
  a2f5ab:	62 f2 55 48 7f e3    	vpermt2ps zmm4,zmm5,zmm3
  a2f5b1:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x230],zmm4
  a2f5b8:	30 02 00 00 
  a2f5bc:	62 f3 7d 48 19 da 02 	vextractf32x4 xmm2,zmm3,0x2
  a2f5c3:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a2f5c7:	c5 f8 11 8c 16 70 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x270],xmm1
  a2f5ce:	00 00 
  a2f5d0:	48 81 c2 80 02 00 00 	add    rdx,0x280
  a2f5d7:	48 39 d0             	cmp    rax,rdx
  a2f5da:	0f 85 a0 f6 ff ff    	jne    a2ec80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x40>
  a2f5e0:	48 89 ec             	mov    rsp,rbp
  a2f5e3:	5d                   	pop    rbp
  a2f5e4:	c5 f8 77             	vzeroupper
  a2f5e7:	c3                   	ret
