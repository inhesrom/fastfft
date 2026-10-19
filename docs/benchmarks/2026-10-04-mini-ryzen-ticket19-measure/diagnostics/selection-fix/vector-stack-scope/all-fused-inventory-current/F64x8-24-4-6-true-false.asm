
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000922c00 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  922c00:	62 f1 fd 48 10 07    	vmovupd zmm0,ZMMWORD PTR [rdi]
  922c06:	c5 fd 10 4f 40       	vmovupd ymm1,YMMWORD PTR [rdi+0x40]
  922c0b:	62 f1 fd 48 28 1d 2b 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff75de2b]        # 80a40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xdef0>
  922c12:	de 75 ff 
  922c15:	62 f1 fd 48 28 e0    	vmovapd zmm4,zmm0
  922c1b:	62 f2 e5 48 7f e1    	vpermt2pd zmm4,zmm3,zmm1
  922c21:	62 f1 fd 48 28 15 55 	vmovapd zmm2,ZMMWORD PTR [rip+0xffffffffff75de55]        # 80a80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xdf30>
  922c28:	de 75 ff 
  922c2b:	62 f2 ed 48 7f c1    	vpermt2pd zmm0,zmm2,zmm1
  922c31:	62 f1 fd 48 10 8f 60 	vmovupd zmm1,ZMMWORD PTR [rdi+0x60]
  922c38:	00 00 00 
  922c3b:	c5 fd 10 af a0 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0xa0]
  922c42:	00 
  922c43:	62 f1 fd 48 28 f1    	vmovapd zmm6,zmm1
  922c49:	62 f2 e5 48 7f f5    	vpermt2pd zmm6,zmm3,zmm5
  922c4f:	62 f2 ed 48 7f cd    	vpermt2pd zmm1,zmm2,zmm5
  922c55:	62 f1 fd 48 10 6f 03 	vmovupd zmm5,ZMMWORD PTR [rdi+0xc0]
  922c5c:	c5 fd 10 bf 00 01 00 	vmovupd ymm7,YMMWORD PTR [rdi+0x100]
  922c63:	00 
  922c64:	62 71 fd 48 28 c5    	vmovapd zmm8,zmm5
  922c6a:	62 72 e5 48 7f c7    	vpermt2pd zmm8,zmm3,zmm7
  922c70:	62 f2 ed 48 7f ef    	vpermt2pd zmm5,zmm2,zmm7
  922c76:	62 f1 fd 48 10 bf 20 	vmovupd zmm7,ZMMWORD PTR [rdi+0x120]
  922c7d:	01 00 00 
  922c80:	c5 7d 10 8f 60 01 00 	vmovupd ymm9,YMMWORD PTR [rdi+0x160]
  922c87:	00 
  922c88:	62 d2 c5 48 77 d9    	vpermi2pd zmm3,zmm7,zmm9
  922c8e:	62 d2 ed 48 7f f9    	vpermt2pd zmm7,zmm2,zmm9
  922c94:	62 71 fd 48 58 cd    	vaddpd zmm9,zmm0,zmm5
  922c9a:	62 71 f5 48 58 d7    	vaddpd zmm10,zmm1,zmm7
  922ca0:	62 51 b5 48 58 da    	vaddpd zmm11,zmm9,zmm10
  922ca6:	62 51 dd 48 58 e0    	vaddpd zmm12,zmm4,zmm8
  922cac:	62 71 cd 48 58 eb    	vaddpd zmm13,zmm6,zmm3
  922cb2:	62 d1 9d 48 58 d5    	vaddpd zmm2,zmm12,zmm13
  922cb8:	62 f1 fd 48 5c c5    	vsubpd zmm0,zmm0,zmm5
  922cbe:	62 f1 cd 48 5c db    	vsubpd zmm3,zmm6,zmm3
  922cc4:	62 71 fd 48 58 f3    	vaddpd zmm14,zmm0,zmm3
  922cca:	62 d1 dd 48 5c e8    	vsubpd zmm5,zmm4,zmm8
  922cd0:	62 f1 c5 48 5c c9    	vsubpd zmm1,zmm7,zmm1
  922cd6:	62 f1 f5 48 58 e5    	vaddpd zmm4,zmm1,zmm5
  922cdc:	62 d1 b5 48 5c f2    	vsubpd zmm6,zmm9,zmm10
  922ce2:	62 d1 9d 48 5c fd    	vsubpd zmm7,zmm12,zmm13
  922ce8:	62 f1 fd 48 5c c3    	vsubpd zmm0,zmm0,zmm3
  922cee:	62 71 d5 48 5c c9    	vsubpd zmm9,zmm5,zmm1
  922cf4:	62 71 fd 48 10 15 6a 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff7a406a]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  922cfb:	40 7a ff 
  922cfe:	c4 41 19 57 e4       	vxorpd xmm12,xmm12,xmm12
  922d03:	62 d1 fd 48 28 db    	vmovapd zmm3,zmm11
  922d09:	62 d2 ad 48 7f dc    	vpermt2pd zmm3,zmm10,zmm12
  922d0f:	62 71 fd 48 10 2d 8f 	vmovupd zmm13,ZMMWORD PTR [rip+0xffffffffff7a408f]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  922d16:	40 7a ff 
  922d19:	62 52 95 48 7f dc    	vpermt2pd zmm11,zmm13,zmm12
  922d1f:	62 d1 fd 48 28 ee    	vmovapd zmm5,zmm14
  922d25:	62 d2 ad 48 7f ec    	vpermt2pd zmm5,zmm10,zmm12
  922d2b:	62 52 95 48 7f f4    	vpermt2pd zmm14,zmm13,zmm12
  922d31:	62 f1 fd 48 28 ce    	vmovapd zmm1,zmm6
  922d37:	62 d2 ad 48 7f cc    	vpermt2pd zmm1,zmm10,zmm12
  922d3d:	62 d2 95 48 7f f4    	vpermt2pd zmm6,zmm13,zmm12
  922d43:	62 71 fd 48 28 c0    	vmovapd zmm8,zmm0
  922d49:	62 52 ad 48 7f c4    	vpermt2pd zmm8,zmm10,zmm12
  922d4f:	62 d2 95 48 7f c4    	vpermt2pd zmm0,zmm13,zmm12
  922d55:	62 71 fd 48 10 3d 89 	vmovupd zmm15,ZMMWORD PTR [rip+0xffffffffff7a3f89]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  922d5c:	3f 7a ff 
  922d5f:	62 e1 fd 48 28 c3    	vmovapd zmm16,zmm3
  922d65:	62 e2 85 48 7f c1    	vpermt2pd zmm16,zmm15,zmm1
  922d6b:	62 e1 fd 48 10 0d b3 	vmovupd zmm17,ZMMWORD PTR [rip+0xffffffffff7a3fb3]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  922d72:	3f 7a ff 
  922d75:	62 f2 f5 40 7f d9    	vpermt2pd zmm3,zmm17,zmm1
  922d7b:	62 f1 fd 48 28 cd    	vmovapd zmm1,zmm5
  922d81:	62 d2 85 48 7f c8    	vpermt2pd zmm1,zmm15,zmm8
  922d87:	62 d2 f5 40 7f e8    	vpermt2pd zmm5,zmm17,zmm8
  922d8d:	62 72 85 48 7f de    	vpermt2pd zmm11,zmm15,zmm6
  922d93:	62 72 85 48 7f f0    	vpermt2pd zmm14,zmm15,zmm0
  922d99:	62 f1 fd 40 14 c1    	vunpcklpd zmm0,zmm16,zmm1
  922d9f:	62 f1 fd 40 15 c9    	vunpckhpd zmm1,zmm16,zmm1
  922da5:	62 71 e5 48 14 c5    	vunpcklpd zmm8,zmm3,zmm5
  922dab:	62 f1 e5 48 15 ed    	vunpckhpd zmm5,zmm3,zmm5
  922db1:	62 d1 a5 48 14 f6    	vunpcklpd zmm6,zmm11,zmm14
  922db7:	62 d1 a5 48 15 de    	vunpckhpd zmm3,zmm11,zmm14
  922dbd:	62 71 fd 48 28 da    	vmovapd zmm11,zmm2
  922dc3:	62 52 ad 48 7f dc    	vpermt2pd zmm11,zmm10,zmm12
  922dc9:	62 d2 95 48 7f d4    	vpermt2pd zmm2,zmm13,zmm12
  922dcf:	62 71 fd 48 28 f4    	vmovapd zmm14,zmm4
  922dd5:	62 52 ad 48 7f f4    	vpermt2pd zmm14,zmm10,zmm12
  922ddb:	62 d2 95 48 7f e4    	vpermt2pd zmm4,zmm13,zmm12
  922de1:	62 e1 fd 48 28 c7    	vmovapd zmm16,zmm7
  922de7:	62 c2 ad 48 7f c4    	vpermt2pd zmm16,zmm10,zmm12
  922ded:	62 d2 95 48 7f fc    	vpermt2pd zmm7,zmm13,zmm12
  922df3:	62 52 b5 48 77 d4    	vpermi2pd zmm10,zmm9,zmm12
  922df9:	62 52 95 48 7f cc    	vpermt2pd zmm9,zmm13,zmm12
  922dff:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  922e05:	62 32 85 48 7f e0    	vpermt2pd zmm12,zmm15,zmm16
  922e0b:	62 32 f5 40 7f d8    	vpermt2pd zmm11,zmm17,zmm16
  922e11:	62 51 fd 48 28 ee    	vmovapd zmm13,zmm14
  922e17:	62 52 85 48 7f ea    	vpermt2pd zmm13,zmm15,zmm10
  922e1d:	62 52 f5 40 7f f2    	vpermt2pd zmm14,zmm17,zmm10
  922e23:	62 f2 85 48 7f d7    	vpermt2pd zmm2,zmm15,zmm7
  922e29:	62 d2 85 48 7f e1    	vpermt2pd zmm4,zmm15,zmm9
  922e2f:	62 d1 9d 48 14 fd    	vunpcklpd zmm7,zmm12,zmm13
  922e35:	62 51 9d 48 15 cd    	vunpckhpd zmm9,zmm12,zmm13
  922e3b:	62 51 a5 48 14 d6    	vunpcklpd zmm10,zmm11,zmm14
  922e41:	62 51 a5 48 15 de    	vunpckhpd zmm11,zmm11,zmm14
  922e47:	62 71 ed 48 14 e4    	vunpcklpd zmm12,zmm2,zmm4
  922e4d:	62 f1 ed 48 15 e4    	vunpckhpd zmm4,zmm2,zmm4
  922e53:	62 71 fd 48 10 6a 02 	vmovupd zmm13,ZMMWORD PTR [rdx+0x80]
  922e5a:	62 71 fd 48 10 72 03 	vmovupd zmm14,ZMMWORD PTR [rdx+0xc0]
  922e61:	62 71 fd 48 10 7a 04 	vmovupd zmm15,ZMMWORD PTR [rdx+0x100]
  922e68:	62 e1 fd 48 10 42 05 	vmovupd zmm16,ZMMWORD PTR [rdx+0x140]
  922e6f:	62 e1 fd 48 10 4a 06 	vmovupd zmm17,ZMMWORD PTR [rdx+0x180]
  922e76:	62 e1 fd 48 10 52 07 	vmovupd zmm18,ZMMWORD PTR [rdx+0x1c0]
  922e7d:	62 e1 fd 48 10 5a 08 	vmovupd zmm19,ZMMWORD PTR [rdx+0x200]
  922e84:	62 e1 fd 48 10 62 09 	vmovupd zmm20,ZMMWORD PTR [rdx+0x240]
  922e8b:	62 e1 fd 48 10 6a 0a 	vmovupd zmm21,ZMMWORD PTR [rdx+0x280]
  922e92:	62 e1 fd 48 10 72 0b 	vmovupd zmm22,ZMMWORD PTR [rdx+0x2c0]
  922e99:	62 c1 bd 48 59 ff    	vmulpd zmm23,zmm8,zmm15
  922e9f:	62 a2 ad 48 bc f8    	vfnmadd231pd zmm23,zmm10,zmm16
  922ea5:	62 21 cd 48 59 c3    	vmulpd zmm24,zmm6,zmm19
  922eab:	62 22 9d 48 bc c4    	vfnmadd231pd zmm24,zmm12,zmm20
  922eb1:	62 01 c5 40 58 c8    	vaddpd zmm25,zmm23,zmm24
  922eb7:	62 91 fd 48 58 d1    	vaddpd zmm2,zmm0,zmm25
  922ebd:	62 21 d5 48 59 d1    	vmulpd zmm26,zmm5,zmm17
  922ec3:	62 22 a5 48 bc d2    	vfnmadd231pd zmm26,zmm11,zmm18
  922ec9:	62 21 e5 48 59 dd    	vmulpd zmm27,zmm3,zmm21
  922ecf:	62 22 dd 48 bc de    	vfnmadd231pd zmm27,zmm4,zmm22
  922ed5:	62 41 f5 48 59 e5    	vmulpd zmm28,zmm1,zmm13
  922edb:	62 42 b5 48 bc e6    	vfnmadd231pd zmm28,zmm9,zmm14
  922ee1:	62 01 a5 40 58 ec    	vaddpd zmm29,zmm27,zmm28
  922ee7:	62 01 ad 40 58 f5    	vaddpd zmm30,zmm26,zmm29
  922eed:	62 51 ad 48 59 d7    	vmulpd zmm10,zmm10,zmm15
  922ef3:	62 32 bd 48 b8 d0    	vfmadd231pd zmm10,zmm8,zmm16
  922ef9:	62 31 9d 48 59 c3    	vmulpd zmm8,zmm12,zmm19
  922eff:	62 32 cd 48 b8 c4    	vfmadd231pd zmm8,zmm6,zmm20
  922f05:	62 d1 ad 48 58 f0    	vaddpd zmm6,zmm10,zmm8
  922f0b:	62 71 cd 48 58 e7    	vaddpd zmm12,zmm6,zmm7
  922f11:	62 31 a5 48 59 d9    	vmulpd zmm11,zmm11,zmm17
  922f17:	62 32 d5 48 b8 da    	vfmadd231pd zmm11,zmm5,zmm18
  922f1d:	62 b1 dd 48 59 e5    	vmulpd zmm4,zmm4,zmm21
  922f23:	62 b2 e5 48 b8 e6    	vfmadd231pd zmm4,zmm3,zmm22
  922f29:	62 d1 b5 48 59 dd    	vmulpd zmm3,zmm9,zmm13
  922f2f:	62 d2 f5 48 b8 de    	vfmadd231pd zmm3,zmm1,zmm14
  922f35:	62 f1 dd 48 58 cb    	vaddpd zmm1,zmm4,zmm3
  922f3b:	62 f2 fd 48 19 2d 53 	vbroadcastsd zmm5,QWORD PTR [rip+0xffffffffff751b53]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  922f42:	1b 75 ff 
  922f45:	62 71 a5 48 58 c9    	vaddpd zmm9,zmm11,zmm1
  922f4b:	62 62 d5 48 ac c8    	vfnmadd213pd zmm25,zmm5,zmm0
  922f51:	62 f2 fd 48 19 05 c5 	vbroadcastsd zmm0,QWORD PTR [rip+0xffffffffff751cc5]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  922f58:	1c 75 ff 
  922f5b:	62 51 ad 48 5c c0    	vsubpd zmm8,zmm10,zmm8
  922f61:	62 71 bd 48 59 c0    	vmulpd zmm8,zmm8,zmm0
  922f67:	62 51 b5 40 58 d0    	vaddpd zmm10,zmm25,zmm8
  922f6d:	62 02 d5 48 bc d5    	vfnmadd231pd zmm26,zmm5,zmm29
  922f73:	62 f1 dd 48 5c db    	vsubpd zmm3,zmm4,zmm3
  922f79:	62 f1 e5 48 59 d8    	vmulpd zmm3,zmm3,zmm0
  922f7f:	62 f1 ad 40 58 e3    	vaddpd zmm4,zmm26,zmm3
  922f85:	62 71 ad 48 5c ec    	vsubpd zmm13,zmm10,zmm4
  922f8b:	62 f2 d5 48 ac f7    	vfnmadd213pd zmm6,zmm5,zmm7
  922f91:	62 91 c5 40 5c f8    	vsubpd zmm7,zmm23,zmm24
  922f97:	62 f1 c5 48 59 f8    	vmulpd zmm7,zmm7,zmm0
  922f9d:	62 71 cd 48 5c f7    	vsubpd zmm14,zmm6,zmm7
  922fa3:	62 72 f5 48 bc dd    	vfnmadd231pd zmm11,zmm1,zmm5
  922fa9:	62 91 a5 40 5c cc    	vsubpd zmm1,zmm27,zmm28
  922faf:	62 f1 f5 48 59 c0    	vmulpd zmm0,zmm1,zmm0
  922fb5:	62 f1 a5 48 5c c8    	vsubpd zmm1,zmm11,zmm0
  922fbb:	62 f1 8d 48 5c e9    	vsubpd zmm5,zmm14,zmm1
  922fc1:	62 51 b5 40 5c c0    	vsubpd zmm8,zmm25,zmm8
  922fc7:	62 f1 ad 40 5c db    	vsubpd zmm3,zmm26,zmm3
  922fcd:	62 71 bd 48 58 fb    	vaddpd zmm15,zmm8,zmm3
  922fd3:	62 f1 c5 48 58 f6    	vaddpd zmm6,zmm7,zmm6
  922fd9:	62 f1 a5 48 58 c0    	vaddpd zmm0,zmm11,zmm0
  922fdf:	62 f1 cd 48 58 f8    	vaddpd zmm7,zmm6,zmm0
  922fe5:	62 11 ed 48 5c de    	vsubpd zmm11,zmm2,zmm30
  922feb:	62 c1 9d 48 5c c1    	vsubpd zmm16,zmm12,zmm9
  922ff1:	62 f1 ad 48 58 e4    	vaddpd zmm4,zmm10,zmm4
  922ff7:	62 f1 8d 48 58 c9    	vaddpd zmm1,zmm14,zmm1
  922ffd:	62 f1 bd 48 5c db    	vsubpd zmm3,zmm8,zmm3
  923003:	62 f1 cd 48 5c c0    	vsubpd zmm0,zmm6,zmm0
  923009:	62 d1 9d 48 58 f1    	vaddpd zmm6,zmm12,zmm9
  92300f:	62 91 ed 48 58 d6    	vaddpd zmm2,zmm2,zmm30
  923015:	62 71 fd 48 28 05 a1 	vmovapd zmm8,ZMMWORD PTR [rip+0xffffffffff75daa1]        # 80ac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xdf70>
  92301c:	da 75 ff 
  92301f:	62 f2 bd 48 7f f2    	vpermt2pd zmm6,zmm8,zmm2
  923025:	62 f1 fd 48 11 36    	vmovupd ZMMWORD PTR [rsi],zmm6
  92302b:	62 d2 bd 48 7f ed    	vpermt2pd zmm5,zmm8,zmm13
  923031:	62 f1 fd 48 11 6e 01 	vmovupd ZMMWORD PTR [rsi+0x40],zmm5
  923038:	62 d2 bd 48 7f ff    	vpermt2pd zmm7,zmm8,zmm15
  92303e:	62 f1 fd 48 11 7e 02 	vmovupd ZMMWORD PTR [rsi+0x80],zmm7
  923045:	62 c2 bd 48 7f c3    	vpermt2pd zmm16,zmm8,zmm11
  92304b:	62 e1 fd 48 11 46 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm16
  923052:	62 f2 bd 48 7f cc    	vpermt2pd zmm1,zmm8,zmm4
  923058:	62 f1 fd 48 11 4e 04 	vmovupd ZMMWORD PTR [rsi+0x100],zmm1
  92305f:	62 f2 bd 48 7f c3    	vpermt2pd zmm0,zmm8,zmm3
  923065:	62 f1 fd 48 11 46 05 	vmovupd ZMMWORD PTR [rsi+0x140],zmm0
  92306c:	c5 f8 77             	vzeroupper
  92306f:	c3                   	ret
