
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000947a40 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  947a40:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  947a45:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  947a4c:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  947a50:	c5 fd 10 57 30       	vmovupd ymm2,YMMWORD PTR [rdi+0x30]
  947a55:	c5 fd 10 5f 60       	vmovupd ymm3,YMMWORD PTR [rdi+0x60]
  947a5a:	c5 fd 10 a7 90 00 00 	vmovupd ymm4,YMMWORD PTR [rdi+0x90]
  947a61:	00 
  947a62:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  947a69:	62 f1 fd 48 28 2d 0d 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff73c20d]        # 83c80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x11130>
  947a70:	c2 73 ff 
  947a73:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  947a77:	62 f1 fd 48 28 f1    	vmovapd zmm6,zmm1
  947a7d:	62 f2 d5 48 7f f0    	vpermt2pd zmm6,zmm5,zmm0
  947a83:	62 f1 fd 48 28 3d 33 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff73c233]        # 83cc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x11170>
  947a8a:	c2 73 ff 
  947a8d:	c5 7b 12 47 58       	vmovddup xmm8,QWORD PTR [rdi+0x58]
  947a92:	62 f2 c5 48 7f c8    	vpermt2pd zmm1,zmm7,zmm0
  947a98:	c4 63 39 0d 47 50 01 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+0x50],0x1
  947a9f:	62 d3 6d 48 18 d0 02 	vinsertf32x4 zmm2,zmm2,xmm8,0x2
  947aa6:	62 71 fd 48 28 c2    	vmovapd zmm8,zmm2
  947aac:	62 72 d5 48 7f c0    	vpermt2pd zmm8,zmm5,zmm0
  947ab2:	c5 7b 12 8f 88 00 00 	vmovddup xmm9,QWORD PTR [rdi+0x88]
  947ab9:	00 
  947aba:	62 f2 c5 48 7f d0    	vpermt2pd zmm2,zmm7,zmm0
  947ac0:	c4 63 31 0d 8f 80 00 	vblendpd xmm9,xmm9,XMMWORD PTR [rdi+0x80],0x1
  947ac7:	00 00 01 
  947aca:	62 d3 65 48 18 d9 02 	vinsertf32x4 zmm3,zmm3,xmm9,0x2
  947ad1:	62 71 fd 48 28 cb    	vmovapd zmm9,zmm3
  947ad7:	62 72 d5 48 7f c8    	vpermt2pd zmm9,zmm5,zmm0
  947add:	c5 7b 12 97 b8 00 00 	vmovddup xmm10,QWORD PTR [rdi+0xb8]
  947ae4:	00 
  947ae5:	62 f2 c5 48 7f d8    	vpermt2pd zmm3,zmm7,zmm0
  947aeb:	c4 63 29 0d 97 b0 00 	vblendpd xmm10,xmm10,XMMWORD PTR [rdi+0xb0],0x1
  947af2:	00 00 01 
  947af5:	62 d3 5d 48 18 e2 02 	vinsertf32x4 zmm4,zmm4,xmm10,0x2
  947afc:	62 f2 dd 48 77 e8    	vpermi2pd zmm5,zmm4,zmm0
  947b02:	62 f2 c5 48 7f e0    	vpermt2pd zmm4,zmm7,zmm0
  947b08:	62 d1 cd 48 58 f9    	vaddpd zmm7,zmm6,zmm9
  947b0e:	62 71 bd 48 58 d5    	vaddpd zmm10,zmm8,zmm5
  947b14:	62 51 c5 48 58 da    	vaddpd zmm11,zmm7,zmm10
  947b1a:	62 71 f5 48 58 e3    	vaddpd zmm12,zmm1,zmm3
  947b20:	62 71 ed 48 58 ec    	vaddpd zmm13,zmm2,zmm4
  947b26:	62 51 9d 48 58 f5    	vaddpd zmm14,zmm12,zmm13
  947b2c:	62 d1 cd 48 5c f1    	vsubpd zmm6,zmm6,zmm9
  947b32:	62 f1 ed 48 5c d4    	vsubpd zmm2,zmm2,zmm4
  947b38:	62 f1 cd 48 58 e2    	vaddpd zmm4,zmm6,zmm2
  947b3e:	62 f1 f5 48 5c cb    	vsubpd zmm1,zmm1,zmm3
  947b44:	62 d1 d5 48 5c d8    	vsubpd zmm3,zmm5,zmm8
  947b4a:	62 f1 e5 48 58 e9    	vaddpd zmm5,zmm3,zmm1
  947b50:	62 d1 c5 48 5c fa    	vsubpd zmm7,zmm7,zmm10
  947b56:	62 51 9d 48 5c c5    	vsubpd zmm8,zmm12,zmm13
  947b5c:	62 f1 cd 48 5c d2    	vsubpd zmm2,zmm6,zmm2
  947b62:	62 f1 f5 48 5c cb    	vsubpd zmm1,zmm1,zmm3
  947b68:	62 f1 fd 48 10 1d f6 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff77f1f6]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  947b6f:	f1 77 ff 
  947b72:	62 72 e5 48 7f d8    	vpermt2pd zmm11,zmm3,zmm0
  947b78:	62 f2 e5 48 7f e0    	vpermt2pd zmm4,zmm3,zmm0
  947b7e:	62 f2 e5 48 7f f8    	vpermt2pd zmm7,zmm3,zmm0
  947b84:	62 f2 e5 48 7f d0    	vpermt2pd zmm2,zmm3,zmm0
  947b8a:	62 f1 fd 48 10 35 54 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff77f154]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  947b91:	f1 77 ff 
  947b94:	62 51 fd 48 28 cb    	vmovapd zmm9,zmm11
  947b9a:	62 72 cd 48 7f cf    	vpermt2pd zmm9,zmm6,zmm7
  947ba0:	62 71 fd 48 10 15 7e 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff77f17e]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  947ba7:	f1 77 ff 
  947baa:	62 72 ad 48 7f df    	vpermt2pd zmm11,zmm10,zmm7
  947bb0:	62 f1 fd 48 28 fc    	vmovapd zmm7,zmm4
  947bb6:	62 f2 cd 48 7f fa    	vpermt2pd zmm7,zmm6,zmm2
  947bbc:	62 f2 ad 48 7f e2    	vpermt2pd zmm4,zmm10,zmm2
  947bc2:	62 f1 a5 48 14 d4    	vunpcklpd zmm2,zmm11,zmm4
  947bc8:	62 f1 b5 48 14 e7    	vunpcklpd zmm4,zmm9,zmm7
  947bce:	62 f1 b5 48 15 ff    	vunpckhpd zmm7,zmm9,zmm7
  947bd4:	62 72 e5 48 7f f0    	vpermt2pd zmm14,zmm3,zmm0
  947bda:	62 f2 e5 48 7f e8    	vpermt2pd zmm5,zmm3,zmm0
  947be0:	62 72 e5 48 7f c0    	vpermt2pd zmm8,zmm3,zmm0
  947be6:	62 f2 e5 48 7f c8    	vpermt2pd zmm1,zmm3,zmm0
  947bec:	62 d1 fd 48 28 c6    	vmovapd zmm0,zmm14
  947bf2:	62 d2 cd 48 7f c0    	vpermt2pd zmm0,zmm6,zmm8
  947bf8:	62 52 ad 48 7f f0    	vpermt2pd zmm14,zmm10,zmm8
  947bfe:	62 f2 d5 48 77 f1    	vpermi2pd zmm6,zmm5,zmm1
  947c04:	62 f2 ad 48 7f e9    	vpermt2pd zmm5,zmm10,zmm1
  947c0a:	62 f1 8d 48 14 cd    	vunpcklpd zmm1,zmm14,zmm5
  947c10:	62 f1 fd 48 14 de    	vunpcklpd zmm3,zmm0,zmm6
  947c16:	62 f1 fd 48 15 c6    	vunpckhpd zmm0,zmm0,zmm6
  947c1c:	62 f1 fd 48 10 6a 02 	vmovupd zmm5,ZMMWORD PTR [rdx+0x80]
  947c23:	62 f1 fd 48 10 72 03 	vmovupd zmm6,ZMMWORD PTR [rdx+0xc0]
  947c2a:	62 71 fd 48 10 42 04 	vmovupd zmm8,ZMMWORD PTR [rdx+0x100]
  947c31:	62 71 fd 48 10 4a 05 	vmovupd zmm9,ZMMWORD PTR [rdx+0x140]
  947c38:	62 71 c5 48 59 d5    	vmulpd zmm10,zmm7,zmm5
  947c3e:	62 72 fd 48 bc d6    	vfnmadd231pd zmm10,zmm0,zmm6
  947c44:	62 51 ed 48 59 d8    	vmulpd zmm11,zmm2,zmm8
  947c4a:	62 52 f5 48 bc d9    	vfnmadd231pd zmm11,zmm1,zmm9
  947c50:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  947c56:	62 f1 fd 48 59 c5    	vmulpd zmm0,zmm0,zmm5
  947c5c:	62 f2 c5 48 b8 c6    	vfmadd231pd zmm0,zmm7,zmm6
  947c62:	62 d1 f5 48 59 c8    	vmulpd zmm1,zmm1,zmm8
  947c68:	62 d2 ed 48 b8 c9    	vfmadd231pd zmm1,zmm2,zmm9
  947c6e:	62 f1 fd 48 58 d1    	vaddpd zmm2,zmm0,zmm1
  947c74:	62 f2 fd 48 19 2d 1a 	vbroadcastsd zmm5,QWORD PTR [rip+0xffffffffff72ce1a]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  947c7b:	ce 72 ff 
  947c7e:	62 f1 fd 48 28 f5    	vmovapd zmm6,zmm5
  947c84:	62 f2 9d 48 ac f4    	vfnmadd213pd zmm6,zmm12,zmm4
  947c8a:	62 f1 fd 48 5c c1    	vsubpd zmm0,zmm0,zmm1
  947c90:	62 f2 fd 48 19 0d 86 	vbroadcastsd zmm1,QWORD PTR [rip+0xffffffffff72cf86]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  947c97:	cf 72 ff 
  947c9a:	62 f1 fd 48 59 c1    	vmulpd zmm0,zmm0,zmm1
  947ca0:	62 f1 cd 48 58 f8    	vaddpd zmm7,zmm6,zmm0
  947ca6:	62 f2 ed 48 ac eb    	vfnmadd213pd zmm5,zmm2,zmm3
  947cac:	62 51 ad 48 5c c3    	vsubpd zmm8,zmm10,zmm11
  947cb2:	62 f1 bd 48 59 c9    	vmulpd zmm1,zmm8,zmm1
  947cb8:	62 71 d5 48 5c c1    	vsubpd zmm8,zmm5,zmm1
  947cbe:	62 f1 cd 48 5c c0    	vsubpd zmm0,zmm6,zmm0
  947cc4:	62 f1 d5 48 58 c9    	vaddpd zmm1,zmm5,zmm1
  947cca:	62 d1 dd 48 58 e4    	vaddpd zmm4,zmm4,zmm12
  947cd0:	62 f1 e5 48 58 d2    	vaddpd zmm2,zmm3,zmm2
  947cd6:	62 f1 fd 48 28 1d 20 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff73c020]        # 83d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x111b0>
  947cdd:	c0 73 ff 
  947ce0:	62 f2 e5 48 7f e2    	vpermt2pd zmm4,zmm3,zmm2
  947ce6:	62 f1 fd 48 11 26    	vmovupd ZMMWORD PTR [rsi],zmm4
  947cec:	62 d2 e5 48 7f f8    	vpermt2pd zmm7,zmm3,zmm8
  947cf2:	62 f1 fd 48 11 7e 01 	vmovupd ZMMWORD PTR [rsi+0x40],zmm7
  947cf9:	62 f2 e5 48 7f c1    	vpermt2pd zmm0,zmm3,zmm1
  947cff:	62 f1 fd 48 11 46 02 	vmovupd ZMMWORD PTR [rsi+0x80],zmm0
  947d06:	c5 f8 77             	vzeroupper
  947d09:	c3                   	ret
