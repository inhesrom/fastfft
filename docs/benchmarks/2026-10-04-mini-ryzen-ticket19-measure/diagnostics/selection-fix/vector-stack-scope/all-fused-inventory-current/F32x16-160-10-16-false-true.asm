
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a0fc40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a0fc40:	55                   	push   rbp
  a0fc41:	48 89 e5             	mov    rbp,rsp
  a0fc44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a0fc48:	48 81 ec c0 0a 00 00 	sub    rsp,0xac0
  a0fc4f:	48 c1 e2 08          	shl    rdx,0x8
  a0fc53:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a0fc57:	31 d2                	xor    edx,edx
  a0fc59:	4c 8d 84 24 40 0a 00 	lea    r8,[rsp+0xa40]
  a0fc60:	00 
  a0fc61:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a0fc66:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a0fc6d:	00 00 00 
  a0fc70:	c6 84 24 40 0a 00 00 	mov    BYTE PTR [rsp+0xa40],0x0
  a0fc77:	00 
  a0fc78:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a0fc7d:	62 71 7c 48 10 14 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1]
  a0fc84:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x40]
  a0fc8b:	01 
  a0fc8c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a0fc93:	05 
  a0fc94:	62 71 7c 48 10 44 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x80]
  a0fc9b:	02 
  a0fc9c:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a0fca3:	03 
  a0fca4:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a0fcaa:	62 f1 7c 48 28 05 0c 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff67f10c]        # 8edc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c270>
  a0fcb1:	f1 67 ff 
  a0fcb4:	62 72 7d 48 7f d9    	vpermt2ps zmm11,zmm0,zmm1
  a0fcba:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x100]
  a0fcc1:	04 
  a0fcc2:	62 61 7c 48 10 5c 17 	vmovups zmm27,ZMMWORD PTR [rdi+rdx*1+0x140]
  a0fcc9:	05 
  a0fcca:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a0fcd0:	62 92 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm27
  a0fcd6:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a0fcdd:	02 
  a0fcde:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x400]
  a0fce5:	10 
  a0fce6:	62 61 7c 48 10 64 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x440]
  a0fced:	11 
  a0fcee:	62 d1 7c 48 28 d4    	vmovaps zmm2,zmm12
  a0fcf4:	62 92 7d 48 7f d4    	vpermt2ps zmm2,zmm0,zmm28
  a0fcfa:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a0fd00:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a0fd07:	04 
  a0fd08:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x200]
  a0fd0f:	08 
  a0fd10:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x240]
  a0fd17:	09 
  a0fd18:	62 d1 7c 48 28 ee    	vmovaps zmm5,zmm14
  a0fd1e:	62 b2 7d 48 7f eb    	vpermt2ps zmm5,zmm0,zmm19
  a0fd24:	62 71 7c 48 10 7c 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x300]
  a0fd2b:	0c 
  a0fd2c:	62 61 7c 48 10 54 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x340]
  a0fd33:	0d 
  a0fd34:	62 d1 7c 48 28 ff    	vmovaps zmm7,zmm15
  a0fd3a:	62 92 7d 48 7f fa    	vpermt2ps zmm7,zmm0,zmm26
  a0fd40:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x280]
  a0fd47:	0a 
  a0fd48:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  a0fd4f:	0b 
  a0fd50:	62 e1 7c 48 28 f2    	vmovaps zmm22,zmm2
  a0fd56:	62 a2 7d 48 7f f0    	vpermt2ps zmm22,zmm0,zmm16
  a0fd5c:	62 e1 7c 48 10 4c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x380]
  a0fd63:	0e 
  a0fd64:	62 61 7c 48 10 6c 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x3c0]
  a0fd6b:	0f 
  a0fd6c:	62 b1 7c 48 28 f1    	vmovaps zmm6,zmm17
  a0fd72:	62 92 7d 48 7f f5    	vpermt2ps zmm6,zmm0,zmm29
  a0fd78:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm6
  a0fd7f:	07 
  a0fd80:	62 e1 7c 48 10 64 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x180]
  a0fd87:	06 
  a0fd88:	62 61 7c 48 10 74 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a0fd8f:	07 
  a0fd90:	62 31 7c 48 28 cc    	vmovaps zmm9,zmm20
  a0fd96:	62 e1 74 48 58 fb    	vaddps zmm23,zmm1,zmm3
  a0fd9c:	62 12 7d 48 7f ce    	vpermt2ps zmm9,zmm0,zmm30
  a0fda2:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm9
  a0fda9:	09 
  a0fdaa:	62 e1 7c 48 10 6c 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x480]
  a0fdb1:	12 
  a0fdb2:	62 61 7c 48 10 7c 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x4c0]
  a0fdb9:	13 
  a0fdba:	62 61 54 48 58 cf    	vaddps zmm25,zmm5,zmm7
  a0fdc0:	62 31 7c 48 28 ed    	vmovaps zmm13,zmm21
  a0fdc6:	62 12 7d 48 7f ef    	vpermt2ps zmm13,zmm0,zmm31
  a0fdcc:	62 f1 7c 48 28 1d 2a 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff67f02a]        # 8ee00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c2b0>
  a0fdd3:	f0 67 ff 
  a0fdd6:	62 32 65 48 7f f3    	vpermt2ps zmm14,zmm3,zmm19
  a0fddc:	62 41 4c 48 58 c1    	vaddps zmm24,zmm6,zmm9
  a0fde2:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a0fde8:	62 32 7d 48 7f ca    	vpermt2ps zmm9,zmm0,zmm18
  a0fdee:	62 12 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm26
  a0fdf4:	62 41 14 48 58 d1    	vaddps zmm26,zmm13,zmm9
  a0fdfa:	62 92 65 48 7f e3    	vpermt2ps zmm4,zmm3,zmm27
  a0fe00:	62 41 0c 48 5c df    	vsubps zmm27,zmm14,zmm15
  a0fe06:	62 12 65 48 7f e4    	vpermt2ps zmm12,zmm3,zmm28
  a0fe0c:	62 21 24 48 58 e7    	vaddps zmm28,zmm11,zmm23
  a0fe12:	62 82 65 48 7f ef    	vpermt2ps zmm21,zmm3,zmm31
  a0fe18:	62 41 5c 48 5c fc    	vsubps zmm31,zmm4,zmm12
  a0fe1e:	62 32 65 48 7f c2    	vpermt2ps zmm8,zmm3,zmm18
  a0fe24:	62 81 4c 40 58 d0    	vaddps zmm18,zmm22,zmm24
  a0fe2a:	62 82 65 48 7f cd    	vpermt2ps zmm17,zmm3,zmm29
  a0fe30:	62 f2 7d 48 18 0d 1e 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff66591e]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a0fe37:	59 66 ff 
  a0fe3a:	62 61 04 40 59 e9    	vmulps zmm29,zmm31,zmm1
  a0fe40:	62 82 65 48 7f e6    	vpermt2ps zmm20,zmm3,zmm30
  a0fe46:	62 f2 7d 48 18 35 50 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff665550]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a0fe4d:	55 66 ff 
  a0fe50:	62 62 25 40 bc ee    	vfnmadd231ps zmm29,zmm27,zmm6
  a0fe56:	62 f2 7d 48 18 05 e4 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6657e4]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a0fe5d:	57 66 ff 
  a0fe60:	62 61 7c 48 28 f0    	vmovaps zmm30,zmm0
  a0fe66:	62 42 45 40 ac f3    	vfnmadd213ps zmm30,zmm23,zmm11
  a0fe6c:	62 61 24 40 59 d9    	vmulps zmm27,zmm27,zmm1
  a0fe72:	62 01 1c 40 58 e1    	vaddps zmm28,zmm28,zmm25
  a0fe78:	62 02 4d 48 b8 df    	vfmadd231ps zmm27,zmm6,zmm31
  a0fe7e:	62 41 54 40 5c f8    	vsubps zmm31,zmm21,zmm8
  a0fe84:	62 e2 7d 48 18 1d 5a 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff66585a]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a0fe8b:	58 66 ff 
  a0fe8e:	62 32 65 40 b8 df    	vfmadd231ps zmm11,zmm19,zmm23
  a0fe94:	62 22 35 40 b8 f3    	vfmadd231ps zmm30,zmm25,zmm19
  a0fe9a:	62 a1 74 40 5c fc    	vsubps zmm23,zmm17,zmm20
  a0fea0:	62 12 7d 48 bc d9    	vfnmadd231ps zmm11,zmm0,zmm25
  a0fea6:	62 61 44 40 59 c9    	vmulps zmm25,zmm23,zmm1
  a0feac:	62 62 05 40 bc ce    	vfnmadd231ps zmm25,zmm31,zmm6
  a0feb2:	62 61 04 40 59 f9    	vmulps zmm31,zmm31,zmm1
  a0feb8:	62 22 4d 48 b8 ff    	vfmadd231ps zmm31,zmm6,zmm23
  a0febe:	62 e1 7c 48 28 f8    	vmovaps zmm23,zmm0
  a0fec4:	62 91 6c 40 58 ca    	vaddps zmm1,zmm18,zmm26
  a0feca:	62 a2 3d 40 ac fe    	vfnmadd213ps zmm23,zmm24,zmm22
  a0fed0:	62 a2 2d 40 b8 fb    	vfmadd231ps zmm23,zmm26,zmm19
  a0fed6:	62 82 65 40 b8 f0    	vfmadd231ps zmm22,zmm19,zmm24
  a0fedc:	62 e1 1c 40 58 d1    	vaddps zmm18,zmm28,zmm1
  a0fee2:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm18
  a0fee9:	0f 
  a0feea:	62 82 7d 48 bc f2    	vfnmadd231ps zmm22,zmm0,zmm26
  a0fef0:	62 01 14 40 58 c6    	vaddps zmm24,zmm29,zmm30
  a0fef6:	62 01 0c 40 5c d5    	vsubps zmm26,zmm30,zmm29
  a0fefc:	62 21 34 40 58 ef    	vaddps zmm29,zmm25,zmm23
  a0ff02:	62 01 44 40 5c c9    	vsubps zmm25,zmm23,zmm25
  a0ff08:	62 c1 24 40 58 fb    	vaddps zmm23,zmm27,zmm11
  a0ff0e:	62 11 24 48 5c db    	vsubps zmm11,zmm11,zmm27
  a0ff14:	62 21 04 40 58 de    	vaddps zmm27,zmm31,zmm22
  a0ff1a:	62 81 4c 40 5c f7    	vsubps zmm22,zmm22,zmm31
  a0ff20:	62 b1 24 48 58 f6    	vaddps zmm6,zmm11,zmm22
  a0ff26:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm6
  a0ff2d:	01 
  a0ff2e:	62 21 24 48 5c f6    	vsubps zmm30,zmm11,zmm22
  a0ff34:	62 11 44 40 58 db    	vaddps zmm11,zmm23,zmm27
  a0ff3a:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm11
  a0ff41:	0e 
  a0ff42:	62 91 44 40 5c c3    	vsubps zmm0,zmm23,zmm27
  a0ff48:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a0ff4f:	0a 
  a0ff50:	62 21 7c 48 28 da    	vmovaps zmm27,zmm18
  a0ff56:	62 f1 1c 40 5c c1    	vsubps zmm0,zmm28,zmm1
  a0ff5c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a0ff63:	03 
  a0ff64:	62 91 3c 40 58 cd    	vaddps zmm1,zmm24,zmm29
  a0ff6a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a0ff71:	0d 
  a0ff72:	62 72 65 48 7f 54 24 	vpermt2ps zmm10,zmm3,ZMMWORD PTR [rsp+0x140]
  a0ff79:	05 
  a0ff7a:	62 c1 5c 48 58 f4    	vaddps zmm22,zmm4,zmm12
  a0ff80:	62 01 2c 40 58 f9    	vaddps zmm31,zmm26,zmm25
  a0ff86:	62 e1 7c 48 28 15 f0 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6b6ff0]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a0ff8d:	6f 6b ff 
  a0ff90:	c4 41 18 57 e4       	vxorps xmm12,xmm12,xmm12
  a0ff95:	62 d2 6d 40 7f c4    	vpermt2ps zmm0,zmm18,zmm12
  a0ff9b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a0ffa2:	0b 
  a0ffa3:	62 51 0c 48 58 ff    	vaddps zmm15,zmm14,zmm15
  a0ffa9:	62 b1 2c 48 58 c6    	vaddps zmm0,zmm10,zmm22
  a0ffaf:	62 01 3c 40 5c ed    	vsubps zmm29,zmm24,zmm29
  a0ffb5:	62 41 7c 48 58 c7    	vaddps zmm24,zmm0,zmm15
  a0ffbb:	62 b2 65 48 7f d0    	vpermt2ps zmm2,zmm3,zmm16
  a0ffc1:	62 a1 74 40 58 c4    	vaddps zmm16,zmm17,zmm20
  a0ffc7:	62 01 2c 40 5c d1    	vsubps zmm26,zmm26,zmm25
  a0ffcd:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm26
  a0ffd4:	06 
  a0ffd5:	62 b1 6c 48 58 c0    	vaddps zmm0,zmm2,zmm16
  a0ffdb:	62 d1 54 40 58 e0    	vaddps zmm4,zmm21,zmm8
  a0ffe1:	62 e1 7c 48 58 e4    	vaddps zmm20,zmm0,zmm4
  a0ffe7:	62 62 6d 40 7f d9    	vpermt2ps zmm27,zmm18,zmm1
  a0ffed:	62 b1 3c 40 58 c4    	vaddps zmm0,zmm24,zmm20
  a0fff3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a0fffa:	08 
  a0fffb:	62 72 7d 48 18 05 3f 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff66563f]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a10002:	56 66 ff 
  a10005:	62 c1 7c 48 28 c8    	vmovaps zmm17,zmm8
  a1000b:	62 c2 4d 40 ac ca    	vfnmadd213ps zmm17,zmm22,zmm10
  a10011:	62 c1 7c 48 28 eb    	vmovaps zmm21,zmm11
  a10017:	62 a2 05 48 b8 cb    	vfmadd231ps zmm17,zmm15,zmm19
  a1001d:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a10023:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a1002a:	02 
  a1002b:	62 f1 7c 48 5c 5c 24 	vsubps zmm3,zmm0,ZMMWORD PTR [rsp+0x100]
  a10032:	04 
  a10033:	62 f2 7d 48 18 05 1b 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff66571b]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a1003a:	57 66 ff 
  a1003d:	62 f1 64 48 59 f8    	vmulps zmm7,zmm3,zmm0
  a10043:	62 f2 7d 48 18 0d 53 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff665353]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a1004a:	53 66 ff 
  a1004d:	62 f2 55 48 bc f9    	vfnmadd231ps zmm7,zmm5,zmm1
  a10053:	62 51 14 48 5c c9    	vsubps zmm9,zmm13,zmm9
  a10059:	62 61 7c 48 28 ce    	vmovaps zmm25,zmm6
  a1005f:	62 71 74 40 5c f7    	vsubps zmm14,zmm17,zmm7
  a10065:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x1c0]
  a1006c:	07 
  a1006d:	62 f1 4c 48 5c 74 24 	vsubps zmm6,zmm6,ZMMWORD PTR [rsp+0x240]
  a10074:	09 
  a10075:	62 32 65 40 b8 d6    	vfmadd231ps zmm10,zmm19,zmm22
  a1007b:	62 81 7c 48 28 f6    	vmovaps zmm22,zmm30
  a10081:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a10087:	62 72 7d 40 ac c2    	vfnmadd213ps zmm8,zmm16,zmm2
  a1008d:	62 52 25 48 bc d7    	vfnmadd231ps zmm10,zmm11,zmm15
  a10093:	62 01 7c 48 28 e5    	vmovaps zmm28,zmm29
  a10099:	62 32 5d 48 b8 c3    	vfmadd231ps zmm8,zmm4,zmm19
  a1009f:	62 71 54 48 59 e8    	vmulps zmm13,zmm5,zmm0
  a100a5:	62 72 75 48 b8 eb    	vfmadd231ps zmm13,zmm1,zmm3
  a100ab:	62 11 7c 48 28 fa    	vmovaps zmm15,zmm26
  a100b1:	62 b2 65 40 b8 d0    	vfmadd231ps zmm2,zmm19,zmm16
  a100b7:	62 f1 4c 48 59 d8    	vmulps zmm3,zmm6,zmm0
  a100bd:	62 f2 35 48 bc d9    	vfnmadd231ps zmm3,zmm9,zmm1
  a100c3:	62 c2 6d 40 7f ec    	vpermt2ps zmm21,zmm18,zmm12
  a100c9:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm21
  a100d0:	22 
  a100d1:	62 f2 25 48 bc d4    	vfnmadd231ps zmm2,zmm11,zmm4
  a100d7:	62 f1 34 48 59 e0    	vmulps zmm4,zmm9,zmm0
  a100dd:	62 f2 75 48 b8 e6    	vfmadd231ps zmm4,zmm1,zmm6
  a100e3:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm27
  a100ea:	05 
  a100eb:	62 f1 3c 48 5c f3    	vsubps zmm6,zmm8,zmm3
  a100f1:	62 f1 74 40 58 ff    	vaddps zmm7,zmm17,zmm7
  a100f7:	62 f1 0c 48 58 ee    	vaddps zmm5,zmm14,zmm6
  a100fd:	62 01 7c 48 28 d7    	vmovaps zmm26,zmm31
  a10103:	62 42 6d 40 7f d4    	vpermt2ps zmm26,zmm18,zmm12
  a10109:	62 f1 3c 48 58 db    	vaddps zmm3,zmm8,zmm3
  a1010f:	62 51 2c 48 5c c5    	vsubps zmm8,zmm10,zmm13
  a10115:	62 d1 2c 48 58 cd    	vaddps zmm1,zmm10,zmm13
  a1011b:	62 42 6d 40 7f cc    	vpermt2ps zmm25,zmm18,zmm12
  a10121:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm25
  a10128:	21 
  a10129:	62 71 6c 48 5c cc    	vsubps zmm9,zmm2,zmm4
  a1012f:	62 f1 6c 48 58 d4    	vaddps zmm2,zmm2,zmm4
  a10135:	62 e1 74 48 58 c2    	vaddps zmm16,zmm1,zmm2
  a1013b:	62 e2 6d 40 7f 74 24 	vpermt2ps zmm22,zmm18,ZMMWORD PTR [rsp+0x280]
  a10142:	0a 
  a10143:	62 71 74 48 5c ea    	vsubps zmm13,zmm1,zmm2
  a10149:	62 d1 3c 48 58 c9    	vaddps zmm1,zmm8,zmm9
  a1014f:	62 d1 3c 48 5c e1    	vsubps zmm4,zmm8,zmm9
  a10155:	62 42 6d 40 7f e4    	vpermt2ps zmm28,zmm18,zmm12
  a1015b:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x200]
  a10162:	08 
  a10163:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a10169:	62 b1 3c 40 5c d4    	vsubps zmm2,zmm24,zmm20
  a1016f:	62 e1 7c 48 28 f9    	vmovaps zmm23,zmm1
  a10175:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a1017b:	62 52 6d 40 7f fc    	vpermt2ps zmm15,zmm18,zmm12
  a10181:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm15
  a10188:	20 
  a10189:	62 f1 0c 48 5c f6    	vsubps zmm6,zmm14,zmm6
  a1018f:	62 f1 44 48 58 c3    	vaddps zmm0,zmm7,zmm3
  a10195:	62 71 44 48 5c f3    	vsubps zmm14,zmm7,zmm3
  a1019b:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm26
  a101a2:	04 
  a101a3:	62 f1 7c 48 28 0d 93 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6b6d93]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a101aa:	6d 6b ff 
  a101ad:	62 11 7c 48 28 c3    	vmovaps zmm8,zmm27
  a101b3:	62 32 75 48 7f c5    	vpermt2ps zmm8,zmm1,zmm21
  a101b9:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm8
  a101c0:	16 
  a101c1:	62 c1 7c 48 28 e2    	vmovaps zmm20,zmm10
  a101c7:	62 e2 6d 40 7f e5    	vpermt2ps zmm20,zmm18,zmm5
  a101cd:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm20
  a101d4:	08 
  a101d5:	62 d1 7c 48 28 f9    	vmovaps zmm7,zmm9
  a101db:	62 d2 6d 40 7f fc    	vpermt2ps zmm7,zmm18,zmm12
  a101e1:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm7
  a101e8:	1f 
  a101e9:	62 81 7c 48 28 ca    	vmovaps zmm17,zmm26
  a101ef:	62 82 75 48 7f c9    	vpermt2ps zmm17,zmm1,zmm25
  a101f5:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm17
  a101fc:	0c 
  a101fd:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a10203:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a10209:	62 42 6d 40 7f dc    	vpermt2ps zmm27,zmm18,zmm12
  a1020f:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm27
  a10216:	1e 
  a10217:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm22
  a1021e:	02 
  a1021f:	62 e2 75 48 7f 74 24 	vpermt2ps zmm22,zmm1,ZMMWORD PTR [rsp+0x2c0]
  a10226:	0b 
  a10227:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm22
  a1022e:	14 
  a1022f:	62 b1 7c 48 28 c0    	vmovaps zmm0,zmm16
  a10235:	62 21 7c 48 28 c0    	vmovaps zmm24,zmm16
  a1023b:	62 d2 6d 40 7f c4    	vpermt2ps zmm0,zmm18,zmm12
  a10241:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a10247:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm0
  a1024e:	1d 
  a1024f:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm28
  a10256:	09 
  a10257:	62 42 75 48 7f e7    	vpermt2ps zmm28,zmm1,zmm15
  a1025d:	62 81 7c 48 28 c4    	vmovaps zmm16,zmm28
  a10263:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm28
  a1026a:	15 
  a1026b:	62 41 7c 48 28 cd    	vmovaps zmm25,zmm13
  a10271:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a10277:	62 62 6d 40 7f cc    	vpermt2ps zmm25,zmm18,zmm4
  a1027d:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm25
  a10284:	1c 
  a10285:	62 21 7c 48 28 d4    	vmovaps zmm26,zmm20
  a1028b:	62 62 75 48 7f d7    	vpermt2ps zmm26,zmm1,zmm7
  a10291:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a10297:	62 e1 7c 48 28 da    	vmovaps zmm19,zmm2
  a1029d:	62 d2 6d 40 7f c4    	vpermt2ps zmm0,zmm18,zmm12
  a102a3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm0
  a102aa:	1b 
  a102ab:	62 42 75 48 7f da    	vpermt2ps zmm27,zmm1,zmm10
  a102b1:	62 61 7c 48 28 e6    	vmovaps zmm28,zmm6
  a102b7:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a102bd:	62 42 6d 40 7f e4    	vpermt2ps zmm28,zmm18,zmm12
  a102c3:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm28
  a102ca:	07 
  a102cb:	62 62 75 48 7f c8    	vpermt2ps zmm25,zmm1,zmm0
  a102d1:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a102d7:	62 52 6d 40 7f f4    	vpermt2ps zmm14,zmm18,zmm12
  a102dd:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm14
  a102e4:	1a 
  a102e5:	62 42 75 48 7f e6    	vpermt2ps zmm28,zmm1,zmm14
  a102eb:	62 91 ad 40 15 c3    	vunpckhpd zmm0,zmm26,zmm27
  a102f1:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x980],zmm0
  a102f8:	26 
  a102f9:	62 11 b5 40 15 ec    	vunpckhpd zmm13,zmm25,zmm28
  a102ff:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm13
  a10306:	25 
  a10307:	62 e1 7c 48 28 2d ef 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6b6aef]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1030e:	6a 6b ff 
  a10311:	62 d2 55 40 7f c5    	vpermt2ps zmm0,zmm21,zmm13
  a10317:	62 b1 bd 48 15 f1    	vunpckhpd zmm6,zmm8,zmm17
  a1031d:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm6
  a10324:	24 
  a10325:	62 31 cd 40 15 c0    	vunpckhpd zmm8,zmm22,zmm16
  a1032b:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm8
  a10332:	23 
  a10333:	62 d2 55 40 7f f0    	vpermt2ps zmm6,zmm21,zmm8
  a10339:	62 71 7c 48 10 41 0d 	vmovups zmm8,ZMMWORD PTR [rcx+0x340]
  a10340:	62 71 7c 48 10 69 0c 	vmovups zmm13,ZMMWORD PTR [rcx+0x300]
  a10347:	62 51 4c 48 59 f5    	vmulps zmm14,zmm6,zmm13
  a1034d:	62 52 7d 48 b8 f0    	vfmadd231ps zmm14,zmm0,zmm8
  a10353:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xa00],zmm14
  a1035a:	28 
  a1035b:	62 d1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm13
  a10361:	62 f2 3d 48 bc c6    	vfnmadd231ps zmm0,zmm8,zmm6
  a10367:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x9c0],zmm0
  a1036e:	27 
  a1036f:	62 f1 7c 48 28 05 47 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6b6c47]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a10376:	6c 6b ff 
  a10379:	62 72 7d 48 7f dd    	vpermt2ps zmm11,zmm0,zmm5
  a1037f:	62 f2 7d 48 7f dc    	vpermt2ps zmm3,zmm0,zmm4
  a10385:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x3c0]
  a1038c:	0f 
  a1038d:	62 f2 7d 48 7f 54 24 	vpermt2ps zmm2,zmm0,ZMMWORD PTR [rsp+0x340]
  a10394:	0d 
  a10395:	62 62 7d 48 7f 74 24 	vpermt2ps zmm30,zmm0,ZMMWORD PTR [rsp+0x280]
  a1039c:	0a 
  a1039d:	62 31 7c 48 28 d7    	vmovaps zmm10,zmm23
  a103a3:	62 52 7d 48 7f d4    	vpermt2ps zmm10,zmm0,zmm12
  a103a9:	62 52 7d 48 7f cc    	vpermt2ps zmm9,zmm0,zmm12
  a103af:	62 42 7d 48 7f c4    	vpermt2ps zmm24,zmm0,zmm12
  a103b5:	62 c2 7d 48 7f dc    	vpermt2ps zmm19,zmm0,zmm12
  a103bb:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x380]
  a103c2:	0e 
  a103c3:	62 d2 7d 48 7f ec    	vpermt2ps zmm5,zmm0,zmm12
  a103c9:	62 d2 7d 48 7f fc    	vpermt2ps zmm7,zmm0,zmm12
  a103cf:	62 42 7d 48 7f fc    	vpermt2ps zmm31,zmm0,zmm12
  a103d5:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x40]
  a103dc:	01 
  a103dd:	62 d2 7d 48 7f e4    	vpermt2ps zmm4,zmm0,zmm12
  a103e3:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm4
  a103ea:	01 
  a103eb:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0xc0]
  a103f2:	03 
  a103f3:	62 d2 7d 48 7f f4    	vpermt2ps zmm6,zmm0,zmm12
  a103f9:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm6
  a10400:	03 
  a10401:	62 52 7d 48 7f fc    	vpermt2ps zmm15,zmm0,zmm12
  a10407:	62 42 7d 48 7f ec    	vpermt2ps zmm29,zmm0,zmm12
  a1040d:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x180]
  a10414:	06 
  a10415:	62 52 7d 48 7f c4    	vpermt2ps zmm8,zmm0,zmm12
  a1041b:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm8
  a10422:	06 
  a10423:	62 e1 7c 48 28 fa    	vmovaps zmm23,zmm2
  a10429:	62 f2 75 48 7f d5    	vpermt2ps zmm2,zmm1,zmm5
  a1042f:	62 71 7c 48 28 e5    	vmovaps zmm12,zmm5
  a10435:	62 81 7c 48 28 d7    	vmovaps zmm18,zmm31
  a1043b:	62 62 75 48 7f fc    	vpermt2ps zmm31,zmm1,zmm4
  a10441:	62 81 7c 48 28 ce    	vmovaps zmm17,zmm30
  a10447:	62 62 75 48 7f f6    	vpermt2ps zmm30,zmm1,zmm6
  a1044d:	62 11 7c 48 28 f5    	vmovaps zmm14,zmm29
  a10453:	62 42 75 48 7f e8    	vpermt2ps zmm29,zmm1,zmm8
  a10459:	62 51 7c 48 28 eb    	vmovaps zmm13,zmm11
  a1045f:	62 52 75 48 7f da    	vpermt2ps zmm11,zmm1,zmm10
  a10465:	62 d1 7c 48 28 f1    	vmovaps zmm6,zmm9
  a1046b:	62 12 75 48 7f c8    	vpermt2ps zmm9,zmm1,zmm24
  a10471:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a10477:	62 b2 75 48 7f db    	vpermt2ps zmm3,zmm1,zmm19
  a1047d:	62 f1 7c 48 28 ef    	vmovaps zmm5,zmm7
  a10483:	62 d2 75 48 7f ff    	vpermt2ps zmm7,zmm1,zmm15
  a10489:	62 c1 a5 48 15 f1    	vunpckhpd zmm22,zmm11,zmm9
  a1048f:	62 f1 e5 48 15 cf    	vunpckhpd zmm1,zmm3,zmm7
  a10495:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm1
  a1049c:	18 
  a1049d:	62 a1 7c 48 28 e6    	vmovaps zmm20,zmm22
  a104a3:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a104a9:	62 e2 55 40 7f e1    	vpermt2ps zmm20,zmm21,zmm1
  a104af:	62 81 ed 48 15 ef    	vunpckhpd zmm21,zmm2,zmm31
  a104b5:	62 91 8d 40 15 cd    	vunpckhpd zmm1,zmm30,zmm29
  a104bb:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm1
  a104c2:	17 
  a104c3:	62 a1 7c 48 28 c5    	vmovaps zmm16,zmm21
  a104c9:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a104cf:	62 f1 7c 48 10 49 1d 	vmovups zmm1,ZMMWORD PTR [rcx+0x740]
  a104d6:	62 f1 7c 48 10 41 1c 	vmovups zmm0,ZMMWORD PTR [rcx+0x700]
  a104dd:	62 f1 7c 40 59 e0    	vmulps zmm4,zmm16,zmm0
  a104e3:	62 f2 5d 40 b8 e1    	vfmadd231ps zmm4,zmm20,zmm1
  a104e9:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm4
  a104f0:	0a 
  a104f1:	62 f1 5c 40 59 c0    	vmulps zmm0,zmm20,zmm0
  a104f7:	62 b2 75 48 bc c0    	vfnmadd231ps zmm0,zmm1,zmm16
  a104fd:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a10504:	0f 
  a10505:	62 01 ed 48 14 ff    	vunpcklpd zmm31,zmm2,zmm31
  a1050b:	62 91 8d 40 14 c5    	vunpcklpd zmm0,zmm30,zmm29
  a10511:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a10518:	11 
  a10519:	62 d1 a5 48 14 d1    	vunpcklpd zmm2,zmm11,zmm9
  a1051f:	62 f1 e5 48 14 cf    	vunpcklpd zmm1,zmm3,zmm7
  a10525:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm1
  a1052c:	10 
  a1052d:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm31
  a10534:	19 
  a10535:	62 f1 7c 48 28 25 01 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6b6901]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1053c:	69 6b ff 
  a1053f:	62 62 5d 48 7f f8    	vpermt2ps zmm31,zmm4,zmm0
  a10545:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a1054b:	62 f2 5d 48 7f d1    	vpermt2ps zmm2,zmm4,zmm1
  a10551:	62 f1 7c 48 10 41 1b 	vmovups zmm0,ZMMWORD PTR [rcx+0x6c0]
  a10558:	62 f1 7c 48 10 49 1a 	vmovups zmm1,ZMMWORD PTR [rcx+0x680]
  a1055f:	62 f1 04 40 59 d9    	vmulps zmm3,zmm31,zmm1
  a10565:	62 f2 6d 48 b8 d8    	vfmadd231ps zmm3,zmm2,zmm0
  a1056b:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm3
  a10572:	0e 
  a10573:	62 f1 6c 48 59 c9    	vmulps zmm1,zmm2,zmm1
  a10579:	62 92 7d 48 bc cf    	vfnmadd231ps zmm1,zmm0,zmm31
  a1057f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a10586:	0d 
  a10587:	62 71 7c 48 28 1d 6f 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6b696f]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1058e:	69 6b ff 
  a10591:	62 52 25 48 7f ea    	vpermt2ps zmm13,zmm11,zmm10
  a10597:	62 92 25 48 7f f0    	vpermt2ps zmm6,zmm11,zmm24
  a1059d:	62 32 25 48 7f c3    	vpermt2ps zmm8,zmm11,zmm19
  a105a3:	62 c2 25 48 7f fc    	vpermt2ps zmm23,zmm11,zmm12
  a105a9:	62 e2 25 48 7f 54 24 	vpermt2ps zmm18,zmm11,ZMMWORD PTR [rsp+0x40]
  a105b0:	01 
  a105b1:	62 d2 25 48 7f ef    	vpermt2ps zmm5,zmm11,zmm15
  a105b7:	62 e2 25 48 7f 4c 24 	vpermt2ps zmm17,zmm11,ZMMWORD PTR [rsp+0xc0]
  a105be:	03 
  a105bf:	62 72 25 48 7f 74 24 	vpermt2ps zmm14,zmm11,ZMMWORD PTR [rsp+0x180]
  a105c6:	06 
  a105c7:	62 b1 c5 40 14 c2    	vunpcklpd zmm0,zmm23,zmm18
  a105cd:	62 d1 f5 40 14 ce    	vunpcklpd zmm1,zmm17,zmm14
  a105d3:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm1
  a105da:	13 
  a105db:	62 71 7c 48 28 f8    	vmovaps zmm15,zmm0
  a105e1:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a105e7:	62 f1 95 48 14 ce    	vunpcklpd zmm1,zmm13,zmm6
  a105ed:	62 f1 bd 48 14 d5    	vunpcklpd zmm2,zmm8,zmm5
  a105f3:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm2
  a105fa:	12 
  a105fb:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  a10601:	62 f2 5d 48 7f ca    	vpermt2ps zmm1,zmm4,zmm2
  a10607:	62 f1 7c 48 10 51 12 	vmovups zmm2,ZMMWORD PTR [rcx+0x480]
  a1060e:	62 71 74 48 59 ca    	vmulps zmm9,zmm1,zmm2
  a10614:	62 f1 7c 48 59 da    	vmulps zmm3,zmm0,zmm2
  a1061a:	62 f1 7c 48 10 51 13 	vmovups zmm2,ZMMWORD PTR [rcx+0x4c0]
  a10621:	62 f2 6d 48 b8 d9    	vfmadd231ps zmm3,zmm2,zmm1
  a10627:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm3
  a1062e:	03 
  a1062f:	62 72 7d 48 bc ca    	vfnmadd231ps zmm9,zmm0,zmm2
  a10635:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm9
  a1063c:	01 
  a1063d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x580]
  a10644:	16 
  a10645:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp+0x300]
  a1064c:	0c 
  a1064d:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x500]
  a10654:	14 
  a10655:	62 f1 f5 48 14 4c 24 	vunpcklpd zmm1,zmm1,ZMMWORD PTR [rsp+0x540]
  a1065c:	15 
  a1065d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a10664:	0c 
  a10665:	62 91 ad 40 14 d3    	vunpcklpd zmm2,zmm26,zmm27
  a1066b:	62 81 b5 40 14 e4    	vunpcklpd zmm20,zmm25,zmm28
  a10671:	62 61 7c 48 28 ea    	vmovaps zmm29,zmm2
  a10677:	62 b2 5d 48 7f d4    	vpermt2ps zmm2,zmm4,zmm20
  a1067d:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a10683:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a10689:	62 f1 7c 48 10 59 0b 	vmovups zmm3,ZMMWORD PTR [rcx+0x2c0]
  a10690:	62 71 7c 48 10 49 0a 	vmovups zmm9,ZMMWORD PTR [rcx+0x280]
  a10697:	62 d1 7c 48 59 c9    	vmulps zmm1,zmm0,zmm9
  a1069d:	62 f2 6d 48 b8 cb    	vfmadd231ps zmm1,zmm2,zmm3
  a106a3:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a106aa:	06 
  a106ab:	62 41 6c 48 59 e1    	vmulps zmm28,zmm2,zmm9
  a106b1:	62 62 65 48 bc e0    	vfnmadd231ps zmm28,zmm3,zmm0
  a106b7:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x140]
  a106be:	05 
  a106bf:	62 e2 25 48 7f 5c 24 	vpermt2ps zmm19,zmm11,ZMMWORD PTR [rsp+0x880]
  a106c6:	22 
  a106c7:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm19
  a106ce:	05 
  a106cf:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a106d6:	04 
  a106d7:	62 f2 25 48 7f 44 24 	vpermt2ps zmm0,zmm11,ZMMWORD PTR [rsp+0x840]
  a106de:	21 
  a106df:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a106e6:	04 
  a106e7:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x80]
  a106ee:	02 
  a106ef:	62 f2 25 48 7f 5c 24 	vpermt2ps zmm3,zmm11,ZMMWORD PTR [rsp+0x2c0]
  a106f6:	0b 
  a106f7:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a106fe:	02 
  a106ff:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x200]
  a10706:	08 
  a10707:	62 f2 25 48 7f 4c 24 	vpermt2ps zmm1,zmm11,ZMMWORD PTR [rsp+0x7c0]
  a1070e:	1f 
  a1070f:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x780]
  a10716:	1e 
  a10717:	62 62 25 48 7f 74 24 	vpermt2ps zmm30,zmm11,ZMMWORD PTR [rsp+0x740]
  a1071e:	1d 
  a1071f:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x240]
  a10726:	09 
  a10727:	62 72 25 48 7f 4c 24 	vpermt2ps zmm9,zmm11,ZMMWORD PTR [rsp+0x800]
  a1072e:	20 
  a1072f:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm9
  a10736:	09 
  a10737:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x700]
  a1073e:	1c 
  a1073f:	62 62 25 48 7f 5c 24 	vpermt2ps zmm27,zmm11,ZMMWORD PTR [rsp+0x6c0]
  a10746:	1b 
  a10747:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x1c0]
  a1074e:	07 
  a1074f:	62 62 25 48 7f 44 24 	vpermt2ps zmm24,zmm11,ZMMWORD PTR [rsp+0x680]
  a10756:	1a 
  a10757:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm24
  a1075e:	07 
  a1075f:	62 f1 e5 40 14 c0    	vunpcklpd zmm0,zmm19,zmm0
  a10765:	62 51 e5 48 14 d9    	vunpcklpd zmm11,zmm3,zmm9
  a1076b:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm11
  a10772:	08 
  a10773:	62 e1 7c 48 28 d8    	vmovaps zmm19,zmm0
  a10779:	62 d2 5d 48 7f c3    	vpermt2ps zmm0,zmm4,zmm11
  a1077f:	62 11 f5 48 14 de    	vunpcklpd zmm11,zmm1,zmm30
  a10785:	62 91 a5 40 14 d8    	vunpcklpd zmm3,zmm27,zmm24
  a1078b:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm3
  a10792:	0b 
  a10793:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a10799:	62 f2 5d 48 7f d3    	vpermt2ps zmm2,zmm4,zmm3
  a1079f:	62 f1 7c 48 10 59 02 	vmovups zmm3,ZMMWORD PTR [rcx+0x80]
  a107a6:	62 e1 7c 48 10 41 03 	vmovups zmm16,ZMMWORD PTR [rcx+0xc0]
  a107ad:	62 61 6c 48 59 c3    	vmulps zmm24,zmm2,zmm3
  a107b3:	62 22 7d 48 bc c0    	vfnmadd231ps zmm24,zmm0,zmm16
  a107b9:	62 61 7c 48 59 cb    	vmulps zmm25,zmm0,zmm3
  a107bf:	62 62 7d 40 b8 ca    	vfmadd231ps zmm25,zmm16,zmm2
  a107c5:	62 b1 c5 40 15 da    	vunpckhpd zmm3,zmm23,zmm18
  a107cb:	62 41 f5 40 15 d6    	vunpckhpd zmm26,zmm17,zmm14
  a107d1:	62 f1 95 48 15 f6    	vunpckhpd zmm6,zmm13,zmm6
  a107d7:	62 71 bd 48 15 f5    	vunpckhpd zmm14,zmm8,zmm5
  a107dd:	62 71 7c 48 28 eb    	vmovaps zmm13,zmm3
  a107e3:	62 92 5d 48 7f da    	vpermt2ps zmm3,zmm4,zmm26
  a107e9:	62 f1 7c 48 28 d6    	vmovaps zmm2,zmm6
  a107ef:	62 d2 5d 48 7f f6    	vpermt2ps zmm6,zmm4,zmm14
  a107f5:	62 71 7c 48 10 41 17 	vmovups zmm8,ZMMWORD PTR [rcx+0x5c0]
  a107fc:	62 f1 7c 48 10 69 16 	vmovups zmm5,ZMMWORD PTR [rcx+0x580]
  a10803:	62 71 4c 48 59 cd    	vmulps zmm9,zmm6,zmm5
  a10809:	62 52 65 48 bc c8    	vfnmadd231ps zmm9,zmm3,zmm8
  a1080f:	62 f1 64 48 59 ed    	vmulps zmm5,zmm3,zmm5
  a10815:	62 f2 3d 48 b8 ee    	vfmadd231ps zmm5,zmm8,zmm6
  a1081b:	62 e2 5d 48 7f 6c 24 	vpermt2ps zmm21,zmm4,ZMMWORD PTR [rsp+0x5c0]
  a10822:	17 
  a10823:	62 e2 5d 48 7f 74 24 	vpermt2ps zmm22,zmm4,ZMMWORD PTR [rsp+0x600]
  a1082a:	18 
  a1082b:	62 f1 7c 48 10 59 1f 	vmovups zmm3,ZMMWORD PTR [rcx+0x7c0]
  a10832:	62 f1 7c 48 10 71 1e 	vmovups zmm6,ZMMWORD PTR [rcx+0x780]
  a10839:	62 e1 54 40 59 fe    	vmulps zmm23,zmm21,zmm6
  a1083f:	62 e2 4d 40 b8 fb    	vfmadd231ps zmm23,zmm22,zmm3
  a10845:	62 71 4c 40 59 c6    	vmulps zmm8,zmm22,zmm6
  a1084b:	62 32 65 48 bc c5    	vfnmadd231ps zmm8,zmm3,zmm21
  a10851:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x980]
  a10858:	26 
  a10859:	62 f2 5d 48 7f 44 24 	vpermt2ps zmm0,zmm4,ZMMWORD PTR [rsp+0x940]
  a10860:	25 
  a10861:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x900]
  a10868:	24 
  a10869:	62 e2 5d 48 7f 4c 24 	vpermt2ps zmm17,zmm4,ZMMWORD PTR [rsp+0x8c0]
  a10870:	23 
  a10871:	62 f1 7c 48 10 59 0f 	vmovups zmm3,ZMMWORD PTR [rcx+0x3c0]
  a10878:	62 f1 7c 48 10 71 0e 	vmovups zmm6,ZMMWORD PTR [rcx+0x380]
  a1087f:	62 e1 74 40 59 c6    	vmulps zmm16,zmm17,zmm6
  a10885:	62 e2 7d 48 b8 c3    	vfmadd231ps zmm16,zmm0,zmm3
  a1088b:	62 f1 7c 48 59 f6    	vmulps zmm6,zmm0,zmm6
  a10891:	62 b2 65 48 bc f1    	vfnmadd231ps zmm6,zmm3,zmm17
  a10897:	62 f1 7c 48 28 05 5f 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6b655f]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1089e:	65 6b ff 
  a108a1:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x640]
  a108a8:	19 
  a108a9:	62 e2 7d 48 7f 6c 24 	vpermt2ps zmm21,zmm0,ZMMWORD PTR [rsp+0x440]
  a108b0:	11 
  a108b1:	62 f2 7d 48 7f 7c 24 	vpermt2ps zmm7,zmm0,ZMMWORD PTR [rsp+0x400]
  a108b8:	10 
  a108b9:	62 e1 7c 48 10 49 19 	vmovups zmm17,ZMMWORD PTR [rcx+0x640]
  a108c0:	62 e1 7c 48 10 51 18 	vmovups zmm18,ZMMWORD PTR [rcx+0x600]
  a108c7:	62 b1 44 48 59 da    	vmulps zmm3,zmm7,zmm18
  a108cd:	62 b2 55 40 bc d9    	vfnmadd231ps zmm3,zmm21,zmm17
  a108d3:	62 21 54 40 59 fa    	vmulps zmm31,zmm21,zmm18
  a108d9:	62 62 75 40 b8 ff    	vfmadd231ps zmm31,zmm17,zmm7
  a108df:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a108e6:	05 
  a108e7:	62 f1 fd 48 15 7c 24 	vunpckhpd zmm7,zmm0,ZMMWORD PTR [rsp+0x100]
  a108ee:	04 
  a108ef:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a108f6:	02 
  a108f7:	62 e1 fd 48 15 4c 24 	vunpckhpd zmm17,zmm0,ZMMWORD PTR [rsp+0x240]
  a108fe:	09 
  a108ff:	62 81 f5 48 15 d6    	vunpckhpd zmm18,zmm1,zmm30
  a10905:	62 e1 a5 40 15 74 24 	vunpckhpd zmm22,zmm27,ZMMWORD PTR [rsp+0x1c0]
  a1090c:	07 
  a1090d:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a10913:	62 b2 5d 48 7f f9    	vpermt2ps zmm7,zmm4,zmm17
  a10919:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a1091f:	62 a2 5d 48 7f d6    	vpermt2ps zmm18,zmm4,zmm22
  a10925:	62 e1 7c 48 10 69 07 	vmovups zmm21,ZMMWORD PTR [rcx+0x1c0]
  a1092c:	62 61 7c 48 10 71 06 	vmovups zmm30,ZMMWORD PTR [rcx+0x180]
  a10933:	62 01 6c 40 59 de    	vmulps zmm27,zmm18,zmm30
  a10939:	62 22 45 48 bc dd    	vfnmadd231ps zmm27,zmm7,zmm21
  a1093f:	62 01 44 48 59 f6    	vmulps zmm30,zmm7,zmm30
  a10945:	62 22 55 40 b8 f2    	vfmadd231ps zmm30,zmm21,zmm18
  a1094b:	62 f1 7c 48 28 25 ab 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6b64ab]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a10952:	64 6b ff 
  a10955:	62 72 5d 48 7f 54 24 	vpermt2ps zmm10,zmm4,ZMMWORD PTR [rsp+0x300]
  a1095c:	0c 
  a1095d:	62 22 5d 48 7f ec    	vpermt2ps zmm29,zmm4,zmm20
  a10963:	62 f1 7c 48 10 79 09 	vmovups zmm7,ZMMWORD PTR [rcx+0x240]
  a1096a:	62 e1 7c 48 10 51 08 	vmovups zmm18,ZMMWORD PTR [rcx+0x200]
  a10971:	62 a1 14 40 59 e2    	vmulps zmm20,zmm29,zmm18
  a10977:	62 e2 2d 48 bc e7    	vfnmadd231ps zmm20,zmm10,zmm7
  a1097d:	62 a1 2c 48 59 d2    	vmulps zmm18,zmm10,zmm18
  a10983:	62 82 45 48 b8 d5    	vfmadd231ps zmm18,zmm7,zmm29
  a10989:	62 12 5d 48 7f ea    	vpermt2ps zmm13,zmm4,zmm26
  a1098f:	62 d2 5d 48 7f d6    	vpermt2ps zmm2,zmm4,zmm14
  a10995:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a1099b:	62 f1 7c 48 10 79 14 	vmovups zmm7,ZMMWORD PTR [rcx+0x500]
  a109a2:	62 61 6c 48 59 ef    	vmulps zmm29,zmm2,zmm7
  a109a8:	62 e1 14 48 59 ef    	vmulps zmm21,zmm13,zmm7
  a109ae:	62 f1 7c 48 10 79 15 	vmovups zmm7,ZMMWORD PTR [rcx+0x540]
  a109b5:	62 e2 45 48 b8 ea    	vfmadd231ps zmm21,zmm7,zmm2
  a109bb:	62 62 15 48 bc ef    	vfnmadd231ps zmm29,zmm13,zmm7
  a109c1:	62 b2 5d 48 7f c9    	vpermt2ps zmm1,zmm4,zmm17
  a109c7:	62 b2 5d 48 7f c6    	vpermt2ps zmm0,zmm4,zmm22
  a109cd:	62 f1 7c 48 10 51 04 	vmovups zmm2,ZMMWORD PTR [rcx+0x100]
  a109d4:	62 f1 7c 48 10 61 05 	vmovups zmm4,ZMMWORD PTR [rcx+0x140]
  a109db:	62 e1 7c 48 59 ca    	vmulps zmm17,zmm0,zmm2
  a109e1:	62 e2 75 48 bc cc    	vfnmadd231ps zmm17,zmm1,zmm4
  a109e7:	62 61 74 48 59 d2    	vmulps zmm26,zmm1,zmm2
  a109ed:	62 62 5d 48 b8 d0    	vfmadd231ps zmm26,zmm4,zmm0
  a109f3:	62 72 2d 48 7f 64 24 	vpermt2ps zmm12,zmm10,ZMMWORD PTR [rsp+0x480]
  a109fa:	12 
  a109fb:	62 72 2d 48 7f 7c 24 	vpermt2ps zmm15,zmm10,ZMMWORD PTR [rsp+0x4c0]
  a10a02:	13 
  a10a03:	62 f1 7c 48 10 41 11 	vmovups zmm0,ZMMWORD PTR [rcx+0x440]
  a10a0a:	62 f1 7c 48 10 49 10 	vmovups zmm1,ZMMWORD PTR [rcx+0x400]
  a10a11:	62 f1 04 48 59 d1    	vmulps zmm2,zmm15,zmm1
  a10a17:	62 f2 1d 48 b8 d0    	vfmadd231ps zmm2,zmm12,zmm0
  a10a1d:	62 f1 1c 48 59 e1    	vmulps zmm4,zmm12,zmm1
  a10a23:	62 d2 7d 48 bc e7    	vfnmadd231ps zmm4,zmm0,zmm15
  a10a29:	62 e2 2d 48 7f 5c 24 	vpermt2ps zmm19,zmm10,ZMMWORD PTR [rsp+0x200]
  a10a30:	08 
  a10a31:	62 72 2d 48 7f 5c 24 	vpermt2ps zmm11,zmm10,ZMMWORD PTR [rsp+0x2c0]
  a10a38:	0b 
  a10a39:	62 e1 64 40 5c f2    	vsubps zmm22,zmm19,zmm2
  a10a3f:	62 31 6c 48 58 eb    	vaddps zmm13,zmm2,zmm19
  a10a45:	62 11 6c 40 5c d7    	vsubps zmm10,zmm18,zmm31
  a10a4b:	62 11 6c 40 58 f7    	vaddps zmm14,zmm18,zmm31
  a10a51:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x9c0]
  a10a58:	27 
  a10a59:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x3c0]
  a10a60:	0f 
  a10a61:	62 61 7c 48 5c f9    	vsubps zmm31,zmm0,zmm1
  a10a67:	62 f1 7c 48 58 f9    	vaddps zmm7,zmm0,zmm1
  a10a6d:	62 b1 7c 40 5c c7    	vsubps zmm0,zmm16,zmm23
  a10a73:	62 b1 7c 40 58 cf    	vaddps zmm1,zmm16,zmm23
  a10a79:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a10a80:	04 
  a10a81:	62 e1 0c 40 5c fd    	vsubps zmm23,zmm30,zmm5
  a10a87:	62 f1 0c 40 58 cd    	vaddps zmm1,zmm30,zmm5
  a10a8d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a10a94:	02 
  a10a95:	62 f1 3c 48 5c ce    	vsubps zmm1,zmm8,zmm6
  a10a9b:	62 d1 4c 48 58 f0    	vaddps zmm6,zmm6,zmm8
  a10aa1:	62 51 24 40 5c c1    	vsubps zmm8,zmm27,zmm9
  a10aa7:	62 c1 24 40 58 c1    	vaddps zmm16,zmm27,zmm9
  a10aad:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x340]
  a10ab4:	0d 
  a10ab5:	62 11 6c 48 5c cc    	vsubps zmm9,zmm2,zmm28
  a10abb:	62 71 1c 40 58 fa    	vaddps zmm15,zmm28,zmm2
  a10ac1:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a10ac8:	01 
  a10ac9:	62 61 3c 40 5c da    	vsubps zmm27,zmm24,zmm2
  a10acf:	62 e1 3c 40 58 d2    	vaddps zmm18,zmm24,zmm2
  a10ad5:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a10adc:	03 
  a10add:	62 61 34 40 5c e2    	vsubps zmm28,zmm25,zmm2
  a10ae3:	62 f1 34 40 58 d2    	vaddps zmm2,zmm25,zmm2
  a10ae9:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm2
  a10af0:	0b 
  a10af1:	62 01 74 40 5c cd    	vsubps zmm25,zmm17,zmm29
  a10af7:	62 11 74 40 58 e5    	vaddps zmm12,zmm17,zmm29
  a10afd:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x380]
  a10b04:	0e 
  a10b05:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x180]
  a10b0c:	06 
  a10b0d:	62 e1 54 48 5c ca    	vsubps zmm17,zmm5,zmm2
  a10b13:	62 61 54 48 58 c2    	vaddps zmm24,zmm5,zmm2
  a10b19:	62 61 24 48 5c ec    	vsubps zmm29,zmm11,zmm4
  a10b1f:	62 e1 24 48 58 dc    	vaddps zmm19,zmm11,zmm4
  a10b25:	62 b1 64 48 5c e4    	vsubps zmm4,zmm3,zmm20
  a10b2b:	62 e1 5c 40 58 e3    	vaddps zmm20,zmm20,zmm3
  a10b31:	62 31 2c 40 5c dd    	vsubps zmm11,zmm26,zmm21
  a10b37:	62 b1 2c 40 58 dd    	vaddps zmm3,zmm26,zmm21
  a10b3d:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xa00]
  a10b44:	28 
  a10b45:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x280]
  a10b4c:	0a 
  a10b4d:	62 b1 6c 48 5c ed    	vsubps zmm5,zmm2,zmm21
  a10b53:	62 a1 6c 48 58 ed    	vaddps zmm21,zmm2,zmm21
  a10b59:	62 91 54 48 5c d7    	vsubps zmm2,zmm5,zmm31
  a10b5f:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a10b66:	01 
  a10b67:	62 61 04 40 58 fd    	vaddps zmm31,zmm31,zmm5
  a10b6d:	62 f1 4c 40 5c d4    	vsubps zmm2,zmm22,zmm4
  a10b73:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a10b7a:	03 
  a10b7b:	62 b1 5c 48 58 d6    	vaddps zmm2,zmm4,zmm22
  a10b81:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a10b88:	05 
  a10b89:	62 f1 3c 48 5c d0    	vsubps zmm2,zmm8,zmm0
  a10b8f:	62 f1 3c 48 58 c0    	vaddps zmm0,zmm8,zmm0
  a10b95:	62 71 44 40 5c c1    	vsubps zmm8,zmm23,zmm1
  a10b9b:	62 f1 44 40 58 c9    	vaddps zmm1,zmm23,zmm1
  a10ba1:	62 a1 24 40 5c f9    	vsubps zmm23,zmm27,zmm17
  a10ba7:	62 21 24 40 58 d9    	vaddps zmm27,zmm27,zmm17
  a10bad:	62 c1 1c 40 5c c9    	vsubps zmm17,zmm28,zmm9
  a10bb3:	62 41 1c 40 58 e1    	vaddps zmm28,zmm28,zmm9
  a10bb9:	62 41 34 40 58 d3    	vaddps zmm26,zmm25,zmm11
  a10bbf:	62 11 24 48 5c d9    	vsubps zmm11,zmm11,zmm25
  a10bc5:	62 41 14 48 5c ce    	vsubps zmm25,zmm13,zmm14
  a10bcb:	62 41 0c 48 58 f5    	vaddps zmm30,zmm14,zmm13
  a10bd1:	62 c1 14 40 5c f2    	vsubps zmm22,zmm29,zmm10
  a10bd7:	62 51 14 40 58 ea    	vaddps zmm13,zmm29,zmm10
  a10bdd:	62 61 7c 40 5c ee    	vsubps zmm29,zmm16,zmm6
  a10be3:	62 f1 7c 40 58 e6    	vaddps zmm4,zmm16,zmm6
  a10be9:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm4
  a10bf0:	09 
  a10bf1:	62 31 64 48 5c d5    	vsubps zmm10,zmm3,zmm21
  a10bf7:	62 a1 64 48 58 ed    	vaddps zmm21,zmm3,zmm21
  a10bfd:	62 d1 6c 40 5c df    	vsubps zmm3,zmm18,zmm15
  a10c03:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x2c0]
  a10c0a:	0b 
  a10c0b:	62 81 4c 48 5c c0    	vsubps zmm16,zmm6,zmm24
  a10c11:	62 b1 64 48 58 e0    	vaddps zmm4,zmm3,zmm16
  a10c17:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm4
  a10c1e:	06 
  a10c1f:	62 f1 7c 40 5c db    	vsubps zmm3,zmm16,zmm3
  a10c25:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm3
  a10c2c:	0a 
  a10c2d:	62 d1 6c 40 58 df    	vaddps zmm3,zmm18,zmm15
  a10c33:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm3
  a10c3a:	08 
  a10c3b:	62 a1 64 40 5c d4    	vsubps zmm18,zmm19,zmm20
  a10c41:	62 b1 64 40 58 dc    	vaddps zmm3,zmm19,zmm20
  a10c47:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm3
  a10c4e:	07 
  a10c4f:	62 c1 44 48 5c dc    	vsubps zmm19,zmm7,zmm12
  a10c55:	62 71 1c 48 58 f7    	vaddps zmm14,zmm12,zmm7
  a10c5b:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x100]
  a10c62:	04 
  a10c63:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x80]
  a10c6a:	02 
  a10c6b:	62 71 34 48 5c e7    	vsubps zmm12,zmm9,zmm7
  a10c71:	62 81 1c 48 5c e5    	vsubps zmm20,zmm12,zmm29
  a10c77:	62 41 14 40 58 ec    	vaddps zmm29,zmm29,zmm12
  a10c7d:	62 f2 7d 48 18 1d 79 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff664a79]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a10c84:	4a 66 ff 
  a10c87:	62 e1 74 40 59 c3    	vmulps zmm16,zmm17,zmm3
  a10c8d:	62 f2 7d 48 18 25 cd 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff6649cd]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a10c94:	49 66 ff 
  a10c97:	62 e2 45 40 b8 c4    	vfmadd231ps zmm16,zmm23,zmm4
  a10c9d:	62 e1 74 40 59 cc    	vmulps zmm17,zmm17,zmm4
  a10ca3:	62 a2 65 48 bc cf    	vfnmadd231ps zmm17,zmm3,zmm23
  a10ca9:	62 e1 3c 48 59 fc    	vmulps zmm23,zmm8,zmm4
  a10caf:	62 e2 6d 48 b8 fb    	vfmadd231ps zmm23,zmm2,zmm3
  a10cb5:	62 f1 6c 48 59 d4    	vmulps zmm2,zmm2,zmm4
  a10cbb:	62 d2 65 48 bc d0    	vfnmadd231ps zmm2,zmm3,zmm8
  a10cc1:	62 71 1c 40 59 e4    	vmulps zmm12,zmm28,zmm4
  a10cc7:	62 72 25 40 b8 e3    	vfmadd231ps zmm12,zmm27,zmm3
  a10ccd:	62 71 1c 40 59 c3    	vmulps zmm8,zmm28,zmm3
  a10cd3:	62 12 5d 48 bc c3    	vfnmadd231ps zmm8,zmm4,zmm27
  a10cd9:	62 61 74 48 59 db    	vmulps zmm27,zmm1,zmm3
  a10cdf:	62 62 7d 48 b8 dc    	vfmadd231ps zmm27,zmm0,zmm4
  a10ce5:	62 f1 74 48 59 ec    	vmulps zmm5,zmm1,zmm4
  a10ceb:	62 f2 65 48 bc e8    	vfnmadd231ps zmm5,zmm3,zmm0
  a10cf1:	62 f2 7d 48 18 0d a1 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff6646a1]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a10cf8:	46 66 ff 
  a10cfb:	62 f1 24 48 59 c1    	vmulps zmm0,zmm11,zmm1
  a10d01:	62 71 04 40 59 d9    	vmulps zmm11,zmm31,zmm1
  a10d07:	62 41 7c 48 58 e3    	vaddps zmm28,zmm0,zmm11
  a10d0d:	62 d1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm11
  a10d13:	62 71 74 48 59 5c 24 	vmulps zmm11,zmm1,ZMMWORD PTR [rsp+0x40]
  a10d1a:	01 
  a10d1b:	62 61 2c 40 59 d1    	vmulps zmm26,zmm26,zmm1
  a10d21:	62 01 24 48 5c fa    	vsubps zmm31,zmm11,zmm26
  a10d27:	62 41 2c 40 58 d3    	vaddps zmm26,zmm26,zmm11
  a10d2d:	62 01 4c 48 58 c0    	vaddps zmm24,zmm6,zmm24
  a10d33:	62 f1 34 48 58 e7    	vaddps zmm4,zmm9,zmm7
  a10d39:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0xc0]
  a10d40:	03 
  a10d41:	62 11 64 48 5c df    	vsubps zmm11,zmm3,zmm31
  a10d47:	62 f1 04 40 58 db    	vaddps zmm3,zmm31,zmm3
  a10d4d:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm3
  a10d54:	03 
  a10d55:	62 21 34 40 5c fb    	vsubps zmm31,zmm25,zmm19
  a10d5b:	62 01 64 40 58 c9    	vaddps zmm25,zmm19,zmm25
  a10d61:	62 f1 74 48 59 74 24 	vmulps zmm6,zmm1,ZMMWORD PTR [rsp+0x280]
  a10d68:	0a 
  a10d69:	62 e1 14 40 59 d9    	vmulps zmm19,zmm29,zmm1
  a10d6f:	62 21 4c 48 58 eb    	vaddps zmm29,zmm6,zmm19
  a10d75:	62 a1 4c 48 5c db    	vsubps zmm19,zmm6,zmm19
  a10d7b:	62 11 4c 40 5c fc    	vsubps zmm15,zmm22,zmm28
  a10d81:	62 91 4c 40 58 dc    	vaddps zmm3,zmm22,zmm28
  a10d87:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a10d8e:	02 
  a10d8f:	62 c1 6c 40 5c f2    	vsubps zmm22,zmm18,zmm10
  a10d95:	62 41 6c 40 58 e2    	vaddps zmm28,zmm18,zmm10
  a10d9b:	62 71 5c 40 59 d1    	vmulps zmm10,zmm20,zmm1
  a10da1:	62 e1 74 48 59 54 24 	vmulps zmm18,zmm1,ZMMWORD PTR [rsp+0x180]
  a10da8:	06 
  a10da9:	62 a1 2c 48 5c e2    	vsubps zmm20,zmm10,zmm18
  a10daf:	62 c1 6c 40 58 d2    	vaddps zmm18,zmm18,zmm10
  a10db5:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x140]
  a10dbc:	05 
  a10dbd:	62 71 74 48 5c d0    	vsubps zmm10,zmm1,zmm0
  a10dc3:	62 f1 7c 48 58 c1    	vaddps zmm0,zmm0,zmm1
  a10dc9:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a10dd0:	01 
  a10dd1:	62 11 14 48 5c ca    	vsubps zmm9,zmm13,zmm26
  a10dd7:	62 01 14 48 58 d2    	vaddps zmm26,zmm13,zmm26
  a10ddd:	62 71 74 40 5c ea    	vsubps zmm13,zmm17,zmm2
  a10de3:	62 e1 74 40 58 ca    	vaddps zmm17,zmm17,zmm2
  a10de9:	62 b1 0c 40 5c dd    	vsubps zmm3,zmm30,zmm21
  a10def:	62 01 54 40 58 f6    	vaddps zmm30,zmm21,zmm30
  a10df5:	62 b1 7c 40 58 cf    	vaddps zmm1,zmm16,zmm23
  a10dfb:	62 a1 7c 40 5c ef    	vsubps zmm21,zmm16,zmm23
  a10e01:	62 e1 3c 40 5c c4    	vsubps zmm16,zmm24,zmm4
  a10e07:	62 e1 3c 40 58 fc    	vaddps zmm23,zmm24,zmm4
  a10e0d:	62 f1 3c 48 5c e5    	vsubps zmm4,zmm8,zmm5
  a10e13:	62 f1 3c 48 58 fd    	vaddps zmm7,zmm8,zmm5
  a10e19:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a10e20:	07 
  a10e21:	62 51 7c 48 5c c6    	vsubps zmm8,zmm0,zmm14
  a10e27:	62 d1 7c 48 58 f6    	vaddps zmm6,zmm0,zmm14
  a10e2d:	62 d1 24 40 5c d4    	vsubps zmm2,zmm27,zmm12
  a10e33:	62 01 1c 48 58 db    	vaddps zmm27,zmm12,zmm27
  a10e39:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x240]
  a10e40:	09 
  a10e41:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x200]
  a10e48:	08 
  a10e49:	62 d1 54 48 5c c4    	vsubps zmm0,zmm5,zmm12
  a10e4f:	62 f1 1c 48 58 ed    	vaddps zmm5,zmm12,zmm5
  a10e55:	62 31 04 40 5c e4    	vsubps zmm12,zmm31,zmm20
  a10e5b:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm12
  a10e62:	04 
  a10e63:	62 21 04 40 58 fc    	vaddps zmm31,zmm31,zmm20
  a10e69:	62 01 4c 40 5c c5    	vsubps zmm24,zmm22,zmm29
  a10e6f:	62 11 4c 40 58 f5    	vaddps zmm14,zmm22,zmm29
  a10e75:	62 71 24 48 58 e1    	vaddps zmm12,zmm11,zmm1
  a10e7b:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm12
  a10e82:	05 
  a10e83:	62 e1 24 48 5c e1    	vsubps zmm20,zmm11,zmm1
  a10e89:	62 61 64 48 5c e8    	vsubps zmm29,zmm3,zmm0
  a10e8f:	62 f1 64 48 58 d8    	vaddps zmm3,zmm3,zmm0
  a10e95:	62 51 04 48 5c e5    	vsubps zmm12,zmm15,zmm13
  a10e9b:	62 51 04 48 58 fd    	vaddps zmm15,zmm15,zmm13
  a10ea1:	62 31 3c 48 5c e8    	vsubps zmm13,zmm8,zmm16
  a10ea7:	62 b1 3c 48 58 c0    	vaddps zmm0,zmm8,zmm16
  a10ead:	62 e1 2c 48 5c f2    	vsubps zmm22,zmm10,zmm2
  a10eb3:	62 e1 2c 48 58 c2    	vaddps zmm16,zmm10,zmm2
  a10eb9:	62 31 34 40 5c c3    	vsubps zmm8,zmm25,zmm19
  a10ebf:	62 21 34 40 58 cb    	vaddps zmm25,zmm25,zmm19
  a10ec5:	62 f1 34 48 5c d4    	vsubps zmm2,zmm9,zmm4
  a10ecb:	62 f1 34 48 58 e4    	vaddps zmm4,zmm9,zmm4
  a10ed1:	62 31 1c 40 5c d2    	vsubps zmm10,zmm28,zmm18
  a10ed7:	62 21 1c 40 58 e2    	vaddps zmm28,zmm28,zmm18
  a10edd:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a10ee4:	03 
  a10ee5:	62 a1 74 48 5c d1    	vsubps zmm18,zmm1,zmm17
  a10eeb:	62 b1 74 48 58 c9    	vaddps zmm1,zmm1,zmm17
  a10ef1:	62 31 0c 40 5c cf    	vsubps zmm9,zmm30,zmm23
  a10ef7:	62 a1 0c 40 58 ff    	vaddps zmm23,zmm30,zmm23
  a10efd:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x80]
  a10f04:	02 
  a10f05:	62 31 74 40 5c dd    	vsubps zmm11,zmm17,zmm21
  a10f0b:	62 a1 74 40 58 ed    	vaddps zmm21,zmm17,zmm21
  a10f11:	62 e1 4c 48 5c dd    	vsubps zmm19,zmm6,zmm5
  a10f17:	62 f1 4c 48 58 ed    	vaddps zmm5,zmm6,zmm5
  a10f1d:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x40]
  a10f24:	01 
  a10f25:	62 e1 4c 48 5c cf    	vsubps zmm17,zmm6,zmm7
  a10f2b:	62 f1 4c 48 58 f7    	vaddps zmm6,zmm6,zmm7
  a10f31:	62 f3 7d 48 19 ef 02 	vextractf32x4 xmm7,zmm5,0x2
  a10f38:	62 61 7c 48 28 35 fe 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff67defe]        # 8ee40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c2f0>
  a10f3f:	de 67 ff 
  a10f42:	62 b2 0d 40 7f ef    	vpermt2ps zmm5,zmm30,zmm23
  a10f48:	62 f1 7c 48 11 2c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm5
  a10f4f:	62 e3 7d 48 19 fd 02 	vextractf32x4 xmm5,zmm23,0x2
  a10f56:	c5 c0 14 ed          	vunpcklps xmm5,xmm7,xmm5
  a10f5a:	c5 f8 11 6c 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm5
  a10f60:	62 91 2c 40 5c eb    	vsubps zmm5,zmm26,zmm27
  a10f66:	62 91 2c 40 58 fb    	vaddps zmm7,zmm26,zmm27
  a10f6c:	62 b3 7d 48 19 ff 02 	vextractf32x4 xmm23,zmm7,0x2
  a10f73:	62 f2 0d 40 7f fe    	vpermt2ps zmm7,zmm30,zmm6
  a10f79:	62 f1 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x50],zmm7
  a10f80:	50 00 00 00 
  a10f84:	62 f3 7d 48 19 f6 02 	vextractf32x4 xmm6,zmm6,0x2
  a10f8b:	62 f1 44 00 14 f6    	vunpcklps xmm6,xmm23,xmm6
  a10f91:	c5 f8 11 b4 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm6
  a10f98:	00 00 
  a10f9a:	62 63 7d 48 19 e6 02 	vextractf32x4 xmm6,zmm28,0x2
  a10fa1:	62 02 0d 40 7f e1    	vpermt2ps zmm28,zmm30,zmm25
  a10fa7:	62 61 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xa0],zmm28
  a10fae:	a0 00 00 00 
  a10fb2:	62 63 7d 48 19 cf 02 	vextractf32x4 xmm7,zmm25,0x2
  a10fb9:	c5 c8 14 f7          	vunpcklps xmm6,xmm6,xmm7
  a10fbd:	c5 f8 11 b4 16 e0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xe0],xmm6
  a10fc4:	00 00 
  a10fc6:	62 e3 7d 48 19 ee 02 	vextractf32x4 xmm6,zmm21,0x2
  a10fcd:	62 e2 0d 40 7f e9    	vpermt2ps zmm21,zmm30,zmm1
  a10fd3:	62 e1 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm21
  a10fda:	f0 00 00 00 
  a10fde:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a10fe5:	c5 c8 14 c9          	vunpcklps xmm1,xmm6,xmm1
  a10fe9:	c5 f8 11 8c 16 30 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x130],xmm1
  a10ff0:	00 00 
  a10ff2:	62 f3 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm0,0x2
  a10ff9:	62 f2 0d 40 7f c3    	vpermt2ps zmm0,zmm30,zmm3
  a10fff:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm0
  a11006:	05 
  a11007:	62 f3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm3,0x2
  a1100e:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a11012:	c5 f8 11 84 16 80 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x180],xmm0
  a11019:	00 00 
  a1101b:	62 f3 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm4,0x2
  a11022:	62 b2 0d 40 7f e0    	vpermt2ps zmm4,zmm30,zmm16
  a11028:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x190],zmm4
  a1102f:	90 01 00 00 
  a11033:	62 e3 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm16,0x2
  a1103a:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1103e:	c5 f8 11 84 16 d0 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x1d0],xmm0
  a11045:	00 00 
  a11047:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a1104e:	62 12 0d 40 7f f7    	vpermt2ps zmm14,zmm30,zmm31
  a11054:	62 71 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm14
  a1105b:	e0 01 00 00 
  a1105f:	62 63 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm31,0x2
  a11066:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1106a:	c5 f8 11 84 16 20 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x220],xmm0
  a11071:	00 00 
  a11073:	62 73 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm15,0x2
  a1107a:	62 32 0d 40 7f fc    	vpermt2ps zmm15,zmm30,zmm20
  a11080:	62 71 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x230],zmm15
  a11087:	30 02 00 00 
  a1108b:	62 e3 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm20,0x2
  a11092:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a11096:	c5 f8 11 84 16 70 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x270],xmm0
  a1109d:	00 00 
  a1109f:	62 e3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm19,0x2
  a110a6:	62 c2 0d 40 7f d9    	vpermt2ps zmm19,zmm30,zmm9
  a110ac:	62 e1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm19
  a110b3:	0a 
  a110b4:	62 73 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm9,0x2
  a110bb:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a110bf:	c5 f8 11 84 16 c0 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x2c0],xmm0
  a110c6:	00 00 
  a110c8:	62 f3 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm5,0x2
  a110cf:	62 b2 0d 40 7f e9    	vpermt2ps zmm5,zmm30,zmm17
  a110d5:	62 f1 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm5
  a110dc:	d0 02 00 00 
  a110e0:	62 e3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm17,0x2
  a110e7:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a110eb:	c5 f8 11 84 16 10 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x310],xmm0
  a110f2:	00 00 
  a110f4:	62 73 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm10,0x2
  a110fb:	62 52 0d 40 7f d0    	vpermt2ps zmm10,zmm30,zmm8
  a11101:	62 71 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x320],zmm10
  a11108:	20 03 00 00 
  a1110c:	62 73 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm8,0x2
  a11113:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a11117:	c5 f8 11 84 16 60 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x360],xmm0
  a1111e:	00 00 
  a11120:	62 73 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm11,0x2
  a11127:	62 32 0d 40 7f da    	vpermt2ps zmm11,zmm30,zmm18
  a1112d:	62 71 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x370],zmm11
  a11134:	70 03 00 00 
  a11138:	62 e3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm18,0x2
  a1113f:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a11143:	c5 f8 11 84 16 b0 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x3b0],xmm0
  a1114a:	00 00 
  a1114c:	62 73 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm13,0x2
  a11153:	62 12 0d 40 7f ed    	vpermt2ps zmm13,zmm30,zmm29
  a11159:	62 71 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3c0],zmm13
  a11160:	0f 
  a11161:	62 63 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm29,0x2
  a11168:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a1116c:	c5 f8 11 84 16 00 04 	vmovups XMMWORD PTR [rsi+rdx*1+0x400],xmm0
  a11173:	00 00 
  a11175:	62 f3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm2,0x2
  a1117c:	62 b2 0d 40 7f d6    	vpermt2ps zmm2,zmm30,zmm22
  a11182:	62 f1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x410],zmm2
  a11189:	10 04 00 00 
  a1118d:	62 e3 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm22,0x2
  a11194:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a11198:	c5 f8 11 84 16 50 04 	vmovups XMMWORD PTR [rsi+rdx*1+0x450],xmm0
  a1119f:	00 00 
  a111a1:	62 63 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm24,0x2
  a111a8:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a111af:	04 
  a111b0:	62 62 0d 40 7f c1    	vpermt2ps zmm24,zmm30,zmm1
  a111b6:	62 61 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x460],zmm24
  a111bd:	60 04 00 00 
  a111c1:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a111c8:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a111cc:	c5 f8 11 84 16 a0 04 	vmovups XMMWORD PTR [rsi+rdx*1+0x4a0],xmm0
  a111d3:	00 00 
  a111d5:	62 73 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm12,0x2
  a111dc:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x140]
  a111e3:	05 
  a111e4:	62 72 0d 40 7f e1    	vpermt2ps zmm12,zmm30,zmm1
  a111ea:	62 71 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4b0],zmm12
  a111f1:	b0 04 00 00 
  a111f5:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a111fc:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a11200:	c5 f8 11 84 16 f0 04 	vmovups XMMWORD PTR [rsi+rdx*1+0x4f0],xmm0
  a11207:	00 00 
  a11209:	48 81 c2 00 05 00 00 	add    rdx,0x500
  a11210:	48 39 d0             	cmp    rax,rdx
  a11213:	0f 85 57 ea ff ff    	jne    a0fc70 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a11219:	48 89 ec             	mov    rsp,rbp
  a1121c:	5d                   	pop    rbp
  a1121d:	c5 f8 77             	vzeroupper
  a11220:	c3                   	ret
