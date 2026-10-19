
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000937bc0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  937bc0:	62 f1 fd 48 28 1d 36 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff74a836]        # 82400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xf8b0>
  937bc7:	a8 74 ff 
  937bca:	62 f1 fd 48 10 17    	vmovupd zmm2,ZMMWORD PTR [rdi]
  937bd0:	62 f1 fd 48 10 67 01 	vmovupd zmm4,ZMMWORD PTR [rdi+0x40]
  937bd7:	62 f1 fd 48 10 6f 02 	vmovupd zmm5,ZMMWORD PTR [rdi+0x80]
  937bde:	62 f1 fd 48 10 77 03 	vmovupd zmm6,ZMMWORD PTR [rdi+0xc0]
  937be5:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  937be9:	62 f1 fd 48 28 fa    	vmovapd zmm7,zmm2
  937bef:	62 f2 e5 48 7f f8    	vpermt2pd zmm7,zmm3,zmm0
  937bf5:	62 f1 fd 48 28 0d 41 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff74a841]        # 82440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xf8f0>
  937bfc:	a8 74 ff 
  937bff:	62 f2 f5 48 7f d0    	vpermt2pd zmm2,zmm1,zmm0
  937c05:	62 71 fd 48 28 c4    	vmovapd zmm8,zmm4
  937c0b:	62 72 e5 48 7f c0    	vpermt2pd zmm8,zmm3,zmm0
  937c11:	62 f2 f5 48 7f e0    	vpermt2pd zmm4,zmm1,zmm0
  937c17:	62 71 fd 48 28 cd    	vmovapd zmm9,zmm5
  937c1d:	62 72 e5 48 7f c8    	vpermt2pd zmm9,zmm3,zmm0
  937c23:	62 f2 f5 48 7f e8    	vpermt2pd zmm5,zmm1,zmm0
  937c29:	62 71 fd 48 28 d6    	vmovapd zmm10,zmm6
  937c2f:	62 72 e5 48 7f d0    	vpermt2pd zmm10,zmm3,zmm0
  937c35:	62 f2 f5 48 7f f0    	vpermt2pd zmm6,zmm1,zmm0
  937c3b:	62 71 fd 48 10 5f 04 	vmovupd zmm11,ZMMWORD PTR [rdi+0x100]
  937c42:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  937c48:	62 72 e5 48 7f e0    	vpermt2pd zmm12,zmm3,zmm0
  937c4e:	62 72 f5 48 7f d8    	vpermt2pd zmm11,zmm1,zmm0
  937c54:	62 71 fd 48 10 6f 05 	vmovupd zmm13,ZMMWORD PTR [rdi+0x140]
  937c5b:	62 f2 95 48 77 d8    	vpermi2pd zmm3,zmm13,zmm0
  937c61:	62 72 f5 48 7f e8    	vpermt2pd zmm13,zmm1,zmm0
  937c67:	62 51 d5 48 58 f3    	vaddpd zmm14,zmm5,zmm11
  937c6d:	62 51 ed 48 58 fe    	vaddpd zmm15,zmm2,zmm14
  937c73:	62 e1 95 48 58 c4    	vaddpd zmm16,zmm13,zmm4
  937c79:	62 a1 cd 48 58 c8    	vaddpd zmm17,zmm6,zmm16
  937c7f:	62 a1 85 48 58 d1    	vaddpd zmm18,zmm15,zmm17
  937c85:	62 c1 b5 48 58 dc    	vaddpd zmm19,zmm9,zmm12
  937c8b:	62 a1 c5 48 58 e3    	vaddpd zmm20,zmm7,zmm19
  937c91:	62 c1 e5 48 58 e8    	vaddpd zmm21,zmm3,zmm8
  937c97:	62 a1 ad 48 58 f5    	vaddpd zmm22,zmm10,zmm21
  937c9d:	62 b1 dd 40 58 ce    	vaddpd zmm1,zmm20,zmm22
  937ca3:	62 e2 fd 48 19 3d eb 	vbroadcastsd zmm23,QWORD PTR [rip+0xffffffffff73cdeb]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  937caa:	cd 73 ff 
  937cad:	62 d2 c5 40 bc d6    	vfnmadd231pd zmm2,zmm23,zmm14
  937cb3:	62 51 b5 48 5c cc    	vsubpd zmm9,zmm9,zmm12
  937cb9:	62 72 fd 48 19 25 5d 	vbroadcastsd zmm12,QWORD PTR [rip+0xffffffffff73cf5d]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  937cc0:	cf 73 ff 
  937cc3:	62 51 b5 48 59 cc    	vmulpd zmm9,zmm9,zmm12
  937cc9:	62 51 ed 48 58 f1    	vaddpd zmm14,zmm2,zmm9
  937ccf:	62 b2 c5 40 bc f0    	vfnmadd231pd zmm6,zmm23,zmm16
  937cd5:	62 d1 e5 48 5c d8    	vsubpd zmm3,zmm3,zmm8
  937cdb:	62 d1 e5 48 59 dc    	vmulpd zmm3,zmm3,zmm12
  937ce1:	62 71 cd 48 58 c3    	vaddpd zmm8,zmm6,zmm3
  937ce7:	62 c1 8d 48 5c c0    	vsubpd zmm16,zmm14,zmm8
  937ced:	62 b2 c5 40 bc fb    	vfnmadd231pd zmm7,zmm23,zmm19
  937cf3:	62 d1 d5 48 5c eb    	vsubpd zmm5,zmm5,zmm11
  937cf9:	62 d1 d5 48 59 ec    	vmulpd zmm5,zmm5,zmm12
  937cff:	62 71 c5 48 5c dd    	vsubpd zmm11,zmm7,zmm5
  937d05:	62 32 d5 40 bc d7    	vfnmadd231pd zmm10,zmm21,zmm23
  937d0b:	62 f1 95 48 5c e4    	vsubpd zmm4,zmm13,zmm4
  937d11:	62 d1 dd 48 59 e4    	vmulpd zmm4,zmm4,zmm12
  937d17:	62 71 ad 48 5c e4    	vsubpd zmm12,zmm10,zmm4
  937d1d:	62 51 a5 48 5c ec    	vsubpd zmm13,zmm11,zmm12
  937d23:	62 d1 ed 48 5c d1    	vsubpd zmm2,zmm2,zmm9
  937d29:	62 f1 cd 48 5c db    	vsubpd zmm3,zmm6,zmm3
  937d2f:	62 f1 ed 48 58 f3    	vaddpd zmm6,zmm2,zmm3
  937d35:	62 f1 d5 48 58 ef    	vaddpd zmm5,zmm5,zmm7
  937d3b:	62 d1 dd 48 58 e2    	vaddpd zmm4,zmm4,zmm10
  937d41:	62 f1 d5 48 58 fc    	vaddpd zmm7,zmm5,zmm4
  937d47:	62 31 85 48 5c c9    	vsubpd zmm9,zmm15,zmm17
  937d4d:	62 31 dd 40 5c d6    	vsubpd zmm10,zmm20,zmm22
  937d53:	62 51 8d 48 58 c0    	vaddpd zmm8,zmm14,zmm8
  937d59:	62 51 a5 48 58 dc    	vaddpd zmm11,zmm11,zmm12
  937d5f:	62 f1 ed 48 5c d3    	vsubpd zmm2,zmm2,zmm3
  937d65:	62 f1 d5 48 5c dc    	vsubpd zmm3,zmm5,zmm4
  937d6b:	62 f1 fd 48 10 25 f3 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff78eff3]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  937d72:	ef 78 ff 
  937d75:	62 c2 dd 48 7f d0    	vpermt2pd zmm18,zmm4,zmm8
  937d7b:	62 e2 dd 48 7f c2    	vpermt2pd zmm16,zmm4,zmm2
  937d81:	62 f2 dd 48 7f f0    	vpermt2pd zmm6,zmm4,zmm0
  937d87:	62 72 dd 48 7f c8    	vpermt2pd zmm9,zmm4,zmm0
  937d8d:	62 f1 fd 48 10 15 51 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff78ef51]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  937d94:	ef 78 ff 
  937d97:	62 b1 fd 48 28 ea    	vmovapd zmm5,zmm18
  937d9d:	62 f2 ed 48 7f ee    	vpermt2pd zmm5,zmm2,zmm6
  937da3:	62 71 fd 48 10 05 7b 	vmovupd zmm8,ZMMWORD PTR [rip+0xffffffffff78ef7b]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  937daa:	ef 78 ff 
  937dad:	62 e2 bd 48 7f d6    	vpermt2pd zmm18,zmm8,zmm6
  937db3:	62 b1 fd 48 28 f0    	vmovapd zmm6,zmm16
  937db9:	62 d2 ed 48 7f f1    	vpermt2pd zmm6,zmm2,zmm9
  937dbf:	62 c2 bd 48 7f c1    	vpermt2pd zmm16,zmm8,zmm9
  937dc5:	62 71 d5 48 14 ce    	vunpcklpd zmm9,zmm5,zmm6
  937dcb:	62 f1 d5 48 15 ee    	vunpckhpd zmm5,zmm5,zmm6
  937dd1:	62 b1 ed 40 14 f0    	vunpcklpd zmm6,zmm18,zmm16
  937dd7:	62 31 ed 40 15 e0    	vunpckhpd zmm12,zmm18,zmm16
  937ddd:	62 d2 dd 48 7f cb    	vpermt2pd zmm1,zmm4,zmm11
  937de3:	62 72 dd 48 7f eb    	vpermt2pd zmm13,zmm4,zmm3
  937de9:	62 f2 dd 48 7f f8    	vpermt2pd zmm7,zmm4,zmm0
  937def:	62 72 dd 48 7f d0    	vpermt2pd zmm10,zmm4,zmm0
  937df5:	62 f1 fd 48 28 c1    	vmovapd zmm0,zmm1
  937dfb:	62 f2 ed 48 7f c7    	vpermt2pd zmm0,zmm2,zmm7
  937e01:	62 f2 bd 48 7f cf    	vpermt2pd zmm1,zmm8,zmm7
  937e07:	62 d2 95 48 77 d2    	vpermi2pd zmm2,zmm13,zmm10
  937e0d:	62 52 bd 48 7f ea    	vpermt2pd zmm13,zmm8,zmm10
  937e13:	62 f1 fd 48 14 da    	vunpcklpd zmm3,zmm0,zmm2
  937e19:	62 f1 fd 48 15 c2    	vunpckhpd zmm0,zmm0,zmm2
  937e1f:	62 d1 f5 48 14 d5    	vunpcklpd zmm2,zmm1,zmm13
  937e25:	62 d1 f5 48 15 cd    	vunpckhpd zmm1,zmm1,zmm13
  937e2b:	62 f1 fd 48 10 62 02 	vmovupd zmm4,ZMMWORD PTR [rdx+0x80]
  937e32:	62 f1 fd 48 10 7a 03 	vmovupd zmm7,ZMMWORD PTR [rdx+0xc0]
  937e39:	62 71 fd 48 10 42 04 	vmovupd zmm8,ZMMWORD PTR [rdx+0x100]
  937e40:	62 71 fd 48 10 52 05 	vmovupd zmm10,ZMMWORD PTR [rdx+0x140]
  937e47:	62 71 fd 48 10 5a 06 	vmovupd zmm11,ZMMWORD PTR [rdx+0x180]
  937e4e:	62 71 fd 48 10 6a 07 	vmovupd zmm13,ZMMWORD PTR [rdx+0x1c0]
  937e55:	62 51 cd 48 59 f0    	vmulpd zmm14,zmm6,zmm8
  937e5b:	62 52 ed 48 bc f2    	vfnmadd231pd zmm14,zmm2,zmm10
  937e61:	62 51 b5 48 58 fe    	vaddpd zmm15,zmm9,zmm14
  937e67:	62 e1 d5 48 59 c4    	vmulpd zmm16,zmm5,zmm4
  937e6d:	62 e2 fd 48 bc c7    	vfnmadd231pd zmm16,zmm0,zmm7
  937e73:	62 c1 9d 48 59 cb    	vmulpd zmm17,zmm12,zmm11
  937e79:	62 c2 f5 48 bc cd    	vfnmadd231pd zmm17,zmm1,zmm13
  937e7f:	62 a1 fd 40 58 d1    	vaddpd zmm18,zmm16,zmm17
  937e85:	62 d1 ed 48 59 d0    	vmulpd zmm2,zmm2,zmm8
  937e8b:	62 d2 cd 48 b8 d2    	vfmadd231pd zmm2,zmm6,zmm10
  937e91:	62 f1 ed 48 58 f3    	vaddpd zmm6,zmm2,zmm3
  937e97:	62 f1 fd 48 59 c4    	vmulpd zmm0,zmm0,zmm4
  937e9d:	62 f2 d5 48 b8 c7    	vfmadd231pd zmm0,zmm5,zmm7
  937ea3:	62 d1 f5 48 59 cb    	vmulpd zmm1,zmm1,zmm11
  937ea9:	62 d2 9d 48 b8 cd    	vfmadd231pd zmm1,zmm12,zmm13
  937eaf:	62 f1 fd 48 58 e1    	vaddpd zmm4,zmm0,zmm1
  937eb5:	62 d1 b5 48 5c ee    	vsubpd zmm5,zmm9,zmm14
  937ebb:	62 f1 fd 48 5c c1    	vsubpd zmm0,zmm0,zmm1
  937ec1:	62 f1 d5 48 58 c8    	vaddpd zmm1,zmm5,zmm0
  937ec7:	62 f1 e5 48 5c d2    	vsubpd zmm2,zmm3,zmm2
  937ecd:	62 b1 f5 40 5c d8    	vsubpd zmm3,zmm17,zmm16
  937ed3:	62 f1 ed 48 58 fb    	vaddpd zmm7,zmm2,zmm3
  937ed9:	c5 7d 28 05 1f ee 73 	vmovapd ymm8,YMMWORD PTR [rip+0xffffffffff73ee1f]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  937ee0:	ff 
  937ee1:	62 71 fd 48 28 cf    	vmovapd zmm9,zmm7
  937ee7:	62 72 bd 48 7f c9    	vpermt2pd zmm9,zmm8,zmm1
  937eed:	62 31 85 48 5c d2    	vsubpd zmm10,zmm15,zmm18
  937ef3:	62 71 cd 48 5c dc    	vsubpd zmm11,zmm6,zmm4
  937ef9:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  937eff:	62 52 bd 48 7f e2    	vpermt2pd zmm12,zmm8,zmm10
  937f05:	62 f1 d5 48 5c c0    	vsubpd zmm0,zmm5,zmm0
  937f0b:	62 f1 ed 48 5c d3    	vsubpd zmm2,zmm2,zmm3
  937f11:	62 f1 fd 48 28 da    	vmovapd zmm3,zmm2
  937f17:	62 f2 bd 48 7f d8    	vpermt2pd zmm3,zmm8,zmm0
  937f1d:	62 f1 cd 48 58 e4    	vaddpd zmm4,zmm6,zmm4
  937f23:	62 b1 85 48 58 ea    	vaddpd zmm5,zmm15,zmm18
  937f29:	62 72 dd 48 77 c5    	vpermi2pd zmm8,zmm4,zmm5
  937f2f:	62 f1 fd 48 28 35 47 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff74a547]        # 82480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xf930>
  937f36:	a5 74 ff 
  937f39:	62 f2 cd 48 7f e5    	vpermt2pd zmm4,zmm6,zmm5
  937f3f:	62 f1 fd 48 11 26    	vmovupd ZMMWORD PTR [rsi],zmm4
  937f45:	c5 7d 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm8
  937f4a:	62 f2 cd 48 7f f9    	vpermt2pd zmm7,zmm6,zmm1
  937f50:	62 f1 fd 48 11 be 60 	vmovupd ZMMWORD PTR [rsi+0x60],zmm7
  937f57:	00 00 00 
  937f5a:	c5 7d 11 8e a0 00 00 	vmovupd YMMWORD PTR [rsi+0xa0],ymm9
  937f61:	00 
  937f62:	62 52 cd 48 7f da    	vpermt2pd zmm11,zmm6,zmm10
  937f68:	62 71 fd 48 11 5e 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm11
  937f6f:	c5 7d 11 a6 00 01 00 	vmovupd YMMWORD PTR [rsi+0x100],ymm12
  937f76:	00 
  937f77:	62 f2 cd 48 7f d0    	vpermt2pd zmm2,zmm6,zmm0
  937f7d:	62 f1 fd 48 11 96 20 	vmovupd ZMMWORD PTR [rsi+0x120],zmm2
  937f84:	01 00 00 
  937f87:	c5 fd 11 9e 60 01 00 	vmovupd YMMWORD PTR [rsi+0x160],ymm3
  937f8e:	00 
  937f8f:	c5 f8 77             	vzeroupper
  937f92:	c3                   	ret
