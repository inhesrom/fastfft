
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000956ac0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  956ac0:	62 f1 fd 48 10 37    	vmovupd zmm6,ZMMWORD PTR [rdi]
  956ac6:	c5 fd 10 47 40       	vmovupd ymm0,YMMWORD PTR [rdi+0x40]
  956acb:	62 f1 fd 48 28 3d 6b 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff72e36b]        # 84e40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x122f0>
  956ad2:	e3 72 ff 
  956ad5:	62 f1 fd 48 28 e6    	vmovapd zmm4,zmm6
  956adb:	62 f2 c5 48 7f e0    	vpermt2pd zmm4,zmm7,zmm0
  956ae1:	62 f1 fd 48 28 0d 95 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff72e395]        # 84e80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x12330>
  956ae8:	e3 72 ff 
  956aeb:	62 f2 f5 48 7f f0    	vpermt2pd zmm6,zmm1,zmm0
  956af1:	62 f1 fd 48 10 af 60 	vmovupd zmm5,ZMMWORD PTR [rdi+0x60]
  956af8:	00 00 00 
  956afb:	c5 fd 10 87 a0 00 00 	vmovupd ymm0,YMMWORD PTR [rdi+0xa0]
  956b02:	00 
  956b03:	62 71 fd 48 28 c5    	vmovapd zmm8,zmm5
  956b09:	62 72 c5 48 7f c0    	vpermt2pd zmm8,zmm7,zmm0
  956b0f:	62 f2 f5 48 7f e8    	vpermt2pd zmm5,zmm1,zmm0
  956b15:	62 f1 fd 48 10 57 03 	vmovupd zmm2,ZMMWORD PTR [rdi+0xc0]
  956b1c:	c5 fd 10 87 00 01 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x100]
  956b23:	00 
  956b24:	62 71 fd 48 28 ca    	vmovapd zmm9,zmm2
  956b2a:	62 72 c5 48 7f c8    	vpermt2pd zmm9,zmm7,zmm0
  956b30:	62 f2 f5 48 7f d0    	vpermt2pd zmm2,zmm1,zmm0
  956b36:	62 71 fd 48 10 97 20 	vmovupd zmm10,ZMMWORD PTR [rdi+0x120]
  956b3d:	01 00 00 
  956b40:	c5 fd 10 87 60 01 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x160]
  956b47:	00 
  956b48:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  956b4e:	62 72 c5 48 7f d8    	vpermt2pd zmm11,zmm7,zmm0
  956b54:	62 72 f5 48 7f d0    	vpermt2pd zmm10,zmm1,zmm0
  956b5a:	62 71 fd 48 10 67 06 	vmovupd zmm12,ZMMWORD PTR [rdi+0x180]
  956b61:	c5 fd 10 87 c0 01 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x1c0]
  956b68:	00 
  956b69:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  956b6f:	62 72 c5 48 7f e8    	vpermt2pd zmm13,zmm7,zmm0
  956b75:	62 72 f5 48 7f e0    	vpermt2pd zmm12,zmm1,zmm0
  956b7b:	62 71 fd 48 10 b7 e0 	vmovupd zmm14,ZMMWORD PTR [rdi+0x1e0]
  956b82:	01 00 00 
  956b85:	c5 fd 10 87 20 02 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x220]
  956b8c:	00 
  956b8d:	62 f2 8d 48 77 f8    	vpermi2pd zmm7,zmm14,zmm0
  956b93:	62 72 f5 48 7f f0    	vpermt2pd zmm14,zmm1,zmm0
  956b99:	62 d1 b5 48 58 cd    	vaddpd zmm1,zmm9,zmm13
  956b9f:	62 71 dd 48 58 f9    	vaddpd zmm15,zmm4,zmm1
  956ba5:	62 c1 c5 48 58 c0    	vaddpd zmm16,zmm7,zmm8
  956bab:	62 a1 a5 48 58 c8    	vaddpd zmm17,zmm11,zmm16
  956bb1:	62 b1 85 48 58 d9    	vaddpd zmm3,zmm15,zmm17
  956bb7:	62 c1 ed 48 58 d4    	vaddpd zmm18,zmm2,zmm12
  956bbd:	62 a1 cd 48 58 da    	vaddpd zmm19,zmm6,zmm18
  956bc3:	62 f2 fd 48 19 05 cb 	vbroadcastsd zmm0,QWORD PTR [rip+0xffffffffff71decb]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  956bca:	de 71 ff 
  956bcd:	62 e1 8d 48 58 e5    	vaddpd zmm20,zmm14,zmm5
  956bd3:	62 f2 fd 48 bc e1    	vfnmadd231pd zmm4,zmm0,zmm1
  956bd9:	62 a1 ad 48 58 ec    	vaddpd zmm21,zmm10,zmm20
  956bdf:	62 51 ed 48 5c e4    	vsubpd zmm12,zmm2,zmm12
  956be5:	62 b1 e5 40 58 d5    	vaddpd zmm2,zmm19,zmm21
  956beb:	62 32 fd 48 bc d8    	vfnmadd231pd zmm11,zmm0,zmm16
  956bf1:	62 f2 fd 48 19 0d 25 	vbroadcastsd zmm1,QWORD PTR [rip+0xffffffffff71e025]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  956bf8:	e0 71 ff 
  956bfb:	62 71 9d 48 59 e1    	vmulpd zmm12,zmm12,zmm1
  956c01:	62 f1 8d 48 5c ed    	vsubpd zmm5,zmm14,zmm5
  956c07:	62 51 dd 48 58 f4    	vaddpd zmm14,zmm4,zmm12
  956c0d:	62 e1 d5 48 59 c1    	vmulpd zmm16,zmm5,zmm1
  956c13:	62 b2 fd 48 bc f2    	vfnmadd231pd zmm6,zmm0,zmm18
  956c19:	62 a1 a5 48 58 d0    	vaddpd zmm18,zmm11,zmm16
  956c1f:	62 51 b5 48 5c cd    	vsubpd zmm9,zmm9,zmm13
  956c25:	62 b1 8d 48 5c ea    	vsubpd zmm5,zmm14,zmm18
  956c2b:	62 71 b5 48 59 e9    	vmulpd zmm13,zmm9,zmm1
  956c31:	62 32 fd 48 bc d4    	vfnmadd231pd zmm10,zmm0,zmm20
  956c37:	62 c1 cd 48 5c e5    	vsubpd zmm20,zmm6,zmm13
  956c3d:	62 d1 c5 48 5c f8    	vsubpd zmm7,zmm7,zmm8
  956c43:	62 f1 c5 48 59 f9    	vmulpd zmm7,zmm7,zmm1
  956c49:	62 e1 ad 48 5c f7    	vsubpd zmm22,zmm10,zmm7
  956c4f:	62 51 dd 48 5c e4    	vsubpd zmm12,zmm4,zmm12
  956c55:	62 b1 dd 40 5c e6    	vsubpd zmm4,zmm20,zmm22
  956c5b:	62 31 a5 48 5c d8    	vsubpd zmm11,zmm11,zmm16
  956c61:	62 51 9d 48 58 cb    	vaddpd zmm9,zmm12,zmm11
  956c67:	62 71 95 48 58 ee    	vaddpd zmm13,zmm13,zmm6
  956c6d:	62 51 c5 48 58 d2    	vaddpd zmm10,zmm7,zmm10
  956c73:	62 d1 95 48 58 fa    	vaddpd zmm7,zmm13,zmm10
  956c79:	62 b1 85 48 5c f1    	vsubpd zmm6,zmm15,zmm17
  956c7f:	62 31 e5 40 5c c5    	vsubpd zmm8,zmm19,zmm21
  956c85:	62 31 8d 48 58 f2    	vaddpd zmm14,zmm14,zmm18
  956c8b:	62 31 dd 40 58 fe    	vaddpd zmm15,zmm20,zmm22
  956c91:	62 51 9d 48 5c e3    	vsubpd zmm12,zmm12,zmm11
  956c97:	62 51 95 48 5c ea    	vsubpd zmm13,zmm13,zmm10
  956c9d:	62 71 fd 48 10 15 c1 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff7700c1]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  956ca4:	00 77 ff 
  956ca7:	62 71 fd 48 28 db    	vmovapd zmm11,zmm3
  956cad:	62 52 ad 48 7f de    	vpermt2pd zmm11,zmm10,zmm14
  956cb3:	62 e1 fd 48 10 05 eb 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff7700eb]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  956cba:	00 77 ff 
  956cbd:	62 d2 fd 40 7f de    	vpermt2pd zmm3,zmm16,zmm14
  956cc3:	62 71 fd 48 28 f5    	vmovapd zmm14,zmm5
  956cc9:	62 52 ad 48 7f f4    	vpermt2pd zmm14,zmm10,zmm12
  956ccf:	62 d2 fd 40 7f ec    	vpermt2pd zmm5,zmm16,zmm12
  956cd5:	c4 41 19 57 e4       	vxorpd xmm12,xmm12,xmm12
  956cda:	62 c1 fd 48 28 c9    	vmovapd zmm17,zmm9
  956ce0:	62 c2 ad 48 7f cc    	vpermt2pd zmm17,zmm10,zmm12
  956ce6:	62 52 fd 40 7f cc    	vpermt2pd zmm9,zmm16,zmm12
  956cec:	62 e1 fd 48 28 d6    	vmovapd zmm18,zmm6
  956cf2:	62 c2 ad 48 7f d4    	vpermt2pd zmm18,zmm10,zmm12
  956cf8:	62 d2 fd 40 7f f4    	vpermt2pd zmm6,zmm16,zmm12
  956cfe:	62 e1 fd 48 10 1d e0 	vmovupd zmm19,ZMMWORD PTR [rip+0xffffffffff76ffe0]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  956d05:	ff 76 ff 
  956d08:	62 e1 fd 48 28 e2    	vmovapd zmm20,zmm2
  956d0e:	62 c2 ad 48 7f e7    	vpermt2pd zmm20,zmm10,zmm15
  956d14:	62 d2 fd 40 7f d7    	vpermt2pd zmm2,zmm16,zmm15
  956d1a:	62 71 fd 48 28 fc    	vmovapd zmm15,zmm4
  956d20:	62 52 ad 48 7f fd    	vpermt2pd zmm15,zmm10,zmm13
  956d26:	62 d2 fd 40 7f e5    	vpermt2pd zmm4,zmm16,zmm13
  956d2c:	62 71 fd 48 28 ef    	vmovapd zmm13,zmm7
  956d32:	62 52 ad 48 7f ec    	vpermt2pd zmm13,zmm10,zmm12
  956d38:	62 d2 fd 40 7f fc    	vpermt2pd zmm7,zmm16,zmm12
  956d3e:	62 52 bd 48 77 d4    	vpermi2pd zmm10,zmm8,zmm12
  956d44:	62 52 fd 40 7f c4    	vpermt2pd zmm8,zmm16,zmm12
  956d4a:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  956d50:	62 32 e5 40 7f e1    	vpermt2pd zmm12,zmm19,zmm17
  956d56:	62 e1 fd 48 10 05 c8 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff76ffc8]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  956d5d:	ff 76 ff 
  956d60:	62 32 fd 40 7f d9    	vpermt2pd zmm11,zmm16,zmm17
  956d66:	62 c1 fd 48 28 ce    	vmovapd zmm17,zmm14
  956d6c:	62 a2 e5 40 7f ca    	vpermt2pd zmm17,zmm19,zmm18
  956d72:	62 32 fd 40 7f f2    	vpermt2pd zmm14,zmm16,zmm18
  956d78:	62 d2 e5 40 7f d9    	vpermt2pd zmm3,zmm19,zmm9
  956d7e:	62 f2 e5 40 7f ee    	vpermt2pd zmm5,zmm19,zmm6
  956d84:	62 b1 9d 48 14 f1    	vunpcklpd zmm6,zmm12,zmm17
  956d8a:	62 31 9d 48 15 c9    	vunpckhpd zmm9,zmm12,zmm17
  956d90:	62 51 a5 48 14 e6    	vunpcklpd zmm12,zmm11,zmm14
  956d96:	62 51 a5 48 15 de    	vunpckhpd zmm11,zmm11,zmm14
  956d9c:	62 71 e5 48 14 f5    	vunpcklpd zmm14,zmm3,zmm5
  956da2:	62 f1 e5 48 15 ed    	vunpckhpd zmm5,zmm3,zmm5
  956da8:	62 a1 fd 48 28 cc    	vmovapd zmm17,zmm20
  956dae:	62 c2 e5 40 7f cd    	vpermt2pd zmm17,zmm19,zmm13
  956db4:	62 c2 fd 40 7f e5    	vpermt2pd zmm20,zmm16,zmm13
  956dba:	62 51 fd 48 28 ef    	vmovapd zmm13,zmm15
  956dc0:	62 52 e5 40 7f ea    	vpermt2pd zmm13,zmm19,zmm10
  956dc6:	62 52 fd 40 7f fa    	vpermt2pd zmm15,zmm16,zmm10
  956dcc:	62 f2 e5 40 7f d7    	vpermt2pd zmm2,zmm19,zmm7
  956dd2:	62 d2 e5 40 7f e0    	vpermt2pd zmm4,zmm19,zmm8
  956dd8:	62 d1 f5 40 14 dd    	vunpcklpd zmm3,zmm17,zmm13
  956dde:	62 d1 f5 40 15 fd    	vunpckhpd zmm7,zmm17,zmm13
  956de4:	62 51 dd 40 14 c7    	vunpcklpd zmm8,zmm20,zmm15
  956dea:	62 51 dd 40 15 d7    	vunpckhpd zmm10,zmm20,zmm15
  956df0:	62 71 ed 48 14 ec    	vunpcklpd zmm13,zmm2,zmm4
  956df6:	62 f1 ed 48 15 e4    	vunpckhpd zmm4,zmm2,zmm4
  956dfc:	62 71 fd 48 10 7a 02 	vmovupd zmm15,ZMMWORD PTR [rdx+0x80]
  956e03:	62 e1 fd 48 10 42 03 	vmovupd zmm16,ZMMWORD PTR [rdx+0xc0]
  956e0a:	62 e1 fd 48 10 4a 04 	vmovupd zmm17,ZMMWORD PTR [rdx+0x100]
  956e11:	62 e1 fd 48 10 52 05 	vmovupd zmm18,ZMMWORD PTR [rdx+0x140]
  956e18:	62 b1 9d 48 59 d1    	vmulpd zmm2,zmm12,zmm17
  956e1e:	62 b2 bd 48 bc d2    	vfnmadd231pd zmm2,zmm8,zmm18
  956e24:	62 31 bd 48 59 c1    	vmulpd zmm8,zmm8,zmm17
  956e2a:	62 e1 fd 48 10 4a 08 	vmovupd zmm17,ZMMWORD PTR [rdx+0x200]
  956e31:	62 32 9d 48 b8 c2    	vfmadd231pd zmm8,zmm12,zmm18
  956e37:	62 71 fd 48 10 62 09 	vmovupd zmm12,ZMMWORD PTR [rdx+0x240]
  956e3e:	62 a1 8d 48 59 d1    	vmulpd zmm18,zmm14,zmm17
  956e44:	62 c2 95 48 bc d4    	vfnmadd231pd zmm18,zmm13,zmm12
  956e4a:	62 31 95 48 59 e9    	vmulpd zmm13,zmm13,zmm17
  956e50:	62 e1 fd 48 10 4a 06 	vmovupd zmm17,ZMMWORD PTR [rdx+0x180]
  956e57:	62 52 8d 48 b8 ec    	vfmadd231pd zmm13,zmm14,zmm12
  956e5d:	62 71 fd 48 10 62 07 	vmovupd zmm12,ZMMWORD PTR [rdx+0x1c0]
  956e64:	62 31 a5 48 59 f1    	vmulpd zmm14,zmm11,zmm17
  956e6a:	62 52 ad 48 bc f4    	vfnmadd231pd zmm14,zmm10,zmm12
  956e70:	62 31 ad 48 59 d1    	vmulpd zmm10,zmm10,zmm17
  956e76:	62 e1 fd 48 10 4a 0a 	vmovupd zmm17,ZMMWORD PTR [rdx+0x280]
  956e7d:	62 52 a5 48 b8 d4    	vfmadd231pd zmm10,zmm11,zmm12
  956e83:	62 71 fd 48 10 5a 0b 	vmovupd zmm11,ZMMWORD PTR [rdx+0x2c0]
  956e8a:	62 31 d5 48 59 e1    	vmulpd zmm12,zmm5,zmm17
  956e90:	62 52 dd 48 bc e3    	vfnmadd231pd zmm12,zmm4,zmm11
  956e96:	62 a1 dd 48 59 c9    	vmulpd zmm17,zmm4,zmm17
  956e9c:	62 a1 ed 48 58 da    	vaddpd zmm19,zmm2,zmm18
  956ea2:	62 c2 d5 48 b8 cb    	vfmadd231pd zmm17,zmm5,zmm11
  956ea8:	62 b1 cd 48 58 e3    	vaddpd zmm4,zmm6,zmm19
  956eae:	62 51 b5 48 59 df    	vmulpd zmm11,zmm9,zmm15
  956eb4:	62 32 c5 48 bc d8    	vfnmadd231pd zmm11,zmm7,zmm16
  956eba:	62 d1 c5 48 59 ff    	vmulpd zmm7,zmm7,zmm15
  956ec0:	62 51 9d 48 58 fb    	vaddpd zmm15,zmm12,zmm11
  956ec6:	62 b2 b5 48 b8 f8    	vfmadd231pd zmm7,zmm9,zmm16
  956ecc:	62 d1 8d 48 58 ef    	vaddpd zmm5,zmm14,zmm15
  956ed2:	62 51 bd 48 58 cd    	vaddpd zmm9,zmm8,zmm13
  956ed8:	62 e2 fd 48 ac de    	vfnmadd213pd zmm19,zmm0,zmm6
  956ede:	62 f1 b5 48 58 f3    	vaddpd zmm6,zmm9,zmm3
  956ee4:	62 51 bd 48 5c c5    	vsubpd zmm8,zmm8,zmm13
  956eea:	62 71 f5 40 58 ef    	vaddpd zmm13,zmm17,zmm7
  956ef0:	62 52 fd 48 bc f7    	vfnmadd231pd zmm14,zmm0,zmm15
  956ef6:	62 51 ad 48 58 fd    	vaddpd zmm15,zmm10,zmm13
  956efc:	62 71 bd 48 59 c1    	vmulpd zmm8,zmm8,zmm1
  956f02:	62 f1 f5 40 5c ff    	vsubpd zmm7,zmm17,zmm7
  956f08:	62 c1 e5 40 58 c0    	vaddpd zmm16,zmm19,zmm8
  956f0e:	62 f1 c5 48 59 f9    	vmulpd zmm7,zmm7,zmm1
  956f14:	62 72 fd 48 ac cb    	vfnmadd213pd zmm9,zmm0,zmm3
  956f1a:	62 f1 8d 48 58 df    	vaddpd zmm3,zmm14,zmm7
  956f20:	62 a1 ed 48 5c ca    	vsubpd zmm17,zmm2,zmm18
  956f26:	62 f1 fd 40 5c d3    	vsubpd zmm2,zmm16,zmm3
  956f2c:	62 e1 f5 40 59 c9    	vmulpd zmm17,zmm17,zmm1
  956f32:	62 72 95 48 bc d0    	vfnmadd231pd zmm10,zmm13,zmm0
  956f38:	62 31 b5 48 5c e9    	vsubpd zmm13,zmm9,zmm17
  956f3e:	62 d1 9d 48 5c c3    	vsubpd zmm0,zmm12,zmm11
  956f44:	62 f1 fd 48 59 c9    	vmulpd zmm1,zmm0,zmm1
  956f4a:	62 71 ad 48 5c d9    	vsubpd zmm11,zmm10,zmm1
  956f50:	62 51 95 48 5c e3    	vsubpd zmm12,zmm13,zmm11
  956f56:	c5 fd 28 05 a2 fd 71 	vmovapd ymm0,YMMWORD PTR [rip+0xffffffffff71fda2]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  956f5d:	ff 
  956f5e:	62 51 e5 40 5c c0    	vsubpd zmm8,zmm19,zmm8
  956f64:	62 e1 fd 48 28 d2    	vmovapd zmm18,zmm2
  956f6a:	62 c2 fd 48 7f d4    	vpermt2pd zmm18,zmm0,zmm12
  956f70:	62 f1 8d 48 5c ff    	vsubpd zmm7,zmm14,zmm7
  956f76:	62 71 bd 48 58 f7    	vaddpd zmm14,zmm8,zmm7
  956f7c:	62 51 f5 40 58 c9    	vaddpd zmm9,zmm17,zmm9
  956f82:	62 f1 ad 48 58 c9    	vaddpd zmm1,zmm10,zmm1
  956f88:	62 71 b5 48 58 d1    	vaddpd zmm10,zmm9,zmm1
  956f8e:	62 c1 fd 48 28 ce    	vmovapd zmm17,zmm14
  956f94:	62 c2 fd 48 7f ca    	vpermt2pd zmm17,zmm0,zmm10
  956f9a:	62 f1 fd 40 58 db    	vaddpd zmm3,zmm16,zmm3
  956fa0:	62 e1 dd 48 5c c5    	vsubpd zmm16,zmm4,zmm5
  956fa6:	62 51 95 48 58 db    	vaddpd zmm11,zmm13,zmm11
  956fac:	62 51 cd 48 5c ef    	vsubpd zmm13,zmm6,zmm15
  956fb2:	62 f1 bd 48 5c ff    	vsubpd zmm7,zmm8,zmm7
  956fb8:	62 31 fd 48 28 c0    	vmovapd zmm8,zmm16
  956fbe:	62 52 fd 48 7f c5    	vpermt2pd zmm8,zmm0,zmm13
  956fc4:	62 f1 b5 48 5c c9    	vsubpd zmm1,zmm9,zmm1
  956fca:	62 71 fd 48 28 cb    	vmovapd zmm9,zmm3
  956fd0:	62 52 fd 48 7f cb    	vpermt2pd zmm9,zmm0,zmm11
  956fd6:	62 f1 dd 48 58 e5    	vaddpd zmm4,zmm4,zmm5
  956fdc:	62 f1 fd 48 28 ef    	vmovapd zmm5,zmm7
  956fe2:	62 f2 fd 48 7f e9    	vpermt2pd zmm5,zmm0,zmm1
  956fe8:	62 d1 cd 48 58 f7    	vaddpd zmm6,zmm6,zmm15
  956fee:	62 f2 dd 48 77 c6    	vpermi2pd zmm0,zmm4,zmm6
  956ff4:	62 71 fd 48 28 3d c2 	vmovapd zmm15,ZMMWORD PTR [rip+0xffffffffff72dec2]        # 84ec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x12370>
  956ffb:	de 72 ff 
  956ffe:	62 f2 85 48 7f e6    	vpermt2pd zmm4,zmm15,zmm6
  957004:	62 d2 85 48 7f d4    	vpermt2pd zmm2,zmm15,zmm12
  95700a:	62 52 85 48 7f f2    	vpermt2pd zmm14,zmm15,zmm10
  957010:	62 c2 85 48 7f c5    	vpermt2pd zmm16,zmm15,zmm13
  957016:	62 d2 85 48 7f db    	vpermt2pd zmm3,zmm15,zmm11
  95701c:	62 f2 85 48 7f f9    	vpermt2pd zmm7,zmm15,zmm1
  957022:	62 f1 fd 48 11 26    	vmovupd ZMMWORD PTR [rsi],zmm4
  957028:	c5 fd 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm0
  95702d:	62 f1 fd 48 11 96 60 	vmovupd ZMMWORD PTR [rsi+0x60],zmm2
  957034:	00 00 00 
  957037:	62 e1 fd 28 11 56 05 	vmovupd YMMWORD PTR [rsi+0xa0],ymm18
  95703e:	62 71 fd 48 11 76 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm14
  957045:	62 e1 fd 28 11 4e 08 	vmovupd YMMWORD PTR [rsi+0x100],ymm17
  95704c:	62 e1 fd 48 11 86 20 	vmovupd ZMMWORD PTR [rsi+0x120],zmm16
  957053:	01 00 00 
  957056:	c5 7d 11 86 60 01 00 	vmovupd YMMWORD PTR [rsi+0x160],ymm8
  95705d:	00 
  95705e:	62 f1 fd 48 11 5e 06 	vmovupd ZMMWORD PTR [rsi+0x180],zmm3
  957065:	c5 7d 11 8e c0 01 00 	vmovupd YMMWORD PTR [rsi+0x1c0],ymm9
  95706c:	00 
  95706d:	62 f1 fd 48 11 be e0 	vmovupd ZMMWORD PTR [rsi+0x1e0],zmm7
  957074:	01 00 00 
  957077:	c5 fd 11 ae 20 02 00 	vmovupd YMMWORD PTR [rsi+0x220],ymm5
  95707e:	00 
  95707f:	c5 f8 77             	vzeroupper
  957082:	c3                   	ret
