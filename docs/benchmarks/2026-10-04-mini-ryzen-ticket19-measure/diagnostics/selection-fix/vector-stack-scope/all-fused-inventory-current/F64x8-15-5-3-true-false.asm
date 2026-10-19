
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008fd940 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  8fd940:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  8fd945:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  8fd94c:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  8fd950:	c5 fd 10 5f 30       	vmovupd ymm3,YMMWORD PTR [rdi+0x30]
  8fd955:	c5 fd 10 67 60       	vmovupd ymm4,YMMWORD PTR [rdi+0x60]
  8fd95a:	c5 fd 10 af 90 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0x90]
  8fd961:	00 
  8fd962:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  8fd969:	62 f1 fd 48 28 35 cd 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff7803cd]        # 7dd40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xb1f0>
  8fd970:	03 78 ff 
  8fd973:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  8fd977:	62 f1 fd 48 28 d1    	vmovapd zmm2,zmm1
  8fd97d:	62 f2 cd 48 7f d0    	vpermt2pd zmm2,zmm6,zmm0
  8fd983:	62 f1 fd 48 28 3d f3 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff7803f3]        # 7dd80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xb230>
  8fd98a:	03 78 ff 
  8fd98d:	62 f2 c5 48 7f c8    	vpermt2pd zmm1,zmm7,zmm0
  8fd993:	c5 7b 12 47 58       	vmovddup xmm8,QWORD PTR [rdi+0x58]
  8fd998:	c4 63 39 0d 47 50 01 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+0x50],0x1
  8fd99f:	62 53 65 48 18 c0 02 	vinsertf32x4 zmm8,zmm3,xmm8,0x2
  8fd9a6:	62 51 fd 48 28 c8    	vmovapd zmm9,zmm8
  8fd9ac:	62 72 cd 48 7f c8    	vpermt2pd zmm9,zmm6,zmm0
  8fd9b2:	62 72 c5 48 7f c0    	vpermt2pd zmm8,zmm7,zmm0
  8fd9b8:	c5 fb 12 9f 88 00 00 	vmovddup xmm3,QWORD PTR [rdi+0x88]
  8fd9bf:	00 
  8fd9c0:	c4 e3 61 0d 9f 80 00 	vblendpd xmm3,xmm3,XMMWORD PTR [rdi+0x80],0x1
  8fd9c7:	00 00 01 
  8fd9ca:	62 73 5d 48 18 d3 02 	vinsertf32x4 zmm10,zmm4,xmm3,0x2
  8fd9d1:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  8fd9d7:	62 72 cd 48 7f d8    	vpermt2pd zmm11,zmm6,zmm0
  8fd9dd:	62 72 c5 48 7f d0    	vpermt2pd zmm10,zmm7,zmm0
  8fd9e3:	c5 fb 12 9f b8 00 00 	vmovddup xmm3,QWORD PTR [rdi+0xb8]
  8fd9ea:	00 
  8fd9eb:	c4 e3 61 0d 9f b0 00 	vblendpd xmm3,xmm3,XMMWORD PTR [rdi+0xb0],0x1
  8fd9f2:	00 00 01 
  8fd9f5:	62 f3 55 48 18 eb 02 	vinsertf32x4 zmm5,zmm5,xmm3,0x2
  8fd9fc:	62 71 fd 48 28 e5    	vmovapd zmm12,zmm5
  8fda02:	62 72 cd 48 7f e0    	vpermt2pd zmm12,zmm6,zmm0
  8fda08:	62 f2 c5 48 7f e8    	vpermt2pd zmm5,zmm7,zmm0
  8fda0e:	c5 fb 12 9f e8 00 00 	vmovddup xmm3,QWORD PTR [rdi+0xe8]
  8fda15:	00 
  8fda16:	c4 e3 61 0d 9f e0 00 	vblendpd xmm3,xmm3,XMMWORD PTR [rdi+0xe0],0x1
  8fda1d:	00 00 01 
  8fda20:	c5 fd 10 a7 c0 00 00 	vmovupd ymm4,YMMWORD PTR [rdi+0xc0]
  8fda27:	00 
  8fda28:	62 73 5d 48 18 eb 02 	vinsertf32x4 zmm13,zmm4,xmm3,0x2
  8fda2f:	62 f2 95 48 77 f0    	vpermi2pd zmm6,zmm13,zmm0
  8fda35:	62 72 c5 48 7f e8    	vpermt2pd zmm13,zmm7,zmm0
  8fda3b:	62 d1 bd 48 58 fd    	vaddpd zmm7,zmm8,zmm13
  8fda41:	62 f1 f5 48 58 df    	vaddpd zmm3,zmm1,zmm7
  8fda47:	62 71 ad 48 58 f5    	vaddpd zmm14,zmm10,zmm5
  8fda4d:	62 d1 e5 48 58 e6    	vaddpd zmm4,zmm3,zmm14
  8fda53:	62 71 b5 48 58 fe    	vaddpd zmm15,zmm9,zmm6
  8fda59:	62 d1 ed 48 58 df    	vaddpd zmm3,zmm2,zmm15
  8fda5f:	62 c1 a5 48 58 c4    	vaddpd zmm16,zmm11,zmm12
  8fda65:	62 b1 e5 48 58 d8    	vaddpd zmm3,zmm3,zmm16
  8fda6b:	62 e2 fd 48 19 0d e3 	vbroadcastsd zmm17,QWORD PTR [rip+0xffffffffff776fe3]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  8fda72:	6f 77 ff 
  8fda75:	62 a1 fd 48 28 d1    	vmovapd zmm18,zmm17
  8fda7b:	62 e2 c5 48 a8 d1    	vfmadd213pd zmm18,zmm7,zmm1
  8fda81:	62 e2 fd 48 19 1d 8d 	vbroadcastsd zmm19,QWORD PTR [rip+0xffffffffff77758d]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  8fda88:	75 77 ff 
  8fda8b:	62 a2 8d 48 bc d3    	vfnmadd231pd zmm18,zmm14,zmm19
  8fda91:	62 f1 b5 48 5c f6    	vsubpd zmm6,zmm9,zmm6
  8fda97:	62 51 a5 48 5c cc    	vsubpd zmm9,zmm11,zmm12
  8fda9d:	62 72 fd 48 19 1d 21 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff776d21]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  8fdaa4:	6d 77 ff 
  8fdaa7:	62 51 b5 48 59 e3    	vmulpd zmm12,zmm9,zmm11
  8fdaad:	62 e2 fd 48 19 25 19 	vbroadcastsd zmm20,QWORD PTR [rip+0xffffffffff777119]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  8fdab4:	71 77 ff 
  8fdab7:	62 32 cd 48 b8 e4    	vfmadd231pd zmm12,zmm6,zmm20
  8fdabd:	62 c1 ed 40 58 ec    	vaddpd zmm21,zmm18,zmm12
  8fdac3:	62 a1 fd 48 28 f1    	vmovapd zmm22,zmm17
  8fdac9:	62 e2 85 48 a8 f2    	vfmadd213pd zmm22,zmm15,zmm2
  8fdacf:	62 a2 fd 40 bc f3    	vfnmadd231pd zmm22,zmm16,zmm19
  8fdad5:	62 51 bd 48 5c c5    	vsubpd zmm8,zmm8,zmm13
  8fdadb:	62 f1 ad 48 5c ed    	vsubpd zmm5,zmm10,zmm5
  8fdae1:	62 51 d5 48 59 d3    	vmulpd zmm10,zmm5,zmm11
  8fdae7:	62 32 bd 48 b8 d4    	vfmadd231pd zmm10,zmm8,zmm20
  8fdaed:	62 51 cd 40 5c ea    	vsubpd zmm13,zmm22,zmm10
  8fdaf3:	62 f2 e5 40 bc cf    	vfnmadd231pd zmm1,zmm19,zmm7
  8fdaf9:	62 d2 f5 40 b8 ce    	vfmadd231pd zmm1,zmm17,zmm14
  8fdaff:	62 d1 cd 48 59 f3    	vmulpd zmm6,zmm6,zmm11
  8fdb05:	62 d2 dd 40 bc f1    	vfnmadd231pd zmm6,zmm20,zmm9
  8fdb0b:	62 f1 f5 48 58 fe    	vaddpd zmm7,zmm1,zmm6
  8fdb11:	62 b2 85 48 bc d3    	vfnmadd231pd zmm2,zmm15,zmm19
  8fdb17:	62 b2 fd 40 b8 d1    	vfmadd231pd zmm2,zmm16,zmm17
  8fdb1d:	62 51 bd 48 59 c3    	vmulpd zmm8,zmm8,zmm11
  8fdb23:	62 32 d5 48 bc c4    	vfnmadd231pd zmm8,zmm5,zmm20
  8fdb29:	62 d1 ed 48 5c e8    	vsubpd zmm5,zmm2,zmm8
  8fdb2f:	62 f1 f5 48 5c ce    	vsubpd zmm1,zmm1,zmm6
  8fdb35:	62 f1 bd 48 58 d2    	vaddpd zmm2,zmm8,zmm2
  8fdb3b:	62 d1 ed 40 5c f4    	vsubpd zmm6,zmm18,zmm12
  8fdb41:	62 31 ad 48 58 c6    	vaddpd zmm8,zmm10,zmm22
  8fdb47:	62 71 fd 48 10 0d 17 	vmovupd zmm9,ZMMWORD PTR [rip+0xffffffffff7c9217]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  8fdb4e:	92 7c ff 
  8fdb51:	62 f2 b5 48 7f e6    	vpermt2pd zmm4,zmm9,zmm6
  8fdb57:	62 e2 b5 48 7f e8    	vpermt2pd zmm21,zmm9,zmm0
  8fdb5d:	62 f2 b5 48 7f f8    	vpermt2pd zmm7,zmm9,zmm0
  8fdb63:	62 f2 b5 48 7f c8    	vpermt2pd zmm1,zmm9,zmm0
  8fdb69:	62 f1 fd 48 10 35 75 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff7c9175]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  8fdb70:	91 7c ff 
  8fdb73:	62 71 fd 48 28 d4    	vmovapd zmm10,zmm4
  8fdb79:	62 72 cd 48 7f d7    	vpermt2pd zmm10,zmm6,zmm7
  8fdb7f:	62 71 fd 48 10 1d 9f 	vmovupd zmm11,ZMMWORD PTR [rip+0xffffffffff7c919f]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  8fdb86:	91 7c ff 
  8fdb89:	62 f2 a5 48 7f e7    	vpermt2pd zmm4,zmm11,zmm7
  8fdb8f:	62 b1 fd 48 28 fd    	vmovapd zmm7,zmm21
  8fdb95:	62 f2 cd 48 7f f9    	vpermt2pd zmm7,zmm6,zmm1
  8fdb9b:	62 e2 a5 48 7f e9    	vpermt2pd zmm21,zmm11,zmm1
  8fdba1:	62 b1 dd 48 14 cd    	vunpcklpd zmm1,zmm4,zmm21
  8fdba7:	62 f1 ad 48 14 e7    	vunpcklpd zmm4,zmm10,zmm7
  8fdbad:	62 f1 ad 48 15 ff    	vunpckhpd zmm7,zmm10,zmm7
  8fdbb3:	62 d2 b5 48 7f d8    	vpermt2pd zmm3,zmm9,zmm8
  8fdbb9:	62 72 b5 48 7f e8    	vpermt2pd zmm13,zmm9,zmm0
  8fdbbf:	62 f2 b5 48 7f e8    	vpermt2pd zmm5,zmm9,zmm0
  8fdbc5:	62 f2 b5 48 7f d0    	vpermt2pd zmm2,zmm9,zmm0
  8fdbcb:	62 f1 fd 48 28 c3    	vmovapd zmm0,zmm3
  8fdbd1:	62 f2 cd 48 7f c5    	vpermt2pd zmm0,zmm6,zmm5
  8fdbd7:	62 f2 a5 48 7f dd    	vpermt2pd zmm3,zmm11,zmm5
  8fdbdd:	62 f2 95 48 77 f2    	vpermi2pd zmm6,zmm13,zmm2
  8fdbe3:	62 72 a5 48 7f ea    	vpermt2pd zmm13,zmm11,zmm2
  8fdbe9:	62 d1 e5 48 14 d5    	vunpcklpd zmm2,zmm3,zmm13
  8fdbef:	62 f1 fd 48 14 de    	vunpcklpd zmm3,zmm0,zmm6
  8fdbf5:	62 f1 fd 48 15 c6    	vunpckhpd zmm0,zmm0,zmm6
  8fdbfb:	62 f1 fd 48 10 6a 02 	vmovupd zmm5,ZMMWORD PTR [rdx+0x80]
  8fdc02:	62 f1 fd 48 10 72 03 	vmovupd zmm6,ZMMWORD PTR [rdx+0xc0]
  8fdc09:	62 71 fd 48 10 42 04 	vmovupd zmm8,ZMMWORD PTR [rdx+0x100]
  8fdc10:	62 71 fd 48 10 4a 05 	vmovupd zmm9,ZMMWORD PTR [rdx+0x140]
  8fdc17:	62 71 c5 48 59 d5    	vmulpd zmm10,zmm7,zmm5
  8fdc1d:	62 72 fd 48 bc d6    	vfnmadd231pd zmm10,zmm0,zmm6
  8fdc23:	62 51 f5 48 59 d8    	vmulpd zmm11,zmm1,zmm8
  8fdc29:	62 52 ed 48 bc d9    	vfnmadd231pd zmm11,zmm2,zmm9
  8fdc2f:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  8fdc35:	62 f1 fd 48 59 c5    	vmulpd zmm0,zmm0,zmm5
  8fdc3b:	62 f2 c5 48 b8 c6    	vfmadd231pd zmm0,zmm7,zmm6
  8fdc41:	62 d1 ed 48 59 d0    	vmulpd zmm2,zmm2,zmm8
  8fdc47:	62 d2 f5 48 b8 d1    	vfmadd231pd zmm2,zmm1,zmm9
  8fdc4d:	62 f1 fd 48 58 ca    	vaddpd zmm1,zmm0,zmm2
  8fdc53:	62 f2 fd 48 19 2d 3b 	vbroadcastsd zmm5,QWORD PTR [rip+0xffffffffff776e3b]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8fdc5a:	6e 77 ff 
  8fdc5d:	62 f1 fd 48 28 f5    	vmovapd zmm6,zmm5
  8fdc63:	62 f2 9d 48 ac f4    	vfnmadd213pd zmm6,zmm12,zmm4
  8fdc69:	62 f1 fd 48 5c c2    	vsubpd zmm0,zmm0,zmm2
  8fdc6f:	62 f2 fd 48 19 15 a7 	vbroadcastsd zmm2,QWORD PTR [rip+0xffffffffff776fa7]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8fdc76:	6f 77 ff 
  8fdc79:	62 f1 fd 48 59 c2    	vmulpd zmm0,zmm0,zmm2
  8fdc7f:	62 f1 cd 48 58 f8    	vaddpd zmm7,zmm6,zmm0
  8fdc85:	62 f2 f5 48 ac eb    	vfnmadd213pd zmm5,zmm1,zmm3
  8fdc8b:	62 51 ad 48 5c c3    	vsubpd zmm8,zmm10,zmm11
  8fdc91:	62 f1 bd 48 59 d2    	vmulpd zmm2,zmm8,zmm2
  8fdc97:	62 71 d5 48 5c c2    	vsubpd zmm8,zmm5,zmm2
  8fdc9d:	62 f1 cd 48 5c c0    	vsubpd zmm0,zmm6,zmm0
  8fdca3:	62 f1 d5 48 58 d2    	vaddpd zmm2,zmm5,zmm2
  8fdca9:	62 f1 e5 48 58 c9    	vaddpd zmm1,zmm3,zmm1
  8fdcaf:	62 d1 dd 48 58 dc    	vaddpd zmm3,zmm4,zmm12
  8fdcb5:	62 f1 fd 48 28 25 01 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff780101]        # 7ddc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xb270>
  8fdcbc:	01 78 ff 
  8fdcbf:	62 f3 7d 48 19 cd 02 	vextractf32x4 xmm5,zmm1,0x2
  8fdcc6:	62 f2 dd 48 7f cb    	vpermt2pd zmm1,zmm4,zmm3
  8fdccc:	62 f1 fd 48 11 0e    	vmovupd ZMMWORD PTR [rsi],zmm1
  8fdcd2:	62 f3 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm3,0x2
  8fdcd9:	c5 d1 14 c9          	vunpcklpd xmm1,xmm5,xmm1
  8fdcdd:	c5 f9 11 4e 40       	vmovupd XMMWORD PTR [rsi+0x40],xmm1
  8fdce2:	62 73 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm8,0x2
  8fdce9:	62 72 dd 48 7f c7    	vpermt2pd zmm8,zmm4,zmm7
  8fdcef:	62 71 fd 48 11 86 50 	vmovupd ZMMWORD PTR [rsi+0x50],zmm8
  8fdcf6:	00 00 00 
  8fdcf9:	62 f3 7d 48 19 fb 02 	vextractf32x4 xmm3,zmm7,0x2
  8fdd00:	c5 f1 14 cb          	vunpcklpd xmm1,xmm1,xmm3
  8fdd04:	c5 f9 11 8e 90 00 00 	vmovupd XMMWORD PTR [rsi+0x90],xmm1
  8fdd0b:	00 
  8fdd0c:	62 f2 ed 48 77 e0    	vpermi2pd zmm4,zmm2,zmm0
  8fdd12:	62 f1 fd 48 11 a6 a0 	vmovupd ZMMWORD PTR [rsi+0xa0],zmm4
  8fdd19:	00 00 00 
  8fdd1c:	62 f3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm0,0x2
  8fdd23:	62 f3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm2,0x2
  8fdd2a:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  8fdd2e:	c5 f9 11 86 e0 00 00 	vmovupd XMMWORD PTR [rsi+0xe0],xmm0
  8fdd35:	00 
  8fdd36:	c5 f8 77             	vzeroupper
  8fdd39:	c3                   	ret
