
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000916e40 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  916e40:	62 f1 fd 48 10 07    	vmovupd zmm0,ZMMWORD PTR [rdi]
  916e46:	c5 fd 10 4f 40       	vmovupd ymm1,YMMWORD PTR [rdi+0x40]
  916e4b:	62 f1 fd 48 28 15 6b 	vmovapd zmm2,ZMMWORD PTR [rip+0xffffffffff768e6b]        # 7fcc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd170>
  916e52:	8e 76 ff 
  916e55:	62 f1 fd 48 28 e8    	vmovapd zmm5,zmm0
  916e5b:	62 f2 ed 48 7f e9    	vpermt2pd zmm5,zmm2,zmm1
  916e61:	62 f1 fd 48 28 25 95 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff768e95]        # 7fd00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd1b0>
  916e68:	8e 76 ff 
  916e6b:	62 f2 dd 48 7f c1    	vpermt2pd zmm0,zmm4,zmm1
  916e71:	62 f1 fd 48 10 b7 60 	vmovupd zmm6,ZMMWORD PTR [rdi+0x60]
  916e78:	00 00 00 
  916e7b:	c5 fd 10 8f a0 00 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xa0]
  916e82:	00 
  916e83:	62 f1 fd 48 28 fe    	vmovapd zmm7,zmm6
  916e89:	62 f2 ed 48 7f f9    	vpermt2pd zmm7,zmm2,zmm1
  916e8f:	62 f2 dd 48 7f f1    	vpermt2pd zmm6,zmm4,zmm1
  916e95:	62 71 fd 48 10 47 03 	vmovupd zmm8,ZMMWORD PTR [rdi+0xc0]
  916e9c:	c5 fd 10 8f 00 01 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x100]
  916ea3:	00 
  916ea4:	62 d1 fd 48 28 d8    	vmovapd zmm3,zmm8
  916eaa:	62 f2 ed 48 7f d9    	vpermt2pd zmm3,zmm2,zmm1
  916eb0:	62 72 dd 48 7f c1    	vpermt2pd zmm8,zmm4,zmm1
  916eb6:	62 71 fd 48 10 8f 20 	vmovupd zmm9,ZMMWORD PTR [rdi+0x120]
  916ebd:	01 00 00 
  916ec0:	c5 fd 10 8f 60 01 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x160]
  916ec7:	00 
  916ec8:	62 51 fd 48 28 d1    	vmovapd zmm10,zmm9
  916ece:	62 72 ed 48 7f d1    	vpermt2pd zmm10,zmm2,zmm1
  916ed4:	62 72 dd 48 7f c9    	vpermt2pd zmm9,zmm4,zmm1
  916eda:	62 71 fd 48 10 5f 06 	vmovupd zmm11,ZMMWORD PTR [rdi+0x180]
  916ee1:	c5 fd 10 8f c0 01 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x1c0]
  916ee8:	00 
  916ee9:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  916eef:	62 72 ed 48 7f e1    	vpermt2pd zmm12,zmm2,zmm1
  916ef5:	62 72 dd 48 7f d9    	vpermt2pd zmm11,zmm4,zmm1
  916efb:	62 71 fd 48 10 af e0 	vmovupd zmm13,ZMMWORD PTR [rdi+0x1e0]
  916f02:	01 00 00 
  916f05:	c5 fd 10 8f 20 02 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x220]
  916f0c:	00 
  916f0d:	62 51 fd 48 28 f5    	vmovapd zmm14,zmm13
  916f13:	62 72 ed 48 7f f1    	vpermt2pd zmm14,zmm2,zmm1
  916f19:	62 72 dd 48 7f e9    	vpermt2pd zmm13,zmm4,zmm1
  916f1f:	62 71 fd 48 10 7f 09 	vmovupd zmm15,ZMMWORD PTR [rdi+0x240]
  916f26:	c5 fd 10 8f 80 02 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x280]
  916f2d:	00 
  916f2e:	62 c1 fd 48 28 c7    	vmovapd zmm16,zmm15
  916f34:	62 e2 ed 48 7f c1    	vpermt2pd zmm16,zmm2,zmm1
  916f3a:	62 72 dd 48 7f f9    	vpermt2pd zmm15,zmm4,zmm1
  916f40:	62 e1 fd 48 10 8f a0 	vmovupd zmm17,ZMMWORD PTR [rdi+0x2a0]
  916f47:	02 00 00 
  916f4a:	c5 fd 10 8f e0 02 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x2e0]
  916f51:	00 
  916f52:	62 f2 f5 40 77 d1    	vpermi2pd zmm2,zmm17,zmm1
  916f58:	62 e2 dd 48 7f c9    	vpermt2pd zmm17,zmm4,zmm1
  916f5e:	62 c1 d5 48 58 d4    	vaddpd zmm18,zmm5,zmm12
  916f64:	62 a1 e5 48 58 d8    	vaddpd zmm19,zmm3,zmm16
  916f6a:	62 a1 ed 40 58 e3    	vaddpd zmm20,zmm18,zmm19
  916f70:	62 c1 c5 48 58 ee    	vaddpd zmm21,zmm7,zmm14
  916f76:	62 e1 ad 48 58 f2    	vaddpd zmm22,zmm10,zmm2
  916f7c:	62 a1 d5 40 58 fe    	vaddpd zmm23,zmm21,zmm22
  916f82:	62 b1 dd 40 58 e7    	vaddpd zmm4,zmm20,zmm23
  916f88:	62 41 fd 48 58 c3    	vaddpd zmm24,zmm0,zmm11
  916f8e:	62 41 bd 48 58 cf    	vaddpd zmm25,zmm8,zmm15
  916f94:	62 01 bd 40 58 d1    	vaddpd zmm26,zmm24,zmm25
  916f9a:	62 41 cd 48 58 dd    	vaddpd zmm27,zmm6,zmm13
  916fa0:	62 21 b5 48 58 e1    	vaddpd zmm28,zmm9,zmm17
  916fa6:	62 01 a5 40 58 ec    	vaddpd zmm29,zmm27,zmm28
  916fac:	62 91 ad 40 58 cd    	vaddpd zmm1,zmm26,zmm29
  916fb2:	62 d1 d5 48 5c ec    	vsubpd zmm5,zmm5,zmm12
  916fb8:	62 51 bd 48 5c c7    	vsubpd zmm8,zmm8,zmm15
  916fbe:	62 51 d5 48 58 e0    	vaddpd zmm12,zmm5,zmm8
  916fc4:	62 d1 c5 48 5c fe    	vsubpd zmm7,zmm7,zmm14
  916fca:	62 51 cd 48 5c ed    	vsubpd zmm13,zmm6,zmm13
  916fd0:	62 72 fd 48 19 35 c6 	vbroadcastsd zmm14,QWORD PTR [rip+0xffffffffff75dec6]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  916fd7:	de 75 ff 
  916fda:	62 d1 c5 48 58 f5    	vaddpd zmm6,zmm7,zmm13
  916fe0:	62 51 cd 48 59 fe    	vmulpd zmm15,zmm6,zmm14
  916fe6:	62 31 b5 48 5c c9    	vsubpd zmm9,zmm9,zmm17
  916fec:	62 f1 ad 48 5c d2    	vsubpd zmm2,zmm10,zmm2
  916ff2:	62 f1 b5 48 5c f2    	vsubpd zmm6,zmm9,zmm2
  916ff8:	62 51 cd 48 59 d6    	vmulpd zmm10,zmm6,zmm14
  916ffe:	62 c1 85 48 58 ca    	vaddpd zmm17,zmm15,zmm10
  917004:	62 b1 9d 48 58 f1    	vaddpd zmm6,zmm12,zmm17
  91700a:	62 d1 fd 48 5c c3    	vsubpd zmm0,zmm0,zmm11
  917010:	62 71 fd 40 5c db    	vsubpd zmm11,zmm16,zmm3
  917016:	62 e1 a5 48 58 c0    	vaddpd zmm16,zmm11,zmm0
  91701c:	62 f1 95 48 5c df    	vsubpd zmm3,zmm13,zmm7
  917022:	62 51 e5 48 59 ee    	vmulpd zmm13,zmm3,zmm14
  917028:	62 d1 ed 48 58 d1    	vaddpd zmm2,zmm2,zmm9
  91702e:	62 d1 ed 48 59 d6    	vmulpd zmm2,zmm2,zmm14
  917034:	62 71 95 48 5c ca    	vsubpd zmm9,zmm13,zmm2
  91703a:	62 d1 fd 40 58 d9    	vaddpd zmm3,zmm16,zmm9
  917040:	62 31 ed 40 5c f3    	vsubpd zmm14,zmm18,zmm19
  917046:	62 81 a5 40 5c d4    	vsubpd zmm18,zmm27,zmm28
  91704c:	62 a1 8d 48 58 da    	vaddpd zmm19,zmm14,zmm18
  917052:	62 01 bd 40 5c c1    	vsubpd zmm24,zmm24,zmm25
  917058:	62 a1 cd 40 5c ed    	vsubpd zmm21,zmm22,zmm21
  91705e:	62 91 d5 40 58 f8    	vaddpd zmm7,zmm21,zmm24
  917064:	62 d1 d5 48 5c e8    	vsubpd zmm5,zmm5,zmm8
  91706a:	62 f1 95 48 58 d2    	vaddpd zmm2,zmm13,zmm2
  917070:	62 71 d5 48 58 ea    	vaddpd zmm13,zmm5,zmm2
  917076:	62 d1 fd 48 5c c3    	vsubpd zmm0,zmm0,zmm11
  91707c:	62 51 ad 48 5c d7    	vsubpd zmm10,zmm10,zmm15
  917082:	62 51 fd 48 58 c2    	vaddpd zmm8,zmm0,zmm10
  917088:	62 31 dd 40 5c df    	vsubpd zmm11,zmm20,zmm23
  91708e:	62 11 ad 40 5c fd    	vsubpd zmm15,zmm26,zmm29
  917094:	62 31 9d 48 5c e1    	vsubpd zmm12,zmm12,zmm17
  91709a:	62 51 fd 40 5c c9    	vsubpd zmm9,zmm16,zmm9
  9170a0:	62 31 8d 48 5c f2    	vsubpd zmm14,zmm14,zmm18
  9170a6:	62 a1 bd 40 5c c5    	vsubpd zmm16,zmm24,zmm21
  9170ac:	62 f1 d5 48 5c d2    	vsubpd zmm2,zmm5,zmm2
  9170b2:	62 51 fd 48 5c d2    	vsubpd zmm10,zmm0,zmm10
  9170b8:	62 e1 fd 48 10 0d a6 	vmovupd zmm17,ZMMWORD PTR [rip+0xffffffffff7afca6]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  9170bf:	fc 7a ff 
  9170c2:	62 e1 fd 48 28 d4    	vmovapd zmm18,zmm4
  9170c8:	62 c2 f5 40 7f d3    	vpermt2pd zmm18,zmm17,zmm11
  9170ce:	62 e1 fd 48 10 25 d0 	vmovupd zmm20,ZMMWORD PTR [rip+0xffffffffff7afcd0]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  9170d5:	fc 7a ff 
  9170d8:	62 d2 dd 40 7f e3    	vpermt2pd zmm4,zmm20,zmm11
  9170de:	62 71 fd 48 28 de    	vmovapd zmm11,zmm6
  9170e4:	62 52 f5 40 7f dc    	vpermt2pd zmm11,zmm17,zmm12
  9170ea:	62 d2 dd 40 7f f4    	vpermt2pd zmm6,zmm20,zmm12
  9170f0:	62 b1 fd 48 28 c3    	vmovapd zmm0,zmm19
  9170f6:	62 d2 f5 40 7f c6    	vpermt2pd zmm0,zmm17,zmm14
  9170fc:	62 c2 dd 40 7f de    	vpermt2pd zmm19,zmm20,zmm14
  917102:	62 d1 fd 48 28 ed    	vmovapd zmm5,zmm13
  917108:	62 f2 f5 40 7f ea    	vpermt2pd zmm5,zmm17,zmm2
  91710e:	62 72 dd 40 7f ea    	vpermt2pd zmm13,zmm20,zmm2
  917114:	62 71 fd 48 10 25 ca 	vmovupd zmm12,ZMMWORD PTR [rip+0xffffffffff7afbca]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  91711b:	fb 7a ff 
  91711e:	62 b1 fd 48 28 d2    	vmovapd zmm2,zmm18
  917124:	62 f2 9d 48 7f d0    	vpermt2pd zmm2,zmm12,zmm0
  91712a:	62 71 fd 48 10 35 f4 	vmovupd zmm14,ZMMWORD PTR [rip+0xffffffffff7afbf4]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  917131:	fb 7a ff 
  917134:	62 e2 8d 48 7f d0    	vpermt2pd zmm18,zmm14,zmm0
  91713a:	62 c1 fd 48 28 eb    	vmovapd zmm21,zmm11
  917140:	62 e2 9d 48 7f ed    	vpermt2pd zmm21,zmm12,zmm5
  917146:	62 72 8d 48 7f dd    	vpermt2pd zmm11,zmm14,zmm5
  91714c:	62 b2 9d 48 7f e3    	vpermt2pd zmm4,zmm12,zmm19
  917152:	62 d2 9d 48 7f f5    	vpermt2pd zmm6,zmm12,zmm13
  917158:	62 b1 ed 48 14 c5    	vunpcklpd zmm0,zmm2,zmm21
  91715e:	62 b1 ed 48 15 ed    	vunpckhpd zmm5,zmm2,zmm21
  917164:	62 51 ed 40 14 eb    	vunpcklpd zmm13,zmm18,zmm11
  91716a:	62 d1 ed 40 15 d3    	vunpckhpd zmm2,zmm18,zmm11
  917170:	62 71 dd 48 14 de    	vunpcklpd zmm11,zmm4,zmm6
  917176:	62 f1 dd 48 15 f6    	vunpckhpd zmm6,zmm4,zmm6
  91717c:	62 e1 fd 48 28 d1    	vmovapd zmm18,zmm1
  917182:	62 c2 f5 40 7f d7    	vpermt2pd zmm18,zmm17,zmm15
  917188:	62 d2 dd 40 7f cf    	vpermt2pd zmm1,zmm20,zmm15
  91718e:	62 71 fd 48 28 fb    	vmovapd zmm15,zmm3
  917194:	62 52 f5 40 7f f9    	vpermt2pd zmm15,zmm17,zmm9
  91719a:	62 d2 dd 40 7f d9    	vpermt2pd zmm3,zmm20,zmm9
  9171a0:	62 f1 fd 48 28 e7    	vmovapd zmm4,zmm7
  9171a6:	62 b2 f5 40 7f e0    	vpermt2pd zmm4,zmm17,zmm16
  9171ac:	62 b2 dd 40 7f f8    	vpermt2pd zmm7,zmm20,zmm16
  9171b2:	62 c2 bd 48 77 ca    	vpermi2pd zmm17,zmm8,zmm10
  9171b8:	62 52 dd 40 7f c2    	vpermt2pd zmm8,zmm20,zmm10
  9171be:	62 31 fd 48 28 ca    	vmovapd zmm9,zmm18
  9171c4:	62 72 9d 48 7f cc    	vpermt2pd zmm9,zmm12,zmm4
  9171ca:	62 e2 8d 48 7f d4    	vpermt2pd zmm18,zmm14,zmm4
  9171d0:	62 51 fd 48 28 d7    	vmovapd zmm10,zmm15
  9171d6:	62 32 9d 48 7f d1    	vpermt2pd zmm10,zmm12,zmm17
  9171dc:	62 32 8d 48 7f f9    	vpermt2pd zmm15,zmm14,zmm17
  9171e2:	62 f2 9d 48 7f cf    	vpermt2pd zmm1,zmm12,zmm7
  9171e8:	62 d2 9d 48 7f d8    	vpermt2pd zmm3,zmm12,zmm8
  9171ee:	62 d1 b5 48 14 e2    	vunpcklpd zmm4,zmm9,zmm10
  9171f4:	62 51 b5 48 15 c2    	vunpckhpd zmm8,zmm9,zmm10
  9171fa:	62 51 ed 40 14 cf    	vunpcklpd zmm9,zmm18,zmm15
  917200:	62 d1 ed 40 15 ff    	vunpckhpd zmm7,zmm18,zmm15
  917206:	62 71 f5 48 14 d3    	vunpcklpd zmm10,zmm1,zmm3
  91720c:	62 f1 f5 48 15 cb    	vunpckhpd zmm1,zmm1,zmm3
  917212:	62 f1 fd 48 10 5a 02 	vmovupd zmm3,ZMMWORD PTR [rdx+0x80]
  917219:	62 71 fd 48 10 62 03 	vmovupd zmm12,ZMMWORD PTR [rdx+0xc0]
  917220:	62 71 fd 48 10 72 04 	vmovupd zmm14,ZMMWORD PTR [rdx+0x100]
  917227:	62 71 fd 48 10 7a 05 	vmovupd zmm15,ZMMWORD PTR [rdx+0x140]
  91722e:	62 c1 95 48 59 c6    	vmulpd zmm16,zmm13,zmm14
  917234:	62 c2 b5 48 bc c7    	vfnmadd231pd zmm16,zmm9,zmm15
  91723a:	62 e1 fd 48 10 4a 09 	vmovupd zmm17,ZMMWORD PTR [rdx+0x240]
  917241:	62 e1 fd 48 10 52 08 	vmovupd zmm18,ZMMWORD PTR [rdx+0x200]
  917248:	62 a1 a5 48 59 da    	vmulpd zmm19,zmm11,zmm18
  91724e:	62 a2 ad 48 bc d9    	vfnmadd231pd zmm19,zmm10,zmm17
  917254:	62 e2 fd 48 19 25 c2 	vbroadcastsd zmm20,QWORD PTR [rip+0xffffffffff75d9c2]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  91725b:	d9 75 ff 
  91725e:	62 a1 fd 40 5c eb    	vsubpd zmm21,zmm16,zmm19
  917264:	62 a1 d5 40 59 ec    	vmulpd zmm21,zmm21,zmm20
  91726a:	62 51 b5 48 59 ce    	vmulpd zmm9,zmm9,zmm14
  917270:	62 52 95 48 b8 cf    	vfmadd231pd zmm9,zmm13,zmm15
  917276:	62 31 ad 48 59 d2    	vmulpd zmm10,zmm10,zmm18
  91727c:	62 32 a5 48 b8 d1    	vfmadd231pd zmm10,zmm11,zmm17
  917282:	62 72 fd 48 19 1d 0c 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff75d80c]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  917289:	d8 75 ff 
  91728c:	62 51 b5 48 58 ea    	vaddpd zmm13,zmm9,zmm10
  917292:	62 51 fd 48 28 f3    	vmovapd zmm14,zmm11
  917298:	62 72 95 48 ac f4    	vfnmadd213pd zmm14,zmm13,zmm4
  91729e:	62 51 d5 40 58 fe    	vaddpd zmm15,zmm21,zmm14
  9172a4:	62 e1 fd 48 10 4a 0b 	vmovupd zmm17,ZMMWORD PTR [rdx+0x2c0]
  9172ab:	62 e1 fd 48 10 52 0a 	vmovupd zmm18,ZMMWORD PTR [rdx+0x280]
  9172b2:	62 a1 f5 48 59 f2    	vmulpd zmm22,zmm1,zmm18
  9172b8:	62 a2 cd 48 b8 f1    	vfmadd231pd zmm22,zmm6,zmm17
  9172be:	62 e1 bd 48 59 fb    	vmulpd zmm23,zmm8,zmm3
  9172c4:	62 c2 d5 48 b8 fc    	vfmadd231pd zmm23,zmm5,zmm12
  9172ca:	62 21 cd 40 58 c7    	vaddpd zmm24,zmm22,zmm23
  9172d0:	62 61 fd 48 10 4a 07 	vmovupd zmm25,ZMMWORD PTR [rdx+0x1c0]
  9172d7:	62 61 fd 48 10 52 06 	vmovupd zmm26,ZMMWORD PTR [rdx+0x180]
  9172de:	62 01 c5 48 59 da    	vmulpd zmm27,zmm7,zmm26
  9172e4:	62 02 ed 48 b8 d9    	vfmadd231pd zmm27,zmm2,zmm25
  9172ea:	62 41 fd 48 28 e3    	vmovapd zmm28,zmm11
  9172f0:	62 02 bd 40 ac e3    	vfnmadd213pd zmm28,zmm24,zmm27
  9172f6:	62 b1 cd 48 59 f2    	vmulpd zmm6,zmm6,zmm18
  9172fc:	62 b2 f5 48 bc f1    	vfnmadd231pd zmm6,zmm1,zmm17
  917302:	62 f1 d5 48 59 db    	vmulpd zmm3,zmm5,zmm3
  917308:	62 d2 bd 48 bc dc    	vfnmadd231pd zmm3,zmm8,zmm12
  91730e:	62 f1 cd 48 5c cb    	vsubpd zmm1,zmm6,zmm3
  917314:	62 b1 f5 48 59 ec    	vmulpd zmm5,zmm1,zmm20
  91731a:	62 71 9d 40 58 c5    	vaddpd zmm8,zmm28,zmm5
  917320:	62 d1 85 48 5c c8    	vsubpd zmm1,zmm15,zmm8
  917326:	62 31 fd 40 58 e3    	vaddpd zmm12,zmm16,zmm19
  91732c:	62 c1 fd 48 28 c3    	vmovapd zmm16,zmm11
  917332:	62 e2 9d 48 ac c0    	vfnmadd213pd zmm16,zmm12,zmm0
  917338:	62 51 b5 48 5c ca    	vsubpd zmm9,zmm9,zmm10
  91733e:	62 31 b5 48 59 cc    	vmulpd zmm9,zmm9,zmm20
  917344:	62 51 fd 40 5c d1    	vsubpd zmm10,zmm16,zmm9
  91734a:	62 f1 cd 48 58 db    	vaddpd zmm3,zmm6,zmm3
  917350:	62 91 ed 48 59 d2    	vmulpd zmm2,zmm2,zmm26
  917356:	62 92 c5 48 bc d1    	vfnmadd231pd zmm2,zmm7,zmm25
  91735c:	62 72 e5 48 ac da    	vfnmadd213pd zmm11,zmm3,zmm2
  917362:	62 b1 cd 40 5c f7    	vsubpd zmm6,zmm22,zmm23
  917368:	62 b1 cd 48 59 f4    	vmulpd zmm6,zmm6,zmm20
  91736e:	62 f1 a5 48 5c fe    	vsubpd zmm7,zmm11,zmm6
  917374:	62 e1 ad 48 5c cf    	vsubpd zmm17,zmm10,zmm7
  91737a:	62 31 8d 48 5c f5    	vsubpd zmm14,zmm14,zmm21
  917380:	62 f1 9d 40 5c ed    	vsubpd zmm5,zmm28,zmm5
  917386:	62 e1 8d 48 58 d5    	vaddpd zmm18,zmm14,zmm5
  91738c:	62 51 fd 40 58 c9    	vaddpd zmm9,zmm16,zmm9
  917392:	62 f1 a5 48 58 f6    	vaddpd zmm6,zmm11,zmm6
  917398:	62 71 b5 48 58 de    	vaddpd zmm11,zmm9,zmm6
  91739e:	62 f1 95 48 58 e4    	vaddpd zmm4,zmm13,zmm4
  9173a4:	62 11 a5 40 58 e8    	vaddpd zmm13,zmm27,zmm24
  9173aa:	62 c1 dd 48 5c c5    	vsubpd zmm16,zmm4,zmm13
  9173b0:	62 d1 fd 48 58 c4    	vaddpd zmm0,zmm0,zmm12
  9173b6:	62 f1 ed 48 58 d3    	vaddpd zmm2,zmm2,zmm3
  9173bc:	62 f1 fd 48 5c da    	vsubpd zmm3,zmm0,zmm2
  9173c2:	62 51 85 48 58 c0    	vaddpd zmm8,zmm15,zmm8
  9173c8:	62 f1 ad 48 58 ff    	vaddpd zmm7,zmm10,zmm7
  9173ce:	62 f1 8d 48 5c ed    	vsubpd zmm5,zmm14,zmm5
  9173d4:	62 f1 b5 48 5c f6    	vsubpd zmm6,zmm9,zmm6
  9173da:	62 d1 dd 48 58 e5    	vaddpd zmm4,zmm4,zmm13
  9173e0:	62 f1 fd 48 58 c2    	vaddpd zmm0,zmm0,zmm2
  9173e6:	62 f1 fd 48 28 15 50 	vmovapd zmm2,ZMMWORD PTR [rip+0xffffffffff768950]        # 7fd40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd1f0>
  9173ed:	89 76 ff 
  9173f0:	62 71 fd 48 28 c8    	vmovapd zmm9,zmm0
  9173f6:	62 72 ed 48 7f cc    	vpermt2pd zmm9,zmm2,zmm4
  9173fc:	62 71 fd 48 28 15 7a 	vmovapd zmm10,ZMMWORD PTR [rip+0xffffffffff76897a]        # 7fd80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd230>
  917403:	89 76 ff 
  917406:	62 f2 ad 48 7f c4    	vpermt2pd zmm0,zmm10,zmm4
  91740c:	62 f1 fd 48 11 06    	vmovupd ZMMWORD PTR [rsi],zmm0
  917412:	62 71 fd 48 11 4e 01 	vmovupd ZMMWORD PTR [rsi+0x40],zmm9
  917419:	62 f1 fd 48 28 c6    	vmovapd zmm0,zmm6
  91741f:	62 f2 ed 48 7f c5    	vpermt2pd zmm0,zmm2,zmm5
  917425:	62 f2 ad 48 7f f5    	vpermt2pd zmm6,zmm10,zmm5
  91742b:	62 f1 fd 48 11 76 02 	vmovupd ZMMWORD PTR [rsi+0x80],zmm6
  917432:	62 f1 fd 48 11 46 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm0
  917439:	62 f1 fd 48 28 c7    	vmovapd zmm0,zmm7
  91743f:	62 d2 ed 48 7f c0    	vpermt2pd zmm0,zmm2,zmm8
  917445:	62 d2 ad 48 7f f8    	vpermt2pd zmm7,zmm10,zmm8
  91744b:	62 f1 fd 48 11 7e 04 	vmovupd ZMMWORD PTR [rsi+0x100],zmm7
  917452:	62 f1 fd 48 11 46 05 	vmovupd ZMMWORD PTR [rsi+0x140],zmm0
  917459:	62 f1 fd 48 28 c3    	vmovapd zmm0,zmm3
  91745f:	62 b2 ed 48 7f c0    	vpermt2pd zmm0,zmm2,zmm16
  917465:	62 b2 ad 48 7f d8    	vpermt2pd zmm3,zmm10,zmm16
  91746b:	62 f1 fd 48 11 5e 06 	vmovupd ZMMWORD PTR [rsi+0x180],zmm3
  917472:	62 f1 fd 48 11 46 07 	vmovupd ZMMWORD PTR [rsi+0x1c0],zmm0
  917479:	62 d1 fd 48 28 c3    	vmovapd zmm0,zmm11
  91747f:	62 b2 ed 48 7f c2    	vpermt2pd zmm0,zmm2,zmm18
  917485:	62 32 ad 48 7f da    	vpermt2pd zmm11,zmm10,zmm18
  91748b:	62 71 fd 48 11 5e 08 	vmovupd ZMMWORD PTR [rsi+0x200],zmm11
  917492:	62 f1 fd 48 11 46 09 	vmovupd ZMMWORD PTR [rsi+0x240],zmm0
  917499:	62 f2 f5 40 77 d1    	vpermi2pd zmm2,zmm17,zmm1
  91749f:	62 e2 ad 48 7f c9    	vpermt2pd zmm17,zmm10,zmm1
  9174a5:	62 e1 fd 48 11 4e 0a 	vmovupd ZMMWORD PTR [rsi+0x280],zmm17
  9174ac:	62 f1 fd 48 11 56 0b 	vmovupd ZMMWORD PTR [rsi+0x2c0],zmm2
  9174b3:	c5 f8 77             	vzeroupper
  9174b6:	c3                   	ret
