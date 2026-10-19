
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a34dc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a34dc0:	62 f1 7c 48 28 05 b6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6921b6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a34dc7:	21 69 ff 
  a34dca:	48 c1 e2 07          	shl    rdx,0x7
  a34dce:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a34dd2:	31 d2                	xor    edx,edx
  a34dd4:	62 f1 7c 48 28 2d 62 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff65c262]        # 91040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e4f0>
  a34ddb:	c2 65 ff 
  a34dde:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a34de2:	62 71 7c 48 28 1d 94 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff65c294]        # 91080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e530>
  a34de9:	c2 65 ff 
  a34dec:	62 71 7c 48 28 2d 0a 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff69200a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a34df3:	20 69 ff 
  a34df6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a34dfd:	00 00 00 
  a34e00:	62 71 7c 48 10 34 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1]
  a34e07:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x40]
  a34e0e:	01 
  a34e0f:	62 e1 7c 48 10 74 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0x80]
  a34e16:	02 
  a34e17:	62 61 7c 48 10 44 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a34e1e:	03 
  a34e1f:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a34e25:	62 72 55 48 7f fe    	vpermt2ps zmm15,zmm5,zmm6
  a34e2b:	62 72 25 48 7f f6    	vpermt2ps zmm14,zmm11,zmm6
  a34e31:	62 a1 7c 48 28 d3    	vmovaps zmm18,zmm19
  a34e37:	62 e2 55 48 7f d6    	vpermt2ps zmm18,zmm5,zmm6
  a34e3d:	62 e2 25 48 7f de    	vpermt2ps zmm19,zmm11,zmm6
  a34e43:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  a34e49:	62 e2 55 48 7f fe    	vpermt2ps zmm23,zmm5,zmm6
  a34e4f:	62 e2 25 48 7f f6    	vpermt2ps zmm22,zmm11,zmm6
  a34e55:	62 81 7c 48 28 e0    	vmovaps zmm20,zmm24
  a34e5b:	62 e2 55 48 7f e6    	vpermt2ps zmm20,zmm5,zmm6
  a34e61:	62 62 25 48 7f c6    	vpermt2ps zmm24,zmm11,zmm6
  a34e67:	62 61 7c 48 10 7c 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x100]
  a34e6e:	04 
  a34e6f:	62 01 7c 48 28 d7    	vmovaps zmm26,zmm31
  a34e75:	62 62 55 48 7f d6    	vpermt2ps zmm26,zmm5,zmm6
  a34e7b:	62 62 25 48 7f fe    	vpermt2ps zmm31,zmm11,zmm6
  a34e81:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x140]
  a34e88:	05 
  a34e89:	62 a1 7c 48 28 c8    	vmovaps zmm17,zmm16
  a34e8f:	62 e2 55 48 7f ce    	vpermt2ps zmm17,zmm5,zmm6
  a34e95:	62 e2 25 48 7f c6    	vpermt2ps zmm16,zmm11,zmm6
  a34e9b:	62 61 7c 48 10 6c 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x180]
  a34ea2:	06 
  a34ea3:	62 11 7c 48 28 e5    	vmovaps zmm12,zmm29
  a34ea9:	62 72 55 48 7f e6    	vpermt2ps zmm12,zmm5,zmm6
  a34eaf:	62 62 25 48 7f ee    	vpermt2ps zmm29,zmm11,zmm6
  a34eb5:	62 61 7c 48 10 5c 17 	vmovups zmm27,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a34ebc:	07 
  a34ebd:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a34ec3:	62 f2 55 48 7f ce    	vpermt2ps zmm1,zmm5,zmm6
  a34ec9:	62 62 25 48 7f de    	vpermt2ps zmm27,zmm11,zmm6
  a34ecf:	62 61 7c 48 10 4c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x200]
  a34ed6:	08 
  a34ed7:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a34edd:	62 f2 55 48 7f d6    	vpermt2ps zmm2,zmm5,zmm6
  a34ee3:	62 62 25 48 7f ce    	vpermt2ps zmm25,zmm11,zmm6
  a34ee9:	62 61 7c 48 10 74 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1+0x240]
  a34ef0:	09 
  a34ef1:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a34ef7:	62 f2 55 48 7f de    	vpermt2ps zmm3,zmm5,zmm6
  a34efd:	62 62 25 48 7f f6    	vpermt2ps zmm30,zmm11,zmm6
  a34f03:	62 61 44 40 58 e2    	vaddps zmm28,zmm23,zmm2
  a34f09:	62 81 4c 40 58 e9    	vaddps zmm21,zmm22,zmm25
  a34f0f:	62 91 4c 40 5c e1    	vsubps zmm4,zmm22,zmm25
  a34f15:	62 01 04 40 58 cd    	vaddps zmm25,zmm31,zmm29
  a34f1b:	62 01 04 40 5c ed    	vsubps zmm29,zmm31,zmm29
  a34f21:	62 81 24 40 58 f0    	vaddps zmm22,zmm27,zmm24
  a34f27:	62 01 24 40 5c d8    	vsubps zmm27,zmm27,zmm24
  a34f2d:	62 21 0c 40 58 c3    	vaddps zmm24,zmm30,zmm19
  a34f33:	62 21 0c 40 5c f3    	vsubps zmm30,zmm30,zmm19
  a34f39:	62 81 04 48 58 dc    	vaddps zmm19,zmm15,zmm28
  a34f3f:	62 f1 44 40 5c d2    	vsubps zmm2,zmm23,zmm2
  a34f45:	62 c1 2c 40 58 fc    	vaddps zmm23,zmm26,zmm12
  a34f4b:	62 a1 64 40 58 df    	vaddps zmm19,zmm19,zmm23
  a34f51:	62 51 2c 40 5c e4    	vsubps zmm12,zmm26,zmm12
  a34f57:	62 21 74 48 58 d4    	vaddps zmm26,zmm1,zmm20
  a34f5d:	62 b1 74 48 5c cc    	vsubps zmm1,zmm1,zmm20
  a34f63:	62 21 64 48 58 fa    	vaddps zmm31,zmm3,zmm18
  a34f69:	62 b1 64 48 5c da    	vsubps zmm3,zmm3,zmm18
  a34f6f:	62 f2 7d 48 18 3d 6f 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff64076f]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a34f76:	07 64 ff 
  a34f79:	62 e1 7c 48 28 e7    	vmovaps zmm20,zmm7
  a34f7f:	62 c2 1d 40 a8 e7    	vfmadd213ps zmm20,zmm28,zmm15
  a34f85:	62 72 7d 48 18 05 b5 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff6406b5]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a34f8c:	06 64 ff 
  a34f8f:	62 12 3d 48 bc fc    	vfnmadd231ps zmm15,zmm8,zmm28
  a34f95:	62 81 74 40 58 d2    	vaddps zmm18,zmm17,zmm26
  a34f9b:	62 81 6c 40 58 d7    	vaddps zmm18,zmm18,zmm31
  a34fa1:	62 c2 45 40 bc e0    	vfnmadd231ps zmm20,zmm23,zmm8
  a34fa7:	62 32 45 48 b8 ff    	vfmadd231ps zmm15,zmm7,zmm23
  a34fad:	62 72 7d 48 18 0d a1 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff6407a1]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a34fb4:	07 64 ff 
  a34fb7:	62 c1 14 40 59 f9    	vmulps zmm23,zmm29,zmm9
  a34fbd:	62 72 7d 48 18 15 d9 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff6403d9]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a34fc4:	03 64 ff 
  a34fc7:	62 c2 5d 48 b8 fa    	vfmadd231ps zmm23,zmm4,zmm10
  a34fcd:	62 d1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm9
  a34fd3:	62 92 2d 48 bc e5    	vfnmadd231ps zmm4,zmm10,zmm29
  a34fd9:	62 61 7c 48 28 e7    	vmovaps zmm28,zmm7
  a34fdf:	62 22 2d 40 a8 e1    	vfmadd213ps zmm28,zmm26,zmm17
  a34fe5:	62 82 3d 48 bc ca    	vfnmadd231ps zmm17,zmm8,zmm26
  a34feb:	62 21 0c 48 58 d5    	vaddps zmm26,zmm14,zmm21
  a34ff1:	62 01 2c 40 58 d1    	vaddps zmm26,zmm26,zmm25
  a34ff7:	62 42 05 40 bc e0    	vfnmadd231ps zmm28,zmm31,zmm8
  a34ffd:	62 82 45 48 b8 cf    	vfmadd231ps zmm17,zmm7,zmm31
  a35003:	62 41 0c 40 59 e9    	vmulps zmm29,zmm30,zmm9
  a35009:	62 42 25 40 b8 ea    	vfmadd231ps zmm29,zmm27,zmm10
  a3500f:	62 41 24 40 59 d9    	vmulps zmm27,zmm27,zmm9
  a35015:	62 02 2d 48 bc de    	vfnmadd231ps zmm27,zmm10,zmm30
  a3501b:	62 61 7c 48 28 f7    	vmovaps zmm30,zmm7
  a35021:	62 42 55 40 a8 f6    	vfmadd213ps zmm30,zmm21,zmm14
  a35027:	62 32 3d 48 bc f5    	vfnmadd231ps zmm14,zmm8,zmm21
  a3502d:	62 a1 7c 40 58 ee    	vaddps zmm21,zmm16,zmm22
  a35033:	62 42 35 40 bc f0    	vfnmadd231ps zmm30,zmm25,zmm8
  a35039:	62 12 45 48 b8 f1    	vfmadd231ps zmm14,zmm7,zmm25
  a3503f:	62 41 1c 48 59 c9    	vmulps zmm25,zmm12,zmm9
  a35045:	62 42 6d 48 b8 ca    	vfmadd231ps zmm25,zmm2,zmm10
  a3504b:	62 d1 6c 48 59 d1    	vmulps zmm2,zmm2,zmm9
  a35051:	62 d2 2d 48 bc d4    	vfnmadd231ps zmm2,zmm10,zmm12
  a35057:	62 71 7c 48 28 e7    	vmovaps zmm12,zmm7
  a3505d:	62 32 4d 40 a8 e0    	vfmadd213ps zmm12,zmm22,zmm16
  a35063:	62 a2 3d 48 bc c6    	vfnmadd231ps zmm16,zmm8,zmm22
  a35069:	62 81 54 40 58 e8    	vaddps zmm21,zmm21,zmm24
  a3506f:	62 52 3d 40 bc e0    	vfnmadd231ps zmm12,zmm24,zmm8
  a35075:	62 82 45 48 b8 c0    	vfmadd231ps zmm16,zmm7,zmm24
  a3507b:	62 c1 64 48 59 f1    	vmulps zmm22,zmm3,zmm9
  a35081:	62 c2 75 48 b8 f2    	vfmadd231ps zmm22,zmm1,zmm10
  a35087:	62 d1 74 48 59 c9    	vmulps zmm1,zmm1,zmm9
  a3508d:	62 f2 2d 48 bc cb    	vfnmadd231ps zmm1,zmm10,zmm3
  a35093:	62 f1 04 48 58 dc    	vaddps zmm3,zmm15,zmm4
  a35099:	62 f1 04 48 5c e4    	vsubps zmm4,zmm15,zmm4
  a3509f:	62 11 74 40 58 fb    	vaddps zmm15,zmm17,zmm27
  a350a5:	62 81 74 40 5c cb    	vsubps zmm17,zmm17,zmm27
  a350ab:	62 61 0c 48 5c fa    	vsubps zmm31,zmm14,zmm2
  a350b1:	62 d1 6c 48 58 d6    	vaddps zmm2,zmm2,zmm14
  a350b7:	62 71 7c 40 5c f1    	vsubps zmm14,zmm16,zmm1
  a350bd:	62 b1 74 48 58 c8    	vaddps zmm1,zmm1,zmm16
  a350c3:	62 a1 5c 40 58 c7    	vaddps zmm16,zmm20,zmm23
  a350c9:	62 31 5c 40 5c c7    	vsubps zmm8,zmm20,zmm23
  a350cf:	62 01 1c 40 58 c5    	vaddps zmm24,zmm28,zmm29
  a350d5:	62 11 1c 40 5c cd    	vsubps zmm9,zmm28,zmm29
  a350db:	62 01 0c 40 5c d9    	vsubps zmm27,zmm30,zmm25
  a350e1:	62 01 34 40 58 ce    	vaddps zmm25,zmm25,zmm30
  a350e7:	62 21 1c 48 5c e6    	vsubps zmm28,zmm12,zmm22
  a350ed:	62 51 4c 40 58 e4    	vaddps zmm12,zmm22,zmm12
  a350f3:	62 a1 64 40 58 f2    	vaddps zmm22,zmm19,zmm18
  a350f9:	62 a1 64 40 5c d2    	vsubps zmm18,zmm19,zmm18
  a350ff:	62 a1 2c 40 58 e5    	vaddps zmm20,zmm26,zmm21
  a35105:	62 a1 2c 40 5c fd    	vsubps zmm23,zmm26,zmm21
  a3510b:	62 81 7c 40 5c e8    	vsubps zmm21,zmm16,zmm24
  a35111:	62 81 7c 40 58 c0    	vaddps zmm16,zmm16,zmm24
  a35117:	62 01 24 40 5c c4    	vsubps zmm24,zmm27,zmm28
  a3511d:	62 01 24 40 58 dc    	vaddps zmm27,zmm27,zmm28
  a35123:	62 51 64 48 58 d7    	vaddps zmm10,zmm3,zmm15
  a35129:	62 d1 64 48 5c df    	vsubps zmm3,zmm3,zmm15
  a3512f:	62 41 04 40 58 d6    	vaddps zmm26,zmm31,zmm14
  a35135:	62 41 04 40 5c ee    	vsubps zmm29,zmm31,zmm14
  a3513b:	62 31 5c 48 5c f9    	vsubps zmm15,zmm4,zmm17
  a35141:	62 b1 5c 48 58 e1    	vaddps zmm4,zmm4,zmm17
  a35147:	62 61 6c 48 5c e1    	vsubps zmm28,zmm2,zmm1
  a3514d:	62 f1 6c 48 58 c9    	vaddps zmm1,zmm2,zmm1
  a35153:	62 d1 3c 48 58 d1    	vaddps zmm2,zmm8,zmm9
  a35159:	62 51 3c 48 5c c1    	vsubps zmm8,zmm8,zmm9
  a3515f:	62 41 34 40 58 f4    	vaddps zmm30,zmm25,zmm12
  a35165:	62 51 34 40 5c cc    	vsubps zmm9,zmm25,zmm12
  a3516b:	62 e2 7d 48 7f f4    	vpermt2ps zmm22,zmm0,zmm4
  a35171:	62 c2 7d 48 7f e8    	vpermt2ps zmm21,zmm0,zmm8
  a35177:	62 72 7d 48 7f d6    	vpermt2ps zmm10,zmm0,zmm6
  a3517d:	62 72 7d 48 7f fe    	vpermt2ps zmm15,zmm0,zmm6
  a35183:	62 f2 7d 48 7f d6    	vpermt2ps zmm2,zmm0,zmm6
  a35189:	62 e2 7d 48 7f d6    	vpermt2ps zmm18,zmm0,zmm6
  a3518f:	62 e2 7d 48 7f c6    	vpermt2ps zmm16,zmm0,zmm6
  a35195:	62 f2 7d 48 7f de    	vpermt2ps zmm3,zmm0,zmm6
  a3519b:	62 b1 7c 48 28 e6    	vmovaps zmm4,zmm22
  a351a1:	62 61 7c 48 28 3d 55 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff691d55]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a351a8:	1d 69 ff 
  a351ab:	62 f2 05 40 7f e2    	vpermt2ps zmm4,zmm31,zmm2
  a351b1:	62 f1 7c 48 28 3d 85 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff691d85]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a351b8:	1d 69 ff 
  a351bb:	62 e2 45 48 7f f2    	vpermt2ps zmm22,zmm7,zmm2
  a351c1:	62 b1 7c 48 28 d5    	vmovaps zmm2,zmm21
  a351c7:	62 b2 05 40 7f d2    	vpermt2ps zmm2,zmm31,zmm18
  a351cd:	62 a2 45 48 7f ea    	vpermt2ps zmm21,zmm7,zmm18
  a351d3:	62 51 7c 48 28 c2    	vmovaps zmm8,zmm10
  a351d9:	62 32 05 40 7f c0    	vpermt2ps zmm8,zmm31,zmm16
  a351df:	62 32 45 48 7f d0    	vpermt2ps zmm10,zmm7,zmm16
  a351e5:	62 51 7c 48 28 e7    	vmovaps zmm12,zmm15
  a351eb:	62 72 05 40 7f e3    	vpermt2ps zmm12,zmm31,zmm3
  a351f1:	62 72 45 48 7f fb    	vpermt2ps zmm15,zmm7,zmm3
  a351f7:	62 c1 dd 48 14 d8    	vunpcklpd zmm19,zmm4,zmm8
  a351fd:	62 c1 dd 48 15 c8    	vunpckhpd zmm17,zmm4,zmm8
  a35203:	62 51 ed 48 14 f4    	vunpcklpd zmm14,zmm2,zmm12
  a35209:	62 d1 ed 48 15 d4    	vunpckhpd zmm2,zmm2,zmm12
  a3520f:	62 c1 cd 40 14 d2    	vunpcklpd zmm18,zmm22,zmm10
  a35215:	62 c1 cd 40 15 c2    	vunpckhpd zmm16,zmm22,zmm10
  a3521b:	62 d1 d5 40 14 df    	vunpcklpd zmm3,zmm21,zmm15
  a35221:	62 d1 d5 40 15 e7    	vunpckhpd zmm4,zmm21,zmm15
  a35227:	62 31 7c 48 28 fb    	vmovaps zmm15,zmm19
  a3522d:	62 71 7c 48 28 05 09 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff691c09]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a35234:	1c 69 ff 
  a35237:	62 c2 3d 48 7f de    	vpermt2ps zmm19,zmm8,zmm14
  a3523d:	62 a1 7c 48 28 e9    	vmovaps zmm21,zmm17
  a35243:	62 e2 15 48 7f ea    	vpermt2ps zmm21,zmm13,zmm2
  a35249:	62 e2 3d 48 7f ca    	vpermt2ps zmm17,zmm8,zmm2
  a3524f:	62 21 7c 48 28 ca    	vmovaps zmm25,zmm18
  a35255:	62 62 15 48 7f cb    	vpermt2ps zmm25,zmm13,zmm3
  a3525b:	62 e2 3d 48 7f d3    	vpermt2ps zmm18,zmm8,zmm3
  a35261:	62 a1 7c 48 28 f0    	vmovaps zmm22,zmm16
  a35267:	62 e2 15 48 7f f4    	vpermt2ps zmm22,zmm13,zmm4
  a3526d:	62 e2 3d 48 7f c4    	vpermt2ps zmm16,zmm8,zmm4
  a35273:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a35279:	62 42 7d 48 7f c1    	vpermt2ps zmm24,zmm0,zmm9
  a3527f:	62 62 7d 48 7f d6    	vpermt2ps zmm26,zmm0,zmm6
  a35285:	62 62 7d 48 7f e6    	vpermt2ps zmm28,zmm0,zmm6
  a3528b:	62 62 7d 48 7f f6    	vpermt2ps zmm30,zmm0,zmm6
  a35291:	62 e2 7d 48 7f fe    	vpermt2ps zmm23,zmm0,zmm6
  a35297:	62 62 7d 48 7f de    	vpermt2ps zmm27,zmm0,zmm6
  a3529d:	62 62 7d 48 7f ee    	vpermt2ps zmm29,zmm0,zmm6
  a352a3:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  a352a9:	62 92 05 40 7f ce    	vpermt2ps zmm1,zmm31,zmm30
  a352af:	62 82 45 48 7f e6    	vpermt2ps zmm20,zmm7,zmm30
  a352b5:	62 91 7c 48 28 d0    	vmovaps zmm2,zmm24
  a352bb:	62 b2 05 40 7f d7    	vpermt2ps zmm2,zmm31,zmm23
  a352c1:	62 22 45 48 7f c7    	vpermt2ps zmm24,zmm7,zmm23
  a352c7:	62 91 7c 48 28 da    	vmovaps zmm3,zmm26
  a352cd:	62 92 05 40 7f db    	vpermt2ps zmm3,zmm31,zmm27
  a352d3:	62 02 45 48 7f d3    	vpermt2ps zmm26,zmm7,zmm27
  a352d9:	62 91 7c 48 28 e4    	vmovaps zmm4,zmm28
  a352df:	62 92 05 40 7f e5    	vpermt2ps zmm4,zmm31,zmm29
  a352e5:	62 02 45 48 7f e5    	vpermt2ps zmm28,zmm7,zmm29
  a352eb:	62 61 f5 48 14 f3    	vunpcklpd zmm30,zmm1,zmm3
  a352f1:	62 61 f5 48 15 db    	vunpckhpd zmm27,zmm1,zmm3
  a352f7:	62 e1 ed 48 14 fc    	vunpcklpd zmm23,zmm2,zmm4
  a352fd:	62 f1 ed 48 15 cc    	vunpckhpd zmm1,zmm2,zmm4
  a35303:	62 01 dd 40 14 ea    	vunpcklpd zmm29,zmm20,zmm26
  a35309:	62 01 dd 40 15 d2    	vunpckhpd zmm26,zmm20,zmm26
  a3530f:	62 91 bd 40 14 d4    	vunpcklpd zmm2,zmm24,zmm28
  a35315:	62 91 bd 40 15 dc    	vunpckhpd zmm3,zmm24,zmm28
  a3531b:	62 81 7c 48 28 e6    	vmovaps zmm20,zmm30
  a35321:	62 22 3d 48 7f f7    	vpermt2ps zmm30,zmm8,zmm23
  a35327:	62 91 7c 48 28 e3    	vmovaps zmm4,zmm27
  a3532d:	62 f2 15 48 7f e1    	vpermt2ps zmm4,zmm13,zmm1
  a35333:	62 62 3d 48 7f d9    	vpermt2ps zmm27,zmm8,zmm1
  a35339:	62 91 7c 48 28 cd    	vmovaps zmm1,zmm29
  a3533f:	62 f2 15 48 7f ca    	vpermt2ps zmm1,zmm13,zmm2
  a35345:	62 62 3d 48 7f ea    	vpermt2ps zmm29,zmm8,zmm2
  a3534b:	62 91 7c 48 28 d2    	vmovaps zmm2,zmm26
  a35351:	62 f2 15 48 7f d3    	vpermt2ps zmm2,zmm13,zmm3
  a35357:	62 62 3d 48 7f d3    	vpermt2ps zmm26,zmm8,zmm3
  a3535d:	62 f1 7c 48 10 59 08 	vmovups zmm3,ZMMWORD PTR [rcx+0x200]
  a35364:	62 71 7c 48 10 41 09 	vmovups zmm8,ZMMWORD PTR [rcx+0x240]
  a3536b:	62 61 34 40 59 c3    	vmulps zmm24,zmm25,zmm3
  a35371:	62 42 75 48 bc c0    	vfnmadd231ps zmm24,zmm1,zmm8
  a35377:	62 61 74 48 59 e3    	vmulps zmm28,zmm1,zmm3
  a3537d:	62 f1 7c 48 10 49 04 	vmovups zmm1,ZMMWORD PTR [rcx+0x100]
  a35384:	62 02 3d 48 b8 e1    	vfmadd231ps zmm28,zmm8,zmm25
  a3538a:	62 f1 7c 48 10 59 05 	vmovups zmm3,ZMMWORD PTR [rcx+0x140]
  a35391:	62 61 54 40 59 c9    	vmulps zmm25,zmm21,zmm1
  a35397:	62 62 5d 48 bc cb    	vfnmadd231ps zmm25,zmm4,zmm3
  a3539d:	62 f1 5c 48 59 c9    	vmulps zmm1,zmm4,zmm1
  a353a3:	62 f1 7c 48 10 61 0c 	vmovups zmm4,ZMMWORD PTR [rcx+0x300]
  a353aa:	62 b2 65 48 b8 cd    	vfmadd231ps zmm1,zmm3,zmm21
  a353b0:	62 f1 7c 48 10 59 0d 	vmovups zmm3,ZMMWORD PTR [rcx+0x340]
  a353b7:	62 71 4c 40 59 c4    	vmulps zmm8,zmm22,zmm4
  a353bd:	62 72 6d 48 bc c3    	vfnmadd231ps zmm8,zmm2,zmm3
  a353c3:	62 f1 6c 48 59 d4    	vmulps zmm2,zmm2,zmm4
  a353c9:	62 f1 7c 48 10 61 02 	vmovups zmm4,ZMMWORD PTR [rcx+0x80]
  a353d0:	62 b2 65 48 b8 d6    	vfmadd231ps zmm2,zmm3,zmm22
  a353d6:	62 f1 7c 48 10 59 03 	vmovups zmm3,ZMMWORD PTR [rcx+0xc0]
  a353dd:	62 71 64 40 59 cc    	vmulps zmm9,zmm19,zmm4
  a353e3:	62 72 0d 40 bc cb    	vfnmadd231ps zmm9,zmm30,zmm3
  a353e9:	62 f1 0c 40 59 e4    	vmulps zmm4,zmm30,zmm4
  a353ef:	62 71 7c 48 10 51 0a 	vmovups zmm10,ZMMWORD PTR [rcx+0x280]
  a353f6:	62 b2 65 48 b8 e3    	vfmadd231ps zmm4,zmm3,zmm19
  a353fc:	62 f1 7c 48 10 59 0b 	vmovups zmm3,ZMMWORD PTR [rcx+0x2c0]
  a35403:	62 51 6c 40 59 e2    	vmulps zmm12,zmm18,zmm10
  a35409:	62 72 15 40 bc e3    	vfnmadd231ps zmm12,zmm29,zmm3
  a3540f:	62 51 14 40 59 d2    	vmulps zmm10,zmm29,zmm10
  a35415:	62 e1 7c 48 10 59 06 	vmovups zmm19,ZMMWORD PTR [rcx+0x180]
  a3541c:	62 32 65 48 b8 d2    	vfmadd231ps zmm10,zmm3,zmm18
  a35422:	62 f1 7c 48 10 59 07 	vmovups zmm3,ZMMWORD PTR [rcx+0x1c0]
  a35429:	62 a1 74 40 59 d3    	vmulps zmm18,zmm17,zmm19
  a3542f:	62 e2 25 40 bc d3    	vfnmadd231ps zmm18,zmm27,zmm3
  a35435:	62 a1 24 40 59 db    	vmulps zmm19,zmm27,zmm19
  a3543b:	62 e1 7c 48 10 69 0e 	vmovups zmm21,ZMMWORD PTR [rcx+0x380]
  a35442:	62 a2 65 48 b8 d9    	vfmadd231ps zmm19,zmm3,zmm17
  a35448:	62 f1 7c 48 10 59 0f 	vmovups zmm3,ZMMWORD PTR [rcx+0x3c0]
  a3544f:	62 a1 7c 40 59 cd    	vmulps zmm17,zmm16,zmm21
  a35455:	62 e2 2d 40 bc cb    	vfnmadd231ps zmm17,zmm26,zmm3
  a3545b:	62 a1 2c 40 59 ed    	vmulps zmm21,zmm26,zmm21
  a35461:	62 a2 65 48 b8 e8    	vfmadd231ps zmm21,zmm3,zmm16
  a35467:	62 52 15 48 7f fe    	vpermt2ps zmm15,zmm13,zmm14
  a3546d:	62 a2 15 48 7f e7    	vpermt2ps zmm20,zmm13,zmm23
  a35473:	62 91 04 48 58 d8    	vaddps zmm3,zmm15,zmm24
  a35479:	62 11 04 48 5c f0    	vsubps zmm14,zmm15,zmm24
  a3547f:	62 71 74 48 58 fa    	vaddps zmm15,zmm1,zmm2
  a35485:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a3548b:	62 d1 34 48 58 d4    	vaddps zmm2,zmm9,zmm12
  a35491:	62 51 34 48 5c cc    	vsubps zmm9,zmm9,zmm12
  a35497:	62 51 5c 48 58 e2    	vaddps zmm12,zmm4,zmm10
  a3549d:	62 d1 5c 48 5c e2    	vsubps zmm4,zmm4,zmm10
  a354a3:	62 31 64 40 58 d5    	vaddps zmm10,zmm19,zmm21
  a354a9:	62 a1 64 40 5c c5    	vsubps zmm16,zmm19,zmm21
  a354af:	62 a1 6c 40 58 d9    	vaddps zmm19,zmm18,zmm17
  a354b5:	62 a1 6c 40 5c c9    	vsubps zmm17,zmm18,zmm17
  a354bb:	62 a1 1c 40 58 d4    	vaddps zmm18,zmm28,zmm20
  a354c1:	62 81 5c 40 5c e4    	vsubps zmm20,zmm20,zmm28
  a354c7:	62 c1 34 40 58 e8    	vaddps zmm21,zmm25,zmm8
  a354cd:	62 11 3c 48 5c c1    	vsubps zmm8,zmm8,zmm25
  a354d3:	62 e1 34 48 58 f4    	vaddps zmm22,zmm9,zmm4
  a354d9:	62 d1 5c 48 5c e1    	vsubps zmm4,zmm4,zmm9
  a354df:	62 31 7c 40 5c c9    	vsubps zmm9,zmm16,zmm17
  a354e5:	62 a1 74 40 58 c0    	vaddps zmm16,zmm17,zmm16
  a354eb:	62 a1 64 48 58 cd    	vaddps zmm17,zmm3,zmm21
  a354f1:	62 b1 64 48 5c dd    	vsubps zmm3,zmm3,zmm21
  a354f7:	62 c1 1c 48 58 ea    	vaddps zmm21,zmm12,zmm10
  a354fd:	62 51 1c 48 5c d2    	vsubps zmm10,zmm12,zmm10
  a35503:	62 31 04 48 58 e2    	vaddps zmm12,zmm15,zmm18
  a35509:	62 51 6c 40 5c ff    	vsubps zmm15,zmm18,zmm15
  a3550f:	62 a1 6c 48 58 d3    	vaddps zmm18,zmm2,zmm19
  a35515:	62 f1 64 40 5c d2    	vsubps zmm2,zmm19,zmm2
  a3551b:	62 e1 0c 48 58 d9    	vaddps zmm19,zmm14,zmm1
  a35521:	62 f2 7d 48 18 3d 71 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff63fe71]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a35528:	fe 63 ff 
  a3552b:	62 e1 4c 40 59 f7    	vmulps zmm22,zmm22,zmm7
  a35531:	62 71 34 48 59 cf    	vmulps zmm9,zmm9,zmm7
  a35537:	62 f1 5c 48 59 e7    	vmulps zmm4,zmm4,zmm7
  a3553d:	62 e1 7c 40 59 c7    	vmulps zmm16,zmm16,zmm7
  a35543:	62 f1 0c 48 5c c9    	vsubps zmm1,zmm14,zmm1
  a35549:	62 31 5c 48 5c f0    	vsubps zmm14,zmm4,zmm16
  a3554f:	62 b1 5c 48 58 e0    	vaddps zmm4,zmm4,zmm16
  a35555:	62 a1 3c 48 58 c4    	vaddps zmm16,zmm8,zmm20
  a3555b:	62 51 5c 40 5c c0    	vsubps zmm8,zmm20,zmm8
  a35561:	62 c1 4c 40 58 e1    	vaddps zmm20,zmm22,zmm9
  a35567:	62 31 34 48 5c ce    	vsubps zmm9,zmm9,zmm22
  a3556d:	62 a1 64 40 58 f4    	vaddps zmm22,zmm19,zmm20
  a35573:	62 a1 64 40 5c dc    	vsubps zmm19,zmm19,zmm20
  a35579:	62 c1 7c 40 58 e6    	vaddps zmm20,zmm16,zmm14
  a3557f:	62 51 7c 40 5c f6    	vsubps zmm14,zmm16,zmm14
  a35585:	62 c1 64 48 58 c2    	vaddps zmm16,zmm3,zmm10
  a3558b:	62 d1 64 48 5c da    	vsubps zmm3,zmm3,zmm10
  a35591:	62 71 04 48 58 d2    	vaddps zmm10,zmm15,zmm2
  a35597:	62 f1 04 48 5c d2    	vsubps zmm2,zmm15,zmm2
  a3559d:	62 71 74 48 58 fc    	vaddps zmm15,zmm1,zmm4
  a355a3:	62 f1 74 48 5c cc    	vsubps zmm1,zmm1,zmm4
  a355a9:	62 d1 3c 48 58 e1    	vaddps zmm4,zmm8,zmm9
  a355af:	62 51 3c 48 5c c1    	vsubps zmm8,zmm8,zmm9
  a355b5:	62 31 74 40 5c ca    	vsubps zmm9,zmm17,zmm18
  a355bb:	62 a1 74 40 58 ca    	vaddps zmm17,zmm17,zmm18
  a355c1:	62 a1 1c 48 5c d5    	vsubps zmm18,zmm12,zmm21
  a355c7:	62 31 1c 48 58 e5    	vaddps zmm12,zmm12,zmm21
  a355cd:	62 a3 7d 48 19 cd 02 	vextractf32x4 xmm21,zmm17,0x2
  a355d4:	62 f1 7c 48 28 3d e2 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff65bae2]        # 910c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e570>
  a355db:	ba 65 ff 
  a355de:	62 c2 45 48 7f cc    	vpermt2ps zmm17,zmm7,zmm12
  a355e4:	62 e1 7c 48 11 0c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm17
  a355eb:	62 53 7d 48 19 e4 02 	vextractf32x4 xmm12,zmm12,0x2
  a355f2:	62 51 54 00 14 e4    	vunpcklps xmm12,xmm21,xmm12
  a355f8:	c5 78 11 64 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm12
  a355fe:	62 c3 7d 48 19 f4 02 	vextractf32x4 xmm12,zmm22,0x2
  a35605:	62 a2 45 48 7f f4    	vpermt2ps zmm22,zmm7,zmm20
  a3560b:	62 e1 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x50],zmm22
  a35612:	50 00 00 00 
  a35616:	62 a3 7d 48 19 e1 02 	vextractf32x4 xmm17,zmm20,0x2
  a3561d:	62 31 1c 08 14 e1    	vunpcklps xmm12,xmm12,xmm17
  a35623:	c5 78 11 a4 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm12
  a3562a:	00 00 
  a3562c:	62 c3 7d 48 19 c4 02 	vextractf32x4 xmm12,zmm16,0x2
  a35633:	62 c2 45 48 7f c2    	vpermt2ps zmm16,zmm7,zmm10
  a35639:	62 e1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xa0],zmm16
  a35640:	a0 00 00 00 
  a35644:	62 53 7d 48 19 d2 02 	vextractf32x4 xmm10,zmm10,0x2
  a3564b:	c4 41 18 14 d2       	vunpcklps xmm10,xmm12,xmm10
  a35650:	c5 78 11 94 16 e0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xe0],xmm10
  a35657:	00 00 
  a35659:	62 53 7d 48 19 fa 02 	vextractf32x4 xmm10,zmm15,0x2
  a35660:	62 72 45 48 7f fc    	vpermt2ps zmm15,zmm7,zmm4
  a35666:	62 71 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm15
  a3566d:	f0 00 00 00 
  a35671:	62 f3 7d 48 19 e4 02 	vextractf32x4 xmm4,zmm4,0x2
  a35678:	c5 a8 14 e4          	vunpcklps xmm4,xmm10,xmm4
  a3567c:	c5 f8 11 a4 16 30 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x130],xmm4
  a35683:	00 00 
  a35685:	62 73 7d 48 19 cc 02 	vextractf32x4 xmm4,zmm9,0x2
  a3568c:	62 32 45 48 7f ca    	vpermt2ps zmm9,zmm7,zmm18
  a35692:	62 71 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm9
  a35699:	05 
  a3569a:	62 c3 7d 48 19 d1 02 	vextractf32x4 xmm9,zmm18,0x2
  a356a1:	c4 c1 58 14 e1       	vunpcklps xmm4,xmm4,xmm9
  a356a6:	c5 f8 11 a4 16 80 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x180],xmm4
  a356ad:	00 00 
  a356af:	62 e3 7d 48 19 dc 02 	vextractf32x4 xmm4,zmm19,0x2
  a356b6:	62 c2 45 48 7f de    	vpermt2ps zmm19,zmm7,zmm14
  a356bc:	62 e1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x190],zmm19
  a356c3:	90 01 00 00 
  a356c7:	62 53 7d 48 19 f1 02 	vextractf32x4 xmm9,zmm14,0x2
  a356ce:	c4 c1 58 14 e1       	vunpcklps xmm4,xmm4,xmm9
  a356d3:	c5 f8 11 a4 16 d0 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x1d0],xmm4
  a356da:	00 00 
  a356dc:	62 f3 7d 48 19 dc 02 	vextractf32x4 xmm4,zmm3,0x2
  a356e3:	62 f2 45 48 7f da    	vpermt2ps zmm3,zmm7,zmm2
  a356e9:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm3
  a356f0:	e0 01 00 00 
  a356f4:	62 f3 7d 48 19 d2 02 	vextractf32x4 xmm2,zmm2,0x2
  a356fb:	c5 d8 14 d2          	vunpcklps xmm2,xmm4,xmm2
  a356ff:	c5 f8 11 94 16 20 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x220],xmm2
  a35706:	00 00 
  a35708:	62 f3 7d 48 19 ca 02 	vextractf32x4 xmm2,zmm1,0x2
  a3570f:	62 d2 45 48 7f c8    	vpermt2ps zmm1,zmm7,zmm8
  a35715:	62 f1 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x230],zmm1
  a3571c:	30 02 00 00 
  a35720:	62 73 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm8,0x2
  a35727:	c5 e8 14 c9          	vunpcklps xmm1,xmm2,xmm1
  a3572b:	c5 f8 11 8c 16 70 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x270],xmm1
  a35732:	00 00 
  a35734:	48 81 c2 80 02 00 00 	add    rdx,0x280
  a3573b:	48 39 d0             	cmp    rax,rdx
  a3573e:	0f 85 bc f6 ff ff    	jne    a34e00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x40>
  a35744:	c5 f8 77             	vzeroupper
  a35747:	c3                   	ret
