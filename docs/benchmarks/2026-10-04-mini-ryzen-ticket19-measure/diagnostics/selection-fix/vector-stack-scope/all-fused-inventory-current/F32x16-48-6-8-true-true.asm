
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a26d40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a26d40:	55                   	push   rbp
  a26d41:	48 89 e5             	mov    rbp,rsp
  a26d44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a26d48:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a26d4f:	62 f1 7c 48 28 05 27 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6a0227]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a26d56:	02 6a ff 
  a26d59:	62 f1 7c 48 28 0d 9d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6a019d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a26d60:	01 6a ff 
  a26d63:	62 f1 7c 48 28 15 d3 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6a01d3]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a26d6a:	01 6a ff 
  a26d6d:	62 f1 7c 48 28 1d 89 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6a0089]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a26d74:	00 6a ff 
  a26d77:	62 f1 7c 48 28 25 bf 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6a00bf]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a26d7e:	00 6a ff 
  a26d81:	48 c1 e2 07          	shl    rdx,0x7
  a26d85:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a26d89:	31 d2                	xor    edx,edx
  a26d8b:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a26d90:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a26d95:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a26d99:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  a26d9e:	62 52 7d 48 7f d2    	vpermt2ps zmm10,zmm0,zmm10
  a26da4:	62 71 7c 48 28 25 d2 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6696d2]        # 90480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d930>
  a26dab:	96 66 ff 
  a26dae:	66 90                	xchg   ax,ax
  a26db0:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a26db5:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a26dba:	62 71 7c 48 10 2c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1]
  a26dc1:	62 f1 7c 48 10 7c 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x40]
  a26dc8:	01 
  a26dc9:	62 e1 7c 48 10 4c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x80]
  a26dd0:	02 
  a26dd1:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a26dd8:	03 
  a26dd9:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a26ddf:	62 71 7c 48 28 05 57 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff669657]        # 90440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d8f0>
  a26de6:	96 66 ff 
  a26de9:	62 72 3d 48 7f ee    	vpermt2ps zmm13,zmm8,zmm6
  a26def:	62 e1 7c 48 28 d7    	vmovaps zmm18,zmm7
  a26df5:	62 f1 7c 48 28 2d 01 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff669601]        # 90400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d8b0>
  a26dfc:	96 66 ff 
  a26dff:	62 72 55 48 7f fe    	vpermt2ps zmm15,zmm5,zmm6
  a26e05:	62 e2 55 48 7f d6    	vpermt2ps zmm18,zmm5,zmm6
  a26e0b:	62 f2 3d 48 7f fe    	vpermt2ps zmm7,zmm8,zmm6
  a26e11:	62 a1 7c 48 28 d9    	vmovaps zmm19,zmm17
  a26e17:	62 e2 55 48 7f de    	vpermt2ps zmm19,zmm5,zmm6
  a26e1d:	62 e2 3d 48 7f ce    	vpermt2ps zmm17,zmm8,zmm6
  a26e23:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a26e29:	62 e2 3d 48 7f c6    	vpermt2ps zmm16,zmm8,zmm6
  a26e2f:	62 e2 55 48 7f e6    	vpermt2ps zmm20,zmm5,zmm6
  a26e35:	62 e1 7c 48 10 6c 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x100]
  a26e3c:	04 
  a26e3d:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a26e43:	62 e2 3d 48 7f ee    	vpermt2ps zmm21,zmm8,zmm6
  a26e49:	62 e2 55 48 7f f6    	vpermt2ps zmm22,zmm5,zmm6
  a26e4f:	62 e1 7c 48 10 7c 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1+0x140]
  a26e56:	05 
  a26e57:	62 21 7c 48 28 c7    	vmovaps zmm24,zmm23
  a26e5d:	62 e2 3d 48 7f fe    	vpermt2ps zmm23,zmm8,zmm6
  a26e63:	62 62 55 48 7f c6    	vpermt2ps zmm24,zmm5,zmm6
  a26e69:	62 21 74 40 58 cd    	vaddps zmm25,zmm17,zmm21
  a26e6f:	62 01 14 48 58 d1    	vaddps zmm26,zmm13,zmm25
  a26e75:	62 61 44 40 58 df    	vaddps zmm27,zmm23,zmm7
  a26e7b:	62 01 7c 40 58 e3    	vaddps zmm28,zmm16,zmm27
  a26e81:	62 21 64 40 58 ee    	vaddps zmm29,zmm19,zmm22
  a26e87:	62 01 04 48 58 f5    	vaddps zmm30,zmm15,zmm29
  a26e8d:	62 21 3c 40 58 fa    	vaddps zmm31,zmm24,zmm18
  a26e93:	62 11 2c 40 58 f4    	vaddps zmm14,zmm26,zmm28
  a26e99:	62 11 5c 40 58 cf    	vaddps zmm9,zmm20,zmm31
  a26e9f:	62 f2 7d 48 18 2d b7 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff64e5b7]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a26ea6:	e5 64 ff 
  a26ea9:	62 12 55 48 bc e9    	vfnmadd231ps zmm13,zmm5,zmm25
  a26eaf:	62 a1 64 40 5c f6    	vsubps zmm22,zmm19,zmm22
  a26eb5:	62 c1 0c 40 58 d9    	vaddps zmm19,zmm30,zmm9
  a26ebb:	62 72 7d 48 18 05 0f 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff64e40f]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a26ec2:	e4 64 ff 
  a26ec5:	62 41 4c 40 59 c8    	vmulps zmm25,zmm22,zmm8
  a26ecb:	62 82 55 48 bc c3    	vfnmadd231ps zmm16,zmm5,zmm27
  a26ed1:	62 a1 3c 40 5c d2    	vsubps zmm18,zmm24,zmm18
  a26ed7:	62 01 14 48 58 c1    	vaddps zmm24,zmm13,zmm25
  a26edd:	62 c1 6c 40 59 d0    	vmulps zmm18,zmm18,zmm8
  a26ee3:	62 12 55 48 bc fd    	vfnmadd231ps zmm15,zmm5,zmm29
  a26ee9:	62 a1 74 40 5c cd    	vsubps zmm17,zmm17,zmm21
  a26eef:	62 a1 7c 40 58 ea    	vaddps zmm21,zmm16,zmm18
  a26ef5:	62 c1 74 40 59 c8    	vmulps zmm17,zmm17,zmm8
  a26efb:	62 21 04 48 5c e9    	vsubps zmm29,zmm15,zmm17
  a26f01:	62 82 55 48 bc e7    	vfnmadd231ps zmm20,zmm5,zmm31
  a26f07:	62 31 3c 40 5c dd    	vsubps zmm11,zmm24,zmm21
  a26f0d:	62 f1 44 40 5c ff    	vsubps zmm7,zmm23,zmm7
  a26f13:	62 d1 44 48 59 f8    	vmulps zmm7,zmm7,zmm8
  a26f19:	62 e1 5c 40 5c ff    	vsubps zmm23,zmm20,zmm7
  a26f1f:	62 a1 14 40 5c f7    	vsubps zmm22,zmm29,zmm23
  a26f25:	62 11 14 48 5c e9    	vsubps zmm13,zmm13,zmm25
  a26f2b:	62 a1 7c 40 5c d2    	vsubps zmm18,zmm16,zmm18
  a26f31:	62 51 74 40 58 ff    	vaddps zmm15,zmm17,zmm15
  a26f37:	62 21 14 48 58 ca    	vaddps zmm25,zmm13,zmm18
  a26f3d:	62 b1 44 48 58 fc    	vaddps zmm7,zmm7,zmm20
  a26f43:	62 01 2c 40 5c e4    	vsubps zmm28,zmm26,zmm28
  a26f49:	62 41 0c 40 5c d1    	vsubps zmm26,zmm30,zmm9
  a26f4f:	62 61 04 48 58 df    	vaddps zmm27,zmm15,zmm7
  a26f55:	62 31 3c 40 58 cd    	vaddps zmm9,zmm24,zmm21
  a26f5b:	62 a1 14 40 58 c7    	vaddps zmm16,zmm29,zmm23
  a26f61:	62 31 14 48 5c ea    	vsubps zmm13,zmm13,zmm18
  a26f67:	62 e1 04 48 5c e7    	vsubps zmm20,zmm15,zmm7
  a26f6d:	62 72 7d 48 7f f6    	vpermt2ps zmm14,zmm0,zmm6
  a26f73:	62 72 7d 48 7f de    	vpermt2ps zmm11,zmm0,zmm6
  a26f79:	62 62 7d 48 7f e6    	vpermt2ps zmm28,zmm0,zmm6
  a26f7f:	62 62 7d 48 7f ce    	vpermt2ps zmm25,zmm0,zmm6
  a26f85:	62 72 7d 48 7f ce    	vpermt2ps zmm9,zmm0,zmm6
  a26f8b:	62 72 7d 48 7f ee    	vpermt2ps zmm13,zmm0,zmm6
  a26f91:	62 d1 7c 48 28 fe    	vmovaps zmm7,zmm14
  a26f97:	62 d2 75 48 7f f9    	vpermt2ps zmm7,zmm1,zmm9
  a26f9d:	62 52 6d 48 7f f1    	vpermt2ps zmm14,zmm2,zmm9
  a26fa3:	62 51 7c 48 28 cb    	vmovaps zmm9,zmm11
  a26fa9:	62 52 6d 48 7f dd    	vpermt2ps zmm11,zmm2,zmm13
  a26faf:	62 52 75 48 7f cd    	vpermt2ps zmm9,zmm1,zmm13
  a26fb5:	62 11 7c 48 28 e9    	vmovaps zmm13,zmm25
  a26fbb:	62 42 6d 48 7f ca    	vpermt2ps zmm25,zmm2,zmm10
  a26fc1:	62 81 7c 48 28 ec    	vmovaps zmm21,zmm28
  a26fc7:	62 52 75 48 7f ea    	vpermt2ps zmm13,zmm1,zmm10
  a26fcd:	62 c2 75 48 7f ea    	vpermt2ps zmm21,zmm1,zmm10
  a26fd3:	62 42 6d 48 7f e2    	vpermt2ps zmm28,zmm2,zmm10
  a26fd9:	62 c1 c5 48 14 d5    	vunpcklpd zmm18,zmm7,zmm13
  a26fdf:	62 51 c5 48 15 fd    	vunpckhpd zmm15,zmm7,zmm13
  a26fe5:	62 31 b5 48 14 ed    	vunpcklpd zmm13,zmm9,zmm21
  a26feb:	62 81 8d 48 14 c9    	vunpcklpd zmm17,zmm14,zmm25
  a26ff1:	62 11 8d 48 15 f1    	vunpckhpd zmm14,zmm14,zmm25
  a26ff7:	62 21 b5 48 15 fd    	vunpckhpd zmm31,zmm9,zmm21
  a26ffd:	62 91 a5 48 14 fc    	vunpcklpd zmm7,zmm11,zmm28
  a27003:	62 11 a5 48 15 cc    	vunpckhpd zmm9,zmm11,zmm28
  a27009:	62 a1 7c 48 28 f9    	vmovaps zmm23,zmm17
  a2700f:	62 e2 5d 48 7f cf    	vpermt2ps zmm17,zmm4,zmm7
  a27015:	62 e2 7d 48 7f de    	vpermt2ps zmm19,zmm0,zmm6
  a2701b:	62 e2 7d 48 7f f6    	vpermt2ps zmm22,zmm0,zmm6
  a27021:	62 62 7d 48 7f de    	vpermt2ps zmm27,zmm0,zmm6
  a27027:	62 41 7c 48 28 ce    	vmovaps zmm25,zmm14
  a2702d:	62 62 7d 48 7f d6    	vpermt2ps zmm26,zmm0,zmm6
  a27033:	62 e2 7d 48 7f c6    	vpermt2ps zmm16,zmm0,zmm6
  a27039:	62 e2 7d 48 7f e6    	vpermt2ps zmm20,zmm0,zmm6
  a2703f:	62 52 5d 48 7f f1    	vpermt2ps zmm14,zmm4,zmm9
  a27045:	62 31 7c 48 28 db    	vmovaps zmm11,zmm19
  a2704b:	62 32 75 48 7f d8    	vpermt2ps zmm11,zmm1,zmm16
  a27051:	62 a2 6d 48 7f d8    	vpermt2ps zmm19,zmm2,zmm16
  a27057:	62 a1 7c 48 28 c2    	vmovaps zmm16,zmm18
  a2705d:	62 21 7c 48 28 c6    	vmovaps zmm24,zmm22
  a27063:	62 22 75 48 7f c4    	vpermt2ps zmm24,zmm1,zmm20
  a27069:	62 a2 6d 48 7f f4    	vpermt2ps zmm22,zmm2,zmm20
  a2706f:	62 c2 5d 48 7f d5    	vpermt2ps zmm18,zmm4,zmm13
  a27075:	62 81 7c 48 28 eb    	vmovaps zmm21,zmm27
  a2707b:	62 c2 75 48 7f ea    	vpermt2ps zmm21,zmm1,zmm10
  a27081:	62 42 6d 48 7f da    	vpermt2ps zmm27,zmm2,zmm10
  a27087:	62 c1 7c 48 28 e7    	vmovaps zmm20,zmm15
  a2708d:	62 01 7c 48 28 ea    	vmovaps zmm29,zmm26
  a27093:	62 42 75 48 7f ea    	vpermt2ps zmm29,zmm1,zmm10
  a27099:	62 42 6d 48 7f d2    	vpermt2ps zmm26,zmm2,zmm10
  a2709f:	62 12 5d 48 7f ff    	vpermt2ps zmm15,zmm4,zmm31
  a270a5:	62 21 a5 48 14 f5    	vunpcklpd zmm30,zmm11,zmm21
  a270ab:	62 21 a5 48 15 e5    	vunpckhpd zmm28,zmm11,zmm21
  a270b1:	62 81 bd 40 14 ed    	vunpcklpd zmm21,zmm24,zmm29
  a270b7:	62 e2 65 48 7f ff    	vpermt2ps zmm23,zmm3,zmm7
  a270bd:	62 01 bd 40 15 c5    	vunpckhpd zmm24,zmm24,zmm29
  a270c3:	62 01 e5 40 14 eb    	vunpcklpd zmm29,zmm19,zmm27
  a270c9:	62 91 e5 40 15 eb    	vunpckhpd zmm5,zmm19,zmm27
  a270cf:	62 42 65 48 7f c9    	vpermt2ps zmm25,zmm3,zmm9
  a270d5:	62 91 cd 40 14 fa    	vunpcklpd zmm7,zmm22,zmm26
  a270db:	62 11 cd 40 15 ca    	vunpckhpd zmm9,zmm22,zmm26
  a270e1:	62 81 7c 48 28 de    	vmovaps zmm19,zmm30
  a270e7:	62 22 5d 48 7f f5    	vpermt2ps zmm30,zmm4,zmm21
  a270ed:	62 81 7c 48 28 f4    	vmovaps zmm22,zmm28
  a270f3:	62 02 5d 48 7f e0    	vpermt2ps zmm28,zmm4,zmm24
  a270f9:	62 11 7c 48 28 dd    	vmovaps zmm11,zmm29
  a270ff:	62 72 65 48 7f df    	vpermt2ps zmm11,zmm3,zmm7
  a27105:	62 62 5d 48 7f ef    	vpermt2ps zmm29,zmm4,zmm7
  a2710b:	62 61 7c 48 28 dd    	vmovaps zmm27,zmm5
  a27111:	62 42 65 48 7f d9    	vpermt2ps zmm27,zmm3,zmm9
  a27117:	62 82 65 48 7f e7    	vpermt2ps zmm20,zmm3,zmm31
  a2711d:	62 d2 5d 48 7f e9    	vpermt2ps zmm5,zmm4,zmm9
  a27123:	62 f1 7c 48 10 79 08 	vmovups zmm7,ZMMWORD PTR [rcx+0x200]
  a2712a:	62 71 7c 48 10 49 09 	vmovups zmm9,ZMMWORD PTR [rcx+0x240]
  a27131:	62 61 44 40 59 d7    	vmulps zmm26,zmm23,zmm7
  a27137:	62 42 25 48 bc d1    	vfnmadd231ps zmm26,zmm11,zmm9
  a2713d:	62 61 24 48 59 ff    	vmulps zmm31,zmm11,zmm7
  a27143:	62 f1 7c 48 10 79 0c 	vmovups zmm7,ZMMWORD PTR [rcx+0x300]
  a2714a:	62 22 35 48 b8 ff    	vfmadd231ps zmm31,zmm9,zmm23
  a27150:	62 71 7c 48 10 49 0d 	vmovups zmm9,ZMMWORD PTR [rcx+0x340]
  a27157:	62 e1 34 40 59 ff    	vmulps zmm23,zmm25,zmm7
  a2715d:	62 f1 24 40 59 ff    	vmulps zmm7,zmm27,zmm7
  a27163:	62 c2 25 40 bc f9    	vfnmadd231ps zmm23,zmm27,zmm9
  a27169:	62 71 7c 48 10 59 02 	vmovups zmm11,ZMMWORD PTR [rcx+0x80]
  a27170:	62 92 35 48 b8 f9    	vfmadd231ps zmm7,zmm9,zmm25
  a27176:	62 71 7c 48 10 49 03 	vmovups zmm9,ZMMWORD PTR [rcx+0xc0]
  a2717d:	62 41 6c 40 59 cb    	vmulps zmm25,zmm18,zmm11
  a27183:	62 42 0d 40 bc c9    	vfnmadd231ps zmm25,zmm30,zmm9
  a27189:	62 51 0c 40 59 db    	vmulps zmm11,zmm30,zmm11
  a2718f:	62 61 7c 48 10 59 0a 	vmovups zmm27,ZMMWORD PTR [rcx+0x280]
  a27196:	62 32 35 48 b8 da    	vfmadd231ps zmm11,zmm9,zmm18
  a2719c:	62 71 7c 48 10 49 0b 	vmovups zmm9,ZMMWORD PTR [rcx+0x2c0]
  a271a3:	62 81 74 40 59 d3    	vmulps zmm18,zmm17,zmm27
  a271a9:	62 01 14 40 59 db    	vmulps zmm27,zmm29,zmm27
  a271af:	62 c2 15 40 bc d1    	vfnmadd231ps zmm18,zmm29,zmm9
  a271b5:	62 61 7c 48 10 69 06 	vmovups zmm29,ZMMWORD PTR [rcx+0x180]
  a271bc:	62 22 35 48 b8 d9    	vfmadd231ps zmm27,zmm9,zmm17
  a271c2:	62 71 7c 48 10 49 07 	vmovups zmm9,ZMMWORD PTR [rcx+0x1c0]
  a271c9:	62 81 04 48 59 cd    	vmulps zmm17,zmm15,zmm29
  a271cf:	62 c2 1d 40 bc c9    	vfnmadd231ps zmm17,zmm28,zmm9
  a271d5:	62 01 1c 40 59 e5    	vmulps zmm28,zmm28,zmm29
  a271db:	62 61 7c 48 10 69 0e 	vmovups zmm29,ZMMWORD PTR [rcx+0x380]
  a271e2:	62 42 35 48 b8 e7    	vfmadd231ps zmm28,zmm9,zmm15
  a271e8:	62 71 7c 48 10 49 0f 	vmovups zmm9,ZMMWORD PTR [rcx+0x3c0]
  a271ef:	62 11 0c 48 59 fd    	vmulps zmm15,zmm14,zmm29
  a271f5:	62 01 54 48 59 ed    	vmulps zmm29,zmm5,zmm29
  a271fb:	62 52 55 48 bc f9    	vfnmadd231ps zmm15,zmm5,zmm9
  a27201:	62 42 35 48 b8 ee    	vfmadd231ps zmm29,zmm9,zmm14
  a27207:	62 f1 7c 48 10 69 04 	vmovups zmm5,ZMMWORD PTR [rcx+0x100]
  a2720e:	62 71 7c 48 10 49 05 	vmovups zmm9,ZMMWORD PTR [rcx+0x140]
  a27215:	62 82 65 48 7f f0    	vpermt2ps zmm22,zmm3,zmm24
  a2721b:	62 71 5c 40 59 f5    	vmulps zmm14,zmm20,zmm5
  a27221:	62 52 4d 40 bc f1    	vfnmadd231ps zmm14,zmm22,zmm9
  a27227:	62 f1 4c 40 59 ed    	vmulps zmm5,zmm22,zmm5
  a2722d:	62 b2 35 48 b8 ec    	vfmadd231ps zmm5,zmm9,zmm20
  a27233:	62 c2 65 48 7f c5    	vpermt2ps zmm16,zmm3,zmm13
  a27239:	62 a2 65 48 7f dd    	vpermt2ps zmm19,zmm3,zmm21
  a2723f:	62 31 34 40 58 ca    	vaddps zmm9,zmm25,zmm18
  a27245:	62 31 34 40 5c ea    	vsubps zmm13,zmm25,zmm18
  a2724b:	62 81 24 48 58 d3    	vaddps zmm18,zmm11,zmm27
  a27251:	62 11 24 48 5c db    	vsubps zmm11,zmm11,zmm27
  a27257:	62 81 1c 40 58 e5    	vaddps zmm20,zmm28,zmm29
  a2725d:	62 81 1c 40 5c ed    	vsubps zmm21,zmm28,zmm29
  a27263:	62 c1 74 40 58 f7    	vaddps zmm22,zmm17,zmm15
  a27269:	62 51 74 40 5c ff    	vsubps zmm15,zmm17,zmm15
  a2726f:	62 81 7c 40 58 ca    	vaddps zmm17,zmm16,zmm26
  a27275:	62 81 7c 40 5c c2    	vsubps zmm16,zmm16,zmm26
  a2727b:	62 21 04 40 58 c3    	vaddps zmm24,zmm31,zmm19
  a27281:	62 81 64 40 5c df    	vsubps zmm19,zmm19,zmm31
  a27287:	62 61 54 48 58 cf    	vaddps zmm25,zmm5,zmm7
  a2728d:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a27293:	62 b1 0c 48 58 ff    	vaddps zmm7,zmm14,zmm23
  a27299:	62 51 44 40 5c f6    	vsubps zmm14,zmm23,zmm14
  a2729f:	62 c1 14 48 58 fb    	vaddps zmm23,zmm13,zmm11
  a272a5:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a272ab:	62 51 54 40 5c ef    	vsubps zmm13,zmm21,zmm15
  a272b1:	62 31 04 48 58 fd    	vaddps zmm15,zmm15,zmm21
  a272b7:	62 e1 74 40 58 ef    	vaddps zmm21,zmm17,zmm7
  a272bd:	62 f1 74 40 5c ff    	vsubps zmm7,zmm17,zmm7
  a272c3:	62 a1 6c 40 58 cc    	vaddps zmm17,zmm18,zmm20
  a272c9:	62 a1 6c 40 5c d4    	vsubps zmm18,zmm18,zmm20
  a272cf:	62 81 34 40 58 e0    	vaddps zmm20,zmm25,zmm24
  a272d5:	62 01 3c 40 5c c1    	vsubps zmm24,zmm24,zmm25
  a272db:	62 21 34 48 58 ce    	vaddps zmm25,zmm9,zmm22
  a272e1:	62 51 4c 40 5c c9    	vsubps zmm9,zmm22,zmm9
  a272e7:	62 e1 7c 40 58 f5    	vaddps zmm22,zmm16,zmm5
  a272ed:	62 72 7d 48 18 05 a5 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff64e0a5]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a272f4:	e0 64 ff 
  a272f7:	62 c1 44 40 59 f8    	vmulps zmm23,zmm23,zmm8
  a272fd:	62 51 14 48 59 e8    	vmulps zmm13,zmm13,zmm8
  a27303:	62 f1 7c 40 5c ed    	vsubps zmm5,zmm16,zmm5
  a27309:	62 a1 0c 48 58 c3    	vaddps zmm16,zmm14,zmm19
  a2730f:	62 51 24 48 59 d8    	vmulps zmm11,zmm11,zmm8
  a27315:	62 51 04 48 59 f8    	vmulps zmm15,zmm15,zmm8
  a2731b:	62 51 64 40 5c f6    	vsubps zmm14,zmm19,zmm14
  a27321:	62 c1 24 48 5c df    	vsubps zmm19,zmm11,zmm15
  a27327:	62 51 24 48 58 df    	vaddps zmm11,zmm11,zmm15
  a2732d:	62 51 44 40 58 fd    	vaddps zmm15,zmm23,zmm13
  a27333:	62 31 14 48 5c ef    	vsubps zmm13,zmm13,zmm23
  a27339:	62 c1 4c 40 58 ff    	vaddps zmm23,zmm22,zmm15
  a2733f:	62 51 4c 40 5c ff    	vsubps zmm15,zmm22,zmm15
  a27345:	62 a1 44 48 58 f2    	vaddps zmm22,zmm7,zmm18
  a2734b:	62 b1 44 48 5c fa    	vsubps zmm7,zmm7,zmm18
  a27351:	62 a1 7c 40 58 d3    	vaddps zmm18,zmm16,zmm19
  a27357:	62 a1 7c 40 5c c3    	vsubps zmm16,zmm16,zmm19
  a2735d:	62 c1 3c 40 58 d9    	vaddps zmm19,zmm24,zmm9
  a27363:	62 51 3c 40 5c c9    	vsubps zmm9,zmm24,zmm9
  a27369:	62 41 54 48 58 c3    	vaddps zmm24,zmm5,zmm11
  a2736f:	62 d1 54 48 5c eb    	vsubps zmm5,zmm5,zmm11
  a27375:	62 31 5c 40 5c d9    	vsubps zmm11,zmm20,zmm17
  a2737b:	62 a1 5c 40 58 c9    	vaddps zmm17,zmm20,zmm17
  a27381:	62 c1 0c 48 58 e5    	vaddps zmm20,zmm14,zmm13
  a27387:	62 51 0c 48 5c ed    	vsubps zmm13,zmm14,zmm13
  a2738d:	62 11 54 40 5c f1    	vsubps zmm14,zmm21,zmm25
  a27393:	62 81 54 40 58 e9    	vaddps zmm21,zmm21,zmm25
  a27399:	62 a2 1d 48 7f cd    	vpermt2ps zmm17,zmm12,zmm21
  a2739f:	62 e3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm17,0x2
  a273a6:	02 02 
  a273a8:	62 e1 7c 28 11 0c 16 	vmovups YMMWORD PTR [rsi+rdx*1],ymm17
  a273af:	62 a2 1d 48 7f d7    	vpermt2ps zmm18,zmm12,zmm23
  a273b5:	62 e3 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm18,0x2
  a273bc:	05 02 
  a273be:	62 e1 7c 28 11 94 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm18
  a273c5:	30 00 00 00 
  a273c9:	62 a2 1d 48 7f de    	vpermt2ps zmm19,zmm12,zmm22
  a273cf:	62 82 1d 48 7f e0    	vpermt2ps zmm20,zmm12,zmm24
  a273d5:	62 e3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm19,0x2
  a273dc:	08 02 
  a273de:	62 e1 7c 28 11 5c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm19
  a273e5:	03 
  a273e6:	62 e3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm20,0x2
  a273ed:	0b 02 
  a273ef:	62 e1 7c 28 11 a4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm20
  a273f6:	90 00 00 00 
  a273fa:	62 52 1d 48 7f de    	vpermt2ps zmm11,zmm12,zmm14
  a27400:	62 73 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm11,0x2
  a27407:	0e 02 
  a27409:	c5 7c 11 9c 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm11
  a27410:	00 00 
  a27412:	62 c2 1d 48 7f c7    	vpermt2ps zmm16,zmm12,zmm15
  a27418:	62 e3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x110],zmm16,0x2
  a2741f:	11 02 
  a27421:	62 e1 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm16
  a27428:	f0 00 00 00 
  a2742c:	62 72 1d 48 7f cf    	vpermt2ps zmm9,zmm12,zmm7
  a27432:	62 72 1d 48 7f ed    	vpermt2ps zmm13,zmm12,zmm5
  a27438:	62 73 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x140],zmm9,0x2
  a2743f:	14 02 
  a27441:	c5 7c 11 8c 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm9
  a27448:	00 00 
  a2744a:	62 73 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x170],zmm13,0x2
  a27451:	17 02 
  a27453:	c5 7c 11 ac 16 50 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x150],ymm13
  a2745a:	00 00 
  a2745c:	48 81 c2 80 01 00 00 	add    rdx,0x180
  a27463:	48 39 d0             	cmp    rax,rdx
  a27466:	0f 85 44 f9 ff ff    	jne    a26db0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  a2746c:	48 89 ec             	mov    rsp,rbp
  a2746f:	5d                   	pop    rbp
  a27470:	c5 f8 77             	vzeroupper
  a27473:	c3                   	ret
