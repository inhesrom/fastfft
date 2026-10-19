
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000934a40 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  934a40:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  934a45:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  934a4c:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  934a50:	c5 fd 10 5f 30       	vmovupd ymm3,YMMWORD PTR [rdi+0x30]
  934a55:	c5 fd 10 67 60       	vmovupd ymm4,YMMWORD PTR [rdi+0x60]
  934a5a:	62 f3 75 48 18 e8 02 	vinsertf32x4 zmm5,zmm1,xmm0,0x2
  934a61:	62 f1 fd 48 28 35 55 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff74d655]        # 820c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xf570>
  934a68:	d6 74 ff 
  934a6b:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  934a6f:	62 f1 fd 48 28 fd    	vmovapd zmm7,zmm5
  934a75:	62 f2 cd 48 7f fa    	vpermt2pd zmm7,zmm6,zmm2
  934a7b:	62 f1 fd 48 28 05 7b 	vmovapd zmm0,ZMMWORD PTR [rip+0xffffffffff74d67b]        # 82100 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xf5b0>
  934a82:	d6 74 ff 
  934a85:	62 f2 fd 48 7f ea    	vpermt2pd zmm5,zmm0,zmm2
  934a8b:	c5 fb 12 4f 58       	vmovddup xmm1,QWORD PTR [rdi+0x58]
  934a90:	c4 e3 71 0d 4f 50 01 	vblendpd xmm1,xmm1,XMMWORD PTR [rdi+0x50],0x1
  934a97:	62 f3 65 48 18 c9 02 	vinsertf32x4 zmm1,zmm3,xmm1,0x2
  934a9e:	62 f1 fd 48 28 d9    	vmovapd zmm3,zmm1
  934aa4:	62 f2 cd 48 7f da    	vpermt2pd zmm3,zmm6,zmm2
  934aaa:	62 f2 fd 48 7f ca    	vpermt2pd zmm1,zmm0,zmm2
  934ab0:	c5 7b 12 87 88 00 00 	vmovddup xmm8,QWORD PTR [rdi+0x88]
  934ab7:	00 
  934ab8:	c4 63 39 0d 87 80 00 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+0x80],0x1
  934abf:	00 00 01 
  934ac2:	62 d3 5d 48 18 e0 02 	vinsertf32x4 zmm4,zmm4,xmm8,0x2
  934ac9:	62 f2 dd 48 77 f2    	vpermi2pd zmm6,zmm4,zmm2
  934acf:	62 f2 fd 48 7f e2    	vpermt2pd zmm4,zmm0,zmm2
  934ad5:	62 71 e5 48 58 c6    	vaddpd zmm8,zmm3,zmm6
  934adb:	62 51 c5 48 58 c8    	vaddpd zmm9,zmm7,zmm8
  934ae1:	62 71 f5 48 58 d4    	vaddpd zmm10,zmm1,zmm4
  934ae7:	62 51 d5 48 58 da    	vaddpd zmm11,zmm5,zmm10
  934aed:	62 f2 fd 48 19 05 a1 	vbroadcastsd zmm0,QWORD PTR [rip+0xffffffffff73ffa1]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  934af4:	ff 73 ff 
  934af7:	62 d2 fd 48 bc f8    	vfnmadd231pd zmm7,zmm0,zmm8
  934afd:	62 f1 f5 48 5c e4    	vsubpd zmm4,zmm1,zmm4
  934b03:	62 f2 fd 48 19 0d 13 	vbroadcastsd zmm1,QWORD PTR [rip+0xffffffffff740113]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  934b0a:	01 74 ff 
  934b0d:	62 f1 dd 48 59 e1    	vmulpd zmm4,zmm4,zmm1
  934b13:	62 71 c5 48 58 c4    	vaddpd zmm8,zmm7,zmm4
  934b19:	62 d2 fd 48 bc ea    	vfnmadd231pd zmm5,zmm0,zmm10
  934b1f:	62 f1 e5 48 5c de    	vsubpd zmm3,zmm3,zmm6
  934b25:	62 f1 e5 48 59 d9    	vmulpd zmm3,zmm3,zmm1
  934b2b:	62 f1 d5 48 5c f3    	vsubpd zmm6,zmm5,zmm3
  934b31:	62 f1 c5 48 5c e4    	vsubpd zmm4,zmm7,zmm4
  934b37:	62 f1 e5 48 58 dd    	vaddpd zmm3,zmm3,zmm5
  934b3d:	62 f1 fd 48 10 2d 21 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff792221]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  934b44:	22 79 ff 
  934b47:	62 72 d5 48 7f ca    	vpermt2pd zmm9,zmm5,zmm2
  934b4d:	62 72 d5 48 7f c2    	vpermt2pd zmm8,zmm5,zmm2
  934b53:	62 f2 d5 48 7f e2    	vpermt2pd zmm4,zmm5,zmm2
  934b59:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
  934b5d:	62 f2 d5 48 7f ff    	vpermt2pd zmm7,zmm5,zmm7
  934b63:	62 71 fd 48 10 15 7b 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff79217b]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  934b6a:	21 79 ff 
  934b6d:	62 51 fd 48 28 e1    	vmovapd zmm12,zmm9
  934b73:	62 72 ad 48 7f e4    	vpermt2pd zmm12,zmm10,zmm4
  934b79:	62 71 fd 48 10 2d a5 	vmovupd zmm13,ZMMWORD PTR [rip+0xffffffffff7921a5]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  934b80:	21 79 ff 
  934b83:	62 72 95 48 7f cc    	vpermt2pd zmm9,zmm13,zmm4
  934b89:	62 d1 fd 48 28 e0    	vmovapd zmm4,zmm8
  934b8f:	62 f2 ad 48 7f e7    	vpermt2pd zmm4,zmm10,zmm7
  934b95:	62 72 95 48 7f c7    	vpermt2pd zmm8,zmm13,zmm7
  934b9b:	62 51 b5 48 14 c0    	vunpcklpd zmm8,zmm9,zmm8
  934ba1:	62 71 9d 48 14 cc    	vunpcklpd zmm9,zmm12,zmm4
  934ba7:	62 f1 9d 48 15 e4    	vunpckhpd zmm4,zmm12,zmm4
  934bad:	62 72 d5 48 7f da    	vpermt2pd zmm11,zmm5,zmm2
  934bb3:	62 f2 d5 48 7f f2    	vpermt2pd zmm6,zmm5,zmm2
  934bb9:	62 f2 d5 48 7f da    	vpermt2pd zmm3,zmm5,zmm2
  934bbf:	62 d1 fd 48 28 d3    	vmovapd zmm2,zmm11
  934bc5:	62 f2 ad 48 7f d3    	vpermt2pd zmm2,zmm10,zmm3
  934bcb:	62 72 95 48 7f db    	vpermt2pd zmm11,zmm13,zmm3
  934bd1:	62 72 cd 48 77 d7    	vpermi2pd zmm10,zmm6,zmm7
  934bd7:	62 f2 95 48 7f f7    	vpermt2pd zmm6,zmm13,zmm7
  934bdd:	62 f1 a5 48 14 de    	vunpcklpd zmm3,zmm11,zmm6
  934be3:	62 d1 ed 48 14 ea    	vunpcklpd zmm5,zmm2,zmm10
  934be9:	62 d1 ed 48 15 d2    	vunpckhpd zmm2,zmm2,zmm10
  934bef:	62 f1 fd 48 10 72 02 	vmovupd zmm6,ZMMWORD PTR [rdx+0x80]
  934bf6:	62 f1 fd 48 10 7a 03 	vmovupd zmm7,ZMMWORD PTR [rdx+0xc0]
  934bfd:	62 71 fd 48 10 52 04 	vmovupd zmm10,ZMMWORD PTR [rdx+0x100]
  934c04:	62 71 fd 48 10 5a 05 	vmovupd zmm11,ZMMWORD PTR [rdx+0x140]
  934c0b:	62 71 dd 48 59 e6    	vmulpd zmm12,zmm4,zmm6
  934c11:	62 72 ed 48 bc e7    	vfnmadd231pd zmm12,zmm2,zmm7
  934c17:	62 51 bd 48 59 ea    	vmulpd zmm13,zmm8,zmm10
  934c1d:	62 52 e5 48 bc eb    	vfnmadd231pd zmm13,zmm3,zmm11
  934c23:	62 51 9d 48 58 f5    	vaddpd zmm14,zmm12,zmm13
  934c29:	62 f1 ed 48 59 d6    	vmulpd zmm2,zmm2,zmm6
  934c2f:	62 f2 dd 48 b8 d7    	vfmadd231pd zmm2,zmm4,zmm7
  934c35:	62 d1 e5 48 59 da    	vmulpd zmm3,zmm3,zmm10
  934c3b:	62 d2 bd 48 b8 db    	vfmadd231pd zmm3,zmm8,zmm11
  934c41:	62 f1 ed 48 58 e3    	vaddpd zmm4,zmm2,zmm3
  934c47:	62 f1 fd 48 28 f0    	vmovapd zmm6,zmm0
  934c4d:	62 d2 8d 48 ac f1    	vfnmadd213pd zmm6,zmm14,zmm9
  934c53:	62 f1 ed 48 5c d3    	vsubpd zmm2,zmm2,zmm3
  934c59:	62 f1 ed 48 59 d1    	vmulpd zmm2,zmm2,zmm1
  934c5f:	62 f1 cd 48 58 da    	vaddpd zmm3,zmm6,zmm2
  934c65:	62 f2 dd 48 ac c5    	vfnmadd213pd zmm0,zmm4,zmm5
  934c6b:	62 d1 9d 48 5c fd    	vsubpd zmm7,zmm12,zmm13
  934c71:	62 f1 c5 48 59 c9    	vmulpd zmm1,zmm7,zmm1
  934c77:	62 f1 fd 48 5c f9    	vsubpd zmm7,zmm0,zmm1
  934c7d:	62 f1 cd 48 5c d2    	vsubpd zmm2,zmm6,zmm2
  934c83:	62 f1 fd 48 58 c1    	vaddpd zmm0,zmm0,zmm1
  934c89:	62 d1 b5 48 58 ce    	vaddpd zmm1,zmm9,zmm14
  934c8f:	62 f1 d5 48 58 e4    	vaddpd zmm4,zmm5,zmm4
  934c95:	62 f1 fd 48 28 2d a1 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff74d4a1]        # 82140 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xf5f0>
  934c9c:	d4 74 ff 
  934c9f:	62 f2 d5 48 7f cc    	vpermt2pd zmm1,zmm5,zmm4
  934ca5:	62 f3 7d 48 19 4e 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm1,0x2
  934cac:	02 
  934cad:	c5 fd 11 0e          	vmovupd YMMWORD PTR [rsi],ymm1
  934cb1:	62 f2 d5 48 7f df    	vpermt2pd zmm3,zmm5,zmm7
  934cb7:	62 f3 7d 48 19 5e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm3,0x2
  934cbe:	02 
  934cbf:	c5 fd 11 5e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm3
  934cc4:	62 f2 d5 48 7f d0    	vpermt2pd zmm2,zmm5,zmm0
  934cca:	62 f3 7d 48 19 56 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm2,0x2
  934cd1:	02 
  934cd2:	c5 fd 11 56 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm2
  934cd7:	c5 f8 77             	vzeroupper
  934cda:	c3                   	ret
