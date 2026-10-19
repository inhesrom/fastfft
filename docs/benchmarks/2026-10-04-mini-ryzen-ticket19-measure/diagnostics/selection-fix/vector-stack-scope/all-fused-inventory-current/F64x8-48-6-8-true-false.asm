
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009179c0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  9179c0:	62 f1 fd 48 28 2d 36 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff768236]        # 7fc00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd0b0>
  9179c7:	82 76 ff 
  9179ca:	62 f1 fd 48 10 07    	vmovupd zmm0,ZMMWORD PTR [rdi]
  9179d0:	62 f1 fd 48 10 4f 01 	vmovupd zmm1,ZMMWORD PTR [rdi+0x40]
  9179d7:	62 f1 fd 48 10 5f 02 	vmovupd zmm3,ZMMWORD PTR [rdi+0x80]
  9179de:	62 f1 fd 48 10 67 03 	vmovupd zmm4,ZMMWORD PTR [rdi+0xc0]
  9179e5:	62 f1 fd 48 28 d0    	vmovapd zmm2,zmm0
  9179eb:	62 f2 d5 48 7f d1    	vpermt2pd zmm2,zmm5,zmm1
  9179f1:	62 f1 fd 48 28 35 45 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff768245]        # 7fc40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd0f0>
  9179f8:	82 76 ff 
  9179fb:	62 f2 cd 48 7f c1    	vpermt2pd zmm0,zmm6,zmm1
  917a01:	62 f1 fd 48 28 fb    	vmovapd zmm7,zmm3
  917a07:	62 f2 d5 48 7f fc    	vpermt2pd zmm7,zmm5,zmm4
  917a0d:	62 f2 cd 48 7f dc    	vpermt2pd zmm3,zmm6,zmm4
  917a13:	62 71 fd 48 10 47 04 	vmovupd zmm8,ZMMWORD PTR [rdi+0x100]
  917a1a:	62 f1 fd 48 10 4f 05 	vmovupd zmm1,ZMMWORD PTR [rdi+0x140]
  917a21:	62 51 fd 48 28 c8    	vmovapd zmm9,zmm8
  917a27:	62 72 d5 48 7f c9    	vpermt2pd zmm9,zmm5,zmm1
  917a2d:	62 72 cd 48 7f c1    	vpermt2pd zmm8,zmm6,zmm1
  917a33:	62 71 fd 48 10 57 06 	vmovupd zmm10,ZMMWORD PTR [rdi+0x180]
  917a3a:	62 f1 fd 48 10 4f 07 	vmovupd zmm1,ZMMWORD PTR [rdi+0x1c0]
  917a41:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  917a47:	62 72 d5 48 7f d9    	vpermt2pd zmm11,zmm5,zmm1
  917a4d:	62 72 cd 48 7f d1    	vpermt2pd zmm10,zmm6,zmm1
  917a53:	62 71 fd 48 10 6f 08 	vmovupd zmm13,ZMMWORD PTR [rdi+0x200]
  917a5a:	62 f1 fd 48 10 4f 09 	vmovupd zmm1,ZMMWORD PTR [rdi+0x240]
  917a61:	62 51 fd 48 28 e5    	vmovapd zmm12,zmm13
  917a67:	62 72 d5 48 7f e1    	vpermt2pd zmm12,zmm5,zmm1
  917a6d:	62 72 cd 48 7f e9    	vpermt2pd zmm13,zmm6,zmm1
  917a73:	62 71 fd 48 10 77 0a 	vmovupd zmm14,ZMMWORD PTR [rdi+0x280]
  917a7a:	62 f1 fd 48 10 4f 0b 	vmovupd zmm1,ZMMWORD PTR [rdi+0x2c0]
  917a81:	62 f2 8d 48 77 e9    	vpermi2pd zmm5,zmm14,zmm1
  917a87:	62 72 cd 48 7f f1    	vpermt2pd zmm14,zmm6,zmm1
  917a8d:	62 d1 bd 48 58 f5    	vaddpd zmm6,zmm8,zmm13
  917a93:	62 71 fd 48 58 fe    	vaddpd zmm15,zmm0,zmm6
  917a99:	62 e1 8d 48 58 c3    	vaddpd zmm16,zmm14,zmm3
  917a9f:	62 a1 ad 48 58 c8    	vaddpd zmm17,zmm10,zmm16
  917aa5:	62 b1 85 48 58 c9    	vaddpd zmm1,zmm15,zmm17
  917aab:	62 c1 b5 48 58 d4    	vaddpd zmm18,zmm9,zmm12
  917ab1:	62 a1 ed 48 58 da    	vaddpd zmm19,zmm2,zmm18
  917ab7:	62 e1 d5 48 58 e7    	vaddpd zmm20,zmm5,zmm7
  917abd:	62 a1 a5 48 58 ec    	vaddpd zmm21,zmm11,zmm20
  917ac3:	62 b1 e5 40 58 e5    	vaddpd zmm4,zmm19,zmm21
  917ac9:	62 e2 fd 48 19 35 c5 	vbroadcastsd zmm22,QWORD PTR [rip+0xffffffffff75cfc5]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  917ad0:	cf 75 ff 
  917ad3:	62 f2 cd 40 bc c6    	vfnmadd231pd zmm0,zmm22,zmm6
  917ad9:	62 d1 b5 48 5c f4    	vsubpd zmm6,zmm9,zmm12
  917adf:	62 72 fd 48 19 0d 37 	vbroadcastsd zmm9,QWORD PTR [rip+0xffffffffff75d137]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  917ae6:	d1 75 ff 
  917ae9:	62 d1 cd 48 59 f1    	vmulpd zmm6,zmm6,zmm9
  917aef:	62 e1 fd 48 58 fe    	vaddpd zmm23,zmm0,zmm6
  917af5:	62 32 cd 40 bc d0    	vfnmadd231pd zmm10,zmm22,zmm16
  917afb:	62 f1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm7
  917b01:	62 d1 d5 48 59 e9    	vmulpd zmm5,zmm5,zmm9
  917b07:	62 f1 ad 48 58 fd    	vaddpd zmm7,zmm10,zmm5
  917b0d:	62 71 c5 40 5c e7    	vsubpd zmm12,zmm23,zmm7
  917b13:	62 b2 cd 40 bc d2    	vfnmadd231pd zmm2,zmm22,zmm18
  917b19:	62 51 bd 48 5c c5    	vsubpd zmm8,zmm8,zmm13
  917b1f:	62 51 bd 48 59 c1    	vmulpd zmm8,zmm8,zmm9
  917b25:	62 51 ed 48 5c e8    	vsubpd zmm13,zmm2,zmm8
  917b2b:	62 32 dd 40 bc de    	vfnmadd231pd zmm11,zmm20,zmm22
  917b31:	62 f1 8d 48 5c db    	vsubpd zmm3,zmm14,zmm3
  917b37:	62 d1 e5 48 59 d9    	vmulpd zmm3,zmm3,zmm9
  917b3d:	62 71 a5 48 5c f3    	vsubpd zmm14,zmm11,zmm3
  917b43:	62 51 95 48 5c ce    	vsubpd zmm9,zmm13,zmm14
  917b49:	62 f1 fd 48 5c c6    	vsubpd zmm0,zmm0,zmm6
  917b4f:	62 f1 ad 48 5c ed    	vsubpd zmm5,zmm10,zmm5
  917b55:	62 f1 fd 48 58 f5    	vaddpd zmm6,zmm0,zmm5
  917b5b:	62 f1 bd 48 58 d2    	vaddpd zmm2,zmm8,zmm2
  917b61:	62 51 e5 48 58 c3    	vaddpd zmm8,zmm3,zmm11
  917b67:	62 51 ed 48 58 d0    	vaddpd zmm10,zmm2,zmm8
  917b6d:	62 31 85 48 5c d9    	vsubpd zmm11,zmm15,zmm17
  917b73:	62 b1 e5 40 5c dd    	vsubpd zmm3,zmm19,zmm21
  917b79:	62 f1 c5 40 58 ff    	vaddpd zmm7,zmm23,zmm7
  917b7f:	62 51 95 48 58 f6    	vaddpd zmm14,zmm13,zmm14
  917b85:	62 f1 fd 48 5c c5    	vsubpd zmm0,zmm0,zmm5
  917b8b:	62 51 ed 48 5c f8    	vsubpd zmm15,zmm2,zmm8
  917b91:	62 71 fd 48 10 2d cd 	vmovupd zmm13,ZMMWORD PTR [rip+0xffffffffff7af1cd]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  917b98:	f1 7a ff 
  917b9b:	62 f1 fd 48 28 d1    	vmovapd zmm2,zmm1
  917ba1:	62 f2 95 48 7f d7    	vpermt2pd zmm2,zmm13,zmm7
  917ba7:	62 e1 fd 48 10 05 f7 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff7af1f7]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  917bae:	f1 7a ff 
  917bb1:	62 f2 fd 40 7f cf    	vpermt2pd zmm1,zmm16,zmm7
  917bb7:	62 d1 fd 48 28 ec    	vmovapd zmm5,zmm12
  917bbd:	62 f2 95 48 7f e8    	vpermt2pd zmm5,zmm13,zmm0
  917bc3:	62 72 fd 40 7f e0    	vpermt2pd zmm12,zmm16,zmm0
  917bc9:	62 a1 f5 00 57 c9    	vxorpd xmm17,xmm17,xmm17
  917bcf:	62 f1 fd 48 28 c6    	vmovapd zmm0,zmm6
  917bd5:	62 b2 95 48 7f c1    	vpermt2pd zmm0,zmm13,zmm17
  917bdb:	62 b2 fd 40 7f f1    	vpermt2pd zmm6,zmm16,zmm17
  917be1:	62 d1 fd 48 28 fb    	vmovapd zmm7,zmm11
  917be7:	62 b2 95 48 7f f9    	vpermt2pd zmm7,zmm13,zmm17
  917bed:	62 32 fd 40 7f d9    	vpermt2pd zmm11,zmm16,zmm17
  917bf3:	62 e1 fd 48 10 15 eb 	vmovupd zmm18,ZMMWORD PTR [rip+0xffffffffff7af0eb]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  917bfa:	f0 7a ff 
  917bfd:	62 71 fd 48 28 c2    	vmovapd zmm8,zmm2
  917c03:	62 72 ed 40 7f c0    	vpermt2pd zmm8,zmm18,zmm0
  917c09:	62 e1 fd 48 10 1d 15 	vmovupd zmm19,ZMMWORD PTR [rip+0xffffffffff7af115]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  917c10:	f1 7a ff 
  917c13:	62 f2 e5 40 7f d0    	vpermt2pd zmm2,zmm19,zmm0
  917c19:	62 e1 fd 48 28 e5    	vmovapd zmm20,zmm5
  917c1f:	62 e2 ed 40 7f e7    	vpermt2pd zmm20,zmm18,zmm7
  917c25:	62 f2 e5 40 7f ef    	vpermt2pd zmm5,zmm19,zmm7
  917c2b:	62 f1 fd 48 28 f9    	vmovapd zmm7,zmm1
  917c31:	62 f2 ed 40 7f fe    	vpermt2pd zmm7,zmm18,zmm6
  917c37:	62 f2 e5 40 7f ce    	vpermt2pd zmm1,zmm19,zmm6
  917c3d:	62 c1 fd 48 28 ec    	vmovapd zmm21,zmm12
  917c43:	62 c2 ed 40 7f eb    	vpermt2pd zmm21,zmm18,zmm11
  917c49:	62 52 e5 40 7f e3    	vpermt2pd zmm12,zmm19,zmm11
  917c4f:	62 b1 bd 48 14 c4    	vunpcklpd zmm0,zmm8,zmm20
  917c55:	62 b1 bd 48 15 f4    	vunpckhpd zmm6,zmm8,zmm20
  917c5b:	62 71 ed 48 14 c5    	vunpcklpd zmm8,zmm2,zmm5
  917c61:	62 f1 ed 48 15 d5    	vunpckhpd zmm2,zmm2,zmm5
  917c67:	62 31 c5 48 14 dd    	vunpcklpd zmm11,zmm7,zmm21
  917c6d:	62 b1 c5 48 15 ed    	vunpckhpd zmm5,zmm7,zmm21
  917c73:	62 d1 f5 48 14 fc    	vunpcklpd zmm7,zmm1,zmm12
  917c79:	62 d1 f5 48 15 cc    	vunpckhpd zmm1,zmm1,zmm12
  917c7f:	62 71 fd 48 28 e4    	vmovapd zmm12,zmm4
  917c85:	62 52 95 48 7f e6    	vpermt2pd zmm12,zmm13,zmm14
  917c8b:	62 d2 fd 40 7f e6    	vpermt2pd zmm4,zmm16,zmm14
  917c91:	62 51 fd 48 28 f1    	vmovapd zmm14,zmm9
  917c97:	62 52 95 48 7f f7    	vpermt2pd zmm14,zmm13,zmm15
  917c9d:	62 52 fd 40 7f cf    	vpermt2pd zmm9,zmm16,zmm15
  917ca3:	62 51 fd 48 28 fa    	vmovapd zmm15,zmm10
  917ca9:	62 32 95 48 7f f9    	vpermt2pd zmm15,zmm13,zmm17
  917caf:	62 32 fd 40 7f d1    	vpermt2pd zmm10,zmm16,zmm17
  917cb5:	62 32 e5 48 77 e9    	vpermi2pd zmm13,zmm3,zmm17
  917cbb:	62 b2 fd 40 7f d9    	vpermt2pd zmm3,zmm16,zmm17
  917cc1:	62 c1 fd 48 28 c4    	vmovapd zmm16,zmm12
  917cc7:	62 c2 ed 40 7f c7    	vpermt2pd zmm16,zmm18,zmm15
  917ccd:	62 52 e5 40 7f e7    	vpermt2pd zmm12,zmm19,zmm15
  917cd3:	62 51 fd 48 28 fe    	vmovapd zmm15,zmm14
  917cd9:	62 52 ed 40 7f fd    	vpermt2pd zmm15,zmm18,zmm13
  917cdf:	62 52 e5 40 7f f5    	vpermt2pd zmm14,zmm19,zmm13
  917ce5:	62 71 fd 48 28 ec    	vmovapd zmm13,zmm4
  917ceb:	62 52 ed 40 7f ea    	vpermt2pd zmm13,zmm18,zmm10
  917cf1:	62 d2 e5 40 7f e2    	vpermt2pd zmm4,zmm19,zmm10
  917cf7:	62 e2 b5 48 77 d3    	vpermi2pd zmm18,zmm9,zmm3
  917cfd:	62 72 e5 40 7f cb    	vpermt2pd zmm9,zmm19,zmm3
  917d03:	62 d1 fd 40 14 df    	vunpcklpd zmm3,zmm16,zmm15
  917d09:	62 c1 fd 40 15 cf    	vunpckhpd zmm17,zmm16,zmm15
  917d0f:	62 c1 9d 48 14 e6    	vunpcklpd zmm20,zmm12,zmm14
  917d15:	62 51 9d 48 15 e6    	vunpckhpd zmm12,zmm12,zmm14
  917d1b:	62 31 95 48 14 f2    	vunpcklpd zmm14,zmm13,zmm18
  917d21:	62 a1 95 48 15 c2    	vunpckhpd zmm16,zmm13,zmm18
  917d27:	62 51 dd 48 15 d1    	vunpckhpd zmm10,zmm4,zmm9
  917d2d:	62 c1 dd 48 14 e9    	vunpcklpd zmm21,zmm4,zmm9
  917d33:	62 e1 fd 48 10 5a 02 	vmovupd zmm19,ZMMWORD PTR [rdx+0x80]
  917d3a:	62 f1 fd 48 10 62 03 	vmovupd zmm4,ZMMWORD PTR [rdx+0xc0]
  917d41:	62 e1 fd 48 10 52 04 	vmovupd zmm18,ZMMWORD PTR [rdx+0x100]
  917d48:	62 e1 fd 48 10 72 05 	vmovupd zmm22,ZMMWORD PTR [rdx+0x140]
  917d4f:	62 71 fd 48 10 7a 06 	vmovupd zmm15,ZMMWORD PTR [rdx+0x180]
  917d56:	62 71 fd 48 10 6a 07 	vmovupd zmm13,ZMMWORD PTR [rdx+0x1c0]
  917d5d:	62 e1 fd 48 10 7a 08 	vmovupd zmm23,ZMMWORD PTR [rdx+0x200]
  917d64:	62 61 fd 48 10 42 09 	vmovupd zmm24,ZMMWORD PTR [rdx+0x240]
  917d6b:	62 31 a5 48 59 cf    	vmulpd zmm9,zmm11,zmm23
  917d71:	62 12 8d 48 bc c8    	vfnmadd231pd zmm9,zmm14,zmm24
  917d77:	62 31 8d 48 59 f7    	vmulpd zmm14,zmm14,zmm23
  917d7d:	62 e1 fd 48 10 7a 0a 	vmovupd zmm23,ZMMWORD PTR [rdx+0x280]
  917d84:	62 12 a5 48 b8 f0    	vfmadd231pd zmm14,zmm11,zmm24
  917d8a:	62 61 fd 48 10 42 0b 	vmovupd zmm24,ZMMWORD PTR [rdx+0x2c0]
  917d91:	62 31 bd 48 59 da    	vmulpd zmm11,zmm8,zmm18
  917d97:	62 32 dd 40 bc de    	vfnmadd231pd zmm11,zmm20,zmm22
  917d9d:	62 a1 dd 40 59 e2    	vmulpd zmm20,zmm20,zmm18
  917da3:	62 61 fd 48 10 4a 0c 	vmovupd zmm25,ZMMWORD PTR [rdx+0x300]
  917daa:	62 a2 bd 48 b8 e6    	vfmadd231pd zmm20,zmm8,zmm22
  917db0:	62 71 fd 48 10 42 0d 	vmovupd zmm8,ZMMWORD PTR [rdx+0x340]
  917db7:	62 81 c5 48 59 d1    	vmulpd zmm18,zmm7,zmm25
  917dbd:	62 c2 d5 40 bc d0    	vfnmadd231pd zmm18,zmm21,zmm8
  917dc3:	62 81 d5 40 59 e9    	vmulpd zmm21,zmm21,zmm25
  917dc9:	62 e1 fd 48 10 72 0e 	vmovupd zmm22,ZMMWORD PTR [rdx+0x380]
  917dd0:	62 c2 c5 48 b8 e8    	vfmadd231pd zmm21,zmm7,zmm8
  917dd6:	62 61 fd 48 10 4a 0f 	vmovupd zmm25,ZMMWORD PTR [rdx+0x3c0]
  917ddd:	62 21 cd 48 59 d3    	vmulpd zmm26,zmm6,zmm19
  917de3:	62 62 f5 40 bc d4    	vfnmadd231pd zmm26,zmm17,zmm4
  917de9:	62 a1 f5 40 59 db    	vmulpd zmm19,zmm17,zmm19
  917def:	62 d1 fd 48 58 f9    	vaddpd zmm7,zmm0,zmm9
  917df5:	62 e2 cd 48 b8 dc    	vfmadd231pd zmm19,zmm6,zmm4
  917dfb:	62 a1 a5 48 58 ca    	vaddpd zmm17,zmm11,zmm18
  917e01:	62 b1 d5 48 59 f7    	vmulpd zmm6,zmm5,zmm23
  917e07:	62 92 fd 40 bc f0    	vfnmadd231pd zmm6,zmm16,zmm24
  917e0d:	62 a1 fd 40 59 c7    	vmulpd zmm16,zmm16,zmm23
  917e13:	62 b1 c5 48 58 e1    	vaddpd zmm4,zmm7,zmm17
  917e19:	62 82 d5 48 b8 c0    	vfmadd231pd zmm16,zmm5,zmm24
  917e1f:	62 71 ad 40 58 c6    	vaddpd zmm8,zmm26,zmm6
  917e25:	62 d1 ed 48 59 ef    	vmulpd zmm5,zmm2,zmm15
  917e2b:	62 d2 9d 48 bc ed    	vfnmadd231pd zmm5,zmm12,zmm13
  917e31:	62 51 9d 48 59 e7    	vmulpd zmm12,zmm12,zmm15
  917e37:	62 31 f5 48 59 fe    	vmulpd zmm15,zmm1,zmm22
  917e3d:	62 12 ad 48 bc f9    	vfnmadd231pd zmm15,zmm10,zmm25
  917e43:	62 52 ed 48 b8 e5    	vfmadd231pd zmm12,zmm2,zmm13
  917e49:	62 51 d5 48 58 ef    	vaddpd zmm13,zmm5,zmm15
  917e4f:	62 d1 bd 48 58 d5    	vaddpd zmm2,zmm8,zmm13
  917e55:	62 31 ad 48 59 d6    	vmulpd zmm10,zmm10,zmm22
  917e5b:	62 e1 8d 48 58 f3    	vaddpd zmm22,zmm14,zmm3
  917e61:	62 12 f5 48 b8 d1    	vfmadd231pd zmm10,zmm1,zmm25
  917e67:	62 a1 dd 40 58 fd    	vaddpd zmm23,zmm20,zmm21
  917e6d:	62 b1 c5 40 58 ce    	vaddpd zmm1,zmm23,zmm22
  917e73:	62 51 fd 48 5c c9    	vsubpd zmm9,zmm0,zmm9
  917e79:	62 21 e5 40 58 c0    	vaddpd zmm24,zmm19,zmm16
  917e7f:	62 a1 dd 40 5c e5    	vsubpd zmm20,zmm20,zmm21
  917e85:	62 c1 9d 48 58 ea    	vaddpd zmm21,zmm12,zmm10
  917e8b:	62 f1 ad 40 5c c6    	vsubpd zmm0,zmm26,zmm6
  917e91:	62 b1 bd 40 58 f5    	vaddpd zmm6,zmm24,zmm21
  917e97:	62 a1 e5 40 5c c0    	vsubpd zmm16,zmm19,zmm16
  917e9d:	62 a1 b5 48 58 dc    	vaddpd zmm19,zmm9,zmm20
  917ea3:	62 51 9d 48 5c e2    	vsubpd zmm12,zmm12,zmm10
  917ea9:	62 31 fd 48 58 d0    	vaddpd zmm10,zmm0,zmm16
  917eaf:	62 d1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm15
  917eb5:	62 72 fd 48 19 3d e1 	vbroadcastsd zmm15,QWORD PTR [rip+0xffffffffff75cfe1]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  917ebc:	cf 75 ff 
  917ebf:	62 41 ad 48 59 cf    	vmulpd zmm25,zmm10,zmm15
  917ec5:	62 51 e5 48 5c f6    	vsubpd zmm14,zmm3,zmm14
  917ecb:	62 f1 9d 48 5c dd    	vsubpd zmm3,zmm12,zmm5
  917ed1:	62 41 e5 48 59 d7    	vmulpd zmm26,zmm3,zmm15
  917ed7:	62 51 ed 40 5c db    	vsubpd zmm11,zmm18,zmm11
  917edd:	62 81 b5 40 58 d2    	vaddpd zmm18,zmm25,zmm26
  917ee3:	62 f1 fd 40 5c d8    	vsubpd zmm3,zmm16,zmm0
  917ee9:	62 31 e5 40 58 d2    	vaddpd zmm10,zmm19,zmm18
  917eef:	62 d1 d5 48 58 ec    	vaddpd zmm5,zmm5,zmm12
  917ef5:	c5 fd 28 05 03 ee 75 	vmovapd ymm0,YMMWORD PTR [rip+0xffffffffff75ee03]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  917efc:	ff 
  917efd:	62 51 e5 48 59 e7    	vmulpd zmm12,zmm3,zmm15
  917f03:	62 51 d5 48 59 ff    	vmulpd zmm15,zmm5,zmm15
  917f09:	62 c1 a5 48 58 c6    	vaddpd zmm16,zmm11,zmm14
  917f0f:	62 a1 c5 48 5c c9    	vsubpd zmm17,zmm7,zmm17
  917f15:	62 41 9d 48 5c df    	vsubpd zmm27,zmm12,zmm15
  917f1b:	62 a1 bd 40 5c ed    	vsubpd zmm21,zmm24,zmm21
  917f21:	62 91 fd 40 58 db    	vaddpd zmm3,zmm16,zmm27
  917f27:	62 a1 cd 40 5c f7    	vsubpd zmm22,zmm22,zmm23
  917f2d:	62 f1 fd 48 28 eb    	vmovapd zmm5,zmm3
  917f33:	62 d2 fd 48 7f ea    	vpermt2pd zmm5,zmm0,zmm10
  917f39:	62 51 95 48 5c e8    	vsubpd zmm13,zmm13,zmm8
  917f3f:	62 a1 f5 40 58 fd    	vaddpd zmm23,zmm17,zmm21
  917f45:	62 a1 b5 48 5c e4    	vsubpd zmm20,zmm9,zmm20
  917f4b:	62 d1 cd 40 58 fd    	vaddpd zmm7,zmm22,zmm13
  917f51:	62 41 9d 48 58 c7    	vaddpd zmm24,zmm12,zmm15
  917f57:	62 71 fd 48 28 c7    	vmovapd zmm8,zmm7
  917f5d:	62 32 fd 48 7f c7    	vpermt2pd zmm8,zmm0,zmm23
  917f63:	62 41 8d 48 5c e3    	vsubpd zmm28,zmm14,zmm11
  917f69:	62 01 dd 40 58 e8    	vaddpd zmm29,zmm20,zmm24
  917f6f:	62 01 ad 40 5c c9    	vsubpd zmm25,zmm26,zmm25
  917f75:	62 11 9d 40 58 c9    	vaddpd zmm9,zmm28,zmm25
  917f7b:	62 a1 e5 40 5c d2    	vsubpd zmm18,zmm19,zmm18
  917f81:	62 51 fd 48 28 e1    	vmovapd zmm12,zmm9
  917f87:	62 12 fd 48 7f e5    	vpermt2pd zmm12,zmm0,zmm29
  917f8d:	62 11 fd 40 5c db    	vsubpd zmm11,zmm16,zmm27
  917f93:	62 e1 dd 48 5c c2    	vsubpd zmm16,zmm4,zmm2
  917f99:	62 a1 f5 40 5c cd    	vsubpd zmm17,zmm17,zmm21
  917f9f:	62 71 f5 48 5c f6    	vsubpd zmm14,zmm1,zmm6
  917fa5:	62 51 cd 40 5c ed    	vsubpd zmm13,zmm22,zmm13
  917fab:	62 51 fd 48 28 fe    	vmovapd zmm15,zmm14
  917fb1:	62 32 fd 48 7f f8    	vpermt2pd zmm15,zmm0,zmm16
  917fb7:	62 81 dd 40 5c d8    	vsubpd zmm19,zmm20,zmm24
  917fbd:	62 c1 fd 48 28 e3    	vmovapd zmm20,zmm11
  917fc3:	62 a2 fd 48 7f e2    	vpermt2pd zmm20,zmm0,zmm18
  917fc9:	62 81 9d 40 5c e9    	vsubpd zmm21,zmm28,zmm25
  917fcf:	62 c1 fd 48 28 f5    	vmovapd zmm22,zmm13
  917fd5:	62 a2 fd 48 7f f1    	vpermt2pd zmm22,zmm0,zmm17
  917fdb:	62 f1 f5 48 58 ce    	vaddpd zmm1,zmm1,zmm6
  917fe1:	62 b1 fd 48 28 f5    	vmovapd zmm6,zmm21
  917fe7:	62 b2 fd 48 7f f3    	vpermt2pd zmm6,zmm0,zmm19
  917fed:	62 f1 dd 48 58 d2    	vaddpd zmm2,zmm4,zmm2
  917ff3:	62 f2 f5 48 77 c2    	vpermi2pd zmm0,zmm1,zmm2
  917ff9:	62 f1 fd 48 28 25 7d 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff767c7d]        # 7fc80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd130>
  918000:	7c 76 ff 
  918003:	62 f2 dd 48 7f ca    	vpermt2pd zmm1,zmm4,zmm2
  918009:	62 d2 dd 48 7f da    	vpermt2pd zmm3,zmm4,zmm10
  91800f:	62 b2 dd 48 7f ff    	vpermt2pd zmm7,zmm4,zmm23
  918015:	62 12 dd 48 7f cd    	vpermt2pd zmm9,zmm4,zmm29
  91801b:	62 32 dd 48 7f f0    	vpermt2pd zmm14,zmm4,zmm16
  918021:	62 32 dd 48 7f da    	vpermt2pd zmm11,zmm4,zmm18
  918027:	62 32 dd 48 7f e9    	vpermt2pd zmm13,zmm4,zmm17
  91802d:	62 a2 dd 48 7f eb    	vpermt2pd zmm21,zmm4,zmm19
  918033:	62 f1 fd 48 11 0e    	vmovupd ZMMWORD PTR [rsi],zmm1
  918039:	c5 fd 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm0
  91803e:	62 f1 fd 48 11 9e 60 	vmovupd ZMMWORD PTR [rsi+0x60],zmm3
  918045:	00 00 00 
  918048:	c5 fd 11 ae a0 00 00 	vmovupd YMMWORD PTR [rsi+0xa0],ymm5
  91804f:	00 
  918050:	62 f1 fd 48 11 7e 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm7
  918057:	c5 7d 11 86 00 01 00 	vmovupd YMMWORD PTR [rsi+0x100],ymm8
  91805e:	00 
  91805f:	62 71 fd 48 11 8e 20 	vmovupd ZMMWORD PTR [rsi+0x120],zmm9
  918066:	01 00 00 
  918069:	c5 7d 11 a6 60 01 00 	vmovupd YMMWORD PTR [rsi+0x160],ymm12
  918070:	00 
  918071:	62 71 fd 48 11 76 06 	vmovupd ZMMWORD PTR [rsi+0x180],zmm14
  918078:	c5 7d 11 be c0 01 00 	vmovupd YMMWORD PTR [rsi+0x1c0],ymm15
  91807f:	00 
  918080:	62 71 fd 48 11 9e e0 	vmovupd ZMMWORD PTR [rsi+0x1e0],zmm11
  918087:	01 00 00 
  91808a:	62 e1 fd 28 11 66 11 	vmovupd YMMWORD PTR [rsi+0x220],ymm20
  918091:	62 71 fd 48 11 6e 09 	vmovupd ZMMWORD PTR [rsi+0x240],zmm13
  918098:	62 e1 fd 28 11 76 14 	vmovupd YMMWORD PTR [rsi+0x280],ymm22
  91809f:	62 e1 fd 48 11 ae a0 	vmovupd ZMMWORD PTR [rsi+0x2a0],zmm21
  9180a6:	02 00 00 
  9180a9:	c5 fd 11 b6 e0 02 00 	vmovupd YMMWORD PTR [rsi+0x2e0],ymm6
  9180b0:	00 
  9180b1:	c5 f8 77             	vzeroupper
  9180b4:	c3                   	ret
