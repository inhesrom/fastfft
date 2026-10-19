
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000095ca40 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  95ca40:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  95ca45:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  95ca4c:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  95ca50:	c5 fd 10 5f 30       	vmovupd ymm3,YMMWORD PTR [rdi+0x30]
  95ca55:	c5 fd 10 67 60       	vmovupd ymm4,YMMWORD PTR [rdi+0x60]
  95ca5a:	c5 fd 10 b7 90 00 00 	vmovupd ymm6,YMMWORD PTR [rdi+0x90]
  95ca61:	00 
  95ca62:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  95ca69:	62 f1 fd 48 28 2d 0d 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff72890d]        # 85380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x12830>
  95ca70:	89 72 ff 
  95ca73:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  95ca77:	62 f1 fd 48 28 d1    	vmovapd zmm2,zmm1
  95ca7d:	62 f2 d5 48 7f d0    	vpermt2pd zmm2,zmm5,zmm0
  95ca83:	62 f1 fd 48 28 3d 33 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff728933]        # 853c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x12870>
  95ca8a:	89 72 ff 
  95ca8d:	62 f2 c5 48 7f c8    	vpermt2pd zmm1,zmm7,zmm0
  95ca93:	c5 7b 12 47 58       	vmovddup xmm8,QWORD PTR [rdi+0x58]
  95ca98:	c4 63 39 0d 47 50 01 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+0x50],0x1
  95ca9f:	62 53 65 48 18 c0 02 	vinsertf32x4 zmm8,zmm3,xmm8,0x2
  95caa6:	62 51 fd 48 28 c8    	vmovapd zmm9,zmm8
  95caac:	62 72 d5 48 7f c8    	vpermt2pd zmm9,zmm5,zmm0
  95cab2:	62 72 c5 48 7f c0    	vpermt2pd zmm8,zmm7,zmm0
  95cab8:	c5 fb 12 9f 88 00 00 	vmovddup xmm3,QWORD PTR [rdi+0x88]
  95cabf:	00 
  95cac0:	c4 e3 61 0d 9f 80 00 	vblendpd xmm3,xmm3,XMMWORD PTR [rdi+0x80],0x1
  95cac7:	00 00 01 
  95caca:	62 73 5d 48 18 d3 02 	vinsertf32x4 zmm10,zmm4,xmm3,0x2
  95cad1:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  95cad7:	62 72 d5 48 7f d8    	vpermt2pd zmm11,zmm5,zmm0
  95cadd:	62 72 c5 48 7f d0    	vpermt2pd zmm10,zmm7,zmm0
  95cae3:	c5 fb 12 9f b8 00 00 	vmovddup xmm3,QWORD PTR [rdi+0xb8]
  95caea:	00 
  95caeb:	c4 e3 61 0d 9f b0 00 	vblendpd xmm3,xmm3,XMMWORD PTR [rdi+0xb0],0x1
  95caf2:	00 00 01 
  95caf5:	62 f3 4d 48 18 f3 02 	vinsertf32x4 zmm6,zmm6,xmm3,0x2
  95cafc:	62 71 fd 48 28 e6    	vmovapd zmm12,zmm6
  95cb02:	62 72 d5 48 7f e0    	vpermt2pd zmm12,zmm5,zmm0
  95cb08:	62 f2 c5 48 7f f0    	vpermt2pd zmm6,zmm7,zmm0
  95cb0e:	c5 fb 12 9f e8 00 00 	vmovddup xmm3,QWORD PTR [rdi+0xe8]
  95cb15:	00 
  95cb16:	c4 e3 61 0d 9f e0 00 	vblendpd xmm3,xmm3,XMMWORD PTR [rdi+0xe0],0x1
  95cb1d:	00 00 01 
  95cb20:	c5 fd 10 a7 c0 00 00 	vmovupd ymm4,YMMWORD PTR [rdi+0xc0]
  95cb27:	00 
  95cb28:	62 73 5d 48 18 eb 02 	vinsertf32x4 zmm13,zmm4,xmm3,0x2
  95cb2f:	62 f2 95 48 77 e8    	vpermi2pd zmm5,zmm13,zmm0
  95cb35:	62 72 c5 48 7f e8    	vpermt2pd zmm13,zmm7,zmm0
  95cb3b:	62 f1 b5 48 58 fd    	vaddpd zmm7,zmm9,zmm5
  95cb41:	62 f1 ed 48 58 df    	vaddpd zmm3,zmm2,zmm7
  95cb47:	62 51 a5 48 58 f4    	vaddpd zmm14,zmm11,zmm12
  95cb4d:	62 d1 e5 48 58 e6    	vaddpd zmm4,zmm3,zmm14
  95cb53:	62 51 bd 48 58 fd    	vaddpd zmm15,zmm8,zmm13
  95cb59:	62 d1 f5 48 58 df    	vaddpd zmm3,zmm1,zmm15
  95cb5f:	62 e1 ad 48 58 c6    	vaddpd zmm16,zmm10,zmm6
  95cb65:	62 b1 e5 48 58 d8    	vaddpd zmm3,zmm3,zmm16
  95cb6b:	62 e2 fd 48 19 0d e3 	vbroadcastsd zmm17,QWORD PTR [rip+0xffffffffff717ee3]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  95cb72:	7e 71 ff 
  95cb75:	62 a1 fd 48 28 d1    	vmovapd zmm18,zmm17
  95cb7b:	62 e2 c5 48 a8 d2    	vfmadd213pd zmm18,zmm7,zmm2
  95cb81:	62 e2 fd 48 19 1d 8d 	vbroadcastsd zmm19,QWORD PTR [rip+0xffffffffff71848d]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  95cb88:	84 71 ff 
  95cb8b:	62 a2 8d 48 bc d3    	vfnmadd231pd zmm18,zmm14,zmm19
  95cb91:	62 51 bd 48 5c c5    	vsubpd zmm8,zmm8,zmm13
  95cb97:	62 f1 ad 48 5c f6    	vsubpd zmm6,zmm10,zmm6
  95cb9d:	62 72 fd 48 19 15 21 	vbroadcastsd zmm10,QWORD PTR [rip+0xffffffffff717c21]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  95cba4:	7c 71 ff 
  95cba7:	62 51 cd 48 59 ea    	vmulpd zmm13,zmm6,zmm10
  95cbad:	62 e2 fd 48 19 25 19 	vbroadcastsd zmm20,QWORD PTR [rip+0xffffffffff718019]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  95cbb4:	80 71 ff 
  95cbb7:	62 32 bd 48 b8 ec    	vfmadd231pd zmm13,zmm8,zmm20
  95cbbd:	62 c1 ed 40 58 ed    	vaddpd zmm21,zmm18,zmm13
  95cbc3:	62 a1 fd 48 28 f1    	vmovapd zmm22,zmm17
  95cbc9:	62 e2 85 48 a8 f1    	vfmadd213pd zmm22,zmm15,zmm1
  95cbcf:	62 a2 fd 40 bc f3    	vfnmadd231pd zmm22,zmm16,zmm19
  95cbd5:	62 f1 b5 48 5c ed    	vsubpd zmm5,zmm9,zmm5
  95cbdb:	62 51 a5 48 5c cc    	vsubpd zmm9,zmm11,zmm12
  95cbe1:	62 51 b5 48 59 da    	vmulpd zmm11,zmm9,zmm10
  95cbe7:	62 32 d5 48 b8 dc    	vfmadd231pd zmm11,zmm5,zmm20
  95cbed:	62 51 cd 40 5c e3    	vsubpd zmm12,zmm22,zmm11
  95cbf3:	62 f2 e5 40 bc d7    	vfnmadd231pd zmm2,zmm19,zmm7
  95cbf9:	62 d2 f5 40 b8 d6    	vfmadd231pd zmm2,zmm17,zmm14
  95cbff:	62 d1 bd 48 59 fa    	vmulpd zmm7,zmm8,zmm10
  95cc05:	62 f2 dd 40 bc fe    	vfnmadd231pd zmm7,zmm20,zmm6
  95cc0b:	62 f1 ed 48 58 f7    	vaddpd zmm6,zmm2,zmm7
  95cc11:	62 b2 85 48 bc cb    	vfnmadd231pd zmm1,zmm15,zmm19
  95cc17:	62 b2 fd 40 b8 c9    	vfmadd231pd zmm1,zmm16,zmm17
  95cc1d:	62 d1 d5 48 59 ea    	vmulpd zmm5,zmm5,zmm10
  95cc23:	62 b2 b5 48 bc ec    	vfnmadd231pd zmm5,zmm9,zmm20
  95cc29:	62 71 f5 48 5c c5    	vsubpd zmm8,zmm1,zmm5
  95cc2f:	62 f1 ed 48 5c d7    	vsubpd zmm2,zmm2,zmm7
  95cc35:	62 f1 d5 48 58 c9    	vaddpd zmm1,zmm5,zmm1
  95cc3b:	62 d1 ed 40 5c ed    	vsubpd zmm5,zmm18,zmm13
  95cc41:	62 b1 a5 48 58 fe    	vaddpd zmm7,zmm11,zmm22
  95cc47:	62 71 fd 48 10 0d 17 	vmovupd zmm9,ZMMWORD PTR [rip+0xffffffffff76a117]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  95cc4e:	a1 76 ff 
  95cc51:	62 f2 b5 48 7f e5    	vpermt2pd zmm4,zmm9,zmm5
  95cc57:	62 e2 b5 48 7f e8    	vpermt2pd zmm21,zmm9,zmm0
  95cc5d:	62 f2 b5 48 7f f0    	vpermt2pd zmm6,zmm9,zmm0
  95cc63:	62 f2 b5 48 7f d0    	vpermt2pd zmm2,zmm9,zmm0
  95cc69:	62 f1 fd 48 10 2d 75 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff76a075]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  95cc70:	a0 76 ff 
  95cc73:	62 71 fd 48 28 d4    	vmovapd zmm10,zmm4
  95cc79:	62 72 d5 48 7f d6    	vpermt2pd zmm10,zmm5,zmm6
  95cc7f:	62 71 fd 48 10 1d 9f 	vmovupd zmm11,ZMMWORD PTR [rip+0xffffffffff76a09f]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  95cc86:	a0 76 ff 
  95cc89:	62 f2 a5 48 7f e6    	vpermt2pd zmm4,zmm11,zmm6
  95cc8f:	62 b1 fd 48 28 f5    	vmovapd zmm6,zmm21
  95cc95:	62 f2 d5 48 7f f2    	vpermt2pd zmm6,zmm5,zmm2
  95cc9b:	62 e2 a5 48 7f ea    	vpermt2pd zmm21,zmm11,zmm2
  95cca1:	62 b1 dd 48 14 d5    	vunpcklpd zmm2,zmm4,zmm21
  95cca7:	62 f1 ad 48 14 e6    	vunpcklpd zmm4,zmm10,zmm6
  95ccad:	62 f1 ad 48 15 f6    	vunpckhpd zmm6,zmm10,zmm6
  95ccb3:	62 f2 b5 48 7f df    	vpermt2pd zmm3,zmm9,zmm7
  95ccb9:	62 72 b5 48 7f e0    	vpermt2pd zmm12,zmm9,zmm0
  95ccbf:	62 72 b5 48 7f c0    	vpermt2pd zmm8,zmm9,zmm0
  95ccc5:	62 f2 b5 48 7f c8    	vpermt2pd zmm1,zmm9,zmm0
  95cccb:	62 f1 fd 48 28 c3    	vmovapd zmm0,zmm3
  95ccd1:	62 d2 d5 48 7f c0    	vpermt2pd zmm0,zmm5,zmm8
  95ccd7:	62 d2 a5 48 7f d8    	vpermt2pd zmm3,zmm11,zmm8
  95ccdd:	62 f2 9d 48 77 e9    	vpermi2pd zmm5,zmm12,zmm1
  95cce3:	62 72 a5 48 7f e1    	vpermt2pd zmm12,zmm11,zmm1
  95cce9:	62 d1 e5 48 14 cc    	vunpcklpd zmm1,zmm3,zmm12
  95ccef:	62 f1 fd 48 14 dd    	vunpcklpd zmm3,zmm0,zmm5
  95ccf5:	62 f1 fd 48 15 c5    	vunpckhpd zmm0,zmm0,zmm5
  95ccfb:	62 f1 fd 48 10 6a 02 	vmovupd zmm5,ZMMWORD PTR [rdx+0x80]
  95cd02:	62 f1 fd 48 10 7a 03 	vmovupd zmm7,ZMMWORD PTR [rdx+0xc0]
  95cd09:	62 71 fd 48 10 42 04 	vmovupd zmm8,ZMMWORD PTR [rdx+0x100]
  95cd10:	62 71 fd 48 10 4a 05 	vmovupd zmm9,ZMMWORD PTR [rdx+0x140]
  95cd17:	62 71 cd 48 59 d5    	vmulpd zmm10,zmm6,zmm5
  95cd1d:	62 72 fd 48 bc d7    	vfnmadd231pd zmm10,zmm0,zmm7
  95cd23:	62 51 ed 48 59 d8    	vmulpd zmm11,zmm2,zmm8
  95cd29:	62 52 f5 48 bc d9    	vfnmadd231pd zmm11,zmm1,zmm9
  95cd2f:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  95cd35:	62 f1 fd 48 59 c5    	vmulpd zmm0,zmm0,zmm5
  95cd3b:	62 f2 cd 48 b8 c7    	vfmadd231pd zmm0,zmm6,zmm7
  95cd41:	62 d1 f5 48 59 c8    	vmulpd zmm1,zmm1,zmm8
  95cd47:	62 d2 ed 48 b8 c9    	vfmadd231pd zmm1,zmm2,zmm9
  95cd4d:	62 f1 fd 48 58 d1    	vaddpd zmm2,zmm0,zmm1
  95cd53:	62 f2 fd 48 19 2d 3b 	vbroadcastsd zmm5,QWORD PTR [rip+0xffffffffff717d3b]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  95cd5a:	7d 71 ff 
  95cd5d:	62 f1 fd 48 28 f5    	vmovapd zmm6,zmm5
  95cd63:	62 f2 9d 48 ac f4    	vfnmadd213pd zmm6,zmm12,zmm4
  95cd69:	62 f1 fd 48 5c c1    	vsubpd zmm0,zmm0,zmm1
  95cd6f:	62 f2 fd 48 19 0d a7 	vbroadcastsd zmm1,QWORD PTR [rip+0xffffffffff717ea7]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  95cd76:	7e 71 ff 
  95cd79:	62 f1 fd 48 59 c1    	vmulpd zmm0,zmm0,zmm1
  95cd7f:	62 f1 cd 48 58 f8    	vaddpd zmm7,zmm6,zmm0
  95cd85:	62 f2 ed 48 ac eb    	vfnmadd213pd zmm5,zmm2,zmm3
  95cd8b:	62 51 ad 48 5c c3    	vsubpd zmm8,zmm10,zmm11
  95cd91:	62 f1 bd 48 59 c9    	vmulpd zmm1,zmm8,zmm1
  95cd97:	62 71 d5 48 5c c1    	vsubpd zmm8,zmm5,zmm1
  95cd9d:	62 f1 cd 48 5c c0    	vsubpd zmm0,zmm6,zmm0
  95cda3:	62 f1 d5 48 58 c9    	vaddpd zmm1,zmm5,zmm1
  95cda9:	62 d1 dd 48 58 e4    	vaddpd zmm4,zmm4,zmm12
  95cdaf:	62 f1 e5 48 58 d2    	vaddpd zmm2,zmm3,zmm2
  95cdb5:	62 f1 fd 48 28 1d 41 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff728641]        # 85400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x128b0>
  95cdbc:	86 72 ff 
  95cdbf:	62 f3 7d 48 19 e5 02 	vextractf32x4 xmm5,zmm4,0x2
  95cdc6:	62 f2 e5 48 7f e2    	vpermt2pd zmm4,zmm3,zmm2
  95cdcc:	62 f1 fd 48 11 26    	vmovupd ZMMWORD PTR [rsi],zmm4
  95cdd2:	62 f3 7d 48 19 d2 02 	vextractf32x4 xmm2,zmm2,0x2
  95cdd9:	c5 d1 14 d2          	vunpcklpd xmm2,xmm5,xmm2
  95cddd:	c5 f9 11 56 40       	vmovupd XMMWORD PTR [rsi+0x40],xmm2
  95cde2:	62 f3 7d 48 19 fa 02 	vextractf32x4 xmm2,zmm7,0x2
  95cde9:	62 d2 e5 48 7f f8    	vpermt2pd zmm7,zmm3,zmm8
  95cdef:	62 f1 fd 48 11 be 50 	vmovupd ZMMWORD PTR [rsi+0x50],zmm7
  95cdf6:	00 00 00 
  95cdf9:	62 73 7d 48 19 c4 02 	vextractf32x4 xmm4,zmm8,0x2
  95ce00:	c5 e9 14 d4          	vunpcklpd xmm2,xmm2,xmm4
  95ce04:	c5 f9 11 96 90 00 00 	vmovupd XMMWORD PTR [rsi+0x90],xmm2
  95ce0b:	00 
  95ce0c:	62 f2 fd 48 77 d9    	vpermi2pd zmm3,zmm0,zmm1
  95ce12:	62 f1 fd 48 11 9e a0 	vmovupd ZMMWORD PTR [rsi+0xa0],zmm3
  95ce19:	00 00 00 
  95ce1c:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  95ce23:	62 f3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm0,0x2
  95ce2a:	c5 f9 14 c1          	vunpcklpd xmm0,xmm0,xmm1
  95ce2e:	c5 f9 11 86 e0 00 00 	vmovupd XMMWORD PTR [rsi+0xe0],xmm0
  95ce35:	00 
  95ce36:	c5 f8 77             	vzeroupper
  95ce39:	c3                   	ret
