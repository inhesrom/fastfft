
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000922b80 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  922b80:	62 f1 fd 48 10 27    	vmovupd zmm4,ZMMWORD PTR [rdi]
  922b86:	c5 fd 10 47 40       	vmovupd ymm0,YMMWORD PTR [rdi+0x40]
  922b8b:	62 f1 fd 48 28 2d ab 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff75e1ab]        # 80d40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe1f0>
  922b92:	e1 75 ff 
  922b95:	62 f1 fd 48 28 f4    	vmovapd zmm6,zmm4
  922b9b:	62 f2 d5 48 7f f0    	vpermt2pd zmm6,zmm5,zmm0
  922ba1:	62 f1 fd 48 28 0d d5 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff75e1d5]        # 80d80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe230>
  922ba8:	e1 75 ff 
  922bab:	62 f2 f5 48 7f e0    	vpermt2pd zmm4,zmm1,zmm0
  922bb1:	62 f1 fd 48 10 bf 60 	vmovupd zmm7,ZMMWORD PTR [rdi+0x60]
  922bb8:	00 00 00 
  922bbb:	c5 fd 10 87 a0 00 00 	vmovupd ymm0,YMMWORD PTR [rdi+0xa0]
  922bc2:	00 
  922bc3:	62 71 fd 48 28 cf    	vmovapd zmm9,zmm7
  922bc9:	62 72 d5 48 7f c8    	vpermt2pd zmm9,zmm5,zmm0
  922bcf:	62 f2 f5 48 7f f8    	vpermt2pd zmm7,zmm1,zmm0
  922bd5:	62 71 fd 48 10 5f 03 	vmovupd zmm11,ZMMWORD PTR [rdi+0xc0]
  922bdc:	c5 fd 10 87 00 01 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x100]
  922be3:	00 
  922be4:	62 d1 fd 48 28 d3    	vmovapd zmm2,zmm11
  922bea:	62 f2 d5 48 7f d0    	vpermt2pd zmm2,zmm5,zmm0
  922bf0:	62 72 f5 48 7f d8    	vpermt2pd zmm11,zmm1,zmm0
  922bf6:	62 71 fd 48 10 87 20 	vmovupd zmm8,ZMMWORD PTR [rdi+0x120]
  922bfd:	01 00 00 
  922c00:	c5 fd 10 87 60 01 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x160]
  922c07:	00 
  922c08:	62 51 fd 48 28 d0    	vmovapd zmm10,zmm8
  922c0e:	62 72 d5 48 7f d0    	vpermt2pd zmm10,zmm5,zmm0
  922c14:	62 72 f5 48 7f c0    	vpermt2pd zmm8,zmm1,zmm0
  922c1a:	62 71 fd 48 10 67 06 	vmovupd zmm12,ZMMWORD PTR [rdi+0x180]
  922c21:	c5 fd 10 87 c0 01 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x1c0]
  922c28:	00 
  922c29:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  922c2f:	62 72 d5 48 7f e8    	vpermt2pd zmm13,zmm5,zmm0
  922c35:	62 72 f5 48 7f e0    	vpermt2pd zmm12,zmm1,zmm0
  922c3b:	62 71 fd 48 10 b7 e0 	vmovupd zmm14,ZMMWORD PTR [rdi+0x1e0]
  922c42:	01 00 00 
  922c45:	c5 fd 10 87 20 02 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x220]
  922c4c:	00 
  922c4d:	62 f2 8d 48 77 e8    	vpermi2pd zmm5,zmm14,zmm0
  922c53:	62 72 f5 48 7f f0    	vpermt2pd zmm14,zmm1,zmm0
  922c59:	62 d1 a5 48 58 cc    	vaddpd zmm1,zmm11,zmm12
  922c5f:	62 71 dd 48 58 f9    	vaddpd zmm15,zmm4,zmm1
  922c65:	62 e1 8d 48 58 c7    	vaddpd zmm16,zmm14,zmm7
  922c6b:	62 a1 bd 48 58 c8    	vaddpd zmm17,zmm8,zmm16
  922c71:	62 b1 85 48 58 d9    	vaddpd zmm3,zmm15,zmm17
  922c77:	62 c1 ed 48 58 d5    	vaddpd zmm18,zmm2,zmm13
  922c7d:	62 a1 cd 48 58 da    	vaddpd zmm19,zmm6,zmm18
  922c83:	62 f2 fd 48 19 05 0b 	vbroadcastsd zmm0,QWORD PTR [rip+0xffffffffff751e0b]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  922c8a:	1e 75 ff 
  922c8d:	62 c1 d5 48 58 e1    	vaddpd zmm20,zmm5,zmm9
  922c93:	62 f2 fd 48 bc e1    	vfnmadd231pd zmm4,zmm0,zmm1
  922c99:	62 a1 ad 48 58 ec    	vaddpd zmm21,zmm10,zmm20
  922c9f:	62 51 ed 48 5c ed    	vsubpd zmm13,zmm2,zmm13
  922ca5:	62 b1 e5 40 58 d5    	vaddpd zmm2,zmm19,zmm21
  922cab:	62 32 fd 48 bc c0    	vfnmadd231pd zmm8,zmm0,zmm16
  922cb1:	62 f2 fd 48 19 0d 65 	vbroadcastsd zmm1,QWORD PTR [rip+0xffffffffff751f65]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  922cb8:	1f 75 ff 
  922cbb:	62 71 95 48 59 e9    	vmulpd zmm13,zmm13,zmm1
  922cc1:	62 d1 d5 48 5c e9    	vsubpd zmm5,zmm5,zmm9
  922cc7:	62 c1 dd 48 58 c5    	vaddpd zmm16,zmm4,zmm13
  922ccd:	62 71 d5 48 59 c9    	vmulpd zmm9,zmm5,zmm1
  922cd3:	62 b2 fd 48 bc f2    	vfnmadd231pd zmm6,zmm0,zmm18
  922cd9:	62 c1 bd 48 58 d1    	vaddpd zmm18,zmm8,zmm9
  922cdf:	62 51 a5 48 5c dc    	vsubpd zmm11,zmm11,zmm12
  922ce5:	62 b1 fd 40 5c ea    	vsubpd zmm5,zmm16,zmm18
  922ceb:	62 71 a5 48 59 d9    	vmulpd zmm11,zmm11,zmm1
  922cf1:	62 32 fd 48 bc d4    	vfnmadd231pd zmm10,zmm0,zmm20
  922cf7:	62 51 cd 48 5c e3    	vsubpd zmm12,zmm6,zmm11
  922cfd:	62 f1 8d 48 5c ff    	vsubpd zmm7,zmm14,zmm7
  922d03:	62 f1 c5 48 59 f9    	vmulpd zmm7,zmm7,zmm1
  922d09:	62 71 ad 48 5c f7    	vsubpd zmm14,zmm10,zmm7
  922d0f:	62 51 dd 48 5c ed    	vsubpd zmm13,zmm4,zmm13
  922d15:	62 d1 9d 48 5c e6    	vsubpd zmm4,zmm12,zmm14
  922d1b:	62 c1 bd 48 5c e1    	vsubpd zmm20,zmm8,zmm9
  922d21:	62 31 95 48 58 cc    	vaddpd zmm9,zmm13,zmm20
  922d27:	62 71 a5 48 58 de    	vaddpd zmm11,zmm11,zmm6
  922d2d:	62 51 c5 48 58 d2    	vaddpd zmm10,zmm7,zmm10
  922d33:	62 d1 a5 48 58 fa    	vaddpd zmm7,zmm11,zmm10
  922d39:	62 b1 85 48 5c f1    	vsubpd zmm6,zmm15,zmm17
  922d3f:	62 31 e5 40 5c c5    	vsubpd zmm8,zmm19,zmm21
  922d45:	62 31 fd 40 58 fa    	vaddpd zmm15,zmm16,zmm18
  922d4b:	62 51 9d 48 58 e6    	vaddpd zmm12,zmm12,zmm14
  922d51:	62 31 95 48 5c ec    	vsubpd zmm13,zmm13,zmm20
  922d57:	62 51 a5 48 5c f2    	vsubpd zmm14,zmm11,zmm10
  922d5d:	62 71 fd 48 10 15 01 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff7a4001]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  922d64:	40 7a ff 
  922d67:	62 71 fd 48 28 db    	vmovapd zmm11,zmm3
  922d6d:	62 52 ad 48 7f df    	vpermt2pd zmm11,zmm10,zmm15
  922d73:	62 e1 fd 48 10 05 2b 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff7a402b]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  922d7a:	40 7a ff 
  922d7d:	62 d2 fd 40 7f df    	vpermt2pd zmm3,zmm16,zmm15
  922d83:	62 71 fd 48 28 fd    	vmovapd zmm15,zmm5
  922d89:	62 52 ad 48 7f fd    	vpermt2pd zmm15,zmm10,zmm13
  922d8f:	62 d2 fd 40 7f ed    	vpermt2pd zmm5,zmm16,zmm13
  922d95:	c4 41 11 57 ed       	vxorpd xmm13,xmm13,xmm13
  922d9a:	62 c1 fd 48 28 c9    	vmovapd zmm17,zmm9
  922da0:	62 c2 ad 48 7f cd    	vpermt2pd zmm17,zmm10,zmm13
  922da6:	62 52 fd 40 7f cd    	vpermt2pd zmm9,zmm16,zmm13
  922dac:	62 e1 fd 48 28 d6    	vmovapd zmm18,zmm6
  922db2:	62 c2 ad 48 7f d5    	vpermt2pd zmm18,zmm10,zmm13
  922db8:	62 d2 fd 40 7f f5    	vpermt2pd zmm6,zmm16,zmm13
  922dbe:	62 e1 fd 48 10 1d 20 	vmovupd zmm19,ZMMWORD PTR [rip+0xffffffffff7a3f20]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  922dc5:	3f 7a ff 
  922dc8:	62 e1 fd 48 28 e2    	vmovapd zmm20,zmm2
  922dce:	62 c2 ad 48 7f e4    	vpermt2pd zmm20,zmm10,zmm12
  922dd4:	62 d2 fd 40 7f d4    	vpermt2pd zmm2,zmm16,zmm12
  922dda:	62 71 fd 48 28 e4    	vmovapd zmm12,zmm4
  922de0:	62 52 ad 48 7f e6    	vpermt2pd zmm12,zmm10,zmm14
  922de6:	62 d2 fd 40 7f e6    	vpermt2pd zmm4,zmm16,zmm14
  922dec:	62 71 fd 48 28 f7    	vmovapd zmm14,zmm7
  922df2:	62 52 ad 48 7f f5    	vpermt2pd zmm14,zmm10,zmm13
  922df8:	62 d2 fd 40 7f fd    	vpermt2pd zmm7,zmm16,zmm13
  922dfe:	62 52 bd 48 77 d5    	vpermi2pd zmm10,zmm8,zmm13
  922e04:	62 52 fd 40 7f c5    	vpermt2pd zmm8,zmm16,zmm13
  922e0a:	62 51 fd 48 28 eb    	vmovapd zmm13,zmm11
  922e10:	62 32 e5 40 7f e9    	vpermt2pd zmm13,zmm19,zmm17
  922e16:	62 e1 fd 48 10 05 08 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff7a3f08]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  922e1d:	3f 7a ff 
  922e20:	62 32 fd 40 7f d9    	vpermt2pd zmm11,zmm16,zmm17
  922e26:	62 c1 fd 48 28 cf    	vmovapd zmm17,zmm15
  922e2c:	62 a2 e5 40 7f ca    	vpermt2pd zmm17,zmm19,zmm18
  922e32:	62 32 fd 40 7f fa    	vpermt2pd zmm15,zmm16,zmm18
  922e38:	62 d2 e5 40 7f d9    	vpermt2pd zmm3,zmm19,zmm9
  922e3e:	62 f2 e5 40 7f ee    	vpermt2pd zmm5,zmm19,zmm6
  922e44:	62 b1 95 48 14 f1    	vunpcklpd zmm6,zmm13,zmm17
  922e4a:	62 31 95 48 15 c9    	vunpckhpd zmm9,zmm13,zmm17
  922e50:	62 51 a5 48 14 ef    	vunpcklpd zmm13,zmm11,zmm15
  922e56:	62 51 a5 48 15 df    	vunpckhpd zmm11,zmm11,zmm15
  922e5c:	62 71 e5 48 14 fd    	vunpcklpd zmm15,zmm3,zmm5
  922e62:	62 f1 e5 48 15 ed    	vunpckhpd zmm5,zmm3,zmm5
  922e68:	62 a1 fd 48 28 cc    	vmovapd zmm17,zmm20
  922e6e:	62 c2 e5 40 7f ce    	vpermt2pd zmm17,zmm19,zmm14
  922e74:	62 c2 fd 40 7f e6    	vpermt2pd zmm20,zmm16,zmm14
  922e7a:	62 51 fd 48 28 f4    	vmovapd zmm14,zmm12
  922e80:	62 52 e5 40 7f f2    	vpermt2pd zmm14,zmm19,zmm10
  922e86:	62 52 fd 40 7f e2    	vpermt2pd zmm12,zmm16,zmm10
  922e8c:	62 f2 e5 40 7f d7    	vpermt2pd zmm2,zmm19,zmm7
  922e92:	62 d2 e5 40 7f e0    	vpermt2pd zmm4,zmm19,zmm8
  922e98:	62 d1 f5 40 14 de    	vunpcklpd zmm3,zmm17,zmm14
  922e9e:	62 51 f5 40 15 d6    	vunpckhpd zmm10,zmm17,zmm14
  922ea4:	62 d1 dd 40 14 fc    	vunpcklpd zmm7,zmm20,zmm12
  922eaa:	62 51 dd 40 15 c4    	vunpckhpd zmm8,zmm20,zmm12
  922eb0:	62 71 ed 48 14 e4    	vunpcklpd zmm12,zmm2,zmm4
  922eb6:	62 f1 ed 48 15 e4    	vunpckhpd zmm4,zmm2,zmm4
  922ebc:	62 71 fd 48 10 72 02 	vmovupd zmm14,ZMMWORD PTR [rdx+0x80]
  922ec3:	62 e1 fd 48 10 42 03 	vmovupd zmm16,ZMMWORD PTR [rdx+0xc0]
  922eca:	62 e1 fd 48 10 4a 04 	vmovupd zmm17,ZMMWORD PTR [rdx+0x100]
  922ed1:	62 e1 fd 48 10 52 05 	vmovupd zmm18,ZMMWORD PTR [rdx+0x140]
  922ed8:	62 b1 95 48 59 d1    	vmulpd zmm2,zmm13,zmm17
  922ede:	62 b2 c5 48 bc d2    	vfnmadd231pd zmm2,zmm7,zmm18
  922ee4:	62 a1 c5 48 59 c9    	vmulpd zmm17,zmm7,zmm17
  922eea:	62 f1 fd 48 10 7a 08 	vmovupd zmm7,ZMMWORD PTR [rdx+0x200]
  922ef1:	62 a2 95 48 b8 ca    	vfmadd231pd zmm17,zmm13,zmm18
  922ef7:	62 71 fd 48 10 6a 09 	vmovupd zmm13,ZMMWORD PTR [rdx+0x240]
  922efe:	62 e1 85 48 59 d7    	vmulpd zmm18,zmm15,zmm7
  922f04:	62 c2 9d 48 bc d5    	vfnmadd231pd zmm18,zmm12,zmm13
  922f0a:	62 71 9d 48 59 e7    	vmulpd zmm12,zmm12,zmm7
  922f10:	62 e1 fd 48 10 5a 06 	vmovupd zmm19,ZMMWORD PTR [rdx+0x180]
  922f17:	62 52 85 48 b8 e5    	vfmadd231pd zmm12,zmm15,zmm13
  922f1d:	62 71 fd 48 10 6a 07 	vmovupd zmm13,ZMMWORD PTR [rdx+0x1c0]
  922f24:	62 b1 a5 48 59 fb    	vmulpd zmm7,zmm11,zmm19
  922f2a:	62 d2 bd 48 bc fd    	vfnmadd231pd zmm7,zmm8,zmm13
  922f30:	62 31 bd 48 59 c3    	vmulpd zmm8,zmm8,zmm19
  922f36:	62 71 fd 48 10 7a 0a 	vmovupd zmm15,ZMMWORD PTR [rdx+0x280]
  922f3d:	62 52 a5 48 b8 c5    	vfmadd231pd zmm8,zmm11,zmm13
  922f43:	62 71 fd 48 10 5a 0b 	vmovupd zmm11,ZMMWORD PTR [rdx+0x2c0]
  922f4a:	62 51 d5 48 59 ef    	vmulpd zmm13,zmm5,zmm15
  922f50:	62 52 dd 48 bc eb    	vfnmadd231pd zmm13,zmm4,zmm11
  922f56:	62 51 dd 48 59 ff    	vmulpd zmm15,zmm4,zmm15
  922f5c:	62 a1 ed 48 58 da    	vaddpd zmm19,zmm2,zmm18
  922f62:	62 52 d5 48 b8 fb    	vfmadd231pd zmm15,zmm5,zmm11
  922f68:	62 b1 cd 48 58 e3    	vaddpd zmm4,zmm6,zmm19
  922f6e:	62 51 b5 48 59 de    	vmulpd zmm11,zmm9,zmm14
  922f74:	62 32 ad 48 bc d8    	vfnmadd231pd zmm11,zmm10,zmm16
  922f7a:	62 51 ad 48 59 d6    	vmulpd zmm10,zmm10,zmm14
  922f80:	62 51 95 48 58 f3    	vaddpd zmm14,zmm13,zmm11
  922f86:	62 32 b5 48 b8 d0    	vfmadd231pd zmm10,zmm9,zmm16
  922f8c:	62 d1 c5 48 58 ee    	vaddpd zmm5,zmm7,zmm14
  922f92:	62 51 f5 40 58 cc    	vaddpd zmm9,zmm17,zmm12
  922f98:	62 e2 fd 48 ac de    	vfnmadd213pd zmm19,zmm0,zmm6
  922f9e:	62 f1 b5 48 58 f3    	vaddpd zmm6,zmm9,zmm3
  922fa4:	62 51 f5 40 5c e4    	vsubpd zmm12,zmm17,zmm12
  922faa:	62 c1 85 48 58 c2    	vaddpd zmm16,zmm15,zmm10
  922fb0:	62 d2 fd 48 bc fe    	vfnmadd231pd zmm7,zmm0,zmm14
  922fb6:	62 31 bd 48 58 f0    	vaddpd zmm14,zmm8,zmm16
  922fbc:	62 71 9d 48 59 e1    	vmulpd zmm12,zmm12,zmm1
  922fc2:	62 51 85 48 5c d2    	vsubpd zmm10,zmm15,zmm10
  922fc8:	62 51 e5 40 58 fc    	vaddpd zmm15,zmm19,zmm12
  922fce:	62 71 ad 48 59 d1    	vmulpd zmm10,zmm10,zmm1
  922fd4:	62 72 fd 48 ac cb    	vfnmadd213pd zmm9,zmm0,zmm3
  922fda:	62 d1 c5 48 58 da    	vaddpd zmm3,zmm7,zmm10
  922fe0:	62 72 fd 40 bc c0    	vfnmadd231pd zmm8,zmm16,zmm0
  922fe6:	62 e1 85 48 5c c3    	vsubpd zmm16,zmm15,zmm3
  922fec:	c5 fd 28 05 0c 3d 75 	vmovapd ymm0,YMMWORD PTR [rip+0xffffffffff753d0c]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  922ff3:	ff 
  922ff4:	62 b1 ed 48 5c d2    	vsubpd zmm2,zmm2,zmm18
  922ffa:	62 f1 ed 48 59 d1    	vmulpd zmm2,zmm2,zmm1
  923000:	62 e1 b5 48 5c ca    	vsubpd zmm17,zmm9,zmm2
  923006:	62 51 95 48 5c db    	vsubpd zmm11,zmm13,zmm11
  92300c:	62 71 a5 48 59 d9    	vmulpd zmm11,zmm11,zmm1
  923012:	62 51 bd 48 5c eb    	vsubpd zmm13,zmm8,zmm11
  923018:	62 d1 f5 40 5c cd    	vsubpd zmm1,zmm17,zmm13
  92301e:	62 51 e5 40 5c e4    	vsubpd zmm12,zmm19,zmm12
  923024:	62 e1 fd 48 28 d1    	vmovapd zmm18,zmm1
  92302a:	62 a2 fd 48 7f d0    	vpermt2pd zmm18,zmm0,zmm16
  923030:	62 d1 c5 48 5c fa    	vsubpd zmm7,zmm7,zmm10
  923036:	62 71 9d 48 58 d7    	vaddpd zmm10,zmm12,zmm7
  92303c:	62 d1 ed 48 58 d1    	vaddpd zmm2,zmm2,zmm9
  923042:	62 51 bd 48 58 c3    	vaddpd zmm8,zmm8,zmm11
  923048:	62 51 ed 48 58 c8    	vaddpd zmm9,zmm2,zmm8
  92304e:	62 51 fd 48 28 d9    	vmovapd zmm11,zmm9
  923054:	62 52 fd 48 7f da    	vpermt2pd zmm11,zmm0,zmm10
  92305a:	62 f1 85 48 58 db    	vaddpd zmm3,zmm15,zmm3
  923060:	62 71 dd 48 5c fd    	vsubpd zmm15,zmm4,zmm5
  923066:	62 51 f5 40 58 ed    	vaddpd zmm13,zmm17,zmm13
  92306c:	62 c1 cd 48 5c ce    	vsubpd zmm17,zmm6,zmm14
  923072:	62 f1 9d 48 5c ff    	vsubpd zmm7,zmm12,zmm7
  923078:	62 31 fd 48 28 e1    	vmovapd zmm12,zmm17
  92307e:	62 52 fd 48 7f e7    	vpermt2pd zmm12,zmm0,zmm15
  923084:	62 d1 ed 48 5c d0    	vsubpd zmm2,zmm2,zmm8
  92308a:	62 51 fd 48 28 c5    	vmovapd zmm8,zmm13
  923090:	62 72 fd 48 7f c3    	vpermt2pd zmm8,zmm0,zmm3
  923096:	62 d1 cd 48 58 f6    	vaddpd zmm6,zmm6,zmm14
  92309c:	62 71 fd 48 28 f2    	vmovapd zmm14,zmm2
  9230a2:	62 72 fd 48 7f f7    	vpermt2pd zmm14,zmm0,zmm7
  9230a8:	62 f1 dd 48 58 e5    	vaddpd zmm4,zmm4,zmm5
  9230ae:	62 f2 cd 48 77 c4    	vpermi2pd zmm0,zmm6,zmm4
  9230b4:	62 f1 fd 48 28 2d 02 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff75dd02]        # 80dc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe270>
  9230bb:	dd 75 ff 
  9230be:	62 f2 d5 48 7f f4    	vpermt2pd zmm6,zmm5,zmm4
  9230c4:	62 b2 d5 48 7f c8    	vpermt2pd zmm1,zmm5,zmm16
  9230ca:	62 52 d5 48 7f ca    	vpermt2pd zmm9,zmm5,zmm10
  9230d0:	62 c2 d5 48 7f cf    	vpermt2pd zmm17,zmm5,zmm15
  9230d6:	62 72 d5 48 7f eb    	vpermt2pd zmm13,zmm5,zmm3
  9230dc:	62 f2 d5 48 7f d7    	vpermt2pd zmm2,zmm5,zmm7
  9230e2:	62 f1 fd 48 11 36    	vmovupd ZMMWORD PTR [rsi],zmm6
  9230e8:	c5 fd 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm0
  9230ed:	62 f1 fd 48 11 8e 60 	vmovupd ZMMWORD PTR [rsi+0x60],zmm1
  9230f4:	00 00 00 
  9230f7:	62 e1 fd 28 11 56 05 	vmovupd YMMWORD PTR [rsi+0xa0],ymm18
  9230fe:	62 71 fd 48 11 4e 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm9
  923105:	c5 7d 11 9e 00 01 00 	vmovupd YMMWORD PTR [rsi+0x100],ymm11
  92310c:	00 
  92310d:	62 e1 fd 48 11 8e 20 	vmovupd ZMMWORD PTR [rsi+0x120],zmm17
  923114:	01 00 00 
  923117:	c5 7d 11 a6 60 01 00 	vmovupd YMMWORD PTR [rsi+0x160],ymm12
  92311e:	00 
  92311f:	62 71 fd 48 11 6e 06 	vmovupd ZMMWORD PTR [rsi+0x180],zmm13
  923126:	c5 7d 11 86 c0 01 00 	vmovupd YMMWORD PTR [rsi+0x1c0],ymm8
  92312d:	00 
  92312e:	62 f1 fd 48 11 96 e0 	vmovupd ZMMWORD PTR [rsi+0x1e0],zmm2
  923135:	01 00 00 
  923138:	c5 7d 11 b6 20 02 00 	vmovupd YMMWORD PTR [rsi+0x220],ymm14
  92313f:	00 
  923140:	c5 f8 77             	vzeroupper
  923143:	c3                   	ret
