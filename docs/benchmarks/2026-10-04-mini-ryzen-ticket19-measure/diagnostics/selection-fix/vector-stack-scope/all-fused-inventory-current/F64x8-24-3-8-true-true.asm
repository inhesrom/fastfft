
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008f2f80 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  8f2f80:	62 f1 fd 48 10 05 de 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7d3dde]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  8f2f87:	3d 7d ff 
  8f2f8a:	62 f1 fd 48 10 0d 14 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7d3e14]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  8f2f91:	3e 7d ff 
  8f2f94:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  8f2f98:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  8f2f9c:	62 f2 fd 48 7f db    	vpermt2pd zmm3,zmm0,zmm3
  8f2fa2:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  8f2fa6:	62 f2 f5 48 7f e4    	vpermt2pd zmm4,zmm1,zmm4
  8f2fac:	62 f1 fd 48 10 2d 32 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff7d3d32]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  8f2fb3:	3d 7d ff 
  8f2fb6:	62 f1 fd 48 10 35 68 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff7d3d68]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  8f2fbd:	3d 7d ff 
  8f2fc0:	48 c1 e2 07          	shl    rdx,0x7
  8f2fc4:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  8f2fc8:	31 d2                	xor    edx,edx
  8f2fca:	62 f1 fd 48 28 3d ac 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff78a2ac]        # 7d280 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa730>
  8f2fd1:	a2 78 ff 
  8f2fd4:	62 71 fd 48 28 15 e2 	vmovapd zmm10,ZMMWORD PTR [rip+0xffffffffff78a2e2]        # 7d2c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa770>
  8f2fdb:	a2 78 ff 
  8f2fde:	62 72 fd 48 19 1d b8 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff781eb8]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  8f2fe5:	1e 78 ff 
  8f2fe8:	62 71 fd 48 28 25 0e 	vmovapd zmm12,ZMMWORD PTR [rip+0xffffffffff78a30e]        # 7d300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa7b0>
  8f2fef:	a3 78 ff 
  8f2ff2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  8f2ff9:	1f 84 00 00 00 00 00 
  8f3000:	62 71 fd 48 10 2c 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1]
  8f3007:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x40]
  8f300e:	01 
  8f300f:	62 71 fd 48 10 7c 17 	vmovupd zmm15,ZMMWORD PTR [rdi+rdx*1+0x80]
  8f3016:	02 
  8f3017:	62 e1 fd 48 10 44 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0xc0]
  8f301e:	03 
  8f301f:	62 c1 fd 48 28 cd    	vmovapd zmm17,zmm13
  8f3025:	62 c2 c5 48 7f ce    	vpermt2pd zmm17,zmm7,zmm14
  8f302b:	62 52 ad 48 7f ee    	vpermt2pd zmm13,zmm10,zmm14
  8f3031:	62 51 fd 48 28 f7    	vmovapd zmm14,zmm15
  8f3037:	62 32 c5 48 7f f0    	vpermt2pd zmm14,zmm7,zmm16
  8f303d:	62 32 ad 48 7f f8    	vpermt2pd zmm15,zmm10,zmm16
  8f3043:	62 e1 fd 48 10 44 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0x100]
  8f304a:	04 
  8f304b:	62 e1 fd 48 10 54 17 	vmovupd zmm18,ZMMWORD PTR [rdi+rdx*1+0x140]
  8f3052:	05 
  8f3053:	62 a1 fd 48 28 d8    	vmovapd zmm19,zmm16
  8f3059:	62 a2 c5 48 7f da    	vpermt2pd zmm19,zmm7,zmm18
  8f305f:	62 a2 ad 48 7f c2    	vpermt2pd zmm16,zmm10,zmm18
  8f3065:	62 a1 85 48 58 d0    	vaddpd zmm18,zmm15,zmm16
  8f306b:	62 a1 95 48 58 e2    	vaddpd zmm20,zmm13,zmm18
  8f3071:	62 a1 8d 48 58 eb    	vaddpd zmm21,zmm14,zmm19
  8f3077:	62 21 f5 40 58 d5    	vaddpd zmm26,zmm17,zmm21
  8f307d:	62 72 fd 48 19 05 11 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff781a11]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8f3084:	1a 78 ff 
  8f3087:	62 32 bd 48 bc ea    	vfnmadd231pd zmm13,zmm8,zmm18
  8f308d:	62 31 8d 48 5c f3    	vsubpd zmm14,zmm14,zmm19
  8f3093:	62 72 fd 48 19 0d 83 	vbroadcastsd zmm9,QWORD PTR [rip+0xffffffffff781b83]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8f309a:	1b 78 ff 
  8f309d:	62 51 8d 48 59 f1    	vmulpd zmm14,zmm14,zmm9
  8f30a3:	62 c1 95 48 58 fe    	vaddpd zmm23,zmm13,zmm14
  8f30a9:	62 a2 bd 48 bc cd    	vfnmadd231pd zmm17,zmm8,zmm21
  8f30af:	62 31 85 48 5c f8    	vsubpd zmm15,zmm15,zmm16
  8f30b5:	62 51 85 48 59 f9    	vmulpd zmm15,zmm15,zmm9
  8f30bb:	62 41 f5 40 5c e7    	vsubpd zmm28,zmm17,zmm15
  8f30c1:	62 c1 95 48 5c c6    	vsubpd zmm16,zmm13,zmm14
  8f30c7:	62 21 85 48 58 c1    	vaddpd zmm24,zmm15,zmm17
  8f30cd:	62 31 fd 48 28 fc    	vmovapd zmm15,zmm20
  8f30d3:	62 72 fd 48 7f fa    	vpermt2pd zmm15,zmm0,zmm2
  8f30d9:	62 e2 f5 48 7f e2    	vpermt2pd zmm20,zmm1,zmm2
  8f30df:	62 a1 fd 48 28 cf    	vmovapd zmm17,zmm23
  8f30e5:	62 e2 fd 48 7f ca    	vpermt2pd zmm17,zmm0,zmm2
  8f30eb:	62 e2 f5 48 7f fa    	vpermt2pd zmm23,zmm1,zmm2
  8f30f1:	62 31 fd 48 28 f0    	vmovapd zmm14,zmm16
  8f30f7:	62 72 fd 48 7f f2    	vpermt2pd zmm14,zmm0,zmm2
  8f30fd:	62 e2 f5 48 7f c2    	vpermt2pd zmm16,zmm1,zmm2
  8f3103:	62 51 fd 48 28 ef    	vmovapd zmm13,zmm15
  8f3109:	62 52 d5 48 7f ee    	vpermt2pd zmm13,zmm5,zmm14
  8f310f:	62 52 cd 48 7f fe    	vpermt2pd zmm15,zmm6,zmm14
  8f3115:	62 31 fd 48 28 f1    	vmovapd zmm14,zmm17
  8f311b:	62 72 d5 48 7f f3    	vpermt2pd zmm14,zmm5,zmm3
  8f3121:	62 e2 cd 48 7f cb    	vpermt2pd zmm17,zmm6,zmm3
  8f3127:	62 a1 fd 48 28 d4    	vmovapd zmm18,zmm20
  8f312d:	62 a2 d5 48 7f d0    	vpermt2pd zmm18,zmm5,zmm16
  8f3133:	62 a2 cd 48 7f e0    	vpermt2pd zmm20,zmm6,zmm16
  8f3139:	62 a1 fd 48 28 ef    	vmovapd zmm21,zmm23
  8f313f:	62 e2 d5 48 7f ec    	vpermt2pd zmm21,zmm5,zmm4
  8f3145:	62 e2 cd 48 7f fc    	vpermt2pd zmm23,zmm6,zmm4
  8f314b:	62 c1 95 48 15 de    	vunpckhpd zmm19,zmm13,zmm14
  8f3151:	62 a1 85 48 14 f1    	vunpcklpd zmm22,zmm15,zmm17
  8f3157:	62 a1 85 48 15 c1    	vunpckhpd zmm16,zmm15,zmm17
  8f315d:	62 21 ed 40 14 cd    	vunpcklpd zmm25,zmm18,zmm21
  8f3163:	62 a1 ed 40 15 d5    	vunpckhpd zmm18,zmm18,zmm21
  8f3169:	62 a1 dd 40 14 ef    	vunpcklpd zmm21,zmm20,zmm23
  8f316f:	62 31 dd 40 15 ff    	vunpckhpd zmm15,zmm20,zmm23
  8f3175:	62 81 fd 48 28 fa    	vmovapd zmm23,zmm26
  8f317b:	62 e2 fd 48 7f fa    	vpermt2pd zmm23,zmm0,zmm2
  8f3181:	62 62 f5 48 7f d2    	vpermt2pd zmm26,zmm1,zmm2
  8f3187:	62 01 fd 48 28 dc    	vmovapd zmm27,zmm28
  8f318d:	62 62 fd 48 7f da    	vpermt2pd zmm27,zmm0,zmm2
  8f3193:	62 62 f5 48 7f e2    	vpermt2pd zmm28,zmm1,zmm2
  8f3199:	62 81 fd 48 28 e0    	vmovapd zmm20,zmm24
  8f319f:	62 e2 fd 48 7f e2    	vpermt2pd zmm20,zmm0,zmm2
  8f31a5:	62 62 f5 48 7f c2    	vpermt2pd zmm24,zmm1,zmm2
  8f31ab:	62 a1 fd 48 28 cf    	vmovapd zmm17,zmm23
  8f31b1:	62 a2 d5 48 7f cc    	vpermt2pd zmm17,zmm5,zmm20
  8f31b7:	62 a2 cd 48 7f fc    	vpermt2pd zmm23,zmm6,zmm20
  8f31bd:	62 81 fd 48 28 e3    	vmovapd zmm20,zmm27
  8f31c3:	62 e2 d5 48 7f e3    	vpermt2pd zmm20,zmm5,zmm3
  8f31c9:	62 62 cd 48 7f db    	vpermt2pd zmm27,zmm6,zmm3
  8f31cf:	62 01 fd 48 28 f2    	vmovapd zmm30,zmm26
  8f31d5:	62 02 d5 48 7f f0    	vpermt2pd zmm30,zmm5,zmm24
  8f31db:	62 02 cd 48 7f d0    	vpermt2pd zmm26,zmm6,zmm24
  8f31e1:	62 01 fd 48 28 fc    	vmovapd zmm31,zmm28
  8f31e7:	62 62 d5 48 7f fc    	vpermt2pd zmm31,zmm5,zmm4
  8f31ed:	62 62 cd 48 7f e4    	vpermt2pd zmm28,zmm6,zmm4
  8f31f3:	62 21 f5 40 15 ec    	vunpckhpd zmm29,zmm17,zmm20
  8f31f9:	62 11 c5 40 14 c3    	vunpcklpd zmm8,zmm23,zmm27
  8f31ff:	62 01 c5 40 15 c3    	vunpckhpd zmm24,zmm23,zmm27
  8f3205:	62 11 8d 40 14 cf    	vunpcklpd zmm9,zmm30,zmm31
  8f320b:	62 01 8d 40 15 df    	vunpckhpd zmm27,zmm30,zmm31
  8f3211:	62 81 ad 40 15 fc    	vunpckhpd zmm23,zmm26,zmm28
  8f3217:	62 01 ad 40 14 f4    	vunpcklpd zmm30,zmm26,zmm28
  8f321d:	62 61 fd 48 10 61 08 	vmovupd zmm28,ZMMWORD PTR [rcx+0x200]
  8f3224:	62 61 fd 48 10 79 09 	vmovupd zmm31,ZMMWORD PTR [rcx+0x240]
  8f322b:	62 01 b5 40 59 d4    	vmulpd zmm26,zmm25,zmm28
  8f3231:	62 02 b5 48 bc d7    	vfnmadd231pd zmm26,zmm9,zmm31
  8f3237:	62 01 b5 48 59 e4    	vmulpd zmm28,zmm9,zmm28
  8f323d:	62 71 fd 48 10 49 04 	vmovupd zmm9,ZMMWORD PTR [rcx+0x100]
  8f3244:	62 02 b5 40 b8 e7    	vfmadd231pd zmm28,zmm25,zmm31
  8f324a:	62 61 fd 48 10 79 05 	vmovupd zmm31,ZMMWORD PTR [rcx+0x140]
  8f3251:	62 41 cd 40 59 c9    	vmulpd zmm25,zmm22,zmm9
  8f3257:	62 02 bd 48 bc cf    	vfnmadd231pd zmm25,zmm8,zmm31
  8f325d:	62 51 bd 48 59 c1    	vmulpd zmm8,zmm8,zmm9
  8f3263:	62 71 fd 48 10 49 0c 	vmovupd zmm9,ZMMWORD PTR [rcx+0x300]
  8f326a:	62 12 cd 40 b8 c7    	vfmadd231pd zmm8,zmm22,zmm31
  8f3270:	62 e1 fd 48 10 71 0d 	vmovupd zmm22,ZMMWORD PTR [rcx+0x340]
  8f3277:	62 41 d5 40 59 f9    	vmulpd zmm31,zmm21,zmm9
  8f327d:	62 22 8d 40 bc fe    	vfnmadd231pd zmm31,zmm30,zmm22
  8f3283:	62 51 8d 40 59 c9    	vmulpd zmm9,zmm30,zmm9
  8f3289:	62 61 fd 48 10 71 02 	vmovupd zmm30,ZMMWORD PTR [rcx+0x80]
  8f3290:	62 32 d5 40 b8 ce    	vfmadd231pd zmm9,zmm21,zmm22
  8f3296:	62 e1 fd 48 10 69 03 	vmovupd zmm21,ZMMWORD PTR [rcx+0xc0]
  8f329d:	62 81 e5 40 59 f6    	vmulpd zmm22,zmm19,zmm30
  8f32a3:	62 a2 95 40 bc f5    	vfnmadd231pd zmm22,zmm29,zmm21
  8f32a9:	62 01 95 40 59 ee    	vmulpd zmm29,zmm29,zmm30
  8f32af:	62 61 fd 48 10 71 0a 	vmovupd zmm30,ZMMWORD PTR [rcx+0x280]
  8f32b6:	62 22 e5 40 b8 ed    	vfmadd231pd zmm29,zmm19,zmm21
  8f32bc:	62 e1 fd 48 10 59 0b 	vmovupd zmm19,ZMMWORD PTR [rcx+0x2c0]
  8f32c3:	62 81 ed 40 59 ee    	vmulpd zmm21,zmm18,zmm30
  8f32c9:	62 a2 a5 40 bc eb    	vfnmadd231pd zmm21,zmm27,zmm19
  8f32cf:	62 01 a5 40 59 de    	vmulpd zmm27,zmm27,zmm30
  8f32d5:	62 61 fd 48 10 71 06 	vmovupd zmm30,ZMMWORD PTR [rcx+0x180]
  8f32dc:	62 22 ed 40 b8 db    	vfmadd231pd zmm27,zmm18,zmm19
  8f32e2:	62 e1 fd 48 10 51 07 	vmovupd zmm18,ZMMWORD PTR [rcx+0x1c0]
  8f32e9:	62 81 fd 40 59 de    	vmulpd zmm19,zmm16,zmm30
  8f32ef:	62 a2 bd 40 bc da    	vfnmadd231pd zmm19,zmm24,zmm18
  8f32f5:	62 01 bd 40 59 c6    	vmulpd zmm24,zmm24,zmm30
  8f32fb:	62 61 fd 48 10 71 0e 	vmovupd zmm30,ZMMWORD PTR [rcx+0x380]
  8f3302:	62 22 fd 40 b8 c2    	vfmadd231pd zmm24,zmm16,zmm18
  8f3308:	62 e1 fd 48 10 41 0f 	vmovupd zmm16,ZMMWORD PTR [rcx+0x3c0]
  8f330f:	62 81 85 48 59 d6    	vmulpd zmm18,zmm15,zmm30
  8f3315:	62 a2 c5 40 bc d0    	vfnmadd231pd zmm18,zmm23,zmm16
  8f331b:	62 81 c5 40 59 fe    	vmulpd zmm23,zmm23,zmm30
  8f3321:	62 a2 85 48 b8 f8    	vfmadd231pd zmm23,zmm15,zmm16
  8f3327:	62 51 95 48 14 ee    	vunpcklpd zmm13,zmm13,zmm14
  8f332d:	62 31 f5 40 14 f4    	vunpcklpd zmm14,zmm17,zmm20
  8f3333:	62 11 95 48 58 fa    	vaddpd zmm15,zmm13,zmm26
  8f3339:	62 11 95 48 5c ea    	vsubpd zmm13,zmm13,zmm26
  8f333f:	62 c1 bd 48 58 c1    	vaddpd zmm16,zmm8,zmm9
  8f3345:	62 51 bd 48 5c c1    	vsubpd zmm8,zmm8,zmm9
  8f334b:	62 31 cd 40 58 cd    	vaddpd zmm9,zmm22,zmm21
  8f3351:	62 a1 cd 40 5c cd    	vsubpd zmm17,zmm22,zmm21
  8f3357:	62 81 95 40 58 e3    	vaddpd zmm20,zmm29,zmm27
  8f335d:	62 81 95 40 5c eb    	vsubpd zmm21,zmm29,zmm27
  8f3363:	62 a1 bd 40 58 f7    	vaddpd zmm22,zmm24,zmm23
  8f3369:	62 a1 bd 40 5c ff    	vsubpd zmm23,zmm24,zmm23
  8f336f:	62 21 e5 40 58 c2    	vaddpd zmm24,zmm19,zmm18
  8f3375:	62 a1 e5 40 5c d2    	vsubpd zmm18,zmm19,zmm18
  8f337b:	62 c1 9d 40 58 de    	vaddpd zmm19,zmm28,zmm14
  8f3381:	62 11 8d 48 5c f4    	vsubpd zmm14,zmm14,zmm28
  8f3387:	62 01 b5 40 58 d7    	vaddpd zmm26,zmm25,zmm31
  8f338d:	62 01 85 40 5c c9    	vsubpd zmm25,zmm31,zmm25
  8f3393:	62 21 f5 40 58 dd    	vaddpd zmm27,zmm17,zmm21
  8f3399:	62 a1 d5 40 5c c9    	vsubpd zmm17,zmm21,zmm17
  8f339f:	62 a1 c5 40 5c ea    	vsubpd zmm21,zmm23,zmm18
  8f33a5:	62 a1 ed 40 58 d7    	vaddpd zmm18,zmm18,zmm23
  8f33ab:	62 81 85 48 58 fa    	vaddpd zmm23,zmm15,zmm26
  8f33b1:	62 11 85 48 5c fa    	vsubpd zmm15,zmm15,zmm26
  8f33b7:	62 21 dd 40 58 d6    	vaddpd zmm26,zmm20,zmm22
  8f33bd:	62 a1 dd 40 5c e6    	vsubpd zmm20,zmm20,zmm22
  8f33c3:	62 a1 fd 40 58 f3    	vaddpd zmm22,zmm16,zmm19
  8f33c9:	62 a1 e5 40 5c c0    	vsubpd zmm16,zmm19,zmm16
  8f33cf:	62 81 b5 48 58 d8    	vaddpd zmm19,zmm9,zmm24
  8f33d5:	62 51 bd 40 5c c9    	vsubpd zmm9,zmm24,zmm9
  8f33db:	62 41 95 48 58 c0    	vaddpd zmm24,zmm13,zmm8
  8f33e1:	62 41 a5 40 59 db    	vmulpd zmm27,zmm27,zmm11
  8f33e7:	62 c1 d5 40 59 eb    	vmulpd zmm21,zmm21,zmm11
  8f33ed:	62 c1 f5 40 59 cb    	vmulpd zmm17,zmm17,zmm11
  8f33f3:	62 c1 ed 40 59 d3    	vmulpd zmm18,zmm18,zmm11
  8f33f9:	62 51 95 48 5c c0    	vsubpd zmm8,zmm13,zmm8
  8f33ff:	62 31 f5 40 5c ea    	vsubpd zmm13,zmm17,zmm18
  8f3405:	62 a1 f5 40 58 ca    	vaddpd zmm17,zmm17,zmm18
  8f340b:	62 c1 b5 40 58 d6    	vaddpd zmm18,zmm25,zmm14
  8f3411:	62 11 8d 48 5c f1    	vsubpd zmm14,zmm14,zmm25
  8f3417:	62 21 a5 40 58 cd    	vaddpd zmm25,zmm27,zmm21
  8f341d:	62 81 d5 40 5c eb    	vsubpd zmm21,zmm21,zmm27
  8f3423:	62 01 bd 40 58 d9    	vaddpd zmm27,zmm24,zmm25
  8f3429:	62 01 bd 40 5c c1    	vsubpd zmm24,zmm24,zmm25
  8f342f:	62 41 ed 40 58 cd    	vaddpd zmm25,zmm18,zmm13
  8f3435:	62 51 ed 40 5c ed    	vsubpd zmm13,zmm18,zmm13
  8f343b:	62 a1 85 48 58 d4    	vaddpd zmm18,zmm15,zmm20
  8f3441:	62 31 85 48 5c fc    	vsubpd zmm15,zmm15,zmm20
  8f3447:	62 c1 fd 40 58 e1    	vaddpd zmm20,zmm16,zmm9
  8f344d:	62 51 fd 40 5c c9    	vsubpd zmm9,zmm16,zmm9
  8f3453:	62 a1 bd 48 58 c1    	vaddpd zmm16,zmm8,zmm17
  8f3459:	62 31 bd 48 5c c1    	vsubpd zmm8,zmm8,zmm17
  8f345f:	62 a1 8d 48 58 cd    	vaddpd zmm17,zmm14,zmm21
  8f3465:	62 31 8d 48 5c f5    	vsubpd zmm14,zmm14,zmm21
  8f346b:	62 81 cd 40 5c ea    	vsubpd zmm21,zmm22,zmm26
  8f3471:	62 81 cd 40 58 f2    	vaddpd zmm22,zmm22,zmm26
  8f3477:	62 21 c5 40 5c d3    	vsubpd zmm26,zmm23,zmm19
  8f347d:	62 a1 c5 40 58 db    	vaddpd zmm19,zmm23,zmm19
  8f3483:	62 a2 9d 48 7f f3    	vpermt2pd zmm22,zmm12,zmm19
  8f3489:	62 e3 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm22,0x2
  8f3490:	02 02 
  8f3492:	62 e1 fd 28 11 34 16 	vmovupd YMMWORD PTR [rsi+rdx*1],ymm22
  8f3499:	62 02 9d 48 7f cb    	vpermt2pd zmm25,zmm12,zmm27
  8f349f:	62 63 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm25,0x2
  8f34a6:	05 02 
  8f34a8:	62 61 fd 28 11 8c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm25
  8f34af:	30 00 00 00 
  8f34b3:	62 a2 9d 48 7f e2    	vpermt2pd zmm20,zmm12,zmm18
  8f34b9:	62 e3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm20,0x2
  8f34c0:	08 02 
  8f34c2:	62 e1 fd 28 11 64 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm20
  8f34c9:	03 
  8f34ca:	62 a2 9d 48 7f c8    	vpermt2pd zmm17,zmm12,zmm16
  8f34d0:	62 e3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm17,0x2
  8f34d7:	0b 02 
  8f34d9:	62 e1 fd 28 11 8c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm17
  8f34e0:	90 00 00 00 
  8f34e4:	62 82 9d 48 7f ea    	vpermt2pd zmm21,zmm12,zmm26
  8f34ea:	62 e3 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm21,0x2
  8f34f1:	0e 02 
  8f34f3:	62 e1 fd 28 11 6c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xc0],ymm21
  8f34fa:	06 
  8f34fb:	62 12 9d 48 7f e8    	vpermt2pd zmm13,zmm12,zmm24
  8f3501:	62 73 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x110],zmm13,0x2
  8f3508:	11 02 
  8f350a:	c5 7d 11 ac 16 f0 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0xf0],ymm13
  8f3511:	00 00 
  8f3513:	62 52 9d 48 7f cf    	vpermt2pd zmm9,zmm12,zmm15
  8f3519:	62 73 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x140],zmm9,0x2
  8f3520:	14 02 
  8f3522:	c5 7d 11 8c 16 20 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x120],ymm9
  8f3529:	00 00 
  8f352b:	62 52 9d 48 7f f0    	vpermt2pd zmm14,zmm12,zmm8
  8f3531:	62 73 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x170],zmm14,0x2
  8f3538:	17 02 
  8f353a:	c5 7d 11 b4 16 50 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x150],ymm14
  8f3541:	00 00 
  8f3543:	48 81 c2 80 01 00 00 	add    rdx,0x180
  8f354a:	48 39 d0             	cmp    rax,rdx
  8f354d:	0f 85 ad fa ff ff    	jne    8f3000 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  8f3553:	c5 f8 77             	vzeroupper
  8f3556:	c3                   	ret
