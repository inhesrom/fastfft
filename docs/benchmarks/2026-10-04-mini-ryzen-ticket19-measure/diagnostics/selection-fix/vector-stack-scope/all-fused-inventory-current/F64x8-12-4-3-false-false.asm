
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000948cc0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  948cc0:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  948cc5:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  948ccc:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  948cd0:	c5 fd 10 57 30       	vmovupd ymm2,YMMWORD PTR [rdi+0x30]
  948cd5:	c5 fd 10 5f 60       	vmovupd ymm3,YMMWORD PTR [rdi+0x60]
  948cda:	c5 fd 10 a7 90 00 00 	vmovupd ymm4,YMMWORD PTR [rdi+0x90]
  948ce1:	00 
  948ce2:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  948ce9:	62 f1 fd 48 28 2d 8d 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff73af8d]        # 83c80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x11130>
  948cf0:	af 73 ff 
  948cf3:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  948cf7:	62 f1 fd 48 28 f1    	vmovapd zmm6,zmm1
  948cfd:	62 f2 d5 48 7f f0    	vpermt2pd zmm6,zmm5,zmm0
  948d03:	62 f1 fd 48 28 3d b3 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff73afb3]        # 83cc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x11170>
  948d0a:	af 73 ff 
  948d0d:	c5 7b 12 47 58       	vmovddup xmm8,QWORD PTR [rdi+0x58]
  948d12:	62 f2 c5 48 7f c8    	vpermt2pd zmm1,zmm7,zmm0
  948d18:	c4 63 39 0d 47 50 01 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+0x50],0x1
  948d1f:	62 d3 6d 48 18 d0 02 	vinsertf32x4 zmm2,zmm2,xmm8,0x2
  948d26:	62 71 fd 48 28 c2    	vmovapd zmm8,zmm2
  948d2c:	62 72 d5 48 7f c0    	vpermt2pd zmm8,zmm5,zmm0
  948d32:	c5 7b 12 8f 88 00 00 	vmovddup xmm9,QWORD PTR [rdi+0x88]
  948d39:	00 
  948d3a:	62 f2 c5 48 7f d0    	vpermt2pd zmm2,zmm7,zmm0
  948d40:	c4 63 31 0d 8f 80 00 	vblendpd xmm9,xmm9,XMMWORD PTR [rdi+0x80],0x1
  948d47:	00 00 01 
  948d4a:	62 d3 65 48 18 d9 02 	vinsertf32x4 zmm3,zmm3,xmm9,0x2
  948d51:	62 71 fd 48 28 cb    	vmovapd zmm9,zmm3
  948d57:	62 72 d5 48 7f c8    	vpermt2pd zmm9,zmm5,zmm0
  948d5d:	c5 7b 12 97 b8 00 00 	vmovddup xmm10,QWORD PTR [rdi+0xb8]
  948d64:	00 
  948d65:	62 f2 c5 48 7f d8    	vpermt2pd zmm3,zmm7,zmm0
  948d6b:	c4 63 29 0d 97 b0 00 	vblendpd xmm10,xmm10,XMMWORD PTR [rdi+0xb0],0x1
  948d72:	00 00 01 
  948d75:	62 d3 5d 48 18 e2 02 	vinsertf32x4 zmm4,zmm4,xmm10,0x2
  948d7c:	62 f2 dd 48 77 e8    	vpermi2pd zmm5,zmm4,zmm0
  948d82:	62 f2 c5 48 7f e0    	vpermt2pd zmm4,zmm7,zmm0
  948d88:	62 d1 cd 48 58 f9    	vaddpd zmm7,zmm6,zmm9
  948d8e:	62 71 bd 48 58 d5    	vaddpd zmm10,zmm8,zmm5
  948d94:	62 51 c5 48 58 da    	vaddpd zmm11,zmm7,zmm10
  948d9a:	62 71 f5 48 58 e3    	vaddpd zmm12,zmm1,zmm3
  948da0:	62 71 ed 48 58 ec    	vaddpd zmm13,zmm2,zmm4
  948da6:	62 51 9d 48 58 f5    	vaddpd zmm14,zmm12,zmm13
  948dac:	62 d1 cd 48 5c f1    	vsubpd zmm6,zmm6,zmm9
  948db2:	62 f1 ed 48 5c d4    	vsubpd zmm2,zmm2,zmm4
  948db8:	62 f1 cd 48 58 e2    	vaddpd zmm4,zmm6,zmm2
  948dbe:	62 f1 f5 48 5c cb    	vsubpd zmm1,zmm1,zmm3
  948dc4:	62 d1 d5 48 5c d8    	vsubpd zmm3,zmm5,zmm8
  948dca:	62 f1 e5 48 58 e9    	vaddpd zmm5,zmm3,zmm1
  948dd0:	62 d1 c5 48 5c fa    	vsubpd zmm7,zmm7,zmm10
  948dd6:	62 51 9d 48 5c c5    	vsubpd zmm8,zmm12,zmm13
  948ddc:	62 f1 cd 48 5c d2    	vsubpd zmm2,zmm6,zmm2
  948de2:	62 f1 f5 48 5c cb    	vsubpd zmm1,zmm1,zmm3
  948de8:	62 f1 fd 48 10 1d 76 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff77df76]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  948def:	df 77 ff 
  948df2:	62 72 e5 48 7f d8    	vpermt2pd zmm11,zmm3,zmm0
  948df8:	62 f2 e5 48 7f e0    	vpermt2pd zmm4,zmm3,zmm0
  948dfe:	62 f2 e5 48 7f f8    	vpermt2pd zmm7,zmm3,zmm0
  948e04:	62 f2 e5 48 7f d0    	vpermt2pd zmm2,zmm3,zmm0
  948e0a:	62 f1 fd 48 10 35 d4 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff77ded4]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  948e11:	de 77 ff 
  948e14:	62 51 fd 48 28 cb    	vmovapd zmm9,zmm11
  948e1a:	62 72 cd 48 7f cf    	vpermt2pd zmm9,zmm6,zmm7
  948e20:	62 71 fd 48 10 15 fe 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff77defe]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  948e27:	de 77 ff 
  948e2a:	62 72 ad 48 7f df    	vpermt2pd zmm11,zmm10,zmm7
  948e30:	62 f1 fd 48 28 fc    	vmovapd zmm7,zmm4
  948e36:	62 f2 cd 48 7f fa    	vpermt2pd zmm7,zmm6,zmm2
  948e3c:	62 f2 ad 48 7f e2    	vpermt2pd zmm4,zmm10,zmm2
  948e42:	62 f1 a5 48 14 d4    	vunpcklpd zmm2,zmm11,zmm4
  948e48:	62 f1 b5 48 14 e7    	vunpcklpd zmm4,zmm9,zmm7
  948e4e:	62 f1 b5 48 15 ff    	vunpckhpd zmm7,zmm9,zmm7
  948e54:	62 72 e5 48 7f f0    	vpermt2pd zmm14,zmm3,zmm0
  948e5a:	62 f2 e5 48 7f e8    	vpermt2pd zmm5,zmm3,zmm0
  948e60:	62 72 e5 48 7f c0    	vpermt2pd zmm8,zmm3,zmm0
  948e66:	62 f2 e5 48 7f c8    	vpermt2pd zmm1,zmm3,zmm0
  948e6c:	62 d1 fd 48 28 c6    	vmovapd zmm0,zmm14
  948e72:	62 d2 cd 48 7f c0    	vpermt2pd zmm0,zmm6,zmm8
  948e78:	62 52 ad 48 7f f0    	vpermt2pd zmm14,zmm10,zmm8
  948e7e:	62 f2 d5 48 77 f1    	vpermi2pd zmm6,zmm5,zmm1
  948e84:	62 f2 ad 48 7f e9    	vpermt2pd zmm5,zmm10,zmm1
  948e8a:	62 f1 8d 48 14 cd    	vunpcklpd zmm1,zmm14,zmm5
  948e90:	62 f1 fd 48 14 de    	vunpcklpd zmm3,zmm0,zmm6
  948e96:	62 f1 fd 48 15 c6    	vunpckhpd zmm0,zmm0,zmm6
  948e9c:	62 f1 fd 48 10 6a 02 	vmovupd zmm5,ZMMWORD PTR [rdx+0x80]
  948ea3:	62 f1 fd 48 10 72 03 	vmovupd zmm6,ZMMWORD PTR [rdx+0xc0]
  948eaa:	62 71 fd 48 10 42 04 	vmovupd zmm8,ZMMWORD PTR [rdx+0x100]
  948eb1:	62 71 fd 48 10 4a 05 	vmovupd zmm9,ZMMWORD PTR [rdx+0x140]
  948eb8:	62 71 c5 48 59 d5    	vmulpd zmm10,zmm7,zmm5
  948ebe:	62 72 fd 48 bc d6    	vfnmadd231pd zmm10,zmm0,zmm6
  948ec4:	62 51 ed 48 59 d8    	vmulpd zmm11,zmm2,zmm8
  948eca:	62 52 f5 48 bc d9    	vfnmadd231pd zmm11,zmm1,zmm9
  948ed0:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  948ed6:	62 f1 fd 48 59 c5    	vmulpd zmm0,zmm0,zmm5
  948edc:	62 f2 c5 48 b8 c6    	vfmadd231pd zmm0,zmm7,zmm6
  948ee2:	62 d1 f5 48 59 c8    	vmulpd zmm1,zmm1,zmm8
  948ee8:	62 d2 ed 48 b8 c9    	vfmadd231pd zmm1,zmm2,zmm9
  948eee:	62 f1 fd 48 58 d1    	vaddpd zmm2,zmm0,zmm1
  948ef4:	62 f2 fd 48 19 2d 9a 	vbroadcastsd zmm5,QWORD PTR [rip+0xffffffffff72bb9a]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  948efb:	bb 72 ff 
  948efe:	62 f1 fd 48 28 f5    	vmovapd zmm6,zmm5
  948f04:	62 f2 9d 48 ac f4    	vfnmadd213pd zmm6,zmm12,zmm4
  948f0a:	62 f1 fd 48 5c c1    	vsubpd zmm0,zmm0,zmm1
  948f10:	62 f2 fd 48 19 0d 06 	vbroadcastsd zmm1,QWORD PTR [rip+0xffffffffff72bd06]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  948f17:	bd 72 ff 
  948f1a:	62 f1 fd 48 59 c1    	vmulpd zmm0,zmm0,zmm1
  948f20:	62 f1 cd 48 58 f8    	vaddpd zmm7,zmm6,zmm0
  948f26:	62 f2 ed 48 ac eb    	vfnmadd213pd zmm5,zmm2,zmm3
  948f2c:	62 51 ad 48 5c c3    	vsubpd zmm8,zmm10,zmm11
  948f32:	62 f1 bd 48 59 c9    	vmulpd zmm1,zmm8,zmm1
  948f38:	62 71 d5 48 5c c1    	vsubpd zmm8,zmm5,zmm1
  948f3e:	62 f1 cd 48 5c c0    	vsubpd zmm0,zmm6,zmm0
  948f44:	62 f1 d5 48 58 c9    	vaddpd zmm1,zmm5,zmm1
  948f4a:	62 d1 dd 48 58 e4    	vaddpd zmm4,zmm4,zmm12
  948f50:	62 f1 e5 48 58 d2    	vaddpd zmm2,zmm3,zmm2
  948f56:	62 f1 fd 48 28 1d a0 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff73ada0]        # 83d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x111b0>
  948f5d:	ad 73 ff 
  948f60:	62 f2 e5 48 7f e2    	vpermt2pd zmm4,zmm3,zmm2
  948f66:	62 f1 fd 48 11 26    	vmovupd ZMMWORD PTR [rsi],zmm4
  948f6c:	62 d2 e5 48 7f f8    	vpermt2pd zmm7,zmm3,zmm8
  948f72:	62 f1 fd 48 11 7e 01 	vmovupd ZMMWORD PTR [rsi+0x40],zmm7
  948f79:	62 f2 e5 48 7f c1    	vpermt2pd zmm0,zmm3,zmm1
  948f7f:	62 f1 fd 48 11 46 02 	vmovupd ZMMWORD PTR [rsi+0x80],zmm0
  948f86:	c5 f8 77             	vzeroupper
  948f89:	c3                   	ret
