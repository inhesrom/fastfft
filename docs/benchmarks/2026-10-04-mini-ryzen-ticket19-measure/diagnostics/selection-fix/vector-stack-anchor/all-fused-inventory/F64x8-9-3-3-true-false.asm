
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000096fb40 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  96fb40:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  96fb45:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  96fb4c:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  96fb50:	c5 fd 10 5f 30       	vmovupd ymm3,YMMWORD PTR [rdi+0x30]
  96fb55:	c5 fd 10 67 60       	vmovupd ymm4,YMMWORD PTR [rdi+0x60]
  96fb5a:	62 f3 75 48 18 e8 02 	vinsertf32x4 zmm5,zmm1,xmm0,0x2
  96fb61:	62 f1 fd 48 28 0d 95 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff717195]        # 86d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x141b0>
  96fb68:	71 71 ff 
  96fb6b:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  96fb6f:	62 f1 fd 48 28 f5    	vmovapd zmm6,zmm5
  96fb75:	62 f2 f5 48 7f f2    	vpermt2pd zmm6,zmm1,zmm2
  96fb7b:	62 f1 fd 48 28 05 bb 	vmovapd zmm0,ZMMWORD PTR [rip+0xffffffffff7171bb]        # 86d40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x141f0>
  96fb82:	71 71 ff 
  96fb85:	62 f2 fd 48 7f ea    	vpermt2pd zmm5,zmm0,zmm2
  96fb8b:	c5 fb 12 7f 58       	vmovddup xmm7,QWORD PTR [rdi+0x58]
  96fb90:	c4 e3 41 0d 7f 50 01 	vblendpd xmm7,xmm7,XMMWORD PTR [rdi+0x50],0x1
  96fb97:	62 f3 65 48 18 df 02 	vinsertf32x4 zmm3,zmm3,xmm7,0x2
  96fb9e:	62 f1 fd 48 28 fb    	vmovapd zmm7,zmm3
  96fba4:	62 f2 f5 48 7f fa    	vpermt2pd zmm7,zmm1,zmm2
  96fbaa:	62 f2 fd 48 7f da    	vpermt2pd zmm3,zmm0,zmm2
  96fbb0:	c5 7b 12 87 88 00 00 	vmovddup xmm8,QWORD PTR [rdi+0x88]
  96fbb7:	00 
  96fbb8:	c4 63 39 0d 87 80 00 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+0x80],0x1
  96fbbf:	00 00 01 
  96fbc2:	62 d3 5d 48 18 e0 02 	vinsertf32x4 zmm4,zmm4,xmm8,0x2
  96fbc9:	62 f2 dd 48 77 ca    	vpermi2pd zmm1,zmm4,zmm2
  96fbcf:	62 f2 fd 48 7f e2    	vpermt2pd zmm4,zmm0,zmm2
  96fbd5:	62 71 e5 48 58 c4    	vaddpd zmm8,zmm3,zmm4
  96fbdb:	62 51 d5 48 58 c8    	vaddpd zmm9,zmm5,zmm8
  96fbe1:	62 71 c5 48 58 d1    	vaddpd zmm10,zmm7,zmm1
  96fbe7:	62 51 cd 48 58 da    	vaddpd zmm11,zmm6,zmm10
  96fbed:	62 f2 fd 48 19 05 a1 	vbroadcastsd zmm0,QWORD PTR [rip+0xffffffffff704ea1]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  96fbf4:	4e 70 ff 
  96fbf7:	62 d2 fd 48 bc e8    	vfnmadd231pd zmm5,zmm0,zmm8
  96fbfd:	62 f1 c5 48 5c f9    	vsubpd zmm7,zmm7,zmm1
  96fc03:	62 f2 fd 48 19 0d 13 	vbroadcastsd zmm1,QWORD PTR [rip+0xffffffffff705013]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  96fc0a:	50 70 ff 
  96fc0d:	62 f1 c5 48 59 f9    	vmulpd zmm7,zmm7,zmm1
  96fc13:	62 71 d5 48 58 c7    	vaddpd zmm8,zmm5,zmm7
  96fc19:	62 d2 fd 48 bc f2    	vfnmadd231pd zmm6,zmm0,zmm10
  96fc1f:	62 f1 e5 48 5c dc    	vsubpd zmm3,zmm3,zmm4
  96fc25:	62 f1 e5 48 59 d9    	vmulpd zmm3,zmm3,zmm1
  96fc2b:	62 f1 cd 48 5c e3    	vsubpd zmm4,zmm6,zmm3
  96fc31:	62 f1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm7
  96fc37:	62 f1 e5 48 58 de    	vaddpd zmm3,zmm3,zmm6
  96fc3d:	62 f1 fd 48 10 35 21 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff757121]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  96fc44:	71 75 ff 
  96fc47:	62 72 cd 48 7f ca    	vpermt2pd zmm9,zmm6,zmm2
  96fc4d:	62 72 cd 48 7f c2    	vpermt2pd zmm8,zmm6,zmm2
  96fc53:	62 f2 cd 48 7f ea    	vpermt2pd zmm5,zmm6,zmm2
  96fc59:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
  96fc5d:	62 f2 cd 48 7f ff    	vpermt2pd zmm7,zmm6,zmm7
  96fc63:	62 71 fd 48 10 15 7b 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff75707b]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  96fc6a:	70 75 ff 
  96fc6d:	62 51 fd 48 28 e1    	vmovapd zmm12,zmm9
  96fc73:	62 72 ad 48 7f e5    	vpermt2pd zmm12,zmm10,zmm5
  96fc79:	62 71 fd 48 10 2d a5 	vmovupd zmm13,ZMMWORD PTR [rip+0xffffffffff7570a5]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  96fc80:	70 75 ff 
  96fc83:	62 72 95 48 7f cd    	vpermt2pd zmm9,zmm13,zmm5
  96fc89:	62 d1 fd 48 28 e8    	vmovapd zmm5,zmm8
  96fc8f:	62 f2 ad 48 7f ef    	vpermt2pd zmm5,zmm10,zmm7
  96fc95:	62 72 95 48 7f c7    	vpermt2pd zmm8,zmm13,zmm7
  96fc9b:	62 51 b5 48 14 c0    	vunpcklpd zmm8,zmm9,zmm8
  96fca1:	62 71 9d 48 14 cd    	vunpcklpd zmm9,zmm12,zmm5
  96fca7:	62 f1 9d 48 15 ed    	vunpckhpd zmm5,zmm12,zmm5
  96fcad:	62 72 cd 48 7f da    	vpermt2pd zmm11,zmm6,zmm2
  96fcb3:	62 f2 cd 48 7f e2    	vpermt2pd zmm4,zmm6,zmm2
  96fcb9:	62 f2 cd 48 7f da    	vpermt2pd zmm3,zmm6,zmm2
  96fcbf:	62 d1 fd 48 28 d3    	vmovapd zmm2,zmm11
  96fcc5:	62 f2 ad 48 7f d3    	vpermt2pd zmm2,zmm10,zmm3
  96fccb:	62 72 95 48 7f db    	vpermt2pd zmm11,zmm13,zmm3
  96fcd1:	62 72 dd 48 77 d7    	vpermi2pd zmm10,zmm4,zmm7
  96fcd7:	62 f2 95 48 7f e7    	vpermt2pd zmm4,zmm13,zmm7
  96fcdd:	62 f1 a5 48 14 dc    	vunpcklpd zmm3,zmm11,zmm4
  96fce3:	62 d1 ed 48 14 e2    	vunpcklpd zmm4,zmm2,zmm10
  96fce9:	62 d1 ed 48 15 d2    	vunpckhpd zmm2,zmm2,zmm10
  96fcef:	62 f1 fd 48 10 72 02 	vmovupd zmm6,ZMMWORD PTR [rdx+0x80]
  96fcf6:	62 f1 fd 48 10 7a 03 	vmovupd zmm7,ZMMWORD PTR [rdx+0xc0]
  96fcfd:	62 71 fd 48 10 52 04 	vmovupd zmm10,ZMMWORD PTR [rdx+0x100]
  96fd04:	62 71 fd 48 10 5a 05 	vmovupd zmm11,ZMMWORD PTR [rdx+0x140]
  96fd0b:	62 71 d5 48 59 e6    	vmulpd zmm12,zmm5,zmm6
  96fd11:	62 72 ed 48 bc e7    	vfnmadd231pd zmm12,zmm2,zmm7
  96fd17:	62 51 bd 48 59 ea    	vmulpd zmm13,zmm8,zmm10
  96fd1d:	62 52 e5 48 bc eb    	vfnmadd231pd zmm13,zmm3,zmm11
  96fd23:	62 51 9d 48 58 f5    	vaddpd zmm14,zmm12,zmm13
  96fd29:	62 f1 ed 48 59 d6    	vmulpd zmm2,zmm2,zmm6
  96fd2f:	62 f2 d5 48 b8 d7    	vfmadd231pd zmm2,zmm5,zmm7
  96fd35:	62 d1 e5 48 59 da    	vmulpd zmm3,zmm3,zmm10
  96fd3b:	62 d2 bd 48 b8 db    	vfmadd231pd zmm3,zmm8,zmm11
  96fd41:	62 f1 ed 48 58 eb    	vaddpd zmm5,zmm2,zmm3
  96fd47:	62 f1 fd 48 28 f0    	vmovapd zmm6,zmm0
  96fd4d:	62 d2 8d 48 ac f1    	vfnmadd213pd zmm6,zmm14,zmm9
  96fd53:	62 f1 ed 48 5c d3    	vsubpd zmm2,zmm2,zmm3
  96fd59:	62 f1 ed 48 59 d1    	vmulpd zmm2,zmm2,zmm1
  96fd5f:	62 f1 cd 48 58 da    	vaddpd zmm3,zmm6,zmm2
  96fd65:	62 f2 d5 48 ac c4    	vfnmadd213pd zmm0,zmm5,zmm4
  96fd6b:	62 d1 9d 48 5c fd    	vsubpd zmm7,zmm12,zmm13
  96fd71:	62 f1 c5 48 59 c9    	vmulpd zmm1,zmm7,zmm1
  96fd77:	62 f1 fd 48 5c f9    	vsubpd zmm7,zmm0,zmm1
  96fd7d:	62 f1 cd 48 5c d2    	vsubpd zmm2,zmm6,zmm2
  96fd83:	62 f1 fd 48 58 c1    	vaddpd zmm0,zmm0,zmm1
  96fd89:	62 f1 dd 48 58 cd    	vaddpd zmm1,zmm4,zmm5
  96fd8f:	62 d1 b5 48 58 e6    	vaddpd zmm4,zmm9,zmm14
  96fd95:	62 f1 fd 48 28 2d e1 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff716fe1]        # 86d80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14230>
  96fd9c:	6f 71 ff 
  96fd9f:	62 f2 d5 48 7f cc    	vpermt2pd zmm1,zmm5,zmm4
  96fda5:	62 f3 7d 48 19 4e 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm1,0x2
  96fdac:	02 
  96fdad:	c5 fd 11 0e          	vmovupd YMMWORD PTR [rsi],ymm1
  96fdb1:	62 f2 d5 48 7f fb    	vpermt2pd zmm7,zmm5,zmm3
  96fdb7:	62 f3 7d 48 19 7e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm7,0x2
  96fdbe:	02 
  96fdbf:	c5 fd 11 7e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm7
  96fdc4:	62 f2 d5 48 7f c2    	vpermt2pd zmm0,zmm5,zmm2
  96fdca:	62 f3 7d 48 19 46 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm0,0x2
  96fdd1:	02 
  96fdd2:	c5 fd 11 46 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm0
  96fdd7:	c5 f8 77             	vzeroupper
  96fdda:	c3                   	ret
