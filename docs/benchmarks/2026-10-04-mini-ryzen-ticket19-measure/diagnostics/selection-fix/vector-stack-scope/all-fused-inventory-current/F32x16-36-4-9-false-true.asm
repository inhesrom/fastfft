
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a3a9c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a3a9c0:	55                   	push   rbp
  a3a9c1:	48 89 e5             	mov    rbp,rsp
  a3a9c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a3a9c8:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a3a9cf:	62 f1 7c 48 28 05 a7 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68c5a7]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3a9d6:	c5 68 ff 
  a3a9d9:	62 f1 7c 48 28 0d dd 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff68c5dd]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a3a9e0:	c5 68 ff 
  a3a9e3:	48 c1 e2 05          	shl    rdx,0x5
  a3a9e7:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a3a9eb:	31 d2                	xor    edx,edx
  a3a9ed:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a3a9f2:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a3a9f7:	c4 41 38 57 c0       	vxorps xmm8,xmm8,xmm8
  a3a9fc:	c4 41 30 57 c9       	vxorps xmm9,xmm9,xmm9
  a3aa01:	62 52 7d 48 7f c9    	vpermt2ps zmm9,zmm0,zmm9
  a3aa07:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  a3aa0c:	62 52 75 48 7f d2    	vpermt2ps zmm10,zmm1,zmm10
  a3aa12:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a3aa19:	1f 84 00 00 00 00 00 
  a3aa20:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a3aa25:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a3aa2a:	62 f1 7c 48 10 04 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1]
  a3aa31:	c5 fb 10 74 17 40    	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x40]
  a3aa37:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a3aa3d:	62 f1 7c 48 28 1d 79 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff656b79]        # 915c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ea70>
  a3aa44:	6b 65 ff 
  a3aa47:	62 f2 65 48 7f c6    	vpermt2ps zmm0,zmm3,zmm6
  a3aa4d:	62 71 7c 48 10 ac 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x48]
  a3aa54:	48 00 00 00 
  a3aa58:	c5 7b 10 b4 17 88 00 	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x88]
  a3aa5f:	00 00 
  a3aa61:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a3aa67:	62 f1 7c 48 28 0d 0f 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff656b0f]        # 91580 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ea30>
  a3aa6e:	6b 65 ff 
  a3aa71:	62 72 75 48 7f de    	vpermt2ps zmm11,zmm1,zmm6
  a3aa77:	62 52 65 48 7f ee    	vpermt2ps zmm13,zmm3,zmm14
  a3aa7d:	62 f1 7c 48 10 b4 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x90]
  a3aa84:	90 00 00 00 
  a3aa88:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0xd0]
  a3aa8f:	1a 
  a3aa90:	62 52 75 48 7f fe    	vpermt2ps zmm15,zmm1,zmm14
  a3aa96:	62 71 7c 48 28 f6    	vmovaps zmm14,zmm6
  a3aa9c:	62 b2 65 48 7f f0    	vpermt2ps zmm6,zmm3,zmm16
  a3aaa2:	62 e1 7c 48 10 8c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0xd8]
  a3aaa9:	d8 00 00 00 
  a3aaad:	62 32 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm16
  a3aab3:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x118]
  a3aaba:	23 
  a3aabb:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a3aac1:	62 a2 65 48 7f c8    	vpermt2ps zmm17,zmm3,zmm16
  a3aac7:	62 a2 75 48 7f d0    	vpermt2ps zmm18,zmm1,zmm16
  a3aacd:	62 c1 24 48 58 c6    	vaddps zmm16,zmm11,zmm14
  a3aad3:	62 e1 7c 48 58 e6    	vaddps zmm20,zmm0,zmm6
  a3aad9:	62 a1 14 48 58 f1    	vaddps zmm22,zmm13,zmm17
  a3aadf:	62 a1 04 48 58 fa    	vaddps zmm23,zmm15,zmm18
  a3aae5:	62 a1 5c 40 58 ee    	vaddps zmm21,zmm20,zmm22
  a3aaeb:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a3aaf1:	62 31 14 48 5c e9    	vsubps zmm13,zmm13,zmm17
  a3aaf7:	62 a1 7c 40 58 cf    	vaddps zmm17,zmm16,zmm23
  a3aafd:	62 41 24 48 58 c5    	vaddps zmm24,zmm11,zmm13
  a3ab03:	62 f1 7c 48 5c c6    	vsubps zmm0,zmm0,zmm6
  a3ab09:	62 d1 6c 40 5c f7    	vsubps zmm6,zmm18,zmm15
  a3ab0f:	62 61 4c 48 58 d8    	vaddps zmm27,zmm6,zmm0
  a3ab15:	62 31 7c 40 5c ff    	vsubps zmm15,zmm16,zmm23
  a3ab1b:	62 a1 5c 40 5c f6    	vsubps zmm22,zmm20,zmm22
  a3ab21:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a3ab27:	62 f1 7c 48 5c de    	vsubps zmm3,zmm0,zmm6
  a3ab2d:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a3ab33:	62 f1 7c 48 28 25 83 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff68c483]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a3ab3a:	c4 68 ff 
  a3ab3d:	62 c2 5d 48 7f c8    	vpermt2ps zmm17,zmm4,zmm8
  a3ab43:	62 81 7c 48 28 c0    	vmovaps zmm16,zmm24
  a3ab49:	62 f1 7c 48 28 0d 2d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff68c42d]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3ab50:	c4 68 ff 
  a3ab53:	62 d2 75 48 7f c0    	vpermt2ps zmm0,zmm1,zmm8
  a3ab59:	62 c2 75 48 7f c0    	vpermt2ps zmm16,zmm1,zmm8
  a3ab5f:	62 42 5d 48 7f c0    	vpermt2ps zmm24,zmm4,zmm8
  a3ab65:	62 51 7c 48 28 ef    	vmovaps zmm13,zmm15
  a3ab6b:	62 52 75 48 7f e8    	vpermt2ps zmm13,zmm1,zmm8
  a3ab71:	62 52 5d 48 7f f8    	vpermt2ps zmm15,zmm4,zmm8
  a3ab77:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a3ab7d:	62 52 5d 48 7f d8    	vpermt2ps zmm11,zmm4,zmm8
  a3ab83:	62 c2 75 48 7f d0    	vpermt2ps zmm18,zmm1,zmm8
  a3ab89:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a3ab8f:	62 e1 7c 48 28 1d a7 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff68c3a7]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a3ab96:	c3 68 ff 
  a3ab99:	62 d2 65 40 7f c1    	vpermt2ps zmm0,zmm19,zmm9
  a3ab9f:	62 b1 7c 48 28 f0    	vmovaps zmm6,zmm16
  a3aba5:	62 f1 7c 48 28 15 51 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff68c351]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a3abac:	c3 68 ff 
  a3abaf:	62 52 6d 48 7f f1    	vpermt2ps zmm14,zmm2,zmm9
  a3abb5:	62 c2 65 40 7f c1    	vpermt2ps zmm16,zmm19,zmm9
  a3abbb:	62 41 7c 48 28 d5    	vmovaps zmm26,zmm13
  a3abc1:	62 52 65 40 7f e9    	vpermt2ps zmm13,zmm19,zmm9
  a3abc7:	62 d2 6d 48 7f f1    	vpermt2ps zmm6,zmm2,zmm9
  a3abcd:	62 21 7c 48 28 ea    	vmovaps zmm29,zmm18
  a3abd3:	62 c2 65 40 7f d1    	vpermt2ps zmm18,zmm19,zmm9
  a3abd9:	62 c2 6d 48 7f ca    	vpermt2ps zmm17,zmm2,zmm10
  a3abdf:	62 42 6d 48 7f d1    	vpermt2ps zmm26,zmm2,zmm9
  a3abe5:	62 42 6d 48 7f c2    	vpermt2ps zmm24,zmm2,zmm10
  a3abeb:	62 52 6d 48 7f fa    	vpermt2ps zmm15,zmm2,zmm10
  a3abf1:	62 c1 f5 40 14 e7    	vunpcklpd zmm20,zmm17,zmm15
  a3abf7:	62 42 6d 48 7f e9    	vpermt2ps zmm29,zmm2,zmm9
  a3abfd:	62 52 6d 48 7f da    	vpermt2ps zmm11,zmm2,zmm10
  a3ac03:	62 51 bd 40 14 fb    	vunpcklpd zmm15,zmm24,zmm11
  a3ac09:	62 c1 fd 48 14 fd    	vunpcklpd zmm23,zmm0,zmm13
  a3ac0f:	62 41 fd 48 15 c5    	vunpckhpd zmm24,zmm0,zmm13
  a3ac15:	62 31 fd 40 14 ea    	vunpcklpd zmm13,zmm16,zmm18
  a3ac1b:	62 31 fd 40 15 da    	vunpckhpd zmm11,zmm16,zmm18
  a3ac21:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a3ac27:	62 71 7c 48 28 25 cf 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff68c1cf]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3ac2e:	c1 68 ff 
  a3ac31:	62 c2 1d 48 7f e7    	vpermt2ps zmm20,zmm12,zmm15
  a3ac37:	62 d2 75 48 7f c0    	vpermt2ps zmm0,zmm1,zmm8
  a3ac3d:	62 c2 5d 48 7f e8    	vpermt2ps zmm21,zmm4,zmm8
  a3ac43:	62 81 7c 48 28 d3    	vmovaps zmm18,zmm27
  a3ac49:	62 01 8d 48 14 ca    	vunpcklpd zmm25,zmm14,zmm26
  a3ac4f:	62 c2 75 48 7f d0    	vpermt2ps zmm18,zmm1,zmm8
  a3ac55:	62 42 5d 48 7f d8    	vpermt2ps zmm27,zmm4,zmm8
  a3ac5b:	62 21 7c 48 28 fe    	vmovaps zmm31,zmm22
  a3ac61:	62 01 8d 48 15 e2    	vunpckhpd zmm28,zmm14,zmm26
  a3ac67:	62 42 75 48 7f f8    	vpermt2ps zmm31,zmm1,zmm8
  a3ac6d:	62 c2 5d 48 7f f0    	vpermt2ps zmm22,zmm4,zmm8
  a3ac73:	62 61 7c 48 28 f3    	vmovaps zmm30,zmm3
  a3ac79:	62 81 cd 48 14 c5    	vunpcklpd zmm16,zmm6,zmm29
  a3ac7f:	62 42 75 48 7f f0    	vpermt2ps zmm30,zmm1,zmm8
  a3ac85:	62 d2 5d 48 7f d8    	vpermt2ps zmm3,zmm4,zmm8
  a3ac8b:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a3ac91:	62 11 cd 48 15 fd    	vunpckhpd zmm15,zmm6,zmm29
  a3ac97:	62 52 6d 48 7f f1    	vpermt2ps zmm14,zmm2,zmm9
  a3ac9d:	62 d2 65 40 7f c1    	vpermt2ps zmm0,zmm19,zmm9
  a3aca3:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a3aca9:	62 21 7c 48 28 ef    	vmovaps zmm29,zmm23
  a3acaf:	62 d2 6d 48 7f c9    	vpermt2ps zmm1,zmm2,zmm9
  a3acb5:	62 91 7c 48 28 f7    	vmovaps zmm6,zmm31
  a3acbb:	62 d2 6d 48 7f f1    	vpermt2ps zmm6,zmm2,zmm9
  a3acc1:	62 f1 7c 48 28 25 75 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff68c175]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a3acc8:	c1 68 ff 
  a3accb:	62 c2 5d 48 7f fd    	vpermt2ps zmm23,zmm4,zmm13
  a3acd1:	62 42 65 40 7f f9    	vpermt2ps zmm31,zmm19,zmm9
  a3acd7:	62 c2 6d 48 7f ea    	vpermt2ps zmm21,zmm2,zmm10
  a3acdd:	62 42 6d 48 7f da    	vpermt2ps zmm27,zmm2,zmm10
  a3ace3:	62 81 7c 48 28 c8    	vmovaps zmm17,zmm24
  a3ace9:	62 c2 6d 48 7f f2    	vpermt2ps zmm22,zmm2,zmm10
  a3acef:	62 21 d5 40 14 d6    	vunpcklpd zmm26,zmm21,zmm22
  a3acf5:	62 d2 6d 48 7f da    	vpermt2ps zmm3,zmm2,zmm10
  a3acfb:	62 81 7c 48 28 f1    	vmovaps zmm22,zmm25
  a3ad01:	62 61 a5 40 14 db    	vunpcklpd zmm27,zmm27,zmm3
  a3ad07:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a3ad0d:	62 d2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm9
  a3ad13:	62 42 1d 48 7f ed    	vpermt2ps zmm29,zmm12,zmm13
  a3ad19:	62 e1 8d 48 14 ee    	vunpcklpd zmm21,zmm14,zmm6
  a3ad1f:	62 f1 8d 48 15 f6    	vunpckhpd zmm6,zmm14,zmm6
  a3ad25:	62 f1 f5 48 14 eb    	vunpcklpd zmm5,zmm1,zmm3
  a3ad2b:	62 22 5d 48 7f c8    	vpermt2ps zmm25,zmm4,zmm16
  a3ad31:	62 f1 f5 48 15 cb    	vunpckhpd zmm1,zmm1,zmm3
  a3ad37:	62 91 fd 48 14 df    	vunpcklpd zmm3,zmm0,zmm31
  a3ad3d:	62 11 fd 48 15 f7    	vunpckhpd zmm14,zmm0,zmm31
  a3ad43:	62 01 7c 48 28 fc    	vmovaps zmm31,zmm28
  a3ad49:	62 42 5d 48 7f c3    	vpermt2ps zmm24,zmm4,zmm11
  a3ad4f:	62 c2 65 40 7f d1    	vpermt2ps zmm18,zmm19,zmm9
  a3ad55:	62 42 65 40 7f f1    	vpermt2ps zmm30,zmm19,zmm9
  a3ad5b:	62 c2 1d 48 7f cb    	vpermt2ps zmm17,zmm12,zmm11
  a3ad61:	62 91 ed 40 14 c6    	vunpcklpd zmm0,zmm18,zmm30
  a3ad67:	62 01 ed 40 15 f6    	vunpckhpd zmm30,zmm18,zmm30
  a3ad6d:	62 b1 7c 48 28 d5    	vmovaps zmm2,zmm21
  a3ad73:	62 f2 1d 48 7f d5    	vpermt2ps zmm2,zmm12,zmm5
  a3ad79:	62 e2 5d 48 7f ed    	vpermt2ps zmm21,zmm4,zmm5
  a3ad7f:	62 71 7c 48 28 db    	vmovaps zmm11,zmm3
  a3ad85:	62 72 1d 48 7f d8    	vpermt2ps zmm11,zmm12,zmm0
  a3ad8b:	62 42 5d 48 7f e7    	vpermt2ps zmm28,zmm4,zmm15
  a3ad91:	62 f2 5d 48 7f d8    	vpermt2ps zmm3,zmm4,zmm0
  a3ad97:	62 e1 7c 48 28 d6    	vmovaps zmm18,zmm6
  a3ad9d:	62 e2 1d 48 7f d1    	vpermt2ps zmm18,zmm12,zmm1
  a3ada3:	62 f2 5d 48 7f f1    	vpermt2ps zmm6,zmm4,zmm1
  a3ada9:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  a3adaf:	62 92 1d 48 7f ce    	vpermt2ps zmm1,zmm12,zmm30
  a3adb5:	62 12 5d 48 7f f6    	vpermt2ps zmm14,zmm4,zmm30
  a3adbb:	62 a2 1d 48 7f f0    	vpermt2ps zmm22,zmm12,zmm16
  a3adc1:	62 02 1d 48 7f d3    	vpermt2ps zmm26,zmm12,zmm27
  a3adc7:	62 e1 7c 48 10 41 02 	vmovups zmm16,ZMMWORD PTR [rcx+0x80]
  a3adce:	62 f1 7c 48 10 41 0c 	vmovups zmm0,ZMMWORD PTR [rcx+0x300]
  a3add5:	62 42 1d 48 7f ff    	vpermt2ps zmm31,zmm12,zmm15
  a3addb:	62 f1 7c 48 10 69 0d 	vmovups zmm5,ZMMWORD PTR [rcx+0x340]
  a3ade2:	62 61 74 40 59 d8    	vmulps zmm27,zmm17,zmm0
  a3ade8:	62 f1 74 48 59 c0    	vmulps zmm0,zmm1,zmm0
  a3adee:	62 62 75 48 bc dd    	vfnmadd231ps zmm27,zmm1,zmm5
  a3adf4:	62 f1 7c 48 10 49 06 	vmovups zmm1,ZMMWORD PTR [rcx+0x180]
  a3adfb:	62 b2 55 48 b8 c1    	vfmadd231ps zmm0,zmm5,zmm17
  a3ae01:	62 f1 7c 48 10 69 07 	vmovups zmm5,ZMMWORD PTR [rcx+0x1c0]
  a3ae08:	62 e1 1c 40 59 c9    	vmulps zmm17,zmm28,zmm1
  a3ae0e:	62 e2 4d 48 bc cd    	vfnmadd231ps zmm17,zmm6,zmm5
  a3ae14:	62 f1 4c 48 59 c9    	vmulps zmm1,zmm6,zmm1
  a3ae1a:	62 f1 7c 48 10 71 08 	vmovups zmm6,ZMMWORD PTR [rcx+0x200]
  a3ae21:	62 92 55 48 b8 cc    	vfmadd231ps zmm1,zmm5,zmm28
  a3ae27:	62 f1 7c 48 10 69 09 	vmovups zmm5,ZMMWORD PTR [rcx+0x240]
  a3ae2e:	62 71 14 40 59 fe    	vmulps zmm15,zmm29,zmm6
  a3ae34:	62 61 24 48 59 f6    	vmulps zmm30,zmm11,zmm6
  a3ae3a:	62 72 25 48 bc fd    	vfnmadd231ps zmm15,zmm11,zmm5
  a3ae40:	62 71 7c 48 10 59 03 	vmovups zmm11,ZMMWORD PTR [rcx+0xc0]
  a3ae47:	62 02 55 48 b8 f5    	vfmadd231ps zmm30,zmm5,zmm29
  a3ae4d:	62 f1 7c 48 10 69 04 	vmovups zmm5,ZMMWORD PTR [rcx+0x100]
  a3ae54:	62 21 34 40 59 e8    	vmulps zmm29,zmm25,zmm16
  a3ae5a:	62 42 55 40 bc eb    	vfnmadd231ps zmm29,zmm21,zmm11
  a3ae60:	62 b1 54 40 59 f0    	vmulps zmm6,zmm21,zmm16
  a3ae66:	62 e1 7c 48 10 41 0e 	vmovups zmm16,ZMMWORD PTR [rcx+0x380]
  a3ae6d:	62 92 25 48 b8 f1    	vfmadd231ps zmm6,zmm11,zmm25
  a3ae73:	62 71 7c 48 10 59 0f 	vmovups zmm11,ZMMWORD PTR [rcx+0x3c0]
  a3ae7a:	62 21 3c 40 59 c8    	vmulps zmm25,zmm24,zmm16
  a3ae80:	62 a1 0c 48 59 c0    	vmulps zmm16,zmm14,zmm16
  a3ae86:	62 42 0d 48 bc cb    	vfnmadd231ps zmm25,zmm14,zmm11
  a3ae8c:	62 71 7c 48 10 71 05 	vmovups zmm14,ZMMWORD PTR [rcx+0x140]
  a3ae93:	62 82 25 48 b8 c0    	vfmadd231ps zmm16,zmm11,zmm24
  a3ae99:	62 71 7c 48 10 59 0a 	vmovups zmm11,ZMMWORD PTR [rcx+0x280]
  a3aea0:	62 e1 04 40 59 ed    	vmulps zmm21,zmm31,zmm5
  a3aea6:	62 61 6c 40 59 e5    	vmulps zmm28,zmm18,zmm5
  a3aeac:	62 02 0d 48 b8 e7    	vfmadd231ps zmm28,zmm14,zmm31
  a3aeb2:	62 f1 7c 48 10 69 0b 	vmovups zmm5,ZMMWORD PTR [rcx+0x2c0]
  a3aeb9:	62 c2 6d 40 bc ee    	vfnmadd231ps zmm21,zmm18,zmm14
  a3aebf:	62 71 7c 48 10 71 10 	vmovups zmm14,ZMMWORD PTR [rcx+0x400]
  a3aec6:	62 c1 44 40 59 d3    	vmulps zmm18,zmm23,zmm11
  a3aecc:	62 41 64 48 59 fb    	vmulps zmm31,zmm3,zmm11
  a3aed2:	62 e2 65 48 bc d5    	vfnmadd231ps zmm18,zmm3,zmm5
  a3aed8:	62 f1 7c 48 10 59 11 	vmovups zmm3,ZMMWORD PTR [rcx+0x440]
  a3aedf:	62 22 55 48 b8 ff    	vfmadd231ps zmm31,zmm5,zmm23
  a3aee5:	62 d1 5c 40 59 ee    	vmulps zmm5,zmm20,zmm14
  a3aeeb:	62 11 74 40 58 db    	vaddps zmm11,zmm17,zmm27
  a3aef1:	62 f2 2d 40 bc eb    	vfnmadd231ps zmm5,zmm26,zmm3
  a3aef7:	62 51 2c 40 59 f6    	vmulps zmm14,zmm26,zmm14
  a3aefd:	62 32 65 48 b8 f4    	vfmadd231ps zmm14,zmm3,zmm20
  a3af03:	62 41 4c 40 58 d3    	vaddps zmm26,zmm22,zmm11
  a3af09:	62 91 04 48 58 d9    	vaddps zmm3,zmm15,zmm25
  a3af0f:	62 e1 74 48 58 d8    	vaddps zmm19,zmm1,zmm0
  a3af15:	62 72 7d 48 18 2d 41 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff63a541]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a3af1c:	a5 63 ff 
  a3af1f:	62 c2 15 48 bc f3    	vfnmadd231ps zmm22,zmm13,zmm11
  a3af25:	62 e1 14 40 58 e3    	vaddps zmm20,zmm29,zmm3
  a3af2b:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a3af31:	62 f1 6c 40 58 cd    	vaddps zmm1,zmm18,zmm5
  a3af37:	62 62 15 48 bc eb    	vfnmadd231ps zmm29,zmm13,zmm3
  a3af3d:	62 b1 0c 40 58 d8    	vaddps zmm3,zmm30,zmm16
  a3af43:	62 a1 0c 40 5c c0    	vsubps zmm16,zmm30,zmm16
  a3af49:	62 e1 4c 48 58 fb    	vaddps zmm23,zmm6,zmm3
  a3af4f:	62 f2 15 48 bc f3    	vfnmadd231ps zmm6,zmm13,zmm3
  a3af55:	62 61 54 40 58 c1    	vaddps zmm24,zmm21,zmm1
  a3af5b:	62 91 04 48 5c d9    	vsubps zmm3,zmm15,zmm25
  a3af61:	62 51 04 40 58 fe    	vaddps zmm15,zmm31,zmm14
  a3af67:	62 e2 15 48 bc e9    	vfnmadd231ps zmm21,zmm13,zmm1
  a3af6d:	62 71 64 40 58 da    	vaddps zmm11,zmm19,zmm2
  a3af73:	62 d1 04 40 5c ce    	vsubps zmm1,zmm31,zmm14
  a3af79:	62 41 1c 40 58 cf    	vaddps zmm25,zmm28,zmm15
  a3af7f:	62 42 15 48 bc e7    	vfnmadd231ps zmm28,zmm13,zmm15
  a3af85:	62 01 5c 40 58 f8    	vaddps zmm31,zmm20,zmm24
  a3af8b:	62 72 7d 48 18 25 3f 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff63a33f]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a3af92:	a3 63 ff 
  a3af95:	62 d1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm12
  a3af9b:	62 51 7c 40 59 f4    	vmulps zmm14,zmm16,zmm12
  a3afa1:	62 f1 6c 40 5c ed    	vsubps zmm5,zmm18,zmm5
  a3afa7:	62 61 4c 40 58 f0    	vaddps zmm30,zmm22,zmm0
  a3afad:	62 d1 64 48 59 dc    	vmulps zmm3,zmm3,zmm12
  a3afb3:	62 d1 74 48 59 cc    	vmulps zmm1,zmm1,zmm12
  a3afb9:	62 b2 15 48 bc d3    	vfnmadd231ps zmm2,zmm13,zmm19
  a3afbf:	62 c1 14 40 58 c6    	vaddps zmm16,zmm29,zmm14
  a3afc5:	62 81 74 40 5c cb    	vsubps zmm17,zmm17,zmm27
  a3afcb:	62 e1 54 40 58 d1    	vaddps zmm18,zmm21,zmm1
  a3afd1:	62 71 4c 40 5c f8    	vsubps zmm15,zmm22,zmm0
  a3afd7:	62 f1 4c 48 5c c3    	vsubps zmm0,zmm6,zmm3
  a3afdd:	62 d1 54 48 59 ec    	vmulps zmm5,zmm5,zmm12
  a3afe3:	62 c1 14 40 5c de    	vsubps zmm19,zmm29,zmm14
  a3afe9:	62 71 1c 40 5c f5    	vsubps zmm14,zmm28,zmm5
  a3afef:	62 f1 4c 48 58 db    	vaddps zmm3,zmm6,zmm3
  a3aff5:	62 62 7d 48 18 2d 19 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff63a319]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a3affc:	a3 63 ff 
  a3afff:	62 01 0c 48 59 dd    	vmulps zmm27,zmm14,zmm29
  a3b005:	62 f2 7d 48 18 3d cd 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff63a4cd]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a3b00c:	a4 63 ff 
  a3b00f:	62 62 6d 40 b8 df    	vfmadd231ps zmm27,zmm18,zmm7
  a3b015:	62 71 0c 48 59 f7    	vmulps zmm14,zmm14,zmm7
  a3b01b:	62 32 15 40 bc f2    	vfnmadd231ps zmm14,zmm29,zmm18
  a3b021:	62 f2 7d 48 18 25 3d 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff63a63d]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a3b028:	a6 63 ff 
  a3b02b:	62 e1 7c 48 59 d4    	vmulps zmm18,zmm0,zmm4
  a3b031:	62 f2 7d 48 18 35 9d 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff63a49d]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a3b038:	a4 63 ff 
  a3b03b:	62 e2 7d 40 b8 d6    	vfmadd231ps zmm18,zmm16,zmm6
  a3b041:	62 e1 7c 48 59 f6    	vmulps zmm22,zmm0,zmm6
  a3b047:	62 a2 5d 48 bc f0    	vfnmadd231ps zmm22,zmm4,zmm16
  a3b04d:	62 91 44 40 58 c1    	vaddps zmm0,zmm23,zmm25
  a3b053:	62 d1 74 40 59 f4    	vmulps zmm6,zmm17,zmm12
  a3b059:	62 f1 54 40 5c c9    	vsubps zmm1,zmm21,zmm1
  a3b05f:	62 e1 6c 48 5c c6    	vsubps zmm16,zmm2,zmm6
  a3b065:	62 f1 1c 40 58 ed    	vaddps zmm5,zmm28,zmm5
  a3b06b:	62 81 64 48 59 ed    	vmulps zmm21,zmm3,zmm29
  a3b071:	62 f1 4c 48 58 e2    	vaddps zmm4,zmm6,zmm2
  a3b077:	62 e2 65 40 b8 ef    	vfmadd231ps zmm21,zmm19,zmm7
  a3b07d:	62 f2 7d 48 18 15 69 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff63a469]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a3b084:	a4 63 ff 
  a3b087:	62 f1 54 48 59 f2    	vmulps zmm6,zmm5,zmm2
  a3b08d:	62 e2 7d 48 18 0d 61 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff63a561]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a3b094:	a5 63 ff 
  a3b097:	62 b2 75 48 bc f1    	vfnmadd231ps zmm6,zmm1,zmm17
  a3b09d:	62 61 64 48 59 e7    	vmulps zmm28,zmm3,zmm7
  a3b0a3:	62 22 15 40 bc e3    	vfnmadd231ps zmm28,zmm29,zmm19
  a3b0a9:	62 a1 54 48 59 c9    	vmulps zmm17,zmm5,zmm17
  a3b0af:	62 e2 6d 48 b8 c9    	vfmadd231ps zmm17,zmm2,zmm1
  a3b0b5:	62 d1 7c 48 28 d5    	vmovaps zmm2,zmm13
  a3b0bb:	62 92 05 40 ac d2    	vfnmadd213ps zmm2,zmm31,zmm26
  a3b0c1:	62 41 7c 48 28 ed    	vmovaps zmm29,zmm13
  a3b0c7:	62 42 7d 48 ac eb    	vfnmadd213ps zmm29,zmm0,zmm11
  a3b0cd:	c5 a4 58 c0          	vaddps ymm0,ymm11,ymm0
  a3b0d1:	62 91 6c 40 58 cb    	vaddps zmm1,zmm18,zmm27
  a3b0d7:	62 91 2c 00 58 df    	vaddps xmm3,xmm26,xmm31
  a3b0dd:	62 41 7c 48 28 d5    	vmovaps zmm26,zmm13
  a3b0e3:	c5 fc 28 3d f5 c0 63 	vmovaps ymm7,YMMWORD PTR [rip+0xffffffffff63c0f5]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a3b0ea:	ff 
  a3b0eb:	62 f2 45 28 7f d8    	vpermt2ps ymm3,ymm7,ymm0
  a3b0f1:	62 d1 4c 40 58 c6    	vaddps zmm0,zmm22,zmm14
  a3b0f7:	62 02 75 48 ac d6    	vfnmadd213ps zmm26,zmm1,zmm30
  a3b0fd:	c5 fc 11 1c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm3
  a3b102:	62 51 7c 48 28 dd    	vmovaps zmm11,zmm13
  a3b108:	62 32 7d 48 ac d8    	vfnmadd213ps zmm11,zmm0,zmm16
  a3b10e:	62 f1 7c 20 58 c0    	vaddps ymm0,ymm16,ymm0
  a3b114:	62 41 7c 48 28 fd    	vmovaps zmm31,zmm13
  a3b11a:	62 f1 0c 00 58 c9    	vaddps xmm1,xmm30,xmm1
  a3b120:	62 b1 1c 40 5c d9    	vsubps zmm3,zmm28,zmm17
  a3b126:	62 62 65 48 ac fc    	vfnmadd213ps zmm31,zmm3,zmm4
  a3b12c:	c5 dc 58 db          	vaddps ymm3,ymm4,ymm3
  a3b130:	62 f1 54 40 58 e6    	vaddps zmm4,zmm21,zmm6
  a3b136:	62 f2 45 28 7f c8    	vpermt2ps ymm1,ymm7,ymm0
  a3b13c:	62 52 5d 48 ac ef    	vfnmadd213ps zmm13,zmm4,zmm15
  a3b142:	c5 80 58 c4          	vaddps xmm0,xmm15,xmm4
  a3b146:	c5 fc 11 4c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm1
  a3b14c:	62 f2 45 28 7f c3    	vpermt2ps ymm0,ymm7,ymm3
  a3b152:	62 91 5c 20 5c c8    	vsubps ymm1,ymm20,ymm24
  a3b158:	c5 9c 59 c9          	vmulps ymm1,ymm12,ymm1
  a3b15c:	c5 fc 11 44 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm0
  a3b162:	62 f1 14 20 5c c1    	vsubps ymm0,ymm29,ymm1
  a3b168:	62 91 44 20 5c d9    	vsubps ymm3,ymm23,ymm25
  a3b16e:	c5 9c 59 db          	vmulps ymm3,ymm12,ymm3
  a3b172:	c5 e8 58 e3          	vaddps xmm4,xmm2,xmm3
  a3b176:	62 f2 45 28 7f e0    	vpermt2ps ymm4,ymm7,ymm0
  a3b17c:	62 91 6c 20 5c c3    	vsubps ymm0,ymm18,ymm27
  a3b182:	c5 9c 59 c0          	vmulps ymm0,ymm12,ymm0
  a3b186:	c5 fc 11 64 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm4
  a3b18c:	c5 a4 5c e0          	vsubps ymm4,ymm11,ymm0
  a3b190:	62 d1 4c 20 5c ee    	vsubps ymm5,ymm22,ymm14
  a3b196:	c5 9c 59 ed          	vmulps ymm5,ymm12,ymm5
  a3b19a:	62 71 2c 00 58 f5    	vaddps xmm14,xmm26,xmm5
  a3b1a0:	62 72 45 28 7f f4    	vpermt2ps ymm14,ymm7,ymm4
  a3b1a6:	62 f1 54 20 5c e6    	vsubps ymm4,ymm21,ymm6
  a3b1ac:	c5 9c 59 e4          	vmulps ymm4,ymm12,ymm4
  a3b1b0:	c5 7c 11 b4 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm14
  a3b1b7:	00 00 
  a3b1b9:	62 f1 04 20 5c f4    	vsubps ymm6,ymm31,ymm4
  a3b1bf:	62 31 1c 20 58 f1    	vaddps ymm14,ymm28,ymm17
  a3b1c5:	c4 41 0c 59 f4       	vmulps ymm14,ymm14,ymm12
  a3b1ca:	c4 41 10 58 fe       	vaddps xmm15,xmm13,xmm14
  a3b1cf:	62 72 45 28 7f fe    	vpermt2ps ymm15,ymm7,ymm6
  a3b1d5:	62 f1 14 20 58 c9    	vaddps ymm1,ymm29,ymm1
  a3b1db:	c5 e8 5c db          	vsubps xmm3,xmm2,xmm3
  a3b1df:	c5 7c 11 bc 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm15
  a3b1e6:	00 00 
  a3b1e8:	62 f2 45 28 7f d9    	vpermt2ps ymm3,ymm7,ymm1
  a3b1ee:	c5 a4 58 c0          	vaddps ymm0,ymm11,ymm0
  a3b1f2:	62 f1 2c 00 5c cd    	vsubps xmm1,xmm26,xmm5
  a3b1f8:	c5 fc 11 9c 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm3
  a3b1ff:	00 00 
  a3b201:	62 f2 45 28 7f c8    	vpermt2ps ymm1,ymm7,ymm0
  a3b207:	62 f1 04 20 58 c4    	vaddps ymm0,ymm31,ymm4
  a3b20d:	c4 c1 10 5c de       	vsubps xmm3,xmm13,xmm14
  a3b212:	c5 fc 11 8c 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm1
  a3b219:	00 00 
  a3b21b:	62 f2 45 28 7f d8    	vpermt2ps ymm3,ymm7,ymm0
  a3b221:	c5 fc 11 9c 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm3
  a3b228:	00 00 
  a3b22a:	48 81 c2 20 01 00 00 	add    rdx,0x120
  a3b231:	48 39 d0             	cmp    rax,rdx
  a3b234:	0f 85 e6 f7 ff ff    	jne    a3aa20 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x60>
  a3b23a:	48 89 ec             	mov    rsp,rbp
  a3b23d:	5d                   	pop    rbp
  a3b23e:	c5 f8 77             	vzeroupper
  a3b241:	c3                   	ret
