
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000948dc0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  948dc0:	62 f1 fd 48 28 05 76 	vmovapd zmm0,ZMMWORD PTR [rip+0xffffffffff73b076]        # 83e40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x112f0>
  948dc7:	b0 73 ff 
  948dca:	62 f1 fd 48 10 0f    	vmovupd zmm1,ZMMWORD PTR [rdi]
  948dd0:	62 f1 fd 48 10 57 01 	vmovupd zmm2,ZMMWORD PTR [rdi+0x40]
  948dd7:	62 f1 fd 48 10 5f 02 	vmovupd zmm3,ZMMWORD PTR [rdi+0x80]
  948dde:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  948de2:	62 f1 fd 48 28 e9    	vmovapd zmm5,zmm1
  948de8:	62 f2 fd 48 7f ec    	vpermt2pd zmm5,zmm0,zmm4
  948dee:	62 f1 fd 48 28 35 88 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff73b088]        # 83e80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x11330>
  948df5:	b0 73 ff 
  948df8:	62 f2 cd 48 7f cc    	vpermt2pd zmm1,zmm6,zmm4
  948dfe:	62 f1 fd 48 28 fa    	vmovapd zmm7,zmm2
  948e04:	62 f2 fd 48 7f fc    	vpermt2pd zmm7,zmm0,zmm4
  948e0a:	62 f2 cd 48 7f d4    	vpermt2pd zmm2,zmm6,zmm4
  948e10:	62 f2 e5 48 77 c4    	vpermi2pd zmm0,zmm3,zmm4
  948e16:	62 f2 cd 48 7f dc    	vpermt2pd zmm3,zmm6,zmm4
  948e1c:	62 f1 ed 48 58 f3    	vaddpd zmm6,zmm2,zmm3
  948e22:	62 71 f5 48 58 c6    	vaddpd zmm8,zmm1,zmm6
  948e28:	62 71 c5 48 58 c8    	vaddpd zmm9,zmm7,zmm0
  948e2e:	62 51 d5 48 58 d1    	vaddpd zmm10,zmm5,zmm9
  948e34:	62 72 fd 48 19 1d 5a 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff72bc5a]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  948e3b:	bc 72 ff 
  948e3e:	62 f2 a5 48 bc ce    	vfnmadd231pd zmm1,zmm11,zmm6
  948e44:	62 f1 c5 48 5c c0    	vsubpd zmm0,zmm7,zmm0
  948e4a:	62 f2 fd 48 19 35 cc 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff72bdcc]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  948e51:	bd 72 ff 
  948e54:	62 f1 fd 48 59 c6    	vmulpd zmm0,zmm0,zmm6
  948e5a:	62 f1 f5 48 58 f8    	vaddpd zmm7,zmm1,zmm0
  948e60:	62 d2 b5 48 bc eb    	vfnmadd231pd zmm5,zmm9,zmm11
  948e66:	62 f1 ed 48 5c d3    	vsubpd zmm2,zmm2,zmm3
  948e6c:	62 f1 ed 48 59 d6    	vmulpd zmm2,zmm2,zmm6
  948e72:	62 f1 d5 48 5c da    	vsubpd zmm3,zmm5,zmm2
  948e78:	62 f1 f5 48 5c c0    	vsubpd zmm0,zmm1,zmm0
  948e7e:	62 f1 ed 48 58 cd    	vaddpd zmm1,zmm2,zmm5
  948e84:	62 f1 fd 48 10 15 da 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff77deda]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  948e8b:	de 77 ff 
  948e8e:	62 72 ed 48 7f c4    	vpermt2pd zmm8,zmm2,zmm4
  948e94:	62 f2 ed 48 7f fc    	vpermt2pd zmm7,zmm2,zmm4
  948e9a:	62 f2 ed 48 7f c4    	vpermt2pd zmm0,zmm2,zmm4
  948ea0:	c5 d1 57 ed          	vxorpd xmm5,xmm5,xmm5
  948ea4:	62 f2 ed 48 7f ed    	vpermt2pd zmm5,zmm2,zmm5
  948eaa:	62 f1 fd 48 10 35 34 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff77de34]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  948eb1:	de 77 ff 
  948eb4:	62 51 fd 48 28 c8    	vmovapd zmm9,zmm8
  948eba:	62 72 cd 48 7f c8    	vpermt2pd zmm9,zmm6,zmm0
  948ec0:	62 71 fd 48 10 1d 5e 	vmovupd zmm11,ZMMWORD PTR [rip+0xffffffffff77de5e]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  948ec7:	de 77 ff 
  948eca:	62 72 a5 48 7f c0    	vpermt2pd zmm8,zmm11,zmm0
  948ed0:	62 f1 fd 48 28 c7    	vmovapd zmm0,zmm7
  948ed6:	62 f2 cd 48 7f c5    	vpermt2pd zmm0,zmm6,zmm5
  948edc:	62 f2 a5 48 7f fd    	vpermt2pd zmm7,zmm11,zmm5
  948ee2:	62 71 b5 48 14 e0    	vunpcklpd zmm12,zmm9,zmm0
  948ee8:	62 f1 b5 48 15 c0    	vunpckhpd zmm0,zmm9,zmm0
  948eee:	62 71 bd 48 14 cf    	vunpcklpd zmm9,zmm8,zmm7
  948ef4:	62 f1 bd 48 15 ff    	vunpckhpd zmm7,zmm8,zmm7
  948efa:	62 72 ed 48 7f d4    	vpermt2pd zmm10,zmm2,zmm4
  948f00:	62 f2 ed 48 7f dc    	vpermt2pd zmm3,zmm2,zmm4
  948f06:	62 f2 ed 48 7f cc    	vpermt2pd zmm1,zmm2,zmm4
  948f0c:	62 d1 fd 48 28 d2    	vmovapd zmm2,zmm10
  948f12:	62 f2 cd 48 7f d1    	vpermt2pd zmm2,zmm6,zmm1
  948f18:	62 72 a5 48 7f d1    	vpermt2pd zmm10,zmm11,zmm1
  948f1e:	62 f2 e5 48 77 f5    	vpermi2pd zmm6,zmm3,zmm5
  948f24:	62 f2 a5 48 7f dd    	vpermt2pd zmm3,zmm11,zmm5
  948f2a:	62 f1 ed 48 14 ce    	vunpcklpd zmm1,zmm2,zmm6
  948f30:	62 f1 ed 48 15 d6    	vunpckhpd zmm2,zmm2,zmm6
  948f36:	62 f1 ad 48 14 e3    	vunpcklpd zmm4,zmm10,zmm3
  948f3c:	62 f1 ad 48 15 db    	vunpckhpd zmm3,zmm10,zmm3
  948f42:	62 f1 fd 48 10 6a 02 	vmovupd zmm5,ZMMWORD PTR [rdx+0x80]
  948f49:	62 f1 fd 48 10 72 03 	vmovupd zmm6,ZMMWORD PTR [rdx+0xc0]
  948f50:	62 71 fd 48 10 42 04 	vmovupd zmm8,ZMMWORD PTR [rdx+0x100]
  948f57:	62 71 fd 48 10 52 05 	vmovupd zmm10,ZMMWORD PTR [rdx+0x140]
  948f5e:	62 71 fd 48 10 5a 06 	vmovupd zmm11,ZMMWORD PTR [rdx+0x180]
  948f65:	62 71 fd 48 10 6a 07 	vmovupd zmm13,ZMMWORD PTR [rdx+0x1c0]
  948f6c:	62 51 b5 48 59 f0    	vmulpd zmm14,zmm9,zmm8
  948f72:	62 52 dd 48 bc f2    	vfnmadd231pd zmm14,zmm4,zmm10
  948f78:	62 51 9d 48 58 fe    	vaddpd zmm15,zmm12,zmm14
  948f7e:	62 e1 fd 48 59 c5    	vmulpd zmm16,zmm0,zmm5
  948f84:	62 e2 ed 48 bc c6    	vfnmadd231pd zmm16,zmm2,zmm6
  948f8a:	62 c1 c5 48 59 cb    	vmulpd zmm17,zmm7,zmm11
  948f90:	62 c2 e5 48 bc cd    	vfnmadd231pd zmm17,zmm3,zmm13
  948f96:	62 a1 fd 40 58 d1    	vaddpd zmm18,zmm16,zmm17
  948f9c:	62 d1 dd 48 59 e0    	vmulpd zmm4,zmm4,zmm8
  948fa2:	62 d2 b5 48 b8 e2    	vfmadd231pd zmm4,zmm9,zmm10
  948fa8:	62 71 dd 48 58 c1    	vaddpd zmm8,zmm4,zmm1
  948fae:	62 f1 ed 48 59 d5    	vmulpd zmm2,zmm2,zmm5
  948fb4:	62 f2 fd 48 b8 d6    	vfmadd231pd zmm2,zmm0,zmm6
  948fba:	62 d1 e5 48 59 c3    	vmulpd zmm0,zmm3,zmm11
  948fc0:	62 d2 c5 48 b8 c5    	vfmadd231pd zmm0,zmm7,zmm13
  948fc6:	62 f1 ed 48 58 d8    	vaddpd zmm3,zmm2,zmm0
  948fcc:	62 d1 9d 48 5c ee    	vsubpd zmm5,zmm12,zmm14
  948fd2:	62 f1 ed 48 5c c0    	vsubpd zmm0,zmm2,zmm0
  948fd8:	62 f1 d5 48 58 d0    	vaddpd zmm2,zmm5,zmm0
  948fde:	62 f1 f5 48 5c cc    	vsubpd zmm1,zmm1,zmm4
  948fe4:	62 b1 f5 40 5c e0    	vsubpd zmm4,zmm17,zmm16
  948fea:	62 f1 f5 48 58 f4    	vaddpd zmm6,zmm1,zmm4
  948ff0:	62 b1 85 48 5c fa    	vsubpd zmm7,zmm15,zmm18
  948ff6:	62 71 bd 48 5c cb    	vsubpd zmm9,zmm8,zmm3
  948ffc:	62 f1 d5 48 5c c0    	vsubpd zmm0,zmm5,zmm0
  949002:	62 f1 f5 48 5c cc    	vsubpd zmm1,zmm1,zmm4
  949008:	62 f1 bd 48 58 db    	vaddpd zmm3,zmm8,zmm3
  94900e:	62 b1 85 48 58 e2    	vaddpd zmm4,zmm15,zmm18
  949014:	62 f1 fd 48 28 2d a2 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff73aea2]        # 83ec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x11370>
  94901b:	ae 73 ff 
  94901e:	62 f2 d5 48 7f dc    	vpermt2pd zmm3,zmm5,zmm4
  949024:	62 f3 7d 48 19 5e 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm3,0x2
  94902b:	02 
  94902c:	c5 fd 11 1e          	vmovupd YMMWORD PTR [rsi],ymm3
  949030:	62 f2 d5 48 7f f2    	vpermt2pd zmm6,zmm5,zmm2
  949036:	62 f3 7d 48 19 76 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm6,0x2
  94903d:	02 
  94903e:	c5 fd 11 76 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm6
  949043:	62 72 d5 48 7f cf    	vpermt2pd zmm9,zmm5,zmm7
  949049:	62 73 7d 48 19 4e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm9,0x2
  949050:	02 
  949051:	c5 7d 11 4e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm9
  949056:	62 f2 d5 48 7f c8    	vpermt2pd zmm1,zmm5,zmm0
  94905c:	62 f3 7d 48 19 4e 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm1,0x2
  949063:	02 
  949064:	c5 fd 11 8e 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm1
  94906b:	00 
  94906c:	c5 f8 77             	vzeroupper
  94906f:	c3                   	ret
