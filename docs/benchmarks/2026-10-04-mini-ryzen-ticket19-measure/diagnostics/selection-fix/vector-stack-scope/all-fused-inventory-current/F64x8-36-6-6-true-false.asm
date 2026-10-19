
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000923e00 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  923e00:	62 f1 fd 48 10 27    	vmovupd zmm4,ZMMWORD PTR [rdi]
  923e06:	c5 fd 10 47 40       	vmovupd ymm0,YMMWORD PTR [rdi+0x40]
  923e0b:	62 f1 fd 48 28 2d 2b 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff75cf2b]        # 80d40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe1f0>
  923e12:	cf 75 ff 
  923e15:	62 f1 fd 48 28 f4    	vmovapd zmm6,zmm4
  923e1b:	62 f2 d5 48 7f f0    	vpermt2pd zmm6,zmm5,zmm0
  923e21:	62 f1 fd 48 28 0d 55 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff75cf55]        # 80d80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe230>
  923e28:	cf 75 ff 
  923e2b:	62 f2 f5 48 7f e0    	vpermt2pd zmm4,zmm1,zmm0
  923e31:	62 f1 fd 48 10 bf 60 	vmovupd zmm7,ZMMWORD PTR [rdi+0x60]
  923e38:	00 00 00 
  923e3b:	c5 fd 10 87 a0 00 00 	vmovupd ymm0,YMMWORD PTR [rdi+0xa0]
  923e42:	00 
  923e43:	62 71 fd 48 28 cf    	vmovapd zmm9,zmm7
  923e49:	62 72 d5 48 7f c8    	vpermt2pd zmm9,zmm5,zmm0
  923e4f:	62 f2 f5 48 7f f8    	vpermt2pd zmm7,zmm1,zmm0
  923e55:	62 71 fd 48 10 5f 03 	vmovupd zmm11,ZMMWORD PTR [rdi+0xc0]
  923e5c:	c5 fd 10 87 00 01 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x100]
  923e63:	00 
  923e64:	62 d1 fd 48 28 d3    	vmovapd zmm2,zmm11
  923e6a:	62 f2 d5 48 7f d0    	vpermt2pd zmm2,zmm5,zmm0
  923e70:	62 72 f5 48 7f d8    	vpermt2pd zmm11,zmm1,zmm0
  923e76:	62 71 fd 48 10 87 20 	vmovupd zmm8,ZMMWORD PTR [rdi+0x120]
  923e7d:	01 00 00 
  923e80:	c5 fd 10 87 60 01 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x160]
  923e87:	00 
  923e88:	62 51 fd 48 28 d0    	vmovapd zmm10,zmm8
  923e8e:	62 72 d5 48 7f d0    	vpermt2pd zmm10,zmm5,zmm0
  923e94:	62 72 f5 48 7f c0    	vpermt2pd zmm8,zmm1,zmm0
  923e9a:	62 71 fd 48 10 67 06 	vmovupd zmm12,ZMMWORD PTR [rdi+0x180]
  923ea1:	c5 fd 10 87 c0 01 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x1c0]
  923ea8:	00 
  923ea9:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  923eaf:	62 72 d5 48 7f e8    	vpermt2pd zmm13,zmm5,zmm0
  923eb5:	62 72 f5 48 7f e0    	vpermt2pd zmm12,zmm1,zmm0
  923ebb:	62 71 fd 48 10 b7 e0 	vmovupd zmm14,ZMMWORD PTR [rdi+0x1e0]
  923ec2:	01 00 00 
  923ec5:	c5 fd 10 87 20 02 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x220]
  923ecc:	00 
  923ecd:	62 f2 8d 48 77 e8    	vpermi2pd zmm5,zmm14,zmm0
  923ed3:	62 72 f5 48 7f f0    	vpermt2pd zmm14,zmm1,zmm0
  923ed9:	62 d1 a5 48 58 cc    	vaddpd zmm1,zmm11,zmm12
  923edf:	62 71 dd 48 58 f9    	vaddpd zmm15,zmm4,zmm1
  923ee5:	62 e1 8d 48 58 c7    	vaddpd zmm16,zmm14,zmm7
  923eeb:	62 a1 bd 48 58 c8    	vaddpd zmm17,zmm8,zmm16
  923ef1:	62 b1 85 48 58 d9    	vaddpd zmm3,zmm15,zmm17
  923ef7:	62 c1 ed 48 58 d5    	vaddpd zmm18,zmm2,zmm13
  923efd:	62 a1 cd 48 58 da    	vaddpd zmm19,zmm6,zmm18
  923f03:	62 f2 fd 48 19 05 8b 	vbroadcastsd zmm0,QWORD PTR [rip+0xffffffffff750b8b]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  923f0a:	0b 75 ff 
  923f0d:	62 c1 d5 48 58 e1    	vaddpd zmm20,zmm5,zmm9
  923f13:	62 f2 fd 48 bc e1    	vfnmadd231pd zmm4,zmm0,zmm1
  923f19:	62 a1 ad 48 58 ec    	vaddpd zmm21,zmm10,zmm20
  923f1f:	62 51 ed 48 5c ed    	vsubpd zmm13,zmm2,zmm13
  923f25:	62 b1 e5 40 58 d5    	vaddpd zmm2,zmm19,zmm21
  923f2b:	62 32 fd 48 bc c0    	vfnmadd231pd zmm8,zmm0,zmm16
  923f31:	62 f2 fd 48 19 0d e5 	vbroadcastsd zmm1,QWORD PTR [rip+0xffffffffff750ce5]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  923f38:	0c 75 ff 
  923f3b:	62 71 95 48 59 e9    	vmulpd zmm13,zmm13,zmm1
  923f41:	62 d1 d5 48 5c e9    	vsubpd zmm5,zmm5,zmm9
  923f47:	62 c1 dd 48 58 c5    	vaddpd zmm16,zmm4,zmm13
  923f4d:	62 71 d5 48 59 c9    	vmulpd zmm9,zmm5,zmm1
  923f53:	62 b2 fd 48 bc f2    	vfnmadd231pd zmm6,zmm0,zmm18
  923f59:	62 c1 bd 48 58 d1    	vaddpd zmm18,zmm8,zmm9
  923f5f:	62 51 a5 48 5c dc    	vsubpd zmm11,zmm11,zmm12
  923f65:	62 b1 fd 40 5c ea    	vsubpd zmm5,zmm16,zmm18
  923f6b:	62 71 a5 48 59 d9    	vmulpd zmm11,zmm11,zmm1
  923f71:	62 32 fd 48 bc d4    	vfnmadd231pd zmm10,zmm0,zmm20
  923f77:	62 51 cd 48 5c e3    	vsubpd zmm12,zmm6,zmm11
  923f7d:	62 f1 8d 48 5c ff    	vsubpd zmm7,zmm14,zmm7
  923f83:	62 f1 c5 48 59 f9    	vmulpd zmm7,zmm7,zmm1
  923f89:	62 71 ad 48 5c f7    	vsubpd zmm14,zmm10,zmm7
  923f8f:	62 51 dd 48 5c ed    	vsubpd zmm13,zmm4,zmm13
  923f95:	62 d1 9d 48 5c e6    	vsubpd zmm4,zmm12,zmm14
  923f9b:	62 c1 bd 48 5c e1    	vsubpd zmm20,zmm8,zmm9
  923fa1:	62 31 95 48 58 cc    	vaddpd zmm9,zmm13,zmm20
  923fa7:	62 71 a5 48 58 de    	vaddpd zmm11,zmm11,zmm6
  923fad:	62 51 c5 48 58 d2    	vaddpd zmm10,zmm7,zmm10
  923fb3:	62 d1 a5 48 58 fa    	vaddpd zmm7,zmm11,zmm10
  923fb9:	62 b1 85 48 5c f1    	vsubpd zmm6,zmm15,zmm17
  923fbf:	62 31 e5 40 5c c5    	vsubpd zmm8,zmm19,zmm21
  923fc5:	62 31 fd 40 58 fa    	vaddpd zmm15,zmm16,zmm18
  923fcb:	62 51 9d 48 58 e6    	vaddpd zmm12,zmm12,zmm14
  923fd1:	62 31 95 48 5c ec    	vsubpd zmm13,zmm13,zmm20
  923fd7:	62 51 a5 48 5c f2    	vsubpd zmm14,zmm11,zmm10
  923fdd:	62 71 fd 48 10 15 81 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff7a2d81]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  923fe4:	2d 7a ff 
  923fe7:	62 71 fd 48 28 db    	vmovapd zmm11,zmm3
  923fed:	62 52 ad 48 7f df    	vpermt2pd zmm11,zmm10,zmm15
  923ff3:	62 e1 fd 48 10 05 ab 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff7a2dab]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  923ffa:	2d 7a ff 
  923ffd:	62 d2 fd 40 7f df    	vpermt2pd zmm3,zmm16,zmm15
  924003:	62 71 fd 48 28 fd    	vmovapd zmm15,zmm5
  924009:	62 52 ad 48 7f fd    	vpermt2pd zmm15,zmm10,zmm13
  92400f:	62 d2 fd 40 7f ed    	vpermt2pd zmm5,zmm16,zmm13
  924015:	c4 41 11 57 ed       	vxorpd xmm13,xmm13,xmm13
  92401a:	62 c1 fd 48 28 c9    	vmovapd zmm17,zmm9
  924020:	62 c2 ad 48 7f cd    	vpermt2pd zmm17,zmm10,zmm13
  924026:	62 52 fd 40 7f cd    	vpermt2pd zmm9,zmm16,zmm13
  92402c:	62 e1 fd 48 28 d6    	vmovapd zmm18,zmm6
  924032:	62 c2 ad 48 7f d5    	vpermt2pd zmm18,zmm10,zmm13
  924038:	62 d2 fd 40 7f f5    	vpermt2pd zmm6,zmm16,zmm13
  92403e:	62 e1 fd 48 10 1d a0 	vmovupd zmm19,ZMMWORD PTR [rip+0xffffffffff7a2ca0]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  924045:	2c 7a ff 
  924048:	62 e1 fd 48 28 e2    	vmovapd zmm20,zmm2
  92404e:	62 c2 ad 48 7f e4    	vpermt2pd zmm20,zmm10,zmm12
  924054:	62 d2 fd 40 7f d4    	vpermt2pd zmm2,zmm16,zmm12
  92405a:	62 71 fd 48 28 e4    	vmovapd zmm12,zmm4
  924060:	62 52 ad 48 7f e6    	vpermt2pd zmm12,zmm10,zmm14
  924066:	62 d2 fd 40 7f e6    	vpermt2pd zmm4,zmm16,zmm14
  92406c:	62 71 fd 48 28 f7    	vmovapd zmm14,zmm7
  924072:	62 52 ad 48 7f f5    	vpermt2pd zmm14,zmm10,zmm13
  924078:	62 d2 fd 40 7f fd    	vpermt2pd zmm7,zmm16,zmm13
  92407e:	62 52 bd 48 77 d5    	vpermi2pd zmm10,zmm8,zmm13
  924084:	62 52 fd 40 7f c5    	vpermt2pd zmm8,zmm16,zmm13
  92408a:	62 51 fd 48 28 eb    	vmovapd zmm13,zmm11
  924090:	62 32 e5 40 7f e9    	vpermt2pd zmm13,zmm19,zmm17
  924096:	62 e1 fd 48 10 05 88 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff7a2c88]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  92409d:	2c 7a ff 
  9240a0:	62 32 fd 40 7f d9    	vpermt2pd zmm11,zmm16,zmm17
  9240a6:	62 c1 fd 48 28 cf    	vmovapd zmm17,zmm15
  9240ac:	62 a2 e5 40 7f ca    	vpermt2pd zmm17,zmm19,zmm18
  9240b2:	62 32 fd 40 7f fa    	vpermt2pd zmm15,zmm16,zmm18
  9240b8:	62 d2 e5 40 7f d9    	vpermt2pd zmm3,zmm19,zmm9
  9240be:	62 f2 e5 40 7f ee    	vpermt2pd zmm5,zmm19,zmm6
  9240c4:	62 b1 95 48 14 f1    	vunpcklpd zmm6,zmm13,zmm17
  9240ca:	62 31 95 48 15 c9    	vunpckhpd zmm9,zmm13,zmm17
  9240d0:	62 51 a5 48 14 ef    	vunpcklpd zmm13,zmm11,zmm15
  9240d6:	62 51 a5 48 15 df    	vunpckhpd zmm11,zmm11,zmm15
  9240dc:	62 71 e5 48 14 fd    	vunpcklpd zmm15,zmm3,zmm5
  9240e2:	62 f1 e5 48 15 ed    	vunpckhpd zmm5,zmm3,zmm5
  9240e8:	62 a1 fd 48 28 cc    	vmovapd zmm17,zmm20
  9240ee:	62 c2 e5 40 7f ce    	vpermt2pd zmm17,zmm19,zmm14
  9240f4:	62 c2 fd 40 7f e6    	vpermt2pd zmm20,zmm16,zmm14
  9240fa:	62 51 fd 48 28 f4    	vmovapd zmm14,zmm12
  924100:	62 52 e5 40 7f f2    	vpermt2pd zmm14,zmm19,zmm10
  924106:	62 52 fd 40 7f e2    	vpermt2pd zmm12,zmm16,zmm10
  92410c:	62 f2 e5 40 7f d7    	vpermt2pd zmm2,zmm19,zmm7
  924112:	62 d2 e5 40 7f e0    	vpermt2pd zmm4,zmm19,zmm8
  924118:	62 d1 f5 40 14 de    	vunpcklpd zmm3,zmm17,zmm14
  92411e:	62 51 f5 40 15 d6    	vunpckhpd zmm10,zmm17,zmm14
  924124:	62 d1 dd 40 14 fc    	vunpcklpd zmm7,zmm20,zmm12
  92412a:	62 51 dd 40 15 c4    	vunpckhpd zmm8,zmm20,zmm12
  924130:	62 71 ed 48 14 e4    	vunpcklpd zmm12,zmm2,zmm4
  924136:	62 f1 ed 48 15 e4    	vunpckhpd zmm4,zmm2,zmm4
  92413c:	62 71 fd 48 10 72 02 	vmovupd zmm14,ZMMWORD PTR [rdx+0x80]
  924143:	62 e1 fd 48 10 42 03 	vmovupd zmm16,ZMMWORD PTR [rdx+0xc0]
  92414a:	62 e1 fd 48 10 4a 04 	vmovupd zmm17,ZMMWORD PTR [rdx+0x100]
  924151:	62 e1 fd 48 10 52 05 	vmovupd zmm18,ZMMWORD PTR [rdx+0x140]
  924158:	62 b1 95 48 59 d1    	vmulpd zmm2,zmm13,zmm17
  92415e:	62 b2 c5 48 bc d2    	vfnmadd231pd zmm2,zmm7,zmm18
  924164:	62 a1 c5 48 59 c9    	vmulpd zmm17,zmm7,zmm17
  92416a:	62 f1 fd 48 10 7a 08 	vmovupd zmm7,ZMMWORD PTR [rdx+0x200]
  924171:	62 a2 95 48 b8 ca    	vfmadd231pd zmm17,zmm13,zmm18
  924177:	62 71 fd 48 10 6a 09 	vmovupd zmm13,ZMMWORD PTR [rdx+0x240]
  92417e:	62 e1 85 48 59 d7    	vmulpd zmm18,zmm15,zmm7
  924184:	62 c2 9d 48 bc d5    	vfnmadd231pd zmm18,zmm12,zmm13
  92418a:	62 71 9d 48 59 e7    	vmulpd zmm12,zmm12,zmm7
  924190:	62 e1 fd 48 10 5a 06 	vmovupd zmm19,ZMMWORD PTR [rdx+0x180]
  924197:	62 52 85 48 b8 e5    	vfmadd231pd zmm12,zmm15,zmm13
  92419d:	62 71 fd 48 10 6a 07 	vmovupd zmm13,ZMMWORD PTR [rdx+0x1c0]
  9241a4:	62 b1 a5 48 59 fb    	vmulpd zmm7,zmm11,zmm19
  9241aa:	62 d2 bd 48 bc fd    	vfnmadd231pd zmm7,zmm8,zmm13
  9241b0:	62 31 bd 48 59 c3    	vmulpd zmm8,zmm8,zmm19
  9241b6:	62 71 fd 48 10 7a 0a 	vmovupd zmm15,ZMMWORD PTR [rdx+0x280]
  9241bd:	62 52 a5 48 b8 c5    	vfmadd231pd zmm8,zmm11,zmm13
  9241c3:	62 71 fd 48 10 5a 0b 	vmovupd zmm11,ZMMWORD PTR [rdx+0x2c0]
  9241ca:	62 51 d5 48 59 ef    	vmulpd zmm13,zmm5,zmm15
  9241d0:	62 52 dd 48 bc eb    	vfnmadd231pd zmm13,zmm4,zmm11
  9241d6:	62 51 dd 48 59 ff    	vmulpd zmm15,zmm4,zmm15
  9241dc:	62 a1 ed 48 58 da    	vaddpd zmm19,zmm2,zmm18
  9241e2:	62 52 d5 48 b8 fb    	vfmadd231pd zmm15,zmm5,zmm11
  9241e8:	62 b1 cd 48 58 e3    	vaddpd zmm4,zmm6,zmm19
  9241ee:	62 51 b5 48 59 de    	vmulpd zmm11,zmm9,zmm14
  9241f4:	62 32 ad 48 bc d8    	vfnmadd231pd zmm11,zmm10,zmm16
  9241fa:	62 51 ad 48 59 d6    	vmulpd zmm10,zmm10,zmm14
  924200:	62 51 95 48 58 f3    	vaddpd zmm14,zmm13,zmm11
  924206:	62 32 b5 48 b8 d0    	vfmadd231pd zmm10,zmm9,zmm16
  92420c:	62 d1 c5 48 58 ee    	vaddpd zmm5,zmm7,zmm14
  924212:	62 51 f5 40 58 cc    	vaddpd zmm9,zmm17,zmm12
  924218:	62 e2 fd 48 ac de    	vfnmadd213pd zmm19,zmm0,zmm6
  92421e:	62 f1 b5 48 58 f3    	vaddpd zmm6,zmm9,zmm3
  924224:	62 51 f5 40 5c e4    	vsubpd zmm12,zmm17,zmm12
  92422a:	62 c1 85 48 58 c2    	vaddpd zmm16,zmm15,zmm10
  924230:	62 d2 fd 48 bc fe    	vfnmadd231pd zmm7,zmm0,zmm14
  924236:	62 31 bd 48 58 f0    	vaddpd zmm14,zmm8,zmm16
  92423c:	62 71 9d 48 59 e1    	vmulpd zmm12,zmm12,zmm1
  924242:	62 51 85 48 5c d2    	vsubpd zmm10,zmm15,zmm10
  924248:	62 51 e5 40 58 fc    	vaddpd zmm15,zmm19,zmm12
  92424e:	62 71 ad 48 59 d1    	vmulpd zmm10,zmm10,zmm1
  924254:	62 72 fd 48 ac cb    	vfnmadd213pd zmm9,zmm0,zmm3
  92425a:	62 d1 c5 48 58 da    	vaddpd zmm3,zmm7,zmm10
  924260:	62 72 fd 40 bc c0    	vfnmadd231pd zmm8,zmm16,zmm0
  924266:	62 e1 85 48 5c c3    	vsubpd zmm16,zmm15,zmm3
  92426c:	c5 fd 28 05 8c 2a 75 	vmovapd ymm0,YMMWORD PTR [rip+0xffffffffff752a8c]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  924273:	ff 
  924274:	62 b1 ed 48 5c d2    	vsubpd zmm2,zmm2,zmm18
  92427a:	62 f1 ed 48 59 d1    	vmulpd zmm2,zmm2,zmm1
  924280:	62 e1 b5 48 5c ca    	vsubpd zmm17,zmm9,zmm2
  924286:	62 51 95 48 5c db    	vsubpd zmm11,zmm13,zmm11
  92428c:	62 71 a5 48 59 d9    	vmulpd zmm11,zmm11,zmm1
  924292:	62 51 bd 48 5c eb    	vsubpd zmm13,zmm8,zmm11
  924298:	62 d1 f5 40 5c cd    	vsubpd zmm1,zmm17,zmm13
  92429e:	62 51 e5 40 5c e4    	vsubpd zmm12,zmm19,zmm12
  9242a4:	62 e1 fd 48 28 d1    	vmovapd zmm18,zmm1
  9242aa:	62 a2 fd 48 7f d0    	vpermt2pd zmm18,zmm0,zmm16
  9242b0:	62 d1 c5 48 5c fa    	vsubpd zmm7,zmm7,zmm10
  9242b6:	62 71 9d 48 58 d7    	vaddpd zmm10,zmm12,zmm7
  9242bc:	62 d1 ed 48 58 d1    	vaddpd zmm2,zmm2,zmm9
  9242c2:	62 51 bd 48 58 c3    	vaddpd zmm8,zmm8,zmm11
  9242c8:	62 51 ed 48 58 c8    	vaddpd zmm9,zmm2,zmm8
  9242ce:	62 51 fd 48 28 d9    	vmovapd zmm11,zmm9
  9242d4:	62 52 fd 48 7f da    	vpermt2pd zmm11,zmm0,zmm10
  9242da:	62 f1 85 48 58 db    	vaddpd zmm3,zmm15,zmm3
  9242e0:	62 71 dd 48 5c fd    	vsubpd zmm15,zmm4,zmm5
  9242e6:	62 51 f5 40 58 ed    	vaddpd zmm13,zmm17,zmm13
  9242ec:	62 c1 cd 48 5c ce    	vsubpd zmm17,zmm6,zmm14
  9242f2:	62 f1 9d 48 5c ff    	vsubpd zmm7,zmm12,zmm7
  9242f8:	62 31 fd 48 28 e1    	vmovapd zmm12,zmm17
  9242fe:	62 52 fd 48 7f e7    	vpermt2pd zmm12,zmm0,zmm15
  924304:	62 d1 ed 48 5c d0    	vsubpd zmm2,zmm2,zmm8
  92430a:	62 51 fd 48 28 c5    	vmovapd zmm8,zmm13
  924310:	62 72 fd 48 7f c3    	vpermt2pd zmm8,zmm0,zmm3
  924316:	62 d1 cd 48 58 f6    	vaddpd zmm6,zmm6,zmm14
  92431c:	62 71 fd 48 28 f2    	vmovapd zmm14,zmm2
  924322:	62 72 fd 48 7f f7    	vpermt2pd zmm14,zmm0,zmm7
  924328:	62 f1 dd 48 58 e5    	vaddpd zmm4,zmm4,zmm5
  92432e:	62 f2 cd 48 77 c4    	vpermi2pd zmm0,zmm6,zmm4
  924334:	62 f1 fd 48 28 2d 82 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff75ca82]        # 80dc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe270>
  92433b:	ca 75 ff 
  92433e:	62 f2 d5 48 7f f4    	vpermt2pd zmm6,zmm5,zmm4
  924344:	62 b2 d5 48 7f c8    	vpermt2pd zmm1,zmm5,zmm16
  92434a:	62 52 d5 48 7f ca    	vpermt2pd zmm9,zmm5,zmm10
  924350:	62 c2 d5 48 7f cf    	vpermt2pd zmm17,zmm5,zmm15
  924356:	62 72 d5 48 7f eb    	vpermt2pd zmm13,zmm5,zmm3
  92435c:	62 f2 d5 48 7f d7    	vpermt2pd zmm2,zmm5,zmm7
  924362:	62 f1 fd 48 11 36    	vmovupd ZMMWORD PTR [rsi],zmm6
  924368:	c5 fd 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm0
  92436d:	62 f1 fd 48 11 8e 60 	vmovupd ZMMWORD PTR [rsi+0x60],zmm1
  924374:	00 00 00 
  924377:	62 e1 fd 28 11 56 05 	vmovupd YMMWORD PTR [rsi+0xa0],ymm18
  92437e:	62 71 fd 48 11 4e 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm9
  924385:	c5 7d 11 9e 00 01 00 	vmovupd YMMWORD PTR [rsi+0x100],ymm11
  92438c:	00 
  92438d:	62 e1 fd 48 11 8e 20 	vmovupd ZMMWORD PTR [rsi+0x120],zmm17
  924394:	01 00 00 
  924397:	c5 7d 11 a6 60 01 00 	vmovupd YMMWORD PTR [rsi+0x160],ymm12
  92439e:	00 
  92439f:	62 71 fd 48 11 6e 06 	vmovupd ZMMWORD PTR [rsi+0x180],zmm13
  9243a6:	c5 7d 11 86 c0 01 00 	vmovupd YMMWORD PTR [rsi+0x1c0],ymm8
  9243ad:	00 
  9243ae:	62 f1 fd 48 11 96 e0 	vmovupd ZMMWORD PTR [rsi+0x1e0],zmm2
  9243b5:	01 00 00 
  9243b8:	c5 7d 11 b6 20 02 00 	vmovupd YMMWORD PTR [rsi+0x220],ymm14
  9243bf:	00 
  9243c0:	c5 f8 77             	vzeroupper
  9243c3:	c3                   	ret
