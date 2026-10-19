
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000970dc0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  970dc0:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  970dc5:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  970dcc:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  970dd0:	c5 fd 10 5f 30       	vmovupd ymm3,YMMWORD PTR [rdi+0x30]
  970dd5:	c5 fd 10 67 60       	vmovupd ymm4,YMMWORD PTR [rdi+0x60]
  970dda:	62 f3 75 48 18 e8 02 	vinsertf32x4 zmm5,zmm1,xmm0,0x2
  970de1:	62 f1 fd 48 28 0d 15 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff715f15]        # 86d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x141b0>
  970de8:	5f 71 ff 
  970deb:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  970def:	62 f1 fd 48 28 f5    	vmovapd zmm6,zmm5
  970df5:	62 f2 f5 48 7f f2    	vpermt2pd zmm6,zmm1,zmm2
  970dfb:	62 f1 fd 48 28 05 3b 	vmovapd zmm0,ZMMWORD PTR [rip+0xffffffffff715f3b]        # 86d40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x141f0>
  970e02:	5f 71 ff 
  970e05:	62 f2 fd 48 7f ea    	vpermt2pd zmm5,zmm0,zmm2
  970e0b:	c5 fb 12 7f 58       	vmovddup xmm7,QWORD PTR [rdi+0x58]
  970e10:	c4 e3 41 0d 7f 50 01 	vblendpd xmm7,xmm7,XMMWORD PTR [rdi+0x50],0x1
  970e17:	62 f3 65 48 18 df 02 	vinsertf32x4 zmm3,zmm3,xmm7,0x2
  970e1e:	62 f1 fd 48 28 fb    	vmovapd zmm7,zmm3
  970e24:	62 f2 f5 48 7f fa    	vpermt2pd zmm7,zmm1,zmm2
  970e2a:	62 f2 fd 48 7f da    	vpermt2pd zmm3,zmm0,zmm2
  970e30:	c5 7b 12 87 88 00 00 	vmovddup xmm8,QWORD PTR [rdi+0x88]
  970e37:	00 
  970e38:	c4 63 39 0d 87 80 00 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+0x80],0x1
  970e3f:	00 00 01 
  970e42:	62 d3 5d 48 18 e0 02 	vinsertf32x4 zmm4,zmm4,xmm8,0x2
  970e49:	62 f2 dd 48 77 ca    	vpermi2pd zmm1,zmm4,zmm2
  970e4f:	62 f2 fd 48 7f e2    	vpermt2pd zmm4,zmm0,zmm2
  970e55:	62 71 e5 48 58 c4    	vaddpd zmm8,zmm3,zmm4
  970e5b:	62 51 d5 48 58 c8    	vaddpd zmm9,zmm5,zmm8
  970e61:	62 71 c5 48 58 d1    	vaddpd zmm10,zmm7,zmm1
  970e67:	62 51 cd 48 58 da    	vaddpd zmm11,zmm6,zmm10
  970e6d:	62 f2 fd 48 19 05 21 	vbroadcastsd zmm0,QWORD PTR [rip+0xffffffffff703c21]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  970e74:	3c 70 ff 
  970e77:	62 d2 fd 48 bc e8    	vfnmadd231pd zmm5,zmm0,zmm8
  970e7d:	62 f1 c5 48 5c f9    	vsubpd zmm7,zmm7,zmm1
  970e83:	62 f2 fd 48 19 0d 93 	vbroadcastsd zmm1,QWORD PTR [rip+0xffffffffff703d93]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  970e8a:	3d 70 ff 
  970e8d:	62 f1 c5 48 59 f9    	vmulpd zmm7,zmm7,zmm1
  970e93:	62 71 d5 48 58 c7    	vaddpd zmm8,zmm5,zmm7
  970e99:	62 d2 fd 48 bc f2    	vfnmadd231pd zmm6,zmm0,zmm10
  970e9f:	62 f1 e5 48 5c dc    	vsubpd zmm3,zmm3,zmm4
  970ea5:	62 f1 e5 48 59 d9    	vmulpd zmm3,zmm3,zmm1
  970eab:	62 f1 cd 48 5c e3    	vsubpd zmm4,zmm6,zmm3
  970eb1:	62 f1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm7
  970eb7:	62 f1 e5 48 58 de    	vaddpd zmm3,zmm3,zmm6
  970ebd:	62 f1 fd 48 10 35 a1 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff755ea1]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  970ec4:	5e 75 ff 
  970ec7:	62 72 cd 48 7f ca    	vpermt2pd zmm9,zmm6,zmm2
  970ecd:	62 72 cd 48 7f c2    	vpermt2pd zmm8,zmm6,zmm2
  970ed3:	62 f2 cd 48 7f ea    	vpermt2pd zmm5,zmm6,zmm2
  970ed9:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
  970edd:	62 f2 cd 48 7f ff    	vpermt2pd zmm7,zmm6,zmm7
  970ee3:	62 71 fd 48 10 15 fb 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff755dfb]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  970eea:	5d 75 ff 
  970eed:	62 51 fd 48 28 e1    	vmovapd zmm12,zmm9
  970ef3:	62 72 ad 48 7f e5    	vpermt2pd zmm12,zmm10,zmm5
  970ef9:	62 71 fd 48 10 2d 25 	vmovupd zmm13,ZMMWORD PTR [rip+0xffffffffff755e25]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  970f00:	5e 75 ff 
  970f03:	62 72 95 48 7f cd    	vpermt2pd zmm9,zmm13,zmm5
  970f09:	62 d1 fd 48 28 e8    	vmovapd zmm5,zmm8
  970f0f:	62 f2 ad 48 7f ef    	vpermt2pd zmm5,zmm10,zmm7
  970f15:	62 72 95 48 7f c7    	vpermt2pd zmm8,zmm13,zmm7
  970f1b:	62 51 b5 48 14 c0    	vunpcklpd zmm8,zmm9,zmm8
  970f21:	62 71 9d 48 14 cd    	vunpcklpd zmm9,zmm12,zmm5
  970f27:	62 f1 9d 48 15 ed    	vunpckhpd zmm5,zmm12,zmm5
  970f2d:	62 72 cd 48 7f da    	vpermt2pd zmm11,zmm6,zmm2
  970f33:	62 f2 cd 48 7f e2    	vpermt2pd zmm4,zmm6,zmm2
  970f39:	62 f2 cd 48 7f da    	vpermt2pd zmm3,zmm6,zmm2
  970f3f:	62 d1 fd 48 28 d3    	vmovapd zmm2,zmm11
  970f45:	62 f2 ad 48 7f d3    	vpermt2pd zmm2,zmm10,zmm3
  970f4b:	62 72 95 48 7f db    	vpermt2pd zmm11,zmm13,zmm3
  970f51:	62 72 dd 48 77 d7    	vpermi2pd zmm10,zmm4,zmm7
  970f57:	62 f2 95 48 7f e7    	vpermt2pd zmm4,zmm13,zmm7
  970f5d:	62 f1 a5 48 14 dc    	vunpcklpd zmm3,zmm11,zmm4
  970f63:	62 d1 ed 48 14 e2    	vunpcklpd zmm4,zmm2,zmm10
  970f69:	62 d1 ed 48 15 d2    	vunpckhpd zmm2,zmm2,zmm10
  970f6f:	62 f1 fd 48 10 72 02 	vmovupd zmm6,ZMMWORD PTR [rdx+0x80]
  970f76:	62 f1 fd 48 10 7a 03 	vmovupd zmm7,ZMMWORD PTR [rdx+0xc0]
  970f7d:	62 71 fd 48 10 52 04 	vmovupd zmm10,ZMMWORD PTR [rdx+0x100]
  970f84:	62 71 fd 48 10 5a 05 	vmovupd zmm11,ZMMWORD PTR [rdx+0x140]
  970f8b:	62 71 d5 48 59 e6    	vmulpd zmm12,zmm5,zmm6
  970f91:	62 72 ed 48 bc e7    	vfnmadd231pd zmm12,zmm2,zmm7
  970f97:	62 51 bd 48 59 ea    	vmulpd zmm13,zmm8,zmm10
  970f9d:	62 52 e5 48 bc eb    	vfnmadd231pd zmm13,zmm3,zmm11
  970fa3:	62 51 9d 48 58 f5    	vaddpd zmm14,zmm12,zmm13
  970fa9:	62 f1 ed 48 59 d6    	vmulpd zmm2,zmm2,zmm6
  970faf:	62 f2 d5 48 b8 d7    	vfmadd231pd zmm2,zmm5,zmm7
  970fb5:	62 d1 e5 48 59 da    	vmulpd zmm3,zmm3,zmm10
  970fbb:	62 d2 bd 48 b8 db    	vfmadd231pd zmm3,zmm8,zmm11
  970fc1:	62 f1 ed 48 58 eb    	vaddpd zmm5,zmm2,zmm3
  970fc7:	62 f1 fd 48 28 f0    	vmovapd zmm6,zmm0
  970fcd:	62 d2 8d 48 ac f1    	vfnmadd213pd zmm6,zmm14,zmm9
  970fd3:	62 f1 ed 48 5c d3    	vsubpd zmm2,zmm2,zmm3
  970fd9:	62 f1 ed 48 59 d1    	vmulpd zmm2,zmm2,zmm1
  970fdf:	62 f1 cd 48 58 da    	vaddpd zmm3,zmm6,zmm2
  970fe5:	62 f2 d5 48 ac c4    	vfnmadd213pd zmm0,zmm5,zmm4
  970feb:	62 d1 9d 48 5c fd    	vsubpd zmm7,zmm12,zmm13
  970ff1:	62 f1 c5 48 59 c9    	vmulpd zmm1,zmm7,zmm1
  970ff7:	62 f1 fd 48 5c f9    	vsubpd zmm7,zmm0,zmm1
  970ffd:	62 f1 cd 48 5c d2    	vsubpd zmm2,zmm6,zmm2
  971003:	62 f1 fd 48 58 c1    	vaddpd zmm0,zmm0,zmm1
  971009:	62 f1 dd 48 58 cd    	vaddpd zmm1,zmm4,zmm5
  97100f:	62 d1 b5 48 58 e6    	vaddpd zmm4,zmm9,zmm14
  971015:	62 f1 fd 48 28 2d 61 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff715d61]        # 86d80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14230>
  97101c:	5d 71 ff 
  97101f:	62 f2 d5 48 7f cc    	vpermt2pd zmm1,zmm5,zmm4
  971025:	62 f3 7d 48 19 4e 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm1,0x2
  97102c:	02 
  97102d:	c5 fd 11 0e          	vmovupd YMMWORD PTR [rsi],ymm1
  971031:	62 f2 d5 48 7f fb    	vpermt2pd zmm7,zmm5,zmm3
  971037:	62 f3 7d 48 19 7e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm7,0x2
  97103e:	02 
  97103f:	c5 fd 11 7e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm7
  971044:	62 f2 d5 48 7f c2    	vpermt2pd zmm0,zmm5,zmm2
  97104a:	62 f3 7d 48 19 46 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm0,0x2
  971051:	02 
  971052:	c5 fd 11 46 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm0
  971057:	c5 f8 77             	vzeroupper
  97105a:	c3                   	ret
