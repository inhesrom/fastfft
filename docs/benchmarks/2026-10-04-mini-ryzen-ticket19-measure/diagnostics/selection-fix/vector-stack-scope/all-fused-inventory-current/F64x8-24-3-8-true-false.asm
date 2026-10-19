
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000094ab40 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  94ab40:	62 f1 fd 48 28 05 b6 	vmovapd zmm0,ZMMWORD PTR [rip+0xffffffffff7394b6]        # 84000 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x114b0>
  94ab47:	94 73 ff 
  94ab4a:	62 f1 fd 48 10 0f    	vmovupd zmm1,ZMMWORD PTR [rdi]
  94ab50:	62 f1 fd 48 10 57 01 	vmovupd zmm2,ZMMWORD PTR [rdi+0x40]
  94ab57:	62 f1 fd 48 10 5f 02 	vmovupd zmm3,ZMMWORD PTR [rdi+0x80]
  94ab5e:	62 f1 fd 48 10 67 03 	vmovupd zmm4,ZMMWORD PTR [rdi+0xc0]
  94ab65:	62 f1 fd 48 28 e9    	vmovapd zmm5,zmm1
  94ab6b:	62 f2 fd 48 7f ea    	vpermt2pd zmm5,zmm0,zmm2
  94ab71:	62 f1 fd 48 28 35 c5 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff7394c5]        # 84040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x114f0>
  94ab78:	94 73 ff 
  94ab7b:	62 f2 cd 48 7f ca    	vpermt2pd zmm1,zmm6,zmm2
  94ab81:	62 f1 fd 48 28 d3    	vmovapd zmm2,zmm3
  94ab87:	62 f2 fd 48 7f d4    	vpermt2pd zmm2,zmm0,zmm4
  94ab8d:	62 f2 cd 48 7f dc    	vpermt2pd zmm3,zmm6,zmm4
  94ab93:	62 f1 fd 48 10 67 04 	vmovupd zmm4,ZMMWORD PTR [rdi+0x100]
  94ab9a:	62 f1 fd 48 10 7f 05 	vmovupd zmm7,ZMMWORD PTR [rdi+0x140]
  94aba1:	62 f2 dd 48 77 c7    	vpermi2pd zmm0,zmm4,zmm7
  94aba7:	62 f2 cd 48 7f e7    	vpermt2pd zmm4,zmm6,zmm7
  94abad:	62 f1 e5 48 58 f4    	vaddpd zmm6,zmm3,zmm4
  94abb3:	62 f1 f5 48 58 fe    	vaddpd zmm7,zmm1,zmm6
  94abb9:	62 71 ed 48 58 c0    	vaddpd zmm8,zmm2,zmm0
  94abbf:	62 51 d5 48 58 c8    	vaddpd zmm9,zmm5,zmm8
  94abc5:	62 72 fd 48 19 15 c9 	vbroadcastsd zmm10,QWORD PTR [rip+0xffffffffff729ec9]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  94abcc:	9e 72 ff 
  94abcf:	62 f2 ad 48 bc ce    	vfnmadd231pd zmm1,zmm10,zmm6
  94abd5:	62 f1 ed 48 5c c0    	vsubpd zmm0,zmm2,zmm0
  94abdb:	62 f2 fd 48 19 15 3b 	vbroadcastsd zmm2,QWORD PTR [rip+0xffffffffff72a03b]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  94abe2:	a0 72 ff 
  94abe5:	62 f1 fd 48 59 c2    	vmulpd zmm0,zmm0,zmm2
  94abeb:	62 71 f5 48 58 e0    	vaddpd zmm12,zmm1,zmm0
  94abf1:	62 d2 bd 48 bc ea    	vfnmadd231pd zmm5,zmm8,zmm10
  94abf7:	62 f1 e5 48 5c dc    	vsubpd zmm3,zmm3,zmm4
  94abfd:	62 f1 e5 48 59 d2    	vmulpd zmm2,zmm3,zmm2
  94ac03:	62 71 d5 48 5c f2    	vsubpd zmm14,zmm5,zmm2
  94ac09:	62 f1 f5 48 5c d8    	vsubpd zmm3,zmm1,zmm0
  94ac0f:	62 71 ed 48 58 dd    	vaddpd zmm11,zmm2,zmm5
  94ac15:	62 71 fd 48 10 3d 49 	vmovupd zmm15,ZMMWORD PTR [rip+0xffffffffff77c149]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  94ac1c:	c1 77 ff 
  94ac1f:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  94ac23:	62 f1 fd 48 28 d7    	vmovapd zmm2,zmm7
  94ac29:	62 f2 85 48 7f d4    	vpermt2pd zmm2,zmm15,zmm4
  94ac2f:	62 e1 fd 48 10 05 6f 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff77c16f]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  94ac36:	c1 77 ff 
  94ac39:	62 f2 fd 40 7f fc    	vpermt2pd zmm7,zmm16,zmm4
  94ac3f:	62 d1 fd 48 28 ec    	vmovapd zmm5,zmm12
  94ac45:	62 f2 85 48 7f ec    	vpermt2pd zmm5,zmm15,zmm4
  94ac4b:	62 72 fd 40 7f e4    	vpermt2pd zmm12,zmm16,zmm4
  94ac51:	62 f1 fd 48 28 cb    	vmovapd zmm1,zmm3
  94ac57:	62 f2 85 48 7f cc    	vpermt2pd zmm1,zmm15,zmm4
  94ac5d:	62 f2 fd 40 7f dc    	vpermt2pd zmm3,zmm16,zmm4
  94ac63:	62 a1 f5 00 57 c9    	vxorpd xmm17,xmm17,xmm17
  94ac69:	62 a2 85 48 7f c9    	vpermt2pd zmm17,zmm15,zmm17
  94ac6f:	62 a1 ed 00 57 d2    	vxorpd xmm18,xmm18,xmm18
  94ac75:	62 a2 fd 40 7f d2    	vpermt2pd zmm18,zmm16,zmm18
  94ac7b:	62 e1 fd 48 10 1d 63 	vmovupd zmm19,ZMMWORD PTR [rip+0xffffffffff77c063]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  94ac82:	c0 77 ff 
  94ac85:	62 f1 fd 48 28 c2    	vmovapd zmm0,zmm2
  94ac8b:	62 f2 e5 40 7f c1    	vpermt2pd zmm0,zmm19,zmm1
  94ac91:	62 e1 fd 48 10 25 8d 	vmovupd zmm20,ZMMWORD PTR [rip+0xffffffffff77c08d]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  94ac98:	c0 77 ff 
  94ac9b:	62 f2 dd 40 7f d1    	vpermt2pd zmm2,zmm20,zmm1
  94aca1:	62 f1 fd 48 28 cd    	vmovapd zmm1,zmm5
  94aca7:	62 b2 e5 40 7f c9    	vpermt2pd zmm1,zmm19,zmm17
  94acad:	62 b2 dd 40 7f e9    	vpermt2pd zmm5,zmm20,zmm17
  94acb3:	62 71 fd 48 28 c7    	vmovapd zmm8,zmm7
  94acb9:	62 72 e5 40 7f c3    	vpermt2pd zmm8,zmm19,zmm3
  94acbf:	62 f2 dd 40 7f fb    	vpermt2pd zmm7,zmm20,zmm3
  94acc5:	62 c1 fd 48 28 ec    	vmovapd zmm21,zmm12
  94accb:	62 a2 e5 40 7f ea    	vpermt2pd zmm21,zmm19,zmm18
  94acd1:	62 32 dd 40 7f e2    	vpermt2pd zmm12,zmm20,zmm18
  94acd7:	62 f1 fd 48 15 f1    	vunpckhpd zmm6,zmm0,zmm1
  94acdd:	62 71 ed 48 14 d5    	vunpcklpd zmm10,zmm2,zmm5
  94ace3:	62 f1 ed 48 15 dd    	vunpckhpd zmm3,zmm2,zmm5
  94ace9:	62 31 bd 48 14 ed    	vunpcklpd zmm13,zmm8,zmm21
  94acef:	62 b1 bd 48 15 ed    	vunpckhpd zmm5,zmm8,zmm21
  94acf5:	62 51 c5 48 14 c4    	vunpcklpd zmm8,zmm7,zmm12
  94acfb:	62 d1 c5 48 15 d4    	vunpckhpd zmm2,zmm7,zmm12
  94ad01:	62 51 fd 48 28 e1    	vmovapd zmm12,zmm9
  94ad07:	62 72 85 48 7f e4    	vpermt2pd zmm12,zmm15,zmm4
  94ad0d:	62 72 fd 40 7f cc    	vpermt2pd zmm9,zmm16,zmm4
  94ad13:	62 c1 fd 48 28 ee    	vmovapd zmm21,zmm14
  94ad19:	62 e2 85 48 7f ec    	vpermt2pd zmm21,zmm15,zmm4
  94ad1f:	62 72 fd 40 7f f4    	vpermt2pd zmm14,zmm16,zmm4
  94ad25:	62 72 a5 48 77 fc    	vpermi2pd zmm15,zmm11,zmm4
  94ad2b:	62 72 fd 40 7f dc    	vpermt2pd zmm11,zmm16,zmm4
  94ad31:	62 d1 fd 48 28 e4    	vmovapd zmm4,zmm12
  94ad37:	62 d2 e5 40 7f e7    	vpermt2pd zmm4,zmm19,zmm15
  94ad3d:	62 52 dd 40 7f e7    	vpermt2pd zmm12,zmm20,zmm15
  94ad43:	62 b1 fd 48 28 fd    	vmovapd zmm7,zmm21
  94ad49:	62 b2 e5 40 7f f9    	vpermt2pd zmm7,zmm19,zmm17
  94ad4f:	62 a2 dd 40 7f e9    	vpermt2pd zmm21,zmm20,zmm17
  94ad55:	62 51 fd 48 28 f9    	vmovapd zmm15,zmm9
  94ad5b:	62 52 e5 40 7f fb    	vpermt2pd zmm15,zmm19,zmm11
  94ad61:	62 52 dd 40 7f cb    	vpermt2pd zmm9,zmm20,zmm11
  94ad67:	62 a2 8d 48 77 da    	vpermi2pd zmm19,zmm14,zmm18
  94ad6d:	62 32 dd 40 7f f2    	vpermt2pd zmm14,zmm20,zmm18
  94ad73:	62 e1 dd 48 15 c7    	vunpckhpd zmm16,zmm4,zmm7
  94ad79:	62 a1 9d 48 14 cd    	vunpcklpd zmm17,zmm12,zmm21
  94ad7f:	62 31 9d 48 15 e5    	vunpckhpd zmm12,zmm12,zmm21
  94ad85:	62 a1 85 48 14 d3    	vunpcklpd zmm18,zmm15,zmm19
  94ad8b:	62 31 85 48 15 fb    	vunpckhpd zmm15,zmm15,zmm19
  94ad91:	62 51 b5 48 15 de    	vunpckhpd zmm11,zmm9,zmm14
  94ad97:	62 c1 b5 48 14 de    	vunpcklpd zmm19,zmm9,zmm14
  94ad9d:	62 71 fd 48 10 72 08 	vmovupd zmm14,ZMMWORD PTR [rdx+0x200]
  94ada4:	62 e1 fd 48 10 62 09 	vmovupd zmm20,ZMMWORD PTR [rdx+0x240]
  94adab:	62 51 95 48 59 ce    	vmulpd zmm9,zmm13,zmm14
  94adb1:	62 32 ed 40 bc cc    	vfnmadd231pd zmm9,zmm18,zmm20
  94adb7:	62 51 ed 40 59 f6    	vmulpd zmm14,zmm18,zmm14
  94adbd:	62 e1 fd 48 10 52 04 	vmovupd zmm18,ZMMWORD PTR [rdx+0x100]
  94adc4:	62 32 95 48 b8 f4    	vfmadd231pd zmm14,zmm13,zmm20
  94adca:	62 e1 fd 48 10 62 05 	vmovupd zmm20,ZMMWORD PTR [rdx+0x140]
  94add1:	62 31 ad 48 59 ea    	vmulpd zmm13,zmm10,zmm18
  94add7:	62 32 f5 40 bc ec    	vfnmadd231pd zmm13,zmm17,zmm20
  94addd:	62 a1 f5 40 59 ca    	vmulpd zmm17,zmm17,zmm18
  94ade3:	62 e1 fd 48 10 52 0c 	vmovupd zmm18,ZMMWORD PTR [rdx+0x300]
  94adea:	62 a2 ad 48 b8 cc    	vfmadd231pd zmm17,zmm10,zmm20
  94adf0:	62 71 fd 48 10 52 0d 	vmovupd zmm10,ZMMWORD PTR [rdx+0x340]
  94adf7:	62 a1 bd 48 59 e2    	vmulpd zmm20,zmm8,zmm18
  94adfd:	62 c2 e5 40 bc e2    	vfnmadd231pd zmm20,zmm19,zmm10
  94ae03:	62 a1 e5 40 59 d2    	vmulpd zmm18,zmm19,zmm18
  94ae09:	62 e1 fd 48 10 5a 02 	vmovupd zmm19,ZMMWORD PTR [rdx+0x80]
  94ae10:	62 c2 bd 48 b8 d2    	vfmadd231pd zmm18,zmm8,zmm10
  94ae16:	62 71 fd 48 10 42 03 	vmovupd zmm8,ZMMWORD PTR [rdx+0xc0]
  94ae1d:	62 31 cd 48 59 d3    	vmulpd zmm10,zmm6,zmm19
  94ae23:	62 52 fd 40 bc d0    	vfnmadd231pd zmm10,zmm16,zmm8
  94ae29:	62 a1 fd 40 59 c3    	vmulpd zmm16,zmm16,zmm19
  94ae2f:	62 e1 fd 48 10 5a 0a 	vmovupd zmm19,ZMMWORD PTR [rdx+0x280]
  94ae36:	62 c2 cd 48 b8 c0    	vfmadd231pd zmm16,zmm6,zmm8
  94ae3c:	62 f1 fd 48 10 72 0b 	vmovupd zmm6,ZMMWORD PTR [rdx+0x2c0]
  94ae43:	62 31 d5 48 59 c3    	vmulpd zmm8,zmm5,zmm19
  94ae49:	62 72 85 48 bc c6    	vfnmadd231pd zmm8,zmm15,zmm6
  94ae4f:	62 31 85 48 59 fb    	vmulpd zmm15,zmm15,zmm19
  94ae55:	62 e1 fd 48 10 5a 06 	vmovupd zmm19,ZMMWORD PTR [rdx+0x180]
  94ae5c:	62 72 d5 48 b8 fe    	vfmadd231pd zmm15,zmm5,zmm6
  94ae62:	62 f1 fd 48 10 6a 07 	vmovupd zmm5,ZMMWORD PTR [rdx+0x1c0]
  94ae69:	62 b1 e5 48 59 f3    	vmulpd zmm6,zmm3,zmm19
  94ae6f:	62 f2 9d 48 bc f5    	vfnmadd231pd zmm6,zmm12,zmm5
  94ae75:	62 31 9d 48 59 e3    	vmulpd zmm12,zmm12,zmm19
  94ae7b:	62 e1 fd 48 10 5a 0e 	vmovupd zmm19,ZMMWORD PTR [rdx+0x380]
  94ae82:	62 72 e5 48 b8 e5    	vfmadd231pd zmm12,zmm3,zmm5
  94ae88:	62 f1 fd 48 10 5a 0f 	vmovupd zmm3,ZMMWORD PTR [rdx+0x3c0]
  94ae8f:	62 b1 ed 48 59 eb    	vmulpd zmm5,zmm2,zmm19
  94ae95:	62 f2 a5 48 bc eb    	vfnmadd231pd zmm5,zmm11,zmm3
  94ae9b:	62 31 a5 48 59 db    	vmulpd zmm11,zmm11,zmm19
  94aea1:	62 72 ed 48 b8 db    	vfmadd231pd zmm11,zmm2,zmm3
  94aea7:	62 f1 fd 48 14 c1    	vunpcklpd zmm0,zmm0,zmm1
  94aead:	62 f1 dd 48 14 cf    	vunpcklpd zmm1,zmm4,zmm7
  94aeb3:	62 d1 fd 48 58 d1    	vaddpd zmm2,zmm0,zmm9
  94aeb9:	62 d1 fd 48 5c c1    	vsubpd zmm0,zmm0,zmm9
  94aebf:	62 b1 f5 40 58 da    	vaddpd zmm3,zmm17,zmm18
  94aec5:	62 b1 f5 40 5c e2    	vsubpd zmm4,zmm17,zmm18
  94aecb:	62 d1 ad 48 58 f8    	vaddpd zmm7,zmm10,zmm8
  94aed1:	62 51 ad 48 5c c0    	vsubpd zmm8,zmm10,zmm8
  94aed7:	62 51 fd 40 58 cf    	vaddpd zmm9,zmm16,zmm15
  94aedd:	62 51 fd 40 5c d7    	vsubpd zmm10,zmm16,zmm15
  94aee3:	62 51 9d 48 58 fb    	vaddpd zmm15,zmm12,zmm11
  94aee9:	62 51 9d 48 5c db    	vsubpd zmm11,zmm12,zmm11
  94aeef:	62 71 cd 48 58 e5    	vaddpd zmm12,zmm6,zmm5
  94aef5:	62 f1 cd 48 5c ed    	vsubpd zmm5,zmm6,zmm5
  94aefb:	62 f1 8d 48 58 f1    	vaddpd zmm6,zmm14,zmm1
  94af01:	62 d1 f5 48 5c ce    	vsubpd zmm1,zmm1,zmm14
  94af07:	62 31 95 48 58 f4    	vaddpd zmm14,zmm13,zmm20
  94af0d:	62 51 dd 40 5c ed    	vsubpd zmm13,zmm20,zmm13
  94af13:	62 c1 bd 48 58 c2    	vaddpd zmm16,zmm8,zmm10
  94af19:	62 51 ad 48 5c c0    	vsubpd zmm8,zmm10,zmm8
  94af1f:	62 71 a5 48 5c d5    	vsubpd zmm10,zmm11,zmm5
  94af25:	62 d1 d5 48 58 eb    	vaddpd zmm5,zmm5,zmm11
  94af2b:	62 72 fd 48 19 1d 6b 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff729f6b]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  94af32:	9f 72 ff 
  94af35:	62 c1 fd 40 59 c3    	vmulpd zmm16,zmm16,zmm11
  94af3b:	62 51 ad 48 59 d3    	vmulpd zmm10,zmm10,zmm11
  94af41:	62 51 bd 48 59 c3    	vmulpd zmm8,zmm8,zmm11
  94af47:	62 d1 d5 48 59 eb    	vmulpd zmm5,zmm5,zmm11
  94af4d:	62 51 ed 48 58 de    	vaddpd zmm11,zmm2,zmm14
  94af53:	62 d1 ed 48 5c d6    	vsubpd zmm2,zmm2,zmm14
  94af59:	62 51 b5 48 58 f7    	vaddpd zmm14,zmm9,zmm15
  94af5f:	62 51 b5 48 5c cf    	vsubpd zmm9,zmm9,zmm15
  94af65:	62 71 e5 48 58 fe    	vaddpd zmm15,zmm3,zmm6
  94af6b:	62 f1 cd 48 5c db    	vsubpd zmm3,zmm6,zmm3
  94af71:	62 d1 c5 48 58 f4    	vaddpd zmm6,zmm7,zmm12
  94af77:	62 f1 9d 48 5c ff    	vsubpd zmm7,zmm12,zmm7
  94af7d:	62 71 fd 48 58 e4    	vaddpd zmm12,zmm0,zmm4
  94af83:	62 f1 fd 48 5c c4    	vsubpd zmm0,zmm0,zmm4
  94af89:	62 f1 bd 48 5c e5    	vsubpd zmm4,zmm8,zmm5
  94af8f:	62 f1 bd 48 58 ed    	vaddpd zmm5,zmm8,zmm5
  94af95:	62 71 95 48 58 c1    	vaddpd zmm8,zmm13,zmm1
  94af9b:	62 d1 f5 48 5c cd    	vsubpd zmm1,zmm1,zmm13
  94afa1:	62 51 fd 40 58 ea    	vaddpd zmm13,zmm16,zmm10
  94afa7:	62 31 ad 48 5c d0    	vsubpd zmm10,zmm10,zmm16
  94afad:	62 c1 9d 48 58 c5    	vaddpd zmm16,zmm12,zmm13
  94afb3:	62 51 9d 48 5c e5    	vsubpd zmm12,zmm12,zmm13
  94afb9:	62 71 bd 48 58 ec    	vaddpd zmm13,zmm8,zmm4
  94afbf:	62 f1 bd 48 5c e4    	vsubpd zmm4,zmm8,zmm4
  94afc5:	62 51 ed 48 58 c1    	vaddpd zmm8,zmm2,zmm9
  94afcb:	62 d1 ed 48 5c d1    	vsubpd zmm2,zmm2,zmm9
  94afd1:	62 71 e5 48 58 cf    	vaddpd zmm9,zmm3,zmm7
  94afd7:	62 f1 e5 48 5c df    	vsubpd zmm3,zmm3,zmm7
  94afdd:	62 f1 fd 48 58 fd    	vaddpd zmm7,zmm0,zmm5
  94afe3:	62 f1 fd 48 5c c5    	vsubpd zmm0,zmm0,zmm5
  94afe9:	62 d1 f5 48 58 ea    	vaddpd zmm5,zmm1,zmm10
  94afef:	62 d1 f5 48 5c ca    	vsubpd zmm1,zmm1,zmm10
  94aff5:	62 51 85 48 5c d6    	vsubpd zmm10,zmm15,zmm14
  94affb:	62 51 85 48 58 f6    	vaddpd zmm14,zmm15,zmm14
  94b001:	62 71 a5 48 5c fe    	vsubpd zmm15,zmm11,zmm6
  94b007:	62 f1 a5 48 58 f6    	vaddpd zmm6,zmm11,zmm6
  94b00d:	62 71 fd 48 28 1d 69 	vmovapd zmm11,ZMMWORD PTR [rip+0xffffffffff739069]        # 84080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x11530>
  94b014:	90 73 ff 
  94b017:	62 72 a5 48 7f f6    	vpermt2pd zmm14,zmm11,zmm6
  94b01d:	62 32 a5 48 7f e8    	vpermt2pd zmm13,zmm11,zmm16
  94b023:	62 52 a5 48 7f c8    	vpermt2pd zmm9,zmm11,zmm8
  94b029:	62 f2 a5 48 7f ef    	vpermt2pd zmm5,zmm11,zmm7
  94b02f:	62 52 a5 48 7f d7    	vpermt2pd zmm10,zmm11,zmm15
  94b035:	62 d2 a5 48 7f e4    	vpermt2pd zmm4,zmm11,zmm12
  94b03b:	62 f2 a5 48 7f da    	vpermt2pd zmm3,zmm11,zmm2
  94b041:	62 f2 a5 48 7f c8    	vpermt2pd zmm1,zmm11,zmm0
  94b047:	62 73 7d 48 19 76 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm14,0x2
  94b04e:	02 
  94b04f:	c5 7d 11 36          	vmovupd YMMWORD PTR [rsi],ymm14
  94b053:	62 73 7d 48 19 6e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm13,0x2
  94b05a:	02 
  94b05b:	c5 7d 11 6e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm13
  94b060:	62 73 7d 48 19 4e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm9,0x2
  94b067:	02 
  94b068:	c5 7d 11 4e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm9
  94b06d:	62 f3 7d 48 19 6e 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm5,0x2
  94b074:	02 
  94b075:	c5 fd 11 ae 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm5
  94b07c:	00 
  94b07d:	62 73 7d 48 19 56 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm10,0x2
  94b084:	02 
  94b085:	c5 7d 11 96 c0 00 00 	vmovupd YMMWORD PTR [rsi+0xc0],ymm10
  94b08c:	00 
  94b08d:	62 f3 7d 48 19 66 11 	vextractf32x4 XMMWORD PTR [rsi+0x110],zmm4,0x2
  94b094:	02 
  94b095:	c5 fd 11 a6 f0 00 00 	vmovupd YMMWORD PTR [rsi+0xf0],ymm4
  94b09c:	00 
  94b09d:	62 f3 7d 48 19 5e 14 	vextractf32x4 XMMWORD PTR [rsi+0x140],zmm3,0x2
  94b0a4:	02 
  94b0a5:	c5 fd 11 9e 20 01 00 	vmovupd YMMWORD PTR [rsi+0x120],ymm3
  94b0ac:	00 
  94b0ad:	62 f3 7d 48 19 4e 17 	vextractf32x4 XMMWORD PTR [rsi+0x170],zmm1,0x2
  94b0b4:	02 
  94b0b5:	c5 fd 11 8e 50 01 00 	vmovupd YMMWORD PTR [rsi+0x150],ymm1
  94b0bc:	00 
  94b0bd:	c5 f8 77             	vzeroupper
  94b0c0:	c3                   	ret
