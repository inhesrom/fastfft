
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000095dcc0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  95dcc0:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  95dcc5:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  95dccc:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  95dcd0:	c5 fd 10 5f 30       	vmovupd ymm3,YMMWORD PTR [rdi+0x30]
  95dcd5:	c5 fd 10 67 60       	vmovupd ymm4,YMMWORD PTR [rdi+0x60]
  95dcda:	c5 fd 10 b7 90 00 00 	vmovupd ymm6,YMMWORD PTR [rdi+0x90]
  95dce1:	00 
  95dce2:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  95dce9:	62 f1 fd 48 28 2d 8d 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff72768d]        # 85380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x12830>
  95dcf0:	76 72 ff 
  95dcf3:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  95dcf7:	62 f1 fd 48 28 d1    	vmovapd zmm2,zmm1
  95dcfd:	62 f2 d5 48 7f d0    	vpermt2pd zmm2,zmm5,zmm0
  95dd03:	62 f1 fd 48 28 3d b3 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff7276b3]        # 853c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x12870>
  95dd0a:	76 72 ff 
  95dd0d:	62 f2 c5 48 7f c8    	vpermt2pd zmm1,zmm7,zmm0
  95dd13:	c5 7b 12 47 58       	vmovddup xmm8,QWORD PTR [rdi+0x58]
  95dd18:	c4 63 39 0d 47 50 01 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+0x50],0x1
  95dd1f:	62 53 65 48 18 c0 02 	vinsertf32x4 zmm8,zmm3,xmm8,0x2
  95dd26:	62 51 fd 48 28 c8    	vmovapd zmm9,zmm8
  95dd2c:	62 72 d5 48 7f c8    	vpermt2pd zmm9,zmm5,zmm0
  95dd32:	62 72 c5 48 7f c0    	vpermt2pd zmm8,zmm7,zmm0
  95dd38:	c5 fb 12 9f 88 00 00 	vmovddup xmm3,QWORD PTR [rdi+0x88]
  95dd3f:	00 
  95dd40:	c4 e3 61 0d 9f 80 00 	vblendpd xmm3,xmm3,XMMWORD PTR [rdi+0x80],0x1
  95dd47:	00 00 01 
  95dd4a:	62 73 5d 48 18 d3 02 	vinsertf32x4 zmm10,zmm4,xmm3,0x2
  95dd51:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  95dd57:	62 72 d5 48 7f d8    	vpermt2pd zmm11,zmm5,zmm0
  95dd5d:	62 72 c5 48 7f d0    	vpermt2pd zmm10,zmm7,zmm0
  95dd63:	c5 fb 12 9f b8 00 00 	vmovddup xmm3,QWORD PTR [rdi+0xb8]
  95dd6a:	00 
  95dd6b:	c4 e3 61 0d 9f b0 00 	vblendpd xmm3,xmm3,XMMWORD PTR [rdi+0xb0],0x1
  95dd72:	00 00 01 
  95dd75:	62 f3 4d 48 18 f3 02 	vinsertf32x4 zmm6,zmm6,xmm3,0x2
  95dd7c:	62 71 fd 48 28 e6    	vmovapd zmm12,zmm6
  95dd82:	62 72 d5 48 7f e0    	vpermt2pd zmm12,zmm5,zmm0
  95dd88:	62 f2 c5 48 7f f0    	vpermt2pd zmm6,zmm7,zmm0
  95dd8e:	c5 fb 12 9f e8 00 00 	vmovddup xmm3,QWORD PTR [rdi+0xe8]
  95dd95:	00 
  95dd96:	c4 e3 61 0d 9f e0 00 	vblendpd xmm3,xmm3,XMMWORD PTR [rdi+0xe0],0x1
  95dd9d:	00 00 01 
  95dda0:	c5 fd 10 a7 c0 00 00 	vmovupd ymm4,YMMWORD PTR [rdi+0xc0]
  95dda7:	00 
  95dda8:	62 73 5d 48 18 eb 02 	vinsertf32x4 zmm13,zmm4,xmm3,0x2
  95ddaf:	62 f2 95 48 77 e8    	vpermi2pd zmm5,zmm13,zmm0
  95ddb5:	62 72 c5 48 7f e8    	vpermt2pd zmm13,zmm7,zmm0
  95ddbb:	62 f1 b5 48 58 fd    	vaddpd zmm7,zmm9,zmm5
  95ddc1:	62 f1 ed 48 58 df    	vaddpd zmm3,zmm2,zmm7
  95ddc7:	62 51 a5 48 58 f4    	vaddpd zmm14,zmm11,zmm12
  95ddcd:	62 d1 e5 48 58 e6    	vaddpd zmm4,zmm3,zmm14
  95ddd3:	62 51 bd 48 58 fd    	vaddpd zmm15,zmm8,zmm13
  95ddd9:	62 d1 f5 48 58 df    	vaddpd zmm3,zmm1,zmm15
  95dddf:	62 e1 ad 48 58 c6    	vaddpd zmm16,zmm10,zmm6
  95dde5:	62 b1 e5 48 58 d8    	vaddpd zmm3,zmm3,zmm16
  95ddeb:	62 e2 fd 48 19 0d 63 	vbroadcastsd zmm17,QWORD PTR [rip+0xffffffffff716c63]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  95ddf2:	6c 71 ff 
  95ddf5:	62 a1 fd 48 28 d1    	vmovapd zmm18,zmm17
  95ddfb:	62 e2 c5 48 a8 d2    	vfmadd213pd zmm18,zmm7,zmm2
  95de01:	62 e2 fd 48 19 1d 0d 	vbroadcastsd zmm19,QWORD PTR [rip+0xffffffffff71720d]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  95de08:	72 71 ff 
  95de0b:	62 a2 8d 48 bc d3    	vfnmadd231pd zmm18,zmm14,zmm19
  95de11:	62 51 bd 48 5c c5    	vsubpd zmm8,zmm8,zmm13
  95de17:	62 f1 ad 48 5c f6    	vsubpd zmm6,zmm10,zmm6
  95de1d:	62 72 fd 48 19 15 a1 	vbroadcastsd zmm10,QWORD PTR [rip+0xffffffffff7169a1]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  95de24:	69 71 ff 
  95de27:	62 51 cd 48 59 ea    	vmulpd zmm13,zmm6,zmm10
  95de2d:	62 e2 fd 48 19 25 99 	vbroadcastsd zmm20,QWORD PTR [rip+0xffffffffff716d99]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  95de34:	6d 71 ff 
  95de37:	62 32 bd 48 b8 ec    	vfmadd231pd zmm13,zmm8,zmm20
  95de3d:	62 c1 ed 40 58 ed    	vaddpd zmm21,zmm18,zmm13
  95de43:	62 a1 fd 48 28 f1    	vmovapd zmm22,zmm17
  95de49:	62 e2 85 48 a8 f1    	vfmadd213pd zmm22,zmm15,zmm1
  95de4f:	62 a2 fd 40 bc f3    	vfnmadd231pd zmm22,zmm16,zmm19
  95de55:	62 f1 b5 48 5c ed    	vsubpd zmm5,zmm9,zmm5
  95de5b:	62 51 a5 48 5c cc    	vsubpd zmm9,zmm11,zmm12
  95de61:	62 51 b5 48 59 da    	vmulpd zmm11,zmm9,zmm10
  95de67:	62 32 d5 48 b8 dc    	vfmadd231pd zmm11,zmm5,zmm20
  95de6d:	62 51 cd 40 5c e3    	vsubpd zmm12,zmm22,zmm11
  95de73:	62 f2 e5 40 bc d7    	vfnmadd231pd zmm2,zmm19,zmm7
  95de79:	62 d2 f5 40 b8 d6    	vfmadd231pd zmm2,zmm17,zmm14
  95de7f:	62 d1 bd 48 59 fa    	vmulpd zmm7,zmm8,zmm10
  95de85:	62 f2 dd 40 bc fe    	vfnmadd231pd zmm7,zmm20,zmm6
  95de8b:	62 f1 ed 48 58 f7    	vaddpd zmm6,zmm2,zmm7
  95de91:	62 b2 85 48 bc cb    	vfnmadd231pd zmm1,zmm15,zmm19
  95de97:	62 b2 fd 40 b8 c9    	vfmadd231pd zmm1,zmm16,zmm17
  95de9d:	62 d1 d5 48 59 ea    	vmulpd zmm5,zmm5,zmm10
  95dea3:	62 b2 b5 48 bc ec    	vfnmadd231pd zmm5,zmm9,zmm20
  95dea9:	62 71 f5 48 5c c5    	vsubpd zmm8,zmm1,zmm5
  95deaf:	62 f1 ed 48 5c d7    	vsubpd zmm2,zmm2,zmm7
  95deb5:	62 f1 d5 48 58 c9    	vaddpd zmm1,zmm5,zmm1
  95debb:	62 d1 ed 40 5c ed    	vsubpd zmm5,zmm18,zmm13
  95dec1:	62 b1 a5 48 58 fe    	vaddpd zmm7,zmm11,zmm22
  95dec7:	62 71 fd 48 10 0d 97 	vmovupd zmm9,ZMMWORD PTR [rip+0xffffffffff768e97]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  95dece:	8e 76 ff 
  95ded1:	62 f2 b5 48 7f e5    	vpermt2pd zmm4,zmm9,zmm5
  95ded7:	62 e2 b5 48 7f e8    	vpermt2pd zmm21,zmm9,zmm0
  95dedd:	62 f2 b5 48 7f f0    	vpermt2pd zmm6,zmm9,zmm0
  95dee3:	62 f2 b5 48 7f d0    	vpermt2pd zmm2,zmm9,zmm0
  95dee9:	62 f1 fd 48 10 2d f5 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff768df5]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  95def0:	8d 76 ff 
  95def3:	62 71 fd 48 28 d4    	vmovapd zmm10,zmm4
  95def9:	62 72 d5 48 7f d6    	vpermt2pd zmm10,zmm5,zmm6
  95deff:	62 71 fd 48 10 1d 1f 	vmovupd zmm11,ZMMWORD PTR [rip+0xffffffffff768e1f]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  95df06:	8e 76 ff 
  95df09:	62 f2 a5 48 7f e6    	vpermt2pd zmm4,zmm11,zmm6
  95df0f:	62 b1 fd 48 28 f5    	vmovapd zmm6,zmm21
  95df15:	62 f2 d5 48 7f f2    	vpermt2pd zmm6,zmm5,zmm2
  95df1b:	62 e2 a5 48 7f ea    	vpermt2pd zmm21,zmm11,zmm2
  95df21:	62 b1 dd 48 14 d5    	vunpcklpd zmm2,zmm4,zmm21
  95df27:	62 f1 ad 48 14 e6    	vunpcklpd zmm4,zmm10,zmm6
  95df2d:	62 f1 ad 48 15 f6    	vunpckhpd zmm6,zmm10,zmm6
  95df33:	62 f2 b5 48 7f df    	vpermt2pd zmm3,zmm9,zmm7
  95df39:	62 72 b5 48 7f e0    	vpermt2pd zmm12,zmm9,zmm0
  95df3f:	62 72 b5 48 7f c0    	vpermt2pd zmm8,zmm9,zmm0
  95df45:	62 f2 b5 48 7f c8    	vpermt2pd zmm1,zmm9,zmm0
  95df4b:	62 f1 fd 48 28 c3    	vmovapd zmm0,zmm3
  95df51:	62 d2 d5 48 7f c0    	vpermt2pd zmm0,zmm5,zmm8
  95df57:	62 d2 a5 48 7f d8    	vpermt2pd zmm3,zmm11,zmm8
  95df5d:	62 f2 9d 48 77 e9    	vpermi2pd zmm5,zmm12,zmm1
  95df63:	62 72 a5 48 7f e1    	vpermt2pd zmm12,zmm11,zmm1
  95df69:	62 d1 e5 48 14 cc    	vunpcklpd zmm1,zmm3,zmm12
  95df6f:	62 f1 fd 48 14 dd    	vunpcklpd zmm3,zmm0,zmm5
  95df75:	62 f1 fd 48 15 c5    	vunpckhpd zmm0,zmm0,zmm5
  95df7b:	62 f1 fd 48 10 6a 02 	vmovupd zmm5,ZMMWORD PTR [rdx+0x80]
  95df82:	62 f1 fd 48 10 7a 03 	vmovupd zmm7,ZMMWORD PTR [rdx+0xc0]
  95df89:	62 71 fd 48 10 42 04 	vmovupd zmm8,ZMMWORD PTR [rdx+0x100]
  95df90:	62 71 fd 48 10 4a 05 	vmovupd zmm9,ZMMWORD PTR [rdx+0x140]
  95df97:	62 71 cd 48 59 d5    	vmulpd zmm10,zmm6,zmm5
  95df9d:	62 72 fd 48 bc d7    	vfnmadd231pd zmm10,zmm0,zmm7
  95dfa3:	62 51 ed 48 59 d8    	vmulpd zmm11,zmm2,zmm8
  95dfa9:	62 52 f5 48 bc d9    	vfnmadd231pd zmm11,zmm1,zmm9
  95dfaf:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  95dfb5:	62 f1 fd 48 59 c5    	vmulpd zmm0,zmm0,zmm5
  95dfbb:	62 f2 cd 48 b8 c7    	vfmadd231pd zmm0,zmm6,zmm7
  95dfc1:	62 d1 f5 48 59 c8    	vmulpd zmm1,zmm1,zmm8
  95dfc7:	62 d2 ed 48 b8 c9    	vfmadd231pd zmm1,zmm2,zmm9
  95dfcd:	62 f1 fd 48 58 d1    	vaddpd zmm2,zmm0,zmm1
  95dfd3:	62 f2 fd 48 19 2d bb 	vbroadcastsd zmm5,QWORD PTR [rip+0xffffffffff716abb]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  95dfda:	6a 71 ff 
  95dfdd:	62 f1 fd 48 28 f5    	vmovapd zmm6,zmm5
  95dfe3:	62 f2 9d 48 ac f4    	vfnmadd213pd zmm6,zmm12,zmm4
  95dfe9:	62 f1 fd 48 5c c1    	vsubpd zmm0,zmm0,zmm1
  95dfef:	62 f2 fd 48 19 0d 27 	vbroadcastsd zmm1,QWORD PTR [rip+0xffffffffff716c27]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  95dff6:	6c 71 ff 
  95dff9:	62 f1 fd 48 59 c1    	vmulpd zmm0,zmm0,zmm1
  95dfff:	62 f1 cd 48 58 f8    	vaddpd zmm7,zmm6,zmm0
  95e005:	62 f2 ed 48 ac eb    	vfnmadd213pd zmm5,zmm2,zmm3
  95e00b:	62 51 ad 48 5c c3    	vsubpd zmm8,zmm10,zmm11
  95e011:	62 f1 bd 48 59 c9    	vmulpd zmm1,zmm8,zmm1
  95e017:	62 71 d5 48 5c c1    	vsubpd zmm8,zmm5,zmm1
  95e01d:	62 f1 cd 48 5c c0    	vsubpd zmm0,zmm6,zmm0
  95e023:	62 f1 d5 48 58 c9    	vaddpd zmm1,zmm5,zmm1
  95e029:	62 d1 dd 48 58 e4    	vaddpd zmm4,zmm4,zmm12
  95e02f:	62 f1 e5 48 58 d2    	vaddpd zmm2,zmm3,zmm2
  95e035:	62 f1 fd 48 28 1d c1 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff7273c1]        # 85400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x128b0>
  95e03c:	73 72 ff 
  95e03f:	62 f3 7d 48 19 e5 02 	vextractf32x4 xmm5,zmm4,0x2
  95e046:	62 f2 e5 48 7f e2    	vpermt2pd zmm4,zmm3,zmm2
  95e04c:	62 f1 fd 48 11 26    	vmovupd ZMMWORD PTR [rsi],zmm4
  95e052:	62 f3 7d 48 19 d2 02 	vextractf32x4 xmm2,zmm2,0x2
  95e059:	c5 d1 14 d2          	vunpcklpd xmm2,xmm5,xmm2
  95e05d:	c5 f9 11 56 40       	vmovupd XMMWORD PTR [rsi+0x40],xmm2
  95e062:	62 f3 7d 48 19 fa 02 	vextractf32x4 xmm2,zmm7,0x2
  95e069:	62 d2 e5 48 7f f8    	vpermt2pd zmm7,zmm3,zmm8
  95e06f:	62 f1 fd 48 11 be 50 	vmovupd ZMMWORD PTR [rsi+0x50],zmm7
  95e076:	00 00 00 
  95e079:	62 73 7d 48 19 c4 02 	vextractf32x4 xmm4,zmm8,0x2
  95e080:	c5 e9 14 d4          	vunpcklpd xmm2,xmm2,xmm4
  95e084:	c5 f9 11 96 90 00 00 	vmovupd XMMWORD PTR [rsi+0x90],xmm2
  95e08b:	00 
  95e08c:	62 f2 fd 48 77 d9    	vpermi2pd zmm3,zmm0,zmm1
  95e092:	62 f1 fd 48 11 9e a0 	vmovupd ZMMWORD PTR [rsi+0xa0],zmm3
  95e099:	00 00 00 
  95e09c:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  95e0a3:	62 f3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm0,0x2
  95e0aa:	c5 f9 14 c1          	vunpcklpd xmm0,xmm0,xmm1
  95e0ae:	c5 f9 11 86 e0 00 00 	vmovupd XMMWORD PTR [rsi+0xe0],xmm0
  95e0b5:	00 
  95e0b6:	c5 f8 77             	vzeroupper
  95e0b9:	c3                   	ret
